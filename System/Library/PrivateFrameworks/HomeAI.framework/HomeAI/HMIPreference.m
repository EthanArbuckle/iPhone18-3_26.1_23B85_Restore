@interface HMIPreference
+ (BOOL)isAudioAccessory;
+ (HMIPreference)sharedInstance;
+ (NSDictionary)qosMap;
+ (int)productType;
- (BOOL)BOOLPreferenceForKey:(id)a3 defaultValue:(BOOL)a4;
- (BOOL)hasPreferenceForKey:(id)a3;
- (BOOL)shouldEnableTorsoRecognition;
- (BOOL)shouldUseCPUOnlyForVisionFaceDetection;
- (BOOL)usesCPUOnly;
- (HMIPreference)init;
- (NSDictionary)preferenceOverrides;
- (double)maxAnalysisFPSForCurrentPeakPowerPressureLevel;
- (double)maxAnalysisFPSForCurrentThermalLevel;
- (double)maxAnalysisFPSForSystemResourceUsageLevel:(int64_t)a3;
- (id)numberPreferenceForKey:(id)a3;
- (id)numberPreferenceForKey:(id)a3 defaultValue:(id)a4;
- (id)numberPreferenceForKey:(id)a3 defaultValue:(id)a4 withMap:(id)a5;
- (id)numberPreferenceForKey:(id)a3 defaultValue:(id)a4 withParser:(id)a5;
- (id)stringPreferenceForKey:(id)a3 defaultValue:(id)a4;
- (id)systemPreferenceValueForKey:(id)a3;
- (id)valuePreferenceForKey:(id)a3 defaultValue:(id)a4 withMap:(id)a5;
- (id)valuePreferenceForKey:(id)a3 defaultValue:(id)a4 withParser:(id)a5;
- (unint64_t)maxConcurrentAnalyzersForCurrentPeakPowerPressureLevel;
- (unint64_t)maxConcurrentAnalyzersForCurrentThermalLevel;
- (unint64_t)maxConcurrentAnalyzersForSystemResourceUsageLevel:(int64_t)a3;
- (unsigned)analysisQOS;
- (void)addPreferenceOverrideFromDictionary:(id)a3;
- (void)logPreferenceForKey:(id)a3 value:(id)a4;
- (void)removeAllPreferenceOverrides;
- (void)setPreferenceOverrideFromDictionary:(id)a3;
- (void)timerDidFire:(id)a3;
@end

@implementation HMIPreference

+ (HMIPreference)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__HMIPreference_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_3 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_3, block);
  }

  v2 = sharedInstance_instance_0;

  return v2;
}

uint64_t __31__HMIPreference_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_instance_0;
  sharedInstance_instance_0 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (NSDictionary)qosMap
{
  if (qosMap_onceToken != -1)
  {
    +[HMIPreference qosMap];
  }

  v3 = qosMap_map;

  return v3;
}

void __23__HMIPreference_qosMap__block_invoke()
{
  v0 = qosMap_map;
  qosMap_map = &unk_284075AB8;
}

+ (int)productType
{
  v3 = [a1 pretendProductType];

  if (v3)
  {
    v4 = [a1 pretendProductType];
    v5 = [v4 longLongValue];

    return v5;
  }

  else
  {

    return MEMORY[0x2821F5C78]();
  }
}

+ (BOOL)isAudioAccessory
{
  if (+[HMIPreference isProductTypeB238](HMIPreference, "isProductTypeB238") || +[HMIPreference isProductTypeB520])
  {
    return 1;
  }

  return +[HMIPreference isProductTypeB620];
}

- (BOOL)usesCPUOnly
{
  v3 = +[HMIPreference isProductTypeJ105];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:v3];
  v5 = [(HMIPreference *)self numberPreferenceForKey:@"processingDevice" defaultValue:v4 withMap:&unk_284075AE0];
  v6 = [v5 BOOLValue];

  return v6;
}

- (BOOL)shouldUseCPUOnlyForVisionFaceDetection
{
  if (+[HMIPreference isProductTypeB520])
  {
    return 1;
  }

  return +[HMIPreference isProductTypeB620];
}

- (unint64_t)maxConcurrentAnalyzersForCurrentThermalLevel
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = +[HMIThermalMonitor sharedInstance];
  v3 = [v2 thermalLevel];

  if (+[HMIPreference isProductTypeJ105])
  {
    result = 0;
    v5 = xmmword_22D298430;
    v6 = xmmword_22D298440;
    v7 = 0x3FF0000000000000;
    do
    {
      if (*(&v5 + result) <= v3)
      {
        break;
      }

      ++result;
    }

    while (result != 5);
  }

  else if (+[HMIPreference isProductTypeB238])
  {
    result = 0;
    while (dbl_22D298450[result] > v3)
    {
      if (++result == 3)
      {
        return 2;
      }
    }
  }

  else if (+[HMIPreference isProductTypeB520])
  {
    return 2 * (v3 < 10);
  }

  else if (+[HMIPreference isProductTypeB620])
  {
    if (v3 <= 9)
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }

  else if (+[HMIPreference isProductTypeJ255])
  {
    result = 0;
    v5 = xmmword_22D298410;
    v6 = xmmword_22D298420;
    v7 = 0x4010000000000000;
    do
    {
      if (*(&v5 + result) <= v3)
      {
        break;
      }

      ++result;
    }

    while (result != 5);
  }

  else
  {
    return 5;
  }

  return result;
}

- (unint64_t)maxConcurrentAnalyzersForCurrentPeakPowerPressureLevel
{
  v2 = +[HMIPeakPowerPressureMonitor sharedInstance];
  v3 = [v2 peakPowerPressureLevel];

  if (+[HMIPreference isProductTypeJ255]&& (v3 - 1) <= 3)
  {
    return qword_22D298468[v3 - 1];
  }

  else
  {
    return 5;
  }
}

- (unint64_t)maxConcurrentAnalyzersForSystemResourceUsageLevel:(int64_t)a3
{
  v5 = [(HMIPreference *)self maxConcurrentAnalyzersForCurrentThermalLevel];
  v6 = [(HMIPreference *)self maxConcurrentAnalyzersForCurrentPeakPowerPressureLevel];
  if (v5 >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  v8 = +[HMIPreference isProductTypeJ105];
  v9 = 3;
  if (v7 < 3)
  {
    v9 = v7;
  }

  if (a3 > 1 && v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = v7;
  }

  v11 = +[HMIPreference isAudioAccessory];
  v12 = a3 > 2;
  v13 = [MEMORY[0x277D0F8E8] productInfo];
  v14 = [v13 productClass] == 3;

  if (v12 && (v14 || v11))
  {
    v15 = 0;
  }

  else
  {
    v15 = v10;
  }

  v16 = +[HMIPreference sharedInstance];
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
  v18 = [v16 numberPreferenceForKey:@"maxConcurrentAnalyzers" defaultValue:v17];
  v19 = [v18 intValue];

  return v19;
}

- (BOOL)shouldEnableTorsoRecognition
{
  if (+[HMIPreference isProductTypeB238](HMIPreference, "isProductTypeB238") || +[HMIPreference isProductTypeJ42])
  {
    return 0;
  }

  v3 = +[HMIPreference sharedInstance];
  v4 = [v3 BOOLPreferenceForKey:@"enableTorsoRecognition" defaultValue:1];

  return v4;
}

- (double)maxAnalysisFPSForCurrentThermalLevel
{
  v2 = +[HMIThermalMonitor sharedInstance];
  v3 = [v2 thermalLevel];

  if (!+[HMIPreference isProductTypeB238]|| (result = 0.125, v3 <= 3) && (result = 0.25, v3 != 3) && (result = 0.5, v3 <= 1))
  {
    if (!+[HMIPreference isProductTypeJ105]|| (result = 0.125, v3 <= 3) && (result = 0.25, v3 != 3) && (result = 0.5, v3 <= 1))
    {
      if (!+[HMIPreference isProductTypeB520]|| (result = 0.125, v3 <= 7) && (result = 0.25, v3 != 7) && (result = 0.5, v3 <= 5))
      {
        if (!+[HMIPreference isProductTypeB620]|| (result = 0.125, v3 <= 7) && (result = 0.25, v3 != 7) && (result = 0.5, v3 <= 5))
        {
          if (!+[HMIPreference isProductTypeJ255])
          {
            return 1.0;
          }

          result = 0.125;
          if (v3 <= 3)
          {
            result = 0.25;
            if (v3 != 3)
            {
              result = 0.5;
              if (v3 <= 1)
              {
                return 1.0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

- (double)maxAnalysisFPSForCurrentPeakPowerPressureLevel
{
  v2 = +[HMIPeakPowerPressureMonitor sharedInstance];
  v3 = [v2 peakPowerPressureLevel];

  v4 = +[HMIPreference isProductTypeJ255];
  result = 1.0;
  if (v4 && (v3 - 2) <= 2)
  {
    return dbl_22D298488[v3 - 2];
  }

  return result;
}

- (double)maxAnalysisFPSForSystemResourceUsageLevel:(int64_t)a3
{
  [(HMIPreference *)self maxAnalysisFPSForCurrentThermalLevel];
  v6 = v5;
  [(HMIPreference *)self maxAnalysisFPSForCurrentPeakPowerPressureLevel];
  if (v6 >= v7)
  {
    v6 = v7;
  }

  v8 = +[HMIPreference isProductTypeJ105];
  v9 = fmin(v6, 0.5);
  if (a3 > 1 && v8)
  {
    v6 = v9;
  }

  v10 = +[HMIPreference sharedInstance];
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
  v12 = [v10 numberPreferenceForKey:@"maxAnalysisFPS" defaultValue:v11];
  [v12 doubleValue];
  v14 = v13;

  return v14;
}

- (unsigned)analysisQOS
{
  v2 = +[HMIPreference sharedInstance];
  v3 = +[HMIPreference qosMap];
  v4 = [v2 numberPreferenceForKey:@"analysisQOS" defaultValue:&unk_2840752E8 withMap:v3];
  v5 = [v4 intValue];

  return v5;
}

- (HMIPreference)init
{
  v13.receiver = self;
  v13.super_class = HMIPreference;
  v2 = [(HMIPreference *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:12 options:8.0];
    preferenceCacheFlushTimer = v3->_preferenceCacheFlushTimer;
    v3->_preferenceCacheFlushTimer = v4;

    [(HMFTimer *)v3->_preferenceCacheFlushTimer setDelegate:v3];
    [(HMFTimer *)v3->_preferenceCacheFlushTimer resume];
    v6 = [MEMORY[0x277CBEB38] dictionary];
    preferenceCache = v3->_preferenceCache;
    v3->_preferenceCache = v6;

    v8 = [MEMORY[0x277CBEB38] dictionary];
    preferenceLoggedValues = v3->_preferenceLoggedValues;
    v3->_preferenceLoggedValues = v8;

    v10 = [MEMORY[0x277CBEB38] dictionary];
    preferenceOverridesInternal = v3->_preferenceOverridesInternal;
    v3->_preferenceOverridesInternal = v10;
  }

  return v3;
}

- (void)timerDidFire:(id)a3
{
  v6 = a3;
  v4 = objc_autoreleasePoolPush();
  os_unfair_lock_lock_with_options();
  v5 = [(HMIPreference *)self preferenceCache];
  [v5 removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
  objc_autoreleasePoolPop(v4);
}

- (NSDictionary)preferenceOverrides
{
  os_unfair_lock_lock_with_options();
  v3 = [(HMIPreference *)self preferenceOverridesInternal];
  v4 = [v3 copy];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)addPreferenceOverrideFromDictionary:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [(HMIPreference *)self preferenceOverridesInternal];
  [v4 addEntriesFromDictionary:v5];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setPreferenceOverrideFromDictionary:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [(HMIPreference *)self preferenceOverridesInternal];
  [v4 removeAllObjects];

  v5 = [(HMIPreference *)self preferenceOverridesInternal];
  [v5 addEntriesFromDictionary:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeAllPreferenceOverrides
{
  os_unfair_lock_lock_with_options();
  v3 = [(HMIPreference *)self preferenceOverridesInternal];
  [v3 removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)logPreferenceForKey:(id)a3 value:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock_with_options();
  v8 = [(HMIPreference *)self preferenceLoggedValues];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (v9 != v7 && ([v9 isEqual:v7] & 1) == 0)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138544130;
      v16 = v13;
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_22D12F000, v12, OS_LOG_TYPE_INFO, "%{public}@Preference %@ is now %@, previously was %@", &v15, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [(HMIPreference *)v11 preferenceLoggedValues];
    if (v7)
    {
      [v14 setObject:v7 forKeyedSubscript:v6];
    }

    else
    {
      [v14 removeObjectForKey:v6];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)systemPreferenceValueForKey:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(HMIPreference *)self preferenceOverridesInternal];
  v6 = [v5 objectForKeyedSubscript:v4];

  os_unfair_lock_unlock(&self->_lock);
  if (v6)
  {
    goto LABEL_2;
  }

  os_unfair_lock_lock_with_options();
  v9 = [(HMIPreference *)self preferenceCache];
  v6 = [v9 objectForKeyedSubscript:v4];

  if (v6)
  {
    v10 = [MEMORY[0x277CBEB68] null];

    if (v6 == v10)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x277D0F918]) initWithKey:v4 options:0 domain:@"com.apple.homed" defaultValue:0];
    v6 = [v11 value];

    if (!v6)
    {
      v6 = [MEMORY[0x277CBEB68] null];
      v18 = [(HMIPreference *)self preferenceCache];
      [v18 setObject:v6 forKeyedSubscript:v4];

LABEL_16:
      os_unfair_lock_unlock(&self->_lock);
      v6 = 0;
      goto LABEL_2;
    }

    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v19 = 138543874;
      v20 = v15;
      v21 = 2112;
      v22 = v4;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_22D12F000, v14, OS_LOG_TYPE_INFO, "%{public}@Override set for preference: %@ value: %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    v16 = [(HMIPreference *)v13 preferenceCache];
    [v16 setObject:v6 forKeyedSubscript:v4];
  }

  os_unfair_lock_unlock(&self->_lock);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v17 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Only NSNumber and NSString properties are supported." userInfo:0];
      objc_exception_throw(v17);
    }
  }

LABEL_2:
  v7 = v6;

  return v7;
}

- (id)numberPreferenceForKey:(id)a3 defaultValue:(id)a4 withParser:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v9;
  v12 = [(HMIPreference *)self systemPreferenceValueForKey:v8];
  v13 = v11;
  if (v12)
  {
    v14 = v10[2](v10, v12);
    v15 = v14;
    v13 = v11;
    if (v14)
    {
      v13 = v14;
    }
  }

  [(HMIPreference *)self logPreferenceForKey:v8 value:v13];

  return v13;
}

- (id)numberPreferenceForKey:(id)a3 defaultValue:(id)a4 withMap:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v9;
  v12 = [(HMIPreference *)self systemPreferenceValueForKey:v8];
  v13 = objectAsString(v12);

  v14 = v11;
  if (v13)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = v10;
    v15 = v10;
    v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    v14 = v11;
    if (v16)
    {
      v17 = v16;
      v18 = *v25;
      v14 = v11;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v24 + 1) + 8 * i);
          if (![v13 caseInsensitiveCompare:v20])
          {
            v21 = [v15 objectForKeyedSubscript:v20];

            v14 = v21;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v17);
    }

    v10 = v23;
  }

  [(HMIPreference *)self logPreferenceForKey:v8 value:v14];

  return v14;
}

- (id)valuePreferenceForKey:(id)a3 defaultValue:(id)a4 withParser:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v9;
  v12 = [(HMIPreference *)self systemPreferenceValueForKey:v8];
  v13 = v11;
  if (v12)
  {
    v14 = v10[2](v10, v12);
    v15 = v14;
    v13 = v11;
    if (v14)
    {
      v13 = v14;
    }
  }

  [(HMIPreference *)self logPreferenceForKey:v8 value:v13];

  return v13;
}

- (id)valuePreferenceForKey:(id)a3 defaultValue:(id)a4 withMap:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v9;
  v12 = [(HMIPreference *)self systemPreferenceValueForKey:v8];
  v13 = objectAsString(v12);

  v14 = v11;
  if (v13)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = v10;
    v15 = v10;
    v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    v14 = v11;
    if (v16)
    {
      v17 = v16;
      v18 = *v25;
      v14 = v11;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v24 + 1) + 8 * i);
          if (![v13 caseInsensitiveCompare:v20])
          {
            v21 = [v15 objectForKeyedSubscript:v20];

            v14 = v21;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v17);
    }

    v10 = v23;
  }

  [(HMIPreference *)self logPreferenceForKey:v8 value:v14];

  return v14;
}

- (id)numberPreferenceForKey:(id)a3 defaultValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMIPreference *)self systemPreferenceValueForKey:v6];
  v9 = objectAsNumber(v8);

  v10 = v7;
  if (v9)
  {
    v10 = v9;
  }

  [(HMIPreference *)self logPreferenceForKey:v6 value:v10];

  return v10;
}

- (id)numberPreferenceForKey:(id)a3
{
  v3 = [(HMIPreference *)self systemPreferenceValueForKey:a3];
  v4 = objectAsNumber(v3);

  return v4;
}

- (BOOL)hasPreferenceForKey:(id)a3
{
  v3 = [(HMIPreference *)self systemPreferenceValueForKey:a3];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)BOOLPreferenceForKey:(id)a3 defaultValue:(BOOL)a4
{
  v4 = a4;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithBool:v4];
  v9 = [(HMIPreference *)self numberPreferenceForKey:v7 defaultValue:v8];

  LOBYTE(v6) = [v9 BOOLValue];
  return v6;
}

- (id)stringPreferenceForKey:(id)a3 defaultValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMIPreference *)self systemPreferenceValueForKey:v6];
  v9 = objectAsString(v8);

  v10 = v7;
  if (v9)
  {
    v10 = v9;
  }

  [(HMIPreference *)self logPreferenceForKey:v6 value:v10];

  return v10;
}

@end