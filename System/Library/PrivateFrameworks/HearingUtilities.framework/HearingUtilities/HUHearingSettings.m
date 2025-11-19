@interface HUHearingSettings
+ (id)sharedInstance;
- (NSArray)hearingControlCenterOrder;
- (NSDictionary)liveListenRemoteStartHistory;
- (id)_convertHACCModule:(unint64_t)a3;
- (unint64_t)_convertHACCPreference:(id)a3;
- (unint64_t)_convertLuckHACCModuleRawValue:(unint64_t)a3;
- (void)hearingControlCenterOrder;
- (void)logMessage:(id)a3;
- (void)setHearingControlCenterOrder:(id)a3;
@end

@implementation HUHearingSettings

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_9 != -1)
  {
    +[HUHearingSettings sharedInstance];
  }

  v3 = sharedInstance_Settings_4;

  return v3;
}

uint64_t __35__HUHearingSettings_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(HUHearingSettings);
  v1 = sharedInstance_Settings_4;
  sharedInstance_Settings_4 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)logMessage:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = HCLogHearing();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1DA5E2000, v4, OS_LOG_TYPE_DEFAULT, "%@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (NSArray)hearingControlCenterOrder
{
  v3 = [(HCSettings *)self objectValueForKey:@"hearingControlCenterOrder" withClass:objc_opt_class() andDefaultValue:0];
  if (v3)
  {
    v30 = 0;
    v4 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v3 error:&v30];
    v5 = v30;
    if (v5)
    {
      v6 = HCLogComfortSounds();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(HUHearingSettings *)v5 hearingControlCenterOrder:v6];
      }

      v13 = 0;
    }

    else
    {
      v14 = MEMORY[0x1E695DFD8];
      v15 = objc_opt_class();
      v16 = objc_opt_class();
      v17 = [v14 setWithObjects:{v15, v16, objc_opt_class(), 0}];
      v13 = [v4 decodeObjectOfClasses:v17 forKey:*MEMORY[0x1E696A508]];
    }
  }

  else
  {
    v13 = 0;
  }

  v18 = [v13 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v20 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v13, "count")}];
    v21 = v29;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v22 = __46__HUHearingSettings_hearingControlCenterOrder__block_invoke;
  }

  else
  {
    v23 = [v13 firstObject];
    objc_opt_class();
    v24 = objc_opt_isKindOfClass();

    if ((v24 & 1) == 0)
    {
      v25 = 0;
LABEL_17:
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:{&unk_1F5624160, &unk_1F5624178, &unk_1F5624190, &unk_1F56241A8, &unk_1F56241C0, &unk_1F56241D8, 0}];

      goto LABEL_18;
    }

    v20 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v13, "count")}];
    v21 = v28;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v22 = __46__HUHearingSettings_hearingControlCenterOrder__block_invoke_2;
  }

  v21[2] = v22;
  v21[3] = &unk_1E85CAD48;
  v21[4] = self;
  v25 = v20;
  v21[5] = v25;
  [v13 enumerateObjectsUsingBlock:v21];

  if (!v25)
  {
    goto LABEL_17;
  }

  v26 = v25;
  if (![v25 count])
  {
    goto LABEL_17;
  }

LABEL_18:

  return v26;
}

void __46__HUHearingSettings_hearingControlCenterOrder__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [*(a1 + 32) _convertLuckHACCModuleRawValue:{objc_msgSend(v6, "unsignedIntegerValue")}];
    if (v3 != 39)
    {
      v4 = *(a1 + 40);
      v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v3];
      [v4 addObject:v5];
    }
  }
}

void __46__HUHearingSettings_hearingControlCenterOrder__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [*(a1 + 32) _convertHACCPreference:v6];
    if (v3 != 39)
    {
      v4 = *(a1 + 40);
      v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v3];
      [v4 addObject:v5];
    }
  }
}

- (void)setHearingControlCenterOrder:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __50__HUHearingSettings_setHearingControlCenterOrder___block_invoke;
    v14 = &unk_1E85CAD48;
    v15 = self;
    v7 = v6;
    v16 = v7;
    [v5 enumerateObjectsUsingBlock:&v11];
    v8 = objc_alloc(MEMORY[0x1E696ACC8]);
    v9 = [v8 initRequiringSecureCoding:{1, v11, v12, v13, v14, v15}];
    [v9 encodeObject:v7 forKey:*MEMORY[0x1E696A508]];
    [v9 finishEncoding];
    v10 = [v9 encodedData];
  }

  else
  {
    v10 = 0;
  }

  [(HCSettings *)self setValue:v10 forPreferenceKey:@"hearingControlCenterOrder"];
}

uint64_t __50__HUHearingSettings_setHearingControlCenterOrder___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = v7;
  if (isKindOfClass)
  {
    v5 = [*(a1 + 32) _convertHACCModule:{objc_msgSend(v7, "unsignedIntegerValue")}];
    if (v5)
    {
      [*(a1 + 40) addObject:v5];
    }

    v4 = v7;
  }

  return MEMORY[0x1EEE66BB8](isKindOfClass, v4);
}

- (unint64_t)_convertHACCPreference:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"HACCModuleStatusPreference"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"HUIModuleHeadphoneLevelPreference"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"HACCModuleCSSoundsPreference"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"HACCModuleLiveListenPreference"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"HACCModulePMETogglePreference"])
  {
    v4 = 34;
  }

  else if ([v3 isEqualToString:@"HACCModuleSSLPreference"])
  {
    v4 = 32;
  }

  else
  {
    v4 = 39;
  }

  return v4;
}

- (id)_convertHACCModule:(unint64_t)a3
{
  v3 = @"HACCModuleLiveListenPreference";
  v4 = @"HACCModuleSSLPreference";
  v5 = @"HACCModulePMETogglePreference";
  if (a3 != 34)
  {
    v5 = 0;
  }

  if (a3 != 32)
  {
    v4 = v5;
  }

  if (a3 != 30)
  {
    v3 = v4;
  }

  v6 = @"HACCModuleCSSoundsPreference";
  if (a3 != 24)
  {
    v6 = 0;
  }

  if (a3 == 23)
  {
    v6 = @"HUIModuleHeadphoneLevelPreference";
  }

  if (!a3)
  {
    v6 = @"HACCModuleStatusPreference";
  }

  if (a3 <= 29)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

- (unint64_t)_convertLuckHACCModuleRawValue:(unint64_t)a3
{
  result = a3;
  if (a3 > 28)
  {
    switch(a3)
    {
      case 0x20uLL:
        return 34;
      case 0x1FuLL:
        return 32;
      case 0x1DuLL:
        return 30;
      default:
        return 39;
    }
  }

  else if (a3 - 23 >= 2 && a3)
  {
    return 39;
  }

  return result;
}

- (NSDictionary)liveListenRemoteStartHistory
{
  v3 = objc_opt_class();
  v4 = objc_opt_new();
  v5 = [(HCSettings *)self objectValueForKey:@"liveListenRemoteStartHistory" withClass:v3 andDefaultValue:v4];

  return v5;
}

- (void)hearingControlCenterOrder
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1DA5E2000, a2, a3, "Exception decoding data: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setHearingControlCenterOrder:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1DA5E2000, a2, a3, "Exception encoding data: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end