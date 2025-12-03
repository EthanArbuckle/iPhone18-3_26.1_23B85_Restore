@interface HMDMediaPlaybackActionEvent
- (BOOL)shouldTriggerMicroLocationLocalizationScanForLogEventObserver:(id)observer;
- (BOOL)shouldTriggerMicroLocationRecordingScanForLogEventObserver:(id)observer;
- (HMDMediaPlaybackActionEvent)initWithIsPlaybackArchivePresent:(BOOL)present playbackStateNumber:(id)number volumeNumber:(id)volumeNumber sourceNumber:(id)sourceNumber sourceClientName:(id)name accessories:(id)accessories;
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)playbackStateString;
- (NSString)sourceString;
- (id)biomeEventsRepresentationForLogObserver:(id)observer;
- (id)microLocationMetadataForLogEventObserver:(id)observer;
@end

@implementation HMDMediaPlaybackActionEvent

- (id)biomeEventsRepresentationForLogObserver:(id)observer
{
  v101 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  selfCopy = self;
  accessories = [(HMDMediaPlaybackActionEvent *)self accessories];
  v5 = [accessories na_firstObjectPassingTest:&__block_literal_global_1068];
  home = [v5 home];

  v83 = home;
  if (home)
  {
    if (selfCopy)
    {
      v7 = MEMORY[0x277CCA970];
      v8 = home;
      v9 = [v7 alloc];
      startDate = [(HMMDatedLogEvent *)selfCopy startDate];
      endDate = [(HMMDatedLogEvent *)selfCopy endDate];
      v12 = [v9 initWithStartDate:startDate endDate:endDate];

      v13 = objc_alloc(MEMORY[0x277CF1980]);
      spiClientIdentifier = [v8 spiClientIdentifier];
      uUIDString = [spiClientIdentifier UUIDString];
      atHomeLevel = [v8 atHomeLevel];

      v17 = (atHomeLevel & 0xFFFFFFFFFFFFFFFELL) == 2;
      sourceNumber = [(HMDMediaPlaybackActionEvent *)selfCopy sourceNumber];
      v19 = HMDRequestSourceAsString([sourceNumber unsignedIntegerValue]);
      sourceClientName = [(HMDMediaPlaybackActionEvent *)selfCopy sourceClientName];
      clientMetricIdentifier = [(HMDMediaPlaybackActionEvent *)selfCopy clientMetricIdentifier];
      if (clientMetricIdentifier)
      {
        v74 = [v13 initWithDateInterval:v12 homeUniqueIdentifier:uUIDString homeOccupancy:v17 source:v19 clientName:sourceClientName eventCorrelationIdentifier:clientMetricIdentifier];
      }

      else
      {
        uUID = [MEMORY[0x277CCAD78] UUID];
        [uUID UUIDString];
        v87 = spiClientIdentifier;
        v29 = v28 = v12;
        v74 = [v13 initWithDateInterval:v28 homeUniqueIdentifier:uUIDString homeOccupancy:v17 source:v19 clientName:sourceClientName eventCorrelationIdentifier:v29];

        v12 = v28;
        spiClientIdentifier = v87;
      }
    }

    else
    {
      v74 = 0;
    }

    v30 = MEMORY[0x277CBEB18];
    accessories2 = [(HMDMediaPlaybackActionEvent *)selfCopy accessories];
    v73 = [v30 arrayWithCapacity:{objc_msgSend(accessories2, "count")}];

    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    obj = [(HMDMediaPlaybackActionEvent *)selfCopy accessories];
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
          room = [v34 room];
          if (room)
          {
            accessoryProfiles = [v34 accessoryProfiles];
            v37 = [accessoryProfiles na_firstObjectPassingTest:&__block_literal_global_77];

            if (v37)
            {
              zones = [v83 zones];
              v90[0] = MEMORY[0x277D85DD0];
              v90[1] = 3221225472;
              v90[2] = __85__HMDMediaPlaybackActionEvent_BiomeLogging__biomeEventsRepresentationForLogObserver___block_invoke_79;
              v90[3] = &unk_2786808A8;
              v86 = room;
              v39 = room;
              v91 = v39;
              v40 = [zones na_filter:v90];

              v84 = [v40 na_map:&__block_literal_global_83];
              v41 = [v40 na_map:&__block_literal_global_85];
              v42 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
              playbackStateNumber = [(HMDMediaPlaybackActionEvent *)selfCopy playbackStateNumber];
              integerValue = [playbackStateNumber integerValue];

              if (integerValue)
              {
                playbackStateNumber2 = [(HMDMediaPlaybackActionEvent *)selfCopy playbackStateNumber];
                [v42 setObject:playbackStateNumber2 forKeyedSubscript:@"playback-state"];
              }

              v85 = v40;
              volumeNumber = [(HMDMediaPlaybackActionEvent *)selfCopy volumeNumber];

              if (volumeNumber)
              {
                volumeNumber2 = [(HMDMediaPlaybackActionEvent *)selfCopy volumeNumber];
                [v42 setObject:volumeNumber2 forKeyedSubscript:@"volume"];
              }

              if ([v42 count])
              {
                v77 = objc_alloc(MEMORY[0x277CF1988]);
                spiClientIdentifier2 = [v34 spiClientIdentifier];
                uUIDString2 = [spiClientIdentifier2 UUIDString];
                v48 = [v42 copy];
                [v37 mediaRouteID];
                v49 = v80 = v42;
                spiClientIdentifier3 = [v39 spiClientIdentifier];
                [spiClientIdentifier3 UUIDString];
                v50 = v81 = v37;
                name = [v34 name];
                name2 = [v39 name];
                name3 = [v83 name];
                v54 = v84;
                v55 = [v77 initWithBase:v74 accessoryUniqueIdentifier:uUIDString2 accessoryStateString:MEMORY[0x277CBEC10] accessoryStateNumber:v48 accessoryStateData:MEMORY[0x277CBEC10] accessoryMediaRouteIdentifier:v49 zoneUniqueIdentifiers:v84 roomUniqueIdentifier:v50 accessoryName:name roomName:name2 zoneNames:v41 homeName:name3];
                [v73 addObject:v55];

                v37 = v81;
                v42 = v80;

                v32 = v75;
                v56 = v85;
              }

              else
              {
                v66 = objc_autoreleasePoolPush();
                v67 = selfCopy;
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

              room = v86;
            }

            else
            {
              v61 = objc_autoreleasePoolPush();
              v62 = selfCopy;
              v63 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
              {
                HMFGetLogIdentifier();
                v65 = v64 = room;
                *buf = 138543618;
                v97 = v65;
                v98 = 2112;
                v99 = v34;
                _os_log_impl(&dword_229538000, v63, OS_LOG_TYPE_ERROR, "%{public}@Unable to log event metadata to biome, no media profile for media accessory: %@", buf, 0x16u);

                room = v64;
                v37 = 0;
              }

              objc_autoreleasePoolPop(v61);
            }
          }

          else
          {
            v57 = objc_autoreleasePoolPush();
            v58 = selfCopy;
            v59 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
            {
              v60 = HMFGetLogIdentifier();
              *buf = 138543618;
              v97 = v60;
              v98 = 2112;
              v99 = v34;
              _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_ERROR, "%{public}@Unable to log media event metadata to biome, no room for accessory: %@", buf, 0x16u);

              room = 0;
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
    v23 = selfCopy;
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

- (BOOL)shouldTriggerMicroLocationRecordingScanForLogEventObserver:(id)observer
{
  numAccessoriesInHome = [(HMDMediaPlaybackActionEvent *)self numAccessoriesInHome];
  numNonEmptyScenesInHome = [(HMDMediaPlaybackActionEvent *)self numNonEmptyScenesInHome];
  sourceNumber = [(HMDMediaPlaybackActionEvent *)self sourceNumber];
  unsignedIntegerValue = [sourceNumber unsignedIntegerValue];
  if (numNonEmptyScenesInHome + numAccessoriesInHome > 3)
  {
    v8 = (unsignedIntegerValue < 7) & ((0x18u >> unsignedIntegerValue) ^ 1);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)shouldTriggerMicroLocationLocalizationScanForLogEventObserver:(id)observer
{
  numAccessoriesInHome = [(HMDMediaPlaybackActionEvent *)self numAccessoriesInHome];
  numNonEmptyScenesInHome = [(HMDMediaPlaybackActionEvent *)self numNonEmptyScenesInHome];
  sourceNumber = [(HMDMediaPlaybackActionEvent *)self sourceNumber];
  unsignedIntegerValue = [sourceNumber unsignedIntegerValue];
  if (numNonEmptyScenesInHome + numAccessoriesInHome > 3)
  {
    v8 = (unsignedIntegerValue < 7) & ((0x18u >> unsignedIntegerValue) ^ 1);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)microLocationMetadataForLogEventObserver:(id)observer
{
  accessories = [(HMDMediaPlaybackActionEvent *)self accessories];
  firstObject = [accessories firstObject];

  playbackStateNumber = [(HMDMediaPlaybackActionEvent *)self playbackStateNumber];
  integerValue = [playbackStateNumber integerValue];

  if (integerValue)
  {
    playbackStateString = [(HMDMediaPlaybackActionEvent *)self playbackStateString];
    v9 = @"playback-state";
  }

  else
  {
    volumeNumber = [(HMDMediaPlaybackActionEvent *)self volumeNumber];

    if (volumeNumber)
    {
      volumeNumber2 = [(HMDMediaPlaybackActionEvent *)self volumeNumber];
      playbackStateString = [volumeNumber2 stringValue];

      v9 = @"volume";
    }

    else
    {
      v9 = @"media";
      playbackStateString = @"unknown";
    }
  }

  v12 = MEMORY[0x277D28780];
  spiClientIdentifier = [firstObject spiClientIdentifier];
  uUIDString = [spiClientIdentifier UUIDString];
  sourceString = [(HMDMediaPlaybackActionEvent *)self sourceString];
  room = [firstObject room];
  spiClientIdentifier2 = [room spiClientIdentifier];
  uUIDString2 = [spiClientIdentifier2 UUIDString];
  v19 = [v12 metadataForHomekitAccessoryControlEventWithUUID:uUIDString stateString:playbackStateString serviceUUID:v9 serviceType:v9 characteristicType:v9 serviceGroupUUID:&stru_283CF9D50 source:sourceString roomUUID:uUIDString2];

  return v19;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDMediaPlaybackActionEvent isPlaybackArchivePresent](self, "isPlaybackArchivePresent")}];
  [dictionary setObject:v4 forKeyedSubscript:@"playbackArchivePresent"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDMediaPlaybackActionEvent numberOfMediaProfiles](self, "numberOfMediaProfiles")}];
  [dictionary setObject:v5 forKeyedSubscript:@"numberOfMediaProfiles"];

  v6 = +[HMDLogEventHistograms highVolumeHistogram];
  v7 = [v6 intervalIndexForValue:{-[HMMLogEvent durationMilliseconds](self, "durationMilliseconds")}];
  [dictionary setObject:v7 forKeyedSubscript:@"duration"];

  volumeNumber = [(HMDMediaPlaybackActionEvent *)self volumeNumber];
  if (volumeNumber)
  {
    v9 = +[HMDLogEventHistograms lowVolumeHistogram];
    volumeNumber2 = [(HMDMediaPlaybackActionEvent *)self volumeNumber];
    v11 = [v9 intervalIndexForValue:{objc_msgSend(volumeNumber2, "unsignedIntegerValue")}];
    [dictionary setObject:v11 forKeyedSubscript:@"volume"];
  }

  else
  {
    [dictionary setObject:&unk_283E73580 forKeyedSubscript:@"volume"];
  }

  playbackStateString = [(HMDMediaPlaybackActionEvent *)self playbackStateString];
  [dictionary setObject:playbackStateString forKeyedSubscript:@"playbackState"];

  sourceString = [(HMDMediaPlaybackActionEvent *)self sourceString];
  [dictionary setObject:sourceString forKeyedSubscript:@"actionSource"];

  return dictionary;
}

- (NSString)sourceString
{
  sourceNumber = [(HMDMediaPlaybackActionEvent *)self sourceNumber];
  v3 = HMDRequestSourceAsString([sourceNumber unsignedIntegerValue]);

  return v3;
}

- (NSString)playbackStateString
{
  playbackStateNumber = [(HMDMediaPlaybackActionEvent *)self playbackStateNumber];

  if (playbackStateNumber)
  {
    playbackStateNumber2 = [(HMDMediaPlaybackActionEvent *)self playbackStateNumber];
    [playbackStateNumber2 integerValue];
    v5 = playbackStateAsString();
  }

  else
  {
    v5 = @"Unset";
  }

  return v5;
}

- (HMDMediaPlaybackActionEvent)initWithIsPlaybackArchivePresent:(BOOL)present playbackStateNumber:(id)number volumeNumber:(id)volumeNumber sourceNumber:(id)sourceNumber sourceClientName:(id)name accessories:(id)accessories
{
  numberCopy = number;
  volumeNumberCopy = volumeNumber;
  sourceNumberCopy = sourceNumber;
  nameCopy = name;
  accessoriesCopy = accessories;
  v32.receiver = self;
  v32.super_class = HMDMediaPlaybackActionEvent;
  v19 = [(HMMDatedLogEvent *)&v32 init];
  if (v19)
  {
    [MEMORY[0x277D0F770] currentActivity];
    v20 = v30 = numberCopy;
    clientMetricIdentifier = [v20 clientMetricIdentifier];
    clientMetricIdentifier = v19->_clientMetricIdentifier;
    v19->_clientMetricIdentifier = clientMetricIdentifier;

    v19->_isPlaybackArchivePresent = present;
    v19->_numberOfMediaProfiles = [accessoriesCopy count];
    objc_storeStrong(&v19->_playbackStateNumber, number);
    objc_storeStrong(&v19->_volumeNumber, volumeNumber);
    objc_storeStrong(&v19->_sourceNumber, sourceNumber);
    if (nameCopy)
    {
      v23 = nameCopy;
    }

    else
    {
      v23 = @"Unknown";
    }

    objc_storeStrong(&v19->_sourceClientName, v23);
    objc_storeStrong(&v19->_accessories, accessories);
    firstObject = [accessoriesCopy firstObject];
    home = [firstObject home];

    accessories = [home accessories];
    v19->_numAccessoriesInHome = [accessories count];

    actionSets = [home actionSets];
    v28 = [actionSets na_filter:&__block_literal_global_151485];
    v19->_numNonEmptyScenesInHome = [v28 count];

    numberCopy = v30;
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