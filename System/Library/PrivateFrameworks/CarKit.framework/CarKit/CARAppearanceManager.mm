@interface CARAppearanceManager
+ (id)_descriptionForAppearanceSetting:(int64_t)setting;
+ (int64_t)_carUserInterfaceStyleForAppearanceMode:(unint64_t)mode;
- (BOOL)_useVehicleDataProtocolAppearance:(id)appearance;
- (BOOL)effectiveGlobalNightMode;
- (BOOL)locationBasedNightMode;
- (CARAppearanceManager)initWithScreens:(id)screens initialSystemNightMode:(BOOL)mode initialLocationBasedNightMode:(BOOL)nightMode delegate:(id)delegate;
- (CARAppearanceManagerDelegate)delegate;
- (id)_mainScreenInfo;
- (id)_screenInfoForScreenUUID:(id)d;
- (int64_t)effectiveStyleForMapAppearanceForScreenUUID:(id)d;
- (int64_t)effectiveStyleForUIAppearanceForScreenUUID:(id)d;
- (void)_resolveMapsStylesAndNotify:(BOOL)notify;
- (void)_resolveUIStylesAndNotify:(BOOL)notify;
- (void)_setInitialDisplayNightModeForScreen:(id)screen;
- (void)_setInitialMapAppearanceNumberForScreen:(id)screen;
- (void)_setInitialUIAppearanceNumberForScreen:(id)screen;
- (void)handleChangeAppearance:(int64_t)appearance screenID:(id)d;
- (void)handleLocationBasedNightModeUpdate:(BOOL)update;
- (void)handleMapAppearanceUpdateWithParameters:(id)parameters;
- (void)handleNightModeUpdateWithParameters:(id)parameters;
- (void)handleUIAppearanceUpdateWithParameters:(id)parameters;
- (void)setDisableLocationNightMode;
@end

@implementation CARAppearanceManager

void __39__CARAppearanceManager__mainScreenInfo__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (![v7 screenType])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (BOOL)locationBasedNightMode
{
  if ([(CARAppearanceManager *)self locationNightModeDisabled])
  {
    v3 = CarAppearanceLogging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1C81FC000, v3, OS_LOG_TYPE_DEFAULT, "Location night mode is disabled, ignoring actual value", v6, 2u);
    }

    return 0;
  }

  else
  {
    return self->_locationBasedNightMode;
  }
}

- (id)_mainScreenInfo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  screens = [(CARAppearanceManager *)self screens];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__CARAppearanceManager__mainScreenInfo__block_invoke;
  v5[3] = &unk_1E82FCD38;
  v5[4] = &v6;
  [screens enumerateObjectsUsingBlock:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)effectiveGlobalNightMode
{
  _mainScreenInfo = [(CARAppearanceManager *)self _mainScreenInfo];
  identifier = [_mainScreenInfo identifier];
  v5 = [(CARAppearanceManager *)self _useVehicleDataProtocolAppearance:identifier];

  if (v5)
  {
    targetAppearanceModes = self->_targetAppearanceModes;
    identifier2 = [_mainScreenInfo identifier];
    v8 = [(NSMutableDictionary *)targetAppearanceModes objectForKeyedSubscript:identifier2];
    v9 = [v8 integerValue] == 2;
  }

  else
  {
    nightModeDictionary = [(CARAppearanceManager *)self nightModeDictionary];
    identifier3 = [_mainScreenInfo identifier];
    v12 = [nightModeDictionary objectForKey:identifier3];
    bOOLValue = [v12 BOOLValue];

    v9 = [(CARAppearanceManager *)self locationBasedNightMode]| bOOLValue;
  }

  return v9 & 1;
}

- (CARAppearanceManager)initWithScreens:(id)screens initialSystemNightMode:(BOOL)mode initialLocationBasedNightMode:(BOOL)nightMode delegate:(id)delegate
{
  screensCopy = screens;
  delegateCopy = delegate;
  v39.receiver = self;
  v39.super_class = CARAppearanceManager;
  v12 = [(CARAppearanceManager *)&v39 init];
  if (v12)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    appearanceModeDictionary = v12->_appearanceModeDictionary;
    v12->_appearanceModeDictionary = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    appearanceModeSettingDictionary = v12->_appearanceModeSettingDictionary;
    v12->_appearanceModeSettingDictionary = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    currentEffectiveMapStyle = v12->_currentEffectiveMapStyle;
    v12->_currentEffectiveMapStyle = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    currentEffectiveUIStyle = v12->_currentEffectiveUIStyle;
    v12->_currentEffectiveUIStyle = v19;

    objc_storeWeak(&v12->_delegate, delegateCopy);
    v12->_locationBasedNightMode = nightMode;
    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    mapAppearanceModeDictionary = v12->_mapAppearanceModeDictionary;
    v12->_mapAppearanceModeDictionary = v21;

    v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
    mapAppearanceModeSettingDictionary = v12->_mapAppearanceModeSettingDictionary;
    v12->_mapAppearanceModeSettingDictionary = v23;

    v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
    nightModeDictionary = v12->_nightModeDictionary;
    v12->_nightModeDictionary = v25;

    v27 = [screensCopy copy];
    screens = v12->_screens;
    v12->_screens = v27;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    targetAppearanceModes = v12->_targetAppearanceModes;
    v12->_targetAppearanceModes = dictionary;

    v33 = MEMORY[0x1E69E9820];
    v34 = 3221225472;
    v35 = __102__CARAppearanceManager_initWithScreens_initialSystemNightMode_initialLocationBasedNightMode_delegate___block_invoke;
    v36 = &unk_1E82FD698;
    v31 = v12;
    v37 = v31;
    modeCopy = mode;
    [screensCopy enumerateObjectsUsingBlock:&v33];
    [(CARAppearanceManager *)v31 _resolveUIStylesAndNotify:0, v33, v34, v35, v36];
    [(CARAppearanceManager *)v31 _resolveMapsStylesAndNotify:0];
  }

  return v12;
}

void __102__CARAppearanceManager_initWithScreens_initialSystemNightMode_initialLocationBasedNightMode_delegate___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) nightModeDictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  v5 = [v6 identifier];
  [v3 setObject:v4 forKey:v5];

  if ([v6 supportsAppearanceMode])
  {
    [*(a1 + 32) _setInitialUIAppearanceNumberForScreen:v6];
  }

  if ([v6 supportsPerDisplayNightMode] && objc_msgSend(v6, "screenType"))
  {
    [*(a1 + 32) _setInitialDisplayNightModeForScreen:v6];
  }

  if ([v6 supportsMapAppearanceMode])
  {
    [*(a1 + 32) _setInitialMapAppearanceNumberForScreen:v6];
  }
}

- (int64_t)effectiveStyleForUIAppearanceForScreenUUID:(id)d
{
  dCopy = d;
  if ([(CARAppearanceManager *)self _useVehicleDataProtocolAppearance:dCopy])
  {
    v5 = [(NSMutableDictionary *)self->_targetAppearanceModes objectForKeyedSubscript:dCopy];
    integerValue = [v5 integerValue];
  }

  else
  {
    v5 = [(CARAppearanceManager *)self _screenInfoForScreenUUID:dCopy];
    physicalDisplay = [v5 physicalDisplay];
    if ([v5 screenType] && (objc_msgSend(physicalDisplay, "supportsDDPContent") & 1) != 0)
    {
      integerValue = 2;
    }

    else
    {
      currentEffectiveUIStyle = [(CARAppearanceManager *)self currentEffectiveUIStyle];
      v9 = [currentEffectiveUIStyle objectForKey:dCopy];
      integerValue = [v9 integerValue];
    }
  }

  return integerValue;
}

- (int64_t)effectiveStyleForMapAppearanceForScreenUUID:(id)d
{
  dCopy = d;
  if ([(CARAppearanceManager *)self _useVehicleDataProtocolAppearance:dCopy])
  {
    currentEffectiveMapStyle = [(NSMutableDictionary *)self->_targetAppearanceModes objectForKeyedSubscript:dCopy];
    integerValue = [currentEffectiveMapStyle integerValue];
  }

  else
  {
    currentEffectiveMapStyle = [(CARAppearanceManager *)self currentEffectiveMapStyle];
    v7 = [currentEffectiveMapStyle objectForKey:dCopy];
    integerValue = [v7 integerValue];
  }

  return integerValue;
}

- (void)handleNightModeUpdateWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = [parametersCopy objectForKey:@"DisplayUUID"];
  if (!v5)
  {
    v5 = [parametersCopy objectForKey:@"uuid"];
  }

  if (![(CARAppearanceManager *)self _useVehicleDataProtocolAppearance:v5])
  {
    v6 = [parametersCopy objectForKey:@"IsNightMode"];
    screens = [(CARAppearanceManager *)self screens];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __60__CARAppearanceManager_handleNightModeUpdateWithParameters___block_invoke;
    v9[3] = &unk_1E82FD6C0;
    v10 = v5;
    v11 = v6;
    selfCopy = self;
    v8 = v6;
    [screens enumerateObjectsUsingBlock:v9];

    [(CARAppearanceManager *)self _resolveUIStylesAndNotify:1];
    [(CARAppearanceManager *)self _resolveMapsStylesAndNotify:1];
  }
}

void __60__CARAppearanceManager_handleNightModeUpdateWithParameters___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 identifier];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
  }

  else
  {
    v5 = [v3 supportsPerDisplayNightMode];

    if (v5)
    {
      goto LABEL_12;
    }
  }

  v6 = CarAppearanceLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = [v7 BOOLValue];
      v9 = @"NO";
      if (v8)
      {
        v9 = @"YES";
      }
    }

    else
    {
      v9 = @"unset";
    }

    v13 = 138543618;
    v14 = v3;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_1C81FC000, v6, OS_LOG_TYPE_DEFAULT, "Updating night mode for screenInfo: %{public}@, night mode: %{public}@", &v13, 0x16u);
  }

  v10 = [*(a1 + 48) nightModeDictionary];
  v11 = *(a1 + 40);
  v12 = [v3 identifier];
  [v10 setObject:v11 forKey:v12];

LABEL_12:
}

- (void)handleUIAppearanceUpdateWithParameters:(id)parameters
{
  v27 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  v5 = [parametersCopy objectForKey:@"uuid"];
  v6 = [(CARAppearanceManager *)self _screenInfoForScreenUUID:v5];
  if (![(CARAppearanceManager *)self _useVehicleDataProtocolAppearance:v5])
  {
    if ([v6 supportsAppearanceMode])
    {
      v7 = [parametersCopy objectForKey:@"appearanceMode"];

      if (v7)
      {
        v8 = [parametersCopy objectForKey:@"appearanceMode"];
        unsignedIntegerValue = [v8 unsignedIntegerValue];

        v10 = [objc_opt_class() _carUserInterfaceStyleForAppearanceMode:unsignedIntegerValue];
        v11 = CarAppearanceLogging();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [CARSessionConfiguration descriptionForUserInterfaceStyle:v10];
          v23 = 138543618;
          v24 = v6;
          v25 = 2114;
          v26 = v12;
          _os_log_impl(&dword_1C81FC000, v11, OS_LOG_TYPE_DEFAULT, "UI Appearance update for screen: %{public}@ has style: %{public}@", &v23, 0x16u);
        }
      }

      else
      {
        v10 = -1;
      }

      v14 = [parametersCopy objectForKey:@"appearanceSetting"];

      if (v14)
      {
        v15 = [parametersCopy objectForKey:@"appearanceSetting"];
        integerValue = [v15 integerValue];

        v17 = CarAppearanceLogging();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [objc_opt_class() _descriptionForAppearanceSetting:integerValue];
          v23 = 138543618;
          v24 = v6;
          v25 = 2114;
          v26 = v18;
          _os_log_impl(&dword_1C81FC000, v17, OS_LOG_TYPE_DEFAULT, "UI Appearance update for screen: %{public}@ has setting: %{public}@", &v23, 0x16u);
        }

        if ((v10 - 1) <= 1 && integerValue <= 2)
        {
          appearanceModeDictionary = [(CARAppearanceManager *)self appearanceModeDictionary];
          v20 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
          [appearanceModeDictionary setObject:v20 forKey:v5];

          appearanceModeSettingDictionary = [(CARAppearanceManager *)self appearanceModeSettingDictionary];
          v22 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
          [appearanceModeSettingDictionary setObject:v22 forKey:v5];

          [(CARAppearanceManager *)self _resolveUIStylesAndNotify:1];
          goto LABEL_19;
        }
      }

      v13 = CarAppearanceLogging();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [CARAppearanceManager handleUIAppearanceUpdateWithParameters:];
      }
    }

    else
    {
      v13 = CarAppearanceLogging();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [CARAppearanceManager handleUIAppearanceUpdateWithParameters:];
      }
    }
  }

LABEL_19:
}

- (void)handleMapAppearanceUpdateWithParameters:(id)parameters
{
  v27 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  v5 = [parametersCopy objectForKey:@"uuid"];
  v6 = [(CARAppearanceManager *)self _screenInfoForScreenUUID:v5];
  if (![(CARAppearanceManager *)self _useVehicleDataProtocolAppearance:v5])
  {
    if ([v6 supportsMapAppearanceMode])
    {
      v7 = [parametersCopy objectForKey:@"appearanceMode"];

      if (v7)
      {
        v8 = [parametersCopy objectForKey:@"appearanceMode"];
        unsignedIntegerValue = [v8 unsignedIntegerValue];

        v10 = [objc_opt_class() _carUserInterfaceStyleForAppearanceMode:unsignedIntegerValue];
        v11 = CarAppearanceLogging();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [CARSessionConfiguration descriptionForUserInterfaceStyle:v10];
          v23 = 138543618;
          v24 = v6;
          v25 = 2114;
          v26 = v12;
          _os_log_impl(&dword_1C81FC000, v11, OS_LOG_TYPE_DEFAULT, "Map Appearance update for screen: %{public}@ has style: %{public}@", &v23, 0x16u);
        }
      }

      else
      {
        v10 = -1;
      }

      v14 = [parametersCopy objectForKey:@"appearanceSetting"];

      if (v14)
      {
        v15 = [parametersCopy objectForKey:@"appearanceSetting"];
        integerValue = [v15 integerValue];

        v17 = CarAppearanceLogging();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [objc_opt_class() _descriptionForAppearanceSetting:integerValue];
          v23 = 138543618;
          v24 = v6;
          v25 = 2114;
          v26 = v18;
          _os_log_impl(&dword_1C81FC000, v17, OS_LOG_TYPE_DEFAULT, "Map Appearance update for screen: %{public}@ has setting: %{public}@", &v23, 0x16u);
        }

        if ((v10 - 1) <= 1 && integerValue <= 2)
        {
          mapAppearanceModeDictionary = [(CARAppearanceManager *)self mapAppearanceModeDictionary];
          v20 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
          [mapAppearanceModeDictionary setObject:v20 forKey:v5];

          mapAppearanceModeSettingDictionary = [(CARAppearanceManager *)self mapAppearanceModeSettingDictionary];
          v22 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
          [mapAppearanceModeSettingDictionary setObject:v22 forKey:v5];

          [(CARAppearanceManager *)self _resolveMapsStylesAndNotify:1];
          goto LABEL_19;
        }
      }

      v13 = CarAppearanceLogging();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [CARAppearanceManager handleMapAppearanceUpdateWithParameters:];
      }
    }

    else
    {
      v13 = CarAppearanceLogging();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [CARAppearanceManager handleMapAppearanceUpdateWithParameters:];
      }
    }
  }

LABEL_19:
}

- (void)handleLocationBasedNightModeUpdate:(BOOL)update
{
  updateCopy = update;
  v12 = *MEMORY[0x1E69E9840];
  _mainScreenInfo = [(CARAppearanceManager *)self _mainScreenInfo];
  identifier = [_mainScreenInfo identifier];
  v7 = [(CARAppearanceManager *)self _useVehicleDataProtocolAppearance:identifier];

  if (!v7)
  {
    v8 = CarAppearanceLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromBOOL();
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_1C81FC000, v8, OS_LOG_TYPE_DEFAULT, "Location night mode update: %{public}@", &v10, 0xCu);
    }

    [(CARAppearanceManager *)self setLocationBasedNightMode:updateCopy];
    [(CARAppearanceManager *)self _resolveUIStylesAndNotify:1];
    [(CARAppearanceManager *)self _resolveMapsStylesAndNotify:1];
  }
}

- (void)handleChangeAppearance:(int64_t)appearance screenID:(id)d
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v7 = CarAppearanceLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:appearance];
    *buf = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = dCopy;
    _os_log_impl(&dword_1C81FC000, v7, OS_LOG_TYPE_DEFAULT, "CarDDPAppearance Received new target appearance: %{public}@, screenID: %@", buf, 0x16u);
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:appearance];
  [(NSMutableDictionary *)self->_targetAppearanceModes setObject:v9 forKeyedSubscript:dCopy];

  delegate = [(CARAppearanceManager *)self delegate];
  v15 = dCopy;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  [delegate appearanceManager:self didUpdateMapAppearanceStyle:appearance forScreenUUIDs:v11];

  delegate2 = [(CARAppearanceManager *)self delegate];
  v14 = dCopy;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  [delegate2 appearanceManager:self didUpdateUIAppearanceStyle:appearance forScreenUUIDs:v13];
}

- (void)setDisableLocationNightMode
{
  _mainScreenInfo = [(CARAppearanceManager *)self _mainScreenInfo];
  identifier = [_mainScreenInfo identifier];
  v5 = [(CARAppearanceManager *)self _useVehicleDataProtocolAppearance:identifier];

  if (!v5)
  {
    v6 = CarAppearanceLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1C81FC000, v6, OS_LOG_TYPE_DEFAULT, "Disabling location night mode, further updates will be ignored", v7, 2u);
    }

    [(CARAppearanceManager *)self setLocationNightModeDisabled:1];
    [(CARAppearanceManager *)self _resolveUIStylesAndNotify:0];
    [(CARAppearanceManager *)self _resolveMapsStylesAndNotify:0];
  }
}

+ (int64_t)_carUserInterfaceStyleForAppearanceMode:(unint64_t)mode
{
  v3 = 2;
  if (mode != 1)
  {
    v3 = -1;
  }

  if (mode)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

- (id)_screenInfoForScreenUUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__8;
  v16 = __Block_byref_object_dispose__8;
  v17 = 0;
  screens = [(CARAppearanceManager *)self screens];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__CARAppearanceManager__screenInfoForScreenUUID___block_invoke;
  v9[3] = &unk_1E82FCD10;
  v6 = dCopy;
  v10 = v6;
  v11 = &v12;
  [screens enumerateObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __49__CARAppearanceManager__screenInfoForScreenUUID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 identifier];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)_setInitialDisplayNightModeForScreen:(id)screen
{
  v18 = *MEMORY[0x1E69E9840];
  screenCopy = screen;
  screenInfoResponse = [screenCopy screenInfoResponse];
  v6 = [screenInfoResponse objectForKey:@"nightMode"];

  if (v6)
  {
    v7 = [screenInfoResponse objectForKey:@"nightMode"];
    bOOLValue = [v7 BOOLValue];

    v9 = CarAppearanceLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromBOOL();
      v14 = 138543618;
      v15 = v10;
      v16 = 2114;
      v17 = screenCopy;
      _os_log_impl(&dword_1C81FC000, v9, OS_LOG_TYPE_DEFAULT, "Screen has nightMode key with value: %{public}@ for screenInfo: %{public}@", &v14, 0x16u);
    }

    nightModeDictionary = [(CARAppearanceManager *)self nightModeDictionary];
    v12 = [MEMORY[0x1E696AD98] numberWithBool:bOOLValue];
    identifier = [screenCopy identifier];
    [nightModeDictionary setObject:v12 forKey:identifier];
  }
}

- (void)_setInitialUIAppearanceNumberForScreen:(id)screen
{
  v32 = *MEMORY[0x1E69E9840];
  screenCopy = screen;
  screenInfoResponse = [screenCopy screenInfoResponse];
  v6 = [screenInfoResponse objectForKey:@"uiAppearanceMode"];
  if (v6 && (v7 = v6, [screenInfoResponse objectForKey:@"uiAppearanceSetting"], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    v9 = CarAppearanceLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138543362;
      v27 = screenCopy;
      _os_log_impl(&dword_1C81FC000, v9, OS_LOG_TYPE_DEFAULT, "Screen has appearanceMode key: %{public}@", &v26, 0xCu);
    }

    v10 = objc_opt_class();
    v11 = [screenInfoResponse objectForKey:@"uiAppearanceMode"];
    v12 = [v10 _carUserInterfaceStyleForAppearanceMode:{objc_msgSend(v11, "unsignedIntegerValue")}];

    v13 = [screenInfoResponse objectForKey:@"uiAppearanceSetting"];
    integerValue = [v13 integerValue];

    v15 = CarAppearanceLogging();
    appearanceModeSettingDictionary = v15;
    if ((v12 - 1) > 1 || integerValue > 2)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        v26 = 134349570;
        v27 = v12;
        v28 = 2050;
        v29 = integerValue;
        v30 = 2112;
        v31 = screenCopy;
        _os_log_fault_impl(&dword_1C81FC000, appearanceModeSettingDictionary, OS_LOG_TYPE_FAULT, "Invalid initial style (%{public}lu), setting (%{public}lu) for screenInfo: %@", &v26, 0x20u);
      }
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [CARSessionConfiguration descriptionForUserInterfaceStyle:v12];
        v20 = [objc_opt_class() _descriptionForAppearanceSetting:integerValue];
        v26 = 138543874;
        v27 = v19;
        v28 = 2114;
        v29 = v20;
        v30 = 2114;
        v31 = screenCopy;
        _os_log_impl(&dword_1C81FC000, appearanceModeSettingDictionary, OS_LOG_TYPE_DEFAULT, "Initial ui appearance style is: %{public}@, setting: %{public}@, for screenInfo: %{public}@", &v26, 0x20u);
      }

      appearanceModeDictionary = [(CARAppearanceManager *)self appearanceModeDictionary];
      v22 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
      identifier = [screenCopy identifier];
      [appearanceModeDictionary setObject:v22 forKey:identifier];

      appearanceModeSettingDictionary = [(CARAppearanceManager *)self appearanceModeSettingDictionary];
      v24 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
      identifier2 = [screenCopy identifier];
      [appearanceModeSettingDictionary setObject:v24 forKey:identifier2];
    }
  }

  else
  {
    appearanceModeSettingDictionary = CarAppearanceLogging();
    if (os_log_type_enabled(appearanceModeSettingDictionary, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138543362;
      v27 = screenCopy;
      _os_log_impl(&dword_1C81FC000, appearanceModeSettingDictionary, OS_LOG_TYPE_DEFAULT, "No initial appearance mode for screenInfo: %{public}@", &v26, 0xCu);
    }
  }
}

- (void)_setInitialMapAppearanceNumberForScreen:(id)screen
{
  v32 = *MEMORY[0x1E69E9840];
  screenCopy = screen;
  screenInfoResponse = [screenCopy screenInfoResponse];
  v6 = [screenInfoResponse objectForKey:@"mapAppearanceMode"];
  if (v6 && (v7 = v6, [screenInfoResponse objectForKey:@"mapAppearanceSetting"], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    v9 = CarAppearanceLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138543362;
      v27 = screenCopy;
      _os_log_impl(&dword_1C81FC000, v9, OS_LOG_TYPE_DEFAULT, "Screen has mapAppearanceMode key: %{public}@", &v26, 0xCu);
    }

    v10 = objc_opt_class();
    v11 = [screenInfoResponse objectForKey:@"mapAppearanceMode"];
    v12 = [v10 _carUserInterfaceStyleForAppearanceMode:{objc_msgSend(v11, "unsignedIntegerValue")}];

    v13 = [screenInfoResponse objectForKey:@"mapAppearanceSetting"];
    integerValue = [v13 integerValue];

    v15 = CarAppearanceLogging();
    mapAppearanceModeSettingDictionary = v15;
    if ((v12 - 1) > 1 || integerValue > 2)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        v26 = 134349570;
        v27 = v12;
        v28 = 2050;
        v29 = integerValue;
        v30 = 2114;
        v31 = screenCopy;
        _os_log_fault_impl(&dword_1C81FC000, mapAppearanceModeSettingDictionary, OS_LOG_TYPE_FAULT, "Invalid initial map appearance style (%{public}lu), setting (%{public}lu) for screenInfo: %{public}@", &v26, 0x20u);
      }
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [CARSessionConfiguration descriptionForUserInterfaceStyle:v12];
        v20 = [objc_opt_class() _descriptionForAppearanceSetting:integerValue];
        v26 = 138543874;
        v27 = v19;
        v28 = 2114;
        v29 = v20;
        v30 = 2114;
        v31 = screenCopy;
        _os_log_impl(&dword_1C81FC000, mapAppearanceModeSettingDictionary, OS_LOG_TYPE_DEFAULT, "Initial map appearance style is: %{public}@, setting: %{public}@, for screenInfo: %{public}@", &v26, 0x20u);
      }

      mapAppearanceModeDictionary = [(CARAppearanceManager *)self mapAppearanceModeDictionary];
      v22 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
      identifier = [screenCopy identifier];
      [mapAppearanceModeDictionary setObject:v22 forKey:identifier];

      mapAppearanceModeSettingDictionary = [(CARAppearanceManager *)self mapAppearanceModeSettingDictionary];
      v24 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
      identifier2 = [screenCopy identifier];
      [mapAppearanceModeSettingDictionary setObject:v24 forKey:identifier2];
    }
  }

  else
  {
    mapAppearanceModeSettingDictionary = CarAppearanceLogging();
    if (os_log_type_enabled(mapAppearanceModeSettingDictionary, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138543362;
      v27 = screenCopy;
      _os_log_impl(&dword_1C81FC000, mapAppearanceModeSettingDictionary, OS_LOG_TYPE_DEFAULT, "No initial map appearance mode for screenInfo: %{public}@", &v26, 0xCu);
    }
  }
}

- (void)_resolveUIStylesAndNotify:(BOOL)notify
{
  screens = [(CARAppearanceManager *)self screens];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__CARAppearanceManager__resolveUIStylesAndNotify___block_invoke;
  v6[3] = &unk_1E82FD698;
  v6[4] = self;
  notifyCopy = notify;
  [screens enumerateObjectsUsingBlock:v6];
}

void __50__CARAppearanceManager__resolveUIStylesAndNotify___block_invoke(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 identifier];
  if (([*(a1 + 32) _useVehicleDataProtocolAppearance:v4] & 1) == 0)
  {
    v5 = [*(a1 + 32) currentEffectiveUIStyle];
    v6 = [v5 objectForKey:v4];
    v35 = [v6 integerValue];

    v7 = [*(a1 + 32) locationBasedNightMode];
    v8 = [*(a1 + 32) nightModeDictionary];
    v9 = [v8 objectForKey:v4];
    v10 = [v9 BOOLValue];

    v11 = [*(a1 + 32) appearanceModeDictionary];
    v12 = [v11 objectForKey:v4];

    v13 = [*(a1 + 32) appearanceModeSettingDictionary];
    v14 = [v13 objectForKey:v4];

    v15 = [v14 integerValue];
    v36 = v14;
    if (v12 && v14)
    {
      v16 = [v12 integerValue];
      if (v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = v16 == 1;
      }

      v18 = v17;
      v19 = 1;
      if (v7)
      {
        v20 = 2;
      }

      else
      {
        v20 = 1;
      }

      if ((v10 | v7))
      {
        v19 = 2;
      }

      if (v16 == -1)
      {
        v16 = v19;
      }
    }

    else
    {
      v18 = 0;
      if (v7)
      {
        v20 = 2;
      }

      else
      {
        v20 = 1;
      }

      if ((v10 | v7))
      {
        v16 = 2;
      }

      else
      {
        v16 = 1;
      }
    }

    if (v18)
    {
      v21 = v20;
    }

    else
    {
      v21 = v16;
    }

    v22 = CarAppearanceLogging();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [CARSessionConfiguration descriptionForUserInterfaceStyle:v21];
      v24 = [objc_opt_class() _descriptionForAppearanceSetting:v15];
      v25 = NSStringFromBOOL();
      v26 = NSStringFromBOOL();
      *buf = 138544642;
      v39 = v23;
      v40 = 2114;
      v41 = v3;
      v42 = 2114;
      v43 = v12;
      v44 = 2114;
      v45 = v24;
      v46 = 2114;
      v47 = v25;
      v48 = 2114;
      v49 = v26;
      _os_log_impl(&dword_1C81FC000, v22, OS_LOG_TYPE_DEFAULT, "Resolved ui style: %{public}@ for screen: %{public}@ with ui appearance value: %{public}@, appearance setting: %{public}@, location night mode: %{public}@, display night mode: %{public}@", buf, 0x3Eu);
    }

    if (v21 != v35)
    {
      v27 = CarAppearanceLogging();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [CARSessionConfiguration descriptionForUserInterfaceStyle:v21];
        v29 = NSStringFromBOOL();
        *buf = 138543618;
        v39 = v28;
        v40 = 2114;
        v41 = v29;
        _os_log_impl(&dword_1C81FC000, v27, OS_LOG_TYPE_DEFAULT, "UI Style has been updated, setting effective style to %{public}@, will notify: %{public}@", buf, 0x16u);
      }

      v30 = [*(a1 + 32) currentEffectiveUIStyle];
      v31 = [MEMORY[0x1E696AD98] numberWithInteger:v21];
      [v30 setObject:v31 forKey:v4];

      if (*(a1 + 40) == 1)
      {
        v32 = [*(a1 + 32) delegate];
        v33 = *(a1 + 32);
        v37 = v4;
        v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
        [v32 appearanceManager:v33 didUpdateUIAppearanceStyle:v21 forScreenUUIDs:v34];
      }
    }

    [*(a1 + 32) _resolveMapsStylesAndNotify:*(a1 + 40)];
  }
}

- (void)_resolveMapsStylesAndNotify:(BOOL)notify
{
  screens = [(CARAppearanceManager *)self screens];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__CARAppearanceManager__resolveMapsStylesAndNotify___block_invoke;
  v6[3] = &unk_1E82FD698;
  v6[4] = self;
  notifyCopy = notify;
  [screens enumerateObjectsUsingBlock:v6];
}

void __52__CARAppearanceManager__resolveMapsStylesAndNotify___block_invoke(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 identifier];
  if (([*(a1 + 32) _useVehicleDataProtocolAppearance:v4] & 1) == 0)
  {
    v5 = [*(a1 + 32) currentEffectiveMapStyle];
    v6 = [v5 objectForKey:v4];
    v34 = [v6 integerValue];

    v7 = [*(a1 + 32) locationBasedNightMode];
    v8 = [*(a1 + 32) nightModeDictionary];
    v9 = [v8 objectForKey:v4];
    v10 = [v9 BOOLValue];

    v11 = [*(a1 + 32) mapAppearanceModeDictionary];
    v12 = [v11 objectForKey:v4];

    v13 = [*(a1 + 32) mapAppearanceModeSettingDictionary];
    v14 = [v13 objectForKey:v4];

    if (v12 && v14)
    {
      v15 = [v12 integerValue];
      v16 = v15;
      v17 = 1;
      if ((v10 | v7))
      {
        v17 = 2;
      }

      if (v15 == -1)
      {
        v16 = v17;
      }
    }

    else if ((v10 | v7))
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }

    if (v16 == 2)
    {
      v18 = [*(a1 + 32) currentEffectiveUIStyle];
      v19 = [v18 objectForKey:v4];
      v20 = [v19 integerValue];

      if (v20 == 1)
      {
        v21 = CarAppearanceLogging();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C81FC000, v21, OS_LOG_TYPE_DEFAULT, "Map Style is dark but ui appearance is light, setting effective map style light to match", buf, 2u);
        }

        v16 = 1;
      }

      else
      {
        v16 = 2;
      }
    }

    v22 = CarAppearanceLogging();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [CARSessionConfiguration descriptionForUserInterfaceStyle:v16];
      v24 = NSStringFromBOOL();
      v25 = NSStringFromBOOL();
      *buf = 138544386;
      v37 = v23;
      v38 = 2114;
      v39 = v3;
      v40 = 2114;
      v41 = v12;
      v42 = 2114;
      v43 = v24;
      v44 = 2114;
      v45 = v25;
      _os_log_impl(&dword_1C81FC000, v22, OS_LOG_TYPE_DEFAULT, "Resolved map style: %{public}@ for screen: %{public}@ with ui appearance value: %{public}@, location night mode: %{public}@, display night mode: %{public}@", buf, 0x34u);
    }

    if (v16 != v34)
    {
      v26 = CarAppearanceLogging();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [CARSessionConfiguration descriptionForUserInterfaceStyle:v16];
        v28 = NSStringFromBOOL();
        *buf = 138543618;
        v37 = v27;
        v38 = 2114;
        v39 = v28;
        _os_log_impl(&dword_1C81FC000, v26, OS_LOG_TYPE_DEFAULT, "Map Style has been updated, setting effective style to %{public}@, will notify: %{public}@", buf, 0x16u);
      }

      v29 = [*(a1 + 32) currentEffectiveMapStyle];
      v30 = [MEMORY[0x1E696AD98] numberWithInteger:v16];
      [v29 setObject:v30 forKey:v4];

      if (*(a1 + 40) == 1)
      {
        v31 = [*(a1 + 32) delegate];
        v32 = *(a1 + 32);
        v35 = v4;
        v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
        [v31 appearanceManager:v32 didUpdateMapAppearanceStyle:v16 forScreenUUIDs:v33];
      }
    }
  }
}

+ (id)_descriptionForAppearanceSetting:(int64_t)setting
{
  if (setting > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E82FD6E0[setting];
  }
}

- (BOOL)_useVehicleDataProtocolAppearance:(id)appearance
{
  v3 = [(NSMutableDictionary *)self->_targetAppearanceModes objectForKeyedSubscript:appearance];
  v4 = v3 != 0;

  return v4;
}

- (CARAppearanceManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end