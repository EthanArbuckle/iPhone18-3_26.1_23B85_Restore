@interface FBSClientSceneFutureDefinition
- (FBSClientSceneFutureDefinition)initWithWorkspaceID:(id)a3;
- (FBSMutableSceneParameters)parameters;
- (void)configureParameters:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)setSpecification:(id)a3;
@end

@implementation FBSClientSceneFutureDefinition

- (FBSClientSceneFutureDefinition)initWithWorkspaceID:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = FBSClientSceneFutureDefinition;
  v5 = [(FBSClientSceneFutureDefinition *)&v13 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AFB0] UUID];
    v7 = [v6 UUIDString];
    v8 = [FBSSceneIdentity identityForIdentifier:v7 workspaceIdentifier:v4];
    identity = v5->_identity;
    v5->_identity = v8;

    v10 = +[FBSSceneSpecification specification];
    specification = v5->_specification;
    v5->_specification = v10;
  }

  return v5;
}

- (void)setIdentifier:(id)a3
{
  v8 = a3;
  if (!v8)
  {
    v4 = [MEMORY[0x1E696AFB0] UUID];
    v8 = [v4 UUIDString];
  }

  v5 = [(FBSSceneIdentity *)self->_identity workspaceIdentifier];
  v6 = [FBSSceneIdentity identityForIdentifier:v8 workspaceIdentifier:v5];
  identity = self->_identity;
  self->_identity = v6;
}

- (void)setSpecification:(id)a3
{
  v5 = a3;
  if (self->_parameters)
  {
    [FBSClientSceneFutureDefinition setSpecification:a2];
  }

  v8 = v5;
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = +[FBSSceneSpecification specification];
  }

  specification = self->_specification;
  self->_specification = v6;
}

- (void)configureParameters:(id)a3
{
  v4 = a3;
  parameters = self->_parameters;
  v8 = v4;
  if (!parameters)
  {
    v6 = [(FBSSceneParameters *)FBSMutableSceneParameters parametersForSpecification:self->_specification];
    v7 = self->_parameters;
    self->_parameters = v6;

    v4 = v8;
    parameters = self->_parameters;
  }

  (*(v4 + 2))(v4, parameters);
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