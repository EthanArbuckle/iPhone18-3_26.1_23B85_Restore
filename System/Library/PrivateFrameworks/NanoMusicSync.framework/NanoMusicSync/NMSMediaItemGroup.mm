@interface NMSMediaItemGroup
+ (NMSMediaItemGroup)itemGroupWithQuotaRefObj:(id)obj;
+ (id)_itemsForContainerClass:(Class)class containerIDs:(id)ds includingNonLibraryContent:(BOOL)content includingDownloadedContentOnly:(BOOL)only manuallyAdded:(BOOL)added;
+ (id)sharedLibraryRequestQueue;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToContainer:(id)container;
- (NMSMediaItemGroup)initWithType:(unint64_t)type refObj:(id)obj manuallyAdded:(BOOL)added quotaRefObj:(id)refObj downloadedItemsOnly:(BOOL)only;
- (id)description;
- (id)identifiers;
- (id)identifiersForContainerType:(unint64_t)type;
- (id)itemList;
- (unint64_t)hash;
- (void)itemList;
@end

@implementation NMSMediaItemGroup

+ (id)sharedLibraryRequestQueue
{
  if (sharedLibraryRequestQueue_onceToken != -1)
  {
    +[NMSMediaItemGroup sharedLibraryRequestQueue];
  }

  v3 = sharedLibraryRequestQueue_sharedQueue;

  return v3;
}

uint64_t __46__NMSMediaItemGroup_sharedLibraryRequestQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v1 = sharedLibraryRequestQueue_sharedQueue;
  sharedLibraryRequestQueue_sharedQueue = v0;

  [sharedLibraryRequestQueue_sharedQueue setMaxConcurrentOperationCount:4];
  [sharedLibraryRequestQueue_sharedQueue setName:@"com.apple.NanoMusicSync.NMSMediaItemGroup.LibraryRequestQueue"];
  v2 = sharedLibraryRequestQueue_sharedQueue;

  return [v2 setQualityOfService:-1];
}

- (NMSMediaItemGroup)initWithType:(unint64_t)type refObj:(id)obj manuallyAdded:(BOOL)added quotaRefObj:(id)refObj downloadedItemsOnly:(BOOL)only
{
  objCopy = obj;
  refObjCopy = refObj;
  v21.receiver = self;
  v21.super_class = NMSMediaItemGroup;
  v15 = [(NMSMediaItemGroup *)&v21 init];
  v16 = v15;
  if (v15)
  {
    v15->_type = type;
    objc_storeStrong(&v15->_referenceObj, obj);
    v16->_manuallyAdded = added;
    if (!refObjCopy)
    {
      v17 = NMLogForCategory(5);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [NMSMediaItemGroup initWithType:refObj:manuallyAdded:quotaRefObj:downloadedItemsOnly:];
      }
    }

    v18 = objc_alloc_init(NMSMediaContainerQuotaData);
    quotaData = v16->_quotaData;
    v16->_quotaData = v18;

    [(NMSMediaContainerQuotaData *)v16->_quotaData setQuotaRefObj:refObjCopy];
    v16->_downloadedItemsOnly = only;
  }

  return v16;
}

- (BOOL)isEqualToContainer:(id)container
{
  containerCopy = container;
  type = [(NMSMediaItemGroup *)self type];
  if (type == [containerCopy type])
  {
    referenceObj = [(NMSMediaItemGroup *)self referenceObj];
    referenceObj2 = [containerCopy referenceObj];
    v8 = [referenceObj isEqual:referenceObj2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(NMSMediaItemGroup *)self isEqualToContainer:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  referenceObj = [(NMSMediaItemGroup *)self referenceObj];
  v3 = [referenceObj hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = NMSMediaItemGroup;
  v4 = [(NMSMediaItemGroup *)&v9 description];
  type = [(NMSMediaItemGroup *)self type];
  referenceObj = [(NMSMediaItemGroup *)self referenceObj];
  v7 = [v3 stringWithFormat:@"<%@ type:%tu, refObj:%@>", v4, type, referenceObj];

  return v7;
}

- (id)identifiers
{
  type = [(NMSMediaItemGroup *)self type];

  return [(NMSMediaItemGroup *)self identifiersForContainerType:type];
}

- (id)identifiersForContainerType:(unint64_t)type
{
  v3 = NMLogForCategory(5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [NMSMediaItemGroup identifiersForContainerType:];
  }

  return 0;
}

- (id)itemList
{
  type = [(NMSMediaItemGroup *)self type];
  if (type - 2 >= 6)
  {
    if (type == 1)
    {
      v15 = objc_opt_class();
      v16 = objc_opt_class();
      identifiers = [(NMSMediaItemGroup *)self identifiers];
      downloadedItemsOnly = [(NMSMediaItemGroup *)self downloadedItemsOnly];
      manuallyAdded = [(NMSMediaItemGroup *)self manuallyAdded];
      v11 = v15;
      v12 = v16;
      v13 = identifiers;
      v14 = 0;
    }

    else
    {
      if (type)
      {
        array = 0;
        goto LABEL_11;
      }

      v6 = objc_opt_class();
      v7 = objc_opt_class();
      identifiers = [(NMSMediaItemGroup *)self identifiers];
      downloadedItemsOnly = [(NMSMediaItemGroup *)self downloadedItemsOnly];
      manuallyAdded = [(NMSMediaItemGroup *)self manuallyAdded];
      v11 = v6;
      v12 = v7;
      v13 = identifiers;
      v14 = 1;
    }

    array = [v11 _itemsForContainerClass:v12 containerIDs:v13 includingNonLibraryContent:v14 includingDownloadedContentOnly:downloadedItemsOnly manuallyAdded:manuallyAdded];

    goto LABEL_11;
  }

  v4 = NMLogForCategory(5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [NMSMediaItemGroup itemList];
  }

  array = [MEMORY[0x277CBEA60] array];
LABEL_11:

  return array;
}

+ (id)_itemsForContainerClass:(Class)class containerIDs:(id)ds includingNonLibraryContent:(BOOL)content includingDownloadedContentOnly:(BOOL)only manuallyAdded:(BOOL)added
{
  addedCopy = added;
  v94 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v9 = dsCopy;
  v78 = [v9 countByEnumeratingWithState:&v87 objects:v93 count:16];
  if (v78)
  {
    v76 = *MEMORY[0x277D2B578];
    v77 = *v88;
    v75 = *MEMORY[0x277D2B500];
    v68 = *MEMORY[0x277D2B570];
    v74 = *MEMORY[0x277D2B510];
    v65 = v84;
    v66 = *MEMORY[0x277D2B528];
    v10 = 0x277D2B000uLL;
    v71 = *MEMORY[0x277D2B530];
    v73 = *MEMORY[0x277D2B538];
    v72 = *MEMORY[0x277D2B520];
    v79 = *MEMORY[0x277D2B588];
    v67 = v9;
    classCopy = class;
    do
    {
      for (i = 0; i != v78; ++i)
      {
        if (*v88 != v77)
        {
          objc_enumerationMutation(v9);
        }

        v12 = *(*(&v87 + 1) + 8 * i);
        array = [MEMORY[0x277CBEB18] array];
        v14 = [*(v10 + 1472) predicateWithProperty:v76 value:MEMORY[0x277CBEC28] comparison:1];
        [array addObject:v14];

        v15 = MEMORY[0x277D2B608];
        v16 = [MEMORY[0x277D2B5D8] predicateWithProperty:v75 values:&unk_286C8D400];
        v17 = [v15 predicateWithPredicate:v16];
        [array addObject:v17];

        defaultManager = [MEMORY[0x277D7FA28] defaultManager];
        ageVerificationState = [defaultManager ageVerificationState];
        status = [ageVerificationState status];

        if (status == 2)
        {
          v21 = [*(v10 + 1472) predicateWithProperty:v68 value:MEMORY[0x277CBEC28] comparison:1];
          [array addObject:v21];
        }

        v22 = v74;
        v23 = objc_opt_class();
        v24 = v73;
        if (v23 == class || (v25 = objc_opt_class(), v24 = v71, v25 == class) || (v26 = objc_opt_class(), v24 = v66, v26 == class))
        {
          v27 = v24;

          v22 = v27;
        }

        else
        {
          objc_opt_class();
        }

        v28 = *(v10 + 1472);
        library = [v12 library];
        v30 = [v28 predicateWithProperty:v22 equalToInt64:{objc_msgSend(library, "persistentID")}];
        [array addObject:v30];

        v31 = MEMORY[0x277D2B5A8];
        v32 = [array copy];
        v33 = [v31 predicateMatchingPredicates:v32];

        v34 = MEMORY[0x277D2B620];
        autoupdatingSharedLibrary = [MEMORY[0x277D2B5F8] autoupdatingSharedLibrary];
        if (content)
        {
          [v34 allItemsQueryWithLibrary:autoupdatingSharedLibrary predicate:v33 orderingTerms:0 usingSections:0];
        }

        else
        {
          [v34 queryWithLibrary:autoupdatingSharedLibrary predicate:v33];
        }
        v36 = ;

        v82 = v36;
        v37 = [v36 valueForAggregateFunction:v72 onEntitiesForProperty:v79];
        unsignedLongLongValue = [v37 unsignedLongLongValue];

        v39 = MEMORY[0x277D2B5A8];
        v92[0] = v33;
        v40 = [*(v10 + 1472) predicateWithProperty:v79 value:&unk_286C8D760 comparison:1];
        v92[1] = v40;
        v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:2];
        v42 = [v39 predicateMatchingPredicates:v41];

        v43 = MEMORY[0x277D2B620];
        autoupdatingSharedLibrary2 = [MEMORY[0x277D2B5F8] autoupdatingSharedLibrary];
        if (content)
        {
          [v43 allItemsQueryWithLibrary:autoupdatingSharedLibrary2 predicate:v42 orderingTerms:0 usingSections:0];
        }

        else
        {
          [v43 queryWithLibrary:autoupdatingSharedLibrary2 predicate:v42];
        }
        v45 = ;

        v46 = unsignedLongLongValue + 7000000 * [v45 countOfEntities];
        if (v46)
        {
          if (objc_opt_class() == classCopy)
          {
            v49 = [NMSDownloadableItem alloc];
            v50 = MEMORY[0x277CCABB0];
            library2 = [v12 library];
            v51 = [v50 numberWithLongLong:{objc_msgSend(library2, "persistentID")}];
            v52 = v49;
            v53 = v51;
            v54 = v46;
            v55 = 3;
          }

          else if (objc_opt_class() == classCopy)
          {
            v56 = [NMSDownloadableItem alloc];
            v57 = MEMORY[0x277CCABB0];
            library2 = [v12 library];
            v51 = [v57 numberWithLongLong:{objc_msgSend(library2, "persistentID")}];
            v52 = v56;
            v53 = v51;
            v54 = v46;
            v55 = 4;
          }

          else
          {
            if (objc_opt_class() != classCopy)
            {
              if (objc_opt_class() != classCopy)
              {
                goto LABEL_30;
              }

              v91 = v79;
              v47 = [MEMORY[0x277CBEA60] arrayWithObjects:&v91 count:1];
              v83[0] = MEMORY[0x277D85DD0];
              v83[1] = 3221225472;
              v84[0] = __130__NMSMediaItemGroup__itemsForContainerClass_containerIDs_includingNonLibraryContent_includingDownloadedContentOnly_manuallyAdded___block_invoke;
              v84[1] = &unk_27993EBE0;
              v85 = orderedSet;
              v86 = addedCopy;
              [v82 enumeratePersistentIDsAndProperties:v47 usingBlock:v83];

              library2 = v85;
              goto LABEL_29;
            }

            v58 = [NMSDownloadableItem alloc];
            v59 = MEMORY[0x277CCABB0];
            library2 = [v12 library];
            v51 = [v59 numberWithLongLong:{objc_msgSend(library2, "persistentID")}];
            v52 = v58;
            v53 = v51;
            v54 = v46;
            v55 = 0;
          }

          v60 = [(NMSDownloadableItem *)v52 initWithMediaLibraryIdentifier:v53 externalLibraryIdentifier:0 size:v54 itemType:v55 manuallyAdded:addedCopy];
          [orderedSet addObject:v60];

          v9 = v67;
LABEL_29:
        }

LABEL_30:

        class = classCopy;
        v10 = 0x277D2B000;
      }

      v78 = [v9 countByEnumeratingWithState:&v87 objects:v93 count:16];
    }

    while (v78);
  }

  v61 = NMLogForCategory(5);
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
  {
    [NMSMediaItemGroup _itemsForContainerClass:orderedSet containerIDs:v9 includingNonLibraryContent:v61 includingDownloadedContentOnly:? manuallyAdded:?];
  }

  array2 = [orderedSet array];

  v63 = *MEMORY[0x277D85DE8];

  return array2;
}

void __130__NMSMediaItemGroup__itemsForContainerClass_containerIDs_includingNonLibraryContent_includingDownloadedContentOnly_manuallyAdded___block_invoke(uint64_t a1, uint64_t a2, id *a3)
{
  v5 = [*a3 unsignedIntegerValue];
  v6 = *(a1 + 32);
  v7 = [NMSDownloadableItem alloc];
  v9 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  v8 = [(NMSDownloadableItem *)v7 initWithMediaLibraryIdentifier:v9 externalLibraryIdentifier:0 size:v5 itemType:0 manuallyAdded:*(a1 + 40)];
  [v6 addObject:v8];
}

+ (NMSMediaItemGroup)itemGroupWithQuotaRefObj:(id)obj
{
  objCopy = obj;
  v4 = [(NMSMediaItemGroup *)[NMSRecommendationMediaItemGroup alloc] initWithType:6 refObj:objCopy manuallyAdded:0 quotaRefObj:objCopy downloadedItemsOnly:0];

  return v4;
}

- (void)initWithType:refObj:manuallyAdded:quotaRefObj:downloadedItemsOnly:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)identifiersForContainerType:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v4[0] = 138413058;
  OUTLINED_FUNCTION_0_0();
  v5 = "[NMSMediaItemGroup identifiersForContainerType:]";
  v6 = 2048;
  v7 = v0;
  v8 = 2114;
  v9 = v1;
  _os_log_error_impl(&dword_25B27B000, v2, OS_LOG_TYPE_ERROR, "%@ %s No identifiers for type (%lu): %{public}@", v4, 0x2Au);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)itemList
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_itemsForContainerClass:(NSObject *)a3 containerIDs:includingNonLibraryContent:includingDownloadedContentOnly:manuallyAdded:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  [a1 count];
  v8[0] = 138413314;
  OUTLINED_FUNCTION_0_0();
  v9 = "+[NMSMediaItemGroup _itemsForContainerClass:containerIDs:includingNonLibraryContent:includingDownloadedContentOnly:manuallyAdded:]";
  v10 = 2048;
  v11 = v6;
  v12 = 2114;
  v13 = a2;
  v14 = 2114;
  v15 = a1;
  _os_log_debug_impl(&dword_25B27B000, a3, OS_LOG_TYPE_DEBUG, "%@ %s NMSMediaItemGroup: Fetched %tu items %{public}@, items @ %{public}@", v8, 0x34u);
  v7 = *MEMORY[0x277D85DE8];
}

@end