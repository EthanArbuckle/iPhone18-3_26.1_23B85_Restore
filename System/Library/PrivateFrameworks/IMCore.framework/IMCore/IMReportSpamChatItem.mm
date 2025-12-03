@interface IMReportSpamChatItem
- (id)_initWithItem:(id)item wasReportedAsSpam:(BOOL)spam isGroup:(BOOL)group hasMultipleMessages:(BOOL)messages showReportSMSSpam:(BOOL)sSpam isBusinessChat:(BOOL)chat canUnsubscribe:(BOOL)unsubscribe filterExtension:(id)self0;
@end

@implementation IMReportSpamChatItem

- (id)_initWithItem:(id)item wasReportedAsSpam:(BOOL)spam isGroup:(BOOL)group hasMultipleMessages:(BOOL)messages showReportSMSSpam:(BOOL)sSpam isBusinessChat:(BOOL)chat canUnsubscribe:(BOOL)unsubscribe filterExtension:(id)self0
{
  extensionCopy = extension;
  v26.receiver = self;
  v26.super_class = IMReportSpamChatItem;
  v18 = [(IMChatItem *)&v26 _initWithItem:item];
  v20 = v18;
  if (v18)
  {
    objc_msgSend__setGUID_(v18, v19, @"rs:");
    v20[56] = spam;
    v20[57] = group;
    v20[58] = messages;
    v20[59] = sSpam;
    v20[60] = chat;
    v20[61] = unsubscribe;
    v23 = objc_msgSend_copy(extensionCopy, v21, v22);
    v24 = *(v20 + 8);
    *(v20 + 8) = v23;
  }

  return v20;
}

@end