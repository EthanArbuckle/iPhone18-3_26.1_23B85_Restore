@interface DBSplashScreenAlert
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (DBSplashScreenAlert)initWithEnvironmentConfiguration:(id)a3;
- (void)_showAlertIfNecessary;
- (void)connect;
- (void)invalidate;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
@end

@implementation DBSplashScreenAlert

- (DBSplashScreenAlert)initWithEnvironmentConfiguration:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = DBSplashScreenAlert;
  v6 = [(DBSplashScreenAlert *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_environmentConfiguration, a3);
    v8 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__DBSplashScreenAlert_initWithEnvironmentConfiguration___block_invoke;
    block[3] = &unk_278F01580;
    v11 = v7;
    dispatch_async(v8, block);
  }

  return v7;
}

- (void)_showAlertIfNecessary
{
  v24[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 objectForKey:@"DBReconnectingWithNewOverrideCanvasKey"];
  v5 = [v4 BOOLValue];

  LODWORD(v4) = SBSGetScreenLockStatus();
  v6 = DBLogForCategory(0xBuLL);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (!v4 || (v5 & 1) != 0)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "Device is not locked or rescaling, will not present splash screen alert", buf, 2u);
    }
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "Device is locked and not rescaling, showing alert", buf, 2u);
    }

    v6 = [MEMORY[0x277CCAE98] anonymousListener];
    [v6 setDelegate:self];
    [v6 resume];
    objc_storeStrong(&self->_listener, v6);
    v8 = [objc_alloc(MEMORY[0x277D66BD8]) initWithServiceName:@"com.apple.CarPlaySplashScreen" viewControllerClassName:@"CARSplashScreenViewController"];
    v9 = objc_alloc_init(MEMORY[0x277D66BD0]);
    v10 = [(NSXPCListener *)self->_listener endpoint];
    v11 = [v10 _endpoint];
    [v9 setXpcEndpoint:v11];

    v23 = @"vehicleSupportsGaugeCluster";
    v12 = MEMORY[0x277CCABB0];
    v13 = [(DBSplashScreenAlert *)self environmentConfiguration];
    v14 = [v12 numberWithBool:{objc_msgSend(v13, "supportsGaugeCluster")}];
    v24[0] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    [v9 setUserInfo:v15];

    v16 = [MEMORY[0x277D66BF0] newHandleWithDefinition:v8 configurationContext:v9];
    [v16 addObserver:self];
    alertHandle = self->_alertHandle;
    self->_alertHandle = v16;
    v18 = v16;

    v19 = DBLogForCategory(0xBuLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, v19, OS_LOG_TYPE_DEFAULT, "Activating splash screen alert", buf, 2u);
    }

    [v18 activateWithContext:0];
    v20 = dispatch_time(0, 10000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__DBSplashScreenAlert__showAlertIfNecessary__block_invoke;
    block[3] = &unk_278F01580;
    block[4] = self;
    dispatch_after(v20, MEMORY[0x277D85CD0], block);
  }
}

void __44__DBSplashScreenAlert__showAlertIfNecessary__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v1 = [v2 remoteObjectProxy];
  [v1 dismissAlertAnimated:1];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = MEMORY[0x277CCAE90];
  v6 = a4;
  v7 = [v5 interfaceWithProtocol:&unk_285B71D48];
  [v6 setRemoteObjectInterface:v7];
  v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285B04420];
  [v6 setExportedInterface:v8];
  [v6 setExportedObject:self];
  [v6 setInterruptionHandler:&__block_literal_global_28];
  [v6 setInvalidationHandler:&__block_literal_global_146];
  [v6 resume];
  [(DBSplashScreenAlert *)self setConnection:v6];

  return 1;
}

- (void)invalidate
{
  v3 = [(DBSplashScreenAlert *)self connection];
  v2 = [v3 remoteObjectProxy];
  [v2 dismissAlertAnimated:1];
}

- (void)connect
{
  v2 = DBLogForCategory(0xBuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_248146000, v2, OS_LOG_TYPE_DEFAULT, "Remote alert connected", v3, 2u);
  }
}

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v3 = DBLogForCategory(0xBuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_248146000, v3, OS_LOG_TYPE_DEFAULT, "Alert did activate", v4, 2u);
  }
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v4 = DBLogForCategory(0xBuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "Alert did deactivate", v6, 2u);
  }

  v5 = [(DBSplashScreenAlert *)self alertHandle];
  [v5 invalidate];
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = DBLogForCategory(0xBuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Alert did invalidate with error: %@", &v6, 0xCu);
  }
}

@end