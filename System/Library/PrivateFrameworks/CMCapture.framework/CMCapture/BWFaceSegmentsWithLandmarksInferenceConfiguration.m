@interface BWFaceSegmentsWithLandmarksInferenceConfiguration
+ (id)configuration;
- (BWFaceSegmentsWithLandmarksInferenceConfiguration)initWithInferenceType:(int)a3;
@end

@implementation BWFaceSegmentsWithLandmarksInferenceConfiguration

+ (id)configuration
{
  v2 = [objc_alloc(objc_opt_class()) initWithInferenceType:802];

  return v2;
}

- (BWFaceSegmentsWithLandmarksInferenceConfiguration)initWithInferenceType:(int)a3
{
  v6.receiver = self;
  v6.super_class = BWFaceSegmentsWithLandmarksInferenceConfiguration;
  v3 = [(BWLandmarksInferenceConfiguration *)&v6 initWithInferenceType:*&a3];
  v4 = v3;
  if (v3)
  {
    v3->_requestTypes = 0;
    v3->_includesInvalidContent = 1;
    [(BWLandmarksInferenceConfiguration *)v3 setDetectsBlinking:0];
  }

  return v4;
}

@end