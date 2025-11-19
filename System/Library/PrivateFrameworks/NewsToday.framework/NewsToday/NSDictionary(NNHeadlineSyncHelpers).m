@interface NSDictionary(NNHeadlineSyncHelpers)
- (uint64_t)sync_headlineCount;
- (unint64_t)sync_type;
@end

@implementation NSDictionary(NNHeadlineSyncHelpers)

- (uint64_t)sync_headlineCount
{
  v1 = [a1 objectForKeyedSubscript:@"sync_headlineCount"];
  v2 = [v1 unsignedIntegerValue];

  return v2;
}

- (unint64_t)sync_type
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 objectForKeyedSubscript:@"sync_type"];
  v2 = [v1 unsignedIntegerValue];

  if (v2 >= 6)
  {
    v3 = NNSetupCompanionSyncLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = 134217984;
      v7 = v2;
      _os_log_impl(&dword_25BF21000, v3, OS_LOG_TYPE_INFO, "Unknown type %lu", &v6, 0xCu);
    }

    v2 = 0;
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

@end