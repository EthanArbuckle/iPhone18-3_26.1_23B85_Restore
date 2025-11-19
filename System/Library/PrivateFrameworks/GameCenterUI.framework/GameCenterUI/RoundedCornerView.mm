@interface RoundedCornerView
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation RoundedCornerView

- (void)layoutSubviews
{
  v2 = self;
  sub_24E0988E4();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_24E0989A4(a3);
}

@end