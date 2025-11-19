@interface CUIImage
+ (id)imageWithCGImage:(CGImage *)a3;
- (CGSize)size;
- (CUIImage)initWithCGImage:(CGImage *)a3;
- (void)dealloc;
@end

@implementation CUIImage

+ (id)imageWithCGImage:(CGImage *)a3
{
  v3 = [[a1 alloc] initWithCGImage:a3];

  return v3;
}

- (CUIImage)initWithCGImage:(CGImage *)a3
{
  v7.receiver = self;
  v7.super_class = CUIImage;
  v4 = [(CUIImage *)&v7 init];
  v5 = v4;
  if (a3 && v4)
  {
    v4->_cgImage = CFRetain(a3);
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