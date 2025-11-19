@interface COMessagingSessionInfo
- (COMessagingSessionInfo)initWithSubTopic:(id)a3 member:(id)a4 produced:(BOOL)a5;
@end

@implementation COMessagingSessionInfo

- (COMessagingSessionInfo)initWithSubTopic:(id)a3 member:(id)a4 produced:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = COMessagingSessionInfo;
  v11 = [(COMessagingSessionInfo *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_subTopic, a3);
    objc_storeStrong(&v12->_member, a4);
    v12->_producedSession = a5;
  }

  return v12;
}

@end