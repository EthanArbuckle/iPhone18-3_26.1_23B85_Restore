@interface NMAPIDefaultSectionedCollectionDataSource
- (BOOL)_isSupportedItem:(id)item;
- (NMAPIDefaultSectionedCollectionDataSource)initWithRequest:(id)request results:(id)results storeURLBag:(id)bag;
- (id)_musicURLWithPartialURLString:(id)string;
- (id)_storeBrowseSectionWithDictionary:(id)dictionary;
- (id)itemAtIndexPath:(id)path;
- (id)sectionAtIndex:(unint64_t)index;
- (unint64_t)numberOfItemsInSection:(unint64_t)section;
- (void)_addItemsFromArray:(id)array;
- (void)_addSectionWithIdentifier:(id)identifier dictionary:(id)dictionary;
- (void)_parseResults;
- (void)_updateImportedIdentifierSetsWithIdentifier:(id)identifier dictionary:(id)dictionary;
@end

@implementation NMAPIDefaultSectionedCollectionDataSource

- (NMAPIDefaultSectionedCollectionDataSource)initWithRequest:(id)request results:(id)results storeURLBag:(id)bag
{
  requestCopy = request;
  resultsCopy = results;
  bagCopy = bag;
  v19.receiver = self;
  v19.super_class = NMAPIDefaultSectionedCollectionDataSource;
  v12 = [(NMAPIDefaultSectionedCollectionDataSource *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_request, request);
    objc_storeStrong(&v13->_results, results);
    objc_storeStrong(&v13->_storeURLBag, bag);
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

- (id)sectionAtIndex:(unint64_t)index
{
  v4 = [(NSMutableArray *)self->_sectionResultIDs objectAtIndexedSubscript:index];
  anyObject = [(NSCache *)self->_cachedSections objectForKey:v4];
  if (!anyObject)
  {
    v6 = [(NSMutableDictionary *)self->_importedIdentifierSets objectForKey:v4];
    if (v6)
    {
      mEMORY[0x277CD6058] = [MEMORY[0x277CD6058] sharedServerObjectDatabase];
      sectionProperties = [(NMAPIRequest *)self->_request sectionProperties];
      v9 = [mEMORY[0x277CD6058] modelObjectMatchingIdentifierSet:v6 propertySet:sectionProperties];
      anyObject = [v9 anyObject];
    }

    else
    {
      mEMORY[0x277CD6058] = [(NSMutableDictionary *)self->_sectionResults objectForKey:v4];
      if (mEMORY[0x277CD6058])
      {
        anyObject = [(NMAPIDefaultSectionedCollectionDataSource *)self _storeBrowseSectionWithDictionary:mEMORY[0x277CD6058]];
        if (anyObject)
        {
          [(NSCache *)self->_cachedSections setObject:anyObject forKey:v4];
        }
      }

      else
      {
        anyObject = 0;
      }
    }
  }

  return anyObject;
}

- (unint64_t)numberOfItemsInSection:(unint64_t)section
{
  v3 = [(NSMutableArray *)self->_sectionedItemResultIDs objectAtIndexedSubscript:section];
  v4 = [v3 count];

  return v4;
}

- (id)itemAtIndexPath:(id)path
{
  sectionedItemResultIDs = self->_sectionedItemResultIDs;
  pathCopy = path;
  v6 = -[NSMutableArray objectAtIndexedSubscript:](sectionedItemResultIDs, "objectAtIndexedSubscript:", [pathCopy section]);
  item = [pathCopy item];

  v8 = [v6 objectAtIndexedSubscript:item];

  anyObject = [(NSCache *)self->_cachedItems objectForKey:v8];
  if (!anyObject)
  {
    v10 = [(NSMutableDictionary *)self->_importedIdentifierSets objectForKey:v8];
    if (v10)
    {
      mEMORY[0x277CD6058] = [MEMORY[0x277CD6058] sharedServerObjectDatabase];
      itemProperties = [(NMAPIRequest *)self->_request itemProperties];
      v13 = [mEMORY[0x277CD6058] modelObjectMatchingIdentifierSet:v10 propertySet:itemProperties];
      anyObject = [v13 anyObject];
    }

    else
    {
      mEMORY[0x277CD6058] = [(NSMutableDictionary *)self->_itemResults objectForKey:v8];
      if (mEMORY[0x277CD6058])
      {
        anyObject = [(NMAPIDefaultSectionedCollectionDataSource *)self _storeBrowseSectionWithDictionary:mEMORY[0x277CD6058]];
        if (anyObject)
        {
          [(NSCache *)self->_cachedItems setObject:anyObject forKey:v8];
        }
      }

      else
      {
        anyObject = 0;
      }
    }
  }

  return anyObject;
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
        itemsArray = [v17 itemsArray];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __58__NMAPIDefaultSectionedCollectionDataSource__parseResults__block_invoke;
        v30[3] = &unk_27993AFD8;
        v30[4] = self;
        v19 = [MEMORY[0x277CCAC30] predicateWithBlock:v30];
        v20 = [itemsArray filteredArrayUsingPredicate:v19];

        if ([v20 count])
        {
          sectionIdentifier = [v17 sectionIdentifier];
          sectionDictionary = [v17 sectionDictionary];
          [(NMAPIDefaultSectionedCollectionDataSource *)self _addSectionWithIdentifier:sectionIdentifier dictionary:sectionDictionary];

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

- (void)_addSectionWithIdentifier:(id)identifier dictionary:(id)dictionary
{
  sectionResultIDs = self->_sectionResultIDs;
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  [(NSMutableArray *)sectionResultIDs addObject:identifierCopy];
  [(NSMutableDictionary *)self->_sectionResults setObject:dictionaryCopy forKeyedSubscript:identifierCopy];
  [(NMAPIDefaultSectionedCollectionDataSource *)self _updateImportedIdentifierSetsWithIdentifier:identifierCopy dictionary:dictionaryCopy];
}

- (void)_addItemsFromArray:(id)array
{
  v4 = MEMORY[0x277CBEB18];
  arrayCopy = array;
  v6 = objc_alloc_init(v4);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __64__NMAPIDefaultSectionedCollectionDataSource__addItemsFromArray___block_invoke;
  v13 = &unk_27993B000;
  v14 = v6;
  selfCopy = self;
  v7 = v6;
  [arrayCopy enumerateObjectsUsingBlock:&v10];

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

- (BOOL)_isSupportedItem:(id)item
{
  itemCopy = item;
  v4 = [itemCopy valueForKeyPath:@"attributes.mediaKind"];
  v5 = [v4 isEqualToString:@"video"];

  v6 = [itemCopy valueForKeyPath:@"type"];

  LODWORD(itemCopy) = [v6 isEqualToString:@"music-movies"];
  return ((v5 | itemCopy) & 1) == 0;
}

- (void)_updateImportedIdentifierSetsWithIdentifier:(id)identifier dictionary:(id)dictionary
{
  identifierCopy = identifier;
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKey:*MEMORY[0x277CD5CF8]];

  if (v7)
  {
    v8 = [dictionaryCopy objectForKey:*MEMORY[0x277CD5D00]];
    [(NSMutableDictionary *)self->_importedIdentifierSets setValue:v8 forKey:identifierCopy];
  }
}

- (id)_musicURLWithPartialURLString:(id)string
{
  v4 = [MEMORY[0x277CCACE0] componentsWithString:string];
  scheme = [v4 scheme];

  if (!scheme)
  {
    v6 = MusicURLComponentsWithURLBag(self->_storeURLBag, 0);
    scheme2 = [v6 scheme];
    [v4 setScheme:scheme2];
  }

  host = [v4 host];

  if (!host)
  {
    v9 = MusicURLComponentsWithURLBag(self->_storeURLBag, 0);
    host2 = [v9 host];
    [v4 setHost:host2];
  }

  v11 = [v4 URL];

  return v11;
}

- (id)_storeBrowseSectionWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = objc_alloc(MEMORY[0x277CD5F80]);
  emptyIdentifierSet = [MEMORY[0x277CD5DA0] emptyIdentifierSet];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__NMAPIDefaultSectionedCollectionDataSource__storeBrowseSectionWithDictionary___block_invoke;
  v10[3] = &unk_27993B028;
  v11 = dictionaryCopy;
  selfCopy = self;
  v7 = dictionaryCopy;
  v8 = [v5 initWithIdentifiers:emptyIdentifierSet block:v10];

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