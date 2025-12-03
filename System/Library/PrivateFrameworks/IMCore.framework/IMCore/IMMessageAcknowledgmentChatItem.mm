@interface IMMessageAcknowledgmentChatItem
- (BOOL)containsTransferGUID:(id)d;
- (BOOL)isEqualToTapback:(id)tapback;
- (NSArray)fileTransferGUIDs;
- (id)_initWithItem:(id)item sender:(id)sender tapback:(id)tapback;
- (id)commSafetyTransferGUID;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation IMMessageAcknowledgmentChatItem

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend__item(self, v5, v6);
  v10 = objc_msgSend_sender(self, v8, v9);
  v13 = objc_msgSend_tapback(self, v11, v12);
  v15 = objc_msgSend__initWithItem_sender_tapback_(v4, v14, v7, v10, v13);

  return v15;
}

- (id)_initWithItem:(id)item sender:(id)sender tapback:(id)tapback
{
  tapbackCopy = tapback;
  v10 = objc_msgSend__initWithItem_sender_(self, v9, item, sender);
  v12 = v10;
  if (v10)
  {
    objc_msgSend_setTapback_(v10, v11, tapbackCopy);
    v15 = 10;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    objc_msgSend__setGeometryDescriptor_(v12, v13, &v15);
  }

  return v12;
}

- (BOOL)isEqualToTapback:(id)tapback
{
  tapbackCopy = tapback;
  v7 = objc_msgSend_associatedMessageType(self, v5, v6);
  if (v7 != objc_msgSend_associatedMessageType(tapbackCopy, v8, v9))
  {
    goto LABEL_6;
  }

  if (objc_msgSend_associatedMessageType(self, v10, v11) != 2006)
  {
    goto LABEL_5;
  }

  v14 = objc_msgSend_associatedMessageEmoji(self, v12, v13);
  v17 = objc_msgSend_associatedMessageEmoji(tapbackCopy, v15, v16);

  if (v14 == v17 || (objc_msgSend_associatedMessageEmoji(self, v18, v19), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend_associatedMessageEmoji(tapbackCopy, v21, v22), v23 = objc_claimAutoreleasedReturnValue(), isEqual = objc_msgSend_isEqual_(v20, v24, v23), v23, v20, (isEqual & 1) != 0))
  {
LABEL_5:
    v26 = 1;
  }

  else
  {
LABEL_6:
    v26 = 0;
  }

  return v26;
}

- (BOOL)containsTransferGUID:(id)d
{
  dCopy = d;
  v7 = objc_msgSend_fileTransferGUIDs(self, v5, v6);
  v9 = objc_msgSend_containsObject_(v7, v8, dCopy);

  return v9;
}

- (NSArray)fileTransferGUIDs
{
  v3 = objc_msgSend__item(self, a2, v2);
  v6 = objc_msgSend_fileTransferGUIDs(v3, v4, v5);

  return v6;
}

- (id)commSafetyTransferGUID
{
  v4 = objc_msgSend_tapback(self, a2, v2);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = objc_msgSend_tapback(self, v6, v7);
    v11 = objc_msgSend_transferGUID(v8, v9, v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end