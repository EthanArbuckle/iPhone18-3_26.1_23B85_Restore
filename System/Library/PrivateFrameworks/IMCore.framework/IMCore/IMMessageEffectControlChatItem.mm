@interface IMMessageEffectControlChatItem
- (id)_initWithItem:(id)item effectStyleID:(id)d statusItemSequenceNumber:(unint64_t)number;
- (id)copyWithStatusItemSequenceNumber:(unint64_t)number;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation IMMessageEffectControlChatItem

- (id)_initWithItem:(id)item effectStyleID:(id)d statusItemSequenceNumber:(unint64_t)number
{
  dCopy = d;
  v13.receiver = self;
  v13.super_class = IMMessageEffectControlChatItem;
  v10 = [(IMMessageStatusChatItem *)&v13 _initWithItem:item statusType:15 time:0 count:0 expireStatusType:0 statusItemSequenceNumber:number];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(v10 + 15, d);
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_messageItem(self, a2, zone);
  v7 = objc_msgSend_statusItemSequenceNumber(self, v5, v6);
  v8 = objc_alloc(objc_opt_class());
  v10 = objc_msgSend__initWithItem_effectStyleID_statusItemSequenceNumber_(v8, v9, v4, self->_effectStyleID, v7);

  return v10;
}

- (id)copyWithStatusItemSequenceNumber:(unint64_t)number
{
  v5 = objc_msgSend_messageItem(self, a2, number);
  v6 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend__initWithItem_effectStyleID_statusItemSequenceNumber_(v6, v7, v5, self->_effectStyleID, number);

  return v8;
}

@end