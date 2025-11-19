@interface HMDWatchConnectivityLogEvent
- (HMDWatchConnectivityLogEvent)init;
@end

@implementation HMDWatchConnectivityLogEvent

- (HMDWatchConnectivityLogEvent)init
{
  v6.receiver = self;
  v6.super_class = HMDWatchConnectivityLogEvent;
  v2 = [(HMMLogEvent *)&v6 init];
  if (v2)
  {
    v3 = +[HMDWatchConnectivityLogEventManager sharedInstance];
    v4 = v3;
    if (v3)
    {
      [v3 currentWatchConnectivitySnapshot];
    }

    v2->_reportComplete = 0;
    v2->_watchAddedNotificationCount = 0;
    v2->_watchRemovedNotificationCount = 0;
  }

  return v2;
}

@end