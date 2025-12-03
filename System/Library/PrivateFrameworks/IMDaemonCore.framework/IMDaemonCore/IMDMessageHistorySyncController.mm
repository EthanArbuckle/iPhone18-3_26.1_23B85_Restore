@interface IMDMessageHistorySyncController
- (IMDMessageHistorySyncController)initWithMessageHistorySyncTaskFactory:(id)factory;
- (void)_evaluateStateAndActIfNeeded;
- (void)_scheduleNextEvaluation;
- (void)dealloc;
- (void)replayControllerWantsToSync;
@end

@implementation IMDMessageHistorySyncController

- (IMDMessageHistorySyncController)initWithMessageHistorySyncTaskFactory:(id)factory
{
  v7.receiver = self;
  v7.super_class = IMDMessageHistorySyncController;
  v4 = [(IMDMessageHistorySyncController *)&v7 init];
  if (v4)
  {
    v4->_syncTaskFactory = factory;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel_replayControllerWantsToSync name:IMDMessageHistorySyncNotifyReplayControllerWantsSync object:0];
  }

  return v4;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  self->_currentlyExecutingSyncTask = 0;
  self->_syncTaskFactory = 0;
  v3.receiver = self;
  v3.super_class = IMDMessageHistorySyncController;
  [(IMDMessageHistorySyncController *)&v3 dealloc];
}

- (void)replayControllerWantsToSync
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "ReplayController requested a history Sync", buf, 2u);
    }
  }

  if ([(IMDMessageHistorySyncController *)self replayControllerNeedsSync]|| (currentlyExecutingSyncTask = self->_currentlyExecutingSyncTask) != 0 && ![(IMDMessageHistorySyncTask *)currentlyExecutingSyncTask syncTaskType])
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v6 = 0;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "ReplayController already has sync in flight ignoring request", v6, 2u);
      }
    }
  }

  else
  {
    [(IMDMessageHistorySyncController *)self setReplayControllerNeedsSync:1];
    [(IMDMessageHistorySyncController *)self _evaluateStateAndActIfNeeded];
  }
}

- (void)_evaluateStateAndActIfNeeded
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Checking if any sync task need to be started", buf, 2u);
    }
  }

  if (self->_currentlyExecutingSyncTask)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v5 = "Already performing a sync task, waiting for that to complete before kicking off the next task";
LABEL_16:
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, v5, buf, 2u);
      }
    }
  }

  else if ([(IMDMessageHistorySyncController *)self replayControllerNeedsSync])
  {
    [(IMDMessageHistorySyncController *)self setReplayControllerNeedsSync:0];
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Starting Sync", buf, 2u);
      }
    }

    v7 = [(IMDMessageHistorySyncTaskFactory *)self->_syncTaskFactory newSyncTaskForType:0];
    self->_currentlyExecutingSyncTask = v7;
    *buf = 0;
    v10 = buf;
    v11 = 0x3052000000;
    v12 = sub_22B4D77E0;
    v13 = sub_22B4D7954;
    selfCopy = self;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_22B6AF1E0;
    v8[3] = &unk_278705F18;
    v8[4] = buf;
    [(IMDMessageHistorySyncTask *)v7 startSyncTask:v8];
    _Block_object_dispose(buf, 8);
  }

  else if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v5 = "No Message History to sync.";
      goto LABEL_16;
    }
  }
}

- (void)_scheduleNextEvaluation
{
  v9 = *MEMORY[0x277D85DE8];

  self->_currentlyExecutingSyncTask = 0;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v8 = 4;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Will check in %u seconds if another sync needs to be done", buf, 8u);
    }
  }

  v4 = dispatch_time(0, 4000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6AF3B8;
  block[3] = &unk_278704F90;
  block[4] = self;
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
  v5 = *MEMORY[0x277D85DE8];
}

@end