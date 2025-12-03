@interface HMIPreference
+ (BOOL)isAudioAccessory;
+ (HMIPreference)sharedInstance;
+ (NSDictionary)qosMap;
+ (int)productType;
- (BOOL)BOOLPreferenceForKey:(id)key defaultValue:(BOOL)value;
- (BOOL)hasPreferenceForKey:(id)key;
- (BOOL)shouldEnableTorsoRecognition;
- (BOOL)shouldUseCPUOnlyForVisionFaceDetection;
- (BOOL)usesCPUOnly;
- (HMIPreference)init;
- (NSDictionary)preferenceOverrides;
- (double)maxAnalysisFPSForCurrentPeakPowerPressureLevel;
- (double)maxAnalysisFPSForCurrentThermalLevel;
- (double)maxAnalysisFPSForSystemResourceUsageLevel:(int64_t)level;
- (id)numberPreferenceForKey:(id)key;
- (id)numberPreferenceForKey:(id)key defaultValue:(id)value;
- (id)numberPreferenceForKey:(id)key defaultValue:(id)value withMap:(id)map;
- (id)numberPreferenceForKey:(id)key defaultValue:(id)value withParser:(id)parser;
- (id)stringPreferenceForKey:(id)key defaultValue:(id)value;
- (id)systemPreferenceValueForKey:(id)key;
- (id)valuePreferenceForKey:(id)key defaultValue:(id)value withMap:(id)map;
- (id)valuePreferenceForKey:(id)key defaultValue:(id)value withParser:(id)parser;
- (unint64_t)maxConcurrentAnalyzersForCurrentPeakPowerPressureLevel;
- (unint64_t)maxConcurrentAnalyzersForCurrentThermalLevel;
- (unint64_t)maxConcurrentAnalyzersForSystemResourceUsageLevel:(int64_t)level;
- (unsigned)analysisQOS;
- (void)addPreferenceOverrideFromDictionary:(id)dictionary;
- (void)logPreferenceForKey:(id)key value:(id)value;
- (void)removeAllPreferenceOverrides;
- (void)setPreferenceOverrideFromDictionary:(id)dictionary;
- (void)timerDidFire:(id)fire;
@end

@implementation HMIPreference

+ (HMIPreference)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__HMIPreference_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
  pretendProductType = [self pretendProductType];

  if (pretendProductType)
  {
    pretendProductType2 = [self pretendProductType];
    longLongValue = [pretendProductType2 longLongValue];

    return longLongValue;
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
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
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
  thermalLevel = [v2 thermalLevel];

  if (+[HMIPreference isProductTypeJ105])
  {
    result = 0;
    v5 = xmmword_22D298430;
    v6 = xmmword_22D298440;
    v7 = 0x3FF0000000000000;
    do
    {
      if (*(&v5 + result) <= thermalLevel)
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
    while (dbl_22D298450[result] > thermalLevel)
    {
      if (++result == 3)
      {
        return 2;
      }
    }
  }

  else if (+[HMIPreference isProductTypeB520])
  {
    return 2 * (thermalLevel < 10);
  }

  else if (+[HMIPreference isProductTypeB620])
  {
    if (thermalLevel <= 9)
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
      if (*(&v5 + result) <= thermalLevel)
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
  peakPowerPressureLevel = [v2 peakPowerPressureLevel];

  if (+[HMIPreference isProductTypeJ255]&& (peakPowerPressureLevel - 1) <= 3)
  {
    return qword_22D298468[peakPowerPressureLevel - 1];
  }

  else
  {
    return 5;
  }
}

- (unint64_t)maxConcurrentAnalyzersForSystemResourceUsageLevel:(int64_t)level
{
  maxConcurrentAnalyzersForCurrentThermalLevel = [(HMIPreference *)self maxConcurrentAnalyzersForCurrentThermalLevel];
  maxConcurrentAnalyzersForCurrentPeakPowerPressureLevel = [(HMIPreference *)self maxConcurrentAnalyzersForCurrentPeakPowerPressureLevel];
  if (maxConcurrentAnalyzersForCurrentThermalLevel >= maxConcurrentAnalyzersForCurrentPeakPowerPressureLevel)
  {
    v7 = maxConcurrentAnalyzersForCurrentPeakPowerPressureLevel;
  }

  else
  {
    v7 = maxConcurrentAnalyzersForCurrentThermalLevel;
  }

  v8 = +[HMIPreference isProductTypeJ105];
  v9 = 3;
  if (v7 < 3)
  {
    v9 = v7;
  }

  if (level > 1 && v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = v7;
  }

  v11 = +[HMIPreference isAudioAccessory];
  v12 = level > 2;
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  v14 = [productInfo productClass] == 3;

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
  intValue = [v18 intValue];

  return intValue;
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
  thermalLevel = [v2 thermalLevel];

  if (!+[HMIPreference isProductTypeB238]|| (result = 0.125, thermalLevel <= 3) && (result = 0.25, thermalLevel != 3) && (result = 0.5, thermalLevel <= 1))
  {
    if (!+[HMIPreference isProductTypeJ105]|| (result = 0.125, thermalLevel <= 3) && (result = 0.25, thermalLevel != 3) && (result = 0.5, thermalLevel <= 1))
    {
      if (!+[HMIPreference isProductTypeB520]|| (result = 0.125, thermalLevel <= 7) && (result = 0.25, thermalLevel != 7) && (result = 0.5, thermalLevel <= 5))
      {
        if (!+[HMIPreference isProductTypeB620]|| (result = 0.125, thermalLevel <= 7) && (result = 0.25, thermalLevel != 7) && (result = 0.5, thermalLevel <= 5))
        {
          if (!+[HMIPreference isProductTypeJ255])
          {
            return 1.0;
          }

          result = 0.125;
          if (thermalLevel <= 3)
          {
            result = 0.25;
            if (thermalLevel != 3)
            {
              result = 0.5;
              if (thermalLevel <= 1)
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
  peakPowerPressureLevel = [v2 peakPowerPressureLevel];

  v4 = +[HMIPreference isProductTypeJ255];
  result = 1.0;
  if (v4 && (peakPowerPressureLevel - 2) <= 2)
  {
    return dbl_22D298488[peakPowerPressureLevel - 2];
  }

  return result;
}

- (double)maxAnalysisFPSForSystemResourceUsageLevel:(int64_t)level
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
  if (level > 1 && v8)
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
  intValue = [v4 intValue];

  return intValue;
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
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    preferenceCache = v3->_preferenceCache;
    v3->_preferenceCache = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    preferenceLoggedValues = v3->_preferenceLoggedValues;
    v3->_preferenceLoggedValues = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    preferenceOverridesInternal = v3->_preferenceOverridesInternal;
    v3->_preferenceOverridesInternal = dictionary3;
  }

  return v3;
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  v4 = objc_autoreleasePoolPush();
  os_unfair_lock_lock_with_options();
  preferenceCache = [(HMIPreference *)self preferenceCache];
  [preferenceCache removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
  objc_autoreleasePoolPop(v4);
}

- (NSDictionary)preferenceOverrides
{
  os_unfair_lock_lock_with_options();
  preferenceOverridesInternal = [(HMIPreference *)self preferenceOverridesInternal];
  v4 = [preferenceOverridesInternal copy];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)addPreferenceOverrideFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  os_unfair_lock_lock_with_options();
  preferenceOverridesInternal = [(HMIPreference *)self preferenceOverridesInternal];
  [preferenceOverridesInternal addEntriesFromDictionary:dictionaryCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setPreferenceOverrideFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  os_unfair_lock_lock_with_options();
  preferenceOverridesInternal = [(HMIPreference *)self preferenceOverridesInternal];
  [preferenceOverridesInternal removeAllObjects];

  preferenceOverridesInternal2 = [(HMIPreference *)self preferenceOverridesInternal];
  [preferenceOverridesInternal2 addEntriesFromDictionary:dictionaryCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeAllPreferenceOverrides
{
  os_unfair_lock_lock_with_options();
  preferenceOverridesInternal = [(HMIPreference *)self preferenceOverridesInternal];
  [preferenceOverridesInternal removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)logPreferenceForKey:(id)key value:(id)value
{
  v23 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  valueCopy = value;
  os_unfair_lock_lock_with_options();
  preferenceLoggedValues = [(HMIPreference *)self preferenceLoggedValues];
  v9 = [preferenceLoggedValues objectForKeyedSubscript:keyCopy];

  if (v9 != valueCopy && ([v9 isEqual:valueCopy] & 1) == 0)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138544130;
      v16 = v13;
      v17 = 2112;
      v18 = keyCopy;
      v19 = 2112;
      v20 = valueCopy;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_22D12F000, v12, OS_LOG_TYPE_INFO, "%{public}@Preference %@ is now %@, previously was %@", &v15, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
    preferenceLoggedValues2 = [(HMIPreference *)selfCopy preferenceLoggedValues];
    if (valueCopy)
    {
      [preferenceLoggedValues2 setObject:valueCopy forKeyedSubscript:keyCopy];
    }

    else
    {
      [preferenceLoggedValues2 removeObjectForKey:keyCopy];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)systemPreferenceValueForKey:(id)key
{
  v25 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  os_unfair_lock_lock_with_options();
  preferenceOverridesInternal = [(HMIPreference *)self preferenceOverridesInternal];
  value = [preferenceOverridesInternal objectForKeyedSubscript:keyCopy];

  os_unfair_lock_unlock(&self->_lock);
  if (value)
  {
    goto LABEL_2;
  }

  os_unfair_lock_lock_with_options();
  preferenceCache = [(HMIPreference *)self preferenceCache];
  value = [preferenceCache objectForKeyedSubscript:keyCopy];

  if (value)
  {
    null = [MEMORY[0x277CBEB68] null];

    if (value == null)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x277D0F918]) initWithKey:keyCopy options:0 domain:@"com.apple.homed" defaultValue:0];
    value = [v11 value];

    if (!value)
    {
      value = [MEMORY[0x277CBEB68] null];
      preferenceCache2 = [(HMIPreference *)self preferenceCache];
      [preferenceCache2 setObject:value forKeyedSubscript:keyCopy];

LABEL_16:
      os_unfair_lock_unlock(&self->_lock);
      value = 0;
      goto LABEL_2;
    }

    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v19 = 138543874;
      v20 = v15;
      v21 = 2112;
      v22 = keyCopy;
      v23 = 2112;
      v24 = value;
      _os_log_impl(&dword_22D12F000, v14, OS_LOG_TYPE_INFO, "%{public}@Override set for preference: %@ value: %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    preferenceCache3 = [(HMIPreference *)selfCopy preferenceCache];
    [preferenceCache3 setObject:value forKeyedSubscript:keyCopy];
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
  v7 = value;

  return v7;
}

- (id)numberPreferenceForKey:(id)key defaultValue:(id)value withParser:(id)parser
{
  keyCopy = key;
  valueCopy = value;
  parserCopy = parser;
  v11 = valueCopy;
  v12 = [(HMIPreference *)self systemPreferenceValueForKey:keyCopy];
  v13 = v11;
  if (v12)
  {
    v14 = parserCopy[2](parserCopy, v12);
    v15 = v14;
    v13 = v11;
    if (v14)
    {
      v13 = v14;
    }
  }

  [(HMIPreference *)self logPreferenceForKey:keyCopy value:v13];

  return v13;
}

- (id)numberPreferenceForKey:(id)key defaultValue:(id)value withMap:(id)map
{
  v29 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  valueCopy = value;
  mapCopy = map;
  v11 = valueCopy;
  v12 = [(HMIPreference *)self systemPreferenceValueForKey:keyCopy];
  v13 = objectAsString(v12);

  v14 = v11;
  if (v13)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = mapCopy;
    v15 = mapCopy;
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

    mapCopy = v23;
  }

  [(HMIPreference *)self logPreferenceForKey:keyCopy value:v14];

  return v14;
}

- (id)valuePreferenceForKey:(id)key defaultValue:(id)value withParser:(id)parser
{
  keyCopy = key;
  valueCopy = value;
  parserCopy = parser;
  v11 = valueCopy;
  v12 = [(HMIPreference *)self systemPreferenceValueForKey:keyCopy];
  v13 = v11;
  if (v12)
  {
    v14 = parserCopy[2](parserCopy, v12);
    v15 = v14;
    v13 = v11;
    if (v14)
    {
      v13 = v14;
    }
  }

  [(HMIPreference *)self logPreferenceForKey:keyCopy value:v13];

  return v13;
}

- (id)valuePreferenceForKey:(id)key defaultValue:(id)value withMap:(id)map
{
  v29 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  valueCopy = value;
  mapCopy = map;
  v11 = valueCopy;
  v12 = [(HMIPreference *)self systemPreferenceValueForKey:keyCopy];
  v13 = objectAsString(v12);

  v14 = v11;
  if (v13)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = mapCopy;
    v15 = mapCopy;
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

    mapCopy = v23;
  }

  [(HMIPreference *)self logPreferenceForKey:keyCopy value:v14];

  return v14;
}

- (id)numberPreferenceForKey:(id)key defaultValue:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v8 = [(HMIPreference *)self systemPreferenceValueForKey:keyCopy];
  v9 = objectAsNumber(v8);

  v10 = valueCopy;
  if (v9)
  {
    v10 = v9;
  }

  [(HMIPreference *)self logPreferenceForKey:keyCopy value:v10];

  return v10;
}

- (id)numberPreferenceForKey:(id)key
{
  v3 = [(HMIPreference *)self systemPreferenceValueForKey:key];
  v4 = objectAsNumber(v3);

  return v4;
}

- (BOOL)hasPreferenceForKey:(id)key
{
  v3 = [(HMIPreference *)self systemPreferenceValueForKey:key];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)BOOLPreferenceForKey:(id)key defaultValue:(BOOL)value
{
  valueCopy = value;
  v6 = MEMORY[0x277CCABB0];
  keyCopy = key;
  v8 = [v6 numberWithBool:valueCopy];
  v9 = [(HMIPreference *)self numberPreferenceForKey:keyCopy defaultValue:v8];

  LOBYTE(v6) = [v9 BOOLValue];
  return v6;
}

- (id)stringPreferenceForKey:(id)key defaultValue:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v8 = [(HMIPreference *)self systemPreferenceValueForKey:keyCopy];
  v9 = objectAsString(v8);

  v10 = valueCopy;
  if (v9)
  {
    v10 = v9;
  }

  [(HMIPreference *)self logPreferenceForKey:keyCopy value:v10];

  return v10;
}

@end