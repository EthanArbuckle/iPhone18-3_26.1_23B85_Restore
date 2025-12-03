@interface AchievementBadge
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)layoutSubviews;
@end

@implementation AchievementBadge

- (void)layoutSubviews
{
  selfCopy = self;
  AchievementBadge.layoutSubviews()();
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  selfCopy = self;
  AchievementBadge._dynamicUserInterfaceTraitDidChange()();
}

@end