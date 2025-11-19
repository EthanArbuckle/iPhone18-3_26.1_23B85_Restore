@interface CLSInvestigationPhotoKitFeeder
+ (id)feederForAssetCollection:(id)a3 options:(id)a4 feederPrefetchOptions:(id)a5 curationContext:(id)a6;
+ (id)feederForAssetCollection:(id)a3 options:(id)a4 feederPrefetchOptions:(id)a5 curationContext:(id)a6 sharedLibraryEnabled:(BOOL)a7;
- (BOOL)_shouldPrefetchCurationInformation;
- (BOOL)hasBestScoringAssets;
- (BOOL)hasFavoritedAssets;
- (BOOL)hasNonJunkAssets;
- (BOOL)hasPeople;
- (CLSInvestigationPhotoKitFeeder)initWithAssetCollection:(id)a3 assetFetchOptions:(id)a4 feederPrefetchOptions:(id)a5 curationContext:(id)a6;
- (CLSInvestigationPhotoKitFeeder)initWithAssetFetchResult:(id)a3 curationContext:(id)a4;
- (id)allItems;
- (id)approximateLocation;
- (id)itemAtIndex:(unint64_t)a3;
- (id)privateItems;
- (id)sharedItems;
- (unint64_t)numberOfAllPeople;
- (unint64_t)numberOfItems;
- (void)_prefetchShareParticipants;
- (void)enumerateItemsUsingBlock:(id)a3;
- (void)enumerateItemsWithOptions:(unint64_t)a3 usingBlock:(id)a4;
@end

@implementation CLSInvestigationPhotoKitFeeder

- (void)_prefetchShareParticipants
{
  v3 = [(PHFetchResult *)self->_fetchResult photoLibrary];
  v9 = [v3 librarySpecificFetchOptions];

  v4 = [MEMORY[0x277CD99C8] fetchContributorsForAssets:self->_fetchResult options:v9];
  v5 = MEMORY[0x277CBEB98];
  v6 = [v4 fetchedObjects];
  v7 = [v5 setWithArray:v6];
  shareParticipants = self->_shareParticipants;
  self->_shareParticipants = v7;
}

- (void)enumerateItemsWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = self->_fetchResult;
  objc_sync_enter(v7);
  if (self->_assetPrefetchOptions)
  {
    v8 = [(CLSInvestigationPhotoKitFeeder *)self allItems];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __71__CLSInvestigationPhotoKitFeeder_enumerateItemsWithOptions_usingBlock___block_invoke_2;
    v10[3] = &unk_2788A7C80;
    v11 = v6;
    [v8 enumerateObjectsWithOptions:a3 usingBlock:v10];
  }

  else
  {
    fetchResult = self->_fetchResult;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __71__CLSInvestigationPhotoKitFeeder_enumerateItemsWithOptions_usingBlock___block_invoke;
    v12[3] = &unk_2788A7C80;
    v13 = v6;
    [(PHFetchResult *)fetchResult enumerateObjectsWithOptions:a3 usingBlock:v12];
    v8 = v13;
  }

  objc_sync_exit(v7);
}

- (void)enumerateItemsUsingBlock:(id)a3
{
  v4 = _Block_copy(a3);
  [(CLSInvestigationPhotoKitFeeder *)self enumerateItemsWithOptions:0 usingBlock:v4];
}

- (id)itemAtIndex:(unint64_t)a3
{
  v5 = self->_fetchResult;
  objc_sync_enter(v5);
  if (self->_assetPrefetchOptions)
  {
    v6 = [(CLSInvestigationPhotoKitFeeder *)self allItems];
    v7 = [v6 objectAtIndexedSubscript:a3];
  }

  else
  {
    v7 = [(PHFetchResult *)self->_fetchResult objectAtIndex:a3];
  }

  objc_sync_exit(v5);

  return v7;
}

- (id)sharedItems
{
  v2 = [(CLSInvestigationPhotoKitFeeder *)self allItems];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"clsIsInSharedLibrary == YES"];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  return v4;
}

- (id)privateItems
{
  v2 = [(CLSInvestigationPhotoKitFeeder *)self allItems];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"clsIsInSharedLibrary == NO"];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  return v4;
}

- (id)allItems
{
  v3 = self->_allItems;
  objc_sync_enter(v3);
  allItems = self->_allItems;
  if (!allItems)
  {
    v5 = self->_fetchResult;
    objc_sync_enter(v5);
    assetPrefetchOptions = self->_assetPrefetchOptions;
    if (assetPrefetchOptions)
    {
      v7 = [MEMORY[0x277CD97A8] clsAllAssetsFromFetchResult:self->_fetchResult prefetchOptions:assetPrefetchOptions curationContext:self->_curationContext];
      v8 = self->_allItems;
      self->_allItems = v7;
    }

    else
    {
      v9 = objc_alloc(MEMORY[0x277CBEA60]);
      v8 = [(PHFetchResult *)self->_fetchResult fetchedObjects];
      v10 = [v9 initWithArray:v8 copyItems:0];
      v11 = self->_allItems;
      self->_allItems = v10;
    }

    objc_sync_exit(v5);
    allItems = self->_allItems;
  }

  v12 = allItems;
  objc_sync_exit(v3);

  return v12;
}

- (id)approximateLocation
{
  v3 = self->_fetchResult;
  objc_sync_enter(v3);
  v4 = [(PHAssetCollection *)self->_assetCollection approximateLocation];
  objc_sync_exit(v3);

  return v4;
}

- (unint64_t)numberOfAllPeople
{
  v2 = self;
  v36 = *MEMORY[0x277D85DE8];
  result = self->_numberOfAllPeople;
  if (result == -1)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = v4;
    if ((v2->_assetPrefetchOptions & 8) != 0)
    {
      v23 = v4;
      v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v10 = [(CLSCurationContext *)v2->_curationContext nonPetFacedPersonLocalIdentifiers];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v24 = v2;
      obj = [(CLSInvestigationPhotoKitFeeder *)v2 allItems];
      v11 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
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
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v30 + 1) + 8 * i);
            v26 = 0u;
            v27 = 0u;
            v28 = 0u;
            v29 = 0u;
            v16 = [v15 clsFaceInformationSummary];
            v17 = [v16 faceInformationByPersonLocalIdentifier];

            v18 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v27;
              do
              {
                for (j = 0; j != v19; ++j)
                {
                  if (*v27 != v20)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v22 = *(*(&v26 + 1) + 8 * j);
                  if ([v10 containsObject:v22])
                  {
                    [v9 addObject:v22];
                  }
                }

                v19 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
              }

              while (v19);
            }
          }

          v12 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v12);
      }

      v2 = v24;
      v24->_numberOfAllPeople = [v9 count];

      v5 = v23;
    }

    else
    {
      v6 = [(PHAssetCollection *)v2->_assetCollection photoLibrary];
      v7 = [v6 librarySpecificFetchOptions];

      [v7 setShouldPrefetchCount:1];
      [v7 setPersonContext:1];
      [v7 setIncludedDetectionTypes:&unk_28449B400];
      v8 = [MEMORY[0x277CD9938] fetchPersonsForAssetCollection:v2->_assetCollection options:v7];
      v2->_numberOfAllPeople = [v8 count];
    }

    objc_autoreleasePoolPop(v5);
    return v2->_numberOfAllPeople;
  }

  return result;
}

- (BOOL)hasNonJunkAssets
{
  v14 = *MEMORY[0x277D85DE8];
  [(CLSInvestigationPhotoKitFeeder *)self allItems];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    v5 = *MEMORY[0x277D3C778];
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v9 + 1) + 8 * i) clsContentScore];
        if (v7 > v5)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)hasBestScoringAssets
{
  v15 = *MEMORY[0x277D85DE8];
  [(CLSInvestigationPhotoKitFeeder *)self allItems];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    v5 = *MEMORY[0x277D3C760];
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        [v7 clsContentScore];
        if (v8 >= v5 && ![v7 clsIsUtility])
        {
          LOBYTE(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

- (BOOL)hasFavoritedAssets
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = self->_fetchResult;
  objc_sync_enter(v3);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_fetchResult;
  v5 = [(PHFetchResult *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v9 + 1) + 8 * i) isFavorite])
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [(PHFetchResult *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(v3);
  return v5;
}

- (BOOL)hasPeople
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = self->_fetchResult;
  objc_sync_enter(v3);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_fetchResult;
  v5 = [(PHFetchResult *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v9 + 1) + 8 * i) clsPeopleCount])
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [(PHFetchResult *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(v3);
  return v5;
}

- (unint64_t)numberOfItems
{
  v3 = self->_fetchResult;
  objc_sync_enter(v3);
  v4 = [(PHFetchResult *)self->_fetchResult count];
  objc_sync_exit(v3);

  return v4;
}

- (BOOL)_shouldPrefetchCurationInformation
{
  v2 = self;
  v24 = *MEMORY[0x277D85DE8];
  if ([(PHAssetCollection *)self->_assetCollection assetCollectionType]== PHAssetCollectionTypeMoment)
  {
    v3 = [(PHFetchResult *)v2->_fetchResult firstObject];
    [v3 curationScore];
    LOBYTE(v2) = v4 == 0.0;
  }

  else
  {
    v3 = [(PHFetchOptions *)v2->_assetFetchOptions predicate];
    if (v3)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v5 = v2->_fetchResult;
      v2 = [(PHFetchResult *)v5 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v2)
      {
        v6 = *v19;
        while (2)
        {
          for (i = 0; i != v2; i = (i + 1))
          {
            if (*v19 != v6)
            {
              objc_enumerationMutation(v5);
            }

            [*(*(&v18 + 1) + 8 * i) curationScore];
            if (v8 == 0.0)
            {
              LOBYTE(v2) = 1;
              goto LABEL_17;
            }
          }

          v2 = [(PHFetchResult *)v5 countByEnumeratingWithState:&v18 objects:v23 count:16];
          if (v2)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      v9 = [(PHAssetCollection *)v2->_assetCollection photoLibrary];
      v5 = [v9 librarySpecificFetchOptions];

      [(PHFetchResult *)v5 setShouldPrefetchCount:1];
      [(PHFetchResult *)v5 setIncludeGuestAssets:1];
      [(PHFetchResult *)v5 setFetchLimit:1];
      v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"noindex:(curationScore) == 0"];
      v11 = [(PHFetchOptions *)v2->_assetFetchOptions internalPredicate];
      v12 = v11;
      if (v11)
      {
        v13 = MEMORY[0x277CCA920];
        v22[0] = v10;
        v22[1] = v11;
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
        v15 = [v13 andPredicateWithSubpredicates:v14];

        v10 = v15;
      }

      [(PHFetchResult *)v5 setInternalPredicate:v10];
      v16 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v2->_assetCollection options:v5];
      LOBYTE(v2) = [v16 count] != 0;
    }

LABEL_17:
  }

  return v2;
}

- (CLSInvestigationPhotoKitFeeder)initWithAssetFetchResult:(id)a3 curationContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = CLSInvestigationPhotoKitFeeder;
  v9 = [(CLSInvestigationFeeder *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fetchResult, a3);
    v11 = [MEMORY[0x277CD97B8] transientAssetCollectionWithAssetFetchResult:v7 title:0];
    assetCollection = v10->_assetCollection;
    v10->_assetCollection = v11;

    v13 = [v7 fetchOptions];
    assetFetchOptions = v10->_assetFetchOptions;
    v10->_assetFetchOptions = v13;

    objc_storeStrong(&v10->_curationContext, a4);
    v15 = [MEMORY[0x277CBEB98] set];
    shareParticipants = v10->_shareParticipants;
    v10->_shareParticipants = v15;
  }

  return v10;
}

- (CLSInvestigationPhotoKitFeeder)initWithAssetCollection:(id)a3 assetFetchOptions:(id)a4 feederPrefetchOptions:(id)a5 curationContext:(id)a6
{
  v40[2] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v38.receiver = self;
  v38.super_class = CLSInvestigationPhotoKitFeeder;
  v16 = [(CLSInvestigationFeeder *)&v38 init];
  if (!v16)
  {
    goto LABEL_25;
  }

  v17 = [v13 copy];
  v18 = v17;
  if (!v17)
  {
    v6 = [v12 photoLibrary];
    v18 = [v6 librarySpecificFetchOptions];
  }

  objc_storeStrong(&v16->_assetFetchOptions, v18);
  if (!v17)
  {
  }

  [(PHFetchOptions *)v16->_assetFetchOptions setChunkSizeForFetch:10000];
  [(PHFetchOptions *)v16->_assetFetchOptions setIncludeGuestAssets:1];
  objc_storeStrong(&v16->_assetCollection, a3);
  v16->_numberOfAllPeople = -1;
  v19 = [(PHFetchOptions *)v16->_assetFetchOptions sortDescriptors];
  if (v19)
  {
    goto LABEL_7;
  }

  v20 = [(PHFetchOptions *)v16->_assetFetchOptions internalSortDescriptors];

  if (!v20)
  {
    v19 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
    v40[0] = v19;
    v36 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
    v40[1] = v36;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
    [(PHFetchOptions *)v16->_assetFetchOptions setSortDescriptors:v37];

LABEL_7:
  }

  if (v14)
  {
    v21 = v14;
  }

  else
  {
    v21 = objc_alloc_init(CLSFeederPrefetchOptions);
  }

  v22 = v21;
  v16->_assetPrefetchOptions = 0;
  v16->_assetPrefetchOptions |= [(CLSFeederPrefetchOptions *)v21 personCountPrefetchMode]== 2;
  v16->_assetPrefetchOptions |= 2 * ([(CLSFeederPrefetchOptions *)v22 personsPrefetchMode]== 2);
  v16->_assetPrefetchOptions |= 4 * ([(CLSFeederPrefetchOptions *)v22 scenesPrefetchMode]== 2);
  v16->_assetPrefetchOptions |= 8 * ([(CLSFeederPrefetchOptions *)v22 faceInformationPrefetchMode]== 2);
  if ([(CLSFeederPrefetchOptions *)v22 locationPrefetchMode]== 2)
  {
    v23 = 16;
  }

  else
  {
    v23 = 16 * ([(CLSFeederPrefetchOptions *)v22 locationPrefetchMode]== 1);
  }

  v16->_assetPrefetchOptions |= v23;
  if ([(CLSFeederPrefetchOptions *)v22 personsPrefetchMode]== 1 || [(CLSFeederPrefetchOptions *)v22 scenesPrefetchMode]== 1 || [(CLSFeederPrefetchOptions *)v22 faceInformationPrefetchMode]== 1)
  {
    v24 = [(CLSInvestigationPhotoKitFeeder *)v16 _shouldPrefetchCurationInformation];
    v25 = [(CLSFeederPrefetchOptions *)v22 personCountPrefetchMode];
    if (v24)
    {
      v16->_assetPrefetchOptions |= v25 == 1;
      v16->_assetPrefetchOptions |= 2 * ([(CLSFeederPrefetchOptions *)v22 personsPrefetchMode]== 1);
      v16->_assetPrefetchOptions |= 4 * ([(CLSFeederPrefetchOptions *)v22 scenesPrefetchMode]== 1);
      v26 = v16->_assetPrefetchOptions | (8 * ([(CLSFeederPrefetchOptions *)v22 faceInformationPrefetchMode]== 1));
    }

    else
    {
      if (v25 != 1)
      {
        goto LABEL_23;
      }

      v26 = v16->_assetPrefetchOptions | 1;
    }

    v16->_assetPrefetchOptions = v26;
  }

LABEL_23:
  if (!v13)
  {
    if (v16->_assetPrefetchOptions)
    {
      v32 = *MEMORY[0x277CD9AD0];
      v39[0] = *MEMORY[0x277CD9B10];
      v39[1] = v32;
      v39[2] = *MEMORY[0x277CD9A98];
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:3];
      [(PHFetchOptions *)v16->_assetFetchOptions setFetchPropertySets:v33];

      if ((v16->_assetPrefetchOptions & 8) != 0)
      {
        v34 = [(PHFetchOptions *)v16->_assetFetchOptions fetchPropertySets];
        v35 = [v34 arrayByAddingObject:*MEMORY[0x277CD9A90]];
        [(PHFetchOptions *)v16->_assetFetchOptions setFetchPropertySets:v35];
      }
    }
  }

  v27 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v16->_assetCollection options:v16->_assetFetchOptions];
  fetchResult = v16->_fetchResult;
  v16->_fetchResult = v27;

  [(CLSInvestigationFeeder *)v16 setAllowsInterview:1];
  objc_storeStrong(&v16->_curationContext, a6);
  v29 = [MEMORY[0x277CBEB98] set];
  shareParticipants = v16->_shareParticipants;
  v16->_shareParticipants = v29;

LABEL_25:
  return v16;
}

+ (id)feederForAssetCollection:(id)a3 options:(id)a4 feederPrefetchOptions:(id)a5 curationContext:(id)a6 sharedLibraryEnabled:(BOOL)a7
{
  v7 = a7;
  v8 = [CLSInvestigationPhotoKitFeeder feederForAssetCollection:a3 options:a4 feederPrefetchOptions:a5 curationContext:a6];
  v9 = v8;
  if (v7)
  {
    [v8 _prefetchShareParticipants];
  }

  return v9;
}

+ (id)feederForAssetCollection:(id)a3 options:(id)a4 feederPrefetchOptions:(id)a5 curationContext:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[CLSInvestigationPhotoKitFeeder alloc] initWithAssetCollection:v12 assetFetchOptions:v11 feederPrefetchOptions:v10 curationContext:v9];

  return v13;
}

@end