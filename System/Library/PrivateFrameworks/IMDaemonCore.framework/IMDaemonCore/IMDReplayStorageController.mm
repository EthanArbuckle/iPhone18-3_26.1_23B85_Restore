@interface IMDReplayStorageController
- (BOOL)storeDictionary:(id)dictionary error:(id *)error;
- (IMDReplayStorageController)initWithFilePath:(id)path;
- (id)copyNextBatchWithSize:(unint64_t)size iterationContext:(id *)context;
- (void)dealloc;
- (void)deleteReplayDB;
@end

@implementation IMDReplayStorageController

- (IMDReplayStorageController)initWithFilePath:(id)path
{
  if (path)
  {
    v7.receiver = self;
    v7.super_class = IMDReplayStorageController;
    v4 = [(IMDReplayStorageController *)&v7 init];
    if (v4)
    {
      v4->_filePath = path;
      v4->_store = [objc_alloc(MEMORY[0x277D18AD0]) initWithPath:path storeName:@"IMDReplayStorageController" dataProtectionClass:2];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "passing in nil filePath to initWithFilePath", buf, 2u);
      }
    }

    return 0;
  }

  return v4;
}

- (BOOL)storeDictionary:(id)dictionary error:(id *)error
{
  objc_sync_enter(self);
  if (dictionary)
  {
    goto LABEL_2;
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "IMDReplayStorageController was asked to store nil dictionary", v10, 2u);
    }
  }

  if (!error)
  {
LABEL_2:
    [(IDSKVStore *)self->_store persistData:JWEncodeDictionary() forKey:0 error:0];
    v7 = 1;
  }

  else
  {
    v7 = 0;
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"__kIMDReplayMessageStorageControllerErrorDomain" code:0 userInfo:0];
  }

  objc_sync_exit(self);
  return v7;
}

- (id)copyNextBatchWithSize:(unint64_t)size iterationContext:(id *)context
{
  v23 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  if (context && *context)
  {
    -[IDSKVStore deleteBatchWithContext:error:](self->_store, "deleteBatchWithContext:error:", [*context deleteContext], 0);
    *context = 0;
  }

  v21 = 0;
  v7 = [(IDSKVStore *)self->_store datasUpToLimit:size deleteContext:&v21 error:0];
  if (v7)
  {
    if (context)
    {
      v8 = objc_alloc_init(IMDReplayStorageIterationContext);
      *context = v8;
      [(IMDReplayStorageIterationContext *)v8 setDeleteContext:v21];
    }

    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v10)
    {
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = objc_autoreleasePoolPush();
          [v9 addObject:JWDecodeDictionary()];
          objc_autoreleasePoolPop(v14);
        }

        v10 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v9 = 0;
  }

  objc_sync_exit(self);
  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)deleteReplayDB
{
  v8 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      filePath = self->_filePath;
      v6 = 138412290;
      v7 = filePath;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Deleting replay db with path %@", &v6, 0xCu);
    }
  }

  [(IDSKVStore *)self->_store deleteDatabase];
  objc_sync_exit(self);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  objc_sync_enter(self);

  objc_sync_exit(self);
  v3.receiver = self;
  v3.super_class = IMDReplayStorageController;
  [(IMDReplayStorageController *)&v3 dealloc];
}

@end