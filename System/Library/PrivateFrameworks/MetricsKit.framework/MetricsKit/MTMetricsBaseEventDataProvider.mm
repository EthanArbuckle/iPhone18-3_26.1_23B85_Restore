@interface MTMetricsBaseEventDataProvider
- (id)knownFields;
@end

@implementation MTMetricsBaseEventDataProvider

- (id)knownFields
{
  v7.receiver = self;
  v7.super_class = MTMetricsBaseEventDataProvider;
  v2 = [(MTBaseEventDataProvider *)&v7 knownFields];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"app", @"appVersion", @"baseVersion", @"capacityData", @"capacityDataAvailable", @"capacityDisk", @"capacitySystem", @"capacitySystemAvailable", @"clientEventId", @"clientId", @"connection", @"cookies", @"dsId", @"environmentBuild", @"environmentDataCenter", @"environmentInstance", @"eventTime", @"hardwareFamily", @"hardwareModel", @"hostApp", @"hostAppVersion", @"isSignedIn", @"os", @"osBuildNumber", @"osVersion", @"page", @"pageContext", @"pageDetails", @"pageId", @"pageType", @"pageUrl", @"parentPageUrl", @"pixelRatio", @"resourceRevNum", @"screenHeight", @"screenWidth", @"storeFrontHeader", @"timezoneOffset", @"userAgent", @"windowInnerHeight", @"windowInnerWidth", @"windowOuterHeight", @"windowOuterWidth", @"xpPostFrequency", @"xpSendMethod", @"xpVersionMetricsKit", 0, @"hardwareFamily", @"eventTime", @"environmentInstance", @"environmentDataCenter", @"environmentBuild", @"dsId", @"cookies", @"connection", @"clientId", @"clientEventId", @"capacitySystemAvailable", @"capacitySystem", @"capacityDisk", @"capacityDataAvailable"}];
  }

  v5 = v4;

  return v5;
}

@end