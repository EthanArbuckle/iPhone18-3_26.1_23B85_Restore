@interface BWDeepZoomInferenceConfiguration
- (NSString)outputAttachedMediaKey;
@end

@implementation BWDeepZoomInferenceConfiguration

- (NSString)outputAttachedMediaKey
{
  v2 = [(BWInferenceConfiguration *)self inferenceType];
  if (v2 == 160)
  {
    return @"DeepZoomOutput";
  }

  if (v2 == 159)
  {
    return @"DeepTransferStereoPhotoOutput";
  }

  return 0;
}

@end