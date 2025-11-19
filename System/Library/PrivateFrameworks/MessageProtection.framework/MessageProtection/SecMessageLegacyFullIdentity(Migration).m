@interface SecMessageLegacyFullIdentity(Migration)
@end

@implementation SecMessageLegacyFullIdentity(Migration)

- (void)deleteItemWithPersistentRef:()Migration .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_22B404000, a2, OS_LOG_TYPE_ERROR, "Error occured while deleting the migrated persistent reference: %i", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

@end