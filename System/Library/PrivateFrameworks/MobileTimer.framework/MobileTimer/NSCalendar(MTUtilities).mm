@interface NSCalendar(MTUtilities)
+ (uint64_t)_optionsForBackwards:()MTUtilities;
- (id)_mtNextDateAfterDate:()MTUtilities matchingComponents:backwards:;
- (id)_mtNextDateAfterDate:()MTUtilities matchingUnit:value:backwards:;
- (id)_nextDateHelperAfterDate:()MTUtilities nextDateBlock:;
- (uint64_t)mtDateRequiresSingularTimeString:()MTUtilities;
@end

@implementation NSCalendar(MTUtilities)

- (id)_mtNextDateAfterDate:()MTUtilities matchingComponents:backwards:
{
  v8 = a4;
  v9 = a3;
  v10 = [objc_opt_class() _optionsForBackwards:a5];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__NSCalendar_MTUtilities___mtNextDateAfterDate_matchingComponents_backwards___block_invoke;
  v14[3] = &unk_1E7B0E868;
  v14[4] = self;
  v15 = v8;
  v16 = v10;
  v11 = v8;
  v12 = [self _nextDateHelperAfterDate:v9 nextDateBlock:v14];

  return v12;
}

- (id)_mtNextDateAfterDate:()MTUtilities matchingUnit:value:backwards:
{
  v10 = a3;
  v11 = [objc_opt_class() _optionsForBackwards:a6];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __77__NSCalendar_MTUtilities___mtNextDateAfterDate_matchingUnit_value_backwards___block_invoke;
  v14[3] = &unk_1E7B0E890;
  v14[4] = self;
  v14[5] = a4;
  v14[6] = a5;
  v14[7] = v11;
  v12 = [self _nextDateHelperAfterDate:v10 nextDateBlock:v14];

  return v12;
}

- (id)_nextDateHelperAfterDate:()MTUtilities nextDateBlock:
{
  v6 = a3;
  v7 = a4;
  timeZone = [self timeZone];
  [timeZone daylightSavingTimeOffsetForDate:v6];
  v10 = v9;

  if (v10 > 0.0)
  {
    v11 = [v6 dateByAddingTimeInterval:-v10];
    timeZone2 = [self timeZone];
    [timeZone2 daylightSavingTimeOffsetForDate:v11];
    v14 = v13;

    if (v10 > v14)
    {
      v15 = v7[2](v7, v11);
      if ([v15 mtIsAfterDate:v6])
      {

        goto LABEL_8;
      }
    }
  }

  v15 = v7[2](v7, v6);
LABEL_8:

  return v15;
}

+ (uint64_t)_optionsForBackwards:()MTUtilities
{
  if (a3)
  {
    return 516;
  }

  else
  {
    return 512;
  }
}

- (uint64_t)mtDateRequiresSingularTimeString:()MTUtilities
{
  result = [self component:32 fromDate:a3];
  if (result != 1)
  {
    if (result == 13)
    {
      locale = [self locale];
      mtIsIn24HourTime = [locale mtIsIn24HourTime];

      return mtIsIn24HourTime;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

@end