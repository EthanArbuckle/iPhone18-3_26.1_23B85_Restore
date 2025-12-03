@interface UIScreen(IC)
+ (double)ic_scale;
- (uint64_t)ic_isSecure;
@end

@implementation UIScreen(IC)

+ (double)ic_scale
{
  mainScreen = [self mainScreen];
  [mainScreen scale];
  v3 = v2;

  return v3;
}

- (uint64_t)ic_isSecure
{
  displayIdentity = [self displayIdentity];
  expectsSecureRendering = [displayIdentity expectsSecureRendering];

  return expectsSecureRendering;
}

@end