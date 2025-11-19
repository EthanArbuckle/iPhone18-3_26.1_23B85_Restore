@interface HFHomeManagerCreator
- (BOOL)_shouldCreateHomeManager;
- (HFHomeManagerCreator)init;
- (HFHomeManagerCreator)initWithHostProcess:(int64_t)a3 configuration:(id)a4 homeStatus:(id)a5 delegate:(id)a6;
- (HFHomeManagerCreatorDelegate)delegate;
- (id)_createHomeManager;
- (id)createHomeManagerIfNeeded;
- (unint64_t)_homeManagerCreationPolicy;
- (void)_createHomeManagerOnQueue;
@end

@implementation HFHomeManagerCreator

- (HFHomeManagerCreator)initWithHostProcess:(int64_t)a3 configuration:(id)a4 homeStatus:(id)a5 delegate:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v18.receiver = self;
  v18.super_class = HFHomeManagerCreator;
  v13 = [(HFHomeManagerCreator *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_hostProcessType = a3;
    objc_storeStrong(&v13->_homeStatus, a5);
    objc_storeWeak(&v14->_delegate, v12);
    v14->_creationPolicy = [(HFHomeManagerCreator *)v14 _homeManagerCreationPolicy];
    if (v10)
    {
      v15 = v10;
    }

    else
    {
      v15 = [MEMORY[0x277CD1A98] defaultPrivateConfiguration];
    }

    configuration = v14->_configuration;
    v14->_configuration = v15;
  }

  return v14;
}

- (HFHomeManagerCreator)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHostProcess_configuration_homeStatus_delegate_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFHomeManagerCreator.m" lineNumber:59 description:{@"%s is unavailable; use %@ instead", "-[HFHomeManagerCreator init]", v5}];

  return 0;
}

- (id)createHomeManagerIfNeeded
{
  if ([(HFHomeManagerCreator *)self _shouldCreateHomeManager])
  {
    v3 = [(HFHomeManagerCreator *)self _createHomeManager];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_createHomeManager
{
  if ([(HFHomeManagerCreator *)self hostProcessType]== 100 || [(HFHomeManagerCreator *)self hostProcessType]== 101)
  {
    [(HFHomeManagerCreator *)self _createHomeManagerOnQueue];
    v3 = 0;
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x277CD1A90]);
    v5 = [(HFHomeManagerCreator *)self configuration];
    v3 = [v4 initWithHomeMangerConfiguration:v5];
  }

  return v3;
}

- (void)_createHomeManagerOnQueue
{
  objc_initWeak(&location, self);
  v2 = dispatch_get_global_queue(0, 0);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__HFHomeManagerCreator__createHomeManagerOnQueue__block_invoke;
  v3[3] = &unk_277DF4460;
  objc_copyWeak(&v4, &location);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __49__HFHomeManagerCreator__createHomeManagerOnQueue__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = objc_alloc(MEMORY[0x277CD1A90]);
  v2 = [WeakRetained configuration];
  v3 = [v1 initWithHomeMangerConfiguration:v2];

  v4 = [WeakRetained delegate];
  [v4 homeManagerWasCreated:v3];
}

- (BOOL)_shouldCreateHomeManager
{
  v13 = *MEMORY[0x277D85DE8];
  if (+[HFUtilities isInternalTest](HFUtilities, "isInternalTest") && ![objc_opt_class() allowCreationInTest])
  {
    LOBYTE(v5) = 0;
    goto LABEL_13;
  }

  v3 = [(HFHomeManagerCreator *)self creationPolicy];
  if (v3 != 1)
  {
    if (v3 != 2)
    {
      LOBYTE(v5) = 1;
      goto LABEL_13;
    }

    v4 = [(HFHomeManagerCreator *)self homeStatus];
    v5 = [v4 areHomesConfigured];

    v6 = HFLogForCategory(0x27uLL);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v11 = 67109120;
    v12 = v5;
    v7 = "areAnyHomesConfigured: %d";
    goto LABEL_9;
  }

  v8 = [(HFHomeManagerCreator *)self homeStatus];
  v5 = [v8 areAnyAccessoriesConfigured];

  v6 = HFLogForCategory(0x27uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 67109120;
    v12 = v5;
    v7 = "areAnyAccessoriesConfigured: %d";
LABEL_9:
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, v7, &v11, 8u);
  }

LABEL_10:

LABEL_13:
  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

- (unint64_t)_homeManagerCreationPolicy
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [(HFHomeManagerCreator *)self hostProcessType]- 100;
  if (v2 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_20DD97560[v2];
  }

  v4 = HFLogForCategory(0x27uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = v3;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "HMHomeManager creation policy: %lu", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

- (HFHomeManagerCreatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end