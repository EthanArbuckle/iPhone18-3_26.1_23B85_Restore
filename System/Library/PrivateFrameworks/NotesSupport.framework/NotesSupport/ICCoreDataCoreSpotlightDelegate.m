@interface ICCoreDataCoreSpotlightDelegate
- (BOOL)shouldIndexableObjectExistInIndexing:(id)a3;
- (id)attributeSetForObject:(id)a3;
- (id)initForStoreWithDescription:(id)a3 coordinator:(id)a4 indexingPriority:(unint64_t)a5;
- (void)dealloc;
- (void)startSpotlightIndexing;
- (void)stopSpotlightIndexing;
@end

@implementation ICCoreDataCoreSpotlightDelegate

- (id)initForStoreWithDescription:(id)a3 coordinator:(id)a4 indexingPriority:(unint64_t)a5
{
  v7.receiver = self;
  v7.super_class = ICCoreDataCoreSpotlightDelegate;
  result = [(NSCoreDataCoreSpotlightDelegate *)&v7 initForStoreWithDescription:a3 coordinator:a4];
  if (result)
  {
    *(result + 16) = a5;
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

- (BOOL)shouldIndexableObjectExistInIndexing:(id)a3
{
  v3 = a3;
  if ([v3 isDeleted])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [v3 isHiddenFromSearch] ^ 1;
  }

  return v4;
}

- (id)attributeSetForObject:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_1F4FEEE20])
  {
    v5 = v4;
    v6 = [(ICCoreDataCoreSpotlightDelegate *)self shouldIndexableObjectExistInIndexing:v5];
    v7 = os_log_create("com.apple.notes", "SearchIndexer");
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
    if (v6)
    {
      if (v8)
      {
        [ICCoreDataCoreSpotlightDelegate attributeSetForObject:v5];
      }

      v9 = [v5 searchableItemAttributeSet];
      v10 = [v5 searchIndexingIdentifier];
      [v9 setUniqueIdentifier:v10];

      v11 = [MEMORY[0x1E695DF00] distantFuture];
      [v9 setExpirationDate:v11];

      v12 = [v5 searchDomainIdentifier];
      [v9 setDomainIdentifier:v12];

      v7 = [v5 dataSourceIdentifier];
      [v9 setIc_dataSourceIdentifier:v7];
    }

    else
    {
      if (v8)
      {
        [ICCoreDataCoreSpotlightDelegate attributeSetForObject:v5];
      }

      v9 = 0;
    }
  }

  else
  {
    v5 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [ICCoreDataCoreSpotlightDelegate attributeSetForObject:v5];
    }

    v9 = 0;
  }

  return v9;
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