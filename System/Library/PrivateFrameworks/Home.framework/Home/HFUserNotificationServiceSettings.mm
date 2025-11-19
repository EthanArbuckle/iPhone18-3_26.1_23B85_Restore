@interface HFUserNotificationServiceSettings
+ (id)combinedConditionForBulletinBoardNotifications:(id)a3;
- (HFUserNotificationServiceSettings)initWithBulletinBoardNotifications:(id)a3;
- (HFUserNotificationServiceSettings)initWithNotificationsEnabled:(BOOL)a3 condition:(id)a4 smartCameraNotificationCondition:(id)a5;
- (id)applySettingsToBulletinBoardNotifications:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation HFUserNotificationServiceSettings

- (HFUserNotificationServiceSettings)initWithBulletinBoardNotifications:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v36 = v4;
    obj = v4;
    v41 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    v5 = 0;
    v6 = 0;
    if (v41)
    {
      v40 = *v43;
      v7 = *MEMORY[0x277CD0EC0];
      v37 = *MEMORY[0x277CD0EC0];
      v38 = *MEMORY[0x277CD0E38];
      do
      {
        v8 = 0;
        do
        {
          if (*v43 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v42 + 1) + 8 * v8);
          v10 = [v9 isEnabled];
          objc_opt_class();
          v11 = v9;
          if (objc_opt_isKindOfClass())
          {
            v12 = v11;
          }

          else
          {
            v12 = 0;
          }

          v13 = v12;

          if (v13)
          {
            v14 = [v13 cameraUserSettings];
            if ([v14 accessModeForPresenceType:3] == 2)
            {
              v15 = 1;
            }

            else
            {
              v19 = [v13 cameraUserSettings];
              v15 = [v19 accessModeForPresenceType:4] == 2;
            }

            v20 = [v13 condition];

            if (v20)
            {
              v21 = 1;
            }

            else
            {
              v21 = !v15;
            }

            if (v21)
            {
              self->_smartDetectionNotificationsEnabled = [v11 isEnabled];
            }

            else
            {
              v22 = +[HFCameraSignificantEventConfiguration defaultSmartMotionConfiguration];
              v23 = [v22 predicateRepresentation];

              [(HFUserNotificationServiceSettings *)self setSmartCameraNotificationCondition:v23];
              v46 = v13;
              v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
              v25 = [(HFUserNotificationServiceSettings *)self applySettingsToBulletinBoardNotifications:v24];

              self->_smartDetectionNotificationsEnabled = 1;
            }

            v26 = [v11 condition];

            v5 = v26;
          }

          else
          {
            v16 = [v11 service];
            v17 = [v16 serviceType];
            v18 = [v17 isEqualToString:v38];

            if (v18)
            {
              self->_doorbellNotificationsEnabled = [v11 isEnabled];
            }

            else
            {
              v27 = [v11 service];
              v28 = [v27 serviceType];
              v29 = [v28 isEqualToString:v37];

              if (v29)
              {
                self->_motionNotificationsEnabled = [v11 isEnabled];
              }
            }
          }

          v6 |= v10;

          ++v8;
        }

        while (v41 != v8);
        v30 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
        v41 = v30;
      }

      while (v30);
    }

    v31 = [obj na_filter:&__block_literal_global_167];
    v32 = [objc_opt_class() combinedConditionForBulletinBoardNotifications:v31];
    self = [(HFUserNotificationServiceSettings *)self initWithNotificationsEnabled:v6 & 1 condition:v32 smartCameraNotificationCondition:v5];

    v33 = self;
    v4 = v36;
  }

  else
  {
    v33 = 0;
  }

  v34 = *MEMORY[0x277D85DE8];
  return v33;
}

BOOL __72__HFUserNotificationServiceSettings_initWithBulletinBoardNotifications___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v5 == 0;
}

- (HFUserNotificationServiceSettings)initWithNotificationsEnabled:(BOOL)a3 condition:(id)a4 smartCameraNotificationCondition:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HFUserNotificationServiceSettings;
  v11 = [(HFUserNotificationServiceSettings *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_notificationsEnabled = a3;
    objc_storeStrong(&v11->_notificationCondition, a4);
    objc_storeStrong(&v12->_smartCameraNotificationCondition, a5);
  }

  return v12;
}

- (id)applySettingsToBulletinBoardNotifications:(id)a3
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__HFUserNotificationServiceSettings_applySettingsToBulletinBoardNotifications___block_invoke;
  v7[3] = &unk_277DFE750;
  v7[4] = self;
  v3 = [a3 na_map:v7];
  v4 = [MEMORY[0x277D2C900] combineAllFutures:v3];
  v5 = [v4 flatMap:&__block_literal_global_8_7];

  return v5;
}

id __79__HFUserNotificationServiceSettings_applySettingsToBulletinBoardNotifications___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 service];
  v5 = [v4 serviceType];
  v6 = [v5 isEqualToString:*MEMORY[0x277CD0E38]];

  v7 = [v3 service];
  v8 = [v7 serviceType];
  v9 = [v8 isEqualToString:*MEMORY[0x277CD0EC0]];

  objc_opt_class();
  v10 = v3;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = *(a1 + 32);
  if (v12)
  {
    [v10 setEnabled:{objc_msgSend(v13, "areSmartDetectionNotificationsEnabled")}];
    v14 = [*(a1 + 32) smartCameraNotificationCondition];
  }

  else
  {
    if (v6)
    {
      v15 = [v13 areDoorbellNotificationsEnabled];
    }

    else if (v9)
    {
      v15 = [v13 areMotionNotificationsEnabled];
    }

    else
    {
      v15 = [v13 areNotificationsEnabled];
    }

    [v10 setEnabled:v15];
    v14 = [*(a1 + 32) notificationCondition];
  }

  v16 = v14;
  [v10 setCondition:v14];

  v17 = MEMORY[0x277D2C900];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __79__HFUserNotificationServiceSettings_applySettingsToBulletinBoardNotifications___block_invoke_2;
  v21[3] = &unk_277DF2C68;
  v22 = v10;
  v18 = v10;
  v19 = [v17 futureWithErrorOnlyHandlerAdapterBlock:v21];

  return v19;
}

+ (id)combinedConditionForBulletinBoardNotifications:(id)a3
{
  v3 = a3;
  v4 = [v3 na_filter:&__block_literal_global_10_8];
  if ([v4 count] > 1)
  {
    v7 = [v4 firstObject];
    v8 = [v7 condition];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __84__HFUserNotificationServiceSettings_combinedConditionForBulletinBoardNotifications___block_invoke_2;
    v12[3] = &unk_277DFE778;
    v5 = v8;
    v13 = v5;
    if ([v4 na_all:v12])
    {
      v6 = v5;
    }

    else
    {
      v9 = MEMORY[0x277CCA920];
      v10 = [v3 na_map:&__block_literal_global_14_8];
      v6 = [v9 orPredicateWithSubpredicates:v10];
    }
  }

  else
  {
    v5 = [v3 firstObject];
    v6 = [v5 condition];
  }

  return v6;
}

BOOL __84__HFUserNotificationServiceSettings_combinedConditionForBulletinBoardNotifications___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 condition];
  v3 = v2 != 0;

  return v3;
}

uint64_t __84__HFUserNotificationServiceSettings_combinedConditionForBulletinBoardNotifications___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 condition];
  v4 = v2;
  v5 = v3;
  if (v4 == v5)
  {
    v6 = 1;
  }

  else if (v4)
  {
    v6 = [v4 isEqual:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HFUserNotificationServiceSettings alloc];
  v5 = [(HFUserNotificationServiceSettings *)self areNotificationsEnabled];
  v6 = [(HFUserNotificationServiceSettings *)self notificationCondition];
  v7 = [(HFUserNotificationServiceSettings *)self smartCameraNotificationCondition];
  v8 = [(HFUserNotificationServiceSettings *)v4 initWithNotificationsEnabled:v5 condition:v6 smartCameraNotificationCondition:v7];

  [(HFUserNotificationServiceSettings *)v8 setDoorbellNotificationsEnabled:[(HFUserNotificationServiceSettings *)self areDoorbellNotificationsEnabled]];
  [(HFUserNotificationServiceSettings *)v8 setSmartDetectionNotificationsEnabled:[(HFUserNotificationServiceSettings *)self areSmartDetectionNotificationsEnabled]];
  [(HFUserNotificationServiceSettings *)v8 setMotionNotificationsEnabled:[(HFUserNotificationServiceSettings *)self areMotionNotificationsEnabled]];
  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HFMutableUserNotificationServiceSettings alloc];
  v5 = [(HFUserNotificationServiceSettings *)self areNotificationsEnabled];
  v6 = [(HFUserNotificationServiceSettings *)self notificationCondition];
  v7 = [(HFUserNotificationServiceSettings *)self smartCameraNotificationCondition];
  v8 = [(HFUserNotificationServiceSettings *)v4 initWithNotificationsEnabled:v5 condition:v6 smartCameraNotificationCondition:v7];

  [(HFUserNotificationServiceSettings *)v8 setDoorbellNotificationsEnabled:[(HFUserNotificationServiceSettings *)self areDoorbellNotificationsEnabled]];
  [(HFUserNotificationServiceSettings *)v8 setSmartDetectionNotificationsEnabled:[(HFUserNotificationServiceSettings *)self areSmartDetectionNotificationsEnabled]];
  [(HFUserNotificationServiceSettings *)v8 setMotionNotificationsEnabled:[(HFUserNotificationServiceSettings *)self areMotionNotificationsEnabled]];
  return v8;
}

@end