@interface HUServiceDetailsCameraDoorbellChimeMuteItem
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HUServiceDetailsCameraDoorbellChimeMuteItem

- (id)_subclass_updateWithOptions:(id)options
{
  v34[1] = *MEMORY[0x277D85DE8];
  objc_opt_class();
  sourceServiceItem = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  if (objc_opt_isKindOfClass())
  {
    v5 = sourceServiceItem;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    profile = [v6 profile];
    hf_doorbellChimeMuteCharacteristic = [profile hf_doorbellChimeMuteCharacteristic];

    if (hf_doorbellChimeMuteCharacteristic)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v10 = _HULocalizedStringWithDefaultValue(@"HUCameraDoorbellChimeMuteSwitchTitle", @"HUCameraDoorbellChimeMuteSwitchTitle", 1);
      [dictionary setObject:v10 forKeyedSubscript:*MEMORY[0x277D13F60]];

      mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
      home = [mEMORY[0x277D146E8] home];
      if ([home hf_currentUserIsAdministrator])
      {
        v13 = MEMORY[0x277CBEC28];
      }

      else
      {
        v13 = MEMORY[0x277CBEC38];
      }

      [dictionary setObject:v13 forKeyedSubscript:*MEMORY[0x277D13EA8]];

      objc_opt_class();
      value = [hf_doorbellChimeMuteCharacteristic value];
      if (objc_opt_isKindOfClass())
      {
        v15 = value;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      bOOLValue = [v16 BOOLValue];
      v18 = bOOLValue ^ 1;
      v19 = [MEMORY[0x277CCABB0] numberWithInteger:HFPrimaryStateFromBOOL()];
      [dictionary setObject:v19 forKeyedSubscript:*MEMORY[0x277D14068]];

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
      dictionary = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v22 = v27;
    }

    v28 = [v22 outcomeWithResults:dictionary];
    v25 = [v21 futureWithResult:v28];
  }

  else
  {
    v23 = MEMORY[0x277D2C900];
    v24 = MEMORY[0x277D14780];
    v33 = *MEMORY[0x277D13FB8];
    v34[0] = MEMORY[0x277CBEC38];
    hf_doorbellChimeMuteCharacteristic = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    dictionary = [v24 outcomeWithResults:hf_doorbellChimeMuteCharacteristic];
    v25 = [v23 futureWithResult:dictionary];
  }

  return v25;
}

@end