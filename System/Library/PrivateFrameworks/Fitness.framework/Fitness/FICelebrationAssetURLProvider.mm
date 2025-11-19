@interface FICelebrationAssetURLProvider
+ (id)_movieNameForAchievementIdentifier:(id)a3 variantNumber:(unint64_t)a4;
+ (id)_movieNameForGoalType:(int64_t)a3 variantNumber:(unint64_t)a4;
+ (id)celebrationMovieURLForAchievementIdentifer:(id)a3;
+ (id)celebrationMovieURLForGoalType:(int64_t)a3;
@end

@implementation FICelebrationAssetURLProvider

+ (id)celebrationMovieURLForGoalType:(int64_t)a3
{
  v4 = [objc_opt_class() _movieNameForGoalType:a3 variantNumber:1];
  v5 = FIFitnessUIAssetsBundle();
  v6 = [a1 _celebrationMovieSubdirectory];
  v7 = [v5 URLForResource:v4 withExtension:@"mov" subdirectory:v6];

  return v7;
}

+ (id)celebrationMovieURLForAchievementIdentifer:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _movieNameForAchievementIdentifier:v4 variantNumber:1];

  v6 = FIFitnessUIAssetsBundle();
  v7 = [a1 _celebrationMovieSubdirectory];
  v8 = [v6 URLForResource:v5 withExtension:@"mov" subdirectory:v7];

  return v8;
}

+ (id)_movieNameForGoalType:(int64_t)a3 variantNumber:(unint64_t)a4
{
  if ((a3 - 1) > 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_2790049E8[a3 - 1];
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"goal_complete_%@_%lu", v6, a4, v4, v5];
}

+ (id)_movieNameForAchievementIdentifier:(id)a3 variantNumber:(unint64_t)a4
{
  v5 = a3;
  v6 = @"MonthlyChallenge";
  if (([v5 containsString:@"MonthlyChallenge"] & 1) == 0)
  {
    v6 = @"FirstWorkout";
    if (([v5 containsString:@"FirstWorkout"] & 1) == 0)
    {
      v6 = @"BestWorkout";
      if (([v5 containsString:@"BestWorkout"] & 1) == 0)
      {
        v6 = @"MoveGoals";
        if (([v5 containsString:@"MoveGoals"] & 1) == 0)
        {
          v6 = v5;
        }
      }
    }
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"achievement_earned_%@_%lu", v6, a4];

  return v7;
}

@end