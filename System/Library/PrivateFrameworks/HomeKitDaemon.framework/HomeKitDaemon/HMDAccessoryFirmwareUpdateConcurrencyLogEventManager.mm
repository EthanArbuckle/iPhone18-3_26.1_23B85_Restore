@interface HMDAccessoryFirmwareUpdateConcurrencyLogEventManager
- (HMDAccessoryFirmwareUpdateConcurrencyLogEventManager)initWithCountersManager:(id)manager;
- (unint64_t)differenceFromCounterWithCategory:(unint64_t)category;
- (void)startApplyWithAccessory:(id)accessory;
- (void)startStagingWithAccessory:(id)accessory;
- (void)startWithCategory:(unint64_t)category accessory:(id)accessory;
- (void)stopApplyWithAccessory:(id)accessory;
- (void)stopStagingWithAccessory:(id)accessory;
- (void)stopWithCategory:(unint64_t)category accessory:(id)accessory;
- (void)submitLogEvent;
@end

@implementation HMDAccessoryFirmwareUpdateConcurrencyLogEventManager

- (void)submitLogEvent
{
  v3 = [[HMDAccessoryFirmwareUpdateConcurrencyLogEvent alloc] initWithPeakConcurrentIPAccessoryUpdateStaging:[(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self differenceFromCounterWithCategory:1] peakConcurrentIPAccessoryUpdateApply:[(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self differenceFromCounterWithCategory:2] peakConcurrentBLEAccessoryUpdateStaging:[(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self differenceFromCounterWithCategory:3] peakConcurrentBLEAccessoryUpdateApply:[(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self differenceFromCounterWithCategory:4] peakConcurrentThreadAccessoryUpdateStaging:[(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self differenceFromCounterWithCategory:5] peakConcurrentThreadAccessoryUpdateApply:[(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self differenceFromCounterWithCategory:6]];
  v2 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v2 submitLogEvent:v3];
}

- (unint64_t)differenceFromCounterWithCategory:(unint64_t)category
{
  if (category - 1 > 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = @"HMDLogEventPeakConcurrentIPAccessoryUpdateStagingCounter";
    v6 = @"HMDLogEventPeakConcurrentIPAccessoryUpdateStagingCounter";
  }

  countersManager = [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self countersManager];
  v8 = [countersManager fetchEventCounterForEventName:v5 requestGroup:@"HMDLogEventAccessoryFirmwareUpdateRequestGroup"];

  os_unfair_lock_lock_with_options();
  peakActivity = [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self peakActivity];
  v10 = [peakActivity objectAtIndexedSubscript:category];
  unsignedIntegerValue = [v10 unsignedIntegerValue];

  currentActivity = [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self currentActivity];
  v13 = [currentActivity objectAtIndexedSubscript:category];
  unsignedIntegerValue2 = [v13 unsignedIntegerValue];

  if (!v8 && unsignedIntegerValue)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue2];
    peakActivity2 = [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self peakActivity];
    [peakActivity2 setObject:v15 atIndexedSubscript:category];
  }

  os_unfair_lock_unlock(&self->_lock);

  return unsignedIntegerValue - unsignedIntegerValue2;
}

- (void)stopWithCategory:(unint64_t)category accessory:(id)accessory
{
  v46 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  inProgress = [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self inProgress];
  uuid = [(__CFString *)accessoryCopy uuid];
  v9 = [inProgress objectForKeyedSubscript:uuid];

  if (v9)
  {
    unsignedIntValue = [v9 unsignedIntValue];
    if (unsignedIntValue != category)
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = HMFGetLogIdentifier();
        if (category - 1 > 6)
        {
          v15 = @"HMDAccessoryFirmwareUpdateConcurrencyCategoryUnknown";
        }

        else
        {
          v15 = off_278679A28[category - 1];
        }

        v23 = v15;
        if ((unsignedIntValue - 1) > 6)
        {
          v24 = @"HMDAccessoryFirmwareUpdateConcurrencyCategoryUnknown";
        }

        else
        {
          v24 = off_278679A28[unsignedIntValue - 1];
        }

        v25 = v24;
        v40 = 138543874;
        v41 = v14;
        v42 = 2112;
        v43 = v23;
        v44 = 2112;
        v45 = v25;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Stopping with mismatched categories current: %@, at start: %@", &v40, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
    }

    os_unfair_lock_lock_with_options();
    currentActivity = [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self currentActivity];
    v27 = [currentActivity objectAtIndexedSubscript:unsignedIntValue];
    unsignedIntegerValue = [v27 unsignedIntegerValue];

    if (unsignedIntegerValue)
    {
      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue - 1];
      currentActivity2 = [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self currentActivity];
      [currentActivity2 setObject:v29 atIndexedSubscript:unsignedIntValue];
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        if ((unsignedIntValue - 1) > 6)
        {
          v35 = @"HMDAccessoryFirmwareUpdateConcurrencyCategoryUnknown";
        }

        else
        {
          v35 = off_278679A28[unsignedIntValue - 1];
        }

        v36 = v35;
        v40 = 138543874;
        v41 = v34;
        v42 = 2112;
        v43 = v36;
        v44 = 2112;
        v45 = accessoryCopy;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Stopping category %@ when current activity is 0 for accessory %@", &v40, 0x20u);
      }

      objc_autoreleasePoolPop(v31);
    }

    inProgress2 = [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self inProgress];
    uuid2 = [(__CFString *)accessoryCopy uuid];
    [inProgress2 setObject:0 forKeyedSubscript:uuid2];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [0 unsignedIntValue] - 1;
      if (v20 > 6)
      {
        v21 = @"HMDAccessoryFirmwareUpdateConcurrencyCategoryUnknown";
      }

      else
      {
        v21 = off_278679A28[v20];
      }

      v22 = v21;
      v40 = 138543874;
      v41 = v19;
      v42 = 2112;
      v43 = v22;
      v44 = 2112;
      v45 = accessoryCopy;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Stopping %@ when nothing is in progress for accessory %@", &v40, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)startWithCategory:(unint64_t)category accessory:(id)accessory
{
  v42 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  inProgress = [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self inProgress];
  uuid = [accessoryCopy uuid];
  v9 = [inProgress objectForKeyedSubscript:uuid];

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      if (category - 1 > 6)
      {
        v14 = @"HMDAccessoryFirmwareUpdateConcurrencyCategoryUnknown";
      }

      else
      {
        v14 = off_278679A28[category - 1];
      }

      v15 = v14;
      v16 = [v9 unsignedIntValue] - 1;
      if (v16 > 6)
      {
        v17 = @"HMDAccessoryFirmwareUpdateConcurrencyCategoryUnknown";
      }

      else
      {
        v17 = off_278679A28[v16];
      }

      v18 = v17;
      v34 = 138544130;
      v35 = v13;
      v36 = 2112;
      v37 = v15;
      v38 = 2112;
      v39 = v18;
      v40 = 2112;
      v41 = accessoryCopy;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Starting %@ while %@ is in progress for accessory %@", &v34, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
    [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)selfCopy stopStagingWithAccessory:accessoryCopy];
  }

  os_unfair_lock_lock_with_options();
  currentActivity = [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self currentActivity];
  v20 = [currentActivity objectAtIndexedSubscript:category];
  unsignedIntegerValue = [v20 unsignedIntegerValue];

  peakActivity = [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self peakActivity];
  v23 = [peakActivity objectAtIndexedSubscript:category];
  unsignedIntegerValue2 = [v23 unsignedIntegerValue];

  if (unsignedIntegerValue + 1 > unsignedIntegerValue2)
  {
    v25 = unsignedIntegerValue + 1;
  }

  else
  {
    v25 = unsignedIntegerValue2;
  }

  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  currentActivity2 = [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self currentActivity];
  [currentActivity2 setObject:v26 atIndexedSubscript:category];

  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v25];
  peakActivity2 = [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self peakActivity];
  [peakActivity2 setObject:v28 atIndexedSubscript:category];

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:category];
  inProgress2 = [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self inProgress];
  uuid2 = [accessoryCopy uuid];
  [inProgress2 setObject:v30 forKeyedSubscript:uuid2];

  os_unfair_lock_unlock(&self->_lock);
  [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self submitLogEvent];

  v33 = *MEMORY[0x277D85DE8];
}

- (void)stopApplyWithAccessory:(id)accessory
{
  accessoryCopy = accessory;
  [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self stopWithCategory:2 * getAccessoryFirmwareUpdateActiveTransport(accessoryCopy) - 2 accessory:accessoryCopy];
}

- (void)stopStagingWithAccessory:(id)accessory
{
  accessoryCopy = accessory;
  [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self stopWithCategory:qword_22A587768[getAccessoryFirmwareUpdateActiveTransport(accessoryCopy) - 1] accessory:accessoryCopy];
}

- (void)startApplyWithAccessory:(id)accessory
{
  accessoryCopy = accessory;
  [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self startWithCategory:2 * getAccessoryFirmwareUpdateActiveTransport(accessoryCopy) - 2 accessory:accessoryCopy];
}

- (void)startStagingWithAccessory:(id)accessory
{
  accessoryCopy = accessory;
  [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self startWithCategory:qword_22A587768[getAccessoryFirmwareUpdateActiveTransport(accessoryCopy) - 1] accessory:accessoryCopy];
}

- (HMDAccessoryFirmwareUpdateConcurrencyLogEventManager)initWithCountersManager:(id)manager
{
  managerCopy = manager;
  v16.receiver = self;
  v16.super_class = HMDAccessoryFirmwareUpdateConcurrencyLogEventManager;
  v6 = [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)&v16 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:7];
    currentActivity = v7->_currentActivity;
    v7->_currentActivity = v8;

    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:7];
    peakActivity = v7->_peakActivity;
    v7->_peakActivity = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    inProgress = v7->_inProgress;
    v7->_inProgress = v12;

    objc_storeStrong(&v7->_countersManager, manager);
    for (i = 0; i != 7; ++i)
    {
      [(NSMutableArray *)v7->_currentActivity setObject:&unk_283E72DE8 atIndexedSubscript:i];
      [(NSMutableArray *)v7->_peakActivity setObject:&unk_283E72DE8 atIndexedSubscript:i];
    }
  }

  return v7;
}

@end