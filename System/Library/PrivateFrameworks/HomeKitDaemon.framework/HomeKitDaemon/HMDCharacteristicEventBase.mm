@interface HMDCharacteristicEventBase
+ (id)compareValueOfCharacteristic:(id)characteristic againstValue:(id)value operatorType:(id)type;
+ (id)logCategory;
+ (id)lookForCharacteristicByAccessoryUUID:(id)d serviceID:(id)iD characteristicID:(id)characteristicID inHome:(id)home checkForSupport:(BOOL)support outError:(id *)error shouldLog:(BOOL)log;
- (BOOL)_activate:(unint64_t)_activate completionHandler:(id)handler;
- (BOOL)isCompatibleWithEvent:(id)event;
- (HMDCharacteristic)characteristic;
- (HMDCharacteristicEventBase)initWithCoder:(id)coder;
- (HMDCharacteristicEventBase)initWithModel:(id)model home:(id)home;
- (id)createPayload;
- (id)description;
- (void)__handleCharacteristicsChangedPayload:(id)payload;
- (void)_registerForMessages;
- (void)encodeWithCoder:(id)coder;
- (void)fixCharacteristicInHome:(id)home;
- (void)handleCharacteristicsChangedNotification:(id)notification;
@end

@implementation HMDCharacteristicEventBase

- (BOOL)_activate:(unint64_t)_activate completionHandler:(id)handler
{
  v52 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v46.receiver = self;
  v46.super_class = HMDCharacteristicEventBase;
  v7 = [(HMDEvent *)&v46 _activate:_activate completionHandler:0];
  characteristic = [(HMDCharacteristicEventBase *)self characteristic];

  if (characteristic)
  {
    characteristic2 = [(HMDCharacteristicEventBase *)self characteristic];
    properties = [characteristic2 properties];

    if (properties)
    {
      if (v7)
      {
        isActive = [(HMDCharacteristicEventBase *)self isActive];
        v25 = objc_autoreleasePoolPush();
        selfCopy = self;
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
        uuid = [(HMDEvent *)selfCopy uuid];
        uUIDString = [uuid UUIDString];
        v16 = [v30 stringWithFormat:@"%@-%@", @"com.apple.HomeKitDaemon.characteristicEvents", uUIDString];

        characteristic3 = [(HMDCharacteristicEventBase *)selfCopy characteristic];
        accessory = [characteristic3 accessory];
        characteristic4 = [(HMDCharacteristicEventBase *)selfCopy characteristic];
        v47 = characteristic4;
        v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
        [accessory setNotificationsEnabled:isActive forCharacteristics:v36 clientIdentifier:v16];

        v37 = _Block_copy(handlerCopy);
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
        selfCopy2 = self;
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          v42 = HMFGetLogIdentifier();
          *buf = 138543362;
          v49 = v42;
          _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, "%{public}@Not changing characteristic notification state because activation type has not changed", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v39);
        v43 = _Block_copy(handlerCopy);
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
      selfCopy3 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        characteristic5 = [(HMDCharacteristicEventBase *)selfCopy3 characteristic];
        *buf = 138543618;
        v49 = v14;
        v50 = 2112;
        v51 = characteristic5;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Trigger contains a characteristic event (%@) which does not support notification, cannot enable the event trigger", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v16 = _Block_copy(handlerCopy);
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
    selfCopy4 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v49 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Characteristic is not yet available yet due to lack of PV or Resident sync, cannot enable the event trigger", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v16 = _Block_copy(handlerCopy);
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = HMDCharacteristicEventBase;
  [(HMDEvent *)&v14 encodeWithCoder:coderCopy];
  characteristic = [(HMDCharacteristicEventBase *)self characteristic];
  [coderCopy encodeConditionalObject:characteristic forKey:*MEMORY[0x277CD2118]];

  characteristicInstanceID = [(HMDCharacteristicEventBase *)self characteristicInstanceID];
  [coderCopy encodeObject:characteristicInstanceID forKey:*MEMORY[0x277CD2138]];

  serviceID = [(HMDCharacteristicEventBase *)self serviceID];
  [coderCopy encodeObject:serviceID forKey:*MEMORY[0x277CD25F0]];

  accessoryUUID = [(HMDCharacteristicEventBase *)self accessoryUUID];
  uUIDString = [accessoryUUID UUIDString];
  [coderCopy encodeObject:uUIDString forKey:@"accessoryUUID"];

  v10 = +[HMDHAPMetadata getSharedInstance];
  characteristic2 = [(HMDCharacteristicEventBase *)self characteristic];
  type = [characteristic2 type];
  if ([v10 shouldNotCacheCharacteristicOfType:type])
  {

LABEL_5:
    goto LABEL_6;
  }

  previousValue = [(HMDCharacteristicEventBase *)self previousValue];

  if (previousValue)
  {
    characteristic2 = [(HMDCharacteristicEventBase *)self previousValue];
    [coderCopy encodeObject:characteristic2 forKey:*MEMORY[0x277CD2180]];
    goto LABEL_5;
  }

LABEL_6:
}

- (HMDCharacteristicEventBase)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2118]];
  v22.receiver = self;
  v22.super_class = HMDCharacteristicEventBase;
  v6 = [(HMDEvent *)&v22 initWithCoder:coderCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_characteristic, v5);
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryUUID"];
    v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v8];
    accessoryUUID = v7->_accessoryUUID;
    v7->_accessoryUUID = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD25F0]];
    serviceID = v7->_serviceID;
    v7->_serviceID = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2138]];
    characteristicInstanceID = v7->_characteristicInstanceID;
    v7->_characteristicInstanceID = v13;

    v15 = allowedCharValueTypes();
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:*MEMORY[0x277CD2180]];

    v17 = +[HMDHAPMetadata getSharedInstance];
    characteristic = [(HMDCharacteristicEventBase *)v7 characteristic];
    type = [characteristic type];
    v20 = [v17 shouldNotCacheCharacteristicOfType:type];

    if ((v20 & 1) == 0)
    {
      objc_storeStrong(&v7->_previousValue, v16);
    }
  }

  return v7;
}

- (void)fixCharacteristicInHome:(id)home
{
  v31 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  characteristic = self->_characteristic;
  if (characteristic)
  {
    accessory = [(HMDCharacteristic *)characteristic accessory];
    uuid = [accessory uuid];
    accessoryUUID = self->_accessoryUUID;
    self->_accessoryUUID = uuid;

    service = [(HMDCharacteristic *)self->_characteristic service];
    instanceID = [service instanceID];
    serviceID = self->_serviceID;
    self->_serviceID = instanceID;

    instanceID2 = [(HMDCharacteristic *)self->_characteristic instanceID];
    characteristicInstanceID = self->_characteristicInstanceID;
    self->_characteristicInstanceID = instanceID2;
  }

  else
  {
    accessoryUUID = [(HMDCharacteristicEventBase *)self accessoryUUID];
    serviceID = [(HMDCharacteristicEventBase *)self serviceID];
    characteristicInstanceID = [(HMDCharacteristicEventBase *)self characteristicInstanceID];
    LOBYTE(v26) = 0;
    v17 = [HMDCharacteristicEventBase lookForCharacteristicByAccessoryUUID:accessoryUUID serviceID:serviceID characteristicID:characteristicInstanceID inHome:homeCopy checkForSupport:0 outError:0 shouldLog:v26];
    v18 = self->_characteristic;
    self->_characteristic = v17;

    if (self->_characteristic)
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy = self;
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
      eventTrigger = [(HMDEvent *)selfCopy eventTrigger];
      [eventTrigger reEvaluate:2];
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (HMDCharacteristic)characteristic
{
  characteristic = self->_characteristic;
  if (!characteristic)
  {
    eventTrigger = [(HMDEvent *)self eventTrigger];
    home = [eventTrigger home];
    [(HMDCharacteristicEventBase *)self fixCharacteristicInHome:home];

    characteristic = self->_characteristic;
  }

  return characteristic;
}

- (id)createPayload
{
  v3 = MEMORY[0x277CBEB38];
  v12.receiver = self;
  v12.super_class = HMDCharacteristicEventBase;
  createPayload = [(HMDEvent *)&v12 createPayload];
  v5 = [v3 dictionaryWithDictionary:createPayload];

  accessoryUUID = [(HMDCharacteristicEventBase *)self accessoryUUID];
  uUIDString = [accessoryUUID UUIDString];
  [v5 setObject:uUIDString forKeyedSubscript:*MEMORY[0x277CCF0B0]];

  serviceID = [(HMDCharacteristicEventBase *)self serviceID];
  [v5 setObject:serviceID forKeyedSubscript:*MEMORY[0x277CD25F8]];

  characteristicInstanceID = [(HMDCharacteristicEventBase *)self characteristicInstanceID];
  [v5 setObject:characteristicInstanceID forKeyedSubscript:*MEMORY[0x277CD2140]];

  v10 = [v5 copy];

  return v10;
}

- (void)handleCharacteristicsChangedNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDEvent *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__HMDCharacteristicEventBase_handleCharacteristicsChangedNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __71__HMDCharacteristicEventBase_handleCharacteristicsChangedNotification___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) userInfo];
  [v1 __handleCharacteristicsChangedPayload:v2];
}

- (void)__handleCharacteristicsChangedPayload:(id)payload
{
  v54 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  v5 = [payloadCopy hmf_arrayForKey:@"kModifiedCharacteristicsKey"];
  if (v5)
  {
    v38 = payloadCopy;
    eventTrigger = [(HMDEvent *)self eventTrigger];
    home = [eventTrigger home];
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
        characteristicInstanceID = [(HMDCharacteristicEventBase *)self characteristicInstanceID];
        instanceID = [v9 instanceID];
        if (![characteristicInstanceID isEqual:instanceID])
        {
          goto LABEL_22;
        }

        accessoryUUID = [(HMDCharacteristicEventBase *)self accessoryUUID];
        accessory = [v9 accessory];
        uuid = [accessory uuid];
        v15 = [accessoryUUID isEqual:uuid];

        if (!v15)
        {
          continue;
        }

        v16 = objc_autoreleasePoolPush();
        selfCopy = self;
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
        value = [v9 value];
        v21 = [(HMDCharacteristicEventBase *)selfCopy _evaluateNewValue:value];

        characteristicInstanceID = +[HMDHAPMetadata getSharedInstance];
        characteristic = [(HMDCharacteristicEventBase *)selfCopy characteristic];
        type = [characteristic type];
        v24 = [characteristicInstanceID shouldNotCacheCharacteristicOfType:type];

        if ((v24 & 1) == 0)
        {
          value2 = [v9 value];
          [(HMDCharacteristicEventBase *)selfCopy setPreviousValue:value2];

          [home saveToCurrentAccountWithReason:v39];
        }

        if (v21)
        {
          isActive = [(HMDCharacteristicEventBase *)selfCopy isActive];
          v27 = objc_autoreleasePoolPush();
          v28 = selfCopy;
          v29 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = HMFGetLogIdentifier();
            v31 = v30;
            *buf = 138543874;
            v32 = "Not firing";
            if (isActive)
            {
              v32 = "Firing";
            }

            v48 = v30;
            v33 = "is not";
            if (isActive)
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
          if (isActive)
          {
            instanceID = [(HMDEvent *)v28 delegate];
            v34 = [instanceID didOccurEvent:v28 causingDevice:0];
LABEL_22:
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v43 objects:v53 count:16];
      if (!v7)
      {
LABEL_26:

        v5 = v37;
        payloadCopy = v38;
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
  home = [(HMDEvent *)self home];
  accessoryUUID = [(HMDCharacteristicEventBase *)self accessoryUUID];
  v5 = [home accessoryWithUUID:accessoryUUID];

  if (v5)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_handleCharacteristicsChangedNotification_ name:@"HMDAccessoryCharacteristicsChangedNotification" object:v5];
  }
}

- (BOOL)isCompatibleWithEvent:(id)event
{
  eventCopy = event;
  v9.receiver = self;
  v9.super_class = HMDCharacteristicEventBase;
  if ([(HMDEvent *)&v9 isCompatibleWithEvent:eventCopy])
  {
    characteristic = [(HMDCharacteristicEventBase *)self characteristic];
    characteristic2 = [eventCopy characteristic];
    v7 = [characteristic isEqual:characteristic2];
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
  characteristic = [(HMDCharacteristicEventBase *)self characteristic];
  v6 = [v3 stringWithFormat:@"%@, %@", v4, characteristic];

  return v6;
}

- (HMDCharacteristicEventBase)initWithModel:(id)model home:(id)home
{
  modelCopy = model;
  v17.receiver = self;
  v17.super_class = HMDCharacteristicEventBase;
  v7 = [(HMDEvent *)&v17 initWithModel:modelCopy home:home];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277CCAD78]);
    accessory = [modelCopy accessory];
    v10 = [v8 initWithUUIDString:accessory];
    accessoryUUID = v7->_accessoryUUID;
    v7->_accessoryUUID = v10;

    serviceID = [modelCopy serviceID];
    serviceID = v7->_serviceID;
    v7->_serviceID = serviceID;

    characteristicID = [modelCopy characteristicID];
    characteristicInstanceID = v7->_characteristicInstanceID;
    v7->_characteristicInstanceID = characteristicID;
  }

  return v7;
}

+ (id)lookForCharacteristicByAccessoryUUID:(id)d serviceID:(id)iD characteristicID:(id)characteristicID inHome:(id)home checkForSupport:(BOOL)support outError:(id *)error shouldLog:(BOOL)log
{
  supportCopy = support;
  v60 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  characteristicIDCopy = characteristicID;
  homeCopy = home;
  v19 = [homeCopy accessoryWithUUID:dCopy];
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

  if (characteristicIDCopy && iDCopy && v21)
  {
    v22 = [v21 findCharacteristic:characteristicIDCopy forService:iDCopy];
    v23 = v22;
    if (!v22)
    {
      if (log)
      {
        v35 = objc_autoreleasePoolPush();
        selfCopy = self;
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v38 = v50 = v35;
          *buf = 138543618;
          v53 = v38;
          v54 = 2112;
          v55 = characteristicIDCopy;
          _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Cannot find the given characteristic ID %@ in accessory", buf, 0x16u);

          v35 = v50;
        }

        objc_autoreleasePoolPop(v35);
      }

      if (error)
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
      if (log)
      {
        v24 = objc_autoreleasePoolPush();
        selfCopy2 = self;
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

      if (error)
      {
        v28 = MEMORY[0x277CCA9B8];
        v29 = 7;
LABEL_27:
        [v28 hmErrorWithCode:v29];
        *error = v34 = 0;
LABEL_45:

        goto LABEL_46;
      }

      goto LABEL_40;
    }

    if (!supportCopy)
    {
LABEL_44:
      v34 = v23;
      goto LABEL_45;
    }

    service = [v23 service];
    type = [v23 type];
    if ([type isEqual:@"00000073-0000-1000-8000-0026BB765291"])
    {
      type2 = [service type];
      if ([type2 isEqual:@"00000089-0000-1000-8000-0026BB765291"])
      {
        isResidentSupported = [homeCopy isResidentSupported];

        if ((isResidentSupported & 1) == 0)
        {
          if (log)
          {
            v40 = objc_autoreleasePoolPush();
            selfCopy3 = self;
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

          if (error)
          {
            *error = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
          }

          goto LABEL_40;
        }

        goto LABEL_43;
      }
    }

LABEL_43:
    goto LABEL_44;
  }

  if (log)
  {
    v30 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138544130;
      v53 = v33;
      v54 = 2112;
      v55 = v21;
      v56 = 2112;
      v57 = iDCopy;
      v58 = 2112;
      v59 = characteristicIDCopy;
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Associated accessory %@, service ID %@ or characteristic ID %@ is invalid", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v30);
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    *error = v34 = 0;
  }

  else
  {
    v34 = 0;
  }

LABEL_46:

  v44 = *MEMORY[0x277D85DE8];

  return v34;
}

+ (id)compareValueOfCharacteristic:(id)characteristic againstValue:(id)value operatorType:(id)type
{
  valueCopy = value;
  characteristicCopy = characteristic;
  unsignedIntegerValue = [type unsignedIntegerValue];
  metadata = [characteristicCopy metadata];
  stepValue = [metadata stepValue];
  v12 = MEMORY[0x277CCABB0];
  value = [characteristicCopy value];

  v14 = compareCharacteristicValue(value, valueCopy, unsignedIntegerValue, stepValue);
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