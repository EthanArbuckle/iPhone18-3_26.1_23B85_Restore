@interface WFColor(Reminders)
+ (id)colorWithRemindersColor:()Reminders;
@end

@implementation WFColor(Reminders)

+ (id)colorWithRemindersColor:()Reminders
{
  v4 = a3;
  colorRGBSpace = [v4 colorRGBSpace];
  [v4 red];
  v7 = v6;
  [v4 green];
  v9 = v8;
  [v4 blue];
  v11 = v10;
  [v4 alpha];
  v13 = v12;

  if (colorRGBSpace == 1)
  {
    [self colorWithDisplayP3Red:v7 green:v9 blue:v11 alpha:v13];
  }

  else
  {
    [self colorWithRed:v7 green:v9 blue:v11 alpha:v13];
  }
  v14 = ;

  return v14;
}

@end