@interface IMTransferAgentIDSInterface
+ (id)sharedInstance;
- (BOOL)_sendIDSMessage:(id)a3 topic:(id)a4 localPath:(id)a5;
- (IMTransferAgentIDSInterface)init;
- (void)_handleUploadRequest:(id)a3;
- (void)_handleUploadResponse:(id)a3;
- (void)_sendUploadRequest:(id)a3 topic:(id)a4 transferID:(id)a5 sourceAppID:(id)a6 allowReauthorize:(BOOL)a7;
- (void)dealloc;
- (void)decrementTransferCount;
- (void)incrementTransferCount;
- (void)remoteUploadFileRequest:(id)a3 topic:(id)a4 transferID:(id)a5 sourceAppID:(id)a6 completionBlock:(id)a7;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7;
@end

@implementation IMTransferAgentIDSInterface

+ (id)sharedInstance
{
  if (qword_28112D9E8 != -1)
  {
    sub_254867A98();
  }

  v3 = qword_28112D9C0;

  return v3;
}

- (IMTransferAgentIDSInterface)init
{
  v16.receiver = self;
  v16.super_class = IMTransferAgentIDSInterface;
  v2 = [(IMTransferAgentIDSInterface *)&v16 init];
  if (v2)
  {
    IMSetEmbeddedTempDirectory();
    v3 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v4 = NSTemporaryDirectory();
    objc_msgSend_changeCurrentDirectoryPath_(v3, v5, v4);

    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v15 = 0;
        _os_log_impl(&dword_254850000, v6, OS_LOG_TYPE_INFO, "IMTransfer Agent IDS Interface starting", v15, 2u);
      }
    }

    v7 = objc_alloc(MEMORY[0x277D18778]);
    v9 = objc_msgSend_initWithService_(v7, v8, @"com.apple.private.alloy.idstransfers");
    idsService = v2->_idsService;
    v2->_idsService = v9;

    v11 = v2->_idsService;
    v12 = im_primary_queue();
    objc_msgSend_addDelegate_queue_(v11, v13, v2, v12);
  }

  return v2;
}

- (void)dealloc
{
  objc_msgSend_removeDelegate_(self->_idsService, a2, self);
  v3.receiver = self;
  v3.super_class = IMTransferAgentIDSInterface;
  [(IMTransferAgentIDSInterface *)&v3 dealloc];
}

- (void)remoteUploadFileRequest:(id)a3 topic:(id)a4 transferID:(id)a5 sourceAppID:(id)a6 completionBlock:(id)a7
{
  v32 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v28 = 138412546;
      v29 = v12;
      v30 = 2112;
      v31 = v15;
      _os_log_impl(&dword_254850000, v17, OS_LOG_TYPE_INFO, "Received Request to Remote Upload an Attachment at %@ sourceApp %@", &v28, 0x16u);
    }
  }

  im_assert_primary_queue();
  if (!v14)
  {
    v14 = StringGUID();
  }

  if (!self->_uniqueIDToTransferCompletionBlockMap)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    uniqueIDToTransferCompletionBlockMap = self->_uniqueIDToTransferCompletionBlockMap;
    self->_uniqueIDToTransferCompletionBlockMap = Mutable;
  }

  if (!self->_uniqueIDToFilePathMap)
  {
    v20 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    uniqueIDToFilePathMap = self->_uniqueIDToFilePathMap;
    self->_uniqueIDToFilePathMap = v20;
  }

  v22 = self->_uniqueIDToTransferCompletionBlockMap;
  v23 = MEMORY[0x259C1C440](v16);
  objc_msgSend_setObject_forKey_(v22, v24, v23, v14);

  objc_msgSend_setObject_forKey_(self->_uniqueIDToFilePathMap, v25, v12, v14);
  objc_msgSend__sendUploadRequest_topic_transferID_sourceAppID_allowReauthorize_(self, v26, v12, v13, v14, v15, 0);

  v27 = *MEMORY[0x277D85DE8];
}

- (void)incrementTransferCount
{
  v10 = *MEMORY[0x277D85DE8];
  im_assert_primary_queue();
  *&self->_numTransfers = vadd_s32(*&self->_numTransfers, 0x100000001);
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      numTransfers = self->_numTransfers;
      totalTransfers = self->_totalTransfers;
      v7[0] = 67109376;
      v7[1] = numTransfers;
      v8 = 1024;
      v9 = totalTransfers;
      _os_log_impl(&dword_254850000, v3, OS_LOG_TYPE_INFO, "(Incremented) Transfer Count is now %d, total at %d", v7, 0xEu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)decrementTransferCount
{
  v10 = *MEMORY[0x277D85DE8];
  im_assert_primary_queue();
  --self->_numTransfers;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      numTransfers = self->_numTransfers;
      *buf = 67109120;
      v9 = numTransfers;
      _os_log_impl(&dword_254850000, v3, OS_LOG_TYPE_INFO, "(Decremented) Transfer Count is now %d", buf, 8u);
    }
  }

  if (self->_numTransfers <= 0)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254850000, v5, OS_LOG_TYPE_INFO, "We Have No More Transfers Remaining, We will shut down in 1 hour", buf, 2u);
      }
    }

    totalTransfers = self->_totalTransfers;
    im_dispatch_after_primary_queue();
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_sendUploadRequest:(id)a3 topic:(id)a4 transferID:(id)a5 sourceAppID:(id)a6 allowReauthorize:(BOOL)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  im_assert_primary_queue();
  v16 = objc_msgSend_dataWithContentsOfFile_(MEMORY[0x277CBEA90], v15, v11);
  v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18 = v16;
  if (v18)
  {
    CFDictionarySetValue(v17, qword_27F611B38, v18);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_254867AAC();
  }

  v19 = v12;
  if (v19)
  {
    CFDictionarySetValue(v17, qword_27F611B48, v19);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_254867B30();
  }

  v20 = v13;
  if (v20)
  {
    CFDictionarySetValue(v17, qword_27F611B50, v20);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_254867BB4();
  }

  CFDictionarySetValue(v17, qword_27F611B30, &unk_28669F518);
  if (v14)
  {
    CFDictionarySetValue(v17, qword_27F611B58, v14);
  }

  objc_msgSend__sendIDSMessage_topic_localPath_(self, v21, v17, v19, v11);
}

- (void)_handleUploadRequest:(id)a3
{
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_254850000, v5, OS_LOG_TYPE_INFO, "RECEIVED Remote Attachment IDS Message", buf, 2u);
    }
  }

  im_assert_primary_queue();
  objc_msgSend_incrementTransferCount(self, v6, v7);
  v9 = objc_msgSend__dataForKey_(v4, v8, qword_27F611B38);
  v11 = objc_msgSend__stringForKey_(v4, v10, qword_27F611B60);
  v13 = objc_msgSend__stringForKey_(v4, v12, qword_27F611B48);
  v15 = objc_msgSend__stringForKey_(v4, v14, qword_27F611B50);
  v17 = objc_msgSend__stringForKey_(v4, v16, qword_27F611B58);
  v20 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v18, v19);
  v22 = objc_msgSend_im_randomTemporaryFileURLWithFileName_(v20, v21, v11);
  v25 = objc_msgSend_path(v22, v23, v24);

  if (v9)
  {
    objc_msgSend_writeToFile_atomically_(v9, v26, v25, 1);
    v29 = objc_msgSend_sharedInstance(IMTransferAgentController, v27, v28);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_254852018;
    v31[3] = &unk_27978CB58;
    v31[4] = self;
    v32 = v13;
    v33 = v15;
    objc_msgSend_sendFilePath_encrypt_topic_transferID_sourceAppID_userInfo_progressBlock_completionBlock_(v29, v30, v25, 0, v32, v33, v17, 0, 0, v31);
  }
}

- (void)_handleUploadResponse:(id)a3
{
  v4 = a3;
  im_assert_primary_queue();
  v6 = objc_msgSend__stringForKey_(v4, v5, qword_27F611B50);
  v8 = objc_msgSend_objectForKey_(v4, v7, qword_27F611B70);
  v11 = objc_msgSend_BOOLValue(v8, v9, v10);

  v13 = objc_msgSend__stringForKey_(v4, v12, qword_27F611B80);
  v15 = objc_msgSend_objectForKey_(v4, v14, qword_27F611B88);
  v17 = objc_msgSend__stringForKey_(v4, v16, qword_27F611B90);
  v19 = objc_msgSend_objectForKey_(self->_uniqueIDToTransferCompletionBlockMap, v18, v6);
  v21 = objc_msgSend_objectForKey_(self->_uniqueIDToFilePathMap, v20, v6);
  v22 = IMOSLoggingEnabled();
  if (v19)
  {
    if (v22)
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254850000, v25, OS_LOG_TYPE_INFO, " Found completion block for attachment", buf, 2u);
      }
    }

    if (v21)
    {
      v26 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v23, v24);
      objc_msgSend_attributesOfItemAtPath_error_(v26, v27, v21, 0);
      v46 = v19;
      v47 = v6;
      v28 = v21;
      v29 = v17;
      v30 = v15;
      v32 = v31 = v13;

      objc_msgSend_objectForKeyedSubscript_(v32, v33, *MEMORY[0x277CCA1C0]);
      v35 = v34 = v11;
      v38 = objc_msgSend_unsignedIntegerValue(v35, v36, v37);

      v11 = v34;
      v13 = v31;
      v15 = v30;
      v17 = v29;
      v21 = v28;
      v19 = v46;
      v6 = v47;
    }

    else
    {
      v38 = 0;
    }

    (v19)[2](v19, v11, v21, v38, v13, v15, v17, 0, 0);
    objc_msgSend_removeObjectForKey_(self->_uniqueIDToTransferCompletionBlockMap, v40, v6);
    objc_msgSend_removeObjectForKey_(self->_uniqueIDToFilePathMap, v41, v6);
  }

  else if (v22)
  {
    v39 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *v48 = 0;
      _os_log_impl(&dword_254850000, v39, OS_LOG_TYPE_INFO, " No completion block for attachment found", v48, 2u);
    }
  }

  if (!objc_msgSend_count(self->_uniqueIDToTransferCompletionBlockMap, v23, v24))
  {
    uniqueIDToTransferCompletionBlockMap = self->_uniqueIDToTransferCompletionBlockMap;
    self->_uniqueIDToTransferCompletionBlockMap = 0;
  }

  if (!objc_msgSend_count(self->_uniqueIDToFilePathMap, v42, v43))
  {
    uniqueIDToFilePathMap = self->_uniqueIDToFilePathMap;
    self->_uniqueIDToFilePathMap = 0;
  }
}

- (BOOL)_sendIDSMessage:(id)a3 topic:(id)a4 localPath:(id)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v33 = v8;
      _os_log_impl(&dword_254850000, v11, OS_LOG_TYPE_INFO, " SENDING Remote Attachment IDS Message with content %@", buf, 0xCu);
    }
  }

  im_assert_primary_queue();
  v12 = JWEncodeDictionary();
  v15 = objc_msgSend__CUTCopyGzippedData(v12, v13, v14);
  idsService = self->_idsService;
  v18 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], v17, *MEMORY[0x277D187E8]);
  v30 = 0;
  v31 = 0;
  v20 = objc_msgSend_sendData_toDestinations_priority_options_identifier_error_(idsService, v19, v15, v18, 300, 0, &v31, &v30);
  v21 = v31;
  v22 = v30;

  if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = @"NO";
      *buf = 138413058;
      v33 = v21;
      if (v20)
      {
        v24 = @"YES";
      }

      v34 = 2112;
      v35 = v22;
      v36 = 2112;
      v37 = v8;
      v38 = 2112;
      v39 = v24;
      _os_log_impl(&dword_254850000, v23, OS_LOG_TYPE_INFO, "Sending message to local account (identifier %@)  (error %@)  (messageDict %@) success: %@", buf, 0x2Au);
    }
  }

  if (v20 && IMTransferRequestIsForMessages(v9, v10))
  {
    v27 = objc_msgSend_lastPathComponent(v10, v25, v26);
    IMGreenTeaAttachmentTransmitLoggingFormat();
  }

  v28 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7
{
  v40 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v30 = 138413314;
      v31 = v12;
      v32 = 2112;
      v33 = v13;
      v34 = 2112;
      v35 = v14;
      v36 = 2112;
      v37 = v15;
      v38 = 2112;
      v39 = v16;
      _os_log_impl(&dword_254850000, v17, OS_LOG_TYPE_INFO, "incomingData on service %@, account %@ data %@ fromID %@ context %@", &v30, 0x34u);
    }
  }

  im_assert_primary_queue();
  v20 = objc_msgSend__CUTOptionallyDecompressData(v14, v18, v19);
  v21 = JWDecodeDictionary();
  v23 = objc_msgSend_objectForKey_(v21, v22, qword_27F611B30);
  v26 = objc_msgSend_unsignedIntValue(v23, v24, v25);

  if (v26 == 2)
  {
    objc_msgSend__handleUploadResponse_(self, v27, v21);
  }

  else if (v26 == 1)
  {
    objc_msgSend__handleUploadRequest_(self, v27, v21);
  }

  else if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v30 = 67109120;
      LODWORD(v31) = v26;
      _os_log_impl(&dword_254850000, v28, OS_LOG_TYPE_INFO, "Unknown incoming IDS message for remote attachments with command %d, ignoring...", &v30, 8u);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v8 = a6;
  v22 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = @"NO";
      if (v8)
      {
        v16 = @"YES";
      }

      v18 = 138412546;
      v19 = v13;
      v20 = 2112;
      v21 = v16;
      _os_log_impl(&dword_254850000, v15, OS_LOG_TYPE_INFO, "Sent message with identifier %@ success %@", &v18, 0x16u);
    }
  }

  im_assert_primary_queue();

  v17 = *MEMORY[0x277D85DE8];
}

@end