@interface NSUserDefaults
@end

@implementation NSUserDefaults

uint64_t __38__NSUserDefaults_CEC__cecUserDefaults__block_invoke()
{
  v3[3] = *MEMORY[0x277D85DE8];
  cecUserDefaults_cecUserDefaults = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.CoreCEC"];
  v2[0] = @"deferLossOfLink";
  v2[1] = @"cecActiveSourceRecentlySentDuration";
  v3[0] = MEMORY[0x277CBEC38];
  v3[1] = &unk_28593C2A0;
  v2[2] = @"powerNotificationDebounceTime";
  v3[2] = &unk_28593C2B8;
  result = [cecUserDefaults_cecUserDefaults registerDefaults:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v3, v2, 3)}];
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

@end