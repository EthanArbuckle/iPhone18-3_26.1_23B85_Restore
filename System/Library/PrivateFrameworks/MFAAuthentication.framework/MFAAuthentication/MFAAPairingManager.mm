@interface MFAAPairingManager
+ (id)sharedManager;
- (MFAAPairingManager)init;
- (id)_init;
- (void)addPairingWithToken:(id)a3 completionHandler:(id)a4;
- (void)generatePairingTokenWithCompletionHandler:(id)a3;
- (void)removePairingWithToken:(id)a3 completionHandler:(id)a4;
- (void)verifyPairingWithToken:(id)a3 completionHandler:(id)a4;
@end

@implementation MFAAPairingManager

- (MFAAPairingManager)init
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(sel_sharedManager);
  v9 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"Use +[%@ %@] instead of -%@.", v7, v8, v9}];

  return 0;
}

- (id)_init
{
  init_logging();
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 4;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(MFAATokenManager *)self _init];
  }

  v11.receiver = self;
  v11.super_class = MFAAPairingManager;
  v6 = [(MFAAPairingManager *)&v11 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.MFAAuthentication.MFAANetwork"];
    xpcConnection = v6->_xpcConnection;
    v6->_xpcConnection = v7;

    v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286857088];
    [(NSXPCConnection *)v6->_xpcConnection setRemoteObjectInterface:v9];

    [(NSXPCConnection *)v6->_xpcConnection resume];
  }

  return v6;
}

- (void)generatePairingTokenWithCompletionHandler:(id)a3
{
  v12[3] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 4;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12[0]) = 0;
    _os_log_impl(&dword_25627E000, v6, OS_LOG_TYPE_DEFAULT, "Generating pairing token...", v12, 2u);
  }

  v7 = [MEMORY[0x277CCAD78] UUID];
  v12[0] = 0xAAAAAAAAAAAAAAAALL;
  v12[1] = 0xAAAAAAAAAAAAAAAALL;
  [v7 getUUIDBytes:v12];
  v8 = [MEMORY[0x277CBEB28] dataWithBytes:v12 length:16];
  if ([v8 length] <= 0x3F)
  {
    [v8 increaseLengthBy:{64 - objc_msgSend(v8, "length")}];
  }

  if (gLogObjects && gNumLogObjects >= 4)
  {
    v9 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v9 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(MFAAPairingManager *)v7 generatePairingTokenWithCompletionHandler:v8, v9];
  }

  v3[2](v3, v8, 0);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)addPairingWithToken:(id)a3 completionHandler:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 4;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v6 length];
    v12 = "YES";
    *buf = 138478339;
    v22 = v6;
    if (!v7)
    {
      v12 = "NO";
    }

    v23 = 2048;
    v24 = v11;
    v25 = 2080;
    v26 = v12;
    _os_log_impl(&dword_25627E000, v10, OS_LOG_TYPE_DEFAULT, "Adding pairing with token... (pairingToken: %{private}@, pairingToken.length: %lu, completion: %s)", buf, 0x20u);
  }

  if (v7)
  {
    v13 = [(MFAAPairingManager *)self xpcConnection];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __60__MFAAPairingManager_addPairingWithToken_completionHandler___block_invoke;
    v19[3] = &unk_279831188;
    v14 = v7;
    v20 = v14;
    v15 = [v13 remoteObjectProxyWithErrorHandler:v19];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __60__MFAAPairingManager_addPairingWithToken_completionHandler___block_invoke_34;
    v17[3] = &unk_279831188;
    v18 = v14;
    [v15 addPairingWithToken:v6 withReply:v17];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __60__MFAAPairingManager_addPairingWithToken_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 4;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __103__MFAATokenManager_requestMetadataForAuthToken_withUUID_requestedLocale_requestInfo_completionHandler___block_invoke_cold_2();
  }

  v7 = *(a1 + 32);
  v8 = [MEMORY[0x277CCA9B8] MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-4];
  (*(v7 + 16))(v7, v8);
}

- (void)removePairingWithToken:(id)a3 completionHandler:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 4;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v6 length];
    v12 = "YES";
    *buf = 138478339;
    v22 = v6;
    if (!v7)
    {
      v12 = "NO";
    }

    v23 = 2048;
    v24 = v11;
    v25 = 2080;
    v26 = v12;
    _os_log_impl(&dword_25627E000, v10, OS_LOG_TYPE_DEFAULT, "Removing pairing with token... (pairingToken: %{private}@, pairingToken.length: %lu, completion: %s)", buf, 0x20u);
  }

  if (v7)
  {
    v13 = [(MFAAPairingManager *)self xpcConnection];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __63__MFAAPairingManager_removePairingWithToken_completionHandler___block_invoke;
    v19[3] = &unk_279831188;
    v14 = v7;
    v20 = v14;
    v15 = [v13 remoteObjectProxyWithErrorHandler:v19];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __63__MFAAPairingManager_removePairingWithToken_completionHandler___block_invoke_35;
    v17[3] = &unk_279831188;
    v18 = v14;
    [v15 removePairingWithToken:v6 withReply:v17];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __63__MFAAPairingManager_removePairingWithToken_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 4;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __103__MFAATokenManager_requestMetadataForAuthToken_withUUID_requestedLocale_requestInfo_completionHandler___block_invoke_cold_2();
  }

  v7 = *(a1 + 32);
  v8 = [MEMORY[0x277CCA9B8] MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-4];
  (*(v7 + 16))(v7, v8);
}

- (void)verifyPairingWithToken:(id)a3 completionHandler:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 4;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v6 length];
    v12 = "YES";
    *buf = 138478339;
    v22 = v6;
    if (!v7)
    {
      v12 = "NO";
    }

    v23 = 2048;
    v24 = v11;
    v25 = 2080;
    v26 = v12;
    _os_log_impl(&dword_25627E000, v10, OS_LOG_TYPE_DEFAULT, "Verifying pairing with token... (pairingToken: %{private}@, pairingToken.length: %lu, completion: %s)", buf, 0x20u);
  }

  if (v7)
  {
    v13 = [(MFAAPairingManager *)self xpcConnection];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __63__MFAAPairingManager_verifyPairingWithToken_completionHandler___block_invoke;
    v19[3] = &unk_279831188;
    v14 = v7;
    v20 = v14;
    v15 = [v13 remoteObjectProxyWithErrorHandler:v19];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __63__MFAAPairingManager_verifyPairingWithToken_completionHandler___block_invoke_36;
    v17[3] = &unk_279831A28;
    v18 = v14;
    [v15 verifyPairingWithToken:v6 withReply:v17];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __63__MFAAPairingManager_verifyPairingWithToken_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 4;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __103__MFAATokenManager_requestMetadataForAuthToken_withUUID_requestedLocale_requestInfo_completionHandler___block_invoke_cold_2();
  }

  v7 = *(a1 + 32);
  v8 = [MEMORY[0x277CCA9B8] MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-4];
  (*(v7 + 16))(v7, 0, v8);
}

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__MFAAPairingManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedManager_once_0 != -1)
  {
    dispatch_once(&sharedManager_once_0, block);
  }

  v2 = sharedManager_sharedInstance_0;

  return v2;
}

uint64_t __35__MFAAPairingManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_sharedInstance_0 = [objc_alloc(*(a1 + 32)) _init];

  return MEMORY[0x2821F96F8]();
}

- (void)generatePairingTokenWithCompletionHandler:(NSObject *)a3 .cold.3(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = 138478339;
  v6 = a1;
  v7 = 2113;
  v8 = a2;
  v9 = 2048;
  v10 = [a2 length];
  _os_log_debug_impl(&dword_25627E000, a3, OS_LOG_TYPE_DEBUG, "pairingToken: %{private}@, pairingTokenData: %{private}@, pairingTokenData.length: %lu", &v5, 0x20u);
  v4 = *MEMORY[0x277D85DE8];
}

@end