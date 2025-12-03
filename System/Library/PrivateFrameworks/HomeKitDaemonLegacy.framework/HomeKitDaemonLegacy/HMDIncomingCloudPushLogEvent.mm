@interface HMDIncomingCloudPushLogEvent
+ (id)incomingCloudPush:(id)push;
- (HMDIncomingCloudPushLogEvent)initWithTopic:(id)topic;
@end

@implementation HMDIncomingCloudPushLogEvent

- (HMDIncomingCloudPushLogEvent)initWithTopic:(id)topic
{
  topicCopy = topic;
  v9.receiver = self;
  v9.super_class = HMDIncomingCloudPushLogEvent;
  v6 = [(HMMLogEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_topic, topic);
  }

  return v7;
}

+ (id)incomingCloudPush:(id)push
{
  pushCopy = push;
  v4 = [[HMDIncomingCloudPushLogEvent alloc] initWithTopic:pushCopy];

  return v4;
}

@end