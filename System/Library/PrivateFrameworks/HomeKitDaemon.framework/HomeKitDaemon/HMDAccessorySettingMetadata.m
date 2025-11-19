@interface HMDAccessorySettingMetadata
+ (id)settingWithDictonaryRepresentation:(id)a3 parentKeyPath:(id)a4;
+ (id)settingsWithArrayRepresenation:(id)a3 parentKeyPath:(id)a4;
+ (id)valueWithType:(int64_t)a3 constraints:(id)a4 representation:(id)a5;
- (HMDAccessorySettingMetadata)initWithName:(id)a3 type:(int64_t)a4 properties:(unint64_t)a5 constraints:(id)a6 mergeStrategy:(id)a7 value:(id)a8 parentKeyPath:(id)a9;
- (NSString)propertyDescription;
- (id)modelWithParentIdentifier:(id)a3;
- (id)modelsWithParentIdentifier:(id)a3;
@end

@implementation HMDAccessorySettingMetadata

- (id)modelWithParentIdentifier:(id)a3
{
  v4 = a3;
  v5 = [HMDAccessorySettingModel alloc];
  v6 = [MEMORY[0x277CCAD78] UUID];
  v7 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:1 uuid:v6 parentUUID:v4];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAccessorySettingMetadata properties](self, "properties")}];
  [(HMDAccessorySettingModel *)v7 setProperties:v8];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAccessorySettingMetadata type](self, "type")}];
  [(HMDAccessorySettingModel *)v7 setType:v9];

  v10 = [(HMDAccessorySettingMetadata *)self name];
  [(HMDAccessorySettingModel *)v7 setName:v10];

  v11 = [(HMDAccessorySettingMetadata *)self value];
  v12 = encodeRootObject();
  [(HMDAccessorySettingModel *)v7 setValue:v12];

  [(HMDAccessorySettingModel *)v7 setConfigurationVersion:&unk_283E72218];

  return v7;
}

- (id)modelsWithParentIdentifier:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = [(HMDAccessorySettingMetadata *)self modelWithParentIdentifier:a3];
  v5 = [MEMORY[0x277CBEB18] arrayWithObject:v4];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(HMDAccessorySettingMetadata *)self constraints];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v4 uuid];
        v13 = [v11 modelWithParentIdentifier:v12];

        [v13 setObjectChangeType:1];
        [v5 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (NSString)propertyDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDAccessorySettingMetadata *)self name];
  [(HMDAccessorySettingMetadata *)self type];
  v5 = HMAccessorySettingTypeToString();
  [(HMDAccessorySettingMetadata *)self properties];
  v6 = HMAccessorySettingPropertiesToString();
  v7 = [(HMDAccessorySettingMetadata *)self value];
  v8 = [(HMDAccessorySettingMetadata *)self constraints];
  v9 = [v3 stringWithFormat:@", Name = %@, Type = %@, Properties = %@, Value = %@, Constraints = %@", v4, v5, v6, v7, v8];

  return v9;
}

- (HMDAccessorySettingMetadata)initWithName:(id)a3 type:(int64_t)a4 properties:(unint64_t)a5 constraints:(id)a6 mergeStrategy:(id)a7 value:(id)a8 parentKeyPath:(id)a9
{
  v15 = a3;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  if (v15)
  {
    v20 = v15;
    if (a4)
    {
      v31.receiver = self;
      v31.super_class = HMDAccessorySettingMetadata;
      v21 = [(HMDAccessorySettingMetadata *)&v31 init];
      if (v21)
      {
        v22 = [v20 copy];
        name = v21->_name;
        v21->_name = v22;

        v24 = [v19 stringByAppendingFormat:@".%@", v20];
        keyPath = v21->_keyPath;
        v21->_keyPath = v24;

        v21->_type = a4;
        v21->_properties = a5;
        if (v16)
        {
          v26 = [v16 copy];
        }

        else
        {
          v26 = MEMORY[0x277CBEBF8];
        }

        objc_storeStrong(&v21->_constraints, v26);
        if (v16)
        {
        }

        objc_storeStrong(&v21->_mergeStrategy, a7);
        v28 = [v18 copy];
        value = v21->_value;
        v21->_value = v28;
      }

      self = v21;
      v27 = self;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

+ (id)valueWithType:(int64_t)a3 constraints:(id)a4 representation:(id)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = v8;
  v10 = 0;
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      if (v8)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v11 = objc_autoreleasePoolPush();
          v12 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = HMFGetLogIdentifier();
            *buf = 138543618;
            v42 = v13;
            v43 = 2112;
            v44 = v9;
            v14 = "%{public}@Invalid data value: %@";
            goto LABEL_45;
          }

LABEL_46:

          objc_autoreleasePoolPop(v11);
          v10 = 0;
          goto LABEL_47;
        }

        goto LABEL_34;
      }
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_47;
      }

      if (v8)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v11 = objc_autoreleasePoolPush();
          v12 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = HMFGetLogIdentifier();
            *buf = 138543618;
            v42 = v13;
            v43 = 2112;
            v44 = v9;
            v14 = "%{public}@Invalid number value: %@";
LABEL_45:
            _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, v14, buf, 0x16u);

            goto LABEL_46;
          }

          goto LABEL_46;
        }

        goto LABEL_34;
      }
    }

    goto LABEL_35;
  }

  if (a3 == 3)
  {
    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v11 = objc_autoreleasePoolPush();
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = HMFGetLogIdentifier();
          *buf = 138543618;
          v42 = v13;
          v43 = 2112;
          v44 = v9;
          v14 = "%{public}@Invalid string value: %@";
          goto LABEL_45;
        }

        goto LABEL_46;
      }

LABEL_34:
      v30 = v9;
LABEL_36:
      v10 = v30;
      goto LABEL_47;
    }

LABEL_35:
    v30 = [MEMORY[0x277CBEB68] null];
    goto LABEL_36;
  }

  if (a3 == 4)
  {
    v15 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    if (v17)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v36 = v7;
      v18 = v7;
      v19 = [v18 countByEnumeratingWithState:&v37 objects:v47 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v38;
        while (2)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v38 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = [*(*(&v37 + 1) + 8 * i) value];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = v23;
            }

            else
            {
              v24 = 0;
            }

            v10 = v24;

            v25 = [v10 title];
            v26 = [v25 isEqualToString:v17];

            if (v26)
            {

              goto LABEL_38;
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v37 objects:v47 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      v27 = objc_autoreleasePoolPush();
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543874;
        v42 = v29;
        v43 = 2112;
        v44 = v17;
        v45 = 2112;
        v46 = v18;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@Invalid item with title '%@', constraints: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v27);
      v10 = 0;
LABEL_38:
      v7 = v36;
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543618;
        v42 = v33;
        v43 = 2112;
        v44 = v15;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@Invalid string value: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v31);
      v10 = 0;
    }
  }

LABEL_47:

  v34 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)settingWithDictonaryRepresentation:(id)a3 parentKeyPath:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 hmf_stringForKey:@"Key"];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    v11 = [v6 hmf_stringForKey:@"Type"];
    if (v11)
    {
      v12 = HMAccessorySettingTypeFromString();
      v13 = [v6 hmf_arrayForKey:@"Properties"];
      v14 = v13;
      if (v13)
      {
        v36 = a1;
        v37 = v11;
        v39 = v7;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v15 = [v13 countByEnumeratingWithState:&v40 objects:v44 count:16];
        v38 = v10;
        v35 = v12;
        if (v15)
        {
          v16 = v15;
          v17 = 0;
          v18 = *v41;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v41 != v18)
              {
                objc_enumerationMutation(v14);
              }

              v20 = *(*(&v40 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v21 = v20;
              }

              else
              {
                v21 = 0;
              }

              v22 = v21;

              v23 = HMAccessorySettingPropertiesFromString();
              v17 |= v23;
            }

            v16 = [v14 countByEnumeratingWithState:&v40 objects:v44 count:16];
          }

          while (v16);
        }

        else
        {
          v17 = 0;
        }

        v25 = MEMORY[0x277CD1780];
        v26 = [v6 hmf_arrayForKey:@"Constraints"];
        v27 = [v25 constraintsWithArrayRepresenation:v26];

        v28 = [HMDAccessorySettingMergeStrategy alloc];
        v29 = [v6 valueForKey:@"MergeStrategy"];
        v30 = [(HMDAccessorySettingMergeStrategy *)v28 initWithMergeStrategy:v29];

        v31 = [v6 objectForKeyedSubscript:@"Value"];
        v32 = [HMDAccessorySettingMetadata valueWithType:v35 constraints:v27 representation:v31];

        v10 = v38;
        v7 = v39;
        v24 = [[v36 alloc] initWithName:v38 type:v35 properties:v17 constraints:v27 mergeStrategy:v30 value:v32 parentKeyPath:v39];

        v11 = v37;
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (id)settingsWithArrayRepresenation:(id)a3 parentKeyPath:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [HMDAccessorySettingMetadata settingWithDictonaryRepresentation:v13 parentKeyPath:v6, v18];
          if (v14)
          {
            [v7 addObject:v14];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v15 = [v7 copy];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end