@interface HMAssistantAccessControl(HFAdditions)
- (uint64_t)hf_effectivelyEnabledForSupportedVoiceRecognitionLanguages:()HFAdditions currentUserIsOwner:;
@end

@implementation HMAssistantAccessControl(HFAdditions)

- (uint64_t)hf_effectivelyEnabledForSupportedVoiceRecognitionLanguages:()HFAdditions currentUserIsOwner:
{
  v52 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = HFLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 138412546;
    v44 = v9;
    v45 = 1024;
    *v46 = a4;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "%@ Is Current User the Owner?: %{BOOL}d", buf, 0x12u);
  }

  if ([self isEnabled])
  {
    accessories = [self accessories];
    isEnabled4 = [accessories count] != 0;

    if (!a4)
    {
      goto LABEL_5;
    }

LABEL_11:
    v15 = HFLogForCategory(0);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v20 = NSStringFromSelector(a2);
    accessories2 = [self accessories];
    v22 = [accessories2 count];
    isEnabled = [self isEnabled];
    *buf = 138413058;
    v44 = v20;
    v45 = 1024;
    *v46 = isEnabled4;
    *&v46[4] = 2048;
    *&v46[6] = v22;
    *&v46[14] = 1024;
    *&v46[16] = isEnabled;
    _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "%@ = %{BOOL}d because (owner case) Owner has Siri (Assistant) accessories count = %lu, self.enabled = %{BOOL}d", buf, 0x22u);

LABEL_25:
    goto LABEL_26;
  }

  isEnabled4 = 0;
  if (a4)
  {
    goto LABEL_11;
  }

LABEL_5:
  accessories3 = [self accessories];
  v13 = [accessories3 count];

  if (!v13)
  {
    v15 = HFLogForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v24 = NSStringFromSelector(a2);
      *buf = 138412290;
      v44 = v24;
      _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "%@ No Siri accessories available for this user", buf, 0xCu);
    }

    v25 = 0;
    goto LABEL_23;
  }

  accessories4 = [self accessories];
  v15 = [accessories4 na_filter:&__block_literal_global_130];

  if (![v15 count])
  {
    accessories5 = [self accessories];
    v27 = [accessories5 na_filter:&__block_literal_global_3_19];

    v28 = HFLogForCategory(0);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = NSStringFromSelector(a2);
      v30 = [v15 count];
      v31 = [v27 count];
      accessories6 = [self accessories];
      v33 = [accessories6 count];
      *buf = 138413570;
      v44 = v29;
      v45 = 2048;
      *v46 = v30;
      *&v46[8] = 2112;
      *&v46[10] = v15;
      *&v46[18] = 2048;
      v47 = v31;
      v48 = 2112;
      v49 = v27;
      v50 = 2048;
      v51 = v33;
      _os_log_impl(&dword_20D9BF000, v28, OS_LOG_TYPE_DEFAULT, "%@ (non-owner case) Siri Accessories NOT Supporting Voice Recognition (%lu) = [%@] / Supporting Multi-User (%lu) = [%@] (Total Siri Accessory count: (%lu)", buf, 0x3Eu);
    }

    if (![v27 count])
    {
      NSLog(&cfstr_ThisShouldNotH_0.isa);
    }

    v34 = [v27 count];
    v35 = [v15 count]+ v34;
    accessories7 = [self accessories];
    v37 = [accessories7 count];

    if (v35 != v37)
    {
      NSLog(&cfstr_ThisShouldNotH_1.isa);
    }

    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __119__HMAssistantAccessControl_HFAdditions__hf_effectivelyEnabledForSupportedVoiceRecognitionLanguages_currentUserIsOwner___block_invoke_8;
    v41[3] = &unk_277DF3888;
    v42 = v7;
    v25 = [v27 na_any:v41];

LABEL_23:
    isEnabled4 = [self isEnabled] & v25;
    v15 = HFLogForCategory(0);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v20 = NSStringFromSelector(a2);
    isEnabled2 = [self isEnabled];
    *buf = 138413058;
    v44 = v20;
    v45 = 1024;
    *v46 = isEnabled4;
    *&v46[4] = 1024;
    *&v46[6] = v25;
    *&v46[10] = 1024;
    *&v46[12] = isEnabled2;
    _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "%@ = %{BOOL}d (non-owner case) At least one Siri accessory is on a supported Voice Recognition language = %{BOOL}d, & self.enabled = %{BOOL}d", buf, 0x1Eu);
    goto LABEL_25;
  }

  v16 = HFLogForCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = NSStringFromSelector(a2);
    isEnabled3 = [self isEnabled];
    v19 = [v15 count];
    *buf = 138412802;
    v44 = v17;
    v45 = 1024;
    *v46 = isEnabled3;
    *&v46[4] = 2048;
    *&v46[6] = v19;
    _os_log_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_DEFAULT, "%@ = %{BOOL}d (non-owner case) Some Siri accessories don't support Voice Recognition (%lu), so we'll rely on self.enabled", buf, 0x1Cu);
  }

  isEnabled4 = [self isEnabled];
LABEL_26:

  v39 = *MEMORY[0x277D85DE8];
  return isEnabled4;
}

@end