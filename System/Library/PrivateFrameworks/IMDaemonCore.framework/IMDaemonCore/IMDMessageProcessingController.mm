@interface IMDMessageProcessingController
- (IMDMessageProcessingController)init;
- (IMDMessageProcessingController)initWithMessagesPTaskStore:(id)store;
- (void)_indexSpotlightIfNeedForPTask:(id)task;
- (void)_processingTimerFired;
- (void)_scheduleDeferredProcessingWithTimeInterval:(double)interval;
- (void)dealloc;
@end

@implementation IMDMessageProcessingController

- (IMDMessageProcessingController)initWithMessagesPTaskStore:(id)store
{
  v6.receiver = self;
  v6.super_class = IMDMessageProcessingController;
  v4 = [(IMDMessageProcessingController *)&v6 init];
  if (v4)
  {
    v4->_pTaskStore = store;
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  }

  return v4;
}

- (IMDMessageProcessingController)init
{
  v3 = objc_alloc_init(IMDMessagePTaskXPCStore);
  v4 = [(IMDMessageProcessingController *)self initWithMessagesPTaskStore:v3];

  return v4;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  self->_pTaskStore = 0;
  [(NSTimer *)self->_processingTimer invalidate];

  self->_processingTimer = 0;
  v3.receiver = self;
  v3.super_class = IMDMessageProcessingController;
  [(IMDMessageProcessingController *)&v3 dealloc];
}

- (void)_scheduleDeferredProcessingWithTimeInterval:(double)interval
{
  if (interval > 0.0)
  {
    v10[6] = v6;
    v10[7] = v5;
    v10[10] = v3;
    v10[11] = v4;
    mainThread = [MEMORY[0x277CCACC8] mainThread];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_22B50A054;
    v10[3] = &unk_278703228;
    *&v10[5] = interval;
    v10[4] = self;
    [mainThread __im_performBlock:v10];
  }
}

- (void)_processingTimerFired
{
  v25 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Checking for deferred message processing task", buf, 2u);
    }
  }

  processingTimer = self->_processingTimer;
  if (processingTimer)
  {
    [(NSTimer *)processingTimer invalidate];

    self->_processingTimer = 0;
  }

  loadMostRecentMessagePTasks = [(IMDMessagePTaskStore *)self->_pTaskStore loadMostRecentMessagePTasks];
  v6 = IMOSLoggingEnabled();
  if (!loadMostRecentMessagePTasks)
  {
    if (!v6)
    {
      goto LABEL_29;
    }

    v15 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v16 = "MessageProcessing: Unable to retrieve ptask from store";
LABEL_28:
    _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, v16, buf, 2u);
    goto LABEL_29;
  }

  if (v6)
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [loadMostRecentMessagePTasks count];
      *buf = 134217984;
      v24 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Found %ld messages that need processing", buf, 0xCu);
    }
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [loadMostRecentMessagePTasks countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(loadMostRecentMessagePTasks);
        }

        [(IMDMessageProcessingController *)self _indexSpotlightIfNeedForPTask:*(*(&v18 + 1) + 8 * i)];
      }

      v9 = [loadMostRecentMessagePTasks countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  [(IMDMessagePTaskStore *)self->_pTaskStore deleteAllCompletedTasks];
  v12 = [loadMostRecentMessagePTasks count] == 100;
  v13 = IMOSLoggingEnabled();
  if (!v12)
  {
    if (!v13)
    {
      goto LABEL_29;
    }

    v15 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v16 = "Finished processing deferred messages";
    goto LABEL_28;
  }

  if (v13)
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Scheduling next batch of messages to process", buf, 2u);
    }
  }

  [(IMDMessageProcessingController *)self _scheduleDeferredProcessingWithTimeInterval:2.0];
LABEL_29:
  v17 = *MEMORY[0x277D85DE8];
}

- (void)_indexSpotlightIfNeedForPTask:(id)task
{
  if ([task needsProccesingFor:1])
  {
    [task compeletedTask:1];
    [(IMDMessagePTaskStore *)self->_pTaskStore updateTaskFlagsForPTask:task];
    if ([(IMDMessageProcessingController *)self _pref_IMDCoreSpotlightHasMigrated])
    {
      [task guid];

      MEMORY[0x2821F9670](self, sel__xpc_IMDCoreSpotlightAddMessageGUID_reason_);
    }

    else if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v6 = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Not indexing message, spotlight has not finished migrating yet", v6, 2u);
      }
    }
  }
}

@end