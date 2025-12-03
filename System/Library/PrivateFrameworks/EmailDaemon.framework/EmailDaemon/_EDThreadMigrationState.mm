@interface _EDThreadMigrationState
- (BOOL)_verifyIsMigratingGeneration:(unint64_t)generation stateVerifier:(id)verifier logIdentifier:(id)identifier logAction:(id)action logCount:(unint64_t)count;
- (BOOL)isFullyMigrated;
- (BOOL)isInProgress;
- (BOOL)verifyIsMigratingGeneration:(unint64_t)generation andIsInState:(unint64_t)state logIdentifier:(id)identifier logAction:(id)action logCount:(unint64_t)count;
- (BOOL)verifyIsMigratingGeneration:(unint64_t)generation andIsInState:(unint64_t)state orState:(unint64_t)orState logIdentifier:(id)identifier logAction:(id)action logCount:(unint64_t)count;
- (_EDThreadMigrationState)init;
- (id)nextBatch;
- (void)_removeAllObjectIDs;
- (void)cancel;
- (void)fail;
- (void)reset;
@end

@implementation _EDThreadMigrationState

- (_EDThreadMigrationState)init
{
  v10.receiver = self;
  v10.super_class = _EDThreadMigrationState;
  v2 = [(_EDThreadMigrationState *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB50]);
    objectIDsToMigrate = v2->_objectIDsToMigrate;
    v2->_objectIDsToMigrate = v3;

    v5 = objc_alloc_init(MEMORY[0x1E696AB50]);
    recentlyMigratedObjectIDs = v2->_recentlyMigratedObjectIDs;
    v2->_recentlyMigratedObjectIDs = v5;

    v7 = objc_alloc_init(MEMORY[0x1E696AB50]);
    recentlyDeletedObjectIDs = v2->_recentlyDeletedObjectIDs;
    v2->_recentlyDeletedObjectIDs = v7;

    [(_EDThreadMigrationState *)v2 setState:0];
  }

  return v2;
}

- (BOOL)isFullyMigrated
{
  isEmpty = [(_EDThreadMigrationState *)self isEmpty];
  if (isEmpty)
  {
    if ([(NSCountedSet *)self->_recentlyMigratedObjectIDs count])
    {
      LOBYTE(isEmpty) = 0;
    }

    else
    {
      LOBYTE(isEmpty) = [(NSCountedSet *)self->_recentlyDeletedObjectIDs count]== 0;
    }
  }

  return isEmpty;
}

- (BOOL)isInProgress
{
  state = [(_EDThreadMigrationState *)self state];
  if (state != 1)
  {
    LOBYTE(state) = [(_EDThreadMigrationState *)self state]== 2;
  }

  return state;
}

- (void)reset
{
  [(_EDThreadMigrationState *)self setState:0];
  [(_EDThreadMigrationState *)self _removeAllObjectIDs];
  ++self->_generation;
}

- (void)fail
{
  [(_EDThreadMigrationState *)self setState:4];

  [(_EDThreadMigrationState *)self _removeAllObjectIDs];
}

- (void)cancel
{
  [(_EDThreadMigrationState *)self setState:5];

  [(_EDThreadMigrationState *)self _removeAllObjectIDs];
}

- (void)_removeAllObjectIDs
{
  [(NSCountedSet *)self->_objectIDsToMigrate removeAllObjects];
  [(NSCountedSet *)self->_recentlyMigratedObjectIDs removeAllObjects];
  recentlyDeletedObjectIDs = self->_recentlyDeletedObjectIDs;

  [(NSCountedSet *)recentlyDeletedObjectIDs removeAllObjects];
}

- (id)nextBatch
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(NSCountedSet *)self->_objectIDsToMigrate count])
  {
    while ([v3 count] <= 0x1F3 && -[NSCountedSet count](self->_objectIDsToMigrate, "count"))
    {
      anyObject = [(NSCountedSet *)self->_objectIDsToMigrate anyObject];
      [v3 addObject:anyObject];
      [(NSCountedSet *)self->_objectIDsToMigrate removeObject:anyObject];
      [(NSCountedSet *)self->_recentlyMigratedObjectIDs addObject:anyObject];
    }
  }

  return v3;
}

- (BOOL)verifyIsMigratingGeneration:(unint64_t)generation andIsInState:(unint64_t)state logIdentifier:(id)identifier logAction:(id)action logCount:(unint64_t)count
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __101___EDThreadMigrationState_verifyIsMigratingGeneration_andIsInState_logIdentifier_logAction_logCount___block_invoke;
  v8[3] = &unk_1E8257FE0;
  v8[4] = self;
  v8[5] = state;
  return [(_EDThreadMigrationState *)self _verifyIsMigratingGeneration:generation stateVerifier:v8 logIdentifier:identifier logAction:action logCount:count];
}

- (BOOL)verifyIsMigratingGeneration:(unint64_t)generation andIsInState:(unint64_t)state orState:(unint64_t)orState logIdentifier:(id)identifier logAction:(id)action logCount:(unint64_t)count
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __109___EDThreadMigrationState_verifyIsMigratingGeneration_andIsInState_orState_logIdentifier_logAction_logCount___block_invoke;
  v9[3] = &unk_1E8258008;
  v9[4] = self;
  v9[5] = state;
  v9[6] = orState;
  return [(_EDThreadMigrationState *)self _verifyIsMigratingGeneration:generation stateVerifier:v9 logIdentifier:identifier logAction:action logCount:count];
}

- (BOOL)_verifyIsMigratingGeneration:(unint64_t)generation stateVerifier:(id)verifier logIdentifier:(id)identifier logAction:(id)action logCount:(unint64_t)count
{
  v31 = *MEMORY[0x1E69E9840];
  verifierCopy = verifier;
  identifierCopy = identifier;
  actionCopy = action;
  if ([(_EDThreadMigrationState *)self generation]!= generation)
  {
    v16 = +[EDThreadMigrator log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 134219010;
      v22 = identifierCopy;
      v23 = 2048;
      generationCopy2 = generation;
      v25 = 2114;
      v26 = actionCopy;
      v27 = 2048;
      countCopy2 = count;
      v29 = 2048;
      generation = [(_EDThreadMigrationState *)self generation];
      _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEFAULT, "%p[%lu]: %{public}@ for %lu threads due to generation change (to %lu)", &v21, 0x34u);
    }

    goto LABEL_7;
  }

  if ((verifierCopy[2](verifierCopy) & 1) == 0)
  {
    v16 = +[EDThreadMigrator log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      state = [(_EDThreadMigrationState *)self state];
      if (state - 1 > 4)
      {
        v20 = @"Not Started";
      }

      else
      {
        v20 = off_1E8258028[state - 1];
      }

      v21 = 134219010;
      v22 = identifierCopy;
      v23 = 2048;
      generationCopy2 = generation;
      v25 = 2114;
      v26 = actionCopy;
      v27 = 2048;
      countCopy2 = count;
      v29 = 2114;
      generation = v20;
      _os_log_error_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_ERROR, "%p[%lu]: %{public}@ for %lu threads due to wrong state: %{public}@", &v21, 0x34u);
    }

LABEL_7:

    v15 = 0;
    goto LABEL_8;
  }

  v15 = 1;
LABEL_8:

  v17 = *MEMORY[0x1E69E9840];
  return v15;
}

@end