@interface IMMessageStatusChatItem
- (BOOL)isFromMe;
- (BOOL)isStewie;
- (NSString)description;
- (NSString)errorText;
- (id)_initWithItem:(id)a3 statusType:(int64_t)a4 time:(id)a5 count:(unint64_t)a6 expireStatusType:(int64_t)a7 statusItemSequenceNumber:(unint64_t)a8;
- (id)_timeStale;
- (id)copyWithStatusItemSequenceNumber:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_setTimeAdded:(id)a3;
@end

@implementation IMMessageStatusChatItem

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = IMMessageStatusChatItem;
  v4 = [(IMTranscriptChatItem *)&v9 description];
  statusType = self->_statusType;
  v7 = objc_msgSend_stringWithFormat_(v3, v6, @"[[%@] statusType: %d expireStatusType: %d]", v4, statusType, self->_expireStatusType);

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_msgSend_messageItem(self, a2, a3);
  v5 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend__initWithItem_statusType_time_count_expireStatusType_statusItemSequenceNumber_(v5, v6, v4, self->_statusType, self->_time, self->_count, self->_expireStatusType, self->_statusItemSequenceNumber);

  return v7;
}

- (id)copyWithStatusItemSequenceNumber:(unint64_t)a3
{
  v5 = objc_msgSend_messageItem(self, a2, a3);
  v6 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend__initWithItem_statusType_time_count_expireStatusType_statusItemSequenceNumber_(v6, v7, v5, self->_statusType, self->_time, self->_count, self->_expireStatusType, a3);

  return v8;
}

- (id)_timeStale
{
  timeStale = self->_timeStale;
  if (!timeStale)
  {
    v5 = objc_msgSend__item(self, a2, v2);
    v8 = v5;
    if (self->_expireStatusType == 2)
    {
      if (!objc_msgSend_isFromMe(v5, v6, v7))
      {
        v14 = objc_msgSend_timePlayed(v8, v9, v10);
        if (v14)
        {
          v15 = objc_alloc(MEMORY[0x1E695DF00]);
          v17 = objc_msgSend_initWithTimeInterval_sinceDate_(v15, v16, v14, 3.0);
          v18 = self->_timeStale;
          self->_timeStale = v17;
        }

        goto LABEL_8;
      }

      if (self->_timeAdded)
      {
        v11 = objc_alloc(MEMORY[0x1E695DF00]);
        v13 = objc_msgSend_initWithTimeInterval_sinceDate_(v11, v12, self->_timeAdded, 3.0);
        v14 = self->_timeStale;
        self->_timeStale = v13;
LABEL_8:
      }
    }

    timeStale = self->_timeStale;
  }

  return timeStale;
}

- (void)_setTimeAdded:(id)a3
{
  v5 = a3;
  if (self->_timeAdded != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_timeAdded, a3);
    timeStale = self->_timeStale;
    self->_timeStale = 0;

    v5 = v7;
  }
}

- (BOOL)isFromMe
{
  v3 = objc_msgSend__item(self, a2, v2);
  v6 = objc_msgSend_isFromMe(v3, v4, v5);

  return v6;
}

- (BOOL)isStewie
{
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  v7 = objc_msgSend_stewieEnabled(v4, v5, v6);

  if (!v7)
  {
    return 0;
  }

  v10 = objc_msgSend__item(self, v8, v9);
  v13 = objc_msgSend_message(v10, v11, v12);
  v16 = objc_msgSend_subject(v13, v14, v15);
  isStewie = objc_msgSend_isStewie(v16, v17, v18);

  return isStewie;
}

- (NSString)errorText
{
  v3 = objc_msgSend__item(self, a2, v2);
  v6 = objc_msgSend_message(v3, v4, v5);

  v9 = objc_msgSend_error(v6, v7, v8);
  v12 = v9;
  if (v9)
  {
    v13 = objc_msgSend_code(v9, v10, v11);
    v16 = _NSStringFromIMMessageError(v13);
    if (!v16)
    {
      v17 = MEMORY[0x1E696AEC0];
      v18 = objc_msgSend_code(v12, v14, v15);
      v16 = objc_msgSend_stringWithFormat_(v17, v19, @"Error %ld", v18);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_initWithItem:(id)a3 statusType:(int64_t)a4 time:(id)a5 count:(unint64_t)a6 expireStatusType:(int64_t)a7 statusItemSequenceNumber:(unint64_t)a8
{
  v14 = a3;
  v15 = a5;
  v29.receiver = self;
  v29.super_class = IMMessageStatusChatItem;
  v16 = [(IMChatItem *)&v29 _initWithItem:v14];
  v17 = v16;
  if (v16)
  {
    *(v16 + 7) = a4;
    objc_storeStrong(v16 + 8, a5);
    v17[10] = a6;
    v17[9] = a7;
    v17[14] = a8;
    v20 = objc_msgSend_guid(v14, v18, v19);
    v22 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v21, a8);
    v25 = objc_msgSend_stringValue(v22, v23, v24);
    v26 = sub_1A83AC604();

    objc_msgSend__setGUID_(v17, v27, v26);
  }

  return v17;
}

@end