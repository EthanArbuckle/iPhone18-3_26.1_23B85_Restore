@interface IMTransferEncryptionController
+ (id)sharedInstance;
- (void)decryptURL:(id)a3 key:(id)a4 outputFileName:(id)a5 completionBlock:(id)a6;
- (void)encryptURL:(id)a3 completionBlock:(id)a4;
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

- (void)encryptURL:(id)a3 completionBlock:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    if (v5)
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v11 = 138412290;
          v12 = v5;
          _os_log_impl(&dword_254850000, v9, OS_LOG_TYPE_INFO, "Request to encrypt data at url: %@", &v11, 0xCu);
        }
      }

      objc_msgSend_encryptURL_completionBlock_(IMTransferEncryptionHelpers, v8, v5, v7);
    }

    else
    {
      (*(v6 + 2))(v6, 0, 0, 0, 0, 300);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)decryptURL:(id)a3 key:(id)a4 outputFileName:(id)a5 completionBlock:(id)a6
{
  v21 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (v12)
  {
    if (v9)
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v17 = 138412546;
          v18 = v9;
          v19 = 2112;
          v20 = v10;
          _os_log_impl(&dword_254850000, v15, OS_LOG_TYPE_INFO, "Request to decrypt data at url: %@  with key: %@", &v17, 0x16u);
        }
      }

      objc_msgSend_decryptURL_key_outputFileName_completionBlock_(IMTransferEncryptionHelpers, v14, v9, v10, v11, v13);
    }

    else
    {
      (*(v12 + 2))(v12, 0, 0, 0, 301);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end