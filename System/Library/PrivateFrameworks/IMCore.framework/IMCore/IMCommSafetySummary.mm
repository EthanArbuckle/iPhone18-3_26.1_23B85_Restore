@interface IMCommSafetySummary
+ (id)primaryiCloudAccountIdentifier;
+ (id)recipientStrings:(id)strings;
+ (void)registerEvent:(unint64_t)event eventType:(unint64_t)type messageGUID:(id)d chat:(id)chat forImages:(id)images;
+ (void)registerEvent:(unint64_t)event eventType:(unint64_t)type messageGUID:(id)d chat:(id)chat forImages:(id)images childID:(id)iD deviceID:(id)deviceID senderID:(id)self0 eventSender:(id)self1;
@end

@implementation IMCommSafetySummary

+ (id)primaryiCloudAccountIdentifier
{
  if (qword_1EB2EA428 != -1)
  {
    sub_1A84E2548();
  }

  v3 = qword_1EB2EA420;

  return v3;
}

+ (id)recipientStrings:(id)strings
{
  v25 = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = objc_msgSend_participants(stringsCopy, v5, v6, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v20, v24, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = objc_msgSend_ID(*(*(&v20 + 1) + 8 * i), v10, v11);
        if (MEMORY[0x1AC56C3C0]())
        {
          v17 = IMFormattedDisplayStringForNumber();

          v15 = v17;
        }

        if (v15)
        {
          objc_msgSend_addObject_(v4, v16, v15);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v20, v24, 16);
    }

    while (v12);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (void)registerEvent:(unint64_t)event eventType:(unint64_t)type messageGUID:(id)d chat:(id)chat forImages:(id)images
{
  v45 = *MEMORY[0x1E69E9840];
  dCopy = d;
  chatCopy = chat;
  imagesCopy = images;
  v17 = objc_msgSend_sharedManager(MEMORY[0x1E69A7FC8], v15, v16);
  if (objc_msgSend_shouldNotifyParentAboutSensitivePhotos(v17, v18, v19))
  {
    v22 = objc_msgSend_sharedManager(MEMORY[0x1E69A7FC8], v20, v21);
    IsYoungAgeGroup = objc_msgSend_childIsYoungAgeGroup(v22, v23, v24);

    if (IsYoungAgeGroup)
    {
      v42 = objc_msgSend_primaryiCloudAccountIdentifier(IMCommSafetySummary, v26, v27);
      v29 = MGCopyAnswer();
      if (dCopy)
      {
        v30 = objc_msgSend_messageForGUID_(chatCopy, v28, dCopy);
        v33 = v30;
        if (v30)
        {
          v34 = objc_msgSend_sender(v30, v31, v32);
          v37 = objc_msgSend_ID(v34, v35, v36);
        }

        else
        {
          v37 = 0;
        }
      }

      else
      {
        v37 = 0;
      }

      if (MEMORY[0x1AC56C3C0](v37))
      {
        v40 = IMFormattedDisplayStringForNumber();

        v37 = v40;
      }

      objc_msgSend_registerEvent_eventType_messageGUID_chat_forImages_childID_deviceID_senderID_eventSender_(self, v39, event, type, dCopy, chatCopy, imagesCopy, v42, v29, v37, &unk_1F1B6F2E0);

      goto LABEL_17;
    }
  }

  else
  {
  }

  if (IMOSLoggingEnabled())
  {
    v38 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      typeCopy = type;
      _os_log_impl(&dword_1A823F000, v38, OS_LOG_TYPE_INFO, "Not registering event %lu because setting is not enabled!", buf, 0xCu);
    }
  }

LABEL_17:

  v41 = *MEMORY[0x1E69E9840];
}

+ (void)registerEvent:(unint64_t)event eventType:(unint64_t)type messageGUID:(id)d chat:(id)chat forImages:(id)images childID:(id)iD deviceID:(id)deviceID senderID:(id)self0 eventSender:(id)self1
{
  v142 = *MEMORY[0x1E69E9840];
  dCopy = d;
  chatCopy = chat;
  imagesCopy = images;
  iDCopy = iD;
  deviceIDCopy = deviceID;
  senderIDCopy = senderID;
  senderCopy = sender;
  v107 = objc_msgSend_sharedRegistry(IMChatRegistry, v15, v16);
  v111 = objc_msgSend_chatIdentifier(chatCopy, v17, v18);
  v112 = objc_msgSend_messagesURLWithChat_(v107, v19, chatCopy);
  v103 = objc_msgSend_recipientStrings_(IMCommSafetySummary, v20, chatCopy);
  if (!imagesCopy)
  {
    v21 = objc_alloc(MEMORY[0x1E698F260]);
    v24 = objc_msgSend_now(MEMORY[0x1E695DF00], v22, v23);
    objc_msgSend_timeIntervalSinceReferenceDate(v24, v25, v26);
    v28 = objc_msgSend_initWithChildID_deviceID_sourceBundleID_absoluteTimeStamp_eventDirection_eventType_contentType_contactHandles_contentID_conversationID_imageData_senderHandle_contentURL_conversationURL_(v21, v27, iDCopy, deviceIDCopy, @"com.apple.MobileSMS", event, type, 0, v103, &stru_1F1B76F98, v111, 0, 0, 0, v112);

    senderCopy[2](senderCopy, v28, v28);
    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        typeCopy = type;
        _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_INFO, "Registered event of type %lu with Biome", buf, 0xCu);
      }
    }
  }

  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v100 = imagesCopy;
  v108 = objc_msgSend_countByEnumeratingWithState_objects_count_(v100, v30, &v123, v141, 16);
  if (v108)
  {
    v101 = *v124;
    do
    {
      for (i = 0; i != v108; ++i)
      {
        if (*v124 != v101)
        {
          objc_enumerationMutation(v100);
        }

        v122 = *(*(&v123 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        v33 = objc_msgSend_imageData(v122, v31, v32);
        v119 = IMRescaledImageDataFromDataForBiomeDonation();

        if (dCopy)
        {
          objc_msgSend_messagesURLWithMessageGUID_(v107, v34, dCopy);
        }

        else
        {
          objc_msgSend_messagesURLWithChat_(v107, v34, chatCopy);
        }
        v121 = ;
        v35 = objc_alloc(MEMORY[0x1E698F260]);
        v38 = objc_msgSend_now(MEMORY[0x1E695DF00], v36, v37);
        objc_msgSend_timeIntervalSinceReferenceDate(v38, v39, v40);
        v42 = v41;
        v45 = objc_msgSend_identifier(v122, v43, v44);
        v47 = objc_msgSend_initWithChildID_deviceID_sourceBundleID_absoluteTimeStamp_eventDirection_eventType_contentType_contactHandles_contentID_conversationID_imageData_senderHandle_contentURL_conversationURL_(v35, v46, iDCopy, deviceIDCopy, @"com.apple.MobileSMS", event, type, 0, v42, v103, v45, v111, v119, senderIDCopy, v121, v112);

        v115 = objc_alloc(MEMORY[0x1E698F260]);
        v118 = objc_msgSend_childID(v47, v48, v49);
        v117 = objc_msgSend_deviceID(v47, v50, v51);
        v116 = objc_msgSend_sourceBundleID(v47, v52, v53);
        objc_msgSend_absoluteTimestamp(v47, v54, v55);
        v57 = v56;
        v60 = objc_msgSend_eventDirection(v47, v58, v59);
        v63 = objc_msgSend_eventType(v47, v61, v62);
        v66 = objc_msgSend_contentType(v47, v64, v65);
        v69 = objc_msgSend_contactHandles(v47, v67, v68);
        v72 = objc_msgSend_contentID(v47, v70, v71);
        v75 = objc_msgSend_conversationID(v47, v73, v74);
        v78 = objc_msgSend_senderHandle(v47, v76, v77);
        v81 = objc_msgSend_contentURL(v47, v79, v80);
        v84 = objc_msgSend_conversationURL(v47, v82, v83);
        v86 = objc_msgSend_initWithChildID_deviceID_sourceBundleID_absoluteTimeStamp_eventDirection_eventType_contentType_contactHandles_contentID_conversationID_imageData_senderHandle_contentURL_conversationURL_(v115, v85, v118, v117, v116, v60, v63, v66, v57, v69, v72, v75, 0, v78, v81, v84);

        senderCopy[2](senderCopy, v47, v86);
        if (IMOSLoggingEnabled())
        {
          v87 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
          {
            v90 = objc_msgSend_identifier(v122, v88, v89);
            v93 = objc_msgSend_absoluteString(v121, v91, v92);
            v96 = objc_msgSend_absoluteString(v112, v94, v95);
            *buf = 138413826;
            typeCopy = dCopy;
            v129 = 2048;
            typeCopy2 = type;
            v131 = 2112;
            v132 = senderIDCopy;
            v133 = 2112;
            v134 = v90;
            v135 = 2112;
            v136 = v93;
            v137 = 2112;
            v138 = v111;
            v139 = 2112;
            v140 = v96;
            _os_log_impl(&dword_1A823F000, v87, OS_LOG_TYPE_INFO, "Registered event with messageGUID %@, of type %lu, sender %@, contentID %@, contentURL %@, conversationID %@, conversationURL %@ with Biome", buf, 0x48u);
          }
        }

        objc_autoreleasePoolPop(context);
      }

      v108 = objc_msgSend_countByEnumeratingWithState_objects_count_(v100, v97, &v123, v141, 16);
    }

    while (v108);
  }

  v98 = *MEMORY[0x1E69E9840];
}

@end