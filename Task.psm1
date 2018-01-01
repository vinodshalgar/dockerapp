Write-Host "The powershell module is loading " -ForeGroundColor green 

function Test-Function()
{
    write-host "vinod shalgar" -ForeGroundColor Yellow
    write-host docker -v
    write-host "vinod shalgar1"
}


function Prepare-Machine()
{
    Test-Function
    write-host "called from prepare machine"
}


function Docker-Up()
{
  docker-compose up --build -d
}

# stop and remove containers
Function Clean()
{
    docker stop $(docker ps -a -q)	
    docker rm $(docker ps -a -q)
}
