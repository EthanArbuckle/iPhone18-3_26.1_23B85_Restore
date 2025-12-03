@interface FBProcessExecutionContext
- (FBProcessExecutionContext)initWithIdentity:(id)identity;
- (id)_initWithExecutionContext:(id)context;
- (id)copyOrUpdateForSceneActivationWithSettings:(id)settings;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)setCompletion:(id)completion;
@end

@implementation FBProcessExecutionContext

- (FBProcessExecutionContext)initWithIdentity:(id)identity
{
  identityCopy = identity;
  v5 = [(FBProcessExecutionContext *)self init];
  if (v5)
  {
    v6 = [identityCopy copy];
    identity = v5->_identity;
    v5->_identity = v6;
  }

  return v5;
}

- (id)_initWithExecutionContext:(id)context
{
  contextCopy = context;
  identity = [contextCopy identity];
  v6 = [(FBProcessExecutionContext *)self initWithIdentity:identity];

  if (v6)
  {
    arguments = [contextCopy arguments];
    v8 = [arguments copy];
    arguments = v6->_arguments;
    v6->_arguments = v8;

    environment = [contextCopy environment];
    v11 = [environment copy];
    environment = v6->_environment;
    v6->_environment = v11;

    standardOutputURL = [contextCopy standardOutputURL];
    standardOutputURL = v6->_standardOutputURL;
    v6->_standardOutputURL = standardOutputURL;

    standardErrorURL = [contextCopy standardErrorURL];
    standardErrorURL = v6->_standardErrorURL;
    v6->_standardErrorURL = standardErrorURL;

    v6->_waitForDebugger = [contextCopy waitForDebugger];
    v6->_disableASLR = [contextCopy disableASLR];
    v6->_checkForLeaks = [contextCopy checkForLeaks];
    v6->_enableMTE = [contextCopy enableMTE];
    v6->_launchIntent = [contextCopy launchIntent];
    watchdogProvider = [contextCopy watchdogProvider];
    watchdogProvider = v6->_watchdogProvider;
    v6->_watchdogProvider = watchdogProvider;

    [contextCopy watchdogExtension];
    v6->_watchdogExtension = v19;
    overrideExecutablePath = [contextCopy overrideExecutablePath];
    overrideExecutablePath = v6->_overrideExecutablePath;
    v6->_overrideExecutablePath = overrideExecutablePath;

    v6->_forSceneActivation = [contextCopy forSceneActivation];
    overrideExecutableSlice = [contextCopy overrideExecutableSlice];
    overrideExecutableSlice = v6->_overrideExecutableSlice;
    v6->_overrideExecutableSlice = overrideExecutableSlice;

    completion = [contextCopy completion];
    v25 = [completion copy];
    completion = v6->_completion;
    v6->_completion = v25;
  }

  return v6;
}

- (void)setCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = objc_opt_new();
    v6 = MEMORY[0x1E698E630];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __43__FBProcessExecutionContext_setCompletion___block_invoke;
    v19[3] = &unk_1E783B680;
    v7 = v5;
    v20 = v7;
    v8 = completionCopy;
    v21 = v8;
    v9 = [v6 sentinelWithCompletion:v19];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __43__FBProcessExecutionContext_setCompletion___block_invoke_3;
    v15[3] = &unk_1E783B6A8;
    v16 = v7;
    v17 = v9;
    v18 = v8;
    v10 = v9;
    v11 = v7;
    v12 = [v15 copy];
    completion = self->_completion;
    self->_completion = v12;
  }

  else
  {
    v14 = self->_completion;
    self->_completion = 0;
  }
}

void __43__FBProcessExecutionContext_setCompletion___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 isFailed] && objc_msgSend(*(a1 + 32), "signal"))
  {
    v3 = *(a1 + 40);
    v4 = [MEMORY[0x1E696ABC0] bs_errorWithDomain:@"FBProcessExecutionContext" code:1 configuration:&__block_literal_global_2];
    (*(v3 + 16))(v3, 0, v4);
  }
}

void __43__FBProcessExecutionContext_setCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) signal])
  {
    (*(*(a1 + 48) + 16))();
  }

  [*(a1 + 40) signal];
}

- (id)copyOrUpdateForSceneActivationWithSettings:(id)settings
{
  settingsCopy = settings;
  launchIntent = [(FBProcessExecutionContext *)self launchIntent];
  if (!launchIntent)
  {
    if ([settingsCopy isForeground])
    {
      if ([settingsCopy jetsamMode] == -10)
      {
        launchIntent = 3;
      }

      else
      {
        launchIntent = 4;
      }
    }

    else
    {
      launchIntent = 2;
    }
  }

  selfCopy = self;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [[FBProcessExecutionContext alloc] _initWithExecutionContext:selfCopy];

    selfCopy = v7;
  }

  [(FBProcessExecutionContext *)selfCopy setForSceneActivation:1];
  [(FBProcessExecutionContext *)selfCopy setLaunchIntent:launchIntent];

  return selfCopy;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [FBMutableProcessExecutionContext allocWithZone:zone];

  return [(FBProcessExecutionContext *)v4 _initWithExecutionContext:self];
}

@end