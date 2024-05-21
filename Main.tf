resource "docker_image" "my_img" {
  name = "nginx:latest"
}

resource "docker_container" "my_cont" {
  image = docker_image.my_img.image_id
  name  = "vaish_cont"


  ports {
    internal = 80
    external = 80
  }
}
