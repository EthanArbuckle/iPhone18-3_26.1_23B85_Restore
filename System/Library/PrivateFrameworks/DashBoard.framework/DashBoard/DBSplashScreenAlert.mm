@interface DBSplashScreenAlert
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (DBSplashScreenAlert)initWithEnvironmentConfiguration:(id)configuration;
- (void)_showAlertIfNecessary;
- (void)connect;
- (void)invalidate;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
@end

@implementation DBSplashScreenAlert

- (DBSplashScreenAlert)initWithEnvironmentConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = DBSplashScreenAlert;
  v6 = [(DBSplashScreenAlert *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_environmentConfiguration, configuration);
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
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults objectForKey:@"DBReconnectingWithNewOverrideCanvasKey"];
  bOOLValue = [v4 BOOLValue];

  LODWORD(v4) = SBSGetScreenLockStatus();
  anonymousListener = DBLogForCategory(0xBuLL);
  v7 = os_log_type_enabled(anonymousListener, OS_LOG_TYPE_DEFAULT);
  if (!v4 || (bOOLValue & 1) != 0)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, anonymousListener, OS_LOG_TYPE_DEFAULT, "Device is not locked or rescaling, will not present splash screen alert", buf, 2u);
    }
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_248146000, anonymousListener, OS_LOG_TYPE_DEFAULT, "Device is locked and not rescaling, showing alert", buf, 2u);
    }

    anonymousListener = [MEMORY[0x277CCAE98] anonymousListener];
    [anonymousListener setDelegate:self];
    [anonymousListener resume];
    objc_storeStrong(&self->_listener, anonymousListener);
    v8 = [objc_alloc(MEMORY[0x277D66BD8]) initWithServiceName:@"com.apple.CarPlaySplashScreen" viewControllerClassName:@"CARSplashScreenViewController"];
    v9 = objc_alloc_init(MEMORY[0x277D66BD0]);
    endpoint = [(NSXPCListener *)self->_listener endpoint];
    _endpoint = [endpoint _endpoint];
    [v9 setXpcEndpoint:_endpoint];

    v23 = @"vehicleSupportsGaugeCluster";
    v12 = MEMORY[0x277CCABB0];
    environmentConfiguration = [(DBSplashScreenAlert *)self environmentConfiguration];
    v14 = [v12 numberWithBool:{objc_msgSend(environmentConfiguration, "supportsGaugeCluster")}];
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

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v5 = MEMORY[0x277CCAE90];
  connectionCopy = connection;
  v7 = [v5 interfaceWithProtocol:&unk_285B71D48];
  [connectionCopy setRemoteObjectInterface:v7];
  v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285B04420];
  [connectionCopy setExportedInterface:v8];
  [connectionCopy setExportedObject:self];
  [connectionCopy setInterruptionHandler:&__block_literal_global_28];
  [connectionCopy setInvalidationHandler:&__block_literal_global_146];
  [connectionCopy resume];
  [(DBSplashScreenAlert *)self setConnection:connectionCopy];

  return 1;
}

- (void)invalidate
{
  connection = [(DBSplashScreenAlert *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy dismissAlertAnimated:1];
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

- (void)remoteAlertHandleDidActivate:(id)activate
{
  v3 = DBLogForCategory(0xBuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_248146000, v3, OS_LOG_TYPE_DEFAULT, "Alert did activate", v4, 2u);
  }
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  v4 = DBLogForCategory(0xBuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_248146000, v4, OS_LOG_TYPE_DEFAULT, "Alert did deactivate", v6, 2u);
  }

  alertHandle = [(DBSplashScreenAlert *)self alertHandle];
  [alertHandle invalidate];
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  v8 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = DBLogForCategory(0xBuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = errorCopy;
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Alert did invalidate with error: %@", &v6, 0xCu);
  }
}

@end