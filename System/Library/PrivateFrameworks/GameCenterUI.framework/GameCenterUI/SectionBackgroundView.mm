@interface SectionBackgroundView
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SectionBackgroundView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_24E14FFCC();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_24E1502E8(change);
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_24E1503E8();
}

@end