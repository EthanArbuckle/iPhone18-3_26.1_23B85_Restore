@interface _UIFocusTreeLockItem
- (BOOL)unlock;
- (UIFocusEnvironment)environment;
- (_UIFocusTreeLockItem)initWithEnvironment:(id)environment finalUnlockHandler:(id)handler;
- (id)description;
- (void)_cleanup:(BOOL)_cleanup;
- (void)dealloc;
- (void)lock;
- (void)validate;
@end

@implementation _UIFocusTreeLockItem

- (_UIFocusTreeLockItem)initWithEnvironment:(id)environment finalUnlockHandler:(id)handler
{
  environmentCopy = environment;
  handlerCopy = handler;
  v27.receiver = self;
  v27.super_class = _UIFocusTreeLockItem;
  v8 = [(_UIFocusTreeLockItem *)&v27 init];
  if (v8)
  {
    v9 = MEMORY[0x24C24D980](handlerCopy);
    finalUnlockHandler = v8->_finalUnlockHandler;
    v8->_finalUnlockHandler = v9;

    objc_storeWeak(&v8->_environment, environmentCopy);
    v8->_unsafeEnvironment = environmentCopy;
    v11 = environmentCopy;
    if (v11)
    {
      v12 = MEMORY[0x277CCACA8];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = [v12 stringWithFormat:@"<%@: %p>", v14, v11];
    }

    else
    {
      v15 = @"(nil)";
    }

    environmentDescription = v8->_environmentDescription;
    v8->_environmentDescription = &v15->isa;

    v8->_lockCount = 0;
    v8->_lockTime = CFAbsoluteTimeGetCurrent();
    if (os_variant_has_internal_diagnostics() && _UIFocusGetFocusTreeLockVerboseLogging())
    {
      v21 = objc_opt_new();
      lockCallStackSymbols = v8->_lockCallStackSymbols;
      v8->_lockCallStackSymbols = v21;

      v23 = objc_opt_new();
      unlockCallStackSymbols = v8->_unlockCallStackSymbols;
      v8->_unlockCallStackSymbols = v23;
    }

    v17 = [_UIFocusWeakHelper alloc];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __63___UIFocusTreeLockItem_initWithEnvironment_finalUnlockHandler___block_invoke;
    v25[3] = &unk_279014BD8;
    v18 = v8;
    v26 = v18;
    v19 = [(_UIFocusWeakHelper *)v17 initWithDeallocationBlock:v25];
    objc_setAssociatedObject(v11, v18, v19, 1);
    [(_UIFocusTreeLockItem *)v18 lock];
  }

  return v8;
}

- (void)dealloc
{
  [(_UIFocusTreeLockItem *)self _cleanup:1];
  v3.receiver = self;
  v3.super_class = _UIFocusTreeLockItem;
  [(_UIFocusTreeLockItem *)&v3 dealloc];
}

- (void)lock
{
  v12 = *MEMORY[0x277D85DE8];
  ++self->_lockCount;
  lockCallStackSymbols = self->_lockCallStackSymbols;
  if (lockCallStackSymbols)
  {
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    [(NSMutableArray *)lockCallStackSymbols addObject:callStackSymbols];
  }

  v5 = logger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    environmentDescription = self->_environmentDescription;
    lockCount = self->_lockCount;
    v8 = 138412546;
    v9 = environmentDescription;
    v10 = 2048;
    v11 = lockCount;
    _os_log_debug_impl(&dword_24B885000, v5, OS_LOG_TYPE_DEBUG, "Locking environment %@ — %lu locks total for this environment.", &v8, 0x16u);
  }
}

- (BOOL)unlock
{
  v20 = *MEMORY[0x277D85DE8];
  lockCount = self->_lockCount;
  if (!lockCount)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusTreeLock.m" lineNumber:289 description:{@"Overreleasing a lock. This is a UIKit bug. Additional info:\n%@", self}];

    lockCount = self->_lockCount;
  }

  v4 = lockCount - 1;
  self->_lockCount = lockCount - 1;
  unlockCallStackSymbols = self->_unlockCallStackSymbols;
  if (unlockCallStackSymbols)
  {
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    [(NSMutableArray *)unlockCallStackSymbols addObject:callStackSymbols];

    v4 = self->_lockCount;
  }

  v7 = logger();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v8)
    {
      environmentDescription = self->_environmentDescription;
      v11 = self->_lockCount;
      *buf = 138412546;
      v17 = environmentDescription;
      v18 = 2048;
      v19 = *&v11;
      _os_log_debug_impl(&dword_24B885000, v7, OS_LOG_TYPE_DEBUG, "Unlocking environment %@ — %lu locks remaining for this environment.", buf, 0x16u);
    }
  }

  else
  {
    if (v8)
    {
      v12 = self->_environmentDescription;
      v13 = CFAbsoluteTimeGetCurrent() - self->_lockTime;
      *buf = 138412546;
      v17 = v12;
      v18 = 2048;
      v19 = v13;
      _os_log_debug_impl(&dword_24B885000, v7, OS_LOG_TYPE_DEBUG, "Unlocking environment %@ after %.2fs — 0 locks remaining for this environment.", buf, 0x16u);
    }

    [(_UIFocusTreeLockItem *)self _cleanup:0];
  }

  return self->_lockCount == 0;
}

- (void)_cleanup:(BOOL)_cleanup
{
  v18 = *MEMORY[0x277D85DE8];
  didCleanup = self->_didCleanup;
  if (!didCleanup || _cleanup)
  {
    if (_cleanup && !didCleanup)
    {
      v8 = logger();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        environmentDescription = self->_environmentDescription;
        callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
        v12 = 138412802;
        v13 = environmentDescription;
        v14 = 2112;
        v15 = callStackSymbols;
        v16 = 2112;
        selfCopy2 = self;
        _os_log_debug_impl(&dword_24B885000, v8, OS_LOG_TYPE_DEBUG, "Cleaning up environment lock for %@ from dealloc. Cleanup from dealloc might indicate an unbalanced lock call. Stack trace:\n%@\nAdditional info:\n%@", &v12, 0x20u);
      }
    }

    self->_didCleanup = 1;
    (*(self->_finalUnlockHandler + 2))();
    WeakRetained = objc_loadWeakRetained(&self->_environment);
    v5 = WeakRetained;
    if (WeakRetained)
    {
      callStackSymbols2 = objc_getAssociatedObject(WeakRetained, self);
      [callStackSymbols2 invalidate];
      objc_setAssociatedObject(v5, self, 0, 1);
      goto LABEL_12;
    }
  }

  else
  {
    v5 = logger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = self->_environmentDescription;
      callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
      v12 = 138412802;
      v13 = v6;
      v14 = 2112;
      v15 = callStackSymbols2;
      v16 = 2112;
      selfCopy2 = self;
      _os_log_debug_impl(&dword_24B885000, v5, OS_LOG_TYPE_DEBUG, "Ignoring call to cleanup environment lock for %@. Cleanup has already happened. Stack trace:\n%@\nAdditional info:\n%@", &v12, 0x20u);
LABEL_12:
    }
  }
}

- (void)validate
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  if (!WeakRetained)
  {
    v6 = logger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v9 = 138412290;
      selfCopy = self;
      _os_log_fault_impl(&dword_24B885000, v6, OS_LOG_TYPE_FAULT, "Found a nil focus environment in the list of locked environments. This is a UIKit bug. Additional info:\n%@", &v9, 0xCu);
    }

    goto LABEL_14;
  }

  v4 = CFAbsoluteTimeGetCurrent() - self->_lockTime;
  if (!self->_didSoftAssert && v4 >= 20.0)
  {
    if ((_UIFocusProcessIsBeingDebugged() & 1) == 0)
    {
      v5 = logger();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        environmentDescription = self->_environmentDescription;
        v9 = 138412802;
        selfCopy = environmentDescription;
        v11 = 2048;
        v12 = v4;
        v13 = 2112;
        selfCopy2 = self;
        _os_log_fault_impl(&dword_24B885000, v5, OS_LOG_TYPE_FAULT, "Lock for environment %@ was aquired %.2f seconds ago and might be stuck. This can have a serious impact on focus updates. Additional info:\n%@", &v9, 0x20u);
      }
    }

    self->_didSoftAssert = 1;
  }

  if (v4 > 5.0)
  {
    v6 = logger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = self->_environmentDescription;
      v9 = 138412546;
      selfCopy = v7;
      v11 = 2048;
      v12 = v4;
      _os_log_debug_impl(&dword_24B885000, v6, OS_LOG_TYPE_DEBUG, "Lock for environment %@ was aquired %.2f seconds ago and might be stuck or take very long to be unlocked.", &v9, 0x16u);
    }

LABEL_14:
  }
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = objc_loadWeakRetained(&self->_environment);
  if (v4)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v5 stringWithFormat:@"<%@: %p>", v7, v4];

    v9 = [v3 appendObject:v8 withName:@"environment"];
  }

  else
  {
    v10 = [v3 appendObject:@"(nil)" withName:@"environment"];

    v11 = [v3 appendObject:self->_environmentDescription withName:@"environmentDescription"];
  }

  v12 = [v3 appendUnsignedInteger:self->_lockCount withName:@"lockCount"];
  v13 = [v3 appendDouble:@"duration" withName:2 decimalPrecision:CFAbsoluteTimeGetCurrent() - self->_lockTime];
  lockCallStackSymbols = self->_lockCallStackSymbols;
  if (lockCallStackSymbols)
  {
    v15 = [v3 appendObject:lockCallStackSymbols withName:@"LOCK call stacks"];
  }

  unlockCallStackSymbols = self->_unlockCallStackSymbols;
  if (unlockCallStackSymbols)
  {
    v17 = [v3 appendObject:unlockCallStackSymbols withName:@"UNLOCK call stacks"];
  }

  build = [v3 build];

  return build;
}

- (UIFocusEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end