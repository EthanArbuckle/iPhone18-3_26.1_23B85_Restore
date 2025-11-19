@interface IMReportSpamChatItem
- (id)_initWithItem:(id)a3 wasReportedAsSpam:(BOOL)a4 isGroup:(BOOL)a5 hasMultipleMessages:(BOOL)a6 showReportSMSSpam:(BOOL)a7 isBusinessChat:(BOOL)a8 canUnsubscribe:(BOOL)a9 filterExtension:(id)a10;
@end

@implementation IMReportSpamChatItem

- (id)_initWithItem:(id)a3 wasReportedAsSpam:(BOOL)a4 isGroup:(BOOL)a5 hasMultipleMessages:(BOOL)a6 showReportSMSSpam:(BOOL)a7 isBusinessChat:(BOOL)a8 canUnsubscribe:(BOOL)a9 filterExtension:(id)a10
{
  v17 = a10;
  v26.receiver = self;
  v26.super_class = IMReportSpamChatItem;
  v18 = [(IMChatItem *)&v26 _initWithItem:a3];
  v20 = v18;
  if (v18)
  {
    objc_msgSend__setGUID_(v18, v19, @"rs:");
    v20[56] = a4;
    v20[57] = a5;
    v20[58] = a6;
    v20[59] = a7;
    v20[60] = a8;
    v20[61] = a9;
    v23 = objc_msgSend_copy(v17, v21, v22);
    v24 = *(v20 + 8);
    *(v20 + 8) = v23;
  }

  return v20;
}

@end