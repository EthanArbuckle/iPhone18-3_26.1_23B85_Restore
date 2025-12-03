@interface MediaControlsAnalytics
+ (void)coreAnalyticsPostAnalyticKind:(int64_t)kind;
+ (void)postAnalyticKind:(int64_t)kind;
@end

@implementation MediaControlsAnalytics

+ (void)coreAnalyticsPostAnalyticKind:(int64_t)kind
{
  if (kind <= 3)
  {
    if (kind < 0)
    {
      return;
    }

    goto LABEL_3;
  }

  if (kind <= 6 || kind == 9)
  {
LABEL_3:
    AnalyticsSendEventLazy();
  }
}

+ (void)postAnalyticKind:(int64_t)kind
{
  [MediaControlsAnalytics coreAnalyticsPostAnalyticKind:?];
  if (kind > 9)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E7664830[kind];
  }

  if ([(__CFString *)v4 length])
  {

    MEMORY[0x1EEDEB440](v4, 1);
  }
}

@end