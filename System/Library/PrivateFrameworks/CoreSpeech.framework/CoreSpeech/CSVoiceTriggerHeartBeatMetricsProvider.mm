@interface CSVoiceTriggerHeartBeatMetricsProvider
+ (id)fetchVoiceTriggerHeartBeatMetrics;
@end

@implementation CSVoiceTriggerHeartBeatMetricsProvider

+ (id)fetchVoiceTriggerHeartBeatMetrics
{
  v2 = +[CSVoiceTriggerXPCService sharedService];
  fetchVoiceTriggerDailyStats = [v2 fetchVoiceTriggerDailyStats];

  return fetchVoiceTriggerDailyStats;
}

@end