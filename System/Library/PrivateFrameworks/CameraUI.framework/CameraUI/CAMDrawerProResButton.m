@interface CAMDrawerProResButton
- (BOOL)isMenuItemSelected:(id)a3;
- (id)imageNameForAXHUD;
- (id)loadMenuItems;
- (void)didSelectMenuItem:(id)a3;
- (void)setProResVideoMode:(int64_t)a3 animated:(BOOL)a4;
@end

@implementation CAMDrawerProResButton

- (void)setProResVideoMode:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_proResVideoMode != a3)
  {
    self->_proResVideoMode = a3;
    [(CAMControlDrawerButton *)self updateImageAnimated:a4];

    [(CAMControlDrawerMenuButton *)self updateLabelsIfNeeded];
  }
}

- (BOOL)isMenuItemSelected:(id)a3
{
  v4 = [a3 value];
  v5 = [v4 integerValue];
  LOBYTE(self) = v5 == [(CAMDrawerProResButton *)self proResVideoMode];

  return self;
}

- (id)loadMenuItems
{
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v3 = [CAMControlDrawerMenuItem alloc];
  v4 = CAMLocalizedFrameworkString(@"PRO_RES_ON", 0);
  v5 = CAMLocalizedFrameworkString(@"PRO_RES_PRO_RES_ON", 0);
  v6 = [(CAMControlDrawerMenuItem *)v3 initWithTitle:v4 selectedTitle:v5 value:&unk_1F16C8078];

  [v2 addObject:v6];
  v7 = [CAMControlDrawerMenuItem alloc];
  v8 = CAMLocalizedFrameworkString(@"PRO_RES_OFF", 0);
  v9 = CAMLocalizedFrameworkString(@"PRO_RES_PRO_RES_OFF", 0);
  v10 = [(CAMControlDrawerMenuItem *)v7 initWithTitle:v8 selectedTitle:v9 value:&unk_1F16C8090];

  [v2 addObject:v10];

  return v2;
}

- (void)didSelectMenuItem:(id)a3
{
  v4 = a3;
  v5 = [(CAMDrawerProResButton *)self proResVideoMode];
  v6 = [v4 value];

  v7 = [v6 integerValue];
  if (v5 != v7)
  {
    [(CAMDrawerProResButton *)self setProResVideoMode:v7 animated:1];

    [(CAMDrawerProResButton *)self sendActionsForControlEvents:4096];
  }
}

- (id)imageNameForAXHUD
{
  if ([(CAMDrawerProResButton *)self shouldShowSlashForCurrentState])
  {
    v3 = @"CAMProResButtonOff-AXHUD";
  }

  else
  {
    v3 = [(CAMDrawerProResButton *)self imageNameForCurrentState];
  }

  return v3;
}

@end