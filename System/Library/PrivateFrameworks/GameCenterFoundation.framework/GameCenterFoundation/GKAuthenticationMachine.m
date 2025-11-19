@interface GKAuthenticationMachine
+ (void)migratePreBlacktailAccountInformation;
+ (void)migratePreSundanceAccountInformation;
- (GKAuthenticationMachine)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GKAuthenticationMachine

- (GKAuthenticationMachine)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GKAuthenticationMachine;
  v5 = [(GKAuthenticationMachine *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountName"];
    accountName = v5->_accountName;
    v5->_accountName = v6;

    v5->_serverEnvironment = [v4 decodeInt32ForKey:@"serverEnvironment"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(GKAuthenticationMachine *)self accountName];
  if (v4)
  {
    [v5 encodeObject:v4 forKey:@"accountName"];
  }

  [v5 encodeInt32:-[GKAuthenticationMachine serverEnvironment](self forKey:{"serverEnvironment"), @"serverEnvironment"}];
}

+ (void)migratePreBlacktailAccountInformation
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 accountName];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_227904000, v3, OS_LOG_TYPE_ERROR, "TRANSFER PRE-OKEMO -- no ACAccount credential found:%@", v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

+ (void)migratePreSundanceAccountInformation
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_227904000, v1, OS_LOG_TYPE_DEBUG, "--> INCOMPLETE TRANSFER PRE-SUNDANCE playerID:%@ token:%@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void __63__GKAuthenticationMachine_migratePreSundanceAccountInformation__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    if (!os_log_GKGeneral)
    {
      v3 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      __63__GKAuthenticationMachine_migratePreSundanceAccountInformation__block_invoke_cold_1();
    }
  }
}

void __63__GKAuthenticationMachine_migratePreSundanceAccountInformation__block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_227904000, v0, OS_LOG_TYPE_ERROR, "TRANSFER PRE-SUNDANCE: failed to set credential: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end