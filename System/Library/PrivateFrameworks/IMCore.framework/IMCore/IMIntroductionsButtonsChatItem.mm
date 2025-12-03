@interface IMIntroductionsButtonsChatItem
- (id)_initWithChatWantsIntroductionsLabel:(BOOL)label;
@end

@implementation IMIntroductionsButtonsChatItem

- (id)_initWithChatWantsIntroductionsLabel:(BOOL)label
{
  v8.receiver = self;
  v8.super_class = IMIntroductionsButtonsChatItem;
  v4 = [(IMChatItem *)&v8 _initWithItem:0];
  v6 = v4;
  if (v4)
  {
    v4[56] = label;
    objc_msgSend__setGUID_(v4, v5, @"itr:");
  }

  return v6;
}

@end