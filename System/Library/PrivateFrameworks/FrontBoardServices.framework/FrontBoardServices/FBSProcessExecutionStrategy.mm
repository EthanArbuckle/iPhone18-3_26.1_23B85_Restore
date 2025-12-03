@interface FBSProcessExecutionStrategy
+ (id)background;
+ (id)backgroundWithUI;
+ (id)policyWithReason:(unsigned int)reason flags:(unsigned int)flags;
+ (id)strategyForSchedulingPolicy:(int64_t)policy graphicsPolicy:(int64_t)graphicsPolicy jetsamPolicy:(int64_t)jetsamPolicy;
+ (id)userInteractive;
+ (id)userInteractiveWithoutUI;
+ (void)initialize;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation FBSProcessExecutionStrategy

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    BSSelfTaskHasEntitlement();
  }
}

+ (id)userInteractive
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__FBSProcessExecutionStrategy_userInteractive__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (userInteractive_onceToken != -1)
  {
    dispatch_once(&userInteractive_onceToken, block);
  }

  v2 = userInteractive___UIPolicy;

  return v2;
}

uint64_t __46__FBSProcessExecutionStrategy_userInteractive__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) strategyForSchedulingPolicy:2 graphicsPolicy:1 jetsamPolicy:1];
  v2 = userInteractive___UIPolicy;
  userInteractive___UIPolicy = v1;

  v3 = userInteractive___UIPolicy;

  return [v3 setStrategyName:@"UserInteractive"];
}

+ (id)userInteractiveWithoutUI
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__FBSProcessExecutionStrategy_userInteractiveWithoutUI__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (userInteractiveWithoutUI_onceToken != -1)
  {
    dispatch_once(&userInteractiveWithoutUI_onceToken, block);
  }

  v2 = userInteractiveWithoutUI___UINoGPUPolicy;

  return v2;
}

uint64_t __55__FBSProcessExecutionStrategy_userInteractiveWithoutUI__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) strategyForSchedulingPolicy:2 graphicsPolicy:0 jetsamPolicy:1];
  v2 = userInteractiveWithoutUI___UINoGPUPolicy;
  userInteractiveWithoutUI___UINoGPUPolicy = v1;

  v3 = userInteractiveWithoutUI___UINoGPUPolicy;

  return [v3 setStrategyName:@"UserInteractiveWithoutUI"];
}

+ (id)backgroundWithUI
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__FBSProcessExecutionStrategy_backgroundWithUI__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (backgroundWithUI_onceToken != -1)
  {
    dispatch_once(&backgroundWithUI_onceToken, block);
  }

  v2 = backgroundWithUI___BGUIPolicy;

  return v2;
}

uint64_t __47__FBSProcessExecutionStrategy_backgroundWithUI__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) strategyForSchedulingPolicy:1 graphicsPolicy:1 jetsamPolicy:0];
  v2 = backgroundWithUI___BGUIPolicy;
  backgroundWithUI___BGUIPolicy = v1;

  v3 = backgroundWithUI___BGUIPolicy;

  return [v3 setStrategyName:@"BackgroundWithUI"];
}

+ (id)background
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__FBSProcessExecutionStrategy_background__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (background_onceToken != -1)
  {
    dispatch_once(&background_onceToken, block);
  }

  v2 = background___BGPolicy;

  return v2;
}

uint64_t __41__FBSProcessExecutionStrategy_background__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) strategyForSchedulingPolicy:1 graphicsPolicy:0 jetsamPolicy:0];
  v2 = background___BGPolicy;
  background___BGPolicy = v1;

  v3 = background___BGPolicy;

  return [v3 setStrategyName:@"Background"];
}

+ (id)strategyForSchedulingPolicy:(int64_t)policy graphicsPolicy:(int64_t)graphicsPolicy jetsamPolicy:(int64_t)jetsamPolicy
{
  v8 = objc_alloc_init(self);
  [v8 setSchedulingPolicy:policy];
  [v8 setGraphicsPolicy:graphicsPolicy];
  [v8 setJetsamPolicy:jetsamPolicy];
  if (policy < 1)
  {
    v12 = 0;
  }

  else
  {
    if (jetsamPolicy == 1)
    {
      v9 = __CanTakeWorkspaceAssertions == 0;
      v10 = 9;
      v11 = 10000;
    }

    else
    {
      v9 = __CanTakeSystemAppAssertions == 0;
      v10 = 4;
      v11 = 10004;
    }

    if (v9)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }
  }

  v13 = policy > 0;
  if (policy <= 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = 3;
  }

  if (policy > 1)
  {
    v13 = v14;
  }

  if (graphicsPolicy > 0)
  {
    v13 |= 0x20u;
  }

  if (jetsamPolicy <= 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = v13 | 8;
  }

  [v8 setReason:v12];
  [v8 setFlags:v15];
  [v8 setCustomPolicy:0];

  return v8;
}

+ (id)policyWithReason:(unsigned int)reason flags:(unsigned int)flags
{
  v4 = *&flags;
  v5 = *&reason;
  v6 = objc_alloc_init(self);
  [v6 setFlags:v4];
  [v6 setReason:v5];
  [v6 setCustomPolicy:1];

  return v6;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(FBSProcessExecutionStrategy *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [off_1E76BC9B0 builderWithObject:self];
  v4 = v3;
  if (self->_strategyName)
  {
    strategyName = self->_strategyName;
  }

  else
  {
    strategyName = @"Custom";
  }

  v6 = [v3 appendObject:strategyName withName:@"strategyName"];
  if (![(FBSProcessExecutionStrategy *)self isCustomPolicy])
  {
    schedulingPolicy = self->_schedulingPolicy;
    v8 = @"(unknown)";
    if (schedulingPolicy <= 2)
    {
      v8 = off_1E76BED18[schedulingPolicy];
    }

    v9 = [v4 appendObject:v8 withName:@"scheduling"];
    graphicsPolicy = self->_graphicsPolicy;
    v11 = @"full";
    if (graphicsPolicy != 1)
    {
      v11 = @"(unknown)";
    }

    if (graphicsPolicy)
    {
      v12 = v11;
    }

    else
    {
      v12 = @"none";
    }

    v13 = [v4 appendObject:v12 withName:@"graphics"];
    jetsamPolicy = self->_jetsamPolicy;
    v15 = @"foreground";
    if (jetsamPolicy != 1)
    {
      v15 = @"(unknown)";
    }

    if (jetsamPolicy)
    {
      v16 = v15;
    }

    else
    {
      v16 = @"default";
    }

    v17 = [v4 appendObject:v16 withName:@"jetsam"];
  }

  return v4;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(FBSProcessExecutionStrategy *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(FBSProcessExecutionStrategy *)self succinctDescriptionBuilder];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__FBSProcessExecutionStrategy_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E76BCD60;
  v10[4] = self;
  v6 = succinctDescriptionBuilder;
  v11 = v6;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v10];

  v7 = v11;
  v8 = v6;

  return v6;
}

void __69__FBSProcessExecutionStrategy_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 12);
  if (v2 > 9999)
  {
    if (v2 == 10000)
    {
      v3 = @"resume";
      goto LABEL_11;
    }

    if (v2 == 10004)
    {
      v3 = @"finishTaskUnbounded";
      goto LABEL_11;
    }

LABEL_8:
    v4 = [*(a1 + 40) appendUnsignedInt:v2 withName:@"bksReason"];
    goto LABEL_12;
  }

  if (v2 == 4)
  {
    v3 = @"finishTask";
    goto LABEL_11;
  }

  if (v2 != 9)
  {
    goto LABEL_8;
  }

  v3 = @"viewService";
LABEL_11:
  [*(a1 + 40) appendString:v3 withName:@"bksReason"];
LABEL_12:
  v9 = [MEMORY[0x1E695DF70] array];
  v5 = *(*(a1 + 32) + 16);
  if (v5)
  {
    [v9 addObject:@"preventTaskSuspend"];
    v5 = *(*(a1 + 32) + 16);
    if ((v5 & 2) == 0)
    {
LABEL_14:
      if ((v5 & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_24;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_14;
  }

  [v9 addObject:@"preventTaskThrottleDown"];
  v5 = *(*(a1 + 32) + 16);
  if ((v5 & 4) == 0)
  {
LABEL_15:
    if ((v5 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

LABEL_24:
  [v9 addObject:@"allowIdleSleep"];
  v5 = *(*(a1 + 32) + 16);
  if ((v5 & 8) == 0)
  {
LABEL_16:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

LABEL_25:
  [v9 addObject:@"foregroundResourcePriority"];
  v5 = *(*(a1 + 32) + 16);
  if ((v5 & 0x10) == 0)
  {
LABEL_17:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_26:
  [v9 addObject:@"allowSuspendOnSleep"];
  if ((*(*(a1 + 32) + 16) & 0x20) != 0)
  {
LABEL_18:
    [v9 addObject:@"preventThrottleDownUI"];
  }

LABEL_19:
  v6 = *(a1 + 40);
  v7 = [v9 componentsJoinedByString:{@", "}];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"bksFlags (%u)", *(*(a1 + 32) + 16)];
  [v6 appendString:v7 withName:v8 skipIfEmpty:1];
}

@end