@interface DASBMHistogramBuilder
@end

@implementation DASBMHistogramBuilder

void __35___DASBMHistogramBuilder_histogram__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state])
  {
    v5 = *(a1 + 32);
    v4 = (a1 + 32);
    v6 = [v5 log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __35___DASBMHistogramBuilder_histogram__block_invoke_2_cold_1(v4, v3);
    }
  }
}

BOOL __35___DASBMHistogramBuilder_histogram__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 eventBody];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [v2 eventBody];
    v6 = [v5 performSelector:sel_starting] != 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void __66___DASBMHistogramBuilder_histogramOnResponseQueue_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) histogram];
  (*(*(a1 + 40) + 16))();
}

void __35___DASBMHistogramBuilder_histogram__block_invoke_2_cold_1(id *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [*a1 publisher];
  v4 = [a2 error];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1B6E2F000, v5, v6, "Failed to open sink for %@: %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

@end