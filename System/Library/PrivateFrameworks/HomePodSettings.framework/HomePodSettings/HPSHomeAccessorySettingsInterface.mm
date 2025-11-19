@interface HPSHomeAccessorySettingsInterface
- (HPSHomeAccessorySettingsConnectionInterfaceDelegate)delegate;
- (HPSHomeAccessorySettingsInterface)initWithDelegate:(id)a3;
- (void)accessoryDidUpdateValueForEndpointIdentifier:(id)a3 keyPath:(id)a4 value:(id)a5;
- (void)dealloc;
- (void)fetchSettingForEndpointIdentifier:(id)a3 keyPath:(id)a4 completionHandler:(id)a5;
- (void)handleConnectionInterrupted;
- (void)handleConnectionInvalidated;
- (void)subscribeToSettingForEndpointIdentifier:(id)a3 keyPath:(id)a4 completionHandler:(id)a5;
- (void)unsubscribeToSettingForEndpointIdentifier:(id)a3 keyPath:(id)a4 completionHandler:(id)a5;
@end

@implementation HPSHomeAccessorySettingsInterface

- (HPSHomeAccessorySettingsInterface)initWithDelegate:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = HPSHomeAccessorySettingsInterface;
  v5 = [(HPSHomeAccessorySettingsInterface *)&v33 init];
  v6 = v5;
  if (v5)
  {
    v24 = v4;
    objc_storeWeak(&v5->_delegate, v4);
    v7 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.homeaccessorysettings.server" options:4096];
    xpcConnection = v6->_xpcConnection;
    v6->_xpcConnection = v7;

    v27 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2866662A8];
    v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286657948];
    v25 = MEMORY[0x277CBEB98];
    v26 = v9;
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = [v25 setWithObjects:{v10, v11, v12, v13, v14, v15, v16, v17, v18, objc_opt_class(), 0}];
    [v27 setClasses:v19 forSelector:sel_sendFetchSettingForEndpointIdentifier_keyPath_completionHandler_ argumentIndex:0 ofReply:1];
    [v27 setClasses:v19 forSelector:sel_sendSubscribeRequestToSettingForEndpointIdentifier_keypath_completionHandler_ argumentIndex:0 ofReply:1];
    [v27 setClasses:v19 forSelector:sel_sendUnsubscribeRequestToSettingForEndpointIdentifier_keypath_completionHandler_ argumentIndex:0 ofReply:1];
    [v26 setClasses:v19 forSelector:sel_homekitaccessoryDidUpdateValueForEndpointIdentifier_keyPath_value_ argumentIndex:0 ofReply:0];
    objc_initWeak(&location, v6);
    v20 = v6->_xpcConnection;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __54__HPSHomeAccessorySettingsInterface_initWithDelegate___block_invoke;
    v30[3] = &unk_279774158;
    objc_copyWeak(&v31, &location);
    [(NSXPCConnection *)v20 setInterruptionHandler:v30];
    v21 = v6->_xpcConnection;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __54__HPSHomeAccessorySettingsInterface_initWithDelegate___block_invoke_348;
    v28[3] = &unk_279774158;
    objc_copyWeak(&v29, &location);
    [(NSXPCConnection *)v21 setInvalidationHandler:v28];
    v6->_isValidConnection = v6->_xpcConnection != 0;
    v22 = [[HPSHomeAccessoryInterfaceMediator alloc] initWithInterface:v6];
    [(NSXPCConnection *)v6->_xpcConnection setExportedObject:v22];
    [(NSXPCConnection *)v6->_xpcConnection setRemoteObjectInterface:v27];
    [(NSXPCConnection *)v6->_xpcConnection setExportedInterface:v26];
    [(NSXPCConnection *)v6->_xpcConnection resume];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);

    v4 = v24;
  }

  return v6;
}

void __54__HPSHomeAccessorySettingsInterface_initWithDelegate___block_invoke(uint64_t a1)
{
  v2 = _HPSLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __54__HPSHomeAccessorySettingsInterface_initWithDelegate___block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleConnectionInterrupted];
}

void __54__HPSHomeAccessorySettingsInterface_initWithDelegate___block_invoke_348(uint64_t a1)
{
  v2 = _HPSLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __54__HPSHomeAccessorySettingsInterface_initWithDelegate___block_invoke_348_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleConnectionInvalidated];
}

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  v3 = [(HPSHomeAccessorySettingsInterface *)self xpcConnection];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = HPSHomeAccessorySettingsInterface;
  [(HPSHomeAccessorySettingsInterface *)&v4 dealloc];
}

- (void)fetchSettingForEndpointIdentifier:(id)a3 keyPath:(id)a4 completionHandler:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _HPSLoggingFacility();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v14 = 136315650;
    v15 = "[HPSHomeAccessorySettingsInterface fetchSettingForEndpointIdentifier:keyPath:completionHandler:]";
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_2542B7000, v11, OS_LOG_TYPE_INFO, "%s endpointID %@ keyPath %@", &v14, 0x20u);
  }

  v12 = [(NSXPCConnection *)self->_xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_2];
  [v12 sendFetchSettingForEndpointIdentifier:v8 keyPath:v9 completionHandler:v10];

  v13 = *MEMORY[0x277D85DE8];
}

void __97__HPSHomeAccessorySettingsInterface_fetchSettingForEndpointIdentifier_keyPath_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _HPSLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __97__HPSHomeAccessorySettingsInterface_fetchSettingForEndpointIdentifier_keyPath_completionHandler___block_invoke_cold_1(v2);
  }
}

- (void)subscribeToSettingForEndpointIdentifier:(id)a3 keyPath:(id)a4 completionHandler:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _HPSLoggingFacility();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v14 = 136315650;
    v15 = "[HPSHomeAccessorySettingsInterface subscribeToSettingForEndpointIdentifier:keyPath:completionHandler:]";
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_2542B7000, v11, OS_LOG_TYPE_INFO, "%s endpointID %@ keyPath %@", &v14, 0x20u);
  }

  v12 = [(NSXPCConnection *)self->_xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_354];
  [v12 sendSubscribeRequestToSettingForEndpointIdentifier:v8 keypath:v9 completionHandler:v10];

  v13 = *MEMORY[0x277D85DE8];
}

void __103__HPSHomeAccessorySettingsInterface_subscribeToSettingForEndpointIdentifier_keyPath_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _HPSLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __103__HPSHomeAccessorySettingsInterface_subscribeToSettingForEndpointIdentifier_keyPath_completionHandler___block_invoke_cold_1(v2);
  }
}

- (void)unsubscribeToSettingForEndpointIdentifier:(id)a3 keyPath:(id)a4 completionHandler:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _HPSLoggingFacility();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v14 = 136315650;
    v15 = "[HPSHomeAccessorySettingsInterface unsubscribeToSettingForEndpointIdentifier:keyPath:completionHandler:]";
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_2542B7000, v11, OS_LOG_TYPE_INFO, "%s endpointID %@ keyPath %@", &v14, 0x20u);
  }

  v12 = [(NSXPCConnection *)self->_xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_356];
  [v12 sendUnsubscribeRequestToSettingForEndpointIdentifier:v8 keypath:v9 completionHandler:v10];

  v13 = *MEMORY[0x277D85DE8];
}

void __105__HPSHomeAccessorySettingsInterface_unsubscribeToSettingForEndpointIdentifier_keyPath_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _HPSLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __105__HPSHomeAccessorySettingsInterface_unsubscribeToSettingForEndpointIdentifier_keyPath_completionHandler___block_invoke_cold_1(v2);
  }
}

- (void)handleConnectionInvalidated
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    self->_isValidConnection = 0;
    [WeakRetained settingsConnectionInvalidated];
  }

  else
  {
    v4 = _HPSLoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [HPSHomeAccessorySettingsInterface handleConnectionInvalidated];
    }
  }
}

- (void)handleConnectionInterrupted
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained settingsConnectionInterrupted];
  }

  else
  {
    v3 = _HPSLoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [HPSHomeAccessorySettingsInterface handleConnectionInvalidated];
    }
  }
}

- (void)accessoryDidUpdateValueForEndpointIdentifier:(id)a3 keyPath:(id)a4 value:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _HPSLoggingFacility();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315906;
    v15 = "[HPSHomeAccessorySettingsInterface accessoryDidUpdateValueForEndpointIdentifier:keyPath:value:]";
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&dword_2542B7000, v11, OS_LOG_TYPE_DEFAULT, "%s Notify Client endpointID %@ keyPath %@ settingValue %@", &v14, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained didUpdateSettingForEndpointIdentifier:v8 keyPath:v9 value:v10];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (HPSHomeAccessorySettingsConnectionInterfaceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __54__HPSHomeAccessorySettingsInterface_initWithDelegate___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __54__HPSHomeAccessorySettingsInterface_initWithDelegate___block_invoke_348_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __97__HPSHomeAccessorySettingsInterface_fetchSettingForEndpointIdentifier_keyPath_completionHandler___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_2542B7000, v2, v3, "%s Error..%@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __103__HPSHomeAccessorySettingsInterface_subscribeToSettingForEndpointIdentifier_keyPath_completionHandler___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_2542B7000, v2, v3, "%s Error..%@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __105__HPSHomeAccessorySettingsInterface_unsubscribeToSettingForEndpointIdentifier_keyPath_completionHandler___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_2542B7000, v2, v3, "%s Error..%@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end