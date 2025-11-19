@interface ContactQuickActionView
- (void)buttonTapped:(id)a3;
- (void)layoutSubviews;
@end

@implementation ContactQuickActionView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ContactQuickActionView();
  v2 = v4.receiver;
  [(ContactQuickActionView *)&v4 layoutSubviews];
  v3 = [v2 layer];
  [v2 bounds];
  [v3 setCornerRadius_];

  [v2 setClipsToBounds_];
}

- (void)buttonTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BA3C01E4();
}

@end