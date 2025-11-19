@interface IMParticipantChangeChatItem
- (BOOL)unattributed;
- (id)_initWithItem:(id)a3 sender:(id)a4 otherHandle:(id)a5;
- (id)_initWithItem:(id)a3 sender:(id)a4 otherHandle:(id)a5 context:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)changeType;
@end

@implementation IMParticipantChangeChatItem

- (id)copyWithZone:(_NSZone *)a3
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

- (id)_initWithItem:(id)a3 sender:(id)a4 otherHandle:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [IMParticipantChangeChatItem alloc];
  v13 = objc_msgSend__initWithItem_sender_otherHandle_context_(v11, v12, v10, v9, v8, 0);

  return v13;
}

- (id)_initWithItem:(id)a3 sender:(id)a4 otherHandle:(id)a5 context:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v28.receiver = self;
  v28.super_class = IMParticipantChangeChatItem;
  v14 = [(IMChatItem *)&v28 _initWithItem:v10];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(v14 + 8, a4);
    objc_storeStrong(v15 + 9, a5);
    *(v15 + 56) = objc_msgSend_errorCode(v10, v16, v17) != 0;
    v20 = objc_msgSend_guid(v10, v18, v19);
    v21 = sub_1A83AC604();

    objc_msgSend__setGUID_(v15, v22, v21);
    v25 = objc_msgSend_activeTelephonyConversationUUID(v13, v23, v24);
    objc_msgSend_setActiveTelephonyConversationUUID_(v15, v26, v25);
  }

  return v15;
}

@end