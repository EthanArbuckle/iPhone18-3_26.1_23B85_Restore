@interface EDConversationPruningActivityManager
+ (OS_os_log)log;
+ (void)scheduleWithConversationManager:(id)a3;
@end

@implementation EDConversationPruningActivityManager

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__EDConversationPruningActivityManager_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_31 != -1)
  {
    dispatch_once(&log_onceToken_31, block);
  }

  v2 = log_log_31;

  return v2;
}

void __43__EDConversationPruningActivityManager_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_31;
  log_log_31 = v1;
}

+ (void)scheduleWithConversationManager:(id)a3
{
  v3 = a3;
  v4 = +[EDConversationPruningActivityManager log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_INFO, "Library purgeable upgrader has been scheduled.", buf, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__EDConversationPruningActivityManager_scheduleWithConversationManager___block_invoke_2;
  aBlock[3] = &unk_1E8251BE0;
  v5 = v3;
  v8 = v5;
  v6 = _Block_copy(aBlock);
  ef_xpc_activity_register();
}

void __72__EDConversationPruningActivityManager_scheduleWithConversationManager___block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  xpc_dictionary_set_int64(xdict, *MEMORY[0x1E69E9CB0], *MEMORY[0x1E69E9CC0]);
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x1E69E9C40], 0);
  xpc_dictionary_set_string(xdict, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D70]);
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x1E69E9D88], 1);
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x1E69E9DC0], 1);
}

void __72__EDConversationPruningActivityManager_scheduleWithConversationManager___block_invoke_2(uint64_t a1)
{
  v2 = +[EDConversationPruningActivityManager log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v2, OS_LOG_TYPE_INFO, "Started pruning conversations", buf, 2u);
  }

  [*(a1 + 32) pruneDatabasePurgingOldestEntries:0];
  v3 = +[EDConversationPruningActivityManager log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_INFO, "Finished pruning conversations", v4, 2u);
  }
}

@end