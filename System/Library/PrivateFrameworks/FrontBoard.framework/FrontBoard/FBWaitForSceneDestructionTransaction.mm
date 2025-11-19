@interface FBWaitForSceneDestructionTransaction
- (FBWaitForSceneDestructionTransaction)initWithScene:(id)a3;
- (id)_customizedDescriptionProperties;
- (void)_begin;
- (void)_didComplete;
- (void)dealloc;
- (void)sceneDidInvalidate:(id)a3;
@end

@implementation FBWaitForSceneDestructionTransaction

- (FBWaitForSceneDestructionTransaction)initWithScene:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(FBWaitForSceneDestructionTransaction *)a2 initWithScene:?];
  }

  v7 = v6;
  v11.receiver = self;
  v11.super_class = FBWaitForSceneDestructionTransaction;
  v8 = [(FBTransaction *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_sceneToWaitForDeath, a3);
  }

  return v9;
}

- (void)dealloc
{
  [(FBScene *)self->_sceneToWaitForDeath removeObserver:self];
  v3.receiver = self;
  v3.super_class = FBWaitForSceneDestructionTransaction;
  [(FBWaitForSceneDestructionTransaction *)&v3 dealloc];
}

- (void)_begin
{
  if ([(FBScene *)self->_sceneToWaitForDeath isValid])
  {
    [(FBWaitForSceneDestructionTransaction *)self addMilestone:@"SBWTMilestoneSceneDestruction"];
    [(FBScene *)self->_sceneToWaitForDeath addObserver:self];
  }

  v3.receiver = self;
  v3.super_class = FBWaitForSceneDestructionTransaction;
  [(FBWaitForSceneDestructionTransaction *)&v3 _begin];
}

- (void)_didComplete
{
  [(FBScene *)self->_sceneToWaitForDeath removeObserver:self];
  v3.receiver = self;
  v3.super_class = FBWaitForSceneDestructionTransaction;
  [(FBWaitForSceneDestructionTransaction *)&v3 _didComplete];
}

- (id)_customizedDescriptionProperties
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(FBScene *)self->_sceneToWaitForDeath succinctDescription];
  [v3 setObject:v4 forKey:@"Scene"];

  return v3;
}

- (void)sceneDidInvalidate:(id)a3
{
  if (self->_sceneToWaitForDeath == a3)
  {
    block[7] = v3;
    block[8] = v4;
    [a3 removeObserver:self];
    v6 = [(FBWaitForSceneDestructionTransaction *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__FBWaitForSceneDestructionTransaction_sceneDidInvalidate___block_invoke;
    block[3] = &unk_1E783B580;
    block[4] = self;
    dispatch_async(v6, block);
  }
}

- (void)initWithScene:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"scene"];
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
    v15 = @"FBWaitForSceneDestructionTransaction.m";
    v16 = 1024;
    v17 = 31;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end