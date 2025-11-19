@interface HMDMediaPlaybackActionEvent
- (BOOL)shouldTriggerMicroLocationLocalizationScanForLogEventObserver:(id)a3;
- (BOOL)shouldTriggerMicroLocationRecordingScanForLogEventObserver:(id)a3;
- (HMDMediaPlaybackActionEvent)initWithIsPlaybackArchivePresent:(BOOL)a3 playbackStateNumber:(id)a4 volumeNumber:(id)a5 sourceNumber:(id)a6 sourceClientName:(id)a7 accessories:(id)a8;
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)playbackStateString;
- (NSString)sourceString;
- (id)biomeEventsRepresentationForLogObserver:(id)a3;
- (id)microLocationMetadataForLogEventObserver:(id)a3;
@end

@implementation HMDMediaPlaybackActionEvent

- (id)biomeEventsRepresentationForLogObserver:(id)a3
{
  v101 = *MEMORY[0x277D85DE8];
  v72 = a3;
  v89 = self;
  v4 = [(HMDMediaPlaybackActionEvent *)self accessories];
  v5 = [v4 na_firstObjectPassingTest:&__block_literal_global_1068];
  v6 = [v5 home];

  v83 = v6;
  if (v6)
  {
    if (v89)
    {
      v7 = MEMORY[0x277CCA970];
      v8 = v6;
      v9 = [v7 alloc];
      v10 = [(HMMDatedLogEvent *)v89 startDate];
      v11 = [(HMMDatedLogEvent *)v89 endDate];
      v12 = [v9 initWithStartDate:v10 endDate:v11];

      v13 = objc_alloc(MEMORY[0x277CF1980]);
      v14 = [v8 spiClientIdentifier];
      v15 = [v14 UUIDString];
      v16 = [v8 atHomeLevel];

      v17 = (v16 & 0xFFFFFFFFFFFFFFFELL) == 2;
      v18 = [(HMDMediaPlaybackActionEvent *)v89 sourceNumber];
      v19 = HMDRequestSourceAsString([v18 unsignedIntegerValue]);
      v20 = [(HMDMediaPlaybackActionEvent *)v89 sourceClientName];
      v21 = [(HMDMediaPlaybackActionEvent *)v89 clientMetricIdentifier];
      if (v21)
      {
        v74 = [v13 initWithDateInterval:v12 homeUniqueIdentifier:v15 homeOccupancy:v17 source:v19 clientName:v20 eventCorrelationIdentifier:v21];
      }

      else
      {
        v27 = [MEMORY[0x277CCAD78] UUID];
        [v27 UUIDString];
        v87 = v14;
        v29 = v28 = v12;
        v74 = [v13 initWithDateInterval:v28 homeUniqueIdentifier:v15 homeOccupancy:v17 source:v19 clientName:v20 eventCorrelationIdentifier:v29];

        v12 = v28;
        v14 = v87;
      }
    }

    else
    {
      v74 = 0;
    }

    v30 = MEMORY[0x277CBEB18];
    v31 = [(HMDMediaPlaybackActionEvent *)v89 accessories];
    v73 = [v30 arrayWithCapacity:{objc_msgSend(v31, "count")}];

    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    obj = [(HMDMediaPlaybackActionEvent *)v89 accessories];
    v88 = [obj countByEnumeratingWithState:&v92 objects:v100 count:16];
    if (v88)
    {
      v32 = *v93;
      v75 = *v93;
      do
      {
        for (i = 0; i != v88; ++i)
        {
          if (*v93 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v34 = *(*(&v92 + 1) + 8 * i);
          v35 = [v34 room];
          if (v35)
          {
            v36 = [v34 accessoryProfiles];
            v37 = [v36 na_firstObjectPassingTest:&__block_literal_global_77];

            if (v37)
            {
              v38 = [v83 zones];
              v90[0] = MEMORY[0x277D85DD0];
              v90[1] = 3221225472;
              v90[2] = __85__HMDMediaPlaybackActionEvent_BiomeLogging__biomeEventsRepresentationForLogObserver___block_invoke_79;
              v90[3] = &unk_2786808A8;
              v86 = v35;
              v39 = v35;
              v91 = v39;
              v40 = [v38 na_filter:v90];

              v84 = [v40 na_map:&__block_literal_global_83];
              v41 = [v40 na_map:&__block_literal_global_85];
              v42 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
              v43 = [(HMDMediaPlaybackActionEvent *)v89 playbackStateNumber];
              v44 = [v43 integerValue];

              if (v44)
              {
                v45 = [(HMDMediaPlaybackActionEvent *)v89 playbackStateNumber];
                [v42 setObject:v45 forKeyedSubscript:@"playback-state"];
              }

              v85 = v40;
              v46 = [(HMDMediaPlaybackActionEvent *)v89 volumeNumber];

              if (v46)
              {
                v47 = [(HMDMediaPlaybackActionEvent *)v89 volumeNumber];
                [v42 setObject:v47 forKeyedSubscript:@"volume"];
              }

              if ([v42 count])
              {
                v77 = objc_alloc(MEMORY[0x277CF1988]);
                v79 = [v34 spiClientIdentifier];
                v76 = [v79 UUIDString];
                v48 = [v42 copy];
                [v37 mediaRouteID];
                v49 = v80 = v42;
                v78 = [v39 spiClientIdentifier];
                [v78 UUIDString];
                v50 = v81 = v37;
                v51 = [v34 name];
                v52 = [v39 name];
                v53 = [v83 name];
                v54 = v84;
                v55 = [v77 initWithBase:v74 accessoryUniqueIdentifier:v76 accessoryStateString:MEMORY[0x277CBEC10] accessoryStateNumber:v48 accessoryStateData:MEMORY[0x277CBEC10] accessoryMediaRouteIdentifier:v49 zoneUniqueIdentifiers:v84 roomUniqueIdentifier:v50 accessoryName:v51 roomName:v52 zoneNames:v41 homeName:v53];
                [v73 addObject:v55];

                v37 = v81;
                v42 = v80;

                v32 = v75;
                v56 = v85;
              }

              else
              {
                v66 = objc_autoreleasePoolPush();
                v67 = v89;
                v68 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
                {
                  v69 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v97 = v69;
                  v98 = 2112;
                  v99 = v34;
                  _os_log_impl(&dword_229538000, v68, OS_LOG_TYPE_ERROR, "%{public}@Unable to log event metadata to biome, no media state for media accessory: %@", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v66);
                v32 = v75;
                v54 = v84;
                v56 = v40;
              }

              v35 = v86;
            }

            else
            {
              v61 = objc_autoreleasePoolPush();
              v62 = v89;
              v63 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
              {
                HMFGetLogIdentifier();
                v65 = v64 = v35;
                *buf = 138543618;
                v97 = v65;
                v98 = 2112;
                v99 = v34;
                _os_log_impl(&dword_229538000, v63, OS_LOG_TYPE_ERROR, "%{public}@Unable to log event metadata to biome, no media profile for media accessory: %@", buf, 0x16u);

                v35 = v64;
                v37 = 0;
              }

              objc_autoreleasePoolPop(v61);
            }
          }

          else
          {
            v57 = objc_autoreleasePoolPush();
            v58 = v89;
            v59 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
            {
              v60 = HMFGetLogIdentifier();
              *buf = 138543618;
              v97 = v60;
              v98 = 2112;
              v99 = v34;
              _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_ERROR, "%{public}@Unable to log media event metadata to biome, no room for accessory: %@", buf, 0x16u);

              v35 = 0;
            }

            objc_autoreleasePoolPop(v57);
          }
        }

        v88 = [obj countByEnumeratingWithState:&v92 objects:v100 count:16];
      }

      while (v88);
    }

    v26 = [v73 copy];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v89;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v97 = v25;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unable to log media event metadata to biome, no home", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    v26 = MEMORY[0x277CBEBF8];
  }

  v70 = *MEMORY[0x277D85DE8];

  return v26;
}

uint64_t __85__HMDMediaPlaybackActionEvent_BiomeLogging__biomeEventsRepresentationForLogObserver___block_invoke_79(uint64_t a1, void *a2)
{
  v3 = [a2 roomUUIDs];
  v4 = [*(a1 + 32) uuid];
  v5 = [v4 UUIDString];
  v6 = [v3 containsObject:v5];

  return v6;
}

id __85__HMDMediaPlaybackActionEvent_BiomeLogging__biomeEventsRepresentationForLogObserver___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 spiClientIdentifier];
  v3 = [v2 UUIDString];

  return v3;
}

uint64_t __85__HMDMediaPlaybackActionEvent_BiomeLogging__biomeEventsRepresentationForLogObserver___block_invoke_74(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & (v2 != 0);
}

BOOL __85__HMDMediaPlaybackActionEvent_BiomeLogging__biomeEventsRepresentationForLogObserver___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 home];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)shouldTriggerMicroLocationRecordingScanForLogEventObserver:(id)a3
{
  v4 = [(HMDMediaPlaybackActionEvent *)self numAccessoriesInHome];
  v5 = [(HMDMediaPlaybackActionEvent *)self numNonEmptyScenesInHome];
  v6 = [(HMDMediaPlaybackActionEvent *)self sourceNumber];
  v7 = [v6 unsignedIntegerValue];
  if (v5 + v4 > 3)
  {
    v8 = (v7 < 7) & ((0x18u >> v7) ^ 1);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)shouldTriggerMicroLocationLocalizationScanForLogEventObserver:(id)a3
{
  v4 = [(HMDMediaPlaybackActionEvent *)self numAccessoriesInHome];
  v5 = [(HMDMediaPlaybackActionEvent *)self numNonEmptyScenesInHome];
  v6 = [(HMDMediaPlaybackActionEvent *)self sourceNumber];
  v7 = [v6 unsignedIntegerValue];
  if (v5 + v4 > 3)
  {
    v8 = (v7 < 7) & ((0x18u >> v7) ^ 1);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)microLocationMetadataForLogEventObserver:(id)a3
{
  v4 = [(HMDMediaPlaybackActionEvent *)self accessories];
  v5 = [v4 firstObject];

  v6 = [(HMDMediaPlaybackActionEvent *)self playbackStateNumber];
  v7 = [v6 integerValue];

  if (v7)
  {
    v8 = [(HMDMediaPlaybackActionEvent *)self playbackStateString];
    v9 = @"playback-state";
  }

  else
  {
    v10 = [(HMDMediaPlaybackActionEvent *)self volumeNumber];

    if (v10)
    {
      v11 = [(HMDMediaPlaybackActionEvent *)self volumeNumber];
      v8 = [v11 stringValue];

      v9 = @"volume";
    }

    else
    {
      v9 = @"media";
      v8 = @"unknown";
    }
  }

  v12 = MEMORY[0x277D28780];
  v13 = [v5 spiClientIdentifier];
  v14 = [v13 UUIDString];
  v15 = [(HMDMediaPlaybackActionEvent *)self sourceString];
  v16 = [v5 room];
  v17 = [v16 spiClientIdentifier];
  v18 = [v17 UUIDString];
  v19 = [v12 metadataForHomekitAccessoryControlEventWithUUID:v14 stateString:v8 serviceUUID:v9 serviceType:v9 characteristicType:v9 serviceGroupUUID:&stru_283CF9D50 source:v15 roomUUID:v18];

  return v19;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDMediaPlaybackActionEvent isPlaybackArchivePresent](self, "isPlaybackArchivePresent")}];
  [v3 setObject:v4 forKeyedSubscript:@"playbackArchivePresent"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDMediaPlaybackActionEvent numberOfMediaProfiles](self, "numberOfMediaProfiles")}];
  [v3 setObject:v5 forKeyedSubscript:@"numberOfMediaProfiles"];

  v6 = +[HMDLogEventHistograms highVolumeHistogram];
  v7 = [v6 intervalIndexForValue:{-[HMMLogEvent durationMilliseconds](self, "durationMilliseconds")}];
  [v3 setObject:v7 forKeyedSubscript:@"duration"];

  v8 = [(HMDMediaPlaybackActionEvent *)self volumeNumber];
  if (v8)
  {
    v9 = +[HMDLogEventHistograms lowVolumeHistogram];
    v10 = [(HMDMediaPlaybackActionEvent *)self volumeNumber];
    v11 = [v9 intervalIndexForValue:{objc_msgSend(v10, "unsignedIntegerValue")}];
    [v3 setObject:v11 forKeyedSubscript:@"volume"];
  }

  else
  {
    [v3 setObject:&unk_283E73580 forKeyedSubscript:@"volume"];
  }

  v12 = [(HMDMediaPlaybackActionEvent *)self playbackStateString];
  [v3 setObject:v12 forKeyedSubscript:@"playbackState"];

  v13 = [(HMDMediaPlaybackActionEvent *)self sourceString];
  [v3 setObject:v13 forKeyedSubscript:@"actionSource"];

  return v3;
}

- (NSString)sourceString
{
  v2 = [(HMDMediaPlaybackActionEvent *)self sourceNumber];
  v3 = HMDRequestSourceAsString([v2 unsignedIntegerValue]);

  return v3;
}

- (NSString)playbackStateString
{
  v3 = [(HMDMediaPlaybackActionEvent *)self playbackStateNumber];

  if (v3)
  {
    v4 = [(HMDMediaPlaybackActionEvent *)self playbackStateNumber];
    [v4 integerValue];
    v5 = playbackStateAsString();
  }

  else
  {
    v5 = @"Unset";
  }

  return v5;
}

- (HMDMediaPlaybackActionEvent)initWithIsPlaybackArchivePresent:(BOOL)a3 playbackStateNumber:(id)a4 volumeNumber:(id)a5 sourceNumber:(id)a6 sourceClientName:(id)a7 accessories:(id)a8
{
  v15 = a4;
  v31 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v32.receiver = self;
  v32.super_class = HMDMediaPlaybackActionEvent;
  v19 = [(HMMDatedLogEvent *)&v32 init];
  if (v19)
  {
    [MEMORY[0x277D0F770] currentActivity];
    v20 = v30 = v15;
    v21 = [v20 clientMetricIdentifier];
    clientMetricIdentifier = v19->_clientMetricIdentifier;
    v19->_clientMetricIdentifier = v21;

    v19->_isPlaybackArchivePresent = a3;
    v19->_numberOfMediaProfiles = [v18 count];
    objc_storeStrong(&v19->_playbackStateNumber, a4);
    objc_storeStrong(&v19->_volumeNumber, a5);
    objc_storeStrong(&v19->_sourceNumber, a6);
    if (v17)
    {
      v23 = v17;
    }

    else
    {
      v23 = @"Unknown";
    }

    objc_storeStrong(&v19->_sourceClientName, v23);
    objc_storeStrong(&v19->_accessories, a8);
    v24 = [v18 firstObject];
    v25 = [v24 home];

    v26 = [v25 accessories];
    v19->_numAccessoriesInHome = [v26 count];

    v27 = [v25 actionSets];
    v28 = [v27 na_filter:&__block_literal_global_151485];
    v19->_numNonEmptyScenesInHome = [v28 count];

    v15 = v30;
  }

  return v19;
}

BOOL __139__HMDMediaPlaybackActionEvent_initWithIsPlaybackArchivePresent_playbackStateNumber_volumeNumber_sourceNumber_sourceClientName_accessories___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 actions];
  v3 = [v2 count] != 0;

  return v3;
}

@end