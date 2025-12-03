@interface IMMessageReplyCountChatItem
- (id)_initWithItem:(id)item parentItem:(id)parentItem threadIdentifier:(id)identifier replyMessageGUID:(id)d replyIsFromMe:(BOOL)me count:(unint64_t)count statusItemSequenceNumber:(unint64_t)number;
- (id)copyWithStatusItemSequenceNumber:(unint64_t)number;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation IMMessageReplyCountChatItem

- (id)_initWithItem:(id)item parentItem:(id)parentItem threadIdentifier:(id)identifier replyMessageGUID:(id)d replyIsFromMe:(BOOL)me count:(unint64_t)count statusItemSequenceNumber:(unint64_t)number
{
  itemCopy = item;
  parentItemCopy = parentItem;
  identifierCopy = identifier;
  dCopy = d;
  v38.receiver = self;
  v38.super_class = IMMessageReplyCountChatItem;
  v21 = [(IMMessageStatusChatItem *)&v38 _initWithItem:itemCopy statusType:18 time:0 count:count expireStatusType:0 statusItemSequenceNumber:number];
  if (v21)
  {
    objc_msgSend_guid(itemCopy, v19, v20);
    v22 = v37 = me;
    v24 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v23, number);
    objc_msgSend_stringValue(v24, v25, v26);
    obj = d;
    v28 = v27 = parentItemCopy;
    v29 = sub_1A83AC604();

    parentItemCopy = v27;
    objc_msgSend__setGUID_(v21, v30, v29);
    objc_storeStrong(v21 + 16, parentItem);
    v33 = objc_msgSend_copy(identifierCopy, v31, v32);
    v34 = v21[17];
    v21[17] = v33;

    objc_storeStrong(v21 + 18, obj);
    *(v21 + 120) = v37;
  }

  return v21;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_messageItem(self, a2, zone);
  v7 = objc_msgSend_count(self, v5, v6);
  v10 = objc_msgSend_statusItemSequenceNumber(self, v8, v9);
  v11 = objc_alloc(objc_opt_class());
  v13 = objc_msgSend__initWithItem_parentItem_threadIdentifier_replyMessageGUID_replyIsFromMe_count_statusItemSequenceNumber_(v11, v12, v4, self->_parentItem, self->_threadIdentifier, self->_replyMessageGUID, self->_replyIsFromMe, v7, v10);

  return v13;
}

- (id)copyWithStatusItemSequenceNumber:(unint64_t)number
{
  v5 = objc_msgSend_messageItem(self, a2, number);
  v8 = objc_msgSend_count(self, v6, v7);
  v9 = objc_alloc(objc_opt_class());
  v11 = objc_msgSend__initWithItem_parentItem_threadIdentifier_replyMessageGUID_replyIsFromMe_count_statusItemSequenceNumber_(v9, v10, v5, self->_parentItem, self->_threadIdentifier, self->_replyMessageGUID, self->_replyIsFromMe, v8, number);

  return v11;
}

@end