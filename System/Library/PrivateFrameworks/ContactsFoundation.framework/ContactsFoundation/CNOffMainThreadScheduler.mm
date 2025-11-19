@interface CNOffMainThreadScheduler
@end

@implementation CNOffMainThreadScheduler

uint64_t __35___CNOffMainThreadScheduler_os_log__block_invoke()
{
  os_log_cn_once_object_1_1 = os_log_create("com.apple.contacts.reactive-extensions", "scheduling");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __42___CNOffMainThreadScheduler_performBlock___block_invoke(uint64_t a1)
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v2 = +[_CNOffMainThreadScheduler os_log];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __42___CNOffMainThreadScheduler_performBlock___block_invoke_cold_1();
    }
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t __59___CNOffMainThreadScheduler_performBlock_qualityOfService___block_invoke(uint64_t a1)
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v2 = +[_CNOffMainThreadScheduler os_log];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __42___CNOffMainThreadScheduler_performBlock___block_invoke_cold_1();
    }
  }

  return (*(*(a1 + 40) + 16))();
}

void __52___CNOffMainThreadScheduler_performCancelableBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v4 = +[_CNOffMainThreadScheduler os_log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __42___CNOffMainThreadScheduler_performBlock___block_invoke_cold_1();
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __69___CNOffMainThreadScheduler_performCancelableBlock_qualityOfService___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v4 = +[_CNOffMainThreadScheduler os_log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __42___CNOffMainThreadScheduler_performBlock___block_invoke_cold_1();
    }
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __53___CNOffMainThreadScheduler_afterDelay_performBlock___block_invoke(uint64_t a1)
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v2 = +[_CNOffMainThreadScheduler os_log];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __42___CNOffMainThreadScheduler_performBlock___block_invoke_cold_1();
    }
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t __70___CNOffMainThreadScheduler_afterDelay_performBlock_qualityOfService___block_invoke(uint64_t a1)
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v2 = +[_CNOffMainThreadScheduler os_log];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __42___CNOffMainThreadScheduler_performBlock___block_invoke_cold_1();
    }
  }

  return (*(*(a1 + 40) + 16))();
}

void __42___CNOffMainThreadScheduler_performBlock___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  v12 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696AF00] isMainThread];
  OUTLINED_FUNCTION_0_2();
  if (!v2)
  {
    v1 = 16;
  }

  v3 = *(v0 + v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1859F0000, v4, v5, "Work was requested to be performed off the main thread, but scheduler %{public}@ is performing on the main thread", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x1E69E9840];
}

@end