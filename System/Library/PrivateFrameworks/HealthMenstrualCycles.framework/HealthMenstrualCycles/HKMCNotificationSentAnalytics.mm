@interface HKMCNotificationSentAnalytics
+ (BOOL)_isMetricEnabled;
+ (BOOL)shouldSubmit;
@end

@implementation HKMCNotificationSentAnalytics

+ (BOOL)shouldSubmit
{
  v3 = [a1 _isMetricEnabled];
  if (v3)
  {

    LOBYTE(v3) = [a1 _isAllowed];
  }

  return v3;
}

+ (BOOL)_isMetricEnabled
{
  v2 = +[HKMCNotificationSentMetric eventName];
  if (AnalyticsIsEventUsed())
  {
    v3 = 1;
  }

  else
  {
    v4 = [MEMORY[0x277CBEBD0] hkmc_menstrualCyclesDefaults];
    v3 = [v4 hkmc_analyticsDebugModeEnabled];
  }

  return v3;
}

@end