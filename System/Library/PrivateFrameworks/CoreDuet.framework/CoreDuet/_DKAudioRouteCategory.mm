@interface _DKAudioRouteCategory
+ (id)external;
+ (id)internal;
@end

@implementation _DKAudioRouteCategory

+ (id)external
{
  type = [self type];
  v3 = [_DKCategory categoryWithInteger:1 type:type];

  return v3;
}

+ (id)internal
{
  type = [self type];
  v3 = [_DKCategory categoryWithInteger:0 type:type];

  return v3;
}

@end