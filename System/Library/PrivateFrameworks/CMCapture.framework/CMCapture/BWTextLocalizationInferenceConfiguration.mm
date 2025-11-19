@interface BWTextLocalizationInferenceConfiguration
+ (id)configuration;
- (BWTextLocalizationInferenceConfiguration)initWithInferenceType:(int)a3 version:(id)a4;
@end

@implementation BWTextLocalizationInferenceConfiguration

+ (id)configuration
{
  if (BWInferenceTextLocalizationCurrentVersion_onceToken != -1)
  {
    +[BWTextLocalizationInferenceConfiguration configuration];
  }

  v2 = [objc_alloc(objc_opt_class()) initWithInferenceType:116 version:BWInferenceTextLocalizationCurrentVersion_version | (word_1EB58F4AC << 32)];

  return v2;
}

- (BWTextLocalizationInferenceConfiguration)initWithInferenceType:(int)a3 version:(id)a4
{
  v4 = *&a4.var0;
  v26.receiver = self;
  v26.super_class = BWTextLocalizationInferenceConfiguration;
  v5 = [(BWInferenceConfiguration *)&v26 initWithInferenceType:*&a3];
  v6 = v5;
  if (v5)
  {
    *&v5->_version.major = v4;
    v5->_version.patch = WORD2(v4);
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    v7 = (FigCaptureMainScreenDimensions(1) >> 32) * 1.2;
    v8 = v4;
    v9 = WORD1(v4);
    if (WORD1(v4))
    {
      v10 = 0;
    }

    else
    {
      v10 = v4 == 1;
    }

    if (v10)
    {
      BWSmartCameraSceneInitialize(&v23, 1, 2, 0, "Text Localizer", 0.3, 0.09, 0.75);
      v12 = 17.0;
      v13 = 22.0;
      v14 = *"ff&?";
    }

    else if (v8 == 1 && v9 == 2)
    {
      BWSmartCameraSceneInitialize(&v23, 1, 2, 0, "Text Localizer", 0.36, 0.16, 0.75);
      v12 = 17.0;
      v13 = 22.0;
      v14 = *"333?";
    }

    else if (v8 == 1 && v9 == 5)
    {
      v14 = 0.75;
      BWSmartCameraSceneInitialize(&v23, 1, 2, 0, "Text Localizer", 0.3, 0.09, 0.75);
      v12 = 17.0;
      v13 = 22.0;
    }

    else
    {
      BWSmartCameraSceneInitialize(&v23, 1, 2, 0, "Text Localizer", 0.29, 0.09, 0.75);
      v12 = 10.0;
      v13 = 12.0;
      v14 = 0.6;
    }

    LODWORD(v11) = 1045220557;
    [(BWBoundingBoxInferenceConfiguration *)v6 setTrackingThreshold:v11];
    *&v15 = v14;
    [(BWBoundingBoxInferenceConfiguration *)v6 setMaxMatchCost:v15];
    v21[0] = v23;
    v21[1] = v24;
    v22 = v25;
    [(BWBoundingBoxInferenceConfiguration *)v6 setConfidenceFilterSettings:v21];
    [(BWBoundingBoxInferenceConfiguration *)v6 setInteriorSuppression:v10];
    LODWORD(v16) = 1022739087;
    [(BWBoundingBoxInferenceConfiguration *)v6 setInteriorSuppressionPadding:v16];
    LODWORD(v17) = 1.0;
    [(BWBoundingBoxInferenceConfiguration *)v6 setAngularOffsetExponentialSmoothing:v17];
    *&v18 = (v13 / v7) * 100.0;
    [(BWBoundingBoxInferenceConfiguration *)v6 setFontSizeStartReportingThreshold:v18];
    *&v19 = (v12 / v7) * 100.0;
    [(BWBoundingBoxInferenceConfiguration *)v6 setFontSizeStopReportingThreshold:v19];
  }

  return v6;
}

@end