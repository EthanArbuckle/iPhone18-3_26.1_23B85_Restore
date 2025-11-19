@interface LTMComputeRefV1
- (LTMComputeRefV1)init;
@end

@implementation LTMComputeRefV1

- (LTMComputeRefV1)init
{
  v7.receiver = self;
  v7.super_class = LTMComputeRefV1;
  v2 = [(LTMComputeRefV1 *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    FigDebugAssert3();
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v3;
}

@end