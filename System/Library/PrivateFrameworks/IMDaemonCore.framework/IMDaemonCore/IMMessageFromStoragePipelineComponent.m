@interface IMMessageFromStoragePipelineComponent
- (BOOL)_itemIsEligibleForStorageControllerWithInput:(id)a3;
- (IMMessageFromStoragePipelineComponent)initWithStorageProcessingType:(unint64_t)a3 storageController:(id)a4 broadcaster:(id)a5;
- (id)runIndividuallyWithInput:(id)a3;
@end

@implementation IMMessageFromStoragePipelineComponent

- (id)runIndividuallyWithInput:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 GUID];
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
      v48 = v5;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "<IMMessageFromStoragePipelineComponent> Started processing type (%@) for guid %@", buf, 0x16u);
    }
  }

  v11 = 16;
  v12 = self->_processingType;
  if (v12 == 1)
  {
    if ([v4 isLastFromStorage] && -[IMMessageFromStoragePipelineComponent _itemIsEligibleForStorageControllerWithInput:](self, "_itemIsEligibleForStorageControllerWithInput:", v4))
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

    if (-[IMDMessageFromStorageController isAwaitingStorageTimer](self->_storageController, "isAwaitingStorageTimer") || ([v4 messageItems], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "count") == 0, v15, v16))
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

      [(IMDMessageFromStorageController *)self->_storageController noteSuppressedMessageUpdate:v5];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = [v4 messageItems];
          v19 = [v18 count];
          v20 = [v4 account];
          v21 = [v20 service];
          v22 = [v21 internalName];
          broadcaster = self->_broadcaster;
          *buf = 134218498;
          v46 = v19;
          v47 = 2112;
          v48 = v22;
          v49 = 2048;
          v50 = broadcaster;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "    Updated messages: %lu for service: %@ with broadcaster: %p", buf, 0x20u);
        }
      }

      v24 = [v4 messageItems];
      v44 = IMCreateSerializedItemsFromArray();

      v25 = self->_broadcaster;
      v26 = [v4 account];
      v27 = [v26 service];
      v28 = [v27 internalName];
      v29 = [v4 chat];
      v30 = [v29 chatIdentifier];
      v31 = [v4 chat];
      [v25 service:v28 chat:v30 style:objc_msgSend(v31 messagesUpdated:{"style"), v44}];

      v11 = v43;
    }
  }

  else if (!v12)
  {
    if ([v4 isLastFromStorage] && -[IMMessageFromStoragePipelineComponent _itemIsEligibleForStorageControllerWithInput:](self, "_itemIsEligibleForStorageControllerWithInput:", v4))
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

      [(IMDMessageFromStorageController *)self->_storageController noteLastItemFromStorage:v5];
    }

    else if ([(IMMessageFromStoragePipelineComponent *)self _itemIsEligibleForStorageControllerWithInput:v4])
    {
      if (IMOSLoggingEnabled())
      {
        v32 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "isFromStorage")}];
          *buf = 138412290;
          v46 = v33;
          _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "    Is from storage (%@)", buf, 0xCu);
        }
      }

      -[IMDMessageFromStorageController noteItemFromStorage:extendsStorageTimer:](self->_storageController, "noteItemFromStorage:extendsStorageTimer:", v5, [v4 isFromStorage]);
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
      v48 = v5;
      _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "    Processed type (%@) for guid %@", buf, 0x16u);
    }
  }

  v40 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v4];

  v41 = *MEMORY[0x277D85DE8];

  return v40;
}

- (IMMessageFromStoragePipelineComponent)initWithStorageProcessingType:(unint64_t)a3 storageController:(id)a4 broadcaster:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = IMMessageFromStoragePipelineComponent;
  v11 = [(IMMessageFromStoragePipelineComponent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_storageController, a4);
    v12->_processingType = a3;
    objc_storeStrong(&v12->_broadcaster, a5);
  }

  return v12;
}

- (BOOL)_itemIsEligibleForStorageControllerWithInput:(id)a3
{
  v4 = a3;
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

    v6 = 1;
  }

  else
  {
    v7 = +[IMDMessageStore sharedInstance];
    v8 = [v4 GUID];
    v9 = [v7 messageWithGUID:v8];
    v10 = [v9 scheduleType];

    if (v10 == 2)
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

      v6 = 0;
    }

    else
    {
      v6 = [v4 isFromStorage];
    }
  }

  return v6;
}

@end