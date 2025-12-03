@interface FBSProcessWatchdogPolicy
+ (FBSProcessWatchdogPolicy)policyWithName:(id)name forProvisions:(id)provisions;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)setProvisions:(id)provisions;
@end

@implementation FBSProcessWatchdogPolicy

- (id)succinctDescriptionBuilder
{
  v3 = [off_1E76BC9B0 builderWithObject:self];
  [v3 appendString:self->_name withName:@"name" skipIfEmpty:1];

  return v3;
}

+ (FBSProcessWatchdogPolicy)policyWithName:(id)name forProvisions:(id)provisions
{
  provisionsCopy = provisions;
  nameCopy = name;
  v8 = objc_alloc_init(self);
  [v8 setName:nameCopy];

  [v8 setProvisions:provisionsCopy];

  return v8;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setProvisions:self->_provisions];
  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(FBSProcessWatchdogPolicy *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(FBSProcessWatchdogPolicy *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(FBSProcessWatchdogPolicy *)self succinctDescriptionBuilder];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(NSArray *)selfCopy->_provisions count])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __66__FBSProcessWatchdogPolicy_descriptionBuilderWithMultilinePrefix___block_invoke;
    v8[3] = &unk_1E76BCD60;
    v9 = succinctDescriptionBuilder;
    v10 = selfCopy;
    [v9 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v8];
  }

  objc_sync_exit(selfCopy);

  return succinctDescriptionBuilder;
}

@end