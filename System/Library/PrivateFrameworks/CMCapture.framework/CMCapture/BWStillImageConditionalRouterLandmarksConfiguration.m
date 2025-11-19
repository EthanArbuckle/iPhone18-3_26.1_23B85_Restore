@interface BWStillImageConditionalRouterLandmarksConfiguration
+ (id)landmarksConfiguration;
- (BWStillImageConditionalRouterLandmarksConfiguration)init;
@end

@implementation BWStillImageConditionalRouterLandmarksConfiguration

+ (id)landmarksConfiguration
{
  v2 = objc_alloc_init(BWStillImageConditionalRouterLandmarksConfiguration);

  return v2;
}

- (BWStillImageConditionalRouterLandmarksConfiguration)init
{
  v5.receiver = self;
  v5.super_class = BWStillImageConditionalRouterLandmarksConfiguration;
  v2 = [(BWStillImageConditionalRouterConfiguration *)&v5 initWithNumberOfOutputs:2];
  v3 = v2;
  if (v2)
  {
    [(BWStillImageConditionalRouterConfiguration *)v2 setShouldEmitSampleBufferDecisionProvider:&__block_literal_global_42];
  }

  return v3;
}

uint64_t __59__BWStillImageConditionalRouterLandmarksConfiguration_init__block_invoke(int a1, CMAttachmentBearerRef target, _DWORD *a3)
{
  v5 = CMGetAttachment(target, *off_1E798A3C8, 0);
  v6 = CMGetAttachment(target, @"BWStillImageCaptureSettings", 0);
  v7 = [v6 captureStreamSettingsForPortType:{objc_msgSend(v5, "objectForKeyedSubscript:", *off_1E798B540)}];
  if ([v6 captureType] == 2)
  {
    v8 = ([v7 captureFlags] >> 16) & 1;
    v9 = v8 & ([objc_msgSend(v5 objectForKeyedSubscript:{*off_1E798B5C8), "BOOLValue"}] ^ 1);
    if (!a3)
    {
      return 1;
    }

    goto LABEL_5;
  }

  v9 = 0;
  if (a3)
  {
LABEL_5:
    *a3 = v9;
  }

  return 1;
}

@end