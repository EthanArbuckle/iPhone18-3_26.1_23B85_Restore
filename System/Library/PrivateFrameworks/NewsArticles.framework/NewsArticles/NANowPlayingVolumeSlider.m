@interface NANowPlayingVolumeSlider
- (BOOL)isOnScreenForVolumeDisplay;
- (CGPoint)accessibilityActivationPoint;
- (NSString)accessibilityValue;
- (NSString)volumeAudioCategory;
- (UIWindowScene)windowSceneForVolumeDisplay;
- (void)didMoveToWindow;
- (void)volumeController:(id)a3 volumeControlAvailableDidChange:(BOOL)a4;
- (void)volumeController:(id)a3 volumeValueDidChange:(float)a4;
@end

@implementation NANowPlayingVolumeSlider

- (void)didMoveToWindow
{
  v2 = self;
  sub_1D7ADD9B8();
}

- (void)volumeController:(id)a3 volumeControlAvailableDidChange:(BOOL)a4
{
  v4 = self;
  sub_1D7ADCD40();
}

- (void)volumeController:(id)a3 volumeValueDidChange:(float)a4
{
  v5 = a3;
  v6 = self;
  sub_1D7ADE060();
}

- (UIWindowScene)windowSceneForVolumeDisplay
{
  v2 = self;
  v3 = [(NANowPlayingVolumeSlider *)v2 window];
  v4 = [v3 windowScene];

  return v4;
}

- (NSString)volumeAudioCategory
{
  v2 = self;
  sub_1D7ADDCDC();

  v3 = sub_1D7D3031C();

  return v3;
}

- (BOOL)isOnScreenForVolumeDisplay
{
  v2 = self;
  if ([(NANowPlayingVolumeSlider *)v2 isHidden])
  {

    return 0;
  }

  else
  {
    [(NANowPlayingVolumeSlider *)v2 alpha];
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
  v4 = self;
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