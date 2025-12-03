@interface MFTransform
- (CGAffineTransform)getTransformMatrix;
- (CGAffineTransform)getWorldMatrix;
- (CGPoint)DPtoLP:(CGPoint)p;
- (CGPoint)LPtoDP:(CGPoint)p;
- (CGPoint)getViewportExtent;
- (CGPoint)getViewportOrg;
- (CGPoint)getWindowExtent;
- (CGPoint)getWindowOrg;
- (MFTransform)initWithDriver:(id)driver;
- (id)copyWithZone:(_NSZone *)zone;
- (int)modifyWorldTransform:(const CGAffineTransform *)transform in_command:(int)in_command;
- (int)offsetViewportOrg:(int)org in_y:(int)in_y;
- (int)offsetWindowOrg:(int)org in_y:(int)in_y;
- (int)scaleViewportExt:(int)ext in_xDenom:(int)denom in_yNum:(int)num in_yDenom:(int)in_yDenom;
- (int)scaleWindowExt:(int)ext in_xDenom:(int)denom in_yNum:(int)num in_yDenom:(int)in_yDenom;
- (int)setMapMode:(int)mode;
- (int)setViewportExt:(int)ext in_y:(int)in_y;
- (int)setViewportOrg:(int)org in_y:(int)in_y;
- (int)setWindowExt:(int)ext in_y:(int)in_y;
- (int)setWindowOrg:(int)org in_y:(int)in_y;
- (int)setWorldTransform:(const CGAffineTransform *)transform;
- (int)updateTransform;
- (void)setTransformMatrix:(CGAffineTransform *)matrix;
- (void)setWorldMatrix:(CGAffineTransform *)matrix;
@end

@implementation MFTransform

- (int)updateTransform
{
  v3 = *&self->m_world.c;
  *&t1.a = *&self->m_world.a;
  *&t1.c = v3;
  *&t1.tx = *&self->m_world.tx;
  v10.b = 0.0;
  v10.c = 0.0;
  v4 = vcvtq_f64_f32(vcvt_f32_f64(vdivq_f64(self->m_viewportExt, self->m_windowExt)));
  v5 = vmlsq_f64(self->m_viewportOrg, v4, self->m_windowOrg);
  v10.d = v4.f64[1];
  v10.a = v4.f64[0];
  *&v10.tx = v5;
  CGAffineTransformConcat(&v12, &t1, &v10);
  v6 = *&v12.c;
  *&self->m_combinedTransform.a = *&v12.a;
  *&self->m_combinedTransform.c = v6;
  *&self->m_combinedTransform.tx = *&v12.tx;
  m_deviceDriver = self->m_deviceDriver;
  v8 = *&self->m_combinedTransform.c;
  *&v12.a = *&self->m_combinedTransform.a;
  *&v12.c = v8;
  *&v12.tx = *&self->m_combinedTransform.tx;
  return [(MFDeviceDriver *)m_deviceDriver activateTransform:&v12];
}

- (CGAffineTransform)getWorldMatrix
{
  v3 = *&self->d;
  *&retstr->a = *&self->b;
  *&retstr->c = v3;
  *&retstr->tx = *&self->ty;
  return self;
}

- (CGPoint)getWindowOrg
{
  x = self->m_windowOrg.x;
  y = self->m_windowOrg.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)getWindowExtent
{
  x = self->m_windowExt.x;
  y = self->m_windowExt.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)getViewportOrg
{
  x = self->m_viewportOrg.x;
  y = self->m_viewportOrg.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)getViewportExtent
{
  x = self->m_viewportExt.x;
  y = self->m_viewportExt.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGAffineTransform)getTransformMatrix
{
  v3 = *&self[2].ty;
  *&retstr->a = *&self[2].d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[3].b;
  return self;
}

- (MFTransform)initWithDriver:(id)driver
{
  driverCopy = driver;
  v18.receiver = self;
  v18.super_class = MFTransform;
  v6 = [(MFTransform *)&v18 init];
  v7 = v6;
  if (v6)
  {
    v8 = MEMORY[0x277CBF2C0];
    v9 = *MEMORY[0x277CBF2C0];
    v10 = *(MEMORY[0x277CBF2C0] + 16);
    *(v6 + 40) = *(MEMORY[0x277CBF2C0] + 32);
    *(v6 + 24) = v10;
    *(v6 + 8) = v9;
    *(v6 + 7) = 0;
    *(v6 + 8) = 0;
    __asm { FMOV            V0.2D, #1.0 }

    *(v6 + 72) = _Q0;
    *(v6 + 11) = 0;
    *(v6 + 12) = 0;
    *(v6 + 104) = _Q0;
    v16 = v8[1];
    *(v6 + 120) = *v8;
    *(v6 + 136) = v16;
    *(v6 + 152) = v8[2];
    *(v6 + 42) = 1;
    objc_storeStrong(v6 + 22, driver);
  }

  return v7;
}

- (int)setWorldTransform:(const CGAffineTransform *)transform
{
  if (fabs(transform->a * transform->d - transform->b * transform->c) < 1.00000001e-10)
  {
    return -1;
  }

  v4 = *&transform->a;
  v5 = *&transform->c;
  *&self->m_world.tx = *&transform->tx;
  *&self->m_world.c = v5;
  *&self->m_world.a = v4;
  return [(MFTransform *)self updateTransform];
}

- (int)modifyWorldTransform:(const CGAffineTransform *)transform in_command:(int)in_command
{
  if (in_command == 3)
  {
    if (fabs(transform->a * transform->d - transform->b * transform->c) >= 1.00000001e-10)
    {
      v11 = *&self->m_world.c;
      *&t1.a = *&self->m_world.a;
      *&t1.c = v11;
      *&t1.tx = *&self->m_world.tx;
      v12 = *&transform->c;
      *&v14.a = *&transform->a;
      *&v14.c = v12;
      v9 = *&transform->tx;
      goto LABEL_10;
    }

    return -1;
  }

  if (in_command != 2)
  {
    if (in_command == 1)
    {
      v5 = *MEMORY[0x277CBF2C0];
      v6 = *(MEMORY[0x277CBF2C0] + 16);
      *&self->m_world.tx = *(MEMORY[0x277CBF2C0] + 32);
      *&self->m_world.c = v6;
      *&self->m_world.a = v5;
    }

    return [(MFTransform *)self updateTransform:transform];
  }

  if (fabs(transform->a * transform->d - transform->b * transform->c) < 1.00000001e-10)
  {
    return -1;
  }

  v7 = *&transform->c;
  *&t1.a = *&transform->a;
  *&t1.c = v7;
  *&t1.tx = *&transform->tx;
  v8 = *&self->m_world.c;
  *&v14.a = *&self->m_world.a;
  *&v14.c = v8;
  v9 = *&self->m_world.tx;
LABEL_10:
  *&v14.tx = v9;
  CGAffineTransformConcat(&v16, &t1, &v14);
  v13 = *&v16.c;
  *&self->m_world.a = *&v16.a;
  *&self->m_world.c = v13;
  *&self->m_world.tx = *&v16.tx;
  return [(MFTransform *)self updateTransform:transform];
}

- (void)setWorldMatrix:(CGAffineTransform *)matrix
{
  v3 = *&matrix->a;
  v4 = *&matrix->c;
  *&self->m_world.tx = *&matrix->tx;
  *&self->m_world.c = v4;
  *&self->m_world.a = v3;
}

- (int)setWindowExt:(int)ext in_y:(int)in_y
{
  v4 = -1;
  if (ext && in_y)
  {
    if ((self->m_mapMode - 7) <= 1)
    {
      self->m_windowExt.x = ext;
      self->m_windowExt.y = in_y;
      return [(MFTransform *)self updateTransform];
    }

    return 0;
  }

  return v4;
}

- (int)setViewportExt:(int)ext in_y:(int)in_y
{
  v4 = -1;
  if (ext && in_y)
  {
    if ((self->m_mapMode - 7) <= 1)
    {
      self->m_viewportExt.x = ext;
      self->m_viewportExt.y = in_y;
      return [(MFTransform *)self updateTransform];
    }

    return 0;
  }

  return v4;
}

- (int)scaleWindowExt:(int)ext in_xDenom:(int)denom in_yNum:(int)num in_yDenom:(int)in_yDenom
{
  v6 = -1;
  if (ext && denom && num && in_yDenom)
  {
    if ((self->m_mapMode - 7) <= 1)
    {
      v7 = self->m_windowExt.y * num / in_yDenom;
      self->m_windowExt.x = self->m_windowExt.x * ext / denom;
      self->m_windowExt.y = v7;
      return [(MFTransform *)self updateTransform];
    }

    return 0;
  }

  return v6;
}

- (int)scaleViewportExt:(int)ext in_xDenom:(int)denom in_yNum:(int)num in_yDenom:(int)in_yDenom
{
  v6 = -1;
  if (ext && denom && num && in_yDenom)
  {
    if ((self->m_mapMode - 7) <= 1)
    {
      v7 = self->m_viewportExt.y * num / in_yDenom;
      self->m_viewportExt.x = self->m_viewportExt.x * ext / denom;
      self->m_viewportExt.y = v7;
      return [(MFTransform *)self updateTransform];
    }

    return 0;
  }

  return v6;
}

- (int)setMapMode:(int)mode
{
  self->m_mapMode = mode;
  if ((mode - 7) < 2)
  {
    return 0;
  }

  if (mode == 1)
  {
    __asm { FMOV            V0.2D, #1.0 }

    self->m_windowExt = _Q0;
    v9 = 1.0;
  }

  else
  {
    if ((mode - 2) > 4)
    {
      return 0;
    }

    self->m_windowExt = xmmword_25D6FDB90;
    v9 = [MFTransform setMapMode:]::metricSize[mode - 2] * 72.0;
  }

  self->m_viewportExt.x = v9;
  self->m_viewportExt.y = v9;
  return [(MFTransform *)self updateTransform];
}

- (int)setWindowOrg:(int)org in_y:(int)in_y
{
  self->m_windowOrg.x = org;
  self->m_windowOrg.y = in_y;
  return [(MFTransform *)self updateTransform];
}

- (int)setViewportOrg:(int)org in_y:(int)in_y
{
  self->m_viewportOrg.x = org;
  self->m_viewportOrg.y = in_y;
  return [(MFTransform *)self updateTransform];
}

- (int)offsetWindowOrg:(int)org in_y:(int)in_y
{
  v4 = self->m_windowOrg.y + in_y;
  self->m_windowOrg.x = self->m_windowOrg.x + org;
  self->m_windowOrg.y = v4;
  return [(MFTransform *)self updateTransform];
}

- (int)offsetViewportOrg:(int)org in_y:(int)in_y
{
  v4 = self->m_viewportOrg.y + in_y;
  self->m_viewportOrg.x = self->m_viewportOrg.x + org;
  self->m_viewportOrg.y = v4;
  return [(MFTransform *)self updateTransform];
}

- (void)setTransformMatrix:(CGAffineTransform *)matrix
{
  v3 = *&matrix->a;
  v4 = *&matrix->c;
  *&self->m_combinedTransform.tx = *&matrix->tx;
  *&self->m_combinedTransform.c = v4;
  *&self->m_combinedTransform.a = v3;
}

- (CGPoint)DPtoLP:(CGPoint)p
{
  y = p.y;
  x = p.x;
  memset(&v9, 0, sizeof(v9));
  v3 = *&self->m_combinedTransform.c;
  *&v8.a = *&self->m_combinedTransform.a;
  *&v8.c = v3;
  *&v8.tx = *&self->m_combinedTransform.tx;
  CGAffineTransformInvert(&v9, &v8);
  v4 = vaddq_f64(*&v9.tx, vmlaq_n_f64(vmulq_n_f64(*&v9.c, y), *&v9.a, x));
  v5 = v4.f64[1];
  result.x = v4.f64[0];
  result.y = v5;
  return result;
}

- (CGPoint)LPtoDP:(CGPoint)p
{
  v3 = vaddq_f64(*&self->m_combinedTransform.tx, vmlaq_n_f64(vmulq_n_f64(*&self->m_combinedTransform.c, p.y), *&self->m_combinedTransform.a, p.x));
  v4 = v3.f64[1];
  result.x = v3.f64[0];
  result.y = v4;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[MFTransform allocWithZone:?], "initWithDriver:", self->m_deviceDriver];
  [(MFTransform *)self getWorldMatrix];
  [(MFTransform *)v4 setWorldMatrix:v6];
  [(MFTransform *)self getWindowOrg];
  [(MFTransform *)v4 setWindowOrg:?];
  [(MFTransform *)self getWindowExtent];
  [(MFTransform *)v4 setWindowExt:?];
  [(MFTransform *)self getViewportOrg];
  [(MFTransform *)v4 setViewportOrg:?];
  [(MFTransform *)self getViewportExtent];
  [(MFTransform *)v4 setViewportExt:?];
  [(MFTransform *)self getTransformMatrix];
  [(MFTransform *)v4 setTransformMatrix:v6];
  [(MFTransform *)v4 setMapMode:[(MFTransform *)self getMapMode]];
  return v4;
}

@end