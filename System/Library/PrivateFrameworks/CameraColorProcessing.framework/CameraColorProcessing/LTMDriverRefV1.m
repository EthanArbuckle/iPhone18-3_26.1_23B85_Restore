@interface LTMDriverRefV1
- (LTMDriverRefV1)init;
- (int)computeLtmComputeInput:(const sCLRProcHITHStat_SOFTISP *)a3 withMetadata:(const sRefDriverInputs_SOFTISP *)a4 to:(sLtmComputeInput *)a5 computeInputMetadata:(sLtmComputeMeta_SOFTISP *)a6;
- (void)dealloc;
@end

@implementation LTMDriverRefV1

- (LTMDriverRefV1)init
{
  v4.receiver = self;
  v4.super_class = LTMDriverRefV1;
  if ([(LTMDriverRefV1 *)&v4 init])
  {
    operator new();
  }

  FigDebugAssert3();
  v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();

  return 0;
}

- (void)dealloc
{
  ltmDriver = self->_ltmDriver;
  if (ltmDriver)
  {
    (*(ltmDriver->var0 + 1))(ltmDriver, a2);
  }

  v4.receiver = self;
  v4.super_class = LTMDriverRefV1;
  [(LTMDriverRefV1 *)&v4 dealloc];
}

- (int)computeLtmComputeInput:(const sCLRProcHITHStat_SOFTISP *)a3 withMetadata:(const sRefDriverInputs_SOFTISP *)a4 to:(sLtmComputeInput *)a5 computeInputMetadata:(sLtmComputeMeta_SOFTISP *)a6
{
  if (LTMDriverV1::LTMDriver::Process(self->_ltmDriver, a3, a4, a5))
  {
    FigDebugAssert3();
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();

    return -1;
  }

  else
  {
    memcpy(a6, &self->_ltmDriver[33].var1.tuningParametersOverride[0].shadowSuppressBase, 0x390uLL);
    return 0;
  }
}

@end