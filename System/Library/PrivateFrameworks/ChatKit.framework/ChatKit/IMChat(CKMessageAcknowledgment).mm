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
      iMChatItem = [v3 IMChatItem];
      dataSource = [iMChatItem dataSource];
      if (!dataSource)
      {
        v25 = 0;
        v13 = 0;
        absoluteString = 0;
        v7 = 0;
LABEL_35:

        messagePartBody = 0;
        goto LABEL_42;
      }

      type = [iMChatItem type];
      if ([type isEqualToString:@"com.apple.messages.URLBalloonProvider"])
      {
        v17 = [dataSource url];
        absoluteString = [v17 absoluteString];

        v7 = 1;
      }

      else
      {
        absoluteString = [objc_opt_class() previewSummaryForPluginBundle:type];
        v7 = 9;
      }

      v13 = type;
      v27 = objc_alloc(MEMORY[0x1E696ACD0]);
      pluginPayload = [dataSource pluginPayload];
      data = [pluginPayload data];
      v45 = 0;
      v30 = [v27 initForReadingFromData:data error:&v45];
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
        if (absoluteString)
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
        if (absoluteString)
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
      messagePartBody = 0;
      absoluteString = 0;
      v7 = 0;
      goto LABEL_42;
    }

    v19 = v3;
    subject = [v19 subject];
    string = [subject string];

    text = [v19 text];
    string2 = [text string];

    if (string && string2)
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", string, string2];
    }

    else if (string)
    {
      v24 = string;
    }

    else
    {
      if (!string2)
      {
        absoluteString = 0;
        goto LABEL_41;
      }

      v24 = string2;
    }

    absoluteString = v24;
LABEL_41:
    messageItem = [v19 messageItem];
    v37 = [messageItem messagePartMatchingPartIndex:{objc_msgSend(v19, "index")}];
    messagePartBody = [v37 messagePartBody];

    v25 = 0;
    v13 = 0;
    v7 = 1;
    goto LABEL_42;
  }

  v4 = v3;
  v5 = MEMORY[0x1E69A5AE0];
  mediaObject = [v4 mediaObject];
  v7 = [v5 associatedMessageContentTypeFromCKMediaType:{objc_msgSend(mediaObject, "mediaType")}];

  iMChatItem2 = [v4 IMChatItem];
  balloonBundleID = [iMChatItem2 balloonBundleID];
  v10 = *MEMORY[0x1E69A6A08];
  v11 = IMBalloonExtensionIDWithSuffix();
  v12 = [balloonBundleID isEqualToString:v11];

  if (v12)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  v25 = 0;
  messagePartBody = 0;
  absoluteString = 0;
LABEL_42:
  messageItem2 = [v3 messageItem];
  expressiveSendStyleID = [messageItem2 expressiveSendStyleID];
  if ([expressiveSendStyleID isEqualToString:*MEMORY[0x1E69A7088]])
  {
    v40 = CKFrameworkBundle();
    v41 = [v40 localizedStringForKey:@"SUMMARY_INVISIBLE_INK_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];

    absoluteString = v41;
  }

  v42 = [MEMORY[0x1E695DF20] dictionaryWithAssociatedMessageSummary:absoluteString contentType:v7 associatedMessagePartText:messagePartBody pluginBundleID:v13 pluginDisplayName:v25 messageEffect:expressiveSendStyleID];

  return v42;
}

- (id)_relevantLanguageIdentifierForLocalization
{
  currentInputMode = [MEMORY[0x1E69DD0E8] currentInputMode];
  primaryLanguage = [currentInputMode primaryLanguage];

  return primaryLanguage;
}

- (void)sendMessageAcknowledgment:()CKMessageAcknowledgment forChatItem:languageIdentifier:
{
  v8 = MEMORY[0x1E69A82E8];
  v9 = a5;
  v10 = a4;
  v11 = [v8 tapbackWithAssociatedMessageType:a3];
  [v11 setLanguageIdentifier:v9];
  [self sendTapback:v11 forChatItem:v10 languageIdentifier:v9];
}

- (void)sendTapback:()CKMessageAcknowledgment forChatItem:languageIdentifier:
{
  v8 = a3;
  v9 = a4;
  _relevantLanguageIdentifierForLocalization = a5;
  if (!_relevantLanguageIdentifierForLocalization)
  {
    _relevantLanguageIdentifierForLocalization = [self _relevantLanguageIdentifierForLocalization];
  }

  [v8 setLanguageIdentifier:_relevantLanguageIdentifierForLocalization];
  if ([v9 isEditedMessageHistory])
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(IMChat(CKMessageAcknowledgment) *)v11 sendTapback:v12 forChatItem:v13 languageIdentifier:v14, v15, v16, v17, v18];
    }

    goto LABEL_16;
  }

  iMChatItem = [v9 IMChatItem];

  if (iMChatItem)
  {
    iMChatItem2 = [v9 IMChatItem];
    v73 = v8;
    v21 = objc_alloc(MEMORY[0x1E69A5CD0]);
    guid = [iMChatItem2 guid];
    originalMessagePartRange = [iMChatItem2 originalMessagePartRange];
    v25 = v24;
    [objc_opt_class() configureMessageSummaryInfoForChatItem:v9];
    v26 = _relevantLanguageIdentifierForLocalization;
    v27 = v9;
    v29 = v28 = self;
    threadIdentifierForTapback = [iMChatItem2 threadIdentifierForTapback];
    v31 = v21;
    v8 = v73;
    v32 = v28;
    v9 = v27;
    _relevantLanguageIdentifierForLocalization = v26;
    v11 = [v31 initWithTapback:v73 chat:v32 messageGUID:guid messagePartRange:originalMessagePartRange messageSummaryInfo:v25 threadIdentifier:{v29, threadIdentifierForTapback}];

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
  mediaObject = [v33 mediaObject];
  transfer = [mediaObject transfer];
  attributionInfo = [transfer attributionInfo];

  v37 = [attributionInfo objectForKey:*MEMORY[0x1E69A6FC0]];
  v74 = attributionInfo;
  v38 = [attributionInfo objectForKey:*MEMORY[0x1E69A6FE8]];
  [v38 unsignedIntValue];

  parentGUID = [v33 parentGUID];
  [self createIMChatItemForTransientAttachmentWithAssetUUID:v37 parentChatItemGUID:parentGUID];
  v40 = IMFauxMessageGUIDForTapbackOfCMMAssetAtIndexInParentMessageGUID();
  iMChatItem3 = [v33 IMChatItem];
  if (iMChatItem3)
  {
    v70 = objc_alloc(MEMORY[0x1E69A5CD0]);
    v72 = v37;
    originalMessagePartRange2 = [iMChatItem3 originalMessagePartRange];
    v69 = v43;
    [objc_opt_class() configureMessageSummaryInfoForChatItem:v33];
    v44 = _relevantLanguageIdentifierForLocalization;
    v45 = v9;
    v47 = v46 = self;
    [iMChatItem3 threadIdentifierForTapback];
    v71 = parentGUID;
    v48 = v33;
    v50 = v49 = v40;
    v51 = v46;
    v9 = v45;
    _relevantLanguageIdentifierForLocalization = v44;
    v52 = originalMessagePartRange2;
    v37 = v72;
    v11 = [v70 initWithTapback:v8 chat:v51 messageGUID:v49 messagePartRange:v52 messageSummaryInfo:v69 threadIdentifier:{v47, v50}];

    v40 = v49;
    v33 = v48;
    parentGUID = v71;
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

  if (iMChatItem3)
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