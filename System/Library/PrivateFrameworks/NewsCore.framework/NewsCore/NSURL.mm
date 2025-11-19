@interface NSURL
@end

@implementation NSURL

uint64_t __43__NSURL_FCAdditions__fc_fileSystemFreeSize__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543362;
    v7 = v5;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "failed to lookup file system free size with error: %{public}@", &v6, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0x7FFFFFFFFFFFFFFFLL;
}

uint64_t __69__NSURL_FCAdditions__fc_volumeAvailableCapacityForOpportunisticUsage__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543362;
    v7 = v5;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "failed to lookup volume available capacity for opportunistic usage with error: %{public}@", &v6, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0x7FFFFFFFFFFFFFFFLL;
}

@end