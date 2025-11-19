@interface IMUnknownInternationalSenderChatItem
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation IMUnknownInternationalSenderChatItem

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend__item(self, v5, v6);
  v9 = objc_msgSend__initWithItem_(v4, v8, v7);

  return v9;
}

@end