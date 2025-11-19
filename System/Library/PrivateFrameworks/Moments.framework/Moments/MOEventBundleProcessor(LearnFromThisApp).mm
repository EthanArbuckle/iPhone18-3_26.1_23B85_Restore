@interface MOEventBundleProcessor(LearnFromThisApp)
+ (void)readLearnedFromTheAppStatusTable;
@end

@implementation MOEventBundleProcessor(LearnFromThisApp)

+ (void)readLearnedFromTheAppStatusTable
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22D8C5000, a2, OS_LOG_TYPE_ERROR, "Could not read to the LFTA plist file, error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)persistLearnedFromTheAppStatusTable:()LearnFromThisApp .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22D8C5000, a2, OS_LOG_TYPE_ERROR, "couldn't write to the LFTA status plist file, %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end