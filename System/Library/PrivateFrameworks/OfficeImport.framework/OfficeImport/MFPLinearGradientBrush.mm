@interface MFPLinearGradientBrush
- (void)createShading;
@end

@implementation MFPLinearGradientBrush

- (void)createShading
{
  p_mBounds = &self->mBounds;
  MinX = CGRectGetMinX(self->mBounds);
  MinY = CGRectGetMinY(*p_mBounds);
  MaxX = CGRectGetMaxX(*p_mBounds);
  v7 = CGRectGetMinY(*p_mBounds);
  p_mTransform = &self->super.mTransform;
  v9 = *&self->super.mTransform.c;
  *&v27.a = *&self->super.mTransform.a;
  *&v27.c = v9;
  *&v27.tx = *&self->super.mTransform.tx;
  if (!CGAffineTransformIsIdentity(&v27))
  {
    MidX = CGRectGetMidX(*p_mBounds);
    MidY = CGRectGetMidY(*p_mBounds);
    v12 = CGRectGetMinX(*p_mBounds);
    v13 = CGRectGetMinY(*p_mBounds);
    v14 = CGRectGetMinX(*p_mBounds);
    MaxY = CGRectGetMaxY(*p_mBounds);
    b = self->super.mTransform.b;
    c = self->super.mTransform.c;
    d = self->super.mTransform.d;
    tx = self->super.mTransform.tx;
    ty = self->super.mTransform.ty;
    v21 = tx + v13 * c + p_mTransform->a * v12;
    v22 = ty + v13 * d + b * v12;
    v23 = tx + MaxY * c + p_mTransform->a * v14 - v21;
    *&MaxY = ty + MaxY * d + b * v14 - v22;
    *&b = ((v22 - MidY) * -v23 + *&MaxY * (v21 - MidX)) / (-v23 * -v23 + *&MaxY * *&MaxY);
    v24 = (*&MaxY * *&b);
    MinX = MidX + v24;
    v25 = -(v23 * *&b);
    MinY = MidY + v25;
    MaxX = MidX - v24;
    v7 = MidY - v25;
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v28.x = MinX;
  v28.y = MinY;
  v29.x = MaxX;
  v29.y = v7;
  self->super.mShading = CGShadingCreateAxial(DeviceRGB, v28, v29, self->super.mShadingFunction, 1, 1);
  CGColorSpaceRelease(DeviceRGB);
}

@end