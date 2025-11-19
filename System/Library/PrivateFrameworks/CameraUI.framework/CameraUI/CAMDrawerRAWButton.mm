@interface CAMDrawerRAWButton
- (BOOL)isMenuItemSelected:(id)a3;
- (id)imageNameForAXHUD;
- (id)loadMenuItems;
- (void)didSelectMenuItem:(id)a3;
- (void)setRAWMode:(int64_t)a3 animated:(BOOL)a4;
@end

@implementation CAMDrawerRAWButton

- (void)setRAWMode:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_rawMode != a3)
  {
    self->_rawMode = a3;
    [(CAMControlDrawerButton *)self updateImageAnimated:a4];

    [(CAMControlDrawerMenuButton *)self updateLabelsIfNeeded];
  }
}

- (BOOL)isMenuItemSelected:(id)a3
{
  v4 = [a3 value];
  v5 = [v4 integerValue];
  LOBYTE(self) = v5 == [(CAMDrawerRAWButton *)self rawMode];

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

- (void)didSelectMenuItem:(id)a3
{
  v4 = a3;
  v5 = [(CAMDrawerRAWButton *)self rawMode];
  v6 = [v4 value];

  v7 = [v6 integerValue];
  if (v5 != v7)
  {
    [(CAMDrawerRAWButton *)self setRAWMode:v7 animated:1];

    [(CAMDrawerRAWButton *)self sendActionsForControlEvents:4096];
  }
}

- (id)imageNameForAXHUD
{
  if ([(CAMDrawerRAWButton *)self shouldShowSlashForCurrentState])
  {
    v3 = @"CAMRAWButtonOff-AXHUD";
  }

  else
  {
    v3 = [(CAMDrawerRAWButton *)self imageNameForCurrentState];
  }

  return v3;
}

@end