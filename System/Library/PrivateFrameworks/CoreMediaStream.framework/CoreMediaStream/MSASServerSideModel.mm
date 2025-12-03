@interface MSASServerSideModel
- (BOOL)MSASStateMachine:(id)machine didQueryIsAssetCollectionWithGUIDInModel:(id)model;
- (BOOL)dbQueueAccessControlWithGUID:(id)d outObject:(id *)object outAlbumGUID:(id *)iD outEmail:(id *)email outUserInfoData:(id *)data;
- (BOOL)dbQueueAlbumMetadataWithAlbumGUID:(id)d key:(id)key outValue:(id *)value;
- (BOOL)dbQueueAlbumWithGUID:(id)d outObject:(id *)object outName:(id *)name outCtag:(id *)ctag outForeignCtag:(id *)foreignCtag outURLString:(id *)string outUserInfoData:(id *)data outClientOrgKey:(id *)self0;
- (BOOL)dbQueueAssetCollectionContainsCommentsFromMeAssetCollectionGUID:(id)d;
- (BOOL)dbQueueAssetCollectionMetadataWithAssetCollectionGUID:(id)d key:(id)key outValue:(id *)value;
- (BOOL)dbQueueAssetCollectionWithGUID:(id)d outObject:(id *)object outCtag:(id *)ctag outAlbumGUID:(id *)iD outBatchDate:(id *)date outPhotoDate:(id *)photoDate outPhotoNumber:(int64_t *)number outUserInfoData:(id *)self0;
- (BOOL)dbQueueCheckToClearUnviewedStateOnAlbumWithGUID:(id)d info:(id)info;
- (BOOL)dbQueueCheckToClearUnviewedStateOnAssetCollectionWithGUID:(id)d info:(id)info;
- (BOOL)dbQueueCommentWithGUID:(id)d outObject:(id *)object outID:(unint64_t *)iD outTimestamp:(id *)timestamp outAssetCollectionGUID:(id *)uID outIsCaption:(BOOL *)caption outUserInfoData:(id *)data;
- (BOOL)dbQueueCommentWithID:(int)d assetCollectionGUID:(id)iD outObject:(id *)object outGUID:(id *)uID outTimestamp:(id *)timestamp outIsCaption:(BOOL *)caption outUserInfoData:(id *)data;
- (BOOL)dbQueueInvitationWithAlbumGUID:(id)d outObject:(id *)object outInvitationGUID:(id *)iD outEmail:(id *)email outUserInfoData:(id *)data;
- (BOOL)dbQueueInvitationWithGUID:(id)d outObject:(id *)object outAlbumGUID:(id *)iD outEmail:(id *)email outUserInfoData:(id *)data;
- (BOOL)hasCommandsInGroupedCommandQueue;
- (BOOL)hasEnqueuedActivities;
- (BOOL)isAlbumWithGUIDMarkedAsUnviewed:(id)unviewed;
- (BOOL)isAssetCollectionWithGUIDMarkedAsUnviewed:(id)unviewed;
- (MSASServerSideModel)initWithPersonID:(id)d;
- (MSASServerSideModel)initWithPersonID:(id)d databasePath:(id)path eventQueue:(id)queue;
- (MSAlbumSharingDaemon)daemon;
- (NSCountedSet)observers;
- (double)maxGroupedCallbackEventIdleInterval;
- (double)maxGroupedCallbackEventStaleness;
- (id)MSASStateMachineDidRequestAlbumStateCtagForAlbumWithGUID:(id)d info:(id)info;
- (id)MSASStateMachineDidRequestAlbumURLStringForAlbumWithGUID:(id)d info:(id)info;
- (id)MSASStateMachineDidRequestAlbumWithGUID:(id)d;
- (id)MSASStateMachineDidRequestAssetCollectionStateCtagForAssetCollectionWithGUID:(id)d info:(id)info;
- (id)_invalidAccessControlGUIDErrorwithGUID:(id)d;
- (id)_invalidAssetCollectionGUIDErrorwithGUID:(id)d;
- (id)_invalidInvitationGUIDErrorWithGUID:(id)d;
- (id)_protocolErrorForUnderlyingError:(id)error;
- (id)accessControlGUIDsForAlbumWithGUID:(id)d;
- (id)accessControlWithGUID:(id)d;
- (id)accessControlsForAlbumWithGUID:(id)d;
- (id)albumGUIDs;
- (id)albumWithGUID:(id)d;
- (id)albums;
- (id)assetCollectionGUIDsInAlbumWithGUID:(id)d;
- (id)assetCollectionWithGUID:(id)d;
- (id)assetCollectionsInAlbumWithGUID:(id)d;
- (id)captionForAssetCollectionWithGUID:(id)d;
- (id)commentWithGUID:(id)d;
- (id)commentsForAssetCollectionWithGUID:(id)d;
- (id)dbQueueAccessControlGUIDsForAlbumWithGUID:(id)d;
- (id)dbQueueAccessControlsForAlbumWithGUID:(id)d;
- (id)dbQueueAlbumGUIDs;
- (id)dbQueueAssetCollectionGUIDsInAlbumWithGUID:(id)d;
- (id)dbQueueCommentsForAssetCollectionWithGUID:(id)d;
- (id)dbQueueInvitationForAlbumWithGUID:(id)d;
- (id)dbQueueLookupOrCreateAlbumWithGUID:(id)d;
- (id)dbQueueLookupOrCreateAssetCollectionWithGUID:(id)d outAlbum:(id *)album;
- (id)dbQueueLookupOrCreateCommentWithGUID:(id)d outAssetCollection:(id *)collection outAlbum:(id *)album;
- (id)dbQueueMaximumCommentIDForAssetCollectionWithGUID:(id)d;
- (id)dbQueueMaximumPhotoNumberForAlbumWithGUID:(id)d;
- (id)dbQueuePendingCommentCheckOperations;
- (id)earliestUnviewedAssetCollectionGUIDInAlbumWithGUID:(id)d;
- (id)focusAssetCollectionGUID;
- (id)invitationForAlbumWithGUID:(id)d;
- (id)invitationGUIDs;
- (id)invitationWithGUID:(id)d;
- (id)invitations;
- (id)lastViewedCommentDateForAssetCollectionWithGUID:(id)d;
- (id)nextCommandGroupMaxCount:(int)count outCommand:(id *)command outLastCommandIndex:(int64_t *)index;
- (id)serverCommunicationBackoffDate;
- (id)serverSideConfiguration;
- (id)userInfoForAccessControlWithGUID:(id)d;
- (id)userInfoForAlbumWithGUID:(id)d;
- (id)userInfoForAssetCollectionWithGUID:(id)d;
- (id)userInfoForCommentWithGUID:(id)d;
- (id)userInfoForInvitationWithGUID:(id)d;
- (int)commandCount;
- (int)dbQueueCountOfUnviewedAssetCollectionsInAlbumWithGUID:(id)d;
- (int)dbQueueUnviewedAlbumCount;
- (int)dbQueueUnviewedAssetCollectionCountForAlbumWithGUID:(id)d;
- (int)maxGroupedCallbackEventBatchCount;
- (int)unviewedAlbumCount;
- (int)unviewedAssetCollectionCountForAlbumWithGUID:(id)d;
- (void)MSASStateMachine:(id)machine didFindAccessControlChangesForAlbumGUIDS:(id)s info:(id)info;
- (void)MSASStateMachine:(id)machine didFindAlbumChanges:(id)changes info:(id)info;
- (void)MSASStateMachine:(id)machine didFindAlbumSyncedState:(id)state forAlbum:(id)album info:(id)info;
- (void)MSASStateMachine:(id)machine didFindAssetCollectionChanges:(id)changes forAlbum:(id)album info:(id)info;
- (void)MSASStateMachine:(id)machine didFindAssetCollectionSyncedState:(id)state forAssetCollectionGUID:(id)d inAlbum:(id)album assetCollectionStateCtag:(id)ctag info:(id)info;
- (void)MSASStateMachine:(id)machine didFindChangesInAlbum:(id)album info:(id)info error:(id)error;
- (void)MSASStateMachine:(id)machine didFindCommentChanges:(id)changes inAssetCollectionWithGUID:(id)d inAlbumWithGUID:(id)iD info:(id)info;
- (void)MSASStateMachine:(id)machine didFindNewURLString:(id)string forAlbumWithGUID:(id)d info:(id)info;
- (void)MSASStateMachine:(id)machine didFindSyncedKeyValueChangesForAlbumGUIDS:(id)s albumChanges:(id)changes accessControlChangesForAlbumGUIDS:(id)dS info:(id)info;
- (void)MSASStateMachine:(id)machine didFindSyncedKeyValueChangesForAlbumGUIDS:(id)s info:(id)info;
- (void)MSASStateMachine:(id)machine didFinishAddingAssetCollection:(id)collection toAlbum:(id)album info:(id)info error:(id)error;
- (void)MSASStateMachine:(id)machine didFinishAddingComment:(id)comment toAssetCollection:(id)collection inAlbum:(id)album info:(id)info error:(id)error;
- (void)MSASStateMachine:(id)machine didFinishAddingSharingRelationships:(id)relationships toOwnedAlbum:(id)album info:(id)info error:(id)error;
- (void)MSASStateMachine:(id)machine didFinishCheckingForAlbumSyncedStateChangesInAlbum:(id)album info:(id)info error:(id)error newAlbumStateCtag:(id)ctag;
- (void)MSASStateMachine:(id)machine didFinishCheckingForChangesInfo:(id)info error:(id)error;
- (void)MSASStateMachine:(id)machine didFinishCheckingForCommentChangesInAssetCollectionWithGUID:(id)d largestCommentID:(int)iD info:(id)info error:(id)error;
- (void)MSASStateMachine:(id)machine didFinishCheckingForUpdatesInAlbum:(id)album info:(id)info error:(id)error;
- (void)MSASStateMachine:(id)machine didFinishCheckingForUpdatesInAlbums:(id)albums info:(id)info;
- (void)MSASStateMachine:(id)machine didFinishCreatingAlbum:(id)album info:(id)info error:(id)error;
- (void)MSASStateMachine:(id)machine didFinishDeletingAlbum:(id)album info:(id)info error:(id)error;
- (void)MSASStateMachine:(id)machine didFinishDeletingAssetCollection:(id)collection inAlbum:(id)album info:(id)info error:(id)error;
- (void)MSASStateMachine:(id)machine didFinishDeletingComment:(id)comment inAssetCollection:(id)collection inAlbum:(id)album info:(id)info error:(id)error;
- (void)MSASStateMachine:(id)machine didFinishEnqueueingAssetsForDownload:(id)download inAlbumWithGUID:(id)d;
- (void)MSASStateMachine:(id)machine didFinishGettingAccessControls:(id)controls forAlbum:(id)album info:(id)info error:(id)error;
- (void)MSASStateMachine:(id)machine didFinishMarkingAsSpamInvitationForAlbum:(id)album invitationGUID:(id)d info:(id)info error:(id)error;
- (void)MSASStateMachine:(id)machine didFinishMarkingAsSpamInvitationForToken:(id)token info:(id)info error:(id)error;
- (void)MSASStateMachine:(id)machine didFinishRemovingSharingRelationship:(id)relationship fromOwnedAlbum:(id)album info:(id)info error:(id)error;
- (void)MSASStateMachine:(id)machine didFinishRetrievingAsset:(id)asset inAlbum:(id)album error:(id)error;
- (void)MSASStateMachine:(id)machine didFinishSendingInvitationByPhone:(id)phone toOwnedAlbum:(id)album info:(id)info error:(id)error;
- (void)MSASStateMachine:(id)machine didFinishSettingSyncedStateForAlbum:(id)album info:(id)info error:(id)error newAlbumStateCtag:(id)ctag;
- (void)MSASStateMachine:(id)machine didFinishSettingSyncedStateForAssetCollection:(id)collection inAlbum:(id)album assetStateCtag:(id)ctag info:(id)info error:(id)error;
- (void)MSASStateMachine:(id)machine didFinishSubscribingToAlbum:(id)album info:(id)info error:(id)error;
- (void)MSASStateMachine:(id)machine didFinishUnsubscribingFromAlbum:(id)album info:(id)info error:(id)error;
- (void)MSASStateMachine:(id)machine didFinishUpdatingAlbum:(id)album info:(id)info error:(id)error;
- (void)MSASStateMachine:(id)machine didFinishUpdatingAssetCollections:(id)collections inAlbum:(id)album info:(id)info error:(id)error;
- (void)MSASStateMachine:(id)machine didFireScheduledEvent:(id)event forAssetCollectionGUID:(id)d albumGUID:(id)iD info:(id)info;
- (void)MSASStateMachine:(id)machine didRequestAssetsForAddingAssetCollections:(id)collections inAlbum:(id)album specifications:(id)specifications info:(id)info;
- (void)MSASStateMachineDidFindGlobalResetSync:(id)sync info:(id)info;
- (void)MSASStateMachineDidStart:(id)start;
- (void)MSASStateMachineDidUpdateServerCommunicationBackoffDate:(id)date;
- (void)_reconstruct;
- (void)acceptInvitationWithGUID:(id)d info:(id)info;
- (void)acceptInvitationWithToken:(id)token completionBlock:(id)block;
- (void)acceptInvitationWithToken:(id)token info:(id)info completionBlock:(id)block;
- (void)addAccessControlEntries:(id)entries toAlbumWithGUID:(id)d info:(id)info completionBlock:(id)block;
- (void)addAlbum:(id)album info:(id)info;
- (void)addAssetCollections:(id)collections toAlbumWithGUID:(id)d info:(id)info;
- (void)addComments:(id)comments toAssetCollectionWithGUID:(id)d info:(id)info;
- (void)addObserver:(id)observer;
- (void)cancel;
- (void)dbQueueAddCommentCheckOperation:(id)operation;
- (void)dbQueueDeleteAccessControlWithGUID:(id)d info:(id)info;
- (void)dbQueueDeleteAlbumMetadataAlbumGUID:(id)d key:(id)key info:(id)info;
- (void)dbQueueDeleteAlbumWithGUID:(id)d info:(id)info;
- (void)dbQueueDeleteAllAlbumMetadataForAlbumWithGUID:(id)d info:(id)info;
- (void)dbQueueDeleteAllAssetCollectionMetadataForAssetCollectionWithGUID:(id)d info:(id)info;
- (void)dbQueueDeleteAllPendingCommentCheckOperations;
- (void)dbQueueDeleteAssetCollectionMetadataAssetCollectionGUID:(id)d key:(id)key info:(id)info;
- (void)dbQueueDeleteAssetCollectionWithGUID:(id)d info:(id)info;
- (void)dbQueueDeleteCommentWithGUID:(id)d info:(id)info;
- (void)dbQueueDeleteInvitationForAlbumWithGUID:(id)d info:(id)info;
- (void)dbQueueDeleteInvitationWithGUID:(id)d info:(id)info;
- (void)dbQueueFlushAllPendingCommentCheckOperations;
- (void)dbQueueSetAccessControl:(id)control info:(id)info;
- (void)dbQueueSetAlbum:(id)album info:(id)info;
- (void)dbQueueSetAlbumMetadataAlbumGUID:(id)d key:(id)key value:(id)value info:(id)info;
- (void)dbQueueSetAssetCollection:(id)collection inAlbumWithGUID:(id)d info:(id)info;
- (void)dbQueueSetAssetCollectionMetadataAssetCollectionGUID:(id)d key:(id)key value:(id)value info:(id)info;
- (void)dbQueueSetComment:(id)comment forAssetCollectionWithGUID:(id)d info:(id)info;
- (void)dbQueueSetInvitation:(id)invitation info:(id)info;
- (void)dbQueueSetUnviewedState:(BOOL)state onAlbumWithGUID:(id)d info:(id)info;
- (void)dbQueueSetUnviewedState:(BOOL)state onAssetCollectionWithGUID:(id)d info:(id)info;
- (void)dbQueueUpdateAlbumCtag:(id)ctag;
- (void)deleteAlbumWithGUID:(id)d info:(id)info;
- (void)deleteAssetCollectionWithGUID:(id)d info:(id)info;
- (void)deleteAssetCollectionsWithGUIDs:(id)ds;
- (void)deleteCommentWithGUID:(id)d info:(id)info;
- (void)enqueueCommand:(id)command;
- (void)eventQueueNotifyObserversOfUpdatedUnviewedCountInAlbum:(id)album unviewedCount:(int)count info:(id)info;
- (void)eventQueuePerformBlockOnObservers:(id)observers;
- (void)flushAllPendingCommentCheckOperations;
- (void)forgetEverythingInfo:(id)info completionBlock:(id)block;
- (void)markAlbumGUIDAsViewed:(id)viewed moveLastViewedAssetCollectionMarker:(BOOL)marker info:(id)info;
- (void)markAsSpamAlbumWithGUID:(id)d info:(id)info;
- (void)markAsSpamInvitationWithGUID:(id)d info:(id)info;
- (void)markAsSpamInvitationWithToken:(id)token info:(id)info;
- (void)markCommentsForAssetCollectionWithGUID:(id)d asViewedWithLastViewedDate:(id)date info:(id)info;
- (void)modifyAlbumMetadata:(id)metadata info:(id)info;
- (void)performBlockOnObservers:(id)observers;
- (void)reconstruct;
- (void)refreshAccessControlListForAlbumWithGUID:(id)d info:(id)info;
- (void)refreshCommentsForAssetCollectionWithGUID:(id)d resetSync:(BOOL)sync info:(id)info;
- (void)refreshContentOfAlbumWithGUID:(id)d resetSync:(BOOL)sync info:(id)info;
- (void)rejectInvitationWithGUID:(id)d info:(id)info;
- (void)releaseBusy;
- (void)removeAccessControlEntryWithGUID:(id)d info:(id)info;
- (void)removeCommandsUpToCommandIndex:(int64_t)index;
- (void)removeObserver:(id)observer;
- (void)retainBusy;
- (void)retrieveAssets:(id)assets inAlbumWithGUID:(id)d;
- (void)retrieveAssetsFromAssetCollectionsWithGUIDs:(id)ds assetTypeFlags:(int)flags;
- (void)setClientOrgKey:(id)key forAlbumWithGUID:(id)d info:(id)info;
- (void)setFocusAlbumGUID:(id)d;
- (void)setFocusAssetCollectionGUID:(id)d;
- (void)setMaxGroupedCallbackEventIdleInterval:(double)interval;
- (void)setMaxGroupedCallbackEventStaleness:(double)staleness;
- (void)setMultipleContributorsEnabled:(BOOL)enabled forAlbumWithGUID:(id)d info:(id)info completionBlock:(id)block;
- (void)setPublicAccessEnabled:(BOOL)enabled forAlbumWithGUID:(id)d info:(id)info completionBlock:(id)block;
- (void)setUserInfo:(id)info forAccessControlWithGUID:(id)d;
- (void)setUserInfo:(id)info forAlbumWithGUID:(id)d;
- (void)setUserInfo:(id)info forAssetCollectionWithGUID:(id)d;
- (void)setUserInfo:(id)info forCommentWithGUID:(id)d;
- (void)setUserInfo:(id)info forInvitationWithGUID:(id)d;
- (void)shutDownForDestruction:(BOOL)destruction completionBlock:(id)block;
- (void)subscribeToAlbumWithGUID:(id)d info:(id)info;
- (void)unsubscribeFromAlbumWithGUID:(id)d info:(id)info;
- (void)validateInvitationForAlbum:(id)album completionBlock:(id)block;
- (void)videoURLForAssetCollectionWithGUID:(id)d completionBlock:(id)block;
- (void)videoURLsForAssetCollectionWithGUID:(id)d forMediaAssetType:(unint64_t)type completionBlock:(id)block;
@end

@implementation MSASServerSideModel

- (MSAlbumSharingDaemon)daemon
{
  WeakRetained = objc_loadWeakRetained(&self->_daemon);

  return WeakRetained;
}

- (void)MSASStateMachine:(id)machine didFinishAddingComment:(id)comment toAssetCollection:(id)collection inAlbum:(id)album info:(id)info error:(id)error
{
  commentCopy = comment;
  collectionCopy = collection;
  albumCopy = album;
  infoCopy = info;
  errorCopy = error;
  dbQueue = [(MSASModelBase *)self dbQueue];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __100__MSASServerSideModel_MSASStateMachine_didFinishAddingComment_toAssetCollection_inAlbum_info_error___block_invoke;
  v24[3] = &unk_278E92048;
  v25 = errorCopy;
  selfCopy = self;
  v27 = commentCopy;
  v28 = collectionCopy;
  v29 = infoCopy;
  v30 = albumCopy;
  v19 = albumCopy;
  v20 = infoCopy;
  v21 = collectionCopy;
  v22 = commentCopy;
  v23 = errorCopy;
  dispatch_async(dbQueue, v24);
}

void __100__MSASServerSideModel_MSASStateMachine_didFinishAddingComment_toAssetCollection_inAlbum_info_error___block_invoke(id *a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  if (!v2)
  {
    v12 = a1[5];
    v13 = a1[6];
    v6 = [a1[7] GUID];
    [v12 dbQueueSetComment:v13 forAssetCollectionWithGUID:v6 info:a1[8]];
LABEL_8:

    goto LABEL_9;
  }

  v3 = [v2 MSContainsErrorWithDomain:@"MSASProtocolErrorDomain" code:16];
  v4 = a1[4];
  if (v3)
  {
    v5 = [v4 userInfo];
    v6 = [v5 objectForKey:@"album"];

    v7 = [a1[4] userInfo];
    v8 = [v7 objectForKey:@"assetCollection"];

    v9 = [a1[5] daemon];
    v10 = a1[4];
    v11 = [a1[5] personID];
    [v9 didReceiveTooManyCommentsError:v10 forAssetCollection:v8 inAlbum:v6 personID:v11];
LABEL_7:

    goto LABEL_8;
  }

  if ([v4 MSContainsErrorWithDomain:@"MSASProtocolErrorDomain" code:17])
  {
    v14 = [a1[4] userInfo];
    v6 = [v14 objectForKey:@"album"];

    v15 = [a1[4] userInfo];
    v8 = [v15 objectForKey:@"assetCollection"];

    v9 = [a1[5] daemon];
    v16 = a1[4];
    v11 = [a1[5] personID];
    [v9 didReceiveCommentTooLongError:v16 forAssetCollection:v8 inAlbum:v6 personID:v11];
    goto LABEL_7;
  }

LABEL_9:
  v17 = [a1[5] eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __100__MSASServerSideModel_MSASStateMachine_didFinishAddingComment_toAssetCollection_inAlbum_info_error___block_invoke_2;
  block[3] = &unk_278E92048;
  v18 = a1[6];
  block[4] = a1[5];
  v29 = v18;
  v30 = a1[7];
  v31 = a1[9];
  v32 = a1[8];
  v33 = a1[4];
  dispatch_async(v17, block);

  v19 = a1[4];
  if (v19 && ([v19 MSASStateMachineIsCanceledError] & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v23 = a1[5];
      v24 = [a1[6] GUID];
      v25 = [a1[4] MSVerboseDescription];
      *buf = 138543874;
      v35 = v23;
      v36 = 2114;
      v37 = v24;
      v38 = 2114;
      v39 = v25;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to add comment GUID %{public}@. Error: %{public}@. Deleting comment.", buf, 0x20u);
    }

    v20 = [a1[5] dbQueue];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __100__MSASServerSideModel_MSASStateMachine_didFinishAddingComment_toAssetCollection_inAlbum_info_error___block_invoke_616;
    v26[3] = &unk_278E927C8;
    v21 = a1[6];
    v26[4] = a1[5];
    v27 = v21;
    dispatch_async(v20, v26);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __100__MSASServerSideModel_MSASStateMachine_didFinishAddingComment_toAssetCollection_inAlbum_info_error___block_invoke_2(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __100__MSASServerSideModel_MSASStateMachine_didFinishAddingComment_toAssetCollection_inAlbum_info_error___block_invoke_3;
  v7[3] = &unk_278E920B8;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  [v6 eventQueuePerformBlockOnObservers:v7];
}

void __100__MSASServerSideModel_MSASStateMachine_didFinishAddingComment_toAssetCollection_inAlbum_info_error___block_invoke_616(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [*(a1 + 40) GUID];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [v2 MSASAddIsErrorRecovery];
  [v1 dbQueueDeleteCommentWithGUID:v4 info:v3];
}

void __100__MSASServerSideModel_MSASStateMachine_didFinishAddingComment_toAssetCollection_inAlbum_info_error___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFinishAddingComment:a1[5] toAssetCollection:a1[6] inAlbum:a1[7] info:a1[8] error:a1[9]];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFinishAddingComment:a1[5] toAssetCollection:a1[6] inAlbum:a1[7] error:a1[9]];
  }
}

- (void)MSASStateMachine:(id)machine didFinishRemovingSharingRelationship:(id)relationship fromOwnedAlbum:(id)album info:(id)info error:(id)error
{
  v37 = *MEMORY[0x277D85DE8];
  relationshipCopy = relationship;
  albumCopy = album;
  infoCopy = info;
  errorCopy = error;
  eventQueue = [(MSASServerSideModel *)self eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __103__MSASServerSideModel_MSASStateMachine_didFinishRemovingSharingRelationship_fromOwnedAlbum_info_error___block_invoke;
  block[3] = &unk_278E92688;
  block[4] = self;
  v16 = relationshipCopy;
  v27 = v16;
  v17 = albumCopy;
  v28 = v17;
  v18 = infoCopy;
  v29 = v18;
  v19 = errorCopy;
  v30 = v19;
  dispatch_async(eventQueue, block);

  if (v19 && ([v19 MSASStateMachineIsCanceledError] & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      mSVerboseDescription = [v19 MSVerboseDescription];
      *buf = 138543874;
      selfCopy = self;
      v33 = 2112;
      v34 = v16;
      v35 = 2114;
      v36 = mSVerboseDescription;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to delete sharing relationship %@. Error: %{public}@. Reset-syncing ACLs.", buf, 0x20u);
    }

    stateMachine = [(MSASServerSideModel *)self stateMachine];
    v21 = [MEMORY[0x277CBEA60] arrayWithObject:v17];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    mSASAddIsErrorRecovery = [dictionary MSASAddIsErrorRecovery];
    [stateMachine getAccessControlsForAlbums:v21 info:mSASAddIsErrorRecovery];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __103__MSASServerSideModel_MSASStateMachine_didFinishRemovingSharingRelationship_fromOwnedAlbum_info_error___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __103__MSASServerSideModel_MSASStateMachine_didFinishRemovingSharingRelationship_fromOwnedAlbum_info_error___block_invoke_2;
  v7[3] = &unk_278E92610;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  v10 = *(a1 + 64);
  [v6 eventQueuePerformBlockOnObservers:v7];
}

void __103__MSASServerSideModel_MSASStateMachine_didFinishRemovingSharingRelationship_fromOwnedAlbum_info_error___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFinishRemovingAccessControlEntry:a1[5] fromAlbum:a1[6] info:a1[7] error:a1[8]];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFinishRemovingAccessControlEntry:a1[5] fromAlbum:a1[6] error:a1[8]];
  }
}

- (void)MSASStateMachine:(id)machine didFinishSendingInvitationByPhone:(id)phone toOwnedAlbum:(id)album info:(id)info error:(id)error
{
  phoneCopy = phone;
  albumCopy = album;
  infoCopy = info;
  errorCopy = error;
  eventQueue = [(MSASServerSideModel *)self eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__MSASServerSideModel_MSASStateMachine_didFinishSendingInvitationByPhone_toOwnedAlbum_info_error___block_invoke;
  block[3] = &unk_278E92688;
  block[4] = self;
  v21 = phoneCopy;
  v22 = albumCopy;
  v23 = infoCopy;
  v24 = errorCopy;
  v16 = errorCopy;
  v17 = infoCopy;
  v18 = albumCopy;
  v19 = phoneCopy;
  dispatch_async(eventQueue, block);
}

void __98__MSASServerSideModel_MSASStateMachine_didFinishSendingInvitationByPhone_toOwnedAlbum_info_error___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __98__MSASServerSideModel_MSASStateMachine_didFinishSendingInvitationByPhone_toOwnedAlbum_info_error___block_invoke_2;
  v8[3] = &unk_278E92610;
  v7 = *(a1 + 32);
  v3 = *(&v7 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  v11 = *(a1 + 64);
  [v7 eventQueuePerformBlockOnObservers:v8];

  objc_autoreleasePoolPop(v2);
}

void __98__MSASServerSideModel_MSASStateMachine_didFinishSendingInvitationByPhone_toOwnedAlbum_info_error___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFinishSendingInvitationByPhone:a1[5] toAlbum:a1[6] info:a1[7] error:a1[8]];
  }
}

- (void)MSASStateMachine:(id)machine didFinishAddingSharingRelationships:(id)relationships toOwnedAlbum:(id)album info:(id)info error:(id)error
{
  v40 = *MEMORY[0x277D85DE8];
  relationshipsCopy = relationships;
  albumCopy = album;
  infoCopy = info;
  errorCopy = error;
  eventQueue = [(MSASServerSideModel *)self eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __100__MSASServerSideModel_MSASStateMachine_didFinishAddingSharingRelationships_toOwnedAlbum_info_error___block_invoke;
  block[3] = &unk_278E92688;
  v16 = relationshipsCopy;
  v29 = v16;
  selfCopy = self;
  v17 = albumCopy;
  v31 = v17;
  v18 = infoCopy;
  v32 = v18;
  v19 = errorCopy;
  v33 = v19;
  dispatch_async(eventQueue, block);

  if (v19 && ([v19 MSASStateMachineIsCanceledError] & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v22 = [v16 count];
      mSVerboseDescription = [v19 MSVerboseDescription];
      *buf = 138543874;
      selfCopy2 = self;
      v36 = 2048;
      v37 = v22;
      v38 = 2114;
      v39 = mSVerboseDescription;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to add %ld sharing relationships. Error: %{public}@. Setting relationship states to Failed.", buf, 0x20u);
    }

    dbQueue = [(MSASModelBase *)self dbQueue];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __100__MSASServerSideModel_MSASStateMachine_didFinishAddingSharingRelationships_toOwnedAlbum_info_error___block_invoke_613;
    v24[3] = &unk_278E92638;
    v25 = v16;
    selfCopy3 = self;
    v27 = v18;
    dispatch_async(dbQueue, v24);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __100__MSASServerSideModel_MSASStateMachine_didFinishAddingSharingRelationships_toOwnedAlbum_info_error___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v17;
    do
    {
      v5 = 0;
      do
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v16 + 1) + 8 * v5);
        v7 = objc_autoreleasePoolPush();
        v9 = *(a1 + 40);
        v8 = *(a1 + 48);
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __100__MSASServerSideModel_MSASStateMachine_didFinishAddingSharingRelationships_toOwnedAlbum_info_error___block_invoke_2;
        v12[3] = &unk_278E92610;
        v12[4] = v9;
        v12[5] = v6;
        v13 = v8;
        v14 = *(a1 + 56);
        v15 = *(a1 + 64);
        [v9 eventQueuePerformBlockOnObservers:v12];

        objc_autoreleasePoolPop(v7);
        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __100__MSASServerSideModel_MSASStateMachine_didFinishAddingSharingRelationships_toOwnedAlbum_info_error___block_invoke_613(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        [v7 setState:{6, v10}];
        [*(a1 + 40) dbQueueSetAccessControl:v7 info:*(a1 + 48)];
        objc_autoreleasePoolPop(v8);
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __100__MSASServerSideModel_MSASStateMachine_didFinishAddingSharingRelationships_toOwnedAlbum_info_error___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFinishAddingAccessControlEntry:a1[5] toAlbum:a1[6] info:a1[7] error:a1[8]];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFinishAddingAccessControlEntry:a1[5] toAlbum:a1[6] error:a1[8]];
  }
}

- (void)MSASStateMachine:(id)machine didFinishAddingAssetCollection:(id)collection toAlbum:(id)album info:(id)info error:(id)error
{
  v31 = *MEMORY[0x277D85DE8];
  machineCopy = machine;
  collectionCopy = collection;
  albumCopy = album;
  infoCopy = info;
  errorCopy = error;
  if (collectionCopy)
  {
    v17 = [collectionCopy copy];
    dbQueue = [(MSASModelBase *)self dbQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __90__MSASServerSideModel_MSASStateMachine_didFinishAddingAssetCollection_toAlbum_info_error___block_invoke;
    block[3] = &unk_278E92688;
    block[4] = self;
    v23 = albumCopy;
    v24 = errorCopy;
    v25 = v17;
    v26 = infoCopy;
    v19 = v17;
    dispatch_async(dbQueue, block);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    mSVerboseDescription = [errorCopy MSVerboseDescription];
    *buf = 138543618;
    selfCopy = self;
    v29 = 2114;
    v30 = mSVerboseDescription;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to add empty asset collection. Error: %{public}@.", buf, 0x16u);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __90__MSASServerSideModel_MSASStateMachine_didFinishAddingAssetCollection_toAlbum_info_error___block_invoke(id *a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = [a1[5] GUID];
  v4 = [v2 dbQueueLookupOrCreateAlbumWithGUID:v3];

  v5 = a1[6];
  if (v5)
  {
    if ([v5 MSContainsErrorWithDomain:@"MSASProtocolErrorDomain" code:14])
    {
      v6 = [a1[4] daemon];
      v7 = a1[6];
      v8 = [a1[4] personID];
      [v6 didReceiveTooManyPhotosError:v7 forAlbum:v4 personID:v8];
    }
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    v35 = 0u;
    v9 = [a1[7] assets];
    v10 = [v9 countByEnumeratingWithState:&v35 objects:v45 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v36;
      do
      {
        v13 = 0;
        do
        {
          if (*v36 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v35 + 1) + 8 * v13++) setPath:0];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v35 objects:v45 count:16];
      }

      while (v11);
    }

    v14 = [a1[5] GUID];
    [a1[7] setAlbumGUID:v14];

    v15 = a1[7];
    v16 = a1[4];
    v17 = [a1[5] GUID];
    [v16 dbQueueSetAssetCollection:v15 inAlbumWithGUID:v17 info:a1[8]];
  }

  v18 = [a1[4] eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__MSASServerSideModel_MSASStateMachine_didFinishAddingAssetCollection_toAlbum_info_error___block_invoke_2;
  block[3] = &unk_278E92688;
  block[4] = a1[4];
  v31 = a1[7];
  v19 = v4;
  v32 = v19;
  v33 = a1[8];
  v34 = a1[6];
  dispatch_async(v18, block);

  v20 = a1[6];
  if (v20 && ([v20 MSASStateMachineIsCanceledError] & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v25 = a1[4];
      v26 = a1[7];
      v27 = [a1[6] MSVerboseDescription];
      *buf = 138543874;
      v40 = v25;
      v41 = 2114;
      v42 = v26;
      v43 = 2114;
      v44 = v27;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to add asset collection %{public}@. Error: %{public}@. Deleting asset collection and cancelling pending commands.", buf, 0x20u);
    }

    v21 = [a1[4] dbQueue];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __90__MSASServerSideModel_MSASStateMachine_didFinishAddingAssetCollection_toAlbum_info_error___block_invoke_608;
    v28[3] = &unk_278E927C8;
    v28[4] = a1[4];
    v29 = a1[7];
    dispatch_async(v21, v28);

    v22 = [a1[4] stateMachine];
    v23 = [a1[7] GUID];
    [v22 cancelOutstandingCommandsForAssetCollectionWithGUID:v23];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __90__MSASServerSideModel_MSASStateMachine_didFinishAddingAssetCollection_toAlbum_info_error___block_invoke_2(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __90__MSASServerSideModel_MSASStateMachine_didFinishAddingAssetCollection_toAlbum_info_error___block_invoke_3;
  v7[3] = &unk_278E92610;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  v10 = *(a1 + 64);
  [v6 eventQueuePerformBlockOnObservers:v7];
}

void __90__MSASServerSideModel_MSASStateMachine_didFinishAddingAssetCollection_toAlbum_info_error___block_invoke_608(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [*(a1 + 40) GUID];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [v2 MSASAddIsErrorRecovery];
  [v1 deleteAssetCollectionWithGUID:v4 info:v3];
}

void __90__MSASServerSideModel_MSASStateMachine_didFinishAddingAssetCollection_toAlbum_info_error___block_invoke_3(void *a1, void *a2)
{
  v12 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];
    v7 = [v3 _protocolErrorForUnderlyingError:a1[8]];
    [v12 MSASModel:v3 didFinishAddingAssetCollection:v4 toAlbum:v5 info:v6 error:v7];
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[6];
    v11 = [v8 _protocolErrorForUnderlyingError:a1[8]];
    [v12 MSASModel:v8 didFinishAddingAssetCollection:v9 toAlbum:v10 error:v11];
  }
}

- (void)MSASStateMachine:(id)machine didRequestAssetsForAddingAssetCollections:(id)collections inAlbum:(id)album specifications:(id)specifications info:(id)info
{
  collectionsCopy = collections;
  albumCopy = album;
  specificationsCopy = specifications;
  infoCopy = info;
  eventQueue = [(MSASServerSideModel *)self eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __110__MSASServerSideModel_MSASStateMachine_didRequestAssetsForAddingAssetCollections_inAlbum_specifications_info___block_invoke;
  block[3] = &unk_278E92688;
  block[4] = self;
  v21 = collectionsCopy;
  v22 = specificationsCopy;
  v23 = infoCopy;
  v24 = albumCopy;
  v16 = albumCopy;
  v17 = infoCopy;
  v18 = specificationsCopy;
  v19 = collectionsCopy;
  dispatch_async(eventQueue, block);
}

void __110__MSASServerSideModel_MSASStateMachine_didRequestAssetsForAddingAssetCollections_inAlbum_specifications_info___block_invoke(uint64_t a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __110__MSASServerSideModel_MSASStateMachine_didRequestAssetsForAddingAssetCollections_inAlbum_specifications_info___block_invoke_2;
  v8[3] = &unk_278E92130;
  v12 = &v13;
  v7 = *(a1 + 32);
  v2 = *(&v7 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v9 = v7;
  v10 = v5;
  v11 = *(a1 + 64);
  [v7 eventQueuePerformBlockOnObservers:v8];
  if ((v14[3] & 1) == 0)
  {
    v6 = [*(a1 + 32) stateMachine];
    [v6 continueAddingAssetCollections:0 skipAssetCollections:*(a1 + 40) toAlbum:*(a1 + 64) info:*(a1 + 56)];
  }

  _Block_object_dispose(&v13, 8);
}

void __110__MSASServerSideModel_MSASStateMachine_didRequestAssetsForAddingAssetCollections_inAlbum_specifications_info___block_invoke_2(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    *(*(*(a1 + 72) + 8) + 24) = 1;
    v4 = [MEMORY[0x277CBEAA8] date];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = [*(a1 + 40) count];
      *buf = 138543618;
      v33 = v5;
      v34 = 2048;
      v35 = v6;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Requesting derivatives for %ld photos.", buf, 0x16u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v21 = *(a1 + 32);
      v22 = *(a1 + 48);
      *buf = 138543618;
      v33 = v21;
      v34 = 2114;
      v35 = v22;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Specs: %{public}@", buf, 0x16u);
    }

    v7 = [*(a1 + 32) daemon];
    [v7 retainBusy];

    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __110__MSASServerSideModel_MSASStateMachine_didRequestAssetsForAddingAssetCollections_inAlbum_specifications_info___block_invoke_598;
    v29[3] = &unk_278E920E0;
    v29[4] = v8;
    v30 = v4;
    v31 = *(a1 + 64);
    v12 = v4;
    [v3 MSASModel:v8 didRequestDerivativesForAssetCollections:v9 specifications:v10 info:v11 completionBlock:v29];
  }

  if (objc_opt_respondsToSelector())
  {
    *(*(*(a1 + 72) + 8) + 24) = 1;
    v13 = [MEMORY[0x277CBEAA8] date];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 32);
      v15 = [*(a1 + 40) count];
      *buf = 138543618;
      v33 = v14;
      v34 = 2048;
      v35 = v15;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Requesting derivatives for %ld photos.", buf, 0x16u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v23 = *(a1 + 32);
      v24 = *(a1 + 48);
      *buf = 138543618;
      v33 = v23;
      v34 = 2114;
      v35 = v24;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Specs: %{public}@", buf, 0x16u);
    }

    v16 = [*(a1 + 32) daemon];
    [v16 retainBusy];

    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __110__MSASServerSideModel_MSASStateMachine_didRequestAssetsForAddingAssetCollections_inAlbum_specifications_info___block_invoke_602;
    v25[3] = &unk_278E92108;
    v25[4] = v17;
    v26 = v13;
    v27 = *(a1 + 64);
    v28 = *(a1 + 56);
    v19 = v13;
    [v3 MSASModel:v17 didRequestDerivativesForAssetCollections:v18 specifications:0 completionBlock:v25];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __110__MSASServerSideModel_MSASStateMachine_didRequestAssetsForAddingAssetCollections_inAlbum_specifications_info___block_invoke_598(uint64_t a1, void *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 32);
    v20 = 138543874;
    v21 = v10;
    v22 = 2048;
    v23 = [v7 count];
    v24 = 2048;
    v25 = [v8 count];
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Received derivatives for %ld photos, and received rejections for %ld photos.", &v20, 0x20u);
  }

  if ([v7 count])
  {
    v11 = [MEMORY[0x277CBEAA8] date];
    [v11 timeIntervalSinceDate:*(a1 + 40)];
    v13 = v12;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a1 + 32);
      v18 = [v7 count];
      v19 = [v7 count];
      v20 = 138544130;
      v21 = v17;
      v22 = 2048;
      v23 = v18;
      v24 = 2048;
      v25 = *&v13;
      v26 = 2048;
      v27 = v13 / v19;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Computing derivatives for %ld photos took %.2f seconds, or %.2f per photo.", &v20, 0x2Au);
    }
  }

  v14 = [*(a1 + 32) stateMachine];
  [v14 continueAddingAssetCollections:v7 skipAssetCollections:v8 toAlbum:*(a1 + 48) info:v9];

  v15 = [*(a1 + 32) daemon];
  [v15 releaseBusy];

  v16 = *MEMORY[0x277D85DE8];
}

void __110__MSASServerSideModel_MSASStateMachine_didRequestAssetsForAddingAssetCollections_inAlbum_specifications_info___block_invoke_602(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v17 = 138543874;
    v18 = v7;
    v19 = 2048;
    v20 = [v5 count];
    v21 = 2048;
    v22 = [v6 count];
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Received derivatives for %ld photos, and received rejections for %ld photos.", &v17, 0x20u);
  }

  if ([v5 count])
  {
    v8 = [MEMORY[0x277CBEAA8] date];
    [v8 timeIntervalSinceDate:*(a1 + 40)];
    v10 = v9;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v14 = *(a1 + 32);
      v15 = [v5 count];
      v16 = [v5 count];
      v17 = 138544130;
      v18 = v14;
      v19 = 2048;
      v20 = v15;
      v21 = 2048;
      v22 = *&v10;
      v23 = 2048;
      v24 = v10 / v16;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Computing derivatives for %ld photos took %.2f seconds, or %.2f per photo.", &v17, 0x2Au);
    }
  }

  v11 = [*(a1 + 32) stateMachine];
  [v11 continueAddingAssetCollections:v5 skipAssetCollections:v6 toAlbum:*(a1 + 48) info:*(a1 + 56)];

  v12 = [*(a1 + 32) daemon];
  [v12 releaseBusy];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)MSASStateMachine:(id)machine didFinishUpdatingAlbum:(id)album info:(id)info error:(id)error
{
  albumCopy = album;
  infoCopy = info;
  errorCopy = error;
  eventQueue = [(MSASServerSideModel *)self eventQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __74__MSASServerSideModel_MSASStateMachine_didFinishUpdatingAlbum_info_error___block_invoke;
  v16[3] = &unk_278E92660;
  v16[4] = self;
  v17 = albumCopy;
  v18 = infoCopy;
  v19 = errorCopy;
  v13 = errorCopy;
  v14 = infoCopy;
  v15 = albumCopy;
  dispatch_async(eventQueue, v16);
}

void __74__MSASServerSideModel_MSASStateMachine_didFinishUpdatingAlbum_info_error___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __74__MSASServerSideModel_MSASStateMachine_didFinishUpdatingAlbum_info_error___block_invoke_2;
  v19 = &unk_278E925D8;
  v15 = *(a1 + 32);
  v2 = *(&v15 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v20 = v15;
  v21 = v5;
  [v15 eventQueuePerformBlockOnObservers:&v16];
  v6 = *(a1 + 56);
  if (v6 && ([v6 MSASStateMachineIsCanceledError] & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v14 = [*(a1 + 56) MSVerboseDescription];
      *buf = 138543874;
      v23 = v12;
      v24 = 2114;
      v25 = v13;
      v26 = 2114;
      v27 = v14;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to update album %{public}@. Error: %{public}@. Re-reading album metadata.", buf, 0x20u);
    }

    v7 = [*(a1 + 32) stateMachine];
    v8 = [MEMORY[0x277CBEA60] arrayWithObject:*(a1 + 40)];
    v9 = [MEMORY[0x277CBEB38] dictionary];
    v10 = [v9 MSASAddIsErrorRecovery];
    [v7 checkForUpdatesInAlbums:v8 resetSync:0 info:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __74__MSASServerSideModel_MSASStateMachine_didFinishUpdatingAlbum_info_error___block_invoke_2(void *a1, void *a2)
{
  v10 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = [v3 _protocolErrorForUnderlyingError:a1[7]];
    [v10 MSASModel:v3 didFinishModifyingAlbumMetadata:v4 info:v5 error:v6];
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = a1[4];
    v8 = a1[5];
    v9 = [v7 _protocolErrorForUnderlyingError:a1[7]];
    [v10 MSASModel:v7 didFinishModifyingAlbumMetadata:v8 error:v9];
  }
}

- (void)MSASStateMachine:(id)machine didFinishCreatingAlbum:(id)album info:(id)info error:(id)error
{
  albumCopy = album;
  infoCopy = info;
  errorCopy = error;
  dbQueue = [(MSASModelBase *)self dbQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __74__MSASServerSideModel_MSASStateMachine_didFinishCreatingAlbum_info_error___block_invoke;
  v16[3] = &unk_278E92660;
  v17 = albumCopy;
  v18 = errorCopy;
  selfCopy = self;
  v20 = infoCopy;
  v13 = infoCopy;
  v14 = errorCopy;
  v15 = albumCopy;
  dispatch_async(dbQueue, v16);
}

void __74__MSASServerSideModel_MSASStateMachine_didFinishCreatingAlbum_info_error___block_invoke(id *a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  if (v3)
  {
    if ([v3 MSContainsErrorWithDomain:@"MSASProtocolErrorDomain" code:13])
    {
      v4 = [a1[6] daemon];
      v5 = a1[5];
      v6 = [a1[6] personID];
      [v4 didReceiveTooManyAlbumsError:v5 personID:v6];
    }
  }

  else
  {
    v7 = a1[6];
    v8 = [a1[4] GUID];
    v9 = [v7 dbQueueLookupOrCreateAlbumWithGUID:v8];

    v10 = [a1[4] ctag];
    [v9 setCtag:v10];

    v11 = [a1[4] clientOrgKey];
    [v9 setClientOrgKey:v11];

    [a1[6] dbQueueSetAlbum:v9 info:a1[7]];
    v2 = v9;
  }

  v12 = [a1[6] eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__MSASServerSideModel_MSASStateMachine_didFinishCreatingAlbum_info_error___block_invoke_2;
  block[3] = &unk_278E92660;
  block[4] = a1[6];
  v13 = v2;
  v29 = v13;
  v30 = a1[7];
  v31 = a1[5];
  dispatch_async(v12, block);

  v14 = a1[5];
  if (v14 && ([v14 MSASStateMachineIsCanceledError] & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v19 = a1[6];
      v20 = a1[4];
      v21 = [a1[5] MSVerboseDescription];
      *buf = 138543874;
      v33 = v19;
      v34 = 2114;
      v35 = v20;
      v36 = 2114;
      v37 = v21;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to create album %{public}@. Error: %{public}@.", buf, 0x20u);
    }

    v15 = [a1[6] dbQueue];
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __74__MSASServerSideModel_MSASStateMachine_didFinishCreatingAlbum_info_error___block_invoke_591;
    v25 = &unk_278E927C8;
    v26 = a1[6];
    v27 = a1[4];
    dispatch_async(v15, &v22);

    v16 = [a1[6] stateMachine];
    v17 = [a1[4] GUID];
    [v16 cancelOutstandingCommandsForAlbumWithGUID:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __74__MSASServerSideModel_MSASStateMachine_didFinishCreatingAlbum_info_error___block_invoke_2(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__MSASServerSideModel_MSASStateMachine_didFinishCreatingAlbum_info_error___block_invoke_3;
  v7[3] = &unk_278E925D8;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [v6 eventQueuePerformBlockOnObservers:v7];
}

void __74__MSASServerSideModel_MSASStateMachine_didFinishCreatingAlbum_info_error___block_invoke_591(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [*(a1 + 40) GUID];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [v2 MSASAddIsErrorRecovery];
  [v1 dbQueueDeleteAlbumWithGUID:v4 info:v3];
}

void __74__MSASServerSideModel_MSASStateMachine_didFinishCreatingAlbum_info_error___block_invoke_3(void *a1, void *a2)
{
  v10 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = [v3 _protocolErrorForUnderlyingError:a1[7]];
    [v10 MSASModel:v3 didFinishAddingAlbum:v4 info:v5 error:v6];
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = a1[4];
    v8 = a1[5];
    v9 = [v7 _protocolErrorForUnderlyingError:a1[7]];
    [v10 MSASModel:v7 didFinishAddingAlbum:v8 error:v9];
  }
}

- (void)MSASStateMachine:(id)machine didFinishDeletingComment:(id)comment inAssetCollection:(id)collection inAlbum:(id)album info:(id)info error:(id)error
{
  v49 = *MEMORY[0x277D85DE8];
  commentCopy = comment;
  collectionCopy = collection;
  albumCopy = album;
  infoCopy = info;
  errorCopy = error;
  eventQueue = [(MSASServerSideModel *)self eventQueue];
  v31 = MEMORY[0x277D85DD0];
  v32 = 3221225472;
  v33 = __102__MSASServerSideModel_MSASStateMachine_didFinishDeletingComment_inAssetCollection_inAlbum_info_error___block_invoke;
  v34 = &unk_278E92048;
  selfCopy = self;
  v19 = commentCopy;
  v36 = v19;
  v20 = collectionCopy;
  v37 = v20;
  v21 = albumCopy;
  v38 = v21;
  v22 = infoCopy;
  v39 = v22;
  v23 = errorCopy;
  v40 = v23;
  dispatch_async(eventQueue, &v31);

  if (v23 && ([v23 MSASStateMachineIsCanceledError] & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v28 = [v19 ID];
      gUID = [v20 GUID];
      mSVerboseDescription = [v23 MSVerboseDescription];
      *buf = 138544130;
      selfCopy2 = self;
      v43 = 1024;
      v44 = v28;
      v45 = 2114;
      v46 = gUID;
      v47 = 2114;
      v48 = mSVerboseDescription;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to delete comment ID %d in asset collection GUID %{public}@. Error: %{public}@. Reset-syncing comments.", buf, 0x26u);
    }

    gUID2 = [v20 GUID];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    mSASAddIsErrorRecovery = [dictionary MSASAddIsErrorRecovery];
    [(MSASServerSideModel *)self refreshCommentsForAssetCollectionWithGUID:gUID2 resetSync:1 info:mSASAddIsErrorRecovery];
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __102__MSASServerSideModel_MSASStateMachine_didFinishDeletingComment_inAssetCollection_inAlbum_info_error___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __102__MSASServerSideModel_MSASStateMachine_didFinishDeletingComment_inAssetCollection_inAlbum_info_error___block_invoke_2;
  v7[3] = &unk_278E920B8;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  [v6 eventQueuePerformBlockOnObservers:v7];
}

void __102__MSASServerSideModel_MSASStateMachine_didFinishDeletingComment_inAssetCollection_inAlbum_info_error___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFinishDeletingComment:a1[5] fromAssetCollection:a1[6] inAlbum:a1[7] info:a1[8] error:a1[9]];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFinishDeletingComment:a1[5] fromAssetCollection:a1[6] inAlbum:a1[7] error:a1[9]];
  }
}

- (void)MSASStateMachine:(id)machine didFinishDeletingAssetCollection:(id)collection inAlbum:(id)album info:(id)info error:(id)error
{
  collectionCopy = collection;
  albumCopy = album;
  infoCopy = info;
  errorCopy = error;
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__MSASServerSideModel_MSASStateMachine_didFinishDeletingAssetCollection_inAlbum_info_error___block_invoke;
  block[3] = &unk_278E92688;
  block[4] = self;
  v21 = collectionCopy;
  v22 = albumCopy;
  v23 = infoCopy;
  v24 = errorCopy;
  v16 = errorCopy;
  v17 = infoCopy;
  v18 = albumCopy;
  v19 = collectionCopy;
  dispatch_async(dbQueue, block);
}

void __92__MSASServerSideModel_MSASStateMachine_didFinishDeletingAssetCollection_inAlbum_info_error___block_invoke(id *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = [a1[5] GUID];
  v4 = [v2 dbQueueLookupOrCreateAssetCollectionWithGUID:v3 outAlbum:0];

  v5 = [a1[4] eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__MSASServerSideModel_MSASStateMachine_didFinishDeletingAssetCollection_inAlbum_info_error___block_invoke_2;
  block[3] = &unk_278E92688;
  block[4] = a1[4];
  v6 = v4;
  v17 = v6;
  v18 = a1[6];
  v19 = a1[7];
  v20 = a1[8];
  dispatch_async(v5, block);

  v7 = a1[8];
  if (v7 && ([v7 MSASStateMachineIsCanceledError] & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v13 = a1[4];
      v14 = a1[5];
      v15 = [a1[8] MSVerboseDescription];
      *buf = 138543874;
      v22 = v13;
      v23 = 2114;
      v24 = v14;
      v25 = 2114;
      v26 = v15;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to delete asset collection %{public}@. Error: %{public}@. Reset-syncing album.", buf, 0x20u);
    }

    v8 = a1[4];
    v9 = [a1[6] GUID];
    v10 = [MEMORY[0x277CBEB38] dictionary];
    v11 = [v10 MSASAddIsErrorRecovery];
    [v8 refreshContentOfAlbumWithGUID:v9 resetSync:1 info:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __92__MSASServerSideModel_MSASStateMachine_didFinishDeletingAssetCollection_inAlbum_info_error___block_invoke_2(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __92__MSASServerSideModel_MSASStateMachine_didFinishDeletingAssetCollection_inAlbum_info_error___block_invoke_3;
  v7[3] = &unk_278E92610;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  v10 = *(a1 + 64);
  [v6 eventQueuePerformBlockOnObservers:v7];
}

void __92__MSASServerSideModel_MSASStateMachine_didFinishDeletingAssetCollection_inAlbum_info_error___block_invoke_3(void *a1, void *a2)
{
  v12 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];
    v7 = [v3 _protocolErrorForUnderlyingError:a1[8]];
    [v12 MSASModel:v3 didFinishDeletingAssetCollection:v4 fromAlbum:v5 info:v6 error:v7];
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[6];
    v11 = [v8 _protocolErrorForUnderlyingError:a1[8]];
    [v12 MSASModel:v8 didFinishDeletingAssetCollection:v9 fromAlbum:v10 error:v11];
  }
}

- (void)MSASStateMachine:(id)machine didFinishDeletingAlbum:(id)album info:(id)info error:(id)error
{
  albumCopy = album;
  infoCopy = info;
  errorCopy = error;
  dbQueue = [(MSASModelBase *)self dbQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __74__MSASServerSideModel_MSASStateMachine_didFinishDeletingAlbum_info_error___block_invoke;
  v16[3] = &unk_278E92660;
  v16[4] = self;
  v17 = albumCopy;
  v18 = infoCopy;
  v19 = errorCopy;
  v13 = errorCopy;
  v14 = infoCopy;
  v15 = albumCopy;
  dispatch_sync(dbQueue, v16);
}

void __74__MSASServerSideModel_MSASStateMachine_didFinishDeletingAlbum_info_error___block_invoke(id *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = [a1[5] GUID];
  v4 = [v2 dbQueueLookupOrCreateAlbumWithGUID:v3];

  v5 = [a1[4] eventQueue];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __74__MSASServerSideModel_MSASStateMachine_didFinishDeletingAlbum_info_error___block_invoke_2;
  v18 = &unk_278E92660;
  v19 = a1[4];
  v6 = v4;
  v20 = v6;
  v21 = a1[6];
  v22 = a1[7];
  dispatch_async(v5, &v15);

  v7 = a1[7];
  if (v7 && ([v7 MSASStateMachineIsCanceledError] & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v12 = a1[4];
      v13 = a1[5];
      v14 = [a1[7] MSVerboseDescription];
      *buf = 138543874;
      v24 = v12;
      v25 = 2114;
      v26 = v13;
      v27 = 2114;
      v28 = v14;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to delete album %{public}@. Error: %{public}@. Reset-syncing album list.", buf, 0x20u);
    }

    v8 = a1[4];
    v9 = [MEMORY[0x277CBEB38] dictionary];
    v10 = [v9 MSASAddIsErrorRecovery];
    [v8 refreshResetSync:1 info:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __74__MSASServerSideModel_MSASStateMachine_didFinishDeletingAlbum_info_error___block_invoke_2(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__MSASServerSideModel_MSASStateMachine_didFinishDeletingAlbum_info_error___block_invoke_3;
  v7[3] = &unk_278E925D8;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [v6 eventQueuePerformBlockOnObservers:v7];
}

void __74__MSASServerSideModel_MSASStateMachine_didFinishDeletingAlbum_info_error___block_invoke_3(void *a1, void *a2)
{
  v10 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = [v3 _protocolErrorForUnderlyingError:a1[7]];
    [v10 MSASModel:v3 didFinishDeletingAlbum:v4 info:v5 error:v6];
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = a1[4];
    v8 = a1[5];
    v9 = [v7 _protocolErrorForUnderlyingError:a1[7]];
    [v10 MSASModel:v7 didFinishDeletingAlbum:v8 error:v9];
  }
}

- (BOOL)MSASStateMachine:(id)machine didQueryIsAssetCollectionWithGUIDInModel:(id)model
{
  machineCopy = machine;
  modelCopy = model;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__MSASServerSideModel_MSASStateMachine_didQueryIsAssetCollectionWithGUIDInModel___block_invoke;
  block[3] = &unk_278E91C78;
  v12 = modelCopy;
  v13 = &v14;
  block[4] = self;
  v9 = modelCopy;
  dispatch_sync(dbQueue, block);

  LOBYTE(modelCopy) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);

  return modelCopy;
}

uint64_t __81__MSASServerSideModel_MSASStateMachine_didQueryIsAssetCollectionWithGUIDInModel___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) dbQueueAssetCollectionWithGUID:*(a1 + 40) outObject:0 outCtag:0 outAlbumGUID:0 outBatchDate:0 outPhotoDate:0 outPhotoNumber:0 outUserInfoData:0];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (id)MSASStateMachineDidRequestAssetCollectionStateCtagForAssetCollectionWithGUID:(id)d info:(id)info
{
  dCopy = d;
  infoCopy = info;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__6923;
  v19 = __Block_byref_object_dispose__6924;
  v20 = 0;
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __105__MSASServerSideModel_MSASStateMachineDidRequestAssetCollectionStateCtagForAssetCollectionWithGUID_info___block_invoke;
  block[3] = &unk_278E91C78;
  block[4] = self;
  v13 = dCopy;
  v14 = &v15;
  v9 = dCopy;
  dispatch_sync(dbQueue, block);

  v10 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v10;
}

void __105__MSASServerSideModel_MSASStateMachineDidRequestAssetCollectionStateCtagForAssetCollectionWithGUID_info___block_invoke(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  [v2 dbQueueAssetCollectionMetadataWithAssetCollectionGUID:v1 key:@"stateCtag" outValue:&obj];
  objc_storeStrong((v3 + 40), obj);
}

- (id)MSASStateMachineDidRequestAlbumWithGUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6923;
  v16 = __Block_byref_object_dispose__6924;
  v17 = 0;
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__MSASServerSideModel_MSASStateMachineDidRequestAlbumWithGUID___block_invoke;
  block[3] = &unk_278E91C78;
  block[4] = self;
  v10 = dCopy;
  v11 = &v12;
  v6 = dCopy;
  dispatch_sync(dbQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __63__MSASServerSideModel_MSASStateMachineDidRequestAlbumWithGUID___block_invoke(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  [v2 dbQueueAlbumWithGUID:v1 outObject:&obj outName:0 outCtag:0 outForeignCtag:0 outURLString:0 outUserInfoData:0 outClientOrgKey:0];
  objc_storeStrong((v3 + 40), obj);
}

- (id)MSASStateMachineDidRequestAlbumURLStringForAlbumWithGUID:(id)d info:(id)info
{
  dCopy = d;
  infoCopy = info;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__6923;
  v19 = __Block_byref_object_dispose__6924;
  v20 = 0;
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__MSASServerSideModel_MSASStateMachineDidRequestAlbumURLStringForAlbumWithGUID_info___block_invoke;
  block[3] = &unk_278E91C78;
  block[4] = self;
  v13 = dCopy;
  v14 = &v15;
  v9 = dCopy;
  dispatch_sync(dbQueue, block);

  v10 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v10;
}

void __85__MSASServerSideModel_MSASStateMachineDidRequestAlbumURLStringForAlbumWithGUID_info___block_invoke(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  [v2 dbQueueAlbumWithGUID:v1 outObject:0 outName:0 outCtag:0 outForeignCtag:0 outURLString:&obj outUserInfoData:0 outClientOrgKey:0];
  objc_storeStrong((v3 + 40), obj);
}

- (id)MSASStateMachineDidRequestAlbumStateCtagForAlbumWithGUID:(id)d info:(id)info
{
  dCopy = d;
  infoCopy = info;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__6923;
  v19 = __Block_byref_object_dispose__6924;
  v20 = 0;
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__MSASServerSideModel_MSASStateMachineDidRequestAlbumStateCtagForAlbumWithGUID_info___block_invoke;
  block[3] = &unk_278E91C78;
  block[4] = self;
  v13 = dCopy;
  v14 = &v15;
  v9 = dCopy;
  dispatch_sync(dbQueue, block);

  v10 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v10;
}

void __85__MSASServerSideModel_MSASStateMachineDidRequestAlbumStateCtagForAlbumWithGUID_info___block_invoke(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  [v2 dbQueueAlbumMetadataWithAlbumGUID:v1 key:@"stateCtag" outValue:&obj];
  objc_storeStrong((v3 + 40), obj);
}

- (void)MSASStateMachine:(id)machine didFinishSettingSyncedStateForAssetCollection:(id)collection inAlbum:(id)album assetStateCtag:(id)ctag info:(id)info error:(id)error
{
  v43 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  albumCopy = album;
  ctagCopy = ctag;
  infoCopy = info;
  errorCopy = error;
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __120__MSASServerSideModel_MSASStateMachine_didFinishSettingSyncedStateForAssetCollection_inAlbum_assetStateCtag_info_error___block_invoke;
  block[3] = &unk_278E92688;
  v19 = errorCopy;
  v30 = v19;
  selfCopy = self;
  v20 = collectionCopy;
  v32 = v20;
  v21 = ctagCopy;
  v33 = v21;
  v22 = infoCopy;
  v34 = v22;
  dispatch_async(dbQueue, block);

  if (v19 && ([v19 MSASStateMachineIsCanceledError] & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      mSVerboseDescription = [v19 MSVerboseDescription];
      *buf = 138544130;
      selfCopy2 = self;
      v37 = 2114;
      v38 = v20;
      v39 = 2114;
      v40 = albumCopy;
      v41 = 2114;
      v42 = mSVerboseDescription;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to set synced state for asset collection %{public}@ in album %{public}@. Error: %{public}@. Requesting latest state.", buf, 0x2Au);
    }

    stateMachine = [(MSASServerSideModel *)self stateMachine];
    v24 = [MEMORY[0x277CBEA60] arrayWithObject:albumCopy];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    mSASAddIsErrorRecovery = [dictionary MSASAddIsErrorRecovery];
    [stateMachine checkForAlbumSyncedStateChangesInAlbums:v24 info:mSASAddIsErrorRecovery];
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __120__MSASServerSideModel_MSASStateMachine_didFinishSettingSyncedStateForAssetCollection_inAlbum_assetStateCtag_info_error___block_invoke(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 48) GUID];
    [v3 dbQueueSetAssetCollectionMetadataAssetCollectionGUID:v4 key:@"stateCtag" value:*(a1 + 56) info:*(a1 + 64)];
  }
}

- (void)MSASStateMachine:(id)machine didFinishSettingSyncedStateForAlbum:(id)album info:(id)info error:(id)error newAlbumStateCtag:(id)ctag
{
  v38 = *MEMORY[0x277D85DE8];
  albumCopy = album;
  infoCopy = info;
  errorCopy = error;
  ctagCopy = ctag;
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __105__MSASServerSideModel_MSASStateMachine_didFinishSettingSyncedStateForAlbum_info_error_newAlbumStateCtag___block_invoke;
  block[3] = &unk_278E92688;
  v16 = errorCopy;
  v27 = v16;
  selfCopy = self;
  v17 = albumCopy;
  v29 = v17;
  v18 = ctagCopy;
  v30 = v18;
  v19 = infoCopy;
  v31 = v19;
  dispatch_async(dbQueue, block);

  if (v16 && ([v16 MSASStateMachineIsCanceledError] & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      mSVerboseDescription = [v16 MSVerboseDescription];
      *buf = 138543874;
      selfCopy2 = self;
      v34 = 2114;
      v35 = v17;
      v36 = 2114;
      v37 = mSVerboseDescription;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to set synced state for album %{public}@. Error: %{public}@. Requesting latest state.", buf, 0x20u);
    }

    stateMachine = [(MSASServerSideModel *)self stateMachine];
    v21 = [MEMORY[0x277CBEA60] arrayWithObject:v17];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    mSASAddIsErrorRecovery = [dictionary MSASAddIsErrorRecovery];
    [stateMachine checkForAlbumSyncedStateChangesInAlbums:v21 info:mSASAddIsErrorRecovery];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __105__MSASServerSideModel_MSASStateMachine_didFinishSettingSyncedStateForAlbum_info_error_newAlbumStateCtag___block_invoke(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 48) GUID];
    [v3 dbQueueSetAlbumMetadataAlbumGUID:v4 key:@"stateCtag" value:*(a1 + 56) info:*(a1 + 64)];
  }
}

- (void)MSASStateMachine:(id)machine didFinishCheckingForAlbumSyncedStateChangesInAlbum:(id)album info:(id)info error:(id)error newAlbumStateCtag:(id)ctag
{
  machineCopy = machine;
  albumCopy = album;
  infoCopy = info;
  errorCopy = error;
  ctagCopy = ctag;
  dbQueue = [(MSASModelBase *)self dbQueue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __120__MSASServerSideModel_MSASStateMachine_didFinishCheckingForAlbumSyncedStateChangesInAlbum_info_error_newAlbumStateCtag___block_invoke;
  v23[3] = &unk_278E92048;
  v24 = errorCopy;
  selfCopy = self;
  v26 = albumCopy;
  v27 = ctagCopy;
  v28 = infoCopy;
  v29 = machineCopy;
  v18 = machineCopy;
  v19 = infoCopy;
  v20 = ctagCopy;
  v21 = albumCopy;
  v22 = errorCopy;
  dispatch_async(dbQueue, v23);
}

void __120__MSASServerSideModel_MSASStateMachine_didFinishCheckingForAlbumSyncedStateChangesInAlbum_info_error_newAlbumStateCtag___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32))
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 48) GUID];
    [v2 dbQueueSetAlbumMetadataAlbumGUID:v3 key:@"stateCtag" value:*(a1 + 56) info:*(a1 + 64)];
  }

  v4 = [*(a1 + 40) pendingChanges];
  v5 = [*(a1 + 48) GUID];
  [v4 removePendingKeyValueChangesForAlbumGUID:v5];

  v6 = [*(a1 + 40) pendingChanges];
  LOBYTE(v5) = [v6 hasPendingChanges];

  if ((v5 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 40);
      v9 = 138543362;
      v10 = v8;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Finished checking album synced state", &v9, 0xCu);
    }

    [*(a1 + 40) MSASStateMachine:*(a1 + 72) didFinishCheckingForChangesInfo:*(a1 + 64) error:*(a1 + 32)];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)MSASStateMachine:(id)machine didFindAlbumSyncedState:(id)state forAlbum:(id)album info:(id)info
{
  stateCopy = state;
  albumCopy = album;
  infoCopy = info;
  dbQueue = [(MSASModelBase *)self dbQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __78__MSASServerSideModel_MSASStateMachine_didFindAlbumSyncedState_forAlbum_info___block_invoke;
  v16[3] = &unk_278E92660;
  v16[4] = self;
  v17 = stateCopy;
  v18 = albumCopy;
  v19 = infoCopy;
  v13 = infoCopy;
  v14 = albumCopy;
  v15 = stateCopy;
  dispatch_async(dbQueue, v16);
}

void __78__MSASServerSideModel_MSASStateMachine_didFindAlbumSyncedState_forAlbum_info___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) dbQueueBeginTransaction];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        v9 = [*(a1 + 40) objectForKey:{v7, v15}];
        v10 = *(a1 + 32);
        v11 = [*(a1 + 48) GUID];
        [v10 dbQueueSetAlbumMetadataAlbumGUID:v11 key:v7 value:v9 info:*(a1 + 56)];

        objc_autoreleasePoolPop(v8);
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  [*(a1 + 32) dbQueueEndTransaction];
  v12 = *(a1 + 32);
  v13 = [*(a1 + 48) GUID];
  [v12 dbQueueCheckToClearUnviewedStateOnAlbumWithGUID:v13 info:*(a1 + 56)];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)MSASStateMachine:(id)machine didFindAssetCollectionSyncedState:(id)state forAssetCollectionGUID:(id)d inAlbum:(id)album assetCollectionStateCtag:(id)ctag info:(id)info
{
  stateCopy = state;
  dCopy = d;
  ctagCopy = ctag;
  infoCopy = info;
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __135__MSASServerSideModel_MSASStateMachine_didFindAssetCollectionSyncedState_forAssetCollectionGUID_inAlbum_assetCollectionStateCtag_info___block_invoke;
  block[3] = &unk_278E92688;
  block[4] = self;
  v22 = stateCopy;
  v23 = dCopy;
  v24 = infoCopy;
  v25 = ctagCopy;
  v17 = ctagCopy;
  v18 = infoCopy;
  v19 = dCopy;
  v20 = stateCopy;
  dispatch_async(dbQueue, block);
}

uint64_t __135__MSASServerSideModel_MSASStateMachine_didFindAssetCollectionSyncedState_forAssetCollectionGUID_inAlbum_assetCollectionStateCtag_info___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) dbQueueBeginTransaction];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        v9 = [*(a1 + 40) objectForKey:{v7, v12}];
        [*(a1 + 32) dbQueueSetAssetCollectionMetadataAssetCollectionGUID:*(a1 + 48) key:v7 value:v9 info:*(a1 + 56)];

        objc_autoreleasePoolPop(v8);
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  [*(a1 + 32) dbQueueEndTransaction];
  [*(a1 + 32) dbQueueSetAssetCollectionMetadataAssetCollectionGUID:*(a1 + 48) key:@"stateCtag" value:*(a1 + 64) info:*(a1 + 56)];
  result = [*(a1 + 32) dbQueueCheckToClearUnviewedStateOnAssetCollectionWithGUID:*(a1 + 48) info:*(a1 + 56)];
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)MSASStateMachine:(id)machine didFinishCheckingForCommentChangesInAssetCollectionWithGUID:(id)d largestCommentID:(int)iD info:(id)info error:(id)error
{
  dCopy = d;
  infoCopy = info;
  errorCopy = error;
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __128__MSASServerSideModel_MSASStateMachine_didFinishCheckingForCommentChangesInAssetCollectionWithGUID_largestCommentID_info_error___block_invoke;
  block[3] = &unk_278E92090;
  iDCopy = iD;
  v19 = errorCopy;
  selfCopy = self;
  v21 = dCopy;
  v22 = infoCopy;
  v15 = infoCopy;
  v16 = dCopy;
  v17 = errorCopy;
  dispatch_async(dbQueue, block);
}

void __128__MSASServerSideModel_MSASStateMachine_didFinishCheckingForCommentChangesInAssetCollectionWithGUID_largestCommentID_info_error___block_invoke(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", *(a1 + 64)];
    [*(a1 + 40) dbQueueSetAssetCollectionMetadataAssetCollectionGUID:*(a1 + 48) key:@"largestCommentID" value:v3 info:*(a1 + 56)];
  }
}

- (void)MSASStateMachine:(id)machine didFindCommentChanges:(id)changes inAssetCollectionWithGUID:(id)d inAlbumWithGUID:(id)iD info:(id)info
{
  changesCopy = changes;
  dCopy = d;
  iDCopy = iD;
  infoCopy = info;
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __109__MSASServerSideModel_MSASStateMachine_didFindCommentChanges_inAssetCollectionWithGUID_inAlbumWithGUID_info___block_invoke;
  block[3] = &unk_278E92688;
  block[4] = self;
  v21 = dCopy;
  v22 = iDCopy;
  v23 = changesCopy;
  v24 = infoCopy;
  v16 = infoCopy;
  v17 = changesCopy;
  v18 = iDCopy;
  v19 = dCopy;
  dispatch_async(dbQueue, block);
}

void __109__MSASServerSideModel_MSASStateMachine_didFindCommentChanges_inAssetCollectionWithGUID_inAlbumWithGUID_info___block_invoke(uint64_t a1)
{
  v83 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v81 = 0;
  v4 = [v2 dbQueueAssetCollectionMetadataWithAssetCollectionGUID:v3 key:@"lastcommentposition" outValue:&v81];
  v5 = v81;
  v6 = v5;
  if (v4)
  {
    v7 = [v5 intValue];
  }

  else
  {
    v7 = -1;
  }

  v66 = [*(a1 + 32) dbQueueAssetCollectionContainsCommentsFromMeAssetCollectionGUID:*(a1 + 40)];
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v79 = 0;
  v80 = 0;
  v78 = 0;
  v10 = [v8 dbQueueAlbumWithGUID:v9 outObject:&v80 outName:0 outCtag:&v79 outForeignCtag:&v78 outURLString:0 outUserInfoData:0 outClientOrgKey:0];
  v11 = v80;
  v12 = v79;
  v13 = v78;
  if (v10)
  {
    v14 = *(a1 + 32);
    v15 = *(a1 + 48);
    v77 = 0;
    v16 = [v14 dbQueueAlbumMetadataWithAlbumGUID:v15 key:@"lastviewedctag" outValue:&v77];
    v17 = v77;
    if (v16)
    {
      if ([v11 useForeignCtag])
      {
        v18 = v13;
      }

      else
      {
        v18 = v12;
      }

      v19 = 1;
      if (v17 && v18)
      {
        v19 = [v17 isEqualToString:?] ^ 1;
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 1;
  }

  v20 = [*(a1 + 56) mutableCopy];
  [v20 sortUsingComparator:&__block_literal_global_582];
  [*(a1 + 32) beginTransaction];
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v21 = v20;
  v22 = [v21 countByEnumeratingWithState:&v73 objects:v82 count:16];
  if (!v22)
  {

    goto LABEL_49;
  }

  v23 = v22;
  v57 = v19;
  v58 = v13;
  v59 = v11;
  v60 = v12;
  v61 = v6;
  v62 = v7;
  v63 = 0;
  v24 = *v74;
  v64 = *v74;
  v65 = v21;
  do
  {
    for (i = 0; i != v23; ++i)
    {
      if (*v74 != v24)
      {
        objc_enumerationMutation(v21);
      }

      v26 = *(*(&v73 + 1) + 8 * i);
      v27 = objc_autoreleasePoolPush();
      if (![v26 type])
      {
        v33 = [v26 comment];
        v34 = *(a1 + 32);
        v35 = [v33 ID];
        v36 = *(a1 + 40);
        v72 = 0;
        v37 = [v34 dbQueueCommentWithID:v35 assetCollectionGUID:v36 outObject:&v72 outGUID:0 outTimestamp:0 outIsCaption:0 outUserInfoData:0];
        v38 = v72;
        v39 = v38;
        if (v37)
        {
          v40 = [v38 GUID];
          [v33 setGUID:v40];
        }

        if (([v33 isMine] & 1) != 0 || objc_msgSend(v33, "ID") <= v7)
        {
          v49 = 0;
        }

        else
        {
          v41 = *(a1 + 32);
          v42 = *(a1 + 40);
          v70 = 0;
          v71 = 0;
          v43 = [v41 dbQueueAssetCollectionWithGUID:v42 outObject:&v71 outCtag:0 outAlbumGUID:&v70 outBatchDate:0 outPhotoDate:0 outPhotoNumber:0 outUserInfoData:0];
          v44 = v71;
          v45 = v70;
          if (v43)
          {
            v46 = *(a1 + 32);
            v69 = 0;
            v47 = [v46 dbQueueAlbumWithGUID:v45 outObject:&v69 outName:0 outCtag:0 outForeignCtag:0 outURLString:0 outUserInfoData:0 outClientOrgKey:0];
            v48 = v69;
            if (v47)
            {
              v47 = ([v33 isLike] ^ 1) & v66;
            }

            v49 = [v44 isMine] | v47;
          }

          else
          {
            v49 = 0;
          }

          v7 = v62;
        }

        v54 = [MEMORY[0x277CBEB38] MSASDictionaryWithCopyOfDictionary:*(a1 + 64)];
        if (v49)
        {
          v63 = 1;
        }

        else
        {
          v55 = [MEMORY[0x277CCABB0] numberWithBool:1];
          [v54 setObject:v55 forKey:@"notInteresting"];
        }

        [*(a1 + 32) dbQueueSetComment:v33 forAssetCollectionWithGUID:*(a1 + 40) info:v54];
        v66 |= [v33 isMine];

        v24 = v64;
        v21 = v65;
        goto LABEL_42;
      }

      if ([v26 type] == 1)
      {
        v28 = *(a1 + 32);
        v29 = [v26 comment];
        v30 = [v29 ID];
        v31 = *(a1 + 40);
        v68 = 0;
        v32 = [v28 dbQueueCommentWithID:v30 assetCollectionGUID:v31 outObject:0 outGUID:&v68 outTimestamp:0 outIsCaption:0 outUserInfoData:0];
        v33 = v68;

        if (!v32)
        {
          goto LABEL_42;
        }

LABEL_34:
        [*(a1 + 32) dbQueueDeleteCommentWithGUID:v33 info:*(a1 + 64)];
        goto LABEL_42;
      }

      if ([v26 type] != 2)
      {
        goto LABEL_43;
      }

      v50 = *(a1 + 32);
      v51 = [v26 deletionIndex];
      v52 = *(a1 + 40);
      v67 = 0;
      v53 = [v50 dbQueueCommentWithID:v51 assetCollectionGUID:v52 outObject:0 outGUID:&v67 outTimestamp:0 outIsCaption:0 outUserInfoData:0];
      v33 = v67;
      if (v53)
      {
        goto LABEL_34;
      }

LABEL_42:

LABEL_43:
      objc_autoreleasePoolPop(v27);
    }

    v23 = [v21 countByEnumeratingWithState:&v73 objects:v82 count:16];
  }

  while (v23);

  v12 = v60;
  v6 = v61;
  v13 = v58;
  v11 = v59;
  if (v63)
  {
    [*(a1 + 32) dbQueueSetUnviewedState:1 onAssetCollectionWithGUID:*(a1 + 40) info:*(a1 + 64)];
    if (v57)
    {
      [*(a1 + 32) dbQueueSetUnviewedState:1 onAlbumWithGUID:*(a1 + 48) info:*(a1 + 64)];
    }
  }

LABEL_49:
  [*(a1 + 32) endTransaction];

  v56 = *MEMORY[0x277D85DE8];
}

uint64_t __109__MSASServerSideModel_MSASStateMachine_didFindCommentChanges_inAssetCollectionWithGUID_inAlbumWithGUID_info___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 comment];
  v7 = [v6 ID];
  v8 = [v5 comment];
  v9 = [v8 ID];

  if (v7 >= v9)
  {
    v11 = [v4 comment];
    v12 = [v11 ID];
    v13 = [v5 comment];
    v10 = v12 > [v13 ID];
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

- (void)MSASStateMachine:(id)machine didFinishRetrievingAsset:(id)asset inAlbum:(id)album error:(id)error
{
  assetCopy = asset;
  albumCopy = album;
  errorCopy = error;
  dbQueue = [(MSASModelBase *)self dbQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __79__MSASServerSideModel_MSASStateMachine_didFinishRetrievingAsset_inAlbum_error___block_invoke;
  v16[3] = &unk_278E92660;
  v16[4] = self;
  v17 = albumCopy;
  v18 = assetCopy;
  v19 = errorCopy;
  v13 = errorCopy;
  v14 = assetCopy;
  v15 = albumCopy;
  dispatch_async(dbQueue, v16);
}

void __79__MSASServerSideModel_MSASStateMachine_didFinishRetrievingAsset_inAlbum_error___block_invoke(id *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = [a1[5] GUID];
  LODWORD(v2) = [v2 dbQueueAlbumWithGUID:v3 outObject:0 outName:0 outCtag:0 outForeignCtag:0 outURLString:0 outUserInfoData:0 outClientOrgKey:0];

  if (v2)
  {
    v4 = [a1[4] eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__MSASServerSideModel_MSASStateMachine_didFinishRetrievingAsset_inAlbum_error___block_invoke_2;
    block[3] = &unk_278E92660;
    v5 = &v21;
    v6 = a1[6];
    v17 = *(a1 + 2);
    v7 = v17.i64[1];
    v8 = a1[7];
    v9.i64[0] = v6;
    v9.i64[1] = v8;
    v10 = vzip2q_s64(v17, v9);
    v9.i64[1] = v17.i64[0];
    v21 = v9;
    v22 = v10;
    dispatch_async(v4, block);

LABEL_3:
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v14 = a1[4];
    v15 = [a1[6] GUID];
    v16 = [a1[5] GUID];
    *buf = 138543874;
    v24 = v14;
    v25 = 2114;
    v26 = v15;
    v27 = 2114;
    v28 = v16;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Downloaded asset GUID %{public}@ for an album GUID %{public}@ that no lenger exists. Ignoring.", buf, 0x20u);
  }

  if (!a1[7])
  {
    v12 = [a1[6] path];

    if (v12)
    {
      v13 = [a1[4] eventQueue];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __79__MSASServerSideModel_MSASStateMachine_didFinishRetrievingAsset_inAlbum_error___block_invoke_579;
      v18[3] = &unk_278E926D8;
      v5 = &v19;
      v19 = a1[6];
      dispatch_async(v13, v18);

      goto LABEL_3;
    }
  }

LABEL_7:
  v11 = *MEMORY[0x277D85DE8];
}

void __79__MSASServerSideModel_MSASStateMachine_didFinishRetrievingAsset_inAlbum_error___block_invoke_2(id *a1)
{
  v2 = [a1[4] path];
  v3 = [v2 copy];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __79__MSASServerSideModel_MSASStateMachine_didFinishRetrievingAsset_inAlbum_error___block_invoke_3;
  v12[3] = &unk_278E925D8;
  *v9 = *(a1 + 2);
  v4 = v9[0];
  v5 = a1[6];
  v6 = a1[7];
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v13 = vextq_s8(*v9, *v9, 8uLL);
  v14 = v7;
  [v9[1] eventQueuePerformBlockOnObservers:v12];
  if (!a1[7] && v3)
  {
    v8 = [a1[5] eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__MSASServerSideModel_MSASStateMachine_didFinishRetrievingAsset_inAlbum_error___block_invoke_4;
    block[3] = &unk_278E926D8;
    v11 = v3;
    dispatch_async(v8, block);
  }
}

void __79__MSASServerSideModel_MSASStateMachine_didFinishRetrievingAsset_inAlbum_error___block_invoke_579(uint64_t a1)
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v2 = [*(a1 + 32) path];
  [v3 removeItemAtPath:v2 error:0];
}

void __79__MSASServerSideModel_MSASStateMachine_didFinishRetrievingAsset_inAlbum_error___block_invoke_3(uint64_t *a1, void *a2)
{
  v7 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    if (a1[7])
    {
      v6 = [a1[4] _protocolErrorForUnderlyingError:?];
      [v7 MSASModel:v3 didFinishRetrievingAsset:v4 inAlbum:v5 error:v6];
    }

    else
    {
      [v7 MSASModel:a1[4] didFinishRetrievingAsset:a1[5] inAlbum:a1[6] error:0];
    }
  }
}

void __79__MSASServerSideModel_MSASStateMachine_didFinishRetrievingAsset_inAlbum_error___block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  [v2 removeItemAtPath:*(a1 + 32) error:0];
}

- (void)MSASStateMachine:(id)machine didFinishEnqueueingAssetsForDownload:(id)download inAlbumWithGUID:(id)d
{
  downloadCopy = download;
  dCopy = d;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __93__MSASServerSideModel_MSASStateMachine_didFinishEnqueueingAssetsForDownload_inAlbumWithGUID___block_invoke;
  v11[3] = &unk_278E925A8;
  v11[4] = self;
  v12 = downloadCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = downloadCopy;
  [(MSASServerSideModel *)self eventQueuePerformBlockOnObservers:v11];
}

void __93__MSASServerSideModel_MSASStateMachine_didFinishEnqueueingAssetsForDownload_inAlbumWithGUID___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFinishEnqueueingAssetsForDownload:a1[5] inAlbumWithGUID:a1[6]];
  }
}

- (void)MSASStateMachine:(id)machine didFinishUnsubscribingFromAlbum:(id)album info:(id)info error:(id)error
{
  albumCopy = album;
  infoCopy = info;
  errorCopy = error;
  dbQueue = [(MSASModelBase *)self dbQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __83__MSASServerSideModel_MSASStateMachine_didFinishUnsubscribingFromAlbum_info_error___block_invoke;
  v16[3] = &unk_278E92660;
  v17 = errorCopy;
  v18 = albumCopy;
  selfCopy = self;
  v20 = infoCopy;
  v13 = infoCopy;
  v14 = albumCopy;
  v15 = errorCopy;
  dispatch_async(dbQueue, v16);
}

void __83__MSASServerSideModel_MSASStateMachine_didFinishUnsubscribingFromAlbum_info_error___block_invoke(id *a1)
{
  v40 = *MEMORY[0x277D85DE8];
  if (a1[4])
  {
    v2 = [a1[6] eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__MSASServerSideModel_MSASStateMachine_didFinishUnsubscribingFromAlbum_info_error___block_invoke_6;
    block[3] = &unk_278E92660;
    v19 = *(a1 + 5);
    v3 = v19.i64[0];
    v22 = vextq_s8(v19, v19, 8uLL);
    v23 = a1[7];
    v24 = a1[4];
    dispatch_async(v2, block);

    if (([a1[4] MSASStateMachineIsCanceledError] & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v16 = a1[6];
        v17 = [a1[5] GUID];
        v18 = [a1[4] MSVerboseDescription];
        *buf = 138543874;
        v35 = v16;
        v36 = 2114;
        v37 = v17;
        v38 = 2114;
        v39 = v18;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to unsubscribe from album GUID %{public}@. Error: %{public}@. Reset-syncing albums.", buf, 0x20u);
      }

      [a1[6] refreshResetSync:1 info:{a1[7], *&v19}];
    }

    v4 = v22.i64[1];
    goto LABEL_12;
  }

  v5 = [a1[5] context];
  v6 = [v5 objectForKey:@"subscriptionMethod"];
  v7 = [v6 intValue];

  v8 = a1[6];
  if (v7 != 1)
  {
    v13 = [a1[6] eventQueue];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __83__MSASServerSideModel_MSASStateMachine_didFinishUnsubscribingFromAlbum_info_error___block_invoke_4;
    v25[3] = &unk_278E92660;
    v20 = *(a1 + 5);
    v14 = v20.i64[0];
    v26 = vextq_s8(v20, v20, 8uLL);
    v27 = a1[7];
    v28 = a1[4];
    dispatch_async(v13, v25);

    v4 = v26.i64[1];
LABEL_12:

    goto LABEL_13;
  }

  v9 = [a1[5] GUID];
  v33 = 0;
  v10 = [v8 dbQueueInvitationWithAlbumGUID:v9 outObject:&v33 outInvitationGUID:0 outEmail:0 outUserInfoData:0];
  v11 = v33;

  if (v10)
  {
    v12 = [a1[6] eventQueue];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __83__MSASServerSideModel_MSASStateMachine_didFinishUnsubscribingFromAlbum_info_error___block_invoke_2;
    v29[3] = &unk_278E92660;
    v29[4] = a1[6];
    v30 = v11;
    v31 = a1[7];
    v32 = a1[4];
    dispatch_async(v12, v29);
  }

LABEL_13:
  v15 = *MEMORY[0x277D85DE8];
}

void __83__MSASServerSideModel_MSASStateMachine_didFinishUnsubscribingFromAlbum_info_error___block_invoke_2(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__MSASServerSideModel_MSASStateMachine_didFinishUnsubscribingFromAlbum_info_error___block_invoke_3;
  v7[3] = &unk_278E925D8;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [v6 eventQueuePerformBlockOnObservers:v7];
}

void __83__MSASServerSideModel_MSASStateMachine_didFinishUnsubscribingFromAlbum_info_error___block_invoke_4(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__MSASServerSideModel_MSASStateMachine_didFinishUnsubscribingFromAlbum_info_error___block_invoke_5;
  v7[3] = &unk_278E925D8;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [v6 eventQueuePerformBlockOnObservers:v7];
}

void __83__MSASServerSideModel_MSASStateMachine_didFinishUnsubscribingFromAlbum_info_error___block_invoke_6(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__MSASServerSideModel_MSASStateMachine_didFinishUnsubscribingFromAlbum_info_error___block_invoke_7;
  v7[3] = &unk_278E925D8;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [v6 eventQueuePerformBlockOnObservers:v7];
}

void __83__MSASServerSideModel_MSASStateMachine_didFinishUnsubscribingFromAlbum_info_error___block_invoke_7(void *a1, void *a2)
{
  v10 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = [v3 _protocolErrorForUnderlyingError:a1[7]];
    [v10 MSASModel:v3 didFinishUnsubscribingFromAlbum:v4 info:v5 error:v6];
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = a1[4];
    v8 = a1[5];
    v9 = [v7 _protocolErrorForUnderlyingError:a1[7]];
    [v10 MSASModel:v7 didFinishUnsubscribingFromAlbum:v8 error:v9];
  }
}

void __83__MSASServerSideModel_MSASStateMachine_didFinishUnsubscribingFromAlbum_info_error___block_invoke_5(void *a1, void *a2)
{
  v10 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = [v3 _protocolErrorForUnderlyingError:a1[7]];
    [v10 MSASModel:v3 didFinishUnsubscribingFromAlbum:v4 info:v5 error:v6];
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = a1[4];
    v8 = a1[5];
    v9 = [v7 _protocolErrorForUnderlyingError:a1[7]];
    [v10 MSASModel:v7 didFinishUnsubscribingFromAlbum:v8 error:v9];
  }
}

void __83__MSASServerSideModel_MSASStateMachine_didFinishUnsubscribingFromAlbum_info_error___block_invoke_3(void *a1, void *a2)
{
  v10 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = [v3 _protocolErrorForUnderlyingError:a1[7]];
    [v10 MSASModel:v3 didFinishRejectingInvitation:v4 info:v5 error:v6];
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = a1[4];
    v8 = a1[5];
    v9 = [v7 _protocolErrorForUnderlyingError:a1[7]];
    [v10 MSASModel:v7 didFinishRejectingInvitation:v8 error:v9];
  }
}

- (void)MSASStateMachine:(id)machine didFinishSubscribingToAlbum:(id)album info:(id)info error:(id)error
{
  albumCopy = album;
  infoCopy = info;
  errorCopy = error;
  dbQueue = [(MSASModelBase *)self dbQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __79__MSASServerSideModel_MSASStateMachine_didFinishSubscribingToAlbum_info_error___block_invoke;
  v16[3] = &unk_278E92660;
  v17 = errorCopy;
  v18 = albumCopy;
  selfCopy = self;
  v20 = infoCopy;
  v13 = infoCopy;
  v14 = albumCopy;
  v15 = errorCopy;
  dispatch_async(dbQueue, v16);
}

void __79__MSASServerSideModel_MSASStateMachine_didFinishSubscribingToAlbum_info_error___block_invoke(id *a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  if (v2)
  {
    if ([v2 MSContainsErrorWithDomain:@"MSASProtocolErrorDomain" code:15])
    {
      v3 = [a1[6] daemon];
      v4 = a1[4];
      v5 = [a1[6] personID];
      [v3 didReceiveTooManySubscriptionsError:v4 personID:v5];
    }

    v6 = [a1[6] eventQueue];
    block = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __79__MSASServerSideModel_MSASStateMachine_didFinishSubscribingToAlbum_info_error___block_invoke_6;
    v28 = &unk_278E92660;
    v23 = *(a1 + 5);
    v7 = v23.i64[0];
    v29 = vextq_s8(v23, v23, 8uLL);
    v30 = a1[7];
    v31 = a1[4];
    dispatch_async(v6, &block);

    if (([a1[4] MSASStateMachineIsCanceledError] & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v20 = a1[6];
        v21 = [a1[5] GUID];
        v22 = [a1[4] MSVerboseDescription];
        *buf = 138543874;
        v43 = v20;
        v44 = 2114;
        v45 = v21;
        v46 = 2114;
        v47 = v22;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to subscribe from album GUID %{public}@. Error: %{public}@. Reset-syncing albums.", buf, 0x20u);
      }

      [a1[6] refreshResetSync:1 info:{a1[7], *&v23, block, v26, v27, v28, v29.i64[0]}];
    }

    v8 = v29.i64[1];
    goto LABEL_14;
  }

  v9 = [a1[5] context];
  v10 = [v9 objectForKey:@"subscriptionMethod"];
  v11 = [v10 intValue];

  v12 = a1[6];
  if (v11 != 1)
  {
    v17 = [a1[6] eventQueue];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __79__MSASServerSideModel_MSASStateMachine_didFinishSubscribingToAlbum_info_error___block_invoke_4;
    v32[3] = &unk_278E92660;
    v24 = *(a1 + 5);
    v18 = v24.i64[0];
    v33 = vextq_s8(v24, v24, 8uLL);
    v34 = a1[7];
    v35 = a1[4];
    dispatch_async(v17, v32);

    v8 = v33.i64[1];
LABEL_14:

    goto LABEL_15;
  }

  v13 = [a1[5] GUID];
  v41 = 0;
  v14 = [v12 dbQueueInvitationWithAlbumGUID:v13 outObject:&v41 outInvitationGUID:0 outEmail:0 outUserInfoData:0];
  v15 = v41;

  if (v14)
  {
    v16 = [a1[6] eventQueue];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __79__MSASServerSideModel_MSASStateMachine_didFinishSubscribingToAlbum_info_error___block_invoke_2;
    v36[3] = &unk_278E92688;
    v36[4] = a1[6];
    v37 = v15;
    v38 = a1[5];
    v39 = a1[7];
    v40 = a1[4];
    dispatch_async(v16, v36);
  }

LABEL_15:
  v19 = *MEMORY[0x277D85DE8];
}

void __79__MSASServerSideModel_MSASStateMachine_didFinishSubscribingToAlbum_info_error___block_invoke_2(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__MSASServerSideModel_MSASStateMachine_didFinishSubscribingToAlbum_info_error___block_invoke_3;
  v7[3] = &unk_278E92610;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  v10 = *(a1 + 64);
  [v6 eventQueuePerformBlockOnObservers:v7];
}

void __79__MSASServerSideModel_MSASStateMachine_didFinishSubscribingToAlbum_info_error___block_invoke_4(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__MSASServerSideModel_MSASStateMachine_didFinishSubscribingToAlbum_info_error___block_invoke_5;
  v7[3] = &unk_278E925D8;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [v6 eventQueuePerformBlockOnObservers:v7];
}

void __79__MSASServerSideModel_MSASStateMachine_didFinishSubscribingToAlbum_info_error___block_invoke_6(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__MSASServerSideModel_MSASStateMachine_didFinishSubscribingToAlbum_info_error___block_invoke_7;
  v7[3] = &unk_278E925D8;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [v6 eventQueuePerformBlockOnObservers:v7];
}

void __79__MSASServerSideModel_MSASStateMachine_didFinishSubscribingToAlbum_info_error___block_invoke_7(void *a1, void *a2)
{
  v10 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = [v3 _protocolErrorForUnderlyingError:a1[7]];
    [v10 MSASModel:v3 didFinishSubscribingToAlbum:v4 info:v5 error:v6];
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = a1[4];
    v8 = a1[5];
    v9 = [v7 _protocolErrorForUnderlyingError:a1[7]];
    [v10 MSASModel:v7 didFinishSubscribingToAlbum:v8 error:v9];
  }
}

void __79__MSASServerSideModel_MSASStateMachine_didFinishSubscribingToAlbum_info_error___block_invoke_5(void *a1, void *a2)
{
  v10 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = [v3 _protocolErrorForUnderlyingError:a1[7]];
    [v10 MSASModel:v3 didFinishSubscribingToAlbum:v4 info:v5 error:v6];
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = a1[4];
    v8 = a1[5];
    v9 = [v7 _protocolErrorForUnderlyingError:a1[7]];
    [v10 MSASModel:v7 didFinishSubscribingToAlbum:v8 error:v9];
  }
}

void __79__MSASServerSideModel_MSASStateMachine_didFinishSubscribingToAlbum_info_error___block_invoke_3(void *a1, void *a2)
{
  v12 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];
    v7 = [v3 _protocolErrorForUnderlyingError:a1[8]];
    [v12 MSASModel:v3 didFinishAcceptingInvitation:v4 forAlbum:v5 info:v6 error:v7];
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = a1[4];
    v9 = a1[5];
    v10 = a1[6];
    v11 = [v8 _protocolErrorForUnderlyingError:a1[8]];
    [v12 MSASModel:v8 didFinishAcceptingInvitation:v9 forAlbum:v10 error:v11];
  }
}

- (void)MSASStateMachine:(id)machine didFinishUpdatingAssetCollections:(id)collections inAlbum:(id)album info:(id)info error:(id)error
{
  machineCopy = machine;
  collectionsCopy = collections;
  albumCopy = album;
  infoCopy = info;
  errorCopy = error;
  dbQueue = [(MSASModelBase *)self dbQueue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __93__MSASServerSideModel_MSASStateMachine_didFinishUpdatingAssetCollections_inAlbum_info_error___block_invoke;
  v23[3] = &unk_278E92048;
  v24 = errorCopy;
  v25 = collectionsCopy;
  v26 = infoCopy;
  v27 = albumCopy;
  selfCopy = self;
  v29 = machineCopy;
  v18 = machineCopy;
  v19 = albumCopy;
  v20 = infoCopy;
  v21 = collectionsCopy;
  v22 = errorCopy;
  dispatch_sync(dbQueue, v23);
}

void __93__MSASServerSideModel_MSASStateMachine_didFinishUpdatingAssetCollections_inAlbum_info_error___block_invoke(uint64_t a1)
{
  v61 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32))
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = *(a1 + 40);
    v2 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
    if (!v2)
    {
      goto LABEL_28;
    }

    v3 = v2;
    v4 = *v55;
    v42 = *v55;
    while (1)
    {
      v5 = 0;
      v43 = v3;
      do
      {
        if (*v55 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v54 + 1) + 8 * v5);
        v7 = objc_autoreleasePoolPush();
        v8 = [*(a1 + 48) mutableCopy];
        v9 = [*(a1 + 56) GUID];
        [v6 setAlbumGUID:v9];

        if (([v6 isMine] & 1) == 0)
        {
          v10 = *(a1 + 64);
          v11 = [*(a1 + 56) GUID];
          v52 = 0;
          v53 = 0;
          v12 = [v10 dbQueueAlbumWithGUID:v11 outObject:0 outName:0 outCtag:&v53 outForeignCtag:&v52 outURLString:0 outUserInfoData:0 outClientOrgKey:0];
          v13 = v53;
          v14 = v52;

          if (v12)
          {
            v15 = *(a1 + 64);
            v16 = [*(a1 + 56) GUID];
            v51 = 0;
            v17 = [v15 dbQueueAlbumMetadataWithAlbumGUID:v16 key:@"lastviewedctag" outValue:&v51];
            v18 = v51;

            if (v17 && (![*(a1 + 56) useForeignCtag] ? (v19 = v13) : (v19 = v14), v18 && v19))
            {
              v20 = [v18 isEqualToString:?];

              if (v20)
              {
LABEL_22:
                v23 = [MEMORY[0x277CCABB0] numberWithBool:1];
                [v8 setObject:v23 forKey:@"notInteresting"];
                goto LABEL_23;
              }
            }

            else
            {
            }
          }

          v21 = *(a1 + 64);
          v22 = [*(a1 + 56) GUID];
          v50 = 0;
          LODWORD(v21) = [v21 dbQueueAlbumMetadataWithAlbumGUID:v22 key:@"lastassetposition" outValue:&v50];
          v23 = v50;

          if (!v21 || (v24 = [v23 longLongValue], v24 >= objc_msgSend(v6, "photoNumber")))
          {

            goto LABEL_22;
          }

          v25 = *(a1 + 64);
          v26 = [*(a1 + 56) GUID];
          [v25 dbQueueSetUnviewedState:1 onAlbumWithGUID:v26 info:*(a1 + 48)];

LABEL_23:
          v4 = v42;
          v3 = v43;
        }

        v27 = *(a1 + 64);
        v28 = [*(a1 + 56) GUID];
        [v27 dbQueueSetAssetCollection:v6 inAlbumWithGUID:v28 info:v8];

        v29 = [*(a1 + 64) pendingChanges];
        v30 = [*(a1 + 56) GUID];
        [v29 removePendingAssetCollection:v6 forAlbumGUID:v30];

        if ([v6 hasComments])
        {
          v31 = objc_alloc_init(MSASCommentCheckOperation);
          v32 = [v6 GUID];
          [(MSASCommentCheckOperation *)v31 setAssetCollectionGUID:v32];

          v33 = [*(a1 + 56) GUID];
          [(MSASCommentCheckOperation *)v31 setAlbumGUID:v33];

          [*(a1 + 64) dbQueueAddCommentCheckOperation:v31];
        }

        objc_autoreleasePoolPop(v7);
        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v54 objects:v60 count:16];
      if (!v3)
      {
LABEL_28:

        v34 = *(a1 + 64);
        v35 = [*(a1 + 56) GUID];
        LODWORD(v34) = [v34 dbQueueUnviewedAssetCollectionCountForAlbumWithGUID:v35];

        v36 = [*(a1 + 64) eventQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __93__MSASServerSideModel_MSASStateMachine_didFinishUpdatingAssetCollections_inAlbum_info_error___block_invoke_2;
        block[3] = &unk_278E91D70;
        *obja = *(a1 + 56);
        v37 = obja[0];
        v47 = vextq_s8(*obja, *obja, 8uLL);
        v49 = v34;
        v48 = *(a1 + 48);
        dispatch_async(v36, block);

        break;
      }
    }
  }

  v38 = [*(a1 + 64) pendingChanges];
  v39 = [v38 hasPendingChanges];

  if ((v39 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v41 = *(a1 + 64);
      *buf = 138543362;
      v59 = v41;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Finished checking asset collections", buf, 0xCu);
    }

    [*(a1 + 64) MSASStateMachine:*(a1 + 72) didFinishCheckingForChangesInfo:*(a1 + 48) error:*(a1 + 32)];
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (void)MSASStateMachine:(id)machine didFireScheduledEvent:(id)event forAssetCollectionGUID:(id)d albumGUID:(id)iD info:(id)info
{
  eventCopy = event;
  dCopy = d;
  iDCopy = iD;
  infoCopy = info;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [eventCopy isEqualToString:@"preFlushPendingCommentQueue"])
  {
    dbQueue = [(MSASModelBase *)self dbQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __100__MSASServerSideModel_MSASStateMachine_didFireScheduledEvent_forAssetCollectionGUID_albumGUID_info___block_invoke;
    v16[3] = &unk_278E92660;
    v16[4] = self;
    v17 = dCopy;
    v18 = iDCopy;
    v19 = infoCopy;
    dispatch_async(dbQueue, v16);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [eventCopy isEqualToString:@"flushPendingCommentQueue"])
    {
      [(MSASServerSideModel *)self flushAllPendingCommentCheckOperations];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [eventCopy isEqualToString:@"reconstruct"])
      {
        [(MSASServerSideModel *)self _reconstruct];
      }
    }
  }
}

void __100__MSASServerSideModel_MSASStateMachine_didFireScheduledEvent_forAssetCollectionGUID_albumGUID_info___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMachine];
  [v2 scheduleEvent:@"flushPendingCommentQueue" assetCollectionGUID:*(a1 + 40) albumGUID:*(a1 + 48) info:*(a1 + 56)];
}

- (void)MSASStateMachine:(id)machine didFinishCheckingForUpdatesInAlbums:(id)albums info:(id)info
{
  infoCopy = info;
  dbQueue = [(MSASModelBase *)self dbQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__MSASServerSideModel_MSASStateMachine_didFinishCheckingForUpdatesInAlbums_info___block_invoke;
  v9[3] = &unk_278E927C8;
  v9[4] = self;
  v10 = infoCopy;
  v8 = infoCopy;
  dispatch_async(dbQueue, v9);
}

void __81__MSASServerSideModel_MSASStateMachine_didFinishCheckingForUpdatesInAlbums_info___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMachine];
  [v2 scheduleEvent:@"preFlushPendingCommentQueue" assetCollectionGUID:0 albumGUID:0 info:*(a1 + 40)];
}

- (void)MSASStateMachine:(id)machine didFinishCheckingForUpdatesInAlbum:(id)album info:(id)info error:(id)error
{
  machineCopy = machine;
  albumCopy = album;
  infoCopy = info;
  errorCopy = error;
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__MSASServerSideModel_MSASStateMachine_didFinishCheckingForUpdatesInAlbum_info_error___block_invoke;
  block[3] = &unk_278E92688;
  v20 = errorCopy;
  selfCopy = self;
  v22 = albumCopy;
  v23 = infoCopy;
  v24 = machineCopy;
  v15 = machineCopy;
  v16 = infoCopy;
  v17 = albumCopy;
  v18 = errorCopy;
  dispatch_async(dbQueue, block);
}

void __86__MSASServerSideModel_MSASStateMachine_didFinishCheckingForUpdatesInAlbum_info_error___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32))
  {
    [*(a1 + 40) dbQueueUpdateAlbumCtag:*(a1 + 48)];
    v2 = *(a1 + 40);
    v3 = [*(a1 + 48) GUID];
    [v2 dbQueueCheckToClearUnviewedStateOnAlbumWithGUID:v3 info:*(a1 + 56)];
  }

  v4 = [*(a1 + 40) pendingChanges];
  v5 = [*(a1 + 48) GUID];
  [v4 removePendingChangesForAlbumGUID:v5];

  v6 = [*(a1 + 40) pendingChanges];
  LOBYTE(v5) = [v6 hasPendingChanges];

  if ((v5 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 40);
      v9 = 138543362;
      v10 = v8;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Finished checking album updates", &v9, 0xCu);
    }

    [*(a1 + 40) MSASStateMachine:*(a1 + 64) didFinishCheckingForChangesInfo:*(a1 + 56) error:*(a1 + 32)];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)MSASStateMachine:(id)machine didFindChangesInAlbum:(id)album info:(id)info error:(id)error
{
  albumCopy = album;
  infoCopy = info;
  errorCopy = error;
  dbQueue = [(MSASModelBase *)self dbQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __73__MSASServerSideModel_MSASStateMachine_didFindChangesInAlbum_info_error___block_invoke;
  v16[3] = &unk_278E92660;
  v17 = errorCopy;
  selfCopy = self;
  v19 = albumCopy;
  v20 = infoCopy;
  v13 = infoCopy;
  v14 = albumCopy;
  v15 = errorCopy;
  dispatch_async(dbQueue, v16);
}

uint64_t __73__MSASServerSideModel_MSASStateMachine_didFindChangesInAlbum_info_error___block_invoke(uint64_t result)
{
  if (!*(result + 32))
  {
    return [*(result + 40) dbQueueSetAlbum:*(result + 48) info:*(result + 56)];
  }

  return result;
}

- (void)MSASStateMachine:(id)machine didFindAssetCollectionChanges:(id)changes forAlbum:(id)album info:(id)info
{
  changesCopy = changes;
  albumCopy = album;
  infoCopy = info;
  dbQueue = [(MSASModelBase *)self dbQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __84__MSASServerSideModel_MSASStateMachine_didFindAssetCollectionChanges_forAlbum_info___block_invoke;
  v16[3] = &unk_278E92660;
  v17 = infoCopy;
  v18 = albumCopy;
  selfCopy = self;
  v20 = changesCopy;
  v13 = changesCopy;
  v14 = albumCopy;
  v15 = infoCopy;
  dispatch_sync(dbQueue, v16);
}

void __84__MSASServerSideModel_MSASStateMachine_didFindAssetCollectionChanges_forAlbum_info___block_invoke(id *a1)
{
  v87 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] MSASAlbumResetSyncAlbumGUID];
  v3 = [a1[5] GUID];
  v4 = [v2 isEqualToString:v3];

  LODWORD(v55) = v4;
  if (v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[6];
    v6 = [a1[5] GUID];
    *buf = 138543618;
    v84 = v5;
    v85 = 2114;
    v86 = v6;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Reconciling contents of album GUID %{public}@ due to a reset sync.", buf, 0x16u);
  }

  [a1[6] beginTransaction];
  v58 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a1[7], "count")}];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v7 = a1[7];
  v8 = [v7 countByEnumeratingWithState:&v75 objects:v82 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v76;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v76 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v75 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = [v12 wasDeleted];
        v15 = a1[6];
        v16 = [v12 GUID];
        if (v14)
        {
          [v15 dbQueueDeleteAssetCollectionWithGUID:v16 info:a1[4]];
        }

        else
        {
          v17 = [v15 dbQueueLookupOrCreateAssetCollectionWithGUID:v16 outAlbum:0];

          v18 = [v17 ctag];
          v19 = [v12 ctag];
          v20 = [v18 isEqualToString:v19];

          if ((v20 & 1) == 0)
          {
            [v58 addObject:v17];
          }

          v16 = v17;
        }

        objc_autoreleasePoolPop(v13);
      }

      v9 = [v7 countByEnumeratingWithState:&v75 objects:v82 count:16];
    }

    while (v9);
  }

  if (v56)
  {
    v21 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(a1[7], "count")}];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v22 = a1[7];
    v23 = [v22 countByEnumeratingWithState:&v71 objects:v81 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v72;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v72 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [*(*(&v71 + 1) + 8 * j) GUID];
          [v21 addObject:v27];
        }

        v24 = [v22 countByEnumeratingWithState:&v71 objects:v81 count:16];
      }

      while (v24);
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v28 = a1[6];
    v29 = [a1[5] GUID];
    v30 = [v28 dbQueueAssetCollectionGUIDsInAlbumWithGUID:v29];

    v31 = [v30 countByEnumeratingWithState:&v67 objects:v80 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v68;
      do
      {
        for (k = 0; k != v32; ++k)
        {
          if (*v68 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v67 + 1) + 8 * k);
          v36 = objc_autoreleasePoolPush();
          if (([v21 containsObject:v35] & 1) == 0)
          {
            [a1[6] dbQueueDeleteAssetCollectionWithGUID:v35 info:a1[4]];
          }

          objc_autoreleasePoolPop(v36);
        }

        v32 = [v30 countByEnumeratingWithState:&v67 objects:v80 count:16];
      }

      while (v32);
    }
  }

  if ([v58 count])
  {
    v37 = [a1[6] pendingChanges];
    v38 = [a1[5] GUID];
    [v37 addPendingAssetCollectionChanges:v58 forAlbumGUID:v38];

    v39 = [MEMORY[0x277CBEB18] arrayWithCapacity:50];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v40 = v58;
    v41 = [v40 countByEnumeratingWithState:&v63 objects:v79 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v64;
      do
      {
        for (m = 0; m != v42; ++m)
        {
          if (*v64 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = *(*(&v63 + 1) + 8 * m);
          v46 = objc_autoreleasePoolPush();
          [v39 addObject:v45];
          if ([v39 count] >= 0x32)
          {
            v47 = [a1[6] stateMachine];
            [v47 checkForAssetCollectionUpdates:v39 inAlbum:a1[5] info:a1[4]];

            v48 = [MEMORY[0x277CBEB18] arrayWithCapacity:50];

            v39 = v48;
          }

          objc_autoreleasePoolPop(v46);
        }

        v42 = [v40 countByEnumeratingWithState:&v63 objects:v79 count:16];
      }

      while (v42);
    }

    if ([v39 count])
    {
      v49 = [a1[6] stateMachine];
      [v49 checkForAssetCollectionUpdates:v39 inAlbum:a1[5] info:a1[4]];
    }
  }

  [a1[6] endTransaction];
  v50 = a1[6];
  v51 = [a1[5] GUID];
  LODWORD(v50) = [v50 dbQueueUnviewedAssetCollectionCountForAlbumWithGUID:v51];

  v52 = [a1[6] eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__MSASServerSideModel_MSASStateMachine_didFindAssetCollectionChanges_forAlbum_info___block_invoke_565;
  block[3] = &unk_278E91D70;
  v57 = *(a1 + 5);
  v53 = v57.i64[0];
  v60 = vextq_s8(v57, v57, 8uLL);
  v62 = v50;
  v61 = a1[4];
  dispatch_async(v52, block);

  v54 = *MEMORY[0x277D85DE8];
}

- (void)MSASStateMachine:(id)machine didFinishGettingAccessControls:(id)controls forAlbum:(id)album info:(id)info error:(id)error
{
  machineCopy = machine;
  controlsCopy = controls;
  albumCopy = album;
  infoCopy = info;
  errorCopy = error;
  dbQueue = [(MSASModelBase *)self dbQueue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __91__MSASServerSideModel_MSASStateMachine_didFinishGettingAccessControls_forAlbum_info_error___block_invoke;
  v23[3] = &unk_278E92048;
  v24 = errorCopy;
  v25 = controlsCopy;
  selfCopy = self;
  v27 = infoCopy;
  v28 = albumCopy;
  v29 = machineCopy;
  v18 = machineCopy;
  v19 = albumCopy;
  v20 = infoCopy;
  v21 = controlsCopy;
  v22 = errorCopy;
  dispatch_async(dbQueue, v23);
}

void __91__MSASServerSideModel_MSASStateMachine_didFinishGettingAccessControls_forAlbum_info_error___block_invoke(uint64_t a1)
{
  v59 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32))
  {
    v2 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
    [*(a1 + 48) dbQueueBeginTransaction];
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v3 = *(a1 + 40);
    v4 = [v3 countByEnumeratingWithState:&v50 objects:v58 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v51;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v51 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v50 + 1) + 8 * i);
          v9 = objc_autoreleasePoolPush();
          v10 = [v8 GUID];

          if (!v10)
          {
            v11 = MEMORY[0x277CCACA8];
            v12 = [MEMORY[0x277CCACA8] MSMakeUUID];
            v13 = [v11 stringWithFormat:@"%@%@", @"P-", v12];
            [v8 setGUID:v13];
          }

          v14 = [v8 GUID];

          if (v14)
          {
            [*(a1 + 48) dbQueueSetAccessControl:v8 info:*(a1 + 56)];
            v15 = [v8 GUID];
            [v2 addObject:v15];
          }

          objc_autoreleasePoolPop(v9);
        }

        v5 = [v3 countByEnumeratingWithState:&v50 objects:v58 count:16];
      }

      while (v5);
    }

    [*(a1 + 48) dbQueueEndTransaction];
    v41 = [MEMORY[0x277CBEB58] set];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v16 = *(a1 + 48);
    v17 = [*(a1 + 64) GUID];
    v18 = [v16 dbQueueAccessControlsForAlbumWithGUID:v17];

    v19 = [v18 countByEnumeratingWithState:&v46 objects:v57 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v47;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v47 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v46 + 1) + 8 * j);
          v24 = [v23 GUID];
          if (v24)
          {
            v25 = v24;
            v26 = [v23 GUID];
            v27 = [v2 containsObject:v26];

            if ((v27 & 1) == 0)
            {
              v28 = [v23 GUID];
              [v41 addObject:v28];
            }
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v46 objects:v57 count:16];
      }

      while (v20);
    }

    [*(a1 + 48) dbQueueBeginTransaction];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v29 = v41;
    v30 = [v29 countByEnumeratingWithState:&v42 objects:v56 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v43;
      do
      {
        for (k = 0; k != v31; ++k)
        {
          if (*v43 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v42 + 1) + 8 * k);
          v35 = objc_autoreleasePoolPush();
          [*(a1 + 48) dbQueueDeleteAccessControlWithGUID:v34 info:*(a1 + 56)];
          objc_autoreleasePoolPop(v35);
        }

        v31 = [v29 countByEnumeratingWithState:&v42 objects:v56 count:16];
      }

      while (v31);
    }

    [*(a1 + 48) dbQueueEndTransaction];
  }

  v36 = [*(a1 + 48) pendingChanges];
  v37 = [*(a1 + 64) GUID];
  [v36 removePendingSharingInfoChangesForAlbumGUID:v37];

  v38 = [*(a1 + 48) pendingChanges];
  LOBYTE(v37) = [v38 hasPendingChanges];

  if ((v37 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v40 = *(a1 + 48);
      *buf = 138543362;
      v55 = v40;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Finished checking album access controls", buf, 0xCu);
    }

    [*(a1 + 48) MSASStateMachine:*(a1 + 72) didFinishCheckingForChangesInfo:*(a1 + 56) error:*(a1 + 32)];
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)MSASStateMachine:(id)machine didFinishCheckingForChangesInfo:(id)info error:(id)error
{
  v25 = *MEMORY[0x277D85DE8];
  machineCopy = machine;
  infoCopy = info;
  errorCopy = error;
  pendingChanges = [(MSASServerSideModel *)self pendingChanges];
  hasPendingChanges = [pendingChanges hasPendingChanges];

  if (hasPendingChanges)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      pendingChanges2 = [(MSASServerSideModel *)self pendingChanges];
      *buf = 138543618;
      selfCopy2 = self;
      v23 = 2114;
      v24 = pendingChanges2;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Still has pending changes %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Finished checking for changes", buf, 0xCu);
    }

    [(MSASServerSideModel *)self flushAllPendingCommentCheckOperations];
    commandQueue = [(MSASServerSideModel *)self commandQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __78__MSASServerSideModel_MSASStateMachine_didFinishCheckingForChangesInfo_error___block_invoke;
    v16[3] = &unk_278E92660;
    v17 = machineCopy;
    selfCopy3 = self;
    v19 = infoCopy;
    v20 = errorCopy;
    [commandQueue flushQueueCompletionBlock:v16];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __78__MSASServerSideModel_MSASStateMachine_didFinishCheckingForChangesInfo_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setRootCtagFromPendingRootCtag];
  v2 = [*(a1 + 40) eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__MSASServerSideModel_MSASStateMachine_didFinishCheckingForChangesInfo_error___block_invoke_2;
  block[3] = &unk_278E92638;
  v3 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v5 = v3;
  v6 = *(a1 + 56);
  dispatch_async(v2, block);
}

void __78__MSASServerSideModel_MSASStateMachine_didFinishCheckingForChangesInfo_error___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __78__MSASServerSideModel_MSASStateMachine_didFinishCheckingForChangesInfo_error___block_invoke_3;
  v3[3] = &unk_278E925A8;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 eventQueuePerformBlockOnObservers:v3];
}

void __78__MSASServerSideModel_MSASStateMachine_didFinishCheckingForChangesInfo_error___block_invoke_3(void *a1, void *a2)
{
  v6 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = [v3 _protocolErrorForUnderlyingError:a1[6]];
    [v6 MSASModel:v3 didFinishCheckingForChangesInfo:v4 error:v5];
  }
}

- (void)MSASStateMachine:(id)machine didFindSyncedKeyValueChangesForAlbumGUIDS:(id)s info:(id)info
{
  sCopy = s;
  infoCopy = info;
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(sCopy, "count")}];
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__MSASServerSideModel_MSASStateMachine_didFindSyncedKeyValueChangesForAlbumGUIDS_info___block_invoke;
  block[3] = &unk_278E92638;
  v15 = sCopy;
  selfCopy = self;
  v11 = v9;
  v17 = v11;
  v12 = sCopy;
  dispatch_sync(dbQueue, block);

  if ([v11 count])
  {
    stateMachine = [(MSASServerSideModel *)self stateMachine];
    [stateMachine checkForAlbumSyncedStateChangesInAlbums:v11 info:infoCopy];
  }
}

void __87__MSASServerSideModel_MSASStateMachine_didFindSyncedKeyValueChangesForAlbumGUIDS_info___block_invoke(id *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        v9 = [a1[5] dbQueueLookupOrCreateAlbumWithGUID:{v7, v11}];
        if (v9)
        {
          [a1[6] addObject:v9];
        }

        objc_autoreleasePoolPop(v8);
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)MSASStateMachine:(id)machine didFindAccessControlChangesForAlbumGUIDS:(id)s info:(id)info
{
  sCopy = s;
  infoCopy = info;
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(sCopy, "count")}];
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__MSASServerSideModel_MSASStateMachine_didFindAccessControlChangesForAlbumGUIDS_info___block_invoke;
  block[3] = &unk_278E92638;
  v15 = sCopy;
  selfCopy = self;
  v11 = v9;
  v17 = v11;
  v12 = sCopy;
  dispatch_sync(dbQueue, block);

  if ([v11 count])
  {
    stateMachine = [(MSASServerSideModel *)self stateMachine];
    [stateMachine getAccessControlsForAlbums:v11 info:infoCopy];
  }
}

void __86__MSASServerSideModel_MSASStateMachine_didFindAccessControlChangesForAlbumGUIDS_info___block_invoke(id *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        v9 = [a1[5] dbQueueLookupOrCreateAlbumWithGUID:{v7, v11}];
        if (v9)
        {
          [a1[6] addObject:v9];
        }

        objc_autoreleasePoolPop(v8);
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)MSASStateMachine:(id)machine didFindSyncedKeyValueChangesForAlbumGUIDS:(id)s albumChanges:(id)changes accessControlChangesForAlbumGUIDS:(id)dS info:(id)info
{
  infoCopy = info;
  dSCopy = dS;
  changesCopy = changes;
  sCopy = s;
  machineCopy = machine;
  v16 = [[MSASPendingChanges alloc] initWithSyncedKeyValueChangesForAlbumGUIDS:sCopy albumChanges:changesCopy accessControlChangesForAlbumGUIDS:dSCopy];
  [(MSASServerSideModel *)self setPendingChanges:v16];

  [(MSASServerSideModel *)self MSASStateMachine:machineCopy didFindSyncedKeyValueChangesForAlbumGUIDS:sCopy info:infoCopy];
  [(MSASServerSideModel *)self MSASStateMachine:machineCopy didFindAlbumChanges:changesCopy info:infoCopy];

  [(MSASServerSideModel *)self MSASStateMachine:machineCopy didFindAccessControlChangesForAlbumGUIDS:dSCopy info:infoCopy];
}

- (void)MSASStateMachine:(id)machine didFindNewURLString:(id)string forAlbumWithGUID:(id)d info:(id)info
{
  stringCopy = string;
  dCopy = d;
  infoCopy = info;
  dbQueue = [(MSASModelBase *)self dbQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __82__MSASServerSideModel_MSASStateMachine_didFindNewURLString_forAlbumWithGUID_info___block_invoke;
  v16[3] = &unk_278E92660;
  v16[4] = self;
  v17 = dCopy;
  v18 = stringCopy;
  v19 = infoCopy;
  v13 = infoCopy;
  v14 = stringCopy;
  v15 = dCopy;
  dispatch_async(dbQueue, v16);
}

void __82__MSASServerSideModel_MSASStateMachine_didFindNewURLString_forAlbumWithGUID_info___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7 = 0;
  v4 = [v2 dbQueueAlbumWithGUID:v3 outObject:&v7 outName:0 outCtag:0 outForeignCtag:0 outURLString:0 outUserInfoData:0 outClientOrgKey:0];
  v5 = v7;
  v6 = v5;
  if (v4)
  {
    [v5 setURLString:*(a1 + 48)];
    [*(a1 + 32) dbQueueSetAlbum:v6 info:*(a1 + 56)];
  }
}

- (void)MSASStateMachine:(id)machine didFindAlbumChanges:(id)changes info:(id)info
{
  machineCopy = machine;
  changesCopy = changes;
  infoCopy = info;
  dbQueue = [(MSASModelBase *)self dbQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__MSASServerSideModel_MSASStateMachine_didFindAlbumChanges_info___block_invoke;
  v15[3] = &unk_278E92660;
  v16 = infoCopy;
  selfCopy = self;
  v18 = changesCopy;
  v19 = machineCopy;
  v12 = machineCopy;
  v13 = changesCopy;
  v14 = infoCopy;
  dispatch_async(dbQueue, v15);
}

void __65__MSASServerSideModel_MSASStateMachine_didFindAlbumChanges_info___block_invoke(uint64_t a1)
{
  v154 = *MEMORY[0x277D85DE8];
  v125 = [*(a1 + 32) MSASIsGlobalResetSync];
  if (v125 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 40);
    *buf = 138543362;
    v148 = v2;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Reconciling current album list due to a reset sync.", buf, 0xCu);
  }

  v126 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(a1 + 48), "count")}];
  v122 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(a1 + 48), "count")}];
  [*(a1 + 40) dbQueueBeginTransaction];
  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v3 = *(a1 + 48);
  v4 = [v3 countByEnumeratingWithState:&v142 objects:v153 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v143;
    v123 = *v143;
    v124 = v3;
    do
    {
      v7 = 0;
      v127 = v5;
      do
      {
        if (*v143 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v142 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [v8 wasDeleted];
        v11 = *(a1 + 40);
        if (v10)
        {
          v12 = [*(a1 + 40) stateMachine];
          v13 = [v8 GUID];
          [v12 cancelOutstandingCommandsForAlbumWithGUID:v13];

          v14 = *(a1 + 40);
          v15 = [v8 GUID];
          [v14 dbQueueDeleteAlbumWithGUID:v15 info:*(a1 + 32)];
          goto LABEL_56;
        }

        v128 = v9;
        v16 = [v8 GUID];
        v141 = 0;
        v17 = [v11 dbQueueAlbumWithGUID:v16 outObject:&v141 outName:0 outCtag:0 outForeignCtag:0 outURLString:0 outUserInfoData:0 outClientOrgKey:0];
        v15 = v141;

        if (!v17)
        {
          v61 = +[MSASAlbum album];
          v62 = [v8 GUID];
          [v61 setGUID:v62];

          v63 = [v8 ownerEmail];
          [v61 setOwnerEmail:v63];

          v64 = [v8 ownerPersonID];
          [v61 setOwnerPersonID:v64];

          v65 = [v8 ownerFirstName];
          [v61 setOwnerFirstName:v65];

          v66 = [v8 ownerLastName];
          [v61 setOwnerLastName:v66];

          v67 = [v8 ownerFullName];
          [v61 setOwnerFullName:v67];

          v68 = [v8 invitation];
          v69 = [v68 subscriptionDate];
          [v61 setSubscriptionDate:v69];

          v70 = [v8 URLString];
          [v61 setURLString:v70];

          v71 = [v8 invitation];
          [v61 setRelationshipState:{objc_msgSend(v71, "state")}];

          v72 = [v8 name];

          if (v72)
          {
            v73 = [v8 name];
            [v61 setMetadataValue:v73 forKey:@"name"];
          }

          [*(a1 + 40) dbQueueSetAlbum:v61 info:*(a1 + 32)];
          v74 = [v8 invitation];
          if ([v74 state])
          {
            v75 = [v8 invitation];
            v76 = [v75 state];

            if (v76 != 2)
            {
              goto LABEL_41;
            }
          }

          else
          {
          }

          [v126 addObject:v61];
LABEL_41:
          v77 = [v8 invitation];
          v78 = [v77 state];

          if (v78 == 2)
          {
            [v122 addObject:v61];
          }

          v9 = v128;
          goto LABEL_51;
        }

        v18 = [v15 ownerEmail];
        v19 = [v8 ownerEmail];
        v20 = [v18 isEqualToString:v19];

        v21 = v125;
        if ((v20 & 1) == 0)
        {
          v22 = [v8 ownerEmail];
          [v15 setOwnerEmail:v22];

          v21 = 1;
        }

        v23 = [v15 ownerPersonID];
        v24 = [v8 ownerPersonID];
        v25 = [v23 isEqualToString:v24];

        if ((v25 & 1) == 0)
        {
          v26 = [v8 ownerPersonID];
          [v15 setOwnerPersonID:v26];

          v21 = 1;
        }

        v27 = [v15 ownerFullName];
        v28 = [v8 ownerFullName];
        v29 = [v27 isEqualToString:v28];

        if ((v29 & 1) == 0)
        {
          v30 = [v8 ownerFullName];
          [v15 setOwnerFullName:v30];

          v21 = 1;
        }

        v31 = [v15 ownerFirstName];
        v32 = [v8 ownerFirstName];
        v33 = [v31 isEqualToString:v32];

        if ((v33 & 1) == 0)
        {
          v34 = [v8 ownerFirstName];
          [v15 setOwnerFirstName:v34];

          v21 = 1;
        }

        v35 = [v15 ownerLastName];
        v36 = [v8 ownerLastName];
        v37 = [v35 isEqualToString:v36];

        if ((v37 & 1) == 0)
        {
          v38 = [v8 ownerLastName];
          [v15 setOwnerLastName:v38];

          v21 = 1;
        }

        v39 = [v15 subscriptionDate];
        v40 = [v8 invitation];
        v41 = [v40 subscriptionDate];
        v42 = [v39 isEqualToDate:v41];

        if ((v42 & 1) == 0)
        {
          v43 = [v8 invitation];
          v44 = [v43 subscriptionDate];
          [v15 setSubscriptionDate:v44];

          v21 = 1;
        }

        v45 = [v15 URLString];
        v46 = [v8 URLString];
        v47 = [v45 isEqualToString:v46];

        if ((v47 & 1) == 0)
        {
          v48 = [v8 URLString];
          [v15 setURLString:v48];

          v21 = 1;
        }

        v49 = [v15 relationshipState];
        v50 = [v8 invitation];
        v51 = [v50 state];

        if (v49 != v51)
        {
          v52 = [v8 invitation];
          [v15 setRelationshipState:{objc_msgSend(v52, "state")}];

          v53 = [v8 invitation];
          v54 = [v53 state];

          if (v54 == 2)
          {
            [v122 addObject:v15];
          }

          v21 = 1;
        }

        v55 = [v8 name];
        if (v55)
        {
          v56 = v55;
          v57 = [v15 metadata];
          v58 = [v57 objectForKey:@"name"];
          v59 = [v8 name];
          v60 = [v58 isEqualToString:v59];

          if ((v60 & 1) == 0)
          {
            v79 = [v8 name];
            [v15 setMetadataValue:v79 forKey:@"name"];

LABEL_45:
            [*(a1 + 40) dbQueueSetAlbum:v15 info:*(a1 + 32)];
            goto LABEL_46;
          }
        }

        if (v21)
        {
          goto LABEL_45;
        }

LABEL_46:
        v80 = [v8 invitation];
        v3 = v124;
        if ([v80 state])
        {
          v81 = [v8 invitation];
          v82 = [v81 state];

          v83 = v82 == 2;
          v6 = v123;
          v9 = v128;
          if (!v83)
          {
            goto LABEL_51;
          }
        }

        else
        {

          v6 = v123;
          v9 = v128;
        }

        [v126 addObject:v15];
LABEL_51:
        v84 = [v8 invitation];
        v85 = [v84 state];

        if (v85)
        {
          v86 = *(a1 + 40);
          v87 = [v8 invitation];
          [v86 dbQueueSetInvitation:v87 info:*(a1 + 32)];
        }

        v88 = [v8 invitation];
        v89 = [v88 state];

        if (v89 == 1)
        {
          v90 = *(a1 + 40);
          v91 = [v8 GUID];
          [v90 dbQueueSetUnviewedState:1 onAlbumWithGUID:v91 info:*(a1 + 32)];
        }

        v5 = v127;
LABEL_56:

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v142 objects:v153 count:16];
    }

    while (v5);
  }

  if (v125)
  {
    v92 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(*(a1 + 48), "count")}];
    v137 = 0u;
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    v93 = *(a1 + 48);
    v94 = [v93 countByEnumeratingWithState:&v137 objects:v152 count:16];
    if (v94)
    {
      v95 = v94;
      v96 = *v138;
      do
      {
        for (i = 0; i != v95; ++i)
        {
          if (*v138 != v96)
          {
            objc_enumerationMutation(v93);
          }

          v98 = [*(*(&v137 + 1) + 8 * i) GUID];
          [v92 addObject:v98];
        }

        v95 = [v93 countByEnumeratingWithState:&v137 objects:v152 count:16];
      }

      while (v95);
    }

    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    v99 = [*(a1 + 40) dbQueueAlbumGUIDs];
    v100 = [v99 countByEnumeratingWithState:&v133 objects:v151 count:16];
    if (v100)
    {
      v101 = v100;
      v102 = *v134;
      v103 = MEMORY[0x277D86220];
      do
      {
        for (j = 0; j != v101; ++j)
        {
          if (*v134 != v102)
          {
            objc_enumerationMutation(v99);
          }

          v105 = *(*(&v133 + 1) + 8 * j);
          v106 = objc_autoreleasePoolPush();
          if (([v92 containsObject:v105] & 1) == 0)
          {
            if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
            {
              v107 = *(a1 + 40);
              *buf = 138543618;
              v148 = v107;
              v149 = 2114;
              v150 = v105;
              _os_log_impl(&dword_245B99000, v103, OS_LOG_TYPE_DEFAULT, "%{public}@: Deleting album GUID %{public}@ due to reset sync.", buf, 0x16u);
            }

            [*(a1 + 40) dbQueueDeleteAlbumWithGUID:v105 info:*(a1 + 32)];
          }

          objc_autoreleasePoolPop(v106);
        }

        v101 = [v99 countByEnumeratingWithState:&v133 objects:v151 count:16];
      }

      while (v101);
    }
  }

  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  v108 = v126;
  v109 = [v108 countByEnumeratingWithState:&v129 objects:v146 count:16];
  if (v109)
  {
    v110 = v109;
    v111 = *v130;
    do
    {
      for (k = 0; k != v110; ++k)
      {
        if (*v130 != v111)
        {
          objc_enumerationMutation(v108);
        }

        v113 = *(*(&v129 + 1) + 8 * k);
        v114 = [*(a1 + 40) pendingChanges];
        v115 = [v113 GUID];
        [v114 addPendingChangesForAlbumGUID:v115];
      }

      v110 = [v108 countByEnumeratingWithState:&v129 objects:v146 count:16];
    }

    while (v110);
  }

  v116 = [*(a1 + 40) pendingChanges];
  v117 = [v116 hasPendingChanges];

  if ((v117 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v121 = *(a1 + 40);
      *buf = 138543362;
      v148 = v121;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Finished checking album changes", buf, 0xCu);
    }

    [*(a1 + 40) MSASStateMachine:*(a1 + 56) didFinishCheckingForChangesInfo:*(a1 + 32) error:0];
  }

  if ([v108 count])
  {
    v118 = [*(a1 + 40) stateMachine];
    [v118 checkForUpdatesInAlbums:v108 resetSync:0 info:*(a1 + 32)];
  }

  if ([v122 count])
  {
    v119 = [*(a1 + 40) stateMachine];
    [v119 getAccessControlsForAlbums:v122 info:*(a1 + 32)];
  }

  [*(a1 + 40) dbQueueEndTransaction];

  v120 = *MEMORY[0x277D85DE8];
}

- (void)MSASStateMachineDidFindGlobalResetSync:(id)sync info:(id)info
{
  infoCopy = info;
  eventQueue = [(MSASServerSideModel *)self eventQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__MSASServerSideModel_MSASStateMachineDidFindGlobalResetSync_info___block_invoke;
  v8[3] = &unk_278E927C8;
  v8[4] = self;
  v9 = infoCopy;
  v7 = infoCopy;
  dispatch_async(eventQueue, v8);
}

void __67__MSASServerSideModel_MSASStateMachineDidFindGlobalResetSync_info___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) daemon];
  v3 = [*(a1 + 32) personID];
  [v2 didReceiveGlobalResetSyncForPersonID:v3];

  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__MSASServerSideModel_MSASStateMachineDidFindGlobalResetSync_info___block_invoke_2;
  v5[3] = &unk_278E91EF8;
  v5[4] = v4;
  v6 = *(a1 + 40);
  [v4 eventQueuePerformBlockOnObservers:v5];
}

void __67__MSASServerSideModel_MSASStateMachineDidFindGlobalResetSync_info___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:*(a1 + 32) didFindGlobalResetSyncInfo:*(a1 + 40)];
  }
}

- (void)MSASStateMachineDidStart:(id)start
{
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__MSASServerSideModel_MSASStateMachineDidStart___block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_sync(dbQueue, block);

  commandQueue = [(MSASServerSideModel *)self commandQueue];
  [commandQueue flushQueueCompletionBlock:0];
}

void __48__MSASServerSideModel_MSASStateMachineDidStart___block_invoke(uint64_t a1)
{
  [*(a1 + 32) dbQueueFlushAllPendingCommentCheckOperations];
  v2 = [*(a1 + 32) stateMachine];
  [v2 retryOutstandingActivities];
}

- (id)_protocolErrorForUnderlyingError:(id)error
{
  if (error)
  {
    v3 = MEMORY[0x277CCA9B8];
    errorCopy = error;
    v5 = MSCFCopyLocalizedString(@"Model.error.protocol");
    v6 = [v3 MSErrorWithDomain:@"MSASModelErrorDomain" code:8 description:v5 underlyingError:errorCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_invalidAssetCollectionGUIDErrorwithGUID:(id)d
{
  dCopy = d;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__MSASServerSideModel__invalidAssetCollectionGUIDErrorwithGUID___block_invoke;
  block[3] = &unk_278E926D8;
  v10 = dCopy;
  v4 = _invalidAssetCollectionGUIDErrorwithGUID__onceToken;
  v5 = dCopy;
  if (v4 != -1)
  {
    dispatch_once(&_invalidAssetCollectionGUIDErrorwithGUID__onceToken, block);
  }

  v6 = _invalidAssetCollectionGUIDErrorwithGUID__error;
  v7 = _invalidAssetCollectionGUIDErrorwithGUID__error;

  return v6;
}

void __64__MSASServerSideModel__invalidAssetCollectionGUIDErrorwithGUID___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = MEMORY[0x277CCACA8];
  v7 = MSCFCopyLocalizedString(@"Model.error.invalidAssetCollectionGUID_GUID");
  v4 = [v3 stringWithFormat:v7, *(a1 + 32)];
  v5 = [v2 MSErrorWithDomain:@"MSASModelErrorDomain" code:2 description:v4];
  v6 = _invalidAssetCollectionGUIDErrorwithGUID__error;
  _invalidAssetCollectionGUIDErrorwithGUID__error = v5;
}

- (id)_invalidAccessControlGUIDErrorwithGUID:(id)d
{
  dCopy = d;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__MSASServerSideModel__invalidAccessControlGUIDErrorwithGUID___block_invoke;
  block[3] = &unk_278E926D8;
  v10 = dCopy;
  v4 = _invalidAccessControlGUIDErrorwithGUID__onceToken;
  v5 = dCopy;
  if (v4 != -1)
  {
    dispatch_once(&_invalidAccessControlGUIDErrorwithGUID__onceToken, block);
  }

  v6 = _invalidAccessControlGUIDErrorwithGUID__error;
  v7 = _invalidAccessControlGUIDErrorwithGUID__error;

  return v6;
}

void __62__MSASServerSideModel__invalidAccessControlGUIDErrorwithGUID___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = MEMORY[0x277CCACA8];
  v7 = MSCFCopyLocalizedString(@"Model.error.invalidACLGUID_GUID");
  v4 = [v3 stringWithFormat:v7, *(a1 + 32)];
  v5 = [v2 MSErrorWithDomain:@"MSASModelErrorDomain" code:1 description:v4];
  v6 = _invalidAccessControlGUIDErrorwithGUID__error;
  _invalidAccessControlGUIDErrorwithGUID__error = v5;
}

- (id)_invalidInvitationGUIDErrorWithGUID:(id)d
{
  dCopy = d;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__MSASServerSideModel__invalidInvitationGUIDErrorWithGUID___block_invoke;
  block[3] = &unk_278E926D8;
  v10 = dCopy;
  v4 = _invalidInvitationGUIDErrorWithGUID__onceToken;
  v5 = dCopy;
  if (v4 != -1)
  {
    dispatch_once(&_invalidInvitationGUIDErrorWithGUID__onceToken, block);
  }

  v6 = _invalidInvitationGUIDErrorWithGUID__error;
  v7 = _invalidInvitationGUIDErrorWithGUID__error;

  return v6;
}

void __59__MSASServerSideModel__invalidInvitationGUIDErrorWithGUID___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = MEMORY[0x277CCACA8];
  v7 = MSCFCopyLocalizedString(@"Model.error.invalidInvitationGUID_GUID");
  v4 = [v3 stringWithFormat:v7, *(a1 + 32)];
  v5 = [v2 MSErrorWithDomain:@"MSASModelErrorDomain" code:0 description:v4];
  v6 = _invalidInvitationGUIDErrorWithGUID__error;
  _invalidInvitationGUIDErrorWithGUID__error = v5;
}

- (id)dbQueueLookupOrCreateCommentWithGUID:(id)d outAssetCollection:(id *)collection outAlbum:(id *)album
{
  dCopy = d;
  v19 = 0;
  v20 = 0;
  v9 = [(MSASServerSideModel *)self dbQueueCommentWithGUID:dCopy outObject:&v20 outID:0 outTimestamp:0 outAssetCollectionGUID:&v19 outIsCaption:0 outUserInfoData:0];
  v10 = v20;
  v11 = v19;
  if (!v9)
  {
    v12 = objc_alloc_init(MSASComment);

    [(MSASComment *)v12 setGUID:dCopy];
    v10 = v12;
  }

  if (collection | album)
  {
    v17 = 0;
    v18 = 0;
    [(MSASServerSideModel *)self dbQueueAssetCollectionWithGUID:v11 outObject:&v18 outCtag:0 outAlbumGUID:&v17 outBatchDate:0 outPhotoDate:0 outPhotoNumber:0 outUserInfoData:0];
    v13 = v18;
    v14 = v17;
    if (collection)
    {
      v15 = v13;
      *collection = v13;
    }

    if (album && v14)
    {
      *album = [(MSASServerSideModel *)self dbQueueLookupOrCreateAlbumWithGUID:v14];
    }
  }

  return v10;
}

- (id)dbQueueLookupOrCreateAssetCollectionWithGUID:(id)d outAlbum:(id *)album
{
  dCopy = d;
  v12 = 0;
  v13 = 0;
  v7 = [(MSASServerSideModel *)self dbQueueAssetCollectionWithGUID:dCopy outObject:&v13 outCtag:0 outAlbumGUID:&v12 outBatchDate:0 outPhotoDate:0 outPhotoNumber:0 outUserInfoData:0];
  v8 = v13;
  v9 = v12;
  if (!v7)
  {
    v10 = objc_alloc_init(MSASAssetCollection);

    [(MSASAssetCollection *)v10 setGUID:dCopy];
    v8 = v10;
  }

  if (album)
  {
    *album = [(MSASServerSideModel *)self dbQueueLookupOrCreateAlbumWithGUID:v9];
  }

  return v8;
}

- (id)dbQueueLookupOrCreateAlbumWithGUID:(id)d
{
  dCopy = d;
  v9 = 0;
  v5 = [(MSASServerSideModel *)self dbQueueAlbumWithGUID:dCopy outObject:&v9 outName:0 outCtag:0 outForeignCtag:0 outURLString:0 outUserInfoData:0 outClientOrgKey:0];
  v6 = v9;
  if (!v5)
  {
    v7 = +[MSASAlbum album];

    [v7 setGUID:dCopy];
    v6 = v7;
  }

  return v6;
}

- (void)eventQueuePerformBlockOnObservers:(id)observers
{
  v18 = *MEMORY[0x277D85DE8];
  observersCopy = observers;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  observers = [(MSASServerSideModel *)self observers];
  v6 = [observers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(observers);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        observersCopy[2](observersCopy, v10);
        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v7 != v9);
      v7 = [observers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)earliestUnviewedAssetCollectionGUIDInAlbumWithGUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6923;
  v16 = __Block_byref_object_dispose__6924;
  v17 = 0;
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__MSASServerSideModel_earliestUnviewedAssetCollectionGUIDInAlbumWithGUID___block_invoke;
  block[3] = &unk_278E91C78;
  block[4] = self;
  v10 = dCopy;
  v11 = &v12;
  v6 = dCopy;
  dispatch_sync(dbQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __74__MSASServerSideModel_earliestUnviewedAssetCollectionGUIDInAlbumWithGUID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v22 = 0;
  v4 = [v2 dbQueueAlbumWithGUID:v3 outObject:&v22 outName:0 outCtag:0 outForeignCtag:0 outURLString:0 outUserInfoData:0 outClientOrgKey:0];
  v5 = v22;
  if (v4)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v21 = 0;
    v8 = [v6 dbQueueAlbumMetadataWithAlbumGUID:v7 key:@"lastassetposition" outValue:&v21];
    v9 = v21;
    v10 = v9;
    if (v8)
    {
      v11 = [v9 longLongValue];
      v12 = [*(a1 + 32) statementForString:{@"select GUID from AssetCollections where albumGUID = ? and photoNumber > ? order by albumGUID asc, batchDate asc, photoDate asc, GUID asc;"}];
      v13 = MSSqliteBindStringOrNull(v12, 1, *(a1 + 40));
      v14 = v13;
      MSSqliteTrapForDBLockError(v13);
      if (!v14)
      {
        v15 = sqlite3_bind_int64(v12, 2, v11);
        v16 = v15;
        MSSqliteTrapForDBLockError(v15);
        if (!v16)
        {
          v17 = sqlite3_step(v12);
          if (v17 != 101)
          {
            if (v17 == 100)
            {
              v18 = MSSqliteStringFromStatementColumn(v12, 0);
              v19 = *(*(a1 + 48) + 8);
              v20 = *(v19 + 40);
              *(v19 + 40) = v18;
            }

            else
            {
              MSLogSqliteError([*(a1 + 32) dbQueueDB], *(a1 + 32), 3559);
            }
          }
        }
      }

      if (v12)
      {
        sqlite3_reset(v12);
      }
    }

    else
    {
    }
  }
}

- (id)lastViewedCommentDateForAssetCollectionWithGUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6923;
  v16 = __Block_byref_object_dispose__6924;
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__MSASServerSideModel_lastViewedCommentDateForAssetCollectionWithGUID___block_invoke;
  block[3] = &unk_278E91C78;
  block[4] = self;
  v10 = dCopy;
  v11 = &v12;
  v6 = dCopy;
  dispatch_sync(dbQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __71__MSASServerSideModel_lastViewedCommentDateForAssetCollectionWithGUID___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v11 = 0;
  v4 = [v2 dbQueueAssetCollectionMetadataWithAssetCollectionGUID:v3 key:@"lastcommenttimestamp" outValue:&v11];
  v5 = v11;
  v6 = v5;
  if (v4)
  {
    v7 = MEMORY[0x277CBEAA8];
    [v5 doubleValue];
    v8 = [v7 dateWithTimeIntervalSinceReferenceDate:?];
    v9 = *(a1[6] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

- (void)dbQueueFlushAllPendingCommentCheckOperations
{
  v41 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Flushing pending comment check queue.", buf, 0xCu);
  }

  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:50];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [(MSASServerSideModel *)self dbQueuePendingCommentCheckOperations];
  v26 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v26)
  {
    v4 = 0;
    albumGUID = 0;
    v25 = *v31;
    selfCopy2 = self;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        v7 = albumGUID;
        if (*v31 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v30 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        albumGUID = [v8 albumGUID];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          assetCollectionGUID = [v8 assetCollectionGUID];
          *buf = 138543874;
          selfCopy = selfCopy2;
          v36 = 2114;
          v37 = assetCollectionGUID;
          v38 = 2114;
          v39 = albumGUID;
          _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Flushing pending comment check operation for asset collection GUID %{public}@ in album GUID %{public}@", buf, 0x20u);

          self = selfCopy2;
        }

        if (v4 > 50 || v7 && ([albumGUID isEqualToString:v7] & 1) == 0)
        {
          v29 = 0;
          [(MSASServerSideModel *)self dbQueueAlbumWithGUID:v7 outObject:&v29 outName:0 outCtag:0 outForeignCtag:0 outURLString:0 outUserInfoData:0 outClientOrgKey:0];
          v10 = v29;
          stateMachine = [(MSASServerSideModel *)selfCopy2 stateMachine];
          v12 = [v3 copy];
          clientOrgKey = [v10 clientOrgKey];
          [stateMachine checkForCommentChanges:v12 inAlbumWithGUID:v7 withClientOrgKey:clientOrgKey];

          self = selfCopy2;
          [v3 removeAllObjects];
          v4 = 0;
          v7 = 0;
        }

        ++v4;
        assetCollectionGUID2 = [v8 assetCollectionGUID];
        v15 = [(MSASServerSideModel *)self dbQueueMaximumCommentIDForAssetCollectionWithGUID:assetCollectionGUID2];

        if (v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = &unk_2858CC148;
        }

        assetCollectionGUID3 = [v8 assetCollectionGUID];
        [v3 setObject:v16 forKey:assetCollectionGUID3];

        objc_autoreleasePoolPop(v9);
      }

      v26 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v26);
  }

  else
  {
    albumGUID = 0;
  }

  if ([v3 count])
  {
    v28 = 0;
    [(MSASServerSideModel *)self dbQueueAlbumWithGUID:albumGUID outObject:&v28 outName:0 outCtag:0 outForeignCtag:0 outURLString:0 outUserInfoData:0 outClientOrgKey:0];
    v19 = v28;
    stateMachine2 = [(MSASServerSideModel *)self stateMachine];
    clientOrgKey2 = [v19 clientOrgKey];
    [stateMachine2 checkForCommentChanges:v3 inAlbumWithGUID:albumGUID withClientOrgKey:clientOrgKey2];
  }

  [(MSASServerSideModel *)self dbQueueDeleteAllPendingCommentCheckOperations];
  stateMachine3 = [(MSASServerSideModel *)self stateMachine];
  [stateMachine3 retryOutstandingActivities];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)flushAllPendingCommentCheckOperations
{
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__MSASServerSideModel_flushAllPendingCommentCheckOperations__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(dbQueue, block);
}

- (void)dbQueueAddCommentCheckOperation:(id)operation
{
  v24 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    assetCollectionGUID = [operationCopy assetCollectionGUID];
    albumGUID = [operationCopy albumGUID];
    v18 = 138543874;
    selfCopy = self;
    v20 = 2114;
    v21 = assetCollectionGUID;
    v22 = 2114;
    v23 = albumGUID;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Enqueuing comment check operation for asset collection GUID %{public}@ in album GUID %{public}@", &v18, 0x20u);
  }

  v5 = [(MSASModelBase *)self statementForString:@"insert or replace into CommentCheckQueue (assetCollectionGUID, albumGUID) values (?, ?);"];
  assetCollectionGUID2 = [operationCopy assetCollectionGUID];
  v7 = MSSqliteBindStringOrNull(v5, 1, assetCollectionGUID2);
  v8 = v7;
  MSSqliteTrapForDBLockError(v7);

  if (v8)
  {
    v9 = 3478;
  }

  else
  {
    albumGUID2 = [operationCopy albumGUID];
    v11 = MSSqliteBindStringOrNull(v5, 2, albumGUID2);
    v12 = v11;
    MSSqliteTrapForDBLockError(v11);

    if (v12)
    {
      v9 = 3479;
    }

    else
    {
      v13 = sqlite3_step(v5);
      v14 = v13;
      MSSqliteTrapForDBLockError(v13);
      if (v14 == 101)
      {
        goto LABEL_10;
      }

      v9 = 3480;
    }
  }

  MSLogSqliteError([(MSASModelBase *)self dbQueueDB], self, v9);
LABEL_10:
  if (v5)
  {
    sqlite3_reset(v5);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)dbQueuePendingCommentCheckOperations
{
  dbQueueDB = [(MSASModelBase *)self dbQueueDB];

  return [MSASModelEnumerator enumeratorWithDatabase:dbQueueDB query:@"select assetCollectionGUID stepBlock:albumGUID from CommentCheckQueue order by albumGUID;", &__block_literal_global_533];
}

MSASCommentCheckOperation *__59__MSASServerSideModel_dbQueuePendingCommentCheckOperations__block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = objc_alloc_init(MSASCommentCheckOperation);
  v4 = MSSqliteStringFromStatementColumn(a2, 0);
  [(MSASCommentCheckOperation *)v3 setAssetCollectionGUID:v4];

  v5 = MSSqliteStringFromStatementColumn(a2, 1);
  [(MSASCommentCheckOperation *)v3 setAlbumGUID:v5];

  return v3;
}

- (void)dbQueueDeleteAllPendingCommentCheckOperations
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Deleting all comment check operations.", &v7, 0xCu);
  }

  v3 = [(MSASModelBase *)self statementForString:@"delete from CommentCheckQueue;"];
  v4 = sqlite3_step(v3);
  v5 = v4;
  MSSqliteTrapForDBLockError(v4);
  if (v5 != 101)
  {
    MSLogSqliteError([(MSASModelBase *)self dbQueueDB], self, 3458);
  }

  if (v3)
  {
    sqlite3_reset(v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (int)dbQueueUnviewedAssetCollectionCountForAlbumWithGUID:(id)d
{
  dCopy = d;
  v20 = 0;
  v5 = [(MSASServerSideModel *)self dbQueueAlbumWithGUID:dCopy outObject:&v20 outName:0 outCtag:0 outForeignCtag:0 outURLString:0 outUserInfoData:0 outClientOrgKey:0];
  v6 = v20;
  if (!v5)
  {
    v11 = 0;
    goto LABEL_11;
  }

  v19 = 0;
  v7 = [(MSASServerSideModel *)self dbQueueAlbumMetadataWithAlbumGUID:dCopy key:@"lastassetposition" outValue:&v19];
  v8 = v19;
  v9 = v8;
  if (v7)
  {
    longLongValue = [v8 longLongValue];
  }

  else
  {
    longLongValue = -1;
  }

  v12 = [(MSASModelBase *)self statementForString:@"select count(GUID) from AssetCollections where albumGUID = ? and photoNumber > ?;"];
  v13 = MSSqliteBindStringOrNull(v12, 1, dCopy);
  v14 = v13;
  MSSqliteTrapForDBLockError(v13);
  if (v14)
  {
    goto LABEL_8;
  }

  v15 = sqlite3_bind_int64(v12, 2, longLongValue);
  v16 = v15;
  MSSqliteTrapForDBLockError(v15);
  if (v16)
  {
    goto LABEL_8;
  }

  v18 = sqlite3_step(v12);
  if (v18 == 101)
  {
    goto LABEL_8;
  }

  if (v18 != 100)
  {
    MSLogSqliteError([(MSASModelBase *)self dbQueueDB], self, 3446);
LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v11 = sqlite3_column_int(v12, 0);
LABEL_9:

  if (v12)
  {
    sqlite3_reset(v12);
  }

LABEL_11:

  return v11;
}

- (int)unviewedAssetCollectionCountForAlbumWithGUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__MSASServerSideModel_unviewedAssetCollectionCountForAlbumWithGUID___block_invoke;
  block[3] = &unk_278E91C78;
  v9 = dCopy;
  v10 = &v11;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(dbQueue, block);

  LODWORD(dCopy) = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return dCopy;
}

uint64_t __68__MSASServerSideModel_unviewedAssetCollectionCountForAlbumWithGUID___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) dbQueueUnviewedAssetCollectionCountForAlbumWithGUID:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)isAssetCollectionWithGUIDMarkedAsUnviewed:(id)unviewed
{
  unviewedCopy = unviewed;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__MSASServerSideModel_isAssetCollectionWithGUIDMarkedAsUnviewed___block_invoke;
  block[3] = &unk_278E91C78;
  block[4] = self;
  v9 = unviewedCopy;
  v10 = &v11;
  v6 = unviewedCopy;
  dispatch_sync(dbQueue, block);

  LOBYTE(unviewedCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return unviewedCopy;
}

void __65__MSASServerSideModel_isAssetCollectionWithGUIDMarkedAsUnviewed___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v7 = 0;
  v4 = [v2 dbQueueAssetCollectionMetadataWithAssetCollectionGUID:v3 key:@"unviewedFlag" outValue:&v7];
  v5 = v7;
  v6 = v5;
  if (v4)
  {
    *(*(a1[6] + 8) + 24) = [v5 isEqualToString:@"1"];
  }
}

- (int)dbQueueUnviewedAlbumCount
{
  v3 = [(MSASModelBase *)self statementForString:@"select count(albumGUID) from AlbumMetadata where key = 'unviewedFlag' and value = '1';"];
  v4 = sqlite3_step(v3);
  if (v4 != 101)
  {
    if (v4 == 100)
    {
      v5 = sqlite3_column_int(v3, 0);
      if (!v3)
      {
        return v5;
      }

      goto LABEL_7;
    }

    MSLogSqliteError([(MSASModelBase *)self dbQueueDB], self, 3399);
  }

  v5 = 0;
  if (v3)
  {
LABEL_7:
    sqlite3_reset(v3);
  }

  return v5;
}

- (int)unviewedAlbumCount
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dbQueue = [(MSASModelBase *)self dbQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__MSASServerSideModel_unviewedAlbumCount__block_invoke;
  v5[3] = &unk_278E92700;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(dbQueue, v5);

  LODWORD(selfCopy) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

uint64_t __41__MSASServerSideModel_unviewedAlbumCount__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) dbQueueUnviewedAlbumCount];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isAlbumWithGUIDMarkedAsUnviewed:(id)unviewed
{
  unviewedCopy = unviewed;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__MSASServerSideModel_isAlbumWithGUIDMarkedAsUnviewed___block_invoke;
  block[3] = &unk_278E91C78;
  block[4] = self;
  v9 = unviewedCopy;
  v10 = &v11;
  v6 = unviewedCopy;
  dispatch_sync(dbQueue, block);

  LOBYTE(unviewedCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return unviewedCopy;
}

void __55__MSASServerSideModel_isAlbumWithGUIDMarkedAsUnviewed___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v7 = 0;
  v4 = [v2 dbQueueAlbumMetadataWithAlbumGUID:v3 key:@"unviewedFlag" outValue:&v7];
  v5 = v7;
  v6 = v5;
  if (v4)
  {
    *(*(a1[6] + 8) + 24) = [v5 isEqualToString:@"1"];
  }
}

- (void)eventQueueNotifyObserversOfUpdatedUnviewedCountInAlbum:(id)album unviewedCount:(int)count info:(id)info
{
  v23 = *MEMORY[0x277D85DE8];
  albumCopy = album;
  infoCopy = info;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138543874;
    selfCopy = self;
    v19 = 2114;
    v20 = albumCopy;
    v21 = 1024;
    countCopy = count;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Setting unviewed count for album %{public}@ to %d.", buf, 0x1Cu);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __97__MSASServerSideModel_eventQueueNotifyObserversOfUpdatedUnviewedCountInAlbum_unviewedCount_info___block_invoke;
  v13[3] = &unk_278E92020;
  countCopy2 = count;
  v13[4] = self;
  v14 = albumCopy;
  v15 = infoCopy;
  v10 = infoCopy;
  v11 = albumCopy;
  [(MSASServerSideModel *)self eventQueuePerformBlockOnObservers:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __97__MSASServerSideModel_eventQueueNotifyObserversOfUpdatedUnviewedCountInAlbum_unviewedCount_info___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:*(a1 + 32) didUpdateUnviewedAssetCollectionCount:*(a1 + 56) forAlbum:*(a1 + 40) info:*(a1 + 48)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:*(a1 + 32) didUpdateUnviewedAssetCollectionCount:*(a1 + 56) forAlbum:*(a1 + 40)];
  }
}

- (BOOL)dbQueueCheckToClearUnviewedStateOnAlbumWithGUID:(id)d info:(id)info
{
  dCopy = d;
  infoCopy = info;
  v28 = 0;
  v8 = [(MSASServerSideModel *)self dbQueueAlbumMetadataWithAlbumGUID:dCopy key:@"lastviewedctag" outValue:&v28];
  v9 = v28;
  if (v8)
  {
    v26 = 0;
    v27 = 0;
    v25 = 0;
    v10 = [(MSASServerSideModel *)self dbQueueAlbumWithGUID:dCopy outObject:&v27 outName:0 outCtag:&v26 outForeignCtag:&v25 outURLString:0 outUserInfoData:0 outClientOrgKey:0];
    v11 = v27;
    v12 = v26;
    v13 = v25;
    v14 = v13;
    if (!v10)
    {
      goto LABEL_10;
    }

    v15 = ([v13 isEqualToString:v9] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", v9);
    v17 = [(MSASServerSideModel *)self dbQueueUnviewedAssetCollectionCountForAlbumWithGUID:dCopy];
    eventQueue = [(MSASServerSideModel *)self eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__MSASServerSideModel_dbQueueCheckToClearUnviewedStateOnAlbumWithGUID_info___block_invoke;
    block[3] = &unk_278E91D70;
    block[4] = self;
    v11 = v11;
    v22 = v11;
    v24 = v17;
    v19 = infoCopy;
    v23 = v19;
    dispatch_async(eventQueue, block);

    if (v15)
    {
      [(MSASServerSideModel *)self dbQueueSetUnviewedState:0 onAlbumWithGUID:dCopy info:v19];
      v16 = 1;
    }

    else
    {
LABEL_10:
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
    v11 = 0;
    v14 = 0;
    v12 = 0;
  }

  return v16;
}

- (BOOL)dbQueueCheckToClearUnviewedStateOnAssetCollectionWithGUID:(id)d info:(id)info
{
  dCopy = d;
  infoCopy = info;
  v16 = 0;
  v8 = [(MSASServerSideModel *)self dbQueueAssetCollectionMetadataWithAssetCollectionGUID:dCopy key:@"lastcommentposition" outValue:&v16];
  v9 = v16;
  if (v8 && ((-[MSASServerSideModel dbQueueMaximumCommentIDForAssetCollectionWithGUID:](self, "dbQueueMaximumCommentIDForAssetCollectionWithGUID:", dCopy), (v10 = objc_claimAutoreleasedReturnValue()) == 0) || (v11 = v10, v12 = [v9 intValue], v13 = objc_msgSend(v11, "intValue"), v11, v13 <= v12)))
  {
    [(MSASServerSideModel *)self dbQueueSetUnviewedState:0 onAssetCollectionWithGUID:dCopy info:infoCopy];
    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)dbQueueSetUnviewedState:(BOOL)state onAlbumWithGUID:(id)d info:(id)info
{
  stateCopy = state;
  v34 = *MEMORY[0x277D85DE8];
  dCopy = d;
  infoCopy = info;
  v27 = 0;
  v10 = [(MSASServerSideModel *)self dbQueueAlbumMetadataWithAlbumGUID:dCopy key:@"unviewedFlag" outValue:&v27];
  v11 = v27;
  v12 = v11;
  if (v10)
  {
    v10 = [v11 isEqualToString:@"1"];
  }

  if (v10 == stateCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543874;
      selfCopy = self;
      v30 = 2114;
      v31 = dCopy;
      v32 = 1024;
      v33 = v10;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Not setting unviewed state on album GUID %{public}@ because it is the same as the previous state: %d", buf, 0x1Cu);
    }
  }

  else
  {
    if (stateCopy)
    {
      v13 = @"1";
    }

    else
    {
      v13 = 0;
    }

    [(MSASServerSideModel *)self dbQueueSetAlbumMetadataAlbumGUID:dCopy key:@"unviewedFlag" value:v13 info:infoCopy];
    v26 = 0;
    v14 = [(MSASServerSideModel *)self dbQueueAlbumWithGUID:dCopy outObject:&v26 outName:0 outCtag:0 outForeignCtag:0 outURLString:0 outUserInfoData:0 outClientOrgKey:0];
    v15 = v26;
    v16 = v15;
    if (v14)
    {
      gUID = [v15 GUID];
      v18 = [(MSASServerSideModel *)self dbQueueUnviewedAssetCollectionCountForAlbumWithGUID:gUID];

      eventQueue = [(MSASServerSideModel *)self eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __68__MSASServerSideModel_dbQueueSetUnviewedState_onAlbumWithGUID_info___block_invoke;
      block[3] = &unk_278E91FF8;
      block[4] = self;
      v22 = v16;
      v25 = stateCopy;
      v23 = infoCopy;
      v24 = v18;
      dispatch_async(eventQueue, block);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __68__MSASServerSideModel_dbQueueSetUnviewedState_onAlbumWithGUID_info___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __68__MSASServerSideModel_dbQueueSetUnviewedState_onAlbumWithGUID_info___block_invoke_2;
  v3[3] = &unk_278E91FD0;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v7 = *(a1 + 60);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 eventQueuePerformBlockOnObservers:v3];
}

void __68__MSASServerSideModel_dbQueueSetUnviewedState_onAlbumWithGUID_info___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:*(a1 + 32) didMarkAlbum:*(a1 + 40) asHavingUnreadContent:*(a1 + 60) info:*(a1 + 48)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:*(a1 + 32) didMarkAlbum:*(a1 + 40) asHavingUnreadContent:*(a1 + 60)];
  }

  [*(a1 + 32) eventQueueNotifyObserversOfUpdatedUnviewedCountInAlbum:*(a1 + 40) unviewedCount:*(a1 + 56) info:*(a1 + 48)];
}

- (void)dbQueueSetUnviewedState:(BOOL)state onAssetCollectionWithGUID:(id)d info:(id)info
{
  stateCopy = state;
  v40 = *MEMORY[0x277D85DE8];
  dCopy = d;
  infoCopy = info;
  v33 = 0;
  v10 = [(MSASServerSideModel *)self dbQueueAssetCollectionMetadataWithAssetCollectionGUID:dCopy key:@"unviewedFlag" outValue:&v33];
  v11 = v33;
  v12 = v11;
  if (v10)
  {
    v10 = [v11 isEqualToString:@"1"];
  }

  if (v10 == stateCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543874;
      selfCopy = self;
      v36 = 2114;
      v37 = dCopy;
      v38 = 1024;
      v39 = v10;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Not setting unviewed state on asset collection GUID %{public}@ because it is the same as the previous state: %d", buf, 0x1Cu);
    }
  }

  else
  {
    if (stateCopy)
    {
      v13 = @"1";
    }

    else
    {
      v13 = 0;
    }

    [(MSASServerSideModel *)self dbQueueSetAssetCollectionMetadataAssetCollectionGUID:dCopy key:@"unviewedFlag" value:v13 info:infoCopy];
    v31 = 0;
    v32 = 0;
    v14 = [(MSASServerSideModel *)self dbQueueAssetCollectionWithGUID:dCopy outObject:&v32 outCtag:0 outAlbumGUID:&v31 outBatchDate:0 outPhotoDate:0 outPhotoNumber:0 outUserInfoData:0];
    v15 = v32;
    v16 = v31;
    if (v14)
    {
      v30 = 0;
      v17 = [(MSASServerSideModel *)self dbQueueAlbumWithGUID:v16 outObject:&v30 outName:0 outCtag:0 outForeignCtag:0 outURLString:0 outUserInfoData:0 outClientOrgKey:0];
      v18 = v30;
      if (v17)
      {
        eventQueue = [(MSASServerSideModel *)self eventQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __78__MSASServerSideModel_dbQueueSetUnviewedState_onAssetCollectionWithGUID_info___block_invoke;
        block[3] = &unk_278E91FA8;
        block[4] = self;
        v26 = v15;
        v29 = stateCopy;
        v27 = v18;
        v28 = infoCopy;
        dispatch_async(eventQueue, block);
      }

      if ((stateCopy & 1) == 0)
      {
        v24 = 0;
        v20 = [(MSASServerSideModel *)self dbQueueAlbumMetadataWithAlbumGUID:v16 key:@"unviewedFlag" outValue:&v24];
        v21 = v24;
        v22 = v21;
        if (v20 && [v21 isEqualToString:@"1"] && !-[MSASServerSideModel dbQueueCountOfUnviewedAssetCollectionsInAlbumWithGUID:](self, "dbQueueCountOfUnviewedAssetCollectionsInAlbumWithGUID:", v16))
        {
          [(MSASServerSideModel *)self dbQueueSetUnviewedState:0 onAlbumWithGUID:v16 info:infoCopy];
        }
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __78__MSASServerSideModel_dbQueueSetUnviewedState_onAssetCollectionWithGUID_info___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__MSASServerSideModel_dbQueueSetUnviewedState_onAssetCollectionWithGUID_info___block_invoke_2;
  v7[3] = &unk_278E91F80;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v10 = *(a1 + 64);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [v6 eventQueuePerformBlockOnObservers:v7];
}

void __78__MSASServerSideModel_dbQueueSetUnviewedState_onAssetCollectionWithGUID_info___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:*(a1 + 32) didMarkAssetCollection:*(a1 + 40) asHavingUnreadComments:*(a1 + 64) inAlbum:*(a1 + 48) info:*(a1 + 56)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:*(a1 + 32) didMarkAssetCollection:*(a1 + 40) asHavingUnreadComments:*(a1 + 64) inAlbum:*(a1 + 48)];
  }
}

- (int)dbQueueCountOfUnviewedAssetCollectionsInAlbumWithGUID:(id)d
{
  dCopy = d;
  v5 = [(MSASModelBase *)self statementForString:@"select count(*) from AssetCollectionMetadata where albumGUID = ? and key = 'unviewedFlag' and value = '1';"];
  v6 = MSSqliteBindStringOrNull(v5, 1, dCopy);

  MSSqliteTrapForDBLockError(v6);
  if (v6)
  {
    dbQueueDB = [(MSASModelBase *)self dbQueueDB];
    selfCopy2 = self;
    v9 = 3225;
LABEL_3:
    MSLogSqliteError(dbQueueDB, selfCopy2, v9);
    goto LABEL_4;
  }

  v12 = sqlite3_step(v5);
  if (v12 != 101)
  {
    if (v12 == 100)
    {
      v10 = sqlite3_column_int(v5, 0);
      if (!v5)
      {
        return v10;
      }

      goto LABEL_5;
    }

    dbQueueDB = [(MSASModelBase *)self dbQueueDB];
    selfCopy2 = self;
    v9 = 3230;
    goto LABEL_3;
  }

LABEL_4:
  v10 = 0;
  if (v5)
  {
LABEL_5:
    sqlite3_reset(v5);
  }

  return v10;
}

- (id)dbQueueMaximumPhotoNumberForAlbumWithGUID:(id)d
{
  dCopy = d;
  v5 = [(MSASModelBase *)self statementForString:@"select max(photoNumber) from AssetCollections where AlbumGUID = ?"];
  v6 = MSSqliteBindStringOrNull(v5, 1, dCopy);

  MSSqliteTrapForDBLockError(v6);
  if (v6 || (v9 = sqlite3_step(v5), v9 == 101))
  {
LABEL_2:
    v7 = 0;
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v9 != 100)
  {
    MSLogSqliteError([(MSASModelBase *)self dbQueueDB], self, 3210);
    goto LABEL_2;
  }

  v10 = sqlite3_column_int64(v5, 0);
  if (v10 < 0)
  {
    goto LABEL_2;
  }

  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:v10];
  if (v5)
  {
LABEL_3:
    sqlite3_reset(v5);
  }

LABEL_4:

  return v7;
}

- (void)dbQueueDeleteAllAssetCollectionMetadataForAssetCollectionWithGUID:(id)d info:(id)info
{
  dCopy = d;
  v6 = [(MSASModelBase *)self statementForString:@"delete from AssetCollectionMetadata where assetCollectionGUID = ?;"];
  v7 = MSSqliteBindStringOrNull(v6, 1, dCopy);

  MSSqliteTrapForDBLockError(v7);
  if (v7)
  {
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v8 = sqlite3_step(v6);
    MSSqliteTrapForDBLockError(v8);
    if (!v6)
    {
      return;
    }
  }

  sqlite3_reset(v6);
}

- (void)dbQueueDeleteAssetCollectionMetadataAssetCollectionGUID:(id)d key:(id)key info:(id)info
{
  keyCopy = key;
  dCopy = d;
  v8 = [(MSASModelBase *)self statementForString:@"delete from AssetCollectionMetadata where assetCollectionGUID = ? and key = ?;"];
  v9 = MSSqliteBindStringOrNull(v8, 1, dCopy);

  MSSqliteTrapForDBLockError(v9);
  if (!v9)
  {
    v10 = MSSqliteBindStringOrNull(v8, 2, keyCopy);
    v11 = v10;
    MSSqliteTrapForDBLockError(v10);
    if (!v11)
    {
      v12 = sqlite3_step(v8);
      MSSqliteTrapForDBLockError(v12);
    }
  }

  if (v8)
  {
    sqlite3_reset(v8);
  }
}

- (void)dbQueueSetAssetCollectionMetadataAssetCollectionGUID:(id)d key:(id)key value:(id)value info:(id)info
{
  dCopy = d;
  keyCopy = key;
  valueCopy = value;
  infoCopy = info;
  v42 = 0;
  [(MSASServerSideModel *)self dbQueueAssetCollectionWithGUID:dCopy outObject:0 outCtag:0 outAlbumGUID:&v42 outBatchDate:0 outPhotoDate:0 outPhotoNumber:0 outUserInfoData:0];
  v14 = v42;
  v15 = [(MSASModelBase *)self statementForString:@"insert or replace into AssetCollectionMetadata (assetCollectionGUID, albumGUID, key, value) values (?, ?, ?, ?);"];
  v16 = MSSqliteBindStringOrNull(v15, 1, dCopy);
  v17 = v16;
  MSSqliteTrapForDBLockError(v16);
  if (!v17)
  {
    v18 = MSSqliteBindStringOrNull(v15, 2, v14);
    v19 = v18;
    MSSqliteTrapForDBLockError(v18);
    if (!v19)
    {
      v20 = MSSqliteBindStringOrNull(v15, 3, keyCopy);
      v21 = v20;
      MSSqliteTrapForDBLockError(v20);
      if (!v21)
      {
        v22 = MSSqliteBindStringOrNull(v15, 4, valueCopy);
        v23 = v22;
        MSSqliteTrapForDBLockError(v22);
        if (!v23)
        {
          v24 = sqlite3_step(v15);
          MSSqliteTrapForDBLockError(v24);
        }
      }
    }
  }

  if (v15)
  {
    sqlite3_reset(v15);
  }

  if ([keyCopy isEqualToString:@"lastcommenttimestamp"])
  {
    v41 = 0;
    v40 = 0;
    v25 = [(MSASServerSideModel *)self dbQueueAssetCollectionWithGUID:dCopy outObject:&v41 outCtag:0 outAlbumGUID:&v40 outBatchDate:0 outPhotoDate:0 outPhotoNumber:0 outUserInfoData:0];
    v26 = v41;
    v27 = v40;
    if (v25)
    {
      v39 = 0;
      v28 = [(MSASServerSideModel *)self dbQueueAlbumWithGUID:v27 outObject:&v39 outName:0 outCtag:0 outForeignCtag:0 outURLString:0 outUserInfoData:0 outClientOrgKey:0];
      v29 = v39;
      if (v28)
      {
        v30 = MEMORY[0x277CBEAA8];
        [valueCopy doubleValue];
        v31 = [v30 dateWithTimeIntervalSinceReferenceDate:?];
        queue = [(MSASServerSideModel *)self eventQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __91__MSASServerSideModel_dbQueueSetAssetCollectionMetadataAssetCollectionGUID_key_value_info___block_invoke;
        block[3] = &unk_278E92688;
        block[4] = self;
        v35 = v31;
        v36 = v26;
        v37 = v29;
        v38 = infoCopy;
        v32 = v31;
        dispatch_async(queue, block);
      }
    }
  }
}

void __91__MSASServerSideModel_dbQueueSetAssetCollectionMetadataAssetCollectionGUID_key_value_info___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __91__MSASServerSideModel_dbQueueSetAssetCollectionMetadataAssetCollectionGUID_key_value_info___block_invoke_2;
  v7[3] = &unk_278E92610;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  v10 = *(a1 + 64);
  [v6 eventQueuePerformBlockOnObservers:v7];
}

void __91__MSASServerSideModel_dbQueueSetAssetCollectionMetadataAssetCollectionGUID_key_value_info___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFindLastViewedCommentDate:a1[5] forAssetCollection:a1[6] inAlbum:a1[7] info:a1[8]];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFindLastViewedCommentDate:a1[5] forAssetCollection:a1[6] inAlbum:a1[7]];
  }
}

- (BOOL)dbQueueAssetCollectionMetadataWithAssetCollectionGUID:(id)d key:(id)key outValue:(id *)value
{
  keyCopy = key;
  dCopy = d;
  v10 = [(MSASModelBase *)self statementForString:@"select value from AssetCollectionMetadata where assetCollectionGUID = ? and key = ?;"];
  v11 = MSSqliteBindStringOrNull(v10, 1, dCopy);

  MSSqliteTrapForDBLockError(v11);
  if (v11 || (v12 = MSSqliteBindStringOrNull(v10, 2, keyCopy), v13 = v12, MSSqliteTrapForDBLockError(v12), v13) || (v16 = sqlite3_step(v10), v16 == 101))
  {
LABEL_3:
    v14 = 0;
    if (!v10)
    {
      goto LABEL_5;
    }

LABEL_4:
    sqlite3_reset(v10);
    goto LABEL_5;
  }

  if (v16 != 100)
  {
    MSLogSqliteError([(MSASModelBase *)self dbQueueDB], self, 3125);
    goto LABEL_3;
  }

  if (value)
  {
    *value = MSSqliteStringFromStatementColumn(v10, 0);
  }

  v14 = 1;
  if (v10)
  {
    goto LABEL_4;
  }

LABEL_5:

  return v14;
}

- (void)dbQueueDeleteAllAlbumMetadataForAlbumWithGUID:(id)d info:(id)info
{
  dCopy = d;
  v6 = [(MSASModelBase *)self statementForString:@"delete from AlbumMetadata where albumGUID = ?;"];
  v7 = MSSqliteBindStringOrNull(v6, 1, dCopy);

  MSSqliteTrapForDBLockError(v7);
  if (v7)
  {
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v8 = sqlite3_step(v6);
    MSSqliteTrapForDBLockError(v8);
    if (!v6)
    {
      return;
    }
  }

  sqlite3_reset(v6);
}

- (void)dbQueueDeleteAlbumMetadataAlbumGUID:(id)d key:(id)key info:(id)info
{
  keyCopy = key;
  dCopy = d;
  v8 = [(MSASModelBase *)self statementForString:@"delete from AlbumMetadata where albumGUID = ? and key = ?;"];
  v9 = MSSqliteBindStringOrNull(v8, 1, dCopy);

  MSSqliteTrapForDBLockError(v9);
  if (!v9)
  {
    v10 = MSSqliteBindStringOrNull(v8, 2, keyCopy);
    v11 = v10;
    MSSqliteTrapForDBLockError(v10);
    if (!v11)
    {
      v12 = sqlite3_step(v8);
      MSSqliteTrapForDBLockError(v12);
    }
  }

  if (v8)
  {
    sqlite3_reset(v8);
  }
}

- (void)dbQueueSetAlbumMetadataAlbumGUID:(id)d key:(id)key value:(id)value info:(id)info
{
  keyCopy = key;
  valueCopy = value;
  dCopy = d;
  v11 = [(MSASModelBase *)self statementForString:@"insert or replace into AlbumMetadata (albumGUID, key, value) values (?, ?, ?);"];
  v12 = MSSqliteBindStringOrNull(v11, 1, dCopy);

  MSSqliteTrapForDBLockError(v12);
  if (!v12)
  {
    v13 = MSSqliteBindStringOrNull(v11, 2, keyCopy);
    v14 = v13;
    MSSqliteTrapForDBLockError(v13);
    if (!v14)
    {
      v15 = MSSqliteBindStringOrNull(v11, 3, valueCopy);
      v16 = v15;
      MSSqliteTrapForDBLockError(v15);
      if (!v16)
      {
        v17 = sqlite3_step(v11);
        MSSqliteTrapForDBLockError(v17);
      }
    }
  }

  if (v11)
  {
    sqlite3_reset(v11);
  }
}

- (BOOL)dbQueueAlbumMetadataWithAlbumGUID:(id)d key:(id)key outValue:(id *)value
{
  keyCopy = key;
  dCopy = d;
  v10 = [(MSASModelBase *)self statementForString:@"select value from AlbumMetadata where albumGUID = ? and key = ?;"];
  v11 = MSSqliteBindStringOrNull(v10, 1, dCopy);

  MSSqliteTrapForDBLockError(v11);
  if (v11 || (v12 = MSSqliteBindStringOrNull(v10, 2, keyCopy), v13 = v12, MSSqliteTrapForDBLockError(v12), v13) || (v16 = sqlite3_step(v10), v16 == 101))
  {
LABEL_3:
    v14 = 0;
    if (!v10)
    {
      goto LABEL_5;
    }

LABEL_4:
    sqlite3_reset(v10);
    goto LABEL_5;
  }

  if (v16 != 100)
  {
    MSLogSqliteError([(MSASModelBase *)self dbQueueDB], self, 3065);
    goto LABEL_3;
  }

  if (value)
  {
    *value = MSSqliteStringFromStatementColumn(v10, 0);
  }

  v14 = 1;
  if (v10)
  {
    goto LABEL_4;
  }

LABEL_5:

  return v14;
}

- (BOOL)dbQueueAssetCollectionContainsCommentsFromMeAssetCollectionGUID:(id)d
{
  dCopy = d;
  v5 = [(MSASModelBase *)self statementForString:@"select assetCollectionGUID from Comments where assetCollectionGUID = ? and isMine > 0;"];
  v6 = MSSqliteBindStringOrNull(v5, 1, dCopy);

  MSSqliteTrapForDBLockError(v6);
  if (v6)
  {
    dbQueueDB = [(MSASModelBase *)self dbQueueDB];
    selfCopy2 = self;
    v9 = 3040;
LABEL_3:
    MSLogSqliteError(dbQueueDB, selfCopy2, v9);
    goto LABEL_4;
  }

  v12 = sqlite3_step(v5);
  if (v12 == 100)
  {
    v10 = 1;
    if (!v5)
    {
      return v10;
    }

    goto LABEL_5;
  }

  if (v12 != 101)
  {
    dbQueueDB = [(MSASModelBase *)self dbQueueDB];
    selfCopy2 = self;
    v9 = 3045;
    goto LABEL_3;
  }

LABEL_4:
  v10 = 0;
  if (v5)
  {
LABEL_5:
    sqlite3_reset(v5);
  }

  return v10;
}

- (id)dbQueueMaximumCommentIDForAssetCollectionWithGUID:(id)d
{
  dCopy = d;
  v14 = 0;
  v5 = [(MSASServerSideModel *)self dbQueueAssetCollectionMetadataWithAssetCollectionGUID:dCopy key:@"largestCommentID" outValue:&v14];
  v6 = v14;
  v7 = v6;
  if (v5)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v6, "intValue")}];
    goto LABEL_6;
  }

  v9 = [(MSASModelBase *)self statementForString:@"select max(id) from Comments where assetCollectionGUID = ?;"];
  v10 = MSSqliteBindStringOrNull(v9, 1, dCopy);
  v11 = v10;
  MSSqliteTrapForDBLockError(v10);
  if (v11 || (v13 = sqlite3_step(v9), v13 == 101))
  {
LABEL_4:
    v8 = 0;
    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v13 != 100)
  {
    MSLogSqliteError([(MSASModelBase *)self dbQueueDB], self, 3027);
    goto LABEL_4;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithInt:{sqlite3_column_int(v9, 0)}];
  if (v9)
  {
LABEL_5:
    sqlite3_reset(v9);
  }

LABEL_6:

  return v8;
}

- (void)dbQueueDeleteCommentWithGUID:(id)d info:(id)info
{
  dCopy = d;
  infoCopy = info;
  v33 = 0;
  v32 = 0;
  v8 = [(MSASServerSideModel *)self dbQueueCommentWithGUID:dCopy outObject:&v33 outID:0 outTimestamp:0 outAssetCollectionGUID:&v32 outIsCaption:0 outUserInfoData:0];
  v9 = v33;
  v10 = v32;
  if (v8)
  {
    v11 = [(MSASModelBase *)self statementForString:@"delete from Comments where GUID = ?;"];
    v12 = MSSqliteBindStringOrNull(v11, 1, dCopy);
    v13 = v12;
    MSSqliteTrapForDBLockError(v12);
    if (!v13)
    {
      v14 = sqlite3_step(v11);
      v15 = v14;
      MSSqliteTrapForDBLockError(v14);
      if (v15 == 101)
      {
        v31 = 0;
        v16 = [(MSASServerSideModel *)self dbQueueLookupOrCreateAssetCollectionWithGUID:v10 outAlbum:&v31];
        v17 = v31;
        commandQueue = [(MSASServerSideModel *)self commandQueue];
        [commandQueue MSASModel:self didDeleteComment:v9 forAssetCollection:v16 inAlbum:v17 info:infoCopy];

        eventQueue = [(MSASServerSideModel *)self eventQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __57__MSASServerSideModel_dbQueueDeleteCommentWithGUID_info___block_invoke;
        block[3] = &unk_278E92688;
        block[4] = self;
        v27 = v9;
        v28 = v16;
        v29 = v17;
        v30 = infoCopy;
        v20 = v17;
        v21 = v16;
        dispatch_async(eventQueue, block);
      }
    }

    if (v11)
    {
      sqlite3_reset(v11);
    }

    v22 = [(MSASModelBase *)self statementForString:@"select count(GUID) from Comments where assetCollectionGUID = ?;"];
    v23 = MSSqliteBindStringOrNull(v22, 1, v10);
    v24 = v23;
    MSSqliteTrapForDBLockError(v23);
    if (!v24)
    {
      v25 = sqlite3_step(v22);
      if (v25 != 101)
      {
        if (v25 == 100)
        {
          if (!sqlite3_column_int(v22, 0))
          {
            [(MSASServerSideModel *)self dbQueueSetUnviewedState:0 onAssetCollectionWithGUID:v10 info:infoCopy];
          }
        }

        else
        {
          MSLogSqliteError([(MSASModelBase *)self dbQueueDB], self, 3003);
        }
      }
    }

    if (v22)
    {
      sqlite3_reset(v22);
    }
  }
}

void __57__MSASServerSideModel_dbQueueDeleteCommentWithGUID_info___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__MSASServerSideModel_dbQueueDeleteCommentWithGUID_info___block_invoke_2;
  v7[3] = &unk_278E92610;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  v10 = *(a1 + 64);
  [v6 eventQueuePerformBlockOnObservers:v7];
}

void __57__MSASServerSideModel_dbQueueDeleteCommentWithGUID_info___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didDeleteComment:a1[5] forAssetCollection:a1[6] inAlbum:a1[7] info:a1[8]];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didDeleteComment:a1[5] forAssetCollection:a1[6] inAlbum:a1[7]];
  }
}

- (void)dbQueueSetComment:(id)comment forAssetCollectionWithGUID:(id)d info:(id)info
{
  v69 = *MEMORY[0x277D85DE8];
  commentCopy = comment;
  dCopy = d;
  infoCopy = info;
  v65 = 0;
  v66 = 0;
  v11 = [(MSASServerSideModel *)self dbQueueAssetCollectionWithGUID:dCopy outObject:&v66 outCtag:0 outAlbumGUID:&v65 outBatchDate:0 outPhotoDate:0 outPhotoNumber:0 outUserInfoData:0];
  v12 = v66;
  v13 = v65;
  if (v11)
  {
    v64 = 0;
    v14 = [(MSASServerSideModel *)self dbQueueAlbumWithGUID:v13 outObject:&v64 outName:0 outCtag:0 outForeignCtag:0 outURLString:0 outUserInfoData:0 outClientOrgKey:0];
    v15 = v64;
    if (v14)
    {
      gUID = [commentCopy GUID];
      v63 = 0;
      v49 = [(MSASServerSideModel *)self dbQueueCommentWithGUID:gUID outObject:0 outID:0 outTimestamp:0 outAssetCollectionGUID:0 outIsCaption:0 outUserInfoData:&v63];
      v51 = v63;

      v17 = [(MSASModelBase *)self statementForString:@"insert or replace into Comments (GUID, id, timestamp, assetCollectionGUID, isCaption, isMine, obj, userInfo) values (?, ?, ?, ?, ?, ?, ?, ?);"];
      gUID2 = [commentCopy GUID];
      v19 = MSSqliteBindStringOrNull(v17, 1, gUID2);
      v20 = v19;
      MSSqliteTrapForDBLockError(v19);

      if (!v20)
      {
        v21 = sqlite3_bind_int(v17, 2, [commentCopy ID]);
        v22 = v21;
        MSSqliteTrapForDBLockError(v21);
        if (!v22)
        {
          timestamp = [commentCopy timestamp];
          v24 = MSSqliteBindTimeIntervalSinceReferenceDateOrNull(v17, 3, timestamp);
          v25 = v24;
          MSSqliteTrapForDBLockError(v24);

          if (!v25)
          {
            v26 = MSSqliteBindStringOrNull(v17, 4, dCopy);
            v27 = v26;
            MSSqliteTrapForDBLockError(v26);
            if (!v27)
            {
              v28 = sqlite3_bind_int(v17, 5, [commentCopy isCaption]);
              v29 = v28;
              MSSqliteTrapForDBLockError(v28);
              if (!v29)
              {
                v30 = sqlite3_bind_int(v17, 6, [commentCopy isMine]);
                v31 = v30;
                MSSqliteTrapForDBLockError(v30);
                if (!v31)
                {
                  v62 = 0;
                  v32 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:commentCopy requiringSecureCoding:1 error:&v62];
                  v48 = v62;
                  if (v32)
                  {
                    v33 = MSSqliteBindDataOrNull(v17, 7, v32);
                  }

                  else
                  {
                    v45 = MEMORY[0x277CCACA8];
                    userInfo = [v48 userInfo];
                    v35 = [v45 stringWithFormat:@"Failed to archive a comment object. Error: %@ Info: %@", v48, userInfo];

                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138543362;
                      selfCopy2 = v35;
                      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
                    }

                    v33 = MSSqliteBindDataOrNull(v17, 7, 0);
                    v32 = 0;
                  }

                  MSSqliteTrapForDBLockError(v33);
                  if (!v33)
                  {
                    v36 = MSSqliteBindDataOrNull(v17, 8, v51);
                    v37 = v36;
                    MSSqliteTrapForDBLockError(v36);
                    if (!v37)
                    {
                      v38 = sqlite3_step(v17);
                      v39 = v38;
                      MSSqliteTrapForDBLockError(v38);
                      if (v39 == 101)
                      {
                        v47 = v32;
                        commandQueue = [(MSASServerSideModel *)self commandQueue];
                        eventQueue = commandQueue;
                        if (v49)
                        {
                          v57[0] = MEMORY[0x277D85DD0];
                          v57[1] = 3221225472;
                          v57[2] = __73__MSASServerSideModel_dbQueueSetComment_forAssetCollectionWithGUID_info___block_invoke;
                          v57[3] = &unk_278E92688;
                          v57[4] = self;
                          v50 = &v58;
                          v58 = commentCopy;
                          v46 = &v59;
                          v59 = v12;
                          v44 = &v60;
                          v60 = v15;
                          v42 = &v61;
                          v61 = infoCopy;
                          [eventQueue flushQueueCompletionBlock:v57];
                        }

                        else
                        {
                          [commandQueue MSASModel:self didFindNewComment:commentCopy forAssetCollection:v12 inAlbum:v15 info:infoCopy];

                          eventQueue = [(MSASServerSideModel *)self eventQueue];
                          block[0] = MEMORY[0x277D85DD0];
                          block[1] = 3221225472;
                          block[2] = __73__MSASServerSideModel_dbQueueSetComment_forAssetCollectionWithGUID_info___block_invoke_4;
                          block[3] = &unk_278E92688;
                          block[4] = self;
                          v50 = &v53;
                          v53 = commentCopy;
                          v46 = &v54;
                          v54 = v12;
                          v44 = &v55;
                          v55 = v15;
                          v42 = &v56;
                          v56 = infoCopy;
                          dispatch_async(eventQueue, block);
                        }

                        v32 = v47;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      if (v17)
      {
        sqlite3_reset(v17);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Rejecting comment destined for non-existent asset collection.", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    selfCopy2 = self;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Rejecting comment destined for non-existent asset collection.", buf, 0xCu);
  }

  v43 = *MEMORY[0x277D85DE8];
}

void __73__MSASServerSideModel_dbQueueSetComment_forAssetCollectionWithGUID_info___block_invoke(id *a1)
{
  v2 = [a1[4] eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__MSASServerSideModel_dbQueueSetComment_forAssetCollectionWithGUID_info___block_invoke_2;
  block[3] = &unk_278E92688;
  v7 = *(a1 + 2);
  v3 = *(&v7 + 1);
  v4 = a1[6];
  v5 = a1[7];
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  v11 = a1[8];
  dispatch_async(v2, block);
}

void __73__MSASServerSideModel_dbQueueSetComment_forAssetCollectionWithGUID_info___block_invoke_4(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__MSASServerSideModel_dbQueueSetComment_forAssetCollectionWithGUID_info___block_invoke_5;
  v7[3] = &unk_278E92610;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  v10 = *(a1 + 64);
  [v6 eventQueuePerformBlockOnObservers:v7];
}

void __73__MSASServerSideModel_dbQueueSetComment_forAssetCollectionWithGUID_info___block_invoke_5(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFindNewComment:a1[5] forAssetCollection:a1[6] inAlbum:a1[7] info:a1[8]];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFindNewComment:a1[5] forAssetCollection:a1[6] inAlbum:a1[7]];
  }
}

void __73__MSASServerSideModel_dbQueueSetComment_forAssetCollectionWithGUID_info___block_invoke_2(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__MSASServerSideModel_dbQueueSetComment_forAssetCollectionWithGUID_info___block_invoke_3;
  v7[3] = &unk_278E92610;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  v10 = *(a1 + 64);
  [v6 eventQueuePerformBlockOnObservers:v7];
}

void __73__MSASServerSideModel_dbQueueSetComment_forAssetCollectionWithGUID_info___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFindCommentChange:a1[5] inAssetCollection:a1[6] inAlbum:a1[7] info:a1[8]];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFindCommentChange:a1[5] inAssetCollection:a1[6] inAlbum:a1[7]];
  }
}

- (BOOL)dbQueueCommentWithID:(int)d assetCollectionGUID:(id)iD outObject:(id *)object outGUID:(id *)uID outTimestamp:(id *)timestamp outIsCaption:(BOOL *)caption outUserInfoData:(id *)data
{
  iDCopy = iD;
  v16 = [(MSASModelBase *)self statementForString:@"select obj, GUID, timestamp, isCaption, userInfo from Comments where id = ? and assetCollectionGUID = ?;"];
  v17 = sqlite3_bind_int(v16, 1, d);
  v18 = v17;
  MSSqliteTrapForDBLockError(v17);
  if (v18 || (v19 = MSSqliteBindStringOrNull(v16, 2, iDCopy), v20 = v19, MSSqliteTrapForDBLockError(v19), v20) || (v23 = sqlite3_step(v16), v23 == 101))
  {
LABEL_3:
    v21 = 0;
    if (!v16)
    {
      goto LABEL_5;
    }

LABEL_4:
    sqlite3_reset(v16);
    goto LABEL_5;
  }

  if (v23 != 100)
  {
    MSLogSqliteError([(MSASModelBase *)self dbQueueDB], self, 2889);
    goto LABEL_3;
  }

  if (object)
  {
    *object = MSSqliteObjectFromStatementColumn(v16, 0);
  }

  if (uID)
  {
    *uID = MSSqliteStringFromStatementColumn(v16, 1);
  }

  if (timestamp)
  {
    *timestamp = MSSqliteDateFromTimeIntervalStatementColumn(v16, 2);
  }

  if (caption)
  {
    *caption = sqlite3_column_int(v16, 3) != 0;
  }

  if (data)
  {
    *data = MSSqliteDataFromStatementColumn(v16, 4);
  }

  v21 = 1;
  if (v16)
  {
    goto LABEL_4;
  }

LABEL_5:

  return v21;
}

- (BOOL)dbQueueCommentWithGUID:(id)d outObject:(id *)object outID:(unint64_t *)iD outTimestamp:(id *)timestamp outAssetCollectionGUID:(id *)uID outIsCaption:(BOOL *)caption outUserInfoData:(id *)data
{
  dCopy = d;
  v16 = [(MSASModelBase *)self statementForString:@"select obj, id, timestamp, assetCollectionGUID, isCaption, userInfo from Comments where GUID = ?;"];
  v17 = MSSqliteBindStringOrNull(v16, 1, dCopy);

  MSSqliteTrapForDBLockError(v17);
  if (v17 || (v20 = sqlite3_step(v16), v20 == 101))
  {
LABEL_2:
    v18 = 0;
    if (!v16)
    {
      return v18;
    }

LABEL_3:
    sqlite3_reset(v16);
    return v18;
  }

  if (v20 != 100)
  {
    MSLogSqliteError([(MSASModelBase *)self dbQueueDB], self, 2864);
    goto LABEL_2;
  }

  if (object)
  {
    *object = MSSqliteObjectFromStatementColumn(v16, 0);
  }

  if (iD)
  {
    *iD = sqlite3_column_int(v16, 1);
  }

  if (timestamp)
  {
    *timestamp = MSSqliteDateFromTimeIntervalStatementColumn(v16, 2);
  }

  if (uID)
  {
    *uID = MSSqliteStringFromStatementColumn(v16, 3);
  }

  if (caption)
  {
    *caption = sqlite3_column_int(v16, 4) != 0;
  }

  if (data)
  {
    *data = MSSqliteDataFromStatementColumn(v16, 5);
  }

  v18 = 1;
  if (v16)
  {
    goto LABEL_3;
  }

  return v18;
}

- (void)dbQueueDeleteAssetCollectionWithGUID:(id)d info:(id)info
{
  v48 = *MEMORY[0x277D85DE8];
  dCopy = d;
  infoCopy = info;
  v45 = 0;
  v46 = 0;
  v8 = [(MSASServerSideModel *)self dbQueueAssetCollectionWithGUID:dCopy outObject:&v46 outCtag:0 outAlbumGUID:&v45 outBatchDate:0 outPhotoDate:0 outPhotoNumber:0 outUserInfoData:0];
  v9 = v46;
  v10 = v45;
  if (v8)
  {
    v35 = v9;
    v36 = infoCopy;
    v11 = [MEMORY[0x277CBEB38] MSASDictionaryWithCopyOfDictionary:infoCopy];
    v12 = [v11 MSASAddEventIsDueToAssetCollectionDeletionAssetCollectionGUID:dCopy];

    [(MSASModelBase *)self dbQueueBeginTransaction];
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v13 = [(MSASServerSideModel *)self dbQueueCommentsForAssetCollectionWithGUID:dCopy];
    v14 = [v13 countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v42;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v42 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v41 + 1) + 8 * i);
          v19 = objc_autoreleasePoolPush();
          gUID = [v18 GUID];
          [(MSASServerSideModel *)self dbQueueDeleteCommentWithGUID:gUID info:v12];

          objc_autoreleasePoolPop(v19);
        }

        v15 = [v13 countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v15);
    }

    [(MSASModelBase *)self dbQueueEndTransaction];
    [(MSASServerSideModel *)self dbQueueDeleteAllAssetCollectionMetadataForAssetCollectionWithGUID:dCopy info:v12];
    v21 = [(MSASModelBase *)self statementForString:@"delete from AssetCollections where GUID = ?;"];
    v22 = MSSqliteBindStringOrNull(v21, 1, dCopy);
    v23 = v22;
    MSSqliteTrapForDBLockError(v22);
    if (!v23)
    {
      v24 = sqlite3_step(v21);
      MSSqliteTrapForDBLockError(v24);
    }

    v9 = v35;
    if (v21)
    {
      sqlite3_reset(v21);
    }

    v25 = [(MSASServerSideModel *)self dbQueueLookupOrCreateAlbumWithGUID:v10];
    commandQueue = [(MSASServerSideModel *)self commandQueue];
    [commandQueue MSASModel:self didFindDeletedAssetCollection:v35 inAlbum:v25 info:v12];

    eventQueue = [(MSASServerSideModel *)self eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__MSASServerSideModel_dbQueueDeleteAssetCollectionWithGUID_info___block_invoke;
    block[3] = &unk_278E92660;
    block[4] = self;
    v38 = v35;
    v28 = v25;
    v39 = v28;
    v29 = v12;
    v40 = v29;
    dispatch_async(eventQueue, block);

    v30 = [(MSASModelBase *)self statementForString:@"select count(GUID) from AssetCollections where albumGUID = ?"];
    v31 = MSSqliteBindStringOrNull(v30, 1, v10);
    v32 = v31;
    MSSqliteTrapForDBLockError(v31);
    infoCopy = v36;
    if (!v32)
    {
      v34 = sqlite3_step(v30);
      if (v34 != 101)
      {
        if (v34 == 100)
        {
          if (!sqlite3_column_int(v30, 0))
          {
            [(MSASServerSideModel *)self dbQueueSetUnviewedState:0 onAlbumWithGUID:v10 info:v29];
          }
        }

        else
        {
          MSLogSqliteError([(MSASModelBase *)self dbQueueDB], self, 2836);
        }
      }
    }

    if (v30)
    {
      sqlite3_reset(v30);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __65__MSASServerSideModel_dbQueueDeleteAssetCollectionWithGUID_info___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__MSASServerSideModel_dbQueueDeleteAssetCollectionWithGUID_info___block_invoke_2;
  v7[3] = &unk_278E925D8;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [v6 eventQueuePerformBlockOnObservers:v7];
}

void __65__MSASServerSideModel_dbQueueDeleteAssetCollectionWithGUID_info___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFindDeletedAssetCollection:a1[5] inAlbum:a1[6] info:a1[7]];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFindDeletedAssetCollection:a1[5] inAlbum:a1[6]];
  }
}

- (void)dbQueueSetAssetCollection:(id)collection inAlbumWithGUID:(id)d info:(id)info
{
  v68 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  dCopy = d;
  infoCopy = info;
  v65 = 0;
  v11 = [(MSASServerSideModel *)self dbQueueAlbumWithGUID:dCopy outObject:&v65 outName:0 outCtag:0 outForeignCtag:0 outURLString:0 outUserInfoData:0 outClientOrgKey:0];
  v12 = v65;
  if (v11)
  {
    gUID = [collectionCopy GUID];
    v64 = 0;
    v53 = [(MSASServerSideModel *)self dbQueueAssetCollectionWithGUID:gUID outObject:0 outCtag:0 outAlbumGUID:0 outBatchDate:0 outPhotoDate:0 outPhotoNumber:0 outUserInfoData:&v64];
    v14 = v64;

    v15 = [(MSASModelBase *)self statementForString:@"insert or replace into AssetCollections (GUID, ctag, albumGUID, batchDate, photoDate, photoNumber, obj, userInfo) values (?, ?, ?, ?, ?, ?, ?, ?);"];
    gUID2 = [collectionCopy GUID];
    v17 = MSSqliteBindStringOrNull(v15, 1, gUID2);
    v18 = v17;
    MSSqliteTrapForDBLockError(v17);

    if (!v18)
    {
      ctag = [collectionCopy ctag];
      v20 = MSSqliteBindStringOrNull(v15, 2, ctag);
      v21 = v20;
      MSSqliteTrapForDBLockError(v20);

      if (!v21)
      {
        v22 = MSSqliteBindStringOrNull(v15, 3, dCopy);
        v23 = v22;
        MSSqliteTrapForDBLockError(v22);
        if (!v23)
        {
          metadata = [collectionCopy metadata];
          v25 = [metadata objectForKey:@"batchDateCreated"];

          v26 = MSSqliteBindTimeIntervalSinceReferenceDateOrNull(v15, 4, v25);
          LODWORD(metadata) = v26;
          MSSqliteTrapForDBLockError(v26);
          if (!metadata)
          {
            v51 = v25;
            metadata2 = [collectionCopy metadata];
            v28 = [metadata2 objectForKey:@"dateCreated"];

            v52 = v28;
            v29 = MSSqliteBindTimeIntervalSinceReferenceDateOrNull(v15, 5, v28);
            LODWORD(metadata2) = v29;
            MSSqliteTrapForDBLockError(v29);
            if (!metadata2)
            {
              v30 = sqlite3_bind_int64(v15, 6, [collectionCopy photoNumber]);
              v31 = v30;
              MSSqliteTrapForDBLockError(v30);
              if (!v31)
              {
                v63 = 0;
                v32 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:collectionCopy requiringSecureCoding:1 error:&v63];
                v33 = v63;
                v50 = v33;
                if (v32)
                {
                  v34 = MSSqliteBindDataOrNull(v15, 7, v32);
                }

                else
                {
                  v48 = MEMORY[0x277CCACA8];
                  v35 = v33;
                  userInfo = [v33 userInfo];
                  v37 = [v48 stringWithFormat:@"Failed to archive an assetCollection object. Error: %@ Info: %@", v35, userInfo];

                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543362;
                    selfCopy = v37;
                    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
                  }

                  v34 = MSSqliteBindDataOrNull(v15, 7, 0);
                  v32 = 0;
                }

                MSSqliteTrapForDBLockError(v34);
                if (!v34)
                {
                  v38 = MSSqliteBindDataOrNull(v15, 8, v14);
                  v39 = v38;
                  MSSqliteTrapForDBLockError(v38);
                  if (!v39)
                  {
                    v40 = sqlite3_step(v15);
                    v41 = v40;
                    MSSqliteTrapForDBLockError(v40);
                    if (v41 == 101)
                    {
                      v49 = v32;
                      commandQueue = [(MSASServerSideModel *)self commandQueue];
                      v43 = commandQueue;
                      if (v53)
                      {
                        v59[0] = MEMORY[0x277D85DD0];
                        v59[1] = 3221225472;
                        v59[2] = __70__MSASServerSideModel_dbQueueSetAssetCollection_inAlbumWithGUID_info___block_invoke;
                        v59[3] = &unk_278E92660;
                        v59[4] = self;
                        v54 = &v60;
                        v60 = collectionCopy;
                        v44 = &v61;
                        v61 = v12;
                        v45 = &v62;
                        v62 = infoCopy;
                        [v43 flushQueueCompletionBlock:v59];
                      }

                      else
                      {
                        [commandQueue MSASModel:self didFindNewAssetCollection:collectionCopy inAlbum:v12 info:infoCopy];

                        eventQueue = [(MSASServerSideModel *)self eventQueue];
                        block[0] = MEMORY[0x277D85DD0];
                        block[1] = 3221225472;
                        block[2] = __70__MSASServerSideModel_dbQueueSetAssetCollection_inAlbumWithGUID_info___block_invoke_4;
                        block[3] = &unk_278E92660;
                        block[4] = self;
                        v54 = &v56;
                        v56 = collectionCopy;
                        v44 = &v57;
                        v57 = v12;
                        v45 = &v58;
                        v58 = infoCopy;
                        v43 = eventQueue;
                        dispatch_async(eventQueue, block);
                      }

                      v32 = v49;
                    }
                  }
                }
              }
            }

            v25 = v51;
          }
        }
      }
    }

    if (v15)
    {
      sqlite3_reset(v15);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Rejecting asset collection destined for non-existent album.", buf, 0xCu);
  }

  v47 = *MEMORY[0x277D85DE8];
}

void __70__MSASServerSideModel_dbQueueSetAssetCollection_inAlbumWithGUID_info___block_invoke(id *a1)
{
  v2 = [a1[4] eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__MSASServerSideModel_dbQueueSetAssetCollection_inAlbumWithGUID_info___block_invoke_2;
  block[3] = &unk_278E92660;
  v7 = *(a1 + 2);
  v3 = *(&v7 + 1);
  v4 = a1[6];
  v5 = a1[7];
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  dispatch_async(v2, block);
}

void __70__MSASServerSideModel_dbQueueSetAssetCollection_inAlbumWithGUID_info___block_invoke_4(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__MSASServerSideModel_dbQueueSetAssetCollection_inAlbumWithGUID_info___block_invoke_5;
  v7[3] = &unk_278E925D8;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [v6 eventQueuePerformBlockOnObservers:v7];
}

void __70__MSASServerSideModel_dbQueueSetAssetCollection_inAlbumWithGUID_info___block_invoke_5(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFindNewAssetCollection:a1[5] inAlbum:a1[6] info:a1[7]];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFindNewAssetCollection:a1[5] inAlbum:a1[6]];
  }
}

void __70__MSASServerSideModel_dbQueueSetAssetCollection_inAlbumWithGUID_info___block_invoke_2(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__MSASServerSideModel_dbQueueSetAssetCollection_inAlbumWithGUID_info___block_invoke_3;
  v7[3] = &unk_278E925D8;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [v6 eventQueuePerformBlockOnObservers:v7];
}

void __70__MSASServerSideModel_dbQueueSetAssetCollection_inAlbumWithGUID_info___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFindAssetCollectionChange:a1[5] inAlbum:a1[6] info:a1[7]];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFindAssetCollectionChange:a1[5] inAlbum:a1[6]];
  }
}

- (BOOL)dbQueueAssetCollectionWithGUID:(id)d outObject:(id *)object outCtag:(id *)ctag outAlbumGUID:(id *)iD outBatchDate:(id *)date outPhotoDate:(id *)photoDate outPhotoNumber:(int64_t *)number outUserInfoData:(id *)self0
{
  dCopy = d;
  v17 = [(MSASModelBase *)self statementForString:@"select obj, ctag, albumGUID, batchDate, photoDate, photoNumber, userInfo from AssetCollections where GUID = ?;"];
  v18 = MSSqliteBindStringOrNull(v17, 1, dCopy);

  MSSqliteTrapForDBLockError(v18);
  if (v18 || (v21 = sqlite3_step(v17), v21 == 101))
  {
LABEL_2:
    v19 = 0;
    if (!v17)
    {
      return v19;
    }

LABEL_3:
    sqlite3_reset(v17);
    return v19;
  }

  if (v21 != 100)
  {
    MSLogSqliteError([(MSASModelBase *)self dbQueueDB], self, 2716);
    goto LABEL_2;
  }

  if (object)
  {
    *object = MSSqliteObjectFromStatementColumn(v17, 0);
  }

  if (ctag)
  {
    *ctag = MSSqliteStringFromStatementColumn(v17, 1);
  }

  if (iD)
  {
    *iD = MSSqliteStringFromStatementColumn(v17, 2);
  }

  if (date)
  {
    *date = MSSqliteDateFromTimeIntervalStatementColumn(v17, 3);
  }

  if (photoDate)
  {
    *photoDate = MSSqliteDateFromTimeIntervalStatementColumn(v17, 4);
  }

  if (number)
  {
    *number = sqlite3_column_int64(v17, 5);
  }

  if (data)
  {
    *data = MSSqliteDataFromStatementColumn(v17, 6);
  }

  v19 = 1;
  if (v17)
  {
    goto LABEL_3;
  }

  return v19;
}

- (void)dbQueueDeleteInvitationForAlbumWithGUID:(id)d info:(id)info
{
  infoCopy = info;
  v9 = 0;
  v7 = [(MSASServerSideModel *)self dbQueueInvitationWithAlbumGUID:d outObject:0 outInvitationGUID:&v9 outEmail:0 outUserInfoData:0];
  v8 = v9;
  if (v7)
  {
    [(MSASServerSideModel *)self dbQueueDeleteInvitationWithGUID:v8 info:infoCopy];
  }
}

- (void)dbQueueDeleteInvitationWithGUID:(id)d info:(id)info
{
  dCopy = d;
  infoCopy = info;
  v20 = 0;
  v8 = [(MSASServerSideModel *)self dbQueueInvitationWithGUID:dCopy outObject:&v20 outAlbumGUID:0 outEmail:0 outUserInfoData:0];
  v9 = v20;
  if (v8)
  {
    v10 = [(MSASModelBase *)self statementForString:@"delete from Invitations where GUID = ?;"];
    v11 = sqlite3_bind_text(v10, 1, [dCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    v12 = v11;
    MSSqliteTrapForDBLockError(v11);
    if (!v12)
    {
      v13 = sqlite3_step(v10);
      v14 = v13;
      MSSqliteTrapForDBLockError(v13);
      if (v14 == 101)
      {
        commandQueue = [(MSASServerSideModel *)self commandQueue];
        [commandQueue MSASModel:self didFindDeletedInvitation:v9 info:infoCopy];

        eventQueue = [(MSASServerSideModel *)self eventQueue];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __60__MSASServerSideModel_dbQueueDeleteInvitationWithGUID_info___block_invoke;
        v17[3] = &unk_278E92638;
        v17[4] = self;
        v18 = v9;
        v19 = infoCopy;
        dispatch_async(eventQueue, v17);
      }
    }

    if (v10)
    {
      sqlite3_reset(v10);
    }
  }
}

void __60__MSASServerSideModel_dbQueueDeleteInvitationWithGUID_info___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__MSASServerSideModel_dbQueueDeleteInvitationWithGUID_info___block_invoke_2;
  v3[3] = &unk_278E925A8;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 eventQueuePerformBlockOnObservers:v3];
}

void __60__MSASServerSideModel_dbQueueDeleteInvitationWithGUID_info___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFindDeletedInvitation:a1[5] info:a1[6]];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFindDeletedInvitation:a1[5]];
  }
}

- (void)dbQueueSetInvitation:(id)invitation info:(id)info
{
  v50 = *MEMORY[0x277D85DE8];
  invitationCopy = invitation;
  infoCopy = info;
  gUID = [invitationCopy GUID];
  v47 = 0;
  v9 = [(MSASServerSideModel *)self dbQueueInvitationWithGUID:gUID outObject:0 outAlbumGUID:0 outEmail:0 outUserInfoData:&v47];
  v10 = v47;

  v11 = [(MSASModelBase *)self statementForString:@"insert or replace into Invitations (GUID, albumGUID, email, obj, userInfo) values (?, ?, ?, ?, ?);"];
  gUID2 = [invitationCopy GUID];
  v13 = MSSqliteBindStringOrNull(v11, 1, gUID2);
  v14 = v13;
  MSSqliteTrapForDBLockError(v13);

  if (!v14)
  {
    albumGUID = [invitationCopy albumGUID];
    v16 = MSSqliteBindStringOrNull(v11, 2, albumGUID);
    v17 = v16;
    MSSqliteTrapForDBLockError(v16);

    if (!v17)
    {
      email = [invitationCopy email];
      v19 = MSSqliteBindStringOrNull(v11, 3, email);
      v20 = v19;
      MSSqliteTrapForDBLockError(v19);

      if (!v20)
      {
        v46 = 0;
        v21 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:invitationCopy requiringSecureCoding:1 error:&v46];
        v22 = v46;
        v23 = v22;
        if (v21)
        {
          v24 = v11;
          v25 = v21;
        }

        else
        {
          v26 = MEMORY[0x277CCACA8];
          userInfo = [v22 userInfo];
          v28 = [v26 stringWithFormat:@"Failed to archive an invitation object. Error: %@ Info: %@", v23, userInfo];

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v49 = v28;
            _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
          }

          v24 = v11;
          v25 = 0;
        }

        v29 = MSSqliteBindDataOrNull(v24, 4, v25);
        v30 = v29;
        MSSqliteTrapForDBLockError(v29);
        if (!v30)
        {
          v31 = MSSqliteBindDataOrNull(v11, 5, v10);
          v32 = v31;
          MSSqliteTrapForDBLockError(v31);
          if (!v32)
          {
            v33 = sqlite3_step(v11);
            v34 = v33;
            MSSqliteTrapForDBLockError(v33);
            if (v34 == 101)
            {
              commandQueue = [(MSASServerSideModel *)self commandQueue];
              eventQueue = commandQueue;
              if (v9)
              {
                v43[0] = MEMORY[0x277D85DD0];
                v43[1] = 3221225472;
                v43[2] = __49__MSASServerSideModel_dbQueueSetInvitation_info___block_invoke;
                v43[3] = &unk_278E92638;
                v43[4] = self;
                v37 = &v44;
                v44 = invitationCopy;
                v38 = &v45;
                v45 = infoCopy;
                [eventQueue flushQueueCompletionBlock:v43];
              }

              else
              {
                [commandQueue MSASModel:self didFindNewInvitation:invitationCopy info:infoCopy];

                eventQueue = [(MSASServerSideModel *)self eventQueue];
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __49__MSASServerSideModel_dbQueueSetInvitation_info___block_invoke_4;
                block[3] = &unk_278E92638;
                block[4] = self;
                v37 = &v41;
                v41 = invitationCopy;
                v38 = &v42;
                v42 = infoCopy;
                dispatch_async(eventQueue, block);
              }
            }
          }
        }
      }
    }
  }

  if (v11)
  {
    sqlite3_reset(v11);
  }

  v39 = *MEMORY[0x277D85DE8];
}

void __49__MSASServerSideModel_dbQueueSetInvitation_info___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__MSASServerSideModel_dbQueueSetInvitation_info___block_invoke_2;
  block[3] = &unk_278E92638;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  dispatch_async(v2, block);
}

void __49__MSASServerSideModel_dbQueueSetInvitation_info___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__MSASServerSideModel_dbQueueSetInvitation_info___block_invoke_5;
  v3[3] = &unk_278E925A8;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 eventQueuePerformBlockOnObservers:v3];
}

void __49__MSASServerSideModel_dbQueueSetInvitation_info___block_invoke_5(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFindNewInvitation:a1[5] info:a1[6]];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFindNewInvitation:a1[5]];
  }
}

void __49__MSASServerSideModel_dbQueueSetInvitation_info___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__MSASServerSideModel_dbQueueSetInvitation_info___block_invoke_3;
  v3[3] = &unk_278E925A8;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 eventQueuePerformBlockOnObservers:v3];
}

void __49__MSASServerSideModel_dbQueueSetInvitation_info___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFindInvitationChange:a1[5] info:a1[6]];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFindInvitationChange:a1[5]];
  }
}

- (BOOL)dbQueueInvitationWithAlbumGUID:(id)d outObject:(id *)object outInvitationGUID:(id *)iD outEmail:(id *)email outUserInfoData:(id *)data
{
  dCopy = d;
  v13 = [(MSASModelBase *)self statementForString:@"select obj, GUID, email, userInfo from Invitations where albumGUID = ?;"];
  uTF8String = [dCopy UTF8String];

  v15 = sqlite3_bind_text(v13, 1, uTF8String, -1, 0xFFFFFFFFFFFFFFFFLL);
  LODWORD(dCopy) = v15;
  MSSqliteTrapForDBLockError(v15);
  if (dCopy || (v18 = sqlite3_step(v13), v18 == 101))
  {
LABEL_2:
    v16 = 0;
    if (!v13)
    {
      return v16;
    }

LABEL_3:
    sqlite3_reset(v13);
    return v16;
  }

  if (v18 != 100)
  {
    MSLogSqliteError([(MSASModelBase *)self dbQueueDB], self, 2602);
    goto LABEL_2;
  }

  if (object)
  {
    *object = MSSqliteObjectFromStatementColumn(v13, 0);
  }

  if (iD)
  {
    *iD = MSSqliteStringFromStatementColumn(v13, 1);
  }

  if (email)
  {
    *email = MSSqliteStringFromStatementColumn(v13, 2);
  }

  if (data)
  {
    *data = MSSqliteDataFromStatementColumn(v13, 3);
  }

  v16 = 1;
  if (v13)
  {
    goto LABEL_3;
  }

  return v16;
}

- (BOOL)dbQueueInvitationWithGUID:(id)d outObject:(id *)object outAlbumGUID:(id *)iD outEmail:(id *)email outUserInfoData:(id *)data
{
  dCopy = d;
  v13 = [(MSASModelBase *)self statementForString:@"select obj, albumGUID, email, userInfo from Invitations where GUID = ?;"];
  uTF8String = [dCopy UTF8String];

  v15 = sqlite3_bind_text(v13, 1, uTF8String, -1, 0xFFFFFFFFFFFFFFFFLL);
  LODWORD(dCopy) = v15;
  MSSqliteTrapForDBLockError(v15);
  if (dCopy || (v18 = sqlite3_step(v13), v18 == 101))
  {
LABEL_2:
    v16 = 0;
    if (!v13)
    {
      return v16;
    }

LABEL_3:
    sqlite3_reset(v13);
    return v16;
  }

  if (v18 != 100)
  {
    MSLogSqliteError([(MSASModelBase *)self dbQueueDB], self, 2578);
    goto LABEL_2;
  }

  if (object)
  {
    *object = MSSqliteObjectFromStatementColumn(v13, 0);
  }

  if (iD)
  {
    *iD = MSSqliteStringFromStatementColumn(v13, 1);
  }

  if (email)
  {
    *email = MSSqliteStringFromStatementColumn(v13, 2);
  }

  if (data)
  {
    *data = MSSqliteDataFromStatementColumn(v13, 3);
  }

  v16 = 1;
  if (v13)
  {
    goto LABEL_3;
  }

  return v16;
}

- (void)dbQueueDeleteAccessControlWithGUID:(id)d info:(id)info
{
  dCopy = d;
  infoCopy = info;
  v24 = 0;
  v25 = 0;
  v8 = [(MSASServerSideModel *)self dbQueueAccessControlWithGUID:dCopy outObject:&v25 outAlbumGUID:&v24 outEmail:0 outUserInfoData:0];
  v9 = v25;
  v10 = v24;
  if (v8)
  {
    v11 = [(MSASModelBase *)self statementForString:@"delete from AccessControls where GUID = ?;"];
    v12 = MSSqliteBindStringOrNull(v11, 1, dCopy);
    v13 = v12;
    MSSqliteTrapForDBLockError(v12);
    if (!v13)
    {
      v14 = sqlite3_step(v11);
      v15 = v14;
      MSSqliteTrapForDBLockError(v14);
      if (v15 == 101)
      {
        v16 = [(MSASServerSideModel *)self dbQueueLookupOrCreateAlbumWithGUID:v10];
        commandQueue = [(MSASServerSideModel *)self commandQueue];
        [commandQueue MSASModel:self didFindDeletedAccessControl:v9 inAlbum:v16 info:infoCopy];

        eventQueue = [(MSASServerSideModel *)self eventQueue];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __63__MSASServerSideModel_dbQueueDeleteAccessControlWithGUID_info___block_invoke;
        v20[3] = &unk_278E92660;
        v20[4] = self;
        v21 = v9;
        v22 = v16;
        v23 = infoCopy;
        v19 = v16;
        dispatch_async(eventQueue, v20);
      }
    }

    if (v11)
    {
      sqlite3_reset(v11);
    }
  }
}

void __63__MSASServerSideModel_dbQueueDeleteAccessControlWithGUID_info___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__MSASServerSideModel_dbQueueDeleteAccessControlWithGUID_info___block_invoke_2;
  v7[3] = &unk_278E925D8;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [v6 eventQueuePerformBlockOnObservers:v7];
}

void __63__MSASServerSideModel_dbQueueDeleteAccessControlWithGUID_info___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFindDeletedAccessControl:a1[5] inAlbum:a1[6] info:a1[7]];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFindDeletedAccessControl:a1[5] inAlbum:a1[6]];
  }
}

- (void)dbQueueSetAccessControl:(id)control info:(id)info
{
  v71 = *MEMORY[0x277D85DE8];
  controlCopy = control;
  infoCopy = info;
  albumGUID = [controlCopy albumGUID];
  v68 = 0;
  v9 = [(MSASServerSideModel *)self dbQueueAlbumWithGUID:albumGUID outObject:&v68 outName:0 outCtag:0 outForeignCtag:0 outURLString:0 outUserInfoData:0 outClientOrgKey:0];
  v10 = v68;

  if (v9)
  {
    gUID = [controlCopy GUID];
    v66 = 0;
    v67 = 0;
    v12 = [(MSASServerSideModel *)self dbQueueAccessControlWithGUID:gUID outObject:&v67 outAlbumGUID:0 outEmail:0 outUserInfoData:&v66];
    v13 = v67;
    v14 = v66;

    if (v12 && [v13 isEqualToSharingRelationship:controlCopy])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        selfCopy2 = self;
        _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Not updating access control with an equivalent object.", buf, 0xCu);
      }
    }

    else
    {
      v15 = [(MSASModelBase *)self statementForString:@"insert or replace into AccessControls (GUID, email, albumGUID, obj, userInfo) values (?, ?, ?, ?, ?);"];
      gUID2 = [controlCopy GUID];
      v17 = MSSqliteBindStringOrNull(v15, 1, gUID2);
      v18 = v17;
      MSSqliteTrapForDBLockError(v17);

      if (!v18)
      {
        email = [controlCopy email];
        v20 = MSSqliteBindStringOrNull(v15, 2, email);
        v21 = v20;
        MSSqliteTrapForDBLockError(v20);

        if (!v21)
        {
          albumGUID2 = [controlCopy albumGUID];
          v23 = MSSqliteBindStringOrNull(v15, 3, albumGUID2);
          v24 = v23;
          MSSqliteTrapForDBLockError(v23);

          if (!v24)
          {
            v65 = 0;
            v25 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:controlCopy requiringSecureCoding:1 error:&v65];
            v26 = v65;
            v55 = v26;
            v56 = v25;
            if (v25)
            {
              v27 = v15;
              v28 = v25;
            }

            else
            {
              v53 = MEMORY[0x277CCACA8];
              v29 = v26;
              userInfo = [v26 userInfo];
              v31 = [v53 stringWithFormat:@"Failed to archive an accessControl object. Error: %@ Info: %@", v29, userInfo];

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                selfCopy2 = v31;
                _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
              }

              v27 = v15;
              v28 = 0;
            }

            v32 = MSSqliteBindDataOrNull(v27, 4, v28);
            v33 = v32;
            MSSqliteTrapForDBLockError(v32);
            if (!v33)
            {
              v34 = MSSqliteBindDataOrNull(v15, 5, v14);
              v35 = v34;
              MSSqliteTrapForDBLockError(v34);
              if (!v35)
              {
                v36 = sqlite3_step(v15);
                v37 = v36;
                MSSqliteTrapForDBLockError(v36);
                if (v37 == 101)
                {
                  v38 = [MEMORY[0x277CBEB38] MSASDictionaryWithCopyOfDictionary:infoCopy];
                  if (v12)
                  {
                    if ([v13 state] != 1 || objc_msgSend(controlCopy, "state") != 2)
                    {
                      v39 = [MEMORY[0x277CCABB0] numberWithBool:1];
                      [v38 setObject:v39 forKey:@"notInteresting"];
                    }

                    queue = [(MSASServerSideModel *)self commandQueue];
                    v40 = v38;
                    v61[0] = MEMORY[0x277D85DD0];
                    v61[1] = 3221225472;
                    v61[2] = __52__MSASServerSideModel_dbQueueSetAccessControl_info___block_invoke;
                    v61[3] = &unk_278E92660;
                    v61[4] = self;
                    v54 = &v62;
                    v62 = controlCopy;
                    v41 = &v63;
                    v42 = &v64;
                    v63 = v10;
                    v64 = v40;
                    v43 = v40;
                    v44 = queue;
                    [queue flushQueueCompletionBlock:v61];
                  }

                  else
                  {
                    v45 = [MEMORY[0x277CCABB0] numberWithBool:1];
                    [v38 setObject:v45 forKey:@"notInteresting"];

                    commandQueue = [(MSASServerSideModel *)self commandQueue];
                    [commandQueue MSASModel:self didFindNewAccessControl:controlCopy inAlbum:v10 info:v38];

                    queuea = [(MSASServerSideModel *)self eventQueue];
                    v40 = v38;
                    block[0] = MEMORY[0x277D85DD0];
                    block[1] = 3221225472;
                    block[2] = __52__MSASServerSideModel_dbQueueSetAccessControl_info___block_invoke_4;
                    block[3] = &unk_278E92660;
                    block[4] = self;
                    v54 = &v58;
                    v58 = controlCopy;
                    v41 = &v59;
                    v42 = &v60;
                    v59 = v10;
                    v60 = v40;
                    v47 = v40;
                    v44 = queuea;
                    dispatch_async(queuea, block);
                  }
                }
              }
            }
          }
        }
      }

      if (v15)
      {
        sqlite3_reset(v15);
      }

      v48 = +[MSASPersonInfoManager sharedManager];
      v49 = v48;
      if (v48)
      {
        [v48 updateWithSharingRelationship:controlCopy];
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    selfCopy2 = self;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Rejecting access control destined for non-existent album.", buf, 0xCu);
  }

  v50 = *MEMORY[0x277D85DE8];
}

void __52__MSASServerSideModel_dbQueueSetAccessControl_info___block_invoke(id *a1)
{
  v2 = [a1[4] eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__MSASServerSideModel_dbQueueSetAccessControl_info___block_invoke_2;
  block[3] = &unk_278E92660;
  v7 = *(a1 + 2);
  v3 = *(&v7 + 1);
  v4 = a1[6];
  v5 = a1[7];
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  dispatch_async(v2, block);
}

void __52__MSASServerSideModel_dbQueueSetAccessControl_info___block_invoke_4(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__MSASServerSideModel_dbQueueSetAccessControl_info___block_invoke_5;
  v7[3] = &unk_278E925D8;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [v6 eventQueuePerformBlockOnObservers:v7];
}

void __52__MSASServerSideModel_dbQueueSetAccessControl_info___block_invoke_5(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFindNewAccessControl:a1[5] inAlbum:a1[6] info:a1[7]];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFindNewAccessControl:a1[5] inAlbum:a1[6]];
  }
}

void __52__MSASServerSideModel_dbQueueSetAccessControl_info___block_invoke_2(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__MSASServerSideModel_dbQueueSetAccessControl_info___block_invoke_3;
  v7[3] = &unk_278E925D8;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [v6 eventQueuePerformBlockOnObservers:v7];
}

void __52__MSASServerSideModel_dbQueueSetAccessControl_info___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFindAccessControlChange:a1[5] inAlbum:a1[6] info:a1[7]];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFindAccessControlChange:a1[5] inAlbum:a1[6]];
  }
}

- (BOOL)dbQueueAccessControlWithGUID:(id)d outObject:(id *)object outAlbumGUID:(id *)iD outEmail:(id *)email outUserInfoData:(id *)data
{
  dCopy = d;
  v13 = [(MSASModelBase *)self statementForString:@"select obj, email, albumGUID, userInfo from AccessControls where GUID = ?;"];
  v14 = MSSqliteBindStringOrNull(v13, 1, dCopy);

  MSSqliteTrapForDBLockError(v14);
  if (v14 || (v17 = sqlite3_step(v13), v17 == 101))
  {
LABEL_2:
    v15 = 0;
    if (!v13)
    {
      return v15;
    }

LABEL_3:
    sqlite3_reset(v13);
    return v15;
  }

  if (v17 != 100)
  {
    MSLogSqliteError([(MSASModelBase *)self dbQueueDB], self, 2445);
    goto LABEL_2;
  }

  if (object)
  {
    *object = MSSqliteObjectFromStatementColumn(v13, 0);
  }

  if (email)
  {
    *email = MSSqliteStringFromStatementColumn(v13, 1);
  }

  if (iD)
  {
    *iD = MSSqliteStringFromStatementColumn(v13, 2);
  }

  if (data)
  {
    *data = MSSqliteDataFromStatementColumn(v13, 3);
  }

  v15 = 1;
  if (v13)
  {
    goto LABEL_3;
  }

  return v15;
}

- (void)dbQueueDeleteAlbumWithGUID:(id)d info:(id)info
{
  v57 = *MEMORY[0x277D85DE8];
  dCopy = d;
  infoCopy = info;
  v54 = 0;
  v8 = [(MSASServerSideModel *)self dbQueueAlbumWithGUID:dCopy outObject:&v54 outName:0 outCtag:0 outForeignCtag:0 outURLString:0 outUserInfoData:0 outClientOrgKey:0];
  v9 = v54;
  v10 = v9;
  if (v8)
  {
    v41 = v9;
    v42 = infoCopy;
    v11 = [MEMORY[0x277CBEB38] MSASDictionaryWithCopyOfDictionary:infoCopy];
    v12 = [v11 MSASAddEventIsDueToAlbumDeletionAlbumGUID:dCopy];

    v13 = [(MSASServerSideModel *)self dbQueueAccessControlGUIDsForAlbumWithGUID:dCopy];
    [(MSASModelBase *)self dbQueueBeginTransaction];
    v52 = 0u;
    v53 = 0u;
    v51 = 0u;
    v50 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v51;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v51 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v50 + 1) + 8 * i);
          v20 = objc_autoreleasePoolPush();
          [(MSASServerSideModel *)self dbQueueDeleteAccessControlWithGUID:v19 info:v12];
          objc_autoreleasePoolPop(v20);
        }

        v16 = [v14 countByEnumeratingWithState:&v50 objects:v56 count:16];
      }

      while (v16);
    }

    [(MSASModelBase *)self dbQueueEndTransaction];
    v21 = [(MSASServerSideModel *)self dbQueueInvitationForAlbumWithGUID:dCopy];
    v22 = v21;
    if (v21)
    {
      gUID = [v21 GUID];
      [(MSASServerSideModel *)self dbQueueDeleteInvitationWithGUID:gUID info:v12];
    }

    v40 = v22;
    v24 = [(MSASServerSideModel *)self dbQueueAssetCollectionGUIDsInAlbumWithGUID:dCopy];
    [(MSASModelBase *)self dbQueueBeginTransaction];
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v25 = v24;
    v26 = [v25 countByEnumeratingWithState:&v46 objects:v55 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v47;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v47 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v46 + 1) + 8 * j);
          v31 = objc_autoreleasePoolPush();
          [(MSASServerSideModel *)self dbQueueDeleteAssetCollectionWithGUID:v30 info:v12];
          objc_autoreleasePoolPop(v31);
        }

        v27 = [v25 countByEnumeratingWithState:&v46 objects:v55 count:16];
      }

      while (v27);
    }

    [(MSASModelBase *)self dbQueueEndTransaction];
    [(MSASServerSideModel *)self dbQueueDeleteAllAlbumMetadataForAlbumWithGUID:dCopy info:v12];
    v32 = [(MSASModelBase *)self statementForString:@"delete from Albums where GUID = ?;"];
    v33 = MSSqliteBindStringOrNull(v32, 1, dCopy);
    v34 = v33;
    MSSqliteTrapForDBLockError(v33);
    v10 = v41;
    infoCopy = v42;
    if (!v34)
    {
      v35 = sqlite3_step(v32);
      v36 = v35;
      MSSqliteTrapForDBLockError(v35);
      if (v36 == 101)
      {
        commandQueue = [(MSASServerSideModel *)self commandQueue];
        [commandQueue MSASModel:self didFindDeletedAlbum:v41 info:v42];

        eventQueue = [(MSASServerSideModel *)self eventQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __55__MSASServerSideModel_dbQueueDeleteAlbumWithGUID_info___block_invoke;
        block[3] = &unk_278E92638;
        block[4] = self;
        v44 = v41;
        v45 = v12;
        dispatch_async(eventQueue, block);
      }
    }

    if (v32)
    {
      sqlite3_reset(v32);
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

void __55__MSASServerSideModel_dbQueueDeleteAlbumWithGUID_info___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __55__MSASServerSideModel_dbQueueDeleteAlbumWithGUID_info___block_invoke_2;
  v3[3] = &unk_278E925A8;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 eventQueuePerformBlockOnObservers:v3];
}

void __55__MSASServerSideModel_dbQueueDeleteAlbumWithGUID_info___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFindDeletedAlbum:a1[5] info:a1[6]];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFindDeletedAlbum:a1[5]];
  }
}

- (void)dbQueueUpdateAlbumCtag:(id)ctag
{
  v32 = *MEMORY[0x277D85DE8];
  ctagCopy = ctag;
  gUID = [ctagCopy GUID];
  v29 = 0;
  v6 = [(MSASServerSideModel *)self dbQueueAlbumWithGUID:gUID outObject:0 outName:0 outCtag:0 outForeignCtag:0 outURLString:0 outUserInfoData:&v29 outClientOrgKey:0];
  v7 = v29;

  if (v6)
  {
    v8 = [(MSASModelBase *)self statementForString:@"update or ignore Albums set obj = ?, ctag = ?, foreignCtag = ? where GUID = ?;"];
    v28 = 0;
    v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:ctagCopy requiringSecureCoding:1 error:&v28];
    v10 = v28;
    v11 = v10;
    if (v9)
    {
      v12 = MSSqliteBindDataOrNull(v8, 1, v9);
    }

    else
    {
      v13 = MEMORY[0x277CCACA8];
      userInfo = [v10 userInfo];
      v15 = [v13 stringWithFormat:@"Failed to archive an album object. Error: %@ Info: %@", v11, userInfo];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v31 = v15;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      v12 = sqlite3_bind_null(v8, 1);
    }

    v16 = v12;
    MSSqliteTrapForDBLockError(v12);
    if (!v16)
    {
      ctag = [ctagCopy ctag];
      v18 = MSSqliteBindStringOrNull(v8, 2, ctag);
      v19 = v18;
      MSSqliteTrapForDBLockError(v18);

      if (!v19)
      {
        foreignCtag = [ctagCopy foreignCtag];
        v21 = MSSqliteBindStringOrNull(v8, 3, foreignCtag);
        v22 = v21;
        MSSqliteTrapForDBLockError(v21);

        if (!v22)
        {
          gUID2 = [ctagCopy GUID];
          v24 = MSSqliteBindStringOrNull(v8, 4, gUID2);
          v25 = v24;
          MSSqliteTrapForDBLockError(v24);

          if (!v25)
          {
            v26 = sqlite3_step(v8);
            MSSqliteTrapForDBLockError(v26);
          }
        }
      }
    }

    if (v8)
    {
      sqlite3_reset(v8);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)dbQueueSetAlbum:(id)album info:(id)info
{
  v59 = *MEMORY[0x277D85DE8];
  albumCopy = album;
  infoCopy = info;
  gUID = [albumCopy GUID];
  v56 = 0;
  v9 = [(MSASServerSideModel *)self dbQueueAlbumWithGUID:gUID outObject:0 outName:0 outCtag:0 outForeignCtag:0 outURLString:0 outUserInfoData:&v56 outClientOrgKey:0];
  v10 = v56;

  metadata = [albumCopy metadata];
  v12 = [metadata objectForKey:@"name"];

  if (!v9 && [albumCopy relationshipState] == 1)
  {
    daemon = [(MSASServerSideModel *)self daemon];
    [daemon updateOwnerReputationScoreForAlbum:albumCopy];
  }

  v14 = [(MSASModelBase *)self statementForString:@"insert or replace into Albums (GUID, name, ctag, foreignCtag, obj, url, userInfo, clientOrgKey) values (?, ?, ?, ?, ?, ?, ?, ?);"];
  gUID2 = [albumCopy GUID];
  v16 = MSSqliteBindStringOrNull(v14, 1, gUID2);
  v17 = v16;
  MSSqliteTrapForDBLockError(v16);

  if (!v17)
  {
    v18 = MSSqliteBindStringOrNull(v14, 2, v12);
    v19 = v18;
    MSSqliteTrapForDBLockError(v18);
    if (!v19)
    {
      ctag = [albumCopy ctag];
      v21 = MSSqliteBindStringOrNull(v14, 3, ctag);
      v22 = v21;
      MSSqliteTrapForDBLockError(v21);

      if (!v22)
      {
        foreignCtag = [albumCopy foreignCtag];
        v24 = MSSqliteBindStringOrNull(v14, 4, foreignCtag);
        v25 = v24;
        MSSqliteTrapForDBLockError(v24);

        if (!v25)
        {
          v55 = 0;
          v26 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:albumCopy requiringSecureCoding:1 error:&v55];
          v27 = v55;
          v48 = v27;
          if (v26)
          {
            v28 = MSSqliteBindDataOrNull(v14, 5, v26);
          }

          else
          {
            v29 = MEMORY[0x277CCACA8];
            v30 = v27;
            userInfo = [v27 userInfo];
            v32 = [v29 stringWithFormat:@"Failed to archive an album object. Error: %@ Info: %@", v30, userInfo];

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v58 = v32;
              _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
            }

            v28 = MSSqliteBindDataOrNull(v14, 5, 0);
            v26 = 0;
          }

          MSSqliteTrapForDBLockError(v28);
          if (!v28)
          {
            uRLString = [albumCopy URLString];
            v34 = MSSqliteBindStringOrNull(v14, 6, uRLString);
            v35 = v34;
            MSSqliteTrapForDBLockError(v34);

            if (!v35)
            {
              v36 = MSSqliteBindDataOrNull(v14, 7, v10);
              v37 = v36;
              MSSqliteTrapForDBLockError(v36);
              if (!v37)
              {
                clientOrgKey = [albumCopy clientOrgKey];
                v39 = MSSqliteBindStringOrNull(v14, 8, clientOrgKey);
                v40 = v39;
                MSSqliteTrapForDBLockError(v39);

                if (!v40)
                {
                  v41 = sqlite3_step(v14);
                  v42 = v41;
                  MSSqliteTrapForDBLockError(v41);
                  if (v42 == 101)
                  {
                    commandQueue = [(MSASServerSideModel *)self commandQueue];
                    eventQueue = commandQueue;
                    if (v9)
                    {
                      v52[0] = MEMORY[0x277D85DD0];
                      v52[1] = 3221225472;
                      v52[2] = __44__MSASServerSideModel_dbQueueSetAlbum_info___block_invoke;
                      v52[3] = &unk_278E92638;
                      v52[4] = self;
                      v45 = &v53;
                      v53 = albumCopy;
                      v46 = &v54;
                      v54 = infoCopy;
                      [eventQueue flushQueueCompletionBlock:v52];
                    }

                    else
                    {
                      [commandQueue MSASModel:self didFindNewAlbum:albumCopy info:infoCopy];

                      eventQueue = [(MSASServerSideModel *)self eventQueue];
                      block[0] = MEMORY[0x277D85DD0];
                      block[1] = 3221225472;
                      block[2] = __44__MSASServerSideModel_dbQueueSetAlbum_info___block_invoke_4;
                      block[3] = &unk_278E92638;
                      block[4] = self;
                      v45 = &v50;
                      v50 = albumCopy;
                      v46 = &v51;
                      v51 = infoCopy;
                      dispatch_async(eventQueue, block);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (v14)
  {
    sqlite3_reset(v14);
  }

  v47 = *MEMORY[0x277D85DE8];
}

void __44__MSASServerSideModel_dbQueueSetAlbum_info___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__MSASServerSideModel_dbQueueSetAlbum_info___block_invoke_2;
  block[3] = &unk_278E92638;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  dispatch_async(v2, block);
}

void __44__MSASServerSideModel_dbQueueSetAlbum_info___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__MSASServerSideModel_dbQueueSetAlbum_info___block_invoke_5;
  v3[3] = &unk_278E925A8;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 eventQueuePerformBlockOnObservers:v3];
}

void __44__MSASServerSideModel_dbQueueSetAlbum_info___block_invoke_5(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFindNewAlbum:a1[5] info:a1[6]];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFindNewAlbum:a1[5]];
  }
}

void __44__MSASServerSideModel_dbQueueSetAlbum_info___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__MSASServerSideModel_dbQueueSetAlbum_info___block_invoke_3;
  v3[3] = &unk_278E925A8;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 eventQueuePerformBlockOnObservers:v3];
}

void __44__MSASServerSideModel_dbQueueSetAlbum_info___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFindAlbumMetadataChange:a1[5] info:a1[6]];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFindAlbumMetadataChange:a1[5]];
  }
}

- (BOOL)dbQueueAlbumWithGUID:(id)d outObject:(id *)object outName:(id *)name outCtag:(id *)ctag outForeignCtag:(id *)foreignCtag outURLString:(id *)string outUserInfoData:(id *)data outClientOrgKey:(id *)self0
{
  dCopy = d;
  v17 = [(MSASModelBase *)self statementForString:@"select obj, name, ctag, foreignCtag, url, userInfo, clientOrgKey from Albums where GUID = ?;"];
  v18 = MSSqliteBindStringOrNull(v17, 1, dCopy);

  MSSqliteTrapForDBLockError(v18);
  if (v18 || (v21 = sqlite3_step(v17), v21 == 101))
  {
LABEL_2:
    v19 = 0;
    if (!v17)
    {
      return v19;
    }

LABEL_3:
    sqlite3_reset(v17);
    return v19;
  }

  if (v21 != 100)
  {
    MSLogSqliteError([(MSASModelBase *)self dbQueueDB], self, 2284);
    goto LABEL_2;
  }

  if (object)
  {
    *object = MSSqliteObjectFromStatementColumn(v17, 0);
  }

  if (name)
  {
    *name = MSSqliteStringFromStatementColumn(v17, 1);
  }

  if (ctag)
  {
    *ctag = MSSqliteStringFromStatementColumn(v17, 2);
  }

  if (foreignCtag)
  {
    *foreignCtag = MSSqliteStringFromStatementColumn(v17, 3);
  }

  if (string)
  {
    *string = MSSqliteStringFromStatementColumn(v17, 4);
  }

  if (data)
  {
    *data = MSSqliteDataFromStatementColumn(v17, 5);
  }

  if (key)
  {
    *key = MSSqliteStringFromStatementColumn(v17, 6);
  }

  v19 = 1;
  if (v17)
  {
    goto LABEL_3;
  }

  return v19;
}

- (id)focusAssetCollectionGUID
{
  stateMachine = [(MSASServerSideModel *)self stateMachine];
  focusAssetCollectionGUID = [stateMachine focusAssetCollectionGUID];

  return focusAssetCollectionGUID;
}

- (void)setFocusAssetCollectionGUID:(id)d
{
  dCopy = d;
  stateMachine = [(MSASServerSideModel *)self stateMachine];
  [stateMachine setFocusAssetCollectionGUID:dCopy];
}

- (void)setFocusAlbumGUID:(id)d
{
  dCopy = d;
  stateMachine = [(MSASServerSideModel *)self stateMachine];
  [stateMachine setFocusAlbumGUID:dCopy];
}

- (id)serverSideConfiguration
{
  stateMachine = [(MSASServerSideModel *)self stateMachine];
  serverSideConfiguration = [stateMachine serverSideConfiguration];

  return serverSideConfiguration;
}

- (void)retrieveAssetsFromAssetCollectionsWithGUIDs:(id)ds assetTypeFlags:(int)flags
{
  dsCopy = ds;
  if ([dsCopy count])
  {
    dbQueue = [(MSASModelBase *)self dbQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__MSASServerSideModel_retrieveAssetsFromAssetCollectionsWithGUIDs_assetTypeFlags___block_invoke;
    block[3] = &unk_278E91F20;
    v9 = dsCopy;
    selfCopy = self;
    flagsCopy = flags;
    dispatch_async(dbQueue, block);
  }
}

void __82__MSASServerSideModel_retrieveAssetsFromAssetCollectionsWithGUIDs_assetTypeFlags___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (!v3)
  {
    v5 = 0;
    goto LABEL_38;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v42;
  v23 = *v42;
  do
  {
    v7 = 0;
    v24 = v4;
    do
    {
      if (*v42 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v41 + 1) + 8 * v7);
      context = objc_autoreleasePoolPush();
      v9 = *(a1 + 40);
      v39 = 0;
      v40 = 0;
      v10 = [v9 dbQueueAssetCollectionWithGUID:v8 outObject:&v40 outCtag:0 outAlbumGUID:&v39 outBatchDate:0 outPhotoDate:0 outPhotoNumber:0 outUserInfoData:0];
      v30 = v40;
      v29 = v39;
      if (!v10)
      {
        v21 = [*(a1 + 40) eventQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __82__MSASServerSideModel_retrieveAssetsFromAssetCollectionsWithGUIDs_assetTypeFlags___block_invoke_4;
        block[3] = &unk_278E91F20;
        block[4] = *(a1 + 40);
        block[5] = v8;
        v32 = *(a1 + 48);
        dispatch_async(v21, block);
        goto LABEL_33;
      }

      if (v5 && ([v29 isEqualToString:v5] & 1) == 0 && objc_msgSend(v2, "count"))
      {
        [*(a1 + 40) retrieveAssets:v2 inAlbumWithGUID:v5];
        [v2 removeAllObjects];
      }

      v27 = v7;
      v26 = v29;

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v11 = [v30 assets];
      v12 = [v11 countByEnumeratingWithState:&v35 objects:v45 count:16];
      if (!v12)
      {

        goto LABEL_32;
      }

      v13 = v12;
      v14 = 0;
      v15 = *v36;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v36 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v35 + 1) + 8 * i);
          v18 = [v17 mediaAssetType];
          v19 = v18;
          v20 = *(a1 + 48);
          if (((v20 & 1) == 0 || v18 != 2) && ((v20 & 2) == 0 || v18 != 3))
          {
            if ((v20 & 2) != 0 && [v30 isPhotoIris] && v19 == 7)
            {
              goto LABEL_25;
            }

            if (v19 != 5)
            {
              continue;
            }
          }

          v14 = 1;
LABEL_25:
          [v2 addObject:v17];
        }

        v13 = [v11 countByEnumeratingWithState:&v35 objects:v45 count:16];
      }

      while (v13);

      v6 = v23;
      v4 = v24;
      if (v14)
      {
        v5 = v26;
        v7 = v27;
        goto LABEL_34;
      }

LABEL_32:
      v21 = [*(a1 + 40) eventQueue];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __82__MSASServerSideModel_retrieveAssetsFromAssetCollectionsWithGUIDs_assetTypeFlags___block_invoke_2;
      v33[3] = &unk_278E91F20;
      v33[4] = *(a1 + 40);
      v33[5] = v8;
      v34 = *(a1 + 48);
      dispatch_async(v21, v33);
      v5 = v26;
      v7 = v27;
LABEL_33:

LABEL_34:
      objc_autoreleasePoolPop(context);
      ++v7;
    }

    while (v7 != v4);
    v4 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  }

  while (v4);
LABEL_38:

  if (v2)
  {
    [*(a1 + 40) retrieveAssets:v2 inAlbumWithGUID:v5];
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __82__MSASServerSideModel_retrieveAssetsFromAssetCollectionsWithGUIDs_assetTypeFlags___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __82__MSASServerSideModel_retrieveAssetsFromAssetCollectionsWithGUIDs_assetTypeFlags___block_invoke_3;
  v2[3] = &unk_278E91F48;
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  return [v3 eventQueuePerformBlockOnObservers:v2];
}

uint64_t __82__MSASServerSideModel_retrieveAssetsFromAssetCollectionsWithGUIDs_assetTypeFlags___block_invoke_4(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __82__MSASServerSideModel_retrieveAssetsFromAssetCollectionsWithGUIDs_assetTypeFlags___block_invoke_5;
  v2[3] = &unk_278E91F48;
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  return [v3 eventQueuePerformBlockOnObservers:v2];
}

void __82__MSASServerSideModel_retrieveAssetsFromAssetCollectionsWithGUIDs_assetTypeFlags___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:*(a1 + 32) didFailToFindAssetsForAssetCollectionGUID:*(a1 + 40) assetTypeFlags:*(a1 + 48)];
  }
}

void __82__MSASServerSideModel_retrieveAssetsFromAssetCollectionsWithGUIDs_assetTypeFlags___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:*(a1 + 32) didFailToFindAssetsForAssetCollectionGUID:*(a1 + 40) assetTypeFlags:*(a1 + 48)];
  }
}

- (void)retrieveAssets:(id)assets inAlbumWithGUID:(id)d
{
  assetsCopy = assets;
  dCopy = d;
  v8 = [assetsCopy count];
  if (dCopy && v8)
  {
    v9 = [assetsCopy copy];
    v10 = [dCopy copy];
    dbQueue = [(MSASModelBase *)self dbQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__MSASServerSideModel_retrieveAssets_inAlbumWithGUID___block_invoke;
    block[3] = &unk_278E92638;
    v15 = v9;
    selfCopy = self;
    v17 = v10;
    v12 = v10;
    v13 = v9;
    dispatch_async(dbQueue, block);
  }
}

void __54__MSASServerSideModel_retrieveAssets_inAlbumWithGUID___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v22;
    do
    {
      v5 = 0;
      do
      {
        if (*v22 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v21 + 1) + 8 * v5);
        v7 = objc_autoreleasePoolPush();
        v8 = [v6 batchCreationDate];
        if (v8)
        {
          v9 = [v6 photoCreationDate];
          if (v9)
          {
            v10 = v9;
            v1 = v9;
LABEL_15:

            goto LABEL_16;
          }

          v1 = 0;
        }

        v11 = [v6 assetCollectionGUID];

        if (v8)
        {
        }

        if (v11)
        {
          v12 = *(a1 + 40);
          v13 = [v6 assetCollectionGUID];
          v19 = 0;
          v20 = 0;
          v14 = [v12 dbQueueAssetCollectionWithGUID:v13 outObject:0 outCtag:0 outAlbumGUID:0 outBatchDate:&v20 outPhotoDate:&v19 outPhotoNumber:0 outUserInfoData:0];
          v8 = v20;
          v10 = v19;

          if (v14)
          {
            [v6 setBatchCreationDate:v8];
            [v6 setPhotoCreationDate:v10];
          }

          goto LABEL_15;
        }

LABEL_16:
        objc_autoreleasePoolPop(v7);
        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v3);
  }

  v15 = [*(a1 + 40) stateMachine];
  [v15 retrieveAssets:*(a1 + 32) inAlbumWithGUID:*(a1 + 48)];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)forgetEverythingInfo:(id)info completionBlock:(id)block
{
  infoCopy = info;
  blockCopy = block;
  eventQueue = [(MSASServerSideModel *)self eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__MSASServerSideModel_forgetEverythingInfo_completionBlock___block_invoke;
  block[3] = &unk_278E91E38;
  v12 = infoCopy;
  selfCopy = self;
  v14 = blockCopy;
  v9 = blockCopy;
  v10 = infoCopy;
  dispatch_async(eventQueue, block);
}

void __60__MSASServerSideModel_forgetEverythingInfo_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] MSASDictionaryWithCopyOfDictionary:*(a1 + 32)];
  v3 = [v2 MSASAddIsLocalChange];

  v4 = *(a1 + 40);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __60__MSASServerSideModel_forgetEverythingInfo_completionBlock___block_invoke_2;
  v11 = &unk_278E91EF8;
  v12 = v4;
  v5 = v3;
  v13 = v5;
  [v4 eventQueuePerformBlockOnObservers:&v8];
  v6 = [*(a1 + 40) observers];
  [v6 removeAllObjects];

  if (*(a1 + 48))
  {
    v7 = [*(a1 + 40) eventQueue];
    dispatch_async(v7, *(a1 + 48));
  }
}

void __60__MSASServerSideModel_forgetEverythingInfo_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModelWillBeForgotten:*(a1 + 32) info:*(a1 + 40)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModelWillBeForgotten:*(a1 + 32)];
  }
}

- (void)deleteCommentWithGUID:(id)d info:(id)info
{
  dCopy = d;
  infoCopy = info;
  if (dCopy)
  {
    dbQueue = [(MSASModelBase *)self dbQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__MSASServerSideModel_deleteCommentWithGUID_info___block_invoke;
    block[3] = &unk_278E92638;
    v10 = infoCopy;
    selfCopy = self;
    v12 = dCopy;
    dispatch_async(dbQueue, block);
  }
}

void __50__MSASServerSideModel_deleteCommentWithGUID_info___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] MSASDictionaryWithCopyOfDictionary:*(a1 + 32)];
  v3 = [v2 MSASAddIsLocalChange];

  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v21 = 0;
  v20 = 0;
  v6 = [v4 dbQueueLookupOrCreateCommentWithGUID:v5 outAssetCollection:&v21 outAlbum:&v20];
  v7 = v21;
  v8 = v20;
  v9 = *(a1 + 40);
  if (v6)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10 || v8 == 0)
  {
    v12 = [v9 eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__MSASServerSideModel_deleteCommentWithGUID_info___block_invoke_2;
    block[3] = &unk_278E92688;
    block[4] = *(a1 + 40);
    v16 = v6;
    v17 = v7;
    v18 = v8;
    v19 = *(a1 + 32);
    dispatch_async(v12, block);
  }

  else
  {
    v13 = [v9 stateMachine];
    v14 = [MEMORY[0x277CBEA60] arrayWithObject:v6];
    [v13 deleteComments:v14 inAssetCollection:v7 inAlbum:v8 info:v3];
  }

  [*(a1 + 40) dbQueueDeleteCommentWithGUID:*(a1 + 48) info:v3];
}

void __50__MSASServerSideModel_deleteCommentWithGUID_info___block_invoke_2(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__MSASServerSideModel_deleteCommentWithGUID_info___block_invoke_3;
  v7[3] = &unk_278E92610;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  v10 = *(a1 + 64);
  [v6 eventQueuePerformBlockOnObservers:v7];
}

void __50__MSASServerSideModel_deleteCommentWithGUID_info___block_invoke_3(void *a1, void *a2)
{
  v18 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];
    v7 = a1[8];
    v8 = MEMORY[0x277CCA9B8];
    v9 = MSCFCopyLocalizedString(@"ERROR_MODEL_INVALID_COMMENT");
    v10 = [v8 MSErrorWithDomain:@"MSASModelErrorDomain" code:4 description:v9];
    [v18 MSASModel:v3 didFinishDeletingComment:v4 fromAssetCollection:v5 inAlbum:v6 info:v7 error:v10];
  }

  if (objc_opt_respondsToSelector())
  {
    v11 = a1[4];
    v12 = a1[5];
    v14 = a1[6];
    v13 = a1[7];
    v15 = MEMORY[0x277CCA9B8];
    v16 = MSCFCopyLocalizedString(@"ERROR_MODEL_INVALID_COMMENT");
    v17 = [v15 MSErrorWithDomain:@"MSASModelErrorDomain" code:4 description:v16];
    [v18 MSASModel:v11 didFinishDeletingComment:v12 fromAssetCollection:v14 inAlbum:v13 error:v17];
  }
}

- (void)addComments:(id)comments toAssetCollectionWithGUID:(id)d info:(id)info
{
  commentsCopy = comments;
  dCopy = d;
  infoCopy = info;
  v11 = [commentsCopy count];
  if (dCopy && v11)
  {
    dbQueue = [(MSASModelBase *)self dbQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __66__MSASServerSideModel_addComments_toAssetCollectionWithGUID_info___block_invoke;
    v13[3] = &unk_278E92660;
    v14 = infoCopy;
    selfCopy = self;
    v16 = dCopy;
    v17 = commentsCopy;
    dispatch_async(dbQueue, v13);
  }
}

void __66__MSASServerSideModel_addComments_toAssetCollectionWithGUID_info___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] MSASDictionaryWithCopyOfDictionary:*(a1 + 32)];
  v3 = [v2 MSASAddIsLocalChange];

  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v31 = 0;
  v6 = [v4 dbQueueLookupOrCreateAssetCollectionWithGUID:v5 outAlbum:&v31];
  v7 = v31;
  v8 = *(a1 + 40);
  if (v7)
  {
    [v8 dbQueueBeginTransaction];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v9 = *(a1 + 56);
    v10 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v28;
      do
      {
        v13 = 0;
        do
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v27 + 1) + 8 * v13);
          v15 = objc_autoreleasePoolPush();
          [*(a1 + 40) dbQueueSetComment:v14 forAssetCollectionWithGUID:*(a1 + 48) info:v3];
          objc_autoreleasePoolPop(v15);
          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v11);
    }

    [*(a1 + 40) dbQueueEndTransaction];
    v16 = [*(a1 + 40) stateMachine];
    [v16 addComments:*(a1 + 56) toAssetCollection:v6 inAlbum:v7 info:v3];
  }

  else
  {
    v17 = [v8 eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__MSASServerSideModel_addComments_toAssetCollectionWithGUID_info___block_invoke_2;
    block[3] = &unk_278E92688;
    v18 = *(a1 + 56);
    v19 = *(a1 + 40);
    v22 = v18;
    v23 = v19;
    v24 = v6;
    v25 = 0;
    v26 = v3;
    dispatch_async(v17, block);

    v16 = v22;
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __66__MSASServerSideModel_addComments_toAssetCollectionWithGUID_info___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v17;
    do
    {
      v5 = 0;
      do
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v16 + 1) + 8 * v5);
        v7 = objc_autoreleasePoolPush();
        v9 = *(a1 + 40);
        v8 = *(a1 + 48);
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __66__MSASServerSideModel_addComments_toAssetCollectionWithGUID_info___block_invoke_3;
        v12[3] = &unk_278E92610;
        v12[4] = v9;
        v12[5] = v6;
        v13 = v8;
        v14 = *(a1 + 56);
        v15 = *(a1 + 64);
        [v9 eventQueuePerformBlockOnObservers:v12];

        objc_autoreleasePoolPop(v7);
        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __66__MSASServerSideModel_addComments_toAssetCollectionWithGUID_info___block_invoke_3(void *a1, void *a2)
{
  v18 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];
    v7 = a1[8];
    v8 = MEMORY[0x277CCA9B8];
    v9 = MSCFCopyLocalizedString(@"ERROR_MODEL_INVALID_ALBUM");
    v10 = [v8 MSErrorWithDomain:@"MSASModelErrorDomain" code:3 description:v9];
    [v18 MSASModel:v3 didFinishAddingComment:v4 toAssetCollection:v5 inAlbum:v6 info:v7 error:v10];
  }

  if (objc_opt_respondsToSelector())
  {
    v11 = a1[4];
    v12 = a1[5];
    v14 = a1[6];
    v13 = a1[7];
    v15 = MEMORY[0x277CCA9B8];
    v16 = MSCFCopyLocalizedString(@"ERROR_MODEL_INVALID_ALBUM");
    v17 = [v15 MSErrorWithDomain:@"MSASModelErrorDomain" code:3 description:v16];
    [v18 MSASModel:v11 didFinishAddingComment:v12 toAssetCollection:v14 inAlbum:v13 error:v17];
  }
}

- (void)markCommentsForAssetCollectionWithGUID:(id)d asViewedWithLastViewedDate:(id)date info:(id)info
{
  dCopy = d;
  dateCopy = date;
  infoCopy = info;
  if (dCopy)
  {
    dbQueue = [(MSASModelBase *)self dbQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __94__MSASServerSideModel_markCommentsForAssetCollectionWithGUID_asViewedWithLastViewedDate_info___block_invoke;
    v12[3] = &unk_278E92660;
    v13 = infoCopy;
    selfCopy = self;
    v15 = dCopy;
    v16 = dateCopy;
    dispatch_async(dbQueue, v12);
  }
}

void __94__MSASServerSideModel_markCommentsForAssetCollectionWithGUID_asViewedWithLastViewedDate_info___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] MSASDictionaryWithCopyOfDictionary:*(a1 + 32)];
  v3 = [v2 MSASAddIsLocalChange];

  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v28 = 0;
  v27 = 0;
  v7 = [v5 dbQueueAssetCollectionWithGUID:v6 outObject:&v28 outCtag:0 outAlbumGUID:&v27 outBatchDate:0 outPhotoDate:0 outPhotoNumber:0 outUserInfoData:0];
  v8 = v28;
  v9 = v27;
  v10 = 0;
  if (v7)
  {
    v11 = *(a1 + 40);
    v26 = 0;
    v12 = [v11 dbQueueAlbumWithGUID:v9 outObject:&v26 outName:0 outCtag:0 outForeignCtag:0 outURLString:0 outUserInfoData:0 outClientOrgKey:0];
    v10 = v26;
    v13 = *(a1 + 40);
    if (v12)
    {
      v14 = [v13 dbQueueMaximumCommentIDForAssetCollectionWithGUID:*(a1 + 48)];
      if (v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = &unk_2858CC160;
      }

      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", objc_msgSend(v15, "intValue")];
      [*(a1 + 40) dbQueueSetAssetCollectionMetadataAssetCollectionGUID:*(a1 + 48) key:@"lastcommentposition" value:v16 info:v3];
      [v4 setObject:v16 forKey:@"lastcommentposition"];
      v17 = MEMORY[0x277CCACA8];
      [*(a1 + 56) timeIntervalSinceReferenceDate];
      v19 = [v17 stringWithFormat:@"%f", v18];
      [*(a1 + 40) dbQueueSetAssetCollectionMetadataAssetCollectionGUID:*(a1 + 48) key:@"lastcommenttimestamp" value:v19 info:v3];
      [v4 setObject:v19 forKey:@"lastcommenttimestamp"];
      v20 = [*(a1 + 40) stateMachine];
      [v20 setAssetCollectionSyncedState:v4 forAssetCollection:v8 album:v10 info:v3];
    }

    else
    {
      v21 = [v13 eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __94__MSASServerSideModel_markCommentsForAssetCollectionWithGUID_asViewedWithLastViewedDate_info___block_invoke_307;
      block[3] = &unk_278E92660;
      block[4] = *(a1 + 40);
      v23 = v8;
      v10 = v10;
      v24 = v10;
      v25 = v3;
      dispatch_async(v21, block);
    }
  }

  [*(a1 + 40) dbQueueSetUnviewedState:0 onAssetCollectionWithGUID:*(a1 + 48) info:v3];
}

void __94__MSASServerSideModel_markCommentsForAssetCollectionWithGUID_asViewedWithLastViewedDate_info___block_invoke_307(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __94__MSASServerSideModel_markCommentsForAssetCollectionWithGUID_asViewedWithLastViewedDate_info___block_invoke_2;
  v7[3] = &unk_278E925D8;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [v6 eventQueuePerformBlockOnObservers:v7];
}

void __94__MSASServerSideModel_markCommentsForAssetCollectionWithGUID_asViewedWithLastViewedDate_info___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFinishMarkingCommentsAsViewedInAssetCollection:a1[5] inAlbum:a1[6] info:a1[7] error:0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFinishMarkingCommentsAsViewedInAssetCollection:a1[5] inAlbum:a1[6] error:0];
  }
}

- (void)deleteAssetCollectionsWithGUIDs:(id)ds
{
  dsCopy = ds;
  if (dsCopy)
  {
    dbQueue = [(MSASModelBase *)self dbQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __55__MSASServerSideModel_deleteAssetCollectionsWithGUIDs___block_invoke;
    v6[3] = &unk_278E927C8;
    v7 = dsCopy;
    selfCopy = self;
    dispatch_async(dbQueue, v6);
  }
}

void __55__MSASServerSideModel_deleteAssetCollectionsWithGUIDs___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v3)
  {
    v4 = v3;
    v28 = *v40;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v40 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v39 + 1) + 8 * i);
        v7 = *(a1 + 40);
        v37 = 0;
        v38 = 0;
        v8 = [v7 dbQueueAssetCollectionWithGUID:v6 outObject:&v38 outCtag:0 outAlbumGUID:&v37 outBatchDate:0 outPhotoDate:0 outPhotoNumber:0 outUserInfoData:0];
        v9 = v38;
        v10 = v37;
        if (v8)
        {
          v11 = [v2 objectForKey:v10];
          if (!v11)
          {
            v11 = [MEMORY[0x277CBEB18] array];
          }

          [v11 addObject:v9];
          [v2 setObject:v11 forKey:v10];
        }

        else
        {
          v11 = [*(a1 + 40) eventQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __55__MSASServerSideModel_deleteAssetCollectionsWithGUIDs___block_invoke_2;
          block[3] = &unk_278E927C8;
          block[4] = *(a1 + 40);
          block[5] = v6;
          dispatch_async(v11, block);
        }

        [*(a1 + 40) dbQueueDeleteAssetCollectionWithGUID:v6 info:0];
        v12 = [*(a1 + 40) dbQueueLookupOrCreateAlbumWithGUID:v10];
        v13 = *(a1 + 40);
        v14 = [v12 GUID];
        LODWORD(v13) = [v13 dbQueueUnviewedAssetCollectionCountForAlbumWithGUID:v14];

        v15 = [*(a1 + 40) eventQueue];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __55__MSASServerSideModel_deleteAssetCollectionsWithGUIDs___block_invoke_4;
        v33[3] = &unk_278E91F20;
        v33[4] = *(a1 + 40);
        v34 = v12;
        v35 = v13;
        v16 = v12;
        dispatch_async(v15, v33);
      }

      v4 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v4);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v17 = [v2 allKeys];
  v18 = [v17 countByEnumeratingWithState:&v29 objects:v43 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v30;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v29 + 1) + 8 * j);
        v23 = [*(a1 + 40) dbQueueLookupOrCreateAlbumWithGUID:v22];
        v24 = [v2 objectForKey:v22];
        v25 = [*(a1 + 40) stateMachine];
        [v25 deleteAssetCollections:v24 inAlbum:v23 info:0];
      }

      v19 = [v17 countByEnumeratingWithState:&v29 objects:v43 count:16];
    }

    while (v19);
  }

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t __55__MSASServerSideModel_deleteAssetCollectionsWithGUIDs___block_invoke_2(int8x16_t *a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __55__MSASServerSideModel_deleteAssetCollectionsWithGUIDs___block_invoke_3;
  v3[3] = &unk_278E91EF8;
  v1 = a1[2];
  v4 = vextq_s8(v1, v1, 8uLL);
  return [v1.i64[0] eventQueuePerformBlockOnObservers:v3];
}

void __55__MSASServerSideModel_deleteAssetCollectionsWithGUIDs___block_invoke_3(uint64_t a1, void *a2)
{
  v9 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = objc_alloc_init(MSASAssetCollection);
    [(MSASAssetCollection *)v3 setGUID:*(a1 + 32)];
    v4 = *(a1 + 40);
    v5 = [v4 _invalidAssetCollectionGUIDErrorwithGUID:*(a1 + 32)];
    [v9 MSASModel:v4 didFinishDeletingAssetCollection:v3 fromAlbum:0 info:0 error:v5];
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = objc_alloc_init(MSASAssetCollection);
    [(MSASAssetCollection *)v6 setGUID:*(a1 + 32)];
    v7 = *(a1 + 40);
    v8 = [v7 _invalidAssetCollectionGUIDErrorwithGUID:*(a1 + 32)];
    [v9 MSASModel:v7 didFinishDeletingAssetCollection:v6 fromAlbum:0 error:v8];
  }
}

- (void)deleteAssetCollectionWithGUID:(id)d info:(id)info
{
  dCopy = d;
  infoCopy = info;
  if (dCopy)
  {
    dbQueue = [(MSASModelBase *)self dbQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__MSASServerSideModel_deleteAssetCollectionWithGUID_info___block_invoke;
    block[3] = &unk_278E92638;
    v10 = infoCopy;
    selfCopy = self;
    v12 = dCopy;
    dispatch_async(dbQueue, block);
  }
}

void __58__MSASServerSideModel_deleteAssetCollectionWithGUID_info___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] MSASDictionaryWithCopyOfDictionary:*(a1 + 32)];
  v3 = [v2 MSASAddIsLocalChange];

  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v27 = 0;
  v28 = 0;
  v6 = [v4 dbQueueAssetCollectionWithGUID:v5 outObject:&v28 outCtag:0 outAlbumGUID:&v27 outBatchDate:0 outPhotoDate:0 outPhotoNumber:0 outUserInfoData:0];
  v7 = v28;
  v8 = v27;
  v9 = *(a1 + 40);
  if (v6)
  {
    v10 = [v9 dbQueueLookupOrCreateAlbumWithGUID:v8];
    v11 = [*(a1 + 40) stateMachine];
    v12 = [MEMORY[0x277CBEA60] arrayWithObject:v7];
    [v11 deleteAssetCollections:v12 inAlbum:v10 info:v3];
  }

  else
  {
    v13 = [v9 eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__MSASServerSideModel_deleteAssetCollectionWithGUID_info___block_invoke_2;
    block[3] = &unk_278E92638;
    v14 = *(a1 + 48);
    block[4] = *(a1 + 40);
    v25 = v14;
    v26 = v3;
    dispatch_async(v13, block);

    v10 = 0;
  }

  [*(a1 + 40) dbQueueDeleteAssetCollectionWithGUID:*(a1 + 48) info:v3];
  v15 = *(a1 + 40);
  v16 = [v10 GUID];
  LODWORD(v15) = [v15 dbQueueUnviewedAssetCollectionCountForAlbumWithGUID:v16];

  v17 = [*(a1 + 40) eventQueue];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __58__MSASServerSideModel_deleteAssetCollectionWithGUID_info___block_invoke_4;
  v20[3] = &unk_278E91D70;
  v18 = *(a1 + 32);
  v20[4] = *(a1 + 40);
  v21 = v10;
  v23 = v15;
  v22 = v18;
  v19 = v10;
  dispatch_async(v17, v20);
}

void __58__MSASServerSideModel_deleteAssetCollectionWithGUID_info___block_invoke_2(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__MSASServerSideModel_deleteAssetCollectionWithGUID_info___block_invoke_3;
  v5[3] = &unk_278E925A8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 48);
  [v2 eventQueuePerformBlockOnObservers:v5];
}

void __58__MSASServerSideModel_deleteAssetCollectionWithGUID_info___block_invoke_3(void *a1, void *a2)
{
  v10 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = objc_alloc_init(MSASAssetCollection);
    [(MSASAssetCollection *)v3 setGUID:a1[4]];
    v5 = a1[5];
    v4 = a1[6];
    v6 = [v5 _invalidAssetCollectionGUIDErrorwithGUID:a1[4]];
    [v10 MSASModel:v5 didFinishDeletingAssetCollection:v3 fromAlbum:0 info:v4 error:v6];
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = objc_alloc_init(MSASAssetCollection);
    [(MSASAssetCollection *)v7 setGUID:a1[4]];
    v8 = a1[5];
    v9 = [v8 _invalidAssetCollectionGUIDErrorwithGUID:a1[4]];
    [v10 MSASModel:v8 didFinishDeletingAssetCollection:v7 fromAlbum:0 error:v9];
  }
}

- (void)addAssetCollections:(id)collections toAlbumWithGUID:(id)d info:(id)info
{
  v43 = *MEMORY[0x277D85DE8];
  collectionsCopy = collections;
  dCopy = d;
  infoCopy = info;
  v11 = [collectionsCopy count];
  v32 = dCopy;
  if (dCopy && v11)
  {
    selfCopy = self;
    v29 = infoCopy;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v30 = collectionsCopy;
    obj = collectionsCopy;
    v12 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (!v12)
    {
      mSMakeUUID = 0;
      date = 0;
      goto LABEL_20;
    }

    v13 = v12;
    mSMakeUUID = 0;
    date = 0;
    v16 = *v39;
    while (1)
    {
      v17 = 0;
      do
      {
        if (*v39 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v38 + 1) + 8 * v17);
        v19 = objc_autoreleasePoolPush();
        metadata = [v18 metadata];
        v21 = [metadata objectForKey:@"batchGUID"];
        if (!v21 || (v22 = v21, [metadata objectForKey:@"batchDateCreated"], v23 = objc_claimAutoreleasedReturnValue(), v23, v22, !v23))
        {
          if (date)
          {
            if (mSMakeUUID)
            {
LABEL_12:
              v24 = [metadata mutableCopy];
              [v24 setObject:date forKey:@"batchDateCreated"];
              [v24 setObject:mSMakeUUID forKey:@"batchGUID"];
              [v18 setMetadata:v24];

              goto LABEL_13;
            }
          }

          else
          {
            date = [MEMORY[0x277CBEAA8] date];
            if (mSMakeUUID)
            {
              goto LABEL_12;
            }
          }

          mSMakeUUID = [MEMORY[0x277CCACA8] MSMakeUUID];
          goto LABEL_12;
        }

LABEL_13:
        [v18 setAlbumGUID:v32];

        objc_autoreleasePoolPop(v19);
        ++v17;
      }

      while (v13 != v17);
      v25 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      v13 = v25;
      if (!v25)
      {
LABEL_20:

        dbQueue = [(MSASModelBase *)selfCopy dbQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __64__MSASServerSideModel_addAssetCollections_toAlbumWithGUID_info___block_invoke;
        block[3] = &unk_278E92660;
        infoCopy = v29;
        v34 = v29;
        v35 = selfCopy;
        v36 = v32;
        v37 = obj;
        dispatch_async(dbQueue, block);

        collectionsCopy = v30;
        break;
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __64__MSASServerSideModel_addAssetCollections_toAlbumWithGUID_info___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] MSASDictionaryWithCopyOfDictionary:*(a1 + 32)];
  v3 = [v2 MSASAddIsLocalChange];

  v4 = [*(a1 + 40) dbQueueLookupOrCreateAlbumWithGUID:*(a1 + 48)];
  [*(a1 + 40) dbQueueBeginTransaction];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = *(a1 + 56);
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      v9 = 0;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v28 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        [*(a1 + 40) dbQueueSetAssetCollection:v10 inAlbumWithGUID:*(a1 + 48) info:v3];
        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  [*(a1 + 40) dbQueueEndTransaction];
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:30];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = *(a1 + 56);
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      v17 = 0;
      do
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v24 + 1) + 8 * v17);
        v19 = objc_autoreleasePoolPush();
        [v12 addObject:{v18, v24}];
        if ([v12 count] >= 0x1E)
        {
          v20 = [*(a1 + 40) stateMachine];
          [v20 addAssetCollections:v12 toAlbum:v4 info:v3];

          v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:30];

          v12 = v21;
        }

        objc_autoreleasePoolPop(v19);
        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v15);
  }

  if ([v12 count])
  {
    v22 = [*(a1 + 40) stateMachine];
    [v22 addAssetCollections:v12 toAlbum:v4 info:v3];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)setMultipleContributorsEnabled:(BOOL)enabled forAlbumWithGUID:(id)d info:(id)info completionBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  if (dCopy)
  {
    v12 = [MEMORY[0x277CBEB38] MSASDictionaryWithCopyOfDictionary:info];
    mSASAddIsLocalChange = [v12 MSASAddIsLocalChange];

    dbQueue = [(MSASModelBase *)self dbQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __92__MSASServerSideModel_setMultipleContributorsEnabled_forAlbumWithGUID_info_completionBlock___block_invoke;
    block[3] = &unk_278E91EB8;
    block[4] = self;
    enabledCopy = enabled;
    v17 = dCopy;
    v18 = mSASAddIsLocalChange;
    v19 = blockCopy;
    v15 = mSASAddIsLocalChange;
    dispatch_async(dbQueue, block);
  }
}

void __92__MSASServerSideModel_setMultipleContributorsEnabled_forAlbumWithGUID_info_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dbQueueLookupOrCreateAlbumWithGUID:*(a1 + 40)];
  objc_initWeak(&location, *(a1 + 32));
  v3 = [*(a1 + 32) stateMachine];
  v4 = *(a1 + 64);
  v5 = *(a1 + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __92__MSASServerSideModel_setMultipleContributorsEnabled_forAlbumWithGUID_info_completionBlock___block_invoke_2;
  v6[3] = &unk_278E91E90;
  objc_copyWeak(&v9, &location);
  v10 = *(a1 + 64);
  v8 = *(a1 + 56);
  v7 = *(a1 + 40);
  [v3 setMultipleContributorsEnabled:v4 forAlbum:v2 info:v5 completionBlock:v6];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __92__MSASServerSideModel_setMultipleContributorsEnabled_forAlbumWithGUID_info_completionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (v6)
  {
    v9 = MEMORY[0x277CCA9B8];
    if (*(a1 + 56))
    {
      v10 = @"ERROR_MODEL_CANNOT_SET_MULTIPLECONTRIBUTORS";
    }

    else
    {
      v10 = @"ERROR_MODEL_CANNOT_UNSET_MULTIPLECONTRIBUTORS";
    }

    v11 = MSCFCopyLocalizedString(v10);
    v12 = [v9 MSErrorWithDomain:@"MSASModelErrorDomain" code:7 description:v11 underlyingError:v6];

    v13 = [v8 eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __92__MSASServerSideModel_setMultipleContributorsEnabled_forAlbumWithGUID_info_completionBlock___block_invoke_3;
    block[3] = &unk_278E91E38;
    v14 = *(a1 + 40);
    v29 = v12;
    v30 = v14;
    v28 = v5;
    v15 = v12;
    v16 = v5;
    dispatch_async(v13, block);
  }

  else
  {
    v17 = [WeakRetained dbQueue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __92__MSASServerSideModel_setMultipleContributorsEnabled_forAlbumWithGUID_info_completionBlock___block_invoke_4;
    v20[3] = &unk_278E91E68;
    objc_copyWeak(&v25, (a1 + 48));
    v18 = *(a1 + 32);
    v26 = *(a1 + 56);
    v21 = v18;
    v22 = v5;
    v23 = v8;
    v24 = *(a1 + 40);
    v19 = v5;
    dispatch_async(v17, v20);

    objc_destroyWeak(&v25);
  }
}

void __92__MSASServerSideModel_setMultipleContributorsEnabled_forAlbumWithGUID_info_completionBlock___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = *(a1 + 32);
  v12 = 0;
  v4 = [WeakRetained dbQueueAlbumWithGUID:v3 outObject:&v12 outName:0 outCtag:0 outForeignCtag:0 outURLString:0 outUserInfoData:0 outClientOrgKey:0];
  v5 = v12;

  if (v4)
  {
    if (*(a1 + 72))
    {
      v6 = @"1";
    }

    else
    {
      v6 = @"0";
    }

    [v5 setMetadataValue:v6 forKey:@"allowcontributions"];
    v7 = objc_loadWeakRetained((a1 + 64));
    [v7 dbQueueSetAlbum:v5 info:*(a1 + 40)];
  }

  v8 = [*(a1 + 48) eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__MSASServerSideModel_setMultipleContributorsEnabled_forAlbumWithGUID_info_completionBlock___block_invoke_5;
  block[3] = &unk_278E927A0;
  v11 = *(a1 + 56);
  v10 = *(a1 + 40);
  dispatch_async(v8, block);
}

- (void)setPublicAccessEnabled:(BOOL)enabled forAlbumWithGUID:(id)d info:(id)info completionBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  if (dCopy)
  {
    v12 = [MEMORY[0x277CBEB38] MSASDictionaryWithCopyOfDictionary:info];
    mSASAddIsLocalChange = [v12 MSASAddIsLocalChange];

    dbQueue = [(MSASModelBase *)self dbQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84__MSASServerSideModel_setPublicAccessEnabled_forAlbumWithGUID_info_completionBlock___block_invoke;
    block[3] = &unk_278E91EB8;
    block[4] = self;
    enabledCopy = enabled;
    v17 = dCopy;
    v18 = mSASAddIsLocalChange;
    v19 = blockCopy;
    v15 = mSASAddIsLocalChange;
    dispatch_async(dbQueue, block);
  }
}

void __84__MSASServerSideModel_setPublicAccessEnabled_forAlbumWithGUID_info_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dbQueueLookupOrCreateAlbumWithGUID:*(a1 + 40)];
  objc_initWeak(&location, *(a1 + 32));
  v3 = [*(a1 + 32) stateMachine];
  v4 = *(a1 + 64);
  v5 = *(a1 + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __84__MSASServerSideModel_setPublicAccessEnabled_forAlbumWithGUID_info_completionBlock___block_invoke_2;
  v6[3] = &unk_278E91E90;
  objc_copyWeak(&v9, &location);
  v10 = *(a1 + 64);
  v8 = *(a1 + 56);
  v7 = *(a1 + 40);
  [v3 setPublicAccessEnabled:v4 forAlbum:v2 info:v5 completionBlock:v6];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __84__MSASServerSideModel_setPublicAccessEnabled_forAlbumWithGUID_info_completionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (v6)
  {
    v9 = MEMORY[0x277CCA9B8];
    if (*(a1 + 56))
    {
      v10 = @"ERROR_MODEL_CANNOT_SET_PUBLIC";
    }

    else
    {
      v10 = @"ERROR_MODEL_CANNOT_UNSET_PUBLIC";
    }

    v11 = MSCFCopyLocalizedString(v10);
    v12 = [v9 MSErrorWithDomain:@"MSASModelErrorDomain" code:6 description:v11 underlyingError:v6];

    v13 = [v8 eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84__MSASServerSideModel_setPublicAccessEnabled_forAlbumWithGUID_info_completionBlock___block_invoke_3;
    block[3] = &unk_278E91E38;
    v14 = *(a1 + 40);
    v29 = v12;
    v30 = v14;
    v28 = v5;
    v15 = v12;
    v16 = v5;
    dispatch_async(v13, block);
  }

  else
  {
    v17 = [WeakRetained dbQueue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __84__MSASServerSideModel_setPublicAccessEnabled_forAlbumWithGUID_info_completionBlock___block_invoke_4;
    v20[3] = &unk_278E91E68;
    objc_copyWeak(&v25, (a1 + 48));
    v18 = *(a1 + 32);
    v26 = *(a1 + 56);
    v21 = v18;
    v22 = v5;
    v23 = v8;
    v24 = *(a1 + 40);
    v19 = v5;
    dispatch_async(v17, v20);

    objc_destroyWeak(&v25);
  }
}

void __84__MSASServerSideModel_setPublicAccessEnabled_forAlbumWithGUID_info_completionBlock___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = *(a1 + 32);
  v12 = 0;
  v4 = [WeakRetained dbQueueAlbumWithGUID:v3 outObject:&v12 outName:0 outCtag:0 outForeignCtag:0 outURLString:0 outUserInfoData:0 outClientOrgKey:0];
  v5 = v12;

  if (v4)
  {
    if (*(a1 + 72))
    {
      v6 = @"1";
    }

    else
    {
      v6 = @"0";
    }

    [v5 setMetadataValue:v6 forKey:@"ispublic"];
    [v5 setPublicURLString:0];
    v7 = objc_loadWeakRetained((a1 + 64));
    [v7 dbQueueSetAlbum:v5 info:*(a1 + 40)];
  }

  v8 = [*(a1 + 48) eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__MSASServerSideModel_setPublicAccessEnabled_forAlbumWithGUID_info_completionBlock___block_invoke_5;
  block[3] = &unk_278E927A0;
  v11 = *(a1 + 56);
  v10 = *(a1 + 40);
  dispatch_async(v8, block);
}

- (void)removeAccessControlEntryWithGUID:(id)d info:(id)info
{
  dCopy = d;
  infoCopy = info;
  if (dCopy)
  {
    dbQueue = [(MSASModelBase *)self dbQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__MSASServerSideModel_removeAccessControlEntryWithGUID_info___block_invoke;
    block[3] = &unk_278E92638;
    v10 = infoCopy;
    selfCopy = self;
    v12 = dCopy;
    dispatch_sync(dbQueue, block);
  }
}

void __61__MSASServerSideModel_removeAccessControlEntryWithGUID_info___block_invoke(uint64_t a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] MSASDictionaryWithCopyOfDictionary:*(a1 + 32)];
  v3 = [v2 MSASAddIsLocalChange];

  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v20 = 0;
  v21 = 0;
  v6 = [v4 dbQueueAccessControlWithGUID:v5 outObject:&v21 outAlbumGUID:&v20 outEmail:0 outUserInfoData:0];
  v7 = v21;
  v8 = v20;
  v9 = *(a1 + 40);
  if (v6)
  {
    v10 = [v7 albumGUID];
    v11 = [v9 dbQueueLookupOrCreateAlbumWithGUID:v10];

    [*(a1 + 40) dbQueueDeleteAccessControlWithGUID:*(a1 + 48) info:v3];
    v12 = [*(a1 + 40) stateMachine];
    v22[0] = v7;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    [v12 removeSharingRelationships:v13 fromOwnedAlbum:v11 info:v3];

    v8 = v11;
  }

  else
  {
    v14 = [*(a1 + 40) eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__MSASServerSideModel_removeAccessControlEntryWithGUID_info___block_invoke_2;
    block[3] = &unk_278E92638;
    v15 = *(a1 + 48);
    block[4] = *(a1 + 40);
    v18 = v15;
    v19 = v3;
    dispatch_async(v14, block);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __61__MSASServerSideModel_removeAccessControlEntryWithGUID_info___block_invoke_2(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__MSASServerSideModel_removeAccessControlEntryWithGUID_info___block_invoke_3;
  v5[3] = &unk_278E925A8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 48);
  [v2 eventQueuePerformBlockOnObservers:v5];
}

void __61__MSASServerSideModel_removeAccessControlEntryWithGUID_info___block_invoke_3(void *a1, void *a2)
{
  v10 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = objc_alloc_init(MSASSharingRelationship);
    [(MSASSharingRelationship *)v3 setGUID:a1[4]];
    v5 = a1[5];
    v4 = a1[6];
    v6 = [v5 _invalidAccessControlGUIDErrorwithGUID:a1[4]];
    [v10 MSASModel:v5 didFinishRemovingAccessControlEntry:v3 fromAlbum:0 info:v4 error:v6];
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = objc_alloc_init(MSASSharingRelationship);
    [(MSASSharingRelationship *)v7 setGUID:a1[4]];
    v8 = a1[5];
    v9 = [v8 _invalidAccessControlGUIDErrorwithGUID:a1[4]];
    [v10 MSASModel:v8 didFinishRemovingAccessControlEntry:v7 fromAlbum:0 error:v9];
  }
}

- (void)addAccessControlEntries:(id)entries toAlbumWithGUID:(id)d info:(id)info completionBlock:(id)block
{
  entriesCopy = entries;
  dCopy = d;
  infoCopy = info;
  blockCopy = block;
  if ([entriesCopy count])
  {
    dbQueue = [(MSASModelBase *)self dbQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84__MSASServerSideModel_addAccessControlEntries_toAlbumWithGUID_info_completionBlock___block_invoke;
    block[3] = &unk_278E921D0;
    v16 = infoCopy;
    selfCopy = self;
    v18 = dCopy;
    v19 = entriesCopy;
    v20 = blockCopy;
    dispatch_async(dbQueue, block);
  }
}

void __84__MSASServerSideModel_addAccessControlEntries_toAlbumWithGUID_info_completionBlock___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] MSASDictionaryWithCopyOfDictionary:*(a1 + 32)];
  v3 = [v2 MSASAddIsLocalChange];

  v4 = [*(a1 + 40) dbQueueLookupOrCreateAlbumWithGUID:*(a1 + 48)];
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  v26 = 0u;
  v5 = *(a1 + 56);
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = *v27;
    do
    {
      v8 = 0;
      do
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v26 + 1) + 8 * v8++) setAlbumGUID:*(a1 + 48)];
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v6);
  }

  [*(a1 + 40) dbQueueBeginTransaction];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = *(a1 + 56);
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v10)
  {
    v11 = *v23;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v22 + 1) + 8 * v12);
        v14 = objc_autoreleasePoolPush();
        [*(a1 + 40) dbQueueSetAccessControl:v13 info:v3];
        objc_autoreleasePoolPop(v14);
        ++v12;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v10);
  }

  [*(a1 + 40) dbQueueEndTransaction];
  objc_initWeak(&location, *(a1 + 40));
  v15 = [*(a1 + 40) stateMachine];
  v16 = *(a1 + 56);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __84__MSASServerSideModel_addAccessControlEntries_toAlbumWithGUID_info_completionBlock___block_invoke_2;
  v18[3] = &unk_278E91E10;
  objc_copyWeak(&v20, &location);
  v19 = *(a1 + 64);
  [v15 addSharingRelationships:v16 toOwnedAlbum:v4 info:v3 completionBlock:v18];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  v17 = *MEMORY[0x277D85DE8];
}

void __84__MSASServerSideModel_addAccessControlEntries_toAlbumWithGUID_info_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained eventQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __84__MSASServerSideModel_addAccessControlEntries_toAlbumWithGUID_info_completionBlock___block_invoke_3;
    v7[3] = &unk_278E927A0;
    v9 = *(a1 + 32);
    v8 = v3;
    dispatch_async(v6, v7);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)MSASStateMachine:(id)machine didFinishMarkingAsSpamInvitationForToken:(id)token info:(id)info error:(id)error
{
  tokenCopy = token;
  infoCopy = info;
  errorCopy = error;
  dbQueue = [(MSASModelBase *)self dbQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __92__MSASServerSideModel_MSASStateMachine_didFinishMarkingAsSpamInvitationForToken_info_error___block_invoke;
  v16[3] = &unk_278E92660;
  v16[4] = self;
  v17 = tokenCopy;
  v18 = infoCopy;
  v19 = errorCopy;
  v13 = errorCopy;
  v14 = infoCopy;
  v15 = tokenCopy;
  dispatch_async(dbQueue, v16);
}

void __92__MSASServerSideModel_MSASStateMachine_didFinishMarkingAsSpamInvitationForToken_info_error___block_invoke(id *a1)
{
  v2 = [a1[4] eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__MSASServerSideModel_MSASStateMachine_didFinishMarkingAsSpamInvitationForToken_info_error___block_invoke_2;
  block[3] = &unk_278E92660;
  v7 = *(a1 + 2);
  v3 = *(&v7 + 1);
  v4 = a1[6];
  v5 = a1[7];
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  dispatch_async(v2, block);
}

void __92__MSASServerSideModel_MSASStateMachine_didFinishMarkingAsSpamInvitationForToken_info_error___block_invoke_2(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __92__MSASServerSideModel_MSASStateMachine_didFinishMarkingAsSpamInvitationForToken_info_error___block_invoke_3;
  v7[3] = &unk_278E925D8;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [v6 eventQueuePerformBlockOnObservers:v7];
}

void __92__MSASServerSideModel_MSASStateMachine_didFinishMarkingAsSpamInvitationForToken_info_error___block_invoke_3(void *a1, void *a2)
{
  v7 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = [v3 _protocolErrorForUnderlyingError:a1[7]];
    [v7 MSASModel:v3 didFinishMarkingAsSpamInvitationWithToken:v4 info:v5 error:v6];
  }
}

- (void)markAsSpamInvitationWithToken:(id)token info:(id)info
{
  tokenCopy = token;
  infoCopy = info;
  if (!tokenCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSASServerSideModel.m" lineNumber:1648 description:{@"Invalid parameter not satisfying: %@", @"invitationToken"}];
  }

  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__MSASServerSideModel_markAsSpamInvitationWithToken_info___block_invoke;
  block[3] = &unk_278E92638;
  v14 = infoCopy;
  selfCopy = self;
  v16 = tokenCopy;
  v10 = tokenCopy;
  v11 = infoCopy;
  dispatch_async(dbQueue, block);
}

void __58__MSASServerSideModel_markAsSpamInvitationWithToken_info___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] MSASDictionaryWithCopyOfDictionary:*(a1 + 32)];
  v4 = [v2 MSASAddIsLocalChange];

  v3 = [*(a1 + 40) stateMachine];
  [v3 markAsSpamInvitationForToken:*(a1 + 48) info:v4];
}

- (void)MSASStateMachine:(id)machine didFinishMarkingAsSpamInvitationForAlbum:(id)album invitationGUID:(id)d info:(id)info error:(id)error
{
  dCopy = d;
  infoCopy = info;
  errorCopy = error;
  dbQueue = [(MSASModelBase *)self dbQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __107__MSASServerSideModel_MSASStateMachine_didFinishMarkingAsSpamInvitationForAlbum_invitationGUID_info_error___block_invoke;
  v17[3] = &unk_278E92660;
  v17[4] = self;
  v18 = dCopy;
  v19 = infoCopy;
  v20 = errorCopy;
  v14 = errorCopy;
  v15 = infoCopy;
  v16 = dCopy;
  dispatch_async(dbQueue, v17);
}

void __107__MSASServerSideModel_MSASStateMachine_didFinishMarkingAsSpamInvitationForAlbum_invitationGUID_info_error___block_invoke(id *a1)
{
  v2 = [a1[4] eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __107__MSASServerSideModel_MSASStateMachine_didFinishMarkingAsSpamInvitationForAlbum_invitationGUID_info_error___block_invoke_2;
  block[3] = &unk_278E92660;
  v7 = *(a1 + 2);
  v3 = *(&v7 + 1);
  v4 = a1[6];
  v5 = a1[7];
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  dispatch_async(v2, block);
}

void __107__MSASServerSideModel_MSASStateMachine_didFinishMarkingAsSpamInvitationForAlbum_invitationGUID_info_error___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __107__MSASServerSideModel_MSASStateMachine_didFinishMarkingAsSpamInvitationForAlbum_invitationGUID_info_error___block_invoke_3;
  v9[3] = &unk_278E925D8;
  v3 = *(a1 + 32);
  *&v4 = *(a1 + 40);
  *(&v4 + 1) = *v2;
  v8 = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  [v3 eventQueuePerformBlockOnObservers:v9];
}

void __107__MSASServerSideModel_MSASStateMachine_didFinishMarkingAsSpamInvitationForAlbum_invitationGUID_info_error___block_invoke_3(void *a1, void *a2)
{
  v7 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = objc_opt_new();
    [v3 setGUID:a1[4]];
    v4 = a1[5];
    v5 = a1[6];
    v6 = [v4 _protocolErrorForUnderlyingError:a1[7]];
    [v7 MSASModel:v4 didFinishMarkingAsSpamInvitation:v3 info:v5 error:v6];
  }
}

- (void)markAsSpamInvitationWithGUID:(id)d info:(id)info
{
  dCopy = d;
  infoCopy = info;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSASServerSideModel.m" lineNumber:1605 description:{@"Invalid parameter not satisfying: %@", @"invitationGUID"}];
  }

  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__MSASServerSideModel_markAsSpamInvitationWithGUID_info___block_invoke;
  block[3] = &unk_278E92638;
  v14 = infoCopy;
  selfCopy = self;
  v16 = dCopy;
  v10 = dCopy;
  v11 = infoCopy;
  dispatch_async(dbQueue, block);
}

void __57__MSASServerSideModel_markAsSpamInvitationWithGUID_info___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] MSASDictionaryWithCopyOfDictionary:*(a1 + 32)];
  v3 = [v2 MSASAddIsLocalChange];

  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v20 = 0;
  v21 = 0;
  v6 = [v4 dbQueueInvitationWithGUID:v5 outObject:&v21 outAlbumGUID:&v20 outEmail:0 outUserInfoData:0];
  v7 = v21;
  v8 = v20;
  v9 = *(a1 + 40);
  if (v6)
  {
    v10 = [v7 albumGUID];
    v11 = [v9 dbQueueLookupOrCreateAlbumWithGUID:v10];

    v12 = *(a1 + 40);
    v13 = [v7 albumGUID];
    [v12 dbQueueDeleteAlbumWithGUID:v13 info:v3];

    [*(a1 + 40) dbQueueDeleteInvitationWithGUID:*(a1 + 48) info:v3];
    v14 = [*(a1 + 40) stateMachine];
    [v14 markAsSpamInvitationForAlbum:v11 invitationGUID:*(a1 + 48) info:v3];

    v8 = v11;
  }

  else
  {
    v15 = [*(a1 + 40) eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__MSASServerSideModel_markAsSpamInvitationWithGUID_info___block_invoke_2;
    block[3] = &unk_278E92638;
    v16 = *(a1 + 48);
    block[4] = *(a1 + 40);
    v18 = v16;
    v19 = v3;
    dispatch_async(v15, block);
  }
}

void __57__MSASServerSideModel_markAsSpamInvitationWithGUID_info___block_invoke_2(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__MSASServerSideModel_markAsSpamInvitationWithGUID_info___block_invoke_3;
  v5[3] = &unk_278E925A8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 48);
  [v2 eventQueuePerformBlockOnObservers:v5];
}

void __57__MSASServerSideModel_markAsSpamInvitationWithGUID_info___block_invoke_3(void *a1, void *a2)
{
  v7 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = objc_alloc_init(MSASInvitation);
    [(MSASSharingRelationship *)v3 setGUID:a1[4]];
    v5 = a1[5];
    v4 = a1[6];
    v6 = [v5 _invalidInvitationGUIDErrorWithGUID:a1[4]];
    [v7 MSASModel:v5 didFinishMarkingAsSpamInvitation:v3 info:v4 error:v6];
  }
}

- (void)markAsSpamAlbumWithGUID:(id)d info:(id)info
{
  dCopy = d;
  infoCopy = info;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSASServerSideModel.m" lineNumber:1593 description:{@"Invalid parameter not satisfying: %@", @"albumGUID"}];
  }

  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__MSASServerSideModel_markAsSpamAlbumWithGUID_info___block_invoke;
  block[3] = &unk_278E92638;
  v14 = infoCopy;
  selfCopy = self;
  v16 = dCopy;
  v10 = dCopy;
  v11 = infoCopy;
  dispatch_async(dbQueue, block);
}

void __52__MSASServerSideModel_markAsSpamAlbumWithGUID_info___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] MSASDictionaryWithCopyOfDictionary:*(a1 + 32)];
  v5 = [v2 MSASAddIsLocalChange];

  v3 = [*(a1 + 40) dbQueueLookupOrCreateAlbumWithGUID:*(a1 + 48)];
  [*(a1 + 40) dbQueueDeleteAlbumWithGUID:*(a1 + 48) info:v5];
  [*(a1 + 40) dbQueueDeleteInvitationForAlbumWithGUID:*(a1 + 48) info:v5];
  v4 = [*(a1 + 40) stateMachine];
  [v4 markAsSpamInvitationForAlbum:v3 invitationGUID:0 info:v5];
}

- (void)rejectInvitationWithGUID:(id)d info:(id)info
{
  dCopy = d;
  infoCopy = info;
  if (dCopy)
  {
    dbQueue = [(MSASModelBase *)self dbQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__MSASServerSideModel_rejectInvitationWithGUID_info___block_invoke;
    block[3] = &unk_278E92638;
    v10 = infoCopy;
    selfCopy = self;
    v12 = dCopy;
    dispatch_async(dbQueue, block);
  }
}

void __53__MSASServerSideModel_rejectInvitationWithGUID_info___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] MSASDictionaryWithCopyOfDictionary:*(a1 + 32)];
  v3 = [v2 MSASAddIsLocalChange];

  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v23 = 0;
  v6 = [v4 dbQueueInvitationWithGUID:v5 outObject:&v23 outAlbumGUID:0 outEmail:0 outUserInfoData:0];
  v7 = v23;
  v8 = v7;
  v9 = *(a1 + 40);
  if (v6)
  {
    v10 = [v7 albumGUID];
    v11 = [v9 dbQueueLookupOrCreateAlbumWithGUID:v10];

    v12 = MEMORY[0x277CBEAC0];
    v13 = [MEMORY[0x277CCABB0] numberWithInt:1];
    v14 = [v12 dictionaryWithObject:v13 forKey:@"subscriptionMethod"];
    [v11 setContext:v14];

    v15 = *(a1 + 40);
    v16 = [v8 albumGUID];
    [v15 dbQueueDeleteAlbumWithGUID:v16 info:v3];

    [*(a1 + 40) dbQueueDeleteInvitationWithGUID:*(a1 + 48) info:v3];
    v17 = [*(a1 + 40) stateMachine];
    [v17 unsubscribeFromAlbum:v11 info:v3];

    v8 = v11;
  }

  else
  {
    v18 = [*(a1 + 40) eventQueue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __53__MSASServerSideModel_rejectInvitationWithGUID_info___block_invoke_2;
    v20[3] = &unk_278E92638;
    v19 = *(a1 + 48);
    v20[4] = *(a1 + 40);
    v21 = v19;
    v22 = v3;
    dispatch_async(v18, v20);
  }
}

void __53__MSASServerSideModel_rejectInvitationWithGUID_info___block_invoke_2(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__MSASServerSideModel_rejectInvitationWithGUID_info___block_invoke_3;
  v5[3] = &unk_278E925A8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 48);
  [v2 eventQueuePerformBlockOnObservers:v5];
}

void __53__MSASServerSideModel_rejectInvitationWithGUID_info___block_invoke_3(void *a1, void *a2)
{
  v10 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = objc_alloc_init(MSASInvitation);
    [(MSASSharingRelationship *)v3 setGUID:a1[4]];
    v5 = a1[5];
    v4 = a1[6];
    v6 = [v5 _invalidInvitationGUIDErrorWithGUID:a1[4]];
    [v10 MSASModel:v5 didFinishRejectingInvitation:v3 info:v4 error:v6];
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = objc_alloc_init(MSASInvitation);
    [(MSASSharingRelationship *)v7 setGUID:a1[4]];
    v8 = a1[5];
    v9 = [v8 _invalidInvitationGUIDErrorWithGUID:a1[4]];
    [v10 MSASModel:v8 didFinishRejectingInvitation:v7 error:v9];
  }
}

- (void)acceptInvitationWithGUID:(id)d info:(id)info
{
  dCopy = d;
  infoCopy = info;
  if (dCopy)
  {
    dbQueue = [(MSASModelBase *)self dbQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__MSASServerSideModel_acceptInvitationWithGUID_info___block_invoke;
    block[3] = &unk_278E92638;
    v10 = infoCopy;
    selfCopy = self;
    v12 = dCopy;
    dispatch_async(dbQueue, block);
  }
}

void __53__MSASServerSideModel_acceptInvitationWithGUID_info___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] MSASDictionaryWithCopyOfDictionary:*(a1 + 32)];
  v3 = [v2 MSASAddIsLocalChange];

  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v21 = 0;
  v22 = 0;
  v6 = [v4 dbQueueInvitationWithGUID:v5 outObject:&v22 outAlbumGUID:&v21 outEmail:0 outUserInfoData:0];
  v7 = v22;
  v8 = v21;
  v9 = *(a1 + 40);
  if (v6)
  {
    v10 = [v7 albumGUID];
    v11 = [v9 dbQueueLookupOrCreateAlbumWithGUID:v10];

    v12 = MEMORY[0x277CBEAC0];
    v13 = [MEMORY[0x277CCABB0] numberWithInt:1];
    v14 = [v12 dictionaryWithObject:v13 forKey:@"subscriptionMethod"];
    [v11 setContext:v14];

    [v7 setState:2];
    [*(a1 + 40) dbQueueSetInvitation:v7 info:v3];
    v15 = [*(a1 + 40) stateMachine];
    [v15 subscribeToAlbum:v11 info:v3];

    v8 = v11;
  }

  else
  {
    v16 = [*(a1 + 40) eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__MSASServerSideModel_acceptInvitationWithGUID_info___block_invoke_2;
    block[3] = &unk_278E92638;
    v17 = *(a1 + 48);
    block[4] = *(a1 + 40);
    v19 = v17;
    v20 = v3;
    dispatch_async(v16, block);
  }
}

void __53__MSASServerSideModel_acceptInvitationWithGUID_info___block_invoke_2(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__MSASServerSideModel_acceptInvitationWithGUID_info___block_invoke_3;
  v5[3] = &unk_278E925A8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 48);
  [v2 eventQueuePerformBlockOnObservers:v5];
}

void __53__MSASServerSideModel_acceptInvitationWithGUID_info___block_invoke_3(void *a1, void *a2)
{
  v10 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = objc_alloc_init(MSASInvitation);
    [(MSASSharingRelationship *)v3 setGUID:a1[4]];
    v5 = a1[5];
    v4 = a1[6];
    v6 = [v5 _invalidInvitationGUIDErrorWithGUID:a1[4]];
    [v10 MSASModel:v5 didFinishAcceptingInvitation:v3 forAlbum:0 info:v4 error:v6];
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = objc_alloc_init(MSASInvitation);
    [(MSASSharingRelationship *)v7 setGUID:a1[4]];
    v8 = a1[5];
    v9 = [v8 _invalidInvitationGUIDErrorWithGUID:a1[4]];
    [v10 MSASModel:v8 didFinishAcceptingInvitation:v7 forAlbum:0 error:v9];
  }
}

- (void)validateInvitationForAlbum:(id)album completionBlock:(id)block
{
  blockCopy = block;
  albumCopy = album;
  stateMachine = [(MSASServerSideModel *)self stateMachine];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__MSASServerSideModel_validateInvitationForAlbum_completionBlock___block_invoke;
  v10[3] = &unk_278E91DE8;
  v10[4] = self;
  v11 = blockCopy;
  v9 = blockCopy;
  [stateMachine validateInvitationForAlbum:albumCopy completionBlock:v10];
}

void __66__MSASServerSideModel_validateInvitationForAlbum_completionBlock___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__MSASServerSideModel_validateInvitationForAlbum_completionBlock___block_invoke_2;
  block[3] = &unk_278E92778;
  v9 = v5;
  v10 = *(a1 + 40);
  v11 = a2;
  v7 = v5;
  dispatch_async(v6, block);
}

void __66__MSASServerSideModel_validateInvitationForAlbum_completionBlock___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = MEMORY[0x277CCA9B8];
    v3 = MSCFCopyLocalizedString(@"ERROR_MODEL_INVALID_INVITATION");
    v7 = [v2 MSErrorWithDomain:@"MSASModelErrorDomain" code:5 description:v3 underlyingError:*(a1 + 32)];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(*(a1 + 40) + 16);

    v6();
  }
}

- (void)acceptInvitationWithToken:(id)token info:(id)info completionBlock:(id)block
{
  tokenCopy = token;
  blockCopy = block;
  if (tokenCopy)
  {
    v10 = [MEMORY[0x277CBEB38] MSASDictionaryWithCopyOfDictionary:info];
    mSASAddIsLocalChange = [v10 MSASAddIsLocalChange];

    stateMachine = [(MSASServerSideModel *)self stateMachine];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __70__MSASServerSideModel_acceptInvitationWithToken_info_completionBlock___block_invoke;
    v16[3] = &unk_278E91DC0;
    v16[4] = self;
    v17 = blockCopy;
    [stateMachine acceptInvitationWithToken:tokenCopy info:mSASAddIsLocalChange completionBlock:v16];
  }

  else
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = MSCFCopyLocalizedString(@"ERROR_MODEL_INVALID_INVITATION");
    v15 = [v13 MSErrorWithDomain:@"MSASModelErrorDomain" code:5 description:v14 underlyingError:0];

    (*(blockCopy + 2))(blockCopy, 0, v15);
  }
}

void __70__MSASServerSideModel_acceptInvitationWithToken_info_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__MSASServerSideModel_acceptInvitationWithToken_info_completionBlock___block_invoke_2;
  block[3] = &unk_278E91E38;
  v12 = v6;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

void __70__MSASServerSideModel_acceptInvitationWithToken_info_completionBlock___block_invoke_2(void *a1)
{
  if (a1[4])
  {
    v2 = MEMORY[0x277CCA9B8];
    v3 = MSCFCopyLocalizedString(@"ERROR_MODEL_INVALID_INVITATION");
    v8 = [v2 MSErrorWithDomain:@"MSASModelErrorDomain" code:5 description:v3 underlyingError:a1[4]];

    v4 = a1[5];
    (*(a1[6] + 16))();
  }

  else
  {
    v6 = a1[5];
    v5 = a1[6];
    v7 = *(a1[6] + 16);

    v7();
  }
}

- (void)acceptInvitationWithToken:(id)token completionBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__MSASServerSideModel_acceptInvitationWithToken_completionBlock___block_invoke;
  v8[3] = &unk_278E91D98;
  v9 = blockCopy;
  v7 = blockCopy;
  [(MSASServerSideModel *)self acceptInvitationWithToken:token info:0 completionBlock:v8];
}

- (void)unsubscribeFromAlbumWithGUID:(id)d info:(id)info
{
  dCopy = d;
  infoCopy = info;
  if (dCopy)
  {
    dbQueue = [(MSASModelBase *)self dbQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__MSASServerSideModel_unsubscribeFromAlbumWithGUID_info___block_invoke;
    block[3] = &unk_278E92638;
    v10 = infoCopy;
    selfCopy = self;
    v12 = dCopy;
    dispatch_async(dbQueue, block);
  }
}

void __57__MSASServerSideModel_unsubscribeFromAlbumWithGUID_info___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] MSASDictionaryWithCopyOfDictionary:*(a1 + 32)];
  v5 = [v2 MSASAddIsLocalChange];

  v3 = [*(a1 + 40) dbQueueLookupOrCreateAlbumWithGUID:*(a1 + 48)];
  [*(a1 + 40) dbQueueDeleteAlbumWithGUID:*(a1 + 48) info:v5];
  [*(a1 + 40) dbQueueDeleteInvitationForAlbumWithGUID:*(a1 + 48) info:v5];
  v4 = [*(a1 + 40) stateMachine];
  [v4 unsubscribeFromAlbum:v3 info:v5];
}

- (void)subscribeToAlbumWithGUID:(id)d info:(id)info
{
  dCopy = d;
  infoCopy = info;
  if (dCopy)
  {
    dbQueue = [(MSASModelBase *)self dbQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__MSASServerSideModel_subscribeToAlbumWithGUID_info___block_invoke;
    block[3] = &unk_278E92638;
    v10 = infoCopy;
    selfCopy = self;
    v12 = dCopy;
    dispatch_async(dbQueue, block);
  }
}

void __53__MSASServerSideModel_subscribeToAlbumWithGUID_info___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] MSASDictionaryWithCopyOfDictionary:*(a1 + 32)];
  v5 = [v2 MSASAddIsLocalChange];

  v3 = [*(a1 + 40) dbQueueLookupOrCreateAlbumWithGUID:*(a1 + 48)];
  v4 = [*(a1 + 40) stateMachine];
  [v4 subscribeToAlbum:v3 info:v5];
}

- (void)markAlbumGUIDAsViewed:(id)viewed moveLastViewedAssetCollectionMarker:(BOOL)marker info:(id)info
{
  viewedCopy = viewed;
  infoCopy = info;
  if (viewedCopy)
  {
    dbQueue = [(MSASModelBase *)self dbQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __86__MSASServerSideModel_markAlbumGUIDAsViewed_moveLastViewedAssetCollectionMarker_info___block_invoke;
    v11[3] = &unk_278E91D20;
    v12 = infoCopy;
    selfCopy = self;
    v14 = viewedCopy;
    markerCopy = marker;
    dispatch_async(dbQueue, v11);
  }
}

void __86__MSASServerSideModel_markAlbumGUIDAsViewed_moveLastViewedAssetCollectionMarker_info___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] MSASDictionaryWithCopyOfDictionary:*(a1 + 32)];
  v3 = [v2 MSASAddIsLocalChange];

  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v6 = [v4 dbQueueAlbumWithGUID:v5 outObject:&v31 outName:0 outCtag:&v30 outForeignCtag:&v29 outURLString:0 outUserInfoData:0 outClientOrgKey:0];
  v7 = v31;
  v8 = v30;
  v9 = v29;
  if (v6)
  {
    v10 = [MEMORY[0x277CBEB38] dictionary];
    [*(a1 + 40) dbQueueSetAlbumMetadataAlbumGUID:*(a1 + 48) key:@"lastviewedctag" value:v8 info:v3];
    [*(a1 + 40) dbQueueSetUnviewedState:0 onAlbumWithGUID:*(a1 + 48) info:v3];
    v11 = v9;
    if (v9 || (v11 = v8) != 0)
    {
      [v10 setObject:v11 forKey:@"lastviewedctag"];
    }

    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    if (*(a1 + 56) == 1)
    {
      v14 = [v12 dbQueueMaximumPhotoNumberForAlbumWithGUID:v13];
      v15 = v14;
      if (v14)
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", objc_msgSend(v14, "longLongValue")];
        [*(a1 + 40) dbQueueSetAlbumMetadataAlbumGUID:*(a1 + 48) key:@"lastassetposition" value:v16 info:v3];
        [v10 setObject:v16 forKey:@"lastassetposition"];
      }
    }

    else
    {
      v28 = 0;
      v18 = [v12 dbQueueAlbumMetadataWithAlbumGUID:v13 key:@"lastassetposition" outValue:&v28];
      v15 = v28;
      if (v18)
      {
        [v10 setObject:v15 forKey:@"lastassetposition"];
      }
    }

    v19 = [*(a1 + 40) stateMachine];
    [v19 setAlbumSyncedState:v10 forAlbum:v7 info:v3];

    LODWORD(v19) = [*(a1 + 40) dbQueueUnviewedAssetCollectionCountForAlbumWithGUID:*(a1 + 48)];
    v20 = [*(a1 + 40) eventQueue];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __86__MSASServerSideModel_markAlbumGUIDAsViewed_moveLastViewedAssetCollectionMarker_info___block_invoke_2;
    v24[3] = &unk_278E91D70;
    v24[4] = *(a1 + 40);
    v25 = v7;
    v27 = v19;
    v26 = v3;
    dispatch_async(v20, v24);
  }

  else
  {
    v17 = [*(a1 + 40) eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__MSASServerSideModel_markAlbumGUIDAsViewed_moveLastViewedAssetCollectionMarker_info___block_invoke_3;
    block[3] = &unk_278E92638;
    block[4] = *(a1 + 40);
    v22 = v7;
    v23 = v3;
    dispatch_async(v17, block);
  }
}

void __86__MSASServerSideModel_markAlbumGUIDAsViewed_moveLastViewedAssetCollectionMarker_info___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __86__MSASServerSideModel_markAlbumGUIDAsViewed_moveLastViewedAssetCollectionMarker_info___block_invoke_4;
  v3[3] = &unk_278E925A8;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 eventQueuePerformBlockOnObservers:v3];
}

void __86__MSASServerSideModel_markAlbumGUIDAsViewed_moveLastViewedAssetCollectionMarker_info___block_invoke_4(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFinishMarkingAlbumAsViewed:a1[5] info:a1[6] error:0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModel:a1[4] didFinishMarkingAlbumAsViewed:a1[5] error:0];
  }
}

- (void)deleteAlbumWithGUID:(id)d info:(id)info
{
  dCopy = d;
  if (dCopy)
  {
    v7 = [MEMORY[0x277CBEB38] MSASDictionaryWithCopyOfDictionary:info];
    mSASAddIsLocalChange = [v7 MSASAddIsLocalChange];

    dbQueue = [(MSASModelBase *)self dbQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__MSASServerSideModel_deleteAlbumWithGUID_info___block_invoke;
    block[3] = &unk_278E92638;
    block[4] = self;
    v12 = dCopy;
    v13 = mSASAddIsLocalChange;
    v10 = mSASAddIsLocalChange;
    dispatch_async(dbQueue, block);
  }
}

void __48__MSASServerSideModel_deleteAlbumWithGUID_info___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v12 = 0;
  v4 = [v2 dbQueueAlbumWithGUID:v3 outObject:&v12 outName:0 outCtag:0 outForeignCtag:0 outURLString:0 outUserInfoData:0 outClientOrgKey:0];
  v5 = v12;
  if ((v4 & 1) == 0)
  {
    v6 = +[MSASAlbum album];

    [v6 setGUID:*(a1 + 40)];
    v5 = v6;
  }

  if ([v5 relationshipState])
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__MSASServerSideModel_deleteAlbumWithGUID_info___block_invoke_2;
    block[3] = &unk_278E927C8;
    v8 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v11 = v8;
    dispatch_async(v7, block);
  }

  else
  {
    [*(a1 + 32) dbQueueDeleteAlbumWithGUID:*(a1 + 40) info:*(a1 + 48)];
    v9 = [*(a1 + 32) stateMachine];
    [v9 deleteAlbum:v5 info:*(a1 + 48)];
  }
}

- (void)setClientOrgKey:(id)key forAlbumWithGUID:(id)d info:(id)info
{
  keyCopy = key;
  dCopy = d;
  infoCopy = info;
  if (dCopy)
  {
    dbQueue = [(MSASModelBase *)self dbQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __61__MSASServerSideModel_setClientOrgKey_forAlbumWithGUID_info___block_invoke;
    v12[3] = &unk_278E92660;
    v13 = infoCopy;
    selfCopy = self;
    v15 = dCopy;
    v16 = keyCopy;
    dispatch_async(dbQueue, v12);
  }
}

void __61__MSASServerSideModel_setClientOrgKey_forAlbumWithGUID_info___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] MSASDictionaryWithCopyOfDictionary:*(a1 + 32)];
  v3 = [v2 MSASAddIsLocalChange];

  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8 = 0;
  [v4 dbQueueAlbumWithGUID:v5 outObject:&v8 outName:0 outCtag:0 outForeignCtag:0 outURLString:0 outUserInfoData:0 outClientOrgKey:0];
  v6 = v8;
  v7 = v6;
  if (v6)
  {
    [v6 setClientOrgKey:*(a1 + 56)];
    [*(a1 + 40) dbQueueSetAlbum:v7 info:v3];
  }
}

- (void)modifyAlbumMetadata:(id)metadata info:(id)info
{
  metadataCopy = metadata;
  infoCopy = info;
  if (metadataCopy)
  {
    dbQueue = [(MSASModelBase *)self dbQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__MSASServerSideModel_modifyAlbumMetadata_info___block_invoke;
    block[3] = &unk_278E92638;
    v10 = infoCopy;
    selfCopy = self;
    v12 = metadataCopy;
    dispatch_async(dbQueue, block);
  }
}

void __48__MSASServerSideModel_modifyAlbumMetadata_info___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] MSASDictionaryWithCopyOfDictionary:*(a1 + 32)];
  v10 = [v2 MSASAddIsLocalChange];

  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) GUID];
  v5 = [v3 dbQueueLookupOrCreateAlbumWithGUID:v4];

  v6 = [v5 metadata];
  v7 = [v6 mutableCopy];

  v8 = [*(a1 + 48) metadata];
  [v7 addEntriesFromDictionary:v8];

  [v5 setMetadata:v7];
  [*(a1 + 40) dbQueueSetAlbum:v5 info:v10];
  v9 = [*(a1 + 40) stateMachine];
  [v9 updateAlbum:v5 updateAlbumFlags:0 info:v10];
}

- (void)addAlbum:(id)album info:(id)info
{
  albumCopy = album;
  if (albumCopy)
  {
    v7 = [MEMORY[0x277CBEB38] MSASDictionaryWithCopyOfDictionary:info];
    mSASAddIsLocalChange = [v7 MSASAddIsLocalChange];

    dbQueue = [(MSASModelBase *)self dbQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__MSASServerSideModel_addAlbum_info___block_invoke;
    block[3] = &unk_278E92638;
    block[4] = self;
    v12 = albumCopy;
    v13 = mSASAddIsLocalChange;
    v10 = mSASAddIsLocalChange;
    dispatch_async(dbQueue, block);
  }
}

void __37__MSASServerSideModel_addAlbum_info___block_invoke(uint64_t a1)
{
  [*(a1 + 32) dbQueueSetAlbum:*(a1 + 40) info:*(a1 + 48)];
  v2 = [*(a1 + 32) stateMachine];
  [v2 createAlbum:*(a1 + 40) info:*(a1 + 48)];
}

- (void)refreshAccessControlListForAlbumWithGUID:(id)d info:(id)info
{
  dCopy = d;
  infoCopy = info;
  if (dCopy)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__6923;
    v18 = __Block_byref_object_dispose__6924;
    v19 = 0;
    dbQueue = [(MSASModelBase *)self dbQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__MSASServerSideModel_refreshAccessControlListForAlbumWithGUID_info___block_invoke;
    block[3] = &unk_278E91C78;
    v13 = &v14;
    block[4] = self;
    v12 = dCopy;
    dispatch_sync(dbQueue, block);

    stateMachine = [(MSASServerSideModel *)self stateMachine];
    v10 = [MEMORY[0x277CBEA60] arrayWithObject:v15[5]];
    [stateMachine getAccessControlsForAlbums:v10 info:infoCopy];

    _Block_object_dispose(&v14, 8);
  }
}

uint64_t __69__MSASServerSideModel_refreshAccessControlListForAlbumWithGUID_info___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dbQueueLookupOrCreateAlbumWithGUID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)refreshCommentsForAssetCollectionWithGUID:(id)d resetSync:(BOOL)sync info:(id)info
{
  v42[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  infoCopy = info;
  if (dCopy)
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__6923;
    v39 = __Block_byref_object_dispose__6924;
    v40 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__6923;
    v33 = __Block_byref_object_dispose__6924;
    v34 = &unk_2858CC148;
    dbQueue = [(MSASModelBase *)self dbQueue];
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __80__MSASServerSideModel_refreshCommentsForAssetCollectionWithGUID_resetSync_info___block_invoke;
    v23 = &unk_278E91D48;
    selfCopy = self;
    v11 = dCopy;
    v25 = v11;
    v26 = &v35;
    syncCopy = sync;
    v27 = &v29;
    dispatch_sync(dbQueue, &v20);

    v12 = v30[5];
    v41 = v11;
    v42[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:&v41 count:{1, v20, v21, v22, v23, selfCopy}];
    stateMachine = [(MSASServerSideModel *)self stateMachine];
    gUID = [v36[5] GUID];
    clientOrgKey = [v36[5] clientOrgKey];
    [stateMachine checkForCommentChanges:v13 inAlbumWithGUID:gUID withClientOrgKey:clientOrgKey];

    stateMachine2 = [(MSASServerSideModel *)self stateMachine];
    gUID2 = [v36[5] GUID];
    [stateMachine2 scheduleEvent:@"flushPendingCommentQueue" assetCollectionGUID:v11 albumGUID:gUID2 info:infoCopy];

    _Block_object_dispose(&v29, 8);
    _Block_object_dispose(&v35, 8);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __80__MSASServerSideModel_refreshCommentsForAssetCollectionWithGUID_resetSync_info___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 48) + 8);
  obj = *(v4 + 40);
  v5 = [v2 dbQueueLookupOrCreateAssetCollectionWithGUID:v3 outAlbum:&obj];
  objc_storeStrong((v4 + 40), obj);
  if ((*(a1 + 64) & 1) == 0)
  {
    v6 = [*(a1 + 32) dbQueueMaximumCommentIDForAssetCollectionWithGUID:*(a1 + 40)];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (void)refreshContentOfAlbumWithGUID:(id)d resetSync:(BOOL)sync info:(id)info
{
  dCopy = d;
  infoCopy = info;
  if (dCopy)
  {
    dbQueue = [(MSASModelBase *)self dbQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __68__MSASServerSideModel_refreshContentOfAlbumWithGUID_resetSync_info___block_invoke;
    v11[3] = &unk_278E91D20;
    v11[4] = self;
    v12 = dCopy;
    syncCopy = sync;
    v13 = infoCopy;
    dispatch_async(dbQueue, v11);
  }
}

void __68__MSASServerSideModel_refreshContentOfAlbumWithGUID_resetSync_info___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v8 = 0;
  v4 = [v2 dbQueueAlbumWithGUID:v3 outObject:&v8 outName:0 outCtag:0 outForeignCtag:0 outURLString:0 outUserInfoData:0 outClientOrgKey:0];
  v5 = v8;
  if (v4)
  {
    v6 = [*(a1 + 32) stateMachine];
    v7 = [MEMORY[0x277CBEA60] arrayWithObject:v5];
    [v6 checkForUpdatesInAlbums:v7 resetSync:*(a1 + 56) info:*(a1 + 48)];
  }
}

- (void)_reconstruct
{
  eventQueue = [(MSASServerSideModel *)self eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__MSASServerSideModel__reconstruct__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(eventQueue, block);

  [(MSASServerSideModel *)self refreshResetSync:1];
}

uint64_t __35__MSASServerSideModel__reconstruct__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __35__MSASServerSideModel__reconstruct__block_invoke_2;
  v3[3] = &unk_278E91C00;
  v3[4] = v1;
  return [v1 eventQueuePerformBlockOnObservers:v3];
}

void __35__MSASServerSideModel__reconstruct__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModelDidDeleteAllAlbumsInAlbumList:*(a1 + 32)];
  }
}

- (void)reconstruct
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Reconstructing model from the server.", buf, 0xCu);
  }

  stateMachine = [(MSASServerSideModel *)self stateMachine];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__MSASServerSideModel_reconstruct__block_invoke;
  v5[3] = &unk_278E926D8;
  v5[4] = self;
  [stateMachine purgeEverythingCompletionBlock:v5];

  v4 = *MEMORY[0x277D85DE8];
}

void __34__MSASServerSideModel_reconstruct__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) stateMachine];
  [v1 scheduleEvent:@"reconstruct" assetCollectionGUID:0 albumGUID:0 info:0];
}

- (void)MSASStateMachineDidUpdateServerCommunicationBackoffDate:(id)date
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__MSASServerSideModel_MSASStateMachineDidUpdateServerCommunicationBackoffDate___block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __79__MSASServerSideModel_MSASStateMachineDidUpdateServerCommunicationBackoffDate___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"MSASModelDidUpdateServerCommunicationBackoffDateNotification" object:*(a1 + 32)];
}

- (id)serverCommunicationBackoffDate
{
  stateMachine = [(MSASServerSideModel *)self stateMachine];
  serverCommunicationBackoffDate = [stateMachine serverCommunicationBackoffDate];

  return serverCommunicationBackoffDate;
}

- (id)userInfoForCommentWithGUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6923;
  v16 = __Block_byref_object_dispose__6924;
  v17 = 0;
  if (dCopy)
  {
    dbQueue = [(MSASModelBase *)self dbQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__MSASServerSideModel_userInfoForCommentWithGUID___block_invoke;
    block[3] = &unk_278E91C78;
    block[4] = self;
    v10 = dCopy;
    v11 = &v12;
    dispatch_sync(dbQueue, block);

    v6 = v13[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __50__MSASServerSideModel_userInfoForCommentWithGUID___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v9 = 0;
  v4 = [v2 dbQueueCommentWithGUID:v3 outObject:0 outID:0 outTimestamp:0 outAssetCollectionGUID:0 outIsCaption:0 outUserInfoData:&v9];
  v5 = v9;
  if (v4)
  {
    v6 = [MEMORY[0x277CCAAC8] MSSafeUnarchiveObjectWithData:v5 outError:0];
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (void)setUserInfo:(id)info forCommentWithGUID:(id)d
{
  infoCopy = info;
  dCopy = d;
  if (dCopy)
  {
    dbQueue = [(MSASModelBase *)self dbQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__MSASServerSideModel_setUserInfo_forCommentWithGUID___block_invoke;
    block[3] = &unk_278E92638;
    block[4] = self;
    v10 = infoCopy;
    v11 = dCopy;
    dispatch_async(dbQueue, block);
  }
}

void __54__MSASServerSideModel_setUserInfo_forCommentWithGUID___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) statementForString:@"update or ignore Comments set userInfo = ? where GUID = ?;"];
  v3 = *(a1 + 40);
  v16 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v16];
  v5 = v16;
  v6 = v5;
  if (v4)
  {
    v7 = MSSqliteBindDataOrNull(v2, 1, v4);
  }

  else
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [v5 userInfo];
    v10 = [v8 stringWithFormat:@"Failed to archive a userInfo object. Error: %@ Info: %@", v6, v9];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = v10;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    v7 = sqlite3_bind_null(v2, 1);
  }

  v11 = v7;
  MSSqliteTrapForDBLockError(v7);
  if (!v11)
  {
    v12 = MSSqliteBindStringOrNull(v2, 2, *(a1 + 48));
    v13 = v12;
    MSSqliteTrapForDBLockError(v12);
    if (!v13)
    {
      v14 = sqlite3_step(v2);
      MSSqliteTrapForDBLockError(v14);
    }
  }

  if (v2)
  {
    sqlite3_reset(v2);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)userInfoForInvitationWithGUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6923;
  v16 = __Block_byref_object_dispose__6924;
  v17 = 0;
  if (dCopy)
  {
    dbQueue = [(MSASModelBase *)self dbQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__MSASServerSideModel_userInfoForInvitationWithGUID___block_invoke;
    block[3] = &unk_278E91C78;
    block[4] = self;
    v10 = dCopy;
    v11 = &v12;
    dispatch_sync(dbQueue, block);

    v6 = v13[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __53__MSASServerSideModel_userInfoForInvitationWithGUID___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v9 = 0;
  v4 = [v2 dbQueueInvitationWithGUID:v3 outObject:0 outAlbumGUID:0 outEmail:0 outUserInfoData:&v9];
  v5 = v9;
  if (v4)
  {
    v6 = [MEMORY[0x277CCAAC8] MSSafeUnarchiveObjectWithData:v5 outError:0];
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (void)setUserInfo:(id)info forInvitationWithGUID:(id)d
{
  infoCopy = info;
  dCopy = d;
  if (dCopy)
  {
    dbQueue = [(MSASModelBase *)self dbQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__MSASServerSideModel_setUserInfo_forInvitationWithGUID___block_invoke;
    block[3] = &unk_278E92638;
    block[4] = self;
    v10 = infoCopy;
    v11 = dCopy;
    dispatch_async(dbQueue, block);
  }
}

void __57__MSASServerSideModel_setUserInfo_forInvitationWithGUID___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) statementForString:@"update or ignore Invitations set userInfo = ? where GUID = ?;"];
  v3 = *(a1 + 40);
  v16 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v16];
  v5 = v16;
  v6 = v5;
  if (v4)
  {
    v7 = MSSqliteBindDataOrNull(v2, 1, v4);
  }

  else
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [v5 userInfo];
    v10 = [v8 stringWithFormat:@"Failed to archive a userInfo object. Error: %@ Info: %@", v6, v9];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = v10;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    v7 = sqlite3_bind_null(v2, 1);
  }

  v11 = v7;
  MSSqliteTrapForDBLockError(v7);
  if (!v11)
  {
    v12 = MSSqliteBindStringOrNull(v2, 2, *(a1 + 48));
    v13 = v12;
    MSSqliteTrapForDBLockError(v12);
    if (!v13)
    {
      v14 = sqlite3_step(v2);
      MSSqliteTrapForDBLockError(v14);
    }
  }

  if (v2)
  {
    sqlite3_reset(v2);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)userInfoForAccessControlWithGUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6923;
  v16 = __Block_byref_object_dispose__6924;
  v17 = 0;
  if (dCopy)
  {
    dbQueue = [(MSASModelBase *)self dbQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__MSASServerSideModel_userInfoForAccessControlWithGUID___block_invoke;
    block[3] = &unk_278E91C78;
    block[4] = self;
    v10 = dCopy;
    v11 = &v12;
    dispatch_sync(dbQueue, block);

    v6 = v13[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __56__MSASServerSideModel_userInfoForAccessControlWithGUID___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v9 = 0;
  v4 = [v2 dbQueueAccessControlWithGUID:v3 outObject:0 outAlbumGUID:0 outEmail:0 outUserInfoData:&v9];
  v5 = v9;
  if (v4)
  {
    v6 = [MEMORY[0x277CCAAC8] MSSafeUnarchiveObjectWithData:v5 outError:0];
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (void)setUserInfo:(id)info forAccessControlWithGUID:(id)d
{
  infoCopy = info;
  dCopy = d;
  if (dCopy)
  {
    dbQueue = [(MSASModelBase *)self dbQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__MSASServerSideModel_setUserInfo_forAccessControlWithGUID___block_invoke;
    block[3] = &unk_278E92638;
    block[4] = self;
    v10 = infoCopy;
    v11 = dCopy;
    dispatch_async(dbQueue, block);
  }
}

void __60__MSASServerSideModel_setUserInfo_forAccessControlWithGUID___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) statementForString:@"update or ignore AccessControls set userInfo = ? where GUID = ?;"];
  v3 = *(a1 + 40);
  v16 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v16];
  v5 = v16;
  v6 = v5;
  if (v4)
  {
    v7 = MSSqliteBindDataOrNull(v2, 1, v4);
  }

  else
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [v5 userInfo];
    v10 = [v8 stringWithFormat:@"Failed to archive a userInfo object. Error: %@ Info: %@", v6, v9];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = v10;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    v7 = sqlite3_bind_null(v2, 1);
  }

  v11 = v7;
  MSSqliteTrapForDBLockError(v7);
  if (!v11)
  {
    v12 = MSSqliteBindStringOrNull(v2, 2, *(a1 + 48));
    v13 = v12;
    MSSqliteTrapForDBLockError(v12);
    if (!v13)
    {
      v14 = sqlite3_step(v2);
      MSSqliteTrapForDBLockError(v14);
    }
  }

  if (v2)
  {
    sqlite3_reset(v2);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)userInfoForAssetCollectionWithGUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6923;
  v16 = __Block_byref_object_dispose__6924;
  v17 = 0;
  if (dCopy)
  {
    dbQueue = [(MSASModelBase *)self dbQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__MSASServerSideModel_userInfoForAssetCollectionWithGUID___block_invoke;
    block[3] = &unk_278E91C78;
    block[4] = self;
    v10 = dCopy;
    v11 = &v12;
    dispatch_sync(dbQueue, block);

    v6 = v13[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __58__MSASServerSideModel_userInfoForAssetCollectionWithGUID___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v9 = 0;
  v4 = [v2 dbQueueAssetCollectionWithGUID:v3 outObject:0 outCtag:0 outAlbumGUID:0 outBatchDate:0 outPhotoDate:0 outPhotoNumber:0 outUserInfoData:&v9];
  v5 = v9;
  if (v4)
  {
    v6 = [MEMORY[0x277CCAAC8] MSSafeUnarchiveObjectWithData:v5 outError:0];
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (void)setUserInfo:(id)info forAssetCollectionWithGUID:(id)d
{
  infoCopy = info;
  dCopy = d;
  if (dCopy)
  {
    dbQueue = [(MSASModelBase *)self dbQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__MSASServerSideModel_setUserInfo_forAssetCollectionWithGUID___block_invoke;
    block[3] = &unk_278E92638;
    block[4] = self;
    v10 = infoCopy;
    v11 = dCopy;
    dispatch_async(dbQueue, block);
  }
}

void __62__MSASServerSideModel_setUserInfo_forAssetCollectionWithGUID___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) statementForString:@"update or ignore AssetCollections set userInfo = ? where GUID = ?;"];
  v3 = *(a1 + 40);
  v16 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v16];
  v5 = v16;
  v6 = v5;
  if (v4)
  {
    v7 = MSSqliteBindDataOrNull(v2, 1, v4);
  }

  else
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [v5 userInfo];
    v10 = [v8 stringWithFormat:@"Failed to archive a userInfo object. Error: %@ Info: %@", v6, v9];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = v10;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    v7 = sqlite3_bind_null(v2, 1);
  }

  v11 = v7;
  MSSqliteTrapForDBLockError(v7);
  if (!v11)
  {
    v12 = MSSqliteBindStringOrNull(v2, 2, *(a1 + 48));
    v13 = v12;
    MSSqliteTrapForDBLockError(v12);
    if (!v13)
    {
      v14 = sqlite3_step(v2);
      MSSqliteTrapForDBLockError(v14);
    }
  }

  if (v2)
  {
    sqlite3_reset(v2);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)userInfoForAlbumWithGUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6923;
  v16 = __Block_byref_object_dispose__6924;
  v17 = 0;
  if (dCopy)
  {
    dbQueue = [(MSASModelBase *)self dbQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__MSASServerSideModel_userInfoForAlbumWithGUID___block_invoke;
    block[3] = &unk_278E91C78;
    block[4] = self;
    v10 = dCopy;
    v11 = &v12;
    dispatch_sync(dbQueue, block);

    v6 = v13[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __48__MSASServerSideModel_userInfoForAlbumWithGUID___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v9 = 0;
  v4 = [v2 dbQueueAlbumWithGUID:v3 outObject:0 outName:0 outCtag:0 outForeignCtag:0 outURLString:0 outUserInfoData:&v9 outClientOrgKey:0];
  v5 = v9;
  if (v4)
  {
    v6 = [MEMORY[0x277CCAAC8] MSSafeUnarchiveObjectWithData:v5 outError:0];
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (void)setUserInfo:(id)info forAlbumWithGUID:(id)d
{
  infoCopy = info;
  dCopy = d;
  if (dCopy)
  {
    dbQueue = [(MSASModelBase *)self dbQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__MSASServerSideModel_setUserInfo_forAlbumWithGUID___block_invoke;
    block[3] = &unk_278E92638;
    block[4] = self;
    v10 = infoCopy;
    v11 = dCopy;
    dispatch_async(dbQueue, block);
  }
}

void __52__MSASServerSideModel_setUserInfo_forAlbumWithGUID___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) statementForString:@"update or ignore Albums set userInfo = ? where GUID = ?;"];
  v3 = *(a1 + 40);
  v16 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v16];
  v5 = v16;
  v6 = v5;
  if (v4)
  {
    v7 = MSSqliteBindDataOrNull(v2, 1, v4);
  }

  else
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [v5 userInfo];
    v10 = [v8 stringWithFormat:@"Failed to archive a userInfo object. Error: %@ Info: %@", v6, v9];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = v10;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    v7 = sqlite3_bind_null(v2, 1);
  }

  v11 = v7;
  MSSqliteTrapForDBLockError(v7);
  if (!v11)
  {
    v12 = MSSqliteBindStringOrNull(v2, 2, *(a1 + 48));
    v13 = v12;
    MSSqliteTrapForDBLockError(v12);
    if (!v13)
    {
      v14 = sqlite3_step(v2);
      MSSqliteTrapForDBLockError(v14);
    }
  }

  if (v2)
  {
    sqlite3_reset(v2);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)captionForAssetCollectionWithGUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6923;
  v16 = __Block_byref_object_dispose__6924;
  v17 = 0;
  if (dCopy)
  {
    dbQueue = [(MSASModelBase *)self dbQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__MSASServerSideModel_captionForAssetCollectionWithGUID___block_invoke;
    block[3] = &unk_278E91C78;
    block[4] = self;
    v10 = dCopy;
    v11 = &v12;
    dispatch_sync(dbQueue, block);

    v6 = v13[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __57__MSASServerSideModel_captionForAssetCollectionWithGUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) statementForString:@"select obj from Comments where assetCollectionGUID = ? and isCaption != 0 order by timestamp limit 1;"];
  v3 = MSSqliteBindStringOrNull(v2, 1, *(a1 + 40));
  v4 = v3;
  MSSqliteTrapForDBLockError(v3);
  if (!v4)
  {
    v5 = sqlite3_step(v2);
    if (v5 != 101)
    {
      if (v5 == 100)
      {
        v6 = MSSqliteObjectFromStatementColumn(v2, 0);
        v7 = *(*(a1 + 48) + 8);
        v8 = *(v7 + 40);
        *(v7 + 40) = v6;
      }

      else
      {
        MSLogSqliteError([*(a1 + 32) dbQueueDB], *(a1 + 32), 1005);
      }
    }
  }

  if (v2)
  {

    sqlite3_reset(v2);
  }
}

- (id)commentWithGUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6923;
  v16 = __Block_byref_object_dispose__6924;
  v17 = 0;
  if (dCopy)
  {
    dbQueue = [(MSASModelBase *)self dbQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__MSASServerSideModel_commentWithGUID___block_invoke;
    block[3] = &unk_278E91C78;
    block[4] = self;
    v10 = dCopy;
    v11 = &v12;
    dispatch_sync(dbQueue, block);

    v6 = v13[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __39__MSASServerSideModel_commentWithGUID___block_invoke(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  [v2 dbQueueCommentWithGUID:v1 outObject:&obj outID:0 outTimestamp:0 outAssetCollectionGUID:0 outIsCaption:0 outUserInfoData:0];
  objc_storeStrong((v3 + 40), obj);
}

- (id)dbQueueCommentsForAssetCollectionWithGUID:(id)d
{
  if (d)
  {
    dCopy = d;
    dbQueueDB = [(MSASModelBase *)self dbQueueDB];
    dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"select obj from Comments where assetCollectionGUID = '%@' order by timestamp asc", dCopy];;

    v7 = [MSASModelEnumerator enumeratorWithDatabase:dbQueueDB query:dCopy stepBlock:&__block_literal_global_192];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)commentsForAssetCollectionWithGUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6923;
  v16 = __Block_byref_object_dispose__6924;
  v17 = 0;
  if (dCopy)
  {
    dbQueue = [(MSASModelBase *)self dbQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__MSASServerSideModel_commentsForAssetCollectionWithGUID___block_invoke;
    block[3] = &unk_278E91C78;
    v11 = &v12;
    block[4] = self;
    v10 = dCopy;
    dispatch_sync(dbQueue, block);

    v6 = v13[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __58__MSASServerSideModel_commentsForAssetCollectionWithGUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dbQueueCommentsForAssetCollectionWithGUID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) dbQueue];
  [*(*(*(a1 + 48) + 8) + 40) setQueue:v5];
}

- (id)assetCollectionWithGUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6923;
  v16 = __Block_byref_object_dispose__6924;
  v17 = 0;
  if (dCopy)
  {
    dbQueue = [(MSASModelBase *)self dbQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__MSASServerSideModel_assetCollectionWithGUID___block_invoke;
    block[3] = &unk_278E91C78;
    block[4] = self;
    v10 = dCopy;
    v11 = &v12;
    dispatch_sync(dbQueue, block);

    v6 = v13[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __47__MSASServerSideModel_assetCollectionWithGUID___block_invoke(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  [v2 dbQueueAssetCollectionWithGUID:v1 outObject:&obj outCtag:0 outAlbumGUID:0 outBatchDate:0 outPhotoDate:0 outPhotoNumber:0 outUserInfoData:0];
  objc_storeStrong((v3 + 40), obj);
}

- (id)dbQueueAssetCollectionGUIDsInAlbumWithGUID:(id)d
{
  if (d)
  {
    dCopy = d;
    dbQueueDB = [(MSASModelBase *)self dbQueueDB];
    dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"select GUID from AssetCollections where albumGUID = '%@' order by albumGUID asc, batchDate asc, photoDate asc, GUID asc", dCopy];;

    v7 = [MSASModelEnumerator enumeratorWithDatabase:dbQueueDB query:dCopy stepBlock:&__block_literal_global_187];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)assetCollectionGUIDsInAlbumWithGUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6923;
  v16 = __Block_byref_object_dispose__6924;
  v17 = 0;
  if (dCopy)
  {
    dbQueue = [(MSASModelBase *)self dbQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__MSASServerSideModel_assetCollectionGUIDsInAlbumWithGUID___block_invoke;
    block[3] = &unk_278E91C78;
    v11 = &v12;
    block[4] = self;
    v10 = dCopy;
    dispatch_sync(dbQueue, block);

    v6 = v13[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __59__MSASServerSideModel_assetCollectionGUIDsInAlbumWithGUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dbQueueAssetCollectionGUIDsInAlbumWithGUID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) dbQueue];
  [*(*(*(a1 + 48) + 8) + 40) setQueue:v5];
}

- (id)assetCollectionsInAlbumWithGUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6923;
  v16 = __Block_byref_object_dispose__6924;
  v17 = 0;
  if (dCopy)
  {
    dbQueue = [(MSASModelBase *)self dbQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__MSASServerSideModel_assetCollectionsInAlbumWithGUID___block_invoke;
    block[3] = &unk_278E91C78;
    v11 = &v12;
    block[4] = self;
    v10 = dCopy;
    dispatch_sync(dbQueue, block);

    v6 = v13[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __55__MSASServerSideModel_assetCollectionsInAlbumWithGUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dbQueueDB];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"select obj from AssetCollections where albumGUID = '%@' order by albumGUID asc, batchDate asc, photoDate asc, GUID asc", *(a1 + 40)];;
  v4 = [MSASModelEnumerator enumeratorWithDatabase:v2 query:v3 stepBlock:&__block_literal_global_182];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [*(a1 + 32) dbQueue];
  [*(*(*(a1 + 48) + 8) + 40) setQueue:v7];
}

- (void)videoURLsForAssetCollectionWithGUID:(id)d forMediaAssetType:(unint64_t)type completionBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  if (dCopy)
  {
    dbQueue = [(MSASModelBase *)self dbQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __93__MSASServerSideModel_videoURLsForAssetCollectionWithGUID_forMediaAssetType_completionBlock___block_invoke;
    v11[3] = &unk_278E91CF0;
    v11[4] = self;
    v12 = dCopy;
    typeCopy = type;
    v13 = blockCopy;
    dispatch_async(dbQueue, v11);
  }
}

void __93__MSASServerSideModel_videoURLsForAssetCollectionWithGUID_forMediaAssetType_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v16 = 0;
  v15 = 0;
  v4 = [v2 dbQueueAssetCollectionWithGUID:v3 outObject:&v16 outCtag:0 outAlbumGUID:&v15 outBatchDate:0 outPhotoDate:0 outPhotoNumber:0 outUserInfoData:0];
  v5 = v16;
  v6 = v15;
  v7 = 0;
  if (v4)
  {
    v8 = *(a1 + 32);
    v14 = 0;
    v9 = [v8 dbQueueAlbumWithGUID:v6 outObject:&v14 outName:0 outCtag:0 outForeignCtag:0 outURLString:0 outUserInfoData:0 outClientOrgKey:0];
    v7 = v14;
    if (v9)
    {
      v10 = [*(a1 + 32) stateMachine];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __93__MSASServerSideModel_videoURLsForAssetCollectionWithGUID_forMediaAssetType_completionBlock___block_invoke_2;
      v12[3] = &unk_278E91CC8;
      v11 = *(a1 + 56);
      v13 = *(a1 + 48);
      [v10 videoURLsForAssetCollection:v5 forMediaAssetType:v11 inAlbum:v7 completionBlock:v12];
    }
  }
}

uint64_t __93__MSASServerSideModel_videoURLsForAssetCollectionWithGUID_forMediaAssetType_completionBlock___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)videoURLForAssetCollectionWithGUID:(id)d completionBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  if (dCopy)
  {
    dbQueue = [(MSASModelBase *)self dbQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__MSASServerSideModel_videoURLForAssetCollectionWithGUID_completionBlock___block_invoke;
    block[3] = &unk_278E91E38;
    block[4] = self;
    v10 = dCopy;
    v11 = blockCopy;
    dispatch_async(dbQueue, block);
  }
}

void __74__MSASServerSideModel_videoURLForAssetCollectionWithGUID_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v15 = 0;
  v14 = 0;
  v4 = [v2 dbQueueAssetCollectionWithGUID:v3 outObject:&v15 outCtag:0 outAlbumGUID:&v14 outBatchDate:0 outPhotoDate:0 outPhotoNumber:0 outUserInfoData:0];
  v5 = v15;
  v6 = v14;
  v7 = 0;
  if (v4)
  {
    v8 = *(a1 + 32);
    v13 = 0;
    v9 = [v8 dbQueueAlbumWithGUID:v6 outObject:&v13 outName:0 outCtag:0 outForeignCtag:0 outURLString:0 outUserInfoData:0 outClientOrgKey:0];
    v7 = v13;
    if (v9)
    {
      v10 = [*(a1 + 32) stateMachine];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __74__MSASServerSideModel_videoURLForAssetCollectionWithGUID_completionBlock___block_invoke_2;
      v11[3] = &unk_278E91CA0;
      v12 = *(a1 + 48);
      [v10 videoURLForAssetCollection:v5 inAlbum:v7 completionBlock:v11];
    }
  }
}

uint64_t __74__MSASServerSideModel_videoURLForAssetCollectionWithGUID_completionBlock___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)invitationWithGUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6923;
  v16 = __Block_byref_object_dispose__6924;
  v17 = 0;
  if (dCopy)
  {
    dbQueue = [(MSASModelBase *)self dbQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__MSASServerSideModel_invitationWithGUID___block_invoke;
    block[3] = &unk_278E91C78;
    block[4] = self;
    v10 = dCopy;
    v11 = &v12;
    dispatch_sync(dbQueue, block);

    v6 = v13[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __42__MSASServerSideModel_invitationWithGUID___block_invoke(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  [v2 dbQueueInvitationWithGUID:v1 outObject:&obj outAlbumGUID:0 outEmail:0 outUserInfoData:0];
  objc_storeStrong((v3 + 40), obj);
}

- (id)dbQueueInvitationForAlbumWithGUID:(id)d
{
  if (d)
  {
    v6 = 0;
    [(MSASServerSideModel *)self dbQueueInvitationWithAlbumGUID:d outObject:&v6 outInvitationGUID:0 outEmail:0 outUserInfoData:0];
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)invitationForAlbumWithGUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6923;
  v16 = __Block_byref_object_dispose__6924;
  v17 = 0;
  if (dCopy)
  {
    dbQueue = [(MSASModelBase *)self dbQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__MSASServerSideModel_invitationForAlbumWithGUID___block_invoke;
    block[3] = &unk_278E91C78;
    v11 = &v12;
    block[4] = self;
    v10 = dCopy;
    dispatch_sync(dbQueue, block);

    v6 = v13[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __50__MSASServerSideModel_invitationForAlbumWithGUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dbQueueInvitationForAlbumWithGUID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)invitationGUIDs
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6923;
  v11 = __Block_byref_object_dispose__6924;
  v12 = 0;
  dbQueue = [(MSASModelBase *)self dbQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__MSASServerSideModel_invitationGUIDs__block_invoke;
  v6[3] = &unk_278E92700;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(dbQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __38__MSASServerSideModel_invitationGUIDs__block_invoke(uint64_t a1)
{
  v2 = +[MSASModelEnumerator enumeratorWithDatabase:query:stepBlock:](MSASModelEnumerator, "enumeratorWithDatabase:query:stepBlock:", [*(a1 + 32) dbQueueDB], @"select GUID from Invitations order by email", &__block_literal_global_175);;
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) dbQueue];
  [*(*(*(a1 + 40) + 8) + 40) setQueue:v5];
}

- (id)invitations
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6923;
  v11 = __Block_byref_object_dispose__6924;
  v12 = 0;
  dbQueue = [(MSASModelBase *)self dbQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__MSASServerSideModel_invitations__block_invoke;
  v6[3] = &unk_278E92700;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(dbQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __34__MSASServerSideModel_invitations__block_invoke(uint64_t a1)
{
  v2 = +[MSASModelEnumerator enumeratorWithDatabase:query:stepBlock:](MSASModelEnumerator, "enumeratorWithDatabase:query:stepBlock:", [*(a1 + 32) dbQueueDB], @"select obj from Invitations order by email", &__block_literal_global_170);;
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) dbQueue];
  [*(*(*(a1 + 40) + 8) + 40) setQueue:v5];
}

- (id)accessControlWithGUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6923;
  v16 = __Block_byref_object_dispose__6924;
  v17 = 0;
  if (dCopy)
  {
    dbQueue = [(MSASModelBase *)self dbQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__MSASServerSideModel_accessControlWithGUID___block_invoke;
    block[3] = &unk_278E91C78;
    block[4] = self;
    v10 = dCopy;
    v11 = &v12;
    dispatch_sync(dbQueue, block);

    v6 = v13[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __45__MSASServerSideModel_accessControlWithGUID___block_invoke(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  [v2 dbQueueAccessControlWithGUID:v1 outObject:&obj outAlbumGUID:0 outEmail:0 outUserInfoData:0];
  objc_storeStrong((v3 + 40), obj);
}

- (id)dbQueueAccessControlGUIDsForAlbumWithGUID:(id)d
{
  if (d)
  {
    dCopy = d;
    dbQueueDB = [(MSASModelBase *)self dbQueueDB];
    dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"select GUID from AccessControls where albumGUID = '%@' order by email asc", dCopy];;

    v7 = [MSASModelEnumerator enumeratorWithDatabase:dbQueueDB query:dCopy stepBlock:&__block_literal_global_165];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)accessControlGUIDsForAlbumWithGUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6923;
  v16 = __Block_byref_object_dispose__6924;
  v17 = 0;
  if (dCopy)
  {
    dbQueue = [(MSASModelBase *)self dbQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__MSASServerSideModel_accessControlGUIDsForAlbumWithGUID___block_invoke;
    block[3] = &unk_278E91C78;
    v11 = &v12;
    block[4] = self;
    v10 = dCopy;
    dispatch_sync(dbQueue, block);

    v6 = v13[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __58__MSASServerSideModel_accessControlGUIDsForAlbumWithGUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dbQueueAccessControlGUIDsForAlbumWithGUID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) dbQueue];
  [*(*(*(a1 + 48) + 8) + 40) setQueue:v5];
}

- (id)dbQueueAccessControlsForAlbumWithGUID:(id)d
{
  if (d)
  {
    dCopy = d;
    dbQueueDB = [(MSASModelBase *)self dbQueueDB];
    dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"select obj from AccessControls where albumGUID = '%@' order by email asc", dCopy];;

    v7 = [MSASModelEnumerator enumeratorWithDatabase:dbQueueDB query:dCopy stepBlock:&__block_literal_global_160];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)accessControlsForAlbumWithGUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6923;
  v16 = __Block_byref_object_dispose__6924;
  v17 = 0;
  if (dCopy)
  {
    dbQueue = [(MSASModelBase *)self dbQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__MSASServerSideModel_accessControlsForAlbumWithGUID___block_invoke;
    block[3] = &unk_278E91C78;
    v11 = &v12;
    block[4] = self;
    v10 = dCopy;
    dispatch_sync(dbQueue, block);

    v6 = v13[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __54__MSASServerSideModel_accessControlsForAlbumWithGUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dbQueueAccessControlsForAlbumWithGUID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) dbQueue];
  [*(*(*(a1 + 48) + 8) + 40) setQueue:v5];
}

- (id)albumWithGUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6923;
  v16 = __Block_byref_object_dispose__6924;
  v17 = 0;
  if (dCopy)
  {
    dbQueue = [(MSASModelBase *)self dbQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__MSASServerSideModel_albumWithGUID___block_invoke;
    block[3] = &unk_278E91C78;
    block[4] = self;
    v10 = dCopy;
    v11 = &v12;
    dispatch_sync(dbQueue, block);

    v6 = v13[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __37__MSASServerSideModel_albumWithGUID___block_invoke(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  [v2 dbQueueAlbumWithGUID:v1 outObject:&obj outName:0 outCtag:0 outForeignCtag:0 outURLString:0 outUserInfoData:0 outClientOrgKey:0];
  objc_storeStrong((v3 + 40), obj);
}

- (id)dbQueueAlbumGUIDs
{
  dbQueueDB = [(MSASModelBase *)self dbQueueDB];

  return [MSASModelEnumerator enumeratorWithDatabase:dbQueueDB query:@"select GUID from Albums order by GUID asc;" stepBlock:&__block_literal_global_154];
}

- (id)albumGUIDs
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6923;
  v11 = __Block_byref_object_dispose__6924;
  v12 = 0;
  dbQueue = [(MSASModelBase *)self dbQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__MSASServerSideModel_albumGUIDs__block_invoke;
  v6[3] = &unk_278E92700;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(dbQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __33__MSASServerSideModel_albumGUIDs__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dbQueueAlbumGUIDs];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) dbQueue];
  [*(*(*(a1 + 40) + 8) + 40) setQueue:v5];
}

- (id)albums
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6923;
  v11 = __Block_byref_object_dispose__6924;
  v12 = 0;
  dbQueue = [(MSASModelBase *)self dbQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __29__MSASServerSideModel_albums__block_invoke;
  v6[3] = &unk_278E92700;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(dbQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __29__MSASServerSideModel_albums__block_invoke(uint64_t a1)
{
  v2 = +[MSASModelEnumerator enumeratorWithDatabase:query:stepBlock:](MSASModelEnumerator, "enumeratorWithDatabase:query:stepBlock:", [*(a1 + 32) dbQueueDB], @"select obj from Albums order by GUID asc", &__block_literal_global_7145);;
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) dbQueue];
  [*(*(*(a1 + 40) + 8) + 40) setQueue:v5];
}

- (void)removeObserver:(id)observer
{
  if (observer)
  {
    observerCopy = observer;
    observers = [(MSASServerSideModel *)self observers];
    [observers removeObject:observerCopy];
  }
}

- (void)addObserver:(id)observer
{
  if (observer)
  {
    observerCopy = observer;
    observers = [(MSASServerSideModel *)self observers];
    [observers addObject:observerCopy];
  }
}

- (NSCountedSet)observers
{
  observers = self->_observers;
  if (!observers)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA940]);
    v5 = self->_observers;
    self->_observers = v4;

    observers = self->_observers;
  }

  return observers;
}

- (BOOL)hasEnqueuedActivities
{
  stateMachine = [(MSASServerSideModel *)self stateMachine];
  hasEnqueuedActivities = [stateMachine hasEnqueuedActivities];

  return hasEnqueuedActivities;
}

- (BOOL)hasCommandsInGroupedCommandQueue
{
  commandQueue = [(MSASServerSideModel *)self commandQueue];
  hasEnqueuedItems = [commandQueue hasEnqueuedItems];

  return hasEnqueuedItems;
}

- (void)shutDownForDestruction:(BOOL)destruction completionBlock:(id)block
{
  destructionCopy = destruction;
  blockCopy = block;
  commandQueue = [(MSASServerSideModel *)self commandQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__MSASServerSideModel_shutDownForDestruction_completionBlock___block_invoke;
  v9[3] = &unk_278E92778;
  v11 = destructionCopy;
  v9[4] = self;
  v10 = blockCopy;
  v8 = blockCopy;
  [commandQueue shutDownFlush:!destructionCopy completionBlock:v9];
}

id __62__MSASServerSideModel_shutDownForDestruction_completionBlock___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    *buf = 138543362;
    v9 = v2;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Command Queue has shut down.", buf, 0xCu);
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 40);
  v7.receiver = *(a1 + 32);
  v7.super_class = MSASServerSideModel;
  result = objc_msgSendSuper2(&v7, sel_shutDownForDestruction_completionBlock_, v3, v4);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)cancel
{
  stateMachine = [(MSASServerSideModel *)self stateMachine];
  [stateMachine cancelCompletionBlock:0];
}

- (void)setMaxGroupedCallbackEventIdleInterval:(double)interval
{
  commandQueue = [(MSASServerSideModel *)self commandQueue];
  [commandQueue setMaxGroupedCallbackEventIdleInterval:interval];
}

- (double)maxGroupedCallbackEventIdleInterval
{
  commandQueue = [(MSASServerSideModel *)self commandQueue];
  [commandQueue maxGroupedCallbackEventIdleInterval];
  v4 = v3;

  return v4;
}

- (void)setMaxGroupedCallbackEventStaleness:(double)staleness
{
  commandQueue = [(MSASServerSideModel *)self commandQueue];
  [commandQueue setMaxGroupedCallbackEventStaleness:staleness];
}

- (double)maxGroupedCallbackEventStaleness
{
  commandQueue = [(MSASServerSideModel *)self commandQueue];
  [commandQueue maxGroupedCallbackEventStaleness];
  v4 = v3;

  return v4;
}

- (int)maxGroupedCallbackEventBatchCount
{
  commandQueue = [(MSASServerSideModel *)self commandQueue];
  maxGroupedCallbackEventBatchCount = [commandQueue maxGroupedCallbackEventBatchCount];

  return maxGroupedCallbackEventBatchCount;
}

- (MSASServerSideModel)initWithPersonID:(id)d databasePath:(id)path eventQueue:(id)queue
{
  queueCopy = queue;
  v24.receiver = self;
  v24.super_class = MSASServerSideModel;
  v9 = [(MSASModelBase *)&v24 initWithPersonID:d databasePath:path currentVersion:9];
  if (v9)
  {
    v10 = dispatch_queue_create("MSASServerSideModel member queue", MEMORY[0x277D85CD8]);
    memberQueue = v9->_memberQueue;
    v9->_memberQueue = v10;

    if (queueCopy)
    {
      v12 = queueCopy;
      eventQueue = v9->_eventQueue;
      v9->_eventQueue = v12;
    }

    else
    {
      v14 = MEMORY[0x277D85CD0];
      v15 = MEMORY[0x277D85CD0];
      eventQueue = v9->_eventQueue;
      v9->_eventQueue = v14;
    }

    v16 = objc_alloc_init(MSASServerSideModelGroupedCommandQueue);
    commandQueue = v9->_commandQueue;
    v9->_commandQueue = v16;

    [(MSASGroupedQueue *)v9->_commandQueue setModel:v9];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v19 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __64__MSASServerSideModel_initWithPersonID_databasePath_eventQueue___block_invoke;
    v22[3] = &unk_278E91C28;
    v23 = v9;
    v20 = [defaultCenter addObserverForName:@"MSASServerSideConfigDidChangeNotification" object:0 queue:v19 usingBlock:v22];
  }

  return v9;
}

void __64__MSASServerSideModel_initWithPersonID_databasePath_eventQueue___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKey:@"personID"];

  v5 = [*(a1 + 32) personID];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = [*(a1 + 32) eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__MSASServerSideModel_initWithPersonID_databasePath_eventQueue___block_invoke_2;
    block[3] = &unk_278E926D8;
    v9 = *(a1 + 32);
    dispatch_async(v7, block);
  }
}

void __64__MSASServerSideModel_initWithPersonID_databasePath_eventQueue___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__MSASServerSideModel_initWithPersonID_databasePath_eventQueue___block_invoke_3;
  v6[3] = &unk_278E91C00;
  v7 = v2;
  [v7 eventQueuePerformBlockOnObservers:v6];
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__MSASServerSideModel_initWithPersonID_databasePath_eventQueue___block_invoke_4;
  v4[3] = &unk_278E91C00;
  v5 = v3;
  [v5 eventQueuePerformBlockOnObservers:v4];
}

void __64__MSASServerSideModel_initWithPersonID_databasePath_eventQueue___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModelDidReceiveNewServerSideConfiguration:*(a1 + 32) info:0];
  }
}

void __64__MSASServerSideModel_initWithPersonID_databasePath_eventQueue___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 MSASModelDidReceiveNewServerSideConfiguration:*(a1 + 32)];
  }
}

- (void)releaseBusy
{
  eventQueue = [(MSASServerSideModel *)self eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__MSASServerSideModel_releaseBusy__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(eventQueue, block);
}

void __34__MSASServerSideModel_releaseBusy__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) daemon];
  [v1 releaseBusy];
}

- (void)retainBusy
{
  eventQueue = [(MSASServerSideModel *)self eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__MSASServerSideModel_retainBusy__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(eventQueue, block);
}

void __33__MSASServerSideModel_retainBusy__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) daemon];
  [v1 retainBusy];
}

- (MSASServerSideModel)initWithPersonID:(id)d
{
  dCopy = d;
  v5 = MSPathAlbumSharingModelForPersonID(dCopy);
  v6 = [(MSASServerSideModel *)self initWithPersonID:dCopy databasePath:v5 eventQueue:MEMORY[0x277D85CD0]];

  return v6;
}

- (void)performBlockOnObservers:(id)observers
{
  observersCopy = observers;
  eventQueue = [(MSASServerSideModel *)self eventQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__MSASServerSideModel_GroupedCommands__performBlockOnObservers___block_invoke;
  v7[3] = &unk_278E927A0;
  v7[4] = self;
  v8 = observersCopy;
  v6 = observersCopy;
  dispatch_async(eventQueue, v7);
}

- (void)removeCommandsUpToCommandIndex:(int64_t)index
{
  dbQueue = [(MSASModelBase *)self dbQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__MSASServerSideModel_GroupedCommands__removeCommandsUpToCommandIndex___block_invoke;
  v6[3] = &unk_278E92750;
  v6[4] = self;
  v6[5] = index;
  dispatch_async(dbQueue, v6);
}

void __71__MSASServerSideModel_GroupedCommands__removeCommandsUpToCommandIndex___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) statementForString:@"delete from GroupedCommand where rowid <= ?;"];
  v3 = sqlite3_bind_int64(v2, 1, *(a1 + 40));
  v4 = v3;
  MSSqliteTrapForDBLockError(v3);
  if (v4)
  {
    v5 = 4903;
  }

  else
  {
    v6 = sqlite3_step(v2);
    v7 = v6;
    MSSqliteTrapForDBLockError(v6);
    if (v7 == 101)
    {
      goto LABEL_6;
    }

    v5 = 4904;
  }

  MSLogSqliteError([*(a1 + 32) dbQueueDB], *(a1 + 32), v5);
LABEL_6:
  if (v2)
  {

    sqlite3_reset(v2);
  }
}

- (id)nextCommandGroupMaxCount:(int)count outCommand:(id *)command outLastCommandIndex:(int64_t *)index
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__6923;
  v28 = __Block_byref_object_dispose__6924;
  array = [MEMORY[0x277CBEB18] array];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__6923;
  v22 = __Block_byref_object_dispose__6924;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  dbQueue = [(MSASModelBase *)self dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__MSASServerSideModel_GroupedCommands__nextCommandGroupMaxCount_outCommand_outLastCommandIndex___block_invoke;
  block[3] = &unk_278E92158;
  countCopy = count;
  block[4] = self;
  block[5] = &v18;
  block[6] = &v24;
  block[7] = &v14;
  dispatch_sync(dbQueue, block);

  if ([v25[5] count])
  {
    if (command)
    {
      *command = v19[5];
    }

    if (index)
    {
      *index = v15[3];
    }

    v10 = v25[5];
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);

  return v10;
}

void __96__MSASServerSideModel_GroupedCommands__nextCommandGroupMaxCount_outCommand_outLastCommandIndex___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) statementForString:{@"select rowid, command, invariant, variant from GroupedCommand order by rowid asc limit ?;"}];
  v3 = sqlite3_bind_int(v2, 1, *(a1 + 64));
  v4 = v3;
  MSSqliteTrapForDBLockError(v3);
  if (!v4)
  {
    v5 = 0;
    v21 = 0;
    while (1)
    {
      if (v5)
      {
        goto LABEL_3;
      }

      v6 = sqlite3_step(v2);
      if (v6 != 101)
      {
        if (v6 == 100)
        {
          v7 = sqlite3_column_int64(v2, 0);
          v8 = MSSqliteStringFromStatementColumn(v2, 1);
          v9 = MSSqliteObjectFromStatementColumn(v2, 2);
          v10 = MSSqliteObjectFromStatementColumn(v2, 3);
          v11 = *(*(a1 + 40) + 8);
          v13 = *(v11 + 40);
          v12 = (v11 + 40);
          if (!v13)
          {
            objc_storeStrong(v12, v8);
          }

          v14 = [MSASEnqueuedCommand commandwithCommand:v8 variantParam:v10 invariantParam:v9];
          v15 = v21;
          if (v21 && (v16 = [v21 canBeGroupedWithCommand:v14], v15 = v21, !v16))
          {
            v19 = 0;
            v18 = 2;
          }

          else
          {
            v22 = v15;
            [*(*(*(a1 + 48) + 8) + 40) addObject:v14];
            v17 = v14;

            v18 = 0;
            *(*(*(a1 + 56) + 8) + 24) = v7;
            v19 = 1;
            v21 = v17;
          }

          v20 = 0;
          v5 = 0;
          if ((v19 & 1) == 0)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

        MSLogSqliteError([*(a1 + 32) dbQueueDB], *(a1 + 32), 4883);
      }

      v20 = 1;
LABEL_19:
      v18 = 0;
      v5 = v20;
LABEL_20:
      if (v18)
      {
        goto LABEL_3;
      }
    }
  }

  MSLogSqliteError([*(a1 + 32) dbQueueDB], *(a1 + 32), 4861);
  v21 = 0;
LABEL_3:
  if (v2)
  {
    sqlite3_reset(v2);
  }
}

- (int)commandCount
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dbQueue = [(MSASModelBase *)self dbQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__MSASServerSideModel_GroupedCommands__commandCount__block_invoke;
  v5[3] = &unk_278E92700;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(dbQueue, v5);

  LODWORD(selfCopy) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __52__MSASServerSideModel_GroupedCommands__commandCount__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) statementForString:@"select count(*) from GroupedCommand;"];
  v3 = sqlite3_step(v2);
  if (v3 != 101)
  {
    if (v3 != 100)
    {
      MSLogSqliteError([*(a1 + 32) dbQueueDB], *(a1 + 32), 4845);
      if (!v2)
      {
        return;
      }

      goto LABEL_5;
    }

    *(*(*(a1 + 40) + 8) + 24) = sqlite3_column_int(v2, 0);
  }

  if (!v2)
  {
    return;
  }

LABEL_5:

  sqlite3_reset(v2);
}

- (void)enqueueCommand:(id)command
{
  v12 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  command = [commandCopy command];

  if (command)
  {
    dbQueue = [(MSASModelBase *)self dbQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__MSASServerSideModel_GroupedCommands__enqueueCommand___block_invoke;
    v8[3] = &unk_278E927C8;
    v8[4] = self;
    v9 = commandCopy;
    dispatch_async(dbQueue, v8);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Attempting to enqueue a command without a command string. Rejected and ignored.", buf, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __55__MSASServerSideModel_GroupedCommands__enqueueCommand___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) statementForString:{@"insert or rollback into GroupedCommand (command, invariant, variant) values (?, ?, ?);"}];
  v3 = [*(a1 + 40) command];
  MSSqliteBindStringOrNull(v2, 1, v3);

  v4 = MEMORY[0x277CCAAB0];
  v5 = [*(a1 + 40) invariantParam];
  v22 = 0;
  v6 = [v4 archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v22];
  v7 = v22;

  if (v6)
  {
    MSSqliteBindDataOrNull(v2, 2, v6);
  }

  else
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [v7 userInfo];
    v10 = [v8 stringWithFormat:@"Failed to archive an invariantParam object. Error: %@ Info: %@", v7, v9];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = v10;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    sqlite3_bind_null(v2, 2);
  }

  v11 = MEMORY[0x277CCAAB0];
  v12 = [*(a1 + 40) variantParam];
  v21 = v7;
  v13 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v21];
  v14 = v21;

  if (v13)
  {
    MSSqliteBindDataOrNull(v2, 3, v13);
  }

  else
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = [v14 userInfo];
    v17 = [v15 stringWithFormat:@"Failed to archive an variantParam object. Error: %@ Info: %@", v14, v16];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = v17;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    sqlite3_bind_null(v2, 3);
  }

  v18 = sqlite3_step(v2);
  v19 = v18;
  MSSqliteTrapForDBLockError(v18);
  if (v19 != 101)
  {
    MSLogSqliteError([*(a1 + 32) dbQueueDB], *(a1 + 32), 4831);
  }

  if (v2)
  {
    sqlite3_reset(v2);
  }

  v20 = *MEMORY[0x277D85DE8];
}

@end