@interface FICelebrationAssetURLProvider
+ (id)_movieNameForAchievementIdentifier:(id)identifier variantNumber:(unint64_t)number;
+ (id)_movieNameForGoalType:(int64_t)type variantNumber:(unint64_t)number;
+ (id)celebrationMovieURLForAchievementIdentifer:(id)identifer;
+ (id)celebrationMovieURLForGoalType:(int64_t)type;
@end

@implementation FICelebrationAssetURLProvider

+ (id)celebrationMovieURLForGoalType:(int64_t)type
{
  v4 = [objc_opt_class() _movieNameForGoalType:type variantNumber:1];
  v5 = FIFitnessUIAssetsBundle();
  _celebrationMovieSubdirectory = [self _celebrationMovieSubdirectory];
  v7 = [v5 URLForResource:v4 withExtension:@"mov" subdirectory:_celebrationMovieSubdirectory];

  return v7;
}

+ (id)celebrationMovieURLForAchievementIdentifer:(id)identifer
{
  identiferCopy = identifer;
  v5 = [objc_opt_class() _movieNameForAchievementIdentifier:identiferCopy variantNumber:1];

  v6 = FIFitnessUIAssetsBundle();
  _celebrationMovieSubdirectory = [self _celebrationMovieSubdirectory];
  v8 = [v6 URLForResource:v5 withExtension:@"mov" subdirectory:_celebrationMovieSubdirectory];

  return v8;
}

+ (id)_movieNameForGoalType:(int64_t)type variantNumber:(unint64_t)number
{
  if ((type - 1) > 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_2790049E8[type - 1];
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"goal_complete_%@_%lu", v6, number, v4, v5];
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

  number = [MEMORY[0x277CCACA8] stringWithFormat:@"achievement_earned_%@_%lu", v6, number];

  return number;
}

@end