@interface _DKUIOrientationCategory
+ (id)landscape;
+ (id)portriat;
+ (id)unknown;
@end

@implementation _DKUIOrientationCategory

+ (id)portriat
{
  v2 = [a1 type];
  v3 = [_DKCategory categoryWithInteger:0 type:v2];

  return v3;
}

+ (id)unknown
{
  v2 = [a1 type];
  v3 = [_DKCategory categoryWithInteger:2 type:v2];

  return v3;
}

+ (id)landscape
{
  v2 = [a1 type];
  v3 = [_DKCategory categoryWithInteger:1 type:v2];

  return v3;
}

@end