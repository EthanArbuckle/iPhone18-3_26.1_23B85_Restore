@interface IMDAnalyticsBackgroundTaskMonitor
+ (id)sharedInstance;
@end

@implementation IMDAnalyticsBackgroundTaskMonitor

+ (id)sharedInstance
{
  if (qword_28141F018 != -1)
  {
    swift_once();
  }

  v3 = qword_28141F020;

  return v3;
}

@end