@interface NNMKInitialSyncProgressTracker
- (NNMKInitialSyncProgressTrackerDelegate)delegate;
- (void)_handleInitialSyncCompleted;
- (void)cancelTimeout;
- (void)finishedSendingInitialSyncContentToPairedDevice;
- (void)incrementProgressBy:(double)by;
- (void)initialSyncTimedOut;
- (void)startSyncTimeoutForAccounts;
- (void)startSyncTimeoutForMessageContent;
- (void)startSyncTimeoutForMessageHeaders;
- (void)startTrackingInitialSync;
- (void)syncCompleted;
- (void)syncFailedWithError:(id)error;
- (void)updateProgressWithAccountsArrivedInPairedDevice;
- (void)updateProgressWithAccountsSent;
- (void)updateProgressWithContentCompletelySyncedForMessageId:(id)id;
- (void)updateProgressWithMessageContentArrivedInPairedDevice:(id)device;
- (void)updateProgressWithMessageContentDownloadFailed:(id)failed;
- (void)updateProgressWithMessageHeadersArrivedInPairedDevice;
- (void)updateProgressWithMessageHeadersSent:(id)sent;
@end

@implementation NNMKInitialSyncProgressTracker

- (void)startTrackingInitialSync
{
  v3 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25B19F000, v3, OS_LOG_TYPE_DEFAULT, "Initial sync progress - Started tracking initial sync", v4, 2u);
  }

  *&self->_trackingInitialSync = 257;
  self->_initialSyncProgress = 0.0;
  [(NNMKSyncStateManager *)self->_syncStateManager reportInitialSyncProgress:0.0];
  [(NNMKInitialSyncProgressTracker *)self startSyncTimeoutForAccounts];
  self->_isWaitingForAccounts = 1;
}

- (void)updateProgressWithAccountsSent
{
  if (self->_trackingInitialSync)
  {
    v7 = v2;
    v8 = v3;
    v5 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25B19F000, v5, OS_LOG_TYPE_DEFAULT, "Initial sync progress - Accounts sent to paired device", v6, 2u);
    }

    [(NNMKInitialSyncProgressTracker *)self incrementProgressBy:0.05];
    [(NNMKInitialSyncProgressTracker *)self startSyncTimeoutForMessageHeaders];
    self->_isWaitingForMessageHeaders = 1;
  }
}

- (void)updateProgressWithAccountsArrivedInPairedDevice
{
  if (self->_trackingInitialSync)
  {
    v7 = v2;
    v8 = v3;
    v5 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25B19F000, v5, OS_LOG_TYPE_DEFAULT, "Initial sync progress - Accounts arrived in paired device", v6, 2u);
    }

    [(NNMKInitialSyncProgressTracker *)self incrementProgressBy:0.1];
  }
}

- (void)updateProgressWithMessageHeadersSent:(id)sent
{
  v16 = *MEMORY[0x277D85DE8];
  sentCopy = sent;
  if (self->_trackingInitialSync)
  {
    v5 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v14 = 134217984;
      v15 = [sentCopy count];
      _os_log_impl(&dword_25B19F000, v6, OS_LOG_TYPE_DEFAULT, "Initial sync progress - Message headers will be sent. (Message count: %lu)", &v14, 0xCu);
    }

    [(NNMKInitialSyncProgressTracker *)self cancelTimeout];
    self->_initialSyncMessagesCount = [sentCopy count];
    v7 = MEMORY[0x277CBEB58];
    v8 = [NNMKMessage messageIdsFromMessages:sentCopy];
    v9 = [v7 setWithArray:v8];
    initialSyncMessageIdsToSyncContent = self->_initialSyncMessageIdsToSyncContent;
    self->_initialSyncMessageIdsToSyncContent = v9;

    v11 = [(NSMutableSet *)self->_initialSyncMessageIdsToSyncContent mutableCopy];
    initialSyncMessageIdsOfContentToAck = self->_initialSyncMessageIdsOfContentToAck;
    self->_initialSyncMessageIdsOfContentToAck = v11;

    if ([(NSMutableSet *)self->_initialSyncMessageIdsToSyncContent count])
    {
      [(NNMKInitialSyncProgressTracker *)self startSyncTimeoutForMessageContent];
      self->_isWaitingForMessageContent = 1;
    }

    else
    {
      [(NNMKInitialSyncProgressTracker *)self finishedSendingInitialSyncContentToPairedDevice];
    }
  }

  [(NNMKInitialSyncProgressTracker *)self incrementProgressBy:0.05];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)updateProgressWithMessageHeadersArrivedInPairedDevice
{
  if ([(NNMKInitialSyncProgressTracker *)self isTrackingInitialSync])
  {
    v3 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_25B19F000, v3, OS_LOG_TYPE_DEFAULT, "Initial sync progress - Message headers arrived in paired device", v4, 2u);
    }

    [(NNMKInitialSyncProgressTracker *)self incrementProgressBy:0.1];
  }
}

- (void)updateProgressWithMessageContentArrivedInPairedDevice:(id)device
{
  v12 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if ([(NSMutableSet *)self->_initialSyncMessageIdsOfContentToAck containsObject:deviceCopy])
  {
    delegate = [(NNMKInitialSyncProgressTracker *)self delegate];
    currentDeviceRegistry = [delegate currentDeviceRegistry];
    v7 = [currentDeviceRegistry syncedMessageForMessageWithId:deviceCopy];

    if ([v7 isContentCompletelySynced])
    {
      v8 = qword_28144D620;
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543362;
        v11 = deviceCopy;
        _os_log_impl(&dword_25B19F000, v8, OS_LOG_TYPE_DEFAULT, "Initial sync progress - Content Download for message. (%{public}@)", &v10, 0xCu);
      }

      [(NSMutableSet *)self->_initialSyncMessageIdsOfContentToAck removeObject:deviceCopy];
      [(NNMKInitialSyncProgressTracker *)self incrementProgressBy:0.4 / self->_initialSyncMessagesCount];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateProgressWithMessageContentDownloadFailed:(id)failed
{
  v9 = *MEMORY[0x277D85DE8];
  failedCopy = failed;
  if ([(NSMutableSet *)self->_initialSyncMessageIdsOfContentToAck containsObject:failedCopy])
  {
    v5 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = failedCopy;
      _os_log_impl(&dword_25B19F000, v5, OS_LOG_TYPE_DEFAULT, "Initial sync progress - Content Download failed for message. (%{public}@)", &v7, 0xCu);
    }

    [(NNMKInitialSyncProgressTracker *)self updateProgressWithContentCompletelySyncedForMessageId:failedCopy];
    [(NSMutableSet *)self->_initialSyncMessageIdsOfContentToAck removeObject:failedCopy];
    [(NNMKInitialSyncProgressTracker *)self incrementProgressBy:0.4 / self->_initialSyncMessagesCount];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateProgressWithContentCompletelySyncedForMessageId:(id)id
{
  v9 = *MEMORY[0x277D85DE8];
  idCopy = id;
  if ([(NSMutableSet *)self->_initialSyncMessageIdsToSyncContent containsObject:idCopy])
  {
    v5 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = idCopy;
      _os_log_impl(&dword_25B19F000, v5, OS_LOG_TYPE_DEFAULT, "Initial sync progress - Content completely synced for message. (%{public}@)", &v7, 0xCu);
    }

    [(NSMutableSet *)self->_initialSyncMessageIdsToSyncContent removeObject:idCopy];
    [(NNMKInitialSyncProgressTracker *)self incrementProgressBy:0.2 / self->_initialSyncMessagesCount];
    if (![(NSMutableSet *)self->_initialSyncMessageIdsToSyncContent count])
    {
      [(NNMKInitialSyncProgressTracker *)self finishedSendingInitialSyncContentToPairedDevice];
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)finishedSendingInitialSyncContentToPairedDevice
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_trackingInitialSync && self->_trackingInitialSyncContent)
  {
    v3 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      v4 = MEMORY[0x277CCABB0];
      trackingInitialSyncContent = self->_trackingInitialSyncContent;
      v6 = v3;
      v7 = [v4 numberWithBool:trackingInitialSyncContent];
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&dword_25B19F000, v6, OS_LOG_TYPE_DEFAULT, "Initial sync progress - Finished sending initial content to paired device. Waiting for ack... _trackingInitialSyncContent: %{public}@", &v10, 0xCu);
    }

    [(NNMKInitialSyncProgressTracker *)self cancelTimeout];
    delegate = [(NNMKInitialSyncProgressTracker *)self delegate];
    [delegate trackerDidFinishSendingInitialSyncContentToPairedDevice:self];

    [(NNMKSyncStateManager *)self->_syncStateManager reportInitialSyncDidCompleteSending];
    self->_trackingInitialSyncContent = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)syncCompleted
{
  if ([(NNMKInitialSyncProgressTracker *)self isTrackingInitialSync])
  {
    v3 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_25B19F000, v3, OS_LOG_TYPE_DEFAULT, "Initial sync progress - Initial sync finished. Reporting to PairedSync...", v4, 2u);
    }

    [(NNMKInitialSyncProgressTracker *)self incrementProgressBy:0.1];
    [(NNMKSyncStateManager *)self->_syncStateManager reportInitialSyncDidComplete];
    [(NNMKInitialSyncProgressTracker *)self _handleInitialSyncCompleted];
  }
}

- (void)syncFailedWithError:(id)error
{
  v12[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if ([(NNMKInitialSyncProgressTracker *)self isTrackingInitialSync])
  {
    v5 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [NNMKInitialSyncProgressTracker syncFailedWithError:v5];
    }

    syncStateManager = self->_syncStateManager;
    v7 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA450];
    v12[0] = errorCopy;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v9 = [v7 errorWithDomain:@"com.apple.NanoMail.InitialSyncError" code:1 userInfo:v8];
    [(NNMKSyncStateManager *)syncStateManager reportInitialSyncDidFailWithError:v9];

    [(NNMKInitialSyncProgressTracker *)self _handleInitialSyncCompleted];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)incrementProgressBy:(double)by
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_trackingInitialSync)
  {
    v4 = self->_initialSyncProgress + by;
    if (v4 > 1.0)
    {
      v4 = 1.0;
    }

    self->_initialSyncProgress = v4;
    [(NNMKSyncStateManager *)self->_syncStateManager reportInitialSyncProgress:?];
    v5 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      initialSyncProgress = self->_initialSyncProgress;
      v8 = 134217984;
      v9 = initialSyncProgress;
      _os_log_impl(&dword_25B19F000, v5, OS_LOG_TYPE_DEFAULT, "Initial sync progress - Reported (%.2f).", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleInitialSyncCompleted
{
  [(NNMKInitialSyncProgressTracker *)self cancelTimeout];
  self->_trackingInitialSync = 0;
  self->_initialSyncProgress = 0.0;
  self->_initialSyncMessagesCount = 0;
  initialSyncMessageIdsToSyncContent = self->_initialSyncMessageIdsToSyncContent;
  self->_initialSyncMessageIdsToSyncContent = 0;

  initialSyncMessageIdsOfContentToAck = self->_initialSyncMessageIdsOfContentToAck;
  self->_initialSyncMessageIdsOfContentToAck = 0;
}

- (void)startSyncTimeoutForAccounts
{
  self->_timeoutCanceledForAccounts = 0;
  objc_initWeak(&location, self);
  [objc_opt_class() syncTimeout];
  v4 = dispatch_time(0, (v3 * 1000000000.0));
  executionQueue = self->_executionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__NNMKInitialSyncProgressTracker_startSyncTimeoutForAccounts__block_invoke;
  block[3] = &unk_279936440;
  objc_copyWeak(&v7, &location);
  block[4] = self;
  dispatch_after(v4, executionQueue, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __61__NNMKInitialSyncProgressTracker_startSyncTimeoutForAccounts__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ((*(*(a1 + 32) + 13) & 1) == 0)
  {
    v3 = WeakRetained;
    [WeakRetained initialSyncTimedOut];
    WeakRetained = v3;
  }
}

- (void)startSyncTimeoutForMessageHeaders
{
  self->_timeoutCanceledForMessageHeaders = 0;
  objc_initWeak(&location, self);
  [objc_opt_class() syncTimeout];
  v4 = dispatch_time(0, (v3 * 1000000000.0));
  executionQueue = self->_executionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__NNMKInitialSyncProgressTracker_startSyncTimeoutForMessageHeaders__block_invoke;
  block[3] = &unk_279936440;
  objc_copyWeak(&v7, &location);
  block[4] = self;
  dispatch_after(v4, executionQueue, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __67__NNMKInitialSyncProgressTracker_startSyncTimeoutForMessageHeaders__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ((*(*(a1 + 32) + 14) & 1) == 0)
  {
    v3 = WeakRetained;
    [WeakRetained initialSyncTimedOut];
    WeakRetained = v3;
  }
}

- (void)startSyncTimeoutForMessageContent
{
  self->_timeoutCanceledForMessageContent = 0;
  objc_initWeak(&location, self);
  [objc_opt_class() syncTimeout];
  v4 = dispatch_time(0, (v3 * 1000000000.0));
  executionQueue = self->_executionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__NNMKInitialSyncProgressTracker_startSyncTimeoutForMessageContent__block_invoke;
  block[3] = &unk_279936440;
  objc_copyWeak(&v7, &location);
  block[4] = self;
  dispatch_after(v4, executionQueue, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __67__NNMKInitialSyncProgressTracker_startSyncTimeoutForMessageContent__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ((*(*(a1 + 32) + 15) & 1) == 0)
  {
    v3 = WeakRetained;
    [WeakRetained initialSyncTimedOut];
    WeakRetained = v3;
  }
}

- (void)cancelTimeout
{
  *&self->_timeoutCanceledForAccounts = 257;
  self->_timeoutCanceledForMessageContent = 1;
  [(NNMKInitialSyncProgressTracker *)self resetFlags];
}

- (void)initialSyncTimedOut
{
  if (self->_trackingInitialSync)
  {
    v13 = v2;
    v14 = v3;
    if (self->_isWaitingForMessageContent)
    {
      v5 = qword_28144D620;
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B19F000, v5, OS_LOG_TYPE_DEFAULT, "Initial sync progress - MobileMail took too long to download the content for all the messages for the initial sync. We're ignoring the next content downloads for the sake of reporting to PairedSync. Notifying paired watch that we're done sending content...", buf, 2u);
      }
    }

    if (self->_isWaitingForAccounts)
    {
      v6 = qword_28144D620;
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_25B19F000, v6, OS_LOG_TYPE_DEFAULT, "Initial sync progress - MobileMail took too long to reply with accounts.", v11, 2u);
      }
    }

    if (self->_isWaitingForMessageHeaders)
    {
      v7 = qword_28144D620;
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_25B19F000, v7, OS_LOG_TYPE_DEFAULT, "Initial sync progress - MobileMail took too long to reply with message headers.", v10, 2u);
      }
    }

    v8 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_25B19F000, v8, OS_LOG_TYPE_DEFAULT, "Initial sync progress - Initial sync timed out. Forcing completion and reporting to PairedSync.", v9, 2u);
    }

    [(NSMutableSet *)self->_initialSyncMessageIdsToSyncContent removeAllObjects];
    [(NSMutableSet *)self->_initialSyncMessageIdsOfContentToAck removeAllObjects];
    [(NNMKInitialSyncProgressTracker *)self finishedSendingInitialSyncContentToPairedDevice];
    [(NNMKInitialSyncProgressTracker *)self cancelTimeout];
  }
}

- (NNMKInitialSyncProgressTrackerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end