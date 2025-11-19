@interface IMMessageActionChatItem
- (id)_initWithItem:(id)a3 sender:(id)a4 otherHandle:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)actionType;
@end

@implementation IMMessageActionChatItem

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend__item(self, v5, v6);
  v9 = objc_msgSend__initWithItem_sender_otherHandle_(v4, v8, v7, self->_sender, self->_otherHandle);

  return v9;
}

- (int64_t)actionType
{
  v3 = objc_msgSend__item(self, a2, v2);
  v6 = objc_msgSend_actionType(v3, v4, v5);

  return v6;
}

- (id)_initWithItem:(id)a3 sender:(id)a4 otherHandle:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = IMMessageActionChatItem;
  v11 = [(IMChatItem *)&v19 _initWithItem:v8];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(v11 + 7, a4);
    objc_storeStrong(v12 + 8, a5);
    v15 = objc_msgSend_guid(v8, v13, v14);
    v16 = sub_1A83AC604();

    objc_msgSend__setGUID_(v12, v17, v16);
  }

  return v12;
}

@end