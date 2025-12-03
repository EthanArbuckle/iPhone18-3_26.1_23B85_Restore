@interface FIUICelebrationAssetLoader
+ (id)_movieNameForAchievementIdentifier:(id)identifier variantNumber:(unint64_t)number;
+ (id)_movieNameForGoalType:(int64_t)type variantNumber:(unint64_t)number;
+ (id)celebrationMovieURLForAchievementIdentifer:(id)identifer;
+ (id)celebrationMovieURLForGoalType:(int64_t)type;
@end

@implementation FIUICelebrationAssetLoader

+ (id)celebrationMovieURLForGoalType:(int64_t)type
{
  v3 = [objc_opt_class() _movieNameForGoalType:type variantNumber:1];
  v4 = FIUIAssetsBundle();
  v5 = [v4 URLForResource:v3 withExtension:@"mov" subdirectory:@"GoalCompletionMovies"];

  return v5;
}

+ (id)celebrationMovieURLForAchievementIdentifer:(id)identifer
{
  identiferCopy = identifer;
  v4 = [objc_opt_class() _movieNameForAchievementIdentifier:identiferCopy variantNumber:1];

  v5 = FIUIAssetsBundle();
  v6 = [v5 URLForResource:v4 withExtension:@"mov" subdirectory:@"GoalCompletionMovies"];

  return v6;
}

+ (id)_movieNameForGoalType:(int64_t)type variantNumber:(unint64_t)number
{
  if ((type - 1) > 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E878C5E8[type - 1];
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"goal_complete_%@_%lu", v6, number, v4, v5];
}

+ (id)_movieNameForAchievementIdentifier:(id)identifier variantNumber:(unint64_t)number
{
  identifierCopy = identifier;
  v6 = @"MonthlyChallenge";
  if (([identifierCopy containsString:@"MonthlyChallenge"] & 1) == 0)
  {
    v6 = @"FirstWorkout";
    if (([identifierCopy containsString:@"FirstWorkout"] & 1) == 0)
    {
      v6 = @"BestWorkout";
      if (([identifierCopy containsString:@"BestWorkout"] & 1) == 0)
      {
        v6 = @"MoveGoals";
        if (([identifierCopy containsString:@"MoveGoals"] & 1) == 0)
        {
          v6 = identifierCopy;
        }
      }
    }
  }

  number = [MEMORY[0x1E696AEC0] stringWithFormat:@"achievement_earned_%@_%lu", v6, number];

  return number;
}

@end