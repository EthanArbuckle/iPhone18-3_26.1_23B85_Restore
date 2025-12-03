@interface _CATArbitratorResourceProxy
- (BOOL)respondsToSelector:(SEL)selector;
- (_CATArbitratorResourceProxy)initWithResource:(id)resource registration:(id)registration exclusive:(BOOL)exclusive;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)dealloc;
- (void)forwardInvocation:(id)invocation;
- (void)invalidate;
@end

@implementation _CATArbitratorResourceProxy

- (_CATArbitratorResourceProxy)initWithResource:(id)resource registration:(id)registration exclusive:(BOOL)exclusive
{
  resourceCopy = resource;
  registrationCopy = registration;
  if (self)
  {
    self->_isExclusive = exclusive;
    objc_storeStrong(&self->mResource, resource);
    objc_storeStrong(&self->mRegistration, registration);
  }

  return self;
}

- (void)dealloc
{
  [(_CATArbitratorResourceProxy *)self invalidate];
  v3.receiver = self;
  v3.super_class = _CATArbitratorResourceProxy;
  [(_CATArbitratorResourceProxy *)&v3 dealloc];
}

- (void)invalidate
{
  mResource = self->mResource;
  self->mResource = 0;

  mRegistration = self->mRegistration;

  [(_CATArbitratorRegistrationEntry *)mRegistration resourceProxyDidInvalidate:self];
}

- (BOOL)respondsToSelector:(SEL)selector
{
  if (!self->mResource)
  {
    [_CATArbitratorResourceProxy respondsToSelector:];
  }

  mRegistration = self->mRegistration;
  return objc_opt_respondsToSelector() & 1;
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  mResource = self->mResource;
  if (mResource)
  {
  }

  else
  {
    [_CATArbitratorResourceProxy forwardingTargetForSelector:];
    mResource = v6;
  }

  return mResource;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  mResource = self->mResource;
  if (!mResource)
  {
    [_CATArbitratorResourceProxy methodSignatureForSelector:];
    mResource = v6;
  }

  return [mResource methodSignatureForSelector:selector];
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  v5 = invocationCopy;
  if (!self->mResource)
  {
    [_CATArbitratorResourceProxy forwardInvocation:];
    invocationCopy = v5;
  }

  [invocationCopy setTarget:v5];
  [v6 invoke];
}

- (void)respondsToSelector:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v2 = NSStringFromSelector(v1);
  OUTLINED_FUNCTION_0();
  [v3 handleFailureInMethod:v0 object:v2 file:? lineNumber:? description:?];
}

- (void)forwardingTargetForSelector:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(v3);
  [OUTLINED_FUNCTION_3() handleFailureInMethod:v2 object:v5 file:? lineNumber:? description:?];

  *v0 = *v1;
}

- (void)methodSignatureForSelector:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(v3);
  [OUTLINED_FUNCTION_3() handleFailureInMethod:v2 object:v5 file:? lineNumber:? description:?];

  *v0 = *v1;
}

- (void)forwardInvocation:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(v3);
  [OUTLINED_FUNCTION_3() handleFailureInMethod:v2 object:v5 file:? lineNumber:? description:?];

  *v0 = *v1;
}

@end