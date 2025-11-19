@interface ICDeviceMigrationState(CloudKit)
@end

@implementation ICDeviceMigrationState(CloudKit)

- (void)objectWasFetchedFromCloudWithRecord:()CloudKit accountID:force:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 identifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_214D51000, a2, OS_LOG_TYPE_DEBUG, "ICAccount (%@) does not have a user record name. Fetching it now.", &v4, 0xCu);
}

@end