@interface AMSBag(MetricsKit)
+ (id)metricsAMSBagWithProfileName:()MetricsKit profileVersion:;
@end

@implementation AMSBag(MetricsKit)

+ (id)metricsAMSBagWithProfileName:()MetricsKit profileVersion:
{
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = @"MTMetricsKit";
  }

  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = @"1";
  }

  v7 = MEMORY[0x277CEE3F0];
  v8 = a4;
  v9 = a3;
  v10 = [v7 bagForProfile:v5 profileVersion:v6];

  return v10;
}

@end