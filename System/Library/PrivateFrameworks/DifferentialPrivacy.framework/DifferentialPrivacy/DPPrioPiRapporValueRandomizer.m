@interface DPPrioPiRapporValueRandomizer
@end

@implementation DPPrioPiRapporValueRandomizer

uint64_t __72___DPPrioPiRapporValueRandomizer_encodeClassIndices_withDimensionality___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!*(a1 + 48))
  {
    return 1;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(*(a1 + 56) + 4 * v6);
    v8 = v7 + v6 * [*(a1 + 32) prime];
    if (v8 >= a3)
    {
      break;
    }

    result = 1;
    *(a2 + 4 * v8) = 1;
    if (++v6 >= *(a1 + 48))
    {
      return result;
    }
  }

  v10 = +[_DPLog framework];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    __72___DPPrioPiRapporValueRandomizer_encodeClassIndices_withDimensionality___block_invoke_cold_1(a1, v6);
  }

  return 0;
}

void __72___DPPrioPiRapporValueRandomizer_encodeClassIndices_withDimensionality___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  [v2 unsignedIntegerValue];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

@end