@interface MRBatteryComponentHandler
+ (id)sharedSingleton;
+ (void)handleSUCase;
- (MRBatteryComponentHandler)init;
- (id)_init;
@end

@implementation MRBatteryComponentHandler

- (MRBatteryComponentHandler)init
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(sel_sharedSingleton);
  v9 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"Use +[%@ %@] instead of -%@.", v7, v8, v9}];

  return 0;
}

- (id)_init
{
  v25.receiver = self;
  v25.super_class = MRBatteryComponentHandler;
  v2 = [(MRBaseComponentHandler *)&v25 init];
  v3 = v2;
  if (v2)
  {
    [(MRBaseComponentHandler *)v2 setComponentName:@"Battery"];
    [(MRBaseComponentHandler *)v3 setComponentFollowupClientID:@"com.apple.mobilerepair.BatteryRepair"];
    groupStandardUserDefaults = [MEMORY[0x277CBEBD0] groupStandardUserDefaults];
    -[MRBaseComponentHandler setIsSUCaseForComponent:](v3, "setIsSUCaseForComponent:", [groupStandardUserDefaults BOOLForKey:@"SUcaseForBattery"]);

    [(MRBaseComponentHandler *)v3 setSupportsRepair:1];
    [(MRBaseComponentHandler *)v3 setPopUpNotificationMessage:@"UNABLE_TO_VERIFY_BATTERY_NOTIF_TEXT"];
    [(MRBaseComponentHandler *)v3 setPopUpNotificationTitle:@"IMPORTANT_BATTERY_MESSAGE"];
    [(MRBaseComponentHandler *)v3 setFollowUpInfoMessage:@"UNABLE_TO_VERIFY_BATTERY_MESSAGE"];
    [(MRBaseComponentHandler *)v3 setComponentSUCaseKey:@"SUcaseForBattery"];
    v5 = objc_opt_new();
    -[MRBaseComponentHandler setNotifyServer:](v3, "setNotifyServer:", [v5 deviceSupportsRepairBootIntent] ^ 1);

    [(MRBaseComponentHandler *)v3 setFinishRepairTitle:@"FINISH_BATTERY_REPAIR_TITLE"];
    [(MRBaseComponentHandler *)v3 setFinishRepairMessage:@"FINISH_BATTERY_REPAIR_DESC"];
    componentFollowupClientID = [(MRBaseComponentHandler *)v3 componentFollowupClientID];
    v7 = [componentFollowupClientID stringByAppendingString:@"FINISH_REPAIR"];
    [(MRBaseComponentHandler *)v3 setFinishRepairKey:v7];

    [(MRBaseComponentHandler *)v3 setDisplayNotification:0];
    [(MRBaseComponentHandler *)v3 setDisplayModalPopup:[(MRBaseComponentHandler *)v3 isSUCaseForComponent]^ 1];
    v8 = MEMORY[0x277CBEBC0];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"prefs:root=General&path=About/MAIN_PARTS_AND_SERVICE/Battery"];
    v10 = [v8 URLWithString:v9];
    [(MRBaseComponentHandler *)v3 setLinkedSensitiveURL:v10];

    [(MRBaseComponentHandler *)v3 setComponentUnLockCheckCountKey:@"unlockCheckCountForBattery"];
    [(MRBaseComponentHandler *)v3 setComponentRetriggerCountKey:@"retriggerCheckCountForBattery"];
    [(MRBaseComponentHandler *)v3 setComponentLastCheckTimeKey:@"lastCheckTimeForBattery"];
    [(MRBaseComponentHandler *)v3 setComponentHasDisplayedFollowUpKey:@"hasDisplayedFollowupForBattery"];
    [(MRBaseComponentHandler *)v3 setComponentHasNotifiedServerKey:@"hasNotifiedServerForBattery"];
    [(MRBaseComponentHandler *)v3 setComponentUnlockCheckerActivityName:@"com.apple.mobilerepair.batteryunlockchecker"];
    [(MRBaseComponentHandler *)v3 setComponentNtwkActivityName:@"com.apple.mobilerepair.batterynotifyserver"];
    [(MRBaseComponentHandler *)v3 setComponentId:0];
    [(MRBaseComponentHandler *)v3 setComponentDataCollectionPresentedKey:@"dataCollectionNoticePresentedForPartsAndService"];
    [(MRBaseComponentHandler *)v3 setComponentFirstUIDisplayedTimeKey:@"firstUIDisplayedTimeForBattery"];
    [(MRBaseComponentHandler *)v3 setLastKnownComponentIdentifierKey:@"lastKnownIDForBattery"];
    v11 = MEMORY[0x277D00FD0];
    componentName = [(MRBaseComponentHandler *)v3 componentName];
    v13 = [v11 copySealingManifestDataInstanceForComponent:componentName];
    [(MRBaseComponentHandler *)v3 setLastKnownComponentIdentifierValue:v13];

    v14 = objc_opt_new();
    [(MRBaseComponentHandler *)v3 setComponentAuthHandler:v14];

    groupStandardUserDefaults2 = [MEMORY[0x277CBEBD0] groupStandardUserDefaults];
    v16 = [groupStandardUserDefaults2 BOOLForKey:@"overrideDisableUIForBattery"];

    componentFollowupClientID2 = [(MRBaseComponentHandler *)v3 componentFollowupClientID];
    v18 = [@"/var/mobile/Library/Preferences/" stringByAppendingString:componentFollowupClientID2];
    v19 = [v18 stringByAppendingString:@".plist"];
    [(MRBaseComponentHandler *)v3 setStateFilePath:v19];

    [(MRBaseComponentHandler *)v3 setComponentForceKey:@"ForceBatteryStatus"];
    if (MGGetProductType() == 2159747553)
    {
      v20 = +[(MRBaseComponentHandler *)MRBatteryComponentHandler];
      v21 = [v20 containsString:@"EVT"];

      if (!(v16 & 1 | ((v21 & 1) == 0)))
      {
        v22 = handleForCategory(0);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *v24 = 0;
          _os_log_impl(&dword_247875000, v22, OS_LOG_TYPE_DEFAULT, "Disabling UI for D79 EVT", v24, 2u);
        }

        [(MRBaseComponentHandler *)v3 setDisableUIForComponent:1];
      }
    }
  }

  return v3;
}

+ (void)handleSUCase
{
  if ([MEMORY[0x277D00FC0] supportRepair:1024])
  {
    v3 = objc_opt_new();
    [self handleComponentSUCase:@"hasDisplayedFollowupForBattery" lastAUthCheckBuildVersion:@"LastBatteryAuthCompleteBuildVersion" followUpItemID:@"com.apple.mobilerepair.BatteryRepair" queryString:@"Battery" suCasekey:@"SUcaseForBattery" startBuildVersion:@"17A800" componentAuth:v3];
  }
}

+ (id)sharedSingleton
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__MRBatteryComponentHandler_sharedSingleton__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedSingleton_once_1 != -1)
  {
    dispatch_once(&sharedSingleton_once_1, block);
  }

  v2 = sharedSingleton_sharedInstance_1;

  return v2;
}

uint64_t __44__MRBatteryComponentHandler_sharedSingleton__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D00FC0] supportRepair:1024];
  if (result)
  {
    [*(a1 + 32) handleSUCase];
    sharedSingleton_sharedInstance_1 = [objc_alloc(*(a1 + 32)) _init];

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

@end