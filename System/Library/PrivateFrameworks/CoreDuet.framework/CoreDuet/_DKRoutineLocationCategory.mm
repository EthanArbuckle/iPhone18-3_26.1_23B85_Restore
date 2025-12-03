@interface _DKRoutineLocationCategory
+ (id)home;
+ (id)unknown;
+ (id)work;
@end

@implementation _DKRoutineLocationCategory

+ (id)unknown
{
  type = [self type];
  v3 = [_DKCategory categoryWithInteger:0 type:type];

  return v3;
}

+ (id)home
{
  type = [self type];
  v3 = [_DKCategory categoryWithInteger:1 type:type];

  return v3;
}

+ (id)work
{
  type = [self type];
  v3 = [_DKCategory categoryWithInteger:2 type:type];

  return v3;
}

@end