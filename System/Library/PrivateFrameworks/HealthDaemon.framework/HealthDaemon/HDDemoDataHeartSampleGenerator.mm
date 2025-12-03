@interface HDDemoDataHeartSampleGenerator
- (HDDemoDataHeartSampleGenerator)init;
- (HDDemoDataHeartSampleGenerator)initWithCoder:(id)coder;
- (void)_computeRestingHeartRateForDemoPerson:(void *)person atTime:(void *)time;
- (void)encodeWithCoder:(id)coder;
- (void)generateFirstRunObjectsForDemoPerson:(id)person firstDate:(id)date objectCollection:(id)collection;
- (void)generateObjectsForDemoPerson:(id)person fromTime:(double)time toTime:(double)toTime currentDate:(id)date objectCollection:(id)collection;
- (void)setProfile:(id)profile provenance:(id)provenance;
- (void)setupWithDemoDataGenerator:(id)generator;
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

- (HDDemoDataHeartSampleGenerator)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = HDDemoDataHeartSampleGenerator;
  v5 = [(HDDemoDataBaseSampleGenerator *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"HDDemoDataHeartSampleGeneratorNextRestingHeartRateSampleTimeKey"];
    v5->_nextRestingHeartRateSampleTime = v6;
    [coderCopy decodeDoubleForKey:@"HDDemoDataHeartSampleGeneratorNextWalkingHeartRateAverageSampleTimeKey"];
    v5->_nextWalkingHeartRateAverageSampleTime = v7;
    [coderCopy decodeDoubleForKey:@"HDDemoDataHeartSampleGeneratorNextElectrocardiogramSampleTimeKey"];
    v5->_nextElectrocardiogramSampleTime = v8;
    v5->_nextElectrocardiogramClassification = [coderCopy decodeIntegerForKey:@"HDDemoDataHeartSampleGeneratorNextElectrocardiogramClassificationKey"];
    [coderCopy decodeDoubleForKey:@"HDDemoDataHeartSampleGeneratorLastRestingHeartRateSampleKey"];
    v5->_lastRestingHeartRate = v9;
    [coderCopy decodeDoubleForKey:@"HDDemoDataHeartSampleGeneratorLastWalkingHeartRateAverageSampleKey"];
    v5->_lastWalkingHeartRateAverage = v10;
    [coderCopy decodeDoubleForKey:@"HDDemoDataHeartSampleGeneratorNextVO2MaxSampleTimeKey"];
    v5->_nextVO2MaxSampleTime = v11;
    [coderCopy decodeDoubleForKey:@"HDDemoDataHeartSampleGeneratorLastVO2MaxSampleKey"];
    v5->_lastVO2MaxValue = v12;
    v5->_lastVO2MaxWorkoutWasActive = [coderCopy decodeBoolForKey:@"HDDemoDataHeartSampleGeneratorLastVO2MaxWorkoutWasActiveKey"];
    [coderCopy decodeDoubleForKey:@"HDDemoDataHeartSampleGeneratorLastHeartRateRecoverySampleKey"];
    v5->_lastHeartRateRecoveryValue = v13;
    v5->_lastHeartRateRecoveryWorkoutWasActive = [coderCopy decodeBoolForKey:@"HDDemoDataHeartSampleGeneratorLastHeartRateRecoveryWorkoutWasActiveKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HDDemoDataHeartSampleGenerator;
  coderCopy = coder;
  [(HDDemoDataBaseSampleGenerator *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeDouble:@"HDDemoDataHeartSampleGeneratorNextRestingHeartRateSampleTimeKey" forKey:{self->_nextRestingHeartRateSampleTime, v5.receiver, v5.super_class}];
  [coderCopy encodeDouble:@"HDDemoDataHeartSampleGeneratorNextWalkingHeartRateAverageSampleTimeKey" forKey:self->_nextWalkingHeartRateAverageSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataHeartSampleGeneratorNextElectrocardiogramSampleTimeKey" forKey:self->_nextElectrocardiogramSampleTime];
  [coderCopy encodeInteger:self->_nextElectrocardiogramClassification forKey:@"HDDemoDataHeartSampleGeneratorNextElectrocardiogramClassificationKey"];
  [coderCopy encodeDouble:@"HDDemoDataHeartSampleGeneratorLastRestingHeartRateSampleKey" forKey:self->_lastRestingHeartRate];
  [coderCopy encodeDouble:@"HDDemoDataHeartSampleGeneratorLastWalkingHeartRateAverageSampleKey" forKey:self->_lastWalkingHeartRateAverage];
  [coderCopy encodeDouble:@"HDDemoDataHeartSampleGeneratorNextVO2MaxSampleTimeKey" forKey:self->_nextVO2MaxSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataHeartSampleGeneratorLastVO2MaxSampleKey" forKey:self->_lastVO2MaxValue];
  [coderCopy encodeBool:self->_lastVO2MaxWorkoutWasActive forKey:@"HDDemoDataHeartSampleGeneratorLastVO2MaxWorkoutWasActiveKey"];
  [coderCopy encodeDouble:@"HDDemoDataHeartSampleGeneratorLastHeartRateRecoverySampleKey" forKey:self->_lastHeartRateRecoveryValue];
  [coderCopy encodeBool:self->_lastHeartRateRecoveryWorkoutWasActive forKey:@"HDDemoDataHeartSampleGeneratorLastHeartRateRecoveryWorkoutWasActiveKey"];
}

- (void)setProfile:(id)profile provenance:(id)provenance
{
  v4.receiver = self;
  v4.super_class = HDDemoDataHeartSampleGenerator;
  [(HDDemoDataBaseSampleGenerator *)&v4 setProfile:profile, provenance];
}

- (void)setupWithDemoDataGenerator:(id)generator
{
  v18.receiver = self;
  v18.super_class = HDDemoDataHeartSampleGenerator;
  generatorCopy = generator;
  [(HDDemoDataBaseSampleGenerator *)&v18 setupWithDemoDataGenerator:generatorCopy];
  demoPerson = [generatorCopy demoPerson];
  generatorState = [generatorCopy generatorState];

  currentDate = [generatorState currentDate];
  v8 = demoPerson;
  v9 = currentDate;
  if (self)
  {
    birthDateComponents = [v8 birthDateComponents];
    v11 = HDDemoData_ageBetweenNSDateComponentsAndDate(birthDateComponents, v9);

    biologicalSex = [v8 biologicalSex];
    if (biologicalSex == 2)
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
      if (biologicalSex == 1)
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

- (void)generateFirstRunObjectsForDemoPerson:(id)person firstDate:(id)date objectCollection:(id)collection
{
  v56 = *MEMORY[0x277D85DE8];
  personCopy = person;
  dateCopy = date;
  if (self)
  {
    birthDateComponents = [personCopy birthDateComponents];
    v10 = HDDemoData_ageBetweenNSDateComponentsAndDate(birthDateComponents, dateCopy);

    if (v10 >= *MEMORY[0x277CCE298])
    {
      profile = [(HDDemoDataBaseSampleGenerator *)self profile];
      v12 = [profile profileExtensionsConformingToProtocol:&unk_283D71258];

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

        currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
        countryCode = [currentLocale countryCode];

        v46 = 0;
        v24 = [v21 onboardingEligibilityForCountryCode:countryCode error:&v46];
        v25 = v46;
        if (v25 && (_HKInitializeLogging(), v26 = *MEMORY[0x277CCC2B8], os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR)))
        {
          *buf = 138543618;
          selfCopy = self;
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
          date = [MEMORY[0x277CBEAA8] date];
          v29 = countryCode;
          v30 = date;
          v44 = v29;
          v31 = [v27 initWithFeatureIdentifier:v17 version:1 completionDate:date countryCode:? countryCodeProvenance:?];

          profile2 = [(HDDemoDataBaseSampleGenerator *)self profile];
          onboardingCompletionManager = [profile2 onboardingCompletionManager];
          v45 = 0;
          v43 = v31;
          v34 = [onboardingCompletionManager insertOnboardingCompletion:v31 error:&v45];
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
            selfCopy = v35;
            v38 = "Failed to insert Cardio Fitness onboarding completion: %{public}@";
            v39 = v36;
            v40 = OS_LOG_TYPE_DEFAULT;
            v41 = 12;
            goto LABEL_22;
          }

          countryCode = v44;
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

- (void)generateObjectsForDemoPerson:(id)person fromTime:(double)time toTime:(double)toTime currentDate:(id)date objectCollection:(id)collection
{
  v201 = *MEMORY[0x277D85DE8];
  personCopy = person;
  dateCopy = date;
  collectionCopy = collection;
  v195.receiver = self;
  v195.super_class = HDDemoDataHeartSampleGenerator;
  [(HDDemoDataBaseSampleGenerator *)&v195 generateObjectsForDemoPerson:personCopy fromTime:dateCopy toTime:collectionCopy currentDate:toTime objectCollection:toTime];
  if (qword_27D86C190 != -1)
  {
    dispatch_once(&qword_27D86C190, &__block_literal_global_139);
  }

  v14 = personCopy;
  v15 = v14;
  if (!self)
  {

    v180 = v15;
    v185 = 0;
LABEL_10:

    v26 = v15;
    v27 = dateCopy;
    v28 = 0;
    v29 = 0;
    if (!self)
    {
      goto LABEL_38;
    }

    goto LABEL_23;
  }

  if (self->_nextRestingHeartRateSampleTime <= toTime)
  {
    demoDataGenerator = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    statisticsSampleGenerator = [demoDataGenerator statisticsSampleGenerator];
    [v15 genericSampleTimeNoiseStdDev];
    [statisticsSampleGenerator computeNoiseFromTime:toTime stdDev:v19];
    self->_nextRestingHeartRateSampleTime = v20 + toTime + 1.0;

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
    v24 = [MEMORY[0x277CCD800] quantitySampleWithType:qword_27D86C168 quantity:v16 startDate:dateCopy endDate:dateCopy];
    [collectionCopy addObjectFromPhone:v24];
  }

  else
  {
    v185 = 0;
    v16 = v14;
  }

LABEL_9:
  v25 = v15;
  if (self->_nextWalkingHeartRateAverageSampleTime > toTime)
  {
    goto LABEL_10;
  }

  v30 = v25;
  demoDataGenerator2 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  statisticsSampleGenerator2 = [demoDataGenerator2 statisticsSampleGenerator];
  [v30 genericSampleTimeNoiseStdDev];
  [statisticsSampleGenerator2 computeNoiseFromTime:toTime stdDev:v33];
  self->_nextWalkingHeartRateAverageSampleTime = v34 + toTime + 1.0;

  v35 = MEMORY[0x277CCABB0];
  lastWalkingHeartRateAverage = self->_lastWalkingHeartRateAverage;
  v37 = v30;
  demoDataGenerator3 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  statisticsSampleGenerator3 = [demoDataGenerator3 statisticsSampleGenerator];
  [statisticsSampleGenerator3 randomDoubleFromGenerator];
  v41 = v40;
  [v37 heartRateSampleNoiseStdDev];
  v43 = v42;

  v44 = self->_lastWalkingHeartRateAverage;
  walkingHeartRateAverage = [v37 walkingHeartRateAverage];
  walkingHeartRateAverageMaxDailyDifference = [v37 walkingHeartRateAverageMaxDailyDifference];
  walkingHeartRateAverageMaxTotalDifference = [v37 walkingHeartRateAverageMaxTotalDifference];

  v48 = walkingHeartRateAverage + walkingHeartRateAverageMaxTotalDifference;
  v49 = v44 + walkingHeartRateAverageMaxDailyDifference;
  if (v49 >= lastWalkingHeartRateAverage + (v41 + -0.5) * v43)
  {
    v49 = lastWalkingHeartRateAverage + (v41 + -0.5) * v43;
  }

  if (v44 - walkingHeartRateAverageMaxDailyDifference >= v49)
  {
    v49 = v44 - walkingHeartRateAverageMaxDailyDifference;
  }

  if (v48 >= v49)
  {
    v48 = v49;
  }

  if (walkingHeartRateAverage - walkingHeartRateAverageMaxTotalDifference >= v48)
  {
    v48 = walkingHeartRateAverage - walkingHeartRateAverageMaxTotalDifference;
  }

  v28 = [v35 numberWithDouble:v48];

  if (v28)
  {
    [v28 doubleValue];
    self->_lastWalkingHeartRateAverage = v50;
    [MEMORY[0x277CCD7E8] quantityWithUnit:_MergedGlobals_4 doubleValue:?];
    v51 = v188 = v28;
    v52 = [MEMORY[0x277CCD800] quantitySampleWithType:qword_27D86C170 quantity:v51 startDate:dateCopy endDate:dateCopy];
    [collectionCopy addObjectFromPhone:v52];
    v197 = *MEMORY[0x277CCE030];
    v198 = &unk_283CB3B70;
    v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v198 forKeys:&v197 count:1];
    v54 = [MEMORY[0x277CCD800] quantitySampleWithType:qword_27D86C160 quantity:v51 startDate:dateCopy endDate:dateCopy metadata:v53];
    [collectionCopy addObjectFromPhone:v54];

    v28 = v188;
  }

  v55 = v37;
  v56 = dateCopy;
LABEL_23:
  if (self->_nextElectrocardiogramSampleTime <= toTime)
  {
    v189 = v28;
    demoDataGenerator4 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    statisticsSampleGenerator4 = [demoDataGenerator4 statisticsSampleGenerator];
    [v15 genericSampleTimeNoiseStdDev];
    [statisticsSampleGenerator4 computeNoiseFromTime:toTime stdDev:v59];
    self->_nextElectrocardiogramSampleTime = v60 + toTime + 60.0;

    nextElectrocardiogramClassification = self->_nextElectrocardiogramClassification;
    v62 = v15;
    v63 = dateCopy;
    v183 = dateCopy;
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
    dateCopy = v183;
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
    [collectionCopy addObjectFromWatch:v29];
    metadata = [v29 metadata];
    v78 = [metadata objectForKey:*MEMORY[0x277CCDFE8]];
    integerValue = [v78 integerValue];

    if (integerValue != 1)
    {
      v184 = dateCopy;
      if (self)
      {
        v80 = MEMORY[0x277CCD0B0];
        v81 = MEMORY[0x277CCD0C0];
        v82 = *MEMORY[0x277CCBA88];
        v83 = v29;
        v84 = [v81 categoryTypeForIdentifier:v82];
        startDate = [v83 startDate];
        endDate = [v83 endDate];
        device = [v83 device];
        metadata2 = [v83 metadata];
        v181 = [v80 categorySampleWithType:v84 value:0 startDate:startDate endDate:endDate device:device metadata:metadata2];

        v89 = MEMORY[0x277CCD0B0];
        v90 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB970]];
        startDate2 = [v83 startDate];
        endDate2 = [v83 endDate];
        device2 = [v83 device];
        metadata3 = [v83 metadata];

        v95 = [v89 categorySampleWithType:v90 value:0 startDate:startDate2 endDate:endDate2 device:device2 metadata:metadata3];

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
      dateCopy = v184;
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
            [collectionCopy addObjectFromWatch:{v103, v181}];
            uUID = [v103 UUID];
            [v97 hk_appendBytesWithUUID:uUID];
          }

          v100 = [v98 countByEnumeratingWithState:&v191 objects:v196 count:16];
        }

        while (v100);
      }

      v29 = v187;
      uUID2 = [v187 UUID];
      [collectionCopy setAssociatedObjectUUIDs:v97 forObjectUUID:uUID2];
    }
  }

  v106 = v15;
  v107 = dateCopy;
  if (!self)
  {
    goto LABEL_52;
  }

  birthDateComponents = [v106 birthDateComponents];
  v109 = HDDemoData_ageBetweenNSDateComponentsAndDate(birthDateComponents, v107);

  if (v109 < *MEMORY[0x277CCE298])
  {
    goto LABEL_52;
  }

  demoDataGenerator5 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  generatorState = [demoDataGenerator5 generatorState];

  if ([generatorState isRunning] & 1) != 0 || (objc_msgSend(generatorState, "isWalking"))
  {
    isHiking = 1;
  }

  else
  {
    isHiking = [generatorState isHiking];
  }

  if ((generatorState, lastVO2MaxWorkoutWasActive = self->_lastVO2MaxWorkoutWasActive, self->_lastVO2MaxWorkoutWasActive = isHiking, lastVO2MaxWorkoutWasActive) && !isHiking || self->_nextVO2MaxSampleTime <= toTime)
  {
    demoDataGenerator6 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    statisticsSampleGenerator5 = [demoDataGenerator6 statisticsSampleGenerator];
    [v106 vo2MaxSampleTimeNoiseStdDev];
    [statisticsSampleGenerator5 computeNoiseFromTime:toTime stdDev:v117];
    self->_nextVO2MaxSampleTime = v118 + toTime + 7.0;

    v119 = MEMORY[0x277CCABB0];
    lastVO2MaxValue = self->_lastVO2MaxValue;
    v121 = v106;
    demoDataGenerator7 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    statisticsSampleGenerator6 = [demoDataGenerator7 statisticsSampleGenerator];
    [statisticsSampleGenerator6 randomDoubleFromGenerator];
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
    [collectionCopy addObjectFromWatch:v140];

    v141 = v106;
    v142 = v107;
  }

  else
  {
    v143 = v106;
    v144 = v107;
    if (!self)
    {
      birthDateComponents2 = 0;
      goto LABEL_89;
    }
  }

  birthDateComponents2 = [v106 birthDateComponents];

  if (birthDateComponents2)
  {
    demoDataGenerator8 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    generatorState2 = [demoDataGenerator8 generatorState];

    workoutConfiguration = [generatorState2 workoutConfiguration];
    indoor = [workoutConfiguration indoor];

    if (indoor)
    {
      v150 = 0;
    }

    else
    {
      v150 = ([generatorState2 isRunning] & 1) != 0 ? 1 : objc_msgSend(generatorState2, "isWalking");
    }

    birthDateComponents2 = 0;
    lastHeartRateRecoveryWorkoutWasActive = self->_lastHeartRateRecoveryWorkoutWasActive;
    self->_lastHeartRateRecoveryWorkoutWasActive = v150;
    if (lastHeartRateRecoveryWorkoutWasActive && (v150 & 1) == 0)
    {
      v152 = MEMORY[0x277CCABB0];
      lastHeartRateRecoveryValue = self->_lastHeartRateRecoveryValue;
      v154 = v106;
      demoDataGenerator9 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      statisticsSampleGenerator7 = [demoDataGenerator9 statisticsSampleGenerator];
      [statisticsSampleGenerator7 randomDoubleFromGenerator];
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

      birthDateComponents2 = [v152 numberWithDouble:v168];
    }
  }

LABEL_89:

  if (birthDateComponents2)
  {
    [birthDateComponents2 doubleValue];
    self->_lastHeartRateRecoveryValue = v173;
    v174 = v107;
    v175 = [v174 dateByAddingTimeInterval:60.0];
    v176 = [MEMORY[0x277CCD7E8] quantityWithUnit:_MergedGlobals_4 doubleValue:self->_lastHeartRateRecoveryValue];
    v177 = [MEMORY[0x277CCD800] quantitySampleWithType:qword_27D86C188 quantity:v176 startDate:v174 endDate:v175 metadata:0];

    [collectionCopy addObjectFromWatch:v177];
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

- (void)_computeRestingHeartRateForDemoPerson:(void *)person atTime:(void *)time
{
  v3 = person[9];
  timeCopy = time;
  demoDataGenerator = [person demoDataGenerator];
  statisticsSampleGenerator = [demoDataGenerator statisticsSampleGenerator];
  [statisticsSampleGenerator randomDoubleFromGenerator];
  [timeCopy heartRateSampleNoiseStdDev];

  v7 = person[9];
  [timeCopy restingHeartRate];
  [timeCopy restingHeartRateMaxDailyDifference];
  [timeCopy restingHeartRateMaxTotalDifference];
}

@end