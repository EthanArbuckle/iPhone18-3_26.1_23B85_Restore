@interface InterstitialListViewCell.HeaderView
- (UIColor)tintColor;
- (void)performButtonAction;
- (void)setTintColor:(id)a3;
@end

@implementation InterstitialListViewCell.HeaderView

- (UIColor)tintColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for InterstitialListViewCell.HeaderView();
  v2 = [(InterstitialListViewCell.HeaderView *)&v4 tintColor];

  return v2;
}

- (void)setTintColor:(id)a3
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for InterstitialListViewCell.HeaderView();
  v4 = a3;
  v5 = v8.receiver;
  [(InterstitialListViewCell.HeaderView *)&v8 setTintColor:v4];
  v6 = *&v5[OBJC_IVAR____TtCC9MomentsUI24InterstitialListViewCell10HeaderView_button];
  v7 = [v5 tintColor];
  [v6 setTintColor_];
}

- (void)performButtonAction
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0xA8);
  v9 = self;
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