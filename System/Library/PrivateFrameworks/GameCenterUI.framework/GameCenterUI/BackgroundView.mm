@interface BackgroundView
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)layoutSubviews;
@end

@implementation BackgroundView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_24DFEC5E0();
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  selfCopy = self;
  sub_24DFEC70C();
}

@end