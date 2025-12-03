@interface IMDDController
+ (id)allSupportedDDAttributesKeys;
+ (id)sharedInstance;
- (BOOL)_scanAttributedStringWithMessage:(id)message attributedString:(id)string plainText:(id)text;
- (BOOL)_scanMessageUsingScanner:(id)scanner attributedString:(id)string;
- (IMDDController)init;
- (void)_processLinkInAttributedString:(id)string;
- (void)scanMessage:(id)message completionBlock:(id)block;
- (void)scanMessage:(id)message outgoing:(BOOL)outgoing waitUntilDone:(BOOL)done completionBlock:(id)block;
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

- (void)scanMessage:(id)message completionBlock:(id)block
{
  blockCopy = block;
  messageCopy = message;
  v7 = IMIsRunningInMessages();
  objc_msgSend_scanMessage_outgoing_waitUntilDone_completionBlock_(self, v8, messageCopy, 0, v7, blockCopy);
}

- (BOOL)_scanMessageUsingScanner:(id)scanner attributedString:(id)string
{
  scannerCopy = scanner;
  stringCopy = string;
  if (stringCopy)
  {
    v10 = objc_msgSend_text(scannerCopy, v7, v8);
    v13 = objc_msgSend_string(v10, v11, v12);

    if (v13)
    {
      if (objc_msgSend__scanAttributedStringWithMessage_attributedString_plainText_(self, v14, scannerCopy, stringCopy, v13))
      {
        v17 = 1;
LABEL_9:

        goto LABEL_10;
      }

      v18 = *MEMORY[0x1E69A5FB0];
      v19 = objc_msgSend_length(stringCopy, v15, v16);
      if (objc_msgSend_attribute_existsInRange_(stringCopy, v20, v18, 0, v19))
      {
        objc_msgSend__processLinkInAttributedString_(self, v21, stringCopy);
        v24 = objc_msgSend_string(stringCopy, v22, v23);
        v17 = objc_msgSend__scanAttributedStringWithMessage_attributedString_plainText_(self, v25, scannerCopy, stringCopy, v24);

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

- (void)_processLinkInAttributedString:(id)string
{
  stringCopy = string;
  v4 = *MEMORY[0x1E69A5FB0];
  v7 = objc_msgSend_length(stringCopy, v5, v6);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A839A954;
  v10[3] = &unk_1E7812DF8;
  v11 = stringCopy;
  v8 = stringCopy;
  objc_msgSend_enumerateAttribute_inRange_options_usingBlock_(v8, v9, v4, 0, v7, 0, v10);
}

- (BOOL)_scanAttributedStringWithMessage:(id)message attributedString:(id)string plainText:(id)text
{
  v27 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  stringCopy = string;
  textCopy = text;
  v12 = objc_msgSend_guid(messageCopy, v10, v11);
  v15 = objc_msgSend_sender(messageCopy, v13, v14);
  v18 = objc_msgSend_ID(v15, v16, v17);
  v21 = objc_msgSend_time(messageCopy, v19, v20);
  objc_msgSend_isFromMe(messageCopy, v22, v23);
  v24 = IMDDScanAttributedStringWithContext();

  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

- (void)scanMessage:(id)message outgoing:(BOOL)outgoing waitUntilDone:(BOOL)done completionBlock:(id)block
{
  doneCopy = done;
  v26 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  blockCopy = block;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = messageCopy;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Request to scan message: %@", buf, 0xCu);
    }
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1A839ADB4;
  v18[3] = &unk_1E7813F20;
  v13 = messageCopy;
  outgoingCopy = outgoing;
  v19 = v13;
  selfCopy = self;
  v23 = doneCopy;
  v14 = blockCopy;
  v21 = v14;
  v15 = _Block_copy(v18);
  scannerQueue = self->_scannerQueue;
  if (doneCopy)
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