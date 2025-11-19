@interface MFAATokenManager
+ (BOOL)isTokenValidForFeatures:(unint64_t)a3 token:(id)a4;
+ (id)sharedManager;
- (MFAATokenManager)init;
- (id)_init;
- (void)_init;
- (void)confirmActivationForAuthToken:(id)a3 withUUID:(id)a4 completionHandler:(id)a5;
- (void)requestActivationForAuthToken:(id)a3 withUUID:(id)a4 completionHandler:(id)a5;
- (void)requestMetadataForAuthToken:(id)a3 withUUID:(id)a4 requestedLocale:(id)a5 requestInfo:(id)a6 completionHandler:(id)a7;
@end

@implementation MFAATokenManager

- (MFAATokenManager)init
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
    v3 = gNumLogObjects < 3;
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
    v5 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(MFAATokenManager *)self _init];
  }

  v11.receiver = self;
  v11.super_class = MFAATokenManager;
  v6 = [(MFAATokenManager *)&v11 init];
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

- (void)requestMetadataForAuthToken:(id)a3 withUUID:(id)a4 requestedLocale:(id)a5 requestInfo:(id)a6 completionHandler:(id)a7
{
  v46 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (gLogObjects)
  {
    v17 = gNumLogObjects < 3;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v19 = MEMORY[0x277D86220];
    v18 = MEMORY[0x277D86220];
  }

  else
  {
    v19 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25627E000, v19, OS_LOG_TYPE_DEFAULT, "Processing request for token metadata...", buf, 2u);
  }

  if (gLogObjects && gNumLogObjects >= 3)
  {
    v20 = *(gLogObjects + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v20 = MEMORY[0x277D86220];
    v21 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [v12 length];
    v23 = [v14 localeIdentifier];
    v24 = v23;
    *buf = 138479107;
    v25 = "YES";
    v36 = 2048;
    v35 = v12;
    if (!v16)
    {
      v25 = "NO";
    }

    v37 = v22;
    v38 = 2112;
    v39 = v13;
    v40 = 2112;
    v41 = v23;
    v42 = 2113;
    v43 = v15;
    v44 = 2080;
    v45 = v25;
    _os_log_impl(&dword_25627E000, v20, OS_LOG_TYPE_DEFAULT, "token: %{private}@, token.length: %lu, uuid: %@, requestedLocale: %@, requestInfo: %{private}@, completionHandler: %s", buf, 0x3Eu);
  }

  if (v16)
  {
    v26 = [(MFAATokenManager *)self xpcConnection];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __103__MFAATokenManager_requestMetadataForAuthToken_withUUID_requestedLocale_requestInfo_completionHandler___block_invoke;
    v32[3] = &unk_279831188;
    v27 = v16;
    v33 = v27;
    v28 = [v26 remoteObjectProxyWithErrorHandler:v32];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __103__MFAATokenManager_requestMetadataForAuthToken_withUUID_requestedLocale_requestInfo_completionHandler___block_invoke_32;
    v30[3] = &unk_2798311B0;
    v31 = v27;
    [v28 requestMetadataForToken:v12 withUUID:v13 requestedLocale:v14 requestInfo:v15 withReply:v30];
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __103__MFAATokenManager_requestMetadataForAuthToken_withUUID_requestedLocale_requestInfo_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 3;
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
    v6 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __103__MFAATokenManager_requestMetadataForAuthToken_withUUID_requestedLocale_requestInfo_completionHandler___block_invoke_cold_2();
  }

  v7 = *(a1 + 32);
  v8 = [MEMORY[0x277CCA9B8] MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-4];
  (*(v7 + 16))(v7, 0, 0, 0, v8);
}

- (void)requestActivationForAuthToken:(id)a3 withUUID:(id)a4 completionHandler:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 3;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v13 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  else
  {
    v13 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25627E000, v13, OS_LOG_TYPE_DEFAULT, "Processing request for token activation...", buf, 2u);
  }

  if (gLogObjects && gNumLogObjects >= 3)
  {
    v14 = *(gLogObjects + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v14 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = "YES";
    *buf = 138478339;
    v26 = v8;
    if (!v10)
    {
      v16 = "NO";
    }

    v27 = 2112;
    v28 = v9;
    v29 = 2080;
    v30 = v16;
    _os_log_impl(&dword_25627E000, v14, OS_LOG_TYPE_DEFAULT, "token: %{private}@, uuid: %@, completionHandler: %s", buf, 0x20u);
  }

  if (v10)
  {
    v17 = [(MFAATokenManager *)self xpcConnection];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __77__MFAATokenManager_requestActivationForAuthToken_withUUID_completionHandler___block_invoke;
    v23[3] = &unk_279831188;
    v18 = v10;
    v24 = v18;
    v19 = [v17 remoteObjectProxyWithErrorHandler:v23];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __77__MFAATokenManager_requestActivationForAuthToken_withUUID_completionHandler___block_invoke_34;
    v21[3] = &unk_2798311D8;
    v22 = v18;
    [v19 requestActivationForToken:v8 withUUID:v9 withReply:v21];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __77__MFAATokenManager_requestActivationForAuthToken_withUUID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 3;
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
    v6 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __103__MFAATokenManager_requestMetadataForAuthToken_withUUID_requestedLocale_requestInfo_completionHandler___block_invoke_cold_2();
  }

  v7 = *(a1 + 32);
  v8 = [MEMORY[0x277CCA9B8] MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-4];
  (*(v7 + 16))(v7, 0, v8);
}

- (void)confirmActivationForAuthToken:(id)a3 withUUID:(id)a4 completionHandler:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 3;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v13 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  else
  {
    v13 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25627E000, v13, OS_LOG_TYPE_DEFAULT, "Processing token confirmation...", buf, 2u);
  }

  if (gLogObjects && gNumLogObjects >= 3)
  {
    v14 = *(gLogObjects + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [MFAATokenManager _init];
    }

    v14 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = "YES";
    *buf = 138478339;
    v26 = v8;
    if (!v10)
    {
      v16 = "NO";
    }

    v27 = 2112;
    v28 = v9;
    v29 = 2080;
    v30 = v16;
    _os_log_impl(&dword_25627E000, v14, OS_LOG_TYPE_DEFAULT, "token: %{private}@, uuid: %@, completionHandler: %s", buf, 0x20u);
  }

  if (v10)
  {
    v17 = [(MFAATokenManager *)self xpcConnection];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __77__MFAATokenManager_confirmActivationForAuthToken_withUUID_completionHandler___block_invoke;
    v23[3] = &unk_279831188;
    v18 = v10;
    v24 = v18;
    v19 = [v17 remoteObjectProxyWithErrorHandler:v23];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __77__MFAATokenManager_confirmActivationForAuthToken_withUUID_completionHandler___block_invoke_36;
    v21[3] = &unk_279831188;
    v22 = v18;
    [v19 confirmActivationForToken:v8 withUUID:v9 withReply:v21];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __77__MFAATokenManager_confirmActivationForAuthToken_withUUID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 3;
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
    v6 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __103__MFAATokenManager_requestMetadataForAuthToken_withUUID_requestedLocale_requestInfo_completionHandler___block_invoke_cold_2();
  }

  v7 = *(a1 + 32);
  v8 = [MEMORY[0x277CCA9B8] MFAA_errorWithDomain:@"MFAATokenManagerErrorDomain" code:-4];
  (*(v7 + 16))(v7, v8);
}

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__MFAATokenManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedManager_once != -1)
  {
    dispatch_once(&sharedManager_once, block);
  }

  v2 = sharedManager_sharedInstance;

  return v2;
}

uint64_t __33__MFAATokenManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_sharedInstance = [objc_alloc(*(a1 + 32)) _init];

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)isTokenValidForFeatures:(unint64_t)a3 token:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v19[0] = [v5 bytes];
    v19[1] = [v5 length];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __50__MFAATokenManager_isTokenValidForFeatures_token___block_invoke;
    v18[3] = &unk_279831220;
    v18[4] = &v20;
    v18[5] = &v24;
    DERDecodeSequenceWithBlock(v19, v18);
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v7 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v7 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v29 = a3;
      _os_log_impl(&dword_25627E000, v7, OS_LOG_TYPE_DEFAULT, "features: 0x%016lX", buf, 0xCu);
    }

    if (gLogObjects && gNumLogObjects >= 3)
    {
      v9 = *(gLogObjects + 16);
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

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v21 + 24))
      {
        v11 = "YES";
      }

      else
      {
        v11 = "NO";
      }

      *buf = 136315138;
      v29 = v11;
      _os_log_impl(&dword_25627E000, v9, OS_LOG_TYPE_DEFAULT, "foundProductCapabilities: %s", buf, 0xCu);
    }

    if (*(v21 + 24) == 1)
    {
      v12 = (a3 & ~v25[3]) == 0;
    }

    else
    {
      v12 = a3 < 2;
    }

    if (gLogObjects && gNumLogObjects >= 3)
    {
      v13 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [MFAATokenManager _init];
      }

      v13 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = "NO";
      if (v12)
      {
        v15 = "YES";
      }

      *buf = 136315138;
      v29 = v15;
      _os_log_impl(&dword_25627E000, v13, OS_LOG_TYPE_DEFAULT, "tokenValidForFeatures: %s", buf, 0xCu);
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t __50__MFAATokenManager_isTokenValidForFeatures_token___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*a2 != 0x2000000000000010)
  {
    goto LABEL_34;
  }

  v21 = -1431655766;
  memset(v20, 170, sizeof(v20));
  v19 = 0xAAAAAAAAAAAAAAAALL;
  if (DERDecodeSeqContentInit(a2 + 1, &v20[2]))
  {
    goto LABEL_34;
  }

  DERDecodeSeqNext(&v20[2], &v19);
  result = OUTLINED_FUNCTION_4();
  if (v4 || v19 != 2)
  {
    goto LABEL_33;
  }

  if (DERParseInteger(v20, &v21))
  {
    goto LABEL_34;
  }

  if (v21 != 2)
  {
LABEL_32:
    result = 0;
    goto LABEL_33;
  }

  v5 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 3)
  {
    v6 = *(gLogObjects + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_7();
      v24 = v5;
      OUTLINED_FUNCTION_5(&dword_25627E000, MEMORY[0x277D86220], v15, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }

    v6 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_25627E000, v6, OS_LOG_TYPE_DEBUG, "Found SMFiTokenPayload!", buf, 2u);
  }

  DERDecodeSeqNext(&v20[2], &v19);
  result = OUTLINED_FUNCTION_4();
  if (!v8 && v19 == 2)
  {
    if (!DERParseInteger(v20, &v21))
    {
      v9 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 3)
      {
        v10 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_7();
          v24 = v9;
          OUTLINED_FUNCTION_5(&dword_25627E000, MEMORY[0x277D86220], v16, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }

        v10 = MEMORY[0x277D86220];
        v11 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v23 = v21;
        _os_log_impl(&dword_25627E000, v10, OS_LOG_TYPE_INFO, "SMFiTokenPayload version: %u", buf, 8u);
      }

      if (v21 == 1)
      {
        DERDecodeSeqNext(&v20[2], &v19);
        result = OUTLINED_FUNCTION_4();
        if (!v12 && v19 == 4)
        {
          DERDecodeItem(v20, &v19);
          result = OUTLINED_FUNCTION_4();
          if (!v13 && v19 == 0x2000000000000011)
          {
            v17[0] = MEMORY[0x277D85DD0];
            v17[1] = 3221225472;
            v17[2] = __50__MFAATokenManager_isTokenValidForFeatures_token___block_invoke_40;
            v17[3] = &unk_279831220;
            v18 = *(a1 + 32);
            DERDecodeSequenceContentWithBlock(v20, v17);
            goto LABEL_32;
          }
        }

        goto LABEL_33;
      }
    }

LABEL_34:
    result = 3;
  }

LABEL_33:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __50__MFAATokenManager_isTokenValidForFeatures_token___block_invoke_40(uint64_t a1, void *a2, _BYTE *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*a2 != 0x2000000000000010)
  {
    goto LABEL_44;
  }

  v26 = -1431655766;
  memset(v25, 170, sizeof(v25));
  v24 = 0xAAAAAAAAAAAAAAAALL;
  if (DERDecodeSeqContentInit(a2 + 1, &v25[2]))
  {
    goto LABEL_44;
  }

  DERDecodeSeqNext(&v25[2], &v24);
  result = OUTLINED_FUNCTION_4();
  if (v6 || v24 != 2)
  {
    goto LABEL_43;
  }

  if (DERParseInteger(v25, &v26))
  {
    goto LABEL_44;
  }

  if (v26 != 202)
  {
    goto LABEL_42;
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
  *a3 = 1;
  v7 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 3)
  {
    v8 = *(gLogObjects + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_3();
      v29 = v7;
      OUTLINED_FUNCTION_5(&dword_25627E000, MEMORY[0x277D86220], v21, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }

    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_25627E000, v8, OS_LOG_TYPE_DEBUG, "Found SMFiProductCapabilities!", buf, 2u);
  }

  DERDecodeSeqNext(&v25[2], &v24);
  result = OUTLINED_FUNCTION_4();
  if (!v10 && v24 == 2)
  {
    if (!DERParseInteger(v25, &v26))
    {
      v11 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 3)
      {
        v12 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_3();
          v29 = v11;
          OUTLINED_FUNCTION_5(&dword_25627E000, MEMORY[0x277D86220], v22, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }

        v12 = MEMORY[0x277D86220];
        v13 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v28) = v26;
        _os_log_impl(&dword_25627E000, v12, OS_LOG_TYPE_INFO, "SMFiProductCapabilities version: %u", buf, 8u);
      }

      if (v26 == 1)
      {
        DERDecodeSeqNext(&v25[2], &v24);
        result = OUTLINED_FUNCTION_4();
        if (v14)
        {
          goto LABEL_43;
        }

        if (v24 != 4 || v25[1] != 8)
        {
          goto LABEL_43;
        }

        *(*(*(a1 + 40) + 8) + 24) = *v25[0];
        *(*(*(a1 + 40) + 8) + 24) = bswap64(*(*(*(a1 + 40) + 8) + 24));
        v16 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 3)
        {
          v17 = *(gLogObjects + 16);
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_3();
            v29 = v16;
            OUTLINED_FUNCTION_5(&dword_25627E000, MEMORY[0x277D86220], v23, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
          }

          v17 = MEMORY[0x277D86220];
          v18 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(*(*(a1 + 40) + 8) + 24);
          *buf = 134217984;
          v28 = v19;
          _os_log_impl(&dword_25627E000, v17, OS_LOG_TYPE_DEFAULT, "productCapabilities: 0x%016llX", buf, 0xCu);
        }

LABEL_42:
        result = 0;
        goto LABEL_43;
      }
    }

LABEL_44:
    result = 3;
  }

LABEL_43:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_init
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_25627E000, a2, OS_LOG_TYPE_DEBUG, "Initializing %@...", v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

void __103__MFAATokenManager_requestMetadataForAuthToken_withUUID_requestedLocale_requestInfo_completionHandler___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6(&dword_25627E000, v0, v1, "%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end