@interface FBSSceneTransitionContext
+ (id)transitionContext;
- (FBSSceneTransitionContext)initWithSettings:(id)a3;
- (id)captureCompletions;
- (void)addAction:(id)a3;
- (void)addActions:(id)a3;
- (void)addUpdateCompletion:(id)a3;
- (void)dealloc;
- (void)removeAction:(id)a3;
- (void)removeActions:(id)a3;
@end

@implementation FBSSceneTransitionContext

+ (id)transitionContext
{
  v2 = [[a1 alloc] initWithSettings:0];

  return v2;
}

- (void)dealloc
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"transition context deallocated with dangling completions"];
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
    v15 = @"FBSSceneTransitionContext.m";
    v16 = 1024;
    v17 = 83;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (id)captureCompletions
{
  v3 = [(FBSSceneTransitionContext *)self updateCompletions];
  v4 = [v3 copy];

  if (v4)
  {
    [(FBSSceneTransitionContext *)self setUpdateCompletions:0];
  }

  return v4;
}

- (FBSSceneTransitionContext)initWithSettings:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FBSSceneTransitionContext;
  v5 = [(FBSSettings *)&v11 initWithSettings:v4];
  v6 = v5;
  if (v4 && v5)
  {
    [(FBSSceneTransitionContext *)v5 setUpdateContext:0];
    v7 = [v4 animationFence];
    v8 = [v7 copy];
    [(FBSSceneTransitionContext *)v6 setAnimationFence:v8];

    v9 = [v4 updateCompletions];
    [(FBSSceneTransitionContext *)v6 setUpdateCompletions:v9];

    [v4 setUpdateCompletions:0];
  }

  return v6;
}

- (void)addAction:(id)a3
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:a3];
  [(FBSSceneTransitionContext *)self addActions:v4];
}

- (void)addActions:(id)a3
{
  v9 = a3;
  if ([v9 count])
  {
    v4 = [(FBSSceneTransitionContext *)self actions];
    v5 = [v4 mutableCopy];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [MEMORY[0x1E695DFA8] set];
    }

    v8 = v7;

    [v8 unionSet:v9];
    [(FBSSceneTransitionContext *)self setActions:v8];
  }
}

- (void)removeAction:(id)a3
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:a3];
  [(FBSSceneTransitionContext *)self removeActions:v4];
}

- (void)removeActions:(id)a3
{
  v6 = a3;
  if ([v6 count])
  {
    v4 = [(FBSSceneTransitionContext *)self actions];
    v5 = [v4 mutableCopy];

    if ([v5 count])
    {
      [v5 minusSet:v6];
      [(FBSSceneTransitionContext *)self setActions:v5];
    }
  }
}

- (void)addUpdateCompletion:(id)a3
{
  v4 = a3;
  v5 = [(FBSSceneTransitionContext *)self updateCompletions];
  v6 = [v5 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x1E695DF70] array];
  }

  v11 = v8;

  v9 = [v4 copy];
  v10 = MEMORY[0x1A58E80F0](v9);
  [v11 addObject:v10];

  [(FBSSceneTransitionContext *)self setUpdateCompletions:v11];
}

@end