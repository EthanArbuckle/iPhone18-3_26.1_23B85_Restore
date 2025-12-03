@interface CAMDrawerNightModeButton
- (id)imageNameForAXHUD;
- (void)setDisabled:(BOOL)disabled animated:(BOOL)animated;
- (void)setOn:(BOOL)on;
@end

@implementation CAMDrawerNightModeButton

- (void)setDisabled:(BOOL)disabled animated:(BOOL)animated
{
  if (self->_disabled != disabled)
  {
    self->_disabled = disabled;
    [(CAMControlDrawerButton *)self updateImageAnimated:animated];
  }
}

- (void)setOn:(BOOL)on
{
  if (self->_on != on)
  {
    self->_on = on;
    [(CAMControlDrawerButton *)self updateImage];
  }
}

- (id)imageNameForAXHUD
{
  if ([(CAMDrawerNightModeButton *)self shouldShowSlashForCurrentState])
  {
    imageNameForCurrentState = @"camera.nightmode.slash";
  }

  else
  {
    imageNameForCurrentState = [(CAMDrawerNightModeButton *)self imageNameForCurrentState];
  }

  return imageNameForCurrentState;
}

@end