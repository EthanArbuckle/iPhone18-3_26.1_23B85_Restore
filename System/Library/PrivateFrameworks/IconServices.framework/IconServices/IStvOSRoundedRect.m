@interface IStvOSRoundedRect
- (IStvOSRoundedRect)init;
- (double)_cornerRadiusForSize:(CGSize)a3;
@end

@implementation IStvOSRoundedRect

- (IStvOSRoundedRect)init
{
  v3.receiver = self;
  v3.super_class = IStvOSRoundedRect;
  return [(ISShapeCompositorResource *)&v3 _init];
}

- (double)_cornerRadiusForSize:(CGSize)a3
{
  if (a3.width >= a3.height)
  {
    a3.width = a3.height;
  }

  return a3.width * 0.2;
}

@end