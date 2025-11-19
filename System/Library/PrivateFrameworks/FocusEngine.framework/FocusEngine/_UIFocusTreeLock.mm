@interface _UIFocusTreeLock
- (BOOL)isEnvironmentLocked:(id)a3;
- (BOOL)unlockEnvironmentTree:(id)a3;
- (_UIFocusTreeLock)init;
- (id)description;
- (void)_validateLockedEnvironments;
- (void)lockEnvironmentTree:(id)a3;
@end

@implementation _UIFocusTreeLock

- (_UIFocusTreeLock)init
{
  v15.receiver = self;
  v15.super_class = _UIFocusTreeLock;
  v2 = [(_UIFocusTreeLock *)&v15 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:258 valueOptions:0 capacity:10];
    lockedEnvironments = v2->_lockedEnvironments;
    v2->_lockedEnvironments = v3;

    if (os_variant_has_internal_diagnostics())
    {
      objc_initWeak(&location, v2);
      v6 = MEMORY[0x277CBEBB8];
      v9 = MEMORY[0x277D85DD0];
      v10 = 3221225472;
      v11 = __24___UIFocusTreeLock_init__block_invoke;
      v12 = &unk_279014DC8;
      objc_copyWeak(&v13, &location);
      v7 = [v6 scheduledTimerWithTimeInterval:1 repeats:&v9 block:5.0];
      validationTimer = v2->_validationTimer;
      v2->_validationTimer = v7;

      [(NSTimer *)v2->_validationTimer setTolerance:1.0, v9, v10, v11, v12];
      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }

  return v2;
}

- (void)lockEnvironmentTree:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UIFocusTreeLock.m" lineNumber:141 description:{@"Invalid parameter not satisfying: %@", @"environment"}];
  }

  v6 = [(NSMapTable *)self->_lockedEnvironments objectForKey:v5];
  if (v6)
  {
    v7 = v6;
    [(_UIFocusTreeLockItem *)v6 lock];
  }

  else
  {
    objc_initWeak(&location, self);
    v8 = [_UIFocusTreeLockItem alloc];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __40___UIFocusTreeLock_lockEnvironmentTree___block_invoke;
    v10[3] = &unk_279014DF0;
    objc_copyWeak(&v11, &location);
    v7 = [(_UIFocusTreeLockItem *)v8 initWithEnvironment:v5 finalUnlockHandler:v10];
    [(NSMapTable *)self->_lockedEnvironments setObject:v7 forKey:v5];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (BOOL)unlockEnvironmentTree:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"_UIFocusTreeLock.m" lineNumber:160 description:{@"Invalid parameter not satisfying: %@", @"environment"}];
  }

  v6 = [(NSMapTable *)self->_lockedEnvironments objectForKey:v5];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 unlock];
  }

  else
  {
    v9 = logger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v11 = v5;
      if (v5)
      {
        v13 = MEMORY[0x277CCACA8];
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v12 = [v13 stringWithFormat:@"<%@: %p>", v15, v11];
      }

      else
      {
        v12 = @"(nil)";
      }

      *buf = 138412290;
      v18 = v12;
      _os_log_fault_impl(&dword_24B885000, v9, OS_LOG_TYPE_FAULT, "Unbalanced call to unlockEnvironmentTree: for an environment that is not locked: %@", buf, 0xCu);
    }

    v8 = 1;
  }

  return v8;
}

- (BOOL)isEnvironmentLocked:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(NSMapTable *)self->_lockedEnvironments objectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v19;
    *&v7 = 138412290;
    v17 = v7;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 environment];
        if (!v12)
        {
          v13 = logger();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            *buf = v17;
            v23 = v11;
            _os_log_fault_impl(&dword_24B885000, v13, OS_LOG_TYPE_FAULT, "Found a nil focus environment in the list of locked environments. This is a UIKit bug. Additional info:\n%@", buf, 0xCu);
          }
        }

        HaveCommonHierarchy = _UIFocusEnvironmentsHaveCommonHierarchy(v4, v12);

        if (HaveCommonHierarchy)
        {
          v15 = 1;
          goto LABEL_15;
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_15:

  return v15;
}

- (void)_validateLockedEnvironments
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_variant_has_internal_diagnostics())
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = [(NSMapTable *)self->_lockedEnvironments objectEnumerator];
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * v7++) validate];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_lockedEnvironments withName:@"lockedEnvironments"];
  v5 = [v3 build];

  return v5;
}

@end