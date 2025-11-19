@interface WFImage(IsScreenshot)
+ (BOOL)imageSizeIndicatesScreenshot:()IsScreenshot;
- (uint64_t)isScreenshot;
@end

@implementation WFImage(IsScreenshot)

- (uint64_t)isScreenshot
{
  v2 = objc_opt_class();
  [a1 CGImageSize];

  return [v2 imageSizeIndicatesScreenshot:?];
}

+ (BOOL)imageSizeIndicatesScreenshot:()IsScreenshot
{
  v4 = [MEMORY[0x277D79F18] currentDevice];
  [v4 screenScale];
  v6 = v5;

  v7 = [MEMORY[0x277D79F18] currentDevice];
  [v7 screenBounds];
  v9 = v8;
  v11 = v10;

  v12 = v6 * v11;
  if (v6 * v9 == a1 && v12 == a2)
  {
    return 1;
  }

  if (v12 == a1)
  {
    return v6 * v9 == a2;
  }

  return 0;
}

@end