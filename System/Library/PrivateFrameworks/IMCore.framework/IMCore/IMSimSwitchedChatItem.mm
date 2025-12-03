@interface IMSimSwitchedChatItem
- (id)_initWithItem:(id)item senderHandle:(id)handle;
@end

@implementation IMSimSwitchedChatItem

- (id)_initWithItem:(id)item senderHandle:(id)handle
{
  handleCopy = handle;
  v11.receiver = self;
  v11.super_class = IMSimSwitchedChatItem;
  v8 = [(IMChatItem *)&v11 _initWithItem:item];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 7, handle);
  }

  return v9;
}

@end