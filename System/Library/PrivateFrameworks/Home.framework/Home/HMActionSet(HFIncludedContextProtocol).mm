@interface HMActionSet(HFIncludedContextProtocol)
- (BOOL)hf_hasSetForContextType:()HFIncludedContextProtocol;
- (id)hf_updateValue:()HFIncludedContextProtocol forContextType:;
- (uint64_t)hf_isOnForContextType:()HFIncludedContextProtocol;
- (uint64_t)hf_shouldBeOnForContextType:()HFIncludedContextProtocol;
@end

@implementation HMActionSet(HFIncludedContextProtocol)

- (uint64_t)hf_isOnForContextType:()HFIncludedContextProtocol
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3 == 3)
  {
    applicationData = [self applicationData];
    v4 = applicationData;
    v5 = @"HFApplicationDataActionSetShowInHomeDashboard";
    goto LABEL_10;
  }

  if (a3 == 2)
  {
    v6 = HFLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "[HMActionSet(HFIncludedContextProtocol) hf_isOnForContextType:]";
      _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "(%s) Action sets are not favoritable", &v12, 0xCu);
    }

    goto LABEL_8;
  }

  if (a3)
  {
LABEL_8:
    v7 = *MEMORY[0x277D85DE8];
    return 0;
  }

  applicationData = [self applicationData];
  v4 = applicationData;
  v5 = @"HFApplicationDataActionSetIsFavoriteKey";
LABEL_10:
  v9 = [applicationData objectForKeyedSubscript:v5];
  bOOLValue = [v9 BOOLValue];

  v11 = *MEMORY[0x277D85DE8];
  return bOOLValue;
}

- (BOOL)hf_hasSetForContextType:()HFIncludedContextProtocol
{
  v13 = *MEMORY[0x277D85DE8];
  switch(a3)
  {
    case 3:
      applicationData = [self applicationData];
      v4 = applicationData;
      v5 = @"HFApplicationDataActionSetShowInHomeDashboard";
      goto LABEL_10;
    case 2:
      v6 = HFLogForCategory(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v11 = 136315138;
        v12 = "[HMActionSet(HFIncludedContextProtocol) hf_hasSetForContextType:]";
        _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "(%s) Action sets are not favoritable. Returning NO.", &v11, 0xCu);
      }

      break;
    case 0:
      applicationData = [self applicationData];
      v4 = applicationData;
      v5 = @"HFApplicationDataActionSetIsFavoriteKey";
LABEL_10:
      v8 = [applicationData objectForKeyedSubscript:v5];
      v7 = v8 != 0;

      goto LABEL_11;
  }

  v7 = 0;
LABEL_11:
  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (uint64_t)hf_shouldBeOnForContextType:()HFIncludedContextProtocol
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3 != 3)
  {
    if (a3 == 2)
    {
      v5 = HFLogForCategory(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v11 = 136315138;
        v12 = "[HMActionSet(HFIncludedContextProtocol) hf_shouldBeOnForContextType:]";
        _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "(%s) Favoriting is not applicable to ActionSets", &v11, 0xCu);
      }
    }

    else if (!a3)
    {
      if (([self hf_isOnForContextType:?] & 1) == 0)
      {
        result = [self hf_hasSetForContextType:0] ^ 1;
LABEL_18:
        v10 = *MEMORY[0x277D85DE8];
        return result;
      }

LABEL_17:
      result = 1;
      goto LABEL_18;
    }

    result = 0;
    goto LABEL_18;
  }

  if ([self hf_hasSetForContextType:?])
  {
    v6 = *MEMORY[0x277D85DE8];
    selfCopy2 = self;
    v8 = 3;
  }

  else
  {
    if (![self hf_hasSetForContextType:0])
    {
      goto LABEL_17;
    }

    v9 = *MEMORY[0x277D85DE8];
    selfCopy2 = self;
    v8 = 0;
  }

  return [selfCopy2 hf_isOnForContextType:v8];
}

- (id)hf_updateValue:()HFIncludedContextProtocol forContextType:
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = HFLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    selfCopy = self;
    v17 = 2080;
    v18 = "[HMActionSet(HFIncludedContextProtocol) hf_updateValue:forContextType:]";
    v19 = 1024;
    v20 = a3;
    v21 = 2048;
    v22 = a4;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "(%@:%s) Updating value to %{BOOL}d for context %lu", buf, 0x26u);
  }

  if (a4 > 1)
  {
    if (a4 == 2)
    {
      NSLog(&cfstr_ActionSetsAreN.isa);
      goto LABEL_13;
    }

    if (a4 != 3)
    {
      goto LABEL_13;
    }

    applicationData = [self applicationData];
    v9 = [MEMORY[0x277CCABB0] numberWithBool:a3];
    v10 = @"HFApplicationDataActionSetShowInHomeDashboard";
LABEL_11:
    HFAppDataSetValueIfChanged(applicationData, v10, v9);

    goto LABEL_13;
  }

  if (!a4)
  {
    applicationData = [self applicationData];
    v9 = [MEMORY[0x277CCABB0] numberWithBool:a3];
    v10 = @"HFApplicationDataActionSetIsFavoriteKey";
    goto LABEL_11;
  }

  if (a4 == 1)
  {
    NSLog(&cfstr_ActionSetsCann.isa);
  }

LABEL_13:
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __72__HMActionSet_HFIncludedContextProtocol__hf_updateValue_forContextType___block_invoke;
  v14[3] = &unk_277DF2C68;
  v14[4] = self;
  v11 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v14];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end