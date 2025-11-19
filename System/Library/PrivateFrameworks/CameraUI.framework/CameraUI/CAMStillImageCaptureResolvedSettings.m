@interface CAMStillImageCaptureResolvedSettings
- (CAMStillImageCaptureResolvedSettings)initWithHDREnabled:(BOOL)a3 portraitEffectEnabled:(BOOL)a4 nightModeCaptureTime:(double)a5 nightModePreviewColorEstimate:(CGColor *)a6 nightModeCaptureHasInitialPreviewFeedbackSensitivity:(BOOL)a7 nightModeCaptureHasConstantPreviewFeedbackSensitivity:(BOOL)a8 captureBeforeResolvingSettingsEnabled:(BOOL)a9;
- (void)dealloc;
@end

@implementation CAMStillImageCaptureResolvedSettings

- (CAMStillImageCaptureResolvedSettings)initWithHDREnabled:(BOOL)a3 portraitEffectEnabled:(BOOL)a4 nightModeCaptureTime:(double)a5 nightModePreviewColorEstimate:(CGColor *)a6 nightModeCaptureHasInitialPreviewFeedbackSensitivity:(BOOL)a7 nightModeCaptureHasConstantPreviewFeedbackSensitivity:(BOOL)a8 captureBeforeResolvingSettingsEnabled:(BOOL)a9
{
  v20.receiver = self;
  v20.super_class = CAMStillImageCaptureResolvedSettings;
  v16 = [(CAMStillImageCaptureResolvedSettings *)&v20 init];
  v17 = v16;
  if (v16)
  {
    v16->_HDREnabled = a3;
    v16->_portraitEffectEnabled = a4;
    v16->_nightModeCaptureTime = a5;
    v16->_nightModePreviewColorEstimate = CGColorRetain(a6);
    v17->_nightModeCaptureHasInitialPreviewFeedbackSensitivity = a7;
    v17->_nightModeCaptureHasConstantPreviewFeedbackSensitivity = a8;
    v17->_captureBeforeResolvingSettingsEnabled = a9;
    v18 = v17;
  }

  return v17;
}

- (void)dealloc
{
  CGColorRelease(self->_nightModePreviewColorEstimate);
  v3.receiver = self;
  v3.super_class = CAMStillImageCaptureResolvedSettings;
  [(CAMStillImageCaptureResolvedSettings *)&v3 dealloc];
}

@end