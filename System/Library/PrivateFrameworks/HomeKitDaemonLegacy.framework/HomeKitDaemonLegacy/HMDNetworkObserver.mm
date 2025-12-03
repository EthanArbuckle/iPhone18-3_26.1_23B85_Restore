@interface HMDNetworkObserver
+ (id)supportedEventClasses;
- (HMDCurrentResidentDeviceDataSource)currentHomeDataSource;
- (HMDEventCountersManager)countersManager;
- (HMDNetworkObserver)initWithLogEventDispatcher:(id)dispatcher countersManager:(id)manager dailyScheduler:(id)scheduler currentHomeDataSource:(id)source dateProvider:(id)provider;
- (HMDNetworkObserver)initWithLogEventDispatcher:(id)dispatcher countersManager:(id)manager dailyScheduler:(id)scheduler currentHomeDataSource:(id)source dateProvider:(id)provider wifiManager:(id)wifiManager notificationCenter:(id)center changeDebounceTimer:(id)self0 tickBlock:(id)self1;
- (HMFWiFiManager)wifiManager;
- (HMMDailyScheduler)dailyScheduler;
- (HMMDateProvider)dateProvider;
- (HMMLogEventDispatching)logEventDispatcher;
- (NSNotificationCenter)notificationCenter;
- (id)_keyOfLargestCountInHistogram:(id)histogram;
- (id)counterGroupForName:(id)name homeUUID:(id)d date:(id)date;
- (id)logEventForHomeWithUUID:(id)d associatedWithDate:(id)date;
- (void)_clearNonPersistentCounters;
- (void)_handleAccessorySessionEvent:(id)event;
- (void)_handleCurrentNetworkChangedNotification:(id)notification;
- (void)_handleReadWriteLogEvent:(id)event;
- (void)_incrementError:(id)error forHistogram:(id)histogram byValue:(unint64_t)value;
- (void)checkNetworkChange;
- (void)deleteCountersAfterDate:(id)date;
- (void)deleteCountersBeforeDate:(id)date;
- (void)observeEvent:(id)event;
- (void)runDailyTask;
- (void)start;
- (void)stop;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDNetworkObserver

- (HMMDailyScheduler)dailyScheduler
{
  WeakRetained = objc_loadWeakRetained(&self->_dailyScheduler);

  return WeakRetained;
}

- (HMMDateProvider)dateProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_dateProvider);

  return WeakRetained;
}

- (HMDCurrentResidentDeviceDataSource)currentHomeDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_currentHomeDataSource);

  return WeakRetained;
}

- (NSNotificationCenter)notificationCenter
{
  WeakRetained = objc_loadWeakRetained(&self->_notificationCenter);

  return WeakRetained;
}

- (HMFWiFiManager)wifiManager
{
  WeakRetained = objc_loadWeakRetained(&self->_wifiManager);

  return WeakRetained;
}

- (HMDEventCountersManager)countersManager
{
  WeakRetained = objc_loadWeakRetained(&self->_countersManager);

  return WeakRetained;
}

- (HMMLogEventDispatching)logEventDispatcher
{
  WeakRetained = objc_loadWeakRetained(&self->_logEventDispatcher);

  return WeakRetained;
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  changeDebounceTimer = [(HMDNetworkObserver *)self changeDebounceTimer];

  if (changeDebounceTimer == fireCopy)
  {

    [(HMDNetworkObserver *)self checkNetworkChange];
  }
}

- (void)checkNetworkChange
{
  v41 = *MEMORY[0x277D85DE8];
  wifiManager = [(HMDNetworkObserver *)self wifiManager];
  currentNetworkAssociation = [wifiManager currentNetworkAssociation];

  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    sSID = [currentNetworkAssociation SSID];
    mACAddress = [currentNetworkAssociation MACAddress];
    bSSID = [currentNetworkAssociation BSSID];
    gatewayIPAddress = [currentNetworkAssociation gatewayIPAddress];
    gatewayMACAddress = [currentNetworkAssociation gatewayMACAddress];
    v29 = 138544642;
    v30 = v8;
    v31 = 2112;
    v32 = sSID;
    v33 = 2112;
    v34 = mACAddress;
    v35 = 2112;
    v36 = bSSID;
    v37 = 2112;
    v38 = gatewayIPAddress;
    v39 = 2112;
    v40 = gatewayMACAddress;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Network Change Detected.  New Network SSID %@ Local MAC %@, BSSID %@, gatewayIP %@,  gatewayMac %@", &v29, 0x3Eu);
  }

  objc_autoreleasePoolPop(v5);
  countersManager = [(HMDNetworkObserver *)selfCopy countersManager];
  dateProvider = [(HMDNetworkObserver *)selfCopy dateProvider];
  startOfCurrentDay = [dateProvider startOfCurrentDay];
  v17 = [HMDDateCounterGroupSpecifier specifierWithGroupName:@"NetworkStatusEventGroup" date:startOfCurrentDay];
  v18 = [countersManager objectForKeyedSubscript:v17];

  if (currentNetworkAssociation)
  {
    sSID2 = [currentNetworkAssociation SSID];

    if (sSID2)
    {
      if (!selfCopy->_wifiAssociated)
      {
        [v18 incrementEventCounterForEventName:@"WifiAssociationCount"];
        ++selfCopy->_numWifiAssociations;
      }

      selfCopy->_wifiAssociated = 1;
      bSSID2 = [currentNetworkAssociation BSSID];
      networkAssociation = [(HMDNetworkObserver *)selfCopy networkAssociation];
      bSSID3 = [networkAssociation BSSID];
      v23 = [bSSID2 isEqualToAddress:bSSID3];

      if ((v23 & 1) == 0)
      {
        [v18 incrementEventCounterForEventName:@"APChangeCount"];
        ++selfCopy->_numAPChanges;
      }

      gatewayMACAddress2 = [currentNetworkAssociation gatewayMACAddress];
      networkAssociation2 = [(HMDNetworkObserver *)selfCopy networkAssociation];
      gatewayMACAddress3 = [networkAssociation2 gatewayMACAddress];
      v27 = [gatewayMACAddress2 isEqualToAddress:gatewayMACAddress3];

      if ((v27 & 1) == 0)
      {
        [v18 incrementEventCounterForEventName:@"GatewayChangeCount"];
        ++selfCopy->_numGatewayChanges;
      }

      os_unfair_lock_lock_with_options();
      objc_storeStrong(&selfCopy->_networkAssociation, currentNetworkAssociation);
      os_unfair_lock_unlock(&selfCopy->_networkAssociationLock);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)deleteCountersAfterDate:(id)date
{
  dateCopy = date;
  countersManager = [(HMDNetworkObserver *)self countersManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__HMDNetworkObserver_deleteCountersAfterDate___block_invoke;
  v7[3] = &unk_279735988;
  v8 = dateCopy;
  v6 = dateCopy;
  [countersManager removeCounterGroupsBasedOnPredicate:v7];
}

uint64_t __46__HMDNetworkObserver_deleteCountersAfterDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 groupName];
  if (v5)
  {
    v7 = [v5 date];
    if ([v7 compare:*(a1 + 32)] == 1)
    {
      if ([v6 isEqual:@"NetworkStatusEventGroup"] & 1) != 0 || (objc_msgSend(v6, "isEqual:", @"ReadWriteErrorEventGroup"))
      {
        v8 = 1;
      }

      else
      {
        v8 = [v6 isEqual:@"AccessorySessionErrorGroup"];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)deleteCountersBeforeDate:(id)date
{
  dateCopy = date;
  countersManager = [(HMDNetworkObserver *)self countersManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__HMDNetworkObserver_deleteCountersBeforeDate___block_invoke;
  v7[3] = &unk_279735988;
  v8 = dateCopy;
  v6 = dateCopy;
  [countersManager removeCounterGroupsBasedOnPredicate:v7];
}

uint64_t __47__HMDNetworkObserver_deleteCountersBeforeDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 groupName];
  if (v5)
  {
    v7 = [v5 date];
    if ([v7 compare:*(a1 + 32)] == -1)
    {
      if ([v6 isEqual:@"NetworkStatusEventGroup"] & 1) != 0 || (objc_msgSend(v6, "isEqual:", @"ReadWriteErrorEventGroup"))
      {
        v8 = 1;
      }

      else
      {
        v8 = [v6 isEqual:@"AccessorySessionErrorGroup"];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)logEventForHomeWithUUID:(id)d associatedWithDate:(id)date
{
  dCopy = d;
  dateCopy = date;
  currentHomeDataSource = [(HMDNetworkObserver *)self currentHomeDataSource];
  homeUUIDForCurrentResidentDevice = [currentHomeDataSource homeUUIDForCurrentResidentDevice];
  v10 = [dCopy hmf_isEqualToUUID:homeUUIDForCurrentResidentDevice];

  if (v10)
  {
    countersManager = [(HMDNetworkObserver *)self countersManager];
    v12 = [HMDDateCounterGroupSpecifier specifierWithGroupName:@"NetworkStatusEventGroup" date:dateCopy];
    v13 = [countersManager objectForKeyedSubscript:v12];

    v14 = [(HMDNetworkObserver *)self counterGroupForName:@"ReadWriteErrorEventGroup" homeUUID:dCopy date:dateCopy];
    v15 = [(HMDNetworkObserver *)self counterGroupForName:@"AccessorySessionErrorGroup" homeUUID:dCopy date:dateCopy];
    v39 = [v13 fetchEventCounterForEventName:@"WifiAssociationCount"];
    v38 = [v13 fetchEventCounterForEventName:@"WifiDissociationCount"];
    v37 = [v13 fetchEventCounterForEventName:@"APChangeCount"];
    v36 = [v13 fetchEventCounterForEventName:@"GatewayChangeCount"];
    v35 = [v13 fetchEventCounterForEventName:@"ReadWriteCount"];
    v33 = [v13 fetchEventCounterForEventName:@"ReadErrorCount"];
    v32 = [v13 fetchEventCounterForEventName:@"WriteErrorCount"];
    v43[0] = 0;
    v41 = v14;
    [v14 maxCounterName:v43];
    v34 = v43[0];
    v42 = 0;
    [v15 maxCounterName:&v42];
    v16 = v42;
    v40 = v15;
    v31 = [v15 fetchEventCounterForEventName:v16];
    os_unfair_lock_lock_with_options();
    if (!self->_networkAssociation)
    {
      wifiManager = [(HMDNetworkObserver *)self wifiManager];
      currentNetworkAssociation = [wifiManager currentNetworkAssociation];
      networkAssociation = self->_networkAssociation;
      self->_networkAssociation = currentNetworkAssociation;
    }

    networkAssociation = [(HMDNetworkObserver *)self networkAssociation];
    bSSID = [networkAssociation BSSID];
    formattedString = [bSSID formattedString];
    v23 = [formattedString substringToIndex:8];

    networkAssociation2 = [(HMDNetworkObserver *)self networkAssociation];
    sSID = [networkAssociation2 SSID];

    networkAssociation3 = [(HMDNetworkObserver *)self networkAssociation];
    gatewayMACAddress = [networkAssociation3 gatewayMACAddress];
    formattedString2 = [gatewayMACAddress formattedString];

    os_unfair_lock_unlock(&self->_networkAssociationLock);
    v29 = [[HMDNetworkStabilityLogEvent alloc] initWithHomeUUID:dCopy numWifiAssociations:v39 wifiDisassociations:v38 apChanges:v37 gatewayChanges:v36 numReadWrites:v35 numReadErrors:v33 numWriteErrors:v32 topReadWriteError:v34 topSessionError:v16 numSessionErrors:v31 apOUI:v23 ssid:sSID gatewayMACAddress:formattedString2 localHourOfDay:0 collectionDurationMinutes:0];
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (void)runDailyTask
{
  topWriteErrors = [(HMDNetworkObserver *)self topWriteErrors];
  v28 = [(HMDNetworkObserver *)self _keyOfLargestCountInHistogram:topWriteErrors];

  topSessionErrors = [(HMDNetworkObserver *)self topSessionErrors];
  unsignedIntValue = [(HMDNetworkObserver *)self _keyOfLargestCountInHistogram:topSessionErrors];

  v24 = unsignedIntValue;
  if (unsignedIntValue)
  {
    topSessionErrors2 = [(HMDNetworkObserver *)self topSessionErrors];
    v7 = [topSessionErrors2 objectForKeyedSubscript:unsignedIntValue];
    unsignedIntValue = [v7 unsignedIntValue];
  }

  os_unfair_lock_lock_with_options();
  if (!self->_networkAssociation)
  {
    wifiManager = [(HMDNetworkObserver *)self wifiManager];
    currentNetworkAssociation = [wifiManager currentNetworkAssociation];
    networkAssociation = self->_networkAssociation;
    self->_networkAssociation = currentNetworkAssociation;
  }

  networkAssociation = [(HMDNetworkObserver *)self networkAssociation];
  bSSID = [networkAssociation BSSID];
  formattedString = [bSSID formattedString];
  v27 = [formattedString substringToIndex:8];

  networkAssociation2 = [(HMDNetworkObserver *)self networkAssociation];
  sSID = [networkAssociation2 SSID];

  networkAssociation3 = [(HMDNetworkObserver *)self networkAssociation];
  gatewayMACAddress = [networkAssociation3 gatewayMACAddress];
  formattedString2 = [gatewayMACAddress formattedString];

  os_unfair_lock_unlock(&self->_networkAssociationLock);
  dateProvider = [(HMDNetworkObserver *)self dateProvider];
  currentHomeDataSource = [(HMDNetworkObserver *)self currentHomeDataSource];
  homeUUIDForCurrentResidentDevice = [currentHomeDataSource homeUUIDForCurrentResidentDevice];

  tickBlock = [(HMDNetworkObserver *)self tickBlock];
  v22 = ((tickBlock[2]() - self->_collectionStartSeconds) / 0x3C);

  v20 = -[HMDNetworkStabilityLogEvent initWithHomeUUID:numWifiAssociations:wifiDisassociations:apChanges:gatewayChanges:numReadWrites:numReadErrors:numWriteErrors:topReadWriteError:topSessionError:numSessionErrors:apOUI:ssid:gatewayMACAddress:localHourOfDay:collectionDurationMinutes:]([HMDNetworkStabilityLogEvent alloc], "initWithHomeUUID:numWifiAssociations:wifiDisassociations:apChanges:gatewayChanges:numReadWrites:numReadErrors:numWriteErrors:topReadWriteError:topSessionError:numSessionErrors:apOUI:ssid:gatewayMACAddress:localHourOfDay:collectionDurationMinutes:", homeUUIDForCurrentResidentDevice, -[HMDNetworkObserver numWifiAssociations](self, "numWifiAssociations"), -[HMDNetworkObserver numWifiDisassociations](self, "numWifiDisassociations"), -[HMDNetworkObserver numAPChanges](self, "numAPChanges"), -[HMDNetworkObserver numGatewayChanges](self, "numGatewayChanges"), -[HMDNetworkObserver numReadWrites](self, "numReadWrites"), -[HMDNetworkObserver numReadErrors](self, "numReadErrors"), -[HMDNetworkObserver numWriteErrors](self, "numWriteErrors"), v28, v24, unsignedIntValue, v27, sSID, formattedString2, [dateProvider localHourOfDay], v22);
  if (v20)
  {
    logEventDispatcher = [(HMDNetworkObserver *)self logEventDispatcher];
    [logEventDispatcher submitLogEvent:v20];
  }

  [(HMDNetworkObserver *)self _clearNonPersistentCounters];
}

- (void)observeEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = eventCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (v5)
  {
    [(HMDNetworkObserver *)self _handleReadWriteLogEvent:v5];
  }

  else
  {
    v6 = eventCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (!v8)
    {
      goto LABEL_12;
    }

    [(HMDNetworkObserver *)self _handleAccessorySessionEvent:v8];
  }

LABEL_12:
}

- (void)_handleAccessorySessionEvent:(id)event
{
  eventCopy = event;
  topErrorDomain = [eventCopy topErrorDomain];

  if (topErrorDomain)
  {
    homeUUID = [eventCopy homeUUID];
    dateProvider = [(HMDNetworkObserver *)self dateProvider];
    startOfCurrentDay = [dateProvider startOfCurrentDay];
    v8 = [(HMDNetworkObserver *)self counterGroupForName:@"AccessorySessionErrorGroup" homeUUID:homeUUID date:startOfCurrentDay];

    v9 = MEMORY[0x277CCA9B8];
    topErrorDomain2 = [eventCopy topErrorDomain];
    v11 = [v9 errorWithDomain:topErrorDomain2 code:objc_msgSend(eventCopy userInfo:{"topErrorCode"), 0}];
    v12 = [HMDLogEventErrorEventsAnalyzer eventCounterNameForError:v11];

    [v8 incrementEventCounterForEventName:v12 withValue:{objc_msgSend(eventCopy, "sessionFailures")}];
    topSessionErrors = [(HMDNetworkObserver *)self topSessionErrors];
    -[HMDNetworkObserver _incrementError:forHistogram:byValue:](self, "_incrementError:forHistogram:byValue:", v12, topSessionErrors, [eventCopy sessionFailures]);
  }
}

- (void)_handleReadWriteLogEvent:(id)event
{
  eventCopy = event;
  dateProvider = [(HMDNetworkObserver *)self dateProvider];
  startOfCurrentDay = [dateProvider startOfCurrentDay];

  homeUUID = [eventCopy homeUUID];
  countersManager = [(HMDNetworkObserver *)self countersManager];
  v8 = [HMDDateCounterGroupSpecifier specifierWithGroupName:@"NetworkStatusEventGroup" date:startOfCurrentDay];
  v9 = [countersManager objectForKeyedSubscript:v8];

  v10 = [(HMDNetworkObserver *)self counterGroupForName:@"ReadWriteErrorEventGroup" homeUUID:homeUUID date:startOfCurrentDay];
  [v9 incrementEventCounterForEventName:@"ReadWriteCount"];
  ++self->_numReadWrites;
  error = [eventCopy error];

  if (error)
  {
    isWriteOperation = [eventCopy isWriteOperation];
    if (isWriteOperation)
    {
      v13 = @"WriteErrorCount";
    }

    else
    {
      v13 = @"ReadErrorCount";
    }

    if (isWriteOperation)
    {
      v14 = 136;
    }

    else
    {
      v14 = 128;
    }

    [v9 incrementEventCounterForEventName:v13];
    ++*(&self->super.isa + v14);
    error2 = [eventCopy error];
    v16 = [HMDLogEventErrorEventsAnalyzer eventCounterNameForError:error2];

    [v10 incrementEventCounterForEventName:v16];
    topWriteErrors = [(HMDNetworkObserver *)self topWriteErrors];
    [(HMDNetworkObserver *)self _incrementError:v16 forHistogram:topWriteErrors byValue:1];
  }
}

- (void)_clearNonPersistentCounters
{
  self->_numWriteErrors = 0;
  *&self->_numReadWrites = 0u;
  *&self->_numAPChanges = 0u;
  *&self->_numWifiAssociations = 0u;
  tickBlock = [(HMDNetworkObserver *)self tickBlock];
  self->_collectionStartSeconds = tickBlock[2]();

  topWriteErrors = [(HMDNetworkObserver *)self topWriteErrors];
  [topWriteErrors removeAllObjects];

  topSessionErrors = [(HMDNetworkObserver *)self topSessionErrors];
  [topSessionErrors removeAllObjects];
}

- (id)_keyOfLargestCountInHistogram:(id)histogram
{
  histogramCopy = histogram;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__193662;
  v11 = __Block_byref_object_dispose__193663;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__HMDNetworkObserver__keyOfLargestCountInHistogram___block_invoke;
  v6[3] = &unk_279735960;
  v6[4] = v13;
  v6[5] = &v7;
  [histogramCopy enumerateKeysAndObjectsUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(v13, 8);

  return v4;
}

void __52__HMDNetworkObserver__keyOfLargestCountInHistogram___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  if (*(*(*(a1 + 32) + 8) + 24) < [v6 unsignedIntValue])
  {
    *(*(*(a1 + 32) + 8) + 24) = [v6 unsignedIntValue];
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (void)_incrementError:(id)error forHistogram:(id)histogram byValue:(unint64_t)value
{
  histogramCopy = histogram;
  errorCopy = error;
  v9 = [histogramCopy objectForKeyedSubscript:errorCopy];
  v11 = v9;
  if (v9)
  {
    [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v9, "unsignedLongValue") + value}];
  }

  else
  {
    [MEMORY[0x277CCABB0] numberWithUnsignedInteger:value];
  }
  v10 = ;
  [histogramCopy setObject:v10 forKeyedSubscript:errorCopy];
}

- (void)_handleCurrentNetworkChangedNotification:(id)notification
{
  wifiManager = [(HMDNetworkObserver *)self wifiManager];
  currentNetworkAssociation = [wifiManager currentNetworkAssociation];

  countersManager = [(HMDNetworkObserver *)self countersManager];
  dateProvider = [(HMDNetworkObserver *)self dateProvider];
  startOfCurrentDay = [dateProvider startOfCurrentDay];
  v8 = [HMDDateCounterGroupSpecifier specifierWithGroupName:@"NetworkStatusEventGroup" date:startOfCurrentDay];
  v9 = [countersManager objectForKeyedSubscript:v8];

  if (currentNetworkAssociation && ([currentNetworkAssociation SSID], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    changeDebounceTimer = [(HMDNetworkObserver *)self changeDebounceTimer];
    [changeDebounceTimer resume];
  }

  else if (self->_wifiAssociated)
  {
    self->_wifiAssociated = 0;
    [v9 incrementEventCounterForEventName:@"WifiDissociationCount"];
    ++self->_numWifiDisassociations;
  }
}

- (id)counterGroupForName:(id)name homeUUID:(id)d date:(id)date
{
  if (d)
  {
    dateCopy = date;
    dCopy = d;
    nameCopy = name;
    countersManager = [(HMDNetworkObserver *)self countersManager];
    v12 = [HMDHouseholdDataEventCounterGroupSpecifier specifierWithGroupName:nameCopy homeUUID:dCopy date:dateCopy];

    v13 = [countersManager objectForKeyedSubscript:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)stop
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_started)
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Stopping", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    changeDebounceTimer = [(HMDNetworkObserver *)selfCopy changeDebounceTimer];
    [changeDebounceTimer suspend];

    logEventDispatcher = [(HMDNetworkObserver *)selfCopy logEventDispatcher];
    [logEventDispatcher removeObserver:selfCopy];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:selfCopy name:*MEMORY[0x277D0F768] object:0];

    self->_started = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v17 = *MEMORY[0x277D85DE8];
  if (!self->_started)
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    v7 = *MEMORY[0x277D0F768];
    v8 = [MEMORY[0x277CCAB88] notificationWithName:*MEMORY[0x277D0F768] object:0];
    [(HMDNetworkObserver *)selfCopy _handleCurrentNetworkChangedNotification:v8];

    logEventDispatcher = [(HMDNetworkObserver *)selfCopy logEventDispatcher];
    supportedEventClasses = [objc_opt_class() supportedEventClasses];
    [logEventDispatcher addObserver:selfCopy forEventClasses:supportedEventClasses];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:selfCopy selector:sel__handleCurrentNetworkChangedNotification_ name:v7 object:0];

    tickBlock = [(HMDNetworkObserver *)selfCopy tickBlock];
    selfCopy->_collectionStartSeconds = tickBlock[2]();

    self->_started = 1;
    dailyScheduler = [(HMDNetworkObserver *)selfCopy dailyScheduler];
    [dailyScheduler registerDailyTaskRunner:selfCopy];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (HMDNetworkObserver)initWithLogEventDispatcher:(id)dispatcher countersManager:(id)manager dailyScheduler:(id)scheduler currentHomeDataSource:(id)source dateProvider:(id)provider wifiManager:(id)wifiManager notificationCenter:(id)center changeDebounceTimer:(id)self0 tickBlock:(id)self1
{
  dispatcherCopy = dispatcher;
  managerCopy = manager;
  obj = scheduler;
  sourceCopy = source;
  providerCopy = provider;
  wifiManagerCopy = wifiManager;
  centerCopy = center;
  timerCopy = timer;
  blockCopy = block;
  v35.receiver = self;
  v35.super_class = HMDNetworkObserver;
  v23 = [(HMDNetworkObserver *)&v35 init];
  v24 = v23;
  if (v23)
  {
    objc_storeWeak(&v23->_logEventDispatcher, dispatcherCopy);
    objc_storeWeak(&v24->_countersManager, managerCopy);
    objc_storeWeak(&v24->_wifiManager, wifiManagerCopy);
    objc_storeWeak(&v24->_notificationCenter, centerCopy);
    v24->_wifiAssociated = 0;
    objc_storeWeak(&v24->_currentHomeDataSource, sourceCopy);
    objc_storeWeak(&v24->_dateProvider, providerCopy);
    objc_storeWeak(&v24->_dailyScheduler, obj);
    v25 = _Block_copy(blockCopy);
    tickBlock = v24->_tickBlock;
    v24->_tickBlock = v25;

    v24->_networkAssociationLock._os_unfair_lock_opaque = 0;
    *&v24->_numWifiAssociations = 0u;
    *&v24->_numAPChanges = 0u;
    *&v24->_numReadWrites = 0u;
    v24->_numWriteErrors = 0;
    objc_storeStrong(&v24->_changeDebounceTimer, timer);
    [(HMFTimer *)v24->_changeDebounceTimer setDelegate:v24];
    v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
    topWriteErrors = v24->_topWriteErrors;
    v24->_topWriteErrors = v27;

    v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
    topSessionErrors = v24->_topSessionErrors;
    v24->_topSessionErrors = v29;

    v24->_started = 0;
  }

  return v24;
}

- (HMDNetworkObserver)initWithLogEventDispatcher:(id)dispatcher countersManager:(id)manager dailyScheduler:(id)scheduler currentHomeDataSource:(id)source dateProvider:(id)provider
{
  v12 = MEMORY[0x277D0F950];
  providerCopy = provider;
  sourceCopy = source;
  schedulerCopy = scheduler;
  managerCopy = manager;
  dispatcherCopy = dispatcher;
  sharedManager = [v12 sharedManager];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v20 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:1.0];
  v21 = [(HMDNetworkObserver *)self initWithLogEventDispatcher:dispatcherCopy countersManager:managerCopy dailyScheduler:schedulerCopy currentHomeDataSource:sourceCopy dateProvider:providerCopy wifiManager:sharedManager notificationCenter:defaultCenter changeDebounceTimer:v20 tickBlock:&__block_literal_global_42_193677];

  return v21;
}

+ (id)supportedEventClasses
{
  if (supportedEventClasses_onceToken_193682 != -1)
  {
    dispatch_once(&supportedEventClasses_onceToken_193682, &__block_literal_global_193683);
  }

  v3 = supportedEventClasses_supportedEventClasses_193684;

  return v3;
}

void __43__HMDNetworkObserver_supportedEventClasses__block_invoke()
{
  v3[2] = *MEMORY[0x277D85DE8];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:2];
  v1 = supportedEventClasses_supportedEventClasses_193684;
  supportedEventClasses_supportedEventClasses_193684 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end