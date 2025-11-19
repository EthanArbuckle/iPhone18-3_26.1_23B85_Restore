@interface _DKRoutineLocationCategory
+ (id)home;
+ (id)unknown;
+ (id)work;
@end

@implementation _DKRoutineLocationCategory

+ (id)unknown
{
  v2 = [a1 type];
  v3 = [_DKCategory categoryWithInteger:0 type:v2];

  return v3;
}

+ (id)home
{
  v2 = [a1 type];
  v3 = [_DKCategory categoryWithInteger:1 type:v2];

  return v3;
}

+ (id)work
{
  v2 = [a1 type];
  v3 = [_DKCategory categoryWithInteger:2 type:v2];

  return v3;
}

@end