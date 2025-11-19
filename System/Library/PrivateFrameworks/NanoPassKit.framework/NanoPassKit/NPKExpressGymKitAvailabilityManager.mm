@interface NPKExpressGymKitAvailabilityManager
- (NPKExpressGymKitAvailabilityManager)initWithDelegate:(id)a3;
- (NPKExpressGymKitAvailabilityManagerDelegate)delegate;
- (void)allowEnableExpressGymKitWithVisibleViewController:(id)a3 completion:(id)a4;
- (void)dealloc;
@end

@implementation NPKExpressGymKitAvailabilityManager

- (NPKExpressGymKitAvailabilityManager)initWithDelegate:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NPKExpressGymKitAvailabilityManager;
  v5 = [(NPKExpressGymKitAvailabilityManager *)&v13 init];
  if (v5)
  {
    objc_initWeak(&location, v5);
    v6 = [@"com.apple.nanopasskit.expressGymKitAvailable.didChange" UTF8String];
    v7 = MEMORY[0x277D85CD0];
    v8 = MEMORY[0x277D85CD0];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __56__NPKExpressGymKitAvailabilityManager_initWithDelegate___block_invoke;
    v10[3] = &unk_279944F20;
    objc_copyWeak(&v11, &location);
    notify_register_dispatch(v6, &v5->_notificationToken, v7, v10);

    objc_storeWeak(&v5->_delegate, v4);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __56__NPKExpressGymKitAvailabilityManager_initWithDelegate___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained isExpressGymKitAllowed];
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [WeakRetained delegate];
      v7 = objc_opt_class();
      v8 = [WeakRetained delegate];
      v11 = 138413058;
      v12 = WeakRetained;
      v13 = 1024;
      v14 = v2;
      v15 = 2112;
      v16 = v7;
      v17 = 2048;
      v18 = v8;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: %@ handling com.apple.nanopasskit.expressGymKitAvailable.didChange notification isAllowed:%d delegate:<%@:%p>", &v11, 0x26u);
    }
  }

  v9 = [WeakRetained delegate];
  [v9 expressGymKitAvailabilityManager:WeakRetained didChangeIsExpressGymKitAllowed:v2];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  if (notify_is_valid_token(self->_notificationToken))
  {
    notify_cancel(self->_notificationToken);
  }

  v3.receiver = self;
  v3.super_class = NPKExpressGymKitAvailabilityManager;
  [(NPKExpressGymKitAvailabilityManager *)&v3 dealloc];
}

- (void)allowEnableExpressGymKitWithVisibleViewController:(id)a3 completion:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = pk_General_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_General_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v5;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: NPKExpressGymKitAvailabilityManager: requested allow enable express GymKit with view controller:%@", buf, 0xCu);
    }
  }

  v10 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/NanoPreferenceBundles/Applications/NanoPassbookBridgeSettings.bundle"];
  v11 = [v10 isLoaded];
  v12 = pk_General_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v14 = pk_General_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = v10;
      v22 = 1024;
      v23 = v11;
      _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: NPKExpressGymKitAvailabilityManager: Found settings bundle:%@ loaded:%d", buf, 0x12u);
    }
  }

  if ((v11 & 1) == 0)
  {
    [v10 load];
  }

  v15 = [v10 classNamed:@"NPKPassbookBridgeSettingsController"];
  if ([(objc_class *)v15 conformsToProtocol:&unk_286CE97F8])
  {
    v16 = objc_alloc_init(v15);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __100__NPKExpressGymKitAvailabilityManager_allowEnableExpressGymKitWithVisibleViewController_completion___block_invoke;
    v18[3] = &unk_279944F48;
    v19 = v6;
    [v16 allowEnableExpressGymKitWithVisibleViewController:v5 completion:v18];
  }

  else
  {
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NPKExpressGymKitAvailabilityManagerErrorDomain" code:1 userInfo:0];
    (*(v6 + 2))(v6, 0, v16);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __100__NPKExpressGymKitAvailabilityManager_allowEnableExpressGymKitWithVisibleViewController_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = pk_General_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_General_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109378;
      v10[1] = a2;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKExpressGymKitAvailabilityManager: did allowed enable express GymKit:%d error:%@", v10, 0x12u);
    }
  }

  (*(*(a1 + 32) + 16))();

  v9 = *MEMORY[0x277D85DE8];
}

- (NPKExpressGymKitAvailabilityManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end