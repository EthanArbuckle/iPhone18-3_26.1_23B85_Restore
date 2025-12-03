@interface CAMDrawerSharedLibraryButton
- (BOOL)isMenuItemSelected:(id)selected;
- (BOOL)shouldUseActiveTintForCurrentState;
- (id)loadMenuItems;
- (void)didSelectMenuItem:(id)item;
- (void)setSharedLibraryMode:(int64_t)mode animated:(BOOL)animated;
@end

@implementation CAMDrawerSharedLibraryButton

- (void)setSharedLibraryMode:(int64_t)mode animated:(BOOL)animated
{
  if (self->_sharedLibraryMode != mode)
  {
    self->_sharedLibraryMode = mode;
    [(CAMControlDrawerButton *)self updateImageAnimated:animated];

    [(CAMControlDrawerMenuButton *)self updateLabelsIfNeeded];
  }
}

- (BOOL)isMenuItemSelected:(id)selected
{
  value = [selected value];
  v5 = CAMSharedLibraryModeIsOn([value integerValue]);
  LOBYTE(self) = v5 ^ CAMSharedLibraryModeIsOn([(CAMDrawerSharedLibraryButton *)self sharedLibraryMode]);

  return self ^ 1;
}

- (id)loadMenuItems
{
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v3 = [CAMControlDrawerMenuItem alloc];
  v4 = CAMLocalizedFrameworkString(@"SHARED", 0);
  v5 = [(CAMControlDrawerMenuItem *)v3 initWithTitle:v4 value:&unk_1F16C8060];

  [v2 addObject:v5];
  v6 = [CAMControlDrawerMenuItem alloc];
  v7 = CAMLocalizedFrameworkString(@"PERSONAL", 0);
  v8 = [(CAMControlDrawerMenuItem *)v6 initWithTitle:v7 value:&unk_1F16C80A8];

  [v2 addObject:v8];

  return v2;
}

- (void)didSelectMenuItem:(id)item
{
  itemCopy = item;
  sharedLibraryMode = [(CAMDrawerSharedLibraryButton *)self sharedLibraryMode];
  value = [itemCopy value];

  integerValue = [value integerValue];
  if (sharedLibraryMode != integerValue)
  {
    [(CAMDrawerSharedLibraryButton *)self setSharedLibraryMode:integerValue animated:1];

    [(CAMDrawerSharedLibraryButton *)self sendActionsForControlEvents:4096];
  }
}

- (BOOL)shouldUseActiveTintForCurrentState
{
  sharedLibraryMode = [(CAMDrawerSharedLibraryButton *)self sharedLibraryMode];

  return CAMSharedLibraryModeIsOn(sharedLibraryMode);
}

@end