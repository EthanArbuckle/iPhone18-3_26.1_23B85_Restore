@interface MRDisplayComponentHandler
+ (id)sharedSingleton;
+ (void)handleSUCase;
- (MRDisplayComponentHandler)init;
- (id)_init;
@end

@implementation MRDisplayComponentHandler

- (MRDisplayComponentHandler)init
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
  v22.receiver = self;
  v22.super_class = MRDisplayComponentHandler;
  v2 = [(MRBaseComponentHandler *)&v22 init];
  if (v2)
  {
    groupStandardUserDefaults = [MEMORY[0x277CBEBD0] groupStandardUserDefaults];
    -[MRBaseComponentHandler setIsSUCaseForComponent:](v2, "setIsSUCaseForComponent:", [groupStandardUserDefaults BOOLForKey:@"SUcaseForDisplay"]);

    [(MRBaseComponentHandler *)v2 setComponentName:@"TouchController"];
    [(MRBaseComponentHandler *)v2 setComponentFollowupClientID:@"com.apple.mobilerepair.DisplayRepair"];
    [(MRBaseComponentHandler *)v2 setSupportsRepair:1];
    [(MRBaseComponentHandler *)v2 setPopUpNotificationMessage:@"UNABLE_TO_VERIFY_DISPLAY_NOTIF_TEXT"];
    [(MRBaseComponentHandler *)v2 setPopUpNotificationTitle:@"IMPORTANT_DISPLAY_MESSAGE"];
    [(MRBaseComponentHandler *)v2 setFollowUpInfoMessage:@"UNABLE_TO_VERIFY_DISPLAY_MESSAGE"];
    [(MRBaseComponentHandler *)v2 setComponentSUCaseKey:@"SUcaseForDisplay"];
    [(MRBaseComponentHandler *)v2 setDisplayNotification:0];
    [(MRBaseComponentHandler *)v2 setDisplayModalPopup:[(MRBaseComponentHandler *)v2 isSUCaseForComponent]^ 1];
    v4 = MEMORY[0x277CBEBC0];
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"prefs:root=General&path=About/MAIN_PARTS_AND_SERVICE/TouchController"];
    v6 = [v4 URLWithString:v5];
    [(MRBaseComponentHandler *)v2 setLinkedSensitiveURL:v6];

    [(MRBaseComponentHandler *)v2 setFinishRepairTitle:@"FINISH_DISPLAY_REPAIR_TITLE"];
    [(MRBaseComponentHandler *)v2 setFinishRepairMessage:@"FINISH_DISPLAY_REPAIR_DESC"];
    componentFollowupClientID = [(MRBaseComponentHandler *)v2 componentFollowupClientID];
    v8 = [componentFollowupClientID stringByAppendingString:@"FINISH_REPAIR"];
    [(MRBaseComponentHandler *)v2 setFinishRepairKey:v8];

    [(MRBaseComponentHandler *)v2 setComponentUnLockCheckCountKey:@"unlockCheckCountForDisplay"];
    [(MRBaseComponentHandler *)v2 setComponentRetriggerCountKey:@"retriggerCheckCountForDisplay"];
    [(MRBaseComponentHandler *)v2 setComponentLastCheckTimeKey:@"lastCheckTimeForDisplay"];
    [(MRBaseComponentHandler *)v2 setComponentHasDisplayedFollowUpKey:@"hasDisplayedFollowupForDisplay"];
    [(MRBaseComponentHandler *)v2 setComponentUnlockCheckerActivityName:@"com.apple.mobilerepair.displayunlockchecker"];
    [(MRBaseComponentHandler *)v2 setComponentNtwkActivityName:@"com.apple.mobilerepair.displaynotifyServer"];
    [(MRBaseComponentHandler *)v2 setComponentId:1];
    [(MRBaseComponentHandler *)v2 setComponentHasNotifiedServerKey:@"hasNotifiedServerForDisplay"];
    v9 = objc_opt_new();
    -[MRBaseComponentHandler setNotifyServer:](v2, "setNotifyServer:", [v9 deviceSupportsRepairBootIntent] ^ 1);

    [(MRBaseComponentHandler *)v2 setComponentNtwkActivityName:@"com.apple.mobilerepair.displaynotifyServer"];
    [(MRBaseComponentHandler *)v2 setComponentDataCollectionPresentedKey:@"dataCollectionNoticePresentedForPartsAndService"];
    [(MRBaseComponentHandler *)v2 setComponentFirstUIDisplayedTimeKey:@"firstUIDisplayedTimeForDisplay"];
    [(MRBaseComponentHandler *)v2 setLastKnownComponentIdentifierKey:@"lastKnownIDForDisplay"];
    v10 = MEMORY[0x277D00FD0];
    componentName = [(MRBaseComponentHandler *)v2 componentName];
    v12 = [v10 copySealingManifestDataInstanceForComponent:componentName];
    [(MRBaseComponentHandler *)v2 setLastKnownComponentIdentifierValue:v12];

    v13 = objc_opt_new();
    [(MRBaseComponentHandler *)v2 setComponentAuthHandler:v13];

    componentFollowupClientID2 = [(MRBaseComponentHandler *)v2 componentFollowupClientID];
    v15 = [@"/var/mobile/Library/Preferences/" stringByAppendingString:componentFollowupClientID2];
    v16 = [v15 stringByAppendingString:@".plist"];
    [(MRBaseComponentHandler *)v2 setStateFilePath:v16];

    [(MRBaseComponentHandler *)v2 setComponentForceKey:@"ForceDisplayStatus"];
    v21.receiver = v2;
    v21.super_class = MRDisplayComponentHandler;
    if ([(MRBaseComponentHandler *)&v21 deviceClass]== 3)
    {
      [(MRBaseComponentHandler *)v2 setFinishRepairMessage:@"FINISH_DISPLAY_REPAIR_DESC_IPAD"];
      [(MRBaseComponentHandler *)v2 setFollowUpInfoMessage:@"UNABLE_TO_VERIFY_DISPLAY_MESSAGE_IPAD"];
      [(MRBaseComponentHandler *)v2 setPopUpNotificationMessage:@"UNABLE_TO_VERIFY_DISPLAY_NOTIF_TEXT"];
      v17 = objc_opt_new();
      isSupportedIPad = [v17 isSupportedIPad];

      if ((isSupportedIPad & 1) == 0)
      {
        [(MRBaseComponentHandler *)v2 setUnlockCheckActivityRequired:0];
        [(MRBaseComponentHandler *)v2 setDisplayNotification:0];
        [(MRBaseComponentHandler *)v2 setDisplayModalPopup:0];
        [(MRBaseComponentHandler *)v2 setDisplayFollowup:0];
      }
    }

    else
    {
      v20.receiver = v2;
      v20.super_class = MRDisplayComponentHandler;
      [(MRBaseComponentHandler *)&v20 deviceClass];
    }
  }

  return v2;
}

+ (void)handleSUCase
{
  if ([MEMORY[0x277D00FC0] isStrongComponent:1025])
  {
    v3 = objc_opt_new();
    [self handleComponentSUCase:@"hasDisplayedFollowupForDisplay" lastAUthCheckBuildVersion:@"LastDisplayAuthCompleteBuildVersion" followUpItemID:@"com.apple.mobilerepair.DisplayRepair" queryString:@"TouchController" suCasekey:@"SUcaseForDisplay" startBuildVersion:@"17A800" componentAuth:v3];
  }
}

+ (id)sharedSingleton
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__MRDisplayComponentHandler_sharedSingleton__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedSingleton_once_8 != -1)
  {
    dispatch_once(&sharedSingleton_once_8, block);
  }

  v2 = sharedSingleton_sharedInstance_8;

  return v2;
}

uint64_t __44__MRDisplayComponentHandler_sharedSingleton__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D00FC0] supportRepair:1025];
  if (result)
  {
    [*(a1 + 32) handleSUCase];
    sharedSingleton_sharedInstance_8 = [objc_alloc(*(a1 + 32)) _init];

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

@end