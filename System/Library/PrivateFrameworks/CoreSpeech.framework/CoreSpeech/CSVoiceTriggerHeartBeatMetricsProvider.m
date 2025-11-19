@interface CSVoiceTriggerHeartBeatMetricsProvider
+ (id)fetchVoiceTriggerHeartBeatMetrics;
@end

@implementation CSVoiceTriggerHeartBeatMetricsProvider

+ (id)fetchVoiceTriggerHeartBeatMetrics
{
  v2 = +[CSVoiceTriggerXPCService sharedService];
  v3 = [v2 fetchVoiceTriggerDailyStats];

  return v3;
}

@end