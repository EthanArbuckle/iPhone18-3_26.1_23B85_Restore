@interface HMDSiriEndpointProfileAccessorySettingFields
+ (id)keyPaths;
+ (id)logCategory;
- (HMDSiriEndpointProfileAccessorySettingFields)init;
- (id)attributeDescriptions;
- (id)serializeFields;
- (void)setLanguageValue:(id)a3 forKeyPath:(id)a4;
- (void)setNumberValue:(id)a3 forKeyPath:(id)a4;
@end

@implementation HMDSiriEndpointProfileAccessorySettingFields

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDSiriEndpointProfileAccessorySettingFields *)self serializeFields];
  v5 = [v3 initWithName:@"serializedFields" value:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)serializeFields
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_serializeFields copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setLanguageValue:(id)a3 forKeyPath:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[HMDSiriEndpointProfileAccessorySettingFields languageValueKeyPaths];
  v9 = [v8 containsObject:v7];

  if (v9)
  {
    v10 = [HMDSiriEndpointProfileAccessorySettingFields fieldKeyForKeyPath:v7];
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v10, @"_inputLanguageCode"];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v10, @"_outputVoiceLanguageCode"];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v10, @"_outputVoiceGenderCode"];
    os_unfair_lock_lock_with_options();
    serializeFields = self->_serializeFields;
    v14 = [v6 inputLanguageCode];
    [(NSMutableDictionary *)serializeFields setObject:v14 forKey:v24];

    v15 = self->_serializeFields;
    v16 = [v6 outputVoiceLanguageCode];
    [(NSMutableDictionary *)v15 setObject:v16 forKey:v11];

    v17 = self->_serializeFields;
    v18 = [v6 outputVoiceGenderCode];
    [(NSMutableDictionary *)v17 setObject:v18 forKey:v12];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543874;
      v26 = v22;
      v27 = 2112;
      v28 = v6;
      v29 = 2112;
      v30 = v7;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to store language value: %@ for keypath: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)setNumberValue:(id)a3 forKeyPath:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[HMDSiriEndpointProfileAccessorySettingFields numberValueKeyPaths];
  v9 = [v8 containsObject:v7];

  if (v9)
  {
    v10 = [HMDSiriEndpointProfileAccessorySettingFields fieldKeyForKeyPath:v7];
    os_unfair_lock_lock_with_options();
    [(NSMutableDictionary *)self->_serializeFields setObject:v6 forKey:v10];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543874;
      v17 = v14;
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to store integer value: %@ for keypath: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (HMDSiriEndpointProfileAccessorySettingFields)init
{
  v7.receiver = self;
  v7.super_class = HMDSiriEndpointProfileAccessorySettingFields;
  v2 = [(HMDSiriEndpointProfileAccessorySettingFields *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    serializeFields = v3->_serializeFields;
    v3->_serializeFields = v4;
  }

  return v3;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t7_56196 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t7_56196, &__block_literal_global_56197);
  }

  v3 = logCategory__hmf_once_v8_56198;

  return v3;
}

uint64_t __59__HMDSiriEndpointProfileAccessorySettingFields_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v8_56198;
  logCategory__hmf_once_v8_56198 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)keyPaths
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = +[HMDSiriEndpointProfileAccessorySettingFields BOOLeanValueKeyPaths];
  [v2 addObjectsFromArray:v3];

  v4 = +[HMDSiriEndpointProfileAccessorySettingFields numberValueKeyPaths];
  [v2 addObjectsFromArray:v4];

  v5 = +[HMDSiriEndpointProfileAccessorySettingFields languageValueKeyPaths];
  [v2 addObjectsFromArray:v5];

  v6 = [v2 copy];

  return v6;
}

@end