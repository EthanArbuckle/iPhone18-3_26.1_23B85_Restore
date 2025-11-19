@interface NSNumberComparatorBlock
@end

@implementation NSNumberComparatorBlock

uint64_t br_NSNumberComparatorBlock_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    br_NSNumberComparatorBlock_block_invoke_cold_1();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    br_NSNumberComparatorBlock_block_invoke_cold_2();
  }

  v6 = [v4 compare:v5];

  return v6;
}

void br_NSNumberComparatorBlock_block_invoke_cold_1()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = brc_bread_crumbs("br_NSNumberComparatorBlock_block_invoke", 14);
  v1 = brc_default_log(0, 0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v2, v3, "[CRIT] Assertion failed: [obj1 isKindOfClass:NSNumber.class]%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void br_NSNumberComparatorBlock_block_invoke_cold_2()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = brc_bread_crumbs("br_NSNumberComparatorBlock_block_invoke", 15);
  v1 = brc_default_log(0, 0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v2, v3, "[CRIT] Assertion failed: [obj2 isKindOfClass:NSNumber.class]%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

@end