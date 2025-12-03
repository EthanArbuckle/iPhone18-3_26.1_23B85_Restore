@interface IMPlayedReceiptProcessingPipelineComponent
- (IMPlayedReceiptProcessingPipelineComponent)initWithPipelineResources:(id)resources;
- (id)_account;
- (id)_idsAccount;
- (id)_messageStore;
- (id)runIndividuallyWithInput:(id)input;
- (void)_markMessageAsPlayedAndNotify:(id)notify session:(id)session chat:(id)chat date:(id)date;
@end

@implementation IMPlayedReceiptProcessingPipelineComponent

- (IMPlayedReceiptProcessingPipelineComponent)initWithPipelineResources:(id)resources
{
  resourcesCopy = resources;
  v9.receiver = self;
  v9.super_class = IMPlayedReceiptProcessingPipelineComponent;
  v6 = [(IMPlayedReceiptProcessingPipelineComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pipelineResources, resources);
  }

  return v7;
}

- (id)_idsAccount
{
  pipelineResources = [(IMPlayedReceiptProcessingPipelineComponent *)self pipelineResources];
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
  pipelineResources = [(IMPlayedReceiptProcessingPipelineComponent *)self pipelineResources];
  imdAccount = [pipelineResources imdAccount];

  return imdAccount;
}

- (id)_messageStore
{
  pipelineResources = [(IMPlayedReceiptProcessingPipelineComponent *)self pipelineResources];
  messageStore = [pipelineResources messageStore];

  return messageStore;
}

- (id)runIndividuallyWithInput:(id)input
{
  v71 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      gUID = [inputCopy GUID];
      *buf = 138412290;
      v68 = gUID;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "<IMPlayedReceiptProcessingPipelineComponent> Started processing for Message GUID: %@", buf, 0xCu);
    }
  }

  if (IMGetCachedDomainBoolForKey())
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        gUID2 = [inputCopy GUID];
        *buf = 138412290;
        v68 = gUID2;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "    Ignoring played receipt for message: %@", buf, 0xCu);
      }
    }

    v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
  }

  else
  {
    gUID3 = [inputCopy GUID];
    v10 = gUID3 == 0;

    if (v10)
    {
      v45 = objc_alloc(MEMORY[0x277CCA9B8]);
      v46 = [v45 initWithDomain:*MEMORY[0x277D18DF8] code:3 userInfo:0];
      v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v46];
    }

    else
    {
      gUID4 = [inputCopy GUID];
      v58 = objc_alloc_init(MEMORY[0x277CBEB18]);
      pipelineResources = [(IMPlayedReceiptProcessingPipelineComponent *)self pipelineResources];
      messageStore = [pipelineResources messageStore];
      v13 = [messageStore chatsForMessageGUID:gUID4];

      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v68 = gUID4;
          v69 = 2112;
          v70 = v13;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Found chats for messageID: %@   chats: %@", buf, 0x16u);
        }
      }

      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      obj = v13;
      v15 = [obj countByEnumeratingWithState:&v62 objects:v66 count:16];
      if (v15)
      {
        v59 = *v63;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v63 != v59)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v62 + 1) + 8 * i);
            v18 = MEMORY[0x277CBEAA8];
            timestamp = [inputCopy timestamp];
            v20 = [v18 __im_iMessageDateFromTimeStamp:timestamp];

            pipelineResources2 = [(IMPlayedReceiptProcessingPipelineComponent *)self pipelineResources];
            messageStore2 = [pipelineResources2 messageStore];
            v23 = [messageStore2 messageWithGUID:gUID4];

            if (v23)
            {
              isFromMe = [v23 isFromMe];
              idsTrustedData = [inputCopy idsTrustedData];
              isFromMe2 = [idsTrustedData isFromMe];

              if (((isFromMe | isFromMe2) & 1) == 0)
              {
                if (IMOSLoggingEnabled())
                {
                  v47 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
                  {
                    sender = [v23 sender];
                    idsTrustedData2 = [inputCopy idsTrustedData];
                    fromIdentifier = [idsTrustedData2 fromIdentifier];
                    *buf = 138412546;
                    v68 = sender;
                    v69 = 2112;
                    v70 = fromIdentifier;
                    _os_log_impl(&dword_22B4CC000, v47, OS_LOG_TYPE_INFO, "Invalid receipt sender: played receipts must be sent by self (%@) for messages not from self. However, receipt was sent from (%@). Ignoring played receipt.", buf, 0x16u);
                  }
                }

                v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];

                goto LABEL_47;
              }

              [v58 addObject:v23];
              _account = [(IMPlayedReceiptProcessingPipelineComponent *)self _account];
              session = [_account session];
              [(IMPlayedReceiptProcessingPipelineComponent *)self _markMessageAsPlayedAndNotify:v23 session:session chat:v17 date:v20];

              if ((isFromMe2 & 1) == 0)
              {
                idsTrustedData3 = [inputCopy idsTrustedData];
                fromPushID = [idsTrustedData3 fromPushID];

                idsTrustedData4 = [inputCopy idsTrustedData];
                fromIdentifier2 = [idsTrustedData4 fromIdentifier];

                if (fromPushID && fromIdentifier2)
                {
                  pipelineResources3 = [(IMPlayedReceiptProcessingPipelineComponent *)self pipelineResources];
                  recentsController = [pipelineResources3 recentsController];
                  _stripFZIDPrefix = [fromIdentifier2 _stripFZIDPrefix];
                  [recentsController updateLatestActiveDestination:fromPushID ForHandle:_stripFZIDPrefix incomingType:1];

                  pipelineResources4 = [(IMPlayedReceiptProcessingPipelineComponent *)self pipelineResources];
                  recentsController2 = [pipelineResources4 recentsController];
                  v38 = IMSingleObjectArray();
                  [recentsController2 noteRecentMessageForPeople:v38];
                }
              }
            }
          }

          v15 = [obj countByEnumeratingWithState:&v62 objects:v66 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

      v39 = [v58 count] == 0;
      v40 = IMOSLoggingEnabled();
      if (v39)
      {
        if (v40)
        {
          v51 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
          {
            gUID5 = [inputCopy GUID];
            *buf = 138412290;
            v68 = gUID5;
            _os_log_impl(&dword_22B4CC000, v51, OS_LOG_TYPE_INFO, "Unable to mark message with GUID=%@: message not found", buf, 0xCu);
          }
        }

        v53 = objc_alloc(MEMORY[0x277CCA9B8]);
        v54 = [v53 initWithDomain:*MEMORY[0x277D18DF8] code:5 userInfo:0];
        v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v54];
      }

      else
      {
        if (v40)
        {
          v41 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            gUID6 = [inputCopy GUID];
            *buf = 138412290;
            v68 = gUID6;
            _os_log_impl(&dword_22B4CC000, v41, OS_LOG_TYPE_INFO, "Marked message with GUID=%@ as played", buf, 0xCu);
          }
        }

        firstObject = [obj firstObject];
        [inputCopy setChat:firstObject];

        v44 = [v58 copy];
        [inputCopy setMessageItems:v44];

        v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
      }

LABEL_47:
    }
  }

  v55 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_markMessageAsPlayedAndNotify:(id)notify session:(id)session chat:(id)chat date:(id)date
{
  v58 = *MEMORY[0x277D85DE8];
  notifyCopy = notify;
  sessionCopy = session;
  chatCopy = chat;
  dateCopy = date;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v51 = notifyCopy;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Mark message as played: %@", buf, 0xCu);
    }
  }

  [notifyCopy setFlags:{objc_msgSend(notifyCopy, "flags") | 0x400000}];
  v14 = dateCopy;
  if (v14)
  {
    time = [notifyCopy time];
    v16 = [time laterDate:v14];
  }

  else
  {
    v16 = 0;
  }

  timeDelivered = [notifyCopy timeDelivered];
  v18 = timeDelivered == 0;

  if (v18)
  {
    if (v16)
    {
      [notifyCopy setTimeDelivered:v16];
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
      [notifyCopy setTimeDelivered:date];
    }
  }

  timeRead = [notifyCopy timeRead];
  v21 = timeRead == 0;

  if (v21)
  {
    if (v16)
    {
      [notifyCopy setTimeRead:v16];
    }

    else
    {
      __im_dateWithCurrentServerTime = [MEMORY[0x277CBEAA8] __im_dateWithCurrentServerTime];
      [notifyCopy setTimeRead:__im_dateWithCurrentServerTime];
    }
  }

  timePlayed = [notifyCopy timePlayed];
  v24 = timePlayed == 0;

  if (v24)
  {
    if (v16)
    {
      [notifyCopy setTimePlayed:v16];
    }

    else
    {
      date2 = [MEMORY[0x277CBEAA8] date];
      [notifyCopy setTimePlayed:date2];
    }
  }

  if ([notifyCopy errorCode])
  {
    [notifyCopy setErrorCode:0];
  }

  if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      guid = [notifyCopy guid];
      if ([notifyCopy isExpirable])
      {
        v28 = @"YES";
      }

      else
      {
        v28 = @"NO";
      }

      isFromMe = [notifyCopy isFromMe];
      expireState = [notifyCopy expireState];
      if (isFromMe)
      {
        v31 = @"YES";
      }

      else
      {
        v31 = @"NO";
      }

      *buf = 138413058;
      v51 = guid;
      v52 = 2112;
      v53 = v28;
      v54 = 2112;
      v55 = v31;
      v56 = 2048;
      v57 = expireState;
      _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "message.GUID = %@; isExpirable = %@; isFromMe = %@; expireState = %lld", buf, 0x2Au);
    }
  }

  if ([notifyCopy isExpirable] && (objc_msgSend(notifyCopy, "isFromMe") & 1) == 0 && objc_msgSend(notifyCopy, "expireState") <= 0)
  {
    ShouldAutomaticallySave = IMMessageItemShouldAutomaticallySave();
    v43 = IMOSLoggingEnabled();
    if (ShouldAutomaticallySave)
    {
      if (v43)
      {
        v44 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          guid2 = [notifyCopy guid];
          *buf = 138412290;
          v51 = guid2;
          _os_log_impl(&dword_22B4CC000, v44, OS_LOG_TYPE_INFO, "Automatically saving received message played on linked device: %@", buf, 0xCu);
        }
      }

      v46 = 3;
    }

    else
    {
      if (v43)
      {
        v47 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          guid3 = [notifyCopy guid];
          *buf = 138412290;
          v51 = guid3;
          _os_log_impl(&dword_22B4CC000, v47, OS_LOG_TYPE_INFO, "Expire received message played on linked device: %@", buf, 0xCu);
        }
      }

      v46 = 1;
    }

    [notifyCopy setExpireState:v46];
    v32 = ShouldAutomaticallySave ^ 1;
  }

  else
  {
    v32 = 0;
    ShouldAutomaticallySave = 0;
  }

  pipelineResources = [(IMPlayedReceiptProcessingPipelineComponent *)self pipelineResources];
  messageStore = [pipelineResources messageStore];
  v36 = [messageStore storeMessage:notifyCopy forceReplace:0 modifyError:1 modifyFlags:1 flagMask:0x400000];

  pipelineResources2 = [(IMPlayedReceiptProcessingPipelineComponent *)self pipelineResources];
  chatRegistry = [pipelineResources2 chatRegistry];
  [chatRegistry updateStateForChat:chatCopy hintMessage:0 shouldRebuildFailedMessageDate:0];

  if (v32)
  {
    guid4 = [notifyCopy guid];
    [sessionCopy _updateExpireStateForMessageGUID:guid4];
  }

  if (ShouldAutomaticallySave)
  {
    roomName = [chatCopy roomName];
    if ([chatCopy style] == 45)
    {
      v41 = 45;
    }

    else
    {
      v41 = 43;
    }

    [sessionCopy sendSavedReceiptForMessage:notifyCopy toChatID:0 identifier:roomName style:v41];
  }

  v42 = *MEMORY[0x277D85DE8];
}

@end