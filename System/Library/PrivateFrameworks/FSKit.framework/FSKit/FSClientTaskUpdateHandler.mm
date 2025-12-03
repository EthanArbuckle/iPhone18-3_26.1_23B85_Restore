@interface FSClientTaskUpdateHandler
- (void)taskStatusUpdate:(id)update;
@end

@implementation FSClientTaskUpdateHandler

- (void)taskStatusUpdate:(id)update
{
  updateCopy = update;
  v5 = fskit_std_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [FSClientTaskUpdateHandler taskStatusUpdate:updateCopy];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = _Block_copy(selfCopy->_taskHandler);
  objc_sync_exit(selfCopy);

  if (v7)
  {
    v7[2](v7, updateCopy, 0);
  }

  v8 = fskit_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [FSClientTaskUpdateHandler taskStatusUpdate:updateCopy];
  }
}

- (void)taskStatusUpdate:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [a1 taskID];
  [a1 taskState];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_0(&dword_24A929000, v3, v4, "%s:start:taskID(%@):taskState(%d)", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)taskStatusUpdate:(void *)a1 .cold.2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [a1 taskID];
  [a1 taskState];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_0(&dword_24A929000, v3, v4, "%s:end:taskID(%@):taskState(%d)", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

@end