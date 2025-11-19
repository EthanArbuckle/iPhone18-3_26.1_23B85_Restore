@interface HMDNetworkObserver
+ (id)supportedEventClasses;
- (HMDCurrentResidentDeviceDataSource)currentHomeDataSource;
- (HMDEventCountersManager)countersManager;
- (HMDNetworkObserver)initWithLogEventDispatcher:(id)a3 countersManager:(id)a4 dailyScheduler:(id)a5 currentHomeDataSource:(id)a6 dateProvider:(id)a7;
- (HMDNetworkObserver)initWithLogEventDispatcher:(id)a3 countersManager:(id)a4 dailyScheduler:(id)a5 currentHomeDataSource:(id)a6 dateProvider:(id)a7 wifiManager:(id)a8 notificationCenter:(id)a9 changeDebounceTimer:(id)a10 tickBlock:(id)a11;
- (HMFWiFiManager)wifiManager;
- (HMMDailyScheduler)dailyScheduler;
- (HMMDateProvider)dateProvider;
- (HMMLogEventDispatching)logEventDispatcher;
- (NSNotificationCenter)notificationCenter;
- (id)_keyOfLargestCountInHistogram:(id)a3;
- (id)counterGroupForName:(id)a3 homeUUID:(id)a4 date:(id)a5;
- (id)logEventForHomeWithUUID:(id)a3 associatedWithDate:(id)a4;
- (void)_clearNonPersistentCounters;
- (void)_handleAccessorySessionEvent:(id)a3;
- (void)_handleCurrentNetworkChangedNotification:(id)a3;
- (void)_handleReadWriteLogEvent:(id)a3;
- (void)_incrementError:(id)a3 forHistogram:(id)a4 byValue:(unint64_t)a5;
- (void)checkNetworkChange;
- (void)deleteCountersAfterDate:(id)a3;
- (void)deleteCountersBeforeDate:(id)a3;
- (void)observeEvent:(id)a3;
- (void)runDailyTask;
- (void)start;
- (void)stop;
- (void)timerDidFire:(id)a3;
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

- (void)timerDidFire:(id)a3
{
  v4 = a3;
  v5 = [(HMDNetworkObserver *)self changeDebounceTimer];

  if (v5 == v4)
  {

    [(HMDNetworkObserver *)self checkNetworkChange];
  }
}

- (void)checkNetworkChange
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = [(HMDNetworkObserver *)self wifiManager];
  v4 = [v3 currentNetworkAssociation];

  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 SSID];
    v10 = [v4 MACAddress];
    v11 = [v4 BSSID];
    v12 = [v4 gatewayIPAddress];
    v13 = [v4 gatewayMACAddress];
    v29 = 138544642;
    v30 = v8;
    v31 = 2112;
    v32 = v9;
    v33 = 2112;
    v34 = v10;
    v35 = 2112;
    v36 = v11;
    v37 = 2112;
    v38 = v12;
    v39 = 2112;
    v40 = v13;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Network Change Detected.  New Network SSID %@ Local MAC %@, BSSID %@, gatewayIP %@,  gatewayMac %@", &v29, 0x3Eu);
  }

  objc_autoreleasePoolPop(v5);
  v14 = [(HMDNetworkObserver *)v6 countersManager];
  v15 = [(HMDNetworkObserver *)v6 dateProvider];
  v16 = [v15 startOfCurrentDay];
  v17 = [HMDDateCounterGroupSpecifier specifierWithGroupName:@"NetworkStatusEventGroup" date:v16];
  v18 = [v14 objectForKeyedSubscript:v17];

  if (v4)
  {
    v19 = [v4 SSID];

    if (v19)
    {
      if (!v6->_wifiAssociated)
      {
        [v18 incrementEventCounterForEventName:@"WifiAssociationCount"];
        ++v6->_numWifiAssociations;
      }

      v6->_wifiAssociated = 1;
      v20 = [v4 BSSID];
      v21 = [(HMDNetworkObserver *)v6 networkAssociation];
      v22 = [v21 BSSID];
      v23 = [v20 isEqualToAddress:v22];

      if ((v23 & 1) == 0)
      {
        [v18 incrementEventCounterForEventName:@"APChangeCount"];
        ++v6->_numAPChanges;
      }

      v24 = [v4 gatewayMACAddress];
      v25 = [(HMDNetworkObserver *)v6 networkAssociation];
      v26 = [v25 gatewayMACAddress];
      v27 = [v24 isEqualToAddress:v26];

      if ((v27 & 1) == 0)
      {
        [v18 incrementEventCounterForEventName:@"GatewayChangeCount"];
        ++v6->_numGatewayChanges;
      }

      os_unfair_lock_lock_with_options();
      objc_storeStrong(&v6->_networkAssociation, v4);
      os_unfair_lock_unlock(&v6->_networkAssociationLock);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)deleteCountersAfterDate:(id)a3
{
  v4 = a3;
  v5 = [(HMDNetworkObserver *)self countersManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__HMDNetworkObserver_deleteCountersAfterDate___block_invoke;
  v7[3] = &unk_279735988;
  v8 = v4;
  v6 = v4;
  [v5 removeCounterGroupsBasedOnPredicate:v7];
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

- (void)deleteCountersBeforeDate:(id)a3
{
  v4 = a3;
  v5 = [(HMDNetworkObserver *)self countersManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__HMDNetworkObserver_deleteCountersBeforeDate___block_invoke;
  v7[3] = &unk_279735988;
  v8 = v4;
  v6 = v4;
  [v5 removeCounterGroupsBasedOnPredicate:v7];
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

- (id)logEventForHomeWithUUID:(id)a3 associatedWithDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDNetworkObserver *)self currentHomeDataSource];
  v9 = [v8 homeUUIDForCurrentResidentDevice];
  v10 = [v6 hmf_isEqualToUUID:v9];

  if (v10)
  {
    v11 = [(HMDNetworkObserver *)self countersManager];
    v12 = [HMDDateCounterGroupSpecifier specifierWithGroupName:@"NetworkStatusEventGroup" date:v7];
    v13 = [v11 objectForKeyedSubscript:v12];

    v14 = [(HMDNetworkObserver *)self counterGroupForName:@"ReadWriteErrorEventGroup" homeUUID:v6 date:v7];
    v15 = [(HMDNetworkObserver *)self counterGroupForName:@"AccessorySessionErrorGroup" homeUUID:v6 date:v7];
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
      v17 = [(HMDNetworkObserver *)self wifiManager];
      v18 = [v17 currentNetworkAssociation];
      networkAssociation = self->_networkAssociation;
      self->_networkAssociation = v18;
    }

    v20 = [(HMDNetworkObserver *)self networkAssociation];
    v21 = [v20 BSSID];
    v22 = [v21 formattedString];
    v23 = [v22 substringToIndex:8];

    v24 = [(HMDNetworkObserver *)self networkAssociation];
    v25 = [v24 SSID];

    v26 = [(HMDNetworkObserver *)self networkAssociation];
    v27 = [v26 gatewayMACAddress];
    v28 = [v27 formattedString];

    os_unfair_lock_unlock(&self->_networkAssociationLock);
    v29 = [[HMDNetworkStabilityLogEvent alloc] initWithHomeUUID:v6 numWifiAssociations:v39 wifiDisassociations:v38 apChanges:v37 gatewayChanges:v36 numReadWrites:v35 numReadErrors:v33 numWriteErrors:v32 topReadWriteError:v34 topSessionError:v16 numSessionErrors:v31 apOUI:v23 ssid:v25 gatewayMACAddress:v28 localHourOfDay:0 collectionDurationMinutes:0];
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (void)runDailyTask
{
  v3 = [(HMDNetworkObserver *)self topWriteErrors];
  v28 = [(HMDNetworkObserver *)self _keyOfLargestCountInHistogram:v3];

  v4 = [(HMDNetworkObserver *)self topSessionErrors];
  v5 = [(HMDNetworkObserver *)self _keyOfLargestCountInHistogram:v4];

  v24 = v5;
  if (v5)
  {
    v6 = [(HMDNetworkObserver *)self topSessionErrors];
    v7 = [v6 objectForKeyedSubscript:v5];
    v5 = [v7 unsignedIntValue];
  }

  os_unfair_lock_lock_with_options();
  if (!self->_networkAssociation)
  {
    v8 = [(HMDNetworkObserver *)self wifiManager];
    v9 = [v8 currentNetworkAssociation];
    networkAssociation = self->_networkAssociation;
    self->_networkAssociation = v9;
  }

  v11 = [(HMDNetworkObserver *)self networkAssociation];
  v12 = [v11 BSSID];
  v13 = [v12 formattedString];
  v27 = [v13 substringToIndex:8];

  v14 = [(HMDNetworkObserver *)self networkAssociation];
  v26 = [v14 SSID];

  v15 = [(HMDNetworkObserver *)self networkAssociation];
  v16 = [v15 gatewayMACAddress];
  v25 = [v16 formattedString];

  os_unfair_lock_unlock(&self->_networkAssociationLock);
  v17 = [(HMDNetworkObserver *)self dateProvider];
  v18 = [(HMDNetworkObserver *)self currentHomeDataSource];
  v23 = [v18 homeUUIDForCurrentResidentDevice];

  v19 = [(HMDNetworkObserver *)self tickBlock];
  v22 = ((v19[2]() - self->_collectionStartSeconds) / 0x3C);

  v20 = -[HMDNetworkStabilityLogEvent initWithHomeUUID:numWifiAssociations:wifiDisassociations:apChanges:gatewayChanges:numReadWrites:numReadErrors:numWriteErrors:topReadWriteError:topSessionError:numSessionErrors:apOUI:ssid:gatewayMACAddress:localHourOfDay:collectionDurationMinutes:]([HMDNetworkStabilityLogEvent alloc], "initWithHomeUUID:numWifiAssociations:wifiDisassociations:apChanges:gatewayChanges:numReadWrites:numReadErrors:numWriteErrors:topReadWriteError:topSessionError:numSessionErrors:apOUI:ssid:gatewayMACAddress:localHourOfDay:collectionDurationMinutes:", v23, -[HMDNetworkObserver numWifiAssociations](self, "numWifiAssociations"), -[HMDNetworkObserver numWifiDisassociations](self, "numWifiDisassociations"), -[HMDNetworkObserver numAPChanges](self, "numAPChanges"), -[HMDNetworkObserver numGatewayChanges](self, "numGatewayChanges"), -[HMDNetworkObserver numReadWrites](self, "numReadWrites"), -[HMDNetworkObserver numReadErrors](self, "numReadErrors"), -[HMDNetworkObserver numWriteErrors](self, "numWriteErrors"), v28, v24, v5, v27, v26, v25, [v17 localHourOfDay], v22);
  if (v20)
  {
    v21 = [(HMDNetworkObserver *)self logEventDispatcher];
    [v21 submitLogEvent:v20];
  }

  [(HMDNetworkObserver *)self _clearNonPersistentCounters];
}

- (void)observeEvent:(id)a3
{
  v9 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v9;
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
    v6 = v9;
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

- (void)_handleAccessorySessionEvent:(id)a3
{
  v14 = a3;
  v4 = [v14 topErrorDomain];

  if (v4)
  {
    v5 = [v14 homeUUID];
    v6 = [(HMDNetworkObserver *)self dateProvider];
    v7 = [v6 startOfCurrentDay];
    v8 = [(HMDNetworkObserver *)self counterGroupForName:@"AccessorySessionErrorGroup" homeUUID:v5 date:v7];

    v9 = MEMORY[0x277CCA9B8];
    v10 = [v14 topErrorDomain];
    v11 = [v9 errorWithDomain:v10 code:objc_msgSend(v14 userInfo:{"topErrorCode"), 0}];
    v12 = [HMDLogEventErrorEventsAnalyzer eventCounterNameForError:v11];

    [v8 incrementEventCounterForEventName:v12 withValue:{objc_msgSend(v14, "sessionFailures")}];
    v13 = [(HMDNetworkObserver *)self topSessionErrors];
    -[HMDNetworkObserver _incrementError:forHistogram:byValue:](self, "_incrementError:forHistogram:byValue:", v12, v13, [v14 sessionFailures]);
  }
}

- (void)_handleReadWriteLogEvent:(id)a3
{
  v18 = a3;
  v4 = [(HMDNetworkObserver *)self dateProvider];
  v5 = [v4 startOfCurrentDay];

  v6 = [v18 homeUUID];
  v7 = [(HMDNetworkObserver *)self countersManager];
  v8 = [HMDDateCounterGroupSpecifier specifierWithGroupName:@"NetworkStatusEventGroup" date:v5];
  v9 = [v7 objectForKeyedSubscript:v8];

  v10 = [(HMDNetworkObserver *)self counterGroupForName:@"ReadWriteErrorEventGroup" homeUUID:v6 date:v5];
  [v9 incrementEventCounterForEventName:@"ReadWriteCount"];
  ++self->_numReadWrites;
  v11 = [v18 error];

  if (v11)
  {
    v12 = [v18 isWriteOperation];
    if (v12)
    {
      v13 = @"WriteErrorCount";
    }

    else
    {
      v13 = @"ReadErrorCount";
    }

    if (v12)
    {
      v14 = 136;
    }

    else
    {
      v14 = 128;
    }

    [v9 incrementEventCounterForEventName:v13];
    ++*(&self->super.isa + v14);
    v15 = [v18 error];
    v16 = [HMDLogEventErrorEventsAnalyzer eventCounterNameForError:v15];

    [v10 incrementEventCounterForEventName:v16];
    v17 = [(HMDNetworkObserver *)self topWriteErrors];
    [(HMDNetworkObserver *)self _incrementError:v16 forHistogram:v17 byValue:1];
  }
}

- (void)_clearNonPersistentCounters
{
  self->_numWriteErrors = 0;
  *&self->_numReadWrites = 0u;
  *&self->_numAPChanges = 0u;
  *&self->_numWifiAssociations = 0u;
  v3 = [(HMDNetworkObserver *)self tickBlock];
  self->_collectionStartSeconds = v3[2]();

  v4 = [(HMDNetworkObserver *)self topWriteErrors];
  [v4 removeAllObjects];

  v5 = [(HMDNetworkObserver *)self topSessionErrors];
  [v5 removeAllObjects];
}

- (id)_keyOfLargestCountInHistogram:(id)a3
{
  v3 = a3;
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
  [v3 enumerateKeysAndObjectsUsingBlock:v6];
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

- (void)_incrementError:(id)a3 forHistogram:(id)a4 byValue:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [v7 objectForKeyedSubscript:v8];
  v11 = v9;
  if (v9)
  {
    [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v9, "unsignedLongValue") + a5}];
  }

  else
  {
    [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  }
  v10 = ;
  [v7 setObject:v10 forKeyedSubscript:v8];
}

- (void)_handleCurrentNetworkChangedNotification:(id)a3
{
  v4 = [(HMDNetworkObserver *)self wifiManager];
  v12 = [v4 currentNetworkAssociation];

  v5 = [(HMDNetworkObserver *)self countersManager];
  v6 = [(HMDNetworkObserver *)self dateProvider];
  v7 = [v6 startOfCurrentDay];
  v8 = [HMDDateCounterGroupSpecifier specifierWithGroupName:@"NetworkStatusEventGroup" date:v7];
  v9 = [v5 objectForKeyedSubscript:v8];

  if (v12 && ([v12 SSID], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    v11 = [(HMDNetworkObserver *)self changeDebounceTimer];
    [v11 resume];
  }

  else if (self->_wifiAssociated)
  {
    self->_wifiAssociated = 0;
    [v9 incrementEventCounterForEventName:@"WifiDissociationCount"];
    ++self->_numWifiDisassociations;
  }
}

- (id)counterGroupForName:(id)a3 homeUUID:(id)a4 date:(id)a5
{
  if (a4)
  {
    v8 = a5;
    v9 = a4;
    v10 = a3;
    v11 = [(HMDNetworkObserver *)self countersManager];
    v12 = [HMDHouseholdDataEventCounterGroupSpecifier specifierWithGroupName:v10 homeUUID:v9 date:v8];

    v13 = [v11 objectForKeyedSubscript:v12];
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
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Stopping", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    v7 = [(HMDNetworkObserver *)v4 changeDebounceTimer];
    [v7 suspend];

    v8 = [(HMDNetworkObserver *)v4 logEventDispatcher];
    [v8 removeObserver:v4];

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 removeObserver:v4 name:*MEMORY[0x277D0F768] object:0];

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
    v4 = self;
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
    [(HMDNetworkObserver *)v4 _handleCurrentNetworkChangedNotification:v8];

    v9 = [(HMDNetworkObserver *)v4 logEventDispatcher];
    v10 = [objc_opt_class() supportedEventClasses];
    [v9 addObserver:v4 forEventClasses:v10];

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:v4 selector:sel__handleCurrentNetworkChangedNotification_ name:v7 object:0];

    v12 = [(HMDNetworkObserver *)v4 tickBlock];
    v4->_collectionStartSeconds = v12[2]();

    self->_started = 1;
    v13 = [(HMDNetworkObserver *)v4 dailyScheduler];
    [v13 registerDailyTaskRunner:v4];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (HMDNetworkObserver)initWithLogEventDispatcher:(id)a3 countersManager:(id)a4 dailyScheduler:(id)a5 currentHomeDataSource:(id)a6 dateProvider:(id)a7 wifiManager:(id)a8 notificationCenter:(id)a9 changeDebounceTimer:(id)a10 tickBlock:(id)a11
{
  v16 = a3;
  v17 = a4;
  obj = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v33 = a10;
  v22 = a11;
  v35.receiver = self;
  v35.super_class = HMDNetworkObserver;
  v23 = [(HMDNetworkObserver *)&v35 init];
  v24 = v23;
  if (v23)
  {
    objc_storeWeak(&v23->_logEventDispatcher, v16);
    objc_storeWeak(&v24->_countersManager, v17);
    objc_storeWeak(&v24->_wifiManager, v20);
    objc_storeWeak(&v24->_notificationCenter, v21);
    v24->_wifiAssociated = 0;
    objc_storeWeak(&v24->_currentHomeDataSource, v18);
    objc_storeWeak(&v24->_dateProvider, v19);
    objc_storeWeak(&v24->_dailyScheduler, obj);
    v25 = _Block_copy(v22);
    tickBlock = v24->_tickBlock;
    v24->_tickBlock = v25;

    v24->_networkAssociationLock._os_unfair_lock_opaque = 0;
    *&v24->_numWifiAssociations = 0u;
    *&v24->_numAPChanges = 0u;
    *&v24->_numReadWrites = 0u;
    v24->_numWriteErrors = 0;
    objc_storeStrong(&v24->_changeDebounceTimer, a10);
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

- (HMDNetworkObserver)initWithLogEventDispatcher:(id)a3 countersManager:(id)a4 dailyScheduler:(id)a5 currentHomeDataSource:(id)a6 dateProvider:(id)a7
{
  v12 = MEMORY[0x277D0F950];
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [v12 sharedManager];
  v19 = [MEMORY[0x277CCAB98] defaultCenter];
  v20 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:1.0];
  v21 = [(HMDNetworkObserver *)self initWithLogEventDispatcher:v17 countersManager:v16 dailyScheduler:v15 currentHomeDataSource:v14 dateProvider:v13 wifiManager:v18 notificationCenter:v19 changeDebounceTimer:v20 tickBlock:&__block_literal_global_42_193677];

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