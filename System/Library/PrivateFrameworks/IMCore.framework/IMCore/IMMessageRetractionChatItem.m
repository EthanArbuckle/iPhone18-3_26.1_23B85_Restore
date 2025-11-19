@interface IMMessageRetractionChatItem
- (BOOL)canRetryFailedRetraction;
- (IMMessage)message;
- (NSString)messageGUID;
- (NSString)threadIdentifier;
- (id)_initWithItem:(id)a3 partIndex:(int64_t)a4 isFailedRetraction:(BOOL)a5 retractionUnsupportedByHandles:(id)a6 sender:(id)a7 isFromMe:(BOOL)a8;
- (unint64_t)replyCount;
@end

@implementation IMMessageRetractionChatItem

- (id)_initWithItem:(id)a3 partIndex:(int64_t)a4 isFailedRetraction:(BOOL)a5 retractionUnsupportedByHandles:(id)a6 sender:(id)a7 isFromMe:(BOOL)a8
{
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v45.receiver = self;
  v45.super_class = IMMessageRetractionChatItem;
  v17 = [(IMChatItem *)&v45 _initWithItem:v14];
  if (v17)
  {
    v18 = objc_alloc(MEMORY[0x1E696AEC0]);
    v21 = objc_msgSend_guid(v14, v19, v20);
    obj = a7;
    v23 = objc_msgSend_initWithFormat_(v18, v22, @"p:%ld/%@", a4, v21);

    v43 = a8;
    v24 = MEMORY[0x1E696AD98];
    v27 = objc_msgSend_count(v17[10], v25, v26);
    v29 = objc_msgSend_numberWithUnsignedInteger_(v24, v28, v27);
    objc_msgSend_stringValue(v29, v30, v31);
    v32 = a4;
    v33 = v15;
    v35 = v34 = v16;
    v36 = sub_1A83AC604();

    v16 = v34;
    v15 = v33;

    objc_msgSend__setGUID_(v17, v37, v36);
    v17[9] = v32;
    objc_storeStrong(v17 + 8, obj);
    *(v17 + 56) = v43;
    *(v17 + 57) = a5;
    v40 = objc_msgSend_copy(v33, v38, v39);
    v41 = v17[10];
    v17[10] = v40;
  }

  return v17;
}

- (BOOL)canRetryFailedRetraction
{
  v3 = objc_msgSend__retractedMessageItem(self, a2, v2);
  canRetryFailedRetraction = objc_msgSend_canRetryFailedRetraction(v3, v4, v5);

  return canRetryFailedRetraction;
}

- (IMMessage)message
{
  v3 = objc_msgSend__retractedMessageItem(self, a2, v2);
  v6 = objc_msgSend_message(v3, v4, v5);

  return v6;
}

- (NSString)messageGUID
{
  v3 = objc_msgSend__retractedMessageItem(self, a2, v2);
  v6 = objc_msgSend_guid(v3, v4, v5);

  return v6;
}

- (unint64_t)replyCount
{
  v4 = objc_msgSend__retractedMessageItem(self, a2, v2);
  v7 = objc_msgSend_partIndex(self, v5, v6);
  v10 = objc_msgSend_replyCountsByPart(v4, v8, v9);
  if (objc_msgSend_count(v10, v11, v12))
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = sub_1A8259B40;
    v23 = sub_1A825AECC;
    v24 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1A82E3B08;
    v18[3] = &unk_1E7811A98;
    v18[4] = &v19;
    v18[5] = v7;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v10, v13, v18);
    v16 = objc_msgSend_unsignedIntegerValue(v20[5], v14, v15);
    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (NSString)threadIdentifier
{
  v3 = objc_msgSend__retractedMessageItem(self, a2, v2);
  v6 = objc_msgSend_threadIdentifier(v3, v4, v5);

  return v6;
}

@end