@interface ICCoreDataCoreSpotlightDelegate
- (BOOL)shouldIndexableObjectExistInIndexing:(id)indexing;
- (id)attributeSetForObject:(id)object;
- (id)initForStoreWithDescription:(id)description coordinator:(id)coordinator indexingPriority:(unint64_t)priority;
- (void)dealloc;
- (void)startSpotlightIndexing;
- (void)stopSpotlightIndexing;
@end

@implementation ICCoreDataCoreSpotlightDelegate

- (id)initForStoreWithDescription:(id)description coordinator:(id)coordinator indexingPriority:(unint64_t)priority
{
  v7.receiver = self;
  v7.super_class = ICCoreDataCoreSpotlightDelegate;
  result = [(NSCoreDataCoreSpotlightDelegate *)&v7 initForStoreWithDescription:description coordinator:coordinator];
  if (result)
  {
    *(result + 16) = priority;
  }

  return result;
}

- (void)dealloc
{
  [(ICCoreDataCoreSpotlightDelegate *)self stopSpotlightIndexing];
  v3.receiver = self;
  v3.super_class = ICCoreDataCoreSpotlightDelegate;
  [(NSCoreDataCoreSpotlightDelegate *)&v3 dealloc];
}

- (void)startSpotlightIndexing
{
  v2.receiver = self;
  v2.super_class = ICCoreDataCoreSpotlightDelegate;
  [(NSCoreDataCoreSpotlightDelegate *)&v2 startSpotlightIndexing];
}

- (void)stopSpotlightIndexing
{
  v2.receiver = self;
  v2.super_class = ICCoreDataCoreSpotlightDelegate;
  [(NSCoreDataCoreSpotlightDelegate *)&v2 stopSpotlightIndexing];
}

- (BOOL)shouldIndexableObjectExistInIndexing:(id)indexing
{
  indexingCopy = indexing;
  if ([indexingCopy isDeleted])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [indexingCopy isHiddenFromSearch] ^ 1;
  }

  return v4;
}

- (id)attributeSetForObject:(id)object
{
  objectCopy = object;
  if ([objectCopy conformsToProtocol:&unk_1F4FEEE20])
  {
    v5 = objectCopy;
    v6 = [(ICCoreDataCoreSpotlightDelegate *)self shouldIndexableObjectExistInIndexing:v5];
    dataSourceIdentifier = os_log_create("com.apple.notes", "SearchIndexer");
    v8 = os_log_type_enabled(dataSourceIdentifier, OS_LOG_TYPE_DEBUG);
    if (v6)
    {
      if (v8)
      {
        [ICCoreDataCoreSpotlightDelegate attributeSetForObject:v5];
      }

      searchableItemAttributeSet = [v5 searchableItemAttributeSet];
      searchIndexingIdentifier = [v5 searchIndexingIdentifier];
      [searchableItemAttributeSet setUniqueIdentifier:searchIndexingIdentifier];

      distantFuture = [MEMORY[0x1E695DF00] distantFuture];
      [searchableItemAttributeSet setExpirationDate:distantFuture];

      searchDomainIdentifier = [v5 searchDomainIdentifier];
      [searchableItemAttributeSet setDomainIdentifier:searchDomainIdentifier];

      dataSourceIdentifier = [v5 dataSourceIdentifier];
      [searchableItemAttributeSet setIc_dataSourceIdentifier:dataSourceIdentifier];
    }

    else
    {
      if (v8)
      {
        [ICCoreDataCoreSpotlightDelegate attributeSetForObject:v5];
      }

      searchableItemAttributeSet = 0;
    }
  }

  else
  {
    v5 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [ICCoreDataCoreSpotlightDelegate attributeSetForObject:v5];
    }

    searchableItemAttributeSet = 0;
  }

  return searchableItemAttributeSet;
}

- (void)attributeSetForObject:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 searchIndexingIdentifier];
  OUTLINED_FUNCTION_0_2(&dword_1D4576000, v2, v3, "-attributeSetForObject: NO need to index ICSearchIndexable: %@", v4, v5, v6, v7, 2u);
}

- (void)attributeSetForObject:(void *)a1 .cold.3(void *a1)
{
  v1 = [a1 searchIndexingIdentifier];
  OUTLINED_FUNCTION_0_2(&dword_1D4576000, v2, v3, "-attributeSetForObject: need to index ICSearchIndexable: %@", v4, v5, v6, v7, 2u);
}

@end