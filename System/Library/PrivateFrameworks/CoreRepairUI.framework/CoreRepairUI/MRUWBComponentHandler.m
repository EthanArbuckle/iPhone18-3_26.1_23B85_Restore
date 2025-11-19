@interface MRUWBComponentHandler
+ (id)sharedSingleton;
+ (void)handleSUCase;
- (MRUWBComponentHandler)init;
- (id)_init;
@end

@implementation MRUWBComponentHandler

- (MRUWBComponentHandler)init
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
  v8.receiver = self;
  v8.super_class = MRUWBComponentHandler;
  v2 = [(MRSystemHealthComponentHandler *)&v8 initWithComponentName:@"UWB"];
  v3 = v2;
  if (v2)
  {
    [(MRBaseComponentHandler *)v2 setComponentName:@"UWB"];
    v4 = objc_opt_new();
    [(MRBaseComponentHandler *)v3 setComponentAuthHandler:v4];

    [(MRBaseComponentHandler *)v3 setComponentId:7];
    [(MRBaseComponentHandler *)v3 setPopUpNotificationTitle:@"UWB_FOLLOWUP_TITLE"];
    if ([(MRBaseComponentHandler *)v3 deviceClass]== 3)
    {
      [(MRBaseComponentHandler *)v3 setFollowUpInfoMessage:@"UWB_FOLLOWUP_INFO_IPAD"];
      [(MRBaseComponentHandler *)v3 setPopUpNotificationMessage:@"UWB_POPUP_INFO_IPAD"];
      v5 = objc_opt_new();
      v6 = [v5 isSupportedIPad];

      if ((v6 & 1) == 0)
      {
        [(MRBaseComponentHandler *)v3 setUnlockCheckActivityRequired:0];
        [(MRBaseComponentHandler *)v3 setDisplayNotification:0];
        [(MRBaseComponentHandler *)v3 setDisplayModalPopup:0];
        [(MRBaseComponentHandler *)v3 setDisplayFollowup:0];
      }
    }

    else
    {
      [(MRBaseComponentHandler *)v3 setFollowUpInfoMessage:@"UWB_FOLLOWUP_INFO"];
      [(MRBaseComponentHandler *)v3 setPopUpNotificationMessage:@"UWB_POPUP_INFO"];
    }
  }

  return v3;
}

+ (id)sharedSingleton
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__MRUWBComponentHandler_sharedSingleton__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedSingleton_once != -1)
  {
    dispatch_once(&sharedSingleton_once, block);
  }

  v2 = sharedSingleton_sharedInstance;

  return v2;
}

uint64_t __40__MRUWBComponentHandler_sharedSingleton__block_invoke(uint64_t a1)
{
  [*(a1 + 32) handleSUCase];
  sharedSingleton_sharedInstance = [objc_alloc(*(a1 + 32)) _init];

  return MEMORY[0x2821F96F8]();
}

+ (void)handleSUCase
{
  v3 = objc_opt_new();
  [a1 handleComponentSUCase:@"hasDisplayedFollowupForSHCUWB" lastAUthCheckBuildVersion:@"LastUWBAuthCompleteBuildVersion" followUpItemID:@"com.apple.mobilerepair.UWBRepair" queryString:@"UWB" suCasekey:@"SUcaseForUWB" startBuildVersion:@"19F1" componentAuth:v3];
}

@end