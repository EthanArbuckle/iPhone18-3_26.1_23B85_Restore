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
  v52 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v46.receiver = self;
  v46.super_class = HMDCharacteristicEventBase;
  v7 = [(HMDEvent *)&v46 _activate:a3 completionHandler:0];
  v8 = [(HMDCharacteristicEventBase *)self characteristic];

  if (v8)
  {
    v9 = [(HMDCharacteristicEventBase *)self characteristic];
    v10 = [v9 properties];

    if (v10)
    {
      if (v7)
      {
        v24 = [(HMDCharacteristicEventBase *)self isActive];
        v25 = objc_autoreleasePoolPush();
        v26 = self;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v28 = HMFGetLogIdentifier();
          v29 = HMFEnabledStatusToString();
          *buf = 138543618;
          v49 = v28;
          v50 = 2112;
          v51 = v29;
          _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Changing characteristic notification state to %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v25);
        v30 = MEMORY[0x277CCACA8];
        v31 = [(HMDEvent *)v26 uuid];
        v32 = [v31 UUIDString];
        v16 = [v30 stringWithFormat:@"%@-%@", @"com.apple.HomeKitDaemon.characteristicEvents", v32];

        v33 = [(HMDCharacteristicEventBase *)v26 characteristic];
        v34 = [v33 accessory];
        v35 = [(HMDCharacteristicEventBase *)v26 characteristic];
        v47 = v35;
        v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
        [v34 setNotificationsEnabled:v24 forCharacteristics:v36 clientIdentifier:v16];

        v37 = _Block_copy(v6);
        v38 = v37;
        if (v37)
        {
          (*(v37 + 2))(v37, 0);
        }

        v7 = 1;
      }

      else
      {
        v39 = objc_autoreleasePoolPush();
        v40 = self;
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          v42 = HMFGetLogIdentifier();
          *buf = 138543362;
          v49 = v42;
          _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, "%{public}@Not changing characteristic notification state because activation type has not changed", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v39);
        v43 = _Block_copy(v6);
        v16 = v43;
        if (v43)
        {
          (*(v43 + 2))(v43, 0);
        }

        v7 = 0;
      }
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [(HMDCharacteristicEventBase *)v12 characteristic];
        *buf = 138543618;
        v49 = v14;
        v50 = 2112;
        v51 = v15;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Trigger contains a characteristic event (%@) which does not support notification, cannot enable the event trigger", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v16 = _Block_copy(v6);
      if (v16)
      {
        v17 = MEMORY[0x277CCA9B8];
        v18 = 7;
LABEL_11:
        v23 = [v17 hmErrorWithCode:v18];
        (v16)[2](v16, v23);
      }
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v49 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Characteristic is not yet available yet due to lack of PV or Resident sync, cannot enable the event trigger", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v16 = _Block_copy(v6);
    if (v16)
    {
      v17 = MEMORY[0x277CCA9B8];
      v18 = 27;
      goto LABEL_11;
    }
  }

  v44 = *MEMORY[0x277D85DE8];
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
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  characteristic = self->_characteristic;
  if (characteristic)
  {
    v6 = [(HMDCharacteristic *)characteristic accessory];
    v7 = [v6 uuid];
    accessoryUUID = self->_accessoryUUID;
    self->_accessoryUUID = v7;

    v9 = [(HMDCharacteristic *)self->_characteristic service];
    v10 = [v9 instanceID];
    serviceID = self->_serviceID;
    self->_serviceID = v10;

    v12 = [(HMDCharacteristic *)self->_characteristic instanceID];
    characteristicInstanceID = self->_characteristicInstanceID;
    self->_characteristicInstanceID = v12;
  }

  else
  {
    v14 = [(HMDCharacteristicEventBase *)self accessoryUUID];
    v15 = [(HMDCharacteristicEventBase *)self serviceID];
    v16 = [(HMDCharacteristicEventBase *)self characteristicInstanceID];
    LOBYTE(v26) = 0;
    v17 = [HMDCharacteristicEventBase lookForCharacteristicByAccessoryUUID:v14 serviceID:v15 characteristicID:v16 inHome:v4 checkForSupport:0 outError:0 shouldLog:v26];
    v18 = self->_characteristic;
    self->_characteristic = v17;

    if (self->_characteristic)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        v23 = self->_characteristic;
        *buf = 138543618;
        v28 = v22;
        v29 = 2112;
        v30 = v23;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Found characteristic, re-evaluating the event trigger %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v24 = [(HMDEvent *)v20 eventTrigger];
      [v24 reEvaluate:2];
    }
  }

  v25 = *MEMORY[0x277D85DE8];
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
  v7[3] = &unk_27868A750;
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
          _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Received notification that characteristic changed state, evaluating if trigger needs to be executed, %@", buf, 0x16u);
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
            _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@%s event because it %s active", buf, 0x20u);
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
  v17.receiver = self;
  v17.super_class = HMDCharacteristicEventBase;
  v7 = [(HMDEvent *)&v17 initWithModel:v6 home:a4];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277CCAD78]);
    v9 = [v6 accessory];
    v10 = [v8 initWithUUIDString:v9];
    accessoryUUID = v7->_accessoryUUID;
    v7->_accessoryUUID = v10;

    v12 = [v6 serviceID];
    serviceID = v7->_serviceID;
    v7->_serviceID = v12;

    v14 = [v6 characteristicID];
    characteristicInstanceID = v7->_characteristicInstanceID;
    v7->_characteristicInstanceID = v14;
  }

  return v7;
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
          _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Cannot find the given characteristic ID %@ in accessory", buf, 0x16u);

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
          _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Given characteristic %@ does not support notification", buf, 0x16u);

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
              _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_ERROR, "%{public}@The given characteristic is of type programmable switch and input event, but resident is not available", buf, 0xCu);

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
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Associated accessory %@, service ID %@ or characteristic ID %@ is invalid", buf, 0x2Au);
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
  if (logCategory__hmf_once_t0_194004 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_194004, &__block_literal_global_194005);
  }

  v3 = logCategory__hmf_once_v1_194006;

  return v3;
}

void __41__HMDCharacteristicEventBase_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_194006;
  logCategory__hmf_once_v1_194006 = v1;
}

@end