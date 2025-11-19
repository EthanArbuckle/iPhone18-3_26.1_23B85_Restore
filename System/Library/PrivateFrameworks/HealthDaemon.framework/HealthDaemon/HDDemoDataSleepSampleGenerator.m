@interface HDDemoDataSleepSampleGenerator
- (BOOL)isDemoPersonSleeping:(id)a3 atTime:(double)a4;
- (HDDemoDataSleepSampleGenerator)init;
- (HDDemoDataSleepSampleGenerator)initWithCoder:(id)a3;
- (double)computeAwakeTimeForDemoPerson:(id)a3 atTime:(double)a4;
- (double)computeSleepTimeFromCurrentTime:(double)a3 mean:(double)a4 stdDev:(double)a5;
- (id)createSleepSamplesFromSleepGraph:(id)a3 sleepCategoryType:(id)a4 startDate:(id)a5 endDate:(id)a6;
- (id)loadGraphsFromFileNamed:(uint64_t)a1;
- (id)randomGraphFromArray:(unint64_t)a1;
- (void)encodeWithCoder:(id)a3;
- (void)generateObjectsForDemoPerson:(id)a3 fromTime:(double)a4 toTime:(double)a5 currentDate:(id)a6 objectCollection:(id)a7;
- (void)setupWithDemoDataGenerator:(id)a3;
@end

@implementation HDDemoDataSleepSampleGenerator

- (HDDemoDataSleepSampleGenerator)init
{
  v10.receiver = self;
  v10.super_class = HDDemoDataSleepSampleGenerator;
  v2 = [(HDDemoDataBaseSampleGenerator *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_nextSleepDurationSampleTime = 0.0;
    v4 = [(HDDemoDataSleepSampleGenerator *)v2 sleepGraphsFileName];
    v5 = [(HDDemoDataSleepSampleGenerator *)v3 loadGraphsFromFileNamed:v4];
    sleepGraphsArray = v3->_sleepGraphsArray;
    v3->_sleepGraphsArray = v5;

    v7 = [(HDDemoDataSleepSampleGenerator *)v3 loadGraphsFromFileNamed:?];
    breathingDisturbancesGraphsArray = v3->_breathingDisturbancesGraphsArray;
    v3->_breathingDisturbancesGraphsArray = v7;
  }

  return v3;
}

- (id)loadGraphsFromFileNamed:(uint64_t)a1
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA8D8];
  v3 = a2;
  v4 = [v2 bundleForClass:objc_opt_class()];
  v5 = [v4 pathForResource:v3 ofType:@"json"];

  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v5];
  if (v6)
  {
    v19 = 0;
    v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:4 error:&v19];
    v8 = v19;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      _HKInitializeLogging();
      v11 = *MEMORY[0x277CCC2B8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
      {
        v16 = v11;
        v17 = objc_opt_class();
        *buf = 138543618;
        v21 = v17;
        v22 = 2114;
        v23 = v5;
        v18 = v17;
        _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "[%{public}@] Could not serialize from JSON data at file path: %{public}@", buf, 0x16u);
      }

      v9 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC2B8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
    {
      v14 = v10;
      *buf = 138543618;
      v21 = objc_opt_class();
      v22 = 2114;
      v23 = v5;
      v15 = v21;
      _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "[%{public}@] Could not get data from file path: %{public}@", buf, 0x16u);
    }

    v9 = MEMORY[0x277CBEBF8];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HDDemoDataSleepSampleGenerator)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HDDemoDataSleepSampleGenerator;
  v5 = [(HDDemoDataBaseSampleGenerator *)&v13 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"HDDemoDataSleepSampleGeneratorNextSleepDurationSampleTimeKey"];
    v5->_nextSleepDurationSampleTime = v6;
    v7 = [(HDDemoDataSleepSampleGenerator *)v5 sleepGraphsFileName];
    v8 = [(HDDemoDataSleepSampleGenerator *)v5 loadGraphsFromFileNamed:v7];
    sleepGraphsArray = v5->_sleepGraphsArray;
    v5->_sleepGraphsArray = v8;

    v10 = [(HDDemoDataSleepSampleGenerator *)v5 loadGraphsFromFileNamed:?];
    breathingDisturbancesGraphsArray = v5->_breathingDisturbancesGraphsArray;
    v5->_breathingDisturbancesGraphsArray = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HDDemoDataSleepSampleGenerator;
  v4 = a3;
  [(HDDemoDataBaseSampleGenerator *)&v5 encodeWithCoder:v4];
  [v4 encodeDouble:@"HDDemoDataSleepSampleGeneratorNextSleepDurationSampleTimeKey" forKey:{self->_nextSleepDurationSampleTime, v5.receiver, v5.super_class}];
}

- (void)setupWithDemoDataGenerator:(id)a3
{
  v3.receiver = self;
  v3.super_class = HDDemoDataSleepSampleGenerator;
  [(HDDemoDataBaseSampleGenerator *)&v3 setupWithDemoDataGenerator:a3];
}

- (void)generateObjectsForDemoPerson:(id)a3 fromTime:(double)a4 toTime:(double)a5 currentDate:(id)a6 objectCollection:(id)a7
{
  v231[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a7;
  v218.receiver = self;
  v218.super_class = HDDemoDataSleepSampleGenerator;
  [(HDDemoDataBaseSampleGenerator *)&v218 generateObjectsForDemoPerson:v11 fromTime:a6 toTime:v12 currentDate:a5 objectCollection:a5];
  if (self->_nextSleepDurationSampleTime > a5)
  {
    goto LABEL_61;
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  v16 = [v15 firstSampleDate];

  v202 = v11;
  v203 = v13;
  v200 = v16;
  v201 = v12;
  v205 = self;
  if (self->_nextSleepDurationSampleTime == 0.0)
  {
    v17 = MEMORY[0x277CCD7E8];
    v18 = [MEMORY[0x277CCDAB0] hourUnit];
    v19 = [v17 quantityWithUnit:v18 doubleValue:7.0];

    v20 = MEMORY[0x277CCD800];
    v21 = [MEMORY[0x277CCD830] dataTypeWithCode:197];
    v206 = v19;
    v22 = [v20 quantitySampleWithType:v21 quantity:v19 startDate:v16 endDate:v16];

    v204 = v22;
    [v13 addObject:v22];
    v23 = [MEMORY[0x277CBEA80] currentCalendar];
    v212 = [v23 hk_weekendDays];

    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v24 = *MEMORY[0x277CCCDD0];
    v25 = HKSleepScheduleWeekdayArrayFromWeekdays();
    v26 = [v25 countByEnumeratingWithState:&v214 objects:v223 count:16];
    v209 = v14;
    if (v26)
    {
      v27 = v26;
      v28 = 0;
      v29 = 0;
      v30 = *v215;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v215 != v30)
          {
            objc_enumerationMutation(v25);
          }

          v32 = [*(*(&v214 + 1) + 8 * i) unsignedIntegerValue];
          v33 = [MEMORY[0x277CCABB0] numberWithInteger:NSWeekdayComponentFromHKSleepScheduleWeekday()];
          v34 = [v212 containsObject:v33];

          if (v34)
          {
            v35 = v32;
          }

          else
          {
            v35 = 0;
          }

          v28 |= v35;
          if (v34)
          {
            v36 = 0;
          }

          else
          {
            v36 = v32;
          }

          v29 |= v36;
        }

        v27 = [v25 countByEnumeratingWithState:&v214 objects:v223 count:16];
      }

      while (v27);
    }

    else
    {
      v28 = 0;
      v29 = 0;
    }

    v11 = v202;
    v37 = [v202 weekdaySleepParameters];
    v38 = MEMORY[0x277CCD9E8];
    v39 = [MEMORY[0x277CBEAB8] hk_componentsWithHour:objc_msgSend(v37 minute:{"wakeUpTimeGoalHour"), 0}];
    v40 = [MEMORY[0x277CBEAB8] hk_componentsWithHour:objc_msgSend(v37 minute:{"bedtimeGoalHour"), 0}];
    v41 = [v38 sleepScheduleWithDate:v16 weekdays:v29 wakeTimeComponents:v39 bedTimeComponents:v40 overrideDayIndex:0 device:0 metadata:0];
    [v203 addObject:v41];

    v42 = [v202 weekendSleepParameters];

    v43 = MEMORY[0x277CCD9E8];
    v44 = [MEMORY[0x277CBEAB8] hk_componentsWithHour:objc_msgSend(v42 minute:{"wakeUpTimeGoalHour"), 0}];
    v45 = [MEMORY[0x277CBEAB8] hk_componentsWithHour:objc_msgSend(v42 minute:{"bedtimeGoalHour"), 0}];
    v46 = [v43 sleepScheduleWithDate:v16 weekdays:v28 wakeTimeComponents:v44 bedTimeComponents:v45 overrideDayIndex:0 device:0 metadata:0];
    [v203 addObject:v46];

    v12 = v201;
    self = v205;
    v14 = v209;
  }

  if (qword_27D86C0E8 != -1)
  {
    dispatch_once(&qword_27D86C0E8, &__block_literal_global_37);
  }

  v47 = a5;
  v48 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  v49 = [MEMORY[0x277CBEA80] currentCalendar];
  v50 = [v48 isDemoDataTimeInWeekend:v49 calendar:a5];

  if (v50)
  {
    [v11 weekendSleepParameters];
  }

  else
  {
    [v11 weekdaySleepParameters];
  }
  v51 = ;
  [v51 wakeUpTime];
  v53 = v52;
  [v11 wakeUpTimeNoiseStdDev];
  [(HDDemoDataSleepSampleGenerator *)self computeSleepTimeFromCurrentTime:a5 mean:v53 stdDev:v54];
  self->_nextSleepDurationSampleTime = v47 + 1.0 + v55;
  [v51 wakeUpTime];
  v57 = v56;
  [v11 wakeUpTimeNoiseStdDev];
  [(HDDemoDataSleepSampleGenerator *)self computeSleepTimeFromCurrentTime:a5 mean:v57 stdDev:v58];
  v60 = v59;
  [v51 bedtime];
  v62 = v61;
  [v51 wakeUpTime];
  if (v62 <= v63)
  {
    v64 = 0.0;
  }

  else
  {
    v64 = 1.0;
  }

  v199 = v51;
  [v51 bedtime];
  v66 = v65;
  [v11 bedtimeNoiseStdDev];
  [(HDDemoDataSleepSampleGenerator *)self computeSleepTimeFromCurrentTime:a5 - v64 mean:v66 stdDev:v67];
  v69 = v68;
  [v16 timeIntervalSinceReferenceDate];
  v71 = v70 + (v69 - v64 + v47) * 86400.0;
  [v16 timeIntervalSinceReferenceDate];
  v73 = v72 + (v60 + v47) * 86400.0;
  v74 = [MEMORY[0x277CCDD30] sharedBehavior];
  v75 = [v74 features];
  v76 = [v75 timeInBedTracking];

  if (v76)
  {
    v77 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    v78 = [v77 statisticsSampleGenerator];
    [v11 inBedTimeStdDev];
    [v78 computeNoiseFromTime:a5 stdDev:v79];
    v81 = v80 * 86400.0;

    v82 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    v83 = [v82 statisticsSampleGenerator];
    [v11 inBedTimeStdDev];
    [v83 computeNoiseFromTime:a5 stdDev:v84];
    v86 = v85 * 86400.0;

    v87 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v71 - fabs(v81)];
    v88 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v73 + fabs(v86 * 0.5)];
    if ([v87 hk_isAfterDate:v88])
    {
      _HKInitializeLogging();
      v89 = *MEMORY[0x277CCC2B8];
      if (!os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
      {
LABEL_33:

        goto LABEL_34;
      }

      v210 = v14;
      v90 = v12;
      v91 = v11;
      v92 = v89;
      v93 = objc_opt_class();
      *buf = 138543874;
      v225 = v93;
      v226 = 2114;
      v227 = v87;
      v228 = 2114;
      v229 = v88;
      v94 = v93;
      _os_log_error_impl(&dword_228986000, v92, OS_LOG_TYPE_ERROR, "[%{public}@] In Bed: Bedtime date cannot be after wake up date! %{public}@ - %{public}@", buf, 0x20u);

      v11 = v91;
      v12 = v90;
      v14 = v210;
    }

    else
    {
      v92 = [MEMORY[0x277CCD0B0] categorySampleWithType:_MergedGlobals_14 value:0 startDate:v87 endDate:v88 metadata:0];
      [v203 addObject:v92];
    }

    goto LABEL_33;
  }

LABEL_34:
  v95 = [(HDDemoDataSleepSampleGenerator *)self randomGraphFromArray:?];
  v96 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v71];
  v97 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v73];
  v197 = v96;
  v198 = v95;
  v98 = [(HDDemoDataSleepSampleGenerator *)self createSleepSamplesFromSleepGraph:v95 sleepCategoryType:_MergedGlobals_14 startDate:v96 endDate:v97];
  [v14 addObjectsFromArray:v98];

  v99 = v14;
  v100 = v12;
  v101 = v11;
  v207 = v99;
  if ([v99 count])
  {
    v194 = v100;
    v195 = v97;
    v196 = a5;
    v213 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
    v102 = objc_alloc(MEMORY[0x277CCA970]);
    v103 = [v99 firstObject];
    v104 = [v103 startDate];
    v105 = [v99 lastObject];
    v106 = [v105 endDate];
    v107 = [v102 initWithStartDate:v104 endDate:v106];

    v108 = [v107 startDate];
    v211 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v230 = *MEMORY[0x277CCE030];
    v231[0] = &unk_283CB08D0;
    v208 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v231 forKeys:&v230 count:1];
    v109 = [v107 endDate];
    LODWORD(v103) = [v108 hk_isBeforeDate:v109];

    if (v103)
    {
      do
      {
        v221 = 0u;
        v222 = 0u;
        v219 = 0u;
        v220 = 0u;
        v110 = v99;
        v111 = [v110 countByEnumeratingWithState:&v219 objects:buf count:16];
        if (v111)
        {
          v112 = v111;
          v113 = *v220;
          do
          {
            for (j = 0; j != v112; ++j)
            {
              if (*v220 != v113)
              {
                objc_enumerationMutation(v110);
              }

              v115 = *(*(&v219 + 1) + 8 * j);
              v116 = [v115 startDate];
              if ([v108 hk_isAfterDate:v116])
              {
                v117 = [v115 endDate];
                v118 = [v108 hk_isBeforeDate:v117];

                if (v118)
                {
                  v119 = 1;
                  goto LABEL_48;
                }
              }

              else
              {
              }
            }

            v112 = [v110 countByEnumeratingWithState:&v219 objects:buf count:16];
          }

          while (v112);
          v119 = 0;
LABEL_48:
          self = v205;
          v99 = v207;
        }

        else
        {
          v119 = 0;
        }

        [v108 timeIntervalSinceReferenceDate];
        v121 = v120 * 0.0000115740741;
        v122 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
        v123 = [v122 statisticsSampleGenerator];
        [v101 heartRateSampleNoiseStdDev];
        [v123 computeNoiseFromTime:v121 stdDev:v124];
        v126 = v125;

        [v108 timeIntervalSinceReferenceDate];
        v128 = v127;
        v129 = [v107 startDate];
        [v129 timeIntervalSinceReferenceDate];
        v131 = v130;
        [v107 duration];
        v133 = v132;

        if (v119)
        {
          v134 = v126 * 0.5 + [v101 restingHeartRate] * ((v128 - v131) / v133 * -0.1 + 1.0);
        }

        else
        {
          v134 = v126 + [v101 restingHeartRate];
        }

        v135 = MEMORY[0x277CCD800];
        v136 = MEMORY[0x277CCD7E8];
        v137 = [MEMORY[0x277CCDAB0] _countPerMinuteUnit];
        v138 = [v136 quantityWithUnit:v137 doubleValue:v134];
        v139 = [v135 quantitySampleWithType:v213 quantity:v138 startDate:v108 endDate:v108 metadata:v208];
        [v211 addObject:v139];

        v140 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
        v141 = [v140 statisticsSampleGenerator];
        [v101 heartRateSampleFrequency];
        v143 = v142;
        [v101 heartRateSampleFrequencyStdDev];
        [v141 computeStatisticalTimeFromCurrentTime:v121 mean:v143 stdDev:v144 * 0.5];
        v146 = v145;

        v147 = [v108 dateByAddingTimeInterval:v146 * 86400.0];

        v148 = [v107 endDate];
        LOBYTE(v137) = [v147 hk_isBeforeDate:v148];

        v108 = v147;
      }

      while ((v137 & 1) != 0);
    }

    else
    {
      v147 = v108;
    }

    v100 = v194;
    [v194 addObjectsFromWatch:v211];

    a5 = v196;
    v97 = v195;
  }

  v149 = v101;
  v150 = v100;
  v151 = v97;
  v152 = v197;
  v153 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  v154 = [v153 currentDateFromCurrentTime:a5];

  v155 = [v149 birthDateComponents];
  v156 = HDDemoData_ageBetweenNSDateComponentsAndDate(v155, v154);

  v157 = 1.0;
  if ([v149 biologicalSex] == 1 && v156 >= 12)
  {
    v158 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    v159 = [v158 reproductiveHealthSampleGenerator];
    v160 = [v159 cycleDayIndexAtTime:v149 demoPerson:a5];

    v161 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    v162 = [v161 reproductiveHealthSampleGenerator];
    v163 = [v162 _basalBodyTempMultiplier];
    v164 = [v163 objectAtIndexedSubscript:v160];
    [v164 doubleValue];
    v157 = v165;
  }

  [v149 baseCorrectedWristSkinTemperatureInCelsius];
  v167 = v157 * v166;
  v168 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  v169 = [v168 statisticsSampleGenerator];
  [v149 dayToDayCorrectedWristSkinTemperatureNoiseStdDevInCelsius];
  [v169 randomSampleFromNormalDistributionWithMean:0.0 stdDev:v170];
  v172 = v171;

  v173 = MEMORY[0x277CCD7E8];
  v174 = [MEMORY[0x277CCDAB0] degreeCelsiusUnit];
  v175 = [v173 quantityWithUnit:v174 doubleValue:((v167 + v172) * 100.0) / 100.0];

  v176 = MEMORY[0x277CCD800];
  v177 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC938]];
  v178 = [v176 quantitySampleWithType:v177 quantity:v175 startDate:v152 endDate:v151];

  [v150 addObjectFromWatch:v178];
  v179 = MEMORY[0x277CCD830];
  v180 = *MEMORY[0x277CCC930];
  v181 = v150;
  v182 = v151;
  v183 = v152;
  v184 = [v179 quantityTypeForIdentifier:v180];
  v185 = [(HDDemoDataSleepSampleGenerator *)self randomGraphFromArray:?];
  v186 = [v185 objectAtIndex:{arc4random() % objc_msgSend(v185, "count")}];
  [v186 doubleValue];
  v188 = v187;

  v189 = MEMORY[0x277CCD7E8];
  v190 = [MEMORY[0x277CCDAB0] countUnit];
  v191 = [v189 quantityWithUnit:v190 doubleValue:v188];

  v192 = [MEMORY[0x277CCD800] quantitySampleWithType:v184 quantity:v191 startDate:v183 endDate:v182];

  [v181 addObjectFromWatch:v192];
  [v181 addObjectsFromPhone:v203];
  [v181 addObjectsFromWatch:v207];

  v12 = v201;
  v11 = v202;
LABEL_61:

  v193 = *MEMORY[0x277D85DE8];
}

uint64_t __108__HDDemoDataSleepSampleGenerator_generateObjectsForDemoPerson_fromTime_toTime_currentDate_objectCollection___block_invoke()
{
  _MergedGlobals_14 = [MEMORY[0x277CCD720] categoryTypeForIdentifier:*MEMORY[0x277CCBAB8]];

  return MEMORY[0x2821F96F8]();
}

- (id)randomGraphFromArray:(unint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    a1 = [v3 count];
    if (a1)
    {
      a1 = [v4 objectAtIndexedSubscript:arc4random() % a1];
    }
  }

  return a1;
}

- (double)computeAwakeTimeForDemoPerson:(id)a3 atTime:(double)a4
{
  v6 = a3;
  v7 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  v8 = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [v7 isDemoDataTimeInWeekend:v8 calendar:a4];

  if (v9)
  {
    [v6 weekendSleepParameters];
  }

  else
  {
    [v6 weekdaySleepParameters];
  }
  v10 = ;
  [v10 bedtime];
  v12 = v11;
  [v6 bedtimeNoiseStdDev];
  [(HDDemoDataSleepSampleGenerator *)self computeSleepTimeFromCurrentTime:a4 mean:v12 stdDev:v13];
  v15 = v14;
  [v10 wakeUpTime];
  v17 = v16;
  [v6 wakeUpTimeNoiseStdDev];
  [(HDDemoDataSleepSampleGenerator *)self computeSleepTimeFromCurrentTime:a4 mean:v17 stdDev:v18];
  v20 = v15 - v19;

  return v20;
}

- (double)computeSleepTimeFromCurrentTime:(double)a3 mean:(double)a4 stdDev:(double)a5
{
  v8 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  v9 = [v8 statisticsSampleGenerator];
  [v9 computeStatisticalTimeFromCurrentTime:a3 mean:a4 stdDev:a5];
  v11 = v10;

  if (v11 > 1.0 || v11 < 0.0)
  {
    return a4;
  }

  else
  {
    return v11;
  }
}

- (BOOL)isDemoPersonSleeping:(id)a3 atTime:(double)a4
{
  v6 = a3;
  v7 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  v8 = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [v7 isDemoDataTimeInWeekend:v8 calendar:a4];

  if (v9)
  {
    [v6 weekendSleepParameters];
  }

  else
  {
    [v6 weekdaySleepParameters];
  }
  v10 = ;
  v11 = a4 - a4;
  [v10 bedtime];
  v13 = v12;
  [v6 bedtimeNoiseStdDev];
  [(HDDemoDataSleepSampleGenerator *)self computeSleepTimeFromCurrentTime:a4 mean:v13 stdDev:v14];
  v16 = v15;
  [v10 wakeUpTime];
  v18 = v17;
  [v6 wakeUpTimeNoiseStdDev];
  [(HDDemoDataSleepSampleGenerator *)self computeSleepTimeFromCurrentTime:a4 mean:v18 stdDev:v19];
  v21 = v11 != v20;
  if (v20 != v16)
  {
    v21 = 0;
  }

  v22 = v11 <= v20;
  if (v11 >= v16)
  {
    v22 = 1;
  }

  if (v16 > v20)
  {
    v21 = v22;
  }

  v23 = v11 < v20;
  if (v11 <= v16)
  {
    v23 = 0;
  }

  if (v20 > v16)
  {
    v24 = v23;
  }

  else
  {
    v24 = v21;
  }

  return v24;
}

- (id)createSleepSamplesFromSleepGraph:(id)a3 sleepCategoryType:(id)a4 startDate:(id)a5 endDate:(id)a6
{
  v55 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v9 count] && !objc_msgSend(v11, "hk_isAfterDate:", v12))
  {
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v51 = 0x3032000000;
    v52 = __Block_byref_object_copy__33;
    v53 = __Block_byref_object_dispose__33;
    v54 = [v11 copy];
    v44 = 0;
    v45 = &v44;
    v46 = 0x3032000000;
    v47 = __Block_byref_object_copy__33;
    v48 = __Block_byref_object_dispose__33;
    v49 = [v11 copy];
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__33;
    v42 = __Block_byref_object_dispose__33;
    v43 = [v9 firstObject];
    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = __103__HDDemoDataSleepSampleGenerator_createSleepSamplesFromSleepGraph_sleepCategoryType_startDate_endDate___block_invoke;
    v31 = &unk_278618430;
    v35 = &v38;
    v36 = &v44;
    v16 = v12;
    v32 = v16;
    v17 = v15;
    v33 = v17;
    v18 = v10;
    v34 = v18;
    p_buf = &buf;
    [v9 enumerateObjectsUsingBlock:&v28];
    if ([v39[5] integerValue] != 2)
    {
      v19 = MEMORY[0x277CCD0B0];
      v20 = [v39[5] integerValue];
      v21 = *(*(&buf + 1) + 40);
      if (([v16 hk_isAfterDate:v21] & 1) == 0)
      {
        v16 = v45[5];
      }

      v22 = [v19 categorySampleWithType:v18 value:v20 startDate:v21 endDate:v16];
      [v17 addObject:v22];
    }

    v23 = v34;
    v14 = v17;

    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(&v44, 8);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC2B8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
    {
      v26 = v13;
      LODWORD(buf) = 138543362;
      *(&buf + 4) = objc_opt_class();
      v27 = *(&buf + 4);
      _os_log_error_impl(&dword_228986000, v26, OS_LOG_TYPE_ERROR, "[%{public}@] Asked to make sleep samples with invalid input, returning empty", &buf, 0xCu);
    }

    v14 = MEMORY[0x277CBEBF8];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v14;
}

void __103__HDDemoDataSleepSampleGenerator_createSleepSamplesFromSleepGraph_sleepCategoryType_startDate_endDate___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = a2;
  if ([*(*(a1[7] + 8) + 40) isEqualToNumber:?])
  {
    v7 = [*(*(a1[8] + 8) + 40) dateByAddingTimeInterval:30.0];
    v8 = *(a1[8] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    if ([*(*(a1[8] + 8) + 40) hk_isAfterDate:a1[4]])
    {
      *a4 = 1;
    }
  }

  else
  {
    v10 = a1[5];
    v11 = [MEMORY[0x277CCD0B0] categorySampleWithType:a1[6] value:objc_msgSend(*(*(a1[7] + 8) + 40) startDate:"integerValue") endDate:{*(*(a1[9] + 8) + 40), *(*(a1[8] + 8) + 40)}];
    [v10 addObject:v11];

    v12 = [*(*(a1[8] + 8) + 40) copy];
    v13 = *(a1[9] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v15 = [*(*(a1[8] + 8) + 40) dateByAddingTimeInterval:30.0];
    v16 = *(a1[8] + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    objc_storeStrong((*(a1[7] + 8) + 40), a2);
  }
}

@end