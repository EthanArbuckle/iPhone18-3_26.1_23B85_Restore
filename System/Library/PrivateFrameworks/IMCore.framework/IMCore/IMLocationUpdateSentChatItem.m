@interface IMLocationUpdateSentChatItem
- (id)_initWithItem:(id)a3 chatIdentifier:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation IMLocationUpdateSentChatItem

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend__item(self, v5, v6);
  v9 = objc_msgSend__initWithItem_(v4, v8, v7);

  return v9;
}

- (id)_initWithItem:(id)a3 chatIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = IMLocationUpdateSentChatItem;
  v10 = [(IMChatItem *)&v15 _initWithItem:v6];
  if (v10)
  {
    v11 = objc_msgSend_guid(v6, v8, v9);
    v12 = sub_1A83AC604();

    objc_msgSend__setGUID_(v10, v13, v12);
    objc_storeStrong(v10 + 7, a4);
  }

  return v10;
}

@end