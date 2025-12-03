@interface MRAudioComponentHandler
+ (id)sharedSingleton;
- (MRAudioComponentHandler)init;
- (id)_init;
@end

@implementation MRAudioComponentHandler

- (MRAudioComponentHandler)init
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
  v6.receiver = self;
  v6.super_class = MRAudioComponentHandler;
  v2 = [(MRSystemHealthComponentHandler *)&v6 initWithComponentName:@"Audio"];
  v3 = v2;
  if (v2)
  {
    [(MRBaseComponentHandler *)v2 setComponentName:@"Audio"];
    v4 = objc_opt_new();
    [(MRBaseComponentHandler *)v3 setComponentAuthHandler:v4];

    [(MRBaseComponentHandler *)v3 setComponentId:8];
    [(MRBaseComponentHandler *)v3 setPopUpNotificationTitle:@"SPEAKER_FOLLOWUP_TITLE"];
    [(MRBaseComponentHandler *)v3 setFollowUpInfoMessage:@"AUDIO_FOLLOWUP_INFO"];
    [(MRBaseComponentHandler *)v3 setPopUpNotificationMessage:@"AUDIO_POPUP_INFO"];
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
  block[2] = __42__MRAudioComponentHandler_sharedSingleton__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedSingleton_once_0 != -1)
  {
    dispatch_once(&sharedSingleton_once_0, block);
  }

  v2 = sharedSingleton_sharedInstance_0;

  return v2;
}

uint64_t __42__MRAudioComponentHandler_sharedSingleton__block_invoke(uint64_t a1)
{
  sharedSingleton_sharedInstance_0 = [objc_alloc(*(a1 + 32)) _init];

  return MEMORY[0x2821F96F8]();
}

@end