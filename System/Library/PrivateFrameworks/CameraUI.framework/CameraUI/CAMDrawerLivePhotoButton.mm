@interface CAMDrawerLivePhotoButton
- (BOOL)isMenuItemSelected:(id)selected;
- (id)imageNameForAXHUD;
- (id)loadMenuItems;
- (void)didSelectMenuItem:(id)item;
- (void)setLivePhotoMode:(int64_t)mode animated:(BOOL)animated;
@end

@implementation CAMDrawerLivePhotoButton

- (void)setLivePhotoMode:(int64_t)mode animated:(BOOL)animated
{
  if (self->_livePhotoMode != mode)
  {
    self->_livePhotoMode = mode;
    [(CAMControlDrawerButton *)self updateImageAnimated:animated];

    [(CAMControlDrawerMenuButton *)self updateLabelsIfNeeded];
  }
}

- (BOOL)isMenuItemSelected:(id)selected
{
  value = [selected value];
  integerValue = [value integerValue];
  LOBYTE(self) = integerValue == [(CAMDrawerLivePhotoButton *)self livePhotoMode];

  return self;
}

- (id)loadMenuItems
{
  v18[3] = *MEMORY[0x1E69E9840];
  v2 = [CAMControlDrawerMenuItem alloc];
  v3 = CAMLocalizedFrameworkString(@"LIVE_PHOTO_BUTTON_ON", 0);
  v4 = CAMLocalizedFrameworkString(@"LIVE_LIVE_PHOTO_BUTTON_ON", 0);
  v5 = [(CAMControlDrawerMenuItem *)v2 initWithTitle:v3 selectedTitle:v4 value:&unk_1F16C8078];

  v6 = [CAMControlDrawerMenuItem alloc];
  v7 = CAMLocalizedFrameworkString(@"LIVE_PHOTO_BUTTON_OFF", 0);
  v8 = CAMLocalizedFrameworkString(@"LIVE_LIVE_PHOTO_BUTTON_OFF", 0);
  v9 = [(CAMControlDrawerMenuItem *)v6 initWithTitle:v7 selectedTitle:v8 value:&unk_1F16C8090];

  v10 = +[CAMCaptureCapabilities capabilities];
  if ([v10 isLivePhotoAutoModeSupported])
  {
    v11 = [CAMControlDrawerMenuItem alloc];
    v12 = CAMLocalizedFrameworkString(@"LIVE_PHOTO_BUTTON_AUTO", 0);
    v13 = CAMLocalizedFrameworkString(@"LIVE_LIVE_PHOTO_BUTTON_AUTO", 0);
    v14 = [(CAMControlDrawerMenuItem *)v11 initWithTitle:v12 selectedTitle:v13 value:&unk_1F16C8060];

    v18[0] = v14;
    v18[1] = v5;
    v18[2] = v9;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
  }

  else
  {
    v17[0] = v5;
    v17[1] = v9;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  }

  return v15;
}

- (void)didSelectMenuItem:(id)item
{
  value = [item value];
  integerValue = [value integerValue];

  if (integerValue != [(CAMDrawerLivePhotoButton *)self livePhotoMode])
  {
    [(CAMDrawerLivePhotoButton *)self setLivePhotoMode:integerValue animated:1];

    [(CAMDrawerLivePhotoButton *)self sendActionsForControlEvents:4096];
  }
}

- (id)imageNameForAXHUD
{
  if ([(CAMDrawerLivePhotoButton *)self shouldShowSlashForCurrentState])
  {
    imageNameForCurrentState = @"livephoto.slash";
  }

  else
  {
    imageNameForCurrentState = [(CAMDrawerLivePhotoButton *)self imageNameForCurrentState];
  }

  return imageNameForCurrentState;
}

@end