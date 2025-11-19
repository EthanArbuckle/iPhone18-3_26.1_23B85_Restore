@interface UARPControllerXPC
- (BOOL)addAccessory:(id)a3 assetID:(id)a4;
- (BOOL)changeAssetLocation:(id)a3 assetID:(id)a4;
- (BOOL)checkForUpdate:(id)a3;
- (BOOL)disableTRMSystemAuthenticationForRegistryEntryID:(id)a3;
- (BOOL)downloadAvailableFirmwareUpdate:(id)a3 assetID:(id)a4 withUserIntent:(BOOL)a5;
- (BOOL)downloadReleaseNotes:(id)a3 assetID:(id)a4;
- (BOOL)enableTRMSystemAuthenticationForRegistryEntryID:(id)a3;
- (BOOL)getAttestationCertificates:(id)a3 assetID:(id)a4;
- (BOOL)getSupportedAccessories:(id)a3 forProductGroup:(id)a4;
- (BOOL)performSynchronousProviderInvocation:(id)a3 accessory:(id)a4 requireKnown:(BOOL)a5 description:(const char *)a6;
- (BOOL)removeAccessory:(id)a3;
- (BOOL)requestConsent:(id)a3;
- (BOOL)revokeConsentRequest:(id)a3;
- (BOOL)updateProperty:(unint64_t)a3 value:(id)a4 forAccessory:(id)a5;
- (NSXPCConnection)xpcConnection;
- (UARPControllerXPC)initWithController:(id)a3;
- (id)getAssetIDForAccessoryID:(id)a3;
- (id)getAttestationCertificates:(id)a3;
- (id)getSandboxExtensionTokenForAssetID:(id)a3;
- (id)getSupplementalAssetNameForAccessoryID:(id)a3;
- (id)invocationForProviderSelector:(SEL)a3;
- (void)dealloc;
- (void)progressForUARPConsent:(id)a3 bytesSent:(unint64_t)a4 bytesTotal:(unint64_t)a5;
- (void)progressForUARPConsentInPostLogout:(id)a3 bytesSent:(unint64_t)a4 bytesTotal:(unint64_t)a5;
- (void)sendFirmwareUpdateProgressForAccessory:(id)a3 assetID:(id)a4 bytesSent:(unint64_t)a5 bytesTotal:(unint64_t)a6;
- (void)sendFirmwareUpdateProgressForUARPConsent:(id)a3 bytesSent:(unint64_t)a4 bytesTotal:(unint64_t)a5;
- (void)sendUpdateFirmwareAnalyticsEventForAccessoryID:(id)a3 assetID:(id)a4 params:(id)a5;
- (void)stagingCompleteForAccessoryID:(id)a3 assetID:(id)a4 status:(unint64_t)a5;
@end

@implementation UARPControllerXPC

- (UARPControllerXPC)initWithController:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = UARPControllerXPC;
  v5 = [(UARPControllerXPC *)&v16 init];
  if (v5)
  {
    objc_initWeak(&location, v5);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __40__UARPControllerXPC_initWithController___block_invoke;
    v13[3] = &unk_278EC25B8;
    objc_copyWeak(&v14, &location);
    v6 = MEMORY[0x24C1B3450](v13);
    providerErrorReply = v5->_providerErrorReply;
    v5->_providerErrorReply = v6;

    v8 = os_log_create("com.apple.accessoryupdater.uarp", "xpc");
    xpcLog = v5->_xpcLog;
    v5->_xpcLog = v8;

    objc_storeWeak(&v5->_controller, v4);
    v10 = dispatch_queue_create("uarpController.xpcConnection", 0);
    xpcConnectionQueue = v5->_xpcConnectionQueue;
    v5->_xpcConnectionQueue = v10;

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __40__UARPControllerXPC_initWithController___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 3, a2);
  }
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = UARPControllerXPC;
  [(UARPControllerXPC *)&v3 dealloc];
}

- (NSXPCConnection)xpcConnection
{
  xpcConnectionQueue = self->_xpcConnectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__UARPControllerXPC_xpcConnection__block_invoke;
  block[3] = &unk_278EC1948;
  block[4] = self;
  dispatch_sync(xpcConnectionQueue, block);
  return self->_xpcConnection;
}

void __34__UARPControllerXPC_xpcConnection__block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 8))
  {
    v2 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.accessoryupdater.uarp" options:4096];
    v3 = *(a1 + 32);
    v4 = *(v3 + 8);
    *(v3 + 8) = v2;

    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2859D97D8];
    [*(*(a1 + 32) + 8) setRemoteObjectInterface:v5];

    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
    v12 = [*(*(a1 + 32) + 8) remoteObjectInterface];
    [v12 setClasses:v11 forSelector:sel_getSupportedAccessories_reply_ argumentIndex:0 ofReply:1];

    [*(*(a1 + 32) + 8) resume];
    objc_initWeak(&location, *(a1 + 32));
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __34__UARPControllerXPC_xpcConnection__block_invoke_2;
    v15[3] = &unk_278EC13E8;
    objc_copyWeak(&v16, &location);
    [*(*(a1 + 32) + 8) setInterruptionHandler:v15];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __34__UARPControllerXPC_xpcConnection__block_invoke_2_115;
    v13[3] = &unk_278EC13E8;
    objc_copyWeak(&v14, &location);
    [*(*(a1 + 32) + 8) setInvalidationHandler:v13];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __34__UARPControllerXPC_xpcConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_247AA7000, v3, OS_LOG_TYPE_INFO, "Connection interrupted", buf, 2u);
    }

    v4 = v2[2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__UARPControllerXPC_xpcConnection__block_invoke_113;
    block[3] = &unk_278EC1948;
    v6 = v2;
    dispatch_async(v4, block);
  }
}

void __34__UARPControllerXPC_xpcConnection__block_invoke_113(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  *(v1 + 8) = 0;
}

void __34__UARPControllerXPC_xpcConnection__block_invoke_2_115(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_247AA7000, v3, OS_LOG_TYPE_INFO, "Connection invalidated", buf, 2u);
    }

    v4 = v2[2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__UARPControllerXPC_xpcConnection__block_invoke_116;
    block[3] = &unk_278EC1948;
    v6 = v2;
    dispatch_async(v4, block);
  }
}

void __34__UARPControllerXPC_xpcConnection__block_invoke_116(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  *(v1 + 8) = 0;
}

- (id)invocationForProviderSelector:(SEL)a3
{
  MethodDescription = protocol_getMethodDescription(&unk_2859D97D8, a3, 1, 1);
  if (MethodDescription.types)
  {
    v5 = [MEMORY[0x277CBEB08] signatureWithObjCTypes:MethodDescription.types];
    v6 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v5];
    [v6 setSelector:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)performSynchronousProviderInvocation:(id)a3 accessory:(id)a4 requireKnown:(BOOL)a5 description:(const char *)a6
{
  v7 = a5;
  v34 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (v10)
  {
    v27 = [v11 getID];
    [v10 setArgument:&v27 atIndex:2];
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    v14 = [WeakRetained accessoryKnown:v12];

    if (v14 == v7)
    {
      lastProviderError = self->_lastProviderError;
      self->_lastProviderError = 0;

      v18 = [(UARPControllerXPC *)self xpcConnection];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __93__UARPControllerXPC_performSynchronousProviderInvocation_accessory_requireKnown_description___block_invoke;
      v26[3] = &unk_278EC25E0;
      v26[4] = self;
      v19 = [v18 synchronousRemoteObjectProxyWithErrorHandler:v26];

      [v10 invokeWithTarget:v19];
      v20 = self->_lastProviderError;
      v16 = v20 == 0;
      if (v20)
      {
        xpcLog = self->_xpcLog;
        if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_ERROR))
        {
          v25 = self->_lastProviderError;
          *buf = 136446722;
          v29 = a6;
          v30 = 2114;
          v31 = v25;
          v32 = 2112;
          v33 = v12;
          _os_log_error_impl(&dword_247AA7000, xpcLog, OS_LOG_TYPE_ERROR, "%{public}s: %{public}@ (%@)", buf, 0x20u);
        }
      }
    }

    else
    {
      v15 = self->_xpcLog;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v24 = "known";
        *buf = 136446722;
        v29 = a6;
        if (v7)
        {
          v24 = "unknown";
        }

        v30 = 2082;
        v31 = v24;
        v32 = 2112;
        v33 = v12;
        _os_log_error_impl(&dword_247AA7000, v15, OS_LOG_TYPE_ERROR, "%{public}s: %{public}s accessory (%@)", buf, 0x20u);
      }

      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)addAccessory:(id)a3 assetID:(id)a4
{
  v6 = a4;
  v13 = v6;
  v7 = a3;
  v8 = [(UARPControllerXPC *)self invocationForProviderSelector:sel_addAccessoryID_assetID_sandboxExtensionToken_reply_];
  v12 = 0;
  if (v6 && ![v6 type])
  {
    v9 = [v6 remoteURL];
    v12 = [UARPSandboxExtension readWriteTokenStringWithURL:v9];
  }

  [v8 setArgument:&v13 atIndex:{3, v12}];
  [v8 setArgument:&v12 atIndex:4];
  [v8 setArgument:&self->_providerErrorReply atIndex:5];
  v10 = [(UARPControllerXPC *)self performSynchronousProviderInvocation:v8 accessory:v7 requireKnown:0 description:"Add accessory"];

  return v10;
}

- (BOOL)removeAccessory:(id)a3
{
  v4 = a3;
  v5 = [(UARPControllerXPC *)self invocationForProviderSelector:sel_removeAccessoryID_reply_];
  [v5 setArgument:&self->_providerErrorReply atIndex:3];
  LOBYTE(self) = [(UARPControllerXPC *)self performSynchronousProviderInvocation:v5 accessory:v4 requireKnown:1 description:"Remove accessory"];

  return self;
}

- (BOOL)changeAssetLocation:(id)a3 assetID:(id)a4
{
  v6 = a4;
  v13 = v6;
  v7 = a3;
  v8 = [(UARPControllerXPC *)self invocationForProviderSelector:sel_changeAssetLocation_assetID_sandboxExtensionToken_reply_];
  v12 = 0;
  if (v6 && ![v6 type])
  {
    v9 = [v6 remoteURL];
    v12 = [UARPSandboxExtension readWriteTokenStringWithURL:v9];
  }

  [v8 setArgument:&v13 atIndex:{3, v12}];
  [v8 setArgument:&v12 atIndex:4];
  [v8 setArgument:&self->_providerErrorReply atIndex:5];
  v10 = [(UARPControllerXPC *)self performSynchronousProviderInvocation:v8 accessory:v7 requireKnown:1 description:"Change asset location"];

  return v10;
}

- (BOOL)downloadAvailableFirmwareUpdate:(id)a3 assetID:(id)a4 withUserIntent:(BOOL)a5
{
  v12 = a4;
  v11 = a5;
  v8 = a3;
  v9 = [(UARPControllerXPC *)self invocationForProviderSelector:sel_downloadFirmwareForAccessoryID_assetID_userIntent_reply_];
  [v9 setArgument:&v12 atIndex:3];
  [v9 setArgument:&v11 atIndex:4];
  [v9 setArgument:&self->_providerErrorReply atIndex:5];
  LOBYTE(self) = [(UARPControllerXPC *)self performSynchronousProviderInvocation:v9 accessory:v8 requireKnown:1 description:"Download asset"];

  return self;
}

- (BOOL)downloadReleaseNotes:(id)a3 assetID:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(UARPControllerXPC *)self invocationForProviderSelector:sel_downloadReleaseNotesForAccessoryID_assetID_reply_];
  [v7 setArgument:&v9 atIndex:3];
  [v7 setArgument:&self->_providerErrorReply atIndex:4];
  LOBYTE(self) = [(UARPControllerXPC *)self performSynchronousProviderInvocation:v7 accessory:v6 requireKnown:1 description:"Download release notes"];

  return self;
}

- (void)sendFirmwareUpdateProgressForAccessory:(id)a3 assetID:(id)a4 bytesSent:(unint64_t)a5 bytesTotal:(unint64_t)a6
{
  v10 = a4;
  v11 = a3;
  v14 = [(UARPControllerXPC *)self xpcConnection];
  v12 = [v14 remoteObjectProxy];
  v13 = [v11 getID];

  [v12 firmwareUpdateProgressForAccessoryID:v13 assetID:v10 bytesSent:a5 bytesTotal:a6];
}

- (void)stagingCompleteForAccessoryID:(id)a3 assetID:(id)a4 status:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v11 = [(UARPControllerXPC *)self xpcConnection];
  v10 = [v11 remoteObjectProxy];
  [v10 stagingCompleteForAccessoryID:v9 assetID:v8 status:a5];
}

- (void)sendFirmwareUpdateProgressForUARPConsent:(id)a3 bytesSent:(unint64_t)a4 bytesTotal:(unint64_t)a5
{
  v8 = a3;
  v10 = [(UARPControllerXPC *)self xpcConnection];
  v9 = [v10 remoteObjectProxy];
  [v9 firmwareUpdateProgressForUARPConsent:v8 bytesSent:a4 bytesTotal:a5];
}

- (void)progressForUARPConsent:(id)a3 bytesSent:(unint64_t)a4 bytesTotal:(unint64_t)a5
{
  v8 = a3;
  v10 = [(UARPControllerXPC *)self xpcConnection];
  v9 = [v10 remoteObjectProxy];
  [v9 progressForUARPConsent:v8 bytesSent:a4 bytesTotal:a5];
}

- (void)progressForUARPConsentInPostLogout:(id)a3 bytesSent:(unint64_t)a4 bytesTotal:(unint64_t)a5
{
  v8 = a3;
  v10 = [(UARPControllerXPC *)self xpcConnection];
  v9 = [v10 remoteObjectProxy];
  [v9 progressForUARPConsentInPostLogout:v8 bytesSent:a4 bytesTotal:a5];
}

- (BOOL)checkForUpdate:(id)a3
{
  v4 = a3;
  v5 = [(UARPControllerXPC *)self invocationForProviderSelector:sel_checkForUpdate_reply_];
  [v5 setArgument:&self->_providerErrorReply atIndex:3];
  LOBYTE(self) = [(UARPControllerXPC *)self performSynchronousProviderInvocation:v5 accessory:v4 requireKnown:1 description:"Check for update"];

  return self;
}

void __74__UARPControllerXPC_personalizationVectorForAccessory_assetTag_outVector___block_invoke_2(uint64_t a1, void *a2, int a3)
{
  v6 = a2;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v6 = v7;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
  }
}

- (id)getAssetIDForAccessoryID:(id)a3
{
  v4 = a3;
  v17 = 0;
  v18[0] = &v17;
  v18[1] = 0x3032000000;
  v18[2] = __Block_byref_object_copy__3;
  v18[3] = __Block_byref_object_dispose__3;
  v19 = 0;
  v5 = [(UARPControllerXPC *)self xpcConnection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __46__UARPControllerXPC_getAssetIDForAccessoryID___block_invoke;
  v16[3] = &unk_278EC2608;
  v16[4] = &v17;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v16];

  if (*(v18[0] + 40))
  {
    if (os_log_type_enabled(self->_xpcLog, OS_LOG_TYPE_ERROR))
    {
      [UARPControllerXPC getAssetIDForAccessoryID:v18];
    }

    v7 = 0;
  }

  else
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__3;
    v14 = __Block_byref_object_dispose__3;
    v15 = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __46__UARPControllerXPC_getAssetIDForAccessoryID___block_invoke_136;
    v9[3] = &unk_278EC2658;
    v9[4] = &v10;
    [v6 getAssetIDForAccessoryID:v4 reply:v9];
    v7 = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  _Block_object_dispose(&v17, 8);

  return v7;
}

- (id)getSupplementalAssetNameForAccessoryID:(id)a3
{
  v4 = a3;
  v17 = 0;
  v18[0] = &v17;
  v18[1] = 0x3032000000;
  v18[2] = __Block_byref_object_copy__3;
  v18[3] = __Block_byref_object_dispose__3;
  v19 = 0;
  v5 = [(UARPControllerXPC *)self xpcConnection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __60__UARPControllerXPC_getSupplementalAssetNameForAccessoryID___block_invoke;
  v16[3] = &unk_278EC2608;
  v16[4] = &v17;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v16];

  if (*(v18[0] + 40))
  {
    if (os_log_type_enabled(self->_xpcLog, OS_LOG_TYPE_ERROR))
    {
      [UARPControllerXPC getSupplementalAssetNameForAccessoryID:v18];
    }

    v7 = 0;
  }

  else
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__3;
    v14 = __Block_byref_object_dispose__3;
    v15 = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __60__UARPControllerXPC_getSupplementalAssetNameForAccessoryID___block_invoke_138;
    v9[3] = &unk_278EC2680;
    v9[4] = &v10;
    [v6 getSupplementalAssetNameForAccessoryID:v4 reply:v9];
    v7 = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  _Block_object_dispose(&v17, 8);

  return v7;
}

- (void)sendUpdateFirmwareAnalyticsEventForAccessoryID:(id)a3 assetID:(id)a4 params:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  v12 = [WeakRetained accessoryIDKnown:v8];

  if (v12)
  {
    v13 = [(UARPControllerXPC *)self xpcConnection];
    v14 = [v13 remoteObjectProxy];
    [v14 sendUpdateFirmwareAnalyticsEventForAccessoryID:v8 assetID:v9 params:v10];
  }

  else if (os_log_type_enabled(self->_xpcLog, OS_LOG_TYPE_ERROR))
  {
    [UARPControllerXPC sendUpdateFirmwareAnalyticsEventForAccessoryID:assetID:params:];
  }
}

- (BOOL)updateProperty:(unint64_t)a3 value:(id)a4 forAccessory:(id)a5
{
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  v11 = [WeakRetained accessoryKnown:v9];

  if (v11)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__3;
    v23 = __Block_byref_object_dispose__3;
    v24 = 0;
    v12 = [(UARPControllerXPC *)self xpcConnection];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __55__UARPControllerXPC_updateProperty_value_forAccessory___block_invoke;
    v18[3] = &unk_278EC2608;
    v18[4] = &v19;
    v13 = [v12 synchronousRemoteObjectProxyWithErrorHandler:v18];

    v14 = [v9 getID];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __55__UARPControllerXPC_updateProperty_value_forAccessory___block_invoke_2;
    v17[3] = &unk_278EC2608;
    v17[4] = &v19;
    [v13 updateProperty:a3 value:v8 forAccessory:v14 reply:v17];

    v15 = v20[5] == 0;
    _Block_object_dispose(&v19, 8);
  }

  else
  {
    if (os_log_type_enabled(self->_xpcLog, OS_LOG_TYPE_ERROR))
    {
      [UARPControllerXPC updateProperty:value:forAccessory:];
    }

    v15 = 0;
  }

  return v15;
}

- (BOOL)getSupportedAccessories:(id)a3 forProductGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v26 = 0;
    v27[0] = &v26;
    v27[1] = 0x3032000000;
    v27[2] = __Block_byref_object_copy__3;
    v27[3] = __Block_byref_object_dispose__3;
    v28 = 0;
    v8 = [(UARPControllerXPC *)self xpcConnection];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __61__UARPControllerXPC_getSupportedAccessories_forProductGroup___block_invoke;
    v25[3] = &unk_278EC2608;
    v25[4] = &v26;
    v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v25];

    if (*(v27[0] + 40))
    {
      if (os_log_type_enabled(self->_xpcLog, OS_LOG_TYPE_ERROR))
      {
        [UARPControllerXPC getSupportedAccessories:v27 forProductGroup:?];
      }

      v10 = 0;
    }

    else
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x3032000000;
      v22 = __Block_byref_object_copy__3;
      v23 = __Block_byref_object_dispose__3;
      v24 = 0;
      v15 = 0;
      v16 = &v15;
      v17 = 0x2020000000;
      v18 = 1;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __61__UARPControllerXPC_getSupportedAccessories_forProductGroup___block_invoke_140;
      v14[3] = &unk_278EC26A8;
      v14[4] = &v19;
      v14[5] = &v15;
      [v9 getSupportedAccessories:v7 reply:v14];
      v12 = [v20[5] allObjects];
      [v6 addObjectsFromArray:v12];

      v10 = *(v16 + 24);
      _Block_object_dispose(&v15, 8);
      _Block_object_dispose(&v19, 8);
    }

    _Block_object_dispose(&v26, 8);
  }

  else
  {
    xpcLog = self->_xpcLog;
    if (os_log_type_enabled(xpcLog, OS_LOG_TYPE_ERROR))
    {
      [UARPControllerXPC getSupportedAccessories:? forProductGroup:?];
    }

    v10 = 0;
  }

  return v10 & 1;
}

void __61__UARPControllerXPC_getSupportedAccessories_forProductGroup___block_invoke_140(uint64_t a1, void *a2, char a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v6 = a2;
  *(*(*(a1 + 40) + 8) + 24) = a3;
}

- (id)getAttestationCertificates:(id)a3
{
  v4 = a3;
  v17 = 0;
  v18[0] = &v17;
  v18[1] = 0x3032000000;
  v18[2] = __Block_byref_object_copy__3;
  v18[3] = __Block_byref_object_dispose__3;
  v19 = 0;
  v5 = [(UARPControllerXPC *)self xpcConnection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48__UARPControllerXPC_getAttestationCertificates___block_invoke;
  v16[3] = &unk_278EC2608;
  v16[4] = &v17;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v16];

  if (*(v18[0] + 40))
  {
    if (os_log_type_enabled(self->_xpcLog, OS_LOG_TYPE_ERROR))
    {
      [UARPControllerXPC getAttestationCertificates:v18];
    }

    v7 = 0;
  }

  else
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__3;
    v14 = __Block_byref_object_dispose__3;
    v15 = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__UARPControllerXPC_getAttestationCertificates___block_invoke_142;
    v9[3] = &unk_278EC26D0;
    v9[4] = &v10;
    [v6 getAttestationCertificates:v4 reply:v9];
    v7 = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  _Block_object_dispose(&v17, 8);

  return v7;
}

- (BOOL)getAttestationCertificates:(id)a3 assetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  v8 = [(UARPControllerXPC *)self xpcConnection];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__UARPControllerXPC_getAttestationCertificates_assetID___block_invoke;
  v12[3] = &unk_278EC2608;
  v12[4] = &v13;
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v12];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__UARPControllerXPC_getAttestationCertificates_assetID___block_invoke_2;
  v11[3] = &unk_278EC2608;
  v11[4] = &v13;
  [v9 getAttestationCertificates:v6 assetID:v7 reply:v11];
  LOBYTE(v8) = v14[5] == 0;

  _Block_object_dispose(&v13, 8);
  return v8;
}

- (BOOL)requestConsent:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__3;
  v14 = __Block_byref_object_dispose__3;
  v15 = 0;
  v5 = [(UARPControllerXPC *)self xpcConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __36__UARPControllerXPC_requestConsent___block_invoke;
  v9[3] = &unk_278EC2608;
  v9[4] = &v10;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v9];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__UARPControllerXPC_requestConsent___block_invoke_2;
  v8[3] = &unk_278EC2608;
  v8[4] = &v10;
  [v6 requestConsent:v4 reply:v8];
  LOBYTE(v5) = v11[5] == 0;

  _Block_object_dispose(&v10, 8);
  return v5;
}

- (BOOL)revokeConsentRequest:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__3;
  v14 = __Block_byref_object_dispose__3;
  v15 = 0;
  v5 = [(UARPControllerXPC *)self xpcConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__UARPControllerXPC_revokeConsentRequest___block_invoke;
  v9[3] = &unk_278EC2608;
  v9[4] = &v10;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v9];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__UARPControllerXPC_revokeConsentRequest___block_invoke_2;
  v8[3] = &unk_278EC2608;
  v8[4] = &v10;
  [v6 revokeConsentRequest:v4 reply:v8];
  LOBYTE(v5) = v11[5] == 0;

  _Block_object_dispose(&v10, 8);
  return v5;
}

- (BOOL)enableTRMSystemAuthenticationForRegistryEntryID:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__3;
  v14 = __Block_byref_object_dispose__3;
  v15 = 0;
  v5 = [(UARPControllerXPC *)self xpcConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__UARPControllerXPC_enableTRMSystemAuthenticationForRegistryEntryID___block_invoke;
  v9[3] = &unk_278EC2608;
  v9[4] = &v10;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v9];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__UARPControllerXPC_enableTRMSystemAuthenticationForRegistryEntryID___block_invoke_2;
  v8[3] = &unk_278EC2608;
  v8[4] = &v10;
  [v6 enableTRMSystemAuthenticationForRegistryEntryID:v4 reply:v8];
  LOBYTE(v5) = v11[5] == 0;

  _Block_object_dispose(&v10, 8);
  return v5;
}

- (BOOL)disableTRMSystemAuthenticationForRegistryEntryID:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__3;
  v14 = __Block_byref_object_dispose__3;
  v15 = 0;
  v5 = [(UARPControllerXPC *)self xpcConnection];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__UARPControllerXPC_disableTRMSystemAuthenticationForRegistryEntryID___block_invoke;
  v9[3] = &unk_278EC2608;
  v9[4] = &v10;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v9];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__UARPControllerXPC_disableTRMSystemAuthenticationForRegistryEntryID___block_invoke_2;
  v8[3] = &unk_278EC2608;
  v8[4] = &v10;
  [v6 disableTRMSystemAuthenticationForRegistryEntryID:v4 reply:v8];
  LOBYTE(v5) = v11[5] == 0;

  _Block_object_dispose(&v10, 8);
  return v5;
}

- (id)getSandboxExtensionTokenForAssetID:(id)a3
{
  v4 = a3;
  v17 = 0;
  v18[0] = &v17;
  v18[1] = 0x3032000000;
  v18[2] = __Block_byref_object_copy__3;
  v18[3] = __Block_byref_object_dispose__3;
  v19 = 0;
  v5 = [(UARPControllerXPC *)self xpcConnection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __56__UARPControllerXPC_getSandboxExtensionTokenForAssetID___block_invoke;
  v16[3] = &unk_278EC2608;
  v16[4] = &v17;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v16];

  if (*(v18[0] + 40))
  {
    if (os_log_type_enabled(self->_xpcLog, OS_LOG_TYPE_ERROR))
    {
      [UARPControllerXPC getSandboxExtensionTokenForAssetID:v18];
    }

    v7 = 0;
  }

  else
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__3;
    v14 = __Block_byref_object_dispose__3;
    v15 = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __56__UARPControllerXPC_getSandboxExtensionTokenForAssetID___block_invoke_144;
    v9[3] = &unk_278EC2680;
    v9[4] = &v10;
    [v6 getSandboxExtensionTokenForAssetID:v4 reply:v9];
    v7 = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  _Block_object_dispose(&v17, 8);

  return v7;
}

- (void)personalizationVectorForAccessory:assetTag:outVector:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_2(&dword_247AA7000, v0, v1, "%s: unknown accessory (%@)", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getAssetIDForAccessoryID:(uint64_t)a1 .cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_2_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_3_2(&dword_247AA7000, v1, v2, "%s: Failed to create proxy (%@)", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)getSupplementalAssetNameForAccessoryID:(uint64_t)a1 .cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_2_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_3_2(&dword_247AA7000, v1, v2, "%s: Failed to create proxy (%@)", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)manifestPropertiesReceivedForAccessory:assetTag:properties:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_2(&dword_247AA7000, v0, v1, "%s: unknown accessory (%@)", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)sendUpdateFirmwareAnalyticsEventForAccessoryID:assetID:params:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_2(&dword_247AA7000, v0, v1, "%s: unknown accessory ID (%@)", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateProperty:value:forAccessory:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_2(&dword_247AA7000, v0, v1, "%s: unknown accessory (%@)", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)getSupportedAccessories:(uint64_t)a1 forProductGroup:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_2_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_3_2(&dword_247AA7000, v1, v2, "%s: Failed to create proxy (%@)", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)getSupportedAccessories:(os_log_t)log forProductGroup:.cold.2(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[UARPControllerXPC getSupportedAccessories:forProductGroup:]";
  _os_log_error_impl(&dword_247AA7000, log, OS_LOG_TYPE_ERROR, "%s: Caller provided nil parameter set", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)getAttestationCertificates:(uint64_t)a1 .cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_2_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_3_2(&dword_247AA7000, v1, v2, "%s: Failed to create proxy (%@)", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)getSandboxExtensionTokenForAssetID:(uint64_t)a1 .cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_2_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_3_2(&dword_247AA7000, v1, v2, "%s: Failed to create proxy (%@)", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

@end