@interface CPLSuggestionChange
+ (BOOL)cplShouldIgnorePropertyForCoding:(id)coding;
+ (id)_createTestSuggestionWithKeyAssets:(id)assets representativeAssets:(id)representativeAssets;
- (CPLSuggestionChange)initWithCoder:(id)coder;
- (id)checkDefaultValueBlockForPropertyWithSelector:(SEL)selector;
- (id)copyWithZone:(_NSZone *)zone;
- (id)scopedIdentifiersForMapping;
- (id)translateToClientChangeUsingIDMapping:(id)mapping error:(id *)error;
- (id)translateToCloudChangeUsingIDMapping:(id)mapping error:(id *)error;
@end

@implementation CPLSuggestionChange

- (id)checkDefaultValueBlockForPropertyWithSelector:(SEL)selector
{
  if (sel_notificationState == selector)
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

+ (id)_createTestSuggestionWithKeyAssets:(id)assets representativeAssets:(id)representativeAssets
{
  v59 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  representativeAssetsCopy = representativeAssets;
  firstObject = [assetsCopy firstObject];
  scopedIdentifier = [firstObject scopedIdentifier];
  scopeIdentifier = [scopedIdentifier scopeIdentifier];
  v10 = scopeIdentifier;
  v46 = representativeAssetsCopy;
  if (scopeIdentifier)
  {
    v11 = scopeIdentifier;
  }

  else
  {
    firstObject2 = [representativeAssetsCopy firstObject];
    scopedIdentifier2 = [firstObject2 scopedIdentifier];
    scopeIdentifier2 = [scopedIdentifier2 scopeIdentifier];
    v15 = scopeIdentifier2;
    if (scopeIdentifier2)
    {
      v16 = scopeIdentifier2;
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
  date = [MEMORY[0x1E695DF00] date];
  [v17 setCreationDate:date];

  [v17 setVersion:1];
  date2 = [MEMORY[0x1E695DF00] date];
  [v17 setActivationDate:date2];

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
  v23 = assetsCopy;
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
        _unscopedIdentifier = [v28 _unscopedIdentifier];
        [(CPLSuggestionAsset *)v30 setAssetIdentifier:_unscopedIdentifier];

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
        _unscopedIdentifier2 = [v37 _unscopedIdentifier];
        [(CPLSuggestionAsset *)v39 setAssetIdentifier:_unscopedIdentifier2];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 cplCopyPropertiesFromObject:self withCopyBlock:0];
  return v4;
}

- (CPLSuggestionChange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CPLSuggestionChange;
  v5 = [(CPLRecordChange *)&v11 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    recordList = [(CPLSuggestionChange *)v5 recordList];

    if (!recordList)
    {
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetList"];
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

+ (BOOL)cplShouldIgnorePropertyForCoding:(id)coding
{
  codingCopy = coding;
  if ([codingCopy isEqualToString:@"assetList"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CPLSuggestionChange;
    v5 = objc_msgSendSuper2(&v7, sel_cplShouldIgnorePropertyForCoding_, codingCopy);
  }

  return v5;
}

- (id)translateToClientChangeUsingIDMapping:(id)mapping error:(id *)error
{
  v71 = *MEMORY[0x1E69E9840];
  mappingCopy = mapping;
  v67.receiver = self;
  v67.super_class = CPLSuggestionChange;
  v7 = [(CPLRecordChange *)&v67 translateToClientChangeUsingIDMapping:mappingCopy error:error];
  v8 = v7;
  if (v7)
  {
    v53 = v7;
    [v7 recordList];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v54 = v66 = 0u;
    assets = [v54 assets];
    v10 = [assets countByEnumeratingWithState:&v63 objects:v70 count:16];
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
            objc_enumerationMutation(assets);
          }

          v14 = *(*(&v63 + 1) + 8 * i);
          assetIdentifier = [v14 assetIdentifier];
          if (assetIdentifier)
          {
            v16 = assetIdentifier;
            v17 = [CPLScopedIdentifier alloc];
            scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
            v19 = [(CPLScopedIdentifier *)v17 initRelativeToScopedIdentifier:scopedIdentifier identifier:v16];

            if (v19)
            {
              v20 = [mappingCopy localScopedIdentifierForCloudScopedIdentifierIncludeRemappedRecords:v19];
              v21 = v20;
              if (v20)
              {
                identifier = [v20 identifier];
                [v14 setAssetIdentifier:identifier];
              }
            }
          }
        }

        v11 = [assets countByEnumeratingWithState:&v63 objects:v70 count:16];
      }

      while (v11);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    memorys = [v54 memorys];
    v24 = [memorys countByEnumeratingWithState:&v59 objects:v69 count:16];
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
            objc_enumerationMutation(memorys);
          }

          v28 = *(*(&v59 + 1) + 8 * j);
          memoryIdentifier = [v28 memoryIdentifier];
          if (memoryIdentifier)
          {
            v30 = memoryIdentifier;
            v31 = [CPLScopedIdentifier alloc];
            scopedIdentifier2 = [(CPLRecordChange *)self scopedIdentifier];
            v33 = [(CPLScopedIdentifier *)v31 initRelativeToScopedIdentifier:scopedIdentifier2 identifier:v30];

            if (v33)
            {
              v34 = [mappingCopy localScopedIdentifierForCloudScopedIdentifierIncludeRemappedRecords:v33];
              v35 = v34;
              if (v34)
              {
                identifier2 = [v34 identifier];
                [v28 setMemoryIdentifier:identifier2];
              }
            }
          }
        }

        v25 = [memorys countByEnumeratingWithState:&v59 objects:v69 count:16];
      }

      while (v25);
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    persons = [v54 persons];
    v38 = [persons countByEnumeratingWithState:&v55 objects:v68 count:16];
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
            objc_enumerationMutation(persons);
          }

          v42 = *(*(&v55 + 1) + 8 * k);
          personIdentifier = [v42 personIdentifier];
          if (personIdentifier)
          {
            v44 = personIdentifier;
            v45 = [CPLScopedIdentifier alloc];
            scopedIdentifier3 = [(CPLRecordChange *)self scopedIdentifier];
            v47 = [(CPLScopedIdentifier *)v45 initRelativeToScopedIdentifier:scopedIdentifier3 identifier:v44];

            if (v47)
            {
              v48 = [mappingCopy localScopedIdentifierForCloudScopedIdentifierIncludeRemappedRecords:v47];
              v49 = v48;
              if (v48)
              {
                identifier3 = [v48 identifier];
                [v42 setPersonIdentifier:identifier3];
              }
            }
          }
        }

        v39 = [persons countByEnumeratingWithState:&v55 objects:v68 count:16];
      }

      while (v39);
    }

    v8 = v53;
  }

  v51 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)translateToCloudChangeUsingIDMapping:(id)mapping error:(id *)error
{
  v72 = *MEMORY[0x1E69E9840];
  mappingCopy = mapping;
  v68.receiver = self;
  v68.super_class = CPLSuggestionChange;
  v7 = [(CPLRecordChange *)&v68 translateToCloudChangeUsingIDMapping:mappingCopy error:error];
  v8 = v7;
  if (v7)
  {
    v53 = v7;
    [v7 recordList];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v54 = v67 = 0u;
    assets = [v54 assets];
    v10 = [assets countByEnumeratingWithState:&v64 objects:v71 count:16];
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
            objc_enumerationMutation(assets);
          }

          v14 = *(*(&v64 + 1) + 8 * i);
          assetIdentifier = [v14 assetIdentifier];
          if (assetIdentifier)
          {
            v16 = assetIdentifier;
            v17 = [CPLScopedIdentifier alloc];
            scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
            v19 = [(CPLScopedIdentifier *)v17 initRelativeToScopedIdentifier:scopedIdentifier identifier:v16];

            if (v19)
            {
              v63 = 0;
              v20 = [mappingCopy cloudScopedIdentifierForLocalScopedIdentifier:v19 isFinal:&v63];
              v21 = v20;
              if (v20)
              {
                identifier = [v20 identifier];
                [v14 setAssetIdentifier:identifier];
              }
            }
          }
        }

        v11 = [assets countByEnumeratingWithState:&v64 objects:v71 count:16];
      }

      while (v11);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    memorys = [v54 memorys];
    v24 = [memorys countByEnumeratingWithState:&v59 objects:v70 count:16];
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
            objc_enumerationMutation(memorys);
          }

          v28 = *(*(&v59 + 1) + 8 * j);
          memoryIdentifier = [v28 memoryIdentifier];
          if (memoryIdentifier)
          {
            v30 = memoryIdentifier;
            v31 = [CPLScopedIdentifier alloc];
            scopedIdentifier2 = [(CPLRecordChange *)self scopedIdentifier];
            v33 = [(CPLScopedIdentifier *)v31 initRelativeToScopedIdentifier:scopedIdentifier2 identifier:v30];

            if (v33)
            {
              v63 = 0;
              v34 = [mappingCopy cloudScopedIdentifierForLocalScopedIdentifier:v33 isFinal:&v63];
              v35 = v34;
              if (v34)
              {
                identifier2 = [v34 identifier];
                [v28 setMemoryIdentifier:identifier2];
              }
            }
          }
        }

        v25 = [memorys countByEnumeratingWithState:&v59 objects:v70 count:16];
      }

      while (v25);
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    persons = [v54 persons];
    v38 = [persons countByEnumeratingWithState:&v55 objects:v69 count:16];
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
            objc_enumerationMutation(persons);
          }

          v42 = *(*(&v55 + 1) + 8 * k);
          personIdentifier = [v42 personIdentifier];
          if (personIdentifier)
          {
            v44 = personIdentifier;
            v45 = [CPLScopedIdentifier alloc];
            scopedIdentifier3 = [(CPLRecordChange *)self scopedIdentifier];
            v47 = [(CPLScopedIdentifier *)v45 initRelativeToScopedIdentifier:scopedIdentifier3 identifier:v44];

            if (v47)
            {
              v63 = 0;
              v48 = [mappingCopy cloudScopedIdentifierForLocalScopedIdentifier:v47 isFinal:&v63];
              v49 = v48;
              if (v48)
              {
                identifier3 = [v48 identifier];
                [v42 setPersonIdentifier:identifier3];
              }
            }
          }
        }

        v39 = [persons countByEnumeratingWithState:&v55 objects:v69 count:16];
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
  scopedIdentifiersForMapping = [(CPLRecordChange *)&v51 scopedIdentifiersForMapping];
  v5 = [v3 initWithArray:scopedIdentifiersForMapping];

  [(CPLSuggestionChange *)self recordList];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v38 = v50 = 0u;
  assets = [v38 assets];
  v7 = [assets countByEnumeratingWithState:&v47 objects:v54 count:16];
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
          objc_enumerationMutation(assets);
        }

        assetIdentifier = [*(*(&v47 + 1) + 8 * i) assetIdentifier];
        if (assetIdentifier)
        {
          v12 = assetIdentifier;
          v13 = [CPLScopedIdentifier alloc];
          scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
          v15 = [(CPLScopedIdentifier *)v13 initRelativeToScopedIdentifier:scopedIdentifier identifier:v12];

          if (v15)
          {
            [v5 addObject:v15];
          }
        }
      }

      v8 = [assets countByEnumeratingWithState:&v47 objects:v54 count:16];
    }

    while (v8);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  memorys = [v38 memorys];
  v17 = [memorys countByEnumeratingWithState:&v43 objects:v53 count:16];
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
          objc_enumerationMutation(memorys);
        }

        memoryIdentifier = [*(*(&v43 + 1) + 8 * j) memoryIdentifier];
        if (memoryIdentifier)
        {
          v22 = memoryIdentifier;
          v23 = [CPLScopedIdentifier alloc];
          scopedIdentifier2 = [(CPLRecordChange *)self scopedIdentifier];
          v25 = [(CPLScopedIdentifier *)v23 initRelativeToScopedIdentifier:scopedIdentifier2 identifier:v22];

          if (v25)
          {
            [v5 addObject:v25];
          }
        }
      }

      v18 = [memorys countByEnumeratingWithState:&v43 objects:v53 count:16];
    }

    while (v18);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  persons = [v38 persons];
  v27 = [persons countByEnumeratingWithState:&v39 objects:v52 count:16];
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
          objc_enumerationMutation(persons);
        }

        personIdentifier = [*(*(&v39 + 1) + 8 * k) personIdentifier];
        if (personIdentifier)
        {
          v32 = personIdentifier;
          v33 = [CPLScopedIdentifier alloc];
          scopedIdentifier3 = [(CPLRecordChange *)self scopedIdentifier];
          v35 = [(CPLScopedIdentifier *)v33 initRelativeToScopedIdentifier:scopedIdentifier3 identifier:v32];

          if (v35)
          {
            [v5 addObject:v35];
          }
        }
      }

      v28 = [persons countByEnumeratingWithState:&v39 objects:v52 count:16];
    }

    while (v28);
  }

  v36 = *MEMORY[0x1E69E9840];

  return v5;
}

@end