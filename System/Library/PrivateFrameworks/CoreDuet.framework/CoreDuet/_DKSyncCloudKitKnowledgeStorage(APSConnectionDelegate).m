@interface _DKSyncCloudKitKnowledgeStorage(APSConnectionDelegate)
@end

@implementation _DKSyncCloudKitKnowledgeStorage(APSConnectionDelegate)

- (void)connection:()APSConnectionDelegate didReceivePublicToken:.cold.1()
{
  OUTLINED_FUNCTION_16();
  v7 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)connection:()APSConnectionDelegate didReceiveIncomingMessage:.cold.1()
{
  OUTLINED_FUNCTION_16();
  v8 = *MEMORY[0x1E69E9840];
  [objc_opt_class() description];
  objc_claimAutoreleasedReturnValue();
  v1 = [OUTLINED_FUNCTION_16_0() topic];
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)connection:()APSConnectionDelegate didReceiveIncomingMessage:.cold.2()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)connection:()APSConnectionDelegate didReceiveIncomingMessage:.cold.3()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_class() description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

@end