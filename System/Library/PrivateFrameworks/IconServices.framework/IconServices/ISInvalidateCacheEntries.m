@interface ISInvalidateCacheEntries
@end

@implementation ISInvalidateCacheEntries

void ___ISInvalidateCacheEntries_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _ISDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    ___ISInvalidateCacheEntries_block_invoke_cold_1();
  }
}

void ___ISInvalidateCacheEntries_block_invoke_7(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  v5 = _ISDefaultLog();
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A77B8000, v6, OS_LOG_TYPE_INFO, "Clear entire cache started.", v7, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    ___ISInvalidateCacheEntries_block_invoke_7_cold_1();
  }
}

void ___ISInvalidateCacheEntries_block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_5(&dword_1A77B8000, v0, v1, "Error fetching remote object while clearing entire icon cache: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void ___ISInvalidateCacheEntries_block_invoke_7_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_5(&dword_1A77B8000, v0, v1, "Error clearing entire icon cache: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end