@interface BWLandmarksInferenceConfiguration
+ (id)configuration;
+ (unint64_t)portraitMaximumNumberOfFaces;
+ (void)initialize;
- (BWLandmarksInferenceConfiguration)initWithInferenceType:(int)a3;
- (void)dealloc;
@end

@implementation BWLandmarksInferenceConfiguration

+ (id)configuration
{
  v2 = [objc_alloc(objc_opt_class()) initWithInferenceType:801];

  return v2;
}

+ (unint64_t)portraitMaximumNumberOfFaces
{
  if (gPortraitMaximumNumberOfFaces)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    gPortraitMaximumNumberOfFaces = 1;
  }
}

- (BWLandmarksInferenceConfiguration)initWithInferenceType:(int)a3
{
  v3 = *&a3;
  v8.receiver = self;
  v8.super_class = BWLandmarksInferenceConfiguration;
  v4 = [(BWInferenceConfiguration *)&v8 initWithInferenceType:?];
  v5 = v4;
  if (v4)
  {
    v4->_refinesMouthLandmarks = 0;
    v4->_refinesLeftEyeLandmarks = 0;
    v4->_refinesRightEyeLandmarks = 0;
    v4->_detectsBlinking = 1;
    v4->_cascadeStepCount = 0;
    v4->_maximumNumberOfFaces = 0;
    v4->_alwaysExecuteForRedEyeReduction = 0;
    v4->_detectLandmarksInFullSizeInput = 0;
    v4->_constellationPointCount = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters landmarksConstellationPointCountForInferenceType:"landmarksConstellationPointCountForInferenceType:", v3];
    v6 = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters landmarksVersionForInferenceType:"landmarksVersionForInferenceType:", v3];
    *&v5->_landmarksInferenceVersion.major = v6;
    v5->_landmarksInferenceVersion.patch = WORD2(v6);
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWLandmarksInferenceConfiguration;
  [(BWVisionInferenceConfiguration *)&v3 dealloc];
}

@end