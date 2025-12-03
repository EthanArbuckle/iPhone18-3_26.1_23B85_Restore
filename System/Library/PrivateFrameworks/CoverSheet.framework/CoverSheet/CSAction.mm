@interface CSAction
+ (id)actionWithContext:(id)context;
+ (id)actionWithType:(int64_t)type;
+ (id)actionWithType:(int64_t)type animated:(BOOL)animated;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation CSAction

+ (id)actionWithType:(int64_t)type
{
  v4 = objc_alloc_init(self);
  [v4 setType:type];

  return v4;
}

+ (id)actionWithType:(int64_t)type animated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = [self actionWithType:type];
  [v5 setAnimated:animatedCopy];

  return v5;
}

+ (id)actionWithContext:(id)context
{
  contextCopy = context;
  NSClassFromString(&cfstr_Sbflockscreena.isa);
  if (!contextCopy)
  {
    [CSAction actionWithContext:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [CSAction actionWithContext:a2];
  }

  v6 = objc_alloc_init(self);
  [v6 setContext:contextCopy];

  return v6;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(CSAction *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = NSStringFromCoverSheetActionType(self->_type);
  v5 = [v3 appendObject:v4 withName:@"type"];

  v6 = [v3 appendBool:self->_animated withName:@"animated" ifEqualTo:1];
  v7 = [v3 appendObject:self->_context withName:@"context" skipIfNil:1];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(CSAction *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

+ (void)actionWithContext:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:SBFLockScreenActionContextClass]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"CSActions.m";
    v9 = 1024;
    v10 = 69;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21EB05000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)actionWithContext:(const char *)a1 .cold.2(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"CSActions.m";
    v9 = 1024;
    v10 = 69;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21EB05000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end