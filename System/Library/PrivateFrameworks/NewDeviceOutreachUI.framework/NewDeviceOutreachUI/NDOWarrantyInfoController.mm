@interface NDOWarrantyInfoController
- (BOOL)_isValidSubscriptionPlan;
- (BOOL)isWarrantyValid;
- (NDOACController)acController;
- (NDOWarrantyInfoController)initWithSpecifier:(id)specifier;
- (id)_errorStateConfig;
- (id)_noAccountConfig;
- (id)coverageItemSubTitle:(id)title;
- (id)noCoverageInternalSubtitle:(id)subtitle;
- (id)specifierForID:(id)d inSpecifiers:(id)specifiers;
- (id)specifiers;
- (void)_addKey:(id)key isCopyable:(BOOL)copyable toSpecifiers:(id)specifiers;
- (void)_refresh:(id)_refresh;
- (void)_refreshWithForcedNetworkPolicy:(BOOL)policy forceUpdateFollowup:(BOOL)followup withCompletion:(id)completion;
- (void)_setValue:(id)value forSpecifier:(id)specifier;
- (void)_setValue:(id)value forSpecifierWithKey:(id)key inSpecifiers:(id)specifiers;
- (void)benefitsDescLinkTapped:(id)tapped;
- (void)errorUI;
- (void)footer1Tapped:(id)tapped;
- (void)footer2Tapped:(id)tapped;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)hideUI;
- (void)loadView;
- (void)managePlanPressed:(id)pressed;
- (void)ndoAppleCareCoveragePressed:(id)pressed;
- (void)outreachFinishedForDeviceWithSerialNumber:(id)number withCompletion:(unint64_t)completion;
- (void)postCAEventWithDeviceInfo:(id)info;
- (void)reloadSpecifiers;
- (void)showUI;
- (void)updateAppStoreLookupWithSpecifiers:(id)specifiers;
- (void)updateAppSupportSpecifiersWithSpecifiers:(id)specifiers;
@end

@implementation NDOWarrantyInfoController

- (NDOWarrantyInfoController)initWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v8.receiver = self;
  v8.super_class = NDOWarrantyInfoController;
  v5 = [(NDOWarrantyInfoController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(NDOWarrantyInfoController *)v5 setSpecifier:specifierCopy];
  }

  return v6;
}

- (void)loadView
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_25BD8D000, self, a3, "%{public}s: Not signed in to icloud. Leaving...", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __37__NDOWarrantyInfoController_loadView__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__NDOWarrantyInfoController_loadView__block_invoke_2;
  block[3] = &unk_2799782A0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __37__NDOWarrantyInfoController_loadView__block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _NDOLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446210;
    v7 = "[NDOWarrantyInfoController loadView]_block_invoke_2";
    _os_log_impl(&dword_25BD8D000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: finished updating warranty", &v6, 0xCu);
  }

  v3 = [*(a1 + 32) specifier];
  v4 = [v3 propertyForKey:@"NDODeviceInfo"];

  [*(a1 + 32) postCAEventWithDeviceInfo:v4];
  [*(a1 + 32) showUI];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)postCAEventWithDeviceInfo:(id)info
{
  v10[1] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  warranty = [infoCopy warranty];
  coverageLocalizedLabel = [warranty coverageLocalizedLabel];

  if (!coverageLocalizedLabel)
  {
    v6 = _NDOLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(NDOWarrantyInfoController *)infoCopy postCAEventWithDeviceInfo:v6];
    }

    coverageLocalizedLabel = @"NULL";
  }

  v9 = @"coverageType";
  v10[0] = coverageLocalizedLabel;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [MEMORY[0x277D2D0C0] postCAEventFor:@"com.apple.newdeviceoutreach.coverage.viewload" eventDict:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)isWarrantyValid
{
  specifier = [(NDOWarrantyInfoController *)self specifier];
  v3 = [specifier propertyForKey:@"NDODeviceInfo"];

  warranty = [v3 warranty];
  device = [v3 device];
  deviceType = [device deviceType];

  v7 = objc_opt_new();
  v8 = v7;
  if (deviceType)
  {
    device2 = [v3 device];
    serialNumber = [device2 serialNumber];
    getDefaultDeviceInfoUsingForceCachedPolicy = [v8 getDeviceInfoUsingForceCachedPolicyForSerialNumber:serialNumber];
  }

  else
  {
    getDefaultDeviceInfoUsingForceCachedPolicy = [v7 getDefaultDeviceInfoUsingForceCachedPolicy];
  }

  warranty2 = [getDefaultDeviceInfoUsingForceCachedPolicy warranty];

  v13 = 0;
  if (warranty && warranty2)
  {
    v13 = [warranty isEqual:warranty2];
  }

  return v13;
}

- (void)_refresh:(id)_refresh
{
  _refreshCopy = _refresh;
  specifier = [(NDOWarrantyInfoController *)self specifier];
  v6 = [specifier propertyForKey:@"NDODeviceInfo"];

  objc_initWeak(&location, self);
  v7 = objc_opt_new();
  device = [v6 device];
  serialNumber = [device serialNumber];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __38__NDOWarrantyInfoController__refresh___block_invoke;
  v11[3] = &unk_2799783C8;
  objc_copyWeak(&v13, &location);
  v10 = _refreshCopy;
  v12 = v10;
  [v7 clearUserInitiatedFollowUpDismissalForSerialNumber:serialNumber withReply:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __38__NDOWarrantyInfoController__refresh___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __38__NDOWarrantyInfoController__refresh___block_invoke_2;
  v3[3] = &unk_2799782A0;
  v4 = *(a1 + 32);
  [WeakRetained _refreshWithForcedNetworkPolicy:1 forceUpdateFollowup:1 withCompletion:v3];
}

- (void)_refreshWithForcedNetworkPolicy:(BOOL)policy forceUpdateFollowup:(BOOL)followup withCompletion:(id)completion
{
  followupCopy = followup;
  policyCopy = policy;
  v62 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  specifier = [(NDOWarrantyInfoController *)self specifier];
  v47 = [specifier propertyForKey:@"NDODevice"];

  specifier2 = [(NDOWarrantyInfoController *)self specifier];
  v10 = [specifier2 propertyForKey:@"NDODeviceInfo"];

  specifier3 = [(NDOWarrantyInfoController *)self specifier];
  v12 = [specifier3 propertyForKey:@"isSettingsContainer"];

  specifier4 = [(NDOWarrantyInfoController *)self specifier];
  v14 = [specifier4 propertyForKey:@"NDOHostingController"];

  if (v12)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v12)
  {
    v16 = 0;
  }

  else
  {
    v16 = v14;
  }

  v17 = _NDOLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v59 = "[NDOWarrantyInfoController _refreshWithForcedNetworkPolicy:forceUpdateFollowup:withCompletion:]";
    v60 = 1024;
    v61 = v12 != 0;
    _os_log_impl(&dword_25BD8D000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s: checking for warranty in settings: %d", buf, 0x12u);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__NDOWarrantyInfoController__refreshWithForcedNetworkPolicy_forceUpdateFollowup_withCompletion___block_invoke;
  aBlock[3] = &unk_279978418;
  aBlock[4] = self;
  v57 = v12 != 0;
  v18 = v16;
  v55 = v18;
  v19 = completionCopy;
  v56 = v19;
  v20 = _Block_copy(aBlock);
  v21 = v20;
  if (!v12)
  {
    if (policyCopy)
    {
      if (v18)
      {
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __96__NDOWarrantyInfoController__refreshWithForcedNetworkPolicy_forceUpdateFollowup_withCompletion___block_invoke_90;
        v50[3] = &unk_279978468;
        v51 = v20;
        [v18 forceUpdateSpecifiersAndForceUpdateFollowup:followupCopy withCompletionHandler:v50];
        v33 = v51;
LABEL_28:

LABEL_39:
        v23 = v47;
        goto LABEL_40;
      }

      v43 = _NDOLogSystem();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v59 = "[NDOWarrantyInfoController _refreshWithForcedNetworkPolicy:forceUpdateFollowup:withCompletion:]";
        v44 = "%s: no achostingController, cannot call forceUpdateSpecifiersAndForceUpdateFollowup:withCompletionHandler:";
LABEL_37:
        _os_log_impl(&dword_25BD8D000, v43, OS_LOG_TYPE_DEFAULT, v44, buf, 0xCu);
      }
    }

    else
    {
      if (v18)
      {
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __96__NDOWarrantyInfoController__refreshWithForcedNetworkPolicy_forceUpdateFollowup_withCompletion___block_invoke_91;
        v48[3] = &unk_279978468;
        v49 = v20;
        [v18 updateSpecifiersWithCompletionHandler:v48];
        v33 = v49;
        goto LABEL_28;
      }

      v43 = _NDOLogSystem();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v59 = "[NDOWarrantyInfoController _refreshWithForcedNetworkPolicy:forceUpdateFollowup:withCompletion:]";
        v44 = "%s: no achostingController, cannot call updateSpecifiersWithCompletionHandler:";
        goto LABEL_37;
      }
    }

    v21[2](v21, v10);
    goto LABEL_39;
  }

  if (policyCopy)
  {
    v22 = 2;
  }

  else
  {
    v22 = 0;
  }

  v23 = v47;
  if (!(v10 | v47))
  {
    v24 = _NDOLogSystem();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [(NDOWarrantyInfoController *)v24 _refreshWithForcedNetworkPolicy:v25 forceUpdateFollowup:v26 withCompletion:v27, v28, v29, v30, v31];
    }

    [(NDOWarrantyInfoController *)self errorUI];
  }

  if (v15)
  {
    if (v10)
    {
      device = [v10 device];
    }

    else
    {
      device = v47;
    }

    deeplinkParams = [(NDOWarrantyInfoController *)self deeplinkParams];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __96__NDOWarrantyInfoController__refreshWithForcedNetworkPolicy_forceUpdateFollowup_withCompletion___block_invoke_89;
    v52[3] = &unk_279978440;
    v53 = v21;
    [v15 updateDeviceInfoForDevice:device usingPolicy:v22 params:deeplinkParams forceUpdateFollowup:followupCopy withReply:v52];

    if (v10)
    {
    }
  }

  else
  {
    v34 = _NDOLogSystem();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [(NDOWarrantyInfoController *)v34 _refreshWithForcedNetworkPolicy:v35 forceUpdateFollowup:v36 withCompletion:v37, v38, v39, v40, v41];
    }

    v21[2](v21, v10);
  }

LABEL_40:

  v45 = *MEMORY[0x277D85DE8];
}

void __96__NDOWarrantyInfoController__refreshWithForcedNetworkPolicy_forceUpdateFollowup_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) specifier];
    *buf = 136446722;
    v20 = "[NDOWarrantyInfoController _refreshWithForcedNetworkPolicy:forceUpdateFollowup:withCompletion:]_block_invoke";
    v21 = 2112;
    v22 = v5;
    v23 = 2112;
    v24 = v3;
    _os_log_impl(&dword_25BD8D000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: refresh completion: specifier: %@, deviceInfo: %@", buf, 0x20u);
  }

  if (*(a1 + 56) != 1)
  {
    v10 = [*(a1 + 40) specifiers];
    v9 = [v10 specifierForID:@"WARRANTY_DESCRIPTION"];

    if (v9)
    {
      v11 = _NDOLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v20 = "[NDOWarrantyInfoController _refreshWithForcedNetworkPolicy:forceUpdateFollowup:withCompletion:]_block_invoke";
        v21 = 2112;
        v22 = v3;
        _os_log_impl(&dword_25BD8D000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s: isHostSettings == NO, setting specifier deviceInfo: %@", buf, 0x16u);
      }

      [*(a1 + 32) setSpecifier:v9];
      v12 = [v9 propertyForKey:@"NDOWarranty"];
      if (v12)
      {
        v13 = [*(a1 + 32) specifier];
        [v13 setProperty:v12 forKey:@"NDOWarranty"];
      }

      v14 = [v9 propertyForKey:@"NDODeviceInfo"];
      if (v14)
      {
        v15 = [*(a1 + 32) specifier];
        [v15 setProperty:v14 forKey:@"NDODeviceInfo"];
      }
    }

    goto LABEL_16;
  }

  if (v3)
  {
    v6 = _NDOLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v20 = "[NDOWarrantyInfoController _refreshWithForcedNetworkPolicy:forceUpdateFollowup:withCompletion:]_block_invoke";
      v21 = 2112;
      v22 = v3;
      _os_log_impl(&dword_25BD8D000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: isHostSettings == YES, setting specifier deviceInfo: %@", buf, 0x16u);
    }

    v7 = [*(a1 + 32) specifier];
    v8 = [v3 warranty];
    [v7 setProperty:v8 forKey:@"NDOWarranty"];

    v9 = [*(a1 + 32) specifier];
    [v9 setProperty:v3 forKey:@"NDODeviceInfo"];
LABEL_16:
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __96__NDOWarrantyInfoController__refreshWithForcedNetworkPolicy_forceUpdateFollowup_withCompletion___block_invoke_87;
  v17[3] = &unk_2799783F0;
  v17[4] = *(a1 + 32);
  v18 = *(a1 + 48);
  dispatch_async(MEMORY[0x277D85CD0], v17);

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __96__NDOWarrantyInfoController__refreshWithForcedNetworkPolicy_forceUpdateFollowup_withCompletion___block_invoke_87(uint64_t a1)
{
  [*(a1 + 32) reloadSpecifiers];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)reloadSpecifiers
{
  v8 = *MEMORY[0x277D85DE8];
  callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
  v4 = 136446466;
  v5 = "[NDOWarrantyInfoController reloadSpecifiers]";
  v6 = 2114;
  v7 = callStackSymbols;
  _os_log_error_impl(&dword_25BD8D000, self, OS_LOG_TYPE_ERROR, "%{public}s: called off main thread with backtrace: %{public}@", &v4, 0x16u);

  v3 = *MEMORY[0x277D85DE8];
}

- (void)updateAppSupportSpecifiersWithSpecifiers:(id)specifiers
{
  v21 = *MEMORY[0x277D85DE8];
  specifiersCopy = specifiers;
  specifier = [(NDOWarrantyInfoController *)self specifier];
  v6 = [specifier propertyForKey:@"NDOWarranty"];

  if ([v6 displayRepairAndSupport])
  {
    specifier2 = [(NDOWarrantyInfoController *)self specifier];
    v8 = [specifier2 propertyForKey:@"NDOSupportAppShown"];

    if (specifiersCopy | v8)
    {
      if (specifiersCopy && v8)
      {
        specifier3 = [(NDOWarrantyInfoController *)self specifier];
        v12 = [specifier3 propertyForKey:@"NDOSupportAppDictionary"];
        [(NDOWarrantyInfoController *)self setAppSupportDictionary:v12];

        v13 = _NDOLogSystem();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          appSupportDictionary = [(NDOWarrantyInfoController *)self appSupportDictionary];
          *location = 136446466;
          *&location[4] = "[NDOWarrantyInfoController updateAppSupportSpecifiersWithSpecifiers:]";
          v19 = 2112;
          v20 = appSupportDictionary;
          _os_log_impl(&dword_25BD8D000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: appSupport added with appSupportDictionary: %@", location, 0x16u);
        }

        [(NDOWarrantyInfoController *)self updateAppStoreLookupWithSpecifiers:specifiersCopy];
      }

      else
      {
        [(NDOWarrantyInfoController *)self setReloadInProgress:0];
      }
    }

    else
    {
      specifier4 = [(NDOWarrantyInfoController *)self specifier];
      [specifier4 setProperty:MEMORY[0x277CBEC38] forKey:@"NDOSupportAppShown"];

      objc_initWeak(location, self);
      v10 = objc_opt_new();
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __70__NDOWarrantyInfoController_updateAppSupportSpecifiersWithSpecifiers___block_invoke;
      v16[3] = &unk_279978490;
      objc_copyWeak(&v17, location);
      [v10 appSupportDictionaryWithReply:v16];

      objc_destroyWeak(&v17);
      objc_destroyWeak(location);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __70__NDOWarrantyInfoController_updateAppSupportSpecifiersWithSpecifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__NDOWarrantyInfoController_updateAppSupportSpecifiersWithSpecifiers___block_invoke_2;
  v5[3] = &unk_2799783C8;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __70__NDOWarrantyInfoController_updateAppSupportSpecifiersWithSpecifiers___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setAppSupportDictionary:*(a1 + 32)];
  [WeakRetained updateAppStoreLookupWithSpecifiers:0];
  v3 = [WeakRetained specifier];
  [v3 setProperty:*(a1 + 32) forKey:@"NDOSupportAppDictionary"];

  [WeakRetained setReloadInProgress:0];
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [WeakRetained appSupportDictionary];
    v7 = 136446466;
    v8 = "[NDOWarrantyInfoController updateAppSupportSpecifiersWithSpecifiers:]_block_invoke_2";
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_25BD8D000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: appSupport reload completed with appSupportDictionary: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateAppStoreLookupWithSpecifiers:(id)specifiers
{
  v34[1] = *MEMORY[0x277D85DE8];
  specifiersCopy = specifiers;
  appSupportDictionary = [(NDOWarrantyInfoController *)self appSupportDictionary];

  if (appSupportDictionary)
  {
    specifier = [(NDOWarrantyInfoController *)self specifier];
    v7 = [specifier propertyForKey:@"NDOWarranty"];

    appSupportDictionary2 = [(NDOWarrantyInfoController *)self appSupportDictionary];
    v9 = [appSupportDictionary2 objectForKeyedSubscript:*MEMORY[0x277D2D0F0]];

    if ([v9 intValue])
    {
      v10 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_286D71538 target:self set:0 get:0 detail:0 cell:0 edit:0];
      intValue = [v9 intValue];
      previousAppSupportAvailabilityType = [(NDOWarrantyInfoController *)self previousAppSupportAvailabilityType];
      -[NDOWarrantyInfoController setPreviousAppSupportAvailabilityType:](self, "setPreviousAppSupportAvailabilityType:", [v9 intValue]);
      v30 = previousAppSupportAvailabilityType;
      if (specifiersCopy)
      {
        [specifiersCopy addObject:v10];
      }

      else
      {
        v34[0] = v10;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
        lastDetailSpecifier = [(NDOWarrantyInfoController *)self lastDetailSpecifier];
        if (lastDetailSpecifier)
        {
          [(NDOWarrantyInfoController *)self lastDetailSpecifier];
        }

        else
        {
          [(NDOWarrantyInfoController *)self lastCoverageSpecifier];
        }
        v14 = ;
        v15 = intValue;
        v16 = previousAppSupportAvailabilityType != intValue;
        identifier = [v14 identifier];
        v18 = v16;
        intValue = v15;
        [(NDOWarrantyInfoController *)self insertContiguousSpecifiers:v29 afterSpecifierID:identifier animated:v18];
      }

      v32[0] = *MEMORY[0x277D3FE58];
      v33[0] = objc_opt_class();
      v32[1] = *MEMORY[0x277D40140];
      v19 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76F30]];
      v32[2] = *MEMORY[0x277D3FFB8];
      v33[1] = v19;
      v33[2] = @"APPSUPPORT";
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:3];

      v21 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_286D71538 target:self set:0 get:0 detail:0 cell:4 edit:0];
      [v21 setProperties:v20];
      [v21 setProperty:v7 forKey:@"NDOWarranty"];
      if (v10)
      {
        localizedSupportAppFooter = [v7 localizedSupportAppFooter];
        v23 = [localizedSupportAppFooter length];

        if (v23)
        {
          localizedSupportAppFooter2 = [v7 localizedSupportAppFooter];
          [v10 setProperty:localizedSupportAppFooter2 forKey:*MEMORY[0x277D3FF88]];
        }

        if (specifiersCopy)
        {
          [specifiersCopy addObject:v21];
        }

        else
        {
          v25 = v30 != intValue;
          v31 = v21;
          v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
          identifier2 = [v10 identifier];
          [(NDOWarrantyInfoController *)self insertContiguousSpecifiers:v26 afterSpecifierID:identifier2 animated:v25];
        }
      }
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (id)noCoverageInternalSubtitle:(id)subtitle
{
  if ([MEMORY[0x277D2D0E0] isInternal])
  {
    v3 = @"[internal] Expected for non-production devices";
  }

  else
  {
    v3 = &stru_286D71538;
  }

  return v3;
}

- (id)specifiers
{
  v106[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D3FC48];
  v3 = *(&self->super.super.super.super.super.isa + v2);
  if (v3)
  {
LABEL_41:
    v23 = v3;
    goto LABEL_42;
  }

  v5 = objc_opt_new();
  specifier = [(NDOWarrantyInfoController *)self specifier];
  v7 = [specifier propertyForKey:@"NDOWarranty"];

  specifier2 = [(NDOWarrantyInfoController *)self specifier];
  v9 = [specifier2 propertyForKey:@"NDODeviceInfo"];

  if (v7)
  {
    v100 = v2;
    specifier3 = [(NDOWarrantyInfoController *)self specifier];
    v11 = [specifier3 propertyForKey:@"isCoverageCentralContainer"];
    bOOLValue = [v11 BOOLValue];

    v12 = objc_opt_new();
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    [v12 addObject:?];
    coverageHasACLogo = [v7 coverageHasACLogo];
    v14 = MEMORY[0x277D3FE58];
    v15 = MEMORY[0x277D3FFB8];
    v102 = v12;
    if (coverageHasACLogo)
    {
      v105[0] = *MEMORY[0x277D3FE58];
      v106[0] = objc_opt_class();
      v105[1] = *MEMORY[0x277D40140];
      v16 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D76F30]];
      v106[1] = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v106 forKeys:v105 count:2];

      v18 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_286D71538 target:self set:0 get:0 detail:0 cell:4 edit:0];
      [v18 setProperties:v17];
      [v18 setProperty:v7 forKey:@"NDOWarranty"];
      [v18 setProperty:@"COVERAGE_ITEM" forKey:*v15];
      v19 = [(NDOWarrantyInfoController *)self coverageItemSubTitle:v18];
      [v18 setProperty:v19 forKey:@"NDOCoverageItemSubtitle"];
      [v12 addObject:v18];
    }

    else
    {
      v24 = MEMORY[0x277D3FAD8];
      coverageLocalizedDesc = [v7 coverageLocalizedDesc];
      v18 = [v24 preferenceSpecifierNamed:coverageLocalizedDesc target:self set:0 get:sel_coverageItemSubTitle_ detail:0 cell:4 edit:0];

      [v18 setProperty:objc_opt_class() forKey:*v14];
      [v12 addObject:v18];
    }

    [(NDOWarrantyInfoController *)self setLastCoverageSpecifier:v18];
    warranty = [v9 warranty];
    acOfferDisplayDate = [warranty acOfferDisplayDate];

    warranty2 = [v9 warranty];
    acOfferEligible = [warranty2 acOfferEligible];
    if (acOfferDisplayDate)
    {
      if (acOfferEligible)
      {
        warranty3 = [v9 warranty];
        acOfferDisplayDate2 = [warranty3 acOfferDisplayDate];
        [acOfferDisplayDate2 timeIntervalSinceNow];
        if (v32 > 0.0)
        {
LABEL_21:

          goto LABEL_22;
        }

        warranty4 = [v9 warranty];
        acOfferEligibleUntil = [warranty4 acOfferEligibleUntil];
        [acOfferEligibleUntil timeIntervalSinceNow];
        v36 = v35;

LABEL_15:
        v40 = v102;
        if (v36 <= 0.0)
        {
          goto LABEL_23;
        }

        v41 = MEMORY[0x277D3FAD8];
        warranty5 = [v9 warranty];
        acLocalizedOfferCTA = [warranty5 acLocalizedOfferCTA];
        warranty2 = [v41 preferenceSpecifierNamed:acLocalizedOfferCTA target:self set:0 get:0 detail:0 cell:13 edit:0];

        [warranty2 setProperty:@"WARRANTY_OFFER" forKey:*MEMORY[0x277D3FFB8]];
        [warranty2 setButtonAction:sel_ndoAppleCareCoveragePressed_];
        [warranty2 setProperty:v9 forKey:@"NDODeviceInfo"];
        [warranty2 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FD80]];
        v44 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
        [warranty2 setProperty:v44 forKey:@"isCoverageCentralContainer"];

        [v102 addObject:warranty2];
        warranty6 = [v9 warranty];
        acOfferDisplayDate2 = [warranty6 acLocalizedOfferDesc];

        if ([acOfferDisplayDate2 length])
        {
          warranty3 = acOfferDisplayDate2;
          if (warranty3)
          {
            v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", warranty3];
            [emptyGroupSpecifier setProperty:v46 forKey:*MEMORY[0x277D3FF88]];
          }
        }

        else
        {
          warranty3 = 0;
        }

        [(NDOWarrantyInfoController *)self setLastCoverageSpecifier:warranty2];
        goto LABEL_21;
      }
    }

    else if (acOfferEligible)
    {
      warranty7 = [v9 warranty];
      acOfferEligibleUntil2 = [warranty7 acOfferEligibleUntil];
      [acOfferEligibleUntil2 timeIntervalSinceNow];
      v36 = v39;

      goto LABEL_15;
    }

LABEL_22:
    v40 = v102;

LABEL_23:
    [v5 addObjectsFromArray:v40];
    coverageDetailsDictionary = [v7 coverageDetailsDictionary];

    if (!coverageDetailsDictionary)
    {
LABEL_31:
      [(NDOWarrantyInfoController *)self updateAppSupportSpecifiersWithSpecifiers:v5];
      if ([(NDOWarrantyInfoController *)self _isValidSubscriptionPlan])
      {
        emptyGroupSpecifier2 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
        [v5 addObject:emptyGroupSpecifier2];
        acLocalizedUnlinkedPlanLabel = [v7 acLocalizedUnlinkedPlanLabel];
        v68 = acLocalizedUnlinkedPlanLabel;
        if (acLocalizedUnlinkedPlanLabel)
        {
          localizedManagePlanLabel = acLocalizedUnlinkedPlanLabel;
        }

        else
        {
          localizedManagePlanLabel = [v7 localizedManagePlanLabel];
        }

        v70 = localizedManagePlanLabel;

        v71 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v70 target:self set:0 get:0 detail:0 cell:13 edit:0];
        [v71 setProperty:@"SUBSCRIPTION_PLAN" forKey:*MEMORY[0x277D3FFB8]];
        [v71 setButtonAction:sel_managePlanPressed_];
        [v71 setProperty:v7 forKey:@"NDOWarranty"];
        [v71 setProperty:v9 forKey:@"NDODeviceInfo"];
        [v5 addObject:v71];
      }

      footer1FormatString = [v7 footer1FormatString];
      v73 = [footer1FormatString length];

      if (v73)
      {
        emptyGroupSpecifier3 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
        v75 = MEMORY[0x277CCACA8];
        footer1FormatString2 = [v7 footer1FormatString];
        footer1LinkLabel = [v7 footer1LinkLabel];
        v78 = [v75 stringWithFormat:footer1FormatString2, footer1LinkLabel];

        v40 = v102;
        [emptyGroupSpecifier3 setProperty:v78 forKey:*MEMORY[0x277D3FF70]];
        v79 = objc_opt_class();
        v80 = NSStringFromClass(v79);
        [emptyGroupSpecifier3 setProperty:v80 forKey:*MEMORY[0x277D3FF48]];

        footer1LinkLabel2 = [v7 footer1LinkLabel];
        v109.location = [v78 rangeOfString:footer1LinkLabel2];
        v82 = NSStringFromRange(v109);
        [emptyGroupSpecifier3 setProperty:v82 forKey:*MEMORY[0x277D3FF58]];

        v83 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
        [emptyGroupSpecifier3 setProperty:v83 forKey:*MEMORY[0x277D3FF68]];

        [emptyGroupSpecifier3 setProperty:@"footer1Tapped:" forKey:*MEMORY[0x277D3FF50]];
        [v5 addObject:emptyGroupSpecifier3];
      }

      footer2FormatString = [v7 footer2FormatString];
      v85 = [footer2FormatString length];

      if (v85)
      {
        emptyGroupSpecifier4 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
        v87 = MEMORY[0x277CCACA8];
        footer2FormatString2 = [v7 footer2FormatString];
        footer2LinkLabel = [v7 footer2LinkLabel];
        v90 = [v87 stringWithFormat:footer2FormatString2, footer2LinkLabel];

        v40 = v102;
        [emptyGroupSpecifier4 setProperty:v90 forKey:*MEMORY[0x277D3FF70]];
        v91 = objc_opt_class();
        v92 = NSStringFromClass(v91);
        [emptyGroupSpecifier4 setProperty:v92 forKey:*MEMORY[0x277D3FF48]];

        footer2LinkLabel2 = [v7 footer2LinkLabel];
        v110.location = [v90 rangeOfString:footer2LinkLabel2];
        v94 = NSStringFromRange(v110);
        [emptyGroupSpecifier4 setProperty:v94 forKey:*MEMORY[0x277D3FF58]];

        v95 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
        [emptyGroupSpecifier4 setProperty:v95 forKey:*MEMORY[0x277D3FF68]];

        [emptyGroupSpecifier4 setProperty:@"footer2Tapped:" forKey:*MEMORY[0x277D3FF50]];
        [v5 addObject:emptyGroupSpecifier4];
      }

      v96 = *(&self->super.super.super.super.super.isa + v100);
      *(&self->super.super.super.super.super.isa + v100) = v5;

      v3 = *(&self->super.super.super.super.super.isa + v100);
      goto LABEL_41;
    }

    v48 = MEMORY[0x277D3FAD8];
    localizedCoverageDetailsTitle = [v7 localizedCoverageDetailsTitle];
    v50 = [v48 preferenceSpecifierNamed:localizedCoverageDetailsTitle target:self set:0 get:0 detail:0 cell:0 edit:0];

    [v5 addObject:v50];
    coverageDetailsDictionary2 = [v7 coverageDetailsDictionary];

    if (coverageDetailsDictionary2)
    {
      v52 = objc_opt_new();
      coverageDetailsArray = [v7 coverageDetailsArray];
      v103[0] = MEMORY[0x277D85DD0];
      v103[1] = 3221225472;
      v103[2] = __39__NDOWarrantyInfoController_specifiers__block_invoke;
      v103[3] = &unk_2799784B8;
      v103[4] = self;
      v104 = v52;
      v54 = v52;
      [coverageDetailsArray enumerateObjectsUsingBlock:v103];
      [v5 addObjectsFromArray:v54];
      lastObject = [v54 lastObject];
      [(NDOWarrantyInfoController *)self setLastDetailSpecifier:lastObject];
    }

    localizedCoverageFooterFormatString = [v7 localizedCoverageFooterFormatString];
    if ([localizedCoverageFooterFormatString length])
    {
      localizedCoverageFooterLinkLabel = [v7 localizedCoverageFooterLinkLabel];
      v58 = [localizedCoverageFooterLinkLabel length];

      if (!v58)
      {
LABEL_30:

        goto LABEL_31;
      }

      localizedCoverageFooterFormatString = [v7 localizedCoverageFooterLinkLabel];
      v59 = MEMORY[0x277CCACA8];
      localizedCoverageFooterFormatString2 = [v7 localizedCoverageFooterFormatString];
      v61 = [v59 stringWithFormat:localizedCoverageFooterFormatString2, localizedCoverageFooterFormatString];

      v40 = v102;
      [v50 setProperty:v61 forKey:*MEMORY[0x277D3FF88]];
      [v50 setProperty:v61 forKey:*MEMORY[0x277D3FF70]];
      v62 = objc_opt_class();
      v63 = NSStringFromClass(v62);
      [v50 setProperty:v63 forKey:*MEMORY[0x277D3FF48]];

      v108.location = [v61 rangeOfString:localizedCoverageFooterFormatString];
      v64 = NSStringFromRange(v108);
      [v50 setProperty:v64 forKey:*MEMORY[0x277D3FF58]];

      v65 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
      [v50 setProperty:v65 forKey:*MEMORY[0x277D3FF68]];

      [v50 setProperty:@"benefitsDescLinkTapped:" forKey:*MEMORY[0x277D3FF50]];
    }

    goto LABEL_30;
  }

  if ([MEMORY[0x277D2D0E0] isInternal])
  {
    v20 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"[internal] No coverage info" target:self set:0 get:sel_noCoverageInternalSubtitle_ detail:0 cell:4 edit:0];
    [v20 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    [v5 addObject:v20];
  }

  v21 = *(&self->super.super.super.super.super.isa + v2);
  *(&self->super.super.super.super.super.isa + v2) = v5;
  v22 = v5;

  v23 = *(&self->super.super.super.super.super.isa + v2);
LABEL_42:
  v97 = *MEMORY[0x277D85DE8];

  return v23;
}

void __39__NDOWarrantyInfoController_specifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 objectForKeyedSubscript:@"localizedCoverageLabel"];
  v4 = [v3 objectForKeyedSubscript:@"localizedCoverageValue"];

  [*(a1 + 32) _addKey:v5 value:v4 isCopyable:1 toSpecifiers:*(a1 + 40)];
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  lCopy = l;
  completionCopy = completion;
  v8 = _NDOLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v12 = "[NDOWarrantyInfoController handleURL:withCompletion:]";
    v13 = 2112;
    v14 = lCopy;
    _os_log_impl(&dword_25BD8D000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: Handle url %@", buf, 0x16u);
  }

  if ([(NDOWarrantyInfoController *)self hasLoaded])
  {
    [(NDOWarrantyInfoController *)self reloadSpecifiers];
  }

  v10.receiver = self;
  v10.super_class = NDOWarrantyInfoController;
  [(NDOWarrantyInfoController *)&v10 handleURL:lCopy withCompletion:completionCopy];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)coverageItemSubTitle:(id)title
{
  specifier = [(NDOWarrantyInfoController *)self specifier];
  v4 = [specifier propertyForKey:@"NDOWarranty"];

  if ([v4 isACServicesPartner])
  {
    localizedCoverageSubTitleForServicesPartnerString = [v4 localizedCoverageSubTitleForServicesPartnerString];
  }

  else
  {
    coverageEndDate = [v4 coverageEndDate];

    if (coverageEndDate)
    {
      v7 = objc_opt_new();
      [v7 setTimeStyle:0];
      [v7 setDateStyle:3];
      v8 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
      [v7 setTimeZone:v8];

      coverageEndDate2 = [v4 coverageEndDate];
      v10 = [v7 stringFromDate:coverageEndDate2];

      v11 = MEMORY[0x277CCACA8];
      coverageLocalizedExpirationLabel = [v4 coverageLocalizedExpirationLabel];
      localizedCoverageSubTitleForServicesPartnerString = [v11 stringWithFormat:@"%@ %@", coverageLocalizedExpirationLabel, v10];
    }

    else
    {
      localizedCoverageSubTitleForServicesPartnerString = 0;
    }
  }

  return localizedCoverageSubTitleForServicesPartnerString;
}

- (void)managePlanPressed:(id)pressed
{
  v39[1] = *MEMORY[0x277D85DE8];
  pressedCopy = pressed;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [NDOWarrantyInfoController managePlanPressed:v4];
  }

  v5 = [pressedCopy propertyForKey:@"NDODeviceInfo"];
  v38 = @"devicetype";
  device = [v5 device];
  deviceTypeString = [device deviceTypeString];
  v39[0] = deviceTypeString;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];

  [MEMORY[0x277D2D0C0] postCAEventFor:@"com.apple.newdeviceoutreach.coverage.loadmanageplan" eventDict:v8];
  v9 = MEMORY[0x277CEE408];
  bagKeySet = [MEMORY[0x277CEE6D8] bagKeySet];
  bagSubProfile = [MEMORY[0x277CEE6D8] bagSubProfile];
  bagSubProfileVersion = [MEMORY[0x277CEE6D8] bagSubProfileVersion];
  [v9 registerBagKeySet:bagKeySet forProfile:bagSubProfile profileVersion:bagSubProfileVersion];

  v13 = [MEMORY[0x277CEE3F8] bagForProfile:@"AppleCare" profileVersion:@"1"];
  v14 = [v13 URLForKey:@"manageSubscriptionsV2Url"];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __47__NDOWarrantyInfoController_managePlanPressed___block_invoke;
  v36[3] = &unk_2799784E0;
  v15 = pressedCopy;
  v37 = v15;
  v16 = [v14 transformWithBlock:v36];
  ams_sharedAccountStore = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];

  if (!ams_activeiTunesAccount)
  {
    v19 = _NDOLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(NDOWarrantyInfoController *)v19 managePlanPressed:v20, v21, v22, v23, v24, v25, v26];
    }
  }

  v27 = [objc_alloc(MEMORY[0x277CEE940]) initWithBag:v13 account:ams_activeiTunesAccount clientInfo:0];
  v28 = [v27 loadBagValue:v16];
  v29 = [[NDOAMSUIWebViewWrapperController alloc] initWithViewController:v27];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __47__NDOWarrantyInfoController_managePlanPressed___block_invoke_189;
  v35[3] = &unk_2799782A0;
  v35[4] = self;
  [(NDOAMSUIWebViewWrapperController *)v29 setDismissBlock:v35];
  presentationController = [(NDOAMSUIWebViewWrapperController *)v29 presentationController];
  [presentationController setDelegate:v29];

  v31 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v29];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __47__NDOWarrantyInfoController_managePlanPressed___block_invoke_191;
  v34[3] = &unk_2799782A0;
  v34[4] = self;
  [(NDOWarrantyInfoController *)self presentViewController:v31 animated:1 completion:v34];

  v32 = *MEMORY[0x277D85DE8];
}

id __47__NDOWarrantyInfoController_managePlanPressed___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 propertyForKey:@"NDODeviceInfo"];
  v5 = [v4 device];
  v6 = [v5 serialNumber];

  v7 = [v3 absoluteString];

  v8 = [v7 stringByAppendingFormat:@"?context=linking&source=applecaresettings&serialNumbers=%@", v6];

  v9 = _NDOLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v16 = "[NDOWarrantyInfoController managePlanPressed:]_block_invoke";
    v17 = 2112;
    v18 = v4;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_25BD8D000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: deviceInfo: %@ with url: %@", buf, 0x20u);
  }

  v10 = MEMORY[0x277CEE630];
  v11 = [MEMORY[0x277CBEBC0] URLWithString:v8];
  v12 = [v10 promiseWithResult:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __47__NDOWarrantyInfoController_managePlanPressed___block_invoke_189(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _NDOLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446210;
    v6 = "[NDOWarrantyInfoController managePlanPressed:]_block_invoke";
    _os_log_impl(&dword_25BD8D000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: refreshing warranty after dismiss", &v5, 0xCu);
  }

  result = [*(a1 + 32) _refreshWithForcedNetworkPolicy:1 forceUpdateFollowup:0 withCompletion:0];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)footer1Tapped:(id)tapped
{
  specifier = [(NDOWarrantyInfoController *)self specifier];
  v8 = [specifier propertyForKey:@"NDOWarranty"];

  v5 = MEMORY[0x277CBEBC0];
  footer1LinkURL = [v8 footer1LinkURL];
  v7 = [v5 URLWithString:footer1LinkURL];
  [(NDOWarrantyInfoController *)self openURL:v7];
}

- (void)benefitsDescLinkTapped:(id)tapped
{
  specifier = [(NDOWarrantyInfoController *)self specifier];
  v7 = [specifier propertyForKey:@"NDOWarranty"];

  v5 = [[NDOWarrantyBenefitsViewController alloc] initWithWarranty:v7];
  v6 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v5];
  [(NDOWarrantyInfoController *)self presentViewController:v6 animated:1 completion:&__block_literal_global];
}

- (void)footer2Tapped:(id)tapped
{
  specifier = [(NDOWarrantyInfoController *)self specifier];
  v8 = [specifier propertyForKey:@"NDOWarranty"];

  v5 = MEMORY[0x277CBEBC0];
  footer2LinkURL = [v8 footer2LinkURL];
  v7 = [v5 URLWithString:footer2LinkURL];
  [(NDOWarrantyInfoController *)self openURL:v7];
}

- (void)_addKey:(id)key isCopyable:(BOOL)copyable toSpecifiers:(id)specifiers
{
  copyableCopy = copyable;
  specifiersCopy = specifiers;
  v8 = MEMORY[0x277CCA8D8];
  keyCopy = key;
  mainBundle = [v8 mainBundle];
  v11 = [mainBundle localizedStringForKey:keyCopy value:&stru_286D71538 table:0];

  v12 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v11 target:self set:0 get:sel_valueForSpecifier_ detail:0 cell:4 edit:0];
  [v12 setProperty:keyCopy forKey:*MEMORY[0x277D3FFB8]];

  [v12 setProperty:NSClassFromString(&cfstr_Psmultilinetab.isa) forKey:*MEMORY[0x277D3FE58]];
  if (copyableCopy)
  {
    [v12 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FED8]];
  }

  [specifiersCopy addObject:v12];
}

- (void)_setValue:(id)value forSpecifierWithKey:(id)key inSpecifiers:(id)specifiers
{
  valueCopy = value;
  v9 = [(NDOWarrantyInfoController *)self specifierForID:key inSpecifiers:specifiers];
  [(NDOWarrantyInfoController *)self _setValue:valueCopy forSpecifier:v9];
}

- (void)_setValue:(id)value forSpecifier:(id)specifier
{
  if (value)
  {
    v5 = *MEMORY[0x277D401A8];
    specifierCopy = specifier;
    [specifierCopy setProperty:value forKey:v5];
  }

  else
  {
    v6 = MEMORY[0x277CCA8D8];
    specifierCopy2 = specifier;
    specifierCopy = [v6 mainBundle];
    v8 = [specifierCopy localizedStringForKey:@"N/A" value:&stru_286D71538 table:0];
    [specifierCopy2 setProperty:v8 forKey:*MEMORY[0x277D401A8]];
  }
}

- (id)specifierForID:(id)d inSpecifiers:(id)specifiers
{
  dCopy = d;
  specifiersCopy = specifiers;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__NDOWarrantyInfoController_specifierForID_inSpecifiers___block_invoke;
  v10[3] = &unk_279978528;
  v7 = dCopy;
  v11 = v7;
  v12 = &v13;
  [specifiersCopy enumerateObjectsUsingBlock:v10];
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __57__NDOWarrantyInfoController_specifierForID_inSpecifiers___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 propertyForKey:*MEMORY[0x277D3FFB8]];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (BOOL)_isValidSubscriptionPlan
{
  specifier = [(NDOWarrantyInfoController *)self specifier];
  v3 = [specifier propertyForKey:@"NDOWarranty"];

  LOBYTE(specifier) = [v3 isCoveragePlanSubscriptionType];
  return specifier;
}

- (void)ndoAppleCareCoveragePressed:(id)pressed
{
  v28 = *MEMORY[0x277D85DE8];
  pressedCopy = pressed;
  v5 = _NDOLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 136315138;
    v27 = "[NDOWarrantyInfoController ndoAppleCareCoveragePressed:]";
    _os_log_impl(&dword_25BD8D000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v26, 0xCu);
  }

  v6 = [pressedCopy propertyForKey:@"NDODeviceInfo"];
  v7 = [pressedCopy propertyForKey:@"isCoverageCentralContainer"];

  bOOLValue = [v7 BOOLValue];
  device = [v6 device];
  sourceFromDeviceType = [device sourceFromDeviceType];
  v11 = sourceFromDeviceType;
  if (bOOLValue)
  {
    v12 = @"_COVERAGE_CENTRAL";
  }

  else
  {
    v12 = @"_COVERAGE";
  }

  v13 = [sourceFromDeviceType stringByAppendingString:v12];

  v14 = [NDOAppleCareViewController alloc];
  deeplinkParams = [(NDOWarrantyInfoController *)self deeplinkParams];
  v16 = [(NDOAppleCareViewController *)v14 initWithDeviceInfo:v6 presentationType:0 source:v13 deeplinkParams:deeplinkParams];

  [(NDOAppleCareViewController *)v16 setPresentor:self];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom] == 1)
  {

    v18 = 2;
  }

  else
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    v20 = [currentDevice2 userInterfaceIdiom] == 6;

    v18 = 2 * v20;
  }

  [(NDOAppleCareViewController *)v16 setModalPresentationStyle:v18];
  [(NDOAppleCareViewController *)v16 setModalInPresentation:1];
  v21 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v16];
  currentDevice3 = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice3 userInterfaceIdiom] == 6)
  {

LABEL_12:
    [v21 setModalPresentationStyle:2];
    goto LABEL_13;
  }

  currentDevice4 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice4 userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    goto LABEL_12;
  }

LABEL_13:
  [v21 setModalInPresentation:1];
  [(NDOWarrantyInfoController *)self presentViewController:v21 animated:1 completion:0];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)outreachFinishedForDeviceWithSerialNumber:(id)number withCompletion:(unint64_t)completion
{
  v17 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  v7 = _NDOLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[NDOWarrantyInfoController outreachFinishedForDeviceWithSerialNumber:withCompletion:]";
    _os_log_impl(&dword_25BD8D000, v7, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__NDOWarrantyInfoController_outreachFinishedForDeviceWithSerialNumber_withCompletion___block_invoke;
  aBlock[3] = &unk_279978578;
  aBlock[4] = self;
  aBlock[5] = completion;
  v8 = _Block_copy(aBlock);
  if (!completion)
  {
    goto LABEL_8;
  }

  v9 = objc_opt_new();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __86__NDOWarrantyInfoController_outreachFinishedForDeviceWithSerialNumber_withCompletion___block_invoke_217;
  v12[3] = &unk_279978278;
  v13 = numberCopy;
  [v9 dismissFollowUpForSerialNumber:v13 completion:v12];
  if (completion == 2)
  {
    v8[2](v8);

    goto LABEL_9;
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__NDOWarrantyInfoController_outreachFinishedForDeviceWithSerialNumber_withCompletion___block_invoke_225;
  v11[3] = &unk_2799782A0;
  v11[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], v11);

  if (completion != 3 && completion != 5)
  {
LABEL_8:
    v8[2](v8);
  }

LABEL_9:

  v10 = *MEMORY[0x277D85DE8];
}

void __86__NDOWarrantyInfoController_outreachFinishedForDeviceWithSerialNumber_withCompletion___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__NDOWarrantyInfoController_outreachFinishedForDeviceWithSerialNumber_withCompletion___block_invoke_2;
  block[3] = &unk_279978550;
  objc_copyWeak(v3, &location);
  v3[1] = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(v3);
  objc_destroyWeak(&location);
}

void __86__NDOWarrantyInfoController_outreachFinishedForDeviceWithSerialNumber_withCompletion___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (*(a1 + 40) == 2)
  {
    v4 = _NDOLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v8 = "[NDOWarrantyInfoController outreachFinishedForDeviceWithSerialNumber:withCompletion:]_block_invoke_2";
      _os_log_impl(&dword_25BD8D000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Refreshing device info after purchase done", buf, 0xCu);
    }

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __86__NDOWarrantyInfoController_outreachFinishedForDeviceWithSerialNumber_withCompletion___block_invoke_215;
    v6[3] = &unk_2799782A0;
    v6[4] = v3;
    [v3 _refreshWithForcedNetworkPolicy:1 forceUpdateFollowup:1 withCompletion:v6];
  }

  else
  {
    [WeakRetained dismissViewControllerAnimated:1 completion:0];
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __86__NDOWarrantyInfoController_outreachFinishedForDeviceWithSerialNumber_withCompletion___block_invoke_215(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _NDOLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446210;
    v6 = "[NDOWarrantyInfoController outreachFinishedForDeviceWithSerialNumber:withCompletion:]_block_invoke";
    _os_log_impl(&dword_25BD8D000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: Device info refreshed after purchase done", &v5, 0xCu);
  }

  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"NDOPurchaseCompletedNotification" object:0];

  v4 = *MEMORY[0x277D85DE8];
}

void __86__NDOWarrantyInfoController_outreachFinishedForDeviceWithSerialNumber_withCompletion___block_invoke_217(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"Failed to dismiss";
    v9 = "[NDOWarrantyInfoController outreachFinishedForDeviceWithSerialNumber:withCompletion:]_block_invoke";
    v6 = *(a1 + 32);
    v8 = 136446722;
    if (a2)
    {
      v5 = @"Dismissed";
    }

    v10 = 2114;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_25BD8D000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: %{public}@ followup up for %@", &v8, 0x20u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __86__NDOWarrantyInfoController_outreachFinishedForDeviceWithSerialNumber_withCompletion___block_invoke_2_226()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = _NDOLogSystem();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136446210;
    v3 = "[NDOWarrantyInfoController outreachFinishedForDeviceWithSerialNumber:withCompletion:]_block_invoke_2";
    _os_log_impl(&dword_25BD8D000, v0, OS_LOG_TYPE_DEFAULT, "%{public}s: Device info refreshed only.", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

- (id)_noAccountConfig
{
  emptyProminentConfiguration = [MEMORY[0x277D75390] emptyProminentConfiguration];
  v3 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/NewDeviceOutreachUI.framework"];
  v4 = [v3 localizedStringForKey:@"CC_NO_ACCOUNT_ERROR_TITLE" value:&stru_286D71538 table:@"Localizable"];
  [emptyProminentConfiguration setText:v4];

  v5 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/NewDeviceOutreachUI.framework"];
  v6 = [v5 localizedStringForKey:@"CC_NO_ACCOUNT_ERROR_SUBTITLE" value:&stru_286D71538 table:@"Localizable"];
  [emptyProminentConfiguration setSecondaryText:v6];

  v7 = [MEMORY[0x277D755B8] systemImageNamed:@"person.crop.circle"];
  [emptyProminentConfiguration setImage:v7];

  return emptyProminentConfiguration;
}

- (id)_errorStateConfig
{
  emptyProminentConfiguration = [MEMORY[0x277D75390] emptyProminentConfiguration];
  v4 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/NewDeviceOutreachUI.framework"];
  v5 = [v4 localizedStringForKey:@"CC_ISSUE_ERROR_TITLE" value:&stru_286D71538 table:@"Localizable"];
  [emptyProminentConfiguration setText:v5];

  v6 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/NewDeviceOutreachUI.framework"];
  v7 = [v6 localizedStringForKey:@"CC_ISSUE_ERROR_SUBTITLE" value:&stru_286D71538 table:@"Localizable"];
  [emptyProminentConfiguration setSecondaryText:v7];

  v8 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle.fill"];
  [emptyProminentConfiguration setImage:v8];

  plainButtonConfiguration = [MEMORY[0x277D75230] plainButtonConfiguration];
  buttonProperties = [emptyProminentConfiguration buttonProperties];
  [buttonProperties setConfiguration:plainButtonConfiguration];

  v11 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/NewDeviceOutreachUI.framework"];
  v12 = [v11 localizedStringForKey:@"CC_RETRY" value:&stru_286D71538 table:@"Localizable"];
  buttonProperties2 = [emptyProminentConfiguration buttonProperties];
  configuration = [buttonProperties2 configuration];
  [configuration setTitle:v12];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __46__NDOWarrantyInfoController__errorStateConfig__block_invoke;
  v18[3] = &unk_2799785A0;
  v18[4] = self;
  v15 = [MEMORY[0x277D750C8] actionWithHandler:v18];
  buttonProperties3 = [emptyProminentConfiguration buttonProperties];
  [buttonProperties3 setPrimaryAction:v15];

  return emptyProminentConfiguration;
}

- (void)hideUI
{
  loadingConfiguration = [MEMORY[0x277D75390] loadingConfiguration];
  [(NDOWarrantyInfoController *)self _setContentUnavailableConfiguration:loadingConfiguration];

  table = [(NDOWarrantyInfoController *)self table];
  [table setHidden:1];
}

- (void)errorUI
{
  _errorStateConfig = [(NDOWarrantyInfoController *)self _errorStateConfig];
  [(NDOWarrantyInfoController *)self _setContentUnavailableConfiguration:_errorStateConfig];

  table = [(NDOWarrantyInfoController *)self table];
  [table setHidden:1];
}

- (void)showUI
{
  [(NDOWarrantyInfoController *)self _setContentUnavailableConfiguration:0];
  table = [(NDOWarrantyInfoController *)self table];
  [table setHidden:0];
}

- (NDOACController)acController
{
  WeakRetained = objc_loadWeakRetained(&self->_acController);

  return WeakRetained;
}

- (void)postCAEventWithDeviceInfo:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136446467;
  v4 = "[NDOWarrantyInfoController postCAEventWithDeviceInfo:]";
  v5 = 2113;
  v6 = a1;
  _os_log_error_impl(&dword_25BD8D000, a2, OS_LOG_TYPE_ERROR, "%{public}s: coverageLocalizedLabel nil with deviceInfo: %{private}@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_refreshWithForcedNetworkPolicy:(uint64_t)a3 forceUpdateFollowup:(uint64_t)a4 withCompletion:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_25BD8D000, a1, a3, "%{public}s: cannot load warranty: no deviceInfo or device to make query", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_refreshWithForcedNetworkPolicy:(uint64_t)a3 forceUpdateFollowup:(uint64_t)a4 withCompletion:(uint64_t)a5 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_25BD8D000, a1, a3, "%s: no settingshostingController, cannot call updateDeviceInfoForDevice:usingPolicy:params:forceUpdateFollowup:withReply:", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)managePlanPressed:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136446210;
  v3 = "[NDOWarrantyInfoController managePlanPressed:]";
  _os_log_debug_impl(&dword_25BD8D000, log, OS_LOG_TYPE_DEBUG, "%{public}s:", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)managePlanPressed:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_25BD8D000, a1, a3, "%{public}s: No active itunes account", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end