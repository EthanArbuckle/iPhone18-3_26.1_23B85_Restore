@interface NowPlayingVolumeControlsView
- (BOOL)isOnScreenForVolumeDisplay;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)volumeAudioCategory;
- (UIWindowScene)windowSceneForVolumeDisplay;
- (void)layoutSubviews;
- (void)sliderLongPressActionWithSender:(id)a3;
- (void)sliderValueChangedWithSender:(id)a3;
- (void)stepperValueChangedWithSender:(id)a3;
- (void)updateVisualStyling;
@end

@implementation NowPlayingVolumeControlsView

- (NSString)volumeAudioCategory
{
  v2 = [objc_opt_self() audioCategory];
  if (!v2)
  {
    sub_1A22E65C8();
    v3 = sub_1A22E6598();

    v2 = v3;
  }

  return v2;
}

- (UIWindowScene)windowSceneForVolumeDisplay
{
  v2 = self;
  v3 = [(NowPlayingVolumeControlsView *)v2 window];
  v4 = [v3 windowScene];

  return v4;
}

- (BOOL)isOnScreenForVolumeDisplay
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.isa) + 0xF0);
  v3 = self;
  LOBYTE(v2) = v2();

  return v2 & 1;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.isa) + 0xC0);
  v6 = self;
  v7 = v5(v12);
  v8 = v12[0];
  v9 = (*((*v4 & v6->super.super.super.isa) + 0x108))(v7);

  v10 = v8 * v9;
  v11 = width;
  result.height = v10;
  result.width = v11;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1A22655B4();
}

- (void)sliderValueChangedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A2265840(v4);
}

- (void)sliderLongPressActionWithSender:(id)a3
{
  v3 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.isa) + 0xA8);
  v7 = self;
  if (v3())
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    [*(&v7->super.super.super.isa + OBJC_IVAR____TtC13MediaControls28NowPlayingVolumeControlsView_slider) value];
    (*(v5 + 16))(v7, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

- (void)stepperValueChangedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A2265D70(v4);
}

- (void)updateVisualStyling
{
  v2 = self;
  sub_1A22662D4();
}

@end