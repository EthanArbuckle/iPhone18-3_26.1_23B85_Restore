@interface HMDCameraAudioParameterSelection
+ (id)logCategory;
- (BOOL)_selectParametersFromCodec:(id)a3 bitRateSettings:(id)a4 sampleRates:(id)a5 audioChannelCount:(id)a6;
- (BOOL)selectAudioParameters;
- (HMDCameraAudioParameterSelection)initWithSessionID:(id)a3 supportedAudioConfiguration:(id)a4 supportedRTPConfiguration:(id)a5 streamingCapabilities:(id)a6;
- (id)createSRTPParamters;
- (id)createSelectedAudioParameters;
- (id)logIdentifier;
- (void)_generateAllCombinations:(id)a3;
@end

@implementation HMDCameraAudioParameterSelection

- (void)_generateAllCombinations:(id)a3
{
  if (([a3 streamingTierType] | 4) == 4)
  {
    v3 = 0;
    v31 = 60;
  }

  else
  {
    v31 = 0;
    v3 = 1;
  }

  v32 = [MEMORY[0x277CBEB18] array];
  v4 = [HMDCameraAudioParameterCombination alloc];
  v5 = [[HMDAudioCodecGroup alloc] initWithAudioCodecGroup:2];
  v6 = [[HMDBitRateSetting alloc] initWithBitRateSetting:0];
  v7 = [[HMDAudioSampleRate alloc] initWithSampleRate:1];
  if (v3)
  {
    v8 = &unk_283E719C0;
  }

  else
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v31];
  }

  v9 = [(HMDCameraAudioParameterCombination *)v4 initWithCodecGroup:v5 bitrateSetting:v6 sampleRate:v7 maximumBitrate:&unk_283E71990 minimumBitrate:&unk_283E71990 rtcpInterval:&unk_283E719A8 rtpPtime:v8];
  [v32 addObject:v9];

  if ((v3 & 1) == 0)
  {
  }

  v10 = [HMDCameraAudioParameterCombination alloc];
  v11 = [[HMDAudioCodecGroup alloc] initWithAudioCodecGroup:2];
  v12 = [[HMDBitRateSetting alloc] initWithBitRateSetting:0];
  v13 = [[HMDAudioSampleRate alloc] initWithSampleRate:2];
  if (v3)
  {
    v14 = &unk_283E719F0;
  }

  else
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v31];
  }

  v15 = [(HMDCameraAudioParameterCombination *)v10 initWithCodecGroup:v11 bitrateSetting:v12 sampleRate:v13 maximumBitrate:&unk_283E719D8 minimumBitrate:&unk_283E719D8 rtcpInterval:&unk_283E719A8 rtpPtime:v14];
  [v32 addObject:v15];

  if ((v3 & 1) == 0)
  {
  }

  v16 = [HMDCameraAudioParameterCombination alloc];
  v17 = [[HMDAudioCodecGroup alloc] initWithAudioCodecGroup:3];
  v18 = [[HMDBitRateSetting alloc] initWithBitRateSetting:0];
  v19 = [[HMDAudioSampleRate alloc] initWithSampleRate:1];
  if (v3)
  {
    v20 = &unk_283E719F0;
  }

  else
  {
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v31];
  }

  v21 = [(HMDCameraAudioParameterCombination *)v16 initWithCodecGroup:v17 bitrateSetting:v18 sampleRate:v19 maximumBitrate:&unk_283E71990 minimumBitrate:&unk_283E71990 rtcpInterval:&unk_283E719A8 rtpPtime:v20];
  [v32 addObject:v21];

  if ((v3 & 1) == 0)
  {
  }

  v22 = [HMDCameraAudioParameterCombination alloc];
  v23 = [[HMDAudioCodecGroup alloc] initWithAudioCodecGroup:3];
  v24 = [[HMDBitRateSetting alloc] initWithBitRateSetting:0];
  v25 = [[HMDAudioSampleRate alloc] initWithSampleRate:2];
  if (v3)
  {
    v26 = &unk_283E719F0;
  }

  else
  {
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v31];
  }

  v27 = [(HMDCameraAudioParameterCombination *)v22 initWithCodecGroup:v23 bitrateSetting:v24 sampleRate:v25 maximumBitrate:&unk_283E719D8 minimumBitrate:&unk_283E719D8 rtcpInterval:&unk_283E719A8 rtpPtime:v26];
  [v32 addObject:v27];

  if ((v3 & 1) == 0)
  {
  }

  v28 = [v32 copy];
  validAudioParameterCombinations = self->_validAudioParameterCombinations;
  self->_validAudioParameterCombinations = v28;
}

- (id)createSelectedAudioParameters
{
  v35[1] = *MEMORY[0x277D85DE8];
  v3 = rtpPtime;
  if (!v3)
  {
    v4 = [(HMDCameraAudioParameterSelection *)self selectedAudioParameterCombination];
    v3 = [v4 rtpPTime];
  }

  v32 = v3;
  v5 = [HMDAudioCodecParameters alloc];
  v6 = [(HMDCameraAudioParameterSelection *)self selectedAudioChannelCount];
  v7 = [(HMDCameraAudioParameterSelection *)self selectedBitRateSetting];
  v35[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
  v9 = [(HMDCameraAudioParameterSelection *)self selectedSampleRate];
  v34 = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
  v33 = [(HMDAudioCodecParameters *)v5 initWithChannelCount:v6 bitRateSetting:v8 audioSampleRate:v10 rtpPtime:v3];

  v11 = [HMDSelectedRTPParameters alloc];
  v12 = MEMORY[0x277CCABB0];
  v31 = [(HMDCameraAudioParameterSelection *)self selectedCodecGroupType];
  v13 = [v31 codec];
  v14 = 110;
  if (v13 == 1)
  {
    v14 = 8;
  }

  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = [v12 numberWithUnsignedInteger:v15];
  v17 = [(HMDCameraAudioParameterSelection *)self selectedAudioParameterCombination];
  v18 = [v17 maximumBitrate];
  v19 = [(HMDCameraAudioParameterSelection *)self selectedAudioParameterCombination];
  v20 = [v19 minimumBitrate];
  v21 = [(HMDCameraAudioParameterSelection *)self selectedAudioParameterCombination];
  v22 = [v21 rtcpInterval];
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:13];
  v24 = [(HMDSelectedRTPParameters *)v11 initWithPayloadType:v16 maximumBitrate:v18 minimumBitrate:v20 rtcpInterval:v22 comfortNoisePayloadType:v23];

  v25 = [HMDSelectedAudioParameters alloc];
  v26 = [(HMDCameraAudioParameterSelection *)self selectedCodecGroupType];
  v27 = [(HMDCameraAudioParameterSelection *)self comfortNoiseSupported];
  v28 = [(HMDSelectedAudioParameters *)v25 initWithCodecGroup:v26 codecParameter:v33 rtpParameter:v24 comfortNoiseEnabled:v27];

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)createSRTPParamters
{
  v3 = objc_opt_class();
  v4 = [(HMDCameraAudioParameterSelection *)self rtpConfiguration];
  v5 = [v4 srtpCryptoSuites];
  v6 = [v3 selectedSRTPParametersFromCryptoSuites:v5];

  return v6;
}

- (BOOL)_selectParametersFromCodec:(id)a3 bitRateSettings:(id)a4 sampleRates:(id)a5 audioChannelCount:(id)a6
{
  v61 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v14 = v11;
  v40 = [v14 countByEnumeratingWithState:&v51 objects:v60 count:16];
  if (v40)
  {
    v15 = *v52;
    v45 = v10;
    v43 = v13;
    v44 = v12;
    v42 = v14;
    v39 = *v52;
    do
    {
      v16 = 0;
      do
      {
        if (*v52 != v15)
        {
          objc_enumerationMutation(v14);
        }

        v41 = v16;
        v17 = *(*(&v51 + 1) + 8 * v16);
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        obj = v12;
        v18 = [obj countByEnumeratingWithState:&v47 objects:v59 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v48;
          while (2)
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v48 != v20)
              {
                objc_enumerationMutation(obj);
              }

              v22 = *(*(&v47 + 1) + 8 * i);
              v23 = [[HMDCameraAudioParameterCombination alloc] initWithCodecGroup:v10 bitrateSetting:v17 sampleRate:v22];
              v24 = [(HMDCameraAudioParameterSelection *)self validAudioParameterCombinations];
              v25 = [v24 indexOfObject:v23];

              if (v25 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v31 = [(HMDCameraAudioParameterSelection *)self validAudioParameterCombinations];
                v32 = [v31 objectAtIndex:v25];

                v33 = objc_autoreleasePoolPush();
                v34 = self;
                v35 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
                {
                  v36 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v56 = v36;
                  v57 = 2112;
                  v58 = v32;
                  _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Using audio parameter combination: %@", buf, 0x16u);

                  v10 = v45;
                }

                objc_autoreleasePoolPop(v33);
                [(HMDCameraAudioParameterSelection *)v34 setSelectedCodecGroupType:v10];
                [(HMDCameraAudioParameterSelection *)v34 setSelectedBitRateSetting:v17];
                [(HMDCameraAudioParameterSelection *)v34 setSelectedSampleRate:v22];
                v13 = v43;
                [(HMDCameraAudioParameterSelection *)v34 setSelectedAudioChannelCount:v43];
                [(HMDCameraAudioParameterSelection *)v34 setSelectedAudioParameterCombination:v32];

                v30 = 1;
                v12 = v44;
                v14 = v42;
                goto LABEL_23;
              }

              v26 = objc_autoreleasePoolPush();
              v27 = self;
              v28 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
              {
                v29 = HMFGetLogIdentifier();
                *buf = 138543618;
                v56 = v29;
                v57 = 2112;
                v58 = v23;
                _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Could not find audio parameter combination: %@", buf, 0x16u);

                v10 = v45;
              }

              objc_autoreleasePoolPop(v26);
            }

            v19 = [obj countByEnumeratingWithState:&v47 objects:v59 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }
        }

        v16 = v41 + 1;
        v13 = v43;
        v12 = v44;
        v14 = v42;
        v15 = v39;
      }

      while (v41 + 1 != v40);
      v30 = 0;
      v40 = [v42 countByEnumeratingWithState:&v51 objects:v60 count:16];
    }

    while (v40);
  }

  else
  {
    v30 = 0;
  }

LABEL_23:

  v37 = *MEMORY[0x277D85DE8];
  return v30;
}

- (BOOL)selectAudioParameters
{
  v64 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = [(HMDCameraAudioParameterSelection *)self audioCodecsPreference];
  v5 = [(HMDCameraAudioParameterSelection *)self streamingCapabilities];
  v6 = [v5 supportedAudioCodecs];
  v7 = [v6 allKeys];
  v51 = self;
  v8 = [(HMDCameraAudioParameterSelection *)self supportedAudioStreamConfiguration];
  v9 = [v8 codecConfigurations];
  v10 = [v9 allKeys];
  if (supportedAudioCodecs)
  {
    v11 = [HMDAudioCodecGroup arrayWithCodecs:?];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v3 selectedParametersFromPreferredParameters:v4 deviceSupportedParameters:v7 cameraSupportedParameters:v10 overriddenParameters:v11 parameterDescription:@"Audio-Codec"];

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v13 = v12;
  v52 = [v13 countByEnumeratingWithState:&v53 objects:v63 count:16];
  if (v52)
  {
    obj = v13;
    v50 = *v54;
    *&v14 = 138543874;
    v48 = v14;
    v15 = self;
LABEL_6:
    v16 = 0;
    while (1)
    {
      if (*v54 != v50)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v53 + 1) + 8 * v16);
      v18 = [(HMDCameraAudioParameterSelection *)v15 supportedAudioStreamConfiguration];
      v19 = [v18 codecConfigurations];
      v20 = [v19 objectForKeyedSubscript:v17];
      v21 = [v20 audioCodecParameters];

      v22 = objc_opt_class();
      v23 = [(HMDCameraAudioParameterSelection *)v15 bitrateSettingsPreference];
      v24 = [(HMDCameraAudioParameterSelection *)v15 bitrateSettingsPreference];
      v25 = [v21 bitRateSettings];
      v26 = [v22 selectedParametersFromPreferredParameters:v23 deviceSupportedParameters:v24 cameraSupportedParameters:v25 overriddenParameters:0 parameterDescription:@"Bit-Rate"];

      v27 = [(HMDCameraAudioParameterSelection *)v15 streamingCapabilities];
      v28 = [v27 supportedAudioCodecs];
      v29 = [v28 objectForKeyedSubscript:v17];

      v30 = objc_opt_class();
      v31 = [(HMDCameraAudioParameterSelection *)v15 sampleRatesPreference];
      v32 = [v29 allObjects];
      v33 = [v21 audioSampleRates];
      v34 = [v30 selectedParametersFromPreferredParameters:v31 deviceSupportedParameters:v32 cameraSupportedParameters:v33 overriddenParameters:0 parameterDescription:@"Sample-Rate"];

      if ([v26 count] && objc_msgSend(v34, "count"))
      {
        v35 = [v21 audioChannelCount];
        v15 = v51;
        v36 = [(HMDCameraAudioParameterSelection *)v51 _selectParametersFromCodec:v17 bitRateSettings:v26 sampleRates:v34 audioChannelCount:v35];

        if (v36)
        {

          [(HMDCameraAudioParameterSelection *)v51 setComfortNoiseSupported:MEMORY[0x277CBEC28]];
          v42 = [(HMDCameraAudioParameterSelection *)v51 streamingCapabilities];
          v43 = [v42 supportsComfortNoise];

          if (v43)
          {
            v44 = [(HMDCameraAudioParameterSelection *)v51 supportedAudioStreamConfiguration];
            v45 = [v44 supportsComfortNoise];
            [(HMDCameraAudioParameterSelection *)v51 setComfortNoiseSupported:v45];

            v41 = 1;
            v13 = obj;
            goto LABEL_23;
          }

          v41 = 1;
          v13 = obj;
          goto LABEL_25;
        }
      }

      else
      {
        v37 = objc_autoreleasePoolPush();
        v15 = v51;
        v38 = v51;
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          v40 = HMFGetLogIdentifier();
          *buf = v48;
          v58 = v40;
          v59 = 2112;
          v60 = v26;
          v61 = 2112;
          v62 = v34;
          _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@One of the intersected candidates is empty: candidateBitrateSettings: %@, candidateSampleRates: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v37);
      }

      if (v52 == ++v16)
      {
        v52 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
        if (v52)
        {
          goto LABEL_6;
        }

        v41 = 0;
        v13 = obj;
        goto LABEL_22;
      }
    }
  }

  v41 = 0;
LABEL_22:
  v44 = v13;
LABEL_23:

LABEL_25:
  v46 = *MEMORY[0x277D85DE8];
  return v41;
}

- (id)logIdentifier
{
  v2 = [(HMDCameraParameterSelection *)self sessionID];
  v3 = [v2 description];

  return v3;
}

- (HMDCameraAudioParameterSelection)initWithSessionID:(id)a3 supportedAudioConfiguration:(id)a4 supportedRTPConfiguration:(id)a5 streamingCapabilities:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v23.receiver = self;
  v23.super_class = HMDCameraAudioParameterSelection;
  v14 = [(HMDCameraParameterSelection *)&v23 initWithSessionID:a3];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_supportedAudioStreamConfiguration, a4);
    objc_storeStrong(&v15->_rtpConfiguration, a5);
    objc_storeStrong(&v15->_streamingCapabilities, a6);
    v16 = [HMDAudioCodecGroup arrayWithCodecs:&unk_283E75548];
    audioCodecsPreference = v15->_audioCodecsPreference;
    v15->_audioCodecsPreference = v16;

    v18 = [HMDBitRateSetting arrayWithSettings:&unk_283E75560];
    bitrateSettingsPreference = v15->_bitrateSettingsPreference;
    v15->_bitrateSettingsPreference = v18;

    v20 = [HMDAudioSampleRate arrayWithRates:&unk_283E75578];
    sampleRatesPreference = v15->_sampleRatesPreference;
    v15->_sampleRatesPreference = v20;

    [(HMDCameraAudioParameterSelection *)v15 _generateAllCombinations:v13];
  }

  return v15;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_12491 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_12491, &__block_literal_global_12492);
  }

  v3 = logCategory__hmf_once_v1_12493;

  return v3;
}

void __47__HMDCameraAudioParameterSelection_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_12493;
  logCategory__hmf_once_v1_12493 = v1;
}

@end