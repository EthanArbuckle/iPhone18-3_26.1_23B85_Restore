@interface IMSMSFallbackStatusChatItem
- (id)_initWithItem:(id)item handle:(id)handle previousServiceName:(id)name canSMSReply:(BOOL)reply;
@end

@implementation IMSMSFallbackStatusChatItem

- (id)_initWithItem:(id)item handle:(id)handle previousServiceName:(id)name canSMSReply:(BOOL)reply
{
  handleCopy = handle;
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = IMSMSFallbackStatusChatItem;
  v13 = [(IMChatItem *)&v16 _initWithItem:item];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(v13 + 8, handle);
    objc_storeStrong(v14 + 9, name);
    *(v14 + 56) = reply;
  }

  return v14;
}

@end