@interface BWStillImageConditionalRouterInferenceConfiguration
+ (id)inferenceConfiguration;
- (BWStillImageConditionalRouterInferenceConfiguration)init;
@end

@implementation BWStillImageConditionalRouterInferenceConfiguration

+ (id)inferenceConfiguration
{
  v2 = objc_alloc_init(BWStillImageConditionalRouterInferenceConfiguration);

  return v2;
}

- (BWStillImageConditionalRouterInferenceConfiguration)init
{
  v5.receiver = self;
  v5.super_class = BWStillImageConditionalRouterInferenceConfiguration;
  v2 = [(BWStillImageConditionalRouterConfiguration *)&v5 initWithNumberOfOutputs:2];
  v3 = v2;
  if (v2)
  {
    [(BWStillImageConditionalRouterConfiguration *)v2 setShouldEmitSampleBufferDecisionProvider:&__block_literal_global_83];
  }

  return v3;
}

uint64_t __59__BWStillImageConditionalRouterInferenceConfiguration_init__block_invoke(int a1, CMAttachmentBearerRef target, int *a3)
{
  v5 = CMGetAttachment(target, *off_1E798A3C8, 0);
  v6 = [CMGetAttachment(target @"StillImageProcessingFlags"];
  v7 = [CMGetAttachment(target @"HasUnreliableBracketingMetadata"];
  if ((v6 & 0x1400) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  v9 = CMGetAttachment(target, @"BWStillImageCaptureSettings", 0);
  if ([v9 captureType] == 1 || objc_msgSend(v9, "captureType") == 2)
  {
    if (v8)
    {
      v10 = 1;
      goto LABEL_11;
    }
  }

  else
  {
    v11 = [v9 captureType];
    if ((v11 != 7) | v8 & 1)
    {
      v10 = (v11 == 7) | v8;
      goto LABEL_11;
    }
  }

  v10 = [v5 objectForKeyedSubscript:@"UB"] != 0;
LABEL_11:
  v12 = v10 & 1;
  if (dword_1EB58E380)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a3)
  {
    *a3 = v12;
  }

  return 1;
}

@end