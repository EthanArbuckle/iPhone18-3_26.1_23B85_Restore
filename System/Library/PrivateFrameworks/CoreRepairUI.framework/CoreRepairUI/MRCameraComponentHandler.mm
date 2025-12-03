@interface MRCameraComponentHandler
+ (id)sharedSingleton;
+ (void)handleSUCase;
- (MRCameraComponentHandler)init;
- (id)_init;
@end

@implementation MRCameraComponentHandler

- (MRCameraComponentHandler)init
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
  v18.receiver = self;
  v18.super_class = MRCameraComponentHandler;
  v2 = [(MRBaseComponentHandler *)&v18 init];
  if (v2)
  {
    groupStandardUserDefaults = [MEMORY[0x277CBEBD0] groupStandardUserDefaults];
    -[MRBaseComponentHandler setIsSUCaseForComponent:](v2, "setIsSUCaseForComponent:", [groupStandardUserDefaults BOOLForKey:@"SUcaseForCamera"]);

    [(MRBaseComponentHandler *)v2 setComponentName:@"Camera"];
    [(MRBaseComponentHandler *)v2 setSupportsRepair:1];
    [(MRBaseComponentHandler *)v2 setPopUpNotificationMessage:@"UNABLE_TO_VERIFY_CAMERA_NOTIF_TEXT"];
    [(MRBaseComponentHandler *)v2 setPopUpNotificationTitle:@"IMPORTANT_CAMERA_MESSAGE"];
    [(MRBaseComponentHandler *)v2 setFollowUpInfoMessage:@"UNABLE_TO_VERIFY_CAMERA_MESSAGE"];
    [(MRBaseComponentHandler *)v2 setComponentSUCaseKey:@"SUcaseForCamera"];
    [(MRBaseComponentHandler *)v2 setDisplayNotification:0];
    [(MRBaseComponentHandler *)v2 setDisplayModalPopup:[(MRBaseComponentHandler *)v2 isSUCaseForComponent]^ 1];
    v4 = MEMORY[0x277CBEBC0];
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"prefs:root=General&path=About/MAIN_PARTS_AND_SERVICE/Camera"];
    v6 = [v4 URLWithString:v5];
    [(MRBaseComponentHandler *)v2 setLinkedSensitiveURL:v6];

    [(MRBaseComponentHandler *)v2 setComponentFollowupClientID:@"com.apple.mobilerepair.CameraRepair"];
    [(MRBaseComponentHandler *)v2 setFinishRepairTitle:@"FINISH_CAMERA_REPAIR_TITLE"];
    [(MRBaseComponentHandler *)v2 setFinishRepairMessage:@"FINISH_CAMERA_REPAIR_DESC"];
    componentFollowupClientID = [(MRBaseComponentHandler *)v2 componentFollowupClientID];
    v8 = [componentFollowupClientID stringByAppendingString:@"FINISH_REPAIR"];
    [(MRBaseComponentHandler *)v2 setFinishRepairKey:v8];

    [(MRBaseComponentHandler *)v2 setComponentUnLockCheckCountKey:@"unlockCheckCountForCamera"];
    [(MRBaseComponentHandler *)v2 setComponentRetriggerCountKey:@"retriggerCheckCountForCamera"];
    [(MRBaseComponentHandler *)v2 setComponentLastCheckTimeKey:@"lastCheckTimeForCamera"];
    [(MRBaseComponentHandler *)v2 setComponentHasDisplayedFollowUpKey:@"hasDisplayedFollowupForCamera"];
    [(MRBaseComponentHandler *)v2 setComponentUnlockCheckerActivityName:@"com.apple.mobilerepair.cameraunlockchecker"];
    [(MRBaseComponentHandler *)v2 setComponentId:2];
    [(MRBaseComponentHandler *)v2 setComponentNtwkActivityName:@"com.apple.mobilerepair.cameranotifyServer"];
    [(MRBaseComponentHandler *)v2 setComponentHasNotifiedServerKey:@"hasNotifiedServerForCamera"];
    [(MRBaseComponentHandler *)v2 setNotifyServer:0];
    [(MRBaseComponentHandler *)v2 setComponentDataCollectionPresentedKey:@"dataCollectionNoticePresentedForPartsAndService"];
    [(MRBaseComponentHandler *)v2 setComponentFirstUIDisplayedTimeKey:@"firstUIDisplayedTimeForCamera"];
    [(MRBaseComponentHandler *)v2 setLastKnownComponentIdentifierKey:@"lastKnownIDForCamera"];
    v9 = MEMORY[0x277D00FD0];
    componentName = [(MRBaseComponentHandler *)v2 componentName];
    v11 = [v9 copySealingManifestDataInstanceForComponent:componentName];
    [(MRBaseComponentHandler *)v2 setLastKnownComponentIdentifierValue:v11];

    v12 = objc_opt_new();
    [(MRBaseComponentHandler *)v2 setComponentAuthHandler:v12];

    componentFollowupClientID2 = [(MRBaseComponentHandler *)v2 componentFollowupClientID];
    v14 = [@"/var/mobile/Library/Preferences/" stringByAppendingString:componentFollowupClientID2];
    v15 = [v14 stringByAppendingString:@".plist"];
    [(MRBaseComponentHandler *)v2 setStateFilePath:v15];

    [(MRBaseComponentHandler *)v2 setComponentForceKey:@"ForceCameraStatus"];
    if ([(MRBaseComponentHandler *)v2 deviceClass]== 3)
    {
      [(MRBaseComponentHandler *)v2 setFinishRepairMessage:@"FINISH_CAMERA_REPAIR_DESC_IPAD"];
      v16 = objc_opt_new();
      [(MRBaseComponentHandler *)v2 setComponentAuthHandler:v16];
    }
  }

  return v2;
}

+ (void)handleSUCase
{
  v3 = MGCopyAnswer();
  intValue = [v3 intValue];

  if ([MEMORY[0x277D00FC0] supportRepair:1026])
  {
    v5 = 0x277D00FB0;
    if (intValue != 1)
    {
      v5 = 0x277D00FB8;
    }

    v6 = *v5;
    v7 = objc_opt_new();
    [self handleComponentSUCase:@"hasDisplayedFollowupForCamera" lastAUthCheckBuildVersion:@"LastCameraAuthCompleteBuildVersion" followUpItemID:@"com.apple.mobilerepair.CameraRepair" queryString:@"Camera" suCasekey:@"SUcaseForCamera" startBuildVersion:@"18D1" componentAuth:v7];
  }
}

+ (id)sharedSingleton
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__MRCameraComponentHandler_sharedSingleton__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedSingleton_once_13 != -1)
  {
    dispatch_once(&sharedSingleton_once_13, block);
  }

  v2 = sharedSingleton_sharedInstance_13;

  return v2;
}

uint64_t __43__MRCameraComponentHandler_sharedSingleton__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D00FC0] supportRepair:1026];
  if (result)
  {
    [*(a1 + 32) handleSUCase];
    sharedSingleton_sharedInstance_13 = [objc_alloc(*(a1 + 32)) _init];

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

@end