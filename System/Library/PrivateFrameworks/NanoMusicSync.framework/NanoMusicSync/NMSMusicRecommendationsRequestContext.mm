@interface NMSMusicRecommendationsRequestContext
- (BOOL)_hasDownloadableSongsForModelObject:(id)object;
- (BOOL)_recentMusicContainsModelObject:(id)object;
- (NSOrderedSet)recommendations;
- (NSSet)modelObjects;
- (unint64_t)numberOfRecentMusicModelObjects;
- (void)_processRecentMusicItem:(id)item section:(id)section identifier:(id)identifier;
- (void)_processResponsesIfNeeded;
- (void)setEditorialBrowseResponse:(id)response;
- (void)setForYouResponse:(id)response;
- (void)setHeavyRotationResponse:(id)response;
- (void)setLibraryPinsResponse:(id)response;
- (void)setLibraryRecentMusicResponse:(id)response;
- (void)setStarterPackResponse:(id)response;
@end

@implementation NMSMusicRecommendationsRequestContext

- (void)setLibraryPinsResponse:(id)response
{
  responseCopy = response;
  p_libraryPinsResponse = &self->_libraryPinsResponse;
  if (self->_libraryPinsResponse != responseCopy)
  {
    v8 = responseCopy;
    objc_storeStrong(p_libraryPinsResponse, response);
    libraryPinsModelObjects = self->_libraryPinsModelObjects;
    self->_libraryPinsModelObjects = 0;

    responseCopy = v8;
  }

  MEMORY[0x2821F96F8](p_libraryPinsResponse, responseCopy);
}

- (void)setForYouResponse:(id)response
{
  responseCopy = response;
  p_forYouResponse = &self->_forYouResponse;
  if (self->_forYouResponse != responseCopy)
  {
    v8 = responseCopy;
    objc_storeStrong(p_forYouResponse, response);
    recentMusicModelObjects = self->_recentMusicModelObjects;
    self->_recentMusicModelObjects = 0;

    responseCopy = v8;
  }

  MEMORY[0x2821F96F8](p_forYouResponse, responseCopy);
}

- (void)setHeavyRotationResponse:(id)response
{
  responseCopy = response;
  p_heavyRotationResponse = &self->_heavyRotationResponse;
  if (self->_heavyRotationResponse != responseCopy)
  {
    v8 = responseCopy;
    objc_storeStrong(p_heavyRotationResponse, response);
    recentMusicModelObjects = self->_recentMusicModelObjects;
    self->_recentMusicModelObjects = 0;

    responseCopy = v8;
  }

  MEMORY[0x2821F96F8](p_heavyRotationResponse, responseCopy);
}

- (void)setLibraryRecentMusicResponse:(id)response
{
  responseCopy = response;
  p_libraryRecentMusicResponse = &self->_libraryRecentMusicResponse;
  if (self->_libraryRecentMusicResponse != responseCopy)
  {
    v8 = responseCopy;
    objc_storeStrong(p_libraryRecentMusicResponse, response);
    recentMusicModelObjects = self->_recentMusicModelObjects;
    self->_recentMusicModelObjects = 0;

    responseCopy = v8;
  }

  MEMORY[0x2821F96F8](p_libraryRecentMusicResponse, responseCopy);
}

- (void)setEditorialBrowseResponse:(id)response
{
  responseCopy = response;
  p_editorialBrowseResponse = &self->_editorialBrowseResponse;
  if (self->_editorialBrowseResponse != responseCopy)
  {
    v8 = responseCopy;
    objc_storeStrong(p_editorialBrowseResponse, response);
    recentMusicModelObjects = self->_recentMusicModelObjects;
    self->_recentMusicModelObjects = 0;

    responseCopy = v8;
  }

  MEMORY[0x2821F96F8](p_editorialBrowseResponse, responseCopy);
}

- (void)setStarterPackResponse:(id)response
{
  responseCopy = response;
  p_starterPackResponse = &self->_starterPackResponse;
  if (self->_starterPackResponse != responseCopy)
  {
    v8 = responseCopy;
    objc_storeStrong(p_starterPackResponse, response);
    recentMusicModelObjects = self->_recentMusicModelObjects;
    self->_recentMusicModelObjects = 0;

    responseCopy = v8;
  }

  MEMORY[0x2821F96F8](p_starterPackResponse, responseCopy);
}

- (unint64_t)numberOfRecentMusicModelObjects
{
  [(NMSMusicRecommendationsRequestContext *)self _processResponsesIfNeeded];
  recentMusicModelObjects = self->_recentMusicModelObjects;

  return [(NSMutableOrderedSet *)recentMusicModelObjects count];
}

- (NSSet)modelObjects
{
  [(NMSMusicRecommendationsRequestContext *)self _processResponsesIfNeeded];
  v3 = [MEMORY[0x277CBEB58] set];
  libraryPinsModelObjects = self->_libraryPinsModelObjects;
  if (libraryPinsModelObjects)
  {
    v5 = [(NSMutableOrderedSet *)libraryPinsModelObjects set];
    [v3 unionSet:v5];
  }

  v6 = [(NSMutableOrderedSet *)self->_recentMusicModelObjects set];
  [v3 unionSet:v6];

  v7 = [v3 copy];

  return v7;
}

- (NSOrderedSet)recommendations
{
  [(NMSMusicRecommendationsRequestContext *)self _processResponsesIfNeeded];
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  if ([(NSMutableOrderedSet *)self->_recentMusicModelObjects count])
  {
    v4 = [NMSMusicRecommendation alloc];
    v5 = [(NMSMusicRecommendation *)v4 initWithIdentifier:NMSRecommendationRecentMusicIdentifier title:0 items:self->_recentMusicModelObjects];
    [orderedSet addObject:v5];
  }

  if (self->_libraryPinsModelObjects)
  {
    v6 = [NMSMusicRecommendation alloc];
    v7 = [(NMSMusicRecommendation *)v6 initWithIdentifier:NMSRecommendationLibraryPinsIdentifier title:0 items:self->_libraryPinsModelObjects];
    [orderedSet addObject:v7];
  }

  v8 = [orderedSet copy];

  return v8;
}

- (void)_processResponsesIfNeeded
{
  if (!self->_libraryPinsModelObjects && self->_libraryPinsResponse)
  {
    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    libraryPinsModelObjects = self->_libraryPinsModelObjects;
    self->_libraryPinsModelObjects = orderedSet;

    results = [(MPModelResponse *)self->_libraryPinsResponse results];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __66__NMSMusicRecommendationsRequestContext__processResponsesIfNeeded__block_invoke;
    v18[3] = &unk_27993E158;
    v18[4] = self;
    [results enumerateItemsUsingBlock:v18];
  }

  if (!self->_recentMusicModelObjects)
  {
    orderedSet2 = [MEMORY[0x277CBEB40] orderedSet];
    recentMusicModelObjects = self->_recentMusicModelObjects;
    self->_recentMusicModelObjects = orderedSet2;

    results2 = [(MPModelForYouRecommendationsResponse *)self->_forYouResponse results];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __66__NMSMusicRecommendationsRequestContext__processResponsesIfNeeded__block_invoke_218;
    v17[3] = &unk_27993E180;
    v17[4] = self;
    [results2 enumerateSectionsUsingBlock:v17];

    results3 = [(MPModelResponse *)self->_heavyRotationResponse results];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __66__NMSMusicRecommendationsRequestContext__processResponsesIfNeeded__block_invoke_223;
    v16[3] = &unk_27993E1D0;
    v16[4] = self;
    [results3 enumerateSectionsUsingBlock:v16];

    results4 = [(MPModelResponse *)self->_libraryRecentMusicResponse results];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __66__NMSMusicRecommendationsRequestContext__processResponsesIfNeeded__block_invoke_2;
    v15[3] = &unk_27993E1F8;
    v15[4] = self;
    [results4 enumerateItemsUsingBlock:v15];

    results5 = [(MPModelStoreBrowseResponse *)self->_editorialBrowseResponse results];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __66__NMSMusicRecommendationsRequestContext__processResponsesIfNeeded__block_invoke_234;
    v14[3] = &unk_27993E1D0;
    v14[4] = self;
    [results5 enumerateSectionsUsingBlock:v14];

    results6 = [(MPModelResponse *)self->_starterPackResponse results];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __66__NMSMusicRecommendationsRequestContext__processResponsesIfNeeded__block_invoke_240;
    v13[3] = &unk_27993E1D0;
    v13[4] = self;
    [results6 enumerateSectionsUsingBlock:v13];
  }
}

void __66__NMSMusicRecommendationsRequestContext__processResponsesIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = NMLogForCategory(5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&dword_25B27B000, v4, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Processing) (Library Pins) Picked item: %{public}@", &v8, 0xCu);
  }

  v5 = [v3 anyObject];
  if (v5)
  {
    [*(*(a1 + 32) + 8) addObject:v5];
  }

  else
  {
    v6 = NMLogForCategory(5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __66__NMSMusicRecommendationsRequestContext__processResponsesIfNeeded__block_invoke_cold_1();
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __66__NMSMusicRecommendationsRequestContext__processResponsesIfNeeded__block_invoke_218(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = NMLogForCategory(5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 title];
    v12 = 138412546;
    v13 = v5;
    v14 = 2050;
    v15 = [v3 groupType];
    _os_log_impl(&dword_25B27B000, v4, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Processing) (Recent Music) (ForYou) Section %@ with type: %{public}lu", &v12, 0x16u);
  }

  if ([v3 groupType] == 6)
  {
    if ([v3 numberOfItems] >= 1)
    {
      v6 = 0;
      do
      {
        v7 = [v3 itemAtIndex:v6];
        if ([v7 itemType] == 2)
        {
          v8 = [v7 playlist];
        }

        else if ([v7 itemType] == 1)
        {
          v8 = [v7 album];
        }

        else
        {
          v8 = v7;
        }

        v9 = v8;
        [*(a1 + 32) _processRecentMusicItem:v8 section:v3 identifier:@"ForYou"];

        ++v6;
      }

      while (v6 < [v3 numberOfItems]);
    }
  }

  else
  {
    v10 = NMLogForCategory(5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v3;
      _os_log_impl(&dword_25B27B000, v10, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Processing) (Recent Music) (ForYou) Ignored section: %{public}@", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __66__NMSMusicRecommendationsRequestContext__processResponsesIfNeeded__block_invoke_223(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = NMLogForCategory(5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 title];
    *buf = 138412546;
    v14 = v7;
    v15 = 2050;
    v16 = [v5 sectionType];
    _os_log_impl(&dword_25B27B000, v6, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Processing) (Recent Music) (Heavy Rotation) Section %@ with type: %{public}lu", buf, 0x16u);
  }

  v8 = [*(*(a1 + 32) + 40) results];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__NMSMusicRecommendationsRequestContext__processResponsesIfNeeded__block_invoke_224;
  v11[3] = &unk_27993E1A8;
  v11[4] = *(a1 + 32);
  v12 = v5;
  v9 = v5;
  [v8 enumerateItemsInSectionAtIndex:a3 usingBlock:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __66__NMSMusicRecommendationsRequestContext__processResponsesIfNeeded__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [*(*(a1 + 32) + 16) count];
  if (v7 >= [*(a1 + 32) minimumNumberOfRecentMusicModelObjects])
  {
    v8 = NMLogForCategory(5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) minimumNumberOfRecentMusicModelObjects];
      v11 = 134217984;
      v12 = v9;
      _os_log_impl(&dword_25B27B000, v8, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Processing) (Recent Music) (Library) Reached maximum of %lu items.", &v11, 0xCu);
    }

    *a4 = 1;
  }

  else
  {
    [*(a1 + 32) _processRecentMusicItem:v6 section:0 identifier:@"Library"];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __66__NMSMusicRecommendationsRequestContext__processResponsesIfNeeded__block_invoke_234(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = NMLogForCategory(5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 title];
    *buf = 138412546;
    v18 = v9;
    v19 = 2050;
    v20 = [v7 sectionType];
    _os_log_impl(&dword_25B27B000, v8, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Processing) (Recent Music) (Editorial) Section %@ with type: %{public}lu", buf, 0x16u);
  }

  v10 = [*(*(a1 + 32) + 72) results];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__NMSMusicRecommendationsRequestContext__processResponsesIfNeeded__block_invoke_235;
  v14[3] = &unk_27993E220;
  v11 = *(a1 + 32);
  v15 = v7;
  v16 = a4;
  v14[4] = v11;
  v12 = v7;
  [v10 enumerateItemsInSectionAtIndex:a3 usingBlock:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __66__NMSMusicRecommendationsRequestContext__processResponsesIfNeeded__block_invoke_235(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [*(*(a1 + 32) + 16) count];
  if (v7 >= [*(a1 + 32) minimumNumberOfRecentMusicModelObjects])
  {
    v10 = NMLogForCategory(5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 32) minimumNumberOfRecentMusicModelObjects];
      v13 = 134217984;
      v14 = v11;
      _os_log_impl(&dword_25B27B000, v10, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Processing) (Recent Music) (Editorial) Reached maximum of %lu items.", &v13, 0xCu);
    }

    *a4 = 1;
    **(a1 + 48) = 1;
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [v6 innerObject];
    [v8 _processRecentMusicItem:v9 section:*(a1 + 40) identifier:@"Editorial"];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __66__NMSMusicRecommendationsRequestContext__processResponsesIfNeeded__block_invoke_240(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = NMLogForCategory(5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 title];
    *buf = 138412546;
    v18 = v9;
    v19 = 2050;
    v20 = [v7 sectionType];
    _os_log_impl(&dword_25B27B000, v8, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Processing) (Recent Music) (Starter Pack) Section %@ with type: %{public}lu", buf, 0x16u);
  }

  v10 = [*(*(a1 + 32) + 56) results];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__NMSMusicRecommendationsRequestContext__processResponsesIfNeeded__block_invoke_241;
  v14[3] = &unk_27993E248;
  v11 = *(a1 + 32);
  v15 = v7;
  v16 = a4;
  v14[4] = v11;
  v12 = v7;
  [v10 enumerateItemsInSectionAtIndex:a3 usingBlock:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __66__NMSMusicRecommendationsRequestContext__processResponsesIfNeeded__block_invoke_241(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [*(*(a1 + 32) + 16) count];
  if (v7 >= [*(a1 + 32) minimumNumberOfRecentMusicModelObjects])
  {
    v8 = NMLogForCategory(5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) minimumNumberOfRecentMusicModelObjects];
      v11 = 134217984;
      v12 = v9;
      _os_log_impl(&dword_25B27B000, v8, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Processing) (Recent Music) (Starter Pack) Reached maximum of %lu items.", &v11, 0xCu);
    }

    *a4 = 1;
    **(a1 + 48) = 1;
  }

  else
  {
    [*(a1 + 32) _processRecentMusicItem:v6 section:*(a1 + 40) identifier:@"Starter Pack"];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_recentMusicContainsModelObject:(id)object
{
  objectCopy = object;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  recentMusicModelObjects = self->_recentMusicModelObjects;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__NMSMusicRecommendationsRequestContext__recentMusicContainsModelObject___block_invoke;
  v8[3] = &unk_27993E270;
  v6 = objectCopy;
  v9 = v6;
  v10 = &v11;
  [(NSMutableOrderedSet *)recentMusicModelObjects enumerateObjectsUsingBlock:v8];
  LOBYTE(recentMusicModelObjects) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return recentMusicModelObjects;
}

void __73__NMSMusicRecommendationsRequestContext__recentMusicContainsModelObject___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 identifiers];
  v9 = [v7 identifiers];

  LODWORD(v7) = [v8 intersectsSet:v9];
  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (void)_processRecentMusicItem:(id)item section:(id)section identifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  identifierCopy = identifier;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = NMLogForCategory(5);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412546;
        v16 = identifierCopy;
        v17 = 2114;
        v18 = itemCopy;
        v10 = "[Recommendation] (Processing) (Recent Music) (%@) Ignored unsupported item: %{public}@";
        goto LABEL_16;
      }

      goto LABEL_17;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [itemCopy type] == 1)
  {
    v9 = NMLogForCategory(5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      v16 = identifierCopy;
      v17 = 2114;
      v18 = itemCopy;
      v10 = "[Recommendation] (Processing) (Recent Music) (%@) Ignored smart playlist: %{public}@";
LABEL_16:
      _os_log_impl(&dword_25B27B000, v9, OS_LOG_TYPE_DEFAULT, v10, &v15, 0x16u);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  if (![(NMSMusicRecommendationsRequestContext *)self _hasDownloadableSongsForModelObject:itemCopy])
  {
    v9 = NMLogForCategory(5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      v16 = identifierCopy;
      v17 = 2114;
      v18 = itemCopy;
      v10 = "[Recommendation] (Processing) (RecentMusic) (%@) Ignored item without any downloadable songs: %{public}@";
      goto LABEL_16;
    }

LABEL_17:

    goto LABEL_18;
  }

  v11 = [(NMSMusicRecommendationsRequestContext *)self _recentMusicContainsModelObject:itemCopy];
  v12 = NMLogForCategory(5);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      v15 = 138412546;
      v16 = identifierCopy;
      v17 = 2114;
      v18 = itemCopy;
      _os_log_impl(&dword_25B27B000, v12, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Processing) (RecentMusic) (%@) Ignored duplicate item: %{public}@", &v15, 0x16u);
    }
  }

  else
  {
    if (v13)
    {
      v15 = 138412546;
      v16 = identifierCopy;
      v17 = 2114;
      v18 = itemCopy;
      _os_log_impl(&dword_25B27B000, v12, OS_LOG_TYPE_DEFAULT, "[Recommendation] (Processing) (Recent Music) (%@) Picked item: %{public}@", &v15, 0x16u);
    }

    [(NSMutableOrderedSet *)self->_recentMusicModelObjects addObject:itemCopy];
  }

LABEL_18:

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_hasDownloadableSongsForModelObject:(id)object
{
  v27[2] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  identifiers = [objectCopy identifiers];
  library = [identifiers library];
  persistentID = [library persistentID];

  if (persistentID)
  {
    v7 = MEMORY[0x277D2B5A8];
    v8 = MEMORY[0x277D2B5D0];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v10 = MEMORY[0x277D2B530];
    if ((isKindOfClass & 1) == 0)
    {
      v10 = MEMORY[0x277D2B538];
    }

    v11 = *v10;
    v12 = MEMORY[0x277CBEB98];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:persistentID];
    v14 = [v12 setWithObject:v13];
    v15 = [v8 predicateWithProperty:v11 values:v14];
    v27[0] = v15;
    v16 = MEMORY[0x277D2B608];
    v17 = [MEMORY[0x277D2B5C0] predicateWithProperty:*MEMORY[0x277D2B500] equalToInt64:-1];
    v18 = [v16 predicateWithPredicate:v17];
    v27[1] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    v20 = [v7 predicateMatchingPredicates:v19];

    objc_opt_class();
    LOBYTE(v15) = objc_opt_isKindOfClass();
    v21 = MEMORY[0x277D2B620];
    autoupdatingSharedLibrary = [MEMORY[0x277D2B5F8] autoupdatingSharedLibrary];
    if (v15)
    {
      [v21 queryWithLibrary:autoupdatingSharedLibrary predicate:v20 orderingTerms:0 usingSections:0];
    }

    else
    {
      [v21 allItemsQueryWithLibrary:autoupdatingSharedLibrary predicate:v20 orderingTerms:0 usingSections:0];
    }
    v24 = ;

    hasEntities = [v24 hasEntities];
  }

  else
  {
    hasEntities = 1;
  }

  v25 = *MEMORY[0x277D85DE8];
  return hasEntities;
}

void __66__NMSMusicRecommendationsRequestContext__processResponsesIfNeeded__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_25B27B000, v0, v1, "[Recommendation] (Processing) (Library Pins) Couldn't get MPModelObject from item: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end