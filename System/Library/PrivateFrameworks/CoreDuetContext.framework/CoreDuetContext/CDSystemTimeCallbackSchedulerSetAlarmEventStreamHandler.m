@interface CDSystemTimeCallbackSchedulerSetAlarmEventStreamHandler
@end

@implementation CDSystemTimeCallbackSchedulerSetAlarmEventStreamHandler

void ___CDSystemTimeCallbackSchedulerSetAlarmEventStreamHandler_block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF00];
  v4 = a2;
  v5 = [v3 date];
  string = xpc_dictionary_get_string(v4, *MEMORY[0x1E69E9E40]);

  xpc_set_event();
  v7 = _os_activity_create(&dword_1A9611000, "CoreDuet: ContextStore com.apple.alarm handler", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  *v11 = 0;
  *&v11[8] = 0;
  os_activity_scope_enter(v7, v11);
  os_activity_scope_leave(v11);

  v8 = [MEMORY[0x1E6997908] contextChannel];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = _CDFormattedDate();
    *v11 = 138412546;
    *&v11[4] = v9;
    *&v11[12] = 2080;
    *&v11[14] = string;
    _os_log_impl(&dword_1A9611000, v8, OS_LOG_TYPE_DEFAULT, "com.apple.alarm xpc event handler at %@ for %s", v11, 0x16u);
  }

  [*(a1 + 32) _handleCallbackAtDate:v5];
  v10 = *MEMORY[0x1E69E9840];
}

@end