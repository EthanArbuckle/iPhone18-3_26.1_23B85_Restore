@interface CUIKUndoManager
+ (id)operationForAction:(unint64_t)a3 context:(id)a4;
- (CUIKUndoManager)init;
- (id)objectToSaveForRevertingChangeToObject:(id)a3;
- (id)objectToSaveForUndoingChangeToObject:(id)a3;
- (void)_clearUndeletedObjects;
- (void)_registerUndeletedObject:(id)a3 withOriginalObjectID:(id)a4;
- (void)clearUndoOperations;
- (void)handleUndoForOperation:(id)a3;
- (void)objectWithSpecificIdentifierWasReverted:(id)a3;
- (void)removeAllActions;
- (void)setRevertObject:(id)a3 forSpecificIdentifier:(id)a4;
- (void)setUndoObject:(id)a3 forSpecificIdentifier:(id)a4;
- (void)undoOperation:(id)a3;
@end

@implementation CUIKUndoManager

- (CUIKUndoManager)init
{
  v5.receiver = self;
  v5.super_class = CUIKUndoManager;
  v2 = [(CUIKUndoManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CUIKUndoManager *)v2 setGroupsByEvent:0];
  }

  return v3;
}

- (void)handleUndoForOperation:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 inverseOperation];
  if (v5)
  {
    [(CUIKUndoManager *)self beginUndoGrouping];
    [(CUIKUndoManager *)self registerUndoWithTarget:self selector:sel_undoOperation_ object:v5];
    v18 = v5;
    if (([(CUIKUndoManager *)self isUndoing]& 1) != 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = v4;
    }

    v17 = [v6 actionName];
    [(CUIKUndoManager *)self setActionName:v17];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [v4 objects];
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = [v4 originalObjects];
          v15 = [v14 objectAtIndexedSubscript:v10];

          if ([v13 isUndeleted])
          {
            v16 = [v15 objectID];
            [(CUIKUndoManager *)self _registerUndeletedObject:v13 withOriginalObjectID:v16];
          }

          ++v10;
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    [(CUIKUndoManager *)self endUndoGrouping];
    v5 = v18;
  }

  else
  {
    [(CUIKUndoManager *)self clearUndoOperations];
  }
}

- (void)undoOperation:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CUIKUndoManager *)self editingManagerProvider];
  v6 = [v4 eventStore];
  v7 = (v5)[2](v5, v6);

  v8 = [v4 objects];
  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      v14 = 0;
      do
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [(CUIKUndoManager *)self objectToSaveForUndoingChangeToObject:*(*(&v23 + 1) + 8 * v14), v23];
        [v9 addObject:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  v16 = [v7 openEditingContextWithObjects:v9 interfaceType:2];
  [v16 setUndoDelegate:self];
  v17 = [(CUIKUndoManager *)self decisionDelegate];
  [v16 setDecisionDelegate:v17];

  v18 = [(CUIKUndoManager *)self commitDelegate];
  [v16 setCommitDelegate:v18];

  v19 = [(CUIKUndoManager *)self isUndoing];
  v20 = +[CUIKLogSubsystem undo];
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
  if (v19)
  {
    if (v21)
    {
      [(CUIKUndoManager *)v4 undoOperation:v20];
    }
  }

  else if (v21)
  {
    [(CUIKUndoManager *)v4 undoOperation:v20];
  }

  [v16 performUndoableOperation:v4];
  v22 = [v4 error];
  [(CUIKUndoManager *)self setLastError:v22];

  [v7 closeEditingContext:v16];
}

- (void)clearUndoOperations
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__CUIKUndoManager_clearUndoOperations__block_invoke;
  block[3] = &unk_1E8399BD8;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)removeAllActions
{
  v3.receiver = self;
  v3.super_class = CUIKUndoManager;
  [(CUIKUndoManager *)&v3 removeAllActions];
  [(CUIKUndoManager *)self _clearUndeletedObjects];
}

+ (id)operationForAction:(unint64_t)a3 context:(id)a4
{
  v5 = a4;
  if (a3 - 1 > 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(__objc2_class *)*off_1E839A560[a3 - 1] operationForContext:v5];
  }

  return v6;
}

- (id)objectToSaveForRevertingChangeToObject:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v7 = [(CUIKUndoManager *)self specificIdentifierMapForRevert];
    v8 = [v6 specificIdentifier];
    v9 = [v7 objectForKeyedSubscript:v8];

    if (v9)
    {
      v10 = [v9 copy];

      v6 = v10;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)objectToSaveForUndoingChangeToObject:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v7 = [(CUIKUndoManager *)self specificIdentifierMapForUndo];
    v8 = [v6 specificIdentifier];
    v9 = [v7 objectForKeyedSubscript:v8];

    if (v9)
    {
      v10 = [v9 copy];

      v6 = v10;
    }

    v11 = [(CUIKUndoManager *)self undeletedObjectMap];
    v12 = [v6 objectID];
    v13 = [v11 objectForKeyedSubscript:v12];
    v14 = [v13 undeletedObject];

    if (v14)
    {
      v15 = [v14 copy];

      v6 = v15;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setUndoObject:(id)a3 forSpecificIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CUIKUndoManager *)self specificIdentifierMapForUndo];

  if (!v8)
  {
    v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    [(CUIKUndoManager *)self setSpecificIdentifierMapForUndo:v9];
  }

  v10 = [(CUIKUndoManager *)self specificIdentifierMapForUndo];
  [v10 setObject:v7 forKeyedSubscript:v6];
}

- (void)setRevertObject:(id)a3 forSpecificIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CUIKUndoManager *)self specificIdentifierMapForRevert];

  if (!v8)
  {
    v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    [(CUIKUndoManager *)self setSpecificIdentifierMapForRevert:v9];
  }

  v10 = [(CUIKUndoManager *)self specificIdentifierMapForRevert];
  [v10 setObject:v7 forKeyedSubscript:v6];
}

- (void)objectWithSpecificIdentifierWasReverted:(id)a3
{
  v4 = a3;
  v5 = [(CUIKUndoManager *)self specificIdentifierMapForUndo];
  [v5 removeObjectForKey:v4];

  v6 = [(CUIKUndoManager *)self specificIdentifierMapForRevert];
  [v6 removeObjectForKey:v4];
}

- (void)_registerUndeletedObject:(id)a3 withOriginalObjectID:(id)a4
{
  v14 = a4;
  v6 = a3;
  v7 = [(CUIKUndoManager *)self undeletedObjectMap];

  if (v7)
  {
    v8 = [(CUIKUndoManager *)self undeletedObjectMap];
    v9 = [v8 objectForKeyedSubscript:v14];

    if (v9)
    {
      v10 = [v9 undeletedObject];
      v11 = [v10 objectID];

      v12 = [(CUIKUndoManager *)self undeletedObjectMap];
      [v12 setObject:v9 forKeyedSubscript:v11];

      goto LABEL_6;
    }
  }

  else
  {
    v13 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    [(CUIKUndoManager *)self setUndeletedObjectMap:v13];
  }

  v9 = objc_opt_new();
  v11 = [(CUIKUndoManager *)self undeletedObjectMap];
  [v11 setObject:v9 forKeyedSubscript:v14];
LABEL_6:

  [v9 setUndeletedObject:v6];
}

- (void)_clearUndeletedObjects
{
  [(CUIKUndoManager *)self setUndeletedObjectMap:0];
  [(CUIKUndoManager *)self setSpecificIdentifierMapForUndo:0];

  [(CUIKUndoManager *)self setSpecificIdentifierMapForRevert:0];
}

- (void)undoOperation:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1CAB19000, a2, OS_LOG_TYPE_DEBUG, "Redo occurred.  Performing operation %@", &v2, 0xCu);
}

- (void)undoOperation:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1CAB19000, a2, OS_LOG_TYPE_DEBUG, "Undo occurred.  Performing operation %@", &v2, 0xCu);
}

@end