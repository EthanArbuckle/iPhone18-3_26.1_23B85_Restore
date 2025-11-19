@interface FBSMutableSceneClientSettings
- (void)_applySafeValuesFromUntrustedSettings:(id)a3;
- (void)addLayer:(id)a3;
- (void)removeLayer:(id)a3;
@end

@implementation FBSMutableSceneClientSettings

- (void)addLayer:(id)a3
{
  v8 = a3;
  NSClassFromString(&cfstr_Fbsscenelayer.isa);
  if (!v8)
  {
    [FBSMutableSceneClientSettings addLayer:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSMutableSceneClientSettings addLayer:a2];
  }

  v5 = [(FBSSettings *)self valueForProperty:sel_layers expectedClass:objc_opt_class()];
  if (!v5)
  {
    v5 = objc_opt_new();
    [(FBSSettings *)self setValue:v5 forProperty:sel_layers];
  }

  v6 = [v8 capture];
  v7 = [v6 stringRepresentation];
  [v5 setObject:v6 forKey:v7];
}

- (void)removeLayer:(id)a3
{
  v7 = a3;
  NSClassFromString(&cfstr_Fbsscenelayer.isa);
  if (!v7)
  {
    [FBSMutableSceneClientSettings removeLayer:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSMutableSceneClientSettings removeLayer:a2];
  }

  v5 = [(FBSSettings *)self valueForProperty:sel_layers expectedClass:objc_opt_class()];
  if (v5)
  {
    v6 = [v7 stringRepresentation];
    [v5 setObject:0 forKey:v6];
  }
}

- (void)_applySafeValuesFromUntrustedSettings:(id)a3
{
  v4 = a3;
  [v4 preferredLevel];
  [(FBSMutableSceneClientSettings *)self setPreferredLevel:?];
  -[FBSMutableSceneClientSettings setPreferredInterfaceOrientation:](self, "setPreferredInterfaceOrientation:", [v4 preferredInterfaceOrientation]);
  v5 = [v4 preferredSceneHostIdentifier];
  [(FBSMutableSceneClientSettings *)self setPreferredSceneHostIdentifier:v5];

  v6 = [v4 preferredSceneHostIdentity];
  [(FBSMutableSceneClientSettings *)self setPreferredSceneHostIdentity:v6];

  v10 = [(FBSSettings *)self _legacyOtherSettings];
  [v10 removeAllSettings];
  v7 = [(FBSSettings *)v4 _legacyOtherSettings];
  [v10 applySettings:v7];

  v8 = [(FBSSettings *)self _legacyLocalSettings];
  [v8 removeAllSettings];
  v9 = [(FBSSettings *)v4 _legacyLocalSettings];

  [v8 applySettings:v9];
}

- (void)addLayer:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSSceneLayerClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)addLayer:(char *)a1 .cold.2(char *a1)
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

- (void)removeLayer:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSSceneLayerClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)removeLayer:(char *)a1 .cold.2(char *a1)
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

@end