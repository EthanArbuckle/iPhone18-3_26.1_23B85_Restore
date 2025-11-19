@interface HMDMediaProfile
+ (id)logCategory;
+ (id)messageBindingForDispatcher:(id)a3 message:(id)a4 receiver:(id)a5;
+ (id)namespace;
+ (id)sessionNamespace;
+ (id)uniqueIdentifierFromAccessory:(id)a3;
+ (id)uniqueIdentifierFromAccessoryUUID:(id)a3;
- (BOOL)_updateAudioControl:(id)a3;
- (BOOL)_updatePlayback:(id)a3;
- (BOOL)_updateRefreshPlayback:(id)a3;
- (HMDMediaProfile)initWithAccessory:(id)a3;
- (HMDMediaProfile)initWithAccessory:(id)a3 uniqueIdentifier:(id)a4 services:(id)a5 workQueue:(id)a6;
- (HMDMediaProfile)initWithAccessory:(id)a3 uniqueIdentifier:(id)a4 services:(id)a5 workQueue:(id)a6 notificationCenter:(id)a7;
- (HMDMediaSession)mediaSession;
- (HMEEventForwarder)eventForwarder;
- (NSDictionary)assistantObject;
- (NSString)description;
- (NSString)mediaRouteID;
- (NSString)urlString;
- (id)parseAndSetPlaybackStateFromResponsePayload:(id)a3 mediaSessionState:(id)a4 outDidUpdateMediaSessionState:(BOOL *)a5;
- (id)payloadForUpdatedPlaybackState:(void *)a3 shuffleStateNumber:(void *)a4 repeatStateNumber:(void *)a5 volume:(void *)a6 sleepWakeStateNumber:(void *)a7 mediaUniqueIdentifier:;
- (void)_handleMediaResponses:(id)a3 message:(id)a4;
- (void)_handleMediaSessionSetAudioControl:(id)a3;
- (void)_handleRefreshPlayback:(id)a3;
- (void)_handleSetPlayback:(id)a3;
- (void)_handleSetValue:(id)a3 withRequestProperty:(id)a4 withCompletionHandler:(id)a5;
- (void)_sessionPlaybackStateUpdated:(id)a3 notifyXPCClients:(BOOL)a4;
- (void)configureWithMessageDispatcher:(id)a3 configurationTracker:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)handleSessionPlaybackStateUpdatedNotification:(id)a3;
- (void)handleSessionUpdatedNotification:(id)a3;
- (void)handleSessionVolumeUpdatedNotification:(id)a3;
- (void)handleSetValue:(id)a3 withRequestProperty:(id)a4 withCompletionHandler:(id)a5;
- (void)registerForMessages;
- (void)registerForNotifications;
- (void)sessionAudioControlUpdated:(id)a3;
- (void)setMediaSession:(id)a3;
- (void)unregisterForNotifications;
- (void)updateWithResponses:(id)a3 requestMessageInformation:(id)a4;
@end

@implementation HMDMediaProfile

- (NSDictionary)assistantObject
{
  v70[2] = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryProfile *)self accessory];
  v4 = [v3 name];
  v5 = [v3 home];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 name];

    if (v7)
    {
      if (v4)
      {
        v8 = objc_alloc(MEMORY[0x277CBEB38]);
        v64[0] = *MEMORY[0x277D48170];
        v63[0] = @"objectType";
        v63[1] = @"objectIdentifier";
        v9 = [(HMDMediaProfile *)self urlString];
        v64[1] = v9;
        v63[2] = @"objectHome";
        v10 = [v6 name];
        v64[2] = v10;
        v63[3] = @"objectHomeIdentifier";
        v11 = [v6 urlString];
        v64[3] = v11;
        v64[4] = self;
        v63[4] = @"objectReference";
        v63[5] = @"objectName";
        v59 = v4;
        v64[5] = v4;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:6];
        v13 = [v8 initWithDictionary:v12];

        v14 = v3;
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

        v17 = [v14 category];
        v18 = [v17 categoryType];
        v19 = [v18 isEqual:*MEMORY[0x277CCE870]];

        v60 = v17;
        if (v19)
        {
          v20 = MEMORY[0x277D481C0];
          v21 = MEMORY[0x277D48270];
          goto LABEL_25;
        }

        v26 = [v17 categoryType];
        v27 = [v26 isEqual:*MEMORY[0x277CCE8B0]];

        if (v27)
        {
          v20 = MEMORY[0x277D48200];
        }

        else
        {
          v29 = [v17 categoryType];
          v30 = [v29 isEqual:*MEMORY[0x277CCE860]];

          if (v30)
          {
            v20 = MEMORY[0x277D481C0];
            v21 = MEMORY[0x277D48258];
            goto LABEL_25;
          }

          v31 = [v17 categoryType];
          v32 = [v31 isEqual:*MEMORY[0x277CCE900]];

          if ((v32 & 1) == 0)
          {
            v33 = [v16 siriEndpointProfile];

            if (!v33)
            {
              v38 = v16;
              v39 = objc_autoreleasePoolPush();
              v40 = self;
              v41 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
              {
                v42 = HMFGetLogIdentifier();
                *buf = 138543618;
                *&buf[4] = v42;
                *&buf[12] = 2112;
                *&buf[14] = v60;
                _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@MediaProfile with invalid accessory category: %@", buf, 0x16u);
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
          v36 = v17;
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
        v43 = [v14 name];
        [v13 setObject:v43 forKey:@"objectAccessory"];

        v44 = [v14 urlString];
        [v13 setObject:v44 forKey:@"objectAccessoryIdentifier"];

        v45 = v14;
        v46 = [v45 room];
        v47 = [v46 name];
        if (v47)
        {
          v57 = v34;
          v48 = v16;
          v49 = v13;
          v50 = [v45 home];
          v51 = [v50 name];
          v52 = [v47 isEqualToString:v51];

          if (v52)
          {
            v53 = 0;
          }

          else
          {
            *buf = v47;
            v70[0] = @"objectRoom";
            v70[1] = @"objectRoomIdentifier";
            v54 = [v46 urlString];
            *&buf[8] = v54;
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

        v4 = v59;
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
      v25 = [v6 name];
    }

    else
    {
      v25 = 0;
    }

    *buf = 138544130;
    *&buf[4] = v24;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    v66 = 2112;
    v67 = v25;
    v68 = 2112;
    v69 = v4;
    _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Skipping because one of the properties of service is nil: service.accessory.home %@  service.accessory.home.name %@  service.name %@", buf, 0x2Au);
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
  v3 = [(HMDAccessoryProfile *)self uniqueIdentifier];
  v4 = hm_assistantIdentifier();

  return v4;
}

- (NSString)description
{
  v3 = [(HMDAccessoryProfile *)self accessory];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v3 name];
  v8 = [v3 identifier];
  v9 = [(HMDAccessoryProfile *)self uniqueIdentifier];
  v10 = [v4 stringWithFormat:@"%@<name %@ identifier %@ uniqueIdentifier %@>", v6, v7, v8, v9];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v23[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = HMDMediaProfile;
  [(HMDAccessoryProfile *)&v22 encodeWithCoder:v4];
  v5 = [MEMORY[0x277CBEB28] dataWithLength:16];
  v6 = [(HMDAccessoryProfile *)self uniqueIdentifier];
  [v6 getUUIDBytes:{objc_msgSend(v5, "mutableBytes")}];

  v7 = MEMORY[0x277CCAD78];
  v8 = +[HMDMediaProfile namespace];
  v9 = [v7 hmf_UUIDWithNamespace:v8 data:v5];

  v10 = [v9 UUIDString];
  [v4 encodeObject:v10 forKey:*MEMORY[0x277CD08E0]];

  v11 = [(HMDMediaProfile *)self mediaSession];
  v12 = [(HMDAccessoryProfile *)self accessory];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 home];
    v15 = [v13 identifier];
    v16 = [v14 mediaSessionStateWithIdentifier:v15];

    if (!v11 && v16)
    {
      if ([v4 hmd_isForXPCTransport])
      {
        v17 = [HMDMediaSession alloc];
        v23[0] = self;
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
        v11 = [(HMDMediaSession *)v17 initWithEndpoint:0 mediaProfiles:v18 state:v16];
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v16 = 0;
  }

  [v4 encodeObject:v11 forKey:*MEMORY[0x277CD08D8]];
  v19 = [v13 identifier];
  [v4 encodeObject:v19 forKey:*MEMORY[0x277CD08D0]];

  v20 = [(HMDMediaProfile *)self capability];
  [v4 encodeInteger:v20 forKey:*MEMORY[0x277CD08C8]];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)sessionAudioControlUpdated:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v30 = a3;
  v4 = [v30 userInfo];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v32 = v8;
    v33 = 2112;
    v34 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@sessionAudioControlUpdated %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD0968]];
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

  v12 = [v11 messageIdentifier];
  v13 = *MEMORY[0x277CD0908];
  v14 = [v4 hmf_numberForKey:*MEMORY[0x277CD0908]];
  v15 = *MEMORY[0x277CD08F0];
  v16 = [v4 hmf_numberForKey:*MEMORY[0x277CD08F0]];
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
  v20 = v6;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138543362;
    v32 = v22;
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Notify clients of updated audio control state", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v19);
  v23 = [MEMORY[0x277D0F848] entitledMessageWithName:*MEMORY[0x277CD08F8] identifier:v12 messagePayload:v18];
  v24 = objc_alloc(MEMORY[0x277D0F820]);
  v25 = [(HMDAccessoryProfile *)v20 uniqueIdentifier];
  v26 = [v24 initWithTarget:v25];
  [v23 setDestination:v26];

  v27 = [(HMDAccessoryProfile *)v20 msgDispatcher];
  v28 = [v23 copy];
  [v27 sendMessage:v28 completionHandler:0];

  v29 = *MEMORY[0x277D85DE8];
}

- (void)handleSessionVolumeUpdatedNotification:(id)a3
{
  v38[8] = *MEMORY[0x277D85DE8];
  v4 = [a3 userInfo];
  v5 = [(HMDMediaProfile *)self mediaSession];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277D27E28]];

  v7 = [v5 uuid];
  v8 = [v7 UUIDString];
  v9 = v8;
  if (!v8 || !v6)
  {

LABEL_10:
    goto LABEL_11;
  }

  IsLocalOrigin = MROriginIsLocalOrigin();

  if (IsLocalOrigin)
  {
    v7 = [v4 hmf_numberForKey:*MEMORY[0x277D27E38]];
    if (v7)
    {
      v11 = [v5 state];

      if (v11)
      {
        v12 = [v5 state];
        v13 = [v12 mediaUniqueIdentifier];
        v14 = v13;
        v15 = &stru_283CF9D50;
        if (v13)
        {
          v15 = v13;
        }

        v16 = v15;

        v37[0] = *MEMORY[0x277CD09A8];
        v36 = [v5 uuid];
        v35 = [v36 UUIDString];
        v38[0] = v35;
        v37[1] = *MEMORY[0x277CD0938];
        v17 = MEMORY[0x277CCABB0];
        v34 = [v5 state];
        v33 = [v17 numberWithInteger:{objc_msgSend(v34, "playbackState")}];
        v38[1] = v33;
        v37[2] = *MEMORY[0x277CD0990];
        v18 = MEMORY[0x277CCABB0];
        v32 = [v5 state];
        v31 = [v18 numberWithInteger:{objc_msgSend(v32, "shuffleState")}];
        v38[2] = v31;
        v37[3] = *MEMORY[0x277CD0960];
        v19 = MEMORY[0x277CCABB0];
        v20 = [v5 state];
        v21 = [v19 numberWithInteger:{objc_msgSend(v20, "repeatState")}];
        v22 = *MEMORY[0x277CD09B0];
        v38[3] = v21;
        v38[4] = v7;
        v23 = *MEMORY[0x277CD0920];
        v37[4] = v22;
        v37[5] = v23;
        v38[5] = v16;
        v38[6] = MEMORY[0x277CBEC38];
        v24 = v16;
        v25 = *MEMORY[0x277CD09A0];
        v37[6] = @"force-notify";
        v37[7] = v25;
        v26 = MEMORY[0x277CCABB0];
        v27 = [v5 state];
        v28 = [v26 numberWithUnsignedInteger:{objc_msgSend(v27, "sleepWakeState")}];
        v38[7] = v28;
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:8];

        [(HMDMediaProfile *)self handleSessionUpdatedNotification:v29];
      }
    }

    goto LABEL_10;
  }

LABEL_11:

  v30 = *MEMORY[0x277D85DE8];
}

- (void)handleSessionPlaybackStateUpdatedNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 mutableCopy];

  [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"session-state-changed"];
  [(HMDMediaProfile *)self handleSessionUpdatedNotification:v5];
}

- (void)handleSessionUpdatedNotification:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 hmf_stringForKey:*MEMORY[0x277CD09A8]];
  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5];
  v7 = [(HMDMediaProfile *)self mediaSession];
  v8 = [v7 uuid];
  v9 = HMFEqualObjects();

  if (v9)
  {
    LODWORD(v10) = [v4 hmf_BOOLForKey:@"force-notify"];
    v11 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD0968]];
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
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = &stru_283CF9D50;
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
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Got a playback state update for media session %@%@", &v27, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    [(HMDMediaProfile *)v15 _sessionPlaybackStateUpdated:v4 notifyXPCClients:v10];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [(HMDMediaProfile *)v20 mediaSession];
      v24 = [v23 uuid];
      v25 = [v24 UUIDString];
      v27 = 138544130;
      v28 = v22;
      v29 = 2112;
      v30 = v5;
      v31 = 2112;
      v32 = v25;
      v33 = 2112;
      v34 = v4;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Media session %@ playback notification does not match our media session:%@ ui:%@", &v27, 0x2Au);
    }

    objc_autoreleasePoolPop(v19);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_handleSetValue:(id)a3 withRequestProperty:(id)a4 withCompletionHandler:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [(HMDAccessoryProfile *)v12 accessory];
    *buf = 138543618;
    v24 = v14;
    v25 = 2112;
    v26 = v15;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@The accessory %@ does not support _handleSetValue:", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  if (v10)
  {
    v16 = [HMDMediaPropertyRequest requestWithProperty:v9 mediaProfile:v12];
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v18 = [HMDMediaPropertyResponse responseWithRequest:v16 error:v17];

    v22 = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
    v20 = [HMDMediaPropertyResponse serializeResponses:v19];
    v10[2](v10, 0, v20);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handleSetValue:(id)a3 withRequestProperty:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDAccessoryProfile *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __76__HMDMediaProfile_handleSetValue_withRequestProperty_withCompletionHandler___block_invoke;
  v15[3] = &unk_278689AB8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (id)parseAndSetPlaybackStateFromResponsePayload:(id)a3 mediaSessionState:(id)a4 outDidUpdateMediaSessionState:(BOOL *)a5
{
  v7 = a4;
  v8 = [a3 hmf_numberForKey:*MEMORY[0x277CD0938]];
  v9 = [v8 unsignedIntegerValue];
  if (v8)
  {
    v10 = v9;
    if (v9 != [v7 playbackState])
    {
      [v7 setPlaybackState:v10];
      *a5 = 1;
    }
  }

  return v8;
}

- (void)_sessionPlaybackStateUpdated:(id)a3 notifyXPCClients:(BOOL)a4
{
  v178 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 hmf_numberForKey:@"session-state-changed"];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    [v6 BOOLValue];
    v11 = HMFBooleanToString();
    *buf = 138543618;
    v161 = v10;
    v162 = 2112;
    v163 = v11;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@_sessionPlaybackStateUpdated with HMDMediaProfileHasMediaSessionStateChangedKey: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  if (v6)
  {
    v12 = [v6 BOOLValue];
  }

  else
  {
    v12 = 0;
  }

  v159 = v12;
  v147 = [(HMDMediaProfile *)v8 mediaSession];
  v13 = [v147 state];
  v14 = [(HMDAccessoryProfile *)v8 accessory];
  v153 = [v14 home];
  v149 = v14;
  if (v13)
  {
    v141 = 0;
  }

  else
  {
    v15 = v14;
    if (v8)
    {
      v16 = [v5 hmf_stringForKey:*MEMORY[0x277CD0910]];
      v17 = [(HMDAccessoryProfile *)v8 uniqueIdentifier];
      v18 = [v17 UUIDString];
      v19 = [v16 isEqualToString:v18];

      if (v19)
      {
        v20 = [v15 identifier];

        v16 = v20;
      }
    }

    else
    {
      v16 = 0;
    }

    v13 = [v153 mediaSessionStateWithIdentifier:v16];
    v141 = v13 == 0;
    if (!v13)
    {
      v21 = v153;
      v22 = v15;
      v23 = v16;
      if (v8)
      {
        v24 = objc_autoreleasePoolPush();
        v25 = v8;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v27 = v139 = v6;
          [v22 identifier];
          v28 = v157 = v22;
          *buf = 138543874;
          v161 = v27;
          v162 = 2112;
          v163 = v23;
          v164 = 2112;
          v165 = v28;
          _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Creating a media session state for a remote session (sessionIdentifier %@; accessoryIdentifier %@) update", buf, 0x20u);

          v22 = v157;
          v6 = v139;
        }

        objc_autoreleasePoolPop(v24);
        v13 = [[HMDMediaSessionState alloc] initWithSessionIdentifier:v23];
        [v21 addMediaSessionState:v13];
      }

      else
      {
        v13 = 0;
      }

      v159 = 1;
    }
  }

  v154 = [(HMDMediaProfile *)v8 parseAndSetPlaybackStateFromResponsePayload:v5 mediaSessionState:v13 outDidUpdateMediaSessionState:&v159];
  v29 = v13;
  v30 = v29;
  v31 = MEMORY[0x277CD09B0];
  v32 = MEMORY[0x277CD0920];
  v33 = MEMORY[0x277CD09A0];
  if (v8)
  {
    v34 = [v5 hmf_numberForKey:*MEMORY[0x277CD0990]];
    v35 = [v34 unsignedIntegerValue];
    v156 = v34;
    if (v34)
    {
      v36 = v35;
      if (v35 != [(HMDMediaSessionState *)v30 shuffleState])
      {
        [(HMDMediaSessionState *)v30 setShuffleState:v36];
        v159 = 1;
      }
    }

    else
    {
      v156 = 0;
    }

    v37 = v30;
    v38 = [v5 hmf_numberForKey:*MEMORY[0x277CD0960]];
    v39 = [v38 unsignedIntegerValue];
    v155 = v38;
    if (v38)
    {
      v40 = v39;
      if (v39 != [(HMDMediaSessionState *)v37 repeatState])
      {
        [(HMDMediaSessionState *)v37 setRepeatState:v40];
        v159 = 1;
      }
    }

    else
    {
      v155 = 0;
    }

    v41 = v37;
    v158 = [v5 hmf_numberForKey:*v31];
    if (v158)
    {
      v42 = [(HMDMediaSessionState *)v41 volume];
      if (!v42)
      {
        goto LABEL_30;
      }

      v43 = v42;
      [v158 floatValue];
      v45 = v44;
      v46 = [(HMDMediaSessionState *)v41 volume];
      [v46 floatValue];
      v48 = vabds_f32(v45, v47);
      v49 = *MEMORY[0x277CD1F78];

      if (v48 > v49)
      {
LABEL_30:
        [(HMDMediaSessionState *)v41 setVolume:v158];
        v159 = 1;
      }
    }

    else
    {
      v158 = 0;
    }

    v50 = v41;
    v51 = [v5 hmf_stringForKey:*v32];
    if (v51)
    {
      v52 = [(HMDMediaSessionState *)v50 mediaUniqueIdentifier];
      v53 = [v51 isEqualToString:v52];

      if ((v53 & 1) == 0)
      {
        [(HMDMediaSessionState *)v50 setMediaUniqueIdentifier:v51];
        v159 = 1;
      }
    }

    v54 = v50;
    v55 = [v5 hmf_numberForKey:*v33];
    v56 = [v55 unsignedIntegerValue];
    if (v55)
    {
      v57 = v56;
      if (v56 != [(HMDMediaSessionState *)v54 sleepWakeState])
      {
        [(HMDMediaSessionState *)v54 setSleepWakeState:v57];
        v159 = 1;
      }
    }
  }

  else
  {

    v128 = v30;
    v129 = v128;

    v130 = v129;
    v131 = v130;
    v51 = 0;
    v155 = 0;
    v156 = 0;
    v158 = 0;
    v55 = 0;
  }

  v148 = v30;

  v58 = [v5 objectForKeyedSubscript:*MEMORY[0x277CD0968]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v59 = v58;
  }

  else
  {
    v59 = 0;
  }

  v60 = v59;

  [v60 messageIdentifier];
  v152 = v151 = v60;
  v61 = v159 | (v60 != 0);
  v62 = @", state has not changed so not notifying clients";
  if (v61)
  {
    v62 = @"state has changed, notifying clients";
  }

  v150 = v62;
  v63 = objc_autoreleasePoolPush();
  v64 = v8;
  v65 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
  {
    v66 = HMFGetLogIdentifier();
    *buf = 138545410;
    v161 = v66;
    v162 = 2112;
    v163 = v150;
    v164 = 2112;
    v165 = v154;
    v166 = 2112;
    v167 = v156;
    v168 = 2112;
    v169 = v155;
    v170 = 2112;
    v171 = v158;
    v172 = 2112;
    v173 = v51;
    v174 = 2112;
    v175 = v152;
    v176 = 2112;
    v177 = v55;
    _os_log_impl(&dword_229538000, v65, OS_LOG_TYPE_INFO, "%{public}@_sessionPlaybackStateUpdated, %@, p:%@ s:%@ r:%@ v:%@ m:%@, requestMessageID: %@, sleepWakeState: %@", buf, 0x5Cu);
  }

  objc_autoreleasePoolPop(v63);
  if (v61)
  {
    if (v8 && (v159 & 1) != 0)
    {
      v67 = [(HMDMediaProfile *)v64 payloadForUpdatedPlaybackState:v154 shuffleStateNumber:v156 repeatStateNumber:v155 volume:v158 sleepWakeStateNumber:v55 mediaUniqueIdentifier:v51];
      v68 = [(HMDMediaProfile *)v64 notificationCenter];
      [v68 postNotificationName:HMDMediaProfileHasMediaSessionStateChangedNotificationName object:v64 userInfo:v67];
    }

    v140 = v6;
    if (a4 || v159 == 1)
    {
      if (v8)
      {
        v69 = v152;
        v70 = [(HMDMediaProfile *)v64 payloadForUpdatedPlaybackState:v154 shuffleStateNumber:v156 repeatStateNumber:v155 volume:v158 sleepWakeStateNumber:v55 mediaUniqueIdentifier:v51];
        v71 = MEMORY[0x277D0F848];
        v72 = *MEMORY[0x277CD0940];
        v73 = [v70 copy];
        v74 = [v71 entitledMessageWithName:v72 identifier:v69 messagePayload:v73];

        v75 = objc_alloc(MEMORY[0x277D0F820]);
        v76 = [(HMDAccessoryProfile *)v64 uniqueIdentifier];
        v77 = [v75 initWithTarget:v76];
        [v74 setDestination:v77];

        v78 = [(HMDAccessoryProfile *)v64 msgDispatcher];
        v79 = [v74 copy];
        [v78 sendMessage:v79];
      }

      v80 = v159;
      v6 = v140;
    }

    else
    {
      v80 = 0;
    }

    v81 = v141;
    if (v154)
    {
      v81 = 1;
    }

    if (v158)
    {
      v81 = 1;
    }

    if (v51)
    {
      v81 = 1;
    }

    if (v156)
    {
      v81 = 1;
    }

    if (v155)
    {
      v81 = 1;
    }

    if (v80)
    {
      if (v81)
      {
        v82 = [v149 isCurrentAccessory];
        if (v149)
        {
          if (v82 && v153 && v8)
          {
            v83 = MEMORY[0x277CD1700];
            v142 = v153;
            v145 = v149;
            v84 = v148;
            v136 = [v83 alloc];
            v133 = [(HMDMediaSessionState *)v84 mediaUniqueIdentifier];
            v85 = [(HMDMediaSessionState *)v84 volume];
            [v85 doubleValue];
            v87 = v86;
            v88 = [(HMDMediaSessionState *)v84 playbackState];
            v89 = [(HMDMediaSessionState *)v84 shuffleState];
            v90 = [(HMDMediaSessionState *)v84 repeatState];

            v137 = [v136 initWithMediaIdentifier:v133 volume:v88 playbackState:v89 shuffleState:v90 repeatState:v87];
            [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
            v92 = v91;
            v93 = objc_alloc(MEMORY[0x277D174B0]);
            v94 = [v145 uuid];
            v95 = [v94 UUIDString];
            v134 = [v93 initWithSource:v95 cachePolicy:2 combineType:2 timestamp:v92];

            v96 = objc_alloc(MEMORY[0x277D174A0]);
            v97 = [v137 protoData];
            v132 = [v96 initWithEventData:v97 metadata:v134];

            v98 = MEMORY[0x277CD16F0];
            v99 = *MEMORY[0x277CCEA68];
            v100 = [v142 uuid];

            v101 = [v145 uuid];

            v102 = [v98 topicFromSuffixID:v99 homeUUID:v100 accessoryUUID:v101];

            v6 = v140;
            v103 = [(HMDMediaProfile *)v64 eventForwarder];
            [v103 forwardEvent:v132 topic:v102 completion:0];
          }
        }
      }
    }

    if (!v151 || ([v153 primaryResident], v104 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v104, "device"), v105 = objc_claimAutoreleasedReturnValue(), v106 = objc_msgSend(v105, "isCurrentDevice"), v105, v104, v106))
    {
      v107 = v154;
      v108 = v156;
      v146 = v155;
      v143 = v158;
      v138 = v55;
      v135 = v51;
      if (v8)
      {
        v109 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v110 = [MEMORY[0x277CBEAA8] date];
        v111 = v107;
        v112 = v108;
        if (v107)
        {
          v113 = [HMDMediaPropertyRequest requestWithProperty:*MEMORY[0x277CD0938] mediaProfile:v64];
          v114 = [HMDMediaPropertyResponse responseWithRequest:v113 value:v107 updatedTime:v110];
          [v109 addObject:v114];

          v107 = v111;
          v108 = v112;
        }

        if (v108)
        {
          v115 = [HMDMediaPropertyRequest requestWithProperty:*MEMORY[0x277CD0990] mediaProfile:v64];
          v116 = [HMDMediaPropertyResponse responseWithRequest:v115 value:v112 updatedTime:v110];
          [v109 addObject:v116];

          v107 = v111;
          v108 = v112;
        }

        if (v146)
        {
          v117 = [HMDMediaPropertyRequest requestWithProperty:*MEMORY[0x277CD0960] mediaProfile:v64];
          v118 = [HMDMediaPropertyResponse responseWithRequest:v117 value:v146 updatedTime:v110];
          [v109 addObject:v118];

          v107 = v111;
          v108 = v112;
        }

        if (v143)
        {
          v119 = [HMDMediaPropertyRequest requestWithProperty:*MEMORY[0x277CD09B0] mediaProfile:v64];
          v120 = [HMDMediaPropertyResponse responseWithRequest:v119 value:v143 updatedTime:v110];
          [v109 addObject:v120];

          v107 = v111;
          v108 = v112;
        }

        if (v135)
        {
          v121 = [HMDMediaPropertyRequest requestWithProperty:*MEMORY[0x277CD0920] mediaProfile:v64];
          v122 = [HMDMediaPropertyResponse responseWithRequest:v121 value:v135 updatedTime:v110];
          [v109 addObject:v122];

          v107 = v111;
          v108 = v112;
        }

        if (v138)
        {
          v123 = [HMDMediaPropertyRequest requestWithProperty:*MEMORY[0x277CD09A0] mediaProfile:v64];
          v124 = [HMDMediaPropertyResponse responseWithRequest:v123 value:v138 updatedTime:v110];
          [v109 addObject:v124];

          v107 = v111;
          v108 = v112;
        }

        v125 = [v109 copy];
      }

      else
      {
        v125 = 0;
      }

      v6 = v140;
      if ([v125 count])
      {
        v126 = [v125 copy];
        [v153 notifyRemoteUsersOfChangedProperties:v126 requestMessageInformation:v151];
      }
    }
  }

  v127 = *MEMORY[0x277D85DE8];
}

- (id)payloadForUpdatedPlaybackState:(void *)a3 shuffleStateNumber:(void *)a4 repeatStateNumber:(void *)a5 volume:(void *)a6 sleepWakeStateNumber:(void *)a7 mediaUniqueIdentifier:
{
  v13 = MEMORY[0x277CBEB38];
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = a2;
  v20 = [[v13 alloc] initWithCapacity:7];
  v21 = [a1 uniqueIdentifier];
  v22 = [v21 UUIDString];
  [v20 setValue:v22 forKey:*MEMORY[0x277CD09A8]];

  [v20 setValue:v19 forKey:*MEMORY[0x277CD0938]];
  [v20 setValue:v18 forKey:*MEMORY[0x277CD0990]];

  [v20 setValue:v17 forKey:*MEMORY[0x277CD0960]];
  [v20 setValue:v16 forKey:*MEMORY[0x277CD09B0]];

  [v20 setValue:v14 forKey:*MEMORY[0x277CD0920]];
  [v20 setValue:v15 forKey:*MEMORY[0x277CD09A0]];

  v23 = [v20 copy];

  return v23;
}

- (void)updateWithResponses:(id)a3 requestMessageInformation:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [(HMDAccessoryProfile *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__HMDMediaProfile_updateWithResponses_requestMessageInformation___block_invoke;
    block[3] = &unk_27868A010;
    v15 = v6;
    v16 = self;
    v17 = v7;
    dispatch_async(v8, block);
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Skipping updating media profile due to empty response array", buf, 0xCu);
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
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Updating media profile with responses %@", buf, 0x16u);
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

- (void)_handleMediaResponses:(id)a3 message:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessoryProfile *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__HMDMediaProfile__handleMediaResponses_message___block_invoke;
  block[3] = &unk_27868A010;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
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

- (void)_handleMediaSessionSetAudioControl:(id)a3
{
  v5 = a3;
  if (![(HMDMediaProfile *)self _updateAudioControl:?])
  {
    v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
    [v5 respondWithError:v4];
  }
}

- (BOOL)_updateAudioControl:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDMediaProfile *)self mediaSession];
  v6 = v5;
  if (v5)
  {
    [v5 handleMediaSessionSetAudioControl:v4];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@No session for mediaProfile", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6 != 0;
}

- (void)_handleRefreshPlayback:(id)a3
{
  v5 = a3;
  if (![(HMDMediaProfile *)self _updateRefreshPlayback:?])
  {
    v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
    [v5 respondWithError:v4];
  }
}

- (BOOL)_updateRefreshPlayback:(id)a3
{
  v4 = a3;
  v5 = [(HMDMediaProfile *)self mediaSession];
  v6 = [v5 isConnected];
  if (v6)
  {
    [v5 handleRefreshPlayback:v4];
  }

  return v6;
}

- (void)_handleSetPlayback:(id)a3
{
  v5 = a3;
  if (![(HMDMediaProfile *)self _updatePlayback:?])
  {
    v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
    [v5 respondWithError:v4];
  }
}

- (BOOL)_updatePlayback:(id)a3
{
  v4 = a3;
  v5 = [(HMDMediaProfile *)self mediaSession];
  v6 = [v5 isConnected];
  if (v6)
  {
    [v5 handleSetPlayback:v4];
  }

  return v6;
}

- (void)setMediaSession:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  mediaSession = self->_mediaSession;
  if ((HMFEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_mediaSession, a3);
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
  v3 = [(HMDAccessoryProfile *)self accessory];
  v4 = [v3 home];
  v5 = [v4 eventForwarder];

  if (!v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unable to get event forwarder for accessory: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)unregisterForNotifications
{
  v3 = [(HMDMediaProfile *)self notificationCenter];
  [v3 removeObserver:self name:@"HMDMediaSessionDidUpdatePlaybackStateNotification" object:0];

  v4 = [(HMDMediaProfile *)self notificationCenter];
  [v4 removeObserver:self name:*MEMORY[0x277D27E30] object:0];
}

- (void)registerForNotifications
{
  v3 = [(HMDMediaProfile *)self notificationCenter];
  [v3 addObserver:self selector:sel_handleSessionPlaybackStateUpdatedNotification_ name:@"HMDMediaSessionDidUpdatePlaybackStateNotification" object:0];

  v4 = [(HMDMediaProfile *)self notificationCenter];
  [v4 addObserver:self selector:sel_handleSessionVolumeUpdatedNotification_ name:*MEMORY[0x277D27E30] object:0];
}

- (void)registerForMessages
{
  v13[2] = *MEMORY[0x277D85DE8];
  [(HMDMediaProfile *)self unregisterForNotifications];
  [(HMDMediaProfile *)self registerForNotifications];
  v3 = [(HMDAccessoryProfile *)self accessory];
  v4 = [v3 home];
  v5 = [v4 featuresDataSource];
  v6 = [v5 isMessageBindingsEnabled];

  if ((v6 & 1) == 0)
  {
    v12.receiver = self;
    v12.super_class = HMDMediaProfile;
    [(HMDAccessoryProfile *)&v12 registerForMessages];
    v7 = [(HMDAccessoryProfile *)self msgDispatcher];
    v8 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v13[0] = v8;
    v9 = [HMDUserMessagePolicy userMessagePolicyWithHome:v4 userPrivilege:0 remoteAccessRequired:0];
    v13[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];

    [v7 registerForMessage:*MEMORY[0x277CD0980] receiver:self policies:v10 selector:sel__handleSetPlayback_];
    [v7 registerForMessage:*MEMORY[0x277CD0950] receiver:self policies:v10 selector:sel__handleRefreshPlayback_];
    [v7 registerForMessage:*MEMORY[0x277CD0978] receiver:self policies:v10 selector:sel__handleMediaSessionSetAudioControl_];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)configureWithMessageDispatcher:(id)a3 configurationTracker:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    dispatch_group_enter(v7);
  }

  v9 = [(HMDAccessoryProfile *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HMDMediaProfile_configureWithMessageDispatcher_configurationTracker___block_invoke;
  block[3] = &unk_27868A010;
  v13 = v6;
  v14 = v8;
  v15 = self;
  v10 = v8;
  v11 = v6;
  dispatch_async(v9, block);
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

- (HMDMediaProfile)initWithAccessory:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() uniqueIdentifierFromAccessory:v4];
  v6 = [(HMDAccessoryProfile *)self initWithAccessory:v4 uniqueIdentifier:v5 services:0];

  return v6;
}

- (HMDMediaProfile)initWithAccessory:(id)a3 uniqueIdentifier:(id)a4 services:(id)a5 workQueue:(id)a6
{
  v10 = MEMORY[0x277CCAB98];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v10 defaultCenter];
  v16 = [(HMDMediaProfile *)self initWithAccessory:v14 uniqueIdentifier:v13 services:v12 workQueue:v11 notificationCenter:v15];

  return v16;
}

- (HMDMediaProfile)initWithAccessory:(id)a3 uniqueIdentifier:(id)a4 services:(id)a5 workQueue:(id)a6 notificationCenter:(id)a7
{
  v13 = a7;
  v17.receiver = self;
  v17.super_class = HMDMediaProfile;
  v14 = [(HMDAccessoryProfile *)&v17 initWithAccessory:a3 uniqueIdentifier:a4 services:a5 workQueue:a6];
  v15 = v14;
  if (v14)
  {
    v14->_lock.lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v14->_notificationCenter, a7);
  }

  return v15;
}

- (NSString)mediaRouteID
{
  v2 = [(HMDAccessoryProfile *)self accessory];
  v3 = [v2 identifier];

  return v3;
}

+ (id)messageBindingForDispatcher:(id)a3 message:(id)a4 receiver:(id)a5
{
  v28[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  v13 = [v12 accessory];
  v14 = [v13 home];

  v15 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v28[0] = v15;
  v16 = [HMDUserMessagePolicy userMessagePolicyWithHome:v14 userPrivilege:0 remoteAccessRequired:0];
  v28[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];

  v18 = [v9 name];
  LODWORD(v16) = [v18 isEqualToString:*MEMORY[0x277CD0980]];

  v19 = [v9 name];
  v20 = v19;
  if (v16)
  {
    goto LABEL_6;
  }

  v21 = [v19 isEqualToString:*MEMORY[0x277CD0950]];

  v22 = [v9 name];
  v20 = v22;
  if (v21)
  {
    goto LABEL_6;
  }

  v26 = [v22 isEqualToString:*MEMORY[0x277CD0978]];

  if (v26)
  {
    v20 = [v9 name];
LABEL_6:
    v23 = HMFCreateMessageBinding();

    goto LABEL_7;
  }

  v27.receiver = a1;
  v27.super_class = &OBJC_METACLASS___HMDMediaProfile;
  v23 = objc_msgSendSuper2(&v27, sel_messageBindingForDispatcher_message_receiver_, v8, v9, v10);
LABEL_7:

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_245391 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_245391, &__block_literal_global_15_245392);
  }

  v3 = logCategory__hmf_once_v1_245393;

  return v3;
}

void __30__HMDMediaProfile_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_245393;
  logCategory__hmf_once_v1_245393 = v1;
}

+ (id)uniqueIdentifierFromAccessory:(id)a3
{
  v4 = [a3 uuid];
  v5 = [a1 uniqueIdentifierFromAccessoryUUID:v4];

  return v5;
}

+ (id)uniqueIdentifierFromAccessoryUUID:(id)a3
{
  v3 = MEMORY[0x277CBEB28];
  v4 = a3;
  v5 = [v3 dataWithLength:16];
  [v4 getUUIDBytes:{objc_msgSend(v5, "mutableBytes")}];

  v6 = MEMORY[0x277CCAD78];
  v7 = [objc_opt_class() namespace];
  v8 = [v6 hmf_UUIDWithNamespace:v7 data:v5];

  return v8;
}

+ (id)sessionNamespace
{
  if (sessionNamespace_onceToken != -1)
  {
    dispatch_once(&sessionNamespace_onceToken, &__block_literal_global_12_245398);
  }

  v3 = sessionNamespace_sessionNamespace;

  return v3;
}

void __35__HMDMediaProfile_sessionNamespace__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"B93C6A7F-75EF-4A55-B3BC-8C09CACC301C"];
  v1 = sessionNamespace_sessionNamespace;
  sessionNamespace_sessionNamespace = v0;
}

+ (id)namespace
{
  if (namespace_onceToken_245403 != -1)
  {
    dispatch_once(&namespace_onceToken_245403, &__block_literal_global_245404);
  }

  v3 = namespace_namespace_245405;

  return v3;
}

void __28__HMDMediaProfile_namespace__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"7B3B12CE-F1D8-49D9-A573-4AB2D944B077"];
  v1 = namespace_namespace_245405;
  namespace_namespace_245405 = v0;
}

@end