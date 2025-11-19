@interface IMCapturedInvocationTrampoline
- (IMCapturedInvocationTrampoline)initWithTarget:(id)a3 outInvocation:(id *)a4;
- (void)forwardInvocation:(id)a3;
@end

@implementation IMCapturedInvocationTrampoline

- (IMCapturedInvocationTrampoline)initWithTarget:(id)a3 outInvocation:(id *)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = IMCapturedInvocationTrampoline;
  v7 = [(IMCapturedInvocationTrampoline *)&v11 init];
  v9 = v7;
  if (v7)
  {
    objc_msgSend_setTarget_(v7, v8, v6);
    v9->_outInvocation = a4;
  }

  return v9;
}

- (void)forwardInvocation:(id)a3
{
  v9 = a3;
  v6 = objc_msgSend_target(self, v4, v5);
  objc_msgSend_setTarget_(v9, v7, v6);

  outInvocation = self->_outInvocation;
  if (outInvocation)
  {
    *outInvocation = v9;
  }
}

@end