@interface IMMessageEffectControlChatItem
- (id)_initWithItem:(id)a3 effectStyleID:(id)a4 statusItemSequenceNumber:(unint64_t)a5;
- (id)copyWithStatusItemSequenceNumber:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation IMMessageEffectControlChatItem

- (id)_initWithItem:(id)a3 effectStyleID:(id)a4 statusItemSequenceNumber:(unint64_t)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = IMMessageEffectControlChatItem;
  v10 = [(IMMessageStatusChatItem *)&v13 _initWithItem:a3 statusType:15 time:0 count:0 expireStatusType:0 statusItemSequenceNumber:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(v10 + 15, a4);
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_msgSend_messageItem(self, a2, a3);
  v7 = objc_msgSend_statusItemSequenceNumber(self, v5, v6);
  v8 = objc_alloc(objc_opt_class());
  v10 = objc_msgSend__initWithItem_effectStyleID_statusItemSequenceNumber_(v8, v9, v4, self->_effectStyleID, v7);

  return v10;
}

- (id)copyWithStatusItemSequenceNumber:(unint64_t)a3
{
  v5 = objc_msgSend_messageItem(self, a2, a3);
  v6 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend__initWithItem_effectStyleID_statusItemSequenceNumber_(v6, v7, v5, self->_effectStyleID, a3);

  return v8;
}

@end