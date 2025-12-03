@interface IMReadReceiptProcessingPipelineComponent
- (IMReadReceiptProcessingPipelineComponent)initWithMessageStore:(id)store chatRegistry:(id)registry recents:(id)recents IDSService:(id)service;
- (id)runIndividuallyWithInput:(id)input;
- (void)_donateReadEventForChat:(id)chat;
@end

@implementation IMReadReceiptProcessingPipelineComponent

- (IMReadReceiptProcessingPipelineComponent)initWithMessageStore:(id)store chatRegistry:(id)registry recents:(id)recents IDSService:(id)service
{
  storeCopy = store;
  registryCopy = registry;
  recentsCopy = recents;
  serviceCopy = service;
  v18.receiver = self;
  v18.super_class = IMReadReceiptProcessingPipelineComponent;
  v15 = [(IMReadReceiptProcessingPipelineComponent *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_messageStore, store);
    objc_storeStrong(&v16->_chatRegistry, registry);
    objc_storeStrong(&v16->_recents, recents);
    objc_storeStrong(&v16->_service, service);
  }

  return v16;
}

- (id)runIndividuallyWithInput:(id)input
{
  v78 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      gUID = [inputCopy GUID];
      *buf = 138412290;
      v73 = gUID;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "<IMReadReceiptProcessingPipelineComponent> Started processing for Message GUID: %@", buf, 0xCu);
    }
  }

  if (!IMGetCachedDomainBoolForKey())
  {
    isFromDefaultPairedDevice = [inputCopy isFromDefaultPairedDevice];
    isFromMe = [inputCopy isFromMe];
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        gUID2 = [inputCopy GUID];
        v12 = gUID2;
        v13 = @"NO";
        if (isFromMe)
        {
          v14 = @"YES";
        }

        else
        {
          v14 = @"NO";
        }

        *buf = 138412802;
        v73 = gUID2;
        v74 = 2112;
        v75 = v14;
        if (isFromDefaultPairedDevice)
        {
          v13 = @"YES";
        }

        v76 = 2112;
        v77 = v13;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Received read receipt for: %@ receipt from me: %@ isDefaultPairedDevice: %@", buf, 0x20u);
      }
    }

    v61 = objc_alloc_init(MEMORY[0x277CBEB18]);
    gUID3 = [inputCopy GUID];
    v58 = [(IMDMessageStore *)self->_messageStore messageWithGUID:gUID3];
    isFromMe2 = [v58 isFromMe];
    v59 = [(IMDMessageStore *)self->_messageStore chatsForMessageGUID:gUID3];
    if ([v59 count])
    {
      if ((isFromMe2 | isFromMe))
      {
        v17 = MEMORY[0x277CBEAA8];
        timestamp = [inputCopy timestamp];
        v19 = [v17 __im_iMessageDateFromTimeStamp:timestamp];

        if (isFromMe)
        {
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          fromPushID = v59;
          v21 = [fromPushID countByEnumeratingWithState:&v66 objects:v71 count:16];
          if (v21)
          {
            v22 = *v67;
            while (2)
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v67 != v22)
                {
                  objc_enumerationMutation(fromPushID);
                }

                v24 = *(*(&v66 + 1) + 8 * i);
                if (IMOSLoggingEnabled())
                {
                  v25 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412546;
                    v73 = gUID3;
                    v74 = 2112;
                    v75 = v24;
                    _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Found chat to mark as read for messageID: %@ chat: %@", buf, 0x16u);
                  }
                }

                v26 = [(IMReadReceiptProcessingPipelineComponent *)self _markMessagesUpToGUID:gUID3 forChat:v24 messageIsFromMe:0 date:v19];
                [v61 addObjectsFromArray:v26];

                if (![v61 count] && !-[IMDMessageStore hasStoredMessageWithGUID:](self->_messageStore, "hasStoredMessageWithGUID:", gUID3))
                {
                  [(IDSService *)self->_service _IMDTrackMetric:10401 ForMessageGUID:gUID3];
                  [(IMDMessageStore *)self->_messageStore addMissingMessageReadReceipt:gUID3];
                  v38 = objc_alloc(MEMORY[0x277CCA9B8]);
                  v39 = [v38 initWithDomain:*MEMORY[0x277D18DF8] code:5 userInfo:0];
                  v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v39];

                  goto LABEL_53;
                }
              }

              v21 = [fromPushID countByEnumeratingWithState:&v66 objects:v71 count:16];
              if (v21)
              {
                continue;
              }

              break;
            }
          }
        }

        else
        {
          timeRead = [v58 timeRead];
          v34 = timeRead == 0;

          if (!v34)
          {
            if (IMOSLoggingEnabled())
            {
              v35 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
              {
                gUID4 = [inputCopy GUID];
                timeRead2 = [v58 timeRead];
                *buf = 138412546;
                v73 = gUID4;
                v74 = 2112;
                v75 = timeRead2;
                _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "Dropping repeated read receipt for: %@ as it is not from me and the message was already read at %@", buf, 0x16u);
              }
            }

            v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
LABEL_53:

            goto LABEL_73;
          }

          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v40 = v59;
          v41 = [v40 countByEnumeratingWithState:&v62 objects:v70 count:16];
          if (v41)
          {
            v42 = *v63;
            do
            {
              for (j = 0; j != v41; ++j)
              {
                if (*v63 != v42)
                {
                  objc_enumerationMutation(v40);
                }

                v44 = *(*(&v62 + 1) + 8 * j);
                if (IMOSLoggingEnabled())
                {
                  v45 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412546;
                    v73 = gUID3;
                    v74 = 2112;
                    v75 = v44;
                    _os_log_impl(&dword_22B4CC000, v45, OS_LOG_TYPE_INFO, "Found chat to mark as read for messageID: %@ chat: %@", buf, 0x16u);
                  }
                }

                v46 = [(IMReadReceiptProcessingPipelineComponent *)self _markMessagesUpToGUID:gUID3 forChat:v44 messageIsFromMe:1 date:v19];
                [v61 addObjectsFromArray:v46];
              }

              v41 = [v40 countByEnumeratingWithState:&v62 objects:v70 count:16];
            }

            while (v41);
          }

          fromPushID = [inputCopy fromPushID];
          fromIdentifier = [inputCopy fromIdentifier];
          v48 = fromIdentifier;
          if (fromPushID && fromIdentifier)
          {
            recents = self->_recents;
            _stripFZIDPrefix = [fromIdentifier _stripFZIDPrefix];
            [(IMDRecentsController *)recents updateLatestActiveDestination:fromPushID ForHandle:_stripFZIDPrefix incomingType:1];

            v51 = self->_recents;
            v52 = IMSingleObjectArray();
            [(IMDRecentsController *)v51 noteRecentMessageForPeople:v52];
          }
        }

        [inputCopy setMessageItems:v61];
        firstObject = [v59 firstObject];
        [inputCopy setChat:firstObject];

        if (isFromMe)
        {
          [(IDSService *)self->_service _IMDTrackMetric:10400 ForMessageGUID:gUID3];
          firstObject2 = [v59 firstObject];
          [(IMReadReceiptProcessingPipelineComponent *)self _donateReadEventForChat:firstObject2];
        }

        v32 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v29 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            sender = [v58 sender];
            fromIdentifier2 = [inputCopy fromIdentifier];
            *buf = 138412546;
            v73 = sender;
            v74 = 2112;
            v75 = fromIdentifier2;
            _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Invalid receipt sender: read receipts cannot be sent for messages not from self (%@), receipt was sent from (%@)", buf, 0x16u);
          }
        }

        v32 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
      }

      v8 = v32;
    }

    else
    {
      if (isFromMe && ![(IMDMessageStore *)self->_messageStore hasStoredMessageWithGUID:gUID3])
      {
        [(IDSService *)self->_service _IMDTrackMetric:10401 ForMessageGUID:gUID3];
        [(IMDMessageStore *)self->_messageStore addMissingMessageReadReceipt:gUID3];
      }

      v27 = objc_alloc(MEMORY[0x277CCA9B8]);
      v28 = [v27 initWithDomain:*MEMORY[0x277D18DF8] code:8 userInfo:0];
      v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v28];
    }

LABEL_73:

    goto LABEL_74;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      gUID5 = [inputCopy GUID];
      *buf = 138412290;
      v73 = gUID5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "    Ignoring read receipt for message: %@", buf, 0xCu);
    }
  }

  v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
LABEL_74:

  v55 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_donateReadEventForChat:(id)chat
{
  v16 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  v4 = chatCopy;
  if (chatCopy)
  {
    chatIdentifier = [chatCopy chatIdentifier];
    v6 = [chatIdentifier copy];

    if ([v6 length])
    {
      v7 = IMBiomeQueue();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22B51D380;
      block[3] = &unk_278702FF0;
      v13 = v6;
      dispatch_async(v7, block);
    }

    else if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        guid = [v4 guid];
        *buf = 138412290;
        v15 = guid;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Cannot donate read receipt due to nil chat identifier for chat %@", buf, 0xCu);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Cannot donate read receipt due to nil chat", buf, 2u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end