@interface BWDeepZoomInferenceConfiguration
- (NSString)outputAttachedMediaKey;
@end

@implementation BWDeepZoomInferenceConfiguration

- (NSString)outputAttachedMediaKey
{
  inferenceType = [(BWInferenceConfiguration *)self inferenceType];
  if (inferenceType == 160)
  {
    return @"DeepZoomOutput";
  }

  if (inferenceType == 159)
  {
    return @"DeepTransferStereoPhotoOutput";
  }

  return 0;
}

@end