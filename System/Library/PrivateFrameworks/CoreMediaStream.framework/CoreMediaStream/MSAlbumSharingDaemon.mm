@interface MSAlbumSharingDaemon
- (BOOL)hasCommandsInGroupedCommandQueue;
- (BOOL)isInRetryState;
- (MSAlbumSharingDaemon)init;
- (MSAlbumSharingDaemonDelegate)delegate;
- (id)_delegateForPersonID:(id)a3;
- (id)boundStateMachineForPersonID:(id)a3;
- (id)clientOrgKeyForRecordID:(id)a3 zoneName:(id)a4 ownerUserID:(id)a5 personID:(id)a6;
- (id)existingModelForPersonID:(id)a3;
- (id)existingStateMachineForPersonID:(id)a3;
- (id)modelForPersonID:(id)a3;
- (id)persistentObjectForKey:(id)a3 personID:(id)a4;
- (id)personIDListeningToPushNotification;
- (id)serverSideConfigurationForPersonID:(id)a3;
- (void)_postModelShutdownForPersonID:(id)a3 completionBlock:(id)a4;
- (void)acceptInvitationWithGUID:(id)a3 personID:(id)a4 info:(id)a5;
- (void)acceptInvitationWithToken:(id)a3 personID:(id)a4 completionBlock:(id)a5;
- (void)acceptInvitationWithToken:(id)a3 personID:(id)a4 info:(id)a5 completionBlock:(id)a6;
- (void)addAccessControlEntries:(id)a3 toAlbumWithGUID:(id)a4 personID:(id)a5 info:(id)a6 completionBlock:(id)a7;
- (void)addAlbum:(id)a3;
- (void)addAlbum:(id)a3 personID:(id)a4 info:(id)a5;
- (void)addAssetCollections:(id)a3 toAlbumWithGUID:(id)a4 personID:(id)a5 info:(id)a6;
- (void)addComments:(id)a3 toAssetCollectionWithGUID:(id)a4 personID:(id)a5 info:(id)a6;
- (void)cancelActivitiesForPersonID:(id)a3;
- (void)deleteAlbumWithGUID:(id)a3 inviterAddress:(id)a4;
- (void)deleteAlbumWithGUID:(id)a3 personID:(id)a4 info:(id)a5;
- (void)deleteAssetCollectionWithGUID:(id)a3 personID:(id)a4 info:(id)a5;
- (void)deleteAssetCollectionsWithGUIDs:(id)a3 personID:(id)a4;
- (void)deleteCommentWithGUID:(id)a3 personID:(id)a4 info:(id)a5;
- (void)didIdle;
- (void)didReceiveCommentTooLongError:(id)a3 forAssetCollection:(id)a4 inAlbum:(id)a5 personID:(id)a6;
- (void)didReceiveTooManyAlbumsError:(id)a3 personID:(id)a4;
- (void)didReceiveTooManyCommentsError:(id)a3 forAssetCollection:(id)a4 inAlbum:(id)a5 personID:(id)a6;
- (void)didReceiveTooManyPhotosError:(id)a3 forAlbum:(id)a4 personID:(id)a5;
- (void)didReceiveTooManySubscriptionsError:(id)a3 personID:(id)a4;
- (void)didUnidle;
- (void)forgetEverythingAboutPersonID:(id)a3 completionBlock:(id)a4;
- (void)forgetEverythingCompletionBlock:(id)a3;
- (void)markAlbumGUIDAsViewed:(id)a3 personID:(id)a4 moveLastViewedAssetCollectionMarker:(BOOL)a5 info:(id)a6;
- (void)markAsSpamAlbumWithGUID:(id)a3 personID:(id)a4;
- (void)markAsSpamInvitationWithGUID:(id)a3 personID:(id)a4;
- (void)markAsSpamInvitationWithToken:(id)a3 personID:(id)a4;
- (void)markCommentsForAssetCollectionWithGUID:(id)a3 asViewedWithLastViewedDate:(id)a4 personID:(id)a5 info:(id)a6;
- (void)modifyAlbumMetadata:(id)a3 personID:(id)a4 info:(id)a5;
- (void)pollForSubscriptionUpdatesTriggeredByPushNotificationForPersonID:(id)a3;
- (void)refreshAccessControlListOfAlbumWithGUID:(id)a3 personID:(id)a4 info:(id)a5;
- (void)refreshCommentsForAssetCollectionWithGUID:(id)a3 resetSync:(BOOL)a4 personID:(id)a5 info:(id)a6;
- (void)refreshContentOfAlbumWithGUID:(id)a3 resetSync:(BOOL)a4 personID:(id)a5 info:(id)a6;
- (void)refreshResetSync:(BOOL)a3 personID:(id)a4 info:(id)a5;
- (void)refreshServerSideConfigurationForPersonID:(id)a3;
- (void)rejectInvitationWithGUID:(id)a3 personID:(id)a4 info:(id)a5;
- (void)removeAccessControlEntryWithGUID:(id)a3 personID:(id)a4 info:(id)a5;
- (void)retrieveAssets:(id)a3 inAlbumWithGUID:(id)a4 personID:(id)a5;
- (void)retrieveAssetsInAssetCollectionsWithGUIDs:(id)a3 assetTypeFlags:(int)a4 personID:(id)a5;
- (void)retryOutstandingActivities;
- (void)retryOutstandingActivitiesForPersonID:(id)a3;
- (void)sendServerSideConfigurationDidChangeNotificationForPersonID:(id)a3;
- (void)setClientOrgKey:(id)a3 forAlbumWithGUID:(id)a4 personID:(id)a5 info:(id)a6;
- (void)setFocusAlbumGUID:(id)a3 forPersonID:(id)a4;
- (void)setFocusAssetCollectionGUID:(id)a3 forPersonID:(id)a4;
- (void)setMigrationMarker:(id)a3 personID:(id)a4;
- (void)setMultipleContributorsEnabled:(BOOL)a3 forAlbumWithGUID:(id)a4 personID:(id)a5 info:(id)a6 completionBlock:(id)a7;
- (void)setNextActivityDate:(id)a3 forPersonID:(id)a4;
- (void)setPersistentObject:(id)a3 forKey:(id)a4 personID:(id)a5;
- (void)setPublicAccessEnabled:(BOOL)a3 forAlbumWithGUID:(id)a4 personID:(id)a5 info:(id)a6 completionBlock:(id)a7;
- (void)shutDown;
- (void)shutDownCompletionBlock:(id)a3;
- (void)shutDownStateMachine:(id)a3 forDestruction:(BOOL)a4 completionBlock:(id)a5;
- (void)start;
- (void)stopAssetDownloadsForPersonID:(id)a3;
- (void)subscribeToAlbumWithGUID:(id)a3 personID:(id)a4 info:(id)a5;
- (void)unsubscribeFromAlbumWithGUID:(id)a3 personID:(id)a4 info:(id)a5;
- (void)updateOwnerReputationScoreForAlbum:(id)a3;
- (void)workQueueForgetEverythingAboutPersonID:(id)a3 completionBlock:(id)a4;
- (void)workQueueForgetEverythingAboutPersonIDs:(id)a3 index:(unint64_t)a4 completionBlock:(id)a5;
@end

@implementation MSAlbumSharingDaemon

- (MSAlbumSharingDaemonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateOwnerReputationScoreForAlbum:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 ownerEmail];

  if (v5)
  {
    v6 = MEMORY[0x277CBDB90];
    v7 = [v4 ownerEmail];
    v8 = [v6 handleWithEmailAddress:v7];

    v9 = objc_opt_new();
    v13 = 0;
    v10 = [v9 reputationForHandle:v8 timeout:&v13 error:10.0];
    v11 = v13;

    if (v10)
    {
      [v4 setOwnerIsWhitelisted:{objc_msgSend(v10, "score") == 1}];
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v15 = self;
      v16 = 2114;
      v17 = v11;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Unable to query contacts reputation score: %{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v15 = self;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Unexpected nil album owner email", buf, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveCommentTooLongError:(id)a3 forAssetCollection:(id)a4 inAlbum:(id)a5 personID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__MSAlbumSharingDaemon_didReceiveCommentTooLongError_forAssetCollection_inAlbum_personID___block_invoke;
  block[3] = &unk_278E92688;
  block[4] = self;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v14 = v13;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __90__MSAlbumSharingDaemon_didReceiveCommentTooLongError_forAssetCollection_inAlbum_personID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 MSAlbumSharingDaemon:*(a1 + 32) didReceiveCommentTooLongError:*(a1 + 40) forAssetCollection:*(a1 + 48) inAlbum:*(a1 + 56) personID:*(a1 + 64)];
  }
}

- (void)didReceiveTooManyCommentsError:(id)a3 forAssetCollection:(id)a4 inAlbum:(id)a5 personID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__MSAlbumSharingDaemon_didReceiveTooManyCommentsError_forAssetCollection_inAlbum_personID___block_invoke;
  block[3] = &unk_278E92688;
  block[4] = self;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v14 = v13;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __91__MSAlbumSharingDaemon_didReceiveTooManyCommentsError_forAssetCollection_inAlbum_personID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 MSAlbumSharingDaemon:*(a1 + 32) didReceiveTooManyCommentsError:*(a1 + 40) forAssetCollection:*(a1 + 48) inAlbum:*(a1 + 56) personID:*(a1 + 64)];
  }
}

- (void)didReceiveTooManySubscriptionsError:(id)a3 personID:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__MSAlbumSharingDaemon_didReceiveTooManySubscriptionsError_personID___block_invoke;
  block[3] = &unk_278E92638;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __69__MSAlbumSharingDaemon_didReceiveTooManySubscriptionsError_personID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 MSAlbumSharingDaemon:*(a1 + 32) didReceiveTooManySubscriptionsError:*(a1 + 40) personID:*(a1 + 48)];
  }
}

- (void)didReceiveTooManyPhotosError:(id)a3 forAlbum:(id)a4 personID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__MSAlbumSharingDaemon_didReceiveTooManyPhotosError_forAlbum_personID___block_invoke;
  v14[3] = &unk_278E92660;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  dispatch_async(MEMORY[0x277D85CD0], v14);
}

void __71__MSAlbumSharingDaemon_didReceiveTooManyPhotosError_forAlbum_personID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 MSAlbumSharingDaemon:*(a1 + 32) didReceiveTooManyPhotosError:*(a1 + 40) forAlbum:*(a1 + 48) personID:*(a1 + 56)];
  }
}

- (void)didReceiveTooManyAlbumsError:(id)a3 personID:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__MSAlbumSharingDaemon_didReceiveTooManyAlbumsError_personID___block_invoke;
  block[3] = &unk_278E92638;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __62__MSAlbumSharingDaemon_didReceiveTooManyAlbumsError_personID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 MSAlbumSharingDaemon:*(a1 + 32) didReceiveTooManyAlbumsError:*(a1 + 40) personID:*(a1 + 48)];
  }
}

- (id)boundStateMachineForPersonID:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3879;
  v17 = __Block_byref_object_dispose__3880;
  v18 = 0;
  v5 = [(MSAlbumSharingDaemon *)self mapQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__MSAlbumSharingDaemon_boundStateMachineForPersonID___block_invoke;
  block[3] = &unk_278E91C78;
  v11 = self;
  v12 = &v13;
  v10 = v4;
  v6 = v4;
  dispatch_barrier_sync(v5, block);

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

void __53__MSAlbumSharingDaemon_boundStateMachineForPersonID___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32))
  {
    goto LABEL_18;
  }

  v2 = [*(*(a1 + 40) + 56) objectForKey:?];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    goto LABEL_18;
  }

  v5 = MSASPlatform();
  v6 = objc_opt_respondsToSelector();

  v7 = MSASPlatform();
  v8 = v7;
  if (v6)
  {
    v9 = [v7 personIDEnabledForAlbumSharing:*(a1 + 32)];

    if ((v9 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v12 = [v7 personIDsEnabledForAlbumSharing];
    v13 = [v12 containsObject:*(a1 + 32)];

    if (!v13)
    {
LABEL_5:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 32);
        v10 = *(a1 + 40);
        *buf = 138543618;
        v29 = v10;
        v30 = 2112;
        v31 = v11;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Shared Photo Stream is disabled for person ID %@. Not instantiating state machine.", buf, 0x16u);
      }

      goto LABEL_18;
    }
  }

  v14 = [*(a1 + 40) _delegateForPersonID:*(a1 + 32)];
  if (v14)
  {
    v15 = [[MSASStateMachine alloc] initWithPersonID:*(a1 + 32)];
    v16 = *(*(a1 + 48) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    v18 = *(*(*(a1 + 48) + 8) + 40);
    if (v18)
    {
      [v18 setDelegate:v14];
      [*(*(*(a1 + 48) + 8) + 40) setDaemon:*(a1 + 40)];
      [v14 setMSASCounterpartInstance:*(*(*(a1 + 48) + 8) + 40)];
      [v14 setDaemon:*(a1 + 40)];
      [*(*(a1 + 40) + 56) setObject:*(*(*(a1 + 48) + 8) + 40) forKey:*(a1 + 32)];
      [*(*(a1 + 40) + 64) setObject:v14 forKey:*(a1 + 32)];
      if ([v14 dbWasRecreated])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v23 = *(a1 + 40);
          *buf = 138543362;
          v29 = v23;
          _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Forcing model reset sync.", buf, 0xCu);
        }

        [v14 reconstruct];
      }

      [*(*(*(a1 + 48) + 8) + 40) start];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __53__MSAlbumSharingDaemon_boundStateMachineForPersonID___block_invoke_351;
      block[3] = &unk_278E92638;
      v24 = *(a1 + 32);
      v19 = v24.i64[0];
      v26 = vextq_s8(v24, v24, 8uLL);
      v27 = v14;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v22 = *(a1 + 32);
    v21 = *(a1 + 40);
    *buf = 138543618;
    v29 = v21;
    v30 = 2112;
    v31 = v22;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not create delegate for person ID %@.", buf, 0x16u);
  }

LABEL_18:
  v20 = *MEMORY[0x277D85DE8];
}

void __53__MSAlbumSharingDaemon_boundStateMachineForPersonID___block_invoke_351(uint64_t a1)
{
  [*(a1 + 32) didCreateStateMachineForPersonID:*(a1 + 40)];
  v2 = [*(a1 + 48) persistentStringForKey:@"migrationMarker"];
  if (v2)
  {
    v3 = v2;
    [*(a1 + 48) refreshResetSync:0];
    v2 = v3;
  }
}

- (id)existingStateMachineForPersonID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3879;
  v16 = __Block_byref_object_dispose__3880;
  v17 = 0;
  v5 = [(MSAlbumSharingDaemon *)self mapQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__MSAlbumSharingDaemon_existingStateMachineForPersonID___block_invoke;
  block[3] = &unk_278E91C78;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __56__MSAlbumSharingDaemon_existingStateMachineForPersonID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 56) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)_delegateForPersonID:(id)a3
{
  v3 = a3;
  v4 = MSASPlatform();
  v5 = [v4 pluginClass];

  v6 = [v5 delegatePluginForPersonID:v3];

  if (([v6 conformsToProtocol:&unk_2858DBA08] & 1) == 0)
  {

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Plugin does not conform to MSASStateMachineDelegate protocol.", v8, 2u);
    }

    v6 = 0;
  }

  return v6;
}

- (void)setPersistentObject:(id)a3 forKey:(id)a4 personID:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(MSAlbumSharingDaemon *)self boundStateMachineForPersonID:a5];
  [v10 setPersistentObject:v9 forKey:v8];
}

- (id)persistentObjectForKey:(id)a3 personID:(id)a4
{
  v6 = a3;
  v7 = [(MSAlbumSharingDaemon *)self boundStateMachineForPersonID:a4];
  v8 = [v7 persistentObjectForKey:v6];

  return v8;
}

- (void)refreshServerSideConfigurationForPersonID:(id)a3
{
  v3 = [(MSAlbumSharingDaemon *)self boundStateMachineForPersonID:a3];
  [v3 refreshServerSideConfig];
}

- (id)serverSideConfigurationForPersonID:(id)a3
{
  v3 = [(MSAlbumSharingDaemon *)self boundStateMachineForPersonID:a3];
  v4 = [v3 serverSideConfiguration];

  return v4;
}

- (id)clientOrgKeyForRecordID:(id)a3 zoneName:(id)a4 ownerUserID:(id)a5 personID:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = +[MSProtocolUtilities currentOwnerCKUserID];
  v14 = [v11 isEqualToString:v13];

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__3879;
  v22 = __Block_byref_object_dispose__3880;
  v23 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __78__MSAlbumSharingDaemon_clientOrgKeyForRecordID_zoneName_ownerUserID_personID___block_invoke;
  v17[3] = &unk_278E90B20;
  v17[4] = &v18;
  [MSASCloudKitPlugin fetchClientOrgKeyForRecordID:v9 zoneName:v10 fieldName:@"clientOrgKey" ownerUserID:v11 isOwned:v14 completionHandler:v17];
  v15 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v15;
}

- (void)forgetEverythingCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(MSAlbumSharingDaemon *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__MSAlbumSharingDaemon_forgetEverythingCompletionBlock___block_invoke;
  v7[3] = &unk_278E927A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __56__MSAlbumSharingDaemon_forgetEverythingCompletionBlock___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) workQueue];
  dispatch_suspend(v2);

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Forgetting everything.", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__3879;
  v14 = __Block_byref_object_dispose__3880;
  v15 = 0;
  v4 = [*(a1 + 32) mapQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__MSAlbumSharingDaemon_forgetEverythingCompletionBlock___block_invoke_255;
  block[3] = &unk_278E92700;
  block[4] = *(a1 + 32);
  block[5] = &buf;
  dispatch_sync(v4, block);

  v5 = *(a1 + 32);
  v6 = *(*(&buf + 1) + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__MSAlbumSharingDaemon_forgetEverythingCompletionBlock___block_invoke_2;
  v8[3] = &unk_278E927A0;
  v8[4] = v5;
  v9 = *(a1 + 40);
  [v5 workQueueForgetEverythingAboutPersonIDs:v6 index:0 completionBlock:v8];

  _Block_object_dispose(&buf, 8);
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __56__MSAlbumSharingDaemon_forgetEverythingCompletionBlock___block_invoke_255(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) allKeys];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void __56__MSAlbumSharingDaemon_forgetEverythingCompletionBlock___block_invoke_2(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = MSPathAlbumSharingDir();
  v28 = 0;
  v4 = [v2 contentsOfDirectoryAtPath:v3 error:&v28];
  v5 = v28;

  if (v4)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          buf[0] = 0;
          v12 = MSPathAlbumSharingDir();
          v13 = [v12 stringByAppendingPathComponent:v11];

          if ([v2 fileExistsAtPath:v13 isDirectory:buf] && buf[0] == 1)
          {
            [v2 removeItemAtPath:v13 error:0];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v24 objects:v33 count:16];
      }

      while (v8);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v20 = *(a1 + 32);
    v21 = [v5 MSVerboseDescription];
    *buf = 138543618;
    v30 = v20;
    v31 = 2114;
    v32 = v21;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not enumerate contents of Shared Photo Stream directory. Error: %{public}@", buf, 0x16u);
  }

  v14 = [*(a1 + 32) daemonModel];
  [v14 clearAllNextActivityDates];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 32);
    *buf = 138543362;
    v30 = v15;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Forgotten everything.", buf, 0xCu);
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __56__MSAlbumSharingDaemon_forgetEverythingCompletionBlock___block_invoke_256;
    v22[3] = &unk_278E927A0;
    v17 = v16;
    v22[4] = *(a1 + 32);
    v23 = v17;
    dispatch_async(MEMORY[0x277D85CD0], v22);
    v18 = v23;
  }

  else
  {
    v18 = [*(a1 + 32) workQueue];
    dispatch_resume(v18);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __56__MSAlbumSharingDaemon_forgetEverythingCompletionBlock___block_invoke_256(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) workQueue];
  dispatch_resume(v2);
}

- (void)workQueueForgetEverythingAboutPersonIDs:(id)a3 index:(unint64_t)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 count] <= a4)
  {
    if (v9)
    {
      v9[2](v9);
    }
  }

  else
  {
    v10 = [v8 objectAtIndex:a4];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __86__MSAlbumSharingDaemon_workQueueForgetEverythingAboutPersonIDs_index_completionBlock___block_invoke;
    v11[3] = &unk_278E91CF0;
    v11[4] = self;
    v12 = v8;
    v14 = a4;
    v13 = v9;
    [(MSAlbumSharingDaemon *)self workQueueForgetEverythingAboutPersonID:v10 completionBlock:v11];
  }
}

- (void)forgetEverythingAboutPersonID:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MSAlbumSharingDaemon *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__MSAlbumSharingDaemon_forgetEverythingAboutPersonID_completionBlock___block_invoke;
  block[3] = &unk_278E91E38;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __70__MSAlbumSharingDaemon_forgetEverythingAboutPersonID_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  dispatch_suspend(v2);

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__MSAlbumSharingDaemon_forgetEverythingAboutPersonID_completionBlock___block_invoke_2;
  v6[3] = &unk_278E927A0;
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v3 workQueueForgetEverythingAboutPersonID:v4 completionBlock:v6];
}

void __70__MSAlbumSharingDaemon_forgetEverythingAboutPersonID_completionBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__MSAlbumSharingDaemon_forgetEverythingAboutPersonID_completionBlock___block_invoke_3;
    block[3] = &unk_278E927A0;
    v3 = v2;
    block[4] = *(a1 + 32);
    v6 = v3;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v4 = [*(a1 + 32) workQueue];
    dispatch_resume(v4);
  }
}

void __70__MSAlbumSharingDaemon_forgetEverythingAboutPersonID_completionBlock___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) workQueue];
  dispatch_resume(v2);
}

- (void)workQueueForgetEverythingAboutPersonID:(id)a3 completionBlock:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Forgetting everything about person ID %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v23 = __Block_byref_object_copy__3879;
  v24 = __Block_byref_object_dispose__3880;
  v25 = 0;
  v8 = [(MSAlbumSharingDaemon *)self mapQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__MSAlbumSharingDaemon_workQueueForgetEverythingAboutPersonID_completionBlock___block_invoke;
  block[3] = &unk_278E91C78;
  v21 = buf;
  block[4] = self;
  v9 = v6;
  v20 = v9;
  dispatch_sync(v8, block);

  v10 = *(*&buf[8] + 40);
  if (v10)
  {
    v11 = [v10 delegate];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __79__MSAlbumSharingDaemon_workQueueForgetEverythingAboutPersonID_completionBlock___block_invoke_2;
    v14[3] = &unk_278E90AF8;
    v14[4] = self;
    v18 = buf;
    v15 = v9;
    v16 = v11;
    v17 = v7;
    v12 = v11;
    dispatch_async(MEMORY[0x277D85CD0], v14);
  }

  else
  {
    [(MSAlbumSharingDaemon *)self _postModelShutdownForPersonID:v9 completionBlock:v7];
  }

  _Block_object_dispose(buf, 8);
  v13 = *MEMORY[0x277D85DE8];
}

void __79__MSAlbumSharingDaemon_workQueueForgetEverythingAboutPersonID_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) nextUpdateDateByPersonID];
  [v5 removeObjectForKey:*(a1 + 40)];
}

void __79__MSAlbumSharingDaemon_workQueueForgetEverythingAboutPersonID_completionBlock___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) willDestroyStateMachineForPersonID:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(*(*(a1 + 64) + 8) + 40);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__MSAlbumSharingDaemon_workQueueForgetEverythingAboutPersonID_completionBlock___block_invoke_3;
  v10[3] = &unk_278E916F0;
  v4 = *(a1 + 48);
  v9 = *(a1 + 32);
  v5 = v9.i64[1];
  v6 = *(a1 + 56);
  v7.i64[0] = v4;
  v7.i64[1] = v6;
  v8 = vzip2q_s64(v9, v7);
  v7.i64[1] = v9.i64[0];
  v11 = v7;
  v12 = v8;
  [v2 shutDownStateMachine:v3 forDestruction:1 completionBlock:v10];
}

void __79__MSAlbumSharingDaemon_workQueueForgetEverythingAboutPersonID_completionBlock___block_invoke_3(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__MSAlbumSharingDaemon_workQueueForgetEverythingAboutPersonID_completionBlock___block_invoke_4;
    block[3] = &unk_278E916F0;
    *&v3 = v2;
    *(&v3 + 1) = *(a1 + 40);
    v10 = v3;
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    *&v6 = v4;
    *(&v6 + 1) = v5;
    v12 = v10;
    v13 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      *buf = 138543618;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Model not found for person ID %@.", buf, 0x16u);
    }

    [*(a1 + 40) _postModelShutdownForPersonID:*(a1 + 48) completionBlock:*(a1 + 56)];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __79__MSAlbumSharingDaemon_workQueueForgetEverythingAboutPersonID_completionBlock___block_invoke_4(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __79__MSAlbumSharingDaemon_workQueueForgetEverythingAboutPersonID_completionBlock___block_invoke_5;
  v4[3] = &unk_278E91E38;
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4[4] = *(a1 + 40);
  v5 = v3;
  v6 = *(a1 + 56);
  [v2 forgetEverythingInfo:0 completionBlock:v4];
}

- (void)shutDownStateMachine:(id)a3 forDestruction:(BOOL)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 delegate];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__MSAlbumSharingDaemon_shutDownStateMachine_forDestruction_completionBlock___block_invoke;
  block[3] = &unk_278E91EB8;
  v15 = v8;
  v16 = self;
  v19 = a4;
  v17 = v10;
  v18 = v9;
  v11 = v9;
  v12 = v10;
  v13 = v8;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __76__MSAlbumSharingDaemon_shutDownStateMachine_forDestruction_completionBlock___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) personID];
  [*(a1 + 40) willDestroyStateMachineForPersonID:v2];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 138543618;
    v14 = v3;
    v15 = 2112;
    v16 = v2;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Shutting down state machine for personID %@.", buf, 0x16u);
  }

  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__MSAlbumSharingDaemon_shutDownStateMachine_forDestruction_completionBlock___block_invoke_253;
  v8[3] = &unk_278E90AD0;
  v5 = *(a1 + 48);
  v6 = *(a1 + 40);
  v9 = v5;
  v10 = v6;
  v12 = *(a1 + 64);
  v11 = *(a1 + 56);
  [v4 shutDownCompletionBlock:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __76__MSAlbumSharingDaemon_shutDownStateMachine_forDestruction_completionBlock___block_invoke_253(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __76__MSAlbumSharingDaemon_shutDownStateMachine_forDestruction_completionBlock___block_invoke_2;
  v5[3] = &unk_278E90AD0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v2;
  v7 = v3;
  v9 = *(a1 + 56);
  v8 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __76__MSAlbumSharingDaemon_shutDownStateMachine_forDestruction_completionBlock___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 40);
      *buf = 138543362;
      v13 = v3;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Shutting down model.", buf, 0xCu);
      v2 = *(a1 + 32);
    }

    v4 = *(a1 + 56);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __76__MSAlbumSharingDaemon_shutDownStateMachine_forDestruction_completionBlock___block_invoke_254;
    v10[3] = &unk_278E927A0;
    v5 = *(a1 + 48);
    v10[4] = *(a1 + 40);
    v11 = v5;
    [v2 shutDownForDestruction:v4 completionBlock:v10];

    goto LABEL_5;
  }

  v7 = *(a1 + 48);
  if (!v7)
  {
LABEL_5:
    v6 = *MEMORY[0x277D85DE8];
    return;
  }

  v8 = *(v7 + 16);
  v9 = *MEMORY[0x277D85DE8];

  v8();
}

uint64_t __76__MSAlbumSharingDaemon_shutDownStateMachine_forDestruction_completionBlock___block_invoke_254(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Model has shut down.", &v5, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_postModelShutdownForPersonID:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MSAlbumSharingDaemon *)self mapQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__MSAlbumSharingDaemon__postModelShutdownForPersonID_completionBlock___block_invoke;
  block[3] = &unk_278E91E38;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_barrier_async(v8, block);
}

void __70__MSAlbumSharingDaemon__postModelShutdownForPersonID_completionBlock___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 56) removeObjectForKey:*(a1 + 40)];
  [*(*(a1 + 32) + 64) removeObjectForKey:*(a1 + 40)];
  [*(*(a1 + 32) + 72) setNextActivityDate:0 forPersonID:*(a1 + 40)];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = MSPathAlbumSharingDirForPersonID(*(a1 + 40));
  [v2 removeItemAtPath:v3 error:0];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__MSAlbumSharingDaemon__postModelShutdownForPersonID_completionBlock___block_invoke_2;
  block[3] = &unk_278E91E38;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __70__MSAlbumSharingDaemon__postModelShutdownForPersonID_completionBlock___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) didDestroyStateMachineForPersonID:*(a1 + 40)];
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 MSAlbumSharingDaemon:*(a1 + 32) didForgetPersonID:*(a1 + 40)];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Completed forgetting personID %@.", &v9, 0x16u);
  }

  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)retrieveAssetsInAssetCollectionsWithGUIDs:(id)a3 assetTypeFlags:(int)a4 personID:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(MSAlbumSharingDaemon *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __90__MSAlbumSharingDaemon_retrieveAssetsInAssetCollectionsWithGUIDs_assetTypeFlags_personID___block_invoke;
  v13[3] = &unk_278E91D70;
  v13[4] = self;
  v14 = v9;
  v15 = v8;
  v16 = a4;
  v11 = v8;
  v12 = v9;
  dispatch_async(v10, v13);
}

void __90__MSAlbumSharingDaemon_retrieveAssetsInAssetCollectionsWithGUIDs_assetTypeFlags_personID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelForPersonID:*(a1 + 40)];
  [v2 retrieveAssetsFromAssetCollectionsWithGUIDs:*(a1 + 48) assetTypeFlags:*(a1 + 56)];
}

- (void)retrieveAssets:(id)a3 inAlbumWithGUID:(id)a4 personID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MSAlbumSharingDaemon *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__MSAlbumSharingDaemon_retrieveAssets_inAlbumWithGUID_personID___block_invoke;
  v15[3] = &unk_278E92660;
  v15[4] = self;
  v16 = v10;
  v17 = v8;
  v18 = v9;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  dispatch_async(v11, v15);
}

void __64__MSAlbumSharingDaemon_retrieveAssets_inAlbumWithGUID_personID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelForPersonID:*(a1 + 40)];
  [v2 retrieveAssets:*(a1 + 48) inAlbumWithGUID:*(a1 + 56)];
}

- (void)deleteCommentWithGUID:(id)a3 personID:(id)a4 info:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MSAlbumSharingDaemon *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__MSAlbumSharingDaemon_deleteCommentWithGUID_personID_info___block_invoke;
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

void __60__MSAlbumSharingDaemon_deleteCommentWithGUID_personID_info___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelForPersonID:*(a1 + 40)];
  [v2 deleteCommentWithGUID:*(a1 + 48) info:*(a1 + 56)];
}

- (void)addComments:(id)a3 toAssetCollectionWithGUID:(id)a4 personID:(id)a5 info:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(MSAlbumSharingDaemon *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__MSAlbumSharingDaemon_addComments_toAssetCollectionWithGUID_personID_info___block_invoke;
  block[3] = &unk_278E92688;
  block[4] = self;
  v20 = v12;
  v21 = v10;
  v22 = v11;
  v23 = v13;
  v15 = v13;
  v16 = v11;
  v17 = v10;
  v18 = v12;
  dispatch_async(v14, block);
}

void __76__MSAlbumSharingDaemon_addComments_toAssetCollectionWithGUID_personID_info___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelForPersonID:*(a1 + 40)];
  [v2 addComments:*(a1 + 48) toAssetCollectionWithGUID:*(a1 + 56) info:*(a1 + 64)];
}

- (void)markCommentsForAssetCollectionWithGUID:(id)a3 asViewedWithLastViewedDate:(id)a4 personID:(id)a5 info:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(MSAlbumSharingDaemon *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __104__MSAlbumSharingDaemon_markCommentsForAssetCollectionWithGUID_asViewedWithLastViewedDate_personID_info___block_invoke;
  block[3] = &unk_278E92688;
  block[4] = self;
  v20 = v12;
  v21 = v10;
  v22 = v11;
  v23 = v13;
  v15 = v13;
  v16 = v11;
  v17 = v10;
  v18 = v12;
  dispatch_async(v14, block);
}

void __104__MSAlbumSharingDaemon_markCommentsForAssetCollectionWithGUID_asViewedWithLastViewedDate_personID_info___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelForPersonID:*(a1 + 40)];
  [v2 markCommentsForAssetCollectionWithGUID:*(a1 + 48) asViewedWithLastViewedDate:*(a1 + 56) info:*(a1 + 64)];
}

- (void)deleteAssetCollectionsWithGUIDs:(id)a3 personID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MSAlbumSharingDaemon *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__MSAlbumSharingDaemon_deleteAssetCollectionsWithGUIDs_personID___block_invoke;
  block[3] = &unk_278E92638;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __65__MSAlbumSharingDaemon_deleteAssetCollectionsWithGUIDs_personID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelForPersonID:*(a1 + 40)];
  [v2 deleteAssetCollectionsWithGUIDs:*(a1 + 48)];
}

- (void)deleteAssetCollectionWithGUID:(id)a3 personID:(id)a4 info:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MSAlbumSharingDaemon *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__MSAlbumSharingDaemon_deleteAssetCollectionWithGUID_personID_info___block_invoke;
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

void __68__MSAlbumSharingDaemon_deleteAssetCollectionWithGUID_personID_info___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelForPersonID:*(a1 + 40)];
  [v2 deleteAssetCollectionWithGUID:*(a1 + 48) info:*(a1 + 56)];
}

- (void)addAssetCollections:(id)a3 toAlbumWithGUID:(id)a4 personID:(id)a5 info:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(MSAlbumSharingDaemon *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__MSAlbumSharingDaemon_addAssetCollections_toAlbumWithGUID_personID_info___block_invoke;
  block[3] = &unk_278E92688;
  block[4] = self;
  v20 = v12;
  v21 = v10;
  v22 = v11;
  v23 = v13;
  v15 = v13;
  v16 = v11;
  v17 = v10;
  v18 = v12;
  dispatch_async(v14, block);
}

void __74__MSAlbumSharingDaemon_addAssetCollections_toAlbumWithGUID_personID_info___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelForPersonID:*(a1 + 40)];
  [v2 addAssetCollections:*(a1 + 48) toAlbumWithGUID:*(a1 + 56) info:*(a1 + 64)];
}

- (void)setMultipleContributorsEnabled:(BOOL)a3 forAlbumWithGUID:(id)a4 personID:(id)a5 info:(id)a6 completionBlock:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [(MSAlbumSharingDaemon *)self workQueue];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __102__MSAlbumSharingDaemon_setMultipleContributorsEnabled_forAlbumWithGUID_personID_info_completionBlock___block_invoke;
  v21[3] = &unk_278E92270;
  v21[4] = self;
  v22 = v13;
  v26 = a3;
  v23 = v12;
  v24 = v14;
  v25 = v15;
  v17 = v15;
  v18 = v14;
  v19 = v12;
  v20 = v13;
  dispatch_async(v16, v21);
}

void __102__MSAlbumSharingDaemon_setMultipleContributorsEnabled_forAlbumWithGUID_personID_info_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelForPersonID:*(a1 + 40)];
  [v2 setMultipleContributorsEnabled:*(a1 + 72) forAlbumWithGUID:*(a1 + 48) info:*(a1 + 56) completionBlock:*(a1 + 64)];
}

- (void)setPublicAccessEnabled:(BOOL)a3 forAlbumWithGUID:(id)a4 personID:(id)a5 info:(id)a6 completionBlock:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a7;
  v14 = [(MSAlbumSharingDaemon *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__MSAlbumSharingDaemon_setPublicAccessEnabled_forAlbumWithGUID_personID_info_completionBlock___block_invoke;
  block[3] = &unk_278E91EB8;
  block[4] = self;
  v19 = v12;
  v22 = a3;
  v20 = v11;
  v21 = v13;
  v15 = v13;
  v16 = v11;
  v17 = v12;
  dispatch_async(v14, block);
}

void __94__MSAlbumSharingDaemon_setPublicAccessEnabled_forAlbumWithGUID_personID_info_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelForPersonID:*(a1 + 40)];
  [v2 setPublicAccessEnabled:*(a1 + 64) forAlbumWithGUID:*(a1 + 48) info:0 completionBlock:*(a1 + 56)];
}

- (void)removeAccessControlEntryWithGUID:(id)a3 personID:(id)a4 info:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MSAlbumSharingDaemon *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__MSAlbumSharingDaemon_removeAccessControlEntryWithGUID_personID_info___block_invoke;
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

void __71__MSAlbumSharingDaemon_removeAccessControlEntryWithGUID_personID_info___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelForPersonID:*(a1 + 40)];
  [v2 removeAccessControlEntryWithGUID:*(a1 + 48) info:*(a1 + 56)];
}

- (void)addAccessControlEntries:(id)a3 toAlbumWithGUID:(id)a4 personID:(id)a5 info:(id)a6 completionBlock:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(MSAlbumSharingDaemon *)self workQueue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __94__MSAlbumSharingDaemon_addAccessControlEntries_toAlbumWithGUID_personID_info_completionBlock___block_invoke;
  v23[3] = &unk_278E90AA8;
  v23[4] = self;
  v24 = v14;
  v25 = v12;
  v26 = v13;
  v27 = v15;
  v28 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v13;
  v21 = v12;
  v22 = v14;
  dispatch_async(v17, v23);
}

void __94__MSAlbumSharingDaemon_addAccessControlEntries_toAlbumWithGUID_personID_info_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelForPersonID:*(a1 + 40)];
  [v2 addAccessControlEntries:*(a1 + 48) toAlbumWithGUID:*(a1 + 56) info:*(a1 + 64) completionBlock:*(a1 + 72)];
}

- (void)rejectInvitationWithGUID:(id)a3 personID:(id)a4 info:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MSAlbumSharingDaemon *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__MSAlbumSharingDaemon_rejectInvitationWithGUID_personID_info___block_invoke;
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

void __63__MSAlbumSharingDaemon_rejectInvitationWithGUID_personID_info___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelForPersonID:*(a1 + 40)];
  [v2 rejectInvitationWithGUID:*(a1 + 48) info:*(a1 + 56)];
}

- (void)acceptInvitationWithGUID:(id)a3 personID:(id)a4 info:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MSAlbumSharingDaemon *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__MSAlbumSharingDaemon_acceptInvitationWithGUID_personID_info___block_invoke;
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

void __63__MSAlbumSharingDaemon_acceptInvitationWithGUID_personID_info___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelForPersonID:*(a1 + 40)];
  [v2 acceptInvitationWithGUID:*(a1 + 48) info:*(a1 + 56)];
}

- (void)acceptInvitationWithToken:(id)a3 personID:(id)a4 info:(id)a5 completionBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(MSAlbumSharingDaemon *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__MSAlbumSharingDaemon_acceptInvitationWithToken_personID_info_completionBlock___block_invoke;
  block[3] = &unk_278E921D0;
  block[4] = self;
  v20 = v11;
  v21 = v10;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v10;
  v18 = v11;
  dispatch_async(v14, block);
}

void __80__MSAlbumSharingDaemon_acceptInvitationWithToken_personID_info_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelForPersonID:*(a1 + 40)];
  [v2 acceptInvitationWithToken:*(a1 + 48) info:*(a1 + 56) completionBlock:*(a1 + 64)];
}

- (void)acceptInvitationWithToken:(id)a3 personID:(id)a4 completionBlock:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__MSAlbumSharingDaemon_acceptInvitationWithToken_personID_completionBlock___block_invoke;
  v10[3] = &unk_278E91D98;
  v11 = v8;
  v9 = v8;
  [(MSAlbumSharingDaemon *)self acceptInvitationWithToken:a3 personID:a4 info:0 completionBlock:v10];
}

- (void)markAsSpamInvitationWithToken:(id)a3 personID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MSAlbumSharingDaemon *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__MSAlbumSharingDaemon_markAsSpamInvitationWithToken_personID___block_invoke;
  block[3] = &unk_278E92638;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __63__MSAlbumSharingDaemon_markAsSpamInvitationWithToken_personID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelForPersonID:*(a1 + 40)];
  [v2 markAsSpamInvitationWithToken:*(a1 + 48) info:0];
}

- (void)markAsSpamInvitationWithGUID:(id)a3 personID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MSAlbumSharingDaemon *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__MSAlbumSharingDaemon_markAsSpamInvitationWithGUID_personID___block_invoke;
  block[3] = &unk_278E92638;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __62__MSAlbumSharingDaemon_markAsSpamInvitationWithGUID_personID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelForPersonID:*(a1 + 40)];
  [v2 markAsSpamInvitationWithGUID:*(a1 + 48) info:0];
}

- (void)markAsSpamAlbumWithGUID:(id)a3 personID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MSAlbumSharingDaemon *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__MSAlbumSharingDaemon_markAsSpamAlbumWithGUID_personID___block_invoke;
  block[3] = &unk_278E92638;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __57__MSAlbumSharingDaemon_markAsSpamAlbumWithGUID_personID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelForPersonID:*(a1 + 40)];
  [v2 markAsSpamAlbumWithGUID:*(a1 + 48) info:0];
}

- (void)unsubscribeFromAlbumWithGUID:(id)a3 personID:(id)a4 info:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MSAlbumSharingDaemon *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__MSAlbumSharingDaemon_unsubscribeFromAlbumWithGUID_personID_info___block_invoke;
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

void __67__MSAlbumSharingDaemon_unsubscribeFromAlbumWithGUID_personID_info___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelForPersonID:*(a1 + 40)];
  [v2 unsubscribeFromAlbumWithGUID:*(a1 + 48) info:*(a1 + 56)];
}

- (void)subscribeToAlbumWithGUID:(id)a3 personID:(id)a4 info:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MSAlbumSharingDaemon *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__MSAlbumSharingDaemon_subscribeToAlbumWithGUID_personID_info___block_invoke;
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

void __63__MSAlbumSharingDaemon_subscribeToAlbumWithGUID_personID_info___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelForPersonID:*(a1 + 40)];
  [v2 subscribeToAlbumWithGUID:*(a1 + 48) info:*(a1 + 56)];
}

- (void)markAlbumGUIDAsViewed:(id)a3 personID:(id)a4 moveLastViewedAssetCollectionMarker:(BOOL)a5 info:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(MSAlbumSharingDaemon *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__MSAlbumSharingDaemon_markAlbumGUIDAsViewed_personID_moveLastViewedAssetCollectionMarker_info___block_invoke;
  block[3] = &unk_278E91FA8;
  block[4] = self;
  v18 = v11;
  v21 = a5;
  v19 = v10;
  v20 = v12;
  v14 = v12;
  v15 = v10;
  v16 = v11;
  dispatch_async(v13, block);
}

void __96__MSAlbumSharingDaemon_markAlbumGUIDAsViewed_personID_moveLastViewedAssetCollectionMarker_info___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelForPersonID:*(a1 + 40)];
  [v2 markAlbumGUIDAsViewed:*(a1 + 48) moveLastViewedAssetCollectionMarker:*(a1 + 64) info:*(a1 + 56)];
}

- (void)deleteAlbumWithGUID:(id)a3 personID:(id)a4 info:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MSAlbumSharingDaemon *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58__MSAlbumSharingDaemon_deleteAlbumWithGUID_personID_info___block_invoke;
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

void __58__MSAlbumSharingDaemon_deleteAlbumWithGUID_personID_info___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelForPersonID:*(a1 + 40)];
  [v2 deleteAlbumWithGUID:*(a1 + 48) info:*(a1 + 56)];
}

- (void)setMigrationMarker:(id)a3 personID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MSAlbumSharingDaemon *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__MSAlbumSharingDaemon_setMigrationMarker_personID___block_invoke;
  block[3] = &unk_278E92638;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __52__MSAlbumSharingDaemon_setMigrationMarker_personID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelForPersonID:*(a1 + 40)];
  [v2 setMigrationMarker:*(a1 + 48)];
}

- (void)setClientOrgKey:(id)a3 forAlbumWithGUID:(id)a4 personID:(id)a5 info:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(MSAlbumSharingDaemon *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__MSAlbumSharingDaemon_setClientOrgKey_forAlbumWithGUID_personID_info___block_invoke;
  block[3] = &unk_278E92688;
  block[4] = self;
  v20 = v12;
  v21 = v10;
  v22 = v11;
  v23 = v13;
  v15 = v13;
  v16 = v11;
  v17 = v10;
  v18 = v12;
  dispatch_async(v14, block);
}

void __71__MSAlbumSharingDaemon_setClientOrgKey_forAlbumWithGUID_personID_info___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelForPersonID:*(a1 + 40)];
  [v2 setClientOrgKey:*(a1 + 48) forAlbumWithGUID:*(a1 + 56) info:*(a1 + 64)];
}

- (void)modifyAlbumMetadata:(id)a3 personID:(id)a4 info:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MSAlbumSharingDaemon *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58__MSAlbumSharingDaemon_modifyAlbumMetadata_personID_info___block_invoke;
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

void __58__MSAlbumSharingDaemon_modifyAlbumMetadata_personID_info___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelForPersonID:*(a1 + 40)];
  [v2 modifyAlbumMetadata:*(a1 + 48) info:*(a1 + 56)];
}

- (void)addAlbum:(id)a3 personID:(id)a4 info:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MSAlbumSharingDaemon *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __47__MSAlbumSharingDaemon_addAlbum_personID_info___block_invoke;
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

void __47__MSAlbumSharingDaemon_addAlbum_personID_info___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelForPersonID:*(a1 + 40)];
  [v2 addAlbum:*(a1 + 48) info:*(a1 + 56)];
}

- (void)refreshCommentsForAssetCollectionWithGUID:(id)a3 resetSync:(BOOL)a4 personID:(id)a5 info:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(MSAlbumSharingDaemon *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__MSAlbumSharingDaemon_refreshCommentsForAssetCollectionWithGUID_resetSync_personID_info___block_invoke;
  block[3] = &unk_278E91FA8;
  block[4] = self;
  v18 = v11;
  v21 = a4;
  v19 = v10;
  v20 = v12;
  v14 = v12;
  v15 = v10;
  v16 = v11;
  dispatch_async(v13, block);
}

void __90__MSAlbumSharingDaemon_refreshCommentsForAssetCollectionWithGUID_resetSync_personID_info___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelForPersonID:*(a1 + 40)];
  [v2 refreshCommentsForAssetCollectionWithGUID:*(a1 + 48) resetSync:*(a1 + 64) info:*(a1 + 56)];
}

- (void)refreshAccessControlListOfAlbumWithGUID:(id)a3 personID:(id)a4 info:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MSAlbumSharingDaemon *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__MSAlbumSharingDaemon_refreshAccessControlListOfAlbumWithGUID_personID_info___block_invoke;
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

void __78__MSAlbumSharingDaemon_refreshAccessControlListOfAlbumWithGUID_personID_info___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelForPersonID:*(a1 + 40)];
  [v2 refreshAccessControlListForAlbumWithGUID:*(a1 + 48) info:*(a1 + 56)];
}

- (void)refreshContentOfAlbumWithGUID:(id)a3 resetSync:(BOOL)a4 personID:(id)a5 info:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(MSAlbumSharingDaemon *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__MSAlbumSharingDaemon_refreshContentOfAlbumWithGUID_resetSync_personID_info___block_invoke;
  block[3] = &unk_278E91FA8;
  block[4] = self;
  v18 = v11;
  v21 = a4;
  v19 = v10;
  v20 = v12;
  v14 = v12;
  v15 = v10;
  v16 = v11;
  dispatch_async(v13, block);
}

void __78__MSAlbumSharingDaemon_refreshContentOfAlbumWithGUID_resetSync_personID_info___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelForPersonID:*(a1 + 40)];
  [v2 refreshContentOfAlbumWithGUID:*(a1 + 48) resetSync:*(a1 + 64) info:*(a1 + 56)];
}

- (void)refreshResetSync:(BOOL)a3 personID:(id)a4 info:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(MSAlbumSharingDaemon *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__MSAlbumSharingDaemon_refreshResetSync_personID_info___block_invoke;
  v13[3] = &unk_278E91D20;
  v13[4] = self;
  v14 = v8;
  v16 = a3;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

void __55__MSAlbumSharingDaemon_refreshResetSync_personID_info___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelForPersonID:*(a1 + 40)];
  [v2 refreshResetSync:*(a1 + 56) info:*(a1 + 48)];
}

- (id)modelForPersonID:(id)a3
{
  v4 = a3;
  v5 = [(MSAlbumSharingDaemon *)self boundStateMachineForPersonID:v4];
  v6 = [v5 delegate];
  v7 = v6;
  if (v6 && ([v6 conformsToProtocol:&unk_2858DAA60] & 1) == 0)
  {
    __assert_rtn("[MSAlbumSharingDaemon modelForPersonID:]", "MSAlbumSharingDaemon.m", 367, "[delegate conformsToProtocol:@protocol(MSASModel)]");
  }

  return v7;
}

- (id)existingModelForPersonID:(id)a3
{
  v4 = a3;
  v5 = [(MSAlbumSharingDaemon *)self existingStateMachineForPersonID:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 delegate];
    if (([v7 conformsToProtocol:&unk_2858DAA60] & 1) == 0)
    {
      __assert_rtn("[MSAlbumSharingDaemon existingModelForPersonID:]", "MSAlbumSharingDaemon.m", 356, "[delegate conformsToProtocol:@protocol(MSASModel)]");
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)sendServerSideConfigurationDidChangeNotificationForPersonID:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __84__MSAlbumSharingDaemon_sendServerSideConfigurationDidChangeNotificationForPersonID___block_invoke;
  v6[3] = &unk_278E927C8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __84__MSAlbumSharingDaemon_sendServerSideConfigurationDidChangeNotificationForPersonID___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*(a1 + 32), @"personID", 0}];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"MSASServerSideConfigDidChangeNotification" object:*(a1 + 40) userInfo:v3];
}

- (void)setNextActivityDate:(id)a3 forPersonID:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(MSAlbumSharingDaemon *)self mapQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__MSAlbumSharingDaemon_setNextActivityDate_forPersonID___block_invoke;
    block[3] = &unk_278E92638;
    block[4] = self;
    v11 = v7;
    v12 = v6;
    dispatch_barrier_async(v8, block);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v14 = self;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Not setting next activity date for a nil person ID.", buf, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __56__MSAlbumSharingDaemon_setNextActivityDate_forPersonID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nextUpdateDateByPersonID];

  if (!v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    [*(a1 + 32) setNextUpdateDateByPersonID:v3];
  }

  v4 = [*(a1 + 32) nextUpdateDateByPersonID];
  v11 = [v4 objectForKey:*(a1 + 40)];

  if (!v11)
  {
    goto LABEL_8;
  }

  v5 = [MEMORY[0x277CBEB68] null];

  v6 = *(a1 + 48);
  if (v11 == v5)
  {
    if (!v6)
    {
      goto LABEL_12;
    }

LABEL_8:
    v7 = *(a1 + 48);
    v8 = [*(a1 + 32) nextUpdateDateByPersonID];
    if (v7)
    {
      v9 = [*(a1 + 48) copy];
    }

    else
    {
      v9 = [MEMORY[0x277CBEB68] null];
    }

    v10 = v9;
    [v8 setObject:v9 forKey:*(a1 + 40)];

    [*(*(a1 + 32) + 72) setNextActivityDate:*(a1 + 48) forPersonID:*(a1 + 40)];
    goto LABEL_12;
  }

  if (([v11 isEqualToDate:v6] & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_12:
}

- (void)pollForSubscriptionUpdatesTriggeredByPushNotificationForPersonID:(id)a3
{
  v4 = a3;
  v5 = [(MSAlbumSharingDaemon *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __89__MSAlbumSharingDaemon_pollForSubscriptionUpdatesTriggeredByPushNotificationForPersonID___block_invoke;
  v7[3] = &unk_278E927C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __89__MSAlbumSharingDaemon_pollForSubscriptionUpdatesTriggeredByPushNotificationForPersonID___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) personIDListeningToPushNotification];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v8 = 138543874;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    v12 = 2112;
    v13 = v2;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Push notification received for Shared Photo Stream with targetPersonID %@. Listener personID %@.", &v8, 0x20u);
  }

  if ([v2 length] && ((objc_msgSend(v2, "isEqualToString:", *(a1 + 40)) & 1) != 0 || !*(a1 + 40)))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Serving push notification", &v8, 0xCu);
    }

    v6 = [*(a1 + 32) boundStateMachineForPersonID:v2];
    [v6 checkForChangesResetSync:0 info:0];

    [*(a1 + 32) didReceivePushNotificationForPersonID:v2];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)personIDListeningToPushNotification
{
  v2 = MSASPlatform();
  v3 = [v2 pluginClass];

  return [v3 MSASPersonIDForPollingTriggeredByPushNotification];
}

- (void)deleteAlbumWithGUID:(id)a3 inviterAddress:(id)a4
{
  v5 = a4;
  v8 = a3;
  v6 = MSASPlatform();
  v7 = [v6 pluginClass];

  [v7 didFindDeletedAlbumWithGUID:v8 inviterAddress:v5];
}

- (void)addAlbum:(id)a3
{
  v4 = a3;
  [(MSAlbumSharingDaemon *)self updateOwnerReputationScoreForAlbum:v4];
  v5 = MSASPlatform();
  v6 = [v5 pluginClass];

  v7 = [v6 MSASPersonIDForPollingTriggeredByPushNotification];
  v8 = [(MSAlbumSharingDaemon *)self workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __33__MSAlbumSharingDaemon_addAlbum___block_invoke;
  v11[3] = &unk_278E90A80;
  v11[4] = self;
  v12 = v7;
  v13 = v4;
  v14 = v6;
  v9 = v4;
  v10 = v7;
  dispatch_async(v8, v11);
}

void __33__MSAlbumSharingDaemon_addAlbum___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) modelForPersonID:*(a1 + 40)];
  v3 = *(a1 + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__MSAlbumSharingDaemon_addAlbum___block_invoke_2;
  v6[3] = &unk_278E90A58;
  v4 = v3;
  v5 = *(a1 + 56);
  v7 = v4;
  v8 = v5;
  [v2 validateInvitationForAlbum:v4 completionBlock:v6];
}

void __33__MSAlbumSharingDaemon_addAlbum___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) GUID];
      v10 = 138543618;
      v11 = v6;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to validate invitationToken for album %{public}@: %{public}@", &v10, 0x16u);
LABEL_10:
    }
  }

  else
  {
    v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (a2)
    {
      if (v7)
      {
        v8 = [*(a1 + 32) GUID];
        v10 = 138543362;
        v11 = v8;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Validated invitationToken for album %{public}@", &v10, 0xCu);
      }

      [*(a1 + 40) didFindNewAlbum:*(a1 + 32)];
    }

    else if (v7)
    {
      v6 = [*(a1 + 32) GUID];
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "invitationToken for album %{public}@ is invalid", &v10, 0xCu);
      goto LABEL_10;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)cancelActivitiesForPersonID:(id)a3
{
  v4 = a3;
  v5 = [(MSAlbumSharingDaemon *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__MSAlbumSharingDaemon_cancelActivitiesForPersonID___block_invoke;
  v7[3] = &unk_278E927C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __52__MSAlbumSharingDaemon_cancelActivitiesForPersonID___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) workQueue];
  dispatch_suspend(v2);

  v3 = [*(a1 + 32) boundStateMachineForPersonID:*(a1 + 40)];
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      *buf = 138543618;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Canceling all activities for personID %@", buf, 0x16u);
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __52__MSAlbumSharingDaemon_cancelActivitiesForPersonID___block_invoke_11;
    v8[3] = &unk_278E926D8;
    v8[4] = *(a1 + 32);
    [v3 cancelCompletionBlock:v8];
  }

  else
  {
    v6 = [*(a1 + 32) workQueue];
    dispatch_resume(v6);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __52__MSAlbumSharingDaemon_cancelActivitiesForPersonID___block_invoke_11(uint64_t a1)
{
  v1 = [*(a1 + 32) workQueue];
  dispatch_resume(v1);
}

- (void)stopAssetDownloadsForPersonID:(id)a3
{
  v4 = a3;
  v5 = [(MSAlbumSharingDaemon *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__MSAlbumSharingDaemon_stopAssetDownloadsForPersonID___block_invoke;
  v7[3] = &unk_278E927C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __54__MSAlbumSharingDaemon_stopAssetDownloadsForPersonID___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) workQueue];
  dispatch_suspend(v3);

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__3879;
  v20 = __Block_byref_object_dispose__3880;
  v21 = 0;
  v4 = [*v2 mapQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__MSAlbumSharingDaemon_stopAssetDownloadsForPersonID___block_invoke_9;
  block[3] = &unk_278E91C78;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v15 = &v16;
  block[4] = v5;
  v14 = v6;
  dispatch_sync(v4, block);

  v7 = v17[5];
  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      *buf = 138543618;
      v23 = v8;
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Stopping downloads for personID %@.", buf, 0x16u);
      v7 = v17[5];
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __54__MSAlbumSharingDaemon_stopAssetDownloadsForPersonID___block_invoke_10;
    v12[3] = &unk_278E926D8;
    v12[4] = *(a1 + 32);
    [v7 stopAssetDownloadsCompletionBlock:v12];
  }

  else
  {
    v10 = [*(a1 + 32) workQueue];
    dispatch_resume(v10);
  }

  _Block_object_dispose(&v16, 8);
  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __54__MSAlbumSharingDaemon_stopAssetDownloadsForPersonID___block_invoke_9(void *a1)
{
  v2 = [*(a1[4] + 56) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void __54__MSAlbumSharingDaemon_stopAssetDownloadsForPersonID___block_invoke_10(uint64_t a1)
{
  v1 = [*(a1 + 32) workQueue];
  dispatch_resume(v1);
}

- (void)retryOutstandingActivitiesForPersonID:(id)a3
{
  v4 = a3;
  v5 = [(MSAlbumSharingDaemon *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__MSAlbumSharingDaemon_retryOutstandingActivitiesForPersonID___block_invoke;
  v7[3] = &unk_278E927C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __62__MSAlbumSharingDaemon_retryOutstandingActivitiesForPersonID___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isRetryingOutstandingActivities];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) setIsRetryingOutstandingActivities:1];
    v3 = [*(a1 + 32) boundStateMachineForPersonID:*(a1 + 40)];
    [v3 retryOutstandingActivities];

    v4 = *(a1 + 32);

    return [v4 setIsRetryingOutstandingActivities:0];
  }

  return result;
}

- (void)retryOutstandingActivities
{
  v3 = [(MSAlbumSharingDaemon *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__MSAlbumSharingDaemon_retryOutstandingActivities__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(v3, block);
}

void __50__MSAlbumSharingDaemon_retryOutstandingActivities__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) isRetryingOutstandingActivities] & 1) == 0)
  {
    [*(a1 + 32) setIsRetryingOutstandingActivities:1];
    v2 = [*(*(a1 + 32) + 72) nextActivityDateByPersonID];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v10;
      do
      {
        v6 = 0;
        do
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = [*(a1 + 32) boundStateMachineForPersonID:*(*(&v9 + 1) + 8 * v6)];
          [v7 retryOutstandingActivities];

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v4);
    }

    [*(a1 + 32) setIsRetryingOutstandingActivities:0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasCommandsInGroupedCommandQueue
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(MSAlbumSharingDaemon *)self mapQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__MSAlbumSharingDaemon_hasCommandsInGroupedCommandQueue__block_invoke;
  v5[3] = &unk_278E92700;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __56__MSAlbumSharingDaemon_hasCommandsInGroupedCommandQueue__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 64);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(a1 + 32) + 64) objectForKey:{*(*(&v9 + 1) + 8 * i), v9}];
        if ([v7 hasCommandsInGroupedCommandQueue])
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;

          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)isInRetryState
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(MSAlbumSharingDaemon *)self mapQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__MSAlbumSharingDaemon_isInRetryState__block_invoke;
  v5[3] = &unk_278E92700;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __38__MSAlbumSharingDaemon_isInRetryState__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 56);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(a1 + 32) + 56) objectForKey:{*(*(&v9 + 1) + 8 * i), v9}];
        if ([v7 isInRetryState])
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;

          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setFocusAssetCollectionGUID:(id)a3 forPersonID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MSAlbumSharingDaemon *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__MSAlbumSharingDaemon_setFocusAssetCollectionGUID_forPersonID___block_invoke;
  block[3] = &unk_278E92638;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __64__MSAlbumSharingDaemon_setFocusAssetCollectionGUID_forPersonID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__MSAlbumSharingDaemon_setFocusAssetCollectionGUID_forPersonID___block_invoke_2;
  block[3] = &unk_278E92638;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  dispatch_async(v2, block);
}

void __64__MSAlbumSharingDaemon_setFocusAssetCollectionGUID_forPersonID___block_invoke_2(void *a1)
{
  v2 = [*(a1[4] + 56) objectForKey:a1[5]];
  [v2 setFocusAssetCollectionGUID:a1[6]];
}

- (void)setFocusAlbumGUID:(id)a3 forPersonID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MSAlbumSharingDaemon *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__MSAlbumSharingDaemon_setFocusAlbumGUID_forPersonID___block_invoke;
  block[3] = &unk_278E92638;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __54__MSAlbumSharingDaemon_setFocusAlbumGUID_forPersonID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__MSAlbumSharingDaemon_setFocusAlbumGUID_forPersonID___block_invoke_2;
  block[3] = &unk_278E92638;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  dispatch_async(v2, block);
}

void __54__MSAlbumSharingDaemon_setFocusAlbumGUID_forPersonID___block_invoke_2(void *a1)
{
  v2 = [*(a1[4] + 56) objectForKey:a1[5]];
  [v2 setFocusAlbumGUID:a1[6]];
}

- (void)didUnidle
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v7 = self;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Unidled.", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = MSAlbumSharingDaemon;
  [(MSDaemon *)&v5 didUnidle];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained MSAlbumSharingDaemonDidUnidle:self];

  v4 = *MEMORY[0x277D85DE8];
}

- (void)didIdle
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v7 = self;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Idled.", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained MSAlbumSharingDaemonDidIdle:self];

  v5.receiver = self;
  v5.super_class = MSAlbumSharingDaemon;
  [(MSDaemon *)&v5 didIdle];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)shutDownCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(MSAlbumSharingDaemon *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__MSAlbumSharingDaemon_shutDownCompletionBlock___block_invoke;
  v7[3] = &unk_278E927A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __48__MSAlbumSharingDaemon_shutDownCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  dispatch_suspend(v2);

  v3 = [*(a1 + 32) mapQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__MSAlbumSharingDaemon_shutDownCompletionBlock___block_invoke_2;
  v5[3] = &unk_278E927A0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  dispatch_barrier_async(v3, v5);
}

void __48__MSAlbumSharingDaemon_shutDownCompletionBlock___block_invoke_2(uint64_t a1)
{
  if ([*(*(a1 + 32) + 56) count])
  {
    v2 = [*(*(a1 + 32) + 56) allKeys];
    v3 = *(a1 + 32);
    v4 = v3[7];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __48__MSAlbumSharingDaemon_shutDownCompletionBlock___block_invoke_3;
    v11[3] = &unk_278E927A0;
    v5 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v5;
    [v3 mapQueueShutDownStateMachineInMap:v4 personIDs:v2 index:0 forDestruction:0 completionBlock:v11];
  }

  else
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __48__MSAlbumSharingDaemon_shutDownCompletionBlock___block_invoke_5;
      block[3] = &unk_278E927A0;
      v7 = v6;
      block[4] = *(a1 + 32);
      v10 = v7;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    else
    {
      v8 = [*(a1 + 32) workQueue];
      dispatch_resume(v8);
    }
  }
}

void __48__MSAlbumSharingDaemon_shutDownCompletionBlock___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__MSAlbumSharingDaemon_shutDownCompletionBlock___block_invoke_4;
    block[3] = &unk_278E927A0;
    v3 = v2;
    block[4] = *(a1 + 32);
    v6 = v3;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v4 = [*(a1 + 32) workQueue];
    dispatch_resume(v4);
  }
}

void __48__MSAlbumSharingDaemon_shutDownCompletionBlock___block_invoke_5(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) workQueue];
  dispatch_resume(v2);
}

void __48__MSAlbumSharingDaemon_shutDownCompletionBlock___block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) workQueue];
  dispatch_resume(v2);
}

void __105__MSAlbumSharingDaemon_mapQueueShutDownStateMachineInMap_personIDs_index_forDestruction_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __105__MSAlbumSharingDaemon_mapQueueShutDownStateMachineInMap_personIDs_index_forDestruction_completionBlock___block_invoke_2;
  block[3] = &unk_278E90A30;
  v8 = *(a1 + 32);
  v3 = *(&v8 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v6 = v5;
  *&v7 = v4;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  dispatch_async(v2, block);
}

- (void)shutDown
{
  v3 = [(MSAlbumSharingDaemon *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__MSAlbumSharingDaemon_shutDown__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)start
{
  v3 = [(MSAlbumSharingDaemon *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__MSAlbumSharingDaemon_start__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(v3, block);
}

void __29__MSAlbumSharingDaemon_start__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) personIDListeningToPushNotification];
  if ([v3 length])
  {
    v2 = [*(a1 + 32) boundStateMachineForPersonID:v3];
    [v2 checkForChangesIfMissingRootCtag];

    [*(a1 + 32) retryOutstandingActivities];
  }
}

- (MSAlbumSharingDaemon)init
{
  v14.receiver = self;
  v14.super_class = MSAlbumSharingDaemon;
  v2 = [(MSDaemon *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_create("MSAlbumSharingDaemon map queue", MEMORY[0x277D85CD8]);
    mapQueue = v2->_mapQueue;
    v2->_mapQueue = v3;

    v5 = dispatch_queue_create("MSAlbumSharingDaemon work queue", 0);
    workQueue = v2->_workQueue;
    v2->_workQueue = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    personIDToStateMachineMap = v2->_personIDToStateMachineMap;
    v2->_personIDToStateMachineMap = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    personIDToDelegateMap = v2->_personIDToDelegateMap;
    v2->_personIDToDelegateMap = v9;

    v11 = objc_alloc_init(MSASDaemonModel);
    daemonModel = v2->_daemonModel;
    v2->_daemonModel = v11;
  }

  return v2;
}

@end