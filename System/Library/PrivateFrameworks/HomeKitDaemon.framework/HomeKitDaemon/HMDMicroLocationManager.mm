@interface HMDMicroLocationManager
+ (id)logCategory;
- (HMDMicroLocationManager)initWithLocationManager:(id)manager dateFactory:(id)factory;
- (void)triggerThrottledMicroLocationLocalizationScanWithMetadata:(id)metadata triggerType:(unint64_t)type;
- (void)triggerThrottledMicroLocationRecordingScanWithMetadata:(id)metadata triggerType:(unint64_t)type;
@end

@implementation HMDMicroLocationManager

- (void)triggerThrottledMicroLocationLocalizationScanWithMetadata:(id)metadata triggerType:(unint64_t)type
{
  v38 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  if (type >= 3)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
      v34 = 138543618;
      v35 = v11;
      v36 = 2112;
      v37 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Invalid HMDMicroLocationScanTriggerType: %@ for Localization Scan", &v34, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    goto LABEL_16;
  }

  if (self)
  {
    Property = objc_getProperty(self, v6, 40, 1);
  }

  else
  {
    Property = 0;
  }

  v14 = Property[2]();
  [v14 timeIntervalSince1970];
  v16 = v15;

  os_unfair_lock_lock_with_options();
  v17 = [(NSMutableArray *)self->_lastLocalizationScanTimes objectAtIndexedSubscript:type];
  [v17 doubleValue];
  v19 = v18 + 5.0;
  if (v19 <= v16)
  {
  }

  else
  {
    v20 = vabdd_f64(v19, v16);

    if (v20 >= 2.22044605e-16)
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        v25 = off_278689170[type];
        v34 = 138543618;
        v35 = v24;
        v36 = 2112;
        v37 = v25;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Skipping microlocation localization scan for event: %@, throttling in effect", &v34, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      os_unfair_lock_unlock(&self->_lock);
      goto LABEL_16;
    }
  }

  v26 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
  [(NSMutableArray *)self->_lastLocalizationScanTimes setObject:v26 atIndexedSubscript:type];

  os_unfair_lock_unlock(&self->_lock);
  v27 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = HMFGetLogIdentifier();
    v31 = off_278689170[type];
    v34 = 138543618;
    v35 = v30;
    v36 = 2112;
    v37 = v31;
    _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@Performing microlocation localization scan for event: %@", &v34, 0x16u);
  }

  objc_autoreleasePoolPop(v27);
  [objc_getProperty(selfCopy3 v32];
LABEL_16:

  v33 = *MEMORY[0x277D85DE8];
}

- (void)triggerThrottledMicroLocationRecordingScanWithMetadata:(id)metadata triggerType:(unint64_t)type
{
  v38 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  if (type >= 3)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
      v34 = 138543618;
      v35 = v11;
      v36 = 2112;
      v37 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Invalid HMDMicroLocationScanTriggerType: %@ for Recording Scan", &v34, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    goto LABEL_16;
  }

  if (self)
  {
    Property = objc_getProperty(self, v6, 40, 1);
  }

  else
  {
    Property = 0;
  }

  v14 = Property[2]();
  [v14 timeIntervalSince1970];
  v16 = v15;

  os_unfair_lock_lock_with_options();
  v17 = [(NSMutableArray *)self->_lastRecordingScanTimes objectAtIndexedSubscript:type];
  [v17 doubleValue];
  v19 = v18 + 5.0;
  if (v19 <= v16)
  {
  }

  else
  {
    v20 = vabdd_f64(v19, v16);

    if (v20 >= 2.22044605e-16)
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        v25 = off_278689170[type];
        v34 = 138543618;
        v35 = v24;
        v36 = 2112;
        v37 = v25;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Skipping microlocation recording scan for event type: %@, throttling in effect", &v34, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      os_unfair_lock_unlock(&self->_lock);
      goto LABEL_16;
    }
  }

  v26 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
  [(NSMutableArray *)self->_lastRecordingScanTimes setObject:v26 atIndexedSubscript:type];

  os_unfair_lock_unlock(&self->_lock);
  v27 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = HMFGetLogIdentifier();
    v31 = off_278689170[type];
    v34 = 138543618;
    v35 = v30;
    v36 = 2112;
    v37 = v31;
    _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@Performing microlocation recording scan for event: %@", &v34, 0x16u);
  }

  objc_autoreleasePoolPop(v27);
  [objc_getProperty(selfCopy3 v32];
LABEL_16:

  v33 = *MEMORY[0x277D85DE8];
}

- (HMDMicroLocationManager)initWithLocationManager:(id)manager dateFactory:(id)factory
{
  managerCopy = manager;
  factoryCopy = factory;
  v18.receiver = self;
  v18.super_class = HMDMicroLocationManager;
  v9 = [(HMDMicroLocationManager *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_locationManager, manager);
    v10->_lock._os_unfair_lock_opaque = 0;
    v11 = [MEMORY[0x277CBEB18] na_arrayByRepeatingWithCount:3 generatorBlock:&__block_literal_global_275925];
    lastRecordingScanTimes = v10->_lastRecordingScanTimes;
    v10->_lastRecordingScanTimes = v11;

    v13 = [MEMORY[0x277CBEB18] na_arrayByRepeatingWithCount:3 generatorBlock:&__block_literal_global_4_275926];
    lastLocalizationScanTimes = v10->_lastLocalizationScanTimes;
    v10->_lastLocalizationScanTimes = v13;

    v15 = _Block_copy(factoryCopy);
    dateFactory = v10->_dateFactory;
    v10->_dateFactory = v15;
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t8_275938 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t8_275938, &__block_literal_global_22_275939);
  }

  v3 = logCategory__hmf_once_v9_275940;

  return v3;
}

void __38__HMDMicroLocationManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v9_275940;
  logCategory__hmf_once_v9_275940 = v1;
}

@end