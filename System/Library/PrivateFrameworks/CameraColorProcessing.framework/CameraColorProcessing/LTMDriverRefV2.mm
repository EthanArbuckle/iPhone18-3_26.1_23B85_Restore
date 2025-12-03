@interface LTMDriverRefV2
- (LTMDriverRefV2)init;
- (int)computeLtmComputeInput:(const sCLRProcHITHStat_SOFTISP *)input withMetadata:(const sRefDriverInputs_SOFTISP *)metadata to:(sLtmComputeInput_SOFTISP *)to computeInputMetadata:(sLtmComputeMeta_SOFTISP *)inputMetadata;
- (void)dealloc;
@end

@implementation LTMDriverRefV2

- (LTMDriverRefV2)init
{
  v7.receiver = self;
  v7.super_class = LTMDriverRefV2;
  v2 = [(LTMDriverRefV2 *)&v7 init];
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

- (void)dealloc
{
  ltmDriver = self->_ltmDriver;
  if (ltmDriver)
  {
    (*(ltmDriver->var0 + 1))(ltmDriver, a2);
    self->_ltmDriver = 0;
  }

  v4.receiver = self;
  v4.super_class = LTMDriverRefV2;
  [(LTMDriverRefV2 *)&v4 dealloc];
}

- (int)computeLtmComputeInput:(const sCLRProcHITHStat_SOFTISP *)input withMetadata:(const sRefDriverInputs_SOFTISP *)metadata to:(sLtmComputeInput_SOFTISP *)to computeInputMetadata:(sLtmComputeMeta_SOFTISP *)inputMetadata
{
  ltmDriver = self->_ltmDriver;
  if (ltmDriver)
  {
    (*(ltmDriver->var0 + 1))(ltmDriver, a2, input, metadata, to, inputMetadata);
    self->_ltmDriver = 0;
  }

  operator new();
}

@end