@interface HDDemoDataHeartSampleGenerator
- (HDDemoDataHeartSampleGenerator)init;
- (HDDemoDataHeartSampleGenerator)initWithCoder:(id)a3;
- (void)_computeRestingHeartRateForDemoPerson:(void *)a1 atTime:(void *)a2;
- (void)encodeWithCoder:(id)a3;
- (void)generateFirstRunObjectsForDemoPerson:(id)a3 firstDate:(id)a4 objectCollection:(id)a5;
- (void)generateObjectsForDemoPerson:(id)a3 fromTime:(double)a4 toTime:(double)a5 currentDate:(id)a6 objectCollection:(id)a7;
- (void)setProfile:(id)a3 provenance:(id)a4;
- (void)setupWithDemoDataGenerator:(id)a3;
@end

@implementation HDDemoDataHeartSampleGenerator

- (HDDemoDataHeartSampleGenerator)init
{
  v3.receiver = self;
  v3.super_class = HDDemoDataHeartSampleGenerator;
  result = [(HDDemoDataBaseSampleGenerator *)&v3 init];
  if (result)
  {
    result->_nextRestingHeartRateSampleTime = 0.0;
    result->_nextWalkingHeartRateAverageSampleTime = 0.341666667;
    result->_nextElectrocardiogramSampleTime = 0.375;
    result->_nextElectrocardiogramClassification = 3;
    result->_lastRestingHeartRate = 0.0;
    result->_lastWalkingHeartRateAverage = 0.0;
    result->_nextVO2MaxSampleTime = 0.486805556;
    result->_lastVO2MaxValue = 0.0;
    result->_meanVO2MaxValue = 0.0;
    result->_lastVO2MaxWorkoutWasActive = 0;
    result->_lastHeartRateRecoveryValue = 0.0;
    result->_lastHeartRateRecoveryWorkoutWasActive = 0;
  }

  return result;
}

- (HDDemoDataHeartSampleGenerator)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = HDDemoDataHeartSampleGenerator;
  v5 = [(HDDemoDataBaseSampleGenerator *)&v15 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"HDDemoDataHeartSampleGeneratorNextRestingHeartRateSampleTimeKey"];
    v5->_nextRestingHeartRateSampleTime = v6;
    [v4 decodeDoubleForKey:@"HDDemoDataHeartSampleGeneratorNextWalkingHeartRateAverageSampleTimeKey"];
    v5->_nextWalkingHeartRateAverageSampleTime = v7;
    [v4 decodeDoubleForKey:@"HDDemoDataHeartSampleGeneratorNextElectrocardiogramSampleTimeKey"];
    v5->_nextElectrocardiogramSampleTime = v8;
    v5->_nextElectrocardiogramClassification = [v4 decodeIntegerForKey:@"HDDemoDataHeartSampleGeneratorNextElectrocardiogramClassificationKey"];
    [v4 decodeDoubleForKey:@"HDDemoDataHeartSampleGeneratorLastRestingHeartRateSampleKey"];
    v5->_lastRestingHeartRate = v9;
    [v4 decodeDoubleForKey:@"HDDemoDataHeartSampleGeneratorLastWalkingHeartRateAverageSampleKey"];
    v5->_lastWalkingHeartRateAverage = v10;
    [v4 decodeDoubleForKey:@"HDDemoDataHeartSampleGeneratorNextVO2MaxSampleTimeKey"];
    v5->_nextVO2MaxSampleTime = v11;
    [v4 decodeDoubleForKey:@"HDDemoDataHeartSampleGeneratorLastVO2MaxSampleKey"];
    v5->_lastVO2MaxValue = v12;
    v5->_lastVO2MaxWorkoutWasActive = [v4 decodeBoolForKey:@"HDDemoDataHeartSampleGeneratorLastVO2MaxWorkoutWasActiveKey"];
    [v4 decodeDoubleForKey:@"HDDemoDataHeartSampleGeneratorLastHeartRateRecoverySampleKey"];
    v5->_lastHeartRateRecoveryValue = v13;
    v5->_lastHeartRateRecoveryWorkoutWasActive = [v4 decodeBoolForKey:@"HDDemoDataHeartSampleGeneratorLastHeartRateRecoveryWorkoutWasActiveKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HDDemoDataHeartSampleGenerator;
  v4 = a3;
  [(HDDemoDataBaseSampleGenerator *)&v5 encodeWithCoder:v4];
  [v4 encodeDouble:@"HDDemoDataHeartSampleGeneratorNextRestingHeartRateSampleTimeKey" forKey:{self->_nextRestingHeartRateSampleTime, v5.receiver, v5.super_class}];
  [v4 encodeDouble:@"HDDemoDataHeartSampleGeneratorNextWalkingHeartRateAverageSampleTimeKey" forKey:self->_nextWalkingHeartRateAverageSampleTime];
  [v4 encodeDouble:@"HDDemoDataHeartSampleGeneratorNextElectrocardiogramSampleTimeKey" forKey:self->_nextElectrocardiogramSampleTime];
  [v4 encodeInteger:self->_nextElectrocardiogramClassification forKey:@"HDDemoDataHeartSampleGeneratorNextElectrocardiogramClassificationKey"];
  [v4 encodeDouble:@"HDDemoDataHeartSampleGeneratorLastRestingHeartRateSampleKey" forKey:self->_lastRestingHeartRate];
  [v4 encodeDouble:@"HDDemoDataHeartSampleGeneratorLastWalkingHeartRateAverageSampleKey" forKey:self->_lastWalkingHeartRateAverage];
  [v4 encodeDouble:@"HDDemoDataHeartSampleGeneratorNextVO2MaxSampleTimeKey" forKey:self->_nextVO2MaxSampleTime];
  [v4 encodeDouble:@"HDDemoDataHeartSampleGeneratorLastVO2MaxSampleKey" forKey:self->_lastVO2MaxValue];
  [v4 encodeBool:self->_lastVO2MaxWorkoutWasActive forKey:@"HDDemoDataHeartSampleGeneratorLastVO2MaxWorkoutWasActiveKey"];
  [v4 encodeDouble:@"HDDemoDataHeartSampleGeneratorLastHeartRateRecoverySampleKey" forKey:self->_lastHeartRateRecoveryValue];
  [v4 encodeBool:self->_lastHeartRateRecoveryWorkoutWasActive forKey:@"HDDemoDataHeartSampleGeneratorLastHeartRateRecoveryWorkoutWasActiveKey"];
}

- (void)setProfile:(id)a3 provenance:(id)a4
{
  v4.receiver = self;
  v4.super_class = HDDemoDataHeartSampleGenerator;
  [(HDDemoDataBaseSampleGenerator *)&v4 setProfile:a3, a4];
}

- (void)setupWithDemoDataGenerator:(id)a3
{
  v18.receiver = self;
  v18.super_class = HDDemoDataHeartSampleGenerator;
  v4 = a3;
  [(HDDemoDataBaseSampleGenerator *)&v18 setupWithDemoDataGenerator:v4];
  v5 = [v4 demoPerson];
  v6 = [v4 generatorState];

  v7 = [v6 currentDate];
  v8 = v5;
  v9 = v7;
  if (self)
  {
    v10 = [v8 birthDateComponents];
    v11 = HDDemoData_ageBetweenNSDateComponentsAndDate(v10, v9);

    v12 = [v8 biologicalSex];
    if (v12 == 2)
    {
      v13 = 20.0;
      if (v11 > 86)
      {
        goto LABEL_12;
      }

      v14 = v11;
      v15 = 68.0;
      v16 = -0.55;
    }

    else
    {
      if (v12 == 1)
      {
        v13 = 18.0;
        if (v11 > 73)
        {
          goto LABEL_12;
        }

        v14 = v11;
        v15 = 52.0;
      }

      else
      {
        v13 = 20.0;
        if (v11 > 79)
        {
          goto LABEL_12;
        }

        v14 = v11;
        v15 = 57.0;
      }

      v16 = -0.46;
    }

    v13 = v15 + v14 * v16;
  }

  else
  {
    v13 = 0.0;
  }

LABEL_12:

  self->_meanVO2MaxValue = v13;
  if (![(HDDemoDataBaseSampleGenerator *)self createdFromNSKeyedUnarchiver])
  {
    self->_lastRestingHeartRate = [v8 restingHeartRate];
    self->_lastWalkingHeartRateAverage = [v8 walkingHeartRateAverage];
    self->_lastVO2MaxValue = self->_meanVO2MaxValue;
    [v8 heartRateRecovery];
    self->_lastHeartRateRecoveryValue = v17;
  }
}

- (void)generateFirstRunObjectsForDemoPerson:(id)a3 firstDate:(id)a4 objectCollection:(id)a5
{
  v56 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (self)
  {
    v9 = [v7 birthDateComponents];
    v10 = HDDemoData_ageBetweenNSDateComponentsAndDate(v9, v8);

    if (v10 >= *MEMORY[0x277CCE298])
    {
      v11 = [(HDDemoDataBaseSampleGenerator *)self profile];
      v12 = [v11 profileExtensionsConformingToProtocol:&unk_283D71258];

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v47 objects:v55 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v48;
        v17 = *MEMORY[0x277CCC000];
LABEL_5:
        v18 = 0;
        while (1)
        {
          if (*v48 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v19 = [*(*(&v47 + 1) + 8 * v18) featureAvailabilityExtensionForFeatureIdentifier:v17];
          if (v19)
          {
            break;
          }

          if (v15 == ++v18)
          {
            v15 = [v13 countByEnumeratingWithState:&v47 objects:v55 count:16];
            if (v15)
            {
              goto LABEL_5;
            }

            goto LABEL_11;
          }
        }

        v21 = v19;

        v22 = [MEMORY[0x277CBEAF8] currentLocale];
        v23 = [v22 countryCode];

        v46 = 0;
        v24 = [v21 onboardingEligibilityForCountryCode:v23 error:&v46];
        v25 = v46;
        if (v25 && (_HKInitializeLogging(), v26 = *MEMORY[0x277CCC2B8], os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR)))
        {
          *buf = 138543618;
          v52 = self;
          v53 = 2114;
          v54 = v25;
          _os_log_error_impl(&dword_228986000, v26, OS_LOG_TYPE_ERROR, "[%{public}@] Error while determining onboarding eligibility for Cardio Fitness %{public}@", buf, 0x16u);
          if (!v24)
          {
            goto LABEL_24;
          }
        }

        else if (!v24)
        {
          goto LABEL_24;
        }

        if (([v24 ineligibilityReasons] & 8) == 0)
        {
          v27 = objc_alloc(MEMORY[0x277CCD740]);
          v28 = [MEMORY[0x277CBEAA8] date];
          v29 = v23;
          v30 = v28;
          v44 = v29;
          v31 = [v27 initWithFeatureIdentifier:v17 version:1 completionDate:v28 countryCode:? countryCodeProvenance:?];

          v32 = [(HDDemoDataBaseSampleGenerator *)self profile];
          v33 = [v32 onboardingCompletionManager];
          v45 = 0;
          v43 = v31;
          v34 = [v33 insertOnboardingCompletion:v31 error:&v45];
          v35 = v45;

          _HKInitializeLogging();
          v36 = *MEMORY[0x277CCC2B8];
          v37 = *MEMORY[0x277CCC2B8];
          if (v34)
          {
            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              v38 = "Completed Cardio Fitness onboarding";
              v39 = v36;
              v40 = OS_LOG_TYPE_INFO;
              v41 = 2;
LABEL_22:
              _os_log_impl(&dword_228986000, v39, v40, v38, buf, v41);
            }
          }

          else if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v52 = v35;
            v38 = "Failed to insert Cardio Fitness onboarding completion: %{public}@";
            v39 = v36;
            v40 = OS_LOG_TYPE_DEFAULT;
            v41 = 12;
            goto LABEL_22;
          }

          v23 = v44;
        }

LABEL_24:

        goto LABEL_25;
      }

LABEL_11:

      _HKInitializeLogging();
      v20 = *MEMORY[0x277CCC2B8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "Unable to find Cardio Fitness Feature Availability Provider", buf, 2u);
      }

LABEL_25:
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)generateObjectsForDemoPerson:(id)a3 fromTime:(double)a4 toTime:(double)a5 currentDate:(id)a6 objectCollection:(id)a7
{
  v201 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a6;
  v13 = a7;
  v195.receiver = self;
  v195.super_class = HDDemoDataHeartSampleGenerator;
  [(HDDemoDataBaseSampleGenerator *)&v195 generateObjectsForDemoPerson:v11 fromTime:v12 toTime:v13 currentDate:a5 objectCollection:a5];
  if (qword_27D86C190 != -1)
  {
    dispatch_once(&qword_27D86C190, &__block_literal_global_139);
  }

  v14 = v11;
  v15 = v14;
  if (!self)
  {

    v180 = v15;
    v185 = 0;
LABEL_10:

    v26 = v15;
    v27 = v12;
    v28 = 0;
    v29 = 0;
    if (!self)
    {
      goto LABEL_38;
    }

    goto LABEL_23;
  }

  if (self->_nextRestingHeartRateSampleTime <= a5)
  {
    v17 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    v18 = [v17 statisticsSampleGenerator];
    [v15 genericSampleTimeNoiseStdDev];
    [v18 computeNoiseFromTime:a5 stdDev:v19];
    self->_nextRestingHeartRateSampleTime = v20 + a5 + 1.0;

    v21 = MEMORY[0x277CCABB0];
    [HDDemoDataHeartSampleGenerator _computeRestingHeartRateForDemoPerson:v15 atTime:?];
    v22 = [v21 numberWithDouble:?];

    v185 = v22;
    if (!v22)
    {
      goto LABEL_9;
    }

    [v22 doubleValue];
    self->_lastRestingHeartRate = v23;
    v16 = [MEMORY[0x277CCD7E8] quantityWithUnit:_MergedGlobals_4 doubleValue:?];
    v24 = [MEMORY[0x277CCD800] quantitySampleWithType:qword_27D86C168 quantity:v16 startDate:v12 endDate:v12];
    [v13 addObjectFromPhone:v24];
  }

  else
  {
    v185 = 0;
    v16 = v14;
  }

LABEL_9:
  v25 = v15;
  if (self->_nextWalkingHeartRateAverageSampleTime > a5)
  {
    goto LABEL_10;
  }

  v30 = v25;
  v31 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  v32 = [v31 statisticsSampleGenerator];
  [v30 genericSampleTimeNoiseStdDev];
  [v32 computeNoiseFromTime:a5 stdDev:v33];
  self->_nextWalkingHeartRateAverageSampleTime = v34 + a5 + 1.0;

  v35 = MEMORY[0x277CCABB0];
  lastWalkingHeartRateAverage = self->_lastWalkingHeartRateAverage;
  v37 = v30;
  v38 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  v39 = [v38 statisticsSampleGenerator];
  [v39 randomDoubleFromGenerator];
  v41 = v40;
  [v37 heartRateSampleNoiseStdDev];
  v43 = v42;

  v44 = self->_lastWalkingHeartRateAverage;
  v45 = [v37 walkingHeartRateAverage];
  v46 = [v37 walkingHeartRateAverageMaxDailyDifference];
  v47 = [v37 walkingHeartRateAverageMaxTotalDifference];

  v48 = v45 + v47;
  v49 = v44 + v46;
  if (v49 >= lastWalkingHeartRateAverage + (v41 + -0.5) * v43)
  {
    v49 = lastWalkingHeartRateAverage + (v41 + -0.5) * v43;
  }

  if (v44 - v46 >= v49)
  {
    v49 = v44 - v46;
  }

  if (v48 >= v49)
  {
    v48 = v49;
  }

  if (v45 - v47 >= v48)
  {
    v48 = v45 - v47;
  }

  v28 = [v35 numberWithDouble:v48];

  if (v28)
  {
    [v28 doubleValue];
    self->_lastWalkingHeartRateAverage = v50;
    [MEMORY[0x277CCD7E8] quantityWithUnit:_MergedGlobals_4 doubleValue:?];
    v51 = v188 = v28;
    v52 = [MEMORY[0x277CCD800] quantitySampleWithType:qword_27D86C170 quantity:v51 startDate:v12 endDate:v12];
    [v13 addObjectFromPhone:v52];
    v197 = *MEMORY[0x277CCE030];
    v198 = &unk_283CB3B70;
    v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v198 forKeys:&v197 count:1];
    v54 = [MEMORY[0x277CCD800] quantitySampleWithType:qword_27D86C160 quantity:v51 startDate:v12 endDate:v12 metadata:v53];
    [v13 addObjectFromPhone:v54];

    v28 = v188;
  }

  v55 = v37;
  v56 = v12;
LABEL_23:
  if (self->_nextElectrocardiogramSampleTime <= a5)
  {
    v189 = v28;
    v57 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    v58 = [v57 statisticsSampleGenerator];
    [v15 genericSampleTimeNoiseStdDev];
    [v58 computeNoiseFromTime:a5 stdDev:v59];
    self->_nextElectrocardiogramSampleTime = v60 + a5 + 60.0;

    nextElectrocardiogramClassification = self->_nextElectrocardiogramClassification;
    v62 = v15;
    v63 = v12;
    v183 = v12;
    if (nextElectrocardiogramClassification > 0xA)
    {
      v65 = @"ECGNSR-Cinnamon";
      _HKInitializeLogging();
      v179 = *MEMORY[0x277CCC2B8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        *&buf[4] = "[HDDemoDataHeartSampleGenerator _generateElectrocardiogramForDemoPerson:atTime:classification:sampleDate:]";
        *&buf[12] = 2048;
        *&buf[14] = nextElectrocardiogramClassification;
        _os_log_fault_impl(&dword_228986000, v179, OS_LOG_TYPE_FAULT, "classication enum passed to %s is out of range with value: %lu", buf, 0x16u);
      }
    }

    else
    {
      if (((1 << nextElectrocardiogramClassification) & 0x4EF) != 0)
      {
        v64 = HDDemoDataECGFileNameNSR;
      }

      else
      {
        v64 = &HDDemoDataECGFileNameAFib;
      }

      v65 = *v64;
    }

    v66 = [MEMORY[0x277CCD388] builderFromDemoDataFile:v65 startDate:v63];
    v186 = v62;
    v182 = v15;
    if (nextElectrocardiogramClassification - 2 >= 9 && nextElectrocardiogramClassification)
    {
      v68 = 0;
    }

    else
    {
      [HDDemoDataHeartSampleGenerator _computeRestingHeartRateForDemoPerson:v62 atTime:?];
      v68 = [MEMORY[0x277CCD7E8] _quantityWithBeatsPerMinute:v67 + 2.0 + arc4random_uniform(9u)];
    }

    v69 = v65;
    v70 = nextElectrocardiogramClassification - 4;
    v71 = v63;
    if (nextElectrocardiogramClassification - 4 > 5)
    {
      v72 = 1;
      v73 = 1;
    }

    else
    {
      v72 = qword_22916DCC8[v70];
      v73 = qword_22916DCF8[v70];
    }

    v199 = *MEMORY[0x277CCDFE8];
    v74 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v73];
    *buf = v74;
    v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v199 count:1];

    [v66 addClassification:nextElectrocardiogramClassification];
    if (v68)
    {
      [v66 addAverageHeartRate:v68];
    }

    v76 = [v66 finishWithDevice:0 metadata:v75];
    [v76 _setSymptomsStatus:v72];

    v29 = v76;
    self->_nextElectrocardiogramClassification = 4 - ((self->_nextElectrocardiogramClassification & 1) == 0);
    v28 = v189;
    v15 = v182;
    v12 = v183;
  }

  else
  {
    v29 = 0;
  }

LABEL_38:
  v190 = v28;

  v187 = v29;
  if (v29)
  {
    [v13 addObjectFromWatch:v29];
    v77 = [v29 metadata];
    v78 = [v77 objectForKey:*MEMORY[0x277CCDFE8]];
    v79 = [v78 integerValue];

    if (v79 != 1)
    {
      v184 = v12;
      if (self)
      {
        v80 = MEMORY[0x277CCD0B0];
        v81 = MEMORY[0x277CCD0C0];
        v82 = *MEMORY[0x277CCBA88];
        v83 = v29;
        v84 = [v81 categoryTypeForIdentifier:v82];
        v85 = [v83 startDate];
        v86 = [v83 endDate];
        v87 = [v83 device];
        v88 = [v83 metadata];
        v181 = [v80 categorySampleWithType:v84 value:0 startDate:v85 endDate:v86 device:v87 metadata:v88];

        v89 = MEMORY[0x277CCD0B0];
        v90 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB970]];
        v91 = [v83 startDate];
        v92 = [v83 endDate];
        v93 = [v83 device];
        v94 = [v83 metadata];

        v95 = [v89 categorySampleWithType:v90 value:0 startDate:v91 endDate:v92 device:v93 metadata:v94];

        *buf = v181;
        *&buf[8] = v95;
        v96 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:2];
      }

      else
      {
        v96 = 0;
      }

      v97 = objc_alloc_init(MEMORY[0x277CBEB28]);
      v191 = 0u;
      v192 = 0u;
      v193 = 0u;
      v194 = 0u;
      v98 = v96;
      v99 = [v98 countByEnumeratingWithState:&v191 objects:v196 count:16];
      v12 = v184;
      if (v99)
      {
        v100 = v99;
        v101 = *v192;
        do
        {
          for (i = 0; i != v100; ++i)
          {
            if (*v192 != v101)
            {
              objc_enumerationMutation(v98);
            }

            v103 = *(*(&v191 + 1) + 8 * i);
            [v13 addObjectFromWatch:{v103, v181}];
            v104 = [v103 UUID];
            [v97 hk_appendBytesWithUUID:v104];
          }

          v100 = [v98 countByEnumeratingWithState:&v191 objects:v196 count:16];
        }

        while (v100);
      }

      v29 = v187;
      v105 = [v187 UUID];
      [v13 setAssociatedObjectUUIDs:v97 forObjectUUID:v105];
    }
  }

  v106 = v15;
  v107 = v12;
  if (!self)
  {
    goto LABEL_52;
  }

  v108 = [v106 birthDateComponents];
  v109 = HDDemoData_ageBetweenNSDateComponentsAndDate(v108, v107);

  if (v109 < *MEMORY[0x277CCE298])
  {
    goto LABEL_52;
  }

  v111 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  v112 = [v111 generatorState];

  if ([v112 isRunning] & 1) != 0 || (objc_msgSend(v112, "isWalking"))
  {
    v113 = 1;
  }

  else
  {
    v113 = [v112 isHiking];
  }

  if ((v112, lastVO2MaxWorkoutWasActive = self->_lastVO2MaxWorkoutWasActive, self->_lastVO2MaxWorkoutWasActive = v113, lastVO2MaxWorkoutWasActive) && !v113 || self->_nextVO2MaxSampleTime <= a5)
  {
    v115 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    v116 = [v115 statisticsSampleGenerator];
    [v106 vo2MaxSampleTimeNoiseStdDev];
    [v116 computeNoiseFromTime:a5 stdDev:v117];
    self->_nextVO2MaxSampleTime = v118 + a5 + 7.0;

    v119 = MEMORY[0x277CCABB0];
    lastVO2MaxValue = self->_lastVO2MaxValue;
    v121 = v106;
    v122 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    v123 = [v122 statisticsSampleGenerator];
    [v123 randomDoubleFromGenerator];
    v125 = v124;
    [v121 vo2MaxValueStdDev];
    v127 = v126;

    v29 = v187;
    v128 = self->_lastVO2MaxValue;
    meanVO2MaxValue = self->_meanVO2MaxValue;
    [v121 vo2MaxValueMaxConsecutiveDifference];
    v131 = v130;
    [v121 vo2MaxValueMaxTotalDifference];
    v133 = v132;

    v134 = meanVO2MaxValue - v133;
    v135 = meanVO2MaxValue + v133;
    v136 = v128 - v131;
    v137 = v128 + v131;
    if (v128 + v131 >= lastVO2MaxValue + (v125 + -0.5) * v127)
    {
      v137 = lastVO2MaxValue + (v125 + -0.5) * v127;
    }

    if (v136 < v137)
    {
      v136 = v137;
    }

    if (v135 >= v136)
    {
      v135 = v136;
    }

    if (v134 < v135)
    {
      v134 = v135;
    }

    v110 = [v119 numberWithDouble:v134];
  }

  else
  {
LABEL_52:
    v110 = 0;
  }

  if (v110)
  {
    [v110 doubleValue];
    self->_lastVO2MaxValue = v138;
    v139 = [MEMORY[0x277CCD7E8] quantityWithUnit:qword_27D86C178 doubleValue:?];
    v140 = [MEMORY[0x277CCD800] quantitySampleWithType:qword_27D86C180 quantity:v139 startDate:v107 endDate:v107];
    [v13 addObjectFromWatch:v140];

    v141 = v106;
    v142 = v107;
  }

  else
  {
    v143 = v106;
    v144 = v107;
    if (!self)
    {
      v145 = 0;
      goto LABEL_89;
    }
  }

  v145 = [v106 birthDateComponents];

  if (v145)
  {
    v146 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    v147 = [v146 generatorState];

    v148 = [v147 workoutConfiguration];
    v149 = [v148 indoor];

    if (v149)
    {
      v150 = 0;
    }

    else
    {
      v150 = ([v147 isRunning] & 1) != 0 ? 1 : objc_msgSend(v147, "isWalking");
    }

    v145 = 0;
    lastHeartRateRecoveryWorkoutWasActive = self->_lastHeartRateRecoveryWorkoutWasActive;
    self->_lastHeartRateRecoveryWorkoutWasActive = v150;
    if (lastHeartRateRecoveryWorkoutWasActive && (v150 & 1) == 0)
    {
      v152 = MEMORY[0x277CCABB0];
      lastHeartRateRecoveryValue = self->_lastHeartRateRecoveryValue;
      v154 = v106;
      v155 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      v156 = [v155 statisticsSampleGenerator];
      [v156 randomDoubleFromGenerator];
      v158 = v157;
      [v154 heartRateRecoveryValueStdDev];
      v160 = v159;

      v29 = v187;
      v161 = self->_lastHeartRateRecoveryValue;
      [v154 heartRateRecovery];
      v163 = v162;
      [v154 heartRateRecoveryValueMaxConsecutiveDifference];
      v165 = v164;
      [v154 heartRateRecoveryValueMaxTotalDifference];
      v167 = v166;

      v168 = v163 - v167;
      v169 = v163 + v167;
      v170 = v161 - v165;
      v171 = v161 + v165;
      v172 = round(lastHeartRateRecoveryValue + (v158 + -0.5) * v160);
      if (v161 + v165 >= v172)
      {
        v171 = v172;
      }

      if (v170 < v171)
      {
        v170 = v171;
      }

      if (v169 >= v170)
      {
        v169 = v170;
      }

      if (v168 < v169)
      {
        v168 = v169;
      }

      v145 = [v152 numberWithDouble:v168];
    }
  }

LABEL_89:

  if (v145)
  {
    [v145 doubleValue];
    self->_lastHeartRateRecoveryValue = v173;
    v174 = v107;
    v175 = [v174 dateByAddingTimeInterval:60.0];
    v176 = [MEMORY[0x277CCD7E8] quantityWithUnit:_MergedGlobals_4 doubleValue:self->_lastHeartRateRecoveryValue];
    v177 = [MEMORY[0x277CCD800] quantitySampleWithType:qword_27D86C188 quantity:v176 startDate:v174 endDate:v175 metadata:0];

    [v13 addObjectFromWatch:v177];
    v29 = v187;
  }

  v178 = *MEMORY[0x277D85DE8];
}

uint64_t __108__HDDemoDataHeartSampleGenerator_generateObjectsForDemoPerson_fromTime_toTime_currentDate_objectCollection___block_invoke()
{
  v0 = [MEMORY[0x277CCDAB0] unitFromString:@"count/min"];
  v1 = _MergedGlobals_4;
  _MergedGlobals_4 = v0;

  v2 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
  v3 = qword_27D86C160;
  qword_27D86C160 = v2;

  v4 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC20]];
  v5 = qword_27D86C168;
  qword_27D86C168 = v4;

  v6 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCCB8]];
  v7 = qword_27D86C170;
  qword_27D86C170 = v6;

  v8 = [MEMORY[0x277CCDAB0] unitFromString:@"ml/kg*min"];
  v9 = qword_27D86C178;
  qword_27D86C178 = v8;

  v10 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC98]];
  v11 = qword_27D86C180;
  qword_27D86C180 = v10;

  v12 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB98]];
  v13 = qword_27D86C188;
  qword_27D86C188 = v12;

  return MEMORY[0x2821F96F8](v12, v13);
}

- (void)_computeRestingHeartRateForDemoPerson:(void *)a1 atTime:(void *)a2
{
  v3 = a1[9];
  v4 = a2;
  v5 = [a1 demoDataGenerator];
  v6 = [v5 statisticsSampleGenerator];
  [v6 randomDoubleFromGenerator];
  [v4 heartRateSampleNoiseStdDev];

  v7 = a1[9];
  [v4 restingHeartRate];
  [v4 restingHeartRateMaxDailyDifference];
  [v4 restingHeartRateMaxTotalDifference];
}

@end