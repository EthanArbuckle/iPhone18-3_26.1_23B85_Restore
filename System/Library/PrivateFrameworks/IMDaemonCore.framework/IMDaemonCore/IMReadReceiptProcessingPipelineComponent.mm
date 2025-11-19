@interface IMReadReceiptProcessingPipelineComponent
- (IMReadReceiptProcessingPipelineComponent)initWithMessageStore:(id)a3 chatRegistry:(id)a4 recents:(id)a5 IDSService:(id)a6;
- (id)runIndividuallyWithInput:(id)a3;
- (void)_donateReadEventForChat:(id)a3;
@end

@implementation IMReadReceiptProcessingPipelineComponent

- (IMReadReceiptProcessingPipelineComponent)initWithMessageStore:(id)a3 chatRegistry:(id)a4 recents:(id)a5 IDSService:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = IMReadReceiptProcessingPipelineComponent;
  v15 = [(IMReadReceiptProcessingPipelineComponent *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_messageStore, a3);
    objc_storeStrong(&v16->_chatRegistry, a4);
    objc_storeStrong(&v16->_recents, a5);
    objc_storeStrong(&v16->_service, a6);
  }

  return v16;
}

- (id)runIndividuallyWithInput:(id)a3
{
  v78 = *MEMORY[0x277D85DE8];
  v60 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [v60 GUID];
      *buf = 138412290;
      v73 = v5;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "<IMReadReceiptProcessingPipelineComponent> Started processing for Message GUID: %@", buf, 0xCu);
    }
  }

  if (!IMGetCachedDomainBoolForKey())
  {
    v9 = [v60 isFromDefaultPairedDevice];
    v57 = [v60 isFromMe];
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [v60 GUID];
        v12 = v11;
        v13 = @"NO";
        if (v57)
        {
          v14 = @"YES";
        }

        else
        {
          v14 = @"NO";
        }

        *buf = 138412802;
        v73 = v11;
        v74 = 2112;
        v75 = v14;
        if (v9)
        {
          v13 = @"YES";
        }

        v76 = 2112;
        v77 = v13;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Received read receipt for: %@ receipt from me: %@ isDefaultPairedDevice: %@", buf, 0x20u);
      }
    }

    v61 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = [v60 GUID];
    v58 = [(IMDMessageStore *)self->_messageStore messageWithGUID:v15];
    v16 = [v58 isFromMe];
    v59 = [(IMDMessageStore *)self->_messageStore chatsForMessageGUID:v15];
    if ([v59 count])
    {
      if ((v16 | v57))
      {
        v17 = MEMORY[0x277CBEAA8];
        v18 = [v60 timestamp];
        v19 = [v17 __im_iMessageDateFromTimeStamp:v18];

        if (v57)
        {
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v20 = v59;
          v21 = [v20 countByEnumeratingWithState:&v66 objects:v71 count:16];
          if (v21)
          {
            v22 = *v67;
            while (2)
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v67 != v22)
                {
                  objc_enumerationMutation(v20);
                }

                v24 = *(*(&v66 + 1) + 8 * i);
                if (IMOSLoggingEnabled())
                {
                  v25 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412546;
                    v73 = v15;
                    v74 = 2112;
                    v75 = v24;
                    _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Found chat to mark as read for messageID: %@ chat: %@", buf, 0x16u);
                  }
                }

                v26 = [(IMReadReceiptProcessingPipelineComponent *)self _markMessagesUpToGUID:v15 forChat:v24 messageIsFromMe:0 date:v19];
                [v61 addObjectsFromArray:v26];

                if (![v61 count] && !-[IMDMessageStore hasStoredMessageWithGUID:](self->_messageStore, "hasStoredMessageWithGUID:", v15))
                {
                  [(IDSService *)self->_service _IMDTrackMetric:10401 ForMessageGUID:v15];
                  [(IMDMessageStore *)self->_messageStore addMissingMessageReadReceipt:v15];
                  v38 = objc_alloc(MEMORY[0x277CCA9B8]);
                  v39 = [v38 initWithDomain:*MEMORY[0x277D18DF8] code:5 userInfo:0];
                  v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v39];

                  goto LABEL_53;
                }
              }

              v21 = [v20 countByEnumeratingWithState:&v66 objects:v71 count:16];
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
          v33 = [v58 timeRead];
          v34 = v33 == 0;

          if (!v34)
          {
            if (IMOSLoggingEnabled())
            {
              v35 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
              {
                v36 = [v60 GUID];
                v37 = [v58 timeRead];
                *buf = 138412546;
                v73 = v36;
                v74 = 2112;
                v75 = v37;
                _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "Dropping repeated read receipt for: %@ as it is not from me and the message was already read at %@", buf, 0x16u);
              }
            }

            v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v60];
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
                    v73 = v15;
                    v74 = 2112;
                    v75 = v44;
                    _os_log_impl(&dword_22B4CC000, v45, OS_LOG_TYPE_INFO, "Found chat to mark as read for messageID: %@ chat: %@", buf, 0x16u);
                  }
                }

                v46 = [(IMReadReceiptProcessingPipelineComponent *)self _markMessagesUpToGUID:v15 forChat:v44 messageIsFromMe:1 date:v19];
                [v61 addObjectsFromArray:v46];
              }

              v41 = [v40 countByEnumeratingWithState:&v62 objects:v70 count:16];
            }

            while (v41);
          }

          v20 = [v60 fromPushID];
          v47 = [v60 fromIdentifier];
          v48 = v47;
          if (v20 && v47)
          {
            recents = self->_recents;
            v50 = [v47 _stripFZIDPrefix];
            [(IMDRecentsController *)recents updateLatestActiveDestination:v20 ForHandle:v50 incomingType:1];

            v51 = self->_recents;
            v52 = IMSingleObjectArray();
            [(IMDRecentsController *)v51 noteRecentMessageForPeople:v52];
          }
        }

        [v60 setMessageItems:v61];
        v53 = [v59 firstObject];
        [v60 setChat:v53];

        if (v57)
        {
          [(IDSService *)self->_service _IMDTrackMetric:10400 ForMessageGUID:v15];
          v54 = [v59 firstObject];
          [(IMReadReceiptProcessingPipelineComponent *)self _donateReadEventForChat:v54];
        }

        v32 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v60];
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v29 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = [v58 sender];
            v31 = [v60 fromIdentifier];
            *buf = 138412546;
            v73 = v30;
            v74 = 2112;
            v75 = v31;
            _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Invalid receipt sender: read receipts cannot be sent for messages not from self (%@), receipt was sent from (%@)", buf, 0x16u);
          }
        }

        v32 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v60];
      }

      v8 = v32;
    }

    else
    {
      if (v57 && ![(IMDMessageStore *)self->_messageStore hasStoredMessageWithGUID:v15])
      {
        [(IDSService *)self->_service _IMDTrackMetric:10401 ForMessageGUID:v15];
        [(IMDMessageStore *)self->_messageStore addMissingMessageReadReceipt:v15];
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
      v7 = [v60 GUID];
      *buf = 138412290;
      v73 = v7;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "    Ignoring read receipt for message: %@", buf, 0xCu);
    }
  }

  v8 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v60];
LABEL_74:

  v55 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_donateReadEventForChat:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 chatIdentifier];
    v6 = [v5 copy];

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
        v10 = [v4 guid];
        *buf = 138412290;
        v15 = v10;
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