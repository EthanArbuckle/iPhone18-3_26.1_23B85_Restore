@interface CAMDrawerVideoStabilizationButton
- (BOOL)isMenuItemSelected:(id)a3;
- (id)loadMenuItems;
- (void)didSelectMenuItem:(id)a3;
- (void)setVideoStabilizationMode:(int64_t)a3 animated:(BOOL)a4;
@end

@implementation CAMDrawerVideoStabilizationButton

- (void)setVideoStabilizationMode:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_videoStabilizationMode != a3)
  {
    self->_videoStabilizationMode = a3;
    [(CAMControlDrawerButton *)self updateImageAnimated:a4];

    [(CAMControlDrawerMenuButton *)self updateLabelsIfNeeded];
  }
}

- (BOOL)isMenuItemSelected:(id)a3
{
  v4 = [a3 value];
  v5 = [v4 integerValue];
  LOBYTE(self) = v5 == [(CAMDrawerVideoStabilizationButton *)self videoStabilizationMode];

  return self;
}

- (id)loadMenuItems
{
  v12[2] = *MEMORY[0x1E69E9840];
  v2 = [CAMControlDrawerMenuItem alloc];
  v3 = CAMLocalizedFrameworkString(@"ACTION_ON", 0);
  v4 = CAMLocalizedFrameworkString(@"ACTION_ACTION_ON", 0);
  v5 = [(CAMControlDrawerMenuItem *)v2 initWithTitle:v3 selectedTitle:v4 value:&unk_1F16C8078];

  v6 = [CAMControlDrawerMenuItem alloc];
  v7 = CAMLocalizedFrameworkString(@"ACTION_OFF", 0);
  v8 = CAMLocalizedFrameworkString(@"ACTION_ACTION_OFF", 0);
  v9 = [(CAMControlDrawerMenuItem *)v6 initWithTitle:v7 selectedTitle:v8 value:&unk_1F16C8090];

  v12[0] = v5;
  v12[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];

  return v10;
}

- (void)didSelectMenuItem:(id)a3
{
  v4 = a3;
  v5 = [(CAMDrawerVideoStabilizationButton *)self videoStabilizationMode];
  v6 = [v4 value];

  v7 = [v6 integerValue];
  if (v5 != v7)
  {
    [(CAMDrawerVideoStabilizationButton *)self setVideoStabilizationMode:v7 animated:1];

    [(CAMDrawerVideoStabilizationButton *)self sendActionsForControlEvents:4096];
  }
}

@end