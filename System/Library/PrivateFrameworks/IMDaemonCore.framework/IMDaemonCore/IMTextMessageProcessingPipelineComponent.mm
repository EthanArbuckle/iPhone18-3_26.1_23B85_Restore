@interface IMTextMessageProcessingPipelineComponent
- (BOOL)_shouldFindAssociatedMessagePartTextForMessageItem:(id)item;
- (IMTextMessageProcessingPipelineComponent)initWithMessageStore:(id)store;
- (id)_findAssociatedMessagePartTextForMessageItem:(id)item associatedMessageItem:(id)messageItem;
- (id)_findMessageItemForAssociatedMessageItem:(id)item;
- (id)_messagePartMatchingAssociatedMessageGUID:(id)d associatedMessageItem:(id)item;
- (id)createMessageItemWithInput:(id)input;
- (id)runIndividuallyWithInput:(id)input;
- (unint64_t)computeFlagsForInput:(id)input;
- (void)_configureAccountForMessageItem:(id)item input:(id)input;
@end

@implementation IMTextMessageProcessingPipelineComponent

- (IMTextMessageProcessingPipelineComponent)initWithMessageStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = IMTextMessageProcessingPipelineComponent;
  v6 = [(IMTextMessageProcessingPipelineComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_messageStore, store);
  }

  return v7;
}

- (unint64_t)computeFlagsForInput:(id)input
{
  v33 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  if ([inputCopy isFromMe])
  {
    v28[3] |= 0x8004uLL;
    chat = [inputCopy chat];
    if ([chat style] == 45)
    {
    }

    else
    {
      participantIdentifiers = [inputCopy participantIdentifiers];
      v7 = [participantIdentifiers count] < 3;

      if (!v7)
      {
        goto LABEL_6;
      }
    }

    v28[3] |= 0x1000uLL;
  }

LABEL_6:
  gUID = [inputCopy GUID];
  if ([(IMDMessageStore *)self->_messageStore popReadReceiptForMissingGUID:gUID])
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v32 = gUID;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Message guid was in readReceiptsForMissingMessage cache: %@", buf, 0xCu);
      }
    }

    v10 = v28;
    v11 = v28[3] | 0x2000;
    v28[3] = v11;
  }

  else
  {
    v10 = v28;
    v11 = v28[3];
  }

  v10[3] = v11 | 1;
  richBody = [inputCopy richBody];
  v13 = [richBody length];

  richBody2 = [inputCopy richBody];
  v15 = *MEMORY[0x277D19F28];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = sub_22B656BB0;
  v24 = &unk_278707128;
  v16 = inputCopy;
  v25 = v16;
  v26 = &v27;
  [richBody2 enumerateAttribute:v15 inRange:0 options:v13 usingBlock:{0, &v21}];

  if ([v16 isExpirable])
  {
    v28[3] |= 0x1000000uLL;
  }

  if ([v16 isAutoReply])
  {
    v28[3] |= 0x40uLL;
  }

  if ([v16 wasDetonated])
  {
    v28[3] |= 0x1000000000uLL;
  }

  if ([v16 isSOS])
  {
    v28[3] |= 0x8000000000uLL;
  }

  isCritical = [v16 isCritical];
  v18 = v28[3];
  if (isCritical)
  {
    v18 |= 0x4000000000uLL;
    v28[3] = v18;
  }

  _Block_object_dispose(&v27, 8);
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)createMessageItemWithInput:(id)input
{
  v34 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  richBody = [inputCopy richBody];
  v5 = [(IMTextMessageProcessingPipelineComponent *)self computeFlagsForInput:inputCopy];
  v6 = objc_alloc(MEMORY[0x277D1AA70]);
  fromIdentifier = [inputCopy fromIdentifier];
  _stripFZIDPrefix = [fromIdentifier _stripFZIDPrefix];
  v9 = MEMORY[0x277CBEAA8];
  timestamp = [inputCopy timestamp];
  v11 = [v9 __im_iMessageDateFromTimeStamp:timestamp];
  fileTransferGUIDs = [inputCopy fileTransferGUIDs];
  gUID = [inputCopy GUID];
  threadIdentifierGUID = [inputCopy threadIdentifierGUID];
  v15 = [v6 initWithSender:_stripFZIDPrefix time:v11 body:richBody attributes:0 fileTransferGUIDs:fileTransferGUIDs flags:v5 error:0 guid:gUID threadIdentifier:threadIdentifierGUID];

  plainTextSubject = [inputCopy plainTextSubject];
  [v15 setSubject:plainTextSubject];

  messageSummaryInfo = [inputCopy messageSummaryInfo];
  [v15 setMessageSummaryInfo:messageSummaryInfo];

  expressiveSendStyleIdentifier = [inputCopy expressiveSendStyleIdentifier];
  [v15 setExpressiveSendStyleID:expressiveSendStyleIdentifier];

  replicatedFallbackGUIDs = [inputCopy replicatedFallbackGUIDs];
  [v15 setReplicatedFallbackGUIDs:replicatedFallbackGUIDs];

  if ([inputCopy scheduleType] == 2 && objc_msgSend(v15, "isFromMe"))
  {
    [v15 setScheduleType:{objc_msgSend(inputCopy, "scheduleType")}];
    [v15 setScheduleState:2];
    scheduledDate = [inputCopy scheduledDate];
    [v15 setTime:scheduledDate];
  }

  if ([v15 wasDetonated] && IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      guid = [v15 guid];
      *buf = 138412290;
      v33 = guid;
      _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "createMessageItemWithInput created a detonated message for guid: %@", buf, 0xCu);
    }
  }

  if ([inputCopy isBIA])
  {
    biaReferenceID = [inputCopy biaReferenceID];
    [v15 setBiaReferenceID:biaReferenceID];

    chat = [inputCopy chat];

    if (chat)
    {
      chat2 = [inputCopy chat];
      toIdentifier = [inputCopy toIdentifier];
      _stripFZIDPrefix2 = [toIdentifier _stripFZIDPrefix];
      biaReferenceID2 = [v15 biaReferenceID];
      [chat2 addBIAContextWithUserID:_stripFZIDPrefix2 referenceID:biaReferenceID2];
    }
  }

  v29 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_findAssociatedMessagePartTextForMessageItem:(id)item associatedMessageItem:(id)messageItem
{
  itemCopy = item;
  messageItemCopy = messageItem;
  if ([(IMTextMessageProcessingPipelineComponent *)self _shouldFindAssociatedMessagePartTextForMessageItem:itemCopy])
  {
    associatedMessageGUID = [itemCopy associatedMessageGUID];
    if ([associatedMessageGUID length])
    {
      v9 = [(IMTextMessageProcessingPipelineComponent *)self _messagePartMatchingAssociatedMessageGUID:associatedMessageGUID associatedMessageItem:messageItemCopy];
      v10 = v9;
      if (v9)
      {
        messagePartBody = [v9 messagePartBody];
      }

      else
      {
        messagePartBody = 0;
      }
    }

    else
    {
      messagePartBody = 0;
    }
  }

  else
  {
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Do not need to find associatedMessagePartText for received associated message", v14, 2u);
    }

    messagePartBody = 0;
  }

  return messagePartBody;
}

- (id)_findMessageItemForAssociatedMessageItem:(id)item
{
  associatedMessageGUID = [item associatedMessageGUID];
  if ([associatedMessageGUID length])
  {
    v5 = IMAssociatedMessageDecodeGUID();
    v6 = [(IMDMessageStore *)self->_messageStore messageWithGUID:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_messagePartMatchingAssociatedMessageGUID:(id)d associatedMessageItem:(id)item
{
  dCopy = d;
  itemCopy = item;
  if (![dCopy length])
  {
    firstObject = 0;
    goto LABEL_21;
  }

  v7 = IMAssociatedMessageDecodeGUID();
  v8 = IMAssociatedMessageDecodePartIndex();
  if (![v7 length])
  {
    messageParts = IMLogHandleForCategory();
    if (os_log_type_enabled(messageParts, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D800C(messageParts, v19, v20, v21, v22, v23, v24, v25);
    }

    goto LABEL_18;
  }

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    messageParts = [itemCopy messageParts];
    if ([messageParts count]< 2)
    {
      if ([messageParts count]== 1)
      {
        firstObject = [messageParts firstObject];
LABEL_19:

        goto LABEL_20;
      }

      v10 = IMLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D7F9C(v10, v26, v27, v28, v29, v30, v31, v32);
      }
    }

    else
    {
      v10 = IMLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D7FD4(v10, v11, v12, v13, v14, v15, v16, v17);
      }
    }

LABEL_18:
    firstObject = 0;
    goto LABEL_19;
  }

  firstObject = [itemCopy messagePartMatchingPartIndex:v8];
  if (!firstObject)
  {
    messageParts = IMLogHandleForCategory();
    if (os_log_type_enabled(messageParts, OS_LOG_TYPE_INFO))
    {
      *v34 = 0;
      _os_log_impl(&dword_22B4CC000, messageParts, OS_LOG_TYPE_INFO, "Could not find message part matching message part index, possibly retracted part or malformed", v34, 2u);
    }

    goto LABEL_18;
  }

LABEL_20:

LABEL_21:

  return firstObject;
}

- (BOOL)_shouldFindAssociatedMessagePartTextForMessageItem:(id)item
{
  messageSummaryInfo = [item messageSummaryInfo];
  __im_associatedMessageContentType = [messageSummaryInfo __im_associatedMessageContentType];
  integerValue = [__im_associatedMessageContentType integerValue];

  return integerValue == 1;
}

- (void)_configureAccountForMessageItem:(id)item input:(id)input
{
  itemCopy = item;
  inputCopy = input;
  account = [inputCopy account];
  accountID = [account accountID];
  [itemCopy setAccountID:accountID];

  service = [account service];
  internalName = [service internalName];
  [itemCopy setService:internalName];

  loginID = [account loginID];
  lowercaseString = [loginID lowercaseString];
  [itemCopy setAccount:lowercaseString];

  toIdentifier = [inputCopy toIdentifier];
  _stripFZIDPrefix = [toIdentifier _stripFZIDPrefix];
  [itemCopy setDestinationCallerID:_stripFZIDPrefix];

  v14 = +[IMDServiceController sharedController];
  replicationSourceServiceName = [inputCopy replicationSourceServiceName];
  v16 = [v14 serviceWithName:replicationSourceServiceName];
  serviceProperties = [v16 serviceProperties];
  v18 = [serviceProperties objectForKeyedSubscript:*MEMORY[0x277D1A688]];

  LODWORD(v14) = [inputCopy isFromMe];
  if (v14 && [v18 containsObject:*MEMORY[0x277D1A620]])
  {
    [itemCopy setNeedsRepeatForRelayReplication:1];
  }
}

- (id)runIndividuallyWithInput:(id)input
{
  v40 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      gUID = [inputCopy GUID];
      *buf = 138412546;
      v37 = v6;
      v38 = 2112;
      v39 = gUID;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "<%@> Started processing for Message GUID: %@", buf, 0x16u);
    }
  }

  fromIdentifier = [inputCopy fromIdentifier];
  v9 = [fromIdentifier length] == 0;

  if (v9)
  {
    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "<IMTextMessageProcessingPipelineComponent> Failed to find fromIdentifier", buf, 2u);
      }
    }

    goto LABEL_19;
  }

  toIdentifier = [inputCopy toIdentifier];
  v11 = [toIdentifier length] == 0;

  if (v11)
  {
    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "<IMTextMessageProcessingPipelineComponent> Failed to find toIdentifier", buf, 2u);
      }
    }

LABEL_19:
    v29 = objc_alloc(MEMORY[0x277CCA9B8]);
    firstObject = [v29 initWithDomain:*MEMORY[0x277D18DF8] code:7 userInfo:0];
    v30 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:firstObject];
LABEL_27:
    v27 = v30;
    goto LABEL_28;
  }

  associatedMessageGUID = [inputCopy associatedMessageGUID];
  if (!associatedMessageGUID)
  {
    goto LABEL_26;
  }

  associatedMessageGUID2 = [inputCopy associatedMessageGUID];
  gUID2 = [inputCopy GUID];
  v15 = [associatedMessageGUID2 isEqualToString:gUID2];

  if (v15)
  {
    goto LABEL_26;
  }

  messageStore = self->_messageStore;
  associatedMessageGUID3 = [inputCopy associatedMessageGUID];
  chat = [inputCopy chat];
  v19 = [(IMDMessageStore *)messageStore sortedMessageItemsWithFallbackHash:associatedMessageGUID3 inChat:chat limit:1];
  firstObject = [v19 firstObject];

  service = [firstObject service];
  LODWORD(chat) = [service isEqualToString:*MEMORY[0x277D1A628]];

  if (!chat)
  {

LABEL_26:
    firstObject = [(IMTextMessageProcessingPipelineComponent *)self createMessageItemWithInput:inputCopy];
    [(IMTextMessageProcessingPipelineComponent *)self _configureAccountForMessageItem:firstObject input:inputCopy];
    v35 = firstObject;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
    [inputCopy setMessageItems:v32];

    v30 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
    goto LABEL_27;
  }

  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      associatedMessageGUID4 = [inputCopy associatedMessageGUID];
      gUID3 = [inputCopy GUID];
      *buf = 138412546;
      v37 = associatedMessageGUID4;
      v38 = 2112;
      v39 = gUID3;
      _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "<IMTextMessageProcessingPipelineComponent> Found associated GUID %@ for %@. Cross Service Association message has already binded this message to an IML. Dropping.", buf, 0x16u);
    }
  }

  v25 = objc_alloc(MEMORY[0x277CCA9B8]);
  v26 = [v25 initWithDomain:*MEMORY[0x277D18DF8] code:24 userInfo:0];
  v27 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v26];

LABEL_28:
  v33 = *MEMORY[0x277D85DE8];

  return v27;
}

@end