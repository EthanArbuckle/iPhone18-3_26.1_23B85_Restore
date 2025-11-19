@interface HMDMediaPlaybackAction
+ (BOOL)isPlaybackActionValidWithProfiles:(id)a3 state:(int64_t)a4 volume:(id)a5;
+ (HMDMediaPlaybackAction)actionWithDictionaryRepresentation:(id)a3 home:(id)a4;
+ (id)logCategory;
- (BOOL)isAssociatedWithAccessory:(id)a3;
- (BOOL)isCompatibleWithAction:(id)a3;
- (HMDHome)home;
- (HMDMediaPlaybackAction)initWithCoder:(id)a3;
- (HMDMediaPlaybackAction)initWithModelObject:(id)a3 parent:(id)a4 error:(id *)a5;
- (HMDMediaPlaybackAction)initWithUUID:(id)a3 mediaProfiles:(id)a4 playbackState:(int64_t)a5 volume:(id)a6 playbackArchive:(id)a7 actionSet:(id)a8;
- (HMDMediaPlaybackActionAsCharacteristicWriteRequests)convertedCharacteristicWriteRequests;
- (NSString)description;
- (id)associatedAccessories;
- (id)dictionaryRepresentation;
- (id)modelObjectWithChangeType:(unint64_t)a3 version:(int64_t)a4;
- (id)modelObjectWithUpdatedMediaProfiles:(id)a3;
- (id)stateDump;
- (id)validate;
- (void)_processPlaybackActionModelUpdated:(id)a3 message:(id)a4;
- (void)configureWithHome:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithSource:(unint64_t)a3 clientName:(id)a4 completionHandler:(id)a5;
- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
@end

@implementation HMDMediaPlaybackAction

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)modelObjectWithUpdatedMediaProfiles:(id)a3
{
  v4 = a3;
  v5 = [(HMDAction *)self modelObjectWithChangeType:2];
  if (v5)
  {
    v6 = [(HMDMediaPlaybackAction *)self home];
    if (!v6)
    {
      v7 = [(HMDAction *)self actionSet];
      v6 = [v7 home];
    }

    v8 = __mapProfilesToProfileUUIDs(v4);
    [v5 setProfiles:v8];
    v9 = mapProfilesToAccessoryUUIDs(v6, v8);
    [v5 setAccessories:v9];

    v10 = mapProfilesToServiceUUIDs(v6, v8);
    [v5 setServices:v10];

    v11 = v5;
  }

  return v5;
}

- (id)modelObjectWithChangeType:(unint64_t)a3 version:(int64_t)a4
{
  if (a4 < 4)
  {
    v10 = 0;
  }

  else
  {
    v6 = [(HMDAction *)self actionSet];
    v7 = [HMDMediaPlaybackActionModel alloc];
    v8 = [(HMDAction *)self uuid];
    v9 = [v6 uuid];
    v10 = [(HMDBackingStoreModelObject *)v7 initWithObjectChangeType:a3 uuid:v8 parentUUID:v9];

    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDMediaPlaybackAction state](self, "state")}];
    [(HMDMediaPlaybackActionModel *)v10 setState:v11];

    v12 = [(HMDMediaPlaybackAction *)self volume];
    [(HMDMediaPlaybackActionModel *)v10 setVolume:v12];

    v13 = [(HMDMediaPlaybackAction *)self home];
    if (!v13)
    {
      v13 = [v6 home];
    }

    v14 = [(HMDMediaPlaybackAction *)self profileUUIDs];
    v15 = [v14 copy];
    [(HMDMediaPlaybackActionModel *)v10 setProfiles:v15];

    v16 = [(HMDMediaPlaybackAction *)self profileUUIDs];
    v17 = mapProfilesToAccessoryUUIDs(v13, v16);
    [(HMDMediaPlaybackActionModel *)v10 setAccessories:v17];

    v18 = [(HMDMediaPlaybackAction *)self profileUUIDs];
    v19 = mapProfilesToServiceUUIDs(v13, v18);
    [(HMDMediaPlaybackActionModel *)v10 setServices:v19];

    v20 = [(HMDMediaPlaybackAction *)self playbackArchive];
    [(HMDMediaPlaybackActionModel *)v10 setEncodedPlaybackArchive:v20];
  }

  return v10;
}

- (HMDMediaPlaybackAction)initWithModelObject:(id)a3 parent:(id)a4 error:(id *)a5
{
  v55 = *MEMORY[0x277D85DE8];
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
      v16 = [v15 home];
      v17 = [v12 profiles];
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __59__HMDMediaPlaybackAction_initWithModelObject_parent_error___block_invoke;
      v47[3] = &unk_278686D38;
      v18 = v16;
      v48 = v18;
      v19 = [v17 na_map:v47];

      if ([v19 count])
      {
        v43 = v19;
        v45 = v15;
        v42 = v18;
        v20 = [v19 count];
        v21 = [v12 profiles];
        v22 = [v21 count];

        if (v20 != v22)
        {
          v23 = objc_autoreleasePoolPush();
          v24 = self;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = HMFGetLogIdentifier();
            v27 = [v12 profiles];
            *buf = 138543874;
            v50 = v26;
            v51 = 2112;
            v52 = v43;
            v53 = 2112;
            v54 = v27;
            _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Couldn't find all media profiles on the home, found: %@ from UUIDs: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v23);
        }

        v28 = [v12 uuid];
        v29 = [v12 state];
        v30 = [v29 integerValue];
        v31 = [v12 volume];
        [v12 encodedPlaybackArchive];
        v33 = v32 = v9;
        v19 = v43;
        self = [(HMDMediaPlaybackAction *)self initWithUUID:v28 mediaProfiles:v43 playbackState:v30 volume:v31 playbackArchive:v33 actionSet:v45];

        v9 = v32;
        v15 = v45;

        v34 = self;
        v18 = v42;
      }

      else
      {
        v35 = objc_autoreleasePoolPush();
        self = self;
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v37 = v44 = v35;
          [v12 profiles];
          v46 = v15;
          v39 = v38 = v19;
          *buf = 138543618;
          v50 = v37;
          v51 = 2112;
          v52 = v39;
          _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@Couldn't find any media profiles in the home for the UUIDs: %@", buf, 0x16u);

          v19 = v38;
          v15 = v46;

          v35 = v44;
        }

        objc_autoreleasePoolPop(v35);
        if (a5)
        {
          [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
          *a5 = v34 = 0;
        }

        else
        {
          v34 = 0;
        }
      }
    }

    else if (a5)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      *a5 = v34 = 0;
    }

    else
    {
      v34 = 0;
    }
  }

  else if (a5)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:22];
    *a5 = v34 = 0;
  }

  else
  {
    v34 = 0;
  }

  v40 = *MEMORY[0x277D85DE8];
  return v34;
}

id __59__HMDMediaPlaybackAction_initWithModelObject_parent_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAD78];
  v4 = a2;
  v5 = [[v3 alloc] initWithUUIDString:v4];

  v6 = [*(a1 + 32) mediaProfileWithUUID:v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = HMDMediaPlaybackAction;
  [(HMDAction *)&v25 encodeWithCoder:v4];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDMediaPlaybackAction state](self, "state")}];
  [v4 encodeObject:v5 forKey:*MEMORY[0x277CD08A8]];

  v6 = [(HMDMediaPlaybackAction *)self volume];
  [v4 encodeObject:v6 forKey:*MEMORY[0x277CD08B8]];

  v7 = [(HMDMediaPlaybackAction *)self playbackArchive];
  [v4 encodeObject:v7 forKey:*MEMORY[0x277CD0888]];

  if ([v4 hmd_isForXPCTransport])
  {
    v8 = [(HMDMediaPlaybackAction *)self mediaProfiles];
    [v4 encodeObject:v8 forKey:*MEMORY[0x277CD0898]];

    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [(HMDAction *)v10 uuid];
      v14 = [v13 UUIDString];
      v15 = [(HMDMediaPlaybackAction *)v10 state];
      v16 = [(HMDMediaPlaybackAction *)v10 mediaProfiles];
      v17 = [(HMDMediaPlaybackAction *)v10 playbackArchive];
      *buf = 138544386;
      v27 = v12;
      v28 = 2112;
      v29 = v14;
      v30 = 2048;
      v31 = v15;
      v32 = 2112;
      v33 = v16;
      v34 = 2112;
      v35 = v17;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@XPC Encoded Playback action uuid %@ state %tu profiles %@ playbackArchive %@", buf, 0x34u);

LABEL_6:
    }
  }

  else
  {
    v18 = [(HMDMediaPlaybackAction *)self profileUUIDs];
    [v4 encodeObject:v18 forKey:@"HDMPA.profileUUIDs"];

    v9 = objc_autoreleasePoolPush();
    v19 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v20 = [(HMDAction *)v19 uuid];
      v21 = [v20 UUIDString];
      v22 = [(HMDMediaPlaybackAction *)v19 state];
      v23 = [(HMDMediaPlaybackAction *)v19 profileUUIDs];
      *buf = 138544130;
      v27 = v12;
      v28 = 2112;
      v29 = v21;
      v30 = 2048;
      v31 = v22;
      v32 = 2112;
      v33 = v23;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Cloud Encoded Playback action uuid %@ state %tu profiles %@", buf, 0x2Au);

      goto LABEL_6;
    }
  }

  objc_autoreleasePoolPop(v9);
  v24 = *MEMORY[0x277D85DE8];
}

- (HMDMediaPlaybackAction)initWithCoder:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[HMDAction alloc] initWithCoder:v4];
  if (v5)
  {
    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD08A8]];
    v25 = [v26 integerValue];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD08B8]];
    v7 = MEMORY[0x277CBEB98];
    v28[0] = objc_opt_class();
    v28[1] = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
    v9 = [v7 setWithArray:v8];

    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"HDMPA.profileUUIDs"];
    v11 = [v10 mutableCopy];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD0888]];
    v13 = [(HMDAction *)v5 actionSet];
    v14 = [(HMDAction *)v5 uuid];
    v15 = [MEMORY[0x277CBEB98] set];
    v16 = [(HMDMediaPlaybackAction *)self initWithUUID:v14 mediaProfiles:v15 playbackState:v25 volume:v6 playbackArchive:v12 actionSet:v13];

    [(HMDMediaPlaybackAction *)v16 setProfileUUIDs:v11];
    v17 = v16;

    v18 = v17;
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v17 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v27.receiver = v17;
      v27.super_class = HMDMediaPlaybackAction;
      v22 = [(HMDMediaPlaybackAction *)&v27 class];
      *buf = 138543618;
      v30 = v21;
      v31 = 2112;
      v32 = v22;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode base class: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v18 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)_processPlaybackActionModelUpdated:(id)a3 message:(id)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 transactionResult];
  v9 = [v6 setProperties];
  v10 = [v9 containsObject:@"state"];

  if (v10)
  {
    v11 = [v6 state];
    -[HMDMediaPlaybackAction setState:](self, "setState:", [v11 integerValue]);
  }

  v12 = [v6 setProperties];
  v13 = [v12 containsObject:@"volume"];

  if (v13)
  {
    v14 = [v6 volume];
    [(HMDMediaPlaybackAction *)self setVolume:v14];

    v10 = 1;
  }

  v15 = [v6 setProperties];
  v16 = [v15 containsObject:@"encodedPlaybackArchive"];

  if (v16)
  {
    v17 = [v6 encodedPlaybackArchive];
    [(HMDMediaPlaybackAction *)self setPlaybackArchive:v17];

    v10 = 1;
  }

  v18 = [v6 setProperties];
  v19 = [v18 containsObject:@"profiles"];

  if (v19)
  {
    v20 = [(HMDMediaPlaybackAction *)self home];
    v21 = [v6 profiles];
    v22 = __mapUUIDsToProfiles(v20, v21);
    [(HMDMediaPlaybackAction *)self setMediaProfiles:v22];

    v23 = [v6 profiles];
    v24 = [v23 mutableCopy];
    [(HMDMediaPlaybackAction *)self setProfileUUIDs:v24];
  }

  else if (!v10)
  {
    v25 = 0;
    goto LABEL_17;
  }

  v25 = [(HMDAction *)self actionSet];
  v26 = [v25 home];
  v27 = v26;
  if (v25 && v26)
  {
    v47[0] = *MEMORY[0x277CD2060];
    v46 = [(HMDAction *)self uuid];
    v28 = [v46 UUIDString];
    v48[0] = v28;
    v47[1] = *MEMORY[0x277CD2028];
    v29 = [(HMDMediaPlaybackAction *)self dictionaryRepresentation];
    v48[1] = v29;
    v47[2] = *MEMORY[0x277CD0640];
    [v27 uuid];
    v31 = v30 = v8;
    [v31 UUIDString];
    v45 = v27;
    v33 = v32 = v7;
    v48[2] = v33;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:3];

    v7 = v32;
    v8 = v30;

    v25 = v34;
LABEL_17:
    [v7 respondWithPayload:v25];
    v40 = objc_autoreleasePoolPush();
    v41 = self;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      v43 = HMFGetLogIdentifier();
      *buf = 138543618;
      v50 = v43;
      v51 = 2112;
      v52 = v25;
      _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_DEBUG, "%{public}@Responding to client after updating action with response: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v40);
    [v8 markChanged];
    goto LABEL_20;
  }

  v35 = objc_autoreleasePoolPush();
  v36 = self;
  v37 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    v38 = HMFGetLogIdentifier();
    *buf = 138544130;
    v50 = v38;
    v51 = 2112;
    v52 = v6;
    v53 = 2112;
    v54 = v25;
    v55 = 2112;
    v56 = v27;
    _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Playback action Model object (%@) missing actionset %@ or home %@ ", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v35);
  v39 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  [v7 respondWithError:v39];

LABEL_20:
  v44 = *MEMORY[0x277D85DE8];
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
    [(HMDMediaPlaybackAction *)self _processPlaybackActionModelUpdated:v13 message:v10];
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
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectUpdated]", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v10 respondWithError:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)associatedAccessories
{
  v2 = [(HMDMediaPlaybackAction *)self mediaProfiles];
  v3 = [v2 na_map:&__block_literal_global_38_259149];
  v4 = [v3 allObjects];

  return v4;
}

- (BOOL)isCompatibleWithAction:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMDMediaPlaybackAction;
  if ([(HMDAction *)&v9 isCompatibleWithAction:v4])
  {
    v5 = [(HMDMediaPlaybackAction *)self mediaProfiles];
    v6 = [v4 mediaProfiles];
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
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 home];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(HMDMediaPlaybackAction *)self profileUUIDs];
  v7 = [v6 copy];
  v8 = mapProfilesToAccessoryUUIDs(v5, v7);

  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v4 uuid];
        v14 = [v13 UUIDString];
        LOBYTE(v12) = [v12 isEqualToString:v14];

        if (v12)
        {
          LOBYTE(v9) = 1;
          goto LABEL_11;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

- (NSString)description
{
  v3 = [(HMDMediaPlaybackAction *)self mediaProfiles];
  v4 = [v3 na_map:&__block_literal_global_259152];
  v5 = [v4 allObjects];
  v6 = [v5 componentsJoinedByString:{@", \n"}];

  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [(HMDAction *)self uuid];
  v11 = [(HMDMediaPlaybackAction *)self state];
  v12 = [(HMDMediaPlaybackAction *)self volume];
  v13 = [(HMDMediaPlaybackAction *)self playbackArchive];
  v14 = [v7 stringWithFormat:@"%@<uuid %@ play state %ld volume %@ playbackArchive %@ mediaProfiles {%@}>", v9, v10, v11, v12, v13, v6];

  return v14;
}

- (HMDMediaPlaybackActionAsCharacteristicWriteRequests)convertedCharacteristicWriteRequests
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = [(HMDMediaPlaybackAction *)self playbackArchive];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(HMDMediaPlaybackAction *)self mediaProfiles];
    v6 = [v5 allObjects];

    v37 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v6, "count")}];
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{2 * objc_msgSend(v6, "count")}];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v39;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v39 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v38 + 1) + 8 * i);
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
            if ([(HMDMediaPlaybackAction *)self state])
            {
              v16 = [v15 playStateWriteRequestWithPlaybackState:{-[HMDMediaPlaybackAction state](self, "state")}];
              if (v16)
              {
                [v7 addObject:v16];
              }
            }

            v17 = [(HMDMediaPlaybackAction *)self volume];

            if (v17)
            {
              v18 = [(HMDMediaPlaybackAction *)self volume];
              [v18 floatValue];
              v20 = v19 / 100.0;

              *&v21 = v20;
              [MEMORY[0x277CCABB0] numberWithFloat:v21];
              v23 = v22 = v7;
              v24 = [v15 volumeWriteRequestWithVolumePercentage:v23];

              v7 = v22;
              if (v24)
              {
                [v22 addObject:v24];
              }
            }
          }

          else
          {
            [v37 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v10);
    }

    if ([v7 count])
    {
      v25 = v37;
      if ([v37 count])
      {
        v26 = [HMDMediaPlaybackAction alloc];
        v27 = [(HMDAction *)self uuid];
        v28 = [(HMDMediaPlaybackAction *)self state];
        [(HMDMediaPlaybackAction *)self volume];
        v30 = v29 = v7;
        v31 = [(HMDMediaPlaybackAction *)self playbackArchive];
        v32 = [(HMDAction *)self actionSet];
        v33 = [(HMDMediaPlaybackAction *)v26 initWithUUID:v27 mediaProfiles:v37 playbackState:v28 volume:v30 playbackArchive:v31 actionSet:v32];

        v7 = v29;
        v34 = [(HMDMediaPlaybackAction *)self home];
        [(HMDMediaPlaybackAction *)v33 configureWithHome:v34];
      }

      else
      {
        v33 = 0;
      }

      v4 = [[HMDMediaPlaybackActionAsCharacteristicWriteRequests alloc] initWithAction:v33 characteristicWriteRequests:v7];
    }

    else
    {
      v4 = 0;
      v25 = v37;
    }
  }

  v35 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)validate
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(HMDMediaPlaybackAction *)self mediaProfiles];
  v4 = [(HMDMediaPlaybackAction *)self state];
  v5 = [(HMDMediaPlaybackAction *)self volume];
  v6 = [HMDMediaPlaybackAction isPlaybackActionValidWithProfiles:v3 state:v4 volume:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [(HMDMediaPlaybackAction *)v9 state];
      v13 = [(HMDMediaPlaybackAction *)v9 volume];
      v14 = [(HMDMediaPlaybackAction *)v9 mediaProfiles];
      v17 = 138544130;
      v18 = v11;
      v19 = 2048;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      v23 = 2048;
      v24 = [v14 count];
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Invalid configuration for media playback action - state: %tu  volume: %@  #Profiles: %tu", &v17, 0x2Au);
    }

    objc_autoreleasePoolPop(v8);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"Invalid configuration for media playback action" reason:0 suggestion:0];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)executeWithSource:(unint64_t)a3 clientName:(id)a4 completionHandler:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [(HMDMediaPlaybackAction *)self home];
  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Executing media playback action", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    objc_initWeak(buf, v12);
    v15 = [v10 mediaActionRouter];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __73__HMDMediaPlaybackAction_executeWithSource_clientName_completionHandler___block_invoke;
    v18[3] = &unk_278686D60;
    objc_copyWeak(&v20, buf);
    v19 = v9;
    [v15 routeMediaActionForExecution:v12 source:a3 clientName:v8 completion:v18];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  else if (v9)
  {
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
    (*(v9 + 2))(v9, v16);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __73__HMDMediaPlaybackAction_executeWithSource_clientName_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v3)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v9 = HMFGetLogIdentifier();
    v16 = 138543874;
    v17 = v9;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v3;
    v10 = "%{public}@Failed to execute %@ with error: %@";
    v11 = v8;
    v12 = OS_LOG_TYPE_ERROR;
    v13 = 32;
  }

  else
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v9 = HMFGetLogIdentifier();
    v16 = 138543618;
    v17 = v9;
    v18 = 2112;
    v19 = v6;
    v10 = "%{public}@Successfully executed %@";
    v11 = v8;
    v12 = OS_LOG_TYPE_DEFAULT;
    v13 = 22;
  }

  _os_log_impl(&dword_229538000, v11, v12, v10, &v16, v13);

LABEL_7:
  objc_autoreleasePoolPop(v5);
  v14 = *(a1 + 32);
  if (v14)
  {
    (*(v14 + 16))(v14, v3);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)dictionaryRepresentation
{
  v28 = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = HMDMediaPlaybackAction;
  v3 = [(HMDAction *)&v23 dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDMediaPlaybackAction state](self, "state")}];
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277CD08B0]];

  v6 = [(HMDMediaPlaybackAction *)self volume];
  [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x277CD08C0]];

  v7 = [(HMDMediaPlaybackAction *)self mediaProfiles];
  v8 = __mapProfilesToProfileUUIDs(v7);
  v9 = [v8 allObjects];
  [v4 setObject:v9 forKeyedSubscript:*MEMORY[0x277CD08A0]];

  v10 = [(HMDMediaPlaybackAction *)self playbackArchive];

  if (v10)
  {
    v11 = MEMORY[0x277CCAAB0];
    v12 = [(HMDMediaPlaybackAction *)self playbackArchive];
    v22 = 0;
    v13 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v22];
    v14 = v22;

    if (v13)
    {
      [v4 setObject:v13 forKeyedSubscript:*MEMORY[0x277CD0890]];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        v25 = v18;
        v26 = 2112;
        v27 = v14;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Couldn't encode playbackArchive: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  v19 = [v4 copy];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)stateDump
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  v4 = [(HMDAction *)self uuid];
  v5 = [v4 UUIDString];
  v6 = [(HMDMediaPlaybackAction *)self state];
  v7 = [(HMDMediaPlaybackAction *)self volume];
  v8 = [(HMDMediaPlaybackAction *)self playbackArchive];
  v9 = [(HMDMediaPlaybackAction *)self profileUUIDs];
  v10 = [v3 stringWithFormat:@"Action uuid: %@, state: %tu, volume: %@, playbackArchive: %@, profileUUIDs: %@", v5, v6, v7, v8, v9];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = [(HMDMediaPlaybackAction *)self mediaProfiles];
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v21 + 1) + 8 * i) uniqueIdentifier];
        v17 = [v16 UUIDString];
        [v10 appendFormat:@" %@", v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  v18 = [v10 copy];
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)configureWithHome:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(HMDMediaPlaybackAction *)self setHome:v4];
  v5 = [(HMDMediaPlaybackAction *)self profileUUIDs];
  v6 = __mapUUIDsToProfiles(v4, v5);
  [(HMDMediaPlaybackAction *)self setMediaProfiles:v6];

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [(HMDMediaPlaybackAction *)v8 profileUUIDs];
    v12 = [(HMDMediaPlaybackAction *)v8 mediaProfiles];
    v14 = 138543874;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Mapped profile UUIDs %@ to profiles %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v13 = *MEMORY[0x277D85DE8];
}

- (HMDMediaPlaybackAction)initWithUUID:(id)a3 mediaProfiles:(id)a4 playbackState:(int64_t)a5 volume:(id)a6 playbackArchive:(id)a7 actionSet:(id)a8
{
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v26.receiver = self;
  v26.super_class = HMDMediaPlaybackAction;
  v19 = [(HMDAction *)&v26 initWithUUID:a3 actionSet:v18];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_mediaProfiles, a4);
    v21 = __mapProfilesToProfileUUIDs(v15);
    v22 = [v21 mutableCopy];
    profileUUIDs = v20->_profileUUIDs;
    v20->_profileUUIDs = v22;

    objc_storeStrong(&v20->_volume, a6);
    v20->_state = a5;
    objc_storeStrong(&v20->_playbackArchive, a7);
    v24 = [v18 home];
    objc_storeWeak(&v20->_home, v24);
  }

  return v20;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t24_259192 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t24_259192, &__block_literal_global_63_259193);
  }

  v3 = logCategory__hmf_once_v25_259194;

  return v3;
}

void __37__HMDMediaPlaybackAction_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v25_259194;
  logCategory__hmf_once_v25_259194 = v1;
}

+ (BOOL)isPlaybackActionValidWithProfiles:(id)a3 state:(int64_t)a4 volume:(id)a5
{
  v7 = a3;
  v8 = a5;
  [v8 floatValue];
  if (v9 >= -0.00000011921)
  {
    [v8 floatValue];
    v10 = v11 <= 100.0;
  }

  else
  {
    v10 = 0;
  }

  v12 = [v7 count];
  v14 = a4 < 3 && v12 != 0;

  return v14 && v10;
}

+ (HMDMediaPlaybackAction)actionWithDictionaryRepresentation:(id)a3 home:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 hmf_numberForKey:*MEMORY[0x277CD2058]];
  if ([v8 unsignedIntegerValue] == 1)
  {
    v9 = [HMDMediaPlaybackActionModel alloc];
    v10 = [MEMORY[0x277CCAD78] UUID];
    v11 = [v7 uuid];
    v12 = [(HMDBackingStoreModelObject *)v9 initWithObjectChangeType:0 uuid:v10 parentUUID:v11];

    [(HMDMediaPlaybackActionModel *)v12 loadModelWithActionInformation:v6];
    v13 = [(HMDMediaPlaybackActionModel *)v12 profiles];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __66__HMDMediaPlaybackAction_actionWithDictionaryRepresentation_home___block_invoke;
    v43[3] = &unk_278686D38;
    v44 = v7;
    v14 = [v13 na_map:v43];

    if ([v14 count])
    {
      v42 = v8;
      v15 = [v14 count];
      v16 = [(HMDMediaPlaybackActionModel *)v12 profiles];
      v17 = [v16 count];

      if (v15 != v17)
      {
        v18 = objc_autoreleasePoolPush();
        v19 = a1;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = HMFGetLogIdentifier();
          v22 = [(HMDMediaPlaybackActionModel *)v12 profiles];
          *buf = 138543874;
          v46 = v21;
          v47 = 2112;
          v48 = v14;
          v49 = 2112;
          v50 = v22;
          _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Couldn't find all media profiles on the home, found: %@ from UUIDs: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v18);
      }

      v23 = [HMDMediaPlaybackAction alloc];
      v24 = [(HMDBackingStoreModelObject *)v12 uuid];
      v25 = [(HMDMediaPlaybackActionModel *)v12 state];
      v26 = [v25 integerValue];
      v27 = [(HMDMediaPlaybackActionModel *)v12 volume];
      [(HMDMediaPlaybackActionModel *)v12 encodedPlaybackArchive];
      v29 = v28 = v7;
      v30 = [(HMDMediaPlaybackAction *)v23 initWithUUID:v24 mediaProfiles:v14 playbackState:v26 volume:v27 playbackArchive:v29 actionSet:0];

      v7 = v28;
      v8 = v42;
    }

    else
    {
      v35 = objc_autoreleasePoolPush();
      v36 = a1;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = HMFGetLogIdentifier();
        v39 = [(HMDMediaPlaybackActionModel *)v12 profiles];
        *buf = 138543618;
        v46 = v38;
        v47 = 2112;
        v48 = v39;
        _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Couldn't find any media profiles in the home for the UUIDs: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v35);
      v30 = 0;
    }
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    v32 = a1;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v34;
      v47 = 2112;
      v48 = v8;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Invalid action type: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
    v30 = 0;
  }

  v40 = *MEMORY[0x277D85DE8];

  return v30;
}

id __66__HMDMediaPlaybackAction_actionWithDictionaryRepresentation_home___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAD78];
  v4 = a2;
  v5 = [[v3 alloc] initWithUUIDString:v4];

  v6 = [*(a1 + 32) mediaProfileWithUUID:v5];

  return v6;
}

@end