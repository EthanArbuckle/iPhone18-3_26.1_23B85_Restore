@interface HUBannerItemModuleController
- (BOOL)hasTapActionForItem:(id)a3;
- (Class)collectionCellClassForItem:(id)a3;
- (HUBannerItemModuleController)initWithModule:(id)a3;
- (HUBannerItemModuleController)initWithModule:(id)a3 host:(id)a4 delegate:(id)a5;
- (HUBannerItemModuleControllerDelegate)delegate;
- (id)_defaultCellLayoutOptionsForViewSize:(CGSize)a3;
- (id)collectionLayoutSectionForSectionWithIdentifier:(id)a3 layoutEnvironment:(id)a4;
- (unint64_t)didSelectItem:(id)a3;
- (void)_sendBannerInteractionforItem:(id)a3 tappedBannerItemOverrideClassName:(id)a4;
- (void)bannerView:(id)a3 dismissButtonTapped:(id)a4;
- (void)configureCell:(id)a3 forItem:(id)a4;
- (void)dealloc;
- (void)dismissCameraUpgradeBanner;
- (void)fetchMediaAccountForHome:(id)a3;
- (void)upgradeCameraSelected;
- (void)user:(id)a3 didUpdateNeedsiTunesMultiUserRepair:(BOOL)a4;
@end

@implementation HUBannerItemModuleController

- (HUBannerItemModuleController)initWithModule:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithModule_host_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUBannerItemModuleController.m" lineNumber:51 description:{@"%s is unavailable; use %@ instead", "-[HUBannerItemModuleController initWithModule:]", v6}];

  return 0;
}

- (HUBannerItemModuleController)initWithModule:(id)a3 host:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_class();
  v12 = v8;
  if (v12)
  {
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v12;
    if (v13)
    {
      goto LABEL_8;
    }

    v15 = [MEMORY[0x277CCA890] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v15 handleFailureInFunction:v16 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v11, objc_opt_class()}];
  }

  v14 = 0;
LABEL_8:

  v30.receiver = self;
  v30.super_class = HUBannerItemModuleController;
  v17 = [(HUItemModuleController *)&v30 initWithModule:v12];
  v18 = v17;
  if (v17)
  {
    [(HUItemModuleController *)v17 setHost:v9];
    [(HUBannerItemModuleController *)v18 setDelegate:v10];
    v19 = [(HUItemModuleController *)v18 host];
    v20 = [v19 presentingViewControllerForModuleController:v18];

    v21 = [v20 view];
    [v21 frame];
    v24 = [(HUBannerItemModuleController *)v18 _defaultCellLayoutOptionsForViewSize:v22, v23];
    layoutOptions = v18->_layoutOptions;
    v18->_layoutOptions = v24;

    v26 = [v12 context];
    v27 = [v26 home];
    [(HUBannerItemModuleController *)v18 fetchMediaAccountForHome:v27];

    v28 = [MEMORY[0x277D146E8] sharedDispatcher];
    [v28 addUserObserver:v18];
  }

  return v18;
}

- (void)dealloc
{
  v3 = [(HUBannerItemModuleController *)self homeMediaAccountFuture];
  [v3 cancel];

  v4.receiver = self;
  v4.super_class = HUBannerItemModuleController;
  [(HUBannerItemModuleController *)&v4 dealloc];
}

- (id)collectionLayoutSectionForSectionWithIdentifier:(id)a3 layoutEnvironment:(id)a4
{
  v48[1] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D14CE8] isAnIPad])
  {
    objc_opt_class();
    v5 = [(HUItemModuleController *)self host];
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = [MEMORY[0x277D75418] currentDevice];
    if (([v8 orientation] - 1) >= 2)
    {
      v9 = 0.75;
    }

    else
    {
      v9 = 0.67;
    }

    v10 = [v7 view];
    [v10 bounds];
    v12 = v11;
    v13 = [v7 view];

    [v13 bounds];
    v15 = v12 / v14;

    v16 = MEMORY[0x277CFB840];
    if (v15 >= v9)
    {
      v17 = 0;
      v18 = 0.5;
      goto LABEL_12;
    }
  }

  else
  {
    v16 = MEMORY[0x277CFB840];
  }

  v18 = 1.0;
  v17 = 1;
LABEL_12:
  v19 = [v16 fractionalWidthDimension:v18];
  v20 = MEMORY[0x277CFB870];
  v21 = [MEMORY[0x277CFB840] estimatedDimension:160.0];
  v22 = [v20 sizeWithWidthDimension:v19 heightDimension:v21];

  v23 = [MEMORY[0x277CFB860] itemWithLayoutSize:v22];
  v24 = MEMORY[0x277CFB870];
  v25 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
  v26 = [v22 heightDimension];
  v27 = [v24 sizeWithWidthDimension:v25 heightDimension:v26];

  v28 = MEMORY[0x277CFB850];
  if (v17)
  {
    v48[0] = v23;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:1];
    v30 = [v28 horizontalGroupWithLayoutSize:v27 subitems:v29];
  }

  else
  {
    v30 = [MEMORY[0x277CFB850] horizontalGroupWithLayoutSize:v27 subitem:v23 count:2];
  }

  v31 = MEMORY[0x277CFB878];
  v32 = [(HUBannerItemModuleController *)self layoutOptions];
  [v32 columnSpacing];
  v33 = [v31 fixedSpacing:?];
  [v30 setInterItemSpacing:v33];

  v34 = [MEMORY[0x277CFB868] sectionWithGroup:v30];
  v35 = [(HUBannerItemModuleController *)self layoutOptions];
  [v35 rowSpacing];
  [v34 setInterGroupSpacing:?];

  v36 = [(HUBannerItemModuleController *)self layoutOptions];
  [v36 sectionTopMargin];
  v38 = v37;
  v39 = [(HUBannerItemModuleController *)self layoutOptions];
  [v39 sectionLeadingMargin];
  v41 = v40;
  v42 = [(HUBannerItemModuleController *)self layoutOptions];
  [v42 sectionBottomMargin];
  v44 = v43;
  v45 = [(HUBannerItemModuleController *)self layoutOptions];
  [v45 sectionTrailingMargin];
  [v34 setContentInsets:{v38, v41, v44, v46}];

  return v34;
}

- (Class)collectionCellClassForItem:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)configureCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v37.receiver = self;
  v37.super_class = HUBannerItemModuleController;
  [(HUItemModuleController *)&v37 configureCell:v6 forItem:v7];
  v8 = [(HUBannerItemModuleController *)self layoutOptions];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = objc_opt_class();
      v21 = v6;
      if (v21)
      {
        if (objc_opt_isKindOfClass())
        {
          v22 = v21;
        }

        else
        {
          v22 = 0;
        }

        v12 = v21;
        if (v22)
        {
          goto LABEL_19;
        }

        v23 = [MEMORY[0x277CCA890] currentHandler];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
        [v23 handleFailureInFunction:v24 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v20, objc_opt_class()}];
      }

      v12 = 0;
LABEL_19:

      [v12 setDelegate:self];
      v25 = [v7 latestResults];
      v26 = [v25 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
      [v12 setAccessibilityIdentifier:v26];

      v17 = [v8 welcomeUIBannerCellOptions];
      [v12 setLayoutOptions:v17];
      goto LABEL_20;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_22;
    }

    v27 = objc_opt_class();
    v28 = v6;
    if (v28)
    {
      if (objc_opt_isKindOfClass())
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v12 = v28;
      if (v29)
      {
        goto LABEL_31;
      }

      v30 = [MEMORY[0x277CCA890] currentHandler];
      v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [v30 handleFailureInFunction:v31 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v27, objc_opt_class()}];
    }

    v12 = 0;
LABEL_31:

    [v12 setDelegate:self];
    v32 = [v8 bannerCellOptions];
    [v12 setLayoutOptions:v32];

    v33 = [v7 latestResults];
    v34 = *MEMORY[0x277D13DC8];
    v35 = [v33 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
    [v12 setAccessibilityIdentifier:v35];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_21;
    }

    v36 = [v12 bannerView];
    [v36 setDisableHighlighting:1];

    v16 = [v7 latestResults];
    v17 = v16;
    v18 = v34;
    goto LABEL_10;
  }

  v9 = objc_opt_class();
  v10 = v6;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v10;
    if (v11)
    {
      goto LABEL_9;
    }

    v13 = [MEMORY[0x277CCA890] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v13 handleFailureInFunction:v14 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v9, objc_opt_class()}];
  }

  v12 = 0;
LABEL_9:

  [v12 setDelegate:self];
  v15 = [v8 bannerCellOptions];
  [v12 setLayoutOptions:v15];

  v16 = [v7 latestResults];
  v17 = v16;
  v18 = *MEMORY[0x277D13DC8];
LABEL_10:
  v19 = [v16 objectForKeyedSubscript:v18];
  [v12 setAccessibilityIdentifier:v19];

LABEL_20:
LABEL_21:

LABEL_22:
}

- (id)_defaultCellLayoutOptionsForViewSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [MEMORY[0x277D14CE8] isAMac];
  if ([MEMORY[0x277D14CE8] useMacIdiom])
  {
    v6 = &unk_282491760;
  }

  else
  {
    v6 = 0;
  }

  v7 = [HUGridLayoutOptions defaultOptionsForViewSize:v5 columnStyle:v6 overrideSizeSubclass:width, height];
  [v7 setStatusHidden:0];
  v8 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:0];
  v9 = [v8 preferredContentSizeCategory];
  [v7 setContentSizeCategory:v9];

  [v7 setEditing:0];
  [v7 setSectionLeadingMargin:0.0];
  [v7 setSectionTrailingMargin:0.0];

  return v7;
}

- (void)bannerView:(id)a3 dismissButtonTapped:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v33 = self;
    v34 = 2080;
    v35 = "[HUBannerItemModuleController bannerView:dismissButtonTapped:]";
    v36 = 2112;
    v37 = v5;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%s User tapped dismiss button for %@", buf, 0x20u);
  }

  v7 = objc_alloc(MEMORY[0x277D14C98]);
  v8 = [(HUItemModuleController *)self module];
  v9 = [v8 context];
  v10 = [v9 home];
  v11 = [(HUItemModuleController *)self module];
  v12 = [v11 context];
  v13 = [v12 home];
  v14 = [v13 currentUser];
  v15 = [v7 initWithHome:v10 user:v14 nameStyle:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [v15 setDismissedWelcomeUIBanner:1];
  }

  v17 = MEMORY[0x277D14788];
  v18 = MEMORY[0x277CBEB98];
  v19 = [v5 item];
  v20 = [v18 na_setWithSafeObject:v19];
  v21 = [v17 requestToUpdateItems:v20 senderSelector:a2];

  v22 = [(HUItemModuleController *)self module];
  v23 = [v22 itemUpdater];
  v24 = [v23 performItemUpdateRequest:v21];

  v25 = MEMORY[0x277CCACA8];
  v26 = [v5 item];
  v27 = objc_opt_class();
  v28 = NSStringFromClass(v27);
  v29 = [v25 stringWithFormat:@"%@-dismiss", v28];

  v30 = [v5 item];
  [(HUBannerItemModuleController *)self _sendBannerInteractionforItem:v30 tappedBannerItemOverrideClassName:v29];
}

- (BOOL)hasTapActionForItem:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass & 1) != 0 && ([v5 latestResults], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "objectForKeyedSubscript:", *MEMORY[0x277D13DC8]), v4 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v4, "isEqualToString:", @"Home.Banners.Symptoms.InternetOutage")))
    {
      v6 = 1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v5 latestResults];
        v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D13DC0]];
        if (v9)
        {

          v6 = 1;
          if ((isKindOfClass & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v11 = [v5 latestResults];
          v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277D13DE8]];
          v6 = v12 == 0;

          if ((isKindOfClass & 1) == 0)
          {
            goto LABEL_12;
          }
        }
      }

      else
      {
        v6 = 0;
        if ((isKindOfClass & 1) == 0)
        {
          goto LABEL_12;
        }
      }
    }

    goto LABEL_12;
  }

  v6 = 1;
LABEL_12:

  return v6;
}

- (unint64_t)didSelectItem:(id)a3
{
  v142 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v135 = self;
    v136 = 2080;
    v137 = "[HUBannerItemModuleController didSelectItem:]";
    v138 = 2112;
    v139 = v5;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%s User tapped %@", buf, 0x20u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 latestResults];
    v8 = [v7 objectForKeyedSubscript:@"HFResultSetupBannerType"];
    v9 = [v8 unsignedIntegerValue];

    v10 = [v5 latestResults];
    v11 = [v10 objectForKeyedSubscript:@"HFResultKeyPathsForUnfinishedOnboardingFlows"];

    if ([v11 count])
    {
      v125 = [MEMORY[0x277CCACA8] stringWithFormat:@" for flows %@", v11];
    }

    else
    {
      v125 = &stru_2823E0EE8;
    }

    v47 = HFLogForCategory();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v135 = self;
      v136 = 2080;
      v137 = "[HUBannerItemModuleController didSelectItem:]";
      v138 = 2112;
      v139 = v5;
      v140 = 2112;
      v141 = v125;
      _os_log_impl(&dword_20CEB6000, v47, OS_LOG_TYPE_DEFAULT, "(%@:%s) User tapped Setup Banner %@ %@", buf, 0x2Au);
    }

    if (v9 != 1)
    {
      if (v9)
      {
LABEL_69:

        goto LABEL_70;
      }

      v48 = [MEMORY[0x277CBEB38] dictionary];
      [v48 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"OnboardingDisplayOption_OnboardingFromUserInput"];
      v133 = *MEMORY[0x277D13910];
      v49 = [MEMORY[0x277CBEA60] arrayWithObjects:&v133 count:1];
      v50 = [v11 isEqualToArray:v49];

      v51 = [MEMORY[0x277CCABB0] numberWithBool:v50];
      [v48 setObject:v51 forKeyedSubscript:@"OnboardingDisplayOption_OnboardingFromNaturalLightingReminder"];

      v124 = [(HUItemModuleController *)self module];
      v52 = [v124 context];
      v53 = [v52 home];
      v54 = [(HUItemModuleController *)self host];
      v55 = [HUHomeFeatureOnboardingUtilities home:v53 onboardFeaturesForKeyPaths:v11 presentingViewController:v54 usageOptions:v48];

LABEL_68:
      goto LABEL_69;
    }

    v56 = [v5 latestResults];
    v57 = [v56 objectForKeyedSubscript:@"HFResultSetupBannerAccessorySetupFlowsKey"];

    v58 = HFLogForCategory();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v135 = self;
      v136 = 2080;
      v137 = "[HUBannerItemModuleController didSelectItem:]";
      v138 = 2112;
      v139 = v57;
      _os_log_impl(&dword_20CEB6000, v58, OS_LOG_TYPE_DEFAULT, "(%@:%s) Status banner type is Accessory Setup. accessorySetupFlows = %@", buf, 0x20u);
    }

    v124 = [v57 na_firstObjectPassingTest:&__block_literal_global_121];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __46__HUBannerItemModuleController_didSelectItem___block_invoke_2;
    aBlock[3] = &unk_277DBD798;
    aBlock[4] = self;
    v48 = v57;
    v132 = v48;
    v123 = _Block_copy(aBlock);
    v122 = [v48 na_firstObjectPassingTest:&__block_literal_global_145];
    v121 = [v48 na_firstObjectPassingTest:&__block_literal_global_148];
    if (v124)
    {
      v59 = [(HUItemModuleController *)self module];
      v60 = [v59 context];
      v61 = [v60 home];
      v62 = [v124 homeKitObjects];
      v63 = [v62 na_map:&__block_literal_global_153];
      v64 = [HUHomeUIServiceLaunchUserInfo userInfoForResumeAccessorySetupInHome:v61 accessoryUUIDs:v63];

      v123[2](v123, v64, &stru_2823E0EE8);
    }

    else if (v122)
    {
      v67 = [(HUItemModuleController *)self module];
      v68 = [v67 context];
      v69 = [v68 home];
      v64 = [HUHomeUIServiceLaunchUserInfo userInfoForSafetyAndSecurityInHome:v69];

      v123[2](v123, v64, &stru_2823E0EE8);
    }

    else if (v121)
    {
      v72 = [(HUItemModuleController *)self module];
      v73 = [v72 context];
      v74 = [v73 home];
      v64 = [HUHomeUIServiceLaunchUserInfo userInfoForSiriEndpointInHome:v74];

      v123[2](v123, v64, &stru_2823E0EE8);
    }

    else if ([v48 na_any:&__block_literal_global_155])
    {
      v81 = [(HUItemModuleController *)self module];
      v82 = [v81 context];
      v83 = [v82 home];
      v64 = [HUHomeUIServiceLaunchUserInfo userInfoForLockAccessFirmwareUpgradeSetupInHome:v83];

      v123[2](v123, v64, &stru_2823E0EE8);
    }

    else if ([v48 na_any:&__block_literal_global_157])
    {
      v102 = [(HUItemModuleController *)self module];
      v103 = [v102 context];
      v104 = [v103 home];
      v64 = [HUHomeUIServiceLaunchUserInfo userInfoForLockAccessWalletKeySetupInHome:v104];

      v123[2](v123, v64, &stru_2823E0EE8);
    }

    else if ([v48 na_any:&__block_literal_global_159])
    {
      v105 = [(HUItemModuleController *)self module];
      v106 = [v105 context];
      v107 = [v106 home];
      v64 = [HUHomeUIServiceLaunchUserInfo userInfoForLockAccessPinCodeSetupInHome:v107];

      v108 = [MEMORY[0x277D146E8] sharedDispatcher];
      v109 = [v108 homeManager];
      [v109 launchHomeUIServiceToResumeSetupWithUserInfo:v64 completionHandler:&__block_literal_global_161];
    }

    else
    {
      if (![v48 na_any:&__block_literal_global_163])
      {
LABEL_67:

        goto LABEL_68;
      }

      v114 = [(HUItemModuleController *)self module];
      v115 = [v114 context];
      v116 = [v115 home];
      v64 = [HUHomeUIServiceLaunchUserInfo userInfoForThermostatAutoClimateControlSetupInHome:v116];

      v123[2](v123, v64, &stru_2823E0EE8);
    }

    goto LABEL_67;
  }

  v12 = [(HUItemModuleController *)self module];
  v13 = [v12 bannerItemProvider];
  v14 = [v13 multiUserTokenFixBannerItem];
  v15 = [v5 isEqual:v14];

  if (v15)
  {
    v16 = [(HUItemModuleController *)self module];
    v17 = [v16 bannerItemProvider];
    v18 = [v17 multiUserTokenFixBannerItem];
    v19 = [v18 homeMediaAccount];

    v20 = objc_alloc(MEMORY[0x277CEE938]);
    v21 = [(HUItemModuleController *)self module];
    v22 = [v21 context];
    v23 = [v22 home];
    v24 = [v23 uniqueIdentifier];
    v25 = [(HUItemModuleController *)self host];
    v26 = [v20 initWithAccount:v19 homeIdentifier:v24 viewController:v25];
    [(HUBannerItemModuleController *)self setMultiUserTokenFixTask:v26];

    v27 = [(HUBannerItemModuleController *)self multiUserTokenFixTask];
    v28 = [v27 performTask];

    v29 = [(HUItemModuleController *)self module];
    v30 = [v29 bannerItemProvider];
    v31 = [v30 multiUserTokenFixBannerItem];
    [v31 setForceHidden:1];

    v32 = MEMORY[0x277D14788];
    v33 = MEMORY[0x277CBEB98];
    v34 = [(HUItemModuleController *)self module];
    v35 = [v34 bannerItemProvider];
    v36 = [v35 multiUserTokenFixBannerItem];
    v37 = [v33 na_setWithSafeObject:v36];
    v38 = [v32 requestToUpdateItems:v37 senderSelector:a2];

    v39 = [(HUItemModuleController *)self module];
    v40 = [v39 itemUpdater];

    v41 = [v40 performItemUpdateRequest:v38];
    objc_initWeak(buf, self);
    v126[0] = MEMORY[0x277D85DD0];
    v126[1] = 3221225472;
    v126[2] = __46__HUBannerItemModuleController_didSelectItem___block_invoke_9;
    v126[3] = &unk_277DBD7C0;
    objc_copyWeak(v130, buf);
    v130[1] = a2;
    v42 = v19;
    v127 = v42;
    v43 = v40;
    v128 = v43;
    v44 = v38;
    v129 = v44;
    [v28 addFinishBlock:v126];

    objc_destroyWeak(v130);
    objc_destroyWeak(buf);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v45 = HFLogForCategory();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v135 = self;
        _os_log_impl(&dword_20CEB6000, v45, OS_LOG_TYPE_DEFAULT, "%@: User tapped See home hubs", buf, 0xCu);
      }

      v46 = [(HUBannerItemModuleController *)self delegate];
      [v46 didSelectUnreachableResidentsBanner:self];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v65 = HFLogForCategory();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v135 = self;
          _os_log_impl(&dword_20CEB6000, v65, OS_LOG_TYPE_DEFAULT, "%@: User tapped WelcomeUIBanner", buf, 0xCu);
        }

        v66 = [(HUBannerItemModuleController *)self delegate];
        [v66 didSelectWelcomeBanner:self];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v70 = HFLogForCategory();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v135 = self;
            _os_log_impl(&dword_20CEB6000, v70, OS_LOG_TYPE_DEFAULT, "%@: User tapped HomeHubMigrationBanner", buf, 0xCu);
          }

          v71 = [(HUBannerItemModuleController *)self delegate];
          [v71 didSelectHomeHubMigrationBanner:self];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v75 = HFLogForCategory();
            if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v135 = self;
              _os_log_impl(&dword_20CEB6000, v75, OS_LOG_TYPE_DEFAULT, "%@: User tapped Media Service Error Banner", buf, 0xCu);
            }

            v76 = [v5 latestResults];
            v77 = [v76 objectForKeyedSubscript:@"HFResultMediaServiceBundleIdentifierKey"];

            v78 = [MEMORY[0x277CBEBC0] hf_appStoreURLForBundleIdentifier:v77];
            v79 = [MEMORY[0x277D148E8] sharedInstance];
            v80 = [v79 openURL:v78];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v84 = HFLogForCategory();
              if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v135 = self;
                _os_log_impl(&dword_20CEB6000, v84, OS_LOG_TYPE_DEFAULT, "%@: User tapped DropIn Banner", buf, 0xCu);
              }

              objc_opt_class();
              v85 = v5;
              if (objc_opt_isKindOfClass())
              {
                v86 = v85;
              }

              else
              {
                v86 = 0;
              }

              v87 = v86;

              v88 = [v87 device];
              v89 = [(HUItemModuleController *)self module];
              v90 = [v89 context];
              v91 = [v90 home];
              v92 = [v88 homeKitIdentifier];
              v93 = [v91 hf_accessoryWithIdentifier:v92];

              objc_opt_class();
              v94 = [(HUItemModuleController *)self host];
              if (objc_opt_isKindOfClass())
              {
                v95 = v94;
              }

              else
              {
                v95 = 0;
              }

              v96 = v95;

              v97 = [HUHomeControlServiceContext alloc];
              v98 = [v93 home];
              v99 = [(HUHomeControlServiceContext *)v97 initWithServiceType:2 home:v98 accessory:v93 presentingViewController:v96];

              v100 = HFLogForCategory();
              if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v135 = self;
                v136 = 2112;
                v137 = v93;
                _os_log_impl(&dword_20CEB6000, v100, OS_LOG_TYPE_DEFAULT, "%@: Launching dropin session for accessory: %@", buf, 0x16u);
              }

              v101 = +[HUHomeControlServiceManager sharedInstance];
              [v101 launchServiceWithContext:v99];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [(HUBannerItemModuleController *)self upgradeCameraSelected];
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
                {
                  v110 = [v5 latestResults];
                  v111 = [v110 objectForKeyedSubscript:*MEMORY[0x277D13DC0]];

                  if (v111)
                  {
                    v112 = [MEMORY[0x277D148E8] sharedInstance];
                    v113 = [v112 openURL:v111];
                  }
                }

                else
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    goto LABEL_70;
                  }

                  v118 = [v5 latestResults];
                  v111 = [v118 objectForKeyedSubscript:*MEMORY[0x277D13DC0]];

                  if (v111)
                  {
                    v119 = [MEMORY[0x277D148E8] sharedInstance];
                    v120 = [v119 openURL:v111];
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_70:
  [(HUBannerItemModuleController *)self _sendBannerInteractionforItem:v5 tappedBannerItemOverrideClassName:0];

  return 0;
}

uint64_t __46__HUBannerItemModuleController_didSelectItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 type];
  v3 = [v2 isEqualToString:HFAccessorySetupFlowTypeResume];

  return v3;
}

void __46__HUBannerItemModuleController_didSelectItem___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277D146E8] sharedDispatcher];
  v8 = [v7 homeManager];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__HUBannerItemModuleController_didSelectItem___block_invoke_3;
  v12[3] = &unk_277DBD770;
  v9 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v13 = v5;
  v14 = v9;
  v15 = v6;
  v10 = v6;
  v11 = v5;
  [v8 launchHomeUIServiceToResumeSetupWithUserInfo:v11 completionHandler:v12];
}

void __46__HUBannerItemModuleController_didSelectItem___block_invoke_3(void *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v7 = a1[6];
    v8 = a1[7];
    v9 = 138413570;
    v10 = v5;
    v11 = 2080;
    v12 = "[HUBannerItemModuleController didSelectItem:]_block_invoke_3";
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v3;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(%@:%s) Launched home ui service to resume setup with user info %@. accessorySetupFlows = %@. error = %@. %@", &v9, 0x3Eu);
  }
}

uint64_t __46__HUBannerItemModuleController_didSelectItem___block_invoke_143(uint64_t a1, void *a2)
{
  v2 = [a2 type];
  v3 = [v2 isEqualToString:HFAccessorySetupFlowTypeSafetyAndSecurity];

  return v3;
}

uint64_t __46__HUBannerItemModuleController_didSelectItem___block_invoke_2_146(uint64_t a1, void *a2)
{
  v2 = [a2 type];
  v3 = [v2 isEqualToString:HFAccessorySetupFlowTypeSiriEndpoint];

  return v3;
}

id __46__HUBannerItemModuleController_didSelectItem___block_invoke_3_150(uint64_t a1, void *a2)
{
  v2 = [a2 uniqueIdentifier];
  v3 = [v2 UUIDString];

  return v3;
}

uint64_t __46__HUBannerItemModuleController_didSelectItem___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 type];
  if ([v3 isEqualToString:HFAccessorySetupFlowTypeLockAccessFirmwareUpdatePinCode])
  {
    v4 = 1;
  }

  else
  {
    v5 = [v2 type];
    if ([v5 isEqualToString:HFAccessorySetupFlowTypeLockAccessFirmwareUpdateAll])
    {
      v4 = 1;
    }

    else
    {
      v6 = [v2 type];
      v4 = [v6 isEqualToString:HFAccessorySetupFlowTypeLockAccessFirmwareUpdateWalletKey];
    }
  }

  return v4;
}

uint64_t __46__HUBannerItemModuleController_didSelectItem___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 type];
  if ([v3 isEqualToString:HFAccessorySetupFlowTypeLockAccessAll])
  {
    v4 = 1;
  }

  else
  {
    v5 = [v2 type];
    if ([v5 isEqualToString:HFAccessorySetupFlowTypeLockAccessWalletKey])
    {
      v4 = 1;
    }

    else
    {
      v6 = [v2 type];
      v4 = [v6 isEqualToString:HFAccessorySetupFlowTypeLockAccessWalletKeyUWB];
    }
  }

  return v4;
}

uint64_t __46__HUBannerItemModuleController_didSelectItem___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 type];
  v3 = [v2 isEqualToString:HFAccessorySetupFlowTypeLockAccessPinCode];

  return v3;
}

uint64_t __46__HUBannerItemModuleController_didSelectItem___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = [a2 type];
  v3 = [v2 isEqualToString:HFAccessorySetupFlowTypeEnergyOptimization];

  return v3;
}

void __46__HUBannerItemModuleController_didSelectItem___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = [WeakRetained module];
  v9 = [v8 bannerItemProvider];
  v10 = [v9 multiUserTokenFixBannerItem];
  [v10 setForceHidden:0];

  LOBYTE(v8) = [v6 BOOLValue];
  v11 = HFLogForCategory();
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = NSStringFromSelector(*(a1 + 64));
      v14 = *(a1 + 32);
      v15 = [WeakRetained module];
      v16 = [v15 context];
      v17 = [v16 home];
      *buf = 138412802;
      v27 = v13;
      v28 = 2112;
      v29 = v14;
      v30 = 2112;
      v31 = v17;
      _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "%@ Successfully fixed MultiUser Token for MediaAccount [%@] in Home [%@]", buf, 0x20u);
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __46__HUBannerItemModuleController_didSelectItem___block_invoke_165;
    v23[3] = &unk_277DB7558;
    v24 = *(a1 + 40);
    v25 = *(a1 + 48);
    dispatch_async(MEMORY[0x277D85CD0], v23);

    v12 = v24;
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v18 = NSStringFromSelector(*(a1 + 64));
    v19 = *(a1 + 32);
    v20 = [WeakRetained module];
    v21 = [v20 context];
    v22 = [v21 home];
    *buf = 138413058;
    v27 = v18;
    v28 = 2112;
    v29 = v19;
    v30 = 2112;
    v31 = v22;
    v32 = 2112;
    v33 = v5;
    _os_log_error_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_ERROR, "%@ Error in fixing MultiUser Token for MediaAccount [%@] in Home [%@] - %@", buf, 0x2Au);
  }
}

- (void)fetchMediaAccountForHome:(id)a3
{
  v5 = a3;
  if (([MEMORY[0x277D14CE8] isAMac] & 1) == 0 && objc_msgSend(v5, "isMultiUserEnabled"))
  {
    objc_initWeak(&location, self);
    v6 = [MEMORY[0x277D14400] sharedInstance];
    v7 = [v5 uniqueIdentifier];
    v8 = [v7 UUIDString];
    v9 = [v6 mediaAccountForHomeIdentifier:v8];

    if (v9)
    {
      v10 = [(HUItemModuleController *)self module];
      v11 = [v10 bannerItemProvider];
      v12 = [v11 multiUserTokenFixBannerItem];
      [v12 setHomeMediaAccount:v9];
    }

    else
    {
      v13 = [MEMORY[0x277D14400] sharedInstance];
      v14 = [v13 executeHomeMediaAccountFetchForHome:v5];
      [(HUBannerItemModuleController *)self setHomeMediaAccountFuture:v14];

      v15 = [(HUBannerItemModuleController *)self homeMediaAccountFuture];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __57__HUBannerItemModuleController_fetchMediaAccountForHome___block_invoke;
      v25[3] = &unk_277DB8E70;
      v27 = a2;
      v16 = v5;
      v26 = v16;
      v17 = [v15 addFailureBlock:v25];

      v18 = [(HUBannerItemModuleController *)self homeMediaAccountFuture];
      v19 = [MEMORY[0x277D2C938] mainThreadScheduler];
      v20 = [v18 reschedule:v19];

      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __57__HUBannerItemModuleController_fetchMediaAccountForHome___block_invoke_175;
      v22[3] = &unk_277DBD7E8;
      objc_copyWeak(v24, &location);
      v24[1] = a2;
      v23 = v16;
      v21 = [v20 addSuccessBlock:v22];

      objc_destroyWeak(v24);
      v10 = v26;
    }

    objc_destroyWeak(&location);
  }
}

void __57__HUBannerItemModuleController_fetchMediaAccountForHome___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(*(a1 + 40));
    v6 = [*(a1 + 32) uniqueIdentifier];
    v7 = [v6 UUIDString];
    v8 = 138412802;
    v9 = v5;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_ERROR, "%@ Error fetching media account for home with identifier [%@] - [%@]", &v8, 0x20u);
  }
}

void __57__HUBannerItemModuleController_fetchMediaAccountForHome___block_invoke_175(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(*(a1 + 48));
    v27 = 138412546;
    v28 = v6;
    v29 = 2112;
    v30 = v3;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@ Setting media account for home with identifier [%@]", &v27, 0x16u);
  }

  v7 = [*(a1 + 32) uniqueIdentifier];
  v8 = [v7 UUIDString];
  v9 = [v3 objectForKeyedSubscript:v8];

  v10 = [WeakRetained module];
  v11 = [v10 bannerItemProvider];
  v12 = [v11 multiUserTokenFixBannerItem];
  [v12 setHomeMediaAccount:v9];

  v13 = [WeakRetained module];
  v14 = [v13 itemUpdater];
  v15 = [v14 firstFullItemUpdateFuture];
  v16 = [v15 isFinished];

  if (v16)
  {
    v17 = MEMORY[0x277D14788];
    v18 = MEMORY[0x277CBEB98];
    v19 = [WeakRetained module];
    v20 = [v19 bannerItemProvider];
    v21 = [v20 multiUserTokenFixBannerItem];
    v22 = [v18 na_setWithSafeObject:v21];
    v23 = [v17 requestToUpdateItems:v22 senderSelector:*(a1 + 48)];

    v24 = [WeakRetained module];
    v25 = [v24 itemUpdater];
    v26 = [v25 performItemUpdateRequest:v23];
  }
}

- (void)user:(id)a3 didUpdateNeedsiTunesMultiUserRepair:(BOOL)a4
{
  v6 = MEMORY[0x277D14788];
  v7 = MEMORY[0x277CBEB98];
  v8 = [(HUItemModuleController *)self module:a3];
  v9 = [v8 bannerItemProvider];
  v10 = [v9 multiUserTokenFixBannerItem];
  v11 = [v7 na_setWithSafeObject:v10];
  v15 = [v6 requestToUpdateItems:v11 senderSelector:a2];

  v12 = [(HUItemModuleController *)self module];
  v13 = [v12 itemUpdater];
  v14 = [v13 performItemUpdateRequest:v15];
}

- (void)dismissCameraUpgradeBanner
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Dismissing camera upgrade banner.", buf, 2u);
  }

  v5 = objc_alloc(MEMORY[0x277D14C98]);
  v6 = [(HUItemModuleController *)self module];
  v7 = [v6 context];
  v8 = [v7 home];
  v9 = [(HUItemModuleController *)self module];
  v10 = [v9 context];
  v11 = [v10 home];
  v12 = [v11 currentUser];
  v13 = [v5 initWithHome:v8 user:v12 nameStyle:0];

  objc_initWeak(buf, self);
  v14 = [v13 setDismissCameraUpgradeBanner:1];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __58__HUBannerItemModuleController_dismissCameraUpgradeBanner__block_invoke;
  v16[3] = &unk_277DBB368;
  objc_copyWeak(v17, buf);
  v17[1] = a2;
  v15 = [v14 addCompletionBlock:v16];

  objc_destroyWeak(v17);
  objc_destroyWeak(buf);
}

void __58__HUBannerItemModuleController_dismissCameraUpgradeBanner__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MEMORY[0x277D14788];
  v3 = MEMORY[0x277CBEB98];
  v4 = [WeakRetained module];
  v5 = [v4 bannerItemProvider];
  v6 = [v5 cameraUpgradeOfferBannerItem];
  v7 = [v3 na_setWithSafeObject:v6];
  v8 = [v2 requestToUpdateItems:v7 senderSelector:*(a1 + 40)];

  v9 = [WeakRetained module];
  v10 = [v9 itemUpdater];
  v11 = [v10 performItemUpdateRequest:v8];
}

- (void)upgradeCameraSelected
{
  v59 = *MEMORY[0x277D85DE8];
  v2 = [(HUItemModuleController *)self module];
  v3 = [v2 context];
  v4 = [v3 home];
  v5 = [v4 hf_allCameraProfilesSupportingRecording];
  v44 = [v5 count];

  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v58 = v44;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "Upgrade camera selected. Number of cameras supporting recording %lu", buf, 0xCu);
  }

  v7 = [(HUItemModuleController *)self module];
  v8 = [v7 bannerItemProvider];
  v9 = [v8 cameraUpgradeOfferBannerItem];
  v45 = [v9 sheetActionText];

  v50 = objc_alloc_init(MEMORY[0x277D43330]);
  v10 = [(HUItemModuleController *)self module];
  v11 = [v10 bannerItemProvider];
  v12 = [v11 cameraUpgradeOfferBannerItem];
  v13 = [v12 sheetTitle];
  [v50 setTitle:v13];

  v14 = [(HUItemModuleController *)self module];
  v15 = [v14 bannerItemProvider];
  v16 = [v15 cameraUpgradeOfferBannerItem];
  v17 = [v16 sheetMessage];
  [v50 setSubtitle:v17];

  [v50 setDismissalType:3];
  v18 = objc_alloc(MEMORY[0x277D755E8]);
  v19 = HUImageNamed(@"Onboarding-Camera");
  v48 = [v18 initWithImage:v19];

  [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
  v20 = [v50 contentView];
  [v20 addSubview:v48];

  v21 = [v50 contentView];
  v47 = [v21 mainContentGuide];

  v22 = MEMORY[0x277CCAAD0];
  v46 = [v48 topAnchor];
  v23 = [v47 topAnchor];
  v24 = [v46 constraintGreaterThanOrEqualToAnchor:v23];
  v56[0] = v24;
  v25 = [v48 centerYAnchor];
  v26 = [v47 centerYAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  v56[1] = v27;
  v28 = [v48 centerXAnchor];
  v29 = [v47 centerXAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];
  v56[2] = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:3];
  [v22 activateConstraints:v31];

  objc_initWeak(buf, self);
  v32 = MEMORY[0x277D432F0];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __53__HUBannerItemModuleController_upgradeCameraSelected__block_invoke;
  v54[3] = &unk_277DBD838;
  objc_copyWeak(v55, buf);
  v55[1] = v44;
  v33 = [v32 actionWithTitle:v45 style:0 handler:v54];
  v34 = [v50 addAction:v33];

  v35 = MEMORY[0x277D432F0];
  v36 = _HULocalizedStringWithDefaultValue(@"HUSetupLater", @"HUSetupLater", 1);
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __53__HUBannerItemModuleController_upgradeCameraSelected__block_invoke_211;
  v51[3] = &unk_277DBD810;
  objc_copyWeak(&v53, buf);
  v37 = v50;
  v52 = v37;
  v38 = [v35 actionWithTitle:v36 style:1 handler:v51];
  v39 = [v37 addAction:v38];

  objc_opt_class();
  v40 = [(HUItemModuleController *)self host];
  if (objc_opt_isKindOfClass())
  {
    v41 = v40;
  }

  else
  {
    v41 = 0;
  }

  v42 = v41;

  v43 = [v42 presentProxCardFlowWithDelegate:self initialViewController:v37];
  [(HUBannerItemModuleController *)self setProxCardNavigationController:v43];

  objc_destroyWeak(&v53);
  objc_destroyWeak(v55);
  objc_destroyWeak(buf);
}

void __53__HUBannerItemModuleController_upgradeCameraSelected__block_invoke(uint64_t a1, void *a2)
{
  v46 = a2;
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "camera upgrade - continue tapped. Present camera upgrade sheet", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissCameraUpgradeBanner];
  if (*(a1 + 40) == 1)
  {
    v5 = [WeakRetained module];
    v6 = [v5 context];
    v7 = [v6 home];
    v8 = [v7 hf_allCameraProfilesSupportingRecording];
    v9 = [v8 firstObject];

    v10 = objc_alloc(MEMORY[0x277D144A0]);
    v11 = [WeakRetained module];
    v12 = [v11 context];
    v13 = [v12 home];
    v14 = [v13 hf_characteristicValueManager];
    v15 = [v10 initWithProfile:v9 valueSource:v14];

    v16 = [v15 updateWithOptions:MEMORY[0x277CBEC10]];
    v17 = [[HUCameraRecordingOptionsTableViewController alloc] initWithServiceLikeItem:v15];
    [(HUCameraRecordingOptionsTableViewController *)v17 setDisplayStyle:2];
    v18 = [v9 accessory];
    v19 = [v18 name];
    v26 = HULocalizedStringWithFormat(@"HUProximityCardNamedCameraSetupCardSubtitle", @"%@", v20, v21, v22, v23, v24, v25, v19);
  }

  else
  {
    v27 = [HUMultiCameraRecordingOptionsTableViewController alloc];
    v28 = [WeakRetained module];
    v29 = [v28 context];
    v30 = [v29 home];
    v17 = [(HUMultiCameraRecordingOptionsTableViewController *)v27 initWithHome:v30];

    v26 = _HULocalizedStringWithDefaultValue(@"HUProximityCardAllCamerasSetupCardSubtitle", @"HUProximityCardAllCamerasSetupCardSubtitle", 1);
  }

  v31 = [(HUCameraRecordingOptionsTableViewController *)v17 view];
  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];

  v32 = [(HUCameraRecordingOptionsTableViewController *)v17 tableView];
  v33 = [objc_alloc(MEMORY[0x277D43370]) initWithCardStyle:0 scrollView:v32];
  [v32 _setTopPadding:0.0];
  [v32 _setBottomPadding:0.0];
  v34 = [MEMORY[0x277D75348] systemBackgroundColor];
  [v32 setBackgroundColor:v34];

  v35 = [MEMORY[0x277D75348] systemBackgroundColor];
  v36 = [v32 backgroundView];
  [v36 setBackgroundColor:v35];

  v37 = [objc_alloc(MEMORY[0x277D43330]) initWithContentView:v33];
  v38 = _HULocalizedStringWithDefaultValue(@"HUCameraRecordingSetup_Title", @"HUCameraRecordingSetup_Title", 1);
  [v37 setTitle:v38];

  [v37 setSubtitle:v26];
  [v37 addChildViewController:v17];
  [(HUCameraRecordingOptionsTableViewController *)v17 didMoveToParentViewController:v37];
  [v37 setDismissalType:3];
  v39 = MEMORY[0x277D432F0];
  v40 = _HULocalizedStringWithDefaultValue(@"HUDoneTitle", @"HUDoneTitle", 1);
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __53__HUBannerItemModuleController_upgradeCameraSelected__block_invoke_205;
  v47[3] = &unk_277DBD810;
  objc_copyWeak(&v49, (a1 + 32));
  v41 = v37;
  v48 = v41;
  v42 = [v39 actionWithTitle:v40 style:0 handler:v47];
  v43 = [v41 addAction:v42];

  v44 = [WeakRetained proxCardNavigationController];
  v45 = [v44 hu_pushPreloadableViewController:v41 animated:1];

  objc_destroyWeak(&v49);
}

void __53__HUBannerItemModuleController_upgradeCameraSelected__block_invoke_205(uint64_t a1)
{
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "camera upgrade - done tapped", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [HUViewControllerDismissalRequest requestWithViewController:*(a1 + 32)];
  v5 = [WeakRetained host];
  v6 = [v5 moduleController:WeakRetained dismissViewControllerForRequest:v4];
}

void __53__HUBannerItemModuleController_upgradeCameraSelected__block_invoke_211(uint64_t a1)
{
  v2 = HFLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_20CEB6000, v2, OS_LOG_TYPE_DEFAULT, "camera upgrade - setup later tapped", v11, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained dismissCameraUpgradeBanner];
  v4 = [*(a1 + 32) navigationController];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [v5 navigationController];
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;

  v8 = [HUViewControllerDismissalRequest requestWithViewController:v7];
  v9 = [WeakRetained host];
  v10 = [v9 moduleController:WeakRetained dismissViewControllerForRequest:v8];
}

- (void)_sendBannerInteractionforItem:(id)a3 tappedBannerItemOverrideClassName:(id)a4
{
  v6 = a4;
  v7 = a3;
  objc_opt_class();
  v8 = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v12 = v9;

  v10 = MEMORY[0x277D143D8];
  v11 = [v12 hiddenBanners];
  [v10 sendBannerInteractionforItem:v7 tappedBannerItemOverrideClassName:v6 hiddenBannerEvents:v11];
}

- (HUBannerItemModuleControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end