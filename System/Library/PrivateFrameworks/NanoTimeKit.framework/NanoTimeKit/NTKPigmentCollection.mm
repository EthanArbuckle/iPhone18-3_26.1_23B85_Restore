@interface NTKPigmentCollection
+ (id)collectionFromProtoBuffer:(id)buffer sharedCollections:(id)collections;
+ (id)stubCollectionWithName:(id)name;
- (BOOL)hasAddableCollection;
- (BOOL)isEqual:(id)equal;
- (BOOL)isRootCollection;
- (NSArray)collections;
- (NSDictionary)collectionsByName;
- (NSDictionary)migration;
- (NSOrderedSet)allItems;
- (NSOrderedSet)items;
- (NTKPigmentCollection)initWithName:(id)name;
- (NTKPigmentEditOption)defaultOption;
- (id)_pigmentForName:(id)name;
- (id)buildNamesMappingWithPigments:(id)pigments;
- (id)defaultOptionWithName:(id)name;
- (id)description;
- (id)pigmentsFromMostRecentAddableCollection;
- (id)pigmentsFromMostRecentAddableCollections;
- (id)protoBufferIgnoringSharedCollections:(BOOL)collections;
- (unint64_t)count;
- (void)appendCollection:(id)collection;
- (void)fulfillWithSharedCollections:(id)collections;
- (void)mergeWithCollection:(id)collection;
- (void)setCollections:(id)collections;
- (void)setDefaultGalleryColorWithNames:(id)names;
- (void)setDefaultOption:(id)option;
- (void)setItems:(id)items;
@end

@implementation NTKPigmentCollection

- (NTKPigmentCollection)initWithName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = NTKPigmentCollection;
  v6 = [(NTKPigmentCollection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collectionName, name);
  }

  return v7;
}

+ (id)stubCollectionWithName:(id)name
{
  nameCopy = name;
  v4 = [[NTKPigmentCollection alloc] initWithName:nameCopy];

  [(NTKPigmentCollection *)v4 setStub:1];

  return v4;
}

- (NSOrderedSet)allItems
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_allItems)
  {
    v3 = MEMORY[0x277CBEB40];
    items = [(NTKPigmentCollection *)selfCopy items];
    array = [items array];
    v6 = [v3 orderedSetWithArray:array];

    config = [(NTKPigmentCollection *)selfCopy config];
    isAddable = [config isAddable];

    collections = [(NTKPigmentCollection *)selfCopy collections];
    if (isAddable)
    {
      v10 = v16;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __32__NTKPigmentCollection_allItems__block_invoke;
      v16[3] = &unk_278781E10;
      v16[4] = v6;
      [collections enumerateObjectsWithOptions:2 usingBlock:v16];
    }

    else
    {
      v10 = v15;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __32__NTKPigmentCollection_allItems__block_invoke_2;
      v15[3] = &unk_278781E10;
      v15[4] = v6;
      [collections enumerateObjectsUsingBlock:v15];
    }

    config2 = [(NTKPigmentCollection *)selfCopy config];
    [config2 removeExcludedItemsFromList:v6];

    allItems = selfCopy->_allItems;
    selfCopy->_allItems = v6;
  }

  objc_sync_exit(selfCopy);

  v13 = selfCopy->_allItems;

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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_allItems)
  {
    goto LABEL_5;
  }

  config = [(NTKPigmentCollection *)selfCopy config];
  exclusions = [config exclusions];
  if ([exclusions count])
  {

LABEL_5:
    allItems = [(NTKPigmentCollection *)selfCopy allItems];
    v9 = [allItems count];

    goto LABEL_6;
  }

  config2 = [(NTKPigmentCollection *)selfCopy config];
  excludesDuotone = [config2 excludesDuotone];
  bOOLValue = [excludesDuotone BOOLValue];

  if (bOOLValue)
  {
    goto LABEL_5;
  }

  items = [(NTKPigmentCollection *)selfCopy items];
  v9 = [items count];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  collections = [(NTKPigmentCollection *)selfCopy collections];
  v13 = [collections countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(collections);
        }

        v9 += [*(*(&v16 + 1) + 8 * v15++) count];
      }

      while (v13 != v15);
      v13 = [collections countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }

LABEL_6:
  objc_sync_exit(selfCopy);

  return v9;
}

- (BOOL)hasAddableCollection
{
  v16 = *MEMORY[0x277D85DE8];
  config = [(NTKPigmentCollection *)self config];
  isAddable = [config isAddable];
  bOOLValue = [isAddable BOOLValue];

  if (bOOLValue)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    collections = [(NTKPigmentCollection *)self collections];
    v6 = [collections countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v8 = *v12;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(collections);
          }

          if ([*(*(&v11 + 1) + 8 * i) hasAddableCollection])
          {
            LOBYTE(v6) = 1;
            goto LABEL_13;
          }
        }

        v6 = [collections countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_items;
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)isRootCollection
{
  collectionName = [(NTKPigmentCollection *)self collectionName];
  v3 = [collectionName containsString:@"."];

  return v3 ^ 1;
}

- (void)setItems:(id)items
{
  itemsCopy = items;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(&selfCopy->_items, items);
  defaultOption = selfCopy->_defaultOption;
  selfCopy->_defaultOption = 0;

  allItems = selfCopy->_allItems;
  selfCopy->_allItems = 0;

  v8 = [(NTKPigmentCollection *)selfCopy buildNamesMappingWithPigments:itemsCopy];
  itemsByName = selfCopy->_itemsByName;
  selfCopy->_itemsByName = v8;

  faceSpecificPigmentsByFullname = selfCopy->_faceSpecificPigmentsByFullname;
  selfCopy->_faceSpecificPigmentsByFullname = 0;

  objc_sync_exit(selfCopy);
}

- (NSArray)collections
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_collections;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setCollections:(id)collections
{
  collectionsCopy = collections;
  obj = self;
  objc_sync_enter(obj);
  collections = obj->_collections;
  obj->_collections = collectionsCopy;
  v6 = collectionsCopy;

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

- (void)appendCollection:(id)collection
{
  v4 = MEMORY[0x277CBEB18];
  collectionCopy = collection;
  collections = [(NTKPigmentCollection *)self collections];
  v8 = [v4 arrayWithArray:collections];

  [v8 addObject:collectionCopy];
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
    collections = [(NTKPigmentCollection *)self collections];
    v6 = [v4 dictionaryWithCapacity:{objc_msgSend(collections, "count")}];
    v7 = self->_collectionsByName;
    self->_collectionsByName = v6;

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    collections2 = [(NTKPigmentCollection *)self collections];
    v9 = [collections2 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(collections2);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = self->_collectionsByName;
          collectionName = [v13 collectionName];
          [(NSMutableDictionary *)v14 setObject:v13 forKeyedSubscript:collectionName];
        }

        v10 = [collections2 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    collectionsByName = self->_collectionsByName;
  }

  return collectionsByName;
}

- (NTKPigmentEditOption)defaultOption
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  defaultOption = selfCopy->_defaultOption;
  if (!defaultOption)
  {
    defaultColorOptionName = [(NTKPigmentCollectionConfig *)selfCopy->_config defaultColorOptionName];
    v5 = [(NTKPigmentCollection *)selfCopy defaultOptionWithName:defaultColorOptionName];
    v6 = selfCopy->_defaultOption;
    selfCopy->_defaultOption = v5;

    defaultOption = selfCopy->_defaultOption;
    if (!defaultOption)
    {
      fallbackDefaultColorOptionName = [(NTKPigmentCollectionConfig *)selfCopy->_config fallbackDefaultColorOptionName];
      v8 = [(NTKPigmentCollection *)selfCopy defaultOptionWithName:fallbackDefaultColorOptionName];
      v9 = selfCopy->_defaultOption;
      selfCopy->_defaultOption = v8;

      defaultOption = selfCopy->_defaultOption;
      if (!defaultOption)
      {
        allItems = [(NTKPigmentCollection *)selfCopy allItems];
        firstObject = [allItems firstObject];
        v12 = selfCopy->_defaultOption;
        selfCopy->_defaultOption = firstObject;

        defaultOption = selfCopy->_defaultOption;
      }
    }
  }

  v13 = defaultOption;
  objc_sync_exit(selfCopy);

  return v13;
}

- (id)defaultOptionWithName:(id)name
{
  v12 = 0;
  v13 = 0.0;
  v11 = 0;
  [NTKPigmentEditOption parseFullname:name collectionName:&v12 optionName:&v11 fraction:&v13];
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

- (void)setDefaultOption:(id)option
{
  optionCopy = option;
  obj = self;
  objc_sync_enter(obj);
  defaultOption = obj->_defaultOption;
  obj->_defaultOption = optionCopy;

  objc_sync_exit(obj);
}

- (void)setDefaultGalleryColorWithNames:(id)names
{
  v18 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(namesCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = namesCopy;
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

- (id)buildNamesMappingWithPigments:(id)pigments
{
  v25 = *MEMORY[0x277D85DE8];
  pigmentsCopy = pigments;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = pigmentsCopy;
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
        effectiveOptionName = [v10 effectiveOptionName];

        if (effectiveOptionName)
        {
          effectiveOptionName2 = [v10 effectiveOptionName];
          [v4 setObject:v10 forKeyedSubscript:effectiveOptionName2];
        }

        optionName = [v10 optionName];

        if (optionName)
        {
          optionName2 = [v10 optionName];
          [v4 setObject:v10 forKeyedSubscript:optionName2];
        }

        fullname = [v10 fullname];

        if (fullname)
        {
          fullname2 = [v10 fullname];
          [v4 setObject:v10 forKeyedSubscript:fullname2];
        }

        identifier = [v10 identifier];

        if (identifier)
        {
          identifier2 = [v10 identifier];
          [v4 setObject:v10 forKeyedSubscript:identifier2];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_pigmentForName:(id)name
{
  v17 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_itemsByName objectForKeyedSubscript:nameCopy];
  if (!v6)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    collections = [(NTKPigmentCollection *)selfCopy collections];
    v8 = [collections countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = *v13;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(collections);
        }

        v6 = [*(*(&v12 + 1) + 8 * v10) _pigmentForName:nameCopy];
        if (v6)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [collections countByEnumeratingWithState:&v12 objects:v16 count:16];
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

  objc_sync_exit(selfCopy);

  return v6;
}

- (NSDictionary)migration
{
  v22 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  migration = selfCopy->_migration;
  if (!migration)
  {
    v4 = MEMORY[0x277CBEB38];
    config = [(NTKPigmentCollection *)selfCopy config];
    migration = [config migration];
    v7 = [v4 dictionaryWithDictionary:migration];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    collections = [(NTKPigmentCollection *)selfCopy collections];
    v9 = [collections countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(collections);
          }

          migration2 = [*(*(&v17 + 1) + 8 * i) migration];
          [v7 addEntriesFromDictionary:migration2];
        }

        v9 = [collections countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    v13 = [v7 copy];
    v14 = selfCopy->_migration;
    selfCopy->_migration = v13;

    migration = selfCopy->_migration;
  }

  v15 = migration;
  objc_sync_exit(selfCopy);

  return v15;
}

- (id)pigmentsFromMostRecentAddableCollection
{
  v21 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allItems = [(NTKPigmentCollection *)self allItems];
  v5 = [allItems countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(allItems);
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

            collectionName = [v11 collectionName];

            v7 = 1;
            v8 = collectionName;
          }

          [array addObject:v11];
        }
      }

      v6 = [allItems countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 0;
  }

LABEL_16:

  return array;
}

- (id)pigmentsFromMostRecentAddableCollections
{
  v20 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allItems = [(NTKPigmentCollection *)self allItems];
  v5 = [allItems countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(allItems);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 isAddable])
        {
          if (!v7 || ([v10 collectionName], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", v7), v11, (v12 & 1) == 0))
          {
            if ([array count] > 1)
            {
              goto LABEL_16;
            }

            collectionName = [v10 collectionName];

            v7 = collectionName;
          }

          [array addObject:v10];
        }
      }

      v6 = [allItems countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

LABEL_16:

  return array;
}

- (void)mergeWithCollection:(id)collection
{
  v69 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  items = [collectionCopy items];
  v6 = [items count];

  if (!v6)
  {
    v10 = 0;
    goto LABEL_19;
  }

  items2 = [(NTKPigmentCollection *)self items];
  v8 = [items2 mutableCopy];

  items3 = [collectionCopy items];
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __44__NTKPigmentCollection_mergeWithCollection___block_invoke;
  v66[3] = &unk_278781E38;
  v10 = v8;
  v67 = v10;
  [items3 enumerateObjectsUsingBlock:v66];

  config = [(NTKPigmentCollection *)self config];
  collectionOverride = [config collectionOverride];
  if ([collectionOverride length])
  {
    config2 = [collectionCopy config];
    collectionOverride2 = [config2 collectionOverride];
    v15 = [collectionOverride2 length];

    if (!v15)
    {
      config3 = [(NTKPigmentCollection *)self config];
      [config3 applyCollectionOverrideNameOnItems:v10];
      goto LABEL_8;
    }
  }

  else
  {
  }

  config3 = [collectionCopy config];
  collectionOverride3 = [config3 collectionOverride];
  config4 = [(NTKPigmentCollection *)self config];
  [config4 setCollectionOverride:collectionOverride3];

LABEL_8:
  config5 = [(NTKPigmentCollection *)self config];
  isAddable = [config5 isAddable];
  if (!isAddable)
  {
LABEL_17:

    goto LABEL_18;
  }

  v21 = isAddable;
  config6 = [collectionCopy config];
  isAddable2 = [config6 isAddable];

  if (!isAddable2)
  {
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    config5 = v10;
    v24 = [config5 countByEnumeratingWithState:&v62 objects:v68 count:16];
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
            objc_enumerationMutation(config5);
          }

          v28 = *(*(&v62 + 1) + 8 * i);
          config7 = [(NTKPigmentCollection *)self config];
          isAddable3 = [config7 isAddable];
          [v28 setIsAddable:{objc_msgSend(isAddable3, "BOOLValue")}];
        }

        v25 = [config5 countByEnumeratingWithState:&v62 objects:v68 count:16];
      }

      while (v25);
    }

    goto LABEL_17;
  }

LABEL_18:

LABEL_19:
  config8 = [(NTKPigmentCollection *)self config];

  if (!config8)
  {
    v32 = objc_alloc_init(NTKPigmentCollectionConfig);
    [(NTKPigmentCollection *)self setConfig:v32];
  }

  config9 = [collectionCopy config];
  defaultGalleryColorNames = [config9 defaultGalleryColorNames];

  if (defaultGalleryColorNames)
  {
    config10 = [collectionCopy config];
    defaultGalleryColorNames2 = [config10 defaultGalleryColorNames];
    config11 = [(NTKPigmentCollection *)self config];
    [config11 setDefaultGalleryColorNames:defaultGalleryColorNames2];

    config12 = [(NTKPigmentCollection *)self config];
    defaultGalleryColorNames3 = [config12 defaultGalleryColorNames];
    [(NTKPigmentCollection *)self setDefaultGalleryColorWithNames:defaultGalleryColorNames3];
  }

  config13 = [collectionCopy config];
  defaultColorOptionName = [config13 defaultColorOptionName];

  if (defaultColorOptionName)
  {
    config14 = [collectionCopy config];
    defaultColorOptionName2 = [config14 defaultColorOptionName];
    config15 = [(NTKPigmentCollection *)self config];
    [config15 setDefaultColorOptionName:defaultColorOptionName2];

    [(NTKPigmentCollection *)self setDefaultOption:0];
  }

  config16 = [collectionCopy config];
  exclusions = [config16 exclusions];

  if (exclusions)
  {
    config17 = [(NTKPigmentCollection *)self config];
    exclusions2 = [config17 exclusions];
    v49 = [exclusions arrayByAddingObjectsFromArray:exclusions2];
    config18 = [(NTKPigmentCollection *)self config];
    [config18 setExclusions:v49];
  }

  if (v10)
  {
    [(NTKPigmentCollection *)self setItems:v10];
    items4 = [(NTKPigmentCollection *)self items];
    [collectionCopy setItems:items4];
  }

  collections = [collectionCopy collections];
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __44__NTKPigmentCollection_mergeWithCollection___block_invoke_2;
  v61[3] = &unk_278781E10;
  v61[4] = self;
  [collections enumerateObjectsUsingBlock:v61];

  collections2 = [(NTKPigmentCollection *)self collections];
  [collectionCopy setCollections:collections2];

  config19 = [(NTKPigmentCollection *)self config];
  isAddable4 = [config19 isAddable];
  bOOLValue = [isAddable4 BOOLValue];

  if (bOOLValue)
  {
    allItems = [collectionCopy allItems];
    [allItems enumerateObjectsUsingBlock:&__block_literal_global_66];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  allItems = selfCopy->_allItems;
  selfCopy->_allItems = 0;

  faceSpecificPigmentsByFullname = selfCopy->_faceSpecificPigmentsByFullname;
  selfCopy->_faceSpecificPigmentsByFullname = 0;

  objc_sync_exit(selfCopy);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSString *)selfCopy->_collectionName copy];
  defaultOption = [(NTKPigmentCollection *)selfCopy defaultOption];
  v8 = [defaultOption copy];

  v9 = [(NSOrderedSet *)selfCopy->_items copy];
  v10 = [(NSArray *)selfCopy->_defaultGalleryColors copy];
  v11 = [(NSArray *)selfCopy->_collections copy];
  v12 = [(NTKPigmentCollectionConfig *)selfCopy->_config copy];
  shared = selfCopy->_shared;
  objc_sync_exit(selfCopy);

  if (equalCopy && ([equalCopy collectionName], v14 = objc_claimAutoreleasedReturnValue(), v15 = NTKEqualObjects(v6, v14), v14, v15) && shared == objc_msgSend(equalCopy, "isShared") && (objc_msgSend(equalCopy, "defaultOption"), v16 = objc_claimAutoreleasedReturnValue(), v17 = NTKEqualObjects(v8, v16), v16, v17))
  {
    v46 = v10;
    v18 = [v9 count];
    items = [equalCopy items];
    v20 = [items count];

    if (v18 != v20 || (v21 = [v46 count], objc_msgSend(equalCopy, "defaultGalleryColors"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "count"), v22, v21 != v23) || (v24 = objc_msgSend(v11, "count"), objc_msgSend(equalCopy, "collections"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "count"), v25, v24 != v26))
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
        items2 = [equalCopy items];
        v30 = [items2 objectAtIndexedSubscript:v27];
        v31 = [v28 isEqual:v30];

        if ((v31 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      while ([v9 count] > ++v27);
    }

    config = [equalCopy config];
    v33 = NTKEqualObjects(v12, config);

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
        collections = [equalCopy collections];
        v41 = [collections objectAtIndexedSubscript:v38];
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
      defaultGalleryColors = [equalCopy defaultGalleryColors];
      v37 = [defaultGalleryColors objectAtIndexedSubscript:v34];
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  items = [(NTKPigmentCollection *)selfCopy items];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __35__NTKPigmentCollection_description__block_invoke;
  v28[3] = &unk_278781E38;
  v6 = v4;
  v29 = v6;
  [items enumerateObjectsUsingBlock:v28];

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
  collections = [(NTKPigmentCollection *)selfCopy collections];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __35__NTKPigmentCollection_description__block_invoke_2;
  v26[3] = &unk_278781E10;
  v10 = v8;
  v27 = v10;
  [collections enumerateObjectsUsingBlock:v26];

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
  collectionName = [(NTKPigmentCollection *)selfCopy collectionName];
  config = [(NTKPigmentCollection *)selfCopy config];
  exclusions = [config exclusions];
  v13 = [exclusions count];
  if (v13)
  {
    v14 = MEMORY[0x277CCACA8];
    config2 = [(NTKPigmentCollection *)selfCopy config];
    exclusions2 = [config2 exclusions];
    ntk_flatDescription = [exclusions2 ntk_flatDescription];
    v15 = [v14 stringWithFormat:@", exclusions: %@", ntk_flatDescription];
  }

  else
  {
    v15 = &stru_284110E98;
  }

  config3 = [(NTKPigmentCollection *)selfCopy config];
  excludesDuotone = [config3 excludesDuotone];
  v18 = @", excludesDuotone";
  if (!excludesDuotone)
  {
    v18 = &stru_284110E98;
  }

  v19 = [v23 stringWithFormat:@"%@ [items: %@, collections: %@%@%@]", collectionName, v6, v10, v15, v18];

  if (v13)
  {
  }

  objc_sync_exit(selfCopy);

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

+ (id)collectionFromProtoBuffer:(id)buffer sharedCollections:(id)collections
{
  bufferCopy = buffer;
  collectionsCopy = collections;
  name = [bufferCopy name];
  v8 = [name length];

  if (v8)
  {
    if ([bufferCopy isStub])
    {
      if (collectionsCopy && ([bufferCopy name], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(collectionsCopy, "objectForKeyedSubscript:", v9), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
      {
        name2 = [bufferCopy name];
        v12 = [collectionsCopy objectForKeyedSubscript:name2];

        if (v12)
        {
          goto LABEL_19;
        }

        name3 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
        if (os_log_type_enabled(name3, OS_LOG_TYPE_ERROR))
        {
          [NTKPigmentCollection collectionFromProtoBuffer:bufferCopy sharedCollections:?];
        }
      }

      else
      {
        name3 = [bufferCopy name];
        v12 = [NTKPigmentCollection stubCollectionWithName:name3];
      }

      goto LABEL_18;
    }

    v15 = [NTKPigmentCollection alloc];
    name4 = [bufferCopy name];
    v12 = [(NTKPigmentCollection *)v15 initWithName:name4];

    *(v12 + 32) = [bufferCopy isShared];
    *(v12 + 33) = [bufferCopy isStub];
    config = [bufferCopy config];
    v18 = [NTKPigmentCollectionConfig collectionConfigFromProtoBuffer:config];
    v19 = *(v12 + 72);
    *(v12 + 72) = v18;

    v20 = [NTKPigmentEditOption alloc];
    defaultOption = [bufferCopy defaultOption];
    v22 = [(NTKPigmentEditOption *)v20 initWithProtoBuffer:defaultOption];
    v23 = *(v12 + 56);
    *(v12 + 56) = v22;

    items = [bufferCopy items];

    if (items)
    {
      v25 = [objc_alloc(MEMORY[0x277CBEB40]) initWithCapacity:{objc_msgSend(bufferCopy, "itemsCount")}];
      items2 = [bufferCopy items];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __68__NTKPigmentCollection_collectionFromProtoBuffer_sharedCollections___block_invoke;
      v50[3] = &unk_278781E80;
      v51 = v25;
      v52 = bufferCopy;
      v27 = v25;
      [items2 enumerateObjectsUsingBlock:v50];

      v28 = [v27 copy];
      [v12 setItems:v28];
    }

    defaultGalleryColors = [bufferCopy defaultGalleryColors];

    if (defaultGalleryColors)
    {
      v30 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(bufferCopy, "defaultGalleryColorsCount")}];
      defaultGalleryColors2 = [bufferCopy defaultGalleryColors];
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __68__NTKPigmentCollection_collectionFromProtoBuffer_sharedCollections___block_invoke_33;
      v47[3] = &unk_278781E80;
      v48 = v30;
      v49 = bufferCopy;
      v32 = v30;
      [defaultGalleryColors2 enumerateObjectsUsingBlock:v47];

      v33 = [v32 copy];
      v34 = *(v12 + 80);
      *(v12 + 80) = v33;
    }

    collections = [bufferCopy collections];

    if (collections)
    {
      v36 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(bufferCopy, "collectionsCount")}];
      collections2 = [bufferCopy collections];
      v41 = MEMORY[0x277D85DD0];
      v42 = 3221225472;
      v43 = __68__NTKPigmentCollection_collectionFromProtoBuffer_sharedCollections___block_invoke_34;
      v44 = &unk_278781EA8;
      v45 = collectionsCopy;
      v46 = v36;
      name3 = v36;
      [collections2 enumerateObjectsUsingBlock:&v41];

      v38 = [name3 copy:v41];
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
      [NTKPigmentCollection collectionFromProtoBuffer:bufferCopy sharedCollections:v14];
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

- (id)protoBufferIgnoringSharedCollections:(BOOL)collections
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_alloc_init(NTKProtoPigmentCollection);
  [(NTKProtoPigmentCollection *)v5 setIsShared:selfCopy->_shared];
  [(NTKProtoPigmentCollection *)v5 setIsStub:selfCopy->_stub];
  [(NTKProtoPigmentCollection *)v5 setName:selfCopy->_collectionName];
  protoBuffer = [(NTKPigmentCollectionConfig *)selfCopy->_config protoBuffer];
  [(NTKProtoPigmentCollection *)v5 setConfig:protoBuffer];

  defaultOption = [(NTKPigmentCollection *)selfCopy defaultOption];
  protoBuffer2 = [defaultOption protoBuffer];
  [(NTKProtoPigmentCollection *)v5 setDefaultOption:protoBuffer2];

  items = selfCopy->_items;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __61__NTKPigmentCollection_protoBufferIgnoringSharedCollections___block_invoke;
  v23[3] = &unk_278781E38;
  v10 = v5;
  v24 = v10;
  [(NSOrderedSet *)items enumerateObjectsUsingBlock:v23];
  defaultGalleryColors = selfCopy->_defaultGalleryColors;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __61__NTKPigmentCollection_protoBufferIgnoringSharedCollections___block_invoke_2;
  v21[3] = &unk_278781E38;
  v12 = v10;
  v22 = v12;
  [(NSArray *)defaultGalleryColors enumerateObjectsUsingBlock:v21];
  collections = selfCopy->_collections;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __61__NTKPigmentCollection_protoBufferIgnoringSharedCollections___block_invoke_3;
  v18[3] = &unk_278781ED0;
  v14 = v12;
  v19 = v14;
  collectionsCopy = collections;
  [(NSArray *)collections enumerateObjectsUsingBlock:v18];
  v15 = v19;
  v16 = v14;

  objc_sync_exit(selfCopy);

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

- (void)fulfillWithSharedCollections:(id)collections
{
  collectionsCopy = collections;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  collections = [(NTKPigmentCollection *)selfCopy collections];
  v6 = [collections mutableCopy];

  for (i = 0; ; ++i)
  {
    collections2 = [(NTKPigmentCollection *)selfCopy collections];
    v9 = [collections2 count];

    if (v9 <= i)
    {
      break;
    }

    collections3 = [(NTKPigmentCollection *)selfCopy collections];
    v11 = [collections3 objectAtIndexedSubscript:i];

    if ([v11 isStub])
    {
      collectionName = [v11 collectionName];
      if (collectionName)
      {
        collectionName2 = [v11 collectionName];
        v14 = [collectionsCopy objectForKeyedSubscript:collectionName2];

        if (v14)
        {
          collectionName3 = [v11 collectionName];
          v16 = [collectionsCopy objectForKeyedSubscript:collectionName3];
          [v6 setObject:v16 atIndexedSubscript:i];
        }
      }
    }
  }

  [(NTKPigmentCollection *)selfCopy setCollections:v6];

  objc_sync_exit(selfCopy);
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