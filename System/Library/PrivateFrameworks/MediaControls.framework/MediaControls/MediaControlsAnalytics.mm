@interface MediaControlsAnalytics
+ (void)coreAnalyticsPostAnalyticKind:(int64_t)a3;
+ (void)postAnalyticKind:(int64_t)a3;
@end

@implementation MediaControlsAnalytics

+ (void)coreAnalyticsPostAnalyticKind:(int64_t)a3
{
  if (a3 <= 3)
  {
    if (a3 < 0)
    {
      return;
    }

    goto LABEL_3;
  }

  if (a3 <= 6 || a3 == 9)
  {
LABEL_3:
    AnalyticsSendEventLazy();
  }
}

+ (void)postAnalyticKind:(int64_t)a3
{
  [MediaControlsAnalytics coreAnalyticsPostAnalyticKind:?];
  if (a3 > 9)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E7664830[a3];
  }

  if ([(__CFString *)v4 length])
  {

    MEMORY[0x1EEDEB440](v4, 1);
  }
}

@end