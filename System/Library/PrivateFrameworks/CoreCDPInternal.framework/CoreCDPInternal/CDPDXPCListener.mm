@interface CDPDXPCListener
+ (id)sharedInstance;
- (BOOL)_connection:(id)a3 hasEntitlement:(id)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (CDPDXPCListener)init;
- (unint64_t)_clientTypeForBundleID:(id)a3;
- (unint64_t)_clientTypeForConnection:(id)a3;
- (void)start;
@end

@implementation CDPDXPCListener

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[CDPDXPCListener sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

uint64_t __33__CDPDXPCListener_sharedInstance__block_invoke()
{
  sharedInstance_instance = objc_alloc_init(CDPDXPCListener);

  return MEMORY[0x2821F96F8]();
}

- (CDPDXPCListener)init
{
  v6.receiver = self;
  v6.super_class = CDPDXPCListener;
  v2 = [(CDPDXPCListener *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.cdp.daemon"];
    listener = v2->_listener;
    v2->_listener = v3;
  }

  return v2;
}

- (void)start
{
  [(NSXPCListener *)self->_listener setDelegate:self];
  listener = self->_listener;

  [(NSXPCListener *)listener resume];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CDPDXPCListener listener:shouldAcceptNewConnection:];
  }

  if ([(CDPDXPCListener *)self _connection:v7 hasEntitlement:@"com.apple.cdp.recovery"]|| [(CDPDXPCListener *)self _connection:v7 hasEntitlement:@"com.apple.authkit.client"]|| [(CDPDXPCListener *)self _connection:v7 hasEntitlement:@"com.apple.authkit.client.private"]|| [(CDPDXPCListener *)self _connection:v7 hasEntitlement:@"com.apple.authkit.client.internal"]|| [(CDPDXPCListener *)self _connection:v7 hasEntitlement:@"com.apple.authkit.client.owner"])
  {
    v9 = 9;
  }

  else
  {
    v9 = 1;
  }

  if ([(CDPDXPCListener *)self _connection:v7 hasEntitlement:@"com.apple.cdp.statemachine"])
  {
    v9 |= 2uLL;
  }

  if ([(CDPDXPCListener *)self _connection:v7 hasEntitlement:@"com.apple.cdp.utility"])
  {
    v9 |= 4uLL;
  }

  if ([(CDPDXPCListener *)self _connection:v7 hasEntitlement:@"com.apple.cdp.followup"])
  {
    v9 |= 0x10uLL;
  }

  if ([(CDPDXPCListener *)self _connection:v7 hasEntitlement:@"com.apple.cdp.recoverykey"])
  {
    v9 |= 0x20uLL;
  }

  if ([(CDPDXPCListener *)self _connection:v7 hasEntitlement:@"com.apple.cdp.walrus"])
  {
    v9 |= 0x40uLL;
  }

  if ([(CDPDXPCListener *)self _connection:v7 hasEntitlement:@"com.apple.cdp.walrus.pcskeys"])
  {
    v10 = v9 | 0x80;
  }

  else
  {
    v10 = v9;
  }

  v11 = [(CDPDXPCListener *)self _clientTypeForConnection:v7];
  v12 = [(CDPDXPCListener *)self _shouldAcceptNewConnectionWithEntitlements:v10];
  if (v12)
  {
    v13 = [[CDPDClientHandler alloc] initWithConnection:v7 entitlements:v10 clientType:v11];
    v14 = CDPDaemonExportedInterface();
    [v7 setExportedInterface:v14];

    [v7 setExportedObject:v13];
    objc_initWeak(&location, v7);
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __54__CDPDXPCListener_listener_shouldAcceptNewConnection___block_invoke;
    v20 = &unk_278E245A8;
    objc_copyWeak(&v21, &location);
    [v7 setInvalidationHandler:&v17];
    [v7 resume];
    v15 = _CDPLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [CDPDXPCListener listener:shouldAcceptNewConnection:];
    }

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  else
  {
    v13 = _CDPLogSystem();
    if (os_log_type_enabled(&v13->super, OS_LOG_TYPE_DEBUG))
    {
      [CDPDXPCListener listener:shouldAcceptNewConnection:];
    }
  }

  return v12;
}

void __54__CDPDXPCListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __54__CDPDXPCListener_listener_shouldAcceptNewConnection___block_invoke_cold_1(a1, v2);
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 postNotificationName:@"CDPDConnectionInvalidatedNotification" object:WeakRetained];
}

- (BOOL)_connection:(id)a3 hasEntitlement:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (([v6 isEqualToString:@"com.apple.cdp.recoverykey"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"com.apple.cdp.utility") & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"com.apple.cdp.walrus"))
  {
    v7 = [v5 valueForEntitlement:v6];
    v8 = (objc_opt_respondsToSelector() & 1) != 0 && ([v7 BOOLValue] & 1) != 0;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (unint64_t)_clientTypeForConnection:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = proc_pidpath([a3 processIdentifier], buffer, 0x1000u);
  v5 = MEMORY[0x277CBEBC0];
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:buffer length:v4 encoding:4];
  v7 = [v5 fileURLWithPath:v6];

  if (v7)
  {
    v8 = _CFBundleCopyBundleURLForExecutableURL();
    v9 = [MEMORY[0x277CCA8D8] bundleWithURL:v8];
    v10 = [v9 bundleIdentifier];
    v11 = [(CDPDXPCListener *)self _clientTypeForBundleID:v10];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (unint64_t)_clientTypeForBundleID:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.purplebuddy"])
  {
    v4 = _CDPLogSystem();
    v5 = 2;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [CDPDXPCListener _clientTypeForBundleID:];
      v5 = 2;
    }
  }

  else
  {
    v6 = [v3 isEqualToString:@"com.apple.Preferences"];
    v4 = _CDPLogSystem();
    v7 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
    if (v6)
    {
      if (v7)
      {
        [CDPDXPCListener _clientTypeForBundleID:];
      }

      v5 = 1;
    }

    else
    {
      if (v7)
      {
        [CDPDXPCListener _clientTypeForBundleID:];
      }

      v5 = 0;
    }
  }

  return v5;
}

- (void)listener:shouldAcceptNewConnection:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)listener:shouldAcceptNewConnection:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)listener:shouldAcceptNewConnection:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v4 = 1024;
  v5 = v0;
  _os_log_debug_impl(&dword_24510B000, v1, OS_LOG_TYPE_DEBUG, "Accepting new connection %@ with entitlements mask %i", v3, 0x12u);
  v2 = *MEMORY[0x277D85DE8];
}

void __54__CDPDXPCListener_listener_shouldAcceptNewConnection___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_24510B000, a2, OS_LOG_TYPE_DEBUG, "CDP client connection invalidated: %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_clientTypeForBundleID:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end