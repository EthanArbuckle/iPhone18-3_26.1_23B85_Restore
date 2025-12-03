@interface IMDelayedInvocationTrampoline
- (IMDelayedInvocationTrampoline)initWithTarget:(id)target delay:(double)delay modes:(id)modes;
- (void)forwardInvocation:(id)invocation;
@end

@implementation IMDelayedInvocationTrampoline

- (IMDelayedInvocationTrampoline)initWithTarget:(id)target delay:(double)delay modes:(id)modes
{
  targetCopy = target;
  modesCopy = modes;
  v14.receiver = self;
  v14.super_class = IMDelayedInvocationTrampoline;
  v10 = [(IMDelayedInvocationTrampoline *)&v14 init];
  v12 = v10;
  if (v10)
  {
    objc_msgSend_setTarget_(v10, v11, targetCopy);
    objc_storeStrong(&v12->_modes, modes);
    v12->_delay = delay;
  }

  return v12;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  objc_msgSend_retainArguments(invocationCopy, v4, v5);
  delay = self->_delay;
  if (self->_modes)
  {
    objc_msgSend_performSelector_withObject_afterDelay_inModes_(self, v6, sel_performInvocation_, invocationCopy, delay);
  }

  else
  {
    objc_msgSend_performSelector_withObject_afterDelay_(self, v6, sel_performInvocation_, invocationCopy, delay);
  }
}

@end