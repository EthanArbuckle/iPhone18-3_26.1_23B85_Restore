@interface CAMDrawerProResButton
- (BOOL)isMenuItemSelected:(id)selected;
- (id)imageNameForAXHUD;
- (id)loadMenuItems;
- (void)didSelectMenuItem:(id)item;
- (void)setProResVideoMode:(int64_t)mode animated:(BOOL)animated;
@end

@implementation CAMDrawerProResButton

- (void)setProResVideoMode:(int64_t)mode animated:(BOOL)animated
{
  if (self->_proResVideoMode != mode)
  {
    self->_proResVideoMode = mode;
    [(CAMControlDrawerButton *)self updateImageAnimated:animated];

    [(CAMControlDrawerMenuButton *)self updateLabelsIfNeeded];
  }
}

- (BOOL)isMenuItemSelected:(id)selected
{
  value = [selected value];
  integerValue = [value integerValue];
  LOBYTE(self) = integerValue == [(CAMDrawerProResButton *)self proResVideoMode];

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

- (void)didSelectMenuItem:(id)item
{
  itemCopy = item;
  proResVideoMode = [(CAMDrawerProResButton *)self proResVideoMode];
  value = [itemCopy value];

  integerValue = [value integerValue];
  if (proResVideoMode != integerValue)
  {
    [(CAMDrawerProResButton *)self setProResVideoMode:integerValue animated:1];

    [(CAMDrawerProResButton *)self sendActionsForControlEvents:4096];
  }
}

- (id)imageNameForAXHUD
{
  if ([(CAMDrawerProResButton *)self shouldShowSlashForCurrentState])
  {
    imageNameForCurrentState = @"CAMProResButtonOff-AXHUD";
  }

  else
  {
    imageNameForCurrentState = [(CAMDrawerProResButton *)self imageNameForCurrentState];
  }

  return imageNameForCurrentState;
}

@end