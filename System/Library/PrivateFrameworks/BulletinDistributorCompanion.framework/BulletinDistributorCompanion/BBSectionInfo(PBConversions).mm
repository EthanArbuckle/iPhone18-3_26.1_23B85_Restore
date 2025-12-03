@interface BBSectionInfo(PBConversions)
- (uint64_t)blt_overrideSendToNotificationCenter;
- (uint64_t)enableAlertsForGizmo:()PBConversions;
- (uint64_t)setDataProviderIDs:()PBConversions;
- (uint64_t)setSubsections:()PBConversions;
- (uint64_t)updateAlertingStatusForGizmoWithAlertsEnabled:()PBConversions NCEnabled:;
- (unint64_t)blt_overrideShowsAlerts;
- (void)applyKeypaths:()PBConversions from:;
@end

@implementation BBSectionInfo(PBConversions)

- (uint64_t)setSubsections:()PBConversions
{
  v4 = [a3 copy];
  v5 = *MEMORY[0x277CF35C0];
  v6 = *(self + v5);
  *(self + v5) = v4;

  return MEMORY[0x2821F96F8]();
}

- (uint64_t)setDataProviderIDs:()PBConversions
{
  v4 = [a3 copy];
  v5 = *MEMORY[0x277CF3598];
  v6 = *(self + v5);
  *(self + v5) = v4;

  return MEMORY[0x2821F96F8]();
}

- (uint64_t)enableAlertsForGizmo:()PBConversions
{
  pushSettings = [self pushSettings];
  if (a3)
  {
    v6 = 2;
    [self setAlertType:2];
    v7 = pushSettings | 0x20;
  }

  else
  {
    [self setAlertType:0];
    v7 = pushSettings & 0xFFFFFFFFFFFFFFDFLL;
    v6 = 1;
  }

  [self setPushSettings:v7];
  [self setLockScreenSetting:v6];
  result = [self setShowsOnExternalDevices:a3];
  if (a3)
  {

    return [self setNotificationCenterSetting:2];
  }

  return result;
}

- (uint64_t)updateAlertingStatusForGizmoWithAlertsEnabled:()PBConversions NCEnabled:
{
  if (a4)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  if (a3)
  {
    v6 = 2;
  }

  else
  {
    v6 = v5;
  }

  [self enableAlertsForGizmo:?];
  [self setNotificationCenterSetting:v5];

  return [self setAuthorizationStatus:v6];
}

- (unint64_t)blt_overrideShowsAlerts
{
  result = [self allowsNotifications];
  if (result)
  {
    if ([self alertType])
    {
      return 1;
    }

    else
    {
      return ([self suppressedSettings] >> 5) & 1;
    }
  }

  return result;
}

- (uint64_t)blt_overrideSendToNotificationCenter
{
  result = [self allowsNotifications];
  if (result)
  {
    return ([self blt_overrideShowsAlerts] & 1) == 0 && objc_msgSend(self, "notificationCenterSetting") == 2;
  }

  return result;
}

- (void)applyKeypaths:()PBConversions from:
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_28544B3E8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if ([v8 containsObject:{v14, v17}])
        {
          v15 = [v7 valueForKeyPath:v14];
          [self setValue:v15 forKeyPath:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end