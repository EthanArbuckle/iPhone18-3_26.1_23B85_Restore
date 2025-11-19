@interface BMAccessAssertionCache
+ (id)sharedCache;
- (BMAccessAssertionCache)init;
- (id)_sandboxExtensionWithDescriptor:(id)a3 extensionToken:(id)a4 container:(id)a5 path:(id)a6;
- (id)assertionForAccessDescriptor:(id)a3;
- (id)createAssertionForAccessDescriptor:(id)a3 extensionToken:(id)a4 container:(id)a5 path:(id)a6;
- (void)releaseAssertion:(id)a3;
@end

@implementation BMAccessAssertionCache

+ (id)sharedCache
{
  if (sharedCache_onceToken != -1)
  {
    +[BMAccessAssertionCache sharedCache];
  }

  v3 = sharedCache_cache;

  return v3;
}

uint64_t __37__BMAccessAssertionCache_sharedCache__block_invoke()
{
  sharedCache_cache = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (BMAccessAssertionCache)init
{
  v9.receiver = self;
  v9.super_class = BMAccessAssertionCache;
  v2 = [(BMAccessAssertionCache *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    extensionCache = v3->_extensionCache;
    v3->_extensionCache = v4;

    v6 = [MEMORY[0x1E696AD18] unownedToStrongObjectsMapTable];
    assertionsMap = v3->_assertionsMap;
    v3->_assertionsMap = v6;
  }

  return v3;
}

- (id)assertionForAccessDescriptor:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = objc_autoreleasePoolPush();
  v6 = [(NSMapTable *)self->_extensionCache objectForKey:v4];
  if (v6)
  {
    v7 = [_BMSandboxExtensionAccessAssertion alloc];
    v8 = [v6 container];
    v9 = [(_BMSandboxExtensionAccessAssertion *)v7 initWithDescriptor:v4 container:v8];

    [(NSMapTable *)self->_assertionsMap setObject:v6 forKey:v9];
  }

  else
  {
    v9 = 0;
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (id)createAssertionForAccessDescriptor:(id)a3 extensionToken:(id)a4 container:(id)a5 path:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  os_unfair_lock_lock(&self->_lock);
  if (!v11)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"BMAccessAssertion.m" lineNumber:250 description:{@"Invalid parameter not satisfying: %@", @"descriptor"}];

    if (v12)
    {
LABEL_14:
      v20 = 0;
      goto LABEL_9;
    }

LABEL_13:
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"BMAccessAssertion.m" lineNumber:251 description:{@"Invalid parameter not satisfying: %@", @"extensionToken"}];

    goto LABEL_14;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v15 = objc_autoreleasePoolPush();
  v16 = [(NSMapTable *)self->_extensionCache objectForKey:v11];
  if (!v16)
  {
    v17 = [(BMAccessAssertionCache *)self _sandboxExtensionWithDescriptor:v11 extensionToken:v12 container:v13 path:v14];
    v16 = v17;
    if (v17)
    {
      extensionCache = self->_extensionCache;
      v19 = [v17 descriptor];
      [(NSMapTable *)extensionCache setObject:v16 forKey:v19];
    }
  }

  v20 = [[_BMSandboxExtensionAccessAssertion alloc] initWithDescriptor:v11 container:v13];
  if (v16)
  {
    [(NSMapTable *)self->_assertionsMap setObject:v16 forKey:v20];
  }

  objc_autoreleasePoolPop(v15);
LABEL_9:
  os_unfair_lock_unlock(&self->_lock);

  return v20;
}

- (id)_sandboxExtensionWithDescriptor:(id)a3 extensionToken:(id)a4 container:(id)a5 path:(id)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  os_unfair_lock_assert_owner(&self->_lock);
  v14 = +[BMProcess current];
  v15 = [v14 isSandboxed];

  if ((v15 & 1) == 0)
  {
    v18 = __biome_log_for_category(6);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_1AC15D000, v18, OS_LOG_TYPE_INFO, "Process not sandboxed, returning access descriptor with container information but no sandbox extension", &v26, 2u);
    }

    goto LABEL_10;
  }

  v16 = [v10 mode];
  v17 = &BMSandboxWriteOperation;
  if ((v16 & 2) == 0)
  {
    v17 = BMSandboxReadOperation;
  }

  v18 = *v17;
  v19 = +[BMProcess current];
  v20 = [v19 canPerformFileOperation:v18 onPath:v13 report:0];

  if (v20)
  {
    v21 = __biome_log_for_category(6);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = BMAccessModePrintableDescription([v10 mode]);
      v26 = 138412546;
      v27 = v22;
      v28 = 2112;
      v29 = v13;
      _os_log_impl(&dword_1AC15D000, v21, OS_LOG_TYPE_INFO, "Process already has %@ access to %@", &v26, 0x16u);
    }

LABEL_10:
    v23 = 0;
    goto LABEL_12;
  }

  v23 = [[_BMSandboxExtension alloc] initWithDescriptor:v10 extensionToken:v11 container:v12 path:v13];
LABEL_12:

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

- (void)releaseAssertion:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4 = objc_autoreleasePoolPush();
  [(NSMapTable *)self->_assertionsMap removeObjectForKey:v5];
  objc_autoreleasePoolPop(v4);
  os_unfair_lock_unlock(&self->_lock);
}

@end