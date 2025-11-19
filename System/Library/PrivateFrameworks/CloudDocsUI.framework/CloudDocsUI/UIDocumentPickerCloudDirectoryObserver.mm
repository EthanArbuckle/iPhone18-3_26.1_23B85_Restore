@interface UIDocumentPickerCloudDirectoryObserver
@end

@implementation UIDocumentPickerCloudDirectoryObserver

void __53___UIDocumentPickerCloudDirectoryObserver_invalidate__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 88) stopQuery];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 removeObserver:*(a1 + 32) name:0 object:*(*(a1 + 32) + 88)];

  v3 = *(a1 + 32);
  v4 = *(v3 + 88);
  *(v3 + 88) = 0;
}

void __61___UIDocumentPickerCloudDirectoryObserver_setQueryPredicate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6 = *(*(a1 + 32) + 64);
  v3 = v2;
  if (v6 == v3)
  {
  }

  else
  {
    if (v3)
    {
      v4 = [v6 isEqual:v3];

      if (v4)
      {
        return;
      }
    }

    else
    {
    }

    objc_storeStrong((*(a1 + 32) + 64), *(a1 + 40));
    v5 = *(a1 + 32);
    if (v5[11])
    {

      [v5 _updateQuery];
    }
  }
}

void __57___UIDocumentPickerCloudDirectoryObserver_queryPredicate__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 88) predicate];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __90___UIDocumentPickerCloudDirectoryObserver__queryResultsWithChangedObjects_changedResults___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v5 = [[_UIDocumentPickerContainerMetadataItem alloc] initWithMetadataItem:v3];
  [a1[4] addObject:?];
  v4 = [a1[5] containsObject:v3];

  if (v4)
  {
    [a1[6] addObject:v5];
  }
}

void __58___UIDocumentPickerCloudDirectoryObserver_setStaticItems___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 56);
  if (v3 != v2 && ([v3 isEqualToOrderedSet:?] & 1) == 0)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB40]);
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = *(a1 + 40);
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = [*(*(a1 + 32) + 56) indexOfObject:{v11, v14}];
          if (v12 == 0x7FFFFFFFFFFFFFFFLL)
          {
            [v4 addObject:v11];
          }

          else
          {
            v13 = [*(*(a1 + 32) + 56) objectAtIndex:v12];
            [v5 addObject:v13];
            [v4 addObject:v13];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    objc_storeStrong((*(a1 + 32) + 56), v4);
    if ([*(a1 + 32) afterInitialUpdate])
    {
      [*(a1 + 32) _updateObservers:v5];
    }
  }
}

uint64_t __61___UIDocumentPickerCloudDirectoryObserver_isVisiblePredicate__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 title];
  v4 = [v3 hasPrefix:@"."];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [v2 url];
    v7 = [v6 pathComponents];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      while (2)
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if ([*(*(&v14 + 1) + 8 * v12) hasPrefix:{@".", v14}])
          {
            v5 = 0;
            goto LABEL_13;
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v5 = 1;
LABEL_13:
  }

  return v5;
}

uint64_t __61___UIDocumentPickerCloudDirectoryObserver_isVisiblePredicate__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 title];
  v3 = [v2 hasPrefix:@"."];

  return v3 ^ 1u;
}

@end