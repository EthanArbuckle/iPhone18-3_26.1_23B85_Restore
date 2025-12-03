@interface IMCapturedInvocationTrampoline
- (IMCapturedInvocationTrampoline)initWithTarget:(id)target outInvocation:(id *)invocation;
- (void)forwardInvocation:(id)invocation;
@end

@implementation IMCapturedInvocationTrampoline

- (IMCapturedInvocationTrampoline)initWithTarget:(id)target outInvocation:(id *)invocation
{
  targetCopy = target;
  v11.receiver = self;
  v11.super_class = IMCapturedInvocationTrampoline;
  v7 = [(IMCapturedInvocationTrampoline *)&v11 init];
  v9 = v7;
  if (v7)
  {
    objc_msgSend_setTarget_(v7, v8, targetCopy);
    v9->_outInvocation = invocation;
  }

  return v9;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  v6 = objc_msgSend_target(self, v4, v5);
  objc_msgSend_setTarget_(invocationCopy, v7, v6);

  outInvocation = self->_outInvocation;
  if (outInvocation)
  {
    *outInvocation = invocationCopy;
  }
}

@end