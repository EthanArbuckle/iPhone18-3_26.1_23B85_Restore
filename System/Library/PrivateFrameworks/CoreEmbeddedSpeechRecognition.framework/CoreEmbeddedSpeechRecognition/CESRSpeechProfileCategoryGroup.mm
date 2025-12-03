@interface CESRSpeechProfileCategoryGroup
+ (id)_addAssociatedSpeechCategories:(id)categories;
+ (id)_all;
+ (id)all;
+ (id)groupForSets:(id)sets;
+ (id)groupForSpeechCategories:(id)categories;
+ (id)mergeGroups:(id)groups;
+ (void)_buildCaches;
+ (void)_buildCachesFromBaseMap:(id)map;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSpeechCategoryGroup:(id)group;
- (CESRSpeechProfileCategoryGroup)initWithItemTypes:(id)types speechCategories:(id)categories;
- (id)description;
- (id)speechCategoriesDescription;
@end

@implementation CESRSpeechProfileCategoryGroup

- (BOOL)isEqualToSpeechCategoryGroup:(id)group
{
  groupCopy = group;
  itemTypes = self->_itemTypes;
  itemTypes = [groupCopy itemTypes];
  if ([(NSSet *)itemTypes isEqual:itemTypes])
  {
    speechCategories = self->_speechCategories;
    speechCategories = [groupCopy speechCategories];
    v9 = [(NSSet *)speechCategories isEqual:speechCategories];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CESRSpeechProfileCategoryGroup *)self isEqualToSpeechCategoryGroup:v5];
  }

  return v6;
}

- (id)speechCategoriesDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = _speechCategoriesDescription(self->_speechCategories);
  v4 = [v2 stringWithFormat:@"[%@]", v3];

  return v4;
}

- (id)description
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = self->_itemTypes;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSSet count](v4, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [(NSSet *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        unsignedShortValue = [*(*(&v18 + 1) + 8 * i) unsignedShortValue];
        v12 = [MEMORY[0x277D21178] descriptionForTypeIdentifier:unsignedShortValue];
        [v5 addObject:v12];
      }

      v8 = [(NSSet *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v13 = [v5 componentsJoinedByString:{@", "}];

  v14 = _speechCategoriesDescription(self->_speechCategories);
  v15 = [v3 stringWithFormat:@"{itemTypes: [%@], speechCategories: [%@]}", v13, v14, v18];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (CESRSpeechProfileCategoryGroup)initWithItemTypes:(id)types speechCategories:(id)categories
{
  v22 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  categoriesCopy = categories;
  v17.receiver = self;
  v17.super_class = CESRSpeechProfileCategoryGroup;
  v9 = [(CESRSpeechProfileCategoryGroup *)&v17 init];
  v10 = v9;
  if (!v9 || (objc_storeStrong(&v9->_itemTypes, types), objc_storeStrong(&v10->_speechCategories, categories), v10->_itemTypes) && v10->_speechCategories)
  {
    v11 = v10;
  }

  else
  {
    v12 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v15 = v12;
      v16 = [(CESRSpeechProfileCategoryGroup *)v10 description];
      *buf = 136315394;
      v19 = "[CESRSpeechProfileCategoryGroup initWithItemTypes:speechCategories:]";
      v20 = 2112;
      v21 = v16;
      _os_log_error_impl(&dword_225EEB000, v15, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
    }

    v11 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (id)mergeGroups:(id)groups
{
  v24 = *MEMORY[0x277D85DE8];
  groupsCopy = groups;
  if ([groupsCopy count] == 1)
  {
    firstObject = [groupsCopy firstObject];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = groupsCopy;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          itemTypes = [v12 itemTypes];
          allObjects = [itemTypes allObjects];
          [v5 addObjectsFromArray:allObjects];

          speechCategories = [v12 speechCategories];
          allObjects2 = [speechCategories allObjects];
          [v6 addObjectsFromArray:allObjects2];
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    firstObject = [[CESRSpeechProfileCategoryGroup alloc] initWithItemTypes:v5 speechCategories:v6];
  }

  v17 = *MEMORY[0x277D85DE8];

  return firstObject;
}

+ (id)_all
{
  [objc_opt_class() _buildCaches];
  v2 = MEMORY[0x277CBEB98];
  allKeys = [speechCategoryToItemTypeCache allKeys];
  v4 = [v2 setWithArray:allKeys];

  v5 = MEMORY[0x277CBEB98];
  allKeys2 = [itemTypeToSpeechCategoryCache allKeys];
  v7 = [v5 setWithArray:allKeys2];

  v8 = [objc_alloc(objc_opt_class()) initWithItemTypes:v7 speechCategories:v4];

  return v8;
}

+ (id)all
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__CESRSpeechProfileCategoryGroup_all__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (all_onceToken != -1)
  {
    dispatch_once(&all_onceToken, block);
  }

  v2 = all_all;

  return v2;
}

uint64_t __37__CESRSpeechProfileCategoryGroup_all__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_opt_class() _all];
  v3 = all_all;
  all_all = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

+ (id)_addAssociatedSpeechCategories:(id)categories
{
  v3 = [MEMORY[0x277CBEB58] setWithSet:categories];
  if (([v3 containsObject:@"\\NT-contact"] & 1) != 0 || objc_msgSend(v3, "containsObject:", @"\\NT-appcontact"))
  {
    [v3 addObject:@"\\NT-contact"];
    [v3 addObject:@"\\NT-appcontact"];
  }

  return v3;
}

+ (id)groupForSpeechCategories:(id)categories
{
  v26 = *MEMORY[0x277D85DE8];
  categoriesCopy = categories;
  [objc_opt_class() _buildCaches];
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = [CESRSpeechProfileCategoryGroup _addAssociatedSpeechCategories:categoriesCopy];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [speechCategoryToItemTypeCache objectForKey:{*(*(&v17 + 1) + 8 * i), v17}];
        [v4 unionSet:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v8);
  }

  if (![v4 count])
  {
    v12 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "+[CESRSpeechProfileCategoryGroup groupForSpeechCategories:]";
      v23 = 2112;
      v24 = v6;
      _os_log_error_impl(&dword_225EEB000, v12, OS_LOG_TYPE_ERROR, "%s Categories (%@) matched no item types", buf, 0x16u);
    }

    v13 = [MEMORY[0x277CBEB98] set];

    v6 = v13;
  }

  v14 = [objc_alloc(objc_opt_class()) initWithItemTypes:v4 speechCategories:v6];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)groupForSets:(id)sets
{
  v35 = *MEMORY[0x277D85DE8];
  setsCopy = sets;
  selfCopy = self;
  [objc_opt_class() _buildCaches];
  v23 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = setsCopy;
  v6 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v24 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(*(*(&v29 + 1) + 8 * i), "itemType", selfCopy)}];
        v10 = [itemTypeToSpeechCategoryCache objectForKey:v9];
        v11 = [CESRSpeechProfileCategoryGroup _addAssociatedSpeechCategories:v10];

        if ([v11 count])
        {
          [v23 unionSet:v11];
          [v5 addObject:v9];
        }

        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v12 = v11;
        v13 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v26;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v26 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = [speechCategoryToItemTypeCache objectForKey:*(*(&v25 + 1) + 8 * j)];
              if (v17)
              {
                [v5 unionSet:v17];
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v14);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v7);
  }

  v18 = [objc_alloc(objc_opt_class()) initWithItemTypes:v5 speechCategories:v23];
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (void)_buildCaches
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__CESRSpeechProfileCategoryGroup__buildCaches__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_buildCaches_onceToken[0] != -1)
  {
    dispatch_once(_buildCaches_onceToken, block);
  }
}

void __46__CESRSpeechProfileCategoryGroup__buildCaches__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  v3 = +[CESRSpeechProfileBuilder categoryToFieldTypeMap];
  [v2 _buildCachesFromBaseMap:v3];
}

+ (void)_buildCachesFromBaseMap:(id)map
{
  v42 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(mapCopy, "count")}];
  v5 = speechCategoryToItemTypeCache;
  speechCategoryToItemTypeCache = v4;

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = itemTypeToSpeechCategoryCache;
  itemTypeToSpeechCategoryCache = v6;

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [mapCopy allKeys];
  v25 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v25)
  {
    v24 = *v33;
    do
    {
      v8 = 0;
      do
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v8;
        v9 = *(*(&v32 + 1) + 8 * v8);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v10 = [mapCopy objectForKey:v9];
        v11 = [v10 countByEnumeratingWithState:&v28 objects:v40 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = 0;
          v14 = *v29;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v29 != v14)
              {
                objc_enumerationMutation(v10);
              }

              unsignedShortValue = [*(*(&v28 + 1) + 8 * i) unsignedShortValue];
              v27 = 0;
              v17 = [MEMORY[0x277D21178] itemTypeForFieldType:unsignedShortValue error:&v27];
              v18 = v27;
              if (v17)
              {
                v19 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v17];
                if (!v13)
                {
                  v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
                  [speechCategoryToItemTypeCache setObject:v13 forKey:v9];
                }

                [v13 addObject:v19];
                v20 = [itemTypeToSpeechCategoryCache objectForKey:v19];
                if (!v20)
                {
                  v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
                  [itemTypeToSpeechCategoryCache setObject:v20 forKey:v19];
                }

                [v20 addObject:v9];
              }

              else
              {
                v21 = *MEMORY[0x277CEF0E8];
                if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  v37 = "+[CESRSpeechProfileCategoryGroup _buildCachesFromBaseMap:]";
                  v38 = 2112;
                  v39 = v18;
                  _os_log_error_impl(&dword_225EEB000, v21, OS_LOG_TYPE_ERROR, "%s Failed to resolve item type for field type, error: %@", buf, 0x16u);
                }
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v28 objects:v40 count:16];
          }

          while (v12);
        }

        else
        {
          v13 = 0;
        }

        v8 = v26 + 1;
      }

      while (v26 + 1 != v25);
      v25 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v25);
  }

  v22 = *MEMORY[0x277D85DE8];
}

@end