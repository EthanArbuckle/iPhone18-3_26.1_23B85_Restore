@interface IMMessageReplyCountChatItem
- (id)_initWithItem:(id)a3 parentItem:(id)a4 threadIdentifier:(id)a5 replyMessageGUID:(id)a6 replyIsFromMe:(BOOL)a7 count:(unint64_t)a8 statusItemSequenceNumber:(unint64_t)a9;
- (id)copyWithStatusItemSequenceNumber:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation IMMessageReplyCountChatItem

- (id)_initWithItem:(id)a3 parentItem:(id)a4 threadIdentifier:(id)a5 replyMessageGUID:(id)a6 replyIsFromMe:(BOOL)a7 count:(unint64_t)a8 statusItemSequenceNumber:(unint64_t)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v38.receiver = self;
  v38.super_class = IMMessageReplyCountChatItem;
  v21 = [(IMMessageStatusChatItem *)&v38 _initWithItem:v15 statusType:18 time:0 count:a8 expireStatusType:0 statusItemSequenceNumber:a9];
  if (v21)
  {
    objc_msgSend_guid(v15, v19, v20);
    v22 = v37 = a7;
    v24 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v23, a9);
    objc_msgSend_stringValue(v24, v25, v26);
    obj = a6;
    v28 = v27 = v16;
    v29 = sub_1A83AC604();

    v16 = v27;
    objc_msgSend__setGUID_(v21, v30, v29);
    objc_storeStrong(v21 + 16, a4);
    v33 = objc_msgSend_copy(v17, v31, v32);
    v34 = v21[17];
    v21[17] = v33;

    objc_storeStrong(v21 + 18, obj);
    *(v21 + 120) = v37;
  }

  return v21;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_msgSend_messageItem(self, a2, a3);
  v7 = objc_msgSend_count(self, v5, v6);
  v10 = objc_msgSend_statusItemSequenceNumber(self, v8, v9);
  v11 = objc_alloc(objc_opt_class());
  v13 = objc_msgSend__initWithItem_parentItem_threadIdentifier_replyMessageGUID_replyIsFromMe_count_statusItemSequenceNumber_(v11, v12, v4, self->_parentItem, self->_threadIdentifier, self->_replyMessageGUID, self->_replyIsFromMe, v7, v10);

  return v13;
}

- (id)copyWithStatusItemSequenceNumber:(unint64_t)a3
{
  v5 = objc_msgSend_messageItem(self, a2, a3);
  v8 = objc_msgSend_count(self, v6, v7);
  v9 = objc_alloc(objc_opt_class());
  v11 = objc_msgSend__initWithItem_parentItem_threadIdentifier_replyMessageGUID_replyIsFromMe_count_statusItemSequenceNumber_(v9, v10, v5, self->_parentItem, self->_threadIdentifier, self->_replyMessageGUID, self->_replyIsFromMe, v8, a3);

  return v11;
}

@end