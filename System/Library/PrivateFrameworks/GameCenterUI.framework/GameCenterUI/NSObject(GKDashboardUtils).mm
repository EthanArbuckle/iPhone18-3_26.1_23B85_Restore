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
  v4 = [a1 _gkPlatformNibNameForBaseName:v3];

  return v4;
}

+ (id)_gkNib
{
  v2 = [a1 _gkPlatformNibName];
  v3 = [a1 _gkNibWithPlatformName:v2];

  return v3;
}

+ (id)_gkNibWithBaseName:()GKDashboardUtils
{
  v2 = [a1 _gkPlatformNibNameForBaseName:?];
  v3 = [a1 _gkNibWithPlatformName:v2];

  return v3;
}

+ (id)_gkNibWithPlatformName:()GKDashboardUtils
{
  v4 = MEMORY[0x277CCA8D8];
  v5 = a3;
  v6 = [v4 bundleForClass:a1];
  v7 = [MEMORY[0x277D757B0] nibWithNibName:v5 bundle:v6];

  return v7;
}

@end