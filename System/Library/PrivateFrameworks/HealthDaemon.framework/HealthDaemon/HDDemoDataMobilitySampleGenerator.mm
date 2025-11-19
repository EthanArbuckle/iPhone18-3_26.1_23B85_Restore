@interface HDDemoDataMobilitySampleGenerator
- (HDDemoDataMobilitySampleGenerator)init;
- (HDDemoDataMobilitySampleGenerator)initWithCoder:(id)a3;
- (double)_generateWalkingDataSamplesForDemoPerson:(void *)a3 atTime:(int)a4 sampleDate:(int)a5 duration:(void *)a6 addFromWatch:(void *)a7 shouldDecreaseDuringRehab:(void *)a8 objectCollection:(double)a9 nextSampleTime:(double)a10 typeIdentifier:(double)a11 unit:(double)a12 sampleMean:(double)a13 sampleMeanStdDev:(double)a14 sampleFrequency:(double)a15 sampleFrequencyStdDev:;
- (uint64_t)_isDemoPersonWalkingAboveAverage;
- (void)encodeWithCoder:(id)a3;
- (void)generateFirstRunObjectsForDemoPerson:(id)a3 firstDate:(id)a4 objectCollection:(id)a5;
- (void)generateObjectsForDemoPerson:(id)a3 fromTime:(double)a4 toTime:(double)a5 currentDate:(id)a6 objectCollection:(id)a7;
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

- (HDDemoDataMobilitySampleGenerator)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = HDDemoDataMobilitySampleGenerator;
  v5 = [(HDDemoDataBaseSampleGenerator *)&v15 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"_NextStepLengthSampleTimeKey"];
    v5->_nextStepLengthSampleTime = v6;
    [v4 decodeDoubleForKey:@"_NextWalkingSpeedSampleTimeKey"];
    v5->_nextWalkingSpeedSampleTime = v7;
    [v4 decodeDoubleForKey:@"_NextAsymmetryPercentageSampleTimeKey"];
    v5->_nextAsymmetryPercentageSampleTime = v8;
    [v4 decodeDoubleForKey:@"_NextDoubleSupportPercentageSampleTimeKey"];
    v5->_nextDoubleSupportPercentageSampleTime = v9;
    [v4 decodeDoubleForKey:@"_NextSixMinuteWalkTestDistanceSampleTimeKey"];
    v5->_nextSixMinuteWalkTestDistanceSampleTime = v10;
    [v4 decodeDoubleForKey:@"_NextStairAscentSpeedSampleTimeKey"];
    v5->_nextStairAscentSpeedSampleTime = v11;
    [v4 decodeDoubleForKey:@"_NextStairDescentSpeedSampleTimeKey"];
    v5->_nextStairDescentSpeedSampleTime = v12;
    [v4 decodeDoubleForKey:@"_NextWalkingSteadinessSampleTimeKey"];
    v5->_nextWalkingSteadinessSampleTime = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HDDemoDataMobilitySampleGenerator;
  v4 = a3;
  [(HDDemoDataBaseSampleGenerator *)&v6 encodeWithCoder:v4];
  if (self)
  {
    [v4 encodeDouble:@"_NextStepLengthSampleTimeKey" forKey:{self->_nextStepLengthSampleTime, v6.receiver, v6.super_class}];
    [v4 encodeDouble:@"_NextWalkingSpeedSampleTimeKey" forKey:self->_nextWalkingSpeedSampleTime];
    [v4 encodeDouble:@"_NextAsymmetryPercentageSampleTimeKey" forKey:self->_nextAsymmetryPercentageSampleTime];
    [v4 encodeDouble:@"_NextDoubleSupportPercentageSampleTimeKey" forKey:self->_nextDoubleSupportPercentageSampleTime];
    [v4 encodeDouble:@"_NextSixMinuteWalkTestDistanceSampleTimeKey" forKey:self->_nextSixMinuteWalkTestDistanceSampleTime];
    [v4 encodeDouble:@"_NextStairAscentSpeedSampleTimeKey" forKey:self->_nextStairAscentSpeedSampleTime];
    [v4 encodeDouble:@"_NextStairDescentSpeedSampleTimeKey" forKey:self->_nextStairDescentSpeedSampleTime];
    nextWalkingSteadinessSampleTime = self->_nextWalkingSteadinessSampleTime;
  }

  else
  {
    [v4 encodeDouble:@"_NextStepLengthSampleTimeKey" forKey:{0.0, v6.receiver, v6.super_class}];
    [v4 encodeDouble:@"_NextWalkingSpeedSampleTimeKey" forKey:0.0];
    [v4 encodeDouble:@"_NextAsymmetryPercentageSampleTimeKey" forKey:0.0];
    [v4 encodeDouble:@"_NextDoubleSupportPercentageSampleTimeKey" forKey:0.0];
    [v4 encodeDouble:@"_NextSixMinuteWalkTestDistanceSampleTimeKey" forKey:0.0];
    [v4 encodeDouble:@"_NextStairAscentSpeedSampleTimeKey" forKey:0.0];
    [v4 encodeDouble:@"_NextStairDescentSpeedSampleTimeKey" forKey:0.0];
    nextWalkingSteadinessSampleTime = 0.0;
  }

  [v4 encodeDouble:@"_NextWalkingSteadinessSampleTimeKey" forKey:nextWalkingSteadinessSampleTime];
}

- (void)generateFirstRunObjectsForDemoPerson:(id)a3 firstDate:(id)a4 objectCollection:(id)a5
{
  v70 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (self)
  {
    v9 = [v7 birthDateComponents];
    v10 = HDDemoData_ageBetweenNSDateComponentsAndDate(v9, v8);

    if (v10 >= *MEMORY[0x277CCE588])
    {
      v11 = [(HDDemoDataBaseSampleGenerator *)self profile];
      v12 = [v11 profileExtensionsConformingToProtocol:&unk_283D71258];

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

        v22 = [MEMORY[0x277CBEAF8] currentLocale];
        v23 = [v22 countryCode];

        v60 = 0;
        v24 = [v21 onboardingEligibilityForCountryCode:v23 error:&v60];
        v25 = v60;
        if (v25 && (_HKInitializeLogging(), v26 = *MEMORY[0x277CCC2B8], os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR)))
        {
          *buf = 138543618;
          v66 = self;
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
          v28 = [MEMORY[0x277CBEAA8] date];
          v56 = v23;
          v29 = [v27 initWithFeatureIdentifier:v17 version:1 completionDate:v28 countryCode:v23 countryCodeProvenance:102];

          v30 = [(HDDemoDataBaseSampleGenerator *)self profile];
          v31 = [v30 onboardingCompletionManager];
          v59 = 0;
          v54 = v29;
          LOBYTE(v29) = [v31 insertOnboardingCompletion:v29 error:&v59];
          v32 = v59;

          if ((v29 & 1) == 0)
          {
            _HKInitializeLogging();
            v48 = *MEMORY[0x277CCC2B8];
            if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v41 = v32;
              v66 = v32;
              _os_log_impl(&dword_228986000, v48, OS_LOG_TYPE_DEFAULT, "Failed to insert Walking Steadiness onboarding completion: %{public}@", buf, 0xCu);
              v25 = v55;
              v23 = v56;
            }

            else
            {
              v25 = v55;
              v23 = v56;
              v41 = v32;
            }

            v24 = v53;
            v50 = v54;
            goto LABEL_33;
          }

          v33 = [(HDDemoDataBaseSampleGenerator *)self profile];
          v34 = [v33 featureSettingsManager];
          v35 = *MEMORY[0x277CCC120];
          v58 = v32;
          v36 = [v34 setFeatureSettingsNumber:MEMORY[0x277CBEC38] forKey:v35 featureIdentifier:v17 suppressNotificationsToObserver:0 error:&v58];
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
              v66 = v52;
              _os_log_impl(&dword_228986000, v49, OS_LOG_TYPE_DEFAULT, "Failed to update feature settings enablement key for Walking Steadiness: %{public}@", buf, 0xCu);
            }

            v25 = v55;
            v23 = v56;
            goto LABEL_32;
          }

          v37 = [(HDDemoDataBaseSampleGenerator *)self profile];
          v38 = [v37 featureSettingsManager];
          v39 = *MEMORY[0x277CCC130];
          v57 = v52;
          v40 = [v38 setFeatureSettingsNumber:MEMORY[0x277CBEC38] forKey:v39 featureIdentifier:v17 suppressNotificationsToObserver:0 error:&v57];
          v41 = v57;

          _HKInitializeLogging();
          v42 = *MEMORY[0x277CCC2B8];
          v24 = v53;
          v43 = *MEMORY[0x277CCC2B8];
          if (v40)
          {
            v25 = v55;
            v23 = v56;
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
            v23 = v56;
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v66 = v41;
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

- (void)generateObjectsForDemoPerson:(id)a3 fromTime:(double)a4 toTime:(double)a5 currentDate:(id)a6 objectCollection:(id)a7
{
  v143.receiver = self;
  v143.super_class = HDDemoDataMobilitySampleGenerator;
  v11 = a7;
  v12 = a6;
  v13 = a3;
  [(HDDemoDataBaseSampleGenerator *)&v143 generateObjectsForDemoPerson:v13 fromTime:v12 toTime:v11 currentDate:a5 objectCollection:a5];
  v142 = v12;
  if (self)
  {
    v14 = v11;
    v15 = v12;
    v16 = v13;
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
    v28 = [MEMORY[0x277CCDAB0] meterUnit];
    v29 = [(HDDemoDataMobilitySampleGenerator *)self _generateWalkingDataSamplesForDemoPerson:v16 atTime:v15 sampleDate:0 duration:0 addFromWatch:v14 shouldDecreaseDuringRehab:v27 objectCollection:v28 nextSampleTime:a5 typeIdentifier:0.0 unit:nextStepLengthSampleTime sampleMean:v18 sampleMeanStdDev:v20 sampleFrequency:v22 sampleFrequencyStdDev:v24];

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
    v44 = [(HDDemoDataMobilitySampleGenerator *)self _generateWalkingDataSamplesForDemoPerson:v30 atTime:v32 sampleDate:0 duration:0 addFromWatch:v31 shouldDecreaseDuringRehab:v42 objectCollection:v43 nextSampleTime:a5 typeIdentifier:0.0 unit:nextWalkingSpeedSampleTime sampleMean:v34 sampleMeanStdDev:v36 sampleFrequency:v38 sampleFrequencyStdDev:v40];

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
    v58 = [MEMORY[0x277CCDAB0] percentUnit];
    v59 = [(HDDemoDataMobilitySampleGenerator *)self _generateWalkingDataSamplesForDemoPerson:v47 atTime:v46 sampleDate:0 duration:1 addFromWatch:v45 shouldDecreaseDuringRehab:v57 objectCollection:v58 nextSampleTime:a5 typeIdentifier:0.0 unit:nextAsymmetryPercentageSampleTime sampleMean:v49 sampleMeanStdDev:v51 sampleFrequency:v53 sampleFrequencyStdDev:v55];

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
    v73 = [MEMORY[0x277CCDAB0] percentUnit];
    v74 = [(HDDemoDataMobilitySampleGenerator *)self _generateWalkingDataSamplesForDemoPerson:v62 atTime:v61 sampleDate:0 duration:1 addFromWatch:v60 shouldDecreaseDuringRehab:v72 objectCollection:v73 nextSampleTime:a5 typeIdentifier:0.0 unit:nextDoubleSupportPercentageSampleTime sampleMean:v64 sampleMeanStdDev:v66 sampleFrequency:v68 sampleFrequencyStdDev:v70];

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
    v88 = [MEMORY[0x277CCDAB0] meterUnit];
    v89 = [(HDDemoDataMobilitySampleGenerator *)self _generateWalkingDataSamplesForDemoPerson:v77 atTime:v76 sampleDate:1 duration:0 addFromWatch:v75 shouldDecreaseDuringRehab:v87 objectCollection:v88 nextSampleTime:a5 typeIdentifier:0.0 unit:nextSixMinuteWalkTestDistanceSampleTime sampleMean:v79 sampleMeanStdDev:v81 sampleFrequency:v83 sampleFrequencyStdDev:v85];

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
    v104 = [(HDDemoDataMobilitySampleGenerator *)self _generateWalkingDataSamplesForDemoPerson:v92 atTime:v91 sampleDate:1 duration:0 addFromWatch:v90 shouldDecreaseDuringRehab:v102 objectCollection:v103 nextSampleTime:a5 typeIdentifier:0.0 unit:nextStairAscentSpeedSampleTime sampleMean:v94 sampleMeanStdDev:v96 sampleFrequency:v98 sampleFrequencyStdDev:v100];

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
    v119 = [(HDDemoDataMobilitySampleGenerator *)self _generateWalkingDataSamplesForDemoPerson:v107 atTime:v106 sampleDate:1 duration:0 addFromWatch:v105 shouldDecreaseDuringRehab:v117 objectCollection:v118 nextSampleTime:a5 typeIdentifier:0.0 unit:nextStairDescentSpeedSampleTime sampleMean:v109 sampleMeanStdDev:v111 sampleFrequency:v113 sampleFrequencyStdDev:v115];

    self->_nextStairDescentSpeedSampleTime = v119;
    v120 = v107;
    v121 = v106;
    v122 = v105;
    v123 = [v120 birthDateComponents];
    v124 = HDDemoData_ageBetweenNSDateComponentsAndDate(v123, v121);

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
      v137 = [MEMORY[0x277CCDAB0] percentUnit];
      self->_nextWalkingSteadinessSampleTime = [(HDDemoDataMobilitySampleGenerator *)self _generateWalkingDataSamplesForDemoPerson:v120 atTime:v121 sampleDate:0 duration:0 addFromWatch:v122 shouldDecreaseDuringRehab:v136 objectCollection:v137 nextSampleTime:a5 typeIdentifier:v134 unit:nextWalkingSteadinessSampleTime sampleMean:v126 sampleMeanStdDev:v128 sampleFrequency:v130 sampleFrequencyStdDev:v132];
    }
  }

  else
  {
    v138 = v13;

    v139 = v138;
    v140 = v12;
    v141 = v11;
  }
}

- (uint64_t)_isDemoPersonWalkingAboveAverage
{
  v2 = [a1 demoDataGenerator];
  v3 = [v2 generatorState];
  if ([v3 isWalking])
  {
    v4 = 1;
  }

  else
  {
    v5 = [a1 demoDataGenerator];
    v6 = [v5 generatorState];
    v4 = [v6 isHiking];
  }

  return v4;
}

- (double)_generateWalkingDataSamplesForDemoPerson:(void *)a3 atTime:(int)a4 sampleDate:(int)a5 duration:(void *)a6 addFromWatch:(void *)a7 shouldDecreaseDuringRehab:(void *)a8 objectCollection:(double)a9 nextSampleTime:(double)a10 typeIdentifier:(double)a11 unit:(double)a12 sampleMean:(double)a13 sampleMeanStdDev:(double)a14 sampleFrequency:(double)a15 sampleFrequencyStdDev:
{
  v29 = a2;
  v30 = a3;
  v31 = a6;
  v32 = a7;
  v33 = a8;
  if (a9 >= a11)
  {
    v34 = [a1 demoDataGenerator];
    v35 = [v34 sleepSampleGenerator];
    if ([v35 isDemoPersonAwake:v29 atTime:a9])
    {
      v62 = a5;
      v63 = a4;
      v64 = v31;
      v36 = [a1 demoDataGenerator];
      v37 = [v36 activitySampleGenerator];
      v38 = [v37 _isDemoPersonSedentary:v29 atTime:a9];

      if (v38)
      {
        v31 = v64;
        goto LABEL_16;
      }

      v39 = [a1 demoDataGenerator];
      v40 = [v39 statisticsSampleGenerator];
      [v40 computeStatisticalTimeFromCurrentTime:a9 mean:a14 stdDev:a15];
      a11 = v41 + a11;

      v34 = [v30 dateByAddingTimeInterval:-a10];
      v35 = v30;
      v42 = [a1 demoDataGenerator];
      v43 = [v42 firstSampleDate];
      v44 = [v34 compare:v43];

      if (v44 == -1)
      {
        v31 = v64;
      }

      else
      {
        v45 = [v29 profileType];
        v46 = 1.0;
        if (v45 == 3)
        {
          v47 = [a1 demoDataGenerator];
          v48 = [v47 configuration];
          v49 = [v48 generationPeriodInDays];

          [v29 rehabLogarithmicConstant];
          v51 = v50;
          v52 = log(v51 + (2.71828183 - v51) * (a9 / v49));
          if (v62)
          {
            v52 = log(v51) + 1.0 - v52;
          }

          v46 = fmin(v52, 1.0);
        }

        v53 = v46 * a12;
        v54 = [a1 demoDataGenerator];
        v55 = [v54 statisticsSampleGenerator];
        [v55 computeNoiseFromTime:a9 stdDev:a13];
        v57 = v53 + v56;

        v58 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:v32];
        v59 = [MEMORY[0x277CCD7E8] quantityWithUnit:v33 doubleValue:v57];
        v60 = [MEMORY[0x277CCD800] quantitySampleWithType:v58 quantity:v59 startDate:v34 endDate:v35];
        v31 = v64;
        if (v63)
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

  return a11;
}

@end