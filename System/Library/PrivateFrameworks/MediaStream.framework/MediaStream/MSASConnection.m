@interface MSASConnection
+ (id)sharedConnection;
- (MSASConnection)init;
- (NSMutableDictionary)focusAlbumGUIDByPersonID;
- (NSMutableDictionary)focusAlbumTimerByPersonID;
- (NSMutableDictionary)foregroundPingTimerContextByPersonID;
- (NSMutableDictionary)serverSideConfigurationDictionaryByPersonID;
- (id)_cloneArray:(id)a3;
- (id)_communicationFailureError;
- (void)XPCNSClientConnection:(id)a3 didReceiveRequest:(id)a4;
- (void)_sendMessageReliably:(id)a3 data:(id)a4 successHandler:(id)a5 failureHandler:(id)a6;
- (void)acceptInvitationWithGUID:(id)a3 personID:(id)a4 info:(id)a5;
- (void)acceptInvitationWithToken:(id)a3 personID:(id)a4 completionBlock:(id)a5;
- (void)acceptInvitationWithToken:(id)a3 personID:(id)a4 info:(id)a5 completionBlock:(id)a6;
- (void)accessControlGUIDsForAlbumWithGUID:(id)a3 personID:(id)a4 completionBlock:(id)a5;
- (void)accessControlWithGUID:(id)a3 personID:(id)a4 completionBlock:(id)a5;
- (void)activityIsThrottledByLackOfDiskSpacePersonID:(id)a3 completionBlock:(id)a4;
- (void)addAccessControlEntries:(id)a3 toAlbumWithGUID:(id)a4 personID:(id)a5 info:(id)a6 completionBlock:(id)a7;
- (void)addAlbum:(id)a3 personID:(id)a4 info:(id)a5;
- (void)addAssetCollections:(id)a3 toAlbumWithGUID:(id)a4 personID:(id)a5 info:(id)a6;
- (void)addComments:(id)a3 toAssetCollectionWithGUID:(id)a4 personID:(id)a5 info:(id)a6;
- (void)albumGUIDsForPersonID:(id)a3 completionBlock:(id)a4;
- (void)albumWithGUID:(id)a3 personID:(id)a4 completionBlock:(id)a5;
- (void)assetCollectionGUIDsInAlbumWithGUID:(id)a3 personID:(id)a4 completionBlock:(id)a5;
- (void)assetCollectionWithGUID:(id)a3 personID:(id)a4 completionBlock:(id)a5;
- (void)cancelActivitiesForPersonID:(id)a3;
- (void)clientOrgKeyForRecordID:(id)a3 zoneName:(id)a4 ownerUserID:(id)a5 personID:(id)a6 completionBlock:(id)a7;
- (void)commentGUIDsForAssetCollectionWithGUID:(id)a3 personID:(id)a4 completionBlock:(id)a5;
- (void)commentWithGUID:(id)a3 personID:(id)a4 completionBlock:(id)a5;
- (void)deleteAlbumWithGUID:(id)a3 personID:(id)a4 info:(id)a5;
- (void)deleteAssetCollectionWithGUID:(id)a3 personID:(id)a4 info:(id)a5;
- (void)deleteAssetCollectionsWithGUIDs:(id)a3 personID:(id)a4;
- (void)deleteCommentWithGUID:(id)a3 personID:(id)a4 info:(id)a5;
- (void)forgetEverythingAboutPersonID:(id)a3;
- (void)handlePushNotificationForPersonID:(id)a3;
- (void)invitationGUIDsForPersonID:(id)a3 completionBlock:(id)a4;
- (void)invitationWithGUID:(id)a3 personID:(id)a4 completionBlock:(id)a5;
- (void)isAssetCollectionWithGUID:(id)a3 markedAsUnviewedPersonID:(id)a4 completionBlock:(id)a5;
- (void)isInRetryStateHandler:(id)a3;
- (void)markAsSpamAlbumWithGUID:(id)a3 personID:(id)a4 completionBlock:(id)a5;
- (void)markAsSpamInvitationWithGUID:(id)a3 personID:(id)a4 completionBlock:(id)a5;
- (void)markAsSpamInvitationWithToken:(id)a3 personID:(id)a4 completionBlock:(id)a5;
- (void)markCommentsForAssetCollectionWithGUID:(id)a3 asViewedWithLastViewedDate:(id)a4 personID:(id)a5 info:(id)a6;
- (void)modifyAlbumMetadata:(id)a3 personID:(id)a4 info:(id)a5;
- (void)nextActivityDateHandler:(id)a3;
- (void)pingForeground;
- (void)refreshAccessControlListForAlbumWithGUID:(id)a3 personID:(id)a4 info:(id)a5;
- (void)rejectInvitationWithGUID:(id)a3 personID:(id)a4 info:(id)a5;
- (void)removeAccessControlEntryWithGUID:(id)a3 personID:(id)a4 info:(id)a5;
- (void)retrieveAssets:(id)a3 inAlbumWithGUID:(id)a4 personID:(id)a5;
- (void)retryOutstandingActivities;
- (void)retryOutstandingActivitiesForPersonID:(id)a3;
- (void)serverSideConfigurationDictionaryForPersonID:(id)a3 completionBlock:(id)a4;
- (void)setClientOrgKey:(id)a3 forAlbumWithGUID:(id)a4 personID:(id)a5 info:(id)a6;
- (void)setFocusAlbum:(id)a3 forPersonID:(id)a4;
- (void)setFocusAlbumGUID:(id)a3 forPersonID:(id)a4;
- (void)setFocusAssetCollectionGUID:(id)a3 forPersonID:(id)a4;
- (void)setIsUIForeground:(BOOL)a3 forPersonID:(id)a4;
- (void)setMigrationMarker:(id)a3 personID:(id)a4;
- (void)subscribeToAlbumWithGUID:(id)a3 personID:(id)a4 info:(id)a5;
- (void)timerPingQueueForegroundPingTimerExpiredContext:(id)a3 personID:(id)a4;
- (void)unsubscribeFromAlbumWithGUID:(id)a3 personID:(id)a4 info:(id)a5;
- (void)videoURLForAssetCollectionWithGUID:(id)a3 personID:(id)a4 completionBlock:(id)a5;
- (void)videoURLsForAssetCollectionWithGUID:(id)a3 forMediaAssetType:(unint64_t)a4 personID:(id)a5 completionBlock:(id)a6;
@end

@implementation MSASConnection

- (void)XPCNSClientConnection:(id)a3 didReceiveRequest:(id)a4
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSASConnection received an unexpected request. Ignoring.", v4, 2u);
  }
}

- (void)retrieveAssets:(id)a3 inAlbumWithGUID:(id)a4 personID:(id)a5
{
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D001F8], *MEMORY[0x277D00098], a5, *MEMORY[0x277D00270], a3, *MEMORY[0x277D00050], a4, *MEMORY[0x277CFFFF0], 0}];
  [(MSASConnection *)self _sendMessageReliably:v6];
}

- (void)forgetEverythingAboutPersonID:(id)a3
{
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00170], *MEMORY[0x277D00098], a3, *MEMORY[0x277D00270], 0}];
  [(MSASConnection *)self _sendMessageReliably:v4];
}

- (void)deleteCommentWithGUID:(id)a3 personID:(id)a4 info:(id)a5
{
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00160], *MEMORY[0x277D00098], a4, *MEMORY[0x277D00270], a3, *MEMORY[0x277D00068], a5, *MEMORY[0x277D000A0], 0}];
  [(MSASConnection *)self _sendMessageReliably:v6];
}

- (void)addComments:(id)a3 toAssetCollectionWithGUID:(id)a4 personID:(id)a5 info:(id)a6
{
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00110], *MEMORY[0x277D00098], a5, *MEMORY[0x277D00270], a3, *MEMORY[0x277D00070], a4, *MEMORY[0x277D00030], a6, *MEMORY[0x277D000A0], 0}];
  [(MSASConnection *)self _sendMessageReliably:v7];
}

- (void)markCommentsForAssetCollectionWithGUID:(id)a3 asViewedWithLastViewedDate:(id)a4 personID:(id)a5 info:(id)a6
{
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D001B0], *MEMORY[0x277D00098], a5, *MEMORY[0x277D00270], a3, *MEMORY[0x277D00030], a4, *MEMORY[0x277D000C8], a6, *MEMORY[0x277D000A0], 0}];
  [(MSASConnection *)self _sendMessageReliably:v7];
}

- (void)deleteAssetCollectionsWithGUIDs:(id)a3 personID:(id)a4
{
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00158], *MEMORY[0x277D00098], a4, *MEMORY[0x277D00270], a3, *MEMORY[0x277D00038], 0}];
  [(MSASConnection *)self _sendMessageReliably:v5];
}

- (void)deleteAssetCollectionWithGUID:(id)a3 personID:(id)a4 info:(id)a5
{
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00150], *MEMORY[0x277D00098], a4, *MEMORY[0x277D00270], a3, *MEMORY[0x277D00030], a5, *MEMORY[0x277D000A0], 0}];
  [(MSASConnection *)self _sendMessageReliably:v6];
}

- (void)addAssetCollections:(id)a3 toAlbumWithGUID:(id)a4 personID:(id)a5 info:(id)a6
{
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00108], *MEMORY[0x277D00098], a5, *MEMORY[0x277D00270], a3, *MEMORY[0x277D00040], a4, *MEMORY[0x277CFFFF0], a6, *MEMORY[0x277D000A0], 0}];
  [(MSASConnection *)self _sendMessageReliably:v7];
}

- (void)removeAccessControlEntryWithGUID:(id)a3 personID:(id)a4 info:(id)a5
{
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D001E8], *MEMORY[0x277D00098], a4, *MEMORY[0x277D00270], a3, *MEMORY[0x277D002C0], a5, *MEMORY[0x277D000A0], 0}];
  [(MSASConnection *)self _sendMessageReliably:v6];
}

- (void)addAccessControlEntries:(id)a3 toAlbumWithGUID:(id)a4 personID:(id)a5 info:(id)a6 completionBlock:(id)a7
{
  v12 = a7;
  v13 = MEMORY[0x277CBEB38];
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = objc_alloc_init(v13);
  [v18 setObject:*MEMORY[0x277D000F8] forKeyedSubscript:*MEMORY[0x277D00098]];
  [v18 setObject:v15 forKeyedSubscript:*MEMORY[0x277D00270]];

  [v18 setObject:v17 forKeyedSubscript:*MEMORY[0x277D002C8]];
  [v18 setObject:v16 forKeyedSubscript:*MEMORY[0x277CFFFF0]];

  [v18 setObject:v14 forKeyedSubscript:*MEMORY[0x277D000A0]];
  v19 = [(MSASConnection *)self connection];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __88__MSASConnection_addAccessControlEntries_toAlbumWithGUID_personID_info_completionBlock___block_invoke;
  v21[3] = &unk_2798A4FD8;
  v21[4] = self;
  v22 = v12;
  v20 = v12;
  [v19 sendMessageReliably:v18 data:0 maxRetryCount:5 withHandler:v21];
}

void __88__MSASConnection_addAccessControlEntries_toAlbumWithGUID_personID_info_completionBlock___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (a2)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v9 = v5;
    v7 = [v5 objectForKey:*MEMORY[0x277D00080]];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v9 = v5;
    v7 = [*(a1 + 32) _communicationFailureError];
  }

  v8 = v7;
  (*(v6 + 16))(v6, v7);

  v5 = v9;
LABEL_7:
}

- (void)rejectInvitationWithGUID:(id)a3 personID:(id)a4 info:(id)a5
{
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D001E0], *MEMORY[0x277D00098], a4, *MEMORY[0x277D00270], a3, *MEMORY[0x277D000A8], a5, *MEMORY[0x277D000A0], 0}];
  [(MSASConnection *)self _sendMessageReliably:v6];
}

- (void)acceptInvitationWithGUID:(id)a3 personID:(id)a4 info:(id)a5
{
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D000D0], *MEMORY[0x277D00098], a4, *MEMORY[0x277D00270], a3, *MEMORY[0x277D000A8], a5, *MEMORY[0x277D000A0], 0}];
  [(MSASConnection *)self _sendMessageReliably:v6];
}

- (void)acceptInvitationWithToken:(id)a3 personID:(id)a4 info:(id)a5 completionBlock:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D000D8], *MEMORY[0x277D00098], a4, *MEMORY[0x277D00270], a3, *MEMORY[0x277D000B0], v10, *MEMORY[0x277D000A0], 0}];
  v13 = [(MSASConnection *)self connection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __74__MSASConnection_acceptInvitationWithToken_personID_info_completionBlock___block_invoke;
  v16[3] = &unk_2798A4FB0;
  v18 = self;
  v19 = v11;
  v17 = v10;
  v14 = v10;
  v15 = v11;
  [v13 sendMessageReliably:v12 data:0 maxRetryCount:5 withHandler:v16];
}

void __74__MSASConnection_acceptInvitationWithToken_personID_info_completionBlock___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 48);
  if (a2)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v10 = v5;
    v7 = [v5 objectForKey:*MEMORY[0x277D000A0]];
    v8 = [v10 objectForKey:*MEMORY[0x277D00080]];
    (*(v6 + 16))(v6, v7, v8);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v10 = v5;
    v9 = *(a1 + 32);
    v7 = [*(a1 + 40) _communicationFailureError];
    (*(v6 + 16))(v6, v9, v7);
  }

  v5 = v10;
LABEL_7:
}

- (void)acceptInvitationWithToken:(id)a3 personID:(id)a4 completionBlock:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__MSASConnection_acceptInvitationWithToken_personID_completionBlock___block_invoke;
  v10[3] = &unk_2798A4F88;
  v11 = v8;
  v9 = v8;
  [(MSASConnection *)self acceptInvitationWithToken:a3 personID:a4 info:0 completionBlock:v10];
}

- (void)markAsSpamAlbumWithGUID:(id)a3 personID:(id)a4 completionBlock:(id)a5
{
  v21[3] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = *MEMORY[0x277D00198];
  v10 = *MEMORY[0x277D00270];
  v20[0] = *MEMORY[0x277D00098];
  v20[1] = v10;
  v21[0] = v9;
  v21[1] = a4;
  v20[2] = *MEMORY[0x277CFFFF0];
  v21[2] = a3;
  v11 = MEMORY[0x277CBEAC0];
  v12 = a4;
  v13 = a3;
  v14 = [v11 dictionaryWithObjects:v21 forKeys:v20 count:3];
  v15 = [(MSASConnection *)self connection];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __67__MSASConnection_markAsSpamAlbumWithGUID_personID_completionBlock___block_invoke;
  v18[3] = &unk_2798A4FD8;
  v18[4] = self;
  v19 = v8;
  v16 = v8;
  [v15 sendMessageReliably:v14 data:0 maxRetryCount:5 withHandler:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void __67__MSASConnection_markAsSpamAlbumWithGUID_personID_completionBlock___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (a2)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = v5;
    (*(v6 + 16))(v6, 0);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = v5;
    v7 = [*(a1 + 32) _communicationFailureError];
    (*(v6 + 16))(v6, v7);
  }

  v5 = v8;
LABEL_7:
}

- (void)markAsSpamInvitationWithGUID:(id)a3 personID:(id)a4 completionBlock:(id)a5
{
  v21[3] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = *MEMORY[0x277D001A0];
  v10 = *MEMORY[0x277D00270];
  v20[0] = *MEMORY[0x277D00098];
  v20[1] = v10;
  v21[0] = v9;
  v21[1] = a4;
  v20[2] = *MEMORY[0x277D000A8];
  v21[2] = a3;
  v11 = MEMORY[0x277CBEAC0];
  v12 = a4;
  v13 = a3;
  v14 = [v11 dictionaryWithObjects:v21 forKeys:v20 count:3];
  v15 = [(MSASConnection *)self connection];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __72__MSASConnection_markAsSpamInvitationWithGUID_personID_completionBlock___block_invoke;
  v18[3] = &unk_2798A4FD8;
  v18[4] = self;
  v19 = v8;
  v16 = v8;
  [v15 sendMessageReliably:v14 data:0 maxRetryCount:5 withHandler:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void __72__MSASConnection_markAsSpamInvitationWithGUID_personID_completionBlock___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (a2)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = v5;
    (*(v6 + 16))(v6, 0);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = v5;
    v7 = [*(a1 + 32) _communicationFailureError];
    (*(v6 + 16))(v6, v7);
  }

  v5 = v8;
LABEL_7:
}

- (void)markAsSpamInvitationWithToken:(id)a3 personID:(id)a4 completionBlock:(id)a5
{
  v21[3] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = *MEMORY[0x277D001A8];
  v10 = *MEMORY[0x277D00270];
  v20[0] = *MEMORY[0x277D00098];
  v20[1] = v10;
  v21[0] = v9;
  v21[1] = a4;
  v20[2] = *MEMORY[0x277D000B0];
  v21[2] = a3;
  v11 = MEMORY[0x277CBEAC0];
  v12 = a4;
  v13 = a3;
  v14 = [v11 dictionaryWithObjects:v21 forKeys:v20 count:3];
  v15 = [(MSASConnection *)self connection];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __73__MSASConnection_markAsSpamInvitationWithToken_personID_completionBlock___block_invoke;
  v18[3] = &unk_2798A4FD8;
  v18[4] = self;
  v19 = v8;
  v16 = v8;
  [v15 sendMessageReliably:v14 data:0 maxRetryCount:5 withHandler:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void __73__MSASConnection_markAsSpamInvitationWithToken_personID_completionBlock___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (a2)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = v5;
    (*(v6 + 16))(v6, 0);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = v5;
    v7 = [*(a1 + 32) _communicationFailureError];
    (*(v6 + 16))(v6, v7);
  }

  v5 = v8;
LABEL_7:
}

- (void)unsubscribeFromAlbumWithGUID:(id)a3 personID:(id)a4 info:(id)a5
{
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00238], *MEMORY[0x277D00098], a4, *MEMORY[0x277D00270], a3, *MEMORY[0x277CFFFF0], a5, *MEMORY[0x277D000A0], 0}];
  [(MSASConnection *)self _sendMessageReliably:v6];
}

- (void)subscribeToAlbumWithGUID:(id)a3 personID:(id)a4 info:(id)a5
{
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00230], *MEMORY[0x277D00098], a4, *MEMORY[0x277D00270], a3, *MEMORY[0x277CFFFF0], a5, *MEMORY[0x277D000A0], 0}];
  [(MSASConnection *)self _sendMessageReliably:v6];
}

void __96__MSASConnection_setMultipleContributorsEnabled_forAlbumWithGUID_personID_info_completionBlock___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 48);
  v10 = v5;
  if (a2)
  {
    v7 = [v5 objectForKey:*MEMORY[0x277D000A0]];
    v8 = [v10 objectForKey:*MEMORY[0x277D00080]];
    (*(v6 + 16))(v6, v7, v8);
  }

  else
  {
    v9 = *(a1 + 32);
    v7 = [*(a1 + 40) _communicationFailureError];
    (*(v6 + 16))(v6, v9, v7);
  }
}

void __88__MSASConnection_setPublicAccessEnabled_forAlbumWithGUID_personID_info_completionBlock___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 48);
  v10 = v5;
  if (a2)
  {
    v7 = [v5 objectForKey:*MEMORY[0x277D000A0]];
    v8 = [v10 objectForKey:*MEMORY[0x277D00080]];
    (*(v6 + 16))(v6, v7, v8);
  }

  else
  {
    v9 = *(a1 + 32);
    v7 = [*(a1 + 40) _communicationFailureError];
    (*(v6 + 16))(v6, v9, v7);
  }
}

- (void)deleteAlbumWithGUID:(id)a3 personID:(id)a4 info:(id)a5
{
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00148], *MEMORY[0x277D00098], a4, *MEMORY[0x277D00270], a3, *MEMORY[0x277CFFFF0], a5, *MEMORY[0x277D000A0], 0}];
  [(MSASConnection *)self _sendMessageReliably:v6];
}

- (void)setMigrationMarker:(id)a3 personID:(id)a4
{
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00218], *MEMORY[0x277D00098], a3, *MEMORY[0x277D00268], a4, *MEMORY[0x277D00270], 0}];
  [(MSASConnection *)self _sendMessageReliably:v5];
}

- (void)setClientOrgKey:(id)a3 forAlbumWithGUID:(id)a4 personID:(id)a5 info:(id)a6
{
  v8 = *MEMORY[0x277D00208];
  v9 = *MEMORY[0x277D00098];
  if (a3)
  {
    [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v8, v9, a3, *MEMORY[0x277D00060], a5, *MEMORY[0x277D00270], a4, *MEMORY[0x277CFFFF0], a6, *MEMORY[0x277D000A0], 0}];
  }

  else
  {
    [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v8, v9, a5, *MEMORY[0x277D00270], a4, *MEMORY[0x277CFFFF0], a6, *MEMORY[0x277D000A0], 0, v10, v11}];
  }
  v12 = ;
  [(MSASConnection *)self _sendMessageReliably:v12];
}

- (void)modifyAlbumMetadata:(id)a3 personID:(id)a4 info:(id)a5
{
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D001B8], *MEMORY[0x277D00098], a4, *MEMORY[0x277D00270], a3, *MEMORY[0x277CFFFF8], a5, *MEMORY[0x277D000A0], 0}];
  [(MSASConnection *)self _sendMessageReliably:v6];
}

- (void)addAlbum:(id)a3 personID:(id)a4 info:(id)a5
{
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00100], *MEMORY[0x277D00098], a4, *MEMORY[0x277D00270], a3, *MEMORY[0x277CFFFF8], a5, *MEMORY[0x277D000A0], 0}];
  [(MSASConnection *)self _sendMessageReliably:v6];
}

- (void)refreshAccessControlListForAlbumWithGUID:(id)a3 personID:(id)a4 info:(id)a5
{
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D001C0], *MEMORY[0x277D00098], a4, *MEMORY[0x277D00270], a3, *MEMORY[0x277CFFFF0], a5, *MEMORY[0x277D000A0], 0}];
  [(MSASConnection *)self _sendMessageReliably:v6];
}

- (void)clientOrgKeyForRecordID:(id)a3 zoneName:(id)a4 ownerUserID:(id)a5 personID:(id)a6 completionBlock:(id)a7
{
  v12 = a7;
  v13 = *MEMORY[0x277D00168];
  v14 = *MEMORY[0x277D00098];
  v15 = *MEMORY[0x277D00280];
  v16 = *MEMORY[0x277D002D8];
  if (a5)
  {
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v13, v14, a3, v15, a4, v16, a5, *MEMORY[0x277D00260], a6, *MEMORY[0x277D00270], 0}];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __88__MSASConnection_clientOrgKeyForRecordID_zoneName_ownerUserID_personID_completionBlock___block_invoke;
    v28[3] = &unk_2798A4E98;
    v18 = &v29;
    v29 = v12;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __88__MSASConnection_clientOrgKeyForRecordID_zoneName_ownerUserID_personID_completionBlock___block_invoke_2;
    v26[3] = &unk_2798A4E20;
    v19 = &v27;
    v27 = v29;
    v20 = v28;
    v21 = v26;
  }

  else
  {
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v13, v14, a3, v15, a4, v16, a6, *MEMORY[0x277D00270], 0}];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __88__MSASConnection_clientOrgKeyForRecordID_zoneName_ownerUserID_personID_completionBlock___block_invoke_3;
    v24[3] = &unk_2798A4E98;
    v18 = &v25;
    v25 = v12;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __88__MSASConnection_clientOrgKeyForRecordID_zoneName_ownerUserID_personID_completionBlock___block_invoke_4;
    v22[3] = &unk_2798A4E20;
    v19 = &v23;
    v23 = v25;
    v20 = v24;
    v21 = v22;
  }

  [(MSASConnection *)self _sendMessageReliably:v17 data:0 successHandler:v20 failureHandler:v21];
}

void __88__MSASConnection_clientOrgKeyForRecordID_zoneName_ownerUserID_personID_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectForKey:*MEMORY[0x277D002A0]];
  (*(v2 + 16))(v2, v3);
}

void __88__MSASConnection_clientOrgKeyForRecordID_zoneName_ownerUserID_personID_completionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectForKey:*MEMORY[0x277D002A0]];
  (*(v2 + 16))(v2, v3);
}

- (void)serverSideConfigurationDictionaryForPersonID:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MSASConnection *)self serverSideConfigurationDictionaryByPersonID];
  v9 = [v8 objectForKey:v6];

  if (v9)
  {
    v7[2](v7, v9);
  }

  else
  {
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00200], *MEMORY[0x277D00098], v6, *MEMORY[0x277D00270], 0}];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __79__MSASConnection_serverSideConfigurationDictionaryForPersonID_completionBlock___block_invoke;
    v14[3] = &unk_2798A4F60;
    v14[4] = self;
    v15 = v6;
    v16 = v7;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __79__MSASConnection_serverSideConfigurationDictionaryForPersonID_completionBlock___block_invoke_31;
    v11[3] = &unk_2798A51E8;
    v11[4] = self;
    v12 = v15;
    v13 = v16;
    [(MSASConnection *)self _sendMessageReliably:v10 data:0 successHandler:v14 failureHandler:v11];
  }
}

void __79__MSASConnection_serverSideConfigurationDictionaryForPersonID_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [a2 objectForKey:*MEMORY[0x277D002A0]];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = 138543874;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2114;
    v13 = v3;
    _os_log_debug_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Retrieved server side config for personID %@: %{public}@", &v8, 0x20u);
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v3)
  {
LABEL_3:
    v4 = [*(a1 + 32) serverSideConfigurationDictionaryByPersonID];
    [v4 setObject:v3 forKey:*(a1 + 40)];
  }

LABEL_4:
  (*(*(a1 + 48) + 16))();

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __79__MSASConnection_serverSideConfigurationDictionaryForPersonID_completionBlock___block_invoke_31(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = 138543618;
    v7 = v4;
    v8 = 2112;
    v9 = v5;
    _os_log_error_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not retrieve server side config for person ID %@", &v6, 0x16u);
  }

  result = (*(a1[6] + 16))();
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)commentWithGUID:(id)a3 personID:(id)a4 completionBlock:(id)a5
{
  v8 = a5;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00140], *MEMORY[0x277D00098], a4, *MEMORY[0x277D00270], a3, *MEMORY[0x277D00068], 0}];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__MSASConnection_commentWithGUID_personID_completionBlock___block_invoke;
  v13[3] = &unk_2798A4E98;
  v14 = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__MSASConnection_commentWithGUID_personID_completionBlock___block_invoke_2;
  v11[3] = &unk_2798A4E20;
  v12 = v14;
  v10 = v14;
  [(MSASConnection *)self _sendMessageReliably:v9 data:0 successHandler:v13 failureHandler:v11];
}

void __59__MSASConnection_commentWithGUID_personID_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectForKey:*MEMORY[0x277D002A0]];
  (*(v2 + 16))(v2, v3);
}

- (void)commentGUIDsForAssetCollectionWithGUID:(id)a3 personID:(id)a4 completionBlock:(id)a5
{
  v8 = a5;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00138], *MEMORY[0x277D00098], a4, *MEMORY[0x277D00270], a3, *MEMORY[0x277D00030], 0}];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__MSASConnection_commentGUIDsForAssetCollectionWithGUID_personID_completionBlock___block_invoke;
  v13[3] = &unk_2798A4E98;
  v14 = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__MSASConnection_commentGUIDsForAssetCollectionWithGUID_personID_completionBlock___block_invoke_2;
  v11[3] = &unk_2798A4E20;
  v12 = v14;
  v10 = v14;
  [(MSASConnection *)self _sendMessageReliably:v9 data:0 successHandler:v13 failureHandler:v11];
}

void __82__MSASConnection_commentGUIDsForAssetCollectionWithGUID_personID_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectForKey:*MEMORY[0x277D002A0]];
  (*(v2 + 16))(v2, v3);
}

- (void)isAssetCollectionWithGUID:(id)a3 markedAsUnviewedPersonID:(id)a4 completionBlock:(id)a5
{
  v8 = a5;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00188], *MEMORY[0x277D00098], a4, *MEMORY[0x277D00270], a3, *MEMORY[0x277D00030], 0}];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __85__MSASConnection_isAssetCollectionWithGUID_markedAsUnviewedPersonID_completionBlock___block_invoke;
  v13[3] = &unk_2798A4E98;
  v14 = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __85__MSASConnection_isAssetCollectionWithGUID_markedAsUnviewedPersonID_completionBlock___block_invoke_2;
  v11[3] = &unk_2798A4E20;
  v12 = v14;
  v10 = v14;
  [(MSASConnection *)self _sendMessageReliably:v9 data:0 successHandler:v13 failureHandler:v11];
}

void __85__MSASConnection_isAssetCollectionWithGUID_markedAsUnviewedPersonID_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectForKey:*MEMORY[0x277D002A0]];
  (*(v2 + 16))(v2, [v3 BOOLValue]);
}

- (void)videoURLsForAssetCollectionWithGUID:(id)a3 forMediaAssetType:(unint64_t)a4 personID:(id)a5 completionBlock:(id)a6
{
  v22 = a6;
  v9 = MEMORY[0x277CBEAC0];
  v10 = *MEMORY[0x277D00248];
  v11 = *MEMORY[0x277D00098];
  v12 = *MEMORY[0x277D00270];
  v13 = *MEMORY[0x277D00030];
  v14 = MEMORY[0x277CCABB0];
  v15 = a5;
  v16 = a3;
  v17 = [v14 numberWithUnsignedInteger:a4];
  v18 = [v9 dictionaryWithObjectsAndKeys:{v10, v11, v15, v12, v16, v13, v17, *MEMORY[0x277D002E0], 0}];

  v19 = [(MSASConnection *)self connection];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __97__MSASConnection_videoURLsForAssetCollectionWithGUID_forMediaAssetType_personID_completionBlock___block_invoke;
  v23[3] = &unk_2798A4F38;
  v24 = v22;
  v20 = v22;
  [v19 sendMessageReliably:v18 data:0 maxRetryCount:5 withHandler:v23];
}

void __97__MSASConnection_videoURLsForAssetCollectionWithGUID_forMediaAssetType_personID_completionBlock___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v10 = v5;
  if (a2)
  {
    v7 = [v5 objectForKey:*MEMORY[0x277D00080]];
    v8 = [v10 objectForKey:*MEMORY[0x277D002A0]];
    v9 = [v10 objectForKey:*MEMORY[0x277D002D0]];
    (*(v6 + 16))(v6, v7, v8, v9);
  }

  else
  {
    (*(v6 + 16))(v6, 0, 0, 0);
  }
}

- (void)videoURLForAssetCollectionWithGUID:(id)a3 personID:(id)a4 completionBlock:(id)a5
{
  v8 = a5;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00240], *MEMORY[0x277D00098], a4, *MEMORY[0x277D00270], a3, *MEMORY[0x277D00030], 0}];
  v10 = [(MSASConnection *)self connection];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __78__MSASConnection_videoURLForAssetCollectionWithGUID_personID_completionBlock___block_invoke;
  v12[3] = &unk_2798A4F38;
  v13 = v8;
  v11 = v8;
  [v10 sendMessageReliably:v9 data:0 maxRetryCount:5 withHandler:v12];
}

void __78__MSASConnection_videoURLForAssetCollectionWithGUID_personID_completionBlock___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v10 = v5;
  if (a2)
  {
    v7 = [v5 objectForKey:*MEMORY[0x277D00080]];
    v8 = [v10 objectForKey:*MEMORY[0x277D002A0]];
    v9 = [v10 objectForKey:*MEMORY[0x277D002D0]];
    (*(v6 + 16))(v6, v7, v8, v9);
  }

  else
  {
    (*(v6 + 16))(v6, 0, 0, 0);
  }
}

- (void)assetCollectionWithGUID:(id)a3 personID:(id)a4 completionBlock:(id)a5
{
  v8 = a5;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00130], *MEMORY[0x277D00098], a4, *MEMORY[0x277D00270], a3, *MEMORY[0x277D00030], 0}];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__MSASConnection_assetCollectionWithGUID_personID_completionBlock___block_invoke;
  v13[3] = &unk_2798A4E98;
  v14 = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__MSASConnection_assetCollectionWithGUID_personID_completionBlock___block_invoke_2;
  v11[3] = &unk_2798A4E20;
  v12 = v14;
  v10 = v14;
  [(MSASConnection *)self _sendMessageReliably:v9 data:0 successHandler:v13 failureHandler:v11];
}

void __67__MSASConnection_assetCollectionWithGUID_personID_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectForKey:*MEMORY[0x277D002A0]];
  (*(v2 + 16))(v2, v3);
}

- (void)assetCollectionGUIDsInAlbumWithGUID:(id)a3 personID:(id)a4 completionBlock:(id)a5
{
  v8 = a5;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00128], *MEMORY[0x277D00098], a4, *MEMORY[0x277D00270], a3, *MEMORY[0x277CFFFF0], 0}];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __79__MSASConnection_assetCollectionGUIDsInAlbumWithGUID_personID_completionBlock___block_invoke;
  v13[3] = &unk_2798A4E98;
  v14 = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__MSASConnection_assetCollectionGUIDsInAlbumWithGUID_personID_completionBlock___block_invoke_2;
  v11[3] = &unk_2798A4E20;
  v12 = v14;
  v10 = v14;
  [(MSASConnection *)self _sendMessageReliably:v9 data:0 successHandler:v13 failureHandler:v11];
}

void __79__MSASConnection_assetCollectionGUIDsInAlbumWithGUID_personID_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectForKey:*MEMORY[0x277D002A0]];
  (*(v2 + 16))(v2, v3);
}

- (void)invitationWithGUID:(id)a3 personID:(id)a4 completionBlock:(id)a5
{
  v8 = a5;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00180], *MEMORY[0x277D00098], a4, *MEMORY[0x277D00270], a3, *MEMORY[0x277D000A8], 0}];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__MSASConnection_invitationWithGUID_personID_completionBlock___block_invoke;
  v13[3] = &unk_2798A4E98;
  v14 = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__MSASConnection_invitationWithGUID_personID_completionBlock___block_invoke_2;
  v11[3] = &unk_2798A4E20;
  v12 = v14;
  v10 = v14;
  [(MSASConnection *)self _sendMessageReliably:v9 data:0 successHandler:v13 failureHandler:v11];
}

void __62__MSASConnection_invitationWithGUID_personID_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectForKey:*MEMORY[0x277D002A0]];
  (*(v2 + 16))(v2, v3);
}

- (void)invitationGUIDsForPersonID:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00178], *MEMORY[0x277D00098], a3, *MEMORY[0x277D00270], 0}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__MSASConnection_invitationGUIDsForPersonID_completionBlock___block_invoke;
  v11[3] = &unk_2798A4E98;
  v12 = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__MSASConnection_invitationGUIDsForPersonID_completionBlock___block_invoke_2;
  v9[3] = &unk_2798A4E20;
  v10 = v12;
  v8 = v12;
  [(MSASConnection *)self _sendMessageReliably:v7 data:0 successHandler:v11 failureHandler:v9];
}

void __61__MSASConnection_invitationGUIDsForPersonID_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectForKey:*MEMORY[0x277D002A0]];
  (*(v2 + 16))(v2, v3);
}

- (void)accessControlWithGUID:(id)a3 personID:(id)a4 completionBlock:(id)a5
{
  v8 = a5;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D000E8], *MEMORY[0x277D00098], a4, *MEMORY[0x277D00270], a3, *MEMORY[0x277CFFFE8], 0}];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__MSASConnection_accessControlWithGUID_personID_completionBlock___block_invoke;
  v13[3] = &unk_2798A4E98;
  v14 = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__MSASConnection_accessControlWithGUID_personID_completionBlock___block_invoke_2;
  v11[3] = &unk_2798A4E20;
  v12 = v14;
  v10 = v14;
  [(MSASConnection *)self _sendMessageReliably:v9 data:0 successHandler:v13 failureHandler:v11];
}

void __65__MSASConnection_accessControlWithGUID_personID_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectForKey:*MEMORY[0x277D002A0]];
  (*(v2 + 16))(v2, v3);
}

- (void)accessControlGUIDsForAlbumWithGUID:(id)a3 personID:(id)a4 completionBlock:(id)a5
{
  v8 = a5;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D000E0], *MEMORY[0x277D00098], a4, *MEMORY[0x277D00270], a3, *MEMORY[0x277CFFFF0], 0}];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__MSASConnection_accessControlGUIDsForAlbumWithGUID_personID_completionBlock___block_invoke;
  v13[3] = &unk_2798A4E98;
  v14 = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__MSASConnection_accessControlGUIDsForAlbumWithGUID_personID_completionBlock___block_invoke_2;
  v11[3] = &unk_2798A4E20;
  v12 = v14;
  v10 = v14;
  [(MSASConnection *)self _sendMessageReliably:v9 data:0 successHandler:v13 failureHandler:v11];
}

void __78__MSASConnection_accessControlGUIDsForAlbumWithGUID_personID_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectForKey:*MEMORY[0x277D002A0]];
  (*(v2 + 16))(v2, v3);
}

- (void)albumWithGUID:(id)a3 personID:(id)a4 completionBlock:(id)a5
{
  v8 = a5;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00120], *MEMORY[0x277D00098], a4, *MEMORY[0x277D00270], a3, *MEMORY[0x277CFFFF0], 0}];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__MSASConnection_albumWithGUID_personID_completionBlock___block_invoke;
  v13[3] = &unk_2798A4E98;
  v14 = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__MSASConnection_albumWithGUID_personID_completionBlock___block_invoke_2;
  v11[3] = &unk_2798A4E20;
  v12 = v14;
  v10 = v14;
  [(MSASConnection *)self _sendMessageReliably:v9 data:0 successHandler:v13 failureHandler:v11];
}

void __57__MSASConnection_albumWithGUID_personID_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectForKey:*MEMORY[0x277D002A0]];
  (*(v2 + 16))(v2, v3);
}

- (void)albumGUIDsForPersonID:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00118], *MEMORY[0x277D00098], a3, *MEMORY[0x277D00270], 0}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__MSASConnection_albumGUIDsForPersonID_completionBlock___block_invoke;
  v11[3] = &unk_2798A4E98;
  v12 = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__MSASConnection_albumGUIDsForPersonID_completionBlock___block_invoke_2;
  v9[3] = &unk_2798A4E20;
  v10 = v12;
  v8 = v12;
  [(MSASConnection *)self _sendMessageReliably:v7 data:0 successHandler:v11 failureHandler:v9];
}

void __56__MSASConnection_albumGUIDsForPersonID_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectForKey:*MEMORY[0x277D002A0]];
  (*(v2 + 16))(v2, v3);
}

- (void)setFocusAssetCollectionGUID:(id)a3 forPersonID:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _timerPingQueue();
  block = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __58__MSASConnection_setFocusAssetCollectionGUID_forPersonID___block_invoke;
  v15 = &unk_2798A5260;
  v16 = self;
  v17 = v7;
  v9 = v7;
  dispatch_async(v8, &block);

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v19 = self;
    v20 = 2114;
    v21 = v6;
    _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Setting focus asset collection GUID to %{public}@", buf, 0x16u);
  }

  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00210], *MEMORY[0x277D00098], v9, *MEMORY[0x277D00270], v6, *MEMORY[0x277D00030], 0, block, v13, v14, v15, v16}];
  [(MSASConnection *)self _sendMessageReliably:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setFocusAlbumGUID:(id)a3 forPersonID:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _timerPingQueue();
  block = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __48__MSASConnection_setFocusAlbumGUID_forPersonID___block_invoke;
  v15 = &unk_2798A5260;
  v16 = self;
  v17 = v7;
  v9 = v7;
  dispatch_async(v8, &block);

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v19 = self;
    v20 = 2114;
    v21 = v6;
    _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Setting focus album GUID to %{public}@", buf, 0x16u);
  }

  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D002B0], *MEMORY[0x277D00098], v9, *MEMORY[0x277D00270], v6, *MEMORY[0x277CFFFF0], 0, block, v13, v14, v15, v16}];
  [(MSASConnection *)self _sendMessageReliably:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setFocusAlbum:(id)a3 forPersonID:(id)a4
{
  v6 = a4;
  v7 = [a3 GUID];
  [(MSASConnection *)self setFocusAlbumGUID:v7 forPersonID:v6];
}

- (void)setIsUIForeground:(BOOL)a3 forPersonID:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &stru_2869B5900;
  }

  v8 = _timerPingQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__MSASConnection_setIsUIForeground_forPersonID___block_invoke;
  block[3] = &unk_2798A4F10;
  v12 = a3;
  block[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_async(v8, block);
}

void __48__MSASConnection_setIsUIForeground_forPersonID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) foregroundPingTimerContextByPersonID];
  v4 = [v3 objectForKey:*(a1 + 40)];
  v5 = v4;
  if (v2 == 1)
  {

    if (v5)
    {
      [v5 enable];
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x277CFFFE0]);
      v7 = [*(a1 + 32) foregroundPingTimerContextByPersonID];
      [v7 setObject:v6 forKey:*(a1 + 40)];

      v8 = dispatch_time(0, 5000000000);
      v9 = _timerPingQueue();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __48__MSASConnection_setIsUIForeground_forPersonID___block_invoke_2;
      block[3] = &unk_2798A4EE8;
      v10 = *(a1 + 40);
      block[4] = *(a1 + 32);
      v14 = v6;
      v15 = v10;
      v11 = v6;
      dispatch_after(v8, v9, block);

      [*(a1 + 32) timerPingQueueSendSetUIForeground:1 personID:*(a1 + 40)];
    }
  }

  else
  {
    [v4 disable];

    v12 = [*(a1 + 32) foregroundPingTimerContextByPersonID];
    [v12 removeObjectForKey:*(a1 + 40)];
  }
}

- (void)timerPingQueueForegroundPingTimerExpiredContext:(id)a3 personID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 enabled])
  {
    [(MSASConnection *)self timerPingQueueSendSetUIForeground:1 personID:v7];
    v8 = dispatch_time(0, 5000000000);
    v9 = _timerPingQueue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__MSASConnection_timerPingQueueForegroundPingTimerExpiredContext_personID___block_invoke;
    block[3] = &unk_2798A4EE8;
    block[4] = self;
    v12 = v6;
    v13 = v7;
    dispatch_after(v8, v9, block);
  }

  else
  {
    v10 = [(MSASConnection *)self foregroundPingTimerContextByPersonID];
    [v10 removeObjectForKey:v7];
  }
}

- (void)pingForeground
{
  v3 = _timerPingQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__MSASConnection_pingForeground__block_invoke;
  block[3] = &unk_2798A5010;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)activityIsThrottledByLackOfDiskSpacePersonID:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D000F0], *MEMORY[0x277D00098], a3, *MEMORY[0x277D00270], 0}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__MSASConnection_activityIsThrottledByLackOfDiskSpacePersonID_completionBlock___block_invoke;
  v11[3] = &unk_2798A4E98;
  v12 = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__MSASConnection_activityIsThrottledByLackOfDiskSpacePersonID_completionBlock___block_invoke_2;
  v9[3] = &unk_2798A4E20;
  v10 = v12;
  v8 = v12;
  [(MSASConnection *)self _sendMessageReliably:v7 data:0 successHandler:v11 failureHandler:v9];
}

void __79__MSASConnection_activityIsThrottledByLackOfDiskSpacePersonID_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectForKey:*MEMORY[0x277D002A0]];
  (*(v2 + 16))(v2, [v3 intValue] != 0);
}

- (void)handlePushNotificationForPersonID:(id)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = *MEMORY[0x277D00278];
    v7 = *MEMORY[0x277D00270];
    v12[0] = *MEMORY[0x277D00098];
    v12[1] = v7;
    v13[0] = v6;
    v13[1] = v4;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    [(MSASConnection *)self _sendMessageReliably:v8];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v10 = 138543362;
    v11 = self;
    _os_log_error_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Missing person ID for push notification, ignoring.", &v10, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)cancelActivitiesForPersonID:(id)a3
{
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00058], *MEMORY[0x277D00098], a3, *MEMORY[0x277D00270], 0}];
  [(MSASConnection *)self _sendMessageReliably:v4];
}

- (void)retryOutstandingActivitiesForPersonID:(id)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D00298];
  v6 = *MEMORY[0x277D00270];
  v12[0] = *MEMORY[0x277D00098];
  v12[1] = v6;
  v13[0] = v5;
  v13[1] = v4;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__MSASConnection_retryOutstandingActivitiesForPersonID___block_invoke;
  v10[3] = &unk_2798A4EC0;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  [(MSASConnection *)self _sendMessageReliably:v7 data:0 successHandler:v10 failureHandler:&__block_literal_global_25];

  v9 = *MEMORY[0x277D85DE8];
}

void __56__MSASConnection_retryOutstandingActivitiesForPersonID___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [a2 objectForKey:*MEMORY[0x277D00080]];
  if (v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = 138543874;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    v11 = 2114;
    v12 = v3;
    _os_log_error_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to send message to retry outstanding activities for personID %@. Error: %{public}@", &v7, 0x20u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __56__MSASConnection_retryOutstandingActivitiesForPersonID___block_invoke_23()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v0 = 0;
    _os_log_error_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to send message to retry outstanding activities.", v0, 2u);
  }
}

- (void)retryOutstandingActivities
{
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObject:*MEMORY[0x277D00290] forKey:*MEMORY[0x277D00098]];
  [(MSASConnection *)self _sendMessageReliably:v3];
}

- (void)isInRetryStateHandler:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObject:*MEMORY[0x277D000B8] forKey:*MEMORY[0x277D00098]];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__MSASConnection_isInRetryStateHandler___block_invoke;
  v9[3] = &unk_2798A4E98;
  v10 = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__MSASConnection_isInRetryStateHandler___block_invoke_2;
  v7[3] = &unk_2798A4E20;
  v8 = v10;
  v6 = v10;
  [(MSASConnection *)self _sendMessageReliably:v5 data:0 successHandler:v9 failureHandler:v7];
}

void __40__MSASConnection_isInRetryStateHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectForKey:*MEMORY[0x277D002A0]];
  (*(v2 + 16))(v2, [v3 BOOLValue]);
}

- (void)nextActivityDateHandler:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObject:*MEMORY[0x277D00258] forKey:*MEMORY[0x277D00098]];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__MSASConnection_nextActivityDateHandler___block_invoke;
  v9[3] = &unk_2798A4E98;
  v10 = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__MSASConnection_nextActivityDateHandler___block_invoke_2;
  v7[3] = &unk_2798A4E20;
  v8 = v10;
  v6 = v10;
  [(MSASConnection *)self _sendMessageReliably:v5 data:0 successHandler:v9 failureHandler:v7];
}

void __42__MSASConnection_nextActivityDateHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectForKey:*MEMORY[0x277D002A0]];
  (*(v2 + 16))(v2, v3);
}

- (id)_cloneArray:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v5 = [v3 objectAtIndex:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v13;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v7 = __30__MSASConnection__cloneArray___block_invoke;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v12;
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v7 = __30__MSASConnection__cloneArray___block_invoke_2;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 = v11;
          v11[0] = MEMORY[0x277D85DD0];
          v11[1] = 3221225472;
          v7 = __30__MSASConnection__cloneArray___block_invoke_3;
        }

        else
        {
          v6 = v10;
          v10[0] = MEMORY[0x277D85DD0];
          v10[1] = 3221225472;
          v7 = __30__MSASConnection__cloneArray___block_invoke_4;
        }
      }
    }

    v6[2] = v7;
    v6[3] = &unk_2798A4E70;
    v8 = v4;
    v6[4] = v8;
    [v3 enumerateObjectsUsingBlock:v6];
  }

  else
  {
    v8 = v3;
  }

  return v8;
}

void __30__MSASConnection__cloneArray___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CFFFC8] albumWithAlbum:a2];
  [v2 addObject:v3];
}

void __30__MSASConnection__cloneArray___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CFFFD0] assetCollectionWithAssetCollection:a2];
  [v2 addObject:v3];
}

void __30__MSASConnection__cloneArray___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CFFFD8] assetWithAsset:a2];
  [v2 addObject:v3];
}

void __30__MSASConnection__cloneArray___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 copy];
  [v2 addObject:v3];
}

- (id)_communicationFailureError
{
  if (_communicationFailureError_onceToken != -1)
  {
    dispatch_once(&_communicationFailureError_onceToken, &__block_literal_global_11);
  }

  v3 = _communicationFailureError_error;

  return v3;
}

void __44__MSASConnection__communicationFailureError__block_invoke()
{
  v0 = MEMORY[0x277CCA9B8];
  v3 = MSMSLocalizedString(@"ERROR_CONNECTION_FAILED");
  v1 = [v0 MSErrorWithDomain:@"MSASConnectionErrorDomain" code:0 description:v3];
  v2 = _communicationFailureError_error;
  _communicationFailureError_error = v1;
}

- (void)_sendMessageReliably:(id)a3 data:(id)a4 successHandler:(id)a5 failureHandler:(id)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = a4;
  v14 = [(MSASConnection *)self connection];

  if (!v14 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v20 = [v10 objectForKey:*MEMORY[0x277D00098]];
    *buf = 138543362;
    v26 = v20;
    _os_log_error_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "XPCNSClientConnection is nil. Failed to send XPC command: %{public}@", buf, 0xCu);
  }

  v15 = [(MSASConnection *)self connection];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __74__MSASConnection__sendMessageReliably_data_successHandler_failureHandler___block_invoke;
  v21[3] = &unk_2798A4E48;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v16 = v12;
  v17 = v10;
  v18 = v11;
  [v15 sendMessageReliably:v17 data:v13 maxRetryCount:5 withHandler:v21];

  v19 = *MEMORY[0x277D85DE8];
}

void __74__MSASConnection__sendMessageReliably_data_successHandler_failureHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __74__MSASConnection__sendMessageReliably_data_successHandler_failureHandler___block_invoke_2;
      block[3] = &unk_2798A5170;
      v7 = &v15;
      v15 = v6;
      v14 = v5;
      dispatch_async(MEMORY[0x277D85CD0], block);

LABEL_8:
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v10 = [*(a1 + 32) objectForKey:*MEMORY[0x277D00098]];
      *buf = 138543362;
      v17 = v10;
      _os_log_error_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to send XPC command: %{public}@", buf, 0xCu);
    }

    v8 = *(a1 + 48);
    if (v8)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __74__MSASConnection__sendMessageReliably_data_successHandler_failureHandler___block_invoke_8;
      v11[3] = &unk_2798A4E20;
      v7 = &v12;
      v12 = v8;
      dispatch_async(MEMORY[0x277D85CD0], v11);
      goto LABEL_8;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (NSMutableDictionary)serverSideConfigurationDictionaryByPersonID
{
  serverSideConfigurationDictionaryByPersonID = self->_serverSideConfigurationDictionaryByPersonID;
  if (!serverSideConfigurationDictionaryByPersonID)
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    v5 = self->_serverSideConfigurationDictionaryByPersonID;
    self->_serverSideConfigurationDictionaryByPersonID = v4;

    serverSideConfigurationDictionaryByPersonID = self->_serverSideConfigurationDictionaryByPersonID;
  }

  return serverSideConfigurationDictionaryByPersonID;
}

- (NSMutableDictionary)focusAlbumGUIDByPersonID
{
  focusAlbumGUIDByPersonID = self->_focusAlbumGUIDByPersonID;
  if (!focusAlbumGUIDByPersonID)
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    v5 = self->_focusAlbumGUIDByPersonID;
    self->_focusAlbumGUIDByPersonID = v4;

    focusAlbumGUIDByPersonID = self->_focusAlbumGUIDByPersonID;
  }

  return focusAlbumGUIDByPersonID;
}

- (NSMutableDictionary)focusAlbumTimerByPersonID
{
  focusAlbumTimerByPersonID = self->_focusAlbumTimerByPersonID;
  if (!focusAlbumTimerByPersonID)
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    v5 = self->_focusAlbumTimerByPersonID;
    self->_focusAlbumTimerByPersonID = v4;

    focusAlbumTimerByPersonID = self->_focusAlbumTimerByPersonID;
  }

  return focusAlbumTimerByPersonID;
}

- (NSMutableDictionary)foregroundPingTimerContextByPersonID
{
  foregroundPingTimerContextByPersonID = self->_foregroundPingTimerContextByPersonID;
  if (!foregroundPingTimerContextByPersonID)
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    v5 = self->_foregroundPingTimerContextByPersonID;
    self->_foregroundPingTimerContextByPersonID = v4;

    foregroundPingTimerContextByPersonID = self->_foregroundPingTimerContextByPersonID;
  }

  return foregroundPingTimerContextByPersonID;
}

- (MSASConnection)init
{
  v17 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = MSASConnection;
  v2 = [(MSASConnection *)&v14 init];
  if (v2)
  {
    if (_initializePlatform_onceToken != -1)
    {
      dispatch_once(&_initializePlatform_onceToken, &__block_literal_global_224);
    }

    v3 = [[XPCNSClientConnection alloc] initWithServiceName:@"com.apple.mediastream.sharing" delegate:v2];
    [(MSASConnection *)v2 setConnection:v3];

    v4 = dispatch_queue_create("MSASConnection member queue", MEMORY[0x277D85CD8]);
    memberQueue = v2->_memberQueue;
    v2->_memberQueue = v4;

    out_token = 0;
    v6 = [*MEMORY[0x277D002A8] UTF8String];
    v7 = dispatch_get_global_queue(0, 0);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __22__MSASConnection_init__block_invoke;
    v11[3] = &unk_2798A4DF8;
    v8 = v2;
    v12 = v8;
    LODWORD(v6) = notify_register_dispatch(v6, &out_token, v7, v11);

    if (v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = v8;
      _os_log_error_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not register for server-side configuration change notification.", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v2;
}

void __22__MSASConnection_init__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    *buf = 138412290;
    v10 = v2;
    _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@: Server side configuration changed. Purging local cache.", buf, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = v3[6];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __22__MSASConnection_init__block_invoke_4;
  block[3] = &unk_2798A5010;
  v8 = v3;
  dispatch_barrier_sync(v4, block);
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:*MEMORY[0x277D002A8] object:*(a1 + 32)];

  v6 = *MEMORY[0x277D85DE8];
}

void __22__MSASConnection_init__block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

+ (id)sharedConnection
{
  if (sharedConnection_onceToken != -1)
  {
    dispatch_once(&sharedConnection_onceToken, &__block_literal_global_478);
  }

  v3 = sharedConnection_connection;

  return v3;
}

uint64_t __34__MSASConnection_sharedConnection__block_invoke()
{
  sharedConnection_connection = objc_alloc_init(MSASConnection);

  return MEMORY[0x2821F96F8]();
}

@end