@interface NTPBBloomFilterInfo
@end

@implementation NTPBBloomFilterInfo

uint64_t __56__NTPBBloomFilterInfo_FCAdditions__fc_maybeContainsURL___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = FCWebURLResolutionLog;
  if (os_log_type_enabled(FCWebURLResolutionLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138477827;
    v7 = v5;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "no domain for %{private}@", &v6, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

@end