@interface CPLMemoryChange
+ (id)_createTestMemoryWithAssets:(id)a3;
- (CPLMemoryChange)initWithCoder:(id)a3;
- (id)checkDefaultValueBlockForPropertyWithSelector:(SEL)a3;
- (id)propertiesDescription;
- (id)scopedIdentifiersForMapping;
- (id)translateToClientChangeUsingIDMapping:(id)a3 error:(id *)a4;
- (id)translateToCloudChangeUsingIDMapping:(id)a3 error:(id *)a4;
@end

@implementation CPLMemoryChange

- (id)checkDefaultValueBlockForPropertyWithSelector:(SEL)a3
{
  if (sel_notificationState == a3)
  {
    v5 = &__block_literal_global_4605;
  }

  else
  {
    v8 = v3;
    v9 = v4;
    if (sel_blacklistedFeature == a3)
    {
      v5 = MEMORY[0x1E128EBA0](_CPLDefaultValueObjectNil, a2);
    }

    else
    {
      v7.receiver = self;
      v7.super_class = CPLMemoryChange;
      v5 = [(CPLRecordChange *)&v7 checkDefaultValueBlockForPropertyWithSelector:?];
    }
  }

  return v5;
}

- (id)propertiesDescription
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu assets", -[CPLMemoryAssetList assetsCount](self->_assetList, "assetsCount")];
  v4 = [v3 stringByAppendingFormat:@" %lu custom user assets", -[CPLMemoryAssetList assetsCount](self->_customUserAssetList, "assetsCount")];

  return v4;
}

+ (id)_createTestMemoryWithAssets:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 firstObject];
  v5 = [v4 scopedIdentifier];
  v6 = [v5 scopeIdentifier];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = CPLPrimaryScopeIdentifierForCurrentUniverse();
  }

  v9 = v8;

  v26 = v9;
  v10 = [(CPLRecordChange *)CPLMemoryChange newRecordInScopeWithIdentifier:v9];
  [v10 setTitle:@"Test Memory Title"];
  [v10 setSubtitle:@"Test Memory Subtitle"];
  [v10 setCategory:301];
  v11 = [MEMORY[0x1E695DF00] date];
  [v10 setCreationDate:v11];

  v12 = [@"graphData" dataUsingEncoding:4];
  [v10 setGraphData:v12];

  [v10 setGraphVersion:1];
  v13 = [@"movieData" dataUsingEncoding:4];
  [v10 setMovieData:v13];

  [v10 setScore:10.0];
  [v10 setNotificationState:1];
  [v10 setPlayCount:10];
  [v10 setShareCount:10];
  [v10 setViewCount:10];
  v14 = objc_alloc_init(CPLMemoryAssetList);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = v3;
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v27 + 1) + 8 * i);
        v21 = objc_alloc_init(CPLMemoryAssetFlag);
        [(CPLMemoryAssetFlag *)v21 setIsRepresentative:1];
        [(CPLMemoryAssetFlag *)v21 setIsCurated:1];
        [(CPLMemoryAssetFlag *)v21 setIsMovieCurated:0];
        [(CPLMemoryAssetFlag *)v21 setIsKeyAsset:0];
        v22 = objc_alloc_init(CPLMemoryAsset);
        v23 = [v20 _unscopedIdentifier];
        [(CPLMemoryAsset *)v22 setAssetIdentifier:v23];

        [(CPLMemoryAsset *)v22 setAssetFlag:v21];
        [(CPLMemoryAssetList *)v14 addAsset:v22];
      }

      v17 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v17);
  }

  [v10 setAssetList:v14];
  v24 = *MEMORY[0x1E69E9840];

  return v10;
}

- (CPLMemoryChange)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CPLMemoryChange;
  v5 = [(CPLRecordChange *)&v8 initWithCoder:v4];
  v6 = v5;
  if (v5 && !-[CPLMemoryChange userActionOptions](v5, "userActionOptions") && [v4 decodeBoolForKey:@"userCreated"])
  {
    if (initWithCoder__onceToken_91 != -1)
    {
      dispatch_once(&initWithCoder__onceToken_91, &__block_literal_global_93);
    }

    [(CPLMemoryChange *)v6 setUserActionOptions:1];
  }

  return v6;
}

void __46__CPLMemoryChange_CPLNSCoding__initWithCoder___block_invoke()
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v0 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      *v1 = 0;
      _os_log_impl(&dword_1DC05A000, v0, OS_LOG_TYPE_DEFAULT, "Storage might contain old serialized userCreated values", v1, 2u);
    }
  }
}

- (id)translateToClientChangeUsingIDMapping:(id)a3 error:(id *)a4
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v50.receiver = self;
  v50.super_class = CPLMemoryChange;
  v7 = [(CPLRecordChange *)&v50 translateToClientChangeUsingIDMapping:v6 error:a4];
  v8 = v7;
  if (v7)
  {
    v41 = v7;
    [v7 assetList];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v40 = v49 = 0u;
    v9 = [v40 assets];
    v10 = [v9 countByEnumeratingWithState:&v46 objects:v52 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v47;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v47 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v46 + 1) + 8 * i);
          v15 = [v14 assetIdentifier];
          if (v15)
          {
            v16 = v15;
            v17 = [CPLScopedIdentifier alloc];
            v18 = [(CPLRecordChange *)self scopedIdentifier];
            v19 = [(CPLScopedIdentifier *)v17 initRelativeToScopedIdentifier:v18 identifier:v16];

            if (v19)
            {
              v20 = [v6 localScopedIdentifierForCloudScopedIdentifierIncludeRemappedRecords:v19];
              v21 = v20;
              if (v20)
              {
                v22 = [v20 identifier];
                [v14 setAssetIdentifier:v22];
              }
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v46 objects:v52 count:16];
      }

      while (v11);
    }

    [v41 customUserAssetList];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v39 = v45 = 0u;
    v23 = [v39 assets];
    v24 = [v23 countByEnumeratingWithState:&v42 objects:v51 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v43;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v43 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v42 + 1) + 8 * j);
          v29 = [v28 assetIdentifier];
          if (v29)
          {
            v30 = v29;
            v31 = [CPLScopedIdentifier alloc];
            v32 = [(CPLRecordChange *)self scopedIdentifier];
            v33 = [(CPLScopedIdentifier *)v31 initRelativeToScopedIdentifier:v32 identifier:v30];

            if (v33)
            {
              v34 = [v6 localScopedIdentifierForCloudScopedIdentifierIncludeRemappedRecords:v33];
              v35 = v34;
              if (v34)
              {
                v36 = [v34 identifier];
                [v28 setAssetIdentifier:v36];
              }
            }
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v42 objects:v51 count:16];
      }

      while (v25);
    }

    v8 = v41;
  }

  v37 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)translateToCloudChangeUsingIDMapping:(id)a3 error:(id *)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v51.receiver = self;
  v51.super_class = CPLMemoryChange;
  v7 = [(CPLRecordChange *)&v51 translateToCloudChangeUsingIDMapping:v6 error:a4];
  v8 = v7;
  if (v7)
  {
    v41 = v7;
    [v7 assetList];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v40 = v50 = 0u;
    v9 = [v40 assets];
    v10 = [v9 countByEnumeratingWithState:&v47 objects:v53 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v48;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v48 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v47 + 1) + 8 * i);
          v15 = [v14 assetIdentifier];
          if (v15)
          {
            v16 = v15;
            v17 = [CPLScopedIdentifier alloc];
            v18 = [(CPLRecordChange *)self scopedIdentifier];
            v19 = [(CPLScopedIdentifier *)v17 initRelativeToScopedIdentifier:v18 identifier:v16];

            if (v19)
            {
              v46 = 0;
              v20 = [v6 cloudScopedIdentifierForLocalScopedIdentifier:v19 isFinal:&v46];
              v21 = v20;
              if (v20)
              {
                v22 = [v20 identifier];
                [v14 setAssetIdentifier:v22];
              }
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v47 objects:v53 count:16];
      }

      while (v11);
    }

    [v41 customUserAssetList];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v39 = v45 = 0u;
    v23 = [v39 assets];
    v24 = [v23 countByEnumeratingWithState:&v42 objects:v52 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v43;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v43 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v42 + 1) + 8 * j);
          v29 = [v28 assetIdentifier];
          if (v29)
          {
            v30 = v29;
            v31 = [CPLScopedIdentifier alloc];
            v32 = [(CPLRecordChange *)self scopedIdentifier];
            v33 = [(CPLScopedIdentifier *)v31 initRelativeToScopedIdentifier:v32 identifier:v30];

            if (v33)
            {
              v46 = 0;
              v34 = [v6 cloudScopedIdentifierForLocalScopedIdentifier:v33 isFinal:&v46];
              v35 = v34;
              if (v34)
              {
                v36 = [v34 identifier];
                [v28 setAssetIdentifier:v36];
              }
            }
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v42 objects:v52 count:16];
      }

      while (v25);
    }

    v8 = v41;
  }

  v37 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)scopedIdentifiersForMapping
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v38.receiver = self;
  v38.super_class = CPLMemoryChange;
  v4 = [(CPLRecordChange *)&v38 scopedIdentifiersForMapping];
  v5 = [v3 initWithArray:v4];

  [(CPLMemoryChange *)self assetList];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v29 = v37 = 0u;
  v6 = [v29 assets];
  v7 = [v6 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v35;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v34 + 1) + 8 * i) assetIdentifier];
        if (v11)
        {
          v12 = v11;
          v13 = [CPLScopedIdentifier alloc];
          v14 = [(CPLRecordChange *)self scopedIdentifier];
          v15 = [(CPLScopedIdentifier *)v13 initRelativeToScopedIdentifier:v14 identifier:v12];

          if (v15)
          {
            [v5 addObject:v15];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v8);
  }

  [(CPLMemoryChange *)self customUserAssetList];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v28 = v33 = 0u;
  v16 = [v28 assets];
  v17 = [v16 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v31;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v30 + 1) + 8 * j) assetIdentifier];
        if (v21)
        {
          v22 = v21;
          v23 = [CPLScopedIdentifier alloc];
          v24 = [(CPLRecordChange *)self scopedIdentifier];
          v25 = [(CPLScopedIdentifier *)v23 initRelativeToScopedIdentifier:v24 identifier:v22];

          if (v25)
          {
            [v5 addObject:v25];
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v18);
  }

  v26 = *MEMORY[0x1E69E9840];

  return v5;
}

@end