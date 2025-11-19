@interface ATXIntentComparator
+ (BOOL)intent:(id)a3 isEqualToIntent:(id)a4;
- (ATXIntentComparator)init;
@end

@implementation ATXIntentComparator

+ (BOOL)intent:(id)a3 isEqualToIntent:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_244194024(v5, v6);

  return v7 & 1;
}

- (ATXIntentComparator)init
{
  v3.receiver = self;
  v3.super_class = ATXIntentComparator;
  return [(ATXIntentComparator *)&v3 init];
}

@end