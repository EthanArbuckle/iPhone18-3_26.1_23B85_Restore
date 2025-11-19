@interface HMDCharacteristicReadWriteLogEvent
+ (id)eventWithCharacteristicsToRead:(id)a3 hmdAccessory:(id)a4 hapAccessory:(id)a5 source:(unint64_t)a6 isLocal:(BOOL)a7 transactionId:(id)a8 isCached:(BOOL)a9 bundleId:(id)a10 userUUID:(id)a11;
+ (id)eventWithCharacteristicsToWrite:(id)a3 hmdAccessory:(id)a4 hapAccessory:(id)a5 source:(unint64_t)a6 biomeSource:(unint64_t)a7 isTimedWrite:(BOOL)a8 isLocal:(BOOL)a9 transactionId:(id)a10 bundleId:(id)a11 userUUID:(id)a12 writtenValues:(id)a13;
+ (id)eventWithCharacteristicsToWrite:(id)a3 hmdAccessory:(id)a4 hapAccessory:(id)a5 source:(unint64_t)a6 isTimedWrite:(BOOL)a7 isLocal:(BOOL)a8 transactionId:(id)a9 bundleId:(id)a10 userUUID:(id)a11 writtenValues:(id)a12;
+ (id)eventWithStartTime:(double)a3 characteristicsToWrite:(id)a4 hmdAccessory:(id)a5 hapAccessory:(id)a6 source:(unint64_t)a7 isTimedWrite:(BOOL)a8 isLocal:(BOOL)a9 transactionId:(id)a10 bundleId:(id)a11 userUUID:(id)a12 writtenValues:(id)a13;
- (BOOL)_isRequestForTHSensorOnAppleMediaAccessory:(id)a3 characteristicsInRequest:(id)a4;
- (BOOL)shouldTriggerMicroLocationLocalizationScanForLogEventObserver:(id)a3;
- (BOOL)shouldTriggerMicroLocationRecordingScanForLogEventObserver:(id)a3;
- (HMDCharacteristicReadWriteLogEvent)initWithCharacteristics:(id)a3 hmdAccessory:(id)a4 hapAccessory:(id)a5 source:(unint64_t)a6 biomeSource:(unint64_t)a7 isWriteOperation:(BOOL)a8 isTimedWrite:(BOOL)a9 isLocal:(BOOL)a10 transactionId:(id)a11 isCached:(BOOL)a12 bundleId:(id)a13 userUUID:(id)a14 writtenValues:(id)a15;
- (HMDCharacteristicReadWriteLogEvent)initWithCharacteristics:(id)a3 hmdAccessory:(id)a4 hapAccessory:(id)a5 source:(unint64_t)a6 isWriteOperation:(BOOL)a7 isTimedWrite:(BOOL)a8 isLocal:(BOOL)a9 transactionId:(id)a10 isCached:(BOOL)a11 bundleId:(id)a12 userUUID:(id)a13 writtenValues:(id)a14;
- (HMDCharacteristicReadWriteLogEvent)initWithStartTime:(double)a3 characteristics:(id)a4 hmdAccessory:(id)a5 hapAccessory:(id)a6 source:(unint64_t)a7 biomeSource:(unint64_t)a8 isWriteOperation:(BOOL)a9 isTimedWrite:(BOOL)a10 isLocal:(BOOL)a11 transactionId:(id)a12 isCached:(BOOL)a13 bundleId:(id)a14 userUUID:(id)a15 writtenValues:(id)a16 readWriteLogEventManager:(id)a17;
- (HMDCharacteristicReadWriteLogEvent)initWithStartTime:(double)a3 characteristics:(id)a4 hmdAccessory:(id)a5 hapAccessory:(id)a6 source:(unint64_t)a7 isWriteOperation:(BOOL)a8 isTimedWrite:(BOOL)a9 isLocal:(BOOL)a10 transactionId:(id)a11 isCached:(BOOL)a12 bundleId:(id)a13 userUUID:(id)a14 writtenValues:(id)a15;
- (NSDictionary)coreAnalyticsEventDictionary;
- (SISchemaTopLevelUnionType)siriInstrumentationMessage;
- (id)biomeEventsRepresentationForLogObserver:(id)a3;
- (id)firstDonatableCharacteristicForLogEventObserver:(void *)a1;
- (id)microLocationMetadataForLogEventObserver:(id)a3;
- (unint64_t)microLocationScanTriggerTypeForLogEventObserver:(id)a3;
- (void)_populateTHSensorMetricsForAccessory:(id)a3 accessoryServer:(id)a4 characteristicsInRequest:(id)a5 home:(id)a6;
- (void)_setBtLoad;
- (void)_updateResidentFirstErrorWithHomeHubError;
- (void)markEndTime;
- (void)prepareForObservation;
- (void)setResidentFirstEndTime:(double)a3;
- (void)setResidentFirstError:(id)a3;
- (void)updateWithTHSensorNetworkData:(id)a3 primaryNetworkData:(id)a4 accessoryServer:(id)a5;
@end

@implementation HMDCharacteristicReadWriteLogEvent

- (id)biomeEventsRepresentationForLogObserver:(id)a3
{
  v239 = *MEMORY[0x277D85DE8];
  v226 = a3;
  if (![(HMDCharacteristicReadWriteLogEvent *)self isWriteOperation])
  {
    goto LABEL_15;
  }

  v4 = [(HMDCharacteristicReadWriteLogEvent *)self characteristicsInRequest];
  v5 = [v4 count];
  v6 = [(HMDCharacteristicReadWriteLogEvent *)self writtenValues];
  v7 = [v6 count];

  if (v5 != v7)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [(HMDCharacteristicReadWriteLogEvent *)v19 characteristicsInRequest];
      v23 = MEMORY[0x277CCABB0];
      v24 = [(HMDCharacteristicReadWriteLogEvent *)v19 characteristicsInRequest];
      v25 = [v23 numberWithUnsignedInteger:{objc_msgSend(v24, "count")}];
      v26 = [(HMDCharacteristicReadWriteLogEvent *)v19 writtenValues];
      v27 = MEMORY[0x277CCABB0];
      v28 = [(HMDCharacteristicReadWriteLogEvent *)v19 writtenValues];
      v29 = [v27 numberWithUnsignedInteger:{objc_msgSend(v28, "count")}];
      *buf = 138544386;
      v230 = v21;
      v231 = 2112;
      v232 = v22;
      v233 = 2112;
      v234 = v25;
      v235 = 2112;
      v236 = v26;
      v237 = 2112;
      v238 = v29;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Attempting to get metadata for mismatched number of characteristics (%@) : %@, and values (%@): %@", buf, 0x34u);

LABEL_13:
    }

LABEL_14:

    objc_autoreleasePoolPop(v18);
LABEL_15:
    v30 = MEMORY[0x277CBEBF8];
    goto LABEL_16;
  }

  v8 = [(HMDCharacteristicReadWriteLogEvent *)self homeUniqueIdentifier];

  if (!v8)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v230 = v21;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Unable to log event metadata to biome, no home data for event", buf, 0xCu);
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (self)
  {
    v9 = objc_alloc(MEMORY[0x277CCA970]);
    v10 = [(HMMDatedHomeLogEvent *)self startDate];
    v11 = [(HMMDatedHomeLogEvent *)self endDate];
    v12 = [v9 initWithStartDate:v10 endDate:v11];

    v13 = [(HMDCharacteristicReadWriteLogEvent *)self biomeSource];
    v14 = @"ActionSet";
    if (v13 != 1)
    {
      v14 = 0;
    }

    v15 = v14;
    v16 = v15;
    if (v13 == 1)
    {
      v17 = v15;
    }

    else
    {
      v17 = HMDRequestSourceAsString([(HMDCharacteristicReadWriteLogEvent *)self triggerSource]);
    }

    v33 = v17;

    v34 = objc_alloc(MEMORY[0x277CF1980]);
    v35 = [(HMDCharacteristicReadWriteLogEvent *)self homeUniqueIdentifier];
    v36 = [v35 UUIDString];
    v37 = [(HMDCharacteristicReadWriteLogEvent *)self isAtHome];
    v38 = [(HMDCharacteristicReadWriteLogEvent *)self bundleId];
    v39 = [(HMDCharacteristicReadWriteLogEvent *)self clientMetricIdentifier];
    if (v39)
    {
      v221 = [v34 initWithDateInterval:v12 homeUniqueIdentifier:v36 homeOccupancy:v37 source:v33 clientName:v38 eventCorrelationIdentifier:v39];
    }

    else
    {
      v227 = [MEMORY[0x277CCAD78] UUID];
      [v227 UUIDString];
      v41 = v40 = v12;
      v221 = [v34 initWithDateInterval:v40 homeUniqueIdentifier:v36 homeOccupancy:v37 source:v33 clientName:v38 eventCorrelationIdentifier:v41];

      v12 = v40;
    }
  }

  else
  {
    v221 = 0;
  }

  v42 = MEMORY[0x277CBEB18];
  v43 = [(HMDCharacteristicReadWriteLogEvent *)self characteristicsInRequest];
  v220 = [v42 arrayWithCapacity:{objc_msgSend(v43, "count")}];

  v44 = [(HMDCharacteristicReadWriteLogEvent *)self characteristicsInRequest];
  v45 = [v44 count];

  if (v45)
  {
    v46 = 0;
    v177 = *MEMORY[0x277CCFB48];
    v176 = *MEMORY[0x277CCFBA8];
    v175 = *MEMORY[0x277CCF980];
    v223 = self;
    do
    {
      v47 = [(HMDCharacteristicReadWriteLogEvent *)self characteristicsInRequest];
      v48 = [v47 objectAtIndexedSubscript:v46];

      v49 = [v48 service];
      v50 = [v49 type];
      v228 = v48;
      v51 = [v48 type];
      v52 = v51;
      if (v50)
      {
        if (v51)
        {
          v53 = v50;
          v54 = v52;
          if (v226)
          {
            v224 = v54;
            WeakRetained = objc_loadWeakRetained(v226 + 2);
            if (WeakRetained)
            {
              v56 = WeakRetained;
              v57 = v52;
              v58 = [WeakRetained hapMetadataForBiomeLogEventObserver:v226];
              if (([v53 isEqualToString:@"00000228-0000-1000-8000-0026BB765291"] & 1) != 0 || (objc_msgSend(v58, "shouldFilterServiceOfTypeFromApp:", v53) & 1) == 0)
              {
                v59 = v53;
                v60 = [v58 isStandardServiceType:v53];
              }

              else
              {
                v59 = v53;
                v60 = 0;
              }

              if ([v58 shouldFilterCharacteristicOfTypeFromApp:v224])
              {
                v71 = 0;
              }

              else
              {
                v71 = [v58 isStandardCharacteristicType:v224];
              }

              v77 = v60 & v71;

              v78 = v59;
              v52 = v57;
              if (v77)
              {
                v79 = [(HMDCharacteristicReadWriteLogEvent *)self writtenValues];
                v222 = [v79 objectAtIndexedSubscript:v46];

                v218 = v78;
                if ([v78 isEqualToString:@"00000228-0000-1000-8000-0026BB765291"])
                {
                  v80 = v224;
                  v81 = v222;
                  v82 = v221;
                  v225 = v81;
                  if (self)
                  {
                    v83 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryMediaRouteID];

                    v219 = v80;
                    if (v83)
                    {
                      v216 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
                      if ([v80 isEqualToString:v177])
                      {
                        v84 = v81;
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v85 = v84;
                        }

                        else
                        {
                          v85 = 0;
                        }

                        v86 = v85;

                        if (v86)
                        {
                          v87 = [v86 integerValue];
                          if (v87 >= 3)
                          {
                            v210 = v49;
                            v88 = objc_autoreleasePoolPush();
                            v89 = self;
                            v90 = HMFGetOSLogHandle();
                            if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
                            {
                              v91 = HMFGetLogIdentifier();
                              *buf = 138543362;
                              v230 = v91;
                              _os_log_impl(&dword_229538000, v90, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to log event metadata to biome, unknown playback state not eligible for donation", buf, 0xCu);
                            }

                            objc_autoreleasePoolPop(v88);
                            v92 = 0;
                            v49 = v210;
                            goto LABEL_105;
                          }

                          v209 = v52;
                          v212 = v50;
                          v151 = [MEMORY[0x277CCABB0] numberWithInteger:qword_22A587EB0[v87]];
                          [v216 setObject:v151 forKeyedSubscript:@"playback-state"];

LABEL_99:
                          v214 = v82;

LABEL_100:
                          v203 = objc_alloc(MEMORY[0x277CF1988]);
                          v207 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryUniqueIdentifier];
                          v197 = [v207 UUIDString];
                          v201 = [v216 copy];
                          v199 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryMediaRouteID];
                          v195 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryZoneUniqueIdentifiers];
                          v205 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryRoomUniqueIdentifier];
                          v193 = [v205 UUIDString];
                          v191 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryName];
                          v152 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryRoomName];
                          v153 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryZoneNames];
                          [(HMDCharacteristicReadWriteLogEvent *)self homeName];
                          v155 = v154 = v49;
                          v82 = v214;
                          v92 = [v203 initWithBase:v214 accessoryUniqueIdentifier:v197 accessoryStateString:MEMORY[0x277CBEC10] accessoryStateNumber:v201 accessoryStateData:MEMORY[0x277CBEC10] accessoryMediaRouteIdentifier:v199 zoneUniqueIdentifiers:v195 roomUniqueIdentifier:v193 accessoryName:v191 roomName:v152 zoneNames:v153 homeName:v155];

                          v49 = v154;
                          v52 = v209;
                          v50 = v212;
                          goto LABEL_105;
                        }

                        v143 = objc_autoreleasePoolPush();
                        v144 = self;
                        v145 = HMFGetOSLogHandle();
                        if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
                        {
                          HMFGetLogIdentifier();
                          v215 = v82;
                          v146 = v50;
                          v148 = v147 = v49;
                          *buf = 138543362;
                          v230 = v148;
                          v149 = v145;
                          v150 = "%{public}@Unable to log event metadata to biome, non number playback state not eligible for donation";
                          goto LABEL_103;
                        }

                        goto LABEL_104;
                      }

                      if ([v80 isEqualToString:v176])
                      {
                        v133 = v81;
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v134 = v133;
                        }

                        else
                        {
                          v134 = 0;
                        }

                        v86 = v134;

                        if (v86)
                        {
                          v209 = v52;
                          v212 = v50;
                          [v216 setObject:v86 forKeyedSubscript:@"volume"];
                          goto LABEL_99;
                        }

                        v143 = objc_autoreleasePoolPush();
                        v144 = self;
                        v145 = HMFGetOSLogHandle();
                        if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
                        {
                          HMFGetLogIdentifier();
                          v215 = v82;
                          v146 = v50;
                          v148 = v147 = v49;
                          *buf = 138543362;
                          v230 = v148;
                          v149 = v145;
                          v150 = "%{public}@Unable to log event metadata to biome, unknown volume state not eligible for donation";
LABEL_103:
                          _os_log_impl(&dword_229538000, v149, OS_LOG_TYPE_DEFAULT, v150, buf, 0xCu);

                          v49 = v147;
                          v50 = v146;
                          v82 = v215;
                        }

LABEL_104:

                        objc_autoreleasePoolPop(v143);
                        v92 = 0;
                        goto LABEL_105;
                      }

                      v212 = v50;
                      v214 = v82;
                      v209 = v52;
                      if (![v80 isEqualToString:v175])
                      {
                        goto LABEL_100;
                      }

                      v135 = v81;
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v136 = v135;
                      }

                      else
                      {
                        v136 = 0;
                      }

                      v86 = v136;

                      if (v86)
                      {
                        [v216 setObject:v86 forKeyedSubscript:@"mute"];
                        goto LABEL_99;
                      }

                      v163 = objc_autoreleasePoolPush();
                      v164 = self;
                      v165 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT))
                      {
                        HMFGetLogIdentifier();
                        v167 = v166 = v49;
                        *buf = 138543362;
                        v230 = v167;
                        _os_log_impl(&dword_229538000, v165, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to log event metadata to biome, unknown mute state not eligible for donation", buf, 0xCu);

                        v49 = v166;
                      }

                      objc_autoreleasePoolPop(v163);
                      v92 = 0;
                      v50 = v212;
LABEL_105:
                    }

                    else
                    {
                      v127 = objc_autoreleasePoolPush();
                      v128 = self;
                      v129 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
                      {
                        HMFGetLogIdentifier();
                        v130 = v50;
                        v132 = v131 = v49;
                        *buf = 138543362;
                        v230 = v132;
                        _os_log_impl(&dword_229538000, v129, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to log event metadata to biome, smart speaker event is missing media profile", buf, 0xCu);

                        v49 = v131;
                        v50 = v130;
                      }

                      objc_autoreleasePoolPop(v127);
                      v92 = 0;
                    }

                    v80 = v219;
                  }

                  else
                  {
                    v92 = 0;
                  }

                  [v220 na_safeAddObject:v92];
                }

                else
                {
                  v98 = v222;
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v99 = v98;
                  }

                  else
                  {
                    v99 = 0;
                  }

                  v100 = v99;

                  v101 = v98;
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v102 = v101;
                  }

                  else
                  {
                    v102 = 0;
                  }

                  v103 = v102;

                  v104 = v101;
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v105 = v104;
                  }

                  else
                  {
                    v105 = 0;
                  }

                  v106 = v105;

                  v200 = v106;
                  v202 = v100;
                  v198 = v103;
                  if (v100)
                  {
                    v178 = objc_alloc(MEMORY[0x277CF1960]);
                    v196 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryUniqueIdentifier];
                    v217 = [v196 UUIDString];
                    v194 = [v49 spiClientIdentifier];
                    v213 = [v194 UUIDString];
                    v107 = [(HMDCharacteristicReadWriteLogEvent *)self serviceUUIDToServiceGroupUniqueIdentifier];
                    v190 = [v49 uuid];
                    v192 = v107;
                    v189 = [v107 objectForKeyedSubscript:?];
                    v211 = [v189 UUIDString];
                    v208 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryZoneUniqueIdentifiers];
                    v188 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryRoomUniqueIdentifier];
                    v180 = [v188 UUIDString];
                    v108 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryName];
                    v109 = [v49 name];
                    v110 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryRoomName];
                    v111 = [(HMDCharacteristicReadWriteLogEvent *)self serviceUUIDToServiceGroupName];
                    v186 = [v49 uuid];
                    v187 = v111;
                    v112 = [v111 objectForKeyedSubscript:?];
                    v113 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryZoneNames];
                    v183 = [(HMDCharacteristicReadWriteLogEvent *)self homeName];
                    v184 = v113;
                    v174 = v113;
                    v185 = v112;
                    v171 = v112;
                    v204 = v110;
                    v206 = v108;
                    v168 = v108;
                    v114 = v109;
                    v115 = v180;
                    v116 = v202;
                    v117 = [v178 initWithBase:v221 numberAccessoryState:v202 accessoryUniqueIdentifier:v217 serviceUniqueIdentifier:v213 serviceType:v218 characteristicType:v224 serviceGroupUniqueIdentifier:v211 zoneUniqueIdentifiers:v208 roomUniqueIdentifier:v180 accessoryName:v168 serviceName:v109 roomName:v110 serviceGroupName:v171 zoneNames:v174 homeName:v183];
                    v118 = v198;
                  }

                  else
                  {
                    if (v103)
                    {
                      v179 = objc_alloc(MEMORY[0x277CF1960]);
                      v196 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryUniqueIdentifier];
                      v217 = [v196 UUIDString];
                      v194 = [v49 spiClientIdentifier];
                      v213 = [v194 UUIDString];
                      v119 = [(HMDCharacteristicReadWriteLogEvent *)self serviceUUIDToServiceGroupUniqueIdentifier];
                      v190 = [v49 uuid];
                      v192 = v119;
                      v189 = [v119 objectForKeyedSubscript:?];
                      v211 = [v189 UUIDString];
                      v208 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryZoneUniqueIdentifiers];
                      v188 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryRoomUniqueIdentifier];
                      v181 = [v188 UUIDString];
                      v120 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryName];
                      v121 = [v49 name];
                      v122 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryRoomName];
                      v123 = [(HMDCharacteristicReadWriteLogEvent *)self serviceUUIDToServiceGroupName];
                      v186 = [v49 uuid];
                      v187 = v123;
                      v124 = [v123 objectForKeyedSubscript:?];
                      v125 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryZoneNames];
                      v183 = [(HMDCharacteristicReadWriteLogEvent *)self homeName];
                      v184 = v125;
                      v185 = v124;
                      v170 = v122;
                      v172 = v124;
                      v204 = v122;
                      v206 = v120;
                      v169 = v120;
                      v114 = v121;
                      v115 = v181;
                      v118 = v198;
                      v126 = [v179 initWithBase:v221 stringAccessoryState:v198 accessoryUniqueIdentifier:v217 serviceUniqueIdentifier:v213 serviceType:v218 characteristicType:v224 serviceGroupUniqueIdentifier:v211 zoneUniqueIdentifiers:v208 roomUniqueIdentifier:v181 accessoryName:v169 serviceName:v121 roomName:v170 serviceGroupName:v172 zoneNames:v125 homeName:v183];
                    }

                    else
                    {
                      if (!v106)
                      {
                        v156 = v49;
                        v157 = objc_autoreleasePoolPush();
                        v158 = self;
                        v159 = HMFGetOSLogHandle();
                        if (os_log_type_enabled(v159, OS_LOG_TYPE_INFO))
                        {
                          v160 = HMFGetLogIdentifier();
                          v161 = objc_opt_class();
                          *buf = 138544386;
                          v230 = v160;
                          v231 = 2112;
                          v232 = v161;
                          v233 = 2112;
                          v234 = v228;
                          v235 = 2112;
                          v236 = v156;
                          v237 = 2112;
                          v238 = v104;
                          v162 = v161;
                          _os_log_impl(&dword_229538000, v159, OS_LOG_TYPE_INFO, "%{public}@Unable to log event metadata to biome, unknown write value type (%@) for characteristic: %@, Service: %@, written value: %@", buf, 0x34u);
                        }

                        objc_autoreleasePoolPop(v157);
                        v49 = v156;
                        goto LABEL_108;
                      }

                      v182 = objc_alloc(MEMORY[0x277CF1960]);
                      v196 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryUniqueIdentifier];
                      v217 = [v196 UUIDString];
                      v194 = [v49 spiClientIdentifier];
                      v213 = [v194 UUIDString];
                      v137 = [(HMDCharacteristicReadWriteLogEvent *)self serviceUUIDToServiceGroupUniqueIdentifier];
                      v190 = [v49 uuid];
                      v192 = v137;
                      v189 = [v137 objectForKeyedSubscript:?];
                      v211 = [v189 UUIDString];
                      v208 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryZoneUniqueIdentifiers];
                      v188 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryRoomUniqueIdentifier];
                      v138 = [v188 UUIDString];
                      v206 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryName];
                      v114 = [v49 name];
                      v204 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryRoomName];
                      v139 = [(HMDCharacteristicReadWriteLogEvent *)self serviceUUIDToServiceGroupName];
                      v186 = [v49 uuid];
                      v187 = v139;
                      v140 = [v139 objectForKeyedSubscript:?];
                      [(HMDCharacteristicReadWriteLogEvent *)self accessoryZoneNames];
                      v141 = v106;
                      v142 = v115 = v138;
                      v183 = [(HMDCharacteristicReadWriteLogEvent *)self homeName];
                      v184 = v142;
                      v185 = v140;
                      v173 = v140;
                      v118 = v198;
                      v126 = [v182 initWithBase:v221 dataAccessoryState:v141 accessoryUniqueIdentifier:v217 serviceUniqueIdentifier:v213 serviceType:v218 characteristicType:v224 serviceGroupUniqueIdentifier:v211 zoneUniqueIdentifiers:v208 roomUniqueIdentifier:v115 accessoryName:v206 serviceName:v114 roomName:v204 serviceGroupName:v173 zoneNames:v142 homeName:v183];
                    }

                    v117 = v126;
                    v116 = 0;
                  }

                  [v220 addObject:v117];
                }

LABEL_108:

                goto LABEL_62;
              }

              goto LABEL_59;
            }

            v72 = objc_autoreleasePoolPush();
            v73 = v226;
            v74 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v76 = v75 = v52;
              *buf = 138543362;
              v230 = v76;
              _os_log_impl(&dword_229538000, v74, OS_LOG_TYPE_ERROR, "%{public}@HAP event ineligible for donation because data source is nil", buf, 0xCu);

              v52 = v75;
              self = v223;
            }

            objc_autoreleasePoolPop(v72);
            v54 = v224;
          }

LABEL_59:
          v61 = objc_autoreleasePoolPush();
          v62 = self;
          v63 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
          {
            HMFGetLogIdentifier();
            v93 = v50;
            v95 = v94 = v49;
            *buf = 138543874;
            v230 = v95;
            v231 = 2112;
            v232 = v228;
            v233 = 2112;
            v234 = v94;
            _os_log_impl(&dword_229538000, v63, OS_LOG_TYPE_DEBUG, "%{public}@Unable to log event metadata to biome, not eligible for donation. Characteristic: %@, Service: %@", buf, 0x20u);

            v49 = v94;
            v50 = v93;
          }

          goto LABEL_61;
        }

        v61 = objc_autoreleasePoolPush();
        v62 = self;
        v63 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v67 = v50;
          v69 = v68 = v49;
          v70 = [MEMORY[0x277CCABB0] numberWithInt:v46];
          *buf = 138543874;
          v230 = v69;
          v231 = 2112;
          v232 = v228;
          v233 = 2112;
          v234 = v70;
          _os_log_impl(&dword_229538000, v63, OS_LOG_TYPE_ERROR, "%{public}@Unable to log event metadata to biome, no characteristic type for characteristic (%@) at index: %@", buf, 0x20u);

          v49 = v68;
          v50 = v67;
          v52 = 0;
          goto LABEL_37;
        }
      }

      else
      {
        v61 = objc_autoreleasePoolPush();
        v62 = self;
        v63 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v65 = v64 = v49;
          v66 = [MEMORY[0x277CCABB0] numberWithInt:v46];
          *buf = 138543874;
          v230 = v65;
          v231 = 2112;
          v232 = v228;
          v233 = 2112;
          v234 = v66;
          _os_log_impl(&dword_229538000, v63, OS_LOG_TYPE_ERROR, "%{public}@Unable to log event metadata to biome, no service type for characteristic (%@) at index: %@", buf, 0x20u);

          v49 = v64;
          v50 = 0;
LABEL_37:
          self = v223;
        }
      }

LABEL_61:

      objc_autoreleasePoolPop(v61);
LABEL_62:

      ++v46;
      v96 = [(HMDCharacteristicReadWriteLogEvent *)self characteristicsInRequest];
      v97 = [v96 count];
    }

    while (v97 > v46);
  }

  v30 = [v220 copy];

LABEL_16:
  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

- (unint64_t)microLocationScanTriggerTypeForLogEventObserver:(id)a3
{
  v3 = [(HMDCharacteristicReadWriteLogEvent *)self firstDonatableCharacteristicForLogEventObserver:a3];
  v4 = [v3 service];
  v5 = [v4 type];
  v6 = [v5 isEqualToString:@"00000228-0000-1000-8000-0026BB765291"];

  return v6;
}

- (id)firstDonatableCharacteristicForLogEventObserver:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 characteristicsInRequest];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __108__HMDCharacteristicReadWriteLogEvent_MicroLocationLogging__firstDonatableCharacteristicForLogEventObserver___block_invoke;
    v6[3] = &unk_278675CE8;
    v7 = v3;
    v8 = a1;
    a1 = [v4 na_firstObjectPassingTest:v6];
  }

  return a1;
}

uint64_t __108__HMDCharacteristicReadWriteLogEvent_MicroLocationLogging__firstDonatableCharacteristicForLogEventObserver___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 service];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_6;
  }

  v6 = *(a1 + 32);
  v7 = [v4 type];
  v8 = [v3 type];
  LODWORD(v6) = [(HMDMicroLocationLogEventObserver *)v6 isEligibleForDonationWithHAPServiceType:v7 HAPCharacteristicType:v8];

  if (v6)
  {
    v9 = [*(a1 + 40) numAccessoriesInHome];
    v10 = [*(a1 + 40) numNonEmptyScenesInHome];
    v11 = [*(a1 + 40) triggerSource];
    if (v10 + v9 > 3)
    {
      v12 = (v11 < 7) & ((0x18u >> v11) ^ 1);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
LABEL_6:
    v12 = 0;
  }

  return v12;
}

- (BOOL)shouldTriggerMicroLocationRecordingScanForLogEventObserver:(id)a3
{
  v4 = a3;
  if ([(HMDCharacteristicReadWriteLogEvent *)self isWriteOperation])
  {
    v5 = [(HMDCharacteristicReadWriteLogEvent *)self characteristicsInRequest];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __119__HMDCharacteristicReadWriteLogEvent_MicroLocationLogging__shouldTriggerMicroLocationRecordingScanForLogEventObserver___block_invoke;
    v8[3] = &unk_278675CE8;
    v9 = v4;
    v10 = self;
    v6 = [v5 na_any:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __119__HMDCharacteristicReadWriteLogEvent_MicroLocationLogging__shouldTriggerMicroLocationRecordingScanForLogEventObserver___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 service];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_6;
  }

  v6 = *(a1 + 32);
  v7 = [v4 type];
  v8 = [v3 type];
  LODWORD(v6) = [(HMDMicroLocationLogEventObserver *)v6 isEligibleForDonationWithHAPServiceType:v7 HAPCharacteristicType:v8];

  if (v6)
  {
    v9 = [*(a1 + 40) numAccessoriesInHome];
    v10 = [*(a1 + 40) numNonEmptyScenesInHome];
    v11 = [*(a1 + 40) triggerSource];
    if (v10 + v9 > 3)
    {
      v12 = (v11 < 7) & ((0x18u >> v11) ^ 1);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
LABEL_6:
    v12 = 0;
  }

  return v12;
}

- (BOOL)shouldTriggerMicroLocationLocalizationScanForLogEventObserver:(id)a3
{
  v4 = a3;
  if ([(HMDCharacteristicReadWriteLogEvent *)self isWriteOperation])
  {
    v5 = [(HMDCharacteristicReadWriteLogEvent *)self characteristicsInRequest];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __122__HMDCharacteristicReadWriteLogEvent_MicroLocationLogging__shouldTriggerMicroLocationLocalizationScanForLogEventObserver___block_invoke;
    v8[3] = &unk_278675CE8;
    v9 = v4;
    v10 = self;
    v6 = [v5 na_any:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __122__HMDCharacteristicReadWriteLogEvent_MicroLocationLogging__shouldTriggerMicroLocationLocalizationScanForLogEventObserver___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 service];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_6;
  }

  v6 = *(a1 + 32);
  v7 = [v4 type];
  v8 = [v3 type];
  LODWORD(v6) = [(HMDMicroLocationLogEventObserver *)v6 isEligibleForDonationWithHAPServiceType:v7 HAPCharacteristicType:v8];

  if (v6)
  {
    v9 = [*(a1 + 40) numAccessoriesInHome];
    v10 = [*(a1 + 40) numNonEmptyScenesInHome];
    v11 = [*(a1 + 40) triggerSource];
    if (v10 + v9 > 3)
    {
      v12 = (v11 < 7) & ((0x18u >> v11) ^ 1);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
LABEL_6:
    v12 = 0;
  }

  return v12;
}

- (id)microLocationMetadataForLogEventObserver:(id)a3
{
  v4 = a3;
  if ([(HMDCharacteristicReadWriteLogEvent *)self isWriteOperation])
  {
    v5 = [(HMDCharacteristicReadWriteLogEvent *)self firstDonatableCharacteristicForLogEventObserver:v4];
    v6 = [v5 service];
    v7 = [v5 accessory];
    v8 = v7;
    v9 = MEMORY[0x277CBEC10];
    if (v5 && v6 && v7)
    {
      v10 = [(HMDCharacteristicReadWriteLogEvent *)self characteristicsInRequest];
      v11 = [v10 indexOfObject:v5];

      v12 = [(HMDCharacteristicReadWriteLogEvent *)self writtenValues];
      v13 = [v12 count];

      if (v11 <= v13)
      {
        v14 = [(HMDCharacteristicReadWriteLogEvent *)self writtenValues];
        v15 = [v14 objectAtIndexedSubscript:v11];

        v16 = v15;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        v18 = v17;

        v19 = v16;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        v21 = v20;

        if (v18)
        {
          v43 = [v18 stringValue];
        }

        else if (v21)
        {
          v22 = v21;
          v43 = v19;
        }

        else
        {
          v43 = @"unknown";
        }
      }

      else
      {
        v43 = @"unknown";
      }

      v23 = [v6 spiClientIdentifier];
      v24 = [v23 UUIDString];

      v25 = [v6 type];
      v47 = [v5 type];
      v26 = [(HMDCharacteristicReadWriteLogEvent *)self serviceUUIDToServiceGroupUniqueIdentifier];
      v44 = v6;
      v27 = [v6 uuid];
      v28 = [v26 objectForKeyedSubscript:v27];
      v29 = [v28 UUIDString];
      v30 = v29;
      v31 = &stru_283CF9D50;
      if (v29)
      {
        v31 = v29;
      }

      v46 = v31;

      v45 = v4;
      v42 = v5;
      if ([(__CFString *)v25 isEqualToString:@"00000228-0000-1000-8000-0026BB765291"])
      {

        v24 = @"media";
        v32 = @"media";
        v46 = &stru_283CF9D50;
        v47 = @"media";
      }

      else
      {
        v32 = v25;
      }

      v33 = MEMORY[0x277D28780];
      v41 = [v8 spiClientIdentifier];
      v34 = [v41 UUIDString];
      v35 = HMDRequestSourceAsString([(HMDCharacteristicReadWriteLogEvent *)self triggerSource]);
      v36 = [v8 room];
      v37 = [v36 spiClientIdentifier];
      [v37 UUIDString];
      v39 = v38 = v8;
      v9 = [v33 metadataForHomekitAccessoryControlEventWithUUID:v34 stateString:v43 serviceUUID:v24 serviceType:v32 characteristicType:v47 serviceGroupUUID:v46 source:v35 roomUUID:v39];

      v8 = v38;
      v6 = v44;
      v4 = v45;
      v5 = v42;
    }
  }

  else
  {
    v9 = MEMORY[0x277CBEC10];
  }

  return v9;
}

- (SISchemaTopLevelUnionType)siriInstrumentationMessage
{
  v3 = objc_alloc_init(MEMORY[0x277D57AE8]);
  v4 = objc_alloc(MEMORY[0x277CCAD78]);
  v5 = [(HMDCharacteristicReadWriteLogEvent *)self clientMetricIdentifier];
  v6 = [v4 initWithUUIDString:v5];

  v7 = [objc_alloc(MEMORY[0x277D5AC78]) initWithNSUUID:v6];
  [v3 setSharedMetricsId:v7];

  v8 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryCategory];
  [v3 setAccessoryCategory:v8];

  v9 = [(HMDCharacteristicReadWriteLogEvent *)self communicationProtocol];
  if (v9 == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2 * (v9 == 2);
  }

  [v3 setCommunicationProtocol:v10];
  v11 = [(HMDCharacteristicReadWriteLogEvent *)self isLocal];
  v12 = [(HMDCharacteristicReadWriteLogEvent *)self linkType];
  v13 = [(HMDCharacteristicReadWriteLogEvent *)self isSentOverThread];
  [(HMDCharacteristicReadWriteLogEvent *)self transportType];
  v14 = 2 * (v12 == 2);
  if (v12 == 1)
  {
    v14 = 1;
  }

  if (v13)
  {
    v14 = 3;
  }

  if (v11)
  {
    v15 = v14;
  }

  else
  {
    v15 = 4;
  }

  [v3 setTransportType:v15];
  if ([(HMDCharacteristicReadWriteLogEvent *)self isWriteOperation])
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  [v3 setOperationType:v16];
  [v3 setWasLocal:{-[HMDCharacteristicReadWriteLogEvent isLocal](self, "isLocal")}];
  [v3 setWasCached:{-[HMDCharacteristicReadWriteLogEvent isCached](self, "isCached")}];
  [v3 setWasRemoteAccessAllowed:{-[HMDCharacteristicReadWriteLogEvent isRemoteAccessAllowed](self, "isRemoteAccessAllowed")}];
  [v3 setWasResidentFirstEnabled:{-[HMDCharacteristicReadWriteLogEvent isResidentFirstEnabled](self, "isResidentFirstEnabled")}];
  [v3 setWasRapportSlow:{-[HMDCharacteristicReadWriteLogEvent isSlowRapport](self, "isSlowRapport")}];
  [v3 setResidentFirstDuration:{-[HMDCharacteristicReadWriteLogEvent residentFirstDurationInMilliseconds](self, "residentFirstDurationInMilliseconds")}];
  v17 = [(HMDCharacteristicReadWriteLogEvent *)self residentFirstError];
  v18 = [v17 domain];
  [v3 setResidentFirstErrorDomain:v18];

  v19 = [(HMDCharacteristicReadWriteLogEvent *)self residentFirstError];
  [v3 setResidentFirstErrorCode:{objc_msgSend(v19, "code")}];

  [v3 setTotalDuration:{-[HMMLogEvent durationMilliseconds](self, "durationMilliseconds")}];
  v20 = [(HMMLogEvent *)self error];
  v21 = [v20 domain];
  [v3 setFinalErrorDomain:v21];

  v22 = [(HMMLogEvent *)self error];
  [v3 setFinalErrorCode:{objc_msgSend(v22, "code")}];

  [v3 setConsecutiveFailureCount:{-[HMDCharacteristicReadWriteLogEvent consecutiveFailureCount](self, "consecutiveFailureCount")}];
  v23 = objc_alloc_init(MEMORY[0x277D57AF8]);
  [v23 setHomeKitAccessoryOperationReported:v3];

  return v23;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [(HMDCharacteristicReadWriteLogEvent *)self accessoryCertificationStatus];
  v4 = HMAccessoryCertificationStatusToString();
  [v3 setObject:v4 forKeyedSubscript:@"accessoryCertificationStatus"];

  if (isInternalBuild())
  {
    v5 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryUUID];
    v6 = [v5 UUIDString];
    [v3 setObject:v6 forKeyedSubscript:@"accessoryUUID"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"accessoryUUID"];
  }

  v7 = [(HMDCharacteristicReadWriteLogEvent *)self primaryServiceType];
  [v3 setObject:v7 forKeyedSubscript:@"accessoryPrimaryServiceType"];

  v8 = [(HMDCharacteristicReadWriteLogEvent *)self bundleId];
  if ([HMDMetricsUtilities shouldRedactBundleID:v8])
  {
    [v3 setObject:@"Third-party app" forKeyedSubscript:@"appIdentifier"];
  }

  else
  {
    v9 = [(HMDCharacteristicReadWriteLogEvent *)self bundleId];
    [v3 setObject:v9 forKeyedSubscript:@"appIdentifier"];
  }

  if (isInternalBuild())
  {
    v10 = [(HMDCharacteristicReadWriteLogEvent *)self clientMetricIdentifier];
    [v3 setObject:v10 forKeyedSubscript:@"clientMetricIdentifier"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"clientMetricIdentifier"];
  }

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDCharacteristicReadWriteLogEvent communicationProtocol](self, "communicationProtocol")}];
  [v3 setObject:v11 forKeyedSubscript:@"communicationProtocol"];

  v12 = [(HMDCharacteristicReadWriteLogEvent *)self expectedTransport];
  [v3 setObject:v12 forKeyedSubscript:@"expectedTransport"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isCached](self, "isCached")}];
  [v3 setObject:v13 forKeyedSubscript:@"isCached"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isCurrentDeviceConfirmedPrimaryResident](self, "isCurrentDeviceConfirmedPrimaryResident")}];
  [v3 setObject:v14 forKeyedSubscript:@"isCurrentDeviceConfirmedPrimaryResident"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isCurrentDevicePrimaryResident](self, "isCurrentDevicePrimaryResident")}];
  [v3 setObject:v15 forKeyedSubscript:@"isCurrentDevicePrimaryResident"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isCurrentDeviceAvailableResident](self, "isCurrentDeviceAvailableResident")}];
  [v3 setObject:v16 forKeyedSubscript:@"isCurrentDeviceAvailableResident"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isPrimaryResidentReachable](self, "isPrimaryResidentReachable")}];
  [v3 setObject:v17 forKeyedSubscript:@"isPrimaryResidentReachable"];

  v18 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDCharacteristicReadWriteLogEvent isLocal](self, "isLocal") ^ 1}];
  [v3 setObject:v18 forKeyedSubscript:@"isRemote"];

  v19 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isRemotelyReachable](self, "isRemotelyReachable")}];
  [v3 setObject:v19 forKeyedSubscript:@"isRemotelyReachable"];

  v20 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isRemoteAccessAllowed](self, "isRemoteAccessAllowed")}];
  [v3 setObject:v20 forKeyedSubscript:@"isRemoteAccessAllowed"];

  v21 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isResidentAvailable](self, "isResidentAvailable")}];
  [v3 setObject:v21 forKeyedSubscript:@"isResidentAvailable"];

  if ([(HMDCharacteristicReadWriteLogEvent *)self linkLayerType]== 4)
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isSentOverThread"];
  }

  else
  {
    v22 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isSentOverThread](self, "isSentOverThread")}];
    [v3 setObject:v22 forKeyedSubscript:@"isSentOverThread"];
  }

  if ([(HMDCharacteristicReadWriteLogEvent *)self linkLayerType]== 4)
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isThreadAccessory"];
  }

  else
  {
    v23 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isThreadAccessory](self, "isThreadAccessory")}];
    [v3 setObject:v23 forKeyedSubscript:@"isThreadAccessory"];
  }

  v24 = [(HMDCharacteristicReadWriteLogEvent *)self hapAccessoryThreadCapabilities];
  [v3 setObject:v24 forKeyedSubscript:@"hapThreadAccessoryCapabilities"];

  v25 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isWriteOperation](self, "isWriteOperation")}];
  [v3 setObject:v25 forKeyedSubscript:@"isWrite"];

  v26 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isTimedWrite](self, "isTimedWrite")}];
  [v3 setObject:v26 forKeyedSubscript:@"isTimedWrite"];

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCharacteristicReadWriteLogEvent triggerSource](self, "triggerSource")}];
  [v3 setObject:v27 forKeyedSubscript:@"sourceEnum"];

  v28 = HMDRequestSourceAsLegacyMetricString([(HMDCharacteristicReadWriteLogEvent *)self triggerSource]);
  [v3 setObject:v28 forKeyedSubscript:@"source"];

  v29 = MEMORY[0x277CCABB0];
  [(HMDCharacteristicReadWriteLogEvent *)self timeIntervalSinceFirstFailure];
  v30 = [v29 numberWithDouble:?];
  [v3 setObject:v30 forKeyedSubscript:@"timeElapsedSinceFirstFailure"];

  v31 = MEMORY[0x277CCABB0];
  [(HMDCharacteristicReadWriteLogEvent *)self noSessionDuration];
  v33 = [v31 numberWithInteger:v32];
  [v3 setObject:v33 forKeyedSubscript:@"noSessionDuration"];

  v34 = [(HMDCharacteristicReadWriteLogEvent *)self transportProtocolVersion];
  [v3 setObject:v34 forKeyedSubscript:@"transportProtocolVersion"];

  if ([(HMDCharacteristicReadWriteLogEvent *)self isLocal])
  {
    [(HMDCharacteristicReadWriteLogEvent *)self linkType];
    v35 = HAPLinkTypeDescription();
  }

  else
  {
    v36 = [(HMDCharacteristicReadWriteLogEvent *)self transportType];
    if (v36 > 7)
    {
      v37 = 0;
    }

    else
    {
      v37 = off_2786897D0[v36];
    }

    v35 = v37;
  }

  v38 = v35;
  [v3 setObject:v35 forKeyedSubscript:@"transportType"];

  v39 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDCharacteristicReadWriteLogEvent linkLayerType](self, "linkLayerType")}];
  [v3 setObject:v39 forKeyedSubscript:@"linkLayerType"];

  v40 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isModernTransport](self, "isModernTransport")}];
  [v3 setObject:v40 forKeyedSubscript:@"isModernTransport"];

  v41 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isSlowRapport](self, "isSlowRapport")}];
  [v3 setObject:v41 forKeyedSubscript:@"isSlowRapport"];

  v42 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isDeviceAtHome](self, "isDeviceAtHome")}];
  [v3 setObject:v42 forKeyedSubscript:@"isDeviceAtHome"];

  v43 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDCharacteristicReadWriteLogEvent localDurationInMilliseconds](self, "localDurationInMilliseconds")}];
  [v3 setObject:v43 forKeyedSubscript:@"localDuration"];

  v44 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDCharacteristicReadWriteLogEvent residentFirstDurationInMilliseconds](self, "residentFirstDurationInMilliseconds")}];
  [v3 setObject:v44 forKeyedSubscript:@"residentFirstDuration"];

  v45 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMMLogEvent durationMilliseconds](self, "durationMilliseconds")}];
  [v3 setObject:v45 forKeyedSubscript:@"duration"];

  v46 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDCharacteristicReadWriteLogEvent btLoad](self, "btLoad")}];
  [v3 setObject:v46 forKeyedSubscript:@"btLoad"];

  v47 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDCharacteristicReadWriteLogEvent btAudioTask](self, "btAudioTask")}];
  [v3 setObject:v47 forKeyedSubscript:@"btAudioTask"];

  v48 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDCharacteristicReadWriteLogEvent btNonAudioTask](self, "btNonAudioTask")}];
  [v3 setObject:v48 forKeyedSubscript:@"btNonAudioTask"];

  v49 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent hasSession](self, "hasSession")}];
  [v3 setObject:v49 forKeyedSubscript:@"hasActiveSession"];

  v50 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isReachable](self, "isReachable")}];
  [v3 setObject:v50 forKeyedSubscript:@"isReachable"];

  v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCharacteristicReadWriteLogEvent recentSessionRetries](self, "recentSessionRetries")}];
  [v3 setObject:v51 forKeyedSubscript:@"recentSessionRetries"];

  v52 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDCharacteristicReadWriteLogEvent topSessionFailureErrorCode](self, "topSessionFailureErrorCode")}];
  [v3 setObject:v52 forKeyedSubscript:@"topSessionFailureErrorCode"];

  v53 = [(HMDCharacteristicReadWriteLogEvent *)self topSessionFailureErrorDomain];
  [v3 setObject:v53 forKeyedSubscript:@"topSessionFailureErrorDomain"];

  v54 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isHomeThreadCapable](self, "isHomeThreadCapable")}];
  [v3 setObject:v54 forKeyedSubscript:@"isHomeThreadCapable"];

  v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCharacteristicReadWriteLogEvent lastKnownLinkQuality](self, "lastKnownLinkQuality")}];
  [v3 setObject:v55 forKeyedSubscript:@"lastKnownLinkQuality"];

  v56 = [(HMDCharacteristicReadWriteLogEvent *)self residentFirstError];

  if (v56)
  {
    v57 = [(HMDCharacteristicReadWriteLogEvent *)self residentFirstError];
    v58 = [v57 domain];
    [v3 setObject:v58 forKeyedSubscript:@"residentFirstErrorDomain"];

    v59 = MEMORY[0x277CCABB0];
    v60 = [(HMDCharacteristicReadWriteLogEvent *)self residentFirstError];
    v61 = [v59 numberWithInteger:{objc_msgSend(v60, "code")}];
    [v3 setObject:v61 forKeyedSubscript:@"residentFirstErrorCode"];
  }

  v62 = [(HMDCharacteristicReadWriteLogEvent *)self residentFirstUnderlyingError];

  if (v62)
  {
    v63 = [(HMDCharacteristicReadWriteLogEvent *)self residentFirstUnderlyingError];
    v64 = [v63 domain];
    [v3 setObject:v64 forKeyedSubscript:@"residentFirstUnderlyingErrorDomain"];

    v65 = MEMORY[0x277CCABB0];
    v66 = [(HMDCharacteristicReadWriteLogEvent *)self residentFirstUnderlyingError];
    v67 = [v65 numberWithInteger:{objc_msgSend(v66, "code")}];
    [v3 setObject:v67 forKeyedSubscript:@"residentFirstUnderlyingErrorCode"];
  }

  v68 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isNetworkAvailable](self, "isNetworkAvailable")}];
  [v3 setObject:v68 forKeyedSubscript:@"isNetworkAvailable"];

  v69 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isLocalFallback](self, "isLocalFallback")}];
  [v3 setObject:v69 forKeyedSubscript:@"isLocalFallback"];

  v70 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isLinkFallback](self, "isLinkFallback")}];
  [v3 setObject:v70 forKeyedSubscript:@"isLinkFallback"];

  v71 = MEMORY[0x277CCABB0];
  [(HMDCharacteristicReadWriteLogEvent *)self timeIntervalSinceLastSuccessfulRequest];
  v73 = [v71 numberWithInteger:v72];
  [v3 setObject:v73 forKeyedSubscript:@"durationSecondsSinceLastSuccessfulRequest"];

  v74 = MEMORY[0x277CCABB0];
  [(HMDCharacteristicReadWriteLogEvent *)self timeIntervalSinceLastFailedRequest];
  v76 = [v74 numberWithInteger:v75];
  [v3 setObject:v76 forKeyedSubscript:@"durationSecondsSinceLastFailedRequest"];

  v77 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent hasSucceededOnce](self, "hasSucceededOnce")}];
  [v3 setObject:v77 forKeyedSubscript:@"hasSucceededOnce"];

  v78 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent hasFailedOnce](self, "hasFailedOnce")}];
  [v3 setObject:v78 forKeyedSubscript:@"hasFailedOnce"];

  v79 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCharacteristicReadWriteLogEvent consecutiveSuccessCount](self, "consecutiveSuccessCount")}];
  [v3 setObject:v79 forKeyedSubscript:@"consecutiveSuccessCount"];

  v80 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCharacteristicReadWriteLogEvent consecutiveFailureCount](self, "consecutiveFailureCount")}];
  [v3 setObject:v80 forKeyedSubscript:@"consecutiveFailureCount"];

  v81 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDCharacteristicReadWriteLogEvent lastSuccessLinkLayerType](self, "lastSuccessLinkLayerType")}];
  [v3 setObject:v81 forKeyedSubscript:@"lastSuccessLinkLayerType"];

  v82 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDCharacteristicReadWriteLogEvent lastFailedLinkLayerType](self, "lastFailedLinkLayerType")}];
  [v3 setObject:v82 forKeyedSubscript:@"lastFailedLinkLayerType"];

  v83 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isSSIDSameAsLastSuccessRequest](self, "isSSIDSameAsLastSuccessRequest")}];
  [v3 setObject:v83 forKeyedSubscript:@"isSSIDSameAsLastSuccessRequest"];

  v84 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isBSSIDSameAsLastSuccessRequest](self, "isBSSIDSameAsLastSuccessRequest")}];
  [v3 setObject:v84 forKeyedSubscript:@"isBSSIDSameAsLastSuccessRequest"];

  v85 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isPrimaryResidentAvailable](self, "isPrimaryResidentAvailable")}];
  [v3 setObject:v85 forKeyedSubscript:@"isPrimaryResidentAvailable"];

  if ([(HMDCharacteristicReadWriteLogEvent *)self isCurrentDevicePrimaryResident])
  {
    v86 = MEMORY[0x277CCABB0];
    [(HMDCharacteristicReadWriteLogEvent *)self timeIntervalSinceCurrentDeviceAsPrimary];
    v88 = [v86 numberWithInteger:v87];
    [v3 setObject:v88 forKeyedSubscript:@"currentDeviceAsPrimaryDurationSeconds"];

    if (isHomePod())
    {
      v89 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCharacteristicReadWriteLogEvent mediaSystemConfiguration](self, "mediaSystemConfiguration")}];
      [v3 setObject:v89 forKeyedSubscript:@"mediaSystemConfiguration"];
    }
  }

  if ([(HMDCharacteristicReadWriteLogEvent *)self hasEnabledResidents])
  {
    v90 = MEMORY[0x277CCABB0];
    [(HMDCharacteristicReadWriteLogEvent *)self timeIntervalSincePrimaryChanged];
    v92 = [v90 numberWithInteger:v91];
    [v3 setObject:v92 forKeyedSubscript:@"durationSecondsSincePrimaryChanged"];

    v93 = MEMORY[0x277CCABB0];
    [(HMDCharacteristicReadWriteLogEvent *)self timeIntervalSincePrimaryLost];
    v95 = [v93 numberWithInteger:v94];
    [v3 setObject:v95 forKeyedSubscript:@"durationSecondsSincePrimaryLost"];

    v96 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCharacteristicReadWriteLogEvent percentageOfLocalReachableResidents](self, "percentageOfLocalReachableResidents")}];
    [v3 setObject:v96 forKeyedSubscript:@"percentageOfLocalReachableResidents"];

    v97 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCharacteristicReadWriteLogEvent percentageOfIDSReachableResidents](self, "percentageOfIDSReachableResidents")}];
    [v3 setObject:v97 forKeyedSubscript:@"percentageOfIDSReachableResidents"];
  }

  v98 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCharacteristicReadWriteLogEvent wifiConnectionState](self, "wifiConnectionState")}];
  [v3 setObject:v98 forKeyedSubscript:@"wifiConnectionState"];

  v99 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDCharacteristicReadWriteLogEvent bluetoothState](self, "bluetoothState")}];
  [v3 setObject:v99 forKeyedSubscript:@"bluetoothState"];

  v100 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCharacteristicReadWriteLogEvent ethernetConnectionState](self, "ethernetConnectionState")}];
  [v3 setObject:v100 forKeyedSubscript:@"ethernetConnectionState"];

  v101 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDCharacteristicReadWriteLogEvent cellularDataConnectionState](self, "cellularDataConnectionState")}];
  [v3 setObject:v101 forKeyedSubscript:@"cellularDataConnectionState"];

  v102 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isConnectedToInternet](self, "isConnectedToInternet")}];
  [v3 setObject:v102 forKeyedSubscript:@"isConnectedToInternet"];

  v103 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isCurrentNetworkSignatureSameAsLastSuccess](self, "isCurrentNetworkSignatureSameAsLastSuccess")}];
  [v3 setObject:v103 forKeyedSubscript:@"isCurrentNetworkSignatureSameAsLastSuccess"];

  v104 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isCurrentNetworkSignatureSameAsLastFailure](self, "isCurrentNetworkSignatureSameAsLastFailure")}];
  [v3 setObject:v104 forKeyedSubscript:@"isCurrentNetworkSignatureSameAsLastFailure"];

  v105 = [(HMDCharacteristicReadWriteLogEvent *)self wifiAccessPointOUI];
  [v3 setObject:v105 forKeyedSubscript:@"wifiAccessPointOUI"];

  if ([(HMDCharacteristicReadWriteLogEvent *)self isIPAccessoryServer])
  {
    v106 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isSeenOnBonjour](self, "isSeenOnBonjour")}];
    [v3 setObject:v106 forKeyedSubscript:@"isSeenOnBonjour"];

    v107 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent ipHasCachedIP](self, "ipHasCachedIP")}];
    [v3 setObject:v107 forKeyedSubscript:@"IPHasCachedIP"];

    v108 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent ipHasSelfAssignedIP](self, "ipHasSelfAssignedIP")}];
    [v3 setObject:v108 forKeyedSubscript:@"IPHasSelfAssignedIP"];

    v109 = [(HMDCharacteristicReadWriteLogEvent *)self ipSocketIPType];
    [v3 setObject:v109 forKeyedSubscript:@"IPSocketIPType"];

    v110 = [(HMDCharacteristicReadWriteLogEvent *)self ipSocketUpdateType];
    [v3 setObject:v110 forKeyedSubscript:@"IPSocketUpdateType"];

    v111 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent ipTriedConnectingToIPv4Address](self, "ipTriedConnectingToIPv4Address")}];
    [v3 setObject:v111 forKeyedSubscript:@"IPTriedConnectingOverIPv4"];

    v112 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent ipTriedConnectingToIPv6Address](self, "ipTriedConnectingToIPv6Address")}];
    [v3 setObject:v112 forKeyedSubscript:@"IPTriedConnectingOverIPv6"];
  }

  if ([(HMDCharacteristicReadWriteLogEvent *)self isCurrentDeviceAvailableResident])
  {
    v113 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent isThreadNetworkUpInHome](self, "isThreadNetworkUpInHome")}];
    [v3 setObject:v113 forKeyedSubscript:@"isThreadNetworkUpInHome"];

    v114 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDCharacteristicReadWriteLogEvent threadPreferredNetworkExistsInHome](self, "threadPreferredNetworkExistsInHome")}];
    [v3 setObject:v114 forKeyedSubscript:@"threadPreferredNetworkExistsInHome"];
  }

  v115 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDCharacteristicReadWriteLogEvent threadNetworkConnectionState](self, "threadNetworkConnectionState")}];
  [v3 setObject:v115 forKeyedSubscript:@"threadNetworkConnectionState"];

  v116 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDCharacteristicReadWriteLogEvent threadNetworkNodeType](self, "threadNetworkNodeType")}];
  [v3 setObject:v116 forKeyedSubscript:@"threadNetworkNodeType"];

  v117 = [(HMDCharacteristicReadWriteLogEvent *)self coreHAPRetryStatus];

  if (v117)
  {
    v118 = [(HMDCharacteristicReadWriteLogEvent *)self coreHAPRetryStatus];
    [v3 setObject:v118 forKeyedSubscript:@"coreHAPRetryStatus"];

    v119 = MEMORY[0x277CCABB0];
    [(HMDCharacteristicReadWriteLogEvent *)self coreHAPRetryTimeAllotted];
    v120 = [v119 numberWithDouble:?];
    [v3 setObject:v120 forKeyedSubscript:@"coreHAPRetryTimeAllotted"];

    v121 = MEMORY[0x277CCABB0];
    v122 = [(HMDCharacteristicReadWriteLogEvent *)self coreHAPRetryError];
    v123 = [v121 numberWithInteger:{objc_msgSend(v122, "code")}];
    [v3 setObject:v123 forKeyedSubscript:@"coreHAPRetryErrorCode"];

    v124 = [(HMDCharacteristicReadWriteLogEvent *)self coreHAPRetryError];
    v125 = [v124 domain];
    [v3 setObject:v125 forKeyedSubscript:@"coreHAPRetryErrorDomain"];
  }

  v126 = [v3 copy];

  return v126;
}

- (void)_setBtLoad
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = +[HMDWirelessLoadManager sharedInstance];
  v4 = [v3 getBtLoadData];
  v5 = [v4 objectForKeyedSubscript:@"kBtLoadKey"];
  self->_btLoad = [v5 intValue];

  v6 = [v4 objectForKeyedSubscript:@"kBtAudioTask"];
  self->_btAudioTask = [v6 intValue];

  v7 = [v4 objectForKeyedSubscript:@"kBtNonAudioTask"];
  self->_btNonAudioTask = [v7 intValue];

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138544130;
    v14 = v11;
    v15 = 1024;
    v16 = [(HMDCharacteristicReadWriteLogEvent *)v9 btLoad];
    v17 = 1024;
    v18 = [(HMDCharacteristicReadWriteLogEvent *)v9 btAudioTask];
    v19 = 1024;
    v20 = [(HMDCharacteristicReadWriteLogEvent *)v9 btNonAudioTask];
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@RW BT Load: %d AudioTsk: %d NonAudioTsk: %d", &v13, 0x1Eu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)prepareForObservation
{
  v68 = *MEMORY[0x277D85DE8];
  v31.receiver = self;
  v31.super_class = HMDCharacteristicReadWriteLogEvent;
  [(HMMLogEvent *)&v31 prepareForObservation];
  v3 = [(HMDCharacteristicReadWriteLogEvent *)self readWriteLogEventManager];
  [v3 _updateNetworkStatisticsForLogEvent:self];

  if ([(HMDCharacteristicReadWriteLogEvent *)self isCached]|| ![(HMDCharacteristicReadWriteLogEvent *)self isLocal])
  {
    [(HMDCharacteristicReadWriteLogEvent *)self setIsSentOverThread:0];
  }

  [(HMDCharacteristicReadWriteLogEvent *)self _updateResidentFirstErrorWithHomeHubError];
  v4 = objc_autoreleasePoolPush();
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v30 = HMFGetLogIdentifier();
    if ([(HMDCharacteristicReadWriteLogEvent *)self isWriteOperation])
    {
      v6 = @"Writing";
    }

    else
    {
      v6 = @"Reading";
    }

    v29 = [(HMDCharacteristicReadWriteLogEvent *)self characteristicsInRequest];
    v7 = [v29 count];
    v28 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryUUID];
    v27 = [(HMDCharacteristicReadWriteLogEvent *)self accessoryManufacturer];
    v26 = [(HMMLogEvent *)self error];
    v25 = [(HMDCharacteristicReadWriteLogEvent *)self residentFirstError];
    v23 = [(HMMLogEvent *)self durationMilliseconds];
    v22 = [(HMDCharacteristicReadWriteLogEvent *)self localDurationInMilliseconds];
    v21 = [(HMDCharacteristicReadWriteLogEvent *)self residentFirstDurationInMilliseconds];
    log = v5;
    if ([(HMDCharacteristicReadWriteLogEvent *)self isLocal])
    {
      [(HMDCharacteristicReadWriteLogEvent *)self linkType];
      v8 = HAPLinkTypeDescription();
    }

    else
    {
      v9 = [(HMDCharacteristicReadWriteLogEvent *)self transportType];
      if (v9 > 7)
      {
        v10 = 0;
      }

      else
      {
        v10 = off_2786897D0[v9];
      }

      v8 = v10;
    }

    v20 = v8;
    v19 = HMDRequestSourceAsLegacyMetricString([(HMDCharacteristicReadWriteLogEvent *)self triggerSource]);
    [(HMDCharacteristicReadWriteLogEvent *)self isReachable];
    v11 = HMFBooleanToString();
    [(HMDCharacteristicReadWriteLogEvent *)self hasSession];
    v18 = HMFBooleanToString();
    v17 = [(HMDCharacteristicReadWriteLogEvent *)self recentSessionRetries];
    v12 = [(HMDCharacteristicReadWriteLogEvent *)self topSessionFailureErrorDomain];
    v13 = [(HMDCharacteristicReadWriteLogEvent *)self topSessionFailureErrorCode];
    [(HMDCharacteristicReadWriteLogEvent *)self isHomeThreadCapable];
    v14 = HMFBooleanToString();
    *buf = 138547714;
    v33 = v30;
    v34 = 2114;
    v35 = v6;
    v36 = 2050;
    v37 = v7;
    v38 = 2114;
    v39 = v28;
    v40 = 2112;
    v41 = v27;
    v42 = 2114;
    v43 = v26;
    v44 = 2114;
    v45 = v25;
    v46 = 2048;
    v47 = v23;
    v48 = 2048;
    v49 = v22;
    v50 = 2048;
    v51 = v21;
    v52 = 2114;
    v53 = v20;
    v54 = 2114;
    v55 = v19;
    v56 = 2114;
    v57 = v11;
    v58 = 2114;
    v59 = v18;
    v60 = 2048;
    v61 = v17;
    v62 = 2112;
    v63 = v12;
    v64 = 2048;
    v65 = v13;
    v66 = 2114;
    v67 = v14;
    v15 = v14;
    v5 = log;
    _os_log_impl(&dword_229538000, log, OS_LOG_TYPE_INFO, "%{public}@[CA] HMDCharacteristicReadWriteLogEvent -- %{public}@ %{public}tu characteristic(s) on accessory %{public}@ (%@) completed with error: %{public}@ (Resident first error: %{public}@), Total duration: %ld ms (Local duration: %ld ms, Resident first duration: %ld ms) using transport: %{public}@, Request source: %{public}@, isReachable:%{public}@, hasSession: %{public}@, recentSessionRetries: %lu, topSessionFailureErrorDomain: %@, topSessionFailureErrorCode: %ld, homeThreadCapable: %{public}@", buf, 0xB6u);
  }

  objc_autoreleasePoolPop(v4);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)markEndTime
{
  v4.receiver = self;
  v4.super_class = HMDCharacteristicReadWriteLogEvent;
  [(HMMDatedHomeLogEvent *)&v4 markEndTime];
  os_unfair_lock_lock_with_options();
  v3 = [(HMDCharacteristicReadWriteLogEvent *)self readWriteLogEventManager];
  [v3 updateStatisticsForLogEvent:self];

  os_unfair_lock_unlock(&self->_lock);
  [(HMDCharacteristicReadWriteLogEvent *)self _setBtLoad];
}

- (void)setResidentFirstEndTime:(double)a3
{
  [(HMMLogEvent *)self startTime];

  [(HMDCharacteristicReadWriteLogEvent *)self setResidentFirstDurationInMilliseconds:((a3 - v5) * 1000.0)];
}

- (void)setResidentFirstError:(id)a3
{
  v14 = a3;
  objc_storeStrong(&self->_residentFirstError, a3);
  [(HMDCharacteristicReadWriteLogEvent *)self setResidentFirstUnderlyingError:0];
  if (v14 && ![(HMDCharacteristicReadWriteLogEvent *)self isCurrentDevicePrimaryResident])
  {
    v5 = [v14 copy];
    v6 = [v5 underlyingErrors];
    v7 = [v6 count];

    if (v7)
    {
      v8 = [v5 underlyingErrors];
      v9 = [v8 firstObject];

      v10 = [v9 underlyingErrors];
      v11 = [v10 count];

      if (v11)
      {
        objc_storeStrong(&self->_residentFirstError, v9);
        v12 = [v9 underlyingErrors];
        v13 = [v12 firstObject];
        [(HMDCharacteristicReadWriteLogEvent *)self setResidentFirstUnderlyingError:v13];
      }

      else
      {
        [(HMDCharacteristicReadWriteLogEvent *)self setResidentFirstUnderlyingError:v9];
      }
    }
  }
}

- (void)_updateResidentFirstErrorWithHomeHubError
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCharacteristicReadWriteLogEvent *)self residentFirstError];

  if (!v3)
  {
    if ([(HMDCharacteristicReadWriteLogEvent *)self isLocal]|| ([(HMMLogEvent *)self error], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
    {
      if ([(HMDCharacteristicReadWriteLogEvent *)self cellularDataConnectionState]== 1 && [(HMDCharacteristicReadWriteLogEvent *)self ethernetConnectionState]== 1 && ([(HMDCharacteristicReadWriteLogEvent *)self wifiConnectionState]== 1 || [(HMDCharacteristicReadWriteLogEvent *)self wifiConnectionState]== 2 || [(HMDCharacteristicReadWriteLogEvent *)self wifiConnectionState]== 5))
      {
        v5 = objc_autoreleasePoolPush();
        v6 = self;
        v7 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = HMFGetLogIdentifier();
          v22 = 138543362;
          v23 = v8;
          _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@HomeHub-ResidentFirstError: Current device has no cellular or wifi data connectivity", &v22, 0xCu);
        }

        v9 = 3605;
LABEL_32:

        objc_autoreleasePoolPop(v5);
        v20 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:v9];
        [(HMDCharacteristicReadWriteLogEvent *)self setResidentFirstError:v20];

        goto LABEL_33;
      }

      if (![(HMDCharacteristicReadWriteLogEvent *)self isNetworkAvailable])
      {
        v5 = objc_autoreleasePoolPush();
        v12 = self;
        v7 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v13 = HMFGetLogIdentifier();
          v22 = 138543362;
          v23 = v13;
          _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@HomeHub-ResidentFirstError: Current device has no network connectivity", &v22, 0xCu);
        }

        v9 = 3604;
        goto LABEL_32;
      }

      if (![(HMDCharacteristicReadWriteLogEvent *)self isRemoteAccessAllowed])
      {
        v5 = objc_autoreleasePoolPush();
        v14 = self;
        v7 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v15 = HMFGetLogIdentifier();
          v22 = 138543362;
          v23 = v15;
          _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@HomeHub-ResidentFirstError: Current user is not allowed remote access", &v22, 0xCu);
        }

        v9 = 3606;
        goto LABEL_32;
      }

      if (![(HMDCharacteristicReadWriteLogEvent *)self isResidentAvailable])
      {
        v5 = objc_autoreleasePoolPush();
        v16 = self;
        v7 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v17 = HMFGetLogIdentifier();
          v22 = 138543362;
          v23 = v17;
          _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@HomeHub-ResidentFirstError: No resident in this home", &v22, 0xCu);
        }

        v9 = 3600;
        goto LABEL_32;
      }

      if (![(HMDCharacteristicReadWriteLogEvent *)self isPrimaryResidentAvailable])
      {
        v5 = objc_autoreleasePoolPush();
        v18 = self;
        v7 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier();
          v22 = 138543362;
          v23 = v19;
          _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@HomeHub-ResidentFirstError: No primary resident in home", &v22, 0xCu);
        }

        v9 = 3601;
        goto LABEL_32;
      }

      if (![(HMDCharacteristicReadWriteLogEvent *)self isPrimaryResidentReachable])
      {
        v5 = objc_autoreleasePoolPush();
        v10 = self;
        v7 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v11 = HMFGetLogIdentifier();
          v22 = 138543362;
          v23 = v11;
          _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@HomeHub-ResidentFirstError: Primary resident is unreachable", &v22, 0xCu);
        }

        v9 = 3602;
        goto LABEL_32;
      }
    }
  }

LABEL_33:
  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isRequestForTHSensorOnAppleMediaAccessory:(id)a3 characteristicsInRequest:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 hostAccessory];

  if (v7)
  {
    v8 = [v5 hostAccessory];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v10 = 0;
    if ((isKindOfClass & 1) != 0 && v8)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v11 = v6;
      v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v24;
        v22 = v6;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [*(*(&v23 + 1) + 8 * i) service];
            v17 = [v16 type];
            if ([v17 isEqualToString:@"0000008A-0000-1000-8000-0026BB765291"])
            {

LABEL_17:
              v10 = 1;
              v6 = v22;
              goto LABEL_18;
            }

            v18 = [v16 type];
            v19 = [v18 isEqualToString:@"00000082-0000-1000-8000-0026BB765291"];

            if (v19)
            {
              goto LABEL_17;
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
          v10 = 0;
          v6 = v22;
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v10 = 0;
      }

LABEL_18:
    }
  }

  else
  {
    v10 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)updateWithTHSensorNetworkData:(id)a3 primaryNetworkData:(id)a4 accessoryServer:(id)a5
{
  v130 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v112 = a5;
  v10 = +[HMDCharacteristicReadWriteLogEventManager sharedInstance];
  v11 = [v10 networkInformationCache];
  v12 = [v11 wifiSSID];

  if (v12)
  {
    v13 = objc_alloc(MEMORY[0x277CCABB0]);
    v14 = [v10 networkInformationCache];
    v15 = [v14 wifiSSID];
    v16 = [v15 dataUsingEncoding:4];
    v17 = [v13 initWithLong:HMDTruncatedHash(v16)];
  }

  else
  {
    v17 = 0;
  }

  v18 = [v9 hashWifiSSID];
  v19 = [v18 isEqual:v17];

  if ((v19 & 1) == 0)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v23 = v107 = v17;
      v24 = [v10 networkInformationCache];
      [v24 wifiSSID];
      v110 = v10;
      v26 = v25 = v8;
      [v9 wifiSSID];
      v28 = v27 = v9;
      *buf = 138543874;
      v125 = v23;
      v126 = 2112;
      v127 = v26;
      v128 = 2112;
      v129 = v28;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Wifi information mismatch with statusKit data. Local wifi ssid: %@, statusKit wifi ssid: %@", buf, 0x20u);

      v9 = v27;
      v8 = v25;
      v10 = v110;

      v17 = v107;
    }

    objc_autoreleasePoolPop(v20);
  }

  if (v17)
  {
    v29 = [v8 objectForKeyedSubscript:@"NwWf"];

    if (v29)
    {
      v30 = MEMORY[0x277CCABB0];
      v31 = [v8 objectForKeyedSubscript:@"NwWf"];
      v32 = [v30 numberWithBool:{objc_msgSend(v17, "isEqual:", v31)}];
      [(HMDCharacteristicReadWriteLogEvent *)self setThSensorSSIDSame:v32];
    }
  }

  v33 = [v9 hashPrimaryIPv4NetworkSignature];
  if (v33)
  {
    v34 = v33;
    v35 = [v8 objectForKeyedSubscript:@"Nw4s"];

    if (v35)
    {
      v36 = MEMORY[0x277CCABB0];
      v37 = [v9 hashPrimaryIPv4NetworkSignature];
      v38 = [v8 objectForKeyedSubscript:@"Nw4s"];
      v39 = [v36 numberWithBool:{objc_msgSend(v37, "isEqual:", v38)}];
      [(HMDCharacteristicReadWriteLogEvent *)self setThSensorIPv4NetworkSignatureSame:v39];
    }
  }

  v40 = [v9 hashPrimaryIPv6NetworkSignature];
  if (v40)
  {
    v41 = v40;
    v42 = [v8 objectForKeyedSubscript:@"Nw6s"];

    if (v42)
    {
      v43 = MEMORY[0x277CCABB0];
      v44 = [v9 hashPrimaryIPv6NetworkSignature];
      v45 = [v8 objectForKeyedSubscript:@"Nw6s"];
      v46 = [v43 numberWithBool:{objc_msgSend(v44, "isEqual:", v45)}];
      [(HMDCharacteristicReadWriteLogEvent *)self setThSensorIPv6NetworkSignatureSame:v46];
    }
  }

  v47 = [v8 objectForKeyedSubscript:@"NwIn"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v48 = v47;
  }

  else
  {
    v48 = 0;
  }

  v49 = v48;

  [(HMDCharacteristicReadWriteLogEvent *)self setThSensorPrimaryInterfaceName:v49];
  v50 = [v8 objectForKeyedSubscript:@"NwIt"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v51 = v50;
  }

  else
  {
    v51 = 0;
  }

  v52 = v51;

  [(HMDCharacteristicReadWriteLogEvent *)self setThSensorPrimaryInterfaceType:v52];
  v53 = [v8 objectForKeyedSubscript:@"AssertionTimeStamp"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v54 = v53;
  }

  else
  {
    v54 = 0;
  }

  v55 = v54;

  if (v55)
  {
    v56 = MEMORY[0x277CCABB0];
    [v55 timeIntervalSinceNow];
    if (v57 >= 0)
    {
      v58 = v57;
    }

    else
    {
      v58 = -v57;
    }

    v59 = [v56 numberWithLong:v58];
    [(HMDCharacteristicReadWriteLogEvent *)self setThSensorDurationSecondsSinceLastStatusKitAssertion:v59];
  }

  v60 = v112;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v61 = v60;
  }

  else
  {
    v61 = 0;
  }

  v62 = v61;

  if (v62)
  {
    v113 = v9;
    v63 = [v62 currentSocketInfo];
    v108 = v62;
    v64 = [v62 cachedSocketInfo];
    v65 = v64;
    v109 = v8;
    if (!v63 || !v64 || ([v63 isEqual:v64] & 1) == 0)
    {
      v66 = v65;
      v67 = objc_autoreleasePoolPush();
      v68 = self;
      v69 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v70 = v101 = v67;
        [v63 shortDescription];
        v71 = v103 = v55;
        [v66 shortDescription];
        v105 = v63;
        v72 = v17;
        v74 = v73 = v10;
        *buf = 138543874;
        v125 = v70;
        v126 = 2112;
        v127 = v71;
        v128 = 2112;
        v129 = v74;
        _os_log_impl(&dword_229538000, v69, OS_LOG_TYPE_INFO, "%{public}@Unexpected, current socket: %@ does not match cached socket: %@", buf, 0x20u);

        v10 = v73;
        v17 = v72;
        v63 = v105;

        v55 = v103;
        v67 = v101;
      }

      objc_autoreleasePoolPop(v67);
      v8 = v109;
      v65 = v66;
      if (!v66)
      {
        goto LABEL_72;
      }
    }

    v111 = v10;
    v75 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v65, "ipAddressType")}];
    [(HMDCharacteristicReadWriteLogEvent *)self setThSensorCachedSourceIPType:v75];

    v76 = [v65 ipAddressString];
    v77 = [v76 componentsSeparatedByString:@"%"];
    v78 = [v77 firstObject];

    v104 = v78;
    v79 = [v78 dataUsingEncoding:4];
    v80 = HMDTruncatedHash(v79);

    v81 = [v65 ipAddressType];
    if ((v81 - 2) >= 3)
    {
      v10 = v111;
      if (v81 != 1)
      {
LABEL_71:

LABEL_72:
        v9 = v113;
        v62 = v108;
        goto LABEL_73;
      }

      v102 = v65;
      v92 = [v8 objectForKeyedSubscript:@"NwI4"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v93 = v92;
      }

      else
      {
        v93 = 0;
      }

      v94 = v93;

      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      v85 = v94;
      v95 = [v85 countByEnumeratingWithState:&v118 objects:v123 count:16];
      if (!v95)
      {
LABEL_70:

        v10 = v111;
        v65 = v102;
        goto LABEL_71;
      }

      v96 = v95;
      v106 = v63;
      v88 = v55;
      v97 = *v119;
      v98 = MEMORY[0x277CBEC28];
      while (2)
      {
        for (i = 0; i != v96; ++i)
        {
          if (*v119 != v97)
          {
            objc_enumerationMutation(v85);
          }

          if (v80 == [*(*(&v118 + 1) + 8 * i) longValue])
          {
            [(HMDCharacteristicReadWriteLogEvent *)self setThSensorIPv4AddressSameAsCachedIP:MEMORY[0x277CBEC38]];
            goto LABEL_69;
          }

          [(HMDCharacteristicReadWriteLogEvent *)self setThSensorIPv4AddressSameAsCachedIP:v98];
        }

        v96 = [v85 countByEnumeratingWithState:&v118 objects:v123 count:16];
        if (v96)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v102 = v65;
      v82 = [v8 objectForKeyedSubscript:@"NwI6"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v83 = v82;
      }

      else
      {
        v83 = 0;
      }

      v84 = v83;

      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v85 = v84;
      v86 = [v85 countByEnumeratingWithState:&v114 objects:v122 count:16];
      if (!v86)
      {
        goto LABEL_70;
      }

      v87 = v86;
      v106 = v63;
      v88 = v55;
      v89 = *v115;
      v90 = MEMORY[0x277CBEC28];
      while (2)
      {
        for (j = 0; j != v87; ++j)
        {
          if (*v115 != v89)
          {
            objc_enumerationMutation(v85);
          }

          if (v80 == [*(*(&v114 + 1) + 8 * j) longValue])
          {
            [(HMDCharacteristicReadWriteLogEvent *)self setThSensorIPv6AddressSameAsCachedIP:MEMORY[0x277CBEC38]];
            goto LABEL_69;
          }

          [(HMDCharacteristicReadWriteLogEvent *)self setThSensorIPv6AddressSameAsCachedIP:v90];
        }

        v87 = [v85 countByEnumeratingWithState:&v114 objects:v122 count:16];
        if (v87)
        {
          continue;
        }

        break;
      }
    }

LABEL_69:
    v8 = v109;
    v55 = v88;
    v63 = v106;
    goto LABEL_70;
  }

LABEL_73:

  v100 = *MEMORY[0x277D85DE8];
}

- (void)_populateTHSensorMetricsForAccessory:(id)a3 accessoryServer:(id)a4 characteristicsInRequest:(id)a5 home:(id)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a6;
  v8 = [a3 hostAccessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v26 = v7;
    v11 = [v7 residentDeviceManager];
    v12 = [v11 residentDevices];

    obj = v12;
    v13 = [v12 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v30;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v29 + 1) + 8 * i);
          v18 = [v17 device];
          v19 = [v18 idsIdentifier];
          v20 = [v10 device];
          v21 = [v20 idsIdentifier];
          v22 = [v19 hmf_isEqualToUUID:v21];

          if (v22)
          {
            v23 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v17, "isReachableByIDS")}];
            [(HMDCharacteristicReadWriteLogEvent *)self setThSensorReachableViaIDS:v23];
          }
        }

        v14 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v14);
    }

    v24 = [MEMORY[0x277CCABB0] numberWithInt:0];
    [(HMDCharacteristicReadWriteLogEvent *)self setThSensorReachable:v24];

    v7 = v26;
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (HMDCharacteristicReadWriteLogEvent)initWithStartTime:(double)a3 characteristics:(id)a4 hmdAccessory:(id)a5 hapAccessory:(id)a6 source:(unint64_t)a7 biomeSource:(unint64_t)a8 isWriteOperation:(BOOL)a9 isTimedWrite:(BOOL)a10 isLocal:(BOOL)a11 transactionId:(id)a12 isCached:(BOOL)a13 bundleId:(id)a14 userUUID:(id)a15 writtenValues:(id)a16 readWriteLogEventManager:(id)a17
{
  v17 = a9;
  v259 = *MEMORY[0x277D85DE8];
  v223 = a4;
  v23 = a5;
  v230 = a6;
  v227 = a12;
  v226 = a14;
  v225 = a15;
  v24 = a16;
  v220 = a17;
  v228 = v23;
  v25 = [v23 home];
  v26 = [v25 uuid];
  v247.receiver = self;
  v247.super_class = HMDCharacteristicReadWriteLogEvent;
  v27 = v25;
  v28 = [(HMMDatedHomeLogEvent *)&v247 initWithStartTime:v26 homeUUID:a3];

  if (!v28)
  {
    goto LABEL_90;
  }

  v219 = v24;
  objc_storeStrong(&v28->_readWriteLogEventManager, a17);
  readWriteLogEventManager = v28->_readWriteLogEventManager;
  v222 = v25;
  v30 = [v25 wifiManager];
  [(HMDCharacteristicReadWriteLogEventManager *)readWriteLogEventManager _setupNetworkCacheWithWifiManager:v30];

  v31 = [MEMORY[0x277D0F770] currentClientMetricIdentifier];
  clientMetricIdentifier = v28->_clientMetricIdentifier;
  v28->_clientMetricIdentifier = v31;

  v33 = objc_autoreleasePoolPush();
  v34 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    v35 = HMFGetLogIdentifier();
    v36 = v35;
    v37 = @"Reading";
    if (v17)
    {
      v37 = @"Writing";
    }

    *buf = 138543618;
    *&buf[4] = v35;
    *&buf[12] = 2112;
    *&buf[14] = v37;
    _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@[HMDCharacteristicReadWriteLogEvent] %@...", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v33);
  v38 = v23;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v39 = v38;
  }

  else
  {
    v39 = 0;
  }

  v40 = v39;
  v229 = v38;

  v218 = [v230 server];
  if (v40)
  {
    v28->_accessoryCertificationStatus = [v40 certificationStatus];
    v28->_communicationProtocol = [v40 communicationProtocol];
    v41 = [v40 expectedTransport];
    expectedTransport = v28->_expectedTransport;
    v28->_expectedTransport = v41;
  }

  v43 = [v38 uuid];
  accessoryUUID = v28->_accessoryUUID;
  v28->_accessoryUUID = v43;

  v45 = [v38 identifier];
  accessoryIdentifier = v28->_accessoryIdentifier;
  v28->_accessoryIdentifier = v45;

  v47 = [v38 spiClientIdentifier];
  accessoryUniqueIdentifier = v28->_accessoryUniqueIdentifier;
  v28->_accessoryUniqueIdentifier = v47;

  v49 = [v38 name];
  accessoryName = v28->_accessoryName;
  v28->_accessoryName = v49;

  v51 = [v38 category];
  v52 = [v51 categoryType];
  accessoryCategory = v28->_accessoryCategory;
  v28->_accessoryCategory = v52;

  v54 = [v38 manufacturer];
  accessoryManufacturer = v28->_accessoryManufacturer;
  v28->_accessoryManufacturer = v54;

  v56 = [v38 room];
  v57 = [v56 spiClientIdentifier];
  accessoryRoomUniqueIdentifier = v28->_accessoryRoomUniqueIdentifier;
  v28->_accessoryRoomUniqueIdentifier = v57;

  v221 = v56;
  v59 = [v56 name];
  v60 = [v59 copy];
  accessoryRoomName = v28->_accessoryRoomName;
  v28->_accessoryRoomName = v60;

  v62 = [v40 accessoryMetric];
  v63 = [v62 sessionMetric];

  v28->_hasSession = [v38 hasActiveSession];
  v28->_reachable = [v38 isReachable];
  v64 = [v63 successfulSessionRetries];
  v28->_recentSessionRetries = [v63 sessionFailures] + v64;
  v65 = [v63 topError];
  v28->_topSessionFailureErrorCode = [v65 code];

  v217 = v63;
  v66 = [v63 topError];
  v67 = [v66 domain];
  topSessionFailureErrorDomain = v28->_topSessionFailureErrorDomain;
  v28->_topSessionFailureErrorDomain = v67;

  v27 = v222;
  v69 = [v222 threadNetworkID];
  v28->_homeThreadCapable = v69 != 0;

  v28->_lastKnownLinkQuality = 5;
  objc_storeStrong(&v28->_characteristicsInRequest, a4);
  v28->_triggerSource = a7;
  v28->_biomeSource = a8;
  v28->_isWriteOperation = v17;
  v28->_isTimedWrite = a10;
  v28->_isLocal = a11;
  v70 = [v227 UUIDString];
  transactionIdentifier = v28->_transactionIdentifier;
  v28->_transactionIdentifier = v70;

  v28->_isCached = a13;
  v28->_linkType = [v230 linkType];
  v28->_linkLayerType = [v230 linkLayerType];
  v72 = [v218 version];
  v73 = [v72 versionString];
  transportProtocolVersion = v28->_transportProtocolVersion;
  v28->_transportProtocolVersion = v73;

  v224 = v40;
  v75 = [HMDMetricsUtilities primaryServiceTypeForHAPAccessory:v40];
  primaryServiceType = v28->_primaryServiceType;
  v28->_primaryServiceType = v75;

  if (v225)
  {
    v77 = [v225 UUIDString];
    userUUID = v28->_userUUID;
    v28->_userUUID = v77;
  }

  else
  {
    userUUID = [v222 currentUser];
    v79 = [userUUID uuid];
    v80 = [v79 UUIDString];
    v81 = v28->_userUUID;
    v28->_userUUID = v80;
  }

  v82 = [v222 spiClientIdentifier];
  v83 = [v82 copy];
  homeUniqueIdentifier = v28->_homeUniqueIdentifier;
  v28->_homeUniqueIdentifier = v83;

  v85 = [v222 name];
  v86 = [v85 copy];
  homeName = v28->_homeName;
  v28->_homeName = v86;

  v88 = [v222 atHomeLevel];
  v89 = 1;
  if (v88 != 2)
  {
    v89 = [v222 atHomeLevel] == 3;
  }

  v28->_isAtHome = v89;
  v90 = [v222 residentDeviceManager];
  v28->_isResidentAvailable = [v90 isResidentAvailable];

  v91 = [v222 residentDeviceManager];
  v28->_isCurrentDeviceAvailableResident = [v91 isCurrentDeviceAvailableResident];

  v92 = [v222 residentDeviceManager];
  v28->_isCurrentDevicePrimaryResident = [v92 isCurrentDevicePrimaryResident];

  v93 = [v222 residentDeviceManager];
  v28->_isCurrentDeviceConfirmedPrimaryResident = [v93 isCurrentDeviceConfirmedPrimaryResident];

  v94 = [v222 residentDeviceManager];
  v95 = [v94 primaryResidentDevice];
  v28->_isPrimaryResidentReachable = [v95 isReachable];

  v96 = [v222 currentUser];
  v28->_isRemoteAccessAllowed = [v96 isRemoteAccessAllowed];

  v28->_isRemotelyReachable = [v229 isRemotelyReachable];
  v97 = [v222 enabledResidents];
  v28->_hasEnabledResidents = [v97 count] != 0;

  v28->_isResidentFirstEnabled = 1;
  v28->_isDeviceAtHome = [v222 homeLocation] == 1;
  v98 = [HMDMetricsUtilities redactedThirdPartyBundleID:v226];
  bundleId = v28->_bundleId;
  v28->_bundleId = v98;

  v233 = v28;
  if (v222)
  {
    v100 = [(HMDCharacteristicReadWriteLogEvent *)v28 characteristicsInRequest];
    obja = v222;
    v101 = [MEMORY[0x277CBEB38] dictionary];
    v250 = 0u;
    v251 = 0u;
    v252 = 0u;
    v253 = 0u;
    v102 = v100;
    v103 = [v102 countByEnumeratingWithState:&v250 objects:buf count:16];
    if (v103)
    {
      v104 = v103;
      v105 = *v251;
      do
      {
        for (i = 0; i != v104; ++i)
        {
          if (*v251 != v105)
          {
            objc_enumerationMutation(v102);
          }

          v107 = [*(*(&v250 + 1) + 8 * i) service];
          v108 = v107;
          if (v107)
          {
            v109 = [v107 uuid];
            v110 = [v101 objectForKeyedSubscript:v109];

            if (!v110)
            {
              v111 = [obja serviceGroups];
              v248[0] = MEMORY[0x277D85DD0];
              v248[1] = 3221225472;
              v248[2] = __90__HMDCharacteristicReadWriteLogEvent_serviceUUIDToServiceGroupsForCharacteristics_inHome___block_invoke;
              v248[3] = &unk_2786808D0;
              v112 = v108;
              v249 = v112;
              v113 = [v111 na_firstObjectPassingTest:v248];

              if (v113)
              {
                v114 = [v112 uuid];
                [v101 setObject:v113 forKeyedSubscript:v114];
              }
            }
          }
        }

        v104 = [v102 countByEnumeratingWithState:&v250 objects:buf count:16];
      }

      while (v104);
    }

    v115 = [v101 copy];
    v24 = v219;
    v27 = v222;
  }

  else
  {
    v115 = MEMORY[0x277CBEC10];
  }

  v116 = [v115 na_dictionaryByMappingValues:&__block_literal_global_477_212800];
  v216 = [v115 na_dictionaryByMappingValues:&__block_literal_global_480_212801];
  v117 = [v216 copy];
  serviceUUIDToServiceGroupName = v28->_serviceUUIDToServiceGroupName;
  v28->_serviceUUIDToServiceGroupName = v117;

  v119 = [v116 copy];
  serviceUUIDToServiceGroupUniqueIdentifier = v28->_serviceUUIDToServiceGroupUniqueIdentifier;
  v28->_serviceUUIDToServiceGroupUniqueIdentifier = v119;

  v121 = MEMORY[0x277CBEBF8];
  if (v27 && v221)
  {
    v122 = [v221 uuid];
    v123 = [v27 zones];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __62__HMDCharacteristicReadWriteLogEvent_zonesForRoomUUID_inHome___block_invoke;
    v257 = &unk_2786808A8;
    v124 = v122;
    v258 = v124;
    v121 = [v123 na_filter:buf];
  }

  v125 = [v121 na_map:&__block_literal_global_483_212802];
  accessoryZoneUniqueIdentifiers = v28->_accessoryZoneUniqueIdentifiers;
  v28->_accessoryZoneUniqueIdentifiers = v125;

  v215 = v121;
  v127 = [v121 na_map:&__block_literal_global_485];
  accessoryZoneNames = v28->_accessoryZoneNames;
  v28->_accessoryZoneNames = v127;

  v129 = [v27 accessories];
  v28->_numAccessoriesInHome = [v129 count];

  v214 = [v27 actionSets];
  v130 = [v214 na_filter:&__block_literal_global_488];
  v28->_numNonEmptyScenesInHome = [v130 count];

  v131 = [v229 accessoryProfiles];
  v132 = [v131 na_firstObjectPassingTest:&__block_literal_global_491_212803];

  v213 = v132;
  v133 = [v132 mediaRouteID];
  accessoryMediaRouteID = v28->_accessoryMediaRouteID;
  v28->_accessoryMediaRouteID = v133;

  v135 = [v24 copy];
  writtenValues = v28->_writtenValues;
  v28->_writtenValues = v135;

  v137 = [v224 findServiceWithServiceType:@"00000701-0000-1000-8000-0026BB765291"];

  if (v137)
  {
    v28->_threadAccessory = 1;
  }

  v138 = [v224 findCharacteristicType:@"00000702-0000-1000-8000-0026BB765291" forServiceType:@"00000701-0000-1000-8000-0026BB765291"];
  v139 = [v138 value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v141 = [v138 value];
  }

  else
  {
    v141 = 0;
  }

  objc_storeStrong(&v28->_hapAccessoryThreadCapabilities, v141);
  if (isKindOfClass)
  {
  }

  v212 = v138;

  v142 = [v230 server];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && v142)
  {
    v28->_isSentOverThread = 1;
  }

  v143 = v142;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v144 = v143;
  }

  else
  {
    v144 = 0;
  }

  v145 = v144;

  if (v145)
  {
    v28->_isIPAccessoryServer = 1;
    v28->_isSeenOnBonjour = [v145 isSeenOnBonjour];
    v146 = [v145 cachedSocketInfo];
    v28->_ipHasCachedIP = v146 != 0;

    v28->_ipHasSelfAssignedIP = 0;
    v28->_ipTriedConnectingToIPv4Address = 0;
    v28->_ipTriedConnectingToIPv6Address = 0;
  }

  v210 = v145;
  v209 = [v27 homeManager];
  v147 = [v209 reachabilityMonitor];
  v28->_isNetworkAvailable = [v147 isReachable];

  v28->_isLocalFallback = 0;
  v28->_isLinkFallback = 0;
  v148 = [v27 residentDeviceManager];
  v149 = [v148 confirmedPrimaryResidentDevice];
  v28->_isPrimaryResidentAvailable = v149 != 0;

  v28->_timeIntervalSinceCurrentDeviceAsPrimary = 0.0;
  [v27 currentDeviceBecamePrimaryTime];
  if (v150 >= 1)
  {
    HMFUptime();
    v152 = v151;
    [v27 currentDeviceBecamePrimaryTime];
    v28->_timeIntervalSinceCurrentDeviceAsPrimary = v152 - v153;
  }

  v211 = v143;
  coreHAPRetryStatus = v28->_coreHAPRetryStatus;
  v28->_coreHAPRetryStatus = 0;

  coreHAPRetryError = v28->_coreHAPRetryError;
  v28->_coreHAPRetryError = 0;

  v28->_coreHAPRetryTimeAllotted = 0.0;
  v28->_timeIntervalSincePrimaryChanged = 0.0;
  [v27 primaryResidentChangedTime];
  if (v156 >= 1)
  {
    HMFUptime();
    v158 = v157;
    [v27 primaryResidentChangedTime];
    v28->_timeIntervalSincePrimaryChanged = v158 - v159;
  }

  v28->_timeIntervalSincePrimaryLost = 0.0;
  v160 = [v27 reachabilityNotificationManager];
  [v160 primaryResidentUnreachableTime];
  v162 = v161;

  if (v162 >= 1)
  {
    HMFUptime();
    v164 = v163;
    v165 = [v27 reachabilityNotificationManager];
    [v165 primaryResidentUnreachableTime];
    v28->_timeIntervalSincePrimaryLost = v164 - v166;
  }

  v167 = [v27 residentDeviceManager];
  v168 = [v167 residentDevices];
  v169 = [v168 count];

  if (v169)
  {
    v207 = v116;
    v170 = [v27 residentDeviceManager];
    v171 = [v170 residentDevices];
    v172 = [v171 count];

    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v173 = [v27 residentDeviceManager];
    v174 = [v173 residentDevices];

    v175 = [v174 countByEnumeratingWithState:&v243 objects:v255 count:16];
    if (v175)
    {
      v176 = v175;
      v177 = v115;
      v178 = 0;
      v179 = 0;
      v180 = *v244;
      do
      {
        for (j = 0; j != v176; ++j)
        {
          if (*v244 != v180)
          {
            objc_enumerationMutation(v174);
          }

          v182 = *(*(&v243 + 1) + 8 * j);
          if ([v182 isEnabled])
          {
            v178 += [v182 isReachable];
            v179 += [v182 isReachableByIDS];
          }
        }

        v176 = [v174 countByEnumeratingWithState:&v243 objects:v255 count:16];
      }

      while (v176);
      v183 = 100 * v178;
      v184 = 100 * v179;
      v115 = v177;
      v24 = v219;
    }

    else
    {
      v183 = 0;
      v184 = 0;
    }

    v28->_percentageOfLocalReachableResidents = v183 / v172;
    v28->_percentageOfIDSReachableResidents = v184 / v172;
    v27 = v222;
    v116 = v207;
  }

  v28->_isThreadNetworkUpInHome = [v27 threadNetworkIsUp];
  v28->_threadPreferredNetworkExistsInHome = [v27 threadPreferredNetworkExists];
  v28->_threadNetworkConnectionState = [v27 threadNetworkConnectionState];
  v28->_threadNetworkNodeType = [v27 threadNetworkNodeType];
  if (!v28->_isCurrentDevicePrimaryResident || !isHomePod())
  {
    goto LABEL_86;
  }

  v206 = v115;
  v185 = [v27 residentDeviceManager];
  v186 = [v185 primaryResidentDevice];

  v187 = [v27 appleMediaAccessories];
  v241[0] = MEMORY[0x277D85DD0];
  v241[1] = 3221225472;
  v241[2] = __235__HMDCharacteristicReadWriteLogEvent_initWithStartTime_characteristics_hmdAccessory_hapAccessory_source_biomeSource_isWriteOperation_isTimedWrite_isLocal_transactionId_isCached_bundleId_userUUID_writtenValues_readWriteLogEventManager___block_invoke_7;
  v241[3] = &unk_278688F28;
  v188 = v186;
  v242 = v188;
  v205 = v187;
  v189 = [v187 na_firstObjectPassingTest:v241];
  if (!v189)
  {
    goto LABEL_85;
  }

  v204 = v188;
  v208 = v116;
  v231 = [v27 mediaSystemForAppleMediaAccessory:v189];
  v237 = 0u;
  v238 = 0u;
  v239 = 0u;
  v240 = 0u;
  objb = [v27 appleMediaAccessories];
  v190 = [objb countByEnumeratingWithState:&v237 objects:v254 count:16];
  if (!v190)
  {
    goto LABEL_82;
  }

  v191 = v190;
  v192 = *v238;
  do
  {
    for (k = 0; k != v191; ++k)
    {
      if (*v238 != v192)
      {
        objc_enumerationMutation(objb);
      }

      v194 = [*(*(&v237 + 1) + 8 * k) audioDestinationControllerData];
      v195 = [v194 destinationIdentifier];
      v196 = [v195 UUIDString];

      v197 = [v189 audioDestination];
      v198 = [v197 identifier];
      if ([v196 isEqualToString:v198])
      {
      }

      else
      {
        v199 = [v231 audioDestination];
        v200 = [v199 identifier];
        v201 = [v196 isEqualToString:v200];

        v28 = v233;
        if (!v201)
        {
          goto LABEL_80;
        }
      }

      v28->_mediaSystemConfiguration |= 2uLL;
LABEL_80:
    }

    v191 = [objb countByEnumeratingWithState:&v237 objects:v254 count:16];
  }

  while (v191);
LABEL_82:

  if (v231)
  {
    v28->_mediaSystemConfiguration |= 4uLL;
  }

  v24 = v219;
  v27 = v222;
  v116 = v208;
  v188 = v204;
LABEL_85:

  v115 = v206;
LABEL_86:
  if (v28->_isCurrentDevicePrimaryResident && [(HMDCharacteristicReadWriteLogEvent *)v28 _isRequestForTHSensorOnAppleMediaAccessory:v229 characteristicsInRequest:v223])
  {
    [(HMDCharacteristicReadWriteLogEvent *)v28 _populateTHSensorMetricsForAccessory:v229 accessoryServer:v211 characteristicsInRequest:v223 home:v27];
    [(HMDCharacteristicReadWriteLogEvent *)v28 setIsTHSensorRequest:1];
  }

LABEL_90:
  v202 = *MEMORY[0x277D85DE8];
  return v28;
}

uint64_t __235__HMDCharacteristicReadWriteLogEvent_initWithStartTime_characteristics_hmdAccessory_hapAccessory_source_biomeSource_isWriteOperation_isTimedWrite_isLocal_transactionId_isCached_bundleId_userUUID_writtenValues_readWriteLogEventManager___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = [a2 idsIdentifier];
  v4 = [*(a1 + 32) device];
  v5 = [v4 deviceAddress];
  v6 = [v5 idsIdentifier];
  v7 = [v3 hmf_isEqualToUUID:v6];

  return v7;
}

uint64_t __235__HMDCharacteristicReadWriteLogEvent_initWithStartTime_characteristics_hmdAccessory_hapAccessory_source_biomeSource_isWriteOperation_isTimedWrite_isLocal_transactionId_isCached_bundleId_userUUID_writtenValues_readWriteLogEventManager___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & (v2 != 0);
}

BOOL __235__HMDCharacteristicReadWriteLogEvent_initWithStartTime_characteristics_hmdAccessory_hapAccessory_source_biomeSource_isWriteOperation_isTimedWrite_isLocal_transactionId_isCached_bundleId_userUUID_writtenValues_readWriteLogEventManager___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 actions];
  v3 = [v2 count] != 0;

  return v3;
}

id __235__HMDCharacteristicReadWriteLogEvent_initWithStartTime_characteristics_hmdAccessory_hapAccessory_source_biomeSource_isWriteOperation_isTimedWrite_isLocal_transactionId_isCached_bundleId_userUUID_writtenValues_readWriteLogEventManager___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 spiClientIdentifier];
  v3 = [v2 UUIDString];

  return v3;
}

uint64_t __62__HMDCharacteristicReadWriteLogEvent_zonesForRoomUUID_inHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 roomUUIDs];
  v4 = [*(a1 + 32) UUIDString];
  v5 = [v3 containsObject:v4];

  return v5;
}

uint64_t __90__HMDCharacteristicReadWriteLogEvent_serviceUUIDToServiceGroupsForCharacteristics_inHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 serviceUUIDs];
  v4 = [*(a1 + 32) uuid];
  v5 = [v4 UUIDString];
  v6 = [v3 containsObject:v5];

  return v6;
}

- (HMDCharacteristicReadWriteLogEvent)initWithStartTime:(double)a3 characteristics:(id)a4 hmdAccessory:(id)a5 hapAccessory:(id)a6 source:(unint64_t)a7 isWriteOperation:(BOOL)a8 isTimedWrite:(BOOL)a9 isLocal:(BOOL)a10 transactionId:(id)a11 isCached:(BOOL)a12 bundleId:(id)a13 userUUID:(id)a14 writtenValues:(id)a15
{
  v34 = a8;
  v19 = a15;
  v20 = a14;
  v21 = a13;
  v22 = a11;
  v23 = a6;
  v24 = a5;
  v25 = a4;
  v26 = +[HMDCharacteristicReadWriteLogEventManager sharedInstance];
  LOBYTE(v30) = a12;
  BYTE1(v29) = a10;
  LOBYTE(v29) = a9;
  v27 = [(HMDCharacteristicReadWriteLogEvent *)self initWithStartTime:v25 characteristics:v24 hmdAccessory:v23 hapAccessory:a7 source:0 biomeSource:v34 isWriteOperation:a3 isTimedWrite:v29 isLocal:v22 transactionId:v30 isCached:v21 bundleId:v20 userUUID:v19 writtenValues:v26 readWriteLogEventManager:?];

  return v27;
}

- (HMDCharacteristicReadWriteLogEvent)initWithCharacteristics:(id)a3 hmdAccessory:(id)a4 hapAccessory:(id)a5 source:(unint64_t)a6 biomeSource:(unint64_t)a7 isWriteOperation:(BOOL)a8 isTimedWrite:(BOOL)a9 isLocal:(BOOL)a10 transactionId:(id)a11 isCached:(BOOL)a12 bundleId:(id)a13 userUUID:(id)a14 writtenValues:(id)a15
{
  v36 = a8;
  v18 = MEMORY[0x277D17DC0];
  v19 = a15;
  v20 = a14;
  v21 = a13;
  v22 = a11;
  v23 = a5;
  v24 = a4;
  v25 = a3;
  [v18 currentTime];
  v27 = v26;
  v28 = +[HMDCharacteristicReadWriteLogEventManager sharedInstance];
  LOBYTE(v32) = a12;
  LOWORD(v31) = __PAIR16__(a10, a9);
  v29 = [(HMDCharacteristicReadWriteLogEvent *)self initWithStartTime:v25 characteristics:v24 hmdAccessory:v23 hapAccessory:a6 source:a7 biomeSource:v36 isWriteOperation:v27 isTimedWrite:v31 isLocal:v22 transactionId:v32 isCached:v21 bundleId:v20 userUUID:v19 writtenValues:v28 readWriteLogEventManager:?];

  return v29;
}

- (HMDCharacteristicReadWriteLogEvent)initWithCharacteristics:(id)a3 hmdAccessory:(id)a4 hapAccessory:(id)a5 source:(unint64_t)a6 isWriteOperation:(BOOL)a7 isTimedWrite:(BOOL)a8 isLocal:(BOOL)a9 transactionId:(id)a10 isCached:(BOOL)a11 bundleId:(id)a12 userUUID:(id)a13 writtenValues:(id)a14
{
  v35 = a7;
  v17 = MEMORY[0x277D17DC0];
  v18 = a14;
  v19 = a13;
  v20 = a12;
  v21 = a10;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  [v17 currentTime];
  v26 = v25;
  v27 = +[HMDCharacteristicReadWriteLogEventManager sharedInstance];
  LOBYTE(v31) = a11;
  BYTE1(v30) = a9;
  LOBYTE(v30) = a8;
  v28 = [(HMDCharacteristicReadWriteLogEvent *)self initWithStartTime:v24 characteristics:v23 hmdAccessory:v22 hapAccessory:a6 source:0 biomeSource:v35 isWriteOperation:v26 isTimedWrite:v30 isLocal:v21 transactionId:v31 isCached:v20 bundleId:v19 userUUID:v18 writtenValues:v27 readWriteLogEventManager:?];

  return v28;
}

+ (id)eventWithStartTime:(double)a3 characteristicsToWrite:(id)a4 hmdAccessory:(id)a5 hapAccessory:(id)a6 source:(unint64_t)a7 isTimedWrite:(BOOL)a8 isLocal:(BOOL)a9 transactionId:(id)a10 bundleId:(id)a11 userUUID:(id)a12 writtenValues:(id)a13
{
  v30 = a8;
  v19 = a13;
  v20 = a12;
  v21 = a11;
  v22 = a10;
  v23 = a6;
  v24 = a5;
  v25 = a4;
  LOBYTE(v29) = 0;
  LOBYTE(v28) = a9;
  v26 = [[HMDCharacteristicReadWriteLogEvent alloc] initWithStartTime:v25 characteristics:v24 hmdAccessory:v23 hapAccessory:a7 source:1 isWriteOperation:v30 isTimedWrite:a3 isLocal:v28 transactionId:v22 isCached:v29 bundleId:v21 userUUID:v20 writtenValues:v19];

  return v26;
}

+ (id)eventWithCharacteristicsToWrite:(id)a3 hmdAccessory:(id)a4 hapAccessory:(id)a5 source:(unint64_t)a6 biomeSource:(unint64_t)a7 isTimedWrite:(BOOL)a8 isLocal:(BOOL)a9 transactionId:(id)a10 bundleId:(id)a11 userUUID:(id)a12 writtenValues:(id)a13
{
  v17 = a13;
  v18 = a12;
  v19 = a11;
  v20 = a10;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  LOBYTE(v27) = 0;
  BYTE1(v26) = a9;
  LOBYTE(v26) = a8;
  v24 = [[HMDCharacteristicReadWriteLogEvent alloc] initWithCharacteristics:v23 hmdAccessory:v22 hapAccessory:v21 source:a6 biomeSource:a7 isWriteOperation:1 isTimedWrite:v26 isLocal:v20 transactionId:v27 isCached:v19 bundleId:v18 userUUID:v17 writtenValues:?];

  return v24;
}

+ (id)eventWithCharacteristicsToWrite:(id)a3 hmdAccessory:(id)a4 hapAccessory:(id)a5 source:(unint64_t)a6 isTimedWrite:(BOOL)a7 isLocal:(BOOL)a8 transactionId:(id)a9 bundleId:(id)a10 userUUID:(id)a11 writtenValues:(id)a12
{
  v28 = a7;
  v17 = a12;
  v18 = a11;
  v19 = a10;
  v20 = a9;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  LOBYTE(v27) = 0;
  LOBYTE(v26) = a8;
  v24 = [[HMDCharacteristicReadWriteLogEvent alloc] initWithCharacteristics:v23 hmdAccessory:v22 hapAccessory:v21 source:a6 isWriteOperation:1 isTimedWrite:v28 isLocal:v26 transactionId:v20 isCached:v27 bundleId:v19 userUUID:v18 writtenValues:v17];

  return v24;
}

+ (id)eventWithCharacteristicsToRead:(id)a3 hmdAccessory:(id)a4 hapAccessory:(id)a5 source:(unint64_t)a6 isLocal:(BOOL)a7 transactionId:(id)a8 isCached:(BOOL)a9 bundleId:(id)a10 userUUID:(id)a11
{
  v17 = a11;
  v18 = a10;
  v19 = a8;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = [HMDCharacteristicReadWriteLogEvent alloc];
  LOBYTE(v27) = a9;
  LOBYTE(v26) = a7;
  v24 = [(HMDCharacteristicReadWriteLogEvent *)v23 initWithCharacteristics:v22 hmdAccessory:v21 hapAccessory:v20 source:a6 isWriteOperation:0 isTimedWrite:0 isLocal:v26 transactionId:v19 isCached:v27 bundleId:v18 userUUID:v17 writtenValues:MEMORY[0x277CBEBF8]];

  return v24;
}

@end