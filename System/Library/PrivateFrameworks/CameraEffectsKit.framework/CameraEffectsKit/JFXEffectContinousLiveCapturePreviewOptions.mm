@interface JFXEffectContinousLiveCapturePreviewOptions
- (id)copyWithZone:(_NSZone *)a3;
- (id)initLiveCaptureOptions;
@end

@implementation JFXEffectContinousLiveCapturePreviewOptions

- (id)initLiveCaptureOptions
{
  v5.receiver = self;
  v5.super_class = JFXEffectContinousLiveCapturePreviewOptions;
  v2 = [(JFXEffectContinousPreviewOptions *)&v5 initContinousPreviewOptions];
  v3 = v2;
  if (v2)
  {
    [v2 setBackgroundType:1];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = JFXEffectContinousLiveCapturePreviewOptions;
  result = [(JFXEffectContinousPreviewOptions *)&v5 copyWithZone:a3];
  *(result + 88) = self->_rotateCameraFrameToInterfaceOrientation;
  return result;
}

@end