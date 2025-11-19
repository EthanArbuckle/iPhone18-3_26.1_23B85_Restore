@interface CKSettingsCriticalMessagesAppManager
- (CKSettingsCriticalMessagesAppManager)init;
- (id)criticalMessagesAppForBundleID:(id)a3;
- (id)criticalMessagesApps;
- (void)setActive:(BOOL)a3 forPhoneNumber:(id)a4 inAppForBundle:(id)a5;
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
    v2 = [MEMORY[0x277D1A8C8] appBundleIDs];
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(CKSettingsCriticalMessagesAppManager *)v21 setAppList:v3];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v2;
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
          v7 = [v5 allKeys];
          v8 = [v7 countByEnumeratingWithState:&v26 objects:v35 count:16];
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
                  objc_enumerationMutation(v7);
                }

                v12 = *(*(&v26 + 1) + 8 * i);
                v13 = [v5 objectForKey:v12];
                v14 = [v13 intValue];

                v15 = [[CKSettingsCriticalMessagesAppRecipient alloc] initWithRecipient:v12 isActive:v14 == 2];
                if (v15)
                {
                  [v6 addObject:v15];
                }
              }

              v9 = [v7 countByEnumeratingWithState:&v26 objects:v35 count:16];
            }

            while (v9);
          }

          v16 = [[CKSettingsCriticalMessagesApp alloc] initWithBundleID:v24 recipients:v6];
          if (v16)
          {
            v17 = [(CKSettingsCriticalMessagesAppManager *)v21 appList];
            [v17 addObject:v16];
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

- (id)criticalMessagesAppForBundleID:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(CKSettingsCriticalMessagesAppManager *)self criticalMessagesApps];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 bundleID];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)setActive:(BOOL)a3 forPhoneNumber:(id)a4 inAppForBundle:(id)a5
{
  v6 = a3;
  v44 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
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
    v33 = v9;
    v31 = v6;
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
        v16 = [v15 bundleID];
        v17 = [v16 isEqualToString:v9];

        if (v17)
        {
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v18 = [v15 recipients];
          v19 = [v18 countByEnumeratingWithState:&v34 objects:v42 count:16];
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
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v34 + 1) + 8 * j);
                v24 = [v23 number];
                v25 = [v8 isEqual:v24];

                if (v25)
                {
                  if ([v23 isActive] != v31)
                  {
                    [v23 setActive:v31];
                    v26 = [MEMORY[0x277CCAB98] defaultCenter];
                    [v26 postNotificationName:@"CKSettingsCriticalMessagesAppsChangedNotification" object:0];
                  }

                  v27 = MEMORY[0x277D1A8C8];
                  v28 = [v23 getIMRecipient];
                  v9 = v33;
                  [v27 toggleEnablement:v31 forRecipient:v28 inAppBundleID:v33];

                  v10 = v32;
                  goto LABEL_22;
                }
              }

              v20 = [v18 countByEnumeratingWithState:&v34 objects:v42 count:16];
              if (v20)
              {
                continue;
              }

              break;
            }
          }

          v10 = v32;
          v9 = v33;
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