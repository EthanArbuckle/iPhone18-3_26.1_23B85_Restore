@interface IMSnapshotTranscoder
+ (void)generateSnapshotForMessageGUID:(id)d payloadURL:(id)l balloonBundleID:(id)iD senderContext:(id)context completionBlock:(id)block;
@end

@implementation IMSnapshotTranscoder

+ (void)generateSnapshotForMessageGUID:(id)d payloadURL:(id)l balloonBundleID:(id)iD senderContext:(id)context completionBlock:(id)block
{
  v83 = *MEMORY[0x277D85DE8];
  v12 = *MEMORY[0x277D19738];
  v13 = IMBalloonExtensionIDWithSuffix();
  if (objc_msgSend_isEqualToString_(iD, v14, v13, v15, v16, v17, v18))
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v79 = 0x3052000000;
    v80 = sub_25482905C;
    v81 = sub_25482906C;
    v82 = 0;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_254829078;
    block[3] = &unk_27978AC08;
    block[4] = context;
    block[5] = l;
    block[6] = &buf;
    dispatch_sync(MEMORY[0x277D85CD0], block);
    if (objc_msgSend_length(*(*(&buf + 1) + 40), v19, v20, v21, v22, v23, v24))
    {
      v25 = IMPluginSnapshotCachesFileURL();
      PathComponent = objc_msgSend_URLByDeletingLastPathComponent(v25, v26, v27, v28, v29, v30, v31);
      v70 = 0;
      if (PathComponent)
      {
        v39 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v32, v33, v34, v35, v36, v37);
        if (objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v39, v40, PathComponent, 1, 0, &v70, v41))
        {
          v69 = 0;
          v45 = objc_msgSend_writeToURL_options_error_(*(*(&buf + 1) + 40), v42, v25, 0, &v69, v43, v44);
          if (v45)
          {
            v46 = 0;
          }

          else
          {
            if (IMOSLoggingEnabled())
            {
              v68 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
              {
                *v72 = 138412546;
                dCopy4 = d;
                v74 = 2112;
                v75 = v69;
                _os_log_impl(&dword_254811000, v68, OS_LOG_TYPE_INFO, "Failed to write snapshot for message %@ Error: %@", v72, 0x16u);
              }
            }

            v46 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v65, @"__kIMTranscodeErrorDomain", -10, 0, v66, v67);
          }

          goto LABEL_20;
        }
      }

      if (IMOSLoggingEnabled())
      {
        v55 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          *v72 = 138412802;
          dCopy4 = d;
          v74 = 2112;
          v75 = PathComponent;
          v76 = 2112;
          v77 = v70;
          _os_log_impl(&dword_254811000, v55, OS_LOG_TYPE_INFO, "Failed to create snapshot directory for message %@ with url %@ Error: %@", v72, 0x20u);
        }
      }

      v56 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v52, @"__kIMTranscodeErrorDomain", -12, 0, v53, v54);
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v60 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          v61 = *(*(&buf + 1) + 40);
          *v72 = 138412546;
          dCopy4 = d;
          v74 = 2112;
          v75 = v61;
          _os_log_impl(&dword_254811000, v60, OS_LOG_TYPE_INFO, "Failed to generate snapshot for message %@ %@", v72, 0x16u);
        }
      }

      v56 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v57, @"__kIMTranscodeErrorDomain", -9, 0, v58, v59);
    }

    v46 = v56;
    v45 = 0;
LABEL_20:
    if (IMOSLoggingEnabled())
    {
      v62 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
      {
        v63 = *(*(&buf + 1) + 40);
        *v72 = 138412546;
        dCopy4 = d;
        v74 = 2112;
        v75 = v63;
        _os_log_impl(&dword_254811000, v62, OS_LOG_TYPE_INFO, "Generated snapshot for message %@ %@", v72, 0x16u);
      }
    }

    (*(block + 2))(block, v45, v46);
    _Block_object_dispose(&buf, 8);
    goto LABEL_24;
  }

  if (IMOSLoggingEnabled())
  {
    v50 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = iD;
      _os_log_impl(&dword_254811000, v50, OS_LOG_TYPE_INFO, "Transcoder snapshot request for an unsupported plugin bundle: %@", &buf, 0xCu);
    }
  }

  v51 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v47, @"__kIMTranscodeErrorDomain", -1, 0, v48, v49);
  (*(block + 2))(block, 0, v51);
LABEL_24:
  v64 = *MEMORY[0x277D85DE8];
}

@end