@interface CAMFlashStatusIndicator
- (BOOL)shouldFillOutlineForCurrentState;
- (BOOL)shouldShowSlashForCurrentState;
- (BOOL)shouldUseActiveTintForCurrentState;
- (CGVector)imageOffset;
- (id)imageNameForAXHUD;
- (id)imageNameForCurrentState;
- (id)imageSymbolColorConfiguration;
- (void)setFlashActive:(BOOL)a3;
- (void)setFlashMode:(int64_t)a3 animated:(BOOL)a4;
- (void)setFlashUnavailable:(BOOL)a3;
@end

@implementation CAMFlashStatusIndicator

- (void)setFlashMode:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_flashMode != a3)
  {
    self->_flashMode = a3;
    [(CAMControlStatusIndicator *)self updateImageAnimated:a4];
  }
}

- (void)setFlashActive:(BOOL)a3
{
  if (self->_flashActive != a3)
  {
    self->_flashActive = a3;
    [(CAMControlStatusIndicator *)self updateImage];
  }
}

- (void)setFlashUnavailable:(BOOL)a3
{
  if (self->_flashUnavailable != a3)
  {
    self->_flashUnavailable = a3;
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
  v3 = [(CAMFlashStatusIndicator *)self isFlashUnavailable];
  v4 = 0.0;
  if (v3)
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

  v4 = [(CAMFlashStatusIndicator *)self flashMode];
  if (v4 != 2)
  {
    return v4 == 1;
  }

  return [(CAMFlashStatusIndicator *)self isFlashActive];
}

- (id)imageSymbolColorConfiguration
{
  v8[2] = *MEMORY[0x1E69E9840];
  if ([(CAMFlashStatusIndicator *)self isFlashUnavailable])
  {
    v2 = MEMORY[0x1E69DCAD8];
    v3 = [MEMORY[0x1E69DC888] systemYellowColor];
    v8[0] = v3;
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
  v3 = [(CAMFlashStatusIndicator *)self flashMode];
  if (v3)
  {
    if (v3 == 2)
    {

      LOBYTE(v3) = [(CAMFlashStatusIndicator *)self isFlashActive];
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  return v3;
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
    v3 = @"bolt.slash.fill";
  }

  else
  {
    v3 = [(CAMFlashStatusIndicator *)self imageNameForCurrentState];
  }

  return v3;
}

@end