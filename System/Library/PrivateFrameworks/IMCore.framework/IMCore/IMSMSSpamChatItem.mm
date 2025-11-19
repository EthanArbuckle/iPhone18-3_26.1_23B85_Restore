@interface IMSMSSpamChatItem
- (id)_initWithItem:(id)a3 withExtensionName:(id)a4;
@end

@implementation IMSMSSpamChatItem

- (id)_initWithItem:(id)a3 withExtensionName:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = IMSMSSpamChatItem;
  v8 = [(IMChatItem *)&v12 _initWithItem:a3];
  v10 = v8;
  if (v8)
  {
    objc_msgSend__setGUID_(v8, v9, @"ss:");
    objc_storeStrong(v10 + 7, a4);
  }

  return v10;
}

@end