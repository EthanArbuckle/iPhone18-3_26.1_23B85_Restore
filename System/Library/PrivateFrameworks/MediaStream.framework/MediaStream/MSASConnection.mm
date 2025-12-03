@interface MSASConnection
+ (id)sharedConnection;
- (MSASConnection)init;
- (NSMutableDictionary)focusAlbumGUIDByPersonID;
- (NSMutableDictionary)focusAlbumTimerByPersonID;
- (NSMutableDictionary)foregroundPingTimerContextByPersonID;
- (NSMutableDictionary)serverSideConfigurationDictionaryByPersonID;
- (id)_cloneArray:(id)array;
- (id)_communicationFailureError;
- (void)XPCNSClientConnection:(id)connection didReceiveRequest:(id)request;
- (void)_sendMessageReliably:(id)reliably data:(id)data successHandler:(id)handler failureHandler:(id)failureHandler;
- (void)acceptInvitationWithGUID:(id)d personID:(id)iD info:(id)info;
- (void)acceptInvitationWithToken:(id)token personID:(id)d completionBlock:(id)block;
- (void)acceptInvitationWithToken:(id)token personID:(id)d info:(id)info completionBlock:(id)block;
- (void)accessControlGUIDsForAlbumWithGUID:(id)d personID:(id)iD completionBlock:(id)block;
- (void)accessControlWithGUID:(id)d personID:(id)iD completionBlock:(id)block;
- (void)activityIsThrottledByLackOfDiskSpacePersonID:(id)d completionBlock:(id)block;
- (void)addAccessControlEntries:(id)entries toAlbumWithGUID:(id)d personID:(id)iD info:(id)info completionBlock:(id)block;
- (void)addAlbum:(id)album personID:(id)d info:(id)info;
- (void)addAssetCollections:(id)collections toAlbumWithGUID:(id)d personID:(id)iD info:(id)info;
- (void)addComments:(id)comments toAssetCollectionWithGUID:(id)d personID:(id)iD info:(id)info;
- (void)albumGUIDsForPersonID:(id)d completionBlock:(id)block;
- (void)albumWithGUID:(id)d personID:(id)iD completionBlock:(id)block;
- (void)assetCollectionGUIDsInAlbumWithGUID:(id)d personID:(id)iD completionBlock:(id)block;
- (void)assetCollectionWithGUID:(id)d personID:(id)iD completionBlock:(id)block;
- (void)cancelActivitiesForPersonID:(id)d;
- (void)clientOrgKeyForRecordID:(id)d zoneName:(id)name ownerUserID:(id)iD personID:(id)personID completionBlock:(id)block;
- (void)commentGUIDsForAssetCollectionWithGUID:(id)d personID:(id)iD completionBlock:(id)block;
- (void)commentWithGUID:(id)d personID:(id)iD completionBlock:(id)block;
- (void)deleteAlbumWithGUID:(id)d personID:(id)iD info:(id)info;
- (void)deleteAssetCollectionWithGUID:(id)d personID:(id)iD info:(id)info;
- (void)deleteAssetCollectionsWithGUIDs:(id)ds personID:(id)d;
- (void)deleteCommentWithGUID:(id)d personID:(id)iD info:(id)info;
- (void)forgetEverythingAboutPersonID:(id)d;
- (void)handlePushNotificationForPersonID:(id)d;
- (void)invitationGUIDsForPersonID:(id)d completionBlock:(id)block;
- (void)invitationWithGUID:(id)d personID:(id)iD completionBlock:(id)block;
- (void)isAssetCollectionWithGUID:(id)d markedAsUnviewedPersonID:(id)iD completionBlock:(id)block;
- (void)isInRetryStateHandler:(id)handler;
- (void)markAsSpamAlbumWithGUID:(id)d personID:(id)iD completionBlock:(id)block;
- (void)markAsSpamInvitationWithGUID:(id)d personID:(id)iD completionBlock:(id)block;
- (void)markAsSpamInvitationWithToken:(id)token personID:(id)d completionBlock:(id)block;
- (void)markCommentsForAssetCollectionWithGUID:(id)d asViewedWithLastViewedDate:(id)date personID:(id)iD info:(id)info;
- (void)modifyAlbumMetadata:(id)metadata personID:(id)d info:(id)info;
- (void)nextActivityDateHandler:(id)handler;
- (void)pingForeground;
- (void)refreshAccessControlListForAlbumWithGUID:(id)d personID:(id)iD info:(id)info;
- (void)rejectInvitationWithGUID:(id)d personID:(id)iD info:(id)info;
- (void)removeAccessControlEntryWithGUID:(id)d personID:(id)iD info:(id)info;
- (void)retrieveAssets:(id)assets inAlbumWithGUID:(id)d personID:(id)iD;
- (void)retryOutstandingActivities;
- (void)retryOutstandingActivitiesForPersonID:(id)d;
- (void)serverSideConfigurationDictionaryForPersonID:(id)d completionBlock:(id)block;
- (void)setClientOrgKey:(id)key forAlbumWithGUID:(id)d personID:(id)iD info:(id)info;
- (void)setFocusAlbum:(id)album forPersonID:(id)d;
- (void)setFocusAlbumGUID:(id)d forPersonID:(id)iD;
- (void)setFocusAssetCollectionGUID:(id)d forPersonID:(id)iD;
- (void)setIsUIForeground:(BOOL)foreground forPersonID:(id)d;
- (void)setMigrationMarker:(id)marker personID:(id)d;
- (void)subscribeToAlbumWithGUID:(id)d personID:(id)iD info:(id)info;
- (void)timerPingQueueForegroundPingTimerExpiredContext:(id)context personID:(id)d;
- (void)unsubscribeFromAlbumWithGUID:(id)d personID:(id)iD info:(id)info;
- (void)videoURLForAssetCollectionWithGUID:(id)d personID:(id)iD completionBlock:(id)block;
- (void)videoURLsForAssetCollectionWithGUID:(id)d forMediaAssetType:(unint64_t)type personID:(id)iD completionBlock:(id)block;
@end

@implementation MSASConnection

- (void)XPCNSClientConnection:(id)connection didReceiveRequest:(id)request
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MSASConnection received an unexpected request. Ignoring.", v4, 2u);
  }
}

- (void)retrieveAssets:(id)assets inAlbumWithGUID:(id)d personID:(id)iD
{
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D001F8], *MEMORY[0x277D00098], iD, *MEMORY[0x277D00270], assets, *MEMORY[0x277D00050], d, *MEMORY[0x277CFFFF0], 0}];
  [(MSASConnection *)self _sendMessageReliably:v6];
}

- (void)forgetEverythingAboutPersonID:(id)d
{
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00170], *MEMORY[0x277D00098], d, *MEMORY[0x277D00270], 0}];
  [(MSASConnection *)self _sendMessageReliably:v4];
}

- (void)deleteCommentWithGUID:(id)d personID:(id)iD info:(id)info
{
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00160], *MEMORY[0x277D00098], iD, *MEMORY[0x277D00270], d, *MEMORY[0x277D00068], info, *MEMORY[0x277D000A0], 0}];
  [(MSASConnection *)self _sendMessageReliably:v6];
}

- (void)addComments:(id)comments toAssetCollectionWithGUID:(id)d personID:(id)iD info:(id)info
{
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00110], *MEMORY[0x277D00098], iD, *MEMORY[0x277D00270], comments, *MEMORY[0x277D00070], d, *MEMORY[0x277D00030], info, *MEMORY[0x277D000A0], 0}];
  [(MSASConnection *)self _sendMessageReliably:v7];
}

- (void)markCommentsForAssetCollectionWithGUID:(id)d asViewedWithLastViewedDate:(id)date personID:(id)iD info:(id)info
{
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D001B0], *MEMORY[0x277D00098], iD, *MEMORY[0x277D00270], d, *MEMORY[0x277D00030], date, *MEMORY[0x277D000C8], info, *MEMORY[0x277D000A0], 0}];
  [(MSASConnection *)self _sendMessageReliably:v7];
}

- (void)deleteAssetCollectionsWithGUIDs:(id)ds personID:(id)d
{
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00158], *MEMORY[0x277D00098], d, *MEMORY[0x277D00270], ds, *MEMORY[0x277D00038], 0}];
  [(MSASConnection *)self _sendMessageReliably:v5];
}

- (void)deleteAssetCollectionWithGUID:(id)d personID:(id)iD info:(id)info
{
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00150], *MEMORY[0x277D00098], iD, *MEMORY[0x277D00270], d, *MEMORY[0x277D00030], info, *MEMORY[0x277D000A0], 0}];
  [(MSASConnection *)self _sendMessageReliably:v6];
}

- (void)addAssetCollections:(id)collections toAlbumWithGUID:(id)d personID:(id)iD info:(id)info
{
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00108], *MEMORY[0x277D00098], iD, *MEMORY[0x277D00270], collections, *MEMORY[0x277D00040], d, *MEMORY[0x277CFFFF0], info, *MEMORY[0x277D000A0], 0}];
  [(MSASConnection *)self _sendMessageReliably:v7];
}

- (void)removeAccessControlEntryWithGUID:(id)d personID:(id)iD info:(id)info
{
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D001E8], *MEMORY[0x277D00098], iD, *MEMORY[0x277D00270], d, *MEMORY[0x277D002C0], info, *MEMORY[0x277D000A0], 0}];
  [(MSASConnection *)self _sendMessageReliably:v6];
}

- (void)addAccessControlEntries:(id)entries toAlbumWithGUID:(id)d personID:(id)iD info:(id)info completionBlock:(id)block
{
  blockCopy = block;
  v13 = MEMORY[0x277CBEB38];
  infoCopy = info;
  iDCopy = iD;
  dCopy = d;
  entriesCopy = entries;
  v18 = objc_alloc_init(v13);
  [v18 setObject:*MEMORY[0x277D000F8] forKeyedSubscript:*MEMORY[0x277D00098]];
  [v18 setObject:iDCopy forKeyedSubscript:*MEMORY[0x277D00270]];

  [v18 setObject:entriesCopy forKeyedSubscript:*MEMORY[0x277D002C8]];
  [v18 setObject:dCopy forKeyedSubscript:*MEMORY[0x277CFFFF0]];

  [v18 setObject:infoCopy forKeyedSubscript:*MEMORY[0x277D000A0]];
  connection = [(MSASConnection *)self connection];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __88__MSASConnection_addAccessControlEntries_toAlbumWithGUID_personID_info_completionBlock___block_invoke;
  v21[3] = &unk_2798A4FD8;
  v21[4] = self;
  v22 = blockCopy;
  v20 = blockCopy;
  [connection sendMessageReliably:v18 data:0 maxRetryCount:5 withHandler:v21];
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

- (void)rejectInvitationWithGUID:(id)d personID:(id)iD info:(id)info
{
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D001E0], *MEMORY[0x277D00098], iD, *MEMORY[0x277D00270], d, *MEMORY[0x277D000A8], info, *MEMORY[0x277D000A0], 0}];
  [(MSASConnection *)self _sendMessageReliably:v6];
}

- (void)acceptInvitationWithGUID:(id)d personID:(id)iD info:(id)info
{
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D000D0], *MEMORY[0x277D00098], iD, *MEMORY[0x277D00270], d, *MEMORY[0x277D000A8], info, *MEMORY[0x277D000A0], 0}];
  [(MSASConnection *)self _sendMessageReliably:v6];
}

- (void)acceptInvitationWithToken:(id)token personID:(id)d info:(id)info completionBlock:(id)block
{
  infoCopy = info;
  blockCopy = block;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D000D8], *MEMORY[0x277D00098], d, *MEMORY[0x277D00270], token, *MEMORY[0x277D000B0], infoCopy, *MEMORY[0x277D000A0], 0}];
  connection = [(MSASConnection *)self connection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __74__MSASConnection_acceptInvitationWithToken_personID_info_completionBlock___block_invoke;
  v16[3] = &unk_2798A4FB0;
  selfCopy = self;
  v19 = blockCopy;
  v17 = infoCopy;
  v14 = infoCopy;
  v15 = blockCopy;
  [connection sendMessageReliably:v12 data:0 maxRetryCount:5 withHandler:v16];
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

- (void)acceptInvitationWithToken:(id)token personID:(id)d completionBlock:(id)block
{
  blockCopy = block;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__MSASConnection_acceptInvitationWithToken_personID_completionBlock___block_invoke;
  v10[3] = &unk_2798A4F88;
  v11 = blockCopy;
  v9 = blockCopy;
  [(MSASConnection *)self acceptInvitationWithToken:token personID:d info:0 completionBlock:v10];
}

- (void)markAsSpamAlbumWithGUID:(id)d personID:(id)iD completionBlock:(id)block
{
  v21[3] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v9 = *MEMORY[0x277D00198];
  v10 = *MEMORY[0x277D00270];
  v20[0] = *MEMORY[0x277D00098];
  v20[1] = v10;
  v21[0] = v9;
  v21[1] = iD;
  v20[2] = *MEMORY[0x277CFFFF0];
  v21[2] = d;
  v11 = MEMORY[0x277CBEAC0];
  iDCopy = iD;
  dCopy = d;
  v14 = [v11 dictionaryWithObjects:v21 forKeys:v20 count:3];
  connection = [(MSASConnection *)self connection];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __67__MSASConnection_markAsSpamAlbumWithGUID_personID_completionBlock___block_invoke;
  v18[3] = &unk_2798A4FD8;
  v18[4] = self;
  v19 = blockCopy;
  v16 = blockCopy;
  [connection sendMessageReliably:v14 data:0 maxRetryCount:5 withHandler:v18];

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

- (void)markAsSpamInvitationWithGUID:(id)d personID:(id)iD completionBlock:(id)block
{
  v21[3] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v9 = *MEMORY[0x277D001A0];
  v10 = *MEMORY[0x277D00270];
  v20[0] = *MEMORY[0x277D00098];
  v20[1] = v10;
  v21[0] = v9;
  v21[1] = iD;
  v20[2] = *MEMORY[0x277D000A8];
  v21[2] = d;
  v11 = MEMORY[0x277CBEAC0];
  iDCopy = iD;
  dCopy = d;
  v14 = [v11 dictionaryWithObjects:v21 forKeys:v20 count:3];
  connection = [(MSASConnection *)self connection];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __72__MSASConnection_markAsSpamInvitationWithGUID_personID_completionBlock___block_invoke;
  v18[3] = &unk_2798A4FD8;
  v18[4] = self;
  v19 = blockCopy;
  v16 = blockCopy;
  [connection sendMessageReliably:v14 data:0 maxRetryCount:5 withHandler:v18];

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

- (void)markAsSpamInvitationWithToken:(id)token personID:(id)d completionBlock:(id)block
{
  v21[3] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v9 = *MEMORY[0x277D001A8];
  v10 = *MEMORY[0x277D00270];
  v20[0] = *MEMORY[0x277D00098];
  v20[1] = v10;
  v21[0] = v9;
  v21[1] = d;
  v20[2] = *MEMORY[0x277D000B0];
  v21[2] = token;
  v11 = MEMORY[0x277CBEAC0];
  dCopy = d;
  tokenCopy = token;
  v14 = [v11 dictionaryWithObjects:v21 forKeys:v20 count:3];
  connection = [(MSASConnection *)self connection];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __73__MSASConnection_markAsSpamInvitationWithToken_personID_completionBlock___block_invoke;
  v18[3] = &unk_2798A4FD8;
  v18[4] = self;
  v19 = blockCopy;
  v16 = blockCopy;
  [connection sendMessageReliably:v14 data:0 maxRetryCount:5 withHandler:v18];

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

- (void)unsubscribeFromAlbumWithGUID:(id)d personID:(id)iD info:(id)info
{
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00238], *MEMORY[0x277D00098], iD, *MEMORY[0x277D00270], d, *MEMORY[0x277CFFFF0], info, *MEMORY[0x277D000A0], 0}];
  [(MSASConnection *)self _sendMessageReliably:v6];
}

- (void)subscribeToAlbumWithGUID:(id)d personID:(id)iD info:(id)info
{
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00230], *MEMORY[0x277D00098], iD, *MEMORY[0x277D00270], d, *MEMORY[0x277CFFFF0], info, *MEMORY[0x277D000A0], 0}];
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

- (void)deleteAlbumWithGUID:(id)d personID:(id)iD info:(id)info
{
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00148], *MEMORY[0x277D00098], iD, *MEMORY[0x277D00270], d, *MEMORY[0x277CFFFF0], info, *MEMORY[0x277D000A0], 0}];
  [(MSASConnection *)self _sendMessageReliably:v6];
}

- (void)setMigrationMarker:(id)marker personID:(id)d
{
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00218], *MEMORY[0x277D00098], marker, *MEMORY[0x277D00268], d, *MEMORY[0x277D00270], 0}];
  [(MSASConnection *)self _sendMessageReliably:v5];
}

- (void)setClientOrgKey:(id)key forAlbumWithGUID:(id)d personID:(id)iD info:(id)info
{
  v8 = *MEMORY[0x277D00208];
  v9 = *MEMORY[0x277D00098];
  if (key)
  {
    [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v8, v9, key, *MEMORY[0x277D00060], iD, *MEMORY[0x277D00270], d, *MEMORY[0x277CFFFF0], info, *MEMORY[0x277D000A0], 0}];
  }

  else
  {
    [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v8, v9, iD, *MEMORY[0x277D00270], d, *MEMORY[0x277CFFFF0], info, *MEMORY[0x277D000A0], 0, v10, v11}];
  }
  v12 = ;
  [(MSASConnection *)self _sendMessageReliably:v12];
}

- (void)modifyAlbumMetadata:(id)metadata personID:(id)d info:(id)info
{
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D001B8], *MEMORY[0x277D00098], d, *MEMORY[0x277D00270], metadata, *MEMORY[0x277CFFFF8], info, *MEMORY[0x277D000A0], 0}];
  [(MSASConnection *)self _sendMessageReliably:v6];
}

- (void)addAlbum:(id)album personID:(id)d info:(id)info
{
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00100], *MEMORY[0x277D00098], d, *MEMORY[0x277D00270], album, *MEMORY[0x277CFFFF8], info, *MEMORY[0x277D000A0], 0}];
  [(MSASConnection *)self _sendMessageReliably:v6];
}

- (void)refreshAccessControlListForAlbumWithGUID:(id)d personID:(id)iD info:(id)info
{
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D001C0], *MEMORY[0x277D00098], iD, *MEMORY[0x277D00270], d, *MEMORY[0x277CFFFF0], info, *MEMORY[0x277D000A0], 0}];
  [(MSASConnection *)self _sendMessageReliably:v6];
}

- (void)clientOrgKeyForRecordID:(id)d zoneName:(id)name ownerUserID:(id)iD personID:(id)personID completionBlock:(id)block
{
  blockCopy = block;
  v13 = *MEMORY[0x277D00168];
  v14 = *MEMORY[0x277D00098];
  v15 = *MEMORY[0x277D00280];
  v16 = *MEMORY[0x277D002D8];
  if (iD)
  {
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v13, v14, d, v15, name, v16, iD, *MEMORY[0x277D00260], personID, *MEMORY[0x277D00270], 0}];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __88__MSASConnection_clientOrgKeyForRecordID_zoneName_ownerUserID_personID_completionBlock___block_invoke;
    v28[3] = &unk_2798A4E98;
    v18 = &v29;
    v29 = blockCopy;
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
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v13, v14, d, v15, name, v16, personID, *MEMORY[0x277D00270], 0}];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __88__MSASConnection_clientOrgKeyForRecordID_zoneName_ownerUserID_personID_completionBlock___block_invoke_3;
    v24[3] = &unk_2798A4E98;
    v18 = &v25;
    v25 = blockCopy;
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

- (void)serverSideConfigurationDictionaryForPersonID:(id)d completionBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  serverSideConfigurationDictionaryByPersonID = [(MSASConnection *)self serverSideConfigurationDictionaryByPersonID];
  v9 = [serverSideConfigurationDictionaryByPersonID objectForKey:dCopy];

  if (v9)
  {
    blockCopy[2](blockCopy, v9);
  }

  else
  {
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00200], *MEMORY[0x277D00098], dCopy, *MEMORY[0x277D00270], 0}];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __79__MSASConnection_serverSideConfigurationDictionaryForPersonID_completionBlock___block_invoke;
    v14[3] = &unk_2798A4F60;
    v14[4] = self;
    v15 = dCopy;
    v16 = blockCopy;
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

- (void)commentWithGUID:(id)d personID:(id)iD completionBlock:(id)block
{
  blockCopy = block;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00140], *MEMORY[0x277D00098], iD, *MEMORY[0x277D00270], d, *MEMORY[0x277D00068], 0}];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__MSASConnection_commentWithGUID_personID_completionBlock___block_invoke;
  v13[3] = &unk_2798A4E98;
  v14 = blockCopy;
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

- (void)commentGUIDsForAssetCollectionWithGUID:(id)d personID:(id)iD completionBlock:(id)block
{
  blockCopy = block;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00138], *MEMORY[0x277D00098], iD, *MEMORY[0x277D00270], d, *MEMORY[0x277D00030], 0}];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__MSASConnection_commentGUIDsForAssetCollectionWithGUID_personID_completionBlock___block_invoke;
  v13[3] = &unk_2798A4E98;
  v14 = blockCopy;
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

- (void)isAssetCollectionWithGUID:(id)d markedAsUnviewedPersonID:(id)iD completionBlock:(id)block
{
  blockCopy = block;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00188], *MEMORY[0x277D00098], iD, *MEMORY[0x277D00270], d, *MEMORY[0x277D00030], 0}];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __85__MSASConnection_isAssetCollectionWithGUID_markedAsUnviewedPersonID_completionBlock___block_invoke;
  v13[3] = &unk_2798A4E98;
  v14 = blockCopy;
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

- (void)videoURLsForAssetCollectionWithGUID:(id)d forMediaAssetType:(unint64_t)type personID:(id)iD completionBlock:(id)block
{
  blockCopy = block;
  v9 = MEMORY[0x277CBEAC0];
  v10 = *MEMORY[0x277D00248];
  v11 = *MEMORY[0x277D00098];
  v12 = *MEMORY[0x277D00270];
  v13 = *MEMORY[0x277D00030];
  v14 = MEMORY[0x277CCABB0];
  iDCopy = iD;
  dCopy = d;
  v17 = [v14 numberWithUnsignedInteger:type];
  v18 = [v9 dictionaryWithObjectsAndKeys:{v10, v11, iDCopy, v12, dCopy, v13, v17, *MEMORY[0x277D002E0], 0}];

  connection = [(MSASConnection *)self connection];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __97__MSASConnection_videoURLsForAssetCollectionWithGUID_forMediaAssetType_personID_completionBlock___block_invoke;
  v23[3] = &unk_2798A4F38;
  v24 = blockCopy;
  v20 = blockCopy;
  [connection sendMessageReliably:v18 data:0 maxRetryCount:5 withHandler:v23];
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

- (void)videoURLForAssetCollectionWithGUID:(id)d personID:(id)iD completionBlock:(id)block
{
  blockCopy = block;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00240], *MEMORY[0x277D00098], iD, *MEMORY[0x277D00270], d, *MEMORY[0x277D00030], 0}];
  connection = [(MSASConnection *)self connection];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __78__MSASConnection_videoURLForAssetCollectionWithGUID_personID_completionBlock___block_invoke;
  v12[3] = &unk_2798A4F38;
  v13 = blockCopy;
  v11 = blockCopy;
  [connection sendMessageReliably:v9 data:0 maxRetryCount:5 withHandler:v12];
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

- (void)assetCollectionWithGUID:(id)d personID:(id)iD completionBlock:(id)block
{
  blockCopy = block;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00130], *MEMORY[0x277D00098], iD, *MEMORY[0x277D00270], d, *MEMORY[0x277D00030], 0}];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__MSASConnection_assetCollectionWithGUID_personID_completionBlock___block_invoke;
  v13[3] = &unk_2798A4E98;
  v14 = blockCopy;
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

- (void)assetCollectionGUIDsInAlbumWithGUID:(id)d personID:(id)iD completionBlock:(id)block
{
  blockCopy = block;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00128], *MEMORY[0x277D00098], iD, *MEMORY[0x277D00270], d, *MEMORY[0x277CFFFF0], 0}];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __79__MSASConnection_assetCollectionGUIDsInAlbumWithGUID_personID_completionBlock___block_invoke;
  v13[3] = &unk_2798A4E98;
  v14 = blockCopy;
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

- (void)invitationWithGUID:(id)d personID:(id)iD completionBlock:(id)block
{
  blockCopy = block;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00180], *MEMORY[0x277D00098], iD, *MEMORY[0x277D00270], d, *MEMORY[0x277D000A8], 0}];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__MSASConnection_invitationWithGUID_personID_completionBlock___block_invoke;
  v13[3] = &unk_2798A4E98;
  v14 = blockCopy;
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

- (void)invitationGUIDsForPersonID:(id)d completionBlock:(id)block
{
  blockCopy = block;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00178], *MEMORY[0x277D00098], d, *MEMORY[0x277D00270], 0}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__MSASConnection_invitationGUIDsForPersonID_completionBlock___block_invoke;
  v11[3] = &unk_2798A4E98;
  v12 = blockCopy;
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

- (void)accessControlWithGUID:(id)d personID:(id)iD completionBlock:(id)block
{
  blockCopy = block;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D000E8], *MEMORY[0x277D00098], iD, *MEMORY[0x277D00270], d, *MEMORY[0x277CFFFE8], 0}];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__MSASConnection_accessControlWithGUID_personID_completionBlock___block_invoke;
  v13[3] = &unk_2798A4E98;
  v14 = blockCopy;
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

- (void)accessControlGUIDsForAlbumWithGUID:(id)d personID:(id)iD completionBlock:(id)block
{
  blockCopy = block;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D000E0], *MEMORY[0x277D00098], iD, *MEMORY[0x277D00270], d, *MEMORY[0x277CFFFF0], 0}];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__MSASConnection_accessControlGUIDsForAlbumWithGUID_personID_completionBlock___block_invoke;
  v13[3] = &unk_2798A4E98;
  v14 = blockCopy;
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

- (void)albumWithGUID:(id)d personID:(id)iD completionBlock:(id)block
{
  blockCopy = block;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00120], *MEMORY[0x277D00098], iD, *MEMORY[0x277D00270], d, *MEMORY[0x277CFFFF0], 0}];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__MSASConnection_albumWithGUID_personID_completionBlock___block_invoke;
  v13[3] = &unk_2798A4E98;
  v14 = blockCopy;
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

- (void)albumGUIDsForPersonID:(id)d completionBlock:(id)block
{
  blockCopy = block;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00118], *MEMORY[0x277D00098], d, *MEMORY[0x277D00270], 0}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__MSASConnection_albumGUIDsForPersonID_completionBlock___block_invoke;
  v11[3] = &unk_2798A4E98;
  v12 = blockCopy;
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

- (void)setFocusAssetCollectionGUID:(id)d forPersonID:(id)iD
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  v8 = _timerPingQueue();
  block = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __58__MSASConnection_setFocusAssetCollectionGUID_forPersonID___block_invoke;
  v15 = &unk_2798A5260;
  selfCopy = self;
  v17 = iDCopy;
  v9 = iDCopy;
  dispatch_async(v8, &block);

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v20 = 2114;
    v21 = dCopy;
    _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Setting focus asset collection GUID to %{public}@", buf, 0x16u);
  }

  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00210], *MEMORY[0x277D00098], v9, *MEMORY[0x277D00270], dCopy, *MEMORY[0x277D00030], 0, block, v13, v14, v15, selfCopy}];
  [(MSASConnection *)self _sendMessageReliably:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setFocusAlbumGUID:(id)d forPersonID:(id)iD
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  v8 = _timerPingQueue();
  block = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __48__MSASConnection_setFocusAlbumGUID_forPersonID___block_invoke;
  v15 = &unk_2798A5260;
  selfCopy = self;
  v17 = iDCopy;
  v9 = iDCopy;
  dispatch_async(v8, &block);

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v20 = 2114;
    v21 = dCopy;
    _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Setting focus album GUID to %{public}@", buf, 0x16u);
  }

  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D002B0], *MEMORY[0x277D00098], v9, *MEMORY[0x277D00270], dCopy, *MEMORY[0x277CFFFF0], 0, block, v13, v14, v15, selfCopy}];
  [(MSASConnection *)self _sendMessageReliably:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setFocusAlbum:(id)album forPersonID:(id)d
{
  dCopy = d;
  gUID = [album GUID];
  [(MSASConnection *)self setFocusAlbumGUID:gUID forPersonID:dCopy];
}

- (void)setIsUIForeground:(BOOL)foreground forPersonID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v7 = dCopy;
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
  foregroundCopy = foreground;
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

- (void)timerPingQueueForegroundPingTimerExpiredContext:(id)context personID:(id)d
{
  contextCopy = context;
  dCopy = d;
  if ([contextCopy enabled])
  {
    [(MSASConnection *)self timerPingQueueSendSetUIForeground:1 personID:dCopy];
    v8 = dispatch_time(0, 5000000000);
    v9 = _timerPingQueue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__MSASConnection_timerPingQueueForegroundPingTimerExpiredContext_personID___block_invoke;
    block[3] = &unk_2798A4EE8;
    block[4] = self;
    v12 = contextCopy;
    v13 = dCopy;
    dispatch_after(v8, v9, block);
  }

  else
  {
    foregroundPingTimerContextByPersonID = [(MSASConnection *)self foregroundPingTimerContextByPersonID];
    [foregroundPingTimerContextByPersonID removeObjectForKey:dCopy];
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

- (void)activityIsThrottledByLackOfDiskSpacePersonID:(id)d completionBlock:(id)block
{
  blockCopy = block;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D000F0], *MEMORY[0x277D00098], d, *MEMORY[0x277D00270], 0}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__MSASConnection_activityIsThrottledByLackOfDiskSpacePersonID_completionBlock___block_invoke;
  v11[3] = &unk_2798A4E98;
  v12 = blockCopy;
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

- (void)handlePushNotificationForPersonID:(id)d
{
  v13[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    v6 = *MEMORY[0x277D00278];
    v7 = *MEMORY[0x277D00270];
    v12[0] = *MEMORY[0x277D00098];
    v12[1] = v7;
    v13[0] = v6;
    v13[1] = dCopy;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    [(MSASConnection *)self _sendMessageReliably:v8];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v10 = 138543362;
    selfCopy = self;
    _os_log_error_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Missing person ID for push notification, ignoring.", &v10, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)cancelActivitiesForPersonID:(id)d
{
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277D00058], *MEMORY[0x277D00098], d, *MEMORY[0x277D00270], 0}];
  [(MSASConnection *)self _sendMessageReliably:v4];
}

- (void)retryOutstandingActivitiesForPersonID:(id)d
{
  v13[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = *MEMORY[0x277D00298];
  v6 = *MEMORY[0x277D00270];
  v12[0] = *MEMORY[0x277D00098];
  v12[1] = v6;
  v13[0] = v5;
  v13[1] = dCopy;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__MSASConnection_retryOutstandingActivitiesForPersonID___block_invoke;
  v10[3] = &unk_2798A4EC0;
  v10[4] = self;
  v11 = dCopy;
  v8 = dCopy;
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

- (void)isInRetryStateHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObject:*MEMORY[0x277D000B8] forKey:*MEMORY[0x277D00098]];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__MSASConnection_isInRetryStateHandler___block_invoke;
  v9[3] = &unk_2798A4E98;
  v10 = handlerCopy;
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

- (void)nextActivityDateHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObject:*MEMORY[0x277D00258] forKey:*MEMORY[0x277D00098]];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__MSASConnection_nextActivityDateHandler___block_invoke;
  v9[3] = &unk_2798A4E98;
  v10 = handlerCopy;
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

- (id)_cloneArray:(id)array
{
  arrayCopy = array;
  if ([arrayCopy count])
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(arrayCopy, "count")}];
    v5 = [arrayCopy objectAtIndex:0];
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
    [arrayCopy enumerateObjectsUsingBlock:v6];
  }

  else
  {
    v8 = arrayCopy;
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

- (void)_sendMessageReliably:(id)reliably data:(id)data successHandler:(id)handler failureHandler:(id)failureHandler
{
  v27 = *MEMORY[0x277D85DE8];
  reliablyCopy = reliably;
  handlerCopy = handler;
  failureHandlerCopy = failureHandler;
  dataCopy = data;
  connection = [(MSASConnection *)self connection];

  if (!connection && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v20 = [reliablyCopy objectForKey:*MEMORY[0x277D00098]];
    *buf = 138543362;
    v26 = v20;
    _os_log_error_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "XPCNSClientConnection is nil. Failed to send XPC command: %{public}@", buf, 0xCu);
  }

  connection2 = [(MSASConnection *)self connection];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __74__MSASConnection__sendMessageReliably_data_successHandler_failureHandler___block_invoke;
  v21[3] = &unk_2798A4E48;
  v22 = reliablyCopy;
  v23 = handlerCopy;
  v24 = failureHandlerCopy;
  v16 = failureHandlerCopy;
  v17 = reliablyCopy;
  v18 = handlerCopy;
  [connection2 sendMessageReliably:v17 data:dataCopy maxRetryCount:5 withHandler:v21];

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
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v5 = self->_serverSideConfigurationDictionaryByPersonID;
    self->_serverSideConfigurationDictionaryByPersonID = dictionary;

    serverSideConfigurationDictionaryByPersonID = self->_serverSideConfigurationDictionaryByPersonID;
  }

  return serverSideConfigurationDictionaryByPersonID;
}

- (NSMutableDictionary)focusAlbumGUIDByPersonID
{
  focusAlbumGUIDByPersonID = self->_focusAlbumGUIDByPersonID;
  if (!focusAlbumGUIDByPersonID)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v5 = self->_focusAlbumGUIDByPersonID;
    self->_focusAlbumGUIDByPersonID = dictionary;

    focusAlbumGUIDByPersonID = self->_focusAlbumGUIDByPersonID;
  }

  return focusAlbumGUIDByPersonID;
}

- (NSMutableDictionary)focusAlbumTimerByPersonID
{
  focusAlbumTimerByPersonID = self->_focusAlbumTimerByPersonID;
  if (!focusAlbumTimerByPersonID)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v5 = self->_focusAlbumTimerByPersonID;
    self->_focusAlbumTimerByPersonID = dictionary;

    focusAlbumTimerByPersonID = self->_focusAlbumTimerByPersonID;
  }

  return focusAlbumTimerByPersonID;
}

- (NSMutableDictionary)foregroundPingTimerContextByPersonID
{
  foregroundPingTimerContextByPersonID = self->_foregroundPingTimerContextByPersonID;
  if (!foregroundPingTimerContextByPersonID)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v5 = self->_foregroundPingTimerContextByPersonID;
    self->_foregroundPingTimerContextByPersonID = dictionary;

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
    uTF8String = [*MEMORY[0x277D002A8] UTF8String];
    v7 = dispatch_get_global_queue(0, 0);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __22__MSASConnection_init__block_invoke;
    v11[3] = &unk_2798A4DF8;
    v8 = v2;
    v12 = v8;
    LODWORD(uTF8String) = notify_register_dispatch(uTF8String, &out_token, v7, v11);

    if (uTF8String && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
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