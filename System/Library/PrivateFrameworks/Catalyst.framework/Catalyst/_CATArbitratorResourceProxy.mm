@interface _CATArbitratorResourceProxy
- (BOOL)respondsToSelector:(SEL)a3;
- (_CATArbitratorResourceProxy)initWithResource:(id)a3 registration:(id)a4 exclusive:(BOOL)a5;
- (id)forwardingTargetForSelector:(SEL)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)dealloc;
- (void)forwardInvocation:(id)a3;
- (void)invalidate;
@end

@implementation _CATArbitratorResourceProxy

- (_CATArbitratorResourceProxy)initWithResource:(id)a3 registration:(id)a4 exclusive:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  if (self)
  {
    self->_isExclusive = a5;
    objc_storeStrong(&self->mResource, a3);
    objc_storeStrong(&self->mRegistration, a4);
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

- (BOOL)respondsToSelector:(SEL)a3
{
  if (!self->mResource)
  {
    [_CATArbitratorResourceProxy respondsToSelector:];
  }

  mRegistration = self->mRegistration;
  return objc_opt_respondsToSelector() & 1;
}

- (id)forwardingTargetForSelector:(SEL)a3
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

- (id)methodSignatureForSelector:(SEL)a3
{
  mResource = self->mResource;
  if (!mResource)
  {
    [_CATArbitratorResourceProxy methodSignatureForSelector:];
    mResource = v6;
  }

  return [mResource methodSignatureForSelector:a3];
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->mResource)
  {
    [_CATArbitratorResourceProxy forwardInvocation:];
    v4 = v5;
  }

  [v4 setTarget:v5];
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