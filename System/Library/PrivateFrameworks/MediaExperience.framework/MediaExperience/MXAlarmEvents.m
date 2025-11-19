@interface MXAlarmEvents
+ (id)sharedInstance;
- (MXAlarmEvents)init;
- (void)handleAlarmEventNotification:(id)a3;
- (void)resetAlarmEvent:(id)a3;
- (void)setAlarmEvent:(double)a3 eventName:(id)a4;
@end

@implementation MXAlarmEvents

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_10 != -1)
  {
    +[MXAlarmEvents sharedInstance];
  }

  return sharedInstance_sSharedInstance_8;
}

void __31__MXAlarmEvents_sharedInstance__block_invoke()
{
  sharedInstance_sSharedInstance_8 = objc_alloc_init(MXAlarmEvents);
  [sharedInstance_sSharedInstance_8 resetAlarmEvent:@"com.apple.mediaexperience.silentmode.timer"];
  v0 = *(sharedInstance_sSharedInstance_8 + 8);

  xpc_set_event_stream_handler("com.apple.alarm", v0, &__block_literal_global_5_1);
}

- (MXAlarmEvents)init
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = MXAlarmEvents;
  v2 = [(MXAlarmEvents *)&v7 init];
  if (v2)
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2->mAccessQueue = dispatch_queue_create("com.apple.mediaexperience.MXAlarmEvents", v4);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)handleAlarmEventNotification:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9E40];
  FigXPCMessageCopyCFString();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setAlarmEvent:(double)a3 eventName:(id)a4
{
  mAccessQueue = self->mAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__MXAlarmEvents_setAlarmEvent_eventName___block_invoke;
  v5[3] = &unk_1E7AEBCA0;
  v5[4] = a4;
  *&v5[5] = a3;
  MXDispatchAsync("[MXAlarmEvents setAlarmEvent:eventName:]", "MXAlarmEvents.m", 92, 0, 0, mAccessQueue, v5);
}

void __41__MXAlarmEvents_setAlarmEvent_eventName___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) UTF8String];
  xpc_set_event();
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v4 = (*(a1 + 40) * 1000000000.0);
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  xpc_dictionary_set_uint64(v2, "Date", v3 + v4);
  xpc_dictionary_set_string(v2, "Type", "Monotonic");
  [*(a1 + 32) UTF8String];
  xpc_set_event();
  xpc_release(v2);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)resetAlarmEvent:(id)a3
{
  mAccessQueue = self->mAccessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__MXAlarmEvents_resetAlarmEvent___block_invoke;
  v4[3] = &unk_1E7AE7CE0;
  v4[4] = a3;
  MXDispatchAsync("[MXAlarmEvents resetAlarmEvent:]", "MXAlarmEvents.m", 111, 0, 0, mAccessQueue, v4);
}

uint64_t __33__MXAlarmEvents_resetAlarmEvent___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [*(a1 + 32) UTF8String];
  result = xpc_set_event();
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

@end