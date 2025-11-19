@interface SecurityAnalyticsReporterRTC
+ (id)rtcAnalyticsReporter;
@end

@implementation SecurityAnalyticsReporterRTC

+ (id)rtcAnalyticsReporter
{
  if (rtcAnalyticsReporter_onceToken != -1)
  {
    dispatch_once(&rtcAnalyticsReporter_onceToken, &__block_literal_global_1141);
  }

  v3 = rtcAnalyticsReporter_rtcReporter;

  return v3;
}

void __52__SecurityAnalyticsReporterRTC_rtcAnalyticsReporter__block_invoke(double a1)
{
  Helper_x8__OBJC_CLASS___AAFAnalyticsTransportRTC = gotLoadHelper_x8__OBJC_CLASS___AAFAnalyticsTransportRTC(a1);
  v8 = [*(v2 + 1280) analyticsTransportRTCWithClientType:&unk_2843768D8 clientBundleId:@"com.apple.securityd" clientName:{@"com.apple.aaa.dnu", Helper_x8__OBJC_CLASS___AAFAnalyticsTransportRTC}];
  Helper_x8__OBJC_CLASS___AAFAnalyticsReporter = gotLoadHelper_x8__OBJC_CLASS___AAFAnalyticsReporter(v3);
  v6 = [*(v5 + 1248) analyticsReporterWithTransport:Helper_x8__OBJC_CLASS___AAFAnalyticsReporter];
  v7 = rtcAnalyticsReporter_rtcReporter;
  rtcAnalyticsReporter_rtcReporter = v6;
}

@end