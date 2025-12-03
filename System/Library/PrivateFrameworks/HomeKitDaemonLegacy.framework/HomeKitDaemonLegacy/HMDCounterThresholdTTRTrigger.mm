@interface HMDCounterThresholdTTRTrigger
- (HMDCounterThresholdTTRTrigger)initWithThreshold:(int64_t)threshold displayReason:(id)reason radarInitiator:(id)initiator;
- (HMDCounterThresholdTTRTrigger)initWithThreshold:(int64_t)threshold displayReason:(id)reason radarTitle:(id)title componentName:(id)name componentVersion:(id)version componentID:(int64_t)d radarInitiator:(id)initiator primaryOnly:(BOOL)self0 dataSource:(id)self1;
- (HMDTTRTriggerDataSource)dataSource;
- (HMMRadarInitiating)radarInitiator;
- (int64_t)activeThreshold;
- (int64_t)targetThreshold;
- (void)setTargetThreshold:(int64_t)threshold;
- (void)updatedCounter:(id)counter fromOldValue:(int64_t)value toNewValue:(int64_t)newValue;
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

- (void)setTargetThreshold:(int64_t)threshold
{
  os_unfair_lock_lock_with_options();
  if (self->_activeThreshold < threshold)
  {
    self->_activeThreshold = threshold;
  }

  self->_targetThreshold = threshold;

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

- (void)updatedCounter:(id)counter fromOldValue:(int64_t)value toNewValue:(int64_t)newValue
{
  v36 = *MEMORY[0x277D85DE8];
  counterCopy = counter;
  os_unfair_lock_lock_with_options();
  activeThreshold = self->_activeThreshold;
  os_unfair_lock_unlock(&self->_lock);
  if (activeThreshold > newValue || activeThreshold <= value)
  {
LABEL_10:
    if (!newValue)
    {
      os_unfair_lock_lock_with_options();
      self->_activeThreshold = self->_targetThreshold;
      os_unfair_lock_unlock(&self->_lock);
    }

    goto LABEL_15;
  }

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    radarTitle = [(HMDCounterThresholdTTRTrigger *)selfCopy radarTitle];
    v28 = 138544130;
    v29 = v14;
    v30 = 2114;
    v31 = counterCopy;
    v32 = 2114;
    v33 = radarTitle;
    v34 = 2048;
    newValueCopy = newValue;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@TTR threshold trigger: eventName=%{public}@, radarTitle=%{public}@, value=%lu", &v28, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  if (!-[HMDCounterThresholdTTRTrigger primaryOnly](selfCopy, "primaryOnly") || (-[HMDCounterThresholdTTRTrigger dataSource](selfCopy, "dataSource"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 isCurrentDeviceConfirmedPrimaryResident], v16, (v17 & 1) != 0))
  {
    radarInitiator = [(HMDCounterThresholdTTRTrigger *)selfCopy radarInitiator];
    displayReason = [(HMDCounterThresholdTTRTrigger *)selfCopy displayReason];
    radarTitle2 = [(HMDCounterThresholdTTRTrigger *)selfCopy radarTitle];
    componentName = [(HMDCounterThresholdTTRTrigger *)selfCopy componentName];
    componentVersion = [(HMDCounterThresholdTTRTrigger *)selfCopy componentVersion];
    [radarInitiator requestRadarWithDisplayReason:displayReason radarTitle:radarTitle2 componentName:componentName componentVersion:componentVersion componentID:{-[HMDCounterThresholdTTRTrigger componentID](selfCopy, "componentID")}];

    goto LABEL_10;
  }

  v23 = objc_autoreleasePoolPush();
  v24 = selfCopy;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = HMFGetLogIdentifier();
    v28 = 138543362;
    v29 = v26;
    _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Device needs to be primary, but is not; skipping TTR.", &v28, 0xCu);
  }

  objc_autoreleasePoolPop(v23);
LABEL_15:

  v27 = *MEMORY[0x277D85DE8];
}

- (HMDCounterThresholdTTRTrigger)initWithThreshold:(int64_t)threshold displayReason:(id)reason radarTitle:(id)title componentName:(id)name componentVersion:(id)version componentID:(int64_t)d radarInitiator:(id)initiator primaryOnly:(BOOL)self0 dataSource:(id)self1
{
  reasonCopy = reason;
  titleCopy = title;
  nameCopy = name;
  versionCopy = version;
  initiatorCopy = initiator;
  sourceCopy = source;
  if (initiatorCopy)
  {
    v21 = sourceCopy;
    v36.receiver = self;
    v36.super_class = HMDCounterThresholdTTRTrigger;
    v22 = [(HMDCounterThresholdTTRTrigger *)&v36 init];
    v23 = v22;
    if (v22)
    {
      v22->_activeThreshold = threshold;
      v22->_targetThreshold = threshold;
      objc_storeStrong(&v22->_displayReason, reason);
      objc_storeStrong(&v23->_radarTitle, title);
      objc_storeStrong(&v23->_componentName, name);
      objc_storeStrong(&v23->_componentVersion, version);
      v23->_componentID = d;
      objc_storeWeak(&v23->_radarInitiator, initiatorCopy);
      v23->_primaryOnly = only;
      objc_storeWeak(&v23->_dataSource, v21);
    }

    return v23;
  }

  else
  {
    v25 = _HMFPreconditionFailureWithFormat();
    return [(HMDCounterThresholdTTRTrigger *)v25 initWithThreshold:v26 displayReason:v27 radarTitle:v28 componentName:v29 componentVersion:v30 componentID:v31 radarInitiator:v32, initiator];
  }
}

- (HMDCounterThresholdTTRTrigger)initWithThreshold:(int64_t)threshold displayReason:(id)reason radarInitiator:(id)initiator
{
  v8 = MEMORY[0x277CCACA8];
  initiatorCopy = initiator;
  reasonCopy = reason;
  reasonCopy = [v8 stringWithFormat:@"Radar initiated on this device because %@", reasonCopy];
  v12 = [(HMDCounterThresholdTTRTrigger *)self initWithThreshold:threshold displayReason:reasonCopy radarTitle:reasonCopy componentName:@"HomeKit" componentVersion:@"New Bugs" componentID:590644 radarInitiator:initiatorCopy];

  return v12;
}

@end