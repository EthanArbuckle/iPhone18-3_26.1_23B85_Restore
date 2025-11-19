@interface HDDemoDataVitalsSampleGenerator
- (HDDemoDataVitalsSampleGenerator)init;
- (HDDemoDataVitalsSampleGenerator)initWithCoder:(id)a3;
- (double)_computeBodyTempInCelsiusForDemoPerson:(id)a3 atTime:(double)a4 addNoise:(BOOL)a5;
- (uint64_t)_computeBloodPressureForDemoPerson:(double)a3 atTime:(double)a4 baseBloodPressure:(double)a5 stdDev:;
- (uint64_t)_computeMaxHRForDemoPerson:(double)a3 atTime:;
- (void)encodeWithCoder:(id)a3;
- (void)generateObjectsForDemoPerson:(id)a3 fromTime:(double)a4 toTime:(double)a5 currentDate:(id)a6 objectCollection:(id)a7;
- (void)setupWithDemoDataGenerator:(id)a3;
@end

@implementation HDDemoDataVitalsSampleGenerator

- (HDDemoDataVitalsSampleGenerator)init
{
  v7.receiver = self;
  v7.super_class = HDDemoDataVitalsSampleGenerator;
  v2 = [(HDDemoDataBaseSampleGenerator *)&v7 init];
  v3 = v2;
  if (v2)
  {
    diurnalBPVariationTable = v2->_diurnalBPVariationTable;
    v2->_diurnalBPVariationTable = 0;

    diurnalTempVariationTable = v3->_diurnalTempVariationTable;
    v3->_diurnalTempVariationTable = 0;

    v3->_nextHeartRateSampleTime = 0.0;
    v3->_nextRespirationRateSampleTime = 0.0;
    v3->_lastRespirationRateGenerationTime = 0.0;
    v3->_nextBloodPressureSampleTime = 0.0;
    v3->_nextBodyTempSampleTime = 0.0;
    v3->_nextOxygenSaturationSampleTime = 0.0;
    v3->_nextPeripheralPerfusionIndexSampleTime = 0.0;
    v3->_lastPeripheralPerfusionIndexValue = 0.0;
  }

  return v3;
}

- (HDDemoDataVitalsSampleGenerator)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = HDDemoDataVitalsSampleGenerator;
  v5 = [(HDDemoDataBaseSampleGenerator *)&v15 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"HDDemoDataVitalsSampleHelperNextHeartRateSampleTimeKey"];
    v5->_nextHeartRateSampleTime = v6;
    [v4 decodeDoubleForKey:@"HDDemoDataVitalsSampleHelperNextRespirationRateSampleTimeKey"];
    v5->_nextRespirationRateSampleTime = v7;
    [v4 decodeDoubleForKey:@"HDDemoDataVitalsSampleHelperLastRespirationRateGenerationTimeKey"];
    v5->_lastRespirationRateGenerationTime = v8;
    [v4 decodeDoubleForKey:@"HDDemoDataVitalsSampleHelperNextBloodPressureSampleTimeKey"];
    v5->_nextBloodPressureSampleTime = v9;
    [v4 decodeDoubleForKey:@"HDDemoDataVitalsSampleHelperNextBodyTempSampleTimeKey"];
    v5->_nextBodyTempSampleTime = v10;
    [v4 decodeDoubleForKey:@"HDDemoDataVitalsSampleHelperNextOxygenSaturationSampleTimeKey"];
    v5->_nextOxygenSaturationSampleTime = v11;
    [v4 decodeDoubleForKey:@"HDDemoDataVitalsSampleHelperNextPeripheralPerfusionIndexSampleTimeKey"];
    v5->_nextPeripheralPerfusionIndexSampleTime = v12;
    [v4 decodeDoubleForKey:@"HDDemoDataVitalsSampleHelperLastPeripheralPerfusionIndexValueKey"];
    v5->_lastPeripheralPerfusionIndexValue = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HDDemoDataVitalsSampleGenerator;
  v4 = a3;
  [(HDDemoDataBaseSampleGenerator *)&v5 encodeWithCoder:v4];
  [v4 encodeDouble:@"HDDemoDataVitalsSampleHelperNextHeartRateSampleTimeKey" forKey:{self->_nextHeartRateSampleTime, v5.receiver, v5.super_class}];
  [v4 encodeDouble:@"HDDemoDataVitalsSampleHelperNextRespirationRateSampleTimeKey" forKey:self->_nextRespirationRateSampleTime];
  [v4 encodeDouble:@"HDDemoDataVitalsSampleHelperLastRespirationRateGenerationTimeKey" forKey:self->_lastRespirationRateGenerationTime];
  [v4 encodeDouble:@"HDDemoDataVitalsSampleHelperNextBloodPressureSampleTimeKey" forKey:self->_nextBloodPressureSampleTime];
  [v4 encodeDouble:@"HDDemoDataVitalsSampleHelperNextBodyTempSampleTimeKey" forKey:self->_nextBodyTempSampleTime];
  [v4 encodeDouble:@"HDDemoDataVitalsSampleHelperNextOxygenSaturationSampleTimeKey" forKey:self->_nextOxygenSaturationSampleTime];
  [v4 encodeDouble:@"HDDemoDataVitalsSampleHelperNextPeripheralPerfusionIndexSampleTimeKey" forKey:self->_nextPeripheralPerfusionIndexSampleTime];
  [v4 encodeDouble:@"HDDemoDataVitalsSampleHelperLastPeripheralPerfusionIndexValueKey" forKey:self->_lastPeripheralPerfusionIndexValue];
}

- (void)setupWithDemoDataGenerator:(id)a3
{
  v6.receiver = self;
  v6.super_class = HDDemoDataVitalsSampleGenerator;
  [(HDDemoDataBaseSampleGenerator *)&v6 setupWithDemoDataGenerator:a3];
  diurnalBPVariationTable = self->_diurnalBPVariationTable;
  self->_diurnalBPVariationTable = &unk_283CB0438;

  diurnalTempVariationTable = self->_diurnalTempVariationTable;
  self->_diurnalTempVariationTable = &unk_283CB0450;
}

- (void)generateObjectsForDemoPerson:(id)a3 fromTime:(double)a4 toTime:(double)a5 currentDate:(id)a6 objectCollection:(id)a7
{
  v366[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v360.receiver = self;
  v360.super_class = HDDemoDataVitalsSampleGenerator;
  v355 = a7;
  [(HDDemoDataBaseSampleGenerator *)&v360 generateObjectsForDemoPerson:v10 fromTime:v11 toTime:a5 currentDate:a5 objectCollection:?];
  if (qword_27D86C268 != -1)
  {
    dispatch_once(&qword_27D86C268, &__block_literal_global_244);
  }

  v12 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  v13 = [v12 generatorState];
  v349 = self;
  if ([v13 isDoingHIIT])
  {
    goto LABEL_12;
  }

  v14 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  v15 = [v14 generatorState];
  if ([v15 isDoingYoga])
  {
LABEL_11:

LABEL_12:
    goto LABEL_13;
  }

  v16 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  v17 = [v16 generatorState];
  if ([v17 isDoingElliptical])
  {
LABEL_10:

    self = v349;
    goto LABEL_11;
  }

  v18 = [(HDDemoDataBaseSampleGenerator *)v349 demoDataGenerator];
  v19 = [v18 generatorState];
  if ([v19 isWalking])
  {
LABEL_9:

    goto LABEL_10;
  }

  v346 = v16;
  v351 = v19;
  v20 = [(HDDemoDataBaseSampleGenerator *)v349 demoDataGenerator];
  v21 = [v20 generatorState];
  if ([v21 isHiking])
  {

    v19 = v351;
    v16 = v346;
    goto LABEL_9;
  }

  v339 = v21;
  v341 = v20;
  v344 = v18;
  v84 = [(HDDemoDataBaseSampleGenerator *)v349 demoDataGenerator];
  v337 = [v84 generatorState];
  if ([v337 isRunning])
  {
    v85 = v84;
    v86 = 1;
    v87 = v351;
  }

  else
  {
    v336 = [(HDDemoDataBaseSampleGenerator *)v349 demoDataGenerator];
    v335 = [v336 generatorState];
    if ([v335 isSwimming])
    {
      v85 = v84;
      v334 = 1;
      v87 = v351;
    }

    else
    {
      v333 = [(HDDemoDataBaseSampleGenerator *)v349 demoDataGenerator];
      v332 = [v333 generatorState];
      if ([v332 isCoreTraining])
      {
        v85 = v84;
        v334 = 1;
        v87 = v351;
      }

      else
      {
        v331 = [(HDDemoDataBaseSampleGenerator *)v349 demoDataGenerator];
        v330 = [v331 generatorState];
        if ([v330 isDancing])
        {
          v85 = v84;
          v334 = 1;
          v87 = v351;
          v323 = v331;
        }

        else
        {
          v329 = [(HDDemoDataBaseSampleGenerator *)v349 demoDataGenerator];
          v328 = [v329 generatorState];
          v85 = v84;
          if ([v328 isFunctionalStrengthTraining])
          {
            v334 = 1;
            v87 = v351;
            v323 = v331;
          }

          else
          {
            v327 = [(HDDemoDataBaseSampleGenerator *)v349 demoDataGenerator];
            v326 = [v327 generatorState];
            if ([v326 isCoolingDown])
            {
              v334 = 1;
            }

            else
            {
              v324 = [(HDDemoDataBaseSampleGenerator *)v349 demoDataGenerator];
              v325 = [v324 generatorState];
              v334 = [v325 isUnderwaterDiving];
            }

            v87 = v351;
            v323 = v331;
          }
        }
      }
    }

    v86 = v334;
  }

  self = v349;
  if ((v86 & 1) == 0)
  {
    v22 = 0;
    goto LABEL_14;
  }

LABEL_13:
  v22 = 1;
LABEL_14:
  v23 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  v24 = [v23 activitySampleGenerator];
  v25 = [v24 _isDemoPersonInWorkoutRecovery:v10 atTime:a5];

  v26 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  v27 = [v26 mindfulnessSampleGenerator];
  v28 = [v27 didGenerateMindfulnessMinute];

  v29 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  v30 = [v29 sleepSampleGenerator];
  v31 = [v30 isDemoPersonSleeping:v10 atTime:a5];

  v348 = v11;
  if ((v31 & 1) == 0 && (v28 & 1) == 0 && (v22 & 1) == 0 && (v25 & 1) == 0)
  {
    v32 = v10;
    v33 = v32;
    if (self && self->_nextHeartRateSampleTime <= a5)
    {
      [v32 heartRateSampleFrequency];
      v39 = v38;
      v40 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      v41 = [v40 statisticsSampleGenerator];
      [v33 heartRateSampleFrequencyStdDev];
      [v41 computeNoiseFromTime:a5 stdDev:v42];
      self->_nextHeartRateSampleTime = v39 + v43 + self->_nextHeartRateSampleTime;

      v44 = v33;
      v45 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      v46 = [v45 statisticsSampleGenerator];
      [v44 heartRateSampleNoiseStdDev];
      [v46 computeNoiseFromTime:a5 stdDev:v47];
      v49 = v48;

      v50 = [(HDDemoDataVitalsSampleGenerator *)self _computeMaxHRForDemoPerson:v44 atTime:a5];
      v51 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      v52 = [v51 generatorState];
      v53 = [v52 isExercising];

      if (v53)
      {
        v54 = [(HDDemoDataVitalsSampleGenerator *)self _computeMaxHRForDemoPerson:v44 atTime:a5];
        [v44 exerciseIntensityPercentage];
        v56 = v55;
        v57 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
        v58 = [v57 statisticsSampleGenerator];
        [v58 computeNoiseFromTime:a5 stdDev:0.05];
        v60 = v49 + v59 + v54 * v56;

        v61 = 6;
      }

      else
      {
        v62 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
        v63 = [v62 activitySampleGenerator];
        [v44 heartRateSampleFrequency];
        v65 = [v63 _isDemoPersonWalking:v44 atTime:a5 samplePeriod:v64];

        v66 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
        v67 = [v66 activitySampleGenerator];
        v68 = v67;
        if (v65)
        {
          v69 = [v67 _computeFlightsClimbedForDemoPerson:v44 atTime:a5];

          v70 = [v44 restingHeartRate];
          v71 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
          v72 = [v71 statisticsSampleGenerator];
          [v72 randomDoubleFromGenerator];
          v74 = v73;

          v61 = 0;
          if (v69)
          {
            v75 = 1.4;
          }

          else
          {
            v75 = 1.3;
          }

          v60 = v49 + v70 * (v75 + v74 * 0.2);
        }

        else
        {
          v76 = [v67 _isDemoPersonCoolingDown:v44 atTime:a5];

          if (v76)
          {
            v77 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
            v78 = [v77 activitySampleGenerator];
            [v78 _computePercentCooledForDemoPerson:v44 atTime:a5];
            v80 = v79;

            v81 = [v44 restingHeartRate];
            v82 = v50 - [v44 restingHeartRate];
            [v44 exerciseIntensityPercentage];
            v60 = v81 + v83 * v82 * (1.0 - v80);
            v61 = 2;
          }

          else
          {
            v60 = v49 + [v44 restingHeartRate];
            v88 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
            v89 = [v88 statisticsSampleGenerator];
            [v89 pseudoRandomDoubleFromTime:a5];
            v91 = v90;

            if (v91 >= 20.0)
            {
              v61 = 0;
            }

            else
            {
              v61 = 3;
            }
          }
        }
      }

      v92 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      v93 = [v92 foodSampleGenerator];
      v94 = [v93 _isDemoPersonConsumingCaffeine:v44 atTime:a5];

      if (v94)
      {
        v95 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
        v96 = [v95 statisticsSampleGenerator];
        [v96 computeNoiseFromTime:a5 stdDev:3.0];
        v60 = v60 + fabs(v97) + 4.0;
      }

      if (v60 <= v50)
      {
        v98 = v60;
      }

      else
      {
        v98 = v50;
      }

      if (v98 <= 55.0)
      {
        v98 = (arc4random_uniform(0xFu) + 45);
      }

      v99 = floor(v98);

      if (v99 > 0.0)
      {
        v100 = [MEMORY[0x277CCD7E8] quantityWithUnit:_MergedGlobals_15_0 doubleValue:v99];
        v101 = MEMORY[0x277CCD800];
        v102 = qword_27D86C228;
        v365 = *MEMORY[0x277CCE030];
        v103 = [MEMORY[0x277CCABB0] numberWithInteger:v61];
        v366[0] = v103;
        v104 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v366 forKeys:&v365 count:1];
        v105 = [v101 quantitySampleWithType:v102 quantity:v100 startDate:v11 endDate:v11 metadata:v104];

        [v355 addObjectFromWatch:v105];
      }

      v106 = v44;
      goto LABEL_47;
    }
  }

  v34 = v10;
  if (!self)
  {
    v35 = 0.0;
    v36 = 1;
    v37 = 0.0;
    goto LABEL_50;
  }

LABEL_47:
  if (self->_nextBloodPressureSampleTime > a5)
  {

    v107 = v10;
    goto LABEL_55;
  }

  v108 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  v109 = [v108 statisticsSampleGenerator];
  [v10 bloodPressureSampleFrequency];
  v111 = v110;
  [v10 genericSampleTimeNoiseStdDev];
  [v109 computeStatisticalTimeFromCurrentTime:a5 mean:v111 stdDev:v112];
  self->_nextBloodPressureSampleTime = v113 + self->_nextBloodPressureSampleTime;

  v114 = [v10 restingSystolicBloodPressure];
  [v10 restingSystolicBloodPressureSampleNoiseStdDev];
  v37 = [(HDDemoDataVitalsSampleGenerator *)&self->super.super.isa _computeBloodPressureForDemoPerson:v10 atTime:a5 baseBloodPressure:v114 stdDev:v115];
  v116 = [v10 restingDiastolicBloodPressure];
  [v10 restingDiastolicBloodPressureSampleNoiseStdDev];
  v36 = 0;
  v35 = [(HDDemoDataVitalsSampleGenerator *)&self->super.super.isa _computeBloodPressureForDemoPerson:v10 atTime:a5 baseBloodPressure:v116 stdDev:v117];
LABEL_50:

  if (v37 == -2147483650.0 || v35 == -2147483650.0)
  {
    v127 = v10;
    if (v36)
    {
      goto LABEL_53;
    }
  }

  else
  {
    [MEMORY[0x277CCD7E8] quantityWithUnit:qword_27D86C210 doubleValue:v37];
    v118 = v352 = v36;
    v119 = [MEMORY[0x277CCD800] quantitySampleWithType:qword_27D86C238 quantity:v118 startDate:v11 endDate:v11];
    [v355 addObjectFromPhone:v119];
    v120 = [MEMORY[0x277CCD7E8] quantityWithUnit:qword_27D86C210 doubleValue:v35];
    v121 = [MEMORY[0x277CCD800] quantitySampleWithType:qword_27D86C240 quantity:v120 startDate:v11 endDate:v11];
    [v355 addObjectFromPhone:v121];
    v122 = [MEMORY[0x277CBEB98] setWithObjects:{v119, v121, 0}];
    v123 = [MEMORY[0x277CCD240] correlationWithType:qword_27D86C248 startDate:v11 endDate:v11 objects:v122];
    self = v349;
    [v355 addObjectFromPhone:v123];

    v124 = v10;
    if (v352)
    {
LABEL_53:
      v125 = 0;
      v126 = 1;
      goto LABEL_84;
    }
  }

LABEL_55:
  v128 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (self->_nextRespirationRateSampleTime <= a5)
  {
    v129 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    v130 = [v129 sleepSampleGenerator];
    v131 = [v130 isDemoPersonSleeping:v10 atTime:a5];

    if (!v131 || (v132.f64[0] = self->_lastRespirationRateGenerationTime, v132.f64[0] == 0.0) || (v132.f64[1] = a5, v133 = vcvtq_s64_f64(vdivq_f64(vmulq_f64(v132, vdupq_n_s64(0x40F5180000000000uLL)), vdupq_n_s64(0x404E000000000000uLL))), v134 = v133.i64[1], v135 = v133.i64[0], v133.i64[0] >= v133.i64[1]))
    {
LABEL_79:
      v185 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      v186 = [v185 sleepSampleGenerator];
      if ([v186 isDemoPersonSleeping:v10 atTime:a5])
      {
        [v10 restingRespirationRateSampleFrequencyDuringSleep];
      }

      else
      {
        [v10 restingRespirationRateSampleFrequency];
      }

      v188 = v187;

      self->_nextRespirationRateSampleTime = v188 + self->_nextRespirationRateSampleTime;
      self->_lastRespirationRateGenerationTime = a5;
      v125 = [v128 copy];
      goto LABEL_83;
    }

    while (1)
    {
      v136 = v10;
      v137 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      v138 = [v137 statisticsSampleGenerator];
      [v136 restingRespirationRateSampleNoiseStdDev];
      [v138 computeNoiseFromTime:v135 * 60.0 * 0.0000115740741 stdDev:v139];
      v141 = v140;

      v142 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      v143 = [v142 sleepSampleGenerator];
      v144 = [v143 isDemoPersonSleeping:v136 atTime:v135 * 60.0 * 0.0000115740741];

      v145 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      v146 = v145;
      if (v144)
      {
        v147 = [v145 statisticsSampleGenerator];
        [v136 restingRespirationRateSampleNoiseStdDev];
        [v147 computeNoiseFromTime:v135 * 60.0 * 0.0000115740741 stdDev:{vabdd_f64(v148, (arc4random() & 0x7FFFFFFF) / 2147483650.0 * (v148 + v148) + 0.0)}];
        v150 = v149;

        v151 = [v136 restingRespirationRate];
        v152 = v150 + ((arc4random() & 0x7FFFFFFF) / 2147483650.0 * 2.0 + -1.0 + v151) * 1.15;
      }

      else
      {
        v153 = [v145 generatorState];
        v154 = [v153 isExercising];

        if (v154)
        {
          v155 = [v136 restingRespirationRate];
          v156 = 1.5;
        }

        else
        {
          v157 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
          v158 = [v157 activitySampleGenerator];
          [v136 restingRespirationRateSampleFrequency];
          v160 = [v158 _isDemoPersonWalking:v136 atTime:v135 * 60.0 * 0.0000115740741 samplePeriod:v159];

          v161 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
          v162 = [v161 activitySampleGenerator];
          v163 = v162;
          v164 = v135 * 60.0 * 0.0000115740741;
          if (!v160)
          {
            v166 = [v162 _isDemoPersonCoolingDown:v136 atTime:v164];

            if (v166)
            {
              v167 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
              v168 = [v167 activitySampleGenerator];
              [v168 _computePercentCooledForDemoPerson:v136 atTime:v135 * 60.0 * 0.0000115740741];
              v170 = v169;

              v171 = (1.0 - v170) * vcvtd_n_f64_s64([v136 restingRespirationRate], 1uLL) * 0.5;
              v172 = v171 + [v136 restingRespirationRate];
            }

            else
            {
              v172 = [v136 restingRespirationRate];
            }

            v152 = v141 + v172;
            goto LABEL_73;
          }

          v165 = [v162 _computeFlightsClimbedForDemoPerson:v136 atTime:v164];

          v155 = [v136 restingRespirationRate];
          if (v165)
          {
            v156 = 1.3;
          }

          else
          {
            v156 = 1.2;
          }
        }

        v152 = v141 + v155 * v156;
      }

LABEL_73:

      v173 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      v174 = [v173 sleepSampleGenerator];
      v175 = [v174 isDemoPersonSleeping:v136 atTime:v135 * 60.0 * 0.0000115740741];

      if (v175)
      {
        v176 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
        v177 = [v176 generatorState];
        v178 = [v177 firstSampleDate];
        v179 = [v178 dateByAddingTimeInterval:v135 * 60.0 * 0.0000115740741 * 86400.0];

        v180 = [HDDemoDataRespirationRate alloc];
        v181 = [MEMORY[0x277CCABB0] numberWithDouble:floor(v152 + v152) * 0.5];
        v182 = v179;
        v183 = v181;
        if (v180)
        {
          v361.receiver = v180;
          v361.super_class = HDDemoDataRespirationRate;
          v184 = [(HDDemoDataBaseSampleGenerator *)&v361 init];
          v180 = v184;
          if (v184)
          {
            objc_storeStrong(v184 + 1, v179);
            objc_storeStrong(&v180->_rate, v181);
          }
        }

        [v128 addObject:v180];
        self = v349;
      }

      v135 += 10;
      if (v135 >= v134)
      {
        goto LABEL_79;
      }
    }
  }

  v125 = 0;
LABEL_83:

  v126 = 0;
LABEL_84:

  v345 = v125;
  v347 = v126;
  if ([v125 count])
  {
    v342 = v10;
    v358 = 0u;
    v359 = 0u;
    v356 = 0u;
    v357 = 0u;
    v353 = v125;
    v189 = [v353 countByEnumeratingWithState:&v356 objects:v364 count:16];
    if (v189)
    {
      v190 = v189;
      v191 = *v357;
      do
      {
        for (i = 0; i != v190; ++i)
        {
          if (*v357 != v191)
          {
            objc_enumerationMutation(v353);
          }

          v193 = *(*(&v356 + 1) + 8 * i);
          v194 = MEMORY[0x277CCD7E8];
          v195 = _MergedGlobals_15_0;
          v196 = [v193 rate];
          [v196 doubleValue];
          v197 = [v194 quantityWithUnit:v195 doubleValue:?];

          v198 = MEMORY[0x277CCD800];
          v199 = qword_27D86C230;
          v200 = [v193 date];
          v201 = [v193 date];
          v202 = [v198 quantitySampleWithType:v199 quantity:v197 startDate:v200 endDate:v201];

          [v355 addObjectFromWatch:v202];
        }

        v190 = [v353 countByEnumeratingWithState:&v356 objects:v364 count:16];
      }

      while (v190);
    }

    v11 = v348;
    self = v349;
    v10 = v342;
    v125 = v345;
    v126 = v347;
  }

  v203 = v10;
  v204 = v203;
  if (v126)
  {
    goto LABEL_96;
  }

  if (self->_nextBodyTempSampleTime > a5)
  {
    goto LABEL_96;
  }

  [v203 bodyTempSampleFrequency];
  v206 = v205;
  v207 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  v208 = [v207 statisticsSampleGenerator];
  [v208 computeNoiseFromTime:a5 stdDev:0.0416666667];
  self->_nextBodyTempSampleTime = v206 + v209 + self->_nextBodyTempSampleTime;

  [(HDDemoDataVitalsSampleGenerator *)self _computeBodyTempInCelsiusForDemoPerson:v204 atTime:1 addNoise:a5];
  if (v210 == -2147483650.0)
  {
LABEL_96:
    v211 = 0;
    v212 = v204;
  }

  else
  {
    v211 = [MEMORY[0x277CCABB0] numberWithDouble:?];

    if (!v211)
    {
      goto LABEL_98;
    }

    v222 = MEMORY[0x277CCD7E8];
    v223 = qword_27D86C218;
    [v211 doubleValue];
    v212 = [v222 quantityWithUnit:v223 doubleValue:?];
    v224 = [MEMORY[0x277CCD800] quantitySampleWithType:qword_27D86C250 quantity:v212 startDate:v11 endDate:v11];
    [v355 addObjectFromPhone:v224];
  }

LABEL_98:
  v354 = v211;
  if ([v204 resultsTrackingType] == 2 || HKFeatureFlagBloodOxygenSaturationEnabled())
  {
    v213 = v204;
    v343 = v11;
    if ((v126 & 1) != 0 || self->_nextOxygenSaturationSampleTime > a5)
    {
      goto LABEL_108;
    }

    v214 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    v215 = [v214 sleepSampleGenerator];
    v216 = [v215 isDemoPersonSleeping:v213 atTime:a5];

    v217 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    v218 = [v217 statisticsSampleGenerator];
    [v218 pseudoRandomDoubleFromTime:a5];
    v220 = v219;
    if (v216)
    {
      [v213 oxygenSaturationMeasuringSuccessRateDuringSleep];
    }

    else
    {
      [v213 oxygenSaturationMeasuringSuccessRate];
    }

    v225 = v221;

    if (v220 > v225)
    {
LABEL_108:
      v226 = 0;
      v227 = v343;
    }

    else
    {
      [v213 oxygenSaturationSampleFrequency];
      v229 = v228 + a5;
      v230 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      v231 = [v230 statisticsSampleGenerator];
      [v231 computeNoiseFromTime:a5 stdDev:0.00208333333];
      self->_nextOxygenSaturationSampleTime = v229 + v232;

      [v213 oxygenSaturationMean];
      v234 = v233;
      [v213 oxygenSaturationStdDev];
      v236 = v235;
      v237 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      v238 = [v237 generatorState];
      v239 = [v238 calendarDay];

      if (v239 == 7)
      {
        v240 = [MEMORY[0x277CBEA80] currentCalendar];
        v241 = [MEMORY[0x277CBEAA8] date];
        v242 = [v240 dateByAddingUnit:16 value:-14 toDate:v241 options:0];

        v227 = v343;
        if ([v343 hk_isAfterDate:v242])
        {
          [v213 oxygenSaturationMeanAtElevation];
          v234 = v243;
          [v213 oxygenSaturationStdDevAtElevation];
          v236 = v244;
        }
      }

      else
      {
        v227 = v343;
      }

      v245 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      v246 = [v245 statisticsSampleGenerator];
      [v246 computeNoiseFromTime:a5 stdDev:v236];
      v248 = v247;

      v249 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      v250 = [v249 generatorState];
      v251 = [v250 isExercising];

      v252 = v234 + -1.0;
      if (!v251)
      {
        v252 = v234;
      }

      v253 = v248 + v252;
      v254 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      v255 = [v254 sleepSampleGenerator];
      v256 = [v255 isDemoPersonSleeping:v213 atTime:a5];

      v257 = 2.0;
      if (v256)
      {
        v257 = -3.0;
      }

      v258 = ceil(v253 + v257);
      if (v258 > 100.0)
      {
        v258 = 100.0;
      }

      v226 = [MEMORY[0x277CCABB0] numberWithDouble:{fmax(v258, 90.0) / 100.0}];
    }

    if (v226)
    {
      v259 = MEMORY[0x277CCD7E8];
      v260 = qword_27D86C220;
      [v226 doubleValue];
      v340 = [v259 quantityWithUnit:v260 doubleValue:?];
      [v226 doubleValue];
      v262 = v261 * 100.0;
      [v213 oxygenSaturationMeanAtElevation];
      if (v262 >= v263)
      {
        v265 = MEMORY[0x277CCD7E8];
        v266 = [MEMORY[0x277CCDAB0] pascalUnitWithMetricPrefix:9];
        v264 = [v265 quantityWithUnit:v266 doubleValue:101.0];
      }

      else
      {
        v264 = HKOxygenSaturationLowBarometricPressureThresholdQuantity();
      }

      v362 = *MEMORY[0x277CCC478];
      v363 = v264;
      v267 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v363 forKeys:&v362 count:1];
      v268 = MEMORY[0x277CCD800];
      v269 = qword_27D86C258;
      v270 = [MEMORY[0x277CCD2E8] localDevice];
      v271 = v268;
      v272 = v340;
      v273 = [v271 quantitySampleWithType:v269 quantity:v340 startDate:v227 endDate:v227 device:v270 metadata:v267];

      if (HKFeatureFlagBloodOxygenSaturationEnabled())
      {
        [v355 addObjectFromWatch:v273];
        v338 = v264;
        if (v347)
        {
          v282 = 0;
        }

        else
        {
          [v226 doubleValue];
          v275 = v274 * 100.0;
          v276 = 90.0;
          if (v275 <= 90.0)
          {
            v277 = 10.0;
            if (v275 <= 85.0)
            {
              if (v275 <= 80.0)
              {
                v276 = 120.0;
              }

              else
              {
                v276 = 110.0;
              }

              if (v275 <= 80.0)
              {
                v277 = 15.0;
              }

              else
              {
                v277 = 10.0;
              }
            }
          }

          else
          {
            v277 = 5.0;
            v276 = 70.0;
          }

          v278 = [(HDDemoDataBaseSampleGenerator *)v349 demoDataGenerator];
          v279 = [v278 statisticsSampleGenerator];
          [v279 pseudoRandomDoubleFromTime:a5];
          v281 = v276 + v280 * v277;

          v282 = [MEMORY[0x277CCABB0] numberWithDouble:v281];
        }

        v283 = MEMORY[0x277CCD7E8];
        v284 = _MergedGlobals_15_0;
        [v282 doubleValue];
        v285 = [v283 quantityWithUnit:v284 doubleValue:?];
        v286 = [MEMORY[0x277CCD800] quantitySampleWithType:qword_27D86C228 quantity:v285 startDate:v343 endDate:v343];
        [v355 addObjectFromWatch:v286];
        v287 = objc_alloc_init(MEMORY[0x277CBEB28]);
        v288 = [v286 UUID];
        [v287 hk_appendBytesWithUUID:v288];

        v289 = [v273 UUID];
        [v355 setAssociatedObjectUUIDs:v287 forObjectUUID:v289];

        v264 = v338;
        v272 = v340;
      }

      else
      {
        [v355 addObjectFromPhone:v273];
      }

      v211 = v354;
    }

    v125 = v345;
    v11 = v348;
    v126 = v347;
  }

  if ([v204 resultsTrackingType] == 2)
  {
    v290 = v204;
    if ((v126 & 1) != 0 || v349->_nextPeripheralPerfusionIndexSampleTime > a5)
    {
      v291 = 0;
LABEL_157:

LABEL_158:
      v11 = v348;
      v211 = v354;
      goto LABEL_159;
    }

    v292 = [(HDDemoDataBaseSampleGenerator *)v349 demoDataGenerator];
    v293 = [v292 generatorState];
    if ([v293 isExercising])
    {
    }

    else
    {
      v294 = [(HDDemoDataBaseSampleGenerator *)v349 demoDataGenerator];
      [v294 activitySampleGenerator];
      v296 = v295 = v125;
      v297 = [v296 _isDemoPersonCoolingDown:v290 atTime:a5];

      v125 = v295;
      if ((v297 & 1) == 0)
      {
        v310 = a5 + 1;
        v311 = [(HDDemoDataBaseSampleGenerator *)v349 demoDataGenerator];
        v312 = [MEMORY[0x277CBEA80] currentCalendar];
        v313 = [v311 isDemoDataTimeInWeekend:v312 calendar:a5];

        if (v313)
        {
          [v290 weekendSleepParameters];
        }

        else
        {
          [v290 weekdaySleepParameters];
        }
        v309 = ;
        v314 = [(HDDemoDataBaseSampleGenerator *)v349 demoDataGenerator];
        v315 = [v314 activitySampleGenerator];
        [v309 wakeUpTime];
        v317 = v316 + v310;
        [v290 exerciseStartTime];
        v319 = v318;
        [v290 exerciseStartTimeStdDev];
        [v315 _computeExerciseTimeFromCurrentTime:v317 mean:v319 stdDev:v320];
        v349->_nextPeripheralPerfusionIndexSampleTime = v321 + v310;

        v291 = 0;
LABEL_156:

        goto LABEL_157;
      }
    }

    [v290 peripheralPerfusionIndexSampleFrequency];
    v349->_nextPeripheralPerfusionIndexSampleTime = v298 + v349->_nextPeripheralPerfusionIndexSampleTime;
    [v290 peripheralPerfusionIndexMean];
    v300 = v299;
    v301 = [(HDDemoDataBaseSampleGenerator *)v349 demoDataGenerator];
    v302 = [v301 statisticsSampleGenerator];
    [v290 peripheralPerfusionIndexStdDev];
    [v302 computeNoiseFromTime:a5 stdDev:v303];
    v305 = v300 + v304;

    [v290 peripheralPerfusionIndexSampleFrequency];
    if (v306 < 0.000694444444)
    {
      v305 = v349->_lastPeripheralPerfusionIndexValue * 0.6 + v305 * 0.4;
      v349->_lastPeripheralPerfusionIndexValue = v305;
    }

    v291 = [MEMORY[0x277CCABB0] numberWithDouble:(v305 * 100.0) / 100.0 / 100.0];

    if (!v291)
    {
      goto LABEL_158;
    }

    v307 = MEMORY[0x277CCD7E8];
    v308 = qword_27D86C220;
    [v291 doubleValue];
    v290 = [v307 quantityWithUnit:v308 doubleValue:?];
    v309 = [MEMORY[0x277CCD800] quantitySampleWithType:qword_27D86C260 quantity:v290 startDate:v348 endDate:v348];
    [v355 addObjectFromPhone:v309];
    goto LABEL_156;
  }

LABEL_159:

  v322 = *MEMORY[0x277D85DE8];
}

uint64_t __109__HDDemoDataVitalsSampleGenerator_generateObjectsForDemoPerson_fromTime_toTime_currentDate_objectCollection___block_invoke()
{
  v0 = [MEMORY[0x277CCDAB0] unitFromString:@"count/min"];
  v1 = _MergedGlobals_15_0;
  _MergedGlobals_15_0 = v0;

  v2 = [MEMORY[0x277CCDAB0] millimeterOfMercuryUnit];
  v3 = qword_27D86C210;
  qword_27D86C210 = v2;

  v4 = [MEMORY[0x277CCDAB0] degreeCelsiusUnit];
  v5 = qword_27D86C218;
  qword_27D86C218 = v4;

  v6 = [MEMORY[0x277CCDAB0] percentUnit];
  v7 = qword_27D86C220;
  qword_27D86C220 = v6;

  v8 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
  v9 = qword_27D86C228;
  qword_27D86C228 = v8;

  v10 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC18]];
  v11 = qword_27D86C230;
  qword_27D86C230 = v10;

  v12 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC980]];
  v13 = qword_27D86C238;
  qword_27D86C238 = v12;

  v14 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC978]];
  v15 = qword_27D86C240;
  qword_27D86C240 = v14;

  v16 = [MEMORY[0x277CCD250] correlationTypeForIdentifier:*MEMORY[0x277CCBBA8]];
  v17 = qword_27D86C248;
  qword_27D86C248 = v16;

  v18 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC9A0]];
  v19 = qword_27D86C250;
  qword_27D86C250 = v18;

  v20 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCBE8]];
  v21 = qword_27D86C258;
  qword_27D86C258 = v20;

  v22 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC00]];
  v23 = qword_27D86C260;
  qword_27D86C260 = v22;

  return MEMORY[0x2821F96F8](v22, v23);
}

- (uint64_t)_computeBloodPressureForDemoPerson:(double)a3 atTime:(double)a4 baseBloodPressure:(double)a5 stdDev:
{
  v9 = a2;
  v10 = [a1 demoDataGenerator];
  v11 = [v10 sleepSampleGenerator];
  v12 = [v11 isDemoPersonSleeping:v9 atTime:a3];

  if (v12)
  {
    v13 = 0xFFFFFFFF80000000;
  }

  else
  {
    v14 = [a1[4] objectAtIndexedSubscript:((a3 - a3) * 24.0)];
    [v14 doubleValue];
    v16 = v15 * a4;

    if ([v9 biologicalSex] != 2)
    {
      v16 = v16 * 0.9;
    }

    v17 = [a1 demoDataGenerator];
    v18 = [v17 generatorState];
    v19 = [v18 isExercising];

    v20 = 0.0;
    if (v19)
    {
      v21 = a4 * 0.07 + 4.0;
    }

    else
    {
      v21 = 0.0;
    }

    v22 = [a1 demoDataGenerator];
    v23 = [v22 foodSampleGenerator];
    v24 = [v23 _isDemoPersonConsumingCaffeine:v9 atTime:a3];

    if (v24)
    {
      v25 = [a1 demoDataGenerator];
      v26 = [v25 statisticsSampleGenerator];
      [v26 computeNoiseFromTime:a3 stdDev:2.25];
      v20 = fabs(v27) + 2.5;
    }

    v28 = [a1 demoDataGenerator];
    v29 = [v28 statisticsSampleGenerator];
    [v29 computeNoiseFromTime:a3 stdDev:a5];
    v31 = v30;

    v13 = (v16 + v21 + v20 + v31);
  }

  return v13;
}

- (uint64_t)_computeMaxHRForDemoPerson:(double)a3 atTime:
{
  v5 = a2;
  v6 = [a1 demoDataGenerator];
  v7 = [v6 currentDateFromCurrentTime:a3];

  v8 = [v5 birthDateComponents];

  v9 = HDDemoData_ageBetweenNSDateComponentsAndDate(v8, v7);
  return 220 - v9;
}

- (double)_computeBodyTempInCelsiusForDemoPerson:(id)a3 atTime:(double)a4 addNoise:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  v10 = [v9 reproductiveHealthSampleGenerator];
  v11 = [v10 _computeNextLuteinizingHormoneSurgeForDemoPerson:v8 atTime:a4] + 1;

  [v8 menstrualPeriodFrequency];
  v13 = v12;
  v14 = v11 / v12;
  [v8 menstrualPeriodFrequency];
  v16 = a4 % v15 + v14 * v13 - v11 + 15;
  if (self)
  {
    diurnalTempVariationTable = self->_diurnalTempVariationTable;
  }

  else
  {
    diurnalTempVariationTable = 0;
  }

  v18 = [(NSArray *)diurnalTempVariationTable objectAtIndexedSubscript:((a4 - a4) * 24.0) % 24];
  [v18 doubleValue];
  v20 = v19;

  v21 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  v22 = [v21 reproductiveHealthSampleGenerator];
  v23 = [v22 _basalBodyTempMultiplier];
  v24 = [v23 objectAtIndexedSubscript:v16 % 28];
  [v24 doubleValue];
  v26 = v25;

  v27 = v20 * v26;
  [v8 bodyTempFeverMultiplier];
  v29 = v27 * v28;
  v30 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  v31 = [v30 generatorState];
  LODWORD(v23) = [v31 isExercising];

  v32 = 0.0;
  v33 = v27 + v29;
  v34 = 0.0;
  if (v23)
  {
    [v8 bodyTempExerciseMultiplier];
    v34 = v33 * v35;
  }

  if (v5)
  {
    v36 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    v37 = [v36 statisticsSampleGenerator];
    [v8 bodyTempSampleNoiseStdDev];
    [v37 computeNoiseFromTime:a4 stdDev:v38];
    v32 = v39;
  }

  return v33 + v34 + v32 + -1.0;
}

@end