@interface IMTransferServicesController
+ (id)sharedInstance;
- (void)_receiveFileTransfer:(id)a3 topic:(id)a4 path:(id)a5 requestURLString:(id)a6 ownerID:(id)a7 sourceAppID:(id)a8 signature:(id)a9 decryptionKey:(id)a10 retries:(int)a11 fileSize:(unint64_t)value progressBlock:(id)a13 completionBlock:(id)a14;
- (void)cancelSendTransferID:(id)a3;
- (void)deleteAllPersonalNicknamesWithCompletion:(id)a3;
- (void)getNicknameWithRecordID:(id)a3 decryptionKey:(id)a4 wallpaperDataTag:(id)a5 wallpaperLowResDataTag:(id)a6 wallpaperMetadataTag:(id)a7 avatarRecipeDataTag:(id)a8 isKnownSender:(BOOL)a9 shouldDecodeImageFields:(BOOL)a10 completionBlock:(id)a11;
- (void)preWarmMMCSForOwnerID:(id)a3;
- (void)setPersonalNickname:(id)a3 oldRecordID:(id)a4 completionBlock:(id)a5;
- (void)setPersonalNickname:(id)a3 oldRecordID:(id)a4 completionBlockWithWallpaperAndRecipeDataTags:(id)a5;
- (void)setPersonalNickname:(id)a3 oldRecordID:(id)a4 completionBlockWithWallpaperTags:(id)a5;
- (void)updateUltraConstrainedAttachments:(BOOL)a3;
@end

@implementation IMTransferServicesController

+ (id)sharedInstance
{
  if (qword_28141B778 != -1)
  {
    sub_25487ECBC();
  }

  return qword_28141B768;
}

- (void)_receiveFileTransfer:(id)a3 topic:(id)a4 path:(id)a5 requestURLString:(id)a6 ownerID:(id)a7 sourceAppID:(id)a8 signature:(id)a9 decryptionKey:(id)a10 retries:(int)a11 fileSize:(unint64_t)value progressBlock:(id)a13 completionBlock:(id)a14
{
  v137 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      *&buf[4] = a5;
      *&buf[12] = 2112;
      *&buf[14] = a3;
      *&buf[22] = 2112;
      v134 = a8;
      _os_log_impl(&dword_254879000, v18, OS_LOG_TYPE_INFO, "TransferServices received request to receive transfer %@  ID: %@ sourceAppID: %@", buf, 0x20u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3052000000;
  v134 = sub_25487AE30;
  v135 = sub_25487AE40;
  im_primary_queue();
  v136 = IMXPCCreateConnectionForServiceWithQueue();
  if (*(*&buf[8] + 40))
  {
    v128[7] = MEMORY[0x277D85DD0];
    v128[8] = 3221225472;
    v128[9] = sub_25487BD84;
    v128[10] = &unk_27978E308;
    v128[11] = buf;
    v128[1] = MEMORY[0x277D85DD0];
    v128[2] = 3221225472;
    v128[3] = sub_25487BE40;
    v128[4] = &unk_27978E330;
    v128[5] = a13;
    v128[6] = buf;
    IMXPCConfigureConnection();
    v19 = xpc_dictionary_create(0, 0, 0);
    v120 = objc_msgSend_UTF8String(a4, v20, v21, v22, v23, v24, v25, v26);
    IMInsertStringsToXPCDictionary();
    objc_msgSend_UTF8String(a5, v27, v28, v29, v30, v31, v32, v33, v120, 0);
    objc_msgSend_UTF8String(a3, v34, v35, v36, v37, v38, v39, v40);
    v48 = objc_msgSend_UTF8String(a7, v41, v42, v43, v44, v45, v46, v47);
    v122 = objc_msgSend_UTF8String(a6, v49, v50, v51, v52, v53, v54, v55);
    IMInsertStringsToXPCDictionary();
    IMInsertDatasToXPCDictionary();
    IMInsertBoolsToXPCDictionary();
    v121 = objc_msgSend_UTF8String(a8, v56, v57, v58, v59, v60, v61, v62, 0, 0, a10, 0, v48, "urlString", v122, 0);
    IMInsertStringsToXPCDictionary();
    xpc_dictionary_set_uint64(v19, "file-size", value);
    if (a5)
    {
      v69 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v63, a5, v64, v65, v66, v67, v68, v121, 0);
      PathComponent = objc_msgSend_URLByDeletingLastPathComponent(v69, v70, v71, v72, v73, v74, v75, v76);
      v128[0] = 0;
      v85 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v78, v79, v80, v81, v82, v83, v84);
      if ((objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v85, v86, PathComponent, 1, 0, v128, v87, v88) & 1) == 0)
      {
        if (IMOSLoggingEnabled())
        {
          v96 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
          {
            *v129 = 138412546;
            v130 = PathComponent;
            v131 = 2112;
            v132 = v128[0];
            _os_log_impl(&dword_254879000, v96, OS_LOG_TYPE_INFO, "Unable to create containing directory (%@) with error: %@", v129, 0x16u);
          }
        }
      }

      v97 = objc_msgSend_path(PathComponent, v89, v90, v91, v92, v93, v94, v95);
      objc_msgSend_UTF8String(v97, v98, v99, v100, v101, v102, v103, v104);
      v105 = *MEMORY[0x277D861C0];
      v106 = *MEMORY[0x277D861E8];
      v107 = sandbox_extension_issue_file();
      if (v107)
      {
        IMInsertStringsToXPCDictionary();
        free(v107);
      }

      else if (IMOSLoggingEnabled())
      {
        v115 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v115, OS_LOG_TYPE_INFO))
        {
          v116 = *__error();
          *v129 = 138412546;
          v130 = PathComponent;
          v131 = 1024;
          LODWORD(v132) = v116;
          _os_log_impl(&dword_254879000, v115, OS_LOG_TYPE_INFO, "Unable to grant access to path (sandbox extension is NULL) (file path: %@) errno %d", v129, 0x12u);
        }
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v114 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v114, OS_LOG_TYPE_INFO))
        {
          *v129 = 0;
          _os_log_impl(&dword_254879000, v114, OS_LOG_TYPE_INFO, "TransferServices received request to receive transfer but the receivePath was NULL", v129, 2u);
        }
      }

      IMReportAutoBugCapture();
    }

    v117 = *(*&buf[8] + 40);
    v118 = im_primary_queue();
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = sub_25487BFE0;
    handler[3] = &unk_27978E380;
    v127 = a11;
    handler[4] = self;
    handler[5] = a3;
    handler[6] = a4;
    handler[7] = a5;
    handler[8] = a6;
    handler[9] = a7;
    handler[10] = a8;
    handler[11] = a9;
    handler[12] = a10;
    handler[13] = a13;
    handler[14] = a14;
    handler[15] = buf;
    handler[16] = value;
    xpc_connection_send_message_with_reply(v117, v19, v118, handler);
    xpc_release(v19);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v112 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v112, OS_LOG_TYPE_INFO))
      {
        *v129 = 0;
        _os_log_impl(&dword_254879000, v112, OS_LOG_TYPE_INFO, "Unable to connect to transfer service", v129, 2u);
      }
    }

    if (a14)
    {
      v113 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v108, @"IMTransferServicesErrorDomain", -3, 0, v109, v110, v111);
      (*(a14 + 2))(a14, a3, a5, 0, v113, 0);
    }
  }

  _Block_object_dispose(buf, 8);
  v119 = *MEMORY[0x277D85DE8];
}

- (void)updateUltraConstrainedAttachments:(BOOL)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_25487AE30;
  v10 = sub_25487AE40;
  im_primary_queue();
  v11 = IMXPCCreateConnectionForServiceWithQueue();
  if (v7[5])
  {
    IMXPCConfigureConnection();
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v4, "updateUCA", 1);
    xpc_dictionary_set_BOOL(v4, "allowUCA", a3);
    xpc_connection_send_message(v7[5], v4);
    xpc_release(v4);
    v5 = v7[5];
    if (v5)
    {
      xpc_connection_cancel(v5);
      xpc_release(v7[5]);
      v7[5] = 0;
    }
  }

  _Block_object_dispose(&v6, 8);
}

- (void)cancelSendTransferID:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = a3;
      _os_log_impl(&dword_254879000, v4, OS_LOG_TYPE_INFO, "TransferServices received request to cancel send: %@", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v23 = 0x3052000000;
  v24 = sub_25487AE30;
  v25 = sub_25487AE40;
  im_primary_queue();
  v26 = IMXPCCreateConnectionForServiceWithQueue();
  if (*(*(&buf + 1) + 40))
  {
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = sub_25487CB60;
    v20 = &unk_27978E308;
    p_buf = &buf;
    IMXPCConfigureConnection();
    v5 = xpc_dictionary_create(0, 0, 0);
    IMInsertBoolsToXPCDictionary();
    objc_msgSend_UTF8String(a3, v6, v7, v8, v9, v10, v11, v12, 1, 0);
    IMInsertStringsToXPCDictionary();
    xpc_connection_send_message(*(*(&buf + 1) + 40), v5);
    xpc_release(v5);
    v13 = *(*(&buf + 1) + 40);
    if (v13)
    {
      xpc_connection_cancel(v13);
      xpc_release(*(*(&buf + 1) + 40));
      *(*(&buf + 1) + 40) = 0;
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&dword_254879000, v14, OS_LOG_TYPE_INFO, "Unable to connect to transfer service", v16, 2u);
    }
  }

  _Block_object_dispose(&buf, 8);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)preWarmMMCSForOwnerID:(id)a3
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_254879000, v3, OS_LOG_TYPE_INFO, "TransferServices received request to prewarm MMCS connection", buf, 2u);
    }
  }

  *buf = 0;
  v20 = buf;
  v21 = 0x3052000000;
  v22 = sub_25487AE30;
  v23 = sub_25487AE40;
  im_primary_queue();
  v24 = IMXPCCreateConnectionForServiceWithQueue();
  if (*(v20 + 5))
  {
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = sub_25487CEC4;
    v17 = &unk_27978E308;
    v18 = buf;
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = sub_25487CF14;
    v12 = &unk_27978E3C8;
    v13 = buf;
    IMXPCConfigureConnection();
    v4 = xpc_dictionary_create(0, 0, 0);
    IMInsertBoolsToXPCDictionary();
    IMInsertStringsToXPCDictionary();
    xpc_connection_send_message(*(v20 + 5), v4);
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_254879000, v5, OS_LOG_TYPE_INFO, "send prewarm message to transfer agent", v8, 2u);
      }
    }

    xpc_release(v4);
    v6 = *(v20 + 5);
    if (v6)
    {
      xpc_connection_cancel(v6);
      xpc_release(*(v20 + 5));
      *(v20 + 5) = 0;
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_254879000, v7, OS_LOG_TYPE_INFO, "Unable to connect to transfer service", v8, 2u);
    }
  }

  _Block_object_dispose(buf, 8);
}

- (void)getNicknameWithRecordID:(id)a3 decryptionKey:(id)a4 wallpaperDataTag:(id)a5 wallpaperLowResDataTag:(id)a6 wallpaperMetadataTag:(id)a7 avatarRecipeDataTag:(id)a8 isKnownSender:(BOOL)a9 shouldDecodeImageFields:(BOOL)a10 completionBlock:(id)a11
{
  v48 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = a3;
      _os_log_impl(&dword_254879000, v12, OS_LOG_TYPE_INFO, "TransferServices received request to get nickname with record ID %@", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v44 = 0x3052000000;
  v45 = sub_25487AE30;
  v46 = sub_25487AE40;
  im_primary_queue();
  v47 = IMXPCCreateConnectionForServiceWithQueue();
  if (*(*(&buf + 1) + 40))
  {
    v38 = MEMORY[0x277D85DD0];
    v39 = 3221225472;
    v40 = sub_25487D560;
    v41 = &unk_27978E308;
    p_buf = &buf;
    v33 = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = sub_25487D5B0;
    v36 = &unk_27978E3C8;
    v37 = &buf;
    IMXPCConfigureConnection();
    v13 = xpc_dictionary_create(0, 0, 0);
    IMInsertBoolsToXPCDictionary();
    objc_msgSend_UTF8String(a3, v14, v15, v16, v17, v18, v19, v20, 1, 0);
    IMInsertStringsToXPCDictionary();
    IMInsertDatasToXPCDictionary();
    IMInsertDatasToXPCDictionary();
    IMInsertDatasToXPCDictionary();
    IMInsertDatasToXPCDictionary();
    IMInsertDatasToXPCDictionary();
    IMInsertBoolsToXPCDictionary();
    IMInsertBoolsToXPCDictionary();
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *v32 = 0;
        _os_log_impl(&dword_254879000, v21, OS_LOG_TYPE_INFO, "Sending get nickname message to transfer agent", v32, 2u);
      }
    }

    v22 = *(*(&buf + 1) + 40);
    v23 = im_primary_queue();
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = sub_25487D6DC;
    handler[3] = &unk_27978E3F0;
    handler[4] = a11;
    handler[5] = &buf;
    xpc_connection_send_message_with_reply(v22, v13, v23, handler);
    xpc_release(v13);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *v32 = 0;
        _os_log_impl(&dword_254879000, v28, OS_LOG_TYPE_INFO, "Unable to connect to transfer service", v32, 2u);
      }
    }

    v29 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v24, @"IMTransferServicesErrorDomain", -3, 0, v25, v26, v27);
    if (a11)
    {
      (*(a11 + 2))(a11, 0, v29);
    }
  }

  _Block_object_dispose(&buf, 8);
  v30 = *MEMORY[0x277D85DE8];
}

- (void)setPersonalNickname:(id)a3 oldRecordID:(id)a4 completionBlock:(id)a5
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_25487DA6C;
  v8[3] = &unk_27978E418;
  v8[4] = a5;
  objc_msgSend_setPersonalNickname_oldRecordID_completionBlockWithWallpaperTags_(self, a2, a3, a4, v8, v5, v6, v7);
}

- (void)setPersonalNickname:(id)a3 oldRecordID:(id)a4 completionBlockWithWallpaperTags:(id)a5
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_25487DAEC;
  v8[3] = &unk_27978E440;
  v8[4] = a5;
  objc_msgSend_setPersonalNickname_oldRecordID_completionBlockWithWallpaperAndRecipeDataTags_(self, a2, a3, a4, v8, v5, v6, v7);
}

- (void)setPersonalNickname:(id)a3 oldRecordID:(id)a4 completionBlockWithWallpaperAndRecipeDataTags:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = a3;
      *&buf[12] = 2112;
      *&buf[14] = a4;
      _os_log_impl(&dword_254879000, v8, OS_LOG_TYPE_INFO, "TransferServices received request to upload new personal nickname: %@ and delete record with ID: %@", buf, 0x16u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3052000000;
  v33 = sub_25487AE30;
  v34 = sub_25487AE40;
  im_primary_queue();
  v35 = IMXPCCreateConnectionForServiceWithQueue();
  if (*(*&buf[8] + 40))
  {
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = sub_25487DF20;
    v30 = &unk_27978E308;
    v31 = buf;
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = sub_25487DF70;
    v25 = &unk_27978E3C8;
    v26 = buf;
    IMXPCConfigureConnection();
    v9 = xpc_dictionary_create(0, 0, 0);
    IMInsertBoolsToXPCDictionary();
    IMInsertKeyedCodableObjectsToXPCDictionary();
    IMInsertNSStringsToXPCDictionary();
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v21 = 0;
        _os_log_impl(&dword_254879000, v10, OS_LOG_TYPE_INFO, "Sending upload nickname message to transfer agent", v21, 2u);
      }
    }

    v11 = *(*&buf[8] + 40);
    v12 = im_primary_queue();
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = sub_25487E09C;
    handler[3] = &unk_27978E3F0;
    handler[4] = a5;
    handler[5] = buf;
    xpc_connection_send_message_with_reply(v11, v9, v12, handler);
    xpc_release(v9);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *v21 = 0;
        _os_log_impl(&dword_254879000, v17, OS_LOG_TYPE_INFO, "Unable to connect to transfer service", v21, 2u);
      }
    }

    v18 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v13, @"IMTransferServicesErrorDomain", -3, 0, v14, v15, v16);
    if (a5)
    {
      (*(a5 + 2))(a5, 0, 0, 0, 0, 0, 0, 0, 0, v18);
    }
  }

  _Block_object_dispose(buf, 8);
  v19 = *MEMORY[0x277D85DE8];
}

- (void)deleteAllPersonalNicknamesWithCompletion:(id)a3
{
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_254879000, v4, OS_LOG_TYPE_INFO, "TransferServices received requestd to delete all nicknames", buf, 2u);
    }
  }

  *buf = 0;
  v28 = buf;
  v29 = 0x3052000000;
  v30 = sub_25487AE30;
  v31 = sub_25487AE40;
  im_primary_queue();
  v32 = IMXPCCreateConnectionForServiceWithQueue();
  if (*(v28 + 5))
  {
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = sub_25487E824;
    v25 = &unk_27978E308;
    v26 = buf;
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = sub_25487E874;
    v20 = &unk_27978E3C8;
    v21 = buf;
    IMXPCConfigureConnection();
    v5 = xpc_dictionary_create(0, 0, 0);
    IMInsertBoolsToXPCDictionary();
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v16 = 0;
        _os_log_impl(&dword_254879000, v6, OS_LOG_TYPE_INFO, "Sending delete all nicknames message to transfer agent", v16, 2u);
      }
    }

    v7 = *(v28 + 5);
    v8 = im_primary_queue();
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = sub_25487E9A0;
    handler[3] = &unk_27978E3F0;
    handler[4] = a3;
    handler[5] = buf;
    xpc_connection_send_message_with_reply(v7, v5, v8, handler);
    xpc_release(v5);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *v16 = 0;
        _os_log_impl(&dword_254879000, v13, OS_LOG_TYPE_INFO, "Unable to connect to transfer service", v16, 2u);
      }
    }

    v14 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v9, @"IMTransferServicesErrorDomain", -3, 0, v10, v11, v12);
    if (a3)
    {
      (*(a3 + 2))(a3, 0, v14);
    }
  }

  _Block_object_dispose(buf, 8);
}

@end