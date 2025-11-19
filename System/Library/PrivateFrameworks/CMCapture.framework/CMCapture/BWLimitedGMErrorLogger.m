@interface BWLimitedGMErrorLogger
- (BWLimitedGMErrorLogger)initWithName:(id)a3 maxLoggingCount:(int)a4;
- (void)dealloc;
- (void)logErrorNumber:(int)a3 errorString:(id)a4;
@end

@implementation BWLimitedGMErrorLogger

- (BWLimitedGMErrorLogger)initWithName:(id)a3 maxLoggingCount:(int)a4
{
  v8.receiver = self;
  v8.super_class = BWLimitedGMErrorLogger;
  v6 = [(BWLimitedGMErrorLogger *)&v8 init];
  if (v6)
  {
    v6->_name = a3;
    v6->_maxLoggingCount = a4;
    v6->_currentLoggingCount = 0;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWLimitedGMErrorLogger;
  [(BWLimitedGMErrorLogger *)&v3 dealloc];
}

- (void)logErrorNumber:(int)a3 errorString:(id)a4
{
  currentLoggingCount = self->_currentLoggingCount;
  if (currentLoggingCount < self->_maxLoggingCount)
  {
    self->_currentLoggingCount = currentLoggingCount + 1;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

@end