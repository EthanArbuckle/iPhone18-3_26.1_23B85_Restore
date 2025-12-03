@interface CAMDrawerHDRButton
- (BOOL)isMenuItemSelected:(id)selected;
- (id)imageNameForAXHUD;
- (id)loadMenuItems;
- (void)didSelectMenuItem:(id)item;
- (void)setHDRMode:(int64_t)mode animated:(BOOL)animated;
@end

@implementation CAMDrawerHDRButton

- (void)setHDRMode:(int64_t)mode animated:(BOOL)animated
{
  if (self->_hdrMode != mode)
  {
    self->_hdrMode = mode;
    [(CAMControlDrawerButton *)self updateImageAnimated:animated];

    [(CAMControlDrawerMenuButton *)self updateLabelsIfNeeded];
  }
}

- (BOOL)isMenuItemSelected:(id)selected
{
  value = [selected value];
  integerValue = [value integerValue];
  LOBYTE(self) = integerValue == [(CAMDrawerHDRButton *)self hdrMode];

  return self;
}

- (id)loadMenuItems
{
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
  v3 = [CAMControlDrawerMenuItem alloc];
  v4 = CAMLocalizedFrameworkString(@"HDR_ON", 0);
  v5 = CAMLocalizedFrameworkString(@"HDR_HDR_ON", 0);
  v6 = [(CAMControlDrawerMenuItem *)v3 initWithTitle:v4 selectedTitle:v5 value:&unk_1F16C8078];

  [v2 addObject:v6];
  v7 = [CAMControlDrawerMenuItem alloc];
  v8 = CAMLocalizedFrameworkString(@"HDR_OFF", 0);
  v9 = CAMLocalizedFrameworkString(@"HDR_HDR_OFF", 0);
  v10 = [(CAMControlDrawerMenuItem *)v7 initWithTitle:v8 selectedTitle:v9 value:&unk_1F16C8090];

  [v2 addObject:v10];

  return v2;
}

- (void)didSelectMenuItem:(id)item
{
  itemCopy = item;
  hdrMode = [(CAMDrawerHDRButton *)self hdrMode];
  value = [itemCopy value];

  unsignedIntegerValue = [value unsignedIntegerValue];
  if (unsignedIntegerValue != hdrMode)
  {
    [(CAMDrawerHDRButton *)self setHDRMode:unsignedIntegerValue animated:1];

    [(CAMDrawerHDRButton *)self sendActionsForControlEvents:4096];
  }
}

- (id)imageNameForAXHUD
{
  if ([(CAMDrawerHDRButton *)self hdrMode])
  {
    return @"CAMHDRButton-AXHUD";
  }

  else
  {
    return @"CAMHDRButtonOff-AXHUD";
  }
}

@end