@interface FigContinuityCaptureNotificationMonitor
+ (id)sharedInstance;
+ (void)initialize;
- (FigContinuityCaptureNotificationMonitor)init;
- (void)_handleContinuityCaptureNotification:(id)a3;
- (void)dealloc;
@end

@implementation FigContinuityCaptureNotificationMonitor

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

+ (id)sharedInstance
{
  if (sharedInstance_sOnceToken != -1)
  {
    +[FigContinuityCaptureNotificationMonitor sharedInstance];
  }

  return sharedInstance_sSharedContinuityCaptureNotificationMonitor;
}

FigContinuityCaptureNotificationMonitor *__57__FigContinuityCaptureNotificationMonitor_sharedInstance__block_invoke()
{
  result = objc_alloc_init(FigContinuityCaptureNotificationMonitor);
  sharedInstance_sSharedContinuityCaptureNotificationMonitor = result;
  return result;
}

- (void)_handleContinuityCaptureNotification:(id)a3
{
  v4 = [a3 name];
  if (v4)
  {
    v5 = v4;
    v6 = [a3 object];
    if (dword_1ED8441B0)
    {
      v23 = 0;
      v22 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if ([v5 isEqualToString:{@"ContinuityCaptureNotificationOnBoardingComplete", v12, v13}] && objc_msgSend(v6, "isEqualToString:", @"YES"))
    {
      v8 = [MEMORY[0x1E695DF00] now];
      if (dword_1ED8441B0)
      {
        v23 = 0;
        v22 = OS_LOG_TYPE_DEFAULT;
        v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v10 = v23;
        if (os_log_type_enabled(v9, v22))
        {
          v11 = v10;
        }

        else
        {
          v11 = v10 & 0xFFFFFFFE;
        }

        if (v11)
        {
          v14 = 136315906;
          v15 = "[FigContinuityCaptureNotificationMonitor _handleContinuityCaptureNotification:]";
          v16 = 2112;
          v17 = @"com.apple.cameracapture.volatile";
          v18 = 2112;
          v19 = @"ContinuityCaptureLastUsedDate";
          v20 = 2112;
          v21 = v8;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CFPreferencesSetValue(@"ContinuityCaptureLastUsedDate", v8, @"com.apple.cameracapture.volatile", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
    }
  }
}

- (FigContinuityCaptureNotificationMonitor)init
{
  v4.receiver = self;
  v4.super_class = FigContinuityCaptureNotificationMonitor;
  v2 = [(FigContinuityCaptureNotificationMonitor *)&v4 init];
  if (v2)
  {
    [objc_msgSend(MEMORY[0x1E696ABB0] "defaultCenter")];
  }

  return v2;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x1E696ABB0] "defaultCenter")];
  v3.receiver = self;
  v3.super_class = FigContinuityCaptureNotificationMonitor;
  [(FigContinuityCaptureNotificationMonitor *)&v3 dealloc];
}

@end