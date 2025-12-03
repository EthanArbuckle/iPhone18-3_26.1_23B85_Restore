@interface OspreyDeviceAuthentication
- (OspreyDeviceAuthentication)initWithChannel:(id)channel connectionPreferences:(id)preferences allPreferences:(id)allPreferences;
- (id)_currentStrategy;
- (void)setCurrentStrategyVersion:(unint64_t)version;
- (void)signData:(id)data success:(id)success failure:(id)failure;
@end

@implementation OspreyDeviceAuthentication

- (OspreyDeviceAuthentication)initWithChannel:(id)channel connectionPreferences:(id)preferences allPreferences:(id)allPreferences
{
  channelCopy = channel;
  preferencesCopy = preferences;
  allPreferencesCopy = allPreferences;
  v26.receiver = self;
  v26.super_class = OspreyDeviceAuthentication;
  v11 = [(OspreyDeviceAuthentication *)&v26 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_allPreferences, allPreferences);
    objc_storeStrong(&v12->_connectionPreferences, preferences);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __83__OspreyDeviceAuthentication_initWithChannel_connectionPreferences_allPreferences___block_invoke;
    v24[3] = &unk_2799F2498;
    v14 = dictionary;
    v25 = v14;
    v15 = MEMORY[0x25F8A5BA0](v24);
    v16 = [[OspreyMescalAuthentication alloc] initWithChannel:channelCopy connectionPreferences:preferencesCopy];
    (v15)[2](v15, v16);
    v17 = [[OspreyAbsintheAuthenticator alloc] initWithChannel:channelCopy connectionPreferences:preferencesCopy];
    (v15)[2](v15, v17);
    strategies = v12->_strategies;
    v12->_strategies = v14;
    v19 = v14;

    deviceAuthenticationVersion = [preferencesCopy deviceAuthenticationVersion];
    v21 = deviceAuthenticationVersion;
    if (deviceAuthenticationVersion)
    {
      integerValue = [deviceAuthenticationVersion integerValue];
    }

    else
    {
      integerValue = 1;
    }

    [(OspreyDeviceAuthentication *)v12 setCurrentStrategyVersion:integerValue];
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

- (void)setCurrentStrategyVersion:(unint64_t)version
{
  allKeys = [(NSDictionary *)self->_strategies allKeys];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:version];
  v7 = [allKeys containsObject:v6];

  OspreyLoggingInit();
  if (v7)
  {
    if (os_log_type_enabled(OspreyLogContextDeviceAuth, OS_LOG_TYPE_DEBUG))
    {
      [OspreyDeviceAuthentication setCurrentStrategyVersion:];
    }

    self->_currentStrategyVersion = version;
    self->_hasCurrentStrategyVersion = 1;
    deviceAttestionVersion = [(OspreyConnectionPreferences *)self->_connectionPreferences deviceAttestionVersion];
    integerValue = [deviceAttestionVersion integerValue];

    if (integerValue != self->_currentStrategyVersion)
    {
      OspreyLoggingInit();
      v10 = OspreyLogContextDeviceAuth;
      if (os_log_type_enabled(OspreyLogContextDeviceAuth, OS_LOG_TYPE_DEBUG))
      {
        [(OspreyDeviceAuthentication *)&self->_currentStrategyVersion setCurrentStrategyVersion:integerValue, v10];
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

- (void)signData:(id)data success:(id)success failure:(id)failure
{
  dataCopy = data;
  successCopy = success;
  failureCopy = failure;
  _currentStrategy = [(OspreyDeviceAuthentication *)self _currentStrategy];
  if (_currentStrategy)
  {
    _currentStrategy2 = [(OspreyDeviceAuthentication *)self _currentStrategy];
    [_currentStrategy2 signData:dataCopy success:successCopy failure:failureCopy];
  }

  else
  {
    _currentStrategy2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"OspreyDeviceAuthentication" code:1 userInfo:&unk_286FA6DD8];
    failureCopy[2](failureCopy, _currentStrategy2);
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