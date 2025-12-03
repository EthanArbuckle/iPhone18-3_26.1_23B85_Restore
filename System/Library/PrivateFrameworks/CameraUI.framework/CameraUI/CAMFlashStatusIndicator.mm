@interface CAMFlashStatusIndicator
- (BOOL)shouldFillOutlineForCurrentState;
- (BOOL)shouldShowSlashForCurrentState;
- (BOOL)shouldUseActiveTintForCurrentState;
- (CGVector)imageOffset;
- (id)imageNameForAXHUD;
- (id)imageNameForCurrentState;
- (id)imageSymbolColorConfiguration;
- (void)setFlashActive:(BOOL)active;
- (void)setFlashMode:(int64_t)mode animated:(BOOL)animated;
- (void)setFlashUnavailable:(BOOL)unavailable;
@end

@implementation CAMFlashStatusIndicator

- (void)setFlashMode:(int64_t)mode animated:(BOOL)animated
{
  if (self->_flashMode != mode)
  {
    self->_flashMode = mode;
    [(CAMControlStatusIndicator *)self updateImageAnimated:animated];
  }
}

- (void)setFlashActive:(BOOL)active
{
  if (self->_flashActive != active)
  {
    self->_flashActive = active;
    [(CAMControlStatusIndicator *)self updateImage];
  }
}

- (void)setFlashUnavailable:(BOOL)unavailable
{
  if (self->_flashUnavailable != unavailable)
  {
    self->_flashUnavailable = unavailable;
    [(CAMControlStatusIndicator *)self updateImage];
  }
}

- (id)imageNameForCurrentState
{
  if ([(CAMFlashStatusIndicator *)self isFlashUnavailable])
  {
    v2 = @"bolt.trianglebadge.exclamationmark.fill";
  }

  else
  {
    v2 = @"bolt.fill";
  }

  return v2;
}

- (CGVector)imageOffset
{
  isFlashUnavailable = [(CAMFlashStatusIndicator *)self isFlashUnavailable];
  v4 = 0.0;
  if (isFlashUnavailable)
  {
    v4 = -CAMPixelWidthForView(self);
  }

  v5 = v4;
  result.dy = v5;
  result.dx = v4;
  return result;
}

- (BOOL)shouldUseActiveTintForCurrentState
{
  if ([(CAMFlashStatusIndicator *)self isFlashUnavailable])
  {
    return 0;
  }

  flashMode = [(CAMFlashStatusIndicator *)self flashMode];
  if (flashMode != 2)
  {
    return flashMode == 1;
  }

  return [(CAMFlashStatusIndicator *)self isFlashActive];
}

- (id)imageSymbolColorConfiguration
{
  v8[2] = *MEMORY[0x1E69E9840];
  if ([(CAMFlashStatusIndicator *)self isFlashUnavailable])
  {
    v2 = MEMORY[0x1E69DCAD8];
    systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
    v8[0] = systemYellowColor;
    v4 = [MEMORY[0x1E69DC888] colorWithWhite:0.5 alpha:1.0];
    v8[1] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
    v6 = [v2 configurationWithPaletteColors:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)shouldFillOutlineForCurrentState
{
  flashMode = [(CAMFlashStatusIndicator *)self flashMode];
  if (flashMode)
  {
    if (flashMode == 2)
    {

      LOBYTE(flashMode) = [(CAMFlashStatusIndicator *)self isFlashActive];
    }

    else
    {
      LOBYTE(flashMode) = 1;
    }
  }

  return flashMode;
}

- (BOOL)shouldShowSlashForCurrentState
{
  if ([(CAMFlashStatusIndicator *)self flashMode])
  {
    return 0;
  }

  else
  {
    return ![(CAMFlashStatusIndicator *)self isFlashUnavailable];
  }
}

- (id)imageNameForAXHUD
{
  if ([(CAMFlashStatusIndicator *)self shouldShowSlashForCurrentState])
  {
    imageNameForCurrentState = @"bolt.slash.fill";
  }

  else
  {
    imageNameForCurrentState = [(CAMFlashStatusIndicator *)self imageNameForCurrentState];
  }

  return imageNameForCurrentState;
}

@end