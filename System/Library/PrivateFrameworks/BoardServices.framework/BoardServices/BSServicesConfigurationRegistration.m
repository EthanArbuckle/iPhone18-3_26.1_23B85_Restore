@interface BSServicesConfigurationRegistration
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
@end

@implementation BSServicesConfigurationRegistration

- (id)succinctDescription
{
  v2 = [(BSServicesConfigurationRegistration *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BSServicesConfigurationRegistration *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(BSServicesConfigurationRegistration *)self succinctDescriptionBuilder];
  v6 = [v5 appendObject:self->_registration withName:@"registration"];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__BSServicesConfigurationRegistration_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_1E75209E8;
  v7 = v5;
  v11 = v7;
  v12 = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:v4 block:v10];
  v8 = v7;

  return v7;
}

@end