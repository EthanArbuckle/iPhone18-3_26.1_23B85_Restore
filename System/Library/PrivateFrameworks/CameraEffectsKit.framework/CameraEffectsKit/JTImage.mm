@interface JTImage
+ (JTImage)jtImageWithUIImage:(id)a3;
- (BOOL)hasPVImageBufferAndCanCreateCVPixelBufferWithoutCopy;
- (JTImage)initWithPVImage:(id)a3;
- (JTImage)initWithUIImage:(id)a3;
- (UIImage)image;
- (id)bluredImageWithFlippedXAxis:(BOOL)a3;
@end

@implementation JTImage

- (JTImage)initWithPVImage:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = JTImage;
  v6 = [(JTImage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pvImageBuffer, a3);
  }

  return v7;
}

- (JTImage)initWithUIImage:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = JTImage;
  v6 = [(JTImage *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_image, a3);
    v8 = [MEMORY[0x277D41618] imageWithUIImage:v5];
    pvImageBuffer = v7->_pvImageBuffer;
    v7->_pvImageBuffer = v8;
  }

  return v7;
}

+ (JTImage)jtImageWithUIImage:(id)a3
{
  v3 = a3;
  v4 = [[JTImage alloc] initWithUIImage:v3];

  return v4;
}

- (UIImage)image
{
  image = self->_image;
  if (!image)
  {
    v4 = [(PVImageBuffer *)self->_pvImageBuffer uiImage];
    v5 = self->_image;
    self->_image = v4;

    image = self->_image;
  }

  v6 = image;

  return v6;
}

- (id)bluredImageWithFlippedXAxis:(BOOL)a3
{
  v3 = a3;
  image = self->_image;
  if (image)
  {
    v6 = [(UIImage *)image bluredImageWithFlippedXAxis:a3];
  }

  else
  {
    v7 = [(JTImage *)self pvImageBuffer];
    v8 = [v7 canCreateCVPixelBuffer];

    if (v8)
    {
      [MEMORY[0x277CBF758] imageWithCVPixelBuffer:{-[PVImageBuffer cvPixelBuffer](self->_pvImageBuffer, "cvPixelBuffer")}];
    }

    else
    {
      [(JTImage *)self image];
    }
    v9 = ;
    v6 = [v9 bluredImageWithFlippedXAxis:v3];
  }

  return v6;
}

- (BOOL)hasPVImageBufferAndCanCreateCVPixelBufferWithoutCopy
{
  v3 = [(JTImage *)self pvImageBuffer];
  if (v3)
  {
    v4 = [(JTImage *)self pvImageBuffer];
    if ([v4 canCreateCVPixelBuffer])
    {
      v5 = [(JTImage *)self pvImageBuffer];
      v6 = [v5 cvPixelBufferRequiresCopy] ^ 1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

@end