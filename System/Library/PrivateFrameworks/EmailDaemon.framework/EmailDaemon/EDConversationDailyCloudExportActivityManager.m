@interface EDConversationDailyCloudExportActivityManager
+ (OS_os_log)log;
+ (void)scheduleWithConversationExportDelegate:(id)a3 conversationManager:(id)a4;
@end

@implementation EDConversationDailyCloudExportActivityManager

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__EDConversationDailyCloudExportActivityManager_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_27 != -1)
  {
    dispatch_once(&log_onceToken_27, block);
  }

  v2 = log_log_27;

  return v2;
}

void __52__EDConversationDailyCloudExportActivityManager_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_27;
  log_log_27 = v1;
}

+ (void)scheduleWithConversationExportDelegate:(id)a3 conversationManager:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[EDConversationDailyCloudExportActivityManager log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_INFO, "Library purgeable upgrader has been scheduled.", buf, 2u);
  }

  v8 = [[EDConversationDailyiCloudExporter alloc] initWithDelegate:v5 conversationManager:v6];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __108__EDConversationDailyCloudExportActivityManager_scheduleWithConversationExportDelegate_conversationManager___block_invoke_2;
  aBlock[3] = &unk_1E8251BE0;
  v12 = v8;
  v9 = v8;
  v10 = _Block_copy(aBlock);
  ef_xpc_activity_register();
}

void __108__EDConversationDailyCloudExportActivityManager_scheduleWithConversationExportDelegate_conversationManager___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  xpc_dictionary_set_int64(v2, *MEMORY[0x1E69E9CB0], *MEMORY[0x1E69E9CC0]);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x1E69E9C40], 1);
  xpc_dictionary_set_string(v2, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D70]);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x1E69E9D88], 1);
  v3 = v2;
  v4 = _os_feature_enabled_impl();
  v5 = v3;
  v6 = MEMORY[0x1E69E9DA8];
  if (!v4)
  {
    v6 = MEMORY[0x1E69E9D98];
  }

  v7 = v5;
  xpc_dictionary_set_BOOL(v5, *v6, 1);
}

@end