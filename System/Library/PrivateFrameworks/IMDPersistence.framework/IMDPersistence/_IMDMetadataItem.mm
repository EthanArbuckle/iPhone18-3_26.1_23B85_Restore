@interface _IMDMetadataItem
- (BOOL)markWithSender:(id)a3 recipients:(id)a4 isIncoming:(BOOL)a5;
- (_IMDMetadataItem)initWithFilePath:(id)a3;
@end

@implementation _IMDMetadataItem

- (_IMDMetadataItem)initWithFilePath:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _IMDMetadataItem;
  v6 = [(_IMDMetadataItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_filePath, a3);
  }

  return v7;
}

- (BOOL)markWithSender:(id)a3 recipients:(id)a4 isIncoming:(BOOL)a5
{
  v5 = a5;
  v51 = *MEMORY[0x1E69E9840];
  v44 = a3;
  v45 = a4;
  v10 = objc_msgSend__stripFZIDPrefix(v44, v8, v9);
  v13 = _IMDCoreSpotlightCNContactForAddress(v10);
  if (!v13 || (objc_msgSend_sharedInstance(IMDContactCache, v11, v12), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend_fullNameForContact_(v14, v15, v13), v16 = objc_claimAutoreleasedReturnValue(), v14, !v16))
  {
    v16 = v10;
  }

  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = sub_1B7BAAFF4;
  v46[3] = &unk_1E7CBBF70;
  v19 = v17;
  v47 = v19;
  v20 = v18;
  v48 = v20;
  objc_msgSend_enumerateObjectsUsingBlock_(v45, v21, v46);
  if (v5)
  {
    if (objc_msgSend_count(v19, v22, v23))
    {
      v43 = objc_msgSend_objectAtIndex_(v19, v24, 0);
    }

    else
    {
      v43 = 0;
    }

    if (objc_msgSend_count(v20, v24, v25))
    {
      v32 = objc_msgSend_objectAtIndex_(v20, v31, 0);
    }

    else
    {
      v32 = 0;
    }

    v33 = objc_msgSend_arrayWithObject_(MEMORY[0x1E695DEC8], v31, v16);
    v35 = objc_msgSend_arrayWithObject_(MEMORY[0x1E695DEC8], v34, v10);
    v26 = objc_msgSend__markAsReceivedWithSenderName_senderHandle_recipientNames_recipientHandles_(self, v36, v43, v32, v33, v35);
    if ((v26 & 1) == 0 && IMOSLoggingEnabled())
    {
      log = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        v39 = objc_msgSend_filePath(self, v37, v38);
        *buf = 138412290;
        v50 = v39;
        _os_log_impl(&dword_1B7AD5000, log, OS_LOG_TYPE_INFO, "_MDItemMarkAsReceived failed on %@", buf, 0xCu);
      }
    }
  }

  else if (objc_msgSend__markAsSentWithSenderName_senderHandle_recipientNames_recipientHandles_(self, v22, v16, v10, v19, v20))
  {
    v26 = 1;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v30 = objc_msgSend_filePath(self, v28, v29);
        *buf = 138412290;
        v50 = v30;
        _os_log_impl(&dword_1B7AD5000, v27, OS_LOG_TYPE_INFO, "_MDItemMarkAsSent failed on %@", buf, 0xCu);
      }
    }

    v26 = 0;
  }

  v40 = *MEMORY[0x1E69E9840];
  return v26;
}

@end