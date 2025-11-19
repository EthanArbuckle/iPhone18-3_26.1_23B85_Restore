@interface MKApplicationAnalytics
@end

@implementation MKApplicationAnalytics

id __46__MKApplicationAnalytics_send_mismatchedApps___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"matched_apps";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 32)];
  v7[1] = @"mismatched_apps";
  v8[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40)];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end