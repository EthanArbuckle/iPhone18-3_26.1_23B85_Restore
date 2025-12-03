@interface HDQuantityDistributionQueryServer
- (BOOL)_walkSampleValuesWithPredicate:(uint64_t)predicate errorOut:(void *)out handler:;
- (HDQuantityDistributionQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (id)_categoryPredicateWithTypeCode:(void *)code matchingValue:(uint64_t)value errorOut:;
- (id)_sqlitePredicateForObjectType:(uint64_t)type errorOut:;
- (id)_walkSampleDatesWithPredicate:(uint64_t)predicate entityClass:(char)class includeUUID:(uint64_t)d errorOut:;
- (id)_walkSampleDatesWithPredicate:(uint64_t)predicate entityClass:(uint64_t)class errorOut:;
- (void)_addAttenuatedSamplesUsingAttenuateSamples:(uint64_t)samples sampleCount:(void *)count distributionCalculator:(int)calculator computeAverageAndDuration:(void *)duration calculatorForAverageAndDuration:(void *)andDuration attenuationEngine:;
- (void)_addSampleIntoDistributionCalculatorAndAverageAndDurationCalculator:(void *)calculator distributionCalculator:(int)distributionCalculator computeAverageAndDuration:(void *)duration calculatorForAverageAndDuration:(double)andDuration dataFactor:;
- (void)_queue_start;
@end

@implementation HDQuantityDistributionQueryServer

- (HDQuantityDistributionQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  v17.receiver = self;
  v17.super_class = HDQuantityDistributionQueryServer;
  v11 = [(HDQueryServer *)&v17 initWithUUID:d configuration:configurationCopy client:client delegate:delegate];
  if (v11)
  {
    v12 = [[HDQuantitySampleOverlapProcessor alloc] initWithOverlapFunction:1];
    overlapProcessor = v11->_overlapProcessor;
    v11->_overlapProcessor = v12;

    v14 = [configurationCopy copy];
    quantityDistributionQueryServerConfiguration = v11->_quantityDistributionQueryServerConfiguration;
    v11->_quantityDistributionQueryServerConfiguration = v14;
  }

  return v11;
}

- (void)_queue_start
{
  p_isa = &self->super.super.isa;
  v253 = *MEMORY[0x277D85DE8];
  v231.receiver = self;
  v231.super_class = HDQuantityDistributionQueryServer;
  [(HDQueryServer *)&v231 _queue_start];
  clientProxy = [p_isa clientProxy];
  sampleType = [p_isa sampleType];
  v230 = 0;
  v5 = [p_isa authorizationStatusRecordForType:sampleType error:&v230];
  v205 = v230;
  if (!v5)
  {
    queryUUID = [p_isa queryUUID];
    [clientProxy client_deliverError:v205 forQuery:queryUUID];
  }

  v206 = p_isa;
  v204 = v5;
  if (![v5 canRead])
  {
    p_isa = MEMORY[0x277CBEBF8];
    v15 = v205;
    goto LABEL_126;
  }

  v201 = sampleType;
  if (p_isa)
  {
    histogramBucketSize = [p_isa[26] histogramBucketSize];
    _unit = [histogramBucketSize _unit];

    quantityType = [p_isa quantityType];
    canonicalUnit = [quantityType canonicalUnit];
    [canonicalUnit _valueByConvertingValue:_unit toUnit:1.0];
    v10 = v9;
    histogramAnchor = [p_isa[26] histogramAnchor];

    if (histogramAnchor)
    {
      histogramAnchor2 = [p_isa[26] histogramAnchor];
      [histogramAnchor2 doubleValueForUnit:_unit];
      v14 = v13;
    }

    else
    {
      v14 = 0.0;
    }

    histogramBucketSize2 = [p_isa[26] histogramBucketSize];
    [histogramBucketSize2 doubleValueForUnit:_unit];
    v18 = v17;

    v19 = [HDQuantityDistributionCalculator alloc];
    startDate = [p_isa[26] startDate];
    endDate = [p_isa[26] endDate];
    anchorDate = [p_isa[26] anchorDate];
    intervalComponents = [p_isa[26] intervalComponents];
    v203 = [(HDQuantityDistributionCalculator *)v19 initWithStartDate:startDate endDate:endDate anchorDate:anchorDate intervalComponents:intervalComponents histogramBucketAnchor:v14 histogramBucketSize:v18];

    v24 = v206;
    options = [v206[26] options];
    if (options)
    {
      intervalComponents2 = [v206[26] intervalComponents];
      v27 = [intervalComponents2 copy];

      calendar = [v27 calendar];

      if (!calendar)
      {
        currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
        [v27 setCalendar:currentCalendar];
      }

      v30 = objc_alloc(MEMORY[0x277CCDD78]);
      anchorDate2 = [v206[26] anchorDate];
      v32 = [v30 initWithAnchorDate:anchorDate2 intervalComponents:v27];

      v33 = [HDStatisticsCollectionCalculatorDefaultSourceOrderProvider alloc];
      profile = [v206 profile];
      quantityType2 = [v206 quantityType];
      v36 = [(HDStatisticsCollectionCalculatorDefaultSourceOrderProvider *)v33 initWithProfile:profile quantityType:quantityType2];

      quantityType3 = [v206 quantityType];
      v38 = [HDStatisticsCollectionCalculator calculatorForQuantityType:quantityType3 intervalCollection:v32 options:66 mergeStrategy:0];

      v24 = v206;
      [v38 setSourceOrderProvider:v36];

      v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v235[0] = MEMORY[0x277D85DD0];
      v235[1] = 3221225472;
      v235[2] = __72__HDQuantityDistributionQueryServer__queue_fetchHistogramDataWithError___block_invoke;
      v235[3] = &unk_278614AE0;
      v200 = v39;
      v236 = v200;
      [v38 setStatisticsHandler:v235];
      v202 = v38;
      [v38 reset];
    }

    else
    {
      v200 = 0;
      v202 = 0;
    }

    options2 = [v24[26] options];
    contextStyle = [v24[26] contextStyle];
    v42 = 0;
    v234 = 0;
    v208 = _unit;
    v227 = options;
    if (contextStyle > 3)
    {
      if (contextStyle <= 5)
      {
        v43 = (options2 >> 1) & 1;
        if (contextStyle == 4)
        {
          v44 = v24;
          v45 = 147;
        }

        else
        {
          v44 = v24;
          v45 = 178;
        }

        goto LABEL_27;
      }

      if (contextStyle == 6)
      {
        v64 = _HKCategoryValueSleepAnalysisAsleepValues();
        v67 = [MEMORY[0x277CCD0C0] dataTypeWithCode:63];
        v68 = [(HDQuantityDistributionQueryServer *)v24 _sqlitePredicateForObjectType:v67 errorOut:&v234];

        if (v64)
        {
          v69 = HDCategorySampleEntityPredicateEqualToValues(v64);
          v70 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v68 otherPredicate:v69];

          v68 = v70;
        }

        v71 = objc_opt_class();
        v46 = [(HDQuantityDistributionQueryServer *)v24 _walkSampleDatesWithPredicate:v68 entityClass:v71 errorOut:&v234];

        goto LABEL_35;
      }

      v46 = 0;
      if (contextStyle == 7)
      {
        v43 = (options2 >> 1) & 1;
        v47 = &unk_283CB3EE8;
        v44 = v24;
        v45 = 199;
LABEL_28:
        v64 = [(HDQuantityDistributionQueryServer *)v44 _categoryPredicateWithTypeCode:v45 matchingValue:v47 errorOut:&v234];
        v65 = objc_opt_class();
        v66 = [(HDQuantityDistributionQueryServer *)v24 _walkSampleDatesWithPredicate:v64 entityClass:v65 includeUUID:v43 errorOut:&v234];
LABEL_34:
        v46 = v66;
LABEL_35:

        v42 = v234;
        goto LABEL_36;
      }

      goto LABEL_36;
    }

    if (contextStyle == 1)
    {
      v48 = [MEMORY[0x277CCD720] categoryTypeForIdentifier:*MEMORY[0x277CCBA30]];
      v223 = [(HDQuantityDistributionQueryServer *)v24 _sqlitePredicateForObjectType:v48 errorOut:&v234];

      v221 = HDDataEntityPredicateForObjectsFromAppleWatchSources(1);
      profile2 = [v24 profile];
      metadataManager = [profile2 metadataManager];
      v51 = *MEMORY[0x277CCE060];
      v52 = [metadataManager predicateWithMetadataKey:*MEMORY[0x277CCE060] exists:0];

      v53 = MEMORY[0x277D10B20];
      aBlock = v221;
      v238 = v52;
      [MEMORY[0x277CBEA60] arrayWithObjects:&aBlock count:2];
      v55 = v54 = options2;
      v56 = [v53 predicateMatchingAllPredicates:v55];

      profile3 = [v206 profile];
      metadataManager2 = [profile3 metadataManager];
      [MEMORY[0x277CBEB98] setWithObject:&unk_283CB3F00];
      v60 = v59 = clientProxy;
      v61 = [metadataManager2 predicateWithMetadataKey:v51 allowedValues:v60];

      clientProxy = v59;
      v62 = MEMORY[0x277D10B20];
      *&v249 = v56;
      *(&v249 + 1) = v61;
      v63 = [MEMORY[0x277CBEA60] arrayWithObjects:&v249 count:2];
      options2 = [v62 predicateMatchingAnyPredicates:v63];

      v64 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v223 otherPredicate:options2];

      LOBYTE(options2) = v54;
      _unit = v208;

      v24 = v206;
    }

    else
    {
      if (contextStyle != 2)
      {
        v46 = 0;
        if (contextStyle == 3)
        {
          v43 = (options2 >> 1) & 1;
          v44 = v24;
          v45 = 140;
LABEL_27:
          v47 = 0;
          goto LABEL_28;
        }

LABEL_36:
        v74 = v42;
        if (!v46 && v74)
        {
          p_isa = 0;
          v75 = v74;
          v76 = v75;
LABEL_124:

          goto LABEL_125;
        }

        v224 = options2;
        v196 = v74;
        objectType = [v24[26] objectType];
        v233 = 0;
        v78 = [(HDQuantityDistributionQueryServer *)v24 _sqlitePredicateForObjectType:objectType errorOut:&v233];
        v79 = v233;
        v197 = v78;
        v195 = v79;
        if (!v78)
        {
          v102 = v79;
          if (v102)
          {
            v76 = v102;
            p_isa = 0;
            v103 = v102;
          }

          else
          {
            v103 = 0;
            p_isa = 0;
            v76 = v205;
          }

          goto LABEL_123;
        }

        v207 = v46;
        v219 = v227 & 1;
        v80 = *MEMORY[0x277CCCB58];
        v81 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB58]];
        v82 = [objectType isEqual:v81];

        options3 = [v24[26] options];
        v84 = [MEMORY[0x277CCD830] _quantityTypeWithCode:272];
        v85 = [HDQuantitySampleAttenuationProvider alloc];
        profile4 = [v24 profile];
        v193 = v84;
        v87 = [(HDQuantitySampleAttenuationProvider *)v85 initWithQuantityType:v84 profile:profile4];

        v192 = v87;
        v88 = [[HDQuantitySampleAttenuationEngine alloc] initWithAttenuationEngineDelegate:v87];
        v222 = objectType;
        v191 = v88;
        if (v82 && (options3 & 4) != 0)
        {
          v89 = v88;
          v90 = v46;
          v91 = v197;
          v92 = v203;
          v93 = v202;
          v94 = v89;
          aBlock = MEMORY[0x277D85DD0];
          v238 = 3221225472;
          v239 = __208__HDQuantityDistributionQueryServer__attenuatedSampleWalkBlockUsingDateIntervals_sqlitePredicate_dataFactor_distributionCalculator_computeAverageAndDuration_calculatorForAverageAndDuration_attenuationEngine___block_invoke;
          v240 = &unk_27862B228;
          v241 = v206;
          v95 = v91;
          v242 = v95;
          v96 = v90;
          v243 = v96;
          v247 = v10;
          v97 = v92;
          v244 = v97;
          v98 = v227 & 1;
          v248 = v227 & 1;
          v99 = v93;
          v245 = v99;
          v100 = v94;
          v246 = v100;
          v194 = _Block_copy(&aBlock);

          sampleType = v201;
          if (v227)
          {
LABEL_43:
            v232 = 0;
            v101 = [v202 performInitialStatisticsTransaction:v194 error:&v232];
            goto LABEL_51;
          }
        }

        else
        {
          quantityType4 = [v206 quantityType];
          v105 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:v80];
          v106 = [quantityType4 isEqual:v105];

          sampleType = v201;
          if (v106)
          {
            v107 = 1;
          }

          else
          {
            quantityType5 = [v206 quantityType];
            v109 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB88]];
            v107 = [quantityType5 isEqual:v109];
          }

          v110 = v46;
          v111 = v197;
          v112 = v203;
          v113 = v202;
          aBlock = MEMORY[0x277D85DD0];
          v238 = 3221225472;
          v239 = __214__HDQuantityDistributionQueryServer__standardSampleWalkBlockUsingDateIntervals_sqlitePredicate_dataFactor_distributionCalculator_computeAverageAndDuration_calculatorForAverageAndDuration_resolveOverlappingSamples___block_invoke;
          v240 = &unk_27862B1B0;
          v241 = v206;
          v114 = v111;
          v242 = v114;
          v115 = v110;
          v243 = v115;
          v246 = v10;
          LOBYTE(v247) = v107;
          v116 = v112;
          v244 = v116;
          v98 = v227 & 1;
          BYTE1(v247) = v227 & 1;
          v117 = v113;
          v245 = v117;
          v194 = _Block_copy(&aBlock);

          objectType = v222;
          if (v227)
          {
            goto LABEL_43;
          }
        }

        v232 = 0;
        v101 = v194[2](v194, &v232);
LABEL_51:
        v118 = v101;
        v119 = v232;
        if (v118)
        {
          v186 = v119;
          v217 = [(HDQuantityDistributionCalculator *)v203 quantityDistributionsWithUnit:_unit];
          v187 = clientProxy;
          if ((v224 & 2) != 0 && v46)
          {
            v120 = v217;
            v121 = v46;
            v122 = *(v121 + 5);
            if (v122 && [v122 count])
            {
              v123 = [*(v121 + 5) objectAtIndexedSubscript:0];
              v124 = 0;
              v125 = 0;
              if (v123)
              {
                v125 = v123[1];
              }

              *(v121 + 1) = v125;

              v126 = [*(v121 + 5) objectAtIndexedSubscript:0];
              if (v126)
              {
                v124 = v126[2];
              }

              *(v121 + 2) = v124;

              *(v121 + 3) = 0;
            }

            v217 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v249 = 0u;
            v250 = 0u;
            v251 = 0u;
            v252 = 0u;
            obj = v120;
            v225 = [obj countByEnumeratingWithState:&v249 objects:&aBlock count:16];
            if (v225)
            {
              v215 = *v250;
              do
              {
                v127 = 0;
                do
                {
                  if (*v250 != v215)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v128 = *(*(&v249 + 1) + 8 * v127);
                  startDate2 = [v128 startDate];
                  [startDate2 timeIntervalSinceReferenceDate];
                  v131 = v130;
                  endDate2 = [v128 endDate];
                  [endDate2 timeIntervalSinceReferenceDate];
                  v134 = *(v121 + 5);
                  if (!v134)
                  {
                    goto LABEL_94;
                  }

                  if (!*(v121 + 32))
                  {
                    goto LABEL_94;
                  }

                  v135 = v133;
                  if (*(v121 + 1) > v133)
                  {
                    goto LABEL_94;
                  }

                  v136 = *(v121 + 3);
                  if (v136 >= [v134 count])
                  {
                    goto LABEL_94;
                  }

                  while (*(v121 + 2) < v131)
                  {
                    v137 = *(v121 + 3);
                    if (v137 >= [*(v121 + 5) count] - 1)
                    {
                      break;
                    }

                    ++*(v121 + 3);
                    v138 = [*(v121 + 5) objectAtIndexedSubscript:?];
                    v139 = 0;
                    v140 = 0;
                    if (v138)
                    {
                      v140 = v138[1];
                    }

                    *(v121 + 1) = v140;

                    v141 = [*(v121 + 5) objectAtIndexedSubscript:*(v121 + 3)];
                    if (v141)
                    {
                      v139 = v141[2];
                    }

                    *(v121 + 2) = v139;
                  }

                  if (*(v121 + 1) < v135)
                  {
                    v142 = 0;
                    while (1)
                    {
                      v143 = [*(v121 + 5) objectAtIndexedSubscript:*(v121 + 3)];
                      v144 = v143;
                      if (v143)
                      {
                        v145 = *(v143 + 24);
                      }

                      else
                      {
                        v145 = 0;
                      }

                      v146 = v145;

                      if (v146)
                      {
                        if (!v142)
                        {
                          v142 = objc_alloc_init(MEMORY[0x277CBEB18]);
                        }

                        [v142 addObject:v146];
                      }

                      if (*(v121 + 2) > v135)
                      {
                        break;
                      }

                      v147 = *(v121 + 3) + 1;
                      *(v121 + 3) = v147;
                      if (v147 >= [*(v121 + 5) count])
                      {
                        break;
                      }

                      v148 = [*(v121 + 5) objectAtIndexedSubscript:*(v121 + 3)];
                      v149 = 0;
                      v150 = 0;
                      if (v148)
                      {
                        v150 = v148[1];
                      }

                      *(v121 + 1) = v150;

                      v151 = [*(v121 + 5) objectAtIndexedSubscript:*(v121 + 3)];
                      if (v151)
                      {
                        v149 = v151[2];
                      }

                      *(v121 + 2) = v149;

                      if (*(v121 + 1) >= v135)
                      {
                        goto LABEL_95;
                      }
                    }
                  }

                  else
                  {
LABEL_94:
                    v142 = 0;
                  }

LABEL_95:

                  if (v142 && [v142 count])
                  {
                    v213 = objc_alloc(MEMORY[0x277CCDE20]);
                    startDate3 = [v128 startDate];
                    endDate3 = [v128 endDate];
                    minimumBucketValue = [v128 minimumBucketValue];
                    [v128 minimumValue];
                    v154 = v228 = v142;
                    maximumValue = [v128 maximumValue];
                    averageValue = [v128 averageValue];
                    duration = [v128 duration];
                    histogramCounts = [v128 histogramCounts];
                    v159 = [v213 initWithStartDate:startDate3 endDate:endDate3 minimumBucketValue:minimumBucketValue minimumValue:v154 maximumValue:maximumValue averageValue:averageValue duration:duration histogramCounts:histogramCounts contextIdentifiers:v228];

                    v46 = v207;
                    _unit = v208;

                    v142 = v228;
                    [v217 addObject:v159];
                  }

                  else
                  {
                    [v217 addObject:v128];
                  }

                  ++v127;
                  objectType = v222;
                  v98 = v219;
                }

                while (v127 != v225);
                v160 = [obj countByEnumeratingWithState:&v249 objects:&aBlock count:16];
                v225 = v160;
              }

              while (v160);
            }

            clientProxy = v187;
            sampleType = v201;
          }

          v229 = v217;
          if (v98)
          {
            v163 = v200;
            v190 = _unit;
            p_isa = objc_alloc_init(MEMORY[0x277CBEB18]);
            if ([v229 count])
            {
              v164 = 0;
              v165 = 0;
              v188 = p_isa;
              v189 = v163;
              do
              {
                if (v165 >= [v163 count])
                {
                  break;
                }

                v166 = [v229 objectAtIndexedSubscript:v164];
                v167 = [v163 objectAtIndexedSubscript:v165];
                startDate4 = [v166 startDate];
                startDate5 = [v167 startDate];
                v226 = startDate5;
                if ([startDate4 isEqual:startDate5])
                {
                  averageQuantity = [v167 averageQuantity];
                  v216 = v164;
                  [averageQuantity doubleValueForUnit:v190];
                  v172 = v171;

                  v220 = [MEMORY[0x277CCD7E8] quantityWithUnit:v190 doubleValue:v172];
                  v214 = objc_alloc(MEMORY[0x277CCDE20]);
                  startDate6 = [v166 startDate];
                  obja = [v166 endDate];
                  minimumBucketValue2 = [v166 minimumBucketValue];
                  minimumValue = [v166 minimumValue];
                  maximumValue2 = [v166 maximumValue];
                  duration2 = [v167 duration];
                  histogramCounts2 = [v166 histogramCounts];
                  [v166 contextIdentifiers];
                  v212 = v167;
                  v178 = startDate4;
                  v180 = v179 = v165;
                  v181 = minimumValue;
                  v182 = [v214 initWithStartDate:startDate6 endDate:obja minimumBucketValue:minimumBucketValue2 minimumValue:minimumValue maximumValue:maximumValue2 averageValue:v220 duration:duration2 histogramCounts:histogramCounts2 contextIdentifiers:v180];

                  v183 = v179;
                  startDate4 = v178;
                  v167 = v212;

                  v163 = v189;
                  sampleType = v201;

                  p_isa = v188;
                  [v188 addObject:v182];
                  v164 = v216 + 1;
                  v165 = v183 + 1;

                  objectType = v222;
                }

                else if ([startDate4 hk_isBeforeDate:startDate5])
                {
                  [p_isa addObject:v166];
                  ++v164;
                }

                else
                {
                  ++v165;
                }
              }

              while (v164 < [v229 count]);
            }

            v76 = v205;
            clientProxy = v187;
            v46 = v207;
            _unit = v208;
          }

          else
          {
            v76 = v205;
            p_isa = v229;
          }

          v162 = v186;
        }

        else
        {
          v161 = v119;
          if (v161)
          {
            v76 = v161;
            p_isa = 0;
            v162 = v161;

LABEL_122:
            v103 = v194;
LABEL_123:

            v75 = v196;
            goto LABEL_124;
          }

          v229 = 0;
          v162 = 0;
          p_isa = 0;
          v76 = v205;
        }

        goto LABEL_122;
      }

      workoutType = [MEMORY[0x277CCD720] workoutType];
      v64 = [(HDQuantityDistributionQueryServer *)v24 _sqlitePredicateForObjectType:workoutType errorOut:&v234];
    }

    v73 = objc_opt_class();
    v66 = [(HDQuantityDistributionQueryServer *)v24 _walkSampleDatesWithPredicate:v64 entityClass:v73 errorOut:&v234];
    goto LABEL_34;
  }

  v76 = v205;
LABEL_125:
  v15 = v76;

  if (!p_isa)
  {
    p_isa = [v206 queryUUID];
    [clientProxy client_deliverError:v15 forQuery:p_isa];
    goto LABEL_127;
  }

LABEL_126:
  queryUUID2 = [v206 queryUUID];
  [clientProxy client_deliverDistributionCollection:p_isa forQuery:queryUUID2];

LABEL_127:
  v185 = *MEMORY[0x277D85DE8];
}

- (id)_sqlitePredicateForObjectType:(uint64_t)type errorOut:
{
  v5 = a2;
  v6 = HDSampleEntityPredicateForDataType(v5);
  filter = [self filter];

  if (!filter)
  {
    v15 = v6;
    goto LABEL_7;
  }

  filter2 = [self filter];
  v9 = objc_opt_respondsToSelector();

  filter3 = [self filter];
  if (v9)
  {
    v11 = [MEMORY[0x277CBEB98] setWithObject:v5];
    v12 = [filter3 builder_filterWithDataTypes:v11];

    filter3 = v12;
  }

  profile = [self profile];
  v14 = [filter3 predicateWithProfile:profile];

  if (v14)
  {
    v15 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v14 otherPredicate:v6];

LABEL_7:
    v16 = v15;
    goto LABEL_9;
  }

  [MEMORY[0x277CCA9B8] hk_assignError:type code:100 format:@"Error building predicate for query"];
  v16 = 0;
LABEL_9:

  return v16;
}

uint64_t __214__HDQuantityDistributionQueryServer__standardSampleWalkBlockUsingDateIntervals_sqlitePredicate_dataFactor_distributionCalculator_computeAverageAndDuration_calculatorForAverageAndDuration_resolveOverlappingSamples___block_invoke(uint64_t a1, void *a2)
{
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v37 = 1;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v35 = 0;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __214__HDQuantityDistributionQueryServer__standardSampleWalkBlockUsingDateIntervals_sqlitePredicate_dataFactor_distributionCalculator_computeAverageAndDuration_calculatorForAverageAndDuration_resolveOverlappingSamples___block_invoke_2;
  v26[3] = &unk_27862B188;
  v6 = *(a1 + 48);
  v32 = *(a1 + 72);
  v33 = *(a1 + 80);
  v7 = *(a1 + 32);
  v27 = v6;
  v28 = v7;
  v31 = v36;
  v29 = *(a1 + 56);
  v34 = *(a1 + 81);
  v30 = *(a1 + 64);
  LOBYTE(v4) = [(HDQuantityDistributionQueryServer *)v4 _walkSampleValuesWithPredicate:v5 errorOut:&v35 handler:v26];
  v8 = v35;
  v9 = v8;
  if (v4)
  {
    if (*(a1 + 80) == 1)
    {
      v10 = *(a1 + 32);
      v11 = *(v10 + 216);
      v25 = v8;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __214__HDQuantityDistributionQueryServer__standardSampleWalkBlockUsingDateIntervals_sqlitePredicate_dataFactor_distributionCalculator_computeAverageAndDuration_calculatorForAverageAndDuration_resolveOverlappingSamples___block_invoke_4;
      v20[3] = &unk_27862B160;
      v20[4] = v10;
      v21 = *(a1 + 56);
      v24 = *(a1 + 81);
      v22 = *(a1 + 64);
      v23 = *(a1 + 72);
      v12 = [v11 fetchFinalOverlapSamplesWithErrorOut:&v25 handler:v20];
      v13 = v25;

      if ((v12 & 1) == 0)
      {
        v14 = v13;
        v15 = v14;
        if (v14)
        {
          if (a2)
          {
            v16 = v14;
            *a2 = v15;
          }

          else
          {
            _HKLogDroppedError();
          }
        }
      }
    }

    else
    {
      v12 = 1;
      v13 = v8;
    }
  }

  else
  {
    v17 = v8;
    v13 = v17;
    if (v17)
    {
      if (a2)
      {
        v18 = v17;
        *a2 = v13;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v12 = 0;
  }

  _Block_object_dispose(v36, 8);
  return v12;
}

uint64_t __214__HDQuantityDistributionQueryServer__standardSampleWalkBlockUsingDateIntervals_sqlitePredicate_dataFactor_distributionCalculator_computeAverageAndDuration_calculatorForAverageAndDuration_resolveOverlappingSamples___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v12 = *(a1 + 32);
  if (v12 && ([(_HDQuantityDateIntervals *)v12 insideRanges:a5]& 1) == 0 && ![(_HDQuantityDateIntervals *)*(a1 + 32) insideRanges:a6])
  {
    return 1;
  }

  v13 = *(a1 + 72);
  v14 = v13 * a4;
  v15 = *(a1 + 40);
  if (*(a1 + 80) == 1)
  {
    v16 = *(v15 + 216);
    v17 = *(*(*(a1 + 64) + 8) + 24);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __214__HDQuantityDistributionQueryServer__standardSampleWalkBlockUsingDateIntervals_sqlitePredicate_dataFactor_distributionCalculator_computeAverageAndDuration_calculatorForAverageAndDuration_resolveOverlappingSamples___block_invoke_3;
    v30[3] = &unk_27862B160;
    v30[4] = v15;
    v31 = *(a1 + 48);
    v34 = *(a1 + 81);
    v32 = *(a1 + 56);
    v33 = *(a1 + 72);
    v24 = a5;
    v25 = a6;
    v26 = v14;
    v27 = 1;
    memset(v28, 0, sizeof(v28));
    v29 = a2;
    v18 = [v16 fetchOverlapProcessSamplesFrom:&v24 setAnchorTime:v17 errorOut:a3 handler:v30];
    v19 = *(*(a1 + 64) + 8);
    if (*(v19 + 24) == 1)
    {
      *(v19 + 24) = 0;
    }
  }

  else
  {
    v20 = *(a1 + 81);
    v21 = *(a1 + 48);
    v22 = *(a1 + 56);
    v24 = a5;
    v25 = a6;
    v26 = v14;
    v18 = 1;
    v27 = 1;
    memset(v28, 0, sizeof(v28));
    v29 = a2;
    [(HDQuantityDistributionQueryServer *)v15 _addSampleIntoDistributionCalculatorAndAverageAndDurationCalculator:v21 distributionCalculator:v20 computeAverageAndDuration:v22 calculatorForAverageAndDuration:v13 dataFactor:?];
  }

  return v18;
}

uint64_t __214__HDQuantityDistributionQueryServer__standardSampleWalkBlockUsingDateIntervals_sqlitePredicate_dataFactor_distributionCalculator_computeAverageAndDuration_calculatorForAverageAndDuration_resolveOverlappingSamples___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 >= 1)
  {
    v12 = v3;
    v13 = v4;
    v6 = a2;
    do
    {
      v8 = *(a3 + 16);
      v10[0] = *a3;
      v10[1] = v8;
      v11 = *(a3 + 32);
      [(HDQuantityDistributionQueryServer *)*(a1 + 32) _addSampleIntoDistributionCalculatorAndAverageAndDurationCalculator:v10 distributionCalculator:*(a1 + 40) computeAverageAndDuration:*(a1 + 64) calculatorForAverageAndDuration:*(a1 + 48) dataFactor:*(a1 + 56)];
      a3 += 40;
      --v6;
    }

    while (v6);
  }

  return 1;
}

- (void)_addSampleIntoDistributionCalculatorAndAverageAndDurationCalculator:(void *)calculator distributionCalculator:(int)distributionCalculator computeAverageAndDuration:(void *)duration calculatorForAverageAndDuration:(double)andDuration dataFactor:
{
  calculatorCopy = calculator;
  durationCopy = duration;
  if (self)
  {
    [calculatorCopy addDataPoint:a2[2] startTime:*a2 endTime:a2[1]];
    if (distributionCalculator)
    {
      [durationCopy addSampleValue:*(a2 + 4) startTime:0 endTime:a2[2] / andDuration sourceID:*a2 error:a2[1]];
    }
  }
}

- (BOOL)_walkSampleValuesWithPredicate:(uint64_t)predicate errorOut:(void *)out handler:
{
  outCopy = out;
  if (self)
  {
    v8 = a2;
    profile = [self profile];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __85__HDQuantityDistributionQueryServer__walkSampleValuesWithPredicate_errorOut_handler___block_invoke;
    v12[3] = &unk_27862B250;
    v13 = outCopy;
    v10 = [HDQuantitySampleValueEnumerator orderedQuantityValuesForPredicate:v8 profile:profile options:4 error:predicate handler:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __214__HDQuantityDistributionQueryServer__standardSampleWalkBlockUsingDateIntervals_sqlitePredicate_dataFactor_distributionCalculator_computeAverageAndDuration_calculatorForAverageAndDuration_resolveOverlappingSamples___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 >= 1)
  {
    v12 = v3;
    v13 = v4;
    v6 = a2;
    do
    {
      v8 = *(a3 + 16);
      v10[0] = *a3;
      v10[1] = v8;
      v11 = *(a3 + 32);
      [(HDQuantityDistributionQueryServer *)*(a1 + 32) _addSampleIntoDistributionCalculatorAndAverageAndDurationCalculator:v10 distributionCalculator:*(a1 + 40) computeAverageAndDuration:*(a1 + 64) calculatorForAverageAndDuration:*(a1 + 48) dataFactor:*(a1 + 56)];
      a3 += 40;
      --v6;
    }

    while (v6);
  }

  return 1;
}

uint64_t __208__HDQuantityDistributionQueryServer__attenuatedSampleWalkBlockUsingDateIntervals_sqlitePredicate_dataFactor_distributionCalculator_computeAverageAndDuration_calculatorForAverageAndDuration_attenuationEngine___block_invoke(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2020000000;
  v47 = 1;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v45 = 0;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __208__HDQuantityDistributionQueryServer__attenuatedSampleWalkBlockUsingDateIntervals_sqlitePredicate_dataFactor_distributionCalculator_computeAverageAndDuration_calculatorForAverageAndDuration_attenuationEngine___block_invoke_2;
  v36[3] = &unk_27862B200;
  v6 = *(a1 + 48);
  v43 = *(a1 + 80);
  v7 = *(a1 + 32);
  v37 = v6;
  v38 = v7;
  v42 = v46;
  v39 = *(a1 + 56);
  v44 = *(a1 + 88);
  v40 = *(a1 + 64);
  v41 = *(a1 + 72);
  LOBYTE(v4) = [(HDQuantityDistributionQueryServer *)v4 _walkSampleValuesWithPredicate:v5 errorOut:&v45 handler:v36];
  v8 = v45;
  v9 = v8;
  if (v4)
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 216);
    v35 = v8;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __208__HDQuantityDistributionQueryServer__attenuatedSampleWalkBlockUsingDateIntervals_sqlitePredicate_dataFactor_distributionCalculator_computeAverageAndDuration_calculatorForAverageAndDuration_attenuationEngine___block_invoke_4;
    v30[3] = &unk_27862B1D8;
    v30[4] = v10;
    v31 = *(a1 + 56);
    v34 = *(a1 + 88);
    v32 = *(a1 + 64);
    v33 = *(a1 + 72);
    v12 = [v11 fetchFinalOverlapSamplesWithErrorOut:&v35 handler:v30];
    v13 = v35;

    if (v12)
    {
      v14 = *(a1 + 72);
      v29 = 0;
      v15 = [v14 delegateLoadingWasSuccessful:&v29];
      v16 = v29;
      v17 = v16;
      if ((v15 & 1) == 0)
      {
        v18 = v16;
        v19 = v18;
        if (v18)
        {
          if (a2)
          {
            v20 = v18;
            *a2 = v19;
          }

          else
          {
            _HKLogDroppedError();
          }
        }
      }
    }

    else
    {
      v23 = v13;
      v24 = v23;
      if (v23)
      {
        if (a2)
        {
          v25 = v23;
          *a2 = v24;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      _HKInitializeLogging();
      v26 = *MEMORY[0x277CCC308];
      if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v49 = v24;
        _os_log_error_impl(&dword_228986000, v26, OS_LOG_TYPE_ERROR, "Unable to fetch hearing protection samples: %{public}@", buf, 0xCu);
      }

      v15 = 0;
    }
  }

  else
  {
    v21 = v8;
    v13 = v21;
    if (v21)
    {
      if (a2)
      {
        v22 = v21;
        *a2 = v13;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v15 = 0;
  }

  _Block_object_dispose(v46, 8);
  v27 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t __208__HDQuantityDistributionQueryServer__attenuatedSampleWalkBlockUsingDateIntervals_sqlitePredicate_dataFactor_distributionCalculator_computeAverageAndDuration_calculatorForAverageAndDuration_attenuationEngine___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v12 = *(a1 + 32);
  if (v12 && ([(_HDQuantityDateIntervals *)v12 insideRanges:a5]& 1) == 0 && ![(_HDQuantityDateIntervals *)*(a1 + 32) insideRanges:a6])
  {
    return 1;
  }

  v13 = *(*(*(a1 + 72) + 8) + 24);
  v23 = *(a1 + 40);
  v14 = *(v23 + 216);
  v15 = *(a1 + 80) * a4;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __208__HDQuantityDistributionQueryServer__attenuatedSampleWalkBlockUsingDateIntervals_sqlitePredicate_dataFactor_distributionCalculator_computeAverageAndDuration_calculatorForAverageAndDuration_attenuationEngine___block_invoke_3;
  v28[3] = &unk_27862B1D8;
  v16 = *(&v23 + 1);
  v31 = *(a1 + 88);
  v17 = *(a1 + 56);
  v18 = *(a1 + 64);
  *&v19 = v17;
  *(&v19 + 1) = v18;
  v29 = v23;
  v30 = v19;
  *v24 = a5;
  *&v24[1] = a6;
  *&v24[2] = v15;
  v25 = 1;
  memset(v26, 0, sizeof(v26));
  v27 = a2;
  v20 = [v14 fetchOverlapProcessSamplesFrom:v24 setAnchorTime:v13 errorOut:a3 handler:v28];
  v21 = *(*(a1 + 72) + 8);
  if (*(v21 + 24) == 1)
  {
    *(v21 + 24) = 0;
  }

  return v20;
}

- (void)_addAttenuatedSamplesUsingAttenuateSamples:(uint64_t)samples sampleCount:(void *)count distributionCalculator:(int)calculator computeAverageAndDuration:(void *)duration calculatorForAverageAndDuration:(void *)andDuration attenuationEngine:
{
  countCopy = count;
  durationCopy = duration;
  andDurationCopy = andDuration;
  if (self && samples >= 1)
  {
    v16 = 0;
    do
    {
      v30 = 0;
      v28 = 0u;
      v29 = 0u;
      if (andDurationCopy)
      {
        v17 = (a2 + 40 * v16);
        v18 = v17[1];
        v25 = *v17;
        v26 = v18;
        v27 = *(v17 + 4);
        [andDurationCopy attenuateSample:&v25];
        while (*(&v28 + 1) - *&v28 > 0.000001)
        {
          v25 = v28;
          v26 = v29;
          v27 = v30;
          [(HDQuantityDistributionQueryServer *)self _addSampleIntoDistributionCalculatorAndAverageAndDurationCalculator:countCopy distributionCalculator:calculator computeAverageAndDuration:durationCopy calculatorForAverageAndDuration:1.0 dataFactor:?];
          v19 = *(v17 + 8);
          if (*&v19 - *(&v28 + 1) <= 0.000001)
          {
            break;
          }

          v20 = *(v17 + 24);
          v21 = *(&v28 + 1);
          v22 = v19;
          v23 = v20;
          v24 = 0;
          [andDurationCopy attenuateSample:&v21];
          v28 = v25;
          v29 = v26;
          v30 = v27;
        }
      }

      ++v16;
    }

    while (v16 != samples);
  }
}

- (id)_walkSampleDatesWithPredicate:(uint64_t)predicate entityClass:(uint64_t)class errorOut:
{
  v4 = [(HDQuantityDistributionQueryServer *)self _walkSampleDatesWithPredicate:a2 entityClass:predicate includeUUID:0 errorOut:class];

  return v4;
}

- (id)_categoryPredicateWithTypeCode:(void *)code matchingValue:(uint64_t)value errorOut:
{
  codeCopy = code;
  v8 = [MEMORY[0x277CCD0C0] dataTypeWithCode:a2];
  v9 = [(HDQuantityDistributionQueryServer *)self _sqlitePredicateForObjectType:v8 errorOut:value];

  if (codeCopy)
  {
    v10 = HDCategorySampleEntityPredicateForValue(1);
    v11 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v9 otherPredicate:v10];

    v9 = v11;
  }

  return v9;
}

- (id)_walkSampleDatesWithPredicate:(uint64_t)predicate entityClass:(char)class includeUUID:(uint64_t)d errorOut:
{
  v9 = a2;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__173;
  v24 = __Block_byref_object_dispose__173;
  v25 = objc_alloc_init(_HDQuantityDateIntervals);
  profile = [self profile];
  database = [profile database];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __100__HDQuantityDistributionQueryServer__walkSampleDatesWithPredicate_entityClass_includeUUID_errorOut___block_invoke;
  v15[3] = &unk_27862B2A0;
  predicateCopy = predicate;
  v12 = v9;
  classCopy = class;
  v16 = v12;
  v17 = &v20;
  LODWORD(d) = [(HDHealthEntity *)HDSampleEntity performReadTransactionWithHealthDatabase:database error:d block:v15];

  if (d)
  {
    v13 = v21[5];
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&v20, 8);

  return v13;
}

uint64_t __100__HDQuantityDistributionQueryServer__walkSampleDatesWithPredicate_entityClass_includeUUID_errorOut___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D10B80];
  v6 = a2;
  v7 = objc_alloc_init(v5);
  [v7 setEntityClass:*(a1 + 48)];
  v8 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"start_date" entityClass:objc_opt_class() ascending:1];
  v28[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
  [v7 setOrderingTerms:v9];

  [v7 setPredicate:*(a1 + 32)];
  v10 = objc_alloc(MEMORY[0x277D10B78]);
  v11 = [v6 databaseForEntityClass:objc_opt_class()];

  v12 = [v10 initWithDatabase:v11 descriptor:v7];
  v13 = MEMORY[0x277CBEB18];
  v27[0] = @"start_date";
  v27[1] = @"end_date";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v15 = [v13 arrayWithArray:v14];

  v16 = *(a1 + 56);
  if (v16 == 1)
  {
    [v15 addObject:@"uuid"];
    LOBYTE(v16) = *(a1 + 56);
  }

  v26 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __100__HDQuantityDistributionQueryServer__walkSampleDatesWithPredicate_entityClass_includeUUID_errorOut___block_invoke_2;
  v24[3] = &unk_27862B278;
  v25 = v16;
  v24[4] = *(a1 + 40);
  v17 = [v12 enumerateProperties:v15 error:&v26 enumerationHandler:v24];
  v18 = v26;
  v19 = v18;
  if ((v17 & 1) == 0)
  {
    v20 = v18;
    if (v20)
    {
      if (a3)
      {
        v21 = v20;
        *a3 = v20;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t __100__HDQuantityDistributionQueryServer__walkSampleDatesWithPredicate_entityClass_includeUUID_errorOut___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x22AAC6C50](a3, 0);
  v6 = MEMORY[0x22AAC6C50](a3, 1);
  v7 = 0;
  if (*(a1 + 40) == 1)
  {
    v7 = MEMORY[0x22AAC6CA0](a3, 2);
  }

  v8 = *(*(*(a1 + 32) + 8) + 40);
  v9 = v7;
  if (v8)
  {
    v10 = *(v8 + 40);
    if (!v10)
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v12 = *(v8 + 40);
      *(v8 + 40) = v11;
    }

    v13 = [_HDQuantityIntervalPair alloc];
    v14 = v9;
    if (v13)
    {
      v17.receiver = v13;
      v17.super_class = _HDQuantityIntervalPair;
      v15 = objc_msgSendSuper2(&v17, sel_init);
      v13 = v15;
      if (v15)
      {
        v15->_startInterval = v5;
        v15->_endInterval = v6;
        objc_storeStrong(&v15->_uuid, v7);
      }
    }

    [*(v8 + 40) addObject:v13];
    if (!v10)
    {
      *(v8 + 8) = v5;
      *(v8 + 16) = v6;
      *(v8 + 24) = 0;
    }

    if (v14 && (*(v8 + 32) & 1) == 0)
    {
      *(v8 + 32) = 1;
    }
  }

  return 1;
}

@end