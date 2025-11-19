@interface MSASStateMachine
- (BOOL)hasEnqueuedActivities;
- (BOOL)isInRetryState;
- (BOOL)workQueueEndCommandWithError:(id)a3 command:(id)a4 params:(id)a5 albumGUID:(id)a6 assetCollectionGUID:(id)a7;
- (MSASPhoneInvitations)phoneInvitations;
- (MSASProtocol)protocol;
- (MSASStateMachine)init;
- (MSASStateMachine)initWithPersonID:(id)a3 eventQueue:(id)a4;
- (MSAlbumSharingDaemon)daemon;
- (NSDictionary)serverSideConfiguration;
- (NSString)serverSideConfigurationVersion;
- (id)_URLReauthFailureWithUnderlyingError:(id)a3;
- (id)_albumForRequestFromParams:(id)a3;
- (id)_assetCollectionFailedError;
- (id)_assetCollectionRejectedError;
- (id)_canceledError;
- (id)_createCopiedAssetsInAssetCollections:(id)a3;
- (id)_metadataBackoffManager;
- (id)_serverSideConfigDictionaryByApplyingDefaultsToDictionary:(id)a3;
- (id)_stoppedError;
- (id)delegate;
- (id)latestNextActivityDate;
- (id)migrationCtagToCheckForChanges;
- (id)persistentObjectForKey:(id)a3;
- (id)rootCtagToCheckForChanges;
- (id)serverCommunicationBackoffDate;
- (id)serverSideQueueServerSideConfiguration;
- (void)MSASAssetDownloader:(id)a3 didFinishDownloadingAsset:(id)a4 inAlbumGUID:(id)a5 error:(id)a6;
- (void)MSASAssetDownloader:(id)a3 willBeginBatchCount:(unint64_t)a4;
- (void)MSASAssetDownloaderDidFinishBatch:(id)a3;
- (void)MSASAssetUploader:(id)a3 didFinishUploadingAssetCollection:(id)a4 intoAlbum:(id)a5 error:(id)a6;
- (void)MSBackoffManagerDidUpdateNextExpiryDate:(id)a3;
- (void)_actionDidFinishWithError:(id)a3 album:(id)a4;
- (void)_addAssetCollectionsDisposition:(int)a3 params:(id)a4;
- (void)_addCommentDisposition:(int)a3 params:(id)a4;
- (void)_cancelOutstandingCommandsDisposition:(int)a3 params:(id)a4;
- (void)_checkForAlbumSyncedStateDisposition:(int)a3 params:(id)a4;
- (void)_checkForAssetCollectionUpdatesDisposition:(int)a3 params:(id)a4;
- (void)_checkForChangesDisposition:(int)a3 params:(id)a4;
- (void)_checkForCommentChangesDisposition:(int)a3 params:(id)a4;
- (void)_checkForUpdatesInAlbumDisposition:(int)a3 params:(id)a4;
- (void)_continueAddingAssetCollectionsDisposition:(int)a3 params:(id)a4;
- (void)_createAlbumDisposition:(int)a3 params:(id)a4;
- (void)_deleteAlbumDisposition:(int)a3 params:(id)a4;
- (void)_deleteAssetCollectionsDisposition:(int)a3 params:(id)a4;
- (void)_deleteAssetFilesInAssetCollection:(id)a3;
- (void)_deleteAssetFilesInAssetCollections:(id)a3;
- (void)_deleteCommentDisposition:(int)a3 params:(id)a4;
- (void)_didFinishCheckingUpdatesInAlbumsDisposition:(int)a3 params:(id)a4;
- (void)_getAccessControlsDisposition:(int)a3 params:(id)a4;
- (void)_getAlbumURLDisposition:(int)a3 params:(id)a4;
- (void)_markAsSpamInvitationForAlbumDisposition:(int)a3 params:(id)a4;
- (void)_markAsSpamInvitationForTokenDisposition:(int)a3 params:(id)a4;
- (void)_removeSharingRelationshipsDisposition:(int)a3 params:(id)a4;
- (void)_scheduleEventDisposition:(int)a3 params:(id)a4;
- (void)_sendGetUploadTokensDisposition:(int)a3 params:(id)a4;
- (void)_sendPutAssetCollectionsDisposition:(int)a3 params:(id)a4;
- (void)_sendReauthorizeAssetsForDownloadDisposition:(int)a3 params:(id)a4;
- (void)_sendUploadCompleteDisposition:(int)a3 params:(id)a4;
- (void)_setAlbumSyncedStateDisposition:(int)a3 params:(id)a4;
- (void)_setAssetCollectionSyncedStateDisposition:(int)a3 params:(id)a4;
- (void)_subscribeToAlbumDisposition:(int)a3 params:(id)a4;
- (void)_unsubscribeFromAlbumDisposition:(int)a3 params:(id)a4;
- (void)_updateAlbumDisposition:(int)a3 params:(id)a4;
- (void)_workQueueEmptyFileTransferQueuesCompletionBlock:(id)a3;
- (void)acceptInvitationWithToken:(id)a3 info:(id)a4 completionBlock:(id)a5;
- (void)addAssetCollections:(id)a3 toAlbum:(id)a4 info:(id)a5;
- (void)addComments:(id)a3 toAssetCollection:(id)a4 inAlbum:(id)a5 info:(id)a6;
- (void)addSharingRelationships:(id)a3 toOwnedAlbum:(id)a4 info:(id)a5 completionBlock:(id)a6;
- (void)cancelCompletionBlock:(id)a3;
- (void)cancelOutstandingCommandsForAlbumWithGUID:(id)a3;
- (void)cancelOutstandingCommandsForAssetCollectionWithGUID:(id)a3;
- (void)checkForAlbumSyncedStateChangesInAlbums:(id)a3 info:(id)a4;
- (void)checkForAssetCollectionUpdates:(id)a3 inAlbum:(id)a4 info:(id)a5;
- (void)checkForChangesIfMissingRootCtag;
- (void)checkForChangesResetSync:(BOOL)a3 info:(id)a4;
- (void)checkForCommentChanges:(id)a3 inAlbumWithGUID:(id)a4 withClientOrgKey:(id)a5;
- (void)checkForUpdatesInAlbums:(id)a3 resetSync:(BOOL)a4 info:(id)a5;
- (void)continueAddingAssetCollections:(id)a3 skipAssetCollections:(id)a4 toAlbum:(id)a5 info:(id)a6;
- (void)createAlbum:(id)a3 info:(id)a4;
- (void)deleteAlbum:(id)a3 info:(id)a4;
- (void)deleteAssetCollections:(id)a3 inAlbum:(id)a4 info:(id)a5;
- (void)deleteComments:(id)a3 inAssetCollection:(id)a4 inAlbum:(id)a5 info:(id)a6;
- (void)getAccessControlsForAlbums:(id)a3 info:(id)a4;
- (void)markAsSpamInvitationForAlbum:(id)a3 invitationGUID:(id)a4 info:(id)a5;
- (void)markAsSpamInvitationForToken:(id)a3 info:(id)a4;
- (void)purgeEverythingCompletionBlock:(id)a3;
- (void)refreshServerSideConfig;
- (void)removeSharingRelationships:(id)a3 fromOwnedAlbum:(id)a4 info:(id)a5;
- (void)retrieveAssets:(id)a3 inAlbumWithGUID:(id)a4;
- (void)retryOutstandingActivities;
- (void)scheduleEvent:(id)a3 assetCollectionGUID:(id)a4 albumGUID:(id)a5 info:(id)a6;
- (void)serverSideQueueSetServerSideConfiguration:(id)a3;
- (void)setAlbumSyncedState:(id)a3 forAlbum:(id)a4 info:(id)a5;
- (void)setAssetCollectionSyncedState:(id)a3 forAssetCollection:(id)a4 album:(id)a5 info:(id)a6;
- (void)setDaemon:(id)a3;
- (void)setFocusAlbumGUID:(id)a3;
- (void)setFocusAssetCollectionGUID:(id)a3;
- (void)setMultipleContributorsEnabled:(BOOL)a3 forAlbum:(id)a4 info:(id)a5 completionBlock:(id)a6;
- (void)setPendingRootCtag:(id)a3;
- (void)setPersistentObject:(id)a3 forKey:(id)a4;
- (void)setPublicAccessEnabled:(BOOL)a3 forAlbum:(id)a4 info:(id)a5 completionBlock:(id)a6;
- (void)setRootCtagFromPendingRootCtag;
- (void)setServerSideConfiguration:(id)a3;
- (void)shutDownCompletionBlock:(id)a3;
- (void)start;
- (void)stopAssetDownloadsCompletionBlock:(id)a3;
- (void)subscribeToAlbum:(id)a3 info:(id)a4;
- (void)unsubscribeFromAlbum:(id)a3 info:(id)a4;
- (void)updateAlbum:(id)a3 updateAlbumFlags:(int)a4 info:(id)a5;
- (void)validateInvitationForAlbum:(id)a3 completionBlock:(id)a4;
- (void)videoURLForAssetCollection:(id)a3 inAlbum:(id)a4 completionBlock:(id)a5;
- (void)videoURLsForAssetCollection:(id)a3 forMediaAssetType:(unint64_t)a4 inAlbum:(id)a5 completionBlock:(id)a6;
- (void)workQueueApplyServerSideConfiguration;
- (void)workQueueCancelAllCommandsFilteredByAlbumGUID:(id)a3 assetCollectionGUID:(id)a4;
- (void)workQueueCancelCompletionBlock:(id)a3;
- (void)workQueueCheckForNextCommand;
- (void)workQueueDidFailToFinishCommandDueToTemporaryError:(id)a3;
- (void)workQueueDidFinishCommand;
- (void)workQueueDidFinishCommandByLeavingCommandInQueue;
- (void)workQueueDidFinishCommandByReplacingCurrentCommandWithCommand:(id)a3 params:(id)a4 personID:(id)a5 albumGUID:(id)a6 assetCollectionGUID:(id)a7;
- (void)workQueueDidFinishCommandDueToCancellation;
- (void)workQueuePerformNextCommand;
- (void)workQueueRefreshServerSideConfig;
- (void)workQueueRetryOutstandingActivities;
- (void)workQueueScheduleReauthForAssets:(id)a3 inAlbum:(id)a4;
- (void)workQueueUpdateNextActivityDate;
@end

@implementation MSASStateMachine

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MSAlbumSharingDaemon)daemon
{
  WeakRetained = objc_loadWeakRetained(&self->_daemon);

  return WeakRetained;
}

- (void)MSASAssetDownloaderDidFinishBatch:(id)a3
{
  v4 = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__MSASStateMachine_MSASAssetDownloaderDidFinishBatch___block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(v4, block);
}

uint64_t __54__MSASStateMachine_MSASAssetDownloaderDidFinishBatch___block_invoke(uint64_t a1)
{
  v1 = a1;
  v31 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _assetInfoToReauthForDownload];
  v3 = [v2 count];

  if (!v3)
  {
    goto LABEL_20;
  }

  v4 = [MEMORY[0x277CBEB18] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v25 = v1;
  v5 = [*(v1 + 32) _assetInfoToReauthForDownload];
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_17;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v27;
  do
  {
    v10 = 0;
    v11 = v8;
    do
    {
      if (*v27 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v26 + 1) + 8 * v10);
      if (v11 && ([v11 album], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "album"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isEqual:", v14), v14, v13, !v15))
      {
        if (![v4 count])
        {
          goto LABEL_13;
        }

        v17 = *(v25 + 32);
        v18 = [v11 album];
        [v17 workQueueScheduleReauthForAssets:v4 inAlbum:v18];

        v19 = MEMORY[0x277CBEB18];
        v16 = [v12 asset];
        v20 = [v19 arrayWithObject:v16];

        v4 = v20;
      }

      else
      {
        v16 = [v12 asset];
        [v4 addObject:v16];
      }

LABEL_13:
      v8 = v12;

      ++v10;
      v11 = v8;
    }

    while (v7 != v10);
    v7 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
  }

  while (v7);
LABEL_17:

  v1 = v25;
  if ([v4 count])
  {
    v21 = *(v25 + 32);
    v22 = [v8 album];
    [v21 workQueueScheduleReauthForAssets:v4 inAlbum:v22];
  }

LABEL_20:
  result = [*(v1 + 32) _setAssetInfoToReauthForDownload:0];
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_albumForRequestFromParams:(id)a3
{
  v4 = [a3 objectForKey:@"album"];
  v5 = [(MSASStateMachine *)self delegate];
  v6 = [v4 GUID];
  v7 = [v5 albumWithGUID:v6];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  v9 = v8;

  return v9;
}

- (void)_sendReauthorizeAssetsForDownloadDisposition:(int)a3 params:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [v6 objectForKey:@"assets"];
  v8 = [(MSASStateMachine *)self _albumForRequestFromParams:v6];
  v9 = [v6 objectForKey:@"error"];
  v10 = v9;
  if (a3 == 2)
  {
    v12 = [(MSASStateMachine *)self eventQueue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __72__MSASStateMachine__sendReauthorizeAssetsForDownloadDisposition_params___block_invoke_319;
    v20[3] = &unk_278E92638;
    v21 = v7;
    v22 = self;
    v23 = v8;
    dispatch_async(v12, v20);
  }

  else if (!a3)
  {
    if (v9)
    {
      v11 = [(MSASStateMachine *)self eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __72__MSASStateMachine__sendReauthorizeAssetsForDownloadDisposition_params___block_invoke;
      block[3] = &unk_278E92660;
      v30 = v7;
      v31 = self;
      v32 = v8;
      v33 = v10;
      dispatch_async(v11, block);

      [(MSASStateMachine *)self workQueueDidFinishCommand];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v35 = self;
        v36 = 2048;
        v37 = [v7 count];
        v38 = 2114;
        v39 = v8;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Reauthorizing %ld assets download from album %{public}@", buf, 0x20u);
      }

      v13 = [(MSASStateMachine *)self protocol];
      v14 = [v13 stopHandlerBlock];
      [(MSASStateMachine *)self _setStopHandlerBlock:v14];

      objc_initWeak(buf, self);
      v15 = [(MSASStateMachine *)self delegate];
      v16 = [v8 GUID];
      v17 = [v15 MSASStateMachineDidRequestAlbumURLStringForAlbumWithGUID:v16 info:0];

      v18 = [(MSASStateMachine *)self protocol];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __72__MSASStateMachine__sendReauthorizeAssetsForDownloadDisposition_params___block_invoke_315;
      v24[3] = &unk_278E917E8;
      v24[4] = self;
      objc_copyWeak(&v28, buf);
      v25 = v6;
      v26 = v8;
      v27 = v7;
      [v18 getTokensForAssets:v27 inAlbum:v26 albumURLString:v17 completionBlock:v24];

      objc_destroyWeak(&v28);
      objc_destroyWeak(buf);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __72__MSASStateMachine__sendReauthorizeAssetsForDownloadDisposition_params___block_invoke(uint64_t a1)
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
        v8 = [*(a1 + 40) delegate];
        [v8 MSASStateMachine:*(a1 + 40) didFinishRetrievingAsset:v7 inAlbum:*(a1 + 48) error:*(a1 + 56)];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __72__MSASStateMachine__sendReauthorizeAssetsForDownloadDisposition_params___block_invoke_315(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [a1[4] workQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __72__MSASStateMachine__sendReauthorizeAssetsForDownloadDisposition_params___block_invoke_2;
  v18[3] = &unk_278E91268;
  v19 = v7;
  v11 = v7;
  objc_copyWeak(&v24, a1 + 8);
  v12 = a1[5];
  v13 = a1[6];
  *&v14 = a1[7];
  *(&v14 + 1) = a1[4];
  *&v15 = v12;
  *(&v15 + 1) = v13;
  v20 = v15;
  v21 = v14;
  v22 = v9;
  v23 = v8;
  v16 = v8;
  v17 = v9;
  dispatch_async(v10, v18);

  objc_destroyWeak(&v24);
}

void __72__MSASStateMachine__sendReauthorizeAssetsForDownloadDisposition_params___block_invoke_319(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v15;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v14 + 1) + 8 * i);
        v7 = objc_autoreleasePoolPush();
        v8 = [*(a1 + 40) delegate];
        v9 = *(a1 + 40);
        v10 = *(a1 + 48);
        v11 = [v9 _canceledError];
        [v8 MSASStateMachine:v9 didFinishRetrievingAsset:v6 inAlbum:v10 error:v11];

        objc_autoreleasePoolPop(v7);
      }

      v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v3);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __72__MSASStateMachine__sendReauthorizeAssetsForDownloadDisposition_params___block_invoke_2(uint64_t a1)
{
  v119 = *MEMORY[0x277D85DE8];
  v77 = [MEMORY[0x277CBEB38] dictionary];
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 88));
    v2 = *(a1 + 32);
    v3 = NSStringFromSelector(sel__sendReauthorizeAssetsForDownloadDisposition_params_);
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) GUID];
    LOBYTE(v2) = [WeakRetained workQueueEndCommandWithError:v2 command:v3 params:v4 albumGUID:v5 assetCollectionGUID:0];

    if (v2)
    {
      v76 = 0;
      goto LABEL_49;
    }

    v49 = a1;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v72 = objc_loadWeakRetained((a1 + 88));
      v73 = [*(a1 + 56) count];
      v74 = *(a1 + 48);
      v75 = [*(a1 + 32) MSVerboseDescription];
      *buf = 138544130;
      v112 = v72;
      v113 = 2048;
      v114 = v73;
      v115 = 2114;
      v116 = v74;
      v117 = 2114;
      v118 = v75;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to authorize %ld assets in album %{public}@. Error: %{public}@", buf, 0x2Au);

      v49 = a1;
    }

    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v50 = *(v49 + 56);
    v51 = [v50 countByEnumeratingWithState:&v102 objects:v110 count:16];
    if (v51)
    {
      v52 = *v103;
      do
      {
        for (i = 0; i != v51; ++i)
        {
          if (*v103 != v52)
          {
            objc_enumerationMutation(v50);
          }

          [v77 setObject:*(a1 + 32) forKey:*(*(&v102 + 1) + 8 * i)];
        }

        v51 = [v50 countByEnumeratingWithState:&v102 objects:v110 count:16];
      }

      while (v51);
    }
  }

  else
  {
    v6 = [*(a1 + 64) memberQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__MSASStateMachine__sendReauthorizeAssetsForDownloadDisposition_params___block_invoke_316;
    block[3] = &unk_278E926D8;
    block[4] = *(a1 + 64);
    dispatch_barrier_sync(v6, block);

    v7 = [*(a1 + 64) eventQueue];
    v99[0] = MEMORY[0x277D85DD0];
    v99[1] = 3221225472;
    v99[2] = __72__MSASStateMachine__sendReauthorizeAssetsForDownloadDisposition_params___block_invoke_2_317;
    v99[3] = &unk_278E90E70;
    objc_copyWeak(&v100, (a1 + 88));
    dispatch_async(v7, v99);

    [v77 addEntriesFromDictionary:*(a1 + 72)];
    if ([*(a1 + 72) count])
    {
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v8 = *(a1 + 72);
      v9 = [v8 countByEnumeratingWithState:&v95 objects:v109 count:16];
      if (v9)
      {
        v10 = *v96;
        v11 = MEMORY[0x277D86220];
        do
        {
          v12 = 0;
          do
          {
            if (*v96 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v95 + 1) + 8 * v12);
            v14 = v11;
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              v15 = objc_loadWeakRetained((a1 + 88));
              v16 = [v13 GUID];
              *buf = 138543618;
              v112 = v15;
              v113 = 2114;
              v114 = v16;
              _os_log_error_impl(&dword_245B99000, v11, OS_LOG_TYPE_ERROR, "%{public}@: Failed to reauthorize asset GUID %{public}@ for redownload.", buf, 0x16u);
            }

            ++v12;
          }

          while (v9 != v12);
          v9 = [v8 countByEnumeratingWithState:&v95 objects:v109 count:16];
        }

        while (v9);
      }
    }

    if ([*(a1 + 80) count])
    {
      v17 = MEMORY[0x277D86220];
      v18 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v19 = objc_loadWeakRetained((a1 + 88));
        v20 = [*(a1 + 80) count];
        *buf = 138543618;
        v112 = v19;
        v113 = 2048;
        v114 = v20;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully reauthorized the download of %ld assets. Trying download again.", buf, 0x16u);
      }

      v21 = MSASPlatform();
      v22 = [v21 shouldLogAtLevel:7];

      if (v22)
      {
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v23 = *(a1 + 80);
        v24 = [v23 countByEnumeratingWithState:&v91 objects:v108 count:16];
        if (v24)
        {
          v25 = *v92;
          v26 = MEMORY[0x277D86220];
          do
          {
            v27 = 0;
            do
            {
              if (*v92 != v25)
              {
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v91 + 1) + 8 * v27);
              v29 = v26;
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
              {
                v30 = [v28 GUID];
                *buf = 138543362;
                v112 = v30;
                _os_log_debug_impl(&dword_245B99000, v26, OS_LOG_TYPE_DEBUG, " ...Asset GUID %{public}@", buf, 0xCu);
              }

              ++v27;
            }

            while (v24 != v27);
            v24 = [v23 countByEnumeratingWithState:&v91 objects:v108 count:16];
          }

          while (v24);
        }
      }

      v31 = objc_loadWeakRetained((a1 + 88));
      v32 = [v31 _model];
      [v32 beginTransaction];

      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v33 = a1;
      v34 = *(a1 + 80);
      v35 = [v34 countByEnumeratingWithState:&v87 objects:v107 count:16];
      if (v35)
      {
        v36 = *v88;
        do
        {
          for (j = 0; j != v35; ++j)
          {
            if (*v88 != v36)
            {
              objc_enumerationMutation(v34);
            }

            v38 = *(*(&v87 + 1) + 8 * j);
            v39 = objc_loadWeakRetained((v33 + 88));
            v40 = [v39 _model];
            v41 = [*(a1 + 48) GUID];
            [v40 enqueueAssetForDownload:v38 inAlbumWithGUID:v41];

            v42 = objc_loadWeakRetained((a1 + 88));
            v43 = [v42 _assetDownloader];
            v44 = [*(a1 + 48) GUID];
            [v43 didEnqueueAsset:v38 forAlbumGUID:v44];

            v33 = a1;
          }

          v35 = [v34 countByEnumeratingWithState:&v87 objects:v107 count:16];
        }

        while (v35);
      }

      v45 = objc_loadWeakRetained((a1 + 88));
      v46 = [v45 _model];
      [v46 endTransaction];

      v47 = objc_loadWeakRetained((a1 + 88));
      v48 = [v47 _assetDownloader];
      [v48 retryOutstandingActivities];
    }

    objc_destroyWeak(&v100);
  }

  v76 = 1;
LABEL_49:
  if ([v77 count])
  {
    v54 = [*(a1 + 64) eventQueue];
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = __72__MSASStateMachine__sendReauthorizeAssetsForDownloadDisposition_params___block_invoke_318;
    v83[3] = &unk_278E917C0;
    v55 = v77;
    v84 = v55;
    objc_copyWeak(&v86, (a1 + 88));
    v85 = *(a1 + 48);
    dispatch_async(v54, v83);

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v56 = v55;
    v57 = [v56 countByEnumeratingWithState:&v79 objects:v106 count:16];
    if (v57)
    {
      v58 = *v80;
      v59 = MEMORY[0x277D86220];
      do
      {
        v60 = 0;
        do
        {
          if (*v80 != v58)
          {
            objc_enumerationMutation(v56);
          }

          v61 = *(*(&v79 + 1) + 8 * v60);
          v62 = objc_autoreleasePoolPush();
          v63 = [v56 objectForKey:v61];
          v64 = v59;
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            v65 = objc_loadWeakRetained((a1 + 88));
            v66 = [v63 MSVerboseDescription];
            *buf = 138543874;
            v112 = v65;
            v113 = 2114;
            v114 = v61;
            v115 = 2114;
            v116 = v66;
            _os_log_error_impl(&dword_245B99000, v59, OS_LOG_TYPE_ERROR, "%{public}@: Failed to reauthorize asset %{public}@. Error: %{public}@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v62);
          ++v60;
        }

        while (v57 != v60);
        v57 = [v56 countByEnumeratingWithState:&v79 objects:v106 count:16];
      }

      while (v57);
    }

    v67 = objc_loadWeakRetained((a1 + 88));
    v68 = [v67 _assetDownloader];
    v69 = [v56 allKeys];
    [v68 unregisterAssets:v69];

    objc_destroyWeak(&v86);
  }

  if (v76)
  {
    v70 = objc_loadWeakRetained((a1 + 88));
    [v70 workQueueDidFinishCommand];
  }

  v71 = *MEMORY[0x277D85DE8];
}

void __72__MSASStateMachine__sendReauthorizeAssetsForDownloadDisposition_params___block_invoke_2_317(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained daemon];
  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 personID];
  [v2 didReceiveAuthSuccessForPersonID:v4];
}

void __72__MSASStateMachine__sendReauthorizeAssetsForDownloadDisposition_params___block_invoke_318(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [*(a1 + 32) objectForKey:{v7, v13}];
        WeakRetained = objc_loadWeakRetained((a1 + 48));
        v10 = [WeakRetained delegate];
        v11 = objc_loadWeakRetained((a1 + 48));
        [v10 MSASStateMachine:v11 didFinishRetrievingAsset:v7 inAlbum:*(a1 + 40) error:v8];
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)workQueueScheduleReauthForAssets:(id)a3 inAlbum:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v15 = 138543874;
    v16 = self;
    v17 = 2048;
    v18 = [v6 count];
    v19 = 2114;
    v20 = v7;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Scheduling reauthorization for %ld items in album %{public}@", &v15, 0x20u);
  }

  v8 = [MEMORY[0x277CBEB38] dictionary];
  v9 = v8;
  if (v7)
  {
    [v8 setObject:v7 forKey:@"album"];
  }

  if (v6)
  {
    [v9 setObject:v6 forKey:@"assets"];
  }

  v10 = [(MSASStateMachine *)self _model];
  v11 = NSStringFromSelector(sel__sendReauthorizeAssetsForDownloadDisposition_params_);
  v12 = [(MSASStateMachine *)self personID];
  v13 = [v7 GUID];
  [v10 enqueueCommandAtHeadOfQueue:v11 params:v9 personID:v12 albumGUID:v13 assetCollectionGUID:0];

  [(MSASStateMachine *)self workQueueRetryOutstandingActivities];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)MSASAssetDownloader:(id)a3 didFinishDownloadingAsset:(id)a4 inAlbumGUID:(id)a5 error:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(MSASStateMachine *)self workQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __84__MSASStateMachine_MSASAssetDownloader_didFinishDownloadingAsset_inAlbumGUID_error___block_invoke;
  v16[3] = &unk_278E92660;
  v16[4] = self;
  v17 = v10;
  v18 = v11;
  v19 = v9;
  v13 = v9;
  v14 = v11;
  v15 = v10;
  dispatch_async(v12, v16);
}

void __84__MSASStateMachine_MSASAssetDownloader_didFinishDownloadingAsset_inAlbumGUID_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = [v2 MSASStateMachineDidRequestAlbumWithGUID:*(a1 + 40)];

  if (([*(a1 + 48) MMCSIsAuthorizationError] & 1) != 0 || (objc_msgSend(*(a1 + 48), "MSContainsErrorWithDomain:code:", @"MSASAssetTransferErrorDomain", 2) & 1) != 0 || objc_msgSend(*(a1 + 48), "MSContainsErrorWithDomain:code:", @"MSASAssetTransferErrorDomain", 1))
  {
    v4 = objc_alloc_init(MSASAssetInfoToReauthForDownload);
    [(MSASAssetInfoToReauthForDownload *)v4 setAsset:*(a1 + 56)];
    [(MSASAssetInfoToReauthForDownload *)v4 setAlbum:v3];
    v5 = [*(a1 + 32) _assetInfoToReauthForDownload];
    [v5 addObject:v4];
  }

  else
  {
    v6 = [*(a1 + 32) _assetDownloader];
    v7 = [MEMORY[0x277CBEA60] arrayWithObject:*(a1 + 56)];
    [v6 unregisterAssets:v7];

    v8 = [*(a1 + 32) eventQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __84__MSASStateMachine_MSASAssetDownloader_didFinishDownloadingAsset_inAlbumGUID_error___block_invoke_2;
    v9[3] = &unk_278E92660;
    v9[4] = *(a1 + 32);
    v10 = *(a1 + 56);
    v11 = v3;
    v12 = *(a1 + 48);
    dispatch_async(v8, v9);
  }
}

void __84__MSASStateMachine_MSASAssetDownloader_didFinishDownloadingAsset_inAlbumGUID_error___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) didFinishRetrievingAsset:*(a1 + 40) inAlbum:*(a1 + 48) error:*(a1 + 56)];
}

- (void)MSASAssetDownloader:(id)a3 willBeginBatchCount:(unint64_t)a4
{
  v5 = [(MSASStateMachine *)self workQueue:a3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__MSASStateMachine_MSASAssetDownloader_willBeginBatchCount___block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(v5, block);
}

void __60__MSASStateMachine_MSASAssetDownloader_willBeginBatchCount___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CBEB18] array];
  [v1 _setAssetInfoToReauthForDownload:v2];
}

- (void)retrieveAssets:(id)a3 inAlbumWithGUID:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543874;
    v16 = self;
    v17 = 2048;
    v18 = [v6 count];
    v19 = 2114;
    v20 = v7;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Retrieving %ld assets in albumGUID %{public}@.", buf, 0x20u);
  }

  v8 = [(MSASStateMachine *)self _assetDownloader];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__MSASStateMachine_retrieveAssets_inAlbumWithGUID___block_invoke;
  v12[3] = &unk_278E92638;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  [v8 registerAssets:v10 completionBlock:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __51__MSASStateMachine_retrieveAssets_inAlbumWithGUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__MSASStateMachine_retrieveAssets_inAlbumWithGUID___block_invoke_2;
  block[3] = &unk_278E92638;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  dispatch_async(v2, block);
}

void __51__MSASStateMachine_retrieveAssets_inAlbumWithGUID___block_invoke_2(id *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] _model];
  [v2 beginTransaction];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = a1[5];
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * v7);
        v9 = [a1[4] _model];
        [v9 enqueueAssetForDownload:v8 inAlbumWithGUID:a1[6]];

        v10 = [a1[4] _assetDownloader];
        [v10 didEnqueueAsset:v8 forAlbumGUID:a1[6]];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  v11 = [a1[4] _model];
  [v11 endTransaction];

  v12 = [a1[4] eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__MSASStateMachine_retrieveAssets_inAlbumWithGUID___block_invoke_3;
  block[3] = &unk_278E92638;
  v13 = a1[5];
  block[4] = a1[4];
  v17 = v13;
  v18 = a1[6];
  dispatch_async(v12, block);

  if (([a1[4] hasShutDown] & 1) == 0)
  {
    v14 = [a1[4] _assetDownloader];
    [v14 retryOutstandingActivities];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __51__MSASStateMachine_retrieveAssets_inAlbumWithGUID___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) didFinishEnqueueingAssetsForDownload:*(a1 + 40) inAlbumWithGUID:*(a1 + 48)];
}

- (void)MSASAssetUploader:(id)a3 didFinishUploadingAssetCollection:(id)a4 intoAlbum:(id)a5 error:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(MSASStateMachine *)self workQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __88__MSASStateMachine_MSASAssetUploader_didFinishUploadingAssetCollection_intoAlbum_error___block_invoke;
  v16[3] = &unk_278E92660;
  v16[4] = self;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v13 = v11;
  v14 = v10;
  v15 = v9;
  dispatch_async(v12, v16);
}

void __88__MSASStateMachine_MSASAssetUploader_didFinishUploadingAssetCollection_intoAlbum_error___block_invoke(id *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [a1[4] delegate];
  v4 = a1[4];
  v5 = [a1[5] GUID];
  LOBYTE(v4) = [v3 MSASStateMachine:v4 didQueryIsAssetCollectionWithGUIDInModel:v5];

  if (v4)
  {
    v6 = a1[7];
    if (v6)
    {
      if ([v6 MMCSIsAuthorizationError])
      {
        v7 = [MEMORY[0x277CBEB38] dictionary];
        v8 = v7;
        v9 = a1[6];
        if (v9)
        {
          [v7 setObject:v9 forKey:@"album"];
        }

        v10 = a1[5];
        if (v10)
        {
          [v8 setObject:v10 forKey:@"assetCollection"];
        }

        v11 = [a1[4] _model];
        v12 = NSStringFromSelector(sel__sendGetUploadTokensDisposition_params_);
        v13 = [a1[4] personID];
        v14 = [a1[6] GUID];
        [v11 enqueueCommand:v12 params:v8 personID:v13 albumGUID:v14 assetCollectionGUID:0];

        goto LABEL_17;
      }

      if ([a1[7] MSContainsErrorWithDomain:@"MSASAssetTransferErrorDomain" code:3])
      {
LABEL_16:
        [v2 setObject:a1[6] forKey:@"album"];
        v8 = [a1[4] _model];
        v11 = NSStringFromSelector(sel__sendUploadCompleteDisposition_params_);
        v12 = [a1[4] personID];
        v13 = [a1[6] GUID];
        [v8 enqueueCommandAtHeadOfQueue:v11 params:v2 personID:v12 albumGUID:v13 assetCollectionGUID:0];
LABEL_17:

        goto LABEL_18;
      }

      v21 = [MEMORY[0x277CBEB38] dictionary];
      [v21 setObject:a1[7] forKey:a1[5]];
      v22 = kMSASFailedAssetCollectionsAndErrorsKey;
    }

    else
    {
      v21 = [MEMORY[0x277CBEA60] arrayWithObject:a1[5]];
      v22 = &kMSASSuccessfulAssetCollectionsKey;
    }

    [v2 setObject:v21 forKey:*v22];

    goto LABEL_16;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v24 = a1[4];
    v25 = [a1[5] GUID];
    v26 = 138543618;
    v27 = v24;
    v28 = 2114;
    v29 = v25;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: The uploaded asset collection GUID %{public}@ is no longer in the model. Discontiniuing upload.", &v26, 0x16u);
  }

  [a1[4] _deleteAssetFilesInAssetCollection:a1[5]];
  v8 = [a1[4] delegate];
  v15 = a1[4];
  v16 = a1[5];
  v17 = a1[6];
  v18 = MEMORY[0x277CCA9B8];
  v19 = MSCFCopyLocalizedString(@"ERROR_STATE_PHOTO_NOT_IN_MODEL");
  v20 = [v18 MSErrorWithDomain:@"MSASStateMachineErrorDomain" code:5 description:v19];
  [v8 MSASStateMachine:v15 didFinishAddingAssetCollection:v16 toAlbum:v17 info:0 error:v20];

LABEL_18:
  [a1[4] workQueueRetryOutstandingActivities];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_deleteAssetFilesInAssetCollections:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(MSASStateMachine *)self _deleteAssetFilesInAssetCollection:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_deleteAssetFilesInAssetCollection:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = [v3 GUID];
    *buf = 138543618;
    v29 = self;
    v30 = 2114;
    v31 = v4;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Cleaning up files for asset collection %{public}@.", buf, 0x16u);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v21 = v3;
  v5 = [v3 assets];
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    v9 = MEMORY[0x277D86220];
    do
    {
      v10 = 0;
      do
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v24 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        v13 = [v11 path];

        if (v13)
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            v17 = [v11 path];
            *buf = 138543618;
            v29 = self;
            v30 = 2112;
            v31 = v17;
            _os_log_debug_impl(&dword_245B99000, v9, OS_LOG_TYPE_DEBUG, "%{public}@: Deleting asset file: %@", buf, 0x16u);
          }

          v14 = [MEMORY[0x277CCAA00] defaultManager];
          v15 = [v11 path];
          v23 = 0;
          [v14 removeItemAtPath:v15 error:&v23];
          v16 = v23;

          if (v16 && os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            v18 = [v11 path];
            v19 = [v16 MSVerboseDescription];
            *buf = 138543874;
            v29 = self;
            v30 = 2112;
            v31 = v18;
            v32 = 2114;
            v33 = v19;
            _os_log_debug_impl(&dword_245B99000, v9, OS_LOG_TYPE_DEBUG, "%{public}@: Failed to delete asset file at path %@. Error: %{public}@", buf, 0x20u);
          }
        }

        objc_autoreleasePoolPop(v12);
        ++v10;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v7);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)videoURLsForAssetCollection:(id)a3 forMediaAssetType:(unint64_t)a4 inAlbum:(id)a5 completionBlock:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__MSASStateMachine_videoURLsForAssetCollection_forMediaAssetType_inAlbum_completionBlock___block_invoke;
  block[3] = &unk_278E91A00;
  block[4] = self;
  v18 = v10;
  v20 = v12;
  v21 = a4;
  v19 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, block);
}

void __90__MSASStateMachine_videoURLsForAssetCollection_forMediaAssetType_inAlbum_completionBlock___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    *buf = 138543618;
    v36 = v2;
    v37 = 2114;
    v38 = v3;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Getting video URL for asset collection %{public}@.", buf, 0x16u);
  }

  v4 = [*(a1 + 32) delegate];
  v5 = [*(a1 + 48) GUID];
  v6 = [v4 MSASStateMachineDidRequestAlbumURLStringForAlbumWithGUID:v5 info:0];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = [*(a1 + 40) assets];
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v8)
  {
    v9 = *v31;
LABEL_5:
    v10 = 0;
    while (1)
    {
      if (*v31 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v30 + 1) + 8 * v10);
      if ([v11 mediaAssetType] == *(a1 + 64))
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v8)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    v12 = v11;

    if (v12)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_11:
  }

  v13 = [*(a1 + 40) assets];
  v12 = [v13 lastObject];

LABEL_14:
  objc_initWeak(buf, *(a1 + 32));
  v14 = [*(a1 + 32) protocol];
  v15 = [*(a1 + 40) GUID];
  v16 = [*(a1 + 48) GUID];
  v17 = [*(a1 + 48) clientOrgKey];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __90__MSASStateMachine_videoURLsForAssetCollection_forMediaAssetType_inAlbum_completionBlock___block_invoke_304;
  v23[3] = &unk_278E91790;
  v23[4] = *(a1 + 32);
  v24 = *(a1 + 48);
  v18 = v6;
  v25 = v18;
  v19 = v12;
  v26 = v19;
  v20 = *(a1 + 40);
  v21 = *(a1 + 64);
  v27 = v20;
  v29[1] = v21;
  objc_copyWeak(v29, buf);
  v28 = *(a1 + 56);
  [v14 getVideoURL:v19 forAssetCollectionWithGUID:v15 inAlbumWithGUID:v16 albumURLString:v18 withClientOrgKey:v17 completionBlock:v23];

  objc_destroyWeak(v29);
  objc_destroyWeak(buf);

  v22 = *MEMORY[0x277D85DE8];
}

void __90__MSASStateMachine_videoURLsForAssetCollection_forMediaAssetType_inAlbum_completionBlock___block_invoke_304(uint64_t a1, void *a2, void *a3, void *a4)
{
  v54 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7 && [v7 MSContainsErrorWithDomain:@"MSASProtocolErrorDomain" code:18])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v25 = *(a1 + 32);
      v26 = [v7 MSVerboseDescription];
      *buf = 138543618;
      v45 = v25;
      v46 = 2114;
      v47 = v26;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Encountered visitor authentication failure. Getting new album URL. Error: %{public}@", buf, 0x16u);
    }

    v10 = [*(a1 + 32) protocol];
    v11 = [*(a1 + 40) GUID];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __90__MSASStateMachine_videoURLsForAssetCollection_forMediaAssetType_inAlbum_completionBlock___block_invoke_305;
    v37[3] = &unk_278E91768;
    v12 = *(a1 + 48);
    v29 = *(a1 + 32);
    v13 = v29.i64[1];
    v14 = *(a1 + 56);
    v15.i64[0] = v12;
    v15.i64[1] = v14;
    v16 = vzip2q_s64(v29, v15);
    v15.i64[1] = v29.i64[0];
    v39 = v16;
    v38 = v15;
    v17 = *(a1 + 64);
    v18 = *(a1 + 88);
    v40 = v17;
    v43[1] = v18;
    objc_copyWeak(v43, (a1 + 80));
    v41 = v7;
    v42 = *(a1 + 72);
    [v10 getAlbumURLForAlbumWithGUID:v11 completionBlock:v37];

    objc_destroyWeak(v43);
    WeakRetained = v38.i64[0];
  }

  else
  {
    if ([v8 count])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v20 = *(a1 + 32);
        v21 = *(a1 + 64);
        v22 = *(a1 + 88);
        *buf = 138544386;
        v45 = v20;
        v46 = 2114;
        v47 = v8;
        v48 = 2114;
        v49 = v9;
        v50 = 2114;
        v51 = v21;
        v52 = 2048;
        v53 = v22;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Using video URLs %{public}@ with expiration %{public}@ for asset collection %{public}@ and media asset type %ld.", buf, 0x34u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v27 = *(a1 + 32);
      v28 = *(a1 + 64);
      *buf = 138543874;
      v45 = v27;
      v46 = 2114;
      v47 = v28;
      v48 = 2114;
      v49 = v7;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Unable to get a working video URL for asset collection %{public}@. Error: %{public}@.", buf, 0x20u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 80));
    v23 = [WeakRetained eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __90__MSASStateMachine_videoURLsForAssetCollection_forMediaAssetType_inAlbum_completionBlock___block_invoke_308;
    block[3] = &unk_278E916A0;
    objc_copyWeak(&v36, (a1 + 80));
    v31 = v7;
    v32 = *(a1 + 40);
    v35 = *(a1 + 72);
    v33 = v8;
    v34 = v9;
    dispatch_async(v23, block);

    objc_destroyWeak(&v36);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __90__MSASStateMachine_videoURLsForAssetCollection_forMediaAssetType_inAlbum_completionBlock___block_invoke_305(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 || !v6 || ([v6 isEqualToString:*(a1 + 32)] & 1) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 40);
      v21 = *(a1 + 48);
      *buf = 138543874;
      v30 = v20;
      v31 = 2114;
      v32 = v21;
      v33 = 2114;
      v34 = v5;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Unable to get a new album URL for album %{public}@. Error: %{public}@.", buf, 0x20u);
    }

    (*(*(a1 + 80) + 16))();
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      *buf = 138543874;
      v30 = v8;
      v31 = 2114;
      v32 = v7;
      v33 = 2114;
      v34 = v9;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Requesting video URL using new album URL %{public}@ for album %{public}@.", buf, 0x20u);
    }

    v10 = [*(a1 + 40) delegate];
    v11 = *(a1 + 40);
    v12 = [*(a1 + 48) GUID];
    [v10 MSASStateMachine:v11 didFindNewURLString:v7 forAlbumWithGUID:v12 info:0];

    v13 = [*(a1 + 40) protocol];
    v22 = *(a1 + 56);
    v14 = [*(a1 + 64) GUID];
    v15 = [*(a1 + 48) GUID];
    v16 = [*(a1 + 48) clientOrgKey];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __90__MSASStateMachine_videoURLsForAssetCollection_forMediaAssetType_inAlbum_completionBlock___block_invoke_306;
    v23[3] = &unk_278E91740;
    v23[4] = *(a1 + 40);
    v17 = *(a1 + 64);
    v18 = *(a1 + 96);
    v24 = v17;
    v28[1] = v18;
    objc_copyWeak(v28, (a1 + 88));
    v25 = *(a1 + 72);
    v26 = *(a1 + 48);
    v27 = *(a1 + 80);
    [v13 getVideoURL:v22 forAssetCollectionWithGUID:v14 inAlbumWithGUID:v15 albumURLString:v7 withClientOrgKey:v16 completionBlock:v23];

    objc_destroyWeak(v28);
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __90__MSASStateMachine_videoURLsForAssetCollection_forMediaAssetType_inAlbum_completionBlock___block_invoke_308(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  [WeakRetained _actionDidFinishWithError:*(a1 + 32) album:*(a1 + 40)];

  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(*(a1 + 64) + 16);

  return v6();
}

void __90__MSASStateMachine_videoURLsForAssetCollection_forMediaAssetType_inAlbum_completionBlock___block_invoke_306(uint64_t a1, void *a2, void *a3, void *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([v8 count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v12 = *(a1 + 80);
      *buf = 138544386;
      v31 = v10;
      v32 = 2114;
      v33 = v8;
      v34 = 2114;
      v35 = v9;
      v36 = 2114;
      v37 = v11;
      v38 = 2048;
      v39 = v12;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Using video URLs %{public}@ with expiration %{public}@ for asset collection %{public}@ and media asset type %ld.", buf, 0x34u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v20 = *(a1 + 32);
    v21 = *(a1 + 40);
    *buf = 138543874;
    v31 = v20;
    v32 = 2114;
    v33 = v21;
    v34 = 2114;
    v35 = v7;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Unable to get a working video URL for asset collection %{public}@. Error: %{public}@.", buf, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v14 = [WeakRetained eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__MSASStateMachine_videoURLsForAssetCollection_forMediaAssetType_inAlbum_completionBlock___block_invoke_307;
  block[3] = &unk_278E91718;
  objc_copyWeak(&v29, (a1 + 72));
  v23 = *(a1 + 48);
  v24 = *(a1 + 56);
  v15 = *(a1 + 64);
  v25 = v7;
  v26 = v8;
  v27 = v9;
  v28 = v15;
  v16 = v9;
  v17 = v8;
  v18 = v7;
  dispatch_async(v14, block);

  objc_destroyWeak(&v29);
  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __90__MSASStateMachine_videoURLsForAssetCollection_forMediaAssetType_inAlbum_completionBlock___block_invoke_307(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  [WeakRetained _actionDidFinishWithError:*(a1 + 32) album:*(a1 + 40)];

  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(*(a1 + 72) + 16);

  return v6();
}

- (void)videoURLForAssetCollection:(id)a3 inAlbum:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MSASStateMachine *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__MSASStateMachine_videoURLForAssetCollection_inAlbum_completionBlock___block_invoke;
  v15[3] = &unk_278E916F0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __71__MSASStateMachine_videoURLForAssetCollection_inAlbum_completionBlock___block_invoke(id *a1)
{
  v40 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = a1[4];
    v3 = a1[5];
    *buf = 138543618;
    v37 = v2;
    v38 = 2114;
    v39 = v3;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Getting video URL for asset collection %{public}@.", buf, 0x16u);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v4 = [a1[5] assets];
  v5 = [v4 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = *v32;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        if ([v9 assetDataAvailableOnServer])
        {
          v10 = [v9 mediaAssetType];
          if (v10 == 6)
          {
            v11 = v9;

            v6 = v11;
          }

          else if (v10 == 7)
          {
            v12 = v9;

            v6 = v12;
            goto LABEL_15;
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v5);
LABEL_15:

    if (v6)
    {
      v13 = [a1[4] delegate];
      v14 = [a1[6] GUID];
      v15 = [v13 MSASStateMachineDidRequestAlbumURLStringForAlbumWithGUID:v14 info:0];

      objc_initWeak(buf, a1[4]);
      v16 = [a1[4] protocol];
      v17 = [a1[5] GUID];
      v18 = [a1[6] GUID];
      v19 = [a1[6] clientOrgKey];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __71__MSASStateMachine_videoURLForAssetCollection_inAlbum_completionBlock___block_invoke_298;
      v26[3] = &unk_278E916C8;
      v20 = a1[5];
      v26[4] = a1[4];
      v27 = v20;
      objc_copyWeak(&v30, buf);
      v28 = a1[6];
      v29 = a1[7];
      [v16 getVideoURL:v6 forAssetCollectionWithGUID:v17 inAlbumWithGUID:v18 albumURLString:v15 withClientOrgKey:v19 completionBlock:v26];

      objc_destroyWeak(&v30);
      objc_destroyWeak(buf);

      goto LABEL_21;
    }
  }

  else
  {
  }

  v21 = MEMORY[0x277CCA9B8];
  v22 = MSCFCopyLocalizedString(@"ERROR_SUBSCRIBER_CANNOT_GET_VIDEO");
  v6 = [v21 MSErrorWithDomain:@"MSASSubscriberErrorDomain" code:2 description:v22];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v24 = a1[4];
    v25 = a1[5];
    *buf = 138543618;
    v37 = v24;
    v38 = 2114;
    v39 = v25;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: No asset has been completely uploaded for asset collection %{public}@.", buf, 0x16u);
  }

  (*(a1[7] + 2))();
LABEL_21:

  v23 = *MEMORY[0x277D85DE8];
}

void __71__MSASStateMachine_videoURLForAssetCollection_inAlbum_completionBlock___block_invoke_298(uint64_t a1, void *a2, void *a3, void *a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([v8 count])
  {
    v10 = [v8 objectAtIndex:0];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      *buf = 138543874;
      v30 = v11;
      v31 = 2114;
      v32 = v10;
      v33 = 2114;
      v34 = v12;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Using video URL %{public}@ for asset collection %{public}@.", buf, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 32);
      v21 = *(a1 + 40);
      *buf = 138543874;
      v30 = v20;
      v31 = 2114;
      v32 = v21;
      v33 = 2114;
      v34 = v7;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Unable to get a working video URL for asset collection %{public}@. Error:%{public}@", buf, 0x20u);
    }

    v10 = 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v14 = [WeakRetained eventQueue];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __71__MSASStateMachine_videoURLForAssetCollection_inAlbum_completionBlock___block_invoke_299;
  v22[3] = &unk_278E916A0;
  objc_copyWeak(&v28, (a1 + 64));
  v23 = v7;
  v24 = *(a1 + 48);
  v15 = *(a1 + 56);
  v26 = v9;
  v27 = v15;
  v25 = v10;
  v16 = v9;
  v17 = v10;
  v18 = v7;
  dispatch_async(v14, v22);

  objc_destroyWeak(&v28);
  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __71__MSASStateMachine_videoURLForAssetCollection_inAlbum_completionBlock___block_invoke_299(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  [WeakRetained _actionDidFinishWithError:*(a1 + 32) album:*(a1 + 40)];

  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(*(a1 + 64) + 16);

  return v6();
}

- (void)setMultipleContributorsEnabled:(BOOL)a3 forAlbum:(id)a4 info:(id)a5 completionBlock:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__MSASStateMachine_setMultipleContributorsEnabled_forAlbum_info_completionBlock___block_invoke;
  block[3] = &unk_278E91EB8;
  v21 = a3;
  block[4] = self;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v14 = v11;
  v15 = v12;
  v16 = v10;
  dispatch_async(v13, block);
}

void __81__MSASStateMachine_setMultipleContributorsEnabled_forAlbum_info_completionBlock___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 64))
    {
      v2 = @"Enabling";
    }

    else
    {
      v2 = @"Disabling";
    }

    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138543874;
    v15 = v3;
    v16 = 2114;
    v17 = v2;
    v18 = 2114;
    v19 = v4;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: %{public}@ multiple contributors for album %{public}@.", buf, 0x20u);
  }

  objc_initWeak(buf, *(a1 + 32));
  v5 = [*(a1 + 32) protocol];
  v6 = *(a1 + 40);
  v7 = *(a1 + 64);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__MSASStateMachine_setMultipleContributorsEnabled_forAlbum_info_completionBlock___block_invoke_297;
  v9[3] = &unk_278E91678;
  objc_copyWeak(&v13, buf);
  v10 = *(a1 + 40);
  v12 = *(a1 + 56);
  v11 = *(a1 + 48);
  [v5 setMultipleContributorsEnabled:v7 & 1 forAlbum:v6 completionBlock:v9];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
  v8 = *MEMORY[0x277D85DE8];
}

void __81__MSASStateMachine_setMultipleContributorsEnabled_forAlbum_info_completionBlock___block_invoke_297(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v5 = [WeakRetained eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__MSASStateMachine_setMultipleContributorsEnabled_forAlbum_info_completionBlock___block_invoke_2;
  block[3] = &unk_278E91650;
  objc_copyWeak(&v12, a1 + 7);
  v8 = v3;
  v9 = a1[4];
  v11 = a1[6];
  v10 = a1[5];
  v6 = v3;
  dispatch_async(v5, block);

  objc_destroyWeak(&v12);
}

uint64_t __81__MSASStateMachine_setMultipleContributorsEnabled_forAlbum_info_completionBlock___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _actionDidFinishWithError:*(a1 + 32) album:*(a1 + 40)];

  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 56) + 16);

  return v5();
}

- (void)setPublicAccessEnabled:(BOOL)a3 forAlbum:(id)a4 info:(id)a5 completionBlock:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__MSASStateMachine_setPublicAccessEnabled_forAlbum_info_completionBlock___block_invoke;
  block[3] = &unk_278E91EB8;
  v21 = a3;
  block[4] = self;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v14 = v11;
  v15 = v12;
  v16 = v10;
  dispatch_async(v13, block);
}

void __73__MSASStateMachine_setPublicAccessEnabled_forAlbum_info_completionBlock___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 64))
    {
      v2 = @"Enabling";
    }

    else
    {
      v2 = @"Disabling";
    }

    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138543874;
    v15 = v3;
    v16 = 2114;
    v17 = v2;
    v18 = 2114;
    v19 = v4;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: %{public}@ public URL sharing for album %{public}@.", buf, 0x20u);
  }

  objc_initWeak(buf, *(a1 + 32));
  v5 = [*(a1 + 32) protocol];
  v6 = *(a1 + 40);
  v7 = *(a1 + 64);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__MSASStateMachine_setPublicAccessEnabled_forAlbum_info_completionBlock___block_invoke_296;
  v9[3] = &unk_278E91678;
  objc_copyWeak(&v13, buf);
  v10 = *(a1 + 40);
  v12 = *(a1 + 56);
  v11 = *(a1 + 48);
  [v5 setPublicAccessEnabled:v7 & 1 forAlbum:v6 completionBlock:v9];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
  v8 = *MEMORY[0x277D85DE8];
}

void __73__MSASStateMachine_setPublicAccessEnabled_forAlbum_info_completionBlock___block_invoke_296(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v5 = [WeakRetained eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__MSASStateMachine_setPublicAccessEnabled_forAlbum_info_completionBlock___block_invoke_2;
  block[3] = &unk_278E91650;
  objc_copyWeak(&v12, a1 + 7);
  v8 = v3;
  v9 = a1[4];
  v11 = a1[6];
  v10 = a1[5];
  v6 = v3;
  dispatch_async(v5, block);

  objc_destroyWeak(&v12);
}

uint64_t __73__MSASStateMachine_setPublicAccessEnabled_forAlbum_info_completionBlock___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _actionDidFinishWithError:*(a1 + 32) album:*(a1 + 40)];

  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 56) + 16);

  return v5();
}

- (void)_scheduleEventDisposition:(int)a3 params:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [v6 objectForKey:@"event"];
  v8 = [v6 objectForKey:@"assetCollectionGUID"];
  v9 = [v6 objectForKey:@"albumGUID"];
  v10 = [v6 objectForKey:@"info"];

  if (!a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      v19 = self;
      v20 = 2114;
      v21 = v7;
      v22 = 2114;
      v23 = v8;
      v24 = 2114;
      v25 = v9;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Event fired: %{public}@ for assetCollectionGUID: %{public}@, albumGUID: %{public}@", buf, 0x2Au);
    }

    v11 = [(MSASStateMachine *)self eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__MSASStateMachine__scheduleEventDisposition_params___block_invoke;
    block[3] = &unk_278E92688;
    block[4] = self;
    v14 = v7;
    v15 = v8;
    v16 = v9;
    v17 = v10;
    dispatch_async(v11, block);

    [(MSASStateMachine *)self workQueueDidFinishCommand];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __53__MSASStateMachine__scheduleEventDisposition_params___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) didFireScheduledEvent:*(a1 + 40) forAssetCollectionGUID:*(a1 + 48) albumGUID:*(a1 + 56) info:*(a1 + 64)];
}

- (void)scheduleEvent:(id)a3 assetCollectionGUID:(id)a4 albumGUID:(id)a5 info:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138544130;
    v26 = self;
    v27 = 2114;
    v28 = v10;
    v29 = 2114;
    v30 = v11;
    v31 = 2114;
    v32 = v12;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Scheduling event to fire: %{public}@, asset collection GUID: %{public}@ album GUID: %{public}@", buf, 0x2Au);
  }

  v14 = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__MSASStateMachine_scheduleEvent_assetCollectionGUID_albumGUID_info___block_invoke;
  block[3] = &unk_278E92688;
  block[4] = self;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(v14, block);

  v19 = *MEMORY[0x277D85DE8];
}

void __69__MSASStateMachine_scheduleEvent_assetCollectionGUID_albumGUID_info___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _model];
  [v2 beginTransaction];

  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = *(a1 + 40);
  v12 = v3;
  if (v4)
  {
    [v3 setObject:v4 forKey:@"event"];
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    [v12 setObject:v5 forKey:@"assetCollectionGUID"];
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    [v12 setObject:v6 forKey:@"albumGUID"];
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    [v12 setObject:v7 forKey:@"info"];
  }

  v8 = [*(a1 + 32) _model];
  v9 = NSStringFromSelector(sel__scheduleEventDisposition_params_);
  v10 = [*(a1 + 32) personID];
  [v8 enqueueCommand:v9 params:v12 personID:v10 albumGUID:*(a1 + 56) assetCollectionGUID:*(a1 + 48)];

  v11 = [*(a1 + 32) _model];
  [v11 endTransaction];

  [*(a1 + 32) workQueueRetryOutstandingActivities];
}

- (void)_addCommentDisposition:(int)a3 params:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v22 = [v6 objectForKey:@"comment"];
  v7 = [v6 objectForKey:@"assetCollection"];
  v8 = [(MSASStateMachine *)self _albumForRequestFromParams:v6];
  v9 = [v6 objectForKey:@"info"];
  v10 = [v6 objectForKey:@"error"];
  v11 = v10;
  if (a3 == 2)
  {
    v13 = [(MSASStateMachine *)self eventQueue];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __50__MSASStateMachine__addCommentDisposition_params___block_invoke_3;
    v23[3] = &unk_278E92688;
    v23[4] = self;
    v24 = v22;
    v25 = v7;
    v26 = v8;
    v27 = v9;
    dispatch_async(v13, v23);
  }

  else if (!a3)
  {
    if (v10)
    {
      v12 = [(MSASStateMachine *)self eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __50__MSASStateMachine__addCommentDisposition_params___block_invoke;
      block[3] = &unk_278E92048;
      block[4] = self;
      v36 = v22;
      v37 = v7;
      v38 = v8;
      v39 = v9;
      v40 = v11;
      dispatch_async(v12, block);

      [(MSASStateMachine *)self workQueueDidFinishCommand];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v7 GUID];
        *buf = 138544130;
        v42 = self;
        v43 = 2114;
        v44 = v22;
        v45 = 2114;
        v46 = v14;
        v47 = 2114;
        v48 = v8;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Adding comment %{public}@ to asset collection %{public}@ in album %{public}@.", buf, 0x2Au);
      }

      v15 = [(MSASStateMachine *)self protocol];
      v16 = [v15 stopHandlerBlock];
      [(MSASStateMachine *)self _setStopHandlerBlock:v16];

      objc_initWeak(buf, self);
      v17 = [(MSASStateMachine *)self delegate];
      v18 = [v8 GUID];
      v19 = [v17 MSASStateMachineDidRequestAlbumURLStringForAlbumWithGUID:v18 info:v9];

      v20 = [(MSASStateMachine *)self protocol];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __50__MSASStateMachine__addCommentDisposition_params___block_invoke_283;
      v28[3] = &unk_278E91620;
      objc_copyWeak(&v34, buf);
      v29 = v6;
      v30 = v8;
      v31 = v7;
      v32 = v22;
      v33 = v9;
      [v20 addComment:v32 toAssetCollection:v31 inAlbum:v30 albumURLString:v19 completionBlock:v28];

      objc_destroyWeak(&v34);
      objc_destroyWeak(buf);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __50__MSASStateMachine__addCommentDisposition_params___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) didFinishAddingComment:*(a1 + 40) toAssetCollection:*(a1 + 48) inAlbum:*(a1 + 56) info:*(a1 + 64) error:*(a1 + 72)];
}

void __50__MSASStateMachine__addCommentDisposition_params___block_invoke_283(id *a1, void *a2, int a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 9);
  v7 = [WeakRetained workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__MSASStateMachine__addCommentDisposition_params___block_invoke_2;
  block[3] = &unk_278E915F8;
  v17 = v5;
  v18 = WeakRetained;
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[7];
  *&v12 = v10;
  *(&v12 + 1) = v11;
  *&v13 = v8;
  *(&v13 + 1) = v9;
  v19 = v13;
  v20 = v12;
  v21 = a1[8];
  v14 = WeakRetained;
  v15 = v5;
  objc_copyWeak(&v22, a1 + 9);
  v23 = a3;
  dispatch_async(v7, block);

  objc_destroyWeak(&v22);
}

void __50__MSASStateMachine__addCommentDisposition_params___block_invoke_3(uint64_t a1)
{
  v8 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = [v2 _canceledError];
  [v8 MSASStateMachine:v2 didFinishAddingComment:v3 toAssetCollection:v4 inAlbum:v5 info:v6 error:v7];
}

void __50__MSASStateMachine__addCommentDisposition_params___block_invoke_2(uint64_t a1)
{
  v54 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 40);
      v19 = *(a1 + 64);
      v18 = *(a1 + 72);
      v20 = *(a1 + 56);
      *buf = 138544130;
      v45 = v17;
      v46 = 2114;
      v47 = v18;
      v48 = 2114;
      v49 = v19;
      v50 = 2114;
      v51 = v20;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Finished adding comment %{public}@ to asset collection %{public}@ in album %{public}@.", buf, 0x2Au);
    }

    [*(a1 + 72) setID:*(a1 + 96)];
    v21 = [*(a1 + 40) memberQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__MSASStateMachine__addCommentDisposition_params___block_invoke_285;
    block[3] = &unk_278E926D8;
    v10 = &v36;
    v36 = *(a1 + 40);
    dispatch_barrier_sync(v21, block);

    v9 = [*(a1 + 40) eventQueue];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __50__MSASStateMachine__addCommentDisposition_params___block_invoke_2_286;
    v29[3] = &unk_278E92688;
    v11 = &v30;
    v30 = *(a1 + 40);
    v12 = &v31;
    v31 = *(a1 + 72);
    v13 = &v32;
    v32 = *(a1 + 64);
    v14 = &v33;
    v33 = *(a1 + 56);
    v15 = &v34;
    v34 = *(a1 + 80);
    v16 = v29;
    goto LABEL_9;
  }

  v3 = *(a1 + 40);
  v4 = NSStringFromSelector(sel__addCommentDisposition_params_);
  v5 = *(a1 + 48);
  v6 = [*(a1 + 56) GUID];
  v7 = [*(a1 + 64) GUID];
  v8 = [v3 workQueueEndCommandWithError:v2 command:v4 params:v5 albumGUID:v6 assetCollectionGUID:v7];

  if ((v8 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v25 = *(a1 + 64);
      v24 = *(a1 + 72);
      v26 = *(a1 + 56);
      v27 = *(a1 + 40);
      v28 = [*(a1 + 32) MSVerboseDescription];
      *buf = 138544386;
      v45 = v27;
      v46 = 2114;
      v47 = v24;
      v48 = 2114;
      v49 = v25;
      v50 = 2114;
      v51 = v26;
      v52 = 2114;
      v53 = v28;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to add comment %{public}@ to asset collection %{public}@ in album %{public}@. Error: %{public}@", buf, 0x34u);
    }

    v9 = [*(a1 + 40) eventQueue];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __50__MSASStateMachine__addCommentDisposition_params___block_invoke_284;
    v37[3] = &unk_278E92048;
    v10 = &v38;
    v38 = *(a1 + 40);
    v11 = &v39;
    v39 = *(a1 + 72);
    v12 = &v40;
    v40 = *(a1 + 64);
    v13 = &v41;
    v41 = *(a1 + 56);
    v14 = &v42;
    v42 = *(a1 + 80);
    v15 = &v43;
    v43 = *(a1 + 32);
    v16 = v37;
LABEL_9:
    dispatch_async(v9, v16);

    WeakRetained = objc_loadWeakRetained((a1 + 88));
    [WeakRetained workQueueDidFinishCommand];
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __50__MSASStateMachine__addCommentDisposition_params___block_invoke_284(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) didFinishAddingComment:*(a1 + 40) toAssetCollection:*(a1 + 48) inAlbum:*(a1 + 56) info:*(a1 + 64) error:*(a1 + 72)];
}

void __50__MSASStateMachine__addCommentDisposition_params___block_invoke_285(uint64_t a1)
{
  v1 = [*(a1 + 32) memberQueueMetadataBackoffManager];
  [v1 reset];
}

void __50__MSASStateMachine__addCommentDisposition_params___block_invoke_2_286(uint64_t a1)
{
  v2 = [*(a1 + 32) daemon];
  v3 = [*(a1 + 32) personID];
  [v2 didReceiveAuthSuccessForPersonID:v3];

  v4 = [*(a1 + 32) delegate];
  [v4 MSASStateMachine:*(a1 + 32) didFinishAddingComment:*(a1 + 40) toAssetCollection:*(a1 + 48) inAlbum:*(a1 + 56) info:*(a1 + 64) error:0];
}

- (void)addComments:(id)a3 toAssetCollection:(id)a4 inAlbum:(id)a5 info:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__MSASStateMachine_addComments_toAssetCollection_inAlbum_info___block_invoke;
  block[3] = &unk_278E92688;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(v14, block);
}

uint64_t __63__MSASStateMachine_addComments_toAssetCollection_inAlbum_info___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 40) count];
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    *buf = 138544130;
    v31 = v2;
    v32 = 2048;
    v33 = v3;
    v34 = 2114;
    v35 = v4;
    v36 = 2114;
    v37 = v5;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Scheduling the addition of %ld comments to asset collection %{public}@ in album %{public}@.", buf, 0x2Au);
  }

  v6 = [*(a1 + 32) _model];
  [v6 beginTransaction];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = *(a1 + 40);
  v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v24 = *v26;
    do
    {
      v9 = 0;
      do
      {
        if (*v26 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        v11 = [MEMORY[0x277CBEB38] dictionary];
        [v11 setObject:v10 forKey:@"comment"];
        v12 = *(a1 + 48);
        if (v12)
        {
          [v11 setObject:v12 forKey:@"assetCollection"];
        }

        v13 = *(a1 + 56);
        if (v13)
        {
          [v11 setObject:v13 forKey:@"album"];
        }

        v14 = *(a1 + 64);
        if (v14)
        {
          [v11 setObject:v14 forKey:@"info"];
        }

        v15 = [*(a1 + 32) _model];
        v16 = NSStringFromSelector(sel__addCommentDisposition_params_);
        v17 = [*(a1 + 32) personID];
        v18 = [*(a1 + 56) GUID];
        v19 = [*(a1 + 48) GUID];
        [v15 enqueueCommand:v16 params:v11 personID:v17 albumGUID:v18 pendingOnAssetCollectionGUID:v19];

        ++v9;
      }

      while (v8 != v9);
      v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  v20 = [*(a1 + 32) _model];
  [v20 endTransaction];

  result = [*(a1 + 32) workQueueRetryOutstandingActivities];
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_removeSharingRelationshipsDisposition:(int)a3 params:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [v6 objectForKey:@"sharingRelationships"];
  v8 = [(MSASStateMachine *)self _albumForRequestFromParams:v6];
  v9 = [v6 objectForKey:@"info"];
  if (a3 == 2)
  {
    v13 = [(MSASStateMachine *)self eventQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __66__MSASStateMachine__removeSharingRelationshipsDisposition_params___block_invoke_3;
    v15[3] = &unk_278E92660;
    v16 = v7;
    v17 = self;
    v18 = v8;
    v19 = v9;
    dispatch_async(v13, v15);
  }

  else if (!a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v27 = self;
      v28 = 2048;
      v29 = [v7 count];
      v30 = 2114;
      v31 = v8;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Removing %ld sharing relationships from album %{public}@", buf, 0x20u);
    }

    v10 = [(MSASStateMachine *)self protocol];
    v11 = [v10 stopHandlerBlock];
    [(MSASStateMachine *)self _setStopHandlerBlock:v11];

    objc_initWeak(buf, self);
    v12 = [(MSASStateMachine *)self protocol];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __66__MSASStateMachine__removeSharingRelationshipsDisposition_params___block_invoke;
    v20[3] = &unk_278E915D0;
    v20[4] = self;
    objc_copyWeak(&v25, buf);
    v21 = v6;
    v22 = v8;
    v23 = v7;
    v24 = v9;
    [v12 removeSharingRelationships:v23 fromAlbum:v22 completionBlock:v20];

    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __66__MSASStateMachine__removeSharingRelationshipsDisposition_params___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__MSASStateMachine__removeSharingRelationshipsDisposition_params___block_invoke_2;
  block[3] = &unk_278E913F0;
  v13 = v3;
  v5 = v3;
  objc_copyWeak(&v17, a1 + 9);
  v6 = a1[5];
  v7 = a1[6];
  v11 = a1[4];
  v8 = a1[7];
  *&v9 = v11;
  *(&v9 + 1) = v8;
  *&v10 = v6;
  *(&v10 + 1) = v7;
  v14 = v10;
  v15 = v9;
  v16 = a1[8];
  dispatch_async(v4, block);

  objc_destroyWeak(&v17);
}

void __66__MSASStateMachine__removeSharingRelationshipsDisposition_params___block_invoke_3(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v15;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v14 + 1) + 8 * i);
        v7 = [*(a1 + 40) delegate];
        v8 = *(a1 + 40);
        v9 = *(a1 + 48);
        v10 = *(a1 + 56);
        v11 = [v8 _canceledError];
        [v7 MSASStateMachine:v8 didFinishRemovingSharingRelationship:v6 fromOwnedAlbum:v9 info:v10 error:v11];
      }

      v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v3);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __66__MSASStateMachine__removeSharingRelationshipsDisposition_params___block_invoke_2(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 80));
    v3 = [WeakRetained workQueueEndCommandWithError:*(a1 + 32) command:0 params:*(a1 + 40) albumGUID:0 assetCollectionGUID:0];

    if ((v3 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v16 = objc_loadWeakRetained((a1 + 80));
        v17 = *(a1 + 48);
        v18 = *(a1 + 32);
        *buf = 138543874;
        v31 = v16;
        v32 = 2114;
        v33 = v17;
        v34 = 2114;
        v35 = v18;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to remove sharing relationships from album %{public}@. Error: %{public}@", buf, 0x20u);
      }

      v4 = [*(a1 + 56) eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __66__MSASStateMachine__removeSharingRelationshipsDisposition_params___block_invoke_278;
      block[3] = &unk_278E911B0;
      v25 = *(a1 + 64);
      objc_copyWeak(&v29, (a1 + 80));
      v26 = *(a1 + 48);
      v27 = *(a1 + 72);
      v28 = *(a1 + 32);
      dispatch_async(v4, block);

      v5 = objc_loadWeakRetained((a1 + 80));
      [v5 workQueueDidFinishCommand];

      objc_destroyWeak(&v29);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = objc_loadWeakRetained((a1 + 80));
      v7 = *(a1 + 48);
      *buf = 138543618;
      v31 = v6;
      v32 = 2114;
      v33 = v7;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Successfully removed sharing relationships from album %{public}@", buf, 0x16u);
    }

    v8 = [*(a1 + 56) memberQueue];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __66__MSASStateMachine__removeSharingRelationshipsDisposition_params___block_invoke_279;
    v23[3] = &unk_278E926D8;
    v23[4] = *(a1 + 56);
    dispatch_barrier_sync(v8, v23);

    v9 = [*(a1 + 56) eventQueue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __66__MSASStateMachine__removeSharingRelationshipsDisposition_params___block_invoke_2_280;
    v19[3] = &unk_278E911B0;
    objc_copyWeak(&v22, (a1 + 80));
    v10 = *(a1 + 64);
    v11 = *(a1 + 48);
    *&v12 = *(a1 + 72);
    *(&v12 + 1) = *(a1 + 56);
    *&v13 = v10;
    *(&v13 + 1) = v11;
    v20 = v13;
    v21 = v12;
    dispatch_async(v9, v19);

    v14 = objc_loadWeakRetained((a1 + 80));
    [v14 workQueueDidFinishCommand];

    objc_destroyWeak(&v22);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __66__MSASStateMachine__removeSharingRelationshipsDisposition_params___block_invoke_278(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
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
        WeakRetained = objc_loadWeakRetained((a1 + 64));
        v9 = [WeakRetained delegate];
        v10 = objc_loadWeakRetained((a1 + 64));
        [v9 MSASStateMachine:v10 didFinishRemovingSharingRelationship:v7 fromOwnedAlbum:*(a1 + 40) info:*(a1 + 48) error:*(a1 + 56)];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __66__MSASStateMachine__removeSharingRelationshipsDisposition_params___block_invoke_2_280(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained daemon];
  v4 = objc_loadWeakRetained((a1 + 64));
  v5 = [v4 personID];
  [v3 didReceiveAuthSuccessForPersonID:v5];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        v12 = objc_loadWeakRetained((a1 + 64));
        v13 = [v12 delegate];
        v14 = objc_loadWeakRetained((a1 + 64));
        [v13 MSASStateMachine:v14 didFinishRemovingSharingRelationship:v11 fromOwnedAlbum:*(a1 + 40) info:*(a1 + 48) error:0];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = [*(a1 + 56) phoneInvitations];
  [v15 removeSharingRelationships:*(a1 + 32) forAlbum:*(a1 + 40)];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)removeSharingRelationships:(id)a3 fromOwnedAlbum:(id)a4 info:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MSASStateMachine *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__MSASStateMachine_removeSharingRelationships_fromOwnedAlbum_info___block_invoke;
  v15[3] = &unk_278E92660;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v19 = self;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __67__MSASStateMachine_removeSharingRelationships_fromOwnedAlbum_info___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    [v2 setObject:v4 forKey:@"sharingRelationships"];
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    [v3 setObject:v5 forKey:@"album"];
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    [v3 setObject:v6 forKey:@"info"];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 56);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v15 = 138543874;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    v19 = 2114;
    v20 = v9;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Scheduling removal of sharing relationships %@ from album %{public}@", &v15, 0x20u);
  }

  v10 = [*(a1 + 56) _model];
  v11 = NSStringFromSelector(sel__removeSharingRelationshipsDisposition_params_);
  v12 = [*(a1 + 56) personID];
  v13 = [*(a1 + 40) GUID];
  [v10 enqueueCommand:v11 params:v3 personID:v12 albumGUID:v13 assetCollectionGUID:0];

  [*(a1 + 56) workQueueRetryOutstandingActivities];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)addSharingRelationships:(id)a3 toOwnedAlbum:(id)a4 info:(id)a5 completionBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__MSASStateMachine_addSharingRelationships_toOwnedAlbum_info_completionBlock___block_invoke;
  block[3] = &unk_278E921D0;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(v14, block);
}

void __78__MSASStateMachine_addSharingRelationships_toOwnedAlbum_info_completionBlock___block_invoke(id *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = a1[4];
    v3 = [a1[5] count];
    v4 = a1[6];
    *buf = 138543874;
    v20 = v2;
    v21 = 2048;
    v22 = v3;
    v23 = 2114;
    v24 = v4;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Adding %ld sharing relationships to album %{public}@", buf, 0x20u);
  }

  objc_initWeak(buf, a1[4]);
  v5 = [a1[4] protocol];
  v6 = a1[5];
  v7 = a1[6];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__MSASStateMachine_addSharingRelationships_toOwnedAlbum_info_completionBlock___block_invoke_272;
  v15[3] = &unk_278E915A0;
  objc_copyWeak(&v18, buf);
  v8 = a1[6];
  v9 = a1[5];
  v10 = a1[7];
  v11 = a1[8];
  *&v12 = v10;
  *(&v12 + 1) = v11;
  *&v13 = v8;
  *(&v13 + 1) = v9;
  v16 = v13;
  v17 = v12;
  [v5 addSharingRelationships:v6 toAlbum:v7 completionBlock:v15];

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
  v14 = *MEMORY[0x277D85DE8];
}

void __78__MSASStateMachine_addSharingRelationships_toOwnedAlbum_info_completionBlock___block_invoke_272(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  v8 = [WeakRetained workQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __78__MSASStateMachine_addSharingRelationships_toOwnedAlbum_info_completionBlock___block_invoke_2;
  v12[3] = &unk_278E91578;
  v13 = v5;
  v14 = WeakRetained;
  v15 = a1[4];
  v16 = a1[5];
  v17 = a1[6];
  v18 = v6;
  v9 = v6;
  v10 = WeakRetained;
  v11 = v5;
  objc_copyWeak(&v20, a1 + 8);
  v19 = a1[7];
  dispatch_async(v8, v12);

  objc_destroyWeak(&v20);
}

uint64_t __78__MSASStateMachine_addSharingRelationships_toOwnedAlbum_info_completionBlock___block_invoke_2(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v27 = *(a1 + 40);
      v28 = *(a1 + 48);
      *buf = 138543874;
      v40 = v27;
      v41 = 2114;
      v42 = v28;
      v43 = 2114;
      v44 = v2;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to add sharing relationships to album %{public}@. Error: %{public}@", buf, 0x20u);
    }

    v3 = [*(a1 + 40) eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__MSASStateMachine_addSharingRelationships_toOwnedAlbum_info_completionBlock___block_invoke_273;
    block[3] = &unk_278E92688;
    v4 = *(a1 + 40);
    v5 = *(a1 + 56);
    v6 = *(a1 + 48);
    v7 = *(a1 + 64);
    *&v8 = v6;
    *(&v8 + 1) = v7;
    *&v9 = v4;
    *(&v9 + 1) = v5;
    v36 = v9;
    v37 = v8;
    v38 = *(a1 + 32);
    dispatch_async(v3, block);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      *buf = 138543618;
      v40 = v10;
      v41 = 2114;
      v42 = v11;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully added sharing relationships to album %{public}@", buf, 0x16u);
    }

    if ([*(a1 + 72) count])
    {
      v12 = [*(a1 + 40) phoneInvitations];
      v13 = *(a1 + 72);
      v14 = *(a1 + 48);
      WeakRetained = objc_loadWeakRetained((a1 + 88));
      [v12 addPendingPhoneInvitations:v13 toOwnedAlbum:v14 inStateMachin:WeakRetained];
    }

    v16 = [*(a1 + 40) memberQueue];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __78__MSASStateMachine_addSharingRelationships_toOwnedAlbum_info_completionBlock___block_invoke_274;
    v33[3] = &unk_278E90E70;
    objc_copyWeak(&v34, (a1 + 88));
    dispatch_barrier_async(v16, v33);

    v17 = [*(a1 + 40) eventQueue];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __78__MSASStateMachine_addSharingRelationships_toOwnedAlbum_info_completionBlock___block_invoke_2_275;
    v29[3] = &unk_278E92688;
    v18 = *(a1 + 40);
    v19 = *(a1 + 56);
    v20 = *(a1 + 48);
    v21 = *(a1 + 64);
    *&v22 = v20;
    *(&v22 + 1) = v21;
    *&v23 = v18;
    *(&v23 + 1) = v19;
    v30 = v23;
    v31 = v22;
    v32 = *(a1 + 32);
    dispatch_async(v17, v29);

    objc_destroyWeak(&v34);
  }

  v24 = *(a1 + 32);
  result = (*(*(a1 + 80) + 16))();
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void __78__MSASStateMachine_addSharingRelationships_toOwnedAlbum_info_completionBlock___block_invoke_273(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) didFinishAddingSharingRelationships:*(a1 + 40) toOwnedAlbum:*(a1 + 48) info:*(a1 + 56) error:*(a1 + 64)];
}

void __78__MSASStateMachine_addSharingRelationships_toOwnedAlbum_info_completionBlock___block_invoke_274(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained memberQueueMetadataBackoffManager];
  [v1 reset];
}

void __78__MSASStateMachine_addSharingRelationships_toOwnedAlbum_info_completionBlock___block_invoke_2_275(uint64_t a1)
{
  v2 = [*(a1 + 32) daemon];
  v3 = [*(a1 + 32) personID];
  [v2 didReceiveAuthSuccessForPersonID:v3];

  v4 = [*(a1 + 32) delegate];
  [v4 MSASStateMachine:*(a1 + 32) didFinishAddingSharingRelationships:*(a1 + 40) toOwnedAlbum:*(a1 + 48) info:*(a1 + 56) error:*(a1 + 64)];
}

- (void)_sendGetUploadTokensDisposition:(int)a3 params:(id)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v32 = [v6 objectForKey:@"assetCollection"];
  v31 = [(MSASStateMachine *)self _albumForRequestFromParams:v6];
  v30 = [v6 objectForKey:@"info"];
  v7 = MEMORY[0x277CBEB18];
  v8 = [v32 assets];
  v9 = [v7 arrayWithCapacity:{objc_msgSend(v8, "count")}];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v10 = [v32 assets];
  v11 = [v10 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v11)
  {
    v12 = *v46;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v46 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v45 + 1) + 8 * i);
        v15 = [v14 MMCSAccessHeader];
        v16 = v15 == 0;

        if (v16)
        {
          [v9 addObject:v14];
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v11);
  }

  if (a3 == 2)
  {
    v25 = [(MSASStateMachine *)self eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__MSASStateMachine__sendGetUploadTokensDisposition_params___block_invoke_3_271;
    block[3] = &unk_278E92660;
    block[4] = self;
    v26 = v32;
    v34 = v26;
    v35 = v31;
    v36 = v30;
    dispatch_async(v25, block);

    v27 = [(MSASStateMachine *)self _model];
    v28 = [v26 GUID];
    [v27 requeuePendingAssetCollectionGUID:v28];

    [(MSASStateMachine *)self _deleteAssetFilesInAssetCollection:v26];
  }

  else if (!a3)
  {
    v17 = [(MSASStateMachine *)self protocol];
    v18 = [v17 stopHandlerBlock];
    [(MSASStateMachine *)self _setStopHandlerBlock:v18];

    objc_initWeak(&location, self);
    v19 = [(MSASStateMachine *)self delegate];
    v20 = [v31 GUID];
    v21 = [v19 MSASStateMachineDidRequestAlbumURLStringForAlbumWithGUID:v20 info:v30];

    v22 = [(MSASStateMachine *)self protocol];
    v23 = [v32 GUID];
    v24 = [v31 GUID];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __59__MSASStateMachine__sendGetUploadTokensDisposition_params___block_invoke;
    v37[3] = &unk_278E91440;
    v37[4] = self;
    objc_copyWeak(&v43, &location);
    v38 = v6;
    v39 = v9;
    v40 = v32;
    v41 = v31;
    v42 = v30;
    [v22 getUploadTokens:v39 forAssetCollectionWithGUID:v23 inAlbumWithGUID:v24 albumURLString:v21 completionBlock:v37];

    objc_destroyWeak(&v43);
    objc_destroyWeak(&location);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __59__MSASStateMachine__sendGetUploadTokensDisposition_params___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] workQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__MSASStateMachine__sendGetUploadTokensDisposition_params___block_invoke_2;
  v10[3] = &unk_278E91268;
  v11 = v3;
  v5 = v3;
  objc_copyWeak(&v16, a1 + 10);
  v6 = a1[5];
  v7 = a1[6];
  *&v8 = a1[7];
  *(&v8 + 1) = a1[4];
  *&v9 = v6;
  *(&v9 + 1) = v7;
  v12 = v9;
  v13 = v8;
  v14 = a1[8];
  v15 = a1[9];
  dispatch_async(v4, v10);

  objc_destroyWeak(&v16);
}

void __59__MSASStateMachine__sendGetUploadTokensDisposition_params___block_invoke_3_271(uint64_t a1)
{
  [*(a1 + 32) _deleteAssetFilesInAssetCollection:*(a1 + 40)];
  v7 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6 = [v2 _canceledError];
  [v7 MSASStateMachine:v2 didFinishAddingAssetCollection:v3 toAlbum:v5 info:v4 error:v6];
}

void __59__MSASStateMachine__sendGetUploadTokensDisposition_params___block_invoke_2(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 88));
    v3 = *(a1 + 32);
    v4 = NSStringFromSelector(sel__sendGetUploadTokensDisposition_params_);
    LOBYTE(v3) = [WeakRetained workQueueEndCommandWithError:v3 command:v4 params:*(a1 + 40) albumGUID:0 assetCollectionGUID:0];

    if ((v3 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v31 = objc_loadWeakRetained((a1 + 88));
        v32 = *(a1 + 48);
        v33 = [*(a1 + 32) MSVerboseDescription];
        *buf = 138543874;
        v47 = v31;
        v48 = 2114;
        v49 = v32;
        v50 = 2114;
        v51 = v33;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to get upload tokens for assets %{public}@. Error: %{public}@", buf, 0x20u);
      }

      v5 = objc_loadWeakRetained((a1 + 88));
      [v5 _deleteAssetFilesInAssetCollection:*(a1 + 56)];

      v6 = [*(a1 + 64) eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __59__MSASStateMachine__sendGetUploadTokensDisposition_params___block_invoke_267;
      block[3] = &unk_278E911B0;
      objc_copyWeak(&v45, (a1 + 88));
      v41 = *(a1 + 56);
      v42 = *(a1 + 72);
      v43 = *(a1 + 80);
      v44 = *(a1 + 32);
      dispatch_async(v6, block);

      v7 = objc_loadWeakRetained((a1 + 88));
      v8 = [v7 _model];
      [v8 beginTransaction];

      v9 = objc_loadWeakRetained((a1 + 88));
      v10 = [v9 _model];
      v11 = [*(a1 + 56) GUID];
      [v10 requeuePendingAssetCollectionGUID:v11];

      v12 = objc_loadWeakRetained((a1 + 88));
      v13 = [v12 _model];
      [v13 endTransaction];

      v14 = objc_loadWeakRetained((a1 + 88));
      v15 = [v14 _assetUploader];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __59__MSASStateMachine__sendGetUploadTokensDisposition_params___block_invoke_2_268;
      v37[3] = &unk_278E91528;
      objc_copyWeak(&v39, (a1 + 88));
      v38 = *(a1 + 56);
      [v15 stopCompletionBlock:v37];

      objc_destroyWeak(&v39);
      objc_destroyWeak(&v45);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v16 = objc_loadWeakRetained((a1 + 88));
      v17 = [*(a1 + 48) count];
      v18 = *(a1 + 56);
      *buf = 138543874;
      v47 = v16;
      v48 = 2048;
      v49 = v17;
      v50 = 2114;
      v51 = v18;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Successfully obtained %ld upload tokens in asset collection %{public}@.", buf, 0x20u);
    }

    v19 = [*(a1 + 64) memberQueue];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __59__MSASStateMachine__sendGetUploadTokensDisposition_params___block_invoke_269;
    v36[3] = &unk_278E926D8;
    v36[4] = *(a1 + 64);
    dispatch_barrier_sync(v19, v36);

    v20 = [*(a1 + 64) eventQueue];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __59__MSASStateMachine__sendGetUploadTokensDisposition_params___block_invoke_2_270;
    v34[3] = &unk_278E90E70;
    objc_copyWeak(&v35, (a1 + 88));
    dispatch_async(v20, v34);

    v21 = objc_loadWeakRetained((a1 + 88));
    v22 = [v21 _model];
    [v22 beginTransaction];

    v23 = objc_loadWeakRetained((a1 + 88));
    v24 = [v23 _model];
    [v24 enqueueAssetCollectionForUpload:*(a1 + 56) album:*(a1 + 72)];

    v25 = objc_loadWeakRetained((a1 + 88));
    v26 = [v25 _model];
    [v26 endTransaction];

    v27 = objc_loadWeakRetained((a1 + 88));
    v28 = [v27 _assetUploader];
    [v28 retryOutstandingActivities];

    v29 = objc_loadWeakRetained((a1 + 88));
    [v29 workQueueDidFinishCommand];

    objc_destroyWeak(&v35);
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __59__MSASStateMachine__sendGetUploadTokensDisposition_params___block_invoke_267(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 64));
  [v2 MSASStateMachine:v3 didFinishAddingAssetCollection:*(a1 + 32) toAlbum:*(a1 + 40) info:*(a1 + 48) error:*(a1 + 56)];
}

void __59__MSASStateMachine__sendGetUploadTokensDisposition_params___block_invoke_2_268(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _assetUploader];
  v4 = [MEMORY[0x277CBEA60] arrayWithObject:*(a1 + 32)];
  [v3 unregisterAssetCollections:v4];

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v5 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__MSASStateMachine__sendGetUploadTokensDisposition_params___block_invoke_3;
  block[3] = &unk_278E90E70;
  objc_copyWeak(&v8, (a1 + 40));
  dispatch_async(v6, block);

  objc_destroyWeak(&v8);
}

void __59__MSASStateMachine__sendGetUploadTokensDisposition_params___block_invoke_2_270(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained daemon];
  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 personID];
  [v2 didReceiveAuthSuccessForPersonID:v4];
}

void __59__MSASStateMachine__sendGetUploadTokensDisposition_params___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained workQueueDidFinishCommand];
}

- (void)_sendPutAssetCollectionsDisposition:(int)a3 params:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v24 = [v6 objectForKey:@"successfulAssetCollections"];
  v7 = [(MSASStateMachine *)self _albumForRequestFromParams:v6];
  v25 = [v6 objectForKey:@"info"];
  if (a3 == 2)
  {
    v14 = [(MSASStateMachine *)self eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke_7;
    block[3] = &unk_278E92660;
    v15 = v24;
    v31 = v15;
    v32 = self;
    v33 = v7;
    v34 = v25;
    dispatch_async(v14, block);

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v26 objects:v40 count:16];
    if (v17)
    {
      v18 = *v27;
      do
      {
        v19 = 0;
        do
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v26 + 1) + 8 * v19);
          v21 = [(MSASStateMachine *)self _model];
          v22 = [v20 GUID];
          [v21 requeuePendingAssetCollectionGUID:v22];

          [(MSASStateMachine *)self _deleteAssetFilesInAssetCollection:v20];
          ++v19;
        }

        while (v17 != v19);
        v17 = [v16 countByEnumeratingWithState:&v26 objects:v40 count:16];
      }

      while (v17);
    }
  }

  else if (!a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v42 = self;
      v43 = 2048;
      v44 = [v24 count];
      v45 = 2114;
      v46 = v7;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Adding %ld photos to album %{public}@.", buf, 0x20u);
    }

    v8 = [(MSASStateMachine *)self protocol];
    v9 = [v8 stopHandlerBlock];
    [(MSASStateMachine *)self _setStopHandlerBlock:v9];

    objc_initWeak(buf, self);
    v10 = [(MSASStateMachine *)self delegate];
    v11 = [v7 GUID];
    v12 = [v10 MSASStateMachineDidRequestAlbumURLStringForAlbumWithGUID:v11 info:v25];

    v13 = [(MSASStateMachine *)self protocol];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke;
    v35[3] = &unk_278E91550;
    v35[4] = self;
    objc_copyWeak(&v39, buf);
    v36 = v6;
    v37 = v7;
    v38 = v25;
    [v13 putAssetCollections:v24 intoAlbum:v37 albumURLString:v12 completionBlock:v35];

    objc_destroyWeak(&v39);
    objc_destroyWeak(buf);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke(id *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a4;
  v10 = a5;
  v11 = [a1[4] workQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke_2;
  v16[3] = &unk_278E91268;
  v17 = v8;
  v12 = v8;
  objc_copyWeak(&v24, a1 + 8);
  v18 = a1[5];
  v19 = a1[6];
  v20 = v9;
  v13 = a1[4];
  v21 = v10;
  v22 = v13;
  v23 = a1[7];
  v14 = v10;
  v15 = v9;
  dispatch_async(v11, v16);

  objc_destroyWeak(&v24);
}

void __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke_7(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v15;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v14 + 1) + 8 * i);
        [*(a1 + 40) _deleteAssetFilesInAssetCollection:v6];
        v7 = [*(a1 + 40) delegate];
        v8 = *(a1 + 40);
        v9 = *(a1 + 48);
        v10 = *(a1 + 56);
        v11 = [v8 _canceledError];
        [v7 MSASStateMachine:v8 didFinishAddingAssetCollection:v6 toAlbum:v9 info:v10 error:v11];
      }

      v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v3);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke_2(uint64_t a1)
{
  v147 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 88));
    v3 = *(a1 + 32);
    v4 = NSStringFromSelector(sel__sendPutAssetCollectionsDisposition_params_);
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) GUID];
    LOBYTE(v3) = [WeakRetained workQueueEndCommandWithError:v3 command:v4 params:v5 albumGUID:v6 assetCollectionGUID:0];

    if ((v3 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v82 = objc_loadWeakRetained((a1 + 88));
        v83 = *(a1 + 48);
        v84 = [*(a1 + 32) MSVerboseDescription];
        *buf = 138543874;
        v142 = v82;
        v143 = 2114;
        v144 = v83;
        v145 = 2114;
        v146 = v84;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to add photos to album %{public}@. Error: %{public}@", buf, 0x20u);
      }

      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v7 = *(a1 + 56);
      v8 = [v7 countByEnumeratingWithState:&v131 objects:v140 count:16];
      if (v8)
      {
        v9 = *v132;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v132 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v131 + 1) + 8 * i);
            v12 = objc_loadWeakRetained((a1 + 88));
            [v12 _deleteAssetFilesInAssetCollection:v11];
          }

          v8 = [v7 countByEnumeratingWithState:&v131 objects:v140 count:16];
        }

        while (v8);
      }

      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v13 = *(a1 + 64);
      v14 = [v13 countByEnumeratingWithState:&v127 objects:v139 count:16];
      if (v14)
      {
        v15 = *v128;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v128 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = *(*(&v127 + 1) + 8 * j);
            v18 = objc_loadWeakRetained((a1 + 88));
            [v18 _deleteAssetFilesInAssetCollection:v17];
          }

          v14 = [v13 countByEnumeratingWithState:&v127 objects:v139 count:16];
        }

        while (v14);
      }

      v19 = [*(a1 + 72) eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke_259;
      block[3] = &unk_278E91340;
      v121 = *(a1 + 56);
      objc_copyWeak(&v126, (a1 + 88));
      v122 = *(a1 + 48);
      v123 = *(a1 + 80);
      v124 = *(a1 + 32);
      v125 = *(a1 + 64);
      dispatch_async(v19, block);

      v20 = objc_loadWeakRetained((a1 + 88));
      v21 = [v20 _model];
      [v21 beginTransaction];

      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      v22 = *(a1 + 56);
      v23 = [v22 countByEnumeratingWithState:&v116 objects:v138 count:16];
      if (v23)
      {
        v24 = *v117;
        do
        {
          for (k = 0; k != v23; ++k)
          {
            if (*v117 != v24)
            {
              objc_enumerationMutation(v22);
            }

            v26 = *(*(&v116 + 1) + 8 * k);
            v27 = objc_loadWeakRetained((a1 + 88));
            v28 = [v27 _model];
            v29 = [v26 GUID];
            [v28 requeuePendingAssetCollectionGUID:v29];
          }

          v23 = [v22 countByEnumeratingWithState:&v116 objects:v138 count:16];
        }

        while (v23);
      }

      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      v30 = *(a1 + 64);
      v31 = [v30 countByEnumeratingWithState:&v112 objects:v137 count:16];
      if (v31)
      {
        v32 = *v113;
        do
        {
          for (m = 0; m != v31; ++m)
          {
            if (*v113 != v32)
            {
              objc_enumerationMutation(v30);
            }

            v34 = *(*(&v112 + 1) + 8 * m);
            v35 = objc_loadWeakRetained((a1 + 88));
            v36 = [v35 _model];
            v37 = [v34 GUID];
            [v36 requeuePendingAssetCollectionGUID:v37];
          }

          v31 = [v30 countByEnumeratingWithState:&v112 objects:v137 count:16];
        }

        while (v31);
      }

      v38 = objc_loadWeakRetained((a1 + 88));
      v39 = [v38 _model];
      [v39 endTransaction];

      v40 = objc_loadWeakRetained((a1 + 88));
      v41 = [v40 _assetUploader];
      v108[0] = MEMORY[0x277D85DD0];
      v108[1] = 3221225472;
      v108[2] = __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke_2_260;
      v108[3] = &unk_278E917C0;
      objc_copyWeak(&v111, (a1 + 88));
      v109 = *(a1 + 56);
      v110 = *(a1 + 64);
      [v41 stopCompletionBlock:v108];

      objc_destroyWeak(&v111);
      objc_destroyWeak(&v126);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v42 = objc_loadWeakRetained((a1 + 88));
      v43 = [*(a1 + 56) count];
      v44 = *(a1 + 48);
      *buf = 138543874;
      v142 = v42;
      v143 = 2048;
      v144 = v43;
      v145 = 2114;
      v146 = v44;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Successfully enqueued %ld photos for upload to album %{public}@.", buf, 0x20u);
    }

    if ([*(a1 + 64) count] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v85 = objc_loadWeakRetained((a1 + 88));
      v86 = [*(a1 + 64) count];
      v87 = *(a1 + 48);
      *buf = 138543874;
      v142 = v85;
      v143 = 2048;
      v144 = v86;
      v145 = 2114;
      v146 = v87;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to enqueue %ld photos for upload to album %{public}@.", buf, 0x20u);
    }

    v45 = [*(a1 + 72) memberQueue];
    v107[0] = MEMORY[0x277D85DD0];
    v107[1] = 3221225472;
    v107[2] = __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke_261;
    v107[3] = &unk_278E926D8;
    v107[4] = *(a1 + 72);
    dispatch_barrier_sync(v45, v107);

    v46 = [*(a1 + 72) eventQueue];
    v105[0] = MEMORY[0x277D85DD0];
    v105[1] = 3221225472;
    v105[2] = __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke_2_262;
    v105[3] = &unk_278E90E70;
    objc_copyWeak(&v106, (a1 + 88));
    dispatch_async(v46, v105);

    v47 = objc_loadWeakRetained((a1 + 88));
    v48 = [v47 _model];
    [v48 beginTransaction];

    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v49 = *(a1 + 56);
    v50 = [v49 countByEnumeratingWithState:&v101 objects:v136 count:16];
    if (v50)
    {
      v51 = *v102;
      do
      {
        for (n = 0; n != v50; ++n)
        {
          if (*v102 != v51)
          {
            objc_enumerationMutation(v49);
          }

          v53 = *(*(&v101 + 1) + 8 * n);
          v54 = objc_loadWeakRetained((a1 + 88));
          v55 = [v54 _model];
          [v55 enqueueAssetCollectionForUpload:v53 album:*(a1 + 48)];
        }

        v50 = [v49 countByEnumeratingWithState:&v101 objects:v136 count:16];
      }

      while (v50);
    }

    v56 = objc_loadWeakRetained((a1 + 88));
    v57 = [v56 _model];
    [v57 endTransaction];

    v58 = objc_loadWeakRetained((a1 + 88));
    v59 = [v58 _assetUploader];
    [v59 retryOutstandingActivities];

    v60 = [*(a1 + 72) eventQueue];
    v95[0] = MEMORY[0x277D85DD0];
    v95[1] = 3221225472;
    v95[2] = __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke_3_263;
    v95[3] = &unk_278E911B0;
    v96 = *(a1 + 64);
    objc_copyWeak(&v100, (a1 + 88));
    v97 = *(a1 + 48);
    v61 = *(a1 + 80);
    v62 = *(a1 + 72);
    v98 = v61;
    v99 = v62;
    dispatch_async(v60, v95);

    v63 = [*(a1 + 64) count] == 0;
    v64 = objc_loadWeakRetained((a1 + 88));
    v65 = v64;
    if (v63)
    {
      [v64 workQueueDidFinishCommand];
    }

    else
    {
      v66 = [v64 _model];
      [v66 beginTransaction];

      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v67 = *(a1 + 64);
      v68 = [v67 countByEnumeratingWithState:&v91 objects:v135 count:16];
      if (v68)
      {
        v69 = *v92;
        do
        {
          for (ii = 0; ii != v68; ++ii)
          {
            if (*v92 != v69)
            {
              objc_enumerationMutation(v67);
            }

            v71 = *(*(&v91 + 1) + 8 * ii);
            v72 = objc_loadWeakRetained((a1 + 88));
            v73 = [v72 _model];
            v74 = [v71 GUID];
            [v73 requeuePendingAssetCollectionGUID:v74];

            v75 = objc_loadWeakRetained((a1 + 88));
            v76 = [v71 GUID];
            [v75 cancelOutstandingCommandsForAssetCollectionWithGUID:v76];
          }

          v68 = [v67 countByEnumeratingWithState:&v91 objects:v135 count:16];
        }

        while (v68);
      }

      v77 = objc_loadWeakRetained((a1 + 88));
      v78 = [v77 _model];
      [v78 endTransaction];

      v79 = objc_loadWeakRetained((a1 + 88));
      v80 = [v79 _assetUploader];
      v88[0] = MEMORY[0x277D85DD0];
      v88[1] = 3221225472;
      v88[2] = __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke_4;
      v88[3] = &unk_278E91528;
      objc_copyWeak(&v90, (a1 + 88));
      v89 = *(a1 + 64);
      [v80 stopCompletionBlock:v88];

      objc_destroyWeak(&v90);
    }

    objc_destroyWeak(&v100);
    objc_destroyWeak(&v106);
  }

  v81 = *MEMORY[0x277D85DE8];
}

void __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke_259(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v26;
    do
    {
      v6 = 0;
      do
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v25 + 1) + 8 * v6);
        WeakRetained = objc_loadWeakRetained((a1 + 72));
        v9 = [WeakRetained delegate];
        v10 = objc_loadWeakRetained((a1 + 72));
        [v9 MSASStateMachine:v10 didFinishAddingAssetCollection:v7 toAlbum:*(a1 + 40) info:*(a1 + 48) error:*(a1 + 56)];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v4);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = *(a1 + 64);
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      v15 = 0;
      do
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * v15);
        v17 = objc_loadWeakRetained((a1 + 72));
        v18 = [v17 delegate];
        v19 = objc_loadWeakRetained((a1 + 72));
        [v18 MSASStateMachine:v19 didFinishAddingAssetCollection:v16 toAlbum:*(a1 + 40) info:*(a1 + 48) error:*(a1 + 56)];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v13);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke_2_260(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained _assetUploader];
  [v3 unregisterAssetCollections:*(a1 + 32)];

  v4 = objc_loadWeakRetained((a1 + 48));
  v5 = [v4 _assetUploader];
  v6 = [*(a1 + 40) allKeys];
  [v5 unregisterAssetCollections:v6];

  v7 = objc_loadWeakRetained((a1 + 48));
  v8 = [v7 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke_3;
  block[3] = &unk_278E90E70;
  objc_copyWeak(&v10, (a1 + 48));
  dispatch_async(v8, block);

  objc_destroyWeak(&v10);
}

void __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke_2_262(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained daemon];
  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 personID];
  [v2 didReceiveAuthSuccessForPersonID:v4];
}

void __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke_3_263(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v14 = *v16;
    do
    {
      v4 = 0;
      do
      {
        if (*v16 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v15 + 1) + 8 * v4);
        WeakRetained = objc_loadWeakRetained((a1 + 64));
        v7 = [WeakRetained delegate];
        v8 = objc_loadWeakRetained((a1 + 64));
        v9 = *(a1 + 40);
        v10 = *(a1 + 48);
        v11 = [*(a1 + 56) _assetCollectionRejectedError];
        [v7 MSASStateMachine:v8 didFinishAddingAssetCollection:v5 toAlbum:v9 info:v10 error:v11];

        ++v4;
      }

      while (v3 != v4);
      v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _assetUploader];
  v4 = [*(a1 + 32) allKeys];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke_5;
  v5[3] = &unk_278E91528;
  v6 = *(a1 + 32);
  objc_copyWeak(&v7, (a1 + 40));
  [v3 unregisterAssetCollections:v4 completionBlock:v5];

  objc_destroyWeak(&v7);
}

void __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke_5(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        WeakRetained = objc_loadWeakRetained((a1 + 40));
        [WeakRetained _deleteAssetFilesInAssetCollection:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v9 = objc_loadWeakRetained((a1 + 40));
  v10 = [v9 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke_6;
  block[3] = &unk_278E90E70;
  objc_copyWeak(&v13, (a1 + 40));
  dispatch_async(v10, block);

  objc_destroyWeak(&v13);
  v11 = *MEMORY[0x277D85DE8];
}

void __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained workQueueDidFinishCommand];
}

void __63__MSASStateMachine__sendPutAssetCollectionsDisposition_params___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained workQueueDidFinishCommand];
}

- (void)_sendUploadCompleteDisposition:(int)a3 params:(id)a4
{
  v90 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v47 = [v6 objectForKey:@"successfulAssetCollections"];
  v48 = [v6 objectForKey:@"failedAssetCollectionsAndErrors"];
  v46 = [(MSASStateMachine *)self _albumForRequestFromParams:v6];
  v45 = [v6 objectForKey:@"info"];
  if (a3 == 2)
  {
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v14 = v47;
    v15 = [v14 countByEnumeratingWithState:&v67 objects:v81 count:16];
    if (v15)
    {
      v16 = *v68;
      do
      {
        v17 = 0;
        do
        {
          if (*v68 != v16)
          {
            objc_enumerationMutation(v14);
          }

          [(MSASStateMachine *)self _deleteAssetFilesInAssetCollection:*(*(&v67 + 1) + 8 * v17++), v45];
        }

        while (v15 != v17);
        v15 = [v14 countByEnumeratingWithState:&v67 objects:v81 count:16];
      }

      while (v15);
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v18 = v48;
    v19 = [v18 countByEnumeratingWithState:&v63 objects:v80 count:16];
    if (v19)
    {
      v20 = *v64;
      do
      {
        v21 = 0;
        do
        {
          if (*v64 != v20)
          {
            objc_enumerationMutation(v18);
          }

          [(MSASStateMachine *)self _deleteAssetFilesInAssetCollection:*(*(&v63 + 1) + 8 * v21++), v45];
        }

        while (v19 != v21);
        v19 = [v18 countByEnumeratingWithState:&v63 objects:v80 count:16];
      }

      while (v19);
    }

    v22 = [(MSASStateMachine *)self eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__MSASStateMachine__sendUploadCompleteDisposition_params___block_invoke_3;
    block[3] = &unk_278E92688;
    v23 = v14;
    v58 = v23;
    v59 = self;
    v60 = v46;
    v61 = v45;
    v24 = v18;
    v62 = v24;
    dispatch_async(v22, block);

    v25 = [(MSASStateMachine *)self _model];
    [v25 beginTransaction];

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v26 = v23;
    v27 = [v26 countByEnumeratingWithState:&v53 objects:v79 count:16];
    if (v27)
    {
      v28 = *v54;
      do
      {
        v29 = 0;
        do
        {
          if (*v54 != v28)
          {
            objc_enumerationMutation(v26);
          }

          v30 = *(*(&v53 + 1) + 8 * v29);
          v31 = [(MSASStateMachine *)self _model];
          v32 = [v30 GUID];
          [v31 requeuePendingAssetCollectionGUID:v32];

          [(MSASStateMachine *)self _deleteAssetFilesInAssetCollection:v30];
          ++v29;
        }

        while (v27 != v29);
        v27 = [v26 countByEnumeratingWithState:&v53 objects:v79 count:16];
      }

      while (v27);
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v33 = v24;
    v34 = [v33 countByEnumeratingWithState:&v49 objects:v78 count:16];
    if (v34)
    {
      v35 = *v50;
      do
      {
        v36 = 0;
        do
        {
          if (*v50 != v35)
          {
            objc_enumerationMutation(v33);
          }

          v37 = *(*(&v49 + 1) + 8 * v36);
          v38 = [(MSASStateMachine *)self _model];
          v39 = [v37 GUID];
          [v38 requeuePendingAssetCollectionGUID:v39];

          [(MSASStateMachine *)self _deleteAssetFilesInAssetCollection:v37];
          ++v36;
        }

        while (v34 != v36);
        v34 = [v33 countByEnumeratingWithState:&v49 objects:v78 count:16];
      }

      while (v34);
    }

    v40 = [(MSASStateMachine *)self _model];
    [v40 endTransaction];

    v41 = [(MSASStateMachine *)self _assetUploader];
    [v41 unregisterAssetCollections:v26];

    v42 = [(MSASStateMachine *)self _assetUploader];
    v43 = [v33 allKeys];
    [v42 unregisterAssetCollections:v43];
  }

  else if (!a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v47 count];
      v8 = [v48 count];
      v9 = CFAbsoluteTimeGetCurrent() - self->_startOfUpload;
      *buf = 138544130;
      v83 = self;
      v84 = 2048;
      v85 = v7;
      v86 = 2048;
      v87 = v8;
      v88 = 2048;
      v89 = v9;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Sending upload complete for %ld successful photos, and %ld failed photos. Took %.2fs to upload", buf, 0x2Au);
    }

    v10 = [(MSASStateMachine *)self protocol];
    v11 = [v10 stopHandlerBlock];
    [(MSASStateMachine *)self _setStopHandlerBlock:v11];

    objc_initWeak(buf, self);
    v12 = [(MSASStateMachine *)self protocol];
    v13 = [v48 allKeys];
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __58__MSASStateMachine__sendUploadCompleteDisposition_params___block_invoke;
    v71[3] = &unk_278E91500;
    v71[4] = self;
    objc_copyWeak(&v77, buf);
    v72 = v6;
    v73 = v47;
    v74 = v46;
    v75 = v45;
    v76 = v48;
    [v12 sendUploadCompleteSuccessfulAssetCollections:v73 failedAssetCollections:v13 album:v74 completionBlock:v71];

    objc_destroyWeak(&v77);
    objc_destroyWeak(buf);
  }

  v44 = *MEMORY[0x277D85DE8];
}

void __58__MSASStateMachine__sendUploadCompleteDisposition_params___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__MSASStateMachine__sendUploadCompleteDisposition_params___block_invoke_2;
  block[3] = &unk_278E914D8;
  v21 = v7;
  v11 = v7;
  objc_copyWeak(&v28, a1 + 10);
  v12 = a1[5];
  v13 = a1[6];
  v19 = a1[4];
  v14 = a1[7];
  *&v15 = v19;
  *(&v15 + 1) = v14;
  *&v16 = v12;
  *(&v16 + 1) = v13;
  v22 = v16;
  v23 = v15;
  v24 = a1[8];
  v25 = a1[9];
  v26 = v8;
  v27 = v9;
  v17 = v9;
  v18 = v8;
  dispatch_async(v10, block);

  objc_destroyWeak(&v28);
}

void __58__MSASStateMachine__sendUploadCompleteDisposition_params___block_invoke_3(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v30;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v30 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v29 + 1) + 8 * i);
        v7 = [*(a1 + 40) delegate];
        v8 = *(a1 + 40);
        v9 = *(a1 + 48);
        v10 = *(a1 + 56);
        v11 = [v8 _canceledError];
        [v7 MSASStateMachine:v8 didFinishAddingAssetCollection:v6 toAlbum:v9 info:v10 error:v11];
      }

      v3 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v3);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obja = *(a1 + 64);
  v12 = [obja countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(obja);
        }

        v16 = *(*(&v25 + 1) + 8 * j);
        v17 = [*(a1 + 40) delegate];
        v18 = *(a1 + 40);
        v19 = *(a1 + 48);
        v20 = *(a1 + 56);
        v21 = [*(a1 + 64) objectForKey:v16];
        [v17 MSASStateMachine:v18 didFinishAddingAssetCollection:v16 toAlbum:v19 info:v20 error:v21];
      }

      v13 = [obja countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v13);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __58__MSASStateMachine__sendUploadCompleteDisposition_params___block_invoke_2(uint64_t a1)
{
  v161 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 104));
    v3 = *(a1 + 32);
    v4 = NSStringFromSelector(sel__sendUploadCompleteDisposition_params_);
    LOBYTE(v3) = [WeakRetained workQueueEndCommandWithError:v3 command:v4 params:*(a1 + 40) albumGUID:0 assetCollectionGUID:0];

    if ((v3 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v95 = objc_loadWeakRetained((a1 + 104));
        v96 = [*(a1 + 32) MSVerboseDescription];
        *buf = 138543618;
        v158 = v95;
        v159 = 2114;
        v160 = v96;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to send upload complete. Error: %{public}@", buf, 0x16u);
      }

      v5 = objc_loadWeakRetained((a1 + 104));
      v6 = [v5 _model];
      [v6 beginTransaction];

      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      obj = *(a1 + 48);
      v7 = [obj countByEnumeratingWithState:&v145 objects:v156 count:16];
      if (v7)
      {
        v8 = *v146;
        do
        {
          v9 = 0;
          do
          {
            if (*v146 != v8)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v145 + 1) + 8 * v9);
            v11 = objc_loadWeakRetained((a1 + 104));
            v12 = [v11 _model];
            v13 = [v10 GUID];
            [v12 requeuePendingAssetCollectionGUID:v13];

            v14 = objc_loadWeakRetained((a1 + 104));
            [v14 _deleteAssetFilesInAssetCollection:v10];

            v15 = [*(a1 + 56) eventQueue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __58__MSASStateMachine__sendUploadCompleteDisposition_params___block_invoke_254;
            block[3] = &unk_278E911B0;
            objc_copyWeak(&v144, (a1 + 104));
            block[4] = v10;
            v141 = *(a1 + 64);
            v142 = *(a1 + 72);
            v143 = *(a1 + 32);
            dispatch_async(v15, block);

            objc_destroyWeak(&v144);
            ++v9;
          }

          while (v7 != v9);
          v7 = [obj countByEnumeratingWithState:&v145 objects:v156 count:16];
        }

        while (v7);
      }

      v138 = 0u;
      v139 = 0u;
      v136 = 0u;
      v137 = 0u;
      obja = *(a1 + 80);
      v16 = [obja countByEnumeratingWithState:&v136 objects:v155 count:16];
      if (v16)
      {
        v17 = *v137;
        do
        {
          v18 = 0;
          do
          {
            if (*v137 != v17)
            {
              objc_enumerationMutation(obja);
            }

            v19 = *(*(&v136 + 1) + 8 * v18);
            v20 = objc_loadWeakRetained((a1 + 104));
            v21 = [v20 _model];
            v22 = [v19 GUID];
            [v21 requeuePendingAssetCollectionGUID:v22];

            v23 = objc_loadWeakRetained((a1 + 104));
            [v23 _deleteAssetFilesInAssetCollection:v19];

            v24 = [*(a1 + 56) eventQueue];
            v131[0] = MEMORY[0x277D85DD0];
            v131[1] = 3221225472;
            v131[2] = __58__MSASStateMachine__sendUploadCompleteDisposition_params___block_invoke_2_255;
            v131[3] = &unk_278E911B0;
            objc_copyWeak(&v135, (a1 + 104));
            v131[4] = v19;
            v132 = *(a1 + 64);
            v133 = *(a1 + 72);
            v134 = *(a1 + 80);
            dispatch_async(v24, v131);

            objc_destroyWeak(&v135);
            ++v18;
          }

          while (v16 != v18);
          v16 = [obja countByEnumeratingWithState:&v136 objects:v155 count:16];
        }

        while (v16);
      }

      v25 = objc_loadWeakRetained((a1 + 104));
      v26 = [v25 _model];
      [v26 endTransaction];

      v27 = objc_loadWeakRetained((a1 + 104));
      v28 = [v27 _assetUploader];
      [v28 unregisterAssetCollections:*(a1 + 48)];

      v29 = objc_loadWeakRetained((a1 + 104));
      v30 = [v29 _assetUploader];
      v31 = [*(a1 + 80) allKeys];
      [v30 unregisterAssetCollections:v31];

      v32 = objc_loadWeakRetained((a1 + 104));
      [v32 workQueueDidFinishCommand];
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v33 = objc_loadWeakRetained((a1 + 104));
      *buf = 138543362;
      v158 = v33;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Successfully sent upload complete.", buf, 0xCu);
    }

    v34 = [*(a1 + 56) memberQueue];
    v130[0] = MEMORY[0x277D85DD0];
    v130[1] = 3221225472;
    v130[2] = __58__MSASStateMachine__sendUploadCompleteDisposition_params___block_invoke_256;
    v130[3] = &unk_278E926D8;
    v130[4] = *(a1 + 56);
    dispatch_barrier_sync(v34, v130);

    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v35 = *(a1 + 88);
    v36 = [v35 countByEnumeratingWithState:&v126 objects:v154 count:16];
    if (v36)
    {
      v37 = *v127;
      do
      {
        v38 = 0;
        do
        {
          if (*v127 != v37)
          {
            objc_enumerationMutation(v35);
          }

          v39 = *(*(&v126 + 1) + 8 * v38);
          v40 = objc_loadWeakRetained((a1 + 104));
          [v40 _deleteAssetFilesInAssetCollection:v39];

          ++v38;
        }

        while (v36 != v38);
        v36 = [v35 countByEnumeratingWithState:&v126 objects:v154 count:16];
      }

      while (v36);
    }

    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v41 = *(a1 + 96);
    v42 = [v41 countByEnumeratingWithState:&v122 objects:v153 count:16];
    if (v42)
    {
      v43 = *v123;
      do
      {
        v44 = 0;
        do
        {
          if (*v123 != v43)
          {
            objc_enumerationMutation(v41);
          }

          v45 = *(*(&v122 + 1) + 8 * v44);
          v46 = objc_loadWeakRetained((a1 + 104));
          [v46 _deleteAssetFilesInAssetCollection:v45];

          ++v44;
        }

        while (v42 != v44);
        v42 = [v41 countByEnumeratingWithState:&v122 objects:v153 count:16];
      }

      while (v42);
    }

    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v47 = *(a1 + 80);
    v48 = [v47 countByEnumeratingWithState:&v118 objects:v152 count:16];
    if (v48)
    {
      v49 = *v119;
      do
      {
        v50 = 0;
        do
        {
          if (*v119 != v49)
          {
            objc_enumerationMutation(v47);
          }

          v51 = *(*(&v118 + 1) + 8 * v50);
          v52 = objc_loadWeakRetained((a1 + 104));
          [v52 _deleteAssetFilesInAssetCollection:v51];

          ++v50;
        }

        while (v48 != v50);
        v48 = [v47 countByEnumeratingWithState:&v118 objects:v152 count:16];
      }

      while (v48);
    }

    v53 = [*(a1 + 56) eventQueue];
    v111[0] = MEMORY[0x277D85DD0];
    v111[1] = 3221225472;
    v111[2] = __58__MSASStateMachine__sendUploadCompleteDisposition_params___block_invoke_2_257;
    v111[3] = &unk_278E91340;
    objc_copyWeak(&v117, (a1 + 104));
    v112 = *(a1 + 88);
    v113 = *(a1 + 64);
    v114 = *(a1 + 72);
    v115 = *(a1 + 96);
    v116 = *(a1 + 80);
    dispatch_async(v53, v111);

    v54 = objc_loadWeakRetained((a1 + 104));
    v55 = [v54 _model];
    [v55 beginTransaction];

    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v56 = *(a1 + 88);
    v57 = [v56 countByEnumeratingWithState:&v107 objects:v151 count:16];
    if (v57)
    {
      v58 = *v108;
      do
      {
        v59 = 0;
        do
        {
          if (*v108 != v58)
          {
            objc_enumerationMutation(v56);
          }

          v60 = *(*(&v107 + 1) + 8 * v59);
          v61 = objc_loadWeakRetained((a1 + 104));
          v62 = [v61 _model];
          v63 = [v60 GUID];
          [v62 requeuePendingAssetCollectionGUID:v63];

          v64 = objc_loadWeakRetained((a1 + 104));
          [v64 _deleteAssetFilesInAssetCollection:v60];

          ++v59;
        }

        while (v57 != v59);
        v57 = [v56 countByEnumeratingWithState:&v107 objects:v151 count:16];
      }

      while (v57);
    }

    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v65 = *(a1 + 96);
    v66 = [v65 countByEnumeratingWithState:&v103 objects:v150 count:16];
    if (v66)
    {
      v67 = *v104;
      do
      {
        v68 = 0;
        do
        {
          if (*v104 != v67)
          {
            objc_enumerationMutation(v65);
          }

          v69 = *(*(&v103 + 1) + 8 * v68);
          v70 = objc_loadWeakRetained((a1 + 104));
          v71 = [v70 _model];
          v72 = [v69 GUID];
          [v71 requeuePendingAssetCollectionGUID:v72];

          v73 = objc_loadWeakRetained((a1 + 104));
          [v73 _deleteAssetFilesInAssetCollection:v69];

          ++v68;
        }

        while (v66 != v68);
        v66 = [v65 countByEnumeratingWithState:&v103 objects:v150 count:16];
      }

      while (v66);
    }

    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v74 = *(a1 + 80);
    v75 = [v74 countByEnumeratingWithState:&v99 objects:v149 count:16];
    if (v75)
    {
      v76 = *v100;
      do
      {
        v77 = 0;
        do
        {
          if (*v100 != v76)
          {
            objc_enumerationMutation(v74);
          }

          v78 = *(*(&v99 + 1) + 8 * v77);
          v79 = objc_loadWeakRetained((a1 + 104));
          v80 = [v79 _model];
          v81 = [v78 GUID];
          [v80 requeuePendingAssetCollectionGUID:v81];

          v82 = objc_loadWeakRetained((a1 + 104));
          [v82 _deleteAssetFilesInAssetCollection:v78];

          ++v77;
        }

        while (v75 != v77);
        v75 = [v74 countByEnumeratingWithState:&v99 objects:v149 count:16];
      }

      while (v75);
    }

    v83 = objc_loadWeakRetained((a1 + 104));
    v84 = [v83 _model];
    [v84 endTransaction];

    v85 = objc_loadWeakRetained((a1 + 104));
    v86 = [v85 _assetUploader];
    [v86 unregisterAssetCollections:*(a1 + 88)];

    v87 = objc_loadWeakRetained((a1 + 104));
    v88 = [v87 _assetUploader];
    v89 = [*(a1 + 96) allKeys];
    [v88 unregisterAssetCollections:v89];

    v90 = objc_loadWeakRetained((a1 + 104));
    v91 = [v90 _assetUploader];
    v92 = [*(a1 + 80) allKeys];
    [v91 unregisterAssetCollections:v92];

    v93 = objc_loadWeakRetained((a1 + 104));
    [v93 workQueueDidFinishCommand];

    objc_destroyWeak(&v117);
  }

  v94 = *MEMORY[0x277D85DE8];
}

void __58__MSASStateMachine__sendUploadCompleteDisposition_params___block_invoke_254(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 64));
  [v2 MSASStateMachine:v3 didFinishAddingAssetCollection:*(a1 + 32) toAlbum:*(a1 + 40) info:*(a1 + 48) error:*(a1 + 56)];
}

void __58__MSASStateMachine__sendUploadCompleteDisposition_params___block_invoke_2_255(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 64));
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = [*(a1 + 56) objectForKey:v4];
  [v2 MSASStateMachine:v3 didFinishAddingAssetCollection:v4 toAlbum:v5 info:v6 error:v7];
}

void __58__MSASStateMachine__sendUploadCompleteDisposition_params___block_invoke_2_257(uint64_t a1)
{
  v55 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = [WeakRetained daemon];
  v4 = objc_loadWeakRetained((a1 + 72));
  v5 = [v4 personID];
  [v3 didReceiveAuthSuccessForPersonID:v5];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v49;
    do
    {
      v10 = 0;
      do
      {
        if (*v49 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v48 + 1) + 8 * v10);
        v12 = objc_loadWeakRetained((a1 + 72));
        v13 = [v12 delegate];
        v14 = objc_loadWeakRetained((a1 + 72));
        [v13 MSASStateMachine:v14 didFinishAddingAssetCollection:v11 toAlbum:*(a1 + 40) info:*(a1 + 48) error:0];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v8);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = *(a1 + 56);
  v15 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v15)
  {
    v16 = v15;
    v38 = *v45;
    do
    {
      v17 = 0;
      do
      {
        if (*v45 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v44 + 1) + 8 * v17);
        v19 = objc_loadWeakRetained((a1 + 72));
        v20 = [v19 delegate];
        v21 = objc_loadWeakRetained((a1 + 72));
        v22 = *(a1 + 40);
        v23 = *(a1 + 48);
        v24 = [*(a1 + 56) objectForKey:v18];
        [v20 MSASStateMachine:v21 didFinishAddingAssetCollection:v18 toAlbum:v22 info:v23 error:v24];

        ++v17;
      }

      while (v16 != v17);
      v16 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v16);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obja = *(a1 + 64);
  v25 = [obja countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (v25)
  {
    v26 = v25;
    v39 = *v41;
    do
    {
      v27 = 0;
      do
      {
        if (*v41 != v39)
        {
          objc_enumerationMutation(obja);
        }

        v28 = *(*(&v40 + 1) + 8 * v27);
        v29 = objc_loadWeakRetained((a1 + 72));
        v30 = [v29 delegate];
        v31 = objc_loadWeakRetained((a1 + 72));
        v32 = *(a1 + 40);
        v33 = *(a1 + 48);
        v34 = [*(a1 + 64) objectForKey:v28];
        [v30 MSASStateMachine:v31 didFinishAddingAssetCollection:v28 toAlbum:v32 info:v33 error:v34];

        ++v27;
      }

      while (v26 != v27);
      v26 = [obja countByEnumeratingWithState:&v40 objects:v52 count:16];
    }

    while (v26);
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)_continueAddingAssetCollectionsDisposition:(int)a3 params:(id)a4
{
  v72 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 objectForKey:@"assetCollections"];
  v40 = self;
  v38 = [(MSASStateMachine *)self _albumForRequestFromParams:v5];
  v39 = v5;
  v41 = [v5 objectForKey:@"info"];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v6;
  v44 = [obj countByEnumeratingWithState:&v61 objects:v71 count:16];
  if (v44)
  {
    v43 = *v62;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v62 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v61 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        v10 = [v8 metadata];
        v11 = [v10 objectForKey:@"originalPaths"];

        if (v11)
        {
          v12 = [MEMORY[0x277CCAA00] defaultManager];
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v13 = v11;
          v14 = [v13 countByEnumeratingWithState:&v57 objects:v70 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v58;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v58 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                [v12 removeItemAtPath:*(*(&v57 + 1) + 8 * j) error:0];
              }

              v15 = [v13 countByEnumeratingWithState:&v57 objects:v70 count:16];
            }

            while (v15);
          }

          v18 = [v8 metadata];
          v19 = [v18 mutableCopy];

          [v19 removeObjectForKey:@"originalPaths"];
          [v8 setMetadata:v19];
        }

        objc_autoreleasePoolPop(v9);
      }

      v44 = [obj countByEnumeratingWithState:&v61 objects:v71 count:16];
    }

    while (v44);
  }

  if (a3 == 2)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v27 = obj;
    v28 = [v27 countByEnumeratingWithState:&v47 objects:v65 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v48;
      do
      {
        for (k = 0; k != v29; ++k)
        {
          if (*v48 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v47 + 1) + 8 * k);
          [(MSASStateMachine *)v40 _deleteAssetFilesInAssetCollection:v32];
          v33 = [(MSASStateMachine *)v40 eventQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __70__MSASStateMachine__continueAddingAssetCollectionsDisposition_params___block_invoke_253;
          block[3] = &unk_278E92638;
          block[4] = v40;
          block[5] = v32;
          v46 = v41;
          dispatch_async(v33, block);

          v34 = [(MSASStateMachine *)v40 _model];
          v35 = [v32 GUID];
          [v34 requeuePendingAssetCollectionGUID:v35];
        }

        v29 = [v27 countByEnumeratingWithState:&v47 objects:v65 count:16];
      }

      while (v29);
    }

    v21 = v38;
    v20 = v39;
    goto LABEL_30;
  }

  v21 = v38;
  v20 = v39;
  if (!a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v22 = [obj count];
      *buf = 138543618;
      v67 = v40;
      v68 = 2048;
      v69 = v22;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Preparing upload of assets for %ld asset collections.", buf, 0x16u);
    }

    v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(obj, "count")}];
    v24 = [MEMORY[0x277CBEB38] dictionary];
    v25 = [(MSASStateMachine *)v40 _assetUploader];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __70__MSASStateMachine__continueAddingAssetCollectionsDisposition_params___block_invoke;
    v51[3] = &unk_278E914B0;
    v51[4] = v40;
    v52 = obj;
    v53 = v23;
    v54 = v24;
    v55 = v38;
    v56 = v41;
    v26 = v24;
    v27 = v23;
    [v25 registerAssetCollections:v52 completionBlock:v51];

LABEL_30:
  }

  v36 = *MEMORY[0x277D85DE8];
}

void __70__MSASStateMachine__continueAddingAssetCollectionsDisposition_params___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__MSASStateMachine__continueAddingAssetCollectionsDisposition_params___block_invoke_2;
  block[3] = &unk_278E91008;
  v9 = a1[5];
  v10 = v3;
  v11 = a1[6];
  v5 = a1[7];
  v6 = a1[4];
  v12 = v5;
  v13 = v6;
  v14 = a1[8];
  v15 = a1[9];
  v7 = v3;
  dispatch_async(v4, block);
}

void __70__MSASStateMachine__continueAddingAssetCollectionsDisposition_params___block_invoke_253(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v2 _canceledError];
  [v6 MSASStateMachine:v2 didFinishAddingAssetCollection:v3 toAlbum:0 info:v4 error:v5];
}

void __70__MSASStateMachine__continueAddingAssetCollectionsDisposition_params___block_invoke_2(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count])
  {
    v2 = 0;
    do
    {
      v3 = [*(a1 + 32) objectAtIndex:v2];
      v4 = [*(a1 + 40) objectAtIndex:v2];
      v5 = [MEMORY[0x277CBEB68] null];

      if (v4 == v5)
      {
        [*(a1 + 48) addObject:v3];
      }

      else
      {
        [*(a1 + 56) setObject:v4 forKey:v3];
      }

      ++v2;
    }

    while (v2 < [*(a1 + 32) count]);
  }

  if ([*(a1 + 56) count])
  {
    v6 = [*(a1 + 64) _model];
    [v6 beginTransaction];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v7 = *(a1 + 56);
    v8 = [v7 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v33;
      do
      {
        v11 = 0;
        do
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v32 + 1) + 8 * v11);
          v13 = [*(a1 + 64) _model];
          v14 = [v12 GUID];
          [v13 requeuePendingAssetCollectionGUID:v14];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v9);
    }

    v15 = [*(a1 + 64) _model];
    [v15 endTransaction];

    v16 = [MEMORY[0x277CBEB38] dictionary];
    [v16 setObject:*(a1 + 56) forKey:@"failedAssetCollectionsAndErrors"];
    v17 = *(a1 + 72);
    if (v17)
    {
      [v16 setObject:v17 forKey:@"album"];
    }

    v18 = *(a1 + 80);
    if (v18)
    {
      [v16 setObject:v18 forKey:@"info"];
    }

    v19 = [*(a1 + 64) _model];
    v20 = NSStringFromSelector(sel__sendUploadCompleteDisposition_params_);
    v21 = [*(a1 + 64) personID];
    v22 = [*(a1 + 72) GUID];
    [v19 enqueueCommand:v20 params:v16 personID:v21 albumGUID:v22 assetCollectionGUID:0];

    [*(a1 + 64) workQueueRetryOutstandingActivities];
  }

  if ([*(a1 + 48) count])
  {
    v23 = [MEMORY[0x277CBEB38] dictionary];
    [v23 setObject:*(a1 + 48) forKey:@"successfulAssetCollections"];
    v24 = *(a1 + 72);
    if (v24)
    {
      [v23 setObject:v24 forKey:@"album"];
    }

    v25 = *(a1 + 80);
    if (v25)
    {
      [v23 setObject:v25 forKey:@"info"];
    }

    v26 = *(a1 + 64);
    v27 = NSStringFromSelector(sel__sendPutAssetCollectionsDisposition_params_);
    v28 = [*(a1 + 64) personID];
    v29 = [*(a1 + 72) GUID];
    [v26 workQueueDidFinishCommandByReplacingCurrentCommandWithCommand:v27 params:v23 personID:v28 albumGUID:v29 assetCollectionGUID:0];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(a1 + 64);
      *buf = 138543362;
      v37 = v30;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: No valid asset collections to send to the metadata server.", buf, 0xCu);
    }

    [*(a1 + 64) workQueueDidFinishCommand];
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)continueAddingAssetCollections:(id)a3 skipAssetCollections:(id)a4 toAlbum:(id)a5 info:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(MSASStateMachine *)self _createCopiedAssetsInAssetCollections:v10];
  v15 = [(MSASStateMachine *)self workQueue];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __85__MSASStateMachine_continueAddingAssetCollections_skipAssetCollections_toAlbum_info___block_invoke;
  v21[3] = &unk_278E92048;
  v22 = v11;
  v23 = self;
  v24 = v10;
  v25 = v14;
  v26 = v12;
  v27 = v13;
  v16 = v13;
  v17 = v12;
  v18 = v14;
  v19 = v10;
  v20 = v11;
  dispatch_async(v15, v21);
}

void __85__MSASStateMachine_continueAddingAssetCollections_skipAssetCollections_toAlbum_info___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v2 = *(a1 + 40);
      v3 = [*(a1 + 32) count];
      *buf = 138543618;
      v33 = v2;
      v34 = 2048;
      v35 = v3;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Skipping publication of %ld asset collections.", buf, 0x16u);
    }

    [*(a1 + 40) _deleteAssetFilesInAssetCollections:*(a1 + 48)];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v4 = *(a1 + 32);
    v5 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v28;
      do
      {
        v8 = 0;
        do
        {
          if (*v28 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v27 + 1) + 8 * v8);
          v10 = [*(a1 + 40) _model];
          v11 = [v9 GUID];
          [v10 requeuePendingAssetCollectionGUID:v11];

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v6);
    }
  }

  v12 = [MEMORY[0x277CBEB38] dictionary];
  v13 = v12;
  if (*(a1 + 48))
  {
    [v12 setObject:*(a1 + 56) forKey:@"assetCollections"];
  }

  v14 = *(a1 + 64);
  if (v14)
  {
    [v13 setObject:v14 forKey:@"album"];
  }

  v15 = *(a1 + 72);
  if (v15)
  {
    [v13 setObject:v15 forKey:@"info"];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v16 = *(a1 + 40);
    v17 = [*(a1 + 48) count];
    *buf = 138543618;
    v33 = v16;
    v34 = 2048;
    v35 = v17;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Scheduling addition of %ld asset collections.", buf, 0x16u);
  }

  v18 = *(a1 + 40);
  if (*(v18 + 8) == 2)
  {
    v19 = *(v18 + 24);
    v20 = NSStringFromSelector(sel__addAssetCollectionsDisposition_params_);
    LOBYTE(v19) = [v19 isEqualToString:v20];

    if ((v19 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v26 = *(a1 + 40);
      *buf = 138543362;
      v33 = v26;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Not expecting derivatives to arrive from plugin. Proceeding anyway.", buf, 0xCu);
    }
  }

  v21 = *(a1 + 40);
  v22 = NSStringFromSelector(sel__continueAddingAssetCollectionsDisposition_params_);
  v23 = [*(a1 + 40) personID];
  v24 = [*(a1 + 64) GUID];
  [v21 workQueueDidFinishCommandByReplacingCurrentCommandWithCommand:v22 params:v13 personID:v23 albumGUID:v24 assetCollectionGUID:0];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_addAssetCollectionsDisposition:(int)a3 params:(id)a4
{
  v85 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [v6 objectForKey:@"assetCollections"];
  v8 = [(MSASStateMachine *)self _albumForRequestFromParams:v6];
  v9 = [v6 objectForKey:@"info"];
  if (a3 == 2)
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v19 = v7;
    v20 = [v19 countByEnumeratingWithState:&v57 objects:v78 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v58;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v58 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [(MSASStateMachine *)self _deleteAssetFilesInAssetCollection:*(*(&v57 + 1) + 8 * i)];
        }

        v21 = [v19 countByEnumeratingWithState:&v57 objects:v78 count:16];
      }

      while (v21);
    }

    v24 = [(MSASStateMachine *)self eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__MSASStateMachine__addAssetCollectionsDisposition_params___block_invoke_3;
    block[3] = &unk_278E92638;
    v54 = v19;
    v55 = self;
    v56 = v9;
    dispatch_async(v24, block);
  }

  else if (!a3)
  {
    v10 = [v6 objectForKey:@"commandRetryCount"];
    v11 = [v10 intValue];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      v82 = self;
      v83 = 2048;
      *v84 = [v7 count];
      *&v84[8] = 2114;
      *&v84[10] = v8;
      *&v84[18] = 1024;
      *&v84[20] = v11;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Adding %ld asset collections to album %{public}@ retry %d.", buf, 0x26u);
    }

    self->_startOfUpload = CFAbsoluteTimeGetCurrent();
    v12 = [(MSASStateMachine *)self protocol];
    v13 = [v12 stopHandlerBlock];
    [(MSASStateMachine *)self _setStopHandlerBlock:v13];

    if (v11 < 4)
    {
      v45 = self;
      v46 = v9;
      v47 = v8;
      v48 = v7;
      v49 = v6;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      obj = v7;
      v51 = [obj countByEnumeratingWithState:&v69 objects:v80 count:16];
      if (v51)
      {
        v50 = *v70;
        do
        {
          for (j = 0; j != v51; ++j)
          {
            if (*v70 != v50)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v69 + 1) + 8 * j);
            v27 = objc_autoreleasePoolPush();
            v28 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(obj, "count")}];
            v65 = 0u;
            v66 = 0u;
            v67 = 0u;
            v68 = 0u;
            v29 = [v26 assets];
            v30 = [v29 countByEnumeratingWithState:&v65 objects:v79 count:16];
            if (v30)
            {
              v31 = v30;
              v32 = *v66;
              do
              {
                for (k = 0; k != v31; ++k)
                {
                  if (*v66 != v32)
                  {
                    objc_enumerationMutation(v29);
                  }

                  v34 = *(*(&v65 + 1) + 8 * k);
                  v35 = [v34 path];

                  if (v35)
                  {
                    v36 = [v34 path];
                    [v28 addObject:v36];
                  }
                }

                v31 = [v29 countByEnumeratingWithState:&v65 objects:v79 count:16];
              }

              while (v31);
            }

            if ([v28 count])
            {
              [v26 setMetadataValue:v28 forKey:@"originalPaths"];
            }

            objc_autoreleasePoolPop(v27);
          }

          v51 = [obj countByEnumeratingWithState:&v69 objects:v80 count:16];
        }

        while (v51);
      }

      v37 = [(MSASStateMachine *)v45 eventQueue];
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __59__MSASStateMachine__addAssetCollectionsDisposition_params___block_invoke_2;
      v61[3] = &unk_278E92660;
      v61[4] = v45;
      v62 = obj;
      v8 = v47;
      v63 = v47;
      v9 = v46;
      v64 = v46;
      dispatch_async(v37, v61);

      v7 = v48;
      v6 = v49;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544130;
        v82 = self;
        v83 = 1024;
        *v84 = v11;
        *&v84[4] = 2114;
        *&v84[6] = v7;
        *&v84[14] = 2114;
        *&v84[16] = v8;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Retried %d times to add asset collections %{public}@ to album %{public}@.", buf, 0x26u);
      }

      v14 = [(MSASStateMachine *)self _assetCollectionFailedError];
      if ([v7 count] < 2)
      {
        [(MSASModelBase *)self->_model beginTransaction];
        v38 = [v7 firstObject];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v82 = self;
          v83 = 2114;
          *v84 = v38;
          *&v84[8] = 2114;
          *&v84[10] = v8;
          _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Giving up uploading asset collections %{public}@ to album %{public}@.", buf, 0x20u);
        }

        model = self->_model;
        v40 = [v38 GUID];
        [(MSASPersonModel *)model requeuePendingAssetCollectionGUID:v40];

        [(MSASStateMachine *)self _deleteAssetFilesInAssetCollection:v38];
        v41 = [(MSASStateMachine *)self eventQueue];
        v73[0] = MEMORY[0x277D85DD0];
        v73[1] = 3221225472;
        v73[2] = __59__MSASStateMachine__addAssetCollectionsDisposition_params___block_invoke;
        v73[3] = &unk_278E92688;
        v73[4] = self;
        v74 = v38;
        v75 = v8;
        v76 = v9;
        v77 = v14;
        v17 = v38;
        dispatch_async(v41, v73);

        assetUploader = self->_assetUploader;
        v43 = [MEMORY[0x277CBEA60] arrayWithObject:v17];
        [(MSASAssetUploader *)assetUploader unregisterAssetCollections:v43];

        [(MSASModelBase *)self->_model endTransaction];
      }

      else
      {
        v15 = [v7 count] >> 1;
        v16 = [v7 count] - v15;
        v17 = [v7 subarrayWithRange:{0, v15}];
        v18 = [v7 subarrayWithRange:{v15, v16}];
        [(MSASStateMachine *)self addAssetCollections:v17 toAlbum:v8 info:v9];
        [(MSASStateMachine *)self addAssetCollections:v18 toAlbum:v8 info:v9];
      }

      [(MSASStateMachine *)self workQueueDidFinishCommand];
    }
  }

  v44 = *MEMORY[0x277D85DE8];
}

void __59__MSASStateMachine__addAssetCollectionsDisposition_params___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) didFinishAddingAssetCollection:*(a1 + 40) toAlbum:*(a1 + 48) info:*(a1 + 56) error:*(a1 + 64)];
}

void __59__MSASStateMachine__addAssetCollectionsDisposition_params___block_invoke_2(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v2 derivativeSpecifications];
  [v6 MSASStateMachine:v2 didRequestAssetsForAddingAssetCollections:v3 inAlbum:v4 specifications:v5 info:*(a1 + 56)];
}

void __59__MSASStateMachine__addAssetCollectionsDisposition_params___block_invoke_3(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [*(a1 + 40) delegate];
        v9 = *(a1 + 40);
        v10 = *(a1 + 48);
        v11 = [v9 _canceledError];
        [v8 MSASStateMachine:v9 didFinishAddingAssetCollection:v7 toAlbum:0 info:v10 error:v11];
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)addAssetCollections:(id)a3 toAlbum:(id)a4 info:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MSASStateMachine *)self _createCopiedAssetsInAssetCollections:v8];
  v12 = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__MSASStateMachine_addAssetCollections_toAlbum_info___block_invoke;
  block[3] = &unk_278E92688;
  v18 = v8;
  v19 = self;
  v20 = v9;
  v21 = v11;
  v22 = v10;
  v13 = v10;
  v14 = v11;
  v15 = v9;
  v16 = v8;
  dispatch_async(v12, block);
}

void __53__MSASStateMachine_addAssetCollections_toAlbum_info___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    do
    {
      v6 = 0;
      do
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v20 + 1) + 8 * v6);
        v8 = [*(a1 + 40) _model];
        v9 = [v7 GUID];
        v10 = [*(a1 + 48) GUID];
        [v8 addPendingAssetCollectionGUID:v9 albumGUID:v10];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v4);
  }

  v11 = [MEMORY[0x277CBEB38] dictionary];
  v12 = v11;
  if (*(a1 + 32))
  {
    [v11 setObject:*(a1 + 56) forKey:@"assetCollections"];
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    [v12 setObject:v13 forKey:@"album"];
  }

  v14 = *(a1 + 64);
  if (v14)
  {
    [v12 setObject:v14 forKey:@"info"];
  }

  v15 = [*(a1 + 40) _model];
  v16 = NSStringFromSelector(sel__addAssetCollectionsDisposition_params_);
  v17 = [*(a1 + 40) personID];
  v18 = [*(a1 + 48) GUID];
  [v15 enqueueCommand:v16 params:v12 personID:v17 albumGUID:v18 assetCollectionGUID:0];

  [*(a1 + 40) workQueueRetryOutstandingActivities];
  v19 = *MEMORY[0x277D85DE8];
}

- (id)_createCopiedAssetsInAssetCollections:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v27 = [MEMORY[0x277CCAA00] defaultManager];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v3;
  v23 = [obj countByEnumeratingWithState:&v35 objects:v48 count:16];
  if (v23)
  {
    v21 = *v36;
    do
    {
      v4 = 0;
      do
      {
        if (*v36 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v4;
        v5 = [MSASAssetCollection assetCollectionWithAssetCollection:*(*(&v35 + 1) + 8 * v4)];
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v24 = v5;
        v26 = [v5 assets];
        v6 = [v26 countByEnumeratingWithState:&v31 objects:v47 count:16];
        if (v6)
        {
          v7 = v6;
          v29 = *v32;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v32 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v9 = *(*(&v31 + 1) + 8 * i);
              v10 = [v9 path];
              if (v10)
              {
                v11 = [(MSASStateMachine *)self personID];
                v12 = MSPathAlbumSharingAssetsDirForPersonID(v11);
                v13 = [MEMORY[0x277CCACA8] MSMakeUUID];
                v14 = [v12 stringByAppendingPathComponent:v13];
                v15 = [v10 pathExtension];
                v16 = [v14 stringByAppendingPathExtension:v15];

                v30 = 0;
                LODWORD(v14) = [v27 copyItemAtPath:v10 toPath:v16 error:&v30];
                v17 = v30;
                if (v14)
                {
                  [v9 setPath:v16];
                }

                else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  *buf = 138544130;
                  v40 = self;
                  v41 = 2112;
                  v42 = v10;
                  v43 = 2112;
                  v44 = v16;
                  v45 = 2114;
                  v46 = v17;
                  _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Cannot copy file from path %@ to %@. Error: %{public}@", buf, 0x2Au);
                }
              }
            }

            v7 = [v26 countByEnumeratingWithState:&v31 objects:v47 count:16];
          }

          while (v7);
        }

        [v22 addObject:v24];
        v4 = v25 + 1;
      }

      while (v25 + 1 != v23);
      v23 = [obj countByEnumeratingWithState:&v35 objects:v48 count:16];
    }

    while (v23);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v22;
}

- (void)_updateAlbumDisposition:(int)a3 params:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(MSASStateMachine *)self _albumForRequestFromParams:v6];
  v8 = [v6 objectForKey:@"info"];
  if (a3 == 2)
  {
    v15 = [(MSASStateMachine *)self eventQueue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __51__MSASStateMachine__updateAlbumDisposition_params___block_invoke_3;
    v17[3] = &unk_278E92638;
    v17[4] = self;
    v18 = v7;
    v19 = v8;
    dispatch_async(v15, v17);
  }

  else if (!a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v26 = self;
      v27 = 2114;
      v28 = v7;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Updating album: %{public}@", buf, 0x16u);
    }

    v9 = [(MSASStateMachine *)self protocol];
    v10 = [v9 stopHandlerBlock];
    [(MSASStateMachine *)self _setStopHandlerBlock:v10];

    objc_initWeak(buf, self);
    v11 = [(MSASStateMachine *)self delegate];
    v12 = [v7 GUID];
    v13 = [v11 MSASStateMachineDidRequestAlbumURLStringForAlbumWithGUID:v12 info:v8];

    v14 = [(MSASStateMachine *)self protocol];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __51__MSASStateMachine__updateAlbumDisposition_params___block_invoke;
    v20[3] = &unk_278E911E0;
    v20[4] = self;
    objc_copyWeak(&v24, buf);
    v21 = v6;
    v22 = v7;
    v23 = v8;
    [v14 updateAlbum:v22 albumURLString:v13 completionBlock:v20];

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __51__MSASStateMachine__updateAlbumDisposition_params___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__MSASStateMachine__updateAlbumDisposition_params___block_invoke_2;
  block[3] = &unk_278E91340;
  v13 = v3;
  v5 = v3;
  objc_copyWeak(&v16, a1 + 8);
  v6 = a1[5];
  v7 = a1[6];
  v11 = a1[4];
  v8 = a1[7];
  *&v9 = v11;
  *(&v9 + 1) = v8;
  *&v10 = v6;
  *(&v10 + 1) = v7;
  v14 = v10;
  v15 = v9;
  dispatch_async(v4, block);

  objc_destroyWeak(&v16);
}

void __51__MSASStateMachine__updateAlbumDisposition_params___block_invoke_3(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v2 _canceledError];
  [v6 MSASStateMachine:v2 didFinishUpdatingAlbum:v3 info:v4 error:v5];
}

void __51__MSASStateMachine__updateAlbumDisposition_params___block_invoke_2(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    v3 = [WeakRetained workQueueEndCommandWithError:*(a1 + 32) command:0 params:*(a1 + 40) albumGUID:0 assetCollectionGUID:0];

    if ((v3 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v12 = objc_loadWeakRetained((a1 + 72));
        v13 = *(a1 + 48);
        v14 = [*(a1 + 32) MSVerboseDescription];
        *buf = 138543874;
        v27 = v12;
        v28 = 2114;
        v29 = v13;
        v30 = 2114;
        v31 = v14;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to update album %{public}@. Error: %{public}@", buf, 0x20u);
      }

      v4 = [*(a1 + 56) eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __51__MSASStateMachine__updateAlbumDisposition_params___block_invoke_239;
      block[3] = &unk_278E912C8;
      objc_copyWeak(&v25, (a1 + 72));
      v22 = *(a1 + 48);
      v23 = *(a1 + 64);
      v24 = *(a1 + 32);
      dispatch_async(v4, block);

      v5 = objc_loadWeakRetained((a1 + 72));
      [v5 workQueueDidFinishCommand];

      objc_destroyWeak(&v25);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_loadWeakRetained((a1 + 72));
      v7 = *(a1 + 48);
      *buf = 138543618;
      v27 = v6;
      v28 = 2114;
      v29 = v7;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully updated album %{public}@", buf, 0x16u);
    }

    v8 = [*(a1 + 56) memberQueue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __51__MSASStateMachine__updateAlbumDisposition_params___block_invoke_240;
    v20[3] = &unk_278E926D8;
    v20[4] = *(a1 + 56);
    dispatch_barrier_sync(v8, v20);

    v9 = [*(a1 + 56) eventQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __51__MSASStateMachine__updateAlbumDisposition_params___block_invoke_2_241;
    v15[3] = &unk_278E912C8;
    objc_copyWeak(&v19, (a1 + 72));
    v16 = *(a1 + 48);
    v17 = *(a1 + 64);
    v18 = *(a1 + 32);
    dispatch_async(v9, v15);

    v10 = objc_loadWeakRetained((a1 + 72));
    [v10 workQueueDidFinishCommand];

    objc_destroyWeak(&v19);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __51__MSASStateMachine__updateAlbumDisposition_params___block_invoke_239(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 56));
  [v2 MSASStateMachine:v3 didFinishUpdatingAlbum:*(a1 + 32) info:*(a1 + 40) error:*(a1 + 48)];
}

void __51__MSASStateMachine__updateAlbumDisposition_params___block_invoke_2_241(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained daemon];
  v4 = objc_loadWeakRetained((a1 + 56));
  v5 = [v4 personID];
  [v3 didReceiveAuthSuccessForPersonID:v5];

  v8 = objc_loadWeakRetained((a1 + 56));
  v6 = [v8 delegate];
  v7 = objc_loadWeakRetained((a1 + 56));
  [v6 MSASStateMachine:v7 didFinishUpdatingAlbum:*(a1 + 32) info:*(a1 + 40) error:*(a1 + 48)];
}

- (void)updateAlbum:(id)a3 updateAlbumFlags:(int)a4 info:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(MSASStateMachine *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__MSASStateMachine_updateAlbum_updateAlbumFlags_info___block_invoke;
  v13[3] = &unk_278E91D70;
  v14 = v8;
  v15 = v9;
  v17 = a4;
  v16 = self;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

void __54__MSASStateMachine_updateAlbum_updateAlbumFlags_info___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = *(a1 + 32);
  v10 = v2;
  if (v3)
  {
    [v2 setObject:v3 forKey:@"album"];
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    [v10 setObject:v4 forKey:@"info"];
  }

  v5 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 56)];
  [v10 setObject:v5 forKey:@"albumFlags"];

  v6 = [*(a1 + 48) _model];
  v7 = NSStringFromSelector(sel__updateAlbumDisposition_params_);
  v8 = [*(a1 + 48) personID];
  v9 = [*(a1 + 32) GUID];
  [v6 enqueueCommand:v7 params:v10 personID:v8 albumGUID:v9 assetCollectionGUID:0];

  [*(a1 + 48) workQueueRetryOutstandingActivities];
}

- (void)_createAlbumDisposition:(int)a3 params:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(MSASStateMachine *)self _albumForRequestFromParams:v6];
  v8 = [v6 objectForKey:@"info"];
  if (a3 == 2)
  {
    v12 = [(MSASStateMachine *)self eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__MSASStateMachine__createAlbumDisposition_params___block_invoke_3;
    block[3] = &unk_278E92638;
    block[4] = self;
    v15 = v7;
    v16 = v8;
    dispatch_async(v12, block);
  }

  else if (!a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v22 = self;
      v23 = 2114;
      v24 = v7;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Creating album: %{public}@", buf, 0x16u);
    }

    v9 = [(MSASStateMachine *)self protocol];
    v10 = [v9 stopHandlerBlock];
    [(MSASStateMachine *)self _setStopHandlerBlock:v10];

    objc_initWeak(buf, self);
    v11 = [(MSASStateMachine *)self protocol];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __51__MSASStateMachine__createAlbumDisposition_params___block_invoke;
    v17[3] = &unk_278E91468;
    v17[4] = self;
    objc_copyWeak(&v20, buf);
    v18 = v7;
    v19 = v8;
    [v11 createAlbum:v18 completionBlock:v17];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __51__MSASStateMachine__createAlbumDisposition_params___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__MSASStateMachine__createAlbumDisposition_params___block_invoke_2;
  block[3] = &unk_278E913F0;
  v17 = v7;
  v11 = v7;
  objc_copyWeak(&v23, a1 + 7);
  v12 = a1[5];
  v13 = a1[4];
  v18 = v12;
  v19 = v13;
  v20 = a1[6];
  v21 = v8;
  v22 = v9;
  v14 = v9;
  v15 = v8;
  dispatch_async(v10, block);

  objc_destroyWeak(&v23);
}

void __51__MSASStateMachine__createAlbumDisposition_params___block_invoke_3(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v2 _canceledError];
  [v6 MSASStateMachine:v2 didFinishCreatingAlbum:v3 info:v4 error:v5];
}

void __51__MSASStateMachine__createAlbumDisposition_params___block_invoke_2(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 80));
    v3 = [WeakRetained workQueueEndCommandWithError:*(a1 + 32) command:0 params:0 albumGUID:0 assetCollectionGUID:0];

    if ((v3 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v12 = objc_loadWeakRetained((a1 + 80));
        v13 = *(a1 + 40);
        v14 = [*(a1 + 32) MSVerboseDescription];
        *buf = 138543874;
        v27 = v12;
        v28 = 2114;
        v29 = v13;
        v30 = 2114;
        v31 = v14;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to create album %{public}@. Error: %{public}@", buf, 0x20u);
      }

      v4 = [*(a1 + 48) eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __51__MSASStateMachine__createAlbumDisposition_params___block_invoke_233;
      block[3] = &unk_278E912C8;
      objc_copyWeak(&v25, (a1 + 80));
      v22 = *(a1 + 40);
      v23 = *(a1 + 56);
      v24 = *(a1 + 32);
      dispatch_async(v4, block);

      v5 = objc_loadWeakRetained((a1 + 80));
      [v5 workQueueDidFinishCommand];

      objc_destroyWeak(&v25);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = objc_loadWeakRetained((a1 + 80));
      v7 = *(a1 + 40);
      *buf = 138543618;
      v27 = v6;
      v28 = 2114;
      v29 = v7;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Successfully created album %{public}@", buf, 0x16u);
    }

    v8 = [*(a1 + 48) memberQueue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __51__MSASStateMachine__createAlbumDisposition_params___block_invoke_234;
    v20[3] = &unk_278E926D8;
    v20[4] = *(a1 + 48);
    dispatch_barrier_sync(v8, v20);

    [*(a1 + 40) setCtag:*(a1 + 64)];
    [*(a1 + 40) setClientOrgKey:*(a1 + 72)];
    v9 = [*(a1 + 48) eventQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __51__MSASStateMachine__createAlbumDisposition_params___block_invoke_2_235;
    v15[3] = &unk_278E912C8;
    objc_copyWeak(&v19, (a1 + 80));
    v16 = *(a1 + 40);
    v17 = *(a1 + 56);
    v18 = *(a1 + 32);
    dispatch_async(v9, v15);

    v10 = objc_loadWeakRetained((a1 + 80));
    [v10 workQueueDidFinishCommand];

    objc_destroyWeak(&v19);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __51__MSASStateMachine__createAlbumDisposition_params___block_invoke_233(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 56));
  [v2 MSASStateMachine:v3 didFinishCreatingAlbum:*(a1 + 32) info:*(a1 + 40) error:*(a1 + 48)];
}

void __51__MSASStateMachine__createAlbumDisposition_params___block_invoke_2_235(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained daemon];
  v4 = objc_loadWeakRetained((a1 + 56));
  v5 = [v4 personID];
  [v3 didReceiveAuthSuccessForPersonID:v5];

  v8 = objc_loadWeakRetained((a1 + 56));
  v6 = [v8 delegate];
  v7 = objc_loadWeakRetained((a1 + 56));
  [v6 MSASStateMachine:v7 didFinishCreatingAlbum:*(a1 + 32) info:*(a1 + 40) error:*(a1 + 48)];
}

- (void)createAlbum:(id)a3 info:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__MSASStateMachine_createAlbum_info___block_invoke;
  block[3] = &unk_278E92638;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __37__MSASStateMachine_createAlbum_info___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = *(a1 + 32);
  v9 = v2;
  if (v3)
  {
    [v2 setObject:v3 forKey:@"album"];
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    [v9 setObject:v4 forKey:@"info"];
  }

  v5 = [*(a1 + 48) _model];
  v6 = NSStringFromSelector(sel__createAlbumDisposition_params_);
  v7 = [*(a1 + 48) personID];
  v8 = [*(a1 + 32) GUID];
  [v5 enqueueCommand:v6 params:v9 personID:v7 albumGUID:v8 assetCollectionGUID:0];

  [*(a1 + 48) workQueueRetryOutstandingActivities];
}

- (void)_deleteCommentDisposition:(int)a3 params:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v19 = [v6 objectForKey:@"comment"];
  v7 = [v6 objectForKey:@"assetCollection"];
  v8 = [(MSASStateMachine *)self _albumForRequestFromParams:v6];
  v9 = [v6 objectForKey:@"info"];
  v10 = [v6 objectForKey:@"error"];
  v11 = v10;
  if (a3 == 2)
  {
    v13 = [(MSASStateMachine *)self eventQueue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __53__MSASStateMachine__deleteCommentDisposition_params___block_invoke_2_230;
    v20[3] = &unk_278E92688;
    v20[4] = self;
    v21 = v19;
    v22 = v7;
    v23 = v8;
    v24 = v9;
    dispatch_async(v13, v20);
  }

  else if (!a3)
  {
    if (v10)
    {
      v12 = [(MSASStateMachine *)self eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __53__MSASStateMachine__deleteCommentDisposition_params___block_invoke;
      block[3] = &unk_278E92048;
      block[4] = self;
      v33 = v19;
      v34 = v7;
      v35 = v8;
      v36 = v9;
      v37 = v11;
      dispatch_async(v12, block);

      [(MSASStateMachine *)self workQueueDidFinishCommand];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544130;
        v39 = self;
        v40 = 2114;
        v41 = v19;
        v42 = 2114;
        v43 = v7;
        v44 = 2114;
        v45 = v8;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Deleting comment %{public}@ from asset collection %{public}@ in album %{public}@.", buf, 0x2Au);
      }

      objc_initWeak(buf, self);
      v14 = [(MSASStateMachine *)self delegate];
      v15 = [v8 GUID];
      v16 = [v14 MSASStateMachineDidRequestAlbumURLStringForAlbumWithGUID:v15 info:v9];

      v17 = [(MSASStateMachine *)self protocol];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __53__MSASStateMachine__deleteCommentDisposition_params___block_invoke_227;
      v25[3] = &unk_278E91440;
      v25[4] = self;
      objc_copyWeak(&v31, buf);
      v26 = v6;
      v27 = v8;
      v28 = v7;
      v29 = v19;
      v30 = v9;
      [v17 deleteComment:v29 fromAssetCollection:v28 inAlbum:v27 albumURLString:v16 completionBlock:v25];

      objc_destroyWeak(&v31);
      objc_destroyWeak(buf);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __53__MSASStateMachine__deleteCommentDisposition_params___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) didFinishDeletingComment:*(a1 + 40) inAssetCollection:*(a1 + 48) inAlbum:*(a1 + 56) info:*(a1 + 64) error:*(a1 + 72)];
}

void __53__MSASStateMachine__deleteCommentDisposition_params___block_invoke_227(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] workQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__MSASStateMachine__deleteCommentDisposition_params___block_invoke_2;
  v12[3] = &unk_278E91268;
  v13 = v3;
  v5 = v3;
  objc_copyWeak(&v18, a1 + 10);
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  *&v10 = v8;
  *(&v10 + 1) = v9;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v14 = v11;
  v15 = v10;
  v16 = a1[4];
  v17 = a1[9];
  dispatch_async(v4, v12);

  objc_destroyWeak(&v18);
}

void __53__MSASStateMachine__deleteCommentDisposition_params___block_invoke_2_230(uint64_t a1)
{
  v8 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = [v2 _canceledError];
  [v8 MSASStateMachine:v2 didFinishDeletingComment:v3 inAssetCollection:v4 inAlbum:v5 info:v6 error:v7];
}

void __53__MSASStateMachine__deleteCommentDisposition_params___block_invoke_2(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 88));
      v18 = *(a1 + 56);
      v17 = *(a1 + 64);
      v19 = *(a1 + 48);
      *buf = 138544130;
      v41 = WeakRetained;
      v42 = 2114;
      v43 = v17;
      v44 = 2114;
      v45 = v18;
      v46 = 2114;
      v47 = v19;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Successfully deleted comment %{public}@ from asset collection %{public}@ in album %{public}@.", buf, 0x2Au);
    }

    v20 = [*(a1 + 72) eventQueue];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __53__MSASStateMachine__deleteCommentDisposition_params___block_invoke_229;
    v27[3] = &unk_278E911B0;
    v9 = &v32;
    objc_copyWeak(&v32, (a1 + 88));
    v28 = *(a1 + 64);
    v29 = *(a1 + 56);
    v30 = *(a1 + 48);
    v31 = *(a1 + 80);
    dispatch_async(v20, v27);

    v15 = objc_loadWeakRetained((a1 + 88));
    [v15 workQueueDidFinishCommand];
    v11 = &v28;
    v12 = &v29;
    v13 = &v30;
    v14 = &v31;
    goto LABEL_9;
  }

  v2 = objc_loadWeakRetained((a1 + 88));
  v3 = *(a1 + 32);
  v4 = NSStringFromSelector(sel__deleteCommentDisposition_params_);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) GUID];
  v7 = [*(a1 + 56) GUID];
  LOBYTE(v3) = [v2 workQueueEndCommandWithError:v3 command:v4 params:v5 albumGUID:v6 assetCollectionGUID:v7];

  if ((v3 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v22 = objc_loadWeakRetained((a1 + 88));
      v23 = *(a1 + 56);
      v24 = *(a1 + 64);
      v25 = *(a1 + 48);
      v26 = [*(a1 + 32) MSVerboseDescription];
      *buf = 138544386;
      v41 = v22;
      v42 = 2114;
      v43 = v24;
      v44 = 2114;
      v45 = v23;
      v46 = 2114;
      v47 = v25;
      v48 = 2114;
      v49 = v26;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to delete comment %{public}@ from asset collection %{public}@ in album %{public}@. Error: %{public}@", buf, 0x34u);
    }

    v8 = [*(a1 + 72) eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__MSASStateMachine__deleteCommentDisposition_params___block_invoke_228;
    block[3] = &unk_278E91340;
    v9 = &v39;
    objc_copyWeak(&v39, (a1 + 88));
    v34 = *(a1 + 64);
    v35 = *(a1 + 56);
    v36 = *(a1 + 48);
    v37 = *(a1 + 80);
    v38 = *(a1 + 32);
    dispatch_async(v8, block);

    v10 = objc_loadWeakRetained((a1 + 88));
    [v10 workQueueDidFinishCommand];

    v11 = &v34;
    v12 = &v35;
    v13 = &v36;
    v14 = &v37;
    v15 = v38;
LABEL_9:

    objc_destroyWeak(v9);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __53__MSASStateMachine__deleteCommentDisposition_params___block_invoke_228(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 72));
  [v2 MSASStateMachine:v3 didFinishDeletingComment:*(a1 + 32) inAssetCollection:*(a1 + 40) inAlbum:*(a1 + 48) info:*(a1 + 56) error:*(a1 + 64)];
}

void __53__MSASStateMachine__deleteCommentDisposition_params___block_invoke_229(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 64));
  [v2 MSASStateMachine:v3 didFinishDeletingComment:*(a1 + 32) inAssetCollection:*(a1 + 40) inAlbum:*(a1 + 48) info:*(a1 + 56) error:0];
}

- (void)deleteComments:(id)a3 inAssetCollection:(id)a4 inAlbum:(id)a5 info:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__MSASStateMachine_deleteComments_inAssetCollection_inAlbum_info___block_invoke;
  block[3] = &unk_278E92688;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(v14, block);
}

uint64_t __66__MSASStateMachine_deleteComments_inAssetCollection_inAlbum_info___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 40) count];
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    *buf = 138544130;
    v31 = v2;
    v32 = 2048;
    v33 = v3;
    v34 = 2114;
    v35 = v4;
    v36 = 2114;
    v37 = v5;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Scheduling deletion of %ld comments in asset collection %{public}@ in album %{public}@.", buf, 0x2Au);
  }

  v6 = [*(a1 + 32) _model];
  [v6 beginTransaction];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = *(a1 + 40);
  v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v24 = *v26;
    do
    {
      v9 = 0;
      do
      {
        if (*v26 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        v11 = [MEMORY[0x277CBEB38] dictionary];
        [v11 setObject:v10 forKey:@"comment"];
        v12 = *(a1 + 48);
        if (v12)
        {
          [v11 setObject:v12 forKey:@"assetCollection"];
        }

        v13 = *(a1 + 56);
        if (v13)
        {
          [v11 setObject:v13 forKey:@"album"];
        }

        v14 = *(a1 + 64);
        if (v14)
        {
          [v11 setObject:v14 forKey:@"info"];
        }

        v15 = [*(a1 + 32) _model];
        v16 = NSStringFromSelector(sel__deleteCommentDisposition_params_);
        v17 = [*(a1 + 32) personID];
        v18 = [*(a1 + 56) GUID];
        v19 = [*(a1 + 48) GUID];
        [v15 enqueueCommand:v16 params:v11 personID:v17 albumGUID:v18 pendingOnAssetCollectionGUID:v19];

        ++v9;
      }

      while (v8 != v9);
      v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  v20 = [*(a1 + 32) _model];
  [v20 endTransaction];

  result = [*(a1 + 32) workQueueRetryOutstandingActivities];
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_deleteAssetCollectionsDisposition:(int)a3 params:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(MSASStateMachine *)self _albumForRequestFromParams:v6];
  v8 = [v6 objectForKey:@"assetCollections"];
  v9 = [v6 objectForKey:@"info"];
  if (a3 == 2)
  {
    v15 = [(MSASStateMachine *)self eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__MSASStateMachine__deleteAssetCollectionsDisposition_params___block_invoke_3;
    block[3] = &unk_278E92660;
    v18 = v8;
    v19 = self;
    v20 = v7;
    v21 = v9;
    dispatch_async(v15, block);
  }

  else if (!a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v28 = self;
      v29 = 2048;
      v30 = [v8 count];
      v31 = 2114;
      v32 = v7;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Deleting %ld photos in album %{public}@", buf, 0x20u);
    }

    v10 = [(MSASStateMachine *)self protocol];
    v11 = [v10 stopHandlerBlock];
    [(MSASStateMachine *)self _setStopHandlerBlock:v11];

    v12 = [(MSASStateMachine *)self _model];
    [v12 removeAssetCollectionsFromUploadQueue:v8];

    v13 = [(MSASStateMachine *)self _assetUploader];
    [v13 cancelAssetCollections:v8];

    objc_initWeak(buf, self);
    v14 = [(MSASStateMachine *)self protocol];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __62__MSASStateMachine__deleteAssetCollectionsDisposition_params___block_invoke;
    v22[3] = &unk_278E911E0;
    v22[4] = self;
    objc_copyWeak(&v26, buf);
    v23 = v8;
    v24 = v7;
    v25 = v9;
    [v14 deleteAssetCollections:v23 inAlbum:v24 completionBlock:v22];

    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __62__MSASStateMachine__deleteAssetCollectionsDisposition_params___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__MSASStateMachine__deleteAssetCollectionsDisposition_params___block_invoke_2;
  block[3] = &unk_278E91340;
  v13 = v3;
  v5 = v3;
  objc_copyWeak(&v16, a1 + 8);
  v6 = a1[5];
  v7 = a1[6];
  v11 = a1[4];
  v8 = a1[7];
  *&v9 = v11;
  *(&v9 + 1) = v8;
  *&v10 = v6;
  *(&v10 + 1) = v7;
  v14 = v10;
  v15 = v9;
  dispatch_async(v4, block);

  objc_destroyWeak(&v16);
}

void __62__MSASStateMachine__deleteAssetCollectionsDisposition_params___block_invoke_3(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v15;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v14 + 1) + 8 * i);
        v7 = [*(a1 + 40) delegate];
        v8 = *(a1 + 40);
        v9 = *(a1 + 48);
        v10 = *(a1 + 56);
        v11 = [v8 _canceledError];
        [v7 MSASStateMachine:v8 didFinishDeletingAssetCollection:v6 inAlbum:v9 info:v10 error:v11];
      }

      v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v3);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __62__MSASStateMachine__deleteAssetCollectionsDisposition_params___block_invoke_2(id *a1)
{
  v41 = *MEMORY[0x277D85DE8];
  if (a1[4])
  {
    WeakRetained = objc_loadWeakRetained(a1 + 9);
    v3 = a1[4];
    v4 = NSStringFromSelector(sel__deleteAssetCollectionsDisposition_params_);
    LOBYTE(v3) = [WeakRetained workQueueEndCommandWithError:v3 command:v4 params:0 albumGUID:0 assetCollectionGUID:0];

    if ((v3 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v14 = objc_loadWeakRetained(a1 + 9);
        v15 = [a1[5] count];
        v16 = a1[6];
        v17 = [a1[4] MSVerboseDescription];
        *buf = 138544130;
        v34 = v14;
        v35 = 2048;
        v36 = v15;
        v37 = 2114;
        v38 = v16;
        v39 = 2114;
        v40 = v17;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to delete %ld asset collections in album %{public}@. Error: %{public}@", buf, 0x2Au);
      }

      v5 = [a1[7] eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __62__MSASStateMachine__deleteAssetCollectionsDisposition_params___block_invoke_222;
      block[3] = &unk_278E911B0;
      v28 = a1[5];
      objc_copyWeak(&v32, a1 + 9);
      v29 = a1[6];
      v30 = a1[8];
      v31 = a1[4];
      dispatch_async(v5, block);

      v6 = objc_loadWeakRetained(a1 + 9);
      [v6 workQueueDidFinishCommand];

      objc_destroyWeak(&v32);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = objc_loadWeakRetained(a1 + 9);
      v8 = [a1[5] count];
      v9 = a1[6];
      *buf = 138543874;
      v34 = v7;
      v35 = 2048;
      v36 = v8;
      v37 = 2114;
      v38 = v9;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Successfully deleted %ld photos in album %{public}@", buf, 0x20u);
    }

    v10 = [a1[7] memberQueue];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __62__MSASStateMachine__deleteAssetCollectionsDisposition_params___block_invoke_223;
    v26[3] = &unk_278E926D8;
    v26[4] = a1[7];
    dispatch_barrier_sync(v10, v26);

    v11 = [a1[7] eventQueue];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __62__MSASStateMachine__deleteAssetCollectionsDisposition_params___block_invoke_2_224;
    v21 = &unk_278E912C8;
    objc_copyWeak(&v25, a1 + 9);
    v22 = a1[5];
    v23 = a1[6];
    v24 = a1[8];
    dispatch_async(v11, &v18);

    v12 = objc_loadWeakRetained(a1 + 9);
    [v12 workQueueDidFinishCommand];

    objc_destroyWeak(&v25);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __62__MSASStateMachine__deleteAssetCollectionsDisposition_params___block_invoke_222(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
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
        WeakRetained = objc_loadWeakRetained((a1 + 64));
        v9 = [WeakRetained delegate];
        v10 = objc_loadWeakRetained((a1 + 64));
        [v9 MSASStateMachine:v10 didFinishDeletingAssetCollection:v7 inAlbum:*(a1 + 40) info:*(a1 + 48) error:*(a1 + 56)];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __62__MSASStateMachine__deleteAssetCollectionsDisposition_params___block_invoke_2_224(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained daemon];
  v4 = objc_loadWeakRetained((a1 + 56));
  v5 = [v4 personID];
  [v3 didReceiveAuthSuccessForPersonID:v5];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = objc_loadWeakRetained((a1 + 56));
        v13 = [v12 delegate];
        v14 = objc_loadWeakRetained((a1 + 56));
        [v13 MSASStateMachine:v14 didFinishDeletingAssetCollection:v11 inAlbum:*(a1 + 40) info:*(a1 + 48) error:0];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)deleteAssetCollections:(id)a3 inAlbum:(id)a4 info:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MSASStateMachine *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__MSASStateMachine_deleteAssetCollections_inAlbum_info___block_invoke;
  v15[3] = &unk_278E92660;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v19 = self;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(v11, v15);
}

void __56__MSASStateMachine_deleteAssetCollections_inAlbum_info___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = *(a1 + 32);
  v10 = v2;
  if (v3)
  {
    [v2 setObject:v3 forKey:@"album"];
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    [v10 setObject:v4 forKey:@"assetCollections"];
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    [v10 setObject:v5 forKey:@"info"];
  }

  v6 = [*(a1 + 56) _model];
  v7 = NSStringFromSelector(sel__deleteAssetCollectionsDisposition_params_);
  v8 = [*(a1 + 56) personID];
  v9 = [*(a1 + 32) GUID];
  [v6 enqueueCommand:v7 params:v10 personID:v8 albumGUID:v9 assetCollectionGUID:0];

  [*(a1 + 56) workQueueRetryOutstandingActivities];
}

- (void)_deleteAlbumDisposition:(int)a3 params:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(MSASStateMachine *)self _albumForRequestFromParams:v6];
  v8 = [v6 objectForKey:@"info"];
  if (a3 == 2)
  {
    v12 = [(MSASStateMachine *)self eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__MSASStateMachine__deleteAlbumDisposition_params___block_invoke_3;
    block[3] = &unk_278E92638;
    block[4] = self;
    v15 = v7;
    v16 = v8;
    dispatch_async(v12, block);
  }

  else if (!a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v22 = self;
      v23 = 2114;
      v24 = v7;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Deleting album: %{public}@", buf, 0x16u);
    }

    v9 = [(MSASStateMachine *)self protocol];
    v10 = [v9 stopHandlerBlock];
    [(MSASStateMachine *)self _setStopHandlerBlock:v10];

    objc_initWeak(buf, self);
    v11 = [(MSASStateMachine *)self protocol];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __51__MSASStateMachine__deleteAlbumDisposition_params___block_invoke;
    v17[3] = &unk_278E91210;
    v17[4] = self;
    objc_copyWeak(&v20, buf);
    v18 = v7;
    v19 = v8;
    [v11 deleteAlbum:v18 completionBlock:v17];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __51__MSASStateMachine__deleteAlbumDisposition_params___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__MSASStateMachine__deleteAlbumDisposition_params___block_invoke_2;
  block[3] = &unk_278E911B0;
  v8 = v3;
  v5 = v3;
  objc_copyWeak(&v12, (a1 + 56));
  v6 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = v6;
  v11 = *(a1 + 48);
  dispatch_async(v4, block);

  objc_destroyWeak(&v12);
}

void __51__MSASStateMachine__deleteAlbumDisposition_params___block_invoke_3(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v2 _canceledError];
  [v6 MSASStateMachine:v2 didFinishDeletingAlbum:v3 info:v4 error:v5];
}

void __51__MSASStateMachine__deleteAlbumDisposition_params___block_invoke_2(id *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a1[4])
  {
    WeakRetained = objc_loadWeakRetained(a1 + 8);
    v3 = [WeakRetained workQueueEndCommandWithError:a1[4] command:0 params:0 albumGUID:0 assetCollectionGUID:0];

    if ((v3 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v12 = objc_loadWeakRetained(a1 + 8);
        v13 = [a1[4] MSVerboseDescription];
        *buf = 138543618;
        v26 = v12;
        v27 = 2114;
        v28 = v13;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to delete album. Error: %{public}@", buf, 0x16u);
      }

      v4 = [a1[5] eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __51__MSASStateMachine__deleteAlbumDisposition_params___block_invoke_217;
      block[3] = &unk_278E912C8;
      objc_copyWeak(&v24, a1 + 8);
      v21 = a1[6];
      v22 = a1[7];
      v23 = a1[4];
      dispatch_async(v4, block);

      v5 = objc_loadWeakRetained(a1 + 8);
      [v5 workQueueDidFinishCommand];

      objc_destroyWeak(&v24);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = objc_loadWeakRetained(a1 + 8);
      v7 = a1[6];
      *buf = 138543618;
      v26 = v6;
      v27 = 2114;
      v28 = v7;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Successfully deleted album %{public}@", buf, 0x16u);
    }

    v8 = [a1[5] memberQueue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __51__MSASStateMachine__deleteAlbumDisposition_params___block_invoke_218;
    v19[3] = &unk_278E926D8;
    v19[4] = a1[5];
    dispatch_barrier_sync(v8, v19);

    v9 = [a1[5] eventQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __51__MSASStateMachine__deleteAlbumDisposition_params___block_invoke_2_219;
    v14[3] = &unk_278E912C8;
    objc_copyWeak(&v18, a1 + 8);
    v15 = a1[6];
    v16 = a1[7];
    v17 = a1[4];
    dispatch_async(v9, v14);

    v10 = objc_loadWeakRetained(a1 + 8);
    [v10 workQueueDidFinishCommand];

    objc_destroyWeak(&v18);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __51__MSASStateMachine__deleteAlbumDisposition_params___block_invoke_217(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 56));
  [v2 MSASStateMachine:v3 didFinishDeletingAlbum:*(a1 + 32) info:*(a1 + 40) error:*(a1 + 48)];
}

void __51__MSASStateMachine__deleteAlbumDisposition_params___block_invoke_2_219(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained daemon];
  v4 = objc_loadWeakRetained((a1 + 56));
  v5 = [v4 personID];
  [v3 didReceiveAuthSuccessForPersonID:v5];

  v8 = objc_loadWeakRetained((a1 + 56));
  v6 = [v8 delegate];
  v7 = objc_loadWeakRetained((a1 + 56));
  [v6 MSASStateMachine:v7 didFinishDeletingAlbum:*(a1 + 32) info:*(a1 + 40) error:*(a1 + 48)];
}

- (void)deleteAlbum:(id)a3 info:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__MSASStateMachine_deleteAlbum_info___block_invoke;
  block[3] = &unk_278E92638;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __37__MSASStateMachine_deleteAlbum_info___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = *(a1 + 32);
  v9 = v2;
  if (v3)
  {
    [v2 setObject:v3 forKey:@"album"];
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    [v9 setObject:v4 forKey:@"info"];
  }

  v5 = [*(a1 + 48) _model];
  v6 = NSStringFromSelector(sel__deleteAlbumDisposition_params_);
  v7 = [*(a1 + 48) personID];
  v8 = [*(a1 + 32) GUID];
  [v5 enqueueCommand:v6 params:v9 personID:v7 albumGUID:v8 assetCollectionGUID:0];

  [*(a1 + 48) workQueueRetryOutstandingActivities];
}

- (void)_setAssetCollectionSyncedStateDisposition:(int)a3 params:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [v6 objectForKey:@"assetCollection"];
  v8 = [(MSASStateMachine *)self _albumForRequestFromParams:v6];
  v9 = [v6 objectForKey:@"assetCollectionState"];
  v10 = [v6 objectForKey:@"info"];
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__4549;
  v37 = __Block_byref_object_dispose__4550;
  v38 = 0;
  v11 = [(MSASStateMachine *)self eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__MSASStateMachine__setAssetCollectionSyncedStateDisposition_params___block_invoke;
  block[3] = &unk_278E91888;
  v32 = &v33;
  block[4] = self;
  v12 = v7;
  v30 = v12;
  v13 = v10;
  v31 = v13;
  dispatch_sync(v11, block);

  if (a3 == 2)
  {
    v18 = [(MSASStateMachine *)self eventQueue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __69__MSASStateMachine__setAssetCollectionSyncedStateDisposition_params___block_invoke_3;
    v20[3] = &unk_278E92660;
    v20[4] = self;
    v21 = v12;
    v22 = v8;
    v23 = v13;
    dispatch_async(v18, v20);
  }

  else if (!a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 138543874;
      v40 = self;
      v41 = 2114;
      v42 = v12;
      v43 = 2114;
      v44 = v8;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Setting synced state for asset collection %{public}@ in album %{public}@", buf, 0x20u);
    }

    v14 = [(MSASStateMachine *)self protocol];
    v15 = [v14 stopHandlerBlock];
    [(MSASStateMachine *)self _setStopHandlerBlock:v15];

    objc_initWeak(buf, self);
    v16 = [(MSASStateMachine *)self protocol];
    v17 = v34[5];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __69__MSASStateMachine__setAssetCollectionSyncedStateDisposition_params___block_invoke_212;
    v24[3] = &unk_278E91418;
    objc_copyWeak(&v28, buf);
    v25 = v12;
    v26 = v8;
    v27 = v13;
    [v16 setAssetCollectionSyncedState:v9 forAssetCollection:v25 inAlbum:v26 assetCollectionStateCtag:v17 completionBlock:v24];

    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }

  _Block_object_dispose(&v33, 8);
  v19 = *MEMORY[0x277D85DE8];
}

void __69__MSASStateMachine__setAssetCollectionSyncedStateDisposition_params___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  v2 = [*(a1 + 40) GUID];
  v3 = [v6 MSASStateMachineDidRequestAssetCollectionStateCtagForAssetCollectionWithGUID:v2 info:*(a1 + 48)];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __69__MSASStateMachine__setAssetCollectionSyncedStateDisposition_params___block_invoke_212(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v8 = [WeakRetained workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__MSASStateMachine__setAssetCollectionSyncedStateDisposition_params___block_invoke_2;
  block[3] = &unk_278E913F0;
  v13 = v5;
  v14 = WeakRetained;
  v15 = a1[4];
  v16 = a1[5];
  v17 = a1[6];
  v9 = WeakRetained;
  v10 = v5;
  objc_copyWeak(&v19, a1 + 7);
  v18 = v6;
  v11 = v6;
  dispatch_async(v8, block);

  objc_destroyWeak(&v19);
}

void __69__MSASStateMachine__setAssetCollectionSyncedStateDisposition_params___block_invoke_3(uint64_t a1)
{
  v7 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6 = [v2 _canceledError];
  [v7 MSASStateMachine:v2 didFinishSettingSyncedStateForAssetCollection:v3 inAlbum:v5 assetStateCtag:0 info:v4 error:v6];
}

void __69__MSASStateMachine__setAssetCollectionSyncedStateDisposition_params___block_invoke_2(id *a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v2 = a1[5];
  if (!v3)
  {
    v8 = [v2 eventQueue];
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __69__MSASStateMachine__setAssetCollectionSyncedStateDisposition_params___block_invoke_2_214;
    v29 = &unk_278E92688;
    v9 = &v30;
    v30 = a1[5];
    v10 = &v31;
    v31 = a1[6];
    v11 = &v32;
    v32 = a1[7];
    v12 = &v33;
    v33 = a1[9];
    v13 = &v34;
    v34 = a1[8];
    dispatch_async(v8, &v26);

    [a1[5] workQueueDidFinishCommand];
LABEL_10:

    goto LABEL_11;
  }

  if (([v2 workQueueEndCommandWithError:v3 command:0 params:0 albumGUID:0 assetCollectionGUID:0] & 1) == 0)
  {
    if ([a1[4] MSContainsErrorWithDomain:*MEMORY[0x277CBACE8] code:400])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_9:
        v14 = [a1[5] eventQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __69__MSASStateMachine__setAssetCollectionSyncedStateDisposition_params___block_invoke_213;
        block[3] = &unk_278E92688;
        v9 = &v36;
        v10 = &v36 + 1;
        v11 = &v37;
        v12 = &v37 + 1;
        v15 = a1[5];
        v16 = a1[6];
        v17 = a1[7];
        v18 = a1[8];
        *&v19 = v17;
        *(&v19 + 1) = v18;
        *&v20 = v15;
        *(&v20 + 1) = v16;
        v36 = v20;
        v37 = v19;
        v13 = &v38;
        v38 = a1[4];
        dispatch_async(v14, block);

        WeakRetained = objc_loadWeakRetained(a1 + 10);
        [WeakRetained workQueueDidFinishCommand];

        goto LABEL_10;
      }

      v4 = a1[6];
      v5 = a1[7];
      v6 = a1[5];
      v7 = [a1[4] MSVerboseDescription];
      *buf = 138544130;
      v40 = v6;
      v41 = 2114;
      v42 = v4;
      v43 = 2114;
      v44 = v5;
      v45 = 2114;
      v46 = v7;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Can't set synced state for asset collection %{public}@ in album %{public}@. This is not an error. Status: %{public}@", buf, 0x2Au);
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      v23 = a1[6];
      v24 = a1[7];
      v25 = a1[5];
      v7 = [a1[4] MSVerboseDescription];
      *buf = 138544130;
      v40 = v25;
      v41 = 2114;
      v42 = v23;
      v43 = 2114;
      v44 = v24;
      v45 = 2114;
      v46 = v7;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to set synced state for asset collection %{public}@ in album %{public}@. Error: %{public}@", buf, 0x2Au);
    }

    goto LABEL_9;
  }

LABEL_11:
  v22 = *MEMORY[0x277D85DE8];
}

void __69__MSASStateMachine__setAssetCollectionSyncedStateDisposition_params___block_invoke_213(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) didFinishSettingSyncedStateForAssetCollection:*(a1 + 40) inAlbum:*(a1 + 48) assetStateCtag:0 info:*(a1 + 56) error:*(a1 + 64)];
}

void __69__MSASStateMachine__setAssetCollectionSyncedStateDisposition_params___block_invoke_2_214(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) didFinishSettingSyncedStateForAssetCollection:*(a1 + 40) inAlbum:*(a1 + 48) assetStateCtag:*(a1 + 56) info:*(a1 + 64) error:0];
}

- (void)setAssetCollectionSyncedState:(id)a3 forAssetCollection:(id)a4 album:(id)a5 info:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__MSASStateMachine_setAssetCollectionSyncedState_forAssetCollection_album_info___block_invoke;
  block[3] = &unk_278E92688;
  block[4] = self;
  v20 = v11;
  v21 = v12;
  v22 = v10;
  v23 = v13;
  v15 = v13;
  v16 = v10;
  v17 = v12;
  v18 = v11;
  dispatch_async(v14, block);
}

void __80__MSASStateMachine_setAssetCollectionSyncedState_forAssetCollection_album_info___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v17 = 138543874;
    v18 = v2;
    v19 = 2114;
    v20 = v3;
    v21 = 2114;
    v22 = v4;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Scheduling setting asset collection synced state for asset collection %{public}@ in album %{public}@", &v17, 0x20u);
  }

  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = v5;
  v7 = *(a1 + 40);
  if (v7)
  {
    [v5 setObject:v7 forKey:@"assetCollection"];
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    [v6 setObject:v8 forKey:@"album"];
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    [v6 setObject:v9 forKey:@"assetCollectionState"];
  }

  v10 = *(a1 + 64);
  if (v10)
  {
    [v6 setObject:v10 forKey:@"info"];
  }

  v11 = [*(a1 + 32) _model];
  v12 = NSStringFromSelector(sel__setAssetCollectionSyncedStateDisposition_params_);
  v13 = [*(a1 + 32) personID];
  v14 = [*(a1 + 48) GUID];
  v15 = [*(a1 + 40) GUID];
  [v11 enqueueCommand:v12 params:v6 personID:v13 albumGUID:v14 assetCollectionGUID:v15];

  [*(a1 + 32) workQueueRetryOutstandingActivities];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_setAlbumSyncedStateDisposition:(int)a3 params:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(MSASStateMachine *)self _albumForRequestFromParams:v6];
  v8 = [v6 objectForKey:@"albumState"];
  v9 = [v6 objectForKey:@"info"];
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__4549;
  v38 = __Block_byref_object_dispose__4550;
  v39 = 0;
  v10 = [(MSASStateMachine *)self eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__MSASStateMachine__setAlbumSyncedStateDisposition_params___block_invoke;
  block[3] = &unk_278E91888;
  v33 = &v34;
  block[4] = self;
  v11 = v7;
  v31 = v11;
  v12 = v9;
  v32 = v12;
  dispatch_sync(v10, block);

  if (a3 == 2)
  {
    v17 = [(MSASStateMachine *)self eventQueue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __59__MSASStateMachine__setAlbumSyncedStateDisposition_params___block_invoke_2_209;
    v20[3] = &unk_278E92638;
    v20[4] = self;
    v21 = v11;
    v22 = v12;
    dispatch_async(v17, v20);
  }

  else if (!a3)
  {
    if (v35[5])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v41 = self;
        v42 = 2114;
        v43 = v11;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Setting synced state for album %{public}@", buf, 0x16u);
      }

      v13 = [(MSASStateMachine *)self protocol];
      v14 = [v13 stopHandlerBlock];
      [(MSASStateMachine *)self _setStopHandlerBlock:v14];

      objc_initWeak(buf, self);
      v15 = [(MSASStateMachine *)self protocol];
      v16 = v35[5];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __59__MSASStateMachine__setAlbumSyncedStateDisposition_params___block_invoke_202;
      v26[3] = &unk_278E913C0;
      objc_copyWeak(&v29, buf);
      v27 = v11;
      v28 = v12;
      [v15 setAlbumSyncedState:v8 forAlbum:v27 albumStateCtag:v16 completionBlock:v26];

      objc_destroyWeak(&v29);
      objc_destroyWeak(buf);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v41 = self;
        v42 = 2114;
        v43 = v11;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Not setting synced state for album %{public}@ because we don't have a state ctag.", buf, 0x16u);
      }

      v18 = [(MSASStateMachine *)self eventQueue];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __59__MSASStateMachine__setAlbumSyncedStateDisposition_params___block_invoke_205;
      v23[3] = &unk_278E92638;
      v23[4] = self;
      v24 = v11;
      v25 = v12;
      dispatch_async(v18, v23);

      [(MSASStateMachine *)self workQueueDidFinishCommand];
    }
  }

  _Block_object_dispose(&v34, 8);
  v19 = *MEMORY[0x277D85DE8];
}

void __59__MSASStateMachine__setAlbumSyncedStateDisposition_params___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  v2 = [*(a1 + 40) GUID];
  v3 = [v6 MSASStateMachineDidRequestAlbumStateCtagForAlbumWithGUID:v2 info:*(a1 + 48)];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __59__MSASStateMachine__setAlbumSyncedStateDisposition_params___block_invoke_202(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = [WeakRetained workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__MSASStateMachine__setAlbumSyncedStateDisposition_params___block_invoke_2;
  block[3] = &unk_278E92688;
  v13 = v5;
  v14 = WeakRetained;
  v15 = a1[4];
  v16 = a1[5];
  v17 = v6;
  v9 = v6;
  v10 = WeakRetained;
  v11 = v5;
  dispatch_async(v8, block);
}

void __59__MSASStateMachine__setAlbumSyncedStateDisposition_params___block_invoke_205(uint64_t a1)
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = MSCFCopyLocalizedString(@"ERROR_STATE_ALBUM_STATE_CTAG_MISSING");
  v5 = [v2 MSErrorWithDomain:@"MSASStateMachineErrorDomain" code:3 description:v3];

  v4 = [*(a1 + 32) delegate];
  [v4 MSASStateMachine:*(a1 + 32) didFinishSettingSyncedStateForAlbum:*(a1 + 40) info:*(a1 + 48) error:v5 newAlbumStateCtag:0];
}

void __59__MSASStateMachine__setAlbumSyncedStateDisposition_params___block_invoke_2_209(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v2 _canceledError];
  [v6 MSASStateMachine:v2 didFinishSettingSyncedStateForAlbum:v3 info:v4 error:v5 newAlbumStateCtag:0];
}

void __59__MSASStateMachine__setAlbumSyncedStateDisposition_params___block_invoke_2(id *a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v2 = a1[5];
  if (!v3)
  {
    v7 = [v2 eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__MSASStateMachine__setAlbumSyncedStateDisposition_params___block_invoke_2_204;
    block[3] = &unk_278E92688;
    v8 = &v29;
    v9 = &v29 + 1;
    v10 = &v30;
    v11 = &v30 + 1;
    v12 = a1[5];
    v13 = a1[6];
    v14 = a1[7];
    v15 = a1[4];
    *&v16 = v14;
    *(&v16 + 1) = v15;
    *&v17 = v12;
    *(&v17 + 1) = v13;
    v29 = v17;
    v30 = v16;
    v31 = a1[8];
    dispatch_async(v7, block);

    [a1[5] workQueueDidFinishCommand];
LABEL_10:

    goto LABEL_11;
  }

  if (([v2 workQueueEndCommandWithError:v3 command:0 params:0 albumGUID:0 assetCollectionGUID:0] & 1) == 0)
  {
    if ([a1[4] MSContainsErrorWithDomain:*MEMORY[0x277CBACE8] code:400])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_9:
        v18 = [a1[5] eventQueue];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __59__MSASStateMachine__setAlbumSyncedStateDisposition_params___block_invoke_203;
        v32[3] = &unk_278E92660;
        v8 = &v33;
        v9 = &v33 + 1;
        v10 = &v34;
        v11 = &v34 + 1;
        v19 = a1[5];
        v20 = a1[6];
        v21 = a1[7];
        v22 = a1[4];
        *&v23 = v21;
        *(&v23 + 1) = v22;
        *&v24 = v19;
        *(&v24 + 1) = v20;
        v33 = v24;
        v34 = v23;
        dispatch_async(v18, v32);

        [a1[5] workQueueDidFinishCommand];
        goto LABEL_10;
      }

      v5 = a1[5];
      v4 = a1[6];
      v6 = [a1[4] MSVerboseDescription];
      *buf = 138543874;
      v36 = v5;
      v37 = 2114;
      v38 = v4;
      v39 = 2114;
      v40 = v6;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Can't set synced state for album %{public}@. This is not an error. Status: %{public}@", buf, 0x20u);
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      v27 = a1[5];
      v26 = a1[6];
      v6 = [a1[4] MSVerboseDescription];
      *buf = 138543874;
      v36 = v27;
      v37 = 2114;
      v38 = v26;
      v39 = 2114;
      v40 = v6;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to set synced state for album %{public}@. Error: %{public}@", buf, 0x20u);
    }

    goto LABEL_9;
  }

LABEL_11:
  v25 = *MEMORY[0x277D85DE8];
}

void __59__MSASStateMachine__setAlbumSyncedStateDisposition_params___block_invoke_203(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) didFinishSettingSyncedStateForAlbum:*(a1 + 40) info:*(a1 + 48) error:*(a1 + 56) newAlbumStateCtag:0];
}

void __59__MSASStateMachine__setAlbumSyncedStateDisposition_params___block_invoke_2_204(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) didFinishSettingSyncedStateForAlbum:*(a1 + 40) info:*(a1 + 48) error:*(a1 + 56) newAlbumStateCtag:*(a1 + 64)];
}

- (void)setAlbumSyncedState:(id)a3 forAlbum:(id)a4 info:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MSASStateMachine *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __54__MSASStateMachine_setAlbumSyncedState_forAlbum_info___block_invoke;
  v15[3] = &unk_278E92660;
  v15[4] = self;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(v11, v15);
}

void __54__MSASStateMachine_setAlbumSyncedState_forAlbum_info___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v14 = 138543618;
    v15 = v2;
    v16 = 2114;
    v17 = v3;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Scheduling setting album synced state for album %{public}@", &v14, 0x16u);
  }

  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6)
  {
    [v4 setObject:v6 forKey:@"album"];
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    [v5 setObject:v7 forKey:@"albumState"];
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    [v5 setObject:v8 forKey:@"info"];
  }

  v9 = [*(a1 + 32) _model];
  v10 = NSStringFromSelector(sel__setAlbumSyncedStateDisposition_params_);
  v11 = [*(a1 + 32) personID];
  v12 = [*(a1 + 40) GUID];
  [v9 enqueueCommand:v10 params:v5 personID:v11 albumGUID:v12 assetCollectionGUID:0];

  [*(a1 + 32) workQueueRetryOutstandingActivities];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_checkForAlbumSyncedStateDisposition:(int)a3 params:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(MSASStateMachine *)self _albumForRequestFromParams:v6];
  v8 = [v6 objectForKey:@"info"];
  if (a3 == 2)
  {
    v19 = [(MSASStateMachine *)self eventQueue];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __64__MSASStateMachine__checkForAlbumSyncedStateDisposition_params___block_invoke_3_199;
    v21[3] = &unk_278E92638;
    v21[4] = self;
    v22 = v7;
    v23 = v8;
    dispatch_async(v19, v21);

    v17 = &v22;
    v18 = &v23;
LABEL_7:

    goto LABEL_8;
  }

  if (!a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *location = 138543618;
      *&location[4] = self;
      v37 = 2114;
      v38 = v7;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Checking for album synced state changes in album %{public}@", location, 0x16u);
    }

    v9 = [(MSASStateMachine *)self protocol];
    v10 = [v9 stopHandlerBlock];
    [(MSASStateMachine *)self _setStopHandlerBlock:v10];

    v11 = [(MSASStateMachine *)self eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__MSASStateMachine__checkForAlbumSyncedStateDisposition_params___block_invoke;
    block[3] = &unk_278E92638;
    block[4] = self;
    v12 = v7;
    v34 = v12;
    v13 = v8;
    v35 = v13;
    dispatch_async(v11, block);

    objc_initWeak(location, self);
    v14 = [(MSASStateMachine *)self protocol];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __64__MSASStateMachine__checkForAlbumSyncedStateDisposition_params___block_invoke_2;
    v29[3] = &unk_278E91368;
    v29[4] = self;
    objc_copyWeak(&v32, location);
    v15 = v12;
    v30 = v15;
    v16 = v13;
    v31 = v16;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __64__MSASStateMachine__checkForAlbumSyncedStateDisposition_params___block_invoke_4;
    v24[3] = &unk_278E91390;
    objc_copyWeak(&v28, location);
    v25 = v15;
    v26 = self;
    v27 = v16;
    [v14 getAlbumSyncedStateForAlbum:v25 assetCollectionStateBlock:v29 completionBlock:v24];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&v32);
    objc_destroyWeak(location);
    v17 = &v34;
    v18 = &v35;
    goto LABEL_7;
  }

LABEL_8:

  v20 = *MEMORY[0x277D85DE8];
}

void __64__MSASStateMachine__checkForAlbumSyncedStateDisposition_params___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) willCheckForAlbumSyncedStateChangesInAlbum:*(a1 + 40) info:*(a1 + 48)];
}

void __64__MSASStateMachine__checkForAlbumSyncedStateDisposition_params___block_invoke_2(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [a1[4] eventQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__MSASStateMachine__checkForAlbumSyncedStateDisposition_params___block_invoke_3;
  v14[3] = &unk_278E91340;
  objc_copyWeak(&v20, a1 + 7);
  v15 = v8;
  v16 = v7;
  v17 = a1[5];
  v18 = v9;
  v19 = a1[6];
  v11 = v9;
  v12 = v7;
  v13 = v8;
  dispatch_async(v10, v14);

  objc_destroyWeak(&v20);
}

void __64__MSASStateMachine__checkForAlbumSyncedStateDisposition_params___block_invoke_4(id *a1, void *a2, void *a3, void *a4)
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v7)
  {
    v18 = [a1[5] eventQueue];
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __64__MSASStateMachine__checkForAlbumSyncedStateDisposition_params___block_invoke_2_197;
    v27 = &unk_278E91340;
    v13 = &v33;
    objc_copyWeak(&v33, a1 + 7);
    v28 = v8;
    v29 = a1[4];
    v30 = a1[6];
    v31 = 0;
    v32 = v9;
    dispatch_async(v18, &v24);

    WeakRetained = objc_loadWeakRetained(a1 + 7);
    [WeakRetained workQueueDidFinishCommand];

    v15 = &v28;
    v16 = &v29;
    v17 = &v30;
    v14 = v31;
LABEL_7:

    objc_destroyWeak(v13);
    goto LABEL_8;
  }

  v10 = objc_loadWeakRetained(a1 + 7);
  v11 = [v10 workQueueEndCommandWithError:v7 command:0 params:0 albumGUID:0 assetCollectionGUID:0];

  if ((v11 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v21 = objc_loadWeakRetained(a1 + 7);
      v22 = a1[4];
      v23 = [v7 MSVerboseDescription];
      *buf = 138543874;
      v40 = v21;
      v41 = 2114;
      v42 = v22;
      v43 = 2114;
      v44 = v23;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to check for synced state changes in album %{public}@. Error: %{public}@", buf, 0x20u);
    }

    v12 = [a1[5] eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__MSASStateMachine__checkForAlbumSyncedStateDisposition_params___block_invoke_196;
    block[3] = &unk_278E912C8;
    v13 = &v38;
    objc_copyWeak(&v38, a1 + 7);
    v35 = a1[4];
    v36 = a1[6];
    v37 = v7;
    dispatch_async(v12, block);

    v14 = objc_loadWeakRetained(a1 + 7);
    [v14 workQueueDidFinishCommand];
    v15 = &v35;
    v16 = &v36;
    v17 = &v37;
    goto LABEL_7;
  }

LABEL_8:

  v20 = *MEMORY[0x277D85DE8];
}

void __64__MSASStateMachine__checkForAlbumSyncedStateDisposition_params___block_invoke_3_199(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v2 _canceledError];
  [v6 MSASStateMachine:v2 didFinishCheckingForAlbumSyncedStateChangesInAlbum:v3 info:v4 error:v5 newAlbumStateCtag:0];
}

void __64__MSASStateMachine__checkForAlbumSyncedStateDisposition_params___block_invoke_196(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 56));
  [v2 MSASStateMachine:v3 didFinishCheckingForAlbumSyncedStateChangesInAlbum:*(a1 + 32) info:*(a1 + 40) error:*(a1 + 48) newAlbumStateCtag:0];
}

void __64__MSASStateMachine__checkForAlbumSyncedStateDisposition_params___block_invoke_2_197(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = [WeakRetained delegate];
  v4 = objc_loadWeakRetained((a1 + 72));
  [v3 MSASStateMachine:v4 didFindAlbumSyncedState:*(a1 + 32) forAlbum:*(a1 + 40) info:*(a1 + 48)];

  v7 = objc_loadWeakRetained((a1 + 72));
  v5 = [v7 delegate];
  v6 = objc_loadWeakRetained((a1 + 72));
  [v5 MSASStateMachine:v6 didFinishCheckingForAlbumSyncedStateChangesInAlbum:*(a1 + 40) info:*(a1 + 48) error:*(a1 + 56) newAlbumStateCtag:*(a1 + 64)];
}

void __64__MSASStateMachine__checkForAlbumSyncedStateDisposition_params___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 72));
  [v2 MSASStateMachine:v3 didFindAssetCollectionSyncedState:*(a1 + 32) forAssetCollectionGUID:*(a1 + 40) inAlbum:*(a1 + 48) assetCollectionStateCtag:*(a1 + 56) info:*(a1 + 64)];
}

- (void)checkForAlbumSyncedStateChangesInAlbums:(id)a3 info:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__MSASStateMachine_checkForAlbumSyncedStateChangesInAlbums_info___block_invoke;
  block[3] = &unk_278E92638;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

uint64_t __65__MSASStateMachine_checkForAlbumSyncedStateChangesInAlbums_info___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    *buf = 138543618;
    v27 = v2;
    v28 = 2114;
    v29 = v3;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Scheduling checking for album synced state changes in albums %{public}@", buf, 0x16u);
  }

  v4 = [*(a1 + 32) _model];
  [v4 beginTransaction];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = *(a1 + 40);
  v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      v8 = 0;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * v8);
        v10 = [MEMORY[0x277CBEB38] dictionary];
        v11 = v10;
        if (v9)
        {
          [v10 setObject:v9 forKey:@"album"];
        }

        v12 = *(a1 + 48);
        if (v12)
        {
          [v11 setObject:v12 forKey:@"info"];
        }

        v13 = [*(a1 + 32) _model];
        v14 = NSStringFromSelector(sel__checkForAlbumSyncedStateDisposition_params_);
        v15 = [*(a1 + 32) personID];
        v16 = [v9 GUID];
        [v13 enqueueCommand:v14 params:v11 personID:v15 albumGUID:v16 assetCollectionGUID:0];

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  v17 = [*(a1 + 32) _model];
  [v17 endTransaction];

  result = [*(a1 + 32) workQueueRetryOutstandingActivities];
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_checkForCommentChangesDisposition:(int)a3 params:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [v6 objectForKey:@"commentsChange"];
  v8 = [v6 objectForKey:@"albumGUID"];
  v9 = [(MSASStateMachine *)self delegate];
  v10 = [v9 albumWithGUID:v8];

  v11 = [v10 clientOrgKey];
  if (v11)
  {
    [v10 clientOrgKey];
  }

  else
  {
    [v6 objectForKey:@"clientOrgKey"];
  }
  v23 = ;

  v12 = [v6 objectForKey:@"info"];
  v13 = [v6 objectForKey:@"error"];
  v14 = v13;
  if (a3 == 2)
  {
    v16 = [(MSASStateMachine *)self eventQueue];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __62__MSASStateMachine__checkForCommentChangesDisposition_params___block_invoke_4;
    v24[3] = &unk_278E92638;
    v25 = v7;
    v26 = self;
    v27 = v12;
    dispatch_async(v16, v24);
  }

  else if (!a3)
  {
    if (v13)
    {
      v15 = [(MSASStateMachine *)self eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __62__MSASStateMachine__checkForCommentChangesDisposition_params___block_invoke;
      block[3] = &unk_278E92660;
      v35 = v7;
      v36 = self;
      v37 = v12;
      v38 = v14;
      dispatch_async(v15, block);

      [(MSASStateMachine *)self workQueueDidFinishCommand];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v40 = self;
        v41 = 2114;
        v42 = v8;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Checking for comment changes in album %{public}@,", buf, 0x16u);
      }

      v17 = [(MSASStateMachine *)self protocol];
      v18 = [v17 stopHandlerBlock];
      [(MSASStateMachine *)self _setStopHandlerBlock:v18];

      objc_initWeak(buf, self);
      v19 = [(MSASStateMachine *)self delegate];
      v20 = [v19 MSASStateMachineDidRequestAlbumURLStringForAlbumWithGUID:v8 info:v12];

      v21 = [(MSASStateMachine *)self protocol];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __62__MSASStateMachine__checkForCommentChangesDisposition_params___block_invoke_188;
      v28[3] = &unk_278E91318;
      v28[4] = self;
      objc_copyWeak(&v33, buf);
      v29 = v6;
      v30 = v8;
      v31 = v7;
      v32 = v12;
      [v21 getCommentChanges:v31 inAlbumWithGUID:v30 withClientOrgKey:v23 albumURLString:v20 completionBlock:v28];

      objc_destroyWeak(&v33);
      objc_destroyWeak(buf);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __62__MSASStateMachine__checkForCommentChangesDisposition_params___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) allKeys];
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
        v8 = [*(a1 + 40) delegate];
        [v8 MSASStateMachine:*(a1 + 40) didFinishCheckingForCommentChangesInAssetCollectionWithGUID:v7 largestCommentID:0 info:*(a1 + 48) error:*(a1 + 56)];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __62__MSASStateMachine__checkForCommentChangesDisposition_params___block_invoke_188(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] workQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __62__MSASStateMachine__checkForCommentChangesDisposition_params___block_invoke_2;
  v14[3] = &unk_278E91268;
  v15 = v5;
  v8 = v5;
  objc_copyWeak(&v20, a1 + 9);
  v9 = a1[5];
  v10 = a1[6];
  *&v11 = a1[7];
  *(&v11 + 1) = a1[4];
  *&v12 = v9;
  *(&v12 + 1) = v10;
  v16 = v12;
  v17 = v11;
  v18 = v6;
  v19 = a1[8];
  v13 = v6;
  dispatch_async(v7, v14);

  objc_destroyWeak(&v20);
}

void __62__MSASStateMachine__checkForCommentChangesDisposition_params___block_invoke_4(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [*(a1 + 32) allKeys];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [*(a1 + 40) delegate];
        v9 = *(a1 + 40);
        v10 = *(a1 + 48);
        v11 = [v9 _canceledError];
        [v8 MSASStateMachine:v9 didFinishCheckingForCommentChangesInAssetCollectionWithGUID:v7 largestCommentID:0 info:v10 error:v11];
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __62__MSASStateMachine__checkForCommentChangesDisposition_params___block_invoke_2(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 88));
    v3 = *(a1 + 32);
    v4 = NSStringFromSelector(sel__checkForCommentChangesDisposition_params_);
    LOBYTE(v3) = [WeakRetained workQueueEndCommandWithError:v3 command:v4 params:*(a1 + 40) albumGUID:*(a1 + 48) assetCollectionGUID:0];

    if ((v3 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v14 = objc_loadWeakRetained((a1 + 88));
        v15 = *(a1 + 48);
        v16 = *(a1 + 56);
        v17 = [*(a1 + 32) MSVerboseDescription];
        *buf = 138544130;
        v34 = v14;
        v35 = 2114;
        v36 = v16;
        v37 = 2114;
        v38 = v15;
        v39 = 2114;
        v40 = v17;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to check for comment changes in asset collections %{public}@ in album %{public}@. Error: %{public}@", buf, 0x2Au);
      }

      v5 = [*(a1 + 64) eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __62__MSASStateMachine__checkForCommentChangesDisposition_params___block_invoke_189;
      block[3] = &unk_278E912C8;
      v29 = *(a1 + 72);
      objc_copyWeak(&v32, (a1 + 88));
      v30 = *(a1 + 80);
      v31 = *(a1 + 32);
      dispatch_async(v5, block);

      v6 = objc_loadWeakRetained((a1 + 88));
      [v6 workQueueDidFinishCommand];

      objc_destroyWeak(&v32);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = objc_loadWeakRetained((a1 + 88));
      v9 = *(a1 + 48);
      v8 = *(a1 + 56);
      *buf = 138543874;
      v34 = v7;
      v35 = 2114;
      v36 = v8;
      v37 = 2114;
      v38 = v9;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Successfully checked for comment changes %{public}@ in album %{public}@.", buf, 0x20u);
    }

    v10 = [*(a1 + 64) memberQueue];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __62__MSASStateMachine__checkForCommentChangesDisposition_params___block_invoke_190;
    v27[3] = &unk_278E926D8;
    v27[4] = *(a1 + 64);
    dispatch_barrier_sync(v10, v27);

    v11 = [*(a1 + 64) eventQueue];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __62__MSASStateMachine__checkForCommentChangesDisposition_params___block_invoke_2_191;
    v21 = &unk_278E911B0;
    objc_copyWeak(&v26, (a1 + 88));
    v22 = *(a1 + 72);
    v23 = *(a1 + 56);
    v24 = *(a1 + 48);
    v25 = *(a1 + 80);
    dispatch_async(v11, &v18);

    v12 = objc_loadWeakRetained((a1 + 88));
    [v12 workQueueDidFinishCommand];

    objc_destroyWeak(&v26);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __62__MSASStateMachine__checkForCommentChangesDisposition_params___block_invoke_189(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) allKeys];
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
        WeakRetained = objc_loadWeakRetained((a1 + 56));
        v9 = [WeakRetained delegate];
        v10 = objc_loadWeakRetained((a1 + 56));
        [v9 MSASStateMachine:v10 didFinishCheckingForCommentChangesInAssetCollectionWithGUID:v7 largestCommentID:0 info:*(a1 + 40) error:*(a1 + 48)];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __62__MSASStateMachine__checkForCommentChangesDisposition_params___block_invoke_2_191(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained daemon];
  v4 = objc_loadWeakRetained((a1 + 64));
  v5 = [v4 personID];
  [v3 didReceiveAuthSuccessForPersonID:v5];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__MSASStateMachine__checkForCommentChangesDisposition_params___block_invoke_3;
  v7[3] = &unk_278E912F0;
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  objc_copyWeak(&v11, (a1 + 64));
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  [v6 enumerateKeysAndObjectsUsingBlock:v7];

  objc_destroyWeak(&v11);
}

void __62__MSASStateMachine__checkForCommentChangesDisposition_params___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKey:v5];
  v8 = [v7 intValue];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        if ([v14 type] == 2)
        {
          if ([v14 deletionIndex] > v8)
          {
            v8 = [v14 deletionIndex];
          }
        }

        else
        {
          v15 = [v14 comment];
          v16 = [v15 ID];

          if (v16 > v8)
          {
            v17 = [v14 comment];
            v8 = [v17 ID];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v19 = [WeakRetained delegate];
  v20 = objc_loadWeakRetained((a1 + 56));
  [v19 MSASStateMachine:v20 didFindCommentChanges:v9 inAssetCollectionWithGUID:v5 inAlbumWithGUID:*(a1 + 40) info:*(a1 + 48)];

  v21 = objc_loadWeakRetained((a1 + 56));
  v22 = [v21 delegate];
  v23 = objc_loadWeakRetained((a1 + 56));
  [v22 MSASStateMachine:v23 didFinishCheckingForCommentChangesInAssetCollectionWithGUID:v5 largestCommentID:v8 info:*(a1 + 48) error:0];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)checkForCommentChanges:(id)a3 inAlbumWithGUID:(id)a4 withClientOrgKey:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MSASStateMachine *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __76__MSASStateMachine_checkForCommentChanges_inAlbumWithGUID_withClientOrgKey___block_invoke;
  v15[3] = &unk_278E92660;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __76__MSASStateMachine_checkForCommentChanges_inAlbumWithGUID_withClientOrgKey___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v14 = 138543874;
    v15 = v2;
    v16 = 2114;
    v17 = v3;
    v18 = 2114;
    v19 = v4;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Scheduling checking for comment changes %{public}@ in album %{public}@.", &v14, 0x20u);
  }

  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = v5;
  v7 = *(a1 + 40);
  if (v7)
  {
    [v5 setObject:v7 forKey:@"commentsChange"];
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    [v6 setObject:v8 forKey:@"albumGUID"];
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    [v6 setObject:v9 forKey:@"clientOrgKey"];
  }

  v10 = [*(a1 + 32) _model];
  v11 = NSStringFromSelector(sel__checkForCommentChangesDisposition_params_);
  v12 = [*(a1 + 32) personID];
  [v10 enqueueCommand:v11 params:v6 personID:v12 albumGUID:*(a1 + 48) assetCollectionGUID:0];

  [*(a1 + 32) workQueueRetryOutstandingActivities];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_checkForAssetCollectionUpdatesDisposition:(int)a3 params:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(MSASStateMachine *)self _albumForRequestFromParams:v6];
  v8 = [v6 objectForKey:@"assetCollections"];
  v9 = [v6 objectForKey:@"info"];
  v10 = [v6 objectForKey:@"error"];
  v11 = [v6 objectForKey:@"commandWasRequeued"];
  v12 = [v11 BOOLValue];

  if (a3 == 2)
  {
    v14 = [(MSASStateMachine *)self eventQueue];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __70__MSASStateMachine__checkForAssetCollectionUpdatesDisposition_params___block_invoke_2_185;
    v25[3] = &unk_278E92660;
    v25[4] = self;
    v26 = v8;
    v27 = v7;
    v28 = v9;
    dispatch_async(v14, v25);
  }

  else if (!a3)
  {
    if (v10)
    {
      v13 = [(MSASStateMachine *)self eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __70__MSASStateMachine__checkForAssetCollectionUpdatesDisposition_params___block_invoke;
      block[3] = &unk_278E92688;
      block[4] = self;
      v39 = v8;
      v40 = v7;
      v41 = v9;
      v42 = v10;
      dispatch_async(v13, block);

      [(MSASStateMachine *)self workQueueDidFinishCommand];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v15 = [v8 count];
        v16 = [v7 GUID];
        *buf = 138543874;
        v44 = self;
        v45 = 2048;
        v46 = v15;
        v47 = 2114;
        v48 = v16;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Getting metadata for %ld photos in album %{public}@.", buf, 0x20u);
      }

      v17 = [(MSASStateMachine *)self protocol];
      v18 = [v17 stopHandlerBlock];
      [(MSASStateMachine *)self _setStopHandlerBlock:v18];

      if ((v12 & 1) == 0)
      {
        v19 = [(MSASStateMachine *)self eventQueue];
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __70__MSASStateMachine__checkForAssetCollectionUpdatesDisposition_params___block_invoke_178;
        v34[3] = &unk_278E92660;
        v34[4] = self;
        v35 = v8;
        v36 = v7;
        v37 = v9;
        dispatch_async(v19, v34);
      }

      objc_initWeak(buf, self);
      v20 = [(MSASStateMachine *)self delegate];
      v21 = [v7 GUID];
      v22 = [v20 MSASStateMachineDidRequestAlbumURLStringForAlbumWithGUID:v21 info:v9];

      v23 = [(MSASStateMachine *)self protocol];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __70__MSASStateMachine__checkForAssetCollectionUpdatesDisposition_params___block_invoke_2;
      v29[3] = &unk_278E91290;
      v29[4] = self;
      objc_copyWeak(&v33, buf);
      v30 = v6;
      v31 = v7;
      v32 = v9;
      [v23 getAssetCollections:v8 inAlbum:v31 albumURLString:v22 completionBlock:v29];

      objc_destroyWeak(&v33);
      objc_destroyWeak(buf);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __70__MSASStateMachine__checkForAssetCollectionUpdatesDisposition_params___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) didFinishUpdatingAssetCollections:*(a1 + 40) inAlbum:*(a1 + 48) info:*(a1 + 56) error:*(a1 + 64)];
}

void __70__MSASStateMachine__checkForAssetCollectionUpdatesDisposition_params___block_invoke_178(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) willUpdateAssetCollections:*(a1 + 40) inAlbum:*(a1 + 48) info:*(a1 + 56)];
}

void __70__MSASStateMachine__checkForAssetCollectionUpdatesDisposition_params___block_invoke_2(id *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a4;
  v10 = a5;
  v11 = [a1[4] workQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __70__MSASStateMachine__checkForAssetCollectionUpdatesDisposition_params___block_invoke_3;
  v17[3] = &unk_278E91268;
  v18 = v8;
  v12 = v8;
  objc_copyWeak(&v25, a1 + 8);
  v19 = a1[5];
  v13 = a1[6];
  v14 = a1[4];
  v20 = v13;
  v21 = v14;
  v22 = v9;
  v23 = a1[7];
  v24 = v10;
  v15 = v10;
  v16 = v9;
  dispatch_async(v11, v17);

  objc_destroyWeak(&v25);
}

void __70__MSASStateMachine__checkForAssetCollectionUpdatesDisposition_params___block_invoke_2_185(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) willUpdateAssetCollections:*(a1 + 40) inAlbum:*(a1 + 48) info:*(a1 + 56)];

  v8 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = [v3 _canceledError];
  [v8 MSASStateMachine:v3 didFinishUpdatingAssetCollections:v4 inAlbum:v6 info:v5 error:v7];
}

void __70__MSASStateMachine__checkForAssetCollectionUpdatesDisposition_params___block_invoke_3(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 88));
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = [*(a1 + 48) GUID];
    LOBYTE(v3) = [WeakRetained workQueueEndCommandWithError:v4 command:0 params:v3 albumGUID:v5 assetCollectionGUID:0];

    if ((v3 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v25 = objc_loadWeakRetained((a1 + 88));
        v26 = [*(a1 + 32) MSVerboseDescription];
        *buf = 138543618;
        v35 = v25;
        v36 = 2114;
        v37 = v26;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to get metadata. Error: %{public}@", buf, 0x16u);
      }

      v6 = [*(a1 + 56) eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __70__MSASStateMachine__checkForAssetCollectionUpdatesDisposition_params___block_invoke_179;
      block[3] = &unk_278E911B0;
      objc_copyWeak(&v33, (a1 + 88));
      v29 = *(a1 + 64);
      v30 = *(a1 + 48);
      v31 = *(a1 + 72);
      v32 = *(a1 + 32);
      dispatch_async(v6, block);

      v7 = objc_loadWeakRetained((a1 + 88));
      [v7 workQueueDidFinishCommand];

      objc_destroyWeak(&v33);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = objc_loadWeakRetained((a1 + 88));
      *buf = 138543362;
      v35 = v8;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Successfully checked for asset collection updates.", buf, 0xCu);
    }

    v9 = [*(a1 + 56) memberQueue];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __70__MSASStateMachine__checkForAssetCollectionUpdatesDisposition_params___block_invoke_180;
    v27[3] = &unk_278E926D8;
    v27[4] = *(a1 + 56);
    dispatch_barrier_sync(v9, v27);

    v10 = objc_loadWeakRetained((a1 + 88));
    v11 = [v10 daemon];
    v12 = objc_loadWeakRetained((a1 + 88));
    v13 = [v12 personID];
    [v11 didReceiveAuthSuccessForPersonID:v13];

    v14 = objc_loadWeakRetained((a1 + 88));
    v15 = [v14 delegate];
    v16 = objc_loadWeakRetained((a1 + 88));
    [v15 MSASStateMachine:v16 didFinishUpdatingAssetCollections:*(a1 + 64) inAlbum:*(a1 + 48) info:*(a1 + 72) error:*(a1 + 32)];

    if ([*(a1 + 80) count])
    {
      v17 = MEMORY[0x277CCA9B8];
      v18 = MSCFCopyLocalizedString(@"ERROR_MSAS_SUB_NO_METADATA");
      v19 = [v17 MSErrorWithDomain:@"MSASSubscriberErrorDomain" code:1 description:v18];

      v20 = objc_loadWeakRetained((a1 + 88));
      v21 = [v20 delegate];
      v22 = objc_loadWeakRetained((a1 + 88));
      [v21 MSASStateMachine:v22 didFinishUpdatingAssetCollections:*(a1 + 80) inAlbum:*(a1 + 48) info:*(a1 + 72) error:v19];
    }

    v23 = objc_loadWeakRetained((a1 + 88));
    [v23 workQueueDidFinishCommand];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __70__MSASStateMachine__checkForAssetCollectionUpdatesDisposition_params___block_invoke_179(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 64));
  [v2 MSASStateMachine:v3 didFinishUpdatingAssetCollections:*(a1 + 32) inAlbum:*(a1 + 40) info:*(a1 + 48) error:*(a1 + 56)];
}

- (void)checkForAssetCollectionUpdates:(id)a3 inAlbum:(id)a4 info:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MSASStateMachine *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__MSASStateMachine_checkForAssetCollectionUpdates_inAlbum_info___block_invoke;
  v15[3] = &unk_278E92660;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __64__MSASStateMachine_checkForAssetCollectionUpdates_inAlbum_info___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 40) count];
    v4 = [*(a1 + 48) GUID];
    v15 = 138543874;
    v16 = v2;
    v17 = 2048;
    v18 = v3;
    v19 = 2114;
    v20 = v4;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Scheduling update of metadata for %ld photos in album %{public}@", &v15, 0x20u);
  }

  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = v5;
  v7 = *(a1 + 40);
  if (v7)
  {
    [v5 setObject:v7 forKey:@"assetCollections"];
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    [v6 setObject:v8 forKey:@"album"];
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    [v6 setObject:v9 forKey:@"info"];
  }

  v10 = [*(a1 + 32) _model];
  v11 = NSStringFromSelector(sel__checkForAssetCollectionUpdatesDisposition_params_);
  v12 = [*(a1 + 32) personID];
  v13 = [*(a1 + 48) GUID];
  [v10 enqueueCommand:v11 params:v6 personID:v12 albumGUID:v13 assetCollectionGUID:0];

  [*(a1 + 32) workQueueRetryOutstandingActivities];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)validateInvitationForAlbum:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__MSASStateMachine_validateInvitationForAlbum_completionBlock___block_invoke;
  block[3] = &unk_278E91E38;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __63__MSASStateMachine_validateInvitationForAlbum_completionBlock___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    *buf = 138543362;
    v9 = v2;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Validating invitation token.", buf, 0xCu);
  }

  v3 = [*(a1 + 32) protocol];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__MSASStateMachine_validateInvitationForAlbum_completionBlock___block_invoke_174;
  v6[3] = &unk_278E91DE8;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = *(a1 + 48);
  [v3 validateInvitationForAlbum:v4 completionBlock:v6];

  v5 = *MEMORY[0x277D85DE8];
}

void __63__MSASStateMachine_validateInvitationForAlbum_completionBlock___block_invoke_174(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__MSASStateMachine_validateInvitationForAlbum_completionBlock___block_invoke_2;
  block[3] = &unk_278E92778;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)acceptInvitationWithToken:(id)a3 info:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MSASStateMachine *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__MSASStateMachine_acceptInvitationWithToken_info_completionBlock___block_invoke;
  v15[3] = &unk_278E916F0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __67__MSASStateMachine_acceptInvitationWithToken_info_completionBlock___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    *buf = 138543362;
    v10 = v2;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Accepting invitation using token.", buf, 0xCu);
  }

  v3 = [*(a1 + 32) protocol];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__MSASStateMachine_acceptInvitationWithToken_info_completionBlock___block_invoke_173;
  v6[3] = &unk_278E91238;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v8 = *(a1 + 56);
  v7 = *(a1 + 48);
  [v3 acceptInvitationWithToken:v4 completionBlock:v6];

  v5 = *MEMORY[0x277D85DE8];
}

void __67__MSASStateMachine_acceptInvitationWithToken_info_completionBlock___block_invoke_173(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__MSASStateMachine_acceptInvitationWithToken_info_completionBlock___block_invoke_2;
  block[3] = &unk_278E91E38;
  v9 = a1[6];
  v7 = a1[5];
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

- (void)_markAsSpamInvitationForTokenDisposition:(int)a3 params:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [v6 objectForKeyedSubscript:@"info"];
  v8 = [v6 objectForKeyedSubscript:@"invitationToken"];
  if (a3 == 2)
  {
    v12 = [(MSASStateMachine *)self eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__MSASStateMachine__markAsSpamInvitationForTokenDisposition_params___block_invoke_3;
    block[3] = &unk_278E92638;
    block[4] = self;
    v15 = v8;
    v16 = v7;
    dispatch_async(v12, block);
  }

  else if (!a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v23 = self;
      v24 = 2114;
      v25 = v8;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Marking as spam invitation for token %{public}@", buf, 0x16u);
    }

    v9 = [(MSASStateMachine *)self protocol];
    v10 = [v9 stopHandlerBlock];
    [(MSASStateMachine *)self _setStopHandlerBlock:v10];

    objc_initWeak(buf, self);
    v11 = [(MSASStateMachine *)self protocol];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __68__MSASStateMachine__markAsSpamInvitationForTokenDisposition_params___block_invoke;
    v17[3] = &unk_278E91210;
    objc_copyWeak(&v21, buf);
    v18 = v8;
    v19 = self;
    v20 = v7;
    [v11 markAsSpamInvitationForToken:v18 completionBlock:v17];

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __68__MSASStateMachine__markAsSpamInvitationForTokenDisposition_params___block_invoke(id *a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 7);
    v5 = [WeakRetained workQueueEndCommandWithError:v3 command:0 params:0 albumGUID:0 assetCollectionGUID:0];

    if ((v5 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v14 = objc_loadWeakRetained(a1 + 7);
        v15 = a1[4];
        *buf = 138543874;
        v28 = v14;
        v29 = 2114;
        v30 = v15;
        v31 = 2114;
        v32 = v3;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to mark as spam invitation for token %{public}@. Error: %{public}@", buf, 0x20u);
      }

      v6 = [a1[5] eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __68__MSASStateMachine__markAsSpamInvitationForTokenDisposition_params___block_invoke_171;
      block[3] = &unk_278E912C8;
      objc_copyWeak(&v26, a1 + 7);
      v23 = a1[4];
      v24 = a1[6];
      v25 = v3;
      dispatch_async(v6, block);

      v7 = objc_loadWeakRetained(a1 + 7);
      [v7 workQueueDidFinishCommand];

      objc_destroyWeak(&v26);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = objc_loadWeakRetained(a1 + 7);
      v9 = a1[4];
      *buf = 138543618;
      v28 = v8;
      v29 = 2114;
      v30 = v9;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Successfully marked as spam invitation for token %{public}@", buf, 0x16u);
    }

    v10 = [a1[5] memberQueue];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __68__MSASStateMachine__markAsSpamInvitationForTokenDisposition_params___block_invoke_172;
    v21[3] = &unk_278E926D8;
    v21[4] = a1[5];
    dispatch_barrier_sync(v10, v21);

    v11 = [a1[5] eventQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __68__MSASStateMachine__markAsSpamInvitationForTokenDisposition_params___block_invoke_2;
    v16[3] = &unk_278E912C8;
    objc_copyWeak(&v20, a1 + 7);
    v17 = a1[4];
    v18 = a1[6];
    v19 = 0;
    dispatch_async(v11, v16);

    v12 = objc_loadWeakRetained(a1 + 7);
    [v12 workQueueDidFinishCommand];

    objc_destroyWeak(&v20);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __68__MSASStateMachine__markAsSpamInvitationForTokenDisposition_params___block_invoke_3(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v2 _canceledError];
  [v6 MSASStateMachine:v2 didFinishMarkingAsSpamInvitationForToken:v3 info:v4 error:v5];
}

void __68__MSASStateMachine__markAsSpamInvitationForTokenDisposition_params___block_invoke_171(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 56));
  [v2 MSASStateMachine:v3 didFinishMarkingAsSpamInvitationForToken:*(a1 + 32) info:*(a1 + 40) error:*(a1 + 48)];
}

void __68__MSASStateMachine__markAsSpamInvitationForTokenDisposition_params___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained daemon];
  v4 = objc_loadWeakRetained((a1 + 56));
  v5 = [v4 personID];
  [v3 didReceiveAuthSuccessForPersonID:v5];

  v8 = objc_loadWeakRetained((a1 + 56));
  v6 = [v8 delegate];
  v7 = objc_loadWeakRetained((a1 + 56));
  [v6 MSASStateMachine:v7 didFinishMarkingAsSpamInvitationForToken:*(a1 + 32) info:*(a1 + 40) error:*(a1 + 48)];
}

- (void)markAsSpamInvitationForToken:(id)a3 info:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__MSASStateMachine_markAsSpamInvitationForToken_info___block_invoke;
  block[3] = &unk_278E92638;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __54__MSASStateMachine_markAsSpamInvitationForToken_info___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v9 = 138543618;
    v10 = v2;
    v11 = 2114;
    v12 = v3;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Scheduling mark as spam invitation for token %{public}@", &v9, 0x16u);
  }

  v4 = [MEMORY[0x277CBEB38] dictionary];
  [v4 setObject:*(a1 + 48) forKeyedSubscript:@"info"];
  [v4 setObject:*(a1 + 40) forKeyedSubscript:@"invitationToken"];
  v5 = [*(a1 + 32) _model];
  v6 = NSStringFromSelector(sel__markAsSpamInvitationForTokenDisposition_params_);
  v7 = [*(a1 + 32) personID];
  [v5 enqueueCommand:v6 params:v4 personID:v7 albumGUID:0 assetCollectionGUID:0];

  [*(a1 + 32) workQueueRetryOutstandingActivities];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_markAsSpamInvitationForAlbumDisposition:(int)a3 params:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [v6 objectForKeyedSubscript:@"album"];
  v8 = [v6 objectForKeyedSubscript:@"info"];
  v9 = [v6 objectForKeyedSubscript:@"sharingRelationshipGUID"];
  if (a3 == 2)
  {
    v13 = [(MSASStateMachine *)self eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__MSASStateMachine__markAsSpamInvitationForAlbumDisposition_params___block_invoke_3;
    block[3] = &unk_278E92660;
    block[4] = self;
    v16 = v7;
    v17 = v9;
    v18 = v8;
    dispatch_async(v13, block);
  }

  else if (!a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v26 = self;
      v27 = 2114;
      v28 = v7;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Marking as spam invitation for album %{public}@", buf, 0x16u);
    }

    v10 = [(MSASStateMachine *)self protocol];
    v11 = [v10 stopHandlerBlock];
    [(MSASStateMachine *)self _setStopHandlerBlock:v11];

    objc_initWeak(buf, self);
    v12 = [(MSASStateMachine *)self protocol];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __68__MSASStateMachine__markAsSpamInvitationForAlbumDisposition_params___block_invoke;
    v19[3] = &unk_278E911E0;
    objc_copyWeak(&v24, buf);
    v20 = v7;
    v21 = self;
    v22 = v9;
    v23 = v8;
    [v12 markAsSpamInvitationForAlbum:v20 completionBlock:v19];

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __68__MSASStateMachine__markAsSpamInvitationForAlbumDisposition_params___block_invoke(id *a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 8);
    v5 = [a1[4] GUID];
    v6 = [WeakRetained workQueueEndCommandWithError:v3 command:0 params:0 albumGUID:v5 assetCollectionGUID:0];

    if ((v6 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v15 = objc_loadWeakRetained(a1 + 8);
        v16 = a1[4];
        *buf = 138543874;
        v33 = v15;
        v34 = 2114;
        v35 = v16;
        v36 = 2114;
        v37 = v3;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to mark as spam invitation for album %{public}@. Error: %{public}@", buf, 0x20u);
      }

      v7 = [a1[5] eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __68__MSASStateMachine__markAsSpamInvitationForAlbumDisposition_params___block_invoke_167;
      block[3] = &unk_278E911B0;
      objc_copyWeak(&v31, a1 + 8);
      v27 = a1[4];
      v28 = a1[6];
      v29 = a1[7];
      v30 = v3;
      dispatch_async(v7, block);

      v8 = objc_loadWeakRetained(a1 + 8);
      [v8 workQueueDidFinishCommand];

      objc_destroyWeak(&v31);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = objc_loadWeakRetained(a1 + 8);
      v10 = a1[4];
      *buf = 138543618;
      v33 = v9;
      v34 = 2114;
      v35 = v10;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Successfully marked as spam invitation for album %{public}@", buf, 0x16u);
    }

    v11 = [a1[5] memberQueue];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __68__MSASStateMachine__markAsSpamInvitationForAlbumDisposition_params___block_invoke_168;
    v25[3] = &unk_278E926D8;
    v25[4] = a1[5];
    dispatch_barrier_sync(v11, v25);

    v12 = [a1[5] eventQueue];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __68__MSASStateMachine__markAsSpamInvitationForAlbumDisposition_params___block_invoke_2;
    v20 = &unk_278E912C8;
    objc_copyWeak(&v24, a1 + 8);
    v21 = a1[4];
    v22 = a1[6];
    v23 = a1[7];
    dispatch_async(v12, &v17);

    v13 = objc_loadWeakRetained(a1 + 8);
    [v13 workQueueDidFinishCommand];

    objc_destroyWeak(&v24);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __68__MSASStateMachine__markAsSpamInvitationForAlbumDisposition_params___block_invoke_3(uint64_t a1)
{
  v7 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6 = [v2 _canceledError];
  [v7 MSASStateMachine:v2 didFinishMarkingAsSpamInvitationForAlbum:v3 invitationGUID:v5 info:v4 error:v6];
}

void __68__MSASStateMachine__markAsSpamInvitationForAlbumDisposition_params___block_invoke_167(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 64));
  [v2 MSASStateMachine:v3 didFinishMarkingAsSpamInvitationForAlbum:*(a1 + 32) invitationGUID:*(a1 + 40) info:*(a1 + 48) error:*(a1 + 56)];
}

void __68__MSASStateMachine__markAsSpamInvitationForAlbumDisposition_params___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained daemon];
  v4 = objc_loadWeakRetained((a1 + 56));
  v5 = [v4 personID];
  [v3 didReceiveAuthSuccessForPersonID:v5];

  v8 = objc_loadWeakRetained((a1 + 56));
  v6 = [v8 delegate];
  v7 = objc_loadWeakRetained((a1 + 56));
  [v6 MSASStateMachine:v7 didFinishMarkingAsSpamInvitationForAlbum:*(a1 + 32) invitationGUID:*(a1 + 40) info:*(a1 + 48) error:0];
}

- (void)markAsSpamInvitationForAlbum:(id)a3 invitationGUID:(id)a4 info:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MSASStateMachine *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__MSASStateMachine_markAsSpamInvitationForAlbum_invitationGUID_info___block_invoke;
  v15[3] = &unk_278E92660;
  v15[4] = self;
  v16 = v8;
  v17 = v10;
  v18 = v9;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __69__MSASStateMachine_markAsSpamInvitationForAlbum_invitationGUID_info___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v10 = 138543618;
    v11 = v2;
    v12 = 2114;
    v13 = v3;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Scheduling mark as spam invitation for album %{public}@", &v10, 0x16u);
  }

  v4 = [MEMORY[0x277CBEB38] dictionary];
  [v4 setObject:*(a1 + 40) forKeyedSubscript:@"album"];
  [v4 setObject:*(a1 + 48) forKeyedSubscript:@"info"];
  [v4 setObject:*(a1 + 56) forKeyedSubscript:@"sharingRelationshipGUID"];
  v5 = [*(a1 + 32) _model];
  v6 = NSStringFromSelector(sel__markAsSpamInvitationForAlbumDisposition_params_);
  v7 = [*(a1 + 32) personID];
  v8 = [*(a1 + 40) GUID];
  [v5 enqueueCommand:v6 params:v4 personID:v7 albumGUID:v8 assetCollectionGUID:0];

  [*(a1 + 32) workQueueRetryOutstandingActivities];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_unsubscribeFromAlbumDisposition:(int)a3 params:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(MSASStateMachine *)self _albumForRequestFromParams:v6];
  v8 = [v6 objectForKey:@"info"];
  if (a3 == 2)
  {
    v12 = [(MSASStateMachine *)self eventQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __60__MSASStateMachine__unsubscribeFromAlbumDisposition_params___block_invoke_3;
    v14[3] = &unk_278E92638;
    v14[4] = self;
    v15 = v7;
    v16 = v8;
    dispatch_async(v12, v14);
  }

  else if (!a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v23 = self;
      v24 = 2114;
      v25 = v7;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Unsubscribing from album %{public}@", buf, 0x16u);
    }

    v9 = [(MSASStateMachine *)self protocol];
    v10 = [v9 stopHandlerBlock];
    [(MSASStateMachine *)self _setStopHandlerBlock:v10];

    objc_initWeak(buf, self);
    v11 = [(MSASStateMachine *)self protocol];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __60__MSASStateMachine__unsubscribeFromAlbumDisposition_params___block_invoke;
    v17[3] = &unk_278E911E0;
    v17[4] = self;
    objc_copyWeak(&v21, buf);
    v18 = v6;
    v19 = v7;
    v20 = v8;
    [v11 unsubscribeFromAlbum:v19 completionBlock:v17];

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __60__MSASStateMachine__unsubscribeFromAlbumDisposition_params___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__MSASStateMachine__unsubscribeFromAlbumDisposition_params___block_invoke_2;
  block[3] = &unk_278E91340;
  v13 = v3;
  v5 = v3;
  objc_copyWeak(&v16, a1 + 8);
  v6 = a1[5];
  v7 = a1[6];
  v11 = a1[4];
  v8 = a1[7];
  *&v9 = v11;
  *(&v9 + 1) = v8;
  *&v10 = v6;
  *(&v10 + 1) = v7;
  v14 = v10;
  v15 = v9;
  dispatch_async(v4, block);

  objc_destroyWeak(&v16);
}

void __60__MSASStateMachine__unsubscribeFromAlbumDisposition_params___block_invoke_3(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v2 _canceledError];
  [v6 MSASStateMachine:v2 didFinishUnsubscribingFromAlbum:v3 info:v4 error:v5];
}

void __60__MSASStateMachine__unsubscribeFromAlbumDisposition_params___block_invoke_2(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = [*(a1 + 48) GUID];
    LOBYTE(v3) = [WeakRetained workQueueEndCommandWithError:v4 command:0 params:v3 albumGUID:v5 assetCollectionGUID:0];

    if ((v3 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v14 = objc_loadWeakRetained((a1 + 72));
        v15 = *(a1 + 48);
        v16 = *(a1 + 32);
        *buf = 138543874;
        v31 = v14;
        v32 = 2114;
        v33 = v15;
        v34 = 2114;
        v35 = v16;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to unsubscribe from album %{public}@. Error: %{public}@", buf, 0x20u);
      }

      v6 = [*(a1 + 56) eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__MSASStateMachine__unsubscribeFromAlbumDisposition_params___block_invoke_162;
      block[3] = &unk_278E912C8;
      objc_copyWeak(&v29, (a1 + 72));
      v26 = *(a1 + 48);
      v27 = *(a1 + 64);
      v28 = *(a1 + 32);
      dispatch_async(v6, block);

      v7 = objc_loadWeakRetained((a1 + 72));
      [v7 workQueueDidFinishCommand];

      objc_destroyWeak(&v29);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = objc_loadWeakRetained((a1 + 72));
      v9 = *(a1 + 48);
      *buf = 138543618;
      v31 = v8;
      v32 = 2114;
      v33 = v9;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Successfully unsubscribed from album %{public}@", buf, 0x16u);
    }

    v10 = [*(a1 + 56) memberQueue];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __60__MSASStateMachine__unsubscribeFromAlbumDisposition_params___block_invoke_163;
    v24[3] = &unk_278E926D8;
    v24[4] = *(a1 + 56);
    dispatch_barrier_sync(v10, v24);

    v11 = [*(a1 + 56) eventQueue];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __60__MSASStateMachine__unsubscribeFromAlbumDisposition_params___block_invoke_2_164;
    v20 = &unk_278E917C0;
    objc_copyWeak(&v23, (a1 + 72));
    v21 = *(a1 + 48);
    v22 = *(a1 + 64);
    dispatch_async(v11, &v17);

    v12 = objc_loadWeakRetained((a1 + 72));
    [v12 workQueueDidFinishCommand];

    objc_destroyWeak(&v23);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __60__MSASStateMachine__unsubscribeFromAlbumDisposition_params___block_invoke_162(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 56));
  [v2 MSASStateMachine:v3 didFinishUnsubscribingFromAlbum:*(a1 + 32) info:*(a1 + 40) error:*(a1 + 48)];
}

void __60__MSASStateMachine__unsubscribeFromAlbumDisposition_params___block_invoke_2_164(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained daemon];
  v4 = objc_loadWeakRetained((a1 + 48));
  v5 = [v4 personID];
  [v3 didReceiveAuthSuccessForPersonID:v5];

  v8 = objc_loadWeakRetained((a1 + 48));
  v6 = [v8 delegate];
  v7 = objc_loadWeakRetained((a1 + 48));
  [v6 MSASStateMachine:v7 didFinishUnsubscribingFromAlbum:*(a1 + 32) info:*(a1 + 40) error:0];
}

- (void)unsubscribeFromAlbum:(id)a3 info:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__MSASStateMachine_unsubscribeFromAlbum_info___block_invoke;
  block[3] = &unk_278E92638;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __46__MSASStateMachine_unsubscribeFromAlbum_info___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v13 = 138543618;
    v14 = v2;
    v15 = 2114;
    v16 = v3;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Scheduling unsubscription from album %{public}@", &v13, 0x16u);
  }

  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6)
  {
    [v4 setObject:v6 forKey:@"album"];
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    [v5 setObject:v7 forKey:@"info"];
  }

  v8 = [*(a1 + 32) _model];
  v9 = NSStringFromSelector(sel__unsubscribeFromAlbumDisposition_params_);
  v10 = [*(a1 + 32) personID];
  v11 = [*(a1 + 40) GUID];
  [v8 enqueueCommand:v9 params:v5 personID:v10 albumGUID:v11 assetCollectionGUID:0];

  [*(a1 + 32) workQueueRetryOutstandingActivities];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_subscribeToAlbumDisposition:(int)a3 params:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(MSASStateMachine *)self _albumForRequestFromParams:v6];
  v8 = [v6 objectForKey:@"info"];
  if (a3 == 2)
  {
    v12 = [(MSASStateMachine *)self eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__MSASStateMachine__subscribeToAlbumDisposition_params___block_invoke_3;
    block[3] = &unk_278E92638;
    block[4] = self;
    v15 = v7;
    v16 = v8;
    dispatch_async(v12, block);
  }

  else if (!a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v22 = self;
      v23 = 2114;
      v24 = v7;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Subscribing to album %{public}@", buf, 0x16u);
    }

    v9 = [(MSASStateMachine *)self protocol];
    v10 = [v9 stopHandlerBlock];
    [(MSASStateMachine *)self _setStopHandlerBlock:v10];

    objc_initWeak(buf, self);
    v11 = [(MSASStateMachine *)self protocol];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __56__MSASStateMachine__subscribeToAlbumDisposition_params___block_invoke;
    v17[3] = &unk_278E91210;
    v17[4] = self;
    objc_copyWeak(&v20, buf);
    v18 = v7;
    v19 = v8;
    [v11 subscribeToAlbum:v18 completionBlock:v17];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __56__MSASStateMachine__subscribeToAlbumDisposition_params___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__MSASStateMachine__subscribeToAlbumDisposition_params___block_invoke_2;
  block[3] = &unk_278E911B0;
  v9 = v3;
  v5 = v3;
  objc_copyWeak(&v13, a1 + 7);
  v6 = a1[5];
  v7 = a1[4];
  v10 = v6;
  v11 = v7;
  v12 = a1[6];
  dispatch_async(v4, block);

  objc_destroyWeak(&v13);
}

void __56__MSASStateMachine__subscribeToAlbumDisposition_params___block_invoke_3(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v2 _canceledError];
  [v6 MSASStateMachine:v2 didFinishSubscribingToAlbum:v3 info:v4 error:v5];
}

void __56__MSASStateMachine__subscribeToAlbumDisposition_params___block_invoke_2(id *a1)
{
  v35 = *MEMORY[0x277D85DE8];
  if (a1[4])
  {
    WeakRetained = objc_loadWeakRetained(a1 + 8);
    v3 = a1[4];
    v4 = [a1[5] GUID];
    LOBYTE(v3) = [WeakRetained workQueueEndCommandWithError:v3 command:0 params:0 albumGUID:v4 assetCollectionGUID:0];

    if ((v3 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v13 = objc_loadWeakRetained(a1 + 8);
        v15 = a1[4];
        v14 = a1[5];
        *buf = 138543874;
        v30 = v13;
        v31 = 2114;
        v32 = v14;
        v33 = 2114;
        v34 = v15;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to subscribe to album %{public}@. Error: %{public}@", buf, 0x20u);
      }

      v5 = [a1[6] eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __56__MSASStateMachine__subscribeToAlbumDisposition_params___block_invoke_156;
      block[3] = &unk_278E912C8;
      objc_copyWeak(&v28, a1 + 8);
      v25 = a1[5];
      v26 = a1[7];
      v27 = a1[4];
      dispatch_async(v5, block);

      v6 = objc_loadWeakRetained(a1 + 8);
      [v6 workQueueDidFinishCommand];

      objc_destroyWeak(&v28);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = objc_loadWeakRetained(a1 + 8);
      v8 = a1[5];
      *buf = 138543618;
      v30 = v7;
      v31 = 2114;
      v32 = v8;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Successfully subscribed to album %{public}@", buf, 0x16u);
    }

    v9 = [a1[6] memberQueue];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __56__MSASStateMachine__subscribeToAlbumDisposition_params___block_invoke_157;
    v23[3] = &unk_278E926D8;
    v23[4] = a1[6];
    dispatch_barrier_sync(v9, v23);

    v10 = [a1[6] eventQueue];
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __56__MSASStateMachine__subscribeToAlbumDisposition_params___block_invoke_2_158;
    v19 = &unk_278E917C0;
    objc_copyWeak(&v22, a1 + 8);
    v20 = a1[5];
    v21 = a1[7];
    dispatch_async(v10, &v16);

    v11 = objc_loadWeakRetained(a1 + 8);
    [v11 workQueueDidFinishCommand];

    objc_destroyWeak(&v22);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __56__MSASStateMachine__subscribeToAlbumDisposition_params___block_invoke_156(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 56));
  [v2 MSASStateMachine:v3 didFinishSubscribingToAlbum:*(a1 + 32) info:*(a1 + 40) error:*(a1 + 48)];
}

void __56__MSASStateMachine__subscribeToAlbumDisposition_params___block_invoke_2_158(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained daemon];
  v4 = objc_loadWeakRetained((a1 + 48));
  v5 = [v4 personID];
  [v3 didReceiveAuthSuccessForPersonID:v5];

  v8 = objc_loadWeakRetained((a1 + 48));
  v6 = [v8 delegate];
  v7 = objc_loadWeakRetained((a1 + 48));
  [v6 MSASStateMachine:v7 didFinishSubscribingToAlbum:*(a1 + 32) info:*(a1 + 40) error:0];
}

- (void)subscribeToAlbum:(id)a3 info:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__MSASStateMachine_subscribeToAlbum_info___block_invoke;
  block[3] = &unk_278E92638;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __42__MSASStateMachine_subscribeToAlbum_info___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v13 = 138543618;
    v14 = v2;
    v15 = 2114;
    v16 = v3;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Scheduling subscription to album %{public}@", &v13, 0x16u);
  }

  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6)
  {
    [v4 setObject:v6 forKey:@"album"];
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    [v5 setObject:v7 forKey:@"info"];
  }

  v8 = [*(a1 + 32) _model];
  v9 = NSStringFromSelector(sel__subscribeToAlbumDisposition_params_);
  v10 = [*(a1 + 32) personID];
  v11 = [*(a1 + 40) GUID];
  [v8 enqueueCommand:v9 params:v5 personID:v10 albumGUID:v11 assetCollectionGUID:0];

  [*(a1 + 32) workQueueRetryOutstandingActivities];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_getAccessControlsDisposition:(int)a3 params:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(MSASStateMachine *)self _albumForRequestFromParams:v6];
  v8 = [v6 objectForKey:@"info"];
  v9 = [v6 objectForKey:@"error"];
  v10 = v9;
  if (a3 == 2)
  {
    v12 = [(MSASStateMachine *)self eventQueue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __57__MSASStateMachine__getAccessControlsDisposition_params___block_invoke_2_153;
    v20[3] = &unk_278E92638;
    v20[4] = self;
    v21 = v7;
    v22 = v8;
    dispatch_async(v12, v20);
  }

  else if (!a3)
  {
    if (v9)
    {
      v11 = [(MSASStateMachine *)self eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __57__MSASStateMachine__getAccessControlsDisposition_params___block_invoke;
      block[3] = &unk_278E92660;
      block[4] = self;
      v29 = v7;
      v30 = v8;
      v31 = v10;
      dispatch_async(v11, block);

      [(MSASStateMachine *)self workQueueDidFinishCommand];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v33 = self;
        v34 = 2114;
        v35 = v7;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Retrieving access controls for album %{public}@", buf, 0x16u);
      }

      v13 = [(MSASStateMachine *)self protocol];
      v14 = [v13 stopHandlerBlock];
      [(MSASStateMachine *)self _setStopHandlerBlock:v14];

      objc_initWeak(buf, self);
      v15 = [(MSASStateMachine *)self delegate];
      v16 = [v7 GUID];
      v17 = [v15 MSASStateMachineDidRequestAlbumURLStringForAlbumWithGUID:v16 info:v8];

      v18 = [(MSASStateMachine *)self protocol];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __57__MSASStateMachine__getAccessControlsDisposition_params___block_invoke_149;
      v23[3] = &unk_278E91188;
      v23[4] = self;
      objc_copyWeak(&v27, buf);
      v24 = v6;
      v25 = v7;
      v26 = v8;
      [v18 getSharingInfoForAlbum:v25 albumURLString:v17 completionBlock:v23];

      objc_destroyWeak(&v27);
      objc_destroyWeak(buf);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __57__MSASStateMachine__getAccessControlsDisposition_params___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) didFinishGettingAccessControls:0 forAlbum:*(a1 + 40) info:*(a1 + 48) error:*(a1 + 56)];
}

void __57__MSASStateMachine__getAccessControlsDisposition_params___block_invoke_149(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__MSASStateMachine__getAccessControlsDisposition_params___block_invoke_2;
  block[3] = &unk_278E913F0;
  v17 = v5;
  v8 = v5;
  objc_copyWeak(&v21, a1 + 8);
  v9 = a1[5];
  v10 = a1[6];
  v15 = a1[4];
  v11 = a1[7];
  *&v12 = v15;
  *(&v12 + 1) = v11;
  *&v13 = v9;
  *(&v13 + 1) = v10;
  v18 = v13;
  v19 = v12;
  v20 = v6;
  v14 = v6;
  dispatch_async(v7, block);

  objc_destroyWeak(&v21);
}

void __57__MSASStateMachine__getAccessControlsDisposition_params___block_invoke_2_153(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v2 _canceledError];
  [v6 MSASStateMachine:v2 didFinishGettingAccessControls:0 forAlbum:v3 info:v4 error:v5];
}

void __57__MSASStateMachine__getAccessControlsDisposition_params___block_invoke_2(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 80));
      v12 = [*(a1 + 72) count];
      v13 = *(a1 + 48);
      *buf = 138543874;
      v24 = WeakRetained;
      v25 = 2048;
      v26 = v12;
      v27 = 2114;
      v28 = v13;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Successfully retrieved %ld access control entries for album %{public}@", buf, 0x20u);
    }

    v14 = [*(a1 + 56) eventQueue];
    v8 = v19;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __57__MSASStateMachine__getAccessControlsDisposition_params___block_invoke_151;
    v19[3] = &unk_278E912C8;
    v9 = &v20;
    objc_copyWeak(&v20, (a1 + 80));
    v19[4] = *(a1 + 72);
    v19[5] = *(a1 + 48);
    v19[6] = *(a1 + 64);
    dispatch_async(v14, v19);

    v10 = objc_loadWeakRetained((a1 + 80));
    [v10 workQueueDidFinishCommand];
    goto LABEL_9;
  }

  v2 = objc_loadWeakRetained((a1 + 80));
  v3 = *(a1 + 32);
  v4 = NSStringFromSelector(sel__getAccessControlsDisposition_params_);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) GUID];
  LOBYTE(v3) = [v2 workQueueEndCommandWithError:v3 command:v4 params:v5 albumGUID:v6 assetCollectionGUID:0];

  if ((v3 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v16 = objc_loadWeakRetained((a1 + 80));
      v17 = *(a1 + 48);
      v18 = *(a1 + 32);
      *buf = 138543874;
      v24 = v16;
      v25 = 2114;
      v26 = v17;
      v27 = 2114;
      v28 = v18;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to retrieve access controls for album %{public}@. Error: %{public}@", buf, 0x20u);
    }

    v7 = [*(a1 + 56) eventQueue];
    v8 = block;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__MSASStateMachine__getAccessControlsDisposition_params___block_invoke_150;
    block[3] = &unk_278E912C8;
    v9 = &v22;
    objc_copyWeak(&v22, (a1 + 80));
    block[4] = *(a1 + 48);
    block[5] = *(a1 + 64);
    block[6] = *(a1 + 32);
    dispatch_async(v7, block);

    v10 = objc_loadWeakRetained((a1 + 80));
    [v10 workQueueDidFinishCommand];
LABEL_9:

    objc_destroyWeak(v9);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __57__MSASStateMachine__getAccessControlsDisposition_params___block_invoke_150(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 56));
  [v2 MSASStateMachine:v3 didFinishGettingAccessControls:0 forAlbum:*(a1 + 32) info:*(a1 + 40) error:*(a1 + 48)];
}

void __57__MSASStateMachine__getAccessControlsDisposition_params___block_invoke_151(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 56));
  [v2 MSASStateMachine:v3 didFinishGettingAccessControls:*(a1 + 32) forAlbum:*(a1 + 40) info:*(a1 + 48) error:0];
}

- (void)getAccessControlsForAlbums:(id)a3 info:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__MSASStateMachine_getAccessControlsForAlbums_info___block_invoke;
  block[3] = &unk_278E92638;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

uint64_t __52__MSASStateMachine_getAccessControlsForAlbums_info___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    *buf = 138543618;
    v27 = v2;
    v28 = 2114;
    v29 = v3;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Scheduling retrieval of ACL for albums %{public}@", buf, 0x16u);
  }

  v4 = [*(a1 + 32) _model];
  [v4 beginTransaction];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = *(a1 + 40);
  v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      v8 = 0;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * v8);
        v10 = [MEMORY[0x277CBEB38] dictionary];
        v11 = v10;
        if (v9)
        {
          [v10 setObject:v9 forKey:@"album"];
        }

        v12 = *(a1 + 48);
        if (v12)
        {
          [v11 setObject:v12 forKey:@"info"];
        }

        v13 = [*(a1 + 32) _model];
        v14 = NSStringFromSelector(sel__getAccessControlsDisposition_params_);
        v15 = [*(a1 + 32) personID];
        v16 = [v9 GUID];
        [v13 enqueueCommand:v14 params:v11 personID:v15 albumGUID:v16 assetCollectionGUID:0];

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  v17 = [*(a1 + 32) _model];
  [v17 endTransaction];

  result = [*(a1 + 32) workQueueRetryOutstandingActivities];
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_didFinishCheckingUpdatesInAlbumsDisposition:(int)a3 params:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [v6 objectForKey:@"albums"];
  v8 = [v6 objectForKey:@"info"];

  if (a3 == 2)
  {
    v12 = [(MSASStateMachine *)self eventQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __72__MSASStateMachine__didFinishCheckingUpdatesInAlbumsDisposition_params___block_invoke_2;
    v14[3] = &unk_278E92638;
    v14[4] = self;
    v10 = &v15;
    v15 = v7;
    v11 = &v16;
    v16 = v8;
    dispatch_async(v12, v14);

LABEL_7:
    goto LABEL_8;
  }

  if (!a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v21 = self;
      v22 = 2048;
      v23 = [v7 count];
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Finished checking for updates for %ld albums.", buf, 0x16u);
    }

    v9 = [(MSASStateMachine *)self eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__MSASStateMachine__didFinishCheckingUpdatesInAlbumsDisposition_params___block_invoke;
    block[3] = &unk_278E92638;
    block[4] = self;
    v10 = &v18;
    v18 = v7;
    v11 = &v19;
    v19 = v8;
    dispatch_async(v9, block);

    [(MSASStateMachine *)self workQueueDidFinishCommand];
    goto LABEL_7;
  }

LABEL_8:

  v13 = *MEMORY[0x277D85DE8];
}

void __72__MSASStateMachine__didFinishCheckingUpdatesInAlbumsDisposition_params___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) didFinishCheckingForUpdatesInAlbums:*(a1 + 40) info:*(a1 + 48)];
}

void __72__MSASStateMachine__didFinishCheckingUpdatesInAlbumsDisposition_params___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) didFinishCheckingForUpdatesInAlbums:*(a1 + 40) info:*(a1 + 48)];
}

- (void)_checkForUpdatesInAlbumDisposition:(int)a3 params:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [v6 objectForKey:@"resetSync"];
  v8 = [v7 BOOLValue];

  v9 = [(MSASStateMachine *)self _albumForRequestFromParams:v6];
  v10 = [v6 objectForKey:@"info"];
  v11 = [v6 objectForKey:@"error"];
  v12 = [v6 objectForKey:@"commandWasRequeued"];
  v13 = [v12 BOOLValue];

  if (a3 == 2)
  {
    v15 = [(MSASStateMachine *)self eventQueue];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __62__MSASStateMachine__checkForUpdatesInAlbumDisposition_params___block_invoke_3_146;
    v24[3] = &unk_278E92638;
    v24[4] = self;
    v25 = v9;
    v26 = v10;
    dispatch_async(v15, v24);
  }

  else if (!a3)
  {
    if (v11)
    {
      v14 = [(MSASStateMachine *)self eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __62__MSASStateMachine__checkForUpdatesInAlbumDisposition_params___block_invoke;
      block[3] = &unk_278E92660;
      block[4] = self;
      v38 = v9;
      v39 = v10;
      v40 = v11;
      dispatch_async(v14, block);

      [(MSASStateMachine *)self workQueueDidFinishCommand];
    }

    else
    {
      v35[0] = 0;
      v35[1] = v35;
      v35[2] = 0x3032000000;
      v35[3] = __Block_byref_object_copy__4549;
      v35[4] = __Block_byref_object_dispose__4550;
      v36 = [MEMORY[0x277CBEB38] MSASDictionaryWithCopyOfDictionary:v10];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        *location = 138543618;
        *&location[4] = self;
        v42 = 2114;
        v43 = v9;
        _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Checking for update in album %{public}@", location, 0x16u);
      }

      v16 = [(MSASStateMachine *)self protocol];
      v17 = [v16 stopHandlerBlock];
      [(MSASStateMachine *)self _setStopHandlerBlock:v17];

      if ((v13 & 1) == 0)
      {
        v18 = [(MSASStateMachine *)self eventQueue];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __62__MSASStateMachine__checkForUpdatesInAlbumDisposition_params___block_invoke_140;
        v32[3] = &unk_278E91C78;
        v32[4] = self;
        v33 = v9;
        v34 = v35;
        dispatch_async(v18, v32);
      }

      objc_initWeak(location, self);
      v19 = [(MSASStateMachine *)self delegate];
      v20 = [v9 GUID];
      v21 = [v19 MSASStateMachineDidRequestAlbumURLStringForAlbumWithGUID:v20 info:v10];

      v22 = [(MSASStateMachine *)self protocol];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __62__MSASStateMachine__checkForUpdatesInAlbumDisposition_params___block_invoke_2;
      v27[3] = &unk_278E91160;
      v27[4] = self;
      objc_copyWeak(&v31, location);
      v28 = v6;
      v29 = v9;
      v30 = v35;
      [v22 albumSummaryAlbum:v29 albumURLString:v21 resetSync:v8 completionBlock:v27];

      objc_destroyWeak(&v31);
      objc_destroyWeak(location);
      _Block_object_dispose(v35, 8);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __62__MSASStateMachine__checkForUpdatesInAlbumDisposition_params___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) didFinishCheckingForUpdatesInAlbum:*(a1 + 40) info:*(a1 + 48) error:*(a1 + 56)];
}

void __62__MSASStateMachine__checkForUpdatesInAlbumDisposition_params___block_invoke_140(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) willCheckForUpdatesInAlbum:*(a1 + 40) info:*(*(*(a1 + 48) + 8) + 40)];
}

void __62__MSASStateMachine__checkForUpdatesInAlbumDisposition_params___block_invoke_2(uint64_t a1, void *a2, char a3, void *a4, char a5, void *a6, void *a7, char a8)
{
  v15 = a2;
  v16 = a4;
  v17 = a6;
  v18 = a7;
  v19 = [*(a1 + 32) workQueue];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __62__MSASStateMachine__checkForUpdatesInAlbumDisposition_params___block_invoke_3;
  v27[3] = &unk_278E91138;
  v28 = v15;
  v20 = v15;
  objc_copyWeak(&v36, (a1 + 64));
  v29 = *(a1 + 40);
  v21 = *(a1 + 48);
  v22 = *(a1 + 32);
  v30 = v21;
  v31 = v22;
  v23 = *(a1 + 56);
  v37 = a3;
  v38 = a5;
  v32 = v17;
  v33 = v16;
  v39 = a8;
  v34 = v18;
  v35 = v23;
  v24 = v18;
  v25 = v16;
  v26 = v17;
  dispatch_async(v19, v27);

  objc_destroyWeak(&v36);
}

void __62__MSASStateMachine__checkForUpdatesInAlbumDisposition_params___block_invoke_3_146(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachine:*(a1 + 32) willCheckForUpdatesInAlbum:*(a1 + 40) info:*(a1 + 48)];

  v7 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = [v3 _canceledError];
  [v7 MSASStateMachine:v3 didFinishCheckingForUpdatesInAlbum:v4 info:v5 error:v6];
}

void __62__MSASStateMachine__checkForUpdatesInAlbumDisposition_params___block_invoke_3(uint64_t a1)
{
  v80 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 96));
      v15 = [*(a1 + 64) GUID];
      *buf = 138543618;
      v75 = WeakRetained;
      v76 = 2114;
      v77 = v15;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Finished checking for updates in album %{public}@.", buf, 0x16u);
    }

    if (*(a1 + 104) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v16 = objc_loadWeakRetained((a1 + 96));
        v17 = [*(a1 + 64) GUID];
        *buf = 138543618;
        v75 = v16;
        v76 = 2114;
        v77 = v17;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Album %{public}@ was reset synced.", buf, 0x16u);
      }

      v18 = *(*(*(a1 + 88) + 8) + 40);
      v19 = [*(a1 + 48) GUID];
      v20 = [v18 MSASAddIsAlbumResetSyncAlbumGUID:v19];

      v21 = [*(*(*(a1 + 88) + 8) + 40) MSASAddNotInterestingKey];
    }

    v22 = [*(a1 + 56) eventQueue];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __62__MSASStateMachine__checkForUpdatesInAlbumDisposition_params___block_invoke_142;
    v65[3] = &unk_278E910E8;
    v8 = &v68;
    objc_copyWeak(&v68, (a1 + 96));
    v23 = *(a1 + 64);
    v24 = *(a1 + 88);
    v66 = v23;
    v67[1] = v24;
    v67[0] = *(a1 + 32);
    dispatch_async(v22, v65);

    if (*(a1 + 105) == 1 && *(a1 + 64))
    {
      v25 = MEMORY[0x277D86220];
      v26 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v52 = objc_loadWeakRetained((a1 + 96));
        v53 = [*(a1 + 64) GUID];
        *buf = 138543618;
        v75 = v52;
        v76 = 2114;
        v77 = v53;
        _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Found sharing info changes to album %{public}@.", buf, 0x16u);
      }

      v27 = *(a1 + 56);
      v28 = [MEMORY[0x277CBEA60] arrayWithObject:*(a1 + 64)];
      [v27 getAccessControlsForAlbums:v28 info:*(*(*(a1 + 88) + 8) + 40)];
    }

    if ([*(a1 + 72) count])
    {
      v29 = MEMORY[0x277D86220];
      v30 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v49 = objc_loadWeakRetained((a1 + 96));
        v50 = [*(a1 + 72) count];
        v51 = [*(a1 + 64) GUID];
        *buf = 138543874;
        v75 = v49;
        v76 = 2048;
        v77 = v50;
        v78 = 2114;
        v79 = v51;
        _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Found changes to %lu asset collections in album %{public}@.", buf, 0x20u);
      }

      v31 = objc_loadWeakRetained((a1 + 96));
      v32 = [v31 delegate];
      v33 = objc_loadWeakRetained((a1 + 96));
      [v32 MSASStateMachine:v33 didFindAssetCollectionChanges:*(a1 + 72) forAlbum:*(a1 + 64) info:*(*(*(a1 + 88) + 8) + 40)];
    }

    if (!_os_feature_enabled_impl())
    {
      goto LABEL_30;
    }

    v34 = [*(a1 + 64) clientOrgKey];
    if (!v34)
    {
      goto LABEL_30;
    }

    v35 = [*(a1 + 64) publicURLString];
    if (v35)
    {
    }

    else
    {
      v36 = *(a1 + 106);

      if ((v36 & 1) == 0)
      {
LABEL_30:
        v42 = [*(a1 + 56) memberQueue];
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __62__MSASStateMachine__checkForUpdatesInAlbumDisposition_params___block_invoke_143;
        v64[3] = &unk_278E926D8;
        v64[4] = *(a1 + 56);
        dispatch_barrier_sync(v42, v64);

        v43 = [*(a1 + 56) eventQueue];
        v54 = MEMORY[0x277D85DD0];
        v55 = 3221225472;
        v56 = __62__MSASStateMachine__checkForUpdatesInAlbumDisposition_params___block_invoke_2_144;
        v57 = &unk_278E91110;
        v58 = *(a1 + 64);
        v59 = *(a1 + 80);
        v60 = *(a1 + 48);
        objc_copyWeak(&v63, (a1 + 96));
        v62 = *(a1 + 88);
        v61 = *(a1 + 32);
        dispatch_async(v43, &v54);

        v44 = objc_loadWeakRetained((a1 + 96));
        [v44 workQueueDidFinishCommand];

        objc_destroyWeak(&v63);
        v12 = &v66;
        v13 = v67;
LABEL_31:

        objc_destroyWeak(v8);
        goto LABEL_32;
      }

      v37 = MEMORY[0x277D86220];
      v38 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v39 = objc_loadWeakRetained((a1 + 96));
        v40 = [*(a1 + 64) GUID];
        *buf = 138543618;
        v75 = v39;
        v76 = 2114;
        v77 = v40;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Album %{public}@ publicURLString needs to be refetched through another albumsummary request now that we have a clientOrgKey for the album.", buf, 0x16u);
      }

      v41 = *(a1 + 56);
      v73 = *(a1 + 48);
      v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v73 count:1];
      [v41 checkForUpdatesInAlbums:v34 resetSync:0 info:0];
    }

    goto LABEL_30;
  }

  v2 = objc_loadWeakRetained((a1 + 96));
  v3 = *(a1 + 32);
  v4 = NSStringFromSelector(sel__checkForUpdatesInAlbumDisposition_params_);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) GUID];
  LOBYTE(v3) = [v2 workQueueEndCommandWithError:v3 command:v4 params:v5 albumGUID:v6 assetCollectionGUID:0];

  if ((v3 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v46 = objc_loadWeakRetained((a1 + 96));
      v47 = *(a1 + 48);
      v48 = [*(a1 + 32) MSVerboseDescription];
      *buf = 138543874;
      v75 = v46;
      v76 = 2114;
      v77 = v47;
      v78 = 2114;
      v79 = v48;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not complete checking for updates for album %{public}@. Error: %{public}@", buf, 0x20u);
    }

    v7 = [*(a1 + 56) eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__MSASStateMachine__checkForUpdatesInAlbumDisposition_params___block_invoke_141;
    block[3] = &unk_278E910E8;
    v8 = &v72;
    objc_copyWeak(&v72, (a1 + 96));
    v9 = *(a1 + 64);
    v10 = *(a1 + 88);
    v70 = v9;
    v71[1] = v10;
    v71[0] = *(a1 + 32);
    dispatch_async(v7, block);

    v11 = objc_loadWeakRetained((a1 + 96));
    [v11 workQueueDidFinishCommand];

    v12 = &v70;
    v13 = v71;
    goto LABEL_31;
  }

LABEL_32:
  v45 = *MEMORY[0x277D85DE8];
}

void __62__MSASStateMachine__checkForUpdatesInAlbumDisposition_params___block_invoke_141(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 56));
  [v2 MSASStateMachine:v3 didFinishCheckingForUpdatesInAlbum:*(a1 + 32) info:*(*(*(a1 + 48) + 8) + 40) error:*(a1 + 40)];
}

void __62__MSASStateMachine__checkForUpdatesInAlbumDisposition_params___block_invoke_142(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v3 = *(a1 + 32);
    v12 = 138543618;
    v13 = WeakRetained;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Saving album %{public}@.", &v12, 0x16u);
  }

  v4 = objc_loadWeakRetained((a1 + 56));
  v5 = [v4 daemon];
  v6 = objc_loadWeakRetained((a1 + 56));
  v7 = [v6 personID];
  [v5 didReceiveAuthSuccessForPersonID:v7];

  v8 = objc_loadWeakRetained((a1 + 56));
  v9 = [v8 delegate];
  v10 = objc_loadWeakRetained((a1 + 56));
  [v9 MSASStateMachine:v10 didFindChangesInAlbum:*(a1 + 32) info:*(*(*(a1 + 48) + 8) + 40) error:*(a1 + 40)];

  v11 = *MEMORY[0x277D85DE8];
}

void __62__MSASStateMachine__checkForUpdatesInAlbumDisposition_params___block_invoke_2_144(uint64_t a1)
{
  v2 = [*(a1 + 32) useForeignCtag];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2)
  {
    [v3 setForeignCtag:v4];
    v5 = [*(a1 + 48) ctag];
    [*(a1 + 32) setCtag:v5];
  }

  else
  {
    [v3 setCtag:v4];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v6 = [WeakRetained delegate];
  v7 = objc_loadWeakRetained((a1 + 72));
  [v6 MSASStateMachine:v7 didFinishCheckingForUpdatesInAlbum:*(a1 + 32) info:*(*(*(a1 + 64) + 8) + 40) error:*(a1 + 56)];
}

- (void)checkForUpdatesInAlbums:(id)a3 resetSync:(BOOL)a4 info:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(MSASStateMachine *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__MSASStateMachine_checkForUpdatesInAlbums_resetSync_info___block_invoke;
  v13[3] = &unk_278E91D20;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

void __59__MSASStateMachine_checkForUpdatesInAlbums_resetSync_info___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    *buf = 138543618;
    v34 = v2;
    v35 = 2114;
    v36 = v3;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Scheduling check for updates in albums %{public}@", buf, 0x16u);
  }

  v4 = [*(a1 + 32) _model];
  [v4 beginTransaction];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = *(a1 + 40);
  v5 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    do
    {
      v8 = 0;
      do
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v28 + 1) + 8 * v8);
        v10 = [MEMORY[0x277CBEB38] dictionary];
        v11 = v10;
        if (v9)
        {
          [v10 setObject:v9 forKey:@"album"];
        }

        v12 = *(a1 + 48);
        if (v12)
        {
          [v11 setObject:v12 forKey:@"info"];
        }

        v13 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 56)];
        [v11 setObject:v13 forKey:@"resetSync"];

        v14 = [*(a1 + 32) _model];
        v15 = NSStringFromSelector(sel__checkForUpdatesInAlbumDisposition_params_);
        v16 = [*(a1 + 32) personID];
        v17 = [v9 GUID];
        [v14 enqueueCommand:v15 params:v11 personID:v16 albumGUID:v17 assetCollectionGUID:0];

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v6);
  }

  v18 = [MEMORY[0x277CBEB38] dictionary];
  v19 = v18;
  v20 = *(a1 + 40);
  if (v20)
  {
    [v18 setObject:v20 forKey:@"albums"];
  }

  v21 = *(a1 + 48);
  if (v21)
  {
    [v19 setObject:v21 forKey:@"info"];
  }

  v22 = [*(a1 + 32) _model];
  v23 = NSStringFromSelector(sel__didFinishCheckingUpdatesInAlbumsDisposition_params_);
  v24 = [*(a1 + 32) personID];
  [v22 enqueueCommand:v23 params:v19 personID:v24 albumGUID:0 assetCollectionGUID:0];

  v25 = [*(a1 + 32) _model];
  [v25 endTransaction];

  [*(a1 + 32) workQueueRetryOutstandingActivities];
  v26 = *MEMORY[0x277D85DE8];
}

- (void)_checkForChangesDisposition:(int)a3 params:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [v6 objectForKey:@"info"];
  if (a3 == 2)
  {
    v14 = [(MSASStateMachine *)self eventQueue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __55__MSASStateMachine__checkForChangesDisposition_params___block_invoke_3;
    v19[3] = &unk_278E927C8;
    v19[4] = self;
    v20 = v7;
    dispatch_async(v14, v19);
  }

  else if (!a3)
  {
    v8 = [v6 objectForKey:@"resetSync"];
    v9 = [v8 BOOLValue];

    if (v9)
    {
      v10 = [(MSASStateMachine *)self _model];
      [v10 deletePersistentValueWithKey:@"rootCtag"];
    }

    v11 = [(MSASStateMachine *)self rootCtagToCheckForChanges];
    if (v11 && ([(MSASStateMachine *)self migrationCtagToCheckForChanges], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
    {

      v11 = 0;
      v13 = 1;
    }

    else
    {
      v13 = 0;
    }

    v15 = [(MSASStateMachine *)self protocol];
    v16 = [v15 stopHandlerBlock];
    [(MSASStateMachine *)self _setStopHandlerBlock:v16];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v26 = self;
      v27 = 1024;
      v28 = v9;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Checking for album list updates. Reset sync: %d", buf, 0x12u);
    }

    objc_initWeak(buf, self);
    v17 = [(MSASStateMachine *)self protocol];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __55__MSASStateMachine__checkForChangesDisposition_params___block_invoke;
    v21[3] = &unk_278E910B8;
    v21[4] = self;
    v22 = v7;
    objc_copyWeak(&v23, buf);
    v24 = v13;
    [v17 getChangesRootCtag:v11 migrationCtag:0 completionBlock:v21];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __55__MSASStateMachine__checkForChangesDisposition_params___block_invoke(uint64_t a1, void *a2, char a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a2;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__MSASStateMachine__checkForChangesDisposition_params___block_invoke_2;
  block[3] = &unk_278E91090;
  v25 = v13;
  v26 = *(a1 + 40);
  v27 = v14;
  v28 = *(a1 + 32);
  v33 = a3;
  v19 = v14;
  v20 = v13;
  objc_copyWeak(&v32, (a1 + 48));
  v29 = v17;
  v30 = v15;
  v31 = v16;
  v34 = *(a1 + 56);
  v21 = v16;
  v22 = v15;
  v23 = v17;
  dispatch_async(v18, block);

  objc_destroyWeak(&v32);
}

void __55__MSASStateMachine__checkForChangesDisposition_params___block_invoke_3(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = [v3 _canceledError];
  [v5 MSASStateMachine:v3 didFinishCheckingForChangesInfo:v2 error:v4];
}

void __55__MSASStateMachine__checkForChangesDisposition_params___block_invoke_2(uint64_t a1)
{
  v69 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CBEB38] MSASDictionaryWithCopyOfDictionary:*(a1 + 40)];
  if (v2)
  {
LABEL_2:
    WeakRetained = objc_loadWeakRetained((a1 + 88));
    v5 = [WeakRetained workQueueEndCommandWithError:v2 command:0 params:0 albumGUID:0 assetCollectionGUID:0];

    if ((v5 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v40 = objc_loadWeakRetained((a1 + 88));
        v41 = [v2 MSVerboseDescription];
        *buf = 138543618;
        v64 = v40;
        v65 = 2114;
        v66 = v41;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to check for changes. Error: %{public}@", buf, 0x16u);
      }

      v6 = [*(a1 + 56) eventQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __55__MSASStateMachine__checkForChangesDisposition_params___block_invoke_132;
      block[3] = &unk_278E917C0;
      objc_copyWeak(&v48, (a1 + 88));
      v46 = v3;
      v2 = v2;
      v47 = v2;
      dispatch_async(v6, block);

      v7 = objc_loadWeakRetained((a1 + 88));
      [v7 workQueueDidFinishCommand];

      objc_destroyWeak(&v48);
    }

    goto LABEL_39;
  }

  if (*(a1 + 48))
  {
    [*(a1 + 56) setPendingRootCtag:?];
    if (*(a1 + 96) == 1)
    {
      v8 = [v3 MSASAddIsGlobalResetSync];
      v9 = [v3 MSASAddNotInterestingKey];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_loadWeakRetained((a1 + 88));
        *buf = 138543362;
        v64 = v10;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Global reset sync found.", buf, 0xCu);
      }

      v11 = objc_loadWeakRetained((a1 + 88));
      v12 = [v11 delegate];
      v13 = objc_loadWeakRetained((a1 + 88));
      [v12 MSASStateMachineDidFindGlobalResetSync:v13 info:v3];
    }

    v14 = [*(a1 + 56) eventQueue];
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __55__MSASStateMachine__checkForChangesDisposition_params___block_invoke_123;
    v57[3] = &unk_278E911B0;
    objc_copyWeak(&v62, (a1 + 88));
    v58 = *(a1 + 64);
    v59 = *(a1 + 72);
    v60 = *(a1 + 80);
    v61 = *(a1 + 40);
    dispatch_async(v14, v57);

    if (_os_feature_enabled_impl())
    {
      if (*(a1 + 97) == 1)
      {
        v15 = [MEMORY[0x277CBEB58] set];
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v16 = *(a1 + 64);
        v17 = [v16 countByEnumeratingWithState:&v53 objects:v68 count:16];
        if (v17)
        {
          v18 = *v54;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v54 != v18)
              {
                objc_enumerationMutation(v16);
              }

              v20 = *(*(&v53 + 1) + 8 * i);
              if (([v15 containsObject:v20] & 1) == 0)
              {
                v21 = [*(a1 + 56) delegate];
                [v21 refreshContentOfAlbumWithGUID:v20 resetSync:1];

                [v15 addObject:v20];
              }
            }

            v17 = [v16 countByEnumeratingWithState:&v53 objects:v68 count:16];
          }

          while (v17);
        }

        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v22 = *(a1 + 80);
        v23 = [v22 countByEnumeratingWithState:&v49 objects:v67 count:16];
        if (v23)
        {
          v24 = *v50;
          do
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v50 != v24)
              {
                objc_enumerationMutation(v22);
              }

              v26 = *(*(&v49 + 1) + 8 * j);
              if (([v15 containsObject:v26] & 1) == 0)
              {
                v27 = [*(a1 + 56) delegate];
                [v27 refreshContentOfAlbumWithGUID:v26 resetSync:1];

                [v15 addObject:v26];
              }
            }

            v23 = [v22 countByEnumeratingWithState:&v49 objects:v67 count:16];
          }

          while (v23);
        }
      }

      v28 = [*(a1 + 56) delegate];
      [v28 deletePersistentValueWithKey:@"migrationMarker"];
    }

    objc_destroyWeak(&v62);
  }

  else
  {
    v36 = MEMORY[0x277CCA9B8];
    v37 = MEMORY[0x277CCACA8];
    v38 = MSCFCopyLocalizedString(@"ERROR_MSAS_SUB_MISSING_FIELD_P_FIELD");
    v39 = [v37 stringWithFormat:v38, @"rootctag"];
    v2 = [v36 MSErrorWithDomain:@"MSASSubscriberErrorDomain" code:0 description:v39];

    if (v2)
    {
      goto LABEL_2;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v29 = objc_loadWeakRetained((a1 + 88));
    *buf = 138543362;
    v64 = v29;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully checked for changes updates.", buf, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v30 = objc_loadWeakRetained((a1 + 88));
    v31 = *(a1 + 48);
    *buf = 138543618;
    v64 = v30;
    v65 = 2114;
    v66 = v31;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: New root ctag: %{public}@", buf, 0x16u);
  }

  v32 = [*(a1 + 56) memberQueue];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __55__MSASStateMachine__checkForChangesDisposition_params___block_invoke_133;
  v44[3] = &unk_278E926D8;
  v44[4] = *(a1 + 56);
  dispatch_barrier_sync(v32, v44);

  v33 = [*(a1 + 56) eventQueue];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __55__MSASStateMachine__checkForChangesDisposition_params___block_invoke_2_134;
  v42[3] = &unk_278E90E70;
  objc_copyWeak(&v43, (a1 + 88));
  dispatch_async(v33, v42);

  v34 = objc_loadWeakRetained((a1 + 88));
  [v34 workQueueDidFinishCommand];

  objc_destroyWeak(&v43);
  v2 = 0;
LABEL_39:

  v35 = *MEMORY[0x277D85DE8];
}

void __55__MSASStateMachine__checkForChangesDisposition_params___block_invoke_123(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 64));
  [v2 MSASStateMachine:v3 didFindSyncedKeyValueChangesForAlbumGUIDS:*(a1 + 32) albumChanges:*(a1 + 40) accessControlChangesForAlbumGUIDS:*(a1 + 48) info:*(a1 + 56)];
}

void __55__MSASStateMachine__checkForChangesDisposition_params___block_invoke_132(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 48));
  [v2 MSASStateMachine:v3 didFinishCheckingForChangesInfo:*(a1 + 32) error:*(a1 + 40)];
}

void __55__MSASStateMachine__checkForChangesDisposition_params___block_invoke_2_134(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained daemon];
  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 personID];
  [v2 didReceiveAuthSuccessForPersonID:v4];
}

- (void)checkForChangesResetSync:(BOOL)a3 info:(id)a4
{
  v6 = a4;
  v7 = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__MSASStateMachine_checkForChangesResetSync_info___block_invoke;
  block[3] = &unk_278E91060;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

uint64_t __50__MSASStateMachine_checkForChangesResetSync_info___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 48) & 1) != 0 || ([*(a1 + 32) _model], v2 = objc_claimAutoreleasedReturnValue(), NSStringFromSelector(sel__checkForChangesDisposition_params_), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v2, "countOfEnqueuedCommand:", v3), v3, v2, v4 < 1))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 48);
      v21 = 138543618;
      v22 = v6;
      v23 = 1024;
      v24 = v7;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Scheduling check for changes. Reset sync: %d", &v21, 0x12u);
    }

    v8 = [MEMORY[0x277CBEB38] dictionary];
    v9 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
    [v8 setObject:v9 forKey:@"resetSync"];

    v10 = *(a1 + 40);
    if (v10)
    {
      [v8 setObject:v10 forKey:@"info"];
    }

    v11 = [*(a1 + 32) serverSideConfigurationVersion];

    if (!v11)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 32);
        v21 = 138543362;
        v22 = v12;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Scheduling retrieval of server side configuration because we don't have it yet.", &v21, 0xCu);
      }

      v13 = [*(a1 + 32) _model];
      v14 = NSStringFromSelector(sel__sendGetServerSideConfigurationDisposition_params_);
      v15 = [*(a1 + 32) personID];
      [v13 enqueueCommand:v14 params:0 personID:v15 albumGUID:0 assetCollectionGUID:0];
    }

    v16 = [*(a1 + 32) _model];
    v17 = NSStringFromSelector(sel__checkForChangesDisposition_params_);
    v18 = [*(a1 + 32) personID];
    [v16 enqueueCommand:v17 params:v8 personID:v18 albumGUID:0 assetCollectionGUID:0];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v21 = 138543362;
    v22 = v5;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Not scheduling another check for changes because there is already one scheduled.", &v21, 0xCu);
  }

  result = [*(a1 + 32) workQueueRetryOutstandingActivities];
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)checkForChangesIfMissingRootCtag
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [(MSASStateMachine *)self rootCtagToCheckForChanges];
  if (!v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = 138543362;
      v6 = self;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: checking for changes because there is no root ctag.", &v5, 0xCu);
    }

    [(MSASStateMachine *)self checkForChangesResetSync:0 info:0];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (id)_assetCollectionFailedError
{
  if (_assetCollectionFailedError_onceToken != -1)
  {
    dispatch_once(&_assetCollectionFailedError_onceToken, &__block_literal_global_117);
  }

  v3 = _assetCollectionFailedError_error;

  return v3;
}

void __47__MSASStateMachine__assetCollectionFailedError__block_invoke()
{
  v0 = MEMORY[0x277CCA9B8];
  v3 = MSCFCopyLocalizedString(@"ERROR_STATE_PHOTO_FAILED");
  v1 = [v0 MSErrorWithDomain:@"MSASStateMachineErrorDomain" code:2 description:v3];
  v2 = _assetCollectionFailedError_error;
  _assetCollectionFailedError_error = v1;
}

- (id)_assetCollectionRejectedError
{
  if (_assetCollectionRejectedError_onceToken != -1)
  {
    dispatch_once(&_assetCollectionRejectedError_onceToken, &__block_literal_global_112);
  }

  v3 = _assetCollectionRejectedError_error;

  return v3;
}

void __49__MSASStateMachine__assetCollectionRejectedError__block_invoke()
{
  v0 = MEMORY[0x277CCA9B8];
  v3 = MSCFCopyLocalizedString(@"ERROR_STATE_PHOTO_REJECTED");
  v1 = [v0 MSErrorWithDomain:@"MSASStateMachineErrorDomain" code:2 description:v3];
  v2 = _assetCollectionRejectedError_error;
  _assetCollectionRejectedError_error = v1;
}

- (id)_stoppedError
{
  if (_stoppedError_onceToken != -1)
  {
    dispatch_once(&_stoppedError_onceToken, &__block_literal_global_107);
  }

  v3 = _stoppedError_error;

  return v3;
}

void __33__MSASStateMachine__stoppedError__block_invoke()
{
  v0 = MEMORY[0x277CCA9B8];
  v3 = MSCFCopyLocalizedString(@"ERROR_STATE_STOPPED");
  v1 = [v0 MSErrorWithDomain:@"MSASStateMachineErrorDomain" code:1 description:v3];
  v2 = _stoppedError_error;
  _stoppedError_error = v1;
}

- (id)_canceledError
{
  if (_canceledError_onceToken != -1)
  {
    dispatch_once(&_canceledError_onceToken, &__block_literal_global_102);
  }

  v3 = _canceledError_error;

  return v3;
}

void __34__MSASStateMachine__canceledError__block_invoke()
{
  v0 = MEMORY[0x277CCA9B8];
  v3 = MSCFCopyLocalizedString(@"ERROR_STATE_CANCELED");
  v1 = [v0 MSErrorWithDomain:@"MSASStateMachineErrorDomain" code:0 description:v3];
  v2 = _canceledError_error;
  _canceledError_error = v1;
}

- (void)_getAlbumURLDisposition:(int)a3 params:(id)a4
{
  v6 = a4;
  v7 = [v6 objectForKey:@"albumGUID"];
  v8 = [v6 objectForKey:@"assetCollectionGUID"];
  v9 = [v6 objectForKey:@"command"];
  v10 = [v6 objectForKey:@"params"];

  if (a3 == 2)
  {
    v12 = [v10 mutableCopy];
    v13 = [(MSASStateMachine *)self _canceledError];
    [v12 setObject:v13 forKey:@"error"];

    v14 = [(MSASStateMachine *)self _model];
    v15 = [(MSASStateMachine *)self personID];
    [v14 enqueueCommandAtHeadOfQueue:v9 params:v12 personID:v15 albumGUID:v7 assetCollectionGUID:v8];
  }

  else if (!a3)
  {
    v11 = [(MSASStateMachine *)self protocol];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __51__MSASStateMachine__getAlbumURLDisposition_params___block_invoke;
    v16[3] = &unk_278E91030;
    v16[4] = self;
    v17 = v10;
    v18 = v9;
    v19 = v7;
    v20 = v8;
    [v11 getAlbumURLForAlbumWithGUID:v19 completionBlock:v16];
  }
}

void __51__MSASStateMachine__getAlbumURLDisposition_params___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__MSASStateMachine__getAlbumURLDisposition_params___block_invoke_2;
  block[3] = &unk_278E91008;
  v11 = a1[5];
  v12 = v5;
  v13 = a1[4];
  v14 = a1[6];
  v15 = a1[7];
  v16 = a1[8];
  v17 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

void __51__MSASStateMachine__getAlbumURLDisposition_params___block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) mutableCopy];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v2 setObject:v3 forKey:@"commandWasRequeued"];

  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (v5)
  {
    if (([v4 workQueueEndCommandWithError:v5 command:0 params:0 albumGUID:0 assetCollectionGUID:0] & 1) == 0)
    {
      v6 = [*(a1 + 48) _URLReauthFailureWithUnderlyingError:*(a1 + 40)];
      [v2 setObject:v6 forKey:@"error"];

      v7 = *(a1 + 48);
      v8 = *(a1 + 56);
      v9 = [v7 personID];
      [v7 workQueueDidFinishCommandByReplacingCurrentCommandWithCommand:v8 params:v2 personID:v9 albumGUID:*(a1 + 64) assetCollectionGUID:*(a1 + 72)];
    }
  }

  else
  {
    v10 = [v4 delegate];
    v11 = *(a1 + 48);
    v12 = *(a1 + 80);
    v13 = *(a1 + 64);
    v14 = [v2 objectForKey:@"info"];
    [v10 MSASStateMachine:v11 didFindNewURLString:v12 forAlbumWithGUID:v13 info:v14];

    v15 = [v2 objectForKey:@"album"];
    v16 = [MSASAlbum albumWithAlbum:v15];

    if (v16)
    {
      [v16 setURLString:*(a1 + 80)];
      [v2 setObject:v16 forKey:@"album"];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v22 = *(a1 + 48);
        v23 = 138543362;
        v24 = v22;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Cannot retry a command after a URL validation error, because the command does not have an album parameter.", &v23, 0xCu);
      }

      v17 = [*(a1 + 48) _URLReauthFailureWithUnderlyingError:0];
      [v2 setObject:v17 forKey:@"error"];
    }

    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    v20 = [v18 personID];
    [v18 workQueueDidFinishCommandByReplacingCurrentCommandWithCommand:v19 params:v2 personID:v20 albumGUID:*(a1 + 64) assetCollectionGUID:*(a1 + 72)];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)_URLReauthFailureWithUnderlyingError:(id)a3
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = a3;
  v5 = MSCFCopyLocalizedString(@"ERROR_STATE_CANNOT_REQUEUE_AFTER_URL");
  v6 = [v3 MSErrorWithDomain:@"MSASStateMachineErrorDomain" code:4 description:v5 underlyingError:v4];

  return v6;
}

- (void)_actionDidFinishWithError:(id)a3 album:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 MSContainsErrorWithDomain:@"MSASProtocolErrorDomain" code:22])
  {
    v8 = _os_feature_enabled_impl();
    v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (!v8)
    {
      if (!v9)
      {
        goto LABEL_8;
      }

      v12 = [v6 MSVerboseDescription];
      *buf = 138543618;
      v18 = self;
      v19 = 2114;
      v20 = v12;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Encountered fatal error. Not retrying. Error: %{public}@", buf, 0x16u);
      goto LABEL_6;
    }

    if (v9)
    {
      v14 = [v7 GUID];
      v15 = [v6 MSVerboseDescription];
      *buf = 138543874;
      v18 = self;
      v19 = 2114;
      v20 = v14;
      v21 = 2114;
      v22 = v15;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Encountered invalid/missing clientOrgKey error. Fetching new clientOrgKey for album: %{public}@. Not retrying. Error: %{public}@", buf, 0x20u);

      if (!v7)
      {
        goto LABEL_8;
      }

      goto LABEL_5;
    }

    if (v7)
    {
LABEL_5:
      [v7 setClientOrgKey:0];
      v10 = [(MSASStateMachine *)self delegate];
      v11 = [v7 GUID];
      [v10 setClientOrgKey:0 forAlbumWithGUID:v11];

      v16 = v7;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
      [(MSASStateMachine *)self checkForUpdatesInAlbums:v12 resetSync:0 info:0];
LABEL_6:
    }
  }

LABEL_8:

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)workQueueEndCommandWithError:(id)a3 command:(id)a4 params:(id)a5 albumGUID:(id)a6 assetCollectionGUID:(id)a7
{
  v57 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if ([v12 MSContainsErrorWithDomain:@"MSASStateMachineErrorDomain" code:0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v52 = self;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Command was cancelled.", buf, 0xCu);
    }

    [(MSASStateMachine *)self workQueueDidFinishCommandDueToCancellation];
    goto LABEL_17;
  }

  if ([v12 MSContainsErrorWithDomain:@"MSASStateMachineErrorDomain" code:1])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v52 = self;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Command was stopped. Not removing from the command queue.", buf, 0xCu);
    }

    [(MSASStateMachine *)self workQueueDidFinishCommandByLeavingCommandInQueue];
    goto LABEL_17;
  }

  if ([v12 MSIsTemporaryNetworkError])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v52 = self;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Encountered temporary network problems.", buf, 0xCu);
    }

LABEL_16:
    [(MSASStateMachine *)self workQueueDidFailToFinishCommandDueToTemporaryError:v12];
LABEL_17:
    v18 = 1;
    goto LABEL_18;
  }

  if ([v12 MSIsAuthError])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v42 = [v12 MSVerboseDescription];
      *buf = 138543618;
      v52 = self;
      v53 = 2114;
      v54 = v42;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Received authentication error: %{public}@", buf, 0x16u);
    }

    v17 = [(MSASStateMachine *)self eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __94__MSASStateMachine_workQueueEndCommandWithError_command_params_albumGUID_assetCollectionGUID___block_invoke;
    block[3] = &unk_278E926D8;
    block[4] = self;
    dispatch_async(v17, block);

    goto LABEL_16;
  }

  if (v13 && [v12 MSContainsErrorWithDomain:@"MSASProtocolErrorDomain" code:18])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v43 = [v12 MSVerboseDescription];
      *buf = 138543618;
      v52 = self;
      v53 = 2114;
      v54 = v43;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Encountered visitor authentication failure. Getting new album URL and retrying command. Error: %{public}@", buf, 0x16u);
    }

    v21 = [MEMORY[0x277CBEB38] dictionary];
    v22 = v21;
    if (v15)
    {
      [v21 setObject:v15 forKey:@"albumGUID"];
    }

    if (v16)
    {
      [v22 setObject:v16 forKey:@"assetCollectionGUID"];
    }

    [v22 setObject:v13 forKey:@"command"];
    if (v14)
    {
      [v22 setObject:v14 forKey:@"params"];
    }

    v23 = NSStringFromSelector(sel__getAlbumURLDisposition_params_);
    v24 = [(MSASStateMachine *)self personID];
    [(MSASStateMachine *)self workQueueDidFinishCommandByReplacingCurrentCommandWithCommand:v23 params:v22 personID:v24 albumGUID:v15 assetCollectionGUID:0];

    goto LABEL_17;
  }

  if ([v12 MSContainsErrorWithDomain:@"MSASProtocolErrorDomain" code:22])
  {
    v25 = _os_feature_enabled_impl();
    v26 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v25)
    {
      if (v26)
      {
        v44 = [v12 MSVerboseDescription];
        *buf = 138543874;
        v52 = self;
        v53 = 2114;
        v54 = v15;
        v55 = 2114;
        v56 = v44;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Encountered invalid/missing clientOrgKey error. Fetching new clientOrgKey for album: %{public}@. Not retrying. Error: %{public}@", buf, 0x20u);
      }

      v27 = [v14 objectForKeyedSubscript:@"album"];
      v28 = v27;
      if (v27)
      {
        [v27 setClientOrgKey:0];
        v29 = [(MSASStateMachine *)self delegate];
        [v29 setClientOrgKey:0 forAlbumWithGUID:v15];

        v50 = v28;
        v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
        [(MSASStateMachine *)self checkForUpdatesInAlbums:v30 resetSync:0 info:0];
      }

      goto LABEL_36;
    }

    if (!v26)
    {
      goto LABEL_50;
    }

LABEL_41:
    v28 = [v12 MSVerboseDescription];
    *buf = 138543618;
    v52 = self;
    v53 = 2114;
    v54 = v28;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Encountered fatal error. Not retrying. Error: %{public}@", buf, 0x16u);
LABEL_36:

LABEL_50:
    v18 = 0;
    goto LABEL_18;
  }

  if ([v12 MSIsFatal])
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_50;
    }

    goto LABEL_41;
  }

  v31 = [(NSDictionary *)self->_currentCommandParams objectForKey:@"errorCount"];
  v32 = [v31 intValue];

  v33 = (v32 + 1);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v45 = [v12 MSVerboseDescription];
    *buf = 138543874;
    v52 = self;
    v53 = 2114;
    v54 = v45;
    v55 = 1024;
    LODWORD(v56) = v33;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Encountered error: %{public}@. This command has encountered %d errors so far.", buf, 0x1Cu);
  }

  if (v33 >= [(MSASStateMachine *)self maxMetadataRetryCount])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v52 = self;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Giving up.", buf, 0xCu);
    }

    goto LABEL_50;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v52 = self;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Retrying.", buf, 0xCu);
  }

  v34 = [(MSASStateMachine *)self memberQueue];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __94__MSASStateMachine_workQueueEndCommandWithError_command_params_albumGUID_assetCollectionGUID___block_invoke_94;
  v48[3] = &unk_278E926D8;
  v48[4] = self;
  dispatch_barrier_sync(v34, v48);

  v35 = [(NSDictionary *)self->_currentCommandParams mutableCopy];
  v36 = [MEMORY[0x277CCABB0] numberWithInt:v33];
  [v35 setObject:v36 forKey:@"errorCount"];

  [(MSASPersonModel *)self->_model setParams:v35 forCommandWithIdentifier:self->_currentCommandID];
  v37 = [(MSASStateMachine *)self eventQueue];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __94__MSASStateMachine_workQueueEndCommandWithError_command_params_albumGUID_assetCollectionGUID___block_invoke_2;
  v47[3] = &unk_278E926D8;
  v47[4] = self;
  dispatch_async(v37, v47);

  currentCommandParams = self->_currentCommandParams;
  self->_currentCommandParams = 0;

  currentCommand = self->_currentCommand;
  self->_currentCommand = 0;

  stopHandlerBlock = self->_stopHandlerBlock;
  self->_stopHandlerBlock = 0;

  v18 = 1;
  self->_commandState = 1;
  [(MSASStateMachine *)self workQueueUpdateNextActivityDate];
  v41 = [(MSASStateMachine *)self workQueue];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __94__MSASStateMachine_workQueueEndCommandWithError_command_params_albumGUID_assetCollectionGUID___block_invoke_3;
  v46[3] = &unk_278E926D8;
  v46[4] = self;
  dispatch_async(v41, v46);

LABEL_18:
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

void __94__MSASStateMachine_workQueueEndCommandWithError_command_params_albumGUID_assetCollectionGUID___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) daemon];
  v2 = [*(a1 + 32) personID];
  [v3 didReceiveAuthFailureForPersonID:v2];
}

void __94__MSASStateMachine_workQueueEndCommandWithError_command_params_albumGUID_assetCollectionGUID___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  [WeakRetained releaseBusy];
}

- (void)workQueueDidFinishCommandDueToCancellation
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_commandState != 2)
  {
    __assert_rtn("[MSASStateMachine workQueueDidFinishCommandDueToCancellation]", "MSASStateMachine.m", 1175, "_commandState == kMSASCommandStatePerformingCommand");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v12 = self;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Command finished because it was cancelled.", buf, 0xCu);
  }

  self->_commandState = 0;
  currentCommandParams = self->_currentCommandParams;
  self->_currentCommandParams = 0;

  currentCommand = self->_currentCommand;
  self->_currentCommand = 0;

  stopHandlerBlock = self->_stopHandlerBlock;
  self->_stopHandlerBlock = 0;

  [(MSASStateMachine *)self workQueueUpdateNextActivityDate];
  v6 = [(MSASStateMachine *)self eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__MSASStateMachine_workQueueDidFinishCommandDueToCancellation__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(v6, block);

  v7 = [(MSASStateMachine *)self postCommandCompletionBlock];

  if (v7)
  {
    v8 = [(MSASStateMachine *)self postCommandCompletionBlock];
    [(MSASStateMachine *)self setPostCommandCompletionBlock:0];
    v8[2](v8);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __62__MSASStateMachine_workQueueDidFinishCommandDueToCancellation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  [WeakRetained releaseBusy];
}

- (void)workQueueDidFinishCommandByLeavingCommandInQueue
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_commandState != 2)
  {
    __assert_rtn("[MSASStateMachine workQueueDidFinishCommandByLeavingCommandInQueue]", "MSASStateMachine.m", 1154, "_commandState == kMSASCommandStatePerformingCommand");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v12 = self;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Leaving command in queue.", buf, 0xCu);
  }

  self->_commandState = 1;
  currentCommandParams = self->_currentCommandParams;
  self->_currentCommandParams = 0;

  currentCommand = self->_currentCommand;
  self->_currentCommand = 0;

  stopHandlerBlock = self->_stopHandlerBlock;
  self->_stopHandlerBlock = 0;

  [(MSASStateMachine *)self workQueueUpdateNextActivityDate];
  v6 = [(MSASStateMachine *)self eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__MSASStateMachine_workQueueDidFinishCommandByLeavingCommandInQueue__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(v6, block);

  v7 = [(MSASStateMachine *)self workQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__MSASStateMachine_workQueueDidFinishCommandByLeavingCommandInQueue__block_invoke_2;
  v9[3] = &unk_278E926D8;
  v9[4] = self;
  dispatch_async(v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __68__MSASStateMachine_workQueueDidFinishCommandByLeavingCommandInQueue__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  [WeakRetained releaseBusy];
}

uint64_t __68__MSASStateMachine_workQueueDidFinishCommandByLeavingCommandInQueue__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) postCommandCompletionBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) postCommandCompletionBlock];
    [*(a1 + 32) setPostCommandCompletionBlock:0];
    v3[2](v3);
  }

  v4 = *(a1 + 32);

  return [v4 workQueueCheckForNextCommand];
}

- (void)workQueueDidFailToFinishCommandDueToTemporaryError:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_commandState != 2)
  {
    __assert_rtn("[MSASStateMachine workQueueDidFailToFinishCommandDueToTemporaryError:]", "MSASStateMachine.m", 1136, "_commandState == kMSASCommandStatePerformingCommand");
  }

  v5 = v4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v13 = [v5 MSVerboseDescription];
    *buf = 138543618;
    v16 = self;
    v17 = 2114;
    v18 = v13;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Encountered temporary error. Will retry later. Error: %{public}@", buf, 0x16u);
  }

  self->_commandState = 1;
  currentCommandParams = self->_currentCommandParams;
  self->_currentCommandParams = 0;

  currentCommand = self->_currentCommand;
  self->_currentCommand = 0;

  stopHandlerBlock = self->_stopHandlerBlock;
  self->_stopHandlerBlock = 0;

  [(MSASStateMachine *)self workQueueUpdateNextActivityDate];
  v9 = [(MSASStateMachine *)self eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__MSASStateMachine_workQueueDidFailToFinishCommandDueToTemporaryError___block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(v9, block);

  v10 = [(MSASStateMachine *)self postCommandCompletionBlock];

  if (v10)
  {
    v11 = [(MSASStateMachine *)self postCommandCompletionBlock];
    [(MSASStateMachine *)self setPostCommandCompletionBlock:0];
    v11[2](v11);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __71__MSASStateMachine_workQueueDidFailToFinishCommandDueToTemporaryError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  [WeakRetained releaseBusy];
}

- (void)workQueueDidFinishCommandByReplacingCurrentCommandWithCommand:(id)a3 params:(id)a4 personID:(id)a5 albumGUID:(id)a6 assetCollectionGUID:(id)a7
{
  v41 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    v38 = self;
    v39 = 2114;
    v40 = v12;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Command will be replaced by command: %{public}@", buf, 0x16u);
  }

  v17 = [(MSASModelBase *)self->_model dbQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __128__MSASStateMachine_workQueueDidFinishCommandByReplacingCurrentCommandWithCommand_params_personID_albumGUID_assetCollectionGUID___block_invoke;
  block[3] = &unk_278E92048;
  block[4] = self;
  v32 = v12;
  v33 = v13;
  v34 = v14;
  v35 = v15;
  v36 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  dispatch_barrier_sync(v17, block);

  self->_commandState = 1;
  currentCommandParams = self->_currentCommandParams;
  self->_currentCommandParams = 0;

  currentCommand = self->_currentCommand;
  self->_currentCommand = 0;

  stopHandlerBlock = self->_stopHandlerBlock;
  self->_stopHandlerBlock = 0;

  [(MSASStateMachine *)self workQueueUpdateNextActivityDate];
  v26 = [(MSASStateMachine *)self eventQueue];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __128__MSASStateMachine_workQueueDidFinishCommandByReplacingCurrentCommandWithCommand_params_personID_albumGUID_assetCollectionGUID___block_invoke_2;
  v30[3] = &unk_278E926D8;
  v30[4] = self;
  dispatch_async(v26, v30);

  v27 = [(MSASStateMachine *)self workQueue];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __128__MSASStateMachine_workQueueDidFinishCommandByReplacingCurrentCommandWithCommand_params_personID_albumGUID_assetCollectionGUID___block_invoke_3;
  v29[3] = &unk_278E926D8;
  v29[4] = self;
  dispatch_async(v27, v29);

  v28 = *MEMORY[0x277D85DE8];
}

uint64_t __128__MSASStateMachine_workQueueDidFinishCommandByReplacingCurrentCommandWithCommand_params_personID_albumGUID_assetCollectionGUID___block_invoke(void *a1)
{
  [*(a1[4] + 16) dbQueueBeginTransaction];
  [*(a1[4] + 16) dbQueueRemoveCommandIdentifier:*(a1[4] + 32)];
  [*(a1[4] + 16) dbQueueEnqueueCommand:a1[5] params:a1[6] personID:a1[7] albumGUID:a1[8] assetCollectionGUID:a1[9] sequenceNumber:*(a1[4] + 32)];
  v2 = *(a1[4] + 16);

  return [v2 dbQueueEndTransaction];
}

void __128__MSASStateMachine_workQueueDidFinishCommandByReplacingCurrentCommandWithCommand_params_personID_albumGUID_assetCollectionGUID___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  [WeakRetained releaseBusy];
}

uint64_t __128__MSASStateMachine_workQueueDidFinishCommandByReplacingCurrentCommandWithCommand_params_personID_albumGUID_assetCollectionGUID___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) postCommandCompletionBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) postCommandCompletionBlock];
    [*(a1 + 32) setPostCommandCompletionBlock:0];
    v3[2](v3);
  }

  v4 = *(a1 + 32);

  return [v4 workQueueCheckForNextCommand];
}

- (void)workQueueDidFinishCommand
{
  if (self->_commandState != 2)
  {
    __assert_rtn("[MSASStateMachine workQueueDidFinishCommand]", "MSASStateMachine.m", 1078, "_commandState == kMSASCommandStatePerformingCommand");
  }

  self->_commandState = 1;
  v3 = [(MSASStateMachine *)self eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__MSASStateMachine_workQueueDidFinishCommand__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(v3, block);

  [(MSASPersonModel *)self->_model removeCommandIdentifier:self->_currentCommandID];
  currentCommandParams = self->_currentCommandParams;
  self->_currentCommandParams = 0;

  currentCommand = self->_currentCommand;
  self->_currentCommand = 0;

  stopHandlerBlock = self->_stopHandlerBlock;
  self->_stopHandlerBlock = 0;

  [(MSASStateMachine *)self workQueueUpdateNextActivityDate];
  v7 = [(MSASStateMachine *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__MSASStateMachine_workQueueDidFinishCommand__block_invoke_2;
  v8[3] = &unk_278E926D8;
  v8[4] = self;
  dispatch_async(v7, v8);
}

void __45__MSASStateMachine_workQueueDidFinishCommand__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  [WeakRetained releaseBusy];
}

uint64_t __45__MSASStateMachine_workQueueDidFinishCommand__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) postCommandCompletionBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) postCommandCompletionBlock];
    [*(a1 + 32) setPostCommandCompletionBlock:0];
    v3[2](v3);
  }

  v4 = *(a1 + 32);

  return [v4 workQueueCheckForNextCommand];
}

- (void)workQueuePerformNextCommand
{
  v42 = *MEMORY[0x277D85DE8];
  if (![(MSASStateMachine *)self hasShutDown])
  {
    model = self->_model;
    v35 = 0;
    v36 = 0;
    v5 = [(MSASPersonModel *)model commandAtHeadOfQueueOutParams:&v36 outCommandIdentifier:&self->_currentCommandID outPersonID:&v35 outAlbumGUID:0 outAssetCollectionGUID:0];
    v6 = v36;
    v3 = v36;
    v7 = v35;
    objc_storeStrong(&self->_currentCommand, v5);
    objc_storeStrong(&self->_currentCommandParams, v6);
    if (!v5)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v39 = self;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: No more commands to perform.", buf, 0xCu);
      }

      v17 = [(MSASStateMachine *)self eventQueue];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __47__MSASStateMachine_workQueuePerformNextCommand__block_invoke_82;
      v34[3] = &unk_278E926D8;
      v34[4] = self;
      dispatch_async(v17, v34);

      currentCommandParams = self->_currentCommandParams;
      self->_currentCommandParams = 0;

      currentCommand = self->_currentCommand;
      self->_currentCommand = 0;

      self->_commandState = 0;
      goto LABEL_23;
    }

    if (v7)
    {
      v8 = MSASPlatform();
      v9 = objc_opt_respondsToSelector();

      v10 = MSASPlatform();
      v11 = v10;
      if (v9)
      {
        v12 = [v10 personIDEnabledForAlbumSharing:v7];

        if ((v12 & 1) == 0)
        {
LABEL_9:
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v39 = self;
            v40 = 2114;
            v41 = v7;
            _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Retrieved command for personID %{public}@, but Shared Photo Stream has been disabled. Skipping.", buf, 0x16u);
          }

          [(MSASPersonModel *)self->_model removeCommandIdentifier:self->_currentCommandID];
          self->_commandState = 1;
          v13 = [(MSASStateMachine *)self eventQueue];
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v33[2] = __47__MSASStateMachine_workQueuePerformNextCommand__block_invoke_85;
          v33[3] = &unk_278E926D8;
          v33[4] = self;
          dispatch_async(v13, v33);

          [(MSASStateMachine *)self workQueueUpdateNextActivityDate];
          v14 = [(MSASStateMachine *)self workQueue];
          v15 = v14;
          v32[0] = MEMORY[0x277D85DD0];
          v32[1] = 3221225472;
          v32[2] = __47__MSASStateMachine_workQueuePerformNextCommand__block_invoke_2;
          v32[3] = &unk_278E926D8;
          v32[4] = self;
          v16 = v32;
          goto LABEL_22;
        }
      }

      else
      {
        v20 = [v10 personIDsEnabledForAlbumSharing];
        v21 = [v20 containsObject:v7];

        if ((v21 & 1) == 0)
        {
          goto LABEL_9;
        }
      }
    }

    v22 = NSSelectorFromString(v5);
    if (v22)
    {
      v23 = v22;
      if (objc_opt_respondsToSelector())
      {
        v24 = [(NSDictionary *)self->_currentCommandParams objectForKey:@"commandRetryCount"];
        v25 = [v24 intValue];

        v26 = [(NSDictionary *)self->_currentCommandParams mutableCopy];
        v27 = [MEMORY[0x277CCABB0] numberWithInt:(v25 + 1)];
        [v26 setObject:v27 forKey:@"commandRetryCount"];

        [(MSASPersonModel *)self->_model setParams:v26 forCommandWithIdentifier:self->_currentCommandID];
        [self v23];

LABEL_23:
        goto LABEL_24;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v39 = self;
      v40 = 2114;
      v41 = v5;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Unknown command: %{public}@. Skipping.", buf, 0x16u);
    }

    [(MSASPersonModel *)self->_model removeCommandIdentifier:self->_currentCommandID];
    self->_commandState = 1;
    v28 = [(MSASStateMachine *)self eventQueue];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __47__MSASStateMachine_workQueuePerformNextCommand__block_invoke_86;
    v31[3] = &unk_278E926D8;
    v31[4] = self;
    dispatch_async(v28, v31);

    [(MSASStateMachine *)self workQueueUpdateNextActivityDate];
    v14 = [(MSASStateMachine *)self workQueue];
    v15 = v14;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __47__MSASStateMachine_workQueuePerformNextCommand__block_invoke_2_87;
    v30[3] = &unk_278E926D8;
    v30[4] = self;
    v16 = v30;
LABEL_22:
    dispatch_async(v14, v16);

    goto LABEL_23;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v39 = self;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Not performing any more commands because we're shutting down.", buf, 0xCu);
  }

  v3 = [(MSASStateMachine *)self eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__MSASStateMachine_workQueuePerformNextCommand__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(v3, block);
LABEL_24:

  v29 = *MEMORY[0x277D85DE8];
}

void __47__MSASStateMachine_workQueuePerformNextCommand__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  [WeakRetained releaseBusy];
}

void __47__MSASStateMachine_workQueuePerformNextCommand__block_invoke_82(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  [WeakRetained releaseBusy];
}

void __47__MSASStateMachine_workQueuePerformNextCommand__block_invoke_85(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  [WeakRetained releaseBusy];
}

void __47__MSASStateMachine_workQueuePerformNextCommand__block_invoke_86(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  [WeakRetained releaseBusy];
}

- (void)workQueueCheckForNextCommand
{
  v25 = *MEMORY[0x277D85DE8];
  if (self->_commandState > 1u)
  {
    goto LABEL_14;
  }

  if (![(MSASStateMachine *)self hasShutDown])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__4549;
    v23 = __Block_byref_object_dispose__4550;
    v24 = 0;
    v3 = [(MSASStateMachine *)self memberQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__MSASStateMachine_workQueueCheckForNextCommand__block_invoke;
    block[3] = &unk_278E92700;
    block[4] = self;
    block[5] = &buf;
    dispatch_sync(v3, block);

    v4 = *(*(&buf + 1) + 40);
    v5 = [MEMORY[0x277CBEAA8] date];
    LODWORD(v4) = [v4 compare:v5] == 1;

    if (v4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(*(&buf + 1) + 40);
        *v16 = 138543618;
        v17 = self;
        v18 = 2114;
        v19 = v6;
        v7 = MEMORY[0x277D86220];
        v8 = "%{public}@: Holding off until %{public}@ before performing next command.";
        v9 = 22;
LABEL_12:
        _os_log_impl(&dword_245B99000, v7, OS_LOG_TYPE_DEFAULT, v8, v16, v9);
      }
    }

    else
    {
      v10 = MSASPlatform();
      v11 = [v10 MSASIsAllowedToTransferMetadata];

      if (v11)
      {
        v12 = [(MSASStateMachine *)self eventQueue];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __48__MSASStateMachine_workQueueCheckForNextCommand__block_invoke_81;
        v14[3] = &unk_278E926D8;
        v14[4] = self;
        dispatch_async(v12, v14);

        self->_commandState = 2;
        [(MSASStateMachine *)self workQueuePerformNextCommand];
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 138543362;
        v17 = self;
        v7 = MEMORY[0x277D86220];
        v8 = "%{public}@: Not allowed to transfer metadata at this time. Try again later.";
        v9 = 12;
        goto LABEL_12;
      }
    }

    _Block_object_dispose(&buf, 8);

    goto LABEL_14;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = self;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Not checking for any commands because we're shutting down.", &buf, 0xCu);
  }

LABEL_14:
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __48__MSASStateMachine_workQueueCheckForNextCommand__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) nextExpiryDate];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void __48__MSASStateMachine_workQueueCheckForNextCommand__block_invoke_81(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  [WeakRetained retainBusy];
}

- (void)workQueueRetryOutstandingActivities
{
  v6 = *MEMORY[0x277D85DE8];
  if (![(MSASStateMachine *)self isRetryingOutstandingActivities])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v4 = 138543362;
      v5 = self;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Retrying outstanding activities.", &v4, 0xCu);
    }

    [(MSASStateMachine *)self setIsRetryingOutstandingActivities:1];
    [(MSASStateMachine *)self workQueueCheckForNextCommand];
    [(MSASAssetTransferer *)self->_assetUploader retryOutstandingActivities];
    [(MSASAssetTransferer *)self->_assetDownloader retryOutstandingActivities];
    [(MSASStateMachine *)self setIsRetryingOutstandingActivities:0];
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)retryOutstandingActivities
{
  v3 = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__MSASStateMachine_retryOutstandingActivities__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (BOOL)hasEnqueuedActivities
{
  v3 = [(MSASStateMachine *)self _model];
  if ([v3 countOfEnqueuedCommands] <= 0)
  {
    v5 = [(MSASStateMachine *)self _model];
    if ([v5 assetCollectionsInUploadQueue] <= 0)
    {
      v6 = [(MSASStateMachine *)self _model];
      v4 = [v6 hasItemsForDownloadCountFocusAlbumGUID:0 focusAssetCollectionGUID:0];
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)isInRetryState
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(MSASStateMachine *)self memberQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__MSASStateMachine_isInRetryState__block_invoke;
  v5[3] = &unk_278E92700;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)setPersistentObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__MSASStateMachine_setPersistentObject_forKey___block_invoke;
  block[3] = &unk_278E92638;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __47__MSASStateMachine_setPersistentObject_forKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _model];
  [v2 setPersistentObject:*(a1 + 40) forKey:*(a1 + 48)];
}

- (id)persistentObjectForKey:(id)a3
{
  v4 = a3;
  v5 = [(MSASStateMachine *)self _model];
  v6 = [v5 persistentObjectForKey:v4];

  return v6;
}

- (void)MSBackoffManagerDidUpdateNextExpiryDate:(id)a3
{
  v4 = a3;
  v5 = [(MSASStateMachine *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__MSASStateMachine_MSBackoffManagerDidUpdateNextExpiryDate___block_invoke;
  v7[3] = &unk_278E927C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __60__MSASStateMachine_MSBackoffManagerDidUpdateNextExpiryDate___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v2 = [*(a1 + 32) memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__MSASStateMachine_MSBackoffManagerDidUpdateNextExpiryDate___block_invoke_2;
  block[3] = &unk_278E91C78;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v11 = v3;
  v12 = v4;
  v13 = &v14;
  dispatch_sync(v2, block);

  if (*(v15 + 24) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      *buf = 138543618;
      v19 = v7;
      v20 = 2114;
      v21 = v8;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Updated backoff time for backoff manager %{public}@", buf, 0x16u);
    }

    [*(a1 + 32) workQueueUpdateNextActivityDate];
  }

  v5 = [*(a1 + 32) eventQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__MSASStateMachine_MSBackoffManagerDidUpdateNextExpiryDate___block_invoke_80;
  v9[3] = &unk_278E926D8;
  v9[4] = *(a1 + 32);
  dispatch_async(v5, v9);

  _Block_object_dispose(&v14, 8);
  v6 = *MEMORY[0x277D85DE8];
}

void __60__MSASStateMachine_MSBackoffManagerDidUpdateNextExpiryDate___block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v3 + 64);
  if (v2 != v4)
  {
    v5 = *(v3 + 56);
    if (v2 != v5)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v23 = v3;
        v24 = 2114;
        v25 = v2;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Received event for unknown backoff manager %{public}@", buf, 0x16u);
      }

      *(*(*(a1 + 48) + 8) + 24) = 0;
      v6 = *MEMORY[0x277D85DE8];
      return;
    }

    v21 = [v5 copyParameters];
    v15 = [*(a1 + 40) metadataBackoffManagerParameters];
    if (v15)
    {
      v16 = v15;
      v17 = [*(a1 + 40) metadataBackoffManagerParameters];
      v18 = [v17 isEqualToDictionary:v21];

      if (v18)
      {
        goto LABEL_11;
      }
    }

    [*(a1 + 40) setMetadataBackoffManagerParameters:v21];
    v19 = *(a1 + 40);
    v12 = *(v19 + 16);
    v13 = *(v19 + 56);
    v14 = @"metadataBackoffManager";
LABEL_13:
    [v12 setPersistentObject:v13 forKey:v14];
    goto LABEL_14;
  }

  v21 = [v4 copyParameters];
  v7 = [*(a1 + 40) MMCSBackoffManagerParameters];
  if (!v7 || (v8 = v7, [*(a1 + 40) MMCSBackoffManagerParameters], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToDictionary:", v21), v9, v8, (v10 & 1) == 0))
  {
    [*(a1 + 40) setMMCSBackoffManagerParameters:v21];
    v11 = *(a1 + 40);
    v12 = *(v11 + 16);
    v13 = *(v11 + 64);
    v14 = @"MMCSBackoffManager";
    goto LABEL_13;
  }

LABEL_11:
  *(*(*(a1 + 48) + 8) + 24) = 0;
LABEL_14:
  v20 = *MEMORY[0x277D85DE8];
}

void __60__MSASStateMachine_MSBackoffManagerDidUpdateNextExpiryDate___block_invoke_80(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachineDidUpdateServerCommunicationBackoffDate:*(a1 + 32)];
}

- (void)workQueueUpdateNextActivityDate
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(MSASStateMachine *)self latestNextActivityDate];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    v10 = self;
    v11 = 2114;
    v12 = v3;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Computed next activity date: %{public}@", buf, 0x16u);
  }

  v4 = [(MSASStateMachine *)self eventQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__MSASStateMachine_workQueueUpdateNextActivityDate__block_invoke;
  v7[3] = &unk_278E927C8;
  v7[4] = self;
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, v7);

  v6 = *MEMORY[0x277D85DE8];
}

void __51__MSASStateMachine_workQueueUpdateNextActivityDate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  [WeakRetained setNextActivityDate:*(a1 + 40) forPersonID:*(*(a1 + 32) + 104)];
}

- (id)serverCommunicationBackoffDate
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__4549;
  v21 = __Block_byref_object_dispose__4550;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__4549;
  v15 = __Block_byref_object_dispose__4550;
  v16 = 0;
  v3 = [(MSASStateMachine *)self memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__MSASStateMachine_serverCommunicationBackoffDate__block_invoke;
  block[3] = &unk_278E90FA8;
  block[4] = self;
  block[5] = &v17;
  block[6] = &v11;
  dispatch_sync(v3, block);

  v4 = v18[5];
  v5 = v12[5];
  if (v5)
  {
    if (v4)
    {
      v6 = [v5 earlierDate:v4];

      if (v6 != v4)
      {
        goto LABEL_6;
      }

      v5 = v12[5];
    }

    v7 = v5;

    v4 = v7;
  }

LABEL_6:
  v8 = v4;
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v8;
}

uint64_t __50__MSASStateMachine_serverCommunicationBackoffDate__block_invoke(void *a1)
{
  v2 = [*(a1[4] + 56) nextExpiryDate];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1[4] + 64) nextExpiryDate];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return MEMORY[0x2821F96F8]();
}

- (id)latestNextActivityDate
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__4549;
  v23 = __Block_byref_object_dispose__4550;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__4549;
  v17 = __Block_byref_object_dispose__4550;
  v18 = 0;
  v3 = [(MSASStateMachine *)self memberQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__MSASStateMachine_latestNextActivityDate__block_invoke;
  block[3] = &unk_278E90FA8;
  block[4] = self;
  block[5] = &v19;
  block[6] = &v13;
  dispatch_sync(v3, block);

  if ([(MSASPersonModel *)self->_model countOfEnqueuedCommands]< 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v20[5];
  }

  v5 = v4;
  if ([(MSASPersonModel *)self->_model assetsInDownloadQueue]|| [(MSASPersonModel *)self->_model assetCollectionsInUploadQueue])
  {
    v6 = v14[5];
    if (!v6)
    {
      v6 = [MEMORY[0x277CBEAA8] distantPast];
    }

    v7 = v6;
    v8 = v5;
    v9 = v8;
    if (!v7 || v8)
    {
      if (v7 && v8 && [v7 compare:v8] == 1)
      {
        v7 = v7;

        v9 = v7;
      }
    }

    else
    {
      v7 = v7;
      v9 = v7;
    }
  }

  else
  {
    v9 = v5;
    v7 = 0;
  }

  v10 = v9;

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  return v10;
}

uint64_t __42__MSASStateMachine_latestNextActivityDate__block_invoke(void *a1)
{
  v2 = [*(a1[4] + 56) nextExpiryDate];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1[4] + 64) nextExpiryDate];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return MEMORY[0x2821F96F8]();
}

void __70__MSASStateMachine__sendGetServerSideConfigurationDisposition_params___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__MSASStateMachine__sendGetServerSideConfigurationDisposition_params___block_invoke_2;
  block[3] = &unk_278E92638;
  v8 = *(a1 + 32);
  v12 = v5;
  v13 = v8;
  v14 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __70__MSASStateMachine__sendGetServerSideConfigurationDisposition_params___block_invoke_2(id *a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v2 = a1[5];
  if (!v3)
  {
    v6 = [v2 memberQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__MSASStateMachine__sendGetServerSideConfigurationDisposition_params___block_invoke_74;
    block[3] = &unk_278E926D8;
    block[4] = a1[5];
    dispatch_barrier_sync(v6, block);

    v7 = [a1[5] eventQueue];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __70__MSASStateMachine__sendGetServerSideConfigurationDisposition_params___block_invoke_2_75;
    v29[3] = &unk_278E926D8;
    v29[4] = a1[5];
    dispatch_async(v7, v29);

    v8 = [a1[6] objectForKey:@"com.apple.sharedstreams.config.configVersion"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = a1[5];
      *buf = 138543618;
      v32 = v9;
      v33 = 2114;
      v34 = v8;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Retrieved server-side config version: %{public}@", buf, 0x16u);
    }

    v10 = [a1[5] _model];
    v11 = [v10 dbQueue];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __70__MSASStateMachine__sendGetServerSideConfigurationDisposition_params___block_invoke_76;
    v25[3] = &unk_278E92638;
    v26 = v10;
    v12 = v8;
    v27 = v12;
    v28 = a1[6];
    v13 = v10;
    dispatch_barrier_sync(v11, v25);

    v14 = [a1[5] _serverSideConfigDictionaryByApplyingDefaultsToDictionary:a1[6]];
    v15 = a1[5];
    v16 = v15[15];
    v15[15] = v14;

    v17 = a1[5];
    v18 = v17[16];
    v17[16] = v12;
    v19 = v12;

    v20 = [a1[5] eventQueue];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __70__MSASStateMachine__sendGetServerSideConfigurationDisposition_params___block_invoke_2_77;
    v24[3] = &unk_278E926D8;
    v24[4] = a1[5];
    dispatch_async(v20, v24);

    [a1[5] workQueueDidFinishCommand];
    goto LABEL_8;
  }

  if ([v2 workQueueEndCommandWithError:v3 command:0 params:0 albumGUID:0 assetCollectionGUID:0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v4 = a1[5];
      v5 = [a1[4] MSVerboseDescription];
      *buf = 138543618;
      v32 = v4;
      v33 = 2114;
      v34 = v5;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to retrieve server-side configuration. Error: %{public}@", buf, 0x16u);
    }

LABEL_8:
    v21 = *MEMORY[0x277D85DE8];
    return;
  }

  v22 = a1[5];
  v23 = *MEMORY[0x277D85DE8];

  [v22 workQueueDidFinishCommand];
}

void __70__MSASStateMachine__sendGetServerSideConfigurationDisposition_params___block_invoke_2_75(uint64_t a1)
{
  v3 = [*(a1 + 32) daemon];
  v2 = [*(a1 + 32) personID];
  [v3 didReceiveAuthSuccessForPersonID:v2];
}

uint64_t __70__MSASStateMachine__sendGetServerSideConfigurationDisposition_params___block_invoke_76(uint64_t a1)
{
  [*(a1 + 32) dbQueueBeginTransaction];
  [*(a1 + 32) dbQueueSetPersistentString:*(a1 + 40) forKey:@"serverSideConfigVersion"];
  [*(a1 + 32) dbQueueSetPersistentObject:*(a1 + 48) forKey:@"serverSideConfig"];
  v2 = *(a1 + 32);

  return [v2 dbQueueEndTransaction];
}

void __70__MSASStateMachine__sendGetServerSideConfigurationDisposition_params___block_invoke_2_77(uint64_t a1)
{
  v3 = [*(a1 + 32) daemon];
  v2 = [*(a1 + 32) personID];
  [v3 sendServerSideConfigurationDidChangeNotificationForPersonID:v2];
}

- (void)workQueueRefreshServerSideConfig
{
  v5 = [(MSASStateMachine *)self _model];
  v3 = NSStringFromSelector(sel__sendGetServerSideConfigurationDisposition_params_);
  v4 = [(MSASStateMachine *)self personID];
  [v5 enqueueCommand:v3 params:0 personID:v4 albumGUID:0 assetCollectionGUID:0];
}

- (void)refreshServerSideConfig
{
  v3 = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__MSASStateMachine_refreshServerSideConfig__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)serverSideQueueSetServerSideConfiguration:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MSASStateMachine *)self _serverSideConfigDictionaryByApplyingDefaultsToDictionary:v4];
  serverSideConfiguration = self->_serverSideConfiguration;
  self->_serverSideConfiguration = v5;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = self->_serverSideConfiguration;
    *buf = 138543874;
    v13 = self;
    v14 = 2114;
    v15 = v4;
    v16 = 2114;
    v17 = v7;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Setting server-side configuration.\nOriginal server config: %{public}@\nAfter applying defaults: %{public}@", buf, 0x20u);
  }

  v8 = [(MSASStateMachine *)self _model];
  [v8 setPersistentObject:v4 forKey:@"serverSideConfig"];

  v9 = [(MSASStateMachine *)self eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__MSASStateMachine_serverSideQueueSetServerSideConfiguration___block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(v9, block);

  v10 = *MEMORY[0x277D85DE8];
}

void __62__MSASStateMachine_serverSideQueueSetServerSideConfiguration___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) daemon];
  v2 = [*(a1 + 32) personID];
  [v3 sendServerSideConfigurationDidChangeNotificationForPersonID:v2];
}

- (void)setServerSideConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(MSASStateMachine *)self serverSideConfigQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__MSASStateMachine_setServerSideConfiguration___block_invoke;
  v7[3] = &unk_278E927C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (id)serverSideQueueServerSideConfiguration
{
  v21 = *MEMORY[0x277D85DE8];
  serverSideConfiguration = self->_serverSideConfiguration;
  if (!serverSideConfiguration)
  {
    v4 = [(MSASStateMachine *)self _model];
    v5 = [v4 persistentObjectForKey:@"serverSideConfig"];

    if (!v5)
    {
      serverSideConfigurationVersion = self->_serverSideConfigurationVersion;
      self->_serverSideConfigurationVersion = 0;
    }

    v7 = [(MSASStateMachine *)self _serverSideConfigDictionaryByApplyingDefaultsToDictionary:v5];
    v8 = self->_serverSideConfiguration;
    self->_serverSideConfiguration = v7;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v14 = self->_serverSideConfiguration;
      v15 = 138543874;
      v16 = self;
      v17 = 2114;
      v18 = v5;
      v19 = 2114;
      v20 = v14;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Reading persisted server-side config from disk.\nRaw config: %{public}@\nAfter applying defaults: %{public}@", &v15, 0x20u);
    }

    v9 = [(MSASStateMachine *)self _model];
    v10 = [v9 persistentStringForKey:@"serverSideConfigVersion"];
    v11 = self->_serverSideConfigurationVersion;
    self->_serverSideConfigurationVersion = v10;

    serverSideConfiguration = self->_serverSideConfiguration;
  }

  v12 = *MEMORY[0x277D85DE8];

  return serverSideConfiguration;
}

- (NSString)serverSideConfigurationVersion
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4549;
  v11 = __Block_byref_object_dispose__4550;
  v12 = 0;
  v3 = [(MSASStateMachine *)self serverSideConfigQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__MSASStateMachine_serverSideConfigurationVersion__block_invoke;
  v6[3] = &unk_278E92700;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSDictionary)serverSideConfiguration
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4549;
  v11 = __Block_byref_object_dispose__4550;
  v12 = 0;
  v3 = [(MSASStateMachine *)self serverSideConfigQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__MSASStateMachine_serverSideConfiguration__block_invoke;
  v6[3] = &unk_278E92700;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __43__MSASStateMachine_serverSideConfiguration__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) serverSideQueueServerSideConfiguration];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)_serverSideConfigDictionaryByApplyingDefaultsToDictionary:(id)a3
{
  v3 = _serverSideConfigDictionaryByApplyingDefaultsToDictionary__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&_serverSideConfigDictionaryByApplyingDefaultsToDictionary__onceToken, &__block_literal_global_4659);
  }

  v5 = [_serverSideConfigDictionaryByApplyingDefaultsToDictionary__defaults mutableCopy];
  [v5 addEntriesFromDictionary:v4];

  return v5;
}

void __78__MSASStateMachine__serverSideConfigDictionaryByApplyingDefaultsToDictionary___block_invoke()
{
  v12 = MEMORY[0x277CBEAC0];
  v13 = [MEMORY[0x277CCABB0] numberWithInt:3];
  v0 = [MEMORY[0x277CCABB0] numberWithInt:3];
  v1 = [MEMORY[0x277CCABB0] numberWithInt:3];
  v2 = [MEMORY[0x277CCABB0] numberWithInt:10];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:6];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:60];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:60.0];
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:600.0];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:1800.0];
  v9 = [MEMORY[0x277CCABB0] numberWithInt:1200];
  v10 = [v12 dictionaryWithObjectsAndKeys:{v13, @"com.apple.sharedstreams.config.maxNumRetriesOnFailure.server", v0, @"com.apple.sharedstreams.config.maxNumRetriesOnFailure.network", v1, @"com.apple.sharedstreams.config.maxNumRetriesOnFailure.content", v2, @"com.apple.sharedstreams.config.maxUploadAssetBatchSize", v3, @"mme.sharedstreams.client.downloadMMCSBatchSize", @"1536:2048:2560", @"com.apple.sharedstreams.config.dimensions.preview", @"256:332:455", @"com.apple.sharedstreams.config.dimensions.thumbnail", v4, @"com.apple.sharedstreams.config.switch.3G", v5, @"com.apple.sharedstreams.config.defaultRetryAfterInSeconds", v6, @"com.apple.sharedstreams.config.maxActiveTimeAfterPush", v7, @"com.apple.sharedstreams.config.maxActiveTimeAfterLossOfForeground", v8, @"com.apple.sharedstreams.config.maxActiveTimeAfterGlobalResetSync", v9, @"com.apple.sharedstreams.config.maxMMCSTokenValidity", 0}];
  v11 = _serverSideConfigDictionaryByApplyingDefaultsToDictionary__defaults;
  _serverSideConfigDictionaryByApplyingDefaultsToDictionary__defaults = v10;
}

- (void)_cancelOutstandingCommandsDisposition:(int)a3 params:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [v6 objectForKey:@"albumGUID"];
  v8 = [v6 objectForKey:@"assetCollectionGUID"];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v18 = self;
    v19 = 2114;
    v20 = v7;
    v21 = 2114;
    v22 = v8;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Canceling outstanding operations for album GUID %{public}@, asset collection GUID %{public}@.", buf, 0x20u);
  }

  v9 = [(MSASStateMachine *)self _assetUploader];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__MSASStateMachine__cancelOutstandingCommandsDisposition_params___block_invoke;
  v13[3] = &unk_278E91D70;
  v13[4] = self;
  v14 = v7;
  v15 = v8;
  v16 = a3;
  v10 = v8;
  v11 = v7;
  [v9 stopCompletionBlock:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __65__MSASStateMachine__cancelOutstandingCommandsDisposition_params___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _assetDownloader];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__MSASStateMachine__cancelOutstandingCommandsDisposition_params___block_invoke_2;
  v4[3] = &unk_278E91D70;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v2 stopCompletionBlock:v4];
}

void __65__MSASStateMachine__cancelOutstandingCommandsDisposition_params___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__MSASStateMachine__cancelOutstandingCommandsDisposition_params___block_invoke_3;
  v4[3] = &unk_278E91D70;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  dispatch_async(v2, v4);
}

void __65__MSASStateMachine__cancelOutstandingCommandsDisposition_params___block_invoke_3(uint64_t a1)
{
  v60 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v42 = *(a1 + 32);
    *buf = 138543362;
    v59 = v42;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Removing upload items...", buf, 0xCu);
  }

  v2 = [MEMORY[0x277CBEB18] array];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v3 = [*(a1 + 32) _model];
  v4 = [v3 itemsForUpload];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (v5)
  {
    v6 = v5;
    v47 = *v53;
    do
    {
      v7 = 0;
      do
      {
        if (*v53 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v52 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [v8 object];
        v11 = [v8 album];
        v12 = v11;
        v13 = *(a1 + 48);
        if (*(a1 + 40))
        {
          v14 = [v11 GUID];
          v15 = [v14 isEqualToString:*(a1 + 40)];
          v16 = v15;
          if (!v13)
          {

            if ((v16 & 1) == 0)
            {
              goto LABEL_19;
            }

LABEL_17:
            [v2 addObject:v10];
            goto LABEL_19;
          }

          if (v15)
          {
            v17 = [v10 GUID];
            v18 = [v17 isEqualToString:*(a1 + 48)];

            if (v18)
            {
              goto LABEL_17;
            }
          }

          else
          {
          }
        }

        else
        {
          if (!v13)
          {
            goto LABEL_17;
          }

          v19 = [v10 GUID];
          v20 = [v19 isEqualToString:*(a1 + 48)];

          if (v20)
          {
            goto LABEL_17;
          }
        }

LABEL_19:
        if ([v2 count] >= 0x15)
        {
          v21 = [*(a1 + 32) _assetUploader];
          [v21 unregisterAssetCollections:v2];

          v22 = [*(a1 + 32) _model];
          [v22 removeAssetCollectionsFromUploadQueue:v2];

          [v2 removeAllObjects];
        }

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v6 != v7);
      v6 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v6);
  }

  if ([v2 count])
  {
    v23 = [*(a1 + 32) _assetUploader];
    [v23 unregisterAssetCollections:v2];

    v24 = [*(a1 + 32) _model];
    [v24 removeAssetCollectionsFromUploadQueue:v2];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v43 = *(a1 + 32);
    *buf = 138543362;
    v59 = v43;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Finished removing upload items...", buf, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v44 = *(a1 + 32);
    *buf = 138543362;
    v59 = v44;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Removing download items...", buf, 0xCu);
  }

  v25 = [*(a1 + 32) _model];
  v26 = [v25 nextItemsForDownloadFocusAlbumGUID:*(a1 + 40) focusAssetCollectionGUID:*(a1 + 48) maxCount:10];

  while ([v26 count])
  {
    v27 = objc_autoreleasePoolPush();
    v28 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v26, "count")}];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v29 = v26;
    v30 = [v29 countByEnumeratingWithState:&v48 objects:v56 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v49;
      do
      {
        v33 = 0;
        do
        {
          if (*v49 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = [*(*(&v48 + 1) + 8 * v33) object];
          [v28 addObject:v34];

          ++v33;
        }

        while (v31 != v33);
        v31 = [v29 countByEnumeratingWithState:&v48 objects:v56 count:16];
      }

      while (v31);
    }

    v35 = [*(a1 + 32) _assetDownloader];
    [v35 unregisterAssets:v28];

    v36 = [*(a1 + 32) _model];
    [v36 removeAssetsFromDownloadQueue:v28];

    v37 = [*(a1 + 32) _model];
    v26 = [v37 nextItemsForDownloadFocusAlbumGUID:*(a1 + 40) focusAssetCollectionGUID:*(a1 + 48) maxCount:10];

    objc_autoreleasePoolPop(v27);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v45 = *(a1 + 32);
    *buf = 138543362;
    v59 = v45;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Finished removing download items...", buf, 0xCu);
  }

  if (!*(a1 + 56))
  {
    if (*(a1 + 40))
    {
      v38 = [*(a1 + 32) _model];
      [v38 requeuePendingAssetCollectionsWithAlbumGUID:*(a1 + 40)];
    }

    if (*(a1 + 48))
    {
      v39 = [*(a1 + 32) _model];
      [v39 requeuePendingAssetCollectionGUID:*(a1 + 48)];

      v40 = *(a1 + 48);
    }

    else
    {
      v40 = 0;
    }

    [*(a1 + 32) workQueueCancelAllCommandsFilteredByAlbumGUID:*(a1 + 40) assetCollectionGUID:v40];
    [*(a1 + 32) workQueueDidFinishCommand];
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)cancelOutstandingCommandsForAssetCollectionWithGUID:(id)a3
{
  v4 = a3;
  v5 = [(MSASStateMachine *)self _model];
  v6 = NSStringFromSelector(sel__cancelOutstandingCommandsDisposition_params_);
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v4, @"assetCollectionGUID", 0}];

  [v5 enqueueCommandAtHeadOfQueue:v6 params:v7 personID:0 albumGUID:0 assetCollectionGUID:0];

  [(MSASStateMachine *)self retryOutstandingActivities];
}

- (void)cancelOutstandingCommandsForAlbumWithGUID:(id)a3
{
  v4 = a3;
  v5 = [(MSASStateMachine *)self _model];
  v6 = NSStringFromSelector(sel__cancelOutstandingCommandsDisposition_params_);
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v4, @"albumGUID", 0}];

  [v5 enqueueCommandAtHeadOfQueue:v6 params:v7 personID:0 albumGUID:0 assetCollectionGUID:0];

  [(MSASStateMachine *)self retryOutstandingActivities];
}

- (void)setFocusAssetCollectionGUID:(id)a3
{
  v4 = a3;
  v5 = [(MSASStateMachine *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__MSASStateMachine_setFocusAssetCollectionGUID___block_invoke;
  v7[3] = &unk_278E927C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __48__MSASStateMachine_setFocusAssetCollectionGUID___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 144), *(a1 + 40));
  [*(a1 + 32) setPersistentObject:*(a1 + 40) forKey:@"focusAssetCollectionGUID"];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 80);

  return [v3 setFocusAssetCollectionGUID:v2];
}

- (void)setFocusAlbumGUID:(id)a3
{
  v4 = a3;
  v5 = [(MSASStateMachine *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__MSASStateMachine_setFocusAlbumGUID___block_invoke;
  v7[3] = &unk_278E927C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __38__MSASStateMachine_setFocusAlbumGUID___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 136), *(a1 + 40));
  [*(a1 + 32) setPersistentObject:*(a1 + 40) forKey:@"focusAlbumGUID"];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 80);

  return [v3 setFocusAlbumGUID:v2];
}

- (id)migrationCtagToCheckForChanges
{
  v12 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    v3 = [(MSASStateMachine *)self delegate];
    v4 = [v3 persistentStringForKey:@"migrationMarker"];

    if (v4 && [v4 isEqualToString:@"pendingMigration"])
    {
      v5 = +[MSASCloudKitPlugin fetchMigrationCtag];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138543618;
        v9 = self;
        v10 = 2114;
        v11 = v5;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Fetched migrationCtag: %{public}@", &v8, 0x16u);
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)rootCtagToCheckForChanges
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(MSASStateMachine *)self _model];
  v4 = [v3 persistentStringForKey:@"rootCtag"];

  v5 = [(MSASStateMachine *)self persistentObjectForKey:@"rootCtagRetries"];
  v6 = [v5 unsignedIntegerValue];

  if (v6 < 6)
  {
    v7 = v4;
  }

  else
  {
    v7 = [(MSASStateMachine *)self persistentObjectForKey:@"pendingRootCtag"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v10 = 138544130;
      v11 = self;
      v12 = 2048;
      v13 = 5;
      v14 = 2114;
      v15 = v4;
      v16 = 2114;
      v17 = v7;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Retried %lu times for root ctag %{public}@. Replacing with pending root ctag %{public}@.", &v10, 0x2Au);
    }

    [(MSASStateMachine *)self setRootCtagFromPendingRootCtag];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)setRootCtagFromPendingRootCtag
{
  v3 = [(MSASStateMachine *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__MSASStateMachine_setRootCtagFromPendingRootCtag__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __50__MSASStateMachine_setRootCtagFromPendingRootCtag__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) persistentObjectForKey:@"pendingRootCtag"];
  if (v2)
  {
    v7 = v2;
    if ([v2 length])
    {
      v3 = [*(a1 + 32) _model];
      [v3 setPersistentString:v7 forKey:@"rootCtag"];

      v4 = [*(a1 + 32) _model];
      [v4 deletePersistentValueWithKey:@"pendingRootCtag"];

      v5 = [*(a1 + 32) _model];
      [v5 deletePersistentValueWithKey:@"rootCtagRetries"];
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)setPendingRootCtag:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MSASStateMachine *)self persistentObjectForKey:@"rootCtagRetries"];
  v6 = [v5 unsignedIntegerValue];

  if (v6)
  {
    v7 = [(MSASStateMachine *)self persistentObjectForKey:@"pendingRootCtag"];
    if (([v4 isEqualToString:v7] & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543874;
        v12 = self;
        v13 = 2114;
        v14 = v4;
        v15 = 2114;
        v16 = v7;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Setting a new pending root ctag %{public}@ that is different from existing pending root ctag %{public}@.", &v11, 0x20u);
      }

      [(MSASStateMachine *)self setPersistentObject:v4 forKey:@"pendingRootCtag"];
      v6 = 0;
    }

    v8 = v6 + 1;
  }

  else
  {
    [(MSASStateMachine *)self setPersistentObject:v4 forKey:@"pendingRootCtag"];
    v8 = 1;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  [(MSASStateMachine *)self setPersistentObject:v9 forKey:@"rootCtagRetries"];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setDaemon:(id)a3
{
  v4 = a3;
  v5 = [(MSASStateMachine *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __30__MSASStateMachine_setDaemon___block_invoke;
  v7[3] = &unk_278E927C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __30__MSASStateMachine_setDaemon___block_invoke(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 96), *(a1 + 40));
  [*(*(a1 + 32) + 72) setDaemon:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 80);

  return [v3 setDaemon:v2];
}

- (void)workQueueCancelCompletionBlock:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_commandState == 2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = self;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Canceling current operation.", buf, 0xCu);
    }

    v5 = [(MSASStateMachine *)self _stopHandlerBlock];

    if (v5)
    {
      v6 = [(MSASStateMachine *)self _stopHandlerBlock];
      v7 = [(MSASStateMachine *)self _canceledError];
      (v6)[2](v6, v7);
    }
  }

  v8 = [(MSASStateMachine *)self eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__MSASStateMachine_workQueueCancelCompletionBlock___block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(v8, block);

  [(MSASStateMachine *)self workQueueCancelAllCommandsFilteredByAlbumGUID:0 assetCollectionGUID:0];
  assetUploader = self->_assetUploader;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__MSASStateMachine_workQueueCancelCompletionBlock___block_invoke_2;
  v12[3] = &unk_278E927A0;
  v12[4] = self;
  v13 = v4;
  v10 = v4;
  [(MSASAssetTransferer *)assetUploader cancelCompletionBlock:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __51__MSASStateMachine_workQueueCancelCompletionBlock___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) daemon];
  [v1 retainBusy];
}

void __51__MSASStateMachine_workQueueCancelCompletionBlock___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__MSASStateMachine_workQueueCancelCompletionBlock___block_invoke_3;
  v4[3] = &unk_278E927A0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __51__MSASStateMachine_workQueueCancelCompletionBlock___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 80);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__MSASStateMachine_workQueueCancelCompletionBlock___block_invoke_4;
  v4[3] = &unk_278E927A0;
  v4[4] = v2;
  v5 = v1;
  [v3 cancelCompletionBlock:v4];
}

void __51__MSASStateMachine_workQueueCancelCompletionBlock___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) eventQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__MSASStateMachine_workQueueCancelCompletionBlock___block_invoke_5;
  v4[3] = &unk_278E927A0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __51__MSASStateMachine_workQueueCancelCompletionBlock___block_invoke_5(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = [*(a1 + 32) eventQueue];
    dispatch_async(v2, *(a1 + 40));
  }

  v3 = [*(a1 + 32) daemon];
  [v3 releaseBusy];
}

- (void)workQueueCancelAllCommandsFilteredByAlbumGUID:(id)a3 assetCollectionGUID:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v30 = self;
    v31 = 2114;
    v32 = v6;
    v33 = 2114;
    v34 = v7;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Cancelling all commands. Filter album GUID: %{public}@, filter asset collection GUID %{public}@", buf, 0x20u);
  }

  v28 = 0;
  v8 = [(MSASStateMachine *)self _model];
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v9 = [v8 commandAtHeadOfQueueOutParams:&v27 outCommandIdentifier:&v28 outPersonID:0 outAlbumGUID:&v26 outAssetCollectionGUID:&v25];
  v21 = v27;
  v10 = v26;
  v11 = v25;

  if (v9)
  {
    v22 = 0;
    v12 = v10;
    v13 = v11;
    while (!v6 || v12 && [v6 isEqualToString:v12])
    {
      if (!v7)
      {
        goto LABEL_14;
      }

      v14 = 1;
      if (v13)
      {
        goto LABEL_13;
      }

LABEL_18:
      v18 = [(MSASStateMachine *)self _model];
      v23 = v13;
      v24 = v12;
      v19 = [v18 commandWithMinimumIdentifier:v28 + 1 outParams:0 outCommandIdentifier:&v28 outPersonID:0 outAlbumGUID:&v24 outAssetCollectionGUID:&v23];
      v10 = v24;

      v11 = v23;
      v12 = v10;
      v9 = v19;
      v13 = v11;
      if (!v19)
      {
        goto LABEL_21;
      }
    }

    if (!v7)
    {
      goto LABEL_18;
    }

    v14 = 0;
    if (!v13)
    {
      goto LABEL_18;
    }

LABEL_13:
    if ((v14 & [v7 isEqualToString:{v13, v21}]) == 1)
    {
LABEL_14:
      v15 = NSSelectorFromString(v9);
      if (v15)
      {
        v16 = v15;
        if (objc_opt_respondsToSelector())
        {
          [self v16];
        }
      }

      v17 = [(MSASStateMachine *)self _model];
      [v17 removeCommandIdentifier:v28];

      ++v22;
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  v22 = 0;
LABEL_21:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v30 = self;
    v31 = 1024;
    LODWORD(v32) = v22;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Cancelled %d commands.", buf, 0x12u);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)cancelCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(MSASStateMachine *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__MSASStateMachine_cancelCompletionBlock___block_invoke;
  v7[3] = &unk_278E927A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)stopAssetDownloadsCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(MSASStateMachine *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__MSASStateMachine_stopAssetDownloadsCompletionBlock___block_invoke;
  v7[3] = &unk_278E927A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __54__MSASStateMachine_stopAssetDownloadsCompletionBlock___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 80) stopCompletionBlock:0];
  if (*(a1 + 40))
  {
    v2 = [*(a1 + 32) eventQueue];
    dispatch_async(v2, *(a1 + 40));
  }
}

- (void)purgeEverythingCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(MSASStateMachine *)self _model];
  [v5 purgeCompletionBlock:v4];
}

- (void)shutDownCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(MSASStateMachine *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__MSASStateMachine_shutDownCompletionBlock___block_invoke;
  v7[3] = &unk_278E927A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __44__MSASStateMachine_shutDownCompletionBlock___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setHasShutDown:1];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 removeObserver:*(a1 + 32)];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Shutting down uploader.", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 72);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__MSASStateMachine_shutDownCompletionBlock___block_invoke_51;
  v8[3] = &unk_278E927A0;
  v8[4] = v5;
  v9 = v4;
  [v6 shutDownCompletionBlock:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __44__MSASStateMachine_shutDownCompletionBlock___block_invoke_51(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    *buf = 138543362;
    v10 = v2;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Shutting down downloader.", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 80);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__MSASStateMachine_shutDownCompletionBlock___block_invoke_52;
  v7[3] = &unk_278E927A0;
  v7[4] = v4;
  v8 = v3;
  [v5 shutDownCompletionBlock:v7];

  v6 = *MEMORY[0x277D85DE8];
}

void __44__MSASStateMachine_shutDownCompletionBlock___block_invoke_52(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__MSASStateMachine_shutDownCompletionBlock___block_invoke_2;
  v4[3] = &unk_278E927A0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __44__MSASStateMachine_shutDownCompletionBlock___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    *buf = 138543362;
    v18 = v2;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Shutting down state machine.", buf, 0xCu);
  }

  v3 = *(a1 + 32);
  if (v3[2] == 2)
  {
    objc_initWeak(&location, v3);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __44__MSASStateMachine_shutDownCompletionBlock___block_invoke_53;
    v13[3] = &unk_278E90F08;
    objc_copyWeak(&v15, &location);
    v14 = *(a1 + 40);
    [*(a1 + 32) setPostCommandCompletionBlock:v13];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138543362;
      v18 = v4;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Stopping current operation.", buf, 0xCu);
    }

    v5 = [*(a1 + 32) _stopHandlerBlock];

    if (v5)
    {
      v6 = [*(a1 + 32) _stopHandlerBlock];
      v7 = [*(a1 + 32) _stoppedError];
      (v6)[2](v6, v7);
    }

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = [*(a1 + 32) protocol];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __44__MSASStateMachine_shutDownCompletionBlock___block_invoke_55;
    v11[3] = &unk_278E927A0;
    v9 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v9;
    [v8 shutDownCompletionBlock:v11];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __44__MSASStateMachine_shutDownCompletionBlock___block_invoke_53(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained protocol];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__MSASStateMachine_shutDownCompletionBlock___block_invoke_2_54;
  v5[3] = &unk_278E927A0;
  v6 = WeakRetained;
  v7 = *(a1 + 32);
  v4 = WeakRetained;
  [v3 shutDownCompletionBlock:v5];
}

void __44__MSASStateMachine_shutDownCompletionBlock___block_invoke_55(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__MSASStateMachine_shutDownCompletionBlock___block_invoke_2_56;
  v4[3] = &unk_278E927A0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __44__MSASStateMachine_shutDownCompletionBlock___block_invoke_2_54(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__MSASStateMachine_shutDownCompletionBlock___block_invoke_3;
  v3[3] = &unk_278E927A0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  dispatch_async(v2, v3);
}

- (void)_workQueueEmptyFileTransferQueuesCompletionBlock:(id)a3
{
  v11 = a3;
  v4 = [(MSASStateMachine *)self _model];
  v5 = [v4 itemsForDownloadCountFocusAlbumGUID:0 focusAssetCollectionGUID:0];

  model = self->_model;
  self->_model = 0;

  if (!v5)
  {
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [(MSASStateMachine *)self personID];
    v9 = MSPathAlbumSharingSubscribeMMCSLibraryForPersonID(v8);
    [v7 removeItemAtPath:v9 error:0];
  }

  v10 = v11;
  if (v11)
  {
    (*(v11 + 2))(v11);
    v10 = v11;
  }
}

- (void)start
{
  v3 = [(MSASStateMachine *)self eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__MSASStateMachine_start__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(v3, block);
}

void __25__MSASStateMachine_start__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASStateMachineDidStart:*(a1 + 32)];
}

- (void)workQueueApplyServerSideConfiguration
{
  v30 = [(MSASStateMachine *)self serverSideConfiguration];
  v3 = [v30 objectForKey:@"com.apple.sharedstreams.config.maxNumRetriesOnFailure.server"];
  -[MSASStateMachine setMaxMetadataRetryCount:](self, "setMaxMetadataRetryCount:", [v3 intValue]);

  v4 = [(MSASStateMachine *)self _assetUploader];
  v5 = [v30 objectForKey:@"com.apple.sharedstreams.config.maxUploadAssetBatchSize"];
  [v4 setMaxBatchCount:{objc_msgSend(v5, "intValue")}];

  v6 = [(MSASStateMachine *)self _assetUploader];
  v7 = [v30 objectForKey:@"com.apple.sharedstreams.config.maxNumRetriesOnFailure.content"];
  [v6 setMaxRetryCount:{objc_msgSend(v7, "intValue")}];

  v8 = [(MSASStateMachine *)self _assetUploader];
  v9 = [v30 objectForKey:@"com.apple.sharedstreams.config.maxMMCSTokenValidity"];
  [v9 doubleValue];
  [v8 setMaxMMCSTokenValidityTimeInterval:?];

  v10 = [(MSASStateMachine *)self _assetDownloader];
  v11 = [v30 objectForKey:@"mme.sharedstreams.client.downloadMMCSBatchSize"];
  [v10 setMaxBatchCount:{objc_msgSend(v11, "intValue")}];

  v12 = [(MSASStateMachine *)self _assetDownloader];
  v13 = [v30 objectForKey:@"com.apple.sharedstreams.config.maxNumRetriesOnFailure.content"];
  [v12 setMaxRetryCount:{objc_msgSend(v13, "intValue")}];

  v14 = [(MSASStateMachine *)self _assetDownloader];
  v15 = [v30 objectForKey:@"com.apple.sharedstreams.config.maxMMCSTokenValidity"];
  [v15 doubleValue];
  [v14 setMaxMMCSTokenValidityTimeInterval:?];

  v16 = MSASPlatform();
  if (objc_opt_respondsToSelector())
  {
    v17 = [v30 objectForKey:@"com.apple.sharedstreams.config.switch.3G"];
    v18 = v17;
    v19 = v17 && ![v17 BOOLValue];
    [v16 setSuppressCellular:v19];
  }

  v20 = [v30 objectForKey:@"com.apple.sharedstreams.config.dimensions.preview"];
  v21 = [MSImageScalingSpecification specificationWithSharedAlbumSpecificationString:v20];
  derivativeImageScalingSpecification = self->_derivativeImageScalingSpecification;
  self->_derivativeImageScalingSpecification = v21;

  [(MSImageScalingSpecification *)self->_derivativeImageScalingSpecification setAssetTypeFlags:2];
  v23 = [v30 objectForKey:@"com.apple.sharedstreams.config.dimensions.thumbnail"];
  v24 = [MSImageScalingSpecification specificationWithSharedAlbumSpecificationString:v23];
  thumbnailImageScalingSpecification = self->_thumbnailImageScalingSpecification;
  self->_thumbnailImageScalingSpecification = v24;

  [(MSImageScalingSpecification *)self->_thumbnailImageScalingSpecification setAssetTypeFlags:1];
  v26 = [v30 objectForKey:@"com.apple.sharedstreams.config.videoderivatives"];
  v27 = [MSVideoDerivativeSpecification videoDerivativeSpecificationsWithDictionaryArray:v26];
  v28 = [v27 mutableCopy];

  [(NSArray *)v28 addObject:self->_derivativeImageScalingSpecification];
  [(NSArray *)v28 addObject:self->_thumbnailImageScalingSpecification];
  derivativeSpecifications = self->_derivativeSpecifications;
  self->_derivativeSpecifications = v28;
}

- (MSASStateMachine)initWithPersonID:(id)a3 eventQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v80.receiver = self;
  v80.super_class = MSASStateMachine;
  v9 = [(MSASStateMachine *)&v80 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_personID, a3);
    v11 = [[MSASPersonModel alloc] initWithPersonID:v7];
    model = v10->_model;
    v10->_model = v11;

    v13 = MSASPlatform();
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = MSASPlatform();
      -[MSASPersonModel setShouldDownloadEarliestPhotosFirst:](v10->_model, "setShouldDownloadEarliestPhotosFirst:", [v15 shouldDownloadEarliestPhotosFirst]);
    }

    v16 = [(MSASModelBase *)v10->_model persistentObjectForKey:@"metadataBackoffManager"];
    metadataBackoffManager = v10->_metadataBackoffManager;
    v10->_metadataBackoffManager = v16;

    v18 = v10->_metadataBackoffManager;
    if (!v18)
    {
      v19 = [[MSBackoffManager alloc] initWithInitialInterval:0 backoffFactor:5.0 randomizeFactor:2.0 maxBackoffInterval:0.15 retryAfterDate:1200.0];
      v20 = v10->_metadataBackoffManager;
      v10->_metadataBackoffManager = v19;

      v18 = v10->_metadataBackoffManager;
    }

    [(MSBackoffManager *)v18 setDelegate:v10];
    v21 = [(MSASModelBase *)v10->_model persistentObjectForKey:@"MMCSBackoffManager"];
    MMCSBackoffManager = v10->_MMCSBackoffManager;
    v10->_MMCSBackoffManager = v21;

    v23 = v10->_MMCSBackoffManager;
    if (!v23)
    {
      v24 = [[MSBackoffManager alloc] initWithInitialInterval:0 backoffFactor:5.0 randomizeFactor:2.0 maxBackoffInterval:0.15 retryAfterDate:1200.0];
      v25 = v10->_MMCSBackoffManager;
      v10->_MMCSBackoffManager = v24;

      v23 = v10->_MMCSBackoffManager;
    }

    [(MSBackoffManager *)v23 setDelegate:v10];
    v26 = dispatch_queue_create("MSASStateMachine work queue", 0);
    workQueue = v10->_workQueue;
    v10->_workQueue = v26;

    if (v8)
    {
      v28 = v8;
    }

    else
    {
      v28 = dispatch_queue_create("MSASStateMachine event queue", 0);
    }

    eventQueue = v10->_eventQueue;
    v10->_eventQueue = v28;

    v30 = dispatch_queue_create("MSASStateMachine server side config queue", 0);
    serverSideConfigQueue = v10->_serverSideConfigQueue;
    v10->_serverSideConfigQueue = v30;

    v32 = dispatch_queue_create("MSASStateMachine member queue", MEMORY[0x277D85CD8]);
    memberQueue = v10->_memberQueue;
    v10->_memberQueue = v32;

    v34 = [(MSASAssetTransferer *)[MSASAssetUploader alloc] initWithPersonID:v7];
    assetUploader = v10->_assetUploader;
    v10->_assetUploader = v34;

    [(MSASAssetTransferer *)v10->_assetUploader setDelegate:v10];
    [(MSASAssetTransferer *)v10->_assetUploader setModel:v10->_model];
    [(MSASAssetTransferer *)v10->_assetUploader setBackoffManager:v10->_MMCSBackoffManager];
    v36 = [(MSASAssetTransferer *)[MSASAssetDownloader alloc] initWithPersonID:v7];
    assetDownloader = v10->_assetDownloader;
    v10->_assetDownloader = v36;

    [(MSASAssetTransferer *)v10->_assetDownloader setDelegate:v10];
    [(MSASAssetTransferer *)v10->_assetDownloader setModel:v10->_model];
    [(MSASAssetTransferer *)v10->_assetDownloader setBackoffManager:v10->_MMCSBackoffManager];
    objc_initWeak(&location, v10);
    v38 = [MEMORY[0x277CCAB98] defaultCenter];
    v39 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = __48__MSASStateMachine_initWithPersonID_eventQueue___block_invoke;
    v76[3] = &unk_278E90E98;
    v40 = v10;
    v77 = v40;
    objc_copyWeak(&v78, &location);
    v41 = [v38 addObserverForName:@"MSASAssetTransfererDidIdle" object:0 queue:v39 usingBlock:v76];

    v42 = [MEMORY[0x277CCAB98] defaultCenter];
    v43 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __48__MSASStateMachine_initWithPersonID_eventQueue___block_invoke_3;
    v73[3] = &unk_278E90E98;
    objc_copyWeak(&v75, &location);
    v44 = v40;
    v74 = v44;
    v45 = [v42 addObserverForName:@"MSASServerSideConfigDidChangeNotification" object:0 queue:v43 usingBlock:v73];

    v46 = v10->_workQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__MSASStateMachine_initWithPersonID_eventQueue___block_invoke_5;
    block[3] = &unk_278E926D8;
    v47 = v44;
    v72 = v47;
    dispatch_sync(v46, block);
    v48 = [MEMORY[0x277CCAB98] defaultCenter];
    v49 = [MEMORY[0x277CCABD8] mainQueue];
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __48__MSASStateMachine_initWithPersonID_eventQueue___block_invoke_6;
    v68[3] = &unk_278E90E98;
    objc_copyWeak(&v70, &location);
    v50 = v47;
    v69 = v50;
    v51 = [v48 addObserverForName:@"MSASPServerSideConfigurationDidChangeNotification" object:0 queue:v49 usingBlock:v68];

    v52 = [MEMORY[0x277CCAB98] defaultCenter];
    v53 = [MEMORY[0x277CCABD8] mainQueue];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __48__MSASStateMachine_initWithPersonID_eventQueue___block_invoke_44;
    v65[3] = &unk_278E90E98;
    objc_copyWeak(&v67, &location);
    v54 = v50;
    v66 = v54;
    v55 = [v52 addObserverForName:@"MSASPDidReceiveRetryAfterNotification" object:0 queue:v53 usingBlock:v65];

    v56 = [(MSASStateMachine *)v54 persistentObjectForKey:@"focusAlbumGUID"];
    focusAlbumGUID = v54->_focusAlbumGUID;
    v54->_focusAlbumGUID = v56;

    v58 = v54->_focusAlbumGUID;
    v59 = [(MSASStateMachine *)v54 _assetDownloader];
    [v59 setFocusAlbumGUID:v58];

    v60 = [(MSASStateMachine *)v54 persistentObjectForKey:@"focusAssetCollectionGUID"];
    focusAssetCollectionGUID = v54->_focusAssetCollectionGUID;
    v54->_focusAssetCollectionGUID = v60;

    v62 = v54->_focusAssetCollectionGUID;
    v63 = [(MSASStateMachine *)v54 _assetDownloader];
    [v63 setFocusAssetCollectionGUID:v62];

    objc_destroyWeak(&v67);
    objc_destroyWeak(&v70);

    objc_destroyWeak(&v75);
    objc_destroyWeak(&v78);

    objc_destroyWeak(&location);
  }

  return v10;
}

void __48__MSASStateMachine_initWithPersonID_eventQueue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__MSASStateMachine_initWithPersonID_eventQueue___block_invoke_2;
  block[3] = &unk_278E90E70;
  objc_copyWeak(&v4, (a1 + 40));
  dispatch_async(v2, block);

  objc_destroyWeak(&v4);
}

void __48__MSASStateMachine_initWithPersonID_eventQueue___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKey:@"personID"];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained personID];
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    v8 = [*(a1 + 32) workQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__MSASStateMachine_initWithPersonID_eventQueue___block_invoke_4;
    v9[3] = &unk_278E91528;
    objc_copyWeak(&v11, (a1 + 40));
    v10 = *(a1 + 32);
    dispatch_async(v8, v9);

    objc_destroyWeak(&v11);
  }
}

void __48__MSASStateMachine_initWithPersonID_eventQueue___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKey:@"personID"];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained personID];
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    v8 = [*(a1 + 32) workQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__MSASStateMachine_initWithPersonID_eventQueue___block_invoke_7;
    v9[3] = &unk_278E91528;
    objc_copyWeak(&v11, (a1 + 40));
    v10 = v4;
    dispatch_async(v8, v9);

    objc_destroyWeak(&v11);
  }
}

void __48__MSASStateMachine_initWithPersonID_eventQueue___block_invoke_44(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKey:@"personID"];

  v6 = [v3 userInfo];

  v7 = [v6 objectForKey:@"retryAfterDate"];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = [WeakRetained personID];
  v10 = [v5 isEqualToString:v9];

  if (v10)
  {
    v11 = [*(a1 + 32) workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__MSASStateMachine_initWithPersonID_eventQueue___block_invoke_2_45;
    block[3] = &unk_278E917C0;
    v13 = *(a1 + 32);
    v14 = v7;
    objc_copyWeak(&v15, (a1 + 40));
    dispatch_async(v11, block);

    objc_destroyWeak(&v15);
  }
}

void __48__MSASStateMachine_initWithPersonID_eventQueue___block_invoke_2_45(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v7 = 138543618;
    v8 = v2;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Received retry-after from metadata server with date :%{public}@", &v7, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained _metadataBackoffManager];
  [v5 didReceiveRetryAfterDate:*(a1 + 40)];

  v6 = *MEMORY[0x277D85DE8];
}

void __48__MSASStateMachine_initWithPersonID_eventQueue___block_invoke_7(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v8 = 138543362;
    v9 = WeakRetained;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Server-side config has changed. We will refetch the config and try again.", &v8, 0xCu);
  }

  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [v3 _model];
  v5 = NSStringFromSelector(sel__sendGetServerSideConfigurationDisposition_params_);
  [v4 enqueueCommandAtHeadOfQueue:v5 params:0 personID:*(a1 + 32) albumGUID:0 assetCollectionGUID:0];

  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 workQueueRetryOutstandingActivities];

  v7 = *MEMORY[0x277D85DE8];
}

void __48__MSASStateMachine_initWithPersonID_eventQueue___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _model];
  v6 = [v3 persistentStringForKey:@"serverSideConfigVersion"];

  v4 = [*(a1 + 32) protocol];
  [v4 setServerSideConfigVersion:v6];

  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 workQueueApplyServerSideConfiguration];
}

void __48__MSASStateMachine_initWithPersonID_eventQueue___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained workQueueUpdateNextActivityDate];
}

- (MSASStateMachine)init
{
  v3 = [MEMORY[0x277CBEAD8] exceptionWithName:@"MSASStateMachineInitException" reason:0 userInfo:0];
  [v3 raise];

  return 0;
}

- (id)_metadataBackoffManager
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4549;
  v11 = __Block_byref_object_dispose__4550;
  v12 = 0;
  v3 = [(MSASStateMachine *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__MSASStateMachine__metadataBackoffManager__block_invoke;
  v6[3] = &unk_278E92700;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (MSASPhoneInvitations)phoneInvitations
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4549;
  v11 = __Block_byref_object_dispose__4550;
  v12 = 0;
  v3 = [(MSASStateMachine *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__MSASStateMachine_phoneInvitations__block_invoke;
  v6[3] = &unk_278E92700;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __36__MSASStateMachine_phoneInvitations__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 176);
  if (!v2)
  {
    v3 = objc_alloc_init(MSASPhoneInvitations);
    v4 = *(a1 + 32);
    v5 = *(v4 + 176);
    *(v4 + 176) = v3;

    v2 = *(*(a1 + 32) + 176);
  }

  v6 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v6, v2);
}

- (MSASProtocol)protocol
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4549;
  v11 = __Block_byref_object_dispose__4550;
  v12 = 0;
  v3 = [(MSASStateMachine *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __28__MSASStateMachine_protocol__block_invoke;
  v6[3] = &unk_278E92700;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __28__MSASStateMachine_protocol__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 168);
  if (!v2)
  {
    v3 = [MSASProtocol alloc];
    v4 = [*(a1 + 32) personID];
    v5 = [(MSASProtocol *)v3 initWithPersonID:v4];
    v6 = *(a1 + 32);
    v7 = *(v6 + 168);
    *(v6 + 168) = v5;

    v8 = [*(a1 + 32) serverSideConfigurationVersion];
    [*(*(a1 + 32) + 168) setServerSideConfigVersion:v8];

    v2 = *(*(a1 + 32) + 168);
  }

  v9 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v9, v2);
}

@end