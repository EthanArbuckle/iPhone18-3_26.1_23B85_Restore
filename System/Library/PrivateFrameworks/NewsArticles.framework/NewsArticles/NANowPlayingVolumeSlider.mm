@interface NANowPlayingVolumeSlider
- (BOOL)isOnScreenForVolumeDisplay;
- (CGPoint)accessibilityActivationPoint;
- (NSString)accessibilityValue;
- (NSString)volumeAudioCategory;
- (UIWindowScene)windowSceneForVolumeDisplay;
- (void)didMoveToWindow;
- (void)volumeController:(id)controller volumeControlAvailableDidChange:(BOOL)change;
- (void)volumeController:(id)controller volumeValueDidChange:(float)change;
@end

@implementation NANowPlayingVolumeSlider

- (void)didMoveToWindow
{
  selfCopy = self;
  sub_1D7ADD9B8();
}

- (void)volumeController:(id)controller volumeControlAvailableDidChange:(BOOL)change
{
  selfCopy = self;
  sub_1D7ADCD40();
}

- (void)volumeController:(id)controller volumeValueDidChange:(float)change
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1D7ADE060();
}

- (UIWindowScene)windowSceneForVolumeDisplay
{
  selfCopy = self;
  window = [(NANowPlayingVolumeSlider *)selfCopy window];
  windowScene = [window windowScene];

  return windowScene;
}

- (NSString)volumeAudioCategory
{
  selfCopy = self;
  sub_1D7ADDCDC();

  v3 = sub_1D7D3031C();

  return v3;
}

- (BOOL)isOnScreenForVolumeDisplay
{
  selfCopy = self;
  if ([(NANowPlayingVolumeSlider *)selfCopy isHidden])
  {

    return 0;
  }

  else
  {
    [(NANowPlayingVolumeSlider *)selfCopy alpha];
    v5 = v4;

    return v5 > 0.0;
  }
}

- (NSString)accessibilityValue
{
  sub_1D7D3096C();
  v2 = sub_1D7D3031C();

  return v2;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR___NANowPlayingVolumeSlider_slider);
  v3 = *&v2[OBJC_IVAR____TtC12NewsArticles10SliderView_elapsedTrack];
  selfCopy = self;
  [v3 accessibilityFrame];
  MaxX = CGRectGetMaxX(v10);
  [v2 accessibilityFrame];
  MidY = CGRectGetMidY(v11);

  v7 = MaxX;
  v8 = MidY;
  result.y = v8;
  result.x = v7;
  return result;
}

@end