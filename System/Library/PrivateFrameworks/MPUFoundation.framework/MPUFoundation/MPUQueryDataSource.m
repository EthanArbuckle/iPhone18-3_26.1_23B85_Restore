@interface MPUQueryDataSource
- (BOOL)_deleteHidesFromCloudForIndex:(unint64_t)a3 hidesAll:(BOOL *)a4;
- (BOOL)canEditEntityAtIndex:(unint64_t)a3;
- (BOOL)canSelectEntityAtIndex:(unint64_t)a3;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (MPUQueryDataSource)initWithCoder:(id)a3;
- (MPUQueryDataSource)initWithQuery:(id)a3 entityType:(int64_t)a4;
- (_NSRange)rangeOfSectionAtIndex:(unint64_t)a3;
- (id)_representativeCollection;
- (id)_sectionInfo;
- (id)entities;
- (id)localizedSectionIndexTitles;
- (id)localizedSectionTitleAtIndex:(unint64_t)a3;
- (id)queryForEntityAtIndex:(unint64_t)a3;
- (id)queryForEntityAtIndexPath:(id)a3;
- (int64_t)editingTypeForEntityAtIndex:(unint64_t)a3;
- (unint64_t)count;
- (unint64_t)hash;
- (unint64_t)indexOfSectionForSectionTitleAtIndex:(unint64_t)a3;
- (unint64_t)numberOfSections;
- (void)_defaultMediaLibraryDidChangeNotification:(id)a3;
- (void)_invalidateCalculatedEntities;
- (void)_invalidateForDisplayValuesChangeIfNeeded;
- (void)_invalidateIfNeeded;
- (void)addAdditionalMediaEntityPropertiesToFetch:(id)a3;
- (void)dealloc;
- (void)deleteEntityAtIndex:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
- (void)removeAdditionalMediaEntityPropertiesToFetch:(id)a3;
- (void)setIgnoringInvalidationDueToBackgroundApplicationState:(BOOL)a3;
@end

@implementation MPUQueryDataSource

- (MPUQueryDataSource)initWithQuery:(id)a3 entityType:(int64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = MPUQueryDataSource;
  v8 = [(MPUDataSource *)&v12 initWithEntityType:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_query, a3);
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:v9 selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x277D76758] object:0];
    [v10 addObserver:v9 selector:sel__applicationDidEnterBackground_ name:*MEMORY[0x277D76660] object:0];
    [v10 addObserver:v9 selector:sel__defaultMediaLibraryDidChangeNotification_ name:*MEMORY[0x277CD58D0] object:0];
    [v10 addObserver:v9 selector:sel__mediaLibraryDidChangeNotification_ name:*MEMORY[0x277CD58D8] object:0];
    [v10 addObserver:v9 selector:sel__mediaLibraryDisplayValuesDidChangeNotification_ name:*MEMORY[0x277CD58E0] object:0];
    [v10 addObserver:v9 selector:sel__mediaLibraryDynamicPropertiesDidChangeNotification_ name:*MEMORY[0x277CD58E8] object:0];
  }

  return v9;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76758] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D76660] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277CD58D0] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277CD58D8] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277CD58E0] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277CD58E8] object:0];

  v4.receiver = self;
  v4.super_class = MPUQueryDataSource;
  [(MPUQueryDataSource *)&v4 dealloc];
}

- (MPUQueryDataSource)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MPUQueryDataSource;
  v5 = [(MPUDataSource *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"query"];
    query = v5->_query;
    v5->_query = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"additionalUniqueItemPropertiesToFetch"];
    if ([v8 count])
    {
      v9 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v8];
      additionalUniqueItemPropertiesToFetch = v5->_additionalUniqueItemPropertiesToFetch;
      v5->_additionalUniqueItemPropertiesToFetch = v9;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = MPUQueryDataSource;
  [(MPUDataSource *)&v6 encodeWithCoder:v4];
  [v4 encodeObject:self->_query forKey:@"query"];
  v5 = [(NSMutableSet *)self->_additionalUniqueItemPropertiesToFetch allObjects];
  if ([v5 count])
  {
    [v4 encodeObject:v5 forKey:@"additionalUniqueItemPropertiesToFetch"];
  }
}

- (unint64_t)hash
{
  v3 = [(MPUDataSource *)self entityType];
  v4 = [(MPUDataSource *)self isIgnoringInvalidation];
  v5 = 5;
  if (v4)
  {
    v5 = 0;
  }

  v6 = v5 ^ v3 ^ (10 * [(MPMediaQuery *)self->_query hash]) ^ (100 * !self->_invalidateWhenEnteringForeground);
  return v6 ^ (1000 * [(NSMutableSet *)self->_additionalUniqueItemPropertiesToFetch hash]);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MPUDataSource *)self entityType];
      if (v6 == [(MPUDataSource *)v5 entityType]&& (v7 = [(MPUDataSource *)self isIgnoringInvalidation], v7 == [(MPUDataSource *)v5 isIgnoringInvalidation]) && ((query = self->_query, query == v5->_query) || [(MPMediaQuery *)query isEqual:?]) && !self->_invalidateWhenEnteringForeground && !v5->_invalidateWhenEnteringForeground)
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

- (BOOL)canEditEntityAtIndex:(unint64_t)a3
{
  v5 = [MEMORY[0x277CD6040] sharedRestrictionsMonitor];
  v6 = [v5 allowsDeletion];

  return v6 && [(MPUQueryDataSource *)self count]> a3;
}

- (BOOL)canSelectEntityAtIndex:(unint64_t)a3
{
  if (![(MPUDataSource *)self entityType])
  {
    v6 = [(MPUDataSource *)self entityAtIndex:a3];
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
    v15 = [MEMORY[0x277CD5D78] sharedCloudController];
    if ([v15 hasProperNetworkConditionsToPlayMedia])
    {
      v16 = 1;
    }

    else
    {
      v17 = [v6 valueForProperty:v7];
      v16 = [v17 BOOLValue];
    }

    v5 = v10 & v16;
    goto LABEL_19;
  }

  return 1;
}

- (unint64_t)count
{
  v3 = [(MPUDataSource *)self entityType];
  entities = self->_entities;
  if (v3)
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

- (void)deleteEntityAtIndex:(unint64_t)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = [(MPUDataSource *)self entityAtIndex:a3];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = [v4 mediaLibrary];
  v6 = [MEMORY[0x277CD5E10] deviceMediaLibrary];
  v7 = [v5 isEqual:v6];

  if (!v7)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11[0] = v4;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v8 = [v4 items];
  }

  v9 = v8;
LABEL_9:
  if ([v9 count])
  {
    v10 = [v4 mediaLibrary];
    [v10 removeItems:v9];

    [(MPUQueryDataSource *)self _invalidateCalculatedEntities];
  }

LABEL_12:
}

- (int64_t)editingTypeForEntityAtIndex:(unint64_t)a3
{
  v5 = [MEMORY[0x277CD6040] sharedRestrictionsMonitor];
  v6 = [v5 allowsDeletion];

  if (v6 && [(MPUQueryDataSource *)self count]> a3)
  {
    v7 = [(MPUDataSource *)self entityAtIndex:a3];
    v8 = [v7 mediaLibrary];
    v9 = [MEMORY[0x277CD5E10] deviceMediaLibrary];
    v10 = [v8 isEqual:v9];

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
        v22 = [v21 BOOLValue];

        if ((v22 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = [v7 itemsQuery];
          v19 = [v18 copy];
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
    v4 = [(MPUDataSource *)self entityType];
    query = self->_query;
    if (v4)
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

- (id)queryForEntityAtIndex:(unint64_t)a3
{
  v4 = [(MPUDataSource *)self entityAtIndex:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 itemsQuery];
  }

  else
  {
    v6 = [(MPUQueryDataSource *)self query];
    v5 = [v6 copy];

    v7 = MEMORY[0x277CD5E30];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "persistentID")}];
    v9 = [v7 predicateWithValue:v8 forProperty:*MEMORY[0x277CD56B0]];
    [v5 addFilterPredicate:v9];
  }

  return v5;
}

- (id)queryForEntityAtIndexPath:(id)a3
{
  v4 = [(MPUDataSource *)self _globalIndexForIndexPath:a3];

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
    v4 = [(MPUDataSource *)self entityType];
    entities = self->_entities;
    if (v4)
    {
      if (!entities)
      {
        v6 = [(MPMediaQuery *)self->_query _hasCollections];
LABEL_9:
        isEmpty = v6 ^ 1;
        goto LABEL_10;
      }
    }

    else if (!entities)
    {
      v6 = [(MPMediaQuery *)self->_query _hasItems];
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

  v3 = [(MPUQueryDataSource *)self _sectionInfo];
  v4 = [v3 sections];
  v5 = [v4 count];

  return v5;
}

- (id)localizedSectionIndexTitles
{
  v2 = [(MPUQueryDataSource *)self _sectionInfo];
  v3 = [v2 sectionIndexTitles];

  return v3;
}

- (id)localizedSectionTitleAtIndex:(unint64_t)a3
{
  v4 = [(MPUQueryDataSource *)self _sectionInfo];
  v5 = [v4 sections];
  v6 = [v5 objectAtIndex:a3];

  v7 = [v6 title];

  return v7;
}

- (unint64_t)indexOfSectionForSectionTitleAtIndex:(unint64_t)a3
{
  v4 = [(MPUQueryDataSource *)self _sectionInfo];
  v5 = [v4 indexOfSectionForSectionIndexTitleAtIndex:a3];

  return v5;
}

- (_NSRange)rangeOfSectionAtIndex:(unint64_t)a3
{
  if ([(MPUDataSource *)self usesSections])
  {
    v5 = [(MPUQueryDataSource *)self _sectionInfo];
    v6 = [v5 sections];
    v7 = [v6 objectAtIndex:a3];

    v8 = [v7 range];
    v10 = v9;

    v11 = v8;
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

- (void)addAdditionalMediaEntityPropertiesToFetch:(id)a3
{
  v7 = a3;
  if ([v7 count])
  {
    additionalUniqueItemPropertiesToFetch = self->_additionalUniqueItemPropertiesToFetch;
    if (!additionalUniqueItemPropertiesToFetch)
    {
      v5 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v7, "count") + 2}];
      v6 = self->_additionalUniqueItemPropertiesToFetch;
      self->_additionalUniqueItemPropertiesToFetch = v5;

      [(NSMutableSet *)self->_additionalUniqueItemPropertiesToFetch addObject:*MEMORY[0x277CD5778]];
      [(NSMutableSet *)self->_additionalUniqueItemPropertiesToFetch addObject:*MEMORY[0x277CD5790]];
      additionalUniqueItemPropertiesToFetch = self->_additionalUniqueItemPropertiesToFetch;
    }

    [(NSMutableSet *)additionalUniqueItemPropertiesToFetch unionSet:v7];
  }
}

- (void)removeAdditionalMediaEntityPropertiesToFetch:(id)a3
{
  v5 = a3;
  if ([v5 count])
  {
    [(NSMutableSet *)self->_additionalUniqueItemPropertiesToFetch minusSet:v5];
    if (![(NSMutableSet *)self->_additionalUniqueItemPropertiesToFetch count])
    {
      additionalUniqueItemPropertiesToFetch = self->_additionalUniqueItemPropertiesToFetch;
      self->_additionalUniqueItemPropertiesToFetch = 0;
    }
  }
}

- (void)setIgnoringInvalidationDueToBackgroundApplicationState:(BOOL)a3
{
  if (self->_ignoringInvalidationDueToBackgroundApplicationState != a3)
  {
    self->_ignoringInvalidationDueToBackgroundApplicationState = a3;
    if (self->_invalidateWhenEnteringForeground && !a3)
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
    v3 = [(MPMediaQuery *)self->_query _representativeCollection];
    representativeCollection = self->_representativeCollection;
    self->_representativeCollection = v3;
  }

  v5 = self->_representativeCollection;

  return v5;
}

- (void)_defaultMediaLibraryDidChangeNotification:(id)a3
{
  query = self->_query;
  v5 = [MEMORY[0x277CD5E10] defaultMediaLibrary];
  [(MPMediaQuery *)query setMediaLibrary:v5];

  [(MPUQueryDataSource *)self _invalidateIfNeeded];
}

- (BOOL)_deleteHidesFromCloudForIndex:(unint64_t)a3 hidesAll:(BOOL *)a4
{
  v26 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    *a4 = 0;
  }

  v5 = [(MPUDataSource *)self entityAtIndex:a3];
  v6 = [v5 mediaLibrary];
  v7 = [MEMORY[0x277CD5E10] deviceMediaLibrary];
  v8 = [v6 isEqual:v7];

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
    if (a4 && v10)
    {
      v11 = 1;
      *a4 = 1;
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
  v13 = [v12 items];
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
        objc_enumerationMutation(v13);
      }

      v14 = __61__MPUQueryDataSource__deleteHidesFromCloudForIndex_hidesAll___block_invoke(v14, *(*(&v21 + 1) + 8 * v18));
      v16 += v14;
      ++v18;
    }

    while (v15 != v18);
    v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    v15 = v14;
  }

  while (v14);

  if (!v16)
  {
    goto LABEL_21;
  }

  if (a4)
  {
    v19 = [v12 items];
    *a4 = v16 == [v19 count];
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
    v3 = [(MPUDataSource *)self entityType];
    query = self->_query;
    if (v3)
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