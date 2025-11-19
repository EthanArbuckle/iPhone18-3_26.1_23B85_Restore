@interface IMSyndicationStatusChatItem
- (BOOL)isEqual:(id)a3;
- (id)_initWithItem:(id)a3 withSyndicationStatus:(int64_t)a4 statusItemSequenceNumber:(unint64_t)a5;
- (id)copyWithStatusItemSequenceNumber:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation IMSyndicationStatusChatItem

- (id)_initWithItem:(id)a3 withSyndicationStatus:(int64_t)a4 statusItemSequenceNumber:(unint64_t)a5
{
  v8 = a3;
  v22.receiver = self;
  v22.super_class = IMSyndicationStatusChatItem;
  v9 = [(IMMessageStatusChatItem *)&v22 _initWithItem:v8 statusType:21 time:0 count:0 expireStatusType:0 statusItemSequenceNumber:a5];
  v12 = v9;
  if (v9)
  {
    v9[18] = a4;
    *(v9 + 121) = objc_msgSend_wasDetectedAsSWYSpam(v8, v10, v11);
    v15 = objc_msgSend_swyAppName(v8, v13, v14);
    v16 = v12[16];
    v12[16] = v15;

    v19 = objc_msgSend_swyBundleID(v8, v17, v18);
    v20 = v12[17];
    v12[17] = v19;

    *(v12 + 120) = 0;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      syndicationStatus = self->_syndicationStatus;
      v8 = syndicationStatus == objc_msgSend_syndicationStatus(v4, v5, v6);
    }

    else
    {
      v10.receiver = self;
      v10.super_class = IMSyndicationStatusChatItem;
      v8 = [(IMTranscriptChatItem *)&v10 isEqual:v4];
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_msgSend_messageItem(self, a2, a3);
  v7 = objc_msgSend_statusItemSequenceNumber(self, v5, v6);
  v8 = objc_alloc(objc_opt_class());
  v10 = objc_msgSend__initWithItem_withSyndicationStatus_statusItemSequenceNumber_(v8, v9, v4, self->_syndicationStatus, v7);

  return v10;
}

- (id)copyWithStatusItemSequenceNumber:(unint64_t)a3
{
  v5 = objc_msgSend_messageItem(self, a2, a3);
  v6 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend__initWithItem_withSyndicationStatus_statusItemSequenceNumber_(v6, v7, v5, self->_syndicationStatus, a3);

  return v8;
}

@end