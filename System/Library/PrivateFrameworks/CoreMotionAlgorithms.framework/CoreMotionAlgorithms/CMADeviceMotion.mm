@interface CMADeviceMotion
- ($01BB1521EC52D44A8E7628F5261DCEC8)quaternion;
- ($1AB5FA073B851C12C2339EC22442E995)acceleration;
- ($1AB5FA073B851C12C2339EC22442E995)rotationRate;
@end

@implementation CMADeviceMotion

- ($01BB1521EC52D44A8E7628F5261DCEC8)quaternion
{
  x = self->_quaternion.x;
  y = self->_quaternion.y;
  z = self->_quaternion.z;
  w = self->_quaternion.w;
  result.var3 = w;
  result.var2 = z;
  result.var1 = y;
  result.var0 = x;
  return result;
}

- ($1AB5FA073B851C12C2339EC22442E995)rotationRate
{
  x = self->_rotationRate.x;
  y = self->_rotationRate.y;
  z = self->_rotationRate.z;
  result.var2 = z;
  result.var1 = y;
  result.var0 = x;
  return result;
}

- ($1AB5FA073B851C12C2339EC22442E995)acceleration
{
  x = self->_acceleration.x;
  y = self->_acceleration.y;
  z = self->_acceleration.z;
  result.var2 = z;
  result.var1 = y;
  result.var0 = x;
  return result;
}

@end