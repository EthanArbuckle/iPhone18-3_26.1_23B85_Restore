@interface SectionBackgroundView
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SectionBackgroundView

- (void)layoutSubviews
{
  v2 = self;
  sub_24E14FFCC();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_24E1502E8(a3);
}

- (void)prepareForReuse
{
  v2 = self;
  sub_24E1503E8();
}

@end