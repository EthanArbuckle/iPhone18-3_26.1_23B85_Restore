@interface HMDCameraVideoParameterSelection
+ (id)logCategory;
+ (id)videoResolutionPreferenceForStreamingTierType:(unint64_t)a3;
- (BOOL)_selectParametersFromCodec:(id)a3 profiles:(id)a4 levels:(id)a5 packetizationModes:(id)a6 videoAttributes:(id)a7;
- (BOOL)selectVideoParameters;
- (HMDCameraVideoParameterSelection)initWithSessionID:(id)a3 videoTierParameters:(id)a4 supportedVideoConfiguration:(id)a5 supportedRTPConfiguration:(id)a6 streamingCapabilities:(id)a7;
- (id)createReselectedVideoParameters:(id)a3;
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
  v4 = [MEMORY[0x277CBEB18] array];
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
        v7 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
        v8 = [v7 videoTierCombinations];
        v9 = [v8 objectForKeyedSubscript:v6];

        if (v9)
        {
          v10 = [HMDCameraVideoParameterCombination alloc];
          v11 = [[HMDH264Profile alloc] initWithH264Profile:0];
          v12 = [[HMDH264Level alloc] initWithH264Level:0];
          v13 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
          v14 = [v13 videoTierCombinations];
          v15 = [v14 objectForKeyedSubscript:v6];
          v16 = [(HMDCameraVideoParameterCombination *)v10 initWithProfile:v11 level:v12 videoTier:v15];
          [v4 addObject:v16];
        }

        v17 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
        v18 = [v17 videoTierCombinations];
        v19 = [v18 objectForKeyedSubscript:v6];

        if (v19)
        {
          v20 = [HMDCameraVideoParameterCombination alloc];
          v21 = [[HMDH264Profile alloc] initWithH264Profile:1];
          v22 = [[HMDH264Level alloc] initWithH264Level:0];
          v23 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
          v24 = [v23 videoTierCombinations];
          v25 = [v24 objectForKeyedSubscript:v6];
          v26 = [(HMDCameraVideoParameterCombination *)v20 initWithProfile:v21 level:v22 videoTier:v25];
          [v4 addObject:v26];
        }

        v27 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
        v28 = [v27 videoTierCombinations];
        v29 = [v28 objectForKeyedSubscript:v6];

        if (v29)
        {
          v30 = [HMDCameraVideoParameterCombination alloc];
          v31 = [[HMDH264Profile alloc] initWithH264Profile:2];
          v32 = [[HMDH264Level alloc] initWithH264Level:0];
          v33 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
          v34 = [v33 videoTierCombinations];
          v35 = [v34 objectForKeyedSubscript:v6];
          v36 = [(HMDCameraVideoParameterCombination *)v30 initWithProfile:v31 level:v32 videoTier:v35];
          [v4 addObject:v36];
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
        v39 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
        v40 = [v39 videoTierCombinations];
        v41 = [v40 objectForKeyedSubscript:v38];

        if (v41)
        {
          v42 = [HMDCameraVideoParameterCombination alloc];
          v43 = [[HMDH264Profile alloc] initWithH264Profile:0];
          v44 = [[HMDH264Level alloc] initWithH264Level:1];
          v45 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
          v46 = [v45 videoTierCombinations];
          v47 = [v46 objectForKeyedSubscript:v38];
          v48 = [(HMDCameraVideoParameterCombination *)v42 initWithProfile:v43 level:v44 videoTier:v47];
          [v4 addObject:v48];
        }

        v49 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
        v50 = [v49 videoTierCombinations];
        v51 = [v50 objectForKeyedSubscript:v38];

        if (v51)
        {
          v52 = [HMDCameraVideoParameterCombination alloc];
          v53 = [[HMDH264Profile alloc] initWithH264Profile:1];
          v54 = [[HMDH264Level alloc] initWithH264Level:1];
          v55 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
          v56 = [v55 videoTierCombinations];
          v57 = [v56 objectForKeyedSubscript:v38];
          v58 = [(HMDCameraVideoParameterCombination *)v52 initWithProfile:v53 level:v54 videoTier:v57];
          [v4 addObject:v58];
        }

        v59 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
        v60 = [v59 videoTierCombinations];
        v61 = [v60 objectForKeyedSubscript:v38];

        if (v61)
        {
          v62 = [HMDCameraVideoParameterCombination alloc];
          v63 = [[HMDH264Profile alloc] initWithH264Profile:2];
          v64 = [[HMDH264Level alloc] initWithH264Level:1];
          v65 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
          v66 = [v65 videoTierCombinations];
          v67 = [v66 objectForKeyedSubscript:v38];
          v68 = [(HMDCameraVideoParameterCombination *)v62 initWithProfile:v63 level:v64 videoTier:v67];
          [v4 addObject:v68];
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
        v71 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
        v72 = [v71 videoTierCombinations];
        v73 = [v72 objectForKeyedSubscript:v70];

        if (v73)
        {
          v74 = [HMDCameraVideoParameterCombination alloc];
          v75 = [[HMDH264Profile alloc] initWithH264Profile:0];
          v76 = [[HMDH264Level alloc] initWithH264Level:2];
          v77 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
          v78 = [v77 videoTierCombinations];
          v79 = [v78 objectForKeyedSubscript:v70];
          v80 = [(HMDCameraVideoParameterCombination *)v74 initWithProfile:v75 level:v76 videoTier:v79];
          [v4 addObject:v80];
        }

        v81 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
        v82 = [v81 videoTierCombinations];
        v83 = [v82 objectForKeyedSubscript:v70];

        if (v83)
        {
          v84 = [HMDCameraVideoParameterCombination alloc];
          v85 = [[HMDH264Profile alloc] initWithH264Profile:1];
          v86 = [[HMDH264Level alloc] initWithH264Level:2];
          v87 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
          v88 = [v87 videoTierCombinations];
          v89 = [v88 objectForKeyedSubscript:v70];
          v90 = [(HMDCameraVideoParameterCombination *)v84 initWithProfile:v85 level:v86 videoTier:v89];
          [v4 addObject:v90];
        }

        v91 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
        v92 = [v91 videoTierCombinations];
        v93 = [v92 objectForKeyedSubscript:v70];

        if (v93)
        {
          v94 = [HMDCameraVideoParameterCombination alloc];
          v95 = [[HMDH264Profile alloc] initWithH264Profile:2];
          v96 = [[HMDH264Level alloc] initWithH264Level:2];
          v97 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
          v98 = [v97 videoTierCombinations];
          v99 = [v98 objectForKeyedSubscript:v70];
          v100 = [(HMDCameraVideoParameterCombination *)v94 initWithProfile:v95 level:v96 videoTier:v99];
          [v4 addObject:v100];
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
        v103 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
        v104 = [v103 videoTierCombinations];
        v105 = [v104 objectForKeyedSubscript:v102];

        if (v105)
        {
          v106 = [HMDCameraVideoParameterCombination alloc];
          v107 = [[HMDH264Profile alloc] initWithH264Profile:0];
          v108 = [[HMDH264Level alloc] initWithH264Level:3];
          v109 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
          v110 = [v109 videoTierCombinations];
          v111 = [v110 objectForKeyedSubscript:v102];
          v112 = [(HMDCameraVideoParameterCombination *)v106 initWithProfile:v107 level:v108 videoTier:v111];
          [v4 addObject:v112];
        }

        v113 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
        v114 = [v113 videoTierCombinations];
        v115 = [v114 objectForKeyedSubscript:v102];

        if (v115)
        {
          v116 = [HMDCameraVideoParameterCombination alloc];
          v117 = [[HMDH264Profile alloc] initWithH264Profile:1];
          v118 = [[HMDH264Level alloc] initWithH264Level:3];
          v119 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
          v120 = [v119 videoTierCombinations];
          v121 = [v120 objectForKeyedSubscript:v102];
          v122 = [(HMDCameraVideoParameterCombination *)v116 initWithProfile:v117 level:v118 videoTier:v121];
          [v4 addObject:v122];
        }

        v123 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
        v124 = [v123 videoTierCombinations];
        v125 = [v124 objectForKeyedSubscript:v102];

        if (v125)
        {
          v126 = [HMDCameraVideoParameterCombination alloc];
          v127 = [[HMDH264Profile alloc] initWithH264Profile:2];
          v128 = [[HMDH264Level alloc] initWithH264Level:3];
          v129 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
          v130 = [v129 videoTierCombinations];
          v131 = [v130 objectForKeyedSubscript:v102];
          v132 = [(HMDCameraVideoParameterCombination *)v126 initWithProfile:v127 level:v128 videoTier:v131];
          [v4 addObject:v132];
        }

        ++v101;
      }

      while (v147 != v101);
      v147 = [objc countByEnumeratingWithState:&v148 objects:v164 count:16];
    }

    while (v147);
  }

  v133 = [v4 copy];
  validVideoParameterCombinations = self->_validVideoParameterCombinations;
  self->_validVideoParameterCombinations = v133;

  v135 = *MEMORY[0x277D85DE8];
}

- (id)createReselectedVideoParameters:(id)a3
{
  v3 = a3;
  v4 = [HMDVideoAttributes alloc];
  v5 = [v3 videoResolution];
  v6 = [v3 framerate];
  v7 = [(HMDVideoAttributes *)v4 initWithResolution:v5 framerate:v6];

  v8 = [HMDReselectedRTPParameters alloc];
  v9 = [v3 maxBitRate];
  v10 = [v3 minBitRate];
  v11 = [v3 rtcpInterval];

  v12 = [(HMDReselectedRTPParameters *)v8 initWithMaximumBitrate:v9 minimumBitrate:v10 rtcpInterval:v11];
  v13 = [[HMDReselectedVideoParameters alloc] initWithAttribute:v7 rtpParameter:v12];

  return v13;
}

- (id)createSelectedVideoParameters
{
  v35[1] = *MEMORY[0x277D85DE8];
  v3 = [HMDVideoCodecParameters alloc];
  v4 = [(HMDCameraVideoParameterSelection *)self selectedProfile];
  v35[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
  v6 = [(HMDCameraVideoParameterSelection *)self selectedLevel];
  v34 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
  v8 = [(HMDCameraVideoParameterSelection *)self selectedPacketizationMode];
  v33 = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
  v32 = [(HMDVideoCodecParameters *)v3 initWithProfiles:v5 levels:v7 packetizationModes:v9];

  v10 = [HMDVideoAttributes alloc];
  v11 = [(HMDCameraVideoParameterSelection *)self selectedVideoTier];
  v12 = [v11 videoResolution];
  v13 = [(HMDCameraVideoParameterSelection *)self selectedVideoTier];
  v14 = [v13 framerate];
  v31 = [(HMDVideoAttributes *)v10 initWithResolution:v12 framerate:v14];

  v15 = [HMDSelectedRTPParameters alloc];
  v16 = MEMORY[0x277CCABB0];
  v17 = [(HMDCameraVideoParameterSelection *)self selectedCodecType];
  [v17 codecType];
  v18 = [v16 numberWithUnsignedInteger:99];
  v19 = [(HMDCameraVideoParameterSelection *)self selectedVideoTier];
  v20 = [v19 maxBitRate];
  v21 = [(HMDCameraVideoParameterSelection *)self selectedVideoTier];
  v22 = [v21 minBitRate];
  v23 = [(HMDCameraVideoParameterSelection *)self selectedVideoTier];
  v24 = [v23 rtcpInterval];
  v25 = [(HMDSelectedRTPParameters *)v15 initWithPayloadType:v18 maximumBitrate:v20 minimumBitrate:v22 rtcpInterval:v24 comfortNoisePayloadType:0];

  v26 = [HMDSelectedVideoParameters alloc];
  v27 = [(HMDCameraVideoParameterSelection *)self selectedCodecType];
  v28 = [(HMDSelectedVideoParameters *)v26 initWithCodec:v27 codecParameter:v32 attribute:v31 rtpParameter:v25];

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)createSRTPParamters
{
  v3 = objc_opt_class();
  v4 = [(HMDCameraVideoParameterSelection *)self rtpConfiguration];
  v5 = [v4 srtpCryptoSuites];
  v6 = [v3 selectedSRTPParametersFromCryptoSuites:v5];

  return v6;
}

- (BOOL)_selectParametersFromCodec:(id)a3 profiles:(id)a4 levels:(id)a5 packetizationModes:(id)a6 videoAttributes:(id)a7
{
  v95 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v17 = v13;
  v18 = [v17 countByEnumeratingWithState:&v84 objects:v94 count:16];
  if (v18)
  {
    v19 = *v85;
    v69 = v14;
    v70 = v12;
    v67 = v17;
    v68 = v15;
    v66 = v16;
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
        v21 = v14;
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
              obj = v16;
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
                    v29 = [(HMDCameraVideoParameterSelection *)self videoTierParameters];
                    v30 = [v29 videoTierCombinations];
                    v31 = [v27 videoResolution];
                    v32 = [v30 objectForKeyedSubscript:v31];
                    v33 = [(HMDCameraVideoParameterCombination *)v28 initWithProfile:v74 level:v75 videoTier:v32];

                    v34 = [(HMDCameraVideoParameterSelection *)self validVideoParameterCombinations];
                    v35 = [v34 indexOfObject:v33];

                    if (v35 != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v42 = [(HMDCameraVideoParameterSelection *)self validVideoParameterCombinations];
                      v43 = [v42 objectAtIndex:v35];

                      v44 = objc_autoreleasePoolPush();
                      v45 = self;
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
                      v48 = [(HMDCameraVideoParameterSelection *)v45 videoTierParameters];
                      [v48 updateTierOrder:obj];

                      v49 = [(HMDCameraVideoParameterSelection *)v45 videoTierParameters];
                      v50 = [v43 videoTier];
                      v51 = [v50 videoResolution];
                      [v49 selectInitialTierWithAspectRatio:{+[HMDStreamingCapabilities aspectRatioOfResolution:](HMDStreamingCapabilities, "aspectRatioOfResolution:", v51)}];

                      v12 = v70;
                      [(HMDCameraVideoParameterSelection *)v45 setSelectedCodecType:v70];
                      [(HMDCameraVideoParameterSelection *)v45 setSelectedProfile:v74];
                      [(HMDCameraVideoParameterSelection *)v45 setSelectedLevel:v75];
                      v15 = v68;
                      v52 = [v68 objectAtIndex:0];
                      [(HMDCameraVideoParameterSelection *)v45 setSelectedPacketizationMode:v52];

                      v53 = [(HMDCameraVideoParameterSelection *)v45 videoTierParameters];
                      v54 = [v53 currentPickedTier];
                      [(HMDCameraVideoParameterSelection *)v45 setSelectedVideoTier:v54];

                      v55 = [(HMDCameraVideoParameterSelection *)v45 videoTierParameters];
                      v56 = [v55 currentPickedTier];
                      v57 = [v56 framerate];
                      [(HMDCameraVideoParameterSelection *)v45 setSelectedFramerate:v57];

                      v41 = 1;
                      v14 = v69;
                      v16 = v66;
                      v17 = v67;
                      goto LABEL_30;
                    }

                    v36 = objc_autoreleasePoolPush();
                    v37 = self;
                    v38 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
                    {
                      v39 = HMFGetLogIdentifier();
                      v40 = [v27 videoResolution];
                      *buf = 138543618;
                      v89 = v39;
                      v90 = 2112;
                      v91 = v40;
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
              v14 = v69;
              v12 = v70;
              v17 = v67;
              v15 = v68;
              v16 = v66;
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
  v4 = [(HMDCameraVideoParameterSelection *)self videoCodecsPreference];
  v5 = [(HMDCameraVideoParameterSelection *)self streamingCapabilities];
  v6 = [v5 supportedVideoCodecs];
  v7 = [v6 allObjects];
  v81 = self;
  v8 = [(HMDCameraVideoParameterSelection *)self supportedVideoStreamConfiguration];
  v9 = [v8 codecConfigurations];
  v10 = [v9 allKeys];
  if (supportedVideoCodecs)
  {
    v11 = [HMDVideoCodec arrayWithCodecTypes:?];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v3 selectedParametersFromPreferredParameters:v4 deviceSupportedParameters:v7 cameraSupportedParameters:v10 overriddenParameters:v11 parameterDescription:@"Video-Codecs"];

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
    v14 = self;
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
      v17 = [(HMDCameraVideoParameterSelection *)v14 supportedVideoStreamConfiguration];
      v18 = [v17 codecConfigurations];
      v19 = [v18 objectForKeyedSubscript:v16];
      v20 = [v19 codecParameters];

      v21 = [(HMDCameraVideoParameterSelection *)v14 supportedVideoStreamConfiguration];
      v22 = [v21 codecConfigurations];
      v82 = v16;
      v23 = [v22 objectForKeyedSubscript:v16];
      v24 = [v23 videoAttributes];

      v25 = objc_opt_class();
      v26 = [(HMDCameraVideoParameterSelection *)v14 h264ProfilesPreference];
      v27 = [(HMDCameraVideoParameterSelection *)v14 streamingCapabilities];
      v28 = [v27 supportedH264Profiles];
      v29 = [v28 allObjects];
      v30 = [v20 h264Profiles];
      v87 = [v25 selectedParametersFromPreferredParameters:v26 deviceSupportedParameters:v29 cameraSupportedParameters:v30 overriddenParameters:0 parameterDescription:@"H264-Profile"];

      v31 = objc_opt_class();
      v32 = [(HMDCameraVideoParameterSelection *)v14 h264LevelsPreference];
      v33 = [(HMDCameraVideoParameterSelection *)v14 streamingCapabilities];
      v34 = [v33 supportedH264Levels];
      v35 = [v34 allObjects];
      v36 = [v20 levels];
      v86 = [v31 selectedParametersFromPreferredParameters:v32 deviceSupportedParameters:v35 cameraSupportedParameters:v36 overriddenParameters:0 parameterDescription:@"H264-Level"];

      v37 = objc_opt_class();
      v38 = [(HMDCameraVideoParameterSelection *)v14 h264PacketizationPreference];
      v39 = [(HMDCameraVideoParameterSelection *)v14 streamingCapabilities];
      v40 = [v39 supportedPacketizationModes];
      v41 = [v40 allObjects];
      v88 = v20;
      v42 = [v20 packetizationModes];
      v85 = [v37 selectedParametersFromPreferredParameters:v38 deviceSupportedParameters:v41 cameraSupportedParameters:v42 overriddenParameters:0 parameterDescription:@"H264-Packetization"];

      v43 = [*(v13 + 2840) array];
      v101 = 0u;
      v102 = 0u;
      v103 = 0u;
      v104 = 0u;
      v92 = v24;
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
            v49 = [v48 videoResolution];

            if (v49)
            {
              v50 = [v48 videoResolution];
              [v43 addObject:v50];
            }
          }

          v45 = [v92 countByEnumeratingWithState:&v101 objects:v123 count:16];
        }

        while (v45);
      }

      v51 = objc_opt_class();
      v52 = [(HMDCameraVideoParameterSelection *)v14 videoResolutionsPreference];
      v53 = [(HMDCameraVideoParameterSelection *)v14 streamingCapabilities];
      v54 = [v53 supportedVideoResolutions];
      v55 = [v54 allObjects];
      if (supportedResolutions)
      {
        v56 = [HMDVideoResolution arrayWithResolutions:?];
      }

      else
      {
        v56 = 0;
      }

      v84 = v43;
      v57 = [v51 selectedParametersFromPreferredParameters:v52 deviceSupportedParameters:v55 cameraSupportedParameters:v43 overriddenParameters:v56 parameterDescription:@"Resolution"];

      v58 = [*(v13 + 2840) array];
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
                  v67 = [v66 videoResolution];
                  v68 = [v60 isEqual:v67];

                  if (v68)
                  {
                    [v58 addObject:v66];
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

      if ([v87 count] && objc_msgSend(v86, "count") && objc_msgSend(v85, "count") && objc_msgSend(v58, "count"))
      {
        v14 = v81;
        v69 = [(HMDCameraVideoParameterSelection *)v81 _selectParametersFromCodec:v82 profiles:v87 levels:v86 packetizationModes:v85 videoAttributes:v58];
        v77 |= v69;
        v70 = v69 ? 2 : 0;
        v13 = 0x277CBE000;
      }

      else
      {
        v71 = objc_autoreleasePoolPush();
        v14 = v81;
        v72 = v81;
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
          v120 = v58;
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
  v2 = [(HMDCameraParameterSelection *)self sessionID];
  v3 = [v2 description];

  return v3;
}

- (HMDCameraVideoParameterSelection)initWithSessionID:(id)a3 videoTierParameters:(id)a4 supportedVideoConfiguration:(id)a5 supportedRTPConfiguration:(id)a6 streamingCapabilities:(id)a7
{
  v41 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v36.receiver = self;
  v36.super_class = HMDCameraVideoParameterSelection;
  v17 = [(HMDCameraParameterSelection *)&v36 initWithSessionID:v12];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_supportedVideoStreamConfiguration, a5);
    objc_storeStrong(&v18->_rtpConfiguration, a6);
    objc_storeStrong(&v18->_streamingCapabilities, a7);
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

    objc_storeStrong(&v18->_videoTierParameters, a4);
    [(HMDCameraVideoParameterSelection *)v18 _generateAllCombinations];
    v27 = [objc_opt_class() videoResolutionPreferenceForStreamingTierType:{objc_msgSend(v16, "streamingTierType")}];
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

+ (id)videoResolutionPreferenceForStreamingTierType:(unint64_t)a3
{
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277CBEB18] array];
  if (_os_feature_enabled_impl())
  {
    v6 = [[HMDVideoResolution alloc] initWithResolution:29];
    [v4 addObject:v6];
    v7 = [[HMDVideoResolution alloc] initWithResolution:28];
    [v5 addObject:v7];
  }

  v20 = [HMDVideoResolution arrayWithResolutions:&unk_2866270A0];
  v8 = [HMDVideoResolution arrayWithResolutions:&unk_2866270B8];
  [v4 addObjectsFromArray:v20];
  [v5 addObjectsFromArray:v8];
  v9 = [HMDVideoResolution arrayWithResolutions:&unk_2866270D0];
  v10 = [HMDVideoResolution arrayWithResolutions:&unk_2866270E8];
  v11 = [HMDVideoResolution arrayWithResolutions:&unk_286627100];
  v12 = [MEMORY[0x277CBEB18] array];
  v13 = v12;
  v14 = a3 == 0;
  if (a3)
  {
    v15 = v4;
  }

  else
  {
    v15 = v9;
  }

  if (a3)
  {
    v16 = v9;
  }

  else
  {
    v16 = v10;
  }

  if (v14)
  {
    v17 = v4;
  }

  else
  {
    v17 = v5;
  }

  if (v14)
  {
    v18 = v5;
  }

  else
  {
    v18 = v10;
  }

  [v12 addObjectsFromArray:v15];
  [v13 addObjectsFromArray:v16];
  [v13 addObjectsFromArray:v17];
  [v13 addObjectsFromArray:v18];
  [v13 addObjectsFromArray:v11];

  return v13;
}

@end