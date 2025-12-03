@interface FBSProcessExecutionPolicy
+ (id)policyForStrategy:(id)strategy withProvisions:(id)provisions;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)setProvisions:(id)provisions;
@end

@implementation FBSProcessExecutionPolicy

+ (id)policyForStrategy:(id)strategy withProvisions:(id)provisions
{
  strategyCopy = strategy;
  provisionsCopy = provisions;
  v9 = strategyCopy;
  NSClassFromString(&cfstr_Fbsprocessexec_3.isa);
  if (!v9)
  {
    [FBSProcessExecutionPolicy policyForStrategy:a2 withProvisions:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSProcessExecutionPolicy policyForStrategy:a2 withProvisions:?];
  }

  v10 = provisionsCopy;
  if (v10)
  {
    NSClassFromString(&cfstr_Nsarray.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBSProcessExecutionPolicy policyForStrategy:a2 withProvisions:?];
    }
  }

  v11 = objc_alloc_init(self);
  [v11 setStrategy:v9];
  [v11 setProvisions:v10];

  return v11;
}

- (void)setProvisions:(id)provisions
{
  if (self->_provisions != provisions)
  {
    v5 = MEMORY[0x1E695DEC8];
    provisionsCopy = provisions;
    v7 = [[v5 alloc] initWithArray:provisionsCopy copyItems:1];

    provisions = self->_provisions;
    self->_provisions = v7;
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(FBSProcessExecutionPolicy *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(FBSProcessExecutionPolicy *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(FBSProcessExecutionPolicy *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__FBSProcessExecutionPolicy_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E76BCD60;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

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