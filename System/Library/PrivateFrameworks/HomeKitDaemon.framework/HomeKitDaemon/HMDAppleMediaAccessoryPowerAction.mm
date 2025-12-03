@interface HMDAppleMediaAccessoryPowerAction
+ (id)actionWithDictionaryRepresentation:(id)representation home:(id)home;
+ (id)logCategory;
- (BOOL)isAssociatedWithAccessory:(id)accessory;
- (BOOL)isCompatibleWithAction:(id)action;
- (HMDAppleMediaAccessory)accessory;
- (HMDAppleMediaAccessoryPowerAction)initWithCoder:(id)coder;
- (HMDAppleMediaAccessoryPowerAction)initWithModelObject:(id)object parent:(id)parent error:(id *)error;
- (HMDAppleMediaAccessoryPowerAction)initWithUUID:(id)d accessory:(id)accessory targetSleepWakeState:(unint64_t)state actionSet:(id)set;
- (id)associatedAccessories;
- (id)attributeDescriptions;
- (id)dictionaryRepresentation;
- (id)modelObjectWithChangeType:(unint64_t)type version:(int64_t)version;
- (id)stateDump;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithSource:(unint64_t)source clientName:(id)name completionHandler:(id)handler;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
@end

@implementation HMDAppleMediaAccessoryPowerAction

- (HMDAppleMediaAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  uuid = [(HMDAction *)self uuid];
  v5 = [v3 initWithName:@"UUID" value:uuid];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDAppleMediaAccessoryPowerAction *)self type];
  v7 = HMActionTypeAsString();
  v8 = [v6 initWithName:@"Type" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = HMDAppleMediaAccessoryPowerAction;
  coderCopy = coder;
  [(HMDAction *)&v7 encodeWithCoder:coderCopy];
  v5 = [(HMDAppleMediaAccessoryPowerAction *)self accessory:v7.receiver];
  [coderCopy encodeObject:v5 forKey:*MEMORY[0x277CCF208]];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAppleMediaAccessoryPowerAction targetSleepWakeState](self, "targetSleepWakeState")}];
  [coderCopy encodeObject:v6 forKey:*MEMORY[0x277CCF218]];
}

- (HMDAppleMediaAccessoryPowerAction)initWithCoder:(id)coder
{
  v25 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [[HMDAction alloc] initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCF208]];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCF218]];
    unsignedIntegerValue = [v7 unsignedIntegerValue];
    uuid = [(HMDAction *)v5 uuid];
    actionSet = [(HMDAction *)v5 actionSet];
    v11 = [(HMDAppleMediaAccessoryPowerAction *)self initWithUUID:uuid accessory:v6 targetSleepWakeState:unsignedIntegerValue actionSet:actionSet];

    selfCopy = v11;
    v13 = selfCopy;
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v20.receiver = selfCopy;
      v20.super_class = HMDAppleMediaAccessoryPowerAction;
      v17 = [(HMDAppleMediaAccessoryPowerAction *)&v20 class];
      *buf = 138543618;
      v22 = v16;
      v23 = 2112;
      v24 = v17;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode base class: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v13 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  v41 = *MEMORY[0x277D85DE8];
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
    transactionResult = [messageCopy transactionResult];
    if (![v13 propertyWasSet:@"accessoryUUID"])
    {
      if (![v13 propertyWasSet:@"targetSleepWakeState"])
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    actionSet = [(HMDAction *)self actionSet];
    home = [actionSet home];
    accessoryUUID = [v13 accessoryUUID];
    v18 = [home accessoryWithUUID:accessoryUUID];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    if (v20)
    {
      [(HMDAppleMediaAccessoryPowerAction *)self setAccessory:v20];

      if (([v13 propertyWasSet:@"targetSleepWakeState"] & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    v26 = objc_autoreleasePoolPush();
    selfCopy = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v29 = v33 = selfCopy;
      [v13 accessoryUUID];
      v30 = v34 = v26;
      *buf = 138543874;
      v36 = v29;
      v37 = 2112;
      v38 = v13;
      v39 = 2112;
      v40 = v30;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Unknown accessory saved in object model %@: %@", buf, 0x20u);

      v26 = v34;
      selfCopy = v33;
    }

    objc_autoreleasePoolPop(v26);
    if ([v13 propertyWasSet:@"targetSleepWakeState"])
    {
LABEL_20:
      targetSleepWakeState = [v13 targetSleepWakeState];
      -[HMDAppleMediaAccessoryPowerAction setTargetSleepWakeState:](self, "setTargetSleepWakeState:", [targetSleepWakeState integerValue]);

LABEL_21:
      [transactionResult markChanged];
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543874;
      v36 = v24;
      v37 = 2112;
      v38 = v11;
      v39 = 2112;
      v40 = objc_opt_class();
      v25 = v40;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectUpdated]", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    transactionResult = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [messageCopy respondWithError:transactionResult];
  }

LABEL_22:

  v32 = *MEMORY[0x277D85DE8];
}

- (id)modelObjectWithChangeType:(unint64_t)type version:(int64_t)version
{
  if (version < 4)
  {
    v10 = 0;
  }

  else
  {
    v6 = [HMDAppleMediaAccessoryPowerActionModel alloc];
    uuid = [(HMDAction *)self uuid];
    actionSet = [(HMDAction *)self actionSet];
    uuid2 = [actionSet uuid];
    v10 = [(HMDBackingStoreModelObject *)v6 initWithObjectChangeType:type uuid:uuid parentUUID:uuid2];

    accessory = [(HMDAppleMediaAccessoryPowerAction *)self accessory];
    uuid3 = [accessory uuid];
    [(HMDAppleMediaAccessoryPowerActionModel *)v10 setAccessoryUUID:uuid3];

    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAppleMediaAccessoryPowerAction targetSleepWakeState](self, "targetSleepWakeState")}];
    [(HMDAppleMediaAccessoryPowerActionModel *)v10 setTargetSleepWakeState:v13];
  }

  return v10;
}

- (HMDAppleMediaAccessoryPowerAction)initWithModelObject:(id)object parent:(id)parent error:(id *)error
{
  v54 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  parentCopy = parent;
  v10 = objectCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    v13 = parentCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    if (!v15)
    {
      v34 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138543362;
        v51 = v36;
        _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Parent is not an actionset", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v34);
      if (error)
      {
        [MEMORY[0x277CCA9B8] hmErrorWithCode:22];
        *error = v33 = 0;
      }

      else
      {
        v33 = 0;
      }

      goto LABEL_42;
    }

    home = [v15 home];
    accessoryUUID = [v12 accessoryUUID];
    v18 = [home accessoryWithUUID:accessoryUUID];

    if (!v18)
    {
      v37 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = HMFGetLogIdentifier();
        [v12 accessoryUUID];
        v40 = v49 = v37;
        *buf = 138543618;
        v51 = v39;
        v52 = 2112;
        v53 = v40;
        _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Unable to find accessory with UUID: %@", buf, 0x16u);

        v37 = v49;
      }

      objc_autoreleasePoolPop(v37);
      if (error)
      {
        [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
        *error = v33 = 0;
      }

      else
      {
        v33 = 0;
      }

      goto LABEL_41;
    }

    v19 = v18;
    objc_opt_class();
    v20 = objc_opt_isKindOfClass() & 1;
    if (v20)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0;
    }

    v48 = v21;

    if (v20)
    {
      targetSleepWakeState = [v12 targetSleepWakeState];
      unsignedIntegerValue = [targetSleepWakeState unsignedIntegerValue];

      if ((unsignedIntegerValue - 3) > 0xFFFFFFFFFFFFFFFDLL)
      {
        uuid = [v12 uuid];
        selfCopy5 = [(HMDAppleMediaAccessoryPowerAction *)self initWithUUID:uuid accessory:v19 targetSleepWakeState:unsignedIntegerValue actionSet:v15];

        v33 = selfCopy5;
        goto LABEL_40;
      }

      v24 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v27 = v47 = v24;
        *buf = 138543618;
        v51 = v27;
        v52 = 2048;
        v53 = unsignedIntegerValue;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Invalid target sleep wake state: %lu", buf, 0x16u);

        v24 = v47;
      }

      objc_autoreleasePoolPop(v24);
      if (error)
      {
        v28 = MEMORY[0x277CCA9B8];
        v29 = 3;
LABEL_36:
        [v28 hmErrorWithCode:{v29, v47, v48}];
        *error = v33 = 0;
LABEL_40:

LABEL_41:
LABEL_42:

        goto LABEL_43;
      }
    }

    else
    {
      v41 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = HMFGetLogIdentifier();
        *buf = 138543618;
        v51 = v43;
        v52 = 2112;
        v53 = 0;
        _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_ERROR, "%{public}@Accessory is not an Apple Media Accessory: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v41);
      if (error)
      {
        v28 = MEMORY[0x277CCA9B8];
        v29 = 22;
        goto LABEL_36;
      }
    }

    v33 = 0;
    goto LABEL_40;
  }

  v30 = objc_autoreleasePoolPush();
  selfCopy5 = self;
  v31 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    v32 = HMFGetLogIdentifier();
    *buf = 138543362;
    v51 = v32;
    _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Action model does not exist", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v30);
  if (error)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:22];
    *error = v33 = 0;
  }

  else
  {
    v33 = 0;
  }

LABEL_43:

  v45 = *MEMORY[0x277D85DE8];
  return v33;
}

- (BOOL)isCompatibleWithAction:(id)action
{
  actionCopy = action;
  v9.receiver = self;
  v9.super_class = HMDAppleMediaAccessoryPowerAction;
  if ([(HMDAction *)&v9 isCompatibleWithAction:actionCopy])
  {
    accessory = [(HMDAppleMediaAccessoryPowerAction *)self accessory];
    accessory2 = [actionCopy accessory];
    v7 = accessory == accessory2;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isAssociatedWithAccessory:(id)accessory
{
  uuid = [accessory uuid];
  accessory = [(HMDAppleMediaAccessoryPowerAction *)self accessory];
  uuid2 = [accessory uuid];
  v7 = [uuid hmf_isEqualToUUID:uuid2];

  return v7;
}

- (id)associatedAccessories
{
  v7[1] = *MEMORY[0x277D85DE8];
  accessory = [(HMDAppleMediaAccessoryPowerAction *)self accessory];
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

- (void)executeWithSource:(unint64_t)source clientName:(id)name completionHandler:(id)handler
{
  v30 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  handlerCopy = handler;
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543362;
    v27 = v12;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Executing Apple TV Power Action", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  targetSleepWakeState = [(HMDAppleMediaAccessoryPowerAction *)selfCopy targetSleepWakeState];
  if (targetSleepWakeState)
  {
    if (targetSleepWakeState == 2)
    {
      v14 = &unk_283E74DE0;
    }

    else if (targetSleepWakeState == 1)
    {
      v14 = &unk_283E74DC8;
    }

    else
    {
      v14 = 0;
    }

    objc_initWeak(buf, selfCopy);
    accessory = [(HMDAppleMediaAccessoryPowerAction *)selfCopy accessory];
    mediaProfile = [accessory mediaProfile];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __84__HMDAppleMediaAccessoryPowerAction_executeWithSource_clientName_completionHandler___block_invoke;
    v23[3] = &unk_278689728;
    objc_copyWeak(&v25, buf);
    v24 = handlerCopy;
    [mediaProfile handleSetValue:v14 withRequestProperty:@"HMDMediaProfileSetPowerKey" withCompletionHandler:v23];

    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      targetSleepWakeState2 = [(HMDAppleMediaAccessoryPowerAction *)v16 targetSleepWakeState];
      *buf = 138543618;
      v27 = v18;
      v28 = 2048;
      v29 = targetSleepWakeState2;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Invalid target sleep wake state set: %tu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __84__HMDAppleMediaAccessoryPowerAction_executeWithSource_clientName_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v5)
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v12 = HMFGetLogIdentifier();
    v20 = 138543874;
    v21 = v12;
    v22 = 2112;
    v23 = v9;
    v24 = 2112;
    v25 = v5;
    v13 = "%{public}@Failed to execute %@ with error: %@";
    v14 = v11;
    v15 = OS_LOG_TYPE_ERROR;
    v16 = 32;
  }

  else
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v12 = HMFGetLogIdentifier();
    v20 = 138543618;
    v21 = v12;
    v22 = 2112;
    v23 = v9;
    v13 = "%{public}@Successfully executed %@";
    v14 = v11;
    v15 = OS_LOG_TYPE_DEFAULT;
    v16 = 22;
  }

  _os_log_impl(&dword_229538000, v14, v15, v13, &v20, v16);

LABEL_7:
  objc_autoreleasePoolPop(v8);
  v17 = _Block_copy(*(a1 + 32));
  v18 = v17;
  if (v17)
  {
    (*(v17 + 2))(v17, v5);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)dictionaryRepresentation
{
  v11.receiver = self;
  v11.super_class = HMDAppleMediaAccessoryPowerAction;
  dictionaryRepresentation = [(HMDAction *)&v11 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  accessory = [(HMDAppleMediaAccessoryPowerAction *)self accessory];
  uuid = [accessory uuid];
  uUIDString = [uuid UUIDString];
  [v4 setObject:uUIDString forKeyedSubscript:*MEMORY[0x277CCF210]];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDAppleMediaAccessoryPowerAction targetSleepWakeState](self, "targetSleepWakeState")}];
  [v4 setObject:v8 forKeyedSubscript:*MEMORY[0x277CCF220]];

  v9 = [v4 copy];

  return v9;
}

- (id)stateDump
{
  v3 = MEMORY[0x277CCACA8];
  uuid = [(HMDAction *)self uuid];
  accessory = [(HMDAppleMediaAccessoryPowerAction *)self accessory];
  v6 = [v3 stringWithFormat:@"Action uuid: %@, Accessory: %@, Power State: %tu", uuid, accessory, -[HMDAppleMediaAccessoryPowerAction targetSleepWakeState](self, "targetSleepWakeState")];

  return v6;
}

- (HMDAppleMediaAccessoryPowerAction)initWithUUID:(id)d accessory:(id)accessory targetSleepWakeState:(unint64_t)state actionSet:(id)set
{
  accessoryCopy = accessory;
  v14.receiver = self;
  v14.super_class = HMDAppleMediaAccessoryPowerAction;
  v11 = [(HMDAction *)&v14 initWithUUID:d actionSet:set];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_accessory, accessoryCopy);
    v12->_targetSleepWakeState = state;
  }

  return v12;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t26_247366 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t26_247366, &__block_literal_global_247367);
  }

  v3 = logCategory__hmf_once_v27_247368;

  return v3;
}

void __48__HMDAppleMediaAccessoryPowerAction_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v27_247368;
  logCategory__hmf_once_v27_247368 = v1;
}

+ (id)actionWithDictionaryRepresentation:(id)representation home:(id)home
{
  v48 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  homeCopy = home;
  v8 = [representationCopy hmf_numberForKey:*MEMORY[0x277CD2058]];
  if (!v8)
  {
    _HMFPreconditionFailure();
  }

  v9 = v8;
  if ([v8 unsignedIntegerValue] == 4)
  {
    v10 = [HMDAppleMediaAccessoryPowerActionModel alloc];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uuid = [homeCopy uuid];
    v13 = [(HMDBackingStoreModelObject *)v10 initWithObjectChangeType:0 uuid:uUID parentUUID:uuid];

    [(HMDAppleMediaAccessoryPowerActionModel *)v13 loadModelWithActionInformation:representationCopy];
    accessoryUUID = [(HMDAppleMediaAccessoryPowerActionModel *)v13 accessoryUUID];
    v15 = [homeCopy accessoryWithUUID:accessoryUUID];

    v16 = v15;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    if (v18)
    {
      targetSleepWakeState = [(HMDAppleMediaAccessoryPowerActionModel *)v13 targetSleepWakeState];
      unsignedIntegerValue = [targetSleepWakeState unsignedIntegerValue];

      if ((unsignedIntegerValue - 3) > 0xFFFFFFFFFFFFFFFDLL)
      {
        v36 = [representationCopy hmf_UUIDForKey:*MEMORY[0x277CD2060]];
        v37 = v36;
        if (v36)
        {
          uUID2 = v36;
        }

        else
        {
          uUID2 = [MEMORY[0x277CCAD78] UUID];
        }

        v39 = uUID2;

        v30 = [[HMDAppleMediaAccessoryPowerAction alloc] initWithUUID:v39 accessory:v18 targetSleepWakeState:unsignedIntegerValue actionSet:0];
        goto LABEL_22;
      }

      v21 = objc_autoreleasePoolPush();
      selfCopy = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v24 = v42 = v21;
        *buf = 138543618;
        v45 = v24;
        v46 = 2048;
        v47 = unsignedIntegerValue;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Invalid power state: %tu", buf, 0x16u);

        v21 = v42;
      }

      v25 = v21;
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        [(HMDAppleMediaAccessoryPowerActionModel *)v13 accessoryUUID];
        v35 = v43 = v31;
        *buf = 138543618;
        v45 = v34;
        v46 = 2112;
        v47 = v35;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Couldn't find an Apple TV in the home with UUID: %@", buf, 0x16u);

        v31 = v43;
      }

      v25 = v31;
    }

    objc_autoreleasePoolPop(v25);
    v30 = 0;
LABEL_22:

    goto LABEL_23;
  }

  v26 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v29 = HMFGetLogIdentifier();
    *buf = 138543618;
    v45 = v29;
    v46 = 2112;
    v47 = v9;
    _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Invalid action type: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v26);
  v30 = 0;
LABEL_23:

  v40 = *MEMORY[0x277D85DE8];

  return v30;
}

@end