@interface MRBasebandComponentHandler
+ (id)sharedSingleton;
+ (void)handleSUCase;
- (MRBasebandComponentHandler)init;
- (id)_init;
@end

@implementation MRBasebandComponentHandler

- (MRBasebandComponentHandler)init
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
  v9.receiver = self;
  v9.super_class = MRBasebandComponentHandler;
  v2 = [(MRSystemHealthComponentHandler *)&v9 initWithComponentName:@"Baseband"];
  v3 = v2;
  if (v2)
  {
    [(MRBaseComponentHandler *)v2 setComponentName:@"Baseband"];
    v4 = objc_opt_new();
    [(MRBaseComponentHandler *)v3 setComponentAuthHandler:v4];

    [(MRBaseComponentHandler *)v3 setComponentId:5];
    [(MRBaseComponentHandler *)v3 setPopUpNotificationTitle:@"CELLULAR_FOLLOWUP_TITLE"];
    deviceClass = [(MRBaseComponentHandler *)v3 deviceClass];
    if (deviceClass == 3)
    {
      v6 = @"BASEBAND_POPUP_INFO_IPAD";
    }

    else
    {
      v6 = @"BASEBAND_POPUP_INFO";
    }

    if (deviceClass == 3)
    {
      v7 = @"BASEBAND_FOLLOWUP_INFO_IPAD";
    }

    else
    {
      v7 = @"BASEBAND_FOLLOWUP_INFO";
    }

    [(MRBaseComponentHandler *)v3 setPopUpNotificationMessage:v6];
    [(MRBaseComponentHandler *)v3 setFollowUpInfoMessage:v7];
    [(MRBaseComponentHandler *)v3 setUnlockCheckActivityRequired:0];
    [(MRBaseComponentHandler *)v3 setDisplayNotification:0];
    [(MRBaseComponentHandler *)v3 setDisplayModalPopup:0];
    [(MRBaseComponentHandler *)v3 setDisplayFollowup:0];
  }

  return v3;
}

+ (id)sharedSingleton
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__MRBasebandComponentHandler_sharedSingleton__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedSingleton_once_4 != -1)
  {
    dispatch_once(&sharedSingleton_once_4, block);
  }

  v2 = sharedSingleton_sharedInstance_4;

  return v2;
}

uint64_t __45__MRBasebandComponentHandler_sharedSingleton__block_invoke(uint64_t a1)
{
  [*(a1 + 32) handleSUCase];
  sharedSingleton_sharedInstance_4 = [objc_alloc(*(a1 + 32)) _init];

  return MEMORY[0x2821F96F8]();
}

+ (void)handleSUCase
{
  v3 = objc_opt_new();
  [self handleComponentSUCase:@"hasDisplayedFollowupForSHCBaseband" lastAUthCheckBuildVersion:@"LastBasebandAuthCompleteBuildVersion" followUpItemID:@"com.apple.mobilerepair.BasebandRepair" queryString:@"Baseband" suCasekey:@"SUcaseForBaseband" startBuildVersion:@"19F1" componentAuth:v3];
}

@end