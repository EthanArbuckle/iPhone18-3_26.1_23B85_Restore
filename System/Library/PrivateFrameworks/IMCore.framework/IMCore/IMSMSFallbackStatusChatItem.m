@interface IMSMSFallbackStatusChatItem
- (id)_initWithItem:(id)a3 handle:(id)a4 previousServiceName:(id)a5 canSMSReply:(BOOL)a6;
@end

@implementation IMSMSFallbackStatusChatItem

- (id)_initWithItem:(id)a3 handle:(id)a4 previousServiceName:(id)a5 canSMSReply:(BOOL)a6
{
  v11 = a4;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = IMSMSFallbackStatusChatItem;
  v13 = [(IMChatItem *)&v16 _initWithItem:a3];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(v13 + 8, a4);
    objc_storeStrong(v14 + 9, a5);
    *(v14 + 56) = a6;
  }

  return v14;
}

@end