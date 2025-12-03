@interface FBSSettingsDiff
+ (Class)_settingsClass;
+ (id)diffByApplyingDiff:(id)diff toDiff:(id)toDiff;
+ (id)diffFromSettings:(id)settings toSettings:(id)toSettings;
- (BOOL)containsLegacySetting:(unint64_t)setting;
- (BOOL)containsProperty:(SEL)property;
- (BOOL)containsPropertyFromExtension:(Class)extension;
- (FBSSettingsDiff)initWithChangesFromSettings:(id)settings toSettings:(id)toSettings;
- (FBSSettingsDiff)initWithXPCDictionary:(id)dictionary;
- (id)_allLegacySettings;
- (id)_allModernSettings;
- (id)_changedSettings;
- (id)_initWithSettingsDiff:(void *)diff localDiff:(void *)localDiff legacyDiff:(void *)legacyDiff legacyLocalDiff:(void *)legacyLocalDiff settingsClass:;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)settingsByApplyingToMutableCopyOfSettings:(id)settings;
- (id)succinctDescription;
- (uint64_t)_containsAnySettingNamed:(id *)named;
- (uint64_t)_containsKey:(uint64_t)key;
- (unint64_t)_containsSetting:(unint64_t)setting;
- (void)_inspectDiff:(void *)diff withBlock:;
- (void)applyToMutableSettings:(id)settings;
- (void)encodeWithXPCDictionary:(id)dictionary;
- (void)inspectChangesWithBlock:(id)block;
- (void)inspectOtherChangesWithBlock:(id)block;
@end

@implementation FBSSettingsDiff

- (id)_allLegacySettings
{
  if (self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!*(selfCopy + 7))
    {
      v2 = [MEMORY[0x1E695DFA8] set];
      _settingsClass = *(selfCopy + 5);
      if (!_settingsClass)
      {
        _settingsClass = [objc_opt_class() _settingsClass];
      }

      v9 = MEMORY[0x1E69E9820];
      v10 = 3221225472;
      v11 = __37__FBSSettingsDiff__allLegacySettings__block_invoke;
      v12 = &unk_1E76BE1C8;
      v14 = _settingsClass;
      v4 = v2;
      v13 = v4;
      v5 = MEMORY[0x1A58E80F0](&v9);
      [selfCopy inspectOtherChangesWithBlock:{v5, v9, v10, v11, v12}];
      v6 = [v4 copy];
      v7 = *(selfCopy + 7);
      *(selfCopy + 7) = v6;
    }

    objc_sync_exit(selfCopy);

    self = *(selfCopy + 7);
  }

  return self;
}

- (id)_allModernSettings
{
  if (self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!*(selfCopy + 6))
    {
      v2 = [MEMORY[0x1E695DFA8] set];
      _settingsClass = *(selfCopy + 5);
      if (!_settingsClass)
      {
        _settingsClass = [objc_opt_class() _settingsClass];
      }

      v9 = MEMORY[0x1E69E9820];
      v10 = 3221225472;
      v11 = __37__FBSSettingsDiff__allModernSettings__block_invoke;
      v12 = &unk_1E76BE1A0;
      v14 = _settingsClass;
      v4 = v2;
      v13 = v4;
      v5 = MEMORY[0x1A58E80F0](&v9);
      [selfCopy inspectChangesWithBlock:{v5, v9, v10, v11, v12}];
      v6 = [v4 copy];
      v7 = *(selfCopy + 6);
      *(selfCopy + 6) = v6;
    }

    objc_sync_exit(selfCopy);

    self = *(selfCopy + 6);
  }

  return self;
}

uint64_t __37__FBSSettingsDiff__allModernSettings__block_invoke(uint64_t a1, NSString *aSelectorName)
{
  v3 = *(a1 + 40);
  v4 = NSSelectorFromString(aSelectorName);
  v5 = FBSSettingForExtensionSelector(v3, v4);
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
  }

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __37__FBSSettingsDiff__allLegacySettings__block_invoke(uint64_t a1, const void *a2)
{
  v3 = FBSSettingForLegacySetting(*(a1 + 40), a2);
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  return MEMORY[0x1EEE66BB8]();
}

- (id)_changedSettings
{
  v3 = [MEMORY[0x1E695DFA8] set];
  _allModernSettings = [(FBSSettingsDiff *)self _allModernSettings];
  [v3 unionSet:_allModernSettings];

  _allLegacySettings = [(FBSSettingsDiff *)self _allLegacySettings];
  [v3 unionSet:_allLegacySettings];

  return v3;
}

+ (id)diffFromSettings:(id)settings toSettings:(id)toSettings
{
  settingsCopy = settings;
  toSettingsCopy = toSettings;
  if (objc_opt_class() == self)
  {
    _diffClass = [objc_opt_class() _diffClass];
    if (!_diffClass)
    {
      _diffClass = [objc_opt_class() _diffClass];
    }

    v8 = [_diffClass diffFromSettings:settingsCopy toSettings:toSettingsCopy];
  }

  else
  {
    v8 = [[self alloc] initWithChangesFromSettings:settingsCopy toSettings:toSettingsCopy];
  }

  v10 = v8;

  return v10;
}

+ (id)diffByApplyingDiff:(id)diff toDiff:(id)toDiff
{
  diffCopy = diff;
  toDiffCopy = toDiff;
  v8 = toDiffCopy;
  if (!diffCopy || diffCopy == toDiffCopy)
  {
    v12 = toDiffCopy;
  }

  else
  {
    if (toDiffCopy)
    {
      v9 = objc_opt_class();
      if (v9 == objc_opt_class())
      {
        v10 = v8[1];
        v11 = diffCopy[1];
        if (v10)
        {
          [v10 copyApplyingDiff:v11];
        }

        else
        {
          v14 = v11;
        }

        v15 = v8[2];
        v16 = diffCopy[2];
        if (v15)
        {
          [v15 copyApplyingDiff:v16];
        }

        else
        {
          v17 = v16;
        }

        v18 = v8[3];
        v19 = diffCopy[3];
        if (v18)
        {
          [v18 copyApplyingDiff:v19];
        }

        else
        {
          v20 = v19;
        }

        v21 = v8[4];
        v22 = diffCopy[4];
        if (v21)
        {
          [v21 copyApplyingDiff:v22];
        }

        else
        {
          v23 = v22;
        }

        BSSettingsDiffIsEmpty();
      }

      [FBSSettingsDiff diffByApplyingDiff:a2 toDiff:?];
    }

    v12 = diffCopy;
  }

  v13 = v12;

  return v13;
}

- (FBSSettingsDiff)initWithChangesFromSettings:(id)settings toSettings:(id)toSettings
{
  settingsCopy = settings;
  toSettingsCopy = toSettings;
  if (settingsCopy != toSettingsCopy)
  {
    v8 = [FBSSettings _settings:settingsCopy];
    v9 = [FBSSettings _settings:toSettingsCopy];
    [off_1E76BCA70 diffFromSettings:v8 toSettings:v9];
    objc_claimAutoreleasedReturnValue();

    v10 = [FBSSettings _legacyOtherSettings:settingsCopy];
    v11 = [FBSSettings _legacyOtherSettings:toSettingsCopy];
    [off_1E76BCA70 diffFromSettings:v10 toSettings:v11];
    objc_claimAutoreleasedReturnValue();

    v12 = [FBSSettings _localSettings:settingsCopy];
    v13 = [FBSSettings _localSettings:toSettingsCopy];
    [off_1E76BCA70 diffFromSettings:v12 toSettings:v13];
    objc_claimAutoreleasedReturnValue();

    v14 = [FBSSettings _legacyLocalSettings:settingsCopy];
    v15 = [FBSSettings _legacyLocalSettings:toSettingsCopy];
    [off_1E76BCA70 diffFromSettings:v14 toSettings:v15];
    objc_claimAutoreleasedReturnValue();

    BSSettingsDiffIsEmpty();
  }

  return 0;
}

- (BOOL)containsProperty:(SEL)property
{
  settingsClass = self->_settingsClass;
  if (!settingsClass)
  {
    settingsClass = [objc_opt_class() _settingsClass];
  }

  v6 = FBSSettingForSelector(settingsClass, property);
  if (!v6 || ([(FBSSettingsDiff *)self _containsSetting:v6]& 1) == 0)
  {
    if (-[objc_class _baseClass](settingsClass, "_baseClass") == settingsClass || (-[FBSSetting isLegacy](v6) & 1) != 0 || !FBSSubclassHasBeenIngested(settingsClass) && ((v8 = -[objc_class instanceMethodForSelector:](settingsClass, "instanceMethodForSelector:", property), v8 == MEMORY[0x1E69E58E8]) || v8 == [-[objc_class _baseClass](settingsClass "_baseClass")]) || (FBSSettingForLegacySelector(settingsClass, property), (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if (v6)
      {
        v7 = 0;
        goto LABEL_17;
      }

      v10 = NSStringFromSelector(property);
      v11 = [(FBSSettingsDiff *)&self->super.isa _containsAnySettingNamed:v10];
    }

    else
    {
      v10 = v9;
      v11 = [(FBSSettingsDiff *)self _containsSetting:v9];
    }

    v7 = v11;

    goto LABEL_17;
  }

  v7 = 1;
LABEL_17:

  return v7;
}

- (unint64_t)_containsSetting:(unint64_t)setting
{
  v3 = a2;
  v4 = v3;
  if (setting)
  {
    if (!v3)
    {
      [FBSSettingsDiff _containsSetting:?];
    }

    [(FBSSettingsDiff *)v3 _containsSetting:setting, &v6];
    setting = v6;
  }

  return setting;
}

- (uint64_t)_containsAnySettingNamed:(id *)named
{
  v3 = a2;
  v4 = v3;
  if (named)
  {
    if (!v3)
    {
      [FBSSettingsDiff _containsAnySettingNamed:?];
    }

    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = [(FBSSettingsDiff *)named _containsKey:v3];
    if (v13[3])
    {
      LOBYTE(named) = 1;
    }

    else
    {
      _legacyDescriptionProvider = [named[5] _legacyDescriptionProvider];
      v6 = _legacyDescriptionProvider;
      if (_legacyDescriptionProvider)
      {
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __44__FBSSettingsDiff__containsAnySettingNamed___block_invoke;
        v8[3] = &unk_1E76BE150;
        v11 = &v12;
        v9 = _legacyDescriptionProvider;
        v10 = v4;
        [named inspectOtherChangesWithBlock:v8];
      }

      LOBYTE(named) = *(v13 + 24);
    }

    _Block_object_dispose(&v12, 8);
  }

  return named & 1;
}

- (uint64_t)_containsKey:(uint64_t)key
{
  v3 = a2;
  v4 = v3;
  if (key)
  {
    if (!v3)
    {
      [FBSSettingsDiff _containsKey:?];
    }

    if ([*(key + 8) settingChangedForKey:v3])
    {
      key = 1;
    }

    else
    {
      key = [*(key + 24) settingChangedForKey:v4];
    }
  }

  return key;
}

- (BOOL)containsPropertyFromExtension:(Class)extension
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(objc_class *)extension isSubclassOfClass:objc_opt_class()])
  {
    settingsClass = self->_settingsClass;
    if (!settingsClass)
    {
      settingsClass = [objc_opt_class() _settingsClass];
    }

    if ([(objc_class *)settingsClass isSubclassOfClass:objc_opt_class()])
    {
      [(objc_class *)extension settingsExtensions];
    }

    else
    {
      [(objc_class *)extension clientSettingsExtensions];
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v6 = v16 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = NSStringFromClass(*(*(&v15 + 1) + 8 * i));
          v13 = [(FBSSettingsDiff *)self _containsKey:v12];

          if (v13)
          {
            v7 = 1;
            goto LABEL_18;
          }
        }

        v9 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v7 = 0;
LABEL_18:
  }

  else
  {
    v6 = NSStringFromClass(extension);
    v7 = [(FBSSettingsDiff *)self _containsKey:v6];
  }

  return v7;
}

- (BOOL)containsLegacySetting:(unint64_t)setting
{
  settingsClass = self->_settingsClass;
  if (!settingsClass)
  {
    settingsClass = [objc_opt_class() _settingsClass];
  }

  v6 = FBSSettingForLegacySetting(settingsClass, setting);
  if (v6)
  {
    v7 = [(FBSSettingsDiff *)self _containsSetting:v6];
  }

  else
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __41__FBSSettingsDiff_containsLegacySetting___block_invoke;
    v10[3] = &unk_1E76BE128;
    v10[4] = &v11;
    v10[5] = setting;
    v8 = MEMORY[0x1A58E80F0](v10);
    [(BSSettingsDiff *)self->_legacyDiff inspectChangesWithBlock:v8];
    [(BSSettingsDiff *)self->_legacyLocalDiff inspectChangesWithBlock:v8];
    v7 = *(v12 + 24);

    _Block_object_dispose(&v11, 8);
  }

  return v7 & 1;
}

uint64_t __41__FBSSettingsDiff_containsLegacySetting___block_invoke(uint64_t result, uint64_t a2)
{
  if (*(result + 40) == a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

+ (Class)_settingsClass
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"requires concrete implementation"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    selfCopy = self;
    v14 = 2114;
    v15 = @"FBSSettingsDiff.m";
    v16 = 1024;
    v17 = 189;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

void __44__FBSSettingsDiff__containsAnySettingNamed___block_invoke(uint64_t a1, uint64_t a2)
{
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v3 = [*(a1 + 32) keyDescriptionForSetting:a2];
    v4 = [v3 isEqualToString:*(a1 + 40)];

    if (v4)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }
}

- (void)_inspectDiff:(void *)diff withBlock:
{
  v5 = a2;
  diffCopy = diff;
  v7 = diffCopy;
  if (self)
  {
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v12 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __42__FBSSettingsDiff__inspectDiff_withBlock___block_invoke;
    v8[3] = &unk_1E76BE178;
    v10 = v11;
    v8[4] = self;
    v9 = diffCopy;
    [v5 inspectKeyedChangesWithBlock:v8];

    _Block_object_dispose(v11, 8);
  }
}

void __42__FBSSettingsDiff__inspectDiff_withBlock___block_invoke(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    (*(a1[5] + 16))();
    [(FBSSettingsDiff *)a1[4] _inspectDiff:v5 withBlock:a1[5]];
  }
}

- (void)inspectChangesWithBlock:(id)block
{
  if (block)
  {
    diff = self->_diff;
    blockCopy = block;
    [(FBSSettingsDiff *)self _inspectDiff:blockCopy withBlock:?];
    [(FBSSettingsDiff *)self _inspectDiff:blockCopy withBlock:?];
  }
}

- (void)inspectOtherChangesWithBlock:(id)block
{
  if (block)
  {
    legacyDiff = self->_legacyDiff;
    blockCopy = block;
    [(BSSettingsDiff *)legacyDiff inspectChangesWithBlock:blockCopy];
    [(BSSettingsDiff *)self->_legacyLocalDiff inspectChangesWithBlock:blockCopy];
  }
}

- (id)settingsByApplyingToMutableCopyOfSettings:(id)settings
{
  settingsCopy = settings;
  if (!settingsCopy)
  {
    _settingsClass = [objc_opt_class() _settingsClass];
    settingsClass = self->_settingsClass;
    if (settingsClass && [(objc_class *)settingsClass isSubclassOfClass:_settingsClass])
    {
      v7 = [objc_alloc(self->_settingsClass) initWithSettings:0];
    }

    else
    {
      v7 = objc_alloc_init(_settingsClass);
    }

    settingsCopy = v7;
  }

  v8 = [settingsCopy mutableCopy];
  [(FBSSettingsDiff *)self applyToMutableSettings:v8];

  return v8;
}

- (void)applyToMutableSettings:(id)settings
{
  settingsCopy = settings;
  _settingsClass = [objc_opt_class() _settingsClass];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"input %@ is not of expected class %@", objc_opt_class(), _settingsClass];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [FBSSettingsDiff applyToMutableSettings:a2];
    }

    [v14 UTF8String];
    _bs_set_crash_log_message();
  }

  if (([(FBSSettings *)settingsCopy _isMutable]& 1) == 0)
  {
    [FBSSettingsDiff applyToMutableSettings:a2];
  }

  diff = self->_diff;
  _settings = [(FBSSettings *)settingsCopy _settings];
  [(BSSettingsDiff *)diff applyToSettings:_settings];

  legacyDiff = self->_legacyDiff;
  otherSettings = [settingsCopy otherSettings];
  [(BSSettingsDiff *)legacyDiff applyToSettings:otherSettings];

  localDiff = self->_localDiff;
  _localSettings = [(FBSSettings *)settingsCopy _localSettings];
  [(BSSettingsDiff *)localDiff applyToSettings:_localSettings];

  legacyLocalDiff = self->_legacyLocalDiff;
  _legacyLocalSettings = [(FBSSettings *)settingsCopy _legacyLocalSettings];
  [(BSSettingsDiff *)legacyLocalDiff applyToSettings:_legacyLocalSettings];
}

- (FBSSettingsDiff)initWithXPCDictionary:(id)dictionary
{
  v3 = [off_1E76BCA80 coderWithMessage:dictionary];
  [v3 decodeObjectOfClass:objc_opt_class() forKey:@"mainDiff"];
  objc_claimAutoreleasedReturnValue();
  [v3 decodeObjectOfClass:objc_opt_class() forKey:@"otherDiff"];
  objc_claimAutoreleasedReturnValue();
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"settingsClass"];
  NSClassFromString(v4);
  BSSettingsDiffIsEmpty();
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  v5 = [off_1E76BCA80 coderWithMessage:dictionary];
  [v5 encodeObject:self->_diff forKey:@"mainDiff"];
  [v5 encodeObject:self->_legacyDiff forKey:@"otherDiff"];
  v4 = NSStringFromClass(self->_settingsClass);
  [v5 encodeObject:v4 forKey:@"settingsClass"];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(FBSSettingsDiff *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(FBSSettingsDiff *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(FBSSettingsDiff *)self succinctDescriptionBuilder];
  v6 = NSStringFromClass(self->_settingsClass);
  v7 = [succinctDescriptionBuilder appendObject:v6 withName:0 skipIfNil:1];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__FBSSettingsDiff_descriptionBuilderWithMultilinePrefix___block_invoke;
  v12[3] = &unk_1E76BCD60;
  v12[4] = self;
  v8 = succinctDescriptionBuilder;
  v13 = v8;
  [v8 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v12];

  v9 = v13;
  v10 = v8;

  return v8;
}

uint64_t __57__FBSSettingsDiff_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8))
  {
    v3 = [*(v2 + 8) isEmpty];
    v2 = *(a1 + 32);
    if ((v3 & 1) == 0)
    {
      v4 = *(v2 + 8);
      v5 = [objc_msgSend(objc_opt_class() "_settingsClass")];
      [v4 setDescriptionProvider:v5];

      v6 = [*(a1 + 40) appendObject:*(*(a1 + 32) + 8) withName:@"settings"];
      v2 = *(a1 + 32);
    }
  }

  if (*(v2 + 16))
  {
    v7 = [*(v2 + 16) isEmpty];
    v2 = *(a1 + 32);
    if ((v7 & 1) == 0)
    {
      v8 = *(v2 + 16);
      v9 = [*(v2 + 40) _legacyDescriptionProvider];
      [v8 setDescriptionProvider:v9];

      v10 = [*(a1 + 40) appendObject:*(*(a1 + 32) + 16) withName:@"subclassSettings"];
      v2 = *(a1 + 32);
    }
  }

  if (*(v2 + 24))
  {
    v11 = [*(v2 + 24) isEmpty];
    v2 = *(a1 + 32);
    if ((v11 & 1) == 0)
    {
      v12 = *(v2 + 24);
      v13 = [objc_msgSend(objc_opt_class() "_settingsClass")];
      [v12 setDescriptionProvider:v13];

      v14 = [*(a1 + 40) appendObject:*(*(a1 + 32) + 24) withName:@"localSettings"];
      v2 = *(a1 + 32);
    }
  }

  result = *(v2 + 32);
  if (result)
  {
    result = [result isEmpty];
    if ((result & 1) == 0)
    {
      v16 = *(a1 + 32);
      v17 = *(v16 + 32);
      v18 = [*(v16 + 40) _legacyDescriptionProvider];
      [v17 setDescriptionProvider:v18];

      return [*(a1 + 40) appendObject:*(*(a1 + 32) + 32) withName:@"subclassLocalSettings"];
    }
  }

  return result;
}

- (id)_initWithSettingsDiff:(void *)diff localDiff:(void *)localDiff legacyDiff:(void *)legacyDiff legacyLocalDiff:(void *)legacyLocalDiff settingsClass:
{
  v12 = a2;
  diffCopy = diff;
  localDiffCopy = localDiff;
  legacyDiffCopy = legacyDiff;
  if (self)
  {
    v18.receiver = self;
    v18.super_class = FBSSettingsDiff;
    v16 = objc_msgSendSuper2(&v18, sel_init);
    self = v16;
    if (v16)
    {
      objc_storeStrong(v16 + 1, a2);
      objc_storeStrong(self + 3, diff);
      objc_storeStrong(self + 2, localDiff);
      objc_storeStrong(self + 4, legacyDiff);
      self[5] = legacyLocalDiff;
    }
  }

  return self;
}

+ (void)diffByApplyingDiff:(char *)a1 toDiff:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"diff class mismatch"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithChangesFromSettings:(const char *)a1 toSettings:.cold.1(const char *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v11 = NSStringFromClass(0);
  v3 = [v2 stringWithFormat:@"no counterpart class set for %@"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v13 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, v11, v12, 2u);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_containsSetting:(char *)a1 .cold.1(char *a1)
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

- (void)_containsSetting:(_BYTE *)a3 .cold.2(uint64_t a1, void *a2, _BYTE *a3)
{
  if (([(FBSSetting *)a1 isLegacy]& 1) != 0)
  {
    [(FBSSettingsDiff *)a2 _allLegacySettings];
  }

  else
  {
    [(FBSSettingsDiff *)a2 _allModernSettings];
  }
  v6 = ;
  *a3 = [v6 containsObject:a1];
}

- (void)_containsAnySettingNamed:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"settingName != ((void *)0)", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_containsKey:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"key != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)applyToMutableSettings:(const char *)a1 .cold.1(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, 2u);
}

- (void)applyToMutableSettings:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"settings must be mutable"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

@end