@interface FBSSettings
+ (Class)_baseClass;
+ (Class)_mutableClass;
+ (Class)immutableSubclass;
+ (Class)mutableSubclass;
+ (Class)subclassExtension;
+ (id)_descriptionProvider;
+ (id)allSettings;
+ (id)allSettingsFromExtension:(Class)a3;
+ (id)allSettingsFromProtocol:(id)a3;
+ (id)settingForProperty:(SEL)a3;
+ (id)settingForSubclassProperty:(SEL)a3;
+ (id)subclassExtensions;
+ (void)_setCounterpartClass:(Class)a3;
+ (void)allSettings;
+ (void)initialize;
- (BOOL)_hasAnySceneExtension;
- (BOOL)_indirect_isEmpty;
- (BOOL)conformsToExtension:(Class)a3;
- (BOOL)containsSetting:(id)a3;
- (BOOL)isEqual:(id)a3;
- (FBSSettings)initWithBSXPCCoder:(id)a3;
- (FBSSettings)initWithSettings:(id)a3;
- (FBSSettings)initWithXPCDictionary:(id)a3;
- (_BYTE)_sceneExtensionsCreatingIfNeeded:(_BYTE *)a1;
- (_BYTE)_underlyingValueForSetting:(_BYTE *)a1;
- (id)_allSceneExtensions;
- (id)_copyClearingProgenitor:(id)a3;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 debug:;
- (id)_legacyLocalSettings;
- (id)_legacyLocalSettings:(id)a1;
- (id)_legacyOtherSettings;
- (id)_legacyOtherSettings:(id)a1;
- (id)_localSettings;
- (id)_localSettings:(id)a1;
- (id)_progenitor;
- (id)_rootSettingsForLocal:(void *)a1 createIfNeeded:(char)a2;
- (id)_sceneExtensionNames;
- (id)_settings;
- (id)_settings:(id)a1;
- (id)_subSettingsForKey:(char)a3 local:(int)a4 createIfNeeded:;
- (id)_valueForSetting:(_BYTE *)a1;
- (id)copy:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescriptionWithMultilinePrefix:(void *)a1;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)mutableCopy:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (id)valueForProperty:(SEL)a3 expectedClass:(Class)a4;
- (id)valueForSetting:(id)a3;
- (uint64_t)_applySettings:(uint64_t)a1;
- (uint64_t)_isMutable;
- (unint64_t)hash;
- (void)_addSceneExtension:(Class)a3;
- (void)_addSceneExtension:(Class)a3 applyingSettings:(id)a4;
- (void)_clearVolatileSettingsFromSettings:(uint64_t)a1;
- (void)_isEmpty;
- (void)_removeAllSceneExtensions;
- (void)_removeSceneExtension:(Class)a3;
- (void)_removeVolatileSettings;
- (void)_setValue:(void *)a3 forSetting:;
- (void)_setValue:(void *)a3 forSetting:(void *)a4 inSettings:;
- (void)encodeWithXPCDictionary:(id)a3;
- (void)setValue:(id)a3 forProperty:(SEL)a4;
@end

@implementation FBSSettings

- (id)_legacyOtherSettings
{
  if (a1)
  {
    a1 = [FBSSettings _legacyOtherSettings:a1];
    v1 = vars8;
  }

  return a1;
}

- (id)_progenitor
{
  WeakRetained = objc_loadWeakRetained(&self->_progenitor);

  return WeakRetained;
}

- (id)_legacyLocalSettings
{
  if (a1)
  {
    a1 = [FBSSettings _legacyLocalSettings:a1];
    v1 = vars8;
  }

  return a1;
}

+ (id)_descriptionProvider
{
  v2 = [a1 _baseClass];

  return [v2 subclassExtension];
}

- (id)_sceneExtensionNames
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA0] orderedSet];
  v4 = [(FBSSettings *)self _sceneExtensionsCreatingIfNeeded:?];
  v5 = [v4 allKeys];
  v6 = [v5 allObjects];
  v7 = [v6 sortedArrayUsingComparator:&__block_literal_global_91];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [v4 objectForKey:{*(*(&v15 + 1) + 8 * i), v15}];
        [v3 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v3;
}

- (id)_allSceneExtensions
{
  v52 = *MEMORY[0x1E69E9840];
  orderedExtensions = self->_orderedExtensions;
  if (orderedExtensions)
  {
    v3 = orderedExtensions;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFA0] orderedSet];
    v34 = self;
    v6 = [(FBSSettings *)self _sceneExtensionNames];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v41 objects:v51 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v42;
      v35 = v6;
      v36 = v5;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v42 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v41 + 1) + 8 * i);
          v12 = NSClassFromString(v11);
          if (v12)
          {
            [v5 addObject:v12];
          }

          else if (MEMORY[0x1A58E7B00]("[FBSSettings _allSceneExtensions]") && [(NSString *)v11 rangeOfString:@"|"]!= 0x7FFFFFFFFFFFFFFFLL)
          {
            v13 = [(NSString *)v11 substringFromIndex:[(NSString *)v11 rangeOfString:@"|"]+ 1];
            if ([v13 length])
            {
              v39 = 0u;
              v40 = 0u;
              v37 = 0u;
              v38 = 0u;
              v14 = [@"/System/Library/Frameworks/" stringByAppendingFormat:@"%@.framework/%@", v13, v13];
              v49[0] = v14;
              v15 = [@"/System/Library/PrivateFrameworks/" stringByAppendingFormat:@"%@.framework/%@", v13, v13];
              v49[1] = v15;
              v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];

              v17 = [v16 countByEnumeratingWithState:&v37 objects:v50 count:16];
              if (v17)
              {
                v18 = v17;
                v19 = *v38;
                while (2)
                {
                  for (j = 0; j != v18; ++j)
                  {
                    if (*v38 != v19)
                    {
                      objc_enumerationMutation(v16);
                    }

                    v21 = dlopen([*(*(&v37 + 1) + 8 * j) fileSystemRepresentation], 257);
                    if (v21)
                    {
                      v23 = v21;

                      v24 = NSClassFromString(v11);
                      if (v24 && (v25 = v24, [(objc_class *)v24 isSubclassOfClass:objc_opt_class()]) && [(objc_class *)v25 softLinkExtensionFrameworkInClient])
                      {
                        v26 = FBLogCommon();
                        v6 = v35;
                        v5 = v36;
                        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138543618;
                          v46 = v11;
                          v47 = 2114;
                          v48 = v13;
                          _os_log_error_impl(&dword_1A2DBB000, v26, OS_LOG_TYPE_ERROR, "Found %{public}@ after loading %{public}@", buf, 0x16u);
                        }

                        v27 = objc_opt_class();
                        v28 = [MEMORY[0x1E696B098] valueWithPointer:v23];
                        objc_setAssociatedObject(v27, v25, v28, 0);

                        FBSRealizeSceneExtension(v25);
                        [v36 addObject:v25];
                      }

                      else
                      {
                        v29 = FBLogCommon();
                        v6 = v35;
                        v5 = v36;
                        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138543618;
                          v46 = v11;
                          v47 = 2114;
                          v48 = v13;
                          _os_log_error_impl(&dword_1A2DBB000, v29, OS_LOG_TYPE_ERROR, "Failed to find scene extension %{public}@ after loading %{public}@)", buf, 0x16u);
                        }

                        dlclose(v23);
                      }

                      goto LABEL_33;
                    }
                  }

                  v18 = [v16 countByEnumeratingWithState:&v37 objects:v50 count:16];
                  if (v18)
                  {
                    continue;
                  }

                  break;
                }
              }

              v22 = FBLogCommon();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                v30 = dlerror();
                *buf = 138543618;
                v46 = v13;
                v47 = 2082;
                v48 = v30;
                _os_log_error_impl(&dword_1A2DBB000, v22, OS_LOG_TYPE_ERROR, "Unable to dlopen(%{public}@): %{public}s", buf, 0x16u);
              }

              v6 = v35;
              v5 = v36;
            }

LABEL_33:
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v41 objects:v51 count:16];
      }

      while (v8);
    }

    v31 = [v5 copy];
    v32 = v34->_orderedExtensions;
    v34->_orderedExtensions = v31;

    v3 = v34->_orderedExtensions;
  }

  return v3;
}

- (BOOL)_hasAnySceneExtension
{
  [(FBSSettings *)self _sceneExtensionsCreatingIfNeeded:?];
  objc_claimAutoreleasedReturnValue();
  BSSettingsIsEmpty();
}

- (void)_removeVolatileSettings
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"this class is not mutable"];
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

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    return;
  }

  v3 = [a1 _baseClass];
  v4 = [a1 _mutableClass];
  if (v3 != a1)
  {
    if (v4 != a1)
    {
      value = [a1 alloc];
      value[64] = [a1 isSubclassOfClass:{objc_msgSend(a1, "_mutableClass")}];
      *(value + 1) = [a1 _baseClass];
      objc_setAssociatedObject(a1, _FBSLegacyDescriptionProviderKey, value, 1);

      return;
    }

    v4 = [a1 _baseClass];
  }

  objc_setAssociatedObject(a1, _FBSCounterpartKey, v4, 0);
  v5 = _FBSCounterpartKey;

  objc_setAssociatedObject(v4, v5, a1, 0);
}

- (id)_settings
{
  if (a1)
  {
    a1 = [FBSSettings _settings:a1];
    v1 = vars8;
  }

  return a1;
}

- (uint64_t)_isMutable
{
  if (a1)
  {
    v1 = *(a1 + 64);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (id)_localSettings
{
  if (a1)
  {
    a1 = [FBSSettings _localSettings:a1];
    v1 = vars8;
  }

  return a1;
}

- (BOOL)_indirect_isEmpty
{
  if (self)
  {
    LOBYTE(self) = OUTLINED_FUNCTION_6_2(self, a2);
  }

  return self;
}

- (void)_isEmpty
{
  if (a1)
  {
    return OUTLINED_FUNCTION_6_2(a1, a2);
  }

  return a1;
}

- (id)valueForProperty:(SEL)a3 expectedClass:(Class)a4
{
  if (!a4)
  {
    [FBSSettings(FBSSceneExtension) valueForProperty:a2 expectedClass:?];
  }

  v6 = FBSSettingForExtensionSelector(self->_baseClass, a3);
  if (v6)
  {
    v7 = [(FBSSettings *)self _valueForSetting:v6];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [(FBSSetting *)v6 defaultValue];
    }

    v11 = v9;
  }

  else
  {
    v10 = FBLogSceneExtension();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [FBSSettings(FBSSceneExtension) valueForProperty:a3 expectedClass:?];
    }

    v11 = 0;
  }

  v12 = v11;
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

- (void)setValue:(id)a3 forProperty:(SEL)a4
{
  v6 = a3;
  v7 = FBSSettingForExtensionSelector(self->_baseClass, a4);
  if (v7)
  {
    [(FBSSettings *)self _setValue:v6 forSetting:v7];
  }

  else
  {
    v8 = FBLogSceneExtension();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [FBSSettings(FBSSceneExtension) valueForProperty:a4 expectedClass:?];
    }
  }
}

- (FBSSettings)initWithSettings:(id)a3
{
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v6 _baseClass];
  if (v6 == v7)
  {
    [FBSSettings initWithSettings:a2];
  }

  v9 = v8;
  if (v5 && v8 != *(v5 + 1))
  {
    v25 = MEMORY[0x1E696AEC0];
    v26 = NSStringFromClass(v6);
    v27 = [v25 stringWithFormat:@"%@ cannot init with %@", v26, v5];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [FBSSettings initWithSettings:a2];
    }

    [v27 UTF8String];
    _bs_set_crash_log_message();
  }

  v28.receiver = self;
  v28.super_class = FBSSettings;
  v10 = [(FBSSettings *)&v28 init];
  v11 = v10;
  if (v10)
  {
    v10->_baseClass = v9;
    [v6 _mutableClass];
    v11->_mutable = objc_opt_isKindOfClass() & 1;
    v12 = [v5 _progenitor];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v5;
    }

    objc_storeWeak(&v11->_progenitor, v14);

    if (v5)
    {
      v15 = v11->_mutable;
      if (v15 && *(v5 + 64) == 1)
      {
        v16 = [*(v5 + 2) mutableCopy];
        settings = v11->_settings;
        v11->_settings = v16;

        v18 = [*(v5 + 3) mutableCopy];
        localSettings = v11->_localSettings;
        v11->_localSettings = v18;

        v20 = [*(v5 + 5) mutableCopy];
        legacyOtherSettings = v11->_legacyOtherSettings;
        v11->_legacyOtherSettings = v20;

        v22 = [*(v5 + 4) mutableCopy];
        legacyLocalSettings = v11->_legacyLocalSettings;
        v11->_legacyLocalSettings = v22;

        BSEqualBools();
      }

      v11->_needsCoW = v15;
      BSSettingsIsEmpty();
    }

    FBSRealizeSubclassExtension(v6);
  }

  return v11;
}

- (id)copy:(id)a3
{
  if (a3)
  {
    v4 = [(FBSSettings *)self mutableCopy:?];
    v5 = [v4 copy];

    return v5;
  }

  else
  {

    return [(FBSSettings *)self copy];
  }
}

- (id)mutableCopy:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self mutableCopy];
  if (v4)
  {
    v4[2](v4, v5);
  }

  return v5;
}

+ (void)_setCounterpartClass:(Class)a3
{
  v40 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [FBSSettings _setCounterpartClass:a2];
  }

  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __36__FBSSettings__setCounterpartClass___block_invoke;
  v23 = &__block_descriptor_48_e5_v8__0l;
  v24 = a2;
  v25 = a1;
  if (_setCounterpartClass__onceToken != -1)
  {
    dispatch_once(&_setCounterpartClass__onceToken, &v20);
  }

  os_unfair_lock_lock(&_setCounterpartClass__lock);
  v5 = objc_getAssociatedObject(a1, _FBSCounterpartKey);

  if (!v5)
  {
    if (([a1 isSubclassOfClass:{objc_opt_class(), v20, v21, v22, v23, v24, v25}] & 1) != 0 || objc_msgSend(a1, "isSubclassOfClass:", objc_opt_class()))
    {
      class_getMethodImplementation(a1, sel_copyWithZone_);
      v6 = dyld_image_header_containing_address();
      v7 = a3;
    }

    else
    {
      class_getMethodImplementation(a3, sel_copyWithZone_);
      v6 = dyld_image_header_containing_address();
      v7 = a1;
    }

    class_getMethodImplementation(v7, sel_mutableCopyWithZone_);
    v8 = dyld_image_header_containing_address();
    v9 = v8;
    if (v8 && v8 != _setCounterpartClass__fbsAddress && v8 == v6)
    {
      v10 = FBLogSceneExtension();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = NSStringFromClass(a1);
        v12 = NSStringFromClass(a3);
        *buf = 138543618;
        v27 = v11;
        v28 = 2114;
        v29 = v12;
        _os_log_impl(&dword_1A2DBB000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ setting counterpart class: %{public}@", buf, 0x16u);
      }

      objc_setAssociatedObject(a1, _FBSCounterpartKey, a3, 0);
      objc_setAssociatedObject(a3, _FBSCounterpartKey, a1, 0);
    }

    else
    {
      v13 = [MEMORY[0x1E696AEC0] bs_stringWithUTF8String:dyld_image_path_containing_address()];
      v14 = [v13 lastPathComponent];

      v15 = [MEMORY[0x1E696AEC0] bs_stringWithUTF8String:dyld_image_path_containing_address()];
      v16 = [v15 lastPathComponent];

      v17 = FBLogSceneExtension();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = NSStringFromClass(a1);
        v19 = NSStringFromClass(a3);
        *buf = 138544898;
        v27 = v18;
        v28 = 2114;
        v29 = v19;
        v30 = 2114;
        v31 = v14;
        v32 = 2048;
        v33 = v9;
        v34 = 2114;
        v35 = v16;
        v36 = 2048;
        v37 = v6;
        v38 = 2048;
        v39 = _setCounterpartClass__fbsAddress;
        _os_log_impl(&dword_1A2DBB000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ ignoring counterpart %{public}@ that is not from the same executable (%{public}@:%p/%{public}@:%p/%p)!", buf, 0x48u);
      }
    }
  }

  os_unfair_lock_unlock(&_setCounterpartClass__lock);
}

uint64_t __36__FBSSettings__setCounterpartClass___block_invoke(uint64_t a1)
{
  v2 = objc_opt_class();
  class_getMethodImplementation(v2, sel_initWithSettings_);
  result = dyld_image_header_containing_address();
  _setCounterpartClass__fbsAddress = result;
  if (!result)
  {
    __36__FBSSettings__setCounterpartClass___block_invoke_cold_1(a1);
  }

  return result;
}

- (_BYTE)_underlyingValueForSetting:(_BYTE *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      [FBSSettings _underlyingValueForSetting:?];
    }

    [(FBSSettings *)a1 _underlyingValueForSetting:v3, &v6];
    a1 = v6;
  }

  return a1;
}

- (void)_setValue:(void *)a3 forSetting:
{
  v6 = a2;
  v5 = a3;
  if (a1)
  {
    if (!v5)
    {
      [FBSSettings _setValue:? forSetting:?];
    }

    if ((a1[64] & 1) == 0)
    {
      [FBSSettings _setValue:? forSetting:?];
    }

    [(FBSSettings *)v5 _setValue:a1 forSetting:v6];
  }
}

- (id)_subSettingsForKey:(char)a3 local:(int)a4 createIfNeeded:
{
  v7 = a2;
  v8 = v7;
  if (a1)
  {
    if (!v7)
    {
      [FBSSettings _subSettingsForKey:? local:? createIfNeeded:?];
    }

    v9 = [FBSSettings _rootSettingsForLocal:a1 createIfNeeded:a3];
    v10 = [v9 objectForKey:v8];
    if (!v10 && a4)
    {
      if ((a1[64] & 1) == 0)
      {
        [FBSSettings _subSettingsForKey:? local:? createIfNeeded:?];
      }

      v10 = objc_opt_new();
      [v9 setObject:v10 forKey:v8];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_addSceneExtension:(Class)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [FBSSettings _addSceneExtension:a2];
  }

  if (!self || !self->_mutable)
  {
    [FBSSettings _addSceneExtension:a2];
  }

  if (([(objc_class *)a3 isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    [(FBSSettings *)a3 _addSceneExtension:a2];
  }

  FBSRealizeSceneExtension(a3);
  v6 = [(FBSSettings *)self _allSceneExtensions];
  v7 = [v6 containsObject:a3];

  if ((v7 & 1) == 0)
  {
    [(FBSSettings *)self _addSceneExtension:a3, v8, v9];
  }
}

- (void)_addSceneExtension:(Class)a3 applyingSettings:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (!v7)
  {
    [FBSSettings _addSceneExtension:a2 applyingSettings:?];
  }

  v8 = v7;
  if (self->_baseClass != *(v7 + 1))
  {
    [FBSSettings _addSceneExtension:a2 applyingSettings:?];
  }

  [(FBSSettings *)self _addSceneExtension:a3];
  memset(v11, 0, sizeof(v11));
  v9 = [objc_opt_class() _settingsExtensionsForSceneExtension:{a3, 0}];
  if ([v9 countByEnumeratingWithState:v11 objects:v12 count:16])
  {
    v10 = NSStringFromClass(**(&v11[0] + 1));
    [(FBSSettings *)v8 _subSettingsForKey:v10 local:0 createIfNeeded:0];
    objc_claimAutoreleasedReturnValue();
    BSSettingsIsEmpty();
  }
}

- (void)_removeSceneExtension:(Class)a3
{
  v37 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [FBSSettings _removeSceneExtension:a2];
  }

  if (!self || !self->_mutable)
  {
    [FBSSettings _removeSceneExtension:a2];
  }

  if (([(objc_class *)a3 isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    [(FBSSettings *)a3 _removeSceneExtension:a2];
  }

  v6 = [(FBSSettings *)self _allSceneExtensions];
  v7 = [v6 containsObject:a3];

  if (v7)
  {
    v8 = [(FBSSettings *)self _sceneExtensionsCreatingIfNeeded:?];
    v9 = [v8 allKeys];
    v10 = [v9 allObjects];
    v11 = [v10 sortedArrayUsingComparator:&__block_literal_global_32];

    v12 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v32;
      do
      {
        v17 = 0;
        do
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [v8 objectForKey:*(*(&v31 + 1) + 8 * v17)];
          v19 = NSClassFromString(v18);

          if (v19)
          {
            v20 = v19 == a3;
          }

          else
          {
            v20 = 1;
          }

          if (!v20)
          {
            [v12 addObject:v19];
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v15);
    }

    [v8 removeAllSettings];
    orderedExtensions = self->_orderedExtensions;
    self->_orderedExtensions = 0;

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v22 = v12;
    v23 = [v22 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v28;
      do
      {
        v26 = 0;
        do
        {
          if (*v28 != v25)
          {
            objc_enumerationMutation(v22);
          }

          [(FBSSettings *)self _addSceneExtension:*(*(&v27 + 1) + 8 * v26++), v27];
        }

        while (v24 != v26);
        v24 = [v22 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v24);
    }
  }
}

- (void)_removeAllSceneExtensions
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"this class is not mutable"];
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

- (uint64_t)_applySettings:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ((*(a1 + 64) & 1) == 0)
    {
      [FBSSettings _applySettings:?];
    }

    if (*(a1 + 8) != v3[1])
    {
      [FBSSettings _applySettings:?];
    }

    v6 = v3;
    [FBSSettings _applySettings:];
    v4 = v6;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (BOOL)conformsToExtension:(Class)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = [(FBSSettings *)self _allSceneExtensions];
  v6 = [v5 containsObject:a3];

  if (v6)
  {
    return 1;
  }

  if ([(objc_class *)a3 isSubclassOfClass:objc_opt_class()])
  {
    v8 = [objc_opt_class() _settingsExtensionsForSceneExtension:a3];
  }

  else
  {
    v20[0] = a3;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if (!FBSSettingsExtensionIsRealized(self->_baseClass, *(*(&v15 + 1) + 8 * i)))
        {
          v7 = 0;
          goto LABEL_16;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_16:

  return v7;
}

+ (id)settingForProperty:(SEL)a3
{
  if (objc_opt_class() == a1)
  {
    [FBSSettings settingForProperty:a2];
  }

  return FBSSettingForSelector(a1, a3);
}

+ (id)settingForSubclassProperty:(SEL)a3
{
  if (objc_opt_class() == a1)
  {
    [FBSSettings settingForSubclassProperty:a2];
  }

  return FBSSettingForLegacySelector(a1, a3);
}

+ (id)allSettings
{
  if (objc_opt_class() == a1)
  {
    +[(FBSSettings *)a2];
  }

  return FBSAllSettings(a1);
}

+ (id)allSettingsFromProtocol:(id)a3
{
  v5 = a3;
  if (objc_opt_class() == a1)
  {
    [FBSSettings allSettingsFromProtocol:a2];
  }

  v6 = FBSAllSettingsFromProtocol(a1, v5);

  return v6;
}

+ (id)allSettingsFromExtension:(Class)a3
{
  if (([(objc_class *)a3 isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    [FBSSettings allSettingsFromExtension:a2];
  }

  v6 = [(objc_class *)a3 protocol];
  v7 = [a1 allSettingsFromProtocol:v6];

  return v7;
}

- (BOOL)containsSetting:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [(FBSSettings *)self _underlyingValueForSetting:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)valueForSetting:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = 0;
    goto LABEL_3;
  }

  v7 = [(FBSSettings *)self _valueForSetting:v4];
  if (v7)
  {
    v8 = [(FBSSetting *)v4 type];
    if (v8 == 64)
    {
      v9 = v7;
      if (!_NSIsNSValue() || *[v9 objCType] != 64 || ((v10 = objc_opt_class(), v11 = v9, !v10) ? (v12 = 0) : (objc_opt_isKindOfClass() & 1) == 0 ? (v12 = 0) : (v12 = v11), v19 = v12, v11, objc_msgSend(v19, "weakObjectValue"), v9 = objc_claimAutoreleasedReturnValue(), v11, v19, v9))
      {
        [(FBSSetting *)v4 expectedClass];
        if ([(FBSSetting *)v4 specialCollection]== 0x7FFFFFFFFFFFFFFFLL)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 || [v9 count])
          {
            BSSettingFlagIsYes();
          }
        }

        BSSettingFlagIsYes();
      }

      v18 = 0;
    }

    else
    {
      if ((v8 & 0xFFFFFFEF) != 0x2A && v8 != 123 && v8 == 35)
      {
        v13 = objc_opt_class();
        v14 = v7;
        if (v13)
        {
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }

        v21 = v15;

        v18 = NSClassFromString(v21);

        if (v18)
        {
          goto LABEL_37;
        }

        goto LABEL_41;
      }

      v16 = objc_opt_class();
      v9 = v7;
      if (v16)
      {
        if (objc_opt_isKindOfClass())
        {
          v17 = v9;
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;
    }

    if (v18)
    {
LABEL_37:
      v20 = v18;
LABEL_42:
      v5 = v20;

      goto LABEL_43;
    }

LABEL_41:
    v20 = [(FBSSetting *)v4 defaultValue];
    goto LABEL_42;
  }

  v5 = [(FBSSetting *)v4 defaultValue];
LABEL_43:

LABEL_3:

  return v5;
}

- (unint64_t)hash
{
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a1 ^ (a1 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a1 ^ (a1 >> 30))) >> 27));
  result = [*(a2 + 16) hash];
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (result ^ (result >> 30))) ^ ((0xBF58476D1CE4E5B9 * (result ^ (result >> 30))) >> 27));
  *a3 = v4 ^ ((v6 ^ v4) >> 31) ^ v6;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  p_isa = &v4->super.isa;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_baseClass == p_isa[1] && [(FBSSettings *)self _isEqualToSettings:p_isa];
  }

  return v6;
}

- (id)succinctDescription
{
  v2 = [(FBSSettings *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(FBSSettings *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  if (self && self->_mutable)
  {
    v4 = [(objc_class *)self->_baseClass allocWithZone:a3];

    return [(objc_class *)v4 initWithSettings:self];
  }

  else
  {

    return self;
  }
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  if (self && self->_mutable)
  {
    v4 = [objc_opt_class() allocWithZone:a3];

    return [v4 initWithSettings:self];
  }

  else
  {
    [(FBSSettings *)self mutableCopyWithZone:a3, &v6];
    return v6;
  }
}

- (FBSSettings)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_settings"];
    settings = v5->_settings;
    v5->_settings = v6;

    v8 = v5->_settings;
    v9 = [objc_opt_class() _descriptionProvider];
    [(BSKeyedSettings *)v8 setDescriptionProvider:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_legacyOtherSettings"];
    legacyOtherSettings = v5->_legacyOtherSettings;
    v5->_legacyOtherSettings = v10;

    v12 = v5->_legacyOtherSettings;
    v13 = [objc_opt_class() _legacyDescriptionProvider];
    [(BSSettings *)v12 setDescriptionProvider:v13];
  }

  return v5;
}

- (FBSSettings)initWithXPCDictionary:(id)a3
{
  v4 = [off_1E76BCA80 coderWithMessage:a3];
  v5 = [(FBSSettings *)self initWithBSXPCCoder:v4];

  return v5;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  v4 = [off_1E76BCA80 coderWithMessage:a3];
  [(FBSSettings *)self encodeWithBSXPCCoder:v4];
}

- (id)_copyClearingProgenitor:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self)
  {
    v6 = self->_mutable;
    if (v4)
    {
LABEL_8:
      v8 = [(FBSSettings *)self copy:v4];
      goto LABEL_9;
    }
  }

  else
  {
    v6 = 0;
    if (v4)
    {
      goto LABEL_8;
    }
  }

  if (v6)
  {
    goto LABEL_8;
  }

  WeakRetained = objc_loadWeakRetained(&self->_progenitor);

  if (WeakRetained)
  {
    v8 = [objc_alloc(objc_opt_class()) initWithSettings:self];
  }

  else
  {
    v8 = self;
  }

LABEL_9:
  v9 = v8;
  objc_storeWeak(&v8->_progenitor, 0);

  return v9;
}

+ (Class)_baseClass
{
  OUTLINED_FUNCTION_8_1();
  v2 = objc_opt_class();
  OUTLINED_FUNCTION_4_5(v2);
  return 0;
}

+ (Class)_mutableClass
{
  OUTLINED_FUNCTION_8_1();
  v2 = objc_opt_class();
  OUTLINED_FUNCTION_4_5(v2);
  return 0;
}

- (id)_rootSettingsForLocal:(void *)a1 createIfNeeded:(char)a2
{
  if (a1)
  {
    if (a2)
    {
      [FBSSettings _localSettings:a1];
    }

    else
    {
      [FBSSettings _settings:a1];
    }
    a1 = ;
    v2 = vars8;
  }

  return a1;
}

- (id)_localSettings:(id)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_5_7();
    v4 = !v4 || v3 == 0;
    if (v4)
    {
      goto LABEL_13;
    }

    if (*(v1 + 24))
    {
      OUTLINED_FUNCTION_11_3();
      if (!v4)
      {
        goto LABEL_13;
      }

      v5 = objc_opt_class();
      if (v5 != objc_opt_class())
      {
        goto LABEL_13;
      }

      v6 = [*(v1 + 24) mutableCopy];
      v7 = *(v1 + 24);
      *(v1 + 24) = v6;
    }

    else
    {
      v8 = objc_opt_new();
      v9 = *(v1 + 24);
      *(v1 + 24) = v8;

      v10 = *(v1 + 24);
      v7 = [objc_opt_class() _descriptionProvider];
      [v10 setDescriptionProvider:v7];
    }

LABEL_13:
    a1 = *(v1 + 24);
    v2 = vars8;
  }

  return a1;
}

- (id)_settings:(id)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_5_7();
    v4 = !v4 || v3 == 0;
    if (v4)
    {
      goto LABEL_13;
    }

    if (*(v1 + 16))
    {
      OUTLINED_FUNCTION_11_3();
      if (!v4)
      {
        goto LABEL_13;
      }

      v5 = objc_opt_class();
      if (v5 != objc_opt_class())
      {
        goto LABEL_13;
      }

      v6 = [*(v1 + 16) mutableCopy];
      v7 = *(v1 + 16);
      *(v1 + 16) = v6;
    }

    else
    {
      v8 = objc_opt_new();
      v9 = *(v1 + 16);
      *(v1 + 16) = v8;

      v10 = *(v1 + 16);
      v7 = [objc_opt_class() _descriptionProvider];
      [v10 setDescriptionProvider:v7];
    }

LABEL_13:
    a1 = *(v1 + 16);
    v2 = vars8;
  }

  return a1;
}

- (id)_valueForSetting:(_BYTE *)a1
{
  if (a1)
  {
    v2 = [(FBSSettings *)a1 _underlyingValueForSetting:a2];
    if (![@"<explicitly nil>" isEqual:v2])
    {
      goto LABEL_5;
    }
  }

  v2 = 0;
LABEL_5:

  return v2;
}

- (void)_setValue:(void *)a3 forSetting:(void *)a4 inSettings:
{
  v17 = a2;
  v7 = a4;
  if (a1)
  {
    v8 = a3;
    [v7 setDescriptionProvider:-[FBSSetting extension](v8)];
    v9 = [(FBSSetting *)v8 name];
    v10 = [(FBSSetting *)v8 defaultValue];
    v11 = [(FBSSetting *)v8 isNullPreserving];

    if (v17 && (v12 = [(__CFString *)v17 isEqual:v10], v13 = v17, !v12))
    {
      if (*MEMORY[0x1E695E4D0] == v17 || *MEMORY[0x1E695E4C0] == v17)
      {
        if (v11)
        {
          BSSettingFlagForBool();
        }

        if (*MEMORY[0x1E695E4D0] == v17)
        {
          v16 = 1;
        }

        else
        {
          v16 = 0x7FFFFFFFFFFFFFFFLL;
        }

        [v7 setFlag:v16 forKey:v9];
        [v7 setObject:0 forKey:v9];
        goto LABEL_18;
      }
    }

    else
    {
      if ((v11 & 1) == 0)
      {
        v14 = v7;
        v13 = 0;
LABEL_17:
        [v14 setObject:v13 forKey:v9];
        [v7 setFlag:0x7FFFFFFFFFFFFFFFLL forKey:v9];
LABEL_18:

        goto LABEL_19;
      }

      if (v10)
      {
        v13 = v10;
      }

      else
      {
        v13 = @"<explicitly nil>";
      }
    }

    v14 = v7;
    goto LABEL_17;
  }

LABEL_19:
}

- (_BYTE)_sceneExtensionsCreatingIfNeeded:(_BYTE *)a1
{
  if (a1)
  {
    a1 = [(FBSSettings *)a1 _subSettingsForKey:0 local:a2 createIfNeeded:?];
    v2 = vars8;
  }

  return a1;
}

- (void)_clearVolatileSettingsFromSettings:(uint64_t)a1
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [v3 allKeys];
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (!v6)
    {
      goto LABEL_27;
    }

    v7 = v6;
    v8 = *v17;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v4 objectForKey:v10];
        if (v11)
        {
          v12 = NSSelectorFromString(v10);
          if (v12)
          {
            v13 = FBSSettingForExtensionSelector(*(a1 + 8), v12);
            if (([(FBSSetting *)v13 isVolatile]& 1) == 0)
            {
              if (!v13)
              {
LABEL_14:
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [(FBSSettings *)a1 _clearVolatileSettingsFromSettings:v11];
                }

                v13 = 0;
              }

LABEL_17:

              goto LABEL_18;
            }
          }

          else
          {
            v13 = 0;
            if (![(FBSSetting *)0 isVolatile])
            {
              goto LABEL_14;
            }
          }

          [(FBSSettings *)a1 _setValue:v13 forSetting:?];
          goto LABEL_17;
        }

LABEL_18:
        if ([v4 flagForKey:v10] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = NSSelectorFromString(v10);
          if (v14)
          {
            v15 = FBSSettingForExtensionSelector(*(a1 + 8), v14);
          }

          else
          {
            v15 = 0;
          }

          if ([(FBSSetting *)v15 isVolatile])
          {
            [(FBSSettings *)a1 _setValue:v15 forSetting:?];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (!v7)
      {
LABEL_27:

        break;
      }
    }
  }
}

- (id)_legacyOtherSettings:(id)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_5_7();
    v4 = !v4 || v3 == 0;
    if (v4)
    {
      goto LABEL_13;
    }

    if (*(v1 + 40))
    {
      OUTLINED_FUNCTION_11_3();
      if (!v4)
      {
        goto LABEL_13;
      }

      v5 = objc_opt_class();
      if (v5 != objc_opt_class())
      {
        goto LABEL_13;
      }

      v6 = [*(v1 + 40) mutableCopy];
    }

    else
    {
      v6 = objc_opt_new();
    }

    v7 = *(v1 + 40);
    *(v1 + 40) = v6;

    v8 = *(v1 + 40);
    v9 = [objc_opt_class() _legacyDescriptionProvider];
    [v8 setDescriptionProvider:v9];

LABEL_13:
    a1 = *(v1 + 40);
    v2 = vars8;
  }

  return a1;
}

- (id)_legacyLocalSettings:(id)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_5_7();
    v4 = !v4 || v3 == 0;
    if (v4)
    {
      goto LABEL_13;
    }

    if (*(v1 + 32))
    {
      OUTLINED_FUNCTION_11_3();
      if (!v4)
      {
        goto LABEL_13;
      }

      v5 = objc_opt_class();
      if (v5 != objc_opt_class())
      {
        goto LABEL_13;
      }

      v6 = [*(v1 + 32) mutableCopy];
    }

    else
    {
      v6 = objc_opt_new();
    }

    v7 = *(v1 + 32);
    *(v1 + 32) = v6;

LABEL_13:
    a1 = *(v1 + 32);
    v2 = vars8;
  }

  return a1;
}

- (id)debugDescriptionWithMultilinePrefix:(void *)a1
{
  if (a1)
  {
    v2 = [(FBSSettings *)a1 _descriptionBuilderWithMultilinePrefix:a2 debug:1];
    v3 = [v2 build];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 debug:
{
  v5 = a2;
  if (a1)
  {
    [a1 succinctDescriptionBuilder];
    [objc_claimAutoreleasedReturnValue() setUseDebugDescription:a3];
    BSSettingsIsEmpty();
  }

  return 0;
}

+ (Class)subclassExtension
{
  OUTLINED_FUNCTION_8_1();
  v2 = objc_opt_class();
  OUTLINED_FUNCTION_4_5(v2);
  return 0;
}

+ (id)subclassExtensions
{
  OUTLINED_FUNCTION_8_1();
  v2 = objc_opt_class();
  OUTLINED_FUNCTION_4_5(v2);
  return MEMORY[0x1E695E0F0];
}

+ (Class)mutableSubclass
{
  OUTLINED_FUNCTION_8_1();
  v2 = objc_opt_class();
  OUTLINED_FUNCTION_4_5(v2);
  return 0;
}

+ (Class)immutableSubclass
{
  OUTLINED_FUNCTION_8_1();
  v2 = objc_opt_class();
  OUTLINED_FUNCTION_4_5(v2);
  return 0;
}

- (void)initWithSettings:(const char *)a1 .cold.1(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  v2 = objc_opt_class();
  v8 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v3, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v4, v5, v6, v7, 2u);
}

- (void)initWithSettings:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"abstract superclass should not be instantiated"];
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

+ (void)_setCounterpartClass:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"counterpart", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

void __36__FBSSettings__setCounterpartClass___block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"count not find executable name for FrontBoardServices"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(*(a1 + 32));
    v4 = objc_opt_class();
    v10 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_underlyingValueForSetting:(uint64_t *)a3 .cold.1(_BYTE *a1, uint64_t a2, uint64_t *a3)
{
  if (a1[64] == 1)
  {
    [(FBSSetting *)a2 isBSSettings];
  }

  v12 = [(FBSSetting *)a2 extensionID];
  v6 = [(FBSSetting *)a2 isLocal];
  v7 = [FBSSettings _rootSettingsForLocal:a1 createIfNeeded:v6];
  v8 = v7;
  if (v12)
  {
    v9 = [v7 objectForKey:?];

    v8 = v9;
  }

  if (v8)
  {
    v10 = [(FBSSetting *)a2 setting];
    v11 = [v8 objectForSetting:v10];
    if (v11)
    {
      goto LABEL_9;
    }

    if ([v8 flagForSetting:v10] != 0x7FFFFFFFFFFFFFFFLL)
    {
      BSSettingFlagIsYes();
    }
  }

  v11 = 0;
LABEL_9:
  *a3 = v11;
}

- (void)_underlyingValueForSetting:(char *)a1 .cold.2(char *a1)
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

- (void)_setValue:(char *)a1 forSetting:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"this class is not mutable"];
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

- (void)_setValue:(void *)a3 forSetting:.cold.2(void *a1, _BYTE *a2, void *a3)
{
  v6 = [(FBSSetting *)a1 isLocal];
  v10 = [(FBSSetting *)a1 extensionID];
  v7 = [FBSSettings _rootSettingsForLocal:a2 createIfNeeded:v6];
  v8 = v7;
  if (v10)
  {
    v9 = [(FBSSettings *)a2 _subSettingsForKey:v10 local:v6 createIfNeeded:1];
    [(FBSSettings *)a2 _setValue:a3 forSetting:a1 inSettings:v9];
    BSSettingsIsEmpty();
  }

  [(FBSSettings *)a2 _setValue:a3 forSetting:a1 inSettings:v7];
}

- (void)_setValue:(char *)a1 forSetting:.cold.3(char *a1)
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

- (void)_subSettingsForKey:(char *)a1 local:createIfNeeded:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"this class is not mutable"];
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

- (void)_subSettingsForKey:(char *)a1 local:createIfNeeded:.cold.2(char *a1)
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

- (void)_addSceneExtension:(uint64_t)a1 .cold.1(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is not a FBSSceneExtension"];
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

- (void)_addSceneExtension:(uint64_t)a3 .cold.2(uint64_t a1, objc_class *a2, uint64_t a3, uint64_t a4)
{
  v8 = [(FBSSettings *)a1 _sceneExtensionsCreatingIfNeeded:?];
  v9 = MEMORY[0x1E696AEC0];
  v10 = [v8 allKeys];
  v11 = [v9 stringWithFormat:@"%llu", objc_msgSend(v10, "count") + 1];

  v12 = NSStringFromClass(a2);
  if (MEMORY[0x1A58E7B00]("[FBSSettings _addSceneExtension:]") && [(objc_class *)a2 softLinkExtensionFrameworkInClient])
  {
    v13 = [(objc_class *)a2 _frameworkNameLoadingIfNeeded:1];
    v14 = [v12 stringByAppendingFormat:@"|%@", v13];

    v12 = v14;
  }

  [v8 setObject:v12 forKey:v11];
  v15 = *(a1 + 56);
  v27 = v11;
  if (v15)
  {
    v16 = [v15 mutableCopy];
    [v16 addObject:a2];
    v17 = [v16 copy];
    v18 = *(a1 + 56);
    *(a1 + 56) = v17;
  }

  else
  {
    v19 = [MEMORY[0x1E695DFB8] orderedSetWithObject:a2];
    v16 = *(a1 + 56);
    *(a1 + 56) = v19;
  }

  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v20 = [objc_opt_class() _settingsExtensionsForSceneExtension:a2];
  v21 = [v20 countByEnumeratingWithState:a3 objects:a4 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = **(a3 + 16);
    do
    {
      v24 = 0;
      do
      {
        if (**(a3 + 16) != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(a3 + 8) + 8 * v24);
        v26 = objc_opt_class();
        FBSRealizeSettingsExtension(v26, v25);
        ++v24;
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:a3 objects:a4 count:16];
    }

    while (v22);
  }
}

- (void)_addSceneExtension:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"this class is not mutable"];
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

- (void)_addSceneExtension:(char *)a1 .cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"extension != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_addSceneExtension:(char *)a1 applyingSettings:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"class mismatch"];
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

- (void)_addSceneExtension:(char *)a1 applyingSettings:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"fromSettings", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_removeSceneExtension:(uint64_t)a1 .cold.1(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is not a FBSSceneExtension"];
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

- (void)_removeSceneExtension:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"this class is not mutable"];
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

- (void)_removeSceneExtension:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"extensionToRemove != ((void *)0)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_applySettings:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"this class is not mutable"];
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

- (void)_applySettings:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"class mismatch"];
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

- (void)_applySettings:.cold.3()
{
  OUTLINED_FUNCTION_8_1();
  v3 = [FBSSettings _settings:v2];
  v4 = OUTLINED_FUNCTION_9_4();
  v5 = [FBSSettings _settings:v4];
  OUTLINED_FUNCTION_10_3(v5);

  v6 = [FBSSettings _localSettings:v0];
  v7 = OUTLINED_FUNCTION_9_4();
  v8 = [FBSSettings _localSettings:v7];
  OUTLINED_FUNCTION_10_3(v8);

  v9 = [FBSSettings _legacyOtherSettings:v0];
  v10 = OUTLINED_FUNCTION_9_4();
  v11 = [FBSSettings _legacyOtherSettings:v10];
  OUTLINED_FUNCTION_10_3(v11);

  v14 = [FBSSettings _legacyLocalSettings:v0];
  v12 = OUTLINED_FUNCTION_9_4();
  v13 = [FBSSettings _legacyLocalSettings:v12];
  [v14 applySettings:v13];
}

+ (void)settingForProperty:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must call on a concrete subclass"];
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

+ (void)settingForSubclassProperty:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must call on a concrete subclass"];
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

+ (void)allSettings
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must call on a concrete subclass"];
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

+ (void)allSettingsFromProtocol:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must call on a concrete subclass"];
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

+ (void)allSettingsFromExtension:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[extension isSubclassOfClass:[FBSSettingsExtension class]]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)valueForSetting:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  [(FBSSetting *)a1 name];
  objc_claimAutoreleasedReturnValue();
  BSSettingFlagIsYes();
}

- (uint64_t)mutableCopyWithZone:(uint64_t *)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = [objc_msgSend(objc_msgSend(objc_opt_class() "_mutableClass")];
  *a3 = result;
  return result;
}

@end