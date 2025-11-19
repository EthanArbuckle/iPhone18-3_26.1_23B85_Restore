@interface IMEditMessageCommandProcessingPipelineComponent
- (IMEditMessageCommandProcessingPipelineComponent)initWithPipelineResources:(id)a3;
- (double)_messageEditReceivedTimeout;
- (double)_messageRetractionReceivedTimeoutEnforcingExactTimeoutInterval:(BOOL)a3;
- (double)_timeoutIntervalForEditType:(unint64_t)a3 enforceExactRetractionTimeoutInterval:(BOOL)a4;
- (id)_account;
- (id)_adaptiveImageGlyphFileTransferGUIDsInMessageItem:(id)a3;
- (id)_applyEditsToMessage:(id)a3 preEditFullMessageText:(id)a4 editType:(unint64_t)a5 editedPartIndex:(int64_t)a6 editedMessagePartText:(id)a7 editedMessagePartTranslation:(id)a8 shouldRetractSubject:(BOOL)a9 editTimestamp:(id)a10;
- (id)_idsAccount;
- (id)_messageStore;
- (id)_storeEditedMessage:(id)a3 editedPartIndex:(int64_t)a4 editType:(unint64_t)a5 previousMessage:(id)a6 updateChats:(id)a7;
- (id)runIndividuallyWithInput:(id)a3;
- (int64_t)_messageEditHistoryLimit;
@end

@implementation IMEditMessageCommandProcessingPipelineComponent

- (IMEditMessageCommandProcessingPipelineComponent)initWithPipelineResources:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IMEditMessageCommandProcessingPipelineComponent;
  v6 = [(IMEditMessageCommandProcessingPipelineComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pipelineResources, a3);
  }

  return v7;
}

- (id)_idsAccount
{
  v2 = [(IMEditMessageCommandProcessingPipelineComponent *)self pipelineResources];
  v3 = [v2 imdAccount];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 idsAccount];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_account
{
  v2 = [(IMEditMessageCommandProcessingPipelineComponent *)self pipelineResources];
  v3 = [v2 imdAccount];

  return v3;
}

- (id)_messageStore
{
  v2 = [(IMEditMessageCommandProcessingPipelineComponent *)self pipelineResources];
  v3 = [v2 messageStore];

  return v3;
}

- (id)runIndividuallyWithInput:(id)a3
{
  v123 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v95 = [v4 editCommandGUID];
  v5 = [v4 editedMessageGUID];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v114 = v95;
      v115 = 2112;
      v116 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "<IMEditMessageCommandProcessingPipelineComponent> Started processing for EditMessageCommand editCommandGUID: %@ editedMessageGUID: %@", buf, 0x16u);
    }
  }

  if (IMGetCachedDomainBoolForKey())
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v114 = v95;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "    Ignoring edit message command for message: %@", buf, 0xCu);
      }
    }

    v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v4];
    goto LABEL_73;
  }

  if ([v5 length])
  {
    v9 = [(IMEditMessageCommandProcessingPipelineComponent *)self _messageStore];
    v10 = [v9 messageWithGUID:v5];

    if (!v10)
    {
      v31 = IMLogHandleForCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D825C();
      }

      v32 = objc_alloc(MEMORY[0x277CCA9B8]);
      v11 = [v32 initWithDomain:*MEMORY[0x277D18DF8] code:5 userInfo:0];
      v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v11];
      goto LABEL_72;
    }

    v11 = [v10 body];
    if (!v11)
    {
      v12 = [v10 plainBody];
      v13 = v12;
      v14 = &stru_283F23018;
      if (v12)
      {
        v14 = v12;
      }

      v15 = v14;

      v11 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v15];
    }

    v16 = [v10 sender];
    v93 = [v16 _stripFZIDPrefix];

    v17 = [v4 idsTrustedData];
    v18 = [v17 fromIdentifier];
    v92 = [v18 _stripFZIDPrefix];

    v19 = [v4 idsTrustedData];
    v20 = [v19 isFromMe];

    v21 = [v10 isFromMe];
    if ((v20 & v21 & 1) == 0 && ([v92 isEqualToString:v93] & 1) == 0)
    {
      v35 = IMLogHandleForCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413314;
        v114 = v5;
        v115 = 2112;
        v116 = v92;
        v117 = 2112;
        v118 = v93;
        v119 = 2048;
        v120 = v21;
        v121 = 2048;
        v122 = v20;
        _os_log_error_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_ERROR, "Not allowing message edit for guid %@. Edit sender %@, original sender %@, original isFromMe %ld, edit isFromMe %ld", buf, 0x34u);
      }

      v36 = objc_alloc(MEMORY[0x277CCA9B8]);
      v94 = [v36 initWithDomain:*MEMORY[0x277D18DF8] code:13 userInfo:0];
      v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v94];
      goto LABEL_71;
    }

    v22 = [(IMEditMessageCommandProcessingPipelineComponent *)self _messageStore];
    v94 = [v22 chatsForMessageGUID:v5];

    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v114 = v5;
        v115 = 2112;
        v116 = v94;
        _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Found chats for messageID: %@  chats: %@", buf, 0x16u);
      }
    }

    if (![v94 count])
    {
      v33 = IMLogHandleForCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D81EC();
      }

      v34 = objc_alloc(MEMORY[0x277CCA9B8]);
      v91 = [v34 initWithDomain:*MEMORY[0x277D18DF8] code:8 userInfo:0];
      v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v91];

      goto LABEL_71;
    }

    v90 = [v4 editedMessagePartBody];
    v87 = [v4 editedMessagePartTranslation];
    v84 = [v4 editedMessagePartIndex];
    v24 = [v4 editType];
    v88 = [v4 editedMessagePartFileTransferGUIDs];
    v81 = [v4 shouldRetractMessageSubject];
    v25 = [v4 hasEditTypeAndPartIndex];
    if ((v24 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v26 = IMLogHandleForCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D817C();
      }

      v27 = objc_alloc(MEMORY[0x277CCA9B8]);
      v89 = [v27 initWithDomain:*MEMORY[0x277D18DF8] code:9 userInfo:0];
      v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v89];
      goto LABEL_70;
    }

    v37 = v25;
    v38 = MEMORY[0x277CBEAA8];
    v39 = [v4 timestamp];
    v89 = [v38 __im_iMessageDateFromTimeStamp:v39];

    v85 = [v10 time];
    [v89 timeIntervalSinceDate:v85];
    v41 = v40;
    [(IMEditMessageCommandProcessingPipelineComponent *)self _timeoutIntervalForEditType:v24 enforceExactRetractionTimeoutInterval:v37 ^ 1u];
    v42 = fabs(v41);
    if (v42 > v43)
    {
      v44 = IMLogHandleForCategory();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v73 = *MEMORY[0x277D19F58];
        *buf = 134218754;
        v114 = v42;
        v115 = 2048;
        v116 = v73;
        v117 = 2112;
        v118 = v85;
        v119 = 2112;
        v120 = v89;
        _os_log_error_impl(&dword_22B4CC000, v44, OS_LOG_TYPE_ERROR, "Unable to apply edits, message edit timestamp exceeds maximum receive timeout. TimeBetweenOriginalAndEdit: %ld, MaximumInterval: %ld, OriginalDate: %@, EditedDate: %@", buf, 0x2Au);
      }

      v45 = objc_alloc(MEMORY[0x277CCA9B8]);
      v86 = [v45 initWithDomain:*MEMORY[0x277D18DF8] code:14 userInfo:0];
      v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v86];
      goto LABEL_69;
    }

    v86 = [v10 dateEdited];
    if (v86)
    {
      if ([v86 compare:v89] == 1)
      {
        v46 = IMLogHandleForCategory();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D8044();
        }

        v47 = objc_alloc(MEMORY[0x277CCA9B8]);
        v79 = [v47 initWithDomain:*MEMORY[0x277D18DF8] code:15 userInfo:0];
        v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v79];

        goto LABEL_69;
      }

      if (IMOSLoggingEnabled())
      {
        v48 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v114 = v89;
          v115 = 2112;
          v116 = v86;
          _os_log_impl(&dword_22B4CC000, v48, OS_LOG_TYPE_INFO, "Message has already been edited, processing newer edit. ThisEdit: %@, DateOfLastEdit: %@", buf, 0x16u);
        }
      }
    }

    v80 = [v10 historyForMessagePart:v84];
    v77 = [v80 lastObject];
    v78 = [v77 dateSent];
    if (v78)
    {
      if ([v78 compare:v89] == 1)
      {
        v49 = IMLogHandleForCategory();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218498;
          v114 = v84;
          v115 = 2112;
          v116 = v89;
          v117 = 2112;
          v118 = v78;
          _os_log_error_impl(&dword_22B4CC000, v49, OS_LOG_TYPE_ERROR, "Unable to apply edits, message edit is older than previously processed edit for message part %ld. ThisEdit: %@, DateOfLastEdit: %@", buf, 0x20u);
        }

        v50 = objc_alloc(MEMORY[0x277CCA9B8]);
        v83 = [v50 initWithDomain:*MEMORY[0x277D18DF8] code:15 userInfo:0];
        v51 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v83];
        goto LABEL_67;
      }

      if (IMOSLoggingEnabled())
      {
        v52 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v114 = v89;
          v115 = 2112;
          v116 = v78;
          _os_log_impl(&dword_22B4CC000, v52, OS_LOG_TYPE_INFO, "Message part has already been edited, processing newer edit. ThisEdit: %@, DateOfLastPartEdit: %@", buf, 0x16u);
        }
      }
    }

    v53 = [(IMEditMessageCommandProcessingPipelineComponent *)self _messageEditHistoryLimit];
    if ([v80 count] > v53 && v24 == 1)
    {
      v54 = IMLogHandleForCategory();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D8140();
      }
    }

    else
    {
      if (v24 != 1 || [v90 length])
      {
        if ([v88 count])
        {
          v83 = [(IMEditMessageCommandProcessingPipelineComponent *)self _adaptiveImageGlyphFileTransferGUIDsInMessageItem:v10];
          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          obj = v88;
          v58 = [obj countByEnumeratingWithState:&v108 objects:v112 count:16];
          if (v58)
          {
            v59 = *v109;
            while (2)
            {
              for (i = 0; i != v58; ++i)
              {
                if (*v109 != v59)
                {
                  objc_enumerationMutation(obj);
                }

                if (![v83 containsObject:*(*(&v108 + 1) + 8 * i)])
                {

                  v70 = IMLogHandleForCategory();
                  if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
                  {
                    sub_22B7D80C8();
                  }

                  v71 = objc_alloc(MEMORY[0x277CCA9B8]);
                  v72 = [v71 initWithDomain:*MEMORY[0x277D18DF8] code:9 userInfo:0];
                  v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v72];

                  goto LABEL_68;
                }
              }

              v58 = [obj countByEnumeratingWithState:&v108 objects:v112 count:16];
              if (v58)
              {
                continue;
              }

              break;
            }
          }
        }

        if (v24 == 2)
        {
          v61 = objc_alloc_init(MEMORY[0x277D669B0]);
          [v61 deleteSnapshotsForApplicationIdentifier:@"com.apple.MobileSMS"];
          [v61 invalidate];
        }

        LOBYTE(v74) = v81;
        v83 = [(IMEditMessageCommandProcessingPipelineComponent *)self _applyEditsToMessage:v10 preEditFullMessageText:v11 editType:v24 editedPartIndex:v84 editedMessagePartText:v90 editedMessagePartTranslation:v87 shouldRetractSubject:v74 editTimestamp:v89];
        v82 = [v94 firstObject];
        v8 = objc_opt_new();
        if (v24 == 1 && [v82 isAutomaticallyTranslating])
        {
          v62 = [v83 messageParts];
          v106[0] = MEMORY[0x277D85DD0];
          v106[1] = 3221225472;
          v106[2] = sub_22B658DB8;
          v106[3] = &unk_278707150;
          v63 = v83;
          v107 = v63;
          [v62 enumerateObjectsUsingBlock:v106];

          obja = [[IMDIncomingMessageTranslator alloc] initWithChat:v82];
          [(IMDIncomingMessageTranslator *)obja beginProcessingMessage:v63];
          v96[0] = MEMORY[0x277D85DD0];
          v96[1] = 3221225472;
          v96[2] = sub_22B658DF8;
          v96[3] = &unk_278707178;
          v96[4] = self;
          v97 = v63;
          v104 = v84;
          v105 = 1;
          v98 = v10;
          v99 = v94;
          v100 = v5;
          v101 = v4;
          v102 = v82;
          v64 = v8;
          v103 = v64;
          [(IMDIncomingMessageTranslator *)obja finishProcessingMessage:v97 completion:v96];
          v65 = v64;

          v66 = v107;
        }

        else
        {
          v66 = [(IMEditMessageCommandProcessingPipelineComponent *)self _storeEditedMessage:v83 editedPartIndex:v84 editType:v24 previousMessage:v10 updateChats:v94];
          if (IMOSLoggingEnabled())
          {
            v67 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v114 = v5;
              _os_log_impl(&dword_22B4CC000, v67, OS_LOG_TYPE_INFO, "Successfully edited message with GUID=%@", buf, 0xCu);
            }
          }

          [v4 setChat:v82];
          v68 = [v66 copy];
          [v4 setMessageItems:v68];

          [v8 fullfillWithValue:v4];
          v69 = v8;
        }

        goto LABEL_68;
      }

      v54 = IMLogHandleForCategory();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D8104();
      }
    }

    v55 = objc_alloc(MEMORY[0x277CCA9B8]);
    v83 = [v55 initWithDomain:*MEMORY[0x277D18DF8] code:9 userInfo:0];
    v51 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v83];
LABEL_67:
    v8 = v51;
LABEL_68:

LABEL_69:
LABEL_70:

LABEL_71:
LABEL_72:

    goto LABEL_73;
  }

  v28 = IMLogHandleForCategory();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D82CC();
  }

  v29 = objc_alloc(MEMORY[0x277CCA9B8]);
  v30 = [v29 initWithDomain:*MEMORY[0x277D18DF8] code:3 userInfo:0];
  v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v30];

LABEL_73:
  v56 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_applyEditsToMessage:(id)a3 preEditFullMessageText:(id)a4 editType:(unint64_t)a5 editedPartIndex:(int64_t)a6 editedMessagePartText:(id)a7 editedMessagePartTranslation:(id)a8 shouldRetractSubject:(BOOL)a9 editTimestamp:(id)a10
{
  v39 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v36 = a4;
  v34 = a7;
  v33 = a8;
  v16 = a10;
  v35 = [v15 guid];
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v38 = v35;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Applying edits to the content of message: %@", buf, 0xCu);
    }
  }

  v18 = [v15 copyWithFlags:{objc_msgSend(v15, "flags")}];
  [v18 _setMessageID:{objc_msgSend(v15, "messageID")}];
  switch(a5)
  {
    case 0uLL:
      v20 = IMLogHandleForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D8308();
      }

      v19 = 0;
      goto LABEL_19;
    case 2uLL:
      v19 = [v36 __im_messageTextByRemovingMessagePartIndex:a6];
      [v18 addRetractedPartIndex:a6];
      if (a9)
      {
        [v18 setSubject:0];
      }

      v20 = [v36 __im_messagePartMatchingPartIndex:a6];
      v26 = [v20 transferGUID];
      if ([v26 length])
      {
        v27 = [v15 fileTransferGUIDs];
        v28 = [v27 mutableCopy];

        [v28 removeObject:v26];
        v29 = [v28 copy];
        [v18 setFileTransferGUIDs:v29];
      }

      goto LABEL_19;
    case 1uLL:
      v19 = [v36 __im_messageTextByReplacingMessagePartIndex:a6 withNewPartText:v34];
      v20 = [v15 translationsForMessagePart:a6];
      if ([v20 count])
      {
        v32 = [v20 firstObject];
        v21 = [objc_alloc(MEMORY[0x277D1ACB0]) initWithDictionaryRepresentation:v32];
        v22 = objc_alloc(MEMORY[0x277D1ACB0]);
        v23 = [v21 sourceLanguage];
        v24 = [v21 translationLanguage];
        v25 = [v22 initWithSourceLanguage:v23 translationLanguage:v24 translatedText:v33];

        [v18 addTranslation:v25 forMessagePart:a6];
      }

      [v18 addEditedPartIndex:a6];
LABEL_19:

      goto LABEL_21;
  }

  v19 = 0;
LABEL_21:
  [v18 setBody:v19];
  [v18 setPlainBody:0];
  [v18 setDateEdited:v16];

  v30 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_storeEditedMessage:(id)a3 editedPartIndex:(int64_t)a4 editType:(unint64_t)a5 previousMessage:(id)a6 updateChats:(id)a7
{
  v37 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = [(IMEditMessageCommandProcessingPipelineComponent *)self pipelineResources];
  v16 = [v15 messageStore];

  v17 = [v14 firstObject];
  v35 = 0;
  v30 = v12;
  v18 = [v16 storeEditedMessage:v12 editedPartIndex:a4 editType:a5 previousMessage:v13 chat:v17 updatedAssociatedMessageItems:&v35];
  v19 = v35;

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v20 = v14;
  v21 = [v20 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v32;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v31 + 1) + 8 * i);
        v26 = +[IMDChatRegistry sharedInstance];
        [v26 updateStateForChat:v25 forcePost:1 shouldRebuildFailedMessageDate:0 shouldCalculateUnreadCount:1];
      }

      v22 = [v20 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v22);
  }

  if (v18)
  {
    [v29 addObject:v18];
  }

  if ([v19 count])
  {
    [v29 addObjectsFromArray:v19];
  }

  v27 = *MEMORY[0x277D85DE8];

  return v29;
}

- (id)_adaptiveImageGlyphFileTransferGUIDsInMessageItem:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = +[IMDFileTransferCenter sharedInstance];
  v6 = [v3 fileTransferGUIDs];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v5 transferForGUID:v11];
        if ([v12 isAdaptiveImageGlyph])
        {
          [v4 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = [v4 copy];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (double)_timeoutIntervalForEditType:(unint64_t)a3 enforceExactRetractionTimeoutInterval:(BOOL)a4
{
  if (a3 == 2)
  {
    MEMORY[0x2821F9670](self, sel__messageRetractionReceivedTimeoutEnforcingExactTimeoutInterval_);
  }

  else if (a3 == 1)
  {
    MEMORY[0x2821F9670](self, sel__messageEditReceivedTimeout);
  }

  else
  {
    return 0.0;
  }

  return result;
}

- (double)_messageEditReceivedTimeout
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"message-edit-received-timeout"];
  v4 = *MEMORY[0x277D19F58];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v3 doubleValue], v5 > 0.0))
  {
    v6 = v5;
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v10 = 134218240;
        v11 = v6;
        v12 = 2048;
        v13 = v4;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Server bag overide for message edit received timeout. Server: %ld Default: %ld", &v10, 0x16u);
      }
    }
  }

  else
  {
    v6 = v4;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (int64_t)_messageEditHistoryLimit
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"message-edit-history-limit"];
  v4 = *MEMORY[0x277D19F50];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [v3 integerValue], v5 >= 1))
  {
    v6 = v5;
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
        v9 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
        v12 = 138412546;
        v13 = v8;
        v14 = 2112;
        v15 = v9;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Server bag override for message edit history limit. Server: %@ Default: %@", &v12, 0x16u);
      }
    }
  }

  else
  {
    v6 = v4;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (double)_messageRetractionReceivedTimeoutEnforcingExactTimeoutInterval:(BOOL)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = MEMORY[0x277D19FD8];
  }

  else
  {
    v3 = MEMORY[0x277D19FD0];
  }

  v4 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v5 = [v4 objectForKey:@"message-retraction-received-timeout"];
  v6 = *v3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v5 doubleValue], v7 > 0.0))
  {
    v8 = v7;
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v12 = 134218240;
        v13 = v8;
        v14 = 2048;
        v15 = v6;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Server bag overide for message retraction received timeout. Server: %ld Default: %ld", &v12, 0x16u);
      }
    }
  }

  else
  {
    v8 = v6;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

@end