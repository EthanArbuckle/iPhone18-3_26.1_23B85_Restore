@interface BWBoundingBoxInferenceConfiguration
- (BWSmartCameraScene)confidenceFilterSettings;
- (void)dealloc;
- (void)setConfidenceFilterSettings:(BWSmartCameraScene *)a3;
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

- (void)setConfidenceFilterSettings:(BWSmartCameraScene *)a3
{
  name = a3->name;
  v4 = *&a3->confidenceHysteresisValueLag;
  *&self->_confidenceFilterSettings.enabled = *&a3->enabled;
  *&self->_confidenceFilterSettings.confidenceHysteresisValueLag = v4;
  self->_confidenceFilterSettings.name = name;
}

@end