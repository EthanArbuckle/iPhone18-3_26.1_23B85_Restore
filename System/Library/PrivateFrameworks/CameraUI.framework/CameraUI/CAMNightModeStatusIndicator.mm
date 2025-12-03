@interface CAMNightModeStatusIndicator
- (id)imageNameForAXHUD;
- (id)valueText;
- (void)setDuration:(double)duration;
- (void)setNightMode:(int64_t)mode;
- (void)setNightModeDisabled:(BOOL)disabled animated:(BOOL)animated;
@end

@implementation CAMNightModeStatusIndicator

- (void)setDuration:(double)duration
{
  if (self->_duration != duration)
  {
    self->_duration = duration;
    [(CAMControlStatusIndicator *)self setNeedsUpdateValueText];
  }
}

- (void)setNightMode:(int64_t)mode
{
  if (self->_nightMode != mode)
  {
    self->_nightMode = mode;
    [(CAMControlStatusIndicator *)self updateImage];
  }
}

- (void)setNightModeDisabled:(BOOL)disabled animated:(BOOL)animated
{
  if (self->_nightModeDisabled != disabled)
  {
    self->_nightModeDisabled = disabled;
    [(CAMControlStatusIndicator *)self updateImageAnimated:animated];
  }
}

- (id)valueText
{
  integerFormatter = [objc_opt_class() integerFormatter];
  [(CAMNightModeStatusIndicator *)self duration];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:{fmax(round(v4), 1.0)}];
  v6 = [integerFormatter stringFromNumber:v5];

  v7 = CAMLocalizedFrameworkString(@"LOW_LIGHT_DURATION_TEXT", 0);
  v8 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v7 validFormatSpecifiers:@"%@" error:0, v6];

  return v8;
}

- (id)imageNameForAXHUD
{
  if ([(CAMNightModeStatusIndicator *)self shouldShowSlashForCurrentState])
  {
    imageNameForCurrentState = @"camera.nightmode.slash";
  }

  else
  {
    imageNameForCurrentState = [(CAMNightModeStatusIndicator *)self imageNameForCurrentState];
  }

  return imageNameForCurrentState;
}

@end