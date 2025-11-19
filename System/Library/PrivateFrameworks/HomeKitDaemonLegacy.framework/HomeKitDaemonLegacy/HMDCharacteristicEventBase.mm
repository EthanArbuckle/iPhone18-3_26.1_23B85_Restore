@interface HMDCharacteristicEventBase
+ (id)compareValueOfCharacteristic:(id)a3 againstValue:(id)a4 operatorType:(id)a5;
+ (id)logCategory;
+ (id)lookForCharacteristicByAccessoryUUID:(id)a3 serviceID:(id)a4 characteristicID:(id)a5 inHome:(id)a6 checkForSupport:(BOOL)a7 outError:(id *)a8 shouldLog:(BOOL)a9;
- (BOOL)_activate:(unint64_t)a3 completionHandler:(id)a4;
- (BOOL)isCompatibleWithEvent:(id)a3;
- (HMDCharacteristic)characteristic;
- (HMDCharacteristicEventBase)initWithCoder:(id)a3;
- (HMDCharacteristicEventBase)initWithModel:(id)a3 home:(id)a4;
- (id)createPayload;
- (id)description;
- (void)__handleCharacteristicsChangedPayload:(id)a3;
- (void)_registerForMessages;
- (void)encodeWithCoder:(id)a3;
- (void)fixCharacteristicInHome:(id)a3;
- (void)handleCharacteristicsChangedNotification:(id)a3;
@end

@implementation HMDCharacteristicEventBase

- (BOOL)_activate:(unint64_t)a3 completionHandler:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v39.receiver = self;
  v39.super_class = HMDCharacteristicEventBase;
  v7 = [(HMDEvent *)&v39 _activate:a3 completionHandler:0];
  v8 = [(HMDCharacteristicEventBase *)self characteristic];
  v9 = [v8 properties];

  if (v9)
  {
    if (v7)
    {
      v17 = [(HMDCharacteristicEventBase *)self isActive];
      v18 = objc_autoreleasePoolPush();
      v19 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v22 = HMFEnabledStatusToString();
        *buf = 138543618;
        v42 = v21;
        v43 = 2112;
        v44 = v22;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Changing characteristic notification state to %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      v23 = MEMORY[0x277CCACA8];
      v24 = [(HMDEvent *)v19 uuid];
      v25 = [v24 UUIDString];
      v15 = [v23 stringWithFormat:@"%@-%@", @"com.apple.HomeKitDaemon.characteristicEvents", v25];

      v26 = [(HMDCharacteristicEventBase *)v19 characteristic];
      v27 = [v26 accessory];
      v28 = [(HMDCharacteristicEventBase *)v19 characteristic];
      v40 = v28;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
      [v27 setNotificationsEnabled:v17 forCharacteristics:v29 clientIdentifier:v15];

      v30 = _Block_copy(v6);
      v31 = v30;
      if (v30)
      {
        (*(v30 + 2))(v30, 0);
      }

      v7 = 1;
    }

    else
    {
      v32 = objc_autoreleasePoolPush();
      v33 = self;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = HMFGetLogIdentifier();
        *buf = 138543362;
        v42 = v35;
        _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@Not changing characteristic notification state because activation type has not changed", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v32);
      v36 = _Block_copy(v6);
      v15 = v36;
      if (v36)
      {
        (*(v36 + 2))(v36, 0);
      }

      v7 = 0;
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [(HMDCharacteristicEventBase *)v11 characteristic];
      *buf = 138543618;
      v42 = v13;
      v43 = 2112;
      v44 = v14;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Trigger contains a characteristic event (%@) which does not support notification, cannot enable the event trigger", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = _Block_copy(v6);
    if (v15)
    {
      v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:7];
      (v15)[2](v15, v16);
    }
  }

  v37 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = HMDCharacteristicEventBase;
  [(HMDEvent *)&v14 encodeWithCoder:v4];
  v5 = [(HMDCharacteristicEventBase *)self characteristic];
  [v4 encodeConditionalObject:v5 forKey:*MEMORY[0x277CD2118]];

  v6 = [(HMDCharacteristicEventBase *)self characteristicInstanceID];
  [v4 encodeObject:v6 forKey:*MEMORY[0x277CD2138]];

  v7 = [(HMDCharacteristicEventBase *)self serviceID];
  [v4 encodeObject:v7 forKey:*MEMORY[0x277CD25F0]];

  v8 = [(HMDCharacteristicEventBase *)self accessoryUUID];
  v9 = [v8 UUIDString];
  [v4 encodeObject:v9 forKey:@"accessoryUUID"];

  v10 = +[HMDHAPMetadata getSharedInstance];
  v11 = [(HMDCharacteristicEventBase *)self characteristic];
  v12 = [v11 type];
  if ([v10 shouldNotCacheCharacteristicOfType:v12])
  {

LABEL_5:
    goto LABEL_6;
  }

  v13 = [(HMDCharacteristicEventBase *)self previousValue];

  if (v13)
  {
    v11 = [(HMDCharacteristicEventBase *)self previousValue];
    [v4 encodeObject:v11 forKey:*MEMORY[0x277CD2180]];
    goto LABEL_5;
  }

LABEL_6:
}

- (HMDCharacteristicEventBase)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2118]];
  v22.receiver = self;
  v22.super_class = HMDCharacteristicEventBase;
  v6 = [(HMDEvent *)&v22 initWithCoder:v4];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_characteristic, v5);
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessoryUUID"];
    v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v8];
    accessoryUUID = v7->_accessoryUUID;
    v7->_accessoryUUID = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD25F0]];
    serviceID = v7->_serviceID;
    v7->_serviceID = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2138]];
    characteristicInstanceID = v7->_characteristicInstanceID;
    v7->_characteristicInstanceID = v13;

    v15 = allowedCharValueTypes();
    v16 = [v4 decodeObjectOfClasses:v15 forKey:*MEMORY[0x277CD2180]];

    v17 = +[HMDHAPMetadata getSharedInstance];
    v18 = [(HMDCharacteristicEventBase *)v7 characteristic];
    v19 = [v18 type];
    v20 = [v17 shouldNotCacheCharacteristicOfType:v19];

    if ((v20 & 1) == 0)
    {
      objc_storeStrong(&v7->_previousValue, v16);
    }
  }

  return v7;
}

- (void)fixCharacteristicInHome:(id)a3
{
  v18 = a3;
  characteristic = self->_characteristic;
  if (characteristic)
  {
    v5 = [(HMDCharacteristic *)characteristic accessory];
    v6 = [v5 uuid];
    accessoryUUID = self->_accessoryUUID;
    self->_accessoryUUID = v6;

    v8 = [(HMDCharacteristic *)self->_characteristic service];
    v9 = [v8 instanceID];
    serviceID = self->_serviceID;
    self->_serviceID = v9;

    v11 = [(HMDCharacteristic *)self->_characteristic instanceID];
    characteristicInstanceID = self->_characteristicInstanceID;
    self->_characteristicInstanceID = v11;
  }

  else
  {
    characteristicInstanceID = [(HMDCharacteristicEventBase *)self accessoryUUID];
    v13 = [(HMDCharacteristicEventBase *)self serviceID];
    v14 = [(HMDCharacteristicEventBase *)self characteristicInstanceID];
    LOBYTE(v17) = 0;
    v15 = [HMDCharacteristicEventBase lookForCharacteristicByAccessoryUUID:characteristicInstanceID serviceID:v13 characteristicID:v14 inHome:v18 checkForSupport:0 outError:0 shouldLog:v17];
    v16 = self->_characteristic;
    self->_characteristic = v15;
  }
}

- (HMDCharacteristic)characteristic
{
  characteristic = self->_characteristic;
  if (!characteristic)
  {
    v4 = [(HMDEvent *)self eventTrigger];
    v5 = [v4 home];
    [(HMDCharacteristicEventBase *)self fixCharacteristicInHome:v5];

    characteristic = self->_characteristic;
  }

  return characteristic;
}

- (id)createPayload
{
  v3 = MEMORY[0x277CBEB38];
  v12.receiver = self;
  v12.super_class = HMDCharacteristicEventBase;
  v4 = [(HMDEvent *)&v12 createPayload];
  v5 = [v3 dictionaryWithDictionary:v4];

  v6 = [(HMDCharacteristicEventBase *)self accessoryUUID];
  v7 = [v6 UUIDString];
  [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x277CCF0B0]];

  v8 = [(HMDCharacteristicEventBase *)self serviceID];
  [v5 setObject:v8 forKeyedSubscript:*MEMORY[0x277CD25F8]];

  v9 = [(HMDCharacteristicEventBase *)self characteristicInstanceID];
  [v5 setObject:v9 forKeyedSubscript:*MEMORY[0x277CD2140]];

  v10 = [v5 copy];

  return v10;
}

- (void)handleCharacteristicsChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDEvent *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__HMDCharacteristicEventBase_handleCharacteristicsChangedNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __71__HMDCharacteristicEventBase_handleCharacteristicsChangedNotification___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) userInfo];
  [v1 __handleCharacteristicsChangedPayload:v2];
}

- (void)__handleCharacteristicsChangedPayload:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 hmf_arrayForKey:@"kModifiedCharacteristicsKey"];
  if (v5)
  {
    v38 = v4;
    v36 = [(HMDEvent *)self eventTrigger];
    v40 = [v36 home];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v37 = v5;
    obj = v5;
    v6 = [obj countByEnumeratingWithState:&v43 objects:v53 count:16];
    if (!v6)
    {
      goto LABEL_26;
    }

    v7 = v6;
    v42 = *v44;
    v39 = *MEMORY[0x277CD2188];
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v44 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v43 + 1) + 8 * i);
        v10 = [(HMDCharacteristicEventBase *)self characteristicInstanceID];
        v11 = [v9 instanceID];
        if (![v10 isEqual:v11])
        {
          goto LABEL_22;
        }

        v12 = [(HMDCharacteristicEventBase *)self accessoryUUID];
        v13 = [v9 accessory];
        v14 = [v13 uuid];
        v15 = [v12 isEqual:v14];

        if (!v15)
        {
          continue;
        }

        v16 = objc_autoreleasePoolPush();
        v17 = self;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier();
          *buf = 138543618;
          v48 = v19;
          v49 = 2112;
          v50 = v9;
          _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Received notification that characteristic changed state, evaluating if trigger needs to be executed, %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        v20 = [v9 value];
        v21 = [(HMDCharacteristicEventBase *)v17 _evaluateNewValue:v20];

        v10 = +[HMDHAPMetadata getSharedInstance];
        v22 = [(HMDCharacteristicEventBase *)v17 characteristic];
        v23 = [v22 type];
        v24 = [v10 shouldNotCacheCharacteristicOfType:v23];

        if ((v24 & 1) == 0)
        {
          v25 = [v9 value];
          [(HMDCharacteristicEventBase *)v17 setPreviousValue:v25];

          [v40 saveToCurrentAccountWithReason:v39];
        }

        if (v21)
        {
          v26 = [(HMDCharacteristicEventBase *)v17 isActive];
          v27 = objc_autoreleasePoolPush();
          v28 = v17;
          v29 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = HMFGetLogIdentifier();
            v31 = v30;
            *buf = 138543874;
            v32 = "Not firing";
            if (v26)
            {
              v32 = "Firing";
            }

            v48 = v30;
            v33 = "is not";
            if (v26)
            {
              v33 = "is";
            }

            v49 = 2080;
            v50 = v32;
            v51 = 2080;
            v52 = v33;
            _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@%s event because it %s active", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v27);
          if (v26)
          {
            v11 = [(HMDEvent *)v28 delegate];
            v34 = [v11 didOccurEvent:v28 causingDevice:0];
LABEL_22:
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v43 objects:v53 count:16];
      if (!v7)
      {
LABEL_26:

        v5 = v37;
        v4 = v38;
        break;
      }
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)_registerForMessages
{
  v7.receiver = self;
  v7.super_class = HMDCharacteristicEventBase;
  [(HMDEvent *)&v7 _registerForMessages];
  v3 = [(HMDEvent *)self home];
  v4 = [(HMDCharacteristicEventBase *)self accessoryUUID];
  v5 = [v3 accessoryWithUUID:v4];

  if (v5)
  {
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:self selector:sel_handleCharacteristicsChangedNotification_ name:@"HMDAccessoryCharacteristicsChangedNotification" object:v5];
  }
}

- (BOOL)isCompatibleWithEvent:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMDCharacteristicEventBase;
  if ([(HMDEvent *)&v9 isCompatibleWithEvent:v4])
  {
    v5 = [(HMDCharacteristicEventBase *)self characteristic];
    v6 = [v4 characteristic];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HMDCharacteristicEventBase;
  v4 = [(HMDEvent *)&v8 description];
  v5 = [(HMDCharacteristicEventBase *)self characteristic];
  v6 = [v3 stringWithFormat:@"%@, %@", v4, v5];

  return v6;
}

- (HMDCharacteristicEventBase)initWithModel:(id)a3 home:(id)a4
{
  v6 = a3;
  v7 = a4;
  v27.receiver = self;
  v27.super_class = HMDCharacteristicEventBase;
  v8 = [(HMDEvent *)&v27 initWithModel:v6 home:v7];
  if (!v8)
  {
    goto LABEL_3;
  }

  v9 = objc_alloc(MEMORY[0x277CCAD78]);
  v10 = [v6 accessory];
  v11 = [v9 initWithUUIDString:v10];
  accessoryUUID = v8->_accessoryUUID;
  v8->_accessoryUUID = v11;

  v13 = [v6 serviceID];
  serviceID = v8->_serviceID;
  v8->_serviceID = v13;

  v15 = [v6 characteristicID];
  characteristicInstanceID = v8->_characteristicInstanceID;
  v8->_characteristicInstanceID = v15;

  v17 = v8->_accessoryUUID;
  v18 = v8->_serviceID;
  v19 = v8->_characteristicInstanceID;
  v26 = 0;
  LOBYTE(v25) = 1;
  v20 = [HMDCharacteristicEventBase lookForCharacteristicByAccessoryUUID:v17 serviceID:v18 characteristicID:v19 inHome:v7 checkForSupport:0 outError:&v26 shouldLog:v25];
  v21 = v26;
  characteristic = v8->_characteristic;
  v8->_characteristic = v20;

  v23 = 0;
  if (!v21)
  {
LABEL_3:
    v23 = v8;
  }

  return v23;
}

+ (id)lookForCharacteristicByAccessoryUUID:(id)a3 serviceID:(id)a4 characteristicID:(id)a5 inHome:(id)a6 checkForSupport:(BOOL)a7 outError:(id *)a8 shouldLog:(BOOL)a9
{
  v10 = a7;
  v60 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = [v18 accessoryWithUUID:v15];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  if (v17 && v16 && v21)
  {
    v22 = [v21 findCharacteristic:v17 forService:v16];
    v23 = v22;
    if (!v22)
    {
      if (a9)
      {
        v35 = objc_autoreleasePoolPush();
        v36 = a1;
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v38 = v50 = v35;
          *buf = 138543618;
          v53 = v38;
          v54 = 2112;
          v55 = v17;
          _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_ERROR, "%{public}@Cannot find the given characteristic ID %@ in accessory", buf, 0x16u);

          v35 = v50;
        }

        objc_autoreleasePoolPop(v35);
      }

      if (a8)
      {
        v28 = MEMORY[0x277CCA9B8];
        v29 = 3;
        goto LABEL_27;
      }

LABEL_40:
      v34 = 0;
      goto LABEL_45;
    }

    if (([v22 properties] & 1) == 0)
    {
      if (a9)
      {
        v24 = objc_autoreleasePoolPush();
        v25 = a1;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v27 = v49 = v24;
          *buf = 138543618;
          v53 = v27;
          v54 = 2112;
          v55 = v23;
          _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Given characteristic %@ does not support notification", buf, 0x16u);

          v24 = v49;
        }

        objc_autoreleasePoolPop(v24);
      }

      if (a8)
      {
        v28 = MEMORY[0x277CCA9B8];
        v29 = 7;
LABEL_27:
        [v28 hmErrorWithCode:v29];
        *a8 = v34 = 0;
LABEL_45:

        goto LABEL_46;
      }

      goto LABEL_40;
    }

    if (!v10)
    {
LABEL_44:
      v34 = v23;
      goto LABEL_45;
    }

    v51 = [v23 service];
    v39 = [v23 type];
    if ([v39 isEqual:@"00000073-0000-1000-8000-0026BB765291"])
    {
      v47 = [v51 type];
      if ([v47 isEqual:@"00000089-0000-1000-8000-0026BB765291"])
      {
        v46 = [v18 isResidentSupported];

        if ((v46 & 1) == 0)
        {
          if (a9)
          {
            v40 = objc_autoreleasePoolPush();
            v41 = a1;
            v42 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v43 = v48 = v40;
              *buf = 138543362;
              v53 = v43;
              _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_ERROR, "%{public}@The given characteristic is of type programmable switch and input event, but resident is not available", buf, 0xCu);

              v40 = v48;
            }

            objc_autoreleasePoolPop(v40);
          }

          if (a8)
          {
            *a8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
          }

          goto LABEL_40;
        }

        goto LABEL_43;
      }
    }

LABEL_43:
    goto LABEL_44;
  }

  if (a9)
  {
    v30 = objc_autoreleasePoolPush();
    v31 = a1;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138544130;
      v53 = v33;
      v54 = 2112;
      v55 = v21;
      v56 = 2112;
      v57 = v16;
      v58 = 2112;
      v59 = v17;
      _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@Associated accessory %@, service ID %@ or characteristic ID %@ is invalid", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v30);
  }

  if (a8)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    *a8 = v34 = 0;
  }

  else
  {
    v34 = 0;
  }

LABEL_46:

  v44 = *MEMORY[0x277D85DE8];

  return v34;
}

+ (id)compareValueOfCharacteristic:(id)a3 againstValue:(id)a4 operatorType:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [a5 unsignedIntegerValue];
  v10 = [v8 metadata];
  v11 = [v10 stepValue];
  v12 = MEMORY[0x277CCABB0];
  v13 = [v8 value];

  v14 = compareCharacteristicValue(v13, v7, v9, v11);
  v15 = [v12 numberWithBool:v14];

  return v15;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_129916 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_129916, &__block_literal_global_129917);
  }

  v3 = logCategory__hmf_once_v1_129918;

  return v3;
}

uint64_t __41__HMDCharacteristicEventBase_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_129918;
  logCategory__hmf_once_v1_129918 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end