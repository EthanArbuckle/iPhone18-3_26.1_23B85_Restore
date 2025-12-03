@interface ATXIntentComparator
+ (BOOL)intent:(id)intent isEqualToIntent:(id)toIntent;
- (ATXIntentComparator)init;
@end

@implementation ATXIntentComparator

+ (BOOL)intent:(id)intent isEqualToIntent:(id)toIntent
{
  intentCopy = intent;
  toIntentCopy = toIntent;
  v7 = sub_244194024(intentCopy, toIntentCopy);

  return v7 & 1;
}

- (ATXIntentComparator)init
{
  v3.receiver = self;
  v3.super_class = ATXIntentComparator;
  return [(ATXIntentComparator *)&v3 init];
}

@end