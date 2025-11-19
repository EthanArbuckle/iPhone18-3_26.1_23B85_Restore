@interface IMInvocationTrampoline
- (BOOL)respondsToSelector:(SEL)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)dealloc;
- (void)forwardInvocation:(id)a3;
- (void)performInvocation:(id)a3;
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

- (void)performInvocation:(id)a3
{
  v9 = a3;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_target(self, v5, v6);
  objc_msgSend_invokeWithTarget_(v9, v8, v7);

  objc_autoreleasePoolPop(v4);
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v12.receiver = self;
  v12.super_class = IMInvocationTrampoline;
  if ([(IMInvocationTrampoline *)&v12 respondsToSelector:?])
  {
    v7 = self;
  }

  else
  {
    v7 = objc_msgSend_target(self, v5, v6);
  }

  v9 = v7;
  v10 = objc_msgSend_methodSignatureForSelector_(v7, v8, a3);

  return v10;
}

- (BOOL)respondsToSelector:(SEL)a3
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

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_target(self, v5, v6);
  objc_msgSend_invokeWithTarget_(v4, v7, v8);
}

@end