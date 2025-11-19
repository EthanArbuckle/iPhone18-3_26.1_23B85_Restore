@interface SectionHeaderView
- (CGSize)sizeThatFits:(CGSize)a3;
- (UILabel)accessibilitySectionHeaderLabel;
- (void)layoutSubviews;
@end

@implementation SectionHeaderView

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  v6 = SectionHeaderView.sizeThatFits(_:)(__PAIR128__(v5, v4));

  width = v6.width;
  height = v6.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  SectionHeaderView.layoutSubviews()();
}

- (UILabel)accessibilitySectionHeaderLabel
{
  v2 = sub_24E0AE8AC();

  return v2;
}

@end