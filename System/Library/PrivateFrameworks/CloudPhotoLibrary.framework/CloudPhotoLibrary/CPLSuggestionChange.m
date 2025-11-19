@interface CPLSuggestionChange
+ (BOOL)cplShouldIgnorePropertyForCoding:(id)a3;
+ (id)_createTestSuggestionWithKeyAssets:(id)a3 representativeAssets:(id)a4;
- (CPLSuggestionChange)initWithCoder:(id)a3;
- (id)checkDefaultValueBlockForPropertyWithSelector:(SEL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)scopedIdentifiersForMapping;
- (id)translateToClientChangeUsingIDMapping:(id)a3 error:(id *)a4;
- (id)translateToCloudChangeUsingIDMapping:(id)a3 error:(id *)a4;
@end

@implementation CPLSuggestionChange

- (id)checkDefaultValueBlockForPropertyWithSelector:(SEL)a3
{
  if (sel_notificationState == a3)
  {
    v5 = &__block_literal_global_2300;
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = CPLSuggestionChange;
    v5 = [(CPLRecordChange *)&v7 checkDefaultValueBlockForPropertyWithSelector:?];
  }

  return v5;
}

+ (id)_createTestSuggestionWithKeyAssets:(id)a3 representativeAssets:(id)a4
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 firstObject];
  v8 = [v7 scopedIdentifier];
  v9 = [v8 scopeIdentifier];
  v10 = v9;
  v46 = v6;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = [v6 firstObject];
    v13 = [v12 scopedIdentifier];
    v14 = [v13 scopeIdentifier];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = CPLPrimaryScopeIdentifierForCurrentUniverse();
    }

    v11 = v16;
  }

  v48 = v11;
  v17 = [(CPLRecordChange *)CPLSuggestionChange newRecordInScopeWithIdentifier:v11];
  [v17 setTitle:@"Test suggestion title"];
  [v17 setSubtitle:@"Test suggestion subtitle"];
  [v17 setType:2];
  [v17 setSubtype:201];
  [v17 setState:1];
  v18 = [MEMORY[0x1E695DF00] date];
  [v17 setCreationDate:v18];

  [v17 setVersion:1];
  v19 = [MEMORY[0x1E695DF00] date];
  [v17 setActivationDate:v19];

  [v17 setNotificationState:0];
  v20 = [@"action data" dataUsingEncoding:4];
  [v17 setActionData:v20];

  v21 = [@"features data" dataUsingEncoding:4];
  [v17 setFeaturesData:v21];

  v45 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:86400.0];
  [v17 setRelevantUntilDate:?];
  [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:5184000.0];
  v44 = v47 = v17;
  [v17 setExpungeDate:?];
  v22 = objc_alloc_init(CPLSuggestionRecordList);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v23 = v5;
  v24 = [v23 countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v54;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v54 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v53 + 1) + 8 * i);
        v29 = objc_alloc_init(CPLSuggestionAssetFlag);
        [(CPLSuggestionAssetFlag *)v29 setIsKeyAsset:1];
        [(CPLSuggestionAssetFlag *)v29 setIsRepresentative:0];
        v30 = objc_alloc_init(CPLSuggestionAsset);
        v31 = [v28 _unscopedIdentifier];
        [(CPLSuggestionAsset *)v30 setAssetIdentifier:v31];

        [(CPLSuggestionAsset *)v30 setAssetFlag:v29];
        [(CPLSuggestionRecordList *)v22 addAsset:v30];
      }

      v25 = [v23 countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v25);
  }

  v43 = v23;

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v32 = v46;
  v33 = [v32 countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v50;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v50 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v49 + 1) + 8 * j);
        v38 = objc_alloc_init(CPLSuggestionAssetFlag);
        [(CPLSuggestionAssetFlag *)v38 setIsKeyAsset:0, v43];
        [(CPLSuggestionAssetFlag *)v38 setIsRepresentative:1];
        v39 = objc_alloc_init(CPLSuggestionAsset);
        v40 = [v37 _unscopedIdentifier];
        [(CPLSuggestionAsset *)v39 setAssetIdentifier:v40];

        [(CPLSuggestionAsset *)v39 setAssetFlag:v38];
        [(CPLSuggestionRecordList *)v22 addAsset:v39];
      }

      v34 = [v32 countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v34);
  }

  [v47 setRecordList:v22];
  v41 = *MEMORY[0x1E69E9840];

  return v47;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 cplCopyPropertiesFromObject:self withCopyBlock:0];
  return v4;
}

- (CPLSuggestionChange)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CPLSuggestionChange;
  v5 = [(CPLRecordChange *)&v11 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [(CPLSuggestionChange *)v5 recordList];

    if (!v7)
    {
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetList"];
      if ([v8 length])
      {
        v9 = [[CPLSuggestionRecordList alloc] initWithData:v8];
        if (initWithCoder__onceToken_84 != -1)
        {
          dispatch_once(&initWithCoder__onceToken_84, &__block_literal_global_86);
        }

        [(CPLSuggestionChange *)v6 setRecordList:v9];
      }
    }
  }

  return v6;
}

void __50__CPLSuggestionChange_CPLNSCoding__initWithCoder___block_invoke()
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v0 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      *v1 = 0;
      _os_log_impl(&dword_1DC05A000, v0, OS_LOG_TYPE_DEFAULT, "Storage might contain old serialized assetList", v1, 2u);
    }
  }
}

+ (BOOL)cplShouldIgnorePropertyForCoding:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"assetList"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___CPLSuggestionChange;
    v5 = objc_msgSendSuper2(&v7, sel_cplShouldIgnorePropertyForCoding_, v4);
  }

  return v5;
}

- (id)translateToClientChangeUsingIDMapping:(id)a3 error:(id *)a4
{
  v71 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v67.receiver = self;
  v67.super_class = CPLSuggestionChange;
  v7 = [(CPLRecordChange *)&v67 translateToClientChangeUsingIDMapping:v6 error:a4];
  v8 = v7;
  if (v7)
  {
    v53 = v7;
    [v7 recordList];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v54 = v66 = 0u;
    v9 = [v54 assets];
    v10 = [v9 countByEnumeratingWithState:&v63 objects:v70 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v64;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v64 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v63 + 1) + 8 * i);
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

        v11 = [v9 countByEnumeratingWithState:&v63 objects:v70 count:16];
      }

      while (v11);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v23 = [v54 memorys];
    v24 = [v23 countByEnumeratingWithState:&v59 objects:v69 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v60;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v60 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v59 + 1) + 8 * j);
          v29 = [v28 memoryIdentifier];
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
                [v28 setMemoryIdentifier:v36];
              }
            }
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v59 objects:v69 count:16];
      }

      while (v25);
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v37 = [v54 persons];
    v38 = [v37 countByEnumeratingWithState:&v55 objects:v68 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v56;
      do
      {
        for (k = 0; k != v39; ++k)
        {
          if (*v56 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v42 = *(*(&v55 + 1) + 8 * k);
          v43 = [v42 personIdentifier];
          if (v43)
          {
            v44 = v43;
            v45 = [CPLScopedIdentifier alloc];
            v46 = [(CPLRecordChange *)self scopedIdentifier];
            v47 = [(CPLScopedIdentifier *)v45 initRelativeToScopedIdentifier:v46 identifier:v44];

            if (v47)
            {
              v48 = [v6 localScopedIdentifierForCloudScopedIdentifierIncludeRemappedRecords:v47];
              v49 = v48;
              if (v48)
              {
                v50 = [v48 identifier];
                [v42 setPersonIdentifier:v50];
              }
            }
          }
        }

        v39 = [v37 countByEnumeratingWithState:&v55 objects:v68 count:16];
      }

      while (v39);
    }

    v8 = v53;
  }

  v51 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)translateToCloudChangeUsingIDMapping:(id)a3 error:(id *)a4
{
  v72 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v68.receiver = self;
  v68.super_class = CPLSuggestionChange;
  v7 = [(CPLRecordChange *)&v68 translateToCloudChangeUsingIDMapping:v6 error:a4];
  v8 = v7;
  if (v7)
  {
    v53 = v7;
    [v7 recordList];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v54 = v67 = 0u;
    v9 = [v54 assets];
    v10 = [v9 countByEnumeratingWithState:&v64 objects:v71 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v65;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v65 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v64 + 1) + 8 * i);
          v15 = [v14 assetIdentifier];
          if (v15)
          {
            v16 = v15;
            v17 = [CPLScopedIdentifier alloc];
            v18 = [(CPLRecordChange *)self scopedIdentifier];
            v19 = [(CPLScopedIdentifier *)v17 initRelativeToScopedIdentifier:v18 identifier:v16];

            if (v19)
            {
              v63 = 0;
              v20 = [v6 cloudScopedIdentifierForLocalScopedIdentifier:v19 isFinal:&v63];
              v21 = v20;
              if (v20)
              {
                v22 = [v20 identifier];
                [v14 setAssetIdentifier:v22];
              }
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v64 objects:v71 count:16];
      }

      while (v11);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v23 = [v54 memorys];
    v24 = [v23 countByEnumeratingWithState:&v59 objects:v70 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v60;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v60 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v59 + 1) + 8 * j);
          v29 = [v28 memoryIdentifier];
          if (v29)
          {
            v30 = v29;
            v31 = [CPLScopedIdentifier alloc];
            v32 = [(CPLRecordChange *)self scopedIdentifier];
            v33 = [(CPLScopedIdentifier *)v31 initRelativeToScopedIdentifier:v32 identifier:v30];

            if (v33)
            {
              v63 = 0;
              v34 = [v6 cloudScopedIdentifierForLocalScopedIdentifier:v33 isFinal:&v63];
              v35 = v34;
              if (v34)
              {
                v36 = [v34 identifier];
                [v28 setMemoryIdentifier:v36];
              }
            }
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v59 objects:v70 count:16];
      }

      while (v25);
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v37 = [v54 persons];
    v38 = [v37 countByEnumeratingWithState:&v55 objects:v69 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v56;
      do
      {
        for (k = 0; k != v39; ++k)
        {
          if (*v56 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v42 = *(*(&v55 + 1) + 8 * k);
          v43 = [v42 personIdentifier];
          if (v43)
          {
            v44 = v43;
            v45 = [CPLScopedIdentifier alloc];
            v46 = [(CPLRecordChange *)self scopedIdentifier];
            v47 = [(CPLScopedIdentifier *)v45 initRelativeToScopedIdentifier:v46 identifier:v44];

            if (v47)
            {
              v63 = 0;
              v48 = [v6 cloudScopedIdentifierForLocalScopedIdentifier:v47 isFinal:&v63];
              v49 = v48;
              if (v48)
              {
                v50 = [v48 identifier];
                [v42 setPersonIdentifier:v50];
              }
            }
          }
        }

        v39 = [v37 countByEnumeratingWithState:&v55 objects:v69 count:16];
      }

      while (v39);
    }

    v8 = v53;
  }

  v51 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)scopedIdentifiersForMapping
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v51.receiver = self;
  v51.super_class = CPLSuggestionChange;
  v4 = [(CPLRecordChange *)&v51 scopedIdentifiersForMapping];
  v5 = [v3 initWithArray:v4];

  [(CPLSuggestionChange *)self recordList];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v38 = v50 = 0u;
  v6 = [v38 assets];
  v7 = [v6 countByEnumeratingWithState:&v47 objects:v54 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v48;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v48 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v47 + 1) + 8 * i) assetIdentifier];
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

      v8 = [v6 countByEnumeratingWithState:&v47 objects:v54 count:16];
    }

    while (v8);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v16 = [v38 memorys];
  v17 = [v16 countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v44;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v44 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v43 + 1) + 8 * j) memoryIdentifier];
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

      v18 = [v16 countByEnumeratingWithState:&v43 objects:v53 count:16];
    }

    while (v18);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v26 = [v38 persons];
  v27 = [v26 countByEnumeratingWithState:&v39 objects:v52 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v40;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v40 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = [*(*(&v39 + 1) + 8 * k) personIdentifier];
        if (v31)
        {
          v32 = v31;
          v33 = [CPLScopedIdentifier alloc];
          v34 = [(CPLRecordChange *)self scopedIdentifier];
          v35 = [(CPLScopedIdentifier *)v33 initRelativeToScopedIdentifier:v34 identifier:v32];

          if (v35)
          {
            [v5 addObject:v35];
          }
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v39 objects:v52 count:16];
    }

    while (v28);
  }

  v36 = *MEMORY[0x1E69E9840];

  return v5;
}

@end