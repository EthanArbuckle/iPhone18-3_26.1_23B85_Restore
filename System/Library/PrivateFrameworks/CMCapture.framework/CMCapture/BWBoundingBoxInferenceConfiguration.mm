@interface BWBoundingBoxInferenceConfiguration
- (BWSmartCameraScene)confidenceFilterSettings;
- (void)dealloc;
- (void)setConfidenceFilterSettings:(BWSmartCameraScene *)settings;
@end

@implementation BWBoundingBoxInferenceConfiguration

- (BWSmartCameraScene)confidenceFilterSettings
{
  v3 = *&self[2].filteredConfidence;
  *&retstr->enabled = *&self[1].name;
  *&retstr->confidenceHysteresisValueLag = v3;
  retstr->name = *&self[2].currentTemporalHysteresis;
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWBoundingBoxInferenceConfiguration;
  [(BWInferenceConfiguration *)&v3 dealloc];
}

- (void)setConfidenceFilterSettings:(BWSmartCameraScene *)settings
{
  name = settings->name;
  v4 = *&settings->confidenceHysteresisValueLag;
  *&self->_confidenceFilterSettings.enabled = *&settings->enabled;
  *&self->_confidenceFilterSettings.confidenceHysteresisValueLag = v4;
  self->_confidenceFilterSettings.name = name;
}

@end