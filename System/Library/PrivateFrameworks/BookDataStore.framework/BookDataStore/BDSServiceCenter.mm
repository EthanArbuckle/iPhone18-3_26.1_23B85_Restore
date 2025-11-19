@interface BDSServiceCenter
+ (void)_nextSortOrderForCollectionMemberManager:(id)a3 collectionID:(id)a4 completion:(id)a5;
+ (void)addStoreID:(id)a3 toCollectionID:(id)a4 completion:(id)a5;
+ (void)fetchIsAssetID:(id)a3 inCollectionID:(id)a4 completion:(id)a5;
+ (void)setFinishedState:(BOOL)a3 assetIDs:(id)a4 completion:(id)a5;
@end

@implementation BDSServiceCenter

+ (void)addStoreID:(id)a3 toCollectionID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[BCMutableStoreItem alloc] initWithStoreID:v8];
  v12 = +[BCCloudAssetManager sharedManager];
  v13 = [v12 storeAssetManager];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1E460B1E4;
  v17[3] = &unk_1E8759EF8;
  v20 = v10;
  v21 = a1;
  v18 = v8;
  v19 = v9;
  v14 = v9;
  v15 = v10;
  v16 = v8;
  [v13 addStoreItem:v11 completion:v17];
}

+ (void)fetchIsAssetID:(id)a3 inCollectionID:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = [BCCollectionMember collectionMemberIDWithCollectionID:a4 assetID:a3];
  v9 = +[BCCloudCollectionsManager sharedManager];
  v10 = [v9 collectionMemberManager];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1E460B5A8;
  v12[3] = &unk_1E8759F20;
  v13 = v7;
  v11 = v7;
  [v10 collectionMemberForCollectionMemberID:v8 completion:v12];
}

+ (void)setFinishedState:(BOOL)a3 assetIDs:(id)a4 completion:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v31;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
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

      v12 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v12);
  }

  v19 = +[BCCloudAssetManager sharedManager];
  v20 = [v19 storeAssetManager];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_1E460B88C;
  v25[3] = &unk_1E8759F70;
  v27 = v10;
  v28 = v8;
  v26 = v9;
  v29 = a3;
  v21 = v10;
  v22 = v8;
  v23 = v9;
  [v20 addStoreItems:v23 completion:v25];

  v24 = *MEMORY[0x1E69E9840];
}

+ (void)_nextSortOrderForCollectionMemberManager:(id)a3 collectionID:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v9)
  {
    if (v7 && v8)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_1E460BE68;
      v11[3] = &unk_1E8759F98;
      v12 = v9;
      [v7 fetchMaxSortOrderInCollectionID:v8 completion:v11];
    }

    else
    {
      (*(v9 + 2))(v9, 0);
    }
  }
}

@end