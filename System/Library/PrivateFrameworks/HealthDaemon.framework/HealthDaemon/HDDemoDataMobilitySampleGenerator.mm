@interface HDDemoDataMobilitySampleGenerator
- (HDDemoDataMobilitySampleGenerator)init;
- (HDDemoDataMobilitySampleGenerator)initWithCoder:(id)coder;
- (double)_generateWalkingDataSamplesForDemoPerson:(void *)person atTime:(int)time sampleDate:(int)date duration:(void *)duration addFromWatch:(void *)watch shouldDecreaseDuringRehab:(void *)rehab objectCollection:(double)collection nextSampleTime:(double)self0 typeIdentifier:(double)self1 unit:(double)self2 sampleMean:(double)self3 sampleMeanStdDev:(double)self4 sampleFrequency:(double)self5 sampleFrequencyStdDev:;
- (uint64_t)_isDemoPersonWalkingAboveAverage;
- (void)encodeWithCoder:(id)coder;
- (void)generateFirstRunObjectsForDemoPerson:(id)person firstDate:(id)date objectCollection:(id)collection;
- (void)generateObjectsForDemoPerson:(id)person fromTime:(double)time toTime:(double)toTime currentDate:(id)date objectCollection:(id)collection;
@end

@implementation HDDemoDataMobilitySampleGenerator

- (HDDemoDataMobilitySampleGenerator)init
{
  v3.receiver = self;
  v3.super_class = HDDemoDataMobilitySampleGenerator;
  result = [(HDDemoDataBaseSampleGenerator *)&v3 init];
  if (result)
  {
    result->_nextStepLengthSampleTime = 0.0;
    result->_nextWalkingSpeedSampleTime = 0.0;
    result->_nextAsymmetryPercentageSampleTime = 0.0;
    result->_nextDoubleSupportPercentageSampleTime = 0.0;
    result->_nextSixMinuteWalkTestDistanceSampleTime = 0.0;
    result->_nextStairAscentSpeedSampleTime = 0.0;
    result->_nextStairDescentSpeedSampleTime = 0.0;
    result->_nextWalkingSteadinessSampleTime = 0.0;
  }

  return result;
}

- (HDDemoDataMobilitySampleGenerator)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = HDDemoDataMobilitySampleGenerator;
  v5 = [(HDDemoDataBaseSampleGenerator *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"_NextStepLengthSampleTimeKey"];
    v5->_nextStepLengthSampleTime = v6;
    [coderCopy decodeDoubleForKey:@"_NextWalkingSpeedSampleTimeKey"];
    v5->_nextWalkingSpeedSampleTime = v7;
    [coderCopy decodeDoubleForKey:@"_NextAsymmetryPercentageSampleTimeKey"];
    v5->_nextAsymmetryPercentageSampleTime = v8;
    [coderCopy decodeDoubleForKey:@"_NextDoubleSupportPercentageSampleTimeKey"];
    v5->_nextDoubleSupportPercentageSampleTime = v9;
    [coderCopy decodeDoubleForKey:@"_NextSixMinuteWalkTestDistanceSampleTimeKey"];
    v5->_nextSixMinuteWalkTestDistanceSampleTime = v10;
    [coderCopy decodeDoubleForKey:@"_NextStairAscentSpeedSampleTimeKey"];
    v5->_nextStairAscentSpeedSampleTime = v11;
    [coderCopy decodeDoubleForKey:@"_NextStairDescentSpeedSampleTimeKey"];
    v5->_nextStairDescentSpeedSampleTime = v12;
    [coderCopy decodeDoubleForKey:@"_NextWalkingSteadinessSampleTimeKey"];
    v5->_nextWalkingSteadinessSampleTime = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HDDemoDataMobilitySampleGenerator;
  coderCopy = coder;
  [(HDDemoDataBaseSampleGenerator *)&v6 encodeWithCoder:coderCopy];
  if (self)
  {
    [coderCopy encodeDouble:@"_NextStepLengthSampleTimeKey" forKey:{self->_nextStepLengthSampleTime, v6.receiver, v6.super_class}];
    [coderCopy encodeDouble:@"_NextWalkingSpeedSampleTimeKey" forKey:self->_nextWalkingSpeedSampleTime];
    [coderCopy encodeDouble:@"_NextAsymmetryPercentageSampleTimeKey" forKey:self->_nextAsymmetryPercentageSampleTime];
    [coderCopy encodeDouble:@"_NextDoubleSupportPercentageSampleTimeKey" forKey:self->_nextDoubleSupportPercentageSampleTime];
    [coderCopy encodeDouble:@"_NextSixMinuteWalkTestDistanceSampleTimeKey" forKey:self->_nextSixMinuteWalkTestDistanceSampleTime];
    [coderCopy encodeDouble:@"_NextStairAscentSpeedSampleTimeKey" forKey:self->_nextStairAscentSpeedSampleTime];
    [coderCopy encodeDouble:@"_NextStairDescentSpeedSampleTimeKey" forKey:self->_nextStairDescentSpeedSampleTime];
    nextWalkingSteadinessSampleTime = self->_nextWalkingSteadinessSampleTime;
  }

  else
  {
    [coderCopy encodeDouble:@"_NextStepLengthSampleTimeKey" forKey:{0.0, v6.receiver, v6.super_class}];
    [coderCopy encodeDouble:@"_NextWalkingSpeedSampleTimeKey" forKey:0.0];
    [coderCopy encodeDouble:@"_NextAsymmetryPercentageSampleTimeKey" forKey:0.0];
    [coderCopy encodeDouble:@"_NextDoubleSupportPercentageSampleTimeKey" forKey:0.0];
    [coderCopy encodeDouble:@"_NextSixMinuteWalkTestDistanceSampleTimeKey" forKey:0.0];
    [coderCopy encodeDouble:@"_NextStairAscentSpeedSampleTimeKey" forKey:0.0];
    [coderCopy encodeDouble:@"_NextStairDescentSpeedSampleTimeKey" forKey:0.0];
    nextWalkingSteadinessSampleTime = 0.0;
  }

  [coderCopy encodeDouble:@"_NextWalkingSteadinessSampleTimeKey" forKey:nextWalkingSteadinessSampleTime];
}

- (void)generateFirstRunObjectsForDemoPerson:(id)person firstDate:(id)date objectCollection:(id)collection
{
  v70 = *MEMORY[0x277D85DE8];
  personCopy = person;
  dateCopy = date;
  if (self)
  {
    birthDateComponents = [personCopy birthDateComponents];
    v10 = HDDemoData_ageBetweenNSDateComponentsAndDate(birthDateComponents, dateCopy);

    if (v10 >= *MEMORY[0x277CCE588])
    {
      profile = [(HDDemoDataBaseSampleGenerator *)self profile];
      v12 = [profile profileExtensionsConformingToProtocol:&unk_283D71258];

      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v61 objects:v69 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v62;
        v17 = *MEMORY[0x277CCC110];
LABEL_5:
        v18 = 0;
        while (1)
        {
          if (*v62 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v19 = [*(*(&v61 + 1) + 8 * v18) featureAvailabilityExtensionForFeatureIdentifier:v17];
          if (v19)
          {
            break;
          }

          if (v15 == ++v18)
          {
            v15 = [v13 countByEnumeratingWithState:&v61 objects:v69 count:16];
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

        v60 = 0;
        v24 = [v21 onboardingEligibilityForCountryCode:countryCode error:&v60];
        v25 = v60;
        if (v25 && (_HKInitializeLogging(), v26 = *MEMORY[0x277CCC2B8], os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR)))
        {
          *buf = 138543618;
          selfCopy = self;
          v67 = 2114;
          v68 = v25;
          _os_log_error_impl(&dword_228986000, v26, OS_LOG_TYPE_ERROR, "[%{public}@] Error while determining onboarding eligibility for Walking Steadiness %{public}@", buf, 0x16u);
          if (!v24)
          {
            goto LABEL_34;
          }
        }

        else if (!v24)
        {
          goto LABEL_34;
        }

        if (([v24 ineligibilityReasons] & 8) == 0)
        {
          v53 = v24;
          v55 = v25;
          v27 = objc_alloc(MEMORY[0x277CCD740]);
          date = [MEMORY[0x277CBEAA8] date];
          v56 = countryCode;
          v29 = [v27 initWithFeatureIdentifier:v17 version:1 completionDate:date countryCode:countryCode countryCodeProvenance:102];

          profile2 = [(HDDemoDataBaseSampleGenerator *)self profile];
          onboardingCompletionManager = [profile2 onboardingCompletionManager];
          v59 = 0;
          v54 = v29;
          LOBYTE(v29) = [onboardingCompletionManager insertOnboardingCompletion:v29 error:&v59];
          v32 = v59;

          if ((v29 & 1) == 0)
          {
            _HKInitializeLogging();
            v48 = *MEMORY[0x277CCC2B8];
            if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v41 = v32;
              selfCopy = v32;
              _os_log_impl(&dword_228986000, v48, OS_LOG_TYPE_DEFAULT, "Failed to insert Walking Steadiness onboarding completion: %{public}@", buf, 0xCu);
              v25 = v55;
              countryCode = v56;
            }

            else
            {
              v25 = v55;
              countryCode = v56;
              v41 = v32;
            }

            v24 = v53;
            v50 = v54;
            goto LABEL_33;
          }

          profile3 = [(HDDemoDataBaseSampleGenerator *)self profile];
          featureSettingsManager = [profile3 featureSettingsManager];
          v35 = *MEMORY[0x277CCC120];
          v58 = v32;
          v36 = [featureSettingsManager setFeatureSettingsNumber:MEMORY[0x277CBEC38] forKey:v35 featureIdentifier:v17 suppressNotificationsToObserver:0 error:&v58];
          v52 = v58;

          if ((v36 & 1) == 0)
          {
            v41 = v52;
            _HKInitializeLogging();
            v49 = *MEMORY[0x277CCC2B8];
            v24 = v53;
            if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              selfCopy = v52;
              _os_log_impl(&dword_228986000, v49, OS_LOG_TYPE_DEFAULT, "Failed to update feature settings enablement key for Walking Steadiness: %{public}@", buf, 0xCu);
            }

            v25 = v55;
            countryCode = v56;
            goto LABEL_32;
          }

          profile4 = [(HDDemoDataBaseSampleGenerator *)self profile];
          featureSettingsManager2 = [profile4 featureSettingsManager];
          v39 = *MEMORY[0x277CCC130];
          v57 = v52;
          v40 = [featureSettingsManager2 setFeatureSettingsNumber:MEMORY[0x277CBEC38] forKey:v39 featureIdentifier:v17 suppressNotificationsToObserver:0 error:&v57];
          v41 = v57;

          _HKInitializeLogging();
          v42 = *MEMORY[0x277CCC2B8];
          v24 = v53;
          v43 = *MEMORY[0x277CCC2B8];
          if (v40)
          {
            v25 = v55;
            countryCode = v56;
            if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              v44 = "Completed Walking Steadiness onboarding";
              v45 = v42;
              v46 = OS_LOG_TYPE_INFO;
              v47 = 2;
LABEL_31:
              _os_log_impl(&dword_228986000, v45, v46, v44, buf, v47);
            }
          }

          else
          {
            v25 = v55;
            countryCode = v56;
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              selfCopy = v41;
              v44 = "Failed to update feature settings onboarding acknowledgement key for Walking Steadiness: %{public}@";
              v45 = v42;
              v46 = OS_LOG_TYPE_DEFAULT;
              v47 = 12;
              goto LABEL_31;
            }
          }

LABEL_32:
          v50 = v54;
LABEL_33:
        }

LABEL_34:

        goto LABEL_35;
      }

LABEL_11:

      _HKInitializeLogging();
      v20 = *MEMORY[0x277CCC2B8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "Unable to find Walking Steadiness Feature Availability Provider", buf, 2u);
      }

LABEL_35:
    }
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (void)generateObjectsForDemoPerson:(id)person fromTime:(double)time toTime:(double)toTime currentDate:(id)date objectCollection:(id)collection
{
  v143.receiver = self;
  v143.super_class = HDDemoDataMobilitySampleGenerator;
  collectionCopy = collection;
  dateCopy = date;
  personCopy = person;
  [(HDDemoDataBaseSampleGenerator *)&v143 generateObjectsForDemoPerson:personCopy fromTime:dateCopy toTime:collectionCopy currentDate:toTime objectCollection:toTime];
  v142 = dateCopy;
  if (self)
  {
    v14 = collectionCopy;
    v15 = dateCopy;
    v16 = personCopy;
    [v16 stepLengthMean];
    v18 = v17;
    [v16 stepLengthStdDev];
    v20 = v19;
    [v16 stepLengthSampleFrequency];
    v22 = v21;
    [v16 stepLengthSampleFrequencyStdDev];
    v24 = v23;
    isDemoPersonWalkingAbove = [(HDDemoDataMobilitySampleGenerator *)self _isDemoPersonWalkingAboveAverage];
    if (isDemoPersonWalkingAbove)
    {
      v18 = v18 * 1.05;
      v22 = v22 * 0.2;
    }

    nextStepLengthSampleTime = self->_nextStepLengthSampleTime;
    if (isDemoPersonWalkingAbove)
    {
      v24 = v24 * 0.2;
    }

    v27 = *MEMORY[0x277CCCCC8];
    meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
    v29 = [(HDDemoDataMobilitySampleGenerator *)self _generateWalkingDataSamplesForDemoPerson:v16 atTime:v15 sampleDate:0 duration:0 addFromWatch:v14 shouldDecreaseDuringRehab:v27 objectCollection:meterUnit nextSampleTime:toTime typeIdentifier:0.0 unit:nextStepLengthSampleTime sampleMean:v18 sampleMeanStdDev:v20 sampleFrequency:v22 sampleFrequencyStdDev:v24];

    self->_nextStepLengthSampleTime = v29;
    v30 = v16;
    v31 = v14;
    v32 = v15;
    [v30 walkingSpeedMean];
    v34 = v33;
    [v30 walkingSpeedStdDev];
    v36 = v35;
    [v30 walkingSpeedSampleFrequency];
    v38 = v37;
    [v30 walkingSpeedSampleFrequencyStdDev];
    v40 = v39;
    if ([(HDDemoDataMobilitySampleGenerator *)self _isDemoPersonWalkingAboveAverage])
    {
      v34 = v34 * 1.2;
      v36 = v36 * 1.2;
      v38 = v38 * 0.2;
      v40 = v40 * 0.2;
    }

    nextWalkingSpeedSampleTime = self->_nextWalkingSpeedSampleTime;
    v42 = *MEMORY[0x277CCCCC0];
    v43 = [MEMORY[0x277CCDAB0] unitFromString:@"m/s"];
    v44 = [(HDDemoDataMobilitySampleGenerator *)self _generateWalkingDataSamplesForDemoPerson:v30 atTime:v32 sampleDate:0 duration:0 addFromWatch:v31 shouldDecreaseDuringRehab:v42 objectCollection:v43 nextSampleTime:toTime typeIdentifier:0.0 unit:nextWalkingSpeedSampleTime sampleMean:v34 sampleMeanStdDev:v36 sampleFrequency:v38 sampleFrequencyStdDev:v40];

    self->_nextWalkingSpeedSampleTime = v44;
    v45 = v31;
    v46 = v32;
    v47 = v30;
    [v47 asymmetryPercentageMean];
    v49 = v48;
    [v47 asymmetryPercentageStdDev];
    v51 = v50;
    [v47 asymmetryPercentageSampleFrequency];
    v53 = v52;
    [v47 asymmetryPercentageSampleFrequencyStdDev];
    v55 = v54;
    nextAsymmetryPercentageSampleTime = self->_nextAsymmetryPercentageSampleTime;
    v57 = *MEMORY[0x277CCCCA8];
    percentUnit = [MEMORY[0x277CCDAB0] percentUnit];
    v59 = [(HDDemoDataMobilitySampleGenerator *)self _generateWalkingDataSamplesForDemoPerson:v47 atTime:v46 sampleDate:0 duration:1 addFromWatch:v45 shouldDecreaseDuringRehab:v57 objectCollection:percentUnit nextSampleTime:toTime typeIdentifier:0.0 unit:nextAsymmetryPercentageSampleTime sampleMean:v49 sampleMeanStdDev:v51 sampleFrequency:v53 sampleFrequencyStdDev:v55];

    self->_nextAsymmetryPercentageSampleTime = v59;
    v60 = v45;
    v61 = v46;
    v62 = v47;
    [v62 doubleSupportPercentageMean];
    v64 = v63;
    [v62 doubleSupportPercentageStdDev];
    v66 = v65;
    [v62 doubleSupportPercentageSampleFrequency];
    v68 = v67;
    [v62 doubleSupportPercentageSampleFrequencyStdDev];
    v70 = v69;
    nextDoubleSupportPercentageSampleTime = self->_nextDoubleSupportPercentageSampleTime;
    v72 = *MEMORY[0x277CCCCB0];
    percentUnit2 = [MEMORY[0x277CCDAB0] percentUnit];
    v74 = [(HDDemoDataMobilitySampleGenerator *)self _generateWalkingDataSamplesForDemoPerson:v62 atTime:v61 sampleDate:0 duration:1 addFromWatch:v60 shouldDecreaseDuringRehab:v72 objectCollection:percentUnit2 nextSampleTime:toTime typeIdentifier:0.0 unit:nextDoubleSupportPercentageSampleTime sampleMean:v64 sampleMeanStdDev:v66 sampleFrequency:v68 sampleFrequencyStdDev:v70];

    self->_nextDoubleSupportPercentageSampleTime = v74;
    v75 = v60;
    v76 = v61;
    v77 = v62;
    [v77 sixMinuteWalkTestDistanceMean];
    v79 = v78;
    [v77 sixMinuteWalkTestDistanceStdDev];
    v81 = v80;
    [v77 sixMinuteWalkTestDistanceSampleFrequency];
    v83 = v82;
    [v77 sixMinuteWalkTestDistanceSampleFrequencyStdDev];
    v85 = v84;
    nextSixMinuteWalkTestDistanceSampleTime = self->_nextSixMinuteWalkTestDistanceSampleTime;
    v87 = *MEMORY[0x277CCCC58];
    meterUnit2 = [MEMORY[0x277CCDAB0] meterUnit];
    v89 = [(HDDemoDataMobilitySampleGenerator *)self _generateWalkingDataSamplesForDemoPerson:v77 atTime:v76 sampleDate:1 duration:0 addFromWatch:v75 shouldDecreaseDuringRehab:v87 objectCollection:meterUnit2 nextSampleTime:toTime typeIdentifier:0.0 unit:nextSixMinuteWalkTestDistanceSampleTime sampleMean:v79 sampleMeanStdDev:v81 sampleFrequency:v83 sampleFrequencyStdDev:v85];

    self->_nextSixMinuteWalkTestDistanceSampleTime = v89;
    v90 = v75;
    v91 = v76;
    v92 = v77;
    [v92 stairAscentSpeedMean];
    v94 = v93;
    [v92 stairAscentSpeedStdDev];
    v96 = v95;
    [v92 stairAscentSpeedSampleFrequency];
    v98 = v97;
    [v92 stairAscentSpeedSampleFrequencyStdDev];
    v100 = v99;
    nextStairAscentSpeedSampleTime = self->_nextStairAscentSpeedSampleTime;
    v102 = *MEMORY[0x277CCCC60];
    v103 = [MEMORY[0x277CCDAB0] unitFromString:@"m/s"];
    v104 = [(HDDemoDataMobilitySampleGenerator *)self _generateWalkingDataSamplesForDemoPerson:v92 atTime:v91 sampleDate:1 duration:0 addFromWatch:v90 shouldDecreaseDuringRehab:v102 objectCollection:v103 nextSampleTime:toTime typeIdentifier:0.0 unit:nextStairAscentSpeedSampleTime sampleMean:v94 sampleMeanStdDev:v96 sampleFrequency:v98 sampleFrequencyStdDev:v100];

    self->_nextStairAscentSpeedSampleTime = v104;
    v105 = v90;
    v106 = v91;
    v107 = v92;
    [v107 stairDescentSpeedMean];
    v109 = v108;
    [v107 stairDescentSpeedStdDev];
    v111 = v110;
    [v107 stairDescentSpeedSampleFrequency];
    v113 = v112;
    [v107 stairDescentSpeedSampleFrequencyStdDev];
    v115 = v114;
    nextStairDescentSpeedSampleTime = self->_nextStairDescentSpeedSampleTime;
    v117 = *MEMORY[0x277CCCC68];
    v118 = [MEMORY[0x277CCDAB0] unitFromString:@"m/s"];
    v119 = [(HDDemoDataMobilitySampleGenerator *)self _generateWalkingDataSamplesForDemoPerson:v107 atTime:v106 sampleDate:1 duration:0 addFromWatch:v105 shouldDecreaseDuringRehab:v117 objectCollection:v118 nextSampleTime:toTime typeIdentifier:0.0 unit:nextStairDescentSpeedSampleTime sampleMean:v109 sampleMeanStdDev:v111 sampleFrequency:v113 sampleFrequencyStdDev:v115];

    self->_nextStairDescentSpeedSampleTime = v119;
    v120 = v107;
    v121 = v106;
    v122 = v105;
    birthDateComponents = [v120 birthDateComponents];
    v124 = HDDemoData_ageBetweenNSDateComponentsAndDate(birthDateComponents, v121);

    if (v124 >= *MEMORY[0x277CCE588])
    {
      [v120 walkingSteadinessMean];
      v126 = v125;
      [v120 walkingSteadinessStdDev];
      v128 = v127;
      [v120 walkingSteadinessSampleFrequency];
      v130 = v129;
      [v120 walkingSteadinessSampleFrequencyStdDev];
      v132 = v131;
      [v120 walkingSteadinessSampleFrequency];
      v134 = v133 * 86400.0;
      nextWalkingSteadinessSampleTime = self->_nextWalkingSteadinessSampleTime;
      v136 = *MEMORY[0x277CCC948];
      percentUnit3 = [MEMORY[0x277CCDAB0] percentUnit];
      self->_nextWalkingSteadinessSampleTime = [(HDDemoDataMobilitySampleGenerator *)self _generateWalkingDataSamplesForDemoPerson:v120 atTime:v121 sampleDate:0 duration:0 addFromWatch:v122 shouldDecreaseDuringRehab:v136 objectCollection:percentUnit3 nextSampleTime:toTime typeIdentifier:v134 unit:nextWalkingSteadinessSampleTime sampleMean:v126 sampleMeanStdDev:v128 sampleFrequency:v130 sampleFrequencyStdDev:v132];
    }
  }

  else
  {
    v138 = personCopy;

    v139 = v138;
    v140 = dateCopy;
    v141 = collectionCopy;
  }
}

- (uint64_t)_isDemoPersonWalkingAboveAverage
{
  demoDataGenerator = [self demoDataGenerator];
  generatorState = [demoDataGenerator generatorState];
  if ([generatorState isWalking])
  {
    isHiking = 1;
  }

  else
  {
    demoDataGenerator2 = [self demoDataGenerator];
    generatorState2 = [demoDataGenerator2 generatorState];
    isHiking = [generatorState2 isHiking];
  }

  return isHiking;
}

- (double)_generateWalkingDataSamplesForDemoPerson:(void *)person atTime:(int)time sampleDate:(int)date duration:(void *)duration addFromWatch:(void *)watch shouldDecreaseDuringRehab:(void *)rehab objectCollection:(double)collection nextSampleTime:(double)self0 typeIdentifier:(double)self1 unit:(double)self2 sampleMean:(double)self3 sampleMeanStdDev:(double)self4 sampleFrequency:(double)self5 sampleFrequencyStdDev:
{
  v29 = a2;
  personCopy = person;
  durationCopy = duration;
  watchCopy = watch;
  rehabCopy = rehab;
  if (collection >= identifier)
  {
    demoDataGenerator = [self demoDataGenerator];
    sleepSampleGenerator = [demoDataGenerator sleepSampleGenerator];
    if ([sleepSampleGenerator isDemoPersonAwake:v29 atTime:collection])
    {
      dateCopy = date;
      timeCopy = time;
      v64 = durationCopy;
      demoDataGenerator2 = [self demoDataGenerator];
      activitySampleGenerator = [demoDataGenerator2 activitySampleGenerator];
      v38 = [activitySampleGenerator _isDemoPersonSedentary:v29 atTime:collection];

      if (v38)
      {
        durationCopy = v64;
        goto LABEL_16;
      }

      demoDataGenerator3 = [self demoDataGenerator];
      statisticsSampleGenerator = [demoDataGenerator3 statisticsSampleGenerator];
      [statisticsSampleGenerator computeStatisticalTimeFromCurrentTime:collection mean:dev stdDev:frequency];
      identifier = v41 + identifier;

      demoDataGenerator = [personCopy dateByAddingTimeInterval:-sampleTime];
      sleepSampleGenerator = personCopy;
      demoDataGenerator4 = [self demoDataGenerator];
      firstSampleDate = [demoDataGenerator4 firstSampleDate];
      v44 = [demoDataGenerator compare:firstSampleDate];

      if (v44 == -1)
      {
        durationCopy = v64;
      }

      else
      {
        profileType = [v29 profileType];
        v46 = 1.0;
        if (profileType == 3)
        {
          demoDataGenerator5 = [self demoDataGenerator];
          configuration = [demoDataGenerator5 configuration];
          generationPeriodInDays = [configuration generationPeriodInDays];

          [v29 rehabLogarithmicConstant];
          v51 = v50;
          v52 = log(v51 + (2.71828183 - v51) * (collection / generationPeriodInDays));
          if (dateCopy)
          {
            v52 = log(v51) + 1.0 - v52;
          }

          v46 = fmin(v52, 1.0);
        }

        v53 = v46 * unit;
        demoDataGenerator6 = [self demoDataGenerator];
        statisticsSampleGenerator2 = [demoDataGenerator6 statisticsSampleGenerator];
        [statisticsSampleGenerator2 computeNoiseFromTime:collection stdDev:mean];
        v57 = v53 + v56;

        v58 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:watchCopy];
        v59 = [MEMORY[0x277CCD7E8] quantityWithUnit:rehabCopy doubleValue:v57];
        v60 = [MEMORY[0x277CCD800] quantitySampleWithType:v58 quantity:v59 startDate:demoDataGenerator endDate:sleepSampleGenerator];
        durationCopy = v64;
        if (timeCopy)
        {
          [v64 addObjectFromWatch:v60];
        }

        else
        {
          [v64 addObjectFromPhone:v60];
        }
      }
    }
  }

LABEL_16:

  return identifier;
}

@end