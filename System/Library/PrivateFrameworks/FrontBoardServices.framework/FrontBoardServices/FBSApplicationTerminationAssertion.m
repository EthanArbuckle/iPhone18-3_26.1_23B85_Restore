@interface FBSApplicationTerminationAssertion
- (FBSApplicationTerminationAssertion)initWithBundleID:(id)a3 reason:(id)a4 acquisitionHandler:(id)a5;
- (id)description;
- (int64_t)assertionState;
- (void)dealloc;
- (void)invalidate;
@end

@implementation FBSApplicationTerminationAssertion

- (int64_t)assertionState
{
  v2 = self;
  objc_sync_enter(v2);
  assertionState = v2->_assertionState;
  objc_sync_exit(v2);

  return assertionState;
}

- (FBSApplicationTerminationAssertion)initWithBundleID:(id)a3 reason:(id)a4 acquisitionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    [FBSApplicationTerminationAssertion initWithBundleID:a2 reason:? acquisitionHandler:?];
  }

  if (!v10)
  {
    [FBSApplicationTerminationAssertion initWithBundleID:a2 reason:? acquisitionHandler:?];
  }

  v12 = v11;
  v13 = [(FBSApplicationTerminationAssertion *)self init];
  if (v13)
  {
    v14 = [v9 copy];
    bundleID = v13->_bundleID;
    v13->_bundleID = v14;

    v16 = [v10 copy];
    reason = v13->_reason;
    v13->_reason = v16;

    v18 = [MEMORY[0x1E698D050] terminationAssertionContext];
    [v18 setExceptionCode:4227595259];
    if ([v10 isEqualToString:@"critical"])
    {
      v19 = 3;
    }

    else if ([v10 isEqualToString:@"installation"])
    {
      v19 = 2;
    }

    else
    {
      v19 = [v10 isEqualToString:@"deletion"];
    }

    v20 = objc_alloc(MEMORY[0x1E698D048]);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __81__FBSApplicationTerminationAssertion_initWithBundleID_reason_acquisitionHandler___block_invoke;
    v25[3] = &unk_1E76BDD00;
    v21 = v13;
    v26 = v21;
    v27 = v12;
    v22 = [v20 initWithBundleIdentifier:v9 efficacy:v19 name:@"FBSApplicationTerminationAssertion" context:v18 withHandler:v25];
    assertion = v21->_assertion;
    v21->_assertion = v22;
  }

  return v13;
}

void __81__FBSApplicationTerminationAssertion_initWithBundleID_reason_acquisitionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  v7 = *(a1 + 32);
  if (*(v7 + 16))
  {
    v8 = MEMORY[0x1E696ABC0];
    if (v5)
    {
      v16 = *MEMORY[0x1E696AA08];
      v17 = v5;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    }

    else
    {
      v9 = 0;
    }

    v10 = [v8 errorWithDomain:@"FBSApplicationTerminationAssertionErrorDomain" code:-4 userInfo:v9];
    if (v5)
    {
    }
  }

  else if (a2)
  {
    v10 = 0;
    *(v7 + 16) = 1;
  }

  else
  {
    *(v7 + 16) = 2;
    v11 = [0 code];
    if (v11 >= 3)
    {
      v12 = -1;
    }

    else
    {
      v12 = qword_1A2E694B8[v11];
    }

    v13 = MEMORY[0x1E696ABC0];
    if (v5)
    {
      v18 = *MEMORY[0x1E696AA08];
      v19[0] = v5;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    }

    else
    {
      v14 = 0;
    }

    v10 = [v13 errorWithDomain:@"FBSApplicationTerminationAssertionErrorDomain" code:v12 userInfo:v14];
    if (v5)
    {
    }
  }

  objc_sync_exit(v6);

  v15 = *(a1 + 40);
  if (v15)
  {
    (*(v15 + 16))(v15, *(a1 + 32), v10);
  }
}

- (void)dealloc
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Must invalidate FBSApplicationTerminationAssertion after successful acquisition"];
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
    v15 = @"FBSApplicationTerminationAssertion.m";
    v16 = 1024;
    v17 = 109;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (id)description
{
  v3 = [off_1E76BC9B0 builderWithObject:self];
  v4 = [v3 appendObject:self->_reason withName:@"reason"];
  v5 = [v3 appendObject:self->_bundleID withName:@"bundleID"];
  v6 = [v3 appendUnsignedInteger:self->_assertionState withName:@"state"];
  v7 = [v3 build];

  return v7;
}

- (void)invalidate
{
  [(BKSTerminationAssertion *)self->_assertion invalidate];
  assertion = self->_assertion;
  self->_assertion = 0;

  self->_assertionState = 3;
}

- (void)initWithBundleID:(const char *)a1 reason:acquisitionHandler:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"reason"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    v8 = @"FBSApplicationTerminationAssertion.m";
    v9 = 1024;
    v10 = 40;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithBundleID:(const char *)a1 reason:acquisitionHandler:.cold.2(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"bundleID"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    v8 = @"FBSApplicationTerminationAssertion.m";
    v9 = 1024;
    v10 = 39;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

@end