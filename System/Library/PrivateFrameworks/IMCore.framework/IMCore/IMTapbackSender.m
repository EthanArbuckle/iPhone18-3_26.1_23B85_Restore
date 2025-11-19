@interface IMTapbackSender
+ (id)_metricIdentifierForTapback:(id)a3;
- (IMTapbackSender)initWithTapback:(id)a3 chat:(id)a4 messageGUID:(id)a5 messagePartRange:(_NSRange)a6 messageSummaryInfo:(id)a7 threadIdentifier:(id)a8;
- (IMTapbackSender)initWithTapback:(id)a3 chat:(id)a4 messagePartChatItem:(id)a5;
- (_NSRange)messagePartRange;
- (void)_trackSentTapbackWithContentType:(unsigned __int8)a3 serviceName:(id)a4;
- (void)send;
@end

@implementation IMTapbackSender

- (IMTapbackSender)initWithTapback:(id)a3 chat:(id)a4 messageGUID:(id)a5 messagePartRange:(_NSRange)a6 messageSummaryInfo:(id)a7 threadIdentifier:(id)a8
{
  length = a6.length;
  location = a6.location;
  v15 = a3;
  v16 = a4;
  v44 = a5;
  v43 = a7;
  v17 = a8;
  v49.receiver = self;
  v49.super_class = IMTapbackSender;
  v20 = [(IMTapbackSender *)&v49 init];
  if (!v20)
  {
    goto LABEL_10;
  }

  if (!v15)
  {
    v38 = IMLogHandleForCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E1044();
    }

    goto LABEL_19;
  }

  if (!v16)
  {
    v38 = IMLogHandleForCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E1010();
    }

    goto LABEL_19;
  }

  if (!v44)
  {
    v38 = IMLogHandleForCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E0FDC();
    }

    goto LABEL_19;
  }

  if (!v43)
  {
    v38 = IMLogHandleForCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E0FA8();
    }

LABEL_19:

    goto LABEL_20;
  }

  v42 = v16;
  v21 = objc_msgSend___im_associatedMessageContentType(v43, v18, v19);

  if (v21)
  {
    objc_storeStrong(v20 + 8, a4);
    objc_storeStrong(v20 + 1, a3);
    objc_storeStrong(v20 + 2, a5);
    *(v20 + 9) = location;
    *(v20 + 10) = length;
    objc_storeStrong(v20 + 4, a8);
    v23 = objc_msgSend_adjustMessageSummaryInfoForSending_(v15, v22, v43);
    v24 = *(v20 + 3);
    *(v20 + 3) = v23;

    v27 = objc_msgSend_sharedInstance(IMFileTransferCenter, v25, v26);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1A8310330;
    aBlock[3] = &unk_1E7811040;
    v28 = v27;
    v48 = v28;
    v29 = _Block_copy(aBlock);
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = sub_1A8310370;
    v45[3] = &unk_1E7811040;
    v30 = v28;
    v46 = v30;
    v31 = _Block_copy(v45);
    v33 = objc_msgSend_backwardCompatibilityStringWithMessageSummaryInfo_isAdaptiveImageGlyphProvider_isCommSafetySensitiveProvider_(v15, v32, *(v20 + 3), v29, v31);
    v34 = *(v20 + 6);
    *(v20 + 6) = v33;

    if (*(v20 + 6))
    {
      v35 = IMCreateSuperFormatStringFromPlainTextString();
      v36 = *(v20 + 7);
      *(v20 + 7) = v35;

      v16 = v42;
      if (*(v20 + 7))
      {

LABEL_10:
        v37 = v20;
        goto LABEL_21;
      }

      v41 = IMLogHandleForCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E0F0C();
      }
    }

    else
    {
      v41 = IMLogHandleForCategory();
      v16 = v42;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E0F40();
      }
    }

LABEL_20:
    v37 = 0;
    goto LABEL_21;
  }

  v40 = IMLogHandleForCategory();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    sub_1A84E0F74();
  }

  v37 = 0;
  v16 = v42;
LABEL_21:

  return v37;
}

- (IMTapbackSender)initWithTapback:(id)a3 chat:(id)a4 messagePartChatItem:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v13 = objc_msgSend_originalMessagePartRange(v8, v11, v12);
  v15 = v14;
  v17 = objc_msgSend_guid(v8, v14, v16);
  v20 = objc_msgSend_messageSummaryInfo(v8, v18, v19);
  v23 = objc_msgSend_threadIdentifierForTapback(v8, v21, v22);

  v25 = objc_msgSend_initWithTapback_chat_messageGUID_messagePartRange_messageSummaryInfo_threadIdentifier_(self, v24, v10, v9, v17, v13, v15, v20, v23);
  return v25;
}

- (void)send
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_tapback(self, a2, v2);
  v7 = objc_msgSend_chat(self, v5, v6);
  v10 = objc_msgSend_messageGUID(self, v8, v9);
  v13 = objc_msgSend_messagePartRange(self, v11, v12);
  v15 = v14;
  v17 = objc_msgSend_messageSummaryInfo(self, v14, v16);
  v20 = objc_msgSend_threadIdentifier(self, v18, v19);
  v22 = objc_msgSend_messageForChat_messageGUID_messagePartRange_messageSummaryInfo_threadIdentifier_(v4, v21, v7, v10, v13, v15, v17, v20);

  v25 = objc_msgSend_chat(self, v23, v24);
  v28 = objc_msgSend_account(v25, v26, v27);

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v31 = objc_msgSend_fileTransferGUIDs(v22, v29, v30, 0);
  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v57, v61, 16);
  if (v33)
  {
    v36 = v33;
    v37 = *v58;
    do
    {
      v38 = 0;
      do
      {
        if (*v58 != v37)
        {
          objc_enumerationMutation(v31);
        }

        v39 = *(*(&v57 + 1) + 8 * v38);
        v40 = objc_msgSend_sharedInstance(IMFileTransferCenter, v34, v35);
        objc_msgSend_assignTransfer_toMessage_account_(v40, v41, v39, v22, v28);

        ++v38;
      }

      while (v36 != v38);
      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v34, &v57, v61, 16);
    }

    while (v36);
  }

  v44 = objc_msgSend_chat(self, v42, v43);
  objc_msgSend_sendMessage_(v44, v45, v22);

  v48 = objc_msgSend___im_associatedMessageContentType(self->_messageSummaryInfo, v46, v47);
  v51 = objc_msgSend_integerValue(v48, v49, v50);

  v54 = objc_msgSend_serviceName(v28, v52, v53);
  objc_msgSend__trackSentTapbackWithContentType_serviceName_(self, v55, v51, v54);

  v56 = *MEMORY[0x1E69E9840];
}

- (void)_trackSentTapbackWithContentType:(unsigned __int8)a3 serviceName:(id)a4
{
  v26[4] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69A8168];
  v6 = a4;
  v9 = objc_msgSend_sharedInstance(v5, v7, v8);
  v10 = *MEMORY[0x1E69A76C0];
  v25[0] = *MEMORY[0x1E69A76B0];
  v11 = objc_opt_class();
  v13 = objc_msgSend__metricIdentifierForTapback_(v11, v12, self->_tapback);
  v26[0] = v13;
  v25[1] = *MEMORY[0x1E69A76B8];
  v14 = MEMORY[0x1E696AD98];
  isRemoved = objc_msgSend_isRemoved(self->_tapback, v15, v16);
  v19 = objc_msgSend_numberWithBool_(v14, v18, isRemoved);
  v26[1] = v19;
  v25[2] = *MEMORY[0x1E69A76A8];
  v20 = IMMetricsValueForAssociatedMessageContentType();
  v25[3] = *MEMORY[0x1E69A76C8];
  v26[2] = v20;
  v26[3] = v6;
  v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v21, v26, v25, 4);

  objc_msgSend_trackEvent_withDictionary_(v9, v23, v10, v22);
  v24 = *MEMORY[0x1E69E9840];
}

+ (id)_metricIdentifierForTapback:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_msgSend_visibleTapbackCounterpart(v3, v4, v5);
    v9 = objc_msgSend_associatedMessageType(v6, v7, v8);

    if ((v9 - 2000) < 6)
    {
      v10 = off_1E78122D8[v9 - 2000];
      goto LABEL_21;
    }

LABEL_11:
    v10 = @"unknown";
    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = @"emoji";
    goto LABEL_21;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  v13 = objc_msgSend_transferGUID(v3, v11, v12);
  v16 = objc_msgSend_sharedInstance(IMFileTransferCenter, v14, v15);
  v18 = objc_msgSend_transferForGUID_(v16, v17, v13);

  if (v18)
  {
    if (objc_msgSend_isSticker(v18, v19, v20))
    {
      v23 = objc_msgSend_stickerUserInfo(v18, v21, v22);
      v25 = objc_msgSend_objectForKeyedSubscript_(v23, v24, *MEMORY[0x1E69A7CB0]);

      v26 = IMBalloonBundleIDFromExtensionID();
      if (objc_msgSend_isEqualToString_(v26, v27, *MEMORY[0x1E69A68F8]))
      {
        v10 = @"sticker-user-generated";
      }

      else if (objc_msgSend_isEqualToString_(v26, v28, *MEMORY[0x1E69A6980]))
      {
        v10 = @"sticker-animoji";
      }

      else if (objc_msgSend_isAdaptiveImageGlyph(v18, v29, v30))
      {
        v10 = @"sticker-adaptive-glyph";
      }

      else
      {
        v10 = @"sticker-other";
      }
    }

    else
    {
      v10 = @"file-transfer-other";
    }
  }

  else
  {
    v10 = @"file-transfer-missing";
  }

LABEL_21:
  return v10;
}

- (_NSRange)messagePartRange
{
  length = self->_messagePartRange.length;
  location = self->_messagePartRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end