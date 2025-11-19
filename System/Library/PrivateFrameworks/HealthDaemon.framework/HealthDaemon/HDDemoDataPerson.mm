@interface HDDemoDataPerson
+ (id)defaultPersonWithBiologicalSex:(int64_t)a3;
- (HDDemoDataPerson)initWithFirstName:(id)a3 lastName:(id)a4 description:(id)a5 birthDateComponents:(id)a6 biologicalSex:(int64_t)a7;
- (id)fullName;
- (void)applyProfileType:(int64_t)a3;
- (void)updateMedicalIDData;
@end

@implementation HDDemoDataPerson

- (HDDemoDataPerson)initWithFirstName:(id)a3 lastName:(id)a4 description:(id)a5 birthDateComponents:(id)a6 biologicalSex:(int64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v22.receiver = self;
  v22.super_class = HDDemoDataPerson;
  v17 = [(HDDemoDataPerson *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_firstName, a3);
    objc_storeStrong(&v18->_lastName, a4);
    objc_storeStrong(&v18->_personDescription, a5);
    objc_storeStrong(&v18->_birthDateComponents, a6);
    v18->_biologicalSex = a7;
    v19 = objc_alloc_init(MEMORY[0x277CCDDF0]);
    medicalIDData = v18->_medicalIDData;
    v18->_medicalIDData = v19;
  }

  return v18;
}

+ (id)defaultPersonWithBiologicalSex:(int64_t)a3
{
  v94[7] = *MEMORY[0x277D85DE8];
  v4 = a3 == 2;
  if (a3 == 2)
  {
    v5 = @"Dave";
  }

  else
  {
    v5 = @"Lani";
  }

  v6 = @"Knox";
  if (a3 != 2)
  {
    v6 = @"Martinez";
  }

  v7 = MEMORY[0x277CBEAB8];
  if (a3 == 2)
  {
    v8 = 1971;
  }

  else
  {
    v8 = 1985;
  }

  if (a3 == 2)
  {
    v9 = 73;
  }

  else
  {
    v9 = 65;
  }

  if (a3 == 2)
  {
    v10 = 180;
  }

  else
  {
    v10 = 140;
  }

  if (a3 == 2)
  {
    v11 = 74;
  }

  else
  {
    v11 = 58;
  }

  v12 = 150.0;
  if (a3 == 2)
  {
    v12 = 200.0;
  }

  v64 = v12;
  v13 = 250.0;
  if (a3 != 2)
  {
    v13 = 200.0;
  }

  v66 = v13;
  if (a3 == 2)
  {
    v14 = 80.0;
  }

  else
  {
    v14 = 70.0;
  }

  v15 = 5.0;
  if (a3 == 2)
  {
    v15 = 7.0;
  }

  v68 = v14;
  v70 = v15;
  v16 = 6.0;
  if (a3 == 2)
  {
    v16 = 4.0;
  }

  v72 = v16;
  if (a3 == 2)
  {
    v17 = 3.3;
  }

  else
  {
    v17 = 4.0;
  }

  v18 = 1.0;
  if (a3 == 2)
  {
    v18 = 2.5;
  }

  v74 = v17;
  v76 = v18;
  if (a3 == 2)
  {
    v19 = 31;
  }

  else
  {
    v19 = 26;
  }

  v20 = v6;
  v21 = v5;
  v22 = objc_alloc_init(v7);
  [v22 setMonth:2];
  [v22 setDay:10];
  [v22 setYear:v8];
  [v22 setEra:1];
  v23 = [MEMORY[0x277CBEA80] hk_gregorianCalendarWithUTCTimeZone];
  v78 = v22;
  [v22 setCalendar:v23];

  v24 = [[HDDemoDataPerson alloc] initWithFirstName:v21 lastName:v20 description:@"Default Person" birthDateComponents:v22 biologicalSex:a3];
  [(HDDemoDataPerson *)v24 setBloodType:arc4random_uniform(7u) + 1];
  [(HDDemoDataPerson *)v24 setFitzpatrickSkinType:3];
  [(HDDemoDataPerson *)v24 setTimeIncrement:0.0208333333];
  [(HDDemoDataPerson *)v24 setTimeIncrementDuringExercise:0.000347222222];
  [(HDDemoDataPerson *)v24 setDawnTime:0.25];
  [(HDDemoDataPerson *)v24 setSunsetTime:0.8125];
  [(HDDemoDataPerson *)v24 setGenericSampleTimeNoiseStdDev:?];
  [(HDDemoDataPerson *)v24 setUvIndexSampleFrequency:0.0416666667];
  [(HDDemoDataPerson *)v24 setWaistCircumferenceInInches:33.0];
  [(HDDemoDataPerson *)v24 setWristCircumferenceInInches:0.0];
  [(HDDemoDataPerson *)v24 setForearmCircumferenceInInches:0.0];
  [(HDDemoDataPerson *)v24 setHipCircumferenceInInches:0.0];
  [(HDDemoDataPerson *)v24 setHeightTargetInCm:v9 * 2.53999996];
  [(HDDemoDataPerson *)v24 setHeightSampleTime:0.416666667];
  [(HDDemoDataPerson *)v24 setHeightSampleTimeFrequency:80.0];
  [(HDDemoDataPerson *)v24 setHeightSampleNoiseStdDev:?];
  [(HDDemoDataPerson *)v24 setWeightTargetInKg:v10 * 0.453592933];
  [(HDDemoDataPerson *)v24 setWeightSampleTime:0.375];
  [(HDDemoDataPerson *)v24 setWeightSampleTimeFrequency:1.0];
  [(HDDemoDataPerson *)v24 setWeightLossStartDay:110.0];
  [(HDDemoDataPerson *)v24 setWeightSampleNoiseStdDev:0.47627258];
  [(HDDemoDataPerson *)v24 setWeightDailyChangeStdDev:0.226796467];
  [(HDDemoDataPerson *)v24 setWeightChangePercentageMax:?];
  [(HDDemoDataPerson *)v24 setWeightDailyMaxLoss:0.317515053];
  [(HDDemoDataPerson *)v24 setWeightGainHolidayDaysInYear:&unk_283CAEAB8];
  [(HDDemoDataPerson *)v24 setRestingHeartRate:65];
  [(HDDemoDataPerson *)v24 setRestingHeartRateMaxDailyDifference:1];
  [(HDDemoDataPerson *)v24 setRestingHeartRateMaxTotalDifference:3];
  [(HDDemoDataPerson *)v24 setWalkingHeartRateAverage:110];
  [(HDDemoDataPerson *)v24 setWalkingHeartRateAverageMaxDailyDifference:5];
  [(HDDemoDataPerson *)v24 setWalkingHeartRateAverageMaxTotalDifference:15];
  [(HDDemoDataPerson *)v24 setHeartRateSampleFrequency:0.00555555556];
  [(HDDemoDataPerson *)v24 setHeartRateSampleFrequencyStdDev:0.0138888889];
  [(HDDemoDataPerson *)v24 setHeartRateSampleNoiseStdDev:13.0];
  [(HDDemoDataPerson *)v24 setHeartRateRecovery:50.0];
  [(HDDemoDataPerson *)v24 setHeartRateRecoveryValueStdDev:5.0];
  [(HDDemoDataPerson *)v24 setHeartRateRecoveryValueMaxConsecutiveDifference:10.0];
  [(HDDemoDataPerson *)v24 setHeartRateRecoveryValueMaxTotalDifference:50.0];
  [(HDDemoDataPerson *)v24 setVo2MaxValueStdDev:1.0];
  [(HDDemoDataPerson *)v24 setVo2MaxValueMaxConsecutiveDifference:1.0];
  [(HDDemoDataPerson *)v24 setVo2MaxValueMaxTotalDifference:3.0];
  [(HDDemoDataPerson *)v24 setVo2MaxSampleTimeNoiseStdDev:0.0208333333];
  [(HDDemoDataPerson *)v24 setRestingRespirationRate:13];
  [(HDDemoDataPerson *)v24 setRestingRespirationRateSampleFrequency:0.166666667];
  [(HDDemoDataPerson *)v24 setRestingRespirationRateSampleFrequencyDuringSleep:0.00694444444];
  [(HDDemoDataPerson *)v24 setRestingRespirationRateSampleNoiseStdDev:3.0];
  [(HDDemoDataPerson *)v24 setBloodPressureSampleFrequency:0.5];
  [(HDDemoDataPerson *)v24 setRestingSystolicBloodPressure:127];
  [(HDDemoDataPerson *)v24 setRestingDiastolicBloodPressure:84];
  [(HDDemoDataPerson *)v24 setRestingSystolicBloodPressureSampleNoiseStdDev:2.0];
  [(HDDemoDataPerson *)v24 setRestingDiastolicBloodPressureSampleNoiseStdDev:1.0];
  [(HDDemoDataPerson *)v24 setBodyTempSampleFrequency:0.5];
  [(HDDemoDataPerson *)v24 setBodyTempSampleNoiseStdDev:?];
  [(HDDemoDataPerson *)v24 setBodyTempFeverMultiplier:0.0];
  [(HDDemoDataPerson *)v24 setBodyTempExerciseMultiplier:0.015];
  [(HDDemoDataPerson *)v24 setBaseCorrectedWristSkinTemperatureInCelsius:36.0];
  [(HDDemoDataPerson *)v24 setDayToDayCorrectedWristSkinTemperatureNoiseStdDevInCelsius:0.25];
  [(HDDemoDataPerson *)v24 setOxygenSaturationSampleFrequency:0.0222222222];
  [(HDDemoDataPerson *)v24 setOxygenSaturationMean:98.0];
  [(HDDemoDataPerson *)v24 setOxygenSaturationStdDev:3.0];
  [(HDDemoDataPerson *)v24 setOxygenSaturationMeanAtElevation:93.5];
  [(HDDemoDataPerson *)v24 setOxygenSaturationStdDevAtElevation:1.5];
  [(HDDemoDataPerson *)v24 setOxygenSaturationMeasuringSuccessRate:0.2];
  [(HDDemoDataPerson *)v24 setOxygenSaturationMeasuringSuccessRateDuringSleep:?];
  [(HDDemoDataPerson *)v24 setPeripheralPerfusionIndexMean:4.0];
  [(HDDemoDataPerson *)v24 setPeripheralPerfusionIndexStdDev:0.5];
  [(HDDemoDataPerson *)v24 setPeripheralPerfusionIndexSampleFrequency:0.000347222222];
  [(HDDemoDataPerson *)v24 setSexualActivityProbabilityPercentage:0.2];
  [(HDDemoDataPerson *)v24 setSexualActivityProtectionProbabilityPercentage:0.6];
  [(HDDemoDataPerson *)v24 setSexualActivityProtectionDocumentationProbabilityPercentage:0.8];
  [(HDDemoDataPerson *)v24 setSexualActivityIsTryingToConceive:0];
  [(HDDemoDataPerson *)v24 setMenstrualPeriodFrequency:28.0];
  [(HDDemoDataPerson *)v24 setOvulationIndeterminateProbabilityPercentage:?];
  [(HDDemoDataPerson *)v24 setToothbrushingDurationMean:?];
  [(HDDemoDataPerson *)v24 setToothbrushingDurationMeanStdDev:20.0];
  [(HDDemoDataPerson *)v24 setHandwashingDurationMean:21.0];
  [(HDDemoDataPerson *)v24 setHandwashingDurationMeanStdDev:6.0];
  [(HDDemoDataPerson *)v24 setHandwashingSampleFrequency:0.0555555556];
  [(HDDemoDataPerson *)v24 setHandwashingSampleFrequencyStdDev:0.0208333333];
  [(HDDemoDataPerson *)v24 setTimeInDaylightSampleFrequency:0.0416666667];
  [(HDDemoDataPerson *)v24 setTimeInDaylightSampleFrequencyStdDev:0.00833333333];
  [(HDDemoDataPerson *)v24 timeIncrementDuringExercise];
  [(HDDemoDataPerson *)v24 setActiveCaloriesSampleFrequency:?];
  [(HDDemoDataPerson *)v24 setRestingCaloriesSampleFrequency:0.0416666667];
  [(HDDemoDataPerson *)v24 timeIncrement];
  [(HDDemoDataPerson *)v24 setStepsSampleFrequency:?];
  [(HDDemoDataPerson *)v24 timeIncrementDuringExercise];
  [(HDDemoDataPerson *)v24 setStepsSampleFrequencyDuringExercise:?];
  [(HDDemoDataPerson *)v24 setSedentarySampleFrequency:0.0416666667];
  [(HDDemoDataPerson *)v24 setRunningPowerMean:200.0];
  [(HDDemoDataPerson *)v24 setRunningPowerMeanStdDev:40.0];
  [(HDDemoDataPerson *)v24 setRunningStrideLengthMean:v11 * 2.53999996 / 100.0];
  [(HDDemoDataPerson *)v24 setRunningStrideLengthMeanStdDev:0.5];
  [(HDDemoDataPerson *)v24 setRunningVerticalOscillationMean:0.11];
  [(HDDemoDataPerson *)v24 setRunningVerticalOscillationMeanStdDev:0.02];
  [(HDDemoDataPerson *)v24 setRunningGroundContactTimeMean:200.0];
  [(HDDemoDataPerson *)v24 setRunningGroundContactTimeMeanStdDev:25.0];
  [(HDDemoDataPerson *)v24 setSwimmingStrokesPerYard:0.727272727];
  [(HDDemoDataPerson *)v24 setCyclingPowerMean:v64];
  [(HDDemoDataPerson *)v24 setCyclingPowerMeanStdDev:40.0];
  [(HDDemoDataPerson *)v24 setCyclingFTPMean:v66];
  [(HDDemoDataPerson *)v24 setCyclingFTPMeanStdDev:50.0];
  [(HDDemoDataPerson *)v24 setCyclingCadenceMean:v68];
  [(HDDemoDataPerson *)v24 setCyclingCadenceMeanStdDev:20.0];
  [(HDDemoDataPerson *)v24 setSpeedMeanStdDev:0.5];
  [(HDDemoDataPerson *)v24 setCyclingSpeedMean:v70];
  [(HDDemoDataPerson *)v24 setCrossCountrySkiingSpeedMean:v72];
  [(HDDemoDataPerson *)v24 setRowingSpeedMean:v74];
  [(HDDemoDataPerson *)v24 setPaddleSportsSpeedMean:v76];
  [(HDDemoDataPerson *)v24 setUnderwaterDivingWaterTemperatureMean:25.0];
  [(HDDemoDataPerson *)v24 setUnderwaterDivingWaterTemperatureStdDev:1.0];
  [(HDDemoDataPerson *)v24 setExerciseIntensityPercentage:0.8];
  [(HDDemoDataPerson *)v24 setExerciseStartTime:0.34375];
  [(HDDemoDataPerson *)v24 setExerciseStopTime:0.368055556];
  [(HDDemoDataPerson *)v24 setExerciseStartTimeStdDev:0.00833333333];
  [(HDDemoDataPerson *)v24 setExerciseStopTimeStdDev:0.00625];
  [(HDDemoDataPerson *)v24 setExerciseCooldownTime:0.00763888889];
  [(HDDemoDataPerson *)v24 setExerciseWeeklyWorkoutsMean:2.0];
  [(HDDemoDataPerson *)v24 setExerciseWeeklyWorkoutsStdDev:0.5];
  [(HDDemoDataPerson *)v24 setExercisePostDietWeeklyWorkoutsMean:3.8];
  [(HDDemoDataPerson *)v24 setExercisePostDietWeeklyWorkoutsStdDev:0.5];
  [(HDDemoDataPerson *)v24 setFlightsClimbedDailyMean:7.0];
  [(HDDemoDataPerson *)v24 setFlightsClimbedStdDev:3.0];
  [(HDDemoDataPerson *)v24 setFlightsClimbedSampleTime:0.0131944444];
  [(HDDemoDataPerson *)v24 setFlightsClimbedSampleFrequency:0.0104166667];
  [(HDDemoDataPerson *)v24 setFlightsClimbedSampleFrequencyStdDev:0.000694444444];
  [(HDDemoDataPerson *)v24 setRehabLogarithmicConstant:2.0];
  [(HDDemoDataPerson *)v24 setWalkingSpeedMean:1.5];
  [(HDDemoDataPerson *)v24 setWalkingSpeedStdDev:0.1];
  [(HDDemoDataPerson *)v24 setWalkingSpeedSampleFrequency:0.0416666667];
  [(HDDemoDataPerson *)v24 setWalkingSpeedSampleFrequencyStdDev:0.0104166667];
  [(HDDemoDataPerson *)v24 setStepLengthMean:v19 * 2.53999996 / 100.0];
  [(HDDemoDataPerson *)v24 setStepLengthStdDev:0.02];
  [(HDDemoDataPerson *)v24 setStepLengthSampleFrequency:0.0416666667];
  [(HDDemoDataPerson *)v24 setStepLengthSampleFrequencyStdDev:0.0104166667];
  [(HDDemoDataPerson *)v24 setAsymmetryPercentageMean:0.03];
  [(HDDemoDataPerson *)v24 setAsymmetryPercentageStdDev:0.01];
  [(HDDemoDataPerson *)v24 setAsymmetryPercentageSampleFrequency:0.0416666667];
  [(HDDemoDataPerson *)v24 setAsymmetryPercentageSampleFrequencyStdDev:0.0104166667];
  [(HDDemoDataPerson *)v24 setDoubleSupportPercentageMean:0.2];
  [(HDDemoDataPerson *)v24 setDoubleSupportPercentageStdDev:0.03];
  [(HDDemoDataPerson *)v24 setDoubleSupportPercentageSampleFrequency:0.0416666667];
  [(HDDemoDataPerson *)v24 setDoubleSupportPercentageSampleFrequencyStdDev:0.0104166667];
  [(HDDemoDataPerson *)v24 setSixMinuteWalkTestDistanceMean:dbl_22916AB00[v4]];
  [(HDDemoDataPerson *)v24 setSixMinuteWalkTestDistanceStdDev:12.0];
  [(HDDemoDataPerson *)v24 setSixMinuteWalkTestDistanceSampleFrequency:7.0];
  [(HDDemoDataPerson *)v24 setSixMinuteWalkTestDistanceSampleFrequencyStdDev:0.0416666667];
  [(HDDemoDataPerson *)v24 setStairAscentSpeedMean:0.2936];
  [(HDDemoDataPerson *)v24 setStairAscentSpeedStdDev:0.1134];
  [(HDDemoDataPerson *)v24 setStairAscentSpeedSampleFrequency:0.0416666667];
  [(HDDemoDataPerson *)v24 setStairAscentSpeedSampleFrequencyStdDev:0.0208333333];
  [(HDDemoDataPerson *)v24 setStairDescentSpeedMean:0.3109];
  [(HDDemoDataPerson *)v24 setStairDescentSpeedStdDev:0.1006];
  [(HDDemoDataPerson *)v24 setStairDescentSpeedSampleFrequency:0.0416666667];
  [(HDDemoDataPerson *)v24 setStairDescentSpeedSampleFrequencyStdDev:0.0208333333];
  [(HDDemoDataPerson *)v24 setWalkingSteadinessMean:0.85];
  [(HDDemoDataPerson *)v24 setWalkingSteadinessStdDev:0.05];
  [(HDDemoDataPerson *)v24 setWalkingSteadinessSampleFrequency:7.0];
  [(HDDemoDataPerson *)v24 setWalkingSteadinessSampleFrequencyStdDev:0.0104166667];
  [(HDDemoDataPerson *)v24 setMoveGoal:800.0];
  [(HDDemoDataPerson *)v24 setExerciseGoal:*MEMORY[0x277CCDF08]];
  [(HDDemoDataPerson *)v24 setStandGoal:*MEMORY[0x277CCDF00]];
  v93[0] = &unk_283CB0E10;
  v77 = +[HDDemoDataWorkoutPrototype HIITPrototype];
  v91[0] = v77;
  v75 = +[HDDemoDataWorkoutPrototype functionalStrengthTrainingPrototype];
  v91[1] = v75;
  v73 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:2];
  v71 = [HDDemoDataWorkoutPrototype pickRandomWorkoutFrom:v73];
  v92 = v71;
  v69 = [MEMORY[0x277CBEA60] arrayWithObjects:&v92 count:1];
  v94[0] = v69;
  v93[1] = &unk_283CB0E28;
  v67 = +[HDDemoDataWorkoutPrototype dancePrototype];
  v89[0] = v67;
  v65 = +[HDDemoDataWorkoutPrototype yogaPrototype];
  v89[1] = v65;
  v63 = +[HDDemoDataWorkoutPrototype rowingPrototype];
  v89[2] = v63;
  v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:3];
  v61 = [HDDemoDataWorkoutPrototype pickRandomWorkoutFrom:v62];
  v90 = v61;
  v60 = [MEMORY[0x277CBEA60] arrayWithObjects:&v90 count:1];
  v94[1] = v60;
  v93[2] = &unk_283CB0E40;
  v59 = +[HDDemoDataWorkoutPrototype swimmingPrototype];
  v87[0] = v59;
  v58 = +[HDDemoDataWorkoutPrototype coolDownPrototype];
  v87[1] = v58;
  v57 = +[HDDemoDataWorkoutPrototype skatingSportsPrototype];
  v87[2] = v57;
  v56 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:3];
  v55 = [HDDemoDataWorkoutPrototype pickRandomWorkoutFrom:v56];
  v88 = v55;
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v88 count:1];
  v94[2] = v54;
  v93[3] = &unk_283CB0E58;
  v53 = +[HDDemoDataWorkoutPrototype runningPrototype];
  v85[0] = v53;
  v52 = +[HDDemoDataWorkoutPrototype walkingPrototype];
  v85[1] = v52;
  v51 = +[HDDemoDataWorkoutPrototype soccerPrototype];
  v85[2] = v51;
  v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:3];
  v49 = [HDDemoDataWorkoutPrototype pickRandomWorkoutFrom:v50];
  v86 = v49;
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:1];
  v94[3] = v48;
  v93[4] = &unk_283CB0E70;
  v47 = +[HDDemoDataWorkoutPrototype ellipticalPrototype];
  v83[0] = v47;
  v46 = +[HDDemoDataWorkoutPrototype coreTrainingPrototype];
  v83[1] = v46;
  v45 = +[HDDemoDataWorkoutPrototype golfPrototype];
  v83[2] = v45;
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:3];
  v43 = [HDDemoDataWorkoutPrototype pickRandomWorkoutFrom:v44];
  v84 = v43;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v84 count:1];
  v94[4] = v42;
  v93[5] = &unk_283CB0E88;
  v41 = +[HDDemoDataWorkoutPrototype cyclingPrototype];
  v81[0] = v41;
  v40 = +[HDDemoDataWorkoutPrototype paddleSportsPrototype];
  v81[1] = v40;
  v39 = +[HDDemoDataWorkoutPrototype downhillSnowSportsPrototype];
  v81[2] = v39;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:3];
  v25 = [HDDemoDataWorkoutPrototype pickRandomWorkoutFrom:v38];
  v82 = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:1];
  v94[5] = v26;
  v93[6] = &unk_283CB0EA0;
  v27 = +[HDDemoDataWorkoutPrototype hikingPrototype];
  v79[0] = v27;
  v28 = +[HDDemoDataWorkoutPrototype underwaterDivingPrototype];
  v79[1] = v28;
  v29 = +[HDDemoDataWorkoutPrototype crossCountrySkiingPrototype];
  v79[2] = v29;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:3];
  v31 = [HDDemoDataWorkoutPrototype pickRandomWorkoutFrom:v30];
  v80 = v31;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v80 count:1];
  v94[6] = v32;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:v93 count:7];
  [(HDDemoDataPerson *)v24 setWorkoutPrototypesByCalendarDay:v33];

  [(HDDemoDataPerson *)v24 setMealTimeSampleNoiseStdDev:0.03125];
  [(HDDemoDataPerson *)v24 setBreakfastTimeSampleNoiseStdDev:0.00625];
  [(HDDemoDataPerson *)v24 setBreakfastTime:0.302083333];
  [(HDDemoDataPerson *)v24 setLunchTime:0.5];
  [(HDDemoDataPerson *)v24 setSnackTime:0.625];
  [(HDDemoDataPerson *)v24 setDinnerTime:0.791666667];
  [(HDDemoDataPerson *)v24 setPreDietIntakeMultiplier:1.07];
  [(HDDemoDataPerson *)v24 setNumCupsOfCoffeeDailyMean:1.0];
  [(HDDemoDataPerson *)v24 setNumCupsOfCoffeeStdDev:0.5];
  [(HDDemoDataPerson *)v24 setWaterConsumedSampleFrequency:0.01875];
  [(HDDemoDataPerson *)v24 setWaterConsumedDailyMean:1000.0];
  [(HDDemoDataPerson *)v24 setWaterConsumedStdDev:125.0];
  [(HDDemoDataPerson *)v24 setWaterConsumedIntervalMean:300.0];
  [(HDDemoDataPerson *)v24 setWaterConsumedIntervalStdDev:225.0];
  [(HDDemoDataPerson *)v24 setWaterConsumedSampleTime:0.0416666667];
  v34 = objc_alloc_init(HDDemoDataSleepParameters);
  [(HDDemoDataSleepParameters *)v34 setBedtime:0.951388889];
  [(HDDemoDataSleepParameters *)v34 setWakeUpTime:0.25];
  [(HDDemoDataSleepParameters *)v34 setBedtimeGoalHour:23];
  [(HDDemoDataSleepParameters *)v34 setWakeUpTimeGoalHour:6];
  [(HDDemoDataPerson *)v24 setWeekdaySleepParameters:v34];
  v35 = objc_alloc_init(HDDemoDataSleepParameters);
  [(HDDemoDataSleepParameters *)v35 setBedtime:0.0];
  [(HDDemoDataSleepParameters *)v35 setWakeUpTime:0.298611111];
  [(HDDemoDataSleepParameters *)v35 setBedtimeGoalHour:0];
  [(HDDemoDataSleepParameters *)v35 setWakeUpTimeGoalHour:7];
  [(HDDemoDataPerson *)v24 setWeekendSleepParameters:v35];
  [(HDDemoDataPerson *)v24 setWakeUpTimeNoiseStdDev:0.0277777778];
  [(HDDemoDataPerson *)v24 setBedtimeNoiseStdDev:0.0201388889];
  [(HDDemoDataPerson *)v24 setInBedTimeStdDev:0.0107638889];
  [(HDDemoDataPerson *)v24 setFallSampleFrequency:0.0416666667];
  [(HDDemoDataPerson *)v24 setFallsDailyMean:0.2];
  [(HDDemoDataPerson *)v24 setFallsDailyStdDev:0.15];
  [(HDDemoDataPerson *)v24 setUseContinuousGlucoseMonitoring:1];
  [(HDDemoDataPerson *)v24 setContinuousGlucoseMonitoringSampleFrequency:0.00347222222];
  [(HDDemoDataPerson *)v24 setNumDailyFingerSticksAdherence:0.9];
  [(HDDemoDataPerson *)v24 setInsulinSensitivity:1.0];
  [(HDDemoDataPerson *)v24 setInsulinProduction:1.0];
  [(HDDemoDataPerson *)v24 setInsulinAdherence:1.0];
  [(HDDemoDataPerson *)v24 setInsulinTherapy:0];
  [(HDDemoDataPerson *)v24 setSpirometrySampleFrequency:170.0];
  [(HDDemoDataPerson *)v24 setSpirometrySampleTime:80.6];
  [(HDDemoDataPerson *)v24 setAsthmaSeverity:2];
  [(HDDemoDataPerson *)v24 setMindfulSessionFrequency:0.395833333];
  [(HDDemoDataPerson *)v24 setMindfulSessionMean:2];
  [(HDDemoDataPerson *)v24 setMindfulSessionStdDev:1];
  [(HDDemoDataPerson *)v24 setNutritionTrackingType:1];
  [(HDDemoDataPerson *)v24 setResultsTrackingType:1];
  [(HDDemoDataPerson *)v24 updateMedicalIDData];

  v36 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)fullName
{
  v3 = objc_alloc_init(MEMORY[0x277CCAC00]);
  v4 = [(HDDemoDataPerson *)self firstName];
  [v3 setGivenName:v4];

  v5 = [(HDDemoDataPerson *)self lastName];
  [v3 setFamilyName:v5];

  v6 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:v3 style:2 options:0];

  return v6;
}

- (void)applyProfileType:(int64_t)a3
{
  [(HDDemoDataPerson *)self setProfileType:?];
  switch(a3)
  {
    case 4:
      v14 = [MEMORY[0x277CBEA80] hk_gregorianCalendarWithUTCTimeZone];
      v12 = objc_alloc_init(MEMORY[0x277CBEAB8]);
      [v12 setMonth:2];
      [v12 setDay:10];
      [v12 setYear:1962];
      [v12 setEra:1];
      [v12 setCalendar:v14];
      [(HDDemoDataPerson *)self setBirthDateComponents:v12];
      v13 = [v14 dateFromComponents:v12];
      [(HDDemoDataPerson *)self setBirthDate:v13];

      break;
    case 3:
      [(HDDemoDataPerson *)self rehabLogarithmicConstant];
      v6 = 2.0 - log(v5);
      [(HDDemoDataPerson *)self asymmetryPercentageMean];
      [(HDDemoDataPerson *)self setAsymmetryPercentageMean:(v7 * v6)];
      [(HDDemoDataPerson *)self rehabLogarithmicConstant];
      v9 = 2.0 - log(v8);
      [(HDDemoDataPerson *)self doubleSupportPercentageMean];
      v11 = v10 * v9;

      [(HDDemoDataPerson *)self setDoubleSupportPercentageMean:v11];
      break;
    case 2:
      [(HDDemoDataPerson *)self setInsulinProduction:0.0];
      [(HDDemoDataPerson *)self setInsulinAdherence:1.0];
      [(HDDemoDataPerson *)self setInsulinTherapy:1];

      [(HDDemoDataPerson *)self setUseContinuousGlucoseMonitoring:1];
      break;
  }
}

- (void)updateMedicalIDData
{
  v32[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCD7E8];
  v4 = [MEMORY[0x277CCDAB0] meterUnitWithMetricPrefix:5];
  [(HDDemoDataPerson *)self heightTargetInCm];
  v5 = [v3 quantityWithUnit:v4 doubleValue:?];

  v6 = MEMORY[0x277CCD7E8];
  v7 = [MEMORY[0x277CCDAB0] gramUnitWithMetricPrefix:9];
  [(HDDemoDataPerson *)self weightTargetInKg];
  v8 = [v6 quantityWithUnit:v7 doubleValue:?];

  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if ([(HDDemoDataPerson *)self biologicalSex]== 2)
  {
    v10 = @"DaveKnox";
  }

  else
  {
    v10 = @"LaniMartinez";
  }

  v11 = [v9 URLForResource:v10 withExtension:@"png"];
  v12 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v11];
  v13 = [(HDDemoDataPerson *)self medicalIDData];
  [v13 setPictureData:v12];

  v14 = objc_alloc_init(MEMORY[0x277CCDDA0]);
  if ([(HDDemoDataPerson *)self biologicalSex]== 2)
  {
    v15 = @"Lani Martinez";
  }

  else
  {
    v15 = @"Dave Knox";
  }

  [v14 setName:v15];
  [v14 setPhoneNumber:@"(555) 555-0100"];
  [v14 setRelationship:@"spouse"];
  v32[0] = v14;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
  v17 = [(HDDemoDataPerson *)self medicalIDData];
  [v17 setEmergencyContacts:v16];

  v18 = [(HDDemoDataPerson *)self fullName];
  v19 = [(HDDemoDataPerson *)self medicalIDData];
  [v19 setName:v18];

  v20 = [(HDDemoDataPerson *)self birthDateComponents];
  v21 = [(HDDemoDataPerson *)self medicalIDData];
  [v21 setGregorianBirthday:v20];

  v22 = [(HDDemoDataPerson *)self bloodType];
  v23 = [(HDDemoDataPerson *)self medicalIDData];
  [v23 setBloodType:v22];

  v24 = [(HDDemoDataPerson *)self medicalIDData];
  [v24 setMedicalConditions:@"Hypertension"];

  v25 = [(HDDemoDataPerson *)self medicalIDData];
  [v25 setAllergyInfo:@"Peanuts"];

  v26 = [(HDDemoDataPerson *)self medicalIDData];
  [v26 setMedicationInfo:@"Lisinopril (10mg by mouth once a day)"];

  v27 = [(HDDemoDataPerson *)self medicalIDData];
  [v27 setHeight:v5];

  v28 = [(HDDemoDataPerson *)self medicalIDData];
  [v28 setWeight:v8];

  if ([(HDDemoDataPerson *)self biologicalSex]== 2)
  {
    v29 = @"en";
  }

  else
  {
    v29 = @"es";
  }

  v30 = [(HDDemoDataPerson *)self medicalIDData];
  [v30 setPrimaryLanguageCode:v29];

  v31 = *MEMORY[0x277D85DE8];
}

@end