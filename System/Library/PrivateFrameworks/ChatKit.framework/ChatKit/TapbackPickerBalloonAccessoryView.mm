@interface TapbackPickerBalloonAccessoryView
- (UIColor)tintColor;
- (void)hoverRecognized:(id)recognized;
- (void)setTintColor:(id)color;
@end

@implementation TapbackPickerBalloonAccessoryView

- (UIColor)tintColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for TapbackPickerBalloonAccessoryView();
  tintColor = [(TapbackPickerContainerView *)&v4 tintColor];

  return tintColor;
}

- (void)setTintColor:(id)color
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for TapbackPickerBalloonAccessoryView();
  v4 = v10.receiver;
  colorCopy = color;
  [(TapbackPickerContainerView *)&v10 setTintColor:colorCopy];
  tintColor = [v4 tintColor];
  if (tintColor)
  {
    v7 = tintColor;
    v8 = sub_190BF420C();
    if (v8)
    {
      [*(v8 + OBJC_IVAR____TtC7ChatKit28TapbackPickerArrowButtonView_gradientBackground) setBackgroundColor_];
    }

    v9 = sub_190BF422C();
    if (v9)
    {
      [*(v9 + OBJC_IVAR____TtC7ChatKit28TapbackPickerArrowButtonView_gradientBackground) setBackgroundColor_];
    }
  }

  else
  {
    __break(1u);
  }
}

- (void)hoverRecognized:(id)recognized
{
  recognizedCopy = recognized;
  selfCopy = self;
  sub_190BF455C(&unk_1F041E400, sub_190BF4C90, &block_descriptor_73_1);
}

@end