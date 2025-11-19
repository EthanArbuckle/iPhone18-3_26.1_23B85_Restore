@interface CDBDataProtectionObserver
- (BOOL)dataIsAccessible;
- (CDBDataProtectionObserver)init;
- (void)_deviceLockStateChanged;
@end

@implementation CDBDataProtectionObserver

- (CDBDataProtectionObserver)init
{
  v12.receiver = self;
  v12.super_class = CDBDataProtectionObserver;
  v2 = [(CDBDataProtectionObserver *)&v12 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = objc_alloc(MEMORY[0x1E6992F90]);
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __33__CDBDataProtectionObserver_init__block_invoke;
    v9 = &unk_1E86884E8;
    objc_copyWeak(&v10, &location);
    v4 = [v3 initWithStateChangedCallback:&v6];
    [(CDBDataProtectionObserver *)v2 setDeviceLockObserver:v4, v6, v7, v8, v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (BOOL)dataIsAccessible
{
  v2 = [(CDBDataProtectionObserver *)self deviceLockObserver];
  v3 = [v2 hasBeenUnlockedSinceBoot];

  return v3;
}

void __33__CDBDataProtectionObserver_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _deviceLockStateChanged];
}

- (void)_deviceLockStateChanged
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v4 = v3;
    [(CDBDataProtectionObserver *)self dataIsAccessible];
    v5 = CalBooleanAsString();
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_1DEBB1000, v4, OS_LOG_TYPE_DEBUG, "Device lock state changed.  New 'dataIsAccessible' state: [%@].", &v9, 0xCu);
  }

  v6 = [(CDBDataProtectionObserver *)self stateChangedCallback];
  v7 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6);
  }

  v8 = *MEMORY[0x1E69E9840];
}

@end