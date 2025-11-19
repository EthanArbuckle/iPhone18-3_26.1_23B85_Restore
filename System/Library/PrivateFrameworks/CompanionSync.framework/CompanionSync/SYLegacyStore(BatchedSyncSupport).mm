@interface SYLegacyStore(BatchedSyncSupport)
@end

@implementation SYLegacyStore(BatchedSyncSupport)

- (void)_sendBatchChunk:()BatchedSyncSupport withState:then:.cold.2()
{
  OUTLINED_FUNCTION_16();
  v9 = *MEMORY[0x1E69E9840];
  v2 = v1;
  [OUTLINED_FUNCTION_14() count];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)processBatchChunkAtIndex:()BatchedSyncSupport encodedObjects:error:.cold.2(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a1;
  [OUTLINED_FUNCTION_14() count];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)processBatchChunkAck:()BatchedSyncSupport .cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)processBatchChunkAck:()BatchedSyncSupport .cold.4(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1DF835000, a2, OS_LOG_TYPE_ERROR, "Received unexpected batch sync chunk ACK: %u", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end