@interface HMDCameraVideoTierParameters
+ (id)logCategory;
- (BOOL)pickBestTier;
- (BOOL)pickHigherTier;
- (BOOL)pickLowerTier;
- (HMDCameraVideoTierParameters)initWithCoder:(id)a3;
- (HMDCameraVideoTierParameters)initWithSessionID:(id)a3 streamingTierType:(unint64_t)a4 maximumQuality:(int64_t)a5;
- (id)logIdentifier;
- (void)_generateAllVideoTiers;
- (void)encodeWithCoder:(id)a3;
- (void)selectInitialTierWithAspectRatio:(unint64_t)a3;
- (void)updateTierOrder:(id)a3;
- (void)updateTierParameters:(id)a3 firstPickedParameter:(id)a4;
@end

@implementation HMDCameraVideoTierParameters

- (id)logIdentifier
{
  v2 = [(HMDCameraVideoTierParameters *)self sessionID];
  v3 = [v2 description];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraVideoTierParameters *)self tierOrder];
  [v4 encodeObject:v5 forKey:@"kVideoTierOrder"];
}

- (HMDCameraVideoTierParameters)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HMDCameraVideoTierParameters;
  v5 = [(HMDCameraVideoTierParameters *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kVideoTierOrder"];
    tierOrder = v5->_tierOrder;
    v5->_tierOrder = v9;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)pickBestTier
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraVideoTierParameters *)self tierOrder];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __44__HMDCameraVideoTierParameters_pickBestTier__block_invoke;
  v22[3] = &unk_279730950;
  v22[4] = self;
  v4 = [v3 na_firstObjectPassingTest:v22];

  if (!v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [(HMDCameraVideoTierParameters *)v6 maximumQuality];
      *buf = 138543618;
      v24 = v8;
      v25 = 2048;
      v26 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@No tier available at or below maximum quality: %lu, selecting the lowest available tier", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v10 = [(HMDCameraVideoTierParameters *)v6 tierOrder];
    v4 = [v10 lastObject];
  }

  v11 = [(HMDCameraVideoTierParameters *)self currentPickedTier];
  v12 = [v11 isEqual:v4];

  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
  if (v12)
  {
    if (v16)
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v17;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Selected tier is the same as the current tier", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
  }

  else
  {
    if (v16)
    {
      v18 = HMFGetLogIdentifier();
      v19 = [(HMDCameraVideoTierParameters *)v14 currentPickedTier];
      *buf = 138543874;
      v24 = v18;
      v25 = 2114;
      v26 = v19;
      v27 = 2114;
      v28 = v4;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Updating the current picked tier from %{public}@ to %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    [(HMDCameraVideoTierParameters *)v14 setCurrentPickedTier:v4];
  }

  v20 = *MEMORY[0x277D85DE8];
  return v12 ^ 1;
}

- (BOOL)pickHigherTier
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraVideoTierParameters *)self currentPickedTier];
  v4 = [(HMDCameraVideoTierParameters *)self tierOrder];
  v5 = [v4 firstObject];
  v6 = [v3 isEqual:v5];

  if (!v6)
  {
    v12 = [(HMDCameraVideoTierParameters *)self tierOrder];
    v13 = [(HMDCameraVideoTierParameters *)self currentPickedTier];
    v14 = [v12 indexOfObject:v13];

    v15 = [(HMDCameraVideoTierParameters *)self tierOrder];
    v16 = [v15 objectAtIndex:v14 - 1];

    v17 = [v16 quality];
    v11 = v17 <= [(HMDCameraVideoTierParameters *)self maximumQuality];
    if (v11)
    {
      [(HMDCameraVideoTierParameters *)self setCurrentPickedTier:v16];
      v21 = objc_autoreleasePoolPush();
      v18 = self;
      v23 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
LABEL_12:

        objc_autoreleasePoolPop(v21);
        goto LABEL_13;
      }

      v19 = HMFGetLogIdentifier();
      v20 = [(HMDCameraVideoTierParameters *)v18 currentPickedTier];
      v27 = 138543618;
      v28 = v19;
      v29 = 2114;
      v30 = v20;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Setting a higher current picked tier to %{public}@", &v27, 0x16u);
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v22 = self;
      v23 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        goto LABEL_12;
      }

      v19 = HMFGetLogIdentifier();
      v27 = 138543618;
      v28 = v19;
      v29 = 2048;
      v30 = [(HMDCameraVideoTierParameters *)v22 maximumQuality];
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Already in the highest tier for maximum quality: %lu", &v27, 0x16u);
    }

    goto LABEL_12;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v27 = 138543362;
    v28 = v10;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Already in the highest tier", &v27, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  v11 = 0;
LABEL_13:
  v25 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)pickLowerTier
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraVideoTierParameters *)self currentPickedTier];
  v4 = [(HMDCameraVideoTierParameters *)self tierOrder];
  v5 = [v4 lastObject];
  v6 = [v3 isEqual:v5];

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Already in the lowest tier", &v21, 0xCu);
    }
  }

  else
  {
    v11 = [(HMDCameraVideoTierParameters *)self tierOrder];
    v12 = [(HMDCameraVideoTierParameters *)self currentPickedTier];
    v13 = [v11 indexOfObject:v12];

    v14 = [(HMDCameraVideoTierParameters *)self tierOrder];
    v15 = [v14 objectAtIndex:v13 + 1];
    [(HMDCameraVideoTierParameters *)self setCurrentPickedTier:v15];

    v7 = objc_autoreleasePoolPush();
    v16 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [(HMDCameraVideoTierParameters *)v16 currentPickedTier];
      v21 = 138543618;
      v22 = v17;
      v23 = 2114;
      v24 = v18;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Setting a lower current picked tier to %{public}@", &v21, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v7);
  v19 = *MEMORY[0x277D85DE8];
  return v6 ^ 1;
}

- (void)selectInitialTierWithAspectRatio:(unint64_t)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = [(HMDCameraVideoTierParameters *)self tierOrder];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __65__HMDCameraVideoTierParameters_selectInitialTierWithAspectRatio___block_invoke;
  v37[3] = &__block_descriptor_40_e28_B16__0__HMDCameraVideoTier_8l;
  v37[4] = a3;
  v6 = [v5 na_filter:v37];

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v39 = v10;
    v40 = 2112;
    v41 = v6;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Updating the tier order to %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [(HMDCameraVideoTierParameters *)v8 setTierOrder:v6];
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"initialStreamResolutionQuality", @"com.apple.homed", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v8;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v15;
      v40 = 2048;
      v41 = AppIntegerValue;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Initial stream resolution quality preference is set to: %lu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  else
  {
    v16 = [(HMDCameraVideoTierParameters *)v8 streamingTierType];
    if (v16 <= 4)
    {
      AppIntegerValue = qword_253D4C120[v16];
    }
  }

  v17 = [(HMDCameraVideoTierParameters *)v8 tierOrder];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __65__HMDCameraVideoTierParameters_selectInitialTierWithAspectRatio___block_invoke_73;
  v35[3] = &__block_descriptor_40_e28_B16__0__HMDCameraVideoTier_8l;
  v35[4] = AppIntegerValue;
  v18 = [v17 na_firstObjectPassingTest:v35];

  if (v18)
  {
    v19 = [v18 quality];
    if (v19 > [(HMDCameraVideoTierParameters *)v8 maximumQuality])
    {
      v20 = objc_autoreleasePoolPush();
      v21 = v8;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v39 = v23;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Selecting the best tier from the updated tier order", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      [(HMDCameraVideoTierParameters *)v21 pickBestTier];
      goto LABEL_20;
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = v8;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v27;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Selecting the lowest tier from the updated tier order", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    v28 = [(HMDCameraVideoTierParameters *)v25 tierOrder];
    v18 = [v28 lastObject];
  }

  [(HMDCameraVideoTierParameters *)v8 setCurrentPickedTier:v18];
  v29 = objc_autoreleasePoolPush();
  v30 = v8;
  v31 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = HMFGetLogIdentifier();
    v33 = [(HMDCameraVideoTierParameters *)v30 currentPickedTier];
    *buf = 138543618;
    v39 = v32;
    v40 = 2112;
    v41 = v33;
    _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Updated the current picked tier to %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v29);
LABEL_20:

  v34 = *MEMORY[0x277D85DE8];
}

BOOL __65__HMDCameraVideoTierParameters_selectInitialTierWithAspectRatio___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 videoResolution];
  v4 = [HMDStreamingCapabilities aspectRatioOfResolution:v3]== *(a1 + 32);

  return v4;
}

- (void)updateTierParameters:(id)a3 firstPickedParameter:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v6 tierOrder];
    v27 = 138543618;
    v28 = v11;
    v29 = 2112;
    v30 = v12;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating the tier order from selected parameters to %@", &v27, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [v6 tierOrder];
  [(HMDCameraVideoTierParameters *)v9 setTierOrder:v13];

  v14 = [v7 quality];
  if (v14 <= [(HMDCameraVideoTierParameters *)v9 maximumQuality])
  {
    [(HMDCameraVideoTierParameters *)v9 setCurrentPickedTier:v7];
    v21 = objc_autoreleasePoolPush();
    v22 = v9;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [(HMDCameraVideoTierParameters *)v22 currentPickedTier];
      v27 = 138543618;
      v28 = v24;
      v29 = 2112;
      v30 = v25;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Updated the current picked tier to %@", &v27, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v9;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [v7 quality];
      v20 = [(HMDCameraVideoTierParameters *)v16 maximumQuality];
      v27 = 138543874;
      v28 = v18;
      v29 = 2048;
      v30 = v19;
      v31 = 2048;
      v32 = v20;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Selected tier quality: %lu is higher than the maximum quality: %lu, selecting new tier", &v27, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    [(HMDCameraVideoTierParameters *)v16 pickBestTier];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)updateTierOrder:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v25 = [MEMORY[0x277CBEB18] array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v23 = self;
  obj = [(HMDCameraVideoTierParameters *)self tierOrder];
  v28 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v28)
  {
    v26 = *v34;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v34 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v33 + 1) + 8 * i);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v6 = v27;
        v7 = [v6 countByEnumeratingWithState:&v29 objects:v41 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v30;
          while (2)
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v30 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v29 + 1) + 8 * j);
              v12 = [v11 videoResolution];
              v13 = [v5 videoResolution];
              v14 = [v12 isEqual:v13];

              if (v14)
              {
                v15 = [v11 framerate];
                v16 = [v5 framerate];

                if (v15 < v16)
                {
                  v17 = [v11 framerate];
                  [v5 setFramerate:v17];
                }

                [v25 addObject:v5];
                goto LABEL_18;
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v29 objects:v41 count:16];
            if (v8)
            {
              continue;
            }

            break;
          }
        }

LABEL_18:
      }

      v28 = [obj countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v28);
  }

  v18 = objc_autoreleasePoolPush();
  v19 = v23;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543618;
    v38 = v21;
    v39 = 2112;
    v40 = v25;
    _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Updating the tier order from video attributes to %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  [(HMDCameraVideoTierParameters *)v19 setTierOrder:v25];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_generateAllVideoTiers
{
  v159 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [(HMDCameraVideoTierParameters *)self streamingTierType];
  if (v5 <= 1)
  {
    if (!v5)
    {
      v154 = self;
      v71 = [[HMDVideoResolution alloc] initWithResolution:11];
      v72 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v71 framerate:&unk_286629D88 minBitRate:&unk_286629DA0 maxBitRate:&unk_286629DB8 rtcpInterval:&unk_28662BEA8];
      [v3 setObject:v72 forKeyedSubscript:v71];
      [(NSArray *)v4 addObject:v72];
      v73 = [[HMDVideoResolution alloc] initWithResolution:23];
      v74 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v73 framerate:&unk_286629D88 minBitRate:&unk_286629DD0 maxBitRate:&unk_286629DE8 rtcpInterval:&unk_28662BEA8];
      v153 = v73;
      [v3 setObject:v74 forKeyedSubscript:v73];
      v152 = v74;
      [(NSArray *)v4 addObject:v74];
      v23 = [[HMDVideoResolution alloc] initWithResolution:7];
      v17 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v23 framerate:&unk_286629D88 minBitRate:&unk_286629DA0 maxBitRate:&unk_286629DB8 rtcpInterval:&unk_28662BEA8];
      [v3 setObject:v17 forKeyedSubscript:v23];
      [(NSArray *)v4 addObject:v17];
      v20 = [[HMDVideoResolution alloc] initWithResolution:1];
      v22 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v20 framerate:&unk_286629D88 minBitRate:&unk_286629DD0 maxBitRate:&unk_286629DE8 rtcpInterval:&unk_28662BEA8];
      [v3 setObject:v22 forKeyedSubscript:v20];
      [(NSArray *)v4 addObject:v22];
      v19 = [[HMDVideoResolution alloc] initWithResolution:27];
      v18 = v72;
      v16 = v71;
      v21 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v19 framerate:&unk_286629D88 minBitRate:&unk_286629E00 maxBitRate:&unk_286629E18 rtcpInterval:&unk_28662BEA8];
      [v3 setObject:v21 forKeyedSubscript:v19];
      [(NSArray *)v4 addObject:v21];
      goto LABEL_18;
    }

    if (v5 != 1)
    {
      goto LABEL_19;
    }

    v154 = self;
    v149 = [[HMDVideoResolution alloc] initWithResolution:13];
    v145 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v149 framerate:&unk_286629E30 minBitRate:&unk_286629E48 maxBitRate:&unk_286629E60 rtcpInterval:&unk_28662BEA8];
    [v3 setObject:v145 forKeyedSubscript:v149];
    [(NSArray *)v4 addObject:v145];
    v24 = [[HMDVideoResolution alloc] initWithResolution:12];
    v25 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v24 framerate:&unk_286629E30 minBitRate:&unk_286629E78 maxBitRate:&unk_286629E90 rtcpInterval:&unk_28662BEA8];
    v153 = v24;
    [v3 setObject:v25 forKeyedSubscript:v24];
    v152 = v25;
    [(NSArray *)v4 addObject:v25];
    v142 = [[HMDVideoResolution alloc] initWithResolution:11];
    v138 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v142 framerate:&unk_286629D88 minBitRate:&unk_286629DA0 maxBitRate:&unk_286629DB8 rtcpInterval:&unk_28662BEA8];
    [v3 setObject:v138 forKeyedSubscript:v142];
    [(NSArray *)v4 addObject:v138];
    v135 = [[HMDVideoResolution alloc] initWithResolution:20];
    v132 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v135 framerate:&unk_286629E30 minBitRate:&unk_286629E48 maxBitRate:&unk_286629EA8 rtcpInterval:&unk_28662BEA8];
    [v3 setObject:v132 forKeyedSubscript:v135];
    [(NSArray *)v4 addObject:v132];
    v129 = [[HMDVideoResolution alloc] initWithResolution:21];
    v125 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v129 framerate:&unk_286629E30 minBitRate:&unk_286629DB8 maxBitRate:&unk_286629EC0 rtcpInterval:&unk_28662BEA8];
    [v3 setObject:v125 forKeyedSubscript:v129];
    [(NSArray *)v4 addObject:v125];
    v122 = [[HMDVideoResolution alloc] initWithResolution:22];
    v120 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v122 framerate:&unk_286629D88 minBitRate:&unk_286629DA0 maxBitRate:&unk_286629DE8 rtcpInterval:&unk_28662BEA8];
    [v3 setObject:v120 forKeyedSubscript:v122];
    [(NSArray *)v4 addObject:v120];
    v118 = [[HMDVideoResolution alloc] initWithResolution:9];
    v116 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v118 framerate:&unk_286629E30 minBitRate:&unk_286629E48 maxBitRate:&unk_286629E60 rtcpInterval:&unk_28662BEA8];
    [v3 setObject:v116 forKeyedSubscript:v118];
    [(NSArray *)v4 addObject:v116];
    v114 = [[HMDVideoResolution alloc] initWithResolution:8];
    v112 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v114 framerate:&unk_286629E30 minBitRate:&unk_286629E78 maxBitRate:&unk_286629E90 rtcpInterval:&unk_28662BEA8];
    [v3 setObject:v112 forKeyedSubscript:v114];
    [(NSArray *)v4 addObject:v112];
    v110 = [[HMDVideoResolution alloc] initWithResolution:7];
    v108 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v110 framerate:&unk_286629D88 minBitRate:&unk_286629DA0 maxBitRate:&unk_286629DB8 rtcpInterval:&unk_28662BEA8];
    [v3 setObject:v108 forKeyedSubscript:v110];
    [(NSArray *)v4 addObject:v108];
    v106 = [[HMDVideoResolution alloc] initWithResolution:5];
    v104 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v106 framerate:&unk_286629E30 minBitRate:&unk_286629EC0 maxBitRate:&unk_286629ED8 rtcpInterval:&unk_28662BEA8];
    [v3 setObject:v104 forKeyedSubscript:v106];
    [(NSArray *)v4 addObject:v104];
    v102 = [[HMDVideoResolution alloc] initWithResolution:4];
    v100 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v102 framerate:&unk_286629E30 minBitRate:&unk_286629E48 maxBitRate:&unk_286629EA8 rtcpInterval:&unk_28662BEA8];
    [v3 setObject:v100 forKeyedSubscript:v102];
    [(NSArray *)v4 addObject:v100];
    v98 = [[HMDVideoResolution alloc] initWithResolution:3];
    v26 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v98 framerate:&unk_286629E30 minBitRate:&unk_286629DB8 maxBitRate:&unk_286629EC0 rtcpInterval:&unk_28662BEA8];
    [v3 setObject:v26 forKeyedSubscript:v98];
    [(NSArray *)v4 addObject:v26];
    v27 = [[HMDVideoResolution alloc] initWithResolution:2];
    v28 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v27 framerate:&unk_286629D88 minBitRate:&unk_286629DA0 maxBitRate:&unk_286629DE8 rtcpInterval:&unk_28662BEA8];
    [v3 setObject:v28 forKeyedSubscript:v27];
    [(NSArray *)v4 addObject:v28];
    v29 = [[HMDVideoResolution alloc] initWithResolution:25];
    v30 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v29 framerate:&unk_286629E30 minBitRate:&unk_286629EF0 maxBitRate:&unk_286629F08 rtcpInterval:&unk_28662BEA8];
    [v3 setObject:v30 forKeyedSubscript:v29];
    [(NSArray *)v4 addObject:v30];
    v31 = [[HMDVideoResolution alloc] initWithResolution:26];
    v32 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v31 framerate:&unk_286629E30 minBitRate:&unk_286629F20 maxBitRate:&unk_286629F38 rtcpInterval:&unk_28662BEA8];
    [v3 setObject:v32 forKeyedSubscript:v31];
    [(NSArray *)v4 addObject:v32];

    v16 = v149;
    v17 = v138;

    v21 = v125;
    v18 = v145;
  }

  else
  {
    if (v5 == 2)
    {
      v154 = self;
      if (_os_feature_enabled_impl())
      {
        v33 = [[HMDVideoResolution alloc] initWithResolution:29];
        v34 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v33 framerate:&unk_286629E30 minBitRate:&unk_286629F50 maxBitRate:&unk_286629F68 rtcpInterval:&unk_28662BEA8];
        [v3 setObject:v34 forKeyedSubscript:v33];
        [(NSArray *)v4 addObject:v34];
      }

      v35 = [[HMDVideoResolution alloc] initWithResolution:14];
      v36 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v35 framerate:&unk_286629E30 minBitRate:&unk_286629F80 maxBitRate:&unk_286629F98 rtcpInterval:&unk_28662BEA8];
      v150 = v35;
      [v3 setObject:v36 forKeyedSubscript:v35];
      v146 = v36;
      [(NSArray *)v4 addObject:v36];
      v37 = [[HMDVideoResolution alloc] initWithResolution:13];
      v38 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v37 framerate:&unk_286629E30 minBitRate:&unk_286629E48 maxBitRate:&unk_286629EA8 rtcpInterval:&unk_28662BEA8];
      v153 = v37;
      [v3 setObject:v38 forKeyedSubscript:v37];
      v152 = v38;
      [(NSArray *)v4 addObject:v38];
      v39 = [[HMDVideoResolution alloc] initWithResolution:12];
      v40 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v39 framerate:&unk_286629E30 minBitRate:&unk_286629E78 maxBitRate:&unk_286629E90 rtcpInterval:&unk_28662BEA8];
      v143 = v39;
      [v3 setObject:v40 forKeyedSubscript:v39];
      v139 = v40;
      [(NSArray *)v4 addObject:v40];
      v41 = [[HMDVideoResolution alloc] initWithResolution:11];
      v42 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v41 framerate:&unk_286629D88 minBitRate:&unk_286629DA0 maxBitRate:&unk_286629DB8 rtcpInterval:&unk_28662BEA8];
      v136 = v41;
      [v3 setObject:v42 forKeyedSubscript:v41];
      v133 = v42;
      [(NSArray *)v4 addObject:v42];
      v43 = [[HMDVideoResolution alloc] initWithResolution:17];
      v44 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v43 framerate:&unk_286629E30 minBitRate:&unk_286629F98 maxBitRate:&unk_286629FB0 rtcpInterval:&unk_28662BEA8];
      v130 = v43;
      [v3 setObject:v44 forKeyedSubscript:v43];
      v126 = v44;
      [(NSArray *)v4 addObject:v44];
      v45 = [[HMDVideoResolution alloc] initWithResolution:18];
      v46 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v45 framerate:&unk_286629E30 minBitRate:&unk_286629E60 maxBitRate:&unk_286629FC8 rtcpInterval:&unk_28662BEA8];
      v123 = v45;
      [v3 setObject:v46 forKeyedSubscript:v45];
      v121 = v46;
      [(NSArray *)v4 addObject:v46];
      v47 = [[HMDVideoResolution alloc] initWithResolution:19];
      v48 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v47 framerate:&unk_286629E30 minBitRate:&unk_286629EC0 maxBitRate:&unk_286629ED8 rtcpInterval:&unk_28662BEA8];
      v119 = v47;
      [v3 setObject:v48 forKeyedSubscript:v47];
      v117 = v48;
      [(NSArray *)v4 addObject:v48];
      v49 = [[HMDVideoResolution alloc] initWithResolution:20];
      v50 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v49 framerate:&unk_286629E30 minBitRate:&unk_286629E48 maxBitRate:&unk_286629F80 rtcpInterval:&unk_28662BEA8];
      v115 = v49;
      [v3 setObject:v50 forKeyedSubscript:v49];
      v113 = v50;
      [(NSArray *)v4 addObject:v50];
      v51 = [[HMDVideoResolution alloc] initWithResolution:21];
      v52 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v51 framerate:&unk_286629E30 minBitRate:&unk_286629DB8 maxBitRate:&unk_286629EC0 rtcpInterval:&unk_28662BEA8];
      v111 = v51;
      [v3 setObject:v52 forKeyedSubscript:v51];
      v109 = v52;
      [(NSArray *)v4 addObject:v52];
      v53 = [[HMDVideoResolution alloc] initWithResolution:22];
      v54 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v53 framerate:&unk_286629D88 minBitRate:&unk_286629DA0 maxBitRate:&unk_286629DE8 rtcpInterval:&unk_28662BEA8];
      v107 = v53;
      [v3 setObject:v54 forKeyedSubscript:v53];
      v105 = v54;
      [(NSArray *)v4 addObject:v54];
      if (_os_feature_enabled_impl())
      {
        v55 = [[HMDVideoResolution alloc] initWithResolution:28];
        v56 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v55 framerate:&unk_286629E30 minBitRate:&unk_286629F50 maxBitRate:&unk_286629F68 rtcpInterval:&unk_28662BEA8];
        [v3 setObject:v56 forKeyedSubscript:v55];
        [(NSArray *)v4 addObject:v56];
      }

      v103 = [[HMDVideoResolution alloc] initWithResolution:10];
      v101 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v103 framerate:&unk_286629E30 minBitRate:&unk_286629F80 maxBitRate:&unk_286629F98 rtcpInterval:&unk_28662BEA8];
      [v3 setObject:v101 forKeyedSubscript:v103];
      [(NSArray *)v4 addObject:v101];
      v99 = [[HMDVideoResolution alloc] initWithResolution:9];
      v97 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v99 framerate:&unk_286629E30 minBitRate:&unk_286629E48 maxBitRate:&unk_286629EA8 rtcpInterval:&unk_28662BEA8];
      [v3 setObject:v97 forKeyedSubscript:v99];
      [(NSArray *)v4 addObject:v97];
      v96 = [[HMDVideoResolution alloc] initWithResolution:8];
      v95 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v96 framerate:&unk_286629E30 minBitRate:&unk_286629E78 maxBitRate:&unk_286629E90 rtcpInterval:&unk_28662BEA8];
      [v3 setObject:v95 forKeyedSubscript:v96];
      [(NSArray *)v4 addObject:v95];
      v94 = [[HMDVideoResolution alloc] initWithResolution:7];
      v93 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v94 framerate:&unk_286629D88 minBitRate:&unk_286629DA0 maxBitRate:&unk_286629DB8 rtcpInterval:&unk_28662BEA8];
      [v3 setObject:v93 forKeyedSubscript:v94];
      [(NSArray *)v4 addObject:v93];
      v92 = [[HMDVideoResolution alloc] initWithResolution:15];
      v91 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v92 framerate:&unk_286629E30 minBitRate:&unk_286629F98 maxBitRate:&unk_286629FB0 rtcpInterval:&unk_28662BEA8];
      [v3 setObject:v91 forKeyedSubscript:v92];
      [(NSArray *)v4 addObject:v91];
      v90 = [[HMDVideoResolution alloc] initWithResolution:16];
      v89 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v90 framerate:&unk_286629E30 minBitRate:&unk_286629E60 maxBitRate:&unk_286629FC8 rtcpInterval:&unk_28662BEA8];
      [v3 setObject:v89 forKeyedSubscript:v90];
      [(NSArray *)v4 addObject:v89];
      v88 = [[HMDVideoResolution alloc] initWithResolution:5];
      v87 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v88 framerate:&unk_286629E30 minBitRate:&unk_286629EC0 maxBitRate:&unk_286629ED8 rtcpInterval:&unk_28662BEA8];
      [v3 setObject:v87 forKeyedSubscript:v88];
      [(NSArray *)v4 addObject:v87];
      v86 = [[HMDVideoResolution alloc] initWithResolution:4];
      v85 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v86 framerate:&unk_286629E30 minBitRate:&unk_286629E48 maxBitRate:&unk_286629F80 rtcpInterval:&unk_28662BEA8];
      [v3 setObject:v85 forKeyedSubscript:v86];
      [(NSArray *)v4 addObject:v85];
      v84 = [[HMDVideoResolution alloc] initWithResolution:3];
      v83 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v84 framerate:&unk_286629E30 minBitRate:&unk_286629DB8 maxBitRate:&unk_286629EC0 rtcpInterval:&unk_28662BEA8];
      [v3 setObject:v83 forKeyedSubscript:v84];
      [(NSArray *)v4 addObject:v83];
      v57 = [[HMDVideoResolution alloc] initWithResolution:2];
      v58 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v57 framerate:&unk_286629D88 minBitRate:&unk_286629DA0 maxBitRate:&unk_286629DE8 rtcpInterval:&unk_28662BEA8];
      [v3 setObject:v58 forKeyedSubscript:v57];
      [(NSArray *)v4 addObject:v58];
      v59 = [[HMDVideoResolution alloc] initWithResolution:24];
      v60 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v59 framerate:&unk_286629E30 minBitRate:&unk_286629FE0 maxBitRate:&unk_286629FF8 rtcpInterval:&unk_28662BEA8];
      [v3 setObject:v60 forKeyedSubscript:v59];
      [(NSArray *)v4 addObject:v60];
      v61 = [[HMDVideoResolution alloc] initWithResolution:25];
      v62 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v61 framerate:&unk_286629E30 minBitRate:&unk_286629EF0 maxBitRate:&unk_286629F08 rtcpInterval:&unk_28662BEA8];
      [v3 setObject:v62 forKeyedSubscript:v61];
      [(NSArray *)v4 addObject:v62];
      v63 = [[HMDVideoResolution alloc] initWithResolution:26];
      v64 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v63 framerate:&unk_286629E30 minBitRate:&unk_286629F20 maxBitRate:&unk_286629F38 rtcpInterval:&unk_28662BEA8];
      [v3 setObject:v64 forKeyedSubscript:v63];
      [(NSArray *)v4 addObject:v64];

      v18 = v146;
      v16 = v150;
      v17 = v139;
      v23 = v143;
      v22 = v133;
      v20 = v136;
      v21 = v126;
      v19 = v130;
      goto LABEL_18;
    }

    if (v5 != 3)
    {
      if (v5 != 4)
      {
        goto LABEL_19;
      }

      v154 = self;
      v148 = [[HMDVideoResolution alloc] initWithResolution:13];
      v144 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v148 framerate:&unk_286629E30 minBitRate:&unk_286629E48 maxBitRate:&unk_286629EC0 rtcpInterval:&unk_28662BEA8];
      [v3 setObject:v144 forKeyedSubscript:v148];
      [(NSArray *)v4 addObject:v144];
      v6 = [[HMDVideoResolution alloc] initWithResolution:12];
      v7 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v6 framerate:&unk_286629E30 minBitRate:&unk_286629E78 maxBitRate:&unk_286629DE8 rtcpInterval:&unk_28662BEA8];
      v153 = v6;
      [v3 setObject:v7 forKeyedSubscript:v6];
      v152 = v7;
      [(NSArray *)v4 addObject:v7];
      v141 = [[HMDVideoResolution alloc] initWithResolution:11];
      v137 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v141 framerate:&unk_286629D88 minBitRate:&unk_286629DA0 maxBitRate:&unk_286629DB8 rtcpInterval:&unk_28662BEA8];
      [v3 setObject:v137 forKeyedSubscript:v141];
      [(NSArray *)v4 addObject:v137];
      v134 = [[HMDVideoResolution alloc] initWithResolution:20];
      v131 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v134 framerate:&unk_286629E30 minBitRate:&unk_286629E48 maxBitRate:&unk_286629EC0 rtcpInterval:&unk_28662BEA8];
      [v3 setObject:v131 forKeyedSubscript:v134];
      [(NSArray *)v4 addObject:v131];
      v128 = [[HMDVideoResolution alloc] initWithResolution:21];
      v124 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v128 framerate:&unk_286629E30 minBitRate:&unk_286629DB8 maxBitRate:&unk_286629DE8 rtcpInterval:&unk_28662BEA8];
      [v3 setObject:v124 forKeyedSubscript:v128];
      [(NSArray *)v4 addObject:v124];
      v122 = [[HMDVideoResolution alloc] initWithResolution:22];
      v120 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v122 framerate:&unk_286629D88 minBitRate:&unk_286629DA0 maxBitRate:&unk_28662A010 rtcpInterval:&unk_28662BEA8];
      [v3 setObject:v120 forKeyedSubscript:v122];
      [(NSArray *)v4 addObject:v120];
      v118 = [[HMDVideoResolution alloc] initWithResolution:9];
      v116 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v118 framerate:&unk_286629E30 minBitRate:&unk_286629E48 maxBitRate:&unk_286629EC0 rtcpInterval:&unk_28662BEA8];
      [v3 setObject:v116 forKeyedSubscript:v118];
      [(NSArray *)v4 addObject:v116];
      v114 = [[HMDVideoResolution alloc] initWithResolution:8];
      v112 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v114 framerate:&unk_286629E30 minBitRate:&unk_286629E78 maxBitRate:&unk_286629DE8 rtcpInterval:&unk_28662BEA8];
      [v3 setObject:v112 forKeyedSubscript:v114];
      [(NSArray *)v4 addObject:v112];
      v110 = [[HMDVideoResolution alloc] initWithResolution:7];
      v108 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v110 framerate:&unk_286629D88 minBitRate:&unk_286629DA0 maxBitRate:&unk_286629DB8 rtcpInterval:&unk_28662BEA8];
      [v3 setObject:v108 forKeyedSubscript:v110];
      [(NSArray *)v4 addObject:v108];
      v106 = [[HMDVideoResolution alloc] initWithResolution:5];
      v104 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v106 framerate:&unk_286629E30 minBitRate:&unk_28662A028 maxBitRate:&unk_28662A040 rtcpInterval:&unk_28662BEA8];
      [v3 setObject:v104 forKeyedSubscript:v106];
      [(NSArray *)v4 addObject:v104];
      v8 = [[HMDVideoResolution alloc] initWithResolution:4];
      v9 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v8 framerate:&unk_286629E30 minBitRate:&unk_286629E48 maxBitRate:&unk_286629EC0 rtcpInterval:&unk_28662BEA8];
      [v3 setObject:v9 forKeyedSubscript:v8];
      [(NSArray *)v4 addObject:v9];
      v10 = [[HMDVideoResolution alloc] initWithResolution:3];
      v11 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v10 framerate:&unk_286629E30 minBitRate:&unk_286629DB8 maxBitRate:&unk_286629DE8 rtcpInterval:&unk_28662BEA8];
      [v3 setObject:v11 forKeyedSubscript:v10];
      [(NSArray *)v4 addObject:v11];
      v12 = [[HMDVideoResolution alloc] initWithResolution:2];
      v13 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v12 framerate:&unk_286629D88 minBitRate:&unk_286629DA0 maxBitRate:&unk_28662A010 rtcpInterval:&unk_28662BEA8];
      [v3 setObject:v13 forKeyedSubscript:v12];
      [(NSArray *)v4 addObject:v13];
      v14 = [[HMDVideoResolution alloc] initWithResolution:26];
      v15 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v14 framerate:&unk_286629E30 minBitRate:&unk_286629F20 maxBitRate:&unk_286629F38 rtcpInterval:&unk_28662BEA8];
      [v3 setObject:v15 forKeyedSubscript:v14];
      [(NSArray *)v4 addObject:v15];

      v16 = v148;
      v17 = v137;

      v18 = v144;
      v19 = v128;

      v20 = v134;
      v21 = v124;

      v22 = v131;
      v23 = v141;
      goto LABEL_16;
    }

    v154 = self;
    v151 = [[HMDVideoResolution alloc] initWithResolution:13];
    v147 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v151 framerate:&unk_286629E30 minBitRate:&unk_286629E48 maxBitRate:&unk_286629EC0 rtcpInterval:&unk_28662BEA8];
    [v3 setObject:v147 forKeyedSubscript:v151];
    [(NSArray *)v4 addObject:v147];
    v65 = [[HMDVideoResolution alloc] initWithResolution:12];
    v66 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v65 framerate:&unk_286629E30 minBitRate:&unk_286629E78 maxBitRate:&unk_286629E90 rtcpInterval:&unk_28662BEA8];
    v153 = v65;
    [v3 setObject:v66 forKeyedSubscript:v65];
    v152 = v66;
    [(NSArray *)v4 addObject:v66];
    v142 = [[HMDVideoResolution alloc] initWithResolution:11];
    v140 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v142 framerate:&unk_286629D88 minBitRate:&unk_286629DA0 maxBitRate:&unk_286629DB8 rtcpInterval:&unk_28662BEA8];
    [v3 setObject:v140 forKeyedSubscript:v142];
    [(NSArray *)v4 addObject:v140];
    v135 = [[HMDVideoResolution alloc] initWithResolution:20];
    v132 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v135 framerate:&unk_286629E30 minBitRate:&unk_286629E48 maxBitRate:&unk_286629EC0 rtcpInterval:&unk_28662BEA8];
    [v3 setObject:v132 forKeyedSubscript:v135];
    [(NSArray *)v4 addObject:v132];
    v129 = [[HMDVideoResolution alloc] initWithResolution:21];
    v127 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v129 framerate:&unk_286629E30 minBitRate:&unk_286629DB8 maxBitRate:&unk_286629E90 rtcpInterval:&unk_28662BEA8];
    [v3 setObject:v127 forKeyedSubscript:v129];
    [(NSArray *)v4 addObject:v127];
    v122 = [[HMDVideoResolution alloc] initWithResolution:22];
    v120 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v122 framerate:&unk_286629D88 minBitRate:&unk_286629DA0 maxBitRate:&unk_28662A010 rtcpInterval:&unk_28662BEA8];
    [v3 setObject:v120 forKeyedSubscript:v122];
    [(NSArray *)v4 addObject:v120];
    v118 = [[HMDVideoResolution alloc] initWithResolution:9];
    v116 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v118 framerate:&unk_286629E30 minBitRate:&unk_286629E48 maxBitRate:&unk_286629EC0 rtcpInterval:&unk_28662BEA8];
    [v3 setObject:v116 forKeyedSubscript:v118];
    [(NSArray *)v4 addObject:v116];
    v114 = [[HMDVideoResolution alloc] initWithResolution:8];
    v112 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v114 framerate:&unk_286629E30 minBitRate:&unk_286629E78 maxBitRate:&unk_286629E90 rtcpInterval:&unk_28662BEA8];
    [v3 setObject:v112 forKeyedSubscript:v114];
    [(NSArray *)v4 addObject:v112];
    v110 = [[HMDVideoResolution alloc] initWithResolution:7];
    v108 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v110 framerate:&unk_286629D88 minBitRate:&unk_286629DA0 maxBitRate:&unk_286629DB8 rtcpInterval:&unk_28662BEA8];
    [v3 setObject:v108 forKeyedSubscript:v110];
    [(NSArray *)v4 addObject:v108];
    v106 = [[HMDVideoResolution alloc] initWithResolution:5];
    v104 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v106 framerate:&unk_286629E30 minBitRate:&unk_28662A028 maxBitRate:&unk_28662A040 rtcpInterval:&unk_28662BEA8];
    [v3 setObject:v104 forKeyedSubscript:v106];
    [(NSArray *)v4 addObject:v104];
    v102 = [[HMDVideoResolution alloc] initWithResolution:4];
    v100 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v102 framerate:&unk_286629E30 minBitRate:&unk_286629E48 maxBitRate:&unk_286629EC0 rtcpInterval:&unk_28662BEA8];
    [v3 setObject:v100 forKeyedSubscript:v102];
    [(NSArray *)v4 addObject:v100];
    v98 = [[HMDVideoResolution alloc] initWithResolution:3];
    v26 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v98 framerate:&unk_286629E30 minBitRate:&unk_286629DB8 maxBitRate:&unk_286629E90 rtcpInterval:&unk_28662BEA8];
    [v3 setObject:v26 forKeyedSubscript:v98];
    [(NSArray *)v4 addObject:v26];
    v27 = [[HMDVideoResolution alloc] initWithResolution:2];
    v28 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v27 framerate:&unk_286629D88 minBitRate:&unk_286629DA0 maxBitRate:&unk_28662A010 rtcpInterval:&unk_28662BEA8];
    [v3 setObject:v28 forKeyedSubscript:v27];
    [(NSArray *)v4 addObject:v28];
    v67 = [[HMDVideoResolution alloc] initWithResolution:25];
    v68 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v67 framerate:&unk_286629E30 minBitRate:&unk_286629EF0 maxBitRate:&unk_286629F08 rtcpInterval:&unk_28662BEA8];
    [v3 setObject:v68 forKeyedSubscript:v67];
    [(NSArray *)v4 addObject:v68];
    v69 = [[HMDVideoResolution alloc] initWithResolution:26];
    v70 = [[HMDCameraVideoTier alloc] initWithVideoResolution:v69 framerate:&unk_286629E30 minBitRate:&unk_286629F20 maxBitRate:&unk_286629F38 rtcpInterval:&unk_28662BEA8];
    [v3 setObject:v70 forKeyedSubscript:v69];
    [(NSArray *)v4 addObject:v70];

    v16 = v151;
    v17 = v140;

    v18 = v147;
    v21 = v127;
  }

  v20 = v135;
  v19 = v129;

  v22 = v132;
  v23 = v142;

LABEL_16:
LABEL_18:

  self = v154;
LABEL_19:
  v75 = objc_autoreleasePoolPush();
  v76 = self;
  v77 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
  {
    v78 = HMFGetLogIdentifier();
    *buf = 138543618;
    v156 = v78;
    v157 = 2112;
    v158 = v4;
    _os_log_impl(&dword_2531F8000, v77, OS_LOG_TYPE_INFO, "%{public}@Adding video tiers: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v75);
  v79 = [v3 copy];
  videoTierCombinations = v76->_videoTierCombinations;
  v76->_videoTierCombinations = v79;

  tierOrder = v76->_tierOrder;
  v76->_tierOrder = v4;

  v82 = *MEMORY[0x277D85DE8];
}

- (HMDCameraVideoTierParameters)initWithSessionID:(id)a3 streamingTierType:(unint64_t)a4 maximumQuality:(int64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = HMDCameraVideoTierParameters;
  v10 = [(HMDCameraVideoTierParameters *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_sessionID, a3);
    v11->_maximumQuality = a5;
    v11->_streamingTierType = a4;
    [(HMDCameraVideoTierParameters *)v11 _generateAllVideoTiers];
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t18_159371 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t18_159371, &__block_literal_global_159372);
  }

  v3 = logCategory__hmf_once_v19_159373;

  return v3;
}

uint64_t __43__HMDCameraVideoTierParameters_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v19_159373;
  logCategory__hmf_once_v19_159373 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end