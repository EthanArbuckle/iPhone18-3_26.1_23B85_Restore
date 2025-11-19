@interface AnalyticCollectionDisabled
@end

@implementation AnalyticCollectionDisabled

id GeoAnalyticsConfig_AnalyticCollectionDisabled_Metadata_block_invoke()
{
  v0 = MEMORY[0x1E696AD98];
  v1 = [MEMORY[0x1E69A2398] sharedPlatform];
  v2 = [v0 numberWithBool:{objc_msgSend(v1, "isMacSetupUser")}];

  return v2;
}

@end