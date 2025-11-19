@interface HMService(HFIncludedContextProtocol)
- (BOOL)hf_hasSetForContextType:()HFIncludedContextProtocol;
- (id)hf_updateValue:()HFIncludedContextProtocol forContextType:;
- (uint64_t)hf_isOnForContextType:()HFIncludedContextProtocol;
- (uint64_t)hf_shouldBeOnForContextType:()HFIncludedContextProtocol;
- (uint64_t)hf_shouldHideForContextType:()HFIncludedContextProtocol;
@end

@implementation HMService(HFIncludedContextProtocol)

- (uint64_t)hf_isOnForContextType:()HFIncludedContextProtocol
{
  if (a3 > 3)
  {
    return 0;
  }

  v3 = off_277DFC808[a3];
  v4 = [a1 applicationData];
  v5 = [v4 objectForKeyedSubscript:v3];
  v6 = [v5 BOOLValue];

  return v6;
}

- (BOOL)hf_hasSetForContextType:()HFIncludedContextProtocol
{
  if (a3 <= 3)
  {
    v4 = off_277DFC808[a3];
    v5 = [a1 applicationData];
    v6 = [v5 objectForKeyedSubscript:v4];
    v3 = v6 != 0;
  }

  return v3;
}

- (uint64_t)hf_shouldBeOnForContextType:()HFIncludedContextProtocol
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return v3 & 1;
      }

      v3 = 1;
      if ([a1 hf_isOnForContextType:?])
      {
        return v3 & 1;
      }

      v5 = a1;
      v6 = 1;
      goto LABEL_22;
    }

    if (([a1 hf_isSensorService] & 1) == 0)
    {
      if (([a1 hf_isOnForContextType:0] & 1) == 0)
      {
        v5 = a1;
        v6 = 0;
LABEL_22:
        v10 = [v5 hf_hasSetForContextType:v6];
        goto LABEL_23;
      }

      v3 = 1;
      return v3 & 1;
    }

    goto LABEL_15;
  }

  if (a3 == 2)
  {
    if ([a1 hf_isSensorService])
    {
      goto LABEL_15;
    }

    v7 = a1;
    v8 = 2;
  }

  else
  {
    if (a3 != 3)
    {
      return v3 & 1;
    }

    if ([a1 hf_isSensorService])
    {
LABEL_15:
      v3 = 0;
      return v3 & 1;
    }

    if (![a1 hf_hasSetForContextType:3])
    {
      v10 = [a1 hf_isProgrammableSwitch];
LABEL_23:
      v3 = v10 ^ 1;
      return v3 & 1;
    }

    v7 = a1;
    v8 = 3;
  }

  return [v7 hf_isOnForContextType:v8];
}

- (uint64_t)hf_shouldHideForContextType:()HFIncludedContextProtocol
{
  if ((a3 - 2) < 2)
  {
    goto LABEL_4;
  }

  if (a3 == 1)
  {
    v8 = [a1 serviceType];
    v9 = [HFStatusItemProvider hasStatusItemForServiceType:v8];
    goto LABEL_10;
  }

  if (!a3)
  {
LABEL_4:
    v5 = [a1 accessory];
    v6 = [v5 home];
    v7 = [v6 hf_currentUserIsRestrictedGuest];

    if (v7 & 1) != 0 || ([a1 hf_isInGroup] & 1) != 0 || (objc_msgSend(a1, "hf_isSensorService") & 1) != 0 || (objc_msgSend(a1, "hf_isNetworkRouter"))
    {
      v3 = 1;
      return v3 & 1;
    }

    v11 = [a1 accessory];
    v12 = [v11 hf_isMultiServiceAccessory];

    if (!v12)
    {
      v3 = 0;
      return v3 & 1;
    }

    v8 = [a1 accessory];
    v9 = [v8 hf_showAsIndividualServices];
LABEL_10:
    v3 = v9 ^ 1;
  }

  return v3 & 1;
}

- (id)hf_updateValue:()HFIncludedContextProtocol forContextType:
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = HFLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v16 = a1;
    v17 = 2080;
    v18 = "[HMService(HFIncludedContextProtocol) hf_updateValue:forContextType:]";
    v19 = 1024;
    v20 = a3;
    v21 = 2048;
    v22 = a4;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "(%@:%s) Updating value to %{BOOL}d for context %lu", buf, 0x26u);
  }

  if (a4 <= 3)
  {
    v8 = off_277DFC808[a4];
    v9 = [a1 applicationData];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:a3];
    HFAppDataSetValueIfChanged(v9, v8, v10);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__HMService_HFIncludedContextProtocol__hf_updateValue_forContextType___block_invoke;
  v14[3] = &unk_277DF2C68;
  v14[4] = a1;
  v11 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v14];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end