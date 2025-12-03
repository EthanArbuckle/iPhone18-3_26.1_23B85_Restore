@interface HMDLightProfileNaturalLightingAction
+ (id)actionWithDictionaryRepresentation:(id)representation actionSet:(id)set;
+ (id)actionWithDictionaryRepresentation:(id)representation home:(id)home;
+ (id)logCategory;
- (BOOL)isActionForCharacteristic:(id)characteristic;
- (BOOL)isAssociatedWithAccessory:(id)accessory;
- (BOOL)isCompatibleWithAction:(id)action;
- (BOOL)isNaturalLightingEnabled;
- (HMDLightProfile)lightProfile;
- (HMDLightProfileNaturalLightingAction)initWithCoder:(id)coder;
- (HMDLightProfileNaturalLightingAction)initWithModelObject:(id)object parent:(id)parent error:(id *)error;
- (HMDLightProfileNaturalLightingAction)initWithUUID:(id)d lightProfileUUID:(id)iD naturalLightingEnabled:(BOOL)enabled actionSet:(id)set notificationCenter:(id)center;
- (id)associatedAccessories;
- (id)attributeDescriptions;
- (id)dictionaryRepresentation;
- (id)modelObjectWithChangeType:(unint64_t)type version:(int64_t)version;
- (id)writeRequestForTransitionStartWithLightProfile:(id)profile startDate:(id)date type:(unint64_t)type;
- (void)configureWithHome:(id)home;
- (void)encodeWithCoder:(id)coder;
- (void)handleAccessoryProfileAddedNotification:(id)notification;
- (void)setLightProfile:(id)profile;
- (void)setNaturalLightingEnabled:(BOOL)enabled;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
@end

@implementation HMDLightProfileNaturalLightingAction

- (id)attributeDescriptions
{
  v19[3] = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = HMDLightProfileNaturalLightingAction;
  attributeDescriptions = [(HMDAction *)&v18 attributeDescriptions];
  v4 = [attributeDescriptions mutableCopy];

  v5 = objc_alloc(MEMORY[0x277D0F778]);
  lightProfileUUID = [(HMDLightProfileNaturalLightingAction *)self lightProfileUUID];
  v7 = [v5 initWithName:@"Light Profile UUID" value:lightProfileUUID];
  v19[0] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  lightProfile = [(HMDLightProfileNaturalLightingAction *)self lightProfile];
  v10 = [v8 initWithName:@"Light Profile" value:lightProfile];
  v19[1] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDLightProfileNaturalLightingAction *)self isNaturalLightingEnabled];
  v12 = HMFBooleanToString();
  v13 = [v11 initWithName:@"Natural Light Enabled" value:v12];
  v19[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
  [v4 addObjectsFromArray:v14];

  v15 = [v4 copy];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  v64 = *MEMORY[0x277D85DE8];
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
    actionSet = [(HMDAction *)self actionSet];
    v15 = actionSet;
    if (actionSet)
    {
      home = [actionSet home];
      if (home)
      {
        v17 = home;
        v55 = updatedCopy;
        setProperties = [v13 setProperties];
        v19 = [setProperties containsObject:@"naturalLightingEnabledField"];

        v20 = objc_autoreleasePoolPush();
        selfCopy = self;
        v22 = HMFGetOSLogHandle();
        v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
        if (v19)
        {
          v53 = messageCopy;
          if (v23)
          {
            v24 = HMFGetLogIdentifier();
            [(HMDLightProfileNaturalLightingAction *)selfCopy isNaturalLightingEnabled];
            v25 = HMFBooleanToString();
            [v13 isNaturalLightingEnabled];
            v26 = HMFBooleanToString();
            *buf = 138543874;
            v59 = v24;
            v60 = 2112;
            v61 = v25;
            v62 = 2112;
            v63 = v26;
            _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Updating natural lighting enabled from %@ to %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v20);
          -[HMDLightProfileNaturalLightingAction setNaturalLightingEnabled:](selfCopy, "setNaturalLightingEnabled:", [v13 isNaturalLightingEnabled]);
          v56[0] = *MEMORY[0x277CD2060];
          uuid = [(HMDAction *)selfCopy uuid];
          uUIDString = [uuid UUIDString];
          v57[0] = uUIDString;
          v56[1] = *MEMORY[0x277CD2028];
          dictionaryRepresentation = [(HMDLightProfileNaturalLightingAction *)selfCopy dictionaryRepresentation];
          v57[1] = dictionaryRepresentation;
          v56[2] = *MEMORY[0x277CD0640];
          uuid2 = [v17 uuid];
          uUIDString2 = [uuid2 UUIDString];
          v57[2] = uUIDString2;
          v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:3];

          messageCopy = v53;
          [v53 respondWithPayload:v31];
          v32 = objc_autoreleasePoolPush();
          v33 = selfCopy;
          v34 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            v35 = HMFGetLogIdentifier();
            *buf = 138543618;
            v59 = v35;
            v60 = 2112;
            v61 = v31;
            _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_DEBUG, "%{public}@Responding to client after updating action with response %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v32);
          updatedCopy = v55;
        }

        else
        {
          updatedCopy = v55;
          if (v23)
          {
            v49 = HMFGetLogIdentifier();
            [v13 setProperties];
            v50 = v54 = messageCopy;
            *buf = 138543618;
            v59 = v49;
            v60 = 2112;
            v61 = v50;
            _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Ignoring update naturalLightingEnabledField property is not set: %@", buf, 0x16u);

            messageCopy = v54;
          }

          objc_autoreleasePoolPop(v20);
          [messageCopy respondWithSuccess];
        }
      }

      else
      {
        v44 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v46 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v47 = HMFGetLogIdentifier();
          *buf = 138543874;
          v59 = v47;
          v60 = 2112;
          v61 = v15;
          v62 = 2112;
          v63 = 0;
          _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_ERROR, "%{public}@Failed to update action, action set missing home %@:%@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v44);
        v48 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [messageCopy respondWithError:v48];

        v17 = 0;
      }
    }

    else
    {
      v40 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = HMFGetLogIdentifier();
        *buf = 138543618;
        v59 = v43;
        v60 = 2112;
        v61 = 0;
        _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_ERROR, "%{public}@Failed to update action, missing action set: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v40);
      v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [messageCopy respondWithError:v17];
    }
  }

  else
  {
    v36 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier();
      *buf = 138543874;
      v59 = v39;
      v60 = 2112;
      v61 = objc_opt_class();
      v62 = 2112;
      v63 = v11;
      _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@Ignoring update from object of unhandled type %@:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v36);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [messageCopy respondWithError:v15];
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (id)modelObjectWithChangeType:(unint64_t)type version:(int64_t)version
{
  v40 = *MEMORY[0x277D85DE8];
  if (version < 4)
  {
    v4 = 0;
    goto LABEL_14;
  }

  actionSet = [(HMDAction *)self actionSet];
  if (!actionSet)
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v34 = 138543874;
      v35 = v23;
      v36 = 2048;
      versionCopy = version;
      v38 = 2112;
      v39 = 0;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to create model object for change type:%lu missing actionSet: %@", &v34, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
    v4 = 0;
    goto LABEL_13;
  }

  v9 = [HMDLightProfileNaturalLightingActionModel alloc];
  uuid = [(HMDAction *)self uuid];
  uuid2 = [actionSet uuid];
  v4 = [(HMDBackingStoreModelObject *)v9 initWithObjectChangeType:type uuid:uuid parentUUID:uuid2];

  lightProfileUUID = [(HMDLightProfileNaturalLightingAction *)self lightProfileUUID];
  [(HMDLightProfileNaturalLightingActionModel *)v4 setLightProfileUUID:lightProfileUUID];

  [(HMDLightProfileNaturalLightingActionModel *)v4 setNaturalLightingEnabled:[(HMDLightProfileNaturalLightingAction *)self isNaturalLightingEnabled]];
  lightProfile = [(HMDLightProfileNaturalLightingAction *)self lightProfile];
  v14 = lightProfile;
  if (lightProfile)
  {
    accessory = [lightProfile accessory];
    uuid3 = [accessory uuid];
    [(HMDLightProfileNaturalLightingActionModel *)v4 setAccessoryUUID:uuid3];

    services = [v14 services];
    v18 = services;
    v19 = &__block_literal_global_70546;
LABEL_11:
    v30 = [services na_map:v19];

    v31 = [MEMORY[0x277CBEB98] setWithArray:v30];
    [(HMDLightProfileNaturalLightingActionModel *)v4 setServiceUUIDs:v31];

    goto LABEL_12;
  }

  lightServices = [(HMDLightProfileNaturalLightingAction *)self lightServices];
  v25 = [lightServices count];

  if (v25)
  {
    lightServices2 = [(HMDLightProfileNaturalLightingAction *)self lightServices];
    firstObject = [lightServices2 firstObject];
    accessory2 = [firstObject accessory];
    uuid4 = [accessory2 uuid];
    [(HMDLightProfileNaturalLightingActionModel *)v4 setAccessoryUUID:uuid4];

    services = [(HMDLightProfileNaturalLightingAction *)self lightServices];
    v18 = services;
    v19 = &__block_literal_global_26_70547;
    goto LABEL_11;
  }

LABEL_12:

LABEL_13:
LABEL_14:
  v32 = *MEMORY[0x277D85DE8];

  return v4;
}

- (HMDLightProfileNaturalLightingAction)initWithModelObject:(id)object parent:(id)parent error:(id *)error
{
  v48 = *MEMORY[0x277D85DE8];
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

    if (v15)
    {
      lightProfileUUID = [v12 lightProfileUUID];
      if (lightProfileUUID)
      {
        v17 = parentCopy;
        home = [v15 home];
        v18 = [home lightProfileWithUUID:lightProfileUUID];
        v19 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v21 = HMFGetOSLogHandle();
        v22 = v21;
        if (v18)
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v23 = HMFGetLogIdentifier();
            *buf = 138543618;
            v43 = v23;
            v44 = 2112;
            v45 = v18;
            _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Creating natural lighting action with action model with light profile: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v19);
          uuid = [v12 uuid];
          v25 = -[HMDLightProfileNaturalLightingAction initWithUUID:lightProfileUUID:naturalLightingEnabled:actionSet:](selfCopy4, "initWithUUID:lightProfileUUID:naturalLightingEnabled:actionSet:", uuid, lightProfileUUID, [v12 isNaturalLightingEnabled], v15);

          [(HMDLightProfileNaturalLightingAction *)v25 setLightProfile:v18];
          selfCopy4 = v25;
          v26 = selfCopy4;
        }

        else
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v39 = HMFGetLogIdentifier();
            *buf = 138543618;
            v43 = v39;
            v44 = 2112;
            v45 = lightProfileUUID;
            _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to create action, home doesn't have a light profile with UUID: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v19);
          if (error)
          {
            [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
            *error = v26 = 0;
          }

          else
          {
            v26 = 0;
          }
        }

        parentCopy = v17;
      }

      else
      {
        v33 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v36 = v35 = parentCopy;
          *buf = 138543618;
          v43 = v36;
          v44 = 2112;
          v45 = 0;
          _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@Failed to create action, model is missing light profile UUID: %@", buf, 0x16u);

          parentCopy = v35;
        }

        objc_autoreleasePoolPop(v33);
        if (error)
        {
          [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
          *error = v26 = 0;
        }

        else
        {
          v26 = 0;
        }
      }
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v32 = v41 = parentCopy;
        *buf = 138543874;
        v43 = v32;
        v44 = 2112;
        v45 = v13;
        v46 = 2112;
        v47 = objc_opt_class();
        _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Failed to create action, model's parent is of invalid class %@:%@", buf, 0x20u);

        parentCopy = v41;
      }

      objc_autoreleasePoolPop(v30);
      if (error)
      {
        [MEMORY[0x277CCA9B8] hmErrorWithCode:22];
        *error = v26 = 0;
      }

      else
      {
        v26 = 0;
      }
    }
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543874;
      v43 = v29;
      v44 = 2112;
      v45 = v10;
      v46 = 2112;
      v47 = objc_opt_class();
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to create action, model is of invalid class %@:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v27);
    if (error)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:22];
      *error = v26 = 0;
    }

    else
    {
      v26 = 0;
    }
  }

  v37 = *MEMORY[0x277D85DE8];
  return v26;
}

- (void)handleAccessoryProfileAddedNotification:(id)notification
{
  v31 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  object = [notificationCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = object;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    lightProfiles = [v7 lightProfiles];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __80__HMDLightProfileNaturalLightingAction_handleAccessoryProfileAddedNotification___block_invoke;
    v22[3] = &unk_2797285D0;
    v22[4] = self;
    v9 = [lightProfiles na_firstObjectPassingTest:v22];

    if (v9)
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        name = [notificationCopy name];
        *buf = 138543874;
        v24 = v13;
        v25 = 2112;
        v26 = name;
        v27 = 2112;
        v28 = v9;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Handling accessory profile update notification: %@, updating light profile to: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      [(HMDLightProfileNaturalLightingAction *)selfCopy setLightProfile:v9];
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      name2 = [notificationCopy name];
      object2 = [notificationCopy object];
      *buf = 138544130;
      v24 = v18;
      v25 = 2112;
      v26 = name2;
      v27 = 2112;
      v28 = object2;
      v29 = 2112;
      v30 = objc_opt_class();
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Accessory profile update notification: %@ is sent by object: %@ which is not of type %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v15);
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __80__HMDLightProfileNaturalLightingAction_handleAccessoryProfileAddedNotification___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) lightProfileUUID];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (void)configureWithHome:(id)home
{
  homeCopy = home;
  notificationCenter = [(HMDLightProfileNaturalLightingAction *)self notificationCenter];
  [notificationCenter removeObserver:self];

  notificationCenter2 = [(HMDLightProfileNaturalLightingAction *)self notificationCenter];
  [notificationCenter2 addObserver:self selector:sel_handleAccessoryProfileAddedNotification_ name:@"HMDAccessoryProfileAddedNotification" object:0];

  lightProfileUUID = [(HMDLightProfileNaturalLightingAction *)self lightProfileUUID];
  v7 = [homeCopy lightProfileWithUUID:lightProfileUUID];

  [(HMDLightProfileNaturalLightingAction *)self setLightProfile:v7];
}

- (id)dictionaryRepresentation
{
  v10.receiver = self;
  v10.super_class = HMDLightProfileNaturalLightingAction;
  dictionaryRepresentation = [(HMDAction *)&v10 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  lightProfileUUID = [(HMDLightProfileNaturalLightingAction *)self lightProfileUUID];
  uUIDString = [lightProfileUUID UUIDString];
  [v4 setObject:uUIDString forKeyedSubscript:*MEMORY[0x277CD07B8]];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDLightProfileNaturalLightingAction isNaturalLightingEnabled](self, "isNaturalLightingEnabled")}];
  [v4 setObject:v7 forKeyedSubscript:*MEMORY[0x277CD0788]];

  v8 = [v4 copy];

  return v8;
}

- (BOOL)isActionForCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  lightProfile = [(HMDLightProfileNaturalLightingAction *)self lightProfile];
  readCharacteristicRequests = [lightProfile readCharacteristicRequests];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__HMDLightProfileNaturalLightingAction_isActionForCharacteristic___block_invoke;
  v10[3] = &unk_279735090;
  v11 = characteristicCopy;
  v7 = characteristicCopy;
  v8 = [readCharacteristicRequests na_any:v10];

  return v8;
}

uint64_t __66__HMDLightProfileNaturalLightingAction_isActionForCharacteristic___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 characteristic];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HMDLightProfileNaturalLightingAction;
  [(HMDAction *)&v9 encodeWithCoder:coderCopy];
  if ([coderCopy hmd_isForXPCTransport])
  {
    lightProfile = [(HMDLightProfileNaturalLightingAction *)self lightProfile];
    [coderCopy encodeObject:lightProfile forKey:*MEMORY[0x277CD0770]];
  }

  else
  {
    lightProfileUUID = [(HMDLightProfileNaturalLightingAction *)self lightProfileUUID];
    [coderCopy encodeObject:lightProfileUUID forKey:*MEMORY[0x277CD07B8]];

    lightProfile = [(HMDLightProfileNaturalLightingAction *)self lightProfile];
    services = [lightProfile services];
    [coderCopy encodeObject:services forKey:*MEMORY[0x277CD2668]];
  }

  isNaturalLightingEnabled = [(HMDLightProfileNaturalLightingAction *)self isNaturalLightingEnabled];
  [coderCopy encodeBool:isNaturalLightingEnabled forKey:*MEMORY[0x277CD0788]];
}

- (HMDLightProfileNaturalLightingAction)initWithCoder:(id)coder
{
  v33 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [[HMDAction alloc] initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD07B8]];
    if (v6)
    {
      actionSet = [(HMDAction *)v5 actionSet];
      v8 = [coderCopy decodeBoolForKey:*MEMORY[0x277CD0788]];
      uuid = [(HMDAction *)v5 uuid];
      v10 = [(HMDLightProfileNaturalLightingAction *)self initWithUUID:uuid lightProfileUUID:v6 naturalLightingEnabled:v8 actionSet:actionSet];

      LODWORD(v8) = [coderCopy hmd_isForXPCTransport];
      hmd_isForXPCTransportEntitledForSPIAccess = [coderCopy hmd_isForXPCTransportEntitledForSPIAccess];
      if (!v8 || hmd_isForXPCTransportEntitledForSPIAccess)
      {
        v12 = MEMORY[0x277CBEB98];
        v28[0] = objc_opt_class();
        v28[1] = objc_opt_class();
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
        v14 = [v12 setWithArray:v13];
        v15 = [coderCopy decodeObjectOfClasses:v14 forKey:*MEMORY[0x277CD2668]];
        [(HMDLightProfileNaturalLightingAction *)v10 setLightServices:v15];
      }

      selfCopy2 = v10;

      v17 = selfCopy2;
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543618;
        v30 = v24;
        v31 = 2112;
        v32 = 0;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode, light profile UUID is: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      v17 = 0;
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v27.receiver = selfCopy2;
      v27.super_class = HMDLightProfileNaturalLightingAction;
      v21 = [(HMDLightProfileNaturalLightingAction *)&v27 class];
      *buf = 138543618;
      v30 = v20;
      v31 = 2112;
      v32 = v21;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode base class: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v17 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)isNaturalLightingEnabled
{
  os_unfair_lock_lock_with_options();
  naturalLightingEnabled = self->_naturalLightingEnabled;
  os_unfair_lock_unlock(&self->_lock);
  return naturalLightingEnabled;
}

- (void)setNaturalLightingEnabled:(BOOL)enabled
{
  os_unfair_lock_lock_with_options();
  self->_naturalLightingEnabled = enabled;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDLightProfile)lightProfile
{
  os_unfair_lock_lock_with_options();
  v3 = self->_lightProfile;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setLightProfile:(id)profile
{
  profileCopy = profile;
  os_unfair_lock_lock_with_options();
  lightProfile = self->_lightProfile;
  self->_lightProfile = profileCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)writeRequestForTransitionStartWithLightProfile:(id)profile startDate:(id)date type:(unint64_t)type
{
  dateCopy = date;
  profileCopy = profile;
  v10 = [HMDCharacteristicWriteRequest writeRequestForTransitionStartWithLightProfile:profileCopy naturalLightingEnabled:[(HMDLightProfileNaturalLightingAction *)self isNaturalLightingEnabled] startDate:dateCopy type:type];

  return v10;
}

- (id)associatedAccessories
{
  v7[1] = *MEMORY[0x277D85DE8];
  lightProfile = [(HMDLightProfileNaturalLightingAction *)self lightProfile];
  accessory = [lightProfile accessory];

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

- (BOOL)isCompatibleWithAction:(id)action
{
  actionCopy = action;
  v9.receiver = self;
  v9.super_class = HMDLightProfileNaturalLightingAction;
  if ([(HMDAction *)&v9 isCompatibleWithAction:actionCopy])
  {
    lightProfileUUID = [(HMDLightProfileNaturalLightingAction *)self lightProfileUUID];
    lightProfileUUID2 = [actionCopy lightProfileUUID];
    v7 = [lightProfileUUID isEqual:lightProfileUUID2];
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
  lightProfile = [(HMDLightProfileNaturalLightingAction *)self lightProfile];
  accessory = [lightProfile accessory];
  uuid2 = [accessory uuid];
  v8 = [uuid isEqual:uuid2];

  return v8;
}

- (HMDLightProfileNaturalLightingAction)initWithUUID:(id)d lightProfileUUID:(id)iD naturalLightingEnabled:(BOOL)enabled actionSet:(id)set notificationCenter:(id)center
{
  iDCopy = iD;
  setCopy = set;
  centerCopy = center;
  v23.receiver = self;
  v23.super_class = HMDLightProfileNaturalLightingAction;
  v15 = [(HMDAction *)&v23 initWithUUID:d actionSet:setCopy];
  v16 = v15;
  if (v15)
  {
    v15->_naturalLightingEnabled = enabled;
    v17 = [iDCopy copy];
    lightProfileUUID = v16->_lightProfileUUID;
    v16->_lightProfileUUID = v17;

    v16->_lock._os_unfair_lock_opaque = 0;
    home = [setCopy home];
    v20 = [home lightProfileWithUUID:iDCopy];
    lightProfile = v16->_lightProfile;
    v16->_lightProfile = v20;

    objc_storeStrong(&v16->_notificationCenter, center);
  }

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t31 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t31, &__block_literal_global_31_70585);
  }

  v3 = logCategory__hmf_once_v32;

  return v3;
}

uint64_t __51__HMDLightProfileNaturalLightingAction_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v32;
  logCategory__hmf_once_v32 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)actionWithDictionaryRepresentation:(id)representation home:(id)home
{
  v45 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  homeCopy = home;
  v8 = [representationCopy hmf_UUIDForKey:*MEMORY[0x277CD2060]];
  v9 = v8;
  if (v8)
  {
    uUID = v8;
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
  }

  v11 = uUID;

  v12 = *MEMORY[0x277CD2058];
  v13 = [representationCopy hmf_numberForKey:*MEMORY[0x277CD2058]];
  v14 = v13;
  if (!v13)
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543874;
      v40 = v25;
      v41 = 2112;
      v42 = representationCopy;
      v43 = 2112;
      v44 = v12;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Failed to create natural lighting action with dictionary representation mising key %@:%@", buf, 0x20u);
    }

    goto LABEL_16;
  }

  if ([v13 integerValue] != 3)
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      v28 = HMActionTypeAsString();
      *buf = 138543874;
      v40 = v27;
      v41 = 2112;
      v42 = representationCopy;
      v43 = 2112;
      v44 = v28;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Failed to create natural lighting action with dictionary representation invalid action type %@:%@", buf, 0x20u);
    }

LABEL_16:
    objc_autoreleasePoolPop(v22);
    v18 = 0;
    goto LABEL_25;
  }

  v15 = *MEMORY[0x277CD07B8];
  v16 = [representationCopy hmf_UUIDForKey:*MEMORY[0x277CD07B8]];
  if (v16)
  {
    v17 = [homeCopy lightProfileWithUUID:v16];
    if (v17)
    {
      v18 = -[HMDLightProfileNaturalLightingAction initWithUUID:lightProfileUUID:naturalLightingEnabled:actionSet:]([HMDLightProfileNaturalLightingAction alloc], "initWithUUID:lightProfileUUID:naturalLightingEnabled:actionSet:", v11, v16, [representationCopy hmf_BOOLForKey:*MEMORY[0x277CD0788]], 0);
      [(HMDLightProfileNaturalLightingAction *)v18 setLightProfile:v17];
      context = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v21 = v37 = v17;
        *buf = 138543874;
        v40 = v21;
        v41 = 2112;
        v42 = selfCopy3;
        v43 = 2112;
        v44 = v18;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Created natural lighting action with dictionary representation %@:%@", buf, 0x20u);

        v17 = v37;
      }
    }

    else
    {
      context = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543618;
        v40 = v34;
        v41 = 2112;
        v42 = v16;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Failed to create natural lighting action with dictionary representation light profile with UUID does not exisit: %@", buf, 0x16u);
      }

      v18 = 0;
    }

    objc_autoreleasePoolPop(context);
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543874;
      v40 = v32;
      v41 = 2112;
      v42 = representationCopy;
      v43 = 2112;
      v44 = v15;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Failed to create natural lighting action with dictionary representation missing key %@:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v29);
    v18 = 0;
  }

LABEL_25:
  v35 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)actionWithDictionaryRepresentation:(id)representation actionSet:(id)set
{
  v30 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  setCopy = set;
  home = [setCopy home];
  if (home)
  {
    v9 = [HMDLightProfileNaturalLightingAction actionWithDictionaryRepresentation:representationCopy home:home];
    if (v9)
    {
      v10 = [HMDLightProfileNaturalLightingAction alloc];
      uuid = [v9 uuid];
      lightProfileUUID = [v9 lightProfileUUID];
      v13 = -[HMDLightProfileNaturalLightingAction initWithUUID:lightProfileUUID:naturalLightingEnabled:actionSet:](v10, "initWithUUID:lightProfileUUID:naturalLightingEnabled:actionSet:", uuid, lightProfileUUID, [v9 isNaturalLightingEnabled], setCopy);
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      selfCopy = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v24 = 138543874;
        v25 = v21;
        v26 = 2112;
        v27 = setCopy;
        v28 = 2112;
        v29 = home;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Failed to create natural lighting action with dictionary representation and action set %@:%@", &v24, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
      v13 = 0;
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v24 = 138543874;
      v25 = v17;
      v26 = 2112;
      v27 = setCopy;
      v28 = 2112;
      v29 = 0;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Failed to create natural lighting action with dictionary representation, action set missing home %@:%@", &v24, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v13 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v13;
}

@end