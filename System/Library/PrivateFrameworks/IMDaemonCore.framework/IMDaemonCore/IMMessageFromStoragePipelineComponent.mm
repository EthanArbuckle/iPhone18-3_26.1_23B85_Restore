@interface IMMessageFromStoragePipelineComponent
- (BOOL)_itemIsEligibleForStorageControllerWithInput:(id)input;
- (IMMessageFromStoragePipelineComponent)initWithStorageProcessingType:(unint64_t)type storageController:(id)controller broadcaster:(id)broadcaster;
- (id)runIndividuallyWithInput:(id)input;
@end

@implementation IMMessageFromStoragePipelineComponent

- (id)runIndividuallyWithInput:(id)input
{
  v51 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  gUID = [inputCopy GUID];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      processingType = self->_processingType;
      v8 = @"Unknown";
      if (processingType == 1)
      {
        v8 = @"Post";
      }

      if (processingType)
      {
        v9 = v8;
      }

      else
      {
        v9 = @"Pre";
      }

      v10 = v9;
      *buf = 138412546;
      v46 = v10;
      v47 = 2112;
      v48 = gUID;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "<IMMessageFromStoragePipelineComponent> Started processing type (%@) for guid %@", buf, 0x16u);
    }
  }

  v11 = 16;
  v12 = self->_processingType;
  if (v12 == 1)
  {
    if ([inputCopy isLastFromStorage] && -[IMMessageFromStoragePipelineComponent _itemIsEligibleForStorageControllerWithInput:](self, "_itemIsEligibleForStorageControllerWithInput:", inputCopy))
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "    Last item from storage finished processing", buf, 2u);
        }
      }

      [(IMDMessageFromStorageController *)self->_storageController noteLastItemProcessed];
    }

    if (-[IMDMessageFromStorageController isAwaitingStorageTimer](self->_storageController, "isAwaitingStorageTimer") || ([inputCopy messageItems], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "count") == 0, v15, v16))
    {
      if (IMOSLoggingEnabled())
      {
        v34 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_INFO, "    Suppressing message from storage update.", buf, 2u);
        }
      }

      [(IMDMessageFromStorageController *)self->_storageController noteSuppressedMessageUpdate:gUID];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          messageItems = [inputCopy messageItems];
          v19 = [messageItems count];
          account = [inputCopy account];
          service = [account service];
          internalName = [service internalName];
          broadcaster = self->_broadcaster;
          *buf = 134218498;
          v46 = v19;
          v47 = 2112;
          v48 = internalName;
          v49 = 2048;
          v50 = broadcaster;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "    Updated messages: %lu for service: %@ with broadcaster: %p", buf, 0x20u);
        }
      }

      messageItems2 = [inputCopy messageItems];
      v44 = IMCreateSerializedItemsFromArray();

      v25 = self->_broadcaster;
      account2 = [inputCopy account];
      service2 = [account2 service];
      internalName2 = [service2 internalName];
      chat = [inputCopy chat];
      chatIdentifier = [chat chatIdentifier];
      chat2 = [inputCopy chat];
      [v25 service:internalName2 chat:chatIdentifier style:objc_msgSend(chat2 messagesUpdated:{"style"), v44}];

      v11 = v43;
    }
  }

  else if (!v12)
  {
    if ([inputCopy isLastFromStorage] && -[IMMessageFromStoragePipelineComponent _itemIsEligibleForStorageControllerWithInput:](self, "_itemIsEligibleForStorageControllerWithInput:", inputCopy))
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "    Last item from storage", buf, 2u);
        }
      }

      [(IMDMessageFromStorageController *)self->_storageController noteLastItemFromStorage:gUID];
    }

    else if ([(IMMessageFromStoragePipelineComponent *)self _itemIsEligibleForStorageControllerWithInput:inputCopy])
    {
      if (IMOSLoggingEnabled())
      {
        v32 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(inputCopy, "isFromStorage")}];
          *buf = 138412290;
          v46 = v33;
          _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "    Is from storage (%@)", buf, 0xCu);
        }
      }

      -[IMDMessageFromStorageController noteItemFromStorage:extendsStorageTimer:](self->_storageController, "noteItemFromStorage:extendsStorageTimer:", gUID, [inputCopy isFromStorage]);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v35 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = *(&self->super.super.isa + v11);
      v37 = @"Unknown";
      if (v36 == 1)
      {
        v37 = @"Post";
      }

      if (v36)
      {
        v38 = v37;
      }

      else
      {
        v38 = @"Pre";
      }

      v39 = v38;
      *buf = 138412546;
      v46 = v39;
      v47 = 2112;
      v48 = gUID;
      _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "    Processed type (%@) for guid %@", buf, 0x16u);
    }
  }

  v40 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];

  v41 = *MEMORY[0x277D85DE8];

  return v40;
}

- (IMMessageFromStoragePipelineComponent)initWithStorageProcessingType:(unint64_t)type storageController:(id)controller broadcaster:(id)broadcaster
{
  controllerCopy = controller;
  broadcasterCopy = broadcaster;
  v14.receiver = self;
  v14.super_class = IMMessageFromStoragePipelineComponent;
  v11 = [(IMMessageFromStoragePipelineComponent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_storageController, controller);
    v12->_processingType = type;
    objc_storeStrong(&v12->_broadcaster, broadcaster);
  }

  return v12;
}

- (BOOL)_itemIsEligibleForStorageControllerWithInput:(id)input
{
  inputCopy = input;
  if ([(IMDMessageFromStorageController *)self->_storageController isAwaitingStorageTimer])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "    Storage timer is running, noting item to storage controller", buf, 2u);
      }
    }

    isFromStorage = 1;
  }

  else
  {
    v7 = +[IMDMessageStore sharedInstance];
    gUID = [inputCopy GUID];
    v9 = [v7 messageWithGUID:gUID];
    scheduleType = [v9 scheduleType];

    if (scheduleType == 2)
    {
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *v13 = 0;
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "    Item is user scheduled message and storage timer is not running, does not need to be noted to storage controller", v13, 2u);
        }
      }

      isFromStorage = 0;
    }

    else
    {
      isFromStorage = [inputCopy isFromStorage];
    }
  }

  return isFromStorage;
}

@end