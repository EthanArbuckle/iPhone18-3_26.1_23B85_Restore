@interface BMCoreAnalyticsEvents
+ (id)dictionaryWithDatavaultByUsageExecutableName:(id)a3;
+ (void)sendDatavaultEntitlementUsage:(id)a3;
@end

@implementation BMCoreAnalyticsEvents

+ (void)sendDatavaultEntitlementUsage:(id)a3
{
  v3 = [BMCoreAnalyticsEvents dictionaryWithDatavaultByUsageExecutableName:a3];
  [BMCoreAnalyticsEvents sendEvent:@"com.apple.biome.datavault-entitlement-usage" payload:v3];
}

+ (id)dictionaryWithDatavaultByUsageExecutableName:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"executableName";
  v9[0] = a3;
  v3 = MEMORY[0x1E695DF20];
  v4 = a3;
  v5 = [v3 dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

@end