@interface GKAvatarImage
- (GKAvatarImage)initWithPNGData:(id)a3 useUIImage:(BOOL)a4;
- (void)prepareForUsingUIImage:(BOOL)a3;
@end

@implementation GKAvatarImage

- (GKAvatarImage)initWithPNGData:(id)a3 useUIImage:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v12.receiver = self;
  v12.super_class = GKAvatarImage;
  v7 = [(GKAvatarImage *)&v12 init];
  v8 = v7;
  if (v7)
  {
    if (v4)
    {
      v9 = 0;
    }

    else
    {
      v9 = v6;
    }

    [(GKAvatarImage *)v7 setImageData:v9];
    if (v4)
    {
      v10 = [MEMORY[0x277D755B8] _gkImageWithCheckedData:v6];
      [(GKAvatarImage *)v8 setImage:v10];
    }

    else
    {
      [(GKAvatarImage *)v8 setImage:0];
    }
  }

  return v8;
}

- (void)prepareForUsingUIImage:(BOOL)a3
{
  if (a3)
  {
    v4 = [(GKAvatarImage *)self image];
    if (!v4)
    {
      v5 = [(GKAvatarImage *)self imageData];

      if (!v5)
      {
        return;
      }

      v6 = MEMORY[0x277D755B8];
      v9 = [(GKAvatarImage *)self imageData];
      v7 = [v6 _gkImageWithCheckedData:?];
      [(GKAvatarImage *)self setImage:v7];
LABEL_8:

      v4 = v9;
    }
  }

  else
  {
    v4 = [(GKAvatarImage *)self imageData];
    if (!v4)
    {
      v8 = [(GKAvatarImage *)self image];

      if (!v8)
      {
        return;
      }

      v9 = [(GKAvatarImage *)self image];
      v7 = UIImagePNGRepresentation(v9);
      [(GKAvatarImage *)self setImageData:v7];
      goto LABEL_8;
    }
  }
}

@end