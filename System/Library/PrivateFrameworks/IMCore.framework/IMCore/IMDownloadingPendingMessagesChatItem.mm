@interface IMDownloadingPendingMessagesChatItem
- (id)_initWithItem:(id)item;
@end

@implementation IMDownloadingPendingMessagesChatItem

- (id)_initWithItem:(id)item
{
  v7.receiver = self;
  v7.super_class = IMDownloadingPendingMessagesChatItem;
  v3 = [(IMChatItem *)&v7 _initWithItem:item];
  v5 = v3;
  if (v3)
  {
    objc_msgSend__setGUID_(v3, v4, @"spm:");
  }

  return v5;
}

@end