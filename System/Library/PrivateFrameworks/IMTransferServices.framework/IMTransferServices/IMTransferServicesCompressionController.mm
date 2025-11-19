@interface IMTransferServicesCompressionController
+ (id)sharedInstance;
- (void)_mapCopier:(id)a3 toBlock:(id)a4;
- (void)_unmapCopier:(id)a3;
- (void)compressFileTransfer:(id)a3 completionBlock:(id)a4;
- (void)fileCopierDidFinish:(id)a3;
- (void)fileCopierDidStart:(id)a3;
@end

@implementation IMTransferServicesCompressionController

+ (id)sharedInstance
{
  if (qword_28141B770 != -1)
  {
    sub_25487ECA8();
  }

  return qword_28141B760;
}

- (void)_mapCopier:(id)a3 toBlock:(id)a4
{
  if (a3 && a4)
  {
    blockMap = self->_blockMap;
    if (!blockMap)
    {
      blockMap = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      self->_blockMap = blockMap;
    }

    v12 = objc_msgSend_copy(a4, a2, a3, a4, v4, v5, v6, v7);
    v20 = objc_msgSend_identifier(a3, v13, v14, v15, v16, v17, v18, v19);

    MEMORY[0x2821F9670](blockMap, sel_setObject_forKey_, v12, v20, v21, v22, v23, v24);
  }
}

- (void)_unmapCopier:(id)a3
{
  if (a3 && objc_msgSend_identifier(a3, a2, a3, v3, v4, v5, v6, v7))
  {
    blockMap = self->_blockMap;
    v18 = objc_msgSend_identifier(a3, v10, v11, v12, v13, v14, v15, v16);
    objc_msgSend_removeObjectForKey_(blockMap, v19, v18, v20, v21, v22, v23, v24);
    if (!objc_msgSend_count(self->_blockMap, v25, v26, v27, v28, v29, v30, v31))
    {

      self->_blockMap = 0;
    }
  }
}

- (void)compressFileTransfer:(id)a3 completionBlock:(id)a4
{
  v58 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    if (a3)
    {
      v55 = 0;
      v11 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], a2, a3, a4, v4, v5, v6, v7);
      v19 = objc_msgSend_path(a3, v12, v13, v14, v15, v16, v17, v18);
      if (objc_msgSend_fileExistsAtPath_isDirectory_(v11, v20, v19, &v55, v21, v22, v23, v24))
      {
        if (v55)
        {
          v25 = objc_alloc(MEMORY[0x277D19248]);
          v33 = objc_msgSend_stringGUID(MEMORY[0x277CCACA8], v26, v27, v28, v29, v30, v31, v32);
          v36 = objc_msgSend_initWithInputURL_outputURL_identifier_operation_delegate_(v25, v34, a3, 0, v33, 0, self, v35);
          objc_msgSend__mapCopier_toBlock_(self, v37, v36, a4, v38, v39, v40, v41);
          if (IMOSLoggingEnabled())
          {
            v49 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
            {
              v56 = 138412290;
              v57 = a3;
              _os_log_impl(&dword_254879000, v49, OS_LOG_TYPE_INFO, "Starting compression for URL: %@", &v56, 0xCu);
            }
          }

          objc_msgSend_start(v36, v42, v43, v44, v45, v46, v47, v48);
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v53 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
            {
              v56 = 138412290;
              v57 = a3;
              _os_log_impl(&dword_254879000, v53, OS_LOG_TYPE_INFO, "URL supplied (%@) is not a directory, marking as not needed", &v56, 0xCu);
            }
          }

          (*(a4 + 2))(a4, a3, a3, 0, 1, 0);
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v52 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
          {
            v56 = 138412290;
            v57 = a3;
            _os_log_impl(&dword_254879000, v52, OS_LOG_TYPE_INFO, "File doesn't exist at source path (%@), failing compression", &v56, 0xCu);
          }
        }

        (*(a4 + 2))(a4, a3, a3, 0, 0, 0);
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v51 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          LOWORD(v56) = 0;
          _os_log_impl(&dword_254879000, v51, OS_LOG_TYPE_INFO, "No transfer URL supplied, failing", &v56, 2u);
        }
      }

      (*(a4 + 2))(a4, 0, 0, 0, 0, 0);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v50 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      LOWORD(v56) = 0;
      _os_log_impl(&dword_254879000, v50, OS_LOG_TYPE_INFO, "No input block for transfer URL, failing", &v56, 2u);
    }
  }

  v54 = *MEMORY[0x277D85DE8];
}

- (void)fileCopierDidStart:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v13 = 138412546;
      v14 = a3;
      v15 = 2112;
      v16 = objc_msgSend_inputURL(a3, v5, v6, v7, v8, v9, v10, v11);
      _os_log_impl(&dword_254879000, v4, OS_LOG_TYPE_INFO, "Copier started: %@  (URL: %@)", &v13, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)fileCopierDidFinish:(id)a3
{
  v69 = *MEMORY[0x277D85DE8];
  v10 = objc_msgSend__blockForCopier_(self, a2, a3, v3, v4, v5, v6, v7);
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v65 = 138412546;
      v66 = a3;
      v67 = 2112;
      v68 = objc_msgSend_inputURL(a3, v12, v13, v14, v15, v16, v17, v18);
      _os_log_impl(&dword_254879000, v11, OS_LOG_TYPE_INFO, "Copier completed: %@  (URL: %@)", &v65, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v27 = objc_msgSend_inputURL(a3, v20, v21, v22, v23, v24, v25, v26);
      v65 = 138412290;
      v66 = v27;
      _os_log_impl(&dword_254879000, v19, OS_LOG_TYPE_INFO, "    Input URL: %@", &v65, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v36 = objc_msgSend_outputURL(a3, v29, v30, v31, v32, v33, v34, v35);
      v65 = 138412290;
      v66 = v36;
      _os_log_impl(&dword_254879000, v28, OS_LOG_TYPE_INFO, "   Output URL: %@", &v65, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v44 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v45 = objc_msgSend_didErrorOccur(a3, v37, v38, v39, v40, v41, v42, v43);
      v46 = @"YES";
      if (v45)
      {
        v46 = @"NO";
      }

      v65 = 138412290;
      v66 = v46;
      _os_log_impl(&dword_254879000, v44, OS_LOG_TYPE_INFO, "      Success: %@", &v65, 0xCu);
    }
  }

  if (v10)
  {
    v47 = objc_msgSend_inputURL(a3, v37, v38, v39, v40, v41, v42, v43);
    v55 = objc_msgSend_outputURL(a3, v48, v49, v50, v51, v52, v53, v54);
    v63 = objc_msgSend_didErrorOccur(a3, v56, v57, v58, v59, v60, v61, v62);
    (*(v10 + 16))(v10, v47, v55, 0, v63 ^ 1u, 1);
  }

  objc_msgSend__unmapCopier_(self, v37, a3, v39, v40, v41, v42, v43);
  v64 = *MEMORY[0x277D85DE8];
}

@end