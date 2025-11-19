@interface IMBlockedConversationChatItem
- (id)_initWithItem:(id)a3 blockedRecipients:(id)a4 canLeaveChat:(BOOL)a5 isGroupMessage:(BOOL)a6;
@end

@implementation IMBlockedConversationChatItem

- (id)_initWithItem:(id)a3 blockedRecipients:(id)a4 canLeaveChat:(BOOL)a5 isGroupMessage:(BOOL)a6
{
  v11 = a4;
  v16.receiver = self;
  v16.super_class = IMBlockedConversationChatItem;
  v12 = [(IMChatItem *)&v16 _initWithItem:a3];
  v14 = v12;
  if (v12)
  {
    objc_msgSend__setGUID_(v12, v13, @"bcv:");
    objc_storeStrong(v14 + 8, a4);
    *(v14 + 56) = a5;
    *(v14 + 57) = a6;
  }

  return v14;
}

@end