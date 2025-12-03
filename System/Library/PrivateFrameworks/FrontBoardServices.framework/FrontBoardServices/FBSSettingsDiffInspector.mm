@interface FBSSettingsDiffInspector
- (FBSSettingsDiffInspector)init;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)_observeSetting:(void *)setting withBlock:;
- (void)dealloc;
- (void)inspectDiff:(id)diff withContext:(void *)context;
- (void)observeOtherSetting:(unint64_t)setting withBlock:(id)block;
- (void)observeProperty:(SEL)property withBlock:(id)block;
- (void)removeAllObservers;
@end

@implementation FBSSettingsDiffInspector

- (FBSSettingsDiffInspector)init
{
  v8.receiver = self;
  v8.super_class = FBSSettingsDiffInspector;
  v2 = [(FBSSettingsDiffInspector *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(off_1E76BC9E8);
    observerInfo = v2->_observerInfo;
    v2->_observerInfo = v3;

    v5 = objc_alloc_init(off_1E76BCA00);
    otherSettingsObserverInfo = v2->_otherSettingsObserverInfo;
    v2->_otherSettingsObserverInfo = v5;
  }

  return v2;
}

- (void)removeAllObservers
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"can't remove observers in the middle of an iteration"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)dealloc
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"dealloced in the middle of an iteration"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(self);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)inspectDiff:(id)diff withContext:(void *)context
{
  diffCopy = diff;
  if (self->_iteratingObservers)
  {
    [FBSSettingsDiffInspector inspectDiff:a2 withContext:?];
  }

  v8 = diffCopy;
  self->_iteratingObservers = 1;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__FBSSettingsDiffInspector_inspectDiff_withContext___block_invoke;
  v10[3] = &unk_1E76BE540;
  v10[4] = self;
  v10[5] = context;
  [diffCopy inspectChangesWithBlock:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__FBSSettingsDiffInspector_inspectDiff_withContext___block_invoke_2;
  v9[3] = &unk_1E76BE568;
  v9[4] = self;
  v9[5] = context;
  [v8 inspectOtherChangesWithBlock:v9];
  self->_iteratingObservers = 0;
}

void __52__FBSSettingsDiffInspector_inspectDiff_withContext___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(*(a1 + 32) + 8) objectForKey:{a2, 0}];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v7 + 1) + 8 * v6++) + 16))();
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void __52__FBSSettingsDiffInspector_inspectDiff_withContext___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = [*(*(a1 + 32) + 16) objectForSetting:{a2, 0}];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v7 + 1) + 8 * v6++) + 16))();
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_observeSetting:(void *)setting withBlock:
{
  v5 = a2;
  settingCopy = setting;
  if (self)
  {
    if (!v5)
    {
      [FBSSettingsDiffInspector _observeSetting:? withBlock:?];
    }

    if (!settingCopy)
    {
      [FBSSettingsDiffInspector _observeSetting:? withBlock:?];
    }

    if (*(self + 24) == 1)
    {
      [FBSSettingsDiffInspector _observeSetting:? withBlock:?];
    }

    [(FBSSettingsDiffInspector *)settingCopy _observeSetting:v5 withBlock:self, v7];
  }
}

- (void)observeOtherSetting:(unint64_t)setting withBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    if (self->_iteratingObservers)
    {
      [FBSSettingsDiffInspector observeOtherSetting:a2 withBlock:?];
    }

    v11 = blockCopy;
    v8 = [blockCopy copy];
    v9 = [(BSMutableSettings *)self->_otherSettingsObserverInfo objectForSetting:setting];
    if (v9)
    {
      v10 = v9;
      [v9 addObject:v8];
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v8, 0}];
      [(BSMutableSettings *)self->_otherSettingsObserverInfo setObject:v10 forSetting:setting];
    }

    blockCopy = v11;
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(FBSSettingsDiffInspector *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(FBSSettingsDiffInspector *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(FBSSettingsDiffInspector *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__FBSSettingsDiffInspector_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E76BCD60;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

- (void)observeProperty:(SEL)property withBlock:(id)block
{
  v6 = objc_opt_class();

  MEMORY[0x1EEDC70C8](self, a2, v6);
}

- (void)inspectDiff:(char *)a1 withContext:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"can't start iterating in the middle of an iteration"];
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

- (void)_observeSetting:(char *)a1 withBlock:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"can't add observers in the middle of an iteration"];
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

- (void)_observeSetting:(char *)a1 withBlock:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"observer != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    v7 = @"FBSSettingsDiffInspector.m";
    v8 = 1024;
    v9 = 90;
    v10 = v5;
    v11 = v2;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_observeSetting:(char *)a1 withBlock:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"setting != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    v7 = @"FBSSettingsDiffInspector.m";
    v8 = 1024;
    v9 = 89;
    v10 = v5;
    v11 = v2;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_observeSetting:(void *)a3 withBlock:(uint64_t)a4 .cold.4(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = [a1 copy];
  if (([(FBSSetting *)a2 isLegacy]& 1) != 0)
  {
    v8 = [(FBSSetting *)a2 legacySetting];
    *a4 = MEMORY[0x1E69E9820];
    *(a4 + 8) = 3221225472;
    *(a4 + 16) = __54__FBSSettingsDiffInspector__observeSetting_withBlock___block_invoke;
    *(a4 + 24) = &unk_1E76BE590;
    *(a4 + 32) = v7;
    [a3 observeOtherSetting:v8 withBlock:a4];
  }

  v9 = a3[1];
  v10 = [(FBSSetting *)a2 name];
  v11 = [v9 objectForKey:v10];

  if (v11)
  {
    v12 = MEMORY[0x1A58E80F0](v7);
    [v11 addObject:v12];
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x1E695DF70]);
    v14 = MEMORY[0x1A58E80F0](v7);
    v11 = [v13 initWithObjects:{v14, 0}];

    v15 = a3[1];
    v12 = [(FBSSetting *)a2 name];
    [v15 setObject:v11 forKey:v12];
  }
}

- (void)observeOtherSetting:(char *)a1 withBlock:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"can't add observers in the middle of an iteration"];
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