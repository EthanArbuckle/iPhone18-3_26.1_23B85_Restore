@interface CAMDrawerTimerButton
- (BOOL)isMenuItemSelected:(id)a3;
- (id)loadMenuItems;
- (void)didSelectMenuItem:(id)a3;
- (void)setTimerDuration:(int64_t)a3;
@end

@implementation CAMDrawerTimerButton

- (void)setTimerDuration:(int64_t)a3
{
  if (self->_timerDuration != a3)
  {
    self->_timerDuration = a3;
    [(CAMControlDrawerButton *)self updateImage];

    [(CAMControlDrawerMenuButton *)self updateLabelsIfNeeded];
  }
}

- (BOOL)isMenuItemSelected:(id)a3
{
  v4 = [a3 value];
  v5 = [v4 integerValue];
  LOBYTE(self) = v5 == [(CAMDrawerTimerButton *)self timerDuration];

  return self;
}

- (id)loadMenuItems
{
  v24[4] = *MEMORY[0x1E69E9840];
  v2 = CAMTimerDurationFormatter();
  v23 = CAMLocalizedFrameworkString(@"TIMER_OFF_TEXT", 0);
  v22 = CAMLocalizedFrameworkString(@"TIMER_TIMER_OFF_TEXT", 0);
  v3 = CAMLocalizedFrameworkString(@"TIMER_DURATION_TEXT", 0);
  v4 = MEMORY[0x1E696AEC0];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:3.0];
  v6 = [v2 stringFromNumber:v5];
  v21 = [v4 stringWithValidatedFormat:v3 validFormatSpecifiers:@"%@" error:0, v6];

  v7 = MEMORY[0x1E696AEC0];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:5.0];
  v9 = [v2 stringFromNumber:v8];
  v20 = [v7 stringWithValidatedFormat:v3 validFormatSpecifiers:@"%@" error:0, v9];

  v10 = MEMORY[0x1E696AEC0];
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:10.0];
  v12 = [v2 stringFromNumber:v11];
  v13 = [v10 stringWithValidatedFormat:v3 validFormatSpecifiers:@"%@" error:0, v12];

  v14 = [[CAMControlDrawerMenuItem alloc] initWithTitle:v23 selectedTitle:v22 value:&unk_1F16C8090];
  v15 = [[CAMControlDrawerMenuItem alloc] initWithTitle:v21 value:&unk_1F16C8078];
  v16 = [[CAMControlDrawerMenuItem alloc] initWithTitle:v20 value:&unk_1F16C8060];
  v17 = [[CAMControlDrawerMenuItem alloc] initWithTitle:v13 value:&unk_1F16C80A8];
  v24[0] = v14;
  v24[1] = v15;
  v24[2] = v16;
  v24[3] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];

  return v18;
}

- (void)didSelectMenuItem:(id)a3
{
  v4 = a3;
  v5 = [(CAMDrawerTimerButton *)self timerDuration];
  v6 = [v4 value];

  v7 = [v6 integerValue];
  if (v7 != v5)
  {
    [(CAMDrawerTimerButton *)self setTimerDuration:v7];

    [(CAMDrawerTimerButton *)self sendActionsForControlEvents:4096];
  }
}

@end