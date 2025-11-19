@interface BLAssetContainerAudiobookiOS
- (BLAssetContainerAudiobookiOS)initWithMetadataStoreManager:(id)a3;
- (id)installOperationForInstallInfo:(id)a3;
- (void)cancelPurchasesWithMetadata:(id)a3 subitemsToIgnore:(id)a4;
- (void)purchasedAssetWithMetadata:(id)a3 familyAccountID:(id)a4;
@end

@implementation BLAssetContainerAudiobookiOS

- (BLAssetContainerAudiobookiOS)initWithMetadataStoreManager:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = BLAssetContainerAudiobookiOS;
  v6 = [(BLAssetContainerAudiobookiOS *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(BLMediaLibraryManager);
    mediaLibraryManager = v6->_mediaLibraryManager;
    v6->_mediaLibraryManager = v7;

    objc_storeStrong(&v6->_metadataStoreManager, a3);
  }

  return v6;
}

- (void)purchasedAssetWithMetadata:(id)a3 familyAccountID:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = objc_alloc_init(BLMLImporterItem);
  [(BLMLImporterItem *)v7 setItemMetadata:v6];

  if ([v9 longLongValue])
  {
    [(BLMLImporterItem *)v7 setValue:v9 forAdditionalEntityProperty:ML3TrackPropertyStoreFamilyAccountID];
  }

  v8 = [(BLAssetContainerAudiobookiOS *)self mediaLibraryManager];
  [v8 addLibraryItemWithoutWaiting:v7];
}

- (void)cancelPurchasesWithMetadata:(id)a3 subitemsToIgnore:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000686D8;
  v10[3] = &unk_10011D218;
  v8 = objc_alloc_init(NSMutableArray);
  v11 = v8;
  [BLMediaLibraryUtilities enumerateTracksWithStorePlaylistIdentifier:v7 usingBlock:v10];

  [v8 removeObjectsInArray:v6];
  if ([v8 count])
  {
    v9 = [(BLAssetContainerAudiobookiOS *)self mediaLibraryManager];
    [v9 removeMediaItemsForStoreIDs:v8];
  }
}

- (id)installOperationForInstallInfo:(id)a3
{
  v4 = a3;
  v5 = [BLAudiobookInstallOperation alloc];
  v6 = [(BLAssetContainerAudiobookiOS *)self mediaLibraryManager];
  v7 = [(BLAssetContainerAudiobookiOS *)self metadataStoreManager];
  v8 = [(BLAudiobookInstallOperation *)v5 initWithInfo:v4 mediaLibraryManager:v6 metadataStoreManager:v7];

  return v8;
}

@end