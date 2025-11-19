@interface FBSSetting
+ (id)settingWithName:(uint64_t)a3 settingsClass:(void *)a4 extension:(char)a5 local:(char)a6 type:(uint64_t)a7 legacySetting:(void *)a8 expectedClass:;
- (BOOL)indirect_isPropagating;
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesProperty:(SEL)a3;
- (NSString)description;
- (uint64_t)expectedClass;
- (uint64_t)extension;
- (uint64_t)extensionID;
- (uint64_t)isBSSettings;
- (uint64_t)isLegacy;
- (uint64_t)isLocal;
- (uint64_t)isNullPreserving;
- (uint64_t)isRedacted;
- (uint64_t)isVolatile;
- (uint64_t)legacySetting;
- (uint64_t)name;
- (uint64_t)setting;
- (uint64_t)specialCollection;
- (uint64_t)type;
- (void)_finishInitializing;
- (void)defaultValue;
- (void)descriptionProvider;
- (void)setDefaultValue:(id)a3;
- (void)setDescriptionProvider:(id)a3;
- (void)setNullPreserving:(BOOL)a3;
- (void)setPrivacySensitive:(BOOL)a3;
- (void)setPropagating:(BOOL)a3;
- (void)setSpecialCollection:(uint64_t)a1;
- (void)setVolatile:(BOOL)a3;
@end

@implementation FBSSetting

- (uint64_t)extensionID
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

- (uint64_t)isLocal
{
  if (a1)
  {
    v1 = *(a1 + 25);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)setting
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

- (void)defaultValue
{
  if (a1)
  {
    v2 = a1;
    [a1 _finishInitializing];
    v3 = v2[12];
    if (v3 == *MEMORY[0x1E695E738])
    {
      v3 = 0;
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (void)_finishInitializing
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_initialized)
  {
    [(objc_class *)self->_extension configureSetting:self];
    self->_lock_initialized = 1;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (uint64_t)isNullPreserving
{
  if (a1)
  {
    [a1 _finishInitializing];
    v2 = a1[32];
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (uint64_t)name
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

- (uint64_t)isBSSettings
{
  if (a1)
  {
    v1 = *(a1 + 28);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)extension
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

- (uint64_t)specialCollection
{
  if (!a1)
  {
    return 0;
  }

  os_unfair_lock_lock((a1 + 8));
  v2 = *(a1 + 88);
  os_unfair_lock_unlock((a1 + 8));
  return v2;
}

- (uint64_t)isLegacy
{
  if (a1)
  {
    v1 = *(a1 + 26);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)type
{
  if (a1)
  {
    return *(a1 + 27);
  }

  else
  {
    return 0;
  }
}

- (BOOL)indirect_isPropagating
{
  if (self)
  {
    [(FBSSetting *)self _finishInitializing];
    return self->_propagating;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)expectedClass
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

- (uint64_t)isRedacted
{
  if (a1)
  {
    [a1 _finishInitializing];
    v2 = a1[29];
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (void)descriptionProvider
{
  if (a1)
  {
    v2 = a1;
    [a1 _finishInitializing];
    a1 = MEMORY[0x1A58E80F0](v2[13]);
    v1 = vars8;
  }

  return a1;
}

- (uint64_t)isVolatile
{
  if (a1)
  {
    [a1 _finishInitializing];
    v2 = a1[30];
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

+ (id)settingWithName:(uint64_t)a3 settingsClass:(void *)a4 extension:(char)a5 local:(char)a6 type:(uint64_t)a7 legacySetting:(void *)a8 expectedClass:
{
  v14 = a2;
  objc_opt_self();
  if (([a4 isSubclassOfClass:objc_opt_class()] & 1) == 0)
  {
    [FBSSetting settingWithName:a4 settingsClass:sel_settingWithName_settingsClass_extension_local_type_legacySetting_expectedClass_ extension:? local:? type:? legacySetting:? expectedClass:?];
  }

  v15 = v14;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v15)
  {
    [FBSSetting settingWithName:? settingsClass:? extension:? local:? type:? legacySetting:? expectedClass:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSSetting settingWithName:? settingsClass:? extension:? local:? type:? legacySetting:? expectedClass:?];
  }

  v16 = NSStringFromClass(a4);
  if ([a4 isSubclassOfClass:objc_opt_class()])
  {

    v16 = 0;
  }

  v17 = objc_opt_new();
  *(v17 + 16) = a3;
  *(v17 + 8) = 0;
  v18 = [v15 copy];
  v19 = *(v17 + 40);
  *(v17 + 40) = v18;

  v20 = MEMORY[0x1A58E7820](v15);
  *(v17 + 26) = a7 != 0x7FFFFFFFFFFFFFFFLL;
  *(v17 + 48) = v20;
  *(v17 + 56) = a7;
  objc_storeStrong((v17 + 64), a4);
  v21 = [v16 copy];
  v22 = *(v17 + 72);
  *(v17 + 72) = v21;

  *(v17 + 25) = a5;
  *(v17 + 27) = a6;
  objc_storeStrong((v17 + 80), a8);
  *(v17 + 88) = 0x7FFFFFFFFFFFFFFFLL;
  *(v17 + 28) = [a8 isSubclassOfClass:objc_opt_class()];

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (v4 == self)
    {
      v5 = 1;
      goto LABEL_11;
    }

    if (self->_type == v4->_type && self->_setting == v4->_setting && self->_legacySetting == v4->_legacySetting && self->_expectedClass == v4->_expectedClass && self->_settingsClass == v4->_settingsClass)
    {
      BSEqualBools();
    }
  }

  v5 = 0;
LABEL_11:

  return v5;
}

- (NSString)description
{
  expectedClass = self->_expectedClass;
  if (expectedClass)
  {
    NSStringFromClass(expectedClass);
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%c", self->_type];
  }
  v4 = ;
  extensionID = self->_extensionID;
  if (!extensionID)
  {
    extensionID = @"<FBSCore>";
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<FBSSetting: %p %@ (%@) %@", self, self->_name, v4, extensionID];;
  v7 = v6;
  if (self->_local)
  {
    v8 = [v6 stringByAppendingString:@" local"];;

    v7 = v8;
  }

  if (self->_legacy)
  {
    v9 = [v7 stringByAppendingFormat:@" legacy (%lu)", self->_legacySetting];;

    v7 = v9;
  }

  v10 = [v7 stringByAppendingString:@">"];

  return v10;
}

- (BOOL)matchesProperty:(SEL)a3
{
  v3 = self;
  v4 = FBSSettingForSelector(self->_settingsClass, a3);
  LOBYTE(v3) = v4 == v3;

  return v3;
}

- (void)setPrivacySensitive:(BOOL)a3
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_lock_initialized)
  {
    [FBSSetting setPrivacySensitive:a2];
  }

  self->_redacted = a3;
}

- (void)setDescriptionProvider:(id)a3
{
  v7 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_lock_initialized)
  {
    [FBSSetting setDescriptionProvider:a2];
  }

  v5 = [v7 copy];
  descriptionProvider = self->_descriptionProvider;
  self->_descriptionProvider = v5;
}

- (void)setDefaultValue:(id)a3
{
  v6 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_lock_initialized)
  {
    [FBSSetting setDefaultValue:a2];
  }

  if (*MEMORY[0x1E695E738] == v6)
  {
    [(FBSSetting *)a2 setDefaultValue:?];
  }

  if (v6)
  {
    v5 = v6;
  }

  else
  {
    v5 = *MEMORY[0x1E695E738];
  }

  objc_storeStrong(&self->_defaultValue, v5);
}

- (void)setPropagating:(BOOL)a3
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_lock_initialized)
  {
    [FBSSetting setPropagating:a2];
  }

  self->_propagating = a3;
}

- (void)setNullPreserving:(BOOL)a3
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_lock_initialized)
  {
    [FBSSetting setNullPreserving:a2];
  }

  self->_nullPreserving = a3;
}

- (void)setVolatile:(BOOL)a3
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_lock_initialized)
  {
    [FBSSetting setVolatile:a2];
  }

  self->_volatile = a3;
}

- (void)setSpecialCollection:(uint64_t)a1
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 8));
    *(a1 + 88) = a2;

    os_unfair_lock_unlock((a1 + 8));
  }
}

- (uint64_t)legacySetting
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

+ (void)settingWithName:(uint64_t)a1 settingsClass:(char *)a2 extension:local:type:legacySetting:expectedClass:.cold.1(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is not a valid FBSSettingsExtension"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)settingWithName:(char *)a1 settingsClass:extension:local:type:legacySetting:expectedClass:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)settingWithName:(char *)a1 settingsClass:extension:local:type:legacySetting:expectedClass:.cold.3(char *a1)
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

- (void)setPrivacySensitive:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"!_lock_initialized", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)setDescriptionProvider:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"!_lock_initialized", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)setDefaultValue:(char *)a1 .cold.1(char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NSNull as a default value is reserved"];
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
    v14 = @"FBSSetting.m";
    v15 = 1024;
    v16 = 223;
    v17 = 2114;
    v18 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v7, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (void)setDefaultValue:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"!_lock_initialized", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)setPropagating:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"!_lock_initialized", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)setNullPreserving:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"!_lock_initialized", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)setVolatile:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"!_lock_initialized", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

@end