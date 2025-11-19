@interface CUIKEditingManager
- (BOOL)_changesExistForObject:(id)a3;
- (BOOL)_closeEditingContext:(id)a3 action:(unint64_t)a4 condition:(unint64_t)a5 shouldClose:(BOOL *)a6;
- (BOOL)_commitChangesForContext:(id)a3 forceCommit:(BOOL)a4 shouldClose:(BOOL *)a5;
- (BOOL)_objectsSupportEditingContexts:(id)a3;
- (BOOL)isHidden:(id)a3;
- (CUIKEditingManager)initWithEventStore:(id)a3;
- (EKEventStore)eventStore;
- (id)_allOpenEditingContexts;
- (id)_liveEditedObjectsMatchingPredicate:(id)a3 notInSet:(id)a4;
- (id)_objectsWithLiveEdits:(id)a3 matchingPredicate:(id)a4;
- (id)_openEditingContextWithObjects:(id)a3 interfaceType:(unint64_t)a4 observer:(id)a5;
- (id)changedObjectsCopy;
- (id)eventWithAlias:(id)a3;
- (id)eventWithIdentifier:(id)a3;
- (id)eventsMatchingPredicate:(id)a3;
- (id)eventsWithExternalIdentifier:(id)a3;
- (id)eventsWithIdentifiers:(id)a3;
- (id)openEditingContextWithObject:(id)a3 interfaceType:(unint64_t)a4 observer:(id)a5;
- (id)openEditingContextWithObjects:(id)a3 interfaceType:(unint64_t)a4 observer:(id)a5;
- (id)remindersMatchingPredicate:(id)a3;
- (id)remindersWithExternalIdentifier:(id)a3;
- (void)_addContextToNewOrExistingGroup:(id)a3;
- (void)addAlias:(id)a3 eventIdentifier:(id)a4;
- (void)applyLiveChangesToObject:(id)a3;
- (void)applyLiveChangesToObjects:(id)a3;
- (void)clearAllLiveChanges;
- (void)clearLiveChangesForObjects:(id)a3;
- (void)fetchEventsMatchingPredicate:(id)a3 completion:(id)a4;
- (void)fetchRemindersMatchingPredicate:(id)a3 completion:(id)a4;
- (void)hide:(id)a3;
- (void)partialSaveObject:(id)a3;
- (void)performWithLock:(id)a3;
- (void)unhide:(id)a3;
@end

@implementation CUIKEditingManager

- (CUIKEditingManager)initWithEventStore:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CUIKEditingManager;
  v5 = [(CUIKEditingManager *)&v17 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v5->_eventStore, v4);
    v7 = objc_opt_new();
    changeListener = v6->_changeListener;
    v6->_changeListener = v7;

    v9 = objc_opt_new();
    changeHistory = v6->_changeHistory;
    v6->_changeHistory = v9;

    v11 = objc_opt_new();
    changedObjectMap = v6->_changedObjectMap;
    v6->_changedObjectMap = v11;

    v13 = objc_opt_new();
    hiddenObjects = v6->_hiddenObjects;
    v6->_hiddenObjects = v13;

    v15 = v6;
  }

  return v6;
}

- (id)openEditingContextWithObject:(id)a3 interfaceType:(unint64_t)a4 observer:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v14 = a3;
    v8 = MEMORY[0x1E695DEC8];
    v9 = a5;
    v10 = a3;
    v11 = [v8 arrayWithObjects:&v14 count:1];

    v12 = [(CUIKEditingManager *)self openEditingContextWithObjects:v11 interfaceType:a4 observer:v9, v14, v15];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)openEditingContextWithObjects:(id)a3 interfaceType:(unint64_t)a4 observer:(id)a5
{
  v18[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (![(CUIKEditingManager *)self _objectsSupportEditingContexts:v8])
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    v17 = @"Objects";
    v18[0] = v8;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v15 = [v12 exceptionWithName:v13 reason:@"Editing Contexts not supported for all objects." userInfo:v14];
    v16 = v15;

    objc_exception_throw(v15);
  }

  v10 = [(CUIKEditingManager *)self _openEditingContextWithObjects:v8 interfaceType:a4 observer:v9];

  return v10;
}

- (BOOL)_objectsSupportEditingContexts:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || [v8 sourceType])
            {
              v9 = 0;
              goto LABEL_14;
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_14:

  return v9;
}

- (id)_openEditingContextWithObjects:(id)a3 interfaceType:(unint64_t)a4 observer:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if ([v8 count])
  {
    v10 = [[CUIKEditingContext alloc] initWithObjects:v8 interfaceType:a4 observer:v9];
    [(CUIKEditingContext *)v10 setEditingManager:self];
    v11 = [(CUIKEditingManager *)self changeListener];
    [v11 registerDelegate:v10];

    [(CUIKEditingManager *)self _addContextToNewOrExistingGroup:v10];
  }

  else
  {
    v10 = 0;
  }

  v12 = +[CUIKLogSubsystem editingContext];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v8 valueForKey:@"specificIdentifier"];
    v15 = 134218242;
    v16 = v10;
    v17 = 2112;
    v18 = v13;
    _os_log_impl(&dword_1CAB19000, v12, OS_LOG_TYPE_DEFAULT, "Opened editing context %p with objects: %@", &v15, 0x16u);
  }

  return v10;
}

- (void)_addContextToNewOrExistingGroup:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CUIKEditingManager *)self editingContextGroups];

  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    [(CUIKEditingManager *)self setEditingContextGroups:v6];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [(CUIKEditingManager *)self editingContextGroups];
  v8 = [(CUIKObjectGroup *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v12 objectGroup];
        v14 = [v4 objectsBeingEdited];
        v15 = [(CUIKEditingContextGroup *)v13 objectsBelongInGroup:v14];

        if (v15)
        {
          [v12 addContext:v4];
          goto LABEL_13;
        }
      }

      v9 = [(CUIKObjectGroup *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v16 = [CUIKObjectGroup alloc];
  v17 = [v4 objectsBeingEdited];
  v7 = [(CUIKObjectGroup *)v16 initWithObjects:v17];

  v13 = [[CUIKEditingContextGroup alloc] initWithObjectGroup:v7];
  v18 = [(CUIKEditingManager *)self eventStore];
  [(CUIKEditingContextGroup *)v13 setEventStore:v18];

  [(CUIKEditingContextGroup *)v13 addContext:v4];
  v19 = [(CUIKEditingManager *)self editingContextGroups];
  [v19 addObject:v13];

LABEL_13:
}

- (void)partialSaveObject:(id)a3
{
  v4 = a3;
  v5 = +[CUIKLogSubsystem editingContext];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CUIKEditingManager partialSaveObject:v4];
  }

  v6 = [v4 specificIdentifier];
  if (v6)
  {
    v7 = [v4 changeSet];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __40__CUIKEditingManager_partialSaveObject___block_invoke;
    v9[3] = &unk_1E839AE50;
    v9[4] = self;
    v10 = v6;
    v11 = v4;
    v12 = v7;
    v8 = v7;
    [(CUIKEditingManager *)self performWithLock:v9];
  }

  else
  {
    v8 = +[CUIKLogSubsystem editingContext];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CUIKEditingManager partialSaveObject:v8];
    }
  }
}

uint64_t __40__CUIKEditingManager_partialSaveObject___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) changeHistory];
  v12 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v3 = v12;
  if (v12)
  {
    v4 = [*(a1 + 48) changeSet];
    [v12 addChanges:v4 shouldCopyKeyCallback:&__block_literal_global_31];

    v5 = [*(a1 + 32) changedObjectMap];
    v6 = [v5 objectForKeyedSubscript:*(a1 + 40)];

    [v6 addChangesFromObject:*(a1 + 48) copyingBackingObjects:0];
  }

  else
  {
    v7 = *(a1 + 56);
    if (!v7)
    {
      goto LABEL_6;
    }

    v8 = [v7 copy];
    v9 = [*(a1 + 32) changeHistory];
    [v9 setObject:v8 forKeyedSubscript:*(a1 + 40)];

    v6 = [*(a1 + 48) copy];
    v10 = [*(a1 + 32) changedObjectMap];
    [v10 setObject:v6 forKeyedSubscript:*(a1 + 40)];
  }

  v3 = v12;
LABEL_6:

  return MEMORY[0x1EEE66BB8](v7, v3);
}

- (void)applyLiveChangesToObject:(id)a3
{
  v4 = a3;
  v5 = +[CUIKLogSubsystem editingContext];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CUIKEditingManager applyLiveChangesToObject:v4];
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__CUIKEditingManager_applyLiveChangesToObject___block_invoke;
  v7[3] = &unk_1E8399B60;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(CUIKEditingManager *)self performWithLock:v7];
}

void __47__CUIKEditingManager_applyLiveChangesToObject___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) changeHistory];
  v3 = [*(a1 + 40) specificIdentifier];
  v5 = [v2 objectForKeyedSubscript:v3];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 40) applyChanges:v5];
    v4 = v5;
  }
}

- (void)applyLiveChangesToObjects:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(CUIKEditingManager *)self applyLiveChangesToObject:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)clearLiveChangesForObjects:(id)a3
{
  v4 = a3;
  v5 = +[CUIKLogSubsystem editingContext];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CUIKEditingManager clearLiveChangesForObjects:v4];
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__CUIKEditingManager_clearLiveChangesForObjects___block_invoke;
  v7[3] = &unk_1E8399B60;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [(CUIKEditingManager *)self performWithLock:v7];
}

void __49__CUIKEditingManager_clearLiveChangesForObjects___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 specificIdentifier];
        if (v8)
        {
          v9 = [*(a1 + 40) changeHistory];
          [v9 removeObjectForKey:v8];

          v10 = [*(a1 + 40) changedObjectMap];
          [v10 removeObjectForKey:v8];
        }

        else
        {
          v10 = +[CUIKLogSubsystem editingContext];
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            __49__CUIKEditingManager_clearLiveChangesForObjects___block_invoke_cold_1(v16, v7, &v17, v10);
          }
        }

        v11 = [v7 uniqueIdentifier];
        if (v11)
        {
          [*(*(a1 + 40) + 8) removeObject:v11];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v4);
  }
}

- (void)clearAllLiveChanges
{
  v3 = +[CUIKLogSubsystem editingContext];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(CUIKEditingManager *)v3 clearAllLiveChanges];
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__CUIKEditingManager_clearAllLiveChanges__block_invoke;
  v4[3] = &unk_1E8399BD8;
  v4[4] = self;
  [(CUIKEditingManager *)self performWithLock:v4];
}

uint64_t __41__CUIKEditingManager_clearAllLiveChanges__block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  [*(a1 + 32) setChangeHistory:v2];

  v3 = objc_opt_new();
  [*(a1 + 32) setChangedObjectMap:v3];

  v4 = objc_opt_new();
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  *(v5 + 8) = v4;

  return MEMORY[0x1EEE66BB8](v4, v6);
}

- (id)changedObjectsCopy
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__12;
  v9 = __Block_byref_object_dispose__12;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__CUIKEditingManager_changedObjectsCopy__block_invoke;
  v4[3] = &unk_1E839AE78;
  v4[4] = self;
  v4[5] = &v5;
  [(CUIKEditingManager *)self performWithLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __40__CUIKEditingManager_changedObjectsCopy__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) changedObjectMap];
  v3 = [v2 allValues];

  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
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
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = *(*(a1 + 32) + 8);
        v12 = [v10 uniqueIdentifier];
        LOBYTE(v11) = [v11 containsObject:v12];

        if ((v11 & 1) == 0)
        {
          v13 = [v10 copy];
          [v4 addObject:v13];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v4;
}

- (id)_objectsWithLiveEdits:(id)a3 matchingPredicate:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        if ([(CUIKEditingManager *)self _changesExistForObject:v15, v19])
        {
          [(CUIKEditingManager *)self applyLiveChangesToObject:v15];
          v16 = [v15 specificIdentifier];
          [v9 addObject:v16];

          if (([v15 isDeleted] & 1) != 0 || -[CUIKEditingManager isHidden:](self, "isHidden:", v15) || v7 && !objc_msgSend(v7, "evaluateWithObject:", v15))
          {
            continue;
          }
        }

        [v8 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  if (v7)
  {
    v17 = [(CUIKEditingManager *)self _liveEditedObjectsMatchingPredicate:v7 notInSet:v9];
    if ([v17 count])
    {
      [v8 addObjectsFromArray:v17];
    }
  }

  return v8;
}

- (id)_liveEditedObjectsMatchingPredicate:(id)a3 notInSet:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__CUIKEditingManager__liveEditedObjectsMatchingPredicate_notInSet___block_invoke;
  aBlock[3] = &unk_1E839AEA0;
  v20 = v7;
  v26 = v20;
  v9 = v6;
  v27 = v9;
  v10 = v8;
  v28 = v10;
  v11 = _Block_copy(aBlock);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = [(CUIKEditingManager *)self changedObjectsCopy];
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      v16 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * v16);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11[2](v11, v17);
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v14);
  }

  v18 = v10;
  return v10;
}

void __67__CUIKEditingManager__liveEditedObjectsMatchingPredicate_notInSet___block_invoke(id *a1, void *a2)
{
  v12 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v12 isDeleted] & 1) == 0)
  {
    v3 = a1[4];
    v4 = [v12 specificIdentifier];
    LOBYTE(v3) = [v3 containsObject:v4];

    if ((v3 & 1) == 0)
    {
      v5 = v12;
      v6 = [v5 recurrenceDate];

      if (v6 || (v7 = MEMORY[0x1E6966AC8], [v5 localUID], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "startDate"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "recurrenceIdentifierWithLocalUID:recurrenceDate:", v8, v9), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "identifierString"), v11 = objc_claimAutoreleasedReturnValue(), v10, v9, v8, LOBYTE(v10) = objc_msgSend(a1[4], "containsObject:", v11), v11, (v10 & 1) == 0))
      {
        if ([a1[5] evaluateWithObject:v5])
        {
          [a1[6] addObject:v5];
        }
      }
    }
  }
}

- (BOOL)_changesExistForObject:(id)a3
{
  v4 = a3;
  v5 = [v4 specificIdentifier];
  v6 = [v4 uniqueIdentifier];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__CUIKEditingManager__changesExistForObject___block_invoke;
  v10[3] = &unk_1E839AEC8;
  v13 = &v14;
  v10[4] = self;
  v7 = v5;
  v11 = v7;
  v8 = v6;
  v12 = v8;
  [(CUIKEditingManager *)self performWithLock:v10];
  LOBYTE(self) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return self;
}

void __45__CUIKEditingManager__changesExistForObject___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) changeHistory];
  v2 = [v4 objectForKeyedSubscript:*(a1 + 40)];
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = [*(*(a1 + 32) + 8) containsObject:*(a1 + 48)];
  }

  *(*(*(a1 + 56) + 8) + 24) = v3;
}

- (id)eventsMatchingPredicate:(id)a3
{
  v4 = a3;
  v5 = [(CUIKEditingManager *)self eventStore];
  v6 = [v5 eventsMatchingPredicate:v4];

  v7 = [(CUIKEditingManager *)self _objectsWithLiveEdits:v6 matchingPredicate:v4];

  return v7;
}

- (void)fetchEventsMatchingPredicate:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CUIKEditingManager *)self eventStore];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__CUIKEditingManager_fetchEventsMatchingPredicate_completion___block_invoke;
  v12[3] = &unk_1E839AEF0;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [v8 fetchEventsMatchingPredicate:v10 resultHandler:v12];
}

uint64_t __62__CUIKEditingManager_fetchEventsMatchingPredicate_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _objectsWithLiveEdits:a2 matchingPredicate:*(a1 + 40)];
  v4 = *(a1 + 48);
  if (v4)
  {
    v6 = v3;
    v4 = (*(v4 + 16))();
    v3 = v6;
  }

  return MEMORY[0x1EEE66BB8](v4, v3);
}

- (id)eventWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CUIKEditingManager *)self eventStore];
  v6 = [v5 eventWithIdentifier:v4];

  if (!v6)
  {
    v6 = [(CUIKEditingManager *)self eventWithAlias:v4];
  }

  [(CUIKEditingManager *)self applyLiveChangesToObject:v6];

  return v6;
}

- (id)eventsWithIdentifiers:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
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

        v11 = [(CUIKEditingManager *)self eventWithIdentifier:*(*(&v14 + 1) + 8 * i), v14];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [(CUIKEditingManager *)self applyLiveChangesToObjects:v5];
  v12 = [v5 copy];

  return v12;
}

- (id)eventsWithExternalIdentifier:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CUIKEditingManager *)self eventStore];
  v6 = [v5 calendarItemsWithExternalIdentifier:v4];

  v7 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v7 addObject:{v13, v15}];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  [(CUIKEditingManager *)self applyLiveChangesToObjects:v7];

  return v7;
}

- (void)hide:(id)a3
{
  v4 = [a3 valueForKey:@"uniqueIdentifier"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __27__CUIKEditingManager_hide___block_invoke;
  v6[3] = &unk_1E8399B60;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CUIKEditingManager *)self performWithLock:v6];
}

- (void)unhide:(id)a3
{
  v4 = [a3 valueForKey:@"uniqueIdentifier"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__CUIKEditingManager_unhide___block_invoke;
  v6[3] = &unk_1E8399B60;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(CUIKEditingManager *)self performWithLock:v6];
}

void __29__CUIKEditingManager_unhide___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(a1 + 40) + 8) removeObject:{*(*(&v7 + 1) + 8 * v6++), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (BOOL)isHidden:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = [v4 uniqueIdentifier];
  v6 = v5;
  if (v5)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __31__CUIKEditingManager_isHidden___block_invoke;
    v9[3] = &unk_1E839A710;
    v11 = &v12;
    v9[4] = self;
    v10 = v5;
    [(CUIKEditingManager *)self performWithLock:v9];
  }

  v7 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v7;
}

uint64_t __31__CUIKEditingManager_isHidden___block_invoke(void *a1)
{
  result = [*(a1[4] + 8) containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (void)addAlias:(id)a3 eventIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__CUIKEditingManager_addAlias_eventIdentifier___block_invoke;
  v10[3] = &unk_1E839A260;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(CUIKEditingManager *)self performWithLock:v10];
}

uint64_t __47__CUIKEditingManager_addAlias_eventIdentifier___block_invoke(void *a1)
{
  v2 = *(a1[4] + 16);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = a1[4];
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v2 = *(a1[4] + 16);
  }

  v7 = a1[5];
  v6 = a1[6];

  return [v2 setObject:v6 forKeyedSubscript:v7];
}

- (id)eventWithAlias:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E6966AC8] recurrenceIdentifierWithString:v4];
  v6 = [v5 localUID];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__12;
  v28 = __Block_byref_object_dispose__12;
  v29 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __37__CUIKEditingManager_eventWithAlias___block_invoke;
  v21[3] = &unk_1E839A710;
  v23 = &v24;
  v21[4] = self;
  v7 = v6;
  v22 = v7;
  [(CUIKEditingManager *)self performWithLock:v21];
  if (v25[5])
  {
    v8 = [(CUIKEditingManager *)self eventStore];
    v9 = [v8 eventWithIdentifier:v25[5]];

    if (v9)
    {
      v10 = [v5 recurrenceDate];
      if (v10)
      {
        v11 = MEMORY[0x1E6966AC8];
        v12 = [v9 UUID];
        v13 = [v5 recurrenceDate];
        v14 = [v11 recurrenceIdentifierWithLocalUID:v12 recurrenceDate:v13];

        v15 = [(CUIKEditingManager *)self eventStore];
        v16 = [v15 eventWithRecurrenceIdentifier:v14];

        v9 = v16;
      }
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __37__CUIKEditingManager_eventWithAlias___block_invoke_2;
    v18[3] = &unk_1E839AF18;
    v18[4] = self;
    v19 = v7;
    v20 = &v24;
    dispatch_async(MEMORY[0x1E69E96A0], v18);
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v24, 8);

  return v9;
}

uint64_t __37__CUIKEditingManager_eventWithAlias___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void __37__CUIKEditingManager_eventWithAlias___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__CUIKEditingManager_eventWithAlias___block_invoke_3;
  v5[3] = &unk_1E839AF18;
  v5[4] = v2;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 performWithLock:v5];
}

void __37__CUIKEditingManager_eventWithAlias___block_invoke_3(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v3 = [v2 isEqualToString:*(*(a1[6] + 8) + 40)];

  if (v3)
  {
    v4 = a1[5];
    v5 = *(a1[4] + 16);

    [v5 setObject:0 forKeyedSubscript:v4];
  }
}

- (id)remindersMatchingPredicate:(id)a3
{
  v4 = a3;
  v5 = [(CUIKEditingManager *)self eventStore];
  v6 = [v5 remindersMatchingPredicate:v4];

  v7 = [(CUIKEditingManager *)self _objectsWithLiveEdits:v6 matchingPredicate:v4];

  return v7;
}

- (void)fetchRemindersMatchingPredicate:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CUIKEditingManager *)self eventStore];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__CUIKEditingManager_fetchRemindersMatchingPredicate_completion___block_invoke;
  v12[3] = &unk_1E839AEF0;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [v8 fetchRemindersMatchingPredicate:v10 completion:v12];
}

uint64_t __65__CUIKEditingManager_fetchRemindersMatchingPredicate_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _objectsWithLiveEdits:a2 matchingPredicate:*(a1 + 40)];
  v4 = *(a1 + 48);
  if (v4)
  {
    v6 = v3;
    v4 = (*(v4 + 16))();
    v3 = v6;
  }

  return MEMORY[0x1EEE66BB8](v4, v3);
}

- (id)remindersWithExternalIdentifier:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CUIKEditingManager *)self eventStore];
  v6 = [v5 calendarItemsWithExternalIdentifier:v4];

  v7 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v7 addObject:{v13, v15}];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  [(CUIKEditingManager *)self applyLiveChangesToObjects:v7];

  return v7;
}

- (BOOL)_closeEditingContext:(id)a3 action:(unint64_t)a4 condition:(unint64_t)a5 shouldClose:(BOOL *)a6
{
  v34 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = v10;
  if (!v10)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"editing context is nil"];
    v19 = 0;
    goto LABEL_27;
  }

  v12 = [v10 group];
  v25 = 1;
  v13 = [v12 activeEditingContextsExcludingContext:v11];
  v14 = [v13 count];

  v15 = +[CUIKLogSubsystem editingContext];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = @"unknown";
    v17 = @"unknown";
    if (a4 <= 2)
    {
      v17 = off_1E839AF38[a4];
    }

    if (a5 == 1)
    {
      v16 = @"lastOnly";
    }

    if (!a5)
    {
      v16 = @"always";
    }

    v18 = v16;
    *buf = 134218754;
    v27 = v11;
    v28 = 2114;
    v29 = v17;
    v30 = 2114;
    v31 = v18;
    v32 = 2048;
    v33 = v14;
    _os_log_impl(&dword_1CAB19000, v15, OS_LOG_TYPE_DEFAULT, "Closing context %p.  action=%{public}@; condition = %{public}@; Other active contexts? %lu", buf, 0x2Au);
  }

  if (!a5 || !v14)
  {
    if (a4 == 2)
    {
      [v11 revert:0];
    }

    else if (a4 == 1)
    {
      v19 = [(CUIKEditingManager *)self _commitChangesForContext:v11 forceCommit:a5 == 0 shouldClose:&v25];
      v20 = v25;
      if (!a6)
      {
LABEL_21:
        if (!v20)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

LABEL_20:
      *a6 = v20;
      goto LABEL_21;
    }

    v20 = 1;
    v19 = 1;
    if (!a6)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v19 = 1;
LABEL_22:
  [v12 removeContext:v11];
LABEL_23:
  if (v12)
  {
    v21 = [v12 openContexts];
    v22 = [v21 count];

    if (!v22)
    {
      v23 = [(CUIKEditingManager *)self editingContextGroups];
      [v23 removeObject:v12];
    }
  }

LABEL_27:
  return v19;
}

- (BOOL)_commitChangesForContext:(id)a3 forceCommit:(BOOL)a4 shouldClose:(BOOL *)a5
{
  v6 = a4;
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (!v8)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"editing context is nil"];
LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  v9 = +[CUIKLogSubsystem editingContext];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 134218240;
    v20 = v8;
    v21 = 1024;
    v22 = v6;
    _os_log_impl(&dword_1CAB19000, v9, OS_LOG_TYPE_DEFAULT, "Committing changes in context %p.  Force commit? %d", &v19, 0x12u);
  }

  if (![v8 _prepareForCommitWithDecision:v6 shouldClose:a5])
  {
    goto LABEL_9;
  }

  v10 = +[CUIKLogSubsystem editingContext];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 134217984;
    v20 = v8;
    _os_log_impl(&dword_1CAB19000, v10, OS_LOG_TYPE_DEFAULT, "Actually committing changes in context %p", &v19, 0xCu);
  }

  v11 = [(CUIKEditingManager *)self eventStore];
  v12 = [v8 group];
  v13 = [v12 objectsToCommit];
  v14 = [v11 commitObjects:v13 error:0];

  v15 = [v8 group];
  v16 = [v15 objectsToCommit];
  v17 = [v16 allObjects];
  [(CUIKEditingManager *)self clearLiveChangesForObjects:v17];

LABEL_10:
  return v14;
}

- (id)_allOpenEditingContexts
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(CUIKEditingManager *)self editingContextGroups];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) openContexts];
        [v3 unionSet:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 allObjects];

  return v10;
}

- (void)performWithLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2]();
  os_unfair_lock_unlock(&self->_lock);
}

- (EKEventStore)eventStore
{
  WeakRetained = objc_loadWeakRetained(&self->_eventStore);

  return WeakRetained;
}

- (void)partialSaveObject:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 specificIdentifier];
  OUTLINED_FUNCTION_0_7(&dword_1CAB19000, v2, v3, "Partial saving object: %@", v4, v5, v6, v7, 2u);
}

- (void)applyLiveChangesToObject:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 specificIdentifier];
  OUTLINED_FUNCTION_0_7(&dword_1CAB19000, v2, v3, "Applying live changes to object: %@", v4, v5, v6, v7, 2u);
}

- (void)clearLiveChangesForObjects:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 valueForKey:@"specificIdentifier"];
  OUTLINED_FUNCTION_0_7(&dword_1CAB19000, v2, v3, "Clearing live changes for objects: %@", v4, v5, v6, v7, 2u);
}

void __49__CUIKEditingManager_clearLiveChangesForObjects___block_invoke_cold_1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 objectID];
  *a1 = 138543362;
  *a3 = v7;
  _os_log_error_impl(&dword_1CAB19000, a4, OS_LOG_TYPE_ERROR, "Object (%{public}@) does not have a specific identifier.", a1, 0xCu);
}

@end