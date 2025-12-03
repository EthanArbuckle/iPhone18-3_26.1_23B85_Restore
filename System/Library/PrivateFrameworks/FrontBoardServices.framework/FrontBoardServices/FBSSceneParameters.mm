@interface FBSSceneParameters
+ (id)parametersForSpecification:(id)specification;
- (BOOL)isEqual:(id)equal;
- (FBSSceneParameters)init;
- (FBSSceneParameters)initWithParameters:(id)parameters;
- (FBSSceneParameters)initWithSpecification:(id)specification;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithXPCDictionary:(id)dictionary;
- (void)setClientSettings:(id)settings;
- (void)setSettings:(id)settings;
- (void)updateSettingsWithBlock:(id)block;
@end

@implementation FBSSceneParameters

+ (id)parametersForSpecification:(id)specification
{
  specificationCopy = specification;
  v5 = [[self alloc] initWithSpecification:specificationCopy];

  return v5;
}

- (FBSSceneParameters)initWithSpecification:(id)specification
{
  specificationCopy = specification;
  NSClassFromString(&cfstr_Fbsscenespecif.isa);
  if (!specificationCopy)
  {
    [FBSSceneParameters initWithSpecification:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSSceneParameters initWithSpecification:a2];
  }

  v14.receiver = self;
  v14.super_class = FBSSceneParameters;
  v7 = [(FBSSceneParameters *)&v14 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_specification, specification);
    v9 = objc_alloc_init([specificationCopy settingsClass]);
    settings = v8->_settings;
    v8->_settings = v9;

    v11 = objc_alloc_init([specificationCopy clientSettingsClass]);
    clientSettings = v8->_clientSettings;
    v8->_clientSettings = v11;
  }

  return v8;
}

- (FBSSceneParameters)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  specification = [parametersCopy specification];
  v7 = specification;
  NSClassFromString(&cfstr_Fbsscenespecif.isa);
  if (!v7)
  {
    [FBSSceneParameters initWithParameters:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSSceneParameters initWithParameters:a2];
  }

  v17.receiver = self;
  v17.super_class = FBSSceneParameters;
  v8 = [(FBSSceneParameters *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_specification, specification);
    settings = [parametersCopy settings];
    v11 = [settings copy];
    settings = v9->_settings;
    v9->_settings = v11;

    clientSettings = [parametersCopy clientSettings];
    v14 = [clientSettings copy];
    clientSettings = v9->_clientSettings;
    v9->_clientSettings = v14;
  }

  return v9;
}

- (FBSSceneParameters)init
{
  v3 = +[FBSSceneSpecification specification];
  v4 = [(FBSSceneParameters *)self initWithSpecification:v3];

  return v4;
}

- (void)setSettings:(id)settings
{
  settingsCopy = settings;
  if (self->_settings != settingsCopy)
  {
    v7 = settingsCopy;
    if (settingsCopy)
    {
      v5 = [(FBSSceneSettings *)settingsCopy copy];
    }

    else
    {
      v5 = objc_alloc_init([(FBSSceneSpecification *)self->_specification settingsClass]);
    }

    settings = self->_settings;
    self->_settings = v5;

    settingsCopy = v7;
  }
}

- (void)setClientSettings:(id)settings
{
  settingsCopy = settings;
  if (self->_clientSettings != settingsCopy)
  {
    v7 = settingsCopy;
    if (settingsCopy)
    {
      v5 = [(FBSSceneClientSettings *)settingsCopy copy];
    }

    else
    {
      v5 = objc_alloc_init([(FBSSceneSpecification *)self->_specification clientSettingsClass]);
    }

    clientSettings = self->_clientSettings;
    self->_clientSettings = v5;

    settingsCopy = v7;
  }
}

- (void)updateSettingsWithBlock:(id)block
{
  if (block)
  {
    blockCopy = block;
    settings = [(FBSSceneParameters *)self settings];
    v6 = [settings mutableCopy];

    blockCopy[2](blockCopy, v6);
    [(FBSSceneParameters *)self setSettings:v6];
  }
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [FBSMutableSceneParameters allocWithZone:zone];

  return [(FBSSceneParameters *)v4 initWithParameters:self];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    v5 = [off_1E76BC9C0 builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
    specification = [(FBSSceneParameters *)self specification];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __30__FBSSceneParameters_isEqual___block_invoke;
    v20[3] = &unk_1E76BDA18;
    v7 = equalCopy;
    v21 = v7;
    v8 = [v5 appendObject:specification counterpart:v20];

    settings = [(FBSSceneParameters *)self settings];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __30__FBSSceneParameters_isEqual___block_invoke_2;
    v18[3] = &unk_1E76BDA18;
    v10 = v7;
    v19 = v10;
    v11 = [v5 appendObject:settings counterpart:v18];

    clientSettings = [(FBSSceneParameters *)self clientSettings];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __30__FBSSceneParameters_isEqual___block_invoke_3;
    v16[3] = &unk_1E76BDA18;
    v17 = v10;
    v13 = [v5 appendObject:clientSettings counterpart:v16];

    v14 = [v5 isEqual];
  }

  return v14;
}

- (unint64_t)hash
{
  builder = [off_1E76BC9C8 builder];
  specification = [(FBSSceneParameters *)self specification];
  v5 = [builder appendObject:specification];

  v6 = [builder hash];
  return v6;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(FBSSceneParameters *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(FBSSceneParameters *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(FBSSceneParameters *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__FBSSceneParameters_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E76BCD60;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_opt_class();
  NSStringFromClass(v4);
  objc_claimAutoreleasedReturnValue();
  BSSerializeStringToXPCDictionaryWithKey();
}

- (void)initWithSpecification:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSSceneSpecificationClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithSpecification:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithParameters:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSSceneSpecificationClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithParameters:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithXPCDictionary:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FBSSceneParameters.m" lineNumber:150 description:@"cannot decode parameters without a defined specification class"];
}

- (void)initWithXPCDictionary:.cold.2()
{
  OUTLINED_FUNCTION_2_1();
  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"FBSSceneParameters.m" lineNumber:152 description:{@"cannot decode parameters due to unrealized specification class with name '%@'. Is this specification class exposed to the client?", v0}];
}

- (void)initWithXPCDictionary:.cold.3()
{
  OUTLINED_FUNCTION_2_1();
  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"FBSSceneParameters.m" lineNumber:153 description:{@"cannot decode parameters due to an invalid specification (does not inherit from FBSSceneSpecification) : %@", v0}];
}

- (void)initWithXPCDictionary:.cold.4()
{
  OUTLINED_FUNCTION_2_1();
  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"FBSSceneParameters.m" lineNumber:155 description:{@"cannot decode parameters without specification instance of '%@'", v0}];
}

@end