@interface JTImage
+ (JTImage)jtImageWithUIImage:(id)image;
- (BOOL)hasPVImageBufferAndCanCreateCVPixelBufferWithoutCopy;
- (JTImage)initWithPVImage:(id)image;
- (JTImage)initWithUIImage:(id)image;
- (UIImage)image;
- (id)bluredImageWithFlippedXAxis:(BOOL)axis;
@end

@implementation JTImage

- (JTImage)initWithPVImage:(id)image
{
  imageCopy = image;
  v9.receiver = self;
  v9.super_class = JTImage;
  v6 = [(JTImage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pvImageBuffer, image);
  }

  return v7;
}

- (JTImage)initWithUIImage:(id)image
{
  imageCopy = image;
  v11.receiver = self;
  v11.super_class = JTImage;
  v6 = [(JTImage *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_image, image);
    v8 = [MEMORY[0x277D41618] imageWithUIImage:imageCopy];
    pvImageBuffer = v7->_pvImageBuffer;
    v7->_pvImageBuffer = v8;
  }

  return v7;
}

+ (JTImage)jtImageWithUIImage:(id)image
{
  imageCopy = image;
  v4 = [[JTImage alloc] initWithUIImage:imageCopy];

  return v4;
}

- (UIImage)image
{
  image = self->_image;
  if (!image)
  {
    uiImage = [(PVImageBuffer *)self->_pvImageBuffer uiImage];
    v5 = self->_image;
    self->_image = uiImage;

    image = self->_image;
  }

  v6 = image;

  return v6;
}

- (id)bluredImageWithFlippedXAxis:(BOOL)axis
{
  axisCopy = axis;
  image = self->_image;
  if (image)
  {
    v6 = [(UIImage *)image bluredImageWithFlippedXAxis:axis];
  }

  else
  {
    pvImageBuffer = [(JTImage *)self pvImageBuffer];
    canCreateCVPixelBuffer = [pvImageBuffer canCreateCVPixelBuffer];

    if (canCreateCVPixelBuffer)
    {
      [MEMORY[0x277CBF758] imageWithCVPixelBuffer:{-[PVImageBuffer cvPixelBuffer](self->_pvImageBuffer, "cvPixelBuffer")}];
    }

    else
    {
      [(JTImage *)self image];
    }
    v9 = ;
    v6 = [v9 bluredImageWithFlippedXAxis:axisCopy];
  }

  return v6;
}

- (BOOL)hasPVImageBufferAndCanCreateCVPixelBufferWithoutCopy
{
  pvImageBuffer = [(JTImage *)self pvImageBuffer];
  if (pvImageBuffer)
  {
    pvImageBuffer2 = [(JTImage *)self pvImageBuffer];
    if ([pvImageBuffer2 canCreateCVPixelBuffer])
    {
      pvImageBuffer3 = [(JTImage *)self pvImageBuffer];
      v6 = [pvImageBuffer3 cvPixelBufferRequiresCopy] ^ 1;
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