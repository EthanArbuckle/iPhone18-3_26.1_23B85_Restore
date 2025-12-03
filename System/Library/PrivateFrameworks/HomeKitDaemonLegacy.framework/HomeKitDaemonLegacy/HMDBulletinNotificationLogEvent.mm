@interface HMDBulletinNotificationLogEvent
- (HMDBulletinNotificationLogEvent)initWithTopic:(int64_t)topic;
@end

@implementation HMDBulletinNotificationLogEvent

- (HMDBulletinNotificationLogEvent)initWithTopic:(int64_t)topic
{
  v8.receiver = self;
  v8.super_class = HMDBulletinNotificationLogEvent;
  v4 = [(HMMLogEvent *)&v8 init];
  v5 = v4;
  if (v4)
  {
    if ((topic - 1) > 0x16)
    {
      v6 = @"Unknown";
    }

    else
    {
      v6 = off_27972C0C0[topic - 1];
    }

    objc_storeStrong(&v4->_topic, v6);
  }

  return v5;
}

@end