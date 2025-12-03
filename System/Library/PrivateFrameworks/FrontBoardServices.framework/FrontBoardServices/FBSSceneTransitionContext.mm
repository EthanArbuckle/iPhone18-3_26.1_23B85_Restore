@interface FBSSceneTransitionContext
+ (id)transitionContext;
- (FBSSceneTransitionContext)initWithSettings:(id)settings;
- (id)captureCompletions;
- (void)addAction:(id)action;
- (void)addActions:(id)actions;
- (void)addUpdateCompletion:(id)completion;
- (void)dealloc;
- (void)removeAction:(id)action;
- (void)removeActions:(id)actions;
@end

@implementation FBSSceneTransitionContext

+ (id)transitionContext
{
  v2 = [[self alloc] initWithSettings:0];

  return v2;
}

- (void)dealloc
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"transition context deallocated with dangling completions"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(self);
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
  updateCompletions = [(FBSSceneTransitionContext *)self updateCompletions];
  v4 = [updateCompletions copy];

  if (v4)
  {
    [(FBSSceneTransitionContext *)self setUpdateCompletions:0];
  }

  return v4;
}

- (FBSSceneTransitionContext)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v11.receiver = self;
  v11.super_class = FBSSceneTransitionContext;
  v5 = [(FBSSettings *)&v11 initWithSettings:settingsCopy];
  v6 = v5;
  if (settingsCopy && v5)
  {
    [(FBSSceneTransitionContext *)v5 setUpdateContext:0];
    animationFence = [settingsCopy animationFence];
    v8 = [animationFence copy];
    [(FBSSceneTransitionContext *)v6 setAnimationFence:v8];

    updateCompletions = [settingsCopy updateCompletions];
    [(FBSSceneTransitionContext *)v6 setUpdateCompletions:updateCompletions];

    [settingsCopy setUpdateCompletions:0];
  }

  return v6;
}

- (void)addAction:(id)action
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:action];
  [(FBSSceneTransitionContext *)self addActions:v4];
}

- (void)addActions:(id)actions
{
  actionsCopy = actions;
  if ([actionsCopy count])
  {
    actions = [(FBSSceneTransitionContext *)self actions];
    v5 = [actions mutableCopy];
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

    [v8 unionSet:actionsCopy];
    [(FBSSceneTransitionContext *)self setActions:v8];
  }
}

- (void)removeAction:(id)action
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:action];
  [(FBSSceneTransitionContext *)self removeActions:v4];
}

- (void)removeActions:(id)actions
{
  actionsCopy = actions;
  if ([actionsCopy count])
  {
    actions = [(FBSSceneTransitionContext *)self actions];
    v5 = [actions mutableCopy];

    if ([v5 count])
    {
      [v5 minusSet:actionsCopy];
      [(FBSSceneTransitionContext *)self setActions:v5];
    }
  }
}

- (void)addUpdateCompletion:(id)completion
{
  completionCopy = completion;
  updateCompletions = [(FBSSceneTransitionContext *)self updateCompletions];
  v6 = [updateCompletions mutableCopy];
  v7 = v6;
  if (v6)
  {
    array = v6;
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
  }

  v11 = array;

  v9 = [completionCopy copy];
  v10 = MEMORY[0x1A58E80F0](v9);
  [v11 addObject:v10];

  [(FBSSceneTransitionContext *)self setUpdateCompletions:v11];
}

@end