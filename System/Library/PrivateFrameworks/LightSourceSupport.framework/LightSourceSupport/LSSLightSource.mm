@interface LSSLightSource
- (LSSLightSource)initWithIntensity:(double)intensity angle:(double)angle direction:(_LSSVec3)direction orientation:(_LSSQuaternion)orientation timestamp:(double)timestamp;
- (LSSLightSource)initWithSample:(id)sample;
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

- (LSSLightSource)initWithIntensity:(double)intensity angle:(double)angle direction:(_LSSVec3)direction orientation:(_LSSQuaternion)orientation timestamp:(double)timestamp
{
  z = direction.z;
  y = direction.y;
  x = direction.x;
  v13.receiver = self;
  v13.super_class = LSSLightSource;
  result = [(LSSLightSource *)&v13 init];
  if (result)
  {
    result->_angle = angle;
    result->_direction.x = x;
    result->_direction.y = y;
    result->_direction.z = z;
    result->_orientation = orientation;
    result->_timestamp = timestamp;
    result->_intensity = intensity;
  }

  return result;
}

- (LSSLightSource)initWithSample:(id)sample
{
  v3 = *(*&sample.var0 + 16);
  v4 = *(*&sample.var0 + 32);
  v5 = vmulq_f64(v4, v4);
  v5.f64[0] = 1.0 / sqrt(v5.f64[0] + vaddvq_f64(vmulq_f64(v3, v3)));
  return [(LSSLightSource *)self initWithIntensity:*(*&sample.var0 + 80) angle:LSSAngleFromLightDirection(&v7) direction:vmulq_n_f64(v3 orientation:v5.f64[0]) timestamp:vmulq_f64(v4, v5).f64[0], *(*&sample.var0 + 48), *(*&sample.var0 + 56), *(*&sample.var0 + 64), *(*&sample.var0 + 72), **&sample.var0];
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