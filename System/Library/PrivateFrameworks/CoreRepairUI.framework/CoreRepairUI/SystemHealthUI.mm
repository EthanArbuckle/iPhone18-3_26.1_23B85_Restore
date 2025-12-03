@interface SystemHealthUI
+ (id)sharedInstance;
- (BOOL)hasUnsealedComponents;
- (PSListController)parentViewController;
- (SystemHealthUI)init;
- (id)_createFinishRepairSpecifierFor:(id)for detailView:(Class)view moduleName:(id)name;
- (id)_createUnknownSpecifierFor:(id)for detailView:(Class)view moduleName:(id)name;
- (id)constructSpecifiersWithPrivacySpecifier:(BOOL)specifier rchlHistory:(id)history caaHistory:(id)caaHistory srvp:(id)srvp;
- (id)findSpecifierToInsertAfter:(id)after;
- (id)getNetworkAlert;
- (id)getOSUpdateAlert;
- (id)getPreFlightFailedAlert;
- (id)reloadCurrentSystemHealthInfoSpecifiers;
- (id)setupGroupSpecifer;
- (id)valueForSpecifierFinishRepair;
- (id)valueForSpecifierIssue;
- (id)valueForSpecifierRepaired;
- (id)valueForSpecifierService;
- (id)valueForSpecifierUnknown;
- (id)valueForSpecifierUsed;
- (void)_updateSpecifiers:(id)specifiers specifierToInsertAfter:(id)after withUpdates:(id)updates;
- (void)extractAudioSpecifiers;
- (void)extractBackGlassSpecifiers:(id)specifiers configurationSpecifiers:(id)configurationSpecifiers caaRepairHistory:(id)history rchlHistory:(id)rchlHistory;
- (void)extractBasebandSpecifiers:(id)specifiers;
- (void)extractBatterySpecifiers:(id)specifiers configurationSpecifiers:(id)configurationSpecifiers;
- (void)extractBluetoohSpecifiers;
- (void)extractCameraSpecifiers:(id)specifiers componentsInfoSpecifiers:(id)infoSpecifiers configurationSpecifiers:(id)configurationSpecifiers;
- (void)extractCoverGlassSpecifiers:(id)specifiers;
- (void)extractDisplaySpecifiers:(id)specifiers configurationSpecifiers:(id)configurationSpecifiers;
- (void)extractEnclosureSpecifiers:(id)specifiers caaRepairHistory:(id)history rchlHistory:(id)rchlHistory;
- (void)extractFaceIDSpecifiers:(id)specifiers configurationSpecifiers:(id)configurationSpecifiers;
- (void)extractMtubSpecifiers:(id)specifiers caaRepairHistory:(id)history srvp:(id)srvp rchlHistory:(id)rchlHistory;
- (void)extractNFCSpecifiers:(id)specifiers;
- (void)extractRCameraHWFailureSpecifiers;
- (void)extractTouchIDSpecifiers:(id)specifiers configurationSpecifiers:(id)configurationSpecifiers;
- (void)extractUWBSpecifiers:(id)specifiers;
- (void)extractVolumeButtonSpecifiers:(id)specifiers;
- (void)extractWifiSpecifiers;
- (void)extractiPadBatterySpecifiers:(id)specifiers;
- (void)extractiPadCameraSpecifiers:(id)specifiers componentsInfoSpecifiers:(id)infoSpecifiers configurationSpecifiers:(id)configurationSpecifiers caaRepairHistory:(id)history rchlHistory:(id)rchlHistory;
- (void)performInteractivePreflightWithSpecifier:(id)specifier;
- (void)setupPrivacyFooterFor:(id)for withPrivacySpecifier:(BOOL)specifier;
- (void)showActionSheets:(id)sheets;
- (void)updateSpecifiersWithCompletionHandler:(id)handler;
@end

@implementation SystemHealthUI

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SystemHealthUI sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

uint64_t __32__SystemHealthUI_sharedInstance__block_invoke()
{
  sharedInstance_instance = objc_alloc_init(SystemHealthUI);

  return MEMORY[0x2821F96F8]();
}

- (SystemHealthUI)init
{
  v20.receiver = self;
  v20.super_class = SystemHealthUI;
  v2 = [(SystemHealthUI *)&v20 init];
  v3 = v2;
  if (v2)
  {
    v2->failedComponentsCount = 0;
    v4 = dispatch_queue_create("async", MEMORY[0x277D85CD8]);
    asyncQueue = v3->asyncQueue;
    v3->asyncQueue = v4;

    v6 = objc_opt_new();
    analytics = v3->analytics;
    v3->analytics = v6;

    *&v3->deviceFDRVersion1 = 0;
    v8 = objc_opt_new();
    localRepairHistory = v3->localRepairHistory;
    v3->localRepairHistory = v8;

    v3->isRCHLDevice = [(CRRepairHistory *)v3->localRepairHistory isRCHLRepairHistoryDevice];
    if (AMFDRSealingMapGetFDRDataVersionForDevice() == 1)
    {
      v3->deviceFDRVersion1 = 1;
    }

    v3->isRepaired = [MEMORY[0x277D00FE0] isDcSignedSealingManifest:0];
    v10 = objc_opt_new();
    locale = v3->locale;
    v3->locale = v10;

    v12 = MGCopyAnswer();
    v3->deviceClass = [v12 intValue];

    array = [MEMORY[0x277CBEA60] array];
    cachedSpecifiers = v3->cachedSpecifiers;
    v3->cachedSpecifiers = array;

    systemHealth = v3->systemHealth;
    v3->systemHealth = 0;

    v16 = objc_opt_new();
    utils = v3->utils;
    v3->utils = v16;

    repairHistoryItems = v3->repairHistoryItems;
    v3->repairHistoryItems = 0;
  }

  return v3;
}

- (id)_createFinishRepairSpecifierFor:(id)for detailView:(Class)view moduleName:(id)name
{
  v8 = MEMORY[0x277D3FAD8];
  nameCopy = name;
  v10 = [v8 preferenceSpecifierNamed:for target:self set:0 get:0 detail:view cell:2 edit:0];
  v11 = [nameCopy stringByAppendingString:@"FinishRepair"];
  [v10 setProperty:v11 forKey:*MEMORY[0x277D3FFB8]];

  [v10 setIdentifier:@"finishRepairId"];
  valueForSpecifierFinishRepair = [(SystemHealthUI *)self valueForSpecifierFinishRepair];
  [v10 setProperty:valueForSpecifierFinishRepair forKey:@"CRImageAlertKey"];

  [v10 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  [(CRUIAnalytics *)self->analytics sendAsyncAnalyticsForEventIfNeeded:@"FinishRepair" moduleName:nameCopy];

  return v10;
}

- (id)_createUnknownSpecifierFor:(id)for detailView:(Class)view moduleName:(id)name
{
  v8 = MEMORY[0x277D3FAD8];
  nameCopy = name;
  v10 = [v8 preferenceSpecifierNamed:for target:self set:0 get:0 detail:view cell:2 edit:0];
  [v10 setIdentifier:@"warningId"];
  valueForSpecifierUnknown = [(SystemHealthUI *)self valueForSpecifierUnknown];
  [v10 setProperty:valueForSpecifierUnknown forKey:@"CRImageAlertKey"];

  [v10 setProperty:nameCopy forKey:*MEMORY[0x277D3FFB8]];
  [v10 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  ++self->failedComponentsCount;

  return v10;
}

- (id)getNetworkAlert
{
  v3 = MEMORY[0x277D75108];
  v4 = [(MRLocalization *)self->locale localizedStringWithKey:@"NETWORK_CONNECTION_REQUIRED" defaultString:@"NETWORK_CONNECTION_REQUIRED"];
  if (self->deviceClass == 3)
  {
    v5 = @"NETWORK_CONNECTION_DESC_IPAD";
  }

  else
  {
    v5 = @"NETWORK_CONNECTION_DESC";
  }

  v6 = [(MRLocalization *)self->locale localizedStringWithKey:v5 defaultString:v5];
  v7 = [v3 alertControllerWithTitle:v4 message:v6 preferredStyle:1];

  v8 = MEMORY[0x277D75100];
  v9 = [(MRLocalization *)self->locale localizedStringWithKey:@"SOFTWARE_UPDATE" defaultString:@"SOFTWARE_UPDATE"];
  v10 = [v8 actionWithTitle:v9 style:0 handler:&__block_literal_global_40];
  [v7 addAction:v10];

  v11 = MEMORY[0x277D75100];
  v12 = [(MRLocalization *)self->locale localizedStringWithKey:@"CANCEL" defaultString:@"CANCEL"];
  v13 = [v11 actionWithTitle:v12 style:1 handler:0];
  [v7 addAction:v13];

  return v7;
}

void __33__SystemHealthUI_getNetworkAlert__block_invoke()
{
  v1 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v0 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=General&path=SOFTWARE_UPDATE_LINK"];
  [v1 openSensitiveURL:v0 withOptions:0];
}

- (id)getPreFlightFailedAlert
{
  v3 = MEMORY[0x277D75108];
  v4 = [(MRLocalization *)self->locale localizedStringWithKey:@"NOT_AVAILABLE" defaultString:@"NOT_AVAILABLE"];
  v5 = [(MRLocalization *)self->locale localizedStringWithKey:@"TRY_AGAIN_LATER_DESC" defaultString:@"TRY_AGAIN_LATER_DESC"];
  v6 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  v7 = MEMORY[0x277D75100];
  v8 = [(MRLocalization *)self->locale localizedStringWithKey:@"OK" defaultString:@"OK"];
  v9 = [v7 actionWithTitle:v8 style:1 handler:0];
  [v6 addAction:v9];

  return v6;
}

- (id)getOSUpdateAlert
{
  v3 = MEMORY[0x277D75108];
  v4 = [(MRLocalization *)self->locale localizedStringWithKey:@"SOFTWARE_UPDATE_REQUIRED" defaultString:@"SOFTWARE_UPDATE_REQUIRED"];
  if (self->deviceClass == 3)
  {
    v5 = @"SOFTWARE_UPDATE_DESC_IPAD";
  }

  else
  {
    v5 = @"SOFTWARE_UPDATE_DESC";
  }

  v6 = [(MRLocalization *)self->locale localizedStringWithKey:v5 defaultString:v5];
  v7 = [v3 alertControllerWithTitle:v4 message:v6 preferredStyle:1];

  v8 = MEMORY[0x277D75100];
  v9 = [(MRLocalization *)self->locale localizedStringWithKey:@"SOFTWARE_UPDATE" defaultString:@"SOFTWARE_UPDATE"];
  v10 = [v8 actionWithTitle:v9 style:0 handler:&__block_literal_global_68];
  [v7 addAction:v10];

  v11 = MEMORY[0x277D75100];
  v12 = [(MRLocalization *)self->locale localizedStringWithKey:@"CANCEL" defaultString:@"CANCEL"];
  v13 = [v11 actionWithTitle:v12 style:1 handler:0];
  [v7 addAction:v13];

  return v7;
}

void __34__SystemHealthUI_getOSUpdateAlert__block_invoke()
{
  v1 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v0 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=General&path=SOFTWARE_UPDATE_LINK"];
  [v1 openSensitiveURL:v0 withOptions:0];
}

- (void)performInteractivePreflightWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  utils = self->utils;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__SystemHealthUI_performInteractivePreflightWithSpecifier___block_invoke;
  v7[3] = &unk_278EB1D00;
  v7[4] = self;
  v8 = specifierCopy;
  v6 = specifierCopy;
  [(CoreRepairUIUtils *)utils performInteractiveMiniPreflightWith:v7];
}

void __59__SystemHealthUI_performInteractivePreflightWithSpecifier___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 80) isPreflightSuccessful])
  {
    v2 = *(*(a1 + 32) + 80);

    [v2 setBootIntentAndReboot];
  }

  else
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __59__SystemHealthUI_performInteractivePreflightWithSpecifier___block_invoke_2;
    v4[3] = &unk_278EB1D00;
    v3 = *(a1 + 40);
    v4[4] = *(a1 + 32);
    v5 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v4);
  }
}

void __59__SystemHealthUI_performInteractivePreflightWithSpecifier___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) getPreFlightFailedAlert];
  if (v3)
  {
    v2 = [*(a1 + 32) parentViewController];
    [v2 presentViewController:v3 animated:1 completion:0];
  }

  [*(a1 + 32) configureSpin:0 ofCellForSpecifier:*(a1 + 40) setEnabled:0];
}

- (void)showActionSheets:(id)sheets
{
  sheetsCopy = sheets;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SystemHealthUI *)selfCopy configureSpin:1 ofCellForSpecifier:sheetsCopy setEnabled:0];
  v6 = objc_opt_new();
  v7 = [MEMORY[0x277D75108] alertControllerWithTitle:0 message:0 preferredStyle:0];
  v8 = MEMORY[0x277D75100];
  v9 = [v6 localizedStringWithKey:@"RESTART_AND_FINISH_REPAIR" defaultString:@"RESTART_AND_FINISH_REPAIR"];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __35__SystemHealthUI_showActionSheets___block_invoke;
  v23[3] = &unk_278EB1D28;
  v23[4] = selfCopy;
  v10 = sheetsCopy;
  v24 = v10;
  v11 = [v8 actionWithTitle:v9 style:2 handler:v23];
  [v7 addAction:v11];

  v12 = MEMORY[0x277D75100];
  v13 = [(MRLocalization *)selfCopy->locale localizedStringWithKey:@"NOT_NOW" defaultString:@"NOT_NOW"];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __35__SystemHealthUI_showActionSheets___block_invoke_75;
  v20 = &unk_278EB1D28;
  v21 = selfCopy;
  v14 = v10;
  v22 = v14;
  v15 = [v12 actionWithTitle:v13 style:1 handler:&v17];
  [v7 addAction:{v15, v17, v18, v19, v20, v21}];

  parentViewController = [(SystemHealthUI *)selfCopy parentViewController];
  [parentViewController presentViewController:v7 animated:1 completion:0];

  [(CRUIAnalytics *)selfCopy->analytics sendAsyncAnalyticsForEvent:@"RestartInitiated" moduleName:@"PartsAndServiceHistory"];
  [(CoreRepairUIUtils *)selfCopy->utils clearFollowUpForkey:@"clearFinishRepairFollowup"];

  objc_sync_exit(selfCopy);
}

void __35__SystemHealthUI_showActionSheets___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 80) hasConnectivity])
  {
    if (([*(*(a1 + 32) + 80) getRepairTicket] & 1) == 0)
    {
      v2 = handleForCategory(0);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_247875000, v2, OS_LOG_TYPE_DEFAULT, "OS Update required to proceed", v8, 2u);
      }

      v3 = [*(a1 + 32) getOSUpdateAlert];
      if (v3)
      {
        v4 = [*(a1 + 32) parentViewController];
        [v4 presentViewController:v3 animated:1 completion:0];
      }

      [*(a1 + 32) configureSpin:0 ofCellForSpecifier:*(a1 + 40) setEnabled:0];
    }

    [*(a1 + 32) performInteractivePreflightWithSpecifier:*(a1 + 40)];
  }

  else
  {
    v5 = handleForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247875000, v5, OS_LOG_TYPE_DEFAULT, "Network is not reachable", buf, 2u);
    }

    v6 = [*(a1 + 32) getNetworkAlert];
    if (v6)
    {
      v7 = [*(a1 + 32) parentViewController];
      [v7 presentViewController:v6 animated:1 completion:0];
    }

    [*(a1 + 32) configureSpin:0 ofCellForSpecifier:*(a1 + 40) setEnabled:0];
  }
}

- (id)valueForSpecifierUnknown
{
  v2 = [(MRLocalization *)self->locale localizedStringWithKey:@"UNKNOWN" defaultString:@"UNKNOWN"];
  v3 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v2];
  v4 = [MEMORY[0x277D755B0] systemImageNamed:@"exclamationmark.triangle.fill"];
  systemGrayColor = [MEMORY[0x277D75340] systemGrayColor];
  v6 = [v4 imageWithTintColor:systemGrayColor];

  v7 = [v6 imageWithRenderingMode:1];

  v8 = [MEMORY[0x277D74268] textAttachmentWithImage:v7];
  v9 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v8];
  v10 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:@" "];
  [v3 appendAttributedString:v10];

  [v3 appendAttributedString:v9];

  return v3;
}

- (id)valueForSpecifierFinishRepair
{
  v2 = [(MRLocalization *)self->locale localizedStringWithKey:@"FINISH_REPAIR" defaultString:@"FINISH_REPAIR"];
  v3 = [v2 stringByAppendingString:@" "];

  v4 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v3];

  return v4;
}

- (id)valueForSpecifierUsed
{
  v2 = [(MRLocalization *)self->locale localizedStringWithKey:@"USED" defaultString:@"USED"];
  v3 = [v2 stringByAppendingString:@" "];

  v4 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v3];

  return v4;
}

- (id)valueForSpecifierService
{
  v2 = [(MRLocalization *)self->locale localizedStringWithKey:@"Service" defaultString:@"Service"];
  v3 = [v2 stringByAppendingString:@" "];

  v4 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v3];

  return v4;
}

- (id)valueForSpecifierRepaired
{
  v2 = [(MRLocalization *)self->locale localizedStringWithKey:@"GENUINE_APPLE_PART" defaultString:@"GENUINE_APPLE_PART"];
  v3 = [v2 stringByAppendingString:@" "];

  v4 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v3];

  return v4;
}

- (id)valueForSpecifierIssue
{
  v2 = [(MRLocalization *)self->locale localizedStringWithKey:@"PART_ISSUE" defaultString:@"PART_ISSUE"];
  v3 = [v2 stringByAppendingString:@" "];

  v4 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v3];

  return v4;
}

- (void)extractMtubSpecifiers:(id)specifiers caaRepairHistory:(id)history srvp:(id)srvp rchlHistory:(id)rchlHistory
{
  specifiersCopy = specifiers;
  historyCopy = history;
  srvpCopy = srvp;
  rchlHistoryCopy = rchlHistory;
  if (self->isRCHLDevice)
  {
    if (([(CRRepairHistory *)self->localRepairHistory hasHadRCHLBasedRepairForComponent:1029 withHistory:rchlHistoryCopy]& 1) == 0 && (!_os_feature_enabled_impl() || !_os_feature_enabled_impl()))
    {
      goto LABEL_22;
    }

    v14 = MEMORY[0x277D3FAD8];
    v15 = [MEMORY[0x277D00FC0] getComponentName:1029];
    v16 = [v14 preferenceSpecifierNamed:v15 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    v17 = [@"MTUB" stringByAppendingString:@"Repair"];
    [v16 setProperty:v17 forKey:*MEMORY[0x277D3FFB8]];

    valueForSpecifierRepaired = [(SystemHealthUI *)self valueForSpecifierRepaired];
    [v16 setProperty:valueForSpecifierRepaired forKey:@"CRImageAlertKey"];

    [v16 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    [specifiersCopy addObject:v16];
    analytics = self->analytics;
    v20 = [@"MTUB" stringByAppendingString:@"Repair"];
    [(CRUIAnalytics *)analytics sendAsyncAnalyticsForEventIfNeeded:@"RepairUsingRCHL" moduleName:v20];

LABEL_21:
    goto LABEL_22;
  }

  deviceFDRVersion1 = self->deviceFDRVersion1;
  if (historyCopy && !self->deviceFDRVersion1)
  {
    v22 = [historyCopy objectForKeyedSubscript:@"SrvP"];

    if (v22)
    {
      v23 = handleForCategory(0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v31 = 0;
        v24 = "CAA has MTUB repair history.";
        v25 = &v31;
LABEL_19:
        _os_log_impl(&dword_247875000, v23, OS_LOG_TYPE_DEFAULT, v24, v25, 2u);
        goto LABEL_20;
      }

      goto LABEL_20;
    }

    deviceFDRVersion1 = self->deviceFDRVersion1;
  }

  if (!deviceFDRVersion1 && ([srvpCopy isEqualToString:@"0"] & 1) != 0 || _os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    v23 = handleForCategory(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v24 = "Local data shows repaired history for MTUB. CAA is unavailable for now.";
      v25 = buf;
      goto LABEL_19;
    }

LABEL_20:

    v26 = MEMORY[0x277D3FAD8];
    v27 = [MEMORY[0x277D00FC0] getComponentName:1029];
    v16 = [v26 preferenceSpecifierNamed:v27 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    v28 = [@"MTUB" stringByAppendingString:@"Repair"];
    [v16 setProperty:v28 forKey:*MEMORY[0x277D3FFB8]];

    valueForSpecifierRepaired2 = [(SystemHealthUI *)self valueForSpecifierRepaired];
    [v16 setProperty:valueForSpecifierRepaired2 forKey:@"CRImageAlertKey"];

    [v16 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    [specifiersCopy addObject:v16];
    goto LABEL_21;
  }

LABEL_22:
}

- (void)extractCameraSpecifiers:(id)specifiers componentsInfoSpecifiers:(id)infoSpecifiers configurationSpecifiers:(id)configurationSpecifiers
{
  specifiersCopy = specifiers;
  infoSpecifiersCopy = infoSpecifiers;
  configurationSpecifiersCopy = configurationSpecifiers;
  v10 = _os_feature_enabled_impl();
  v11 = [(NSDictionary *)self->systemHealth objectForKeyedSubscript:@"Camera"];
  intValue = [v11 intValue];

  v13 = _os_feature_enabled_impl();
  if (intValue == -3)
  {
    v14 = [(SystemHealthUI *)self _createFinishRepairSpecifierFor:specifiersCopy detailView:objc_opt_class() moduleName:@"Camera"];
    if (v14)
    {
      v15 = configurationSpecifiersCopy;
LABEL_9:
      [v15 addObject:v14];
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v16 = v13;
  if (![MEMORY[0x277D00FD0] isFDRDataClassSupported:@"CmCl"])
  {
    goto LABEL_11;
  }

  if (intValue == -1 || (_os_feature_enabled_impl() & v10) == 1)
  {
    v14 = [(SystemHealthUI *)self _createUnknownSpecifierFor:specifiersCopy detailView:objc_opt_class() moduleName:@"Camera"];
    if (v14)
    {
      v15 = infoSpecifiersCopy;
      goto LABEL_9;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (intValue == 1)
  {
    repairHistoryItems = self->repairHistoryItems;
    if (repairHistoryItems)
    {
      v18 = [(NSDictionary *)repairHistoryItems objectForKeyedSubscript:@"Camera"];
      v14 = v18;
      if (v18 && [v18 isRepaired])
      {
        v19 = v16 & v10;
        v20 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:specifiersCopy target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
        v21 = [@"Camera" stringByAppendingString:@"Repair"];
        [v20 setProperty:v21 forKey:*MEMORY[0x277D3FFB8]];

        if (([v14 isUsed] | v19))
        {
          valueForSpecifierUsed = [(SystemHealthUI *)self valueForSpecifierUsed];
          v23 = @"Used";
        }

        else
        {
          valueForSpecifierUsed = [(SystemHealthUI *)self valueForSpecifierRepaired];
          v23 = @"Repair";
        }

        [v20 setProperty:valueForSpecifierUsed forKey:@"CRImageAlertKey"];

        analytics = self->analytics;
        v25 = [@"Camera" stringByAppendingString:v23];
        [(CRUIAnalytics *)analytics sendAsyncAnalyticsForEventIfNeeded:@"Repair" moduleName:v25];

        [v20 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
        [infoSpecifiersCopy addObject:v20];
      }

      goto LABEL_10;
    }
  }

LABEL_11:
}

- (void)extractiPadCameraSpecifiers:(id)specifiers componentsInfoSpecifiers:(id)infoSpecifiers configurationSpecifiers:(id)configurationSpecifiers caaRepairHistory:(id)history rchlHistory:(id)rchlHistory
{
  specifiersCopy = specifiers;
  configurationSpecifiersCopy = configurationSpecifiers;
  v10 = [(NSDictionary *)self->systemHealth objectForKeyedSubscript:@"Camera"];
  intValue = [v10 intValue];

  if (intValue == -3)
  {
    v12 = [(SystemHealthUI *)self _createFinishRepairSpecifierFor:specifiersCopy detailView:objc_opt_class() moduleName:@"Camera"];
    if (v12)
    {
      [configurationSpecifiersCopy addObject:v12];
    }
  }
}

- (void)extractFaceIDSpecifiers:(id)specifiers configurationSpecifiers:(id)configurationSpecifiers
{
  specifiersCopy = specifiers;
  configurationSpecifiersCopy = configurationSpecifiers;
  v7 = [(MRLocalization *)self->locale localizedStringWithKey:@"FACEID_COMPONENT" defaultString:@"FACEID_COMPONENT"];
  v8 = [(MRLocalization *)self->locale localizedStringWithFormat:@"%@_COMPONENT" component:1027];
  v9 = [(NSDictionary *)self->systemHealth objectForKeyedSubscript:@"FaceID"];
  intValue = [v9 intValue];

  v11 = _os_feature_enabled_impl();
  v12 = _os_feature_enabled_impl();
  if (intValue == -1)
  {
    goto LABEL_6;
  }

  if (intValue == -3)
  {
    v13 = [(SystemHealthUI *)self _createFinishRepairSpecifierFor:v8 detailView:objc_opt_class() moduleName:@"FaceID"];
    if (v13)
    {
      [configurationSpecifiersCopy addObject:v13];
    }

    goto LABEL_7;
  }

  v14 = v12;
  if ((_os_feature_enabled_impl() & v11) == 1)
  {
LABEL_6:
    v13 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
    [v13 setProperty:@"FaceID" forKey:*MEMORY[0x277D3FFB8]];
    valueForSpecifierIssue = [(SystemHealthUI *)self valueForSpecifierIssue];
    [v13 setProperty:valueForSpecifierIssue forKey:@"CRImageAlertKey"];

    [v13 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    [specifiersCopy addObject:v13];
    [(CRUIAnalytics *)self->analytics sendAsyncAnalyticsForEventIfNeeded:@"SGAViewSeen" moduleName:@"FaceID"];
    ++self->failedComponentsCount;
LABEL_7:

    goto LABEL_8;
  }

  if (intValue == 1)
  {
    repairHistoryItems = self->repairHistoryItems;
    if (repairHistoryItems)
    {
      v17 = [(NSDictionary *)repairHistoryItems objectForKeyedSubscript:@"FaceID"];
      v13 = v17;
      if (v17 && [v17 isRepaired])
      {
        v18 = v14 & v11;
        v19 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
        v20 = [@"FaceID" stringByAppendingString:@"Repair"];
        [v19 setProperty:v20 forKey:*MEMORY[0x277D3FFB8]];

        if (([v13 isUsed] | v18))
        {
          valueForSpecifierUsed = [(SystemHealthUI *)self valueForSpecifierUsed];
          v22 = @"Used";
        }

        else
        {
          valueForSpecifierUsed = [(SystemHealthUI *)self valueForSpecifierRepaired];
          v22 = @"Repair";
        }

        [v19 setProperty:valueForSpecifierUsed forKey:@"CRImageAlertKey"];

        [(CRUIAnalytics *)self->analytics sendAsyncAnalyticsForEventIfNeeded:v22 moduleName:@"FaceID"];
        [v19 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
        [specifiersCopy addObject:v19];
      }

      goto LABEL_7;
    }
  }

LABEL_8:
}

- (void)extractTouchIDSpecifiers:(id)specifiers configurationSpecifiers:(id)configurationSpecifiers
{
  specifiersCopy = specifiers;
  configurationSpecifiersCopy = configurationSpecifiers;
  v7 = [(MRLocalization *)self->locale localizedStringWithKey:@"TOUCH_ID_COMPONENT" defaultString:@"TOUCH_ID_COMPONENT"];
  v8 = _os_feature_enabled_impl();
  v9 = [(NSDictionary *)self->systemHealth objectForKeyedSubscript:@"TouchID"];
  intValue = [v9 intValue];

  v11 = _os_feature_enabled_impl();
  if (intValue == -1)
  {
    goto LABEL_6;
  }

  if (intValue == -3)
  {
    v12 = [(SystemHealthUI *)self _createFinishRepairSpecifierFor:v7 detailView:objc_opt_class() moduleName:@"TouchID"];
    if (v12)
    {
      [configurationSpecifiersCopy addObject:v12];
    }

    goto LABEL_7;
  }

  v13 = v11;
  if ((_os_feature_enabled_impl() & v8) == 1)
  {
LABEL_6:
    v12 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
    [v12 setProperty:@"TouchID" forKey:*MEMORY[0x277D3FFB8]];
    valueForSpecifierIssue = [(SystemHealthUI *)self valueForSpecifierIssue];
    [v12 setProperty:valueForSpecifierIssue forKey:@"CRImageAlertKey"];

    [v12 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    [specifiersCopy addObject:v12];
    [(CRUIAnalytics *)self->analytics sendAsyncAnalyticsForEventIfNeeded:@"SGAViewSeen" moduleName:@"TouchID"];
    ++self->failedComponentsCount;
LABEL_7:

    goto LABEL_8;
  }

  if (intValue == 1)
  {
    repairHistoryItems = self->repairHistoryItems;
    if (repairHistoryItems)
    {
      v16 = [(NSDictionary *)repairHistoryItems objectForKeyedSubscript:@"TouchID"];
      v12 = v16;
      if (v16 && [v16 isRepaired])
      {
        v17 = v13 & v8;
        v18 = MEMORY[0x277D3FAD8];
        v19 = [(MRLocalization *)self->locale localizedStringWithKey:@"TOUCHID_REPAIR" defaultString:@"TOUCHID_REPAIR"];
        v20 = [v18 preferenceSpecifierNamed:v19 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

        v21 = [@"TouchID" stringByAppendingString:@"Repair"];
        [v20 setProperty:v21 forKey:*MEMORY[0x277D3FFB8]];

        if (([v12 isUsed] | v17))
        {
          valueForSpecifierUsed = [(SystemHealthUI *)self valueForSpecifierUsed];
          v23 = @"Used";
        }

        else
        {
          valueForSpecifierUsed = [(SystemHealthUI *)self valueForSpecifierRepaired];
          v23 = @"Repair";
        }

        [v20 setProperty:valueForSpecifierUsed forKey:@"CRImageAlertKey"];

        [(CRUIAnalytics *)self->analytics sendAsyncAnalyticsForEventIfNeeded:v23 moduleName:@"TouchID"];
        [v20 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
        [specifiersCopy addObject:v20];
      }

      goto LABEL_7;
    }
  }

LABEL_8:
}

- (void)extractWifiSpecifiers
{
  v3 = [(NSDictionary *)self->systemHealth objectForKeyedSubscript:@"Wifi"];
  intValue = [v3 intValue];

  if (intValue == -1)
  {
    ++self->failedComponentsCount;
  }
}

- (void)extractDisplaySpecifiers:(id)specifiers configurationSpecifiers:(id)configurationSpecifiers
{
  specifiersCopy = specifiers;
  configurationSpecifiersCopy = configurationSpecifiers;
  v7 = [(MRLocalization *)self->locale localizedStringWithKey:@"Display" defaultString:@"Display"];
  v8 = [(NSDictionary *)self->systemHealth objectForKeyedSubscript:@"Display"];
  intValue = [v8 intValue];

  v10 = _os_feature_enabled_impl();
  v11 = _os_feature_enabled_impl();
  if (intValue == -3)
  {
    v12 = [(SystemHealthUI *)self _createFinishRepairSpecifierFor:v7 detailView:objc_opt_class() moduleName:@"Display"];
    if (v12)
    {
      v13 = configurationSpecifiersCopy;
LABEL_9:
      [v13 addObject:v12];
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v14 = v11;
  if (![MEMORY[0x277D00FD0] isFDRDataClassSupported:@"tcrt"])
  {
    goto LABEL_11;
  }

  if (intValue == -1 || (_os_feature_enabled_impl() & v10) == 1)
  {
    v12 = [(SystemHealthUI *)self _createUnknownSpecifierFor:v7 detailView:objc_opt_class() moduleName:@"TouchController"];
    if (v12)
    {
      v13 = specifiersCopy;
      goto LABEL_9;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (intValue == 1)
  {
    repairHistoryItems = self->repairHistoryItems;
    if (repairHistoryItems)
    {
      v16 = [(NSDictionary *)repairHistoryItems objectForKeyedSubscript:@"Display"];
      v12 = v16;
      if (v16 && [v16 isRepaired])
      {
        v17 = v14 & v10;
        v18 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
        v19 = [@"Display" stringByAppendingString:@"Repair"];
        [v18 setProperty:v19 forKey:*MEMORY[0x277D3FFB8]];

        if (([v12 isUsed] | v17))
        {
          valueForSpecifierUsed = [(SystemHealthUI *)self valueForSpecifierUsed];
          v21 = @"Used";
        }

        else
        {
          valueForSpecifierUsed = [(SystemHealthUI *)self valueForSpecifierRepaired];
          v21 = @"Repair";
        }

        [v18 setProperty:valueForSpecifierUsed forKey:@"CRImageAlertKey"];

        analytics = self->analytics;
        v23 = [@"Display" stringByAppendingString:v21];
        [(CRUIAnalytics *)analytics sendAsyncAnalyticsForEventIfNeeded:@"Repair" moduleName:v23];

        [v18 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
        [specifiersCopy addObject:v18];
      }

      goto LABEL_10;
    }
  }

LABEL_11:
}

- (void)extractiPadBatterySpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  v4 = [(MRLocalization *)self->locale localizedStringWithKey:@"Battery" defaultString:@"Battery"];
  if ([(CoreRepairUIUtils *)self->utils isBatteryInServiceState])
  {
    v5 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:0 cell:4 edit:0];
    [v5 setIdentifier:@"NeedsService"];
    valueForSpecifierService = [(SystemHealthUI *)self valueForSpecifierService];
    [v5 setProperty:valueForSpecifierService forKey:@"CRImageAlertKey"];

    [v5 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    [v5 setProperty:@"NeedsService" forKey:*MEMORY[0x277D3FFB8]];
    [v5 setProperty:&unk_28597F128 forKey:*MEMORY[0x277D3FD68]];
    [specifiersCopy addObject:v5];
  }
}

- (void)extractBatterySpecifiers:(id)specifiers configurationSpecifiers:(id)configurationSpecifiers
{
  specifiersCopy = specifiers;
  configurationSpecifiersCopy = configurationSpecifiers;
  v7 = [(MRLocalization *)self->locale localizedStringWithKey:@"Battery" defaultString:@"Battery"];
  v8 = [(NSDictionary *)self->systemHealth objectForKeyedSubscript:@"Battery"];
  intValue = [v8 intValue];

  v10 = _os_feature_enabled_impl();
  if (v10)
  {
    v11 = _os_feature_enabled_impl();
  }

  else
  {
    v11 = 0;
  }

  if (intValue == -1)
  {
    goto LABEL_9;
  }

  if (intValue == -3)
  {
    v12 = [(SystemHealthUI *)self _createFinishRepairSpecifierFor:v7 detailView:objc_opt_class() moduleName:@"Battery"];
    if (!v12)
    {
LABEL_15:

      goto LABEL_16;
    }

    v13 = configurationSpecifiersCopy;
LABEL_14:
    [v13 addObject:v12];
    goto LABEL_15;
  }

  if ((v10 & _os_feature_enabled_impl()) == 1)
  {
LABEL_9:
    v12 = [(SystemHealthUI *)self _createUnknownSpecifierFor:v7 detailView:objc_opt_class() moduleName:@"Battery"];
    if (!v12)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if ([(CoreRepairUIUtils *)self->utils isBatteryInServiceState])
  {
    v12 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:4 edit:0];
    [v12 setIdentifier:@"NeedsService"];
    valueForSpecifierService = [(SystemHealthUI *)self valueForSpecifierService];
    [v12 setProperty:valueForSpecifierService forKey:@"CRImageAlertKey"];

    [v12 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    [v12 setProperty:@"NeedsService" forKey:*MEMORY[0x277D3FFB8]];
    [v12 setProperty:&unk_28597F128 forKey:*MEMORY[0x277D3FD68]];
LABEL_13:
    v13 = specifiersCopy;
    goto LABEL_14;
  }

  if (intValue == 1)
  {
    repairHistoryItems = self->repairHistoryItems;
    if (repairHistoryItems)
    {
      v16 = [(NSDictionary *)repairHistoryItems objectForKeyedSubscript:@"Battery"];
      v12 = v16;
      if (v16 && [v16 isRepaired])
      {
        v17 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
        v18 = [@"Battery" stringByAppendingString:@"Repair"];
        [v17 setProperty:v18 forKey:*MEMORY[0x277D3FFB8]];

        if ((v11 | [v12 isUsed]) == 1)
        {
          valueForSpecifierUsed = [(SystemHealthUI *)self valueForSpecifierUsed];
          v20 = @"Used";
        }

        else
        {
          valueForSpecifierUsed = [(SystemHealthUI *)self valueForSpecifierRepaired];
          v20 = @"Repair";
        }

        [v17 setProperty:valueForSpecifierUsed forKey:@"CRImageAlertKey"];

        analytics = self->analytics;
        v22 = [@"Battery" stringByAppendingString:v20];
        [(CRUIAnalytics *)analytics sendAsyncAnalyticsForEventIfNeeded:@"Repair" moduleName:v22];

        [v17 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
        [specifiersCopy addObject:v17];
      }

      goto LABEL_15;
    }
  }

LABEL_16:
}

- (void)extractAudioSpecifiers
{
  v3 = [(NSDictionary *)self->systemHealth objectForKeyedSubscript:@"Audio"];
  intValue = [v3 intValue];

  if (intValue == -1)
  {
    ++self->failedComponentsCount;
  }

  v5 = [(NSDictionary *)self->systemHealth objectForKeyedSubscript:@"AudioCodec"];
  intValue2 = [v5 intValue];

  if (intValue2 == -1)
  {
    ++self->failedComponentsCount;
  }
}

- (void)extractRCameraHWFailureSpecifiers
{
  v3 = [(NSDictionary *)self->systemHealth objectForKeyedSubscript:@"RCameraFailed"];
  intValue = [v3 intValue];

  if (intValue == -1)
  {
    ++self->failedComponentsCount;
  }
}

- (void)extractBluetoohSpecifiers
{
  v3 = [(NSDictionary *)self->systemHealth objectForKeyedSubscript:@"Bluetooth"];
  intValue = [v3 intValue];

  if (intValue == -1)
  {
    ++self->failedComponentsCount;
  }
}

- (void)extractBasebandSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  v4 = [(NSDictionary *)self->systemHealth objectForKeyedSubscript:@"Baseband"];
  intValue = [v4 intValue];

  if (intValue == -1)
  {
    v6 = MEMORY[0x277D3FAD8];
    v7 = [(MRLocalization *)self->locale localizedStringWithKey:@"Baseband" defaultString:@"Baseband"];
    v8 = [v6 preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v8 setProperty:@"Baseband" forKey:*MEMORY[0x277D3FFB8]];
    valueForSpecifierIssue = [(SystemHealthUI *)self valueForSpecifierIssue];
    [v8 setProperty:valueForSpecifierIssue forKey:@"CRImageAlertKey"];

    [v8 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    [specifiersCopy addObject:v8];
    [(CRUIAnalytics *)self->analytics sendAsyncAnalyticsForEventIfNeeded:@"SGAViewSeen" moduleName:@"Baseband"];
    ++self->failedComponentsCount;
  }
}

- (void)extractBackGlassSpecifiers:(id)specifiers configurationSpecifiers:(id)configurationSpecifiers caaRepairHistory:(id)history rchlHistory:(id)rchlHistory
{
  configurationSpecifiersCopy = configurationSpecifiers;
  v7 = [(MRLocalization *)self->locale localizedStringWithKey:@"BACK_GLASS" defaultString:@"BACK_GLASS"];
  v8 = [(NSDictionary *)self->systemHealth objectForKeyedSubscript:@"BackGlass"];
  intValue = [v8 intValue];

  if (intValue == -3)
  {
    v10 = [(SystemHealthUI *)self _createFinishRepairSpecifierFor:v7 detailView:objc_opt_class() moduleName:@"BackGlass"];
    if (v10)
    {
      [configurationSpecifiersCopy addObject:v10];
    }
  }
}

- (void)extractVolumeButtonSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  v4 = [(MRLocalization *)self->locale localizedStringWithKey:@"VOLUME_BUTTON" defaultString:@"VOLUME_BUTTON"];
  v5 = [(NSDictionary *)self->systemHealth objectForKeyedSubscript:@"VolumeButton"];
  intValue = [v5 intValue];

  if (intValue == -3)
  {
    v7 = [(SystemHealthUI *)self _createFinishRepairSpecifierFor:v4 detailView:objc_opt_class() moduleName:@"VolumeButton"];
    if (v7)
    {
      [specifiersCopy addObject:v7];
    }
  }
}

- (void)extractCoverGlassSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  v4 = [(MRLocalization *)self->locale localizedStringWithKey:@"COVER_GLASS" defaultString:@"COVER_GLASS"];
  v5 = [(NSDictionary *)self->systemHealth objectForKeyedSubscript:@"CoverGlass"];
  intValue = [v5 intValue];

  if (intValue == -3)
  {
    v7 = [(SystemHealthUI *)self _createFinishRepairSpecifierFor:v4 detailView:objc_opt_class() moduleName:@"CoverGlass"];
    if (v7)
    {
      [specifiersCopy addObject:v7];
    }
  }
}

- (void)extractEnclosureSpecifiers:(id)specifiers caaRepairHistory:(id)history rchlHistory:(id)rchlHistory
{
  specifiersCopy = specifiers;
  v6 = [(MRLocalization *)self->locale localizedStringWithKey:@"ENCLOSURE" defaultString:@"ENCLOSURE"];
  v7 = [(NSDictionary *)self->systemHealth objectForKeyedSubscript:@"Enclosure"];
  intValue = [v7 intValue];

  if (intValue == -3)
  {
    v9 = [(SystemHealthUI *)self _createFinishRepairSpecifierFor:v6 detailView:objc_opt_class() moduleName:@"Enclosure"];
    if (v9)
    {
      [specifiersCopy addObject:v9];
    }
  }
}

- (void)extractNFCSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  v4 = [(NSDictionary *)self->systemHealth objectForKeyedSubscript:@"NFC"];
  intValue = [v4 intValue];

  if (intValue == -1)
  {
    v6 = [(MRLocalization *)self->locale localizedStringWithKey:@"NFC" defaultString:@"NFC"];
    v7 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
    [v7 setProperty:@"NFC" forKey:*MEMORY[0x277D3FFB8]];
    valueForSpecifierIssue = [(SystemHealthUI *)self valueForSpecifierIssue];
    [v7 setProperty:valueForSpecifierIssue forKey:@"CRImageAlertKey"];

    [v7 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    [specifiersCopy addObject:v7];
    [(CRUIAnalytics *)self->analytics sendAsyncAnalyticsForEventIfNeeded:@"SGAViewSeen" moduleName:@"NFC"];
    ++self->failedComponentsCount;
  }
}

- (void)extractUWBSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  v4 = [(NSDictionary *)self->systemHealth objectForKeyedSubscript:@"UWB"];
  intValue = [v4 intValue];

  if (intValue == -1)
  {
    v6 = [(MRLocalization *)self->locale localizedStringWithKey:@"UWB" defaultString:@"UWB"];
    v7 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
    [v7 setProperty:@"UWB" forKey:*MEMORY[0x277D3FFB8]];
    valueForSpecifierIssue = [(SystemHealthUI *)self valueForSpecifierIssue];
    [v7 setProperty:valueForSpecifierIssue forKey:@"CRImageAlertKey"];

    [v7 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
    [specifiersCopy addObject:v7];
    [(CRUIAnalytics *)self->analytics sendAsyncAnalyticsForEventIfNeeded:@"SGAViewSeen" moduleName:@"UWB"];
    ++self->failedComponentsCount;
  }
}

- (id)setupGroupSpecifer
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = [(MRLocalization *)self->locale localizedStringWithKey:@"SERVICE_HISTORY" defaultString:@"SERVICE_HISTORY"];
  v5 = [v3 groupSpecifierWithName:v4];

  v6 = [(MRLocalization *)self->locale localizedStringWithKey:@"PART_SERVICE_HISTORY_URL" defaultString:@"PART_SERVICE_HISTORY_URL"];
  if ([(CRRepairHistory *)self->localRepairHistory isSupportedIPad])
  {
    v7 = [(MRLocalization *)self->locale localizedStringWithKey:@"PART_SERVICE_HISTORY_URL_IPAD" defaultString:@"PART_SERVICE_HISTORY_URL_IPAD"];

    v6 = v7;
  }

  [v5 setProperty:@"COMPONENT_GROUP" forKey:*MEMORY[0x277D3FFB8]];
  [v5 setProperty:v6 forKey:*MEMORY[0x277D3FF78]];

  return v5;
}

- (BOOL)hasUnsealedComponents
{
  v3 = [(NSDictionary *)self->systemHealth objectForKeyedSubscript:@"BackGlass"];
  if ([v3 intValue] == -3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(NSDictionary *)self->systemHealth objectForKeyedSubscript:@"Camera"];
    if ([v5 intValue] == -3)
    {
      v4 = 1;
    }

    else
    {
      v6 = [(NSDictionary *)self->systemHealth objectForKeyedSubscript:@"FaceID"];
      if ([v6 intValue] == -3)
      {
        v4 = 1;
      }

      else
      {
        v7 = [(NSDictionary *)self->systemHealth objectForKeyedSubscript:@"TouchID"];
        if ([v7 intValue] == -3)
        {
          v4 = 1;
        }

        else
        {
          v8 = [(NSDictionary *)self->systemHealth objectForKeyedSubscript:@"Display"];
          if ([v8 intValue] == -3)
          {
            v4 = 1;
          }

          else
          {
            v9 = [(NSDictionary *)self->systemHealth objectForKeyedSubscript:@"Battery"];
            if ([v9 intValue] == -3)
            {
              v4 = 1;
            }

            else
            {
              v10 = [(NSDictionary *)self->systemHealth objectForKeyedSubscript:@"Enclosure"];
              if ([v10 intValue] == -3)
              {
                v4 = 1;
              }

              else
              {
                v11 = [(NSDictionary *)self->systemHealth objectForKeyedSubscript:@"VolumeButton"];
                if ([v11 intValue] == -3)
                {
                  v4 = 1;
                }

                else
                {
                  v12 = [(NSDictionary *)self->systemHealth objectForKeyedSubscript:@"CoverGlass"];
                  v4 = [v12 intValue] == -3;
                }
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

- (id)reloadCurrentSystemHealthInfoSpecifiers
{
  hasInvalidRCHL = [(CRRepairHistory *)self->localRepairHistory hasInvalidRCHL];
  if ([(CRRepairHistory *)self->localRepairHistory isSupportedIPad])
  {
    v4 = handleForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247875000, v4, OS_LOG_TYPE_DEFAULT, "Enabling Parts and Service History for supported iPads", buf, 2u);
    }

LABEL_6:
    v5 = objc_opt_new();
    v6 = [(SystemHealthUI *)self getCurrentDetailsWithPrivacySpecifier:0];
    if ([v6 count])
    {
      emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
      v8 = *MEMORY[0x277D3FFB8];
      [emptyGroupSpecifier setObject:@"PARTS_AND_SERVICE_GROUP" forKeyedSubscript:*MEMORY[0x277D3FFB8]];
      v9 = MEMORY[0x277D3FAD8];
      v10 = [(MRLocalization *)self->locale localizedStringWithKey:@"PARTS_AND_SERVICE_HISTORY" defaultString:@"PARTS_AND_SERVICE_HISTORY"];
      v11 = [v9 preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

      [v11 setObject:@"MAIN_PARTS_AND_SERVICE" forKeyedSubscript:v8];
      [v5 addObject:emptyGroupSpecifier];
      [v5 addObject:v11];
    }

    else
    {
      if (!self->isRCHLDevice && (self->isRepaired & hasInvalidRCHL & 1) != 0 && [MEMORY[0x277D01048] shouldShowDataCollectionNoticeForComponent:10])
      {
        v12 = handleForCategory(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v22 = 0;
          _os_log_impl(&dword_247875000, v12, OS_LOG_TYPE_DEFAULT, "Handling ACRZ case", v22, 2u);
        }

        emptyGroupSpecifier2 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
        v14 = *MEMORY[0x277D3FFB8];
        [emptyGroupSpecifier2 setObject:@"PARTS_AND_SERVICE_GROUP" forKeyedSubscript:*MEMORY[0x277D3FFB8]];
        v15 = MEMORY[0x277D3FAD8];
        v16 = [(MRLocalization *)self->locale localizedStringWithKey:@"PARTS_AND_SERVICE_HISTORY" defaultString:@"PARTS_AND_SERVICE_HISTORY"];
        v17 = [v15 preferenceSpecifierNamed:v16 target:self set:0 get:0 detail:0 cell:4 edit:0];

        [v17 setObject:@"MAIN_PARTS_AND_SERVICE" forKeyedSubscript:v14];
        [v17 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
        [(SystemHealthUI *)self setupPrivacyFooterFor:emptyGroupSpecifier2 withPrivacySpecifier:1];
        [v5 addObject:emptyGroupSpecifier2];
        [v5 addObject:v17];
      }

      if ([MEMORY[0x277D01048] shouldShowDataCollectionNoticeForComponent:10])
      {
        goto LABEL_17;
      }

      utils = self->utils;
      v21 = 0;
      [(CoreRepairUIUtils *)utils setupCAARetry:&v21];
      emptyGroupSpecifier = v21;
    }

LABEL_17:
    v19 = v5;

    goto LABEL_19;
  }

  if (self->deviceClass == 1)
  {
    goto LABEL_6;
  }

  v19 = 0;
LABEL_19:

  return v19;
}

- (void)setupPrivacyFooterFor:(id)for withPrivacySpecifier:(BOOL)specifier
{
  specifierCopy = specifier;
  forCopy = for;
  if (specifierCopy && [MEMORY[0x277D01048] shouldShowDataCollectionNoticeForComponent:10])
  {
    v7 = [(MRLocalization *)self->locale localizedStringWithKey:@"INFORMATION_COLLECTION_TEXT" defaultString:@"INFORMATION_COLLECTION_TEXT"];
    v8 = *MEMORY[0x277D3FF88];
    [forCopy setProperty:v7 forKey:*MEMORY[0x277D3FF88]];

    if (self->deviceClass == 3)
    {
      v9 = [(MRLocalization *)self->locale localizedStringWithKey:@"INFORMATION_COLLECTION_TEXT_IPAD" defaultString:@"INFORMATION_COLLECTION_TEXT_IPAD"];
      [forCopy setProperty:v9 forKey:v8];
    }

    [MEMORY[0x277D01048] didShowDataCollectionNoticeForComponent:10];
LABEL_10:
    [(CoreRepairUIUtils *)self->utils scheduleNetworkActivityWith:1];
    goto LABEL_11;
  }

  v10 = handleForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_247875000, v10, OS_LOG_TYPE_DEFAULT, "Do not need to show data collection specifier", v11, 2u);
  }

  if ([(SystemHealthUI *)self hasUnsealedComponents]&& ![(CoreRepairUIUtils *)self->utils isPreFlightDone])
  {
    goto LABEL_10;
  }

LABEL_11:
}

void __56__SystemHealthUI_getCurrentDetailsWithPrivacySpecifier___block_invoke_304(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v27;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v27 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v26 + 1) + 8 * i);
        v7 = *(*(a1 + 40) + 24);
        v8 = [*(a1 + 32) objectForKeyedSubscript:v6];
        v9 = [v8 stringValue];
        v10 = [@"exceptionCount:" stringByAppendingString:v9];
        [v7 sendAsyncAnalyticsForEventIfNeeded:v10 moduleName:v6];
      }

      v3 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v3);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = *(a1 + 48);
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * j);
        v17 = *(*(a1 + 40) + 24);
        v18 = [*(a1 + 48) objectForKeyedSubscript:v16];
        v19 = [v18 stringValue];
        [v17 sendAsyncAnalyticsForEventIfNeeded:v19 moduleName:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v13);
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __56__SystemHealthUI_getCurrentDetailsWithPrivacySpecifier___block_invoke_310(uint64_t a1)
{
  v2 = [*(a1 + 32) constructSpecifiersWithPrivacySpecifier:*(a1 + 72) rchlHistory:*(a1 + 40) caaHistory:*(a1 + 48) srvp:*(a1 + 56)];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)constructSpecifiersWithPrivacySpecifier:(BOOL)specifier rchlHistory:(id)history caaHistory:(id)caaHistory srvp:(id)srvp
{
  specifierCopy = specifier;
  historyCopy = history;
  caaHistoryCopy = caaHistory;
  srvpCopy = srvp;
  v11 = objc_opt_new();
  v12 = objc_opt_new();
  v43 = objc_opt_new();
  v42 = [(MRLocalization *)self->locale localizedStringWithKey:@"Camera" defaultString:@"Camera"];
  setupGroupSpecifer = [(SystemHealthUI *)self setupGroupSpecifer];
  v13 = MEMORY[0x277D3FAD8];
  v14 = [(MRLocalization *)self->locale localizedStringWithKey:@"CONFIGURATION_AVAILABLE" defaultString:@"CONFIGURATION_AVAILABLE"];
  v15 = [v13 groupSpecifierWithName:v14];

  [v15 setIdentifier:@"CONFIGURATION_AVAILABLE"];
  v16 = MEMORY[0x277D3FAD8];
  v17 = [(MRLocalization *)self->locale localizedStringWithKey:@"RESTART_FINISH_REPAIR" defaultString:@"RESTART_FINISH_REPAIR"];
  v18 = +[SystemHealthUI sharedInstance];
  v19 = [v16 preferenceSpecifierNamed:v17 target:v18 set:0 get:0 detail:0 cell:13 edit:0];

  v20 = historyCopy;
  [v19 setIdentifier:@"PARTSBUTTON"];
  if (self->deviceClass == 1)
  {
    [(SystemHealthUI *)self extractBatterySpecifiers:v11 configurationSpecifiers:v12];
    [(SystemHealthUI *)self extractBackGlassSpecifiers:v11 configurationSpecifiers:v12 caaRepairHistory:caaHistoryCopy rchlHistory:historyCopy];
    [(SystemHealthUI *)self extractEnclosureSpecifiers:v12 caaRepairHistory:caaHistoryCopy rchlHistory:historyCopy];
    [(SystemHealthUI *)self extractMtubSpecifiers:v11 caaRepairHistory:caaHistoryCopy srvp:srvpCopy rchlHistory:historyCopy];
    [(SystemHealthUI *)self extractCameraSpecifiers:v42 componentsInfoSpecifiers:v11 configurationSpecifiers:v12];
  }

  [(SystemHealthUI *)self extractDisplaySpecifiers:v11 configurationSpecifiers:v12];
  [(SystemHealthUI *)self extractBluetoohSpecifiers];
  [(SystemHealthUI *)self extractWifiSpecifiers];
  [(SystemHealthUI *)self extractBasebandSpecifiers:v11];
  [(SystemHealthUI *)self extractNFCSpecifiers:v11];
  [(SystemHealthUI *)self extractUWBSpecifiers:v11];
  [(SystemHealthUI *)self extractAudioSpecifiers];
  if (MGGetBoolAnswer())
  {
    [(SystemHealthUI *)self extractFaceIDSpecifiers:v11 configurationSpecifiers:v12];
  }

  [(SystemHealthUI *)self extractRCameraHWFailureSpecifiers];
  v21 = v43;
  if (self->deviceClass == 3)
  {
    [(SystemHealthUI *)self extractiPadBatterySpecifiers:v11];
    [(SystemHealthUI *)self extractiPadCameraSpecifiers:v42 componentsInfoSpecifiers:v11 configurationSpecifiers:v12 caaRepairHistory:caaHistoryCopy rchlHistory:historyCopy];
    [(SystemHealthUI *)self extractCoverGlassSpecifiers:v12];
    if (MGGetBoolAnswer())
    {
      [(SystemHealthUI *)self extractTouchIDSpecifiers:v11 configurationSpecifiers:v12];
    }

    [(SystemHealthUI *)self extractVolumeButtonSpecifiers:v12];
  }

  if ([v12 count] || objc_msgSend(v11, "count"))
  {
    if ([v12 count])
    {
      [v19 setButtonAction:sel_showActionSheets_];
      if ([(CoreRepairUIUtils *)self->utils isbatteryLevelBelowThreshold])
      {
        [v19 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
        v22 = [(MRLocalization *)self->locale localizedStringWithKey:@"BATTERY_ERROR" defaultString:@"BATTERY_ERROR"];
        v23 = *MEMORY[0x277D3FF88];
        [v15 setProperty:v22 forKey:*MEMORY[0x277D3FF88]];

        if (self->deviceClass == 3)
        {
          v24 = [(MRLocalization *)self->locale localizedStringWithKey:@"BATTERY_ERROR_IPAD" defaultString:@"BATTERY_ERROR_IPAD"];
          [v15 setProperty:v24 forKey:v23];
        }
      }

      [(SystemHealthUI *)self setupPrivacyFooterFor:v15 withPrivacySpecifier:specifierCopy];
      [v43 addObject:v15];
      if ([v12 count] == 1 && (objc_msgSend(v12, "objectAtIndexedSubscript:", 0), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "detailControllerClass"), v25, v26))
      {
        v39 = srvpCopy;
        v27 = [v12 objectAtIndexedSubscript:0];
        [v27 detailControllerClass];
        v28 = objc_opt_new();

        componentName = [v28 componentName];
        [v28 setTitleText:componentName];

        v30 = [(MRLocalization *)self->locale localizedStringWithKey:@"LEARN_MORE_ELLIPSE" defaultString:@"LEARN_MORE_ELLIPSE"];
        v31 = MEMORY[0x277CCACA8];
        informativeText = [v28 informativeText];
        v33 = [v31 stringWithFormat:@"%@ %@", informativeText, v30];
        [v28 setInformativeText:v33];

        [v28 setFooterText:0];
        specifiers = [v28 specifiers];
        v21 = v43;
        if (specifiers)
        {
          [v43 addObjectsFromArray:specifiers];
        }

        srvpCopy = v39;
        v20 = historyCopy;
      }

      else
      {
        v21 = v43;
        [v43 addObjectsFromArray:v12];
      }

      [v21 addObject:v19];
      if (![v11 count])
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (![v11 count])
      {
LABEL_26:
        v35 = [MEMORY[0x277CBEBD0] groupUserDefaultsWithSuiteName:@"com.apple.mobilerepaird"];
        [v35 setBool:1 forKey:@"settingsView"];

        goto LABEL_27;
      }

      [(SystemHealthUI *)self setupPrivacyFooterFor:setupGroupSpecifer withPrivacySpecifier:specifierCopy];
    }

    [v21 addObject:setupGroupSpecifer];
    [v21 addObjectsFromArray:v11];
    goto LABEL_26;
  }

LABEL_27:
  if (self->failedComponentsCount)
  {
    v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"FailedComponentsCount:%d", self->failedComponentsCount];
    [(CRUIAnalytics *)self->analytics sendAsyncAnalyticsForEventIfNeeded:v36 moduleName:@"FailedComponentsCount"];
  }

  return v21;
}

- (void)updateSpecifiersWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_247875000, v5, OS_LOG_TYPE_DEFAULT, "updateSpecifiersWithCompletionHandler", buf, 2u);
  }

  objc_initWeak(buf, self);
  v6 = dispatch_get_global_queue(21, 0);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__SystemHealthUI_updateSpecifiersWithCompletionHandler___block_invoke;
  v8[3] = &unk_278EB1E18;
  objc_copyWeak(&v10, buf);
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_async(v6, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __56__SystemHealthUI_updateSpecifiersWithCompletionHandler___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained reloadCurrentSystemHealthInfoSpecifiers];
  v4 = handleForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&dword_247875000, v4, OS_LOG_TYPE_DEFAULT, "Got new specifiers: %@", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SystemHealthUI_updateSpecifiersWithCompletionHandler___block_invoke_354;
  block[3] = &unk_278EB1DF0;
  objc_copyWeak(&v10, (a1 + 40));
  v8 = v3;
  v9 = *(a1 + 32);
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v10);
  v6 = *MEMORY[0x277D85DE8];
}

void __56__SystemHealthUI_updateSpecifiersWithCompletionHandler___block_invoke_354(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [a1[4] count];
  v4 = [WeakRetained[8] count];
  v5 = [WeakRetained parentViewController];
  v6 = [v5 specifierDataSource];

  v7 = [WeakRetained findSpecifierToInsertAfter:v6];
  if (v7)
  {
    if (v6)
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __56__SystemHealthUI_updateSpecifiersWithCompletionHandler___block_invoke_2;
      v17[3] = &unk_278EB1DC8;
      v17[4] = WeakRetained;
      v18 = a1[4];
      v19 = v7;
      v20 = a1[5];
      [v6 performUpdatesAnimated:v3 != v4 usingBlock:v17];
    }

    else
    {
      v9 = MEMORY[0x277D3FAE8];
      v10 = [WeakRetained parentViewController];
      v11 = [v10 specifiers];
      v12 = [v9 updatesWithSpecifiers:v11];

      [WeakRetained _updateSpecifiers:a1[4] specifierToInsertAfter:v7 withUpdates:v12];
      v13 = [WeakRetained parentViewController];
      [v13 performSpecifierUpdates:v12];

      v14 = handleForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16[0] = 0;
        _os_log_impl(&dword_247875000, v14, OS_LOG_TYPE_DEFAULT, "DONE updateSpecifiersWithCompletionHandler", v16, 2u);
      }

      v15 = a1[5];
      if (v15)
      {
        v15[2]();
      }
    }
  }

  else
  {
    v8 = a1[5];
    if (v8)
    {
      v8[2]();
    }
  }
}

uint64_t __56__SystemHealthUI_updateSpecifiersWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _updateSpecifiers:*(a1 + 40) specifierToInsertAfter:*(a1 + 48) withUpdates:a2];
  v3 = handleForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_247875000, v3, OS_LOG_TYPE_DEFAULT, "DONE updateSpecifiersWithCompletionHandler", v5, 2u);
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)findSpecifierToInsertAfter:(id)after
{
  v22 = *MEMORY[0x277D85DE8];
  afterCopy = after;
  v5 = afterCopy;
  if (!afterCopy)
  {
    parentViewController = [(SystemHealthUI *)self parentViewController];
    specifiers = [parentViewController specifiers];

    if (specifiers)
    {
      goto LABEL_3;
    }

LABEL_11:
    v13 = handleForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SystemHealthUI findSpecifierToInsertAfter:v13];
    }

    v7 = 0;
    goto LABEL_23;
  }

  specifiers = [afterCopy specifiers];
  if (!specifiers)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (![specifiers count])
  {
LABEL_20:
    v7 = 0;
    goto LABEL_21;
  }

  v7 = 0;
  while (1)
  {
    v8 = [specifiers objectAtIndexedSubscript:v7];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_8;
    }

    identifier = [v8 identifier];
    if ([identifier isEqualToString:@"INFORMATION_GROUP"])
    {
      break;
    }

    identifier2 = [v8 identifier];
    v11 = [identifier2 isEqualToString:@"PARTS_AND_SERVICE_GROUP"];

    if (v11)
    {
      goto LABEL_15;
    }

LABEL_8:

    if (++v7 >= [specifiers count])
    {
      goto LABEL_18;
    }
  }

LABEL_15:
  v14 = handleForCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = v8;
    _os_log_impl(&dword_247875000, v14, OS_LOG_TYPE_DEFAULT, "Anchor specifier %@", &v20, 0xCu);
  }

  if (!v7)
  {
    goto LABEL_21;
  }

LABEL_18:
  v15 = v7 - 1;
  v16 = [specifiers objectAtIndexedSubscript:v15];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_20;
  }

  v7 = [specifiers objectAtIndexedSubscript:v15];
LABEL_21:
  v13 = handleForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = v7;
    _os_log_impl(&dword_247875000, v13, OS_LOG_TYPE_DEFAULT, "Insert after %@", &v20, 0xCu);
  }

LABEL_23:

  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)_updateSpecifiers:(id)specifiers specifierToInsertAfter:(id)after withUpdates:(id)updates
{
  v20 = *MEMORY[0x277D85DE8];
  specifiersCopy = specifiers;
  updatesCopy = updates;
  afterCopy = after;
  v11 = handleForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    cachedSpecifiers = self->cachedSpecifiers;
    v16 = 138412546;
    v17 = cachedSpecifiers;
    v18 = 2112;
    v19 = specifiersCopy;
    _os_log_impl(&dword_247875000, v11, OS_LOG_TYPE_DEFAULT, "Updating specifiers: %@ -> %@", &v16, 0x16u);
  }

  [updatesCopy removeSpecifierWithID:@"PARTS_AND_SERVICE_GROUP"];
  [updatesCopy removeSpecifierWithID:@"MAIN_PARTS_AND_SERVICE"];
  [updatesCopy insertContiguousSpecifiers:specifiersCopy afterSpecifier:afterCopy];

  if (specifiersCopy)
  {
    array = specifiersCopy;
  }

  else
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  v14 = self->cachedSpecifiers;
  self->cachedSpecifiers = array;

  v15 = *MEMORY[0x277D85DE8];
}

- (PSListController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

@end