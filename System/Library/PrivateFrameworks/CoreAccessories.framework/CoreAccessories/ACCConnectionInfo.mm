@interface ACCConnectionInfo
+ (id)sharedInstance;
- (ACCConnectionInfo)init;
- (ACCConnectionInfoConfigStreamDelegateProtocol)configStreamDelegate;
- (ACCConnectionInfoPrivateDelegateProtocol)delegate;
- (ACCConnectionInfoPrivateDelegateProtocol)delegateForIdentifier;
- (BOOL)accessoryConnectionFiltered:(id)a3 withFilter:(id)a4;
- (BOOL)accessoryEndpointFiltered:(id)a3 withFilter:(id)a4 forConnection:(id)a5;
- (BOOL)configStreamCategoriesRequest:(id)a3 connection:(id)a4 withReply:(id)a5;
- (BOOL)registerDelegate:(id)a3;
- (BOOL)registerDelegate:(id)a3 withFilter:(id)a4;
- (BOOL)registerDelegate:(id)a3 withIdentifier:(id)a4;
- (id)accessoryInfoForConnectionSync:(id)a3;
- (id)accessoryInfoForEndpointSync:(id)a3 connection:(id)a4;
- (id)accessoryPropertySync:(id)a3 forConnection:(id)a4;
- (id)accessoryPropertySync:(id)a3 forEndpoint:(id)a4 connection:(id)a5;
- (id)copyLocalizedAccessoryNameFromDaemon:(id)a3;
- (int)accessoryConnectionType:(id)a3;
- (int)accessoryEndpointProtocolType:(id)a3 connection:(id)a4;
- (int)accessoryEndpointTransportType:(id)a3 connection:(id)a4;
- (int)getInterceptCountForEndpoint:(id)a3 connection:(id)a4;
- (void)accessoryConnectionDetached:(id)a3;
- (void)accessoryConnectionInfoPropertyChanged:(id)a3 properties:(id)a4;
- (void)accessoryEndpointAttached:(id)a3 transportType:(int)a4 protocol:(int)a5 properties:(id)a6 forConnection:(id)a7;
- (void)accessoryEndpointDetached:(id)a3 forConnection:(id)a4;
- (void)accessoryEndpointInfoPropertyChanged:(id)a3 properties:(id)a4 forConnection:(id)a5;
- (void)accessoryEndpointsForConnection:(id)a3 withReply:(id)a4;
- (void)accessoryInfoForConnection:(id)a3 withReply:(id)a4;
- (void)accessoryInfoForEndpoint:(id)a3 connection:(id)a4 withReply:(id)a5;
- (void)accessoryProperty:(id)a3 forConnection:(id)a4 withReply:(id)a5;
- (void)accessoryProperty:(id)a3 forEndpoint:(id)a4 connection:(id)a5 withReply:(id)a6;
- (void)beginUserKeyErase:(id)a3 withReply:(id)a4;
- (void)beginVendorKeyErase:(id)a3 withReply:(id)a4;
- (void)cancelUserKeyErase:(id)a3 withReply:(id)a4;
- (void)cancelVendorKeyErase:(id)a3 withReply:(id)a4;
- (void)configStreamCategoryListReady:(id)a3 connection:(id)a4;
- (void)connectToServer;
- (void)continueUserKeyErase:(id)a3 withSignature:(id)a4 andAccessoryNonce:(id)a5 forEndpoint:(id)a6 withReply:(id)a7;
- (void)continueVendorKeyErase:(id)a3 withSignature:(id)a4 andAccessoryNonce:(id)a5 forEndpoint:(id)a6 withReply:(id)a7;
- (void)copyUserPrivateKey:(id)a3 withReply:(id)a4;
- (void)dealloc;
- (void)getAccessoryUserName:(id)a3 withReply:(id)a4;
- (void)getPairingStatus:(id)a3 withReply:(id)a4;
- (void)getPrivateNVMKeyValues:(id)a3 forEndpoint:(id)a4 withReply:(id)a5;
- (void)getPublicNVMKeyValues:(id)a3 forEndpoint:(id)a4 withReply:(id)a5;
- (void)handleInterceptData:(id)a3 forEndpoint:(id)a4 connection:(id)a5;
- (void)notifyDelegateOfServerDisconnectAndCleanup;
- (void)provisionAccessoryForFindMy:(id)a3 withReply:(id)a4;
- (void)resetPairingInformation:(id)a3 withReply:(id)a4;
- (void)sendData:(id)a3 forEndpoint:(id)a4 connection:(id)a5;
- (void)setAccessoryUserName:(id)a3 forEndpoint:(id)a4 withReply:(id)a5;
- (void)setPrivateNVMKeyValues:(id)a3 forEndpoint:(id)a4 withReply:(id)a5;
- (void)setPublicNVMKeyValues:(id)a3 forEndpoint:(id)a4 withReply:(id)a5;
@end

@implementation ACCConnectionInfo

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[ACCConnectionInfo sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

uint64_t __35__ACCConnectionInfo_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance = objc_alloc_init(ACCConnectionInfo);

  return MEMORY[0x2821F96F8]();
}

- (ACCConnectionInfo)init
{
  v27 = *MEMORY[0x277D85DE8];
  init_logging();
  v24.receiver = self;
  v24.super_class = ACCConnectionInfo;
  v3 = [(ACCConnectionInfo *)&v24 init];
  if (v3)
  {
    v4 = [MEMORY[0x277CCAD78] UUID];
    v5 = [v4 UUIDString];
    providerUID = v3->_providerUID;
    v3->_providerUID = v5;

    objc_storeWeak(&v3->_delegate, 0);
    objc_storeWeak(&v3->_delegateForIdentifier, 0);
    objc_storeWeak(&v3->_configStreamDelegate, 0);
    accessoryFilterDictionary = v3->_accessoryFilterDictionary;
    v3->_accessoryFilterDictionary = 0;

    identifier = v3->_identifier;
    v3->_identifier = 0;

    v9 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    listLock = v3->_listLock;
    v3->_listLock = v9;

    v11 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    serverConnectionLock = v3->_serverConnectionLock;
    v3->_serverConnectionLock = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    connectionList = v3->_connectionList;
    v3->_connectionList = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    endpointList = v3->_endpointList;
    v3->_endpointList = v15;

    if (gLogObjects && gNumLogObjects >= 8)
    {
      v17 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v17 = MEMORY[0x277D86220];
      v18 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v3->_providerUID;
      *buf = 138412290;
      v26 = v19;
      _os_log_impl(&dword_221CB0000, v17, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo init, _providerUID=%@", buf, 0xCu);
    }

    objc_initWeak(buf, v3);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __25__ACCConnectionInfo_init__block_invoke;
    v22[3] = &unk_278486228;
    objc_copyWeak(&v23, buf);
    accessoryServer_registerAvailabilityChangedHandlerForServiceEntry("com.apple.accessories.connection-info-server.availability-changed", v22, 1u);
    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v3;
}

void __25__ACCConnectionInfo_init__block_invoke(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 8;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v20[0] = 67109120;
    v20[1] = a2;
    _os_log_impl(&dword_221CB0000, v6, OS_LOG_TYPE_DEFAULT, "Server availability changed! State: %d", v20, 8u);
  }

  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = [WeakRetained serverConnectionLock];
    [v8 lock];

    v9 = objc_loadWeakRetained((a1 + 32));
    v10 = [v9 delegate];

    if (gLogObjects)
    {
      v11 = gNumLogObjects <= 7;
    }

    else
    {
      v11 = 1;
    }

    v12 = !v11;
    if (v10)
    {
      if (v12)
      {
        v13 = *(gLogObjects + 56);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportPlugin initWithDelegate:];
        }

        v13 = MEMORY[0x277D86220];
        v15 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20[0]) = 0;
        _os_log_impl(&dword_221CB0000, v13, OS_LOG_TYPE_DEFAULT, "Trying to connect to server...", v20, 2u);
      }

      v14 = objc_loadWeakRetained((a1 + 32));
      [v14 connectToServer];
    }

    else
    {
      if (v12)
      {
        v14 = *(gLogObjects + 56);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportPlugin initWithDelegate:];
        }

        v14 = MEMORY[0x277D86220];
        v16 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20[0]) = 0;
        _os_log_impl(&dword_221CB0000, v14, OS_LOG_TYPE_DEFAULT, "No delegate, will not connect to server...", v20, 2u);
      }
    }

    v17 = objc_loadWeakRetained((a1 + 32));
    v18 = [v17 serverConnectionLock];
    [v18 unlock];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_221CB0000, v5, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo dealloc", buf, 2u);
  }

  accessoryServer_unregisterAvailabilityChangedHandlerForServiceEntry(1);
  v6 = [(ACCConnectionInfo *)self serverConnection];
  [v6 invalidate];

  connectionList = self->_connectionList;
  self->_connectionList = 0;

  endpointList = self->_endpointList;
  self->_endpointList = 0;

  objc_storeWeak(&self->_delegateForIdentifier, 0);
  objc_storeWeak(&self->_delegate, 0);
  objc_storeWeak(&self->_configStreamDelegate, 0);
  listLock = self->_listLock;
  self->_listLock = 0;

  accessoryFilterDictionary = self->_accessoryFilterDictionary;
  self->_accessoryFilterDictionary = 0;

  v11.receiver = self;
  v11.super_class = ACCConnectionInfo;
  [(ACCConnectionInfo *)&v11 dealloc];
}

- (id)copyLocalizedAccessoryNameFromDaemon:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21 = 0;
  v22[0] = &v21;
  v22[1] = 0x3032000000;
  v22[2] = __Block_byref_object_copy_;
  v22[3] = __Block_byref_object_dispose_;
  v23 = 0;
  [(ACCConnectionInfo *)self connectToServer];
  v5 = [(ACCConnectionInfo *)self serverConnection];
  if (!v5 || ([(ACCConnectionInfo *)self remoteObject], v6 = objc_claimAutoreleasedReturnValue(), v7 = v6 == 0, v6, v5, v7))
  {
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v10 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v10 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ACCConnectionInfo *)v4 copyLocalizedAccessoryNameFromDaemon:v22];
    }
  }

  else
  {
    v8 = [(ACCConnectionInfo *)self serverConnection];
    v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_20];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_21;
    v18[3] = &unk_278486270;
    v19 = v4;
    v20 = &v21;
    [v9 copyLocalizedAccessoryName:v19 withReply:v18];

    v10 = v19;
  }

  if (gLogObjects && gNumLogObjects >= 8)
  {
    v12 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v12 = MEMORY[0x277D86220];
    v13 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(v22[0] + 40);
    *buf = 138412546;
    v25 = v4;
    v26 = 2112;
    v27 = v14;
    _os_log_impl(&dword_221CB0000, v12, OS_LOG_TYPE_DEFAULT, "from daemon, localize: name: %@ -> %@", buf, 0x16u);
  }

  v15 = *(v22[0] + 40);
  _Block_object_dispose(&v21, 8);

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

void __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

void __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_21(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 8;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v11 = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_221CB0000, v6, OS_LOG_TYPE_INFO, "copyLocalizedAccessoryName got response: %@ -> %@", &v11, 0x16u);
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v3;

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)registerDelegate:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 8;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v24 = 138412546;
    v25 = WeakRetained;
    v26 = 2112;
    v27 = v4;
    _os_log_impl(&dword_221CB0000, v7, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo registerDelegate %@ -> %@", &v24, 0x16u);
  }

  [(NSLock *)self->_serverConnectionLock lock];
  objc_storeWeak(&self->_delegate, v4);
  if (objc_opt_respondsToSelector())
  {
    objc_storeWeak(&self->_configStreamDelegate, v4);
  }

  v9 = objc_loadWeakRetained(&self->_delegate);

  if (v9)
  {
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v10 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v10 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_221CB0000, v10, OS_LOG_TYPE_DEFAULT, "Delegate set, trying to connect to server...", &v24, 2u);
    }

    v14 = [(ACCConnectionInfo *)self serverConnection];
    if (v14 && (v15 = v14, [(ACCConnectionInfo *)self remoteObject], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v16))
    {
      v17 = [MEMORY[0x277CCA8D8] mainBundle];
      v18 = [v17 bundleIdentifier];

      v19 = [(ACCConnectionInfo *)self serverConnection];
      v20 = [v19 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_27];
      [v20 notifyOfClient:self->_providerUID bundleID:v18 withFilter:self->_accessoryFilterDictionary];
    }

    else
    {
      [(ACCConnectionInfo *)self connectToServer];
    }
  }

  else
  {
    v11 = [(ACCConnectionInfo *)self serverConnection];

    if (v11)
    {
      if (gLogObjects && gNumLogObjects >= 8)
      {
        v12 = *(gLogObjects + 56);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportPlugin initWithDelegate:];
        }

        v12 = MEMORY[0x277D86220];
        v21 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&dword_221CB0000, v12, OS_LOG_TYPE_DEFAULT, "Delegate unset...", &v24, 2u);
      }
    }
  }

  [(NSLock *)self->_serverConnectionLock unlock];

  v22 = *MEMORY[0x277D85DE8];
  return 1;
}

void __38__ACCConnectionInfo_registerDelegate___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (BOOL)registerDelegate:(id)a3 withIdentifier:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 8;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegateForIdentifier);
    v27 = 138412802;
    v28 = WeakRetained;
    v29 = 2112;
    v30 = v6;
    v31 = 2112;
    v32 = v7;
    _os_log_impl(&dword_221CB0000, v10, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo registerDelegate %@ -> %@ withIdentifier %@", &v27, 0x20u);
  }

  if (v7)
  {
    [(NSLock *)self->_serverConnectionLock lock];
    objc_storeWeak(&self->_delegateForIdentifier, v6);
    objc_storeStrong(&self->_identifier, a4);
    v12 = objc_loadWeakRetained(&self->_delegateForIdentifier);

    if (v12)
    {
      if (gLogObjects && gNumLogObjects >= 8)
      {
        v13 = *(gLogObjects + 56);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportPlugin initWithDelegate:];
        }

        v13 = MEMORY[0x277D86220];
        v16 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_221CB0000, v13, OS_LOG_TYPE_DEFAULT, "Delegate set, trying to connect to server...", &v27, 2u);
      }

      v17 = [(ACCConnectionInfo *)self serverConnection];
      if (v17 && (v18 = v17, [(ACCConnectionInfo *)self remoteObject], v19 = objc_claimAutoreleasedReturnValue(), v19, v18, v19))
      {
        v20 = [MEMORY[0x277CCA8D8] mainBundle];
        v21 = [v20 bundleIdentifier];

        v22 = [(ACCConnectionInfo *)self serverConnection];
        v23 = [v22 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_29];
        [v23 notifyOfClient:self->_providerUID bundleID:v21 withFilter:0 forIdentifier:v7];
      }

      else
      {
        [(ACCConnectionInfo *)self connectToServer];
      }
    }

    else
    {
      v14 = [(ACCConnectionInfo *)self serverConnection];

      if (v14)
      {
        if (gLogObjects && gNumLogObjects >= 8)
        {
          v15 = *(gLogObjects + 56);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCTransportPlugin initWithDelegate:];
          }

          v15 = MEMORY[0x277D86220];
          v24 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v27) = 0;
          _os_log_impl(&dword_221CB0000, v15, OS_LOG_TYPE_DEFAULT, "Delegate unset...", &v27, 2u);
        }
      }
    }

    [(NSLock *)self->_serverConnectionLock unlock];
  }

  v25 = *MEMORY[0x277D85DE8];
  return v7 != 0;
}

void __53__ACCConnectionInfo_registerDelegate_withIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (BOOL)registerDelegate:(id)a3 withFilter:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 8;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    accessoryFilterDictionary = self->_accessoryFilterDictionary;
    v28 = 138413058;
    v29 = WeakRetained;
    v30 = 2112;
    v31 = v6;
    v32 = 2112;
    v33 = accessoryFilterDictionary;
    v34 = 2112;
    v35 = v7;
    _os_log_impl(&dword_221CB0000, v10, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo registerDelegate %@ -> %@, withFilter %@ -> %@", &v28, 0x2Au);
  }

  [(NSLock *)self->_serverConnectionLock lock];
  objc_storeWeak(&self->_delegate, v6);
  if (objc_opt_respondsToSelector())
  {
    objc_storeWeak(&self->_configStreamDelegate, v6);
  }

  objc_storeStrong(&self->_accessoryFilterDictionary, a4);
  v13 = objc_loadWeakRetained(&self->_delegate);

  if (v13)
  {
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v14 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v14 = MEMORY[0x277D86220];
      v17 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&dword_221CB0000, v14, OS_LOG_TYPE_DEFAULT, "Delegate and Filter set, trying to connect to server...", &v28, 2u);
    }

    v18 = [(ACCConnectionInfo *)self serverConnection];
    if (v18 && (v19 = v18, [(ACCConnectionInfo *)self remoteObject], v20 = objc_claimAutoreleasedReturnValue(), v20, v19, v20))
    {
      v21 = [MEMORY[0x277CCA8D8] mainBundle];
      v22 = [v21 bundleIdentifier];

      v23 = [(ACCConnectionInfo *)self serverConnection];
      v24 = [v23 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_31];
      [v24 notifyOfClient:self->_providerUID bundleID:v22 withFilter:self->_accessoryFilterDictionary];
    }

    else
    {
      [(ACCConnectionInfo *)self connectToServer];
    }
  }

  else
  {
    v15 = [(ACCConnectionInfo *)self serverConnection];

    if (v15)
    {
      if (gLogObjects && gNumLogObjects >= 8)
      {
        v16 = *(gLogObjects + 56);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportPlugin initWithDelegate:];
        }

        v16 = MEMORY[0x277D86220];
        v25 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v28) = 0;
        _os_log_impl(&dword_221CB0000, v16, OS_LOG_TYPE_DEFAULT, "Delegate unset...", &v28, 2u);
      }
    }
  }

  [(NSLock *)self->_serverConnectionLock unlock];

  v26 = *MEMORY[0x277D85DE8];
  return 1;
}

void __49__ACCConnectionInfo_registerDelegate_withFilter___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)notifyDelegateOfServerDisconnectAndCleanup
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 24));
  OUTLINED_FUNCTION_2();
  v8 = 2112;
  v9 = a2;
  _os_log_debug_impl(&dword_221CB0000, a3, OS_LOG_TYPE_DEBUG, "notifyDelegateOfServerDisconnectAndCleanup _delegate=%@ tmpConnectionList=%@", v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)connectToServer
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  if (accessoryServer_isServerAvailableForServiceEntry(1u))
  {
    v3 = [(ACCConnectionInfo *)v2 serverConnection];

    if (!v3)
    {
      if (gLogObjects && gNumLogObjects >= 8)
      {
        v4 = *(gLogObjects + 56);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportPlugin initWithDelegate:];
        }

        v4 = MEMORY[0x277D86220];
        v5 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_221CB0000, v4, OS_LOG_TYPE_DEFAULT, "Connecting to ConnectionInfo XPC server...", buf, 2u);
      }

      v6 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.accessories.connection-info-server" options:4096];
      [(ACCConnectionInfo *)v2 setServerConnection:v6];

      v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2835374A0];
      v8 = [(ACCConnectionInfo *)v2 serverConnection];
      [v8 setRemoteObjectInterface:v7];

      v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283537500];
      v10 = [(ACCConnectionInfo *)v2 serverConnection];
      [v10 setExportedInterface:v9];

      v11 = [(ACCConnectionInfo *)v2 serverConnection];
      [v11 setExportedObject:v2];

      objc_initWeak(buf, v2);
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __36__ACCConnectionInfo_connectToServer__block_invoke;
      v48[3] = &unk_278486298;
      objc_copyWeak(&v49, buf);
      v12 = [(ACCConnectionInfo *)v2 serverConnection];
      [v12 setInvalidationHandler:v48];

      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __36__ACCConnectionInfo_connectToServer__block_invoke_173;
      v46[3] = &unk_278486298;
      objc_copyWeak(&v47, buf);
      v13 = [(ACCConnectionInfo *)v2 serverConnection];
      [v13 setInterruptionHandler:v46];

      if (gLogObjects && gNumLogObjects >= 8)
      {
        v14 = *(gLogObjects + 56);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportPlugin initWithDelegate:];
        }

        v14 = MEMORY[0x277D86220];
        v15 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v45 = 0;
        _os_log_impl(&dword_221CB0000, v14, OS_LOG_TYPE_DEFAULT, "resuming ConnectionInfo XPC connection", v45, 2u);
      }

      v16 = [(ACCConnectionInfo *)v2 serverConnection];
      [v16 resume];

      objc_destroyWeak(&v47);
      objc_destroyWeak(&v49);
      objc_destroyWeak(buf);
    }
  }

  if (gLogObjects)
  {
    v17 = gNumLogObjects < 8;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v19 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
  }

  else
  {
    v19 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [(ACCConnectionInfo *)v2 remoteObject];
    *buf = 138412290;
    v51 = v20;
    _os_log_impl(&dword_221CB0000, v19, OS_LOG_TYPE_DEFAULT, "self.remoteObject = %@", buf, 0xCu);
  }

  v21 = [(ACCConnectionInfo *)v2 remoteObject];
  v22 = v21 == 0;

  if (v22)
  {
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v23 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v23 = MEMORY[0x277D86220];
      v24 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221CB0000, v23, OS_LOG_TYPE_DEFAULT, "Getting remote object...", buf, 2u);
    }

    v25 = [(ACCConnectionInfo *)v2 serverConnection];
    v26 = [v25 remoteObjectProxyWithErrorHandler:&__block_literal_global_176];
    [(ACCConnectionInfo *)v2 setRemoteObject:v26];

    if (gLogObjects && gNumLogObjects >= 8)
    {
      v27 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v27 = MEMORY[0x277D86220];
      v28 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221CB0000, v27, OS_LOG_TYPE_DEFAULT, "Registering with remote service...", buf, 2u);
    }

    v29 = [(ACCConnectionInfo *)v2 serverConnection];
    if (!v29 || ([(ACCConnectionInfo *)v2 remoteObject], v30 = objc_claimAutoreleasedReturnValue(), v31 = v30 == 0, v30, v29, v31))
    {
      if (gLogObjects && gNumLogObjects >= 8)
      {
        v33 = *(gLogObjects + 56);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportPlugin initWithDelegate:];
        }

        v33 = MEMORY[0x277D86220];
        v42 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_221CB0000, v33, OS_LOG_TYPE_DEFAULT, "Skip registering with remote service... No serverConnection or remoteObject!", buf, 2u);
      }
    }

    else
    {
      v32 = [MEMORY[0x277CCA8D8] mainBundle];
      v33 = [v32 bundleIdentifier];

      WeakRetained = objc_loadWeakRetained(&v2->_delegate);
      if (WeakRetained)
      {
        v35 = [(ACCConnectionInfo *)v2 serverConnection];
        v36 = [v35 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_179];
        [v36 notifyOfClient:v2->_providerUID bundleID:v33 withFilter:v2->_accessoryFilterDictionary];
      }

      v37 = objc_loadWeakRetained(&v2->_delegateForIdentifier);
      if (v37)
      {
        v38 = v2->_identifier == 0;

        if (!v38)
        {
          v39 = [(ACCConnectionInfo *)v2 serverConnection];
          v40 = [v39 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_182];
          [v40 notifyOfClient:v2->_providerUID bundleID:v33 withFilter:0 forIdentifier:v2->_identifier];
        }
      }

      if (gLogObjects && gNumLogObjects >= 8)
      {
        v41 = *(gLogObjects + 56);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCTransportPlugin initWithDelegate:];
        }

        v41 = MEMORY[0x277D86220];
        v43 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_221CB0000, v41, OS_LOG_TYPE_DEFAULT, "Registering with remote service... done!", buf, 2u);
      }
    }
  }

  objc_sync_exit(v2);

  v44 = *MEMORY[0x277D85DE8];
}

void __36__ACCConnectionInfo_connectToServer__block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 8;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_221CB0000, v4, OS_LOG_TYPE_DEFAULT, "ConnectionInfo XPC begin invalidation handler!", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained serverConnection];
  [v6 setInvalidationHandler:0];

  v7 = objc_loadWeakRetained((a1 + 32));
  [v7 setRemoteObject:0];

  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 setServerConnection:0];

  accessoryServer_serverIsUnreachableForServiceEntry(1);
  if (gLogObjects && gNumLogObjects >= 8)
  {
    v9 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_221CB0000, v9, OS_LOG_TYPE_DEFAULT, "ConnectionInfo XPC connection invalidated!", v12, 2u);
  }

  v11 = objc_loadWeakRetained((a1 + 32));
  [v11 notifyDelegateOfServerDisconnectAndCleanup];
}

void __36__ACCConnectionInfo_connectToServer__block_invoke_173(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 8;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_221CB0000, v4, OS_LOG_TYPE_DEFAULT, "ConnectionInfo XPC connection interrupted!", v10, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained serverConnection];
  [v6 invalidate];

  v7 = objc_loadWeakRetained((a1 + 32));
  [v7 setServerConnection:0];

  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 setRemoteObject:0];

  v9 = objc_loadWeakRetained((a1 + 32));
  [v9 notifyDelegateOfServerDisconnectAndCleanup];
}

void __36__ACCConnectionInfo_connectToServer__block_invoke_174(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

void __36__ACCConnectionInfo_connectToServer__block_invoke_177(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

void __36__ACCConnectionInfo_connectToServer__block_invoke_180(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (BOOL)accessoryConnectionFiltered:(id)a3 withFilter:(id)a4
{
  v6 = ACCConnectionInfoFilterAllowConnectionType;
  v7 = a3;
  v8 = [a4 objectForKey:v6];
  v9 = [v8 unsignedIntValue];
  v10 = [(ACCConnectionInfo *)self accessoryConnectionType:v7];

  v11 = v8 && ((v9 >> v10) & 1) == 0;
  return v11;
}

- (BOOL)accessoryEndpointFiltered:(id)a3 withFilter:(id)a4 forConnection:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = ACCConnectionInfoFilterAllowEndpointTransport;
  v11 = a4;
  v12 = [v11 objectForKey:v10];
  v13 = [v11 objectForKey:ACCConnectionInfoFilterAllowEndpointProtocol];

  if (v12 | v13)
  {
    v14 = [v12 unsignedIntValue];
    v15 = [v13 unsignedIntValue];
    v16 = [(ACCConnectionInfo *)self accessoryEndpointTransportType:v8 connection:v9];
    v17 = [(ACCConnectionInfo *)self accessoryEndpointProtocolType:v8 connection:v9];
    v19 = v12 && ((v14 >> v16) & 1) == 0 || ((1 << v17) & v15) == 0 && v13 != 0;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)accessoryConnectionDetached:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_accessoryFilterDictionary)
  {
    v5 = [(ACCConnectionInfo *)self accessoryConnectionFiltered:v4 withFilter:?];
  }

  else
  {
    v5 = 0;
  }

  [(NSLock *)self->_listLock lock];
  v6 = [(NSMutableDictionary *)self->_connectionList objectForKey:v4];
  v23 = v6;
  if (v6)
  {
    [v6 objectForKey:@"endpointList"];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v7 = v31 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v29;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(NSMutableDictionary *)self->_endpointList removeObjectForKey:*(*(&v28 + 1) + 8 * i)];
        }

        v9 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v7 = 0;
  }

  [(NSMutableDictionary *)self->_connectionList removeObjectForKey:v4];
  [(NSLock *)self->_listLock unlock];
  v12 = 1;
  do
  {
    v13 = v12;
    if (v12)
    {
      v14 = 24;
    }

    else
    {
      v14 = 32;
    }

    WeakRetained = objc_loadWeakRetained((&self->super.isa + v14));
    if (WeakRetained && !(v13 & v5))
    {
      if (objc_opt_respondsToSelector())
      {
        v16 = v5;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v17 = v7;
        v18 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v25;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v25 != v20)
              {
                objc_enumerationMutation(v17);
              }

              [WeakRetained accessoryEndpointDetached:*(*(&v24 + 1) + 8 * j) forConnection:v4];
            }

            v19 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v19);
        }

        v5 = v16;
      }

      if (objc_opt_respondsToSelector())
      {
        [WeakRetained accessoryConnectionDetached:v4];
      }
    }

    v12 = 0;
  }

  while ((v13 & 1) != 0);

  v22 = *MEMORY[0x277D85DE8];
}

- (void)accessoryEndpointAttached:(id)a3 transportType:(int)a4 protocol:(int)a5 properties:(id)a6 forConnection:(id)a7
{
  v38 = a3;
  v35 = a6;
  v10 = a7;
  [(NSLock *)self->_listLock lock];
  v11 = [(NSMutableDictionary *)self->_connectionList objectForKey:v10];
  if (!v11)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(NSMutableDictionary *)self->_connectionList setObject:v11 forKey:v10];
  }

  v12 = [v11 objectForKey:@"endpointList"];
  if (!v12)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [v11 setObject:v12 forKey:@"endpointList"];
  }

  v34 = v11;
  [v12 addObject:v38];
  v13 = [(NSMutableDictionary *)self->_endpointList objectForKey:v38];
  if (!v13)
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(NSMutableDictionary *)self->_endpointList setObject:v13 forKey:v38];
  }

  v14 = [MEMORY[0x277CCABB0] numberWithInt:a4];
  [v13 setObject:v14 forKey:@"transportType"];

  v15 = [MEMORY[0x277CCABB0] numberWithInt:a5];
  [v13 setObject:v15 forKey:@"protocolType"];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (v17 = WeakRetained, [v13 objectForKey:@"Legacy"], v18 = objc_claimAutoreleasedReturnValue(), v18, v17, !v18))
  {
    [v13 setObject:MEMORY[0x277CBEC38] forKey:@"Legacy"];
    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  v20 = objc_loadWeakRetained(&self->_delegateForIdentifier);
  v31 = v13;
  v33 = v12;
  if (v20 && (v21 = v20, [v13 objectForKey:{self->_identifier, v13, v12}], v22 = objc_claimAutoreleasedReturnValue(), v22, v21, !v22))
  {
    [v13 setObject:MEMORY[0x277CBEC38] forKey:self->_identifier];
    v23 = 1;
  }

  else
  {
    v23 = 0;
  }

  [(NSLock *)self->_listLock unlock];
  v24 = 1;
  do
  {
    v25 = v24;
    if (v24)
    {
      v26 = objc_loadWeakRetained(&self->_delegate);
      accessoryFilterDictionary = self->_accessoryFilterDictionary;
      v28 = v19;
    }

    else
    {
      v26 = objc_loadWeakRetained(&self->_delegateForIdentifier);
      accessoryFilterDictionary = 0;
      v28 = v23;
    }

    v29 = accessoryFilterDictionary;
    if (v26)
    {
      v30 = [(ACCConnectionInfo *)self accessoryEndpointFiltered:v38 withFilter:v29 forConnection:v10];
      if (v28)
      {
        if (!v30)
        {
          if (objc_opt_respondsToSelector())
          {
            [v26 accessoryEndpointAttached:v38 transportType:a4 protocol:a5 forConnection:v10];
          }

          if (objc_opt_respondsToSelector())
          {
            [v26 accessoryEndpointAttached:v38 transportType:a4 protocol:a5 properties:v35 forConnection:v10];
          }
        }
      }
    }

    v24 = 0;
  }

  while ((v25 & 1) != 0);
}

- (void)accessoryEndpointDetached:(id)a3 forConnection:(id)a4
{
  v18 = a3;
  v6 = a4;
  v7 = v6;
  accessoryFilterDictionary = self->_accessoryFilterDictionary;
  if (accessoryFilterDictionary)
  {
    v9 = [(ACCConnectionInfo *)self accessoryEndpointFiltered:v18 withFilter:accessoryFilterDictionary forConnection:v6];
  }

  else
  {
    v9 = 0;
  }

  [(NSLock *)self->_listLock lock];
  v10 = [(NSMutableDictionary *)self->_connectionList objectForKey:v7];
  v11 = v10;
  v12 = v18;
  if (v10)
  {
    v13 = [v10 objectForKey:@"endpointList"];
    [v13 removeObject:v18];

    v12 = v18;
  }

  [(NSMutableDictionary *)self->_endpointList removeObjectForKey:v12];
  [(NSLock *)self->_listLock unlock];
  v14 = 1;
  do
  {
    v15 = v14;
    if (v14)
    {
      v16 = 24;
    }

    else
    {
      v16 = 32;
    }

    WeakRetained = objc_loadWeakRetained((&self->super.isa + v16));
    if (WeakRetained && (v15 & v9 & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [WeakRetained accessoryEndpointDetached:v18 forConnection:v7];
    }

    v14 = 0;
  }

  while ((v15 & 1) != 0);
}

- (void)accessoryConnectionInfoPropertyChanged:(id)a3 properties:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = 1;
  do
  {
    v8 = v7;
    if (v7)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      accessoryFilterDictionary = self->_accessoryFilterDictionary;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegateForIdentifier);
      accessoryFilterDictionary = 0;
    }

    v11 = accessoryFilterDictionary;
    if (WeakRetained && ![(ACCConnectionInfo *)self accessoryConnectionFiltered:v12 withFilter:v11])
    {
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained accessoryConnectionInfoPropertyChanged:v12];
      }

      if (objc_opt_respondsToSelector())
      {
        [WeakRetained accessoryConnectionInfoPropertyChanged:v12 properties:v6];
      }
    }

    v7 = 0;
  }

  while ((v8 & 1) != 0);
}

- (void)accessoryEndpointInfoPropertyChanged:(id)a3 properties:(id)a4 forConnection:(id)a5
{
  v15 = a3;
  v8 = a4;
  v9 = a5;
  v10 = 1;
  do
  {
    v11 = v10;
    if (v10)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      accessoryFilterDictionary = self->_accessoryFilterDictionary;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegateForIdentifier);
      accessoryFilterDictionary = 0;
    }

    v14 = accessoryFilterDictionary;
    if (WeakRetained && ![(ACCConnectionInfo *)self accessoryEndpointFiltered:v15 withFilter:v14 forConnection:v9])
    {
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained accessoryEndpointInfoPropertyChanged:v15 forConnection:v9];
      }

      if (objc_opt_respondsToSelector())
      {
        [WeakRetained accessoryEndpointInfoPropertyChanged:v15 properties:v8 forConnection:v9];
      }
    }

    v10 = 0;
  }

  while ((v11 & 1) != 0);
}

- (void)handleInterceptData:(id)a3 forEndpoint:(id)a4 connection:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = 1;
  do
  {
    v11 = v10;
    if (v10)
    {
      v12 = 24;
    }

    else
    {
      v12 = 32;
    }

    WeakRetained = objc_loadWeakRetained((&self->super.isa + v12));
    if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [WeakRetained handleInterceptData:v14 forEndpoint:v8 connection:v9];
    }

    v10 = 0;
  }

  while ((v11 & 1) != 0);
}

- (void)configStreamCategoryListReady:(id)a3 connection:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 8;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained(&self->_configStreamDelegate);
    v18 = 138412802;
    v19 = v7;
    v20 = 2112;
    v21 = v6;
    v22 = 2112;
    v23 = WeakRetained;
    _os_log_impl(&dword_221CB0000, v10, OS_LOG_TYPE_INFO, "ACCConnectionInfo configStreamCategoryListReady: %@ - %@, _configStreamDelegate %@", &v18, 0x20u);
  }

  v12 = objc_loadWeakRetained(&self->_configStreamDelegate);
  if (v12)
  {
    v13 = v12;
    v14 = objc_loadWeakRetained(&self->_configStreamDelegate);
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = objc_loadWeakRetained(&self->_configStreamDelegate);
      [v16 configStreamCategoryListReady:v6 connection:v7];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)accessoryEndpointsForConnection:(id)a3 withReply:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(ACCConnectionInfo *)self serverConnection];
    v9 = [v8 remoteObjectProxyWithErrorHandler:&__block_literal_global_205];
    [v9 accessoryEndpointsForConnection:v6 withReply:v7];
  }

  else
  {
    if (gLogObjects)
    {
      v10 = gNumLogObjects < 8;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v8 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    else
    {
      v8 = *(gLogObjects + 56);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_221CB0000, v8, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo accessoryEndpointsForConnection: %@, ERROR: called with no reply block!!!", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __63__ACCConnectionInfo_accessoryEndpointsForConnection_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)accessoryInfoForConnection:(id)a3 withReply:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(ACCConnectionInfo *)self serverConnection];
    v9 = [v8 remoteObjectProxyWithErrorHandler:&__block_literal_global_207];
    [v9 accessoryInfoForConnection:v6 withReply:v7];
  }

  else
  {
    if (gLogObjects)
    {
      v10 = gNumLogObjects < 8;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v8 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    else
    {
      v8 = *(gLogObjects + 56);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_221CB0000, v8, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo accessoryInfoForConnection: %@, ERROR: called with no reply block!!!", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __58__ACCConnectionInfo_accessoryInfoForConnection_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)accessoryInfoForEndpoint:(id)a3 connection:(id)a4 withReply:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = [(ACCConnectionInfo *)self serverConnection];
    v12 = [v11 remoteObjectProxyWithErrorHandler:&__block_literal_global_209];
    [v12 accessoryInfoForEndpoint:v8 connection:v9 withReply:v10];
  }

  else
  {
    if (gLogObjects)
    {
      v13 = gNumLogObjects < 8;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v11 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    else
    {
      v11 = *(gLogObjects + 56);
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_221CB0000, v11, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo accessoryInfoForEndpoint: %@ connection: %@, ERROR: called with no reply block!!!", &v16, 0x16u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __67__ACCConnectionInfo_accessoryInfoForEndpoint_connection_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (id)accessoryInfoForConnectionSync:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v5 = [(ACCConnectionInfo *)self serverConnection];
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_211];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__ACCConnectionInfo_accessoryInfoForConnectionSync___block_invoke_212;
  v9[3] = &unk_2784862C0;
  v9[4] = &v10;
  [v6 accessoryInfoForConnection:v4 withReply:v9];

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __52__ACCConnectionInfo_accessoryInfoForConnectionSync___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (id)accessoryInfoForEndpointSync:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v8 = [(ACCConnectionInfo *)self serverConnection];
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_215];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__ACCConnectionInfo_accessoryInfoForEndpointSync_connection___block_invoke_216;
  v12[3] = &unk_2784862E8;
  v12[4] = &v13;
  [v9 accessoryInfoForEndpoint:v6 connection:v7 withReply:v12];

  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v10;
}

void __61__ACCConnectionInfo_accessoryInfoForEndpointSync_connection___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)accessoryProperty:(id)a3 forConnection:(id)a4 withReply:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = [(ACCConnectionInfo *)self serverConnection];
    v12 = [v11 remoteObjectProxyWithErrorHandler:&__block_literal_global_219];
    [v12 accessoryProperty:v8 forConnection:v9 withReply:v10];
  }

  else
  {
    if (gLogObjects)
    {
      v13 = gNumLogObjects < 8;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v11 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    else
    {
      v11 = *(gLogObjects + 56);
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_221CB0000, v11, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo accessoryProperty: %@ forConnection: %@, ERROR: called with no reply block!!!", &v16, 0x16u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __63__ACCConnectionInfo_accessoryProperty_forConnection_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)accessoryProperty:(id)a3 forEndpoint:(id)a4 connection:(id)a5 withReply:(id)a6
{
  v25 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v13)
  {
    v14 = [(ACCConnectionInfo *)self serverConnection];
    v15 = [v14 remoteObjectProxyWithErrorHandler:&__block_literal_global_221];
    [v15 accessoryProperty:v10 forEndpoint:v11 connection:v12 withReply:v13];
  }

  else
  {
    if (gLogObjects)
    {
      v16 = gNumLogObjects < 8;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v14 = MEMORY[0x277D86220];
      v17 = MEMORY[0x277D86220];
    }

    else
    {
      v14 = *(gLogObjects + 56);
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412802;
      v20 = v10;
      v21 = 2112;
      v22 = v11;
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&dword_221CB0000, v14, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo accessoryPropery: %@ forEndpoint: %@ connection: %@, ERROR: called with no reply block!!!", &v19, 0x20u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __72__ACCConnectionInfo_accessoryProperty_forEndpoint_connection_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (BOOL)configStreamCategoriesRequest:(id)a3 connection:(id)a4 withReply:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 8;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v13 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  else
  {
    v13 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v29 = _Block_copy(v10);
    v30 = _Block_copy(self->_configStreamGetResponseHandler);
    *buf = 138413058;
    v37 = v9;
    v38 = 2112;
    v39 = v8;
    v40 = 2048;
    *v41 = v29;
    *&v41[8] = 2048;
    v42 = v30;
    _os_log_debug_impl(&dword_221CB0000, v13, OS_LOG_TYPE_DEBUG, "ACCConnectionInfo configStreamCategoriesRequest: [%@ : %@], responseHandler %p, _configStreamGetResponseHandler %p", buf, 0x2Au);
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  if (v8 && v9 && v10 && !self->_configStreamGetResponseHandler)
  {
    v25 = _Block_copy(v10);
    configStreamGetResponseHandler = self->_configStreamGetResponseHandler;
    self->_configStreamGetResponseHandler = v25;

    *(v33 + 24) = 1;
    v27 = [(ACCConnectionInfo *)self serverConnection];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __72__ACCConnectionInfo_configStreamCategoriesRequest_connection_withReply___block_invoke;
    v31[3] = &unk_278486310;
    v31[4] = self;
    v31[5] = &v32;
    v28 = [v27 remoteObjectProxyWithErrorHandler:v31];
    [v28 configStreamCategoriesRequest:v8 connection:v9];
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v14 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v14 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = self->_configStreamGetResponseHandler != 0;
      *buf = 138413058;
      v37 = v8;
      v38 = 2112;
      v39 = v9;
      v40 = 1024;
      *v41 = v10 != 0;
      *&v41[4] = 1024;
      *&v41[6] = v16;
      _os_log_impl(&dword_221CB0000, v14, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo configStreamCategoriesRequest: %@ connection: %@, ERROR: called with no endpoint/connectionUUID/responseHandler(%d) or pending requestReply(%d)!!!", buf, 0x22u);
    }
  }

  if (gLogObjects && gNumLogObjects >= 8)
  {
    v17 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v17 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v19 = self->_configStreamGetResponseHandler != 0;
    v20 = *(v33 + 24);
    *buf = 138413314;
    v37 = v9;
    v38 = 2112;
    v39 = v8;
    v40 = 1024;
    *v41 = v10 != 0;
    *&v41[4] = 1024;
    *&v41[6] = v19;
    LOWORD(v42) = 1024;
    *(&v42 + 2) = v20;
    _os_log_impl(&dword_221CB0000, v17, OS_LOG_TYPE_INFO, "ACCConnectionInfo configStreamCategoriesRequest: [%@ : %@], responseHandler(%d), _configStreamGetResponseHandler(%d), sendSuccess %d", buf, 0x28u);
  }

  v21 = *(v33 + 24);
  if (((v10 != 0) & (v21 ^ 1)) == 1)
  {
    v22 = self->_configStreamGetResponseHandler;
    self->_configStreamGetResponseHandler = 0;

    (*(v10 + 2))(v10, v8, v9, 0, 0, 0, 0, 0);
    LOBYTE(v21) = *(v33 + 24);
  }

  _Block_object_dispose(&v32, 8);

  v23 = *MEMORY[0x277D85DE8];
  return v21 & 1;
}

void __72__ACCConnectionInfo_configStreamCategoriesRequest_connection_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 8;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 104);
  *(v7 + 104) = 0;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __94__ACCConnectionInfo_configStreamPropertyRequest_forCategory_forEndpoint_connection_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 8;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 104);
  *(v7 + 104) = 0;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __97__ACCConnectionInfo_configStreamPropertySetValue_forProperty_forCategory_forEndpoint_connection___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (id)accessoryPropertySync:(id)a3 forConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v8 = [(ACCConnectionInfo *)self serverConnection];
  v9 = [v8 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_225];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__ACCConnectionInfo_accessoryPropertySync_forConnection___block_invoke_226;
  v12[3] = &unk_278486338;
  v12[4] = &v13;
  [v9 accessoryProperty:v6 forConnection:v7 withReply:v12];

  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v10;
}

void __57__ACCConnectionInfo_accessoryPropertySync_forConnection___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (id)accessoryPropertySync:(id)a3 forEndpoint:(id)a4 connection:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v11 = [(ACCConnectionInfo *)self serverConnection];
  v12 = [v11 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_229];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__ACCConnectionInfo_accessoryPropertySync_forEndpoint_connection___block_invoke_230;
  v15[3] = &unk_278486360;
  v15[4] = &v16;
  [v12 accessoryProperty:v8 forEndpoint:v9 connection:v10 withReply:v15];

  v13 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v13;
}

void __66__ACCConnectionInfo_accessoryPropertySync_forEndpoint_connection___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (int)accessoryConnectionType:(id)a3
{
  listLock = self->_listLock;
  v5 = a3;
  [(NSLock *)listLock lock];
  v6 = [(NSMutableDictionary *)self->_connectionList objectForKey:v5];

  if (v6)
  {
    v7 = [v6 objectForKey:@"connectionType"];
    v8 = [v7 intValue];
  }

  else
  {
    v8 = 11;
  }

  [(NSLock *)self->_listLock unlock];

  return v8;
}

- (int)accessoryEndpointTransportType:(id)a3 connection:(id)a4
{
  listLock = self->_listLock;
  v6 = a3;
  [(NSLock *)listLock lock];
  v7 = [(NSMutableDictionary *)self->_endpointList objectForKey:v6];

  if (v7)
  {
    v8 = [v7 objectForKey:@"transportType"];
    v9 = [v8 intValue];
  }

  else
  {
    v9 = 18;
  }

  [(NSLock *)self->_listLock unlock];

  return v9;
}

- (int)accessoryEndpointProtocolType:(id)a3 connection:(id)a4
{
  listLock = self->_listLock;
  v6 = a3;
  [(NSLock *)listLock lock];
  v7 = [(NSMutableDictionary *)self->_endpointList objectForKey:v6];

  if (v7)
  {
    v8 = [v7 objectForKey:@"protocolType"];
    v9 = [v8 intValue];
  }

  else
  {
    v9 = 0;
  }

  [(NSLock *)self->_listLock unlock];

  return v9;
}

void __68__ACCConnectionInfo_interceptIncomingNTimes_forEndpoint_connection___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (int)getInterceptCountForEndpoint:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = [(NSMutableDictionary *)self->_endpointList objectForKey:v6];
  if (v8)
  {
    v9 = [(ACCConnectionInfo *)self serverConnection];
    v10 = [v9 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_235];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __61__ACCConnectionInfo_getInterceptCountForEndpoint_connection___block_invoke_236;
    v13[3] = &unk_278486388;
    v13[4] = &v14;
    [v10 getInterceptCountForEndpoint:v6 connection:v7 withReply:v13];
  }

  v11 = *(v15 + 6);

  _Block_object_dispose(&v14, 8);
  return v11;
}

void __61__ACCConnectionInfo_getInterceptCountForEndpoint_connection___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)sendData:(id)a3 forEndpoint:(id)a4 connection:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  [(NSLock *)self->_listLock lock];
  v10 = [(NSMutableDictionary *)self->_endpointList objectForKey:v8];
  if (v10)
  {
    v11 = [(ACCConnectionInfo *)self serverConnection];
    v12 = [v11 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_239];
    [v12 sendData:v13 forEndpoint:v8 connection:v9];
  }

  [(NSLock *)self->_listLock unlock];
}

void __53__ACCConnectionInfo_sendData_forEndpoint_connection___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)getAccessoryUserName:(id)a3 withReply:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(ACCConnectionInfo *)self serverConnection];
    v9 = [v8 remoteObjectProxyWithErrorHandler:&__block_literal_global_242];
    [v9 getAccessoryUserName:v6 withReply:v7];
  }

  else
  {
    if (gLogObjects)
    {
      v10 = gNumLogObjects < 8;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v8 = MEMORY[0x277D86220];
      v11 = MEMORY[0x277D86220];
    }

    else
    {
      v8 = *(gLogObjects + 56);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_221CB0000, v8, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo getAccessoryUserName: %@ endpoint, ERROR: called with no reply block!!!", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __52__ACCConnectionInfo_getAccessoryUserName_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)setAccessoryUserName:(id)a3 forEndpoint:(id)a4 withReply:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (gLogObjects)
  {
    v12 = gNumLogObjects <= 7;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  if (v10)
  {
    if (v13)
    {
      v14 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v14 = MEMORY[0x277D86220];
      v16 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = v8;
      _os_log_impl(&dword_221CB0000, v14, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo setAccessoryUserName:%@", &v20, 0xCu);
    }

    v15 = [(ACCConnectionInfo *)self serverConnection];
    v17 = [v15 remoteObjectProxyWithErrorHandler:&__block_literal_global_244];
    [v17 setAccessoryUserName:v8 forEndpoint:v9 withReply:v11];
  }

  else
  {
    if (v13)
    {
      v15 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v15 = MEMORY[0x277D86220];
      v18 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412546;
      v21 = v8;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_221CB0000, v15, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo setAccessoryUserName:%@ %@ endpoint, ERROR: called with no reply block!!!", &v20, 0x16u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __64__ACCConnectionInfo_setAccessoryUserName_forEndpoint_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)provisionAccessoryForFindMy:(id)a3 withReply:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (gLogObjects)
  {
    v9 = gNumLogObjects <= 7;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (v7)
  {
    if (v10)
    {
      v11 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v11 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_221CB0000, v11, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo provisionAccessoryForFindMy:withReply:", &v22, 2u);
    }

    v14 = [(ACCConnectionInfo *)self serverConnection];

    if (v14)
    {
      v12 = [(ACCConnectionInfo *)self serverConnection];
      v15 = [v12 remoteObjectProxyWithErrorHandler:&__block_literal_global_246];
      [v15 provisionAccessoryForFindMy:v6 withReply:v8];

      goto LABEL_33;
    }

    if (gLogObjects && gNumLogObjects >= 8)
    {
      v12 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v12 = MEMORY[0x277D86220];
      v20 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      v17 = "ACCConnectionInfo provisionAccessoryForFindMy:withReply: !self.serverConnection";
      v18 = v12;
      v19 = 2;
      goto LABEL_32;
    }
  }

  else
  {
    if (v10)
    {
      v12 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v12 = MEMORY[0x277D86220];
      v16 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = v6;
      v17 = "ACCConnectionInfo provisionAccessoryForFindMy: %@ endpoint, ERROR: called with no reply block!!!";
      v18 = v12;
      v19 = 12;
LABEL_32:
      _os_log_impl(&dword_221CB0000, v18, OS_LOG_TYPE_DEFAULT, v17, &v22, v19);
    }
  }

LABEL_33:

  v21 = *MEMORY[0x277D85DE8];
}

void __59__ACCConnectionInfo_provisionAccessoryForFindMy_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __59__ACCConnectionInfo_provisionAccessoryForFindMy_withReply___block_invoke_cold_2();
  }
}

- (void)getPairingStatus:(id)a3 withReply:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (gLogObjects)
  {
    v9 = gNumLogObjects <= 7;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (v7)
  {
    if (v10)
    {
      v11 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v11 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v6;
      _os_log_impl(&dword_221CB0000, v11, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo getPairingStatus: %@ endpoint", buf, 0xCu);
    }

    v14 = [(ACCConnectionInfo *)self serverConnection];
    v15 = [v14 remoteObjectProxyWithErrorHandler:&__block_literal_global_248];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __48__ACCConnectionInfo_getPairingStatus_withReply___block_invoke_249;
    v18[3] = &unk_2784863B0;
    v19 = v8;
    [v15 getPairingStatus:v6 withReply:v18];

    v12 = v19;
  }

  else
  {
    if (v10)
    {
      v12 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v12 = MEMORY[0x277D86220];
      v16 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v6;
      _os_log_impl(&dword_221CB0000, v12, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo getPairingStatus: %@ endpoint, ERROR: called with no reply block!!!", buf, 0xCu);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __48__ACCConnectionInfo_getPairingStatus_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

void __48__ACCConnectionInfo_getPairingStatus_withReply___block_invoke_249(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 8;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v8 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  else
  {
    v8 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = a2;
    _os_log_impl(&dword_221CB0000, v8, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo getPairingStatus: reply %d", v10, 8u);
  }

  (*(*(a1 + 32) + 16))();
  v9 = *MEMORY[0x277D85DE8];
}

- (void)resetPairingInformation:(id)a3 withReply:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (gLogObjects)
  {
    v9 = gNumLogObjects <= 7;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (v7)
  {
    if (v10)
    {
      v11 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v11 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v6;
      _os_log_impl(&dword_221CB0000, v11, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo resetPairingInformation: %@ endpoint", &v17, 0xCu);
    }

    v12 = [(ACCConnectionInfo *)self serverConnection];
    v14 = [v12 remoteObjectProxyWithErrorHandler:&__block_literal_global_252];
    [v14 resetPairingInformation:v6 withReply:v8];
  }

  else
  {
    if (v10)
    {
      v12 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v12 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v6;
      _os_log_impl(&dword_221CB0000, v12, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo resetPairingInformation: %@ endpoint, ERROR: called with no reply block!!!", &v17, 0xCu);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __55__ACCConnectionInfo_resetPairingInformation_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)getPrivateNVMKeyValues:(id)a3 forEndpoint:(id)a4 withReply:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (gLogObjects)
  {
    v12 = gNumLogObjects <= 7;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  if (v10)
  {
    if (v13)
    {
      v14 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v14 = MEMORY[0x277D86220];
      v16 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = v8;
      _os_log_impl(&dword_221CB0000, v14, OS_LOG_TYPE_DEFAULT, "AccConnectionInfo: getPrivateNVMKeyValues: %@", &v20, 0xCu);
    }

    v15 = [(ACCConnectionInfo *)self serverConnection];
    v17 = [v15 remoteObjectProxyWithErrorHandler:&__block_literal_global_254];
    [v17 getPrivateNVMKeyValues:v8 forEndpoint:v9 withReply:v11];
  }

  else
  {
    if (v13)
    {
      v15 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v15 = MEMORY[0x277D86220];
      v18 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = v9;
      _os_log_impl(&dword_221CB0000, v15, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo getPrivateNVMKeyValues: %@ endpoint, ERROR: called with no reply block!!!", &v20, 0xCu);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __66__ACCConnectionInfo_getPrivateNVMKeyValues_forEndpoint_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)setPrivateNVMKeyValues:(id)a3 forEndpoint:(id)a4 withReply:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (gLogObjects)
  {
    v12 = gNumLogObjects <= 7;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  if (v10)
  {
    if (v13)
    {
      v14 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v14 = MEMORY[0x277D86220];
      v16 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = v8;
      _os_log_impl(&dword_221CB0000, v14, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo setPrivateNVMKeyValues: %@", &v20, 0xCu);
    }

    v15 = [(ACCConnectionInfo *)self serverConnection];
    v17 = [v15 remoteObjectProxyWithErrorHandler:&__block_literal_global_256];
    [v17 setPrivateNVMKeyValues:v8 forEndpoint:v9 withReply:v11];
  }

  else
  {
    if (v13)
    {
      v15 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v15 = MEMORY[0x277D86220];
      v18 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = v9;
      _os_log_impl(&dword_221CB0000, v15, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo setPrivateNVMKeyValues: %@ endpoint, ERROR: called with no reply block!!!", &v20, 0xCu);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __66__ACCConnectionInfo_setPrivateNVMKeyValues_forEndpoint_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)getPublicNVMKeyValues:(id)a3 forEndpoint:(id)a4 withReply:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (gLogObjects)
  {
    v12 = gNumLogObjects <= 7;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  if (v10)
  {
    if (v13)
    {
      v14 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v14 = MEMORY[0x277D86220];
      v16 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v8;
      _os_log_impl(&dword_221CB0000, v14, OS_LOG_TYPE_DEFAULT, "AccConnectionInfo: getPublicNVMKeyValues: %@", buf, 0xCu);
    }

    v17 = [(ACCConnectionInfo *)self serverConnection];
    v18 = [v17 remoteObjectProxyWithErrorHandler:&__block_literal_global_258];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __65__ACCConnectionInfo_getPublicNVMKeyValues_forEndpoint_withReply___block_invoke_259;
    v21[3] = &unk_2784863D8;
    v22 = v11;
    [v18 getPublicNVMKeyValues:v8 forEndpoint:v9 withReply:v21];

    v15 = v22;
  }

  else
  {
    if (v13)
    {
      v15 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v15 = MEMORY[0x277D86220];
      v19 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v9;
      _os_log_impl(&dword_221CB0000, v15, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo getPublicNVMKeyValues: %@ endpoint, ERROR: called with no reply block!!!", buf, 0xCu);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __65__ACCConnectionInfo_getPublicNVMKeyValues_forEndpoint_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

void __65__ACCConnectionInfo_getPublicNVMKeyValues_forEndpoint_withReply___block_invoke_259(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 8;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v9 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  else
  {
    v9 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 67109120;
    LODWORD(v17) = v5 != 0;
    _os_log_impl(&dword_221CB0000, v9, OS_LOG_TYPE_DEFAULT, "AccConnectionInfo: getPublicNVMKeyValues: hasDict:%d", &v16, 8u);
  }

  if (gLogObjects)
  {
    v10 = gNumLogObjects <= 7;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  if (v5)
  {
    if (v11)
    {
      v12 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v12 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v5;
      _os_log_impl(&dword_221CB0000, v12, OS_LOG_TYPE_DEFAULT, "AccConnectionInfo: getPublicNVMKeyValues: dict:%@", &v16, 0xCu);
    }
  }

  else
  {
    if (v11)
    {
      v12 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v12 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __65__ACCConnectionInfo_getPublicNVMKeyValues_forEndpoint_withReply___block_invoke_259_cold_4();
    }
  }

  (*(*(a1 + 32) + 16))();
  v15 = *MEMORY[0x277D85DE8];
}

- (void)setPublicNVMKeyValues:(id)a3 forEndpoint:(id)a4 withReply:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 8;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v13 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  else
  {
    v13 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412290;
    v23 = v8;
    _os_log_impl(&dword_221CB0000, v13, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo setPublicNVMKeyValues: %@", &v22, 0xCu);
  }

  if (gLogObjects)
  {
    v14 = gNumLogObjects <= 7;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  if (v10)
  {
    if (v15)
    {
      v16 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v16 = MEMORY[0x277D86220];
      v18 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_221CB0000, v16, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo setPublicNVMKeyValues: reply", &v22, 2u);
    }

    v17 = [(ACCConnectionInfo *)self serverConnection];
    v19 = [v17 remoteObjectProxyWithErrorHandler:&__block_literal_global_262];
    [v19 setPublicNVMKeyValues:v8 forEndpoint:v9 withReply:v10];
  }

  else
  {
    if (v15)
    {
      v17 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v17 = MEMORY[0x277D86220];
      v20 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = v9;
      _os_log_impl(&dword_221CB0000, v17, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo setPublicNVMKeyValues: %@ endpoint, ERROR: called with no reply block!!!", &v22, 0xCu);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __65__ACCConnectionInfo_setPublicNVMKeyValues_forEndpoint_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)beginVendorKeyErase:(id)a3 withReply:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 8;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&dword_221CB0000, v10, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo beginVendorKeyErase", &v19, 2u);
  }

  if (gLogObjects)
  {
    v11 = gNumLogObjects <= 7;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v7)
  {
    if (v12)
    {
      v13 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v13 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_221CB0000, v13, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo beginVendorKeyErase: reply", &v19, 2u);
    }

    v14 = [(ACCConnectionInfo *)self serverConnection];
    v16 = [v14 remoteObjectProxyWithErrorHandler:&__block_literal_global_264];
    [v16 beginVendorKeyErase:v6 withReply:v7];
  }

  else
  {
    if (v12)
    {
      v14 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v14 = MEMORY[0x277D86220];
      v17 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v6;
      _os_log_impl(&dword_221CB0000, v14, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo beginVendorKeyErase: %@ endpoint, ERROR: called with no reply block!!!", &v19, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __51__ACCConnectionInfo_beginVendorKeyErase_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)continueVendorKeyErase:(id)a3 withSignature:(id)a4 andAccessoryNonce:(id)a5 forEndpoint:(id)a6 withReply:(id)a7
{
  v30 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (gLogObjects)
  {
    v17 = gNumLogObjects < 8;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v19 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
  }

  else
  {
    v19 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v28) = 0;
    _os_log_impl(&dword_221CB0000, v19, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo continueVendorKeyErase", &v28, 2u);
  }

  if (gLogObjects)
  {
    v20 = gNumLogObjects <= 7;
  }

  else
  {
    v20 = 1;
  }

  v21 = !v20;
  if (v16)
  {
    if (v21)
    {
      v22 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v22 = MEMORY[0x277D86220];
      v24 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&dword_221CB0000, v22, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo continueVendorKeyErase: reply", &v28, 2u);
    }

    v23 = [(ACCConnectionInfo *)self serverConnection];
    v25 = [v23 remoteObjectProxyWithErrorHandler:&__block_literal_global_266];
    [v25 continueVendorKeyErase:v12 withSignature:v13 andAccessoryNonce:v14 forEndpoint:v15 withReply:v16];
  }

  else
  {
    if (v21)
    {
      v23 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v23 = MEMORY[0x277D86220];
      v26 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138412290;
      v29 = v15;
      _os_log_impl(&dword_221CB0000, v23, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo continueVendorKeyErase: %@ endpoint, ERROR: called with no reply block!!!", &v28, 0xCu);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __98__ACCConnectionInfo_continueVendorKeyErase_withSignature_andAccessoryNonce_forEndpoint_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)cancelVendorKeyErase:(id)a3 withReply:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 8;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&dword_221CB0000, v10, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo cancelVendorKeyErase", &v19, 2u);
  }

  if (gLogObjects)
  {
    v11 = gNumLogObjects <= 7;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v7)
  {
    if (v12)
    {
      v13 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v13 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_221CB0000, v13, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo cancelVendorKeyErase: reply", &v19, 2u);
    }

    v14 = [(ACCConnectionInfo *)self serverConnection];
    v16 = [v14 remoteObjectProxyWithErrorHandler:&__block_literal_global_268];
    [v16 cancelVendorKeyErase:v6 withReply:v7];
  }

  else
  {
    if (v12)
    {
      v14 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v14 = MEMORY[0x277D86220];
      v17 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v6;
      _os_log_impl(&dword_221CB0000, v14, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo cancelVendorKeyErase: %@ endpoint, ERROR: called with no reply block!!!", &v19, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __52__ACCConnectionInfo_cancelVendorKeyErase_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)beginUserKeyErase:(id)a3 withReply:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 8;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&dword_221CB0000, v10, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo beginUserKeyErase", &v19, 2u);
  }

  if (gLogObjects)
  {
    v11 = gNumLogObjects <= 7;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v7)
  {
    if (v12)
    {
      v13 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v13 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_221CB0000, v13, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo beginUserKeyErase: reply", &v19, 2u);
    }

    v14 = [(ACCConnectionInfo *)self serverConnection];
    v16 = [v14 remoteObjectProxyWithErrorHandler:&__block_literal_global_270];
    [v16 beginUserKeyErase:v6 withReply:v7];
  }

  else
  {
    if (v12)
    {
      v14 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v14 = MEMORY[0x277D86220];
      v17 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v6;
      _os_log_impl(&dword_221CB0000, v14, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo beginUserKeyErase: %@ endpoint, ERROR: called with no reply block!!!", &v19, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __49__ACCConnectionInfo_beginUserKeyErase_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)continueUserKeyErase:(id)a3 withSignature:(id)a4 andAccessoryNonce:(id)a5 forEndpoint:(id)a6 withReply:(id)a7
{
  v30 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (gLogObjects)
  {
    v17 = gNumLogObjects < 8;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v19 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
  }

  else
  {
    v19 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v28) = 0;
    _os_log_impl(&dword_221CB0000, v19, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo continueUserKeyErase", &v28, 2u);
  }

  if (gLogObjects)
  {
    v20 = gNumLogObjects <= 7;
  }

  else
  {
    v20 = 1;
  }

  v21 = !v20;
  if (v16)
  {
    if (v21)
    {
      v22 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v22 = MEMORY[0x277D86220];
      v24 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&dword_221CB0000, v22, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo continueUserKeyErase: reply", &v28, 2u);
    }

    v23 = [(ACCConnectionInfo *)self serverConnection];
    v25 = [v23 remoteObjectProxyWithErrorHandler:&__block_literal_global_272];
    [v25 continueUserKeyErase:v12 withSignature:v13 andAccessoryNonce:v14 forEndpoint:v15 withReply:v16];
  }

  else
  {
    if (v21)
    {
      v23 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v23 = MEMORY[0x277D86220];
      v26 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138412290;
      v29 = v15;
      _os_log_impl(&dword_221CB0000, v23, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo continueUserKeyErase: %@ endpoint, ERROR: called with no reply block!!!", &v28, 0xCu);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __96__ACCConnectionInfo_continueUserKeyErase_withSignature_andAccessoryNonce_forEndpoint_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)cancelUserKeyErase:(id)a3 withReply:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 8;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&dword_221CB0000, v10, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo cancelUserKeyErase", &v19, 2u);
  }

  if (gLogObjects)
  {
    v11 = gNumLogObjects <= 7;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v7)
  {
    if (v12)
    {
      v13 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v13 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_221CB0000, v13, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo cancelUserKeyErase: reply", &v19, 2u);
    }

    v14 = [(ACCConnectionInfo *)self serverConnection];
    v16 = [v14 remoteObjectProxyWithErrorHandler:&__block_literal_global_274];
    [v16 cancelUserKeyErase:v6 withReply:v7];
  }

  else
  {
    if (v12)
    {
      v14 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v14 = MEMORY[0x277D86220];
      v17 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v6;
      _os_log_impl(&dword_221CB0000, v14, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo cancelUserKeyErase: %@ endpoint, ERROR: called with no reply block!!!", &v19, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __50__ACCConnectionInfo_cancelUserKeyErase_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

- (void)copyUserPrivateKey:(id)a3 withReply:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 8;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_221CB0000, v10, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo copyUserPrivateKey", buf, 2u);
  }

  if (v7)
  {
    v11 = [(ACCConnectionInfo *)self serverConnection];
    v12 = [v11 remoteObjectProxyWithErrorHandler:&__block_literal_global_276];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __50__ACCConnectionInfo_copyUserPrivateKey_withReply___block_invoke_277;
    v16[3] = &unk_278486400;
    v17 = v7;
    [v12 copyUserPrivateKey:v6 withReply:v16];

    v13 = v17;
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v13 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCTransportPlugin initWithDelegate:];
      }

      v13 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v6;
      _os_log_impl(&dword_221CB0000, v13, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo copyUserPrivateKey: %@ endpoint, ERROR: called with no reply block!!!", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __50__ACCConnectionInfo_copyUserPrivateKey_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 8;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2();
  }
}

void __50__ACCConnectionInfo_copyUserPrivateKey_withReply___block_invoke_277(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 8;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v9 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  else
  {
    v9 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_221CB0000, v9, OS_LOG_TYPE_DEFAULT, "ACCConnectionInfo copyUserPrivateKey: reply", v10, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (ACCConnectionInfoPrivateDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (ACCConnectionInfoPrivateDelegateProtocol)delegateForIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_delegateForIdentifier);

  return WeakRetained;
}

- (ACCConnectionInfoConfigStreamDelegateProtocol)configStreamDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_configStreamDelegate);

  return WeakRetained;
}

- (void)copyLocalizedAccessoryNameFromDaemon:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(*a2 + 40);
  OUTLINED_FUNCTION_2();
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_221CB0000, v4, OS_LOG_TYPE_ERROR, "No serverConnection, cannot localize: name: %@ -> %@", v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __58__ACCConnectionInfo_copyLocalizedAccessoryNameFromDaemon___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __59__ACCConnectionInfo_provisionAccessoryForFindMy_withReply___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __65__ACCConnectionInfo_getPublicNVMKeyValues_forEndpoint_withReply___block_invoke_259_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end