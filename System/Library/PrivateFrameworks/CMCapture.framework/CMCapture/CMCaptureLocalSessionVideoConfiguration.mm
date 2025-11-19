@interface CMCaptureLocalSessionVideoConfiguration
- (CGRect)centerStageRectOfInterest;
- (id)description;
@end

@implementation CMCaptureLocalSessionVideoConfiguration

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  outputFormat = self->_outputFormat;
  return [v3 stringWithFormat:@"<%@ %p> - fmt:%c%c%c%c, w:%d, h:%d, scs:%d, cs:%d, csroi:(%.2f, %.2f, %.2f, %.2f), csfm: %d, mfpx: %.2f, mfpy: %.2f, mfzm: %.2f, tfllbme: %d", v5, self, HIBYTE(outputFormat), BYTE2(outputFormat), BYTE1(outputFormat), outputFormat, self->_dimensions.width, self->_dimensions.height, self->_supportsCenterStage, self->_cinematicFramingEnabled, *&self->_centerStageRectOfInterest.origin.x, *&self->_centerStageRectOfInterest.origin.y, *&self->_centerStageRectOfInterest.size.width, *&self->_centerStageRectOfInterest.size.height, self->_centerStageFramingMode, *&self->_manualFramingPanningAngleX, *&self->_manualFramingPanningAngleY, *&self->_manualFramingZoomFactor, self->_temporalFilterLowLightBandingMitigationEnabled];
}

- (CGRect)centerStageRectOfInterest
{
  x = self->_centerStageRectOfInterest.origin.x;
  y = self->_centerStageRectOfInterest.origin.y;
  width = self->_centerStageRectOfInterest.size.width;
  height = self->_centerStageRectOfInterest.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end