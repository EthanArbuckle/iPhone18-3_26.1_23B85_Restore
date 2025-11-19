@interface IMTransferAgentController
+ (id)sharedInstance;
- (BOOL)_isAllowlistedURL:(id)a3;
- (BOOL)_shouldRetryUploadGivenMMCSError:(id)a3 retryAttemptCount:(unint64_t)a4;
- (void)_receiveFileTransfer:(id)a3 topic:(id)a4 path:(id)a5 requestURLString:(id)a6 ownerID:(id)a7 signature:(id)a8 allowReauthorize:(BOOL)a9 fileSize:(unint64_t)a10 sourceAppID:(id)a11 progressBlock:(id)a12 completionBlock:(id)a13;
- (void)_sendFilePath:(id)a3 topic:(id)a4 transferID:(id)a5 sourceAppID:(id)a6 retryAttemptCount:(unint64_t)a7 userInfo:(id)a8 progressBlock:(id)a9 completionBlock:(id)a10;
- (void)cancelSendTransferID:(id)a3;
- (void)dealloc;
- (void)ensureSafeAttachment:(id)a3 topic:(id)a4 withCompletionBlock:(id)a5;
- (void)receiveFileTransfer:(id)a3 topic:(id)a4 path:(id)a5 requestURLString:(id)a6 ownerID:(id)a7 signature:(id)a8 fileSize:(unint64_t)a9 decryptionKey:(id)a10 sourceAppID:(id)a11 progressBlock:(id)a12 completionBlock:(id)a13;
- (void)sendFilePath:(id)a3 encrypt:(BOOL)a4 topic:(id)a5 transferID:(id)a6 sourceAppID:(id)a7 userInfo:(id)a8 progressBlock:(id)a9 completionBlock:(id)a10;
- (void)warm;
@end

@implementation IMTransferAgentController

+ (id)sharedInstance
{
  if (qword_28112D9F0 != -1)
  {
    sub_2548680A0();
  }

  v3 = qword_28112D9C8;

  return v3;
}

- (void)dealloc
{
  objc_msgSend_setController_(self, a2, 0);
  v3.receiver = self;
  v3.super_class = IMTransferAgentController;
  [(IMTransferAgentController *)&v3 dealloc];
}

- (BOOL)_shouldRetryUploadGivenMMCSError:(id)a3 retryAttemptCount:(unint64_t)a4
{
  v5 = a3;
  im_assert_primary_queue();
  if (!v5)
  {
    goto LABEL_10;
  }

  v8 = objc_msgSend_domain(v5, v6, v7);
  if ((objc_msgSend_isEqualToString_(v8, v9, *MEMORY[0x277D25460]) & 1) == 0)
  {

    goto LABEL_10;
  }

  v12 = objc_msgSend_code(v5, v10, v11);

  if (v12 != 4)
  {
LABEL_10:
    v14 = 1;
    goto LABEL_11;
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&dword_254850000, v13, OS_LOG_TYPE_INFO, "We will not try to re-upload as the transfer was explicitly cancelled", v17, 2u);
    }
  }

  v14 = 0;
LABEL_11:
  if (a4 < 3)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)_sendFilePath:(id)a3 topic:(id)a4 transferID:(id)a5 sourceAppID:(id)a6 retryAttemptCount:(unint64_t)a7 userInfo:(id)a8 progressBlock:(id)a9 completionBlock:(id)a10
{
  v127 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v90 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v19 = a9;
  v88 = a10;
  im_assert_primary_queue();
  if (!self->_controller)
  {
    v21 = objc_alloc(MEMORY[0x277D25680]);
    v22 = im_primary_queue();
    v24 = objc_msgSend_initWithQueue_(v21, v23, v22);
    controller = self->_controller;
    self->_controller = v24;
  }

  if (!self->_networkMonitor)
  {
    v26 = objc_msgSend_createNetworkMonitorWithRemoteHost_delegate_allowsUltraConstrainedNetwork_(MEMORY[0x277D1AAC8], v20, 0, 0, 1);
    networkMonitor = self->_networkMonitor;
    self->_networkMonitor = v26;
  }

  v28 = objc_alloc_init(MEMORY[0x277D25690]);
  val = IMSingleObjectArray();
  v31 = objc_msgSend_stringGUID(MEMORY[0x277CCACA8], v29, v30);
  objc_msgSend_setGuid_(v28, v32, v31);

  v35 = objc_msgSend_stringByResolvingAndStandardizingPath(v15, v33, v34);
  objc_msgSend_setLocalPath_(v28, v36, v35);

  objc_msgSend_setEncryptionBehavior_(v28, v37, 1);
  v119[0] = MEMORY[0x277D85DD0];
  v119[1] = 3221225472;
  v119[2] = sub_254854734;
  v119[3] = &unk_27978CB88;
  v38 = v16;
  v120 = v38;
  v39 = v19;
  v121 = v39;
  updated = objc_msgSend_setProgressUpdateBlock_(v28, v40, v119);
  v43 = IMOptOutOfOptimizedMadridAttachmentUploadPath(updated, v42);
  if (v43 && IMOSLoggingEnabled())
  {
    v44 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v47 = objc_msgSend_guid(v28, v45, v46);
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v47;
      _os_log_impl(&dword_254850000, v44, OS_LOG_TYPE_INFO, "Opting upload with GUID %@ out of optimized AuthPut flow.", &buf, 0xCu);
    }
  }

  objc_initWeak(&location, val);
  v109[0] = MEMORY[0x277D85DD0];
  v109[1] = 3221225472;
  v109[2] = sub_254854864;
  v109[3] = &unk_27978CBD8;
  objc_copyWeak(v117, &location);
  v109[4] = self;
  v117[1] = a7;
  v93 = v38;
  v110 = v93;
  v86 = v15;
  v111 = v86;
  v48 = v90;
  v112 = v48;
  v91 = v17;
  v113 = v91;
  v49 = v18;
  v114 = v49;
  v50 = v39;
  v115 = v50;
  v51 = v88;
  v116 = v51;
  objc_msgSend_setCompletionBlock_(v28, v52, v109);
  v89 = v51;
  v85 = v50;
  v53 = MEMORY[0x277CCACA8];
  v56 = objc_msgSend_guid(v28, v54, v55);
  v58 = objc_msgSend_stringWithFormat_(v53, v57, @"Upload-transfer-%@-mmcs-registration", v56);

  v59 = MEMORY[0x277CCACA8];
  v62 = objc_msgSend_guid(v28, v60, v61);
  v64 = objc_msgSend_stringWithFormat_(v59, v63, @"Upload-transfer-%@-preauth", v62);

  v65 = MEMORY[0x277CCACA8];
  v68 = objc_msgSend_guid(v28, v66, v67);
  v70 = objc_msgSend_stringWithFormat_(v65, v69, @"Upload-transfer-%@-mmcs-upload", v68);

  *&buf = 0;
  *(&buf + 1) = &buf;
  v123 = 0x3032000000;
  v124 = sub_254854F24;
  v125 = sub_254854F34;
  v126 = objc_alloc_init(MEMORY[0x277D192C0]);
  objc_msgSend_startTimingForKey_(*(*(&buf + 1) + 40), v71, v58);
  v72 = v43 ^ 1u;
  v73 = self->_controller;
  v95[0] = MEMORY[0x277D85DD0];
  v95[1] = 3221225472;
  v95[2] = sub_254854F3C;
  v95[3] = &unk_27978CC50;
  v74 = v28;
  v96 = v74;
  p_buf = &buf;
  v75 = v58;
  v97 = v75;
  v108 = v72;
  v84 = v48;
  v98 = v84;
  v99 = self;
  v76 = v49;
  v100 = v76;
  v77 = v64;
  v101 = v77;
  v87 = v86;
  v102 = v87;
  v78 = v70;
  v103 = v78;
  v79 = val;
  v104 = v79;
  v80 = v93;
  v105 = v80;
  v81 = v91;
  v106 = v81;
  objc_msgSend_registerFilesForUpload_withPreauthentication_completionBlock_(v73, v82, v79, v72, v95);

  _Block_object_dispose(&buf, 8);
  objc_destroyWeak(v117);
  objc_destroyWeak(&location);

  v83 = *MEMORY[0x277D85DE8];
}

- (void)warm
{
  im_assert_primary_queue();
  if (!self->_controller)
  {
    v4 = objc_alloc(MEMORY[0x277D25680]);
    v5 = im_primary_queue();
    v7 = objc_msgSend_initWithQueue_(v4, v6, v5);
    controller = self->_controller;
    self->_controller = v7;
  }

  if (!self->_networkMonitor)
  {
    v9 = objc_msgSend_createNetworkMonitorWithRemoteHost_delegate_allowsUltraConstrainedNetwork_(MEMORY[0x277D1AAC8], v3, 0, 0, 1);
    networkMonitor = self->_networkMonitor;
    self->_networkMonitor = v9;
  }

  objc_msgSend__isAllowlistedURL_(self, v3, 0);
  v12 = MEMORY[0x277D25680];

  MEMORY[0x2821F9670](v12, sel_preMMCSWarm, v11);
}

- (void)sendFilePath:(id)a3 encrypt:(BOOL)a4 topic:(id)a5 transferID:(id)a6 sourceAppID:(id)a7 userInfo:(id)a8 progressBlock:(id)a9 completionBlock:(id)a10
{
  v14 = a4;
  v72 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a5;
  v52 = a6;
  v53 = a7;
  v54 = a8;
  v18 = a9;
  v19 = a10;
  im_assert_primary_queue();
  if (v16)
  {
    v22 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v20, v21);
    v24 = objc_msgSend_attributesOfItemAtPath_error_(v22, v23, v16, 0);

    v26 = objc_msgSend_objectForKeyedSubscript_(v24, v25, *MEMORY[0x277CCA1C0]);
    v29 = objc_msgSend_unsignedIntegerValue(v26, v27, v28);
  }

  else
  {
    v29 = 0;
  }

  v30 = objc_msgSend_sharedInstance(IMTransferAgentIDSInterface, v20, v21);
  v33 = objc_msgSend_localCompanionDevice(v30, v31, v32);

  if (IMOSLoggingEnabled())
  {
    v35 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v69 = v33;
      v70 = 2048;
      v71 = v29;
      _os_log_impl(&dword_254850000, v35, OS_LOG_TYPE_INFO, "local device: %@ file size: %lu", buf, 0x16u);
    }
  }

  if (objc_msgSend_isEqualToString_(v17, v34, @"com.apple.private.alloy.lightrose"))
  {
    v36 = 0x80000000;
  }

  else
  {
    v36 = 104857600;
  }

  if (v29 <= v36)
  {
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = sub_254857D2C;
    v57[3] = &unk_27978CCA0;
    v64 = v19;
    v67 = v14;
    v58 = v33;
    v66 = v29;
    v59 = v17;
    v60 = v52;
    v61 = v53;
    v62 = self;
    v63 = v54;
    v65 = v18;
    v40 = MEMORY[0x259C1C440](v57);
    if (IMOSLoggingEnabled())
    {
      v41 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254850000, v41, OS_LOG_TYPE_INFO, " => File passes file size restrictions", buf, 2u);
      }
    }

    v42 = IMOSLoggingEnabled();
    if (v14)
    {
      if (v42)
      {
        v45 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254850000, v45, OS_LOG_TYPE_INFO, "Encrypting file", buf, 2u);
        }
      }

      v46 = objc_msgSend_sharedInstance(IMTransferEncryptionController, v43, v44);
      v48 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v47, v16);
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = sub_2548580E4;
      v55[3] = &unk_27978CCC8;
      v56 = v40;
      objc_msgSend_encryptURL_completionBlock_(v46, v49, v48, v55);
    }

    else
    {
      if (v42)
      {
        v50 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254850000, v50, OS_LOG_TYPE_INFO, "Not encrypting file", buf, 2u);
        }
      }

      (v40)[2](v40, v16, 0);
    }

    v39 = v64;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v69 = v36;
        _os_log_impl(&dword_254850000, v38, OS_LOG_TYPE_INFO, "  ** File is too large - failing, over max size of: %lu", buf, 0xCu);
      }
    }

    v39 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v37, @"IMTransferServicesErrorDomain", -6, 0);
    (*(v19 + 2))(v19, 0, v16, v29, 0, 0, 0, 0, v39, 0, v52, v53, v54);
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (void)cancelSendTransferID:(id)a3
{
  v5 = a3;
  im_assert_primary_queue();
  objc_msgSend_cancelPutRequestID_(self->_controller, v4, v5);
}

- (BOOL)_isAllowlistedURL:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  im_assert_primary_queue();
  v6 = objc_msgSend_sharedInstanceForBagType_(MEMORY[0x277D18A10], v5, 1);
  v8 = objc_msgSend_objectForKey_(v6, v7, @"mmcs-whitelist");

  if (objc_msgSend_count(v8, v9, v10))
  {
    v13 = v8;
  }

  else
  {
    v13 = objc_msgSend__defaultMMCSAllowlist(self, v11, v12);
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254850000, v14, OS_LOG_TYPE_INFO, "Server bag does not have allowlisted urls. Resorting to defaults", buf, 2u);
      }
    }
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v33 = v4;
      v34 = 2112;
      v35 = v13;
      _os_log_impl(&dword_254850000, v15, OS_LOG_TYPE_INFO, "Checking URL %@ with domains %@", buf, 0x16u);
    }
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v16 = v13;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v27, v31, 16);
  if (v19)
  {
    v20 = *v28;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(v16);
        }

        if (objc_msgSend___im_conformsToDomain_domainExtension_(v4, v18, *(*(&v27 + 1) + 8 * i), @"com", v27))
        {
          if (IMOSLoggingEnabled())
          {
            v24 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v33 = v4;
              _os_log_impl(&dword_254850000, v24, OS_LOG_TYPE_INFO, "URL is allowlisted %@", buf, 0xCu);
            }
          }

          v23 = 1;
          goto LABEL_29;
        }
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v27, v31, 16);
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v33 = v4;
      _os_log_impl(&dword_254850000, v22, OS_LOG_TYPE_INFO, "MMCS: Invalid URL %@", buf, 0xCu);
    }
  }

  v23 = 0;
LABEL_29:

  v25 = *MEMORY[0x277D85DE8];
  return v23;
}

- (void)_receiveFileTransfer:(id)a3 topic:(id)a4 path:(id)a5 requestURLString:(id)a6 ownerID:(id)a7 signature:(id)a8 allowReauthorize:(BOOL)a9 fileSize:(unint64_t)a10 sourceAppID:(id)a11 progressBlock:(id)a12 completionBlock:(id)a13
{
  v146 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v91 = a4;
  v96 = a5;
  v98 = a6;
  v92 = a7;
  v95 = a8;
  v93 = a11;
  v94 = a12;
  v97 = a13;
  im_assert_primary_queue();
  if (!self->_controller)
  {
    v21 = objc_alloc(MEMORY[0x277D25680]);
    v22 = im_primary_queue();
    v24 = objc_msgSend_initWithQueue_(v21, v23, v22);
    controller = self->_controller;
    self->_controller = v24;
  }

  if (!self->_networkMonitor)
  {
    v26 = objc_msgSend_createNetworkMonitorWithRemoteHost_delegate_allowsUltraConstrainedNetwork_(MEMORY[0x277D1AAC8], v20, 0, 0, 1);
    networkMonitor = self->_networkMonitor;
    self->_networkMonitor = v26;
  }

  v28 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v20, v98);
  isAllowlistedURL = objc_msgSend__isAllowlistedURL_(self, v29, v28);

  if (isAllowlistedURL)
  {
    v31 = objc_alloc_init(MEMORY[0x277D25688]);
    objc_initWeak(&location, v31);
    v32 = IMSingleObjectArray();
    *&buf = 0;
    *(&buf + 1) = &buf;
    v142 = 0x3032000000;
    v143 = sub_254854F24;
    v144 = sub_254854F34;
    v34 = v32;
    v145 = v34;
    if (v98)
    {
      v35 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v33, v98);
    }

    else
    {
      v35 = 0;
    }

    objc_msgSend_setSignature_(v31, v33, v95);
    objc_msgSend_setGuid_(v31, v39, v19);
    v42 = objc_msgSend_stringByResolvingAndStandardizingPath(v96, v40, v41);
    objc_msgSend_setLocalPath_(v31, v43, v42);

    objc_msgSend_setRequestURL_(v31, v44, v35);
    objc_msgSend_setProtocolFileSize_(v31, v45, a10);
    v132[0] = MEMORY[0x277D85DD0];
    v132[1] = 3221225472;
    v132[2] = sub_254858F48;
    v132[3] = &unk_27978CCF0;
    v46 = v19;
    v133 = v46;
    v47 = v94;
    v134 = v47;
    objc_msgSend_setProgressUpdateBlock_(v31, v48, v132);
    if (IMOSLoggingEnabled())
    {
      v49 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        LODWORD(v136) = 138412290;
        *(&v136 + 4) = v31;
        _os_log_impl(&dword_254850000, v49, OS_LOG_TYPE_INFO, "Created get file request: %@", &v136, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v50 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        v53 = objc_msgSend_sharedInstance(MEMORY[0x277D192E8], v51, v52);
        v55 = objc_msgSend_linkQualityValueForInterfaceType_(v53, v54, 3);
        LODWORD(v136) = 67109120;
        DWORD1(v136) = v55;
        _os_log_impl(&dword_254850000, v50, OS_LOG_TYPE_INFO, "  Cell Link Quality: %d", &v136, 8u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v56 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        v59 = objc_msgSend_sharedInstance(MEMORY[0x277D192E8], v57, v58);
        v61 = objc_msgSend_linkQualityValueForInterfaceType_(v59, v60, 2);
        LODWORD(v136) = 67109120;
        DWORD1(v136) = v61;
        _os_log_impl(&dword_254850000, v56, OS_LOG_TYPE_INFO, "  WiFi Link Quality: %d", &v136, 8u);
      }
    }

    v130[0] = 0;
    v130[1] = v130;
    v130[2] = 0x2020000000;
    v131 = 0;
    v115[0] = MEMORY[0x277D85DD0];
    v115[1] = 3221225472;
    v115[2] = sub_254859078;
    v115[3] = &unk_27978CD90;
    objc_copyWeak(v128, &location);
    v89 = v35;
    v90 = v34;
    v87 = v19;
    v126 = v130;
    v129 = a9;
    v62 = v46;
    v116 = v62;
    v117 = self;
    v63 = v91;
    v118 = v63;
    v64 = v96;
    v119 = v64;
    v65 = v98;
    v120 = v65;
    v66 = v92;
    v121 = v66;
    v67 = v95;
    v122 = v67;
    v128[1] = a10;
    v88 = v93;
    v123 = v88;
    v124 = v47;
    v125 = v97;
    p_buf = &buf;
    objc_msgSend_setCompletionBlock_(v31, v68, v115);
    v86 = v64;
    v70 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v69, @"download-transfer-%@-mmcs-registration", v62);
    v85 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v71, @"download-transfer-%@-preauth", v62);
    v73 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v72, @"download-transfer-%@-mmcs-upload", v62);
    v74 = v65;
    *&v136 = 0;
    *(&v136 + 1) = &v136;
    v137 = 0x3032000000;
    v138 = sub_254854F24;
    v139 = sub_254854F34;
    v75 = v73;
    v140 = objc_alloc_init(MEMORY[0x277D192C0]);
    objc_msgSend_startTimingForKey_(*(*(&v136 + 1) + 40), v76, v70);
    v77 = self->_controller;
    v99[0] = MEMORY[0x277D85DD0];
    v99[1] = 3221225472;
    v99[2] = sub_254859B40;
    v99[3] = &unk_27978CE08;
    v114 = &v136;
    v78 = v70;
    v100 = v78;
    v101 = v63;
    v102 = v66;
    v103 = v67;
    v104 = v62;
    v105 = self;
    v79 = v89;
    v106 = v79;
    v80 = v85;
    v107 = v80;
    v108 = v74;
    v38 = v31;
    v109 = v38;
    v110 = v86;
    v81 = v75;
    v111 = v81;
    v82 = v90;
    v112 = v82;
    v113 = v88;
    objc_msgSend_registerFilesForDownload_completionBlock_(v77, v83, v82, v99);

    v19 = v87;
    _Block_object_dispose(&v136, 8);

    objc_destroyWeak(v128);
    _Block_object_dispose(v130, 8);

    _Block_object_dispose(&buf, 8);
    objc_destroyWeak(&location);
    goto LABEL_28;
  }

  if (IMOSLoggingEnabled())
  {
    v37 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v98;
      _os_log_impl(&dword_254850000, v37, OS_LOG_TYPE_INFO, "MMCS failing transfer invalid url %@", &buf, 0xCu);
    }
  }

  if (v97)
  {
    v38 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v36, @"IMTransferAgentErrorDomain", 10, 0);
    (*(v97 + 2))(v97, v19, v96, 0, v38, @"Invalid url");
LABEL_28:
  }

  v84 = *MEMORY[0x277D85DE8];
}

- (void)receiveFileTransfer:(id)a3 topic:(id)a4 path:(id)a5 requestURLString:(id)a6 ownerID:(id)a7 signature:(id)a8 fileSize:(unint64_t)a9 decryptionKey:(id)a10 sourceAppID:(id)a11 progressBlock:(id)a12 completionBlock:(id)a13
{
  v52 = a3;
  v53 = a4;
  v54 = a5;
  v51 = a6;
  v19 = a7;
  v50 = a8;
  v20 = a10;
  v21 = a11;
  v22 = a12;
  v23 = a13;
  im_assert_primary_queue();
  v49 = v22;
  if (IMGetCachedDomainBoolForKey())
  {
    v26 = v20;
    v28 = v51;
    v27 = v52;
    v29 = v50;
    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254850000, v30, OS_LOG_TYPE_INFO, "************* Failed attachment download is on ***********************", buf, 2u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v32 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254850000, v32, OS_LOG_TYPE_INFO, "************* Failed attachment download is on ***********************", buf, 2u);
      }
    }

    v33 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v31, @"com.apple.private.IMTransferAgentForcedFailure", 0, 0);
    (*(v23 + 2))(v23, v52, v54, 0, v33, 0);
    v34 = v53;
    v35 = v49;
  }

  else
  {
    v38 = v20;
    v48 = v19;
    if (objc_msgSend_length(v20, v24, v25))
    {
      v39 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v36, v37);
      v40 = v54;
      v33 = objc_msgSend__randomSimilarFilePathAsPath_(v39, v41, v54);
    }

    else
    {
      v40 = v54;
      v33 = v54;
    }

    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = sub_25485C060;
    v60[3] = &unk_27978CE58;
    v60[4] = self;
    v42 = v53;
    v61 = v42;
    v62 = v23;
    v43 = MEMORY[0x259C1C440](v60);
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = sub_25485C30C;
    v55[3] = &unk_27978CEA8;
    v56 = v38;
    v57 = v40;
    v59 = v43;
    v26 = v38;
    v27 = v52;
    v58 = v52;
    v44 = v43;
    v35 = v49;
    v47 = 1;
    v45 = v42;
    v29 = v50;
    v28 = v51;
    objc_msgSend__receiveFileTransfer_topic_path_requestURLString_ownerID_signature_allowReauthorize_fileSize_sourceAppID_progressBlock_completionBlock_(self, v46, v58, v45, v33, v51, v48, v50, v47, a9, v21, v49, v55);

    v19 = v48;
    v34 = v53;
  }
}

- (void)ensureSafeAttachment:(id)a3 topic:(id)a4 withCompletionBlock:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  im_assert_primary_queue();
  if (objc_msgSend_deviceIsLockedDown(MEMORY[0x277D1A9A0], v10, v11) && (objc_msgSend_path(v7, v12, v13), v14 = objc_claimAutoreleasedReturnValue(), v15 = IMTransferRequestIsForMessages(v8, v14), v14, v15))
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v31 = v7;
        _os_log_impl(&dword_254850000, v16, OS_LOG_TYPE_INFO, "Lockdown mode enabled, generating safe render for attachment: %@", buf, 0xCu);
      }
    }

    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = sub_25485C94C;
    v27 = &unk_27978CED0;
    v17 = v7;
    v28 = v17;
    v29 = v9;
    v18 = MEMORY[0x259C1C440](&v24);
    v21 = objc_msgSend_sharedInstance(MEMORY[0x277D1ADE0], v19, v20, v24, v25, v26, v27);
    objc_msgSend_generateSafeRender_completionBlock_(v21, v22, v17, v18);
  }

  else
  {
    (*(v9 + 2))(v9, 1, v7, 0);
  }

  v23 = *MEMORY[0x277D85DE8];
}

@end