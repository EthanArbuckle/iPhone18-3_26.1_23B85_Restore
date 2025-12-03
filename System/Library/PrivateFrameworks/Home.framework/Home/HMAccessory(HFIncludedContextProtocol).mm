@interface HMAccessory(HFIncludedContextProtocol)
- (id)hf_updateValue:()HFIncludedContextProtocol forContextType:;
- (id)hf_updateValueForCurrentObjectOnly:()HFIncludedContextProtocol forContextType:;
- (uint64_t)_areAllSensorServices;
- (uint64_t)hf_anyNonSensorServiceIsOnForContextType:()HFIncludedContextProtocol;
- (uint64_t)hf_hasSetForContextType:()HFIncludedContextProtocol;
- (uint64_t)hf_isOnForContextType:()HFIncludedContextProtocol;
- (uint64_t)hf_shouldBeOnForContextType:()HFIncludedContextProtocol;
- (uint64_t)hf_shouldHideForContextType:()HFIncludedContextProtocol;
@end

@implementation HMAccessory(HFIncludedContextProtocol)

- (uint64_t)hf_isOnForContextType:()HFIncludedContextProtocol
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      if (([self hf_isCamera] & 1) == 0)
      {
        v4 = @"HFApplicationDataAccessoryIsFavoriteKey_v2";
        goto LABEL_12;
      }
    }

    else if (a3 == 3)
    {
      v4 = @"HFApplicationDataAccessoryShowInHomeDashboard";
      goto LABEL_12;
    }

    return 0;
  }

  if (!a3)
  {
    v4 = @"HFApplicationDataAccessoryIsFavoriteKey";
    goto LABEL_12;
  }

  if (a3 != 1)
  {
    return 0;
  }

  v4 = @"HFApplicationDataAccessoryIsVisibleInHomeStatusKey";
LABEL_12:
  applicationData = [self applicationData];
  v7 = [applicationData objectForKeyedSubscript:v4];
  bOOLValue = [v7 BOOLValue];

  return bOOLValue;
}

- (uint64_t)hf_hasSetForContextType:()HFIncludedContextProtocol
{
  v5 = 0;
  v20 = *MEMORY[0x277D85DE8];
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        applicationData = [self applicationData];
        v7 = [applicationData objectForKeyedSubscript:@"HFApplicationDataAccessoryIsVisibleInHomeStatusKey"];
        v8 = v7 != 0;

        goto LABEL_16;
      }

LABEL_15:
      services = [self services];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __66__HMAccessory_HFIncludedContextProtocol__hf_hasSetForContextType___block_invoke;
      v17[3] = &__block_descriptor_40_e19_B16__0__HMService_8l;
      v17[4] = a3;
      v14 = [services na_any:v17];

      v8 = v5 | v14;
      goto LABEL_16;
    }

    v9 = @"HFApplicationDataAccessoryIsFavoriteKey";
LABEL_14:
    applicationData2 = [self applicationData];
    v12 = [applicationData2 objectForKeyedSubscript:v9];
    v5 = v12 != 0;

    goto LABEL_15;
  }

  if (a3 != 2)
  {
    if (a3 != 3)
    {
      goto LABEL_15;
    }

    v9 = @"HFApplicationDataAccessoryShowInHomeDashboard";
    goto LABEL_14;
  }

  if (![self hf_isCamera])
  {
    v9 = @"HFApplicationDataAccessoryIsFavoriteKey_v2";
    goto LABEL_14;
  }

  v10 = HFLogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v19 = "[HMAccessory(HFIncludedContextProtocol) hf_hasSetForContextType:]";
    _os_log_error_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_ERROR, "(%s) Trying to check if Favorite was set or not for Camera, which can't be done.", buf, 0xCu);
  }

  v8 = 0;
LABEL_16:
  v15 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

- (uint64_t)hf_shouldBeOnForContextType:()HFIncludedContextProtocol
{
  if (([self hf_isPureBridge] & 1) != 0 || objc_msgSend(self, "_areAllSensorServices") && !objc_msgSend(self, "hf_isNonServiceBasedAccessory"))
  {
    v3 = 0;
    return v3 & 1;
  }

  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        if ([self hf_hasSetForContextType:1])
        {
          selfCopy2 = self;
          v8 = 1;
LABEL_22:

          return [selfCopy2 hf_isOnForContextType:v8];
        }

        if ([self hf_isNonServiceBasedAccessory])
        {
          hf_isPureProgrammableSwitch = [self hf_shouldHideForContextType:1];
LABEL_30:
          v3 = hf_isPureProgrammableSwitch ^ 1;
          return v3 & 1;
        }

        hf_visibleServices = [self hf_visibleServices];
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __70__HMAccessory_HFIncludedContextProtocol__hf_shouldBeOnForContextType___block_invoke;
        v11[3] = &__block_descriptor_40_e19_B16__0__HMService_8l;
        v11[4] = 1;
        v3 = [hf_visibleServices na_any:v11];
      }

      return v3 & 1;
    }

    if (([self hf_isOnForContextType:0] & 1) == 0 && (objc_msgSend(self, "hf_anyNonSensorServiceIsOnForContextType:", 0) & 1) == 0)
    {
      hf_isPureProgrammableSwitch = [self hf_hasSetForContextType:0];
      goto LABEL_30;
    }

LABEL_20:
    v3 = 1;
    return v3 & 1;
  }

  if (a3 == 2)
  {
    selfCopy2 = self;
    v8 = 2;
    goto LABEL_22;
  }

  if (a3 != 3)
  {
    return v3 & 1;
  }

  if (![self hf_hasSetForContextType:3])
  {
    hf_isPureProgrammableSwitch = [self hf_isPureProgrammableSwitch];
    goto LABEL_30;
  }

  if ([self hf_isOnForContextType:3])
  {
    goto LABEL_20;
  }

  return [self hf_anyNonSensorServiceIsOnForContextType:3];
}

- (uint64_t)hf_shouldHideForContextType:()HFIncludedContextProtocol
{
  objc_initWeak(&location, val);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __70__HMAccessory_HFIncludedContextProtocol__hf_shouldHideForContextType___block_invoke;
  v12 = &unk_277DFC7E8;
  objc_copyWeak(&v13, &location);
  v6 = _Block_copy(&v9);
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      if ([val hf_isCamera])
      {
        v3 = 1;
        goto LABEL_16;
      }
    }

    else if (a3 != 3)
    {
      goto LABEL_16;
    }

LABEL_15:
    v3 = v6[2](v6);
    goto LABEL_16;
  }

  if (!a3)
  {
    goto LABEL_15;
  }

  if (a3 == 1)
  {
    if ([val hf_isAppleTV] & 1) != 0 || (objc_msgSend(val, "hf_isCamera") & 1) != 0 || (objc_msgSend(val, "hf_isHomePod") & 1) != 0 || (objc_msgSend(val, "hf_isRemoteControl"))
    {
      hf_isMatterOnlyAccessory = 1;
    }

    else
    {
      hf_isMatterOnlyAccessory = [val hf_isMatterOnlyAccessory];
    }

    v3 = hf_isMatterOnlyAccessory ^ 1;
  }

LABEL_16:

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
  return v3 & 1;
}

- (id)hf_updateValue:()HFIncludedContextProtocol forContextType:
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = HFLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy = self;
    v28 = 2080;
    selfCopy2 = "[HMAccessory(HFIncludedContextProtocol) hf_updateValue:forContextType:]";
    v30 = 1024;
    *v31 = a3;
    *&v31[4] = 2048;
    *&v31[6] = a4;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "(%@:%s) Updating value to %{BOOL}d for context %lu", buf, 0x26u);
  }

  v8 = objc_opt_new();
  v9 = [self hf_updateValueForCurrentObjectOnly:a3 forContextType:a4];
  [v8 addObject:v9];
  if (([self hf_showAsIndividualServices] & 1) == 0)
  {
    v21 = v9;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    hf_visibleServices = [self hf_visibleServices];
    v11 = [hf_visibleServices countByEnumeratingWithState:&v22 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(hf_visibleServices);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          if ([v15 hf_isOnForContextType:a4] != a3 || objc_msgSend(v15, "hf_shouldBeOnForContextType:", a4) != a3)
          {
            v16 = HFLogForCategory(0);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138413314;
              selfCopy = v15;
              v28 = 2112;
              selfCopy2 = self;
              v30 = 2080;
              *v31 = "[HMAccessory(HFIncludedContextProtocol) hf_updateValue:forContextType:]";
              *&v31[8] = 1024;
              *&v31[10] = a3;
              v32 = 2048;
              v33 = a4;
              _os_log_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_DEFAULT, "Also update service:%@ parentAccessory: %@ in %s to %{BOOL}d for context %lu", buf, 0x30u);
            }

            v17 = [v15 hf_updateValue:a3 forContextType:a4];
            [v8 addObject:v17];
          }
        }

        v12 = [hf_visibleServices countByEnumeratingWithState:&v22 objects:v34 count:16];
      }

      while (v12);
    }

    v9 = v21;
  }

  v18 = [MEMORY[0x277D2C900] chainFutures:v8];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)hf_updateValueForCurrentObjectOnly:()HFIncludedContextProtocol forContextType:
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = HFLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy = self;
    v20 = 2080;
    v21 = "[HMAccessory(HFIncludedContextProtocol) hf_updateValueForCurrentObjectOnly:forContextType:]";
    v22 = 1024;
    v23 = a3;
    v24 = 2048;
    v25 = a4;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "(%@:%s) Updating value to %{BOOL}d for context %lu", buf, 0x26u);
  }

  if (a4 > 1)
  {
    if (a4 == 2)
    {
      if ([self hf_isCamera])
      {
        v10 = HFLogForCategory(0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          selfCopy = "[HMAccessory(HFIncludedContextProtocol) hf_updateValueForCurrentObjectOnly:forContextType:]";
          _os_log_error_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_ERROR, "(%s) Attempting to update camera accessory's favorite value.", buf, 0xCu);
        }

        goto LABEL_18;
      }

      v9 = @"HFApplicationDataAccessoryIsFavoriteKey_v2";
      goto LABEL_21;
    }

    if (a4 != 3)
    {
      goto LABEL_22;
    }

    v9 = @"HFApplicationDataAccessoryShowInHomeDashboard";
LABEL_21:
    applicationData = [self applicationData];
    v13 = [MEMORY[0x277CCABB0] numberWithBool:a3];
    HFAppDataSetValueIfChanged(applicationData, v9, v13);

    goto LABEL_22;
  }

  if (!a4)
  {
    v9 = @"HFApplicationDataAccessoryIsFavoriteKey";
    goto LABEL_21;
  }

  if (a4 == 1)
  {
    if ([self hf_shouldHideForContextType:1])
    {
      v8 = HFLogForCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        hf_prettyDescription = [self hf_prettyDescription];
        *buf = 136315394;
        selfCopy = "[HMAccessory(HFIncludedContextProtocol) hf_updateValueForCurrentObjectOnly:forContextType:]";
        v20 = 2112;
        v21 = hf_prettyDescription;
        _os_log_error_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "(%s) Attempting to update unsupported accessory's include in status value: %@", buf, 0x16u);
      }

LABEL_18:
      futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
      goto LABEL_23;
    }

    v9 = @"HFApplicationDataAccessoryIsVisibleInHomeStatusKey";
    goto LABEL_21;
  }

LABEL_22:
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __92__HMAccessory_HFIncludedContextProtocol__hf_updateValueForCurrentObjectOnly_forContextType___block_invoke;
  v17[3] = &unk_277DF2C68;
  v17[4] = self;
  futureWithNoResult = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v17];
LABEL_23:
  v14 = *MEMORY[0x277D85DE8];

  return futureWithNoResult;
}

- (uint64_t)hf_anyNonSensorServiceIsOnForContextType:()HFIncludedContextProtocol
{
  hf_visibleServices = [self hf_visibleServices];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__HMAccessory_HFIncludedContextProtocol__hf_anyNonSensorServiceIsOnForContextType___block_invoke;
  v7[3] = &__block_descriptor_40_e19_B16__0__HMService_8l;
  v7[4] = a3;
  v5 = [hf_visibleServices na_any:v7];

  return v5;
}

- (uint64_t)_areAllSensorServices
{
  hf_visibleServices = [self hf_visibleServices];
  v2 = [hf_visibleServices na_all:&__block_literal_global_34_4];

  return v2;
}

@end