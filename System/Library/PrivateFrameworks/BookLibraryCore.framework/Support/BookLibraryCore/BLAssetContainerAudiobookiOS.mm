@interface BLAssetContainerAudiobookiOS
- (BLAssetContainerAudiobookiOS)initWithMetadataStoreManager:(id)manager;
- (id)installOperationForInstallInfo:(id)info;
- (void)cancelPurchasesWithMetadata:(id)metadata subitemsToIgnore:(id)ignore;
- (void)purchasedAssetWithMetadata:(id)metadata familyAccountID:(id)d;
@end

@implementation BLAssetContainerAudiobookiOS

- (BLAssetContainerAudiobookiOS)initWithMetadataStoreManager:(id)manager
{
  managerCopy = manager;
  v10.receiver = self;
  v10.super_class = BLAssetContainerAudiobookiOS;
  v6 = [(BLAssetContainerAudiobookiOS *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(BLMediaLibraryManager);
    mediaLibraryManager = v6->_mediaLibraryManager;
    v6->_mediaLibraryManager = v7;

    objc_storeStrong(&v6->_metadataStoreManager, manager);
  }

  return v6;
}

- (void)purchasedAssetWithMetadata:(id)metadata familyAccountID:(id)d
{
  dCopy = d;
  metadataCopy = metadata;
  v7 = objc_alloc_init(BLMLImporterItem);
  [(BLMLImporterItem *)v7 setItemMetadata:metadataCopy];

  if ([dCopy longLongValue])
  {
    [(BLMLImporterItem *)v7 setValue:dCopy forAdditionalEntityProperty:ML3TrackPropertyStoreFamilyAccountID];
  }

  mediaLibraryManager = [(BLAssetContainerAudiobookiOS *)self mediaLibraryManager];
  [mediaLibraryManager addLibraryItemWithoutWaiting:v7];
}

- (void)cancelPurchasesWithMetadata:(id)metadata subitemsToIgnore:(id)ignore
{
  ignoreCopy = ignore;
  metadataCopy = metadata;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000686D8;
  v10[3] = &unk_10011D218;
  v8 = objc_alloc_init(NSMutableArray);
  v11 = v8;
  [BLMediaLibraryUtilities enumerateTracksWithStorePlaylistIdentifier:metadataCopy usingBlock:v10];

  [v8 removeObjectsInArray:ignoreCopy];
  if ([v8 count])
  {
    mediaLibraryManager = [(BLAssetContainerAudiobookiOS *)self mediaLibraryManager];
    [mediaLibraryManager removeMediaItemsForStoreIDs:v8];
  }
}

- (id)installOperationForInstallInfo:(id)info
{
  infoCopy = info;
  v5 = [BLAudiobookInstallOperation alloc];
  mediaLibraryManager = [(BLAssetContainerAudiobookiOS *)self mediaLibraryManager];
  metadataStoreManager = [(BLAssetContainerAudiobookiOS *)self metadataStoreManager];
  v8 = [(BLAudiobookInstallOperation *)v5 initWithInfo:infoCopy mediaLibraryManager:mediaLibraryManager metadataStoreManager:metadataStoreManager];

  return v8;
}

@end