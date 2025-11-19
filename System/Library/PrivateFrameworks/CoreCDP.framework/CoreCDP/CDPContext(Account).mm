@interface CDPContext(Account)
@end

@implementation CDPContext(Account)

+ (void)preflightContext:()Account .cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)preflightContext:()Account .cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 altDSID];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)preflightContext:()Account .cold.3(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 dsid];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)preflightContext:()Account .cold.4(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = [a1 appleID];
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

+ (void)preflightContext:()Account .cold.5()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)preflightContext:()Account .cold.6()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)preflightContext:()Account .cold.7()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)preflightContext:()Account .cold.8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end