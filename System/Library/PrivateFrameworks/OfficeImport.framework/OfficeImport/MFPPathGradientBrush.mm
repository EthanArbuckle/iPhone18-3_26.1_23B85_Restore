@interface MFPPathGradientBrush
- (void)createShading;
@end

@implementation MFPPathGradientBrush

- (void)createShading
{
  [(OITSUBezierPath *)self->mPath bounds];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  MidX = CGRectGetMidX(v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  MidY = CGRectGetMidY(v13);
  *&y = hypot(width, height) * 0.5;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v11.x = MidX;
  v11.y = MidY;
  self->super.mShading = CGShadingCreateRadial(DeviceRGB, self->mCenterPoint, 0.0, v11, *&y, self->super.mShadingFunction, 1, 1);

  CGColorSpaceRelease(DeviceRGB);
}

@end