@interface _DKAlarmStateCategory
+ (id)firing;
+ (id)snoozed;
+ (id)stopped;
@end

@implementation _DKAlarmStateCategory

+ (id)firing
{
  v2 = [a1 type];
  v3 = [_DKCategory categoryWithInteger:0 type:v2];

  return v3;
}

+ (id)stopped
{
  v2 = [a1 type];
  v3 = [_DKCategory categoryWithInteger:1 type:v2];

  return v3;
}

+ (id)snoozed
{
  v2 = [a1 type];
  v3 = [_DKCategory categoryWithInteger:2 type:v2];

  return v3;
}

@end