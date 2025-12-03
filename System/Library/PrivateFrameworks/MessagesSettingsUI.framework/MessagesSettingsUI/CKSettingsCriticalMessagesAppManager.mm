@interface CKSettingsCriticalMessagesAppManager
- (CKSettingsCriticalMessagesAppManager)init;
- (id)criticalMessagesAppForBundleID:(id)d;
- (id)criticalMessagesApps;
- (void)setActive:(BOOL)active forPhoneNumber:(id)number inAppForBundle:(id)bundle;
@end

@implementation CKSettingsCriticalMessagesAppManager

- (CKSettingsCriticalMessagesAppManager)init
{
  v37 = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = CKSettingsCriticalMessagesAppManager;
  v21 = [(CKSettingsCriticalMessagesAppManager *)&v34 init];
  if (v21)
  {
    appBundleIDs = [MEMORY[0x277D1A8C8] appBundleIDs];
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(CKSettingsCriticalMessagesAppManager *)v21 setAppList:v3];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = appBundleIDs;
    v23 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v23)
    {
      v22 = *v31;
      do
      {
        v4 = 0;
        do
        {
          if (*v31 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v30 + 1) + 8 * v4);
          v25 = v4;
          v5 = [MEMORY[0x277D1A8C8] recipientsForBundleID:?];
          v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          allKeys = [v5 allKeys];
          v8 = [allKeys countByEnumeratingWithState:&v26 objects:v35 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v27;
            do
            {
              for (i = 0; i != v9; ++i)
              {
                if (*v27 != v10)
                {
                  objc_enumerationMutation(allKeys);
                }

                v12 = *(*(&v26 + 1) + 8 * i);
                v13 = [v5 objectForKey:v12];
                intValue = [v13 intValue];

                v15 = [[CKSettingsCriticalMessagesAppRecipient alloc] initWithRecipient:v12 isActive:intValue == 2];
                if (v15)
                {
                  [v6 addObject:v15];
                }
              }

              v9 = [allKeys countByEnumeratingWithState:&v26 objects:v35 count:16];
            }

            while (v9);
          }

          v16 = [[CKSettingsCriticalMessagesApp alloc] initWithBundleID:v24 recipients:v6];
          if (v16)
          {
            appList = [(CKSettingsCriticalMessagesAppManager *)v21 appList];
            [appList addObject:v16];
          }

          v4 = v25 + 1;
        }

        while (v25 + 1 != v23);
        v23 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v23);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v21;
}

- (id)criticalMessagesApps
{
  v2 = [(NSMutableArray *)self->_appList copy];

  return v2;
}

- (id)criticalMessagesAppForBundleID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  criticalMessagesApps = [(CKSettingsCriticalMessagesAppManager *)self criticalMessagesApps];
  v6 = [criticalMessagesApps countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(criticalMessagesApps);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        bundleID = [v9 bundleID];
        v11 = [bundleID isEqualToString:dCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [criticalMessagesApps countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)setActive:(BOOL)active forPhoneNumber:(id)number inAppForBundle:(id)bundle
{
  activeCopy = active;
  v44 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  bundleCopy = bundle;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v10 = self->_appList;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v39;
    v32 = v10;
    v33 = bundleCopy;
    v31 = activeCopy;
    v30 = *v39;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v39 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v38 + 1) + 8 * i);
        bundleID = [v15 bundleID];
        v17 = [bundleID isEqualToString:bundleCopy];

        if (v17)
        {
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          recipients = [v15 recipients];
          v19 = [recipients countByEnumeratingWithState:&v34 objects:v42 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v35;
            while (2)
            {
              for (j = 0; j != v20; ++j)
              {
                if (*v35 != v21)
                {
                  objc_enumerationMutation(recipients);
                }

                v23 = *(*(&v34 + 1) + 8 * j);
                number = [v23 number];
                v25 = [numberCopy isEqual:number];

                if (v25)
                {
                  if ([v23 isActive] != v31)
                  {
                    [v23 setActive:v31];
                    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
                    [defaultCenter postNotificationName:@"CKSettingsCriticalMessagesAppsChangedNotification" object:0];
                  }

                  v27 = MEMORY[0x277D1A8C8];
                  getIMRecipient = [v23 getIMRecipient];
                  bundleCopy = v33;
                  [v27 toggleEnablement:v31 forRecipient:getIMRecipient inAppBundleID:v33];

                  v10 = v32;
                  goto LABEL_22;
                }
              }

              v20 = [recipients countByEnumeratingWithState:&v34 objects:v42 count:16];
              if (v20)
              {
                continue;
              }

              break;
            }
          }

          v10 = v32;
          bundleCopy = v33;
          v13 = v30;
        }
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v12);
  }

LABEL_22:

  v29 = *MEMORY[0x277D85DE8];
}

@end