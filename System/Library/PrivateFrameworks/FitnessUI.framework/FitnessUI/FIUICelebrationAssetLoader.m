@interface FIUICelebrationAssetLoader
+ (id)_movieNameForAchievementIdentifier:(id)a3 variantNumber:(unint64_t)a4;
+ (id)_movieNameForGoalType:(int64_t)a3 variantNumber:(unint64_t)a4;
+ (id)celebrationMovieURLForAchievementIdentifer:(id)a3;
+ (id)celebrationMovieURLForGoalType:(int64_t)a3;
@end

@implementation FIUICelebrationAssetLoader

+ (id)celebrationMovieURLForGoalType:(int64_t)a3
{
  v3 = [objc_opt_class() _movieNameForGoalType:a3 variantNumber:1];
  v4 = FIUIAssetsBundle();
  v5 = [v4 URLForResource:v3 withExtension:@"mov" subdirectory:@"GoalCompletionMovies"];

  return v5;
}

+ (id)celebrationMovieURLForAchievementIdentifer:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _movieNameForAchievementIdentifier:v3 variantNumber:1];

  v5 = FIUIAssetsBundle();
  v6 = [v5 URLForResource:v4 withExtension:@"mov" subdirectory:@"GoalCompletionMovies"];

  return v6;
}

+ (id)_movieNameForGoalType:(int64_t)a3 variantNumber:(unint64_t)a4
{
  if ((a3 - 1) > 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E878C5E8[a3 - 1];
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"goal_complete_%@_%lu", v6, a4, v4, v5];
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

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"achievement_earned_%@_%lu", v6, a4];

  return v7;
}

@end