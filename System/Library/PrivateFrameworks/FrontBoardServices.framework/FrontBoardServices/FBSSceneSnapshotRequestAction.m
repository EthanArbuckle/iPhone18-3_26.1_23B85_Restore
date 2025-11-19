@interface FBSSceneSnapshotRequestAction
- (FBSSceneSnapshotContext)context;
- (id)_initWithType:(unint64_t)a3 context:(id)a4 responder:(id)a5;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
- (unint64_t)type;
@end

@implementation FBSSceneSnapshotRequestAction

- (id)_initWithType:(unint64_t)a3 context:(id)a4 responder:(id)a5
{
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    [FBSSceneSnapshotRequestAction _initWithType:a2 context:self responder:?];
  }

  v11 = v10;
  v12 = objc_alloc_init(off_1E76BCA00);
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v12 setObject:v13 forSetting:1];

  [v12 setObject:v9 forSetting:2];
  [v12 setDescriptionProvider:self];
  v16.receiver = self;
  v16.super_class = FBSSceneSnapshotRequestAction;
  v14 = [(FBSSceneSnapshotRequestAction *)&v16 initWithInfo:v12 responder:v11];

  return v14;
}

- (unint64_t)type
{
  v2 = [(FBSSceneSnapshotRequestAction *)self info];
  v3 = [v2 objectForSetting:1];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (FBSSceneSnapshotContext)context
{
  v2 = [(FBSSceneSnapshotRequestAction *)self info];
  v3 = [v2 objectForSetting:2];

  return v3;
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  v3 = @"context";
  if (a3 != 2)
  {
    v3 = 0;
  }

  if (a3 == 1)
  {
    return @"requestType";
  }

  else
  {
    return v3;
  }
}

- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5
{
  if (a5 != 1)
  {
    return 0;
  }

  v7 = [a4 unsignedIntegerValue];
  v8 = @"invalidateSnapshot";
  if (v7 != 2)
  {
    v8 = 0;
  }

  if (v7 == 1)
  {
    return @"performSnapshot";
  }

  else
  {
    return v8;
  }
}

- (void)_initWithType:(const char *)a1 context:(uint64_t)a2 responder:.cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"responder"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"FBSSceneSnapshotRequestAction.m";
    v16 = 1024;
    v17 = 19;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

@end