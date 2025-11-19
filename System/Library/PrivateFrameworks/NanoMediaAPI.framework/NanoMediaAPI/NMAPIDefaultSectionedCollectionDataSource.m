@interface NMAPIDefaultSectionedCollectionDataSource
- (BOOL)_isSupportedItem:(id)a3;
- (NMAPIDefaultSectionedCollectionDataSource)initWithRequest:(id)a3 results:(id)a4 storeURLBag:(id)a5;
- (id)_musicURLWithPartialURLString:(id)a3;
- (id)_storeBrowseSectionWithDictionary:(id)a3;
- (id)itemAtIndexPath:(id)a3;
- (id)sectionAtIndex:(unint64_t)a3;
- (unint64_t)numberOfItemsInSection:(unint64_t)a3;
- (void)_addItemsFromArray:(id)a3;
- (void)_addSectionWithIdentifier:(id)a3 dictionary:(id)a4;
- (void)_parseResults;
- (void)_updateImportedIdentifierSetsWithIdentifier:(id)a3 dictionary:(id)a4;
@end

@implementation NMAPIDefaultSectionedCollectionDataSource

- (NMAPIDefaultSectionedCollectionDataSource)initWithRequest:(id)a3 results:(id)a4 storeURLBag:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = NMAPIDefaultSectionedCollectionDataSource;
  v12 = [(NMAPIDefaultSectionedCollectionDataSource *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, a3);
    objc_storeStrong(&v13->_results, a4);
    objc_storeStrong(&v13->_storeURLBag, a5);
    v14 = objc_alloc_init(MEMORY[0x277CBEA78]);
    cachedSections = v13->_cachedSections;
    v13->_cachedSections = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEA78]);
    cachedItems = v13->_cachedItems;
    v13->_cachedItems = v16;

    [(NMAPIDefaultSectionedCollectionDataSource *)v13 _parseResults];
  }

  return v13;
}

- (id)sectionAtIndex:(unint64_t)a3
{
  v4 = [(NSMutableArray *)self->_sectionResultIDs objectAtIndexedSubscript:a3];
  v5 = [(NSCache *)self->_cachedSections objectForKey:v4];
  if (!v5)
  {
    v6 = [(NSMutableDictionary *)self->_importedIdentifierSets objectForKey:v4];
    if (v6)
    {
      v7 = [MEMORY[0x277CD6058] sharedServerObjectDatabase];
      v8 = [(NMAPIRequest *)self->_request sectionProperties];
      v9 = [v7 modelObjectMatchingIdentifierSet:v6 propertySet:v8];
      v5 = [v9 anyObject];
    }

    else
    {
      v7 = [(NSMutableDictionary *)self->_sectionResults objectForKey:v4];
      if (v7)
      {
        v5 = [(NMAPIDefaultSectionedCollectionDataSource *)self _storeBrowseSectionWithDictionary:v7];
        if (v5)
        {
          [(NSCache *)self->_cachedSections setObject:v5 forKey:v4];
        }
      }

      else
      {
        v5 = 0;
      }
    }
  }

  return v5;
}

- (unint64_t)numberOfItemsInSection:(unint64_t)a3
{
  v3 = [(NSMutableArray *)self->_sectionedItemResultIDs objectAtIndexedSubscript:a3];
  v4 = [v3 count];

  return v4;
}

- (id)itemAtIndexPath:(id)a3
{
  sectionedItemResultIDs = self->_sectionedItemResultIDs;
  v5 = a3;
  v6 = -[NSMutableArray objectAtIndexedSubscript:](sectionedItemResultIDs, "objectAtIndexedSubscript:", [v5 section]);
  v7 = [v5 item];

  v8 = [v6 objectAtIndexedSubscript:v7];

  v9 = [(NSCache *)self->_cachedItems objectForKey:v8];
  if (!v9)
  {
    v10 = [(NSMutableDictionary *)self->_importedIdentifierSets objectForKey:v8];
    if (v10)
    {
      v11 = [MEMORY[0x277CD6058] sharedServerObjectDatabase];
      v12 = [(NMAPIRequest *)self->_request itemProperties];
      v13 = [v11 modelObjectMatchingIdentifierSet:v10 propertySet:v12];
      v9 = [v13 anyObject];
    }

    else
    {
      v11 = [(NSMutableDictionary *)self->_itemResults objectForKey:v8];
      if (v11)
      {
        v9 = [(NMAPIDefaultSectionedCollectionDataSource *)self _storeBrowseSectionWithDictionary:v11];
        if (v9)
        {
          [(NSCache *)self->_cachedItems setObject:v9 forKey:v8];
        }
      }

      else
      {
        v9 = 0;
      }
    }
  }

  return v9;
}

- (void)_parseResults
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  sectionResultIDs = self->_sectionResultIDs;
  self->_sectionResultIDs = v3;

  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  sectionResults = self->_sectionResults;
  self->_sectionResults = v5;

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  sectionedItemResultIDs = self->_sectionedItemResultIDs;
  self->_sectionedItemResultIDs = v7;

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  itemResults = self->_itemResults;
  self->_itemResults = v9;

  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  importedIdentifierSets = self->_importedIdentifierSets;
  self->_importedIdentifierSets = v11;

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = self->_results;
  v13 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v32;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v31 + 1) + 8 * i);
        v18 = [v17 itemsArray];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __58__NMAPIDefaultSectionedCollectionDataSource__parseResults__block_invoke;
        v30[3] = &unk_27993AFD8;
        v30[4] = self;
        v19 = [MEMORY[0x277CCAC30] predicateWithBlock:v30];
        v20 = [v18 filteredArrayUsingPredicate:v19];

        if ([v20 count])
        {
          v21 = [v17 sectionIdentifier];
          v22 = [v17 sectionDictionary];
          [(NMAPIDefaultSectionedCollectionDataSource *)self _addSectionWithIdentifier:v21 dictionary:v22];

          [(NMAPIDefaultSectionedCollectionDataSource *)self _addItemsFromArray:v20];
        }
      }

      v14 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v14);
  }

  v23 = NMLogForCategory(10);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v25 = self->_sectionResultIDs;
    v26 = self->_sectionResults;
    v27 = self->_sectionedItemResultIDs;
    v28 = self->_itemResults;
    *buf = 138413058;
    v36 = v25;
    v37 = 2112;
    v38 = v26;
    v39 = 2112;
    v40 = v27;
    v41 = 2112;
    v42 = v28;
    _os_log_debug_impl(&dword_25B251000, v23, OS_LOG_TYPE_DEBUG, "[NanoMediaAPI] _sectionResultIDs: %@, _sectionResults: %@, _sectionedItemResultIDs: %@, _itemResults: %@", buf, 0x2Au);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_addSectionWithIdentifier:(id)a3 dictionary:(id)a4
{
  sectionResultIDs = self->_sectionResultIDs;
  v7 = a4;
  v8 = a3;
  [(NSMutableArray *)sectionResultIDs addObject:v8];
  [(NSMutableDictionary *)self->_sectionResults setObject:v7 forKeyedSubscript:v8];
  [(NMAPIDefaultSectionedCollectionDataSource *)self _updateImportedIdentifierSetsWithIdentifier:v8 dictionary:v7];
}

- (void)_addItemsFromArray:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __64__NMAPIDefaultSectionedCollectionDataSource__addItemsFromArray___block_invoke;
  v13 = &unk_27993B000;
  v14 = v6;
  v15 = self;
  v7 = v6;
  [v5 enumerateObjectsUsingBlock:&v10];

  sectionedItemResultIDs = self->_sectionedItemResultIDs;
  v9 = [v7 copy];
  [(NSMutableArray *)sectionedItemResultIDs addObject:v9];
}

void __64__NMAPIDefaultSectionedCollectionDataSource__addItemsFromArray___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 valueForKeyPath:@"attributes.editorialElementKind"];
  if ([v4 isEqualToString:@"489"])
  {
    v5 = [v3 valueForKeyPath:@"relationships.contents.data"];
    v6 = [v5 firstObject];

    v3 = v6;
  }

  v7 = [v3 objectForKey:@"id"];
  if (v7 || ([v3 objectForKey:@"label"], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    [*(a1 + 32) addObject:v7];
    [*(*(a1 + 40) + 56) setValue:v3 forKey:v8];
    [*(a1 + 40) _updateImportedIdentifierSetsWithIdentifier:v8 dictionary:v3];
  }

  else
  {
    v8 = NMLogForCategory(9);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __64__NMAPIDefaultSectionedCollectionDataSource__addItemsFromArray___block_invoke_cold_1(v3, v8);
    }
  }
}

- (BOOL)_isSupportedItem:(id)a3
{
  v3 = a3;
  v4 = [v3 valueForKeyPath:@"attributes.mediaKind"];
  v5 = [v4 isEqualToString:@"video"];

  v6 = [v3 valueForKeyPath:@"type"];

  LODWORD(v3) = [v6 isEqualToString:@"music-movies"];
  return ((v5 | v3) & 1) == 0;
}

- (void)_updateImportedIdentifierSetsWithIdentifier:(id)a3 dictionary:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [v6 objectForKey:*MEMORY[0x277CD5CF8]];

  if (v7)
  {
    v8 = [v6 objectForKey:*MEMORY[0x277CD5D00]];
    [(NSMutableDictionary *)self->_importedIdentifierSets setValue:v8 forKey:v9];
  }
}

- (id)_musicURLWithPartialURLString:(id)a3
{
  v4 = [MEMORY[0x277CCACE0] componentsWithString:a3];
  v5 = [v4 scheme];

  if (!v5)
  {
    v6 = MusicURLComponentsWithURLBag(self->_storeURLBag, 0);
    v7 = [v6 scheme];
    [v4 setScheme:v7];
  }

  v8 = [v4 host];

  if (!v8)
  {
    v9 = MusicURLComponentsWithURLBag(self->_storeURLBag, 0);
    v10 = [v9 host];
    [v4 setHost:v10];
  }

  v11 = [v4 URL];

  return v11;
}

- (id)_storeBrowseSectionWithDictionary:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CD5F80]);
  v6 = [MEMORY[0x277CD5DA0] emptyIdentifierSet];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__NMAPIDefaultSectionedCollectionDataSource__storeBrowseSectionWithDictionary___block_invoke;
  v10[3] = &unk_27993B028;
  v11 = v4;
  v12 = self;
  v7 = v4;
  v8 = [v5 initWithIdentifiers:v6 block:v10];

  return v8;
}

void __79__NMAPIDefaultSectionedCollectionDataSource__storeBrowseSectionWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v20 = a2;
  v3 = [*(a1 + 32) objectForKey:@"name"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [*(a1 + 32) valueForKeyPath:@"attributes.name"];
    v7 = v6;
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      v8 = [*(a1 + 32) valueForKeyPath:@"attributes.title"];
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = [*(a1 + 32) objectForKey:@"label"];
      }

      v5 = v10;
    }
  }

  [v20 setTitle:v5];
  v11 = [*(a1 + 32) objectForKey:@"href"];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [*(a1 + 32) objectForKey:@"url"];
  }

  v14 = v13;

  v15 = *(*(a1 + 40) + 8);
  if ((objc_opt_respondsToSelector() & 1) != 0 && [*(*(a1 + 40) + 8) performSelector:sel_resultsPerSection] >= 1)
  {
    v16 = [*(a1 + 32) objectForKey:@"next"];
    if (!v16)
    {

      v14 = 0;
    }
  }

  if (v14)
  {
    v17 = [*(a1 + 40) _musicURLWithPartialURLString:v14];
    [v20 setLoadAdditionalContentURL:v17];
  }

  else
  {
    [v20 setLoadAdditionalContentURL:0];
  }

  v18 = [*(a1 + 32) valueForKeyPath:@"attributes.editorialElementKind"];
  if ([v18 isEqualToString:@"488"])
  {
    v19 = 13;
  }

  else if ([v18 isEqualToString:@"388"])
  {
    v19 = 10;
  }

  else if ([v18 isEqualToString:@"391"])
  {
    v19 = 11;
  }

  else
  {
    v19 = 0;
  }

  [v20 setSectionType:v19];
}

void __64__NMAPIDefaultSectionedCollectionDataSource__addItemsFromArray___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25B251000, a2, OS_LOG_TYPE_ERROR, "Failed to retrieve object %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end