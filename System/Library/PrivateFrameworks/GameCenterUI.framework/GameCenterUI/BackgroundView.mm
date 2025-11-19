@interface BackgroundView
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)layoutSubviews;
@end

@implementation BackgroundView

- (void)layoutSubviews
{
  v2 = self;
  sub_24DFEC5E0();
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v2 = self;
  sub_24DFEC70C();
}

@end