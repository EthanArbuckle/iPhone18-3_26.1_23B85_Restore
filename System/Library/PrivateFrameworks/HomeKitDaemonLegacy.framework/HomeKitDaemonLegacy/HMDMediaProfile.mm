@interface HMDMediaProfile
+ (id)logCategory;
+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver;
+ (id)namespace;
+ (id)sessionNamespace;
+ (id)uniqueIdentifierFromAccessory:(id)accessory;
+ (id)uniqueIdentifierFromAccessoryUUID:(id)d;
- (BOOL)_updateAudioControl:(id)control;
- (BOOL)_updatePlayback:(id)playback;
- (BOOL)_updateRefreshPlayback:(id)playback;
- (HMDMediaProfile)initWithAccessory:(id)accessory;
- (HMDMediaProfile)initWithAccessory:(id)accessory uniqueIdentifier:(id)identifier services:(id)services workQueue:(id)queue;
- (HMDMediaProfile)initWithAccessory:(id)accessory uniqueIdentifier:(id)identifier services:(id)services workQueue:(id)queue notificationCenter:(id)center;
- (HMDMediaSession)mediaSession;
- (HMEEventForwarder)eventForwarder;
- (NSDictionary)assistantObject;
- (NSString)description;
- (NSString)mediaRouteID;
- (NSString)urlString;
- (id)parseAndSetPlaybackStateFromResponsePayload:(id)payload mediaSessionState:(id)state outDidUpdateMediaSessionState:(BOOL *)sessionState;
- (id)payloadForUpdatedPlaybackState:(void *)state shuffleStateNumber:(void *)number repeatStateNumber:(void *)stateNumber volume:(void *)volume mediaUniqueIdentifier:;
- (void)_handleMediaResponses:(id)responses message:(id)message;
- (void)_handleMediaSessionSetAudioControl:(id)control;
- (void)_handleRefreshPlayback:(id)playback;
- (void)_handleSetPlayback:(id)playback;
- (void)_handleSetValue:(id)value withRequestProperty:(id)property withCompletionHandler:(id)handler;
- (void)_sessionPlaybackStateUpdated:(id)updated notifyXPCClients:(BOOL)clients;
- (void)configureWithMessageDispatcher:(id)dispatcher configurationTracker:(id)tracker;
- (void)encodeWithCoder:(id)coder;
- (void)handleSessionPlaybackStateUpdatedNotification:(id)notification;
- (void)handleSessionUpdatedNotification:(id)notification;
- (void)handleSessionVolumeUpdatedNotification:(id)notification;
- (void)handleSetValue:(id)value withRequestProperty:(id)property withCompletionHandler:(id)handler;
- (void)registerForMessages;
- (void)registerForNotifications;
- (void)sessionAudioControlUpdated:(id)updated;
- (void)setMediaSession:(id)session;
- (void)unregisterForNotifications;
- (void)updateWithResponses:(id)responses requestMessageInformation:(id)information;
@end

@implementation HMDMediaProfile

- (NSDictionary)assistantObject
{
  v70[2] = *MEMORY[0x277D85DE8];
  accessory = [(HMDAccessoryProfile *)self accessory];
  name = [accessory name];
  home = [accessory home];
  v6 = home;
  if (home)
  {
    name2 = [home name];

    if (name2)
    {
      if (name)
      {
        v8 = objc_alloc(MEMORY[0x277CBEB38]);
        v64[0] = *MEMORY[0x277D48170];
        v63[0] = @"objectType";
        v63[1] = @"objectIdentifier";
        urlString = [(HMDMediaProfile *)self urlString];
        v64[1] = urlString;
        v63[2] = @"objectHome";
        name3 = [v6 name];
        v64[2] = name3;
        v63[3] = @"objectHomeIdentifier";
        urlString2 = [v6 urlString];
        v64[3] = urlString2;
        v64[4] = self;
        v63[4] = @"objectReference";
        v63[5] = @"objectName";
        v59 = name;
        v64[5] = name;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:6];
        v13 = [v8 initWithDictionary:v12];

        v14 = accessory;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        v16 = v15;

        category = [v14 category];
        categoryType = [category categoryType];
        v19 = [categoryType isEqual:*MEMORY[0x277CCE870]];

        v60 = category;
        if (v19)
        {
          v20 = MEMORY[0x277D481C0];
          v21 = MEMORY[0x277D48270];
          goto LABEL_25;
        }

        categoryType2 = [category categoryType];
        v27 = [categoryType2 isEqual:*MEMORY[0x277CCE8B0]];

        if (v27)
        {
          v20 = MEMORY[0x277D48200];
        }

        else
        {
          categoryType3 = [category categoryType];
          v30 = [categoryType3 isEqual:*MEMORY[0x277CCE860]];

          if (v30)
          {
            v20 = MEMORY[0x277D481C0];
            v21 = MEMORY[0x277D48258];
            goto LABEL_25;
          }

          categoryType4 = [category categoryType];
          v32 = [categoryType4 isEqual:*MEMORY[0x277CCE900]];

          if ((v32 & 1) == 0)
          {
            siriEndpointProfile = [v16 siriEndpointProfile];

            if (!siriEndpointProfile)
            {
              v38 = v16;
              v39 = objc_autoreleasePoolPush();
              selfCopy = self;
              v41 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
              {
                v42 = HMFGetLogIdentifier();
                *buf = 138543618;
                *&buf[4] = v42;
                *&buf[12] = 2112;
                *&buf[14] = v60;
                _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_ERROR, "%{public}@MediaProfile with invalid accessory category: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v39);
              v34 = 0;
              v58 = 0;
              v16 = v38;
              goto LABEL_31;
            }
          }

          v20 = MEMORY[0x277D481C0];
        }

        v21 = MEMORY[0x277D48350];
LABEL_25:
        v34 = *v21;
        v35 = *v20;
        v58 = v35;
        if (v34)
        {
          v36 = category;
          if (v35)
          {
            v61[0] = @"objectServiceType";
            v61[1] = @"objectServiceSubType";
            v62[0] = v34;
            v62[1] = v35;
            v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:2];
            [v13 addEntriesFromDictionary:v37];
          }

          goto LABEL_32;
        }

LABEL_31:
        v36 = v60;
LABEL_32:
        name4 = [v14 name];
        [v13 setObject:name4 forKey:@"objectAccessory"];

        urlString3 = [v14 urlString];
        [v13 setObject:urlString3 forKey:@"objectAccessoryIdentifier"];

        v45 = v14;
        room = [v45 room];
        name5 = [room name];
        if (name5)
        {
          v57 = v34;
          v48 = v16;
          v49 = v13;
          home2 = [v45 home];
          name6 = [home2 name];
          v52 = [name5 isEqualToString:name6];

          if (v52)
          {
            v53 = 0;
          }

          else
          {
            *buf = name5;
            v70[0] = @"objectRoom";
            v70[1] = @"objectRoomIdentifier";
            urlString4 = [room urlString];
            *&buf[8] = urlString4;
            v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v70 count:2];
          }

          v13 = v49;
          v16 = v48;
          v36 = v60;
          v34 = v57;
        }

        else
        {
          v53 = 0;
        }

        if (v53)
        {
          [v13 addEntriesFromDictionary:v53];
        }

        v28 = [v13 copy];

        name = v59;
        goto LABEL_41;
      }
    }
  }

  v22 = objc_autoreleasePoolPush();
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = HMFGetLogIdentifier();
    if (v6)
    {
      name7 = [v6 name];
    }

    else
    {
      name7 = 0;
    }

    *buf = 138544130;
    *&buf[4] = v24;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    v66 = 2112;
    v67 = name7;
    v68 = 2112;
    v69 = name;
    _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Skipping because one of the properties of service is nil: service.accessory.home %@  service.accessory.home.name %@  service.name %@", buf, 0x2Au);
    if (v6)
    {
    }
  }

  objc_autoreleasePoolPop(v22);
  v28 = 0;
LABEL_41:

  v55 = *MEMORY[0x277D85DE8];

  return v28;
}

- (NSString)urlString
{
  v2 = *MEMORY[0x277CCF2A8];
  uniqueIdentifier = [(HMDAccessoryProfile *)self uniqueIdentifier];
  v4 = hm_assistantIdentifier();

  return v4;
}

- (NSString)description
{
  accessory = [(HMDAccessoryProfile *)self accessory];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  name = [accessory name];
  identifier = [accessory identifier];
  uniqueIdentifier = [(HMDAccessoryProfile *)self uniqueIdentifier];
  v10 = [v4 stringWithFormat:@"%@<name %@ identifier %@ uniqueIdentifier %@>", v6, name, identifier, uniqueIdentifier];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  v23[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = HMDMediaProfile;
  [(HMDAccessoryProfile *)&v22 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x277CBEB28] dataWithLength:16];
  uniqueIdentifier = [(HMDAccessoryProfile *)self uniqueIdentifier];
  [uniqueIdentifier getUUIDBytes:{objc_msgSend(v5, "mutableBytes")}];

  v7 = MEMORY[0x277CCAD78];
  v8 = +[HMDMediaProfile namespace];
  v9 = [v7 hmf_UUIDWithNamespace:v8 data:v5];

  uUIDString = [v9 UUIDString];
  [coderCopy encodeObject:uUIDString forKey:*MEMORY[0x277CD08E0]];

  mediaSession = [(HMDMediaProfile *)self mediaSession];
  accessory = [(HMDAccessoryProfile *)self accessory];
  v13 = accessory;
  if (accessory)
  {
    home = [accessory home];
    identifier = [v13 identifier];
    v16 = [home mediaSessionStateWithIdentifier:identifier];

    if (!mediaSession && v16)
    {
      if ([coderCopy hmd_isForXPCTransport])
      {
        v17 = [HMDMediaSession alloc];
        v23[0] = self;
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
        mediaSession = [(HMDMediaSession *)v17 initWithEndpoint:0 mediaProfiles:v18 state:v16];
      }

      else
      {
        mediaSession = 0;
      }
    }
  }

  else
  {
    v16 = 0;
  }

  [coderCopy encodeObject:mediaSession forKey:*MEMORY[0x277CD08D8]];
  identifier2 = [v13 identifier];
  [coderCopy encodeObject:identifier2 forKey:*MEMORY[0x277CD08D0]];

  capability = [(HMDMediaProfile *)self capability];
  [coderCopy encodeInteger:capability forKey:*MEMORY[0x277CD08C8]];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)sessionAudioControlUpdated:(id)updated
{
  v35 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  userInfo = [updatedCopy userInfo];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v32 = v8;
    v33 = 2112;
    v34 = userInfo;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@sessionAudioControlUpdated %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CD0968]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  messageIdentifier = [v11 messageIdentifier];
  v13 = *MEMORY[0x277CD0908];
  v14 = [userInfo hmf_numberForKey:*MEMORY[0x277CD0908]];
  v15 = *MEMORY[0x277CD08F0];
  v16 = [userInfo hmf_numberForKey:*MEMORY[0x277CD08F0]];
  v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18 = v17;
  if (v14)
  {
    [v17 setValue:v14 forKey:v13];
  }

  if (v16)
  {
    [v18 setValue:v16 forKey:v15];
  }

  v19 = objc_autoreleasePoolPush();
  v20 = selfCopy;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138543362;
    v32 = v22;
    _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Notify clients of updated audio control state", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v19);
  v23 = [MEMORY[0x277D0F848] entitledMessageWithName:*MEMORY[0x277CD08F8] identifier:messageIdentifier messagePayload:v18];
  v24 = objc_alloc(MEMORY[0x277D0F820]);
  uniqueIdentifier = [(HMDAccessoryProfile *)v20 uniqueIdentifier];
  v26 = [v24 initWithTarget:uniqueIdentifier];
  [v23 setDestination:v26];

  msgDispatcher = [(HMDAccessoryProfile *)v20 msgDispatcher];
  v28 = [v23 copy];
  [msgDispatcher sendMessage:v28 completionHandler:0];

  v29 = *MEMORY[0x277D85DE8];
}

- (void)handleSessionVolumeUpdatedNotification:(id)notification
{
  v33[7] = *MEMORY[0x277D85DE8];
  userInfo = [notification userInfo];
  mediaSession = [(HMDMediaProfile *)self mediaSession];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D27E28]];

  uuid = [mediaSession uuid];
  uUIDString = [uuid UUIDString];
  v9 = uUIDString;
  if (!uUIDString || !v6)
  {

LABEL_10:
    goto LABEL_11;
  }

  IsLocalOrigin = MROriginIsLocalOrigin();

  if (IsLocalOrigin)
  {
    uuid = [userInfo hmf_numberForKey:*MEMORY[0x277D27E38]];
    if (uuid)
    {
      state = [mediaSession state];

      if (state)
      {
        state2 = [mediaSession state];
        mediaUniqueIdentifier = [state2 mediaUniqueIdentifier];
        v14 = mediaUniqueIdentifier;
        v15 = &stru_286509E58;
        if (mediaUniqueIdentifier)
        {
          v15 = mediaUniqueIdentifier;
        }

        v16 = v15;

        v32[0] = *MEMORY[0x277CD09A8];
        uuid2 = [mediaSession uuid];
        uUIDString2 = [uuid2 UUIDString];
        v33[0] = uUIDString2;
        v32[1] = *MEMORY[0x277CD0938];
        v17 = MEMORY[0x277CCABB0];
        state3 = [mediaSession state];
        v28 = [v17 numberWithInteger:{objc_msgSend(state3, "playbackState")}];
        v33[1] = v28;
        v32[2] = *MEMORY[0x277CD0990];
        v18 = MEMORY[0x277CCABB0];
        state4 = [mediaSession state];
        v20 = [v18 numberWithInteger:{objc_msgSend(state4, "shuffleState")}];
        v33[2] = v20;
        v32[3] = *MEMORY[0x277CD0960];
        v21 = MEMORY[0x277CCABB0];
        state5 = [mediaSession state];
        v23 = [v21 numberWithInteger:{objc_msgSend(state5, "repeatState")}];
        v24 = *MEMORY[0x277CD09B0];
        v33[3] = v23;
        v33[4] = uuid;
        v25 = *MEMORY[0x277CD0920];
        v32[4] = v24;
        v32[5] = v25;
        v32[6] = @"force-notify";
        v33[5] = v16;
        v33[6] = MEMORY[0x277CBEC38];
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:7];

        [(HMDMediaProfile *)self handleSessionUpdatedNotification:v26];
      }
    }

    goto LABEL_10;
  }

LABEL_11:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)handleSessionPlaybackStateUpdatedNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo mutableCopy];

  [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"session-state-changed"];
  [(HMDMediaProfile *)self handleSessionUpdatedNotification:v5];
}

- (void)handleSessionUpdatedNotification:(id)notification
{
  v35 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = [notificationCopy hmf_stringForKey:*MEMORY[0x277CD09A8]];
  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5];
  mediaSession = [(HMDMediaProfile *)self mediaSession];
  uuid = [mediaSession uuid];
  v9 = HMFEqualObjects();

  if (v9)
  {
    LODWORD(v10) = [notificationCopy hmf_BOOLForKey:@"force-notify"];
    v11 = [notificationCopy objectForKeyedSubscript:*MEMORY[0x277CD0968]];
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
      v10 = 1;
    }

    else
    {
      v10 = v10;
    }

    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = &stru_286509E58;
      v27 = 138543874;
      v28 = v17;
      v29 = 2112;
      if (v10)
      {
        v18 = @" - force notifying clients on remote notification";
      }

      v30 = v5;
      v31 = 2112;
      v32 = v18;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Got a playback state update for media session %@%@", &v27, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    [(HMDMediaProfile *)selfCopy _sessionPlaybackStateUpdated:notificationCopy notifyXPCClients:v10];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      mediaSession2 = [(HMDMediaProfile *)selfCopy2 mediaSession];
      uuid2 = [mediaSession2 uuid];
      uUIDString = [uuid2 UUIDString];
      v27 = 138544130;
      v28 = v22;
      v29 = 2112;
      v30 = v5;
      v31 = 2112;
      v32 = uUIDString;
      v33 = 2112;
      v34 = notificationCopy;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Media session %@ playback notification does not match our media session:%@ ui:%@", &v27, 0x2Au);
    }

    objc_autoreleasePoolPop(v19);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_handleSetValue:(id)value withRequestProperty:(id)property withCompletionHandler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  propertyCopy = property;
  handlerCopy = handler;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    accessory = [(HMDAccessoryProfile *)selfCopy accessory];
    *buf = 138543618;
    v24 = v14;
    v25 = 2112;
    v26 = accessory;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@The accessory %@ does not support _handleSetValue:", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  if (handlerCopy)
  {
    v16 = [HMDMediaPropertyRequest requestWithProperty:propertyCopy mediaProfile:selfCopy];
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v18 = [HMDMediaPropertyResponse responseWithRequest:v16 error:v17];

    v22 = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
    v20 = [HMDMediaPropertyResponse serializeResponses:v19];
    handlerCopy[2](handlerCopy, 0, v20);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handleSetValue:(id)value withRequestProperty:(id)property withCompletionHandler:(id)handler
{
  valueCopy = value;
  propertyCopy = property;
  handlerCopy = handler;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __76__HMDMediaProfile_handleSetValue_withRequestProperty_withCompletionHandler___block_invoke;
  v15[3] = &unk_279734578;
  v15[4] = self;
  v16 = valueCopy;
  v17 = propertyCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = propertyCopy;
  v14 = valueCopy;
  dispatch_async(workQueue, v15);
}

- (id)parseAndSetPlaybackStateFromResponsePayload:(id)payload mediaSessionState:(id)state outDidUpdateMediaSessionState:(BOOL *)sessionState
{
  stateCopy = state;
  v8 = [payload hmf_numberForKey:*MEMORY[0x277CD0938]];
  unsignedIntegerValue = [v8 unsignedIntegerValue];
  if (v8)
  {
    v10 = unsignedIntegerValue;
    if (unsignedIntegerValue != [stateCopy playbackState])
    {
      [stateCopy setPlaybackState:v10];
      *sessionState = 1;
    }
  }

  return v8;
}

- (void)_sessionPlaybackStateUpdated:(id)updated notifyXPCClients:(BOOL)clients
{
  v171 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  v6 = [updatedCopy hmf_numberForKey:@"session-state-changed"];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    [v6 BOOLValue];
    v11 = HMFBooleanToString();
    *buf = 138543618;
    v156 = v10;
    v157 = 2112;
    v158 = v11;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@_sessionPlaybackStateUpdated with HMDMediaProfileHasMediaSessionStateChangedKey: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  if (v6)
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v154 = bOOLValue;
  mediaSession = [(HMDMediaProfile *)selfCopy mediaSession];
  state = [mediaSession state];
  accessory = [(HMDAccessoryProfile *)selfCopy accessory];
  home = [accessory home];
  v145 = accessory;
  if (state)
  {
    v137 = 0;
  }

  else
  {
    v15 = accessory;
    if (selfCopy)
    {
      v16 = [updatedCopy hmf_stringForKey:*MEMORY[0x277CD0910]];
      uniqueIdentifier = [(HMDAccessoryProfile *)selfCopy uniqueIdentifier];
      uUIDString = [uniqueIdentifier UUIDString];
      v19 = [v16 isEqualToString:uUIDString];

      if (v19)
      {
        identifier = [v15 identifier];

        v16 = identifier;
      }
    }

    else
    {
      v16 = 0;
    }

    state = [home mediaSessionStateWithIdentifier:v16];
    v137 = state == 0;
    if (!state)
    {
      v21 = home;
      v22 = v15;
      v23 = v16;
      if (selfCopy)
      {
        v24 = objc_autoreleasePoolPush();
        v25 = selfCopy;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v27 = v135 = v6;
          [v22 identifier];
          v28 = v152 = v22;
          *buf = 138543874;
          v156 = v27;
          v157 = 2112;
          v158 = v23;
          v159 = 2112;
          v160 = v28;
          _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Creating a media session state for a remote session (sessionIdentifier %@; accessoryIdentifier %@) update", buf, 0x20u);

          v22 = v152;
          v6 = v135;
        }

        objc_autoreleasePoolPop(v24);
        state = [[HMDMediaSessionState alloc] initWithSessionIdentifier:v23];
        [v21 addMediaSessionState:state];
      }

      else
      {
        state = 0;
      }

      v154 = 1;
    }
  }

  v150 = [(HMDMediaProfile *)selfCopy parseAndSetPlaybackStateFromResponsePayload:updatedCopy mediaSessionState:state outDidUpdateMediaSessionState:&v154];
  v29 = state;
  v30 = v29;
  v31 = MEMORY[0x277CD0960];
  v32 = MEMORY[0x277CD09B0];
  v33 = MEMORY[0x277CD0920];
  if (selfCopy)
  {
    v34 = [updatedCopy hmf_numberForKey:*MEMORY[0x277CD0990]];
    unsignedIntegerValue = [v34 unsignedIntegerValue];
    v153 = v34;
    if (v34)
    {
      v36 = unsignedIntegerValue;
      if (unsignedIntegerValue != [(HMDMediaSessionState *)v30 shuffleState])
      {
        [(HMDMediaSessionState *)v30 setShuffleState:v36];
        v154 = 1;
      }
    }

    else
    {
      v153 = 0;
    }

    v37 = v30;
    v38 = [updatedCopy hmf_numberForKey:*v31];
    unsignedIntegerValue2 = [v38 unsignedIntegerValue];
    v151 = v38;
    if (v38)
    {
      v40 = unsignedIntegerValue2;
      if (unsignedIntegerValue2 != [(HMDMediaSessionState *)v37 repeatState])
      {
        [(HMDMediaSessionState *)v37 setRepeatState:v40];
        v154 = 1;
      }
    }

    else
    {
      v151 = 0;
    }

    v41 = v37;
    v42 = [updatedCopy hmf_numberForKey:*v32];
    if (v42)
    {
      volume = [(HMDMediaSessionState *)v41 volume];
      if (!volume)
      {
        goto LABEL_30;
      }

      v44 = volume;
      [v42 floatValue];
      v46 = v45;
      volume2 = [(HMDMediaSessionState *)v41 volume];
      [volume2 floatValue];
      v49 = vabds_f32(v46, v48);
      v50 = *MEMORY[0x277CD1F78];

      if (v49 > v50)
      {
LABEL_30:
        [(HMDMediaSessionState *)v41 setVolume:v42];
        v154 = 1;
      }
    }

    v51 = v41;
    v52 = [updatedCopy hmf_stringForKey:*v33];
    if (v52)
    {
      mediaUniqueIdentifier = [(HMDMediaSessionState *)v51 mediaUniqueIdentifier];
      v54 = [v52 isEqualToString:mediaUniqueIdentifier];

      if ((v54 & 1) == 0)
      {
        [(HMDMediaSessionState *)v51 setMediaUniqueIdentifier:v52];
        v154 = 1;
      }
    }
  }

  else
  {

    v125 = v30;
    v126 = v125;

    v127 = v126;
    v42 = 0;
    v151 = 0;
    v153 = 0;
    v52 = 0;
  }

  v144 = v30;

  v55 = [updatedCopy objectForKeyedSubscript:*MEMORY[0x277CD0968]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v56 = v55;
  }

  else
  {
    v56 = 0;
  }

  v57 = v56;

  [v57 messageIdentifier];
  v148 = v147 = v57;
  v58 = v154 | (v57 != 0);
  v59 = @", state has not changed so not notifying clients";
  if (v154 & 1 | (v57 != 0))
  {
    v59 = @"state has changed, notifying clients";
  }

  v146 = v59;
  v60 = objc_autoreleasePoolPush();
  v61 = selfCopy;
  v62 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
  {
    v63 = HMFGetLogIdentifier();
    *buf = 138545154;
    v156 = v63;
    v157 = 2112;
    v158 = v146;
    v159 = 2112;
    v160 = v150;
    v161 = 2112;
    v162 = v153;
    v163 = 2112;
    v164 = v151;
    v165 = 2112;
    v166 = v42;
    v167 = 2112;
    v168 = v52;
    v169 = 2112;
    v170 = v148;
    _os_log_impl(&dword_2531F8000, v62, OS_LOG_TYPE_INFO, "%{public}@_sessionPlaybackStateUpdated, %@, p:%@ s:%@ r:%@ v:%@ m:%@, requestMessageID: %@", buf, 0x52u);
  }

  objc_autoreleasePoolPop(v60);
  if (v58)
  {
    if (selfCopy && (v154 & 1) != 0)
    {
      v64 = [(HMDMediaProfile *)v61 payloadForUpdatedPlaybackState:v150 shuffleStateNumber:v153 repeatStateNumber:v151 volume:v42 mediaUniqueIdentifier:v52];
      notificationCenter = [(HMDMediaProfile *)v61 notificationCenter];
      [notificationCenter postNotificationName:@"HMDMediaProfileHasMediaSessionStateChangedNotificationName" object:v61 userInfo:v64];
    }

    v136 = v6;
    if (clients || v154 == 1)
    {
      if (selfCopy)
      {
        v66 = v148;
        v67 = [(HMDMediaProfile *)v61 payloadForUpdatedPlaybackState:v150 shuffleStateNumber:v153 repeatStateNumber:v151 volume:v42 mediaUniqueIdentifier:v52];
        v68 = MEMORY[0x277D0F848];
        v69 = *MEMORY[0x277CD0940];
        v70 = [v67 copy];
        v71 = [v68 entitledMessageWithName:v69 identifier:v66 messagePayload:v70];

        v72 = objc_alloc(MEMORY[0x277D0F820]);
        uniqueIdentifier2 = [(HMDAccessoryProfile *)v61 uniqueIdentifier];
        v74 = [v72 initWithTarget:uniqueIdentifier2];
        [v71 setDestination:v74];

        msgDispatcher = [(HMDAccessoryProfile *)v61 msgDispatcher];
        v76 = [v71 copy];
        [msgDispatcher sendMessage:v76];
      }

      v77 = v154;
      v6 = v136;
    }

    else
    {
      v77 = 0;
    }

    v78 = v137;
    if (v150)
    {
      v78 = 1;
    }

    if (v42)
    {
      v78 = 1;
    }

    if (v52)
    {
      v78 = 1;
    }

    if (v153)
    {
      v78 = 1;
    }

    if (v151)
    {
      v78 = 1;
    }

    if (v77)
    {
      if (v78)
      {
        isCurrentAccessory = [v145 isCurrentAccessory];
        if (v145)
        {
          if (isCurrentAccessory && home && selfCopy)
          {
            v80 = MEMORY[0x277CD1700];
            v138 = home;
            v141 = v145;
            v81 = v144;
            v133 = [v80 alloc];
            mediaUniqueIdentifier2 = [(HMDMediaSessionState *)v81 mediaUniqueIdentifier];
            volume3 = [(HMDMediaSessionState *)v81 volume];
            [volume3 doubleValue];
            v84 = v83;
            playbackState = [(HMDMediaSessionState *)v81 playbackState];
            shuffleState = [(HMDMediaSessionState *)v81 shuffleState];
            repeatState = [(HMDMediaSessionState *)v81 repeatState];

            v134 = [v133 initWithMediaIdentifier:mediaUniqueIdentifier2 volume:playbackState playbackState:shuffleState shuffleState:repeatState repeatState:v84];
            [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
            v89 = v88;
            v90 = objc_alloc(MEMORY[0x277D174B0]);
            uuid = [v141 uuid];
            uUIDString2 = [uuid UUIDString];
            v130 = [v90 initWithSource:uUIDString2 cachePolicy:2 combineType:2 timestamp:v89];

            v93 = objc_alloc(MEMORY[0x277D174A0]);
            protoData = [v134 protoData];
            v128 = [v93 initWithEventData:protoData metadata:v130];

            v95 = MEMORY[0x277CD16F0];
            v96 = *MEMORY[0x277CCEA68];
            uuid2 = [v138 uuid];

            uuid3 = [v141 uuid];

            v99 = [v95 topicFromSuffixID:v96 homeUUID:uuid2 accessoryUUID:uuid3];

            v6 = v136;
            eventForwarder = [(HMDMediaProfile *)v61 eventForwarder];
            [eventForwarder forwardEvent:v128 topic:v99 completion:0];
          }
        }
      }
    }

    if (!v147 || ([home primaryResident], v101 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v101, "device"), v102 = objc_claimAutoreleasedReturnValue(), v103 = objc_msgSend(v102, "isCurrentDevice"), v102, v101, v103))
    {
      v104 = v150;
      v142 = v153;
      v105 = v151;
      v139 = v42;
      v131 = v52;
      v132 = v42;
      if (selfCopy)
      {
        v106 = objc_alloc_init(MEMORY[0x277CBEB18]);
        date = [MEMORY[0x277CBEAA8] date];
        v108 = v104;
        if (v104)
        {
          v109 = [HMDMediaPropertyRequest requestWithProperty:*MEMORY[0x277CD0938] mediaProfile:v61];
          v110 = [HMDMediaPropertyResponse responseWithRequest:v109 value:v104 updatedTime:date];
          [v106 addObject:v110];

          v104 = v108;
        }

        if (v142)
        {
          v111 = [HMDMediaPropertyRequest requestWithProperty:*MEMORY[0x277CD0990] mediaProfile:v61];
          v112 = [HMDMediaPropertyResponse responseWithRequest:v111 value:v142 updatedTime:date];
          [v106 addObject:v112];

          v104 = v108;
        }

        if (v105)
        {
          v113 = [HMDMediaPropertyRequest requestWithProperty:*MEMORY[0x277CD0960] mediaProfile:v61];
          v114 = [HMDMediaPropertyResponse responseWithRequest:v113 value:v105 updatedTime:date];
          [v106 addObject:v114];

          v104 = v108;
        }

        if (v139)
        {
          v115 = [HMDMediaPropertyRequest requestWithProperty:*MEMORY[0x277CD09B0] mediaProfile:v61];
          v116 = [HMDMediaPropertyResponse responseWithRequest:v115 value:v139 updatedTime:date];
          [v106 addObject:v116];

          v104 = v108;
        }

        v117 = v131;
        if (v131)
        {
          v118 = [HMDMediaPropertyRequest requestWithProperty:*MEMORY[0x277CD0920] mediaProfile:v61];
          v119 = [HMDMediaPropertyResponse responseWithRequest:v118 value:v131 updatedTime:date];
          [v106 addObject:v119];
        }

        v120 = [v106 copy];

        v122 = v139;
        v121 = v142;
      }

      else
      {
        v120 = 0;
        v122 = v139;
        v121 = v142;
        v117 = v131;
      }

      v6 = v136;
      if ([v120 count])
      {
        v123 = [v120 copy];
        [home notifyRemoteUsersOfChangedProperties:v123 requestMessageInformation:v147];
      }

      v42 = v132;
    }
  }

  v124 = *MEMORY[0x277D85DE8];
}

- (id)payloadForUpdatedPlaybackState:(void *)state shuffleStateNumber:(void *)number repeatStateNumber:(void *)stateNumber volume:(void *)volume mediaUniqueIdentifier:
{
  v11 = MEMORY[0x277CBEB38];
  volumeCopy = volume;
  stateNumberCopy = stateNumber;
  numberCopy = number;
  stateCopy = state;
  v16 = a2;
  v17 = [[v11 alloc] initWithCapacity:7];
  uniqueIdentifier = [self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  [v17 setValue:uUIDString forKey:*MEMORY[0x277CD09A8]];

  [v17 setValue:v16 forKey:*MEMORY[0x277CD0938]];
  [v17 setValue:stateCopy forKey:*MEMORY[0x277CD0990]];

  [v17 setValue:numberCopy forKey:*MEMORY[0x277CD0960]];
  [v17 setValue:stateNumberCopy forKey:*MEMORY[0x277CD09B0]];

  [v17 setValue:volumeCopy forKey:*MEMORY[0x277CD0920]];
  v20 = [v17 copy];

  return v20;
}

- (void)updateWithResponses:(id)responses requestMessageInformation:(id)information
{
  v20 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  informationCopy = information;
  if ([responsesCopy count])
  {
    workQueue = [(HMDAccessoryProfile *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__HMDMediaProfile_updateWithResponses_requestMessageInformation___block_invoke;
    block[3] = &unk_279734960;
    v15 = responsesCopy;
    selfCopy = self;
    v17 = informationCopy;
    dispatch_async(workQueue, block);
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Skipping updating media profile due to empty response array", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __65__HMDMediaProfile_updateWithResponses_requestMessageInformation___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 32);
      *buf = 138543618;
      v41 = v5;
      v42 = 2112;
      v43 = v6;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Updating media profile with responses %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
  }

  v8 = MEMORY[0x277CBEB38];
  v9 = [v7 count];
  if (*(a1 + 48))
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = v9;
  }

  [v8 dictionaryWithCapacity:v10];
  v33 = v32 = a1;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = *(a1 + 32);
  v11 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v36;
    v15 = *MEMORY[0x277CD0910];
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v36 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v35 + 1) + 8 * i);
        v18 = [v17 request];
        v19 = [v18 property];
        v20 = +[HMDMediaSession mediaPropertyMessageKeys];
        v21 = [v20 containsObject:v19];

        if (v21)
        {
          v22 = [v17 value];
          [HMDMediaSession mediaPropertyValueTypeWithMessageKey:v19];
          if (objc_opt_isKindOfClass())
          {
            v23 = v22;
          }

          else
          {
            v23 = 0;
          }

          [v33 setValue:v23 forKey:v19];
        }

        v24 = [v18 property];
        v25 = [v24 isEqual:v15];

        if (v25)
        {
          v26 = [v17 value];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = v26;
          }

          else
          {
            v27 = 0;
          }

          v28 = v27;

          v13 = v28;
        }
      }

      v12 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  if ([v33 count])
  {
    [v33 setValue:*(v32 + 48) forKey:*MEMORY[0x277CD0968]];
    [v33 setValue:v13 forKey:*MEMORY[0x277CD0910]];
    v29 = *(v32 + 40);
    v30 = [v33 copy];
    [v29 _sessionPlaybackStateUpdated:v30 notifyXPCClients:1];
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_handleMediaResponses:(id)responses message:(id)message
{
  responsesCopy = responses;
  messageCopy = message;
  workQueue = [(HMDAccessoryProfile *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__HMDMediaProfile__handleMediaResponses_message___block_invoke;
  block[3] = &unk_279734960;
  v12 = responsesCopy;
  selfCopy = self;
  v14 = messageCopy;
  v9 = messageCopy;
  v10 = responsesCopy;
  dispatch_async(workQueue, block);
}

void __49__HMDMediaProfile__handleMediaResponses_message___block_invoke(uint64_t a1)
{
  v1 = a1;
  v54 = *MEMORY[0x277D85DE8];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = *(a1 + 32);
  v35 = [obj countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (!v35)
  {
    goto LABEL_26;
  }

  v36 = *v47;
  v34 = *MEMORY[0x277CD0968];
  v2 = *MEMORY[0x277CD0938];
  v39 = *MEMORY[0x277CD0910];
  v31 = v1;
  do
  {
    for (i = 0; i != v35; ++i)
    {
      if (*v47 != v36)
      {
        objc_enumerationMutation(obj);
      }

      v4 = *(*(&v46 + 1) + 8 * i);
      v5 = [v4 firstObject];
      v6 = [v5 request];
      v7 = [v6 mediaProfile];
      v8 = [v7 uniqueIdentifier];
      v9 = [*(v1 + 40) uniqueIdentifier];
      v10 = [v8 isEqual:v9];

      if (!v10)
      {
        goto LABEL_24;
      }

      v33 = i;
      v40 = v5;
      v11 = [[HMDMediaSessionRequestMessageInformation alloc] initWithMessage:*(v1 + 48)];
      v51 = v34;
      v52 = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      v41 = [v12 mutableCopy];

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v13 = v4;
      v14 = [v13 countByEnumeratingWithState:&v42 objects:v50 count:16];
      if (!v14)
      {

        goto LABEL_23;
      }

      v15 = v14;
      v32 = v11;
      v38 = 0;
      v16 = *v43;
      while (2)
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v43 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v42 + 1) + 8 * j);
          v19 = [v18 request];
          v20 = [v19 property];
          v21 = [v20 isEqual:v2];

          if (v21)
          {
            v22 = [v18 error];
            if (v22)
            {

LABEL_28:
              v28 = *(v31 + 48);
              v29 = [v18 error];
              [v28 respondWithError:v29];

              goto LABEL_29;
            }

            v23 = [v18 value];

            if (!v23)
            {
              goto LABEL_28;
            }

            v38 = 1;
            v24 = v2;
          }

          else
          {
            v25 = [v19 property];
            v24 = v39;
            v26 = [v25 isEqual:v39];

            if (!v26)
            {
              goto LABEL_18;
            }
          }

          v27 = [v18 value];
          [v41 setObject:v27 forKey:v24];

LABEL_18:
        }

        v15 = [v13 countByEnumeratingWithState:&v42 objects:v50 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }

      v1 = v31;
      v11 = v32;
      if (v38)
      {
        [*(v31 + 40) _sessionPlaybackStateUpdated:v41 notifyXPCClients:1];
      }

LABEL_23:

      v5 = v40;
      i = v33;
LABEL_24:
    }

    v35 = [obj countByEnumeratingWithState:&v46 objects:v53 count:16];
  }

  while (v35);
LABEL_26:

  [*(v1 + 48) respondWithSuccess];
LABEL_29:
  v30 = *MEMORY[0x277D85DE8];
}

- (void)_handleMediaSessionSetAudioControl:(id)control
{
  controlCopy = control;
  if (![(HMDMediaProfile *)self _updateAudioControl:?])
  {
    v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
    [controlCopy respondWithError:v4];
  }
}

- (BOOL)_updateAudioControl:(id)control
{
  v15 = *MEMORY[0x277D85DE8];
  controlCopy = control;
  mediaSession = [(HMDMediaProfile *)self mediaSession];
  v6 = mediaSession;
  if (mediaSession)
  {
    [mediaSession handleMediaSessionSetAudioControl:controlCopy];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@No session for mediaProfile", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6 != 0;
}

- (void)_handleRefreshPlayback:(id)playback
{
  playbackCopy = playback;
  if (![(HMDMediaProfile *)self _updateRefreshPlayback:?])
  {
    v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
    [playbackCopy respondWithError:v4];
  }
}

- (BOOL)_updateRefreshPlayback:(id)playback
{
  playbackCopy = playback;
  mediaSession = [(HMDMediaProfile *)self mediaSession];
  isConnected = [mediaSession isConnected];
  if (isConnected)
  {
    [mediaSession handleRefreshPlayback:playbackCopy];
  }

  return isConnected;
}

- (void)_handleSetPlayback:(id)playback
{
  playbackCopy = playback;
  if (![(HMDMediaProfile *)self _updatePlayback:?])
  {
    v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
    [playbackCopy respondWithError:v4];
  }
}

- (BOOL)_updatePlayback:(id)playback
{
  playbackCopy = playback;
  mediaSession = [(HMDMediaProfile *)self mediaSession];
  isConnected = [mediaSession isConnected];
  if (isConnected)
  {
    [mediaSession handleSetPlayback:playbackCopy];
  }

  return isConnected;
}

- (void)setMediaSession:(id)session
{
  sessionCopy = session;
  os_unfair_lock_lock_with_options();
  mediaSession = self->_mediaSession;
  if ((HMFEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_mediaSession, session);
  }

  os_unfair_lock_unlock(&self->_lock.lock);
}

- (HMDMediaSession)mediaSession
{
  os_unfair_lock_lock_with_options();
  v3 = self->_mediaSession;
  os_unfair_lock_unlock(&self->_lock.lock);

  return v3;
}

- (HMEEventForwarder)eventForwarder
{
  v16 = *MEMORY[0x277D85DE8];
  accessory = [(HMDAccessoryProfile *)self accessory];
  home = [accessory home];
  eventForwarder = [home eventForwarder];

  if (!eventForwarder)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = accessory;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unable to get event forwarder for accessory: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return eventForwarder;
}

- (void)unregisterForNotifications
{
  notificationCenter = [(HMDMediaProfile *)self notificationCenter];
  [notificationCenter removeObserver:self name:@"HMDMediaSessionDidUpdatePlaybackStateNotification" object:0];

  notificationCenter2 = [(HMDMediaProfile *)self notificationCenter];
  [notificationCenter2 removeObserver:self name:*MEMORY[0x277D27E30] object:0];
}

- (void)registerForNotifications
{
  notificationCenter = [(HMDMediaProfile *)self notificationCenter];
  [notificationCenter addObserver:self selector:sel_handleSessionPlaybackStateUpdatedNotification_ name:@"HMDMediaSessionDidUpdatePlaybackStateNotification" object:0];

  notificationCenter2 = [(HMDMediaProfile *)self notificationCenter];
  [notificationCenter2 addObserver:self selector:sel_handleSessionVolumeUpdatedNotification_ name:*MEMORY[0x277D27E30] object:0];
}

- (void)registerForMessages
{
  v11[2] = *MEMORY[0x277D85DE8];
  [(HMDMediaProfile *)self unregisterForNotifications];
  [(HMDMediaProfile *)self registerForNotifications];
  accessory = [(HMDAccessoryProfile *)self accessory];
  home = [accessory home];
  v10.receiver = self;
  v10.super_class = HMDMediaProfile;
  [(HMDAccessoryProfile *)&v10 registerForMessages];
  msgDispatcher = [(HMDAccessoryProfile *)self msgDispatcher];
  v6 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v11[0] = v6;
  v7 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:0];
  v11[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];

  [msgDispatcher registerForMessage:*MEMORY[0x277CD0980] receiver:self policies:v8 selector:sel__handleSetPlayback_];
  [msgDispatcher registerForMessage:*MEMORY[0x277CD0950] receiver:self policies:v8 selector:sel__handleRefreshPlayback_];
  [msgDispatcher registerForMessage:*MEMORY[0x277CD0978] receiver:self policies:v8 selector:sel__handleMediaSessionSetAudioControl_];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)configureWithMessageDispatcher:(id)dispatcher configurationTracker:(id)tracker
{
  dispatcherCopy = dispatcher;
  trackerCopy = tracker;
  v8 = trackerCopy;
  if (trackerCopy)
  {
    dispatch_group_enter(trackerCopy);
  }

  workQueue = [(HMDAccessoryProfile *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HMDMediaProfile_configureWithMessageDispatcher_configurationTracker___block_invoke;
  block[3] = &unk_279734960;
  v13 = dispatcherCopy;
  v14 = v8;
  selfCopy = self;
  v10 = v8;
  v11 = dispatcherCopy;
  dispatch_async(workQueue, block);
}

void __71__HMDMediaProfile_configureWithMessageDispatcher_configurationTracker___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v5.receiver = *(a1 + 48);
  v5.super_class = HMDMediaProfile;
  objc_msgSendSuper2(&v5, sel_configureWithMessageDispatcher_configurationTracker_, v3, v2);
  v4 = *(a1 + 40);
  if (v4)
  {
    dispatch_group_leave(v4);
  }
}

- (HMDMediaProfile)initWithAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v5 = [objc_opt_class() uniqueIdentifierFromAccessory:accessoryCopy];
  v6 = [(HMDAccessoryProfile *)self initWithAccessory:accessoryCopy uniqueIdentifier:v5 services:0];

  return v6;
}

- (HMDMediaProfile)initWithAccessory:(id)accessory uniqueIdentifier:(id)identifier services:(id)services workQueue:(id)queue
{
  v10 = MEMORY[0x277CCAB98];
  queueCopy = queue;
  servicesCopy = services;
  identifierCopy = identifier;
  accessoryCopy = accessory;
  defaultCenter = [v10 defaultCenter];
  v16 = [(HMDMediaProfile *)self initWithAccessory:accessoryCopy uniqueIdentifier:identifierCopy services:servicesCopy workQueue:queueCopy notificationCenter:defaultCenter];

  return v16;
}

- (HMDMediaProfile)initWithAccessory:(id)accessory uniqueIdentifier:(id)identifier services:(id)services workQueue:(id)queue notificationCenter:(id)center
{
  centerCopy = center;
  v17.receiver = self;
  v17.super_class = HMDMediaProfile;
  v14 = [(HMDAccessoryProfile *)&v17 initWithAccessory:accessory uniqueIdentifier:identifier services:services workQueue:queue];
  v15 = v14;
  if (v14)
  {
    v14->_lock.lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v14->_notificationCenter, center);
  }

  return v15;
}

- (NSString)mediaRouteID
{
  accessory = [(HMDAccessoryProfile *)self accessory];
  identifier = [accessory identifier];

  return identifier;
}

+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver
{
  v28[2] = *MEMORY[0x277D85DE8];
  dispatcherCopy = dispatcher;
  messageCopy = message;
  receiverCopy = receiver;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = receiverCopy;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  accessory = [v12 accessory];
  home = [accessory home];

  v15 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v28[0] = v15;
  v16 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:0];
  v28[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];

  name = [messageCopy name];
  LODWORD(v16) = [name isEqualToString:*MEMORY[0x277CD0980]];

  name2 = [messageCopy name];
  name4 = name2;
  if (v16)
  {
    goto LABEL_6;
  }

  v21 = [name2 isEqualToString:*MEMORY[0x277CD0950]];

  name3 = [messageCopy name];
  name4 = name3;
  if (v21)
  {
    goto LABEL_6;
  }

  v26 = [name3 isEqualToString:*MEMORY[0x277CD0978]];

  if (v26)
  {
    name4 = [messageCopy name];
LABEL_6:
    v23 = HMFCreateMessageBinding();

    goto LABEL_7;
  }

  v27.receiver = self;
  v27.super_class = &OBJC_METACLASS___HMDMediaProfile;
  v23 = objc_msgSendSuper2(&v27, sel_messageBindingForDispatcher_message_receiver_, dispatcherCopy, messageCopy, receiverCopy);
LABEL_7:

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_166869 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_166869, &__block_literal_global_15_166870);
  }

  v3 = logCategory__hmf_once_v1_166871;

  return v3;
}

uint64_t __30__HMDMediaProfile_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_166871;
  logCategory__hmf_once_v1_166871 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)uniqueIdentifierFromAccessory:(id)accessory
{
  uuid = [accessory uuid];
  v5 = [self uniqueIdentifierFromAccessoryUUID:uuid];

  return v5;
}

+ (id)uniqueIdentifierFromAccessoryUUID:(id)d
{
  v3 = MEMORY[0x277CBEB28];
  dCopy = d;
  v5 = [v3 dataWithLength:16];
  [dCopy getUUIDBytes:{objc_msgSend(v5, "mutableBytes")}];

  v6 = MEMORY[0x277CCAD78];
  namespace = [objc_opt_class() namespace];
  v8 = [v6 hmf_UUIDWithNamespace:namespace data:v5];

  return v8;
}

+ (id)sessionNamespace
{
  if (sessionNamespace_onceToken != -1)
  {
    dispatch_once(&sessionNamespace_onceToken, &__block_literal_global_12_166876);
  }

  v3 = sessionNamespace_sessionNamespace;

  return v3;
}

uint64_t __35__HMDMediaProfile_sessionNamespace__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"B93C6A7F-75EF-4A55-B3BC-8C09CACC301C"];
  v1 = sessionNamespace_sessionNamespace;
  sessionNamespace_sessionNamespace = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)namespace
{
  if (namespace_onceToken_166881 != -1)
  {
    dispatch_once(&namespace_onceToken_166881, &__block_literal_global_166882);
  }

  v3 = namespace_namespace_166883;

  return v3;
}

uint64_t __28__HMDMediaProfile_namespace__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"7B3B12CE-F1D8-49D9-A573-4AB2D944B077"];
  v1 = namespace_namespace_166883;
  namespace_namespace_166883 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end