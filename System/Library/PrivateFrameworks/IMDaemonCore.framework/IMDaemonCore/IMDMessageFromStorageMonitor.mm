@interface IMDMessageFromStorageMonitor
+ (IMDMessageFromStorageMonitor)sharedStorageMonitor;
- (void)incomingMessageProcessedWithElapsedTime:(double)time;
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

- (void)incomingMessageProcessedWithElapsedTime:(double)time
{
  selfCopy = self;
  sub_22B79C534(time);
}

- (void)showTapToRadarOnSlowDelivery
{
  selfCopy = self;
  sub_22B79C910();
}

@end