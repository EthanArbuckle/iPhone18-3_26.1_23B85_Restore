@interface DASSubmissionRateLimiter
@end

@implementation DASSubmissionRateLimiter

uint64_t __42___DASSubmissionRateLimiter_sharedLimiter__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedLimiter_limitation = objc_alloc_init(objc_opt_class());

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __33___DASSubmissionRateLimiter_init__block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __33___DASSubmissionRateLimiter_init__block_invoke_6_cold_1();
  }

  return [*(a1 + 32) timerHandler];
}

void __33___DASSubmissionRateLimiter_init__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  state64 = 0;
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __33___DASSubmissionRateLimiter_init__block_invoke_cold_1();
  }

  if (!notify_get_state([*(a1 + 32) token], &state64))
  {
    [*(a1 + 32) setTesting:state64 != 0];
    v3 = [*(a1 + 32) log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "testing")}];
      *buf = 138412290;
      v8 = v4;
      _os_log_impl(&dword_1B6E2F000, v3, OS_LOG_TYPE_DEFAULT, "Limiter override state = %@", buf, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

@end