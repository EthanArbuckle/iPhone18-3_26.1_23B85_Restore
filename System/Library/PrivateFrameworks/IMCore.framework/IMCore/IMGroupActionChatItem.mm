@interface IMGroupActionChatItem
- (BOOL)unattributed;
- (NSArray)fileTransferGUIDs;
- (id)_initWithItem:(id)item sender:(id)sender;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)actionType;
@end

@implementation IMGroupActionChatItem

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend__item(self, v5, v6);
  v9 = objc_msgSend__initWithItem_sender_(v4, v8, v7, self->_sender);

  return v9;
}

- (int64_t)actionType
{
  v3 = objc_msgSend__item(self, a2, v2);
  v6 = objc_msgSend_actionType(v3, v4, v5);

  return v6;
}

- (NSArray)fileTransferGUIDs
{
  v3 = objc_msgSend__item(self, a2, v2);
  v6 = objc_msgSend_fileTransferGUIDs(v3, v4, v5);

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
  v23.receiver = self;
  v23.super_class = IMGroupActionChatItem;
  v8 = [(IMChatItem *)&v23 _initWithItem:itemCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 8, sender);
    *(v9 + 56) = objc_msgSend_errorCode(itemCopy, v10, v11) != 0;
    isBusiness = objc_msgSend_isBusiness(senderCopy, v12, v13);
    v15 = @"a:";
    if (isBusiness)
    {
      v15 = @"ba:";
    }

    v16 = v15;
    v19 = objc_msgSend_guid(itemCopy, v17, v18);
    v20 = sub_1A83AC604();

    objc_msgSend__setGUID_(v9, v21, v20);
  }

  return v9;
}

@end