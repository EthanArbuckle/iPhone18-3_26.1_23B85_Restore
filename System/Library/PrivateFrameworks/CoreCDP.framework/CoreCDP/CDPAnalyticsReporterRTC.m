@interface CDPAnalyticsReporterRTC
+ (id)rtcAnalyticsReporter;
@end

@implementation CDPAnalyticsReporterRTC

+ (id)rtcAnalyticsReporter
{
  if (rtcAnalyticsReporter_onceToken != -1)
  {
    +[CDPAnalyticsReporterRTC rtcAnalyticsReporter];
  }

  v2 = [MEMORY[0x1E6985DC8] analyticsTransportRTCWithClientType:0x1F5A168C8 clientBundleId:rtcAnalyticsReporter_mainBundleIdentifier clientName:@"com.apple.aaa.dnu"];
  v3 = [MEMORY[0x1E6985DB8] analyticsReporterWithTransport:v2];

  return v3;
}

void __47__CDPAnalyticsReporterRTC_rtcAnalyticsReporter__block_invoke()
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v2 bundleIdentifier];
  v1 = rtcAnalyticsReporter_mainBundleIdentifier;
  rtcAnalyticsReporter_mainBundleIdentifier = v0;
}

@end