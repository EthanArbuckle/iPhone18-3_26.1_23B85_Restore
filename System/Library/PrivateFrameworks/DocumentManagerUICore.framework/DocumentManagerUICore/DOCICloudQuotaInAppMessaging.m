@interface DOCICloudQuotaInAppMessaging
+ (DOCICloudQuotaInAppMessaging)shared;
+ (NSString)currentInAppMessageChangedNotification;
- (DOCICloudQuotaInAppMessaging)init;
- (id)fetchMessageFromNotification:(id)a3;
- (void)startObservingUpdates;
- (void)stopObservingUpdates;
@end

@implementation DOCICloudQuotaInAppMessaging

+ (DOCICloudQuotaInAppMessaging)shared
{
  if (shared_onceToken != -1)
  {
    +[DOCICloudQuotaInAppMessaging shared];
  }

  v3 = shared_shared;

  return v3;
}

uint64_t __38__DOCICloudQuotaInAppMessaging_shared__block_invoke()
{
  shared_shared = objc_alloc_init(DOCICloudQuotaInAppMessaging);

  return MEMORY[0x2821F96F8]();
}

+ (NSString)currentInAppMessageChangedNotification
{
  v3 = currentInAppMessageChangedNotification_key;
  if (!currentInAppMessageChangedNotification_key)
  {
    Helper_x8__ICQCurrentInAppMessageChangedNotification = gotLoadHelper_x8__ICQCurrentInAppMessageChangedNotification(v2);
    v6 = [**(v5 + 1120) copy];
    v7 = currentInAppMessageChangedNotification_key;
    currentInAppMessageChangedNotification_key = v6;

    v3 = currentInAppMessageChangedNotification_key;
  }

  return v3;
}

- (DOCICloudQuotaInAppMessaging)init
{
  v9.receiver = self;
  v9.super_class = DOCICloudQuotaInAppMessaging;
  v2 = [(DOCICloudQuotaInAppMessaging *)&v9 init];
  Helper_x8__OBJC_CLASS___ICQInAppMessaging = gotLoadHelper_x8__OBJC_CLASS___ICQInAppMessaging(v3);
  v6 = [*(v5 + 1160) shared];
  messaging = v2->_messaging;
  v2->_messaging = v6;

  return v2;
}

- (void)startObservingUpdates
{
  v2 = [(DOCICloudQuotaInAppMessaging *)self messaging];
  [v2 observeUpdates];
}

- (void)stopObservingUpdates
{
  v2 = [(DOCICloudQuotaInAppMessaging *)self messaging];
  [v2 stopObservingUpdates];
}

- (id)fetchMessageFromNotification:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [a3 userInfo];
  Helper_x8__ICQInAppMessageKey = gotLoadHelper_x8__ICQInAppMessageKey(v4);
  v8 = [v7 objectForKeyedSubscript:{**(v6 + 1128), Helper_x8__ICQInAppMessageKey}];

  if (v8)
  {
    v9 = [[DOCICloudQuotaInAppMessage alloc] initWithICQInAppMessage:v8];
    if ([(DOCICloudQuotaInAppMessage *)v9 contentType])
    {
      v10 = v9;
    }

    else
    {
      v11 = MEMORY[0x277D062B8];
      v12 = *MEMORY[0x277D062B8];
      if (!*MEMORY[0x277D062B8])
      {
        DOCInitLogging();
        v12 = *v11;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
        v14 = [v8 contentType];
        v15 = [v8 title];
        v18[0] = 67109378;
        v18[1] = v14;
        v19 = 2114;
        v20 = v15;
        _os_log_impl(&dword_249CE0000, v13, OS_LOG_TYPE_DEFAULT, "DOCICQ: Ignoring unknown content type(%d) for message %{public}@", v18, 0x12u);
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v10;
}

@end