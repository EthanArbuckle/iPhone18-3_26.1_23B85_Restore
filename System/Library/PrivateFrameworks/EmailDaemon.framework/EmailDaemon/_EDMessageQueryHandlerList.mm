@interface _EDMessageQueryHandlerList
- (BOOL)hasItemsInList;
- (NSArray)allMessageGlobalIDs;
- (NSArray)allMessageObjectIDs;
- (_EDMessageQueryHandlerList)initWithQuery:(id)a3;
- (id)_comparatorForSortDescriptors:(id)a3;
- (id)insertMessagesReturningMessagesByPreviousObjectID:(id)a3;
- (id)movesForExistingMessages:(id)a3;
@end

@implementation _EDMessageQueryHandlerList

- (_EDMessageQueryHandlerList)initWithQuery:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = _EDMessageQueryHandlerList;
  v5 = [(_EDMessageQueryHandlerList *)&v16 init];
  if (v5)
  {
    v6 = [v4 sortDescriptors];
    sortDescriptors = v5->_sortDescriptors;
    v5->_sortDescriptors = v6;

    v8 = [v4 targetClassOptions];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E699A9F0]];
    sectionPredicates = v5->_sectionPredicates;
    v5->_sectionPredicates = v9;

    v11 = [(_EDMessageQueryHandlerList *)v5 _comparatorForSortDescriptors:v5->_sortDescriptors];
    entryComparator = v5->_entryComparator;
    v5->_entryComparator = v11;

    v13 = objc_opt_new();
    entryList = v5->_entryList;
    v5->_entryList = v13;
  }

  return v5;
}

- (id)_comparatorForSortDescriptors:(id)a3
{
  v3 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60___EDMessageQueryHandlerList__comparatorForSortDescriptors___block_invoke;
  aBlock[3] = &unk_1E8254FC0;
  v8 = v3;
  v4 = v3;
  v5 = _Block_copy(aBlock);

  return v5;
}

- (id)movesForExistingMessages:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v26 = a3;
  v32 = [(_EDMessageQueryHandlerList *)self entryComparator];
  v38 = [(_EDMessageQueryHandlerList *)self sortDescriptors];
  v36 = [(_EDMessageQueryHandlerList *)self sectionPredicates];
  v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(_EDMessageQueryHandlerList *)self entryList];
  v33 = [v4 copy];
  v31 = self;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v26;
  v5 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v5)
  {
    v35 = *v43;
    do
    {
      v37 = v5;
      for (i = 0; i != v37; ++i)
      {
        if (*v43 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v42 + 1) + 8 * i);
        v8 = [[_EDMessageQueryHelperEntry alloc] initWithMessage:v7 sortDescriptors:v38 sectionPredicates:v36];
        v9 = [v4 indexOfObject:v8];
        if (v9 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v10 = [(_EDMessageQueryHelperEntry *)v8 sectionIndex];
          v11 = [v4 objectAtIndexedSubscript:v9];
          LOBYTE(v10) = v10 > [v11 sectionIndex];

          if ((v10 & 1) == 0)
          {
            v39[0] = MEMORY[0x1E69E9820];
            v39[1] = 3221225472;
            v39[2] = __55___EDMessageQueryHandlerList_movesForExistingMessages___block_invoke;
            v39[3] = &unk_1E8254FE8;
            v41 = v32;
            v12 = v8;
            v40 = v12;
            v13 = [v33 ef_firstObjectPassingTest:v39];
            v14 = v13;
            if (!v13)
            {
              v14 = [MEMORY[0x1E695DFB0] null];
            }

            [v4 removeObjectAtIndex:v9];
            v15 = [(_EDMessageQueryHandlerList *)v31 entryComparator];
            v16 = [v4 ef_insertObjectIfAbsent:v12 usingComparator:v15];

            if (v16 != v9)
            {
              v17 = [v30 objectForKeyedSubscript:v14];
              if (!v17)
              {
                v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
                v28 = [MEMORY[0x1E695DFB0] null];
                v29 = v18;
                if (v14 == v28)
                {
                  v23 = v14;
                }

                else
                {
                  v19 = objc_alloc(MEMORY[0x1E699ADA8]);
                  v20 = [v13 globalMessageID];
                  v21 = [v7 objectID];
                  v22 = [v21 mailboxScope];
                  v23 = [v19 initWithGlobalMessageID:v20 mailboxScope:v22];
                }

                [v27 setObject:v29 forKeyedSubscript:v23];
                [v30 setObject:v29 forKeyedSubscript:v14];

                v17 = v29;
              }

              [v17 ef_insertObject:v7 usingSortDescriptors:v38];
            }
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v5);
  }

  v24 = *MEMORY[0x1E69E9840];

  return v27;
}

- (id)insertMessagesReturningMessagesByPreviousObjectID:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25 = [(_EDMessageQueryHandlerList *)self entryComparator];
  v33 = [(_EDMessageQueryHandlerList *)self sortDescriptors];
  v31 = [(_EDMessageQueryHandlerList *)self sectionPredicates];
  v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v34 = [(_EDMessageQueryHandlerList *)self entryList];
  v26 = [v34 copy];
  v24 = self;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v5)
  {
    v30 = *v39;
    do
    {
      v32 = v5;
      for (i = 0; i != v32; ++i)
      {
        if (*v39 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v38 + 1) + 8 * i);
        v8 = [[_EDMessageQueryHelperEntry alloc] initWithMessage:v7 sortDescriptors:v33 sectionPredicates:v31];
        if (([v34 containsObject:v8] & 1) == 0)
        {
          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 3221225472;
          v35[2] = __80___EDMessageQueryHandlerList_insertMessagesReturningMessagesByPreviousObjectID___block_invoke;
          v35[3] = &unk_1E8254FE8;
          v37 = v25;
          v9 = v8;
          v36 = v9;
          v10 = [v26 ef_firstObjectPassingTest:v35];
          v11 = v10;
          if (!v10)
          {
            v11 = [MEMORY[0x1E695DFB0] null];
          }

          v12 = [(_EDMessageQueryHandlerList *)v24 entryComparator];
          [v34 ef_insertObjectIfAbsent:v9 usingComparator:v12];

          v13 = [v29 objectForKeyedSubscript:v11];
          if (!v13)
          {
            v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v15 = [MEMORY[0x1E695DFB0] null];
            v28 = v14;
            if (v11 == v15)
            {
              v20 = v11;
            }

            else
            {
              v16 = objc_alloc(MEMORY[0x1E699ADA8]);
              v17 = [v10 globalMessageID];
              v18 = [v7 objectID];
              v19 = [v18 mailboxScope];
              v20 = [v16 initWithGlobalMessageID:v17 mailboxScope:v19];
            }

            [v23 setObject:v28 forKeyedSubscript:v20];
            [v29 setObject:v28 forKeyedSubscript:v11];

            v13 = v28;
          }

          [v13 ef_insertObject:v7 usingSortDescriptors:v33];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v5);
  }

  v21 = *MEMORY[0x1E69E9840];

  return v23;
}

- (BOOL)hasItemsInList
{
  v2 = [(_EDMessageQueryHandlerList *)self entryList];
  v3 = [v2 count] != 0;

  return v3;
}

- (NSArray)allMessageGlobalIDs
{
  v2 = [(_EDMessageQueryHandlerList *)self entryList];
  v3 = [v2 ef_map:&__block_literal_global_369];

  return v3;
}

- (NSArray)allMessageObjectIDs
{
  v2 = [(_EDMessageQueryHandlerList *)self entryList];
  v3 = [v2 ef_map:&__block_literal_global_372];

  return v3;
}

@end