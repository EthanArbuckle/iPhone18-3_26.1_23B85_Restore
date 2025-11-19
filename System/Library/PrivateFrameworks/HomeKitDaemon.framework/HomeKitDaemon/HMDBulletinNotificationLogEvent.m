@interface HMDBulletinNotificationLogEvent
- (HMDBulletinNotificationLogEvent)initWithTopic:(int64_t)a3;
@end

@implementation HMDBulletinNotificationLogEvent

- (HMDBulletinNotificationLogEvent)initWithTopic:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = HMDBulletinNotificationLogEvent;
  v4 = [(HMMLogEvent *)&v8 init];
  v5 = v4;
  if (v4)
  {
    if ((a3 - 1) > 0x16)
    {
      v6 = @"Unknown";
    }

    else
    {
      v6 = off_278672E60[a3 - 1];
    }

    objc_storeStrong(&v4->_topic, v6);
  }

  return v5;
}

@end