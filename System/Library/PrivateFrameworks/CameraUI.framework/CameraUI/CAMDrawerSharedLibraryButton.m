@interface CAMDrawerSharedLibraryButton
- (BOOL)isMenuItemSelected:(id)a3;
- (BOOL)shouldUseActiveTintForCurrentState;
- (id)loadMenuItems;
- (void)didSelectMenuItem:(id)a3;
- (void)setSharedLibraryMode:(int64_t)a3 animated:(BOOL)a4;
@end

@implementation CAMDrawerSharedLibraryButton

- (void)setSharedLibraryMode:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_sharedLibraryMode != a3)
  {
    self->_sharedLibraryMode = a3;
    [(CAMControlDrawerButton *)self updateImageAnimated:a4];

    [(CAMControlDrawerMenuButton *)self updateLabelsIfNeeded];
  }
}

- (BOOL)isMenuItemSelected:(id)a3
{
  v4 = [a3 value];
  v5 = CAMSharedLibraryModeIsOn([v4 integerValue]);
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

- (void)didSelectMenuItem:(id)a3
{
  v4 = a3;
  v5 = [(CAMDrawerSharedLibraryButton *)self sharedLibraryMode];
  v6 = [v4 value];

  v7 = [v6 integerValue];
  if (v5 != v7)
  {
    [(CAMDrawerSharedLibraryButton *)self setSharedLibraryMode:v7 animated:1];

    [(CAMDrawerSharedLibraryButton *)self sendActionsForControlEvents:4096];
  }
}

- (BOOL)shouldUseActiveTintForCurrentState
{
  v2 = [(CAMDrawerSharedLibraryButton *)self sharedLibraryMode];

  return CAMSharedLibraryModeIsOn(v2);
}

@end