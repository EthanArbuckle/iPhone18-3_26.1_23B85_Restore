@interface BWIntelligentDistortionCorrectionProcessorControllerConfiguration
- ($5E5F304956FB491AF6F034FDF0808287)processorConfig;
- (CGPoint)geometricDistortionCorrectionInputCropOffset;
- (void)dealloc;
- (void)setDepthDataCorrectionEnabled:(BOOL)enabled primaryFormat:(id)format depthFormat:(id)depthFormat baseDepthRotationDegrees:(int)degrees;
@end

@implementation BWIntelligentDistortionCorrectionProcessorControllerConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWIntelligentDistortionCorrectionProcessorControllerConfiguration;
  [(BWStillImageProcessorControllerConfiguration *)&v3 dealloc];
}

- (void)setDepthDataCorrectionEnabled:(BOOL)enabled primaryFormat:(id)format depthFormat:(id)depthFormat baseDepthRotationDegrees:(int)degrees
{
  enabledCopy = enabled;

  if (enabledCopy)
  {
    self->_primaryFormat = format;
    self->_depthFormat = depthFormat;
  }

  self->_depthDataCorrectionEnabled = enabledCopy;
  self->_baseDepthRotationDegrees = degrees;
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