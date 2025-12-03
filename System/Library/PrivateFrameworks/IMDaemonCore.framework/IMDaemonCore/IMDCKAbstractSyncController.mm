@interface IMDCKAbstractSyncController
- (BOOL)_fetchedAllChangesFromCloudKit;
- (IMDCKAbstractSyncControllerDelegate)delegate;
- (IMDCKSyncState)syncState;
- (id)latestSyncToken;
- (id)syncStateDebuggingInfo:(id)info;
- (void)deleteSyncToken;
- (void)resetRecordCounts;
- (void)setBroadcastedSyncStateStateToFinished;
- (void)setBroadcastedSyncStateStateToStarting;
- (void)setBroadcastedSyncStateToDeleting;
- (void)setBroadcastedSyncStateToDownloading;
- (void)setBroadcastedSyncStateToStartingInitialSync;
- (void)setBroadcastedSyncStateToStartingPeriodicSync;
- (void)setBroadcastedSyncStateToUploading;
- (void)setIsSyncing:(BOOL)syncing;
- (void)setLatestSyncToken:(id)token;
- (void)syncBatchCompleted:(unint64_t)completed;
@end

@implementation IMDCKAbstractSyncController

- (void)setIsSyncing:(BOOL)syncing
{
  self->_isSyncing = syncing;
  if (syncing)
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
  ckUtilities = [(IMDCKAbstractSyncController *)self ckUtilities];
  syncState = [ckUtilities syncState];

  return syncState;
}

- (void)setLatestSyncToken:(id)token
{
  tokenCopy = token;
  _syncTokenStore = [(IMDCKAbstractSyncController *)self _syncTokenStore];
  _syncTokenKey = [(IMDCKAbstractSyncController *)self _syncTokenKey];
  [_syncTokenStore persistToken:tokenCopy forKey:_syncTokenKey];
}

- (void)deleteSyncToken
{
  _syncTokenStore = [(IMDCKAbstractSyncController *)self _syncTokenStore];
  _syncTokenKey = [(IMDCKAbstractSyncController *)self _syncTokenKey];
  [_syncTokenStore persistToken:0 forKey:_syncTokenKey];
}

- (id)latestSyncToken
{
  _syncTokenStore = [(IMDCKAbstractSyncController *)self _syncTokenStore];
  _syncTokenKey = [(IMDCKAbstractSyncController *)self _syncTokenKey];
  v5 = [_syncTokenStore tokenForKey:_syncTokenKey];

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
  syncState = [(IMDCKAbstractSyncController *)self syncState];
  [syncState setSyncControllerSyncState:0 withRecordType:{-[IMDCKAbstractSyncController syncControllerRecordType](self, "syncControllerRecordType")}];
}

- (void)setBroadcastedSyncStateStateToStarting
{
  syncState = [(IMDCKAbstractSyncController *)self syncState];
  [syncState setSyncControllerSyncState:1 withRecordType:{-[IMDCKAbstractSyncController syncControllerRecordType](self, "syncControllerRecordType")}];
}

- (void)setBroadcastedSyncStateToDownloading
{
  syncState = [(IMDCKAbstractSyncController *)self syncState];
  [syncState setSyncControllerSyncState:2 withRecordType:{-[IMDCKAbstractSyncController syncControllerRecordType](self, "syncControllerRecordType")}];
}

- (void)setBroadcastedSyncStateToUploading
{
  syncState = [(IMDCKAbstractSyncController *)self syncState];
  [syncState setSyncControllerSyncState:4 withRecordType:{-[IMDCKAbstractSyncController syncControllerRecordType](self, "syncControllerRecordType")}];
}

- (void)setBroadcastedSyncStateToDeleting
{
  syncState = [(IMDCKAbstractSyncController *)self syncState];
  [syncState setSyncControllerSyncState:3 withRecordType:{-[IMDCKAbstractSyncController syncControllerRecordType](self, "syncControllerRecordType")}];
}

- (void)setBroadcastedSyncStateToStartingPeriodicSync
{
  syncState = [(IMDCKAbstractSyncController *)self syncState];
  [syncState setStartingPeriodicSyncWithRecordType:{-[IMDCKAbstractSyncController syncControllerRecordType](self, "syncControllerRecordType")}];
}

- (void)setBroadcastedSyncStateToStartingInitialSync
{
  syncState = [(IMDCKAbstractSyncController *)self syncState];
  [syncState setStartingInitialSyncWithRecordType:{-[IMDCKAbstractSyncController syncControllerRecordType](self, "syncControllerRecordType")}];
}

- (id)syncStateDebuggingInfo:(id)info
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  syncState = [(IMDCKAbstractSyncController *)self syncState];
  v6 = [syncState description];
  [dictionary setObject:v6 forKey:@"syncState"];

  [(IMDCKAbstractSyncController *)self addSyncDebuggingInfoToDictionary:dictionary];

  return dictionary;
}

- (void)syncBatchCompleted:(unint64_t)completed
{
  delegate = [(IMDCKAbstractSyncController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(IMDCKAbstractSyncController *)self delegate];
    [delegate2 syncController:self syncBatchCompleted:completed];
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