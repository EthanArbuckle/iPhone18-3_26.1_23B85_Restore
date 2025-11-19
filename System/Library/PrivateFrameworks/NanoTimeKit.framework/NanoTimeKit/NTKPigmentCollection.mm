@interface NTKPigmentCollection
+ (id)collectionFromProtoBuffer:(id)a3 sharedCollections:(id)a4;
+ (id)stubCollectionWithName:(id)a3;
- (BOOL)hasAddableCollection;
- (BOOL)isEqual:(id)a3;
- (BOOL)isRootCollection;
- (NSArray)collections;
- (NSDictionary)collectionsByName;
- (NSDictionary)migration;
- (NSOrderedSet)allItems;
- (NSOrderedSet)items;
- (NTKPigmentCollection)initWithName:(id)a3;
- (NTKPigmentEditOption)defaultOption;
- (id)_pigmentForName:(id)a3;
- (id)buildNamesMappingWithPigments:(id)a3;
- (id)defaultOptionWithName:(id)a3;
- (id)description;
- (id)pigmentsFromMostRecentAddableCollection;
- (id)pigmentsFromMostRecentAddableCollections;
- (id)protoBufferIgnoringSharedCollections:(BOOL)a3;
- (unint64_t)count;
- (void)appendCollection:(id)a3;
- (void)fulfillWithSharedCollections:(id)a3;
- (void)mergeWithCollection:(id)a3;
- (void)setCollections:(id)a3;
- (void)setDefaultGalleryColorWithNames:(id)a3;
- (void)setDefaultOption:(id)a3;
- (void)setItems:(id)a3;
@end

@implementation NTKPigmentCollection

- (NTKPigmentCollection)initWithName:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NTKPigmentCollection;
  v6 = [(NTKPigmentCollection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collectionName, a3);
  }

  return v7;
}

+ (id)stubCollectionWithName:(id)a3
{
  v3 = a3;
  v4 = [[NTKPigmentCollection alloc] initWithName:v3];

  [(NTKPigmentCollection *)v4 setStub:1];

  return v4;
}

- (NSOrderedSet)allItems
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_allItems)
  {
    v3 = MEMORY[0x277CBEB40];
    v4 = [(NTKPigmentCollection *)v2 items];
    v5 = [v4 array];
    v6 = [v3 orderedSetWithArray:v5];

    v7 = [(NTKPigmentCollection *)v2 config];
    v8 = [v7 isAddable];

    v9 = [(NTKPigmentCollection *)v2 collections];
    if (v8)
    {
      v10 = v16;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __32__NTKPigmentCollection_allItems__block_invoke;
      v16[3] = &unk_278781E10;
      v16[4] = v6;
      [v9 enumerateObjectsWithOptions:2 usingBlock:v16];
    }

    else
    {
      v10 = v15;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __32__NTKPigmentCollection_allItems__block_invoke_2;
      v15[3] = &unk_278781E10;
      v15[4] = v6;
      [v9 enumerateObjectsUsingBlock:v15];
    }

    v11 = [(NTKPigmentCollection *)v2 config];
    [v11 removeExcludedItemsFromList:v6];

    allItems = v2->_allItems;
    v2->_allItems = v6;
  }

  objc_sync_exit(v2);

  v13 = v2->_allItems;

  return v13;
}

void __32__NTKPigmentCollection_allItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 allItems];
  v3 = [v4 array];
  [v2 addObjectsFromArray:v3];
}

void __32__NTKPigmentCollection_allItems__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 allItems];
  v3 = [v4 array];
  [v2 addObjectsFromArray:v3];
}

- (unint64_t)count
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_allItems)
  {
    goto LABEL_5;
  }

  v3 = [(NTKPigmentCollection *)v2 config];
  v4 = [v3 exclusions];
  if ([v4 count])
  {

LABEL_5:
    v8 = [(NTKPigmentCollection *)v2 allItems];
    v9 = [v8 count];

    goto LABEL_6;
  }

  v5 = [(NTKPigmentCollection *)v2 config];
  v6 = [v5 excludesDuotone];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    goto LABEL_5;
  }

  v11 = [(NTKPigmentCollection *)v2 items];
  v9 = [v11 count];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v12 = [(NTKPigmentCollection *)v2 collections];
  v13 = [v12 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v13)
  {
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v9 += [*(*(&v16 + 1) + 8 * v15++) count];
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }

LABEL_6:
  objc_sync_exit(v2);

  return v9;
}

- (BOOL)hasAddableCollection
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(NTKPigmentCollection *)self config];
  v4 = [v3 isAddable];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v7 = [(NTKPigmentCollection *)self collections];
    v6 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v8 = *v12;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v7);
          }

          if ([*(*(&v11 + 1) + 8 * i) hasAddableCollection])
          {
            LOBYTE(v6) = 1;
            goto LABEL_13;
          }
        }

        v6 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v6;
}

- (NSOrderedSet)items
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_items;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isRootCollection
{
  v2 = [(NTKPigmentCollection *)self collectionName];
  v3 = [v2 containsString:@"."];

  return v3 ^ 1;
}

- (void)setItems:(id)a3
{
  v11 = a3;
  v5 = self;
  objc_sync_enter(v5);
  objc_storeStrong(&v5->_items, a3);
  defaultOption = v5->_defaultOption;
  v5->_defaultOption = 0;

  allItems = v5->_allItems;
  v5->_allItems = 0;

  v8 = [(NTKPigmentCollection *)v5 buildNamesMappingWithPigments:v11];
  itemsByName = v5->_itemsByName;
  v5->_itemsByName = v8;

  faceSpecificPigmentsByFullname = v5->_faceSpecificPigmentsByFullname;
  v5->_faceSpecificPigmentsByFullname = 0;

  objc_sync_exit(v5);
}

- (NSArray)collections
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_collections;
  objc_sync_exit(v2);

  return v3;
}

- (void)setCollections:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  collections = obj->_collections;
  obj->_collections = v4;
  v6 = v4;

  collectionsByName = obj->_collectionsByName;
  obj->_collectionsByName = 0;

  defaultOption = obj->_defaultOption;
  obj->_defaultOption = 0;

  allItems = obj->_allItems;
  obj->_allItems = 0;

  faceSpecificPigmentsByFullname = obj->_faceSpecificPigmentsByFullname;
  obj->_faceSpecificPigmentsByFullname = 0;

  objc_sync_exit(obj);
}

- (void)appendCollection:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = [(NTKPigmentCollection *)self collections];
  v8 = [v4 arrayWithArray:v6];

  [v8 addObject:v5];
  v7 = [v8 copy];
  [(NTKPigmentCollection *)self setCollections:v7];
}

- (NSDictionary)collectionsByName
{
  v22 = *MEMORY[0x277D85DE8];
  collectionsByName = self->_collectionsByName;
  if (!collectionsByName)
  {
    v4 = MEMORY[0x277CBEB38];
    v5 = [(NTKPigmentCollection *)self collections];
    v6 = [v4 dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
    v7 = self->_collectionsByName;
    self->_collectionsByName = v6;

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [(NTKPigmentCollection *)self collections];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = self->_collectionsByName;
          v15 = [v13 collectionName];
          [(NSMutableDictionary *)v14 setObject:v13 forKeyedSubscript:v15];
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    collectionsByName = self->_collectionsByName;
  }

  return collectionsByName;
}

- (NTKPigmentEditOption)defaultOption
{
  v2 = self;
  objc_sync_enter(v2);
  defaultOption = v2->_defaultOption;
  if (!defaultOption)
  {
    v4 = [(NTKPigmentCollectionConfig *)v2->_config defaultColorOptionName];
    v5 = [(NTKPigmentCollection *)v2 defaultOptionWithName:v4];
    v6 = v2->_defaultOption;
    v2->_defaultOption = v5;

    defaultOption = v2->_defaultOption;
    if (!defaultOption)
    {
      v7 = [(NTKPigmentCollectionConfig *)v2->_config fallbackDefaultColorOptionName];
      v8 = [(NTKPigmentCollection *)v2 defaultOptionWithName:v7];
      v9 = v2->_defaultOption;
      v2->_defaultOption = v8;

      defaultOption = v2->_defaultOption;
      if (!defaultOption)
      {
        v10 = [(NTKPigmentCollection *)v2 allItems];
        v11 = [v10 firstObject];
        v12 = v2->_defaultOption;
        v2->_defaultOption = v11;

        defaultOption = v2->_defaultOption;
      }
    }
  }

  v13 = defaultOption;
  objc_sync_exit(v2);

  return v13;
}

- (id)defaultOptionWithName:(id)a3
{
  v12 = 0;
  v13 = 0.0;
  v11 = 0;
  [NTKPigmentEditOption parseFullname:a3 collectionName:&v12 optionName:&v11 fraction:&v13];
  v4 = v12;
  v5 = v11;
  v6 = [NTKPigmentEditOption fullnameWithCollectionName:v4 optionName:v5];
  v7 = [(NTKPigmentCollection *)self _pigmentForName:v6];
  if ([v7 supportsSlider])
  {
    [v7 colorFraction];
    if (v8 != v13)
    {
      v9 = [v7 copyWithColorFraction:?];

      v7 = v9;
    }
  }

  return v7;
}

- (void)setDefaultOption:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  defaultOption = obj->_defaultOption;
  obj->_defaultOption = v4;

  objc_sync_exit(obj);
}

- (void)setDefaultGalleryColorWithNames:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NTKPigmentCollection *)self _pigmentForName:*(*(&v13 + 1) + 8 * v10), v13];
        if (v11)
        {
          [v5 addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  [(NTKPigmentCollection *)self setDefaultGalleryColors:v12];
}

- (id)buildNamesMappingWithPigments:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [v10 effectiveOptionName];

        if (v11)
        {
          v12 = [v10 effectiveOptionName];
          [v4 setObject:v10 forKeyedSubscript:v12];
        }

        v13 = [v10 optionName];

        if (v13)
        {
          v14 = [v10 optionName];
          [v4 setObject:v10 forKeyedSubscript:v14];
        }

        v15 = [v10 fullname];

        if (v15)
        {
          v16 = [v10 fullname];
          [v4 setObject:v10 forKeyedSubscript:v16];
        }

        v17 = [v10 identifier];

        if (v17)
        {
          v18 = [v10 identifier];
          [v4 setObject:v10 forKeyedSubscript:v18];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_pigmentForName:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_itemsByName objectForKeyedSubscript:v4];
  if (!v6)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [(NTKPigmentCollection *)v5 collections];
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = *v13;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v6 = [*(*(&v12 + 1) + 8 * v10) _pigmentForName:v4];
        if (v6)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v6 = 0;
    }
  }

  objc_sync_exit(v5);

  return v6;
}

- (NSDictionary)migration
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  migration = v2->_migration;
  if (!migration)
  {
    v4 = MEMORY[0x277CBEB38];
    v5 = [(NTKPigmentCollection *)v2 config];
    v6 = [v5 migration];
    v7 = [v4 dictionaryWithDictionary:v6];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [(NTKPigmentCollection *)v2 collections];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = [*(*(&v17 + 1) + 8 * i) migration];
          [v7 addEntriesFromDictionary:v12];
        }

        v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    v13 = [v7 copy];
    v14 = v2->_migration;
    v2->_migration = v13;

    migration = v2->_migration;
  }

  v15 = migration;
  objc_sync_exit(v2);

  return v15;
}

- (id)pigmentsFromMostRecentAddableCollection
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(NTKPigmentCollection *)self allItems];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([v11 isAddable])
        {
          if (!v8 || ([v11 collectionName], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", v8), v12, (v13 & 1) == 0))
          {
            if (v7 > 0)
            {
              goto LABEL_16;
            }

            v14 = [v11 collectionName];

            v7 = 1;
            v8 = v14;
          }

          [v3 addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 0;
  }

LABEL_16:

  return v3;
}

- (id)pigmentsFromMostRecentAddableCollections
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(NTKPigmentCollection *)self allItems];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 isAddable])
        {
          if (!v7 || ([v10 collectionName], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", v7), v11, (v12 & 1) == 0))
          {
            if ([v3 count] > 1)
            {
              goto LABEL_16;
            }

            v13 = [v10 collectionName];

            v7 = v13;
          }

          [v3 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

LABEL_16:

  return v3;
}

- (void)mergeWithCollection:(id)a3
{
  v69 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 items];
  v6 = [v5 count];

  if (!v6)
  {
    v10 = 0;
    goto LABEL_19;
  }

  v7 = [(NTKPigmentCollection *)self items];
  v8 = [v7 mutableCopy];

  v9 = [v4 items];
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __44__NTKPigmentCollection_mergeWithCollection___block_invoke;
  v66[3] = &unk_278781E38;
  v10 = v8;
  v67 = v10;
  [v9 enumerateObjectsUsingBlock:v66];

  v11 = [(NTKPigmentCollection *)self config];
  v12 = [v11 collectionOverride];
  if ([v12 length])
  {
    v13 = [v4 config];
    v14 = [v13 collectionOverride];
    v15 = [v14 length];

    if (!v15)
    {
      v16 = [(NTKPigmentCollection *)self config];
      [v16 applyCollectionOverrideNameOnItems:v10];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v16 = [v4 config];
  v17 = [v16 collectionOverride];
  v18 = [(NTKPigmentCollection *)self config];
  [v18 setCollectionOverride:v17];

LABEL_8:
  v19 = [(NTKPigmentCollection *)self config];
  v20 = [v19 isAddable];
  if (!v20)
  {
LABEL_17:

    goto LABEL_18;
  }

  v21 = v20;
  v22 = [v4 config];
  v23 = [v22 isAddable];

  if (!v23)
  {
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v19 = v10;
    v24 = [v19 countByEnumeratingWithState:&v62 objects:v68 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v63;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v63 != v26)
          {
            objc_enumerationMutation(v19);
          }

          v28 = *(*(&v62 + 1) + 8 * i);
          v29 = [(NTKPigmentCollection *)self config];
          v30 = [v29 isAddable];
          [v28 setIsAddable:{objc_msgSend(v30, "BOOLValue")}];
        }

        v25 = [v19 countByEnumeratingWithState:&v62 objects:v68 count:16];
      }

      while (v25);
    }

    goto LABEL_17;
  }

LABEL_18:

LABEL_19:
  v31 = [(NTKPigmentCollection *)self config];

  if (!v31)
  {
    v32 = objc_alloc_init(NTKPigmentCollectionConfig);
    [(NTKPigmentCollection *)self setConfig:v32];
  }

  v33 = [v4 config];
  v34 = [v33 defaultGalleryColorNames];

  if (v34)
  {
    v35 = [v4 config];
    v36 = [v35 defaultGalleryColorNames];
    v37 = [(NTKPigmentCollection *)self config];
    [v37 setDefaultGalleryColorNames:v36];

    v38 = [(NTKPigmentCollection *)self config];
    v39 = [v38 defaultGalleryColorNames];
    [(NTKPigmentCollection *)self setDefaultGalleryColorWithNames:v39];
  }

  v40 = [v4 config];
  v41 = [v40 defaultColorOptionName];

  if (v41)
  {
    v42 = [v4 config];
    v43 = [v42 defaultColorOptionName];
    v44 = [(NTKPigmentCollection *)self config];
    [v44 setDefaultColorOptionName:v43];

    [(NTKPigmentCollection *)self setDefaultOption:0];
  }

  v45 = [v4 config];
  v46 = [v45 exclusions];

  if (v46)
  {
    v47 = [(NTKPigmentCollection *)self config];
    v48 = [v47 exclusions];
    v49 = [v46 arrayByAddingObjectsFromArray:v48];
    v50 = [(NTKPigmentCollection *)self config];
    [v50 setExclusions:v49];
  }

  if (v10)
  {
    [(NTKPigmentCollection *)self setItems:v10];
    v51 = [(NTKPigmentCollection *)self items];
    [v4 setItems:v51];
  }

  v52 = [v4 collections];
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __44__NTKPigmentCollection_mergeWithCollection___block_invoke_2;
  v61[3] = &unk_278781E10;
  v61[4] = self;
  [v52 enumerateObjectsUsingBlock:v61];

  v53 = [(NTKPigmentCollection *)self collections];
  [v4 setCollections:v53];

  v54 = [(NTKPigmentCollection *)self config];
  v55 = [v54 isAddable];
  v56 = [v55 BOOLValue];

  if (v56)
  {
    v57 = [v4 allItems];
    [v57 enumerateObjectsUsingBlock:&__block_literal_global_66];
  }

  v58 = self;
  objc_sync_enter(v58);
  allItems = v58->_allItems;
  v58->_allItems = 0;

  faceSpecificPigmentsByFullname = v58->_faceSpecificPigmentsByFullname;
  v58->_faceSpecificPigmentsByFullname = 0;

  objc_sync_exit(v58);
}

void __44__NTKPigmentCollection_mergeWithCollection___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 desiredPosition];
  if (v3 && (v4 = v3, [v10 desiredPosition], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "integerValue"), v7 = objc_msgSend(*(a1 + 32), "count") - 1, v5, v4, v6 <= v7))
  {
    v8 = *(a1 + 32);
    v9 = [v10 desiredPosition];
    [v8 insertObject:v10 atIndex:{objc_msgSend(v9, "integerValue")}];
  }

  else
  {
    [*(a1 + 32) addObject:v10];
  }
}

void __44__NTKPigmentCollection_mergeWithCollection___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) collectionsByName];
  v4 = [v6 collectionName];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (!v5)
  {
    [*(a1 + 32) appendCollection:v6];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSString *)v5->_collectionName copy];
  v7 = [(NTKPigmentCollection *)v5 defaultOption];
  v8 = [v7 copy];

  v9 = [(NSOrderedSet *)v5->_items copy];
  v10 = [(NSArray *)v5->_defaultGalleryColors copy];
  v11 = [(NSArray *)v5->_collections copy];
  v12 = [(NTKPigmentCollectionConfig *)v5->_config copy];
  shared = v5->_shared;
  objc_sync_exit(v5);

  if (v4 && ([v4 collectionName], v14 = objc_claimAutoreleasedReturnValue(), v15 = NTKEqualObjects(v6, v14), v14, v15) && shared == objc_msgSend(v4, "isShared") && (objc_msgSend(v4, "defaultOption"), v16 = objc_claimAutoreleasedReturnValue(), v17 = NTKEqualObjects(v8, v16), v16, v17))
  {
    v46 = v10;
    v18 = [v9 count];
    v19 = [v4 items];
    v20 = [v19 count];

    if (v18 != v20 || (v21 = [v46 count], objc_msgSend(v4, "defaultGalleryColors"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "count"), v22, v21 != v23) || (v24 = objc_msgSend(v11, "count"), objc_msgSend(v4, "collections"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "count"), v25, v24 != v26))
    {
      v42 = 0;
LABEL_25:
      v10 = v46;
      goto LABEL_23;
    }

    v44 = v8;
    if ([v9 count])
    {
      v27 = 0;
      do
      {
        v28 = [v9 objectAtIndexedSubscript:v27];
        v29 = [v4 items];
        v30 = [v29 objectAtIndexedSubscript:v27];
        v31 = [v28 isEqual:v30];

        if ((v31 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      while ([v9 count] > ++v27);
    }

    v32 = [v4 config];
    v33 = NTKEqualObjects(v12, v32);

    if (!v33)
    {
LABEL_26:
      v42 = 0;
LABEL_27:
      v8 = v44;
      goto LABEL_25;
    }

    v10 = v46;
    if (![v46 count])
    {
LABEL_17:
      v8 = v44;
      if (![v11 count])
      {
        v42 = 1;
        goto LABEL_23;
      }

      v38 = 0;
      while (1)
      {
        v39 = [v11 objectAtIndexedSubscript:v38];
        v40 = [v4 collections];
        v41 = [v40 objectAtIndexedSubscript:v38];
        v42 = [v39 isEqual:v41];

        if ((v42 & 1) == 0)
        {
          goto LABEL_27;
        }

        ++v38;
        v8 = v44;
        v10 = v46;
        if ([v11 count] <= v38)
        {
          goto LABEL_23;
        }
      }
    }

    v34 = 0;
    while (1)
    {
      v35 = [v46 objectAtIndexedSubscript:v34];
      v36 = [v4 defaultGalleryColors];
      v37 = [v36 objectAtIndexedSubscript:v34];
      v45 = [v35 isEqual:v37];

      if ((v45 & 1) == 0)
      {
        break;
      }

      if ([v46 count] <= ++v34)
      {
        goto LABEL_17;
      }
    }

    v42 = 0;
    v8 = v44;
  }

  else
  {
    v42 = 0;
  }

LABEL_23:

  return v42;
}

- (id)description
{
  v3 = self;
  objc_sync_enter(v3);
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v5 = [(NTKPigmentCollection *)v3 items];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __35__NTKPigmentCollection_description__block_invoke;
  v28[3] = &unk_278781E38;
  v6 = v4;
  v29 = v6;
  [v5 enumerateObjectsUsingBlock:v28];

  if ([v6 length])
  {
    v7 = @"");
  }

  else
  {
    v7 = @"()";
  }

  [v6 appendString:v7];
  v8 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v9 = [(NTKPigmentCollection *)v3 collections];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __35__NTKPigmentCollection_description__block_invoke_2;
  v26[3] = &unk_278781E10;
  v10 = v8;
  v27 = v10;
  [v9 enumerateObjectsUsingBlock:v26];

  if ([v10 length])
  {
    v11 = @"");
  }

  else
  {
    v11 = @"()";
  }

  [v10 appendString:v11];
  v23 = MEMORY[0x277CCACA8];
  v24 = [(NTKPigmentCollection *)v3 collectionName];
  v25 = [(NTKPigmentCollection *)v3 config];
  v12 = [v25 exclusions];
  v13 = [v12 count];
  if (v13)
  {
    v14 = MEMORY[0x277CCACA8];
    v22 = [(NTKPigmentCollection *)v3 config];
    v21 = [v22 exclusions];
    v2 = [v21 ntk_flatDescription];
    v15 = [v14 stringWithFormat:@", exclusions: %@", v2];
  }

  else
  {
    v15 = &stru_284110E98;
  }

  v16 = [(NTKPigmentCollection *)v3 config];
  v17 = [v16 excludesDuotone];
  v18 = @", excludesDuotone";
  if (!v17)
  {
    v18 = &stru_284110E98;
  }

  v19 = [v23 stringWithFormat:@"%@ [items: %@, collections: %@%@%@]", v24, v6, v10, v15, v18];

  if (v13)
  {
  }

  objc_sync_exit(v3);

  return v19;
}

void __35__NTKPigmentCollection_description__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  if ([v3 length])
  {
    v5 = @", ";
  }

  else
  {
    v5 = CFSTR("(");
  }

  [*(a1 + 32) appendString:v5];
  v6 = *(a1 + 32);
  v7 = [v4 description];

  [v6 appendString:v7];
}

void __35__NTKPigmentCollection_description__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  if ([v3 length])
  {
    v5 = @", ";
  }

  else
  {
    v5 = CFSTR("(");
  }

  [*(a1 + 32) appendString:v5];
  v6 = *(a1 + 32);
  v7 = [v4 collectionName];

  [v6 appendString:v7];
}

+ (id)collectionFromProtoBuffer:(id)a3 sharedCollections:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 name];
  v8 = [v7 length];

  if (v8)
  {
    if ([v5 isStub])
    {
      if (v6 && ([v5 name], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "objectForKeyedSubscript:", v9), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
      {
        v11 = [v5 name];
        v12 = [v6 objectForKeyedSubscript:v11];

        if (v12)
        {
          goto LABEL_19;
        }

        v13 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [NTKPigmentCollection collectionFromProtoBuffer:v5 sharedCollections:?];
        }
      }

      else
      {
        v13 = [v5 name];
        v12 = [NTKPigmentCollection stubCollectionWithName:v13];
      }

      goto LABEL_18;
    }

    v15 = [NTKPigmentCollection alloc];
    v16 = [v5 name];
    v12 = [(NTKPigmentCollection *)v15 initWithName:v16];

    *(v12 + 32) = [v5 isShared];
    *(v12 + 33) = [v5 isStub];
    v17 = [v5 config];
    v18 = [NTKPigmentCollectionConfig collectionConfigFromProtoBuffer:v17];
    v19 = *(v12 + 72);
    *(v12 + 72) = v18;

    v20 = [NTKPigmentEditOption alloc];
    v21 = [v5 defaultOption];
    v22 = [(NTKPigmentEditOption *)v20 initWithProtoBuffer:v21];
    v23 = *(v12 + 56);
    *(v12 + 56) = v22;

    v24 = [v5 items];

    if (v24)
    {
      v25 = [objc_alloc(MEMORY[0x277CBEB40]) initWithCapacity:{objc_msgSend(v5, "itemsCount")}];
      v26 = [v5 items];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __68__NTKPigmentCollection_collectionFromProtoBuffer_sharedCollections___block_invoke;
      v50[3] = &unk_278781E80;
      v51 = v25;
      v52 = v5;
      v27 = v25;
      [v26 enumerateObjectsUsingBlock:v50];

      v28 = [v27 copy];
      [v12 setItems:v28];
    }

    v29 = [v5 defaultGalleryColors];

    if (v29)
    {
      v30 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "defaultGalleryColorsCount")}];
      v31 = [v5 defaultGalleryColors];
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __68__NTKPigmentCollection_collectionFromProtoBuffer_sharedCollections___block_invoke_33;
      v47[3] = &unk_278781E80;
      v48 = v30;
      v49 = v5;
      v32 = v30;
      [v31 enumerateObjectsUsingBlock:v47];

      v33 = [v32 copy];
      v34 = *(v12 + 80);
      *(v12 + 80) = v33;
    }

    v35 = [v5 collections];

    if (v35)
    {
      v36 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "collectionsCount")}];
      v37 = [v5 collections];
      v41 = MEMORY[0x277D85DD0];
      v42 = 3221225472;
      v43 = __68__NTKPigmentCollection_collectionFromProtoBuffer_sharedCollections___block_invoke_34;
      v44 = &unk_278781EA8;
      v45 = v6;
      v46 = v36;
      v13 = v36;
      [v37 enumerateObjectsUsingBlock:&v41];

      v38 = [v13 copy:v41];
      v39 = *(v12 + 48);
      *(v12 + 48) = v38;

LABEL_18:
    }
  }

  else
  {
    v14 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [NTKPigmentCollection collectionFromProtoBuffer:v5 sharedCollections:v14];
    }

    v12 = 0;
  }

LABEL_19:

  return v12;
}

void __68__NTKPigmentCollection_collectionFromProtoBuffer_sharedCollections___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NTKPigmentEditOption alloc] initWithProtoBuffer:v3];
  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }

  else
  {
    v5 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __68__NTKPigmentCollection_collectionFromProtoBuffer_sharedCollections___block_invoke_cold_1(a1, v3);
    }
  }
}

void __68__NTKPigmentCollection_collectionFromProtoBuffer_sharedCollections___block_invoke_33(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NTKPigmentEditOption alloc] initWithProtoBuffer:v3];
  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }

  else
  {
    v5 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __68__NTKPigmentCollection_collectionFromProtoBuffer_sharedCollections___block_invoke_33_cold_1(a1, v3);
    }
  }
}

void __68__NTKPigmentCollection_collectionFromProtoBuffer_sharedCollections___block_invoke_34(uint64_t a1, uint64_t a2)
{
  v3 = [NTKPigmentCollection collectionFromProtoBuffer:a2 sharedCollections:*(a1 + 32)];
  [*(a1 + 40) addObject:v3];
}

- (id)protoBufferIgnoringSharedCollections:(BOOL)a3
{
  v4 = self;
  objc_sync_enter(v4);
  v5 = objc_alloc_init(NTKProtoPigmentCollection);
  [(NTKProtoPigmentCollection *)v5 setIsShared:v4->_shared];
  [(NTKProtoPigmentCollection *)v5 setIsStub:v4->_stub];
  [(NTKProtoPigmentCollection *)v5 setName:v4->_collectionName];
  v6 = [(NTKPigmentCollectionConfig *)v4->_config protoBuffer];
  [(NTKProtoPigmentCollection *)v5 setConfig:v6];

  v7 = [(NTKPigmentCollection *)v4 defaultOption];
  v8 = [v7 protoBuffer];
  [(NTKProtoPigmentCollection *)v5 setDefaultOption:v8];

  items = v4->_items;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __61__NTKPigmentCollection_protoBufferIgnoringSharedCollections___block_invoke;
  v23[3] = &unk_278781E38;
  v10 = v5;
  v24 = v10;
  [(NSOrderedSet *)items enumerateObjectsUsingBlock:v23];
  defaultGalleryColors = v4->_defaultGalleryColors;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __61__NTKPigmentCollection_protoBufferIgnoringSharedCollections___block_invoke_2;
  v21[3] = &unk_278781E38;
  v12 = v10;
  v22 = v12;
  [(NSArray *)defaultGalleryColors enumerateObjectsUsingBlock:v21];
  collections = v4->_collections;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __61__NTKPigmentCollection_protoBufferIgnoringSharedCollections___block_invoke_3;
  v18[3] = &unk_278781ED0;
  v14 = v12;
  v19 = v14;
  v20 = a3;
  [(NSArray *)collections enumerateObjectsUsingBlock:v18];
  v15 = v19;
  v16 = v14;

  objc_sync_exit(v4);

  return v16;
}

void __61__NTKPigmentCollection_protoBufferIgnoringSharedCollections___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 protoBuffer];
  [v2 addItems:v3];
}

void __61__NTKPigmentCollection_protoBufferIgnoringSharedCollections___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 protoBuffer];
  [v2 addDefaultGalleryColors:v3];
}

void __61__NTKPigmentCollection_protoBufferIgnoringSharedCollections___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = v7;
  if ([v7 isShared])
  {
    v4 = [v7 collectionName];
    v3 = [NTKPigmentCollection stubCollectionWithName:v4];
  }

  v5 = *(a1 + 32);
  v6 = [v3 protoBufferIgnoringSharedCollections:*(a1 + 40)];
  [v5 addCollections:v6];
}

- (void)fulfillWithSharedCollections:(id)a3
{
  v17 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(NTKPigmentCollection *)v4 collections];
  v6 = [v5 mutableCopy];

  for (i = 0; ; ++i)
  {
    v8 = [(NTKPigmentCollection *)v4 collections];
    v9 = [v8 count];

    if (v9 <= i)
    {
      break;
    }

    v10 = [(NTKPigmentCollection *)v4 collections];
    v11 = [v10 objectAtIndexedSubscript:i];

    if ([v11 isStub])
    {
      v12 = [v11 collectionName];
      if (v12)
      {
        v13 = [v11 collectionName];
        v14 = [v17 objectForKeyedSubscript:v13];

        if (v14)
        {
          v15 = [v11 collectionName];
          v16 = [v17 objectForKeyedSubscript:v15];
          [v6 setObject:v16 atIndexedSubscript:i];
        }
      }
    }
  }

  [(NTKPigmentCollection *)v4 setCollections:v6];

  objc_sync_exit(v4);
}

+ (void)collectionFromProtoBuffer:(void *)a1 sharedCollections:.cold.1(void *a1)
{
  v1 = [a1 name];
  OUTLINED_FUNCTION_0_10(&dword_22D9C5000, v2, v3, "#color-sync shared collection for %{public}@ could not be found in shared collections while decoding protobuffer object. Collection will be nil %{public}@", v4, v5, v6, v7, 2u);
}

+ (void)collectionFromProtoBuffer:(uint64_t)a1 sharedCollections:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "#color-sync Failure while creating pigment collection from protobuffer. Collection name can not be empty - %{public}@", &v2, 0xCu);
}

void __68__NTKPigmentCollection_collectionFromProtoBuffer_sharedCollections___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 40) name];
  v4 = [a2 formattedText];
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_10(&dword_22D9C5000, v5, v6, "#color-sync Failure while decoding collection's items from protobuffer. %{publib}@ - pigment protobuffer: %{public}@ ", v7, v8, v9, v10, v11);
}

void __68__NTKPigmentCollection_collectionFromProtoBuffer_sharedCollections___block_invoke_33_cold_1(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 40) name];
  v4 = [a2 formattedText];
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_0_10(&dword_22D9C5000, v5, v6, "#color-sync Failure while decoding collection's defaultGalleryColors from protobuffer. %{publib}@ - pigment protobuffer: %{public}@ ", v7, v8, v9, v10, v11);
}

@end