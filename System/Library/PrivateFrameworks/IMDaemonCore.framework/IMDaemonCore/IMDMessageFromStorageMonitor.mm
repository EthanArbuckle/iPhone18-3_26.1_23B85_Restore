@interface IMDMessageFromStorageMonitor
+ (IMDMessageFromStorageMonitor)sharedStorageMonitor;
- (void)incomingMessageProcessedWithElapsedTime:(double)a3;
- (void)showTapToRadarOnSlowDelivery;
@end

@implementation IMDMessageFromStorageMonitor

+ (IMDMessageFromStorageMonitor)sharedStorageMonitor
{
  if (qword_27D8CCCF8 != -1)
  {
    swift_once();
  }

  v3 = qword_27D8CF6B8;

  return v3;
}

- (void)incomingMessageProcessedWithElapsedTime:(double)a3
{
  v4 = self;
  sub_22B79C534(a3);
}

- (void)showTapToRadarOnSlowDelivery
{
  v2 = self;
  sub_22B79C910();
}

@end