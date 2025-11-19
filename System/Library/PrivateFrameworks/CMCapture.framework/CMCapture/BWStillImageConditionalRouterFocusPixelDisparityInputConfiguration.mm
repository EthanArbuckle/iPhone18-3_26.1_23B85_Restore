@interface BWStillImageConditionalRouterFocusPixelDisparityInputConfiguration
+ (id)focusPixelDisparityInputConfiguration;
- (BWStillImageConditionalRouterFocusPixelDisparityInputConfiguration)init;
@end

@implementation BWStillImageConditionalRouterFocusPixelDisparityInputConfiguration

+ (id)focusPixelDisparityInputConfiguration
{
  v2 = objc_alloc_init(BWStillImageConditionalRouterFocusPixelDisparityInputConfiguration);

  return v2;
}

- (BWStillImageConditionalRouterFocusPixelDisparityInputConfiguration)init
{
  v5.receiver = self;
  v5.super_class = BWStillImageConditionalRouterFocusPixelDisparityInputConfiguration;
  v2 = [(BWStillImageConditionalRouterConfiguration *)&v5 initWithNumberOfOutputs:2];
  v3 = v2;
  if (v2)
  {
    [(BWStillImageConditionalRouterConfiguration *)v2 setShouldEmitSampleBufferDecisionProvider:&__block_literal_global_119];
    [(BWStillImageConditionalRouterConfiguration *)v3 setShouldEmitNodeErrorDecisionProvider:&__block_literal_global_121];
  }

  return v3;
}

uint64_t __74__BWStillImageConditionalRouterFocusPixelDisparityInputConfiguration_init__block_invoke(uint64_t a1, const void *a2, _DWORD *a3)
{
  BWStillImageCaptureFrameFlagsForSampleBuffer(a2);
  v5 = [CMGetAttachment(a2 @"StillImageBufferFrameType"];
  if (a3)
  {
    *a3 = v5 == 54;
  }

  return 1;
}

uint64_t __74__BWStillImageConditionalRouterFocusPixelDisparityInputConfiguration_init__block_invoke_2(uint64_t a1, void *a2, _DWORD *a3)
{
  v4 = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(a2 "stillImageSettings")];
  if (a3)
  {
    *a3 = v4;
  }

  return 1;
}

@end