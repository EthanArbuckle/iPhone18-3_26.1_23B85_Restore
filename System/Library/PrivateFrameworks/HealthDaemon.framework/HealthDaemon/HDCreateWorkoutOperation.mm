@interface HDCreateWorkoutOperation
- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error;
- (HDCreateWorkoutOperation)initWithCoder:(id)coder;
- (HDCreateWorkoutOperation)initWithWorkoutConfiguration:(id)configuration identifier:(id)identifier dateInterval:(id)interval metadata:(id)metadata device:(id)device source:(id)source sourceVersion:(id)version events:(id)self0 activities:(id)self1 zones:(id)self2 statisticsCalculators:(id)self3 associatedSeries:(id)self4 goalType:(unint64_t)self5 goal:(id)self6 quantityTypesIncludedWhilePaused:(id)self7;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDCreateWorkoutOperation

- (HDCreateWorkoutOperation)initWithWorkoutConfiguration:(id)configuration identifier:(id)identifier dateInterval:(id)interval metadata:(id)metadata device:(id)device source:(id)source sourceVersion:(id)version events:(id)self0 activities:(id)self1 zones:(id)self2 statisticsCalculators:(id)self3 associatedSeries:(id)self4 goalType:(unint64_t)self5 goal:(id)self6 quantityTypesIncludedWhilePaused:(id)self7
{
  configurationCopy = configuration;
  identifierCopy = identifier;
  intervalCopy = interval;
  metadataCopy = metadata;
  deviceCopy = device;
  sourceCopy = source;
  versionCopy = version;
  eventsCopy = events;
  activitiesCopy = activities;
  zonesCopy = zones;
  calculatorsCopy = calculators;
  seriesCopy = series;
  v30 = versionCopy;
  goalCopy = goal;
  pausedCopy = paused;
  v62.receiver = self;
  v62.super_class = HDCreateWorkoutOperation;
  v32 = [(HDCreateWorkoutOperation *)&v62 init];
  if (v32)
  {
    v33 = [configurationCopy copy];
    workoutConfiguration = v32->_workoutConfiguration;
    v32->_workoutConfiguration = v33;

    v35 = [identifierCopy copy];
    identifier = v32->_identifier;
    v32->_identifier = v35;

    v37 = [intervalCopy copy];
    dateInterval = v32->_dateInterval;
    v32->_dateInterval = v37;

    v39 = [metadataCopy copy];
    metadata = v32->_metadata;
    v32->_metadata = v39;

    v41 = [deviceCopy copy];
    device = v32->_device;
    v32->_device = v41;

    v43 = [sourceCopy copy];
    source = v32->_source;
    v32->_source = v43;

    v45 = [v30 copy];
    sourceVersion = v32->_sourceVersion;
    v32->_sourceVersion = v45;

    v47 = [eventsCopy copy];
    events = v32->_events;
    v32->_events = v47;

    v49 = [activitiesCopy copy];
    activities = v32->_activities;
    v32->_activities = v49;

    v51 = [zonesCopy copy];
    zones = v32->_zones;
    v32->_zones = v51;

    objc_storeStrong(&v32->_statisticsCalculators, calculators);
    v53 = [seriesCopy copy];
    associatedSeries = v32->_associatedSeries;
    v32->_associatedSeries = v53;

    v32->_goalType = type;
    objc_storeStrong(&v32->_goal, goal);
    objc_storeStrong(&v32->_quantityTypesIncludedWhilePaused, paused);
  }

  return v32;
}

- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error
{
  v258 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  transactionCopy = transaction;
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  isAppleWatch = [mEMORY[0x277CCDD30] isAppleWatch];

  if (!isAppleWatch)
  {
LABEL_7:
    v11 = [(HDDataEntity *)HDWorkoutEntity objectWithUUID:self->_identifier encodingOptions:0 profile:profileCopy error:error];
    if (v11)
    {
      LOBYTE(v14) = 1;
      goto LABEL_134;
    }

    identifier = self->_identifier;
    v211 = 0;
    v185 = [HDWorkoutBuilderEntity workoutBuilderEntityWithIdentifier:identifier profile:profileCopy error:&v211];
    v16 = v211;
    if (!v185)
    {
      if (v16)
      {
        v43 = v16;
      }

      else
      {
        v43 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"Unable to look up workout builder '%@' during create workout operation.", self->_identifier}];
        v44 = 0;
        if (!v43)
        {
          v183 = 0;
          LOBYTE(v14) = 0;
LABEL_133:

          v11 = 0;
          goto LABEL_134;
        }
      }

      v45 = v43;
      if (error)
      {
        v46 = v43;
        LOBYTE(v14) = 0;
        v47 = v45;
        *error = v45;
      }

      else
      {
        _HKLogDroppedError();
        LOBYTE(v14) = 0;
        v47 = v45;
      }

      v183 = v45;
LABEL_132:

      v44 = v185;
      goto LABEL_133;
    }

    v183 = v16;
    [v185 setIsFinishingBuilder];
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    dateInterval = self->_dateInterval;
    v209[0] = MEMORY[0x277D85DD0];
    v209[1] = 3221225472;
    v209[2] = __65__HDCreateWorkoutOperation_performWithProfile_transaction_error___block_invoke;
    v209[3] = &unk_27861D5D8;
    v181 = v18;
    v210 = v181;
    v207[0] = MEMORY[0x277D85DD0];
    v207[1] = 3221225472;
    v207[2] = __65__HDCreateWorkoutOperation_performWithProfile_transaction_error___block_invoke_2;
    v207[3] = &unk_27861D600;
    v182 = v17;
    v208 = v182;
    if (![v185 pruneAssociatedSamplesToDateInterval:dateInterval transaction:transactionCopy error:error zonesHandler:v209 sampleHandler:v207])
    {
      LOBYTE(v14) = 0;
LABEL_131:

      v47 = v182;
      goto LABEL_132;
    }

    v177 = objc_alloc_init(MEMORY[0x277CBEB38]);
    activities = self->_activities;
    v206[0] = MEMORY[0x277D85DD0];
    v206[1] = 3221225472;
    v206[2] = __65__HDCreateWorkoutOperation_performWithProfile_transaction_error___block_invoke_311;
    v206[3] = &unk_27861D628;
    v206[4] = self;
    v179 = [(NSArray *)activities hk_mapToDictionary:v206];
    if ([(HDJournalableOperation *)self didJournal])
    {
      allQuantityTypes = [(HDWorkoutBuilderStatisticsCalculators *)self->_statisticsCalculators allQuantityTypes];
      v193 = v185;
      v191 = transactionCopy;
      v22 = profileCopy;
      v247 = 0u;
      v248 = 0u;
      v249 = 0u;
      v250 = 0u;
      obj = allQuantityTypes;
      v23 = [allQuantityTypes countByEnumeratingWithState:&v247 objects:buf count:16];
      if (v23)
      {
        v24 = *v248;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v248 != v24)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v247 + 1) + 8 * i);
            startDate = [(NSDateInterval *)self->_dateInterval startDate];
            endDate = [(NSDateInterval *)self->_dateInterval endDate];
            *&v229 = 0;
            v243[0] = MEMORY[0x277D85DD0];
            v243[1] = 3221225472;
            v243[2] = __96__HDCreateWorkoutOperation__associateSamplesForQuantityTypes_builderEntity_transaction_profile___block_invoke;
            v243[3] = &unk_27861D6C0;
            v244 = v193;
            v245 = v191;
            v246 = v26;
            v29 = [HDWorkoutUtilities enumerateQuantitiesOfType:v26 from:startDate to:endDate transaction:v245 profile:v22 error:&v229 handler:v243];
            v30 = v229;

            if (!v29)
            {
              _HKInitializeLogging();
              v31 = *MEMORY[0x277CCC330];
              if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
              {
                *v236 = 138543874;
                selfCopy = self;
                v238 = 2114;
                v239 = v26;
                v240 = 2114;
                v241 = v30;
                _os_log_error_impl(&dword_228986000, v31, OS_LOG_TYPE_ERROR, "%{public}@: Failed to enumerate samples of type %{public}@: %{public}@", v236, 0x20u);
              }
            }
          }

          v23 = [obj countByEnumeratingWithState:&v247 objects:buf count:16];
        }

        while (v23);
      }
    }

    statisticsCalculators = self->_statisticsCalculators;
    v200[0] = MEMORY[0x277D85DD0];
    v200[1] = 3221225472;
    v200[2] = __65__HDCreateWorkoutOperation_performWithProfile_transaction_error___block_invoke_2_313;
    v200[3] = &unk_27861D650;
    v33 = profileCopy;
    v201 = v33;
    v160 = v185;
    v202 = v160;
    selfCopy2 = self;
    v180 = v179;
    v204 = v180;
    v175 = v177;
    v205 = v175;
    [(HDWorkoutBuilderStatisticsCalculators *)statisticsCalculators enumerateCalculatorsWithHandler:v200];
    events = self->_events;
    v199[0] = MEMORY[0x277D85DD0];
    v199[1] = 3221225472;
    v199[2] = __65__HDCreateWorkoutOperation_performWithProfile_transaction_error___block_invoke_318;
    v199[3] = &unk_27861D678;
    v199[4] = self;
    v178 = [(NSArray *)events hk_filter:v199];
    allValues = [v180 allValues];
    v176 = [allValues sortedArrayUsingComparator:&__block_literal_global_74];

    v36 = MEMORY[0x277CCDBE8];
    activityType = [(HKWorkoutConfiguration *)self->_workoutConfiguration activityType];
    startDate2 = [(NSDateInterval *)self->_dateInterval startDate];
    endDate2 = [(NSDateInterval *)self->_dateInterval endDate];
    device = self->_device;
    v194 = [v36 _workoutWithActivityType:activityType startDate:startDate2 endDate:endDate2 workoutEvents:v178 workoutActivities:v176 duration:v175 statistics:0.0 goalType:self->_goalType goal:self->_goal device:device metadata:self->_metadata];

    [v194 _setUUID:self->_identifier];
    sourceManager = [v33 sourceManager];
    v192 = [sourceManager sourceEntityForClientSource:self->_source createOrUpdateIfNecessary:0 error:error];

    if (!v192)
    {
      goto LABEL_26;
    }

    if (self->_device)
    {
      deviceManager = [v33 deviceManager];
      v170 = [deviceManager deviceEntityForDevice:self->_device error:error];

      if (!v170)
      {
LABEL_26:
        LOBYTE(v14) = 0;
LABEL_130:

        goto LABEL_131;
      }
    }

    else
    {
      v170 = 0;
    }

    dataProvenanceManager = [v33 dataProvenanceManager];
    v165 = [dataProvenanceManager localDataProvenanceForSourceEntity:v192 version:self->_sourceVersion deviceEntity:v170];

    dataManager = [v33 dataManager];
    v233 = v194;
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v233 count:1];
    v14 = [dataManager insertDataObjects:v50 withProvenance:v165 creationDate:0 skipInsertionFilter:1 updateSourceOrder:1 resolveAssociations:error error:CFAbsoluteTimeGetCurrent()];

    if (!v14)
    {
LABEL_129:

      goto LABEL_130;
    }

    v198 = 0;
    v158 = v194;
    v154 = v182;
    v195 = v33;
    v166 = transactionCopy;
    v225 = 0u;
    v226 = 0u;
    v227 = 0u;
    v228 = 0u;
    obja = self->_associatedSeries;
    v51 = [(NSArray *)obja countByEnumeratingWithState:&v225 objects:&v247 count:16];
    if (v51)
    {
      v52 = *v226;
      v53 = MEMORY[0x277CBEC10];
      while (2)
      {
        for (j = 0; j != v51; ++j)
        {
          if (*v226 != v52)
          {
            objc_enumerationMutation(obja);
          }

          v55 = [(HDSeriesBuilderEntity *)HDWorkoutRouteBuilderEntity freezeSeriesWithIdentifier:*(*(&v225 + 1) + 8 * j) metadata:v53 profile:v195 error:&v198];
          v56 = v55 == 0;

          if (v56)
          {
            v123 = 0;
            goto LABEL_115;
          }
        }

        v51 = [(NSArray *)obja countByEnumeratingWithState:&v225 objects:&v247 count:16];
        if (v51)
        {
          continue;
        }

        break;
      }
    }

    associatedSeries = self->_associatedSeries;
    v224 = 0;
    v58 = associatedSeries;
    v59 = v195;
    v60 = self->_identifier;
    *buf = 0;
    v173 = v59;
    v61 = [HDAssociationEntity associateSampleUUIDs:v58 withSampleUUID:v60 type:0 behavior:0 destinationSubObjectReference:0 lastInsertedEntityID:buf profile:v59 error:&v224];

    v62 = v224;
    obja = v62;
    if (v61)
    {
      v222 = 0u;
      v223 = 0u;
      v220 = 0u;
      v221 = 0u;
      v153 = v154;
      v151 = [(NSArray *)v153 countByEnumeratingWithState:&v220 objects:v243 count:16];
      if (v151)
      {
        v150 = *v221;
        v164 = *MEMORY[0x277CCE0E8];
        v149 = *MEMORY[0x277CCCB68];
        v148 = *MEMORY[0x277CCCCD8];
        v155 = *MEMORY[0x277CCE160];
        while (2)
        {
          v63 = 0;
          do
          {
            if (*v221 != v150)
            {
              v64 = v63;
              objc_enumerationMutation(v153);
              v63 = v64;
            }

            v152 = v63;
            v65 = *(*(&v220 + 1) + 8 * v63);
            unsignedIntegerValue = [v65 unsignedIntegerValue];
            if (unsignedIntegerValue == 1)
            {
              metadata = [(NSArray *)v158 metadata];
              v162 = [metadata objectForKeyedSubscript:v164];

              v157 = [HDMetadataValueStatement metadataValueStatementWithTransaction:v166];
              v72 = MEMORY[0x277D10B20];
              v73 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:v149];
              v74 = HDSampleEntityPredicateForDataType(v73);
              v242[0] = v74;
              v75 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:v148];
              v76 = HDSampleEntityPredicateForDataType(v75);
              v242[1] = v76;
              v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v242 count:2];
              v161 = [v72 predicateMatchingAnyPredicates:v77];

              v78 = [(NSArray *)v153 objectForKeyedSubscript:v65];
              _HKInitializeLogging();
              v79 = *MEMORY[0x277CCC330];
              if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
              {
                v80 = v79;
                v81 = [v78 count];
                *buf = 138543618;
                *&buf[4] = self;
                v252 = 2048;
                v253 = v81;
                _os_log_impl(&dword_228986000, v80, OS_LOG_TYPE_DEFAULT, "%{public}@: Pending workout has %lu loose associations", buf, 0x16u);
              }

              v217 = 0u;
              v218 = 0u;
              v215 = 0u;
              v216 = 0u;
              v156 = v78;
              v163 = [v156 countByEnumeratingWithState:&v215 objects:v236 count:16];
              if (v163)
              {
                v159 = *v216;
                while (2)
                {
                  v82 = 0;
                  do
                  {
                    if (*v216 != v159)
                    {
                      v83 = v82;
                      objc_enumerationMutation(v156);
                      v82 = v83;
                    }

                    v171 = v82;
                    v84 = MEMORY[0x277D10B20];
                    v168 = *(*(&v215 + 1) + 8 * v82);
                    v85 = HDDataEntityPredicateForRowID(v168, 1);
                    v235[0] = v85;
                    v235[1] = v161;
                    metadataManager = [v173 metadataManager];
                    v87 = [metadataManager predicateWithMetadataKey:v164 value:v162 operatorType:4];
                    v235[2] = v87;
                    v88 = [MEMORY[0x277CBEA60] arrayWithObjects:v235 count:3];
                    v184 = [v84 predicateMatchingAllPredicates:v88];

                    v89 = [v166 databaseForEntityClass:objc_opt_class()];
                    v214 = 0;
                    v174 = [(HDDataEntity *)HDSampleEntity anyInDatabase:v89 predicate:v184 error:&v214];
                    v172 = v214;

                    if (v174)
                    {
                      metadataManager2 = [v173 metadataManager];
                      unsignedIntValue = [v168 unsignedIntValue];
                      v213 = 0;
                      v169 = [metadataManager2 metadataForObjectID:unsignedIntValue baseMetadata:0 keyFilter:0 statement:v157 error:&v213];
                      v92 = v213;

                      if (v92)
                      {
                        _HKInitializeLogging();
                        v128 = *MEMORY[0x277CCC330];
                        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138543874;
                          *&buf[4] = self;
                          v252 = 2112;
                          v253 = v168;
                          v254 = 2112;
                          v255 = v92;
                          _os_log_error_impl(&dword_228986000, v128, OS_LOG_TYPE_ERROR, "%{public}@ Error retrieving metadata on effort sample:%@, error:%@", buf, 0x20u);
                        }

                        v129 = v92;
                        v123 = 0;
                        v198 = v92;
                        v94 = v169;
                        v169 = v92;
                        goto LABEL_111;
                      }

                      v93 = [v169 objectForKey:v155];
                      v167 = v93;
                      if (v93)
                      {
                        v94 = v93;
                        v95 = v158;
                        v229 = 0u;
                        v230 = 0u;
                        v231 = 0u;
                        v232 = 0u;
                        _subActivities = [(NSArray *)v95 _subActivities];
                        v97 = [_subActivities countByEnumeratingWithState:&v229 objects:buf count:16];
                        if (v97)
                        {
                          v98 = *v230;
                          while (2)
                          {
                            for (k = 0; k != v97; ++k)
                            {
                              if (*v230 != v98)
                              {
                                objc_enumerationMutation(_subActivities);
                              }

                              v100 = *(*(&v229 + 1) + 8 * k);
                              uUID = [v100 UUID];
                              uUIDString = [uUID UUIDString];
                              v103 = [uUIDString isEqual:v94];

                              if (v103)
                              {
                                uUID2 = [v100 UUID];

                                goto LABEL_81;
                              }
                            }

                            v97 = [_subActivities countByEnumeratingWithState:&v229 objects:buf count:16];
                            if (v97)
                            {
                              continue;
                            }

                            break;
                          }
                        }

                        metadata2 = [(NSArray *)v95 metadata];
                        v105 = [metadata2 objectForKeyedSubscript:v164];
                        v106 = [v94 isEqual:v105];

                        if (v106)
                        {
                          uUID2 = [(NSArray *)v95 UUID];
                        }

                        else
                        {
                          uUID2 = 0;
                        }

LABEL_81:

                        if (uUID2)
                        {
                          uUID3 = [(NSArray *)v95 UUID];
                          if ([uUID2 isEqual:uUID3])
                          {
                            v113 = 0;
                          }

                          else
                          {
                            v113 = uUID2;
                          }

                          v114 = v113;

                          v115 = [[HDAssociatableObjectReference alloc] initWithUUID:v114 objectClass:objc_opt_class()];
                          v116 = self->_identifier;
                          v234 = v168;
                          v117 = [MEMORY[0x277CBEA60] arrayWithObjects:&v234 count:1];
                          currentSyncIdentityPersistentID = [v173 currentSyncIdentityPersistentID];
                          v212 = 0;
                          v119 = [HDAssociationEntity bulkInsertAssociationsWithParentUUID:v116 childIDs:v117 type:1 behavior:0 destinationSubObjectReference:v115 syncIdentity:currentSyncIdentityPersistentID profile:v173 error:&v212];
                          v120 = v212;

                          if (!v119)
                          {
                            v130 = v120;
                            v131 = v130;
                            v123 = v130 == 0;
                            if (v130)
                            {
                              v132 = v130;
                              v198 = v131;
                            }

LABEL_111:
                            v133 = v157;
                            goto LABEL_112;
                          }
                        }

                        else
                        {
                          _HKInitializeLogging();
                          v121 = *MEMORY[0x277CCC330];
                          if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
                          {
                            *buf = 138544130;
                            *&buf[4] = self;
                            v252 = 2112;
                            v253 = v155;
                            v254 = 2112;
                            v255 = 0;
                            v256 = 2112;
                            v257 = v158;
                            _os_log_error_impl(&dword_228986000, v121, OS_LOG_TYPE_ERROR, "%{public}@, Effort samples <%@: %@>, does not match any activity UUID on workout:%@", buf, 0x2Au);
                          }
                        }
                      }

                      else
                      {
                        _HKInitializeLogging();
                        v111 = *MEMORY[0x277CCC330];
                        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138543874;
                          *&buf[4] = self;
                          v252 = 2112;
                          v253 = v155;
                          v254 = 2112;
                          v255 = v158;
                          _os_log_error_impl(&dword_228986000, v111, OS_LOG_TYPE_ERROR, "%{public}@, Effort sample is missing %@, skipping association to workout:%@", buf, 0x20u);
                        }
                      }
                    }

                    else
                    {
                      _HKInitializeLogging();
                      v108 = *MEMORY[0x277CCC330];
                      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
                      {
                        v109 = v108;
                        longValue = [v168 longValue];
                        *buf = 138543618;
                        *&buf[4] = self;
                        v252 = 2048;
                        v253 = longValue;
                        _os_log_error_impl(&dword_228986000, v109, OS_LOG_TYPE_ERROR, "%{public}@: Unable to find sample at row %lu", buf, 0x16u);
                      }
                    }

                    v82 = v171 + 1;
                  }

                  while (v171 + 1 != v163);
                  v163 = [v156 countByEnumeratingWithState:&v215 objects:v236 count:16];
                  if (v163)
                  {
                    continue;
                  }

                  break;
                }
              }
            }

            else if (unsignedIntegerValue)
            {
              _HKInitializeLogging();
              v122 = *MEMORY[0x277CCC330];
              if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                *&buf[4] = self;
                _os_log_error_impl(&dword_228986000, v122, OS_LOG_TYPE_ERROR, "%{public}@: Unexpected association type. Skipping", buf, 0xCu);
              }
            }

            else
            {
              v67 = self->_identifier;
              v68 = [(NSArray *)v153 objectForKeyedSubscript:v65];
              currentSyncIdentityPersistentID2 = [v173 currentSyncIdentityPersistentID];
              v219 = 0;
              LOBYTE(v67) = [HDAssociationEntity bulkInsertAssociationsWithParentUUID:v67 childIDs:v68 type:0 behavior:0 destinationSubObjectReference:0 syncIdentity:currentSyncIdentityPersistentID2 profile:v173 error:&v219];
              v70 = v219;

              if ((v67 & 1) == 0)
              {
                v145 = v70;
                if (v145)
                {
                  v146 = v145;
                  v147 = v145;
                  v123 = 0;
                  v133 = v146;
                  v198 = v146;
                  v162 = v146;
                }

                else
                {
                  v133 = 0;
                  v162 = 0;
                  v123 = 1;
                }

LABEL_112:

                goto LABEL_113;
              }
            }

            v63 = v152 + 1;
          }

          while (v152 + 1 != v151);
          v151 = [(NSArray *)v153 countByEnumeratingWithState:&v220 objects:v243 count:16];
          v123 = 1;
          if (v151)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v123 = 1;
      }

LABEL_113:
      v127 = v153;
    }

    else
    {
      v124 = v62;
      if (v124)
      {
        v125 = v124;
        v126 = v124;
        v123 = 0;
        v127 = v125;
        v198 = v125;
      }

      else
      {
        v127 = 0;
        v123 = 1;
      }
    }

LABEL_115:
    v134 = v198;
    v135 = v134;
    if (v123)
    {
      [v166 onCommit:&__block_literal_global_330 orRollback:0];
      v136 = [(HDDataEntity *)HDWorkoutEntity objectWithUUID:self->_identifier encodingOptions:0 profile:v195 error:error];
      createdWorkout = self->_createdWorkout;
      self->_createdWorkout = v136;

      if (!self->_createdWorkout)
      {
        LOBYTE(v14) = 0;
LABEL_128:

        goto LABEL_129;
      }

      v197 = 0;
      v138 = [v160 dropFinalTemporaryTableWithTransaction:v166 error:&v197];
      v139 = v197;
      if ((v138 & 1) == 0)
      {
        _HKInitializeLogging();
        v140 = *MEMORY[0x277CCC330];
        if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = self;
          _os_log_error_impl(&dword_228986000, v140, OS_LOG_TYPE_ERROR, "%{public}@: Failed to drop final temporary table", buf, 0xCu);
        }
      }

      LOBYTE(v14) = [HDWorkoutBuilderEntity discardBuilderWithIdentifier:self->_identifier profile:v195 error:error];
    }

    else
    {
      v141 = v134;
      v139 = v141;
      if (v141)
      {
        if (error)
        {
          v142 = v141;
          LOBYTE(v14) = 0;
          *error = v139;
        }

        else
        {
          _HKLogDroppedError();
          LOBYTE(v14) = 0;
        }
      }

      else
      {
        LOBYTE(v14) = 1;
      }
    }

    goto LABEL_128;
  }

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  date = [MEMORY[0x277CBEAA8] date];
  v11 = [currentCalendar hk_startOfDateBySubtractingDays:*MEMORY[0x277CCCEE8] fromDate:date];

  endDate3 = [(NSDateInterval *)self->_dateInterval endDate];
  LODWORD(date) = [endDate3 hk_isBeforeDate:v11];

  if (!date)
  {

    goto LABEL_7;
  }

  _HKInitializeLogging();
  v13 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_DEFAULT, "Attempting to save a workout which is older than the standard data availability on Watch. Discarding builder", buf, 2u);
  }

  LOBYTE(v14) = [HDWorkoutBuilderEntity discardBuilderWithIdentifier:self->_identifier profile:profileCopy error:error];
LABEL_134:

  v143 = *MEMORY[0x277D85DE8];
  return v14;
}

void __65__HDCreateWorkoutOperation_performWithProfile_transaction_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 304 || a2 == 298)
  {
    v5 = (a1 + 32);
    v4 = *(a1 + 32);
    v6 = &unk_283CB0BB8;
  }

  else
  {
    v5 = (a1 + 32);
    v4 = *(a1 + 32);
    v6 = &unk_283CB0BD0;
  }

  v7 = [v4 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [*v5 setObject:v8 forKeyedSubscript:v6];
  }

  v10 = [*v5 objectForKeyedSubscript:v6];
  v9 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  [v10 addObject:v9];
}

void __65__HDCreateWorkoutOperation_performWithProfile_transaction_error___block_invoke_311(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v9 endDate];

  if (!v6)
  {
    v7 = [*(*(a1 + 32) + 32) endDate];
    [v9 _setEndDate:v7];
  }

  v8 = [v9 UUID];
  v5[2](v5, v8, v9);
}

uint64_t __65__HDCreateWorkoutOperation_performWithProfile_transaction_error___block_invoke_2_313(uint64_t a1, void *a2, void *a3, void *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [[HDWorkoutBuilderStatisticsDataSource alloc] initWithProfile:*(a1 + 32) quantityType:v8 builderEntity:*(a1 + 40)];
  v11 = [[HDStatisticsCollectionCalculatorDefaultSourceOrderProvider alloc] initWithProfile:*(a1 + 32) quantityType:v8];
  [v7 setDataSource:v10];
  [v7 setSourceOrderProvider:v11];
  if ([v9 isEqual:*(*(a1 + 48) + 24)])
  {
    [v7 setDateInterval:*(*(a1 + 48) + 32)];
  }

  else
  {
    v12 = v10;
    v13 = [*(a1 + 56) objectForKeyedSubscript:v9];
    v14 = v13;
    if (!v13 || ([v13 endDate], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "startDate"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "hk_isAfterDate:", v16), v16, v15, !v17))
    {

      v10 = v12;
      goto LABEL_20;
    }

    v18 = objc_alloc(MEMORY[0x277CCA970]);
    v19 = [v14 startDate];
    v20 = [v14 endDate];
    v21 = [v18 initWithStartDate:v19 endDate:v20];
    [v7 setDateInterval:v21];

    v10 = v12;
  }

  if (([*(*(a1 + 48) + 128) containsObject:v8] & 1) == 0)
  {
    v22 = *(*(a1 + 48) + 72);
    v23 = _HKPausedIntervalsWithWorkoutEvents();
    v35 = 0;
    v24 = [v7 setMaskedIntervals:v23 error:&v35];
    v25 = v35;
    if ((v24 & 1) == 0)
    {
      _HKInitializeLogging();
      v26 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v37 = v8;
        v38 = 2114;
        v39 = v25;
        _os_log_error_impl(&dword_228986000, v26, OS_LOG_TYPE_ERROR, "Failed to set mask interval for %{public}@ at workout end; will fall back on existing statistics: %{public}@", buf, 0x16u);
      }
    }
  }

  v34 = 0;
  v27 = [v7 invalidateInterval:0 error:&v34];
  v28 = v34;
  if ((v27 & 1) == 0)
  {
    _HKInitializeLogging();
    v29 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v37 = v8;
      v38 = 2114;
      v39 = v28;
      _os_log_error_impl(&dword_228986000, v29, OS_LOG_TYPE_ERROR, "Failed to update statistics for %{public}@ at workout end; will fall back on existing statistics: %{public}@", buf, 0x16u);
    }
  }

  v30 = [v7 currentStatistics];
  if (v30)
  {
    if ([v9 isEqual:*(*(a1 + 48) + 24)])
    {
      [*(a1 + 64) setObject:v30 forKeyedSubscript:v8];
    }

    else
    {
      v31 = [*(a1 + 56) objectForKeyedSubscript:v9];
      [v31 _setStatistics:v30 forType:v8];
    }
  }

LABEL_20:
  v32 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __65__HDCreateWorkoutOperation_performWithProfile_transaction_error___block_invoke_318(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v5 = [v3 dateInterval];
  v6 = [v5 startDate];
  if ([v4 containsDate:v6])
  {
    v7 = *(*(a1 + 32) + 32);
    v8 = [v3 dateInterval];
    v9 = [v8 endDate];
    v10 = [v7 containsDate:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __65__HDCreateWorkoutOperation_performWithProfile_transaction_error___block_invoke_2_320(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

void __65__HDCreateWorkoutOperation_performWithProfile_transaction_error___block_invoke_327()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"HDHealthStoreServerDidAssociateWorkoutSamples" object:0];
}

void __96__HDCreateWorkoutOperation__associateSamplesForQuantityTypes_builderEntity_transaction_profile___block_invoke(void *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v4 = a2;
  v5 = [v4 hdw_sample];
  v6 = [v4 hdw_type];
  v7 = [v6 code];
  [v4 hdw_startTimestamp];
  v9 = v8;

  v10 = a1[5];
  v16 = 0;
  v11 = [v3 associateObject:v5 code:v7 timestamp:v10 transaction:&v16 error:v9];
  v12 = v16;

  if (!v11)
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v15 = a1[6];
      *buf = 138543618;
      v18 = v15;
      v19 = 2114;
      v20 = v12;
      _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "Failed to associate quantity with type %{public}@ and error: %{public}@", buf, 0x16u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (HDCreateWorkoutOperation)initWithCoder:(id)coder
{
  v46[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v43.receiver = self;
  v43.super_class = HDCreateWorkoutOperation;
  v5 = [(HDJournalableOperation *)&v43 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"workout_configuration"];
    workoutConfiguration = v5->_workoutConfiguration;
    v5->_workoutConfiguration = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date_interval"];
    dateInterval = v5->_dateInterval;
    v5->_dateInterval = v10;

    hk_secureCodingClasses = [MEMORY[0x277CBEAC0] hk_secureCodingClasses];
    v13 = [coderCopy decodeObjectOfClasses:hk_secureCodingClasses forKey:@"metadata"];
    hk_replaceKeysFromSharedStringCache = [v13 hk_replaceKeysFromSharedStringCache];
    metadata = v5->_metadata;
    v5->_metadata = hk_replaceKeysFromSharedStringCache;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"device"];
    device = v5->_device;
    v5->_device = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"source"];
    source = v5->_source;
    v5->_source = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"source_version"];
    sourceVersion = v5->_sourceVersion;
    v5->_sourceVersion = v20;

    v22 = MEMORY[0x277CBEB98];
    v46[0] = objc_opt_class();
    v46[1] = objc_opt_class();
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];
    v24 = [v22 setWithArray:v23];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"events"];
    events = v5->_events;
    v5->_events = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"calculators"];
    statisticsCalculators = v5->_statisticsCalculators;
    v5->_statisticsCalculators = v27;

    v5->_goalType = [coderCopy decodeIntegerForKey:@"goal_type"];
    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"goal"];
    goal = v5->_goal;
    v5->_goal = v29;

    v31 = MEMORY[0x277CBEB98];
    v45[0] = objc_opt_class();
    v45[1] = objc_opt_class();
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
    v33 = [v31 setWithArray:v32];

    v34 = [coderCopy decodeObjectOfClasses:v33 forKey:@"activities"];
    activities = v5->_activities;
    v5->_activities = v34;

    v36 = MEMORY[0x277CBEB98];
    v44[0] = objc_opt_class();
    v44[1] = objc_opt_class();
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
    v38 = [v36 setWithArray:v37];

    v39 = [coderCopy decodeObjectOfClasses:v38 forKey:@"zones"];
    zones = v5->_zones;
    v5->_zones = v39;
  }

  v41 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HDCreateWorkoutOperation;
  coderCopy = coder;
  [(HDJournalableOperation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_workoutConfiguration forKey:{@"workout_configuration", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_dateInterval forKey:@"date_interval"];
  [coderCopy encodeObject:self->_metadata forKey:@"metadata"];
  [coderCopy encodeObject:self->_device forKey:@"device"];
  [coderCopy encodeObject:self->_source forKey:@"source"];
  [coderCopy encodeObject:self->_sourceVersion forKey:@"source_version"];
  [coderCopy encodeObject:self->_events forKey:@"events"];
  [coderCopy encodeObject:self->_statisticsCalculators forKey:@"calculators"];
  [coderCopy encodeInteger:self->_goalType forKey:@"goal_type"];
  [coderCopy encodeObject:self->_goal forKey:@"goal"];
  [coderCopy encodeObject:self->_activities forKey:@"activities"];
  [coderCopy encodeObject:self->_zones forKey:@"zones"];
}

@end