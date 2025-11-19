@interface NDAppConfigAnalyticsPayloadAssemblerConfigProvider
- (NDAppConfigAnalyticsPayloadAssemblerConfigProvider)init;
- (NDAppConfigAnalyticsPayloadAssemblerConfigProvider)initWithAppConfigurationManager:(id)a3;
- (void)fetchConfigWithCompletion:(id)a3;
@end

@implementation NDAppConfigAnalyticsPayloadAssemblerConfigProvider

- (NDAppConfigAnalyticsPayloadAssemblerConfigProvider)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NDAppConfigAnalyticsPayloadAssemblerConfigProvider init]";
    v10 = 2080;
    v11 = "NDAppConfigAnalyticsPayloadAssemblerConfigProvider.m";
    v12 = 1024;
    v13 = 24;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BDF7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NDAppConfigAnalyticsPayloadAssemblerConfigProvider init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NDAppConfigAnalyticsPayloadAssemblerConfigProvider)initWithAppConfigurationManager:(id)a3
{
  v5 = a3;
  if (!v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDAppConfigAnalyticsPayloadAssemblerConfigProvider initWithAppConfigurationManager:];
  }

  v9.receiver = self;
  v9.super_class = NDAppConfigAnalyticsPayloadAssemblerConfigProvider;
  v6 = [(NDAppConfigAnalyticsPayloadAssemblerConfigProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appConfigurationManager, a3);
  }

  return v7;
}

- (void)fetchConfigWithCompletion:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDAppConfigAnalyticsPayloadAssemblerConfigProvider fetchConfigWithCompletion:];
  }

  v5 = [(NDAppConfigAnalyticsPayloadAssemblerConfigProvider *)self appConfigurationManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__NDAppConfigAnalyticsPayloadAssemblerConfigProvider_fetchConfigWithCompletion___block_invoke;
  v7[3] = &unk_27997AB48;
  v8 = v4;
  v6 = v4;
  [v5 fetchAppConfigurationIfNeededWithCompletion:v7];
}

void __80__NDAppConfigAnalyticsPayloadAssemblerConfigProvider_fetchConfigWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = [v6 analyticsEnvelopeContentTypeConfigsForEnvironment:FCDefaultsReadEndpointEnvironment()];
    (*(*(a1 + 32) + 16))(*(a1 + 32), v5, [v6 analyticsEndpointMaxPayloadSize], 0);
  }
}

- (void)initWithAppConfigurationManager:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "appConfigurationManager"];
  *buf = 136315906;
  v3 = "[NDAppConfigAnalyticsPayloadAssemblerConfigProvider initWithAppConfigurationManager:]";
  v4 = 2080;
  v5 = "NDAppConfigAnalyticsPayloadAssemblerConfigProvider.m";
  v6 = 1024;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_25BDF7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

- (void)fetchConfigWithCompletion:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "completion"];
  *buf = 136315906;
  v3 = "[NDAppConfigAnalyticsPayloadAssemblerConfigProvider fetchConfigWithCompletion:]";
  v4 = 2080;
  v5 = "NDAppConfigAnalyticsPayloadAssemblerConfigProvider.m";
  v6 = 1024;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_25BDF7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

@end