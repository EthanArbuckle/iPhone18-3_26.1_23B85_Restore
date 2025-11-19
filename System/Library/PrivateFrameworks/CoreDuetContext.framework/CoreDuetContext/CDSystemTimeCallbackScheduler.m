@interface CDSystemTimeCallbackScheduler
@end

@implementation CDSystemTimeCallbackScheduler

void __48___CDSystemTimeCallbackScheduler_sharedInstance__block_invoke()
{
  v0 = [[_CDSystemTimeCallbackScheduler alloc] initWithEventNameRoot:@"com.apple.ContextStore"];
  v1 = sharedInstance_scheduler;
  sharedInstance_scheduler = v0;

  v2 = sharedInstance_scheduler;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    __48___CDSystemTimeCallbackScheduler_sharedInstance__block_invoke_cold_1();
  }

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = ___CDSystemTimeCallbackSchedulerSetAlarmEventStreamHandler_block_invoke;
  handler[3] = &unk_1E7886E70;
  v5 = v2;
  v3 = v2;
  xpc_set_event_stream_handler("com.apple.alarm", 0, handler);
}

@end