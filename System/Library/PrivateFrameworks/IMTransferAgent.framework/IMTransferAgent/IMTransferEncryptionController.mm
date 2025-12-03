@interface IMTransferEncryptionController
+ (id)sharedInstance;
- (void)decryptURL:(id)l key:(id)key outputFileName:(id)name completionBlock:(id)block;
- (void)encryptURL:(id)l completionBlock:(id)block;
@end

@implementation IMTransferEncryptionController

+ (id)sharedInstance
{
  if (qword_28112DA08 != -1)
  {
    sub_2548680DC();
  }

  v3 = qword_28112D9E0;

  return v3;
}

- (void)encryptURL:(id)l completionBlock:(id)block
{
  v13 = *MEMORY[0x277D85DE8];
  lCopy = l;
  blockCopy = block;
  v7 = blockCopy;
  if (blockCopy)
  {
    if (lCopy)
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v11 = 138412290;
          v12 = lCopy;
          _os_log_impl(&dword_254850000, v9, OS_LOG_TYPE_INFO, "Request to encrypt data at url: %@", &v11, 0xCu);
        }
      }

      objc_msgSend_encryptURL_completionBlock_(IMTransferEncryptionHelpers, v8, lCopy, v7);
    }

    else
    {
      (*(blockCopy + 2))(blockCopy, 0, 0, 0, 0, 300);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)decryptURL:(id)l key:(id)key outputFileName:(id)name completionBlock:(id)block
{
  v21 = *MEMORY[0x277D85DE8];
  lCopy = l;
  keyCopy = key;
  nameCopy = name;
  blockCopy = block;
  v13 = blockCopy;
  if (blockCopy)
  {
    if (lCopy)
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v17 = 138412546;
          v18 = lCopy;
          v19 = 2112;
          v20 = keyCopy;
          _os_log_impl(&dword_254850000, v15, OS_LOG_TYPE_INFO, "Request to decrypt data at url: %@  with key: %@", &v17, 0x16u);
        }
      }

      objc_msgSend_decryptURL_key_outputFileName_completionBlock_(IMTransferEncryptionHelpers, v14, lCopy, keyCopy, nameCopy, v13);
    }

    else
    {
      (*(blockCopy + 2))(blockCopy, 0, 0, 0, 301);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end