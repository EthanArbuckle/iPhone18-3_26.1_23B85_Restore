@interface OspreyDeviceAuthentication
- (OspreyDeviceAuthentication)initWithChannel:(id)a3 connectionPreferences:(id)a4 allPreferences:(id)a5;
- (id)_currentStrategy;
- (void)setCurrentStrategyVersion:(unint64_t)a3;
- (void)signData:(id)a3 success:(id)a4 failure:(id)a5;
@end

@implementation OspreyDeviceAuthentication

- (OspreyDeviceAuthentication)initWithChannel:(id)a3 connectionPreferences:(id)a4 allPreferences:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v26.receiver = self;
  v26.super_class = OspreyDeviceAuthentication;
  v11 = [(OspreyDeviceAuthentication *)&v26 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_allPreferences, a5);
    objc_storeStrong(&v12->_connectionPreferences, a4);
    v13 = [MEMORY[0x277CBEB38] dictionary];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __83__OspreyDeviceAuthentication_initWithChannel_connectionPreferences_allPreferences___block_invoke;
    v24[3] = &unk_2799F2498;
    v14 = v13;
    v25 = v14;
    v15 = MEMORY[0x25F8A5BA0](v24);
    v16 = [[OspreyMescalAuthentication alloc] initWithChannel:v8 connectionPreferences:v9];
    (v15)[2](v15, v16);
    v17 = [[OspreyAbsintheAuthenticator alloc] initWithChannel:v8 connectionPreferences:v9];
    (v15)[2](v15, v17);
    strategies = v12->_strategies;
    v12->_strategies = v14;
    v19 = v14;

    v20 = [v9 deviceAuthenticationVersion];
    v21 = v20;
    if (v20)
    {
      v22 = [v20 integerValue];
    }

    else
    {
      v22 = 1;
    }

    [(OspreyDeviceAuthentication *)v12 setCurrentStrategyVersion:v22];
  }

  return v12;
}

void __83__OspreyDeviceAuthentication_initWithChannel_connectionPreferences_allPreferences___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCABB0];
  v4 = a2;
  v5 = [v3 numberWithUnsignedInteger:{objc_msgSend(v4, "authenticationStrategyVersion")}];
  [v2 setObject:v4 forKey:v5];
}

- (void)setCurrentStrategyVersion:(unint64_t)a3
{
  v5 = [(NSDictionary *)self->_strategies allKeys];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v7 = [v5 containsObject:v6];

  OspreyLoggingInit();
  if (v7)
  {
    if (os_log_type_enabled(OspreyLogContextDeviceAuth, OS_LOG_TYPE_DEBUG))
    {
      [OspreyDeviceAuthentication setCurrentStrategyVersion:];
    }

    self->_currentStrategyVersion = a3;
    self->_hasCurrentStrategyVersion = 1;
    v8 = [(OspreyConnectionPreferences *)self->_connectionPreferences deviceAttestionVersion];
    v9 = [v8 integerValue];

    if (v9 != self->_currentStrategyVersion)
    {
      OspreyLoggingInit();
      v10 = OspreyLogContextDeviceAuth;
      if (os_log_type_enabled(OspreyLogContextDeviceAuth, OS_LOG_TYPE_DEBUG))
      {
        [(OspreyDeviceAuthentication *)&self->_currentStrategyVersion setCurrentStrategyVersion:v9, v10];
      }

      [(OspreyConnectionPreferences *)self->_connectionPreferences resetCachedDeviceAttestation];
      [(OspreyPreferences *)self->_allPreferences setConnectionPreferences:self->_connectionPreferences];
      [(OspreyPreferences *)self->_allPreferences synchronize];
    }
  }

  else if (os_log_type_enabled(OspreyLogContextDeviceAuth, OS_LOG_TYPE_ERROR))
  {
    [OspreyDeviceAuthentication setCurrentStrategyVersion:];
  }
}

- (id)_currentStrategy
{
  if (self->_hasCurrentStrategyVersion)
  {
    strategies = self->_strategies;
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_currentStrategyVersion];
    v4 = [(NSDictionary *)strategies objectForKey:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)signData:(id)a3 success:(id)a4 failure:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(OspreyDeviceAuthentication *)self _currentStrategy];
  if (v10)
  {
    v11 = [(OspreyDeviceAuthentication *)self _currentStrategy];
    [v11 signData:v12 success:v8 failure:v9];
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"OspreyDeviceAuthentication" code:1 userInfo:&unk_286FA6DD8];
    v9[2](v9, v11);
  }
}

- (void)setCurrentStrategyVersion:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(&dword_25DDE6000, v0, OS_LOG_TYPE_ERROR, "%s Attempted to use unknown device auth version: %lu", v1, 0x16u);
}

- (void)setCurrentStrategyVersion:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(&dword_25DDE6000, v0, OS_LOG_TYPE_DEBUG, "%s Configuring with device auth version: %lu", v1, 0x16u);
}

- (void)setCurrentStrategyVersion:(os_log_t)log .cold.3(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = 136315650;
  v5 = "[OspreyDeviceAuthentication setCurrentStrategyVersion:]";
  v6 = 2048;
  v7 = a2;
  v8 = 2048;
  v9 = v3;
  _os_log_debug_impl(&dword_25DDE6000, log, OS_LOG_TYPE_DEBUG, "%s Purging cache device attestation data due to version mismatch [cached: %lu, current: %lu]", &v4, 0x20u);
}

@end