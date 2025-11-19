@interface IMPlayedReceiptProcessingPipelineComponent
- (IMPlayedReceiptProcessingPipelineComponent)initWithPipelineResources:(id)a3;
- (id)_account;
- (id)_idsAccount;
- (id)_messageStore;
- (id)runIndividuallyWithInput:(id)a3;
- (void)_markMessageAsPlayedAndNotify:(id)a3 session:(id)a4 chat:(id)a5 date:(id)a6;
@end

@implementation IMPlayedReceiptProcessingPipelineComponent

- (IMPlayedReceiptProcessingPipelineComponent)initWithPipelineResources:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IMPlayedReceiptProcessingPipelineComponent;
  v6 = [(IMPlayedReceiptProcessingPipelineComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pipelineResources, a3);
  }

  return v7;
}

- (id)_idsAccount
{
  v2 = [(IMPlayedReceiptProcessingPipelineComponent *)self pipelineResources];
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
  v2 = [(IMPlayedReceiptProcessingPipelineComponent *)self pipelineResources];
  v3 = [v2 imdAccount];

  return v3;
}

- (id)_messageStore
{
  v2 = [(IMPlayedReceiptProcessingPipelineComponent *)self pipelineResources];
  v3 = [v2 messageStore];

  return v3;
}

- (id)runIndividuallyWithInput:(id)a3
{
  v71 = *MEMORY[0x277D85DE8];
  v61 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [v61 GUID];
      *buf = 138412290;
      v68 = v5;
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
        v7 = [v61 GUID];
        *buf = 138412290;
        v68 = v7;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "    Ignoring played receipt for message: %@", buf, 0xCu);
      }
    }

    v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v61];
  }

  else
  {
    v9 = [v61 GUID];
    v10 = v9 == 0;

    if (v10)
    {
      v45 = objc_alloc(MEMORY[0x277CCA9B8]);
      v46 = [v45 initWithDomain:*MEMORY[0x277D18DF8] code:3 userInfo:0];
      v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v46];
    }

    else
    {
      v60 = [v61 GUID];
      v58 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v11 = [(IMPlayedReceiptProcessingPipelineComponent *)self pipelineResources];
      v12 = [v11 messageStore];
      v13 = [v12 chatsForMessageGUID:v60];

      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v68 = v60;
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
            v19 = [v61 timestamp];
            v20 = [v18 __im_iMessageDateFromTimeStamp:v19];

            v21 = [(IMPlayedReceiptProcessingPipelineComponent *)self pipelineResources];
            v22 = [v21 messageStore];
            v23 = [v22 messageWithGUID:v60];

            if (v23)
            {
              v24 = [v23 isFromMe];
              v25 = [v61 idsTrustedData];
              v26 = [v25 isFromMe];

              if (((v24 | v26) & 1) == 0)
              {
                if (IMOSLoggingEnabled())
                {
                  v47 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
                  {
                    v48 = [v23 sender];
                    v49 = [v61 idsTrustedData];
                    v50 = [v49 fromIdentifier];
                    *buf = 138412546;
                    v68 = v48;
                    v69 = 2112;
                    v70 = v50;
                    _os_log_impl(&dword_22B4CC000, v47, OS_LOG_TYPE_INFO, "Invalid receipt sender: played receipts must be sent by self (%@) for messages not from self. However, receipt was sent from (%@). Ignoring played receipt.", buf, 0x16u);
                  }
                }

                v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v61];

                goto LABEL_47;
              }

              [v58 addObject:v23];
              v27 = [(IMPlayedReceiptProcessingPipelineComponent *)self _account];
              v28 = [v27 session];
              [(IMPlayedReceiptProcessingPipelineComponent *)self _markMessageAsPlayedAndNotify:v23 session:v28 chat:v17 date:v20];

              if ((v26 & 1) == 0)
              {
                v29 = [v61 idsTrustedData];
                v30 = [v29 fromPushID];

                v31 = [v61 idsTrustedData];
                v32 = [v31 fromIdentifier];

                if (v30 && v32)
                {
                  v33 = [(IMPlayedReceiptProcessingPipelineComponent *)self pipelineResources];
                  v34 = [v33 recentsController];
                  v35 = [v32 _stripFZIDPrefix];
                  [v34 updateLatestActiveDestination:v30 ForHandle:v35 incomingType:1];

                  v36 = [(IMPlayedReceiptProcessingPipelineComponent *)self pipelineResources];
                  v37 = [v36 recentsController];
                  v38 = IMSingleObjectArray();
                  [v37 noteRecentMessageForPeople:v38];
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
            v52 = [v61 GUID];
            *buf = 138412290;
            v68 = v52;
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
            v42 = [v61 GUID];
            *buf = 138412290;
            v68 = v42;
            _os_log_impl(&dword_22B4CC000, v41, OS_LOG_TYPE_INFO, "Marked message with GUID=%@ as played", buf, 0xCu);
          }
        }

        v43 = [obj firstObject];
        [v61 setChat:v43];

        v44 = [v58 copy];
        [v61 setMessageItems:v44];

        v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v61];
      }

LABEL_47:
    }
  }

  v55 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_markMessageAsPlayedAndNotify:(id)a3 session:(id)a4 chat:(id)a5 date:(id)a6
{
  v58 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v49 = a4;
  v11 = a5;
  v12 = a6;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v51 = v10;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Mark message as played: %@", buf, 0xCu);
    }
  }

  [v10 setFlags:{objc_msgSend(v10, "flags") | 0x400000}];
  v14 = v12;
  if (v14)
  {
    v15 = [v10 time];
    v16 = [v15 laterDate:v14];
  }

  else
  {
    v16 = 0;
  }

  v17 = [v10 timeDelivered];
  v18 = v17 == 0;

  if (v18)
  {
    if (v16)
    {
      [v10 setTimeDelivered:v16];
    }

    else
    {
      v19 = [MEMORY[0x277CBEAA8] date];
      [v10 setTimeDelivered:v19];
    }
  }

  v20 = [v10 timeRead];
  v21 = v20 == 0;

  if (v21)
  {
    if (v16)
    {
      [v10 setTimeRead:v16];
    }

    else
    {
      v22 = [MEMORY[0x277CBEAA8] __im_dateWithCurrentServerTime];
      [v10 setTimeRead:v22];
    }
  }

  v23 = [v10 timePlayed];
  v24 = v23 == 0;

  if (v24)
  {
    if (v16)
    {
      [v10 setTimePlayed:v16];
    }

    else
    {
      v25 = [MEMORY[0x277CBEAA8] date];
      [v10 setTimePlayed:v25];
    }
  }

  if ([v10 errorCode])
  {
    [v10 setErrorCode:0];
  }

  if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = [v10 guid];
      if ([v10 isExpirable])
      {
        v28 = @"YES";
      }

      else
      {
        v28 = @"NO";
      }

      v29 = [v10 isFromMe];
      v30 = [v10 expireState];
      if (v29)
      {
        v31 = @"YES";
      }

      else
      {
        v31 = @"NO";
      }

      *buf = 138413058;
      v51 = v27;
      v52 = 2112;
      v53 = v28;
      v54 = 2112;
      v55 = v31;
      v56 = 2048;
      v57 = v30;
      _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "message.GUID = %@; isExpirable = %@; isFromMe = %@; expireState = %lld", buf, 0x2Au);
    }
  }

  if ([v10 isExpirable] && (objc_msgSend(v10, "isFromMe") & 1) == 0 && objc_msgSend(v10, "expireState") <= 0)
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
          v45 = [v10 guid];
          *buf = 138412290;
          v51 = v45;
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
          v48 = [v10 guid];
          *buf = 138412290;
          v51 = v48;
          _os_log_impl(&dword_22B4CC000, v47, OS_LOG_TYPE_INFO, "Expire received message played on linked device: %@", buf, 0xCu);
        }
      }

      v46 = 1;
    }

    [v10 setExpireState:v46];
    v32 = ShouldAutomaticallySave ^ 1;
  }

  else
  {
    v32 = 0;
    ShouldAutomaticallySave = 0;
  }

  v34 = [(IMPlayedReceiptProcessingPipelineComponent *)self pipelineResources];
  v35 = [v34 messageStore];
  v36 = [v35 storeMessage:v10 forceReplace:0 modifyError:1 modifyFlags:1 flagMask:0x400000];

  v37 = [(IMPlayedReceiptProcessingPipelineComponent *)self pipelineResources];
  v38 = [v37 chatRegistry];
  [v38 updateStateForChat:v11 hintMessage:0 shouldRebuildFailedMessageDate:0];

  if (v32)
  {
    v39 = [v10 guid];
    [v49 _updateExpireStateForMessageGUID:v39];
  }

  if (ShouldAutomaticallySave)
  {
    v40 = [v11 roomName];
    if ([v11 style] == 45)
    {
      v41 = 45;
    }

    else
    {
      v41 = 43;
    }

    [v49 sendSavedReceiptForMessage:v10 toChatID:0 identifier:v40 style:v41];
  }

  v42 = *MEMORY[0x277D85DE8];
}

@end