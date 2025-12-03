@interface CLSInvestigationPhotoKitFeeder
+ (id)feederForAssetCollection:(id)collection options:(id)options feederPrefetchOptions:(id)prefetchOptions curationContext:(id)context;
+ (id)feederForAssetCollection:(id)collection options:(id)options feederPrefetchOptions:(id)prefetchOptions curationContext:(id)context sharedLibraryEnabled:(BOOL)enabled;
- (BOOL)_shouldPrefetchCurationInformation;
- (BOOL)hasBestScoringAssets;
- (BOOL)hasFavoritedAssets;
- (BOOL)hasNonJunkAssets;
- (BOOL)hasPeople;
- (CLSInvestigationPhotoKitFeeder)initWithAssetCollection:(id)collection assetFetchOptions:(id)options feederPrefetchOptions:(id)prefetchOptions curationContext:(id)context;
- (CLSInvestigationPhotoKitFeeder)initWithAssetFetchResult:(id)result curationContext:(id)context;
- (id)allItems;
- (id)approximateLocation;
- (id)itemAtIndex:(unint64_t)index;
- (id)privateItems;
- (id)sharedItems;
- (unint64_t)numberOfAllPeople;
- (unint64_t)numberOfItems;
- (void)_prefetchShareParticipants;
- (void)enumerateItemsUsingBlock:(id)block;
- (void)enumerateItemsWithOptions:(unint64_t)options usingBlock:(id)block;
@end

@implementation CLSInvestigationPhotoKitFeeder

- (void)_prefetchShareParticipants
{
  photoLibrary = [(PHFetchResult *)self->_fetchResult photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v4 = [MEMORY[0x277CD99C8] fetchContributorsForAssets:self->_fetchResult options:librarySpecificFetchOptions];
  v5 = MEMORY[0x277CBEB98];
  fetchedObjects = [v4 fetchedObjects];
  v7 = [v5 setWithArray:fetchedObjects];
  shareParticipants = self->_shareParticipants;
  self->_shareParticipants = v7;
}

- (void)enumerateItemsWithOptions:(unint64_t)options usingBlock:(id)block
{
  blockCopy = block;
  v7 = self->_fetchResult;
  objc_sync_enter(v7);
  if (self->_assetPrefetchOptions)
  {
    allItems = [(CLSInvestigationPhotoKitFeeder *)self allItems];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __71__CLSInvestigationPhotoKitFeeder_enumerateItemsWithOptions_usingBlock___block_invoke_2;
    v10[3] = &unk_2788A7C80;
    v11 = blockCopy;
    [allItems enumerateObjectsWithOptions:options usingBlock:v10];
  }

  else
  {
    fetchResult = self->_fetchResult;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __71__CLSInvestigationPhotoKitFeeder_enumerateItemsWithOptions_usingBlock___block_invoke;
    v12[3] = &unk_2788A7C80;
    v13 = blockCopy;
    [(PHFetchResult *)fetchResult enumerateObjectsWithOptions:options usingBlock:v12];
    allItems = v13;
  }

  objc_sync_exit(v7);
}

- (void)enumerateItemsUsingBlock:(id)block
{
  v4 = _Block_copy(block);
  [(CLSInvestigationPhotoKitFeeder *)self enumerateItemsWithOptions:0 usingBlock:v4];
}

- (id)itemAtIndex:(unint64_t)index
{
  v5 = self->_fetchResult;
  objc_sync_enter(v5);
  if (self->_assetPrefetchOptions)
  {
    allItems = [(CLSInvestigationPhotoKitFeeder *)self allItems];
    v7 = [allItems objectAtIndexedSubscript:index];
  }

  else
  {
    v7 = [(PHFetchResult *)self->_fetchResult objectAtIndex:index];
  }

  objc_sync_exit(v5);

  return v7;
}

- (id)sharedItems
{
  allItems = [(CLSInvestigationPhotoKitFeeder *)self allItems];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"clsIsInSharedLibrary == YES"];
  v4 = [allItems filteredArrayUsingPredicate:v3];

  return v4;
}

- (id)privateItems
{
  allItems = [(CLSInvestigationPhotoKitFeeder *)self allItems];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"clsIsInSharedLibrary == NO"];
  v4 = [allItems filteredArrayUsingPredicate:v3];

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
      fetchedObjects = self->_allItems;
      self->_allItems = v7;
    }

    else
    {
      v9 = objc_alloc(MEMORY[0x277CBEA60]);
      fetchedObjects = [(PHFetchResult *)self->_fetchResult fetchedObjects];
      v10 = [v9 initWithArray:fetchedObjects copyItems:0];
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
  approximateLocation = [(PHAssetCollection *)self->_assetCollection approximateLocation];
  objc_sync_exit(v3);

  return approximateLocation;
}

- (unint64_t)numberOfAllPeople
{
  selfCopy = self;
  v36 = *MEMORY[0x277D85DE8];
  result = self->_numberOfAllPeople;
  if (result == -1)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = v4;
    if ((selfCopy->_assetPrefetchOptions & 8) != 0)
    {
      v23 = v4;
      v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
      nonPetFacedPersonLocalIdentifiers = [(CLSCurationContext *)selfCopy->_curationContext nonPetFacedPersonLocalIdentifiers];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v24 = selfCopy;
      obj = [(CLSInvestigationPhotoKitFeeder *)selfCopy allItems];
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
            clsFaceInformationSummary = [v15 clsFaceInformationSummary];
            faceInformationByPersonLocalIdentifier = [clsFaceInformationSummary faceInformationByPersonLocalIdentifier];

            v18 = [faceInformationByPersonLocalIdentifier countByEnumeratingWithState:&v26 objects:v34 count:16];
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
                    objc_enumerationMutation(faceInformationByPersonLocalIdentifier);
                  }

                  v22 = *(*(&v26 + 1) + 8 * j);
                  if ([nonPetFacedPersonLocalIdentifiers containsObject:v22])
                  {
                    [v9 addObject:v22];
                  }
                }

                v19 = [faceInformationByPersonLocalIdentifier countByEnumeratingWithState:&v26 objects:v34 count:16];
              }

              while (v19);
            }
          }

          v12 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v12);
      }

      selfCopy = v24;
      v24->_numberOfAllPeople = [v9 count];

      v5 = v23;
    }

    else
    {
      photoLibrary = [(PHAssetCollection *)selfCopy->_assetCollection photoLibrary];
      librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

      [librarySpecificFetchOptions setShouldPrefetchCount:1];
      [librarySpecificFetchOptions setPersonContext:1];
      [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_28449B400];
      v8 = [MEMORY[0x277CD9938] fetchPersonsForAssetCollection:selfCopy->_assetCollection options:librarySpecificFetchOptions];
      selfCopy->_numberOfAllPeople = [v8 count];
    }

    objc_autoreleasePoolPop(v5);
    return selfCopy->_numberOfAllPeople;
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
  selfCopy = self;
  v24 = *MEMORY[0x277D85DE8];
  if ([(PHAssetCollection *)self->_assetCollection assetCollectionType]== PHAssetCollectionTypeMoment)
  {
    firstObject = [(PHFetchResult *)selfCopy->_fetchResult firstObject];
    [firstObject curationScore];
    LOBYTE(selfCopy) = v4 == 0.0;
  }

  else
  {
    firstObject = [(PHFetchOptions *)selfCopy->_assetFetchOptions predicate];
    if (firstObject)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      librarySpecificFetchOptions = selfCopy->_fetchResult;
      selfCopy = [(PHFetchResult *)librarySpecificFetchOptions countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (selfCopy)
      {
        v6 = *v19;
        while (2)
        {
          for (i = 0; i != selfCopy; i = (i + 1))
          {
            if (*v19 != v6)
            {
              objc_enumerationMutation(librarySpecificFetchOptions);
            }

            [*(*(&v18 + 1) + 8 * i) curationScore];
            if (v8 == 0.0)
            {
              LOBYTE(selfCopy) = 1;
              goto LABEL_17;
            }
          }

          selfCopy = [(PHFetchResult *)librarySpecificFetchOptions countByEnumeratingWithState:&v18 objects:v23 count:16];
          if (selfCopy)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      photoLibrary = [(PHAssetCollection *)selfCopy->_assetCollection photoLibrary];
      librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

      [(PHFetchResult *)librarySpecificFetchOptions setShouldPrefetchCount:1];
      [(PHFetchResult *)librarySpecificFetchOptions setIncludeGuestAssets:1];
      [(PHFetchResult *)librarySpecificFetchOptions setFetchLimit:1];
      v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"noindex:(curationScore) == 0"];
      internalPredicate = [(PHFetchOptions *)selfCopy->_assetFetchOptions internalPredicate];
      v12 = internalPredicate;
      if (internalPredicate)
      {
        v13 = MEMORY[0x277CCA920];
        v22[0] = v10;
        v22[1] = internalPredicate;
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
        v15 = [v13 andPredicateWithSubpredicates:v14];

        v10 = v15;
      }

      [(PHFetchResult *)librarySpecificFetchOptions setInternalPredicate:v10];
      v16 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:selfCopy->_assetCollection options:librarySpecificFetchOptions];
      LOBYTE(selfCopy) = [v16 count] != 0;
    }

LABEL_17:
  }

  return selfCopy;
}

- (CLSInvestigationPhotoKitFeeder)initWithAssetFetchResult:(id)result curationContext:(id)context
{
  resultCopy = result;
  contextCopy = context;
  v18.receiver = self;
  v18.super_class = CLSInvestigationPhotoKitFeeder;
  v9 = [(CLSInvestigationFeeder *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fetchResult, result);
    v11 = [MEMORY[0x277CD97B8] transientAssetCollectionWithAssetFetchResult:resultCopy title:0];
    assetCollection = v10->_assetCollection;
    v10->_assetCollection = v11;

    fetchOptions = [resultCopy fetchOptions];
    assetFetchOptions = v10->_assetFetchOptions;
    v10->_assetFetchOptions = fetchOptions;

    objc_storeStrong(&v10->_curationContext, context);
    v15 = [MEMORY[0x277CBEB98] set];
    shareParticipants = v10->_shareParticipants;
    v10->_shareParticipants = v15;
  }

  return v10;
}

- (CLSInvestigationPhotoKitFeeder)initWithAssetCollection:(id)collection assetFetchOptions:(id)options feederPrefetchOptions:(id)prefetchOptions curationContext:(id)context
{
  v40[2] = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  optionsCopy = options;
  prefetchOptionsCopy = prefetchOptions;
  contextCopy = context;
  v38.receiver = self;
  v38.super_class = CLSInvestigationPhotoKitFeeder;
  v16 = [(CLSInvestigationFeeder *)&v38 init];
  if (!v16)
  {
    goto LABEL_25;
  }

  v17 = [optionsCopy copy];
  librarySpecificFetchOptions = v17;
  if (!v17)
  {
    photoLibrary = [collectionCopy photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  }

  objc_storeStrong(&v16->_assetFetchOptions, librarySpecificFetchOptions);
  if (!v17)
  {
  }

  [(PHFetchOptions *)v16->_assetFetchOptions setChunkSizeForFetch:10000];
  [(PHFetchOptions *)v16->_assetFetchOptions setIncludeGuestAssets:1];
  objc_storeStrong(&v16->_assetCollection, collection);
  v16->_numberOfAllPeople = -1;
  sortDescriptors = [(PHFetchOptions *)v16->_assetFetchOptions sortDescriptors];
  if (sortDescriptors)
  {
    goto LABEL_7;
  }

  internalSortDescriptors = [(PHFetchOptions *)v16->_assetFetchOptions internalSortDescriptors];

  if (!internalSortDescriptors)
  {
    sortDescriptors = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
    v40[0] = sortDescriptors;
    v36 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
    v40[1] = v36;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
    [(PHFetchOptions *)v16->_assetFetchOptions setSortDescriptors:v37];

LABEL_7:
  }

  if (prefetchOptionsCopy)
  {
    v21 = prefetchOptionsCopy;
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
    _shouldPrefetchCurationInformation = [(CLSInvestigationPhotoKitFeeder *)v16 _shouldPrefetchCurationInformation];
    personCountPrefetchMode = [(CLSFeederPrefetchOptions *)v22 personCountPrefetchMode];
    if (_shouldPrefetchCurationInformation)
    {
      v16->_assetPrefetchOptions |= personCountPrefetchMode == 1;
      v16->_assetPrefetchOptions |= 2 * ([(CLSFeederPrefetchOptions *)v22 personsPrefetchMode]== 1);
      v16->_assetPrefetchOptions |= 4 * ([(CLSFeederPrefetchOptions *)v22 scenesPrefetchMode]== 1);
      v26 = v16->_assetPrefetchOptions | (8 * ([(CLSFeederPrefetchOptions *)v22 faceInformationPrefetchMode]== 1));
    }

    else
    {
      if (personCountPrefetchMode != 1)
      {
        goto LABEL_23;
      }

      v26 = v16->_assetPrefetchOptions | 1;
    }

    v16->_assetPrefetchOptions = v26;
  }

LABEL_23:
  if (!optionsCopy)
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
        fetchPropertySets = [(PHFetchOptions *)v16->_assetFetchOptions fetchPropertySets];
        v35 = [fetchPropertySets arrayByAddingObject:*MEMORY[0x277CD9A90]];
        [(PHFetchOptions *)v16->_assetFetchOptions setFetchPropertySets:v35];
      }
    }
  }

  v27 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v16->_assetCollection options:v16->_assetFetchOptions];
  fetchResult = v16->_fetchResult;
  v16->_fetchResult = v27;

  [(CLSInvestigationFeeder *)v16 setAllowsInterview:1];
  objc_storeStrong(&v16->_curationContext, context);
  v29 = [MEMORY[0x277CBEB98] set];
  shareParticipants = v16->_shareParticipants;
  v16->_shareParticipants = v29;

LABEL_25:
  return v16;
}

+ (id)feederForAssetCollection:(id)collection options:(id)options feederPrefetchOptions:(id)prefetchOptions curationContext:(id)context sharedLibraryEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v8 = [CLSInvestigationPhotoKitFeeder feederForAssetCollection:collection options:options feederPrefetchOptions:prefetchOptions curationContext:context];
  v9 = v8;
  if (enabledCopy)
  {
    [v8 _prefetchShareParticipants];
  }

  return v9;
}

+ (id)feederForAssetCollection:(id)collection options:(id)options feederPrefetchOptions:(id)prefetchOptions curationContext:(id)context
{
  contextCopy = context;
  prefetchOptionsCopy = prefetchOptions;
  optionsCopy = options;
  collectionCopy = collection;
  v13 = [[CLSInvestigationPhotoKitFeeder alloc] initWithAssetCollection:collectionCopy assetFetchOptions:optionsCopy feederPrefetchOptions:prefetchOptionsCopy curationContext:contextCopy];

  return v13;
}

@end