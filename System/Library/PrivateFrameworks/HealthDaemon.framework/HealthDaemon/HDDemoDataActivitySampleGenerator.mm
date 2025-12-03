@interface HDDemoDataActivitySampleGenerator
- (BOOL)_isDemoPersonCoolingDown:(id)down atTime:(double)time;
- (BOOL)_isDemoPersonSedentary:(id)sedentary atTime:(double)time;
- (BOOL)_isDemoPersonWalking:(id)walking atTime:(double)time samplePeriod:(double)period;
- (HDDemoDataActivitySampleGenerator)init;
- (HDDemoDataActivitySampleGenerator)initWithCoder:(id)coder;
- (double)_computeExerciseTimeFromCurrentTime:(double)time mean:(double)mean stdDev:(double)dev;
- (double)_computePercentCooledForDemoPerson:(id)person atTime:(double)time;
- (double)_generateWorkoutDataSamplesForDemoPerson:(void *)person atTime:(void *)time sampleDate:(void *)date addFromWatch:(void *)watch objectCollection:(double)collection nextSampleTime:(double)sampleTime typeIdentifier:(double)identifier unit:(double)self0 sampleMean:(double)self1 sampleMeanStdDev:sampleFrequency:workoutState:;
- (double)flightsClimbedForDemoPerson:(double)person atTime:;
- (id)_computeDistanceWithDistanceRate:(double)rate DemoPerson:;
- (id)_computeFlightsClimbedForDemoPerson:(id)person atTime:(double)time;
- (id)_computeWalkingRunningDistanceWithStepCount:(void *)count demoPerson:;
- (id)_sumQuantity:(void *)quantity withQuantity:;
- (void)_generateCyclingFTPSamplesForDemoPerson:(void *)person sampleDate:(void *)date objectCollection:;
- (void)_generateEllipticalWorkoutDataWithObjectCollection:(void *)collection demoPerson:;
- (void)_generateHIITWorkoutDataWithObjectCollection:(void *)collection demoPerson:;
- (void)_generateRunningWorkoutDataWithObjectCollection:(void *)collection demoPerson:(void *)person workoutState:(void *)state;
- (void)_generateSwimmingSegmentDataWithStartDate:(uint64_t)date segmentTime:(uint64_t)time segmentDistance:(void *)distance numLaps:(void *)laps strokeStyle:(double)style objectCollection:(double)collection demoPerson:;
- (void)_generateSwimmingWorkoutDataWithObjectCollection:(void *)collection demoPerson:;
- (void)_generateUnderwaterDivingWorkoutDataWithObjectCollection:(void *)collection demoPerson:;
- (void)_generateWorkoutDataWithHeartRates:(void *)rates recoveryHeartRates:(void *)heartRates objectCollection:demoPerson:workoutState:;
- (void)_generateWorkoutEffortWithObjectCollection:(void *)collection forWorkout:(void *)workout dataType:;
- (void)_updateWorkoutStateWithActiveEnergyBurned:(uint64_t)burned distanceWalking:(void *)walking distanceCycling:(void *)cycling distanceCrossCountrySkiing:(void *)skiing distanceRowing:(void *)rowing distanceSkatingSports:(void *)sports distancePaddleSports:(void *)paddleSports distanceDownhillSnowSports:(void *)snowSports currentTime:(void *)time date:(void *)burned0 objectCollection:(void *)burned1 demoPerson:(void *)burned2;
- (void)encodeWithCoder:(id)coder;
- (void)generateFirstRunObjectsForDemoPerson:(id)person firstDate:(id)date objectCollection:(id)collection;
- (void)generateObjectsForDemoPerson:(id)person fromTime:(double)time toTime:(double)toTime currentDate:(id)date objectCollection:(id)collection;
- (void)setProfile:(id)profile provenance:(id)provenance;
- (void)setupWithDemoDataGenerator:(id)generator;
@end

@implementation HDDemoDataActivitySampleGenerator

- (HDDemoDataActivitySampleGenerator)init
{
  v7.receiver = self;
  v7.super_class = HDDemoDataActivitySampleGenerator;
  v2 = [(HDDemoDataBaseSampleGenerator *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_nextActiveCaloriesSampleTime = 0.0;
    v2->_nextPhysicalEffortSampleTime = 0.0;
    v2->_nextAppleStandHourSampleTime = 0.0;
    v2->_nextRestingCaloriesSampleTime = 0.0;
    v2->_nextFallSampleTime = 0.0;
    v2->_nextFlightsClimbedSampleTime = 0.0;
    v2->_nextStepsSampleTime = 0.0;
    v2->_nextExerciseMinuteTime = 0.0;
    v2->_nextHeartRateRecoveryStartTime = 0.0;
    v2->_nextHeartRateRecoveryStopTime = 0.0;
    v2->_nextRunningPowerSampleTime = 0.0;
    v2->_nextRunningStrideLengthSampleTime = 0.0;
    v2->_nextRunningVerticalOscillationSampleTime = 0.0;
    v2->_nextRunningGroundContactTimeSampleTime = 0.0;
    v2->_nextCyclingPowerSampleTime = 0.0;
    v2->_nextCyclingFTPSampleTime = 0.0;
    v2->_nextCyclingCadenceSampleTime = 0.0;
    v2->_nextCyclingSpeedSampleTime = 0.0;
    v2->_nextWaterTemperatureSampleTime = 0.0;
    v2->_nextCrossCountrySkiingSpeedSampleTime = 0.0;
    v2->_nextRowingSpeedSampleTime = 0.0;
    v2->_nextPaddleSportsSpeedSampleTime = 0.0;
    v2->_nextUVIndexSampleTime = 0.0;
    v2->_lastUVIndexPeakTime = 0.0;
    v2->_lastUVExposure = 0.0;
    v2->_lastUVIndexPeak = 0.0;
    currentWorkoutConfiguration = v2->_currentWorkoutConfiguration;
    v2->_currentWorkoutConfiguration = 0;

    workoutState = v3->_workoutState;
    v3->_workoutState = 0;
  }

  return v3;
}

- (HDDemoDataActivitySampleGenerator)initWithCoder:(id)coder
{
  coderCopy = coder;
  v41.receiver = self;
  v41.super_class = HDDemoDataActivitySampleGenerator;
  v5 = [(HDDemoDataBaseSampleGenerator *)&v41 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextActiveCaloriesSampleTimeKey"];
    v5->_nextActiveCaloriesSampleTime = v6;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextPhysicalEffortSampleTimeKey"];
    v5->_nextPhysicalEffortSampleTime = v7;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextAppleStandHourSampleTimeKey"];
    v5->_nextAppleStandHourSampleTime = v8;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextRestingCaloriesSampleTimeKey"];
    v5->_nextRestingCaloriesSampleTime = v9;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextFallSampleTimeKey"];
    v5->_nextFallSampleTime = v10;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextFlightSampleTimeKey"];
    v5->_nextFlightsClimbedSampleTime = v11;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextStepsSampleTimeKey"];
    v5->_nextStepsSampleTime = v12;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextExerciseMinuteSampleTimeKey"];
    v5->_nextExerciseMinuteTime = v13;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextRunningPowerSampleTimeKey"];
    v5->_nextRunningPowerSampleTime = v14;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextRunningStrideLengthSampleTimeKey"];
    v5->_nextRunningStrideLengthSampleTime = v15;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextRunningVerticalOscillationSampleTimeKey"];
    v5->_nextRunningVerticalOscillationSampleTime = v16;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextRunningGroundContactTimeSampleTimeKey"];
    v5->_nextRunningGroundContactTimeSampleTime = v17;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextCyclingPowerSampleTimeKey"];
    v5->_nextCyclingPowerSampleTime = v18;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextCyclingFTPSampleTimeKey"];
    v5->_nextCyclingFTPSampleTime = v19;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextCyclingCadenceSampleTimeKey"];
    v5->_nextCyclingCadenceSampleTime = v20;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextCyclingSpeedSampleTimeKey"];
    v5->_nextCyclingSpeedSampleTime = v21;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextWaterTemperatureSampleTimeKey"];
    v5->_nextWaterTemperatureSampleTime = v22;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextCrossCountrySkiingSpeedSampleTimeKey"];
    v5->_nextCrossCountrySkiingSpeedSampleTime = v23;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextRowingSpeedSampleTimeKey"];
    v5->_nextRowingSpeedSampleTime = v24;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextPaddleSportsSpeedSampleTimeKey"];
    v5->_nextPaddleSportsSpeedSampleTime = v25;
    v26 = [coderCopy containsValueForKey:@"HDDemoDataActivitySampleGeneratorNextHeartRateRecoveryStartTimeKey"];
    v27 = 0.0;
    v28 = 0.0;
    if (v26)
    {
      [coderCopy decodeDoubleForKey:{@"HDDemoDataActivitySampleGeneratorNextHeartRateRecoveryStartTimeKey", 0.0}];
    }

    v5->_nextHeartRateRecoveryStartTime = v28;
    if ([coderCopy containsValueForKey:@"HDDemoDataActivitySampleGeneratorNextHeartRateRecoveryStopTimeKey"])
    {
      [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextHeartRateRecoveryStopTimeKey"];
      v27 = v29;
    }

    v5->_nextHeartRateRecoveryStopTime = v27;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorNextUVIndexSampleTimeKey"];
    v5->_nextUVIndexSampleTime = v30;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorLastUVIndexPeakTimeKey"];
    v5->_lastUVIndexPeakTime = v31;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorLastUVExposureKey"];
    v5->_lastUVExposure = v32;
    [coderCopy decodeDoubleForKey:@"HDDemoDataActivitySampleGeneratorLastUVIndexPeakKey"];
    v5->_lastUVIndexPeak = v33;
    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HDDemoDataActivitySampleGeneratorLastActivityCache"];
    lastActivityCache = v5->_lastActivityCache;
    v5->_lastActivityCache = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HDDemoDataActivitySampleGeneratorCurrentWorkoutConfiguration"];
    currentWorkoutConfiguration = v5->_currentWorkoutConfiguration;
    v5->_currentWorkoutConfiguration = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HDDemoDataActivitySampleGeneratorWorkoutState"];
    workoutState = v5->_workoutState;
    v5->_workoutState = v38;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HDDemoDataActivitySampleGenerator;
  coderCopy = coder;
  [(HDDemoDataBaseSampleGenerator *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextActiveCaloriesSampleTimeKey" forKey:{self->_nextActiveCaloriesSampleTime, v5.receiver, v5.super_class}];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextPhysicalEffortSampleTimeKey" forKey:self->_nextPhysicalEffortSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextAppleStandHourSampleTimeKey" forKey:self->_nextAppleStandHourSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextRestingCaloriesSampleTimeKey" forKey:self->_nextRestingCaloriesSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextFallSampleTimeKey" forKey:self->_nextFallSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextFlightSampleTimeKey" forKey:self->_nextFlightsClimbedSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextStepsSampleTimeKey" forKey:self->_nextStepsSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextExerciseMinuteSampleTimeKey" forKey:self->_nextExerciseMinuteTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextHeartRateRecoveryStartTimeKey" forKey:self->_nextHeartRateRecoveryStartTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextHeartRateRecoveryStopTimeKey" forKey:self->_nextHeartRateRecoveryStopTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextRunningPowerSampleTimeKey" forKey:self->_nextRunningPowerSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextRunningStrideLengthSampleTimeKey" forKey:self->_nextRunningStrideLengthSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextRunningVerticalOscillationSampleTimeKey" forKey:self->_nextRunningVerticalOscillationSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextRunningGroundContactTimeSampleTimeKey" forKey:self->_nextRunningGroundContactTimeSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextCyclingCadenceSampleTimeKey" forKey:self->_nextCyclingCadenceSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextCyclingSpeedSampleTimeKey" forKey:self->_nextCyclingSpeedSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextCyclingPowerSampleTimeKey" forKey:self->_nextCyclingPowerSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextCyclingFTPSampleTimeKey" forKey:self->_nextCyclingFTPSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextWaterTemperatureSampleTimeKey" forKey:self->_nextWaterTemperatureSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextCrossCountrySkiingSpeedSampleTimeKey" forKey:self->_nextCrossCountrySkiingSpeedSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextRowingSpeedSampleTimeKey" forKey:self->_nextRowingSpeedSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextPaddleSportsSpeedSampleTimeKey" forKey:self->_nextPaddleSportsSpeedSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorNextUVIndexSampleTimeKey" forKey:self->_nextUVIndexSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorLastUVIndexPeakTimeKey" forKey:self->_lastUVIndexPeakTime];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorLastUVExposureKey" forKey:self->_lastUVExposure];
  [coderCopy encodeDouble:@"HDDemoDataActivitySampleGeneratorLastUVIndexPeakKey" forKey:self->_lastUVIndexPeak];
  [coderCopy encodeObject:self->_lastActivityCache forKey:@"HDDemoDataActivitySampleGeneratorLastActivityCache"];
  [coderCopy encodeObject:self->_currentWorkoutConfiguration forKey:@"HDDemoDataActivitySampleGeneratorCurrentWorkoutConfiguration"];
  [coderCopy encodeObject:self->_workoutState forKey:@"HDDemoDataActivitySampleGeneratorWorkoutState"];
}

- (void)setProfile:(id)profile provenance:(id)provenance
{
  provenanceCopy = provenance;
  v8.receiver = self;
  v8.super_class = HDDemoDataActivitySampleGenerator;
  [(HDDemoDataBaseSampleGenerator *)&v8 setProfile:profile];
  provenance = self->_provenance;
  self->_provenance = provenanceCopy;
}

- (void)setupWithDemoDataGenerator:(id)generator
{
  generatorCopy = generator;
  v21.receiver = self;
  v21.super_class = HDDemoDataActivitySampleGenerator;
  [(HDDemoDataBaseSampleGenerator *)&v21 setupWithDemoDataGenerator:generatorCopy];
  if (![(HDDemoDataBaseSampleGenerator *)self createdFromNSKeyedUnarchiver])
  {
    demoPerson = [generatorCopy demoPerson];
    [demoPerson activeCaloriesSampleFrequency];
    self->_nextActiveCaloriesSampleTime = v6;

    demoPerson2 = [generatorCopy demoPerson];
    [demoPerson2 sedentarySampleFrequency];
    self->_nextAppleStandHourSampleTime = v8;

    demoPerson3 = [generatorCopy demoPerson];
    [demoPerson3 restingCaloriesSampleFrequency];
    self->_nextRestingCaloriesSampleTime = v10;

    demoPerson4 = [generatorCopy demoPerson];
    [demoPerson4 timeIncrementDuringExercise];
    self->_nextPhysicalEffortSampleTime = v12;

    demoPerson5 = [generatorCopy demoPerson];
    [demoPerson5 fallSampleFrequency];
    self->_nextFallSampleTime = v14;

    demoPerson6 = [generatorCopy demoPerson];
    [demoPerson6 flightsClimbedSampleTime];
    self->_nextFlightsClimbedSampleTime = v16;

    demoPerson7 = [generatorCopy demoPerson];
    [demoPerson7 uvIndexSampleFrequency];
    self->_nextUVIndexSampleTime = v18;

    demoPerson8 = [generatorCopy demoPerson];
    [demoPerson8 exerciseTimeSampleFrequency];
    self->_nextExerciseMinuteTime = v20;
  }
}

- (void)generateFirstRunObjectsForDemoPerson:(id)person firstDate:(id)date objectCollection:(id)collection
{
  v5.receiver = self;
  v5.super_class = HDDemoDataActivitySampleGenerator;
  [(HDDemoDataBaseSampleGenerator *)&v5 generateFirstRunObjectsForDemoPerson:person firstDate:date objectCollection:collection];
}

- (void)generateObjectsForDemoPerson:(id)person fromTime:(double)time toTime:(double)toTime currentDate:(id)date objectCollection:(id)collection
{
  personCopy = person;
  dateCopy = date;
  collectionCopy = collection;
  v638.receiver = self;
  v638.super_class = HDDemoDataActivitySampleGenerator;
  [(HDDemoDataBaseSampleGenerator *)&v638 generateObjectsForDemoPerson:personCopy fromTime:dateCopy toTime:collectionCopy currentDate:toTime objectCollection:toTime];
  countUnit = [MEMORY[0x277CCDAB0] countUnit];
  kilocalorieUnit = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  v16 = personCopy;
  v17 = v16;
  v635 = collectionCopy;
  v636 = dateCopy;
  v620 = kilocalorieUnit;
  selfCopy = self;
  v625 = countUnit;
  if (!self)
  {

    v213 = v17;
    v18 = 0;
    goto LABEL_11;
  }

  if (self->_nextActiveCaloriesSampleTime > toTime)
  {
    goto LABEL_3;
  }

  [v16 activeCaloriesSampleFrequency];
  self->_nextActiveCaloriesSampleTime = v19 + self->_nextActiveCaloriesSampleTime;
  demoDataGenerator = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  generatorState = [demoDataGenerator generatorState];
  isExercising = [generatorState isExercising];

  demoDataGenerator2 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  v24 = demoDataGenerator2;
  if (isExercising)
  {
    generatorState2 = [demoDataGenerator2 generatorState];
    workoutConfiguration = [generatorState2 workoutConfiguration];
    [workoutConfiguration kcalRate];
    v28 = v27;

    v29 = MEMORY[0x277CCABB0];
    [v17 activeCaloriesSampleFrequency];
    v31 = v28 * v30;
    v32 = v29;
  }

  else
  {
    statisticsSampleGenerator = [demoDataGenerator2 statisticsSampleGenerator];
    [statisticsSampleGenerator randomDoubleFromGenerator];
    v68 = v67;

    if (v68 < 0.12)
    {
      goto LABEL_3;
    }

    demoDataGenerator3 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    sleepSampleGenerator = [demoDataGenerator3 sleepSampleGenerator];
    v71 = [sleepSampleGenerator isDemoPersonAwake:v17 atTime:toTime];

    if (!v71)
    {
      goto LABEL_3;
    }

    [v17 activeCaloriesSampleFrequency];
    if ([(HDDemoDataActivitySampleGenerator *)self _isDemoPersonWalking:v17 atTime:toTime samplePeriod:v72])
    {
      demoDataGenerator5 = [(HDDemoDataActivitySampleGenerator *)self flightsClimbedForDemoPerson:v17 atTime:toTime];
      [demoDataGenerator5 doubleValue];
      v75 = v74;
      [v17 activeCaloriesSampleFrequency];
      v77 = v76 / 0.000694444444;
      demoDataGenerator4 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      statisticsSampleGenerator2 = [demoDataGenerator4 statisticsSampleGenerator];
      [v17 activeCaloriesSampleFrequency];
      v81 = v80 / 0.000694444444;
      if (v75 == 0.0)
      {
        [statisticsSampleGenerator2 computeNoiseFromTime:toTime stdDev:v81 * 100.0];
        v83 = v82 + v77 * 864.0;
      }

      else
      {
        [statisticsSampleGenerator2 computeNoiseFromTime:toTime stdDev:v81 * 120.0];
        v210 = v209 + v77 * 1152.0;
        [demoDataGenerator5 doubleValue];
        v83 = v210 + v211;
      }
    }

    else
    {
      [v17 activeCaloriesSampleFrequency];
      v195 = v194 / 0.000694444444;
      demoDataGenerator5 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      demoDataGenerator4 = [demoDataGenerator5 statisticsSampleGenerator];
      [v17 activeCaloriesSampleFrequency];
      [demoDataGenerator4 computeNoiseFromTime:toTime stdDev:v196 / 0.000694444444 * 45.0];
      v83 = v197 + v195 * 244.8;
    }

    if (v83 <= 0.00000011920929)
    {
LABEL_3:
      v18 = 0;
      goto LABEL_7;
    }

    v212 = (arc4random_uniform(9u) + 1);
    v32 = MEMORY[0x277CCABB0];
    v31 = v83 / (v212 + 6.0);
  }

  v18 = [v32 numberWithDouble:v31];
LABEL_7:

  v33 = v17;
  if (self->_nextExerciseMinuteTime > toTime)
  {
LABEL_11:

    v40 = 0;
    v621 = 1;
    goto LABEL_12;
  }

  v34 = v33;
  v627 = v18;
  v629 = v17;
  [v33 exerciseTimeSampleFrequency];
  self->_nextExerciseMinuteTime = v35 + toTime;
  demoDataGenerator6 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  sleepSampleGenerator2 = [demoDataGenerator6 sleepSampleGenerator];
  selfCopy2 = self;
  v39 = [sleepSampleGenerator2 isDemoPersonSleeping:v34 atTime:toTime];

  if (v39)
  {
    self = selfCopy2;
    v17 = v629;
LABEL_10:
    v18 = v627;
    goto LABEL_11;
  }

  demoDataGenerator7 = [(HDDemoDataBaseSampleGenerator *)selfCopy2 demoDataGenerator];
  generatorState3 = [demoDataGenerator7 generatorState];
  isExercising2 = [generatorState3 isExercising];

  if (isExercising2)
  {
    [v34 timeIncrementDuringExercise];
    v87 = &unk_283CB1F80;
LABEL_54:

    goto LABEL_55;
  }

  [v34 timeIncrement];
  v147 = v146;
  [v34 activeCaloriesSampleFrequency];
  self = selfCopy2;
  v17 = v629;
  if ([(HDDemoDataActivitySampleGenerator *)selfCopy2 _isDemoPersonWalking:v34 atTime:toTime samplePeriod:v148])
  {
    v87 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:arc4random_uniform((v147 * 86400.0 / 60.0) / 8) + 1];
    if (v87)
    {
      goto LABEL_54;
    }
  }

  if (arc4random_uniform(0x64u) / 100.0 >= 0.1)
  {
    goto LABEL_10;
  }

  v87 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:arc4random_uniform(3u) + 1];

  if (!v87)
  {
    v40 = 0;
    v621 = 1;
    v18 = v627;
    goto LABEL_12;
  }

LABEL_55:
  v631 = v87;
  integerValue = [v87 integerValue];
  if (integerValue >= 1)
  {
    v150 = integerValue;
    v633 = *MEMORY[0x277CCC920];
    v151 = 60;
    do
    {
      v152 = [dateCopy dateByAddingTimeInterval:(v151 - 60)];
      v153 = [dateCopy dateByAddingTimeInterval:v151];
      v154 = MEMORY[0x277CCD800];
      v155 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:v633];
      v156 = MEMORY[0x277CCD7E8];
      minuteUnit = [MEMORY[0x277CCDAB0] minuteUnit];
      v158 = [v156 quantityWithUnit:minuteUnit doubleValue:1.0];
      v159 = [v154 quantitySampleWithType:v155 quantity:v158 startDate:v152 endDate:v153];

      dateCopy = v636;
      [v635 addObjectFromWatch:v159];

      v151 += 60;
      --v150;
    }

    while (v150);
  }

  v18 = v627;
  if (v627)
  {
    v42 = dateCopy;
    v621 = 0;
    collectionCopy = v635;
    kilocalorieUnit = v620;
    selfCopy3 = selfCopy;
    v17 = v629;
    goto LABEL_14;
  }

  v18 = [MEMORY[0x277CCABB0] numberWithDouble:arc4random_uniform(0xAu) / 100.0 + 0.5];
  v621 = 0;
  collectionCopy = v635;
  kilocalorieUnit = v620;
  self = selfCopy;
  v17 = v629;
  v40 = v87;
LABEL_12:
  selfCopy3 = self;
  if (v18)
  {
    v631 = v40;
    v42 = dateCopy;
LABEL_14:
    v43 = MEMORY[0x277CCD7E8];
    [v18 doubleValue];
    v44 = kilocalorieUnit;
    v45 = [v43 quantityWithUnit:kilocalorieUnit doubleValue:?];
    v46 = MEMORY[0x277CCD800];
    [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCC918]];
    v48 = v47 = v18;
    v49 = [v46 quantitySampleWithType:v48 quantity:v45 startDate:v42 endDate:v42];

    v619 = v49;
    [collectionCopy addObjectFromWatch:v49];

    v40 = v631;
    goto LABEL_16;
  }

  v42 = dateCopy;
  v44 = kilocalorieUnit;
  v47 = 0;
  v619 = 0;
LABEL_16:
  v50 = v17;
  v51 = v47;
  v52 = v40;
  v53 = selfCopy3;
  if (!selfCopy3)
  {
    v54 = v44;
    goto LABEL_19;
  }

  v54 = v44;
  if (selfCopy3->_nextAppleStandHourSampleTime > toTime)
  {
    selfCopy3 = 0;
LABEL_19:
    v55 = v42;
LABEL_34:
    v60 = v53;
    goto LABEL_35;
  }

  [v50 sedentarySampleFrequency];
  selfCopy3->_nextAppleStandHourSampleTime = v56 + selfCopy3->_nextAppleStandHourSampleTime;
  v55 = v42;
  if (!v621)
  {
    selfCopy3 = &unk_283CB1F98;
    goto LABEL_34;
  }

  demoDataGenerator8 = [(HDDemoDataBaseSampleGenerator *)selfCopy3 demoDataGenerator];
  sleepSampleGenerator3 = [demoDataGenerator8 sleepSampleGenerator];
  v59 = [sleepSampleGenerator3 isDemoPersonAwake:v50 atTime:toTime];

  v60 = v53;
  if (v59)
  {
    [v50 sedentarySampleFrequency];
    selfCopy3 = &unk_283CB1F98;
    if (([v53 _isDemoPersonWalking:v50 atTime:toTime samplePeriod:v61] & 1) == 0)
    {
      demoDataGenerator9 = [v53 demoDataGenerator];
      statisticsSampleGenerator3 = [demoDataGenerator9 statisticsSampleGenerator];
      [statisticsSampleGenerator3 pseudoRandomDoubleFromTime:toTime];
      v65 = v64;

      if (v65 >= 0.75)
      {
        selfCopy3 = &unk_283CB1FB0;
      }
    }
  }

  else if (v51)
  {
    selfCopy3 = &unk_283CB1FB0;
  }

  else
  {
    selfCopy3 = 0;
  }

LABEL_35:
  v622 = v52;

  v618 = v51;
  v88 = selfCopy3;
  if (v88)
  {
    demoDataGenerator10 = [v60 demoDataGenerator];
    gregorianCalendar = [demoDataGenerator10 gregorianCalendar];

    v91 = [gregorianCalendar components:62 fromDate:v55];
    v92 = [gregorianCalendar dateFromComponents:v91];
    v93 = [gregorianCalendar dateByAddingUnit:32 value:1 toDate:v92 options:0];
    v94 = [MEMORY[0x277CCD720] categoryTypeForIdentifier:*MEMORY[0x277CCB8E0]];
    v95 = [MEMORY[0x277CCD0B0] categorySampleWithType:v94 value:-[HDDemoDataActivitySampleGenerator integerValue](v88 startDate:"integerValue") endDate:{v92, v93}];
    [v635 addObjectFromWatch:v95];

    v60 = selfCopy;
  }

  v630 = v88;
  v96 = v50;
  v97 = v96;
  if (!v60)
  {

    v214 = v97;
    v215 = v214;
    v122 = 0;
    v129 = 0;
    v98 = v635;
    goto LABEL_88;
  }

  v98 = v635;
  if (v60[7] <= toTime)
  {
    [v96 restingCaloriesSampleFrequency];
    v60[7] = v101 + v60[7];
    demoDataGenerator11 = [v60 demoDataGenerator];
    bodySampleGenerator = [demoDataGenerator11 bodySampleGenerator];
    [bodySampleGenerator lastWeightInKg];
    v105 = v104;

    demoDataGenerator12 = [v60 demoDataGenerator];
    bodySampleGenerator2 = [demoDataGenerator12 bodySampleGenerator];
    [bodySampleGenerator2 lastHeightInCm];
    v109 = v108;

    demoDataGenerator13 = [v60 demoDataGenerator];
    v111 = [demoDataGenerator13 currentDateFromCurrentTime:toTime];

    birthDateComponents = [v97 birthDateComponents];
    v113 = HDDemoData_ageBetweenNSDateComponentsAndDate(birthDateComponents, v111);

    +[HDDemoDataFormula computeBasalMetabolicRateFromWeight:height:age:sex:](HDDemoDataFormula, "computeBasalMetabolicRateFromWeight:height:age:sex:", [v97 biologicalSex], v105, v109, v113);
    v115 = v114;
    [v97 restingCaloriesSampleFrequency];
    v117 = v115 * v116;
    v118 = MEMORY[0x277CCABB0];
    demoDataGenerator14 = [v60 demoDataGenerator];
    statisticsSampleGenerator4 = [demoDataGenerator14 statisticsSampleGenerator];
    [v97 restingCaloriesSampleFrequency];
    [statisticsSampleGenerator4 computeNoiseFromTime:toTime stdDev:v117 * v121];
    v122 = [v118 numberWithDouble:v117 + v122];

    if (!v122)
    {
      goto LABEL_43;
    }

    v123 = MEMORY[0x277CCD7E8];
    [v122 doubleValue];
    v100 = [v123 quantityWithUnit:v54 doubleValue:?];
    v124 = MEMORY[0x277CCD800];
    v125 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCC960]];
    v126 = [v124 quantitySampleWithType:v125 quantity:v100 startDate:v55 endDate:v55];

    [v635 addObjectFromWatch:v126];
  }

  else
  {
    v122 = 0;
    v100 = v96;
  }

LABEL_43:
  v127 = v97;
  v128 = v127;
  if (v60[8] > toTime)
  {
    v129 = 0;
    v130 = v127;
LABEL_63:

    goto LABEL_64;
  }

  [v127 timeIncrementDuringExercise];
  v132 = v131;
  demoDataGenerator15 = [v60 demoDataGenerator];
  statisticsSampleGenerator5 = [demoDataGenerator15 statisticsSampleGenerator];
  [v128 genericSampleTimeNoiseStdDev];
  [statisticsSampleGenerator5 computeNoiseFromTime:toTime stdDev:v135];
  v60[8] = v132 + v136 + v60[8];

  demoDataGenerator16 = [v60 demoDataGenerator];
  sleepSampleGenerator4 = [demoDataGenerator16 sleepSampleGenerator];
  v139 = [sleepSampleGenerator4 isDemoPersonSleeping:v128 atTime:toTime];

  if (v139)
  {
    v140 = MEMORY[0x277CCABB0];
    v141 = arc4random_uniform(0x14u) / 100.0;
  }

  else
  {
    demoDataGenerator17 = [v60 demoDataGenerator];
    generatorState4 = [demoDataGenerator17 generatorState];
    isExercising3 = [generatorState4 isExercising];

    v140 = MEMORY[0x277CCABB0];
    if (isExercising3)
    {
      v145 = arc4random_uniform(0x32u) / 100.0 + 3.0;
      v141 = v145 + arc4random_uniform(0x12u);
    }

    else
    {
      v141 = arc4random_uniform(0x1F4u) / 100.0 + 0.5;
    }
  }

  v129 = [v140 numberWithDouble:v141];

  if (v129)
  {
    v160 = MEMORY[0x277CCD7E8];
    v161 = [MEMORY[0x277CCDAB0] unitFromString:@"kcal/(kg*hr)"];
    [v129 doubleValue];
    v130 = [v160 quantityWithUnit:v161 doubleValue:?];

    v162 = MEMORY[0x277CCD800];
    v163 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCC08]];
    v164 = [v162 quantitySampleWithType:v163 quantity:v130 startDate:v55 endDate:v55];

    [v635 addObjectFromWatch:v164];
    goto LABEL_63;
  }

LABEL_64:
  v165 = v128;
  if (v60[9] <= toTime)
  {
    v166 = v165;
    [v165 fallSampleFrequency];
    v168 = v167;
    demoDataGenerator18 = [v60 demoDataGenerator];
    statisticsSampleGenerator6 = [demoDataGenerator18 statisticsSampleGenerator];
    [v166 genericSampleTimeNoiseStdDev];
    [statisticsSampleGenerator6 computeNoiseFromTime:toTime stdDev:v171];
    v60[9] = v168 + v172 + v60[9];

    demoDataGenerator19 = [v60 demoDataGenerator];
    sleepSampleGenerator5 = [demoDataGenerator19 sleepSampleGenerator];
    v175 = [sleepSampleGenerator5 isDemoPersonSleeping:v166 atTime:toTime];

    if ((v175 & 1) == 0)
    {
      [v166 fallsDailyMean];
      v177 = v176;
      demoDataGenerator20 = [v60 demoDataGenerator];
      statisticsSampleGenerator7 = [demoDataGenerator20 statisticsSampleGenerator];
      [v166 fallsDailyStdDev];
      [statisticsSampleGenerator7 computeNoiseFromTime:toTime stdDev:v180];
      v182 = v177 + v181;

      demoDataGenerator21 = [v60 demoDataGenerator];
      sleepSampleGenerator6 = [demoDataGenerator21 sleepSampleGenerator];
      [sleepSampleGenerator6 computeAwakeTimeForDemoPerson:v166 atTime:toTime];
      v186 = v185;

      [v166 fallSampleFrequency];
      v188 = v182 / (v186 / v187);
      birthDateComponents2 = [v166 birthDateComponents];
      demoDataGenerator22 = [v60 demoDataGenerator];
      v191 = [demoDataGenerator22 currentDateFromCurrentTime:toTime];
      v192 = HDDemoData_ageBetweenNSDateComponentsAndDate(birthDateComponents2, v191);

      if (v192 >= 5)
      {
        v60 = selfCopy;
        if ((v192 - 11) >= 0xB)
        {
          v193 = v192 < 0x33 ? 0.4 : ((130 - v192) / 130);
        }

        else
        {
          v193 = 0.8;
        }
      }

      else
      {
        v193 = 1.3;
        v60 = selfCopy;
      }

      v198 = v188 * v193;
      demoDataGenerator23 = [v60 demoDataGenerator];
      statisticsSampleGenerator8 = [demoDataGenerator23 statisticsSampleGenerator];
      [statisticsSampleGenerator8 pseudoRandomDoubleFromTime:toTime];
      v202 = v201;

      if (v202 < v198)
      {

        v203 = &unk_283CB1F80;
        v204 = MEMORY[0x277CCD7E8];
        v615 = &unk_283CB1F80;
        [&unk_283CB1F80 doubleValue];
        v205 = [v204 quantityWithUnit:v625 doubleValue:?];
        v206 = MEMORY[0x277CCD800];
        v207 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCBE0]];
        v208 = [v206 quantitySampleWithType:v207 quantity:v205 startDate:v55 endDate:v55];

        [v635 addObjectFromPhone:v208];
        goto LABEL_89;
      }
    }
  }

LABEL_88:

  v615 = 0;
LABEL_89:
  if ([MEMORY[0x277CC1D18] isFloorCountingAvailable])
  {
    v216 = [(HDDemoDataActivitySampleGenerator *)v60 flightsClimbedForDemoPerson:v97 atTime:toTime];
    v217 = v216;
    if (v216)
    {
      v218 = MEMORY[0x277CCD7E8];
      [v216 doubleValue];
      v219 = [v218 quantityWithUnit:v625 doubleValue:?];
      v220 = MEMORY[0x277CCD800];
      v221 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB70]];
      v632 = v219;
      v222 = [v220 quantitySampleWithType:v221 quantity:v219 startDate:v55 endDate:v55];

      [v98 addObjectFromWatch:v222];
    }

    else
    {
      v632 = 0;
    }
  }

  else
  {
    v632 = 0;
  }

  v223 = v97;
  if (!v60 || v60[11] > toTime)
  {
    goto LABEL_101;
  }

  demoDataGenerator24 = [v60 demoDataGenerator];
  generatorState5 = [demoDataGenerator24 generatorState];
  isExercising4 = [generatorState5 isExercising];

  if (isExercising4)
  {
    [v223 stepsSampleFrequencyDuringExercise];
  }

  else
  {
    [v223 stepsSampleFrequency];
  }

  v228 = v227;
  v60[11] = v227 + toTime;
  demoDataGenerator25 = [v60 demoDataGenerator];
  sleepSampleGenerator7 = [demoDataGenerator25 sleepSampleGenerator];
  v231 = [sleepSampleGenerator7 isDemoPersonSleeping:v223 atTime:toTime];

  if (v231)
  {
LABEL_101:
    v232 = v129;
    v233 = 0;
    v234 = 0;
    v628 = 0;
    v235 = v223;
LABEL_102:
    v236 = v122;
    v614 = v233;

    [(HDDemoDataActivitySampleGenerator *)v60 _computeWalkingRunningDistanceWithStepCount:v628 demoPerson:v223];
    goto LABEL_103;
  }

  if ([v60 _isDemoPersonWalking:v223 atTime:toTime samplePeriod:v228])
  {
    demoDataGenerator26 = [v60 demoDataGenerator];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v541 = [demoDataGenerator26 isDemoDataTimeInWeekend:currentCalendar calendar:toTime];

    if (v541)
    {
      [v223 weekendSleepParameters];
    }

    else
    {
      [v223 weekdaySleepParameters];
    }
    demoDataGenerator31 = ;
    demoDataGenerator27 = [v60 demoDataGenerator];
    sleepSampleGenerator8 = [demoDataGenerator27 sleepSampleGenerator];
    [demoDataGenerator31 bedtime];
    v554 = v553;
    [v223 bedtimeNoiseStdDev];
    [sleepSampleGenerator8 computeSleepTimeFromCurrentTime:toTime mean:v554 stdDev:v555];
    v557 = v556;

    demoDataGenerator28 = [v60 demoDataGenerator];
    sleepSampleGenerator9 = [demoDataGenerator28 sleepSampleGenerator];
    [demoDataGenerator31 wakeUpTime];
    v561 = v560;
    [v223 wakeUpTimeNoiseStdDev];
    [sleepSampleGenerator9 computeSleepTimeFromCurrentTime:toTime mean:v561 stdDev:v562];
    v564 = v563;

    demoDataGenerator29 = [v60 demoDataGenerator];
    generatorState6 = [demoDataGenerator29 generatorState];
    isRunning = [generatorState6 isRunning];

    if (isRunning)
    {
      v568 = v228 / 0.000694444444 * 100.0;
      demoDataGenerator30 = [v60 demoDataGenerator];
      statisticsSampleGenerator9 = [demoDataGenerator30 statisticsSampleGenerator];
      v571 = statisticsSampleGenerator9;
      v572 = 20.0;
    }

    else
    {
      v568 = (arc4random_uniform(0x3E8u) + 9000) / ((v557 - v564) * 0.6 / v228);
      demoDataGenerator30 = [v60 demoDataGenerator];
      statisticsSampleGenerator9 = [demoDataGenerator30 statisticsSampleGenerator];
      v571 = statisticsSampleGenerator9;
      v572 = 1.3;
    }

    [statisticsSampleGenerator9 computeNoiseFromTime:toTime stdDev:v568 / v572];
    v574 = v568 + v573;

    v233 = [MEMORY[0x277CCABB0] numberWithInteger:fabs(v568 + v574)];
  }

  else
  {
    v547 = MEMORY[0x277CCABB0];
    demoDataGenerator31 = [v60 demoDataGenerator];
    statisticsSampleGenerator10 = [demoDataGenerator31 statisticsSampleGenerator];
    [statisticsSampleGenerator10 computeNoiseFromTime:toTime stdDev:10.0];
    v233 = [v547 numberWithInteger:v550];
  }

  v232 = v129;
  if (v233)
  {
    demoDataGenerator32 = [v60 demoDataGenerator];
    generatorState7 = [demoDataGenerator32 generatorState];
    isExercising5 = [generatorState7 isExercising];

    v235 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCC70]];
    if (isExercising5)
    {
      v628 = 0;
      v578 = v625;
      v579 = v635;
    }

    else
    {
      [v233 doubleValue];
      v578 = v625;
      v628 = [MEMORY[0x277CCD7E8] quantityWithUnit:v625 doubleValue:fabs(v580)];
      v581 = [MEMORY[0x277CCD800] quantitySampleWithType:v235 quantity:? startDate:? endDate:?];
      v579 = v635;
      [v635 addObjectFromPhone:v581];
    }

    [v233 doubleValue];
    v234 = [MEMORY[0x277CCD7E8] quantityWithUnit:v578 doubleValue:fabs(v582 + arc4random_uniform(5u))];
    v583 = [MEMORY[0x277CCD800] quantitySampleWithType:v235 quantity:v234 startDate:v55 endDate:v55];
    [v579 addObjectFromWatch:v583];

    goto LABEL_102;
  }

  v236 = v122;
  v614 = 0;
  v234 = 0;
  v628 = 0;
  [(HDDemoDataActivitySampleGenerator *)v60 _computeWalkingRunningDistanceWithStepCount:v223 demoPerson:?];
  v237 = LABEL_103:;
  v238 = MEMORY[0x277CCCB40];
  if (v237)
  {
    v239 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB40]];
    v240 = [MEMORY[0x277CCD800] quantitySampleWithType:v239 quantity:v237 startDate:v55 endDate:v55];
    [v635 addObjectFromPhone:v240];
  }

  v623 = v237;
  v241 = [(HDDemoDataActivitySampleGenerator *)v60 _computeWalkingRunningDistanceWithStepCount:v234 demoPerson:v223];
  v605 = v241;
  if (v241)
  {
    v242 = v241;
    v243 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*v238];
    v613 = [MEMORY[0x277CCD800] quantitySampleWithType:v243 quantity:v242 startDate:v55 endDate:v55];
    [v635 addObjectFromWatch:?];
  }

  else
  {
    v613 = 0;
  }

  v244 = v236;
  v245 = v234;
  v634 = v223;
  v246 = v232;
  if (v60)
  {
    demoDataGenerator33 = [v60 demoDataGenerator];
    generatorState8 = [demoDataGenerator33 generatorState];
    isExercising6 = [generatorState8 isExercising];

    v250 = v635;
    if (!isExercising6)
    {
      goto LABEL_112;
    }

    demoDataGenerator34 = [v60 demoDataGenerator];
    generatorState9 = [demoDataGenerator34 generatorState];
    workoutConfiguration2 = [generatorState9 workoutConfiguration];
    [workoutConfiguration2 distanceCyclingRateInMiles];
    v255 = v254;

    [v634 stepsSampleFrequencyDuringExercise];
    v257 = v255 * v256;
    if (v257 > 0.00000011920929)
    {
      v258 = MEMORY[0x277CCD7E8];
      mileUnit = [MEMORY[0x277CCDAB0] mileUnit];
      v260 = [v258 quantityWithUnit:mileUnit doubleValue:v257];
    }

    else
    {
LABEL_112:
      v260 = 0;
    }
  }

  else
  {
    v260 = 0;
    v250 = v635;
  }

  if (v260)
  {
    v261 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB10]];
    v612 = [MEMORY[0x277CCD800] quantitySampleWithType:v261 quantity:v260 startDate:v55 endDate:v55];
    [v250 addObjectFromWatch:?];
  }

  else
  {
    v612 = 0;
  }

  demoDataGenerator35 = [v60 demoDataGenerator];
  generatorState10 = [demoDataGenerator35 generatorState];
  workoutConfiguration3 = [generatorState10 workoutConfiguration];
  [workoutConfiguration3 distanceCrossCountrySkiingRateInMeters];
  v266 = v265;

  v267 = [(HDDemoDataActivitySampleGenerator *)v60 _computeDistanceWithDistanceRate:v634 DemoPerson:v266];
  v626 = v245;
  if (v267)
  {
    v268 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB08]];
    v611 = [MEMORY[0x277CCD800] quantitySampleWithType:v268 quantity:v267 startDate:v55 endDate:v55];
    [v250 addObjectFromWatch:?];
  }

  else
  {
    v611 = 0;
  }

  demoDataGenerator36 = [(HDDemoDataBaseSampleGenerator *)selfCopy demoDataGenerator];
  generatorState11 = [demoDataGenerator36 generatorState];
  workoutConfiguration4 = [generatorState11 workoutConfiguration];
  [workoutConfiguration4 distanceRowingRateInMeters];
  v273 = v272;

  v274 = [(HDDemoDataActivitySampleGenerator *)selfCopy _computeDistanceWithDistanceRate:v634 DemoPerson:v273];
  if (v274)
  {
    v275 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB28]];
    v610 = [MEMORY[0x277CCD800] quantitySampleWithType:v275 quantity:v274 startDate:v636 endDate:v636];
    [v250 addObjectFromWatch:?];
  }

  else
  {
    v610 = 0;
  }

  demoDataGenerator37 = [(HDDemoDataBaseSampleGenerator *)selfCopy demoDataGenerator];
  generatorState12 = [demoDataGenerator37 generatorState];
  workoutConfiguration5 = [generatorState12 workoutConfiguration];
  [workoutConfiguration5 distanceSkatingSportsRateInMeters];
  v280 = v279;

  v281 = [(HDDemoDataActivitySampleGenerator *)selfCopy _computeDistanceWithDistanceRate:v634 DemoPerson:v280];
  if (v281)
  {
    v282 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB30]];
    v609 = [MEMORY[0x277CCD800] quantitySampleWithType:v282 quantity:v281 startDate:v636 endDate:v636];
    [v635 addObjectFromWatch:?];
  }

  else
  {
    v609 = 0;
  }

  v616 = v246;
  demoDataGenerator38 = [(HDDemoDataBaseSampleGenerator *)selfCopy demoDataGenerator];
  generatorState13 = [demoDataGenerator38 generatorState];
  workoutConfiguration6 = [generatorState13 workoutConfiguration];
  [workoutConfiguration6 distancePaddleSportsRateInMeters];
  v287 = v286;

  v288 = [(HDDemoDataActivitySampleGenerator *)selfCopy _computeDistanceWithDistanceRate:v634 DemoPerson:v287];
  v617 = v244;
  if (v288)
  {
    v289 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB20]];
    v608 = [MEMORY[0x277CCD800] quantitySampleWithType:v289 quantity:v288 startDate:v636 endDate:v636];
    [v635 addObjectFromWatch:?];
  }

  else
  {
    v608 = 0;
  }

  demoDataGenerator39 = [(HDDemoDataBaseSampleGenerator *)selfCopy demoDataGenerator];
  generatorState14 = [demoDataGenerator39 generatorState];
  workoutConfiguration7 = [generatorState14 workoutConfiguration];
  [workoutConfiguration7 distanceDownhillSnowSportsRateInMeters];
  v294 = v293;

  v295 = v634;
  v296 = [(HDDemoDataActivitySampleGenerator *)selfCopy _computeDistanceWithDistanceRate:v634 DemoPerson:v294];
  if (v296)
  {
    v297 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB18]];
    v607 = [MEMORY[0x277CCD800] quantitySampleWithType:v297 quantity:v296 startDate:v636 endDate:v636];
    [v635 addObjectFromWatch:?];
  }

  else
  {
    v607 = 0;
  }

  v298 = selfCopy;
  demoDataGenerator40 = [(HDDemoDataBaseSampleGenerator *)selfCopy demoDataGenerator];
  generatorState15 = [demoDataGenerator40 generatorState];
  isRunning2 = [generatorState15 isRunning];

  v302 = v635;
  v303 = 0x277CCD000uLL;
  if (selfCopy && isRunning2)
  {
    v304 = v635;
    v305 = v636;
    v306 = v634;
    [v306 runningPowerMean];
    v308 = v307;
    [v306 runningPowerMeanStdDev];
    v310 = v309;
    [v306 timeIncrementDuringExercise];
    v312 = v311;
    nextRunningPowerSampleTime = selfCopy->_nextRunningPowerSampleTime;
    v314 = *MEMORY[0x277CCCC38];
    wattUnit = [MEMORY[0x277CCDAB0] wattUnit];
    v316 = [HDDemoDataActivitySampleGenerator _generateWorkoutDataSamplesForDemoPerson:selfCopy atTime:v305 sampleDate:v304 addFromWatch:v314 objectCollection:wattUnit nextSampleTime:selfCopy->_workoutState typeIdentifier:toTime unit:nextRunningPowerSampleTime sampleMean:v308 sampleMeanStdDev:v310 sampleFrequency:v312 workoutState:?];

    selfCopy->_nextRunningPowerSampleTime = v316;
    v317 = v304;
    v318 = v305;
    v319 = v306;
    [v319 runningStrideLengthMean];
    v321 = v320;
    [v319 runningStrideLengthMeanStdDev];
    v323 = v322;
    [v319 timeIncrementDuringExercise];
    v325 = v324;
    nextRunningStrideLengthSampleTime = selfCopy->_nextRunningStrideLengthSampleTime;
    v327 = *MEMORY[0x277CCCC48];
    meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
    v329 = [HDDemoDataActivitySampleGenerator _generateWorkoutDataSamplesForDemoPerson:selfCopy atTime:v318 sampleDate:v317 addFromWatch:v327 objectCollection:meterUnit nextSampleTime:selfCopy->_workoutState typeIdentifier:toTime unit:nextRunningStrideLengthSampleTime sampleMean:v321 sampleMeanStdDev:v323 sampleFrequency:v325 workoutState:?];

    selfCopy->_nextRunningStrideLengthSampleTime = v329;
    v330 = v317;
    v331 = v318;
    v332 = v319;
    [v332 runningVerticalOscillationMean];
    v334 = v333;
    [v332 runningVerticalOscillationMeanStdDev];
    v336 = v335;
    [v332 timeIncrementDuringExercise];
    v338 = v337;
    nextRunningVerticalOscillationSampleTime = selfCopy->_nextRunningVerticalOscillationSampleTime;
    v340 = *MEMORY[0x277CCCC50];
    meterUnit2 = [MEMORY[0x277CCDAB0] meterUnit];
    v342 = [HDDemoDataActivitySampleGenerator _generateWorkoutDataSamplesForDemoPerson:selfCopy atTime:v331 sampleDate:v330 addFromWatch:v340 objectCollection:meterUnit2 nextSampleTime:selfCopy->_workoutState typeIdentifier:toTime unit:nextRunningVerticalOscillationSampleTime sampleMean:v334 sampleMeanStdDev:v336 sampleFrequency:v338 workoutState:?];

    selfCopy->_nextRunningVerticalOscillationSampleTime = v342;
    v343 = v330;
    v344 = v331;
    v345 = v332;
    [v345 runningGroundContactTimeMean];
    v347 = v346;
    [v345 runningGroundContactTimeMeanStdDev];
    v349 = v348;
    [v345 timeIncrementDuringExercise];
    v351 = v350;
    nextRunningGroundContactTimeSampleTime = selfCopy->_nextRunningGroundContactTimeSampleTime;
    v353 = *MEMORY[0x277CCCC30];
    v354 = [MEMORY[0x277CCDAB0] unitFromString:@"ms"];
    v355 = [HDDemoDataActivitySampleGenerator _generateWorkoutDataSamplesForDemoPerson:selfCopy atTime:v344 sampleDate:v343 addFromWatch:v353 objectCollection:v354 nextSampleTime:selfCopy->_workoutState typeIdentifier:toTime unit:nextRunningGroundContactTimeSampleTime sampleMean:v347 sampleMeanStdDev:v349 sampleFrequency:v351 workoutState:?];

    v298 = selfCopy;
    selfCopy->_nextRunningGroundContactTimeSampleTime = v355;
  }

  demoDataGenerator41 = [v298 demoDataGenerator];
  generatorState16 = [demoDataGenerator41 generatorState];
  isCycling = [generatorState16 isCycling];

  if (v298 && isCycling)
  {
    v359 = v635;
    v360 = v636;
    v361 = v634;
    [v361 cyclingPowerMean];
    v363 = v362;
    [v361 cyclingPowerMeanStdDev];
    v365 = v364;
    [v361 timeIncrementDuringExercise];
    v367 = v366;
    nextCyclingPowerSampleTime = selfCopy->_nextCyclingPowerSampleTime;
    v369 = *MEMORY[0x277CCC9C0];
    wattUnit2 = [MEMORY[0x277CCDAB0] wattUnit];
    v371 = [HDDemoDataActivitySampleGenerator _generateWorkoutDataSamplesForDemoPerson:selfCopy atTime:v360 sampleDate:v359 addFromWatch:v369 objectCollection:wattUnit2 nextSampleTime:selfCopy->_workoutState typeIdentifier:toTime unit:nextCyclingPowerSampleTime sampleMean:v363 sampleMeanStdDev:v365 sampleFrequency:v367 workoutState:?];

    selfCopy->_nextCyclingPowerSampleTime = v371;
    v372 = v359;
    v373 = v360;
    v374 = v361;
    [v374 cyclingCadenceMean];
    v376 = v375;
    [v374 cyclingCadenceMeanStdDev];
    v378 = v377;
    [v374 timeIncrementDuringExercise];
    v380 = v379;
    nextCyclingCadenceSampleTime = selfCopy->_nextCyclingCadenceSampleTime;
    v382 = *MEMORY[0x277CCC9B0];
    v383 = [MEMORY[0x277CCDAB0] unitFromString:@"count/min"];
    v384 = [HDDemoDataActivitySampleGenerator _generateWorkoutDataSamplesForDemoPerson:selfCopy atTime:v373 sampleDate:v372 addFromWatch:v382 objectCollection:v383 nextSampleTime:selfCopy->_workoutState typeIdentifier:toTime unit:nextCyclingCadenceSampleTime sampleMean:v376 sampleMeanStdDev:v378 sampleFrequency:v380 workoutState:?];

    selfCopy->_nextCyclingCadenceSampleTime = v384;
    v385 = v372;
    v386 = v373;
    v387 = v374;
    [v387 cyclingSpeedMean];
    v389 = v388;
    [v387 speedMeanStdDev];
    v391 = v390;
    [v387 timeIncrementDuringExercise];
    v393 = v392;
    nextCyclingSpeedSampleTime = selfCopy->_nextCyclingSpeedSampleTime;
    v395 = *MEMORY[0x277CCC9C8];
    v396 = [MEMORY[0x277CCDAB0] unitFromString:@"m/s"];
    v397 = [HDDemoDataActivitySampleGenerator _generateWorkoutDataSamplesForDemoPerson:selfCopy atTime:v386 sampleDate:v385 addFromWatch:v395 objectCollection:v396 nextSampleTime:selfCopy->_workoutState typeIdentifier:toTime unit:nextCyclingSpeedSampleTime sampleMean:v389 sampleMeanStdDev:v391 sampleFrequency:v393 workoutState:?];

    v298 = selfCopy;
    selfCopy->_nextCyclingSpeedSampleTime = v397;
  }

  demoDataGenerator42 = [v298 demoDataGenerator];
  generatorState17 = [demoDataGenerator42 generatorState];
  isUnderwaterDiving = [generatorState17 isUnderwaterDiving];

  if (v298 && isUnderwaterDiving)
  {
    v401 = v635;
    v402 = v636;
    v403 = v634;
    [v403 underwaterDivingWaterTemperatureMean];
    v405 = v404;
    [v403 underwaterDivingWaterTemperatureStdDev];
    v407 = v406;
    [v403 timeIncrementDuringExercise];
    v409 = v408;
    nextWaterTemperatureSampleTime = selfCopy->_nextWaterTemperatureSampleTime;
    v411 = *MEMORY[0x277CCCCD0];
    degreeCelsiusUnit = [MEMORY[0x277CCDAB0] degreeCelsiusUnit];
    v413 = [HDDemoDataActivitySampleGenerator _generateWorkoutDataSamplesForDemoPerson:selfCopy atTime:v402 sampleDate:v401 addFromWatch:v411 objectCollection:degreeCelsiusUnit nextSampleTime:selfCopy->_workoutState typeIdentifier:toTime unit:nextWaterTemperatureSampleTime sampleMean:v405 sampleMeanStdDev:v407 sampleFrequency:v409 workoutState:?];

    v298 = selfCopy;
    selfCopy->_nextWaterTemperatureSampleTime = v413;
  }

  demoDataGenerator43 = [v298 demoDataGenerator];
  generatorState18 = [demoDataGenerator43 generatorState];
  isCrossCountrySkiing = [generatorState18 isCrossCountrySkiing];

  if (v298 && isCrossCountrySkiing)
  {
    v417 = v635;
    v418 = v636;
    v419 = v634;
    [v419 crossCountrySkiingSpeedMean];
    v421 = v420;
    [v419 speedMeanStdDev];
    v423 = v422;
    [v419 timeIncrementDuringExercise];
    v425 = v424;
    nextCrossCountrySkiingSpeedSampleTime = selfCopy->_nextCrossCountrySkiingSpeedSampleTime;
    v427 = *MEMORY[0x277CCC9A8];
    v428 = [MEMORY[0x277CCDAB0] unitFromString:@"m/s"];
    v429 = [HDDemoDataActivitySampleGenerator _generateWorkoutDataSamplesForDemoPerson:selfCopy atTime:v418 sampleDate:v417 addFromWatch:v427 objectCollection:v428 nextSampleTime:selfCopy->_workoutState typeIdentifier:toTime unit:nextCrossCountrySkiingSpeedSampleTime sampleMean:v421 sampleMeanStdDev:v423 sampleFrequency:v425 workoutState:?];

    v298 = selfCopy;
    selfCopy->_nextCrossCountrySkiingSpeedSampleTime = v429;
  }

  demoDataGenerator44 = [v298 demoDataGenerator];
  generatorState19 = [demoDataGenerator44 generatorState];
  isRowing = [generatorState19 isRowing];

  if (v298 && isRowing)
  {
    v433 = v635;
    v434 = v636;
    v435 = v634;
    [v435 rowingSpeedMean];
    v437 = v436;
    [v435 speedMeanStdDev];
    v439 = v438;
    [v435 timeIncrementDuringExercise];
    v441 = v440;
    nextRowingSpeedSampleTime = selfCopy->_nextRowingSpeedSampleTime;
    v443 = *MEMORY[0x277CCCC28];
    v444 = [MEMORY[0x277CCDAB0] unitFromString:@"m/s"];
    v445 = [HDDemoDataActivitySampleGenerator _generateWorkoutDataSamplesForDemoPerson:selfCopy atTime:v434 sampleDate:v433 addFromWatch:v443 objectCollection:v444 nextSampleTime:selfCopy->_workoutState typeIdentifier:toTime unit:nextRowingSpeedSampleTime sampleMean:v437 sampleMeanStdDev:v439 sampleFrequency:v441 workoutState:?];

    v298 = selfCopy;
    selfCopy->_nextRowingSpeedSampleTime = v445;
  }

  demoDataGenerator45 = [v298 demoDataGenerator];
  generatorState20 = [demoDataGenerator45 generatorState];
  isPaddleSports = [generatorState20 isPaddleSports];

  if (isPaddleSports)
  {
    if (!v298)
    {
      v598 = v634;
      v467 = 0;
      v468 = v634;
      v303 = 0x277CCD000;
      goto LABEL_153;
    }

    v449 = v635;
    v450 = v636;
    v451 = v634;
    [v451 paddleSportsSpeedMean];
    v453 = v452;
    [v451 speedMeanStdDev];
    v455 = v454;
    [v451 timeIncrementDuringExercise];
    v457 = v456;
    v458 = *(v298 + 208);
    v459 = *MEMORY[0x277CCCBF0];
    v460 = [MEMORY[0x277CCDAB0] unitFromString:@"m/s"];
    v461 = [HDDemoDataActivitySampleGenerator _generateWorkoutDataSamplesForDemoPerson:v298 atTime:v450 sampleDate:v449 addFromWatch:v459 objectCollection:v460 nextSampleTime:*(v298 + 264) typeIdentifier:toTime unit:v458 sampleMean:v453 sampleMeanStdDev:v455 sampleFrequency:v457 workoutState:?];

    *(v298 + 208) = v461;
    v462 = v451;
    v303 = 0x277CCD000uLL;
    v295 = v634;
  }

  else
  {
    v463 = v634;
    if (!v298)
    {
LABEL_152:
      v467 = 0;
      v468 = v295;
LABEL_153:

      goto LABEL_154;
    }
  }

  demoDataGenerator46 = [v298 demoDataGenerator];
  sleepSampleGenerator10 = [demoDataGenerator46 sleepSampleGenerator];
  v466 = [sleepSampleGenerator10 isDemoPersonAwake:v295 atTime:toTime];

  if (!v466 || *(v298 + 216) > toTime)
  {
    goto LABEL_152;
  }

  demoDataGenerator47 = [v298 demoDataGenerator];
  firstSampleDayOfYear = [demoDataGenerator47 firstSampleDayOfYear];

  if (toTime > *(v298 + 224))
  {
    v520 = ((((firstSampleDayOfYear + toTime) % 365) / 91.0) + 5);
    demoDataGenerator48 = [v298 demoDataGenerator];
    statisticsSampleGenerator11 = [demoDataGenerator48 statisticsSampleGenerator];
    [statisticsSampleGenerator11 pseudoRandomDoubleFromTime:toTime];
    v524 = v520 + v523 * 2.0;
    demoDataGenerator49 = [v298 demoDataGenerator];
    statisticsSampleGenerator12 = [demoDataGenerator49 statisticsSampleGenerator];
    [statisticsSampleGenerator12 computeNoiseFromTime:toTime + 1.0 stdDev:2.5];
    v528 = v524 + v527 + *(v298 + 240) / 7.0;

    v529 = 0.0;
    if (v528 >= 0.0)
    {
      v529 = v528;
    }

    *(v298 + 240) = fmin(v529, 11.0);
    v302 = v635;
    *(v298 + 224) = toTime;
  }

  [v295 uvIndexSampleFrequency];
  v531 = v530;
  demoDataGenerator50 = [v298 demoDataGenerator];
  statisticsSampleGenerator13 = [demoDataGenerator50 statisticsSampleGenerator];
  [statisticsSampleGenerator13 computeNoiseFromTime:toTime stdDev:0.00833333333];
  *(v298 + 216) = v531 + v534 + *(v298 + 216);

  v535 = v295;
  v536 = toTime - toTime;
  [v535 dawnTime];
  v537 = 0.0001;
  if (v536 >= v538)
  {
    [v535 sunsetTime];
    v298 = selfCopy;
    v303 = 0x277CCD000;
    if (v536 <= v542)
    {
      if (v536 >= 0.541666667)
      {
        [v535 sunsetTime];
        v546 = 1.0 - (v536 + -0.541666667) / (v584 + -0.541666667);
      }

      else
      {
        [v535 dawnTime];
        v544 = v536 - v543;
        [v535 dawnTime];
        v546 = v544 / (0.541666667 - v545);
      }

      v537 = v546 * selfCopy->_lastUVIndexPeak;
    }
  }

  else
  {
    v298 = selfCopy;
    v303 = 0x277CCD000;
  }

  v585 = *(v298 + 232);
  demoDataGenerator51 = [v298 demoDataGenerator];
  generatorState21 = [demoDataGenerator51 generatorState];
  isExercising7 = [generatorState21 isExercising];

  if ((isExercising7 & 1) == 0)
  {
    [v535 uvIndexSampleFrequency];
    if (([v298 _isDemoPersonWalking:v535 atTime:toTime samplePeriod:v589] & 1) == 0)
    {
      if (v585 > 1.0)
      {
        goto LABEL_208;
      }

      goto LABEL_207;
    }

    demoDataGenerator52 = [v298 demoDataGenerator];
    statisticsSampleGenerator14 = [demoDataGenerator52 statisticsSampleGenerator];
    [statisticsSampleGenerator14 pseudoRandomDoubleFromTime:toTime];
    v593 = v592;

    if (v585 > 1.0)
    {
      if (v593 >= 0.55)
      {
        goto LABEL_208;
      }

LABEL_207:
      v537 = arc4random_uniform(2u);
      goto LABEL_208;
    }

    if (v593 >= 0.35)
    {
      goto LABEL_207;
    }
  }

LABEL_208:
  *(v298 + 232) = v537;
  v467 = [MEMORY[0x277CCABB0] numberWithInteger:v537];

  if (v467)
  {
    v594 = MEMORY[0x277CCD7E8];
    [v467 doubleValue];
    v468 = [v594 quantityWithUnit:v625 doubleValue:?];
    v595 = MEMORY[0x277CCD800];
    v596 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCC88]];
    v597 = [v595 quantitySampleWithType:v596 quantity:v468 startDate:v636 endDate:v636];

    [v302 addObjectFromPhone:v597];
    goto LABEL_153;
  }

LABEL_154:
  v469 = *(v298 + 248);
  v606 = v467;
  if (!v469)
  {
LABEL_158:
    currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
    v624 = _HKActivityCacheDateComponentsFromDate();
    v601 = currentCalendar2;
    v474 = [currentCalendar2 startOfDayForDate:v636];
    v475 = [currentCalendar2 dateByAddingUnit:16 value:1 toDate:v474 options:0];
    v602 = [currentCalendar2 startOfDayForDate:v475];

    v476 = MEMORY[0x277CCD7E8];
    kilocalorieUnit2 = [*(v303 + 2736) kilocalorieUnit];
    [v295 moveGoal];
    v599 = [v476 quantityWithUnit:kilocalorieUnit2 doubleValue:?];

    v478 = MEMORY[0x277CCD800];
    v479 = [MEMORY[0x277CCD830] dataTypeWithCode:67];
    v604 = [v478 quantitySampleWithType:v479 quantity:v599 startDate:v474 endDate:v474];

    [v635 addObjectFromWatch:v604];
    v480 = MEMORY[0x277CCD7E8];
    minuteUnit2 = [MEMORY[0x277CCDAB0] minuteUnit];
    [v295 exerciseGoal];
    v603 = [v480 quantityWithUnit:minuteUnit2 doubleValue:?];

    v482 = MEMORY[0x277CCD800];
    v483 = [MEMORY[0x277CCD830] dataTypeWithCode:105];
    v600 = [v482 quantitySampleWithType:v483 quantity:v603 startDate:v474 endDate:v474];

    [v635 addObjectFromWatch:v600];
    v484 = MEMORY[0x277CCD7E8];
    countUnit2 = [MEMORY[0x277CCDAB0] countUnit];
    [v295 standGoal];
    v486 = [v484 quantityWithUnit:countUnit2 doubleValue:?];

    v487 = MEMORY[0x277CCD800];
    v488 = [MEMORY[0x277CCD830] dataTypeWithCode:104];
    v489 = [v487 quantitySampleWithType:v488 quantity:v486 startDate:v474 endDate:v474];

    [v635 addObjectFromWatch:v489];
    v490 = MEMORY[0x277CCCFA0];
    uUID = [MEMORY[0x277CCAD78] UUID];
    v492 = [v490 _activityCacheWithUUID:uUID startDate:v474 endDate:v602 dateComponents:v624 sequence:1];
    lastActivityCache = selfCopy->_lastActivityCache;
    selfCopy->_lastActivityCache = v492;

    [(HKActivityCache *)selfCopy->_lastActivityCache _setEnergyBurnedGoal:v599];
    v494 = selfCopy->_lastActivityCache;
    v495 = MEMORY[0x277CCD7E8];
    minuteUnit3 = [MEMORY[0x277CCDAB0] minuteUnit];
    v497 = [v495 quantityWithUnit:minuteUnit3 doubleValue:30.0];
    [(HKActivityCache *)v494 _setBriskMinutesGoal:v497];

    v498 = selfCopy->_lastActivityCache;
    v499 = MEMORY[0x277CCD7E8];
    countUnit3 = [MEMORY[0x277CCDAB0] countUnit];
    v501 = [v499 quantityWithUnit:countUnit3 doubleValue:12.0];
    [(HKActivityCache *)v498 _setActiveHoursGoal:v501];

    v303 = 0x277CCD000uLL;
    v298 = selfCopy;

    goto LABEL_159;
  }

  endDate = [v469 endDate];
  if ([v636 hk_isAfterDate:endDate])
  {

    goto LABEL_158;
  }

  startDate = [*(v298 + 248) startDate];
  v472 = [v636 hk_isBeforeDate:startDate];

  if (v472)
  {
    goto LABEL_158;
  }

  [*(v298 + 248) _setSequence:{objc_msgSend(*(v298 + 248), "sequence") + 1}];
LABEL_159:
  if (v626)
  {
    stepCount = [*(v298 + 248) stepCount];
    countUnit4 = [*(v303 + 2736) countUnit];
    [v626 doubleValueForUnit:countUnit4];
    v505 = llround(v504);

    [*(v298 + 248) _setStepCount:stepCount + v505];
  }

  if ([MEMORY[0x277CC1D18] isFloorCountingAvailable] && v632)
  {
    flightsClimbed = [*(v298 + 248) flightsClimbed];
    countUnit5 = [*(v303 + 2736) countUnit];
    [v632 doubleValueForUnit:countUnit5];
    v509 = llround(v508);

    [*(v298 + 248) _setFlightsClimbed:flightsClimbed + v509];
  }

  if (v613)
  {
    walkingAndRunningDistance = [*(v298 + 248) walkingAndRunningDistance];
    quantity = [v613 quantity];
    v512 = [(HDDemoDataActivitySampleGenerator *)v298 _sumQuantity:walkingAndRunningDistance withQuantity:quantity];

    [*(v298 + 248) _setWalkingAndRunningDistance:v512];
  }

  if (v619)
  {
    energyBurned = [*(v298 + 248) energyBurned];
    quantity2 = [v619 quantity];
    v515 = [(HDDemoDataActivitySampleGenerator *)v298 _sumQuantity:energyBurned withQuantity:quantity2];

    [*(v298 + 248) _setEnergyBurned:v515];
  }

  if (v630 && ![(HDDemoDataActivitySampleGenerator *)v630 integerValue])
  {
    [*(v298 + 248) activeHours];
    [*(v298 + 248) _setActiveHours:v516 + 1.0];
  }

  if ((v621 & 1) == 0)
  {
    [*(v298 + 248) briskMinutes];
    [*(v298 + 248) _setBriskMinutes:{v517 + objc_msgSend(v622, "integerValue")}];
  }

  [v635 addObjectFromWatch:*(v298 + 248)];
  [HDDemoDataActivitySampleGenerator _updateWorkoutStateWithActiveEnergyBurned:v298 distanceWalking:v619 distanceCycling:v613 distanceCrossCountrySkiing:v612 distanceRowing:v611 distanceSkatingSports:v610 distancePaddleSports:v609 distanceDownhillSnowSports:v608 currentTime:v607 date:v636 objectCollection:v635 demoPerson:v634];
}

- (double)flightsClimbedForDemoPerson:(double)person atTime:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    if (self[10] <= person)
    {
      [v5 flightsClimbedSampleFrequency];
      v8 = v7;
      demoDataGenerator = [self demoDataGenerator];
      statisticsSampleGenerator = [demoDataGenerator statisticsSampleGenerator];
      [v6 flightsClimbedSampleFrequencyStdDev];
      [statisticsSampleGenerator computeNoiseFromTime:person stdDev:v11];
      self[10] = v8 + v12 + self[10];

      self = [self _computeFlightsClimbedForDemoPerson:v6 atTime:person];
    }

    else
    {
      self = 0;
    }
  }

  return self;
}

- (id)_computeWalkingRunningDistanceWithStepCount:(void *)count demoPerson:
{
  v5 = a2;
  countCopy = count;
  v7 = 0;
  if (self && v5)
  {
    demoDataGenerator = [self demoDataGenerator];
    generatorState = [demoDataGenerator generatorState];
    isExercising = [generatorState isExercising];

    if (isExercising)
    {
      demoDataGenerator2 = [self demoDataGenerator];
      generatorState2 = [demoDataGenerator2 generatorState];
      workoutConfiguration = [generatorState2 workoutConfiguration];
      [workoutConfiguration distanceWalkingRateInMiles];
      v15 = v14;

      [countCopy stepsSampleFrequencyDuringExercise];
      v17 = v15 * v16;
      if (v17 > 0.00000011920929)
      {
        v18 = MEMORY[0x277CCD7E8];
        mileUnit = [MEMORY[0x277CCDAB0] mileUnit];
LABEL_8:
        v22 = mileUnit;
        v7 = [v18 quantityWithUnit:mileUnit doubleValue:v17];

        goto LABEL_10;
      }
    }

    else
    {
      countUnit = [MEMORY[0x277CCDAB0] countUnit];
      [v5 doubleValueForUnit:countUnit];
      v17 = v21 * 2.5;

      if (v17 > 0.00000011920929)
      {
        v18 = MEMORY[0x277CCD7E8];
        mileUnit = [MEMORY[0x277CCDAB0] footUnit];
        goto LABEL_8;
      }
    }

    v7 = 0;
  }

LABEL_10:

  return v7;
}

- (id)_computeDistanceWithDistanceRate:(double)rate DemoPerson:
{
  v5 = a2;
  if (self)
  {
    demoDataGenerator = [self demoDataGenerator];
    generatorState = [demoDataGenerator generatorState];
    isExercising = [generatorState isExercising];

    if (isExercising && ([v5 exerciseTimeSampleFrequency], v10 = v9 * rate, v10 > 0.00000011920929))
    {
      v11 = MEMORY[0x277CCD7E8];
      meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
      self = [v11 quantityWithUnit:meterUnit doubleValue:v10];
    }

    else
    {
      self = 0;
    }
  }

  return self;
}

- (id)_sumQuantity:(void *)quantity withQuantity:
{
  v5 = a2;
  quantityCopy = quantity;
  v7 = quantityCopy;
  if (self)
  {
    if (v5)
    {
      if (quantityCopy)
      {
        v8 = [v5 _quantityByAddingQuantity:quantityCopy];
      }

      else
      {
        v8 = v5;
      }
    }

    else
    {
      v8 = quantityCopy;
    }

    self = v8;
  }

  return self;
}

- (void)_updateWorkoutStateWithActiveEnergyBurned:(uint64_t)burned distanceWalking:(void *)walking distanceCycling:(void *)cycling distanceCrossCountrySkiing:(void *)skiing distanceRowing:(void *)rowing distanceSkatingSports:(void *)sports distancePaddleSports:(void *)paddleSports distanceDownhillSnowSports:(void *)snowSports currentTime:(void *)time date:(void *)burned0 objectCollection:(void *)burned1 demoPerson:(void *)burned2
{
  v226 = *MEMORY[0x277D85DE8];
  walkingCopy = walking;
  cyclingCopy = cycling;
  skiingCopy = skiing;
  rowingCopy = rowing;
  sportsCopy = sports;
  paddleSportsCopy = paddleSports;
  snowSportsCopy = snowSports;
  timeCopy = time;
  dateCopy = date;
  v20 = rowingCopy;
  collectionCopy = collection;
  personCopy = person;
  if (!burned)
  {
    goto LABEL_175;
  }

  v21 = *(burned + 264);
  burnedCopy = burned;
  demoDataGenerator = [burned demoDataGenerator];
  generatorState = [demoDataGenerator generatorState];
  isExercising = [generatorState isExercising];

  if (((v21 == 0) & isExercising) == 1)
  {
    demoDataGenerator2 = [burned demoDataGenerator];
    generatorState2 = [demoDataGenerator2 generatorState];
    workoutConfiguration = [generatorState2 workoutConfiguration];
    v29 = *(burned + 256);
    *(burned + 256) = workoutConfiguration;

    v30 = objc_alloc_init(_HDDemoDataActivityWorkoutState);
    v31 = *(burned + 264);
    *(burned + 264) = v30;

    v32 = *(burned + 264);
    if (v32)
    {
      objc_storeStrong((v32 + 56), date);
      v33 = *(burned + 264);
    }

    else
    {
      v33 = 0;
    }

    activityType = [*(burned + 256) activityType];
    if (v33)
    {
      *(v33 + 32) = activityType;
    }

    v35 = *(burned + 264);
    goal = [*(burned + 256) goal];
    if (v35)
    {
      objc_storeStrong((v35 + 48), goal);
    }

    v37 = *(burned + 264);
    goalType = [*(burned + 256) goalType];
    if (v37)
    {
      *(v37 + 40) = goalType;
    }

    [*(burned + 256) endTime];
    *(burned + 104) = v39;
    *(burned + 112) = v39 + *MEMORY[0x277CCE5C0] * 0.0000115740741;
  }

  if ((isExercising & 1) == 0)
  {
    if (!v21)
    {
      goto LABEL_175;
    }

    burnedCopy2 = burned;
    v90 = *(burned + 264);
    if (v90)
    {
      v91 = *(v90 + 32);
    }

    if (!_HKWorkoutActivityTypeIsValid())
    {
      goto LABEL_173;
    }

    v92 = *(burned + 264);
    if (!v92)
    {
      goto LABEL_106;
    }

    v93 = v92[4];
    if (v93 > 45)
    {
      if (v93 > 60)
      {
        if (v93 <= 76)
        {
          if (v93 != 61 && v93 != 63 && v93 != 67)
          {
            goto LABEL_106;
          }

LABEL_87:
          [(HDDemoDataActivitySampleGenerator *)burned _generateHIITWorkoutDataWithObjectCollection:collectionCopy demoPerson:personCopy];
          goto LABEL_106;
        }

        if (v93 == 77)
        {
          v94 = &unk_283CAEC08;
          v95 = &unk_283CAEC20;
        }

        else
        {
          if (v93 != 80)
          {
            if (v93 == 84)
            {
              [(HDDemoDataActivitySampleGenerator *)burned _generateUnderwaterDivingWorkoutDataWithObjectCollection:collectionCopy demoPerson:personCopy];
            }

            goto LABEL_106;
          }

          v94 = &unk_283CAEBD8;
          v95 = &unk_283CAEBF0;
        }

LABEL_105:
        [HDDemoDataActivitySampleGenerator _generateWorkoutDataWithHeartRates:v94 recoveryHeartRates:v95 objectCollection:collectionCopy demoPerson:v92 workoutState:?];
        goto LABEL_106;
      }

      if (v93 <= 56)
      {
        if (v93 == 46)
        {
          [(HDDemoDataActivitySampleGenerator *)burned _generateSwimmingWorkoutDataWithObjectCollection:collectionCopy demoPerson:personCopy];
          goto LABEL_106;
        }

        if (v93 != 52)
        {
          goto LABEL_106;
        }

        v94 = &unk_283CAEB48;
        v95 = &unk_283CAEB60;
        goto LABEL_105;
      }

      if (v93 != 57)
      {
        if (v93 != 59 && v93 != 60)
        {
          goto LABEL_106;
        }

LABEL_97:
        [(HDDemoDataActivitySampleGenerator *)burned _generateEllipticalWorkoutDataWithObjectCollection:collectionCopy demoPerson:personCopy];
        goto LABEL_106;
      }

      goto LABEL_101;
    }

    if (v93 <= 30)
    {
      if (v93 <= 19)
      {
        if (v93 == 13)
        {
          [(HDDemoDataActivitySampleGenerator *)burned _generateCyclingFTPSamplesForDemoPerson:personCopy sampleDate:dateCopy objectCollection:collectionCopy];
          goto LABEL_106;
        }

        if (v93 != 16)
        {
          goto LABEL_106;
        }

        goto LABEL_97;
      }

      if (v93 == 20)
      {
        goto LABEL_87;
      }

      if (v93 != 21)
      {
        if (v93 != 24)
        {
          goto LABEL_106;
        }

        v94 = &unk_283CAEB78;
        v95 = &unk_283CAEB90;
        goto LABEL_105;
      }

LABEL_101:
      v94 = &unk_283CAEBA8;
      v95 = &unk_283CAEBC0;
      goto LABEL_105;
    }

    if (v93 <= 36)
    {
      if (v93 == 31)
      {
        goto LABEL_101;
      }

      if (v93 != 35)
      {
        goto LABEL_106;
      }
    }

    else if (v93 != 37)
    {
      if (v93 == 39 || v93 == 41)
      {
        goto LABEL_87;
      }

LABEL_106:
      v96 = *(burned + 264);
      profile = [burnedCopy profile];
      v98 = burnedCopy[4];
      v202 = dateCopy;
      v201 = profile;
      v198 = v98;
      if (!v96)
      {
        v167 = 0;
        goto LABEL_162;
      }

      v99 = MEMORY[0x277CCD7E8];
      kilocalorieUnit = [MEMORY[0x277CCDAB0] kilocalorieUnit];
      v199 = [v99 quantityWithUnit:kilocalorieUnit doubleValue:*(v96 + 64)];

      v101 = *(v96 + 32);
      if (v101 > 45)
      {
        if (v101 > 60)
        {
          if (v101 == 61 || v101 == 67)
          {
            v106 = MEMORY[0x277CCD7E8];
            meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
            v200 = [v106 quantityWithUnit:meterUnit doubleValue:*(v96 + 128)];
            goto LABEL_126;
          }
        }

        else
        {
          if (v101 == 46)
          {
            v108 = MEMORY[0x277CCD7E8];
            meterUnit = [MEMORY[0x277CCDAB0] yardUnit];
            v200 = [v108 quantityWithUnit:meterUnit doubleValue:*(v96 + 88)];
            goto LABEL_126;
          }

          if (v101 == 60)
          {
            v104 = MEMORY[0x277CCD7E8];
            meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
            v200 = [v104 quantityWithUnit:meterUnit doubleValue:*(v96 + 96)];
            goto LABEL_126;
          }
        }
      }

      else if (v101 > 34)
      {
        if (v101 == 35)
        {
          v109 = MEMORY[0x277CCD7E8];
          meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
          v200 = [v109 quantityWithUnit:meterUnit doubleValue:*(v96 + 104)];
          goto LABEL_126;
        }

        if (v101 == 39)
        {
          v105 = MEMORY[0x277CCD7E8];
          meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
          v200 = [v105 quantityWithUnit:meterUnit doubleValue:*(v96 + 112)];
          goto LABEL_126;
        }
      }

      else
      {
        if (v101 == 13)
        {
          v107 = MEMORY[0x277CCD7E8];
          meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
          v200 = [v107 quantityWithUnit:meterUnit doubleValue:*(v96 + 80)];
          goto LABEL_126;
        }

        if (v101 == 31)
        {
          v102 = MEMORY[0x277CCD7E8];
          meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
          v200 = [v102 quantityWithUnit:meterUnit doubleValue:*(v96 + 120)];
          goto LABEL_126;
        }
      }

      v110 = MEMORY[0x277CCD7E8];
      meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
      v200 = [v110 quantityWithUnit:meterUnit doubleValue:*(v96 + 72)];
LABEL_126:

      v203 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v111 = arc4random_uniform(0xAu);
      v112 = arc4random_uniform(0x1Eu);
      v113 = arc4random_uniform(5u);
      v114 = MEMORY[0x277CCD7E8];
      degreeFahrenheitUnit = [MEMORY[0x277CCDAB0] degreeFahrenheitUnit];
      v116 = [v114 quantityWithUnit:degreeFahrenheitUnit doubleValue:(v111 + 55)];
      [v203 setObject:v116 forKeyedSubscript:*MEMORY[0x277CCC560]];

      v117 = MEMORY[0x277CCD7E8];
      percentUnit = [MEMORY[0x277CCDAB0] percentUnit];
      v119 = [v117 quantityWithUnit:percentUnit doubleValue:(v112 + 20)];
      [v203 setObject:v119 forKeyedSubscript:*MEMORY[0x277CCC558]];

      v120 = [MEMORY[0x277CCABB0] numberWithInteger:v113 + 1];
      [v203 setObject:v120 forKeyedSubscript:*MEMORY[0x277CCC550]];

      v121 = *(v96 + 32);
      switch(v121)
      {
        case '%':
          v134 = MEMORY[0x277CCD7E8];
          v135 = [MEMORY[0x277CCDAB0] unitFromString:@"count/min"];
          v136 = [v134 quantityWithUnit:v135 doubleValue:173.0];
          [v203 setObject:v136 forKeyedSubscript:*MEMORY[0x277CCE168]];

          currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
          date = [MEMORY[0x277CBEAA8] date];
          v139 = [currentCalendar dateByAddingUnit:8 value:-1 toDate:date options:0];

          v140 = *(v96 + 56);
          v141 = [v140 hk_isAfterDate:v139];

          if (v141)
          {
            v142 = MEMORY[0x277CCD7E8];
            inchUnit = [MEMORY[0x277CCDAB0] inchUnit];
            v144 = [v142 quantityWithUnit:inchUnit doubleValue:1236.0];

            [v203 setObject:v144 forKeyedSubscript:*MEMORY[0x277CCC488]];
          }

          v121 = *(v96 + 32);
          break;
        case '.':
          v122 = *(v96 + 24);
          v214 = 0u;
          v215 = 0u;
          v216 = 0u;
          v217 = 0u;
          v123 = v122;
          v124 = [v123 countByEnumeratingWithState:&v214 objects:&buf count:16];
          if (v124)
          {
            v195 = v20;
            v125 = 0;
            v126 = *v215;
            do
            {
              for (i = 0; i != v124; ++i)
              {
                if (*v215 != v126)
                {
                  objc_enumerationMutation(v123);
                }

                if ([*(*(&v214 + 1) + 8 * i) type] == 3)
                {
                  ++v125;
                }
              }

              v124 = [v123 countByEnumeratingWithState:&v214 objects:&buf count:16];
            }

            while (v124);

            v20 = v195;
            if (v125 >= 1)
            {
              yardUnit = [MEMORY[0x277CCDAB0] yardUnit];
              [v200 doubleValueForUnit:yardUnit];
              v130 = v129;

              v131 = MEMORY[0x277CCD7E8];
              yardUnit2 = [MEMORY[0x277CCDAB0] yardUnit];
              v133 = [v131 quantityWithUnit:yardUnit2 doubleValue:(v130 / v125)];

              [v203 setObject:v133 forKeyedSubscript:*MEMORY[0x277CCC4D0]];
            }
          }

          else
          {
          }

          [v203 setObject:&unk_283CB1FB0 forKeyedSubscript:*MEMORY[0x277CCC510]];
          v175 = [MEMORY[0x277CCABB0] numberWithInteger:*(v96 + 144)];
          [v203 setObject:v175 forKeyedSubscript:*MEMORY[0x277CCC518]];

          [v203 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CCC4C0]];
          v176 = MEMORY[0x277CCD7E8];
          countUnit = [MEMORY[0x277CCDAB0] countUnit];
          v170 = [v176 quantityWithUnit:countUnit doubleValue:*(v96 + 136)];

          v178 = MEMORY[0x277CCDBE8];
          v179 = *(v96 + 32);
          v180 = *(v96 + 56);
          v173 = [v178 _workoutWithActivityType:v179 startDate:v180 endDate:v202 workoutEvents:*(v96 + 24) workoutActivities:0 duration:v199 totalActiveEnergyBurned:0.0 totalBasalEnergyBurned:0 totalDistance:v200 totalSwimmingStrokeCount:v170 totalFlightsClimbed:0 goalType:0 goal:0 device:0 metadata:v203];

LABEL_160:
          v167 = v173;
LABEL_161:
          v183 = *(v96 + 48);
          [v167 _setGoal:v183];

          [v167 _setGoalType:*(v96 + 40)];
LABEL_162:

          if (v167)
          {
            [collectionCopy addObjectFromWatch:v167];
            v184 = burnedCopy[33];
            if (v184)
            {
              v184 = v184[1];
            }

            v185 = v184;
            uUID = [v167 UUID];
            [collectionCopy setAssociatedObjectUUIDs:v185 forObjectUUID:uUID];

            [v167 workoutActivityType];
            if (HKCoreMotionSupportsEstimatedWorkoutEffortForActivityType())
            {
              [(HDDemoDataActivitySampleGenerator *)burnedCopy _generateWorkoutEffortWithObjectCollection:collectionCopy forWorkout:v167 dataType:*MEMORY[0x277CCCB68]];
            }

            v187 = burnedCopy[33];
            if (v187 && v187[4] == 84 || ([(HDDemoDataActivitySampleGenerator *)burnedCopy _generateWorkoutEffortWithObjectCollection:collectionCopy forWorkout:v167 dataType:*MEMORY[0x277CCCCD8]], (v187 = burnedCopy[33]) != 0))
            {
              v187 = v187[2];
            }

            v188 = v187;
            uUID2 = [v167 UUID];
            [collectionCopy setLooseAssociatedObjectUUIDs:v188 forObjectUUID:uUID2];
          }

          burnedCopy2 = burnedCopy;
LABEL_173:
          v190 = burnedCopy2[32];
          burnedCopy2[32] = 0;

          uUID10 = burnedCopy2[33];
          burnedCopy2[33] = 0;
LABEL_174:

          goto LABEL_175;
        case 'C':
        case '=':
          v145 = objc_alloc(MEMORY[0x277CCA970]);
          v146 = *(v96 + 56);
          v147 = [v145 initWithStartDate:v146 endDate:v202];

          v148 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v149 = MEMORY[0x277CCD7E8];
          v150 = [MEMORY[0x277CCDAB0] unitFromString:@"mi/hr"];
          v151 = [v149 quantityWithUnit:v150 doubleValue:7.7];
          [v148 setObject:v151 forKeyedSubscript:*MEMORY[0x277CCC470]];

          v152 = MEMORY[0x277CCD7E8];
          v153 = [MEMORY[0x277CCDAB0] unitFromString:@"mi/hr"];
          v154 = [v152 quantityWithUnit:v153 doubleValue:12.0];
          [v148 setObject:v154 forKeyedSubscript:*MEMORY[0x277CCC4E8]];

          v155 = MEMORY[0x277CCD7E8];
          percentUnit2 = [MEMORY[0x277CCDAB0] percentUnit];
          v157 = [v155 quantityWithUnit:percentUnit2 doubleValue:15.0];
          [v148 setObject:v157 forKeyedSubscript:*MEMORY[0x277CCC430]];

          v158 = MEMORY[0x277CCD7E8];
          meterUnit2 = [MEMORY[0x277CCDAB0] meterUnit];
          v160 = [v158 quantityWithUnit:meterUnit2 doubleValue:472.1];
          [v148 setObject:v160 forKeyedSubscript:*MEMORY[0x277CCC490]];

          v161 = MEMORY[0x277CCD7E8];
          meterUnit3 = [MEMORY[0x277CCDAB0] meterUnit];
          v163 = [v161 quantityWithUnit:meterUnit3 doubleValue:5.0];
          [v148 setObject:v163 forKeyedSubscript:*MEMORY[0x277CCC488]];

          v164 = [MEMORY[0x277CCDC68] workoutEventWithType:7 dateInterval:v147 metadata:v148];
          [*(v96 + 24) addObject:v164];

          v121 = *(v96 + 32);
          break;
        default:
          v141 = 0;
          break;
      }

      v165 = MEMORY[0x277CCDBE8];
      v166 = *(v96 + 56);
      v167 = [v165 _workoutWithActivityType:v121 startDate:v166 endDate:v202 workoutEvents:*(v96 + 24) totalEnergyBurned:v199 totalDistance:v200 device:0 metadata:v203];

      if (!v141)
      {
        goto LABEL_161;
      }

      v168 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v169 = [v168 pathForResource:@"GoldenGateLocationSeriesTrimmed" ofType:@"json"];

      v170 = v169;
      v171 = v201;
      v172 = v198;
      v173 = v167;
      v197 = v172;
      if (v171)
      {
        if (v172)
        {
LABEL_149:
          v174 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v170];
          if (v174)
          {
            v218[0] = 0;
            v196 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v174 options:4 error:v218];
            v194 = v218[0];
            if (v196)
            {
              *&v214 = 0;
              *(&v214 + 1) = &v214;
              *&v215 = 0x3032000000;
              *(&v215 + 1) = __Block_byref_object_copy__78;
              *&v216 = __Block_byref_object_dispose__78;
              *(&v216 + 1) = [v173 startDate];
              *&buf = MEMORY[0x277D85DD0];
              *(&buf + 1) = 3221225472;
              v220 = __90___HDDemoDataActivityWorkoutState_addWorkoutRouteFromFilePath_profile_provenance_workout___block_invoke;
              v221 = &unk_27861EE10;
              v225 = &v214;
              v222 = v171;
              v223 = v197;
              v224 = v96;
              [v196 enumerateObjectsUsingBlock:&buf];

              _Block_object_dispose(&v214, 8);
            }

            else
            {
              _HKInitializeLogging();
              v182 = *MEMORY[0x277CCC2B8];
              if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf) = 138543362;
                *(&buf + 4) = v170;
                _os_log_impl(&dword_228986000, v182, OS_LOG_TYPE_DEFAULT, "Could not serialize from JSON data at file path: %{public}@", &buf, 0xCu);
              }
            }
          }

          else
          {
            _HKInitializeLogging();
            v181 = *MEMORY[0x277CCC2B8];
            if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf) = 138543362;
              *(&buf + 4) = v170;
              _os_log_impl(&dword_228986000, v181, OS_LOG_TYPE_DEFAULT, "Could not get data from file path: %{public}@", &buf, 0xCu);
            }
          }

          goto LABEL_160;
        }
      }

      else
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:sel_addWorkoutRouteFromFilePath_profile_provenance_workout_ object:v96 file:@"HDDemoDataActivitySampleGenerator.m" lineNumber:2696 description:{@"Invalid parameter not satisfying: %@", @"profile != nil"}];

        if (v197)
        {
          goto LABEL_149;
        }
      }

      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:sel_addWorkoutRouteFromFilePath_profile_provenance_workout_ object:v96 file:@"HDDemoDataActivitySampleGenerator.m" lineNumber:2697 description:{@"Invalid parameter not satisfying: %@", @"provenance != nil"}];

      goto LABEL_149;
    }

    [HDDemoDataActivitySampleGenerator _generateRunningWorkoutDataWithObjectCollection:collectionCopy demoPerson:personCopy workoutState:v92];
    goto LABEL_106;
  }

  burnedCopy10 = burned;
  if (walkingCopy)
  {
    v41 = *(burned + 264);
    quantity = [walkingCopy quantity];
    kilocalorieUnit2 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
    [quantity doubleValueForUnit:kilocalorieUnit2];
    if (v41)
    {
      *(v41 + 64) = v44 + *(v41 + 64);
    }

    v45 = *(burned + 264);
    uUID3 = [walkingCopy UUID];
    if (v45)
    {
      [*(v45 + 8) hk_appendBytesWithUUID:uUID3];
    }

    burnedCopy10 = burned;
  }

  if (cyclingCopy)
  {
    v47 = *(burnedCopy10 + 264);
    quantity2 = [cyclingCopy quantity];
    meterUnit4 = [MEMORY[0x277CCDAB0] meterUnit];
    [quantity2 doubleValueForUnit:meterUnit4];
    if (v47)
    {
      *(v47 + 72) = v50 + *(v47 + 72);
    }

    v51 = *(burned + 264);
    uUID4 = [cyclingCopy UUID];
    if (v51)
    {
      [*(v51 + 8) hk_appendBytesWithUUID:uUID4];
    }

    burnedCopy10 = burned;
  }

  if (skiingCopy)
  {
    v53 = *(burnedCopy10 + 264);
    quantity3 = [skiingCopy quantity];
    meterUnit5 = [MEMORY[0x277CCDAB0] meterUnit];
    [quantity3 doubleValueForUnit:meterUnit5];
    if (v53)
    {
      *(v53 + 80) = v56 + *(v53 + 80);
    }

    v57 = *(burned + 264);
    uUID5 = [skiingCopy UUID];
    if (v57)
    {
      [*(v57 + 8) hk_appendBytesWithUUID:uUID5];
    }

    burnedCopy10 = burned;
  }

  if (rowingCopy)
  {
    v59 = *(burnedCopy10 + 264);
    quantity4 = [rowingCopy quantity];
    meterUnit6 = [MEMORY[0x277CCDAB0] meterUnit];
    [quantity4 doubleValueForUnit:meterUnit6];
    if (v59)
    {
      *(v59 + 96) = v62 + *(v59 + 96);
    }

    v63 = *(burned + 264);
    uUID6 = [rowingCopy UUID];
    if (v63)
    {
      [*(v63 + 8) hk_appendBytesWithUUID:uUID6];
    }

    burnedCopy10 = burned;
  }

  if (sportsCopy)
  {
    v65 = *(burnedCopy10 + 264);
    quantity5 = [sportsCopy quantity];
    meterUnit7 = [MEMORY[0x277CCDAB0] meterUnit];
    [quantity5 doubleValueForUnit:meterUnit7];
    if (v65)
    {
      *(v65 + 104) = v68 + *(v65 + 104);
    }

    v69 = *(burned + 264);
    uUID7 = [sportsCopy UUID];
    if (v69)
    {
      [*(v69 + 8) hk_appendBytesWithUUID:uUID7];
    }

    burnedCopy10 = burned;
  }

  if (paddleSportsCopy)
  {
    v71 = *(burnedCopy10 + 264);
    quantity6 = [paddleSportsCopy quantity];
    meterUnit8 = [MEMORY[0x277CCDAB0] meterUnit];
    [quantity6 doubleValueForUnit:meterUnit8];
    if (v71)
    {
      *(v71 + 112) = v74 + *(v71 + 112);
    }

    v75 = *(burned + 264);
    uUID8 = [paddleSportsCopy UUID];
    if (v75)
    {
      [*(v75 + 8) hk_appendBytesWithUUID:uUID8];
    }

    burnedCopy10 = burned;
  }

  if (snowSportsCopy)
  {
    v77 = *(burnedCopy10 + 264);
    quantity7 = [snowSportsCopy quantity];
    meterUnit9 = [MEMORY[0x277CCDAB0] meterUnit];
    [quantity7 doubleValueForUnit:meterUnit9];
    if (v77)
    {
      *(v77 + 120) = v80 + *(v77 + 120);
    }

    v81 = *(burned + 264);
    uUID9 = [snowSportsCopy UUID];
    if (v81)
    {
      [*(v81 + 8) hk_appendBytesWithUUID:uUID9];
    }

    burnedCopy10 = burned;
  }

  if (timeCopy)
  {
    v83 = *(burnedCopy10 + 264);
    quantity8 = [timeCopy quantity];
    meterUnit10 = [MEMORY[0x277CCDAB0] meterUnit];
    [quantity8 doubleValueForUnit:meterUnit10];
    if (v83)
    {
      *(v83 + 128) = v86 + *(v83 + 128);
    }

    v87 = *(burned + 264);
    uUID10 = [timeCopy UUID];
    if (v87)
    {
      [*(v87 + 8) hk_appendBytesWithUUID:uUID10];
    }

    goto LABEL_174;
  }

LABEL_175:

  v191 = *MEMORY[0x277D85DE8];
}

- (void)_generateHIITWorkoutDataWithObjectCollection:(void *)collection demoPerson:
{
  v10[300] = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  v7 = a2;
  v10[0] = &unk_283CB0EB8;
  v10[1] = &unk_283CB0ED0;
  v10[2] = &unk_283CB0EE8;
  v10[3] = &unk_283CB0F00;
  v10[4] = &unk_283CB0F18;
  v10[5] = &unk_283CB0F30;
  v10[6] = &unk_283CB0F48;
  v10[7] = &unk_283CB0F18;
  v10[8] = &unk_283CB0F30;
  v10[9] = &unk_283CB0F60;
  v10[10] = &unk_283CB0F78;
  v10[11] = &unk_283CB0F78;
  v10[12] = &unk_283CB0F90;
  v10[13] = &unk_283CB0FA8;
  v10[14] = &unk_283CB0FC0;
  v10[15] = &unk_283CB0FD8;
  v10[16] = &unk_283CB0FC0;
  v10[17] = &unk_283CB0FF0;
  v10[18] = &unk_283CB1008;
  v10[19] = &unk_283CB1020;
  v10[20] = &unk_283CB1038;
  v10[21] = &unk_283CB1050;
  v10[22] = &unk_283CB1068;
  v10[23] = &unk_283CB1068;
  v10[24] = &unk_283CB1080;
  v10[25] = &unk_283CB1098;
  v10[26] = &unk_283CB10B0;
  v10[27] = &unk_283CB10C8;
  v10[28] = &unk_283CB10E0;
  v10[29] = &unk_283CB10F8;
  v10[30] = &unk_283CB1110;
  v10[31] = &unk_283CB1128;
  v10[32] = &unk_283CB1140;
  v10[33] = &unk_283CB1158;
  v10[34] = &unk_283CB10B0;
  v10[35] = &unk_283CB10E0;
  v10[36] = &unk_283CB1170;
  v10[37] = &unk_283CB1080;
  v10[38] = &unk_283CB10F8;
  v10[39] = &unk_283CB1188;
  v10[40] = &unk_283CB11A0;
  v10[41] = &unk_283CB11B8;
  v10[42] = &unk_283CB10F8;
  v10[43] = &unk_283CB11D0;
  v10[44] = &unk_283CB11E8;
  v10[45] = &unk_283CB11A0;
  v10[46] = &unk_283CB1188;
  v10[47] = &unk_283CB1200;
  v10[48] = &unk_283CB1218;
  v10[49] = &unk_283CB1230;
  v10[50] = &unk_283CB1050;
  v10[51] = &unk_283CB1068;
  v10[52] = &unk_283CB0F90;
  v10[53] = &unk_283CB1248;
  v10[54] = &unk_283CB1260;
  v10[55] = &unk_283CB1278;
  v10[56] = &unk_283CB1290;
  v10[57] = &unk_283CB1260;
  v10[58] = &unk_283CB12A8;
  v10[59] = &unk_283CB12C0;
  v10[60] = &unk_283CB1260;
  v10[61] = &unk_283CB1278;
  v10[62] = &unk_283CB12A8;
  v10[63] = &unk_283CB12D8;
  v10[64] = &unk_283CB0F78;
  v10[65] = &unk_283CB12F0;
  v10[66] = &unk_283CB1308;
  v10[67] = &unk_283CB1320;
  v10[68] = &unk_283CB1338;
  v10[69] = &unk_283CB12A8;
  v10[70] = &unk_283CB1350;
  v10[71] = &unk_283CB1110;
  v10[72] = &unk_283CB11D0;
  v10[73] = &unk_283CB1200;
  v10[74] = &unk_283CB1368;
  v10[75] = &unk_283CB1230;
  v10[76] = &unk_283CB1218;
  v10[77] = &unk_283CB1200;
  v10[78] = &unk_283CB1188;
  v10[79] = &unk_283CB1380;
  v10[80] = &unk_283CB1230;
  v10[81] = &unk_283CB1200;
  v10[82] = &unk_283CB1368;
  v10[83] = &unk_283CB1398;
  v10[84] = &unk_283CB13B0;
  v10[85] = &unk_283CB1188;
  v10[134] = &unk_283CB1260;
  v10[86] = &unk_283CB13C8;
  v10[87] = &unk_283CB13B0;
  v10[88] = &unk_283CB1230;
  v10[142] = &unk_283CB12D8;
  v10[89] = &unk_283CB13E0;
  v10[90] = &unk_283CB1110;
  v10[171] = &unk_283CB1158;
  v10[173] = &unk_283CB1578;
  v10[175] = &unk_283CB15A8;
  v10[176] = &unk_283CB15C0;
  v10[91] = &unk_283CB1290;
  v10[92] = &unk_283CB13F8;
  v10[135] = &unk_283CB0FA8;
  v10[177] = &unk_283CB0FA8;
  v10[178] = &unk_283CB1248;
  v10[179] = &unk_283CB15D8;
  v10[93] = &unk_283CB1410;
  v10[94] = &unk_283CB1428;
  v10[193] = &unk_283CB11B8;
  v10[95] = &unk_283CB1440;
  v10[96] = &unk_283CB1458;
  v10[97] = &unk_283CB1350;
  v10[98] = &unk_283CB1470;
  v10[99] = &unk_283CB12C0;
  v10[100] = &unk_283CB1350;
  v10[101] = &unk_283CB1488;
  v10[102] = &unk_283CB14A0;
  v10[103] = &unk_283CB14B8;
  v10[104] = &unk_283CB11D0;
  v10[105] = &unk_283CB11E8;
  v10[106] = &unk_283CB13C8;
  v10[107] = &unk_283CB14D0;
  v10[108] = &unk_283CB1368;
  v10[109] = &unk_283CB13C8;
  v10[110] = &unk_283CB13B0;
  v10[111] = &unk_283CB1380;
  v10[112] = &unk_283CB1200;
  v10[113] = &unk_283CB1110;
  v10[114] = &unk_283CB13B0;
  v10[115] = &unk_283CB13C8;
  v10[116] = &unk_283CB1230;
  v10[117] = &unk_283CB1398;
  v10[118] = &unk_283CB14E8;
  v10[119] = &unk_283CB1500;
  v10[120] = &unk_283CB1518;
  v10[121] = &unk_283CB13E0;
  v10[122] = &unk_283CB13B0;
  v10[123] = &unk_283CB13C8;
  v10[124] = &unk_283CB14D0;
  v10[125] = &unk_283CB1218;
  v10[126] = &unk_283CB1380;
  v10[127] = &unk_283CB13C8;
  v10[128] = &unk_283CB1368;
  v10[129] = &unk_283CB1200;
  v10[130] = &unk_283CB1110;
  v10[131] = &unk_283CB1170;
  v10[132] = &unk_283CB1038;
  v10[133] = &unk_283CB1530;
  v10[136] = &unk_283CB1458;
  v10[137] = &unk_283CB1548;
  v10[138] = &unk_283CB1350;
  v10[139] = &unk_283CB12C0;
  v10[140] = &unk_283CB1428;
  v10[141] = &unk_283CB1350;
  v10[143] = &unk_283CB1428;
  v10[144] = &unk_283CB1458;
  v10[145] = &unk_283CB1458;
  v10[146] = &unk_283CB1488;
  v10[147] = &unk_283CB1560;
  v10[148] = &unk_283CB1350;
  v10[149] = &unk_283CB12C0;
  v10[150] = &unk_283CB1350;
  v10[151] = &unk_283CB1110;
  v10[152] = &unk_283CB11D0;
  v10[153] = &unk_283CB1200;
  v10[154] = &unk_283CB1368;
  v10[155] = &unk_283CB1230;
  v10[156] = &unk_283CB1218;
  v10[157] = &unk_283CB1200;
  v10[158] = &unk_283CB1188;
  v10[159] = &unk_283CB1380;
  v10[160] = &unk_283CB1230;
  v10[161] = &unk_283CB1200;
  v10[162] = &unk_283CB1368;
  v10[163] = &unk_283CB1398;
  v10[164] = &unk_283CB13B0;
  v10[165] = &unk_283CB1188;
  v10[166] = &unk_283CB13C8;
  v10[167] = &unk_283CB13B0;
  v10[168] = &unk_283CB1230;
  v10[169] = &unk_283CB13E0;
  v10[170] = &unk_283CB1110;
  v10[172] = &unk_283CB10C8;
  v10[174] = &unk_283CB1590;
  v10[180] = &unk_283CB1350;
  v10[181] = &unk_283CB1488;
  v10[182] = &unk_283CB14A0;
  v10[183] = &unk_283CB14B8;
  v10[184] = &unk_283CB11D0;
  v10[185] = &unk_283CB11E8;
  v10[186] = &unk_283CB13C8;
  v10[187] = &unk_283CB14D0;
  v10[188] = &unk_283CB1368;
  v10[189] = &unk_283CB13C8;
  v10[190] = &unk_283CB1218;
  v10[191] = &unk_283CB1230;
  v10[192] = &unk_283CB13B0;
  v10[194] = &unk_283CB1380;
  v10[195] = &unk_283CB1230;
  v10[196] = &unk_283CB13B0;
  v10[197] = &unk_283CB14E8;
  v10[198] = &unk_283CB1518;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:arc4random_uniform(0x14u) + 187];
  v10[211] = &unk_283CB1170;
  v10[213] = &unk_283CB14A0;
  v10[215] = &unk_283CB0F90;
  v10[216] = &unk_283CB1488;
  v10[219] = &unk_283CB1290;
  v10[222] = &unk_283CB1470;
  v10[226] = &unk_283CB1560;
  v10[252] = &unk_283CB14B8;
  v10[258] = &unk_283CB1278;
  v10[263] = &unk_283CB0FD8;
  v10[264] = &unk_283CB1098;
  v10[277] = &unk_283CB1398;
  v10[278] = &unk_283CB14E8;
  v10[199] = v4;
  v10[200] = &unk_283CB1518;
  v10[201] = &unk_283CB13E0;
  v10[202] = &unk_283CB13B0;
  v10[203] = &unk_283CB13C8;
  v10[204] = &unk_283CB1368;
  v10[205] = &unk_283CB13B0;
  v10[206] = &unk_283CB1200;
  v10[207] = &unk_283CB13C8;
  v10[208] = &unk_283CB13C8;
  v10[209] = &unk_283CB1188;
  v10[210] = &unk_283CB11D0;
  v10[212] = &unk_283CB1068;
  v10[214] = &unk_283CB12C0;
  v10[217] = &unk_283CB1440;
  v10[218] = &unk_283CB1350;
  v10[220] = &unk_283CB1440;
  v10[221] = &unk_283CB1428;
  v10[223] = &unk_283CB1440;
  v10[224] = &unk_283CB1458;
  v10[225] = &unk_283CB1350;
  v10[227] = &unk_283CB1458;
  v10[228] = &unk_283CB1350;
  v10[229] = &unk_283CB12C0;
  v10[230] = &unk_283CB1350;
  v10[231] = &unk_283CB1110;
  v10[232] = &unk_283CB11D0;
  v10[233] = &unk_283CB1200;
  v10[234] = &unk_283CB1368;
  v10[235] = &unk_283CB1230;
  v10[236] = &unk_283CB1218;
  v10[237] = &unk_283CB1200;
  v10[238] = &unk_283CB1188;
  v10[239] = &unk_283CB1380;
  v10[240] = &unk_283CB13B0;
  v10[241] = &unk_283CB1380;
  v10[242] = &unk_283CB14D0;
  v10[243] = &unk_283CB13E0;
  v10[244] = &unk_283CB1218;
  v10[245] = &unk_283CB1200;
  v10[246] = &unk_283CB13B0;
  v10[247] = &unk_283CB13B0;
  v10[248] = &unk_283CB1200;
  v10[249] = &unk_283CB13E0;
  v10[250] = &unk_283CB11D0;
  v10[251] = &unk_283CB15F0;
  v10[253] = &unk_283CB1530;
  v10[254] = &unk_283CB1458;
  v10[255] = &unk_283CB1608;
  v10[256] = &unk_283CB1440;
  v10[257] = &unk_283CB1428;
  v10[259] = &unk_283CB12C0;
  v10[260] = &unk_283CB1428;
  v10[261] = &unk_283CB1548;
  v10[262] = &unk_283CB1530;
  v10[265] = &unk_283CB11E8;
  v10[266] = &unk_283CB13C8;
  v10[267] = &unk_283CB14D0;
  v10[268] = &unk_283CB1368;
  v10[269] = &unk_283CB13C8;
  v10[270] = &unk_283CB13B0;
  v10[271] = &unk_283CB1380;
  v10[272] = &unk_283CB1200;
  v10[273] = &unk_283CB1110;
  v10[274] = &unk_283CB13B0;
  v10[275] = &unk_283CB13C8;
  v10[276] = &unk_283CB1230;
  v10[279] = &unk_283CB1500;
  v10[280] = &unk_283CB1518;
  v10[281] = &unk_283CB13E0;
  v10[282] = &unk_283CB13B0;
  v10[283] = &unk_283CB1200;
  v10[284] = &unk_283CB11E8;
  v10[285] = &unk_283CB1110;
  v10[286] = &unk_283CB1068;
  v10[287] = &unk_283CB1080;
  v10[288] = &unk_283CB10E0;
  v10[289] = &unk_283CB10C8;
  v10[290] = &unk_283CB1110;
  v10[291] = &unk_283CB1038;
  v10[292] = &unk_283CB1590;
  v10[293] = &unk_283CB13F8;
  v10[294] = &unk_283CB1410;
  v10[295] = &unk_283CB1350;
  v10[296] = &unk_283CB1458;
  v10[297] = &unk_283CB1548;
  v10[298] = &unk_283CB1350;
  v10[299] = &unk_283CB12C0;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:300];

  [HDDemoDataActivitySampleGenerator _generateWorkoutDataWithHeartRates:v5 recoveryHeartRates:&unk_283CAEAD0 objectCollection:v7 demoPerson:*(self + 264) workoutState:?];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_generateSwimmingWorkoutDataWithObjectCollection:(void *)collection demoPerson:
{
  v21 = a2;
  collectionCopy = collection;
  [*(self + 256) swimmingSwimSegmentTime];
  v7 = v6;
  [*(self + 256) swimmingRestSegmentTime];
  v9 = v8;
  [*(self + 256) swimmingSwimSegmentTime];
  v11 = v10;
  if ([*(self + 256) numSwimmingSegments] >= 2)
  {
    v12 = 0;
    v13 = 0;
    v14 = v7 + v9;
    do
    {
      v15 = *(self + 264);
      if (v15)
      {
        v16 = *(v15 + 56);
      }

      else
      {
        v16 = 0;
      }

      v17 = [v16 dateByAddingTimeInterval:v14 * v12];

      [*(self + 256) distanceSwimmingSegmentInYards];
      -[HDDemoDataActivitySampleGenerator _generateSwimmingSegmentDataWithStartDate:segmentTime:segmentDistance:numLaps:strokeStyle:objectCollection:demoPerson:](self, v17, [*(self + 256) swimmingNumLapsPerSegment], objc_msgSend(*(self + 256), "swimmingStrokeStyle"), v21, collectionCopy, v11, v18);
      ++v12;
      v13 = v17;
    }

    while ([*(self + 256) numSwimmingSegments] - 1 > v12);
    if (v17)
    {
      v19 = [v17 dateByAddingTimeInterval:v14];

      [*(self + 256) distanceSwimmingSegmentInYards];
      -[HDDemoDataActivitySampleGenerator _generateSwimmingSegmentDataWithStartDate:segmentTime:segmentDistance:numLaps:strokeStyle:objectCollection:demoPerson:](self, v19, [*(self + 256) swimmingNumLapsPerSegment] / 2, objc_msgSend(*(self + 256), "swimmingStrokeStyle"), v21, collectionCopy, v11 * 0.5, v20 * 0.5);
      [HDDemoDataActivitySampleGenerator _generateWorkoutDataWithHeartRates:&unk_283CAEB00 recoveryHeartRates:v21 objectCollection:*(self + 264) demoPerson:? workoutState:?];
    }
  }
}

- (void)_generateEllipticalWorkoutDataWithObjectCollection:(void *)collection demoPerson:
{
  v10[300] = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  v7 = a2;
  v10[0] = &unk_283CB1770;
  v10[1] = &unk_283CB1788;
  v10[2] = &unk_283CB0F30;
  v10[3] = &unk_283CB0F48;
  v10[4] = &unk_283CB1770;
  v10[5] = &unk_283CB1668;
  v10[6] = &unk_283CB0F30;
  v10[7] = &unk_283CB1770;
  v10[8] = &unk_283CB1818;
  v10[9] = &unk_283CB1770;
  v10[10] = &unk_283CB0F60;
  v10[11] = &unk_283CB1818;
  v10[12] = &unk_283CB1650;
  v10[13] = &unk_283CB1788;
  v10[14] = &unk_283CB1770;
  v10[15] = &unk_283CB1650;
  v10[16] = &unk_283CB1668;
  v10[17] = &unk_283CB1818;
  v10[18] = &unk_283CB1770;
  v10[19] = &unk_283CB1818;
  v10[20] = &unk_283CB1680;
  v10[21] = &unk_283CB0F60;
  v10[22] = &unk_283CB1308;
  v10[23] = &unk_283CB17E8;
  v10[24] = &unk_283CB1668;
  v10[25] = &unk_283CB1800;
  v10[26] = &unk_283CB1308;
  v10[27] = &unk_283CB1638;
  v10[28] = &unk_283CB0F78;
  v10[29] = &unk_283CB0F78;
  v10[30] = &unk_283CB1650;
  v10[31] = &unk_283CB1620;
  v10[32] = &unk_283CB12D8;
  v10[33] = &unk_283CB1338;
  v10[34] = &unk_283CB12D8;
  v10[35] = &unk_283CB1440;
  v10[36] = &unk_283CB1470;
  v10[37] = &unk_283CB1458;
  v10[38] = &unk_283CB1488;
  v10[39] = &unk_283CB1608;
  v10[40] = &unk_283CB1458;
  v10[41] = &unk_283CB1458;
  v10[42] = &unk_283CB1488;
  v10[43] = &unk_283CB1530;
  v10[44] = &unk_283CB0FA8;
  v10[45] = &unk_283CB0F90;
  v10[46] = &unk_283CB0FA8;
  v10[47] = &unk_283CB13F8;
  v10[48] = &unk_283CB14B8;
  v10[49] = &unk_283CB15A8;
  v10[50] = &unk_283CB0FC0;
  v10[51] = &unk_283CB14B8;
  v10[52] = &unk_283CB0FC0;
  v10[53] = &unk_283CB0FD8;
  v10[54] = &unk_283CB14B8;
  v10[55] = &unk_283CB1068;
  v10[56] = &unk_283CB0FF0;
  v10[57] = &unk_283CB17D0;
  v10[58] = &unk_283CB10C8;
  v10[59] = &unk_283CB1050;
  v10[60] = &unk_283CB17D0;
  v10[61] = &unk_283CB17D0;
  v10[62] = &unk_283CB1050;
  v10[63] = &unk_283CB1008;
  v10[64] = &unk_283CB1098;
  v10[65] = &unk_283CB0FF0;
  v10[66] = &unk_283CB1050;
  v10[67] = &unk_283CB1050;
  v10[68] = &unk_283CB10C8;
  v10[69] = &unk_283CB1020;
  v10[70] = &unk_283CB1080;
  v10[71] = &unk_283CB1068;
  v10[72] = &unk_283CB1080;
  v10[73] = &unk_283CB1068;
  v10[74] = &unk_283CB10C8;
  v10[75] = &unk_283CB10B0;
  v10[76] = &unk_283CB10C8;
  v10[77] = &unk_283CB1050;
  v10[78] = &unk_283CB10B0;
  v10[79] = &unk_283CB10B0;
  v10[80] = &unk_283CB1158;
  v10[81] = &unk_283CB1050;
  v10[82] = &unk_283CB1050;
  v10[83] = &unk_283CB10B0;
  v10[84] = &unk_283CB10B0;
  v10[85] = &unk_283CB1080;
  v10[86] = &unk_283CB11B8;
  v10[87] = &unk_283CB10B0;
  v10[88] = &unk_283CB1128;
  v10[89] = &unk_283CB11B8;
  v10[90] = &unk_283CB1080;
  v10[91] = &unk_283CB1080;
  v10[92] = &unk_283CB11B8;
  v10[93] = &unk_283CB10B0;
  v10[94] = &unk_283CB1128;
  v10[95] = &unk_283CB1170;
  v10[96] = &unk_283CB10E0;
  v10[97] = &unk_283CB1080;
  v10[98] = &unk_283CB1158;
  v10[99] = &unk_283CB10B0;
  v10[100] = &unk_283CB1128;
  v10[101] = &unk_283CB1170;
  v10[102] = &unk_283CB1170;
  v10[103] = &unk_283CB1170;
  v10[104] = &unk_283CB10B0;
  v10[105] = &unk_283CB10E0;
  v10[106] = &unk_283CB1110;
  v10[107] = &unk_283CB10F8;
  v10[108] = &unk_283CB11D0;
  v10[109] = &unk_283CB10E0;
  v10[110] = &unk_283CB1128;
  v10[111] = &unk_283CB1110;
  v10[112] = &unk_283CB1170;
  v10[113] = &unk_283CB11B8;
  v10[114] = &unk_283CB11D0;
  v10[115] = &unk_283CB1128;
  v10[116] = &unk_283CB1128;
  v10[117] = &unk_283CB1140;
  v10[118] = &unk_283CB1158;
  v10[119] = &unk_283CB1140;
  v10[120] = &unk_283CB11B8;
  v10[121] = &unk_283CB11E8;
  v10[122] = &unk_283CB1110;
  v10[123] = &unk_283CB11D0;
  v10[124] = &unk_283CB11E8;
  v10[125] = &unk_283CB1188;
  v10[126] = &unk_283CB1140;
  v10[127] = &unk_283CB17A0;
  v10[128] = &unk_283CB11D0;
  v10[129] = &unk_283CB11A0;
  v10[130] = &unk_283CB17A0;
  v10[131] = &unk_283CB11D0;
  v10[132] = &unk_283CB11E8;
  v10[133] = &unk_283CB1128;
  v10[134] = &unk_283CB1188;
  v10[135] = &unk_283CB11D0;
  v10[136] = &unk_283CB17A0;
  v10[137] = &unk_283CB17A0;
  v10[138] = &unk_283CB1170;
  v10[139] = &unk_283CB11A0;
  v10[140] = &unk_283CB11A0;
  v10[141] = &unk_283CB1170;
  v10[142] = &unk_283CB11E8;
  v10[143] = &unk_283CB11D0;
  v10[144] = &unk_283CB17A0;
  v10[145] = &unk_283CB1110;
  v10[146] = &unk_283CB11A0;
  v10[147] = &unk_283CB1188;
  v10[148] = &unk_283CB11D0;
  v10[149] = &unk_283CB1170;
  v10[150] = &unk_283CB1200;
  v10[151] = &unk_283CB1140;
  v10[152] = &unk_283CB1110;
  v10[153] = &unk_283CB11A0;
  v10[154] = &unk_283CB1200;
  v10[155] = &unk_283CB11A0;
  v10[156] = &unk_283CB11D0;
  v10[157] = &unk_283CB11E8;
  v10[158] = &unk_283CB1188;
  v10[159] = &unk_283CB1188;
  v10[160] = &unk_283CB17A0;
  v10[161] = &unk_283CB1218;
  v10[162] = &unk_283CB1200;
  v10[163] = &unk_283CB1218;
  v10[164] = &unk_283CB11A0;
  v10[165] = &unk_283CB17A0;
  v10[166] = &unk_283CB17A0;
  v10[167] = &unk_283CB1200;
  v10[168] = &unk_283CB1380;
  v10[169] = &unk_283CB11A0;
  v10[170] = &unk_283CB1380;
  v10[171] = &unk_283CB1230;
  v10[172] = &unk_283CB11A0;
  v10[173] = &unk_283CB11E8;
  v10[174] = &unk_283CB1230;
  v10[175] = &unk_283CB1188;
  v10[176] = &unk_283CB11E8;
  v10[177] = &unk_283CB11A0;
  v10[178] = &unk_283CB1218;
  v10[179] = &unk_283CB17A0;
  v10[180] = &unk_283CB17A0;
  v10[181] = &unk_283CB11A0;
  v10[182] = &unk_283CB11E8;
  v10[183] = &unk_283CB17A0;
  v10[184] = &unk_283CB17A0;
  v10[185] = &unk_283CB1380;
  v10[186] = &unk_283CB1380;
  v10[187] = &unk_283CB1380;
  v10[188] = &unk_283CB17A0;
  v10[189] = &unk_283CB11A0;
  v10[190] = &unk_283CB11E8;
  v10[191] = &unk_283CB1200;
  v10[192] = &unk_283CB1218;
  v10[193] = &unk_283CB11A0;
  v10[194] = &unk_283CB1218;
  v10[195] = &unk_283CB11A0;
  v10[196] = &unk_283CB14D0;
  v10[197] = &unk_283CB13C8;
  v10[198] = &unk_283CB1188;
  v10[199] = &unk_283CB14D0;
  v10[200] = &unk_283CB1218;
  v10[201] = &unk_283CB14D0;
  v10[202] = &unk_283CB13B0;
  v10[203] = &unk_283CB13C8;
  v10[204] = &unk_283CB1368;
  v10[205] = &unk_283CB1200;
  v10[206] = &unk_283CB1218;
  v10[207] = &unk_283CB1218;
  v10[208] = &unk_283CB1368;
  v10[209] = &unk_283CB1398;
  v10[210] = &unk_283CB14D0;
  v10[211] = &unk_283CB13B0;
  v10[212] = &unk_283CB1368;
  v10[213] = &unk_283CB1230;
  v10[214] = &unk_283CB13B0;
  v10[215] = &unk_283CB1200;
  v10[216] = &unk_283CB1368;
  v10[217] = &unk_283CB1200;
  v10[218] = &unk_283CB13C8;
  v10[219] = &unk_283CB1380;
  v10[220] = &unk_283CB1218;
  v10[221] = &unk_283CB1200;
  v10[222] = &unk_283CB1368;
  v10[223] = &unk_283CB1368;
  v10[224] = &unk_283CB1230;
  v10[225] = &unk_283CB1368;
  v10[226] = &unk_283CB1398;
  v10[227] = &unk_283CB13B0;
  v10[228] = &unk_283CB1230;
  v10[229] = &unk_283CB13C8;
  v10[230] = &unk_283CB1218;
  v10[231] = &unk_283CB1380;
  v10[232] = &unk_283CB1398;
  v10[233] = &unk_283CB1230;
  v10[234] = &unk_283CB1200;
  v10[235] = &unk_283CB14D0;
  v10[236] = &unk_283CB14D0;
  v10[237] = &unk_283CB1368;
  v10[238] = &unk_283CB1200;
  v10[239] = &unk_283CB13C8;
  v10[240] = &unk_283CB1218;
  v10[241] = &unk_283CB1398;
  v10[242] = &unk_283CB14D0;
  v10[243] = &unk_283CB13B0;
  v10[244] = &unk_283CB14D0;
  v10[245] = &unk_283CB13B0;
  v10[246] = &unk_283CB13B0;
  v10[247] = &unk_283CB13C8;
  v10[248] = &unk_283CB13B0;
  v10[249] = &unk_283CB1398;
  v10[250] = &unk_283CB1200;
  v10[251] = &unk_283CB13C8;
  v10[252] = &unk_283CB13B0;
  v10[253] = &unk_283CB1200;
  v10[254] = &unk_283CB13C8;
  v10[255] = &unk_283CB1368;
  v10[256] = &unk_283CB1218;
  v10[257] = &unk_283CB1218;
  v10[258] = &unk_283CB1200;
  v10[259] = &unk_283CB1230;
  v10[260] = &unk_283CB1230;
  v10[261] = &unk_283CB1380;
  v10[262] = &unk_283CB1218;
  v10[263] = &unk_283CB1230;
  v10[264] = &unk_283CB13B0;
  v10[265] = &unk_283CB13C8;
  v10[266] = &unk_283CB1218;
  v10[267] = &unk_283CB1368;
  v10[268] = &unk_283CB1230;
  v10[269] = &unk_283CB1380;
  v10[270] = &unk_283CB1218;
  v10[271] = &unk_283CB14D0;
  v10[272] = &unk_283CB1398;
  v10[273] = &unk_283CB1230;
  v10[274] = &unk_283CB13B0;
  v10[275] = &unk_283CB13C8;
  v10[276] = &unk_283CB1368;
  v10[277] = &unk_283CB1230;
  v10[278] = &unk_283CB1218;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:arc4random_uniform(0xAu) + 177];
  v10[279] = v4;
  v10[280] = &unk_283CB1398;
  v10[281] = &unk_283CB13C8;
  v10[282] = &unk_283CB1398;
  v10[283] = &unk_283CB1200;
  v10[284] = &unk_283CB1230;
  v10[285] = &unk_283CB1398;
  v10[286] = &unk_283CB13C8;
  v10[287] = &unk_283CB14D0;
  v10[288] = &unk_283CB1230;
  v10[289] = &unk_283CB13B0;
  v10[290] = &unk_283CB13C8;
  v10[291] = &unk_283CB1218;
  v10[292] = &unk_283CB1200;
  v10[293] = &unk_283CB1230;
  v10[294] = &unk_283CB1140;
  v10[295] = &unk_283CB1140;
  v10[296] = &unk_283CB11A0;
  v10[297] = &unk_283CB1140;
  v10[298] = &unk_283CB1170;
  v10[299] = &unk_283CB1170;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:300];

  [HDDemoDataActivitySampleGenerator _generateWorkoutDataWithHeartRates:v5 recoveryHeartRates:&unk_283CAEB18 objectCollection:v7 demoPerson:*(self + 264) workoutState:?];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_generateRunningWorkoutDataWithObjectCollection:(void *)collection demoPerson:(void *)person workoutState:(void *)state
{
  v11[540] = *MEMORY[0x277D85DE8];
  stateCopy = state;
  personCopy = person;
  collectionCopy = collection;
  v11[0] = &unk_283CB1650;
  v11[1] = &unk_283CB0F60;
  v11[2] = &unk_283CB1770;
  v11[3] = &unk_283CB1650;
  v11[4] = &unk_283CB17E8;
  v11[5] = &unk_283CB1800;
  v11[6] = &unk_283CB1338;
  v11[7] = &unk_283CB1620;
  v11[8] = &unk_283CB12D8;
  v11[9] = &unk_283CB1308;
  v11[10] = &unk_283CB12A8;
  v11[11] = &unk_283CB12C0;
  v11[12] = &unk_283CB12A8;
  v11[13] = &unk_283CB1440;
  v11[14] = &unk_283CB12C0;
  v11[15] = &unk_283CB1560;
  v11[16] = &unk_283CB1290;
  v11[17] = &unk_283CB1560;
  v11[18] = &unk_283CB14A0;
  v11[19] = &unk_283CB1530;
  v11[20] = &unk_283CB14A0;
  v11[21] = &unk_283CB1290;
  v11[22] = &unk_283CB15C0;
  v11[23] = &unk_283CB14A0;
  v11[24] = &unk_283CB0FA8;
  v11[25] = &unk_283CB1560;
  v11[26] = &unk_283CB1248;
  v11[27] = &unk_283CB1290;
  v11[28] = &unk_283CB1248;
  v11[29] = &unk_283CB15D8;
  v11[30] = &unk_283CB1290;
  v11[31] = &unk_283CB14A0;
  v11[32] = &unk_283CB1530;
  v11[33] = &unk_283CB14A0;
  v11[34] = &unk_283CB1578;
  v11[35] = &unk_283CB0FA8;
  v11[36] = &unk_283CB1578;
  v11[37] = &unk_283CB0F90;
  v11[38] = &unk_283CB0F90;
  v11[39] = &unk_283CB14B8;
  v11[40] = &unk_283CB1008;
  v11[41] = &unk_283CB15A8;
  v11[42] = &unk_283CB0FD8;
  v11[43] = &unk_283CB1020;
  v11[44] = &unk_283CB0FC0;
  v11[45] = &unk_283CB0FF0;
  v11[46] = &unk_283CB1008;
  v11[47] = &unk_283CB15A8;
  v11[48] = &unk_283CB1008;
  v11[49] = &unk_283CB0FC0;
  v11[50] = &unk_283CB1050;
  v11[51] = &unk_283CB10C8;
  v11[52] = &unk_283CB1008;
  v11[53] = &unk_283CB0FC0;
  v11[54] = &unk_283CB1098;
  v11[55] = &unk_283CB1068;
  v11[56] = &unk_283CB1098;
  v11[57] = &unk_283CB1080;
  v11[58] = &unk_283CB1170;
  v11[59] = &unk_283CB10B0;
  v11[60] = &unk_283CB11D0;
  v11[61] = &unk_283CB1128;
  v11[62] = &unk_283CB10E0;
  v11[63] = &unk_283CB1170;
  v11[64] = &unk_283CB11B8;
  v11[65] = &unk_283CB11B8;
  v11[66] = &unk_283CB1170;
  v11[67] = &unk_283CB11B8;
  v11[68] = &unk_283CB1098;
  v11[69] = &unk_283CB11D0;
  v11[70] = &unk_283CB10E0;
  v11[71] = &unk_283CB1038;
  v11[72] = &unk_283CB1128;
  v11[73] = &unk_283CB1098;
  v11[74] = &unk_283CB10E0;
  v11[75] = &unk_283CB1140;
  v11[76] = &unk_283CB1050;
  v11[77] = &unk_283CB11D0;
  v11[78] = &unk_283CB11E8;
  v11[79] = &unk_283CB1110;
  v11[80] = &unk_283CB1170;
  v11[81] = &unk_283CB1140;
  v11[82] = &unk_283CB11B8;
  v11[83] = &unk_283CB11D0;
  v11[84] = &unk_283CB11B8;
  v11[85] = &unk_283CB10E0;
  v11[86] = &unk_283CB1170;
  v11[87] = &unk_283CB11E8;
  v11[88] = &unk_283CB11D0;
  v11[89] = &unk_283CB1140;
  v11[90] = &unk_283CB11A0;
  v11[91] = &unk_283CB10F8;
  v11[92] = &unk_283CB1110;
  v11[93] = &unk_283CB11E8;
  v11[94] = &unk_283CB17A0;
  v11[95] = &unk_283CB1188;
  v11[96] = &unk_283CB11B8;
  v11[97] = &unk_283CB1140;
  v11[98] = &unk_283CB1110;
  v11[99] = &unk_283CB1140;
  v11[100] = &unk_283CB1380;
  v11[101] = &unk_283CB11E8;
  v11[102] = &unk_283CB1188;
  v11[103] = &unk_283CB1380;
  v11[104] = &unk_283CB1380;
  v11[105] = &unk_283CB17A0;
  v11[106] = &unk_283CB11D0;
  v11[107] = &unk_283CB1230;
  v11[108] = &unk_283CB17A0;
  v11[109] = &unk_283CB11D0;
  v11[110] = &unk_283CB1380;
  v11[111] = &unk_283CB1380;
  v11[112] = &unk_283CB13B0;
  v11[113] = &unk_283CB1230;
  v11[114] = &unk_283CB14D0;
  v11[115] = &unk_283CB1380;
  v11[116] = &unk_283CB1188;
  v11[117] = &unk_283CB11E8;
  v11[118] = &unk_283CB14D0;
  v11[119] = &unk_283CB17A0;
  v11[120] = &unk_283CB17A0;
  v11[121] = &unk_283CB14D0;
  v11[122] = &unk_283CB1380;
  v11[123] = &unk_283CB14D0;
  v11[124] = &unk_283CB17A0;
  v11[125] = &unk_283CB11E8;
  v11[126] = &unk_283CB14D0;
  v11[127] = &unk_283CB1380;
  v11[128] = &unk_283CB1218;
  v11[129] = &unk_283CB13B0;
  v11[130] = &unk_283CB1380;
  v11[131] = &unk_283CB11E8;
  v11[132] = &unk_283CB1188;
  v11[133] = &unk_283CB1380;
  v11[134] = &unk_283CB1380;
  v11[135] = &unk_283CB17A0;
  v11[136] = &unk_283CB11D0;
  v11[137] = &unk_283CB1230;
  v11[138] = &unk_283CB17A0;
  v11[139] = &unk_283CB11D0;
  v11[140] = &unk_283CB1380;
  v11[141] = &unk_283CB1380;
  v11[142] = &unk_283CB13B0;
  v11[143] = &unk_283CB1230;
  v11[144] = &unk_283CB14D0;
  v11[145] = &unk_283CB1380;
  v11[146] = &unk_283CB1188;
  v11[147] = &unk_283CB11E8;
  v11[148] = &unk_283CB14D0;
  v11[149] = &unk_283CB17A0;
  v11[150] = &unk_283CB17A0;
  v11[151] = &unk_283CB14D0;
  v11[152] = &unk_283CB1380;
  v11[153] = &unk_283CB14D0;
  v11[154] = &unk_283CB17A0;
  v11[155] = &unk_283CB11E8;
  v11[156] = &unk_283CB14D0;
  v11[157] = &unk_283CB1380;
  v11[158] = &unk_283CB1218;
  v11[159] = &unk_283CB13B0;
  v11[160] = &unk_283CB1230;
  v11[161] = &unk_283CB13B0;
  v11[162] = &unk_283CB1200;
  v11[163] = &unk_283CB1380;
  v11[164] = &unk_283CB11E8;
  v11[165] = &unk_283CB1230;
  v11[166] = &unk_283CB17A0;
  v11[167] = &unk_283CB1140;
  v11[168] = &unk_283CB1110;
  v11[169] = &unk_283CB1128;
  v11[170] = &unk_283CB17A0;
  v11[171] = &unk_283CB14D0;
  v11[172] = &unk_283CB1380;
  v11[173] = &unk_283CB14D0;
  v11[174] = &unk_283CB17A0;
  v11[175] = &unk_283CB11E8;
  v11[176] = &unk_283CB14D0;
  v11[177] = &unk_283CB1380;
  v11[178] = &unk_283CB1218;
  v11[179] = &unk_283CB13B0;
  v11[180] = &unk_283CB1200;
  v11[181] = &unk_283CB1140;
  v11[182] = &unk_283CB11B8;
  v11[183] = &unk_283CB1170;
  v11[184] = &unk_283CB1200;
  v11[185] = &unk_283CB1110;
  v11[186] = &unk_283CB11B8;
  v11[187] = &unk_283CB1128;
  v11[188] = &unk_283CB1188;
  v11[189] = &unk_283CB1140;
  v11[190] = &unk_283CB1128;
  v11[191] = &unk_283CB1380;
  v11[192] = &unk_283CB17A0;
  v11[193] = &unk_283CB17A0;
  v11[194] = &unk_283CB11A0;
  v11[195] = &unk_283CB13C8;
  v11[196] = &unk_283CB13B0;
  v11[197] = &unk_283CB1380;
  v11[198] = &unk_283CB1200;
  v11[199] = &unk_283CB1188;
  v11[200] = &unk_283CB1218;
  v11[201] = &unk_283CB1398;
  v11[202] = &unk_283CB17A0;
  v11[203] = &unk_283CB14D0;
  v11[204] = &unk_283CB11A0;
  v11[205] = &unk_283CB13B0;
  v11[206] = &unk_283CB14D0;
  v11[207] = &unk_283CB1218;
  v11[208] = &unk_283CB1230;
  v11[209] = &unk_283CB1230;
  v11[210] = &unk_283CB13B0;
  v11[211] = &unk_283CB1398;
  v11[212] = &unk_283CB1200;
  v11[213] = &unk_283CB14D0;
  v11[214] = &unk_283CB1230;
  v11[215] = &unk_283CB1398;
  v11[216] = &unk_283CB1230;
  v11[217] = &unk_283CB1218;
  v11[218] = &unk_283CB17A0;
  v11[219] = &unk_283CB13C8;
  v11[220] = &unk_283CB11E8;
  v11[221] = &unk_283CB1368;
  v11[222] = &unk_283CB11E8;
  v11[223] = &unk_283CB1368;
  v11[224] = &unk_283CB13B0;
  v11[225] = &unk_283CB11E8;
  v11[226] = &unk_283CB1380;
  v11[227] = &unk_283CB13C8;
  v11[228] = &unk_283CB1398;
  v11[229] = &unk_283CB13C8;
  v11[230] = &unk_283CB17A0;
  v11[231] = &unk_283CB1380;
  v11[232] = &unk_283CB1200;
  v11[233] = &unk_283CB11E8;
  v11[234] = &unk_283CB13C8;
  v11[235] = &unk_283CB1188;
  v11[236] = &unk_283CB13B0;
  v11[237] = &unk_283CB1188;
  v11[238] = &unk_283CB13C8;
  v11[239] = &unk_283CB1398;
  v11[240] = &unk_283CB1128;
  v11[241] = &unk_283CB1380;
  v11[242] = &unk_283CB17A0;
  v11[243] = &unk_283CB17A0;
  v11[244] = &unk_283CB11A0;
  v11[245] = &unk_283CB13C8;
  v11[246] = &unk_283CB13B0;
  v11[247] = &unk_283CB1380;
  v11[248] = &unk_283CB1200;
  v11[249] = &unk_283CB1188;
  v11[250] = &unk_283CB1230;
  v11[251] = &unk_283CB13B0;
  v11[252] = &unk_283CB1200;
  v11[253] = &unk_283CB1380;
  v11[254] = &unk_283CB11E8;
  v11[255] = &unk_283CB1230;
  v11[256] = &unk_283CB17A0;
  v11[257] = &unk_283CB1140;
  v11[258] = &unk_283CB1110;
  v11[259] = &unk_283CB1128;
  v11[260] = &unk_283CB1218;
  v11[261] = &unk_283CB1398;
  v11[262] = &unk_283CB17A0;
  v11[263] = &unk_283CB14D0;
  v11[264] = &unk_283CB11A0;
  v11[265] = &unk_283CB13B0;
  v11[266] = &unk_283CB14D0;
  v11[267] = &unk_283CB1218;
  v11[268] = &unk_283CB1230;
  v11[269] = &unk_283CB1230;
  v11[270] = &unk_283CB13B0;
  v11[271] = &unk_283CB1398;
  v11[272] = &unk_283CB1200;
  v11[273] = &unk_283CB14D0;
  v11[274] = &unk_283CB1230;
  v11[275] = &unk_283CB1398;
  v11[276] = &unk_283CB1230;
  v11[277] = &unk_283CB1218;
  v11[278] = &unk_283CB17A0;
  v11[279] = &unk_283CB13C8;
  v11[280] = &unk_283CB1230;
  v11[281] = &unk_283CB13B0;
  v11[282] = &unk_283CB1200;
  v11[283] = &unk_283CB1380;
  v11[284] = &unk_283CB11E8;
  v11[285] = &unk_283CB1230;
  v11[286] = &unk_283CB17A0;
  v11[287] = &unk_283CB1140;
  v11[288] = &unk_283CB1110;
  v11[289] = &unk_283CB1128;
  v11[290] = &unk_283CB1200;
  v11[291] = &unk_283CB1140;
  v11[292] = &unk_283CB11B8;
  v11[293] = &unk_283CB1170;
  v11[294] = &unk_283CB1200;
  v11[295] = &unk_283CB1110;
  v11[296] = &unk_283CB11B8;
  v11[297] = &unk_283CB1128;
  v11[298] = &unk_283CB1188;
  v11[299] = &unk_283CB1140;
  v11[300] = &unk_283CB1128;
  v11[301] = &unk_283CB1380;
  v11[302] = &unk_283CB17A0;
  v11[303] = &unk_283CB17A0;
  v11[304] = &unk_283CB11A0;
  v11[305] = &unk_283CB13C8;
  v11[306] = &unk_283CB13B0;
  v11[307] = &unk_283CB1380;
  v11[308] = &unk_283CB1200;
  v11[309] = &unk_283CB1188;
  v11[310] = &unk_283CB1200;
  v11[311] = &unk_283CB1140;
  v11[312] = &unk_283CB11B8;
  v11[313] = &unk_283CB1170;
  v11[314] = &unk_283CB1200;
  v11[315] = &unk_283CB1110;
  v11[316] = &unk_283CB11B8;
  v11[317] = &unk_283CB1128;
  v11[318] = &unk_283CB1188;
  v11[319] = &unk_283CB1140;
  v11[320] = &unk_283CB1128;
  v11[321] = &unk_283CB1380;
  v11[322] = &unk_283CB17A0;
  v11[323] = &unk_283CB17A0;
  v11[324] = &unk_283CB11A0;
  v11[325] = &unk_283CB13C8;
  v11[326] = &unk_283CB13B0;
  v11[327] = &unk_283CB1380;
  v11[328] = &unk_283CB1200;
  v11[329] = &unk_283CB1188;
  v11[330] = &unk_283CB1218;
  v11[331] = &unk_283CB1398;
  v11[332] = &unk_283CB17A0;
  v11[333] = &unk_283CB14D0;
  v11[334] = &unk_283CB11A0;
  v11[335] = &unk_283CB13B0;
  v11[336] = &unk_283CB14D0;
  v11[337] = &unk_283CB1218;
  v11[338] = &unk_283CB1230;
  v11[339] = &unk_283CB1230;
  v11[340] = &unk_283CB13B0;
  v11[341] = &unk_283CB1398;
  v11[342] = &unk_283CB1200;
  v11[343] = &unk_283CB14D0;
  v11[344] = &unk_283CB1230;
  v11[345] = &unk_283CB1398;
  v11[346] = &unk_283CB1230;
  v11[347] = &unk_283CB1218;
  v11[348] = &unk_283CB17A0;
  v11[349] = &unk_283CB13C8;
  v11[350] = &unk_283CB1218;
  v11[351] = &unk_283CB1398;
  v11[352] = &unk_283CB17A0;
  v11[353] = &unk_283CB14D0;
  v11[354] = &unk_283CB11A0;
  v11[355] = &unk_283CB13B0;
  v11[356] = &unk_283CB14D0;
  v11[357] = &unk_283CB1218;
  v11[358] = &unk_283CB1230;
  v11[359] = &unk_283CB1230;
  v11[360] = &unk_283CB13B0;
  v11[361] = &unk_283CB1398;
  v11[362] = &unk_283CB1200;
  v11[363] = &unk_283CB14D0;
  v11[364] = &unk_283CB1230;
  v11[365] = &unk_283CB1398;
  v11[366] = &unk_283CB1230;
  v11[367] = &unk_283CB1218;
  v11[368] = &unk_283CB17A0;
  v11[369] = &unk_283CB13C8;
  v11[370] = &unk_283CB1230;
  v11[371] = &unk_283CB13B0;
  v11[372] = &unk_283CB1200;
  v11[373] = &unk_283CB1380;
  v11[374] = &unk_283CB11E8;
  v11[375] = &unk_283CB1230;
  v11[376] = &unk_283CB17A0;
  v11[377] = &unk_283CB1140;
  v11[378] = &unk_283CB1110;
  v11[379] = &unk_283CB1128;
  v11[380] = &unk_283CB1200;
  v11[381] = &unk_283CB1140;
  v11[382] = &unk_283CB11B8;
  v11[383] = &unk_283CB1170;
  v11[384] = &unk_283CB1200;
  v11[385] = &unk_283CB1110;
  v11[386] = &unk_283CB11B8;
  v11[387] = &unk_283CB1128;
  v11[388] = &unk_283CB1188;
  v11[389] = &unk_283CB1140;
  v11[390] = &unk_283CB1128;
  v11[391] = &unk_283CB1380;
  v11[392] = &unk_283CB17A0;
  v11[393] = &unk_283CB17A0;
  v11[394] = &unk_283CB11A0;
  v11[395] = &unk_283CB13C8;
  v11[396] = &unk_283CB13B0;
  v11[397] = &unk_283CB1380;
  v11[398] = &unk_283CB1200;
  v11[399] = &unk_283CB1188;
  v11[400] = &unk_283CB1218;
  v11[401] = &unk_283CB1398;
  v11[402] = &unk_283CB17A0;
  v11[403] = &unk_283CB14D0;
  v11[404] = &unk_283CB11A0;
  v11[405] = &unk_283CB13B0;
  v11[406] = &unk_283CB14D0;
  v11[407] = &unk_283CB1218;
  v11[408] = &unk_283CB1230;
  v11[409] = &unk_283CB1230;
  v11[410] = &unk_283CB13B0;
  v11[411] = &unk_283CB1398;
  v11[412] = &unk_283CB1200;
  v11[413] = &unk_283CB14D0;
  v11[414] = &unk_283CB1230;
  v11[415] = &unk_283CB1398;
  v11[416] = &unk_283CB1230;
  v11[417] = &unk_283CB1218;
  v11[418] = &unk_283CB17A0;
  v11[419] = &unk_283CB13C8;
  v11[420] = &unk_283CB11E8;
  v11[421] = &unk_283CB1368;
  v11[422] = &unk_283CB11E8;
  v11[423] = &unk_283CB1368;
  v11[424] = &unk_283CB13B0;
  v11[425] = &unk_283CB11E8;
  v11[426] = &unk_283CB1380;
  v11[427] = &unk_283CB13C8;
  v11[428] = &unk_283CB1398;
  v11[429] = &unk_283CB13C8;
  v11[430] = &unk_283CB17A0;
  v11[431] = &unk_283CB1380;
  v11[432] = &unk_283CB1200;
  v11[433] = &unk_283CB11E8;
  v11[434] = &unk_283CB13C8;
  v11[435] = &unk_283CB1188;
  v11[436] = &unk_283CB13B0;
  v11[437] = &unk_283CB1188;
  v11[438] = &unk_283CB13C8;
  v11[439] = &unk_283CB1398;
  v11[440] = &unk_283CB1380;
  v11[441] = &unk_283CB11E8;
  v11[442] = &unk_283CB1380;
  v11[443] = &unk_283CB1200;
  v11[444] = &unk_283CB1188;
  v11[445] = &unk_283CB17A0;
  v11[446] = &unk_283CB13C8;
  v11[447] = &unk_283CB1368;
  v11[448] = &unk_283CB1380;
  v11[449] = &unk_283CB1380;
  v11[450] = &unk_283CB1380;
  v11[451] = &unk_283CB13C8;
  v11[452] = &unk_283CB14D0;
  v11[453] = &unk_283CB1200;
  v11[454] = &unk_283CB1200;
  v11[455] = &unk_283CB13C8;
  v11[456] = &unk_283CB1368;
  v11[457] = &unk_283CB1200;
  v11[458] = &unk_283CB1218;
  v11[459] = &unk_283CB13C8;
  v11[460] = &unk_283CB13B0;
  v11[461] = &unk_283CB13B0;
  v11[462] = &unk_283CB1218;
  v11[463] = &unk_283CB14E8;
  v11[464] = &unk_283CB11A0;
  v11[465] = &unk_283CB1368;
  v11[466] = &unk_283CB1380;
  v11[467] = &unk_283CB13C8;
  v11[468] = &unk_283CB13C8;
  v11[469] = &unk_283CB13B0;
  v11[470] = &unk_283CB18A8;
  v11[471] = &unk_283CB14E8;
  v11[472] = &unk_283CB14D0;
  v11[473] = &unk_283CB13B0;
  v11[474] = &unk_283CB1500;
  v11[475] = &unk_283CB18C0;
  v11[476] = &unk_283CB14D0;
  v11[477] = &unk_283CB13C8;
  v11[478] = &unk_283CB1398;
  v11[479] = &unk_283CB1518;
  v11[480] = &unk_283CB1398;
  v11[481] = &unk_283CB13C8;
  v11[482] = &unk_283CB13E0;
  v11[483] = &unk_283CB1518;
  v11[484] = &unk_283CB14E8;
  v11[485] = &unk_283CB1368;
  v11[486] = &unk_283CB1218;
  v11[487] = &unk_283CB1218;
  v11[488] = &unk_283CB1398;
  v11[489] = &unk_283CB13B0;
  v11[490] = &unk_283CB1500;
  v11[491] = &unk_283CB13C8;
  v11[492] = &unk_283CB18A8;
  v11[493] = &unk_283CB13C8;
  v11[494] = &unk_283CB18C0;
  v11[495] = &unk_283CB13B0;
  v11[496] = &unk_283CB1500;
  v11[497] = &unk_283CB1500;
  v11[498] = &unk_283CB1230;
  v11[499] = &unk_283CB1518;
  v11[500] = &unk_283CB1218;
  v11[501] = &unk_283CB1230;
  v11[502] = &unk_283CB13C8;
  v11[503] = &unk_283CB1218;
  v11[504] = &unk_283CB1368;
  v11[505] = &unk_283CB1518;
  v11[506] = &unk_283CB1218;
  v11[507] = &unk_283CB13E0;
  v11[508] = &unk_283CB1218;
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:arc4random_uniform(0xAu) + 187];
  v11[509] = v5;
  v11[510] = &unk_283CB14E8;
  v11[511] = &unk_283CB1230;
  v11[512] = &unk_283CB1518;
  v11[513] = &unk_283CB1398;
  v11[514] = &unk_283CB1218;
  v11[515] = &unk_283CB1218;
  v11[516] = &unk_283CB13B0;
  v11[517] = &unk_283CB1218;
  v11[518] = &unk_283CB1218;
  v11[519] = &unk_283CB17A0;
  v11[520] = &unk_283CB1188;
  v11[521] = &unk_283CB17A0;
  v11[522] = &unk_283CB1188;
  v11[523] = &unk_283CB13B0;
  v11[524] = &unk_283CB1170;
  v11[525] = &unk_283CB11E8;
  v11[526] = &unk_283CB1140;
  v11[527] = &unk_283CB1200;
  v11[528] = &unk_283CB17A0;
  v11[529] = &unk_283CB11D0;
  v11[530] = &unk_283CB11A0;
  v11[531] = &unk_283CB11D0;
  v11[532] = &unk_283CB11D0;
  v11[533] = &unk_283CB11E8;
  v11[534] = &unk_283CB1200;
  v11[535] = &unk_283CB11D0;
  v11[536] = &unk_283CB1158;
  v11[537] = &unk_283CB1140;
  v11[538] = &unk_283CB1158;
  v11[539] = &unk_283CB10E0;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:540];

  [HDDemoDataActivitySampleGenerator _generateWorkoutDataWithHeartRates:v6 recoveryHeartRates:&unk_283CAEB30 objectCollection:collectionCopy demoPerson:stateCopy workoutState:?];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_generateUnderwaterDivingWorkoutDataWithObjectCollection:(void *)collection demoPerson:
{
  v29[120] = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  v20 = a2;
  v29[0] = &unk_283CB1B78;
  v29[1] = &unk_283CB1B90;
  v29[2] = &unk_283CB1BA8;
  v29[3] = &unk_283CB1BC0;
  v29[4] = &unk_283CB1BD8;
  v29[5] = &unk_283CB1BF0;
  v29[6] = &unk_283CB1C08;
  v29[7] = &unk_283CB1C20;
  v29[8] = &unk_283CB1C20;
  v29[9] = &unk_283CB1C38;
  v29[10] = &unk_283CB1C50;
  v29[11] = &unk_283CB1C68;
  v29[12] = &unk_283CB1C68;
  v29[13] = &unk_283CB1C80;
  v29[14] = &unk_283CB1C98;
  v29[15] = &unk_283CB1CB0;
  v29[16] = &unk_283CB1CC8;
  v29[17] = &unk_283CB1CE0;
  v29[18] = &unk_283CB1AE8;
  v29[19] = &unk_283CB1AA0;
  v29[20] = &unk_283CB1A88;
  v29[21] = &unk_283CB19E0;
  v29[22] = &unk_283CB1A28;
  v29[23] = &unk_283CB1920;
  v29[24] = &unk_283CB1B00;
  v29[25] = &unk_283CB19F8;
  v29[26] = &unk_283CB1908;
  v29[27] = &unk_283CB1950;
  v29[28] = &unk_283CB1848;
  v29[29] = &unk_283CB1740;
  v29[32] = &unk_283CB16B0;
  v29[33] = &unk_283CB16E0;
  v29[34] = &unk_283CB16C8;
  v29[35] = &unk_283CB1890;
  v29[30] = &unk_283CB16F8;
  v29[31] = &unk_283CB16C8;
  v29[36] = &unk_283CB1860;
  v29[37] = &unk_283CB16C8;
  v29[38] = &unk_283CB16C8;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:arc4random_uniform(0xAu) + 90];
  v29[39] = v4;
  v29[40] = &unk_283CB16C8;
  v29[41] = &unk_283CB1830;
  v29[42] = &unk_283CB0EB8;
  v29[43] = &unk_283CB1740;
  v29[44] = &unk_283CB1980;
  v29[45] = &unk_283CB1740;
  v29[46] = &unk_283CB18D8;
  v29[47] = &unk_283CB1908;
  v29[48] = &unk_283CB19F8;
  v29[49] = &unk_283CB1CF8;
  v29[50] = &unk_283CB1A28;
  v29[51] = &unk_283CB1A88;
  v29[52] = &unk_283CB1AA0;
  v29[53] = &unk_283CB1AE8;
  v29[54] = &unk_283CB1AD0;
  v29[55] = &unk_283CB1CE0;
  v29[56] = &unk_283CB1AA0;
  v29[57] = &unk_283CB1AD0;
  v29[58] = &unk_283CB1D10;
  v29[59] = &unk_283CB1AE8;
  v29[60] = &unk_283CB1CC8;
  v29[61] = &unk_283CB1D28;
  v29[62] = &unk_283CB1D40;
  v29[63] = &unk_283CB1D58;
  v29[64] = &unk_283CB1D70;
  v29[65] = &unk_283CB1D88;
  v29[66] = &unk_283CB1C98;
  v29[67] = &unk_283CB1DA0;
  v29[68] = &unk_283CB1C80;
  v29[69] = &unk_283CB1DB8;
  v29[70] = &unk_283CB1DD0;
  v29[71] = &unk_283CB1DA0;
  v29[72] = &unk_283CB1DE8;
  v29[73] = &unk_283CB1C98;
  v29[74] = &unk_283CB1C98;
  v29[75] = &unk_283CB1E00;
  v29[76] = &unk_283CB1E00;
  v29[77] = &unk_283CB1CB0;
  v29[78] = &unk_283CB1E18;
  v29[79] = &unk_283CB1D88;
  v29[80] = &unk_283CB1CB0;
  v29[81] = &unk_283CB1CB0;
  v29[82] = &unk_283CB1CB0;
  v29[83] = &unk_283CB1E30;
  v29[84] = &unk_283CB1D70;
  v29[85] = &unk_283CB1D70;
  v29[86] = &unk_283CB1E48;
  v29[87] = &unk_283CB1D58;
  v29[88] = &unk_283CB1D58;
  v29[89] = &unk_283CB1CB0;
  v29[90] = &unk_283CB1D88;
  v29[91] = &unk_283CB1DE8;
  v29[92] = &unk_283CB1E00;
  v29[93] = &unk_283CB1C98;
  v29[94] = &unk_283CB1C98;
  v29[95] = &unk_283CB1DA0;
  v29[96] = &unk_283CB1DB8;
  v29[97] = &unk_283CB1E60;
  v29[98] = &unk_283CB1C80;
  v29[99] = &unk_283CB1E78;
  v29[100] = &unk_283CB1E90;
  v29[101] = &unk_283CB1C68;
  v29[102] = &unk_283CB1C68;
  v29[103] = &unk_283CB1EA8;
  v29[104] = &unk_283CB1EC0;
  v29[105] = &unk_283CB1ED8;
  v29[106] = &unk_283CB1C20;
  v29[107] = &unk_283CB1EF0;
  v29[108] = &unk_283CB1EF0;
  v29[109] = &unk_283CB1EF0;
  v29[110] = &unk_283CB1EF0;
  v29[111] = &unk_283CB1EF0;
  v29[112] = &unk_283CB1EF0;
  v29[113] = &unk_283CB1EF0;
  v29[114] = &unk_283CB1BC0;
  v29[115] = &unk_283CB1F08;
  v29[116] = &unk_283CB1F20;
  v29[117] = &unk_283CB1F38;
  v29[118] = &unk_283CB1F38;
  v29[119] = &unk_283CB1B78;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:120];

  v6 = *MEMORY[0x277CCCC90];
  footUnit = [MEMORY[0x277CCDAB0] footUnit];
  v8 = *(self + 264);
  v9 = footUnit;
  v10 = v20;
  v11 = v8;
  v12 = MEMORY[0x277CCD830];
  v13 = v5;
  v14 = [v12 quantityTypeForIdentifier:v6];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __145__HDDemoDataActivitySampleGenerator__generateWorkoutDataForTypeIdentifier_unit_samples_objectCollection_demoPerson_sampleFrequency_workoutState___block_invoke;
  v23[3] = &unk_27861EDC0;
  v15 = v11;
  v24 = v15;
  v28 = 0x403E000000000000;
  v16 = v9;
  v25 = v16;
  v26 = v14;
  v17 = v10;
  v27 = v17;
  v18 = v14;
  [v13 enumerateObjectsUsingBlock:v23];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_generateCyclingFTPSamplesForDemoPerson:(void *)person sampleDate:(void *)date objectCollection:
{
  dateCopy = date;
  personCopy = person;
  v9 = a2;
  [v9 cyclingFTPMean];
  v11 = v10;
  [v9 cyclingFTPMeanStdDev];
  v13 = v12;

  v24 = [MEMORY[0x277CCABB0] numberWithDouble:v11 + arc4random_uniform(v13)];
  v14 = MEMORY[0x277CCD7E8];
  wattUnit = [MEMORY[0x277CCDAB0] wattUnit];
  [v24 doubleValue];
  v16 = [v14 quantityWithUnit:wattUnit doubleValue:?];

  v17 = MEMORY[0x277CCD800];
  v18 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCC9B8]];
  v19 = *(self + 264);
  if (v19)
  {
    v20 = *(v19 + 56);
  }

  else
  {
    v20 = 0;
  }

  v21 = [v17 quantitySampleWithType:v18 quantity:v16 startDate:v20 endDate:personCopy];

  [dateCopy addObjectFromWatch:v21];
  v22 = *(self + 264);
  uUID = [v21 UUID];
  if (v22)
  {
    [*(v22 + 8) hk_appendBytesWithUUID:uUID];
  }
}

- (void)_generateWorkoutEffortWithObjectCollection:(void *)collection forWorkout:(void *)workout dataType:
{
  v7 = MEMORY[0x277CCABB0];
  workoutCopy = workout;
  collectionCopy = collection;
  v10 = a2;
  v21 = [v7 numberWithUnsignedInt:arc4random_uniform(7u) + 3];
  v11 = MEMORY[0x277CCD7E8];
  appleEffortScoreUnit = [MEMORY[0x277CCDAB0] appleEffortScoreUnit];
  [v21 doubleValue];
  v13 = [v11 quantityWithUnit:appleEffortScoreUnit doubleValue:?];

  v14 = MEMORY[0x277CCD800];
  v15 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:workoutCopy];

  startDate = [collectionCopy startDate];
  endDate = [collectionCopy endDate];

  v18 = [v14 quantitySampleWithType:v15 quantity:v13 startDate:startDate endDate:endDate];

  [v10 addObjectFromWatch:v18];
  v19 = *(self + 264);
  uUID = [v18 UUID];
  if (v19)
  {
    [*(v19 + 16) hk_appendBytesWithUUID:uUID];
  }
}

- (void)_generateWorkoutDataWithHeartRates:(void *)rates recoveryHeartRates:(void *)heartRates objectCollection:demoPerson:workoutState:
{
  v39[1] = *MEMORY[0x277D85DE8];
  ratesCopy = rates;
  heartRatesCopy = heartRates;
  v9 = MEMORY[0x277CCDAB0];
  v10 = a2;
  selfCopy = self;
  _countPerMinuteUnit = [v9 _countPerMinuteUnit];
  v13 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
  v38 = *MEMORY[0x277CCE030];
  v39[0] = &unk_283CB1F50;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __132__HDDemoDataActivitySampleGenerator__generateWorkoutDataWithHeartRates_recoveryHeartRates_objectCollection_demoPerson_workoutState___block_invoke;
  v32[3] = &unk_27861ED98;
  v15 = heartRatesCopy;
  v33 = v15;
  v16 = _countPerMinuteUnit;
  v34 = v16;
  v17 = v13;
  v35 = v17;
  v36 = v14;
  v18 = ratesCopy;
  v37 = v18;
  v19 = v14;
  [selfCopy enumerateObjectsUsingBlock:v32];
  v20 = [selfCopy count];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __132__HDDemoDataActivitySampleGenerator__generateWorkoutDataWithHeartRates_recoveryHeartRates_objectCollection_demoPerson_workoutState___block_invoke_2;
  v26[3] = &unk_27861EDC0;
  v21 = v15;
  v27 = v21;
  v28 = v16;
  v31 = v20 / 0xA;
  v29 = v17;
  v22 = v18;
  v30 = v22;
  v23 = v17;
  v24 = v16;
  [v10 enumerateObjectsUsingBlock:v26];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_generateSwimmingSegmentDataWithStartDate:(uint64_t)date segmentTime:(uint64_t)time segmentDistance:(void *)distance numLaps:(void *)laps strokeStyle:(double)style objectCollection:(double)collection demoPerson:
{
  v71[1] = *MEMORY[0x277D85DE8];
  v13 = a2;
  distanceCopy = distance;
  lapsCopy = laps;
  v15 = [v13 dateByAddingTimeInterval:style];
  v64 = v13;
  v16 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v13 endDate:v15];
  v17 = [MEMORY[0x277CCDC68] workoutEventWithType:7 dateInterval:v16 metadata:0];
  v18 = *(self + 264);
  if (v18)
  {
    [*(v18 + 24) addObject:v17];
  }

  v19 = collection / date;
  v20 = MEMORY[0x277CCD7E8];
  yardUnit = [MEMORY[0x277CCDAB0] yardUnit];
  v22 = [v20 quantityWithUnit:yardUnit doubleValue:v19];

  v23 = v22;
  v24 = lapsCopy;
  yardUnit2 = [MEMORY[0x277CCDAB0] yardUnit];
  v65 = v23;
  [v23 doubleValueForUnit:yardUnit2];
  v27 = v26;

  [v24 swimmingStrokesPerYard];
  v29 = v27 * v28;
  v30 = arc4random_uniform(0x64u);
  v31 = v29 * (v30 / 1000.0 + v30 / 1000.0 * -0.5 + 1.0);
  if (v31 <= 0.00000011920929)
  {
    v34 = 0;
  }

  else
  {
    v32 = MEMORY[0x277CCD7E8];
    countUnit = [MEMORY[0x277CCDAB0] countUnit];
    v34 = [v32 quantityWithUnit:countUnit doubleValue:v31];
  }

  v63 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB38]];
  v62 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCC78]];
  v70 = *MEMORY[0x277CCC518];
  v35 = [MEMORY[0x277CCABB0] numberWithInteger:time];
  v71[0] = v35;
  v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:&v70 count:1];

  if (date >= 1)
  {
    v58 = v24;
    v59 = v17;
    v60 = v16;
    v61 = v15;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = style / date;
    v40 = 0x280D58000uLL;
    do
    {
      v41 = v38;
      v42 = v37;
      v37 = [v64 dateByAddingTimeInterval:{v39 * v36, v58, v59, v60, v61}];

      v38 = [v64 dateByAddingTimeInterval:v39 * ++v36];

      v43 = MEMORY[0x277CCDC68];
      v44 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v38 duration:0.0];
      v45 = [v43 workoutEventWithType:3 dateInterval:v44 metadata:v68];

      v46 = *(self + *(v40 + 3192));
      if (v46)
      {
        [*(v46 + 24) addObject:v45];
      }

      v47 = [MEMORY[0x277CCD800] quantitySampleWithType:v63 quantity:v65 startDate:v37 endDate:v38];
      v48 = *(self + *(v40 + 3192));
      if (v48)
      {
        *(v48 + 88) = v19 + *(v48 + 88);
      }

      [distanceCopy addObjectFromWatch:v47];
      v49 = *(self + *(v40 + 3192));
      uUID = [v47 UUID];
      if (v49)
      {
        [*(v49 + 8) hk_appendBytesWithUUID:uUID];
      }

      if (v34)
      {
        v51 = [MEMORY[0x277CCD800] quantitySampleWithType:v62 quantity:v34 startDate:v37 endDate:v38 metadata:v68];
        v52 = *(self + *(v40 + 3192));
        countUnit2 = [MEMORY[0x277CCDAB0] countUnit];
        [v34 doubleValueForUnit:countUnit2];
        if (v52)
        {
          *(v52 + 136) = v54 + *(v52 + 136);
        }

        [distanceCopy addObjectFromWatch:v51];
        v55 = *(self + 264);
        uUID2 = [v51 UUID];
        if (v55)
        {
          [*(v55 + 8) hk_appendBytesWithUUID:uUID2];
        }

        v40 = 0x280D58000;
      }
    }

    while (date != v36);

    v16 = v60;
    v15 = v61;
    v24 = v58;
    v17 = v59;
  }

  v57 = *MEMORY[0x277D85DE8];
}

void __132__HDDemoDataActivitySampleGenerator__generateWorkoutDataWithHeartRates_recoveryHeartRates_objectCollection_demoPerson_workoutState___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 56);
  }

  else
  {
    v5 = 0;
  }

  v6 = (6 * a3);
  v7 = a2;
  v16 = [v5 dateByAddingTimeInterval:v6];
  v8 = MEMORY[0x277CCD7E8];
  v9 = *(a1 + 40);
  [v7 doubleValue];
  v11 = v10;

  v12 = [v8 quantityWithUnit:v9 doubleValue:v11];
  v13 = [MEMORY[0x277CCD800] quantitySampleWithType:*(a1 + 48) quantity:v12 startDate:v16 endDate:v16 metadata:*(a1 + 56)];
  [*(a1 + 64) addObjectFromWatch:v13];
  v14 = *(a1 + 32);
  v15 = [v13 UUID];
  if (v14)
  {
    [*(v14 + 8) hk_appendBytesWithUUID:v15];
  }
}

void __132__HDDemoDataActivitySampleGenerator__generateWorkoutDataWithHeartRates_recoveryHeartRates_objectCollection_demoPerson_workoutState___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 56);
  }

  else
  {
    v5 = 0;
  }

  v6 = (5 * a3 + 60 * *(a1 + 64));
  v7 = a2;
  v8 = [v5 dateByAddingTimeInterval:v6];
  v9 = MEMORY[0x277CCD7E8];
  v10 = *(a1 + 40);
  [v7 doubleValue];
  v12 = v11;

  v13 = [v9 quantityWithUnit:v10 doubleValue:v12];
  v14 = MEMORY[0x277CCD800];
  v15 = *(a1 + 48);
  v19 = *MEMORY[0x277CCE030];
  v20[0] = &unk_283CB1F68;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v17 = [v14 quantitySampleWithType:v15 quantity:v13 startDate:v8 endDate:v8 metadata:v16];

  [*(a1 + 56) addObjectFromWatch:v17];
  v18 = *MEMORY[0x277D85DE8];
}

void __145__HDDemoDataActivitySampleGenerator__generateWorkoutDataForTypeIdentifier_unit_samples_objectCollection_demoPerson_sampleFrequency_workoutState___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 56);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 64) * a3;
  v7 = a2;
  v16 = [v5 dateByAddingTimeInterval:v6];
  v8 = MEMORY[0x277CCD7E8];
  v9 = *(a1 + 40);
  [v7 doubleValue];
  v11 = v10;

  v12 = [v8 quantityWithUnit:v9 doubleValue:v11];
  v13 = [MEMORY[0x277CCD800] quantitySampleWithType:*(a1 + 48) quantity:v12 startDate:v16 endDate:v16];
  [*(a1 + 56) addObjectFromWatch:v13];
  v14 = *(a1 + 32);
  v15 = [v13 UUID];
  if (v14)
  {
    [*(v14 + 8) hk_appendBytesWithUUID:v15];
  }
}

- (double)_generateWorkoutDataSamplesForDemoPerson:(void *)person atTime:(void *)time sampleDate:(void *)date addFromWatch:(void *)watch objectCollection:(double)collection nextSampleTime:(double)sampleTime typeIdentifier:(double)identifier unit:(double)self0 sampleMean:(double)self1 sampleMeanStdDev:sampleFrequency:workoutState:
{
  v21 = a2;
  personCopy = person;
  timeCopy = time;
  dateCopy = date;
  watchCopy = watch;
  if (collection >= sampleTime)
  {
    sampleTime = sampleTime + mean;
    demoDataGenerator = [self demoDataGenerator];
    firstSampleDate = [demoDataGenerator firstSampleDate];
    v28 = [v21 compare:firstSampleDate];

    if (v28 != -1)
    {
      demoDataGenerator2 = [self demoDataGenerator];
      statisticsSampleGenerator = [demoDataGenerator2 statisticsSampleGenerator];
      [statisticsSampleGenerator computeNoiseFromTime:collection stdDev:unit];
      v32 = v31 + identifier;

      v33 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:timeCopy];
      v34 = [MEMORY[0x277CCD7E8] quantityWithUnit:dateCopy doubleValue:v32];
      v40 = v33;
      v35 = [MEMORY[0x277CCD800] quantitySampleWithType:v33 quantity:v34 startDate:v21 endDate:v21];
      [personCopy addObjectFromWatch:v35];
      demoDataGenerator3 = [self demoDataGenerator];
      generatorState = [demoDataGenerator3 generatorState];
      LODWORD(v33) = [generatorState isExercising];

      if (v33)
      {
        uUID = [v35 UUID];
        if (watchCopy)
        {
          [watchCopy[1] hk_appendBytesWithUUID:uUID];
        }
      }
    }
  }

  return sampleTime;
}

- (double)_computeExerciseTimeFromCurrentTime:(double)time mean:(double)mean stdDev:(double)dev
{
  timeCopy = time;
  demoDataGenerator = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  statisticsSampleGenerator = [demoDataGenerator statisticsSampleGenerator];
  [statisticsSampleGenerator computeStatisticalTimeFromCurrentTime:(timeCopy + 10) mean:mean stdDev:dev];
  v11 = v10;

  return v11;
}

- (id)_computeFlightsClimbedForDemoPerson:(id)person atTime:(double)time
{
  personCopy = person;
  demoDataGenerator = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  sleepSampleGenerator = [demoDataGenerator sleepSampleGenerator];
  v9 = [sleepSampleGenerator isDemoPersonAwake:personCopy atTime:time];

  if (v9 && ([personCopy flightsClimbedSampleFrequency], -[HDDemoDataActivitySampleGenerator _isDemoPersonWalking:atTime:samplePeriod:](self, "_isDemoPersonWalking:atTime:samplePeriod:", personCopy, time, v10)))
  {
    demoDataGenerator2 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v13 = [demoDataGenerator2 isDemoDataTimeInWeekend:currentCalendar calendar:time];

    if (v13)
    {
      [personCopy weekendSleepParameters];
    }

    else
    {
      [personCopy weekdaySleepParameters];
    }
    v15 = ;
    demoDataGenerator3 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    sleepSampleGenerator2 = [demoDataGenerator3 sleepSampleGenerator];
    [v15 bedtime];
    v19 = v18;
    [personCopy bedtimeNoiseStdDev];
    [sleepSampleGenerator2 computeSleepTimeFromCurrentTime:time mean:v19 stdDev:v20];
    v22 = v21;

    demoDataGenerator4 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    sleepSampleGenerator3 = [demoDataGenerator4 sleepSampleGenerator];
    [v15 wakeUpTime];
    v26 = v25;
    [personCopy wakeUpTimeNoiseStdDev];
    [sleepSampleGenerator3 computeSleepTimeFromCurrentTime:time mean:v26 stdDev:v27];
    v29 = v28;

    [personCopy flightsClimbedSampleFrequency];
    v31 = (v22 - v29) / v30 * 0.6;
    [personCopy flightsClimbedDailyMean];
    v33 = v32;
    demoDataGenerator5 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    statisticsSampleGenerator = [demoDataGenerator5 statisticsSampleGenerator];
    [personCopy flightsClimbedStdDev];
    [statisticsSampleGenerator computeNoiseFromTime:time + 1.0 stdDev:v36];
    v38 = (v33 + v37) / 2.5;

    v39 = v38 / v31;
    demoDataGenerator6 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    statisticsSampleGenerator2 = [demoDataGenerator6 statisticsSampleGenerator];
    [statisticsSampleGenerator2 pseudoRandomDoubleFromTime:time];
    v43 = v42;

    if (v43 < v39)
    {
      demoDataGenerator7 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      statisticsSampleGenerator3 = [demoDataGenerator7 statisticsSampleGenerator];
      [statisticsSampleGenerator3 computeNoiseFromTime:time stdDev:1.0];
      v47 = fabs(v46 + 2.5);

      v14 = [MEMORY[0x277CCABB0] numberWithInteger:v47];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (double)_computePercentCooledForDemoPerson:(id)person atTime:(double)time
{
  personCopy = person;
  [personCopy exerciseStopTime];
  v8 = v7;
  [personCopy exerciseStopTimeStdDev];
  [(HDDemoDataActivitySampleGenerator *)self _computeExerciseTimeFromCurrentTime:time mean:v8 stdDev:v9];
  v11 = v10;
  [personCopy exerciseCooldownTime];
  v12 = time - time;
  v14 = v11 + v13;
  if (v12 <= v11 || v12 > v14)
  {
    demoDataGenerator = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    generatorState = [demoDataGenerator generatorState];
    isExercising = [generatorState isExercising];

    if (isExercising)
    {
      v21 = 0.0;
    }

    else
    {
      v21 = 1.0;
    }
  }

  else
  {
    v19 = v12 - v11;
    [personCopy exerciseCooldownTime];
    v21 = v19 / v20;
  }

  return v21;
}

- (BOOL)_isDemoPersonCoolingDown:(id)down atTime:(double)time
{
  downCopy = down;
  demoDataGenerator = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  generatorState = [demoDataGenerator generatorState];
  isExercising = [generatorState isExercising];

  if (isExercising)
  {
    [downCopy exerciseStopTime];
    v11 = v10;
    [downCopy exerciseStopTimeStdDev];
    [(HDDemoDataActivitySampleGenerator *)self _computeExerciseTimeFromCurrentTime:time mean:v11 stdDev:v12];
    v14 = v13;
    [downCopy exerciseCooldownTime];
    v15 = time - time;
    v17 = v15 <= v14 + v16 && v15 > v14;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)_isDemoPersonSedentary:(id)sedentary atTime:(double)time
{
  sedentaryCopy = sedentary;
  demoDataGenerator = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  sleepSampleGenerator = [demoDataGenerator sleepSampleGenerator];
  v9 = [sleepSampleGenerator isDemoPersonAwake:sedentaryCopy atTime:time];

  if (!v9)
  {
    return 0;
  }

  demoDataGenerator2 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  generatorState = [demoDataGenerator2 generatorState];
  isExercising = [generatorState isExercising];

  if (isExercising)
  {
    return 0;
  }

  demoDataGenerator3 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  statisticsSampleGenerator = [demoDataGenerator3 statisticsSampleGenerator];
  [statisticsSampleGenerator computeNoiseFromTime:time stdDev:1.0];
  v13 = fabs(v16) >= 1.0;

  return v13;
}

- (BOOL)_isDemoPersonWalking:(id)walking atTime:(double)time samplePeriod:(double)period
{
  walkingCopy = walking;
  demoDataGenerator = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  sleepSampleGenerator = [demoDataGenerator sleepSampleGenerator];
  v10 = [sleepSampleGenerator isDemoPersonAwake:walkingCopy atTime:time];

  if (!v10)
  {
    return 0;
  }

  demoDataGenerator2 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  generatorState = [demoDataGenerator2 generatorState];
  isRunning = [generatorState isRunning];

  if (isRunning)
  {
    return 1;
  }

  demoDataGenerator3 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  statisticsSampleGenerator = [demoDataGenerator3 statisticsSampleGenerator];
  [statisticsSampleGenerator pseudoRandomDoubleFromTime:time];
  v18 = v17;

  return v18 < 0.6;
}

@end