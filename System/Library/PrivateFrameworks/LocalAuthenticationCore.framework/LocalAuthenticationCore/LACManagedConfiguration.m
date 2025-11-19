@interface LACManagedConfiguration
+ (LACManagedConfiguration)sharedInstance;
- (LACManagedConfiguration)init;
- (int64_t)passcodeType;
- (void)_startObservingConnection;
- (void)_stopObservingConnection;
- (void)_synchronizedObservers:(id)a3;
- (void)addObserver:(id)a3;
- (void)profileConnectionDidReceivePasscodeChangedNotification:(id)a3 userInfo:(id)a4;
- (void)removeObserver:(id)a3;
@end

@implementation LACManagedConfiguration

+ (LACManagedConfiguration)sharedInstance
{
  if (sharedInstance_onceToken_19 != -1)
  {
    +[LACManagedConfiguration sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_17;

  return v3;
}

- (LACManagedConfiguration)init
{
  v8.receiver = self;
  v8.super_class = LACManagedConfiguration;
  v2 = [(LACManagedConfiguration *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v3;

    v2->_observersLock._os_unfair_lock_opaque = 0;
    MCProfileConnectionClass = getMCProfileConnectionClass();
    if (MCProfileConnectionClass)
    {
      MCProfileConnectionClass = [getMCProfileConnectionClass() sharedConnection];
    }

    connection = v2->_connection;
    v2->_connection = MCProfileConnectionClass;
  }

  return v2;
}

uint64_t __41__LACManagedConfiguration_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(LACManagedConfiguration);
  v1 = sharedInstance_sharedInstance_17;
  sharedInstance_sharedInstance_17 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (int64_t)passcodeType
{
  v4 = -1;
  result = self->_connection;
  if (result)
  {
    v3 = [result unlockScreenTypeWithOutSimplePasscodeType:&v4];
    if (v3 == 2)
    {
      return 4;
    }

    if (v3 == 1)
    {
      return 3;
    }

    if (v3)
    {
      return 4;
    }

    if ((v4 + 1) < 3)
    {
      return (v4 + 1);
    }

    else
    {
      return 4;
    }
  }

  return result;
}

- (void)addObserver:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__LACManagedConfiguration_addObserver___block_invoke;
  v8[3] = &unk_1E7A97720;
  v5 = v4;
  v9 = v5;
  objc_copyWeak(&v10, &location);
  [(LACManagedConfiguration *)self _synchronizedObservers:v8];
  v6 = LACLogPasscode();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = self;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, "%@ did register observer %@", buf, 0x16u);
  }

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  v7 = *MEMORY[0x1E69E9840];
}

void __39__LACManagedConfiguration_addObserver___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 count];
  [v3 addObject:*(a1 + 32)];

  if (!v4)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _startObservingConnection];
  }
}

- (void)removeObserver:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__LACManagedConfiguration_removeObserver___block_invoke;
  v8[3] = &unk_1E7A97720;
  v5 = v4;
  v9 = v5;
  objc_copyWeak(&v10, &location);
  [(LACManagedConfiguration *)self _synchronizedObservers:v8];
  v6 = LACLogPasscode();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = self;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, "%@ did remove observer %@", buf, 0x16u);
  }

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  v7 = *MEMORY[0x1E69E9840];
}

void __42__LACManagedConfiguration_removeObserver___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 removeObject:v3];
  v5 = [v4 count];

  if (!v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _stopObservingConnection];
  }
}

- (void)profileConnectionDidReceivePasscodeChangedNotification:(id)a3 userInfo:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = LACLogPasscode();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = self;
    _os_log_impl(&dword_1B0233000, v8, OS_LOG_TYPE_DEFAULT, "%@ did receive passcode changed notification", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __91__LACManagedConfiguration_profileConnectionDidReceivePasscodeChangedNotification_userInfo___block_invoke;
  v11[3] = &unk_1E7A97748;
  objc_copyWeak(&v13, buf);
  v9 = v7;
  v12 = v9;
  [(LACManagedConfiguration *)self _synchronizedObservers:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);

  v10 = *MEMORY[0x1E69E9840];
}

void __91__LACManagedConfiguration_profileConnectionDidReceivePasscodeChangedNotification_userInfo___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            [v10 configurationDidReceivePasscodeChangedNotification:WeakRetained userInfo:{*(a1 + 32), v12}];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_synchronizedObservers:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_observersLock);
  v4[2](v4, self->_observers);

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)_startObservingConnection
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = LACLogPasscode();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = self;
    _os_log_impl(&dword_1B0233000, v3, OS_LOG_TYPE_DEFAULT, "%@ did register for passcode observation", &v5, 0xCu);
  }

  [(MCProfileConnection *)self->_connection registerObserver:self];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_stopObservingConnection
{
  v7 = *MEMORY[0x1E69E9840];
  [(MCProfileConnection *)self->_connection unregisterObserver:self];
  v3 = LACLogPasscode();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = self;
    _os_log_impl(&dword_1B0233000, v3, OS_LOG_TYPE_DEFAULT, "%@ did unregister from passcode observation", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

@end