@interface IMBlockedConversationChatItem
- (id)_initWithItem:(id)item blockedRecipients:(id)recipients canLeaveChat:(BOOL)chat isGroupMessage:(BOOL)message;
@end

@implementation IMBlockedConversationChatItem

- (id)_initWithItem:(id)item blockedRecipients:(id)recipients canLeaveChat:(BOOL)chat isGroupMessage:(BOOL)message
{
  recipientsCopy = recipients;
  v16.receiver = self;
  v16.super_class = IMBlockedConversationChatItem;
  v12 = [(IMChatItem *)&v16 _initWithItem:item];
  v14 = v12;
  if (v12)
  {
    objc_msgSend__setGUID_(v12, v13, @"bcv:");
    objc_storeStrong(v14 + 8, recipients);
    *(v14 + 56) = chat;
    *(v14 + 57) = message;
  }

  return v14;
}

@end