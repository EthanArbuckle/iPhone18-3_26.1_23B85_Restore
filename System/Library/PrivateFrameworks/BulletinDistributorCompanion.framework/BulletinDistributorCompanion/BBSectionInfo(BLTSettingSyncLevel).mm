@interface BBSectionInfo(BLTSettingSyncLevel)
- (void)bltApplyNotificationLevel:()BLTSettingSyncLevel;
@end

@implementation BBSectionInfo(BLTSettingSyncLevel)

- (void)bltApplyNotificationLevel:()BLTSettingSyncLevel
{
  v22 = *MEMORY[0x277D85DE8];
  if (a3 == 3)
  {
    [self setCriticalAlertSetting:1];
  }

  else if (a3)
  {
    [self setAuthorizationStatus:2];
    [self setNotificationCenterSetting:2];
    if (a3 == 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    [self setLockScreenSetting:v5];
    [self setAlertType:a3 == 2];
    pushSettings = [self pushSettings];
    v7 = (8 * pushSettings) & 0x28;
    if (v7)
    {
      v8 = v7 | pushSettings;
      v9 = pushSettings & ~v7;
      if (a3 == 2)
      {
        v10 = v8;
      }

      else
      {
        v10 = v9;
      }

      [self setPushSettings:v10];
    }
  }

  else
  {
    [self setAuthorizationStatus:1];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  subsections = [self subsections];
  v12 = [subsections countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(subsections);
        }

        [*(*(&v17 + 1) + 8 * i) bltApplyNotificationLevel:a3];
      }

      v13 = [subsections countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end