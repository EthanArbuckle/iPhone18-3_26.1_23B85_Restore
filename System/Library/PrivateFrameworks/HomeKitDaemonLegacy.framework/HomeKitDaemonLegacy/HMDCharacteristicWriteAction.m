@interface HMDCharacteristicWriteAction
+ (id)actionWithDictionaryRepresentation:(id)a3 home:(id)a4;
+ (id)logCategory;
- (BOOL)isActionForCharacteristic:(id)a3;
- (BOOL)isAssociatedWithAccessory:(id)a3;
- (BOOL)isCompatibleWithAction:(id)a3;
- (BOOL)isUnsecuringAction;
- (BOOL)requiresDeviceUnlock;
- (HMDCharacteristicWriteAction)init;
- (HMDCharacteristicWriteAction)initWithCoder:(id)a3;
- (HMDCharacteristicWriteAction)initWithUUID:(id)a3 characteristic:(id)a4 targetValue:(id)a5 actionSet:(id)a6;
- (id)associatedAccessories;
- (id)attributeDescriptions;
- (id)dictionaryRepresentation;
- (id)modelObjectWithChangeType:(unint64_t)a3;
- (id)stateDump;
- (void)_processWriteActionModelUpdated:(id)a3 message:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithSource:(unint64_t)a3 clientName:(id)a4 completionHandler:(id)a5;
- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
@end

@implementation HMDCharacteristicWriteAction

- (id)attributeDescriptions
{
  v15[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDAction *)self uuid];
  v5 = [v3 initWithName:@"UUID" value:v4];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDCharacteristicWriteAction *)self characteristic];
  v8 = [v6 initWithName:@"characteristic" value:v7];
  v15[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [(HMDCharacteristicWriteAction *)self targetValue];
  v11 = [v9 initWithName:@"target value" value:v10];
  v15[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)modelObjectWithChangeType:(unint64_t)a3
{
  v5 = [HMDCharacteristicWriteActionModel alloc];
  v6 = [(HMDAction *)self uuid];
  v7 = [(HMDAction *)self actionSet];
  v8 = [v7 uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:a3 uuid:v6 parentUUID:v8];

  v10 = [(HMDCharacteristicWriteAction *)self characteristic];
  v11 = [v10 accessory];
  v12 = [v11 uuid];
  v13 = [v12 UUIDString];
  [(HMDCharacteristicWriteActionModel *)v9 setAccessory:v13];

  v14 = [v10 service];
  v15 = [v14 instanceID];
  [(HMDCharacteristicWriteActionModel *)v9 setServiceID:v15];

  v16 = [v10 instanceID];
  [(HMDCharacteristicWriteActionModel *)v9 setCharacteristicID:v16];

  v17 = [(HMDCharacteristicWriteAction *)self targetValue];
  [(HMDCharacteristicWriteActionModel *)v9 setTargetValue:v17];

  return v9;
}

- (void)_processWriteActionModelUpdated:(id)a3 message:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 transactionResult];
  v9 = [(HMDAction *)self actionSet];
  v10 = [v6 setProperties];
  v11 = [v10 containsObject:@"targetValue"];

  if (!v11)
  {
    v20 = 0;
    goto LABEL_6;
  }

  v12 = [v9 home];
  v13 = v12;
  if (v9 && v12)
  {
    v14 = [v6 targetValue];
    [(HMDCharacteristicWriteAction *)self setTargetValue:v14];

    v33[0] = *MEMORY[0x277CD2060];
    v15 = [(HMDAction *)self uuid];
    v16 = [v15 UUIDString];
    v34[0] = v16;
    v33[1] = *MEMORY[0x277CD2028];
    [(HMDCharacteristicWriteAction *)self dictionaryRepresentation];
    v17 = v32 = v8;
    v34[1] = v17;
    v33[2] = *MEMORY[0x277CD0640];
    [v13 uuid];
    v18 = v31 = v13;
    v19 = [v18 UUIDString];
    v34[2] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:3];

    v8 = v32;
LABEL_6:
    [v7 respondWithPayload:v20];
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v24;
      v37 = 2112;
      v38 = v20;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_DEBUG, "%{public}@Responding to client after updating action with response %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    [v8 markChanged];
    if ([(HMDCharacteristicWriteAction *)v22 isSecureAction])
    {
      [v8 markSaveToAssistant];
    }

    goto LABEL_13;
  }

  v25 = objc_autoreleasePoolPush();
  v26 = self;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v28 = HMFGetLogIdentifier();
    *buf = 138544130;
    v36 = v28;
    v37 = 2112;
    v38 = v6;
    v39 = 2112;
    v40 = v9;
    v41 = 2112;
    v42 = v13;
    _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Write action Model object (%@) missing actionset %@ or home %@ ", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v25);
  v29 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  [v7 respondWithError:v29];

  v20 = 0;
LABEL_13:

  v30 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v9;
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
    [(HMDCharacteristicWriteAction *)self _processWriteActionModelUpdated:v13 message:v10];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
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
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectUpdated]", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v10 respondWithError:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = HMDCharacteristicWriteAction;
  v4 = a3;
  [(HMDAction *)&v7 encodeWithCoder:v4];
  v5 = [(HMDCharacteristicWriteAction *)self characteristic:v7.receiver];
  [v4 encodeObject:v5 forKey:*MEMORY[0x277CD2118]];

  v6 = [(HMDCharacteristicWriteAction *)self targetValue];
  [v4 encodeObject:v6 forKey:*MEMORY[0x277CD21B0]];
}

- (HMDCharacteristicWriteAction)initWithCoder:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[HMDAction alloc] initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD2118]];
    v7 = allowedCharValueTypes();
    v8 = [v4 decodeObjectOfClasses:v7 forKey:*MEMORY[0x277CD21B0]];

    v9 = [(HMDAction *)v5 uuid];
    v10 = [(HMDAction *)v5 actionSet];
    v11 = [(HMDCharacteristicWriteAction *)self initWithUUID:v9 characteristic:v6 targetValue:v8 actionSet:v10];

    v12 = v11;
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v11 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v19.receiver = v11;
      v19.super_class = HMDCharacteristicWriteAction;
      v16 = [(HMDCharacteristicWriteAction *)&v19 class];
      *buf = 138543618;
      v21 = v15;
      v22 = 2112;
      v23 = v16;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode base class: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)associatedAccessories
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [(HMDCharacteristicWriteAction *)self characteristic];
  v3 = [v2 accessory];

  if (v3)
  {
    v7[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)isAssociatedWithAccessory:(id)a3
{
  v4 = [a3 uuid];
  v5 = [(HMDCharacteristicWriteAction *)self characteristic];
  v6 = [v5 accessory];
  v7 = [v6 uuid];
  v8 = [v4 isEqual:v7];

  return v8;
}

- (BOOL)isUnsecuringAction
{
  v3 = +[HMDHAPMetadata getSharedInstance];
  v4 = [(HMDCharacteristicWriteAction *)self characteristic];
  v5 = [v4 type];
  v6 = [v4 service];
  v7 = [v6 type];
  if ([v3 requiresDeviceUnlock:v5 forService:v7])
  {
    v8 = [v4 type];
    v9 = [(HMDCharacteristicWriteAction *)self targetValue];
    v10 = [v3 allowsSecuringWriteFor:v8 withValue:v9] ^ 1;
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
  v4 = [(HMDCharacteristicWriteAction *)self characteristic];
  v5 = [v4 type];
  v6 = [v4 service];
  v7 = [v6 type];
  v8 = [v3 requiresDeviceUnlock:v5 forService:v7];

  return v8;
}

- (BOOL)isCompatibleWithAction:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMDCharacteristicWriteAction;
  if ([(HMDAction *)&v9 isCompatibleWithAction:v4])
  {
    v5 = [(HMDCharacteristicWriteAction *)self characteristic];
    v6 = [v4 characteristic];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isActionForCharacteristic:(id)a3
{
  v4 = a3;
  v5 = [v4 instanceID];
  v6 = [v4 service];
  v7 = [v6 instanceID];

  v8 = [v4 accessory];

  v9 = [v8 uuid];
  v10 = [v9 UUIDString];

  v11 = [(HMDCharacteristicWriteAction *)self characteristic];
  v12 = [v11 instanceID];
  v13 = [v11 service];
  v14 = [v13 instanceID];

  v15 = [v11 accessory];
  v16 = [v15 uuid];
  v17 = [v16 UUIDString];

  if ([v12 isEqual:v5] && objc_msgSend(v14, "isEqual:", v7))
  {
    v18 = [v17 isEqualToString:v10];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)executeWithSource:(unint64_t)a3 clientName:(id)a4 completionHandler:(id)a5
{
  if (a5)
  {
    (*(a5 + 2))(a5, 0);
  }
}

- (id)dictionaryRepresentation
{
  v3 = [(HMDCharacteristicWriteAction *)self characteristic];
  v16.receiver = self;
  v16.super_class = HMDCharacteristicWriteAction;
  v4 = [(HMDAction *)&v16 dictionaryRepresentation];
  v5 = [v4 mutableCopy];

  v6 = [v3 accessory];
  v7 = accessoryToEncodeForXPCTransportForAccessory(v6);
  v8 = [v7 uuid];
  v9 = [v8 UUIDString];
  [v5 setObject:v9 forKeyedSubscript:*MEMORY[0x277CCF0B0]];

  v10 = [v3 service];
  v11 = [v10 instanceID];
  [v5 setObject:v11 forKeyedSubscript:*MEMORY[0x277CD25F8]];

  v12 = [v3 instanceID];
  [v5 setObject:v12 forKeyedSubscript:*MEMORY[0x277CD2140]];

  v13 = [(HMDCharacteristicWriteAction *)self targetValue];
  [v5 setObject:v13 forKeyedSubscript:*MEMORY[0x277CD21B8]];

  v14 = [v5 copy];

  return v14;
}

- (id)stateDump
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDAction *)self uuid];
  v5 = [v4 UUIDString];
  v6 = [(HMDCharacteristicWriteAction *)self characteristic];
  v7 = [(HMDCharacteristicWriteAction *)self targetValue];
  v8 = [v3 stringWithFormat:@"Action uuid: %@, Characteristic %@  value %@", v5, v6, v7];

  return v8;
}

- (HMDCharacteristicWriteAction)initWithUUID:(id)a3 characteristic:(id)a4 targetValue:(id)a5 actionSet:(id)a6
{
  v11 = a4;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = HMDCharacteristicWriteAction;
  v13 = [(HMDAction *)&v16 initWithUUID:a3 actionSet:a6];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_characteristic, a4);
    objc_storeStrong(&v14->_targetValue, a5);
  }

  return v14;
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
  if (logCategory__hmf_once_t12_122144 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t12_122144, &__block_literal_global_122145);
  }

  v3 = logCategory__hmf_once_v13_122146;

  return v3;
}

uint64_t __43__HMDCharacteristicWriteAction_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v13_122146;
  logCategory__hmf_once_v13_122146 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)actionWithDictionaryRepresentation:(id)a3 home:(id)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 hmf_numberForKey:*MEMORY[0x277CD2058]];
  if (![v8 unsignedIntegerValue])
  {
    v14 = [v6 objectForKeyedSubscript:*MEMORY[0x277CD21B8]];
    if (v14)
    {
      v15 = [v6 hmf_UUIDForKey:*MEMORY[0x277CCF0B0]];
      if (v15 && (([v7 accessoryWithUUID:v15], v16 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v17 = 0) : (v17 = v16), v18 = v17, v16, v18))
      {

        v19 = [v6 hmf_numberForKey:*MEMORY[0x277CD25F8]];
        v20 = HAPInstanceIDFromValue();

        v21 = *MEMORY[0x277CD2140];
        v22 = [v6 hmf_numberForKey:*MEMORY[0x277CD2140]];
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

            v27 = [a1 alloc];
            v28 = [MEMORY[0x277CCAD78] UUID];
            v13 = [v27 initWithUUID:v28 characteristic:v26 targetValue:v14 actionSet:0];

LABEL_28:
            goto LABEL_29;
          }
        }

        v37 = objc_autoreleasePoolPush();
        v38 = a1;
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          HMFGetLogIdentifier();
          v40 = v44 = v37;
          v41 = [v6 hmf_numberForKey:v21];
          *buf = 138544130;
          v47 = v40;
          v48 = 2112;
          v49 = v23;
          v50 = 2112;
          v51 = v41;
          v52 = 2112;
          v53 = v45;
          _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to find characteristic: %@ (%@)-%@", buf, 0x2Au);

          v37 = v44;
        }

        objc_autoreleasePoolPop(v37);
      }

      else
      {
        v29 = objc_autoreleasePoolPush();
        v30 = a1;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = HMFGetLogIdentifier();
          *buf = 138543618;
          v47 = v32;
          v48 = 2112;
          v49 = v15;
          _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to find accessory with identifier: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v29);
      }
    }

    else
    {
      v33 = objc_autoreleasePoolPush();
      v34 = a1;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138543618;
        v47 = v36;
        v48 = 2112;
        v49 = v6;
        _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@Missing target value: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v33);
    }

    v13 = 0;
    goto LABEL_28;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = a1;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v47 = v12;
    v48 = 2112;
    v49 = v8;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Invalid action type: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = 0;
LABEL_29:

  v42 = *MEMORY[0x277D85DE8];

  return v13;
}

@end