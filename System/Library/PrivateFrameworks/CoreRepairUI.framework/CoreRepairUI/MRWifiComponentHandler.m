@interface MRWifiComponentHandler
+ (id)sharedSingleton;
- (MRWifiComponentHandler)init;
- (id)_init;
@end

@implementation MRWifiComponentHandler

- (MRWifiComponentHandler)init
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
  if (MGGetBoolAnswer())
  {
    v17.receiver = self;
    v17.super_class = MRWifiComponentHandler;
    v3 = [(MRSystemHealthComponentHandler *)&v17 initWithComponentName:@"WLAN"];
    v4 = v3;
    if (!v3)
    {
      return v4;
    }

    [(MRBaseComponentHandler *)v3 setComponentName:@"WLAN"];
    v5 = objc_opt_new();
    [(MRBaseComponentHandler *)v4 setComponentAuthHandler:v5];

    [(MRBaseComponentHandler *)v4 setComponentId:4];
    [(MRBaseComponentHandler *)v4 setPopUpNotificationTitle:@"WLAN_FOLLOWUP_TITLE"];
    v6 = [(MRBaseComponentHandler *)v4 deviceClass];
    v7 = v6 == 3;
    if (v6 == 3)
    {
      v8 = @"WLAN_FOLLOWUP_INFO_IPAD";
    }

    else
    {
      v8 = @"WLAN_FOLLOWUP_INFO";
    }

    v9 = @"WLAN_POPUP_INFO";
    v10 = @"WLAN_POPUP_INFO_IPAD";
  }

  else
  {
    v16.receiver = self;
    v16.super_class = MRWifiComponentHandler;
    v11 = [(MRSystemHealthComponentHandler *)&v16 initWithComponentName:@"Wifi"];
    v4 = v11;
    if (!v11)
    {
      return v4;
    }

    [(MRBaseComponentHandler *)v11 setComponentName:@"Wifi"];
    v12 = objc_opt_new();
    [(MRBaseComponentHandler *)v4 setComponentAuthHandler:v12];

    [(MRBaseComponentHandler *)v4 setComponentId:4];
    [(MRBaseComponentHandler *)v4 setPopUpNotificationTitle:@"WIFI_FOLLOWUP_TITLE"];
    v13 = [(MRBaseComponentHandler *)v4 deviceClass];
    v7 = v13 == 3;
    if (v13 == 3)
    {
      v8 = @"WIFI_FOLLOWUP_INFO_IPAD";
    }

    else
    {
      v8 = @"WIFI_FOLLOWUP_INFO";
    }

    v9 = @"WIFI_POPUP_INFO";
    v10 = @"WIFI_POPUP_INFO_IPAD";
  }

  if (v7)
  {
    v14 = v10;
  }

  else
  {
    v14 = v9;
  }

  [(MRBaseComponentHandler *)v4 setFollowUpInfoMessage:v8];
  [(MRBaseComponentHandler *)v4 setPopUpNotificationMessage:v14];
  [(MRBaseComponentHandler *)v4 setUnlockCheckActivityRequired:0];
  [(MRBaseComponentHandler *)v4 setDisplayNotification:0];
  [(MRBaseComponentHandler *)v4 setDisplayModalPopup:0];
  [(MRBaseComponentHandler *)v4 setDisplayFollowup:0];
  return v4;
}

+ (id)sharedSingleton
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__MRWifiComponentHandler_sharedSingleton__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedSingleton_once_3 != -1)
  {
    dispatch_once(&sharedSingleton_once_3, block);
  }

  v2 = sharedSingleton_sharedInstance_3;

  return v2;
}

uint64_t __41__MRWifiComponentHandler_sharedSingleton__block_invoke(uint64_t a1)
{
  sharedSingleton_sharedInstance_3 = [objc_alloc(*(a1 + 32)) _init];

  return MEMORY[0x2821F96F8]();
}

@end