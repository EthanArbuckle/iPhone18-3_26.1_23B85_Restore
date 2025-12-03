@interface FBSMutableSceneClientSettings
- (void)_applySafeValuesFromUntrustedSettings:(id)settings;
- (void)addLayer:(id)layer;
- (void)removeLayer:(id)layer;
@end

@implementation FBSMutableSceneClientSettings

- (void)addLayer:(id)layer
{
  layerCopy = layer;
  NSClassFromString(&cfstr_Fbsscenelayer.isa);
  if (!layerCopy)
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

  capture = [layerCopy capture];
  stringRepresentation = [capture stringRepresentation];
  [v5 setObject:capture forKey:stringRepresentation];
}

- (void)removeLayer:(id)layer
{
  layerCopy = layer;
  NSClassFromString(&cfstr_Fbsscenelayer.isa);
  if (!layerCopy)
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
    stringRepresentation = [layerCopy stringRepresentation];
    [v5 setObject:0 forKey:stringRepresentation];
  }
}

- (void)_applySafeValuesFromUntrustedSettings:(id)settings
{
  settingsCopy = settings;
  [settingsCopy preferredLevel];
  [(FBSMutableSceneClientSettings *)self setPreferredLevel:?];
  -[FBSMutableSceneClientSettings setPreferredInterfaceOrientation:](self, "setPreferredInterfaceOrientation:", [settingsCopy preferredInterfaceOrientation]);
  preferredSceneHostIdentifier = [settingsCopy preferredSceneHostIdentifier];
  [(FBSMutableSceneClientSettings *)self setPreferredSceneHostIdentifier:preferredSceneHostIdentifier];

  preferredSceneHostIdentity = [settingsCopy preferredSceneHostIdentity];
  [(FBSMutableSceneClientSettings *)self setPreferredSceneHostIdentity:preferredSceneHostIdentity];

  _legacyOtherSettings = [(FBSSettings *)self _legacyOtherSettings];
  [_legacyOtherSettings removeAllSettings];
  _legacyOtherSettings2 = [(FBSSettings *)settingsCopy _legacyOtherSettings];
  [_legacyOtherSettings applySettings:_legacyOtherSettings2];

  _legacyLocalSettings = [(FBSSettings *)self _legacyLocalSettings];
  [_legacyLocalSettings removeAllSettings];
  _legacyLocalSettings2 = [(FBSSettings *)settingsCopy _legacyLocalSettings];

  [_legacyLocalSettings applySettings:_legacyLocalSettings2];
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