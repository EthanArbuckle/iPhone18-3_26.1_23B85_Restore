@interface FigCaptureGameModeMonitor
+ (void)initialize;
- (BOOL)isGameModeEnabled;
- (FigCaptureGameModeMonitor)initWithStateChangeHandler:(id)handler;
- (void)dealloc;
@end

@implementation FigCaptureGameModeMonitor

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (FigCaptureGameModeMonitor)initWithStateChangeHandler:(id)handler
{
  v11.receiver = self;
  v11.super_class = FigCaptureGameModeMonitor;
  v4 = [(FigCaptureGameModeMonitor *)&v11 init];
  if (v4)
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    if ([processInfo isDeviceCertifiedFor:*MEMORY[0x1E6973FB0]])
    {
      v4->_gameModeNotifyToken = 0;
      v4->_gameModeStateChangeHandler = [handler copy];
      uTF8String = [@"com.apple.system.console_mode_changed_camera_jettison_s2r" UTF8String];
      global_queue = dispatch_get_global_queue(0, 0);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __56__FigCaptureGameModeMonitor_initWithStateChangeHandler___block_invoke;
      handler[3] = &unk_1E7991270;
      handler[4] = v4;
      if (!notify_register_dispatch(uTF8String, &v4->_gameModeNotifyToken, global_queue, handler))
      {
        return v4;
      }

      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [FigCaptureGameModeMonitor initWithStateChangeHandler:?];
    return 0;
  }

  return v4;
}

- (void)dealloc
{
  notify_cancel(self->_gameModeNotifyToken);
  v3.receiver = self;
  v3.super_class = FigCaptureGameModeMonitor;
  [(FigCaptureGameModeMonitor *)&v3 dealloc];
}

- (BOOL)isGameModeEnabled
{
  state64 = 0;
  if (notify_get_state(self->_gameModeNotifyToken, &state64) || state64 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return state64 == 1;
}

uint64_t __56__FigCaptureGameModeMonitor_initWithStateChangeHandler___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 16);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end