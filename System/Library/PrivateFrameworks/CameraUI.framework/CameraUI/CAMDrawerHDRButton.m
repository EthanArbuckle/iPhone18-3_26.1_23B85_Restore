@interface CAMDrawerHDRButton
- (BOOL)isMenuItemSelected:(id)a3;
- (id)imageNameForAXHUD;
- (id)loadMenuItems;
- (void)didSelectMenuItem:(id)a3;
- (void)setHDRMode:(int64_t)a3 animated:(BOOL)a4;
@end

@implementation CAMDrawerHDRButton

- (void)setHDRMode:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_hdrMode != a3)
  {
    self->_hdrMode = a3;
    [(CAMControlDrawerButton *)self updateImageAnimated:a4];

    [(CAMControlDrawerMenuButton *)self updateLabelsIfNeeded];
  }
}

- (BOOL)isMenuItemSelected:(id)a3
{
  v4 = [a3 value];
  v5 = [v4 integerValue];
  LOBYTE(self) = v5 == [(CAMDrawerHDRButton *)self hdrMode];

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

- (void)didSelectMenuItem:(id)a3
{
  v4 = a3;
  v5 = [(CAMDrawerHDRButton *)self hdrMode];
  v6 = [v4 value];

  v7 = [v6 unsignedIntegerValue];
  if (v7 != v5)
  {
    [(CAMDrawerHDRButton *)self setHDRMode:v7 animated:1];

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