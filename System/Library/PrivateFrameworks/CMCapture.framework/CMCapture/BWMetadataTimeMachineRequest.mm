@interface BWMetadataTimeMachineRequest
- (BWMetadataTimeMachineRequest)init;
- (void)complete;
- (void)dealloc;
- (void)waitForCompletionWithTimeout:(float)timeout;
@end

@implementation BWMetadataTimeMachineRequest

- (BWMetadataTimeMachineRequest)init
{
  v4.receiver = self;
  v4.super_class = BWMetadataTimeMachineRequest;
  v2 = [(BWMetadataTimeMachineRequest *)&v4 init];
  if (v2)
  {
    v2->_semaphore = dispatch_semaphore_create(0);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWMetadataTimeMachineRequest;
  [(BWMetadataTimeMachineRequest *)&v3 dealloc];
}

- (void)waitForCompletionWithTimeout:(float)timeout
{
  semaphore = self->_semaphore;
  v4 = dispatch_time(0, (timeout * 1000000000.0));
  if (dispatch_semaphore_wait(semaphore, v4))
  {
    v5 = dword_1EB58E100 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (void)complete
{
  if (dword_1EB58E100)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  dispatch_semaphore_signal(self->_semaphore);
}

@end