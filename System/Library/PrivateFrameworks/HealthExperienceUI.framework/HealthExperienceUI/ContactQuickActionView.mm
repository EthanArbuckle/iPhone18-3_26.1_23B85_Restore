@interface ContactQuickActionView
- (void)buttonTapped:(id)tapped;
- (void)layoutSubviews;
@end

@implementation ContactQuickActionView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ContactQuickActionView();
  v2 = v4.receiver;
  [(ContactQuickActionView *)&v4 layoutSubviews];
  layer = [v2 layer];
  [v2 bounds];
  [layer setCornerRadius_];

  [v2 setClipsToBounds_];
}

- (void)buttonTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_1BA3C01E4();
}

@end