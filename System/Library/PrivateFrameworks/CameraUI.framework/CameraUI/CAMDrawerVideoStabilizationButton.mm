@interface CAMDrawerVideoStabilizationButton
- (BOOL)isMenuItemSelected:(id)selected;
- (id)loadMenuItems;
- (void)didSelectMenuItem:(id)item;
- (void)setVideoStabilizationMode:(int64_t)mode animated:(BOOL)animated;
@end

@implementation CAMDrawerVideoStabilizationButton

- (void)setVideoStabilizationMode:(int64_t)mode animated:(BOOL)animated
{
  if (self->_videoStabilizationMode != mode)
  {
    self->_videoStabilizationMode = mode;
    [(CAMControlDrawerButton *)self updateImageAnimated:animated];

    [(CAMControlDrawerMenuButton *)self updateLabelsIfNeeded];
  }
}

- (BOOL)isMenuItemSelected:(id)selected
{
  value = [selected value];
  integerValue = [value integerValue];
  LOBYTE(self) = integerValue == [(CAMDrawerVideoStabilizationButton *)self videoStabilizationMode];

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

- (void)didSelectMenuItem:(id)item
{
  itemCopy = item;
  videoStabilizationMode = [(CAMDrawerVideoStabilizationButton *)self videoStabilizationMode];
  value = [itemCopy value];

  integerValue = [value integerValue];
  if (videoStabilizationMode != integerValue)
  {
    [(CAMDrawerVideoStabilizationButton *)self setVideoStabilizationMode:integerValue animated:1];

    [(CAMDrawerVideoStabilizationButton *)self sendActionsForControlEvents:4096];
  }
}

@end