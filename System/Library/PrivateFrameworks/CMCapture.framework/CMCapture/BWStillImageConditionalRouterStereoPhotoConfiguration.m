@interface BWStillImageConditionalRouterStereoPhotoConfiguration
+ (id)stereoPhotoConfiguration;
- (BWStillImageConditionalRouterStereoPhotoConfiguration)init;
@end

@implementation BWStillImageConditionalRouterStereoPhotoConfiguration

+ (id)stereoPhotoConfiguration
{
  v2 = objc_alloc_init(BWStillImageConditionalRouterStereoPhotoConfiguration);

  return v2;
}

- (BWStillImageConditionalRouterStereoPhotoConfiguration)init
{
  v5.receiver = self;
  v5.super_class = BWStillImageConditionalRouterStereoPhotoConfiguration;
  v2 = [(BWStillImageConditionalRouterConfiguration *)&v5 initWithNumberOfOutputs:2];
  v3 = v2;
  if (v2)
  {
    [(BWStillImageConditionalRouterConfiguration *)v2 setShouldEmitSampleBufferDecisionProvider:&__block_literal_global_162];
  }

  return v3;
}

@end