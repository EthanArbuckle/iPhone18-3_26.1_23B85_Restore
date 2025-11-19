@interface DOCWeakProxy
- (DOCWeakProxy)initWithTarget:(id)a3;
- (NSObject)target;
- (id)forwardingTargetForSelector:(SEL)a3;
- (id)methodSignatureForSelector:(SEL)a3;
@end

@implementation DOCWeakProxy

- (DOCWeakProxy)initWithTarget:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DOCWeakProxy;
  v5 = [(DOCWeakProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DOCWeakProxy *)v5 setTarget:v4];
  }

  return v6;
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  v5 = [(DOCWeakProxy *)self target];

  if (!v5)
  {
    v6 = MEMORY[0x1E699A450];
    v7 = *MEMORY[0x1E699A450];
    if (!*MEMORY[0x1E699A450])
    {
      DOCInitLogging();
      v7 = *v6;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(DOCWeakProxy *)v7 forwardingTargetForSelector:a3];
    }
  }

  v8 = [(DOCWeakProxy *)self target];

  return v8;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v5 = [(DOCWeakProxy *)self target];

  if (v5)
  {
    v6 = [(DOCWeakProxy *)self target];
    v7 = [v6 methodSignatureForSelector:a3];
  }

  else
  {
    v8 = MEMORY[0x1E699A450];
    v9 = *MEMORY[0x1E699A450];
    if (!*MEMORY[0x1E699A450])
    {
      DOCInitLogging();
      v9 = *v8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(DOCWeakProxy *)v9 methodSignatureForSelector:a3];
    }

    v7 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:"v@:"];
  }

  return v7;
}

- (NSObject)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (void)forwardingTargetForSelector:(void *)a1 .cold.1(void *a1, const char *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_1E57D8000, v3, OS_LOG_TYPE_FAULT, "DocumentManager service tried to send a message to a deallocated host proxy: %@", v5, 0xCu);
}

- (void)methodSignatureForSelector:(void *)a1 .cold.1(void *a1, const char *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1E57D8000, v3, OS_LOG_TYPE_ERROR, "The target is nil, so NOT trying selector: %@", v5, 0xCu);
}

@end