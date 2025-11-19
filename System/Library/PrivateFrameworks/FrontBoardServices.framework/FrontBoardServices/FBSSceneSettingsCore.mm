@interface FBSSceneSettingsCore
+ (id)descriptionOfValue:(id)a3 forSetting:(id)a4;
- (BOOL)isClientFuture;
- (BOOL)isForeground;
- (BOOL)isOccluded;
- (BOOL)prefersProcessTaskSuspensionWhileSceneForeground;
- (BSKeyedSettings)propagatedSettings;
- (CGRect)frame;
- (FBSDisplayConfiguration)displayConfiguration;
- (FBSceneClientProcess)clientProcess;
- (char)activityMode;
- (double)level;
- (int64_t)interfaceOrientation;
- (int64_t)interruptionPolicy;
- (unsigned)jetsamPriority;
- (void)frame:(CGRect)a3;
- (void)setActivityMode:(char)a3;
- (void)setClientFuture:(BOOL)a3;
- (void)setDisplayConfiguration:(id)a3;
- (void)setForeground:(BOOL)a3;
- (void)setInterfaceOrientation:(int64_t)a3;
- (void)setInterruptionPolicy:(int64_t)a3;
- (void)setJetsamPriority:(unsigned __int16)a3;
- (void)setOccluded:(BOOL)a3;
- (void)setPrefersProcessTaskSuspensionWhileSceneForeground:(BOOL)a3;
- (void)setPropagatedSettings:(id)a3;
@end

@implementation FBSSceneSettingsCore

- (FBSDisplayConfiguration)displayConfiguration
{
  v4 = objc_opt_class();

  return [(FBSSceneSettingsCore *)self valueForProperty:a2 expectedClass:v4];
}

- (BOOL)isForeground
{
  v2 = [(FBSSceneSettingsCore *)self valueForProperty:a2 expectedClass:objc_opt_class()];
  v3 = [v2 BOOLValue];

  return v3;
}

- (CGRect)frame
{
  v2 = [(FBSSceneSettingsCore *)self valueForProperty:a2 expectedClass:objc_opt_class()];
  v3 = v2;
  v8 = 0u;
  v9 = 0u;
  if (v2 && !strcmp([v2 objCType], "{CGRect={CGPoint=dd}{CGSize=dd}}"))
  {
    [v3 getValue:&v8 size:32];
  }

  v5 = *(&v8 + 1);
  v4 = *&v8;
  v7 = *(&v9 + 1);
  v6 = *&v9;
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (int64_t)interfaceOrientation
{
  v2 = [(FBSSceneSettingsCore *)self valueForProperty:a2 expectedClass:objc_opt_class()];
  v3 = [v2 integerValue];

  return v3;
}

- (char)activityMode
{
  v2 = [(FBSSceneSettingsCore *)self valueForProperty:a2 expectedClass:objc_opt_class()];
  v3 = [v2 unsignedCharValue];

  IsValid = FBSSceneActivityModeIsValid(v3);
  v5 = 0xF6ECCEu >> (8 * (v3 + 3));
  if (v3 < 0xFD)
  {
    LOBYTE(v5) = 0;
  }

  if (IsValid)
  {
    LOBYTE(v5) = v3;
  }

  return v5;
}

- (BSKeyedSettings)propagatedSettings
{
  v2 = [(FBSSceneSettingsCore *)self valueForProperty:a2 expectedClass:objc_opt_class()];
  if ([v2 isEmpty])
  {
    v3 = [MEMORY[0x1E695DFD8] set];
  }

  else
  {
    v4 = [MEMORY[0x1E695DFA8] set];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __42__FBSSceneSettingsCore_propagatedSettings__block_invoke;
    v6[3] = &unk_1E76BDF58;
    v3 = v4;
    v7 = v3;
    [v2 enumerateKeyedObjectsWithBlock:v6];
  }

  return v3;
}

- (unsigned)jetsamPriority
{
  v2 = [(FBSSceneSettingsCore *)self valueForProperty:a2 expectedClass:objc_opt_class()];
  v3 = [v2 integerValue];

  return v3;
}

- (BOOL)prefersProcessTaskSuspensionWhileSceneForeground
{
  v2 = [(FBSSceneSettingsCore *)self valueForProperty:a2 expectedClass:objc_opt_class()];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isClientFuture
{
  v2 = [(FBSSceneSettingsCore *)self valueForProperty:a2 expectedClass:objc_opt_class()];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isOccluded
{
  v2 = [(FBSSceneSettingsCore *)self valueForProperty:a2 expectedClass:objc_opt_class()];
  v3 = [v2 BOOLValue];

  return v3;
}

- (int64_t)interruptionPolicy
{
  v2 = [(FBSSceneSettingsCore *)self valueForProperty:a2 expectedClass:objc_opt_class()];
  v3 = [v2 integerValue];

  return v3;
}

- (double)level
{
  v2 = [(FBSSceneSettingsCore *)self valueForProperty:a2 expectedClass:objc_opt_class()];
  [v2 bs_CGFloatValue];
  v4 = v3;

  return v4;
}

+ (id)descriptionOfValue:(id)a3 forSetting:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 matchesProperty:sel_activityMode])
  {
    v8 = [v6 integerValue];
    v9 = MEMORY[0x1E696AEC0];
    v10 = NSStringFromFBSSceneActivityMode(v8);
    [v9 stringWithFormat:@"%@ (%d)", v10, v8];
    v11 = LABEL_3:;
LABEL_4:

    goto LABEL_10;
  }

  if ([v7 matchesProperty:sel_jetsamPriority])
  {
    v12 = NSStringFromFBSSceneJetsamPriority([v6 integerValue]);
  }

  else
  {
    if ([v7 matchesProperty:sel_interfaceOrientation])
    {
      [v6 integerValue];
      BSInterfaceOrientationDescription();
    }

    if ([v7 matchesProperty:sel_interruptionPolicy])
    {
      v14 = [v6 integerValue];
      v15 = MEMORY[0x1E696AEC0];
      v10 = NSStringFromFBSSceneInterruptionPolicy(v14);
      [v15 stringWithFormat:@"%@ (%ld)", v10, v14];
      goto LABEL_3;
    }

    if ([v7 matchesProperty:sel_propagatedSettings])
    {
      v16 = objc_opt_class();
      v17 = v6;
      if (v16)
      {
        if (objc_opt_isKindOfClass())
        {
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;

      v10 = [v19 allKeys];

      v20 = [v10 allObjects];
      v11 = [v20 componentsJoinedByString:{@", "}];

      goto LABEL_4;
    }

    v21.receiver = a1;
    v21.super_class = &OBJC_METACLASS___FBSSceneSettingsCore;
    v12 = objc_msgSendSuper2(&v21, sel_descriptionOfValue_forSetting_, v6, v7);
  }

  v11 = v12;
LABEL_10:

  return v11;
}

- (void)setDisplayConfiguration:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [FBSSceneSettingsCore setDisplayConfiguration:a2];
  }

  v6 = v5;
  [(FBSSceneSettingsCore *)self setValue:v5 forProperty:a2];
}

- (void)setPropagatedSettings:(id)a3
{
  v5 = a3;
  [(FBSSceneSettingsCore *)self setValue:0 forProperty:a2];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__FBSSceneSettingsCore_setPropagatedSettings___block_invoke;
  v6[3] = &unk_1E76BDF80;
  v6[4] = self;
  [v5 enumerateKeyedObjectsWithBlock:v6];
}

- (void)setActivityMode:(char)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithChar:a3];
  [(FBSSceneSettingsCore *)self setValue:v5 forProperty:a2];
}

- (void)frame:(CGRect)a3
{
  v6 = a3;
  v5 = [MEMORY[0x1E696B098] valueWithBytes:&v6 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [(FBSSceneSettingsCore *)self setValue:v5 forProperty:a2];
}

- (void)setInterfaceOrientation:(int64_t)a3
{
  if (a3)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [(FBSSceneSettingsCore *)self setValue:v5 forProperty:a2];
  }

  else
  {

    [FBSSceneSettingsCore setValue:"setValue:forProperty:" forProperty:?];
  }
}

- (void)setForeground:(BOOL)a3
{
  if (a3)
  {
    v3 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v3 = 0;
  }

  [(FBSSceneSettingsCore *)self setValue:v3 forProperty:a2];
}

- (void)setInterruptionPolicy:(int64_t)a3
{
  if (a3)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [(FBSSceneSettingsCore *)self setValue:v5 forProperty:a2];
  }

  else
  {

    [FBSSceneSettingsCore setValue:"setValue:forProperty:" forProperty:?];
  }
}

- (void)setOccluded:(BOOL)a3
{
  if (a3)
  {
    v3 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v3 = 0;
  }

  [(FBSSceneSettingsCore *)self setValue:v3 forProperty:a2];
}

- (void)setClientFuture:(BOOL)a3
{
  if (a3)
  {
    v3 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v3 = 0;
  }

  [(FBSSceneSettingsCore *)self setValue:v3 forProperty:a2];
}

- (void)setJetsamPriority:(unsigned __int16)a3
{
  if (a3)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:?];
    [(FBSSceneSettingsCore *)self setValue:v5 forProperty:a2];
  }

  else
  {

    [(FBSSceneSettingsCore *)self setValue:0 forProperty:a2];
  }
}

- (void)setPrefersProcessTaskSuspensionWhileSceneForeground:(BOOL)a3
{
  if (a3)
  {
    v3 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v3 = 0;
  }

  [(FBSSceneSettingsCore *)self setValue:v3 forProperty:a2];
}

- (FBSceneClientProcess)clientProcess
{
  v4 = objc_opt_class();

  return [(FBSSceneSettingsCore *)self valueForProperty:a2 expectedClass:v4];
}

- (void)setDisplayConfiguration:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"displayConfiguration", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

@end