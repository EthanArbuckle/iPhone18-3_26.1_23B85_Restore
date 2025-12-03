@interface IMInvocationTrampoline
- (BOOL)respondsToSelector:(SEL)selector;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)dealloc;
- (void)forwardInvocation:(id)invocation;
- (void)performInvocation:(id)invocation;
@end

@implementation IMInvocationTrampoline

- (void)dealloc
{
  target = self->_target;
  self->_target = 0;

  v4.receiver = self;
  v4.super_class = IMInvocationTrampoline;
  [(IMInvocationTrampoline *)&v4 dealloc];
}

- (void)performInvocation:(id)invocation
{
  invocationCopy = invocation;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_target(self, v5, v6);
  objc_msgSend_invokeWithTarget_(invocationCopy, v8, v7);

  objc_autoreleasePoolPop(v4);
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v12.receiver = self;
  v12.super_class = IMInvocationTrampoline;
  if ([(IMInvocationTrampoline *)&v12 respondsToSelector:?])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = objc_msgSend_target(self, v5, v6);
  }

  v9 = selfCopy;
  v10 = objc_msgSend_methodSignatureForSelector_(selfCopy, v8, selector);

  return v10;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v9.receiver = self;
  v9.super_class = IMInvocationTrampoline;
  if ([(IMInvocationTrampoline *)&v9 respondsToSelector:?])
  {
    v6 = 1;
  }

  else
  {
    v7 = objc_msgSend_target(self, v4, v5);
    v6 = objc_opt_respondsToSelector();
  }

  return v6 & 1;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  v8 = objc_msgSend_target(self, v5, v6);
  objc_msgSend_invokeWithTarget_(invocationCopy, v7, v8);
}

@end