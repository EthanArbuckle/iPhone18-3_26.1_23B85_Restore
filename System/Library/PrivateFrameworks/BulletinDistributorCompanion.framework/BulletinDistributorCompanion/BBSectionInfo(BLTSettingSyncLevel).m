@interface BBSectionInfo(BLTSettingSyncLevel)
- (void)bltApplyNotificationLevel:()BLTSettingSyncLevel;
@end

@implementation BBSectionInfo(BLTSettingSyncLevel)

- (void)bltApplyNotificationLevel:()BLTSettingSyncLevel
{
  v22 = *MEMORY[0x277D85DE8];
  if (a3 == 3)
  {
    [a1 setCriticalAlertSetting:1];
  }

  else if (a3)
  {
    [a1 setAuthorizationStatus:2];
    [a1 setNotificationCenterSetting:2];
    if (a3 == 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    [a1 setLockScreenSetting:v5];
    [a1 setAlertType:a3 == 2];
    v6 = [a1 pushSettings];
    v7 = (8 * v6) & 0x28;
    if (v7)
    {
      v8 = v7 | v6;
      v9 = v6 & ~v7;
      if (a3 == 2)
      {
        v10 = v8;
      }

      else
      {
        v10 = v9;
      }

      [a1 setPushSettings:v10];
    }
  }

  else
  {
    [a1 setAuthorizationStatus:1];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = [a1 subsections];
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v17 + 1) + 8 * i) bltApplyNotificationLevel:a3];
      }

      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end