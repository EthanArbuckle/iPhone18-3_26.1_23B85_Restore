@interface BWRGBPersonSegmentationInferenceConfiguration
+ ($2ACC23B9A21F50F5CC728381CA870116)portraitVersion;
@end

@implementation BWRGBPersonSegmentationInferenceConfiguration

+ ($2ACC23B9A21F50F5CC728381CA870116)portraitVersion
{
  v2 = +[BWInferenceEngine isNeuralEngineSupported];

  return BWInferenceVersionMake(1u, v2, 0);
}

@end