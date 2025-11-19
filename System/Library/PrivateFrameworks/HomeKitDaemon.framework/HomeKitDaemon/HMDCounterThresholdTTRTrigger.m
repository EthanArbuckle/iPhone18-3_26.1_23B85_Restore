@interface HMDCounterThresholdTTRTrigger
- (HMDCounterThresholdTTRTrigger)initWithThreshold:(int64_t)a3 displayReason:(id)a4 radarInitiator:(id)a5;
- (HMDCounterThresholdTTRTrigger)initWithThreshold:(int64_t)a3 displayReason:(id)a4 radarTitle:(id)a5 componentName:(id)a6 componentVersion:(id)a7 componentID:(int64_t)a8 radarInitiator:(id)a9 primaryOnly:(BOOL)a10 dataSource:(id)a11;
- (HMDTTRTriggerDataSource)dataSource;
- (HMMRadarInitiating)radarInitiator;
- (int64_t)activeThreshold;
- (int64_t)targetThreshold;
- (void)setTargetThreshold:(int64_t)a3;
- (void)updatedCounter:(id)a3 fromOldValue:(int64_t)a4 toNewValue:(int64_t)a5;
@end

@implementation HMDCounterThresholdTTRTrigger

- (HMMRadarInitiating)radarInitiator
{
  WeakRetained = objc_loadWeakRetained(&self->_radarInitiator);

  return WeakRetained;
}

- (HMDTTRTriggerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)setTargetThreshold:(int64_t)a3
{
  os_unfair_lock_lock_with_options();
  if (self->_activeThreshold < a3)
  {
    self->_activeThreshold = a3;
  }

  self->_targetThreshold = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)targetThreshold
{
  os_unfair_lock_lock_with_options();
  targetThreshold = self->_targetThreshold;
  os_unfair_lock_unlock(&self->_lock);
  return targetThreshold;
}

- (int64_t)activeThreshold
{
  os_unfair_lock_lock_with_options();
  activeThreshold = self->_activeThreshold;
  os_unfair_lock_unlock(&self->_lock);
  return activeThreshold;
}

- (void)updatedCounter:(id)a3 fromOldValue:(int64_t)a4 toNewValue:(int64_t)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  os_unfair_lock_lock_with_options();
  activeThreshold = self->_activeThreshold;
  os_unfair_lock_unlock(&self->_lock);
  if (activeThreshold > a5 || activeThreshold <= a4)
  {
LABEL_10:
    if (!a5)
    {
      os_unfair_lock_lock_with_options();
      self->_activeThreshold = self->_targetThreshold;
      os_unfair_lock_unlock(&self->_lock);
    }

    goto LABEL_15;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [(HMDCounterThresholdTTRTrigger *)v12 radarTitle];
    v28 = 138544130;
    v29 = v14;
    v30 = 2114;
    v31 = v8;
    v32 = 2114;
    v33 = v15;
    v34 = 2048;
    v35 = a5;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@TTR threshold trigger: eventName=%{public}@, radarTitle=%{public}@, value=%lu", &v28, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  if (!-[HMDCounterThresholdTTRTrigger primaryOnly](v12, "primaryOnly") || (-[HMDCounterThresholdTTRTrigger dataSource](v12, "dataSource"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 isCurrentDeviceConfirmedPrimaryResident], v16, (v17 & 1) != 0))
  {
    v18 = [(HMDCounterThresholdTTRTrigger *)v12 radarInitiator];
    v19 = [(HMDCounterThresholdTTRTrigger *)v12 displayReason];
    v20 = [(HMDCounterThresholdTTRTrigger *)v12 radarTitle];
    v21 = [(HMDCounterThresholdTTRTrigger *)v12 componentName];
    v22 = [(HMDCounterThresholdTTRTrigger *)v12 componentVersion];
    [v18 requestRadarWithDisplayReason:v19 radarTitle:v20 componentName:v21 componentVersion:v22 componentID:{-[HMDCounterThresholdTTRTrigger componentID](v12, "componentID")}];

    goto LABEL_10;
  }

  v23 = objc_autoreleasePoolPush();
  v24 = v12;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = HMFGetLogIdentifier();
    v28 = 138543362;
    v29 = v26;
    _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Device needs to be primary, but is not; skipping TTR.", &v28, 0xCu);
  }

  objc_autoreleasePoolPop(v23);
LABEL_15:

  v27 = *MEMORY[0x277D85DE8];
}

- (HMDCounterThresholdTTRTrigger)initWithThreshold:(int64_t)a3 displayReason:(id)a4 radarTitle:(id)a5 componentName:(id)a6 componentVersion:(id)a7 componentID:(int64_t)a8 radarInitiator:(id)a9 primaryOnly:(BOOL)a10 dataSource:(id)a11
{
  v17 = a4;
  v18 = a5;
  v35 = a6;
  v34 = a7;
  v19 = a9;
  v20 = a11;
  if (v19)
  {
    v21 = v20;
    v36.receiver = self;
    v36.super_class = HMDCounterThresholdTTRTrigger;
    v22 = [(HMDCounterThresholdTTRTrigger *)&v36 init];
    v23 = v22;
    if (v22)
    {
      v22->_activeThreshold = a3;
      v22->_targetThreshold = a3;
      objc_storeStrong(&v22->_displayReason, a4);
      objc_storeStrong(&v23->_radarTitle, a5);
      objc_storeStrong(&v23->_componentName, a6);
      objc_storeStrong(&v23->_componentVersion, a7);
      v23->_componentID = a8;
      objc_storeWeak(&v23->_radarInitiator, v19);
      v23->_primaryOnly = a10;
      objc_storeWeak(&v23->_dataSource, v21);
    }

    return v23;
  }

  else
  {
    v25 = _HMFPreconditionFailureWithFormat();
    return [(HMDCounterThresholdTTRTrigger *)v25 initWithThreshold:v26 displayReason:v27 radarTitle:v28 componentName:v29 componentVersion:v30 componentID:v31 radarInitiator:v32, a9];
  }
}

- (HMDCounterThresholdTTRTrigger)initWithThreshold:(int64_t)a3 displayReason:(id)a4 radarInitiator:(id)a5
{
  v8 = MEMORY[0x277CCACA8];
  v9 = a5;
  v10 = a4;
  v11 = [v8 stringWithFormat:@"Radar initiated on this device because %@", v10];
  v12 = [(HMDCounterThresholdTTRTrigger *)self initWithThreshold:a3 displayReason:v10 radarTitle:v11 componentName:@"HomeKit" componentVersion:@"New Bugs" componentID:590644 radarInitiator:v9];

  return v12;
}

@end