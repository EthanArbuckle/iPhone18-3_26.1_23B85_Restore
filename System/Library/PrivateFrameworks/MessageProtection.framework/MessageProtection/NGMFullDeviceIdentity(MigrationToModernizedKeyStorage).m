@interface NGMFullDeviceIdentity(MigrationToModernizedKeyStorage)
@end

@implementation NGMFullDeviceIdentity(MigrationToModernizedKeyStorage)

- (void)deleteKeyWithTag:()MigrationToModernizedKeyStorage .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_fault_impl(&dword_22B404000, a2, OS_LOG_TYPE_FAULT, "Deletion of a keychain item failed for after migration with error: %i", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

@end