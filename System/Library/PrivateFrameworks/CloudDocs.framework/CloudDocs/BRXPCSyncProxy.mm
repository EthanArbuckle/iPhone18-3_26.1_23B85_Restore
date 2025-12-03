@interface BRXPCSyncProxy
- (BRXPCSyncProxy)initWithXPCObject:(id)object;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)forwardInvocation:(id)invocation;
- (void)setBoolResult:(BOOL)result error:(id)error;
- (void)setObjResult:(id)result error:(id)error;
@end

@implementation BRXPCSyncProxy

- (BRXPCSyncProxy)initWithXPCObject:(id)object
{
  objectCopy = object;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    [BRXPCSyncProxy initWithXPCObject:];
  }

  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__BRXPCSyncProxy_initWithXPCObject___block_invoke;
  v8[3] = &unk_1E7A148A8;
  objc_copyWeak(&v9, &location);
  v5 = [objectCopy synchronousRemoteObjectProxyWithErrorHandler:v8];
  target = self->_target;
  self->_target = v5;

  if (!self->_target)
  {

    self = 0;
  }

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return self;
}

void __36__BRXPCSyncProxy_initWithXPCObject___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setObjResult:0 error:v3];
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  target = self->_target;
  if (!target)
  {
    [(BRXPCSyncProxy *)&self->_target forwardInvocation:?];
    target = v6;
  }

  [target forwardInvocation:invocationCopy];
}

- (id)methodSignatureForSelector:(SEL)selector
{
  target = self->_target;
  if (!target)
  {
    [(BRXPCSyncProxy *)&self->_target methodSignatureForSelector:?];
    target = v7;
  }

  v5 = [target methodSignatureForSelector:selector];

  return v5;
}

- (void)setBoolResult:(BOOL)result error:(id)error
{
  if (result)
  {
    v5 = MEMORY[0x1E695E118];
  }

  else
  {
    v5 = 0;
  }

  errorCopy = error;
  [(BRXPCSyncProxy *)self setResult:v5];
  [(BRXPCSyncProxy *)self setError:errorCopy];
}

- (void)setObjResult:(id)result error:(id)error
{
  errorCopy = error;
  [(BRXPCSyncProxy *)self setResult:result];
  [(BRXPCSyncProxy *)self setError:errorCopy];
}

- (void)initWithXPCObject:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = brc_bread_crumbs("[BRXPCSyncProxy initWithXPCObject:]", 22);
  v1 = brc_default_log(0, 0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v3 = 138412290;
    v4 = v0;
    _os_log_fault_impl(&dword_1AE2A9000, v1, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: [object respondsToSelector:@selector(synchronousRemoteObjectProxyWithErrorHandler:)]%@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)forwardInvocation:(void *)a1 .cold.1(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = brc_bread_crumbs("[BRXPCSyncProxy forwardInvocation:]", 38);
  v5 = brc_default_log(0, 0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_2(&dword_1AE2A9000, v6, v7, "[CRIT] Assertion failed: _target%@", v8, v9, v10, v11, 2u);
  }

  *a2 = *a1;
  v12 = *MEMORY[0x1E69E9840];
}

- (void)methodSignatureForSelector:(void *)a1 .cold.1(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = brc_bread_crumbs("[BRXPCSyncProxy methodSignatureForSelector:]", 44);
  v5 = brc_default_log(0, 0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_2(&dword_1AE2A9000, v6, v7, "[CRIT] Assertion failed: _target%@", v8, v9, v10, v11, 2u);
  }

  *a2 = *a1;
  v12 = *MEMORY[0x1E69E9840];
}

@end