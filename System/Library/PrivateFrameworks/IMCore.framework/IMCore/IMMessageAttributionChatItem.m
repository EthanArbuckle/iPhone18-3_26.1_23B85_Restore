@interface IMMessageAttributionChatItem
- (BOOL)isEqual:(id)a3;
- (id)_initWithItem:(id)a3 attributionInfo:(id)a4 attributionType:(int64_t)a5 showsLearnMoreLink:(BOOL)a6 statusItemSequenceNumber:(unint64_t)a7;
- (id)copyWithStatusItemSequenceNumber:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation IMMessageAttributionChatItem

- (id)_initWithItem:(id)a3 attributionInfo:(id)a4 attributionType:(int64_t)a5 showsLearnMoreLink:(BOOL)a6 statusItemSequenceNumber:(unint64_t)a7
{
  v13 = a4;
  v17.receiver = self;
  v17.super_class = IMMessageAttributionChatItem;
  v14 = [(IMMessageStatusChatItem *)&v17 _initWithItem:a3 statusType:14 time:0 count:0 expireStatusType:0 statusItemSequenceNumber:a7];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(v14 + 16, a4);
    v15[17] = a5;
    *(v15 + 120) = a6;
  }

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (v5 == self)
  {
    isEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v9 = objc_msgSend_attributionType(self, v7, v8);
      if (v9 != objc_msgSend_attributionType(v6, v10, v11) || (v14 = objc_msgSend_showsLearnMoreLink(self, v12, v13), v14 != objc_msgSend_showsLearnMoreLink(v6, v15, v16)))
      {
        isEqual = 0;
LABEL_15:

        goto LABEL_16;
      }

      v22 = objc_msgSend_attributionInfo(self, v17, v18);
      if (v22 || (objc_msgSend_attributionInfo(v6, v20, v21), (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v23 = objc_msgSend_attributionInfo(self, v20, v21);
        v26 = objc_msgSend_attributionInfo(v6, v24, v25);
        isEqual = objc_msgSend_isEqual_(v23, v27, v26);

        if (v22)
        {
LABEL_14:

          goto LABEL_15;
        }
      }

      else
      {
        isEqual = 1;
      }

      goto LABEL_14;
    }

    isEqual = 0;
  }

LABEL_16:

  return isEqual;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_msgSend_messageItem(self, a2, a3);
  v7 = objc_msgSend_statusItemSequenceNumber(self, v5, v6);
  v8 = objc_alloc(objc_opt_class());
  v10 = objc_msgSend__initWithItem_attributionInfo_attributionType_showsLearnMoreLink_statusItemSequenceNumber_(v8, v9, v4, self->_attributionInfo, self->_attributionType, self->_showsLearnMoreLink, v7);

  return v10;
}

- (id)copyWithStatusItemSequenceNumber:(unint64_t)a3
{
  v5 = objc_msgSend_messageItem(self, a2, a3);
  v6 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend__initWithItem_attributionInfo_attributionType_showsLearnMoreLink_statusItemSequenceNumber_(v6, v7, v5, self->_attributionInfo, self->_attributionType, self->_showsLearnMoreLink, a3);

  return v8;
}

@end