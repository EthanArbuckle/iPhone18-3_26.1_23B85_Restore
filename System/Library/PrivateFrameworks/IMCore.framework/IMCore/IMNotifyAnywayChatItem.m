@interface IMNotifyAnywayChatItem
- (id)_init;
@end

@implementation IMNotifyAnywayChatItem

- (id)_init
{
  v6.receiver = self;
  v6.super_class = IMNotifyAnywayChatItem;
  v2 = [(IMChatItem *)&v6 _initWithItem:0];
  v4 = v2;
  if (v2)
  {
    objc_msgSend__setGUID_(v2, v3, @"na:");
  }

  return v4;
}

@end