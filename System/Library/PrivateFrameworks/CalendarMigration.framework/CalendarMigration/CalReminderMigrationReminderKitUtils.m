@interface CalReminderMigrationReminderKitUtils
+ (id)hexColorStringByRemovingAlphaFromHexString:(id)a3;
@end

@implementation CalReminderMigrationReminderKitUtils

+ (id)hexColorStringByRemovingAlphaFromHexString:(id)a3
{
  v3 = a3;
  if ([v3 length] == 9)
  {
    v4 = [v3 substringWithRange:{0, 7}];

    v3 = v4;
  }

  v5 = [v3 uppercaseString];

  return v5;
}

@end