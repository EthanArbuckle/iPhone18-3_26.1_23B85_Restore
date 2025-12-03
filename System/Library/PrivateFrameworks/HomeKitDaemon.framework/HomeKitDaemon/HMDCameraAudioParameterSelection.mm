@interface HMDCameraAudioParameterSelection
+ (id)logCategory;
- (BOOL)_selectParametersFromCodec:(id)codec bitRateSettings:(id)settings sampleRates:(id)rates audioChannelCount:(id)count;
- (BOOL)selectAudioParameters;
- (HMDCameraAudioParameterSelection)initWithSessionID:(id)d supportedAudioConfiguration:(id)configuration supportedRTPConfiguration:(id)pConfiguration streamingCapabilities:(id)capabilities;
- (id)createSRTPParamters;
- (id)createSelectedAudioParameters;
- (id)logIdentifier;
- (void)_generateAllCombinations:(id)combinations;
@end

@implementation HMDCameraAudioParameterSelection

- (void)_generateAllCombinations:(id)combinations
{
  if (([combinations streamingTierType] | 4) == 4)
  {
    v3 = 0;
    v31 = 60;
  }

  else
  {
    v31 = 0;
    v3 = 1;
  }

  array = [MEMORY[0x277CBEB18] array];
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
  [array addObject:v9];

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
  [array addObject:v15];

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
  [array addObject:v21];

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
  [array addObject:v27];

  if ((v3 & 1) == 0)
  {
  }

  v28 = [array copy];
  validAudioParameterCombinations = self->_validAudioParameterCombinations;
  self->_validAudioParameterCombinations = v28;
}

- (id)createSelectedAudioParameters
{
  v35[1] = *MEMORY[0x277D85DE8];
  rtpPTime = rtpPtime;
  if (!rtpPTime)
  {
    selectedAudioParameterCombination = [(HMDCameraAudioParameterSelection *)self selectedAudioParameterCombination];
    rtpPTime = [selectedAudioParameterCombination rtpPTime];
  }

  v32 = rtpPTime;
  v5 = [HMDAudioCodecParameters alloc];
  selectedAudioChannelCount = [(HMDCameraAudioParameterSelection *)self selectedAudioChannelCount];
  selectedBitRateSetting = [(HMDCameraAudioParameterSelection *)self selectedBitRateSetting];
  v35[0] = selectedBitRateSetting;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
  selectedSampleRate = [(HMDCameraAudioParameterSelection *)self selectedSampleRate];
  v34 = selectedSampleRate;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
  v33 = [(HMDAudioCodecParameters *)v5 initWithChannelCount:selectedAudioChannelCount bitRateSetting:v8 audioSampleRate:v10 rtpPtime:rtpPTime];

  v11 = [HMDSelectedRTPParameters alloc];
  v12 = MEMORY[0x277CCABB0];
  selectedCodecGroupType = [(HMDCameraAudioParameterSelection *)self selectedCodecGroupType];
  codec = [selectedCodecGroupType codec];
  v14 = 110;
  if (codec == 1)
  {
    v14 = 8;
  }

  if (codec)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = [v12 numberWithUnsignedInteger:v15];
  selectedAudioParameterCombination2 = [(HMDCameraAudioParameterSelection *)self selectedAudioParameterCombination];
  maximumBitrate = [selectedAudioParameterCombination2 maximumBitrate];
  selectedAudioParameterCombination3 = [(HMDCameraAudioParameterSelection *)self selectedAudioParameterCombination];
  minimumBitrate = [selectedAudioParameterCombination3 minimumBitrate];
  selectedAudioParameterCombination4 = [(HMDCameraAudioParameterSelection *)self selectedAudioParameterCombination];
  rtcpInterval = [selectedAudioParameterCombination4 rtcpInterval];
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:13];
  v24 = [(HMDSelectedRTPParameters *)v11 initWithPayloadType:v16 maximumBitrate:maximumBitrate minimumBitrate:minimumBitrate rtcpInterval:rtcpInterval comfortNoisePayloadType:v23];

  v25 = [HMDSelectedAudioParameters alloc];
  selectedCodecGroupType2 = [(HMDCameraAudioParameterSelection *)self selectedCodecGroupType];
  comfortNoiseSupported = [(HMDCameraAudioParameterSelection *)self comfortNoiseSupported];
  v28 = [(HMDSelectedAudioParameters *)v25 initWithCodecGroup:selectedCodecGroupType2 codecParameter:v33 rtpParameter:v24 comfortNoiseEnabled:comfortNoiseSupported];

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)createSRTPParamters
{
  v3 = objc_opt_class();
  rtpConfiguration = [(HMDCameraAudioParameterSelection *)self rtpConfiguration];
  srtpCryptoSuites = [rtpConfiguration srtpCryptoSuites];
  v6 = [v3 selectedSRTPParametersFromCryptoSuites:srtpCryptoSuites];

  return v6;
}

- (BOOL)_selectParametersFromCodec:(id)codec bitRateSettings:(id)settings sampleRates:(id)rates audioChannelCount:(id)count
{
  v61 = *MEMORY[0x277D85DE8];
  codecCopy = codec;
  settingsCopy = settings;
  ratesCopy = rates;
  countCopy = count;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v14 = settingsCopy;
  v40 = [v14 countByEnumeratingWithState:&v51 objects:v60 count:16];
  if (v40)
  {
    v15 = *v52;
    v45 = codecCopy;
    v43 = countCopy;
    v44 = ratesCopy;
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
        obj = ratesCopy;
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
              v23 = [[HMDCameraAudioParameterCombination alloc] initWithCodecGroup:codecCopy bitrateSetting:v17 sampleRate:v22];
              validAudioParameterCombinations = [(HMDCameraAudioParameterSelection *)self validAudioParameterCombinations];
              v25 = [validAudioParameterCombinations indexOfObject:v23];

              if (v25 != 0x7FFFFFFFFFFFFFFFLL)
              {
                validAudioParameterCombinations2 = [(HMDCameraAudioParameterSelection *)self validAudioParameterCombinations];
                v32 = [validAudioParameterCombinations2 objectAtIndex:v25];

                v33 = objc_autoreleasePoolPush();
                selfCopy = self;
                v35 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
                {
                  v36 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v56 = v36;
                  v57 = 2112;
                  v58 = v32;
                  _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Using audio parameter combination: %@", buf, 0x16u);

                  codecCopy = v45;
                }

                objc_autoreleasePoolPop(v33);
                [(HMDCameraAudioParameterSelection *)selfCopy setSelectedCodecGroupType:codecCopy];
                [(HMDCameraAudioParameterSelection *)selfCopy setSelectedBitRateSetting:v17];
                [(HMDCameraAudioParameterSelection *)selfCopy setSelectedSampleRate:v22];
                countCopy = v43;
                [(HMDCameraAudioParameterSelection *)selfCopy setSelectedAudioChannelCount:v43];
                [(HMDCameraAudioParameterSelection *)selfCopy setSelectedAudioParameterCombination:v32];

                v30 = 1;
                ratesCopy = v44;
                v14 = v42;
                goto LABEL_23;
              }

              v26 = objc_autoreleasePoolPush();
              selfCopy2 = self;
              v28 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
              {
                v29 = HMFGetLogIdentifier();
                *buf = 138543618;
                v56 = v29;
                v57 = 2112;
                v58 = v23;
                _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Could not find audio parameter combination: %@", buf, 0x16u);

                codecCopy = v45;
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
        countCopy = v43;
        ratesCopy = v44;
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
  audioCodecsPreference = [(HMDCameraAudioParameterSelection *)self audioCodecsPreference];
  streamingCapabilities = [(HMDCameraAudioParameterSelection *)self streamingCapabilities];
  supportedAudioCodecs = [streamingCapabilities supportedAudioCodecs];
  allKeys = [supportedAudioCodecs allKeys];
  selfCopy = self;
  supportedAudioStreamConfiguration = [(HMDCameraAudioParameterSelection *)self supportedAudioStreamConfiguration];
  codecConfigurations = [supportedAudioStreamConfiguration codecConfigurations];
  allKeys2 = [codecConfigurations allKeys];
  if (supportedAudioCodecs)
  {
    v11 = [HMDAudioCodecGroup arrayWithCodecs:?];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v3 selectedParametersFromPreferredParameters:audioCodecsPreference deviceSupportedParameters:allKeys cameraSupportedParameters:allKeys2 overriddenParameters:v11 parameterDescription:@"Audio-Codec"];

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
    selfCopy2 = self;
LABEL_6:
    v16 = 0;
    while (1)
    {
      if (*v54 != v50)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v53 + 1) + 8 * v16);
      supportedAudioStreamConfiguration2 = [(HMDCameraAudioParameterSelection *)selfCopy2 supportedAudioStreamConfiguration];
      codecConfigurations2 = [supportedAudioStreamConfiguration2 codecConfigurations];
      v20 = [codecConfigurations2 objectForKeyedSubscript:v17];
      audioCodecParameters = [v20 audioCodecParameters];

      v22 = objc_opt_class();
      bitrateSettingsPreference = [(HMDCameraAudioParameterSelection *)selfCopy2 bitrateSettingsPreference];
      bitrateSettingsPreference2 = [(HMDCameraAudioParameterSelection *)selfCopy2 bitrateSettingsPreference];
      bitRateSettings = [audioCodecParameters bitRateSettings];
      v26 = [v22 selectedParametersFromPreferredParameters:bitrateSettingsPreference deviceSupportedParameters:bitrateSettingsPreference2 cameraSupportedParameters:bitRateSettings overriddenParameters:0 parameterDescription:@"Bit-Rate"];

      streamingCapabilities2 = [(HMDCameraAudioParameterSelection *)selfCopy2 streamingCapabilities];
      supportedAudioCodecs2 = [streamingCapabilities2 supportedAudioCodecs];
      v29 = [supportedAudioCodecs2 objectForKeyedSubscript:v17];

      v30 = objc_opt_class();
      sampleRatesPreference = [(HMDCameraAudioParameterSelection *)selfCopy2 sampleRatesPreference];
      allObjects = [v29 allObjects];
      audioSampleRates = [audioCodecParameters audioSampleRates];
      v34 = [v30 selectedParametersFromPreferredParameters:sampleRatesPreference deviceSupportedParameters:allObjects cameraSupportedParameters:audioSampleRates overriddenParameters:0 parameterDescription:@"Sample-Rate"];

      if ([v26 count] && objc_msgSend(v34, "count"))
      {
        audioChannelCount = [audioCodecParameters audioChannelCount];
        selfCopy2 = selfCopy;
        v36 = [(HMDCameraAudioParameterSelection *)selfCopy _selectParametersFromCodec:v17 bitRateSettings:v26 sampleRates:v34 audioChannelCount:audioChannelCount];

        if (v36)
        {

          [(HMDCameraAudioParameterSelection *)selfCopy setComfortNoiseSupported:MEMORY[0x277CBEC28]];
          streamingCapabilities3 = [(HMDCameraAudioParameterSelection *)selfCopy streamingCapabilities];
          supportsComfortNoise = [streamingCapabilities3 supportsComfortNoise];

          if (supportsComfortNoise)
          {
            supportedAudioStreamConfiguration3 = [(HMDCameraAudioParameterSelection *)selfCopy supportedAudioStreamConfiguration];
            supportsComfortNoise2 = [supportedAudioStreamConfiguration3 supportsComfortNoise];
            [(HMDCameraAudioParameterSelection *)selfCopy setComfortNoiseSupported:supportsComfortNoise2];

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
        selfCopy2 = selfCopy;
        v38 = selfCopy;
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
  supportedAudioStreamConfiguration3 = v13;
LABEL_23:

LABEL_25:
  v46 = *MEMORY[0x277D85DE8];
  return v41;
}

- (id)logIdentifier
{
  sessionID = [(HMDCameraParameterSelection *)self sessionID];
  v3 = [sessionID description];

  return v3;
}

- (HMDCameraAudioParameterSelection)initWithSessionID:(id)d supportedAudioConfiguration:(id)configuration supportedRTPConfiguration:(id)pConfiguration streamingCapabilities:(id)capabilities
{
  configurationCopy = configuration;
  pConfigurationCopy = pConfiguration;
  capabilitiesCopy = capabilities;
  v23.receiver = self;
  v23.super_class = HMDCameraAudioParameterSelection;
  v14 = [(HMDCameraParameterSelection *)&v23 initWithSessionID:d];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_supportedAudioStreamConfiguration, configuration);
    objc_storeStrong(&v15->_rtpConfiguration, pConfiguration);
    objc_storeStrong(&v15->_streamingCapabilities, capabilities);
    v16 = [HMDAudioCodecGroup arrayWithCodecs:&unk_283E75548];
    audioCodecsPreference = v15->_audioCodecsPreference;
    v15->_audioCodecsPreference = v16;

    v18 = [HMDBitRateSetting arrayWithSettings:&unk_283E75560];
    bitrateSettingsPreference = v15->_bitrateSettingsPreference;
    v15->_bitrateSettingsPreference = v18;

    v20 = [HMDAudioSampleRate arrayWithRates:&unk_283E75578];
    sampleRatesPreference = v15->_sampleRatesPreference;
    v15->_sampleRatesPreference = v20;

    [(HMDCameraAudioParameterSelection *)v15 _generateAllCombinations:capabilitiesCopy];
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