@interface IMDReplayController
+ (IMDReplayController)sharedInstance;
- (IMDReplayController)init;
- (IMDReplayController)initWithStorageController:(id)a3;
- (void)_fetchNexBatchOfMessagesAndReplay;
- (void)_processBatch:(id)a3;
- (void)dealloc;
- (void)deleteReplayDBIfNotUnderFirstUnlock;
- (void)endRecordingReplayDatabase;
- (void)overrideStorageControllerWithDatabaseFromPath:(id)a3;
- (void)replayMessages;
- (void)replayMessagesWithCompletion:(id)a3;
- (void)restoreDefaultStoreControllerInstance;
- (void)scheduleSyncTaskForServices:(id)a3;
- (void)startRecordingReplayDatabase;
@end

@implementation IMDReplayController

+ (IMDReplayController)sharedInstance
{
  if (qword_2814211B8 != -1)
  {
    sub_22B7D85D8();
  }

  return qword_281421040;
}

- (IMDReplayController)init
{
  v4.receiver = self;
  v4.super_class = IMDReplayController;
  v2 = [(IMDReplayController *)&v4 init];
  if (v2)
  {
    v2->_storageController = [[IMDReplayStorageController alloc] initWithFilePath:@"/var/mobile/Library/SMS/replayDB.db"];
  }

  return v2;
}

- (IMDReplayController)initWithStorageController:(id)a3
{
  v6.receiver = self;
  v6.super_class = IMDReplayController;
  v4 = [(IMDReplayController *)&v6 init];
  if (v4)
  {
    v4->_storageController = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IMDReplayController;
  [(IMDReplayController *)&v3 dealloc];
}

- (void)_processBatch:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v21 = [MEMORY[0x277CBEB18] array];
  v22 = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [a3 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v4)
  {
    v5 = *v25;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(a3);
        }

        v7 = *(*(&v24 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        v9 = [objc_msgSend(v7 valueForKey:{@"mT", "integerValue"}];
        v10 = [v7 valueForKey:@"mPL"];
        if (v10)
        {
          v11 = [MEMORY[0x277D187A8] transactionLogMessageFromDictionaryRepresentation:v10];
          if (v11)
          {
            v12 = v11;
          }

          else
          {
            v12 = v10;
          }

          if (v9 - 1 >= 2)
          {
            if (v9)
            {
              if (IMOSLoggingEnabled())
              {
                v14 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  *&buf[4] = v7;
                  *&buf[12] = 1024;
                  *&buf[14] = v9;
                  _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "IMDReplayContoller Trying to replay message of unknown type %@ %d", buf, 0x12u);
                }
              }
            }

            else
            {
              [v21 addObject:v12];
            }
          }

          else
          {
            [v22 addObject:v12];
          }
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v13 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "IMDReplayContoller: Found an empty message payload while replaying", buf, 2u);
            }
          }
        }

        objc_autoreleasePoolPop(v8);
      }

      v4 = [a3 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v4);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v29 = 0;
  if ([v21 count])
  {
    ++*(*&buf[8] + 24);
  }

  if ([v22 count])
  {
    ++*(*&buf[8] + 24);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_22B663CD0;
  v23[3] = &unk_278707370;
  v23[4] = self;
  v23[5] = buf;
  v15 = [(NSDictionary *)self->_syncTaskByServiceName valueForKey:*MEMORY[0x277D1A620]];
  v16 = [v15 batchProcessingBlock];
  if ([v21 count] && v15 && objc_msgSend(v15, "batchProcessingBlock") && v16)
  {
    (*(v16 + 16))(v16, v21, v23);
  }

  v17 = [(NSDictionary *)self->_syncTaskByServiceName valueForKey:*MEMORY[0x277D1A610]];
  v18 = [v17 batchProcessingBlock];
  if ([v22 count] && v17 && objc_msgSend(v17, "batchProcessingBlock") && v18)
  {
    (*(v18 + 16))(v18, v22, v23);
  }

  _Block_object_dispose(buf, 8);
  v19 = *MEMORY[0x277D85DE8];
}

- (void)replayMessages
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Request received to replay messages.", v4, 2u);
    }
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:IMDMessageHistorySyncNotifyReplayControllerWantsSync object:0];
}

- (void)scheduleSyncTaskForServices:(id)a3
{
  [(IMDReplayController *)self setHeldDeletionContext:0];
  [(IMDReplayController *)self setSyncTaskByServiceName:a3];

  MEMORY[0x2821F9670](self, sel__fetchNexBatchOfMessagesAndReplay);
}

- (void)_fetchNexBatchOfMessagesAndReplay
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(IMDReplayController *)self heldDeletionContext];
  v4 = objc_autoreleasePoolPush();
  v18 = v3;
  v5 = [(IMDReplayStorageController *)self->_storageController copyNextBatchWithSize:200 iterationContext:&v18];
  if (v3 != v18)
  {
    [(IMDReplayController *)self setHeldDeletionContext:?];
  }

  if (v5 && [v5 count])
  {
    [(IMDReplayController *)self _processBatch:v5];
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [(NSDictionary *)self->_syncTaskByServiceName allKeys];
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v7)
    {
      v8 = *v15;
      do
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [-[NSDictionary valueForKey:](self->_syncTaskByServiceName valueForKey:{*(*(&v14 + 1) + 8 * v9)), "completionBlock"}];
          if (v10)
          {
            (*(v10 + 16))(v10, 0);
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v7);
    }

    if ([(IMDReplayController *)self automationCompletionBlock])
    {
      (*([(IMDReplayController *)self automationCompletionBlock]+ 16))();
      [(IMDReplayController *)self setAutomationCompletionBlock:0];
    }

    [(IMDReplayController *)self setHeldDeletionContext:0];
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Deleting replay DB after replaying messages", v13, 2u);
      }
    }

    [(IMDReplayStorageController *)self->_storageController deleteReplayDB];
  }

  objc_autoreleasePoolPop(v4);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)deleteReplayDBIfNotUnderFirstUnlock
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [objc_msgSend(MEMORY[0x277D1ACB8] "sharedInstance")];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = @"NO";
      if (v3)
      {
        v5 = @"YES";
      }

      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "deleteReplayDBIfNotUnderFirstUnlock isUnderFirstUnlock %@", &v10, 0xCu);
    }
  }

  v6 = IMOSLoggingEnabled();
  if (v3)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Not deleting replay DB", &v10, 2u);
      }
    }
  }

  else
  {
    if (v6)
    {
      v8 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Deleting replay DB on imagent launch after first unlock", &v10, 2u);
      }
    }

    [(IMDReplayStorageController *)self->_storageController deleteReplayDB];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)overrideStorageControllerWithDatabaseFromPath:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = a3;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Setting up new replay database at path: %@", &v11, 0xCu);
    }
  }

  v6 = [[IMDReplayStorageController alloc] initWithFilePath:a3];
  if (v6)
  {
    if (self->_suspendedStorageController)
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          LOWORD(v11) = 0;
          _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "An replay database was already overriding the default, ending previous override", &v11, 2u);
        }
      }
    }

    else
    {
      self->_suspendedStorageController = self->_storageController;
    }

    self->_storageController = v6;
  }

  else if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [(IMDReplayStorageController *)self->_storageController filePath];
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Unable to setup replayStorageController, previous store controller with database at path %@ remains active", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)restoreDefaultStoreControllerInstance
{
  suspendedStorageController = self->_suspendedStorageController;
  v4 = IMOSLoggingEnabled();
  if (suspendedStorageController)
  {
    if (v4)
    {
      v5 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Restoring default replay database", buf, 2u);
      }
    }

    if (self->_isRecordingReplayDB)
    {
      [(IMDReplayController *)self endRecordingReplayDatabase];
    }

    self->_storageController = self->_suspendedStorageController;
    self->_suspendedStorageController = 0;
  }

  else if (v4)
  {
    v6 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Attempted to restore a database when no override database was set", v7, 2u);
    }
  }
}

- (void)startRecordingReplayDatabase
{
  if (!self->_isRecordingReplayDB)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v4 = 0;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Starting to recording replay database", v4, 2u);
      }
    }

    self->_isRecordingReplayDB = 1;
  }
}

- (void)endRecordingReplayDatabase
{
  if (self->_isRecordingReplayDB)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v4 = 0;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "End recording replay database", v4, 2u);
      }
    }

    self->_isRecordingReplayDB = 0;
  }
}

- (void)replayMessagesWithCompletion:(id)a3
{
  if (a3)
  {
    [(IMDReplayController *)self setAutomationCompletionBlock:?];
  }

  [(IMDReplayController *)self replayMessages];
}

@end