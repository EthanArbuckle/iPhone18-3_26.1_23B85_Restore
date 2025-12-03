@interface HDDemoDataAlcoholSampleGenerator
- (BOOL)generateObjectsForDemoPerson:(id)person fromTime:(double)time toTime:(double)toTime currentDate:(id)date foodSampleGenerator:(id)generator statisticsSampleGenerator:(id)sampleGenerator bodySampleGenerator:(id)bodySampleGenerator objectCollection:(id)self0;
- (HDDemoDataAlcoholSampleGenerator)init;
- (HDDemoDataAlcoholSampleGenerator)initWithCoder:(id)coder;
- (double)_computeNumDrinksTodayForDemoPerson:(void *)person atTime:(double)time statisticsSampleGenerator:;
- (double)bloodAlcoholContentForDemoPerson:(void *)person atTime:(double)time numberOfDrinks:(double)drinks drinkTime:(double)drinkTime bodySampleGenerator:;
- (void)_saveBAC:(void *)c toObjectCollection:(double)collection sampleDate:;
- (void)encodeWithCoder:(id)coder;
- (void)generateObjectsForDemoPerson:(id)person fromTime:(double)time toTime:(double)toTime currentDate:(id)date objectCollection:(id)collection;
- (void)setupWithDemoDataGenerator:(id)generator;
@end

@implementation HDDemoDataAlcoholSampleGenerator

- (HDDemoDataAlcoholSampleGenerator)init
{
  v3.receiver = self;
  v3.super_class = HDDemoDataAlcoholSampleGenerator;
  result = [(HDDemoDataBaseSampleGenerator *)&v3 init];
  if (result)
  {
    result->_nextCheckInTime = 0.0;
  }

  return result;
}

- (HDDemoDataAlcoholSampleGenerator)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = HDDemoDataAlcoholSampleGenerator;
  v5 = [(HDDemoDataBaseSampleGenerator *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"HDDemoDataAlcoholSampleGeneratorNextCheckInTimeKey"];
    v5->_nextCheckInTime = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HDDemoDataAlcoholSampleGenerator;
  coderCopy = coder;
  [(HDDemoDataBaseSampleGenerator *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeDouble:@"HDDemoDataAlcoholSampleGeneratorNextCheckInTimeKey" forKey:{self->_nextCheckInTime, v5.receiver, v5.super_class}];
}

- (void)setupWithDemoDataGenerator:(id)generator
{
  generatorCopy = generator;
  v10.receiver = self;
  v10.super_class = HDDemoDataAlcoholSampleGenerator;
  [(HDDemoDataBaseSampleGenerator *)&v10 setupWithDemoDataGenerator:generatorCopy];
  if (![(HDDemoDataBaseSampleGenerator *)self createdFromNSKeyedUnarchiver])
  {
    foodSampleGenerator = [generatorCopy foodSampleGenerator];
    demoPerson = [generatorCopy demoPerson];
    demoPerson2 = [generatorCopy demoPerson];
    [demoPerson2 dinnerTime];
    [foodSampleGenerator _computeMealTimeForDemoPerson:demoPerson fromTime:4 mealTimeType:0.0 timeMean:v8 stdDev:0.0243055556];
    self->_nextCheckInTime = v9;
  }
}

- (void)generateObjectsForDemoPerson:(id)person fromTime:(double)time toTime:(double)toTime currentDate:(id)date objectCollection:(id)collection
{
  v21.receiver = self;
  v21.super_class = HDDemoDataAlcoholSampleGenerator;
  collectionCopy = collection;
  dateCopy = date;
  personCopy = person;
  [(HDDemoDataBaseSampleGenerator *)&v21 generateObjectsForDemoPerson:personCopy fromTime:dateCopy toTime:collectionCopy currentDate:toTime objectCollection:toTime];
  v15 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator:v21.receiver];
  foodSampleGenerator = [v15 foodSampleGenerator];
  demoDataGenerator = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  statisticsSampleGenerator = [demoDataGenerator statisticsSampleGenerator];
  demoDataGenerator2 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  bodySampleGenerator = [demoDataGenerator2 bodySampleGenerator];
  [(HDDemoDataAlcoholSampleGenerator *)self generateObjectsForDemoPerson:personCopy fromTime:dateCopy toTime:foodSampleGenerator currentDate:statisticsSampleGenerator foodSampleGenerator:bodySampleGenerator statisticsSampleGenerator:collectionCopy bodySampleGenerator:time objectCollection:toTime];
}

- (BOOL)generateObjectsForDemoPerson:(id)person fromTime:(double)time toTime:(double)toTime currentDate:(id)date foodSampleGenerator:(id)generator statisticsSampleGenerator:(id)sampleGenerator bodySampleGenerator:(id)bodySampleGenerator objectCollection:(id)self0
{
  personCopy = person;
  dateCopy = date;
  generatorCopy = generator;
  sampleGeneratorCopy = sampleGenerator;
  bodySampleGeneratorCopy = bodySampleGenerator;
  collectionCopy = collection;
  if (([personCopy resultsTrackingType] == 2 || objc_msgSend(personCopy, "profileType") == 4) && self->_nextCheckInTime <= toTime)
  {
    if (qword_280D67C40 != -1)
    {
      dispatch_once(&qword_280D67C40, &__block_literal_global_114);
    }

    toTimeCopy2 = toTime;
    [personCopy dinnerTime];
    v27 = v26;
    [personCopy mealTimeSampleNoiseStdDev];
    [generatorCopy _computeMealTimeForDemoPerson:personCopy fromTime:4 mealTimeType:toTime timeMean:v27 stdDev:v28];
    v30 = v29 + toTime;
    if (v30 <= toTime)
    {
      v42 = [(HDDemoDataAlcoholSampleGenerator *)self _computeNumDrinksTodayForDemoPerson:personCopy atTime:sampleGeneratorCopy statisticsSampleGenerator:toTime];
      v43 = v42;
      if (v30 > time)
      {
        v44 = [MEMORY[0x277CCD7E8] quantityWithUnit:qword_280D67C30 doubleValue:v42];
        v45 = [MEMORY[0x277CCD800] quantitySampleWithType:qword_280D67C38 quantity:v44 startDate:dateCopy endDate:dateCopy];
        [collectionCopy addObjectFromPhone:v45];

        toTimeCopy2 = toTime;
      }

      selfCopy2 = self;
      v39 = personCopy;
      toTimeCopy4 = toTime;
      v41 = v43;
      v37 = v30;
    }

    else
    {
      v31 = [(HDDemoDataAlcoholSampleGenerator *)self _computeNumDrinksTodayForDemoPerson:personCopy atTime:sampleGeneratorCopy statisticsSampleGenerator:toTime + -1.0];
      if (v31 <= 0.0)
      {
        goto LABEL_15;
      }

      v32 = v31;
      [personCopy dinnerTime];
      v34 = v33;
      [personCopy mealTimeSampleNoiseStdDev];
      [generatorCopy _computeMealTimeForDemoPerson:personCopy fromTime:4 mealTimeType:toTime + -1.0 timeMean:v34 stdDev:v35];
      v37 = v36 + (toTimeCopy2 - 1);
      selfCopy2 = self;
      v39 = personCopy;
      toTimeCopy4 = toTime;
      v41 = v32;
    }

    v46 = [(HDDemoDataAlcoholSampleGenerator *)selfCopy2 bloodAlcoholContentForDemoPerson:v39 atTime:bodySampleGeneratorCopy numberOfDrinks:toTimeCopy4 drinkTime:v41 bodySampleGenerator:v37];
    [(HDDemoDataAlcoholSampleGenerator *)self _saveBAC:collectionCopy toObjectCollection:dateCopy sampleDate:v46];
    if (v46 > 0.03)
    {
      demoDataGenerator = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      statisticsSampleGenerator = [demoDataGenerator statisticsSampleGenerator];
      [personCopy genericSampleTimeNoiseStdDev];
      [statisticsSampleGenerator computeNoiseFromTime:toTime stdDev:v49];
      v51 = v50 + 0.03125;

      v52 = v51 + toTime;
LABEL_16:
      self->_nextCheckInTime = v52;
      v24 = 1;
      goto LABEL_17;
    }

LABEL_15:
    [personCopy dinnerTime];
    v54 = v53;
    [personCopy mealTimeSampleNoiseStdDev];
    [generatorCopy _computeMealTimeForDemoPerson:personCopy fromTime:4 mealTimeType:(toTimeCopy2 + 1) timeMean:v54 stdDev:v55];
    v52 = v56 + (toTimeCopy2 + 1);
    goto LABEL_16;
  }

  v24 = 0;
LABEL_17:

  return v24;
}

uint64_t __176__HDDemoDataAlcoholSampleGenerator_generateObjectsForDemoPerson_fromTime_toTime_currentDate_foodSampleGenerator_statisticsSampleGenerator_bodySampleGenerator_objectCollection___block_invoke()
{
  v0 = [MEMORY[0x277CCDAB0] percentUnit];
  v1 = _MergedGlobals_204;
  _MergedGlobals_204 = v0;

  v2 = [MEMORY[0x277CCDAB0] countUnit];
  v3 = qword_280D67C30;
  qword_280D67C30 = v2;

  v4 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC968]];
  v5 = qword_280D67C28;
  qword_280D67C28 = v4;

  v6 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCBD8]];
  v7 = qword_280D67C38;
  qword_280D67C38 = v6;

  return MEMORY[0x2821F96F8](v6, v7);
}

- (double)_computeNumDrinksTodayForDemoPerson:(void *)person atTime:(double)time statisticsSampleGenerator:
{
  v7 = a2;
  personCopy = person;
  v9 = personCopy;
  v10 = 0.0;
  if (self)
  {
    timeCopy = time;
    [personCopy pseudoRandomDoubleFromTime:timeCopy + 0.1];
    if (v12 < 0.33)
    {
      [v9 pseudoRandomDoubleFromTime:timeCopy];
      v10 = floor(v13 * 3.0) + 1.0;
    }
  }

  return v10;
}

- (double)bloodAlcoholContentForDemoPerson:(void *)person atTime:(double)time numberOfDrinks:(double)drinks drinkTime:(double)drinkTime bodySampleGenerator:
{
  if (!self)
  {
    return 0.0;
  }

  v8 = (time - drinkTime) * 86400.0;
  v9 = a2;
  [person lastWeightInKg];
  v11 = v10;
  biologicalSex = [v9 biologicalSex];

  [HDDemoDataFormula computeBloodAlcoholContentForNumDrinks:biologicalSex elapsedTime:drinks weight:v8 sex:v11];
  return (v13 * 100.0) / 100.0;
}

- (void)_saveBAC:(void *)c toObjectCollection:(double)collection sampleDate:
{
  v10 = a2;
  cCopy = c;
  if (self)
  {
    if (qword_280D67C58 != -1)
    {
      dispatch_once(&qword_280D67C58, &__block_literal_global_309);
    }

    v8 = [MEMORY[0x277CCD7E8] quantityWithUnit:qword_280D67C48 doubleValue:collection / 100.0];
    v9 = [MEMORY[0x277CCD800] quantitySampleWithType:qword_280D67C50 quantity:v8 startDate:cCopy endDate:cCopy];
    [v10 addObjectFromPhone:v9];
  }
}

uint64_t __75__HDDemoDataAlcoholSampleGenerator__saveBAC_toObjectCollection_sampleDate___block_invoke()
{
  v0 = [MEMORY[0x277CCDAB0] percentUnit];
  v1 = qword_280D67C48;
  qword_280D67C48 = v0;

  v2 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC968]];
  v3 = qword_280D67C50;
  qword_280D67C50 = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

@end