@interface HMDStreamingCapabilities
+ (int64_t)qualityOfResolutionType:(unint64_t)a3;
+ (unint64_t)aspectRatioOfResolution:(id)a3;
+ (void)translateCapabilities:(id)a3;
- (HMDStreamingCapabilities)initWithCoder:(id)a3;
- (HMDStreamingCapabilities)initWithStreamPreference:(id)a3;
- (id)_supportedResolutionsWithOverrides;
- (id)description;
- (void)_updateWithStreamPreference:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithRemoteSettings:(id)a3;
@end

@implementation HMDStreamingCapabilities

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(HMDStreamingCapabilities *)self supportedVideoCodecs];
  [v7 encodeObject:v4 forKey:@"a"];

  v5 = [(HMDStreamingCapabilities *)self supportedAudioCodecs];
  [v7 encodeObject:v5 forKey:@"b"];

  v6 = [(HMDStreamingCapabilities *)self supportedVideoResolutions];
  [v7 encodeObject:v6 forKey:@"c"];

  [v7 encodeInt32:-[HMDStreamingCapabilities streamingTierType](self forKey:{"streamingTierType"), @"d"}];
  [v7 encodeBool:-[HMDStreamingCapabilities supportsComfortNoise](self forKey:{"supportsComfortNoise"), @"e"}];
}

- (HMDStreamingCapabilities)initWithCoder:(id)a3
{
  v26[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = HMDStreamingCapabilities;
  v5 = [(HMDStreamingCapabilities *)&v23 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v26[0] = objc_opt_class();
    v26[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"a"];
    supportedVideoCodecs = v5->_supportedVideoCodecs;
    v5->_supportedVideoCodecs = v9;

    v11 = MEMORY[0x277CBEB98];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v25[2] = objc_opt_class();
    v25[3] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
    v13 = [v11 setWithArray:v12];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"b"];
    supportedAudioCodecs = v5->_supportedAudioCodecs;
    v5->_supportedAudioCodecs = v14;

    v16 = MEMORY[0x277CBEB98];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    v18 = [v16 setWithArray:v17];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"c"];
    supportedVideoResolutions = v5->_supportedVideoResolutions;
    v5->_supportedVideoResolutions = v19;

    v5->_streamingTierType = [v4 decodeInt32ForKey:@"d"];
    v5->_supportsComfortNoise = [v4 decodeBoolForKey:@"e"];
  }

  v21 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)updateWithRemoteSettings:(id)a3
{
  v28 = a3;
  v4 = [v28 supportedAudioCodecs];

  if (v4)
  {
    v5 = [v28 supportedAudioCodecs];
    supportedAudioCodecs = self->_supportedAudioCodecs;
    self->_supportedAudioCodecs = v5;
  }

  v7 = [v28 supportedVideoCodecs];

  if (v7)
  {
    v8 = [v28 supportedVideoCodecs];
    supportedVideoCodecs = self->_supportedVideoCodecs;
    self->_supportedVideoCodecs = v8;
  }

  v10 = [v28 supportedVideoResolutions];

  if (v10)
  {
    v11 = [v28 supportedVideoResolutions];
    supportedVideoResolutions = self->_supportedVideoResolutions;
    self->_supportedVideoResolutions = v11;
  }

  v13 = [v28 supportedH264Profiles];

  if (v13)
  {
    v14 = [v28 supportedH264Profiles];
    supportedH264Profiles = self->_supportedH264Profiles;
    self->_supportedH264Profiles = v14;
  }

  v16 = [v28 supportedH264Levels];

  if (v16)
  {
    v17 = [v28 supportedH264Levels];
    supportedH264Levels = self->_supportedH264Levels;
    self->_supportedH264Levels = v17;
  }

  v19 = [v28 supportedPacketizationModes];

  if (v19)
  {
    v20 = [v28 supportedPacketizationModes];
    supportedPacketizationModes = self->_supportedPacketizationModes;
    self->_supportedPacketizationModes = v20;
  }

  v22 = [v28 supportedBitRateSettings];

  if (v22)
  {
    v23 = [v28 supportedBitRateSettings];
    supportedBitRateSettings = self->_supportedBitRateSettings;
    self->_supportedBitRateSettings = v23;
  }

  v25 = [v28 supportedAudioSampleRates];

  if (v25)
  {
    v26 = [v28 supportedAudioSampleRates];
    supportedAudioSampleRates = self->_supportedAudioSampleRates;
    self->_supportedAudioSampleRates = v26;
  }

  -[HMDStreamingCapabilities setStreamingTierType:](self, "setStreamingTierType:", [v28 streamingTierType]);
  -[HMDStreamingCapabilities setSupportsComfortNoise:](self, "setSupportsComfortNoise:", [v28 supportsComfortNoise]);
}

- (void)_updateWithStreamPreference:(id)a3
{
  v68 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 videoPreferences];
  v6 = [v5 resolutions];

  if ([v6 count])
  {
    v7 = [MEMORY[0x277CBEB58] set];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v8 = v6;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v57 objects:v67 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v58;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v58 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v57 + 1) + 8 * i) videoResolution];
          if ((v14 - 1) <= 0x1C)
          {
            v15 = [[HMDVideoResolution alloc] initWithResolution:v14];
            [v7 addObject:v15];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v57 objects:v67 count:16];
      }

      while (v11);
    }

    v16 = [v7 copy];
    supportedVideoResolutions = self->_supportedVideoResolutions;
    self->_supportedVideoResolutions = v16;

    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v64 = v21;
      v65 = 2112;
      v66 = v7;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Overriding the video resolution capabilities with %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v6 = v8;
  }

  v22 = [v4 audioPreferences];
  v23 = [v22 codecs];

  if ([v23 count])
  {
    v48 = v6;
    v24 = [MEMORY[0x277CBEB58] set];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v25 = v23;
    v26 = [v25 countByEnumeratingWithState:&v53 objects:v62 count:16];
    if (!v26)
    {
      goto LABEL_27;
    }

    v27 = v26;
    v28 = *v54;
    while (1)
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v54 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [*(*(&v53 + 1) + 8 * j) audioCodec];
        if (v30 == 1)
        {
          v31 = 2;
        }

        else
        {
          if (v30 != 2)
          {
            continue;
          }

          v31 = 3;
        }

        v32 = [[HMDAudioCodecGroup alloc] initWithAudioCodecGroup:v31];
        [v24 addObject:v32];
      }

      v27 = [v25 countByEnumeratingWithState:&v53 objects:v62 count:16];
      if (!v27)
      {
LABEL_27:

        v33 = [(HMDStreamingCapabilities *)self supportedAudioCodecs];
        v34 = [v33 mutableCopy];

        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v35 = [(HMDStreamingCapabilities *)self supportedAudioCodecs];
        v36 = [v35 countByEnumeratingWithState:&v49 objects:v61 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v50;
          do
          {
            for (k = 0; k != v37; ++k)
            {
              if (*v50 != v38)
              {
                objc_enumerationMutation(v35);
              }

              v40 = *(*(&v49 + 1) + 8 * k);
              if (([v24 containsObject:v40] & 1) == 0)
              {
                [v34 removeObjectForKey:v40];
              }
            }

            v37 = [v35 countByEnumeratingWithState:&v49 objects:v61 count:16];
          }

          while (v37);
        }

        v41 = [v34 copy];
        supportedAudioCodecs = self->_supportedAudioCodecs;
        self->_supportedAudioCodecs = v41;

        v43 = objc_autoreleasePoolPush();
        v44 = self;
        v45 = HMFGetOSLogHandle();
        v6 = v48;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v46 = HMFGetLogIdentifier();
          *buf = 138543618;
          v64 = v46;
          v65 = 2112;
          v66 = v34;
          _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_DEFAULT, "%{public}@Overriding the audio codec group capabilities with %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v43);
        break;
      }
    }
  }

  v47 = *MEMORY[0x277D85DE8];
}

- (id)_supportedResolutionsWithOverrides
{
  v2 = [MEMORY[0x277CBEB58] setWithSet:supportedHMDVideoResolutions];
  v3 = isWatch();
  v4 = [[HMDVideoResolution alloc] initWithResolution:23];
  [v2 addObject:v4];

  v5 = [HMDVideoResolution alloc];
  if (v3)
  {
    v6 = [(HMDVideoResolution *)v5 initWithResolution:11];
    v7 = 27;
    v8 = 7;
  }

  else
  {
    v9 = [(HMDVideoResolution *)v5 initWithResolution:22];
    [v2 addObject:v9];

    v10 = [[HMDVideoResolution alloc] initWithResolution:21];
    [v2 addObject:v10];

    v11 = [[HMDVideoResolution alloc] initWithResolution:20];
    [v2 addObject:v11];

    v12 = [[HMDVideoResolution alloc] initWithResolution:19];
    [v2 addObject:v12];

    v13 = [[HMDVideoResolution alloc] initWithResolution:11];
    [v2 addObject:v13];

    v14 = [[HMDVideoResolution alloc] initWithResolution:12];
    [v2 addObject:v14];

    v15 = [[HMDVideoResolution alloc] initWithResolution:13];
    [v2 addObject:v15];

    v16 = [[HMDVideoResolution alloc] initWithResolution:14];
    [v2 addObject:v16];

    v17 = [[HMDVideoResolution alloc] initWithResolution:17];
    [v2 addObject:v17];

    v18 = [[HMDVideoResolution alloc] initWithResolution:18];
    [v2 addObject:v18];

    v19 = [[HMDVideoResolution alloc] initWithResolution:15];
    [v2 addObject:v19];

    v20 = [[HMDVideoResolution alloc] initWithResolution:16];
    [v2 addObject:v20];

    v21 = [[HMDVideoResolution alloc] initWithResolution:24];
    [v2 addObject:v21];

    v22 = [[HMDVideoResolution alloc] initWithResolution:25];
    [v2 addObject:v22];

    v23 = [[HMDVideoResolution alloc] initWithResolution:26];
    [v2 addObject:v23];

    v6 = [[HMDVideoResolution alloc] initWithResolution:27];
    v7 = 29;
    v8 = 28;
  }

  [v2 addObject:v6];

  v24 = [[HMDVideoResolution alloc] initWithResolution:v8];
  [v2 addObject:v24];

  v25 = [[HMDVideoResolution alloc] initWithResolution:v7];
  [v2 addObject:v25];

  v26 = [v2 copy];

  return v26;
}

- (HMDStreamingCapabilities)initWithStreamPreference:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = HMDStreamingCapabilities;
  v5 = [(HMDStreamingCapabilities *)&v29 init];
  if (v5)
  {
    if (initWithStreamPreference__onceToken != -1)
    {
      dispatch_once(&initWithStreamPreference__onceToken, &__block_literal_global_99582);
    }

    objc_storeStrong(&v5->_supportedVideoCodecs, supportedHMDVideoCodecs);
    objc_storeStrong(&v5->_supportedAudioCodecs, supportedHMDAudioCodecs);
    v6 = [(HMDStreamingCapabilities *)v5 _supportedResolutionsWithOverrides];
    supportedVideoResolutions = v5->_supportedVideoResolutions;
    v5->_supportedVideoResolutions = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = [HMDH264Profile arrayWithProfiles:&unk_283E75830];
    v10 = [v8 setWithArray:v9];
    supportedH264Profiles = v5->_supportedH264Profiles;
    v5->_supportedH264Profiles = v10;

    v12 = MEMORY[0x277CBEB98];
    v13 = [HMDH264Level arrayWithLevels:&unk_283E75848];
    v14 = [v12 setWithArray:v13];
    supportedH264Levels = v5->_supportedH264Levels;
    v5->_supportedH264Levels = v14;

    v16 = MEMORY[0x277CBEB98];
    v17 = [HMDPacketizationMode arrayWithModes:&unk_283E75860];
    v18 = [v16 setWithArray:v17];
    supportedPacketizationModes = v5->_supportedPacketizationModes;
    v5->_supportedPacketizationModes = v18;

    v20 = MEMORY[0x277CBEB98];
    v21 = [HMDBitRateSetting arrayWithSettings:&unk_283E75878];
    v22 = [v20 setWithArray:v21];
    supportedBitRateSettings = v5->_supportedBitRateSettings;
    v5->_supportedBitRateSettings = v22;

    v24 = MEMORY[0x277CBEB98];
    v25 = [HMDAudioSampleRate arrayWithRates:&unk_283E75890];
    v26 = [v24 setWithArray:v25];
    supportedAudioSampleRates = v5->_supportedAudioSampleRates;
    v5->_supportedAudioSampleRates = v26;

    v5->_supportsComfortNoise = !isWatch();
    [(HMDStreamingCapabilities *)v5 _updateWithStreamPreference:v4];
  }

  return v5;
}

void __53__HMDStreamingCapabilities_initWithStreamPreference___block_invoke()
{
  v14 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CE56E8] capabilities];
  v1 = objc_autoreleasePoolPush();
  v2 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v3;
    v12 = 2112;
    v13 = v0;
    _os_log_impl(&dword_229538000, v2, OS_LOG_TYPE_INFO, "%{public}@Audio streaming capabilities as reported by AVCAudioStream: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v1);
  v4 = [MEMORY[0x277CE5758] capabilities];
  v5 = objc_autoreleasePoolPush();
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Video streaming capabilities as reported by AVCVideoStream: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v8 = [v0 mutableCopy];
  [v8 addEntriesFromDictionary:v4];
  [HMDStreamingCapabilities translateCapabilities:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = HMDStreamingTierTypeAsString([(HMDStreamingCapabilities *)self streamingTierType]);
  v5 = [(HMDStreamingCapabilities *)self supportedAudioCodecs];
  v6 = [(HMDStreamingCapabilities *)self supportedVideoCodecs];
  v7 = [(HMDStreamingCapabilities *)self supportedVideoResolutions];
  [(HMDStreamingCapabilities *)self supportsComfortNoise];
  v8 = HMFBooleanToString();
  v9 = [v3 stringWithFormat:@"Streaming Tier: %@, Supported Audio Codecs : %@, Supported Video Codecs : %@, Supported Video Resolutions : %@, Supports Comfort Noise : %@", v4, v5, v6, v7, v8];

  return v9;
}

+ (int64_t)qualityOfResolutionType:(unint64_t)a3
{
  if (a3 - 3 > 0x1A)
  {
    return 1;
  }

  else
  {
    return qword_22A587650[a3 - 3];
  }
}

+ (unint64_t)aspectRatioOfResolution:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 resolutionType];
  if ((v5 - 1) >= 0x1D)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = a1;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543874;
      v14 = v10;
      v15 = 2112;
      v16 = v4;
      v17 = 2112;
      v18 = @"HMDVideoResolutionAspectRatio16x9";
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Resolution: %@ is not handled, returning default aspect ratio: %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v6 = 1;
  }

  else
  {
    v6 = qword_22A587568[v5 - 1];
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (void)translateCapabilities:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277CE5790]];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__HMDStreamingCapabilities_translateCapabilities___block_invoke;
  aBlock[3] = &unk_278677E00;
  v6 = v4;
  v60 = v6;
  v7 = _Block_copy(aBlock);
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v55 objects:v64 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v56;
    do
    {
      v12 = 0;
      do
      {
        if (*v56 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v55 + 1) + 8 * v12) unsignedIntegerValue];
        if (v13 > 3)
        {
          if (v13 > 8)
          {
            if (v13 == 9)
            {
              v14 = v7[2];
              v15 = v7;
              v16 = 3;
LABEL_26:
              v17 = 2;
              goto LABEL_27;
            }

            if (v13 != 10)
            {
              goto LABEL_28;
            }

            v14 = v7[2];
            v15 = v7;
            v16 = 3;
          }

          else
          {
            if (v13 != 4)
            {
              if (v13 != 5)
              {
                goto LABEL_28;
              }

              v14 = v7[2];
              v15 = v7;
              v16 = 2;
              goto LABEL_26;
            }

            v14 = v7[2];
            v15 = v7;
            v16 = 2;
          }
        }

        else
        {
          if (v13 > 1)
          {
            v14 = v7[2];
            if (v13 == 2)
            {
              v15 = v7;
              v16 = 0;
            }

            else
            {
              v15 = v7;
              v16 = 1;
            }

            goto LABEL_24;
          }

          if (!v13)
          {
            v14 = v7[2];
            v15 = v7;
            v16 = 5;
LABEL_24:
            v17 = 0;
            goto LABEL_27;
          }

          if (v13 != 1)
          {
            goto LABEL_28;
          }

          v14 = v7[2];
          v15 = v7;
          v16 = 6;
        }

        v17 = 1;
LABEL_27:
        v14(v15, v16, v17);
LABEL_28:
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v55 objects:v64 count:16];
    }

    while (v10);
  }

  v45 = v6;
  v18 = [v6 copy];
  v19 = supportedHMDAudioCodecs;
  supportedHMDAudioCodecs = v18;

  v46 = v3;
  v20 = [v3 objectForKeyedSubscript:*MEMORY[0x277CE5798]];
  v21 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v20, "count")}];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v22 = v20;
  v23 = [v22 countByEnumeratingWithState:&v51 objects:v63 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v52;
    do
    {
      v26 = 0;
      do
      {
        if (*v52 != v25)
        {
          objc_enumerationMutation(v22);
        }

        if (![*(*(&v51 + 1) + 8 * v26) unsignedIntegerValue])
        {
          v27 = [[HMDVideoCodec alloc] initWithCodec:0];
          [v21 addObject:v27];
        }

        ++v26;
      }

      while (v24 != v26);
      v24 = [v22 countByEnumeratingWithState:&v51 objects:v63 count:16];
    }

    while (v24);
  }

  v28 = [v21 copy];
  v29 = supportedHMDVideoCodecs;
  supportedHMDVideoCodecs = v28;

  if (isWatch())
  {
    v30 = MEMORY[0x277CBEB98];
    v31 = [[HMDVideoResolution alloc] initWithResolution:1];
    v62 = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
    v33 = [v30 setWithArray:v32];
    v34 = v46;
  }

  else
  {
    v44 = v8;
    v35 = [v46 objectForKeyedSubscript:*MEMORY[0x277CE57A0]];
    v32 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v35, "count")}];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v31 = v35;
    v36 = [(HMDVideoResolution *)v31 countByEnumeratingWithState:&v47 objects:v61 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v48;
      do
      {
        v39 = 0;
        do
        {
          if (*v48 != v38)
          {
            objc_enumerationMutation(v31);
          }

          v40 = [*(*(&v47 + 1) + 8 * v39) unsignedIntegerValue];
          if (v40 <= 9)
          {
            v41 = [[HMDVideoResolution alloc] initWithResolution:v40 + 1];
            [v32 addObject:v41];
          }

          ++v39;
        }

        while (v37 != v39);
        v37 = [(HMDVideoResolution *)v31 countByEnumeratingWithState:&v47 objects:v61 count:16];
      }

      while (v37);
    }

    v33 = [v32 copy];
    v34 = v46;
    v8 = v44;
  }

  v42 = supportedHMDVideoResolutions;
  supportedHMDVideoResolutions = v33;

  v43 = *MEMORY[0x277D85DE8];
}

void __50__HMDStreamingCapabilities_translateCapabilities___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = [[HMDAudioCodecGroup alloc] initWithAudioCodecGroup:a2];
  v5 = [[HMDAudioSampleRate alloc] initWithSampleRate:a3];
  v6 = [*(a1 + 32) objectForKeyedSubscript:v10];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 mutableCopy];
    [v8 addObject:v5];
    v9 = [v8 copy];
  }

  else
  {
    v8 = [MEMORY[0x277CBEB58] set];
    [v8 addObject:v5];
    v9 = [v8 copy];
  }

  [*(a1 + 32) setObject:v9 forKeyedSubscript:v10];
}

@end