@interface IMEditMessageCommandProcessingPipelineComponent
- (IMEditMessageCommandProcessingPipelineComponent)initWithPipelineResources:(id)resources;
- (double)_messageEditReceivedTimeout;
- (double)_messageRetractionReceivedTimeoutEnforcingExactTimeoutInterval:(BOOL)interval;
- (double)_timeoutIntervalForEditType:(unint64_t)type enforceExactRetractionTimeoutInterval:(BOOL)interval;
- (id)_account;
- (id)_adaptiveImageGlyphFileTransferGUIDsInMessageItem:(id)item;
- (id)_applyEditsToMessage:(id)message preEditFullMessageText:(id)text editType:(unint64_t)type editedPartIndex:(int64_t)index editedMessagePartText:(id)partText editedMessagePartTranslation:(id)translation shouldRetractSubject:(BOOL)subject editTimestamp:(id)self0;
- (id)_idsAccount;
- (id)_messageStore;
- (id)_storeEditedMessage:(id)message editedPartIndex:(int64_t)index editType:(unint64_t)type previousMessage:(id)previousMessage updateChats:(id)chats;
- (id)runIndividuallyWithInput:(id)input;
- (int64_t)_messageEditHistoryLimit;
@end

@implementation IMEditMessageCommandProcessingPipelineComponent

- (IMEditMessageCommandProcessingPipelineComponent)initWithPipelineResources:(id)resources
{
  resourcesCopy = resources;
  v9.receiver = self;
  v9.super_class = IMEditMessageCommandProcessingPipelineComponent;
  v6 = [(IMEditMessageCommandProcessingPipelineComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pipelineResources, resources);
  }

  return v7;
}

- (id)_idsAccount
{
  pipelineResources = [(IMEditMessageCommandProcessingPipelineComponent *)self pipelineResources];
  imdAccount = [pipelineResources imdAccount];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    idsAccount = [imdAccount idsAccount];
  }

  else
  {
    idsAccount = 0;
  }

  return idsAccount;
}

- (id)_account
{
  pipelineResources = [(IMEditMessageCommandProcessingPipelineComponent *)self pipelineResources];
  imdAccount = [pipelineResources imdAccount];

  return imdAccount;
}

- (id)_messageStore
{
  pipelineResources = [(IMEditMessageCommandProcessingPipelineComponent *)self pipelineResources];
  messageStore = [pipelineResources messageStore];

  return messageStore;
}

- (id)runIndividuallyWithInput:(id)input
{
  v123 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  editCommandGUID = [inputCopy editCommandGUID];
  editedMessageGUID = [inputCopy editedMessageGUID];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v114 = editCommandGUID;
      v115 = 2112;
      v116 = editedMessageGUID;
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
        v114 = editCommandGUID;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "    Ignoring edit message command for message: %@", buf, 0xCu);
      }
    }

    v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
    goto LABEL_73;
  }

  if ([editedMessageGUID length])
  {
    _messageStore = [(IMEditMessageCommandProcessingPipelineComponent *)self _messageStore];
    v10 = [_messageStore messageWithGUID:editedMessageGUID];

    if (!v10)
    {
      v31 = IMLogHandleForCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D825C();
      }

      v32 = objc_alloc(MEMORY[0x277CCA9B8]);
      body = [v32 initWithDomain:*MEMORY[0x277D18DF8] code:5 userInfo:0];
      v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:body];
      goto LABEL_72;
    }

    body = [v10 body];
    if (!body)
    {
      plainBody = [v10 plainBody];
      v13 = plainBody;
      v14 = &stru_283F23018;
      if (plainBody)
      {
        v14 = plainBody;
      }

      v15 = v14;

      body = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v15];
    }

    sender = [v10 sender];
    _stripFZIDPrefix = [sender _stripFZIDPrefix];

    idsTrustedData = [inputCopy idsTrustedData];
    fromIdentifier = [idsTrustedData fromIdentifier];
    _stripFZIDPrefix2 = [fromIdentifier _stripFZIDPrefix];

    idsTrustedData2 = [inputCopy idsTrustedData];
    isFromMe = [idsTrustedData2 isFromMe];

    isFromMe2 = [v10 isFromMe];
    if ((isFromMe & isFromMe2 & 1) == 0 && ([_stripFZIDPrefix2 isEqualToString:_stripFZIDPrefix] & 1) == 0)
    {
      v35 = IMLogHandleForCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413314;
        v114 = editedMessageGUID;
        v115 = 2112;
        v116 = _stripFZIDPrefix2;
        v117 = 2112;
        v118 = _stripFZIDPrefix;
        v119 = 2048;
        v120 = isFromMe2;
        v121 = 2048;
        v122 = isFromMe;
        _os_log_error_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_ERROR, "Not allowing message edit for guid %@. Edit sender %@, original sender %@, original isFromMe %ld, edit isFromMe %ld", buf, 0x34u);
      }

      v36 = objc_alloc(MEMORY[0x277CCA9B8]);
      v94 = [v36 initWithDomain:*MEMORY[0x277D18DF8] code:13 userInfo:0];
      v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v94];
      goto LABEL_71;
    }

    _messageStore2 = [(IMEditMessageCommandProcessingPipelineComponent *)self _messageStore];
    v94 = [_messageStore2 chatsForMessageGUID:editedMessageGUID];

    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v114 = editedMessageGUID;
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

    editedMessagePartBody = [inputCopy editedMessagePartBody];
    editedMessagePartTranslation = [inputCopy editedMessagePartTranslation];
    editedMessagePartIndex = [inputCopy editedMessagePartIndex];
    editType = [inputCopy editType];
    editedMessagePartFileTransferGUIDs = [inputCopy editedMessagePartFileTransferGUIDs];
    shouldRetractMessageSubject = [inputCopy shouldRetractMessageSubject];
    hasEditTypeAndPartIndex = [inputCopy hasEditTypeAndPartIndex];
    if ((editType - 3) <= 0xFFFFFFFFFFFFFFFDLL)
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

    v37 = hasEditTypeAndPartIndex;
    v38 = MEMORY[0x277CBEAA8];
    timestamp = [inputCopy timestamp];
    v89 = [v38 __im_iMessageDateFromTimeStamp:timestamp];

    time = [v10 time];
    [v89 timeIntervalSinceDate:time];
    v41 = v40;
    [(IMEditMessageCommandProcessingPipelineComponent *)self _timeoutIntervalForEditType:editType enforceExactRetractionTimeoutInterval:v37 ^ 1u];
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
        v118 = time;
        v119 = 2112;
        v120 = v89;
        _os_log_error_impl(&dword_22B4CC000, v44, OS_LOG_TYPE_ERROR, "Unable to apply edits, message edit timestamp exceeds maximum receive timeout. TimeBetweenOriginalAndEdit: %ld, MaximumInterval: %ld, OriginalDate: %@, EditedDate: %@", buf, 0x2Au);
      }

      v45 = objc_alloc(MEMORY[0x277CCA9B8]);
      dateEdited = [v45 initWithDomain:*MEMORY[0x277D18DF8] code:14 userInfo:0];
      v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:dateEdited];
      goto LABEL_69;
    }

    dateEdited = [v10 dateEdited];
    if (dateEdited)
    {
      if ([dateEdited compare:v89] == 1)
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
          v116 = dateEdited;
          _os_log_impl(&dword_22B4CC000, v48, OS_LOG_TYPE_INFO, "Message has already been edited, processing newer edit. ThisEdit: %@, DateOfLastEdit: %@", buf, 0x16u);
        }
      }
    }

    v80 = [v10 historyForMessagePart:editedMessagePartIndex];
    lastObject = [v80 lastObject];
    dateSent = [lastObject dateSent];
    if (dateSent)
    {
      if ([dateSent compare:v89] == 1)
      {
        v49 = IMLogHandleForCategory();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218498;
          v114 = editedMessagePartIndex;
          v115 = 2112;
          v116 = v89;
          v117 = 2112;
          v118 = dateSent;
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
          v116 = dateSent;
          _os_log_impl(&dword_22B4CC000, v52, OS_LOG_TYPE_INFO, "Message part has already been edited, processing newer edit. ThisEdit: %@, DateOfLastPartEdit: %@", buf, 0x16u);
        }
      }
    }

    _messageEditHistoryLimit = [(IMEditMessageCommandProcessingPipelineComponent *)self _messageEditHistoryLimit];
    if ([v80 count] > _messageEditHistoryLimit && editType == 1)
    {
      v54 = IMLogHandleForCategory();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D8140();
      }
    }

    else
    {
      if (editType != 1 || [editedMessagePartBody length])
      {
        if ([editedMessagePartFileTransferGUIDs count])
        {
          v83 = [(IMEditMessageCommandProcessingPipelineComponent *)self _adaptiveImageGlyphFileTransferGUIDsInMessageItem:v10];
          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          obj = editedMessagePartFileTransferGUIDs;
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

        if (editType == 2)
        {
          v61 = objc_alloc_init(MEMORY[0x277D669B0]);
          [v61 deleteSnapshotsForApplicationIdentifier:@"com.apple.MobileSMS"];
          [v61 invalidate];
        }

        LOBYTE(v74) = shouldRetractMessageSubject;
        v83 = [(IMEditMessageCommandProcessingPipelineComponent *)self _applyEditsToMessage:v10 preEditFullMessageText:body editType:editType editedPartIndex:editedMessagePartIndex editedMessagePartText:editedMessagePartBody editedMessagePartTranslation:editedMessagePartTranslation shouldRetractSubject:v74 editTimestamp:v89];
        firstObject = [v94 firstObject];
        v8 = objc_opt_new();
        if (editType == 1 && [firstObject isAutomaticallyTranslating])
        {
          messageParts = [v83 messageParts];
          v106[0] = MEMORY[0x277D85DD0];
          v106[1] = 3221225472;
          v106[2] = sub_22B658DB8;
          v106[3] = &unk_278707150;
          v63 = v83;
          v107 = v63;
          [messageParts enumerateObjectsUsingBlock:v106];

          obja = [[IMDIncomingMessageTranslator alloc] initWithChat:firstObject];
          [(IMDIncomingMessageTranslator *)obja beginProcessingMessage:v63];
          v96[0] = MEMORY[0x277D85DD0];
          v96[1] = 3221225472;
          v96[2] = sub_22B658DF8;
          v96[3] = &unk_278707178;
          v96[4] = self;
          v97 = v63;
          v104 = editedMessagePartIndex;
          v105 = 1;
          v98 = v10;
          v99 = v94;
          v100 = editedMessageGUID;
          v101 = inputCopy;
          v102 = firstObject;
          v64 = v8;
          v103 = v64;
          [(IMDIncomingMessageTranslator *)obja finishProcessingMessage:v97 completion:v96];
          v65 = v64;

          v66 = v107;
        }

        else
        {
          v66 = [(IMEditMessageCommandProcessingPipelineComponent *)self _storeEditedMessage:v83 editedPartIndex:editedMessagePartIndex editType:editType previousMessage:v10 updateChats:v94];
          if (IMOSLoggingEnabled())
          {
            v67 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v114 = editedMessageGUID;
              _os_log_impl(&dword_22B4CC000, v67, OS_LOG_TYPE_INFO, "Successfully edited message with GUID=%@", buf, 0xCu);
            }
          }

          [inputCopy setChat:firstObject];
          v68 = [v66 copy];
          [inputCopy setMessageItems:v68];

          [v8 fullfillWithValue:inputCopy];
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

- (id)_applyEditsToMessage:(id)message preEditFullMessageText:(id)text editType:(unint64_t)type editedPartIndex:(int64_t)index editedMessagePartText:(id)partText editedMessagePartTranslation:(id)translation shouldRetractSubject:(BOOL)subject editTimestamp:(id)self0
{
  v39 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  textCopy = text;
  partTextCopy = partText;
  translationCopy = translation;
  timestampCopy = timestamp;
  guid = [messageCopy guid];
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v38 = guid;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Applying edits to the content of message: %@", buf, 0xCu);
    }
  }

  v18 = [messageCopy copyWithFlags:{objc_msgSend(messageCopy, "flags")}];
  [v18 _setMessageID:{objc_msgSend(messageCopy, "messageID")}];
  switch(type)
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
      v19 = [textCopy __im_messageTextByRemovingMessagePartIndex:index];
      [v18 addRetractedPartIndex:index];
      if (subject)
      {
        [v18 setSubject:0];
      }

      v20 = [textCopy __im_messagePartMatchingPartIndex:index];
      transferGUID = [v20 transferGUID];
      if ([transferGUID length])
      {
        fileTransferGUIDs = [messageCopy fileTransferGUIDs];
        v28 = [fileTransferGUIDs mutableCopy];

        [v28 removeObject:transferGUID];
        v29 = [v28 copy];
        [v18 setFileTransferGUIDs:v29];
      }

      goto LABEL_19;
    case 1uLL:
      v19 = [textCopy __im_messageTextByReplacingMessagePartIndex:index withNewPartText:partTextCopy];
      v20 = [messageCopy translationsForMessagePart:index];
      if ([v20 count])
      {
        firstObject = [v20 firstObject];
        v21 = [objc_alloc(MEMORY[0x277D1ACB0]) initWithDictionaryRepresentation:firstObject];
        v22 = objc_alloc(MEMORY[0x277D1ACB0]);
        sourceLanguage = [v21 sourceLanguage];
        translationLanguage = [v21 translationLanguage];
        v25 = [v22 initWithSourceLanguage:sourceLanguage translationLanguage:translationLanguage translatedText:translationCopy];

        [v18 addTranslation:v25 forMessagePart:index];
      }

      [v18 addEditedPartIndex:index];
LABEL_19:

      goto LABEL_21;
  }

  v19 = 0;
LABEL_21:
  [v18 setBody:v19];
  [v18 setPlainBody:0];
  [v18 setDateEdited:timestampCopy];

  v30 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_storeEditedMessage:(id)message editedPartIndex:(int64_t)index editType:(unint64_t)type previousMessage:(id)previousMessage updateChats:(id)chats
{
  v37 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  previousMessageCopy = previousMessage;
  chatsCopy = chats;
  v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
  pipelineResources = [(IMEditMessageCommandProcessingPipelineComponent *)self pipelineResources];
  messageStore = [pipelineResources messageStore];

  firstObject = [chatsCopy firstObject];
  v35 = 0;
  v30 = messageCopy;
  v18 = [messageStore storeEditedMessage:messageCopy editedPartIndex:index editType:type previousMessage:previousMessageCopy chat:firstObject updatedAssociatedMessageItems:&v35];
  v19 = v35;

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v20 = chatsCopy;
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

- (id)_adaptiveImageGlyphFileTransferGUIDsInMessageItem:(id)item
{
  v21 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = +[IMDFileTransferCenter sharedInstance];
  fileTransferGUIDs = [itemCopy fileTransferGUIDs];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [fileTransferGUIDs countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(fileTransferGUIDs);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v5 transferForGUID:v11];
        if ([v12 isAdaptiveImageGlyph])
        {
          [v4 addObject:v11];
        }
      }

      v8 = [fileTransferGUIDs countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = [v4 copy];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (double)_timeoutIntervalForEditType:(unint64_t)type enforceExactRetractionTimeoutInterval:(BOOL)interval
{
  if (type == 2)
  {
    MEMORY[0x2821F9670](self, sel__messageRetractionReceivedTimeoutEnforcingExactTimeoutInterval_);
  }

  else if (type == 1)
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

- (double)_messageRetractionReceivedTimeoutEnforcingExactTimeoutInterval:(BOOL)interval
{
  v16 = *MEMORY[0x277D85DE8];
  if (interval)
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