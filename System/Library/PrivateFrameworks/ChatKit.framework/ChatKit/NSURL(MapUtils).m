@interface NSURL(MapUtils)
+ (id)__ck_appleMapsURLForCoordinate:()MapUtils coordinateName:;
@end

@implementation NSURL(MapUtils)

+ (id)__ck_appleMapsURLForCoordinate:()MapUtils coordinateName:
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = [MEMORY[0x1E696AEC0] __ck_appleMapsURLStringForCoordinate:? coordinateName:?];
  v2 = [v0 URLWithString:v1];

  return v2;
}

@end