@interface HDQuantityDistributionQueryServer
- (BOOL)_walkSampleValuesWithPredicate:(uint64_t)a3 errorOut:(void *)a4 handler:;
- (HDQuantityDistributionQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (id)_categoryPredicateWithTypeCode:(void *)a3 matchingValue:(uint64_t)a4 errorOut:;
- (id)_sqlitePredicateForObjectType:(uint64_t)a3 errorOut:;
- (id)_walkSampleDatesWithPredicate:(uint64_t)a3 entityClass:(char)a4 includeUUID:(uint64_t)a5 errorOut:;
- (id)_walkSampleDatesWithPredicate:(uint64_t)a3 entityClass:(uint64_t)a4 errorOut:;
- (void)_addAttenuatedSamplesUsingAttenuateSamples:(uint64_t)a3 sampleCount:(void *)a4 distributionCalculator:(int)a5 computeAverageAndDuration:(void *)a6 calculatorForAverageAndDuration:(void *)a7 attenuationEngine:;
- (void)_addSampleIntoDistributionCalculatorAndAverageAndDurationCalculator:(void *)a3 distributionCalculator:(int)a4 computeAverageAndDuration:(void *)a5 calculatorForAverageAndDuration:(double)a6 dataFactor:;
- (void)_queue_start;
@end

@implementation HDQuantityDistributionQueryServer

- (HDQuantityDistributionQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a4;
  v17.receiver = self;
  v17.super_class = HDQuantityDistributionQueryServer;
  v11 = [(HDQueryServer *)&v17 initWithUUID:a3 configuration:v10 client:a5 delegate:a6];
  if (v11)
  {
    v12 = [[HDQuantitySampleOverlapProcessor alloc] initWithOverlapFunction:1];
    overlapProcessor = v11->_overlapProcessor;
    v11->_overlapProcessor = v12;

    v14 = [v10 copy];
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
  v3 = [p_isa clientProxy];
  v4 = [p_isa sampleType];
  v230 = 0;
  v5 = [p_isa authorizationStatusRecordForType:v4 error:&v230];
  v205 = v230;
  if (!v5)
  {
    v6 = [p_isa queryUUID];
    [v3 client_deliverError:v205 forQuery:v6];
  }

  v206 = p_isa;
  v204 = v5;
  if (![v5 canRead])
  {
    p_isa = MEMORY[0x277CBEBF8];
    v15 = v205;
    goto LABEL_126;
  }

  v201 = v4;
  if (p_isa)
  {
    v7 = [p_isa[26] histogramBucketSize];
    v8 = [v7 _unit];

    v199 = [p_isa quantityType];
    v198 = [v199 canonicalUnit];
    [v198 _valueByConvertingValue:v8 toUnit:1.0];
    v10 = v9;
    v11 = [p_isa[26] histogramAnchor];

    if (v11)
    {
      v12 = [p_isa[26] histogramAnchor];
      [v12 doubleValueForUnit:v8];
      v14 = v13;
    }

    else
    {
      v14 = 0.0;
    }

    v16 = [p_isa[26] histogramBucketSize];
    [v16 doubleValueForUnit:v8];
    v18 = v17;

    v19 = [HDQuantityDistributionCalculator alloc];
    v20 = [p_isa[26] startDate];
    v21 = [p_isa[26] endDate];
    v22 = [p_isa[26] anchorDate];
    v23 = [p_isa[26] intervalComponents];
    v203 = [(HDQuantityDistributionCalculator *)v19 initWithStartDate:v20 endDate:v21 anchorDate:v22 intervalComponents:v23 histogramBucketAnchor:v14 histogramBucketSize:v18];

    v24 = v206;
    v25 = [v206[26] options];
    if (v25)
    {
      v26 = [v206[26] intervalComponents];
      v27 = [v26 copy];

      v28 = [v27 calendar];

      if (!v28)
      {
        v29 = [MEMORY[0x277CBEA80] currentCalendar];
        [v27 setCalendar:v29];
      }

      v30 = objc_alloc(MEMORY[0x277CCDD78]);
      v31 = [v206[26] anchorDate];
      v32 = [v30 initWithAnchorDate:v31 intervalComponents:v27];

      v33 = [HDStatisticsCollectionCalculatorDefaultSourceOrderProvider alloc];
      v34 = [v206 profile];
      v35 = [v206 quantityType];
      v36 = [(HDStatisticsCollectionCalculatorDefaultSourceOrderProvider *)v33 initWithProfile:v34 quantityType:v35];

      v37 = [v206 quantityType];
      v38 = [HDStatisticsCollectionCalculator calculatorForQuantityType:v37 intervalCollection:v32 options:66 mergeStrategy:0];

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

    v40 = [v24[26] options];
    v41 = [v24[26] contextStyle];
    v42 = 0;
    v234 = 0;
    v208 = v8;
    v227 = v25;
    if (v41 > 3)
    {
      if (v41 <= 5)
      {
        v43 = (v40 >> 1) & 1;
        if (v41 == 4)
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

      if (v41 == 6)
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
      if (v41 == 7)
      {
        v43 = (v40 >> 1) & 1;
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

    if (v41 == 1)
    {
      v48 = [MEMORY[0x277CCD720] categoryTypeForIdentifier:*MEMORY[0x277CCBA30]];
      v223 = [(HDQuantityDistributionQueryServer *)v24 _sqlitePredicateForObjectType:v48 errorOut:&v234];

      v221 = HDDataEntityPredicateForObjectsFromAppleWatchSources(1);
      v49 = [v24 profile];
      v50 = [v49 metadataManager];
      v51 = *MEMORY[0x277CCE060];
      v52 = [v50 predicateWithMetadataKey:*MEMORY[0x277CCE060] exists:0];

      v53 = MEMORY[0x277D10B20];
      aBlock = v221;
      v238 = v52;
      [MEMORY[0x277CBEA60] arrayWithObjects:&aBlock count:2];
      v55 = v54 = v40;
      v56 = [v53 predicateMatchingAllPredicates:v55];

      v57 = [v206 profile];
      v58 = [v57 metadataManager];
      [MEMORY[0x277CBEB98] setWithObject:&unk_283CB3F00];
      v60 = v59 = v3;
      v61 = [v58 predicateWithMetadataKey:v51 allowedValues:v60];

      v3 = v59;
      v62 = MEMORY[0x277D10B20];
      *&v249 = v56;
      *(&v249 + 1) = v61;
      v63 = [MEMORY[0x277CBEA60] arrayWithObjects:&v249 count:2];
      v40 = [v62 predicateMatchingAnyPredicates:v63];

      v64 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v223 otherPredicate:v40];

      LOBYTE(v40) = v54;
      v8 = v208;

      v24 = v206;
    }

    else
    {
      if (v41 != 2)
      {
        v46 = 0;
        if (v41 == 3)
        {
          v43 = (v40 >> 1) & 1;
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

        v224 = v40;
        v196 = v74;
        v77 = [v24[26] objectType];
        v233 = 0;
        v78 = [(HDQuantityDistributionQueryServer *)v24 _sqlitePredicateForObjectType:v77 errorOut:&v233];
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
        v82 = [v77 isEqual:v81];

        v83 = [v24[26] options];
        v84 = [MEMORY[0x277CCD830] _quantityTypeWithCode:272];
        v85 = [HDQuantitySampleAttenuationProvider alloc];
        v86 = [v24 profile];
        v193 = v84;
        v87 = [(HDQuantitySampleAttenuationProvider *)v85 initWithQuantityType:v84 profile:v86];

        v192 = v87;
        v88 = [[HDQuantitySampleAttenuationEngine alloc] initWithAttenuationEngineDelegate:v87];
        v222 = v77;
        v191 = v88;
        if (v82 && (v83 & 4) != 0)
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

          v4 = v201;
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
          v104 = [v206 quantityType];
          v105 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:v80];
          v106 = [v104 isEqual:v105];

          v4 = v201;
          if (v106)
          {
            v107 = 1;
          }

          else
          {
            v108 = [v206 quantityType];
            v109 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB88]];
            v107 = [v108 isEqual:v109];
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

          v77 = v222;
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
          v217 = [(HDQuantityDistributionCalculator *)v203 quantityDistributionsWithUnit:v8];
          v187 = v3;
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
                  v129 = [v128 startDate];
                  [v129 timeIntervalSinceReferenceDate];
                  v131 = v130;
                  v132 = [v128 endDate];
                  [v132 timeIntervalSinceReferenceDate];
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
                    v211 = [v128 startDate];
                    v152 = [v128 endDate];
                    v153 = [v128 minimumBucketValue];
                    [v128 minimumValue];
                    v154 = v228 = v142;
                    v155 = [v128 maximumValue];
                    v156 = [v128 averageValue];
                    v157 = [v128 duration];
                    v158 = [v128 histogramCounts];
                    v159 = [v213 initWithStartDate:v211 endDate:v152 minimumBucketValue:v153 minimumValue:v154 maximumValue:v155 averageValue:v156 duration:v157 histogramCounts:v158 contextIdentifiers:v228];

                    v46 = v207;
                    v8 = v208;

                    v142 = v228;
                    [v217 addObject:v159];
                  }

                  else
                  {
                    [v217 addObject:v128];
                  }

                  ++v127;
                  v77 = v222;
                  v98 = v219;
                }

                while (v127 != v225);
                v160 = [obj countByEnumeratingWithState:&v249 objects:&aBlock count:16];
                v225 = v160;
              }

              while (v160);
            }

            v3 = v187;
            v4 = v201;
          }

          v229 = v217;
          if (v98)
          {
            v163 = v200;
            v190 = v8;
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
                v168 = [v166 startDate];
                v169 = [v167 startDate];
                v226 = v169;
                if ([v168 isEqual:v169])
                {
                  v170 = [v167 averageQuantity];
                  v216 = v164;
                  [v170 doubleValueForUnit:v190];
                  v172 = v171;

                  v220 = [MEMORY[0x277CCD7E8] quantityWithUnit:v190 doubleValue:v172];
                  v214 = objc_alloc(MEMORY[0x277CCDE20]);
                  v218 = [v166 startDate];
                  obja = [v166 endDate];
                  v173 = [v166 minimumBucketValue];
                  v174 = [v166 minimumValue];
                  v175 = [v166 maximumValue];
                  v176 = [v167 duration];
                  v177 = [v166 histogramCounts];
                  [v166 contextIdentifiers];
                  v212 = v167;
                  v178 = v168;
                  v180 = v179 = v165;
                  v181 = v174;
                  v182 = [v214 initWithStartDate:v218 endDate:obja minimumBucketValue:v173 minimumValue:v174 maximumValue:v175 averageValue:v220 duration:v176 histogramCounts:v177 contextIdentifiers:v180];

                  v183 = v179;
                  v168 = v178;
                  v167 = v212;

                  v163 = v189;
                  v4 = v201;

                  p_isa = v188;
                  [v188 addObject:v182];
                  v164 = v216 + 1;
                  v165 = v183 + 1;

                  v77 = v222;
                }

                else if ([v168 hk_isBeforeDate:v169])
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
            v3 = v187;
            v46 = v207;
            v8 = v208;
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

      v72 = [MEMORY[0x277CCD720] workoutType];
      v64 = [(HDQuantityDistributionQueryServer *)v24 _sqlitePredicateForObjectType:v72 errorOut:&v234];
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
    [v3 client_deliverError:v15 forQuery:p_isa];
    goto LABEL_127;
  }

LABEL_126:
  v184 = [v206 queryUUID];
  [v3 client_deliverDistributionCollection:p_isa forQuery:v184];

LABEL_127:
  v185 = *MEMORY[0x277D85DE8];
}

- (id)_sqlitePredicateForObjectType:(uint64_t)a3 errorOut:
{
  v5 = a2;
  v6 = HDSampleEntityPredicateForDataType(v5);
  v7 = [a1 filter];

  if (!v7)
  {
    v15 = v6;
    goto LABEL_7;
  }

  v8 = [a1 filter];
  v9 = objc_opt_respondsToSelector();

  v10 = [a1 filter];
  if (v9)
  {
    v11 = [MEMORY[0x277CBEB98] setWithObject:v5];
    v12 = [v10 builder_filterWithDataTypes:v11];

    v10 = v12;
  }

  v13 = [a1 profile];
  v14 = [v10 predicateWithProfile:v13];

  if (v14)
  {
    v15 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v14 otherPredicate:v6];

LABEL_7:
    v16 = v15;
    goto LABEL_9;
  }

  [MEMORY[0x277CCA9B8] hk_assignError:a3 code:100 format:@"Error building predicate for query"];
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

- (void)_addSampleIntoDistributionCalculatorAndAverageAndDurationCalculator:(void *)a3 distributionCalculator:(int)a4 computeAverageAndDuration:(void *)a5 calculatorForAverageAndDuration:(double)a6 dataFactor:
{
  v12 = a3;
  v11 = a5;
  if (a1)
  {
    [v12 addDataPoint:a2[2] startTime:*a2 endTime:a2[1]];
    if (a4)
    {
      [v11 addSampleValue:*(a2 + 4) startTime:0 endTime:a2[2] / a6 sourceID:*a2 error:a2[1]];
    }
  }
}

- (BOOL)_walkSampleValuesWithPredicate:(uint64_t)a3 errorOut:(void *)a4 handler:
{
  v7 = a4;
  if (a1)
  {
    v8 = a2;
    v9 = [a1 profile];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __85__HDQuantityDistributionQueryServer__walkSampleValuesWithPredicate_errorOut_handler___block_invoke;
    v12[3] = &unk_27862B250;
    v13 = v7;
    v10 = [HDQuantitySampleValueEnumerator orderedQuantityValuesForPredicate:v8 profile:v9 options:4 error:a3 handler:v12];
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

- (void)_addAttenuatedSamplesUsingAttenuateSamples:(uint64_t)a3 sampleCount:(void *)a4 distributionCalculator:(int)a5 computeAverageAndDuration:(void *)a6 calculatorForAverageAndDuration:(void *)a7 attenuationEngine:
{
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (a1 && a3 >= 1)
  {
    v16 = 0;
    do
    {
      v30 = 0;
      v28 = 0u;
      v29 = 0u;
      if (v15)
      {
        v17 = (a2 + 40 * v16);
        v18 = v17[1];
        v25 = *v17;
        v26 = v18;
        v27 = *(v17 + 4);
        [v15 attenuateSample:&v25];
        while (*(&v28 + 1) - *&v28 > 0.000001)
        {
          v25 = v28;
          v26 = v29;
          v27 = v30;
          [(HDQuantityDistributionQueryServer *)a1 _addSampleIntoDistributionCalculatorAndAverageAndDurationCalculator:v13 distributionCalculator:a5 computeAverageAndDuration:v14 calculatorForAverageAndDuration:1.0 dataFactor:?];
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
          [v15 attenuateSample:&v21];
          v28 = v25;
          v29 = v26;
          v30 = v27;
        }
      }

      ++v16;
    }

    while (v16 != a3);
  }
}

- (id)_walkSampleDatesWithPredicate:(uint64_t)a3 entityClass:(uint64_t)a4 errorOut:
{
  v4 = [(HDQuantityDistributionQueryServer *)a1 _walkSampleDatesWithPredicate:a2 entityClass:a3 includeUUID:0 errorOut:a4];

  return v4;
}

- (id)_categoryPredicateWithTypeCode:(void *)a3 matchingValue:(uint64_t)a4 errorOut:
{
  v7 = a3;
  v8 = [MEMORY[0x277CCD0C0] dataTypeWithCode:a2];
  v9 = [(HDQuantityDistributionQueryServer *)a1 _sqlitePredicateForObjectType:v8 errorOut:a4];

  if (v7)
  {
    v10 = HDCategorySampleEntityPredicateForValue(1);
    v11 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v9 otherPredicate:v10];

    v9 = v11;
  }

  return v9;
}

- (id)_walkSampleDatesWithPredicate:(uint64_t)a3 entityClass:(char)a4 includeUUID:(uint64_t)a5 errorOut:
{
  v9 = a2;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__173;
  v24 = __Block_byref_object_dispose__173;
  v25 = objc_alloc_init(_HDQuantityDateIntervals);
  v10 = [a1 profile];
  v11 = [v10 database];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __100__HDQuantityDistributionQueryServer__walkSampleDatesWithPredicate_entityClass_includeUUID_errorOut___block_invoke;
  v15[3] = &unk_27862B2A0;
  v18 = a3;
  v12 = v9;
  v19 = a4;
  v16 = v12;
  v17 = &v20;
  LODWORD(a5) = [(HDHealthEntity *)HDSampleEntity performReadTransactionWithHealthDatabase:v11 error:a5 block:v15];

  if (a5)
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