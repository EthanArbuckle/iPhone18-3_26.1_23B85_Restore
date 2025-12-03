@interface DOCSetTagsOperation
- (DOCSetTagsOperation)initWithItems:(id)items tagsLists:(id)lists isUndoable:(BOOL)undoable shouldClearUndoStack:(BOOL)stack undoManager:(id)manager;
- (NSString)actionNameForUndoing;
- (id)currentItems;
- (id)currentTagsLists;
- (id)itemIDsFromItems:(id)items;
- (id)itemsFromItemIDs:(id)ds;
- (id)operationForRedoing;
- (id)operationForUndoing;
- (id)operationItemIDs;
- (id)tagsListsFromItems:(id)items;
- (void)clearUndoStack;
- (void)registerUndo;
@end

@implementation DOCSetTagsOperation

- (DOCSetTagsOperation)initWithItems:(id)items tagsLists:(id)lists isUndoable:(BOOL)undoable shouldClearUndoStack:(BOOL)stack undoManager:(id)manager
{
  stackCopy = stack;
  undoableCopy = undoable;
  listsCopy = lists;
  managerCopy = manager;
  v20.receiver = self;
  v20.super_class = DOCSetTagsOperation;
  v15 = [(FPSetTagsOperation *)&v20 initWithItems:items tagsLists:listsCopy];
  v16 = v15;
  if (v15)
  {
    currentTagsLists = [(DOCSetTagsOperation *)v15 currentTagsLists];
    oldTagsLists = v16->_oldTagsLists;
    v16->_oldTagsLists = currentTagsLists;

    objc_storeStrong(&v16->_updatedTagsLists, lists);
    objc_storeStrong(&v16->_undoManager, manager);
    if (undoableCopy)
    {
      [(DOCSetTagsOperation *)v16 registerUndo];
    }

    else if (stackCopy)
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

  items = [(FPTransformOperation *)self items];
  v8 = [items count];

  items2 = [(FPTransformOperation *)self items];
  firstObject = [items2 firstObject];
  displayName = [firstObject displayName];

  if (v8 == 1)
  {
    [MEMORY[0x277CCACA8] localizedStringWithFormat:v4, displayName];
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
  currentItems = [(DOCSetTagsOperation *)self currentItems];
  if ([currentItems count] && (v4 = objc_msgSend(currentItems, "count"), -[FPTransformOperation items](self, "items"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v4 == v6))
  {
    v7 = [DOCSetTagsOperation alloc];
    updatedTagsLists = [(DOCSetTagsOperation *)self updatedTagsLists];
    undoManager = [(DOCSetTagsOperation *)self undoManager];
    v10 = [(DOCSetTagsOperation *)v7 initWithItems:currentItems tagsLists:updatedTagsLists isUndoable:1 shouldClearUndoStack:0 undoManager:undoManager];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)operationForUndoing
{
  currentItems = [(DOCSetTagsOperation *)self currentItems];
  if ([currentItems count] && (v4 = objc_msgSend(currentItems, "count"), -[FPTransformOperation items](self, "items"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v4 == v6))
  {
    v7 = [DOCSetTagsOperation alloc];
    oldTagsLists = [(DOCSetTagsOperation *)self oldTagsLists];
    undoManager = [(DOCSetTagsOperation *)self undoManager];
    v10 = [(DOCSetTagsOperation *)v7 initWithItems:currentItems tagsLists:oldTagsLists isUndoable:1 shouldClearUndoStack:0 undoManager:undoManager];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)registerUndo
{
  undoManager = [(DOCSetTagsOperation *)self undoManager];
  [undoManager registerUndoOperationForSender:self];
}

- (void)clearUndoStack
{
  undoManager = [(DOCSetTagsOperation *)self undoManager];
  [undoManager removeAllActions];
}

- (id)currentItems
{
  operationItemIDs = [(DOCSetTagsOperation *)self operationItemIDs];
  v4 = [(DOCSetTagsOperation *)self itemsFromItemIDs:operationItemIDs];

  return v4;
}

- (id)operationItemIDs
{
  items = [(FPTransformOperation *)self items];
  v4 = [(DOCSetTagsOperation *)self itemIDsFromItems:items];

  return v4;
}

- (id)itemIDsFromItems:(id)items
{
  v18 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = itemsCopy;
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

        itemID = [*(*(&v13 + 1) + 8 * i) itemID];
        [v4 addObject:itemID];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)itemsFromItemIDs:(id)ds
{
  v31 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
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
  obj = dsCopy;
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
        itemManager = [(FPActionOperation *)self itemManager];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __40__DOCSetTagsOperation_itemsFromItemIDs___block_invoke;
        v17[3] = &unk_278F9BA90;
        v19 = &v24;
        v11 = v5;
        v18 = v11;
        [itemManager fetchItemForItemID:v9 completionHandler:v17];

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
  items = [(FPTransformOperation *)self items];
  v4 = [(DOCSetTagsOperation *)self tagsListsFromItems:items];

  return v4;
}

- (id)tagsListsFromItems:(id)items
{
  v21 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = itemsCopy;
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
        tags = [v11 tags];

        if (tags)
        {
          tags2 = [v11 tags];
          [v4 addObject:tags2];
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