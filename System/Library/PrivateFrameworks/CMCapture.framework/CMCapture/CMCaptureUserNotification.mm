@interface CMCaptureUserNotification
+ (CMCaptureUserNotification)notificationWithTimeout:(double)a3 flags:(unint64_t)a4 dictionary:(id)a5 error:(id *)a6;
- (id)initForSubclass;
@end

@implementation CMCaptureUserNotification

- (id)initForSubclass
{
  v3.receiver = self;
  v3.super_class = CMCaptureUserNotification;
  return [(CMCaptureUserNotification *)&v3 init];
}

+ (CMCaptureUserNotification)notificationWithTimeout:(double)a3 flags:(unint64_t)a4 dictionary:(id)a5 error:(id *)a6
{
  v10 = *MEMORY[0x1E695EE58];
  if ([a5 objectForKeyedSubscript:*MEMORY[0x1E695EE58]])
  {
    v11 = [&stru_1F216A3D0 stringByAppendingFormat:@"\n%@", objc_msgSend(a5, "objectForKeyedSubscript:", v10)];
  }

  else
  {
    v11 = &stru_1F216A3D0;
  }

  v12 = *MEMORY[0x1E695EE60];
  if ([a5 objectForKeyedSubscript:*MEMORY[0x1E695EE60]])
  {
    v11 = -[__CFString stringByAppendingFormat:](v11, "stringByAppendingFormat:", @"\n%@", [a5 objectForKeyedSubscript:v12]);
  }

  if ([(__CFString *)v11 length])
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return [[DirectUserNotification alloc] initNotificationWithTimeout:a4 flags:a5 dictionary:a6 error:a3];
}

@end