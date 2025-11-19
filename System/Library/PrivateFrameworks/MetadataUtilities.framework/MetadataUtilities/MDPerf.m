@interface MDPerf
@end

@implementation MDPerf

os_log_t ___MDPerf_QueryLog_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = os_log_create("com.apple.spotlight.performance", "query");
  _MDPerf_QueryLog_sQueryLog = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

os_log_t ___MDPerf_LifeCycleLog_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = os_log_create("com.apple.spotlight.performance", "index_lifecycle");
  _MDPerf_LifeCycleLog_sIndexLifeCycle = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

os_log_t ___MDPerf_IndexingLog_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = os_log_create("com.apple.spotlight.performance", "indexing");
  _MDPerf_IndexingLog_sIndexingLog = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

os_log_t ___MDPerf_SignpostLog_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = os_log_create("com.apple.spotlight.performance", "singposts");
  _MDPerf_SignpostLog_sIndexingLog = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

@end