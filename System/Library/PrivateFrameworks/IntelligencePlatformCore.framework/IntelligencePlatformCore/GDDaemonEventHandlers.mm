@interface GDDaemonEventHandlers
+ (void)registerForLaunchEvents;
@end

@implementation GDDaemonEventHandlers

+ (void)registerForLaunchEvents
{
  v2 = GDDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C43F8000, v2, OS_LOG_TYPE_DEFAULT, "GDDaemonEventHandlers: registerLaunchEventHandlers called", v4, 2u);
  }

  v3 = MEMORY[0x1E69E96A0];
  xpc_set_event_stream_handler("com.apple.notifyd.matching", MEMORY[0x1E69E96A0], &unk_1F4415F18);
  xpc_set_event_stream_handler("com.apple.distnoted.matching", v3, &unk_1F4415F38);

  xpc_set_event_stream_handler("com.apple.locationd-events", v3, &unk_1F4415F58);
}

@end