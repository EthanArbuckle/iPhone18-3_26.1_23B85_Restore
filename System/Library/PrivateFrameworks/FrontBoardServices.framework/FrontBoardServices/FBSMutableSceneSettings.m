@interface FBSMutableSceneSettings
- (id)ignoreOcclusionReasons;
- (void)addPropagatedProperty:(SEL)a3;
- (void)addPropagatedSetting:(id)a3;
- (void)addPropagatedSettings:(id)a3;
- (void)removePropagatedProperty:(SEL)a3;
- (void)removePropagatedSetting:(id)a3;
- (void)removePropagatedSettings:(id)a3;
@end

@implementation FBSMutableSceneSettings

- (id)ignoreOcclusionReasons
{
  ignoreOcclusionReasons = self->super._ignoreOcclusionReasons;
  if (!ignoreOcclusionReasons)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v5 = self->super._ignoreOcclusionReasons;
    self->super._ignoreOcclusionReasons = v4;

    ignoreOcclusionReasons = self->super._ignoreOcclusionReasons;
  }

  return ignoreOcclusionReasons;
}

- (void)addPropagatedProperty:(SEL)a3
{
  v6 = objc_opt_class();
  v7 = FBSSettingForSelector(v6, a3);
  if (!v7)
  {
    [(FBSMutableSceneSettings *)a3 addPropagatedProperty:a2];
  }

  v8 = v7;
  [(FBSMutableSceneSettings *)self addPropagatedSetting:v7];
}

- (void)removePropagatedProperty:(SEL)a3
{
  v6 = objc_opt_class();
  v7 = FBSSettingForSelector(v6, a3);
  if (!v7)
  {
    [(FBSMutableSceneSettings *)a3 removePropagatedProperty:a2];
  }

  v8 = v7;
  [(FBSMutableSceneSettings *)self removePropagatedSetting:v7];
}

- (void)addPropagatedSetting:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [FBSMutableSceneSettings addPropagatedSetting:a2];
  }

  v7 = v5;
  v6 = [MEMORY[0x1E695DFD8] setWithObject:v5];
  [(FBSMutableSceneSettings *)self addPropagatedSettings:v6];
}

- (void)removePropagatedSetting:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [FBSMutableSceneSettings removePropagatedSetting:a2];
  }

  v7 = v5;
  v6 = [MEMORY[0x1E695DFD8] setWithObject:v5];
  [(FBSMutableSceneSettings *)self removePropagatedSettings:v6];
}

- (void)addPropagatedSettings:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([v5 count])
  {
    v14 = a2;
    v6 = [(FBSSettings *)self valueForProperty:sel_propagatedSettings expectedClass:objc_opt_class()];
    if (!v6)
    {
      v6 = objc_opt_new();
      [(FBSSettings *)self setValue:v6 forProperty:sel_propagatedSettings, a2];
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          NSClassFromString(&cfstr_Fbssetting.isa);
          if (!v12)
          {
            [FBSMutableSceneSettings addPropagatedSettings:v14];
          }

          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [FBSMutableSceneSettings addPropagatedSettings:v14];
          }

          if (([(FBSSetting *)v12 isLocal]& 1) != 0)
          {
            v13 = FBLogCommon();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              [(FBSMutableSceneSettings *)v19 addPropagatedSettings:v12, &v20, v13];
            }
          }

          else
          {
            v13 = [(FBSSetting *)v12 name];
            [v6 setObject:v12 forKey:v13];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v9);
    }
  }
}

- (void)removePropagatedSettings:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([v5 count])
  {
    v6 = [(FBSSettings *)self valueForProperty:sel_propagatedSettings expectedClass:objc_opt_class()];
    if (v6)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v15;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v14 + 1) + 8 * i);
            NSClassFromString(&cfstr_Fbssetting.isa);
            if (!v12)
            {
              [FBSMutableSceneSettings removePropagatedSettings:a2];
            }

            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              [FBSMutableSceneSettings removePropagatedSettings:a2];
            }

            v13 = [(FBSSetting *)v12 name];
            [v6 setObject:0 forKey:{v13, v14}];
          }

          v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v9);
      }
    }
  }
}

- (void)addPropagatedProperty:(const char *)a1 .cold.1(const char *a1, const char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v13 = NSStringFromSelector(a1);
  v4 = [v3 stringWithFormat:@"no setting for %@"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v13, v14, v15);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (void)removePropagatedProperty:(const char *)a1 .cold.1(const char *a1, const char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v13 = NSStringFromSelector(a1);
  v4 = [v3 stringWithFormat:@"no setting for %@"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v13, v14, v15);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (void)addPropagatedSetting:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"setting != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)removePropagatedSetting:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"setting != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)addPropagatedSettings:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSSettingClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)addPropagatedSettings:(void *)a3 .cold.2(uint8_t *a1, uint64_t a2, void *a3, NSObject *a4)
{
  v7 = [(FBSSetting *)a2 name];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_1A2DBB000, a4, OS_LOG_TYPE_ERROR, "cannot propagate local setting %@", a1, 0xCu);
}

- (void)addPropagatedSettings:(char *)a1 .cold.3(char *a1)
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

- (void)removePropagatedSettings:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSSettingClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)removePropagatedSettings:(char *)a1 .cold.2(char *a1)
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