@interface HFResidentDeviceStatusItem
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HFResidentDeviceStatusItem

- (id)_subclass_updateWithOptions:(id)options
{
  v71[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  if (+[HFUtilities shouldSuppressAllErrorsForDemo])
  {
    v5 = MEMORY[0x277D2C900];
    v70 = @"hidden";
    v71[0] = MEMORY[0x277CBEC38];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:&v70 count:1];
    v7 = [HFItemUpdateOutcome outcomeWithResults:v6];
    v8 = [v5 futureWithResult:v7];
    goto LABEL_38;
  }

  v6 = [optionsCopy objectForKeyedSubscript:HFItemUpdateOptionLogger];
  home = [(HFStatusItem *)self home];
  hf_remoteAccessState = [home hf_remoteAccessState];

  v11 = +[HFHomeKitDispatcher sharedDispatcher];
  homeManager = [v11 homeManager];
  residentProvisioningStatus = [homeManager residentProvisioningStatus];

  if (v6)
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    loggerActivity = [v6 loggerActivity];
    os_activity_scope_enter(loggerActivity, &state);

    v15 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 1024;
      *&buf[14] = residentProvisioningStatus;
      _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "%@: residentProvisioningStatus = %d", buf, 0x12u);
    }

    os_activity_scope_leave(&state);
  }

  else
  {
    v62 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 1024;
      *&buf[14] = residentProvisioningStatus;
      _os_log_impl(&dword_20D9BF000, v62, OS_LOG_TYPE_DEFAULT, "%@: residentProvisioningStatus = %d", buf, 0x12u);
    }
  }

  v16 = MEMORY[0x277CBEB98];
  home2 = [(HFStatusItem *)self home];
  residentDevices = [home2 residentDevices];
  v19 = [v16 setWithArray:residentDevices];
  v7 = [v19 na_filter:&__block_literal_global_164];

  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __58__HFResidentDeviceStatusItem__subclass_updateWithOptions___block_invoke_2;
  v67[3] = &unk_277DF7F00;
  v67[4] = self;
  v20 = [v7 na_filter:v67];
  v21 = [v20 na_filter:&__block_literal_global_7_7];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ((residentProvisioningStatus & 1) == 0)
  {
    if ((residentProvisioningStatus & 2) == 0 || hf_remoteAccessState != 1)
    {
      if (![v7 count])
      {
        home3 = [(HFStatusItem *)self home];
        accessories = [home3 accessories];
        if ([accessories count])
        {
          home4 = [(HFStatusItem *)self home];
          hf_isCurrentLocationHome = [home4 hf_isCurrentLocationHome];

          if ((hf_isCurrentLocationHome & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        else
        {
        }
      }

      if ([v21 count])
      {
        if ([v21 count] == 1)
        {
          anyObject = [v21 anyObject];
          v29 = [(HFStatusItem *)self displayNameForHomeKitObject:anyObject];

          v36 = HFLocalizedStringWithFormat(@"HFStatusTitleResidentDevice_OneLowBattery", @"%@", v30, v31, v32, v33, v34, v35, v29);
        }

        else
        {
          v45 = [v21 count];
          v36 = HFLocalizedStringWithFormat(@"HFStatusTitleResidentDevice_MultipleLowBattery", @"%lu", v46, v47, v48, v49, v50, v51, v45);
        }

        [dictionary setObject:v21 forKeyedSubscript:@"representedHomeKitObjects"];
        v52 = _HFLocalizedStringWithDefaultValue(@"HFStatusShortTitleResidentDevice_LowBattery", @"HFStatusShortTitleResidentDevice_LowBattery", 1);
        [dictionary setObject:v52 forKeyedSubscript:@"shortTitle"];

        if (v36)
        {
          goto LABEL_30;
        }
      }

LABEL_36:
      [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
      goto LABEL_37;
    }

    if (v6)
    {
      *buf = 0;
      *&buf[8] = 0;
      loggerActivity2 = [v6 loggerActivity];
      os_activity_scope_enter(loggerActivity2, buf);

      v24 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(state.opaque[0]) = 138412290;
        *(state.opaque + 4) = self;
        v25 = "%@: showing No Remote Access because the status is HMHomeManagerKeyTransferStatusNotAtHome and there are no enabled resident devices on the account";
LABEL_17:
        _os_log_impl(&dword_20D9BF000, v24, OS_LOG_TYPE_DEFAULT, v25, &state, 0xCu);
        goto LABEL_18;
      }

      goto LABEL_18;
    }

    v63 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = self;
      v64 = "%@: showing No Remote Access because the status is HMHomeManagerKeyTransferStatusNotAtHome and there are no enabled resident devices on the account";
      goto LABEL_52;
    }

    goto LABEL_53;
  }

  if (hf_remoteAccessState == 1)
  {
    if (v6)
    {
      *buf = 0;
      *&buf[8] = 0;
      loggerActivity3 = [v6 loggerActivity];
      os_activity_scope_enter(loggerActivity3, buf);

      v24 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(state.opaque[0]) = 138412290;
        *(state.opaque + 4) = self;
        v25 = "%@: showing No Remote Access because some resident on the account needs 2FA and there are no other resident devices";
        goto LABEL_17;
      }

LABEL_18:

      os_activity_scope_leave(buf);
LABEL_19:
      v27 = @"HFStatusTitleResidentDevice_RemoteAccessUnavailable";
      goto LABEL_29;
    }

    v63 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = self;
      v64 = "%@: showing No Remote Access because some resident on the account needs 2FA and there are no other resident devices";
LABEL_52:
      _os_log_impl(&dword_20D9BF000, v63, OS_LOG_TYPE_DEFAULT, v64, buf, 0xCu);
    }

LABEL_53:

    goto LABEL_19;
  }

  if (v6)
  {
    *buf = 0;
    *&buf[8] = 0;
    loggerActivity4 = [v6 loggerActivity];
    os_activity_scope_enter(loggerActivity4, buf);

    v38 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(state.opaque[0]) = 138412290;
      *(state.opaque + 4) = self;
      _os_log_impl(&dword_20D9BF000, v38, OS_LOG_TYPE_DEFAULT, "%@: showing Home Hub Not Set Up because some resident on the account needs 2FA, but there is some other enabled resident device in the home", &state, 0xCu);
    }

    os_activity_scope_leave(buf);
  }

  else
  {
    v65 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_impl(&dword_20D9BF000, v65, OS_LOG_TYPE_DEFAULT, "%@: showing Home Hub Not Set Up because some resident on the account needs 2FA, but there is some other enabled resident device in the home", buf, 0xCu);
    }
  }

  v27 = @"HFStatusTitleResidentDevice_NeedsTwoFactorAuth";
LABEL_29:
  v36 = _HFLocalizedStringWithDefaultValue(v27, v27, 1);
  if (!v36)
  {
    goto LABEL_36;
  }

LABEL_30:
  v39 = [MEMORY[0x277D755D0] configurationWithPointSize:24.0];
  v40 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:@"exclamationmark.circle.fill" configuration:v39];
  [dictionary setObject:v40 forKeyedSubscript:@"icon"];

  [dictionary setObject:&unk_282524870 forKeyedSubscript:@"priority"];
  [dictionary setObject:&unk_282524888 forKeyedSubscript:@"statusItemCategory"];
  [dictionary setObject:v36 forKeyedSubscript:@"title"];
  v41 = _HFLocalizedStringWithDefaultValue(@"HFStatusSortKeyResidentDevice", @"HFStatusSortKeyResidentDevice", 1);
  [dictionary setObject:v41 forKeyedSubscript:@"sortKey"];

LABEL_37:
  v53 = [v20 na_flatMap:&__block_literal_global_43_1];
  home5 = [(HFStatusItem *)self home];
  v55 = [v53 setByAddingObject:home5];

  v56 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [dictionary setObject:v56 forKeyedSubscript:@"dependentHomeKitClasses"];

  [dictionary setObject:v55 forKeyedSubscript:@"dependentHomeKitObjects"];
  v57 = MEMORY[0x277CBEC38];
  [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"remoteAccessDependency"];
  [dictionary setObject:v57 forKeyedSubscript:@"currentHomeDependency"];
  v58 = MEMORY[0x277D2C900];
  v59 = [HFItemUpdateOutcome outcomeWithResults:dictionary];
  v8 = [v58 futureWithResult:v59];

LABEL_38:
  v60 = *MEMORY[0x277D85DE8];

  return v8;
}

uint64_t __58__HFResidentDeviceStatusItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 hf_linkedAccessory];
  if (v4)
  {
    v5 = [*(a1 + 32) room];
    if (v5)
    {
      v6 = [*(a1 + 32) room];
      v7 = [v3 hf_linkedAccessory];
      v8 = [v7 room];
      v9 = [v6 isEqual:v8];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

id __58__HFResidentDeviceStatusItem__subclass_updateWithOptions___block_invoke_40(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB98];
  v3 = a2;
  v4 = [v3 hf_linkedAccessory];
  v5 = [v2 setWithObjects:{v3, v4, 0}];

  return v5;
}

@end