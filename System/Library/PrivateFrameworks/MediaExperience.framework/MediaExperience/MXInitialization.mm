@interface MXInitialization
+ (void)AirPlayStartServicesInMXProcess;
+ (void)LoadAirPlaySenderFramework;
+ (void)initialize;
+ (void)notifyMXIsFullyInitialized;
+ (void)start;
+ (void)waitUntilMXIsFullyInitialized;
@end

@implementation MXInitialization

+ (void)waitUntilMXIsFullyInitialized
{
  v7 = *MEMORY[0x1E69E9840];
  [sIsMXFullyInitializedCondition lock];
  if ((sIsMXFullyInitialized & 1) == 0)
  {
    do
    {
      FigGetUpTimeNanoseconds();
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [sIsMXFullyInitializedCondition wait];
      if (dword_1EB75DE40)
      {
        v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    while (sIsMXFullyInitialized != 1);
  }

  [sIsMXFullyInitializedCondition unlock];
  v4 = *MEMORY[0x1E69E9840];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    sIsMXFullyInitialized = 0;
    sIsMXFullyInitializedCondition = objc_alloc_init(MEMORY[0x1E696AB30]);
  }
}

+ (void)start
{
  if (start_onceToken != -1)
  {
    +[MXInitialization start];
  }
}

void __25__MXInitialization_start__block_invoke()
{
  v0 = MXGetPerformanceLog();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B17A2000, v0, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MX initialization", &unk_1B19E5B76, v1, 2u);
  }
}

+ (void)notifyMXIsFullyInitialized
{
  if (notifyMXIsFullyInitialized_onceToken != -1)
  {
    +[MXInitialization notifyMXIsFullyInitialized];
  }
}

uint64_t __46__MXInitialization_notifyMXIsFullyInitialized__block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  [sIsMXFullyInitializedCondition lock];
  sIsMXFullyInitialized = 1;
  [sIsMXFullyInitializedCondition broadcast];
  v0 = MXGetPerformanceLog();
  if (os_signpost_enabled(v0))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B17A2000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MX initialization", &unk_1B19E5B76, buf, 2u);
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  result = [sIsMXFullyInitializedCondition unlock];
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

+ (void)LoadAirPlaySenderFramework
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = dlopen("/System/Library/PrivateFrameworks/AirPlaySender.framework/AirPlaySender", 4);
  airplaysender = v2;
  if (v2)
  {
    sAirPlayStartServicesInMXProcess = dlsym(v2, "AirPlayStartServicesInMXProcess");
    if (!sAirPlayStartServicesInMXProcess)
    {
      +[MXInitialization LoadAirPlaySenderFramework];
    }
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = *MEMORY[0x1E69E9840];
}

+ (void)AirPlayStartServicesInMXProcess
{
  v6 = *MEMORY[0x1E69E9840];
  +[MXInitialization LoadAirPlaySenderFramework];
  v2 = sAirPlayStartServicesInMXProcess;
  if (sAirPlayStartServicesInMXProcess)
  {
    v3 = *MEMORY[0x1E69E9840];

    v2();
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v5 = *MEMORY[0x1E69E9840];
  }
}

@end