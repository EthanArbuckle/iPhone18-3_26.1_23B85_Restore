@interface IMTextMessageProcessingPipelineComponent
- (BOOL)_shouldFindAssociatedMessagePartTextForMessageItem:(id)a3;
- (IMTextMessageProcessingPipelineComponent)initWithMessageStore:(id)a3;
- (id)_findAssociatedMessagePartTextForMessageItem:(id)a3 associatedMessageItem:(id)a4;
- (id)_findMessageItemForAssociatedMessageItem:(id)a3;
- (id)_messagePartMatchingAssociatedMessageGUID:(id)a3 associatedMessageItem:(id)a4;
- (id)createMessageItemWithInput:(id)a3;
- (id)runIndividuallyWithInput:(id)a3;
- (unint64_t)computeFlagsForInput:(id)a3;
- (void)_configureAccountForMessageItem:(id)a3 input:(id)a4;
@end

@implementation IMTextMessageProcessingPipelineComponent

- (IMTextMessageProcessingPipelineComponent)initWithMessageStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IMTextMessageProcessingPipelineComponent;
  v6 = [(IMTextMessageProcessingPipelineComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_messageStore, a3);
  }

  return v7;
}

- (unint64_t)computeFlagsForInput:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  if ([v4 isFromMe])
  {
    v28[3] |= 0x8004uLL;
    v5 = [v4 chat];
    if ([v5 style] == 45)
    {
    }

    else
    {
      v6 = [v4 participantIdentifiers];
      v7 = [v6 count] < 3;

      if (!v7)
      {
        goto LABEL_6;
      }
    }

    v28[3] |= 0x1000uLL;
  }

LABEL_6:
  v8 = [v4 GUID];
  if ([(IMDMessageStore *)self->_messageStore popReadReceiptForMissingGUID:v8])
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v32 = v8;
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
  v12 = [v4 richBody];
  v13 = [v12 length];

  v14 = [v4 richBody];
  v15 = *MEMORY[0x277D19F28];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = sub_22B656BB0;
  v24 = &unk_278707128;
  v16 = v4;
  v25 = v16;
  v26 = &v27;
  [v14 enumerateAttribute:v15 inRange:0 options:v13 usingBlock:{0, &v21}];

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

  v17 = [v16 isCritical];
  v18 = v28[3];
  if (v17)
  {
    v18 |= 0x4000000000uLL;
    v28[3] = v18;
  }

  _Block_object_dispose(&v27, 8);
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)createMessageItemWithInput:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v31 = [v4 richBody];
  v5 = [(IMTextMessageProcessingPipelineComponent *)self computeFlagsForInput:v4];
  v6 = objc_alloc(MEMORY[0x277D1AA70]);
  v7 = [v4 fromIdentifier];
  v8 = [v7 _stripFZIDPrefix];
  v9 = MEMORY[0x277CBEAA8];
  v10 = [v4 timestamp];
  v11 = [v9 __im_iMessageDateFromTimeStamp:v10];
  v12 = [v4 fileTransferGUIDs];
  v13 = [v4 GUID];
  v14 = [v4 threadIdentifierGUID];
  v15 = [v6 initWithSender:v8 time:v11 body:v31 attributes:0 fileTransferGUIDs:v12 flags:v5 error:0 guid:v13 threadIdentifier:v14];

  v16 = [v4 plainTextSubject];
  [v15 setSubject:v16];

  v17 = [v4 messageSummaryInfo];
  [v15 setMessageSummaryInfo:v17];

  v18 = [v4 expressiveSendStyleIdentifier];
  [v15 setExpressiveSendStyleID:v18];

  v19 = [v4 replicatedFallbackGUIDs];
  [v15 setReplicatedFallbackGUIDs:v19];

  if ([v4 scheduleType] == 2 && objc_msgSend(v15, "isFromMe"))
  {
    [v15 setScheduleType:{objc_msgSend(v4, "scheduleType")}];
    [v15 setScheduleState:2];
    v20 = [v4 scheduledDate];
    [v15 setTime:v20];
  }

  if ([v15 wasDetonated] && IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = [v15 guid];
      *buf = 138412290;
      v33 = v22;
      _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "createMessageItemWithInput created a detonated message for guid: %@", buf, 0xCu);
    }
  }

  if ([v4 isBIA])
  {
    v23 = [v4 biaReferenceID];
    [v15 setBiaReferenceID:v23];

    v24 = [v4 chat];

    if (v24)
    {
      v25 = [v4 chat];
      v26 = [v4 toIdentifier];
      v27 = [v26 _stripFZIDPrefix];
      v28 = [v15 biaReferenceID];
      [v25 addBIAContextWithUserID:v27 referenceID:v28];
    }
  }

  v29 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_findAssociatedMessagePartTextForMessageItem:(id)a3 associatedMessageItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(IMTextMessageProcessingPipelineComponent *)self _shouldFindAssociatedMessagePartTextForMessageItem:v6])
  {
    v8 = [v6 associatedMessageGUID];
    if ([v8 length])
    {
      v9 = [(IMTextMessageProcessingPipelineComponent *)self _messagePartMatchingAssociatedMessageGUID:v8 associatedMessageItem:v7];
      v10 = v9;
      if (v9)
      {
        v11 = [v9 messagePartBody];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
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

    v11 = 0;
  }

  return v11;
}

- (id)_findMessageItemForAssociatedMessageItem:(id)a3
{
  v4 = [a3 associatedMessageGUID];
  if ([v4 length])
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

- (id)_messagePartMatchingAssociatedMessageGUID:(id)a3 associatedMessageItem:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (![v5 length])
  {
    v18 = 0;
    goto LABEL_21;
  }

  v7 = IMAssociatedMessageDecodeGUID();
  v8 = IMAssociatedMessageDecodePartIndex();
  if (![v7 length])
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D800C(v9, v19, v20, v21, v22, v23, v24, v25);
    }

    goto LABEL_18;
  }

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [v6 messageParts];
    if ([v9 count]< 2)
    {
      if ([v9 count]== 1)
      {
        v18 = [v9 firstObject];
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
    v18 = 0;
    goto LABEL_19;
  }

  v18 = [v6 messagePartMatchingPartIndex:v8];
  if (!v18)
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v34 = 0;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Could not find message part matching message part index, possibly retracted part or malformed", v34, 2u);
    }

    goto LABEL_18;
  }

LABEL_20:

LABEL_21:

  return v18;
}

- (BOOL)_shouldFindAssociatedMessagePartTextForMessageItem:(id)a3
{
  v3 = [a3 messageSummaryInfo];
  v4 = [v3 __im_associatedMessageContentType];
  v5 = [v4 integerValue];

  return v5 == 1;
}

- (void)_configureAccountForMessageItem:(id)a3 input:(id)a4
{
  v19 = a3;
  v5 = a4;
  v6 = [v5 account];
  v7 = [v6 accountID];
  [v19 setAccountID:v7];

  v8 = [v6 service];
  v9 = [v8 internalName];
  [v19 setService:v9];

  v10 = [v6 loginID];
  v11 = [v10 lowercaseString];
  [v19 setAccount:v11];

  v12 = [v5 toIdentifier];
  v13 = [v12 _stripFZIDPrefix];
  [v19 setDestinationCallerID:v13];

  v14 = +[IMDServiceController sharedController];
  v15 = [v5 replicationSourceServiceName];
  v16 = [v14 serviceWithName:v15];
  v17 = [v16 serviceProperties];
  v18 = [v17 objectForKeyedSubscript:*MEMORY[0x277D1A688]];

  LODWORD(v14) = [v5 isFromMe];
  if (v14 && [v18 containsObject:*MEMORY[0x277D1A620]])
  {
    [v19 setNeedsRepeatForRelayReplication:1];
  }
}

- (id)runIndividuallyWithInput:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = [v4 GUID];
      *buf = 138412546;
      v37 = v6;
      v38 = 2112;
      v39 = v7;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "<%@> Started processing for Message GUID: %@", buf, 0x16u);
    }
  }

  v8 = [v4 fromIdentifier];
  v9 = [v8 length] == 0;

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

  v10 = [v4 toIdentifier];
  v11 = [v10 length] == 0;

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
    v20 = [v29 initWithDomain:*MEMORY[0x277D18DF8] code:7 userInfo:0];
    v30 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v20];
LABEL_27:
    v27 = v30;
    goto LABEL_28;
  }

  v12 = [v4 associatedMessageGUID];
  if (!v12)
  {
    goto LABEL_26;
  }

  v13 = [v4 associatedMessageGUID];
  v14 = [v4 GUID];
  v15 = [v13 isEqualToString:v14];

  if (v15)
  {
    goto LABEL_26;
  }

  messageStore = self->_messageStore;
  v17 = [v4 associatedMessageGUID];
  v18 = [v4 chat];
  v19 = [(IMDMessageStore *)messageStore sortedMessageItemsWithFallbackHash:v17 inChat:v18 limit:1];
  v20 = [v19 firstObject];

  v21 = [v20 service];
  LODWORD(v18) = [v21 isEqualToString:*MEMORY[0x277D1A628]];

  if (!v18)
  {

LABEL_26:
    v20 = [(IMTextMessageProcessingPipelineComponent *)self createMessageItemWithInput:v4];
    [(IMTextMessageProcessingPipelineComponent *)self _configureAccountForMessageItem:v20 input:v4];
    v35 = v20;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
    [v4 setMessageItems:v32];

    v30 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v4];
    goto LABEL_27;
  }

  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = [v4 associatedMessageGUID];
      v24 = [v4 GUID];
      *buf = 138412546;
      v37 = v23;
      v38 = 2112;
      v39 = v24;
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