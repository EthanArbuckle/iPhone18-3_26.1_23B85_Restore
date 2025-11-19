@interface LACDTOSignpostEvent
@end

@implementation LACDTOSignpostEvent

LACSignpostEvent *__49__LACDTOSignpostEvent_environmentUpdateWillStart__block_invoke()
{
  v0 = [[LACSignpostEvent alloc] initWithSendBlock:&__block_literal_global_5_0];

  return v0;
}

void __49__LACDTOSignpostEvent_environmentUpdateWillStart__block_invoke_3()
{
  v0 = LACLogDTO();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B0233000, v0, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "DTOEnvironmentUpdate", "", v1, 2u);
  }
}

LACSignpostEvent *__49__LACDTOSignpostEvent_environmentUpdateDidFinish__block_invoke()
{
  v0 = [[LACSignpostEvent alloc] initWithSendBlock:&__block_literal_global_11];

  return v0;
}

void __49__LACDTOSignpostEvent_environmentUpdateDidFinish__block_invoke_3()
{
  v0 = LACLogDTO();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B0233000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DTOEnvironmentUpdate", "", v1, 2u);
  }
}

LACSignpostEvent *__51__LACDTOSignpostEvent_locationStatusQueryWillStart__block_invoke()
{
  v0 = [[LACSignpostEvent alloc] initWithSendBlock:&__block_literal_global_17];

  return v0;
}

void __51__LACDTOSignpostEvent_locationStatusQueryWillStart__block_invoke_3()
{
  v0 = LACLogDTO();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B0233000, v0, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "DTOLocationStateQuery", " enableTelemetry=YES ", v1, 2u);
  }
}

LACSignpostEvent *__51__LACDTOSignpostEvent_locationStatusQueryDidFinish__block_invoke()
{
  v0 = [[LACSignpostEvent alloc] initWithSendBlock:&__block_literal_global_23];

  return v0;
}

void __51__LACDTOSignpostEvent_locationStatusQueryDidFinish__block_invoke_3()
{
  v0 = LACLogDTO();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B0233000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DTOLocationStateQuery", " enableTelemetry=YES ", v1, 2u);
  }
}

LACSignpostEvent *__45__LACDTOSignpostEvent_lostModeQueryWillStart__block_invoke()
{
  v0 = [[LACSignpostEvent alloc] initWithSendBlock:&__block_literal_global_29];

  return v0;
}

void __45__LACDTOSignpostEvent_lostModeQueryWillStart__block_invoke_3()
{
  v0 = LACLogDTO();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B0233000, v0, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "DTOLostModeQuery", "", v1, 2u);
  }
}

LACSignpostEvent *__45__LACDTOSignpostEvent_lostModeQueryDidFinish__block_invoke()
{
  v0 = [[LACSignpostEvent alloc] initWithSendBlock:&__block_literal_global_35];

  return v0;
}

void __45__LACDTOSignpostEvent_lostModeQueryDidFinish__block_invoke_3()
{
  v0 = LACLogDTO();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B0233000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DTOLostModeQuery", "", v1, 2u);
  }
}

LACSignpostEvent *__49__LACDTOSignpostEvent_repairStatusQueryWillStart__block_invoke()
{
  v0 = [[LACSignpostEvent alloc] initWithSendBlock:&__block_literal_global_41];

  return v0;
}

void __49__LACDTOSignpostEvent_repairStatusQueryWillStart__block_invoke_3()
{
  v0 = LACLogDTO();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B0233000, v0, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "DTORepairStateQuery", "", v1, 2u);
  }
}

LACSignpostEvent *__49__LACDTOSignpostEvent_repairStatusQueryDidFinish__block_invoke()
{
  v0 = [[LACSignpostEvent alloc] initWithSendBlock:&__block_literal_global_47];

  return v0;
}

void __49__LACDTOSignpostEvent_repairStatusQueryDidFinish__block_invoke_3()
{
  v0 = LACLogDTO();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B0233000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DTORepairStateQuery", "", v1, 2u);
  }
}

@end