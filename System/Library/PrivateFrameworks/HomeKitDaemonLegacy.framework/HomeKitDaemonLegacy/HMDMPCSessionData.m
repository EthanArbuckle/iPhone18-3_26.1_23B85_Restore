@interface HMDMPCSessionData
- (BOOL)playbackArchiveTargetsSystemMediaApplication;
- (HMDMPCSessionData)initWithDictionaryRepresentation:(id)a3 profileSource:(id)a4;
- (HMDMPCSessionData)initWithMediaAction:(id)a3 source:(id)a4 clientName:(id)a5;
- (HMDMPCSessionData)initWithMediaProfiles:(id)a3 playbackState:(id)a4 playbackVolume:(id)a5 playbackArchive:(id)a6 source:(id)a7 clientName:(id)a8;
- (id)dictionaryRepresentation:(BOOL)a3;
@end

@implementation HMDMPCSessionData

- (BOOL)playbackArchiveTargetsSystemMediaApplication
{
  v2 = [(HMDMPCSessionData *)self playbackArchive];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    v4 = [v3 hasPrefix:@"com.apple.Music"];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)dictionaryRepresentation:(BOOL)a3
{
  v3 = a3;
  v56 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [(HMDMPCSessionData *)self mediaProfiles];
  v7 = [v6 na_map:&__block_literal_global_130626];
  v8 = [v7 allObjects];

  [v5 setObject:v8 forKeyedSubscript:@"HMDMAR.mediaProfiles"];
  v9 = [(HMDMPCSessionData *)self playbackStateNumber];
  [v5 setObject:v9 forKeyedSubscript:@"HMDMAR.state"];

  v10 = [(HMDMPCSessionData *)self playbackVolumeNumber];
  [v5 setObject:v10 forKeyedSubscript:@"HMDMAR.volume"];

  v11 = [(HMDMPCSessionData *)self source];
  [v5 setObject:v11 forKeyedSubscript:@"HMDMAR.actionSource"];

  v12 = [(HMDMPCSessionData *)self clientName];
  [v5 setObject:v12 forKeyedSubscript:@"HMDMAR.actionClientName"];

  v13 = [(HMDMPCSessionData *)self playbackArchive];

  if (v13)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [(HMDMPCSessionData *)v15 playbackArchive];
      *buf = 138543618;
      v53 = v17;
      v54 = 2112;
      v55 = v18;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Encoding playbackArchive: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v19 = objc_autoreleasePoolPush();
    v20 = v15;
    v21 = HMFGetOSLogHandle();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
    if (v3)
    {
      if (v22)
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v53 = v23;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Encoding playbackArchive in entirety", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      v24 = MEMORY[0x277CCAAB0];
      v25 = [(HMDMPCSessionData *)v20 playbackArchive];
      v51 = 0;
      v26 = [v24 archivedDataWithRootObject:v25 requiringSecureCoding:1 error:&v51];
      v27 = v51;

      if (v26)
      {
        [v5 setObject:v26 forKeyedSubscript:@"HMDMAR.archive"];
      }

      else
      {
        v44 = objc_autoreleasePoolPush();
        v45 = v20;
        v46 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v47 = HMFGetLogIdentifier();
          *buf = 138543618;
          v53 = v47;
          v54 = 2112;
          v55 = v27;
          _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_ERROR, "%{public}@Couldn't encode playbackArchive: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v44);
      }
    }

    else
    {
      if (v22)
      {
        v28 = HMFGetLogIdentifier();
        v29 = [(HMDMPCSessionData *)v20 playbackArchive];
        *buf = 138543618;
        v53 = v28;
        v54 = 2112;
        v55 = v29;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Encoding playbackArchive session identifier: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v30 = [(HMDMPCSessionData *)v20 playbackArchive];
      v31 = [v30 playbackSessionIdentifier];
      [v5 setObject:v31 forKeyedSubscript:@"HMDMAR.pbsid"];

      v32 = [(HMDMPCSessionData *)v20 playbackArchive];
      v33 = [v32 supportedOptions];

      v34 = 0;
      v35 = 1;
      do
      {
        v36 = [(HMDMPCSessionData *)v20 playbackArchive];
        v37 = [v36 BOOLValueForOption:v35 - 1];

        v34 |= v37 << (v35 - 1);
      }

      while (v33 >> v35++);
      v39 = objc_autoreleasePoolPush();
      v40 = v20;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = HMFGetLogIdentifier();
        v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v34];
        *buf = 138543618;
        v53 = v42;
        v54 = 2112;
        v55 = v43;
        _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_INFO, "%{public}@Encoding playbackArchive options: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v39);
      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v34];
      [v5 setObject:v27 forKeyedSubscript:@"HMDMAR.pbao"];
    }
  }

  v48 = [v5 copy];

  v49 = *MEMORY[0x277D85DE8];

  return v48;
}

id __46__HMDMPCSessionData_dictionaryRepresentation___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 uniqueIdentifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (HMDMPCSessionData)initWithMediaAction:(id)a3 source:(id)a4 clientName:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  if ([v8 state])
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "state")}];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v8 mediaProfiles];
  v13 = [v8 volume];
  v14 = [v8 playbackArchive];
  v15 = [(HMDMPCSessionData *)self initWithMediaProfiles:v12 playbackState:v11 playbackVolume:v13 playbackArchive:v14 source:v10 clientName:v9];

  return v15;
}

- (HMDMPCSessionData)initWithDictionaryRepresentation:(id)a3 profileSource:(id)a4
{
  v87 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v66 = v5;
  v7 = [v5 hmf_arrayForKey:@"HMDMAR.mediaProfiles"];
  v8 = v6;
  v9 = v7;
  v70 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v9, "count")}];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v73 objects:v81 count:16];
  v68 = v8;
  if (v10)
  {
    v11 = v10;
    v12 = *v74;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v74 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v73 + 1) + 8 * i);
        v15 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v14];
        v16 = [v8 mediaProfileWithUUID:v15];
        if (v16)
        {
          [v70 addObject:v16];
        }

        else
        {
          v17 = objc_autoreleasePoolPush();
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = HMFGetLogIdentifier();
            *buf = 138543618;
            v78 = v19;
            v79 = 2112;
            v80 = v14;
            _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Could not map profile UUID (%@) to MediaProfile", buf, 0x16u);

            v8 = v68;
          }

          objc_autoreleasePoolPop(v17);
        }
      }

      v11 = [obj countByEnumeratingWithState:&v73 objects:v81 count:16];
    }

    while (v11);
  }

  v67 = [v70 copy];
  v64 = [v66 hmf_numberForKey:@"HMDMAR.state"];
  v63 = [v66 hmf_numberForKey:@"HMDMAR.volume"];
  v20 = [v66 hmf_dataForKey:@"HMDMAR.archive"];
  v21 = [v66 hmf_stringForKey:@"HMDMAR.pbsid"];
  v22 = [v66 hmf_numberForKey:@"HMDMAR.actionSource"];
  v23 = v22;
  v24 = &unk_286629230;
  if (v22)
  {
    v24 = v22;
  }

  v62 = v24;

  v25 = [v66 hmf_stringForKey:@"HMDMAR.actionClientName"];
  v26 = v25;
  v27 = @"Unknown";
  if (v25)
  {
    v27 = v25;
  }

  v28 = v27;

  v71 = v21;
  if (v20)
  {
    v29 = objc_autoreleasePoolPush();
    v30 = self;
    v31 = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = HMFGetLogIdentifier();
      *v81 = 138543618;
      v82 = v33;
      v83 = 2112;
      v84 = v20;
      _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Decoding playbackArchive in entirety: %@", v81, 0x16u);

      v8 = v68;
    }

    objc_autoreleasePoolPop(v29);
    v72 = 0;
    v34 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v20 error:&v72];
    v35 = v72;
    if (!v34)
    {
      v36 = objc_autoreleasePoolPush();
      v37 = v31;
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = HMFGetLogIdentifier();
        *v81 = 138543618;
        v82 = v39;
        v83 = 2112;
        v84 = v35;
        _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@Couldn't decode playbackArchive: %@", v81, 0x16u);
      }

      objc_autoreleasePoolPop(v36);
      v8 = v68;
    }
  }

  else
  {
    v40 = objc_autoreleasePoolPush();
    v30 = self;
    v41 = self;
    v42 = HMFGetOSLogHandle();
    v43 = os_log_type_enabled(v42, OS_LOG_TYPE_INFO);
    if (v21)
    {
      if (v43)
      {
        v44 = HMFGetLogIdentifier();
        *v81 = 138543618;
        v82 = v44;
        v83 = 2112;
        v84 = v21;
        _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@Decoding playbackArchive session identifier: %@", v81, 0x16u);
      }

      objc_autoreleasePoolPop(v40);
      v61 = [v8 home];
      v34 = [v61 playbackArchiveWithSessionIdentifier:v21];
      if (v34)
      {
        v45 = [v66 hmf_numberForKey:@"HMDMAR.pbao"];
        v46 = [v45 unsignedIntegerValue];

        v47 = 1;
        do
        {
          [v34 setBOOLValue:(v46 >> (v47 - 1)) & 1 forOption:?];
        }

        while (v46 >> v47++);
        context = objc_autoreleasePoolPush();
        v49 = v41;
        v50 = HMFGetOSLogHandle();
        v51 = v61;
        if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          v52 = HMFGetLogIdentifier();
          v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v46];
          *v81 = 138543874;
          v82 = v52;
          v83 = 2112;
          v84 = v34;
          v85 = 2112;
          v86 = v53;
          _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_INFO, "%{public}@Decoding playbackArchive: %@ options: %@", v81, 0x20u);
        }

        v8 = v68;
      }

      else
      {
        context = objc_autoreleasePoolPush();
        v55 = v41;
        v50 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          v56 = HMFGetLogIdentifier();
          *v81 = 138543618;
          v82 = v56;
          v83 = 2112;
          v51 = v61;
          v84 = v61;
          _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_ERROR, "%{public}@Couldn't decode playbackArchive session identifier. home %@", v81, 0x16u);
        }

        else
        {
          v51 = v61;
        }
      }

      objc_autoreleasePoolPop(context);
    }

    else
    {
      if (v43)
      {
        v54 = HMFGetLogIdentifier();
        *v81 = 138543362;
        v82 = v54;
        _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@Key to playbackArchive not found", v81, 0xCu);
      }

      objc_autoreleasePoolPop(v40);
      v34 = 0;
    }
  }

  v57 = [(HMDMPCSessionData *)v30 initWithMediaProfiles:v67 playbackState:v64 playbackVolume:v63 playbackArchive:v34 source:v62 clientName:v28];

  v58 = *MEMORY[0x277D85DE8];
  return v57;
}

- (HMDMPCSessionData)initWithMediaProfiles:(id)a3 playbackState:(id)a4 playbackVolume:(id)a5 playbackArchive:(id)a6 source:(id)a7 clientName:(id)a8
{
  v43 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v37 = a7;
  v36 = a8;
  if (![v15 count])
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v40 = v22;
      v23 = "%{public}@No media profiles";
      goto LABEL_9;
    }

LABEL_10:

    objc_autoreleasePoolPop(v19);
    v24 = 0;
    goto LABEL_16;
  }

  if (!v16 && !v17 && !v18)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v40 = v22;
      v23 = "%{public}@No action contained in HMDMPCSessionData";
LABEL_9:
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, v23, buf, 0xCu);

      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v38.receiver = self;
  v38.super_class = HMDMPCSessionData;
  v25 = [(HMDMPCSessionData *)&v38 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_mediaProfiles, a3);
    objc_storeStrong(&v26->_playbackStateNumber, a4);
    objc_storeStrong(&v26->_playbackVolumeNumber, a5);
    v27 = [v18 copyWithOptions:12];
    playbackArchive = v26->_playbackArchive;
    v26->_playbackArchive = v27;

    objc_storeStrong(&v26->_source, a7);
    objc_storeStrong(&v26->_clientName, a8);
    v29 = objc_autoreleasePoolPush();
    v30 = v26;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      v33 = v26->_playbackArchive;
      *buf = 138543618;
      v40 = v32;
      v41 = 2112;
      v42 = v33;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@HMDMPCSessionData initialized with playbackArchive: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v29);
  }

  v20 = v26;
  v24 = v20;
LABEL_16:

  v34 = *MEMORY[0x277D85DE8];
  return v24;
}

@end