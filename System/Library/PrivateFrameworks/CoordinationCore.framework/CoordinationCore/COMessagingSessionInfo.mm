@interface COMessagingSessionInfo
- (COMessagingSessionInfo)initWithSubTopic:(id)topic member:(id)member produced:(BOOL)produced;
@end

@implementation COMessagingSessionInfo

- (COMessagingSessionInfo)initWithSubTopic:(id)topic member:(id)member produced:(BOOL)produced
{
  topicCopy = topic;
  memberCopy = member;
  v14.receiver = self;
  v14.super_class = COMessagingSessionInfo;
  v11 = [(COMessagingSessionInfo *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_subTopic, topic);
    objc_storeStrong(&v12->_member, member);
    v12->_producedSession = produced;
  }

  return v12;
}

@end