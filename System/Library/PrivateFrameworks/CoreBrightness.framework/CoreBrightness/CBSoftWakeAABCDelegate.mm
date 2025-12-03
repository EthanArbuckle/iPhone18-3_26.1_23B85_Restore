@interface CBSoftWakeAABCDelegate
- (CBSoftWakeAABCDelegate)init;
- (int64_t)action:(int64_t)action;
@end

@implementation CBSoftWakeAABCDelegate

- (CBSoftWakeAABCDelegate)init
{
  v9 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = CBSoftWakeAABCDelegate;
  selfCopy = [(CBSoftWakeAABCDelegate *)&v4 init];
  if (selfCopy)
  {
    v8 = xmmword_1DEAC53B0;
    v7 = xmmword_1DEAC53C0;
    createCustomCurve(&v8, &v7, 4u, v3);
    memcpy(&selfCopy->_curve, v3, sizeof(selfCopy->_curve));
    selfCopy->_state = 0;
  }

  *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (int64_t)action:(int64_t)action
{
  if ((canTransition(self->_state, action) & 1) == 0)
  {
    return 1;
  }

  self->_state = action;
  return 0;
}

@end