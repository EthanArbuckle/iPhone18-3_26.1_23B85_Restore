@interface UIScreen(IC)
+ (double)ic_scale;
- (uint64_t)ic_isSecure;
@end

@implementation UIScreen(IC)

+ (double)ic_scale
{
  v1 = [a1 mainScreen];
  [v1 scale];
  v3 = v2;

  return v3;
}

- (uint64_t)ic_isSecure
{
  v1 = [a1 displayIdentity];
  v2 = [v1 expectsSecureRendering];

  return v2;
}

@end