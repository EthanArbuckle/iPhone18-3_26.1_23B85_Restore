@interface _DKAudioRouteCategory
+ (id)external;
+ (id)internal;
@end

@implementation _DKAudioRouteCategory

+ (id)external
{
  v2 = [a1 type];
  v3 = [_DKCategory categoryWithInteger:1 type:v2];

  return v3;
}

+ (id)internal
{
  v2 = [a1 type];
  v3 = [_DKCategory categoryWithInteger:0 type:v2];

  return v3;
}

@end