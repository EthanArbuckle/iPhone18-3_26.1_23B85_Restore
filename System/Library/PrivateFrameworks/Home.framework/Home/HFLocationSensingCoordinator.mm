@interface HFLocationSensingCoordinator
- (BOOL)readHomeSensingDefault;
- (HFLocationSensingCoordinator)initWithDelegate:(id)delegate;
- (HFLocationSensingCoordinatorDelegate)delegate;
- (NAFuture)locationSensingAvailableFuture;
- (void)_defaultsDidChange;
- (void)dealloc;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
@end

@implementation HFLocationSensingCoordinator

- (HFLocationSensingCoordinator)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v25.receiver = self;
  v25.super_class = HFLocationSensingCoordinator;
  v5 = [(HFLocationSensingCoordinator *)&v25 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.Home.group"];
    defaults = v6->_defaults;
    v6->_defaults = v7;

    v9 = objc_alloc_init(MEMORY[0x277D2C900]);
    homeSensingFirstFuture = v6->_homeSensingFirstFuture;
    v6->_homeSensingFirstFuture = v9;

    objc_initWeak(&location, v6);
    v11 = HFHomeSensingDefaultsChangedNotification;
    v12 = MEMORY[0x277D85CD0];
    v13 = MEMORY[0x277D85CD0];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __49__HFLocationSensingCoordinator_initWithDelegate___block_invoke;
    handler[3] = &unk_277DF3CC8;
    objc_copyWeak(&v23, &location);
    notify_register_dispatch(v11, &v6->_defaultsChangedNotifyToken, v12, handler);

    defaultScheduler = [MEMORY[0x277D0F8F0] defaultScheduler];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __49__HFLocationSensingCoordinator_initWithDelegate___block_invoke_2;
    v20[3] = &unk_277DF3D38;
    v15 = v6;
    v21 = v15;
    v16 = [defaultScheduler performBlock:v20];

    v17 = +[HFLocationManagerDispatcher sharedDispatcher];
    [(HFLocationSensingCoordinator *)v15 setLocationDispatcher:v17];

    locationDispatcher = [(HFLocationSensingCoordinator *)v15 locationDispatcher];
    [locationDispatcher addObserver:v15];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __49__HFLocationSensingCoordinator_initWithDelegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _defaultsDidChange];
}

void __49__HFLocationSensingCoordinator_initWithDelegate___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) readHomeSensingDefault];
  v3 = HFLogForCategory(0x2DuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "disabled";
    if (v2)
    {
      v4 = "enabled";
    }

    v8 = 136446210;
    v9 = v4;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Home Sensing is %{public}s", &v8, 0xCu);
  }

  v5 = [*(a1 + 32) homeSensingFirstFuture];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:v2];
  [v5 finishWithResult:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  notify_cancel([(HFLocationSensingCoordinator *)self defaultsChangedNotifyToken]);
  v3.receiver = self;
  v3.super_class = HFLocationSensingCoordinator;
  [(HFLocationSensingCoordinator *)&v3 dealloc];
}

- (NAFuture)locationSensingAvailableFuture
{
  objc_initWeak(&location, self);
  homeSensingFirstFuture = [(HFLocationSensingCoordinator *)self homeSensingFirstFuture];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__HFLocationSensingCoordinator_locationSensingAvailableFuture__block_invoke;
  v6[3] = &unk_277DF3D10;
  objc_copyWeak(&v7, &location);
  v4 = [homeSensingFirstFuture flatMap:v6];
  objc_destroyWeak(&v7);

  objc_destroyWeak(&location);

  return v4;
}

id __62__HFLocationSensingCoordinator_locationSensingAvailableFuture__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained locationDispatcher];
  v3 = [v2 authorizationStatusFuture];
  v4 = [v3 flatMap:&__block_literal_global_13];

  return v4;
}

id __62__HFLocationSensingCoordinator_locationSensingAvailableFuture__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 intValue] - 3 < 2;
  v3 = MEMORY[0x277D2C900];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:v2];
  v5 = [v3 futureWithResult:v4];

  return v5;
}

- (BOOL)readHomeSensingDefault
{
  defaults = [(HFLocationSensingCoordinator *)self defaults];
  v4 = [defaults objectForKey:@"HFHomeSensingEnabled"];

  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
    self->_cachedHomeSensingValue = bOOLValue;
    v6 = 1;
  }

  else
  {
    v6 = 0;
    bOOLValue = 1;
  }

  self->_cachedHomeSensingValueSet = v6;

  return bOOLValue;
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationStatus = [authorization authorizationStatus];
  delegate = [(HFLocationSensingCoordinator *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(HFLocationSensingCoordinator *)self delegate];
    [delegate2 coordinator:self locationSensingAvailabilityDidChange:(authorizationStatus - 3) < 2];
  }
}

- (void)_defaultsDidChange
{
  v10 = *MEMORY[0x277D85DE8];
  readHomeSensingDefault = [(HFLocationSensingCoordinator *)self readHomeSensingDefault];
  v4 = HFLogForCategory(0x2DuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = readHomeSensingDefault;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Home Sensing preferences changed - state is now %{BOOL}d", v9, 8u);
  }

  delegate = [(HFLocationSensingCoordinator *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(HFLocationSensingCoordinator *)self delegate];
    [delegate2 coordinator:self homeSensingStatusDidChange:readHomeSensingDefault];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (HFLocationSensingCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end