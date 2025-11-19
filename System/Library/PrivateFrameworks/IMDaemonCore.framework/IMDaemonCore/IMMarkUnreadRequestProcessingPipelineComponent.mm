@interface IMMarkUnreadRequestProcessingPipelineComponent
- (IMMarkUnreadRequestProcessingPipelineComponent)initWithMessageStore:(id)a3 chatRegistry:(id)a4 recents:(id)a5 IDSService:(id)a6;
- (id)runIndividuallyWithInput:(id)a3;
@end

@implementation IMMarkUnreadRequestProcessingPipelineComponent

- (IMMarkUnreadRequestProcessingPipelineComponent)initWithMessageStore:(id)a3 chatRegistry:(id)a4 recents:(id)a5 IDSService:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = IMMarkUnreadRequestProcessingPipelineComponent;
  v15 = [(IMMarkUnreadRequestProcessingPipelineComponent *)&v18 init];
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
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 GUID];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v20 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "<IMMarkUnreadRequestProcessingPipelineComponent> Started processing mark unread request for message GUID: %@", buf, 0xCu);
    }
  }

  if ([v4 isFromMe])
  {
    v7 = [(IMDMessageStore *)self->_messageStore messageWithGUID:v5];
    if ([v5 length] && v7)
    {
      if ([(IMDMessageStore *)self->_messageStore markMessageGUIDUnread:v5])
      {
        if (IMOSLoggingEnabled())
        {
          v8 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v20 = v5;
            _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Successfully marked message (%@) as unread", buf, 0xCu);
          }
        }

        v9 = [(IMDMessageStore *)self->_messageStore chatsForMessageGUID:v5];
        v10 = [v9 firstObject];
        [v4 setChat:v10];

        v18 = v7;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
        [v4 setMessageItems:v11];
      }

      v12 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v4];
    }

    else
    {
      v14 = objc_alloc(MEMORY[0x277CCA9B8]);
      v15 = [v14 initWithDomain:*MEMORY[0x277D18DF8] code:5 userInfo:0];
      v12 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v15];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v20 = v5;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Ignoring mark unread request not from me for message: %@", buf, 0xCu);
      }
    }

    v12 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v4];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v12;
}

@end