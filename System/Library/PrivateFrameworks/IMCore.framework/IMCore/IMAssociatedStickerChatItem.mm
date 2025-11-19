@interface IMAssociatedStickerChatItem
- (id)_initWithItem:(id)a3 sender:(id)a4 transferGUID:(id)a5;
- (id)commSafetyMessageGUID;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)stickerPositionVersion;
- (void)_refreshGeometryDescriptorFromStickerUserInfo;
@end

@implementation IMAssociatedStickerChatItem

- (id)commSafetyMessageGUID
{
  v3 = objc_msgSend_message(self, a2, v2);
  v6 = objc_msgSend_guid(v3, v4, v5);

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IMAssociatedStickerChatItem;
  v4 = [(IMTranscriptChatItem *)&v8 description];
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"[[%@] transferGUID: %@]", v4, self->_transferGUID);

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend__item(self, v5, v6);
  v10 = objc_msgSend_sender(self, v8, v9);
  v12 = objc_msgSend__initWithItem_sender_transferGUID_(v4, v11, v7, v10, self->_transferGUID);

  return v12;
}

- (id)_initWithItem:(id)a3 sender:(id)a4 transferGUID:(id)a5
{
  v8 = a5;
  v17.receiver = self;
  v17.super_class = IMAssociatedStickerChatItem;
  v11 = [(IMAssociatedMessageChatItem *)&v17 _initWithItem:a3 sender:a4];
  if (v11)
  {
    v12 = objc_msgSend_copy(v8, v9, v10);
    v13 = v11[20];
    v11[20] = v12;

    objc_msgSend__refreshGeometryDescriptorFromStickerUserInfo(v11, v14, v15);
  }

  return v11;
}

- (void)_refreshGeometryDescriptorFromStickerUserInfo
{
  v4 = objc_msgSend_sharedInstance(IMFileTransferCenter, a2, v2);
  v6 = objc_msgSend_transferForGUID_(v4, v5, self->_transferGUID);

  if (objc_msgSend_isSticker(v6, v7, v8))
  {
    v11 = objc_msgSend_stickerUserInfo(v6, v9, v10);
    v13 = objc_msgSend_objectForKey_(v11, v12, *MEMORY[0x1E69A7C60]);
    v16 = v13;
    if (v13)
    {
      v52 = objc_msgSend_unsignedIntValue(v13, v14, v15);
    }

    else
    {
      v52 = 0;
    }

    v17 = objc_msgSend_objectForKey_(v11, v14, *MEMORY[0x1E69A7C50]);
    v20 = v17;
    if (v17)
    {
      v51 = objc_msgSend_unsignedIntValue(v17, v18, v19);
    }

    else
    {
      v51 = 0;
    }

    v21 = objc_msgSend_objectForKey_(v11, v18, *MEMORY[0x1E69A7C68]);
    v24 = v21;
    v25 = 0.0;
    v26 = 0.0;
    if (v21)
    {
      objc_msgSend_floatValue(v21, v22, v23);
      v26 = v27;
    }

    v28 = objc_msgSend_objectForKey_(v11, v22, *MEMORY[0x1E69A7CC8]);
    v31 = v28;
    if (v28)
    {
      objc_msgSend_floatValue(v28, v29, v30);
      v25 = v32;
    }

    v33 = objc_msgSend_objectForKey_(v11, v29, *MEMORY[0x1E69A7CD0]);
    v36 = v33;
    v37 = 0.0;
    v38 = 0.0;
    if (v33)
    {
      objc_msgSend_floatValue(v33, v34, v35);
      v38 = v39;
    }

    v40 = objc_msgSend_objectForKey_(v11, v34, *MEMORY[0x1E69A7C78]);
    v43 = v40;
    if (v40)
    {
      objc_msgSend_floatValue(v40, v41, v42);
      v37 = v44;
    }

    v45 = objc_msgSend_objectForKey_(v11, v41, *MEMORY[0x1E69A7C70]);
    v48 = v45;
    if (v45)
    {
      objc_msgSend_floatValue(v45, v46, v47);
      v50 = v49;
    }

    else
    {
      v50 = 0.0;
    }

    v53[0] = v52;
    v53[1] = v51;
    *&v53[2] = v26;
    *&v53[3] = v25;
    *&v53[4] = v38;
    *&v53[5] = v37;
    *&v53[6] = v50;
    objc_msgSend__setGeometryDescriptor_(self, v46, v53);
  }
}

- (unint64_t)stickerPositionVersion
{
  v4 = objc_msgSend_sharedInstance(IMFileTransferCenter, a2, v2);
  v6 = objc_msgSend_transferForGUID_(v4, v5, self->_transferGUID);

  if (objc_msgSend_isSticker(v6, v7, v8))
  {
    v11 = objc_msgSend_stickerUserInfo(v6, v9, v10);
    v13 = objc_msgSend_valueForKey_(v11, v12, *MEMORY[0x1E69A7CB8]);
    v16 = objc_msgSend_unsignedIntValue(v13, v14, v15);
  }

  else
  {
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v16;
}

@end