@interface IMDDController
+ (id)allSupportedDDAttributesKeys;
+ (id)sharedInstance;
- (BOOL)_scanAttributedStringWithMessage:(id)a3 attributedString:(id)a4 plainText:(id)a5;
- (BOOL)_scanMessageUsingScanner:(id)a3 attributedString:(id)a4;
- (IMDDController)init;
- (void)_processLinkInAttributedString:(id)a3;
- (void)scanMessage:(id)a3 completionBlock:(id)a4;
- (void)scanMessage:(id)a3 outgoing:(BOOL)a4 waitUntilDone:(BOOL)a5 completionBlock:(id)a6;
@end

@implementation IMDDController

+ (id)sharedInstance
{
  if (qword_1ED767958 != -1)
  {
    sub_1A84E2840();
  }

  v3 = qword_1ED7678F8;

  return v3;
}

- (IMDDController)init
{
  v6.receiver = self;
  v6.super_class = IMDDController;
  v2 = [(IMDDController *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.IMDDScannerQueue", 0);
    scannerQueue = v2->_scannerQueue;
    v2->_scannerQueue = v3;
  }

  return v2;
}

- (void)scanMessage:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v9 = a3;
  v7 = IMIsRunningInMessages();
  objc_msgSend_scanMessage_outgoing_waitUntilDone_completionBlock_(self, v8, v9, 0, v7, v6);
}

- (BOOL)_scanMessageUsingScanner:(id)a3 attributedString:(id)a4
{
  v6 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = objc_msgSend_text(v6, v7, v8);
    v13 = objc_msgSend_string(v10, v11, v12);

    if (v13)
    {
      if (objc_msgSend__scanAttributedStringWithMessage_attributedString_plainText_(self, v14, v6, v9, v13))
      {
        v17 = 1;
LABEL_9:

        goto LABEL_10;
      }

      v18 = *MEMORY[0x1E69A5FB0];
      v19 = objc_msgSend_length(v9, v15, v16);
      if (objc_msgSend_attribute_existsInRange_(v9, v20, v18, 0, v19))
      {
        objc_msgSend__processLinkInAttributedString_(self, v21, v9);
        v24 = objc_msgSend_string(v9, v22, v23);
        v17 = objc_msgSend__scanAttributedStringWithMessage_attributedString_plainText_(self, v25, v6, v9, v24);

        goto LABEL_9;
      }
    }

    v17 = 0;
    goto LABEL_9;
  }

  v17 = 0;
LABEL_10:

  return v17;
}

- (void)_processLinkInAttributedString:(id)a3
{
  v3 = a3;
  v4 = *MEMORY[0x1E69A5FB0];
  v7 = objc_msgSend_length(v3, v5, v6);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A839A954;
  v10[3] = &unk_1E7812DF8;
  v11 = v3;
  v8 = v3;
  objc_msgSend_enumerateAttribute_inRange_options_usingBlock_(v8, v9, v4, 0, v7, 0, v10);
}

- (BOOL)_scanAttributedStringWithMessage:(id)a3 attributedString:(id)a4 plainText:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v12 = objc_msgSend_guid(v7, v10, v11);
  v15 = objc_msgSend_sender(v7, v13, v14);
  v18 = objc_msgSend_ID(v15, v16, v17);
  v21 = objc_msgSend_time(v7, v19, v20);
  objc_msgSend_isFromMe(v7, v22, v23);
  v24 = IMDDScanAttributedStringWithContext();

  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

- (void)scanMessage:(id)a3 outgoing:(BOOL)a4 waitUntilDone:(BOOL)a5 completionBlock:(id)a6
{
  v7 = a5;
  v26 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = v10;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Request to scan message: %@", buf, 0xCu);
    }
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1A839ADB4;
  v18[3] = &unk_1E7813F20;
  v13 = v10;
  v22 = a4;
  v19 = v13;
  v20 = self;
  v23 = v7;
  v14 = v11;
  v21 = v14;
  v15 = _Block_copy(v18);
  scannerQueue = self->_scannerQueue;
  if (v7)
  {
    dispatch_sync(scannerQueue, v15);
  }

  else
  {
    dispatch_async(scannerQueue, v15);
  }

  v17 = *MEMORY[0x1E69E9840];
}

+ (id)allSupportedDDAttributesKeys
{
  if (qword_1EB2E9100 != -1)
  {
    sub_1A84E2854();
  }

  v3 = qword_1EB2E9108;

  return v3;
}

@end