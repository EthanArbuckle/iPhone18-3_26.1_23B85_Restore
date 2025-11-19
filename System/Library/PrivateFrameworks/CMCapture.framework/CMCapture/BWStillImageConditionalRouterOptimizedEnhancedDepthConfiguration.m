@interface BWStillImageConditionalRouterOptimizedEnhancedDepthConfiguration
+ (id)optimizedEnhancedDepthConfiguration;
- (BWStillImageConditionalRouterOptimizedEnhancedDepthConfiguration)init;
@end

@implementation BWStillImageConditionalRouterOptimizedEnhancedDepthConfiguration

+ (id)optimizedEnhancedDepthConfiguration
{
  v2 = objc_alloc_init(BWStillImageConditionalRouterOptimizedEnhancedDepthConfiguration);

  return v2;
}

- (BWStillImageConditionalRouterOptimizedEnhancedDepthConfiguration)init
{
  v5.receiver = self;
  v5.super_class = BWStillImageConditionalRouterOptimizedEnhancedDepthConfiguration;
  v2 = [(BWStillImageConditionalRouterConfiguration *)&v5 initWithNumberOfOutputs:2];
  v3 = v2;
  if (v2)
  {
    [(BWStillImageConditionalRouterConfiguration *)v2 setShouldEmitSampleBufferDecisionProvider:&__block_literal_global_149];
  }

  return v3;
}

uint64_t __72__BWStillImageConditionalRouterOptimizedEnhancedDepthConfiguration_init__block_invoke(int a1, CMAttachmentBearerRef target, _DWORD *a3)
{
  *a3 = 0;
  if ([CMGetAttachment(target @"StillImageBufferFrameType"] == 13)
  {
    *a3 = 1;
  }

  return 1;
}

@end