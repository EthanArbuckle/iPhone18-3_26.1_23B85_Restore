@interface BWStillImageConditionalRouterPersonSegmentationAndMattingConfiguration
+ (id)personSegmentationAndMattingConfiguration;
- (BWStillImageConditionalRouterPersonSegmentationAndMattingConfiguration)init;
@end

@implementation BWStillImageConditionalRouterPersonSegmentationAndMattingConfiguration

+ (id)personSegmentationAndMattingConfiguration
{
  v2 = objc_alloc_init(BWStillImageConditionalRouterPersonSegmentationAndMattingConfiguration);

  return v2;
}

- (BWStillImageConditionalRouterPersonSegmentationAndMattingConfiguration)init
{
  v5.receiver = self;
  v5.super_class = BWStillImageConditionalRouterPersonSegmentationAndMattingConfiguration;
  v2 = [(BWStillImageConditionalRouterConfiguration *)&v5 initWithNumberOfOutputs:2];
  v3 = v2;
  if (v2)
  {
    [(BWStillImageConditionalRouterConfiguration *)v2 setShouldEmitSampleBufferDecisionProvider:&__block_literal_global_43];
  }

  return v3;
}

uint64_t __78__BWStillImageConditionalRouterPersonSegmentationAndMattingConfiguration_init__block_invoke(int a1, CMAttachmentBearerRef target, int *a3)
{
  v5 = CMGetAttachment(target, @"StillSettings", 0);
  if (v5)
  {
    v6 = v5;
    v7 = ([objc_msgSend(v5 "requestedSettings")] & 1) != 0 || objc_msgSend(objc_msgSend(objc_msgSend(v6, "requestedSettings"), "enabledSemanticSegmentationMatteURNs"), "count") != 0;
    HasDetectedFaces = BWSampleBufferHasDetectedFaces(target, 0, 0, 1, [+[FigCaptureCameraParameters complementMatteSuppressionDecisionWithISPDetectedFaces] sharedInstance];
    if ((BWStillImageProcessingFlagsForSampleBuffer(target) & 0x200000) != 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = HasDetectedFaces;
    }

    if (v7)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    if (dword_1EB58E380)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v10)
    {
      v12 = 1;
      if (!a3)
      {
        return 1;
      }

      goto LABEL_18;
    }
  }

  else
  {
    __78__BWStillImageConditionalRouterPersonSegmentationAndMattingConfiguration_init__block_invoke_cold_1();
  }

  BWSampleBufferRemoveAttachedMedia(target, 0x1F219E750);
  v12 = 0;
  if (a3)
  {
LABEL_18:
    *a3 = v12;
  }

  return 1;
}

@end