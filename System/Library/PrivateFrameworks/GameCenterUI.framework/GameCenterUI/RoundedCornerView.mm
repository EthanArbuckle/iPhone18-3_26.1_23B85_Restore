@interface RoundedCornerView
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation RoundedCornerView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_24E0988E4();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_24E0989A4(change);
}

@end