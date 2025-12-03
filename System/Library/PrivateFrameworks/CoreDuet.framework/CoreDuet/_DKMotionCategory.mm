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
  type = [self type];
  v3 = [_DKCategory categoryWithInteger:1 type:type];

  return v3;
}

+ (id)stationary
{
  type = [self type];
  v3 = [_DKCategory categoryWithInteger:2 type:type];

  return v3;
}

+ (id)walking
{
  type = [self type];
  v3 = [_DKCategory categoryWithInteger:4 type:type];

  return v3;
}

+ (id)running
{
  type = [self type];
  v3 = [_DKCategory categoryWithInteger:8 type:type];

  return v3;
}

+ (id)cycling
{
  type = [self type];
  v3 = [_DKCategory categoryWithInteger:16 type:type];

  return v3;
}

+ (id)automotive
{
  type = [self type];
  v3 = [_DKCategory categoryWithInteger:32 type:type];

  return v3;
}

+ (id)stationaryAutomotive
{
  type = [self type];
  v3 = [_DKCategory categoryWithInteger:34 type:type];

  return v3;
}

@end