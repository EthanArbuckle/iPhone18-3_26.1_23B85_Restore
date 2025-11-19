@interface FBSProcessExecutionPolicy
+ (id)policyForStrategy:(id)a3 withProvisions:(id)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)setProvisions:(id)a3;
@end

@implementation FBSProcessExecutionPolicy

+ (id)policyForStrategy:(id)a3 withProvisions:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v7;
  NSClassFromString(&cfstr_Fbsprocessexec_3.isa);
  if (!v9)
  {
    [FBSProcessExecutionPolicy policyForStrategy:a2 withProvisions:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSProcessExecutionPolicy policyForStrategy:a2 withProvisions:?];
  }

  v10 = v8;
  if (v10)
  {
    NSClassFromString(&cfstr_Nsarray.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBSProcessExecutionPolicy policyForStrategy:a2 withProvisions:?];
    }
  }

  v11 = objc_alloc_init(a1);
  [v11 setStrategy:v9];
  [v11 setProvisions:v10];

  return v11;
}

- (void)setProvisions:(id)a3
{
  if (self->_provisions != a3)
  {
    v5 = MEMORY[0x1E695DEC8];
    v6 = a3;
    v7 = [[v5 alloc] initWithArray:v6 copyItems:1];

    provisions = self->_provisions;
    self->_provisions = v7;
  }
}

- (id)succinctDescription
{
  v2 = [(FBSProcessExecutionPolicy *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(FBSProcessExecutionPolicy *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(FBSProcessExecutionPolicy *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__FBSProcessExecutionPolicy_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E76BCD60;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

void __67__FBSProcessExecutionPolicy_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) strategy];
  v4 = [v2 appendObject:v3 withName:@"strategy"];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) provisions];
  [v5 appendArraySection:v6 withName:@"provisions" skipIfEmpty:1];
}

+ (void)policyForStrategy:(const char *)a1 withProvisions:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"[_bs_assert_object isKindOfClass:FBSProcessExecutionStrategyClass]", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)policyForStrategy:(const char *)a1 withProvisions:.cold.2(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"[_bs_assert_object isKindOfClass:NSArrayClass]", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)policyForStrategy:(const char *)a1 withProvisions:.cold.3(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"_bs_assert_object != nil", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

@end