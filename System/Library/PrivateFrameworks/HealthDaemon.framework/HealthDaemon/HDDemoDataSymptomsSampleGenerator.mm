@interface HDDemoDataSymptomsSampleGenerator
- (HDDemoDataSymptomsSampleGenerator)init;
- (HDDemoDataSymptomsSampleGenerator)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)generateObjectsForDemoPerson:(id)person fromTime:(double)time toTime:(double)toTime currentDate:(id)date objectCollection:(id)collection;
- (void)generateSymptomSamplesForDemoPerson:(void *)person atTime:(uint64_t)time sampleDate:(void *)date nextTime:(void *)nextTime condition:(double)condition sampleTypes:(double)types frequency:(double)frequency objectCollection:;
- (void)setupWithDemoDataGenerator:(id)generator;
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

- (HDDemoDataSymptomsSampleGenerator)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = HDDemoDataSymptomsSampleGenerator;
  v5 = [(HDDemoDataBaseSampleGenerator *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"NextCommonColdSymptomsTimeKey"];
    v5->_nextCommonColdSymptomsTime = v6;
    [coderCopy decodeDoubleForKey:@"NextFoodPoisoningSymptomsTimeKey"];
    v5->_nextFoodPoisoningSymptomsTime = v7;
    [coderCopy decodeDoubleForKey:@"NextSingleRandomSymptomTimeKey"];
    v5->_nextSingleRandomSymptomTime = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HDDemoDataSymptomsSampleGenerator;
  coderCopy = coder;
  [(HDDemoDataBaseSampleGenerator *)&v6 encodeWithCoder:coderCopy];
  if (self)
  {
    [coderCopy encodeDouble:@"NextCommonColdSymptomsTimeKey" forKey:{self->_nextCommonColdSymptomsTime, v6.receiver, v6.super_class}];
    [coderCopy encodeDouble:@"NextFoodPoisoningSymptomsTimeKey" forKey:self->_nextFoodPoisoningSymptomsTime];
    nextSingleRandomSymptomTime = self->_nextSingleRandomSymptomTime;
  }

  else
  {
    [coderCopy encodeDouble:@"NextCommonColdSymptomsTimeKey" forKey:{0.0, v6.receiver, v6.super_class}];
    [coderCopy encodeDouble:@"NextFoodPoisoningSymptomsTimeKey" forKey:0.0];
    nextSingleRandomSymptomTime = 0.0;
  }

  [coderCopy encodeDouble:@"NextSingleRandomSymptomTimeKey" forKey:nextSingleRandomSymptomTime];
}

- (void)setupWithDemoDataGenerator:(id)generator
{
  v3.receiver = self;
  v3.super_class = HDDemoDataSymptomsSampleGenerator;
  [(HDDemoDataBaseSampleGenerator *)&v3 setupWithDemoDataGenerator:generator];
}

- (void)generateObjectsForDemoPerson:(id)person fromTime:(double)time toTime:(double)toTime currentDate:(id)date objectCollection:(id)collection
{
  v43[5] = *MEMORY[0x277D85DE8];
  v40.receiver = self;
  v40.super_class = HDDemoDataSymptomsSampleGenerator;
  collectionCopy = collection;
  dateCopy = date;
  personCopy = person;
  [(HDDemoDataBaseSampleGenerator *)&v40 generateObjectsForDemoPerson:personCopy fromTime:dateCopy toTime:collectionCopy currentDate:toTime objectCollection:toTime];
  v14 = personCopy;
  v15 = dateCopy;
  v16 = collectionCopy;
  v17 = 0x277CBE000;
  if (self)
  {
    if (self->_nextSingleRandomSymptomTime <= toTime)
    {
      demoDataGenerator = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      sleepSampleGenerator = [demoDataGenerator sleepSampleGenerator];
      v20 = [sleepSampleGenerator isDemoPersonSleeping:v14 atTime:toTime];

      if ((v20 & 1) == 0)
      {
        demoDataGenerator2 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
        statisticsSampleGenerator = [demoDataGenerator2 statisticsSampleGenerator];
        [statisticsSampleGenerator computeNoiseFromTime:toTime stdDev:3.0];
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
  [(HDDemoDataSymptomsSampleGenerator *)self generateSymptomSamplesForDemoPerson:v14 atTime:v15 sampleDate:0 nextTime:v35 condition:v16 sampleTypes:toTime frequency:self->_nextCommonColdSymptomsTime objectCollection:60.0];
  v36 = *MEMORY[0x277CCBA40];
  v41[0] = *MEMORY[0x277CCBAF0];
  v41[1] = v36;
  v41[2] = *MEMORY[0x277CCB948];
  v37 = [*(v17 + 2656) arrayWithObjects:v41 count:3];
  [(HDDemoDataSymptomsSampleGenerator *)self generateSymptomSamplesForDemoPerson:v14 atTime:v15 sampleDate:1 nextTime:v37 condition:v16 sampleTypes:toTime frequency:self->_nextFoodPoisoningSymptomsTime objectCollection:90.0];

  v38 = *MEMORY[0x277D85DE8];
}

- (void)generateSymptomSamplesForDemoPerson:(void *)person atTime:(uint64_t)time sampleDate:(void *)date nextTime:(void *)nextTime condition:(double)condition sampleTypes:(double)types frequency:(double)frequency objectCollection:
{
  v17 = a2;
  personCopy = person;
  dateCopy = date;
  nextTimeCopy = nextTime;
  if (self)
  {
    if (condition >= types)
    {
      demoDataGenerator = [self demoDataGenerator];
      sleepSampleGenerator = [demoDataGenerator sleepSampleGenerator];
      v23 = [sleepSampleGenerator isDemoPersonSleeping:v17 atTime:condition];

      if ((v23 & 1) == 0)
      {
        demoDataGenerator2 = [self demoDataGenerator];
        statisticsSampleGenerator = [demoDataGenerator2 statisticsSampleGenerator];
        [statisticsSampleGenerator computeNoiseFromTime:condition stdDev:15.0];
        v27 = v26 + frequency;

        if (!time)
        {
          self[4] = v27 + self[4];
        }

        self[5] = v27 + self[5];
        v28 = arc4random_uniform(3u);
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __149__HDDemoDataSymptomsSampleGenerator_generateSymptomSamplesForDemoPerson_atTime_sampleDate_nextTime_condition_sampleTypes_frequency_objectCollection___block_invoke;
        v29[3] = &unk_278628F30;
        v32 = v28 + 2;
        v30 = personCopy;
        v31 = nextTimeCopy;
        [dateCopy enumerateObjectsUsingBlock:v29];
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