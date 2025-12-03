@interface IFImage
+ (id)css_imageWithWebClip:(id)clip;
- (NSData)css_PNGRepresentation;
@end

@implementation IFImage

+ (id)css_imageWithWebClip:(id)clip
{
  iconImage = [clip iconImage];
  cGImage = [iconImage CGImage];
  if (cGImage)
  {
    v6 = cGImage;
    v7 = [self alloc];
    [iconImage scale];
    v8 = [v7 initWithCGImage:v6 scale:?];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSData)css_PNGRepresentation
{
  cGImage = [(IFImage *)self CGImage];
  if (cGImage)
  {
    [(IFImage *)self scale];
    v4 = [UIImage imageWithCGImage:cGImage scale:0 orientation:?];
    cGImage = UIImagePNGRepresentation(v4);
  }

  return cGImage;
}

@end