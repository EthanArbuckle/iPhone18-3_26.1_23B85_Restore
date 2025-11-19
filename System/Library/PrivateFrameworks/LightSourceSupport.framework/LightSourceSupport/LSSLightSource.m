@interface LSSLightSource
- (LSSLightSource)initWithIntensity:(double)a3 angle:(double)a4 direction:(_LSSVec3)a5 orientation:(_LSSQuaternion)a6 timestamp:(double)a7;
- (LSSLightSource)initWithSample:(id)a3;
- (_LSSQuaternion)orientation;
- (_LSSVec3)direction;
@end

@implementation LSSLightSource

- (_LSSVec3)direction
{
  x = self->_direction.x;
  y = self->_direction.y;
  z = self->_direction.z;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (LSSLightSource)initWithIntensity:(double)a3 angle:(double)a4 direction:(_LSSVec3)a5 orientation:(_LSSQuaternion)a6 timestamp:(double)a7
{
  z = a5.z;
  y = a5.y;
  x = a5.x;
  v13.receiver = self;
  v13.super_class = LSSLightSource;
  result = [(LSSLightSource *)&v13 init];
  if (result)
  {
    result->_angle = a4;
    result->_direction.x = x;
    result->_direction.y = y;
    result->_direction.z = z;
    result->_orientation = a6;
    result->_timestamp = a7;
    result->_intensity = a3;
  }

  return result;
}

- (LSSLightSource)initWithSample:(id)a3
{
  v3 = *(*&a3.var0 + 16);
  v4 = *(*&a3.var0 + 32);
  v5 = vmulq_f64(v4, v4);
  v5.f64[0] = 1.0 / sqrt(v5.f64[0] + vaddvq_f64(vmulq_f64(v3, v3)));
  return [(LSSLightSource *)self initWithIntensity:*(*&a3.var0 + 80) angle:LSSAngleFromLightDirection(&v7) direction:vmulq_n_f64(v3 orientation:v5.f64[0]) timestamp:vmulq_f64(v4, v5).f64[0], *(*&a3.var0 + 48), *(*&a3.var0 + 56), *(*&a3.var0 + 64), *(*&a3.var0 + 72), **&a3.var0];
}

- (_LSSQuaternion)orientation
{
  x = self->_orientation.x;
  y = self->_orientation.y;
  z = self->_orientation.z;
  w = self->_orientation.w;
  result.w = w;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

@end