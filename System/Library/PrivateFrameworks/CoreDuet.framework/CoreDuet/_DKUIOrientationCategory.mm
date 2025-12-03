@interface _DKUIOrientationCategory
+ (id)landscape;
+ (id)portriat;
+ (id)unknown;
@end

@implementation _DKUIOrientationCategory

+ (id)portriat
{
  type = [self type];
  v3 = [_DKCategory categoryWithInteger:0 type:type];

  return v3;
}

+ (id)unknown
{
  type = [self type];
  v3 = [_DKCategory categoryWithInteger:2 type:type];

  return v3;
}

+ (id)landscape
{
  type = [self type];
  v3 = [_DKCategory categoryWithInteger:1 type:type];

  return v3;
}

@end