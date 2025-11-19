@interface HUCameraPresenceRecordingSettingsModule
+ (id)messageForQuotaAlertForCameraCount:(id)a3;
+ (id)stringFromNumber:(id)a3;
+ (id)titleForHomeOwnerQuotaAlertForCameraCount:(id)a3;
+ (id)titleForQuotaAlertForCameraCount:(id)a3;
+ (id)upgradeURLForCameraCount:(id)a3;
- (HUCameraPresenceRecordingSettingsModule)initWithItemUpdater:(id)a3;
- (HUCameraPresenceRecordingSettingsModule)initWithItemUpdater:(id)a3 cameraProfiles:(id)a4 presenceEventType:(unint64_t)a5;
- (NSString)longestCameraUsageOptionItemTitle;
- (UIViewController)viewController;
- (id)_titleString;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (id)didSelectItem:(id)a3;
- (id)itemProviders;
- (id)updateStreamingSetting:(unint64_t)a3 isRetry:(BOOL)a4;
- (unint64_t)accessModeSetting;
- (unint64_t)countCameraProfilesWithRecordingService;
- (void)_buildItemProvider;
- (void)_clearItemsUpdating;
- (void)_dispatchUpdateForCameraProfile:(id)a3;
- (void)_presentCloudUpgradeFlowWithCameraCount:(unint64_t)a3;
- (void)clearLoadingIndicator;
- (void)dealloc;
- (void)presentCloudUpgradeFlowWithCameraCount:(unint64_t)a3;
- (void)presentGenericError;
- (void)presentHomeOwnerQuotaAlertForOverflowCount:(int64_t)a3;
- (void)presentInsufficientPrivilegesAlert;
- (void)presentMissingSupportedHubAlert;
- (void)presentSharedAdminQuotaAlertForCount:(unint64_t)a3;
- (void)sendCAMetricInfo;
- (void)updatePlanCameraCount;
- (void)upgradeFlowManagerDidCancel:(id)a3;
- (void)upgradeFlowManagerDidComplete:(id)a3;
@end

@implementation HUCameraPresenceRecordingSettingsModule

- (HUCameraPresenceRecordingSettingsModule)initWithItemUpdater:(id)a3 cameraProfiles:(id)a4 presenceEventType:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  if (![v10 count])
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"HUCameraPresenceRecordingSettingsModule.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"cameraProfiles.count > 0"}];
  }

  v25.receiver = self;
  v25.super_class = HUCameraPresenceRecordingSettingsModule;
  v11 = [(HFItemModule *)&v25 initWithItemUpdater:v9];
  if (v11)
  {
    v12 = [v10 copy];
    cameraProfiles = v11->_cameraProfiles;
    v11->_cameraProfiles = v12;

    v11->_presenceEventType = a5;
    v14 = [v10 anyObject];
    v15 = [v14 accessory];
    v16 = [v15 home];
    home = v11->_home;
    v11->_home = v16;

    if (_os_feature_enabled_impl())
    {
      objc_initWeak(&location, v11);
      v18 = MEMORY[0x277CFB450];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __96__HUCameraPresenceRecordingSettingsModule_initWithItemUpdater_cameraProfiles_presenceEventType___block_invoke;
      v22[3] = &unk_277DB8770;
      objc_copyWeak(&v23, &location);
      v19 = [v18 registerForFeatureChangeNotificationsUsingBlock:v22];
      [(HUCameraPresenceRecordingSettingsModule *)v11 setFeatureChangeObserver:v19];

      [(HUCameraPresenceRecordingSettingsModule *)v11 updatePlanCameraCount];
      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
    }

    [(HUCameraPresenceRecordingSettingsModule *)v11 _buildItemProvider];
  }

  return v11;
}

void __96__HUCameraPresenceRecordingSettingsModule_initWithItemUpdater_cameraProfiles_presenceEventType___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updatePlanCameraCount];
}

- (HUCameraPresenceRecordingSettingsModule)initWithItemUpdater:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemUpdater_cameraProfiles_presenceEventType_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUCameraPresenceRecordingSettingsModule.m" lineNumber:117 description:{@"%s is unavailable; use %@ instead", "-[HUCameraPresenceRecordingSettingsModule initWithItemUpdater:]", v6}];

  return 0;
}

- (unint64_t)accessModeSetting
{
  v3 = MEMORY[0x277CD1920];
  v4 = [(HUCameraPresenceRecordingSettingsModule *)self cameraProfiles];
  v5 = [v3 hf_cameraAccessModeSelectedOptionForCameraProfiles:v4 presenceType:{-[HUCameraPresenceRecordingSettingsModule presenceEventType](self, "presenceEventType")}];

  return v5;
}

- (id)updateStreamingSetting:(unint64_t)a3 isRetry:(BOOL)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = _os_feature_enabled_impl();
  if (a3 == 2 && v7 && (v8 = a4, -[HUCameraPresenceRecordingSettingsModule home](self, "home"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 hf_currentUserIsAdministrator], v9, a4 = v8, (v10 & 1) == 0))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__HUCameraPresenceRecordingSettingsModule_updateStreamingSetting_isRetry___block_invoke;
    block[3] = &unk_277DB8488;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v19 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v22 = objc_opt_new();
    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x2020000000;
    v35[3] = 0;
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x2020000000;
    v34 = 0;
    [(HUCameraPresenceRecordingSettingsModule *)self setNumCamerasSupportRecordingService:[(HUCameraPresenceRecordingSettingsModule *)self countCameraProfilesWithRecordingService]];
    if (!a4)
    {
      [(HUCameraPresenceRecordingSettingsModule *)self setUpgradeState:0];
      [(HUCameraPresenceRecordingSettingsModule *)self setOfferState:0];
    }

    v21 = a4;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = [(HUCameraPresenceRecordingSettingsModule *)self cameraProfiles];
    v12 = [v11 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v12)
    {
      v13 = *v30;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v29 + 1) + 8 * i);
          objc_initWeak(&location, self);
          v16 = MEMORY[0x277D2C900];
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __74__HUCameraPresenceRecordingSettingsModule_updateStreamingSetting_isRetry___block_invoke_2;
          v26[3] = &unk_277DBF3E8;
          objc_copyWeak(v27, &location);
          v26[4] = v15;
          v26[5] = v35;
          v27[1] = a3;
          v26[6] = v33;
          v17 = [v16 futureWithBlock:v26];
          [v22 addObject:v17];

          objc_destroyWeak(v27);
          objc_destroyWeak(&location);
        }

        v12 = [v11 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v12);
    }

    objc_initWeak(&location, self);
    v18 = [MEMORY[0x277D2C900] combineAllFutures:v22];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __74__HUCameraPresenceRecordingSettingsModule_updateStreamingSetting_isRetry___block_invoke_2_68;
    v23[3] = &unk_277DBF410;
    objc_copyWeak(&v24, &location);
    v23[4] = v35;
    v25 = v21;
    v19 = [v18 addCompletionBlock:v23];
    objc_destroyWeak(&v24);

    objc_destroyWeak(&location);
    _Block_object_dispose(v33, 8);
    _Block_object_dispose(v35, 8);
  }

  return v19;
}

void __74__HUCameraPresenceRecordingSettingsModule_updateStreamingSetting_isRetry___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = [*(a1 + 32) userSettings];
  v6 = *(a1 + 64);
  v7 = [WeakRetained presenceEventType];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__HUCameraPresenceRecordingSettingsModule_updateStreamingSetting_isRetry___block_invoke_3;
  v10[3] = &unk_277DBF3C0;
  objc_copyWeak(v14, (a1 + 56));
  v14[1] = *(a1 + 64);
  v13 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 32);
  v11 = v8;
  v12 = v9;
  [v5 updateAccessMode:v6 forPresenceEventType:v7 completionHandler:v10];

  objc_destroyWeak(v14);
}

void __74__HUCameraPresenceRecordingSettingsModule_updateStreamingSetting_isRetry___block_invoke_3(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (*(a1 + 72) == 2 && [v3 code] == 2006)
  {
    ++*(*(*(a1 + 48) + 8) + 24);
    [WeakRetained setUpgradeState:2];
    goto LABEL_15;
  }

  if ([v3 code] == 17)
  {
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v3;
      _os_log_error_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_ERROR, "Error setting camera streaming setting: %@", buf, 0xCu);
    }

    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
    {
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __74__HUCameraPresenceRecordingSettingsModule_updateStreamingSetting_isRetry___block_invoke_64;
      v17 = &unk_277DB8488;
      v18 = WeakRetained;
      v6 = MEMORY[0x277D85CD0];
      v7 = &v14;
LABEL_14:
      dispatch_async(v6, v7);
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  else if (v3)
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v3;
      _os_log_error_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_ERROR, "Error setting camera streaming setting: %@", buf, 0xCu);
    }

    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
    {
      v9 = MEMORY[0x277D85DD0];
      v10 = 3221225472;
      v11 = __74__HUCameraPresenceRecordingSettingsModule_updateStreamingSetting_isRetry___block_invoke_65;
      v12 = &unk_277DB8488;
      v13 = WeakRetained;
      v6 = MEMORY[0x277D85CD0];
      v7 = &v9;
      goto LABEL_14;
    }
  }

LABEL_15:
  [*(a1 + 32) finishWithNoResult];
  [WeakRetained _dispatchUpdateForCameraProfile:*(a1 + 40)];
}

void __74__HUCameraPresenceRecordingSettingsModule_updateStreamingSetting_isRetry___block_invoke_2_68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (([WeakRetained didCompleteCloudUpgradeOffer] & 1) != 0 || !*(*(*(a1 + 32) + 8) + 24))
  {
    if ([WeakRetained didCompleteCloudUpgradeOffer])
    {
      [WeakRetained setDidCompleteCloudUpgradeOffer:0];
    }
  }

  else
  {
    v2 = _os_feature_enabled_impl();
    v3 = [WeakRetained home];
    v4 = [v3 hf_currentUserIsOwner];

    v5 = *(*(*(a1 + 32) + 8) + 24);
    if (v2)
    {
      if (v4)
      {
        [WeakRetained presentHomeOwnerQuotaAlertForOverflowCount:v5];
        goto LABEL_11;
      }
    }

    else if (v4)
    {
      [WeakRetained presentCloudUpgradeFlowWithCameraCount:v5];
      goto LABEL_11;
    }

    [WeakRetained presentSharedAdminQuotaAlertForCount:v5];
  }

LABEL_11:
  if ((*(a1 + 48) & 1) == 0)
  {
    v6 = WeakRetained;
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      goto LABEL_15;
    }

    [WeakRetained setUpgradeState:1];
  }

  [WeakRetained sendCAMetricInfo];
  v6 = WeakRetained;
LABEL_15:
  [v6 clearLoadingIndicator];
}

- (void)clearLoadingIndicator
{
  objc_initWeak(&location, self);
  v3 = dispatch_time(0, 300000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__HUCameraPresenceRecordingSettingsModule_clearLoadingIndicator__block_invoke;
  block[3] = &unk_277DB90B8;
  objc_copyWeak(v5, &location);
  v5[1] = a2;
  dispatch_after(v3, MEMORY[0x277D85CD0], block);
  objc_destroyWeak(v5);
  objc_destroyWeak(&location);
}

void __64__HUCameraPresenceRecordingSettingsModule_clearLoadingIndicator__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _clearItemsUpdating];
  v2 = [WeakRetained itemProvider];
  v3 = [v2 items];

  v4 = objc_alloc(MEMORY[0x277D14788]);
  v5 = [WeakRetained itemProviders];
  v6 = [v4 initWithItemProviders:v5 items:v3 senderSelector:*(a1 + 40)];

  v7 = [WeakRetained itemUpdater];
  v8 = [v7 performItemUpdateRequest:v6];
}

- (void)updatePlanCameraCount
{
  v3 = [(HUCameraPresenceRecordingSettingsModule *)self home];
  v4 = [(HUCameraPresenceRecordingSettingsModule *)self home];
  v5 = [v4 currentUser];
  v6 = [v3 hf_userIsOwner:v5];

  v7 = HFLogForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "User is owner, checking CloudSubscriptionFeatures for camera numbers.", buf, 2u);
    }

    objc_initWeak(buf, self);
    v9 = MEMORY[0x277CFB450];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __64__HUCameraPresenceRecordingSettingsModule_updatePlanCameraCount__block_invoke;
    v10[3] = &unk_277DBF438;
    objc_copyWeak(&v11, buf);
    [v9 requestFeatureWithId:@"home.cameras" completion:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  else
  {
    if (v8)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "User is not owner, skipping CloudSubscriptionFeatures check.", buf, 2u);
    }
  }
}

void __64__HUCameraPresenceRecordingSettingsModule_updatePlanCameraCount__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v19 = 138412290;
      v20 = v6;
      _os_log_error_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_ERROR, "Camera count request error:%@", &v19, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [v5 value];

  if (v9)
  {
    v10 = [WeakRetained currentPlanCameraCount];
    v11 = [v10 integerValue];
    v12 = [v5 value];
    if (v11 >= [v12 integerValue])
    {
      v13 = 0;
    }

    else
    {
      v13 = [WeakRetained pendingUpgradeRequest];
    }

    v15 = [v5 value];
LABEL_14:
    [WeakRetained setCurrentPlanCameraCount:v15];

    goto LABEL_15;
  }

  if ([v5 status] == 2)
  {
    v14 = HFLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "FeatureStatusUnavailable setting Current plan camera count to 0", &v19, 2u);
    }

    v15 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v13 = 0;
    goto LABEL_14;
  }

  v13 = 0;
LABEL_15:
  v16 = HFLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [WeakRetained currentPlanCameraCount];
    v19 = 138412546;
    v20 = v17;
    v21 = 1024;
    v22 = v13;
    _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "Current plan camera count = %@ needsRetry:%{BOOL}d", &v19, 0x12u);
  }

  if (v13)
  {
    [WeakRetained setPendingUpgradeRequest:0];
    v18 = [WeakRetained updateStreamingSetting:2 isRetry:1];
  }
}

- (void)_presentCloudUpgradeFlowWithCameraCount:(unint64_t)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v7 = [v5 upgradeURLForCameraCount:v6];

  [(HUCameraPresenceRecordingSettingsModule *)self setPendingUpgradeRequest:1];
  if (_os_feature_enabled_impl())
  {
    if ([MEMORY[0x277CC1EC8] isCurrentProcessAnApplicationExtension])
    {
      NSLog(&cfstr_WeAreCurrently.isa);
    }

    else
    {
      v8 = HFLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11 = v7;
        _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "Launching cloud upgrade flow for url:%@", &v10, 0xCu);
      }

      v9 = [MEMORY[0x277D75128] performSelector:sel_sharedApplication];
      [v9 openURL:v7 withCompletionHandler:0];
    }
  }
}

- (void)presentCloudUpgradeFlowWithCameraCount:(unint64_t)a3
{
  v23[2] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2050000000;
  v5 = _MergedGlobals_3_6;
  v21 = _MergedGlobals_3_6;
  if (!_MergedGlobals_3_6)
  {
    *buf = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __getICQOfferManagerClass_block_invoke;
    v16 = &unk_277DB7768;
    v17 = &v18;
    __getICQOfferManagerClass_block_invoke(buf);
    v5 = v19[3];
  }

  v6 = v5;
  _Block_object_dispose(&v18, 8);
  v7 = objc_alloc_init(v5);
  v22[0] = @"cameraCount";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v22[1] = @"appContext";
  v23[0] = v8;
  v9 = *MEMORY[0x277D13948];
  v23[1] = *MEMORY[0x277D13948];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];

  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_INFO, "ICQOfferManager getting current offer from freshmint service", buf, 2u);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__HUCameraPresenceRecordingSettingsModule_presentCloudUpgradeFlowWithCameraCount___block_invoke;
  v12[3] = &unk_277DBF460;
  v12[4] = self;
  [v7 getOfferForBundleIdentifier:v9 offerContext:v10 completion:v12];
}

void __82__HUCameraPresenceRecordingSettingsModule_presentCloudUpgradeFlowWithCameraCount___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    [*(a1 + 32) setOfferState:2];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __82__HUCameraPresenceRecordingSettingsModule_presentCloudUpgradeFlowWithCameraCount___block_invoke_2;
    v11[3] = &unk_277DB7558;
    v8 = v5;
    v9 = *(a1 + 32);
    v12 = v8;
    v13 = v9;
    dispatch_async(MEMORY[0x277D85CD0], v11);
  }

  else if (v6)
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v7;
      _os_log_error_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_ERROR, "ICQOfferManager: there was an error getting the current offer: %@", buf, 0xCu);
    }

    [*(a1 + 32) setOfferState:1];
    [*(a1 + 32) sendCAMetricInfo];
  }
}

void __82__HUCameraPresenceRecordingSettingsModule_presentCloudUpgradeFlowWithCameraCount___block_invoke_2(uint64_t a1)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v2 = qword_27C837F80;
  v20 = qword_27C837F80;
  if (!qword_27C837F80)
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __getICQUpgradeFlowOptionsClass_block_invoke;
    v15 = &unk_277DB7768;
    v16 = &v17;
    __getICQUpgradeFlowOptionsClass_block_invoke(&v12);
    v2 = v18[3];
  }

  v3 = v2;
  _Block_object_dispose(&v17, 8);
  v4 = objc_alloc_init(v2);
  v5 = [MEMORY[0x277D75348] hf_keyColor];
  [v4 setButtonTintColor:v5];

  v6 = [MEMORY[0x277D75348] hf_keyColor];
  [v4 setNavigationBarTintColor:v6];

  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v7 = qword_27C837F88;
  v20 = qword_27C837F88;
  if (!qword_27C837F88)
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __getICQUpgradeFlowManagerClass_block_invoke;
    v15 = &unk_277DB7768;
    v16 = &v17;
    __getICQUpgradeFlowManagerClass_block_invoke(&v12);
    v7 = v18[3];
  }

  v8 = v7;
  _Block_object_dispose(&v17, 8);
  v9 = [[v7 alloc] initWithOffer:*(a1 + 32)];
  [v9 setDelegate:*(a1 + 40)];
  [v9 setFlowOptions:v4];
  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_INFO, "ICQUpgradeFlowManager presenting current offer UI", &v12, 2u);
  }

  v11 = [*(a1 + 40) presentingViewController];
  [v9 beginFlowWithPresentingViewController:v11];
}

- (void)presentInsufficientPrivilegesAlert
{
  v3 = MEMORY[0x277D75110];
  v4 = _HULocalizedStringWithDefaultValue(@"HUCameraRecordingSettingsInsufficientPermissionsAlert_Title", @"HUCameraRecordingSettingsInsufficientPermissionsAlert_Title", 1);
  v5 = _HULocalizedStringWithDefaultValue(@"HUCameraRecordingSettingsInsufficientPermissionsAlert_Message", @"HUCameraRecordingSettingsInsufficientPermissionsAlert_Message", 1);
  v10 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  v6 = MEMORY[0x277D750F8];
  v7 = _HULocalizedStringWithDefaultValue(@"HUOkTitle", @"HUOkTitle", 1);
  v8 = [v6 actionWithTitle:v7 style:0 handler:0];
  [v10 addAction:v8];

  v9 = [(HUCameraPresenceRecordingSettingsModule *)self presentingViewController];
  [v9 presentViewController:v10 animated:1 completion:0];
}

+ (id)upgradeURLForCameraCount:(id)a3
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%d", @"https://icq.icloud.com/?context=aUNsb3VkU3Vic2NyaXB0aW9uX2NvbS5hcHBsZS5ob21lS2l0X2NhbWVyYVNldHRpbmdz&cameraCount=", objc_msgSend(a3, "intValue")];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:v3];

  return v4;
}

+ (id)titleForQuotaAlertForCameraCount:(id)a3
{
  v3 = [a3 integerValue];
  v4 = @"HUCameraRecordingSettingsInsufficientQuotaMultipleAlert_Title";
  if (v3 == 1)
  {
    v4 = @"HUCameraRecordingSettingsInsufficientQuotaOneAlert_Title";
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"HUCameraRecordingSettingsInsufficientQuotaNoneAlert_Title";
  }

  v6 = _HULocalizedStringWithDefaultValue(v5, v5, 1);

  return v6;
}

+ (id)messageForQuotaAlertForCameraCount:(id)a3
{
  v4 = a3;
  v5 = [v4 integerValue];
  if (v5 == 1)
  {
    v6 = @"HUCameraRecordingSettingsInsufficientQuotaOneAlert_Message";
    goto LABEL_5;
  }

  if (!v5)
  {
    v6 = @"HUCameraRecordingSettingsInsufficientQuotaNoneAlert_Message";
LABEL_5:
    v7 = _HULocalizedStringWithDefaultValue(v6, v6, 1);
    goto LABEL_7;
  }

  v8 = [a1 stringFromNumber:v4];
  v7 = HULocalizedStringWithFormat(@"HUCameraRecordingSettingsInsufficientQuotaMultipleAlert_Message", @"%@", v9, v10, v11, v12, v13, v14, v8);

LABEL_7:

  return v7;
}

+ (id)titleForHomeOwnerQuotaAlertForCameraCount:(id)a3
{
  v4 = a3;
  v5 = [a1 stringFromNumber:v4];
  v6 = [v5 capitalizedString];

  v7 = [v4 integerValue];
  v14 = HULocalizedStringWithFormat(@"HUCameraRecordingSettingsInsufficientQuotaHomeOwnerAlert_Title", @"%lu", v8, v9, v10, v11, v12, v13, v7);
  v15 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  v16 = [v14 rangeOfCharacterFromSet:v15];
  v18 = v17;

  if (v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = [v14 stringByReplacingCharactersInRange:v16 withString:{v18, v6}];

    v14 = v19;
  }

  return v14;
}

+ (id)stringFromNumber:(id)a3
{
  v3 = MEMORY[0x277CCABB8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setNumberStyle:5];
  v6 = [v5 stringFromNumber:v4];

  return v6;
}

- (void)presentHomeOwnerQuotaAlertForOverflowCount:(int64_t)a3
{
  [(HUCameraPresenceRecordingSettingsModule *)self clearLoadingIndicator];
  v5 = objc_opt_class();
  v6 = [(HUCameraPresenceRecordingSettingsModule *)self currentPlanCameraCount];
  v7 = [v5 titleForHomeOwnerQuotaAlertForCameraCount:v6];

  v8 = objc_opt_class();
  v9 = [(HUCameraPresenceRecordingSettingsModule *)self currentPlanCameraCount];
  v10 = [v8 messageForHomeOwnerQuotaAlertForCameraCount:v9];

  v11 = [MEMORY[0x277D75110] alertControllerWithTitle:v7 message:v10 preferredStyle:1];
  objc_initWeak(&location, self);
  v12 = MEMORY[0x277D750F8];
  v13 = _HULocalizedStringWithDefaultValue(@"HUUpgradeNowTitle", @"HUUpgradeNowTitle", 1);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __86__HUCameraPresenceRecordingSettingsModule_presentHomeOwnerQuotaAlertForOverflowCount___block_invoke;
  v19[3] = &unk_277DBF488;
  objc_copyWeak(v20, &location);
  v20[1] = a3;
  v14 = [v12 actionWithTitle:v13 style:0 handler:v19];

  [v11 addAction:v14];
  v15 = MEMORY[0x277D750F8];
  v16 = _HULocalizedStringWithDefaultValue(@"HUCancelTitle", @"HUCancelTitle", 1);
  v17 = [v15 actionWithTitle:v16 style:1 handler:0];
  [v11 addAction:v17];

  v18 = [(HUCameraPresenceRecordingSettingsModule *)self presentingViewController];
  [v18 presentViewController:v11 animated:1 completion:0];

  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
}

void __86__HUCameraPresenceRecordingSettingsModule_presentHomeOwnerQuotaAlertForOverflowCount___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentCloudUpgradeFlowWithCameraCount:*(a1 + 40)];
}

- (void)presentSharedAdminQuotaAlertForCount:(unint64_t)a3
{
  [(HUCameraPresenceRecordingSettingsModule *)self clearLoadingIndicator];
  v5 = objc_opt_class();
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v15 = [v5 titleForQuotaAlertForCameraCount:v6];

  v7 = objc_opt_class();
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v9 = [v7 messageForQuotaAlertForCameraCount:v8];

  v10 = [MEMORY[0x277D75110] alertControllerWithTitle:v15 message:v9 preferredStyle:1];
  v11 = MEMORY[0x277D750F8];
  v12 = _HULocalizedStringWithDefaultValue(@"HUOkTitle", @"HUOkTitle", 1);
  v13 = [v11 actionWithTitle:v12 style:0 handler:0];
  [v10 addAction:v13];

  v14 = [(HUCameraPresenceRecordingSettingsModule *)self presentingViewController];
  [v14 presentViewController:v10 animated:1 completion:0];
}

- (void)presentGenericError
{
  v3 = MEMORY[0x277D75110];
  v4 = _HULocalizedStringWithDefaultValue(@"HUCameraStreamingSettingsGenericErrorTitle", @"HUCameraStreamingSettingsGenericErrorTitle", 1);
  v5 = _HULocalizedStringWithDefaultValue(@"HUCameraStreamingSettingsGenericErrorDescription", @"HUCameraStreamingSettingsGenericErrorDescription", 1);
  v10 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  v6 = MEMORY[0x277D750F8];
  v7 = _HULocalizedStringWithDefaultValue(@"HUOkTitle", @"HUOkTitle", 1);
  v8 = [v6 actionWithTitle:v7 style:0 handler:0];
  [v10 addAction:v8];

  v9 = [(HUCameraPresenceRecordingSettingsModule *)self presentingViewController];
  [v9 presentViewController:v10 animated:1 completion:0];
}

- (void)presentMissingSupportedHubAlert
{
  v3 = [(HUCameraPresenceRecordingSettingsModule *)self home];
  v4 = [v3 residentDevices];
  v5 = [v4 count];

  if (v5)
  {
    v6 = @"HUCameraRecordingSettingsUnsupportedHomeHub_Title";
  }

  else
  {
    v6 = @"HUHomeHubRequiredTitle";
  }

  if (v5)
  {
    v7 = @"HUCameraRecordingSettingsUnsupportedHomeHub_Message";
  }

  else
  {
    v7 = @"HUCameraRecordingSettingsNoHomeHub_Message";
  }

  v14 = _HULocalizedStringWithDefaultValue(v6, v6, 1);
  v8 = _HULocalizedStringWithDefaultValue(v7, v7, 1);
  v9 = [MEMORY[0x277D75110] alertControllerWithTitle:v14 message:v8 preferredStyle:1];
  v10 = MEMORY[0x277D750F8];
  v11 = _HULocalizedStringWithDefaultValue(@"HUOkTitle", @"HUOkTitle", 1);
  v12 = [v10 actionWithTitle:v11 style:0 handler:0];
  [v9 addAction:v12];

  v13 = [(HUCameraPresenceRecordingSettingsModule *)self presentingViewController];
  [v13 presentViewController:v9 animated:1 completion:0];
}

- (void)_clearItemsUpdating
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [(HUCameraPresenceRecordingSettingsModule *)self itemProvider];
  v3 = [v2 items];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        objc_opt_class();
        v10 = v9;
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;

        [v12 setUpdateInProgress:{0, v13}];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)_dispatchUpdateForCameraProfile:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D146E8] sharedDispatcher];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __75__HUCameraPresenceRecordingSettingsModule__dispatchUpdateForCameraProfile___block_invoke;
  v6[3] = &unk_277DBF4B0;
  v7 = v3;
  v5 = v3;
  [v4 dispatchCameraObserverMessage:v6 sender:0];
}

void __75__HUCameraPresenceRecordingSettingsModule__dispatchUpdateForCameraProfile___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 userSettings];
  [v3 cameraUserSettingsDidUpdate:v4];
}

- (id)_titleString
{
  if ([(HUCameraPresenceRecordingSettingsModule *)self presenceEventType]== 4)
  {
    v2 = @"HUCameraStreamingSettingsModuleNoOneHomeSettings";
  }

  else
  {
    v2 = @"HUCameraStreamingSettingsModuleAnybodyHomeSettings";
  }

  v3 = _HULocalizedStringWithDefaultValue(v2, v2, 1);

  return v3;
}

- (id)didSelectItem:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(HUCameraPresenceRecordingSettingsModule *)self home];
  v7 = [v6 hf_hasCameraRecordingResident];

  if (v7)
  {
    v8 = [v5 latestResults];
    v9 = [v8 objectForKeyedSubscript:@"HUCameraSettingResultKey"];
    v10 = [v9 unsignedIntegerValue];

    [(HUCameraPresenceRecordingSettingsModule *)self _clearItemsUpdating];
    v11 = [(HUCameraPresenceRecordingSettingsModule *)self recordingSettingItemProvider];
    v12 = [v11 items];
    v13 = [v12 containsObject:v5];

    if (v13)
    {
      objc_opt_class();
      v14 = v5;
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      [v16 setUpdateInProgress:1];
      v17 = objc_alloc(MEMORY[0x277D14788]);
      v18 = [(HUCameraPresenceRecordingSettingsModule *)self itemProviders];
      v19 = [MEMORY[0x277CBEB98] setWithObject:v14];
      v20 = [v17 initWithItemProviders:v18 items:v19 senderSelector:a2];

      v21 = [(HFItemModule *)self itemUpdater];
      v22 = [v21 performItemUpdateRequest:v20];

      v23 = [(HUCameraPresenceRecordingSettingsModule *)self updateStreamingSetting:v10 isRetry:0];

      goto LABEL_11;
    }
  }

  else
  {
    v24 = HFLogForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = [(HUCameraPresenceRecordingSettingsModule *)self home];
      v26 = [(HUCameraPresenceRecordingSettingsModule *)self home];
      v27 = [v26 residentDevices];
      v29 = 138412546;
      v30 = v25;
      v31 = 2112;
      v32 = v27;
      _os_log_impl(&dword_20CEB6000, v24, OS_LOG_TYPE_INFO, "Expected a camera recording resident, but none found. Home: %@ Residents: %@", &v29, 0x16u);
    }

    [(HUCameraPresenceRecordingSettingsModule *)self presentMissingSupportedHubAlert];
  }

  v23 = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_11:

  return v23;
}

- (id)itemProviders
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HUCameraPresenceRecordingSettingsModule *)self itemProvider];
  v4 = [v2 setWithObject:v3];

  return v4;
}

- (void)_buildItemProvider
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x277D14B38]);
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __61__HUCameraPresenceRecordingSettingsModule__buildItemProvider__block_invoke;
  v24 = &unk_277DB7448;
  objc_copyWeak(&v25, &location);
  v4 = [v3 initWithResultsBlock:&v21];
  showOptionsItem = self->_showOptionsItem;
  self->_showOptionsItem = v4;

  v6 = [HUCameraUsageOptionItemProvider alloc];
  v7 = [(HUCameraPresenceRecordingSettingsModule *)self presenceEventType:v21];
  v8 = [(HUCameraPresenceRecordingSettingsModule *)self cameraProfiles];
  v9 = [(HUCameraUsageOptionItemProvider *)v6 initWithPresenceEventType:v7 cameraProfiles:v8];
  [(HUCameraPresenceRecordingSettingsModule *)self setRecordingSettingItemProvider:v9];

  v10 = [(HUCameraPresenceRecordingSettingsModule *)self recordingSettingItemProvider];
  v11 = [v10 reloadItems];

  v12 = [(HUCameraPresenceRecordingSettingsModule *)self recordingSettingItemProvider];
  v13 = [v12 items];
  v14 = [v13 allObjects];
  [(HUCameraPresenceRecordingSettingsModule *)self setOptionItems:v14];

  v15 = MEMORY[0x277CBEB98];
  v16 = [(HUCameraPresenceRecordingSettingsModule *)self optionItems];
  v17 = [v15 setWithArray:v16];
  v18 = [(HUCameraPresenceRecordingSettingsModule *)self showOptionsItem];
  v19 = [v17 setByAddingObject:v18];

  v20 = [objc_alloc(MEMORY[0x277D14B40]) initWithItems:v19];
  [(HUCameraPresenceRecordingSettingsModule *)self setItemProvider:v20];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

id __61__HUCameraPresenceRecordingSettingsModule__buildItemProvider__block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_opt_new();
    v3 = [WeakRetained _titleString];
    [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x277D13F60]];

    [WeakRetained accessModeSetting];
    v4 = HFLocalizedStringFromHMCameraAccessMode();
    [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x277D13E20]];

    v5 = [WeakRetained home];
    v6 = [v5 hf_currentUserIsAdministrator];
    v7 = MEMORY[0x277CBEC38];
    if (v6)
    {
      v8 = MEMORY[0x277CBEC28];
    }

    else
    {
      v8 = MEMORY[0x277CBEC38];
    }

    [v2 setObject:v8 forKeyedSubscript:*MEMORY[0x277D13EA8]];

    [v2 setObject:v7 forKeyedSubscript:*MEMORY[0x277D13EB0]];
    v9 = [MEMORY[0x277D2C900] futureWithResult:v2];
  }

  else
  {
    v10 = MEMORY[0x277D2C900];
    v13 = *MEMORY[0x277D13FB8];
    v14[0] = MEMORY[0x277CBEC38];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v9 = [v10 futureWithResult:v11];
  }

  return v9;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277D14850]);
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", -[HUCameraPresenceRecordingSettingsModule presenceEventType](self, "presenceEventType")];
  v7 = [v5 initWithIdentifier:v6];

  v8 = MEMORY[0x277CBEB18];
  v9 = [(HUCameraPresenceRecordingSettingsModule *)self showOptionsItem];
  v10 = [v8 arrayWithObject:v9];

  if ([(HUExpandableItemModule *)self showOptions])
  {
    v11 = [(HUCameraPresenceRecordingSettingsModule *)self optionItems];
    v12 = [v11 sortedArrayUsingComparator:&__block_literal_global_144];

    [v10 addObjectsFromArray:v12];
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __75__HUCameraPresenceRecordingSettingsModule_buildSectionsWithDisplayedItems___block_invoke_3;
  v17[3] = &unk_277DB85D8;
  v18 = v4;
  v13 = v4;
  v14 = [v10 na_filter:v17];
  [v7 setItems:v14];

  v19[0] = v7;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];

  return v15;
}

uint64_t __75__HUCameraPresenceRecordingSettingsModule_buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 latestResults];
  v6 = *MEMORY[0x277D13FF0];
  v7 = [v5 objectForKey:*MEMORY[0x277D13FF0]];

  v8 = [v4 latestResults];

  v9 = [v8 objectForKey:v6];

  v17 = MEMORY[0x277D85DD0];
  v10 = v7;
  v18 = v10;
  v11 = v9;
  v12 = v11;
  v19 = v11;
  if (v10)
  {
    v13 = -1;
  }

  else
  {
    v13 = v11 != 0;
  }

  if (v10)
  {
    v14 = v11 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = v11;
  }

  else
  {
    v13 = [v10 compare:{v11, v17, 3221225472, __75__HUCameraPresenceRecordingSettingsModule_buildSectionsWithDisplayedItems___block_invoke_2, &unk_277DB78F8, v10}];
    v15 = v19;
  }

  return v13;
}

- (NSString)longestCameraUsageOptionItemTitle
{
  longestCameraUsageOptionItemTitle = self->_longestCameraUsageOptionItemTitle;
  if (longestCameraUsageOptionItemTitle)
  {
    v3 = longestCameraUsageOptionItemTitle;
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__18;
    v13 = __Block_byref_object_dispose__18;
    v14 = 0;
    v5 = [(HUCameraPresenceRecordingSettingsModule *)self recordingSettingItemProvider];
    v6 = [v5 items];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __76__HUCameraPresenceRecordingSettingsModule_longestCameraUsageOptionItemTitle__block_invoke;
    v8[3] = &unk_277DBF4D8;
    v8[4] = &v9;
    [v6 na_each:v8];

    objc_storeStrong(&self->_longestCameraUsageOptionItemTitle, v10[5]);
    v3 = v10[5];
    _Block_object_dispose(&v9, 8);
  }

  return v3;
}

void __76__HUCameraPresenceRecordingSettingsModule_longestCameraUsageOptionItemTitle__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 latestResults];
  obj = [v3 objectForKeyedSubscript:*MEMORY[0x277D13F60]];

  v4 = obj;
  if (obj)
  {
    v5 = [obj length];
    v6 = [*(*(*(a1 + 32) + 8) + 40) length];
    v4 = obj;
    if (v5 > v6)
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
      v4 = obj;
    }
  }
}

- (void)upgradeFlowManagerDidCancel:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_INFO, "ICQUpgradeFlowManager did cancel upgrade flow", buf, 2u);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(HUCameraPresenceRecordingSettingsModule *)self cameraProfiles];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(HUCameraPresenceRecordingSettingsModule *)self _dispatchUpdateForCameraProfile:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }

  [(HUCameraPresenceRecordingSettingsModule *)self sendCAMetricInfo];
}

- (void)upgradeFlowManagerDidComplete:(id)a3
{
  [(HUCameraPresenceRecordingSettingsModule *)self setDidCompleteCloudUpgradeOffer:1];
  [(HUCameraPresenceRecordingSettingsModule *)self setUpgradeState:3];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_INFO, "ICQUpgradeFlowManager did complete upgrade flow", v6, 2u);
  }

  v5 = [(HUCameraPresenceRecordingSettingsModule *)self updateStreamingSetting:2 isRetry:1];
}

- (unint64_t)countCameraProfilesWithRecordingService
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(HUCameraPresenceRecordingSettingsModule *)self cameraProfiles];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) hf_supportsRecordingEvents];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)sendCAMetricInfo
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134218496;
    v12 = [(HUCameraPresenceRecordingSettingsModule *)self numCamerasSupportRecordingService];
    v13 = 2048;
    v14 = [(HUCameraPresenceRecordingSettingsModule *)self offerState];
    v15 = 2048;
    v16 = [(HUCameraPresenceRecordingSettingsModule *)self upgradeState];
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_INFO, "[Core-Analytics iCloud Upgrade Metric Info] numCamerasSupportRecording: %lu offerState: %lu iCloudUpgradeState: %lu", buf, 0x20u);
  }

  v4 = MEMORY[0x277D143D8];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HUCameraPresenceRecordingSettingsModule numCamerasSupportRecordingService](self, "numCamerasSupportRecordingService", *MEMORY[0x277D13680])}];
  v10[0] = v5;
  v9[1] = *MEMORY[0x277D13688];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HUCameraPresenceRecordingSettingsModule offerState](self, "offerState")}];
  v10[1] = v6;
  v9[2] = *MEMORY[0x277D136C8];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HUCameraPresenceRecordingSettingsModule upgradeState](self, "upgradeState")}];
  v10[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];
  [v4 sendEvent:2 withData:v8];
}

- (void)dealloc
{
  if (_os_feature_enabled_impl())
  {
    v3 = MEMORY[0x277CFB450];
    v4 = [(HUCameraPresenceRecordingSettingsModule *)self featureChangeObserver];
    [v3 unregisterForFeatureChangeNotificationsUsingObserver:v4];
  }

  v5.receiver = self;
  v5.super_class = HUCameraPresenceRecordingSettingsModule;
  [(HUCameraPresenceRecordingSettingsModule *)&v5 dealloc];
}

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end