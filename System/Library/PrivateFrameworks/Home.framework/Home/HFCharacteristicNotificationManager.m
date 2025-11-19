@interface HFCharacteristicNotificationManager
+ (HFCharacteristicNotificationStateContaining)notificationsStateContainer;
+ (id)sharedManager;
+ (void)setOverrideNotificationsStateContainer:(id)a3;
- (BOOL)cacheUpToDateWithNotificationsEnabledForCharacteristic:(id)a3 inHome:(id)a4;
- (BOOL)notificationsEnabled;
- (BOOL)notificationsEnabledForCharacteristic:(id)a3 inHome:(id)a4;
- (BOOL)notificationsReasonsExist;
- (HFCharacteristicNotificationManager)init;
- (id)lastNotificationsEnableRequestDateForCharacteristic:(id)a3 forHome:(id)a4;
- (void)_updateNotificationsEnabledWithNumberOfAppleMediaAccessories:(unint64_t)a3;
- (void)disableNotificationsForSelectedHomeWithReason:(id)a3;
- (void)enableNotificationsForSelectedHomeWithReason:(id)a3 numberOfAppleMediaAccessories:(unint64_t)a4;
@end

@implementation HFCharacteristicNotificationManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HFCharacteristicNotificationManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_280E03890 != -1)
  {
    dispatch_once(&qword_280E03890, block);
  }

  v2 = _MergedGlobals_292;

  return v2;
}

void __52__HFCharacteristicNotificationManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = _MergedGlobals_292;
  _MergedGlobals_292 = v1;
}

- (HFCharacteristicNotificationManager)init
{
  v8.receiver = self;
  v8.super_class = HFCharacteristicNotificationManager;
  v2 = [(HFCharacteristicNotificationManager *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB58] set];
    notificationsEnabledReasons = v2->_notificationsEnabledReasons;
    v2->_notificationsEnabledReasons = v3;

    v5 = +[HFHomeKitDispatcher sharedDispatcher];
    [v5 addHomeManagerObserver:v2];

    v6 = +[HFHomeKitDispatcher sharedDispatcher];
    [v6 addHomeObserver:v2];
  }

  return v2;
}

- (void)enableNotificationsForSelectedHomeWithReason:(id)a3 numberOfAppleMediaAccessories:(unint64_t)a4
{
  v11 = a3;
  if (!v11)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"HFCharacteristicNotificationManager.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"reason != nil"}];
  }

  v7 = [(HFCharacteristicNotificationManager *)self notificationsEnabledReasons];
  v8 = [v7 containsObject:v11];

  if (v8)
  {
    NSLog(&cfstr_AttemptToEnabl.isa, v11);
  }

  v9 = [(HFCharacteristicNotificationManager *)self notificationsEnabledReasons];
  [v9 addObject:v11];

  [(HFCharacteristicNotificationManager *)self _updateNotificationsEnabledWithNumberOfAppleMediaAccessories:a4];
}

- (void)disableNotificationsForSelectedHomeWithReason:(id)a3
{
  v5 = a3;
  v14 = v5;
  if (!v5)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"HFCharacteristicNotificationManager.m" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"reason"}];

    v5 = 0;
  }

  if ([(__CFString *)v5 isEqualToString:@"HCSNotificationsEnabledReasonBackground"])
  {
    v6 = HCSNotificationsEnabledReasonForeground;
LABEL_7:
    v7 = *v6;
    goto LABEL_10;
  }

  if ([(__CFString *)v14 isEqualToString:@"HOSceneDelegateNotificationsEnabledReasonBackground"])
  {
    v6 = HOSceneDelegateNotificationsEnabledReasonForeground;
    goto LABEL_7;
  }

  v8 = [(__CFString *)v14 isEqualToString:@"HUCCNotificationsEnabledReasonBackground "];
  v7 = @"HUCCNotificationsEnabledReasonForeground";
  if (!v8)
  {
    v7 = v14;
  }

LABEL_10:
  v9 = v7;
  v10 = [(HFCharacteristicNotificationManager *)self notificationsEnabledReasons];
  v11 = [v10 containsObject:v9];

  if ((v11 & 1) == 0)
  {
    NSLog(&cfstr_AttemptToDisab.isa, v14);
  }

  v12 = [(HFCharacteristicNotificationManager *)self notificationsEnabledReasons];
  [v12 removeObject:v9];

  [(HFCharacteristicNotificationManager *)self _updateNotificationsEnabled];
}

- (BOOL)notificationsEnabled
{
  v2 = [(HFCharacteristicNotificationManager *)self notificationsEnabledHome];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)notificationsReasonsExist
{
  v2 = [(HFCharacteristicNotificationManager *)self notificationsEnabledReasons];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)notificationsEnabledForCharacteristic:(id)a3 inHome:(id)a4
{
  v5 = a4;
  v6 = [(HFCharacteristicNotificationManager *)self notificationsEnabledHome];
  v7 = [v6 uniqueIdentifier];
  v8 = [v5 uniqueIdentifier];

  LODWORD(v5) = [v7 isEqual:v8];
  if (!v5)
  {
    return 0;
  }

  return [(HFCharacteristicNotificationManager *)self notificationsEnabled];
}

- (id)lastNotificationsEnableRequestDateForCharacteristic:(id)a3 forHome:(id)a4
{
  v5 = a4;
  v6 = [(HFCharacteristicNotificationManager *)self notificationsEnabledHome];
  v7 = [v6 uniqueIdentifier];
  v8 = [v5 uniqueIdentifier];

  LODWORD(v5) = [v7 isEqual:v8];
  if (v5)
  {
    v9 = [(HFCharacteristicNotificationManager *)self lastNotificationsEnableRequestDate];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)cacheUpToDateWithNotificationsEnabledForCharacteristic:(id)a3 inHome:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HFCharacteristicNotificationManager *)self notificationsEnabledHome];
  v9 = [v8 uniqueIdentifier];
  v10 = [v7 uniqueIdentifier];

  LODWORD(v7) = [v9 isEqual:v10];
  if (v7)
  {
    v11 = [(HFCharacteristicNotificationManager *)self lastNotificationsEnableRequestDate];
    v12 = [v6 valueUpdatedTime];
    v13 = [v11 laterDate:v12];
    v14 = v13 != v11;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (void)setOverrideNotificationsStateContainer:(id)a3
{
  v4 = a3;
  obj = a1;
  objc_sync_enter(obj);
  v5 = _notificationsStateContainer;
  _notificationsStateContainer = v4;

  objc_sync_exit(obj);
}

+ (HFCharacteristicNotificationStateContaining)notificationsStateContainer
{
  v2 = a1;
  objc_sync_enter(v2);
  if (_notificationsStateContainer)
  {
    v3 = _notificationsStateContainer;
  }

  else
  {
    v3 = [v2 sharedManager];
  }

  v4 = v3;
  objc_sync_exit(v2);

  return v4;
}

- (void)_updateNotificationsEnabledWithNumberOfAppleMediaAccessories:(unint64_t)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v6 = [v5 home];

  v7 = [(HFCharacteristicNotificationManager *)self notificationsEnabledHome];
  if (v7)
  {
    v8 = v7;
    v9 = [(HFCharacteristicNotificationManager *)self notificationsEnabledHome];
    v10 = [v6 isEqual:v9];

    if ((v10 & 1) == 0)
    {
      v11 = HFLogForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(HFCharacteristicNotificationManager *)self notificationsEnabledHome];
        *buf = 138412546;
        v39 = v12;
        v40 = 2112;
        v41 = v6;
        _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Asking HomeKit to disable notifications for home <%@> because the selected home changed to <%@>", buf, 0x16u);
      }

      v13 = [(HFCharacteristicNotificationManager *)self notificationsEnabledHome];
      [v13 enableNotifications:0 completionHandler:&__block_literal_global_176];

      [(HFCharacteristicNotificationManager *)self setNotificationsEnabledHome:0];
      [(HFCharacteristicNotificationManager *)self setLastNotificationsEnableRequestDate:0];
    }
  }

  v14 = [(HFCharacteristicNotificationManager *)self notificationsEnabledHome];
  if (v14)
  {

    goto LABEL_8;
  }

  v22 = [(HFCharacteristicNotificationManager *)self notificationsEnabledReasons];
  v23 = [v22 count];

  if (!v23 || !v6)
  {
LABEL_8:
    v15 = [(HFCharacteristicNotificationManager *)self notificationsEnabledHome];
    if (v15)
    {
      v16 = v15;
      v17 = [(HFCharacteristicNotificationManager *)self notificationsEnabledReasons];
      v18 = [v17 count];

      if (!v18)
      {
        v19 = HFLogForCategory(0);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [(HFCharacteristicNotificationManager *)self notificationsEnabledHome];
          *buf = 138412290;
          v39 = v20;
          _os_log_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_DEFAULT, "Asking HomeKit to disable notifications for home <%@> because the last enabledReason was removed", buf, 0xCu);
        }

        v21 = [(HFCharacteristicNotificationManager *)self notificationsEnabledHome];
        [v21 enableNotifications:0 includeAppleMediaAccessoryNotifications:1 completionHandler:&__block_literal_global_32_3];

        [(HFCharacteristicNotificationManager *)self setNotificationsEnabledHome:0];
        [(HFCharacteristicNotificationManager *)self setLastNotificationsEnableRequestDate:0];
      }
    }

    goto LABEL_21;
  }

  v24 = [(HFCharacteristicNotificationManager *)self notificationsEnabledReasons];
  v25 = [v24 containsObject:@"HUCCNotificationsEnabledReasonForeground"];

  if (a3)
  {
    v26 = 1;
  }

  else
  {
    v26 = v25 ^ 1u;
  }

  v27 = HFLogForCategory(0);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [(HFCharacteristicNotificationManager *)self notificationsEnabledReasons];
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    *buf = 138413058;
    v39 = v6;
    v40 = 2112;
    v41 = v28;
    v42 = 1024;
    v43 = v26;
    v44 = 2112;
    v45 = v29;
    _os_log_impl(&dword_20D9BF000, v27, OS_LOG_TYPE_DEFAULT, "Asking HomeKit to enable notifications for home <%@> for reason: %@ enableNotificationsForAppleMediaAccessories = %{BOOL}d, numberOfAppleMediaAccessories = %@", buf, 0x26u);
  }

  v32 = MEMORY[0x277D85DD0];
  v33 = 3221225472;
  v34 = __100__HFCharacteristicNotificationManager__updateNotificationsEnabledWithNumberOfAppleMediaAccessories___block_invoke_25;
  v35 = &unk_277DF2748;
  v30 = v6;
  v36 = v30;
  v37 = self;
  [v30 enableNotifications:1 includeAppleMediaAccessoryNotifications:v26 completionHandler:&v32];
  [(HFCharacteristicNotificationManager *)self setNotificationsEnabledHome:v30, v32, v33, v34, v35];

LABEL_21:
  v31 = *MEMORY[0x277D85DE8];
}

void __100__HFCharacteristicNotificationManager__updateNotificationsEnabledWithNumberOfAppleMediaAccessories___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[HFErrorHandler sharedHandler];
  [v3 logError:v2 operationDescription:@"disableHomeNotificationsForChangeHomes"];
}

void __100__HFCharacteristicNotificationManager__updateNotificationsEnabledWithNumberOfAppleMediaAccessories___block_invoke_25(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Enabled notifications call for home <%@> finished with error: %@", &v9, 0x16u);
  }

  v6 = [MEMORY[0x277CBEAA8] date];
  [*(a1 + 40) setLastNotificationsEnableRequestDate:v6];

  v7 = +[HFErrorHandler sharedHandler];
  [v7 logError:v3 operationDescription:@"enableHomeNotifications"];

  if (v3)
  {
    [*(a1 + 40) setNotificationsEnabledHome:0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __100__HFCharacteristicNotificationManager__updateNotificationsEnabledWithNumberOfAppleMediaAccessories___block_invoke_30(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[HFErrorHandler sharedHandler];
  [v3 logError:v2 operationDescription:@"disableHomeNotifications"];
}

@end