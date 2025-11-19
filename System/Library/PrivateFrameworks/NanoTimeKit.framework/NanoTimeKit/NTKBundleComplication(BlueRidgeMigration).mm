@interface NTKBundleComplication(BlueRidgeMigration)
@end

@implementation NTKBundleComplication(BlueRidgeMigration)

- (void)_migrateToFamily:()BlueRidgeMigration withAllowedComplications:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "***** blue_ridge migration - bundle complication with bundle identifier %@ is missing", &v2, 0xCu);
}

@end