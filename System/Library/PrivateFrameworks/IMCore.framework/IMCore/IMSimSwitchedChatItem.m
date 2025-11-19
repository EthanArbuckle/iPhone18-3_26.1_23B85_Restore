@interface IMSimSwitchedChatItem
- (id)_initWithItem:(id)a3 senderHandle:(id)a4;
@end

@implementation IMSimSwitchedChatItem

- (id)_initWithItem:(id)a3 senderHandle:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = IMSimSwitchedChatItem;
  v8 = [(IMChatItem *)&v11 _initWithItem:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 7, a4);
  }

  return v9;
}

@end