@interface CUIKUndoManager
+ (id)operationForAction:(unint64_t)action context:(id)context;
- (CUIKUndoManager)init;
- (id)objectToSaveForRevertingChangeToObject:(id)object;
- (id)objectToSaveForUndoingChangeToObject:(id)object;
- (void)_clearUndeletedObjects;
- (void)_registerUndeletedObject:(id)object withOriginalObjectID:(id)d;
- (void)clearUndoOperations;
- (void)handleUndoForOperation:(id)operation;
- (void)objectWithSpecificIdentifierWasReverted:(id)reverted;
- (void)removeAllActions;
- (void)setRevertObject:(id)object forSpecificIdentifier:(id)identifier;
- (void)setUndoObject:(id)object forSpecificIdentifier:(id)identifier;
- (void)undoOperation:(id)operation;
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

- (void)handleUndoForOperation:(id)operation
{
  v24 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  inverseOperation = [operationCopy inverseOperation];
  if (inverseOperation)
  {
    [(CUIKUndoManager *)self beginUndoGrouping];
    [(CUIKUndoManager *)self registerUndoWithTarget:self selector:sel_undoOperation_ object:inverseOperation];
    v18 = inverseOperation;
    if (([(CUIKUndoManager *)self isUndoing]& 1) != 0)
    {
      v6 = inverseOperation;
    }

    else
    {
      v6 = operationCopy;
    }

    actionName = [v6 actionName];
    [(CUIKUndoManager *)self setActionName:actionName];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    objects = [operationCopy objects];
    v8 = [objects countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(objects);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          originalObjects = [operationCopy originalObjects];
          v15 = [originalObjects objectAtIndexedSubscript:v10];

          if ([v13 isUndeleted])
          {
            objectID = [v15 objectID];
            [(CUIKUndoManager *)self _registerUndeletedObject:v13 withOriginalObjectID:objectID];
          }

          ++v10;
        }

        v9 = [objects countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    [(CUIKUndoManager *)self endUndoGrouping];
    inverseOperation = v18;
  }

  else
  {
    [(CUIKUndoManager *)self clearUndoOperations];
  }
}

- (void)undoOperation:(id)operation
{
  v28 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  editingManagerProvider = [(CUIKUndoManager *)self editingManagerProvider];
  eventStore = [operationCopy eventStore];
  v7 = (editingManagerProvider)[2](editingManagerProvider, eventStore);

  objects = [operationCopy objects];
  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(objects, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = objects;
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
  decisionDelegate = [(CUIKUndoManager *)self decisionDelegate];
  [v16 setDecisionDelegate:decisionDelegate];

  commitDelegate = [(CUIKUndoManager *)self commitDelegate];
  [v16 setCommitDelegate:commitDelegate];

  isUndoing = [(CUIKUndoManager *)self isUndoing];
  v20 = +[CUIKLogSubsystem undo];
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
  if (isUndoing)
  {
    if (v21)
    {
      [(CUIKUndoManager *)operationCopy undoOperation:v20];
    }
  }

  else if (v21)
  {
    [(CUIKUndoManager *)operationCopy undoOperation:v20];
  }

  [v16 performUndoableOperation:operationCopy];
  error = [operationCopy error];
  [(CUIKUndoManager *)self setLastError:error];

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

+ (id)operationForAction:(unint64_t)action context:(id)context
{
  contextCopy = context;
  if (action - 1 > 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(__objc2_class *)*off_1E839A560[action - 1] operationForContext:contextCopy];
  }

  return v6;
}

- (id)objectToSaveForRevertingChangeToObject:(id)object
{
  objectCopy = object;
  v5 = objectCopy;
  if (objectCopy)
  {
    v6 = objectCopy;
    specificIdentifierMapForRevert = [(CUIKUndoManager *)self specificIdentifierMapForRevert];
    specificIdentifier = [v6 specificIdentifier];
    v9 = [specificIdentifierMapForRevert objectForKeyedSubscript:specificIdentifier];

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

- (id)objectToSaveForUndoingChangeToObject:(id)object
{
  objectCopy = object;
  v5 = objectCopy;
  if (objectCopy)
  {
    v6 = objectCopy;
    specificIdentifierMapForUndo = [(CUIKUndoManager *)self specificIdentifierMapForUndo];
    specificIdentifier = [v6 specificIdentifier];
    v9 = [specificIdentifierMapForUndo objectForKeyedSubscript:specificIdentifier];

    if (v9)
    {
      v10 = [v9 copy];

      v6 = v10;
    }

    undeletedObjectMap = [(CUIKUndoManager *)self undeletedObjectMap];
    objectID = [v6 objectID];
    v13 = [undeletedObjectMap objectForKeyedSubscript:objectID];
    undeletedObject = [v13 undeletedObject];

    if (undeletedObject)
    {
      v15 = [undeletedObject copy];

      v6 = v15;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setUndoObject:(id)object forSpecificIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objectCopy = object;
  specificIdentifierMapForUndo = [(CUIKUndoManager *)self specificIdentifierMapForUndo];

  if (!specificIdentifierMapForUndo)
  {
    v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    [(CUIKUndoManager *)self setSpecificIdentifierMapForUndo:v9];
  }

  specificIdentifierMapForUndo2 = [(CUIKUndoManager *)self specificIdentifierMapForUndo];
  [specificIdentifierMapForUndo2 setObject:objectCopy forKeyedSubscript:identifierCopy];
}

- (void)setRevertObject:(id)object forSpecificIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objectCopy = object;
  specificIdentifierMapForRevert = [(CUIKUndoManager *)self specificIdentifierMapForRevert];

  if (!specificIdentifierMapForRevert)
  {
    v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    [(CUIKUndoManager *)self setSpecificIdentifierMapForRevert:v9];
  }

  specificIdentifierMapForRevert2 = [(CUIKUndoManager *)self specificIdentifierMapForRevert];
  [specificIdentifierMapForRevert2 setObject:objectCopy forKeyedSubscript:identifierCopy];
}

- (void)objectWithSpecificIdentifierWasReverted:(id)reverted
{
  revertedCopy = reverted;
  specificIdentifierMapForUndo = [(CUIKUndoManager *)self specificIdentifierMapForUndo];
  [specificIdentifierMapForUndo removeObjectForKey:revertedCopy];

  specificIdentifierMapForRevert = [(CUIKUndoManager *)self specificIdentifierMapForRevert];
  [specificIdentifierMapForRevert removeObjectForKey:revertedCopy];
}

- (void)_registerUndeletedObject:(id)object withOriginalObjectID:(id)d
{
  dCopy = d;
  objectCopy = object;
  undeletedObjectMap = [(CUIKUndoManager *)self undeletedObjectMap];

  if (undeletedObjectMap)
  {
    undeletedObjectMap2 = [(CUIKUndoManager *)self undeletedObjectMap];
    v9 = [undeletedObjectMap2 objectForKeyedSubscript:dCopy];

    if (v9)
    {
      undeletedObject = [v9 undeletedObject];
      objectID = [undeletedObject objectID];

      undeletedObjectMap3 = [(CUIKUndoManager *)self undeletedObjectMap];
      [undeletedObjectMap3 setObject:v9 forKeyedSubscript:objectID];

      goto LABEL_6;
    }
  }

  else
  {
    v13 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    [(CUIKUndoManager *)self setUndeletedObjectMap:v13];
  }

  v9 = objc_opt_new();
  objectID = [(CUIKUndoManager *)self undeletedObjectMap];
  [objectID setObject:v9 forKeyedSubscript:dCopy];
LABEL_6:

  [v9 setUndeletedObject:objectCopy];
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