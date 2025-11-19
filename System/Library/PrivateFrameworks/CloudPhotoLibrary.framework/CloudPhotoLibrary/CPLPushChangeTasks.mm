@interface CPLPushChangeTasks
+ (id)descriptionForTaskType:(int64_t)a3;
- (CPLPushChangeTasks)initWithCoder:(id)a3;
- (id)_descriptionFromTasksByType:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initEmpty;
- (id)invalidRecordIdentifiers;
- (id)invalidRecordScopedIdentifiers;
- (void)_commitTasks;
- (void)addTask:(int64_t)a3 forRecordWithScopedIdentifier:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateScopedTasksWithBlock:(id)a3;
- (void)enumerateTasksWithBlock:(id)a3;
@end

@implementation CPLPushChangeTasks

- (id)invalidRecordIdentifiers
{
  v2 = [(CPLPushChangeTasks *)self invalidRecordScopedIdentifiers];
  v3 = [CPLScopedIdentifier unscopedIdentifiersFromSetOfScopedIdentifiers:v2];

  return v3;
}

- (id)invalidRecordScopedIdentifiers
{
  v3 = [(NSDictionary *)self->_tasksByType objectForKeyedSubscript:&unk_1F57EF6B0];
  v4 = [(NSMutableDictionary *)self->_mutableTasksByType objectForKeyedSubscript:&unk_1F57EF6B0];
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = [v3 setByAddingObjectsFromSet:v4];
    }

    else
    {
      v6 = v3;
    }
  }

  else if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  }

  v7 = v6;

  return v7;
}

- (id)description
{
  p_tasksByType = &self->_tasksByType;
  v4 = [(NSDictionary *)self->_tasksByType count];
  v5 = [(NSMutableDictionary *)self->_mutableTasksByType count];
  if (v4)
  {
    if (v5)
    {
      [(CPLPushChangeTasks *)self _commitTasks];
    }

    goto LABEL_5;
  }

  p_tasksByType = &self->_mutableTasksByType;
  if (v5)
  {
LABEL_5:
    v6 = [(CPLPushChangeTasks *)self _descriptionFromTasksByType:*p_tasksByType];
    goto LABEL_6;
  }

  v6 = @"<No Tasks>";
LABEL_6:

  return v6;
}

- (id)_descriptionFromTasksByType:(id)a3
{
  v3 = MEMORY[0x1E696AD60];
  v4 = a3;
  v5 = [v3 stringWithString:@"<"];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __50__CPLPushChangeTasks__descriptionFromTasksByType___block_invoke;
  v11 = &unk_1E861F450;
  v13 = 1;
  v6 = v5;
  v12 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:&v8];

  [v6 appendString:{@">", v8, v9, v10, v11}];

  return v6;
}

void __50__CPLPushChangeTasks__descriptionFromTasksByType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v6 = a3;
  v11 = +[CPLPushChangeTasks descriptionForTaskType:](CPLPushChangeTasks, "descriptionForTaskType:", [a2 integerValue]);
  v7 = [v6 allObjects];

  v8 = [v7 componentsJoinedByString:{@", "}];
  v9 = v8;
  if (v4)
  {
    v10 = @"%@: (%@)";
  }

  else
  {
    v10 = @",%@: (%@)";
  }

  [v5 appendFormat:v10, v11, v8];
}

- (void)addTask:(int64_t)a3 forRecordWithScopedIdentifier:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (v6)
  {
    mutableTasksByType = self->_mutableTasksByType;
    if (!mutableTasksByType)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v9 = self->_mutableTasksByType;
      self->_mutableTasksByType = v8;

      mutableTasksByType = self->_mutableTasksByType;
    }

    v10 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v11 = [(NSMutableDictionary *)mutableTasksByType objectForKeyedSubscript:v10];

    if (v11)
    {
      [v11 addObject:v6];
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{v6, 0}];
      v14 = self->_mutableTasksByType;
      v15 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      [(NSMutableDictionary *)v14 setObject:v11 forKeyedSubscript:v15];
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v12 = __CPLSessionOSLogDomain_18244();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [CPLPushChangeTasks descriptionForTaskType:a3];
      *buf = 138543362;
      v18 = v13;
      _os_log_impl(&dword_1DC05A000, v12, OS_LOG_TYPE_ERROR, "Attempting to add a push change task %{public}@ for nil identifier", buf, 0xCu);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)enumerateTasksWithBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__CPLPushChangeTasks_enumerateTasksWithBlock___block_invoke;
  v6[3] = &unk_1E861F428;
  v7 = v4;
  v5 = v4;
  [(CPLPushChangeTasks *)self enumerateScopedTasksWithBlock:v6];
}

void __46__CPLPushChangeTasks_enumerateTasksWithBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = [a3 identifier];
  (*(v6 + 16))(v6, a2, v7, a4);
}

- (void)enumerateScopedTasksWithBlock:(id)a3
{
  v4 = a3;
  [(CPLPushChangeTasks *)self _commitTasks];
  tasksByType = self->_tasksByType;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__CPLPushChangeTasks_enumerateScopedTasksWithBlock___block_invoke;
  v7[3] = &unk_1E861F400;
  v8 = v4;
  v6 = v4;
  [(NSDictionary *)tasksByType enumerateKeysAndObjectsUsingBlock:v7];
}

void __52__CPLPushChangeTasks_enumerateScopedTasksWithBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = [a2 integerValue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__CPLPushChangeTasks_enumerateScopedTasksWithBlock___block_invoke_2;
  v9[3] = &unk_1E861F3D8;
  v10 = *(a1 + 32);
  v11 = v8;
  v12 = a4;
  [v7 enumerateObjectsUsingBlock:v9];
}

uint64_t __52__CPLPushChangeTasks_enumerateScopedTasksWithBlock___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(a1 + 40);
  result = (*(*(a1 + 32) + 16))();
  if (*a3 == 1)
  {
    **(a1 + 48) = 1;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  [(CPLPushChangeTasks *)self _commitTasks];
  v5 = [[CPLPushChangeTasks alloc] initEmpty];
  v6 = [(NSDictionary *)self->_tasksByType copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(CPLPushChangeTasks *)self _commitTasks];
  [v4 encodeObject:self->_tasksByType forKey:@"tasks"];
}

- (CPLPushChangeTasks)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CPLPushChangeTasks;
  v5 = [(CPLPushChangeTasks *)&v9 init];
  if (v5)
  {
    if (initWithCoder__onceToken_18261 != -1)
    {
      dispatch_once(&initWithCoder__onceToken_18261, &__block_literal_global_18262);
    }

    v6 = [v4 decodeObjectOfClasses:initWithCoder__classes forKey:@"tasks"];
    tasksByType = v5->_tasksByType;
    v5->_tasksByType = v6;
  }

  return v5;
}

uint64_t __36__CPLPushChangeTasks_initWithCoder___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v0 initWithObjects:{v1, v2, v3, v4, objc_opt_class(), 0}];
  v6 = initWithCoder__classes;
  initWithCoder__classes = v5;

  return MEMORY[0x1EEE66BB8](v5, v6);
}

- (id)initEmpty
{
  v3.receiver = self;
  v3.super_class = CPLPushChangeTasks;
  return [(CPLPushChangeTasks *)&v3 init];
}

- (void)_commitTasks
{
  if (self->_mutableTasksByType)
  {
    p_tasksByType = &self->_tasksByType;
    tasksByType = self->_tasksByType;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __34__CPLPushChangeTasks__commitTasks__block_invoke;
    v6[3] = &unk_1E861F3B0;
    v6[4] = self;
    [(NSDictionary *)tasksByType enumerateKeysAndObjectsUsingBlock:v6];
    objc_storeStrong(p_tasksByType, self->_mutableTasksByType);
    mutableTasksByType = self->_mutableTasksByType;
    self->_mutableTasksByType = 0;
  }
}

void __34__CPLPushChangeTasks__commitTasks__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = *(*(a1 + 32) + 16);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:v10];
  v8 = v7;
  if (v7)
  {
    [v7 unionSet:v6];
  }

  else
  {
    v9 = [v6 mutableCopy];

    [*(*(a1 + 32) + 16) setObject:v9 forKeyedSubscript:v10];
    v6 = v9;
  }
}

+ (id)descriptionForTaskType:(int64_t)a3
{
  if (a3 >= 0xA)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"??(%ld)", a3];
  }

  else
  {
    v4 = off_1E861F4C0[a3];
  }

  return v4;
}

@end