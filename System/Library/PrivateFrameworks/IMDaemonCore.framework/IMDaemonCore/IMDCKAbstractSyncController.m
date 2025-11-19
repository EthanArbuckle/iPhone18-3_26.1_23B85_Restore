@interface IMDCKAbstractSyncController
- (BOOL)_fetchedAllChangesFromCloudKit;
- (IMDCKAbstractSyncControllerDelegate)delegate;
- (IMDCKSyncState)syncState;
- (id)latestSyncToken;
- (id)syncStateDebuggingInfo:(id)a3;
- (void)deleteSyncToken;
- (void)resetRecordCounts;
- (void)setBroadcastedSyncStateStateToFinished;
- (void)setBroadcastedSyncStateStateToStarting;
- (void)setBroadcastedSyncStateToDeleting;
- (void)setBroadcastedSyncStateToDownloading;
- (void)setBroadcastedSyncStateToStartingInitialSync;
- (void)setBroadcastedSyncStateToStartingPeriodicSync;
- (void)setBroadcastedSyncStateToUploading;
- (void)setIsSyncing:(BOOL)a3;
- (void)setLatestSyncToken:(id)a3;
- (void)syncBatchCompleted:(unint64_t)a3;
@end

@implementation IMDCKAbstractSyncController

- (void)setIsSyncing:(BOOL)a3
{
  self->_isSyncing = a3;
  if (a3)
  {
    [(IMDCKAbstractSyncController *)self setBroadcastedSyncStateStateToStarting];
  }

  else
  {
    [(IMDCKAbstractSyncController *)self setBroadcastedSyncStateStateToFinished];
  }
}

- (IMDCKSyncState)syncState
{
  v2 = [(IMDCKAbstractSyncController *)self ckUtilities];
  v3 = [v2 syncState];

  return v3;
}

- (void)setLatestSyncToken:(id)a3
{
  v4 = a3;
  v6 = [(IMDCKAbstractSyncController *)self _syncTokenStore];
  v5 = [(IMDCKAbstractSyncController *)self _syncTokenKey];
  [v6 persistToken:v4 forKey:v5];
}

- (void)deleteSyncToken
{
  v4 = [(IMDCKAbstractSyncController *)self _syncTokenStore];
  v3 = [(IMDCKAbstractSyncController *)self _syncTokenKey];
  [v4 persistToken:0 forKey:v3];
}

- (id)latestSyncToken
{
  v3 = [(IMDCKAbstractSyncController *)self _syncTokenStore];
  v4 = [(IMDCKAbstractSyncController *)self _syncTokenKey];
  v5 = [v3 tokenForKey:v4];

  return v5;
}

- (void)resetRecordCounts
{
  [(IMDCKAbstractSyncController *)self setRecordsRead:0];
  [(IMDCKAbstractSyncController *)self setRecordsWritten:0];

  [(IMDCKAbstractSyncController *)self setRecordsWriteFailed:0];
}

- (void)setBroadcastedSyncStateStateToFinished
{
  v3 = [(IMDCKAbstractSyncController *)self syncState];
  [v3 setSyncControllerSyncState:0 withRecordType:{-[IMDCKAbstractSyncController syncControllerRecordType](self, "syncControllerRecordType")}];
}

- (void)setBroadcastedSyncStateStateToStarting
{
  v3 = [(IMDCKAbstractSyncController *)self syncState];
  [v3 setSyncControllerSyncState:1 withRecordType:{-[IMDCKAbstractSyncController syncControllerRecordType](self, "syncControllerRecordType")}];
}

- (void)setBroadcastedSyncStateToDownloading
{
  v3 = [(IMDCKAbstractSyncController *)self syncState];
  [v3 setSyncControllerSyncState:2 withRecordType:{-[IMDCKAbstractSyncController syncControllerRecordType](self, "syncControllerRecordType")}];
}

- (void)setBroadcastedSyncStateToUploading
{
  v3 = [(IMDCKAbstractSyncController *)self syncState];
  [v3 setSyncControllerSyncState:4 withRecordType:{-[IMDCKAbstractSyncController syncControllerRecordType](self, "syncControllerRecordType")}];
}

- (void)setBroadcastedSyncStateToDeleting
{
  v3 = [(IMDCKAbstractSyncController *)self syncState];
  [v3 setSyncControllerSyncState:3 withRecordType:{-[IMDCKAbstractSyncController syncControllerRecordType](self, "syncControllerRecordType")}];
}

- (void)setBroadcastedSyncStateToStartingPeriodicSync
{
  v3 = [(IMDCKAbstractSyncController *)self syncState];
  [v3 setStartingPeriodicSyncWithRecordType:{-[IMDCKAbstractSyncController syncControllerRecordType](self, "syncControllerRecordType")}];
}

- (void)setBroadcastedSyncStateToStartingInitialSync
{
  v3 = [(IMDCKAbstractSyncController *)self syncState];
  [v3 setStartingInitialSyncWithRecordType:{-[IMDCKAbstractSyncController syncControllerRecordType](self, "syncControllerRecordType")}];
}

- (id)syncStateDebuggingInfo:(id)a3
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [(IMDCKAbstractSyncController *)self syncState];
  v6 = [v5 description];
  [v4 setObject:v6 forKey:@"syncState"];

  [(IMDCKAbstractSyncController *)self addSyncDebuggingInfoToDictionary:v4];

  return v4;
}

- (void)syncBatchCompleted:(unint64_t)a3
{
  v5 = [(IMDCKAbstractSyncController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(IMDCKAbstractSyncController *)self delegate];
    [v7 syncController:self syncBatchCompleted:a3];
  }
}

- (BOOL)_fetchedAllChangesFromCloudKit
{
  v2 = *MEMORY[0x277D19A08];
  v3 = *MEMORY[0x277D19750];
  return IMGetDomainBoolForKey();
}

- (IMDCKAbstractSyncControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end