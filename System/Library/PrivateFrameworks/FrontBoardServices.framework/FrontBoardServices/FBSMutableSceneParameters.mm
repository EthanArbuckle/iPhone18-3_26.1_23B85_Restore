@interface FBSMutableSceneParameters
- (id)copyWithZone:(_NSZone *)a3;
- (void)applyClientSettings:(id)a3;
- (void)applyParameters:(id)a3;
- (void)applySettings:(id)a3;
- (void)setSettings:(id)a3;
- (void)updateClientSettingsWithBlock:(id)a3;
- (void)updateSettingsWithBlock:(id)a3;
@end

@implementation FBSMutableSceneParameters

- (void)setSettings:(id)a3
{
  v8.receiver = self;
  v8.super_class = FBSMutableSceneParameters;
  [(FBSSceneParameters *)&v8 setSettings:a3];
  v4 = [(FBSSceneParameters *)self settings];
  v5 = [v4 displayConfiguration];
  if (v5)
  {
  }

  else
  {
    displayConfiguration = self->_displayConfiguration;

    if (displayConfiguration)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __41__FBSMutableSceneParameters_setSettings___block_invoke;
      v7[3] = &unk_1E76BDFD0;
      v7[4] = self;
      [(FBSMutableSceneParameters *)self updateSettingsWithBlock:v7];
    }
  }
}

- (void)updateSettingsWithBlock:(id)a3
{
  v3.receiver = self;
  v3.super_class = FBSMutableSceneParameters;
  [(FBSSceneParameters *)&v3 updateSettingsWithBlock:a3];
}

- (void)updateClientSettingsWithBlock:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(FBSSceneParameters *)self clientSettings];
    v6 = [v5 mutableCopy];

    v4[2](v4, v6);
    [(FBSSceneParameters *)self setClientSettings:v6];
  }
}

- (void)applySettings:(id)a3
{
  v5 = a3;
  if (v5)
  {
    NSClassFromString(&cfstr_Fbsscenesettin_0.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBSMutableSceneParameters applySettings:a2];
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __43__FBSMutableSceneParameters_applySettings___block_invoke;
    v6[3] = &unk_1E76BDFD0;
    v7 = v5;
    [(FBSMutableSceneParameters *)self updateSettingsWithBlock:v6];
  }
}

- (void)applyClientSettings:(id)a3
{
  v5 = a3;
  if (v5)
  {
    NSClassFromString(&cfstr_Fbssceneclient.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBSMutableSceneParameters applyClientSettings:a2];
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __49__FBSMutableSceneParameters_applyClientSettings___block_invoke;
    v6[3] = &unk_1E76BD2A0;
    v7 = v5;
    [(FBSMutableSceneParameters *)self updateClientSettingsWithBlock:v6];
  }
}

- (void)applyParameters:(id)a3
{
  v8 = a3;
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    [(FBSMutableSceneParameters *)a2 applyParameters:?];
  }

  v6 = [v8 settings];
  [(FBSMutableSceneParameters *)self applySettings:v6];

  v7 = [v8 clientSettings];
  [(FBSMutableSceneParameters *)self applyClientSettings:v7];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [FBSSceneParameters allocWithZone:a3];

  return [(FBSSceneParameters *)v4 initWithParameters:self];
}

- (void)applySettings:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSSceneSettingsClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)applyClientSettings:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSSceneClientSettingsClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)applyParameters:(char *)a1 .cold.1(char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mismatched specifications"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_12();
    v6 = NSStringFromClass(v5);
    v7 = 138544642;
    v8 = a1;
    v9 = 2114;
    v10 = v6;
    v11 = 2048;
    v12 = a2;
    v13 = 2114;
    v14 = @"FBSSceneParameters.m";
    v15 = 1024;
    v16 = 232;
    v17 = 2114;
    v18 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v7, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

@end