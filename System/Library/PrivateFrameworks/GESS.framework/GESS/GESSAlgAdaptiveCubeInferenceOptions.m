@interface GESSAlgAdaptiveCubeInferenceOptions
- (GESSAlgAdaptiveCubeInferenceOptions)init;
@end

@implementation GESSAlgAdaptiveCubeInferenceOptions

- (GESSAlgAdaptiveCubeInferenceOptions)init
{
  v7.receiver = self;
  v7.super_class = GESSAlgAdaptiveCubeInferenceOptions;
  v2 = [(GESSAlgAdaptiveCubeInferenceOptions *)&v7 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend_setResolution_(v2, v3, 128, v4);
  }

  return v5;
}

@end