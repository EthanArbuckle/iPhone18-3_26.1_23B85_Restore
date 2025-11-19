@interface FBProcessExecutionContext
- (FBProcessExecutionContext)initWithIdentity:(id)a3;
- (id)_initWithExecutionContext:(id)a3;
- (id)copyOrUpdateForSceneActivationWithSettings:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)setCompletion:(id)a3;
@end

@implementation FBProcessExecutionContext

- (FBProcessExecutionContext)initWithIdentity:(id)a3
{
  v4 = a3;
  v5 = [(FBProcessExecutionContext *)self init];
  if (v5)
  {
    v6 = [v4 copy];
    identity = v5->_identity;
    v5->_identity = v6;
  }

  return v5;
}

- (id)_initWithExecutionContext:(id)a3
{
  v4 = a3;
  v5 = [v4 identity];
  v6 = [(FBProcessExecutionContext *)self initWithIdentity:v5];

  if (v6)
  {
    v7 = [v4 arguments];
    v8 = [v7 copy];
    arguments = v6->_arguments;
    v6->_arguments = v8;

    v10 = [v4 environment];
    v11 = [v10 copy];
    environment = v6->_environment;
    v6->_environment = v11;

    v13 = [v4 standardOutputURL];
    standardOutputURL = v6->_standardOutputURL;
    v6->_standardOutputURL = v13;

    v15 = [v4 standardErrorURL];
    standardErrorURL = v6->_standardErrorURL;
    v6->_standardErrorURL = v15;

    v6->_waitForDebugger = [v4 waitForDebugger];
    v6->_disableASLR = [v4 disableASLR];
    v6->_checkForLeaks = [v4 checkForLeaks];
    v6->_enableMTE = [v4 enableMTE];
    v6->_launchIntent = [v4 launchIntent];
    v17 = [v4 watchdogProvider];
    watchdogProvider = v6->_watchdogProvider;
    v6->_watchdogProvider = v17;

    [v4 watchdogExtension];
    v6->_watchdogExtension = v19;
    v20 = [v4 overrideExecutablePath];
    overrideExecutablePath = v6->_overrideExecutablePath;
    v6->_overrideExecutablePath = v20;

    v6->_forSceneActivation = [v4 forSceneActivation];
    v22 = [v4 overrideExecutableSlice];
    overrideExecutableSlice = v6->_overrideExecutableSlice;
    v6->_overrideExecutableSlice = v22;

    v24 = [v4 completion];
    v25 = [v24 copy];
    completion = v6->_completion;
    v6->_completion = v25;
  }

  return v6;
}

- (void)setCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_opt_new();
    v6 = MEMORY[0x1E698E630];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __43__FBProcessExecutionContext_setCompletion___block_invoke;
    v19[3] = &unk_1E783B680;
    v7 = v5;
    v20 = v7;
    v8 = v4;
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

- (id)copyOrUpdateForSceneActivationWithSettings:(id)a3
{
  v4 = a3;
  v5 = [(FBProcessExecutionContext *)self launchIntent];
  if (!v5)
  {
    if ([v4 isForeground])
    {
      if ([v4 jetsamMode] == -10)
      {
        v5 = 3;
      }

      else
      {
        v5 = 4;
      }
    }

    else
    {
      v5 = 2;
    }
  }

  v6 = self;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [[FBProcessExecutionContext alloc] _initWithExecutionContext:v6];

    v6 = v7;
  }

  [(FBProcessExecutionContext *)v6 setForSceneActivation:1];
  [(FBProcessExecutionContext *)v6 setLaunchIntent:v5];

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [FBMutableProcessExecutionContext allocWithZone:a3];

  return [(FBProcessExecutionContext *)v4 _initWithExecutionContext:self];
}

@end