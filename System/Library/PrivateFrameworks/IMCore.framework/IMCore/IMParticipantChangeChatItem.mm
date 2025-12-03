@interface IMParticipantChangeChatItem
- (BOOL)unattributed;
- (id)_initWithItem:(id)item sender:(id)sender otherHandle:(id)handle;
- (id)_initWithItem:(id)item sender:(id)sender otherHandle:(id)handle context:(id)context;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)changeType;
@end

@implementation IMParticipantChangeChatItem

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend__item(self, v5, v6);
  v9 = objc_msgSend__initWithItem_sender_otherHandle_(v4, v8, v7, self->_sender, self->_otherHandle);

  return v9;
}

- (int64_t)changeType
{
  v3 = objc_msgSend__item(self, a2, v2);
  v6 = objc_msgSend_changeType(v3, v4, v5);

  return v6;
}

- (BOOL)unattributed
{
  v3 = objc_msgSend__item(self, a2, v2);
  v6 = objc_msgSend_unattributed(v3, v4, v5);

  return v6;
}

- (id)_initWithItem:(id)item sender:(id)sender otherHandle:(id)handle
{
  handleCopy = handle;
  senderCopy = sender;
  itemCopy = item;
  v11 = [IMParticipantChangeChatItem alloc];
  v13 = objc_msgSend__initWithItem_sender_otherHandle_context_(v11, v12, itemCopy, senderCopy, handleCopy, 0);

  return v13;
}

- (id)_initWithItem:(id)item sender:(id)sender otherHandle:(id)handle context:(id)context
{
  itemCopy = item;
  senderCopy = sender;
  handleCopy = handle;
  contextCopy = context;
  v28.receiver = self;
  v28.super_class = IMParticipantChangeChatItem;
  v14 = [(IMChatItem *)&v28 _initWithItem:itemCopy];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(v14 + 8, sender);
    objc_storeStrong(v15 + 9, handle);
    *(v15 + 56) = objc_msgSend_errorCode(itemCopy, v16, v17) != 0;
    v20 = objc_msgSend_guid(itemCopy, v18, v19);
    v21 = sub_1A83AC604();

    objc_msgSend__setGUID_(v15, v22, v21);
    v25 = objc_msgSend_activeTelephonyConversationUUID(contextCopy, v23, v24);
    objc_msgSend_setActiveTelephonyConversationUUID_(v15, v26, v25);
  }

  return v15;
}

@end