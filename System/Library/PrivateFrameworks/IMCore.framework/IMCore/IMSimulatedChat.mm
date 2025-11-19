@interface IMSimulatedChat
- (BOOL)_handleIncomingItem:(id)a3;
- (IMSimulatedChat)initWithIncomingIDs:(id)a3 messageIDOffset:(unint64_t)a4 account:(id)a5;
- (IMSimulatedChatDelegate)delegate;
- (id)_messageWithGUID:(id)a3;
- (id)_messagesToProcessFromMessage:(id)a3;
- (id)chatIdentifier;
- (void)_processMessage:(id)a3 receivingHandle:(id)a4 sendingHandle:(id)a5;
- (void)receiveDemoMessage:(id)a3;
- (void)sendMessage:(id)a3;
- (void)setDisplayName:(id)a3;
- (void)simulateMessageDeliveryForGUID:(id)a3;
- (void)simulatedChat:(id)a3 didSendMessage:(id)a4;
- (void)simulatedDaemon:(id)a3 willSendBalloonPayload:(id)a4 attachments:(id)a5 messageGUID:(id)a6 bundleID:(id)a7;
@end

@implementation IMSimulatedChat

- (IMSimulatedChat)initWithIncomingIDs:(id)a3 messageIDOffset:(unint64_t)a4 account:(id)a5
{
  v49 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (qword_1EB2EA2E8 != -1)
  {
    sub_1A84E1078();
  }

  v10 = objc_alloc(MEMORY[0x1E695DF70]);
  v13 = objc_msgSend_count(v8, v11, v12);
  v15 = objc_msgSend_initWithCapacity_(v10, v14, v13);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v16 = v8;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v44, v48, 16);
  if (v18)
  {
    v20 = v18;
    v21 = *v45;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v45 != v21)
        {
          objc_enumerationMutation(v16);
        }

        v23 = objc_msgSend_imHandleWithID_alreadyCanonical_(v9, v19, *(*(&v44 + 1) + 8 * i), 0);
        objc_msgSend_addObject_(v15, v24, v23);
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v44, v48, 16);
    }

    while (v20);
  }

  v27 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v25, v26);
  v43.receiver = self;
  v43.super_class = IMSimulatedChat;
  BYTE2(v42) = 0;
  LOWORD(v42) = 0;
  if (objc_msgSend_count(v15, v28, v29) <= 1)
  {
    v30 = [IMChat _initWithGUID:sel__initWithGUID_account_style_roomName_displayName_lastAddressedHandle_lastAddressedSIMID_items_participants_isFiltered_hasHadSuccessfulQuery_isRecovered_isDeletingIncomingMessages_ account:v27 style:v9 roomName:45 displayName:0 lastAddressedHandle:0 lastAddressedSIMID:0 items:0 participants:0 isFiltered:v15 hasHadSuccessfulQuery:1 isRecovered:v42 isDeletingIncomingMessages:?];
  }

  else
  {
    v30 = [IMChat _initWithGUID:sel__initWithGUID_account_style_roomName_displayName_lastAddressedHandle_lastAddressedSIMID_items_participants_isFiltered_hasHadSuccessfulQuery_isRecovered_isDeletingIncomingMessages_ account:v27 style:v9 roomName:43 displayName:0 lastAddressedHandle:0 lastAddressedSIMID:0 items:0 participants:0 isFiltered:v15 hasHadSuccessfulQuery:1 isRecovered:v42 isDeletingIncomingMessages:?];
  }

  v31 = v30;

  if (v31)
  {
    objc_storeStrong(&v31->_simulatedAccount, a5);
    v31->_currentMessageID = a4;
    v34 = objc_msgSend_array(MEMORY[0x1E695DF70], v32, v33);
    simulatedAttachments = v31->_simulatedAttachments;
    v31->_simulatedAttachments = v34;

    v38 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v36, v37);
    guidToMessageItemNeedingAckMap = v31->_guidToMessageItemNeedingAckMap;
    v31->_guidToMessageItemNeedingAckMap = v38;
  }

  v40 = *MEMORY[0x1E69E9840];
  return v31;
}

- (void)sendMessage:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v31 = a3;
  objc_msgSend__messagesToProcessFromMessage_(self, v4, v31);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  obj = v35 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v34, v40, 16);
  if (v6)
  {
    v8 = *v35;
    *&v7 = 138412290;
    v30 = v7;
    do
    {
      v9 = 0;
      do
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v34 + 1) + 8 * v9);
        if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v14 = objc_msgSend_guid(v31, v12, v13);
            *buf = v30;
            v39 = v14;
            _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "sending demo message with messageGUID: %@", buf, 0xCu);
          }
        }

        v33.receiver = self;
        v33.super_class = IMSimulatedChat;
        [(IMChat *)&v33 sendMessage:v10, v30];
        v17 = objc_msgSend_participants(self, v15, v16);
        v20 = objc_msgSend_firstObject(v17, v18, v19);
        v23 = objc_msgSend_simulatedAccount(self, v21, v22);
        v26 = objc_msgSend_loginHandle(v23, v24, v25);
        objc_msgSend__processMessage_receivingHandle_sendingHandle_(self, v27, v10, v20, v26);

        ++v9;
      }

      while (v6 != v9);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v28, &v34, v40, 16);
    }

    while (v6);
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)receiveDemoMessage:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = objc_msgSend_guid(v4, v8, v9);
      v23 = 138412290;
      v24 = v10;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "receiving demo message with messageGUID: %@", &v23, 0xCu);
    }
  }

  v11 = objc_msgSend_simulatedAccount(self, v5, v6);
  v14 = objc_msgSend_loginHandle(v11, v12, v13);
  v17 = objc_msgSend_participants(self, v15, v16);
  v20 = objc_msgSend_firstObject(v17, v18, v19);
  objc_msgSend__processMessage_receivingHandle_sendingHandle_(self, v21, v4, v14, v20);

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_processMessage:(id)a3 receivingHandle:(id)a4 sendingHandle:(id)a5
{
  v96 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v75 = a4;
  v77 = a5;
  v72 = v8;
  objc_msgSend__messagesToProcessFromMessage_(self, v9, v8);
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  obj = v87 = 0u;
  v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v86, v95, 16);
  if (v76)
  {
    v74 = *v87;
    do
    {
      for (i = 0; i != v76; ++i)
      {
        if (*v87 != v74)
        {
          objc_enumerationMutation(obj);
        }

        v79 = objc_msgSend__imMessageItem(*(*(&v86 + 1) + 8 * i), v11, v12);
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v15 = objc_msgSend_fileTransferGUIDs(v79, v13, v14);
        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v82, v94, 16);
        if (v19)
        {
          v20 = *v83;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v83 != v20)
              {
                objc_enumerationMutation(v15);
              }

              v22 = *(*(&v82 + 1) + 8 * j);
              v23 = objc_msgSend_sharedInstance(IMFileTransferCenter, v17, v18);
              v25 = objc_msgSend_transferForGUID_(v23, v24, v22);

              v28 = objc_msgSend_simulatedAttachments(self, v26, v27);
              v29 = [IMAttachment alloc];
              v32 = objc_msgSend_localPath(v25, v30, v31);
              v34 = objc_msgSend_initWithPath_guid_(v29, v33, v32, v22);
              objc_msgSend_addObject_(v28, v35, v34);
            }

            v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v82, v94, 16);
          }

          while (v19);
        }

        v38 = objc_msgSend_simulatedAccount(self, v36, v37);
        v41 = objc_msgSend_loginHandle(v38, v39, v40);
        isEqual = objc_msgSend_isEqual_(v77, v42, v41);

        if (isEqual)
        {
          v46 = 36869;
        }

        else
        {
          v46 = 36865;
        }

        ++self->_currentMessageID;
        v47 = objc_msgSend_currentMessageID(self, v44, v45);
        v48 = sub_1A8311880(v79, v46, v47, v77, v75, 0);
        guidToMessageItemNeedingAckMap = self->_guidToMessageItemNeedingAckMap;
        v52 = objc_msgSend_guid(v48, v50, v51);
        objc_msgSend_setObject_forKeyedSubscript_(guidToMessageItemNeedingAckMap, v53, v48, v52);

        v56 = objc_msgSend_delegate(self, v54, v55);
        objc_msgSend_simulatedChat_didSendMessage_(v56, v57, self, v48);

        if (objc_msgSend_shouldUseTimedAck(self, v58, v59))
        {
          if (IMOSLoggingEnabled())
          {
            v60 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
            {
              v63 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v61, v62, 1.0);
              v66 = objc_msgSend_message(v79, v64, v65);
              v69 = objc_msgSend_guid(v66, v67, v68);
              *buf = 138412546;
              v91 = v63;
              v92 = 2112;
              v93 = v69;
              _os_log_impl(&dword_1A823F000, v60, OS_LOG_TYPE_INFO, "deliveryDelay: %@ for messageGUID: %@", buf, 0x16u);
            }
          }

          v70 = dispatch_time(0, 1000000000);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = sub_1A8311FA4;
          block[3] = &unk_1E7810140;
          block[4] = self;
          v81 = v79;
          dispatch_after(v70, MEMORY[0x1E69E96A0], block);
        }
      }

      v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v86, v95, 16);
    }

    while (v76);
  }

  v71 = *MEMORY[0x1E69E9840];
}

- (void)simulateMessageDeliveryForGUID:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      v20 = v4;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "simulateMessageDeliveryForGUID: %@", &v19, 0xCu);
    }
  }

  v8 = objc_msgSend_objectForKeyedSubscript_(self->_guidToMessageItemNeedingAckMap, v5, v4);
  if (v8)
  {
    objc_msgSend__handleIncomingItem_(self, v7, v8);
    v11 = objc_msgSend_delegate(self, v9, v10);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v15 = objc_msgSend_delegate(self, v13, v14);
      objc_msgSend_simulatedChat_didHandleItem_(v15, v16, self, v8);
    }

    objc_msgSend_removeObjectForKey_(self->_guidToMessageItemNeedingAckMap, v13, v4);
  }

  else if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      v20 = v4;
      _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Did not find messageItem for messageGUID: %@. Nothing to process", &v19, 0xCu);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (id)_messagesToProcessFromMessage:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend_hasDataDetectorResults(v4, v5, v6))
  {
    objc_msgSend_messagesBySeparatingRichLinks(v4, v7, v8);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v9 = v34 = 0u;
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v31, v36, 16);
    if (v11)
    {
      v14 = v11;
      v15 = *v32;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(v9);
          }

          v17 = *(*(&v31 + 1) + 8 * i);
          v18 = objc_msgSend_sender(v4, v12, v13, v31);
          objc_msgSend__updateSender_(v17, v19, v18);
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v31, v36, 16);
      }

      while (v14);
    }
  }

  else
  {
    if (objc_msgSend_isStewieChat(self, v7, v8) && (objc_msgSend_text(v4, v20, v21), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend_string(v22, v23, v24), v25 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend_lengthOfBytesUsingEncoding_(v25, v26, 4), v25, v22, v27 >= 0xA1))
    {
      v28 = objc_msgSend_messagesSeparatedByByteLength_(v4, v20, 160);
    }

    else
    {
      v35 = v4;
      v28 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v20, &v35, 1);
    }

    v9 = v28;
  }

  v29 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)_handleIncomingItem:(id)a3
{
  v112 = *MEMORY[0x1E69E9840];
  v96 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v111 = v96;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Handling item: %@", buf, 0xCu);
    }
  }

  if (objc_msgSend_associatedMessageType(v96, v3, v4) == 2)
  {
    v94 = objc_msgSend_array(MEMORY[0x1E695DF70], v6, v7);
    v95 = objc_msgSend_array(MEMORY[0x1E695DF70], v8, v9);
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    obj = objc_msgSend__items(self, v10, v11);
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v104, v109, 16);
    if (!v13)
    {
      goto LABEL_32;
    }

    v14 = *v105;
    while (1)
    {
      v15 = 0;
      do
      {
        if (*v105 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v104 + 1) + 8 * v15);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = v96;
          v19 = v16;
          if (objc_msgSend_messageID(v19, v20, v21))
          {
            v24 = objc_msgSend_pluginSessionGUID(v19, v22, v23);
            v27 = objc_msgSend_associatedMessageGUID(v18, v25, v26);
            if ((objc_msgSend_isEqualToString_(v24, v28, v27) & 1) == 0)
            {

              goto LABEL_18;
            }

            v31 = objc_msgSend_balloonBundleID(v19, v29, v30);
            v34 = objc_msgSend_balloonBundleID(v18, v32, v33);
            isEqualToString = objc_msgSend_isEqualToString_(v31, v35, v34);

            if (isEqualToString)
            {
              if (objc_msgSend_associatedMessageType(v19, v37, v38) == 3)
              {
                v24 = objc_msgSend_payloadData(v19, v39, v40);
                objc_msgSend_addObject_(v95, v41, v24);
                goto LABEL_18;
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_associatedMessageType(v19, v42, v43) == 2)
              {
                v44 = objc_alloc(MEMORY[0x1E69A7EF0]);
                v24 = objc_msgSend_initWithMessageItem_(v44, v45, v19);
                if (objc_msgSend_isFromMe(v19, v46, v47))
                {
                  v50 = objc_msgSend_simulatedAccount(self, v48, v49);
                  objc_msgSend_loginHandle(v50, v51, v52);
                }

                else
                {
                  v50 = objc_msgSend_participants(self, v48, v49);
                  objc_msgSend_firstObject(v50, v53, v54);
                }
                v55 = ;
                if (objc_msgSend_isFromMe(v19, v56, v57))
                {
                  v60 = objc_msgSend_participants(self, v58, v59);
                  objc_msgSend_firstObject(v60, v61, v62);
                }

                else
                {
                  v60 = objc_msgSend_simulatedAccount(self, v58, v59);
                  objc_msgSend_loginHandle(v60, v63, v64);
                }
                v65 = ;
                objc_msgSend__updateContextWithSenderHandle_otherHandle_(v24, v66, v55, v65);

                v69 = objc_msgSend_associatedMessageGUID(v18, v67, v68);
                objc_msgSend_setAssociatedMessageGUID_(v24, v70, v69);

                objc_msgSend_setAssociatedMessageType_(v24, v71, 3);
                v74 = objc_msgSend_breadcrumbText(v18, v72, v73);
                objc_msgSend_setBody_(v24, v75, v74);

                objc_msgSend_addObject_(v94, v76, v24);
                v79 = objc_msgSend_payloadData(v19, v77, v78);
                objc_msgSend_addObject_(v95, v80, v79);

LABEL_18:
              }
            }
          }
        }

        ++v15;
      }

      while (v13 != v15);
      v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v104, v109, 16);
      v13 = v81;
      if (!v81)
      {
LABEL_32:

        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        v82 = v94;
        v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(v82, v83, &v100, v108, 16);
        if (v85)
        {
          v86 = *v101;
          do
          {
            v87 = 0;
            do
            {
              if (*v101 != v86)
              {
                objc_enumerationMutation(v82);
              }

              objc_msgSend__handleIncomingItem_(self, v84, *(*(&v100 + 1) + 8 * v87++));
            }

            while (v85 != v87);
            v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(v82, v84, &v100, v108, 16);
          }

          while (v85);
        }

        if (objc_msgSend_count(v95, v88, v89))
        {
          objc_msgSend_setConsumedSessionPayloads_(v96, v90, v95);
        }

        break;
      }
    }
  }

  v99.receiver = self;
  v99.super_class = IMSimulatedChat;
  v91 = [(IMChat *)&v99 _handleIncomingItem:v96];

  v92 = *MEMORY[0x1E69E9840];
  return v91;
}

- (id)chatIdentifier
{
  v4 = objc_msgSend_simulatedChatIdentifier(self, a2, v2);
  v7 = objc_msgSend_length(v4, v5, v6);

  if (!v7)
  {
    v10 = objc_msgSend_participants(self, v8, v9);
    if (objc_msgSend_count(v10, v11, v12) == 1)
    {
      v15 = objc_msgSend_firstObject(v10, v13, v14);
      v18 = objc_msgSend_ID(v15, v16, v17);
      objc_msgSend_setSimulatedChatIdentifier_(self, v19, v18);
    }

    else
    {
      v15 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v13, v14);
      objc_msgSend_setSimulatedChatIdentifier_(self, v20, v15);
    }
  }

  return objc_msgSend_simulatedChatIdentifier(self, v8, v9);
}

- (void)setDisplayName:(id)a3
{
  v4 = a3;
  simulatedDisplayName = self->_simulatedDisplayName;
  if (simulatedDisplayName != v4)
  {
    v13 = v4;
    simulatedDisplayName = objc_msgSend_isEqualToString_(simulatedDisplayName, v4, v4);
    if ((simulatedDisplayName & 1) == 0)
    {
      v7 = objc_msgSend_copy(v13, v13, v6);
      v8 = self->_simulatedDisplayName;
      self->_simulatedDisplayName = v7;

      v11 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v9, v10);
      objc_msgSend_postNotificationName_object_(v11, v12, @"__kIMChatDisplayNameChangedNotification", self);
    }
  }

  MEMORY[0x1EEE66BB8](simulatedDisplayName);
}

- (void)simulatedChat:(id)a3 didSendMessage:(id)a4
{
  ++self->_currentMessageID;
  v5 = a4;
  v8 = objc_msgSend_currentMessageID(self, v6, v7);
  v11 = objc_msgSend_participants(self, v9, v10);
  v14 = objc_msgSend_firstObject(v11, v12, v13);
  v17 = objc_msgSend_simulatedAccount(self, v15, v16);
  v20 = objc_msgSend_loginHandle(v17, v18, v19);
  v22 = sub_1A8311880(v5, 1, v8, v14, v20, 1);

  objc_msgSend__handleIncomingItem_(self, v21, v22);
}

- (void)simulatedDaemon:(id)a3 willSendBalloonPayload:(id)a4 attachments:(id)a5 messageGUID:(id)a6 bundleID:(id)a7
{
  v61 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v13 = objc_msgSend__messageWithGUID_(self, v12, a6);
  v16 = v13;
  if (v13)
  {
    v51 = v13;
    v52 = self;
    v54 = v10;
    v17 = objc_msgSend_array(MEMORY[0x1E695DF70], v14, v15);
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v53 = v11;
    obj = v11;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v56, v60, 16);
    if (v19)
    {
      v20 = v19;
      v21 = *v57;
      do
      {
        v22 = 0;
        do
        {
          if (*v57 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v56 + 1) + 8 * v22);
          v24 = IMSafeTemporaryDirectory();
          v27 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v25, v26);
          v29 = objc_msgSend_URLByAppendingPathComponent_(v24, v28, v27);
          v32 = objc_msgSend_path(v29, v30, v31);

          objc_msgSend_writeToFile_atomically_(v23, v33, v32, 1);
          v36 = objc_msgSend_sharedInstance(IMFileTransferCenter, v34, v35);
          v38 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v37, v32);
          v40 = objc_msgSend_createNewOutgoingTransferWithLocalFileURL_(v36, v39, v38);
          objc_msgSend_addObject_(v17, v41, v40);

          ++v22;
        }

        while (v20 != v22);
        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v42, &v56, v60, 16);
      }

      while (v20);
    }

    v16 = v51;
    v10 = v54;
    objc_msgSend_setPayloadData_(v51, v43, v54);
    objc_msgSend_setFileTransferGUIDs_(v51, v44, v17);
    objc_msgSend__handleIncomingItem_(v52, v45, v51);
    v48 = objc_msgSend_delegate(v52, v46, v47);
    objc_msgSend_simulatedChat_didSendMessage_(v48, v49, v52, v51);

    v11 = v53;
  }

  v50 = *MEMORY[0x1E69E9840];
}

- (id)_messageWithGUID:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = objc_msgSend__items(self, v5, v6, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v20, v24, 16);
  if (v11)
  {
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = objc_msgSend_guid(v14, v9, v10);
        if (objc_msgSend_isEqualToString_(v15, v16, v4))
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v11 = v14;
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v20, v24, 16);
    }

    while (v11);
  }

LABEL_12:

  v18 = *MEMORY[0x1E69E9840];

  return v11;
}

- (IMSimulatedChatDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end