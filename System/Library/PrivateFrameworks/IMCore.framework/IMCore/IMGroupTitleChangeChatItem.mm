@interface IMGroupTitleChangeChatItem
- (BOOL)unattributed;
- (NSString)title;
- (id)_initWithItem:(id)item sender:(id)sender;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation IMGroupTitleChangeChatItem

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend__item(self, v5, v6);
  v9 = objc_msgSend__initWithItem_sender_(v4, v8, v7, self->_sender);

  return v9;
}

- (NSString)title
{
  v3 = objc_msgSend__item(self, a2, v2);
  v6 = objc_msgSend_title(v3, v4, v5);

  return v6;
}

- (BOOL)unattributed
{
  v3 = objc_msgSend__item(self, a2, v2);
  v6 = objc_msgSend_unattributed(v3, v4, v5);

  return v6;
}

- (id)_initWithItem:(id)item sender:(id)sender
{
  itemCopy = item;
  senderCopy = sender;
  v18.receiver = self;
  v18.super_class = IMGroupTitleChangeChatItem;
  v8 = [(IMChatItem *)&v18 _initWithItem:itemCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 8, sender);
    *(v9 + 56) = objc_msgSend_errorCode(itemCopy, v10, v11) != 0;
    v14 = objc_msgSend_guid(itemCopy, v12, v13);
    v15 = sub_1A83AC604();

    objc_msgSend__setGUID_(v9, v16, v15);
  }

  return v9;
}

@end