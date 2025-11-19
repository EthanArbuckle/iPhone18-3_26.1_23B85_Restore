@interface CWFXPCConnectionMessageProxy
- (BOOL)__hasMethodSignature:(id)a3;
- (CWFXPCConnectionMessageProxy)initWithXPCConnection:(id)a3;
- (void)__addMethodSignature:(id)a3;
- (void)forwardInvocation:(id)a3;
@end

@implementation CWFXPCConnectionMessageProxy

- (CWFXPCConnectionMessageProxy)initWithXPCConnection:(id)a3
{
  v5 = a3;
  if (!v5 || (objc_storeStrong(&self->_target, a3), v6 = objc_alloc_init(MEMORY[0x1E695DFA8]), methodSignatures = self->_methodSignatures, self->_methodSignatures = v6, methodSignatures, !self->_methodSignatures))
  {

    self = 0;
  }

  return self;
}

- (BOOL)__hasMethodSignature:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v4)
  {
    v6 = [(NSMutableSet *)v5->_methodSignatures containsObject:v4];
  }

  else
  {
    v6 = 0;
  }

  objc_sync_exit(v5);

  return v6;
}

- (void)__addMethodSignature:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (v5)
  {
    [(NSMutableSet *)v4->_methodSignatures addObject:v5];
  }

  objc_sync_exit(v4);
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  if (objc_opt_class())
  {
    v5 = NSStringFromSelector([v4 selector]);
    if (![(CWFXPCConnectionMessageProxy *)self __hasMethodSignature:v5])
    {
      [(CWFXPCConnectionMessageProxy *)self __addMethodSignature:v5];
      v6 = [MEMORY[0x1E695DF90] dictionary];
      v7 = [(CWFXPCConnection *)self->_target processName];
      [v6 setObject:v7 forKeyedSubscript:@"processName"];

      v8 = [(CWFXPCConnection *)self->_target XPCConnection];
      v9 = [v8 serviceName];
      [v6 setObject:v9 forKeyedSubscript:@"serviceName"];

      [v6 setObject:v5 forKeyedSubscript:@"methodSignature"];
      v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFXPCConnection hasAppSandboxEntitlement](self->_target, "hasAppSandboxEntitlement")}];
      [v6 setObject:v10 forKeyedSubscript:@"hasAppSandbox"];

      v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[CWFXPCConnection isCodesignedByApple](self->_target, "isCodesignedByApple")}];
      [v6 setObject:v11 forKeyedSubscript:@"codesignedByApple"];

      v13 = v6;
      v12 = v6;
      AnalyticsSendEventLazy();
    }
  }

  [v4 invokeWithTarget:self->_target];
}

@end