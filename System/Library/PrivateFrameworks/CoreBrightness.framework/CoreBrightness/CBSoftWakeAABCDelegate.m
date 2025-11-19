@interface CBSoftWakeAABCDelegate
- (CBSoftWakeAABCDelegate)init;
- (int64_t)action:(int64_t)a3;
@end

@implementation CBSoftWakeAABCDelegate

- (CBSoftWakeAABCDelegate)init
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = CBSoftWakeAABCDelegate;
  v6 = [(CBSoftWakeAABCDelegate *)&v4 init];
  if (v6)
  {
    v8 = xmmword_1DEAC53B0;
    v7 = xmmword_1DEAC53C0;
    createCustomCurve(&v8, &v7, 4u, v3);
    memcpy(&v6->_curve, v3, sizeof(v6->_curve));
    v6->_state = 0;
  }

  *MEMORY[0x1E69E9840];
  return v6;
}

- (int64_t)action:(int64_t)a3
{
  if ((canTransition(self->_state, a3) & 1) == 0)
  {
    return 1;
  }

  self->_state = a3;
  return 0;
}

@end