@interface RoundEditProfileButton
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation RoundEditProfileButton

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  v4 = sub_24E015444();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_24E015520();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_24E015794(a3);
}

@end