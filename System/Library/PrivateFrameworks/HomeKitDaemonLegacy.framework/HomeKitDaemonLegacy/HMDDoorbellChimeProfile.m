@interface HMDDoorbellChimeProfile
+ (id)messageBindingForDispatcher:(id)a3 message:(id)a4 receiver:(id)a5;
- (HMDDoorbellChimeProfile)initWithAppleMediaAccessory:(id)a3;
- (id)doorbellMessagePayloadWithChimeMode:(int64_t)a3 chimeDate:(id)a4 personIdentificationText:(id)a5 accessoryUUID:(id)a6;
- (void)handleDoorbellChimeMessage:(id)a3;
- (void)registerForMessages;
- (void)sendDoorbellChimeMessageWithChimeMode:(int64_t)a3 chimeDate:(id)a4 personIdentificationText:(id)a5 accessoryUUID:(id)a6;
@end

@implementation HMDDoorbellChimeProfile

- (id)doorbellMessagePayloadWithChimeMode:(int64_t)a3 chimeDate:(id)a4 personIdentificationText:(id)a5 accessoryUUID:(id)a6
{
  v9 = MEMORY[0x277CBEB38];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [v9 dictionary];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v13 setObject:v14 forKeyedSubscript:*MEMORY[0x277CCFCF0]];

  [v13 setObject:v12 forKeyedSubscript:*MEMORY[0x277CCFCE0]];
  [v13 setObject:v11 forKeyedSubscript:*MEMORY[0x277CCFCF8]];

  v15 = [v10 UUIDString];

  [v13 setObject:v15 forKeyedSubscript:*MEMORY[0x277CCFCD8]];
  v16 = [v13 copy];

  return v16;
}

- (void)handleDoorbellChimeMessage:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryProfile *)self accessory];
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
    if ([v7 isCurrentAccessory])
    {
      v8 = [v4 messagePayload];
      v9 = [MEMORY[0x277CBEB38] dictionary];
      v10 = *MEMORY[0x277CCFCF0];
      v11 = [v8 hmf_numberForKey:*MEMORY[0x277CCFCF0]];
      [v9 setObject:v11 forKeyedSubscript:v10];

      v12 = *MEMORY[0x277CCFCE0];
      v13 = [v8 hmf_dateForKey:*MEMORY[0x277CCFCE0]];
      [v9 setObject:v13 forKeyedSubscript:v12];

      v14 = *MEMORY[0x277CCFCF8];
      v15 = [v8 hmf_stringForKey:*MEMORY[0x277CCFCF8]];
      [v9 setObject:v15 forKeyedSubscript:v14];

      v16 = *MEMORY[0x277CCFCD8];
      v17 = [v8 hmf_UUIDForKey:*MEMORY[0x277CCFCD8]];
      [v9 setObject:v17 forKeyedSubscript:v16];

      v18 = objc_alloc(MEMORY[0x277D0F818]);
      v19 = *MEMORY[0x277CCFCE8];
      v20 = objc_alloc(MEMORY[0x277D0F820]);
      v21 = [(HMDAccessoryProfile *)self uniqueIdentifier];
      v22 = [v20 initWithTarget:v21];
      v23 = [v18 initWithName:v19 destination:v22 payload:v9];

      v24 = objc_autoreleasePoolPush();
      v25 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = HMFGetLogIdentifier();
        v28 = [v7 uuid];
        v37 = 138543618;
        v38 = v27;
        v39 = 2112;
        v40 = v28;
        _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Notifying framework to chime on current accessory - %@", &v37, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      v29 = [(HMDAccessoryProfile *)v25 msgDispatcher];
      [v29 sendMessage:v23];

      v30 = [MEMORY[0x277CCAB98] defaultCenter];
      v31 = [v9 copy];
      [v30 postNotificationName:@"HMDDoorbellShouldChimeNotification" object:v25 userInfo:v31];
    }

    else
    {
      v32 = objc_autoreleasePoolPush();
      v33 = self;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = HMFGetLogIdentifier();
        v37 = 138543362;
        v38 = v35;
        _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@Asked to chime on non-current accessory", &v37, 0xCu);
      }

      objc_autoreleasePoolPop(v32);
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)sendDoorbellChimeMessageWithChimeMode:(int64_t)a3 chimeDate:(id)a4 personIdentificationText:(id)a5 accessoryUUID:(id)a6
{
  v57 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v46 = a5;
  v11 = a6;
  v12 = [(HMDAccessoryProfile *)self accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (!v14)
  {
    goto LABEL_22;
  }

  os_unfair_lock_lock_with_options();
  if ([(HMDDoorbellChimeProfile *)self lastChimeMode]== a3)
  {
    v15 = [(HMDDoorbellChimeProfile *)self lastChimeDate];
    if (v15)
    {
      v16 = [(HMDDoorbellChimeProfile *)self lastChimeDate];
      [v10 timeIntervalSinceDate:v16];
      if (fabs(v17) < 1.0 && ([(HMDDoorbellChimeProfile *)self lastPersonIdentificationText], v18 = objc_claimAutoreleasedReturnValue(), v19 = HMFEqualObjects(), v18, v19))
      {
        v20 = [(HMDDoorbellChimeProfile *)self lastAccessoryUUID];
        v21 = [v11 hmf_isEqualToUUID:v20];

        if (v21)
        {
          v22 = objc_autoreleasePoolPush();
          v23 = self;
          v24 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = HMFGetLogIdentifier();
            *buf = 138544386;
            v48 = v25;
            v49 = 2048;
            v50 = a3;
            v51 = 2112;
            v52 = v10;
            v53 = 2112;
            v54 = v46;
            v55 = 2112;
            v56 = v11;
            _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Ignoring chime (mode: %ld) that is duplicate of previous chime, date: %@, text: %@, accessoryUUID: %@", buf, 0x34u);
          }

          objc_autoreleasePoolPop(v22);
          os_unfair_lock_unlock(&self->_lock);
          goto LABEL_22;
        }
      }

      else
      {
      }
    }
  }

  [(HMDDoorbellChimeProfile *)self setLastChimeMode:a3];
  [(HMDDoorbellChimeProfile *)self setLastChimeDate:v10];
  [(HMDDoorbellChimeProfile *)self setLastPersonIdentificationText:v46];
  [(HMDDoorbellChimeProfile *)self setLastAccessoryUUID:v11];
  os_unfair_lock_unlock(&self->_lock);
  v26 = [(HMDDoorbellChimeProfile *)self doorbellMessagePayloadWithChimeMode:a3 chimeDate:v10 personIdentificationText:v46 accessoryUUID:v11];
  if ([v14 isCurrentAccessory])
  {
    v27 = objc_alloc(MEMORY[0x277D0F818]);
    v28 = objc_alloc(MEMORY[0x277D0F820]);
    v29 = [(HMDAccessoryProfile *)self uniqueIdentifier];
    v30 = *MEMORY[0x277CCFCE8];
    v31 = [v28 initWithTarget:v29];
    v32 = [v27 initWithName:v30 destination:v31 payload:v26];

    [(HMDDoorbellChimeProfile *)self handleDoorbellChimeMessage:v32];
  }

  else
  {
    v33 = [v14 device];
    if (v33)
    {
      v34 = [HMDRemoteDeviceMessageDestination alloc];
      v35 = [(HMDAccessoryProfile *)self uniqueIdentifier];
      v36 = [(HMDRemoteDeviceMessageDestination *)v34 initWithTarget:v35 device:v33];

      v37 = [HMDRemoteMessage alloc];
      v45 = [(HMDRemoteMessage *)v37 initWithName:*MEMORY[0x277CCFCE8] destination:v36 payload:v26];
      context = objc_autoreleasePoolPush();
      v38 = self;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = HMFGetLogIdentifier();
        v41 = [v14 uuid];
        *buf = 138543618;
        v48 = v40;
        v49 = 2112;
        v50 = v41;
        _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@Notifying remote device to chime - %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(context);
      v42 = [(HMDAccessoryProfile *)v38 msgDispatcher];
      [v42 sendMessage:v45];
    }
  }

LABEL_22:
  v43 = *MEMORY[0x277D85DE8];
}

- (void)registerForMessages
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryProfile *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDAccessoryProfile *)self accessory];
  v5 = [v4 home];
  v6 = v5;
  if (v4 && v5)
  {
    if ([v4 isCurrentAccessory])
    {
      v7 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
      v8 = [HMDUserMessagePolicy userMessagePolicyWithHome:v6 userPrivilege:3 remoteAccessRequired:0];
      v9 = [(HMDAccessoryProfile *)self msgDispatcher];
      v10 = *MEMORY[0x277CCFCE8];
      v17[0] = v7;
      v17[1] = v8;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
      [v9 registerForMessage:v10 receiver:self policies:v11 selector:sel_handleDoorbellChimeMessage_];
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Accessory or home is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (HMDDoorbellChimeProfile)initWithAppleMediaAccessory:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAD78];
  v5 = a3;
  v6 = [v5 uuid];
  v14[0] = @"33D815E0-BC5F-4CF3-BB38-BC185A8C53ED";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v8 = [v4 hm_deriveUUIDFromBaseUUID:v6 withSalts:v7];

  v9 = [v5 workQueue];
  v13.receiver = self;
  v13.super_class = HMDDoorbellChimeProfile;
  v10 = [(HMDAccessoryProfile *)&v13 initWithAccessory:v5 uniqueIdentifier:v8 services:0 workQueue:v9];

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (id)messageBindingForDispatcher:(id)a3 message:(id)a4 receiver:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
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
  if ([v13 isCurrentAccessory])
  {
    v29 = v8;
    v15 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
    v16 = [HMDUserMessagePolicy userMessagePolicyWithHome:v14 userPrivilege:3 remoteAccessRequired:0];
    v17 = [v9 name];
    v18 = [v17 isEqualToString:*MEMORY[0x277CCFCE8]];

    if (v18)
    {
      v19 = [v9 name];
      v32[0] = v15;
      v32[1] = v16;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
      v21 = HMFCreateMessageBinding();

      v8 = v29;
    }

    else
    {
      v31.receiver = a1;
      v31.super_class = &OBJC_METACLASS___HMDDoorbellChimeProfile;
      v8 = v29;
      v21 = objc_msgSendSuper2(&v31, sel_messageBindingForDispatcher_message_receiver_, v29, v9, v10);
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = a1;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      [v9 name];
      v26 = v30 = v8;
      *buf = 138543874;
      v34 = v25;
      v35 = 2112;
      v36 = v26;
      v37 = 2112;
      v38 = v10;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Not going to handle the message [%@] as this is not the current accessory %@", buf, 0x20u);

      v8 = v30;
    }

    objc_autoreleasePoolPop(v22);
    v21 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v21;
}

@end