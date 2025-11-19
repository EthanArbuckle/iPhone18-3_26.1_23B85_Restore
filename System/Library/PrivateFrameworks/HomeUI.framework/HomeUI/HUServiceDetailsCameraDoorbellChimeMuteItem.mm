@interface HUServiceDetailsCameraDoorbellChimeMuteItem
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUServiceDetailsCameraDoorbellChimeMuteItem

- (id)_subclass_updateWithOptions:(id)a3
{
  v34[1] = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v4 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [v6 profile];
    v8 = [v7 hf_doorbellChimeMuteCharacteristic];

    if (v8)
    {
      v9 = [MEMORY[0x277CBEB38] dictionary];
      v10 = _HULocalizedStringWithDefaultValue(@"HUCameraDoorbellChimeMuteSwitchTitle", @"HUCameraDoorbellChimeMuteSwitchTitle", 1);
      [v9 setObject:v10 forKeyedSubscript:*MEMORY[0x277D13F60]];

      v11 = [MEMORY[0x277D146E8] sharedDispatcher];
      v12 = [v11 home];
      if ([v12 hf_currentUserIsAdministrator])
      {
        v13 = MEMORY[0x277CBEC28];
      }

      else
      {
        v13 = MEMORY[0x277CBEC38];
      }

      [v9 setObject:v13 forKeyedSubscript:*MEMORY[0x277D13EA8]];

      objc_opt_class();
      v14 = [v8 value];
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      v17 = [v16 BOOLValue];
      v18 = v17 ^ 1;
      v19 = [MEMORY[0x277CCABB0] numberWithInteger:HFPrimaryStateFromBOOL()];
      [v9 setObject:v19 forKeyedSubscript:*MEMORY[0x277D14068]];

      v20 = HFLogForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v30[0] = 67109120;
        v30[1] = v18;
        _os_log_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_DEFAULT, "Displaying doorbell chime state - should play sound = %{BOOL}d.", v30, 8u);
      }

      v21 = MEMORY[0x277D2C900];
      v22 = MEMORY[0x277D14780];
    }

    else
    {
      v26 = HFLogForCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v30[0]) = 0;
        _os_log_impl(&dword_20CEB6000, v26, OS_LOG_TYPE_DEFAULT, "Hiding doorbell chime item for camera. Missing mute characteristic.", v30, 2u);
      }

      v21 = MEMORY[0x277D2C900];
      v27 = MEMORY[0x277D14780];
      v31 = *MEMORY[0x277D13FB8];
      v32 = MEMORY[0x277CBEC38];
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v22 = v27;
    }

    v28 = [v22 outcomeWithResults:v9];
    v25 = [v21 futureWithResult:v28];
  }

  else
  {
    v23 = MEMORY[0x277D2C900];
    v24 = MEMORY[0x277D14780];
    v33 = *MEMORY[0x277D13FB8];
    v34[0] = MEMORY[0x277CBEC38];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v9 = [v24 outcomeWithResults:v8];
    v25 = [v23 futureWithResult:v9];
  }

  return v25;
}

@end