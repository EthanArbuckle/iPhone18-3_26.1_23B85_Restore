@interface FBMutableWorkspaceConnectionsState
- (BOOL)addProcessIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation FBMutableWorkspaceConnectionsState

- (BOOL)addProcessIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    [(FBMutableWorkspaceConnectionsState *)a2 addProcessIdentifier:?];
  }

  v6 = identifierCopy;
  rbs_pid = [identifierCopy rbs_pid];
  if (rbs_pid <= 0)
  {
    [(FBMutableWorkspaceConnectionsState *)a2 addProcessIdentifier:?];
  }

  v8 = rbs_pid;
  v9 = [(NSMutableIndexSet *)self->super._pidSet containsIndex:rbs_pid];
  if ((v9 & 1) == 0)
  {
    [(NSMutableIndexSet *)self->super._pidSet addIndex:v8];
  }

  return v9 ^ 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [FBWorkspaceConnectionsState alloc];
  pidSet = self->super._pidSet;

  return [(FBWorkspaceConnectionsState *)v4 _initWithIndexSet:pidSet];
}

- (void)addProcessIdentifier:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid pid"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"FBWorkspaceConnectionsState.m";
    v16 = 1024;
    v17 = 206;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)addProcessIdentifier:(const char *)a1 .cold.2(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"processIdentifier"];
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
    v15 = @"FBWorkspaceConnectionsState.m";
    v16 = 1024;
    v17 = 203;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end