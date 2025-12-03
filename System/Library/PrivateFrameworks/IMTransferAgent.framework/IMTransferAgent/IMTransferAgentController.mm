@interface IMTransferAgentController
+ (id)sharedInstance;
- (BOOL)_isAllowlistedURL:(id)l;
- (BOOL)_shouldRetryUploadGivenMMCSError:(id)error retryAttemptCount:(unint64_t)count;
- (void)_receiveFileTransfer:(id)transfer topic:(id)topic path:(id)path requestURLString:(id)string ownerID:(id)d signature:(id)signature allowReauthorize:(BOOL)reauthorize fileSize:(unint64_t)self0 sourceAppID:(id)self1 progressBlock:(id)self2 completionBlock:(id)self3;
- (void)_sendFilePath:(id)path topic:(id)topic transferID:(id)d sourceAppID:(id)iD retryAttemptCount:(unint64_t)count userInfo:(id)info progressBlock:(id)block completionBlock:(id)self0;
- (void)cancelSendTransferID:(id)d;
- (void)dealloc;
- (void)ensureSafeAttachment:(id)attachment topic:(id)topic withCompletionBlock:(id)block;
- (void)receiveFileTransfer:(id)transfer topic:(id)topic path:(id)path requestURLString:(id)string ownerID:(id)d signature:(id)signature fileSize:(unint64_t)size decryptionKey:(id)self0 sourceAppID:(id)self1 progressBlock:(id)self2 completionBlock:(id)self3;
- (void)sendFilePath:(id)path encrypt:(BOOL)encrypt topic:(id)topic transferID:(id)d sourceAppID:(id)iD userInfo:(id)info progressBlock:(id)block completionBlock:(id)self0;
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

- (BOOL)_shouldRetryUploadGivenMMCSError:(id)error retryAttemptCount:(unint64_t)count
{
  errorCopy = error;
  im_assert_primary_queue();
  if (!errorCopy)
  {
    goto LABEL_10;
  }

  v8 = objc_msgSend_domain(errorCopy, v6, v7);
  if ((objc_msgSend_isEqualToString_(v8, v9, *MEMORY[0x277D25460]) & 1) == 0)
  {

    goto LABEL_10;
  }

  v12 = objc_msgSend_code(errorCopy, v10, v11);

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
  if (count < 3)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)_sendFilePath:(id)path topic:(id)topic transferID:(id)d sourceAppID:(id)iD retryAttemptCount:(unint64_t)count userInfo:(id)info progressBlock:(id)block completionBlock:(id)self0
{
  v127 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  topicCopy = topic;
  dCopy = d;
  iDCopy = iD;
  infoCopy = info;
  blockCopy = block;
  completionBlockCopy = completionBlock;
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

  v35 = objc_msgSend_stringByResolvingAndStandardizingPath(pathCopy, v33, v34);
  objc_msgSend_setLocalPath_(v28, v36, v35);

  objc_msgSend_setEncryptionBehavior_(v28, v37, 1);
  v119[0] = MEMORY[0x277D85DD0];
  v119[1] = 3221225472;
  v119[2] = sub_254854734;
  v119[3] = &unk_27978CB88;
  v38 = dCopy;
  v120 = v38;
  v39 = blockCopy;
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
  v117[1] = count;
  v93 = v38;
  v110 = v93;
  v86 = pathCopy;
  v111 = v86;
  v48 = topicCopy;
  v112 = v48;
  v91 = iDCopy;
  v113 = v91;
  v49 = infoCopy;
  v114 = v49;
  v50 = v39;
  v115 = v50;
  v51 = completionBlockCopy;
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
  selfCopy = self;
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

- (void)sendFilePath:(id)path encrypt:(BOOL)encrypt topic:(id)topic transferID:(id)d sourceAppID:(id)iD userInfo:(id)info progressBlock:(id)block completionBlock:(id)self0
{
  encryptCopy = encrypt;
  v72 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  topicCopy = topic;
  dCopy = d;
  iDCopy = iD;
  infoCopy = info;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  im_assert_primary_queue();
  if (pathCopy)
  {
    v22 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v20, v21);
    v24 = objc_msgSend_attributesOfItemAtPath_error_(v22, v23, pathCopy, 0);

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

  if (objc_msgSend_isEqualToString_(topicCopy, v34, @"com.apple.private.alloy.lightrose"))
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
    v64 = completionBlockCopy;
    v67 = encryptCopy;
    v58 = v33;
    v66 = v29;
    v59 = topicCopy;
    v60 = dCopy;
    v61 = iDCopy;
    selfCopy = self;
    v63 = infoCopy;
    v65 = blockCopy;
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
    if (encryptCopy)
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
      v48 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v47, pathCopy);
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

      (v40)[2](v40, pathCopy, 0);
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
    (*(completionBlockCopy + 2))(completionBlockCopy, 0, pathCopy, v29, 0, 0, 0, 0, v39, 0, dCopy, iDCopy, infoCopy);
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (void)cancelSendTransferID:(id)d
{
  dCopy = d;
  im_assert_primary_queue();
  objc_msgSend_cancelPutRequestID_(self->_controller, v4, dCopy);
}

- (BOOL)_isAllowlistedURL:(id)l
{
  v36 = *MEMORY[0x277D85DE8];
  lCopy = l;
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
      v33 = lCopy;
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

        if (objc_msgSend___im_conformsToDomain_domainExtension_(lCopy, v18, *(*(&v27 + 1) + 8 * i), @"com", v27))
        {
          if (IMOSLoggingEnabled())
          {
            v24 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v33 = lCopy;
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
      v33 = lCopy;
      _os_log_impl(&dword_254850000, v22, OS_LOG_TYPE_INFO, "MMCS: Invalid URL %@", buf, 0xCu);
    }
  }

  v23 = 0;
LABEL_29:

  v25 = *MEMORY[0x277D85DE8];
  return v23;
}

- (void)_receiveFileTransfer:(id)transfer topic:(id)topic path:(id)path requestURLString:(id)string ownerID:(id)d signature:(id)signature allowReauthorize:(BOOL)reauthorize fileSize:(unint64_t)self0 sourceAppID:(id)self1 progressBlock:(id)self2 completionBlock:(id)self3
{
  v146 = *MEMORY[0x277D85DE8];
  transferCopy = transfer;
  topicCopy = topic;
  pathCopy = path;
  stringCopy = string;
  dCopy = d;
  signatureCopy = signature;
  iDCopy = iD;
  blockCopy = block;
  completionBlockCopy = completionBlock;
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

  v28 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v20, stringCopy);
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
    if (stringCopy)
    {
      v35 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v33, stringCopy);
    }

    else
    {
      v35 = 0;
    }

    objc_msgSend_setSignature_(v31, v33, signatureCopy);
    objc_msgSend_setGuid_(v31, v39, transferCopy);
    v42 = objc_msgSend_stringByResolvingAndStandardizingPath(pathCopy, v40, v41);
    objc_msgSend_setLocalPath_(v31, v43, v42);

    objc_msgSend_setRequestURL_(v31, v44, v35);
    objc_msgSend_setProtocolFileSize_(v31, v45, size);
    v132[0] = MEMORY[0x277D85DD0];
    v132[1] = 3221225472;
    v132[2] = sub_254858F48;
    v132[3] = &unk_27978CCF0;
    v46 = transferCopy;
    v133 = v46;
    v47 = blockCopy;
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
    v87 = transferCopy;
    v126 = v130;
    reauthorizeCopy = reauthorize;
    v62 = v46;
    v116 = v62;
    selfCopy = self;
    v63 = topicCopy;
    v118 = v63;
    v64 = pathCopy;
    v119 = v64;
    v65 = stringCopy;
    v120 = v65;
    v66 = dCopy;
    v121 = v66;
    v67 = signatureCopy;
    v122 = v67;
    v128[1] = size;
    v88 = iDCopy;
    v123 = v88;
    v124 = v47;
    v125 = completionBlockCopy;
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
    selfCopy2 = self;
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

    transferCopy = v87;
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
      *(&buf + 4) = stringCopy;
      _os_log_impl(&dword_254850000, v37, OS_LOG_TYPE_INFO, "MMCS failing transfer invalid url %@", &buf, 0xCu);
    }
  }

  if (completionBlockCopy)
  {
    v38 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v36, @"IMTransferAgentErrorDomain", 10, 0);
    (*(completionBlockCopy + 2))(completionBlockCopy, transferCopy, pathCopy, 0, v38, @"Invalid url");
LABEL_28:
  }

  v84 = *MEMORY[0x277D85DE8];
}

- (void)receiveFileTransfer:(id)transfer topic:(id)topic path:(id)path requestURLString:(id)string ownerID:(id)d signature:(id)signature fileSize:(unint64_t)size decryptionKey:(id)self0 sourceAppID:(id)self1 progressBlock:(id)self2 completionBlock:(id)self3
{
  transferCopy = transfer;
  topicCopy = topic;
  pathCopy = path;
  stringCopy = string;
  dCopy = d;
  signatureCopy = signature;
  keyCopy = key;
  iDCopy = iD;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  im_assert_primary_queue();
  v49 = blockCopy;
  if (IMGetCachedDomainBoolForKey())
  {
    v26 = keyCopy;
    v28 = stringCopy;
    v27 = transferCopy;
    v29 = signatureCopy;
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
    (*(completionBlockCopy + 2))(completionBlockCopy, transferCopy, pathCopy, 0, v33, 0);
    v34 = topicCopy;
    v35 = v49;
  }

  else
  {
    v38 = keyCopy;
    v48 = dCopy;
    if (objc_msgSend_length(keyCopy, v24, v25))
    {
      v39 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v36, v37);
      v40 = pathCopy;
      v33 = objc_msgSend__randomSimilarFilePathAsPath_(v39, v41, pathCopy);
    }

    else
    {
      v40 = pathCopy;
      v33 = pathCopy;
    }

    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = sub_25485C060;
    v60[3] = &unk_27978CE58;
    v60[4] = self;
    v42 = topicCopy;
    v61 = v42;
    v62 = completionBlockCopy;
    v43 = MEMORY[0x259C1C440](v60);
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = sub_25485C30C;
    v55[3] = &unk_27978CEA8;
    v56 = v38;
    v57 = v40;
    v59 = v43;
    v26 = v38;
    v27 = transferCopy;
    v58 = transferCopy;
    v44 = v43;
    v35 = v49;
    v47 = 1;
    v45 = v42;
    v29 = signatureCopy;
    v28 = stringCopy;
    objc_msgSend__receiveFileTransfer_topic_path_requestURLString_ownerID_signature_allowReauthorize_fileSize_sourceAppID_progressBlock_completionBlock_(self, v46, v58, v45, v33, stringCopy, v48, signatureCopy, v47, size, iDCopy, v49, v55);

    dCopy = v48;
    v34 = topicCopy;
  }
}

- (void)ensureSafeAttachment:(id)attachment topic:(id)topic withCompletionBlock:(id)block
{
  v32 = *MEMORY[0x277D85DE8];
  attachmentCopy = attachment;
  topicCopy = topic;
  blockCopy = block;
  im_assert_primary_queue();
  if (objc_msgSend_deviceIsLockedDown(MEMORY[0x277D1A9A0], v10, v11) && (objc_msgSend_path(attachmentCopy, v12, v13), v14 = objc_claimAutoreleasedReturnValue(), v15 = IMTransferRequestIsForMessages(topicCopy, v14), v14, v15))
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v31 = attachmentCopy;
        _os_log_impl(&dword_254850000, v16, OS_LOG_TYPE_INFO, "Lockdown mode enabled, generating safe render for attachment: %@", buf, 0xCu);
      }
    }

    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = sub_25485C94C;
    v27 = &unk_27978CED0;
    v17 = attachmentCopy;
    v28 = v17;
    v29 = blockCopy;
    v18 = MEMORY[0x259C1C440](&v24);
    v21 = objc_msgSend_sharedInstance(MEMORY[0x277D1ADE0], v19, v20, v24, v25, v26, v27);
    objc_msgSend_generateSafeRender_completionBlock_(v21, v22, v17, v18);
  }

  else
  {
    (*(blockCopy + 2))(blockCopy, 1, attachmentCopy, 0);
  }

  v23 = *MEMORY[0x277D85DE8];
}

@end