@interface IMBalloonPluginDataSource
+ (BOOL)isPayloadServiceManatee:(id)manatee;
+ (id)URLForDugongShareURL:(id)l handle:(id)handle metadata:(id)metadata;
+ (id)URLForDugongShareURL:(id)l handle:(id)handle payload:(id)payload;
+ (id)previewSummaryForPluginBundle:(id)bundle;
+ (id)previewSummaryForPluginPayload:(id)payload withBundleID:(id)d previewAttachmentURL:(id *)l previewAttachmentUTI:(id *)i;
+ (id)replaceHandleWithContactNameInString:(id)string forAccount:(id)account additionalHandles:(id)handles;
+ (id)unlocalizedPreviewSummaryForPluginBundle:(id)bundle pluginDisplayName:(id)name;
- (BOOL)_associatedPayloads:(id)payloads shouldUpdateToPayloads:(id)toPayloads;
- (BOOL)_senderIsSameBetweenPayload:(id)payload andOtherPayload:(id)otherPayload;
- (BOOL)isDeferredSend;
- (BOOL)isFromMe;
- (BOOL)isPlayed;
- (CGSize)sizeThatFits:(CGSize)fits;
- (IMBalloonPluginDataSource)initWithPluginPayload:(id)payload;
- (IMBalloonPluginDataSourceDelegate)pluginDataSourceDelegate;
- (IMChat)chat;
- (IMMessage)imMessage;
- (NSArray)allPayloads;
- (NSData)messagePayloadDataForSending;
- (NSString)_imMessageGUID;
- (id)_findMatchForAssociatedPluginPayload:(id)payload inArray:(id)array;
- (id)_overrideURLForOpeningURL:(id)l;
- (id)_replaceHandleWithContactNameInString:(id)string;
- (id)_summaryText;
- (id)description;
- (id)individualPreviewSummary;
- (id)overrideURLForOpeningURL:(id)l;
- (unint64_t)_updateWithPluginPayload:(id)payload associatedPayloads:(id)payloads messageID:(int64_t)d messageGUID:(id)iD;
- (void)_dataSourceDidChange;
- (void)_reloadLatestUnconsumedBreadcrumb;
- (void)_removeTemporaryAttachmentURLs;
- (void)_updatePayload:(id)payload associatedPayloads:(id)payloads messageID:(int64_t)d messageGUID:(id)iD;
- (void)_updateTemporaryAttachmentURLsForPluginPayload;
- (void)beginShowingLastConsumedBreadcrumbForOutgoingPayload:(id)payload;
- (void)checkForAllowedByScreenTime;
- (void)chooseOptions;
- (void)datasourceWasMovedToNewGuid:(id)guid;
- (void)endShowingLastConsumedBreadcrumb;
- (void)invalidateMessageTintColor;
- (void)markAsPlayed;
- (void)needsResize;
- (void)payloadWillSendFromShelf;
- (void)playbackWithCompletionBlock:(id)block;
- (void)pluginPayloadDidChange:(unint64_t)change;
- (void)pluginPayloadShouldSendCollaboration;
- (void)pluginPayloadShouldSendCopy;
- (void)sendPayload:(id)payload attachments:(id)attachments;
- (void)setPayload:(id)payload;
- (void)setPayload:(id)payload attachments:(id)attachments;
- (void)setPluginPayload:(id)payload;
- (void)statusStringNeedsUpdate;
- (void)updatePayload:(id)payload attachments:(id)attachments;
- (void)updatePayloadForShelfAnimation:(id)animation;
@end

@implementation IMBalloonPluginDataSource

- (IMBalloonPluginDataSource)initWithPluginPayload:(id)payload
{
  v93 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  v7 = objc_msgSend_messageGUID(payloadCopy, v5, v6);
  v10 = objc_msgSend_data(payloadCopy, v8, v9);
  v13 = objc_msgSend_dataDetectedResult(payloadCopy, v11, v12);
  v16 = objc_msgSend_url(payloadCopy, v14, v15);
  v18 = objc_msgSend_initWithMessageGUID_payload_dataDetectedResult_url_(self, v17, v7, v10, v13, v16);

  if (v18 || (v80.receiver = 0, v80.super_class = IMBalloonPluginDataSource, (v18 = [(IMBalloonPluginDataSource *)&v80 init]) != 0))
  {
    objc_msgSend_setPluginPayload_(v18, v19, payloadCopy);
    v22 = objc_msgSend_pluginBundleID(payloadCopy, v20, v21);
    bundleID = v18->_bundleID;
    v18->_bundleID = v22;

    v26 = objc_msgSend_url(payloadCopy, v24, v25);
    url = v18->_url;
    v18->_url = v26;

    v30 = objc_msgSend_dataDetectedResult(payloadCopy, v28, v29);
    dataDetectedResult = v18->_dataDetectedResult;
    v18->_dataDetectedResult = v30;

    v34 = objc_msgSend_consumedSessionPayloads(payloadCopy, v32, v33);
    consumedPayloads = v18->_consumedPayloads;
    v18->_consumedPayloads = v34;

    v38 = objc_msgSend_pluginBundleID(payloadCopy, v36, v37);
    isEqualToString = objc_msgSend_isEqualToString_(v38, v39, *MEMORY[0x1E69A69A8]);

    if (isEqualToString)
    {
      objc_msgSend__updateTemporaryAttachmentURLsForPluginPayload(v18, v41, v42);
    }

    if (IMOSLoggingEnabled())
    {
      v43 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = objc_opt_class();
        v47 = objc_msgSend_messageGUID(v18, v45, v46);
        v50 = objc_msgSend_bundleID(v18, v48, v49);
        v53 = objc_msgSend_payload(v18, v51, v52);
        v56 = objc_msgSend_length(v53, v54, v55);
        v59 = objc_msgSend_pluginPayload(v18, v57, v58);
        v62 = objc_msgSend_attachments(v59, v60, v61);
        v65 = objc_msgSend_count(v62, v63, v64);
        *buf = 138413570;
        v82 = v44;
        v83 = 2112;
        v84 = v47;
        v85 = 2112;
        v86 = v50;
        v87 = 2048;
        v88 = v56;
        v89 = 2048;
        v90 = v65;
        v91 = 2048;
        v92 = v18;
        _os_log_impl(&dword_1A823F000, v43, OS_LOG_TYPE_INFO, "Initialized %@(message guid: %@, bundle id: %@) with %tu byte payload, %tu attachments self pointer: %p", buf, 0x3Eu);
      }
    }

    objc_initWeak(buf, v18);
    v68 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v66, v67);
    v71 = objc_msgSend_mainQueue(MEMORY[0x1E696ADC8], v69, v70);
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    v78[2] = sub_1A8274504;
    v78[3] = &unk_1E7810118;
    objc_copyWeak(&v79, buf);
    v73 = objc_msgSend_addObserverForName_object_queue_usingBlock_(v68, v72, @"com.apple.messages.IMDowntimeStateChangedForBundleID", 0, v71, v78);

    objc_msgSend_checkForAllowedByScreenTime(v18, v74, v75);
    objc_destroyWeak(&v79);
    objc_destroyWeak(buf);
  }

  v76 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)checkForAllowedByScreenTime
{
  v4 = objc_msgSend_sharedInstance(IMBalloonPluginManager, a2, v2);
  v7 = objc_msgSend_bundleID(self, v5, v6);
  v19 = objc_msgSend_systemBundleIdentifierForPluginIdentifier_(v4, v8, v7);

  if (v19)
  {
    v11 = IMSharedDowntimeController(v19, v9, v10);
    v13 = objc_msgSend_allowedToShowAppExtensionWithBundleIdentifier_(v11, v12, v19);
    objc_msgSend_setAllowedByScreenTime_(self, v14, v13);
  }

  else
  {
    objc_msgSend_setAllowedByScreenTime_(self, v9, 1);
  }

  v17 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v15, v16);
  objc_msgSend___mainThreadPostNotificationName_object_(v17, v18, @"com.apple.messages.IMBalloonPluginDataSourceScreenTimeAllowedStateChanged", self);
}

- (NSArray)allPayloads
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_payload(self, a2, v2);
  v7 = objc_msgSend_consumedPayloads(self, v5, v6);
  v8 = v7;
  if (!v4)
  {
    v13 = MEMORY[0x1E695E0F0];
    if (v7)
    {
      v13 = v7;
    }

    v12 = v13;
    goto LABEL_7;
  }

  if (v8)
  {
    v8 = objc_msgSend_consumedPayloads(self, v9, v10);
    v12 = objc_msgSend_arrayByAddingObject_(v8, v11, v4);
LABEL_7:
    v14 = v12;

    goto LABEL_9;
  }

  v17[0] = v4;
  v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v9, v17, 1);
LABEL_9:

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (NSString)_imMessageGUID
{
  imMessageGUID = self->__imMessageGUID;
  if (!imMessageGUID)
  {
    v5 = objc_msgSend_messageGUID(self, a2, v2);
    if (objc_msgSend_containsString_(v5, v6, @":"))
    {
      v8 = objc_msgSend_componentsSeparatedByString_(v5, v7, @":");
      v11 = objc_msgSend_firstObject(v8, v9, v10);

      if (v11)
      {
        v12 = v11;

        v5 = v12;
      }
    }

    v13 = self->__imMessageGUID;
    self->__imMessageGUID = v5;

    imMessageGUID = self->__imMessageGUID;
  }

  return imMessageGUID;
}

- (void)setPayload:(id)payload
{
  objc_msgSend_setData_(self->_pluginPayload, a2, payload);

  MEMORY[0x1EEE66B58](self, sel__dataSourceDidChange, v4);
}

- (void)setPayload:(id)payload attachments:(id)attachments
{
  v30 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  attachmentsCopy = attachments;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = MEMORY[0x1E696AD98];
      v13 = objc_msgSend_length(payloadCopy, v10, v11);
      v15 = objc_msgSend_numberWithUnsignedInteger_(v12, v14, v13);
      v16 = MEMORY[0x1E696AD98];
      v19 = objc_msgSend_count(attachmentsCopy, v17, v18);
      v21 = objc_msgSend_numberWithUnsignedInteger_(v16, v20, v19);
      v24 = 138412802;
      selfCopy = self;
      v26 = 2112;
      v27 = v15;
      v28 = 2112;
      v29 = v21;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "self:%@ set payload length %@ attachments count %@", &v24, 0x20u);
    }
  }

  objc_msgSend_setPendingAttachmentData_(self, v8, attachmentsCopy);
  objc_msgSend_setPayload_(self, v22, payloadCopy);

  v23 = *MEMORY[0x1E69E9840];
}

- (NSData)messagePayloadDataForSending
{
  v43 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = MEMORY[0x1E696AD98];
      v9 = objc_msgSend_payload(self, v6, v7);
      v12 = objc_msgSend_length(v9, v10, v11);
      v14 = objc_msgSend_numberWithUnsignedInteger_(v8, v13, v12);
      v15 = MEMORY[0x1E696AD98];
      v18 = objc_msgSend_pendingAttachmentData(self, v16, v17);
      v21 = objc_msgSend_count(v18, v19, v20);
      v23 = objc_msgSend_numberWithUnsignedInteger_(v15, v22, v21);
      v37 = 138412802;
      selfCopy = self;
      v39 = 2112;
      v40 = v14;
      v41 = 2112;
      v42 = v23;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "messagePayloadDataForSending self:%@ payload length %@ attachments count %@", &v37, 0x20u);
    }
  }

  v24 = objc_msgSend_pendingAttachmentData(self, v3, v4);
  v27 = objc_msgSend_count(v24, v25, v26) == 0;

  v32 = objc_msgSend_payload(self, v28, v29);
  if (!v27)
  {
    v33 = objc_msgSend_pendingAttachmentData(self, v30, v31);
    v34 = IMSharedHelperCombinedPluginPayloadDictionaryData();

    v32 = v34;
  }

  v35 = *MEMORY[0x1E69E9840];

  return v32;
}

- (IMMessage)imMessage
{
  v4 = objc_msgSend_chat(self, a2, v2);
  v7 = objc_msgSend__imMessageGUID(self, v5, v6);
  v9 = objc_msgSend_messageForGUID_(v4, v8, v7);

  return v9;
}

- (IMChat)chat
{
  v29 = *MEMORY[0x1E69E9840];
  chat = self->_chat;
  if (!chat)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = objc_msgSend_sharedRegistryIfAvailable(IMChatRegistry, a2, v2, 0);
    v8 = objc_msgSend__imMessageGUID(self, v6, v7);
    v10 = objc_msgSend__cachedChatsWithMessageGUID_(v5, v9, v8);

    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v24, v28, 16);
    if (v14)
    {
      v15 = *v25;
      while (2)
      {
        for (i = 0; i != v14; i = (i + 1))
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v10);
          }

          v17 = *(*(&v24 + 1) + 8 * i);
          v18 = objc_msgSend__imMessageGUID(self, v12, v13);
          v20 = objc_msgSend_messageForGUID_(v17, v19, v18);

          if (v20)
          {
            v14 = v17;
            goto LABEL_12;
          }
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v24, v28, 16);
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v21 = self->_chat;
    self->_chat = v14;

    chat = self->_chat;
  }

  v22 = *MEMORY[0x1E69E9840];

  return chat;
}

- (void)sendPayload:(id)payload attachments:(id)attachments
{
  v67 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  attachmentsCopy = attachments;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = MEMORY[0x1E696AD98];
      v13 = objc_msgSend_length(payloadCopy, v10, v11);
      v15 = objc_msgSend_numberWithUnsignedInteger_(v12, v14, v13);
      v16 = MEMORY[0x1E696AD98];
      v19 = objc_msgSend_count(attachmentsCopy, v17, v18);
      v21 = objc_msgSend_numberWithUnsignedInteger_(v16, v20, v19);
      *buf = 138412802;
      selfCopy = self;
      v63 = 2112;
      v64 = v15;
      v65 = 2112;
      v66 = v21;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "self %@ sendPayload %@ attachments %@", buf, 0x20u);
    }
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v22 = objc_msgSend_sharedRegistryIfAvailable(IMChatRegistry, v7, v8);
  v25 = objc_msgSend__imMessageGUID(self, v23, v24);
  v27 = objc_msgSend__cachedChatsWithMessageGUID_(v22, v26, v25);

  v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v56, v60, 16);
  if (v31)
  {
    v32 = *v57;
    v33 = MEMORY[0x1E69A79F0];
    while (2)
    {
      v34 = 0;
      do
      {
        if (*v57 != v32)
        {
          objc_enumerationMutation(v27);
        }

        v35 = objc_msgSend_account(*(*(&v56 + 1) + 8 * v34), v29, v30);
        v38 = objc_msgSend_service(v35, v36, v37);
        v40 = objc_msgSend_supportsCapability_(v38, v39, *v33);

        if ((v40 & 1) == 0)
        {
          if (IMOSLoggingEnabled())
          {
            v53 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1A823F000, v53, OS_LOG_TYPE_INFO, "Bailing, chat wasn't iMessage", buf, 2u);
            }
          }

          objc_msgSend_updatePayload_attachments_(self, v52, payloadCopy, attachmentsCopy);
          goto LABEL_21;
        }

        ++v34;
      }

      while (v31 != v34);
      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v29, &v56, v60, 16);
      if (v31)
      {
        continue;
      }

      break;
    }
  }

  if (payloadCopy && objc_msgSend_length(payloadCopy, v41, v42))
  {
    v27 = objc_msgSend_sharedController(IMDaemonController, v43, v44);
    v47 = objc_msgSend_remoteDaemon(v27, v45, v46);
    v50 = objc_msgSend_messageGUID(self, v48, v49);
    objc_msgSend_sendBalloonPayload_attachments_withMessageGUID_bundleID_(v47, v51, payloadCopy, attachmentsCopy, v50, self->_bundleID);

LABEL_21:
  }

  v54 = *MEMORY[0x1E69E9840];
}

- (void)updatePayloadForShelfAnimation:(id)animation
{
  v5 = objc_msgSend__updateWithPluginPayload_associatedPayloads_messageID_messageGUID_(self, a2, animation, 0, 0, 0) | 0xB;

  objc_msgSend_pluginPayloadDidChange_(self, v4, v5);
}

- (void)updatePayload:(id)payload attachments:(id)attachments
{
  attachmentsCopy = attachments;
  payloadCopy = payload;
  v20 = objc_msgSend_sharedController(IMDaemonController, v8, v9);
  v12 = objc_msgSend_remoteDaemon(v20, v10, v11);
  v15 = objc_msgSend_bundleID(self, v13, v14);
  v18 = objc_msgSend_messageGUID(self, v16, v17);
  objc_msgSend_updateBalloonPayload_attachments_bundleID_forMessageGUID_(v12, v19, payloadCopy, attachmentsCopy, v15, v18);
}

- (void)_updatePayload:(id)payload associatedPayloads:(id)payloads messageID:(int64_t)d messageGUID:(id)iD
{
  v7 = objc_msgSend__updateWithPluginPayload_associatedPayloads_messageID_messageGUID_(self, a2, payload, payloads, d, iD);
  if (v7)
  {
    v9 = v7;
    objc_msgSend_pluginPayloadDidChange_(self, v8, v7);
    if (v9)
    {

      MEMORY[0x1EEE66B58](self, sel_payloadDidChange, v10);
    }
  }
}

- (BOOL)_senderIsSameBetweenPayload:(id)payload andOtherPayload:(id)otherPayload
{
  payloadCopy = payload;
  otherPayloadCopy = otherPayload;
  v9 = objc_msgSend_sender(payloadCopy, v7, v8);
  if (v9)
  {
  }

  else
  {
    v14 = objc_msgSend_sender(otherPayloadCopy, v10, v11);

    if (!v14)
    {
      LOBYTE(v17) = 1;
      goto LABEL_9;
    }
  }

  v17 = objc_msgSend_sender(payloadCopy, v12, v13);
  if (v17)
  {
    v18 = objc_msgSend_sender(otherPayloadCopy, v15, v16);

    if (v18)
    {
      v21 = objc_msgSend_sender(payloadCopy, v19, v20);
      v24 = objc_msgSend_sender(otherPayloadCopy, v22, v23);
      LOBYTE(v17) = objc_msgSend_isEqualToString_(v21, v25, v24);
    }

    else
    {
      LOBYTE(v17) = 0;
    }
  }

LABEL_9:

  return v17;
}

- (void)_updateTemporaryAttachmentURLsForPluginPayload
{
  v90 = *MEMORY[0x1E69E9840];
  if (!self->_temporaryAttachmentURLs)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    temporaryAttachmentURLs = self->_temporaryAttachmentURLs;
    self->_temporaryAttachmentURLs = v3;
  }

  v76 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, v2);
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v7 = objc_msgSend_pluginPayload(self, v5, v6);
  obj = objc_msgSend_attachments(v7, v8, v9);

  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v79, v89, 16);
  if (v11)
  {
    v13 = *v80;
    *&v12 = 138412802;
    v73 = v12;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v80 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v79 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v15;
          v20 = objc_msgSend_path(v17, v18, v19);
          v21 = IMSafeTemporaryDirectory();
          v24 = objc_msgSend_path(v21, v22, v23);
          hasPrefix = objc_msgSend_hasPrefix_(v20, v25, v24);

          if (hasPrefix)
          {
            v28 = IMSafeTemporaryDirectory();
            v31 = objc_msgSend_path(v28, v29, v30);
            v34 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v32, v33);
            v36 = objc_msgSend_stringByAppendingPathComponent_(v31, v35, v34);

            v39 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v37, v38);
            v78 = 0;
            LODWORD(v28) = objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v39, v40, v36, 1, 0, &v78);
            v41 = v78;

            if (v28)
            {
              v44 = MEMORY[0x1E695DFF8];
              v45 = objc_msgSend_path(v17, v42, v43);
              v48 = objc_msgSend_lastPathComponent(v45, v46, v47);
              v50 = objc_msgSend_stringByAppendingPathComponent_(v36, v49, v48);
              v52 = objc_msgSend_fileURLWithPath_(v44, v51, v50);

              v55 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v53, v54);
              v77 = 0;
              LODWORD(v50) = objc_msgSend_copyItemAtURL_toURL_error_(v55, v56, v17, v52, &v77);
              v57 = v77;

              if (v50)
              {
                objc_msgSend_addObject_(v76, v58, v52);
                v61 = objc_msgSend_temporaryAttachmentURLs(self, v59, v60);
                objc_msgSend_addObject_(v61, v62, v52);
              }

              else
              {
                if (IMOSLoggingEnabled())
                {
                  v67 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
                  {
                    *buf = v73;
                    v84 = v17;
                    v85 = 2112;
                    v86 = v52;
                    v87 = 2112;
                    v88 = v57;
                    _os_log_impl(&dword_1A823F000, v67, OS_LOG_TYPE_INFO, "IMBalloonPluginDataSource failed to link temporary file URL %@ to %@ (error: %@)", buf, 0x20u);
                  }
                }

                objc_msgSend_addObject_(v76, v66, v17, v73);
              }
            }

            else
            {
              if (IMOSLoggingEnabled())
              {
                v65 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v84 = v36;
                  v85 = 2112;
                  v86 = v41;
                  _os_log_impl(&dword_1A823F000, v65, OS_LOG_TYPE_INFO, "IMBalloonPluginDataSource failed to create temporary directory at %@ (error: %@)", buf, 0x16u);
                }
              }

              objc_msgSend_addObject_(v76, v64, v17, v73);
            }
          }

          else
          {
            objc_msgSend_addObject_(v76, v27, v17);
          }
        }

        else
        {
          objc_msgSend_addObject_(v76, v16, v15);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v63, &v79, v89, 16);
    }

    while (v11);
  }

  v70 = objc_msgSend_pluginPayload(self, v68, v69);
  objc_msgSend_setAttachments_(v70, v71, v76);

  v72 = *MEMORY[0x1E69E9840];
}

- (void)_removeTemporaryAttachmentURLs
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_temporaryAttachmentURLs(self, a2, v2);
  v6 = objc_msgSend_count(v3, v4, v5);

  if (v6)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v9 = objc_msgSend_pluginPayload(self, v7, v8);
    v12 = objc_msgSend_attachments(v9, v10, v11);

    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v48, v56, 16);
    if (!v14)
    {
      goto LABEL_23;
    }

    v15 = *v49;
    while (1)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v49 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v48 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = v17;
          v22 = objc_msgSend_temporaryAttachmentURLs(self, v20, v21);
          v24 = objc_msgSend_containsObject_(v22, v23, v19);

          if (v24)
          {
            v27 = objc_msgSend_path(v19, v25, v26);
            v28 = IMSafeTemporaryDirectory();
            v31 = objc_msgSend_path(v28, v29, v30);
            hasPrefix = objc_msgSend_hasPrefix_(v27, v32, v31);

            if (hasPrefix)
            {
              v36 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v34, v35);
              v39 = objc_msgSend_path(v19, v37, v38);
              v47 = 0;
              v41 = objc_msgSend_removeItemAtPath_error_(v36, v40, v39, &v47);
              v42 = v47;

              if ((v41 & 1) == 0 && IMOSLoggingEnabled())
              {
                v43 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v53 = v19;
                  v54 = 2112;
                  v55 = v42;
                  _os_log_impl(&dword_1A823F000, v43, OS_LOG_TYPE_INFO, "IMBalloonPluginDataSource failed to remove temporary file URL %@ (error: %@)", buf, 0x16u);
                }
              }

              goto LABEL_19;
            }

            if (IMOSLoggingEnabled())
            {
              v42 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v53 = v19;
                _os_log_impl(&dword_1A823F000, v42, OS_LOG_TYPE_INFO, "IMBalloonPluginDataSource NOT removing non-temporary file URL %@", buf, 0xCu);
              }

LABEL_19:
            }
          }

          continue;
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v18, &v48, v56, 16);
      if (!v14)
      {
LABEL_23:

        objc_msgSend_setTemporaryAttachmentURLs_(self, v44, 0);
        break;
      }
    }
  }

  v45 = *MEMORY[0x1E69E9840];
}

- (unint64_t)_updateWithPluginPayload:(id)payload associatedPayloads:(id)payloads messageID:(int64_t)d messageGUID:(id)iD
{
  v202 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  obj = payloads;
  payloadsCopy = payloads;
  iDCopy = iD;
  v13 = objc_msgSend_bundleID(self, v11, v12);
  v14 = *MEMORY[0x1E69A69A8];
  if (objc_msgSend_isEqualToString_(v13, v15, *MEMORY[0x1E69A69A8]))
  {
    if (!payloadCopy || !d)
    {

      goto LABEL_14;
    }

    MessageInSession = objc_msgSend_messageIDOfLastMessageInSession(self, v16, v17);

    if (MessageInSession > d)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if (!payloadCopy)
    {
      goto LABEL_14;
    }
  }

  if (d < 1)
  {
LABEL_10:
    v185 = objc_msgSend_pluginPayload(self, v19, v20);
    v23 = objc_msgSend_copy(v185, v21, v22);
    location = &self->_associatedPluginPayloads;
    v180 = self->_associatedPluginPayloads;
    v26 = objc_msgSend_messageGUID(payloadCopy, v24, v25);
    objc_msgSend_setMessageGUID_(v23, v27, v26);

    v30 = objc_msgSend_pluginSessionGUID(payloadCopy, v28, v29);
    objc_msgSend_setPluginSessionGUID_(v23, v31, v30);

    v34 = objc_msgSend_liveEditableInEntryView(payloadCopy, v32, v33);
    objc_msgSend_setLiveEditableInEntryView_(v23, v35, v34);
    shouldExpire = objc_msgSend_shouldExpire(payloadCopy, v36, v37);
    objc_msgSend_setShouldExpire_(v23, v39, shouldExpire);
    if (objc_msgSend__senderIsSameBetweenPayload_andOtherPayload_(self, v40, payloadCopy, v23) && (v43 = objc_msgSend_isFromMe(payloadCopy, v41, v42), v43 == objc_msgSend_isFromMe(v23, v44, v45)))
    {
      v52 = 0;
    }

    else
    {
      v46 = objc_msgSend_sender(payloadCopy, v41, v42);
      objc_msgSend_setSender_(v23, v47, v46);

      v50 = objc_msgSend_isFromMe(payloadCopy, v48, v49);
      objc_msgSend_setIsFromMe_(v23, v51, v50);
      v52 = 8;
    }

    v54 = objc_msgSend_attachments(payloadCopy, v41, v42);
    if (objc_msgSend_count(v54, v55, v56))
    {
      v59 = 1;
    }

    else
    {
      v60 = objc_msgSend_attachments(payloadCopy, v57, v58);
      v63 = objc_msgSend_count(v60, v61, v62);
      v66 = objc_msgSend_attachments(v185, v64, v65);
      v59 = v63 != objc_msgSend_count(v66, v67, v68);
    }

    isEqualAttachmentFileURLsToPluginPayload = objc_msgSend_isEqualAttachmentFileURLsToPluginPayload_(v185, v69, payloadCopy);
    if (IMOSLoggingEnabled())
    {
      v73 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
      {
        v74 = @"NO";
        if (v59)
        {
          v75 = @"YES";
        }

        else
        {
          v75 = @"NO";
        }

        if (!isEqualAttachmentFileURLsToPluginPayload)
        {
          v74 = @"YES";
        }

        *buf = 138412546;
        v187 = v75;
        v188 = 2112;
        v189 = v74;
        _os_log_impl(&dword_1A823F000, v73, OS_LOG_TYPE_INFO, "payloadAttachmentCountChanged %@ needsPayloadAttachmentUpdate %@", buf, 0x16u);
      }
    }

    if (!(isEqualAttachmentFileURLsToPluginPayload & 1 | !v59))
    {
      v76 = objc_msgSend_bundleID(self, v71, v72);
      isEqualToString = objc_msgSend_isEqualToString_(v76, v77, v14);

      if (((d > 0) & isEqualToString) != 0)
      {
        objc_msgSend__removeTemporaryAttachmentURLs(self, v79, v80);
      }

      v81 = objc_msgSend_attachments(payloadCopy, v79, v80);
      if (objc_msgSend_count(v81, v82, v83))
      {
        v86 = objc_msgSend_attachments(payloadCopy, v84, v85);
      }

      else
      {
        v86 = 0;
      }

      v89 = objc_msgSend_fileTransferGUIDs(payloadCopy, v87, v88);
      if (objc_msgSend_count(v89, v90, v91))
      {
        v94 = objc_msgSend_fileTransferGUIDs(payloadCopy, v92, v93);
      }

      else
      {
        v94 = 0;
      }

      objc_msgSend_setAttachments_(v23, v95, v86);
      objc_msgSend_setFileTransferGUIDs_(v23, v96, v94);

      v52 |= 2uLL;
    }

    v97 = objc_msgSend_data(v185, v71, v72);
    v100 = objc_msgSend_data(payloadCopy, v98, v99);
    isEqualToData = objc_msgSend_isEqualToData_(v97, v101, v100);

    if ((isEqualToData & 1) == 0)
    {
      v105 = objc_msgSend_consumedSessionPayloads(payloadCopy, v103, v104);
      consumedPayloads = self->_consumedPayloads;
      self->_consumedPayloads = v105;

      v109 = objc_msgSend_data(payloadCopy, v107, v108);
      objc_msgSend_setData_(v23, v110, v109);

      v52 |= 1uLL;
    }

    if (objc_msgSend__associatedPayloads_shouldUpdateToPayloads_(self, v103, v180, payloadsCopy))
    {
      v53 = v52 | 0x10;
    }

    else
    {
      v53 = v52;
    }

    if (!objc_msgSend_supportsCollaboration(v185, v111, v112) || !objc_msgSend_supportsCollaboration(payloadCopy, v113, v114))
    {
      goto LABEL_60;
    }

    v115 = objc_msgSend_collaborationMetadata(v185, v113, v114);
    v118 = objc_msgSend_collaborationMetadata(payloadCopy, v116, v117);
    if (objc_msgSend_isEqual_(v115, v119, v118))
    {
    }

    else
    {
      v122 = objc_msgSend_collaborationMetadata(payloadCopy, v120, v121);
      v123 = v122 == 0;

      if (v123)
      {
        goto LABEL_50;
      }

      v115 = objc_msgSend_collaborationMetadata(payloadCopy, v124, v125);
      objc_msgSend_setCollaborationMetadata_(v23, v126, v115);
    }

LABEL_50:
    v127 = objc_msgSend_datasource(v185, v124, v125);
    v130 = objc_msgSend_datasource(payloadCopy, v128, v129);
    if (objc_msgSend_isEqual_(v127, v131, v130))
    {
    }

    else
    {
      v134 = objc_msgSend_datasource(payloadCopy, v132, v133);
      v135 = v134 == 0;

      if (v135)
      {
LABEL_55:
        v139 = objc_msgSend_collaborationOptionsSummary(v185, v136, v137);
        v142 = objc_msgSend_collaborationOptionsSummary(payloadCopy, v140, v141);
        if (objc_msgSend_isEqual_(v139, v143, v142))
        {
        }

        else
        {
          v146 = objc_msgSend_collaborationOptionsSummary(payloadCopy, v144, v145);
          v147 = v146 == 0;

          if (v147)
          {
            goto LABEL_60;
          }

          v139 = objc_msgSend_collaborationOptionsSummary(payloadCopy, v113, v114);
          objc_msgSend_setCollaborationOptionsSummary_(v23, v148, v139);
        }

LABEL_60:
        isPlayed = objc_msgSend_isPlayed(v185, v113, v114);
        if (isPlayed == objc_msgSend_isPlayed(payloadCopy, v150, v151))
        {
          if (!v53)
          {
LABEL_78:

            goto LABEL_79;
          }
        }

        else
        {
          v154 = objc_msgSend_isPlayed(payloadCopy, v152, v153);
          objc_msgSend_setIsPlayed_(v23, v155, v154);
          v53 |= 4uLL;
        }

        objc_msgSend_setPluginPayload_(self, v152, v23);
        if ((v53 & 0x10) != 0)
        {
          objc_storeStrong(location, obj);
        }

        if (IMOSLoggingEnabled())
        {
          v156 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v156, OS_LOG_TYPE_INFO))
          {
            obja = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v157, d);
            v178 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v158, v53);
            v161 = objc_msgSend_sender(v185, v159, v160);
            if (objc_msgSend_isFromMe(v185, v162, v163))
            {
              v166 = @"YES";
            }

            else
            {
              v166 = @"NO";
            }

            v167 = objc_msgSend_sender(v23, v164, v165);
            v170 = objc_msgSend_isFromMe(v23, v168, v169);
            v173 = objc_msgSend_count(*location, v171, v172);
            if (v170)
            {
              v174 = @"YES";
            }

            else
            {
              v174 = @"NO";
            }

            *buf = 138414082;
            if (v173)
            {
              v175 = @"YES";
            }

            else
            {
              v175 = @"NO";
            }

            v187 = iDCopy;
            v188 = 2112;
            v189 = obja;
            v190 = 2112;
            v191 = v178;
            v192 = 2112;
            v193 = v161;
            v194 = 2112;
            v195 = v166;
            v196 = 2112;
            v197 = v167;
            v198 = 2112;
            v199 = v174;
            v200 = 2112;
            v201 = v175;
            _os_log_impl(&dword_1A823F000, v156, OS_LOG_TYPE_INFO, "after update messageGUID %@ messageID %@ updateFlags %@ old payload sender %@ old payload isFromMe %@ new sender %@ new isFromMe %@ hasAssociatedPayloads: %@", buf, 0x52u);
          }
        }

        goto LABEL_78;
      }

      v127 = objc_msgSend_datasource(payloadCopy, v136, v137);
      objc_msgSend_setDatasource_(v23, v138, v127);
    }

    goto LABEL_55;
  }

  if (objc_msgSend_messageIDOfLastMessageInSession(self, v19, v20) <= d)
  {
    self->_messageIDOfLastMessageInSession = d;
    objc_storeStrong(&self->_guidOfLastMessageInSession, iD);
    goto LABEL_10;
  }

LABEL_14:
  v53 = 0;
LABEL_79:

  v176 = *MEMORY[0x1E69E9840];
  return v53;
}

- (BOOL)_associatedPayloads:(id)payloads shouldUpdateToPayloads:(id)toPayloads
{
  v43 = *MEMORY[0x1E69E9840];
  payloadsCopy = payloads;
  toPayloadsCopy = toPayloads;
  if (objc_msgSend_isEqualToArray_(payloadsCopy, v8, toPayloadsCopy))
  {
    v11 = 0;
    goto LABEL_23;
  }

  v12 = objc_msgSend_count(payloadsCopy, v9, v10);
  if (v12 < objc_msgSend_count(toPayloadsCopy, v13, v14))
  {
    v15 = IMLogHandleForCategory();
    v11 = 1;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Associated payloads count is larger. UPDATE", buf, 2u);
    }

    goto LABEL_22;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v15 = toPayloadsCopy;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v37, v42, 16);
  if (!v17)
  {
    goto LABEL_15;
  }

  v19 = v17;
  v20 = *v38;
  obj = v15;
  while (2)
  {
    for (i = 0; i != v19; ++i)
    {
      if (*v38 != v20)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v37 + 1) + 8 * i);
      v25 = objc_msgSend__findMatchForAssociatedPluginPayload_inArray_(self, v18, v22, payloadsCopy);
      if (!v25)
      {
        v32 = IMLogHandleForCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v33 = "No match for a new item. UPDATE";
LABEL_20:
          _os_log_impl(&dword_1A823F000, v32, OS_LOG_TYPE_INFO, v33, buf, 2u);
        }

LABEL_21:
        v15 = obj;

        v11 = 1;
        goto LABEL_22;
      }

      v26 = objc_msgSend_time(v22, v23, v24);
      v29 = objc_msgSend_time(v25, v27, v28);
      v31 = objc_msgSend_compare_(v26, v30, v29);

      if (v31 == 1)
      {
        v32 = IMLogHandleForCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v33 = "New payload has a newer time. UPDATE";
          goto LABEL_20;
        }

        goto LABEL_21;
      }
    }

    v15 = obj;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v37, v42, 16);
    if (v19)
    {
      continue;
    }

    break;
  }

LABEL_15:
  v11 = 0;
LABEL_22:

LABEL_23:
  v34 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)_findMatchForAssociatedPluginPayload:(id)payload inArray:(id)array
{
  v47 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  arrayCopy = array;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(arrayCopy, v7, &v42, v46, 16);
  if (!v8)
  {
    goto LABEL_14;
  }

  v11 = v8;
  v12 = *v43;
  v39 = arrayCopy;
  v40 = *v43;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v43 != v12)
      {
        objc_enumerationMutation(arrayCopy);
      }

      v14 = *(*(&v42 + 1) + 8 * i);
      v15 = objc_msgSend_sender(v14, v9, v10);
      v18 = objc_msgSend_sender(payloadCopy, v16, v17);
      if (!objc_msgSend_isEqualToString_(v15, v19, v18))
      {
        goto LABEL_11;
      }

      v22 = objc_msgSend_associatedMessageGUID(v14, v20, v21);
      v25 = objc_msgSend_associatedMessageGUID(payloadCopy, v23, v24);
      if (!objc_msgSend_isEqualToString_(v22, v26, v25))
      {

LABEL_11:
        continue;
      }

      v29 = objc_msgSend_pluginBundleID(v14, v27, v28);
      objc_msgSend_pluginBundleID(payloadCopy, v30, v31);
      v32 = v11;
      v34 = v33 = payloadCopy;
      isEqualToString = objc_msgSend_isEqualToString_(v29, v35, v34);

      payloadCopy = v33;
      v11 = v32;

      arrayCopy = v39;
      v12 = v40;

      if (isEqualToString)
      {
        v36 = v14;
        goto LABEL_15;
      }
    }

    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(arrayCopy, v9, &v42, v46, 16);
  }

  while (v11);
LABEL_14:
  v36 = 0;
LABEL_15:

  v37 = *MEMORY[0x1E69E9840];

  return v36;
}

- (void)setPluginPayload:(id)payload
{
  payloadCopy = payload;
  pluginPayload = self->_pluginPayload;
  if (pluginPayload != payloadCopy)
  {
    objc_msgSend_setDatasource_(pluginPayload, payloadCopy, 0);
    objc_storeStrong(&self->_pluginPayload, payload);
    objc_msgSend_setDatasource_(self->_pluginPayload, v7, self);
    imMessageGUID = self->__imMessageGUID;
    self->__imMessageGUID = 0;
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isFromMe
{
  v3 = objc_msgSend_pluginPayload(self, a2, v2);
  v6 = objc_msgSend_isFromMe(v3, v4, v5);

  return v6;
}

- (BOOL)isPlayed
{
  v3 = objc_msgSend_pluginPayload(self, a2, v2);
  isPlayed = objc_msgSend_isPlayed(v3, v4, v5);

  return isPlayed;
}

- (void)pluginPayloadDidChange:(unint64_t)change
{
  v40 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v9 = objc_msgSend_messageGUID(self, v7, v8);
      v12 = objc_msgSend_bundleID(self, v10, v11);
      v15 = objc_msgSend_payload(self, v13, v14);
      v18 = objc_msgSend_length(v15, v16, v17);
      v21 = objc_msgSend_pluginPayload(self, v19, v20);
      v24 = objc_msgSend_attachments(v21, v22, v23);
      v28 = 138413570;
      v29 = v6;
      v30 = 2112;
      v31 = v9;
      v32 = 2112;
      v33 = v12;
      v34 = 2048;
      v35 = v18;
      v36 = 2048;
      v37 = objc_msgSend_count(v24, v25, v26);
      v38 = 2048;
      changeCopy = change;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "pluginPayloadDidChange %@(message guid: %@, bundle id: %@) updated: %tu byte payload, %tu attachments (change flags: %tu)", &v28, 0x3Eu);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)payloadWillSendFromShelf
{
  v7 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "payloadWillSendFromShelf: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)invalidateMessageTintColor
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend__imMessageGUID(self, a2, v2);
  v7 = objc_msgSend_stagingContext(self, v5, v6);
  v10 = objc_msgSend_transientIdentifier(v7, v8, v9);

  if (v10)
  {
    v17 = @"__kIMPluginDataSourceTransientIdentifierKey";
    v18[0] = v10;
    v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v11, v18, &v17, 1);
  }

  else
  {
    v13 = MEMORY[0x1E695E0F8];
  }

  v14 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v11, v12);
  objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v14, v15, @"__kIMPayloadDidInvalidateMessageTintColor", v4, v13);

  v16 = *MEMORY[0x1E69E9840];
}

- (void)statusStringNeedsUpdate
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_sharedRegistryIfAvailable(IMChatRegistry, a2, v2);
  v7 = objc_msgSend__imMessageGUID(self, v5, v6);
  v37 = objc_msgSend__cachedChatsWithMessageGUID_(v4, v8, v7);

  v9 = v37;
  if (objc_msgSend_count(v37, v10, v11))
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v12 = v37;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v38, v44, 16);
    if (v14)
    {
      v15 = *v39;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v39 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v38 + 1) + 8 * i);
          if (IMOSLoggingEnabled())
          {
            v20 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              v23 = objc_msgSend__imMessageGUID(self, v21, v22);
              *buf = 138412290;
              v43 = v23;
              _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Updating status message for guid: %@", buf, 0xCu);
            }
          }

          v24 = objc_msgSend__imMessageGUID(self, v18, v19);
          v26 = objc_msgSend_messageForGUID_(v17, v25, v24);

          v29 = objc_msgSend__imMessageItem(v26, v27, v28);
          objc_msgSend__handleIncomingItem_updateRecipient_(v17, v30, v29, 0);
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v31, &v38, v44, 16);
      }

      while (v14);
    }

LABEL_18:
    v9 = v37;
    goto LABEL_19;
  }

  if (IMOSLoggingEnabled())
  {
    v32 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v35 = objc_msgSend__imMessageGUID(self, v33, v34);
      *buf = 138412290;
      v43 = v35;
      _os_log_impl(&dword_1A823F000, v32, OS_LOG_TYPE_INFO, "No chat found for message guid: %@", buf, 0xCu);
    }

    goto LABEL_18;
  }

LABEL_19:

  v36 = *MEMORY[0x1E69E9840];
}

- (void)needsResize
{
  v88 = *MEMORY[0x1E69E9840];
  objc_msgSend_setHasInvalidatedSize_(self, a2, 1);
  v5 = objc_msgSend_sharedRegistryIfAvailable(IMChatRegistry, v3, v4);
  v8 = objc_msgSend__imMessageGUID(self, v6, v7);
  v75 = objc_msgSend__cachedChatsWithMessageGUID_(v5, v9, v8);

  if (objc_msgSend_payloadInShelf(self, v10, v11))
  {
    v14 = objc_msgSend_pluginPayload(self, v12, v13);
    v17 = objc_msgSend_liveEditableInEntryView(v14, v15, v16);
  }

  else
  {
    v17 = 0;
  }

  if (!objc_msgSend_count(v75, v12, v13) || (v17 & 1) != 0)
  {
    if (IMOSLoggingEnabled())
    {
      v59 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
      {
        v62 = objc_msgSend__imMessageGUID(self, v60, v61);
        *buf = 138412290;
        v86 = v62;
        _os_log_impl(&dword_1A823F000, v59, OS_LOG_TYPE_INFO, "No chat found for message guid: %@", buf, 0xCu);
      }
    }

    v63 = objc_msgSend_stagingContext(self, v57, v58);
    v66 = objc_msgSend_transientIdentifier(v63, v64, v65);

    if (v66)
    {
      v83 = @"__kIMPluginDataSourceTransientIdentifierKey";
      v84 = v66;
      obj = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v67, &v84, &v83, 1);
    }

    else
    {
      obj = MEMORY[0x1E695E0F8];
    }

    v69 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v67, v68);
    v72 = objc_msgSend__imMessageGUID(self, v70, v71);
    objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v69, v73, @"__kIMPayloadNeedsResizing", v72, obj);
  }

  else
  {
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    obj = v75;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v79, v87, 16);
    if (v19)
    {
      v20 = *v80;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v80 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v79 + 1) + 8 * i);
          if (IMOSLoggingEnabled())
          {
            v25 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              v28 = objc_msgSend__imMessageGUID(self, v26, v27);
              *buf = 138412290;
              v86 = v28;
              _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Updating balloon size for guid: %@", buf, 0xCu);
            }
          }

          v29 = objc_msgSend_inlineReplyController(v22, v23, v24);
          v30 = v29 == 0;

          if (v30)
          {
            v50 = objc_msgSend__imMessageGUID(self, v31, v32);
            v52 = objc_msgSend_messageForGUID_(v22, v51, v50);
            v33 = objc_msgSend__imMessageItem(v52, v53, v54);

            objc_msgSend__handleIncomingItem_updateRecipient_suppressNotification_updateReplyCounts_(v22, v55, v33, 0, 0, 0);
          }

          else
          {
            v33 = objc_msgSend_inlineReplyController(v22, v31, v32);
            v36 = objc_msgSend__imMessageGUID(self, v34, v35);
            v38 = objc_msgSend__itemForGUID_(v33, v37, v36);

            v41 = objc_msgSend__imMessageGUID(self, v39, v40);
            v43 = objc_msgSend_messageForGUID_(v22, v42, v41);
            v46 = objc_msgSend__imMessageItem(v43, v44, v45);

            v77[0] = MEMORY[0x1E69E9820];
            v77[1] = 3221225472;
            v77[2] = sub_1A82774D4;
            v77[3] = &unk_1E7810140;
            v77[4] = v22;
            v78 = v46;
            v47 = v46;
            objc_msgSend_performActionDisallowingItemInsert_(v33, v48, v77);
            objc_msgSend_insertItem_(v33, v49, v38);
          }
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v56, &v79, v87, 16);
      }

      while (v19);
    }
  }

  v74 = *MEMORY[0x1E69E9840];
}

- (void)markAsPlayed
{
  v47 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_allowedByScreenTime(self, a2, v2) && (objc_msgSend_isPlayed(self, v4, v5) & 1) == 0)
  {
    v8 = objc_msgSend_bundleID(self, v6, v7);
    isEqualToString = objc_msgSend_isEqualToString_(v8, v9, *MEMORY[0x1E69A69A8]);

    if (isEqualToString)
    {
      v15 = objc_msgSend__imMessageGUID(self, v11, v12);
    }

    else
    {
      v15 = objc_msgSend_guidOfLastMessageInSession(self, v11, v12);
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v46 = v15;
          _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Marking message %@ as played for App Message", buf, 0xCu);
        }
      }
    }

    v17 = objc_msgSend_sharedRegistryIfAvailable(IMChatRegistry, v13, v14);
    v39 = objc_msgSend__cachedChatsWithMessageGUID_(v17, v18, v15);

    if (objc_msgSend_count(v39, v19, v20))
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v21 = v39;
      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v40, v44, 16);
      if (v23)
      {
        v24 = *v41;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v41 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v40 + 1) + 8 * i);
            if (IMOSLoggingEnabled())
            {
              v28 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v46 = v15;
                _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_INFO, "marking message as played guid: %@", buf, 0xCu);
              }
            }

            v29 = objc_msgSend_messageForGUID_(v26, v27, v15);
            v32 = v29;
            if (v29)
            {
              v33 = objc_msgSend__imMessageItem(v29, v30, v31);
              objc_msgSend__markItemAsPlayed_(v26, v34, v33);

              if (IMOSLoggingEnabled())
              {
                v35 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v46 = v15;
                  _os_log_impl(&dword_1A823F000, v35, OS_LOG_TYPE_INFO, "Did mark message as played guid: %@", buf, 0xCu);
                }
              }
            }
          }

          v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v36, &v40, v44, 16);
        }

        while (v23);
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v37 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v46 = v15;
        _os_log_impl(&dword_1A823F000, v37, OS_LOG_TYPE_INFO, "No chat found for message guid to mark as played: %@", buf, 0xCu);
      }
    }
  }

  v38 = *MEMORY[0x1E69E9840];
}

- (void)playbackWithCompletionBlock:(id)block
{
  blockCopy = block;
  v6 = objc_msgSend_playbackType(self, v4, v5);
  if (blockCopy && !v6)
  {
    v6 = blockCopy[2](blockCopy, 0);
  }

  MEMORY[0x1EEE66BB8](v6);
}

+ (id)unlocalizedPreviewSummaryForPluginBundle:(id)bundle pluginDisplayName:(id)name
{
  bundleCopy = bundle;
  nameCopy = name;
  if (objc_msgSend_isEqualToString_(bundleCopy, v7, *MEMORY[0x1E69A69E0]))
  {
    v9 = @"a Handwritten Message";
  }

  else if (objc_msgSend_isEqualToString_(bundleCopy, v8, *MEMORY[0x1E69A6A00]) & 1) != 0 || (v10 = *MEMORY[0x1E69A6A08], IMBalloonExtensionIDWithSuffix(), v11 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(bundleCopy, v12, v11), v11, (isEqualToString))
  {
    v9 = @"a Photo Message";
  }

  else if (objc_msgSend_isEqualToString_(bundleCopy, v14, *MEMORY[0x1E69A69A8]))
  {
    v9 = @"a Digital Touch Message";
  }

  else
  {
    v18 = objc_msgSend_sharedInstance(IMBalloonPluginManager, v16, v17);
    v20 = objc_msgSend_balloonPluginForBundleID_(v18, v19, bundleCopy);

    v23 = objc_msgSend_identifier(v20, v21, v22);
    if (objc_msgSend_isEqualToString_(v23, v24, bundleCopy))
    {
      v27 = objc_msgSend_browserDisplayName(v20, v25, v26);
    }

    else
    {
      v27 = nameCopy;
    }

    v28 = v27;

    if (objc_msgSend_length(v28, v29, v30))
    {
      v9 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v31, @"1 %@ Message", v28);
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (id)previewSummaryForPluginBundle:(id)bundle
{
  bundleCopy = bundle;
  v6 = objc_msgSend_sharedInstance(IMBalloonPluginManager, v4, v5);
  v8 = objc_msgSend_dataSourceClassForBundleID_(v6, v7, bundleCopy);

  v11 = objc_msgSend_previewSummary(v8, v9, v10);
  if (v11)
  {
    v13 = v11;
    goto LABEL_13;
  }

  if (objc_msgSend_isEqualToString_(bundleCopy, v12, *MEMORY[0x1E69A69E0]))
  {
    v15 = @"Handwritten Message";
  }

  else if (objc_msgSend_isEqualToString_(bundleCopy, v14, *MEMORY[0x1E69A6A00]) & 1) != 0 || (v16 = *MEMORY[0x1E69A6A08], IMBalloonExtensionIDWithSuffix(), v17 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend_isEqualToString_(bundleCopy, v18, v17), v17, (v19))
  {
    v15 = @"Photo Message";
  }

  else if (objc_msgSend_isEqualToString_(bundleCopy, v20, *MEMORY[0x1E69A69A8]))
  {
    v15 = @"Digital Touch Message";
  }

  else if (objc_msgSend_isEqualToString_(bundleCopy, v39, *MEMORY[0x1E69A6930]) & 1) != 0 || (IMBalloonExtensionIDWithSuffix(), v40 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend_isEqualToString_(bundleCopy, v41, v40), v40, (v42))
  {
    v15 = @"CHECK_IN_MESSAGE";
  }

  else
  {
    v43 = *MEMORY[0x1E69A6928];
    v44 = IMBalloonExtensionIDWithSuffix();
    isEqualToString = objc_msgSend_isEqualToString_(bundleCopy, v45, v44);

    if (!isEqualToString)
    {
      goto LABEL_9;
    }

    v15 = @"POLL_VOTE_MESSAGE";
  }

  v21 = sub_1A8361964();
  v13 = objc_msgSend_localizedStringForKey_value_table_(v21, v22, v15, &stru_1F1B76F98, @"IMCoreLocalizable");

  if (!v13)
  {
LABEL_9:
    v25 = objc_msgSend_sharedInstance(IMBalloonPluginManager, v23, v24);
    v27 = objc_msgSend_balloonPluginForBundleID_(v25, v26, bundleCopy);

    v30 = objc_msgSend_browserDisplayName(v27, v28, v29);
    if (objc_msgSend_length(v30, v31, v32))
    {
      v33 = MEMORY[0x1E696AEC0];
      v34 = sub_1A8361964();
      v36 = objc_msgSend_localizedStringForKey_value_table_(v34, v35, @"1 %@ Message", &stru_1F1B76F98, @"IMCoreLocalizable");
      v13 = objc_msgSend_localizedStringWithFormat_(v33, v37, v36, v30);
    }

    else
    {
      v13 = 0;
    }
  }

LABEL_13:

  return v13;
}

+ (id)previewSummaryForPluginPayload:(id)payload withBundleID:(id)d previewAttachmentURL:(id *)l previewAttachmentUTI:(id *)i
{
  v74 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  dCopy = d;
  v13 = objc_msgSend_sharedInstance(IMBalloonPluginManager, v11, v12);
  v15 = objc_msgSend_dataSourceClassForBundleID_(v13, v14, dCopy);

  if (v15)
  {
    if (objc_msgSend_supportsIndividualPreviewSummaries(v15, v16, v17))
    {
      v19 = [v15 alloc];
      v21 = objc_msgSend_initWithPluginPayload_(v19, v20, payloadCopy);
      v24 = v21;
      if (v21)
      {
        if (l)
        {
          *l = objc_msgSend_individualPreviewAttachmentFileAndUTI_(v21, v22, i);
        }

        v25 = objc_msgSend_individualPreviewSummary(v24, v22, v23);
        v26 = v25;
        if (v25)
        {
          v15 = v25;
LABEL_35:

          goto LABEL_43;
        }

        v27 = *MEMORY[0x1E69A6928];
        v28 = IMBalloonExtensionIDWithSuffix();
        isEqualToString = objc_msgSend_isEqualToString_(dCopy, v29, v28);

        if (isEqualToString)
        {
          if (objc_msgSend_isFromMe(payloadCopy, v31, v32))
          {
            v35 = sub_1A8361964();
            v37 = objc_msgSend_localizedStringForKey_value_table_(v35, v36, @"POLL_VOTE_SELF_MESSAGE", &stru_1F1B76F98, @"IMCoreLocalizable");
          }

          else
          {
            v54 = objc_msgSend_sender(payloadCopy, v33, v34);
            v57 = objc_msgSend_length(v54, v55, v56);

            if (v57)
            {
              v58 = MEMORY[0x1E696AEC0];
              v59 = sub_1A8361964();
              v61 = objc_msgSend_localizedStringForKey_value_table_(v59, v60, @"POLL_VOTE_OTHER_MESSAGE", &stru_1F1B76F98, @"IMCoreLocalizable");
              v64 = objc_msgSend_sender(payloadCopy, v62, v63);
              v35 = objc_msgSend_localizedStringWithFormat_(v58, v65, v61, v64);

              objc_msgSend__replaceHandleWithContactNameInString_(v24, v66, v35);
            }

            else
            {
              v35 = sub_1A8361964();
              objc_msgSend_localizedStringForKey_value_table_(v35, v67, @"POLL_VOTE_MESSAGE", &stru_1F1B76F98, @"IMCoreLocalizable");
            }
            v37 = ;
          }

          v15 = v37;

          goto LABEL_35;
        }
      }
    }

    if (objc_msgSend_rangeOfString_(dCopy, v18, *MEMORY[0x1E69A69F0]))
    {
      goto LABEL_42;
    }

    v40 = objc_msgSend_data(payloadCopy, v38, v39);
    if (!v40)
    {
LABEL_41:

LABEL_42:
      v15 = objc_msgSend_previewSummaryForPluginBundle_(v15, v38, dCopy);
      goto LABEL_43;
    }

    v41 = objc_opt_respondsToSelector();
    v42 = MEMORY[0x1E696ACD0];
    if (v41)
    {
      v43 = IMExtensionPayloadUnarchivingClasses();
      v71 = 0;
      v45 = objc_msgSend__strictlyUnarchivedObjectOfClasses_fromData_error_(v42, v44, v43, v40, &v71);
      v46 = v71;

      if (IMOSLoggingEnabled())
      {
        v48 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v73 = v46;
          _os_log_impl(&dword_1A823F000, v48, OS_LOG_TYPE_INFO, "strict-decoding 006 exception/error after _strictlyUnarchivedObjectOfClasses: [%@]", buf, 0xCu);
        }
      }
    }

    else
    {
      v49 = IMExtensionPayloadUnarchivingClasses();
      v70 = 0;
      v45 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(v42, v50, v49, v40, &v70);
      v46 = v70;

      if (IMOSLoggingEnabled())
      {
        v51 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v73 = v46;
          _os_log_impl(&dword_1A823F000, v51, OS_LOG_TYPE_INFO, "strict-decoding 006 exception/error after unarchivedObjectOfClasses: [%@]", buf, 0xCu);
        }
      }
    }

    if (v45)
    {
      v52 = objc_msgSend_objectForKeyedSubscript_(v45, v47, *MEMORY[0x1E69A6EC0]);
      if (v52)
      {
        v15 = localizedTextForAppName();

        goto LABEL_43;
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_40;
      }

      v53 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v53, OS_LOG_TYPE_INFO, "IMBalloonPluginDataSource: Could not obtain value for key IMExtensionPayloadAppNameKey", buf, 2u);
      }
    }

    else
    {
      if (!IMOSLoggingEnabled())
      {
LABEL_40:

        goto LABEL_41;
      }

      v53 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v73 = v46;
        _os_log_impl(&dword_1A823F000, v53, OS_LOG_TYPE_INFO, "IMBalloonPluginDataSource: Could not unarchive plugin payload data due to the following error:%@", buf, 0xCu);
      }
    }

    goto LABEL_40;
  }

LABEL_43:

  v68 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)individualPreviewSummary
{
  v4 = objc_msgSend__summaryText(self, a2, v2);
  v6 = objc_msgSend__replaceHandleWithContactNameInString_(self, v5, v4);
  v9 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x1E696AB08], v7, v8);
  v11 = objc_msgSend_stringByTrimmingCharactersInSet_(v6, v10, v9);
  v14 = objc_msgSend_length(v11, v12, v13);

  v17 = 0;
  if (objc_msgSend_length(v6, v15, v16) && v14)
  {
    v17 = v6;
  }

  return v17;
}

- (id)_summaryText
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_pluginPayload(self, a2, v2);
  v6 = objc_msgSend_data(v3, v4, v5);

  if (!v6)
  {
    v13 = 0;
    goto LABEL_23;
  }

  v7 = objc_opt_respondsToSelector();
  v8 = MEMORY[0x1E696ACD0];
  if (v7)
  {
    v9 = IMExtensionPayloadUnarchivingClasses();
    v23 = 0;
    v10 = &v23;
    v12 = objc_msgSend__strictlyUnarchivedObjectOfClasses_fromData_error_(v8, v11, v9, v6, &v23);
  }

  else
  {
    v9 = IMExtensionPayloadUnarchivingClasses();
    v22 = 0;
    v10 = &v22;
    v12 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(v8, v14, v9, v6, &v22);
  }

  v15 = v12;
  v16 = *v10;

  if (v16 && IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = v16;
      _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "strict-decoding 020 exception/error after unarchivedObjectOfClasses: [%@]", buf, 0xCu);
    }
  }

  if (!v15)
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v25 = v16;
        _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "IMBalloonPluginDataSource: Could not unarchive plugin payload data due to the following error:%@", buf, 0xCu);
      }

      goto LABEL_20;
    }

LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  v13 = objc_msgSend_objectForKeyedSubscript_(v15, v17, *MEMORY[0x1E69A6EF0]);
  if (!v13)
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "IMBalloonPluginDataSource: Could not obtain value for key IMExtensionPayloadLocalizedDescriptionTextKey", buf, 2u);
      }

LABEL_20:

      goto LABEL_21;
    }

    goto LABEL_21;
  }

LABEL_22:

LABEL_23:
  v20 = *MEMORY[0x1E69E9840];

  return v13;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = 0.0;
  v4 = 0.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)datasourceWasMovedToNewGuid:(id)guid
{
  guidCopy = guid;
  objc_msgSend_setMessageGUID_(self, v4, guidCopy);
  imMessageGUID = self->__imMessageGUID;
  self->__imMessageGUID = 0;

  objc_msgSend_setMessageGUID_(self->_pluginPayload, v6, guidCopy);
}

- (void)chooseOptions
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2);
  objc_msgSend_postNotificationName_object_(v4, v3, @"com.apple.messages.IMBalloonPluginDataSourceCollaborationLPTapped", 0);
}

- (void)pluginPayloadShouldSendCopy
{
  v4 = objc_msgSend_pluginDataSourceDelegate(self, a2, v2);

  if (v4)
  {
    v8 = objc_msgSend_pluginDataSourceDelegate(self, v5, v6);
    objc_msgSend_balloonPluginDataSource_shouldSendAsCopy_(v8, v7, self, 1);
  }
}

- (void)pluginPayloadShouldSendCollaboration
{
  v4 = objc_msgSend_pluginDataSourceDelegate(self, a2, v2);

  if (v4)
  {
    v8 = objc_msgSend_pluginDataSourceDelegate(self, v5, v6);
    objc_msgSend_balloonPluginDataSource_shouldSendAsCopy_(v8, v7, self, 0);
  }
}

- (void)_dataSourceDidChange
{
  v4 = objc_msgSend_pluginDataSourceDelegate(self, a2, v2);
  if (v4)
  {
    v7 = v4;
    v8 = objc_msgSend_pluginDataSourceDelegate(self, v5, v6);
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v13 = objc_msgSend_pluginDataSourceDelegate(self, v10, v11);
      objc_msgSend_balloonPluginDataSourceDidChange_(v13, v12, self);
    }
  }
}

- (BOOL)isDeferredSend
{
  v4 = objc_msgSend_imMessage(self, a2, v2);
  v7 = objc_msgSend_scheduleType(v4, v5, v6);

  if (v7 == 2)
  {
    v10 = objc_msgSend_imMessage(self, v8, v9);
    v13 = objc_msgSend_scheduleState(v10, v11, v12);

    v14 = 0x36u >> v13;
    if (v13 > 5)
    {
      LOBYTE(v14) = 0;
    }
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14 & 1;
}

- (id)_overrideURLForOpeningURL:(id)l
{
  lCopy = l;
  v7 = objc_msgSend_pluginPayload(self, v5, v6);
  isPayloadServiceManatee = objc_msgSend_isPayloadServiceManatee_(IMBalloonPluginDataSource, v8, v7);

  if (isPayloadServiceManatee)
  {
    v12 = objc_msgSend_pluginPayload(self, v10, v11);
    v15 = objc_msgSend_url(v12, v13, v14);
    v18 = objc_msgSend_chat(self, v16, v17);
    v21 = objc_msgSend_lastAddressedHandleID(v18, v19, v20);
    v24 = objc_msgSend_pluginPayload(self, v22, v23);
    v26 = objc_msgSend_URLForDugongShareURL_handle_payload_(IMBalloonPluginDataSource, v25, v15, v21, v24);
  }

  else
  {
    v26 = lCopy;
  }

  return v26;
}

- (id)overrideURLForOpeningURL:(id)l
{
  lCopy = l;
  v8 = objc_msgSend__overrideURLForOpeningURL_(self, v5, lCopy);
  willOpenHandler = self->_willOpenHandler;
  if (willOpenHandler)
  {
    willOpenHandler[2]();
  }

  v10 = objc_msgSend_imMessage(self, v6, v7);
  v11 = _IMShouldProcessURLForPhotosExtension();

  if (v11)
  {
    v14 = objc_msgSend_balloonBundleID(v10, v12, v13);

    if (v14)
    {

      v17 = objc_msgSend_chat(self, v15, v16);
      v20 = objc_msgSend_sharedController(IMDaemonController, v18, v19);
      v23 = objc_msgSend_remoteDaemon(v20, v21, v22);
      v26 = objc_msgSend_guid(v10, v24, v25);
      v29 = objc_msgSend_guid(v17, v27, v28);
      objc_msgSend_upgradeCompleteMyMomentLinkToStackWithMessageGUID_chatGUID_(v23, v30, v26, v29);

      v8 = 0;
    }
  }

  return v8;
}

+ (BOOL)isPayloadServiceManatee:(id)manatee
{
  manateeCopy = manatee;
  v6 = objc_msgSend_containerSetupInfo(manateeCopy, v4, v5);

  if (v6)
  {
    v9 = objc_msgSend_containerSetupInfo(manateeCopy, v7, v8);

    v12 = objc_msgSend_containerOptions(v9, v10, v11);
    isServiceManatee = objc_msgSend_isServiceManatee(v12, v13, v14);
  }

  else
  {
    v9 = objc_msgSend_url(manateeCopy, v7, v8);

    v12 = objc_msgSend_host(v9, v16, v17);
    if (qword_1EB2EA170 != -1)
    {
      sub_1A84DF040();
    }

    isServiceManatee = objc_msgSend_containsObject_(qword_1EB2EA168, v18, v12);
  }

  v19 = isServiceManatee;

  return v19;
}

+ (id)URLForDugongShareURL:(id)l handle:(id)handle payload:(id)payload
{
  handleCopy = handle;
  lCopy = l;
  v12 = objc_msgSend_datasource(payload, v10, v11);
  v15 = objc_msgSend_richLinkMetadata(v12, v13, v14);
  v17 = objc_msgSend_URLForDugongShareURL_handle_metadata_(self, v16, lCopy, handleCopy, v15);

  return v17;
}

+ (id)URLForDugongShareURL:(id)l handle:(id)handle metadata:(id)metadata
{
  v78 = *MEMORY[0x1E69E9840];
  lCopy = l;
  handleCopy = handle;
  metadataCopy = metadata;
  v11 = objc_msgSend_specialization(metadataCopy, v9, v10);
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v15 = objc_msgSend_specialization(metadataCopy, v13, v14);
    v71 = objc_msgSend_specialization(v15, v16, v17);

    if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend_encodedTokens(v71, v18, v19), (v70 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v77 = handleCopy;
          _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "Getting token for current handle:%@", buf, 0xCu);
        }
      }

      v68 = objc_msgSend_objectForKey_(v70, v20, handleCopy);
      if (v68)
      {
        goto LABEL_10;
      }

      v74[0] = MEMORY[0x1E69E9820];
      v74[1] = 3221225472;
      v74[2] = sub_1A82794D8;
      v74[3] = &unk_1E7810168;
      v75 = v70;
      v68 = sub_1A82794D8(v74, v23, v24);

      if (v68)
      {
LABEL_10:
        v69 = objc_msgSend_componentsWithURL_resolvingAgainstBaseURL_(MEMORY[0x1E696AF20], v22, lCopy, 0);
        v25 = objc_alloc_init(MEMORY[0x1E696AF20]);
        v28 = objc_msgSend_scheme(v69, v26, v27);
        objc_msgSend_setScheme_(v25, v29, v28);

        v32 = objc_msgSend_host(v69, v30, v31);
        objc_msgSend_setHost_(v25, v33, v32);

        v36 = objc_msgSend_path(v69, v34, v35);
        objc_msgSend_setPath_(v25, v37, v36);

        v40 = objc_msgSend_fragment(v69, v38, v39);
        objc_msgSend_setFragment_(v25, v41, v40);

        v44 = objc_msgSend_URLQueryAllowedCharacterSet(MEMORY[0x1E696AB08], v42, v43);
        v47 = objc_msgSend_mutableCopy(v44, v45, v46);

        objc_msgSend_removeCharactersInString_(v47, v48, @"+=/");
        v50 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(@"token", v49, v47);
        v73 = 0;
        v52 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v51, v68, 1, &v73);
        v67 = v73;
        v54 = objc_msgSend_base64EncodedStringWithOptions_(v52, v53, 0);
        v56 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(v54, v55, v47);
        v58 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v57, @"%@=%@", v50, v56);
        objc_msgSend_setQuery_(v25, v59, v58);
        v62 = objc_msgSend_URL(v25, v60, v61);
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v66 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v77 = 0;
            _os_log_impl(&dword_1A823F000, v66, OS_LOG_TYPE_INFO, "Error while decoding the handle-to-token mapping to NSDictionary: %@", buf, 0xCu);
          }
        }

        v62 = lCopy;
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v63 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v77 = lCopy;
          _os_log_impl(&dword_1A823F000, v63, OS_LOG_TYPE_INFO, "No tokenMapping data found in URL query. Returning URL: %@", buf, 0xCu);
        }
      }

      v62 = lCopy;
    }
  }

  else
  {
    v62 = lCopy;
  }

  v64 = *MEMORY[0x1E69E9840];

  return v62;
}

+ (id)replaceHandleWithContactNameInString:(id)string forAccount:(id)account additionalHandles:(id)handles
{
  v115 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  accountCopy = account;
  handlesCopy = handles;
  v88 = stringCopy;
  if (stringCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 136315906;
        v108 = "+[IMBalloonPluginDataSource replaceHandleWithContactNameInString:forAccount:additionalHandles:]";
        v109 = 2112;
        v110 = stringCopy;
        v111 = 2112;
        v112 = accountCopy;
        v113 = 2112;
        v114 = handlesCopy;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "%s string: %@, account: %@, additionalHandles: %@", buf, 0x2Au);
      }
    }

    v11 = objc_msgSend___im_handleIdentifiers(stringCopy, v8, v9);
    v95 = objc_msgSend_stringWithString_(MEMORY[0x1E696AD60], v12, stringCopy);
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v108 = v11;
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Identifiers to replace: %@", buf, 0xCu);
      }
    }

    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    obj = v11;
    v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v101, v106, 16);
    if (v92)
    {
      v91 = *v102;
      do
      {
        for (i = 0; i != v92; ++i)
        {
          if (*v102 != v91)
          {
            objc_enumerationMutation(obj);
          }

          v94 = *(*(&v101 + 1) + 8 * i);
          v19 = objc_msgSend___im_IDForHandleIdentifierString(v94, v15, v16);
          if (accountCopy)
          {
            v22 = objc_msgSend_existingIMHandleWithID_(accountCopy, v17, v19);
            if (!v22)
            {
              if (!objc_msgSend__appearsToBeEmail(v19, v20, v21) || (objc_msgSend_stringByAppendingString_(@"e:", v50, v19), v52 = objc_claimAutoreleasedReturnValue(), objc_msgSend_existingIMHandleWithID_alreadyCanonical_(accountCopy, v53, v52, 1), v22 = objc_claimAutoreleasedReturnValue(), v52, !v22))
              {
                if (objc_msgSend__appearsToBePhoneNumber(v19, v50, v51))
                {
                  v55 = objc_msgSend_stringByAppendingString_(@"p:", v54, v19);
                  v22 = objc_msgSend_existingIMHandleWithID_alreadyCanonical_(accountCopy, v56, v55, 1);
                }

                else
                {
                  v22 = 0;
                }
              }
            }

            if (IMOSLoggingEnabled())
            {
              v25 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v108 = v19;
                v109 = 2112;
                v110 = v22;
                _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_INFO, "Identifier was a uuid, identifierString %@, handle %@", buf, 0x16u);
              }
            }

            if (v22)
            {
              if (objc_msgSend_hasName(v22, v23, v24))
              {
                v28 = objc_msgSend_name(v22, v26, v27);
              }

              else
              {
                v57 = objc_msgSend_ID(v22, v26, v27);
                v28 = objc_msgSend__stripFZIDPrefix(v57, v58, v59);
              }
            }

            else
            {
              if (IMOSLoggingEnabled())
              {
                v60 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
                {
                  v63 = objc_msgSend_callStackSymbols(MEMORY[0x1E696AF00], v61, v62);
                  *buf = 136315394;
                  v108 = "+[IMBalloonPluginDataSource replaceHandleWithContactNameInString:forAccount:additionalHandles:]";
                  v109 = 2112;
                  v110 = v63;
                  _os_log_impl(&dword_1A823F000, v60, OS_LOG_TYPE_INFO, "%s Invalid handle, callstack: %@", buf, 0x16u);
                }
              }

              v28 = 0;
            }
          }

          else
          {
            v29 = objc_msgSend_sharedInstance(IMHandleRegistrar, v17, v18);
            v32 = objc_msgSend_allIMHandles(v29, v30, v31);

            v99 = 0u;
            v100 = 0u;
            v97 = 0u;
            v98 = 0u;
            v22 = v32;
            v28 = 0;
            v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v33, &v97, v105, 16);
            if (v36)
            {
              v37 = *v98;
              do
              {
                for (j = 0; j != v36; ++j)
                {
                  if (*v98 != v37)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v39 = *(*(&v97 + 1) + 8 * j);
                  v40 = objc_msgSend_ID(v39, v34, v35);
                  v41 = MEMORY[0x1AC56C3F0]();
                  isEqualToString = objc_msgSend_isEqualToString_(v41, v42, v19);

                  if (isEqualToString)
                  {
                    if (objc_msgSend_hasName(v39, v34, v35))
                    {
                      v46 = objc_msgSend_name(v39, v44, v45);
                    }

                    else
                    {
                      v47 = objc_msgSend_ID(v39, v44, v45);
                      v46 = objc_msgSend__stripFZIDPrefix(v47, v48, v49);

                      v28 = v47;
                    }

                    v28 = v46;
                  }
                }

                v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v34, &v97, v105, 16);
              }

              while (v36);
            }
          }

          v65 = objc_msgSend_isEqualToString_(v19, v64, kIMTranscriptPluginBreadcrumbTextSenderIdentifier);
          v67 = objc_msgSend_isEqualToString_(v19, v66, kIMTranscriptPluginBreadcrumbTextReceiverIdentifier);
          if (!objc_msgSend_length(v28, v68, v69) && ((v65 | v67) & 1) != 0)
          {
            v72 = objc_msgSend_objectForKey_(handlesCopy, v70, v19);

            v28 = v72;
          }

          if (!((objc_msgSend_length(v28, v70, v71) != 0) | v65 & 1 | v67 & 1))
          {
            v75 = objc_msgSend__stripFZIDPrefix(v19, v73, v74);

            v28 = v75;
          }

          if (objc_msgSend_length(v28, v73, v74))
          {
            v77 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x1E696AEC0], v76, @"%@", v28);
          }

          else
          {
            v77 = &stru_1F1B76F98;
          }

          v80 = objc_msgSend_length(v95, v78, v79);
          objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v95, v81, v94, v77, 0, 0, v80);
        }

        v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v101, v106, 16);
      }

      while (v92);
    }

    if (IMOSLoggingEnabled())
    {
      v84 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v108 = "+[IMBalloonPluginDataSource replaceHandleWithContactNameInString:forAccount:additionalHandles:]";
        v109 = 2112;
        v110 = v95;
        _os_log_impl(&dword_1A823F000, v84, OS_LOG_TYPE_INFO, "%s updatedString: %@", buf, 0x16u);
      }
    }

    v85 = objc_msgSend_copy(v95, v82, v83);
  }

  else
  {
    v85 = 0;
  }

  v86 = *MEMORY[0x1E69E9840];

  return v85;
}

- (id)_replaceHandleWithContactNameInString:(id)string
{
  stringCopy = string;
  v7 = objc_msgSend_chat(self, v5, v6);
  v10 = objc_msgSend_account(v7, v8, v9);
  v12 = objc_msgSend_replaceHandleWithContactNameInString_forAccount_additionalHandles_(IMBalloonPluginDataSource, v11, stringCopy, v10, 0);

  return v12;
}

- (void)beginShowingLastConsumedBreadcrumbForOutgoingPayload:(id)payload
{
  v22 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  if ((objc_msgSend_isShowingLatestMessageAsBreadcrumb(self, v5, v6) & 1) == 0 && objc_msgSend_isUpdate(payloadCopy, v7, v8))
  {
    v11 = objc_msgSend_guidOfLastMessageInSession(self, v9, v10);
    v14 = objc_msgSend_length(v11, v12, v13);

    if (v14)
    {
      objc_msgSend_setShowingLatestMessageAsBreadcrumb_(self, v15, 1);
      objc_msgSend__reloadLatestUnconsumedBreadcrumb(self, v16, v17);
    }

    else if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v20 = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "IMBalloonPluginDataSource: %@ attempted to show consumed breadcrumb before the last unconsumed breadcrumb was known.", &v20, 0xCu);
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)endShowingLastConsumedBreadcrumb
{
  if (objc_msgSend_isShowingLatestMessageAsBreadcrumb(self, a2, v2))
  {
    objc_msgSend_setShowingLatestMessageAsBreadcrumb_(self, v4, 0);

    objc_msgSend__reloadLatestUnconsumedBreadcrumb(self, v5, v6);
  }
}

- (void)_reloadLatestUnconsumedBreadcrumb
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_guidOfLastMessageInSession(self, a2, v2);
  v7 = objc_msgSend_sharedRegistryIfAvailable(IMChatRegistry, v5, v6);
  v9 = objc_msgSend__cachedChatsWithMessageGUID_(v7, v8, v4);

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = v9;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v32, v42, 16);
  if (v13)
  {
    v15 = *v33;
    *&v14 = 138412802;
    v31 = v14;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v32 + 1) + 8 * i);
        v18 = objc_msgSend_messageForGUID_(v17, v12, v4, v31, v32);
        v21 = objc_msgSend__imMessageItem(v18, v19, v20);

        if (v21)
        {
          objc_msgSend__handleIncomingItem_updateRecipient_(v17, v22, v21, 0);
          if (!IMOSLoggingEnabled())
          {
            goto LABEL_15;
          }

          v23 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v26 = objc_msgSend_chatIdentifier(v17, v24, v25);
            *buf = v31;
            selfCopy2 = self;
            v38 = 2112;
            v39 = v4;
            v40 = 2112;
            v41 = v26;
            _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "%@ refreshing most recent message guid: %@ for chat: %@ ", buf, 0x20u);
          }
        }

        else
        {
          if (!IMOSLoggingEnabled())
          {
            goto LABEL_15;
          }

          v23 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v29 = objc_msgSend_chatIdentifier(v17, v27, v28);
            *buf = v31;
            selfCopy2 = self;
            v38 = 2112;
            v39 = v4;
            v40 = 2112;
            v41 = v29;
            _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "IMBalloonPluginDataSource: %@ no message item with GUID %@ found in chat: %@", buf, 0x20u);
          }
        }

LABEL_15:
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v32, v42, 16);
    }

    while (v13);
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v7 = objc_msgSend_messageGUID(self, v5, v6);
  v10 = objc_msgSend_bundleID(self, v8, v9);
  v13 = objc_msgSend_payload(self, v11, v12);
  v16 = objc_msgSend_length(v13, v14, v15);
  v19 = objc_msgSend_pluginPayload(self, v17, v18);
  v22 = objc_msgSend_attachments(v19, v20, v21);
  v25 = objc_msgSend_count(v22, v23, v24);
  v27 = objc_msgSend_stringWithFormat_(v3, v26, @"<%@ %p> [GUID: %@ bundleID: %@; Payload length: %lu; Num. attachments: %tu]", v4, self, v7, v10, v16, v25);;

  return v27;
}

- (IMBalloonPluginDataSourceDelegate)pluginDataSourceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pluginDataSourceDelegate);

  return WeakRetained;
}

@end