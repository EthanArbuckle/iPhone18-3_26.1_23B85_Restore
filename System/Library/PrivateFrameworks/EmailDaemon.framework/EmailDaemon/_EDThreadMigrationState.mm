@interface _EDThreadMigrationState
- (BOOL)_verifyIsMigratingGeneration:(unint64_t)a3 stateVerifier:(id)a4 logIdentifier:(id)a5 logAction:(id)a6 logCount:(unint64_t)a7;
- (BOOL)isFullyMigrated;
- (BOOL)isInProgress;
- (BOOL)verifyIsMigratingGeneration:(unint64_t)a3 andIsInState:(unint64_t)a4 logIdentifier:(id)a5 logAction:(id)a6 logCount:(unint64_t)a7;
- (BOOL)verifyIsMigratingGeneration:(unint64_t)a3 andIsInState:(unint64_t)a4 orState:(unint64_t)a5 logIdentifier:(id)a6 logAction:(id)a7 logCount:(unint64_t)a8;
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
  v3 = [(_EDThreadMigrationState *)self isEmpty];
  if (v3)
  {
    if ([(NSCountedSet *)self->_recentlyMigratedObjectIDs count])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = [(NSCountedSet *)self->_recentlyDeletedObjectIDs count]== 0;
    }
  }

  return v3;
}

- (BOOL)isInProgress
{
  v3 = [(_EDThreadMigrationState *)self state];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(_EDThreadMigrationState *)self state]== 2;
  }

  return v3;
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
      v4 = [(NSCountedSet *)self->_objectIDsToMigrate anyObject];
      [v3 addObject:v4];
      [(NSCountedSet *)self->_objectIDsToMigrate removeObject:v4];
      [(NSCountedSet *)self->_recentlyMigratedObjectIDs addObject:v4];
    }
  }

  return v3;
}

- (BOOL)verifyIsMigratingGeneration:(unint64_t)a3 andIsInState:(unint64_t)a4 logIdentifier:(id)a5 logAction:(id)a6 logCount:(unint64_t)a7
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __101___EDThreadMigrationState_verifyIsMigratingGeneration_andIsInState_logIdentifier_logAction_logCount___block_invoke;
  v8[3] = &unk_1E8257FE0;
  v8[4] = self;
  v8[5] = a4;
  return [(_EDThreadMigrationState *)self _verifyIsMigratingGeneration:a3 stateVerifier:v8 logIdentifier:a5 logAction:a6 logCount:a7];
}

- (BOOL)verifyIsMigratingGeneration:(unint64_t)a3 andIsInState:(unint64_t)a4 orState:(unint64_t)a5 logIdentifier:(id)a6 logAction:(id)a7 logCount:(unint64_t)a8
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __109___EDThreadMigrationState_verifyIsMigratingGeneration_andIsInState_orState_logIdentifier_logAction_logCount___block_invoke;
  v9[3] = &unk_1E8258008;
  v9[4] = self;
  v9[5] = a4;
  v9[6] = a5;
  return [(_EDThreadMigrationState *)self _verifyIsMigratingGeneration:a3 stateVerifier:v9 logIdentifier:a6 logAction:a7 logCount:a8];
}

- (BOOL)_verifyIsMigratingGeneration:(unint64_t)a3 stateVerifier:(id)a4 logIdentifier:(id)a5 logAction:(id)a6 logCount:(unint64_t)a7
{
  v31 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if ([(_EDThreadMigrationState *)self generation]!= a3)
  {
    v16 = +[EDThreadMigrator log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 134219010;
      v22 = v13;
      v23 = 2048;
      v24 = a3;
      v25 = 2114;
      v26 = v14;
      v27 = 2048;
      v28 = a7;
      v29 = 2048;
      v30 = [(_EDThreadMigrationState *)self generation];
      _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEFAULT, "%p[%lu]: %{public}@ for %lu threads due to generation change (to %lu)", &v21, 0x34u);
    }

    goto LABEL_7;
  }

  if ((v12[2](v12) & 1) == 0)
  {
    v16 = +[EDThreadMigrator log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = [(_EDThreadMigrationState *)self state];
      if (v19 - 1 > 4)
      {
        v20 = @"Not Started";
      }

      else
      {
        v20 = off_1E8258028[v19 - 1];
      }

      v21 = 134219010;
      v22 = v13;
      v23 = 2048;
      v24 = a3;
      v25 = 2114;
      v26 = v14;
      v27 = 2048;
      v28 = a7;
      v29 = 2114;
      v30 = v20;
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