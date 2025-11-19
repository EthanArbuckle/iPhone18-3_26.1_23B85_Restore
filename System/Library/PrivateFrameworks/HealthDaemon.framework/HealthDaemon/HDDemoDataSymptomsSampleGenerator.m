@interface HDDemoDataSymptomsSampleGenerator
- (HDDemoDataSymptomsSampleGenerator)init;
- (HDDemoDataSymptomsSampleGenerator)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)generateObjectsForDemoPerson:(id)a3 fromTime:(double)a4 toTime:(double)a5 currentDate:(id)a6 objectCollection:(id)a7;
- (void)generateSymptomSamplesForDemoPerson:(void *)a3 atTime:(uint64_t)a4 sampleDate:(void *)a5 nextTime:(void *)a6 condition:(double)a7 sampleTypes:(double)a8 frequency:(double)a9 objectCollection:;
- (void)setupWithDemoDataGenerator:(id)a3;
@end

@implementation HDDemoDataSymptomsSampleGenerator

- (HDDemoDataSymptomsSampleGenerator)init
{
  v3.receiver = self;
  v3.super_class = HDDemoDataSymptomsSampleGenerator;
  result = [(HDDemoDataBaseSampleGenerator *)&v3 init];
  if (result)
  {
    result->_nextCommonColdSymptomsTime = 0.0;
    result->_nextFoodPoisoningSymptomsTime = 0.0;
    result->_nextSingleRandomSymptomTime = 0.0;
  }

  return result;
}

- (HDDemoDataSymptomsSampleGenerator)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HDDemoDataSymptomsSampleGenerator;
  v5 = [(HDDemoDataBaseSampleGenerator *)&v10 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"NextCommonColdSymptomsTimeKey"];
    v5->_nextCommonColdSymptomsTime = v6;
    [v4 decodeDoubleForKey:@"NextFoodPoisoningSymptomsTimeKey"];
    v5->_nextFoodPoisoningSymptomsTime = v7;
    [v4 decodeDoubleForKey:@"NextSingleRandomSymptomTimeKey"];
    v5->_nextSingleRandomSymptomTime = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HDDemoDataSymptomsSampleGenerator;
  v4 = a3;
  [(HDDemoDataBaseSampleGenerator *)&v6 encodeWithCoder:v4];
  if (self)
  {
    [v4 encodeDouble:@"NextCommonColdSymptomsTimeKey" forKey:{self->_nextCommonColdSymptomsTime, v6.receiver, v6.super_class}];
    [v4 encodeDouble:@"NextFoodPoisoningSymptomsTimeKey" forKey:self->_nextFoodPoisoningSymptomsTime];
    nextSingleRandomSymptomTime = self->_nextSingleRandomSymptomTime;
  }

  else
  {
    [v4 encodeDouble:@"NextCommonColdSymptomsTimeKey" forKey:{0.0, v6.receiver, v6.super_class}];
    [v4 encodeDouble:@"NextFoodPoisoningSymptomsTimeKey" forKey:0.0];
    nextSingleRandomSymptomTime = 0.0;
  }

  [v4 encodeDouble:@"NextSingleRandomSymptomTimeKey" forKey:nextSingleRandomSymptomTime];
}

- (void)setupWithDemoDataGenerator:(id)a3
{
  v3.receiver = self;
  v3.super_class = HDDemoDataSymptomsSampleGenerator;
  [(HDDemoDataBaseSampleGenerator *)&v3 setupWithDemoDataGenerator:a3];
}

- (void)generateObjectsForDemoPerson:(id)a3 fromTime:(double)a4 toTime:(double)a5 currentDate:(id)a6 objectCollection:(id)a7
{
  v43[5] = *MEMORY[0x277D85DE8];
  v40.receiver = self;
  v40.super_class = HDDemoDataSymptomsSampleGenerator;
  v11 = a7;
  v12 = a6;
  v13 = a3;
  [(HDDemoDataBaseSampleGenerator *)&v40 generateObjectsForDemoPerson:v13 fromTime:v12 toTime:v11 currentDate:a5 objectCollection:a5];
  v14 = v13;
  v15 = v12;
  v16 = v11;
  v17 = 0x277CBE000;
  if (self)
  {
    if (self->_nextSingleRandomSymptomTime <= a5)
    {
      v18 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      v19 = [v18 sleepSampleGenerator];
      v20 = [v19 isDemoPersonSleeping:v14 atTime:a5];

      if ((v20 & 1) == 0)
      {
        v21 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
        v22 = [v21 statisticsSampleGenerator];
        [v22 computeNoiseFromTime:a5 stdDev:3.0];
        v24 = v23 + 10.0;

        self->_nextSingleRandomSymptomTime = v24 + self->_nextSingleRandomSymptomTime;
        v39 = arc4random_uniform(3u) + 2;
        v25 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB8D0]];
        v43[0] = v25;
        v26 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB958]];
        v43[1] = v26;
        v27 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBA18]];
        v43[2] = v27;
        v28 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBA48]];
        v43[3] = v28;
        v29 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBAF8]];
        v43[4] = v29;
        v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:5];

        v17 = 0x277CBE000uLL;
        v31 = [v30 objectAtIndex:{arc4random_uniform(objc_msgSend(v30, "count"))}];
        v32 = [MEMORY[0x277CCD0B0] categorySampleWithType:v31 value:v39 startDate:v15 endDate:v15];
        [v16 addObjectFromPhone:v32];
      }
    }
  }

  v33 = *MEMORY[0x277CCBAD0];
  v42[0] = *MEMORY[0x277CCB940];
  v42[1] = v33;
  v34 = *MEMORY[0x277CCBAA8];
  v42[2] = *MEMORY[0x277CCBA90];
  v42[3] = v34;
  v35 = [*(v17 + 2656) arrayWithObjects:v42 count:4];
  [(HDDemoDataSymptomsSampleGenerator *)self generateSymptomSamplesForDemoPerson:v14 atTime:v15 sampleDate:0 nextTime:v35 condition:v16 sampleTypes:a5 frequency:self->_nextCommonColdSymptomsTime objectCollection:60.0];
  v36 = *MEMORY[0x277CCBA40];
  v41[0] = *MEMORY[0x277CCBAF0];
  v41[1] = v36;
  v41[2] = *MEMORY[0x277CCB948];
  v37 = [*(v17 + 2656) arrayWithObjects:v41 count:3];
  [(HDDemoDataSymptomsSampleGenerator *)self generateSymptomSamplesForDemoPerson:v14 atTime:v15 sampleDate:1 nextTime:v37 condition:v16 sampleTypes:a5 frequency:self->_nextFoodPoisoningSymptomsTime objectCollection:90.0];

  v38 = *MEMORY[0x277D85DE8];
}

- (void)generateSymptomSamplesForDemoPerson:(void *)a3 atTime:(uint64_t)a4 sampleDate:(void *)a5 nextTime:(void *)a6 condition:(double)a7 sampleTypes:(double)a8 frequency:(double)a9 objectCollection:
{
  v17 = a2;
  v18 = a3;
  v19 = a5;
  v20 = a6;
  if (a1)
  {
    if (a7 >= a8)
    {
      v21 = [a1 demoDataGenerator];
      v22 = [v21 sleepSampleGenerator];
      v23 = [v22 isDemoPersonSleeping:v17 atTime:a7];

      if ((v23 & 1) == 0)
      {
        v24 = [a1 demoDataGenerator];
        v25 = [v24 statisticsSampleGenerator];
        [v25 computeNoiseFromTime:a7 stdDev:15.0];
        v27 = v26 + a9;

        if (!a4)
        {
          a1[4] = v27 + a1[4];
        }

        a1[5] = v27 + a1[5];
        v28 = arc4random_uniform(3u);
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __149__HDDemoDataSymptomsSampleGenerator_generateSymptomSamplesForDemoPerson_atTime_sampleDate_nextTime_condition_sampleTypes_frequency_objectCollection___block_invoke;
        v29[3] = &unk_278628F30;
        v32 = v28 + 2;
        v30 = v18;
        v31 = v20;
        [v19 enumerateObjectsUsingBlock:v29];
      }
    }
  }
}

void __149__HDDemoDataSymptomsSampleGenerator_generateSymptomSamplesForDemoPerson_atTime_sampleDate_nextTime_condition_sampleTypes_frequency_objectCollection___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:a2];
  v3 = [MEMORY[0x277CCD0B0] categorySampleWithType:v4 value:*(a1 + 48) startDate:*(a1 + 32) endDate:*(a1 + 32)];
  [*(a1 + 40) addObjectFromPhone:v3];
}

@end