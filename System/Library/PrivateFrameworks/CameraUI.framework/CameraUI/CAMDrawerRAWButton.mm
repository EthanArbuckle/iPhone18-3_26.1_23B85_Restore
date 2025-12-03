@interface CAMDrawerRAWButton
- (BOOL)isMenuItemSelected:(id)selected;
- (id)imageNameForAXHUD;
- (id)loadMenuItems;
- (void)didSelectMenuItem:(id)item;
- (void)setRAWMode:(int64_t)mode animated:(BOOL)animated;
@end

@implementation CAMDrawerRAWButton

- (void)setRAWMode:(int64_t)mode animated:(BOOL)animated
{
  if (self->_rawMode != mode)
  {
    self->_rawMode = mode;
    [(CAMControlDrawerButton *)self updateImageAnimated:animated];

    [(CAMControlDrawerMenuButton *)self updateLabelsIfNeeded];
  }
}

- (BOOL)isMenuItemSelected:(id)selected
{
  value = [selected value];
  integerValue = [value integerValue];
  LOBYTE(self) = integerValue == [(CAMDrawerRAWButton *)self rawMode];

  return self;
}

- (id)loadMenuItems
{
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v3 = [CAMControlDrawerMenuItem alloc];
  v4 = CAMLocalizedFrameworkString(@"RAW_ON", 0);
  v5 = CAMLocalizedFrameworkString(@"RAW_RAW_ON", 0);
  v6 = [(CAMControlDrawerMenuItem *)v3 initWithTitle:v4 selectedTitle:v5 value:&unk_1F16C8078];

  [v2 addObject:v6];
  v7 = [CAMControlDrawerMenuItem alloc];
  v8 = CAMLocalizedFrameworkString(@"RAW_OFF", 0);
  v9 = CAMLocalizedFrameworkString(@"RAW_RAW_OFF", 0);
  v10 = [(CAMControlDrawerMenuItem *)v7 initWithTitle:v8 selectedTitle:v9 value:&unk_1F16C8090];

  [v2 addObject:v10];

  return v2;
}

- (void)didSelectMenuItem:(id)item
{
  itemCopy = item;
  rawMode = [(CAMDrawerRAWButton *)self rawMode];
  value = [itemCopy value];

  integerValue = [value integerValue];
  if (rawMode != integerValue)
  {
    [(CAMDrawerRAWButton *)self setRAWMode:integerValue animated:1];

    [(CAMDrawerRAWButton *)self sendActionsForControlEvents:4096];
  }
}

- (id)imageNameForAXHUD
{
  if ([(CAMDrawerRAWButton *)self shouldShowSlashForCurrentState])
  {
    imageNameForCurrentState = @"CAMRAWButtonOff-AXHUD";
  }

  else
  {
    imageNameForCurrentState = [(CAMDrawerRAWButton *)self imageNameForCurrentState];
  }

  return imageNameForCurrentState;
}

@end