@interface IMSenderChatItem
- (id)_initWithItem:(id)item handle:(id)handle;
- (id)_initWithItem:(id)item handle:(id)handle displayName:(id)name mergedBusinessThread:(BOOL)thread;
- (id)_initWithItem:(id)item handle:(id)handle displayName:(id)name transcriptSharingMessageType:(int64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation IMSenderChatItem

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, zone);
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

- (id)_initWithItem:(id)item handle:(id)handle displayName:(id)name transcriptSharingMessageType:(int64_t)type
{
  itemCopy = item;
  handleCopy = handle;
  nameCopy = name;
  v24.receiver = self;
  v24.super_class = IMSenderChatItem;
  v13 = [(IMChatItem *)&v24 _initWithItem:itemCopy];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(v13 + 8, handle);
    objc_storeStrong(v14 + 10, name);
    v14[9] = type;
    v17 = objc_msgSend_ID(handleCopy, v15, v16);
    v20 = objc_msgSend_guid(itemCopy, v18, v19);
    v21 = sub_1A83AC604();

    objc_msgSend__setGUID_(v14, v22, v21);
  }

  return v14;
}

- (id)_initWithItem:(id)item handle:(id)handle displayName:(id)name mergedBusinessThread:(BOOL)thread
{
  itemCopy = item;
  handleCopy = handle;
  nameCopy = name;
  v24.receiver = self;
  v24.super_class = IMSenderChatItem;
  v13 = [(IMChatItem *)&v24 _initWithItem:itemCopy];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(v13 + 8, handle);
    objc_storeStrong(v14 + 10, name);
    *(v14 + 56) = thread;
    v17 = objc_msgSend_ID(handleCopy, v15, v16);
    v20 = objc_msgSend_guid(itemCopy, v18, v19);
    v21 = sub_1A83AC604();

    objc_msgSend__setGUID_(v14, v22, v21);
  }

  return v14;
}

- (id)_initWithItem:(id)item handle:(id)handle
{
  itemCopy = item;
  handleCopy = handle;
  v19.receiver = self;
  v19.super_class = IMSenderChatItem;
  v8 = [(IMChatItem *)&v19 _initWithItem:itemCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 8, handle);
    v12 = objc_msgSend_ID(handleCopy, v10, v11);
    v15 = objc_msgSend_guid(itemCopy, v13, v14);
    v16 = sub_1A83AC604();

    objc_msgSend__setGUID_(v9, v17, v16);
  }

  return v9;
}

@end