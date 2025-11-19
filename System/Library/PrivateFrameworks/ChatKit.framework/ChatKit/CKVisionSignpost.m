@interface CKVisionSignpost
+ (void)signpostIntervalBeginForQuickReply;
+ (void)signpostIntervalBeginForVFXLoad;
+ (void)signpostIntervalEndForQuickReply;
+ (void)signpostIntervalEndForVFXLoad;
@end

@implementation CKVisionSignpost

+ (void)signpostIntervalBeginForVFXLoad
{
  v2 = IMClientTelemetryLogHandle();
  if (os_signpost_enabled(v2))
  {
    *v3 = 0;
    _os_signpost_emit_with_name_impl(&dword_19020E000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IMSignpostWolfVFXLoad", " enableTelemetry=YES ", v3, 2u);
  }
}

+ (void)signpostIntervalEndForVFXLoad
{
  v2 = IMClientTelemetryLogHandle();
  if (os_signpost_enabled(v2))
  {
    *v3 = 0;
    _os_signpost_emit_with_name_impl(&dword_19020E000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IMSignpostWolfVFXLoad", " enableTelemetry=YES ", v3, 2u);
  }
}

+ (void)signpostIntervalBeginForQuickReply
{
  v2 = IMClientTelemetryLogHandle();
  if (os_signpost_enabled(v2))
  {
    *v3 = 0;
    _os_signpost_emit_with_name_impl(&dword_19020E000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "QuickReplyResponseRequestToComplete", " enableTelemetry=YES ", v3, 2u);
  }
}

+ (void)signpostIntervalEndForQuickReply
{
  v2 = IMClientTelemetryLogHandle();
  if (os_signpost_enabled(v2))
  {
    *v3 = 0;
    _os_signpost_emit_with_name_impl(&dword_19020E000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "QuickReplyResponseRequestToComplete", " enableTelemetry=YES ", v3, 2u);
  }
}

@end