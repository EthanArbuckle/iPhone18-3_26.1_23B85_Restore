@interface HSCloudClient
- (HSCloudClient)initWithConfiguration:(id)configuration;
- (id)_ICCloudItemIDListFromHSCloudItemIDList:(id)list;
- (id)_ICConnectionConfigurationFromHSConnectionConfiguration:(id)configuration;
- (void)_serverJaliscoUpdateInProgressDidChange;
- (void)_serverSagaUpdateInProgressDidChange;
- (void)addGeniusPlaylistWithPersistentID:(int64_t)d name:(id)name seedItemSagaIDs:(id)ds itemSagaIDs:(id)iDs completionHandler:(id)handler;
- (void)addItemWithSagaID:(int64_t)d toPlaylistWithPersistentID:(int64_t)iD completionHandler:(id)handler;
- (void)addStoreItemWithAdamID:(int64_t)d completionHandler:(id)handler;
- (void)addStoreItemWithAdamID:(int64_t)d toPlaylistWithPersistentID:(int64_t)iD completionHandler:(id)handler;
- (void)addStorePlaylistWithGlobalID:(id)d completionHandler:(id)handler;
- (void)authenticateAndStartInitialImport:(BOOL)import completionHandler:(id)handler;
- (void)authenticateWithCompletionHandler:(id)handler;
- (void)createPlaylistWithPersistentID:(int64_t)d properties:(id)properties trackList:(id)list completionHandler:(id)handler;
- (void)dealloc;
- (void)deauthenticateWithCompletionHandler:(id)handler;
- (void)hideItemsWithPurchaseHistoryIDs:(id)ds completionHandler:(id)handler;
- (void)importAlbumArtistHeroImageForPersistentID:(int64_t)d completionHandler:(id)handler;
- (void)importArtistHeroImageForPersistentID:(int64_t)d completionHandler:(id)handler;
- (void)importContainerArtworkForSagaID:(unint64_t)d completionHandler:(id)handler;
- (void)importItemArtworkForPurchaseHistoryID:(unint64_t)d completionHandler:(id)handler;
- (void)importItemArtworkForSagaID:(unint64_t)d completionHandler:(id)handler;
- (void)importScreenshotForPurchaseHistoryID:(unint64_t)d completionHandler:(id)handler;
- (void)importScreenshotForSagaID:(unint64_t)d completionHandler:(id)handler;
- (void)importSubscriptionContainerArtworkForPersistentID:(int64_t)d completionHandler:(id)handler;
- (void)importSubscriptionItemArtworkForPersistentID:(int64_t)d completionHandler:(id)handler;
- (void)importSubscriptionScreenshotForPersistentID:(int64_t)d completionHandler:(id)handler;
- (void)isAuthenticatedWithCompletionHandler:(id)handler;
- (void)isAuthenticatedWithQueue:(id)queue completionHandler:(id)handler;
- (void)loadArtworkInfoForContainerSagaID:(unint64_t)d completionHandler:(id)handler;
- (void)loadArtworkInfoForContainerSagaIDs:(id)ds completionHandler:(id)handler;
- (void)loadArtworkInfoForPurchaseHistoryID:(unint64_t)d completionHandler:(id)handler;
- (void)loadArtworkInfoForPurchaseHistoryIDs:(id)ds completionHandler:(id)handler;
- (void)loadArtworkInfoForSagaID:(unint64_t)d completionHandler:(id)handler;
- (void)loadArtworkInfoForSagaIDs:(id)ds completionHandler:(id)handler;
- (void)loadArtworkInfoForSubscriptionContainerPersistentID:(unint64_t)d completionHandler:(id)handler;
- (void)loadArtworkInfoForSubscriptionContainerPersistentIDs:(id)ds completionHandler:(id)handler;
- (void)loadArtworkInfoForSubscriptionItemPersistentID:(unint64_t)d completionHandler:(id)handler;
- (void)loadArtworkInfoForSubscriptionItemPersistentIDs:(id)ds completionHandler:(id)handler;
- (void)loadBooksForStoreIDs:(id)ds withCompletionHandler:(id)handler;
- (void)loadGeniusItemsForSagaID:(unint64_t)d completionHandler:(id)handler;
- (void)loadIsJaliscoUpdateInProgressWithCompletionHandler:(id)handler;
- (void)loadIsSagaUpdateInProgressWithCompletionHandler:(id)handler;
- (void)loadJaliscoUpdateProgressWithCompletionHandler:(id)handler;
- (void)loadLastKnownEnableICMLErrorStatusWithCompletionHander:(id)hander;
- (void)loadSagaUpdateProgressWithCompletionHandler:(id)handler;
- (void)loadScreenshotInfoForPurchaseHistoryID:(unint64_t)d completionHandler:(id)handler;
- (void)loadScreenshotInfoForPurchaseHistoryIDs:(id)ds completionHandler:(id)handler;
- (void)loadScreenshotInfoForSagaID:(unint64_t)d completionHandler:(id)handler;
- (void)loadScreenshotInfoForSagaIDs:(id)ds completionHandler:(id)handler;
- (void)loadScreenshotInfoForSubscriptionPersistentID:(unint64_t)d completionHandler:(id)handler;
- (void)loadScreenshotInfoForSubscriptionPersistentIDs:(id)ds completionHandler:(id)handler;
- (void)loadUpdateProgressWithCompletionHandler:(id)handler;
- (void)publishPlaylistWithSagaID:(int64_t)d completionHandler:(id)handler;
- (void)removeItemsWithSagaIDs:(id)ds completionHandler:(id)handler;
- (void)removeJaliscoLibraryWithCompletionHander:(id)hander;
- (void)removePlaylistsWithSagaIDs:(id)ds performDeltaSync:(BOOL)sync completionHandler:(id)handler;
- (void)resetConfiguration:(id)configuration;
- (void)sdk_addStoreItemWithOpaqueID:(id)d completionHandler:(id)handler;
- (void)sdk_addStoreItemWithOpaqueID:(id)d toPlaylistWithPersistentID:(int64_t)iD completionHandler:(id)handler;
- (void)sdk_createPlaylistWithPersistentID:(int64_t)d properties:(id)properties tracklist:(id)tracklist completionHandler:(id)handler;
- (void)setAlbumProperties:(id)properties forAlbumPersistentID:(int64_t)d completionHandler:(id)handler;
- (void)setPlaylistProperties:(id)properties trackList:(id)list forPlaylistPersistentID:(int64_t)d completionHandler:(id)handler;
- (void)updateJaliscoLibraryWithCompletionHandler:(id)handler;
- (void)updateJaliscoLibraryWithReason:(int64_t)reason completionHandler:(id)handler;
- (void)updateSagaLibraryWithCompletionHandler:(id)handler;
- (void)updateSagaLibraryWithReason:(int64_t)reason completionHandler:(id)handler;
- (void)updateSubscribedPlaylistsWithSagaIDs:(id)ds ignoreMinRefreshInterval:(BOOL)interval completionHandler:(id)handler;
- (void)uploadArtworkForPlaylistWithPersistentID:(int64_t)d completionHandler:(id)handler;
@end

@implementation HSCloudClient

- (id)_ICConnectionConfigurationFromHSConnectionConfiguration:(id)configuration
{
  if (configuration)
  {
    v3 = MEMORY[0x277D7FA68];
    configurationCopy = configuration;
    v5 = [v3 alloc];
    userIdentity = [configurationCopy userIdentity];
    userIdentityStore = [configurationCopy userIdentityStore];
    v8 = [v5 initWithUserIdentity:userIdentity userIdentityStore:userIdentityStore];

    baseURL = [configurationCopy baseURL];
    [v8 setBaseURL:baseURL];

    libraryBagKey = [configurationCopy libraryBagKey];
    [v8 setLibraryBagKey:libraryBagKey];

    buildIdentifier = [configurationCopy buildIdentifier];
    [v8 setBuildIdentifier:buildIdentifier];

    purchaseClientIdentifier = [configurationCopy purchaseClientIdentifier];
    [v8 setPurchaseClientIdentifier:purchaseClientIdentifier];

    [v8 setRequestReason:{objc_msgSend(configurationCopy, "requestReason")}];
    familyMemberStoreID = [configurationCopy familyMemberStoreID];

    [v8 setFamilyMemberStoreID:familyMemberStoreID];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_ICCloudItemIDListFromHSCloudItemIDList:(id)list
{
  if (list)
  {
    v3 = MEMORY[0x277D7FA58];
    listCopy = list;
    v5 = objc_alloc_init(v3);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__HSCloudClient__ICCloudItemIDListFromHSCloudItemIDList___block_invoke;
    v8[3] = &unk_27977A0E8;
    v6 = v5;
    v9 = v6;
    [listCopy enumerateCloudItemIDsUsingBlock:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_serverJaliscoUpdateInProgressDidChange
{
  updateJaliscoInProgressChangedHandler = [(HSCloudClient *)self updateJaliscoInProgressChangedHandler];
  updateInProgressChangedHandler = [(HSCloudClient *)self updateInProgressChangedHandler];
  if (updateJaliscoInProgressChangedHandler | updateInProgressChangedHandler)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __56__HSCloudClient__serverJaliscoUpdateInProgressDidChange__block_invoke;
    v5[3] = &unk_27977A0C0;
    v6 = updateJaliscoInProgressChangedHandler;
    v7 = updateInProgressChangedHandler;
    [(HSCloudClient *)self loadIsJaliscoUpdateInProgressWithCompletionHandler:v5];
  }
}

uint64_t __56__HSCloudClient__serverJaliscoUpdateInProgressDidChange__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, a2, a3);
  }

  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)_serverSagaUpdateInProgressDidChange
{
  updateSagaInProgressChangedHandler = [(HSCloudClient *)self updateSagaInProgressChangedHandler];
  updateInProgressChangedHandler = [(HSCloudClient *)self updateInProgressChangedHandler];
  if (updateSagaInProgressChangedHandler | updateInProgressChangedHandler)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __53__HSCloudClient__serverSagaUpdateInProgressDidChange__block_invoke;
    v5[3] = &unk_27977A0C0;
    v6 = updateSagaInProgressChangedHandler;
    v7 = updateInProgressChangedHandler;
    [(HSCloudClient *)self loadIsSagaUpdateInProgressWithCompletionHandler:v5];
  }
}

uint64_t __53__HSCloudClient__serverSagaUpdateInProgressDidChange__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, a2, a3);
  }

  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)loadBooksForStoreIDs:(id)ds withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__HSCloudClient_loadBooksForStoreIDs_withCompletionHandler___block_invoke;
  v9[3] = &unk_27977A048;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ICCloudClient *)icCloudClient loadBooksForStoreIDs:ds withCompletionHandler:v9];
}

void __60__HSCloudClient_loadBooksForStoreIDs_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  if (v4)
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  }

  else
  {
    v6 = 0;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        v13 = objc_alloc_init(HSBook);
        -[HSBook setPurchaseHistoryID:](v13, "setPurchaseHistoryID:", [v12 purchaseHistoryID]);
        -[HSBook setStoreID:](v13, "setStoreID:", [v12 storeID]);
        v14 = [v12 title];
        [(HSBook *)v13 setTitle:v14];

        v15 = [v12 author];
        [(HSBook *)v13 setAuthor:v15];

        v16 = [v12 genre];
        [(HSBook *)v13 setGenre:v16];

        v17 = [v12 datePurchased];
        [(HSBook *)v13 setDatePurchased:v17];

        v18 = [v12 artworkURL];
        [(HSBook *)v13 setArtworkURL:v18];

        v19 = [v12 redownloadParameters];
        [(HSBook *)v13 setRedownloadParameters:v19];

        -[HSBook setVppLicensed:](v13, "setVppLicensed:", [v12 isVPPLicensed]);
        v20 = [v12 vppOrganizationID];
        [(HSBook *)v13 setVppOrganizationID:v20];

        v21 = [v12 vppOrganizationDisplayName];
        [(HSBook *)v13 setVppOrganizationDisplayName:v21];

        [v6 addObject:v13];
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  v22 = *(a1 + 32);
  if (v22)
  {
    (*(v22 + 16))(v22, v6, v5);
  }
}

- (void)setAlbumProperties:(id)properties forAlbumPersistentID:(int64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__HSCloudClient_setAlbumProperties_forAlbumPersistentID_completionHandler___block_invoke;
  v11[3] = &unk_279779F30;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [(ICCloudClient *)icCloudClient setAlbumProperties:properties forAlbumPersistentID:d completionHandler:v11];
}

uint64_t __75__HSCloudClient_setAlbumProperties_forAlbumPersistentID_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)resetConfiguration:(id)configuration
{
  self->_configuration = [(HSCloudClient *)self _ICConnectionConfigurationFromHSConnectionConfiguration:configuration];

  MEMORY[0x2821F96F8]();
}

- (void)loadJaliscoUpdateProgressWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HSCloudClient_loadJaliscoUpdateProgressWithCompletionHandler___block_invoke;
  v7[3] = &unk_27977A070;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(ICCloudClient *)icCloudClient loadJaliscoUpdateProgressWithCompletionHandler:v7];
}

uint64_t __64__HSCloudClient_loadJaliscoUpdateProgressWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)loadSagaUpdateProgressWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__HSCloudClient_loadSagaUpdateProgressWithCompletionHandler___block_invoke;
  v7[3] = &unk_27977A070;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(ICCloudClient *)icCloudClient loadSagaUpdateProgressWithCompletionHandler:v7];
}

uint64_t __61__HSCloudClient_loadSagaUpdateProgressWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)loadIsJaliscoUpdateInProgressWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HSCloudClient_loadIsJaliscoUpdateInProgressWithCompletionHandler___block_invoke;
  v7[3] = &unk_27977A098;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(ICCloudClient *)icCloudClient loadIsJaliscoUpdateInProgressWithCompletionHandler:v7];
}

uint64_t __68__HSCloudClient_loadIsJaliscoUpdateInProgressWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)loadIsSagaUpdateInProgressWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__HSCloudClient_loadIsSagaUpdateInProgressWithCompletionHandler___block_invoke;
  v7[3] = &unk_27977A098;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(ICCloudClient *)icCloudClient loadIsSagaUpdateInProgressWithCompletionHandler:v7];
}

uint64_t __65__HSCloudClient_loadIsSagaUpdateInProgressWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)loadUpdateProgressWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HSCloudClient_loadUpdateProgressWithCompletionHandler___block_invoke;
  v7[3] = &unk_27977A070;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(ICCloudClient *)icCloudClient loadUpdateProgressWithCompletionHandler:v7];
}

uint64_t __57__HSCloudClient_loadUpdateProgressWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)loadGeniusItemsForSagaID:(unint64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__HSCloudClient_loadGeniusItemsForSagaID_completionHandler___block_invoke;
  v9[3] = &unk_27977A048;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ICCloudClient *)icCloudClient loadGeniusItemsForSagaID:d completionHandler:v9];
}

uint64_t __60__HSCloudClient_loadGeniusItemsForSagaID_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)loadArtworkInfoForSubscriptionContainerPersistentIDs:(id)ds completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __88__HSCloudClient_loadArtworkInfoForSubscriptionContainerPersistentIDs_completionHandler___block_invoke;
  v9[3] = &unk_27977A020;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ICCloudClient *)icCloudClient loadArtworkInfoForSubscriptionContainerPersistentIDs:ds completionHandler:v9];
}

uint64_t __88__HSCloudClient_loadArtworkInfoForSubscriptionContainerPersistentIDs_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)loadArtworkInfoForSubscriptionContainerPersistentID:(unint64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __87__HSCloudClient_loadArtworkInfoForSubscriptionContainerPersistentID_completionHandler___block_invoke;
  v9[3] = &unk_279779FF8;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ICCloudClient *)icCloudClient loadArtworkInfoForSubscriptionContainerPersistentID:d completionHandler:v9];
}

uint64_t __87__HSCloudClient_loadArtworkInfoForSubscriptionContainerPersistentID_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)loadScreenshotInfoForSubscriptionPersistentIDs:(id)ds completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__HSCloudClient_loadScreenshotInfoForSubscriptionPersistentIDs_completionHandler___block_invoke;
  v9[3] = &unk_27977A020;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ICCloudClient *)icCloudClient loadScreenshotInfoForSubscriptionPersistentIDs:ds completionHandler:v9];
}

uint64_t __82__HSCloudClient_loadScreenshotInfoForSubscriptionPersistentIDs_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)loadScreenshotInfoForSubscriptionPersistentID:(unint64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__HSCloudClient_loadScreenshotInfoForSubscriptionPersistentID_completionHandler___block_invoke;
  v9[3] = &unk_279779FF8;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ICCloudClient *)icCloudClient loadScreenshotInfoForSubscriptionPersistentID:d completionHandler:v9];
}

uint64_t __81__HSCloudClient_loadScreenshotInfoForSubscriptionPersistentID_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)loadArtworkInfoForSubscriptionItemPersistentIDs:(id)ds completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __83__HSCloudClient_loadArtworkInfoForSubscriptionItemPersistentIDs_completionHandler___block_invoke;
  v9[3] = &unk_27977A020;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ICCloudClient *)icCloudClient loadArtworkInfoForSubscriptionItemPersistentIDs:ds completionHandler:v9];
}

uint64_t __83__HSCloudClient_loadArtworkInfoForSubscriptionItemPersistentIDs_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)loadArtworkInfoForSubscriptionItemPersistentID:(unint64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__HSCloudClient_loadArtworkInfoForSubscriptionItemPersistentID_completionHandler___block_invoke;
  v9[3] = &unk_279779FF8;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ICCloudClient *)icCloudClient loadArtworkInfoForSubscriptionItemPersistentID:d completionHandler:v9];
}

uint64_t __82__HSCloudClient_loadArtworkInfoForSubscriptionItemPersistentID_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)loadScreenshotInfoForSagaIDs:(id)ds completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__HSCloudClient_loadScreenshotInfoForSagaIDs_completionHandler___block_invoke;
  v9[3] = &unk_27977A020;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ICCloudClient *)icCloudClient loadScreenshotInfoForSagaIDs:ds completionHandler:v9];
}

uint64_t __64__HSCloudClient_loadScreenshotInfoForSagaIDs_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)loadScreenshotInfoForSagaID:(unint64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__HSCloudClient_loadScreenshotInfoForSagaID_completionHandler___block_invoke;
  v9[3] = &unk_279779FF8;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ICCloudClient *)icCloudClient loadScreenshotInfoForSagaID:d completionHandler:v9];
}

uint64_t __63__HSCloudClient_loadScreenshotInfoForSagaID_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)loadArtworkInfoForContainerSagaIDs:(id)ds completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__HSCloudClient_loadArtworkInfoForContainerSagaIDs_completionHandler___block_invoke;
  v9[3] = &unk_27977A020;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ICCloudClient *)icCloudClient loadArtworkInfoForContainerSagaIDs:ds completionHandler:v9];
}

uint64_t __70__HSCloudClient_loadArtworkInfoForContainerSagaIDs_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)loadArtworkInfoForContainerSagaID:(unint64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__HSCloudClient_loadArtworkInfoForContainerSagaID_completionHandler___block_invoke;
  v9[3] = &unk_279779FF8;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ICCloudClient *)icCloudClient loadArtworkInfoForContainerSagaID:d completionHandler:v9];
}

uint64_t __69__HSCloudClient_loadArtworkInfoForContainerSagaID_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)loadArtworkInfoForSagaIDs:(id)ds completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__HSCloudClient_loadArtworkInfoForSagaIDs_completionHandler___block_invoke;
  v9[3] = &unk_27977A020;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ICCloudClient *)icCloudClient loadArtworkInfoForSagaIDs:ds completionHandler:v9];
}

uint64_t __61__HSCloudClient_loadArtworkInfoForSagaIDs_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)loadArtworkInfoForSagaID:(unint64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__HSCloudClient_loadArtworkInfoForSagaID_completionHandler___block_invoke;
  v9[3] = &unk_279779FF8;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ICCloudClient *)icCloudClient loadArtworkInfoForSagaID:d completionHandler:v9];
}

uint64_t __60__HSCloudClient_loadArtworkInfoForSagaID_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)loadScreenshotInfoForPurchaseHistoryIDs:(id)ds completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__HSCloudClient_loadScreenshotInfoForPurchaseHistoryIDs_completionHandler___block_invoke;
  v9[3] = &unk_27977A020;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ICCloudClient *)icCloudClient loadScreenshotInfoForPurchaseHistoryIDs:ds completionHandler:v9];
}

uint64_t __75__HSCloudClient_loadScreenshotInfoForPurchaseHistoryIDs_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)loadScreenshotInfoForPurchaseHistoryID:(unint64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__HSCloudClient_loadScreenshotInfoForPurchaseHistoryID_completionHandler___block_invoke;
  v9[3] = &unk_279779FF8;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ICCloudClient *)icCloudClient loadScreenshotInfoForPurchaseHistoryID:d completionHandler:v9];
}

uint64_t __74__HSCloudClient_loadScreenshotInfoForPurchaseHistoryID_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)loadArtworkInfoForPurchaseHistoryIDs:(id)ds completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__HSCloudClient_loadArtworkInfoForPurchaseHistoryIDs_completionHandler___block_invoke;
  v9[3] = &unk_27977A020;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ICCloudClient *)icCloudClient loadArtworkInfoForPurchaseHistoryIDs:ds completionHandler:v9];
}

uint64_t __72__HSCloudClient_loadArtworkInfoForPurchaseHistoryIDs_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)loadArtworkInfoForPurchaseHistoryID:(unint64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__HSCloudClient_loadArtworkInfoForPurchaseHistoryID_completionHandler___block_invoke;
  v9[3] = &unk_279779FF8;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ICCloudClient *)icCloudClient loadArtworkInfoForPurchaseHistoryID:d completionHandler:v9];
}

uint64_t __71__HSCloudClient_loadArtworkInfoForPurchaseHistoryID_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)importAlbumArtistHeroImageForPersistentID:(int64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__HSCloudClient_importAlbumArtistHeroImageForPersistentID_completionHandler___block_invoke;
  v9[3] = &unk_279779F30;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ICCloudClient *)icCloudClient importAlbumArtistHeroImageForPersistentID:d completionHandler:v9];
}

uint64_t __77__HSCloudClient_importAlbumArtistHeroImageForPersistentID_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)importArtistHeroImageForPersistentID:(int64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__HSCloudClient_importArtistHeroImageForPersistentID_completionHandler___block_invoke;
  v9[3] = &unk_279779F30;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ICCloudClient *)icCloudClient importArtistHeroImageForPersistentID:d completionHandler:v9];
}

uint64_t __72__HSCloudClient_importArtistHeroImageForPersistentID_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)importSubscriptionContainerArtworkForPersistentID:(int64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __85__HSCloudClient_importSubscriptionContainerArtworkForPersistentID_completionHandler___block_invoke;
  v9[3] = &unk_279779F30;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ICCloudClient *)icCloudClient importSubscriptionContainerArtworkForPersistentID:d completionHandler:v9];
}

uint64_t __85__HSCloudClient_importSubscriptionContainerArtworkForPersistentID_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)importSubscriptionScreenshotForPersistentID:(int64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__HSCloudClient_importSubscriptionScreenshotForPersistentID_completionHandler___block_invoke;
  v9[3] = &unk_279779F30;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ICCloudClient *)icCloudClient importSubscriptionScreenshotForPersistentID:d completionHandler:v9];
}

uint64_t __79__HSCloudClient_importSubscriptionScreenshotForPersistentID_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)importSubscriptionItemArtworkForPersistentID:(int64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__HSCloudClient_importSubscriptionItemArtworkForPersistentID_completionHandler___block_invoke;
  v9[3] = &unk_279779F30;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ICCloudClient *)icCloudClient importSubscriptionItemArtworkForPersistentID:d completionHandler:v9];
}

uint64_t __80__HSCloudClient_importSubscriptionItemArtworkForPersistentID_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)importContainerArtworkForSagaID:(unint64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__HSCloudClient_importContainerArtworkForSagaID_completionHandler___block_invoke;
  v9[3] = &unk_279779F30;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ICCloudClient *)icCloudClient importContainerArtworkForSagaID:d completionHandler:v9];
}

uint64_t __67__HSCloudClient_importContainerArtworkForSagaID_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)importScreenshotForSagaID:(unint64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__HSCloudClient_importScreenshotForSagaID_completionHandler___block_invoke;
  v9[3] = &unk_279779F30;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ICCloudClient *)icCloudClient importScreenshotForSagaID:d completionHandler:v9];
}

uint64_t __61__HSCloudClient_importScreenshotForSagaID_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)importItemArtworkForSagaID:(unint64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__HSCloudClient_importItemArtworkForSagaID_completionHandler___block_invoke;
  v9[3] = &unk_279779F30;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ICCloudClient *)icCloudClient importItemArtworkForSagaID:d completionHandler:v9];
}

uint64_t __62__HSCloudClient_importItemArtworkForSagaID_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)importScreenshotForPurchaseHistoryID:(unint64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__HSCloudClient_importScreenshotForPurchaseHistoryID_completionHandler___block_invoke;
  v9[3] = &unk_279779F30;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ICCloudClient *)icCloudClient importScreenshotForPurchaseHistoryID:d completionHandler:v9];
}

uint64_t __72__HSCloudClient_importScreenshotForPurchaseHistoryID_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)importItemArtworkForPurchaseHistoryID:(unint64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__HSCloudClient_importItemArtworkForPurchaseHistoryID_completionHandler___block_invoke;
  v9[3] = &unk_279779F30;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ICCloudClient *)icCloudClient importItemArtworkForPurchaseHistoryID:d completionHandler:v9];
}

uint64_t __73__HSCloudClient_importItemArtworkForPurchaseHistoryID_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)loadLastKnownEnableICMLErrorStatusWithCompletionHander:(id)hander
{
  handerCopy = hander;
  icCloudClient = self->_icCloudClient;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__HSCloudClient_loadLastKnownEnableICMLErrorStatusWithCompletionHander___block_invoke;
  v7[3] = &unk_279779FD0;
  v8 = handerCopy;
  v6 = handerCopy;
  [(ICCloudClient *)icCloudClient loadLastKnownEnableICMLErrorStatusWithCompletionHander:v7];
}

uint64_t __72__HSCloudClient_loadLastKnownEnableICMLErrorStatusWithCompletionHander___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)isAuthenticatedWithQueue:(id)queue completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__HSCloudClient_isAuthenticatedWithQueue_completionHandler___block_invoke;
  v9[3] = &unk_279779FA8;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ICCloudClient *)icCloudClient isAuthenticatedWithQueue:queue completionHandler:v9];
}

uint64_t __60__HSCloudClient_isAuthenticatedWithQueue_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)isAuthenticatedWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HSCloudClient_isAuthenticatedWithCompletionHandler___block_invoke;
  v7[3] = &unk_279779FA8;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(ICCloudClient *)icCloudClient isAuthenticatedWithCompletionHandler:v7];
}

uint64_t __54__HSCloudClient_isAuthenticatedWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)deauthenticateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__HSCloudClient_deauthenticateWithCompletionHandler___block_invoke;
  v7[3] = &unk_279779F30;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(ICCloudClient *)icCloudClient deauthenticateWithCompletionHandler:v7];
}

uint64_t __53__HSCloudClient_deauthenticateWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateSagaLibraryWithReason:(int64_t)reason completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__HSCloudClient_updateSagaLibraryWithReason_completionHandler___block_invoke;
  v9[3] = &unk_279779FA8;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ICCloudClient *)icCloudClient updateSagaLibraryWithReason:reason completionHandler:v9];
}

uint64_t __63__HSCloudClient_updateSagaLibraryWithReason_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateSagaLibraryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__HSCloudClient_updateSagaLibraryWithCompletionHandler___block_invoke;
  v6[3] = &unk_279779FA8;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(HSCloudClient *)self updateSagaLibraryWithReason:0 completionHandler:v6];
}

uint64_t __56__HSCloudClient_updateSagaLibraryWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateJaliscoLibraryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__HSCloudClient_updateJaliscoLibraryWithCompletionHandler___block_invoke;
  v6[3] = &unk_279779FA8;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(HSCloudClient *)self updateJaliscoLibraryWithReason:0 completionHandler:v6];
}

uint64_t __59__HSCloudClient_updateJaliscoLibraryWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)removeJaliscoLibraryWithCompletionHander:(id)hander
{
  handerCopy = hander;
  icCloudClient = self->_icCloudClient;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__HSCloudClient_removeJaliscoLibraryWithCompletionHander___block_invoke;
  v7[3] = &unk_279779F30;
  v8 = handerCopy;
  v6 = handerCopy;
  [(ICCloudClient *)icCloudClient removeJaliscoLibraryWithCompletionHander:v7];
}

uint64_t __58__HSCloudClient_removeJaliscoLibraryWithCompletionHander___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateJaliscoLibraryWithReason:(int64_t)reason completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__HSCloudClient_updateJaliscoLibraryWithReason_completionHandler___block_invoke;
  v9[3] = &unk_279779FA8;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ICCloudClient *)icCloudClient updateJaliscoLibraryWithReason:reason completionHandler:v9];
}

uint64_t __66__HSCloudClient_updateJaliscoLibraryWithReason_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)authenticateAndStartInitialImport:(BOOL)import completionHandler:(id)handler
{
  importCopy = import;
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__HSCloudClient_authenticateAndStartInitialImport_completionHandler___block_invoke;
  v9[3] = &unk_279779F30;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ICCloudClient *)icCloudClient authenticateAndStartInitialImport:importCopy completionHandler:v9];
}

uint64_t __69__HSCloudClient_authenticateAndStartInitialImport_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)authenticateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__HSCloudClient_authenticateWithCompletionHandler___block_invoke;
  v7[3] = &unk_279779F30;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(ICCloudClient *)icCloudClient authenticateWithCompletionHandler:v7];
}

uint64_t __51__HSCloudClient_authenticateWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)addGeniusPlaylistWithPersistentID:(int64_t)d name:(id)name seedItemSagaIDs:(id)ds itemSagaIDs:(id)iDs completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __102__HSCloudClient_addGeniusPlaylistWithPersistentID_name_seedItemSagaIDs_itemSagaIDs_completionHandler___block_invoke;
  v14[3] = &unk_279779F08;
  v15 = handlerCopy;
  v13 = handlerCopy;
  [(ICCloudClient *)icCloudClient addGeniusPlaylistWithPersistentID:d name:name seedItemSagaIDs:ds itemSagaIDs:ds completionHandler:v14];
}

uint64_t __102__HSCloudClient_addGeniusPlaylistWithPersistentID_name_seedItemSagaIDs_itemSagaIDs_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)hideItemsWithPurchaseHistoryIDs:(id)ds completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__HSCloudClient_hideItemsWithPurchaseHistoryIDs_completionHandler___block_invoke;
  v9[3] = &unk_279779F30;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ICCloudClient *)icCloudClient hideItemsWithPurchaseHistoryIDs:ds completionHandler:v9];
}

uint64_t __67__HSCloudClient_hideItemsWithPurchaseHistoryIDs_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)removeItemsWithSagaIDs:(id)ds completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__HSCloudClient_removeItemsWithSagaIDs_completionHandler___block_invoke;
  v9[3] = &unk_279779F30;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ICCloudClient *)icCloudClient removeItemsWithSagaIDs:ds completionHandler:v9];
}

uint64_t __58__HSCloudClient_removeItemsWithSagaIDs_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)removePlaylistsWithSagaIDs:(id)ds performDeltaSync:(BOOL)sync completionHandler:(id)handler
{
  syncCopy = sync;
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__HSCloudClient_removePlaylistsWithSagaIDs_performDeltaSync_completionHandler___block_invoke;
  v11[3] = &unk_279779F30;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [(ICCloudClient *)icCloudClient removePlaylistsWithSagaIDs:ds performDeltaSync:syncCopy completionHandler:v11];
}

uint64_t __79__HSCloudClient_removePlaylistsWithSagaIDs_performDeltaSync_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)addStorePlaylistWithGlobalID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__HSCloudClient_addStorePlaylistWithGlobalID_completionHandler___block_invoke;
  v9[3] = &unk_279779F58;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ICCloudClient *)icCloudClient addStorePlaylistWithGlobalID:d completionHandler:v9];
}

uint64_t __64__HSCloudClient_addStorePlaylistWithGlobalID_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)sdk_addStoreItemWithOpaqueID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__HSCloudClient_sdk_addStoreItemWithOpaqueID_completionHandler___block_invoke;
  v9[3] = &unk_279779F58;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ICCloudClient *)icCloudClient sdk_addStoreItemWithOpaqueID:d completionHandler:v9];
}

uint64_t __64__HSCloudClient_sdk_addStoreItemWithOpaqueID_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)addStoreItemWithAdamID:(int64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__HSCloudClient_addStoreItemWithAdamID_completionHandler___block_invoke;
  v9[3] = &unk_279779F58;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ICCloudClient *)icCloudClient addStoreItemWithAdamID:d referral:0 completionHandler:v9];
}

uint64_t __58__HSCloudClient_addStoreItemWithAdamID_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateSubscribedPlaylistsWithSagaIDs:(id)ds ignoreMinRefreshInterval:(BOOL)interval completionHandler:(id)handler
{
  intervalCopy = interval;
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __97__HSCloudClient_updateSubscribedPlaylistsWithSagaIDs_ignoreMinRefreshInterval_completionHandler___block_invoke;
  v11[3] = &unk_279779F30;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [(ICCloudClient *)icCloudClient updateSubscribedPlaylistsWithSagaIDs:ds ignoreMinRefreshInterval:intervalCopy completionHandler:v11];
}

uint64_t __97__HSCloudClient_updateSubscribedPlaylistsWithSagaIDs_ignoreMinRefreshInterval_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)uploadArtworkForPlaylistWithPersistentID:(int64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__HSCloudClient_uploadArtworkForPlaylistWithPersistentID_completionHandler___block_invoke;
  v9[3] = &unk_279779F30;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ICCloudClient *)icCloudClient uploadArtworkForPlaylistWithPersistentID:d completionHandler:v9];
}

uint64_t __76__HSCloudClient_uploadArtworkForPlaylistWithPersistentID_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)publishPlaylistWithSagaID:(int64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__HSCloudClient_publishPlaylistWithSagaID_completionHandler___block_invoke;
  v9[3] = &unk_279779F80;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ICCloudClient *)icCloudClient publishPlaylistWithSagaID:d completionHandler:v9];
}

uint64_t __61__HSCloudClient_publishPlaylistWithSagaID_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)sdk_addStoreItemWithOpaqueID:(id)d toPlaylistWithPersistentID:(int64_t)iD completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __91__HSCloudClient_sdk_addStoreItemWithOpaqueID_toPlaylistWithPersistentID_completionHandler___block_invoke;
  v11[3] = &unk_279779F58;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [(ICCloudClient *)icCloudClient sdk_addStoreItemWithOpaqueID:d toPlaylistWithPersistentID:iD completionHandler:v11];
}

uint64_t __91__HSCloudClient_sdk_addStoreItemWithOpaqueID_toPlaylistWithPersistentID_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)addItemWithSagaID:(int64_t)d toPlaylistWithPersistentID:(int64_t)iD completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__HSCloudClient_addItemWithSagaID_toPlaylistWithPersistentID_completionHandler___block_invoke;
  v11[3] = &unk_279779F30;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [(ICCloudClient *)icCloudClient addItemWithSagaID:d toPlaylistWithPersistentID:iD completionHandler:v11];
}

uint64_t __80__HSCloudClient_addItemWithSagaID_toPlaylistWithPersistentID_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)addStoreItemWithAdamID:(int64_t)d toPlaylistWithPersistentID:(int64_t)iD completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __85__HSCloudClient_addStoreItemWithAdamID_toPlaylistWithPersistentID_completionHandler___block_invoke;
  v11[3] = &unk_279779F30;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [(ICCloudClient *)icCloudClient addStoreItemWithAdamID:d referral:0 toPlaylistWithPersistentID:iD completionHandler:v11];
}

uint64_t __85__HSCloudClient_addStoreItemWithAdamID_toPlaylistWithPersistentID_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setPlaylistProperties:(id)properties trackList:(id)list forPlaylistPersistentID:(int64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  propertiesCopy = properties;
  v13 = [(HSCloudClient *)self _ICCloudItemIDListFromHSCloudItemIDList:list];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __91__HSCloudClient_setPlaylistProperties_trackList_forPlaylistPersistentID_completionHandler___block_invoke;
  v15[3] = &unk_279779F30;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [(ICCloudClient *)icCloudClient setPlaylistProperties:propertiesCopy trackList:v13 forPlaylistPersistentID:d completionHandler:v15];
}

uint64_t __91__HSCloudClient_setPlaylistProperties_trackList_forPlaylistPersistentID_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)sdk_createPlaylistWithPersistentID:(int64_t)d properties:(id)properties tracklist:(id)tracklist completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  propertiesCopy = properties;
  v13 = [(HSCloudClient *)self _ICCloudItemIDListFromHSCloudItemIDList:tracklist];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __91__HSCloudClient_sdk_createPlaylistWithPersistentID_properties_tracklist_completionHandler___block_invoke;
  v15[3] = &unk_279779F08;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [(ICCloudClient *)icCloudClient sdk_createPlaylistWithPersistentID:d properties:propertiesCopy tracklist:v13 completionHandler:v15];
}

uint64_t __91__HSCloudClient_sdk_createPlaylistWithPersistentID_properties_tracklist_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)createPlaylistWithPersistentID:(int64_t)d properties:(id)properties trackList:(id)list completionHandler:(id)handler
{
  handlerCopy = handler;
  icCloudClient = self->_icCloudClient;
  propertiesCopy = properties;
  v13 = [(HSCloudClient *)self _ICCloudItemIDListFromHSCloudItemIDList:list];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __87__HSCloudClient_createPlaylistWithPersistentID_properties_trackList_completionHandler___block_invoke;
  v15[3] = &unk_279779F08;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [(ICCloudClient *)icCloudClient createPlaylistWithPersistentID:d properties:propertiesCopy trackList:v13 completionHandler:v15];
}

uint64_t __87__HSCloudClient_createPlaylistWithPersistentID_properties_trackList_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.itunescloudd.launched", 0);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v4, self, @"com.apple.itunescloudd.sagaUpdateInProgressChanged", 0);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v5, self, @"com.apple.itunescloudd.jaliscoUpdateInProgressChanged", 0);
  v6.receiver = self;
  v6.super_class = HSCloudClient;
  [(HSCloudClient *)&v6 dealloc];
}

- (HSCloudClient)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v14.receiver = self;
  v14.super_class = HSCloudClient;
  v5 = [(HSCloudClient *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(HSCloudClient *)v5 _ICConnectionConfigurationFromHSConnectionConfiguration:configurationCopy];
    configuration = v6->_configuration;
    v6->_configuration = v7;

    v9 = [objc_alloc(MEMORY[0x277D7FA50]) initWithConfiguration:v6->_configuration];
    icCloudClient = v6->_icCloudClient;
    v6->_icCloudClient = v9;

    v6->_preferredVideoQuality = -1;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, _ServerJaliscoUpdateInProgressDidChangeNotification, @"com.apple.itunescloudd.jaliscoUpdateInProgressChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v12 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v12, v6, _ServerSagaUpdateInProgressDidChangeNotification, @"com.apple.itunescloudd.sagaUpdateInProgressChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v6;
}

@end