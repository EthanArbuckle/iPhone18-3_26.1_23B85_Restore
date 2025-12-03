@interface _EDMessageQueryHandlerList
- (BOOL)hasItemsInList;
- (NSArray)allMessageGlobalIDs;
- (NSArray)allMessageObjectIDs;
- (_EDMessageQueryHandlerList)initWithQuery:(id)query;
- (id)_comparatorForSortDescriptors:(id)descriptors;
- (id)insertMessagesReturningMessagesByPreviousObjectID:(id)d;
- (id)movesForExistingMessages:(id)messages;
@end

@implementation _EDMessageQueryHandlerList

- (_EDMessageQueryHandlerList)initWithQuery:(id)query
{
  queryCopy = query;
  v16.receiver = self;
  v16.super_class = _EDMessageQueryHandlerList;
  v5 = [(_EDMessageQueryHandlerList *)&v16 init];
  if (v5)
  {
    sortDescriptors = [queryCopy sortDescriptors];
    sortDescriptors = v5->_sortDescriptors;
    v5->_sortDescriptors = sortDescriptors;

    targetClassOptions = [queryCopy targetClassOptions];
    v9 = [targetClassOptions objectForKeyedSubscript:*MEMORY[0x1E699A9F0]];
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

- (id)_comparatorForSortDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60___EDMessageQueryHandlerList__comparatorForSortDescriptors___block_invoke;
  aBlock[3] = &unk_1E8254FC0;
  v8 = descriptorsCopy;
  v4 = descriptorsCopy;
  v5 = _Block_copy(aBlock);

  return v5;
}

- (id)movesForExistingMessages:(id)messages
{
  v47 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  entryComparator = [(_EDMessageQueryHandlerList *)self entryComparator];
  sortDescriptors = [(_EDMessageQueryHandlerList *)self sortDescriptors];
  sectionPredicates = [(_EDMessageQueryHandlerList *)self sectionPredicates];
  v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
  entryList = [(_EDMessageQueryHandlerList *)self entryList];
  v33 = [entryList copy];
  selfCopy = self;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = messagesCopy;
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
        v8 = [[_EDMessageQueryHelperEntry alloc] initWithMessage:v7 sortDescriptors:sortDescriptors sectionPredicates:sectionPredicates];
        v9 = [entryList indexOfObject:v8];
        if (v9 != 0x7FFFFFFFFFFFFFFFLL)
        {
          sectionIndex = [(_EDMessageQueryHelperEntry *)v8 sectionIndex];
          v11 = [entryList objectAtIndexedSubscript:v9];
          LOBYTE(sectionIndex) = sectionIndex > [v11 sectionIndex];

          if ((sectionIndex & 1) == 0)
          {
            v39[0] = MEMORY[0x1E69E9820];
            v39[1] = 3221225472;
            v39[2] = __55___EDMessageQueryHandlerList_movesForExistingMessages___block_invoke;
            v39[3] = &unk_1E8254FE8;
            v41 = entryComparator;
            v12 = v8;
            v40 = v12;
            v13 = [v33 ef_firstObjectPassingTest:v39];
            null = v13;
            if (!v13)
            {
              null = [MEMORY[0x1E695DFB0] null];
            }

            [entryList removeObjectAtIndex:v9];
            entryComparator2 = [(_EDMessageQueryHandlerList *)selfCopy entryComparator];
            v16 = [entryList ef_insertObjectIfAbsent:v12 usingComparator:entryComparator2];

            if (v16 != v9)
            {
              v17 = [v30 objectForKeyedSubscript:null];
              if (!v17)
              {
                v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
                null2 = [MEMORY[0x1E695DFB0] null];
                v29 = v18;
                if (null == null2)
                {
                  v23 = null;
                }

                else
                {
                  v19 = objc_alloc(MEMORY[0x1E699ADA8]);
                  globalMessageID = [v13 globalMessageID];
                  objectID = [v7 objectID];
                  mailboxScope = [objectID mailboxScope];
                  v23 = [v19 initWithGlobalMessageID:globalMessageID mailboxScope:mailboxScope];
                }

                [v27 setObject:v29 forKeyedSubscript:v23];
                [v30 setObject:v29 forKeyedSubscript:null];

                v17 = v29;
              }

              [v17 ef_insertObject:v7 usingSortDescriptors:sortDescriptors];
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

- (id)insertMessagesReturningMessagesByPreviousObjectID:(id)d
{
  v43 = *MEMORY[0x1E69E9840];
  dCopy = d;
  entryComparator = [(_EDMessageQueryHandlerList *)self entryComparator];
  sortDescriptors = [(_EDMessageQueryHandlerList *)self sortDescriptors];
  sectionPredicates = [(_EDMessageQueryHandlerList *)self sectionPredicates];
  v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
  entryList = [(_EDMessageQueryHandlerList *)self entryList];
  v26 = [entryList copy];
  selfCopy = self;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = dCopy;
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
        v8 = [[_EDMessageQueryHelperEntry alloc] initWithMessage:v7 sortDescriptors:sortDescriptors sectionPredicates:sectionPredicates];
        if (([entryList containsObject:v8] & 1) == 0)
        {
          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 3221225472;
          v35[2] = __80___EDMessageQueryHandlerList_insertMessagesReturningMessagesByPreviousObjectID___block_invoke;
          v35[3] = &unk_1E8254FE8;
          v37 = entryComparator;
          v9 = v8;
          v36 = v9;
          v10 = [v26 ef_firstObjectPassingTest:v35];
          null = v10;
          if (!v10)
          {
            null = [MEMORY[0x1E695DFB0] null];
          }

          entryComparator2 = [(_EDMessageQueryHandlerList *)selfCopy entryComparator];
          [entryList ef_insertObjectIfAbsent:v9 usingComparator:entryComparator2];

          v13 = [v29 objectForKeyedSubscript:null];
          if (!v13)
          {
            v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
            null2 = [MEMORY[0x1E695DFB0] null];
            v28 = v14;
            if (null == null2)
            {
              v20 = null;
            }

            else
            {
              v16 = objc_alloc(MEMORY[0x1E699ADA8]);
              globalMessageID = [v10 globalMessageID];
              objectID = [v7 objectID];
              mailboxScope = [objectID mailboxScope];
              v20 = [v16 initWithGlobalMessageID:globalMessageID mailboxScope:mailboxScope];
            }

            [v23 setObject:v28 forKeyedSubscript:v20];
            [v29 setObject:v28 forKeyedSubscript:null];

            v13 = v28;
          }

          [v13 ef_insertObject:v7 usingSortDescriptors:sortDescriptors];
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
  entryList = [(_EDMessageQueryHandlerList *)self entryList];
  v3 = [entryList count] != 0;

  return v3;
}

- (NSArray)allMessageGlobalIDs
{
  entryList = [(_EDMessageQueryHandlerList *)self entryList];
  v3 = [entryList ef_map:&__block_literal_global_369];

  return v3;
}

- (NSArray)allMessageObjectIDs
{
  entryList = [(_EDMessageQueryHandlerList *)self entryList];
  v3 = [entryList ef_map:&__block_literal_global_372];

  return v3;
}

@end