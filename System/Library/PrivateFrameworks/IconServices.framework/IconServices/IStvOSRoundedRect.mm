@interface IStvOSRoundedRect
- (IStvOSRoundedRect)init;
- (double)_cornerRadiusForSize:(CGSize)size;
@end

@implementation IStvOSRoundedRect

- (IStvOSRoundedRect)init
{
  v3.receiver = self;
  v3.super_class = IStvOSRoundedRect;
  return [(ISShapeCompositorResource *)&v3 _init];
}

- (double)_cornerRadiusForSize:(CGSize)size
{
  if (size.width >= size.height)
  {
    size.width = size.height;
  }

  return size.width * 0.2;
}

@end