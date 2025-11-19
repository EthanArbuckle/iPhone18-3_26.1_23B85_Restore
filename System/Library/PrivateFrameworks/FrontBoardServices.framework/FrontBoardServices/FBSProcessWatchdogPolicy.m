@interface FBSProcessWatchdogPolicy
+ (FBSProcessWatchdogPolicy)policyWithName:(id)a3 forProvisions:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)setProvisions:(id)a3;
@end

@implementation FBSProcessWatchdogPolicy

- (id)succinctDescriptionBuilder
{
  v3 = [off_1E76BC9B0 builderWithObject:self];
  [v3 appendString:self->_name withName:@"name" skipIfEmpty:1];

  return v3;
}

+ (FBSProcessWatchdogPolicy)policyWithName:(id)a3 forProvisions:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(a1);
  [v8 setName:v7];

  [v8 setProvisions:v6];

  return v8;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setProvisions:self->_provisions];
  return v4;
}

- (id)succinctDescription
{
  v2 = [(FBSProcessWatchdogPolicy *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(FBSProcessWatchdogPolicy *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(FBSProcessWatchdogPolicy *)self succinctDescriptionBuilder];
  v6 = self;
  objc_sync_enter(v6);
  if ([(NSArray *)v6->_provisions count])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __66__FBSProcessWatchdogPolicy_descriptionBuilderWithMultilinePrefix___block_invoke;
    v8[3] = &unk_1E76BCD60;
    v9 = v5;
    v10 = v6;
    [v9 appendBodySectionWithName:0 multilinePrefix:v4 block:v8];
  }

  objc_sync_exit(v6);

  return v5;
}

@end