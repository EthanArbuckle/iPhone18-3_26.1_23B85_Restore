@interface FBSClientSceneFutureDefinition
- (FBSClientSceneFutureDefinition)initWithWorkspaceID:(id)d;
- (FBSMutableSceneParameters)parameters;
- (void)configureParameters:(id)parameters;
- (void)setIdentifier:(id)identifier;
- (void)setSpecification:(id)specification;
@end

@implementation FBSClientSceneFutureDefinition

- (FBSClientSceneFutureDefinition)initWithWorkspaceID:(id)d
{
  dCopy = d;
  v13.receiver = self;
  v13.super_class = FBSClientSceneFutureDefinition;
  v5 = [(FBSClientSceneFutureDefinition *)&v13 init];
  if (v5)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v8 = [FBSSceneIdentity identityForIdentifier:uUIDString workspaceIdentifier:dCopy];
    identity = v5->_identity;
    v5->_identity = v8;

    v10 = +[FBSSceneSpecification specification];
    specification = v5->_specification;
    v5->_specification = v10;
  }

  return v5;
}

- (void)setIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    identifierCopy = [uUID UUIDString];
  }

  workspaceIdentifier = [(FBSSceneIdentity *)self->_identity workspaceIdentifier];
  v6 = [FBSSceneIdentity identityForIdentifier:identifierCopy workspaceIdentifier:workspaceIdentifier];
  identity = self->_identity;
  self->_identity = v6;
}

- (void)setSpecification:(id)specification
{
  specificationCopy = specification;
  if (self->_parameters)
  {
    [FBSClientSceneFutureDefinition setSpecification:a2];
  }

  v8 = specificationCopy;
  if (specificationCopy)
  {
    v6 = specificationCopy;
  }

  else
  {
    v6 = +[FBSSceneSpecification specification];
  }

  specification = self->_specification;
  self->_specification = v6;
}

- (void)configureParameters:(id)parameters
{
  parametersCopy = parameters;
  parameters = self->_parameters;
  v8 = parametersCopy;
  if (!parameters)
  {
    v6 = [(FBSSceneParameters *)FBSMutableSceneParameters parametersForSpecification:self->_specification];
    v7 = self->_parameters;
    self->_parameters = v6;

    parametersCopy = v8;
    parameters = self->_parameters;
  }

  (*(parametersCopy + 2))(parametersCopy, parameters);
}

- (FBSMutableSceneParameters)parameters
{
  parameters = self->_parameters;
  if (!parameters)
  {
    v4 = [(FBSSceneParameters *)FBSMutableSceneParameters parametersForSpecification:self->_specification];
    v5 = self->_parameters;
    self->_parameters = v4;

    parameters = self->_parameters;
  }

  return parameters;
}

- (void)setSpecification:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot change specification after configuring parameters"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

@end