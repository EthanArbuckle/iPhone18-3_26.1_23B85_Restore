@interface CUIImage
+ (id)imageWithCGImage:(CGImage *)image;
- (CGSize)size;
- (CUIImage)initWithCGImage:(CGImage *)image;
- (void)dealloc;
@end

@implementation CUIImage

+ (id)imageWithCGImage:(CGImage *)image
{
  v3 = [[self alloc] initWithCGImage:image];

  return v3;
}

- (CUIImage)initWithCGImage:(CGImage *)image
{
  v7.receiver = self;
  v7.super_class = CUIImage;
  v4 = [(CUIImage *)&v7 init];
  v5 = v4;
  if (image && v4)
  {
    v4->_cgImage = CFRetain(image);
  }

  return v5;
}

- (void)dealloc
{
  CGImageRelease(self->_cgImage);
  v3.receiver = self;
  v3.super_class = CUIImage;
  [(CUIImage *)&v3 dealloc];
}

- (CGSize)size
{
  cgImage = self->_cgImage;
  if (cgImage)
  {
    Width = CGImageGetWidth(cgImage);
    Height = CGImageGetHeight(self->_cgImage);
  }

  else
  {
    Width = CGSizeZero.width;
    Height = CGSizeZero.height;
  }

  v6 = Width;
  result.height = Height;
  result.width = v6;
  return result;
}

@end