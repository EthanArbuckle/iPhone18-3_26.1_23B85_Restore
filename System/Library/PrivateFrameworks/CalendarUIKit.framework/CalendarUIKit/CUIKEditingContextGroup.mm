@interface CUIKEditingContextGroup
- (BOOL)earlyCommitDecisionForGroupIsSet;
- (BOOL)spanDecisionForGroupIsSet;
- (CUIKEditingContextGroup)initWithObjectGroup:(id)group;
- (EKEventStore)eventStore;
- (id)activeEditingContexts;
- (id)activeEditingContextsExcludingContext:(id)context;
- (id)newIdentifierForIdentifier:(id)identifier;
- (id)objectsToCommit;
- (id)oldObject:(id)object didUpdateTo:(id)to;
- (id)originalObjects;
- (id)trackedObjects;
- (unint64_t)earlyCommitDecisionForGroup;
- (unint64_t)spanDecisionForGroup;
- (void)addAdditionalObjects:(id)objects;
- (void)addContext:(id)context;
- (void)removeContext:(id)context;
- (void)specifyEarlyCommitDecisionForGroup:(unint64_t)group;
- (void)specifySpanDecisionForGroup:(unint64_t)group;
@end

@implementation CUIKEditingContextGroup

- (CUIKEditingContextGroup)initWithObjectGroup:(id)group
{
  groupCopy = group;
  v9.receiver = self;
  v9.super_class = CUIKEditingContextGroup;
  v5 = [(CUIKEditingContextGroup *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(CUIKEditingContextGroup *)v5 setObjectGroup:groupCopy];
    array = [MEMORY[0x1E695DF70] array];
    [(CUIKEditingContextGroup *)v6 setAdditionalObjectGroups:array];
  }

  return v6;
}

- (void)addContext:(id)context
{
  contextCopy = context;
  openContexts = [(CUIKEditingContextGroup *)self openContexts];

  if (!openContexts)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    [(CUIKEditingContextGroup *)self setOpenContexts:v6];
  }

  [contextCopy setGroup:self];
  [contextCopy _markAsOpen];
  v7 = +[CUIKLogSubsystem editingContext];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [CUIKEditingContextGroup addContext:];
  }

  openContexts2 = [(CUIKEditingContextGroup *)self openContexts];
  [openContexts2 addObject:contextCopy];
}

- (void)removeContext:(id)context
{
  contextCopy = context;
  [contextCopy _markAsClosed];
  v5 = +[CUIKLogSubsystem editingContext];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CUIKEditingContextGroup removeContext:];
  }

  openContexts = [(CUIKEditingContextGroup *)self openContexts];
  [openContexts removeObject:contextCopy];
}

- (id)activeEditingContexts
{
  openContexts = [(CUIKEditingContextGroup *)self openContexts];
  v3 = [openContexts objectsPassingTest:&__block_literal_global_11];

  return v3;
}

- (id)activeEditingContextsExcludingContext:(id)context
{
  contextCopy = context;
  openContexts = [(CUIKEditingContextGroup *)self openContexts];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__CUIKEditingContextGroup_activeEditingContextsExcludingContext___block_invoke;
  v9[3] = &unk_1E839A4A8;
  v10 = contextCopy;
  v6 = contextCopy;
  v7 = [openContexts objectsPassingTest:v9];

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

- (void)specifySpanDecisionForGroup:(unint64_t)group
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:group];
  [(CUIKEditingContextGroup *)self setSpanDecisionAsNumber:v4];
}

- (BOOL)spanDecisionForGroupIsSet
{
  spanDecisionAsNumber = [(CUIKEditingContextGroup *)self spanDecisionAsNumber];
  v3 = spanDecisionAsNumber != 0;

  return v3;
}

- (unint64_t)spanDecisionForGroup
{
  spanDecisionAsNumber = [(CUIKEditingContextGroup *)self spanDecisionAsNumber];
  integerValue = [spanDecisionAsNumber integerValue];

  return integerValue;
}

- (void)specifyEarlyCommitDecisionForGroup:(unint64_t)group
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:group];
  [(CUIKEditingContextGroup *)self setEarlyCommitDecisionAsNumber:v4];
}

- (BOOL)earlyCommitDecisionForGroupIsSet
{
  earlyCommitDecisionAsNumber = [(CUIKEditingContextGroup *)self earlyCommitDecisionAsNumber];
  v3 = earlyCommitDecisionAsNumber != 0;

  return v3;
}

- (unint64_t)earlyCommitDecisionForGroup
{
  earlyCommitDecisionAsNumber = [(CUIKEditingContextGroup *)self earlyCommitDecisionAsNumber];
  integerValue = [earlyCommitDecisionAsNumber integerValue];

  return integerValue;
}

- (id)objectsToCommit
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFA8];
  objectGroup = [(CUIKEditingContextGroup *)self objectGroup];
  objects = [objectGroup objects];
  v6 = [v3 setWithArray:objects];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  additionalObjectGroups = [(CUIKEditingContextGroup *)self additionalObjectGroups];
  v8 = [additionalObjectGroups countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(additionalObjectGroups);
        }

        v12 = MEMORY[0x1E695DFD8];
        objects2 = [*(*(&v16 + 1) + 8 * i) objects];
        v14 = [v12 setWithArray:objects2];
        [v6 unionSet:v14];
      }

      v9 = [additionalObjectGroups countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)trackedObjects
{
  objectGroup = [(CUIKEditingContextGroup *)self objectGroup];
  objects = [objectGroup objects];

  return objects;
}

- (id)originalObjects
{
  objectGroup = [(CUIKEditingContextGroup *)self objectGroup];
  originalObjects = [objectGroup originalObjects];

  return originalObjects;
}

- (void)addAdditionalObjects:(id)objects
{
  objectsCopy = objects;
  if ([objectsCopy count])
  {
    v4 = [[CUIKObjectGroup alloc] initWithObjects:objectsCopy];
    additionalObjectGroups = [(CUIKEditingContextGroup *)self additionalObjectGroups];
    [additionalObjectGroups addObject:v4];
  }
}

- (id)newIdentifierForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objectGroup = [(CUIKEditingContextGroup *)self objectGroup];
  v6 = [objectGroup shiftedOccurrencePreviouslySpawnedByIdentifier:identifierCopy];

  return v6;
}

- (id)oldObject:(id)object didUpdateTo:(id)to
{
  if (object && to)
  {
    toCopy = to;
    objectCopy = object;
    objectGroup = [(CUIKEditingContextGroup *)self objectGroup];
    [objectGroup newObject:toCopy spawnedFromObject:objectCopy];
  }

  return 0;
}

- (EKEventStore)eventStore
{
  WeakRetained = objc_loadWeakRetained(&self->_eventStore);

  return WeakRetained;
}

@end