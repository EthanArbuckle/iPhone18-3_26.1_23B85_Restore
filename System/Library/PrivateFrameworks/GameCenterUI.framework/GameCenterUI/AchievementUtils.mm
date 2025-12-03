@interface AchievementUtils
+ (id)achievementBadgeWithAchievement:(id)achievement;
@end

@implementation AchievementUtils

+ (id)achievementBadgeWithAchievement:(id)achievement
{
  achievementCopy = achievement;
  v4 = sub_24E250B98();

  return v4;
}

@end