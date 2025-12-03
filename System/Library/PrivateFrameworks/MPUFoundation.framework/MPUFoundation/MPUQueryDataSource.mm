@interface MPUQueryDataSource
- (BOOL)_deleteHidesFromCloudForIndex:(unint64_t)index hidesAll:(BOOL *)all;
- (BOOL)canEditEntityAtIndex:(unint64_t)index;
- (BOOL)canSelectEntityAtIndex:(unint64_t)index;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (MPUQueryDataSource)initWithCoder:(id)coder;
- (MPUQueryDataSource)initWithQuery:(id)query entityType:(int64_t)type;
- (_NSRange)rangeOfSectionAtIndex:(unint64_t)index;
- (id)_representativeCollection;
- (id)_sectionInfo;
- (id)entities;
- (id)localizedSectionIndexTitles;
- (id)localizedSectionTitleAtIndex:(unint64_t)index;
- (id)queryForEntityAtIndex:(unint64_t)index;
- (id)queryForEntityAtIndexPath:(id)path;
- (int64_t)editingTypeForEntityAtIndex:(unint64_t)index;
- (unint64_t)count;
- (unint64_t)hash;
- (unint64_t)indexOfSectionForSectionTitleAtIndex:(unint64_t)index;
- (unint64_t)numberOfSections;
- (void)_defaultMediaLibraryDidChangeNotification:(id)notification;
- (void)_invalidateCalculatedEntities;
- (void)_invalidateForDisplayValuesChangeIfNeeded;
- (void)_invalidateIfNeeded;
- (void)addAdditionalMediaEntityPropertiesToFetch:(id)fetch;
- (void)dealloc;
- (void)deleteEntityAtIndex:(unint64_t)index;
- (void)encodeWithCoder:(id)coder;
- (void)removeAdditionalMediaEntityPropertiesToFetch:(id)fetch;
- (void)setIgnoringInvalidationDueToBackgroundApplicationState:(BOOL)state;
@end

@implementation MPUQueryDataSource

- (MPUQueryDataSource)initWithQuery:(id)query entityType:(int64_t)type
{
  queryCopy = query;
  v12.receiver = self;
  v12.super_class = MPUQueryDataSource;
  v8 = [(MPUDataSource *)&v12 initWithEntityType:type];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_query, query);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x277D76758] object:0];
    [defaultCenter addObserver:v9 selector:sel__applicationDidEnterBackground_ name:*MEMORY[0x277D76660] object:0];
    [defaultCenter addObserver:v9 selector:sel__defaultMediaLibraryDidChangeNotification_ name:*MEMORY[0x277CD58D0] object:0];
    [defaultCenter addObserver:v9 selector:sel__mediaLibraryDidChangeNotification_ name:*MEMORY[0x277CD58D8] object:0];
    [defaultCenter addObserver:v9 selector:sel__mediaLibraryDisplayValuesDidChangeNotification_ name:*MEMORY[0x277CD58E0] object:0];
    [defaultCenter addObserver:v9 selector:sel__mediaLibraryDynamicPropertiesDidChangeNotification_ name:*MEMORY[0x277CD58E8] object:0];
  }

  return v9;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76758] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76660] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CD58D0] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CD58D8] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CD58E0] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CD58E8] object:0];

  v4.receiver = self;
  v4.super_class = MPUQueryDataSource;
  [(MPUQueryDataSource *)&v4 dealloc];
}

- (MPUQueryDataSource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = MPUQueryDataSource;
  v5 = [(MPUDataSource *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"query"];
    query = v5->_query;
    v5->_query = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"additionalUniqueItemPropertiesToFetch"];
    if ([v8 count])
    {
      v9 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v8];
      additionalUniqueItemPropertiesToFetch = v5->_additionalUniqueItemPropertiesToFetch;
      v5->_additionalUniqueItemPropertiesToFetch = v9;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = MPUQueryDataSource;
  [(MPUDataSource *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_query forKey:@"query"];
  allObjects = [(NSMutableSet *)self->_additionalUniqueItemPropertiesToFetch allObjects];
  if ([allObjects count])
  {
    [coderCopy encodeObject:allObjects forKey:@"additionalUniqueItemPropertiesToFetch"];
  }
}

- (unint64_t)hash
{
  entityType = [(MPUDataSource *)self entityType];
  isIgnoringInvalidation = [(MPUDataSource *)self isIgnoringInvalidation];
  v5 = 5;
  if (isIgnoringInvalidation)
  {
    v5 = 0;
  }

  v6 = v5 ^ entityType ^ (10 * [(MPMediaQuery *)self->_query hash]) ^ (100 * !self->_invalidateWhenEnteringForeground);
  return v6 ^ (1000 * [(NSMutableSet *)self->_additionalUniqueItemPropertiesToFetch hash]);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      entityType = [(MPUDataSource *)self entityType];
      if (entityType == [(MPUDataSource *)v5 entityType]&& (v7 = [(MPUDataSource *)self isIgnoringInvalidation], v7 == [(MPUDataSource *)v5 isIgnoringInvalidation]) && ((query = self->_query, query == v5->_query) || [(MPMediaQuery *)query isEqual:?]) && !self->_invalidateWhenEnteringForeground && !v5->_invalidateWhenEnteringForeground)
      {
        additionalUniqueItemPropertiesToFetch = self->_additionalUniqueItemPropertiesToFetch;
        if (additionalUniqueItemPropertiesToFetch == v5->_additionalUniqueItemPropertiesToFetch)
        {
          v9 = 1;
        }

        else
        {
          v9 = [(NSMutableSet *)additionalUniqueItemPropertiesToFetch isEqualToSet:?];
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (BOOL)canEditEntityAtIndex:(unint64_t)index
{
  mEMORY[0x277CD6040] = [MEMORY[0x277CD6040] sharedRestrictionsMonitor];
  allowsDeletion = [mEMORY[0x277CD6040] allowsDeletion];

  return allowsDeletion && [(MPUQueryDataSource *)self count]> index;
}

- (BOOL)canSelectEntityAtIndex:(unint64_t)index
{
  if (![(MPUDataSource *)self entityType])
  {
    v6 = [(MPUDataSource *)self entityAtIndex:index];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 1;
LABEL_19:

      return v5;
    }

    v7 = *MEMORY[0x277CD5790];
    v8 = [v6 valueForProperty:*MEMORY[0x277CD5790]];
    if (([v8 BOOLValue] & 1) == 0)
    {
      v9 = [v6 valueForProperty:*MEMORY[0x277CD57B0]];
      if ([v9 BOOLValue])
      {
      }

      else
      {
        v11 = *MEMORY[0x277CD5738];
        v12 = [v6 valueForProperty:*MEMORY[0x277CD5738]];

        if (v12 || ([v6 valueForProperty:*MEMORY[0x277CD57D0]], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "BOOLValue"), v13, !v14))
        {
          v10 = 1;
          goto LABEL_15;
        }

        v8 = [v6 valueForProperty:v11];
        if ([v8 length])
        {
          v10 = [v8 isEqualToString:@"0"];
          goto LABEL_8;
        }
      }
    }

    v10 = 1;
LABEL_8:

LABEL_15:
    mEMORY[0x277CD5D78] = [MEMORY[0x277CD5D78] sharedCloudController];
    if ([mEMORY[0x277CD5D78] hasProperNetworkConditionsToPlayMedia])
    {
      bOOLValue = 1;
    }

    else
    {
      v17 = [v6 valueForProperty:v7];
      bOOLValue = [v17 BOOLValue];
    }

    v5 = v10 & bOOLValue;
    goto LABEL_19;
  }

  return 1;
}

- (unint64_t)count
{
  entityType = [(MPUDataSource *)self entityType];
  entities = self->_entities;
  if (entityType)
  {
    if (!entities)
    {
      query = self->_query;

      return [(MPMediaQuery *)query _countOfCollections];
    }

    goto LABEL_7;
  }

  if (entities)
  {
LABEL_7:

    return [(NSArray *)entities count];
  }

  v7 = self->_query;

  return [(MPMediaQuery *)v7 _countOfItems];
}

- (void)deleteEntityAtIndex:(unint64_t)index
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = [(MPUDataSource *)self entityAtIndex:index];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  mediaLibrary = [v4 mediaLibrary];
  deviceMediaLibrary = [MEMORY[0x277CD5E10] deviceMediaLibrary];
  v7 = [mediaLibrary isEqual:deviceMediaLibrary];

  if (!v7)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11[0] = v4;
    items = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = 0;
      goto LABEL_9;
    }

    items = [v4 items];
  }

  v9 = items;
LABEL_9:
  if ([v9 count])
  {
    mediaLibrary2 = [v4 mediaLibrary];
    [mediaLibrary2 removeItems:v9];

    [(MPUQueryDataSource *)self _invalidateCalculatedEntities];
  }

LABEL_12:
}

- (int64_t)editingTypeForEntityAtIndex:(unint64_t)index
{
  mEMORY[0x277CD6040] = [MEMORY[0x277CD6040] sharedRestrictionsMonitor];
  allowsDeletion = [mEMORY[0x277CD6040] allowsDeletion];

  if (allowsDeletion && [(MPUQueryDataSource *)self count]> index)
  {
    v7 = [(MPUDataSource *)self entityAtIndex:index];
    mediaLibrary = [v7 mediaLibrary];
    deviceMediaLibrary = [MEMORY[0x277CD5E10] deviceMediaLibrary];
    v10 = [mediaLibrary isEqual:deviceMediaLibrary];

    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v7;
        v12 = *MEMORY[0x277CD5778];
        v13 = *MEMORY[0x277CD57A0];
        v14 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CD5778], *MEMORY[0x277CD57A0], 0}];
        v15 = [v11 valuesForProperties:v14];

        v16 = [v15 objectForKey:v12];
        if ([v16 BOOLValue])
        {

LABEL_12:
          v17 = 1;
          goto LABEL_13;
        }

        v21 = [v15 objectForKey:v13];
        bOOLValue = [v21 BOOLValue];

        if ((bOOLValue & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          itemsQuery = [v7 itemsQuery];
          v19 = [itemsQuery copy];
          v20 = [MEMORY[0x277CD5E30] predicateWithValue:MEMORY[0x277CBEC38] forProperty:*MEMORY[0x277CD5778]];
          [v19 addFilterPredicate:v20];

          LOBYTE(v20) = [v19 _hasItems];
          if (v20)
          {
            goto LABEL_12;
          }
        }
      }
    }

    v17 = 0;
LABEL_13:

    return v17;
  }

  return 0;
}

- (id)entities
{
  entities = self->_entities;
  if (!entities)
  {
    entityType = [(MPUDataSource *)self entityType];
    query = self->_query;
    if (entityType)
    {
      [(MPMediaQuery *)query collections];
    }

    else
    {
      [(MPMediaQuery *)query items];
    }
    v6 = ;
    v7 = self->_entities;
    self->_entities = v6;

    entities = self->_entities;
    if (!entities)
    {
      self->_entities = MEMORY[0x277CBEBF8];

      entities = self->_entities;
    }
  }

  return entities;
}

- (id)queryForEntityAtIndex:(unint64_t)index
{
  v4 = [(MPUDataSource *)self entityAtIndex:index];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    itemsQuery = [v4 itemsQuery];
  }

  else
  {
    query = [(MPUQueryDataSource *)self query];
    itemsQuery = [query copy];

    v7 = MEMORY[0x277CD5E30];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "persistentID")}];
    v9 = [v7 predicateWithValue:v8 forProperty:*MEMORY[0x277CD56B0]];
    [itemsQuery addFilterPredicate:v9];
  }

  return itemsQuery;
}

- (id)queryForEntityAtIndexPath:(id)path
{
  v4 = [(MPUDataSource *)self _globalIndexForIndexPath:path];

  return [(MPUQueryDataSource *)self queryForEntityAtIndex:v4];
}

- (void)_invalidateCalculatedEntities
{
  v6.receiver = self;
  v6.super_class = MPUQueryDataSource;
  [(MPUDataSource *)&v6 _invalidateCalculatedEntities];
  self->_hasValidRepresentativeCollection = 0;
  representativeCollection = self->_representativeCollection;
  self->_representativeCollection = 0;

  sectionInfo = self->_sectionInfo;
  self->_sectionInfo = 0;

  entities = self->_entities;
  self->_entities = 0;

  self->_hasValidEmpty = 0;
}

- (BOOL)isEmpty
{
  if (!self->_hasValidEmpty)
  {
    self->_hasValidEmpty = 1;
    entityType = [(MPUDataSource *)self entityType];
    entities = self->_entities;
    if (entityType)
    {
      if (!entities)
      {
        _hasCollections = [(MPMediaQuery *)self->_query _hasCollections];
LABEL_9:
        isEmpty = _hasCollections ^ 1;
        goto LABEL_10;
      }
    }

    else if (!entities)
    {
      _hasCollections = [(MPMediaQuery *)self->_query _hasItems];
      goto LABEL_9;
    }

    isEmpty = [(NSArray *)entities count]== 0;
LABEL_10:
    self->_isEmpty = isEmpty;
    return isEmpty & 1;
  }

  isEmpty = self->_isEmpty;
  return isEmpty & 1;
}

- (unint64_t)numberOfSections
{
  if (![(MPUDataSource *)self usesSections])
  {
    return [(MPUQueryDataSource *)self count]!= 0;
  }

  _sectionInfo = [(MPUQueryDataSource *)self _sectionInfo];
  sections = [_sectionInfo sections];
  v5 = [sections count];

  return v5;
}

- (id)localizedSectionIndexTitles
{
  _sectionInfo = [(MPUQueryDataSource *)self _sectionInfo];
  sectionIndexTitles = [_sectionInfo sectionIndexTitles];

  return sectionIndexTitles;
}

- (id)localizedSectionTitleAtIndex:(unint64_t)index
{
  _sectionInfo = [(MPUQueryDataSource *)self _sectionInfo];
  sections = [_sectionInfo sections];
  v6 = [sections objectAtIndex:index];

  title = [v6 title];

  return title;
}

- (unint64_t)indexOfSectionForSectionTitleAtIndex:(unint64_t)index
{
  _sectionInfo = [(MPUQueryDataSource *)self _sectionInfo];
  v5 = [_sectionInfo indexOfSectionForSectionIndexTitleAtIndex:index];

  return v5;
}

- (_NSRange)rangeOfSectionAtIndex:(unint64_t)index
{
  if ([(MPUDataSource *)self usesSections])
  {
    _sectionInfo = [(MPUQueryDataSource *)self _sectionInfo];
    sections = [_sectionInfo sections];
    v7 = [sections objectAtIndex:index];

    range = [v7 range];
    v10 = v9;

    v11 = range;
    v12 = v10;
  }

  else
  {
    v12 = [(MPUQueryDataSource *)self count];
    v11 = 0;
  }

  result.length = v12;
  result.location = v11;
  return result;
}

- (void)addAdditionalMediaEntityPropertiesToFetch:(id)fetch
{
  fetchCopy = fetch;
  if ([fetchCopy count])
  {
    additionalUniqueItemPropertiesToFetch = self->_additionalUniqueItemPropertiesToFetch;
    if (!additionalUniqueItemPropertiesToFetch)
    {
      v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(fetchCopy, "count") + 2}];
      v6 = self->_additionalUniqueItemPropertiesToFetch;
      self->_additionalUniqueItemPropertiesToFetch = v5;

      [(NSMutableSet *)self->_additionalUniqueItemPropertiesToFetch addObject:*MEMORY[0x277CD5778]];
      [(NSMutableSet *)self->_additionalUniqueItemPropertiesToFetch addObject:*MEMORY[0x277CD5790]];
      additionalUniqueItemPropertiesToFetch = self->_additionalUniqueItemPropertiesToFetch;
    }

    [(NSMutableSet *)additionalUniqueItemPropertiesToFetch unionSet:fetchCopy];
  }
}

- (void)removeAdditionalMediaEntityPropertiesToFetch:(id)fetch
{
  fetchCopy = fetch;
  if ([fetchCopy count])
  {
    [(NSMutableSet *)self->_additionalUniqueItemPropertiesToFetch minusSet:fetchCopy];
    if (![(NSMutableSet *)self->_additionalUniqueItemPropertiesToFetch count])
    {
      additionalUniqueItemPropertiesToFetch = self->_additionalUniqueItemPropertiesToFetch;
      self->_additionalUniqueItemPropertiesToFetch = 0;
    }
  }
}

- (void)setIgnoringInvalidationDueToBackgroundApplicationState:(BOOL)state
{
  if (self->_ignoringInvalidationDueToBackgroundApplicationState != state)
  {
    self->_ignoringInvalidationDueToBackgroundApplicationState = state;
    if (self->_invalidateWhenEnteringForeground && !state)
    {
      [(MPUDataSource *)self invalidate];
    }
  }
}

- (void)_invalidateIfNeeded
{
  if ([(MPUQueryDataSource *)self ignoringInvalidationDueToBackgroundApplicationState])
  {
    self->_invalidateWhenEnteringForeground = 1;
  }

  else
  {

    [(MPUDataSource *)self invalidate];
  }
}

- (id)_representativeCollection
{
  if (!self->_hasValidRepresentativeCollection)
  {
    self->_hasValidRepresentativeCollection = 1;
    _representativeCollection = [(MPMediaQuery *)self->_query _representativeCollection];
    representativeCollection = self->_representativeCollection;
    self->_representativeCollection = _representativeCollection;
  }

  v5 = self->_representativeCollection;

  return v5;
}

- (void)_defaultMediaLibraryDidChangeNotification:(id)notification
{
  query = self->_query;
  defaultMediaLibrary = [MEMORY[0x277CD5E10] defaultMediaLibrary];
  [(MPMediaQuery *)query setMediaLibrary:defaultMediaLibrary];

  [(MPUQueryDataSource *)self _invalidateIfNeeded];
}

- (BOOL)_deleteHidesFromCloudForIndex:(unint64_t)index hidesAll:(BOOL *)all
{
  v26 = *MEMORY[0x277D85DE8];
  if (all)
  {
    *all = 0;
  }

  v5 = [(MPUDataSource *)self entityAtIndex:index];
  mediaLibrary = [v5 mediaLibrary];
  deviceMediaLibrary = [MEMORY[0x277CD5E10] deviceMediaLibrary];
  v8 = [mediaLibrary isEqual:deviceMediaLibrary];

  if (!v8)
  {
    goto LABEL_22;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v10 = __61__MPUQueryDataSource__deleteHidesFromCloudForIndex_hidesAll___block_invoke(isKindOfClass, v5);
    v11 = v10;
    if (all && v10)
    {
      v11 = 1;
      *all = 1;
    }

    goto LABEL_23;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_22:
    v11 = 0;
    goto LABEL_23;
  }

  v12 = v5;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  items = [v12 items];
  v14 = [items countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v14)
  {

LABEL_21:
    goto LABEL_22;
  }

  v15 = v14;
  v16 = 0;
  v17 = *v22;
  do
  {
    v18 = 0;
    do
    {
      if (*v22 != v17)
      {
        objc_enumerationMutation(items);
      }

      v14 = __61__MPUQueryDataSource__deleteHidesFromCloudForIndex_hidesAll___block_invoke(v14, *(*(&v21 + 1) + 8 * v18));
      v16 += v14;
      ++v18;
    }

    while (v15 != v18);
    v14 = [items countByEnumeratingWithState:&v21 objects:v25 count:16];
    v15 = v14;
  }

  while (v14);

  if (!v16)
  {
    goto LABEL_21;
  }

  if (all)
  {
    items2 = [v12 items];
    *all = v16 == [items2 count];
  }

  v11 = 1;
LABEL_23:

  return v11;
}

uint64_t __61__MPUQueryDataSource__deleteHidesFromCloudForIndex_hidesAll___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 valueForProperty:*MEMORY[0x277CD5808]];
  v3 = [v2 longLongValue];

  if (!v3)
  {
    return 0;
  }

  v4 = [MEMORY[0x277CD5D78] sharedCloudController];
  v5 = [v4 hasPurchaseHistoryAccount];

  return v5;
}

- (void)_invalidateForDisplayValuesChangeIfNeeded
{
  if ([(MPUQueryDataSource *)self ignoringInvalidationDueToBackgroundApplicationState])
  {
    self->_invalidateWhenEnteringForeground = 1;
  }

  else
  {
    v3 = objc_alloc_init([objc_opt_class() invalidationContextClass]);
    [(MPUDataSource *)self invalidateWithContext:v3];
  }
}

- (id)_sectionInfo
{
  if (!self->_sectionInfo)
  {
    entityType = [(MPUDataSource *)self entityType];
    query = self->_query;
    if (entityType)
    {
      [(MPMediaQuery *)query collectionSectionInfo];
    }

    else
    {
      [(MPMediaQuery *)query itemSectionInfo];
    }
    v5 = ;
    sectionInfo = self->_sectionInfo;
    self->_sectionInfo = v5;
  }

  v7 = self->_sectionInfo;

  return v7;
}

@end