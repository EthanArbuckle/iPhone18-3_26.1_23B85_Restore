@interface MUVendorLinkSorter
- (MUVendorLinkSorter)initWithViewModels:(id)a3;
- (id)sortedViewModelsForParameters:(id)a3;
@end

@implementation MUVendorLinkSorter

uint64_t __52__MUVendorLinkSorter__sortViewModelsAlphabetically___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 providerName];
  v6 = [v4 providerName];

  v7 = [v5 localizedCompare:v6];
  return v7;
}

- (id)sortedViewModelsForParameters:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v26 = a3;
  obj = [v26 preferredOrdering];
  if ([obj count])
  {
    v3 = [v26 preferredOrdering];

    v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = v3;
    v4 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
    if (v4)
    {
      v29 = *v45;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v45 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v44 + 1) + 8 * i);
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v7 = self->_viewModels;
          v8 = [(NSArray *)v7 countByEnumeratingWithState:&v40 objects:v50 count:16];
          if (v8)
          {
            v9 = *v41;
            while (2)
            {
              for (j = 0; j != v8; ++j)
              {
                if (*v41 != v9)
                {
                  objc_enumerationMutation(v7);
                }

                v11 = *(*(&v40 + 1) + 8 * j);
                v12 = [v11 partnerId];
                v13 = [v12 isEqualToString:v6];

                if (v13)
                {
                  [v28 addObject:v11];
                  goto LABEL_17;
                }
              }

              v8 = [(NSArray *)v7 countByEnumeratingWithState:&v40 objects:v50 count:16];
              if (v8)
              {
                continue;
              }

              break;
            }
          }

LABEL_17:
        }

        v4 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
      }

      while (v4);
    }

    v14 = [v28 copy];
  }

  else
  {
    v28 = [(NSArray *)self->_viewModels mutableCopy];
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__10417;
    v38 = __Block_byref_object_dispose__10418;
    v39 = 0;
    v15 = [v26 winningAdamId];
    v16 = [v15 length] == 0;

    if (!v16)
    {
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __52__MUVendorLinkSorter_sortedViewModelsForParameters___block_invoke;
      v31[3] = &unk_1E8219608;
      v17 = v26;
      v32 = v17;
      v33 = &v34;
      v18 = [v28 indexOfObjectPassingTest:v31];
      if (v18 >= [v28 count])
      {
        if (MUGetMUVendorLinkSorterLog_onceToken != -1)
        {
          dispatch_once(&MUGetMUVendorLinkSorterLog_onceToken, &__block_literal_global_42);
        }

        v19 = MUGetMUVendorLinkSorterLog_log;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = [v17 winningAdamId];
          *buf = 138412290;
          v49 = v20;
          _os_log_impl(&dword_1C5620000, v19, OS_LOG_TYPE_ERROR, "Could not remove winning adam id @%@", buf, 0xCu);
        }
      }

      else
      {
        [v28 removeObjectAtIndex:v18];
      }
    }

    if ([v26 sortAlphabetically])
    {
      v21 = [v28 copy];
      v22 = [(MUVendorLinkSorter *)self _sortViewModelsAlphabetically:v21];
    }

    else
    {
      v22 = [v28 copy];
    }

    v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_viewModels, "count")}];
    [v23 _mapsui_addObjectIfNotNil:v35[5]];
    [v23 addObjectsFromArray:v22];
    v14 = [v23 copy];

    _Block_object_dispose(&v34, 8);
  }

  v24 = *MEMORY[0x1E69E9840];

  return v14;
}

uint64_t __52__MUVendorLinkSorter_sortedViewModelsForParameters___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [v7 appAdamId];
  v9 = [*(a1 + 32) winningAdamId];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }

  return v10;
}

- (MUVendorLinkSorter)initWithViewModels:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MUVendorLinkSorter;
  v6 = [(MUVendorLinkSorter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModels, a3);
  }

  return v7;
}

@end