@interface IMAutomationMessageSend
- (IMAutomationMessageSend)init;
- (id)_sendIMMessage:(id)message chat:(id)chat service:(id)service timeOut:(double)out resultDict:(id)dict error:(id *)error;
- (id)appendFilePathsWithGUIDs:(id)ds withText:(id)text;
- (id)clearAttachmentsUploadedToCloudkit;
- (id)copyFilePathsToTmpLocation:(id)location;
- (id)createIMMessageToSendWithMessage:(id)message filePaths:(id)paths bundleID:(id)d attributionInfoName:(id)name isAudioMessage:(BOOL)audioMessage threadIdentifier:(id)identifier;
- (id)deleteAttachmentWithMessageGUID:(id)d andFilePathIndex:(int64_t)index;
- (id)dictionaryFromGUID:(id)d;
- (id)fileSizeForMessageGUID:(id)d withFilePathIndex:(int64_t)index;
- (id)loadHighResolutionFileForMessageGUID:(id)d withFilePathIndex:(int64_t)index;
- (id)sendMessage:(id)message destinationID:(id)d filePaths:(id)paths isAudioMessage:(BOOL)audioMessage groupID:(id)iD bundleID:(id)bundleID attributionInfoName:(id)name service:(id)self0 timeOut:(double)self1 threadIdentifier:(id)self2 error:(id *)self3;
- (id)uploadAttachmentToCloudkitWithMessageGUID:(id)d andFilePathIndex:(int64_t)index;
- (void)deleteTmpFilePath:(id)path;
@end

@implementation IMAutomationMessageSend

- (IMAutomationMessageSend)init
{
  v8.receiver = self;
  v8.super_class = IMAutomationMessageSend;
  v2 = [(IMAutomationMessageSend *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    pendingSendGUIDs = v2->_pendingSendGUIDs;
    v2->_pendingSendGUIDs = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    sentMessageInfo = v2->_sentMessageInfo;
    v2->_sentMessageInfo = v5;
  }

  return v2;
}

- (id)createIMMessageToSendWithMessage:(id)message filePaths:(id)paths bundleID:(id)d attributionInfoName:(id)name isAudioMessage:(BOOL)audioMessage threadIdentifier:(id)identifier
{
  audioMessageCopy = audioMessage;
  v79 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  pathsCopy = paths;
  dCopy = d;
  nameCopy = name;
  identifierCopy = identifier;
  v69 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (objc_msgSend_count(pathsCopy, v14, v15))
  {
    v18 = 0;
    v68 = *MEMORY[0x1E69A6FB0];
    v67 = *MEMORY[0x1E69A6FA8];
    v66 = *MEMORY[0x1E69A6FA0];
    do
    {
      v19 = MEMORY[0x1E695DFF8];
      v20 = objc_msgSend_objectAtIndex_(pathsCopy, v16, v18);
      v22 = objc_msgSend_fileURLWithPath_(v19, v21, v20);

      v25 = objc_msgSend_sharedInstance(IMFileTransferCenter, v23, v24);
      v27 = objc_msgSend_createNewOutgoingTransferWithLocalFileURL_(v25, v26, v22);

      if (objc_msgSend_length(dCopy, v28, v29) && objc_msgSend_length(nameCopy, v30, v31))
      {
        v33 = objc_msgSend_sharedInstance(IMFileTransferCenter, v30, v32);
        v35 = objc_msgSend_transferForGUID_(v33, v34, v27);

        v36 = IMBalloonExtensionIDWithSuffix();
        if (IMOSLoggingEnabled())
        {
          v38 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            v74 = v36;
            v75 = 2112;
            v76 = nameCopy;
            v77 = 2112;
            v78 = v27;
            _os_log_impl(&dword_1A823F000, v38, OS_LOG_TYPE_INFO, "createIMMessageToSendWithMessage, setting bundleID value to %@ and attribution info name %@ on transferGUID %@", buf, 0x20u);
          }
        }

        v71[0] = v68;
        v71[1] = v67;
        v72[0] = v36;
        v72[1] = nameCopy;
        v71[2] = v66;
        v72[2] = &unk_1F1BA1830;
        v39 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v37, v72, v71, 3);
        objc_msgSend_setAttributionInfo_(v35, v40, v39);

        if (IMOSLoggingEnabled())
        {
          v41 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            v44 = objc_msgSend_attributionInfo(v35, v42, v43);
            *buf = 138412290;
            v74 = v44;
            _os_log_impl(&dword_1A823F000, v41, OS_LOG_TYPE_INFO, "createIMMessageToSendWithMessage, attribution info %@", buf, 0xCu);
          }
        }
      }

      objc_msgSend_addObject_(v69, v30, v27);
      v47 = objc_msgSend_sharedInstance(IMFileTransferCenter, v45, v46);
      objc_msgSend_registerTransferWithDaemon_(v47, v48, v27);

      ++v18;
    }

    while (objc_msgSend_count(pathsCopy, v49, v50) > v18);
  }

  if (objc_msgSend_count(v69, v16, v17))
  {
    v54 = objc_msgSend_appendFilePathsWithGUIDs_withText_(self, v51, v69, messageCopy);
    if (audioMessageCopy)
    {
      objc_msgSend_instantMessageWithText_messageSubject_fileTransferGUIDs_flags_threadIdentifier_(IMMessage, v53, v54, 0, v69, 2097157, identifierCopy);
    }

    else
    {
      objc_msgSend_instantMessageWithText_messageSubject_fileTransferGUIDs_flags_threadIdentifier_(IMMessage, v53, v54, 0, v69, 5, identifierCopy);
    }
    v55 = ;
    goto LABEL_22;
  }

  if (objc_msgSend_length(messageCopy, v51, v52))
  {
    v56 = objc_alloc(MEMORY[0x1E696AAB0]);
    v54 = objc_msgSend_initWithString_attributes_(v56, v57, messageCopy, 0);
    v55 = objc_msgSend_instantMessageWithText_flags_threadIdentifier_(IMMessage, v58, v54, 5, identifierCopy);
LABEL_22:
    v59 = v55;

    goto LABEL_23;
  }

  v59 = 0;
LABEL_23:

  v60 = *MEMORY[0x1E69E9840];

  return v59;
}

- (id)sendMessage:(id)message destinationID:(id)d filePaths:(id)paths isAudioMessage:(BOOL)audioMessage groupID:(id)iD bundleID:(id)bundleID attributionInfoName:(id)name service:(id)self0 timeOut:(double)self1 threadIdentifier:(id)self2 error:(id *)self3
{
  audioMessageCopy = audioMessage;
  v82 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  dCopy = d;
  pathsCopy = paths;
  iDCopy = iD;
  bundleIDCopy = bundleID;
  nameCopy = name;
  serviceCopy = service;
  identifierCopy = identifier;
  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138413570;
      v71 = messageCopy;
      v72 = 2112;
      v73 = dCopy;
      v74 = 2112;
      v75 = pathsCopy;
      v76 = 2112;
      v77 = bundleIDCopy;
      v78 = 2112;
      v79 = nameCopy;
      v80 = 2048;
      outCopy = out;
      _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "sendMessageSync messageText %@ handle %@ filePaths %@ bundleID %@ attributionInfoName %@ timeout: %f", buf, 0x3Eu);
    }
  }

  v23 = objc_alloc_init(MEMORY[0x1E695DF20]);
  v26 = objc_msgSend_length(iDCopy, v24, v25);
  v29 = objc_msgSend_length(messageCopy, v27, v28);
  if (v26)
  {
    if (pathsCopy && v29)
    {
LABEL_8:
      v32 = v26 == 0;
      v62 = objc_msgSend_copyFilePathsToTmpLocation_(self, v30, pathsCopy);
      if (serviceCopy)
      {
        objc_msgSend_serviceWithInternalName_(IMServiceImpl, v33, serviceCopy, v62);
      }

      else
      {
        objc_msgSend_serviceWithInternalName_(IMServiceImpl, v33, *MEMORY[0x1E69A7AF0], v62);
      }
      v36 = ;
      if (v32)
      {
        v47 = objc_msgSend_sharedInstance(IMAccountController, v34, v35);
        v37 = objc_msgSend_bestAccountForService_(v47, v48, v36);

        v50 = objc_msgSend_imHandleWithID_(v37, v49, dCopy);
        v53 = objc_msgSend_sharedRegistry(IMChatRegistry, v51, v52);
        v39 = objc_msgSend_chatWithHandle_(v53, v54, v50);
      }

      else
      {
        v37 = objc_msgSend_sharedRegistry(IMChatRegistry, v34, v35);
        v39 = objc_msgSend_existingChatWithGroupID_(v37, v38, iDCopy);
      }

      if (v39)
      {
        v56 = objc_msgSend_createIMMessageToSendWithMessage_filePaths_bundleID_attributionInfoName_isAudioMessage_threadIdentifier_(self, v55, messageCopy, v63, bundleIDCopy, nameCopy, audioMessageCopy, identifierCopy);
        v58 = objc_msgSend__sendIMMessage_chat_service_timeOut_resultDict_error_(self, v57, v56, v39, v36, v23, error, out);

        v23 = v58;
      }

      if (IMOSLoggingEnabled())
      {
        v59 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v71 = v23;
          _os_log_impl(&dword_1A823F000, v59, OS_LOG_TYPE_INFO, "SendMessage returning resultDir:%@", buf, 0xCu);
        }
      }

      v46 = v23;

      goto LABEL_34;
    }
  }

  else
  {
    v40 = pathsCopy == 0;
    if (objc_msgSend_length(messageCopy, v30, v31))
    {
      v40 = 0;
    }

    if (objc_msgSend_length(dCopy, v41, v42))
    {
      v43 = v40;
    }

    else
    {
      v43 = 1;
    }

    if ((v43 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v45 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v45, OS_LOG_TYPE_INFO, "Invalid parameters", buf, 2u);
    }
  }

  if (error)
  {
    *error = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v44, @"com.apple.private.IMCore.IMAutomationMessageSend", 2, 0);
  }

  v46 = v23;
LABEL_34:

  v60 = *MEMORY[0x1E69E9840];

  return v46;
}

- (id)_sendIMMessage:(id)message chat:(id)chat service:(id)service timeOut:(double)out resultDict:(id)dict error:(id *)error
{
  v56 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  chatCopy = chat;
  serviceCopy = service;
  dictCopy = dict;
  v16 = objc_alloc(MEMORY[0x1E695DF90]);
  v18 = objc_msgSend_initWithDictionary_(v16, v17, dictCopy);
  v21 = objc_msgSend_guid(messageCopy, v19, v20);
  objc_msgSend_setObject_forKey_(v18, v22, v21, @"GUID");
  v25 = objc_msgSend_pendingSendGUIDs(self, v23, v24);
  objc_msgSend_addObject_(v25, v26, v21);

  v29 = objc_msgSend_sharedRegistry(IMChatRegistry, v27, v28);
  objc_msgSend__setPostMessageSentNotifications_(v29, v30, 1);

  objc_msgSend_refreshServiceForSending(chatCopy, v31, v32);
  if (IMOSLoggingEnabled())
  {
    v34 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v37 = objc_msgSend_plainBody(messageCopy, v35, v36);
      if (objc_msgSend_isTypingMessage(messageCopy, v38, v39))
      {
        v42 = @"YES";
      }

      else
      {
        v42 = @"NO";
      }

      v43 = MEMORY[0x1E696AD98];
      v44 = objc_msgSend_flags(messageCopy, v40, v41);
      v46 = objc_msgSend_numberWithUnsignedLongLong_(v43, v45, v44);
      v50 = 138412802;
      v51 = v37;
      v52 = 2112;
      v53 = v42;
      v54 = 2112;
      v55 = v46;
      _os_log_impl(&dword_1A823F000, v34, OS_LOG_TYPE_INFO, "messageToSend body:%@ isTyping message %@ flags %@", &v50, 0x20u);
    }
  }

  if (serviceCopy)
  {
    objc_msgSend_sendMessage_onService_(chatCopy, v33, messageCopy, serviceCopy);
  }

  else
  {
    objc_msgSend_sendMessage_(chatCopy, v33, messageCopy);
  }

  if (IMOSLoggingEnabled())
  {
    v47 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      v50 = 138412546;
      v51 = v21;
      v52 = 2112;
      v53 = v18;
      _os_log_impl(&dword_1A823F000, v47, OS_LOG_TYPE_INFO, "Sent IMmessage %@ resultDir:%@", &v50, 0x16u);
    }
  }

  v48 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)loadHighResolutionFileForMessageGUID:(id)d withFilePathIndex:(int64_t)index
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1A8259C10;
  v18 = sub_1A825AF34;
  v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = IMDMessageRecordCopyMessageForGUID();
  if (v6)
  {
    v7 = IMDMessageRecordCopyAttachments();
    v8 = v7;
    if (index < 0 || !v7)
    {
      if (!v7)
      {
LABEL_8:
        CFRelease(v6);
        goto LABEL_9;
      }
    }

    else if (CFArrayGetCount(v7) > index)
    {
      CFArrayGetValueAtIndex(v8, index);
      v13 = 0;
      cf = 0;
      _IMDAttachmentRecordBulkCopy();
    }

    CFRelease(v8);
    goto LABEL_8;
  }

LABEL_9:
  v9 = v15[5];
  _Block_object_dispose(&v14, 8);

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)deleteAttachmentWithMessageGUID:(id)d andFilePathIndex:(int64_t)index
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);

  return v4;
}

- (id)clearAttachmentsUploadedToCloudkit
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);

  return v2;
}

- (id)uploadAttachmentToCloudkitWithMessageGUID:(id)d andFilePathIndex:(int64_t)index
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);

  return v4;
}

- (id)fileSizeForMessageGUID:(id)d withFilePathIndex:(int64_t)index
{
  v16 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = IMDMessageRecordCopyMessageForGUID();
  if (!v7)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v6, v8, @"Could not find IMDMessageRecordRef with message guid", @"error");
    goto LABEL_10;
  }

  v9 = v7;
  v10 = IMDMessageRecordCopyAttachments();
  v11 = v10;
  if ((index & 0x8000000000000000) == 0 && v10)
  {
    if (CFArrayGetCount(v10) > index)
    {
      CFArrayGetValueAtIndex(v11, index);
      v14 = 0;
      v15 = 0;
      _IMDAttachmentRecordBulkCopy();
    }

    goto LABEL_8;
  }

  if (v10)
  {
LABEL_8:
    CFRelease(v11);
  }

  CFRelease(v9);
LABEL_10:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)dictionaryFromGUID:(id)d
{
  dCopy = d;
  if (qword_1EB2EA3F0 != -1)
  {
    sub_1A84E1F68();
  }

  if (qword_1EB2EA400 != -1)
  {
    sub_1A84E1F7C();
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = off_1EB2EA3E8(dCopy);
  if (v5)
  {
    v6 = v5;
    v85 = 0;
    v86 = 0;
    v83 = 0;
    v84 = 0;
    v81 = 0;
    v82 = 0;
    v79 = 0;
    v80 = 0;
    v77 = 0;
    v78 = 0;
    v75 = 0;
    v76 = 0;
    v73 = 0;
    v74 = 0;
    v71 = 0;
    v72 = 0;
    v70 = 0;
    v69 = 0;
    v67 = 0;
    v68 = 0;
    v65 = 0;
    v66 = 0;
    v63 = 0;
    v64 = 0;
    v61 = 0;
    v62 = 0;
    v59 = 0;
    v60 = 0;
    v58 = 0;
    v57 = 0u;
    v55 = 0;
    v56 = 0;
    v53 = 0;
    cf = 0;
    v52 = 0;
    off_1EB2EA3F8(v5, &v66, &v86, &v85, &v84, &v83, &v82, &v81, &v80, &v79, &v78, &v77, &v76, &v75, &v74, &v73, &v72, &v71, &v70, &v69 + 1, &v69, &v68, &v64, &v65, &v61, &v62, &v63, &v67, &v60, &v59, &v58, &v57, 0, &cf, &v56, &v55, &v53, 0, 0, 0, 0, &v52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    if (v84)
    {
      if (v66)
      {
        v8 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v7, v66);
        objc_msgSend_setObject_forKeyedSubscript_(v4, v9, v8, @"itemType");
      }

      if (v86)
      {
        v10 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v7, v86);
        objc_msgSend_setObject_forKeyedSubscript_(v4, v11, v10, @"messageID");
      }

      if (v85)
      {
        v12 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v7, v85);
        objc_msgSend_setObject_forKeyedSubscript_(v4, v13, v12, @"replaceID");
      }

      if (v84)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v4, v7, v84, @"GUID");
      }

      if (v83)
      {
        v14 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v7, v83);
        objc_msgSend_setObject_forKeyedSubscript_(v4, v15, v14, @"date");
      }

      if (v82)
      {
        v16 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v7, v82);
        objc_msgSend_setObject_forKeyedSubscript_(v4, v17, v16, @"date-read");
      }

      if (v81)
      {
        v18 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v7, v81);
        objc_msgSend_setObject_forKeyedSubscript_(v4, v19, v18, @"date-delivered");
      }

      if (v80)
      {
        v20 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v7, v80);
        objc_msgSend_setObject_forKeyedSubscript_(v4, v21, v20, @"datePlayed");
      }

      if (v79)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v4, v7, v79, @"body");
      }

      if (v78)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v4, v7, v78, @"attributedBody");
      }

      if (v77)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v4, v7, v77, @"flags");
      }

      if (v76)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v4, v7, v76, @"service");
      }

      if (v75)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v4, v7, v75, @"account");
      }

      if (v74)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v4, v7, v74, @"accountGUID");
      }

      if (v73)
      {
        v22 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v7, v73);
        objc_msgSend_setObject_forKeyedSubscript_(v4, v23, v22, @"handleID");
      }

      if (v72)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v4, v7, v72, @"messageSubject");
      }

      if (v71)
      {
        v24 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v7, v71);
        objc_msgSend_setObject_forKeyedSubscript_(v4, v25, v24, @"error");
      }

      if (v70)
      {
        v26 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v7, v70);
        objc_msgSend_setObject_forKeyedSubscript_(v4, v27, v26, @"type");
      }

      v28 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v7, HIBYTE(v69) != 0);
      objc_msgSend_setObject_forKeyedSubscript_(v4, v29, v28, @"hasAttachments");

      v31 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v30, v69 != 0);
      objc_msgSend_setObject_forKeyedSubscript_(v4, v32, v31, @"wasDDScanned");

      if (v68)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v4, v33, v68, @"roomnames");
      }

      if (v64)
      {
        v34 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v33, v64);
        objc_msgSend_setObject_forKeyedSubscript_(v4, v35, v34, @"otherHandleID");
      }

      if (v65)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v4, v33, v65, @"groupTitle");
      }

      if (v61)
      {
        v36 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v33, v61);
        objc_msgSend_setObject_forKeyedSubscript_(v4, v37, v36, @"groupActionType");
      }

      if (v62)
      {
        v38 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v33, v62);
        objc_msgSend_setObject_forKeyedSubscript_(v4, v39, v38, @"shareStatus");
      }

      if (v63)
      {
        v40 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v33, v63);
        objc_msgSend_setObject_forKeyedSubscript_(v4, v41, v40, @"shareDirection");
      }

      if (v67)
      {
        v42 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v33, v67);
        objc_msgSend_setObject_forKeyedSubscript_(v4, v43, v42, @"expireState");
      }

      if (v60)
      {
        v44 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v33, v60);
        objc_msgSend_setObject_forKeyedSubscript_(v4, v45, v44, @"messageActionType");
      }

      if (v59)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v4, v33, v59, @"associatedMessageGUID");
      }

      if (v58)
      {
        v46 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v33, v58);
        objc_msgSend_setObject_forKeyedSubscript_(v4, v47, v46, @"associatedMessageType");
      }

      if (cf)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v4, v33, cf, @"payloadData");
      }

      if (v56)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v4, v33, v56, @"expressiveSendStyleID");
      }

      if (v55)
      {
        v48 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v33, v55);
        objc_msgSend_setObject_forKeyedSubscript_(v4, v49, v48, @"timePlayedExpressiveSend");
      }

      if (v53)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v4, v33, v53, @"messageSummaryInfo");
      }

      if (v52)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v4, v33, v52, @"destinationCallerID");
      }

      if (v84)
      {
        CFRelease(v84);
      }
    }

    if (v79)
    {
      CFRelease(v79);
    }

    if (v65)
    {
      CFRelease(v65);
    }

    if (v78)
    {
      CFRelease(v78);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v77)
    {
      CFRelease(v77);
    }

    if (v76)
    {
      CFRelease(v76);
    }

    if (v75)
    {
      CFRelease(v75);
    }

    if (v74)
    {
      CFRelease(v74);
    }

    if (v72)
    {
      CFRelease(v72);
    }

    if (v68)
    {
      CFRelease(v68);
    }

    if (v59)
    {
      CFRelease(v59);
    }

    if (v56)
    {
      CFRelease(v56);
    }

    if (v52)
    {
      CFRelease(v52);
    }

    CFRelease(v6);
  }

  v50 = v4;

  return v4;
}

- (id)copyFilePathsToTmpLocation:(id)location
{
  v46 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = locationCopy;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v38, v45, 16);
  if (v6)
  {
    v8 = *v39;
    *&v7 = 138412290;
    v33 = v7;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v38 + 1) + 8 * i);
        v11 = objc_msgSend_componentsSeparatedByString_(v10, v5, @"/", v33);
        v12 = IMSafeTemporaryDirectory();
        v15 = objc_msgSend_lastObject(v11, v13, v14);
        v44 = v15;
        v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v16, &v44, 1);
        v19 = objc_msgSend_im_URLByAppendingPathComponents_(v12, v18, v17);
        v22 = objc_msgSend_path(v19, v20, v21);

        objc_msgSend_deleteTmpFilePath_(self, v23, v22);
        v26 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v24, v25);
        v37 = 0;
        LODWORD(v15) = objc_msgSend_copyItemAtPath_toPath_error_(v26, v27, v10, v22, &v37);
        v28 = v37;

        if (v15)
        {
          objc_msgSend_addObject_(v34, v29, v22);
        }

        else if (IMOSLoggingEnabled())
        {
          v30 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            *buf = v33;
            v43 = v28;
            _os_log_impl(&dword_1A823F000, v30, OS_LOG_TYPE_INFO, "Error occurred copying attachment files to tmp path: %@", buf, 0xCu);
          }
        }
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v38, v45, 16);
    }

    while (v6);
  }

  v31 = *MEMORY[0x1E69E9840];
  return v34;
}

- (void)deleteTmpFilePath:(id)path
{
  v19 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v6 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v4, v5);
  if (objc_msgSend_fileExistsAtPath_(v6, v7, pathCopy))
  {
    v10 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v8, v9);
    v16 = 0;
    v12 = objc_msgSend_removeItemAtPath_error_(v10, v11, pathCopy, &v16);
    v13 = v16;

    if ((v12 & 1) == 0 && IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v18 = v13;
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Error occurred deleting tmp attachment file: %@", buf, 0xCu);
      }
    }
  }

  else
  {

    v13 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)appendFilePathsWithGUIDs:(id)ds withText:(id)text
{
  dsCopy = ds;
  textCopy = text;
  v7 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = objc_msgSend_length(textCopy, v9, v10);
  v14 = MEMORY[0x1E69A5FD8];
  v15 = 0x1E696A000uLL;
  v45 = textCopy;
  if (v11)
  {
    NSLog(&cfstr_ValidText.isa);
    v17 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v16, 0);
    objc_msgSend_setObject_forKey_(v8, v18, v17, *v14);

    v19 = objc_alloc(MEMORY[0x1E696AAB0]);
    v21 = objc_msgSend_initWithString_attributes_(v19, v20, textCopy, v8);
    objc_msgSend_appendAttributedString_(v7, v22, v21);

    v23 = 1;
  }

  else
  {
    v23 = 0;
  }

  v46 = v7;
  if (objc_msgSend_count(dsCopy, v12, v13))
  {
    v25 = 0;
    v26 = *v14;
    v27 = *MEMORY[0x1E69A5F68];
    do
    {
      v28 = objc_msgSend_objectAtIndex_(dsCopy, v24, v25);
      if (v28)
      {
        v29 = objc_alloc_init(MEMORY[0x1E695DF90]);

        v31 = objc_msgSend_numberWithUnsignedInteger_(*(v15 + 3480), v30, v23);
        objc_msgSend_setObject_forKey_(v29, v32, v31, v26);

        objc_msgSend_setObject_forKey_(v29, v33, v28, v27);
        ++v23;
        v47 = -4;
        v34 = objc_alloc(MEMORY[0x1E696AEC0]);
        v36 = objc_msgSend_initWithCharacters_length_(v34, v35, &v47, 1);
        v37 = objc_alloc(MEMORY[0x1E696AAB0]);
        v39 = v15;
        v40 = objc_msgSend_initWithString_attributes_(v37, v38, v36, v29);
        objc_msgSend_appendAttributedString_(v46, v41, v40);

        v15 = v39;
        v8 = v29;
      }

      ++v25;
    }

    while (objc_msgSend_count(dsCopy, v42, v43) > v25);
  }

  return v46;
}

@end