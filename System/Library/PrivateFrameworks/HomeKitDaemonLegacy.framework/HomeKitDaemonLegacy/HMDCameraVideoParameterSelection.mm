@interface HMDCameraVideoParameterSelection
+ (id)logCategory;
+ (id)videoResolutionPreferenceForStreamingTierType:(unint64_t)type;
- (BOOL)_selectParametersFromCodec:(id)codec profiles:(id)profiles levels:(id)levels packetizationModes:(id)modes videoAttributes:(id)attributes;
- (BOOL)selectVideoParameters;
- (HMDCameraVideoParameterSelection)initWithSessionID:(id)d videoTierParameters:(id)parameters supportedVideoConfiguration:(id)configuration supportedRTPConfiguration:(id)pConfiguration streamingCapabilities:(id)capabilities;
- (id)createReselectedVideoParameters:(id)parameters;
- (id)createSRTPParamters;
- (id)createSelectedVideoParameters;
- (id)logIdentifier;
- (void)_generateAllCombinations;
@end

@implementation HMDCameraVideoParameterSelection

- (void)_generateAllCombinations
{
  v168 = *MEMORY[0x277D85DE8];
  v3 = [HMDVideoResolution arrayWithResolutions:&unk_286627118];
  array = [MEMORY[0x277CBEB18] array];
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  obj = v3;
  v144 = [obj countByEnumeratingWithState:&v160 objects:v167 count:16];
  if (v144)
  {
    v140 = *v161;
    do
    {
      v5 = 0;
      do
      {
        if (*v161 != v140)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v160 + 1) + 8 * v5);
        videoTierParameters = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
        videoTierCombinations = [videoTierParameters videoTierCombinations];
        v9 = [videoTierCombinations objectForKeyedSubscript:v6];

        if (v9)
        {
          v10 = [HMDCameraVideoParameterCombination alloc];
          v11 = [[HMDH264Profile alloc] initWithH264Profile:0];
          v12 = [[HMDH264Level alloc] initWithH264Level:0];
          videoTierParameters2 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
          videoTierCombinations2 = [videoTierParameters2 videoTierCombinations];
          v15 = [videoTierCombinations2 objectForKeyedSubscript:v6];
          v16 = [(HMDCameraVideoParameterCombination *)v10 initWithProfile:v11 level:v12 videoTier:v15];
          [array addObject:v16];
        }

        videoTierParameters3 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
        videoTierCombinations3 = [videoTierParameters3 videoTierCombinations];
        v19 = [videoTierCombinations3 objectForKeyedSubscript:v6];

        if (v19)
        {
          v20 = [HMDCameraVideoParameterCombination alloc];
          v21 = [[HMDH264Profile alloc] initWithH264Profile:1];
          v22 = [[HMDH264Level alloc] initWithH264Level:0];
          videoTierParameters4 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
          videoTierCombinations4 = [videoTierParameters4 videoTierCombinations];
          v25 = [videoTierCombinations4 objectForKeyedSubscript:v6];
          v26 = [(HMDCameraVideoParameterCombination *)v20 initWithProfile:v21 level:v22 videoTier:v25];
          [array addObject:v26];
        }

        videoTierParameters5 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
        videoTierCombinations5 = [videoTierParameters5 videoTierCombinations];
        v29 = [videoTierCombinations5 objectForKeyedSubscript:v6];

        if (v29)
        {
          v30 = [HMDCameraVideoParameterCombination alloc];
          v31 = [[HMDH264Profile alloc] initWithH264Profile:2];
          v32 = [[HMDH264Level alloc] initWithH264Level:0];
          videoTierParameters6 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
          videoTierCombinations6 = [videoTierParameters6 videoTierCombinations];
          v35 = [videoTierCombinations6 objectForKeyedSubscript:v6];
          v36 = [(HMDCameraVideoParameterCombination *)v30 initWithProfile:v31 level:v32 videoTier:v35];
          [array addObject:v36];
        }

        ++v5;
      }

      while (v144 != v5);
      v144 = [obj countByEnumeratingWithState:&v160 objects:v167 count:16];
    }

    while (v144);
  }

  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  obja = obj;
  v145 = [obja countByEnumeratingWithState:&v156 objects:v166 count:16];
  if (v145)
  {
    v141 = *v157;
    do
    {
      v37 = 0;
      do
      {
        if (*v157 != v141)
        {
          objc_enumerationMutation(obja);
        }

        v38 = *(*(&v156 + 1) + 8 * v37);
        videoTierParameters7 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
        videoTierCombinations7 = [videoTierParameters7 videoTierCombinations];
        v41 = [videoTierCombinations7 objectForKeyedSubscript:v38];

        if (v41)
        {
          v42 = [HMDCameraVideoParameterCombination alloc];
          v43 = [[HMDH264Profile alloc] initWithH264Profile:0];
          v44 = [[HMDH264Level alloc] initWithH264Level:1];
          videoTierParameters8 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
          videoTierCombinations8 = [videoTierParameters8 videoTierCombinations];
          v47 = [videoTierCombinations8 objectForKeyedSubscript:v38];
          v48 = [(HMDCameraVideoParameterCombination *)v42 initWithProfile:v43 level:v44 videoTier:v47];
          [array addObject:v48];
        }

        videoTierParameters9 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
        videoTierCombinations9 = [videoTierParameters9 videoTierCombinations];
        v51 = [videoTierCombinations9 objectForKeyedSubscript:v38];

        if (v51)
        {
          v52 = [HMDCameraVideoParameterCombination alloc];
          v53 = [[HMDH264Profile alloc] initWithH264Profile:1];
          v54 = [[HMDH264Level alloc] initWithH264Level:1];
          videoTierParameters10 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
          videoTierCombinations10 = [videoTierParameters10 videoTierCombinations];
          v57 = [videoTierCombinations10 objectForKeyedSubscript:v38];
          v58 = [(HMDCameraVideoParameterCombination *)v52 initWithProfile:v53 level:v54 videoTier:v57];
          [array addObject:v58];
        }

        videoTierParameters11 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
        videoTierCombinations11 = [videoTierParameters11 videoTierCombinations];
        v61 = [videoTierCombinations11 objectForKeyedSubscript:v38];

        if (v61)
        {
          v62 = [HMDCameraVideoParameterCombination alloc];
          v63 = [[HMDH264Profile alloc] initWithH264Profile:2];
          v64 = [[HMDH264Level alloc] initWithH264Level:1];
          videoTierParameters12 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
          videoTierCombinations12 = [videoTierParameters12 videoTierCombinations];
          v67 = [videoTierCombinations12 objectForKeyedSubscript:v38];
          v68 = [(HMDCameraVideoParameterCombination *)v62 initWithProfile:v63 level:v64 videoTier:v67];
          [array addObject:v68];
        }

        ++v37;
      }

      while (v145 != v37);
      v145 = [obja countByEnumeratingWithState:&v156 objects:v166 count:16];
    }

    while (v145);
  }

  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  objb = obja;
  v146 = [objb countByEnumeratingWithState:&v152 objects:v165 count:16];
  if (v146)
  {
    v142 = *v153;
    do
    {
      v69 = 0;
      do
      {
        if (*v153 != v142)
        {
          objc_enumerationMutation(objb);
        }

        v70 = *(*(&v152 + 1) + 8 * v69);
        videoTierParameters13 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
        videoTierCombinations13 = [videoTierParameters13 videoTierCombinations];
        v73 = [videoTierCombinations13 objectForKeyedSubscript:v70];

        if (v73)
        {
          v74 = [HMDCameraVideoParameterCombination alloc];
          v75 = [[HMDH264Profile alloc] initWithH264Profile:0];
          v76 = [[HMDH264Level alloc] initWithH264Level:2];
          videoTierParameters14 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
          videoTierCombinations14 = [videoTierParameters14 videoTierCombinations];
          v79 = [videoTierCombinations14 objectForKeyedSubscript:v70];
          v80 = [(HMDCameraVideoParameterCombination *)v74 initWithProfile:v75 level:v76 videoTier:v79];
          [array addObject:v80];
        }

        videoTierParameters15 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
        videoTierCombinations15 = [videoTierParameters15 videoTierCombinations];
        v83 = [videoTierCombinations15 objectForKeyedSubscript:v70];

        if (v83)
        {
          v84 = [HMDCameraVideoParameterCombination alloc];
          v85 = [[HMDH264Profile alloc] initWithH264Profile:1];
          v86 = [[HMDH264Level alloc] initWithH264Level:2];
          videoTierParameters16 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
          videoTierCombinations16 = [videoTierParameters16 videoTierCombinations];
          v89 = [videoTierCombinations16 objectForKeyedSubscript:v70];
          v90 = [(HMDCameraVideoParameterCombination *)v84 initWithProfile:v85 level:v86 videoTier:v89];
          [array addObject:v90];
        }

        videoTierParameters17 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
        videoTierCombinations17 = [videoTierParameters17 videoTierCombinations];
        v93 = [videoTierCombinations17 objectForKeyedSubscript:v70];

        if (v93)
        {
          v94 = [HMDCameraVideoParameterCombination alloc];
          v95 = [[HMDH264Profile alloc] initWithH264Profile:2];
          v96 = [[HMDH264Level alloc] initWithH264Level:2];
          videoTierParameters18 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
          videoTierCombinations18 = [videoTierParameters18 videoTierCombinations];
          v99 = [videoTierCombinations18 objectForKeyedSubscript:v70];
          v100 = [(HMDCameraVideoParameterCombination *)v94 initWithProfile:v95 level:v96 videoTier:v99];
          [array addObject:v100];
        }

        ++v69;
      }

      while (v146 != v69);
      v146 = [objb countByEnumeratingWithState:&v152 objects:v165 count:16];
    }

    while (v146);
  }

  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  objc = objb;
  v147 = [objc countByEnumeratingWithState:&v148 objects:v164 count:16];
  if (v147)
  {
    v143 = *v149;
    do
    {
      v101 = 0;
      do
      {
        if (*v149 != v143)
        {
          objc_enumerationMutation(objc);
        }

        v102 = *(*(&v148 + 1) + 8 * v101);
        videoTierParameters19 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
        videoTierCombinations19 = [videoTierParameters19 videoTierCombinations];
        v105 = [videoTierCombinations19 objectForKeyedSubscript:v102];

        if (v105)
        {
          v106 = [HMDCameraVideoParameterCombination alloc];
          v107 = [[HMDH264Profile alloc] initWithH264Profile:0];
          v108 = [[HMDH264Level alloc] initWithH264Level:3];
          videoTierParameters20 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
          videoTierCombinations20 = [videoTierParameters20 videoTierCombinations];
          v111 = [videoTierCombinations20 objectForKeyedSubscript:v102];
          v112 = [(HMDCameraVideoParameterCombination *)v106 initWithProfile:v107 level:v108 videoTier:v111];
          [array addObject:v112];
        }

        videoTierParameters21 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
        videoTierCombinations21 = [videoTierParameters21 videoTierCombinations];
        v115 = [videoTierCombinations21 objectForKeyedSubscript:v102];

        if (v115)
        {
          v116 = [HMDCameraVideoParameterCombination alloc];
          v117 = [[HMDH264Profile alloc] initWithH264Profile:1];
          v118 = [[HMDH264Level alloc] initWithH264Level:3];
          videoTierParameters22 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
          videoTierCombinations22 = [videoTierParameters22 videoTierCombinations];
          v121 = [videoTierCombinations22 objectForKeyedSubscript:v102];
          v122 = [(HMDCameraVideoParameterCombination *)v116 initWithProfile:v117 level:v118 videoTier:v121];
          [array addObject:v122];
        }

        videoTierParameters23 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
        videoTierCombinations23 = [videoTierParameters23 videoTierCombinations];
        v125 = [videoTierCombinations23 objectForKeyedSubscript:v102];

        if (v125)
        {
          v126 = [HMDCameraVideoParameterCombination alloc];
          v127 = [[HMDH264Profile alloc] initWithH264Profile:2];
          v128 = [[HMDH264Level alloc] initWithH264Level:3];
          videoTierParameters24 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
          videoTierCombinations24 = [videoTierParameters24 videoTierCombinations];
          v131 = [videoTierCombinations24 objectForKeyedSubscript:v102];
          v132 = [(HMDCameraVideoParameterCombination *)v126 initWithProfile:v127 level:v128 videoTier:v131];
          [array addObject:v132];
        }

        ++v101;
      }

      while (v147 != v101);
      v147 = [objc countByEnumeratingWithState:&v148 objects:v164 count:16];
    }

    while (v147);
  }

  v133 = [array copy];
  validVideoParameterCombinations = self->_validVideoParameterCombinations;
  self->_validVideoParameterCombinations = v133;

  v135 = *MEMORY[0x277D85DE8];
}

- (id)createReselectedVideoParameters:(id)parameters
{
  parametersCopy = parameters;
  v4 = [HMDVideoAttributes alloc];
  videoResolution = [parametersCopy videoResolution];
  framerate = [parametersCopy framerate];
  v7 = [(HMDVideoAttributes *)v4 initWithResolution:videoResolution framerate:framerate];

  v8 = [HMDReselectedRTPParameters alloc];
  maxBitRate = [parametersCopy maxBitRate];
  minBitRate = [parametersCopy minBitRate];
  rtcpInterval = [parametersCopy rtcpInterval];

  v12 = [(HMDReselectedRTPParameters *)v8 initWithMaximumBitrate:maxBitRate minimumBitrate:minBitRate rtcpInterval:rtcpInterval];
  v13 = [[HMDReselectedVideoParameters alloc] initWithAttribute:v7 rtpParameter:v12];

  return v13;
}

- (id)createSelectedVideoParameters
{
  v35[1] = *MEMORY[0x277D85DE8];
  v3 = [HMDVideoCodecParameters alloc];
  selectedProfile = [(HMDCameraVideoParameterSelection *)self selectedProfile];
  v35[0] = selectedProfile;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
  selectedLevel = [(HMDCameraVideoParameterSelection *)self selectedLevel];
  v34 = selectedLevel;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
  selectedPacketizationMode = [(HMDCameraVideoParameterSelection *)self selectedPacketizationMode];
  v33 = selectedPacketizationMode;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
  v32 = [(HMDVideoCodecParameters *)v3 initWithProfiles:v5 levels:v7 packetizationModes:v9];

  v10 = [HMDVideoAttributes alloc];
  selectedVideoTier = [(HMDCameraVideoParameterSelection *)self selectedVideoTier];
  videoResolution = [selectedVideoTier videoResolution];
  selectedVideoTier2 = [(HMDCameraVideoParameterSelection *)self selectedVideoTier];
  framerate = [selectedVideoTier2 framerate];
  v31 = [(HMDVideoAttributes *)v10 initWithResolution:videoResolution framerate:framerate];

  v15 = [HMDSelectedRTPParameters alloc];
  v16 = MEMORY[0x277CCABB0];
  selectedCodecType = [(HMDCameraVideoParameterSelection *)self selectedCodecType];
  [selectedCodecType codecType];
  v18 = [v16 numberWithUnsignedInteger:99];
  selectedVideoTier3 = [(HMDCameraVideoParameterSelection *)self selectedVideoTier];
  maxBitRate = [selectedVideoTier3 maxBitRate];
  selectedVideoTier4 = [(HMDCameraVideoParameterSelection *)self selectedVideoTier];
  minBitRate = [selectedVideoTier4 minBitRate];
  selectedVideoTier5 = [(HMDCameraVideoParameterSelection *)self selectedVideoTier];
  rtcpInterval = [selectedVideoTier5 rtcpInterval];
  v25 = [(HMDSelectedRTPParameters *)v15 initWithPayloadType:v18 maximumBitrate:maxBitRate minimumBitrate:minBitRate rtcpInterval:rtcpInterval comfortNoisePayloadType:0];

  v26 = [HMDSelectedVideoParameters alloc];
  selectedCodecType2 = [(HMDCameraVideoParameterSelection *)self selectedCodecType];
  v28 = [(HMDSelectedVideoParameters *)v26 initWithCodec:selectedCodecType2 codecParameter:v32 attribute:v31 rtpParameter:v25];

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)createSRTPParamters
{
  v3 = objc_opt_class();
  rtpConfiguration = [(HMDCameraVideoParameterSelection *)self rtpConfiguration];
  srtpCryptoSuites = [rtpConfiguration srtpCryptoSuites];
  v6 = [v3 selectedSRTPParametersFromCryptoSuites:srtpCryptoSuites];

  return v6;
}

- (BOOL)_selectParametersFromCodec:(id)codec profiles:(id)profiles levels:(id)levels packetizationModes:(id)modes videoAttributes:(id)attributes
{
  v95 = *MEMORY[0x277D85DE8];
  codecCopy = codec;
  profilesCopy = profiles;
  levelsCopy = levels;
  modesCopy = modes;
  attributesCopy = attributes;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v17 = profilesCopy;
  v18 = [v17 countByEnumeratingWithState:&v84 objects:v94 count:16];
  if (v18)
  {
    v19 = *v85;
    v69 = levelsCopy;
    v70 = codecCopy;
    v67 = v17;
    v68 = modesCopy;
    v66 = attributesCopy;
    v61 = *v85;
    do
    {
      v20 = 0;
      v60 = v18;
      do
      {
        if (*v85 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v63 = v20;
        v74 = *(*(&v84 + 1) + 8 * v20);
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v21 = levelsCopy;
        v64 = [v21 countByEnumeratingWithState:&v80 objects:v93 count:16];
        if (v64)
        {
          v22 = *v81;
          v71 = v21;
          v62 = *v81;
          do
          {
            v23 = 0;
            do
            {
              if (*v81 != v22)
              {
                objc_enumerationMutation(v21);
              }

              v65 = v23;
              v75 = *(*(&v80 + 1) + 8 * v23);
              v76 = 0u;
              v77 = 0u;
              v78 = 0u;
              v79 = 0u;
              obj = attributesCopy;
              v24 = [obj countByEnumeratingWithState:&v76 objects:v92 count:16];
              if (v24)
              {
                v25 = v24;
                v73 = *v77;
                while (2)
                {
                  for (i = 0; i != v25; ++i)
                  {
                    if (*v77 != v73)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v27 = *(*(&v76 + 1) + 8 * i);
                    v28 = [HMDCameraVideoParameterCombination alloc];
                    videoTierParameters = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
                    videoTierCombinations = [videoTierParameters videoTierCombinations];
                    videoResolution = [v27 videoResolution];
                    v32 = [videoTierCombinations objectForKeyedSubscript:videoResolution];
                    v33 = [(HMDCameraVideoParameterCombination *)v28 initWithProfile:v74 level:v75 videoTier:v32];

                    validVideoParameterCombinations = [(HMDCameraVideoParameterSelection *)self validVideoParameterCombinations];
                    v35 = [validVideoParameterCombinations indexOfObject:v33];

                    if (v35 != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      validVideoParameterCombinations2 = [(HMDCameraVideoParameterSelection *)self validVideoParameterCombinations];
                      v43 = [validVideoParameterCombinations2 objectAtIndex:v35];

                      v44 = objc_autoreleasePoolPush();
                      selfCopy = self;
                      v46 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
                      {
                        v47 = HMFGetLogIdentifier();
                        *buf = 138543618;
                        v89 = v47;
                        v90 = 2112;
                        v91 = v43;
                        _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_INFO, "%{public}@Selected video parameter combination: %@", buf, 0x16u);
                      }

                      objc_autoreleasePoolPop(v44);
                      videoTierParameters2 = [(HMDCameraVideoParameterSelection *)selfCopy videoTierParameters];
                      [videoTierParameters2 updateTierOrder:obj];

                      videoTierParameters3 = [(HMDCameraVideoParameterSelection *)selfCopy videoTierParameters];
                      videoTier = [v43 videoTier];
                      videoResolution2 = [videoTier videoResolution];
                      [videoTierParameters3 selectInitialTierWithAspectRatio:{+[HMDStreamingCapabilities aspectRatioOfResolution:](HMDStreamingCapabilities, "aspectRatioOfResolution:", videoResolution2)}];

                      codecCopy = v70;
                      [(HMDCameraVideoParameterSelection *)selfCopy setSelectedCodecType:v70];
                      [(HMDCameraVideoParameterSelection *)selfCopy setSelectedProfile:v74];
                      [(HMDCameraVideoParameterSelection *)selfCopy setSelectedLevel:v75];
                      modesCopy = v68;
                      v52 = [v68 objectAtIndex:0];
                      [(HMDCameraVideoParameterSelection *)selfCopy setSelectedPacketizationMode:v52];

                      videoTierParameters4 = [(HMDCameraVideoParameterSelection *)selfCopy videoTierParameters];
                      currentPickedTier = [videoTierParameters4 currentPickedTier];
                      [(HMDCameraVideoParameterSelection *)selfCopy setSelectedVideoTier:currentPickedTier];

                      videoTierParameters5 = [(HMDCameraVideoParameterSelection *)selfCopy videoTierParameters];
                      currentPickedTier2 = [videoTierParameters5 currentPickedTier];
                      framerate = [currentPickedTier2 framerate];
                      [(HMDCameraVideoParameterSelection *)selfCopy setSelectedFramerate:framerate];

                      v41 = 1;
                      levelsCopy = v69;
                      attributesCopy = v66;
                      v17 = v67;
                      goto LABEL_30;
                    }

                    v36 = objc_autoreleasePoolPush();
                    selfCopy2 = self;
                    v38 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
                    {
                      v39 = HMFGetLogIdentifier();
                      videoResolution3 = [v27 videoResolution];
                      *buf = 138543618;
                      v89 = v39;
                      v90 = 2112;
                      v91 = videoResolution3;
                      _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@Combination does not exist for video resolution: %@", buf, 0x16u);
                    }

                    objc_autoreleasePoolPop(v36);
                  }

                  v25 = [obj countByEnumeratingWithState:&v76 objects:v92 count:16];
                  if (v25)
                  {
                    continue;
                  }

                  break;
                }
              }

              v23 = v65 + 1;
              levelsCopy = v69;
              codecCopy = v70;
              v17 = v67;
              modesCopy = v68;
              attributesCopy = v66;
              v21 = v71;
              v22 = v62;
            }

            while (v65 + 1 != v64);
            v64 = [v71 countByEnumeratingWithState:&v80 objects:v93 count:16];
          }

          while (v64);
        }

        v20 = v63 + 1;
        v19 = v61;
      }

      while (v63 + 1 != v60);
      v18 = [v17 countByEnumeratingWithState:&v84 objects:v94 count:16];
      v19 = v61;
      v41 = 0;
    }

    while (v18);
  }

  else
  {
    v41 = 0;
  }

LABEL_30:

  v58 = *MEMORY[0x277D85DE8];
  return v41;
}

- (BOOL)selectVideoParameters
{
  v125 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  videoCodecsPreference = [(HMDCameraVideoParameterSelection *)self videoCodecsPreference];
  streamingCapabilities = [(HMDCameraVideoParameterSelection *)self streamingCapabilities];
  supportedVideoCodecs = [streamingCapabilities supportedVideoCodecs];
  allObjects = [supportedVideoCodecs allObjects];
  selfCopy = self;
  supportedVideoStreamConfiguration = [(HMDCameraVideoParameterSelection *)self supportedVideoStreamConfiguration];
  codecConfigurations = [supportedVideoStreamConfiguration codecConfigurations];
  allKeys = [codecConfigurations allKeys];
  if (supportedVideoCodecs)
  {
    v11 = [HMDVideoCodec arrayWithCodecTypes:?];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v3 selectedParametersFromPreferredParameters:videoCodecsPreference deviceSupportedParameters:allObjects cameraSupportedParameters:allKeys overriddenParameters:v11 parameterDescription:@"Video-Codecs"];

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  obj = v12;
  v80 = [obj countByEnumeratingWithState:&v105 objects:v124 count:16];
  if (v80)
  {
    v77 = 0;
    v79 = *v106;
    v13 = 0x277CBE000uLL;
    selfCopy2 = self;
LABEL_6:
    v15 = 0;
    while (1)
    {
      if (*v106 != v79)
      {
        objc_enumerationMutation(obj);
      }

      v83 = v15;
      v16 = *(*(&v105 + 1) + 8 * v15);
      supportedVideoStreamConfiguration2 = [(HMDCameraVideoParameterSelection *)selfCopy2 supportedVideoStreamConfiguration];
      codecConfigurations2 = [supportedVideoStreamConfiguration2 codecConfigurations];
      v19 = [codecConfigurations2 objectForKeyedSubscript:v16];
      codecParameters = [v19 codecParameters];

      supportedVideoStreamConfiguration3 = [(HMDCameraVideoParameterSelection *)selfCopy2 supportedVideoStreamConfiguration];
      codecConfigurations3 = [supportedVideoStreamConfiguration3 codecConfigurations];
      v82 = v16;
      v23 = [codecConfigurations3 objectForKeyedSubscript:v16];
      videoAttributes = [v23 videoAttributes];

      v25 = objc_opt_class();
      h264ProfilesPreference = [(HMDCameraVideoParameterSelection *)selfCopy2 h264ProfilesPreference];
      streamingCapabilities2 = [(HMDCameraVideoParameterSelection *)selfCopy2 streamingCapabilities];
      supportedH264Profiles = [streamingCapabilities2 supportedH264Profiles];
      allObjects2 = [supportedH264Profiles allObjects];
      h264Profiles = [codecParameters h264Profiles];
      v87 = [v25 selectedParametersFromPreferredParameters:h264ProfilesPreference deviceSupportedParameters:allObjects2 cameraSupportedParameters:h264Profiles overriddenParameters:0 parameterDescription:@"H264-Profile"];

      v31 = objc_opt_class();
      h264LevelsPreference = [(HMDCameraVideoParameterSelection *)selfCopy2 h264LevelsPreference];
      streamingCapabilities3 = [(HMDCameraVideoParameterSelection *)selfCopy2 streamingCapabilities];
      supportedH264Levels = [streamingCapabilities3 supportedH264Levels];
      allObjects3 = [supportedH264Levels allObjects];
      levels = [codecParameters levels];
      v86 = [v31 selectedParametersFromPreferredParameters:h264LevelsPreference deviceSupportedParameters:allObjects3 cameraSupportedParameters:levels overriddenParameters:0 parameterDescription:@"H264-Level"];

      v37 = objc_opt_class();
      h264PacketizationPreference = [(HMDCameraVideoParameterSelection *)selfCopy2 h264PacketizationPreference];
      streamingCapabilities4 = [(HMDCameraVideoParameterSelection *)selfCopy2 streamingCapabilities];
      supportedPacketizationModes = [streamingCapabilities4 supportedPacketizationModes];
      allObjects4 = [supportedPacketizationModes allObjects];
      v88 = codecParameters;
      packetizationModes = [codecParameters packetizationModes];
      v85 = [v37 selectedParametersFromPreferredParameters:h264PacketizationPreference deviceSupportedParameters:allObjects4 cameraSupportedParameters:packetizationModes overriddenParameters:0 parameterDescription:@"H264-Packetization"];

      array = [*(v13 + 2840) array];
      v101 = 0u;
      v102 = 0u;
      v103 = 0u;
      v104 = 0u;
      v92 = videoAttributes;
      v44 = [v92 countByEnumeratingWithState:&v101 objects:v123 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = *v102;
        do
        {
          for (i = 0; i != v45; ++i)
          {
            if (*v102 != v46)
            {
              objc_enumerationMutation(v92);
            }

            v48 = *(*(&v101 + 1) + 8 * i);
            videoResolution = [v48 videoResolution];

            if (videoResolution)
            {
              videoResolution2 = [v48 videoResolution];
              [array addObject:videoResolution2];
            }
          }

          v45 = [v92 countByEnumeratingWithState:&v101 objects:v123 count:16];
        }

        while (v45);
      }

      v51 = objc_opt_class();
      videoResolutionsPreference = [(HMDCameraVideoParameterSelection *)selfCopy2 videoResolutionsPreference];
      streamingCapabilities5 = [(HMDCameraVideoParameterSelection *)selfCopy2 streamingCapabilities];
      supportedVideoResolutions = [streamingCapabilities5 supportedVideoResolutions];
      allObjects5 = [supportedVideoResolutions allObjects];
      if (supportedResolutions)
      {
        v56 = [HMDVideoResolution arrayWithResolutions:?];
      }

      else
      {
        v56 = 0;
      }

      v84 = array;
      v57 = [v51 selectedParametersFromPreferredParameters:videoResolutionsPreference deviceSupportedParameters:allObjects5 cameraSupportedParameters:array overriddenParameters:v56 parameterDescription:@"Resolution"];

      array2 = [*(v13 + 2840) array];
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      v100 = 0u;
      v89 = v57;
      v91 = [v89 countByEnumeratingWithState:&v97 objects:v122 count:16];
      if (v91)
      {
        v90 = *v98;
        do
        {
          for (j = 0; j != v91; ++j)
          {
            if (*v98 != v90)
            {
              objc_enumerationMutation(v89);
            }

            v60 = *(*(&v97 + 1) + 8 * j);
            v93 = 0u;
            v94 = 0u;
            v95 = 0u;
            v96 = 0u;
            v61 = v92;
            v62 = [v61 countByEnumeratingWithState:&v93 objects:v121 count:16];
            if (v62)
            {
              v63 = v62;
              v64 = *v94;
              do
              {
                for (k = 0; k != v63; ++k)
                {
                  if (*v94 != v64)
                  {
                    objc_enumerationMutation(v61);
                  }

                  v66 = *(*(&v93 + 1) + 8 * k);
                  videoResolution3 = [v66 videoResolution];
                  v68 = [v60 isEqual:videoResolution3];

                  if (v68)
                  {
                    [array2 addObject:v66];
                  }
                }

                v63 = [v61 countByEnumeratingWithState:&v93 objects:v121 count:16];
              }

              while (v63);
            }
          }

          v91 = [v89 countByEnumeratingWithState:&v97 objects:v122 count:16];
        }

        while (v91);
      }

      if ([v87 count] && objc_msgSend(v86, "count") && objc_msgSend(v85, "count") && objc_msgSend(array2, "count"))
      {
        selfCopy2 = selfCopy;
        v69 = [(HMDCameraVideoParameterSelection *)selfCopy _selectParametersFromCodec:v82 profiles:v87 levels:v86 packetizationModes:v85 videoAttributes:array2];
        v77 |= v69;
        v70 = v69 ? 2 : 0;
        v13 = 0x277CBE000;
      }

      else
      {
        v71 = objc_autoreleasePoolPush();
        selfCopy2 = selfCopy;
        v72 = selfCopy;
        v73 = HMFGetOSLogHandle();
        v13 = 0x277CBE000;
        if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
        {
          v74 = HMFGetLogIdentifier();
          *buf = 138544642;
          v110 = v74;
          v111 = 2112;
          v112 = v87;
          v113 = 2112;
          v114 = v86;
          v115 = 2112;
          v116 = v85;
          v117 = 2112;
          v118 = v89;
          v119 = 2112;
          v120 = array2;
          _os_log_impl(&dword_2531F8000, v73, OS_LOG_TYPE_INFO, "%{public}@One of the intersected candidates is empty: candidateProfiles: %@, candidateLevels: %@, candidatePacketModes: %@, candidateVideoResolutions: %@, candidateAttributes: %@", buf, 0x3Eu);
        }

        objc_autoreleasePoolPop(v71);
        v70 = 3;
      }

      if (v70 != 3)
      {
        if (v70)
        {
          break;
        }
      }

      v15 = v83 + 1;
      if (v83 + 1 == v80)
      {
        v80 = [obj countByEnumeratingWithState:&v105 objects:v124 count:16];
        if (v80)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  else
  {
    v77 = 0;
  }

  v75 = *MEMORY[0x277D85DE8];
  return v77 & 1;
}

- (id)logIdentifier
{
  sessionID = [(HMDCameraParameterSelection *)self sessionID];
  v3 = [sessionID description];

  return v3;
}

- (HMDCameraVideoParameterSelection)initWithSessionID:(id)d videoTierParameters:(id)parameters supportedVideoConfiguration:(id)configuration supportedRTPConfiguration:(id)pConfiguration streamingCapabilities:(id)capabilities
{
  v41 = *MEMORY[0x277D85DE8];
  dCopy = d;
  parametersCopy = parameters;
  configurationCopy = configuration;
  pConfigurationCopy = pConfiguration;
  capabilitiesCopy = capabilities;
  v36.receiver = self;
  v36.super_class = HMDCameraVideoParameterSelection;
  v17 = [(HMDCameraParameterSelection *)&v36 initWithSessionID:dCopy];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_supportedVideoStreamConfiguration, configuration);
    objc_storeStrong(&v18->_rtpConfiguration, pConfiguration);
    objc_storeStrong(&v18->_streamingCapabilities, capabilities);
    v19 = [HMDVideoCodec arrayWithCodecTypes:&unk_286627040];
    videoCodecsPreference = v18->_videoCodecsPreference;
    v18->_videoCodecsPreference = v19;

    v21 = [HMDH264Profile arrayWithProfiles:&unk_286627058];
    h264ProfilesPreference = v18->_h264ProfilesPreference;
    v18->_h264ProfilesPreference = v21;

    v23 = [HMDH264Level arrayWithLevels:&unk_286627070];
    h264LevelsPreference = v18->_h264LevelsPreference;
    v18->_h264LevelsPreference = v23;

    v25 = [HMDPacketizationMode arrayWithModes:&unk_286627088];
    h264PacketizationPreference = v18->_h264PacketizationPreference;
    v18->_h264PacketizationPreference = v25;

    objc_storeStrong(&v18->_videoTierParameters, parameters);
    [(HMDCameraVideoParameterSelection *)v18 _generateAllCombinations];
    v27 = [objc_opt_class() videoResolutionPreferenceForStreamingTierType:{objc_msgSend(capabilitiesCopy, "streamingTierType")}];
    videoResolutionsPreference = v18->_videoResolutionsPreference;
    v18->_videoResolutionsPreference = v27;

    v29 = objc_autoreleasePoolPush();
    v30 = v18;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      v33 = v18->_videoResolutionsPreference;
      *buf = 138543618;
      v38 = v32;
      v39 = 2112;
      v40 = v33;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Setting the video resolution preference order to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v29);
  }

  v34 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_100224 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_100224, &__block_literal_global_100225);
  }

  v3 = logCategory__hmf_once_v2_100226;

  return v3;
}

uint64_t __47__HMDCameraVideoParameterSelection_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_100226;
  logCategory__hmf_once_v2_100226 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)videoResolutionPreferenceForStreamingTierType:(unint64_t)type
{
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  if (_os_feature_enabled_impl())
  {
    v6 = [[HMDVideoResolution alloc] initWithResolution:29];
    [array addObject:v6];
    v7 = [[HMDVideoResolution alloc] initWithResolution:28];
    [array2 addObject:v7];
  }

  v20 = [HMDVideoResolution arrayWithResolutions:&unk_2866270A0];
  v8 = [HMDVideoResolution arrayWithResolutions:&unk_2866270B8];
  [array addObjectsFromArray:v20];
  [array2 addObjectsFromArray:v8];
  v9 = [HMDVideoResolution arrayWithResolutions:&unk_2866270D0];
  v10 = [HMDVideoResolution arrayWithResolutions:&unk_2866270E8];
  v11 = [HMDVideoResolution arrayWithResolutions:&unk_286627100];
  array3 = [MEMORY[0x277CBEB18] array];
  v13 = array3;
  v14 = type == 0;
  if (type)
  {
    v15 = array;
  }

  else
  {
    v15 = v9;
  }

  if (type)
  {
    v16 = v9;
  }

  else
  {
    v16 = v10;
  }

  if (v14)
  {
    v17 = array;
  }

  else
  {
    v17 = array2;
  }

  if (v14)
  {
    v18 = array2;
  }

  else
  {
    v18 = v10;
  }

  [array3 addObjectsFromArray:v15];
  [v13 addObjectsFromArray:v16];
  [v13 addObjectsFromArray:v17];
  [v13 addObjectsFromArray:v18];
  [v13 addObjectsFromArray:v11];

  return v13;
}

@end