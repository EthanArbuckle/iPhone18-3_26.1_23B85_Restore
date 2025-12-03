@interface CAMStillImageCaptureResolvedSettings
- (CAMStillImageCaptureResolvedSettings)initWithHDREnabled:(BOOL)enabled portraitEffectEnabled:(BOOL)effectEnabled nightModeCaptureTime:(double)time nightModePreviewColorEstimate:(CGColor *)estimate nightModeCaptureHasInitialPreviewFeedbackSensitivity:(BOOL)sensitivity nightModeCaptureHasConstantPreviewFeedbackSensitivity:(BOOL)feedbackSensitivity captureBeforeResolvingSettingsEnabled:(BOOL)settingsEnabled;
- (void)dealloc;
@end

@implementation CAMStillImageCaptureResolvedSettings

- (CAMStillImageCaptureResolvedSettings)initWithHDREnabled:(BOOL)enabled portraitEffectEnabled:(BOOL)effectEnabled nightModeCaptureTime:(double)time nightModePreviewColorEstimate:(CGColor *)estimate nightModeCaptureHasInitialPreviewFeedbackSensitivity:(BOOL)sensitivity nightModeCaptureHasConstantPreviewFeedbackSensitivity:(BOOL)feedbackSensitivity captureBeforeResolvingSettingsEnabled:(BOOL)settingsEnabled
{
  v20.receiver = self;
  v20.super_class = CAMStillImageCaptureResolvedSettings;
  v16 = [(CAMStillImageCaptureResolvedSettings *)&v20 init];
  v17 = v16;
  if (v16)
  {
    v16->_HDREnabled = enabled;
    v16->_portraitEffectEnabled = effectEnabled;
    v16->_nightModeCaptureTime = time;
    v16->_nightModePreviewColorEstimate = CGColorRetain(estimate);
    v17->_nightModeCaptureHasInitialPreviewFeedbackSensitivity = sensitivity;
    v17->_nightModeCaptureHasConstantPreviewFeedbackSensitivity = feedbackSensitivity;
    v17->_captureBeforeResolvingSettingsEnabled = settingsEnabled;
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