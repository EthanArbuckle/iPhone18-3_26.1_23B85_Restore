@interface CAMNightModeStatusIndicator
- (id)imageNameForAXHUD;
- (id)valueText;
- (void)setDuration:(double)a3;
- (void)setNightMode:(int64_t)a3;
- (void)setNightModeDisabled:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation CAMNightModeStatusIndicator

- (void)setDuration:(double)a3
{
  if (self->_duration != a3)
  {
    self->_duration = a3;
    [(CAMControlStatusIndicator *)self setNeedsUpdateValueText];
  }
}

- (void)setNightMode:(int64_t)a3
{
  if (self->_nightMode != a3)
  {
    self->_nightMode = a3;
    [(CAMControlStatusIndicator *)self updateImage];
  }
}

- (void)setNightModeDisabled:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_nightModeDisabled != a3)
  {
    self->_nightModeDisabled = a3;
    [(CAMControlStatusIndicator *)self updateImageAnimated:a4];
  }
}

- (id)valueText
{
  v3 = [objc_opt_class() integerFormatter];
  [(CAMNightModeStatusIndicator *)self duration];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:{fmax(round(v4), 1.0)}];
  v6 = [v3 stringFromNumber:v5];

  v7 = CAMLocalizedFrameworkString(@"LOW_LIGHT_DURATION_TEXT", 0);
  v8 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v7 validFormatSpecifiers:@"%@" error:0, v6];

  return v8;
}

- (id)imageNameForAXHUD
{
  if ([(CAMNightModeStatusIndicator *)self shouldShowSlashForCurrentState])
  {
    v3 = @"camera.nightmode.slash";
  }

  else
  {
    v3 = [(CAMNightModeStatusIndicator *)self imageNameForCurrentState];
  }

  return v3;
}

@end