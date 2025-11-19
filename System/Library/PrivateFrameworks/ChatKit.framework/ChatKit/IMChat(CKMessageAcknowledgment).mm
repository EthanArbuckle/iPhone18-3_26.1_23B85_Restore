@interface IMChat(CKMessageAcknowledgment)
+ (id)configureMessageSummaryInfoForChatItem:()CKMessageAcknowledgment;
+ (uint64_t)associatedMessageContentTypeFromCKMediaType:()CKMessageAcknowledgment;
- (id)_relevantLanguageIdentifierForLocalization;
- (void)sendMessageAcknowledgment:()CKMessageAcknowledgment forChatItem:languageIdentifier:;
- (void)sendTapback:()CKMessageAcknowledgment forChatItem:languageIdentifier:;
@end

@implementation IMChat(CKMessageAcknowledgment)

+ (uint64_t)associatedMessageContentTypeFromCKMediaType:()CKMessageAcknowledgment
{
  if ((a3 - 1) > 8)
  {
    return 0;
  }

  else
  {
    return byte_190DD1848[a3 - 1];
  }
}

+ (id)configureMessageSummaryInfoForChatItem:()CKMessageAcknowledgment
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v3 IMChatItem];
      v15 = [v14 dataSource];
      if (!v15)
      {
        v25 = 0;
        v13 = 0;
        v18 = 0;
        v7 = 0;
LABEL_35:

        v26 = 0;
        goto LABEL_42;
      }

      v16 = [v14 type];
      if ([v16 isEqualToString:@"com.apple.messages.URLBalloonProvider"])
      {
        v17 = [v15 url];
        v18 = [v17 absoluteString];

        v7 = 1;
      }

      else
      {
        v18 = [objc_opt_class() previewSummaryForPluginBundle:v16];
        v7 = 9;
      }

      v13 = v16;
      v27 = objc_alloc(MEMORY[0x1E696ACD0]);
      v28 = [v15 pluginPayload];
      v29 = [v28 data];
      v45 = 0;
      v30 = [v27 initForReadingFromData:v29 error:&v45];
      v44 = v45;

      if (objc_opt_respondsToSelector())
      {
        [v30 _enableStrictSecureDecodingMode];
        if (IMOSLoggingEnabled())
        {
          v31 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19020E000, v31, OS_LOG_TYPE_INFO, "strict-decoding 017 _enableStrictSecureDecodingMode called", buf, 2u);
          }
        }
      }

      v32 = IMExtensionPayloadUnarchivingClasses();
      v33 = [v30 decodeObjectOfClasses:v32 forKey:*MEMORY[0x1E696A508]];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = [v33 objectForKey:*MEMORY[0x1E69A6EC0]];
        if (v18)
        {
LABEL_34:

          goto LABEL_35;
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v34 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v47 = v44;
            _os_log_impl(&dword_19020E000, v34, OS_LOG_TYPE_INFO, "Failed to unarchive the data source pluginPayload. Error: %@", buf, 0xCu);
          }
        }

        v25 = 0;
        if (v18)
        {
          goto LABEL_34;
        }
      }

      if (IMOSLoggingEnabled())
      {
        v35 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v47 = v13;
          _os_log_impl(&dword_19020E000, v35, OS_LOG_TYPE_INFO, "summary text for tapback is nil for type: %@", buf, 0xCu);
        }
      }

      goto LABEL_34;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v25 = 0;
      v13 = 0;
      v26 = 0;
      v18 = 0;
      v7 = 0;
      goto LABEL_42;
    }

    v19 = v3;
    v20 = [v19 subject];
    v21 = [v20 string];

    v22 = [v19 text];
    v23 = [v22 string];

    if (v21 && v23)
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v21, v23];
    }

    else if (v21)
    {
      v24 = v21;
    }

    else
    {
      if (!v23)
      {
        v18 = 0;
        goto LABEL_41;
      }

      v24 = v23;
    }

    v18 = v24;
LABEL_41:
    v36 = [v19 messageItem];
    v37 = [v36 messagePartMatchingPartIndex:{objc_msgSend(v19, "index")}];
    v26 = [v37 messagePartBody];

    v25 = 0;
    v13 = 0;
    v7 = 1;
    goto LABEL_42;
  }

  v4 = v3;
  v5 = MEMORY[0x1E69A5AE0];
  v6 = [v4 mediaObject];
  v7 = [v5 associatedMessageContentTypeFromCKMediaType:{objc_msgSend(v6, "mediaType")}];

  v8 = [v4 IMChatItem];
  v9 = [v8 balloonBundleID];
  v10 = *MEMORY[0x1E69A6A08];
  v11 = IMBalloonExtensionIDWithSuffix();
  v12 = [v9 isEqualToString:v11];

  if (v12)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  v25 = 0;
  v26 = 0;
  v18 = 0;
LABEL_42:
  v38 = [v3 messageItem];
  v39 = [v38 expressiveSendStyleID];
  if ([v39 isEqualToString:*MEMORY[0x1E69A7088]])
  {
    v40 = CKFrameworkBundle();
    v41 = [v40 localizedStringForKey:@"SUMMARY_INVISIBLE_INK_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];

    v18 = v41;
  }

  v42 = [MEMORY[0x1E695DF20] dictionaryWithAssociatedMessageSummary:v18 contentType:v7 associatedMessagePartText:v26 pluginBundleID:v13 pluginDisplayName:v25 messageEffect:v39];

  return v42;
}

- (id)_relevantLanguageIdentifierForLocalization
{
  v0 = [MEMORY[0x1E69DD0E8] currentInputMode];
  v1 = [v0 primaryLanguage];

  return v1;
}

- (void)sendMessageAcknowledgment:()CKMessageAcknowledgment forChatItem:languageIdentifier:
{
  v8 = MEMORY[0x1E69A82E8];
  v9 = a5;
  v10 = a4;
  v11 = [v8 tapbackWithAssociatedMessageType:a3];
  [v11 setLanguageIdentifier:v9];
  [a1 sendTapback:v11 forChatItem:v10 languageIdentifier:v9];
}

- (void)sendTapback:()CKMessageAcknowledgment forChatItem:languageIdentifier:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    v10 = [a1 _relevantLanguageIdentifierForLocalization];
  }

  [v8 setLanguageIdentifier:v10];
  if ([v9 isEditedMessageHistory])
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(IMChat(CKMessageAcknowledgment) *)v11 sendTapback:v12 forChatItem:v13 languageIdentifier:v14, v15, v16, v17, v18];
    }

    goto LABEL_16;
  }

  v19 = [v9 IMChatItem];

  if (v19)
  {
    v20 = [v9 IMChatItem];
    v73 = v8;
    v21 = objc_alloc(MEMORY[0x1E69A5CD0]);
    v22 = [v20 guid];
    v23 = [v20 originalMessagePartRange];
    v25 = v24;
    [objc_opt_class() configureMessageSummaryInfoForChatItem:v9];
    v26 = v10;
    v27 = v9;
    v29 = v28 = a1;
    v30 = [v20 threadIdentifierForTapback];
    v31 = v21;
    v8 = v73;
    v32 = v28;
    v9 = v27;
    v10 = v26;
    v11 = [v31 initWithTapback:v73 chat:v32 messageGUID:v22 messagePartRange:v23 messageSummaryInfo:v25 threadIdentifier:{v29, v30}];

    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_13:
    v53 = IMLogHandleForCategory();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      [(IMChat(CKMessageAcknowledgment) *)v53 sendTapback:v54 forChatItem:v55 languageIdentifier:v56, v57, v58, v59, v60];
    }

    v11 = 0;
    goto LABEL_16;
  }

  v33 = v9;
  v34 = [v33 mediaObject];
  v35 = [v34 transfer];
  v36 = [v35 attributionInfo];

  v37 = [v36 objectForKey:*MEMORY[0x1E69A6FC0]];
  v74 = v36;
  v38 = [v36 objectForKey:*MEMORY[0x1E69A6FE8]];
  [v38 unsignedIntValue];

  v39 = [v33 parentGUID];
  [a1 createIMChatItemForTransientAttachmentWithAssetUUID:v37 parentChatItemGUID:v39];
  v40 = IMFauxMessageGUIDForTapbackOfCMMAssetAtIndexInParentMessageGUID();
  v41 = [v33 IMChatItem];
  if (v41)
  {
    v70 = objc_alloc(MEMORY[0x1E69A5CD0]);
    v72 = v37;
    v42 = [v41 originalMessagePartRange];
    v69 = v43;
    [objc_opt_class() configureMessageSummaryInfoForChatItem:v33];
    v44 = v10;
    v45 = v9;
    v47 = v46 = a1;
    [v41 threadIdentifierForTapback];
    v71 = v39;
    v48 = v33;
    v50 = v49 = v40;
    v51 = v46;
    v9 = v45;
    v10 = v44;
    v52 = v42;
    v37 = v72;
    v11 = [v70 initWithTapback:v8 chat:v51 messageGUID:v49 messagePartRange:v52 messageSummaryInfo:v69 threadIdentifier:{v47, v50}];

    v40 = v49;
    v33 = v48;
    v39 = v71;
  }

  else
  {
    v61 = IMLogHandleForCategory();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      [(IMChat(CKMessageAcknowledgment) *)v61 sendTapback:v62 forChatItem:v63 languageIdentifier:v64, v65, v66, v67, v68];
    }

    v11 = 0;
  }

  if (v41)
  {
LABEL_8:
    if (v11)
    {
      [v11 send];
      goto LABEL_16;
    }

    goto LABEL_13;
  }

LABEL_16:
}

@end