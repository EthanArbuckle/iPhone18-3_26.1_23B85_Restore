@interface CUIKEditingContextGroup
- (BOOL)earlyCommitDecisionForGroupIsSet;
- (BOOL)spanDecisionForGroupIsSet;
- (CUIKEditingContextGroup)initWithObjectGroup:(id)a3;
- (EKEventStore)eventStore;
- (id)activeEditingContexts;
- (id)activeEditingContextsExcludingContext:(id)a3;
- (id)newIdentifierForIdentifier:(id)a3;
- (id)objectsToCommit;
- (id)oldObject:(id)a3 didUpdateTo:(id)a4;
- (id)originalObjects;
- (id)trackedObjects;
- (unint64_t)earlyCommitDecisionForGroup;
- (unint64_t)spanDecisionForGroup;
- (void)addAdditionalObjects:(id)a3;
- (void)addContext:(id)a3;
- (void)removeContext:(id)a3;
- (void)specifyEarlyCommitDecisionForGroup:(unint64_t)a3;
- (void)specifySpanDecisionForGroup:(unint64_t)a3;
@end

@implementation CUIKEditingContextGroup

- (CUIKEditingContextGroup)initWithObjectGroup:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CUIKEditingContextGroup;
  v5 = [(CUIKEditingContextGroup *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(CUIKEditingContextGroup *)v5 setObjectGroup:v4];
    v7 = [MEMORY[0x1E695DF70] array];
    [(CUIKEditingContextGroup *)v6 setAdditionalObjectGroups:v7];
  }

  return v6;
}

- (void)addContext:(id)a3
{
  v4 = a3;
  v5 = [(CUIKEditingContextGroup *)self openContexts];

  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    [(CUIKEditingContextGroup *)self setOpenContexts:v6];
  }

  [v4 setGroup:self];
  [v4 _markAsOpen];
  v7 = +[CUIKLogSubsystem editingContext];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [CUIKEditingContextGroup addContext:];
  }

  v8 = [(CUIKEditingContextGroup *)self openContexts];
  [v8 addObject:v4];
}

- (void)removeContext:(id)a3
{
  v4 = a3;
  [v4 _markAsClosed];
  v5 = +[CUIKLogSubsystem editingContext];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CUIKEditingContextGroup removeContext:];
  }

  v6 = [(CUIKEditingContextGroup *)self openContexts];
  [v6 removeObject:v4];
}

- (id)activeEditingContexts
{
  v2 = [(CUIKEditingContextGroup *)self openContexts];
  v3 = [v2 objectsPassingTest:&__block_literal_global_11];

  return v3;
}

- (id)activeEditingContextsExcludingContext:(id)a3
{
  v4 = a3;
  v5 = [(CUIKEditingContextGroup *)self openContexts];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__CUIKEditingContextGroup_activeEditingContextsExcludingContext___block_invoke;
  v9[3] = &unk_1E839A4A8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 objectsPassingTest:v9];

  return v7;
}

uint64_t __65__CUIKEditingContextGroup_activeEditingContextsExcludingContext___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == a2)
  {
    return 0;
  }

  else
  {
    return [a2 isActive];
  }
}

- (void)specifySpanDecisionForGroup:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(CUIKEditingContextGroup *)self setSpanDecisionAsNumber:v4];
}

- (BOOL)spanDecisionForGroupIsSet
{
  v2 = [(CUIKEditingContextGroup *)self spanDecisionAsNumber];
  v3 = v2 != 0;

  return v3;
}

- (unint64_t)spanDecisionForGroup
{
  v2 = [(CUIKEditingContextGroup *)self spanDecisionAsNumber];
  v3 = [v2 integerValue];

  return v3;
}

- (void)specifyEarlyCommitDecisionForGroup:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(CUIKEditingContextGroup *)self setEarlyCommitDecisionAsNumber:v4];
}

- (BOOL)earlyCommitDecisionForGroupIsSet
{
  v2 = [(CUIKEditingContextGroup *)self earlyCommitDecisionAsNumber];
  v3 = v2 != 0;

  return v3;
}

- (unint64_t)earlyCommitDecisionForGroup
{
  v2 = [(CUIKEditingContextGroup *)self earlyCommitDecisionAsNumber];
  v3 = [v2 integerValue];

  return v3;
}

- (id)objectsToCommit
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFA8];
  v4 = [(CUIKEditingContextGroup *)self objectGroup];
  v5 = [v4 objects];
  v6 = [v3 setWithArray:v5];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(CUIKEditingContextGroup *)self additionalObjectGroups];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = MEMORY[0x1E695DFD8];
        v13 = [*(*(&v16 + 1) + 8 * i) objects];
        v14 = [v12 setWithArray:v13];
        [v6 unionSet:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)trackedObjects
{
  v2 = [(CUIKEditingContextGroup *)self objectGroup];
  v3 = [v2 objects];

  return v3;
}

- (id)originalObjects
{
  v2 = [(CUIKEditingContextGroup *)self objectGroup];
  v3 = [v2 originalObjects];

  return v3;
}

- (void)addAdditionalObjects:(id)a3
{
  v6 = a3;
  if ([v6 count])
  {
    v4 = [[CUIKObjectGroup alloc] initWithObjects:v6];
    v5 = [(CUIKEditingContextGroup *)self additionalObjectGroups];
    [v5 addObject:v4];
  }
}

- (id)newIdentifierForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CUIKEditingContextGroup *)self objectGroup];
  v6 = [v5 shiftedOccurrencePreviouslySpawnedByIdentifier:v4];

  return v6;
}

- (id)oldObject:(id)a3 didUpdateTo:(id)a4
{
  if (a3 && a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = [(CUIKEditingContextGroup *)self objectGroup];
    [v8 newObject:v6 spawnedFromObject:v7];
  }

  return 0;
}

- (EKEventStore)eventStore
{
  WeakRetained = objc_loadWeakRetained(&self->_eventStore);

  return WeakRetained;
}

@end