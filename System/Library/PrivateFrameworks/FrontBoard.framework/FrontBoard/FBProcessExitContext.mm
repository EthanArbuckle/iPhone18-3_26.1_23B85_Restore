@interface FBProcessExitContext
- (FBProcessExitContext)initWithLaunchError:(id)error;
- (FBProcessExitContext)initWithTerminationError:(id)error;
- (FBProcessExitContext)initWithUnderlyingContext:(id)context;
- (NSString)description;
- (id)createError;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int)terminationSignal;
@end

@implementation FBProcessExitContext

- (NSString)description
{
  if (self->_exitReason == 2 && self->_terminationRequest)
  {
    v3 = [MEMORY[0x1E698E680] builderWithObject:objc_opt_class()];
    v4 = NSStringFromFBProcessExitReason(self->_exitReason);
    label = [(FBSProcessTerminationRequest *)self->_terminationRequest label];
    v6 = [v4 stringByAppendingFormat:@" (\"%@\"", label];

    v7 = [v3 appendObject:v6 withName:0];
    build = [v3 build];
  }

  else
  {
    build = [(RBSProcessExitContext *)self->_underlyingContext description];
  }

  return build;
}

- (FBProcessExitContext)initWithUnderlyingContext:(id)context
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = FBProcessExitContext;
  v6 = [(FBProcessExitContext *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingContext, context);
    type = [contextCopy type];
    if (type == 1)
    {
      v7->_exitReason = 1;
    }

    else if (type == 2)
    {
      status = [contextCopy status];
      if ([status isValid])
      {
        if ([status domain] == 10 && objc_msgSend(status, "code") == 2343432205)
        {
          v10 = 2;
        }

        else if ([status isCrash])
        {
          v10 = 4;
        }

        else if ([status isJetsam])
        {
          v10 = 16;
        }

        else if ([status isSignal])
        {
          v10 = 8;
        }

        else if ([status isFairPlayFailure])
        {
          v10 = 32;
        }

        else
        {
          v10 = 128;
        }

        v7->_exitReason = v10;
      }

      else
      {
        v7->_exitReason = 0;
      }
    }

    else
    {
      v7->_exitReason = 0;
    }
  }

  return v7;
}

- (FBProcessExitContext)initWithLaunchError:(id)error
{
  v26 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (!errorCopy)
  {
    [FBProcessExitContext initWithLaunchError:a2];
  }

  v7 = errorCopy;
  v8 = [(FBProcessExitContext *)self initWithUnderlyingContext:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_launchError, error);
    v9->_exitReason = 64;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    underlyingErrors = [v7 underlyingErrors];
    v11 = [underlyingErrors countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      v14 = *MEMORY[0x1E696A798];
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(underlyingErrors);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          domain = [v16 domain];
          if ([domain isEqual:v14])
          {
            code = [v16 code];

            if (code == 80)
            {
              v9->_exitReason = 32;
              goto LABEL_14;
            }
          }

          else
          {
          }
        }

        v12 = [underlyingErrors countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }

LABEL_14:
  }

  v19 = *MEMORY[0x1E69E9840];
  return v9;
}

- (FBProcessExitContext)initWithTerminationError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    [FBProcessExitContext initWithTerminationError:a2];
  }

  v7 = errorCopy;
  v8 = [(FBProcessExitContext *)self initWithUnderlyingContext:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_terminationError, error);
    v9->_exitReason = 128;
  }

  return v9;
}

- (id)createError
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = NSStringFromFBProcessExitReason(self->_exitReason);
  [v3 setObject:v4 forKey:*MEMORY[0x1E698E5B8]];

  status = [(RBSProcessExitContext *)self->_underlyingContext status];
  v6 = status;
  launchError = self->_launchError;
  if (launchError || (launchError = self->_terminationError) != 0)
  {
    [v3 setObject:launchError forKey:*MEMORY[0x1E696AA08]];
  }

  else if ([status isValid])
  {
    error = [v6 error];
    if (error)
    {
      [v3 setObject:error forKey:*MEMORY[0x1E696AA08]];
    }
  }

  exitReason = self->_exitReason;
  if (exitReason <= 7)
  {
    if (exitReason <= 1)
    {
      if (exitReason == 1)
      {
        v9 = @"The process exited voluntarily.";
        goto LABEL_32;
      }

      goto LABEL_29;
    }

    if (exitReason != 2)
    {
      if (exitReason == 4)
      {
        v9 = @"The process crashed.";
        goto LABEL_32;
      }

      goto LABEL_29;
    }

    watchdogContext = self->_watchdogContext;
    if (watchdogContext)
    {
      v12 = MEMORY[0x1E696AEC0];
      v13 = NSStringFromProcessWatchdogEvent([(FBProcessWatchdogEventContext *)watchdogContext event]);
      v9 = [v12 stringWithFormat:@"The process was watchdogged during a %@ event.", v13];

      if (v9)
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }

    v9 = @"The process was watchdogged.";
    goto LABEL_32;
  }

  if (exitReason <= 31)
  {
    if (exitReason == 8)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The process exited with signal %llu.", objc_msgSend(v6, "code")];
      if (v9)
      {
        goto LABEL_32;
      }
    }

    else if (exitReason == 16)
    {
      v9 = @"The process was jettisoned.";
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  if (exitReason == 32)
  {
    v9 = @"The process was unable to launch due to a FairPlay failure.";
    goto LABEL_32;
  }

  if (exitReason == 64)
  {
    v9 = @"The process failed to launch.";
    goto LABEL_32;
  }

  if (exitReason != 128)
  {
LABEL_29:
    v9 = @"The process exited.";
    goto LABEL_32;
  }

  if (self->_terminationError)
  {
    v9 = @"The process failed to terminate as expected.";
    goto LABEL_32;
  }

  code = [v6 code];
  if (code <= 3735883979)
  {
    if (code == 732775916)
    {
      if (self->_terminationReason == 8)
      {
        v9 = @"The process was terminated for rendering insecurely.";
      }

      else
      {
        v9 = @"The process was terminated due to a security violation.";
      }

      goto LABEL_32;
    }

    if (code == 3221229823)
    {
      v9 = @"The process exited due to thermal pressure.";
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  switch(code)
  {
    case 3735883980:
      v9 = @"The process suspended while holding a shared file lock.";
      break;
    case 3735943697:
      v9 = @"The process was quit by the user.";
      break;
    case 4227595259:
      terminationReason = self->_terminationReason;
      if (terminationReason == 9 || terminationReason == 6)
      {
        v9 = @"The process was quit because the system is shutting down or logging out.";
      }

      else
      {
        v9 = @"The process was force quit by the system.";
      }

      break;
    default:
      goto LABEL_29;
  }

LABEL_32:
  [v3 setObject:v9 forKey:*MEMORY[0x1E696A588]];
  v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"FBProcessExit" code:self->_exitReason userInfo:v3];

  return v14;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(FBProcessExitContext *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:objc_opt_class()];
  v4 = NSStringFromFBProcessExitReason(self->_exitReason);
  v5 = [v3 appendObject:v4 withName:@"exitReason"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(FBProcessExitContext *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(FBProcessExitContext *)self succinctDescriptionBuilder];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__FBProcessExitContext_descriptionBuilderWithMultilinePrefix___block_invoke;
  v8[3] = &unk_1E783B240;
  v5 = succinctDescriptionBuilder;
  v9 = v5;
  selfCopy = self;
  [v5 appendBodySectionWithName:0 multilinePrefix:0 block:v8];
  v6 = v5;

  return v5;
}

id __62__FBProcessExitContext_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 16) withName:@"underlying" skipIfNil:1];
  v3 = *(a1 + 40);
  if (*(v3 + 64) >= 1)
  {
    v4 = *(a1 + 32);
    v5 = FBSApplicationTerminationReasonDescription();
    v6 = [v4 appendObject:v5 withName:@"terminationReason"];

    v3 = *(a1 + 40);
  }

  v7 = *(a1 + 32);
  v8 = [*(v3 + 24) descriptionWithMultilinePrefix:0];
  v9 = [v7 appendObject:v8 withName:@"launchError" skipIfNil:1];

  v10 = *(a1 + 32);
  v11 = [*(*(a1 + 40) + 32) descriptionWithMultilinePrefix:0];
  v12 = [v10 appendObject:v11 withName:@"launchError" skipIfNil:1];

  v13 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 56) withName:@"stateAtExit" skipIfNil:1];
  v14 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 40) withName:@"terminationRequest" skipIfNil:1];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 48) withName:@"watchdogContext" skipIfNil:1];
}

- (int)terminationSignal
{
  if (self->_exitReason != 8)
  {
    return 0;
  }

  status = [(RBSProcessExitContext *)self->_underlyingContext status];
  code = [status code];

  return code;
}

- (void)initWithLaunchError:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"error != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    v8 = @"FBProcessExitContext.m";
    v9 = 1024;
    v10 = 68;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithTerminationError:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"error != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    v8 = @"FBProcessExitContext.m";
    v9 = 1024;
    v10 = 87;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end