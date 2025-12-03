@interface BMAccessAssertionCache
+ (id)sharedCache;
- (BMAccessAssertionCache)init;
- (id)_sandboxExtensionWithDescriptor:(id)descriptor extensionToken:(id)token container:(id)container path:(id)path;
- (id)assertionForAccessDescriptor:(id)descriptor;
- (id)createAssertionForAccessDescriptor:(id)descriptor extensionToken:(id)token container:(id)container path:(id)path;
- (void)releaseAssertion:(id)assertion;
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
    weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    extensionCache = v3->_extensionCache;
    v3->_extensionCache = weakToWeakObjectsMapTable;

    unownedToStrongObjectsMapTable = [MEMORY[0x1E696AD18] unownedToStrongObjectsMapTable];
    assertionsMap = v3->_assertionsMap;
    v3->_assertionsMap = unownedToStrongObjectsMapTable;
  }

  return v3;
}

- (id)assertionForAccessDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  os_unfair_lock_lock(&self->_lock);
  v5 = objc_autoreleasePoolPush();
  v6 = [(NSMapTable *)self->_extensionCache objectForKey:descriptorCopy];
  if (v6)
  {
    v7 = [_BMSandboxExtensionAccessAssertion alloc];
    container = [v6 container];
    v9 = [(_BMSandboxExtensionAccessAssertion *)v7 initWithDescriptor:descriptorCopy container:container];

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

- (id)createAssertionForAccessDescriptor:(id)descriptor extensionToken:(id)token container:(id)container path:(id)path
{
  descriptorCopy = descriptor;
  tokenCopy = token;
  containerCopy = container;
  pathCopy = path;
  os_unfair_lock_lock(&self->_lock);
  if (!descriptorCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BMAccessAssertion.m" lineNumber:250 description:{@"Invalid parameter not satisfying: %@", @"descriptor"}];

    if (tokenCopy)
    {
LABEL_14:
      v20 = 0;
      goto LABEL_9;
    }

LABEL_13:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"BMAccessAssertion.m" lineNumber:251 description:{@"Invalid parameter not satisfying: %@", @"extensionToken"}];

    goto LABEL_14;
  }

  if (!tokenCopy)
  {
    goto LABEL_13;
  }

  v15 = objc_autoreleasePoolPush();
  v16 = [(NSMapTable *)self->_extensionCache objectForKey:descriptorCopy];
  if (!v16)
  {
    v17 = [(BMAccessAssertionCache *)self _sandboxExtensionWithDescriptor:descriptorCopy extensionToken:tokenCopy container:containerCopy path:pathCopy];
    v16 = v17;
    if (v17)
    {
      extensionCache = self->_extensionCache;
      descriptor = [v17 descriptor];
      [(NSMapTable *)extensionCache setObject:v16 forKey:descriptor];
    }
  }

  v20 = [[_BMSandboxExtensionAccessAssertion alloc] initWithDescriptor:descriptorCopy container:containerCopy];
  if (v16)
  {
    [(NSMapTable *)self->_assertionsMap setObject:v16 forKey:v20];
  }

  objc_autoreleasePoolPop(v15);
LABEL_9:
  os_unfair_lock_unlock(&self->_lock);

  return v20;
}

- (id)_sandboxExtensionWithDescriptor:(id)descriptor extensionToken:(id)token container:(id)container path:(id)path
{
  v30 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  tokenCopy = token;
  containerCopy = container;
  pathCopy = path;
  os_unfair_lock_assert_owner(&self->_lock);
  v14 = +[BMProcess current];
  isSandboxed = [v14 isSandboxed];

  if ((isSandboxed & 1) == 0)
  {
    v18 = __biome_log_for_category(6);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_1AC15D000, v18, OS_LOG_TYPE_INFO, "Process not sandboxed, returning access descriptor with container information but no sandbox extension", &v26, 2u);
    }

    goto LABEL_10;
  }

  mode = [descriptorCopy mode];
  v17 = &BMSandboxWriteOperation;
  if ((mode & 2) == 0)
  {
    v17 = BMSandboxReadOperation;
  }

  v18 = *v17;
  v19 = +[BMProcess current];
  v20 = [v19 canPerformFileOperation:v18 onPath:pathCopy report:0];

  if (v20)
  {
    v21 = __biome_log_for_category(6);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = BMAccessModePrintableDescription([descriptorCopy mode]);
      v26 = 138412546;
      v27 = v22;
      v28 = 2112;
      v29 = pathCopy;
      _os_log_impl(&dword_1AC15D000, v21, OS_LOG_TYPE_INFO, "Process already has %@ access to %@", &v26, 0x16u);
    }

LABEL_10:
    v23 = 0;
    goto LABEL_12;
  }

  v23 = [[_BMSandboxExtension alloc] initWithDescriptor:descriptorCopy extensionToken:tokenCopy container:containerCopy path:pathCopy];
LABEL_12:

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

- (void)releaseAssertion:(id)assertion
{
  assertionCopy = assertion;
  os_unfair_lock_lock(&self->_lock);
  v4 = objc_autoreleasePoolPush();
  [(NSMapTable *)self->_assertionsMap removeObjectForKey:assertionCopy];
  objc_autoreleasePoolPop(v4);
  os_unfair_lock_unlock(&self->_lock);
}

@end