@interface HMDLightProfileNaturalLightingAction
+ (id)actionWithDictionaryRepresentation:(id)a3 actionSet:(id)a4;
+ (id)actionWithDictionaryRepresentation:(id)a3 home:(id)a4;
+ (id)logCategory;
- (BOOL)isActionForCharacteristic:(id)a3;
- (BOOL)isAssociatedWithAccessory:(id)a3;
- (BOOL)isCompatibleWithAction:(id)a3;
- (BOOL)isNaturalLightingEnabled;
- (BOOL)isStaleWithAccessory:(id)a3;
- (HMDLightProfile)lightProfile;
- (HMDLightProfileNaturalLightingAction)initWithCoder:(id)a3;
- (HMDLightProfileNaturalLightingAction)initWithModelObject:(id)a3 parent:(id)a4 error:(id *)a5;
- (HMDLightProfileNaturalLightingAction)initWithUUID:(id)a3 lightProfileUUID:(id)a4 naturalLightingEnabled:(BOOL)a5 actionSet:(id)a6 notificationCenter:(id)a7;
- (id)associatedAccessories;
- (id)attributeDescriptions;
- (id)dictionaryRepresentation;
- (id)modelObjectWithChangeType:(unint64_t)a3 version:(int64_t)a4;
- (id)writeRequestForTransitionStartWithLightProfile:(id)a3 startDate:(id)a4 type:(unint64_t)a5;
- (void)configureWithHome:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)handleAccessoryProfileAddedNotification:(id)a3;
- (void)setLightProfile:(id)a3;
- (void)setNaturalLightingEnabled:(BOOL)a3;
- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
@end

@implementation HMDLightProfileNaturalLightingAction

- (id)attributeDescriptions
{
  v19[3] = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = HMDLightProfileNaturalLightingAction;
  v3 = [(HMDAction *)&v18 attributeDescriptions];
  v4 = [v3 mutableCopy];

  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v6 = [(HMDLightProfileNaturalLightingAction *)self lightProfileUUID];
  v7 = [v5 initWithName:@"Light Profile UUID" value:v6];
  v19[0] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  v9 = [(HMDLightProfileNaturalLightingAction *)self lightProfile];
  v10 = [v8 initWithName:@"Light Profile" value:v9];
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

- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v64 = *MEMORY[0x277D85DE8];
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
    v14 = [(HMDAction *)self actionSet];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 home];
      if (v16)
      {
        v17 = v16;
        v55 = v8;
        v18 = [v13 setProperties];
        v19 = [v18 containsObject:@"naturalLightingEnabledField"];

        v20 = objc_autoreleasePoolPush();
        v21 = self;
        v22 = HMFGetOSLogHandle();
        v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
        if (v19)
        {
          v53 = v10;
          if (v23)
          {
            v24 = HMFGetLogIdentifier();
            [(HMDLightProfileNaturalLightingAction *)v21 isNaturalLightingEnabled];
            v25 = HMFBooleanToString();
            [v13 isNaturalLightingEnabled];
            v26 = HMFBooleanToString();
            *buf = 138543874;
            v59 = v24;
            v60 = 2112;
            v61 = v25;
            v62 = 2112;
            v63 = v26;
            _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Updating natural lighting enabled from %@ to %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v20);
          -[HMDLightProfileNaturalLightingAction setNaturalLightingEnabled:](v21, "setNaturalLightingEnabled:", [v13 isNaturalLightingEnabled]);
          v56[0] = *MEMORY[0x277CD2060];
          v52 = [(HMDAction *)v21 uuid];
          v27 = [v52 UUIDString];
          v57[0] = v27;
          v56[1] = *MEMORY[0x277CD2028];
          v28 = [(HMDLightProfileNaturalLightingAction *)v21 dictionaryRepresentation];
          v57[1] = v28;
          v56[2] = *MEMORY[0x277CD0640];
          v29 = [v17 uuid];
          v30 = [v29 UUIDString];
          v57[2] = v30;
          v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:3];

          v10 = v53;
          [v53 respondWithPayload:v31];
          v32 = objc_autoreleasePoolPush();
          v33 = v21;
          v34 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            v35 = HMFGetLogIdentifier();
            *buf = 138543618;
            v59 = v35;
            v60 = 2112;
            v61 = v31;
            _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_DEBUG, "%{public}@Responding to client after updating action with response %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v32);
          v8 = v55;
        }

        else
        {
          v8 = v55;
          if (v23)
          {
            v49 = HMFGetLogIdentifier();
            [v13 setProperties];
            v50 = v54 = v10;
            *buf = 138543618;
            v59 = v49;
            v60 = 2112;
            v61 = v50;
            _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Ignoring update naturalLightingEnabledField property is not set: %@", buf, 0x16u);

            v10 = v54;
          }

          objc_autoreleasePoolPop(v20);
          [v10 respondWithSuccess];
        }
      }

      else
      {
        v44 = objc_autoreleasePoolPush();
        v45 = self;
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
          _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_ERROR, "%{public}@Failed to update action, action set missing home %@:%@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v44);
        v48 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [v10 respondWithError:v48];

        v17 = 0;
      }
    }

    else
    {
      v40 = objc_autoreleasePoolPush();
      v41 = self;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = HMFGetLogIdentifier();
        *buf = 138543618;
        v59 = v43;
        v60 = 2112;
        v61 = 0;
        _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_ERROR, "%{public}@Failed to update action, missing action set: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v40);
      v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [v10 respondWithError:v17];
    }
  }

  else
  {
    v36 = objc_autoreleasePoolPush();
    v37 = self;
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
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Ignoring update from object of unhandled type %@:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v36);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v10 respondWithError:v15];
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (id)modelObjectWithChangeType:(unint64_t)a3 version:(int64_t)a4
{
  v40 = *MEMORY[0x277D85DE8];
  if (a4 < 4)
  {
    v4 = 0;
    goto LABEL_14;
  }

  v8 = [(HMDAction *)self actionSet];
  if (!v8)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v34 = 138543874;
      v35 = v23;
      v36 = 2048;
      v37 = a4;
      v38 = 2112;
      v39 = 0;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to create model object for change type:%lu missing actionSet: %@", &v34, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
    v4 = 0;
    goto LABEL_13;
  }

  v9 = [HMDLightProfileNaturalLightingActionModel alloc];
  v10 = [(HMDAction *)self uuid];
  v11 = [v8 uuid];
  v4 = [(HMDBackingStoreModelObject *)v9 initWithObjectChangeType:a3 uuid:v10 parentUUID:v11];

  v12 = [(HMDLightProfileNaturalLightingAction *)self lightProfileUUID];
  [(HMDLightProfileNaturalLightingActionModel *)v4 setLightProfileUUID:v12];

  [(HMDLightProfileNaturalLightingActionModel *)v4 setNaturalLightingEnabled:[(HMDLightProfileNaturalLightingAction *)self isNaturalLightingEnabled]];
  v13 = [(HMDLightProfileNaturalLightingAction *)self lightProfile];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 accessory];
    v16 = [v15 uuid];
    [(HMDLightProfileNaturalLightingActionModel *)v4 setAccessoryUUID:v16];

    v17 = [v14 services];
    v18 = v17;
    v19 = &__block_literal_global_109221;
LABEL_11:
    v30 = [v17 na_map:v19];

    v31 = [MEMORY[0x277CBEB98] setWithArray:v30];
    [(HMDLightProfileNaturalLightingActionModel *)v4 setServiceUUIDs:v31];

    goto LABEL_12;
  }

  v24 = [(HMDLightProfileNaturalLightingAction *)self lightServices];
  v25 = [v24 count];

  if (v25)
  {
    v26 = [(HMDLightProfileNaturalLightingAction *)self lightServices];
    v27 = [v26 firstObject];
    v28 = [v27 accessory];
    v29 = [v28 uuid];
    [(HMDLightProfileNaturalLightingActionModel *)v4 setAccessoryUUID:v29];

    v17 = [(HMDLightProfileNaturalLightingAction *)self lightServices];
    v18 = v17;
    v19 = &__block_literal_global_26_109222;
    goto LABEL_11;
  }

LABEL_12:

LABEL_13:
LABEL_14:
  v32 = *MEMORY[0x277D85DE8];

  return v4;
}

- (HMDLightProfileNaturalLightingAction)initWithModelObject:(id)a3 parent:(id)a4 error:(id *)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = v8;
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
    v13 = v9;
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
      v16 = [v12 lightProfileUUID];
      if (v16)
      {
        v39 = v9;
        v17 = [v15 home];
        v18 = [v17 lightProfileWithUUID:v16];
        v19 = objc_autoreleasePoolPush();
        v20 = self;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543618;
          v42 = v22;
          v43 = 2112;
          v44 = v18;
          _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Creating natural lighting action with action model with light profile: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v19);
        v23 = [v12 uuid];
        v24 = -[HMDLightProfileNaturalLightingAction initWithUUID:lightProfileUUID:naturalLightingEnabled:actionSet:](v20, "initWithUUID:lightProfileUUID:naturalLightingEnabled:actionSet:", v23, v16, [v12 isNaturalLightingEnabled], v15);

        if (v18)
        {
          [(HMDLightProfileNaturalLightingAction *)v24 setLightProfile:v18];
        }

        else
        {
          [(HMDLightProfileNaturalLightingAction *)v24 configureWithHome:v17];
        }

        v9 = v39;
        v26 = v24;

        v29 = v26;
      }

      else
      {
        v33 = objc_autoreleasePoolPush();
        v26 = self;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v36 = v35 = v9;
          *buf = 138543618;
          v42 = v36;
          v43 = 2112;
          v44 = 0;
          _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Failed to create action, model is missing light profile UUID: %@", buf, 0x16u);

          v9 = v35;
        }

        objc_autoreleasePoolPop(v33);
        if (a5)
        {
          [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
          *a5 = v29 = 0;
        }

        else
        {
          v29 = 0;
        }
      }
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      v26 = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v32 = v40 = v9;
        *buf = 138543874;
        v42 = v32;
        v43 = 2112;
        v44 = v13;
        v45 = 2112;
        v46 = objc_opt_class();
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Failed to create action, model's parent is of invalid class %@:%@", buf, 0x20u);

        v9 = v40;
      }

      objc_autoreleasePoolPop(v30);
      if (a5)
      {
        [MEMORY[0x277CCA9B8] hmErrorWithCode:22];
        *a5 = v29 = 0;
      }

      else
      {
        v29 = 0;
      }
    }
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543874;
      v42 = v28;
      v43 = 2112;
      v44 = v10;
      v45 = 2112;
      v46 = objc_opt_class();
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to create action, model is of invalid class %@:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v25);
    if (a5)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:22];
      *a5 = v29 = 0;
    }

    else
    {
      v29 = 0;
    }
  }

  v37 = *MEMORY[0x277D85DE8];
  return v29;
}

- (void)handleAccessoryProfileAddedNotification:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 lightProfiles];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __80__HMDLightProfileNaturalLightingAction_handleAccessoryProfileAddedNotification___block_invoke;
    v22[3] = &unk_2786782C8;
    v22[4] = self;
    v9 = [v8 na_firstObjectPassingTest:v22];

    if (v9)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v14 = [v4 name];
        *buf = 138543874;
        v24 = v13;
        v25 = 2112;
        v26 = v14;
        v27 = 2112;
        v28 = v9;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Handling accessory profile update notification: %@, updating light profile to: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      [(HMDLightProfileNaturalLightingAction *)v11 setLightProfile:v9];
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [v4 name];
      v20 = [v4 object];
      *buf = 138544130;
      v24 = v18;
      v25 = 2112;
      v26 = v19;
      v27 = 2112;
      v28 = v20;
      v29 = 2112;
      v30 = objc_opt_class();
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Accessory profile update notification: %@ is sent by object: %@ which is not of type %@", buf, 0x2Au);
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

- (void)configureWithHome:(id)a3
{
  v4 = a3;
  v5 = [(HMDLightProfileNaturalLightingAction *)self notificationCenter];
  [v5 removeObserver:self];

  v6 = [(HMDLightProfileNaturalLightingAction *)self notificationCenter];
  [v6 addObserver:self selector:sel_handleAccessoryProfileAddedNotification_ name:@"HMDAccessoryProfileAddedNotification" object:0];

  v8 = [(HMDLightProfileNaturalLightingAction *)self lightProfileUUID];
  v7 = [v4 lightProfileWithUUID:v8];

  [(HMDLightProfileNaturalLightingAction *)self setLightProfile:v7];
}

- (id)dictionaryRepresentation
{
  v10.receiver = self;
  v10.super_class = HMDLightProfileNaturalLightingAction;
  v3 = [(HMDAction *)&v10 dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  v5 = [(HMDLightProfileNaturalLightingAction *)self lightProfileUUID];
  v6 = [v5 UUIDString];
  [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x277CD07B8]];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDLightProfileNaturalLightingAction isNaturalLightingEnabled](self, "isNaturalLightingEnabled")}];
  [v4 setObject:v7 forKeyedSubscript:*MEMORY[0x277CD0788]];

  v8 = [v4 copy];

  return v8;
}

- (BOOL)isActionForCharacteristic:(id)a3
{
  v4 = a3;
  v5 = [(HMDLightProfileNaturalLightingAction *)self lightProfile];
  v6 = [v5 readCharacteristicRequests];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__HMDLightProfileNaturalLightingAction_isActionForCharacteristic___block_invoke;
  v10[3] = &unk_278689280;
  v11 = v4;
  v7 = v4;
  v8 = [v6 na_any:v10];

  return v8;
}

uint64_t __66__HMDLightProfileNaturalLightingAction_isActionForCharacteristic___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 characteristic];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMDLightProfileNaturalLightingAction;
  [(HMDAction *)&v9 encodeWithCoder:v4];
  if ([v4 hmd_isForXPCTransport])
  {
    v5 = [(HMDLightProfileNaturalLightingAction *)self lightProfile];
    [v4 encodeObject:v5 forKey:*MEMORY[0x277CD0770]];
  }

  else
  {
    v6 = [(HMDLightProfileNaturalLightingAction *)self lightProfileUUID];
    [v4 encodeObject:v6 forKey:*MEMORY[0x277CD07B8]];

    v5 = [(HMDLightProfileNaturalLightingAction *)self lightProfile];
    v7 = [v5 services];
    [v4 encodeObject:v7 forKey:*MEMORY[0x277CD2668]];
  }

  v8 = [(HMDLightProfileNaturalLightingAction *)self isNaturalLightingEnabled];
  [v4 encodeBool:v8 forKey:*MEMORY[0x277CD0788]];
}

- (HMDLightProfileNaturalLightingAction)initWithCoder:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[HMDAction alloc] initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD07B8]];
    if (v6)
    {
      v7 = [(HMDAction *)v5 actionSet];
      v8 = [v4 decodeBoolForKey:*MEMORY[0x277CD0788]];
      v9 = [(HMDAction *)v5 uuid];
      v10 = [(HMDLightProfileNaturalLightingAction *)self initWithUUID:v9 lightProfileUUID:v6 naturalLightingEnabled:v8 actionSet:v7];

      LODWORD(v8) = [v4 hmd_isForXPCTransport];
      v11 = [v4 hmd_isForXPCTransportEntitledForSPIAccess];
      if (!v8 || v11)
      {
        v12 = MEMORY[0x277CBEB98];
        v28[0] = objc_opt_class();
        v28[1] = objc_opt_class();
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
        v14 = [v12 setWithArray:v13];
        v15 = [v4 decodeObjectOfClasses:v14 forKey:*MEMORY[0x277CD2668]];
        [(HMDLightProfileNaturalLightingAction *)v10 setLightServices:v15];
      }

      v16 = v10;

      v17 = v16;
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v16 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543618;
        v30 = v24;
        v31 = 2112;
        v32 = 0;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode, light profile UUID is: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      v17 = 0;
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v16 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v27.receiver = v16;
      v27.super_class = HMDLightProfileNaturalLightingAction;
      v21 = [(HMDLightProfileNaturalLightingAction *)&v27 class];
      *buf = 138543618;
      v30 = v20;
      v31 = 2112;
      v32 = v21;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode base class: %@", buf, 0x16u);
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

- (void)setNaturalLightingEnabled:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_naturalLightingEnabled = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDLightProfile)lightProfile
{
  os_unfair_lock_lock_with_options();
  v3 = self->_lightProfile;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setLightProfile:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  lightProfile = self->_lightProfile;
  self->_lightProfile = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)writeRequestForTransitionStartWithLightProfile:(id)a3 startDate:(id)a4 type:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [HMDCharacteristicWriteRequest writeRequestForTransitionStartWithLightProfile:v9 naturalLightingEnabled:[(HMDLightProfileNaturalLightingAction *)self isNaturalLightingEnabled] startDate:v8 type:a5];

  return v10;
}

- (id)associatedAccessories
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [(HMDLightProfileNaturalLightingAction *)self lightProfile];
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

- (BOOL)isStaleWithAccessory:(id)a3
{
  v4 = a3;
  v5 = [(HMDLightProfileNaturalLightingAction *)self lightProfile];
  v6 = [v5 accessory];
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

  if ([v8 supportsCHIP])
  {
    v9 = 0;
  }

  else
  {
    v10 = [v8 uuid];
    v11 = [v4 uuid];
    if ([v10 isEqual:v11])
    {
      v12 = [v5 readCharacteristicRequests];
      v9 = [v12 hmf_isEmpty];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (BOOL)isCompatibleWithAction:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMDLightProfileNaturalLightingAction;
  if ([(HMDAction *)&v9 isCompatibleWithAction:v4])
  {
    v5 = [(HMDLightProfileNaturalLightingAction *)self lightProfileUUID];
    v6 = [v4 lightProfileUUID];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isAssociatedWithAccessory:(id)a3
{
  v4 = [a3 uuid];
  v5 = [(HMDLightProfileNaturalLightingAction *)self lightProfile];
  v6 = [v5 accessory];
  v7 = [v6 uuid];
  v8 = [v4 isEqual:v7];

  return v8;
}

- (HMDLightProfileNaturalLightingAction)initWithUUID:(id)a3 lightProfileUUID:(id)a4 naturalLightingEnabled:(BOOL)a5 actionSet:(id)a6 notificationCenter:(id)a7
{
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v23.receiver = self;
  v23.super_class = HMDLightProfileNaturalLightingAction;
  v15 = [(HMDAction *)&v23 initWithUUID:a3 actionSet:v13];
  v16 = v15;
  if (v15)
  {
    v15->_naturalLightingEnabled = a5;
    v17 = [v12 copy];
    lightProfileUUID = v16->_lightProfileUUID;
    v16->_lightProfileUUID = v17;

    v16->_lock._os_unfair_lock_opaque = 0;
    v19 = [v13 home];
    v20 = [v19 lightProfileWithUUID:v12];
    lightProfile = v16->_lightProfile;
    v16->_lightProfile = v20;

    objc_storeStrong(&v16->_notificationCenter, a7);
  }

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t31_109258 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t31_109258, &__block_literal_global_31_109259);
  }

  v3 = logCategory__hmf_once_v32_109260;

  return v3;
}

void __51__HMDLightProfileNaturalLightingAction_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v32_109260;
  logCategory__hmf_once_v32_109260 = v1;
}

+ (id)actionWithDictionaryRepresentation:(id)a3 home:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 hmf_UUIDForKey:*MEMORY[0x277CD2060]];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [MEMORY[0x277CCAD78] UUID];
  }

  v11 = v10;

  v12 = *MEMORY[0x277CD2058];
  v13 = [v6 hmf_numberForKey:*MEMORY[0x277CD2058]];
  v14 = v13;
  if (!v13)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = a1;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543874;
      v40 = v25;
      v41 = 2112;
      v42 = v6;
      v43 = 2112;
      v44 = v12;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Failed to create natural lighting action with dictionary representation mising key %@:%@", buf, 0x20u);
    }

    goto LABEL_16;
  }

  if ([v13 integerValue] != 3)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = a1;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      v28 = HMActionTypeAsString();
      *buf = 138543874;
      v40 = v27;
      v41 = 2112;
      v42 = v6;
      v43 = 2112;
      v44 = v28;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Failed to create natural lighting action with dictionary representation invalid action type %@:%@", buf, 0x20u);
    }

LABEL_16:
    objc_autoreleasePoolPop(v22);
    v18 = 0;
    goto LABEL_25;
  }

  v15 = *MEMORY[0x277CD07B8];
  v16 = [v6 hmf_UUIDForKey:*MEMORY[0x277CD07B8]];
  if (v16)
  {
    v17 = [v7 lightProfileWithUUID:v16];
    if (v17)
    {
      v18 = -[HMDLightProfileNaturalLightingAction initWithUUID:lightProfileUUID:naturalLightingEnabled:actionSet:]([HMDLightProfileNaturalLightingAction alloc], "initWithUUID:lightProfileUUID:naturalLightingEnabled:actionSet:", v11, v16, [v6 hmf_BOOLForKey:*MEMORY[0x277CD0788]], 0);
      [(HMDLightProfileNaturalLightingAction *)v18 setLightProfile:v17];
      context = objc_autoreleasePoolPush();
      v19 = a1;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v21 = v37 = v17;
        *buf = 138543874;
        v40 = v21;
        v41 = 2112;
        v42 = v19;
        v43 = 2112;
        v44 = v18;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Created natural lighting action with dictionary representation %@:%@", buf, 0x20u);

        v17 = v37;
      }
    }

    else
    {
      context = objc_autoreleasePoolPush();
      v33 = a1;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543618;
        v40 = v34;
        v41 = 2112;
        v42 = v16;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Failed to create natural lighting action with dictionary representation light profile with UUID does not exisit: %@", buf, 0x16u);
      }

      v18 = 0;
    }

    objc_autoreleasePoolPop(context);
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    v30 = a1;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543874;
      v40 = v32;
      v41 = 2112;
      v42 = v6;
      v43 = 2112;
      v44 = v15;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Failed to create natural lighting action with dictionary representation missing key %@:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v29);
    v18 = 0;
  }

LABEL_25:
  v35 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)actionWithDictionaryRepresentation:(id)a3 actionSet:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 home];
  if (v8)
  {
    v9 = [HMDLightProfileNaturalLightingAction actionWithDictionaryRepresentation:v6 home:v8];
    if (v9)
    {
      v10 = [HMDLightProfileNaturalLightingAction alloc];
      v11 = [v9 uuid];
      v12 = [v9 lightProfileUUID];
      v13 = -[HMDLightProfileNaturalLightingAction initWithUUID:lightProfileUUID:naturalLightingEnabled:actionSet:](v10, "initWithUUID:lightProfileUUID:naturalLightingEnabled:actionSet:", v11, v12, [v9 isNaturalLightingEnabled], v7);
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      v19 = a1;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v24 = 138543874;
        v25 = v21;
        v26 = 2112;
        v27 = v7;
        v28 = 2112;
        v29 = v8;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Failed to create natural lighting action with dictionary representation and action set %@:%@", &v24, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
      v13 = 0;
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = a1;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v24 = 138543874;
      v25 = v17;
      v26 = 2112;
      v27 = v7;
      v28 = 2112;
      v29 = 0;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Failed to create natural lighting action with dictionary representation, action set missing home %@:%@", &v24, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v13 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v13;
}

@end