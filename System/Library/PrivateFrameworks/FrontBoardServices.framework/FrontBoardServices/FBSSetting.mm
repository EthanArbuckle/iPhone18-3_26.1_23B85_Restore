@interface FBSSetting
+ (id)settingWithName:(uint64_t)name settingsClass:(void *)class extension:(char)extension local:(char)local type:(uint64_t)type legacySetting:(void *)setting expectedClass:;
- (BOOL)indirect_isPropagating;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesProperty:(SEL)property;
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
- (void)setDefaultValue:(id)value;
- (void)setDescriptionProvider:(id)provider;
- (void)setNullPreserving:(BOOL)preserving;
- (void)setPrivacySensitive:(BOOL)sensitive;
- (void)setPropagating:(BOOL)propagating;
- (void)setSpecialCollection:(uint64_t)collection;
- (void)setVolatile:(BOOL)volatile;
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
  if (self)
  {
    v1 = *(self + 25);
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
  if (self)
  {
    selfCopy = self;
    [self _finishInitializing];
    v3 = selfCopy[12];
    if (v3 == *MEMORY[0x1E695E738])
    {
      v3 = 0;
    }

    self = v3;
    v1 = vars8;
  }

  return self;
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
  if (self)
  {
    [self _finishInitializing];
    v2 = self[32];
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
  if (self)
  {
    v1 = *(self + 28);
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
  if (!self)
  {
    return 0;
  }

  os_unfair_lock_lock((self + 8));
  v2 = *(self + 88);
  os_unfair_lock_unlock((self + 8));
  return v2;
}

- (uint64_t)isLegacy
{
  if (self)
  {
    v1 = *(self + 26);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)type
{
  if (self)
  {
    return *(self + 27);
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
  if (self)
  {
    [self _finishInitializing];
    v2 = self[29];
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (void)descriptionProvider
{
  if (self)
  {
    selfCopy = self;
    [self _finishInitializing];
    self = MEMORY[0x1A58E80F0](selfCopy[13]);
    v1 = vars8;
  }

  return self;
}

- (uint64_t)isVolatile
{
  if (self)
  {
    [self _finishInitializing];
    v2 = self[30];
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

+ (id)settingWithName:(uint64_t)name settingsClass:(void *)class extension:(char)extension local:(char)local type:(uint64_t)type legacySetting:(void *)setting expectedClass:
{
  v14 = a2;
  objc_opt_self();
  if (([class isSubclassOfClass:objc_opt_class()] & 1) == 0)
  {
    [FBSSetting settingWithName:class settingsClass:sel_settingWithName_settingsClass_extension_local_type_legacySetting_expectedClass_ extension:? local:? type:? legacySetting:? expectedClass:?];
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

  v16 = NSStringFromClass(class);
  if ([class isSubclassOfClass:objc_opt_class()])
  {

    v16 = 0;
  }

  v17 = objc_opt_new();
  *(v17 + 16) = name;
  *(v17 + 8) = 0;
  v18 = [v15 copy];
  v19 = *(v17 + 40);
  *(v17 + 40) = v18;

  v20 = MEMORY[0x1A58E7820](v15);
  *(v17 + 26) = type != 0x7FFFFFFFFFFFFFFFLL;
  *(v17 + 48) = v20;
  *(v17 + 56) = type;
  objc_storeStrong((v17 + 64), class);
  v21 = [v16 copy];
  v22 = *(v17 + 72);
  *(v17 + 72) = v21;

  *(v17 + 25) = extension;
  *(v17 + 27) = local;
  objc_storeStrong((v17 + 80), setting);
  *(v17 + 88) = 0x7FFFFFFFFFFFFFFFLL;
  *(v17 + 28) = [setting isSubclassOfClass:objc_opt_class()];

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy)
  {
    if (equalCopy == self)
    {
      v5 = 1;
      goto LABEL_11;
    }

    if (self->_type == equalCopy->_type && self->_setting == equalCopy->_setting && self->_legacySetting == equalCopy->_legacySetting && self->_expectedClass == equalCopy->_expectedClass && self->_settingsClass == equalCopy->_settingsClass)
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

  extensionID = [MEMORY[0x1E696AEC0] stringWithFormat:@"<FBSSetting: %p %@ (%@) %@", self, self->_name, v4, extensionID];;
  v7 = extensionID;
  if (self->_local)
  {
    v8 = [extensionID stringByAppendingString:@" local"];;

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

- (BOOL)matchesProperty:(SEL)property
{
  selfCopy = self;
  v4 = FBSSettingForSelector(self->_settingsClass, property);
  LOBYTE(selfCopy) = v4 == selfCopy;

  return selfCopy;
}

- (void)setPrivacySensitive:(BOOL)sensitive
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_lock_initialized)
  {
    [FBSSetting setPrivacySensitive:a2];
  }

  self->_redacted = sensitive;
}

- (void)setDescriptionProvider:(id)provider
{
  providerCopy = provider;
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_lock_initialized)
  {
    [FBSSetting setDescriptionProvider:a2];
  }

  v5 = [providerCopy copy];
  descriptionProvider = self->_descriptionProvider;
  self->_descriptionProvider = v5;
}

- (void)setDefaultValue:(id)value
{
  valueCopy = value;
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_lock_initialized)
  {
    [FBSSetting setDefaultValue:a2];
  }

  if (*MEMORY[0x1E695E738] == valueCopy)
  {
    [(FBSSetting *)a2 setDefaultValue:?];
  }

  if (valueCopy)
  {
    v5 = valueCopy;
  }

  else
  {
    v5 = *MEMORY[0x1E695E738];
  }

  objc_storeStrong(&self->_defaultValue, v5);
}

- (void)setPropagating:(BOOL)propagating
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_lock_initialized)
  {
    [FBSSetting setPropagating:a2];
  }

  self->_propagating = propagating;
}

- (void)setNullPreserving:(BOOL)preserving
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_lock_initialized)
  {
    [FBSSetting setNullPreserving:a2];
  }

  self->_nullPreserving = preserving;
}

- (void)setVolatile:(BOOL)volatile
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_lock_initialized)
  {
    [FBSSetting setVolatile:a2];
  }

  self->_volatile = volatile;
}

- (void)setSpecialCollection:(uint64_t)collection
{
  if (collection)
  {
    os_unfair_lock_lock((collection + 8));
    *(collection + 88) = a2;

    os_unfair_lock_unlock((collection + 8));
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