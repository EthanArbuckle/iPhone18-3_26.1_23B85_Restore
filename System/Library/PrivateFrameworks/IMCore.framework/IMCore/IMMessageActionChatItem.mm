@interface IMMessageActionChatItem
- (id)_initWithItem:(id)item sender:(id)sender otherHandle:(id)handle;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)actionType;
@end

@implementation IMMessageActionChatItem

- (id)copyWithZone:(_NSZone *)zone
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

- (id)_initWithItem:(id)item sender:(id)sender otherHandle:(id)handle
{
  itemCopy = item;
  senderCopy = sender;
  handleCopy = handle;
  v19.receiver = self;
  v19.super_class = IMMessageActionChatItem;
  v11 = [(IMChatItem *)&v19 _initWithItem:itemCopy];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(v11 + 7, sender);
    objc_storeStrong(v12 + 8, handle);
    v15 = objc_msgSend_guid(itemCopy, v13, v14);
    v16 = sub_1A83AC604();

    objc_msgSend__setGUID_(v12, v17, v16);
  }

  return v12;
}

@end