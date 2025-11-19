@interface MSDKManagedDevice(dataCollection)
- (void)getCurrentAppUsageSessionUUID;
@end

@implementation MSDKManagedDevice(dataCollection)

- (void)getCurrentAppUsageSessionUUID
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[MSDKManagedDevice(dataCollection) getCurrentAppUsageSessionUUID]";
  _os_log_error_impl(&dword_259B7D000, log, OS_LOG_TYPE_ERROR, "%s: Failed to setup XPC connection.", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)collectAppUsageWithSessionStart:()dataCollection andEnd:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[MSDKManagedDevice(dataCollection) collectAppUsageWithSessionStart:andEnd:]";
  _os_log_error_impl(&dword_259B7D000, log, OS_LOG_TYPE_ERROR, "%s: Failed to setup XPC connection.", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end