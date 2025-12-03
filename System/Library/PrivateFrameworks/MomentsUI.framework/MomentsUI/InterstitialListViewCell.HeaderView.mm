@interface InterstitialListViewCell.HeaderView
- (UIColor)tintColor;
- (void)performButtonAction;
- (void)setTintColor:(id)color;
@end

@implementation InterstitialListViewCell.HeaderView

- (UIColor)tintColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for InterstitialListViewCell.HeaderView();
  tintColor = [(InterstitialListViewCell.HeaderView *)&v4 tintColor];

  return tintColor;
}

- (void)setTintColor:(id)color
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for InterstitialListViewCell.HeaderView();
  colorCopy = color;
  v5 = v8.receiver;
  [(InterstitialListViewCell.HeaderView *)&v8 setTintColor:colorCopy];
  v6 = *&v5[OBJC_IVAR____TtCC9MomentsUI24InterstitialListViewCell10HeaderView_button];
  tintColor = [v5 tintColor];
  [v6 setTintColor_];
}

- (void)performButtonAction
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0xA8);
  selfCopy = self;
  v3 = v2();
  if (v5 == -1)
  {
  }

  else
  {
    v6 = v4;
    v7 = v5;
    v8 = v3;
    v3();

    outlined consume of InterstitialListViewCell.HeaderView.ButtonAction?(v8, v6, v7);
  }
}

@end