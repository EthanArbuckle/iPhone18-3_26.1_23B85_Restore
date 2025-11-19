@interface FigCameraUsageListener
+ (void)initialize;
- (FigCameraUsageListener)initWithChangeHandler:(id)a3;
- (void)dealloc;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4;
@end

@implementation FigCameraUsageListener

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (FigCameraUsageListener)initWithChangeHandler:(id)a3
{
  if (a3)
  {
    v6.receiver = self;
    v6.super_class = FigCameraUsageListener;
    v4 = [(FigCameraUsageListener *)&v6 init];
    if (v4)
    {
      v4->_changeHandler = [a3 copy];
      v4->_isProhibitedLock = FigSimpleMutexCreate();
      FigSimpleMutexLock();
      [objc_msgSend(MEMORY[0x1E69ADFB8] "sharedConnection")];
      v4->_isProhibited = FigCameraUsageProhibited();
      FigSimpleMutexUnlock();
    }
  }

  else
  {

    return 0;
  }

  return v4;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x1E69ADFB8] "sharedConnection")];

  FigSimpleMutexDestroy();
  v3.receiver = self;
  v3.super_class = FigCameraUsageListener;
  [(FigCameraUsageListener *)&v3 dealloc];
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4
{
  v5 = FigCameraUsageProhibited();
  FigSimpleMutexLock();
  if (v5 != self->_isProhibited)
  {
    if (dword_1ED8446D0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    self->_isProhibited = v5;
    (*(self->_changeHandler + 2))(self->_changeHandler, v5);
  }

  FigSimpleMutexUnlock();
}

@end