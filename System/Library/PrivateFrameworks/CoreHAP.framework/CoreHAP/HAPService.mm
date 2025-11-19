@interface HAPService
+ (BOOL)hap2_mergeServices:(id)a3 discoveredServices:(id)a4 mergedServices:(id)a5;
- (BOOL)_validateMandatoryCharacteristics;
- (BOOL)_validateServiceCharacteristics;
- (BOOL)hap2_mergeWithService:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)mergeObject:(id)a3;
- (BOOL)shouldMergeObject:(id)a3;
- (BOOL)updateAndValidateCharacteristics;
- (CBService)cbService;
- (HAPAccessory)accessory;
- (HAPService)initWithType:(id)a3 instanceID:(id)a4 parsedCharacteristics:(id)a5 serviceProperties:(unint64_t)a6 linkedServices:(id)a7;
- (NSArray)characteristics;
- (NSString)description;
- (id)characteristicsOfType:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)propertiesDescription;
- (unint64_t)hash;
@end

@implementation HAPService

- (HAPAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (BOOL)mergeObject:(id)a3
{
  v92 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (!v6)
  {
LABEL_28:
    v41 = 0;
    goto LABEL_45;
  }

  if (![(HAPService *)self shouldMergeObject:v6])
  {
    v37 = objc_autoreleasePoolPush();
    v38 = self;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = HMFGetLogIdentifier();
      *buf = 138543618;
      v89 = v40;
      v90 = 2112;
      v91 = v6;
      _os_log_impl(&dword_22AADC000, v39, OS_LOG_TYPE_INFO, "%{public}@Not merging with service: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v37);
    goto LABEL_28;
  }

  v65 = v6;
  v7 = MEMORY[0x277CBEB98];
  v8 = [(HAPService *)self characteristics];
  v9 = [v7 setWithArray:v8];

  v10 = MEMORY[0x277CBEB98];
  v66 = v4;
  v11 = [v4 characteristics];
  v12 = [v10 setWithArray:v11];

  v67 = v9;
  v13 = [v9 mutableCopy];
  v72 = v12;
  [v13 minusSet:v12];
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = v13;
  v14 = [obj countByEnumeratingWithState:&v81 objects:v87 count:16];
  v68 = v14 != 0;
  if (v14)
  {
    v15 = v14;
    v16 = *v82;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v82 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v81 + 1) + 8 * i);
        v19 = objc_autoreleasePoolPush();
        v20 = self;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543618;
          v89 = v22;
          v90 = 2112;
          v91 = v18;
          _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_INFO, "%{public}@Removed characteristic: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v19);
      }

      v15 = [obj countByEnumeratingWithState:&v81 objects:v87 count:16];
    }

    while (v15);
  }

  v23 = [v12 mutableCopy];
  [v23 minusSet:v67];
  v24 = [(HAPService *)self characteristics];
  v25 = [v24 firstObject];
  v26 = [v25 shouldValidateValueAfterReading];

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v70 = v23;
  v27 = [v70 countByEnumeratingWithState:&v77 objects:v86 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v78;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v78 != v29)
        {
          objc_enumerationMutation(v70);
        }

        v31 = *(*(&v77 + 1) + 8 * j);
        v32 = objc_autoreleasePoolPush();
        v33 = self;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          v35 = HMFGetLogIdentifier();
          *buf = 138543618;
          v89 = v35;
          v90 = 2112;
          v91 = v31;
          _os_log_impl(&dword_22AADC000, v34, OS_LOG_TYPE_INFO, "%{public}@Added characteristic: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v32);
        [v31 setService:v33];
        [v31 setShouldValidateValueAfterReading:v26];
      }

      v28 = [v70 countByEnumeratingWithState:&v77 objects:v86 count:16];
    }

    while (v28);
    v36 = 1;
  }

  else
  {
    v36 = v68;
  }

  v42 = [v67 mutableCopy];
  [v42 minusSet:obj];
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v69 = v42;
  v43 = [v69 countByEnumeratingWithState:&v73 objects:v85 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v74;
    do
    {
      for (k = 0; k != v44; ++k)
      {
        if (*v74 != v45)
        {
          objc_enumerationMutation(v69);
        }

        v47 = *(*(&v73 + 1) + 8 * k);
        v48 = objc_autoreleasePoolPush();
        v49 = self;
        v50 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
        {
          v51 = HMFGetLogIdentifier();
          *buf = 138543618;
          v89 = v51;
          v90 = 2112;
          v91 = v47;
          _os_log_impl(&dword_22AADC000, v50, OS_LOG_TYPE_DEBUG, "%{public}@Merging existing characteristic: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v48);
        v52 = [v72 member:v47];
        if (v52 && [v47 mergeObject:v52])
        {
          v53 = objc_autoreleasePoolPush();
          v54 = v49;
          v55 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
          {
            v56 = HMFGetLogIdentifier();
            *buf = 138543618;
            v89 = v56;
            v90 = 2112;
            v91 = v47;
            _os_log_impl(&dword_22AADC000, v55, OS_LOG_TYPE_INFO, "%{public}@Updated characteristic: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v53);
          v36 = 1;
        }
      }

      v44 = [v69 countByEnumeratingWithState:&v73 objects:v85 count:16];
    }

    while (v44);
  }

  v41 = v36;

  v57 = MEMORY[0x277CBEB18];
  v58 = [v69 allObjects];
  v59 = [v57 arrayWithArray:v58];

  v60 = [v70 allObjects];
  [v59 addObjectsFromArray:v60];

  v61 = [v59 copy];
  [(HAPService *)self setCharacteristics:v61];

  v6 = v65;
  -[HAPService setServiceProperties:](self, "setServiceProperties:", [v65 serviceProperties]);
  v62 = [v65 linkedServices];
  [(HAPService *)self setLinkedServices:v62];

  v4 = v66;
LABEL_45:

  v63 = *MEMORY[0x277D85DE8];
  return v41 & 1;
}

- (BOOL)shouldMergeObject:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HAPService *)self isEqual:v4])
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = [(HAPService *)self characteristics];
    v7 = [v5 setWithArray:v6];

    v8 = MEMORY[0x277CBEB98];
    v30 = v4;
    v9 = [v4 characteristics];
    v10 = [v8 setWithArray:v9];

    v29 = v7;
    v11 = [v7 mutableCopy];
    [v11 intersectSet:v10];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v32 objects:v42 count:16];
    if (!v13)
    {
      v16 = 1;
      goto LABEL_18;
    }

    v14 = v13;
    v15 = *v33;
    v16 = 1;
    while (1)
    {
      v17 = 0;
      v31 = v14;
      do
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v32 + 1) + 8 * v17);
        v19 = [v10 member:v18];
        if (v19)
        {
          if ([v18 shouldMergeObject:v19])
          {
            goto LABEL_13;
          }

          v20 = objc_autoreleasePoolPush();
          v21 = self;
          v22 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            HMFGetLogIdentifier();
            v23 = v15;
            v24 = v10;
            v26 = v25 = self;
            *buf = 138543874;
            v37 = v26;
            v38 = 2112;
            v39 = v19;
            v40 = 2112;
            v41 = v12;
            _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to merge characteristic, %@, with existing characteristic: %@", buf, 0x20u);

            self = v25;
            v10 = v24;
            v15 = v23;
            v14 = v31;
          }

          objc_autoreleasePoolPop(v20);
        }

        v16 = 0;
LABEL_13:

        ++v17;
      }

      while (v14 != v17);
      v14 = [v12 countByEnumeratingWithState:&v32 objects:v42 count:16];
      if (!v14)
      {
LABEL_18:

        v4 = v30;
        goto LABEL_19;
      }
    }
  }

  v16 = 0;
LABEL_19:

  v27 = *MEMORY[0x277D85DE8];
  return v16 & 1;
}

- (id)characteristicsOfType:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(HAPService *)self characteristics];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 type];
        v13 = [v12 isEqualToString:v4];

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)_validateMandatoryCharacteristics
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = +[HAPMetadata getSharedInstance];
  v4 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(HAPService *)self characteristics];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v15 + 1) + 8 * v9) type];
        [v4 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v11 = [(HAPService *)self type];
  v12 = [v3 validateMandatoryCharacteristics:v4 forService:v11];

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)_validateServiceCharacteristics
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(HAPService *)self characteristics];
  v4 = [v3 count];

  if (!v4)
  {
    v5 = objc_autoreleasePoolPush();
    v12 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v8;
      v9 = "%{public}@One or more characteristics are required";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      goto LABEL_7;
    }

LABEL_8:

    objc_autoreleasePoolPop(v5);
    goto LABEL_9;
  }

  if (![(HAPService *)self _validateMandatoryCharacteristics])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v8;
      v9 = "%{public}@Invalid mandatory characteristics";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEFAULT;
LABEL_7:
      _os_log_impl(&dword_22AADC000, v10, v11, v9, &v15, 0xCu);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
  result = v4 != 0;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)updateAndValidateCharacteristics
{
  v35 = *MEMORY[0x277D85DE8];
  if (![(HAPService *)self _validateServiceCharacteristics])
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v19;
      _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to validate characteristics", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v15 = 0;
    goto LABEL_23;
  }

  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  v4 = [(HAPService *)self characteristics];
  v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [(HAPService *)self characteristics];
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v7)
  {
    v15 = 1;
    goto LABEL_22;
  }

  v8 = v7;
  v9 = *v29;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v29 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v28 + 1) + 8 * i);
      v12 = [v11 instanceID];
      v13 = [v5 containsObject:v12];

      if (v13)
      {
        v20 = objc_autoreleasePoolPush();
        v21 = self;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = HMFGetLogIdentifier();
          *buf = 138543362;
          v34 = v23;
          v24 = "%{public}@Duplicate characteristic instance IDs";
LABEL_20:
          _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_ERROR, v24, buf, 0xCu);
        }

LABEL_21:

        objc_autoreleasePoolPop(v20);
        v15 = 0;
        goto LABEL_22;
      }

      v14 = [v11 instanceID];
      [v5 addObject:v14];

      if (![(HAPService *)self _updateCharacteristic:v11])
      {
        v20 = objc_autoreleasePoolPush();
        v25 = self;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = HMFGetLogIdentifier();
          *buf = 138543362;
          v34 = v23;
          v24 = "%{public}@Failed to update characteristic";
          goto LABEL_20;
        }

        goto LABEL_21;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
    v15 = 1;
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_22:

LABEL_23:
  v26 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)propertiesDescription
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (([(HAPService *)self serviceProperties]& 1) != 0)
  {
    [v3 addObject:@"primary"];
  }

  if (([(HAPService *)self serviceProperties]& 2) != 0)
  {
    [v3 addObject:@"hidden"];
  }

  if ([v3 count])
  {
    v4 = [v3 componentsJoinedByString:{@", "}];
  }

  else
  {
    v4 = @"<none>";
  }

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HAPService *)self instanceID];
  v5 = [(HAPService *)self type];
  v6 = [(HAPService *)self propertiesDescription];
  v7 = [(HAPService *)self linkedServices];
  v8 = [v3 stringWithFormat:@"Instance ID: %@, Type: %@, Properties: %@, Linked Service: %@", v4, v5, v6, v7];

  return v8;
}

- (NSArray)characteristics
{
  if (self->_characteristics)
  {
    return self->_characteristics;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = [(HAPService *)self instanceID];
    v8 = [(HAPService *)v6 instanceID];
    v9 = numbersAreNotEqualNilSafe(v7, v8);

    if (v9)
    {
      goto LABEL_7;
    }

    v12 = [(HAPService *)self type];
    v13 = [(HAPService *)v6 type];
    if (!(v12 | v13))
    {
      goto LABEL_13;
    }

    v14 = v13;
    v15 = [v12 isEqualToString:v13];

    if (!v15)
    {
LABEL_7:
      v10 = 0;
    }

    else
    {
LABEL_13:
      v16 = [(HAPService *)self accessory];
      if (v16)
      {
        v17 = v16;
        v18 = [(HAPService *)v6 accessory];
        if (v18)
        {
          v19 = v18;
          v20 = [(HAPService *)self accessory];
          v21 = [(HAPService *)v6 accessory];
          v10 = [v20 isEqual:v21];
        }

        else
        {
          v10 = 1;
        }
      }

      else
      {
        v10 = 1;
      }
    }
  }

  return v10 & 1;
}

- (unint64_t)hash
{
  v2 = [(HAPService *)self instanceID];
  v3 = [v2 hash];

  return v3;
}

- (HAPService)initWithType:(id)a3 instanceID:(id)a4 parsedCharacteristics:(id)a5 serviceProperties:(unint64_t)a6 linkedServices:(id)a7
{
  v55 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if (isValidTypeName(v12))
  {
    v16 = [v12 hap_validatedAndNormalizedUUIDString];
    if (v16)
    {
      if (isValidInstanceID(v13))
      {
        v46.receiver = self;
        v46.super_class = HAPService;
        self = [(HAPService *)&v46 init];
        if (self)
        {
          v44 = v15;
          +[HAPMetadata getSharedInstance];
          v18 = v17 = v16;
          v19 = [MEMORY[0x277D0F888] hmf_cachedInstanceForString:v17];
          type = self->_type;
          self->_type = v19;

          v45 = v18;
          v21 = v18;
          v16 = v17;
          v22 = [v21 serviceUTIFromType:v17];
          if (v22)
          {
            context = objc_autoreleasePoolPush();
            log = HMFGetOSLogHandle();
            if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
            {
              v23 = HMFGetLogIdentifier();
              v24 = self->_type;
              *buf = 138544130;
              v48 = v23;
              v25 = v23;
              v49 = 2112;
              v50 = v24;
              v51 = 2112;
              v52 = v22;
              v53 = 2112;
              v54 = v13;
              _os_log_impl(&dword_22AADC000, log, OS_LOG_TYPE_DEBUG, "%{public}@%@ ----> %@ [%@]", buf, 0x2Au);
            }

            objc_autoreleasePoolPop(context);
          }

          v26 = v22;
          objc_storeStrong(&self->_instanceID, a4);
          v15 = v44;
          if (v14)
          {
            if ([v14 count] >= 0x65)
            {
              v27 = objc_autoreleasePoolPush();
              v28 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                v29 = HMFGetLogIdentifier();
                *buf = 138543362;
                v48 = v29;
                v30 = "%{public}@### HAPService exceeds maximum number of allowed characteristics";
LABEL_33:
                _os_log_impl(&dword_22AADC000, v28, OS_LOG_TYPE_ERROR, v30, buf, 0xCu);

                goto LABEL_34;
              }

              goto LABEL_34;
            }

            objc_storeStrong(&self->_characteristics, a5);
            if (![(HAPService *)self updateAndValidateCharacteristics])
            {
              v27 = objc_autoreleasePoolPush();
              v28 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                v29 = HMFGetLogIdentifier();
                *buf = 138543362;
                v48 = v29;
                v30 = "%{public}@### HAPService failed updateAndValidateCharacteristics";
                goto LABEL_33;
              }

LABEL_34:

              objc_autoreleasePoolPop(v27);
              goto LABEL_22;
            }
          }

          self->_serviceProperties = a6;
          if (v44)
          {
            v39 = v44;
          }

          else
          {
            v39 = MEMORY[0x277CBEBF8];
          }

          objc_storeStrong(&self->_linkedServices, v39);
        }

        self = self;
        v34 = self;
        goto LABEL_29;
      }

      v35 = objc_autoreleasePoolPush();
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        *buf = 138543362;
        v48 = v37;
        v38 = "%{public}@### Unable to initialize service because of invalid instance ID";
        goto LABEL_20;
      }
    }

    else
    {
      v35 = objc_autoreleasePoolPush();
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        *buf = 138543362;
        v48 = v37;
        v38 = "%{public}@### Unable to initialize service because type name is not a UUID";
LABEL_20:
        _os_log_impl(&dword_22AADC000, v36, OS_LOG_TYPE_ERROR, v38, buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v35);
LABEL_22:
    v34 = 0;
LABEL_29:

    goto LABEL_30;
  }

  v31 = objc_autoreleasePoolPush();
  v32 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    v33 = HMFGetLogIdentifier();
    *buf = 138543618;
    v48 = v33;
    v49 = 2112;
    v50 = v12;
    _os_log_impl(&dword_22AADC000, v32, OS_LOG_TYPE_ERROR, "%{public}@### Unable to initialize service because of invalid service type name: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v31);
  v34 = 0;
LABEL_30:

  v40 = *MEMORY[0x277D85DE8];
  return v34;
}

- (CBService)cbService
{
  v2 = objc_getAssociatedObject(self, "cbService");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)hap2_mergeWithService:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEB38];
  v6 = [(HAPService *)self characteristics];
  v7 = [v5 dictionaryWithCapacity:{objc_msgSend(v6, "count")}];

  v8 = [(HAPService *)self characteristics];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __42__HAPService_HAP2__hap2_mergeWithService___block_invoke;
  v30[3] = &unk_2786D60B0;
  v9 = v7;
  v31 = v9;
  [v8 hmf_enumerateWithAutoreleasePoolUsingBlock:v30];

  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v10 = MEMORY[0x277CBEB18];
  v11 = [v4 characteristics];
  v12 = [v10 arrayWithCapacity:{objc_msgSend(v11, "count")}];

  v13 = [v4 characteristics];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __42__HAPService_HAP2__hap2_mergeWithService___block_invoke_2;
  v22 = &unk_2786D6238;
  v14 = v9;
  v23 = v14;
  v25 = &v26;
  v15 = v12;
  v24 = v15;
  [v13 hmf_enumerateWithAutoreleasePoolUsingBlock:&v19];

  if ([v14 count])
  {
    *(v27 + 24) = 1;
  }

  v16 = [v15 copy];
  [(HAPService *)self setCharacteristics:v16];

  v17 = *(v27 + 24);
  _Block_object_dispose(&v26, 8);

  return v17;
}

void __42__HAPService_HAP2__hap2_mergeWithService___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 instanceID];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

void __42__HAPService_HAP2__hap2_mergeWithService___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v14 = v3;
  v5 = [v3 instanceID];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = a1[4];
    v8 = [v14 instanceID];
    [v7 removeObjectForKey:v8];

    v9 = [v6 hap2_mergeWithCharacteristic:v14];
    v10 = *(a1[6] + 8);
    if (v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = *(v10 + 24);
    }

    *(v10 + 24) = v11 & 1;
    v12 = a1[5];
    v13 = v6;
  }

  else
  {
    *(*(a1[6] + 8) + 24) = 1;
    v12 = a1[5];
    v13 = v14;
  }

  [v12 addObject:v13];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(HAPService *)self type];
  v7 = [v6 copyWithZone:a3];
  v8 = [(HAPService *)self instanceID];
  v9 = [v8 copyWithZone:a3];
  v10 = objc_alloc(MEMORY[0x277CBEA60]);
  v11 = [(HAPService *)self characteristics];
  v12 = [v10 initWithArray:v11 copyItems:1];
  v13 = [(HAPService *)self serviceProperties];
  v14 = objc_alloc(MEMORY[0x277CBEA60]);
  v15 = [(HAPService *)self linkedServices];
  v16 = [v14 initWithArray:v15 copyItems:1];
  v17 = [v5 initWithType:v7 instanceID:v9 parsedCharacteristics:v12 serviceProperties:v13 linkedServices:v16];

  return v17;
}

+ (BOOL)hap2_mergeServices:(id)a3 discoveredServices:(id)a4 mergedServices:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __73__HAPService_HAP2__hap2_mergeServices_discoveredServices_mergedServices___block_invoke;
  v27[3] = &unk_2786D5B58;
  v11 = v10;
  v28 = v11;
  [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:v27];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __73__HAPService_HAP2__hap2_mergeServices_discoveredServices_mergedServices___block_invoke_2;
  v19 = &unk_2786D5050;
  v12 = v11;
  v20 = v12;
  v13 = v9;
  v21 = v13;
  v22 = &v23;
  [v8 hmf_enumerateWithAutoreleasePoolUsingBlock:&v16];
  if ([v12 count])
  {
    v14 = 1;
    *(v24 + 24) = 1;
  }

  else
  {
    v14 = *(v24 + 24);
  }

  _Block_object_dispose(&v23, 8);
  return v14 & 1;
}

void __73__HAPService_HAP2__hap2_mergeServices_discoveredServices_mergedServices___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 instanceID];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

void __73__HAPService_HAP2__hap2_mergeServices_discoveredServices_mergedServices___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v12 = v3;
  v5 = [v3 instanceID];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v12 instanceID];
    [v7 removeObjectForKey:v8];

    v9 = [v6 hap2_mergeWithService:v12];
    v10 = *(*(a1 + 48) + 8);
    if (v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = *(v10 + 24);
    }

    *(v10 + 24) = v11 & 1;
    [v6 updateAndValidateCharacteristics];
    [*(a1 + 40) addObject:v6];
  }

  else
  {
    [*(a1 + 40) addObject:v12];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

@end