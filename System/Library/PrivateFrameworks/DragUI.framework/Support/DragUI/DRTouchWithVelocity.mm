@interface DRTouchWithVelocity
- ($FC8E855C3CECF01FD7639B5D7F67724F)velocity;
- (void)setVelocity:(id)velocity;
@end

@implementation DRTouchWithVelocity

- ($FC8E855C3CECF01FD7639B5D7F67724F)velocity
{
  v3 = *&self->_velocity.var0.x;
  v4 = *&self->_velocity.var0.z;
  *v2 = v3;
  v2[1] = v4;
  result.var0.var1 = *&v4;
  result.var0.var0 = *&v3;
  return result;
}

- (void)setVelocity:(id)velocity
{
  v4 = v3[1];
  *&self->_velocity.var0.x = *v3;
  *&self->_velocity.var0.z = v4;
}

@end