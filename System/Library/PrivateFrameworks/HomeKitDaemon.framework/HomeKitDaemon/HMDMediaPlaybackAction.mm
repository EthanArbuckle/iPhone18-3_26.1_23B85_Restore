@interface HMDMediaPlaybackAction
+ (BOOL)isPlaybackActionValidWithProfiles:(id)profiles state:(int64_t)state volume:(id)volume;
+ (HMDMediaPlaybackAction)actionWithDictionaryRepresentation:(id)representation home:(id)home;
+ (id)logCategory;
- (BOOL)isAssociatedWithAccessory:(id)accessory;
- (BOOL)isCompatibleWithAction:(id)action;
- (HMDHome)home;
- (HMDMediaPlaybackAction)initWithCoder:(id)coder;
- (HMDMediaPlaybackAction)initWithModelObject:(id)object parent:(id)parent error:(id *)error;
- (HMDMediaPlaybackAction)initWithUUID:(id)d mediaProfiles:(id)profiles playbackState:(int64_t)state volume:(id)volume playbackArchive:(id)archive actionSet:(id)set;
- (HMDMediaPlaybackActionAsCharacteristicWriteRequests)convertedCharacteristicWriteRequests;
- (NSString)description;
- (id)associatedAccessories;
- (id)dictionaryRepresentation;
- (id)modelObjectWithChangeType:(unint64_t)type version:(int64_t)version;
- (id)modelObjectWithUpdatedMediaProfiles:(id)profiles;
- (id)stateDump;
- (id)validate;
- (void)_processPlaybackActionModelUpdated:(id)updated message:(id)message;
- (void)configureWithHome:(id)home;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithSource:(unint64_t)source clientName:(id)name completionHandler:(id)handler;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
@end

@implementation HMDMediaPlaybackAction

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)modelObjectWithUpdatedMediaProfiles:(id)profiles
{
  profilesCopy = profiles;
  v5 = [(HMDAction *)self modelObjectWithChangeType:2];
  if (v5)
  {
    home = [(HMDMediaPlaybackAction *)self home];
    if (!home)
    {
      actionSet = [(HMDAction *)self actionSet];
      home = [actionSet home];
    }

    v8 = __mapProfilesToProfileUUIDs(profilesCopy);
    [v5 setProfiles:v8];
    v9 = mapProfilesToAccessoryUUIDs(home, v8);
    [v5 setAccessories:v9];

    v10 = mapProfilesToServiceUUIDs(home, v8);
    [v5 setServices:v10];

    v11 = v5;
  }

  return v5;
}

- (id)modelObjectWithChangeType:(unint64_t)type version:(int64_t)version
{
  if (version < 4)
  {
    v10 = 0;
  }

  else
  {
    actionSet = [(HMDAction *)self actionSet];
    v7 = [HMDMediaPlaybackActionModel alloc];
    uuid = [(HMDAction *)self uuid];
    uuid2 = [actionSet uuid];
    v10 = [(HMDBackingStoreModelObject *)v7 initWithObjectChangeType:type uuid:uuid parentUUID:uuid2];

    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDMediaPlaybackAction state](self, "state")}];
    [(HMDMediaPlaybackActionModel *)v10 setState:v11];

    volume = [(HMDMediaPlaybackAction *)self volume];
    [(HMDMediaPlaybackActionModel *)v10 setVolume:volume];

    home = [(HMDMediaPlaybackAction *)self home];
    if (!home)
    {
      home = [actionSet home];
    }

    profileUUIDs = [(HMDMediaPlaybackAction *)self profileUUIDs];
    v15 = [profileUUIDs copy];
    [(HMDMediaPlaybackActionModel *)v10 setProfiles:v15];

    profileUUIDs2 = [(HMDMediaPlaybackAction *)self profileUUIDs];
    v17 = mapProfilesToAccessoryUUIDs(home, profileUUIDs2);
    [(HMDMediaPlaybackActionModel *)v10 setAccessories:v17];

    profileUUIDs3 = [(HMDMediaPlaybackAction *)self profileUUIDs];
    v19 = mapProfilesToServiceUUIDs(home, profileUUIDs3);
    [(HMDMediaPlaybackActionModel *)v10 setServices:v19];

    playbackArchive = [(HMDMediaPlaybackAction *)self playbackArchive];
    [(HMDMediaPlaybackActionModel *)v10 setEncodedPlaybackArchive:playbackArchive];
  }

  return v10;
}

- (HMDMediaPlaybackAction)initWithModelObject:(id)object parent:(id)parent error:(id *)error
{
  v55 = *MEMORY[0x277D85DE8];
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
      home = [v15 home];
      profiles = [v12 profiles];
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __59__HMDMediaPlaybackAction_initWithModelObject_parent_error___block_invoke;
      v47[3] = &unk_278686D38;
      v18 = home;
      v48 = v18;
      v19 = [profiles na_map:v47];

      if ([v19 count])
      {
        v43 = v19;
        v45 = v15;
        v42 = v18;
        v20 = [v19 count];
        profiles2 = [v12 profiles];
        v22 = [profiles2 count];

        if (v20 != v22)
        {
          v23 = objc_autoreleasePoolPush();
          selfCopy = self;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = HMFGetLogIdentifier();
            profiles3 = [v12 profiles];
            *buf = 138543874;
            v50 = v26;
            v51 = 2112;
            v52 = v43;
            v53 = 2112;
            v54 = profiles3;
            _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Couldn't find all media profiles on the home, found: %@ from UUIDs: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v23);
        }

        uuid = [v12 uuid];
        state = [v12 state];
        integerValue = [state integerValue];
        volume = [v12 volume];
        [v12 encodedPlaybackArchive];
        v33 = v32 = parentCopy;
        v19 = v43;
        self = [(HMDMediaPlaybackAction *)self initWithUUID:uuid mediaProfiles:v43 playbackState:integerValue volume:volume playbackArchive:v33 actionSet:v45];

        parentCopy = v32;
        v15 = v45;

        selfCopy2 = self;
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
        if (error)
        {
          [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
          *error = selfCopy2 = 0;
        }

        else
        {
          selfCopy2 = 0;
        }
      }
    }

    else if (error)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      *error = selfCopy2 = 0;
    }

    else
    {
      selfCopy2 = 0;
    }
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:22];
    *error = selfCopy2 = 0;
  }

  else
  {
    selfCopy2 = 0;
  }

  v40 = *MEMORY[0x277D85DE8];
  return selfCopy2;
}

id __59__HMDMediaPlaybackAction_initWithModelObject_parent_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAD78];
  v4 = a2;
  v5 = [[v3 alloc] initWithUUIDString:v4];

  v6 = [*(a1 + 32) mediaProfileWithUUID:v5];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v36 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = HMDMediaPlaybackAction;
  [(HMDAction *)&v25 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDMediaPlaybackAction state](self, "state")}];
  [coderCopy encodeObject:v5 forKey:*MEMORY[0x277CD08A8]];

  volume = [(HMDMediaPlaybackAction *)self volume];
  [coderCopy encodeObject:volume forKey:*MEMORY[0x277CD08B8]];

  playbackArchive = [(HMDMediaPlaybackAction *)self playbackArchive];
  [coderCopy encodeObject:playbackArchive forKey:*MEMORY[0x277CD0888]];

  if ([coderCopy hmd_isForXPCTransport])
  {
    mediaProfiles = [(HMDMediaPlaybackAction *)self mediaProfiles];
    [coderCopy encodeObject:mediaProfiles forKey:*MEMORY[0x277CD0898]];

    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      uuid = [(HMDAction *)selfCopy uuid];
      uUIDString = [uuid UUIDString];
      state = [(HMDMediaPlaybackAction *)selfCopy state];
      mediaProfiles2 = [(HMDMediaPlaybackAction *)selfCopy mediaProfiles];
      playbackArchive2 = [(HMDMediaPlaybackAction *)selfCopy playbackArchive];
      *buf = 138544386;
      v27 = v12;
      v28 = 2112;
      v29 = uUIDString;
      v30 = 2048;
      v31 = state;
      v32 = 2112;
      v33 = mediaProfiles2;
      v34 = 2112;
      v35 = playbackArchive2;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@XPC Encoded Playback action uuid %@ state %tu profiles %@ playbackArchive %@", buf, 0x34u);

LABEL_6:
    }
  }

  else
  {
    profileUUIDs = [(HMDMediaPlaybackAction *)self profileUUIDs];
    [coderCopy encodeObject:profileUUIDs forKey:@"HDMPA.profileUUIDs"];

    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      uuid2 = [(HMDAction *)selfCopy2 uuid];
      uUIDString2 = [uuid2 UUIDString];
      state2 = [(HMDMediaPlaybackAction *)selfCopy2 state];
      profileUUIDs2 = [(HMDMediaPlaybackAction *)selfCopy2 profileUUIDs];
      *buf = 138544130;
      v27 = v12;
      v28 = 2112;
      v29 = uUIDString2;
      v30 = 2048;
      v31 = state2;
      v32 = 2112;
      v33 = profileUUIDs2;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Cloud Encoded Playback action uuid %@ state %tu profiles %@", buf, 0x2Au);

      goto LABEL_6;
    }
  }

  objc_autoreleasePoolPop(v9);
  v24 = *MEMORY[0x277D85DE8];
}

- (HMDMediaPlaybackAction)initWithCoder:(id)coder
{
  v33 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [[HMDAction alloc] initWithCoder:coderCopy];
  if (v5)
  {
    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD08A8]];
    integerValue = [v26 integerValue];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD08B8]];
    v7 = MEMORY[0x277CBEB98];
    v28[0] = objc_opt_class();
    v28[1] = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
    v9 = [v7 setWithArray:v8];

    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"HDMPA.profileUUIDs"];
    v11 = [v10 mutableCopy];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD0888]];
    actionSet = [(HMDAction *)v5 actionSet];
    uuid = [(HMDAction *)v5 uuid];
    v15 = [MEMORY[0x277CBEB98] set];
    v16 = [(HMDMediaPlaybackAction *)self initWithUUID:uuid mediaProfiles:v15 playbackState:integerValue volume:v6 playbackArchive:v12 actionSet:actionSet];

    [(HMDMediaPlaybackAction *)v16 setProfileUUIDs:v11];
    selfCopy = v16;

    v18 = selfCopy;
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v27.receiver = selfCopy;
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

- (void)_processPlaybackActionModelUpdated:(id)updated message:(id)message
{
  v57 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  messageCopy = message;
  transactionResult = [messageCopy transactionResult];
  setProperties = [updatedCopy setProperties];
  v10 = [setProperties containsObject:@"state"];

  if (v10)
  {
    state = [updatedCopy state];
    -[HMDMediaPlaybackAction setState:](self, "setState:", [state integerValue]);
  }

  setProperties2 = [updatedCopy setProperties];
  v13 = [setProperties2 containsObject:@"volume"];

  if (v13)
  {
    volume = [updatedCopy volume];
    [(HMDMediaPlaybackAction *)self setVolume:volume];

    v10 = 1;
  }

  setProperties3 = [updatedCopy setProperties];
  v16 = [setProperties3 containsObject:@"encodedPlaybackArchive"];

  if (v16)
  {
    encodedPlaybackArchive = [updatedCopy encodedPlaybackArchive];
    [(HMDMediaPlaybackAction *)self setPlaybackArchive:encodedPlaybackArchive];

    v10 = 1;
  }

  setProperties4 = [updatedCopy setProperties];
  v19 = [setProperties4 containsObject:@"profiles"];

  if (v19)
  {
    home = [(HMDMediaPlaybackAction *)self home];
    profiles = [updatedCopy profiles];
    v22 = __mapUUIDsToProfiles(home, profiles);
    [(HMDMediaPlaybackAction *)self setMediaProfiles:v22];

    profiles2 = [updatedCopy profiles];
    v24 = [profiles2 mutableCopy];
    [(HMDMediaPlaybackAction *)self setProfileUUIDs:v24];
  }

  else if (!v10)
  {
    actionSet = 0;
    goto LABEL_17;
  }

  actionSet = [(HMDAction *)self actionSet];
  home2 = [actionSet home];
  v27 = home2;
  if (actionSet && home2)
  {
    v47[0] = *MEMORY[0x277CD2060];
    uuid = [(HMDAction *)self uuid];
    uUIDString = [uuid UUIDString];
    v48[0] = uUIDString;
    v47[1] = *MEMORY[0x277CD2028];
    dictionaryRepresentation = [(HMDMediaPlaybackAction *)self dictionaryRepresentation];
    v48[1] = dictionaryRepresentation;
    v47[2] = *MEMORY[0x277CD0640];
    [v27 uuid];
    v31 = v30 = transactionResult;
    [v31 UUIDString];
    v45 = v27;
    v33 = v32 = messageCopy;
    v48[2] = v33;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:3];

    messageCopy = v32;
    transactionResult = v30;

    actionSet = v34;
LABEL_17:
    [messageCopy respondWithPayload:actionSet];
    v40 = objc_autoreleasePoolPush();
    selfCopy = self;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      v43 = HMFGetLogIdentifier();
      *buf = 138543618;
      v50 = v43;
      v51 = 2112;
      v52 = actionSet;
      _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_DEBUG, "%{public}@Responding to client after updating action with response: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v40);
    [transactionResult markChanged];
    goto LABEL_20;
  }

  v35 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v37 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    v38 = HMFGetLogIdentifier();
    *buf = 138544130;
    v50 = v38;
    v51 = 2112;
    v52 = updatedCopy;
    v53 = 2112;
    v54 = actionSet;
    v55 = 2112;
    v56 = v27;
    _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Playback action Model object (%@) missing actionset %@ or home %@ ", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v35);
  v39 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  [messageCopy respondWithError:v39];

LABEL_20:
  v44 = *MEMORY[0x277D85DE8];
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
    [(HMDMediaPlaybackAction *)self _processPlaybackActionModelUpdated:v13 message:messageCopy];
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

- (id)associatedAccessories
{
  mediaProfiles = [(HMDMediaPlaybackAction *)self mediaProfiles];
  v3 = [mediaProfiles na_map:&__block_literal_global_38_259149];
  allObjects = [v3 allObjects];

  return allObjects;
}

- (BOOL)isCompatibleWithAction:(id)action
{
  actionCopy = action;
  v9.receiver = self;
  v9.super_class = HMDMediaPlaybackAction;
  if ([(HMDAction *)&v9 isCompatibleWithAction:actionCopy])
  {
    mediaProfiles = [(HMDMediaPlaybackAction *)self mediaProfiles];
    mediaProfiles2 = [actionCopy mediaProfiles];
    v7 = [mediaProfiles isEqual:mediaProfiles2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isAssociatedWithAccessory:(id)accessory
{
  v22 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  home = [accessoryCopy home];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  profileUUIDs = [(HMDMediaPlaybackAction *)self profileUUIDs];
  v7 = [profileUUIDs copy];
  v8 = mapProfilesToAccessoryUUIDs(home, v7);

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
        uuid = [accessoryCopy uuid];
        uUIDString = [uuid UUIDString];
        LOBYTE(v12) = [v12 isEqualToString:uUIDString];

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
  mediaProfiles = [(HMDMediaPlaybackAction *)self mediaProfiles];
  v4 = [mediaProfiles na_map:&__block_literal_global_259152];
  allObjects = [v4 allObjects];
  v6 = [allObjects componentsJoinedByString:{@", \n"}];

  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  uuid = [(HMDAction *)self uuid];
  state = [(HMDMediaPlaybackAction *)self state];
  volume = [(HMDMediaPlaybackAction *)self volume];
  playbackArchive = [(HMDMediaPlaybackAction *)self playbackArchive];
  v14 = [v7 stringWithFormat:@"%@<uuid %@ play state %ld volume %@ playbackArchive %@ mediaProfiles {%@}>", v9, uuid, state, volume, playbackArchive, v6];

  return v14;
}

- (HMDMediaPlaybackActionAsCharacteristicWriteRequests)convertedCharacteristicWriteRequests
{
  v43 = *MEMORY[0x277D85DE8];
  playbackArchive = [(HMDMediaPlaybackAction *)self playbackArchive];

  if (playbackArchive)
  {
    v4 = 0;
  }

  else
  {
    mediaProfiles = [(HMDMediaPlaybackAction *)self mediaProfiles];
    allObjects = [mediaProfiles allObjects];

    v37 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(allObjects, "count")}];
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{2 * objc_msgSend(allObjects, "count")}];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v8 = allObjects;
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

            volume = [(HMDMediaPlaybackAction *)self volume];

            if (volume)
            {
              volume2 = [(HMDMediaPlaybackAction *)self volume];
              [volume2 floatValue];
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
        uuid = [(HMDAction *)self uuid];
        state = [(HMDMediaPlaybackAction *)self state];
        [(HMDMediaPlaybackAction *)self volume];
        v30 = v29 = v7;
        playbackArchive2 = [(HMDMediaPlaybackAction *)self playbackArchive];
        actionSet = [(HMDAction *)self actionSet];
        v33 = [(HMDMediaPlaybackAction *)v26 initWithUUID:uuid mediaProfiles:v37 playbackState:state volume:v30 playbackArchive:playbackArchive2 actionSet:actionSet];

        v7 = v29;
        home = [(HMDMediaPlaybackAction *)self home];
        [(HMDMediaPlaybackAction *)v33 configureWithHome:home];
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
  mediaProfiles = [(HMDMediaPlaybackAction *)self mediaProfiles];
  state = [(HMDMediaPlaybackAction *)self state];
  volume = [(HMDMediaPlaybackAction *)self volume];
  v6 = [HMDMediaPlaybackAction isPlaybackActionValidWithProfiles:mediaProfiles state:state volume:volume];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      state2 = [(HMDMediaPlaybackAction *)selfCopy state];
      volume2 = [(HMDMediaPlaybackAction *)selfCopy volume];
      mediaProfiles2 = [(HMDMediaPlaybackAction *)selfCopy mediaProfiles];
      v17 = 138544130;
      v18 = v11;
      v19 = 2048;
      v20 = state2;
      v21 = 2112;
      v22 = volume2;
      v23 = 2048;
      v24 = [mediaProfiles2 count];
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Invalid configuration for media playback action - state: %tu  volume: %@  #Profiles: %tu", &v17, 0x2Au);
    }

    objc_autoreleasePoolPop(v8);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"Invalid configuration for media playback action" reason:0 suggestion:0];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)executeWithSource:(unint64_t)source clientName:(id)name completionHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  handlerCopy = handler;
  home = [(HMDMediaPlaybackAction *)self home];
  if (home)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Executing media playback action", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    objc_initWeak(buf, selfCopy);
    mediaActionRouter = [home mediaActionRouter];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __73__HMDMediaPlaybackAction_executeWithSource_clientName_completionHandler___block_invoke;
    v18[3] = &unk_278686D60;
    objc_copyWeak(&v20, buf);
    v19 = handlerCopy;
    [mediaActionRouter routeMediaActionForExecution:selfCopy source:source clientName:nameCopy completion:v18];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  else if (handlerCopy)
  {
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
    (*(handlerCopy + 2))(handlerCopy, v16);
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
  dictionaryRepresentation = [(HMDAction *)&v23 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDMediaPlaybackAction state](self, "state")}];
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277CD08B0]];

  volume = [(HMDMediaPlaybackAction *)self volume];
  [v4 setObject:volume forKeyedSubscript:*MEMORY[0x277CD08C0]];

  mediaProfiles = [(HMDMediaPlaybackAction *)self mediaProfiles];
  v8 = __mapProfilesToProfileUUIDs(mediaProfiles);
  allObjects = [v8 allObjects];
  [v4 setObject:allObjects forKeyedSubscript:*MEMORY[0x277CD08A0]];

  playbackArchive = [(HMDMediaPlaybackAction *)self playbackArchive];

  if (playbackArchive)
  {
    v11 = MEMORY[0x277CCAAB0];
    playbackArchive2 = [(HMDMediaPlaybackAction *)self playbackArchive];
    v22 = 0;
    v13 = [v11 archivedDataWithRootObject:playbackArchive2 requiringSecureCoding:1 error:&v22];
    v14 = v22;

    if (v13)
    {
      [v4 setObject:v13 forKeyedSubscript:*MEMORY[0x277CD0890]];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
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
  uuid = [(HMDAction *)self uuid];
  uUIDString = [uuid UUIDString];
  state = [(HMDMediaPlaybackAction *)self state];
  volume = [(HMDMediaPlaybackAction *)self volume];
  playbackArchive = [(HMDMediaPlaybackAction *)self playbackArchive];
  profileUUIDs = [(HMDMediaPlaybackAction *)self profileUUIDs];
  v10 = [v3 stringWithFormat:@"Action uuid: %@, state: %tu, volume: %@, playbackArchive: %@, profileUUIDs: %@", uUIDString, state, volume, playbackArchive, profileUUIDs];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  mediaProfiles = [(HMDMediaPlaybackAction *)self mediaProfiles];
  v12 = [mediaProfiles countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(mediaProfiles);
        }

        uniqueIdentifier = [*(*(&v21 + 1) + 8 * i) uniqueIdentifier];
        uUIDString2 = [uniqueIdentifier UUIDString];
        [v10 appendFormat:@" %@", uUIDString2];
      }

      v13 = [mediaProfiles countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  v18 = [v10 copy];
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)configureWithHome:(id)home
{
  v20 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  [(HMDMediaPlaybackAction *)self setHome:homeCopy];
  profileUUIDs = [(HMDMediaPlaybackAction *)self profileUUIDs];
  v6 = __mapUUIDsToProfiles(homeCopy, profileUUIDs);
  [(HMDMediaPlaybackAction *)self setMediaProfiles:v6];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    profileUUIDs2 = [(HMDMediaPlaybackAction *)selfCopy profileUUIDs];
    mediaProfiles = [(HMDMediaPlaybackAction *)selfCopy mediaProfiles];
    v14 = 138543874;
    v15 = v10;
    v16 = 2112;
    v17 = profileUUIDs2;
    v18 = 2112;
    v19 = mediaProfiles;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Mapped profile UUIDs %@ to profiles %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v13 = *MEMORY[0x277D85DE8];
}

- (HMDMediaPlaybackAction)initWithUUID:(id)d mediaProfiles:(id)profiles playbackState:(int64_t)state volume:(id)volume playbackArchive:(id)archive actionSet:(id)set
{
  profilesCopy = profiles;
  volumeCopy = volume;
  archiveCopy = archive;
  setCopy = set;
  v26.receiver = self;
  v26.super_class = HMDMediaPlaybackAction;
  v19 = [(HMDAction *)&v26 initWithUUID:d actionSet:setCopy];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_mediaProfiles, profiles);
    v21 = __mapProfilesToProfileUUIDs(profilesCopy);
    v22 = [v21 mutableCopy];
    profileUUIDs = v20->_profileUUIDs;
    v20->_profileUUIDs = v22;

    objc_storeStrong(&v20->_volume, volume);
    v20->_state = state;
    objc_storeStrong(&v20->_playbackArchive, archive);
    home = [setCopy home];
    objc_storeWeak(&v20->_home, home);
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

+ (BOOL)isPlaybackActionValidWithProfiles:(id)profiles state:(int64_t)state volume:(id)volume
{
  profilesCopy = profiles;
  volumeCopy = volume;
  [volumeCopy floatValue];
  if (v9 >= -0.00000011921)
  {
    [volumeCopy floatValue];
    v10 = v11 <= 100.0;
  }

  else
  {
    v10 = 0;
  }

  v12 = [profilesCopy count];
  v14 = state < 3 && v12 != 0;

  return v14 && v10;
}

+ (HMDMediaPlaybackAction)actionWithDictionaryRepresentation:(id)representation home:(id)home
{
  v51 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  homeCopy = home;
  v8 = [representationCopy hmf_numberForKey:*MEMORY[0x277CD2058]];
  if ([v8 unsignedIntegerValue] == 1)
  {
    v9 = [HMDMediaPlaybackActionModel alloc];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uuid = [homeCopy uuid];
    v12 = [(HMDBackingStoreModelObject *)v9 initWithObjectChangeType:0 uuid:uUID parentUUID:uuid];

    [(HMDMediaPlaybackActionModel *)v12 loadModelWithActionInformation:representationCopy];
    profiles = [(HMDMediaPlaybackActionModel *)v12 profiles];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __66__HMDMediaPlaybackAction_actionWithDictionaryRepresentation_home___block_invoke;
    v43[3] = &unk_278686D38;
    v44 = homeCopy;
    v14 = [profiles na_map:v43];

    if ([v14 count])
    {
      v42 = v8;
      v15 = [v14 count];
      profiles2 = [(HMDMediaPlaybackActionModel *)v12 profiles];
      v17 = [profiles2 count];

      if (v15 != v17)
      {
        v18 = objc_autoreleasePoolPush();
        selfCopy = self;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = HMFGetLogIdentifier();
          profiles3 = [(HMDMediaPlaybackActionModel *)v12 profiles];
          *buf = 138543874;
          v46 = v21;
          v47 = 2112;
          v48 = v14;
          v49 = 2112;
          v50 = profiles3;
          _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Couldn't find all media profiles on the home, found: %@ from UUIDs: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v18);
      }

      v23 = [HMDMediaPlaybackAction alloc];
      uuid2 = [(HMDBackingStoreModelObject *)v12 uuid];
      state = [(HMDMediaPlaybackActionModel *)v12 state];
      integerValue = [state integerValue];
      volume = [(HMDMediaPlaybackActionModel *)v12 volume];
      [(HMDMediaPlaybackActionModel *)v12 encodedPlaybackArchive];
      v29 = v28 = homeCopy;
      v30 = [(HMDMediaPlaybackAction *)v23 initWithUUID:uuid2 mediaProfiles:v14 playbackState:integerValue volume:volume playbackArchive:v29 actionSet:0];

      homeCopy = v28;
      v8 = v42;
    }

    else
    {
      v35 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = HMFGetLogIdentifier();
        profiles4 = [(HMDMediaPlaybackActionModel *)v12 profiles];
        *buf = 138543618;
        v46 = v38;
        v47 = 2112;
        v48 = profiles4;
        _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Couldn't find any media profiles in the home for the UUIDs: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v35);
      v30 = 0;
    }
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    selfCopy3 = self;
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