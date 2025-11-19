@interface TapbackPickerBalloonAccessoryView
- (UIColor)tintColor;
- (void)hoverRecognized:(id)a3;
- (void)setTintColor:(id)a3;
@end

@implementation TapbackPickerBalloonAccessoryView

- (UIColor)tintColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for TapbackPickerBalloonAccessoryView();
  v2 = [(TapbackPickerContainerView *)&v4 tintColor];

  return v2;
}

- (void)setTintColor:(id)a3
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for TapbackPickerBalloonAccessoryView();
  v4 = v10.receiver;
  v5 = a3;
  [(TapbackPickerContainerView *)&v10 setTintColor:v5];
  v6 = [v4 tintColor];
  if (v6)
  {
    v7 = v6;
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

- (void)hoverRecognized:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_190BF455C(&unk_1F041E400, sub_190BF4C90, &block_descriptor_73_1);
}

@end