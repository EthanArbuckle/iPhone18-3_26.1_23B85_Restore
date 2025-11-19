@interface WFColor(Reminders)
+ (id)colorWithRemindersColor:()Reminders;
@end

@implementation WFColor(Reminders)

+ (id)colorWithRemindersColor:()Reminders
{
  v4 = a3;
  v5 = [v4 colorRGBSpace];
  [v4 red];
  v7 = v6;
  [v4 green];
  v9 = v8;
  [v4 blue];
  v11 = v10;
  [v4 alpha];
  v13 = v12;

  if (v5 == 1)
  {
    [a1 colorWithDisplayP3Red:v7 green:v9 blue:v11 alpha:v13];
  }

  else
  {
    [a1 colorWithRed:v7 green:v9 blue:v11 alpha:v13];
  }
  v14 = ;

  return v14;
}

@end