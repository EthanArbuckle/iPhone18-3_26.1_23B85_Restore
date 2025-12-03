@interface NowPlayingVolumeControlsView
- (BOOL)isOnScreenForVolumeDisplay;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)volumeAudioCategory;
- (UIWindowScene)windowSceneForVolumeDisplay;
- (void)layoutSubviews;
- (void)sliderLongPressActionWithSender:(id)sender;
- (void)sliderValueChangedWithSender:(id)sender;
- (void)stepperValueChangedWithSender:(id)sender;
- (void)updateVisualStyling;
@end

@implementation NowPlayingVolumeControlsView

- (NSString)volumeAudioCategory
{
  audioCategory = [objc_opt_self() audioCategory];
  if (!audioCategory)
  {
    sub_1A22E65C8();
    v3 = sub_1A22E6598();

    audioCategory = v3;
  }

  return audioCategory;
}

- (UIWindowScene)windowSceneForVolumeDisplay
{
  selfCopy = self;
  window = [(NowPlayingVolumeControlsView *)selfCopy window];
  windowScene = [window windowScene];

  return windowScene;
}

- (BOOL)isOnScreenForVolumeDisplay
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.isa) + 0xF0);
  selfCopy = self;
  LOBYTE(v2) = v2();

  return v2 & 1;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.isa) + 0xC0);
  selfCopy = self;
  v7 = v5(v12);
  v8 = v12[0];
  v9 = (*((*v4 & selfCopy->super.super.super.isa) + 0x108))(v7);

  v10 = v8 * v9;
  v11 = width;
  result.height = v10;
  result.width = v11;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1A22655B4();
}

- (void)sliderValueChangedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1A2265840(senderCopy);
}

- (void)sliderLongPressActionWithSender:(id)sender
{
  v3 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.isa) + 0xA8);
  selfCopy = self;
  if (v3())
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    [*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_slider) value];
    (*(v5 + 16))(selfCopy, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

- (void)stepperValueChangedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1A2265D70(senderCopy);
}

- (void)updateVisualStyling
{
  selfCopy = self;
  sub_1A22662D4();
}

@end