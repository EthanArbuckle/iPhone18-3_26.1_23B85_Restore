@interface HMActionSetBuilder(HFIncludedContextProtocol)
- (void)hf_setValue:()HFIncludedContextProtocol forContextType:;
@end

@implementation HMActionSetBuilder(HFIncludedContextProtocol)

- (void)hf_setValue:()HFIncludedContextProtocol forContextType:
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = HFLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138413058;
    v13 = a1;
    v14 = 2080;
    v15 = "[HMActionSetBuilder(HFIncludedContextProtocol) hf_setValue:forContextType:]";
    v16 = 1024;
    v17 = a3;
    v18 = 2048;
    v19 = a4;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "(%@:%s) Updating value to %{BOOL}d for context %lu", &v12, 0x26u);
  }

  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        NSLog(&cfstr_ActionSetsCann.isa);
      }

      goto LABEL_13;
    }

    v8 = [a1 applicationData];
    v9 = [MEMORY[0x277CCABB0] numberWithBool:a3];
    v10 = @"HFApplicationDataActionSetIsFavoriteKey";
LABEL_11:
    HFAppDataSetValueIfChanged(v8, v10, v9);

    goto LABEL_13;
  }

  if (a4 == 2)
  {
    NSLog(&cfstr_ActionSetsAreN.isa);
    goto LABEL_13;
  }

  if (a4 == 3)
  {
    v8 = [a1 applicationData];
    v9 = [MEMORY[0x277CCABB0] numberWithBool:a3];
    v10 = @"HFApplicationDataActionSetShowInHomeDashboard";
    goto LABEL_11;
  }

LABEL_13:
  v11 = *MEMORY[0x277D85DE8];
}

@end