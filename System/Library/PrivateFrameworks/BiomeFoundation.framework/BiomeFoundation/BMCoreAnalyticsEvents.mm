@interface BMCoreAnalyticsEvents
+ (id)dictionaryWithDatavaultByUsageExecutableName:(id)name;
+ (void)sendDatavaultEntitlementUsage:(id)usage;
@end

@implementation BMCoreAnalyticsEvents

+ (void)sendDatavaultEntitlementUsage:(id)usage
{
  v3 = [BMCoreAnalyticsEvents dictionaryWithDatavaultByUsageExecutableName:usage];
  [BMCoreAnalyticsEvents sendEvent:@"com.apple.biome.datavault-entitlement-usage" payload:v3];
}

+ (id)dictionaryWithDatavaultByUsageExecutableName:(id)name
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"executableName";
  v9[0] = name;
  v3 = MEMORY[0x1E695DF20];
  nameCopy = name;
  v5 = [v3 dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

@end