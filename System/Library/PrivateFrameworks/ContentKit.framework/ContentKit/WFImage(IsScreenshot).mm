@interface WFImage(IsScreenshot)
+ (BOOL)imageSizeIndicatesScreenshot:()IsScreenshot;
- (uint64_t)isScreenshot;
@end

@implementation WFImage(IsScreenshot)

- (uint64_t)isScreenshot
{
  v2 = objc_opt_class();
  [self CGImageSize];

  return [v2 imageSizeIndicatesScreenshot:?];
}

+ (BOOL)imageSizeIndicatesScreenshot:()IsScreenshot
{
  currentDevice = [MEMORY[0x277D79F18] currentDevice];
  [currentDevice screenScale];
  v6 = v5;

  currentDevice2 = [MEMORY[0x277D79F18] currentDevice];
  [currentDevice2 screenBounds];
  v9 = v8;
  v11 = v10;

  v12 = v6 * v11;
  if (v6 * v9 == self && v12 == a2)
  {
    return 1;
  }

  if (v12 == self)
  {
    return v6 * v9 == a2;
  }

  return 0;
}

@end