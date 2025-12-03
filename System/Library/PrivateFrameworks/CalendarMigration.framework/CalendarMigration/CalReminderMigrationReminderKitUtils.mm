@interface CalReminderMigrationReminderKitUtils
+ (id)hexColorStringByRemovingAlphaFromHexString:(id)string;
@end

@implementation CalReminderMigrationReminderKitUtils

+ (id)hexColorStringByRemovingAlphaFromHexString:(id)string
{
  stringCopy = string;
  if ([stringCopy length] == 9)
  {
    v4 = [stringCopy substringWithRange:{0, 7}];

    stringCopy = v4;
  }

  uppercaseString = [stringCopy uppercaseString];

  return uppercaseString;
}

@end