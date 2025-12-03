@interface ShadowView
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ShadowView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_24E30A6CC();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_24E30A894(change);
}

@end