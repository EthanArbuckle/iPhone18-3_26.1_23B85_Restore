@interface BDSServiceCenter
+ (void)_nextSortOrderForCollectionMemberManager:(id)manager collectionID:(id)d completion:(id)completion;
+ (void)addStoreID:(id)d toCollectionID:(id)iD completion:(id)completion;
+ (void)fetchIsAssetID:(id)d inCollectionID:(id)iD completion:(id)completion;
+ (void)setFinishedState:(BOOL)state assetIDs:(id)ds completion:(id)completion;
@end

@implementation BDSServiceCenter

+ (void)addStoreID:(id)d toCollectionID:(id)iD completion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  v11 = [[BCMutableStoreItem alloc] initWithStoreID:dCopy];
  v12 = +[BCCloudAssetManager sharedManager];
  storeAssetManager = [v12 storeAssetManager];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100081E9C;
  v17[3] = &unk_100241FE8;
  v20 = completionCopy;
  selfCopy = self;
  v18 = dCopy;
  v19 = iDCopy;
  v14 = iDCopy;
  v15 = completionCopy;
  v16 = dCopy;
  [storeAssetManager addStoreItem:v11 completion:v17];
}

+ (void)fetchIsAssetID:(id)d inCollectionID:(id)iD completion:(id)completion
{
  completionCopy = completion;
  v8 = [BCCollectionMember collectionMemberIDWithCollectionID:iD assetID:d];
  v9 = +[BCCloudCollectionsManager sharedManager];
  collectionMemberManager = [v9 collectionMemberManager];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100082260;
  v12[3] = &unk_100242010;
  v13 = completionCopy;
  v11 = completionCopy;
  [collectionMemberManager collectionMemberForCollectionMemberID:v8 completion:v12];
}

+ (void)setFinishedState:(BOOL)state assetIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  v9 = objc_alloc_init(NSMutableDictionary);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = dsCopy;
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        if ([v15 longLongValue])
        {
          v16 = v15 == 0;
        }

        else
        {
          v16 = 1;
        }

        if (!v16)
        {
          v17 = v15;
          v18 = [[BCMutableStoreItem alloc] initWithStoreID:v17];
          [v9 setObject:v18 forKeyedSubscript:v17];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v12);
  }

  v19 = +[BCCloudAssetManager sharedManager];
  storeAssetManager = [v19 storeAssetManager];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100082544;
  v24[3] = &unk_100242060;
  v26 = v10;
  v27 = completionCopy;
  v25 = v9;
  stateCopy = state;
  v21 = v10;
  v22 = completionCopy;
  v23 = v9;
  [storeAssetManager addStoreItems:v23 completion:v24];
}

+ (void)_nextSortOrderForCollectionMemberManager:(id)manager collectionID:(id)d completion:(id)completion
{
  managerCopy = manager;
  dCopy = d;
  completionCopy = completion;
  v10 = completionCopy;
  if (completionCopy)
  {
    if (managerCopy && dCopy)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100082B20;
      v11[3] = &unk_100242088;
      v12 = completionCopy;
      [managerCopy fetchMaxSortOrderInCollectionID:dCopy completion:v11];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

@end