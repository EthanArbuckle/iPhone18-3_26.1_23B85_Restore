@interface BSServicesConfigurationRegistration
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
@end

@implementation BSServicesConfigurationRegistration

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BSServicesConfigurationRegistration *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BSServicesConfigurationRegistration *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(BSServicesConfigurationRegistration *)self succinctDescriptionBuilder];
  v6 = [succinctDescriptionBuilder appendObject:self->_registration withName:@"registration"];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__BSServicesConfigurationRegistration_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E75209E8;
  v7 = succinctDescriptionBuilder;
  v11 = v7;
  selfCopy = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v10];
  v8 = v7;

  return v7;
}

@end