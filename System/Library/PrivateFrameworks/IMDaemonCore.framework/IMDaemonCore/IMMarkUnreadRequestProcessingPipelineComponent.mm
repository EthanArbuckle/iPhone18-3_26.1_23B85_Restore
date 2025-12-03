@interface IMMarkUnreadRequestProcessingPipelineComponent
- (IMMarkUnreadRequestProcessingPipelineComponent)initWithMessageStore:(id)store chatRegistry:(id)registry recents:(id)recents IDSService:(id)service;
- (id)runIndividuallyWithInput:(id)input;
@end

@implementation IMMarkUnreadRequestProcessingPipelineComponent

- (IMMarkUnreadRequestProcessingPipelineComponent)initWithMessageStore:(id)store chatRegistry:(id)registry recents:(id)recents IDSService:(id)service
{
  storeCopy = store;
  registryCopy = registry;
  recentsCopy = recents;
  serviceCopy = service;
  v18.receiver = self;
  v18.super_class = IMMarkUnreadRequestProcessingPipelineComponent;
  v15 = [(IMMarkUnreadRequestProcessingPipelineComponent *)&v18 init];
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
  v21 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  gUID = [inputCopy GUID];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v20 = gUID;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "<IMMarkUnreadRequestProcessingPipelineComponent> Started processing mark unread request for message GUID: %@", buf, 0xCu);
    }
  }

  if ([inputCopy isFromMe])
  {
    v7 = [(IMDMessageStore *)self->_messageStore messageWithGUID:gUID];
    if ([gUID length] && v7)
    {
      if ([(IMDMessageStore *)self->_messageStore markMessageGUIDUnread:gUID])
      {
        if (IMOSLoggingEnabled())
        {
          v8 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v20 = gUID;
            _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Successfully marked message (%@) as unread", buf, 0xCu);
          }
        }

        v9 = [(IMDMessageStore *)self->_messageStore chatsForMessageGUID:gUID];
        firstObject = [v9 firstObject];
        [inputCopy setChat:firstObject];

        v18 = v7;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
        [inputCopy setMessageItems:v11];
      }

      v12 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
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
        v20 = gUID;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Ignoring mark unread request not from me for message: %@", buf, 0xCu);
      }
    }

    v12 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v12;
}

@end