@interface IMSMSSpamChatItem
- (id)_initWithItem:(id)item withExtensionName:(id)name;
@end

@implementation IMSMSSpamChatItem

- (id)_initWithItem:(id)item withExtensionName:(id)name
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = IMSMSSpamChatItem;
  v8 = [(IMChatItem *)&v12 _initWithItem:item];
  v10 = v8;
  if (v8)
  {
    objc_msgSend__setGUID_(v8, v9, @"ss:");
    objc_storeStrong(v10 + 7, name);
  }

  return v10;
}

@end