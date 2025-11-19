@interface IFImage
+ (id)css_imageWithWebClip:(id)a3;
- (NSData)css_PNGRepresentation;
@end

@implementation IFImage

+ (id)css_imageWithWebClip:(id)a3
{
  v4 = [a3 iconImage];
  v5 = [v4 CGImage];
  if (v5)
  {
    v6 = v5;
    v7 = [a1 alloc];
    [v4 scale];
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
  v3 = [(IFImage *)self CGImage];
  if (v3)
  {
    [(IFImage *)self scale];
    v4 = [UIImage imageWithCGImage:v3 scale:0 orientation:?];
    v3 = UIImagePNGRepresentation(v4);
  }

  return v3;
}

@end