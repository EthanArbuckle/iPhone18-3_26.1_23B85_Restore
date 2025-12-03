@interface CWFXPCConnectionMessageProxy
- (BOOL)__hasMethodSignature:(id)signature;
- (CWFXPCConnectionMessageProxy)initWithXPCConnection:(id)connection;
- (void)__addMethodSignature:(id)signature;
- (void)forwardInvocation:(id)invocation;
@end

@implementation CWFXPCConnectionMessageProxy

- (CWFXPCConnectionMessageProxy)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  if (!connectionCopy || (objc_storeStrong(&self->_target, connection), v6 = objc_alloc_init(MEMORY[0x1E695DFA8]), methodSignatures = self->_methodSignatures, self->_methodSignatures = v6, methodSignatures, !self->_methodSignatures))
  {

    self = 0;
  }

  return self;
}

- (BOOL)__hasMethodSignature:(id)signature
{
  signatureCopy = signature;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (signatureCopy)
  {
    v6 = [(NSMutableSet *)selfCopy->_methodSignatures containsObject:signatureCopy];
  }

  else
  {
    v6 = 0;
  }

  objc_sync_exit(selfCopy);

  return v6;
}

- (void)__addMethodSignature:(id)signature
{
  signatureCopy = signature;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (signatureCopy)
  {
    [(NSMutableSet *)selfCopy->_methodSignatures addObject:signatureCopy];
  }

  objc_sync_exit(selfCopy);
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  if (objc_opt_class())
  {
    v5 = NSStringFromSelector([invocationCopy selector]);
    if (![(CWFXPCConnectionMessageProxy *)self __hasMethodSignature:v5])
    {
      [(CWFXPCConnectionMessageProxy *)self __addMethodSignature:v5];
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      processName = [(CWFXPCConnection *)self->_target processName];
      [dictionary setObject:processName forKeyedSubscript:@"processName"];

      xPCConnection = [(CWFXPCConnection *)self->_target XPCConnection];
      serviceName = [xPCConnection serviceName];
      [dictionary setObject:serviceName forKeyedSubscript:@"serviceName"];

      [dictionary setObject:v5 forKeyedSubscript:@"methodSignature"];
      v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFXPCConnection hasAppSandboxEntitlement](self->_target, "hasAppSandboxEntitlement")}];
      [dictionary setObject:v10 forKeyedSubscript:@"hasAppSandbox"];

      v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFXPCConnection isCodesignedByApple](self->_target, "isCodesignedByApple")}];
      [dictionary setObject:v11 forKeyedSubscript:@"codesignedByApple"];

      v13 = dictionary;
      v12 = dictionary;
      AnalyticsSendEventLazy();
    }
  }

  [invocationCopy invokeWithTarget:self->_target];
}

@end