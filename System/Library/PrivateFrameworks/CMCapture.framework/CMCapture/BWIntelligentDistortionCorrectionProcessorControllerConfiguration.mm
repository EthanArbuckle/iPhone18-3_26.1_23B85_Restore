@interface BWIntelligentDistortionCorrectionProcessorControllerConfiguration
- ($5E5F304956FB491AF6F034FDF0808287)processorConfig;
- (CGPoint)geometricDistortionCorrectionInputCropOffset;
- (void)dealloc;
- (void)setDepthDataCorrectionEnabled:(BOOL)a3 primaryFormat:(id)a4 depthFormat:(id)a5 baseDepthRotationDegrees:(int)a6;
@end

@implementation BWIntelligentDistortionCorrectionProcessorControllerConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWIntelligentDistortionCorrectionProcessorControllerConfiguration;
  [(BWStillImageProcessorControllerConfiguration *)&v3 dealloc];
}

- (void)setDepthDataCorrectionEnabled:(BOOL)a3 primaryFormat:(id)a4 depthFormat:(id)a5 baseDepthRotationDegrees:(int)a6
{
  v9 = a3;

  if (v9)
  {
    self->_primaryFormat = a4;
    self->_depthFormat = a5;
  }

  self->_depthDataCorrectionEnabled = v9;
  self->_baseDepthRotationDegrees = a6;
}

- (CGPoint)geometricDistortionCorrectionInputCropOffset
{
  x = self->_geometricDistortionCorrectionInputCropOffset.x;
  y = self->_geometricDistortionCorrectionInputCropOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- ($5E5F304956FB491AF6F034FDF0808287)processorConfig
{
  p_processorConfig = &self->_processorConfig;
  v3 = *&self->_processorConfig.maximumImageWidth;
  v4 = *&p_processorConfig->maximumPersonMaskWidth;
  result.var2 = v4;
  result.var3 = HIDWORD(v4);
  result.var0 = v3;
  result.var1 = HIDWORD(v3);
  return result;
}

@end