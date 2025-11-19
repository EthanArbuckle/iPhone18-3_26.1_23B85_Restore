@interface MRBackGlassComponentHandler
+ (id)sharedSingleton;
- (id)_init;
@end

@implementation MRBackGlassComponentHandler

- (id)_init
{
  v6.receiver = self;
  v6.super_class = MRBackGlassComponentHandler;
  v2 = [(MRSystemHealthComponentHandler *)&v6 initWithComponentName:@"BackGlass"];
  v3 = v2;
  if (v2)
  {
    [(MRBaseComponentHandler *)v2 setComponentName:@"BackGlass"];
    v4 = objc_opt_new();
    [(MRBaseComponentHandler *)v3 setComponentAuthHandler:v4];

    [(MRBaseComponentHandler *)v3 setComponentId:13];
    [(MRBaseComponentHandler *)v3 setSupportsRepair:1];
    [(MRBaseComponentHandler *)v3 setFinishRepairTitle:@"FINISH_BG_REPAIR_TITLE"];
    [(MRBaseComponentHandler *)v3 setFinishRepairMessage:@"FINISH_BG_REPAIR_DESC"];
    [(MRBaseComponentHandler *)v3 setPopUpNotificationTitle:@"BG_FOLLOWUP_TITLE"];
    [(MRBaseComponentHandler *)v3 setFollowUpInfoMessage:@"BG_FOLLOWUP_INFO"];
    [(MRBaseComponentHandler *)v3 setPopUpNotificationMessage:@"BG_POPUP_INFO"];
    [(MRBaseComponentHandler *)v3 setComponentForceKey:@"ForceBackGlassStatus"];
    [(MRBaseComponentHandler *)v3 setUnlockCheckActivityRequired:1];
  }

  return v3;
}

+ (id)sharedSingleton
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__MRBackGlassComponentHandler_sharedSingleton__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedSingleton_once_9 != -1)
  {
    dispatch_once(&sharedSingleton_once_9, block);
  }

  v2 = sharedSingleton_sharedInstance_9;

  return v2;
}

uint64_t __46__MRBackGlassComponentHandler_sharedSingleton__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D00FC0] supportRepair:1030];
  if (result)
  {
    [*(a1 + 32) handleSUCase];
    sharedSingleton_sharedInstance_9 = [objc_alloc(*(a1 + 32)) _init];

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

@end