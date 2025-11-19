@interface CDPDSecureBackupConfiguration
+ (CDPDSecureBackupConfiguration)configurationWithContext:(id)a3;
+ (CDPDSecureBackupConfiguration)configurationWithContext:(id)a3 andSession:(id)a4;
+ (id)_configurationRequestWithURLString:(id)a3;
- (id)_configurationInfoURLRequest;
- (id)_escrowConfigurationBag;
- (id)_escrowConfigurationBagFull;
- (id)_escrowProxyConfigurationURL;
- (id)_escrowProxyConfigurationURLRequest;
- (id)_escrowProxyURL;
- (id)_fetchConfigurationDictionary;
- (id)_fetchConfigurationWithRequest:(id)a3;
- (id)_fetchEscrowConfigurationBag;
- (id)_iCloudEnvironment;
- (id)_setupConfigurationURLs;
- (id)accountInfoFetchSetupDictionary;
- (id)escrowAuthInfoForCreateEscrowRecordFlow:(BOOL)a3;
@end

@implementation CDPDSecureBackupConfiguration

+ (CDPDSecureBackupConfiguration)configurationWithContext:(id)a3
{
  v4 = _SharedURLSession_onceToken;
  v5 = a3;
  if (v4 != -1)
  {
    +[CDPDSecureBackupConfiguration configurationWithContext:];
  }

  v6 = [a1 configurationWithContext:v5 andSession:_SharedURLSession_sharedURLSession];

  return v6;
}

+ (CDPDSecureBackupConfiguration)configurationWithContext:(id)a3 andSession:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(objc_opt_class());
  v8 = v7[1];
  v7[1] = v5;
  v9 = v5;

  v10 = v7[4];
  v7[4] = v6;

  return v7;
}

- (id)escrowAuthInfoForCreateEscrowRecordFlow:(BOOL)a3
{
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [CDPDSecureBackupConfiguration escrowAuthInfoForCreateEscrowRecordFlow:];
  }

  v5 = [MEMORY[0x277CBEB38] dictionary];
  if ([(CDPContext *)self->_context guestMode])
  {
    v6 = [(CDPDSecureBackupConfiguration *)self _iCloudEnvironment];
    if (v6)
    {
      [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277CFB2D0]];
    }

    else
    {
      v8 = _CDPLogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [CDPDSecureBackupConfiguration escrowAuthInfoForCreateEscrowRecordFlow:];
      }
    }

    v9 = [(CDPDSecureBackupConfiguration *)self _escrowProxyURL];
    if (v9)
    {
      [v5 setObject:v9 forKeyedSubscript:*MEMORY[0x277CFB2C0]];
      goto LABEL_29;
    }

    v12 = _CDPLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [CDPDSecureBackupConfiguration escrowAuthInfoForCreateEscrowRecordFlow:];
    }
  }

  else
  {
    v7 = [MEMORY[0x277CFD480] sharedInstance];
    v6 = [v7 iCloudEnv];

    if (v6)
    {
      [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277CFB2D0]];
    }

    else
    {
      v10 = _CDPLogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CDPDSecureBackupConfiguration escrowAuthInfoForCreateEscrowRecordFlow:];
      }
    }

    v11 = [MEMORY[0x277CFD480] sharedInstance];
    v9 = [v11 authToken];

    if (v9)
    {
      [v5 setObject:v9 forKeyedSubscript:*MEMORY[0x277CFB2B0]];
    }

    else
    {
      v13 = _CDPLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [CDPDSecureBackupConfiguration escrowAuthInfoForCreateEscrowRecordFlow:];
      }
    }

    v14 = [MEMORY[0x277CFD480] sharedInstance];
    v12 = [v14 escrowURL];

    if (v12)
    {
      [v5 setObject:v12 forKeyedSubscript:*MEMORY[0x277CFB2C0]];
    }

    else
    {
      v15 = _CDPLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [CDPDSecureBackupConfiguration escrowAuthInfoForCreateEscrowRecordFlow:];
      }
    }
  }

LABEL_29:
  if ([(CDPContext *)self->_context idmsRecovery])
  {
    [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CFB328]];
  }

  else
  {
    v16 = [(CDPContext *)self->_context findMyiPhoneUUID];

    if (v16)
    {
      [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CFB300]];
      v17 = [(CDPContext *)self->_context findMyiPhoneUUID];
      [v5 setObject:v17 forKeyedSubscript:*MEMORY[0x277CFB308]];
    }
  }

  v18 = [(CDPContext *)self->_context appleID];

  if (v18)
  {
    v19 = [(CDPContext *)self->_context appleID];
    [v5 setObject:v19 forKeyedSubscript:*MEMORY[0x277CFB2A8]];
  }

  v20 = [(CDPContext *)self->_context dsid];
  v21 = [v20 stringValue];

  if (v21)
  {
    v22 = [(CDPContext *)self->_context dsid];
    v23 = [v22 stringValue];
    [v5 setObject:v23 forKeyedSubscript:*MEMORY[0x277CFB2B8]];
  }

  v24 = [(CDPContext *)self->_context passwordEquivToken];

  if (v24)
  {
    v25 = [(CDPContext *)self->_context passwordEquivToken];
    [v5 setObject:v25 forKeyedSubscript:*MEMORY[0x277CFB2C8]];
  }

  v26 = [v5 copy];

  return v26;
}

- (id)accountInfoFetchSetupDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (([(CDPContext *)self->_context guestMode]& 1) == 0)
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CFB398]];
  }

  if ([(CDPContext *)self->_context type]== 3 || [(CDPContext *)self->_context type]== 6 || [(CDPContext *)self->_context type]== 7 || [(CDPContext *)self->_context type]== 15)
  {
    v4 = _CDPLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_24510B000, v4, OS_LOG_TYPE_DEFAULT, "Requesting the server suppress filtering", v8, 2u);
    }

    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CFB390]];
  }

  v5 = [(CDPDSecureBackupConfiguration *)self escrowAuthInfoForCreateEscrowRecordFlow:0];
  [v3 addEntriesFromDictionary:v5];

  v6 = [v3 copy];

  return v6;
}

- (id)_iCloudEnvironment
{
  v2 = [(CDPDSecureBackupConfiguration *)self _escrowConfigurationBag];
  v3 = [v2 objectForKeyedSubscript:@"iCloudEnv"];

  return v3;
}

- (id)_escrowProxyURL
{
  v2 = [(CDPDSecureBackupConfiguration *)self _escrowConfigurationBag];
  v3 = [v2 objectForKeyedSubscript:@"escrowProxyUrl"];

  return v3;
}

- (id)_escrowProxyConfigurationURL
{
  v2 = [(CDPDSecureBackupConfiguration *)self _setupConfigurationURLs];
  v3 = [v2 objectForKey:@"getRecoverySettings"];

  return v3;
}

- (id)_escrowConfigurationBag
{
  v2 = [(CDPDSecureBackupConfiguration *)self _escrowConfigurationBagFull];
  v3 = [v2 objectForKeyedSubscript:@"com.apple.mobileme"];
  v4 = [v3 objectForKeyedSubscript:@"com.apple.Dataclass.KeychainSync"];

  return v4;
}

- (id)_setupConfigurationURLs
{
  configurationURLs = self->_configurationURLs;
  if (!configurationURLs)
  {
    v4 = [(CDPDSecureBackupConfiguration *)self _fetchConfigurationDictionary];
    v5 = self->_configurationURLs;
    self->_configurationURLs = v4;

    configurationURLs = self->_configurationURLs;
  }

  return [(NSDictionary *)configurationURLs objectForKeyedSubscript:@"urls"];
}

- (id)_escrowConfigurationBagFull
{
  escrowConfigurationURLs = self->_escrowConfigurationURLs;
  if (!escrowConfigurationURLs)
  {
    v4 = [(CDPDSecureBackupConfiguration *)self _fetchEscrowConfigurationBag];
    v5 = self->_escrowConfigurationURLs;
    self->_escrowConfigurationURLs = v4;

    escrowConfigurationURLs = self->_escrowConfigurationURLs;
  }

  return escrowConfigurationURLs;
}

- (id)_escrowProxyConfigurationURLRequest
{
  v3 = objc_opt_class();
  v4 = [(CDPDSecureBackupConfiguration *)self _escrowProxyConfigurationURL];
  v5 = [v3 _configurationRequestWithURLString:v4];

  [v5 cdp_addClientInfoHeader];
  [v5 cdp_addAuthHeaderWithContext:self->_context];
  [v5 setValue:@"en-us" forHTTPHeaderField:@"Accept-Language"];
  [v5 setValue:@"application/xml" forHTTPHeaderField:@"Accept"];

  return v5;
}

- (id)_configurationInfoURLRequest
{
  v2 = objc_opt_class();

  return [v2 _configurationRequestWithURLString:@"https://setup.icloud.com/configurations/init?context=settings"];
}

+ (id)_configurationRequestWithURLString:(id)a3
{
  v3 = MEMORY[0x277CCAB70];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [MEMORY[0x277CBEBC0] URLWithString:v4];

  v7 = [v5 initWithURL:v6];
  [v7 cdp_addClientInfoHeader];

  return v7;
}

- (id)_fetchEscrowConfigurationBag
{
  v3 = [(CDPDSecureBackupConfiguration *)self _escrowProxyConfigurationURLRequest];
  v4 = [(CDPDSecureBackupConfiguration *)self _fetchConfigurationWithRequest:v3];

  return v4;
}

- (id)_fetchConfigurationDictionary
{
  v3 = [(CDPDSecureBackupConfiguration *)self _configurationInfoURLRequest];
  v4 = [(CDPDSecureBackupConfiguration *)self _fetchConfigurationWithRequest:v3];

  return v4;
}

- (id)_fetchConfigurationWithRequest:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v27 = 0;
    v28[0] = &v27;
    v28[1] = 0x3032000000;
    v28[2] = __Block_byref_object_copy__8;
    v28[3] = __Block_byref_object_dispose__8;
    v29 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v5 = 1;
    v6 = MEMORY[0x277D85DD0];
    do
    {
      v7 = _CDPLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v31 = v4;
        _os_log_debug_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEBUG, "Attempting to fetch configuration using request: %@", buf, 0xCu);
      }

      v8 = dispatch_semaphore_create(0);
      session = self->_session;
      v18[0] = v6;
      v18[1] = 3221225472;
      v18[2] = __64__CDPDSecureBackupConfiguration__fetchConfigurationWithRequest___block_invoke;
      v18[3] = &unk_278E26278;
      v20 = &v23;
      v21 = &v27;
      v22 = v5;
      v10 = v8;
      v19 = v10;
      v11 = [(NSURLSession *)session dataTaskWithRequest:v4 completionHandler:v18];
      [v11 resume];
      dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);

      ++v5;
    }

    while ((v24[3] & 1) != 0);
    v12 = *(v28[0] + 40);
    if (v12)
    {
      v13 = _CDPLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [CDPDSecureBackupConfiguration _fetchConfigurationWithRequest:v28];
      }

      v12 = *(v28[0] + 40);
    }

    v14 = v12;
    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&v27, 8);
  }

  else
  {
    v15 = _CDPLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CDPDSecureBackupConfiguration _fetchConfigurationWithRequest:];
    }

    v14 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v14;
}

void __64__CDPDSecureBackupConfiguration__fetchConfigurationWithRequest___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  *(*(*(a1 + 40) + 8) + 24) = 0;
  v10 = _CDPLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __64__CDPDSecureBackupConfiguration__fetchConfigurationWithRequest___block_invoke_cold_1();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 statusCode] == 500)
  {
    v11 = _CDPLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __64__CDPDSecureBackupConfiguration__fetchConfigurationWithRequest___block_invoke_cold_3();
    }

    *(*(*(a1 + 40) + 8) + 24) = *(a1 + 56) < 4;
  }

  else if (v9)
  {
    v12 = _CDPLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __64__CDPDSecureBackupConfiguration__fetchConfigurationWithRequest___block_invoke_cold_2(v9, v12);
    }
  }

  else
  {
    v16 = 0;
    v13 = [MEMORY[0x277CCAC58] propertyListWithData:v7 options:0 format:0 error:&v16];
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)escrowAuthInfoForCreateEscrowRecordFlow:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)escrowAuthInfoForCreateEscrowRecordFlow:.cold.5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)escrowAuthInfoForCreateEscrowRecordFlow:.cold.6()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_fetchConfigurationWithRequest:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(*a1 + 40);
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __64__CDPDSecureBackupConfiguration__fetchConfigurationWithRequest___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __64__CDPDSecureBackupConfiguration__fetchConfigurationWithRequest___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24510B000, a2, OS_LOG_TYPE_ERROR, "Failed to load configuraiton: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end