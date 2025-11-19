@interface BRAutoShareAcceptOperation
- (void)main;
@end

@implementation BRAutoShareAcceptOperation

- (void)main
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 296);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __34__BRAutoShareAcceptOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 url];
  [v4 completedWithResult:v6 error:v5];
}

@end