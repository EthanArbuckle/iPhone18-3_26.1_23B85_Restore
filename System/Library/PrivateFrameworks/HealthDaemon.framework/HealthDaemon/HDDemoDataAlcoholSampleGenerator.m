@interface HDDemoDataAlcoholSampleGenerator
- (BOOL)generateObjectsForDemoPerson:(id)a3 fromTime:(double)a4 toTime:(double)a5 currentDate:(id)a6 foodSampleGenerator:(id)a7 statisticsSampleGenerator:(id)a8 bodySampleGenerator:(id)a9 objectCollection:(id)a10;
- (HDDemoDataAlcoholSampleGenerator)init;
- (HDDemoDataAlcoholSampleGenerator)initWithCoder:(id)a3;
- (double)_computeNumDrinksTodayForDemoPerson:(void *)a3 atTime:(double)a4 statisticsSampleGenerator:;
- (double)bloodAlcoholContentForDemoPerson:(void *)a3 atTime:(double)a4 numberOfDrinks:(double)a5 drinkTime:(double)a6 bodySampleGenerator:;
- (void)_saveBAC:(void *)a3 toObjectCollection:(double)a4 sampleDate:;
- (void)encodeWithCoder:(id)a3;
- (void)generateObjectsForDemoPerson:(id)a3 fromTime:(double)a4 toTime:(double)a5 currentDate:(id)a6 objectCollection:(id)a7;
- (void)setupWithDemoDataGenerator:(id)a3;
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

- (HDDemoDataAlcoholSampleGenerator)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HDDemoDataAlcoholSampleGenerator;
  v5 = [(HDDemoDataBaseSampleGenerator *)&v8 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"HDDemoDataAlcoholSampleGeneratorNextCheckInTimeKey"];
    v5->_nextCheckInTime = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HDDemoDataAlcoholSampleGenerator;
  v4 = a3;
  [(HDDemoDataBaseSampleGenerator *)&v5 encodeWithCoder:v4];
  [v4 encodeDouble:@"HDDemoDataAlcoholSampleGeneratorNextCheckInTimeKey" forKey:{self->_nextCheckInTime, v5.receiver, v5.super_class}];
}

- (void)setupWithDemoDataGenerator:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HDDemoDataAlcoholSampleGenerator;
  [(HDDemoDataBaseSampleGenerator *)&v10 setupWithDemoDataGenerator:v4];
  if (![(HDDemoDataBaseSampleGenerator *)self createdFromNSKeyedUnarchiver])
  {
    v5 = [v4 foodSampleGenerator];
    v6 = [v4 demoPerson];
    v7 = [v4 demoPerson];
    [v7 dinnerTime];
    [v5 _computeMealTimeForDemoPerson:v6 fromTime:4 mealTimeType:0.0 timeMean:v8 stdDev:0.0243055556];
    self->_nextCheckInTime = v9;
  }
}

- (void)generateObjectsForDemoPerson:(id)a3 fromTime:(double)a4 toTime:(double)a5 currentDate:(id)a6 objectCollection:(id)a7
{
  v21.receiver = self;
  v21.super_class = HDDemoDataAlcoholSampleGenerator;
  v12 = a7;
  v13 = a6;
  v14 = a3;
  [(HDDemoDataBaseSampleGenerator *)&v21 generateObjectsForDemoPerson:v14 fromTime:v13 toTime:v12 currentDate:a5 objectCollection:a5];
  v15 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator:v21.receiver];
  v16 = [v15 foodSampleGenerator];
  v17 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  v18 = [v17 statisticsSampleGenerator];
  v19 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  v20 = [v19 bodySampleGenerator];
  [(HDDemoDataAlcoholSampleGenerator *)self generateObjectsForDemoPerson:v14 fromTime:v13 toTime:v16 currentDate:v18 foodSampleGenerator:v20 statisticsSampleGenerator:v12 bodySampleGenerator:a4 objectCollection:a5];
}

- (BOOL)generateObjectsForDemoPerson:(id)a3 fromTime:(double)a4 toTime:(double)a5 currentDate:(id)a6 foodSampleGenerator:(id)a7 statisticsSampleGenerator:(id)a8 bodySampleGenerator:(id)a9 objectCollection:(id)a10
{
  v18 = a3;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  if (([v18 resultsTrackingType] == 2 || objc_msgSend(v18, "profileType") == 4) && self->_nextCheckInTime <= a5)
  {
    if (qword_280D67C40 != -1)
    {
      dispatch_once(&qword_280D67C40, &__block_literal_global_114);
    }

    v25 = a5;
    [v18 dinnerTime];
    v27 = v26;
    [v18 mealTimeSampleNoiseStdDev];
    [v20 _computeMealTimeForDemoPerson:v18 fromTime:4 mealTimeType:a5 timeMean:v27 stdDev:v28];
    v30 = v29 + a5;
    if (v30 <= a5)
    {
      v42 = [(HDDemoDataAlcoholSampleGenerator *)self _computeNumDrinksTodayForDemoPerson:v18 atTime:v21 statisticsSampleGenerator:a5];
      v43 = v42;
      if (v30 > a4)
      {
        v44 = [MEMORY[0x277CCD7E8] quantityWithUnit:qword_280D67C30 doubleValue:v42];
        v45 = [MEMORY[0x277CCD800] quantitySampleWithType:qword_280D67C38 quantity:v44 startDate:v19 endDate:v19];
        [v23 addObjectFromPhone:v45];

        v25 = a5;
      }

      v38 = self;
      v39 = v18;
      v40 = a5;
      v41 = v43;
      v37 = v30;
    }

    else
    {
      v31 = [(HDDemoDataAlcoholSampleGenerator *)self _computeNumDrinksTodayForDemoPerson:v18 atTime:v21 statisticsSampleGenerator:a5 + -1.0];
      if (v31 <= 0.0)
      {
        goto LABEL_15;
      }

      v32 = v31;
      [v18 dinnerTime];
      v34 = v33;
      [v18 mealTimeSampleNoiseStdDev];
      [v20 _computeMealTimeForDemoPerson:v18 fromTime:4 mealTimeType:a5 + -1.0 timeMean:v34 stdDev:v35];
      v37 = v36 + (v25 - 1);
      v38 = self;
      v39 = v18;
      v40 = a5;
      v41 = v32;
    }

    v46 = [(HDDemoDataAlcoholSampleGenerator *)v38 bloodAlcoholContentForDemoPerson:v39 atTime:v22 numberOfDrinks:v40 drinkTime:v41 bodySampleGenerator:v37];
    [(HDDemoDataAlcoholSampleGenerator *)self _saveBAC:v23 toObjectCollection:v19 sampleDate:v46];
    if (v46 > 0.03)
    {
      v47 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      v48 = [v47 statisticsSampleGenerator];
      [v18 genericSampleTimeNoiseStdDev];
      [v48 computeNoiseFromTime:a5 stdDev:v49];
      v51 = v50 + 0.03125;

      v52 = v51 + a5;
LABEL_16:
      self->_nextCheckInTime = v52;
      v24 = 1;
      goto LABEL_17;
    }

LABEL_15:
    [v18 dinnerTime];
    v54 = v53;
    [v18 mealTimeSampleNoiseStdDev];
    [v20 _computeMealTimeForDemoPerson:v18 fromTime:4 mealTimeType:(v25 + 1) timeMean:v54 stdDev:v55];
    v52 = v56 + (v25 + 1);
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

- (double)_computeNumDrinksTodayForDemoPerson:(void *)a3 atTime:(double)a4 statisticsSampleGenerator:
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  v10 = 0.0;
  if (a1)
  {
    v11 = a4;
    [v8 pseudoRandomDoubleFromTime:v11 + 0.1];
    if (v12 < 0.33)
    {
      [v9 pseudoRandomDoubleFromTime:v11];
      v10 = floor(v13 * 3.0) + 1.0;
    }
  }

  return v10;
}

- (double)bloodAlcoholContentForDemoPerson:(void *)a3 atTime:(double)a4 numberOfDrinks:(double)a5 drinkTime:(double)a6 bodySampleGenerator:
{
  if (!a1)
  {
    return 0.0;
  }

  v8 = (a4 - a6) * 86400.0;
  v9 = a2;
  [a3 lastWeightInKg];
  v11 = v10;
  v12 = [v9 biologicalSex];

  [HDDemoDataFormula computeBloodAlcoholContentForNumDrinks:v12 elapsedTime:a5 weight:v8 sex:v11];
  return (v13 * 100.0) / 100.0;
}

- (void)_saveBAC:(void *)a3 toObjectCollection:(double)a4 sampleDate:
{
  v10 = a2;
  v7 = a3;
  if (a1)
  {
    if (qword_280D67C58 != -1)
    {
      dispatch_once(&qword_280D67C58, &__block_literal_global_309);
    }

    v8 = [MEMORY[0x277CCD7E8] quantityWithUnit:qword_280D67C48 doubleValue:a4 / 100.0];
    v9 = [MEMORY[0x277CCD800] quantitySampleWithType:qword_280D67C50 quantity:v8 startDate:v7 endDate:v7];
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