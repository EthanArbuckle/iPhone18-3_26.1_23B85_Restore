@interface _DKMotionCategory
+ (id)automotive;
+ (id)cycling;
+ (id)running;
+ (id)stationary;
+ (id)stationaryAutomotive;
+ (id)unknown;
+ (id)walking;
@end

@implementation _DKMotionCategory

+ (id)unknown
{
  v2 = [a1 type];
  v3 = [_DKCategory categoryWithInteger:1 type:v2];

  return v3;
}

+ (id)stationary
{
  v2 = [a1 type];
  v3 = [_DKCategory categoryWithInteger:2 type:v2];

  return v3;
}

+ (id)walking
{
  v2 = [a1 type];
  v3 = [_DKCategory categoryWithInteger:4 type:v2];

  return v3;
}

+ (id)running
{
  v2 = [a1 type];
  v3 = [_DKCategory categoryWithInteger:8 type:v2];

  return v3;
}

+ (id)cycling
{
  v2 = [a1 type];
  v3 = [_DKCategory categoryWithInteger:16 type:v2];

  return v3;
}

+ (id)automotive
{
  v2 = [a1 type];
  v3 = [_DKCategory categoryWithInteger:32 type:v2];

  return v3;
}

+ (id)stationaryAutomotive
{
  v2 = [a1 type];
  v3 = [_DKCategory categoryWithInteger:34 type:v2];

  return v3;
}

@end