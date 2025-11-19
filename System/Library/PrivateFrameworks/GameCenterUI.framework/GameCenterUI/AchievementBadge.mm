@interface AchievementBadge
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)layoutSubviews;
@end

@implementation AchievementBadge

- (void)layoutSubviews
{
  v2 = self;
  AchievementBadge.layoutSubviews()();
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v2 = self;
  AchievementBadge._dynamicUserInterfaceTraitDidChange()();
}

@end