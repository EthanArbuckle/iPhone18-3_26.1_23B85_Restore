@interface DOCSetTagsOperation
- (DOCSetTagsOperation)initWithItems:(id)a3 tagsLists:(id)a4 isUndoable:(BOOL)a5 shouldClearUndoStack:(BOOL)a6 undoManager:(id)a7;
- (NSString)actionNameForUndoing;
- (id)currentItems;
- (id)currentTagsLists;
- (id)itemIDsFromItems:(id)a3;
- (id)itemsFromItemIDs:(id)a3;
- (id)operationForRedoing;
- (id)operationForUndoing;
- (id)operationItemIDs;
- (id)tagsListsFromItems:(id)a3;
- (void)clearUndoStack;
- (void)registerUndo;
@end

@implementation DOCSetTagsOperation

- (DOCSetTagsOperation)initWithItems:(id)a3 tagsLists:(id)a4 isUndoable:(BOOL)a5 shouldClearUndoStack:(BOOL)a6 undoManager:(id)a7
{
  v8 = a6;
  v9 = a5;
  v13 = a4;
  v14 = a7;
  v20.receiver = self;
  v20.super_class = DOCSetTagsOperation;
  v15 = [(FPSetTagsOperation *)&v20 initWithItems:a3 tagsLists:v13];
  v16 = v15;
  if (v15)
  {
    v17 = [(DOCSetTagsOperation *)v15 currentTagsLists];
    oldTagsLists = v16->_oldTagsLists;
    v16->_oldTagsLists = v17;

    objc_storeStrong(&v16->_updatedTagsLists, a4);
    objc_storeStrong(&v16->_undoManager, a7);
    if (v9)
    {
      [(DOCSetTagsOperation *)v16 registerUndo];
    }

    else if (v8)
    {
      [(DOCSetTagsOperation *)v16 clearUndoStack];
    }
  }

  return v16;
}

- (NSString)actionNameForUndoing
{
  v3 = _DocumentManagerBundle();
  v4 = [v3 localizedStringForKey:@"Edit Tags of “%@” [undo / redo command]" value:@"Edit Tags of “%@”" table:@"Localizable"];

  v5 = _DocumentManagerBundle();
  v6 = [v5 localizedStringForKey:@"Edit Tags of %lu Items [undo / redo command]" value:@"Edit Tags of %lu Items [undo / redo command]" table:@"Localizable"];

  v7 = [(FPTransformOperation *)self items];
  v8 = [v7 count];

  v9 = [(FPTransformOperation *)self items];
  v10 = [v9 firstObject];
  v11 = [v10 displayName];

  if (v8 == 1)
  {
    [MEMORY[0x277CCACA8] localizedStringWithFormat:v4, v11];
  }

  else
  {
    [MEMORY[0x277CCACA8] localizedStringWithFormat:v6, v8];
  }
  v12 = ;

  return v12;
}

- (id)operationForRedoing
{
  v3 = [(DOCSetTagsOperation *)self currentItems];
  if ([v3 count] && (v4 = objc_msgSend(v3, "count"), -[FPTransformOperation items](self, "items"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v4 == v6))
  {
    v7 = [DOCSetTagsOperation alloc];
    v8 = [(DOCSetTagsOperation *)self updatedTagsLists];
    v9 = [(DOCSetTagsOperation *)self undoManager];
    v10 = [(DOCSetTagsOperation *)v7 initWithItems:v3 tagsLists:v8 isUndoable:1 shouldClearUndoStack:0 undoManager:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)operationForUndoing
{
  v3 = [(DOCSetTagsOperation *)self currentItems];
  if ([v3 count] && (v4 = objc_msgSend(v3, "count"), -[FPTransformOperation items](self, "items"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v4 == v6))
  {
    v7 = [DOCSetTagsOperation alloc];
    v8 = [(DOCSetTagsOperation *)self oldTagsLists];
    v9 = [(DOCSetTagsOperation *)self undoManager];
    v10 = [(DOCSetTagsOperation *)v7 initWithItems:v3 tagsLists:v8 isUndoable:1 shouldClearUndoStack:0 undoManager:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)registerUndo
{
  v3 = [(DOCSetTagsOperation *)self undoManager];
  [v3 registerUndoOperationForSender:self];
}

- (void)clearUndoStack
{
  v2 = [(DOCSetTagsOperation *)self undoManager];
  [v2 removeAllActions];
}

- (id)currentItems
{
  v3 = [(DOCSetTagsOperation *)self operationItemIDs];
  v4 = [(DOCSetTagsOperation *)self itemsFromItemIDs:v3];

  return v4;
}

- (id)operationItemIDs
{
  v3 = [(FPTransformOperation *)self items];
  v4 = [(DOCSetTagsOperation *)self itemIDsFromItems:v3];

  return v4;
}

- (id)itemIDsFromItems:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) itemID];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)itemsFromItemIDs:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__2;
  v28 = __Block_byref_object_dispose__2;
  v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = dispatch_semaphore_create(0);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v6)
  {
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = [(FPActionOperation *)self itemManager];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __40__DOCSetTagsOperation_itemsFromItemIDs___block_invoke;
        v17[3] = &unk_278F9BA90;
        v19 = &v24;
        v11 = v5;
        v18 = v11;
        [v10 fetchItemForItemID:v9 completionHandler:v17];

        v12 = dispatch_time(0, 1000000000);
        dispatch_semaphore_wait(v11, v12);
      }

      v6 = [obj countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v6);
  }

  v13 = v25[5];
  _Block_object_dispose(&v24, 8);

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

intptr_t __40__DOCSetTagsOperation_itemsFromItemIDs___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:a2];
  }

  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

- (id)currentTagsLists
{
  v3 = [(FPTransformOperation *)self items];
  v4 = [(DOCSetTagsOperation *)self tagsListsFromItems:v3];

  return v4;
}

- (id)tagsListsFromItems:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    v9 = MEMORY[0x277CBEBF8];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 tags];

        if (v12)
        {
          v13 = [v11 tags];
          [v4 addObject:v13];
        }

        else
        {
          [v4 addObject:v9];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

@end