@interface IMSyndicationStatusChatItem
- (BOOL)isEqual:(id)equal;
- (id)_initWithItem:(id)item withSyndicationStatus:(int64_t)status statusItemSequenceNumber:(unint64_t)number;
- (id)copyWithStatusItemSequenceNumber:(unint64_t)number;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation IMSyndicationStatusChatItem

- (id)_initWithItem:(id)item withSyndicationStatus:(int64_t)status statusItemSequenceNumber:(unint64_t)number
{
  itemCopy = item;
  v22.receiver = self;
  v22.super_class = IMSyndicationStatusChatItem;
  v9 = [(IMMessageStatusChatItem *)&v22 _initWithItem:itemCopy statusType:21 time:0 count:0 expireStatusType:0 statusItemSequenceNumber:number];
  v12 = v9;
  if (v9)
  {
    v9[18] = status;
    *(v9 + 121) = objc_msgSend_wasDetectedAsSWYSpam(itemCopy, v10, v11);
    v15 = objc_msgSend_swyAppName(itemCopy, v13, v14);
    v16 = v12[16];
    v12[16] = v15;

    v19 = objc_msgSend_swyBundleID(itemCopy, v17, v18);
    v20 = v12[17];
    v12[17] = v19;

    *(v12 + 120) = 0;
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      syndicationStatus = self->_syndicationStatus;
      v8 = syndicationStatus == objc_msgSend_syndicationStatus(equalCopy, v5, v6);
    }

    else
    {
      v10.receiver = self;
      v10.super_class = IMSyndicationStatusChatItem;
      v8 = [(IMTranscriptChatItem *)&v10 isEqual:equalCopy];
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_messageItem(self, a2, zone);
  v7 = objc_msgSend_statusItemSequenceNumber(self, v5, v6);
  v8 = objc_alloc(objc_opt_class());
  v10 = objc_msgSend__initWithItem_withSyndicationStatus_statusItemSequenceNumber_(v8, v9, v4, self->_syndicationStatus, v7);

  return v10;
}

- (id)copyWithStatusItemSequenceNumber:(unint64_t)number
{
  v5 = objc_msgSend_messageItem(self, a2, number);
  v6 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend__initWithItem_withSyndicationStatus_statusItemSequenceNumber_(v6, v7, v5, self->_syndicationStatus, number);

  return v8;
}

@end