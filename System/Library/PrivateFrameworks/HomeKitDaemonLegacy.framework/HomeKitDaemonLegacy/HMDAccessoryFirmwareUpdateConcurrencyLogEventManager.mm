@interface HMDAccessoryFirmwareUpdateConcurrencyLogEventManager
- (HMDAccessoryFirmwareUpdateConcurrencyLogEventManager)initWithCountersManager:(id)a3;
- (unint64_t)differenceFromCounterWithCategory:(unint64_t)a3;
- (void)startApplyWithAccessory:(id)a3;
- (void)startStagingWithAccessory:(id)a3;
- (void)startWithCategory:(unint64_t)a3 accessory:(id)a4;
- (void)stopApplyWithAccessory:(id)a3;
- (void)stopStagingWithAccessory:(id)a3;
- (void)stopWithCategory:(unint64_t)a3 accessory:(id)a4;
- (void)submitLogEvent;
@end

@implementation HMDAccessoryFirmwareUpdateConcurrencyLogEventManager

- (void)submitLogEvent
{
  v3 = [[HMDAccessoryFirmwareUpdateConcurrencyLogEvent alloc] initWithPeakConcurrentIPAccessoryUpdateStaging:[(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self differenceFromCounterWithCategory:1] peakConcurrentIPAccessoryUpdateApply:[(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self differenceFromCounterWithCategory:2] peakConcurrentBLEAccessoryUpdateStaging:[(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self differenceFromCounterWithCategory:3] peakConcurrentBLEAccessoryUpdateApply:[(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self differenceFromCounterWithCategory:4] peakConcurrentThreadAccessoryUpdateStaging:[(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self differenceFromCounterWithCategory:5] peakConcurrentThreadAccessoryUpdateApply:[(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self differenceFromCounterWithCategory:6]];
  v2 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v2 submitLogEvent:v3];
}

- (unint64_t)differenceFromCounterWithCategory:(unint64_t)a3
{
  if (a3 - 1 > 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = @"HMDLogEventPeakConcurrentIPAccessoryUpdateStagingCounter";
    v6 = @"HMDLogEventPeakConcurrentIPAccessoryUpdateStagingCounter";
  }

  v7 = [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self countersManager];
  v8 = [v7 fetchEventCounterForEventName:v5 requestGroup:@"HMDLogEventAccessoryFirmwareUpdateRequestGroup"];

  os_unfair_lock_lock_with_options();
  v9 = [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self peakActivity];
  v10 = [v9 objectAtIndexedSubscript:a3];
  v11 = [v10 unsignedIntegerValue];

  v12 = [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self currentActivity];
  v13 = [v12 objectAtIndexedSubscript:a3];
  v14 = [v13 unsignedIntegerValue];

  if (!v8 && v11)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
    v16 = [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self peakActivity];
    [v16 setObject:v15 atIndexedSubscript:a3];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v11 - v14;
}

- (void)stopWithCategory:(unint64_t)a3 accessory:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self inProgress];
  v8 = [(__CFString *)v6 uuid];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = [v9 unsignedIntValue];
    if (v10 != a3)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = HMFGetLogIdentifier();
        if (a3 - 1 > 6)
        {
          v15 = @"HMDAccessoryFirmwareUpdateConcurrencyCategoryUnknown";
        }

        else
        {
          v15 = off_279729390[a3 - 1];
        }

        v23 = v15;
        if ((v10 - 1) > 6)
        {
          v24 = @"HMDAccessoryFirmwareUpdateConcurrencyCategoryUnknown";
        }

        else
        {
          v24 = off_279729390[v10 - 1];
        }

        v25 = v24;
        v40 = 138543874;
        v41 = v14;
        v42 = 2112;
        v43 = v23;
        v44 = 2112;
        v45 = v25;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Stopping with mismatched categories current: %@, at start: %@", &v40, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
    }

    os_unfair_lock_lock_with_options();
    v26 = [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self currentActivity];
    v27 = [v26 objectAtIndexedSubscript:v10];
    v28 = [v27 unsignedIntegerValue];

    if (v28)
    {
      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v28 - 1];
      v30 = [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self currentActivity];
      [v30 setObject:v29 atIndexedSubscript:v10];
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      v32 = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        if ((v10 - 1) > 6)
        {
          v35 = @"HMDAccessoryFirmwareUpdateConcurrencyCategoryUnknown";
        }

        else
        {
          v35 = off_279729390[v10 - 1];
        }

        v36 = v35;
        v40 = 138543874;
        v41 = v34;
        v42 = 2112;
        v43 = v36;
        v44 = 2112;
        v45 = v6;
        _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Stopping category %@ when current activity is 0 for accessory %@", &v40, 0x20u);
      }

      objc_autoreleasePoolPop(v31);
    }

    v37 = [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self inProgress];
    v38 = [(__CFString *)v6 uuid];
    [v37 setObject:0 forKeyedSubscript:v38];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
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
        v21 = off_279729390[v20];
      }

      v22 = v21;
      v40 = 138543874;
      v41 = v19;
      v42 = 2112;
      v43 = v22;
      v44 = 2112;
      v45 = v6;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Stopping %@ when nothing is in progress for accessory %@", &v40, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)startWithCategory:(unint64_t)a3 accessory:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self inProgress];
  v8 = [v6 uuid];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      if (a3 - 1 > 6)
      {
        v14 = @"HMDAccessoryFirmwareUpdateConcurrencyCategoryUnknown";
      }

      else
      {
        v14 = off_279729390[a3 - 1];
      }

      v15 = v14;
      v16 = [v9 unsignedIntValue] - 1;
      if (v16 > 6)
      {
        v17 = @"HMDAccessoryFirmwareUpdateConcurrencyCategoryUnknown";
      }

      else
      {
        v17 = off_279729390[v16];
      }

      v18 = v17;
      v34 = 138544130;
      v35 = v13;
      v36 = 2112;
      v37 = v15;
      v38 = 2112;
      v39 = v18;
      v40 = 2112;
      v41 = v6;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Starting %@ while %@ is in progress for accessory %@", &v34, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
    [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)v11 stopStagingWithAccessory:v6];
  }

  os_unfair_lock_lock_with_options();
  v19 = [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self currentActivity];
  v20 = [v19 objectAtIndexedSubscript:a3];
  v21 = [v20 unsignedIntegerValue];

  v22 = [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self peakActivity];
  v23 = [v22 objectAtIndexedSubscript:a3];
  v24 = [v23 unsignedIntegerValue];

  if (v21 + 1 > v24)
  {
    v25 = v21 + 1;
  }

  else
  {
    v25 = v24;
  }

  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v27 = [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self currentActivity];
  [v27 setObject:v26 atIndexedSubscript:a3];

  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v25];
  v29 = [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self peakActivity];
  [v29 setObject:v28 atIndexedSubscript:a3];

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v31 = [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self inProgress];
  v32 = [v6 uuid];
  [v31 setObject:v30 forKeyedSubscript:v32];

  os_unfair_lock_unlock(&self->_lock);
  [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self submitLogEvent];

  v33 = *MEMORY[0x277D85DE8];
}

- (void)stopApplyWithAccessory:(id)a3
{
  v4 = a3;
  [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self stopWithCategory:2 * getAccessoryFirmwareUpdateActiveTransport(v4) - 2 accessory:v4];
}

- (void)stopStagingWithAccessory:(id)a3
{
  v4 = a3;
  [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self stopWithCategory:qword_253D4BBB0[getAccessoryFirmwareUpdateActiveTransport(v4) - 1] accessory:v4];
}

- (void)startApplyWithAccessory:(id)a3
{
  v4 = a3;
  [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self startWithCategory:2 * getAccessoryFirmwareUpdateActiveTransport(v4) - 2 accessory:v4];
}

- (void)startStagingWithAccessory:(id)a3
{
  v4 = a3;
  [(HMDAccessoryFirmwareUpdateConcurrencyLogEventManager *)self startWithCategory:qword_253D4BBB0[getAccessoryFirmwareUpdateActiveTransport(v4) - 1] accessory:v4];
}

- (HMDAccessoryFirmwareUpdateConcurrencyLogEventManager)initWithCountersManager:(id)a3
{
  v5 = a3;
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

    objc_storeStrong(&v7->_countersManager, a3);
    for (i = 0; i != 7; ++i)
    {
      [(NSMutableArray *)v7->_currentActivity setObject:&unk_286628570 atIndexedSubscript:i];
      [(NSMutableArray *)v7->_peakActivity setObject:&unk_286628570 atIndexedSubscript:i];
    }
  }

  return v7;
}

@end