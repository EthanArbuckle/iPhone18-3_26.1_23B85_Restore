@interface UIDocumentPickerLocalDirectoryObserver
@end

@implementation UIDocumentPickerLocalDirectoryObserver

uint64_t __61___UIDocumentPickerLocalDirectoryObserver_setQueryPredicate___block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  v1 = *(result + 40);
  if (*(v2 + 72) != v1)
  {
    v3 = result;
    objc_storeStrong((v2 + 72), v1);
    result = [*(*(v3 + 32) + 96) count];
    if (result)
    {
      v4 = *(v3 + 32);

      return [v4 updateResultsForSource:0];
    }
  }

  return result;
}

uint64_t __57___UIDocumentPickerLocalDirectoryObserver_queryPredicate__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

void __58___UIDocumentPickerLocalDirectoryObserver_setStaticItems___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 64);
  if (v3 != v2 && ([v3 isEqualToOrderedSet:?] & 1) == 0)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB40]);
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = *(a1 + 40);
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = [*(*(a1 + 32) + 64) indexOfObject:{v11, v17}];
          if (v12 == 0x7FFFFFFFFFFFFFFFLL)
          {
            [v4 addObject:v11];
          }

          else
          {
            v13 = [*(*(a1 + 32) + 64) objectAtIndex:v12];
            [v5 addObject:v13];
            [v4 addObject:v13];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    v14 = [v4 copy];
    v15 = *(a1 + 32);
    v16 = *(v15 + 64);
    *(v15 + 64) = v14;

    [*(a1 + 32) updateResultsForSource:0];
  }
}

uint64_t __61___UIDocumentPickerLocalDirectoryObserver_isVisiblePredicate__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 url];
  v8 = 0;
  v3 = [v2 getResourceValue:&v8 forKey:*MEMORY[0x277CBE888] error:0];
  v4 = v8;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = [v4 BOOLValue] ^ 1;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void __56___UIDocumentPickerLocalDirectoryObserver_initialUpdate__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(*(a1 + 32) + 88);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [*(a1 + 32) gatherResultsForSource:{v7, v11}];
        [*(*(a1 + 32) + 96) setObject:v8 forKeyedSubscript:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v9 = *(a1 + 32);
  v10 = [v9 gatherResults];
  [v9 processUpdate:v10 changedObjects:0];
}

void __66___UIDocumentPickerLocalDirectoryObserver_updateResultsForSource___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) gatherResultsForSource:?];
    [*(*(a1 + 40) + 96) setObject:v2 forKeyedSubscript:*(a1 + 32)];
  }

  v3 = *(a1 + 40);
  v4 = [v3 gatherResults];
  [v3 processUpdate:v4 changedObjects:0];
}

@end