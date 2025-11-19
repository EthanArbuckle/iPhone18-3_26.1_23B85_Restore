@interface ShadowView
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation ShadowView

- (void)layoutSubviews
{
  v2 = self;
  sub_24E30A6CC();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_24E30A894(a3);
}

@end