@interface CAMDrawerNightModeButton
- (id)imageNameForAXHUD;
- (void)setDisabled:(BOOL)a3 animated:(BOOL)a4;
- (void)setOn:(BOOL)a3;
@end

@implementation CAMDrawerNightModeButton

- (void)setDisabled:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_disabled != a3)
  {
    self->_disabled = a3;
    [(CAMControlDrawerButton *)self updateImageAnimated:a4];
  }
}

- (void)setOn:(BOOL)a3
{
  if (self->_on != a3)
  {
    self->_on = a3;
    [(CAMControlDrawerButton *)self updateImage];
  }
}

- (id)imageNameForAXHUD
{
  if ([(CAMDrawerNightModeButton *)self shouldShowSlashForCurrentState])
  {
    v3 = @"camera.nightmode.slash";
  }

  else
  {
    v3 = [(CAMDrawerNightModeButton *)self imageNameForCurrentState];
  }

  return v3;
}

@end