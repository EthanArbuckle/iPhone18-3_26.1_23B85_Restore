@interface JFXEffectContinousLiveCapturePreviewOptions
- (id)copyWithZone:(_NSZone *)zone;
- (id)initLiveCaptureOptions;
@end

@implementation JFXEffectContinousLiveCapturePreviewOptions

- (id)initLiveCaptureOptions
{
  v5.receiver = self;
  v5.super_class = JFXEffectContinousLiveCapturePreviewOptions;
  initContinousPreviewOptions = [(JFXEffectContinousPreviewOptions *)&v5 initContinousPreviewOptions];
  v3 = initContinousPreviewOptions;
  if (initContinousPreviewOptions)
  {
    [initContinousPreviewOptions setBackgroundType:1];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = JFXEffectContinousLiveCapturePreviewOptions;
  result = [(JFXEffectContinousPreviewOptions *)&v5 copyWithZone:zone];
  *(result + 88) = self->_rotateCameraFrameToInterfaceOrientation;
  return result;
}

@end