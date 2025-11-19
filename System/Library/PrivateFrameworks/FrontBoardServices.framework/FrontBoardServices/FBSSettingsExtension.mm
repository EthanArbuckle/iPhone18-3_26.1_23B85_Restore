@interface FBSSettingsExtension
+ (Class)extensionForBSObjCProtocol:(id)a3;
+ (Class)extensionForProtocol:(id)a3;
+ (id)BSObjCProtocol;
+ (id)alloc;
+ (id)settings:(id)a3 valueDescriptionForFlag:(int64_t)a4 object:(id)a5 ofSetting:(unint64_t)a6;
+ (void)configureSetting:(id)a3;
@end

@implementation FBSSettingsExtension

+ (id)BSObjCProtocol
{
  v2 = [a1 protocol];
  if (v2)
  {
    v3 = [off_1E76BCA10 protocolForProtocol:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)alloc
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromClass(a1);
  v6 = [v4 stringWithFormat:@"%@ is not intended to be instantiated", v5];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 138544642;
    v11 = v7;
    v12 = 2114;
    v13 = v9;
    v14 = 2048;
    v15 = a1;
    v16 = 2114;
    v17 = @"FBSSceneExtension.m";
    v18 = 1024;
    v19 = 63;
    v20 = 2114;
    v21 = v6;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v6 UTF8String];
  _bs_set_crash_log_message();
}

+ (Class)extensionForProtocol:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E696AEC0];
  if (v4)
  {
    v6 = v4;
    v7 = NSStringFromProtocol(v4);
    [v5 stringWithFormat:@"<%@>", v7];
    objc_claimAutoreleasedReturnValue();

    objc_opt_class();
    v6;
    BSObjCClassCreate();
  }

  [(FBSSettingsExtension *)MEMORY[0x1E696AEC0] extensionForProtocol:a2];
}

void __45__FBSSettingsExtension_extensionForProtocol___block_invoke(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__FBSSettingsExtension_extensionForProtocol___block_invoke_2;
  v6[3] = &unk_1E76BCE00;
  v7 = *(a1 + 32);
  v3 = MEMORY[0x1A58E80F0](v6);
  v4 = imp_implementationWithBlock(v3);

  Class = object_getClass(a2);
  class_addMethod(Class, sel_protocol, v4, "@@:");
}

+ (Class)extensionForBSObjCProtocol:(id)a3
{
  v5 = a3;
  v6 = MEMORY[0x1E696AEC0];
  if (v5)
  {
    v7 = v5;
    v8 = [v5 name];
    [v6 stringWithFormat:@"<%@>", v8];
    objc_claimAutoreleasedReturnValue();

    if (objc_opt_class() != a1)
    {
      objc_opt_class();
    }

    v7;
    BSObjCClassCreate();
  }

  [(FBSSettingsExtension *)MEMORY[0x1E696AEC0] extensionForBSObjCProtocol:a2];
}

void __51__FBSSettingsExtension_extensionForBSObjCProtocol___block_invoke(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__FBSSettingsExtension_extensionForBSObjCProtocol___block_invoke_2;
  v6[3] = &unk_1E76BCE50;
  v7 = *(a1 + 32);
  v3 = MEMORY[0x1A58E80F0](v6);
  v4 = imp_implementationWithBlock(v3);

  Class = object_getClass(a2);
  class_addMethod(Class, sel_BSObjCProtocol, v4, "@@:");
}

+ (void)configureSetting:(id)a3
{
  v5 = a3;
  [v5 setPrivacySensitive:{objc_msgSend(a1, "isPrivacySensitiveSetting:", v5)}];
  v4 = [a1 valueForUndefinedSetting:v5];
  [v5 setDefaultValue:v4];

  [v5 setPropagating:{objc_msgSend(a1, "propagateSetting:", v5)}];
}

+ (id)settings:(id)a3 valueDescriptionForFlag:(int64_t)a4 object:(id)a5 ofSetting:(unint64_t)a6
{
  v10 = a5;
  v11 = [a3 keyForSetting:a6];
  v12 = v11;
  if (v11 && (v13 = NSSelectorFromString(v11)) != 0 && ((v14 = v13, v15 = objc_opt_class(), FBSSettingForExtensionSelector(v15, v14), (v16 = objc_claimAutoreleasedReturnValue()) != 0) || (v17 = objc_opt_class(), FBSSettingForExtensionSelector(v17, v14), (v16 = objc_claimAutoreleasedReturnValue()) != 0) || (v18 = objc_opt_class(), FBSSettingForExtensionSelector(v18, v14), (v16 = objc_claimAutoreleasedReturnValue()) != 0)))
  {
    v19 = v16;
    if (([(FBSSetting *)v16 isRedacted]& 1) != 0)
    {
      v20 = @"<redacted>";
    }

    else
    {
      if (a4 != 0x7FFFFFFFFFFFFFFFLL && !v10)
      {
        BSSettingFlagIsYes();
      }

      v21 = [(FBSSetting *)v19 descriptionProvider];
      v22 = v21;
      if (!v21 || ((*(v21 + 16))(v21, v10), (v20 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v20 = [a1 descriptionOfValue:v10 forSetting:v19];
      }
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (void)extensionForProtocol:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"return value is incorrect"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_13();
    v7 = @"FBSSceneExtension.m";
    v8 = 1024;
    v9 = 77;
    v10 = v5;
    v11 = v2;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)extensionForProtocol:(void *)a1 .cold.2(void *a1, char *a2)
{
  v3 = [a1 stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"protocol", v11, v12);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)extensionForBSObjCProtocol:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"return value is incorrect"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_13();
    v7 = @"FBSSceneExtension.m";
    v8 = 1024;
    v9 = 93;
    v10 = v5;
    v11 = v2;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)extensionForBSObjCProtocol:(void *)a1 .cold.2(void *a1, char *a2)
{
  v3 = [a1 stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"protocol", v11, v12);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
}

@end