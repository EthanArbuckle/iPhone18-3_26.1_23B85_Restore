@interface NSObject(GKDashboardUtils)
+ (id)_gkNib;
+ (id)_gkNibWithBaseName:()GKDashboardUtils;
+ (id)_gkNibWithPlatformName:()GKDashboardUtils;
+ (id)_gkPlatformNibName;
@end

@implementation NSObject(GKDashboardUtils)

+ (id)_gkPlatformNibName
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [self _gkPlatformNibNameForBaseName:v3];

  return v4;
}

+ (id)_gkNib
{
  _gkPlatformNibName = [self _gkPlatformNibName];
  v3 = [self _gkNibWithPlatformName:_gkPlatformNibName];

  return v3;
}

+ (id)_gkNibWithBaseName:()GKDashboardUtils
{
  v2 = [self _gkPlatformNibNameForBaseName:?];
  v3 = [self _gkNibWithPlatformName:v2];

  return v3;
}

+ (id)_gkNibWithPlatformName:()GKDashboardUtils
{
  v4 = MEMORY[0x277CCA8D8];
  v5 = a3;
  v6 = [v4 bundleForClass:self];
  v7 = [MEMORY[0x277D757B0] nibWithNibName:v5 bundle:v6];

  return v7;
}

@end