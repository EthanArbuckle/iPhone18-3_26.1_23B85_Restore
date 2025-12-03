@interface HFCharacteristicNotificationManager
+ (HFCharacteristicNotificationStateContaining)notificationsStateContainer;
+ (id)sharedManager;
+ (void)setOverrideNotificationsStateContainer:(id)container;
- (BOOL)cacheUpToDateWithNotificationsEnabledForCharacteristic:(id)characteristic inHome:(id)home;
- (BOOL)notificationsEnabled;
- (BOOL)notificationsEnabledForCharacteristic:(id)characteristic inHome:(id)home;
- (BOOL)notificationsReasonsExist;
- (HFCharacteristicNotificationManager)init;
- (id)lastNotificationsEnableRequestDateForCharacteristic:(id)characteristic forHome:(id)home;
- (void)_updateNotificationsEnabledWithNumberOfAppleMediaAccessories:(unint64_t)accessories;
- (void)disableNotificationsForSelectedHomeWithReason:(id)reason;
- (void)enableNotificationsForSelectedHomeWithReason:(id)reason numberOfAppleMediaAccessories:(unint64_t)accessories;
@end

@implementation HFCharacteristicNotificationManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HFCharacteristicNotificationManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (void)enableNotificationsForSelectedHomeWithReason:(id)reason numberOfAppleMediaAccessories:(unint64_t)accessories
{
  reasonCopy = reason;
  if (!reasonCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFCharacteristicNotificationManager.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"reason != nil"}];
  }

  notificationsEnabledReasons = [(HFCharacteristicNotificationManager *)self notificationsEnabledReasons];
  v8 = [notificationsEnabledReasons containsObject:reasonCopy];

  if (v8)
  {
    NSLog(&cfstr_AttemptToEnabl.isa, reasonCopy);
  }

  notificationsEnabledReasons2 = [(HFCharacteristicNotificationManager *)self notificationsEnabledReasons];
  [notificationsEnabledReasons2 addObject:reasonCopy];

  [(HFCharacteristicNotificationManager *)self _updateNotificationsEnabledWithNumberOfAppleMediaAccessories:accessories];
}

- (void)disableNotificationsForSelectedHomeWithReason:(id)reason
{
  reasonCopy = reason;
  v14 = reasonCopy;
  if (!reasonCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFCharacteristicNotificationManager.m" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"reason"}];

    reasonCopy = 0;
  }

  if ([(__CFString *)reasonCopy isEqualToString:@"HCSNotificationsEnabledReasonBackground"])
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
  notificationsEnabledReasons = [(HFCharacteristicNotificationManager *)self notificationsEnabledReasons];
  v11 = [notificationsEnabledReasons containsObject:v9];

  if ((v11 & 1) == 0)
  {
    NSLog(&cfstr_AttemptToDisab.isa, v14);
  }

  notificationsEnabledReasons2 = [(HFCharacteristicNotificationManager *)self notificationsEnabledReasons];
  [notificationsEnabledReasons2 removeObject:v9];

  [(HFCharacteristicNotificationManager *)self _updateNotificationsEnabled];
}

- (BOOL)notificationsEnabled
{
  notificationsEnabledHome = [(HFCharacteristicNotificationManager *)self notificationsEnabledHome];
  v3 = notificationsEnabledHome != 0;

  return v3;
}

- (BOOL)notificationsReasonsExist
{
  notificationsEnabledReasons = [(HFCharacteristicNotificationManager *)self notificationsEnabledReasons];
  v3 = [notificationsEnabledReasons count] != 0;

  return v3;
}

- (BOOL)notificationsEnabledForCharacteristic:(id)characteristic inHome:(id)home
{
  homeCopy = home;
  notificationsEnabledHome = [(HFCharacteristicNotificationManager *)self notificationsEnabledHome];
  uniqueIdentifier = [notificationsEnabledHome uniqueIdentifier];
  uniqueIdentifier2 = [homeCopy uniqueIdentifier];

  LODWORD(homeCopy) = [uniqueIdentifier isEqual:uniqueIdentifier2];
  if (!homeCopy)
  {
    return 0;
  }

  return [(HFCharacteristicNotificationManager *)self notificationsEnabled];
}

- (id)lastNotificationsEnableRequestDateForCharacteristic:(id)characteristic forHome:(id)home
{
  homeCopy = home;
  notificationsEnabledHome = [(HFCharacteristicNotificationManager *)self notificationsEnabledHome];
  uniqueIdentifier = [notificationsEnabledHome uniqueIdentifier];
  uniqueIdentifier2 = [homeCopy uniqueIdentifier];

  LODWORD(homeCopy) = [uniqueIdentifier isEqual:uniqueIdentifier2];
  if (homeCopy)
  {
    lastNotificationsEnableRequestDate = [(HFCharacteristicNotificationManager *)self lastNotificationsEnableRequestDate];
  }

  else
  {
    lastNotificationsEnableRequestDate = 0;
  }

  return lastNotificationsEnableRequestDate;
}

- (BOOL)cacheUpToDateWithNotificationsEnabledForCharacteristic:(id)characteristic inHome:(id)home
{
  characteristicCopy = characteristic;
  homeCopy = home;
  notificationsEnabledHome = [(HFCharacteristicNotificationManager *)self notificationsEnabledHome];
  uniqueIdentifier = [notificationsEnabledHome uniqueIdentifier];
  uniqueIdentifier2 = [homeCopy uniqueIdentifier];

  LODWORD(homeCopy) = [uniqueIdentifier isEqual:uniqueIdentifier2];
  if (homeCopy)
  {
    lastNotificationsEnableRequestDate = [(HFCharacteristicNotificationManager *)self lastNotificationsEnableRequestDate];
    valueUpdatedTime = [characteristicCopy valueUpdatedTime];
    v13 = [lastNotificationsEnableRequestDate laterDate:valueUpdatedTime];
    v14 = v13 != lastNotificationsEnableRequestDate;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (void)setOverrideNotificationsStateContainer:(id)container
{
  containerCopy = container;
  obj = self;
  objc_sync_enter(obj);
  v5 = _notificationsStateContainer;
  _notificationsStateContainer = containerCopy;

  objc_sync_exit(obj);
}

+ (HFCharacteristicNotificationStateContaining)notificationsStateContainer
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (_notificationsStateContainer)
  {
    sharedManager = _notificationsStateContainer;
  }

  else
  {
    sharedManager = [selfCopy sharedManager];
  }

  v4 = sharedManager;
  objc_sync_exit(selfCopy);

  return v4;
}

- (void)_updateNotificationsEnabledWithNumberOfAppleMediaAccessories:(unint64_t)accessories
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  home = [v5 home];

  notificationsEnabledHome = [(HFCharacteristicNotificationManager *)self notificationsEnabledHome];
  if (notificationsEnabledHome)
  {
    v8 = notificationsEnabledHome;
    notificationsEnabledHome2 = [(HFCharacteristicNotificationManager *)self notificationsEnabledHome];
    v10 = [home isEqual:notificationsEnabledHome2];

    if ((v10 & 1) == 0)
    {
      v11 = HFLogForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        notificationsEnabledHome3 = [(HFCharacteristicNotificationManager *)self notificationsEnabledHome];
        *buf = 138412546;
        v39 = notificationsEnabledHome3;
        v40 = 2112;
        v41 = home;
        _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Asking HomeKit to disable notifications for home <%@> because the selected home changed to <%@>", buf, 0x16u);
      }

      notificationsEnabledHome4 = [(HFCharacteristicNotificationManager *)self notificationsEnabledHome];
      [notificationsEnabledHome4 enableNotifications:0 completionHandler:&__block_literal_global_176];

      [(HFCharacteristicNotificationManager *)self setNotificationsEnabledHome:0];
      [(HFCharacteristicNotificationManager *)self setLastNotificationsEnableRequestDate:0];
    }
  }

  notificationsEnabledHome5 = [(HFCharacteristicNotificationManager *)self notificationsEnabledHome];
  if (notificationsEnabledHome5)
  {

    goto LABEL_8;
  }

  notificationsEnabledReasons = [(HFCharacteristicNotificationManager *)self notificationsEnabledReasons];
  v23 = [notificationsEnabledReasons count];

  if (!v23 || !home)
  {
LABEL_8:
    notificationsEnabledHome6 = [(HFCharacteristicNotificationManager *)self notificationsEnabledHome];
    if (notificationsEnabledHome6)
    {
      v16 = notificationsEnabledHome6;
      notificationsEnabledReasons2 = [(HFCharacteristicNotificationManager *)self notificationsEnabledReasons];
      v18 = [notificationsEnabledReasons2 count];

      if (!v18)
      {
        v19 = HFLogForCategory(0);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          notificationsEnabledHome7 = [(HFCharacteristicNotificationManager *)self notificationsEnabledHome];
          *buf = 138412290;
          v39 = notificationsEnabledHome7;
          _os_log_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_DEFAULT, "Asking HomeKit to disable notifications for home <%@> because the last enabledReason was removed", buf, 0xCu);
        }

        notificationsEnabledHome8 = [(HFCharacteristicNotificationManager *)self notificationsEnabledHome];
        [notificationsEnabledHome8 enableNotifications:0 includeAppleMediaAccessoryNotifications:1 completionHandler:&__block_literal_global_32_3];

        [(HFCharacteristicNotificationManager *)self setNotificationsEnabledHome:0];
        [(HFCharacteristicNotificationManager *)self setLastNotificationsEnableRequestDate:0];
      }
    }

    goto LABEL_21;
  }

  notificationsEnabledReasons3 = [(HFCharacteristicNotificationManager *)self notificationsEnabledReasons];
  v25 = [notificationsEnabledReasons3 containsObject:@"HUCCNotificationsEnabledReasonForeground"];

  if (accessories)
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
    notificationsEnabledReasons4 = [(HFCharacteristicNotificationManager *)self notificationsEnabledReasons];
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:accessories];
    *buf = 138413058;
    v39 = home;
    v40 = 2112;
    v41 = notificationsEnabledReasons4;
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
  v30 = home;
  v36 = v30;
  selfCopy = self;
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