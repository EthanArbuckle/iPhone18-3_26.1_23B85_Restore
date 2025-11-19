@interface IMTranscriptPluginChatItem
- (BOOL)isDataSourceInitialized;
- (BOOL)isPlayed;
- (BOOL)isSaved;
- (BOOL)wantsAutoPlayback;
- (IMBalloonPluginDataSource)dataSource;
- (NSString)description;
- (NSString)pluginSessionGUID;
- (id)_initWithItem:(id)a3 initialPayload:(id)a4 index:(int64_t)a5 messagePartRange:(_NSRange)a6 parentChatHasKnownParticipants:(BOOL)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)messageSummaryInfo;
- (id)replyContextPreviewChatItemForReply:(id)a3 chatContext:(id)a4;
- (unint64_t)playbackType;
- (unsigned)contentType;
@end

@implementation IMTranscriptPluginChatItem

- (id)replyContextPreviewChatItemForReply:(id)a3 chatContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v33 = [IMReplyContextTranscriptPluginChatItem alloc];
  v10 = objc_msgSend__item(self, v8, v9);
  v13 = objc_msgSend_guid(v7, v11, v12);
  v16 = objc_msgSend_isFromMe(v7, v14, v15);
  v19 = objc_msgSend_initialPayload(self, v17, v18);
  v22 = objc_msgSend_index(self, v20, v21);
  v25 = objc_msgSend_messagePartRange(self, v23, v24);
  v27 = v26;
  HasKnownParticipants = objc_msgSend_parentChatHasKnownParticipants(self, v26, v28);
  HasKnownParticipants_chatContext = objc_msgSend__initWithItem_parentItem_replyMessageGUID_replyIsFromMe_initialPayload_index_messagePartRange_parentChatHasKnownParticipants_chatContext_(v33, v29, v10, v7, v13, v16, v19, v22, v25, v27, HasKnownParticipants, v6);

  return HasKnownParticipants_chatContext;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = IMTranscriptPluginChatItem;
  v4 = [(IMMessagePartChatItem *)&v11 description];
  v7 = objc_msgSend_type(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"[{%@] type:%@ payload", v4, v7);

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend__item(self, v5, v6);
  v10 = objc_msgSend_initialPayload(self, v8, v9);
  v13 = objc_msgSend_index(self, v11, v12);
  v16 = objc_msgSend_messagePartRange(self, v14, v15);
  v18 = v17;
  HasKnownParticipants = objc_msgSend_parentChatHasKnownParticipants(self, v17, v19);
  v22 = objc_msgSend__initWithItem_initialPayload_index_messagePartRange_parentChatHasKnownParticipants_(v4, v21, v7, v10, v13, v16, v18, HasKnownParticipants);

  return v22;
}

- (id)_initWithItem:(id)a3 initialPayload:(id)a4 index:(int64_t)a5 messagePartRange:(_NSRange)a6 parentChatHasKnownParticipants:(BOOL)a7
{
  length = a6.length;
  location = a6.location;
  v14 = a3;
  v15 = a4;
  v18 = objc_msgSend_pluginBundleID(v15, v16, v17);
  isEqualToString = objc_msgSend_isEqualToString_(v18, v19, *MEMORY[0x1E69A6A18]);
  if (isEqualToString)
  {
    v8 = objc_msgSend_message(v14, v20, v21);
    v7 = objc_msgSend_subject(v8, v23, v24);
    v27 = objc_msgSend_isBusiness(v7, v25, v26) ^ 1;
    v29 = objc_msgSend__initWithItem_index_messagePartRange_syndicationBehavior_(self, v28, v14, a5, location, length, v27);
  }

  else
  {
    v29 = objc_msgSend__initWithItem_index_messagePartRange_syndicationBehavior_(self, v20, v14, a5, location, length, 0);
  }

  v30 = v29;
  if (isEqualToString)
  {
  }

  if (v30)
  {
    v33 = objc_msgSend_guid(v14, v31, v32);
    v34 = sub_1A83AC604();

    objc_msgSend__setGUID_(v30, v35, v34);
    objc_msgSend_setInitialPayload_(v30, v36, v15);
    v39 = objc_msgSend_pluginBundleID(v15, v37, v38);
    objc_msgSend_setBundleIdentifier_(v30, v40, v39);

    v30[186] = a7;
    v43 = objc_msgSend__item(v30, v41, v42);
    isBreadcrumb = objc_msgSend_isBreadcrumb(v43, v44, v45);

    if (isBreadcrumb)
    {
      v49 = objc_msgSend_dataSource(v30, v47, v48);
    }
  }

  return v30;
}

- (BOOL)isDataSourceInitialized
{
  v4 = objc_msgSend_sharedInstance(IMBalloonPluginManager, a2, v2);
  v7 = objc_msgSend_initialPayload(self, v5, v6);
  v10 = objc_msgSend_pluginSessionGUID(v7, v8, v9);
  v13 = objc_msgSend_bundleIdentifier(self, v11, v12);
  v15 = objc_msgSend_existingDataSourceForMessageGUID_bundleID_(v4, v14, v10, v13);

  return v15 != 0;
}

- (NSString)pluginSessionGUID
{
  v3 = objc_msgSend__item(self, a2, v2);
  v6 = objc_msgSend_pluginSessionGUID(v3, v4, v5);

  return v6;
}

- (unint64_t)playbackType
{
  v4 = objc_msgSend_type(self, a2, v2);
  isEqualToString = objc_msgSend_isEqualToString_(v4, v5, *MEMORY[0x1E69A69A8]);

  if (isEqualToString)
  {
    return 1;
  }

  v10 = objc_msgSend_type(self, v7, v8);
  if (objc_msgSend_isEqualToString_(v10, v11, *MEMORY[0x1E69A69E0]))
  {
    v14 = objc_msgSend_message(self, v12, v13);
    v17 = objc_msgSend_expressiveSendStyleID(v14, v15, v16);
    v19 = objc_msgSend_isEqualToString_(v17, v18, *MEMORY[0x1E69A7088]);

    if (v19)
    {
      return 0;
    }

    else
    {
      return 2;
    }
  }

  else
  {

    return 0;
  }
}

- (IMBalloonPluginDataSource)dataSource
{
  v3 = self;
  v101 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend__item(self, a2, v2);
  v7 = objc_msgSend_sharedInstance(IMBalloonPluginManager, v5, v6);
  v10 = objc_msgSend_initialPayload(v3, v8, v9);
  v12 = objc_msgSend_dataSourceForPluginPayload_(v7, v11, v10);

  if (objc_msgSend_hasSetIsLastChatItemOfPluginType(v3, v13, v14))
  {
    isLastChatItemOfPluginType = objc_msgSend_isLastChatItemOfPluginType(v3, v15, v16);
    objc_msgSend_setLast_(v12, v18, isLastChatItemOfPluginType);
  }

  LODWORD(v19) = objc_msgSend_isUpdatingDataSourcePayload(v4, v15, v16);
  v22 = objc_msgSend_payloadData(v4, v20, v21);
  v23 = (v22 != 0) & (v19 ^ 1);

  if (objc_msgSend_associatedMessageType(v4, v24, v25) == 2)
  {
    v28 = objc_msgSend_balloonBundleID(v4, v26, v27);
    isEqualToString = objc_msgSend_isEqualToString_(v28, v29, *MEMORY[0x1E69A69A8]);

    if (!isEqualToString)
    {
      objc_msgSend_setUpdatingDataSourcePayload_(v4, v31, 1);
      if (!v23)
      {
        goto LABEL_29;
      }

      goto LABEL_11;
    }

    v33 = objc_msgSend_consumedSessionPayloads(v4, v31, v32);
    if (!v33)
    {
      LOBYTE(v23) = 0;
    }
  }

  objc_msgSend_setUpdatingDataSourcePayload_(v4, v26, 1);
  if (v23)
  {
LABEL_11:
    v93 = v19;
    v35 = [IMPluginPayload alloc];
    v38 = objc_msgSend_chatContext(v3, v36, v37);
    v95 = v4;
    v92 = objc_msgSend_initWithMessageItem_chatContext_(v35, v39, v4, v38);

    v42 = objc_msgSend_array(MEMORY[0x1E695DF70], v40, v41);
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v94 = v3;
    v45 = objc_msgSend_visibleAssociatedMessageChatItems(v3, v43, v44);
    v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, &v96, v100, 16);
    if (!v47)
    {
      goto LABEL_28;
    }

    v50 = v47;
    v51 = *v97;
    while (1)
    {
      v52 = 0;
      do
      {
        if (*v97 != v51)
        {
          objc_enumerationMutation(v45);
        }

        v53 = *(*(&v96 + 1) + 8 * v52);
        if (objc_msgSend_associatedMessageType(v53, v48, v49) == 4000)
        {
          v54 = [IMPluginPayload alloc];
          v57 = objc_msgSend__item(v53, v55, v56);
          v59 = objc_msgSend_initWithMessageItem_(v54, v58, v57);

          v64 = objc_msgSend_sender(v59, v60, v61);
          if (v64)
          {
            goto LABEL_18;
          }

          if (objc_msgSend_isFromMe(v95, v62, v63))
          {
            v67 = objc_msgSend_sender(v53, v65, v66);
            v64 = objc_msgSend_ID(v67, v68, v69);

            if (v64)
            {
              objc_msgSend_setSender_(v59, v70, v64);
            }

LABEL_18:
          }

          if (v59)
          {
            objc_msgSend_addObject_(v42, v65, v59);
          }
        }

        ++v52;
      }

      while (v50 != v52);
      v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v48, &v96, v100, 16);
      v50 = v71;
      if (!v71)
      {
LABEL_28:

        v19 = objc_msgSend_arrayWithArray_(MEMORY[0x1E695DEC8], v72, v42);
        v4 = v95;
        v75 = objc_msgSend_messageID(v95, v73, v74);
        v78 = objc_msgSend_guid(v95, v76, v77);
        objc_msgSend__updatePayload_associatedPayloads_messageID_messageGUID_(v12, v79, v92, v19, v75, v78);

        v82 = objc_msgSend_isFromMe(v95, v80, v81);
        objc_msgSend_setInitialMessageIsFromMe_(v12, v83, v82);

        v3 = v94;
        LOBYTE(v19) = v93;
        break;
      }
    }
  }

LABEL_29:
  objc_msgSend_setUpdatingDataSourcePayload_(v4, v34, v19 & 1);
  if (objc_msgSend_parentChatHasKnownParticipants(v3, v84, v85))
  {
    objc_msgSend_setParentChatHasAllUnknownRecipients_(v12, v86, 0);
  }

  else
  {
    v88 = objc_msgSend_isFromMe(v3, v86, v87) ^ 1;
    objc_msgSend_setParentChatHasAllUnknownRecipients_(v12, v89, v88);
  }

  v90 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BOOL)isPlayed
{
  v3 = objc_msgSend__item(self, a2, v2);
  isPlayed = objc_msgSend_isPlayed(v3, v4, v5);

  return isPlayed;
}

- (BOOL)isSaved
{
  v3 = objc_msgSend__item(self, a2, v2);
  v6 = objc_msgSend_expireState(v3, v4, v5) == 3;

  return v6;
}

- (BOOL)wantsAutoPlayback
{
  v4 = objc_msgSend_message(self, a2, v2);
  isSenderUnknown = objc_msgSend_isSenderUnknown(v4, v5, v6);

  if (isSenderUnknown)
  {
    return 0;
  }

  v11 = objc_msgSend_dataSource(self, v8, v9);
  v14 = objc_msgSend_playbackType(v11, v12, v13);
  v17 = objc_msgSend_bundleID(v11, v15, v16);
  isEqualToString = objc_msgSend_isEqualToString_(v17, v18, *MEMORY[0x1E69A69A8]);

  v24 = objc_msgSend_isPlayed(self, v20, v21) & (isEqualToString ^ 1);
  v10 = v14 == 1 && !v24 || v14 == 2 && !(v24 & 1 | ((objc_msgSend_isLast(v11, v22, v23) & 1) == 0));

  return v10;
}

- (unsigned)contentType
{
  v3 = objc_msgSend_type(self, a2, v2);
  isEqualToString = objc_msgSend_isEqualToString_(v3, v4, *MEMORY[0x1E69A6A18]);

  if (isEqualToString)
  {
    return 1;
  }

  else
  {
    return 9;
  }
}

- (id)messageSummaryInfo
{
  v6 = objc_msgSend_dataSource(self, a2, v2);
  if (!v6)
  {
    v15 = 0;
    v16 = 0;
    v14 = 0;
    goto LABEL_20;
  }

  v7 = objc_msgSend_type(self, v4, v5);
  if (objc_msgSend_isEqualToString_(v7, v8, *MEMORY[0x1E69A6A18]))
  {
    v11 = objc_msgSend_url(v6, v9, v10);
    v14 = objc_msgSend_absoluteString(v11, v12, v13);
  }

  else
  {
    v17 = objc_opt_class();
    v14 = objc_msgSend_previewSummaryForPluginBundle_(v17, v18, v7);
  }

  v16 = v7;
  v19 = objc_alloc(MEMORY[0x1E696ACD0]);
  v22 = objc_msgSend_pluginPayload(v6, v20, v21);
  v25 = objc_msgSend_data(v22, v23, v24);
  v49 = 0;
  v27 = objc_msgSend_initForReadingFromData_error_(v19, v26, v25, &v49);
  v28 = v49;

  if (objc_opt_respondsToSelector())
  {
    objc_msgSend__enableStrictSecureDecodingMode(v27, v29, v30);
    v31 = IMLogHandleForCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      sub_1A84E291C();
    }
  }

  v32 = IMExtensionPayloadUnarchivingClasses();
  v34 = objc_msgSend_decodeObjectOfClasses_forKey_(v27, v33, v32, *MEMORY[0x1E696A508]);

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v36 = IMLogHandleForCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E29D4();
    }

    v15 = 0;
    if (v14)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v15 = objc_msgSend_objectForKey_(v34, v35, *MEMORY[0x1E69A6EC0]);
  if (!v14)
  {
LABEL_16:
    v37 = IMLogHandleForCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E2A48();
    }
  }

LABEL_19:

LABEL_20:
  v38 = MEMORY[0x1E695DF20];
  v39 = objc_msgSend_contentType(self, v4, v5);
  v42 = objc_msgSend_messageItem(self, v40, v41);
  v45 = objc_msgSend_expressiveSendStyleID(v42, v43, v44);
  v47 = objc_msgSend_dictionaryWithAssociatedMessageSummary_contentType_associatedMessagePartText_pluginBundleID_pluginDisplayName_messageEffect_(v38, v46, v14, v39, 0, v16, v15, v45);

  return v47;
}

@end