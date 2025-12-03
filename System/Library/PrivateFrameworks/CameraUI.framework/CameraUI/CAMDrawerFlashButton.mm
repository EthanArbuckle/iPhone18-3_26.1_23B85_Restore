@interface CAMDrawerFlashButton
- (BOOL)isMenuItemSelected:(id)selected;
- (BOOL)shouldShowSlashForCurrentState;
- (id)imageNameForAXHUD;
- (id)imageNameForCurrentState;
- (id)imageSymbolColorConfiguration;
- (id)loadMenuItems;
- (void)didSelectMenuItem:(id)item;
- (void)setFlashMode:(int64_t)mode animated:(BOOL)animated;
- (void)setFlashUnavailable:(BOOL)unavailable;
@end

@implementation CAMDrawerFlashButton

- (void)setFlashMode:(int64_t)mode animated:(BOOL)animated
{
  if (self->_flashMode != mode)
  {
    self->_flashMode = mode;
    [(CAMControlDrawerButton *)self updateImageAnimated:animated];

    [(CAMControlDrawerMenuButton *)self updateLabelsIfNeeded];
  }
}

- (BOOL)isMenuItemSelected:(id)selected
{
  value = [selected value];
  integerValue = [value integerValue];
  LOBYTE(self) = integerValue == [(CAMDrawerFlashButton *)self flashMode];

  return self;
}

- (void)setFlashUnavailable:(BOOL)unavailable
{
  if (self->_flashUnavailable != unavailable)
  {
    self->_flashUnavailable = unavailable;
    [(CAMControlDrawerButton *)self updateImage];
  }
}

- (id)loadMenuItems
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = [CAMControlDrawerMenuItem alloc];
  v3 = CAMLocalizedFrameworkString(@"FLASH_AUTO", 0);
  v4 = CAMLocalizedFrameworkString(@"FLASH_FLASH_AUTO", 0);
  v5 = [(CAMControlDrawerMenuItem *)v2 initWithTitle:v3 selectedTitle:v4 value:&unk_1F16C8060];

  v6 = [CAMControlDrawerMenuItem alloc];
  v7 = CAMLocalizedFrameworkString(@"FLASH_ON", 0);
  v8 = CAMLocalizedFrameworkString(@"FLASH_FLASH_ON", 0);
  v9 = [(CAMControlDrawerMenuItem *)v6 initWithTitle:v7 selectedTitle:v8 value:&unk_1F16C8078];

  v10 = [CAMControlDrawerMenuItem alloc];
  v11 = CAMLocalizedFrameworkString(@"FLASH_OFF", 0);
  v12 = CAMLocalizedFrameworkString(@"FLASH_FLASH_OFF", 0);
  v13 = [(CAMControlDrawerMenuItem *)v10 initWithTitle:v11 selectedTitle:v12 value:&unk_1F16C8090];

  v16[0] = v5;
  v16[1] = v9;
  v16[2] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];

  return v14;
}

- (void)didSelectMenuItem:(id)item
{
  itemCopy = item;
  if (![(CAMDrawerFlashButton *)self isFlashUnavailable])
  {
    flashMode = [(CAMDrawerFlashButton *)self flashMode];
    value = [itemCopy value];
    integerValue = [value integerValue];

    if (integerValue != flashMode)
    {
      [(CAMDrawerFlashButton *)self setFlashMode:integerValue animated:1];
      [(CAMDrawerFlashButton *)self sendActionsForControlEvents:4096];
    }
  }
}

- (id)imageNameForCurrentState
{
  if ([(CAMDrawerFlashButton *)self isFlashUnavailable])
  {
    v2 = @"bolt.trianglebadge.exclamationmark.fill";
  }

  else
  {
    v2 = @"bolt.fill";
  }

  return v2;
}

- (id)imageNameForAXHUD
{
  if ([(CAMDrawerFlashButton *)self shouldShowSlashForCurrentState])
  {
    imageNameForCurrentState = @"bolt.slash.fill";
  }

  else
  {
    imageNameForCurrentState = [(CAMDrawerFlashButton *)self imageNameForCurrentState];
  }

  return imageNameForCurrentState;
}

- (id)imageSymbolColorConfiguration
{
  v8[2] = *MEMORY[0x1E69E9840];
  if ([(CAMDrawerFlashButton *)self isFlashUnavailable])
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

- (BOOL)shouldShowSlashForCurrentState
{
  if ([(CAMDrawerFlashButton *)self flashMode])
  {
    return 0;
  }

  else
  {
    return ![(CAMDrawerFlashButton *)self isFlashUnavailable];
  }
}

@end