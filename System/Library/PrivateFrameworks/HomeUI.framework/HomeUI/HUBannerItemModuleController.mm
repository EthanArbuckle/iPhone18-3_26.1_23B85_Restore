@interface HUBannerItemModuleController
- (BOOL)hasTapActionForItem:(id)item;
- (Class)collectionCellClassForItem:(id)item;
- (HUBannerItemModuleController)initWithModule:(id)module;
- (HUBannerItemModuleController)initWithModule:(id)module host:(id)host delegate:(id)delegate;
- (HUBannerItemModuleControllerDelegate)delegate;
- (id)_defaultCellLayoutOptionsForViewSize:(CGSize)size;
- (id)collectionLayoutSectionForSectionWithIdentifier:(id)identifier layoutEnvironment:(id)environment;
- (unint64_t)didSelectItem:(id)item;
- (void)_sendBannerInteractionforItem:(id)item tappedBannerItemOverrideClassName:(id)name;
- (void)bannerView:(id)view dismissButtonTapped:(id)tapped;
- (void)configureCell:(id)cell forItem:(id)item;
- (void)dealloc;
- (void)dismissCameraUpgradeBanner;
- (void)fetchMediaAccountForHome:(id)home;
- (void)upgradeCameraSelected;
- (void)user:(id)user didUpdateNeedsiTunesMultiUserRepair:(BOOL)repair;
@end

@implementation HUBannerItemModuleController

- (HUBannerItemModuleController)initWithModule:(id)module
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithModule_host_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUBannerItemModuleController.m" lineNumber:51 description:{@"%s is unavailable; use %@ instead", "-[HUBannerItemModuleController initWithModule:]", v6}];

  return 0;
}

- (HUBannerItemModuleController)initWithModule:(id)module host:(id)host delegate:(id)delegate
{
  moduleCopy = module;
  hostCopy = host;
  delegateCopy = delegate;
  v11 = objc_opt_class();
  v12 = moduleCopy;
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

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v16 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v11, objc_opt_class()}];
  }

  v14 = 0;
LABEL_8:

  v30.receiver = self;
  v30.super_class = HUBannerItemModuleController;
  v17 = [(HUItemModuleController *)&v30 initWithModule:v12];
  v18 = v17;
  if (v17)
  {
    [(HUItemModuleController *)v17 setHost:hostCopy];
    [(HUBannerItemModuleController *)v18 setDelegate:delegateCopy];
    host = [(HUItemModuleController *)v18 host];
    v20 = [host presentingViewControllerForModuleController:v18];

    view = [v20 view];
    [view frame];
    v24 = [(HUBannerItemModuleController *)v18 _defaultCellLayoutOptionsForViewSize:v22, v23];
    layoutOptions = v18->_layoutOptions;
    v18->_layoutOptions = v24;

    context = [v12 context];
    home = [context home];
    [(HUBannerItemModuleController *)v18 fetchMediaAccountForHome:home];

    mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
    [mEMORY[0x277D146E8] addUserObserver:v18];
  }

  return v18;
}

- (void)dealloc
{
  homeMediaAccountFuture = [(HUBannerItemModuleController *)self homeMediaAccountFuture];
  [homeMediaAccountFuture cancel];

  v4.receiver = self;
  v4.super_class = HUBannerItemModuleController;
  [(HUBannerItemModuleController *)&v4 dealloc];
}

- (id)collectionLayoutSectionForSectionWithIdentifier:(id)identifier layoutEnvironment:(id)environment
{
  v48[1] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D14CE8] isAnIPad])
  {
    objc_opt_class();
    host = [(HUItemModuleController *)self host];
    if (objc_opt_isKindOfClass())
    {
      v6 = host;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if (([currentDevice orientation] - 1) >= 2)
    {
      v9 = 0.75;
    }

    else
    {
      v9 = 0.67;
    }

    view = [v7 view];
    [view bounds];
    v12 = v11;
    view2 = [v7 view];

    [view2 bounds];
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
  heightDimension = [v22 heightDimension];
  v27 = [v24 sizeWithWidthDimension:v25 heightDimension:heightDimension];

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
  layoutOptions = [(HUBannerItemModuleController *)self layoutOptions];
  [layoutOptions columnSpacing];
  v33 = [v31 fixedSpacing:?];
  [v30 setInterItemSpacing:v33];

  v34 = [MEMORY[0x277CFB868] sectionWithGroup:v30];
  layoutOptions2 = [(HUBannerItemModuleController *)self layoutOptions];
  [layoutOptions2 rowSpacing];
  [v34 setInterGroupSpacing:?];

  layoutOptions3 = [(HUBannerItemModuleController *)self layoutOptions];
  [layoutOptions3 sectionTopMargin];
  v38 = v37;
  layoutOptions4 = [(HUBannerItemModuleController *)self layoutOptions];
  [layoutOptions4 sectionLeadingMargin];
  v41 = v40;
  layoutOptions5 = [(HUBannerItemModuleController *)self layoutOptions];
  [layoutOptions5 sectionBottomMargin];
  v44 = v43;
  layoutOptions6 = [(HUBannerItemModuleController *)self layoutOptions];
  [layoutOptions6 sectionTrailingMargin];
  [v34 setContentInsets:{v38, v41, v44, v46}];

  return v34;
}

- (Class)collectionCellClassForItem:(id)item
{
  itemCopy = item;
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

- (void)configureCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  v37.receiver = self;
  v37.super_class = HUBannerItemModuleController;
  [(HUItemModuleController *)&v37 configureCell:cellCopy forItem:itemCopy];
  layoutOptions = [(HUBannerItemModuleController *)self layoutOptions];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = objc_opt_class();
      v21 = cellCopy;
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

        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
        [currentHandler handleFailureInFunction:v24 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v20, objc_opt_class()}];
      }

      v12 = 0;
LABEL_19:

      [v12 setDelegate:self];
      latestResults = [itemCopy latestResults];
      v26 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
      [v12 setAccessibilityIdentifier:v26];

      welcomeUIBannerCellOptions = [layoutOptions welcomeUIBannerCellOptions];
      [v12 setLayoutOptions:welcomeUIBannerCellOptions];
      goto LABEL_20;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_22;
    }

    v27 = objc_opt_class();
    v28 = cellCopy;
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

      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [currentHandler2 handleFailureInFunction:v31 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v27, objc_opt_class()}];
    }

    v12 = 0;
LABEL_31:

    [v12 setDelegate:self];
    bannerCellOptions = [layoutOptions bannerCellOptions];
    [v12 setLayoutOptions:bannerCellOptions];

    latestResults2 = [itemCopy latestResults];
    v34 = *MEMORY[0x277D13DC8];
    v35 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13DC8]];
    [v12 setAccessibilityIdentifier:v35];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_21;
    }

    bannerView = [v12 bannerView];
    [bannerView setDisableHighlighting:1];

    latestResults3 = [itemCopy latestResults];
    welcomeUIBannerCellOptions = latestResults3;
    v18 = v34;
    goto LABEL_10;
  }

  v9 = objc_opt_class();
  v10 = cellCopy;
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

    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler3 handleFailureInFunction:v14 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v9, objc_opt_class()}];
  }

  v12 = 0;
LABEL_9:

  [v12 setDelegate:self];
  bannerCellOptions2 = [layoutOptions bannerCellOptions];
  [v12 setLayoutOptions:bannerCellOptions2];

  latestResults3 = [itemCopy latestResults];
  welcomeUIBannerCellOptions = latestResults3;
  v18 = *MEMORY[0x277D13DC8];
LABEL_10:
  v19 = [latestResults3 objectForKeyedSubscript:v18];
  [v12 setAccessibilityIdentifier:v19];

LABEL_20:
LABEL_21:

LABEL_22:
}

- (id)_defaultCellLayoutOptionsForViewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  isAMac = [MEMORY[0x277D14CE8] isAMac];
  if ([MEMORY[0x277D14CE8] useMacIdiom])
  {
    v6 = &unk_282491760;
  }

  else
  {
    v6 = 0;
  }

  height = [HUGridLayoutOptions defaultOptionsForViewSize:isAMac columnStyle:v6 overrideSizeSubclass:width, height];
  [height setStatusHidden:0];
  v8 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:0];
  preferredContentSizeCategory = [v8 preferredContentSizeCategory];
  [height setContentSizeCategory:preferredContentSizeCategory];

  [height setEditing:0];
  [height setSectionLeadingMargin:0.0];
  [height setSectionTrailingMargin:0.0];

  return height;
}

- (void)bannerView:(id)view dismissButtonTapped:(id)tapped
{
  v38 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v34 = 2080;
    v35 = "[HUBannerItemModuleController bannerView:dismissButtonTapped:]";
    v36 = 2112;
    v37 = viewCopy;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%s User tapped dismiss button for %@", buf, 0x20u);
  }

  v7 = objc_alloc(MEMORY[0x277D14C98]);
  module = [(HUItemModuleController *)self module];
  context = [module context];
  home = [context home];
  module2 = [(HUItemModuleController *)self module];
  context2 = [module2 context];
  home2 = [context2 home];
  currentUser = [home2 currentUser];
  v15 = [v7 initWithHome:home user:currentUser nameStyle:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [v15 setDismissedWelcomeUIBanner:1];
  }

  v17 = MEMORY[0x277D14788];
  v18 = MEMORY[0x277CBEB98];
  item = [viewCopy item];
  v20 = [v18 na_setWithSafeObject:item];
  v21 = [v17 requestToUpdateItems:v20 senderSelector:a2];

  module3 = [(HUItemModuleController *)self module];
  itemUpdater = [module3 itemUpdater];
  v24 = [itemUpdater performItemUpdateRequest:v21];

  v25 = MEMORY[0x277CCACA8];
  item2 = [viewCopy item];
  v27 = objc_opt_class();
  v28 = NSStringFromClass(v27);
  v29 = [v25 stringWithFormat:@"%@-dismiss", v28];

  item3 = [viewCopy item];
  [(HUBannerItemModuleController *)self _sendBannerInteractionforItem:item3 tappedBannerItemOverrideClassName:v29];
}

- (BOOL)hasTapActionForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass & 1) != 0 && ([itemCopy latestResults], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "objectForKeyedSubscript:", *MEMORY[0x277D13DC8]), v4 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v4, "isEqualToString:", @"Home.Banners.Symptoms.InternetOutage")))
    {
      v6 = 1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        latestResults = [itemCopy latestResults];
        v9 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13DC0]];
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
          latestResults2 = [itemCopy latestResults];
          v12 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13DE8]];
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

- (unint64_t)didSelectItem:(id)item
{
  v142 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy9 = self;
    v136 = 2080;
    v137 = "[HUBannerItemModuleController didSelectItem:]";
    v138 = 2112;
    v139 = itemCopy;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "%@:%s User tapped %@", buf, 0x20u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    latestResults = [itemCopy latestResults];
    v8 = [latestResults objectForKeyedSubscript:@"HFResultSetupBannerType"];
    unsignedIntegerValue = [v8 unsignedIntegerValue];

    latestResults2 = [itemCopy latestResults];
    v11 = [latestResults2 objectForKeyedSubscript:@"HFResultKeyPathsForUnfinishedOnboardingFlows"];

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
      selfCopy9 = self;
      v136 = 2080;
      v137 = "[HUBannerItemModuleController didSelectItem:]";
      v138 = 2112;
      v139 = itemCopy;
      v140 = 2112;
      v141 = v125;
      _os_log_impl(&dword_20CEB6000, v47, OS_LOG_TYPE_DEFAULT, "(%@:%s) User tapped Setup Banner %@ %@", buf, 0x2Au);
    }

    if (unsignedIntegerValue != 1)
    {
      if (unsignedIntegerValue)
      {
LABEL_69:

        goto LABEL_70;
      }

      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"OnboardingDisplayOption_OnboardingFromUserInput"];
      v133 = *MEMORY[0x277D13910];
      v49 = [MEMORY[0x277CBEA60] arrayWithObjects:&v133 count:1];
      v50 = [v11 isEqualToArray:v49];

      v51 = [MEMORY[0x277CCABB0] numberWithBool:v50];
      [dictionary setObject:v51 forKeyedSubscript:@"OnboardingDisplayOption_OnboardingFromNaturalLightingReminder"];

      module = [(HUItemModuleController *)self module];
      context = [module context];
      home = [context home];
      host = [(HUItemModuleController *)self host];
      v55 = [HUHomeFeatureOnboardingUtilities home:home onboardFeaturesForKeyPaths:v11 presentingViewController:host usageOptions:dictionary];

LABEL_68:
      goto LABEL_69;
    }

    latestResults3 = [itemCopy latestResults];
    v57 = [latestResults3 objectForKeyedSubscript:@"HFResultSetupBannerAccessorySetupFlowsKey"];

    v58 = HFLogForCategory();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy9 = self;
      v136 = 2080;
      v137 = "[HUBannerItemModuleController didSelectItem:]";
      v138 = 2112;
      v139 = v57;
      _os_log_impl(&dword_20CEB6000, v58, OS_LOG_TYPE_DEFAULT, "(%@:%s) Status banner type is Accessory Setup. accessorySetupFlows = %@", buf, 0x20u);
    }

    module = [v57 na_firstObjectPassingTest:&__block_literal_global_121];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __46__HUBannerItemModuleController_didSelectItem___block_invoke_2;
    aBlock[3] = &unk_277DBD798;
    aBlock[4] = self;
    dictionary = v57;
    v132 = dictionary;
    v123 = _Block_copy(aBlock);
    v122 = [dictionary na_firstObjectPassingTest:&__block_literal_global_145];
    v121 = [dictionary na_firstObjectPassingTest:&__block_literal_global_148];
    if (module)
    {
      module2 = [(HUItemModuleController *)self module];
      context2 = [module2 context];
      home2 = [context2 home];
      homeKitObjects = [module homeKitObjects];
      v63 = [homeKitObjects na_map:&__block_literal_global_153];
      v64 = [HUHomeUIServiceLaunchUserInfo userInfoForResumeAccessorySetupInHome:home2 accessoryUUIDs:v63];

      v123[2](v123, v64, &stru_2823E0EE8);
    }

    else if (v122)
    {
      module3 = [(HUItemModuleController *)self module];
      context3 = [module3 context];
      home3 = [context3 home];
      v64 = [HUHomeUIServiceLaunchUserInfo userInfoForSafetyAndSecurityInHome:home3];

      v123[2](v123, v64, &stru_2823E0EE8);
    }

    else if (v121)
    {
      module4 = [(HUItemModuleController *)self module];
      context4 = [module4 context];
      home4 = [context4 home];
      v64 = [HUHomeUIServiceLaunchUserInfo userInfoForSiriEndpointInHome:home4];

      v123[2](v123, v64, &stru_2823E0EE8);
    }

    else if ([dictionary na_any:&__block_literal_global_155])
    {
      module5 = [(HUItemModuleController *)self module];
      context5 = [module5 context];
      home5 = [context5 home];
      v64 = [HUHomeUIServiceLaunchUserInfo userInfoForLockAccessFirmwareUpgradeSetupInHome:home5];

      v123[2](v123, v64, &stru_2823E0EE8);
    }

    else if ([dictionary na_any:&__block_literal_global_157])
    {
      module6 = [(HUItemModuleController *)self module];
      context6 = [module6 context];
      home6 = [context6 home];
      v64 = [HUHomeUIServiceLaunchUserInfo userInfoForLockAccessWalletKeySetupInHome:home6];

      v123[2](v123, v64, &stru_2823E0EE8);
    }

    else if ([dictionary na_any:&__block_literal_global_159])
    {
      module7 = [(HUItemModuleController *)self module];
      context7 = [module7 context];
      home7 = [context7 home];
      v64 = [HUHomeUIServiceLaunchUserInfo userInfoForLockAccessPinCodeSetupInHome:home7];

      mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
      homeManager = [mEMORY[0x277D146E8] homeManager];
      [homeManager launchHomeUIServiceToResumeSetupWithUserInfo:v64 completionHandler:&__block_literal_global_161];
    }

    else
    {
      if (![dictionary na_any:&__block_literal_global_163])
      {
LABEL_67:

        goto LABEL_68;
      }

      module8 = [(HUItemModuleController *)self module];
      context8 = [module8 context];
      home8 = [context8 home];
      v64 = [HUHomeUIServiceLaunchUserInfo userInfoForThermostatAutoClimateControlSetupInHome:home8];

      v123[2](v123, v64, &stru_2823E0EE8);
    }

    goto LABEL_67;
  }

  module9 = [(HUItemModuleController *)self module];
  bannerItemProvider = [module9 bannerItemProvider];
  multiUserTokenFixBannerItem = [bannerItemProvider multiUserTokenFixBannerItem];
  v15 = [itemCopy isEqual:multiUserTokenFixBannerItem];

  if (v15)
  {
    module10 = [(HUItemModuleController *)self module];
    bannerItemProvider2 = [module10 bannerItemProvider];
    multiUserTokenFixBannerItem2 = [bannerItemProvider2 multiUserTokenFixBannerItem];
    homeMediaAccount = [multiUserTokenFixBannerItem2 homeMediaAccount];

    v20 = objc_alloc(MEMORY[0x277CEE938]);
    module11 = [(HUItemModuleController *)self module];
    context9 = [module11 context];
    home9 = [context9 home];
    uniqueIdentifier = [home9 uniqueIdentifier];
    host2 = [(HUItemModuleController *)self host];
    v26 = [v20 initWithAccount:homeMediaAccount homeIdentifier:uniqueIdentifier viewController:host2];
    [(HUBannerItemModuleController *)self setMultiUserTokenFixTask:v26];

    multiUserTokenFixTask = [(HUBannerItemModuleController *)self multiUserTokenFixTask];
    performTask = [multiUserTokenFixTask performTask];

    module12 = [(HUItemModuleController *)self module];
    bannerItemProvider3 = [module12 bannerItemProvider];
    multiUserTokenFixBannerItem3 = [bannerItemProvider3 multiUserTokenFixBannerItem];
    [multiUserTokenFixBannerItem3 setForceHidden:1];

    v32 = MEMORY[0x277D14788];
    v33 = MEMORY[0x277CBEB98];
    module13 = [(HUItemModuleController *)self module];
    bannerItemProvider4 = [module13 bannerItemProvider];
    multiUserTokenFixBannerItem4 = [bannerItemProvider4 multiUserTokenFixBannerItem];
    v37 = [v33 na_setWithSafeObject:multiUserTokenFixBannerItem4];
    v38 = [v32 requestToUpdateItems:v37 senderSelector:a2];

    module14 = [(HUItemModuleController *)self module];
    itemUpdater = [module14 itemUpdater];

    v41 = [itemUpdater performItemUpdateRequest:v38];
    objc_initWeak(buf, self);
    v126[0] = MEMORY[0x277D85DD0];
    v126[1] = 3221225472;
    v126[2] = __46__HUBannerItemModuleController_didSelectItem___block_invoke_9;
    v126[3] = &unk_277DBD7C0;
    objc_copyWeak(v130, buf);
    v130[1] = a2;
    v42 = homeMediaAccount;
    v127 = v42;
    v43 = itemUpdater;
    v128 = v43;
    v44 = v38;
    v129 = v44;
    [performTask addFinishBlock:v126];

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
        selfCopy9 = self;
        _os_log_impl(&dword_20CEB6000, v45, OS_LOG_TYPE_DEFAULT, "%@: User tapped See home hubs", buf, 0xCu);
      }

      delegate = [(HUBannerItemModuleController *)self delegate];
      [delegate didSelectUnreachableResidentsBanner:self];
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
          selfCopy9 = self;
          _os_log_impl(&dword_20CEB6000, v65, OS_LOG_TYPE_DEFAULT, "%@: User tapped WelcomeUIBanner", buf, 0xCu);
        }

        delegate2 = [(HUBannerItemModuleController *)self delegate];
        [delegate2 didSelectWelcomeBanner:self];
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
            selfCopy9 = self;
            _os_log_impl(&dword_20CEB6000, v70, OS_LOG_TYPE_DEFAULT, "%@: User tapped HomeHubMigrationBanner", buf, 0xCu);
          }

          delegate3 = [(HUBannerItemModuleController *)self delegate];
          [delegate3 didSelectHomeHubMigrationBanner:self];
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
              selfCopy9 = self;
              _os_log_impl(&dword_20CEB6000, v75, OS_LOG_TYPE_DEFAULT, "%@: User tapped Media Service Error Banner", buf, 0xCu);
            }

            latestResults4 = [itemCopy latestResults];
            v77 = [latestResults4 objectForKeyedSubscript:@"HFResultMediaServiceBundleIdentifierKey"];

            v78 = [MEMORY[0x277CBEBC0] hf_appStoreURLForBundleIdentifier:v77];
            mEMORY[0x277D148E8] = [MEMORY[0x277D148E8] sharedInstance];
            v80 = [mEMORY[0x277D148E8] openURL:v78];
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
                selfCopy9 = self;
                _os_log_impl(&dword_20CEB6000, v84, OS_LOG_TYPE_DEFAULT, "%@: User tapped DropIn Banner", buf, 0xCu);
              }

              objc_opt_class();
              v85 = itemCopy;
              if (objc_opt_isKindOfClass())
              {
                v86 = v85;
              }

              else
              {
                v86 = 0;
              }

              v87 = v86;

              device = [v87 device];
              module15 = [(HUItemModuleController *)self module];
              context10 = [module15 context];
              home10 = [context10 home];
              homeKitIdentifier = [device homeKitIdentifier];
              v93 = [home10 hf_accessoryWithIdentifier:homeKitIdentifier];

              objc_opt_class();
              host3 = [(HUItemModuleController *)self host];
              if (objc_opt_isKindOfClass())
              {
                v95 = host3;
              }

              else
              {
                v95 = 0;
              }

              v96 = v95;

              v97 = [HUHomeControlServiceContext alloc];
              home11 = [v93 home];
              v99 = [(HUHomeControlServiceContext *)v97 initWithServiceType:2 home:home11 accessory:v93 presentingViewController:v96];

              v100 = HFLogForCategory();
              if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                selfCopy9 = self;
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
                  latestResults5 = [itemCopy latestResults];
                  v111 = [latestResults5 objectForKeyedSubscript:*MEMORY[0x277D13DC0]];

                  if (v111)
                  {
                    mEMORY[0x277D148E8]2 = [MEMORY[0x277D148E8] sharedInstance];
                    v113 = [mEMORY[0x277D148E8]2 openURL:v111];
                  }
                }

                else
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    goto LABEL_70;
                  }

                  latestResults6 = [itemCopy latestResults];
                  v111 = [latestResults6 objectForKeyedSubscript:*MEMORY[0x277D13DC0]];

                  if (v111)
                  {
                    mEMORY[0x277D148E8]3 = [MEMORY[0x277D148E8] sharedInstance];
                    v120 = [mEMORY[0x277D148E8]3 openURL:v111];
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
  [(HUBannerItemModuleController *)self _sendBannerInteractionforItem:itemCopy tappedBannerItemOverrideClassName:0];

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

- (void)fetchMediaAccountForHome:(id)home
{
  homeCopy = home;
  if (([MEMORY[0x277D14CE8] isAMac] & 1) == 0 && objc_msgSend(homeCopy, "isMultiUserEnabled"))
  {
    objc_initWeak(&location, self);
    mEMORY[0x277D14400] = [MEMORY[0x277D14400] sharedInstance];
    uniqueIdentifier = [homeCopy uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];
    v9 = [mEMORY[0x277D14400] mediaAccountForHomeIdentifier:uUIDString];

    if (v9)
    {
      module = [(HUItemModuleController *)self module];
      bannerItemProvider = [module bannerItemProvider];
      multiUserTokenFixBannerItem = [bannerItemProvider multiUserTokenFixBannerItem];
      [multiUserTokenFixBannerItem setHomeMediaAccount:v9];
    }

    else
    {
      mEMORY[0x277D14400]2 = [MEMORY[0x277D14400] sharedInstance];
      v14 = [mEMORY[0x277D14400]2 executeHomeMediaAccountFetchForHome:homeCopy];
      [(HUBannerItemModuleController *)self setHomeMediaAccountFuture:v14];

      homeMediaAccountFuture = [(HUBannerItemModuleController *)self homeMediaAccountFuture];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __57__HUBannerItemModuleController_fetchMediaAccountForHome___block_invoke;
      v25[3] = &unk_277DB8E70;
      v27 = a2;
      v16 = homeCopy;
      v26 = v16;
      v17 = [homeMediaAccountFuture addFailureBlock:v25];

      homeMediaAccountFuture2 = [(HUBannerItemModuleController *)self homeMediaAccountFuture];
      mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
      v20 = [homeMediaAccountFuture2 reschedule:mainThreadScheduler];

      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __57__HUBannerItemModuleController_fetchMediaAccountForHome___block_invoke_175;
      v22[3] = &unk_277DBD7E8;
      objc_copyWeak(v24, &location);
      v24[1] = a2;
      v23 = v16;
      v21 = [v20 addSuccessBlock:v22];

      objc_destroyWeak(v24);
      module = v26;
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

- (void)user:(id)user didUpdateNeedsiTunesMultiUserRepair:(BOOL)repair
{
  v6 = MEMORY[0x277D14788];
  v7 = MEMORY[0x277CBEB98];
  v8 = [(HUItemModuleController *)self module:user];
  bannerItemProvider = [v8 bannerItemProvider];
  multiUserTokenFixBannerItem = [bannerItemProvider multiUserTokenFixBannerItem];
  v11 = [v7 na_setWithSafeObject:multiUserTokenFixBannerItem];
  v15 = [v6 requestToUpdateItems:v11 senderSelector:a2];

  module = [(HUItemModuleController *)self module];
  itemUpdater = [module itemUpdater];
  v14 = [itemUpdater performItemUpdateRequest:v15];
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
  module = [(HUItemModuleController *)self module];
  context = [module context];
  home = [context home];
  module2 = [(HUItemModuleController *)self module];
  context2 = [module2 context];
  home2 = [context2 home];
  currentUser = [home2 currentUser];
  v13 = [v5 initWithHome:home user:currentUser nameStyle:0];

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
  module = [(HUItemModuleController *)self module];
  context = [module context];
  home = [context home];
  hf_allCameraProfilesSupportingRecording = [home hf_allCameraProfilesSupportingRecording];
  v44 = [hf_allCameraProfilesSupportingRecording count];

  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v58 = v44;
    _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "Upgrade camera selected. Number of cameras supporting recording %lu", buf, 0xCu);
  }

  module2 = [(HUItemModuleController *)self module];
  bannerItemProvider = [module2 bannerItemProvider];
  cameraUpgradeOfferBannerItem = [bannerItemProvider cameraUpgradeOfferBannerItem];
  sheetActionText = [cameraUpgradeOfferBannerItem sheetActionText];

  v50 = objc_alloc_init(MEMORY[0x277D43330]);
  module3 = [(HUItemModuleController *)self module];
  bannerItemProvider2 = [module3 bannerItemProvider];
  cameraUpgradeOfferBannerItem2 = [bannerItemProvider2 cameraUpgradeOfferBannerItem];
  sheetTitle = [cameraUpgradeOfferBannerItem2 sheetTitle];
  [v50 setTitle:sheetTitle];

  module4 = [(HUItemModuleController *)self module];
  bannerItemProvider3 = [module4 bannerItemProvider];
  cameraUpgradeOfferBannerItem3 = [bannerItemProvider3 cameraUpgradeOfferBannerItem];
  sheetMessage = [cameraUpgradeOfferBannerItem3 sheetMessage];
  [v50 setSubtitle:sheetMessage];

  [v50 setDismissalType:3];
  v18 = objc_alloc(MEMORY[0x277D755E8]);
  v19 = HUImageNamed(@"Onboarding-Camera");
  v48 = [v18 initWithImage:v19];

  [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [v50 contentView];
  [contentView addSubview:v48];

  contentView2 = [v50 contentView];
  mainContentGuide = [contentView2 mainContentGuide];

  v22 = MEMORY[0x277CCAAD0];
  topAnchor = [v48 topAnchor];
  topAnchor2 = [mainContentGuide topAnchor];
  v24 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  v56[0] = v24;
  centerYAnchor = [v48 centerYAnchor];
  centerYAnchor2 = [mainContentGuide centerYAnchor];
  v27 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v56[1] = v27;
  centerXAnchor = [v48 centerXAnchor];
  centerXAnchor2 = [mainContentGuide centerXAnchor];
  v30 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
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
  v33 = [v32 actionWithTitle:sheetActionText style:0 handler:v54];
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
  host = [(HUItemModuleController *)self host];
  if (objc_opt_isKindOfClass())
  {
    v41 = host;
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

- (void)_sendBannerInteractionforItem:(id)item tappedBannerItemOverrideClassName:(id)name
{
  nameCopy = name;
  itemCopy = item;
  objc_opt_class();
  module = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v9 = module;
  }

  else
  {
    v9 = 0;
  }

  v12 = v9;

  v10 = MEMORY[0x277D143D8];
  hiddenBanners = [v12 hiddenBanners];
  [v10 sendBannerInteractionforItem:itemCopy tappedBannerItemOverrideClassName:nameCopy hiddenBannerEvents:hiddenBanners];
}

- (HUBannerItemModuleControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end