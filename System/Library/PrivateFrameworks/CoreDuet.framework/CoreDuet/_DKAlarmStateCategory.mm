@interface _DKAlarmStateCategory
+ (id)firing;
+ (id)snoozed;
+ (id)stopped;
@end

@implementation _DKAlarmStateCategory

+ (id)firing
{
  type = [self type];
  v3 = [_DKCategory categoryWithInteger:0 type:type];

  return v3;
}

+ (id)stopped
{
  type = [self type];
  v3 = [_DKCategory categoryWithInteger:1 type:type];

  return v3;
}

+ (id)snoozed
{
  type = [self type];
  v3 = [_DKCategory categoryWithInteger:2 type:type];

  return v3;
}

@end