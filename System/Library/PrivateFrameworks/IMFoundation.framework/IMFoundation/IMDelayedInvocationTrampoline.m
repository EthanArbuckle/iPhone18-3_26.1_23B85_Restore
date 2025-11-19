@interface IMDelayedInvocationTrampoline
- (IMDelayedInvocationTrampoline)initWithTarget:(id)a3 delay:(double)a4 modes:(id)a5;
- (void)forwardInvocation:(id)a3;
@end

@implementation IMDelayedInvocationTrampoline

- (IMDelayedInvocationTrampoline)initWithTarget:(id)a3 delay:(double)a4 modes:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = IMDelayedInvocationTrampoline;
  v10 = [(IMDelayedInvocationTrampoline *)&v14 init];
  v12 = v10;
  if (v10)
  {
    objc_msgSend_setTarget_(v10, v11, v8);
    objc_storeStrong(&v12->_modes, a5);
    v12->_delay = a4;
  }

  return v12;
}

- (void)forwardInvocation:(id)a3
{
  v8 = a3;
  objc_msgSend_retainArguments(v8, v4, v5);
  delay = self->_delay;
  if (self->_modes)
  {
    objc_msgSend_performSelector_withObject_afterDelay_inModes_(self, v6, sel_performInvocation_, v8, delay);
  }

  else
  {
    objc_msgSend_performSelector_withObject_afterDelay_(self, v6, sel_performInvocation_, v8, delay);
  }
}

@end