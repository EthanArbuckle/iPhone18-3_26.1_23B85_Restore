@interface HMDCharacteristicWriteAction
+ (id)actionWithDictionaryRepresentation:(id)representation home:(id)home;
+ (id)logCategory;
- (BOOL)isActionForCharacteristic:(id)characteristic;
- (BOOL)isAssociatedWithAccessory:(id)accessory;
- (BOOL)isCompatibleWithAction:(id)action;
- (BOOL)isStaleWithAccessory:(id)accessory;
- (BOOL)isUnsecuringAction;
- (BOOL)requiresDeviceUnlock;
- (HMDCharacteristic)characteristic;
- (HMDCharacteristicWriteAction)init;
- (HMDCharacteristicWriteAction)initWithCoder:(id)coder;
- (HMDCharacteristicWriteAction)initWithUUID:(id)d accessoryUUID:(id)iD serviceIID:(id)iID characteristicIID:(id)characteristicIID targetValue:(id)value actionSet:(id)set;
- (HMDCharacteristicWriteAction)initWithUUID:(id)d characteristic:(id)characteristic targetValue:(id)value actionSet:(id)set;
- (HMDHAPAccessory)accessory;
- (HMDHome)home;
- (id)associatedAccessories;
- (id)attributeDescriptions;
- (id)dictionaryRepresentation;
- (id)modelObjectWithChangeType:(unint64_t)type;
- (id)stateDump;
- (void)_processWriteActionModelUpdated:(id)updated message:(id)message;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithSource:(unint64_t)source clientName:(id)name completionHandler:(id)handler;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
@end

@implementation HMDCharacteristicWriteAction

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)attributeDescriptions
{
  v15[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  uuid = [(HMDAction *)self uuid];
  v5 = [v3 initWithName:@"UUID" value:uuid];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  characteristic = [(HMDCharacteristicWriteAction *)self characteristic];
  v8 = [v6 initWithName:@"characteristic" value:characteristic];
  v15[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  targetValue = [(HMDCharacteristicWriteAction *)self targetValue];
  v11 = [v9 initWithName:@"target value" value:targetValue];
  v15[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)modelObjectWithChangeType:(unint64_t)type
{
  v5 = [HMDCharacteristicWriteActionModel alloc];
  uuid = [(HMDAction *)self uuid];
  actionSet = [(HMDAction *)self actionSet];
  uuid2 = [actionSet uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:type uuid:uuid parentUUID:uuid2];

  characteristic = [(HMDCharacteristicWriteAction *)self characteristic];
  accessory = [characteristic accessory];
  uuid3 = [accessory uuid];
  uUIDString = [uuid3 UUIDString];
  [(HMDCharacteristicWriteActionModel *)v9 setAccessory:uUIDString];

  service = [characteristic service];
  instanceID = [service instanceID];
  [(HMDCharacteristicWriteActionModel *)v9 setServiceID:instanceID];

  instanceID2 = [characteristic instanceID];
  [(HMDCharacteristicWriteActionModel *)v9 setCharacteristicID:instanceID2];

  targetValue = [(HMDCharacteristicWriteAction *)self targetValue];
  [(HMDCharacteristicWriteActionModel *)v9 setTargetValue:targetValue];

  return v9;
}

- (void)_processWriteActionModelUpdated:(id)updated message:(id)message
{
  v43 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  messageCopy = message;
  transactionResult = [messageCopy transactionResult];
  actionSet = [(HMDAction *)self actionSet];
  setProperties = [updatedCopy setProperties];
  v11 = [setProperties containsObject:@"targetValue"];

  if (!v11)
  {
    v20 = 0;
    goto LABEL_6;
  }

  home = [actionSet home];
  v13 = home;
  if (actionSet && home)
  {
    targetValue = [updatedCopy targetValue];
    [(HMDCharacteristicWriteAction *)self setTargetValue:targetValue];

    v33[0] = *MEMORY[0x277CD2060];
    uuid = [(HMDAction *)self uuid];
    uUIDString = [uuid UUIDString];
    v34[0] = uUIDString;
    v33[1] = *MEMORY[0x277CD2028];
    [(HMDCharacteristicWriteAction *)self dictionaryRepresentation];
    v17 = v32 = transactionResult;
    v34[1] = v17;
    v33[2] = *MEMORY[0x277CD0640];
    [v13 uuid];
    v18 = v31 = v13;
    uUIDString2 = [v18 UUIDString];
    v34[2] = uUIDString2;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:3];

    transactionResult = v32;
LABEL_6:
    [messageCopy respondWithPayload:v20];
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v24;
      v37 = 2112;
      v38 = v20;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_DEBUG, "%{public}@Responding to client after updating action with response %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    [transactionResult markChanged];
    if ([(HMDCharacteristicWriteAction *)selfCopy isSecureAction])
    {
      [transactionResult markSaveToAssistant];
    }

    goto LABEL_13;
  }

  v25 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v28 = HMFGetLogIdentifier();
    *buf = 138544130;
    v36 = v28;
    v37 = 2112;
    v38 = updatedCopy;
    v39 = 2112;
    v40 = actionSet;
    v41 = 2112;
    v42 = v13;
    _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Write action Model object (%@) missing actionset %@ or home %@ ", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v25);
  v29 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  [messageCopy respondWithError:v29];

  v20 = 0;
LABEL_13:

  v30 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  v27 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  v11 = valuesCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    [(HMDCharacteristicWriteAction *)self _processWriteActionModelUpdated:v13 message:messageCopy];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v21 = 138543874;
      v22 = v17;
      v23 = 2112;
      v24 = v11;
      v25 = 2112;
      v26 = objc_opt_class();
      v18 = v26;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectUpdated]", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [messageCopy respondWithError:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = HMDCharacteristicWriteAction;
  coderCopy = coder;
  [(HMDAction *)&v7 encodeWithCoder:coderCopy];
  v5 = [(HMDCharacteristicWriteAction *)self characteristic:v7.receiver];
  [coderCopy encodeObject:v5 forKey:*MEMORY[0x277CD2118]];

  targetValue = [(HMDCharacteristicWriteAction *)self targetValue];
  [coderCopy encodeObject:targetValue forKey:*MEMORY[0x277CD21B0]];
}

- (HMDCharacteristicWriteAction)initWithCoder:(id)coder
{
  v24 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [[HMDAction alloc] initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2118]];
    v7 = allowedCharValueTypes();
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:*MEMORY[0x277CD21B0]];

    uuid = [(HMDAction *)v5 uuid];
    actionSet = [(HMDAction *)v5 actionSet];
    selfCopy = [(HMDCharacteristicWriteAction *)self initWithUUID:uuid characteristic:v6 targetValue:v8 actionSet:actionSet];

    v12 = selfCopy;
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v19.receiver = selfCopy;
      v19.super_class = HMDCharacteristicWriteAction;
      v16 = [(HMDCharacteristicWriteAction *)&v19 class];
      *buf = 138543618;
      v21 = v15;
      v22 = 2112;
      v23 = v16;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode base class: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)isStaleWithAccessory:(id)accessory
{
  if (![(HMDCharacteristicWriteAction *)self isAssociatedWithAccessory:accessory])
  {
    return 0;
  }

  characteristic = [(HMDCharacteristicWriteAction *)self characteristic];
  v5 = characteristic == 0;

  return v5;
}

- (id)associatedAccessories
{
  v7[1] = *MEMORY[0x277D85DE8];
  accessory = [(HMDCharacteristicWriteAction *)self accessory];
  v3 = accessory;
  if (accessory)
  {
    v7[0] = accessory;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)isAssociatedWithAccessory:(id)accessory
{
  uuid = [accessory uuid];
  accessoryUUID = [(HMDCharacteristicWriteAction *)self accessoryUUID];
  v6 = [uuid isEqual:accessoryUUID];

  return v6;
}

- (HMDHAPAccessory)accessory
{
  accessoryUUID = [(HMDCharacteristicWriteAction *)self accessoryUUID];

  if (accessoryUUID)
  {
    home = [(HMDCharacteristicWriteAction *)self home];
    accessoryUUID2 = [(HMDCharacteristicWriteAction *)self accessoryUUID];
    v6 = [home accessoryWithUUID:accessoryUUID2];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isUnsecuringAction
{
  v3 = +[HMDHAPMetadata getSharedInstance];
  characteristic = [(HMDCharacteristicWriteAction *)self characteristic];
  type = [characteristic type];
  service = [characteristic service];
  type2 = [service type];
  if ([v3 requiresDeviceUnlock:type forService:type2])
  {
    type3 = [characteristic type];
    targetValue = [(HMDCharacteristicWriteAction *)self targetValue];
    v10 = [v3 allowsSecuringWriteFor:type3 withValue:targetValue] ^ 1;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (BOOL)requiresDeviceUnlock
{
  v3 = +[HMDHAPMetadata getSharedInstance];
  characteristic = [(HMDCharacteristicWriteAction *)self characteristic];
  type = [characteristic type];
  service = [characteristic service];
  type2 = [service type];
  v8 = [v3 requiresDeviceUnlock:type forService:type2];

  return v8;
}

- (BOOL)isCompatibleWithAction:(id)action
{
  actionCopy = action;
  v13.receiver = self;
  v13.super_class = HMDCharacteristicWriteAction;
  if ([(HMDAction *)&v13 isCompatibleWithAction:actionCopy])
  {
    characteristicID = [(HMDCharacteristicWriteAction *)self characteristicID];
    characteristicID2 = [actionCopy characteristicID];
    if ([characteristicID isEqual:characteristicID2])
    {
      serviceID = [(HMDCharacteristicWriteAction *)self serviceID];
      serviceID2 = [actionCopy serviceID];
      if ([serviceID isEqual:serviceID2])
      {
        accessoryUUID = [(HMDCharacteristicWriteAction *)self accessoryUUID];
        accessoryUUID2 = [actionCopy accessoryUUID];
        v11 = [accessoryUUID isEqual:accessoryUUID2];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isActionForCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  instanceID = [characteristicCopy instanceID];
  service = [characteristicCopy service];
  instanceID2 = [service instanceID];

  accessory = [characteristicCopy accessory];

  uuid = [accessory uuid];
  uUIDString = [uuid UUIDString];

  characteristic = [(HMDCharacteristicWriteAction *)self characteristic];
  instanceID3 = [characteristic instanceID];
  service2 = [characteristic service];
  instanceID4 = [service2 instanceID];

  accessory2 = [characteristic accessory];
  uuid2 = [accessory2 uuid];
  uUIDString2 = [uuid2 UUIDString];

  if ([instanceID3 isEqual:instanceID] && objc_msgSend(instanceID4, "isEqual:", instanceID2))
  {
    v18 = [uUIDString2 isEqualToString:uUIDString];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)executeWithSource:(unint64_t)source clientName:(id)name completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler, 0);
  }
}

- (id)dictionaryRepresentation
{
  characteristic = [(HMDCharacteristicWriteAction *)self characteristic];
  v16.receiver = self;
  v16.super_class = HMDCharacteristicWriteAction;
  dictionaryRepresentation = [(HMDAction *)&v16 dictionaryRepresentation];
  v5 = [dictionaryRepresentation mutableCopy];

  accessory = [characteristic accessory];
  v7 = accessoryToEncodeForXPCTransportForAccessory(accessory);
  uuid = [v7 uuid];
  uUIDString = [uuid UUIDString];
  [v5 setObject:uUIDString forKeyedSubscript:*MEMORY[0x277CCF0B0]];

  service = [characteristic service];
  instanceID = [service instanceID];
  [v5 setObject:instanceID forKeyedSubscript:*MEMORY[0x277CD25F8]];

  instanceID2 = [characteristic instanceID];
  [v5 setObject:instanceID2 forKeyedSubscript:*MEMORY[0x277CD2140]];

  targetValue = [(HMDCharacteristicWriteAction *)self targetValue];
  [v5 setObject:targetValue forKeyedSubscript:*MEMORY[0x277CD21B8]];

  v14 = [v5 copy];

  return v14;
}

- (id)stateDump
{
  v3 = MEMORY[0x277CCACA8];
  uuid = [(HMDAction *)self uuid];
  uUIDString = [uuid UUIDString];
  characteristic = [(HMDCharacteristicWriteAction *)self characteristic];
  targetValue = [(HMDCharacteristicWriteAction *)self targetValue];
  v8 = [v3 stringWithFormat:@"Action uuid: %@, Characteristic %@  value %@", uUIDString, characteristic, targetValue];

  return v8;
}

- (HMDCharacteristic)characteristic
{
  serviceID = [(HMDCharacteristicWriteAction *)self serviceID];
  if (serviceID && (v4 = serviceID, [(HMDCharacteristicWriteAction *)self characteristicID], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    accessory = [(HMDCharacteristicWriteAction *)self accessory];
    characteristicID = [(HMDCharacteristicWriteAction *)self characteristicID];
    serviceID2 = [(HMDCharacteristicWriteAction *)self serviceID];
    v9 = [accessory findCharacteristic:characteristicID forService:serviceID2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (HMDCharacteristicWriteAction)initWithUUID:(id)d accessoryUUID:(id)iD serviceIID:(id)iID characteristicIID:(id)characteristicIID targetValue:(id)value actionSet:(id)set
{
  iDCopy = iD;
  iIDCopy = iID;
  characteristicIIDCopy = characteristicIID;
  valueCopy = value;
  setCopy = set;
  v23.receiver = self;
  v23.super_class = HMDCharacteristicWriteAction;
  v18 = [(HMDAction *)&v23 initWithUUID:d actionSet:setCopy];
  if (v18)
  {
    home = [setCopy home];
    objc_storeWeak(&v18->_home, home);

    objc_storeStrong(&v18->_accessoryUUID, iD);
    objc_storeStrong(&v18->_serviceID, iID);
    objc_storeStrong(&v18->_characteristicID, characteristicIID);
    objc_storeStrong(&v18->_targetValue, value);
  }

  return v18;
}

- (HMDCharacteristicWriteAction)initWithUUID:(id)d characteristic:(id)characteristic targetValue:(id)value actionSet:(id)set
{
  characteristicCopy = characteristic;
  valueCopy = value;
  v23.receiver = self;
  v23.super_class = HMDCharacteristicWriteAction;
  v12 = [(HMDAction *)&v23 initWithUUID:d actionSet:set];
  if (v12)
  {
    service = [characteristicCopy service];
    accessory = [service accessory];
    home = [accessory home];
    objc_storeWeak(&v12->_home, home);

    uuid = [accessory uuid];
    accessoryUUID = v12->_accessoryUUID;
    v12->_accessoryUUID = uuid;

    instanceID = [service instanceID];
    serviceID = v12->_serviceID;
    v12->_serviceID = instanceID;

    instanceID2 = [characteristicCopy instanceID];
    characteristicID = v12->_characteristicID;
    v12->_characteristicID = instanceID2;

    objc_storeStrong(&v12->_targetValue, value);
  }

  return v12;
}

- (HMDCharacteristicWriteAction)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t13_184260 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t13_184260, &__block_literal_global_184261);
  }

  v3 = logCategory__hmf_once_v14_184262;

  return v3;
}

void __43__HMDCharacteristicWriteAction_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v14_184262;
  logCategory__hmf_once_v14_184262 = v1;
}

+ (id)actionWithDictionaryRepresentation:(id)representation home:(id)home
{
  v54 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  homeCopy = home;
  v8 = [representationCopy hmf_numberForKey:*MEMORY[0x277CD2058]];
  if (![v8 unsignedIntegerValue])
  {
    v14 = [representationCopy objectForKeyedSubscript:*MEMORY[0x277CD21B8]];
    if (v14)
    {
      v15 = [representationCopy hmf_UUIDForKey:*MEMORY[0x277CCF0B0]];
      if (v15 && (([homeCopy accessoryWithUUID:v15], v16 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v17 = 0) : (v17 = v16), v18 = v17, v16, v18))
      {

        v19 = [representationCopy hmf_numberForKey:*MEMORY[0x277CD25F8]];
        v20 = HAPInstanceIDFromValue();

        v21 = *MEMORY[0x277CD2140];
        v22 = [representationCopy hmf_numberForKey:*MEMORY[0x277CD2140]];
        v23 = HAPInstanceIDFromValue();

        v45 = v20;
        if (v20 && v23)
        {
          v24 = [v18 findCharacteristic:v23 forService:v20];
          objc_opt_class();
          v25 = (objc_opt_isKindOfClass() & 1) != 0 ? v24 : 0;
          v26 = v25;

          if (v26)
          {

            v27 = [self alloc];
            uUID = [MEMORY[0x277CCAD78] UUID];
            v13 = [v27 initWithUUID:uUID characteristic:v26 targetValue:v14 actionSet:0];

LABEL_28:
            goto LABEL_29;
          }
        }

        v37 = objc_autoreleasePoolPush();
        selfCopy = self;
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          HMFGetLogIdentifier();
          v40 = v44 = v37;
          v41 = [representationCopy hmf_numberForKey:v21];
          *buf = 138544130;
          v47 = v40;
          v48 = 2112;
          v49 = v23;
          v50 = 2112;
          v51 = v41;
          v52 = 2112;
          v53 = v45;
          _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to find characteristic: %@ (%@)-%@", buf, 0x2Au);

          v37 = v44;
        }

        objc_autoreleasePoolPop(v37);
      }

      else
      {
        v29 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = HMFGetLogIdentifier();
          *buf = 138543618;
          v47 = v32;
          v48 = 2112;
          v49 = v15;
          _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to find accessory with identifier: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v29);
      }
    }

    else
    {
      v33 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138543618;
        v47 = v36;
        v48 = 2112;
        v49 = representationCopy;
        _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Missing target value: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v33);
    }

    v13 = 0;
    goto LABEL_28;
  }

  v9 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v47 = v12;
    v48 = 2112;
    v49 = v8;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Invalid action type: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = 0;
LABEL_29:

  v42 = *MEMORY[0x277D85DE8];

  return v13;
}

@end