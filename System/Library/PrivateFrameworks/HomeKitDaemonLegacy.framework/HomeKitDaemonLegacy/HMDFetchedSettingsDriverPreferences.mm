@interface HMDFetchedSettingsDriverPreferences
+ (id)logCategory;
- (HMDFetchedSettingsDriverDelegate)delegate;
- (HMDFetchedSettingsDriverPreferences)initWithQueue:(id)queue userDefaults:(id)defaults prefix:(id)prefix defaultValues:(id)values;
- (void)fetchSettingsForKeyPaths:(id)paths completion:(id)completion;
- (void)updateSettingWithKeyPath:(id)path BOOLSettingValue:(id)value completion:(id)completion;
- (void)updateSettingWithKeyPath:(id)path integerSettingValue:(id)value completion:(id)completion;
- (void)updateSettingWithKeyPath:(id)path languageSettingValue:(id)value completion:(id)completion;
- (void)updateSettingWithKeyPath:(id)path primaryUserInfo:(id)info completion:(id)completion;
@end

@implementation HMDFetchedSettingsDriverPreferences

- (HMDFetchedSettingsDriverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)updateSettingWithKeyPath:(id)path primaryUserInfo:(id)info completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  infoCopy = info;
  completionCopy = completion;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v14;
    v19 = 2112;
    v20 = pathCopy;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Primary user info is not supported for keyPath: %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  completionCopy[2](completionCopy, v15);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)updateSettingWithKeyPath:(id)path languageSettingValue:(id)value completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  valueCopy = value;
  completionCopy = completion;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v14;
    v19 = 2112;
    v20 = pathCopy;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Only BOOL settings are supported keyPath: %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  completionCopy[2](completionCopy, v15);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)updateSettingWithKeyPath:(id)path integerSettingValue:(id)value completion:(id)completion
{
  v63 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  valueCopy = value;
  completionCopy = completion;
  if (self)
  {
    Property = objc_getProperty(self, v10, 16, 1);
  }

  else
  {
    Property = 0;
  }

  dispatch_assert_queue_V2(Property);
  v13 = [MEMORY[0x277CD1790] isKeyPathForConstrainedNumberSettingType:pathCopy];
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  v17 = v16;
  if (v13)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543874;
      v58 = v18;
      v59 = 2114;
      v60 = pathCopy;
      v61 = 2112;
      v62 = valueCopy;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Updating %{public}@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    if (self)
    {
      v20 = objc_getProperty(selfCopy, v19, 32, 1);
    }

    else
    {
      v20 = 0;
    }

    v22 = [v20 stringByAppendingString:pathCopy];
    if (self)
    {
      v23 = objc_getProperty(selfCopy, v21, 24, 1);
    }

    else
    {
      v23 = 0;
    }

    v24 = [v23 objectForKey:v22];
    v25 = v24;
    if (v24 && (v26 = [v24 integerValue], v26 == objc_msgSend(valueCopy, "integerValue")))
    {
      completionCopy[2](completionCopy, 0);
    }

    else
    {
      v55 = pathCopy;
      v28 = objc_autoreleasePoolPush();
      v29 = selfCopy;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        HMFGetLogIdentifier();
        v31 = v29;
        v32 = v25;
        v34 = v33 = valueCopy;
        *buf = 138543874;
        v58 = v34;
        v59 = 2114;
        v60 = v55;
        v61 = 2112;
        v62 = v33;
        _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@Changing %{public}@ to %@", buf, 0x20u);

        valueCopy = v33;
        v25 = v32;
        v29 = v31;
      }

      objc_autoreleasePoolPop(v28);
      if (self)
      {
        v36 = objc_getProperty(v29, v35, 24, 1);
      }

      else
      {
        v36 = 0;
      }

      pathCopy = v55;
      v37 = v36;
      [v37 setInteger:objc_msgSend(valueCopy forKey:{"integerValue"), v22}];

      completionCopy[2](completionCopy, 0);
      v38 = [MEMORY[0x277CD1790] defaultSettingsConstraintsForKeyPath:v55];
      if (v38)
      {
        v53 = objc_alloc(MEMORY[0x277CD1870]);
        integerValue = [valueCopy integerValue];
        v39 = [v38 objectAtIndexedSubscript:1];
        integerValue2 = [v39 integerValue];
        [v38 objectAtIndexedSubscript:0];
        v41 = v54 = v25;
        integerValue3 = [v41 integerValue];
        [v38 objectAtIndexedSubscript:3];
        v43 = v29;
        v44 = completionCopy;
        v46 = v45 = valueCopy;
        v47 = [v53 initWithKeyPath:v55 readOnly:0 integerValue:integerValue maxValue:integerValue2 minValue:integerValue3 valueStepSize:{objc_msgSend(v46, "integerValue")}];

        valueCopy = v45;
        completionCopy = v44;

        delegate = [(HMDFetchedSettingsDriverPreferences *)v43 delegate];
        v56 = v47;
        v49 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
        v50 = v43;
        pathCopy = v55;
        [delegate driver:v50 didUpdateSettings:v49];

        v25 = v54;
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v58 = v27;
      v59 = 2114;
      v60 = pathCopy;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Key %{public}@ not part of expected integer keys", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (completionCopy)[2](completionCopy, v22);
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (void)updateSettingWithKeyPath:(id)path BOOLSettingValue:(id)value completion:(id)completion
{
  v46 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  valueCopy = value;
  completionCopy = completion;
  if (self)
  {
    Property = objc_getProperty(self, v10, 16, 1);
  }

  else
  {
    Property = 0;
  }

  dispatch_assert_queue_V2(Property);
  v13 = [MEMORY[0x277CD1790] isKeyPathForBooleanSettingType:pathCopy];
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  v17 = v16;
  if (v13)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543874;
      v41 = v18;
      v42 = 2114;
      v43 = pathCopy;
      v44 = 2112;
      v45 = valueCopy;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Updating %{public}@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    if (self)
    {
      v20 = objc_getProperty(selfCopy, v19, 32, 1);
    }

    else
    {
      v20 = 0;
    }

    v22 = [v20 stringByAppendingString:pathCopy];
    if (self)
    {
      v23 = objc_getProperty(selfCopy, v21, 24, 1);
    }

    else
    {
      v23 = 0;
    }

    v24 = [v23 objectForKey:v22];
    v25 = v24;
    if (v24 && (v26 = [v24 BOOLValue], v26 == objc_msgSend(valueCopy, "BOOLValue")))
    {
      completionCopy[2](completionCopy, 0);
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      v28 = selfCopy;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543874;
        v41 = v30;
        v42 = 2114;
        v43 = pathCopy;
        v44 = 2112;
        v45 = valueCopy;
        _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Changing %{public}@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v27);
      if (self)
      {
        v32 = objc_getProperty(v28, v31, 24, 1);
      }

      else
      {
        v32 = 0;
      }

      v33 = v32;
      [v33 setBool:objc_msgSend(valueCopy forKey:{"BOOLValue"), v22}];

      completionCopy[2](completionCopy, 0);
      v34 = [objc_alloc(MEMORY[0x277CD1868]) initWithKeyPath:pathCopy readOnly:0 BOOLValue:{objc_msgSend(valueCopy, "BOOLValue")}];
      delegate = [(HMDFetchedSettingsDriverPreferences *)v28 delegate];
      v39 = v34;
      v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
      [delegate driver:v28 didUpdateSettings:v36];
    }
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v37 = HMFGetLogIdentifier();
      *buf = 138543618;
      v41 = v37;
      v42 = 2114;
      v43 = pathCopy;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Key %{public}@ not part of expected BOOL keys", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (completionCopy)[2](completionCopy, v22);
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)fetchSettingsForKeyPaths:(id)paths completion:(id)completion
{
  v86 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  completionCopy = completion;
  if (self)
  {
    Property = objc_getProperty(self, v7, 16, 1);
  }

  else
  {
    Property = 0;
  }

  dispatch_assert_queue_V2(Property);
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v83 = v12;
    v84 = 2114;
    v85 = pathsCopy;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Got fetch request for keyPaths:%{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v72 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(pathsCopy, "count")}];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = pathsCopy;
  v76 = [obj countByEnumeratingWithState:&v77 objects:v81 count:16];
  if (!v76)
  {
    v15 = 0;
    goto LABEL_57;
  }

  v75 = *v78;
  v14 = 0x277CD1000uLL;
  v15 = 0;
  selfCopy2 = self;
  v73 = selfCopy;
  do
  {
    v16 = 0;
    do
    {
      if (*v78 != v75)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v77 + 1) + 8 * v16);
      if (self)
      {
        v18 = objc_getProperty(selfCopy, v13, 32, 1);
      }

      else
      {
        v18 = 0;
      }

      v20 = [v18 stringByAppendingString:{v17, completionCopy}];
      if (self)
      {
        v21 = objc_getProperty(selfCopy, v19, 24, 1);
      }

      else
      {
        v21 = 0;
      }

      v22 = [v21 objectForKey:v20];

      if (!v22)
      {
        v32 = objc_autoreleasePoolPush();
        v33 = selfCopy;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v36 = v35 = v15;
          *buf = 138543618;
          v83 = v36;
          v84 = 2114;
          v85 = v17;
          _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@Key %{public}@ not found", buf, 0x16u);

          v15 = v35;
          v14 = 0x277CD1000;
        }

        objc_autoreleasePoolPop(v32);
        v37 = MEMORY[0x277CCA9B8];
        v38 = 2;
        goto LABEL_36;
      }

      if ([*(v14 + 1936) isKeyPathForBooleanSettingType:v17])
      {
        if (self)
        {
          v24 = objc_getProperty(selfCopy, v23, 24, 1);
        }

        else
        {
          v24 = 0;
        }

        v25 = [v24 BOOLForKey:v20];
        v26 = [objc_alloc(MEMORY[0x277CD1868]) initWithKeyPath:v17 readOnly:0 BOOLValue:v25];
        v27 = objc_autoreleasePoolPush();
        v28 = selfCopy;
        v29 = HMFGetOSLogHandle();
        v30 = v29;
        if (v26)
        {
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v31 = HMFGetLogIdentifier();
            *buf = 138543618;
            v83 = v31;
            v84 = 2114;
            v85 = v17;
            _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@BOOL %{public}@", buf, 0x16u);

            selfCopy = v73;
          }

          objc_autoreleasePoolPop(v27);
          [v72 addObject:v26];
        }

        else
        {
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v58 = HMFGetLogIdentifier();
            *buf = 138543618;
            v83 = v58;
            v84 = 2114;
            v85 = v17;
            _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Boolean data type for Key %{public}@ had no integer setting", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v27);
          v59 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];

          v26 = 0;
          v15 = v59;
        }
      }

      else
      {
        if (![*(v14 + 1936) isKeyPathForConstrainedNumberSettingType:v17])
        {
          v53 = objc_autoreleasePoolPush();
          v54 = selfCopy;
          v55 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v57 = v56 = v15;
            *buf = 138543618;
            v83 = v57;
            v84 = 2114;
            v85 = v17;
            _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_ERROR, "%{public}@Data type of key %{public}@ is neither a BOOL nor a number", buf, 0x16u);

            v15 = v56;
            v14 = 0x277CD1000;
          }

          objc_autoreleasePoolPop(v53);
          v37 = MEMORY[0x277CCA9B8];
          v38 = 48;
LABEL_36:
          [v37 hmErrorWithCode:v38];
          v15 = v26 = v15;
          goto LABEL_48;
        }

        v26 = [*(v14 + 1936) defaultSettingsConstraintsForKeyPath:v17];
        if (v26)
        {
          v71 = v15;
          if (self)
          {
            v40 = objc_getProperty(selfCopy, v39, 24, 1);
          }

          else
          {
            v40 = 0;
          }

          v70 = [v40 integerForKey:v20];
          v41 = objc_alloc(MEMORY[0x277CD1870]);
          v42 = [v26 objectAtIndexedSubscript:1];
          integerValue = [v42 integerValue];
          v44 = [v26 objectAtIndexedSubscript:0];
          integerValue2 = [v44 integerValue];
          v46 = [v26 objectAtIndexedSubscript:3];
          v47 = [v41 initWithKeyPath:v17 readOnly:0 integerValue:v70 maxValue:integerValue minValue:integerValue2 valueStepSize:{objc_msgSend(v46, "integerValue")}];

          v48 = objc_autoreleasePoolPush();
          v49 = v73;
          v50 = HMFGetOSLogHandle();
          v51 = v50;
          if (v47)
          {
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              v52 = HMFGetLogIdentifier();
              *buf = 138543618;
              v83 = v52;
              v84 = 2114;
              v85 = v17;
              _os_log_impl(&dword_2531F8000, v51, OS_LOG_TYPE_DEFAULT, "%{public}@int %{public}@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v48);
            [v72 addObject:v47];
            self = selfCopy2;
            v15 = v71;
          }

          else
          {
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              v64 = HMFGetLogIdentifier();
              *buf = 138543618;
              v83 = v64;
              v84 = 2114;
              v85 = v17;
              _os_log_impl(&dword_2531F8000, v51, OS_LOG_TYPE_ERROR, "%{public}@Integer data type for Key %{public}@ had no integer setting", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v48);
            v65 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];

            v47 = 0;
            v15 = v65;
            self = selfCopy2;
          }
        }

        else
        {
          v60 = objc_autoreleasePoolPush();
          v61 = selfCopy;
          v62 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            v63 = HMFGetLogIdentifier();
            *buf = 138543618;
            v83 = v63;
            v84 = 2114;
            v85 = v17;
            _os_log_impl(&dword_2531F8000, v62, OS_LOG_TYPE_DEFAULT, "%{public}@Default settings constraints for Key %{public}@ not found", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v60);
          [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
          v15 = v47 = v15;
        }

        selfCopy = v73;
      }

      v14 = 0x277CD1000;
LABEL_48:

      ++v16;
    }

    while (v76 != v16);
    v66 = [obj countByEnumeratingWithState:&v77 objects:v81 count:16];
    v76 = v66;
  }

  while (v66);
LABEL_57:

  completionCopy[2](completionCopy, v72, v15);
  v67 = *MEMORY[0x277D85DE8];
}

- (HMDFetchedSettingsDriverPreferences)initWithQueue:(id)queue userDefaults:(id)defaults prefix:(id)prefix defaultValues:(id)values
{
  v63 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  defaultsCopy = defaults;
  prefixCopy = prefix;
  valuesCopy = values;
  v55.receiver = self;
  v55.super_class = HMDFetchedSettingsDriverPreferences;
  v15 = [(HMDFetchedSettingsDriverPreferences *)&v55 init];
  v16 = v15;
  if (v15)
  {
    v45 = defaultsCopy;
    v46 = queueCopy;
    objc_storeStrong(&v15->_queue, queue);
    objc_storeStrong(&v16->_userDefaults, defaults);
    objc_storeStrong(&v16->_prefix, prefix);
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = valuesCopy;
    v17 = [obj countByEnumeratingWithState:&v51 objects:v62 count:16];
    if (!v17)
    {
      goto LABEL_23;
    }

    v18 = v17;
    v19 = *v52;
    v20 = 0x277CD1000uLL;
    v47 = prefixCopy;
    v48 = *v52;
    v49 = valuesCopy;
    while (1)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v52 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v51 + 1) + 8 * i);
        v23 = [prefixCopy stringByAppendingString:{v22, v45, v46}];
        v25 = [objc_getProperty(v16 v24];

        if (!v25)
        {
          if ([*(v20 + 1936) isKeyPathForBooleanSettingType:v22])
          {
            v26 = objc_autoreleasePoolPush();
            v27 = v16;
            v28 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              v29 = HMFGetLogIdentifier();
              v30 = [obj objectForKeyedSubscript:v22];
              *buf = 138543874;
              v57 = v29;
              v58 = 2112;
              v59 = v30;
              v60 = 2114;
              v61 = v22;
              _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@Setting default BOOL value %@ for Key: %{public}@", buf, 0x20u);

              prefixCopy = v47;
            }

            objc_autoreleasePoolPop(v26);
            v32 = objc_getProperty(v27, v31, 24, 1);
            v33 = [obj objectForKeyedSubscript:v22];
            [v32 setBool:objc_msgSend(v33 forKey:{"BOOLValue"), v23}];
            goto LABEL_16;
          }

          v34 = [*(v20 + 1936) isKeyPathForConstrainedNumberSettingType:v22];
          v35 = objc_autoreleasePoolPush();
          v36 = v16;
          v37 = HMFGetOSLogHandle();
          v38 = v37;
          if (v34)
          {
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              v39 = HMFGetLogIdentifier();
              v40 = [obj objectForKeyedSubscript:v22];
              *buf = 138543874;
              v57 = v39;
              v58 = 2112;
              v59 = v40;
              v60 = 2114;
              v61 = v22;
              _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@Setting default integer value %@ for Key: %{public}@", buf, 0x20u);

              prefixCopy = v47;
            }

            objc_autoreleasePoolPop(v35);
            v32 = objc_getProperty(v36, v41, 24, 1);
            v33 = [obj objectForKeyedSubscript:v22];
            [v32 setInteger:objc_msgSend(v33 forKey:{"integerValue"), v23}];
LABEL_16:
          }

          else
          {
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              v42 = HMFGetLogIdentifier();
              *buf = 138543618;
              v57 = v42;
              v58 = 2114;
              v59 = v22;
              _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@Data type for Key %{public}@ not supported", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v35);
          }

          v19 = v48;
          valuesCopy = v49;
          v20 = 0x277CD1000;
        }
      }

      v18 = [obj countByEnumeratingWithState:&v51 objects:v62 count:16];
      if (!v18)
      {
LABEL_23:

        defaultsCopy = v45;
        queueCopy = v46;
        break;
      }
    }
  }

  v43 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_140183 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_140183, &__block_literal_global_140184);
  }

  v3 = logCategory__hmf_once_v4_140185;

  return v3;
}

uint64_t __50__HMDFetchedSettingsDriverPreferences_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_140185;
  logCategory__hmf_once_v4_140185 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end