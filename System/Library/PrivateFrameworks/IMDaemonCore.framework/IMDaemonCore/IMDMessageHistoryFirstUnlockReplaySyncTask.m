@interface IMDMessageHistoryFirstUnlockReplaySyncTask
- (IMDMessageHistoryFirstUnlockReplaySyncTask)initWithReplayController:(id)a3 accountController:(id)a4;
- (id)_createProcessBatchBlockWithServiceSession:(id)a3;
- (id)_createSyncCompletionBlockForServiceSession:(id)a3;
- (void)_setupAndBeginSync;
- (void)dealloc;
- (void)startSyncTask:(id)a3;
@end

@implementation IMDMessageHistoryFirstUnlockReplaySyncTask

- (IMDMessageHistoryFirstUnlockReplaySyncTask)initWithReplayController:(id)a3 accountController:(id)a4
{
  v9.receiver = self;
  v9.super_class = IMDMessageHistoryFirstUnlockReplaySyncTask;
  v6 = [(IMDMessageHistoryFirstUnlockReplaySyncTask *)&v9 init];
  if (v6)
  {
    v7 = objc_opt_class();
    v6->_className = NSStringFromClass(v7);
    v6->_accountController = a4;
    v6->_replayController = a3;
  }

  return v6;
}

- (void)dealloc
{
  self->_className = 0;

  self->_accountController = 0;
  self->_taskGroupedByServiceName = 0;

  self->_syncTaskCompletionBlock = 0;
  self->_replayController = 0;
  v3.receiver = self;
  v3.super_class = IMDMessageHistoryFirstUnlockReplaySyncTask;
  [(IMDMessageHistoryFirstUnlockReplaySyncTask *)&v3 dealloc];
}

- (void)startSyncTask:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_taskGroupedByServiceName)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        className = self->_className;
        v8 = 138412290;
        v9 = className;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "%@: Start sync should not be called more than once.  Ignoring request.", &v8, 0xCu);
      }
    }

    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    [(IMDMessageHistoryFirstUnlockReplaySyncTask *)self setSyncTaskCompletionBlock:a3];
    v7 = *MEMORY[0x277D85DE8];

    MEMORY[0x2821F9670](self, sel__setupAndBeginSync);
  }
}

- (void)_setupAndBeginSync
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(IMDAccountController *)[(IMDMessageHistoryFirstUnlockReplaySyncTask *)self accountController] activeSessions];
  -[IMDMessageHistoryFirstUnlockReplaySyncTask setTaskGroupedByServiceName:](self, "setTaskGroupedByServiceName:", [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSArray count](v3, "count")}]);
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v19 = [(NSArray *)v3 count];
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "IMDMessageHistoryFirstUnlockReplaySyncTask: Begin replaying first unlock database for %ld services", buf, 0xCu);
    }
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = objc_alloc_init(MEMORY[0x277D187B0]);
        v10 = [(IMDMessageHistoryFirstUnlockReplaySyncTask *)self _createProcessBatchBlockWithServiceSession:v8];
        v11 = [(IMDMessageHistoryFirstUnlockReplaySyncTask *)self _createSyncCompletionBlockForServiceSession:v8];
        [v9 setBatchProcessingBlock:v10];
        [v9 setKnownRecordIDsFromList:0];
        [v9 setCompletionBlock:v11];

        -[NSMutableDictionary setValue:forKey:](-[IMDMessageHistoryFirstUnlockReplaySyncTask taskGroupedByServiceName](self, "taskGroupedByServiceName"), "setValue:forKey:", v9, [objc_msgSend(v8 "service")]);
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  [(IMDReplayController *)self->_replayController scheduleSyncTaskForServices:[(IMDMessageHistoryFirstUnlockReplaySyncTask *)self taskGroupedByServiceName]];
  v12 = *MEMORY[0x277D85DE8];
}

- (id)_createProcessBatchBlockWithServiceSession:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_22B571F7C;
  v4[3] = &unk_278704D30;
  v4[4] = self;
  v4[5] = a3;
  return [v4 copy];
}

- (id)_createSyncCompletionBlockForServiceSession:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_22B5722CC;
  v4[3] = &unk_278704D58;
  v4[4] = self;
  v4[5] = a3;
  return [v4 copy];
}

@end