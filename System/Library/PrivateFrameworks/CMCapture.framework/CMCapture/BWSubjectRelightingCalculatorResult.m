@interface BWSubjectRelightingCalculatorResult
- (BOOL)waitForResult;
- (BWSubjectRelightingCalculatorResult)init;
- (void)_completeWithRelightingRequired:(BOOL)a3 curveParameter:(float)a4;
- (void)dealloc;
@end

@implementation BWSubjectRelightingCalculatorResult

- (BWSubjectRelightingCalculatorResult)init
{
  v5.receiver = self;
  v5.super_class = BWSubjectRelightingCalculatorResult;
  v2 = [(BWSubjectRelightingCalculatorResult *)&v5 init];
  if (v2)
  {
    v3 = dispatch_group_create();
    v2->_group = v3;
    dispatch_group_enter(v3);
    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWSubjectRelightingCalculatorResult;
  [(BWSubjectRelightingCalculatorResult *)&v3 dealloc];
}

- (BOOL)waitForResult
{
  os_unfair_lock_lock(&self->_lock);
  v3 = dispatch_group_wait(self->_group, 0);
  if (v3)
  {
    dispatch_group_wait(self->_group, 0xFFFFFFFFFFFFFFFFLL);
  }

  os_unfair_lock_unlock(&self->_lock);
  return v3 != 0;
}

- (void)_completeWithRelightingRequired:(BOOL)a3 curveParameter:(float)a4
{
  self->_relightingRequired = a3;
  self->_curveParameter = a4;
  dispatch_group_leave(self->_group);
}

@end