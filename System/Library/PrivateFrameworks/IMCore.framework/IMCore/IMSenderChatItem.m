@interface IMSenderChatItem
- (id)_initWithItem:(id)a3 handle:(id)a4;
- (id)_initWithItem:(id)a3 handle:(id)a4 displayName:(id)a5 mergedBusinessThread:(BOOL)a6;
- (id)_initWithItem:(id)a3 handle:(id)a4 displayName:(id)a5 transcriptSharingMessageType:(int64_t)a6;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation IMSenderChatItem

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, a3);
  isTranscriptSharingEnabled = objc_msgSend_isTranscriptSharingEnabled(v4, v5, v6);

  v8 = objc_alloc(objc_opt_class());
  v12 = objc_msgSend__item(self, v9, v10);
  handle = self->_handle;
  if (isTranscriptSharingEnabled)
  {
    v14 = objc_msgSend__initWithItem_handle_displayName_transcriptSharingMessageType_(v8, v11, v12, handle, self->_displayName, self->_transcriptSharingMessageType);
  }

  else
  {
    v14 = objc_msgSend__initWithItem_handle_(v8, v11, v12, handle);
  }

  v15 = v14;

  return v15;
}

- (id)_initWithItem:(id)a3 handle:(id)a4 displayName:(id)a5 transcriptSharingMessageType:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v24.receiver = self;
  v24.super_class = IMSenderChatItem;
  v13 = [(IMChatItem *)&v24 _initWithItem:v10];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(v13 + 8, a4);
    objc_storeStrong(v14 + 10, a5);
    v14[9] = a6;
    v17 = objc_msgSend_ID(v11, v15, v16);
    v20 = objc_msgSend_guid(v10, v18, v19);
    v21 = sub_1A83AC604();

    objc_msgSend__setGUID_(v14, v22, v21);
  }

  return v14;
}

- (id)_initWithItem:(id)a3 handle:(id)a4 displayName:(id)a5 mergedBusinessThread:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v24.receiver = self;
  v24.super_class = IMSenderChatItem;
  v13 = [(IMChatItem *)&v24 _initWithItem:v10];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(v13 + 8, a4);
    objc_storeStrong(v14 + 10, a5);
    *(v14 + 56) = a6;
    v17 = objc_msgSend_ID(v11, v15, v16);
    v20 = objc_msgSend_guid(v10, v18, v19);
    v21 = sub_1A83AC604();

    objc_msgSend__setGUID_(v14, v22, v21);
  }

  return v14;
}

- (id)_initWithItem:(id)a3 handle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = IMSenderChatItem;
  v8 = [(IMChatItem *)&v19 _initWithItem:v6];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 8, a4);
    v12 = objc_msgSend_ID(v7, v10, v11);
    v15 = objc_msgSend_guid(v6, v13, v14);
    v16 = sub_1A83AC604();

    objc_msgSend__setGUID_(v9, v17, v16);
  }

  return v9;
}

@end