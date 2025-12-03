@interface GKAvatarImage
- (GKAvatarImage)initWithPNGData:(id)data useUIImage:(BOOL)image;
- (void)prepareForUsingUIImage:(BOOL)image;
@end

@implementation GKAvatarImage

- (GKAvatarImage)initWithPNGData:(id)data useUIImage:(BOOL)image
{
  imageCopy = image;
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = GKAvatarImage;
  v7 = [(GKAvatarImage *)&v12 init];
  v8 = v7;
  if (v7)
  {
    if (imageCopy)
    {
      v9 = 0;
    }

    else
    {
      v9 = dataCopy;
    }

    [(GKAvatarImage *)v7 setImageData:v9];
    if (imageCopy)
    {
      v10 = [MEMORY[0x277D755B8] _gkImageWithCheckedData:dataCopy];
      [(GKAvatarImage *)v8 setImage:v10];
    }

    else
    {
      [(GKAvatarImage *)v8 setImage:0];
    }
  }

  return v8;
}

- (void)prepareForUsingUIImage:(BOOL)image
{
  if (image)
  {
    image = [(GKAvatarImage *)self image];
    if (!image)
    {
      imageData = [(GKAvatarImage *)self imageData];

      if (!imageData)
      {
        return;
      }

      v6 = MEMORY[0x277D755B8];
      imageData2 = [(GKAvatarImage *)self imageData];
      v7 = [v6 _gkImageWithCheckedData:?];
      [(GKAvatarImage *)self setImage:v7];
LABEL_8:

      image = imageData2;
    }
  }

  else
  {
    image = [(GKAvatarImage *)self imageData];
    if (!image)
    {
      image2 = [(GKAvatarImage *)self image];

      if (!image2)
      {
        return;
      }

      imageData2 = [(GKAvatarImage *)self image];
      v7 = UIImagePNGRepresentation(imageData2);
      [(GKAvatarImage *)self setImageData:v7];
      goto LABEL_8;
    }
  }
}

@end