@interface IMSPIMessage
- (BOOL)allowedByScreenTime;
- (NSURL)url;
- (id)description;
- (id)spiChatWithQOS:(unsigned int)a3;
- (void)dealloc;
@end

@implementation IMSPIMessage

- (BOOL)allowedByScreenTime
{
  if (objc_msgSend_isContactLimitsFeatureEnabled(IMDowntimeController, a2, v2))
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1A82633F0;
    aBlock[3] = &unk_1E78133A8;
    aBlock[4] = self;
    aBlock[5] = &v12;
    v4 = _Block_copy(aBlock);
    if (objc_msgSend_isMainThread(MEMORY[0x1E696AF00], v5, v6))
    {
      v4[2](v4);
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1A82635E0;
      block[3] = &unk_1E780FE90;
      v10 = v4;
      dispatch_sync(MEMORY[0x1E69E96A0], block);
    }

    v7 = *(v13 + 24);

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

- (void)dealloc
{
  objc_msgSend_setText_(self, a2, 0);
  objc_msgSend_setBody_(self, v3, 0);
  objc_msgSend_setSummary_(self, v4, 0);
  objc_msgSend_setDate_(self, v5, 0);
  objc_msgSend_setDateRead_(self, v6, 0);
  objc_msgSend_setDateForLastReadMessageInChat_(self, v7, 0);
  objc_msgSend_setRecipients_(self, v8, 0);
  objc_msgSend_setSender_(self, v9, 0);
  objc_msgSend_setSubject_(self, v10, 0);
  objc_msgSend_setAttributedText_(self, v11, 0);
  objc_msgSend_setGuid_(self, v12, 0);
  objc_msgSend_setChatGuids_(self, v13, 0);
  objc_msgSend_setGroupID_(self, v14, 0);
  objc_msgSend_setChatIdentifier_(self, v15, 0);
  objc_msgSend_setDisplayName_(self, v16, 0);
  objc_msgSend_setReferencedMessage_(self, v17, 0);
  objc_msgSend_setBundleId_(self, v18, 0);
  objc_msgSend_setDisplayAppName_(self, v19, 0);
  objc_msgSend_setRichLinkMetadata_(self, v20, 0);
  objc_msgSend_setPeerPaymentAmount_(self, v21, 0);
  v22.receiver = self;
  v22.super_class = IMSPIMessage;
  [(IMSPIMessage *)&v22 dealloc];
}

- (id)description
{
  v4 = MEMORY[0x1E696AEC0];
  if (objc_msgSend_isOutgoing(self, a2, v2))
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if (objc_msgSend_isRead(self, v5, v6))
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if (objc_msgSend_isAudioMessage(self, v8, v9))
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  v14 = objc_msgSend_sender(self, v11, v12);
  v17 = objc_msgSend_recipients(self, v15, v16);
  v20 = objc_msgSend_guid(self, v18, v19);
  v23 = objc_msgSend_chatGuids(self, v21, v22);
  v26 = objc_msgSend_attachments(self, v24, v25);
  v28 = objc_msgSend_stringWithFormat_(v4, v27, @"IMSPIMessage: %p [Outgoing: %@  Read: %@  IsAudio: %@  Sender: %@  Recipients: %@  GUID: %@ ChatGUIDs: %@ Attachments: %@]", self, v7, v10, v13, v14, v17, v20, v23, v26);

  return v28;
}

- (NSURL)url
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"x-apple-sms:guid=%@", self->_guid);
  v5 = objc_msgSend_URLWithString_(v2, v4, v3);

  return v5;
}

- (id)spiChatWithQOS:(unsigned int)a3
{
  v5 = sub_1A826443C(a3);
  v8 = objc_msgSend_firstObject(self->_chatGuids, v6, v7);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1A8259CB0;
  v23 = sub_1A825AF84;
  v24 = 0;
  if (objc_msgSend_length(v8, v9, v10))
  {
    v11 = dispatch_semaphore_create(0);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1A83D1384;
    v16[3] = &unk_1E78147E0;
    v18 = &v19;
    v12 = v11;
    v17 = v12;
    IMSPIQueryChatWithGuid(v8, a3, v5, v16);
    v13 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(v12, v13);
  }

  v14 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v14;
}

@end