@interface FBSSceneSettingsCore
+ (id)descriptionOfValue:(id)value forSetting:(id)setting;
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
- (void)frame:(CGRect)frame;
- (void)setActivityMode:(char)mode;
- (void)setClientFuture:(BOOL)future;
- (void)setDisplayConfiguration:(id)configuration;
- (void)setForeground:(BOOL)foreground;
- (void)setInterfaceOrientation:(int64_t)orientation;
- (void)setInterruptionPolicy:(int64_t)policy;
- (void)setJetsamPriority:(unsigned __int16)priority;
- (void)setOccluded:(BOOL)occluded;
- (void)setPrefersProcessTaskSuspensionWhileSceneForeground:(BOOL)foreground;
- (void)setPropagatedSettings:(id)settings;
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
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
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
  integerValue = [v2 integerValue];

  return integerValue;
}

- (char)activityMode
{
  v2 = [(FBSSceneSettingsCore *)self valueForProperty:a2 expectedClass:objc_opt_class()];
  unsignedCharValue = [v2 unsignedCharValue];

  IsValid = FBSSceneActivityModeIsValid(unsignedCharValue);
  v5 = 0xF6ECCEu >> (8 * (unsignedCharValue + 3));
  if (unsignedCharValue < 0xFD)
  {
    LOBYTE(v5) = 0;
  }

  if (IsValid)
  {
    LOBYTE(v5) = unsignedCharValue;
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
  integerValue = [v2 integerValue];

  return integerValue;
}

- (BOOL)prefersProcessTaskSuspensionWhileSceneForeground
{
  v2 = [(FBSSceneSettingsCore *)self valueForProperty:a2 expectedClass:objc_opt_class()];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isClientFuture
{
  v2 = [(FBSSceneSettingsCore *)self valueForProperty:a2 expectedClass:objc_opt_class()];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isOccluded
{
  v2 = [(FBSSceneSettingsCore *)self valueForProperty:a2 expectedClass:objc_opt_class()];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (int64_t)interruptionPolicy
{
  v2 = [(FBSSceneSettingsCore *)self valueForProperty:a2 expectedClass:objc_opt_class()];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (double)level
{
  v2 = [(FBSSceneSettingsCore *)self valueForProperty:a2 expectedClass:objc_opt_class()];
  [v2 bs_CGFloatValue];
  v4 = v3;

  return v4;
}

+ (id)descriptionOfValue:(id)value forSetting:(id)setting
{
  valueCopy = value;
  settingCopy = setting;
  if ([settingCopy matchesProperty:sel_activityMode])
  {
    integerValue = [valueCopy integerValue];
    v9 = MEMORY[0x1E696AEC0];
    allKeys = NSStringFromFBSSceneActivityMode(integerValue);
    [v9 stringWithFormat:@"%@ (%d)", allKeys, integerValue];
    v11 = LABEL_3:;
LABEL_4:

    goto LABEL_10;
  }

  if ([settingCopy matchesProperty:sel_jetsamPriority])
  {
    v12 = NSStringFromFBSSceneJetsamPriority([valueCopy integerValue]);
  }

  else
  {
    if ([settingCopy matchesProperty:sel_interfaceOrientation])
    {
      [valueCopy integerValue];
      BSInterfaceOrientationDescription();
    }

    if ([settingCopy matchesProperty:sel_interruptionPolicy])
    {
      integerValue2 = [valueCopy integerValue];
      v15 = MEMORY[0x1E696AEC0];
      allKeys = NSStringFromFBSSceneInterruptionPolicy(integerValue2);
      [v15 stringWithFormat:@"%@ (%ld)", allKeys, integerValue2];
      goto LABEL_3;
    }

    if ([settingCopy matchesProperty:sel_propagatedSettings])
    {
      v16 = objc_opt_class();
      v17 = valueCopy;
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

      allKeys = [v19 allKeys];

      allObjects = [allKeys allObjects];
      v11 = [allObjects componentsJoinedByString:{@", "}];

      goto LABEL_4;
    }

    v21.receiver = self;
    v21.super_class = &OBJC_METACLASS___FBSSceneSettingsCore;
    v12 = objc_msgSendSuper2(&v21, sel_descriptionOfValue_forSetting_, valueCopy, settingCopy);
  }

  v11 = v12;
LABEL_10:

  return v11;
}

- (void)setDisplayConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    [FBSSceneSettingsCore setDisplayConfiguration:a2];
  }

  v6 = configurationCopy;
  [(FBSSceneSettingsCore *)self setValue:configurationCopy forProperty:a2];
}

- (void)setPropagatedSettings:(id)settings
{
  settingsCopy = settings;
  [(FBSSceneSettingsCore *)self setValue:0 forProperty:a2];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__FBSSceneSettingsCore_setPropagatedSettings___block_invoke;
  v6[3] = &unk_1E76BDF80;
  v6[4] = self;
  [settingsCopy enumerateKeyedObjectsWithBlock:v6];
}

- (void)setActivityMode:(char)mode
{
  v5 = [MEMORY[0x1E696AD98] numberWithChar:mode];
  [(FBSSceneSettingsCore *)self setValue:v5 forProperty:a2];
}

- (void)frame:(CGRect)frame
{
  frameCopy = frame;
  v5 = [MEMORY[0x1E696B098] valueWithBytes:&frameCopy objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [(FBSSceneSettingsCore *)self setValue:v5 forProperty:a2];
}

- (void)setInterfaceOrientation:(int64_t)orientation
{
  if (orientation)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [(FBSSceneSettingsCore *)self setValue:v5 forProperty:a2];
  }

  else
  {

    [FBSSceneSettingsCore setValue:"setValue:forProperty:" forProperty:?];
  }
}

- (void)setForeground:(BOOL)foreground
{
  if (foreground)
  {
    v3 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v3 = 0;
  }

  [(FBSSceneSettingsCore *)self setValue:v3 forProperty:a2];
}

- (void)setInterruptionPolicy:(int64_t)policy
{
  if (policy)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [(FBSSceneSettingsCore *)self setValue:v5 forProperty:a2];
  }

  else
  {

    [FBSSceneSettingsCore setValue:"setValue:forProperty:" forProperty:?];
  }
}

- (void)setOccluded:(BOOL)occluded
{
  if (occluded)
  {
    v3 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v3 = 0;
  }

  [(FBSSceneSettingsCore *)self setValue:v3 forProperty:a2];
}

- (void)setClientFuture:(BOOL)future
{
  if (future)
  {
    v3 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v3 = 0;
  }

  [(FBSSceneSettingsCore *)self setValue:v3 forProperty:a2];
}

- (void)setJetsamPriority:(unsigned __int16)priority
{
  if (priority)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:?];
    [(FBSSceneSettingsCore *)self setValue:v5 forProperty:a2];
  }

  else
  {

    [(FBSSceneSettingsCore *)self setValue:0 forProperty:a2];
  }
}

- (void)setPrefersProcessTaskSuspensionWhileSceneForeground:(BOOL)foreground
{
  if (foreground)
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