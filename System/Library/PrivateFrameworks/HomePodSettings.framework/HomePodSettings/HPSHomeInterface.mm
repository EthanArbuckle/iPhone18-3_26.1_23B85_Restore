@interface HPSHomeInterface
+ (id)connectionError;
- (HPSHomeInterface)initWithDelegate:(id)a3;
- (HPSettingsConnectionInterfaceDelegate)delegate;
- (void)_accessoryDidUpdateAttribute:(id)a3 withContext:(id)a4;
- (void)dealloc;
- (void)getAirPlaySettings:(id)a3;
- (void)getCurrentHomeAttribute:(id)a3 completion:(id)a4;
- (void)getHomeAccessoryAttribute:(id)a3 completion:(id)a4;
- (void)getHomeKitCachedSettings:(id)a3;
- (void)handleConnectionInterrupted;
- (void)handleConnectionInvalidated;
- (void)isAutomaticSoftwareUpdateEnabled:(id)a3;
- (void)isHomeKitSyncComplete:(id)a3;
- (void)startConnection;
@end

@implementation HPSHomeInterface

- (HPSHomeInterface)initWithDelegate:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  obj = a3;
  v32.receiver = self;
  v32.super_class = HPSHomeInterface;
  v4 = [(HPSHomeInterface *)&v32 init];
  if (v4)
  {
    v5 = _HPSLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v34 = "[HPSHomeInterface initWithDelegate:]";
      _os_log_impl(&dword_2542B7000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    objc_storeWeak(&v4->_delegate, obj);
    v6 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.homepodsettings.server" options:4096];
    hpsConnection = v4->_hpsConnection;
    v4->_hpsConnection = v6;

    v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286666248];
    [(NSXPCConnection *)v4->_hpsConnection setRemoteObjectInterface:v8];

    v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286658B40];
    [(NSXPCConnection *)v4->_hpsConnection setExportedInterface:v9];

    v26 = MEMORY[0x277CBEB98];
    v25 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [v26 setWithObjects:{v25, v10, v11, v12, v13, v14, v15, v16, v17, objc_opt_class(), 0}];
    v19 = [(NSXPCConnection *)v4->_hpsConnection remoteObjectInterface];
    [v19 setClasses:v18 forSelector:sel_getHomeKitCachedSettings_ argumentIndex:0 ofReply:1];

    objc_initWeak(buf, v4);
    v20 = v4->_hpsConnection;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __37__HPSHomeInterface_initWithDelegate___block_invoke;
    v30[3] = &unk_279774158;
    objc_copyWeak(&v31, buf);
    [(NSXPCConnection *)v20 setInterruptionHandler:v30];
    v21 = v4->_hpsConnection;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __37__HPSHomeInterface_initWithDelegate___block_invoke_356;
    v28[3] = &unk_279774158;
    objc_copyWeak(&v29, buf);
    [(NSXPCConnection *)v21 setInvalidationHandler:v28];
    v4->_connectionValid = v4->_hpsConnection != 0;
    v22 = [[HPSHomeInterfaceMediator alloc] initWithInterface:v4];
    [(NSXPCConnection *)v4->_hpsConnection setExportedObject:v22];
    [(NSXPCConnection *)v4->_hpsConnection resume];
    [(HPSHomeInterface *)v4 startConnection];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&v31);
    objc_destroyWeak(buf);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v4;
}

void __37__HPSHomeInterface_initWithDelegate___block_invoke(uint64_t a1)
{
  v2 = _HPSLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __37__HPSHomeInterface_initWithDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleConnectionInterrupted];
}

void __37__HPSHomeInterface_initWithDelegate___block_invoke_356(uint64_t a1)
{
  v2 = _HPSLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __37__HPSHomeInterface_initWithDelegate___block_invoke_356_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleConnectionInvalidated];
}

- (void)startConnection
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _HPSLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[HPSHomeInterface startConnection]";
    _os_log_impl(&dword_2542B7000, v3, OS_LOG_TYPE_DEFAULT, "%s Invoked on HPSHomeInterface XPCClient!", &v6, 0xCu);
  }

  v4 = [(NSXPCConnection *)self->_hpsConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_1];
  [v4 startConnection];

  v5 = *MEMORY[0x277D85DE8];
}

void __35__HPSHomeInterface_startConnection__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _HPSLoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __35__HPSHomeInterface_startConnection__block_invoke_cold_1(v2);
    }
  }
}

- (void)getHomeAccessoryAttribute:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    hpsConnection = self->_hpsConnection;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __57__HPSHomeInterface_getHomeAccessoryAttribute_completion___block_invoke;
    v22[3] = &unk_2797741A0;
    v10 = v7;
    v23 = v10;
    v11 = [(NSXPCConnection *)hpsConnection remoteObjectProxyWithErrorHandler:v22];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __57__HPSHomeInterface_getHomeAccessoryAttribute_completion___block_invoke_359;
    v20[3] = &unk_2797741C8;
    v21 = v10;
    [v11 getHomeAccessoryAttribute:v6 completion:v20];

    v12 = v23;
  }

  else
  {
    v12 = _HPSLoggingFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(HPSHomeInterface *)v12 getHomeAccessoryAttribute:v13 completion:v14, v15, v16, v17, v18, v19];
    }
  }
}

void __57__HPSHomeInterface_getHomeAccessoryAttribute_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _HPSLoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __57__HPSHomeInterface_getHomeAccessoryAttribute_completion___block_invoke_cold_1(v3);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)getAirPlaySettings:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    hpsConnection = self->_hpsConnection;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __39__HPSHomeInterface_getAirPlaySettings___block_invoke;
    v19[3] = &unk_2797741A0;
    v7 = v4;
    v20 = v7;
    v8 = [(NSXPCConnection *)hpsConnection remoteObjectProxyWithErrorHandler:v19];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __39__HPSHomeInterface_getAirPlaySettings___block_invoke_361;
    v17[3] = &unk_2797741F0;
    v18 = v7;
    [v8 getAirPlaySettings:v17];

    v9 = v20;
  }

  else
  {
    v9 = _HPSLoggingFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(HPSHomeInterface *)v9 getAirPlaySettings:v10, v11, v12, v13, v14, v15, v16];
    }
  }
}

void __39__HPSHomeInterface_getAirPlaySettings___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _HPSLoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __39__HPSHomeInterface_getAirPlaySettings___block_invoke_cold_1(v3);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)getHomeKitCachedSettings:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    hpsConnection = self->_hpsConnection;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __45__HPSHomeInterface_getHomeKitCachedSettings___block_invoke;
    v19[3] = &unk_2797741A0;
    v7 = v4;
    v20 = v7;
    v8 = [(NSXPCConnection *)hpsConnection remoteObjectProxyWithErrorHandler:v19];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __45__HPSHomeInterface_getHomeKitCachedSettings___block_invoke_363;
    v17[3] = &unk_2797741F0;
    v18 = v7;
    [v8 getHomeKitCachedSettings:v17];

    v9 = v20;
  }

  else
  {
    v9 = _HPSLoggingFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(HPSHomeInterface *)v9 getHomeKitCachedSettings:v10, v11, v12, v13, v14, v15, v16];
    }
  }
}

void __45__HPSHomeInterface_getHomeKitCachedSettings___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _HPSLoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __45__HPSHomeInterface_getHomeKitCachedSettings___block_invoke_cold_1(v3);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)isHomeKitSyncComplete:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    hpsConnection = self->_hpsConnection;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __42__HPSHomeInterface_isHomeKitSyncComplete___block_invoke;
    v19[3] = &unk_2797741A0;
    v7 = v4;
    v20 = v7;
    v8 = [(NSXPCConnection *)hpsConnection remoteObjectProxyWithErrorHandler:v19];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __42__HPSHomeInterface_isHomeKitSyncComplete___block_invoke_364;
    v17[3] = &unk_279774218;
    v18 = v7;
    [v8 isHomeKitSyncComplete:v17];

    v9 = v20;
  }

  else
  {
    v9 = _HPSLoggingFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(HPSHomeInterface *)v9 isHomeKitSyncComplete:v10, v11, v12, v13, v14, v15, v16];
    }
  }
}

void __42__HPSHomeInterface_isHomeKitSyncComplete___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _HPSLoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __42__HPSHomeInterface_isHomeKitSyncComplete___block_invoke_cold_1(v3);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)isAutomaticSoftwareUpdateEnabled:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    hpsConnection = self->_hpsConnection;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __53__HPSHomeInterface_isAutomaticSoftwareUpdateEnabled___block_invoke;
    v19[3] = &unk_2797741A0;
    v7 = v4;
    v20 = v7;
    v8 = [(NSXPCConnection *)hpsConnection remoteObjectProxyWithErrorHandler:v19];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __53__HPSHomeInterface_isAutomaticSoftwareUpdateEnabled___block_invoke_366;
    v17[3] = &unk_279774218;
    v18 = v7;
    [v8 isAutomaticSoftwareUpdateEnabled:v17];

    v9 = v20;
  }

  else
  {
    v9 = _HPSLoggingFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(HPSHomeInterface *)v9 isAutomaticSoftwareUpdateEnabled:v10, v11, v12, v13, v14, v15, v16];
    }
  }
}

void __53__HPSHomeInterface_isAutomaticSoftwareUpdateEnabled___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _HPSLoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __53__HPSHomeInterface_isAutomaticSoftwareUpdateEnabled___block_invoke_cold_1(v3);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)getCurrentHomeAttribute:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    hpsConnection = self->_hpsConnection;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __55__HPSHomeInterface_getCurrentHomeAttribute_completion___block_invoke;
    v22[3] = &unk_2797741A0;
    v10 = v7;
    v23 = v10;
    v11 = [(NSXPCConnection *)hpsConnection remoteObjectProxyWithErrorHandler:v22];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __55__HPSHomeInterface_getCurrentHomeAttribute_completion___block_invoke_367;
    v20[3] = &unk_2797741C8;
    v21 = v10;
    [v11 getCurrentHomeAttribute:v6 completion:v20];

    v12 = v23;
  }

  else
  {
    v12 = _HPSLoggingFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(HPSHomeInterface *)v12 getCurrentHomeAttribute:v13 completion:v14, v15, v16, v17, v18, v19];
    }
  }
}

void __55__HPSHomeInterface_getCurrentHomeAttribute_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _HPSLoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __55__HPSHomeInterface_getCurrentHomeAttribute_completion___block_invoke_cold_1(v3);
    }

    (*(*(a1 + 32) + 16))();
  }
}

+ (id)connectionError
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA9B8];
  v7 = *MEMORY[0x277CCA450];
  v8[0] = @"Connection Error";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v2 errorWithDomain:@"com.apple.homepodsettings" code:0 userInfo:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)handleConnectionInvalidated
{
  v3 = [(HPSHomeInterface *)self delegate];

  if (v3)
  {
    self->_connectionValid = 0;
    v5 = [(HPSHomeInterface *)self delegate];
    [v5 connectionInvalidated];
  }

  else
  {
    v4 = _HPSLoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(HPSHomeInterface *)v4 handleConnectionInvalidated];
    }
  }
}

- (void)handleConnectionInterrupted
{
  v3 = [(HPSHomeInterface *)self delegate];

  if (v3)
  {
    v5 = [(HPSHomeInterface *)self delegate];
    [v5 connectionInterrupted];
  }

  else
  {
    v4 = _HPSLoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(HPSHomeInterface *)v4 handleConnectionInvalidated];
    }
  }
}

- (void)_accessoryDidUpdateAttribute:(id)a3 withContext:(id)a4
{
  v67[4] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v5 isEqualToString:@"com.apple.homepodsettings.HPHomeKitSetupComplete"])
  {
    v53 = 0;
    v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v53];
    v8 = v53;
    if (v8)
    {
      v9 = _HPSLoggingFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(HPSHomeInterface *)v8 _accessoryDidUpdateAttribute:v9 withContext:v10, v11, v12, v13, v14, v15];
      }
    }

    else
    {
      v9 = [MEMORY[0x277CCAB98] defaultCenter];
      v66[0] = @"hasValidHome";
      v32 = [MEMORY[0x277CCABB0] numberWithBool:{-[__CFString hasValidHomeLoaded](v7, "hasValidHomeLoaded")}];
      v67[0] = v32;
      v66[1] = @"OTAEnabled";
      v33 = [MEMORY[0x277CCABB0] numberWithBool:{-[__CFString isAutoSUEnabled](v7, "isAutoSUEnabled")}];
      v67[1] = v33;
      v66[2] = @"mediaPeerToPeerEnabled";
      v34 = [MEMORY[0x277CCABB0] numberWithBool:{-[__CFString isMediaPeerToPeerEnabled](v7, "isMediaPeerToPeerEnabled")}];
      v67[2] = v34;
      v66[3] = @"minimumMediaUserPrivilege";
      v35 = [MEMORY[0x277CCABB0] numberWithInteger:{-[__CFString minimumMediaUserPrivilege](v7, "minimumMediaUserPrivilege")}];
      v67[3] = v35;
      v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:4];
      [v9 postNotificationName:@"com.apple.homepodsettings.HPHomeKitSetupComplete" object:0 userInfo:v36];
    }

    goto LABEL_50;
  }

  if (![v5 isEqualToString:@"com.apple.homepodsettings.deviceReset"])
  {
    if ([v5 isEqualToString:@"com.apple.homepodsettings.airplayP2PAccess"])
    {
      objc_opt_class();
      v23 = v6;
      if (objc_opt_isKindOfClass())
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      v25 = v24;

      v26 = MEMORY[0x277CBEC28];
      if (v25)
      {
        v26 = v25;
      }

      v27 = v26;

      v8 = [MEMORY[0x277CCAB98] defaultCenter];
      v28 = @"com.apple.homepodsettings.airplayP2PAccess";
      v62 = @"mediaPeerToPeerEnabled";
      v63 = v27;
      v29 = MEMORY[0x277CBEAC0];
      v30 = &v63;
      v31 = &v62;
    }

    else if ([v5 isEqualToString:@"com.apple.homepodsettings.accessoryMoved"])
    {
      objc_opt_class();
      v37 = v6;
      if (objc_opt_isKindOfClass())
      {
        v38 = v37;
      }

      else
      {
        v38 = 0;
      }

      v39 = v38;

      v40 = &stru_28664DBD0;
      if (v39)
      {
        v40 = v39;
      }

      v27 = v40;

      v8 = [MEMORY[0x277CCAB98] defaultCenter];
      v28 = @"com.apple.homepodsettings.accessoryMoved";
      v60 = @"roomName";
      v61 = v27;
      v29 = MEMORY[0x277CBEAC0];
      v30 = &v61;
      v31 = &v60;
    }

    else if ([v5 isEqualToString:@"com.apple.homepodsettings.airplaySetPassword"])
    {
      objc_opt_class();
      v43 = v6;
      if (objc_opt_isKindOfClass())
      {
        v44 = v43;
      }

      else
      {
        v44 = 0;
      }

      v45 = v44;

      v46 = &stru_28664DBD0;
      if (v45)
      {
        v46 = v45;
      }

      v27 = v46;

      v8 = [MEMORY[0x277CCAB98] defaultCenter];
      v28 = @"com.apple.homepodsettings.airplaySetPassword";
      v58 = @"airplayPassword";
      v59 = v27;
      v29 = MEMORY[0x277CBEAC0];
      v30 = &v59;
      v31 = &v58;
    }

    else
    {
      if (![v5 isEqualToString:@"com.apple.homepodsettings.airplayMinUserPrivilege"])
      {
        if (![v5 isEqualToString:@"com.apple.homepodsettings.autoSUModified"])
        {
          goto LABEL_51;
        }

        v52 = [v6 BOOLValue];
        v8 = [MEMORY[0x277CCAB98] defaultCenter];
        v54 = @"OTAEnabled";
        v7 = [MEMORY[0x277CCABB0] numberWithBool:v52];
        v55 = v7;
        v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
        [v8 postNotificationName:@"com.apple.homepodsettings.autoSUModified" object:0 userInfo:v41];
        goto LABEL_34;
      }

      objc_opt_class();
      v47 = v6;
      if (objc_opt_isKindOfClass())
      {
        v48 = v47;
      }

      else
      {
        v48 = 0;
      }

      v49 = v48;

      v50 = &unk_2866561B0;
      if (v49)
      {
        v50 = v49;
      }

      v27 = v50;

      v8 = [MEMORY[0x277CCAB98] defaultCenter];
      v28 = @"com.apple.homepodsettings.airplayMinUserPrivilege";
      v56 = @"minimumMediaUserPrivilege";
      v57 = v27;
      v29 = MEMORY[0x277CBEAC0];
      v30 = &v57;
      v31 = &v56;
    }

    v7 = [v29 dictionaryWithObjects:v30 forKeys:v31 count:1];

    [v8 postNotificationName:v28 object:0 userInfo:v7];
    goto LABEL_50;
  }

  objc_opt_class();
  v16 = v6;
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v8 = v17;

  if (v8)
  {
    objc_opt_class();
    v18 = [v8 objectForKeyedSubscript:@"device_reset_method"];
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
    v21 = v20;
    v22 = &stru_28664DBD0;
    if (v20)
    {
      v22 = v20;
    }

    v7 = v22;
  }

  else
  {
    v7 = &stru_28664DBD0;
  }

  v41 = [MEMORY[0x277CCAB98] defaultCenter];
  v64 = @"device_reset_method";
  v65 = v7;
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
  [v41 postNotificationName:@"com.apple.homepodsettings.deviceReset" object:0 userInfo:v42];

LABEL_34:
LABEL_50:

LABEL_51:
  v51 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  v3 = [(HPSHomeInterface *)self hpsConnection];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = HPSHomeInterface;
  [(HPSHomeInterface *)&v4 dealloc];
}

- (HPSettingsConnectionInterfaceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __37__HPSHomeInterface_initWithDelegate___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(&dword_2542B7000, a1, a3, "%s Connection to HomePodSettings server was interrupted!", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __37__HPSHomeInterface_initWithDelegate___block_invoke_356_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(&dword_2542B7000, a1, a3, "%s Connection to HomePodSettings server was invalidated!", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __35__HPSHomeInterface_startConnection__block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_2542B7000, v2, v3, "%s Error..%@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)getHomeAccessoryAttribute:(uint64_t)a3 completion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(&dword_2542B7000, a1, a3, "%s Nil completion handler", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __57__HPSHomeInterface_getHomeAccessoryAttribute_completion___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_2542B7000, v2, v3, "%s Error..%@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)getAirPlaySettings:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(&dword_2542B7000, a1, a3, "%s Nil completion handler", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __39__HPSHomeInterface_getAirPlaySettings___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_2542B7000, v2, v3, "%s Error..%@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)getHomeKitCachedSettings:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(&dword_2542B7000, a1, a3, "%s Nil completion handler", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __45__HPSHomeInterface_getHomeKitCachedSettings___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_2542B7000, v2, v3, "%s Error..%@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)isHomeKitSyncComplete:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(&dword_2542B7000, a1, a3, "%s Nil completion handler", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __42__HPSHomeInterface_isHomeKitSyncComplete___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_2542B7000, v2, v3, "%s Error..%@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)isAutomaticSoftwareUpdateEnabled:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(&dword_2542B7000, a1, a3, "%s Nil completion handler", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __53__HPSHomeInterface_isAutomaticSoftwareUpdateEnabled___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_2542B7000, v2, v3, "%s Error..%@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)getCurrentHomeAttribute:(uint64_t)a3 completion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(&dword_2542B7000, a1, a3, "%s Nil completion handler", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __55__HPSHomeInterface_getCurrentHomeAttribute_completion___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 description];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_2542B7000, v2, v3, "%s Error..%@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_accessoryDidUpdateAttribute:(uint64_t)a3 withContext:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(&dword_2542B7000, a2, a3, "Error while unarchiving HPSHomeProxy object %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end