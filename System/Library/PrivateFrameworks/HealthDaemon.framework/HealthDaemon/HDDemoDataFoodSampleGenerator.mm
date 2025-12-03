@interface HDDemoDataFoodSampleGenerator
- (BOOL)_isDemoPersonConsumingCaffeine:(id)caffeine atTime:(double)time;
- (HDDemoDataFoodSampleGenerator)init;
- (HDDemoDataFoodSampleGenerator)initWithCoder:(id)coder;
- (double)_computeMealTimeForDemoPerson:(id)person fromTime:(double)time mealTimeType:(int64_t)type timeMean:(double)mean stdDev:(double)dev;
- (double)_computeNutrientForDemoPerson:(void *)person atTime:(void *)time mealItem:(double)item quantityType:;
- (double)_nextMealTimeForDemoPerson:(double)person atTime:;
- (uint64_t)mealTypeForTime:(uint64_t)result;
- (void)_generateRandomLastMeal;
- (void)encodeWithCoder:(id)coder;
- (void)generateFirstRunObjectsForDemoPerson:(id)person firstDate:(id)date objectCollection:(id)collection;
- (void)generateObjectsForDemoPerson:(id)person fromTime:(double)time toTime:(double)toTime currentDate:(id)date objectCollection:(id)collection;
- (void)setupWithDemoDataGenerator:(id)generator;
@end

@implementation HDDemoDataFoodSampleGenerator

- (HDDemoDataFoodSampleGenerator)init
{
  v7.receiver = self;
  v7.super_class = HDDemoDataFoodSampleGenerator;
  v2 = [(HDDemoDataBaseSampleGenerator *)&v7 init];
  v3 = v2;
  if (v2)
  {
    foodDatabase = v2->_foodDatabase;
    v2->_foodDatabase = 0;

    v3->_nextMealTime = 0.0;
    v3->_nextBreakfastTime = 0.0;
    v3->_nextLunchTime = 0.0;
    v3->_nextSnackTime = 0.0;
    v3->_nextDinnerTime = 0.0;
    v3->_lastMealTime = 0.0;
    lastMeal = v3->_lastMeal;
    v3->_lastMeal = 0;

    v3->_nextBloodGlucoseSampleTime = 0.0;
    v3->_nextBloodGlucoseFingerStickSampleTime = 0.0;
    v3->_nextBloodGlucoseMealTime = 0.0;
    v3->_lastBloodGlucose = 100.0;
    v3->_nextInsulinPumpBasalSampleTime = 0.0;
    v3->_carbohydratesLeftToDigest = 0.0;
    v3->_bloodGlucoseCarbohydrateGlycemicRate = 0.0;
    v3->_bloodGlucoseDecreaseRateDueToInsulin = 0.0;
    v3->_nextWaterConsumedSampleTime = 0.0;
  }

  return v3;
}

- (HDDemoDataFoodSampleGenerator)initWithCoder:(id)coder
{
  v29[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = HDDemoDataFoodSampleGenerator;
  v5 = [(HDDemoDataBaseSampleGenerator *)&v28 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorNextMealTimeKey"];
    v5->_nextMealTime = v6;
    [coderCopy decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorNextBreakfastTimeKey"];
    v5->_nextBreakfastTime = v7;
    [coderCopy decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorNextLunchTimeKey"];
    v5->_nextLunchTime = v8;
    [coderCopy decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorNextSnackTimeKey"];
    v5->_nextSnackTime = v9;
    [coderCopy decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorNextDinnerTimeKey"];
    v5->_nextDinnerTime = v10;
    [coderCopy decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorLastMealTimeKey"];
    v5->_lastMealTime = v11;
    v12 = MEMORY[0x277CBEB98];
    v29[0] = objc_opt_class();
    v29[1] = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
    v14 = [v12 setWithArray:v13];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"HDDemoDataFoodSampleGeneratorLastMealKey"];
    lastMeal = v5->_lastMeal;
    v5->_lastMeal = v15;

    [coderCopy decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorNextBloodGlucoseSampleTimeKey"];
    v5->_nextBloodGlucoseSampleTime = v17;
    [coderCopy decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorNextBloodGlucoseFingerStickSampleTimeKey"];
    v5->_nextBloodGlucoseFingerStickSampleTime = v18;
    [coderCopy decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorNextBloodGlucoseMealTimeKey"];
    v5->_nextBloodGlucoseMealTime = v19;
    [coderCopy decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorLastBloodGlucoseKey"];
    v5->_lastBloodGlucose = v20;
    [coderCopy decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorNextInsulinPumpBasalSampleKey"];
    v5->_nextInsulinPumpBasalSampleTime = v21;
    [coderCopy decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorCarbohydratesLeftToDigestKey"];
    v5->_carbohydratesLeftToDigest = v22;
    [coderCopy decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorBloodGlucoseCarbohydrateGlycemicRateKey"];
    v5->_bloodGlucoseCarbohydrateGlycemicRate = v23;
    [coderCopy decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorBloodGlucoseDecreaseRateDueToInsulinKey"];
    v5->_bloodGlucoseDecreaseRateDueToInsulin = v24;
    [coderCopy decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorNextWaterConsumeSampleTimeKey"];
    v5->_nextWaterConsumedSampleTime = v25;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HDDemoDataFoodSampleGenerator;
  coderCopy = coder;
  [(HDDemoDataBaseSampleGenerator *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeDouble:@"HDDemoDataFoodSampleGeneratorNextMealTimeKey" forKey:{self->_nextMealTime, v5.receiver, v5.super_class}];
  [coderCopy encodeDouble:@"HDDemoDataFoodSampleGeneratorNextBreakfastTimeKey" forKey:self->_nextBreakfastTime];
  [coderCopy encodeDouble:@"HDDemoDataFoodSampleGeneratorNextLunchTimeKey" forKey:self->_nextLunchTime];
  [coderCopy encodeDouble:@"HDDemoDataFoodSampleGeneratorNextSnackTimeKey" forKey:self->_nextSnackTime];
  [coderCopy encodeDouble:@"HDDemoDataFoodSampleGeneratorNextDinnerTimeKey" forKey:self->_nextDinnerTime];
  [coderCopy encodeDouble:@"HDDemoDataFoodSampleGeneratorLastMealTimeKey" forKey:self->_lastMealTime];
  [coderCopy encodeObject:self->_lastMeal forKey:@"HDDemoDataFoodSampleGeneratorLastMealKey"];
  [coderCopy encodeDouble:@"HDDemoDataFoodSampleGeneratorNextBloodGlucoseSampleTimeKey" forKey:self->_nextBloodGlucoseSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataFoodSampleGeneratorNextBloodGlucoseFingerStickSampleTimeKey" forKey:self->_nextBloodGlucoseFingerStickSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataFoodSampleGeneratorNextBloodGlucoseMealTimeKey" forKey:self->_nextBloodGlucoseMealTime];
  [coderCopy encodeDouble:@"HDDemoDataFoodSampleGeneratorLastBloodGlucoseKey" forKey:self->_lastBloodGlucose];
  [coderCopy encodeDouble:@"HDDemoDataFoodSampleGeneratorNextInsulinPumpBasalSampleKey" forKey:self->_nextInsulinPumpBasalSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataFoodSampleGeneratorCarbohydratesLeftToDigestKey" forKey:self->_carbohydratesLeftToDigest];
  [coderCopy encodeDouble:@"HDDemoDataFoodSampleGeneratorBloodGlucoseCarbohydrateGlycemicRateKey" forKey:self->_bloodGlucoseCarbohydrateGlycemicRate];
  [coderCopy encodeDouble:@"HDDemoDataFoodSampleGeneratorBloodGlucoseDecreaseRateDueToInsulinKey" forKey:self->_bloodGlucoseDecreaseRateDueToInsulin];
  [coderCopy encodeDouble:@"HDDemoDataFoodSampleGeneratorNextWaterConsumeSampleTimeKey" forKey:self->_nextWaterConsumedSampleTime];
}

- (void)setupWithDemoDataGenerator:(id)generator
{
  generatorCopy = generator;
  v19.receiver = self;
  v19.super_class = HDDemoDataFoodSampleGenerator;
  [(HDDemoDataBaseSampleGenerator *)&v19 setupWithDemoDataGenerator:generatorCopy];
  v5 = objc_alloc_init(HDDemoDataFoodDatabase);
  foodDatabase = self->_foodDatabase;
  self->_foodDatabase = v5;

  if (![(HDDemoDataBaseSampleGenerator *)self createdFromNSKeyedUnarchiver])
  {
    demoPerson = [generatorCopy demoPerson];
    [demoPerson breakfastTime];
    self->_nextMealTime = v8;

    demoPerson2 = [generatorCopy demoPerson];
    [demoPerson2 breakfastTime];
    self->_nextBreakfastTime = v10;

    demoPerson3 = [generatorCopy demoPerson];
    [demoPerson3 lunchTime];
    self->_nextLunchTime = v12;

    demoPerson4 = [generatorCopy demoPerson];
    [demoPerson4 snackTime];
    self->_nextSnackTime = v14;

    demoPerson5 = [generatorCopy demoPerson];
    [demoPerson5 dinnerTime];
    self->_nextDinnerTime = v16;

    demoPerson6 = [generatorCopy demoPerson];
    [demoPerson6 breakfastTime];
    self->_nextBloodGlucoseMealTime = v18;
  }
}

- (void)generateFirstRunObjectsForDemoPerson:(id)person firstDate:(id)date objectCollection:(id)collection
{
  v29[2] = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = HDDemoDataFoodSampleGenerator;
  collectionCopy = collection;
  [(HDDemoDataBaseSampleGenerator *)&v28 generateFirstRunObjectsForDemoPerson:person firstDate:date objectCollection:collectionCopy];
  v9 = collectionCopy;
  if (self)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v11 = [HDDemoDataGeneratorConfiguration configurationFromDefaults:standardUserDefaults];

    if ([v11 shouldGenerateRecentLiquidsIntake])
    {
      v26 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCAF8]];
      v27 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC9D8]];
      v12 = MEMORY[0x277CCD7E8];
      fluidOunceUSUnit = [MEMORY[0x277CCDAB0] fluidOunceUSUnit];
      v14 = [v12 quantityWithUnit:fluidOunceUSUnit doubleValue:8.0];

      v15 = MEMORY[0x277CCD7E8];
      gramUnit = [MEMORY[0x277CCDAB0] gramUnit];
      v17 = [v15 quantityWithUnit:gramUnit doubleValue:0.12];

      v18 = objc_alloc(MEMORY[0x277CBEA80]);
      v19 = [v18 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
      date = [MEMORY[0x277CBEAA8] date];
      v21 = [v19 dateBySettingHour:8 minute:0 second:0 ofDate:date options:0];

      v22 = [MEMORY[0x277CCD800] quantitySampleWithType:v26 quantity:v14 startDate:v21 endDate:v21];
      v23 = [MEMORY[0x277CCD800] quantitySampleWithType:v27 quantity:v17 startDate:v21 endDate:v21];
      v29[0] = v22;
      v29[1] = v23;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
      [v9 addObjectsFromPhone:v24];
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)generateObjectsForDemoPerson:(id)person fromTime:(double)time toTime:(double)toTime currentDate:(id)date objectCollection:(id)collection
{
  v194 = *MEMORY[0x277D85DE8];
  personCopy = person;
  dateCopy = date;
  selfCopy = self;
  v15 = dateCopy;
  v180.receiver = selfCopy;
  v180.super_class = HDDemoDataFoodSampleGenerator;
  collectionCopy = collection;
  v166 = v15;
  [(HDDemoDataBaseSampleGenerator *)&v180 generateObjectsForDemoPerson:personCopy fromTime:v15 toTime:toTime currentDate:toTime objectCollection:?];
  if (qword_280D67B00 != -1)
  {
    dispatch_once(&qword_280D67B00, &__block_literal_global_23);
  }

  v167 = selfCopy;
  v159 = personCopy;
  if (!selfCopy)
  {
    v157 = personCopy;
    v23 = 0.0;
    goto LABEL_8;
  }

  v16 = personCopy;
  demoDataGenerator = [(HDDemoDataBaseSampleGenerator *)selfCopy demoDataGenerator];
  bodySampleGenerator = [demoDataGenerator bodySampleGenerator];
  [bodySampleGenerator lastWeightInKg];
  v20 = v19 * 0.55;

  [v16 insulinProduction];
  v22 = v21;

  v23 = v20 * fmax(1.0 - v22, 0.0);
  v24 = [(HDDemoDataFoodSampleGenerator *)selfCopy mealTypeForTime:toTime];
  v25 = v16;
  v158 = v24;
  if (selfCopy->_nextDinnerTime <= toTime)
  {
    v27 = selfCopy->_foodDatabase;
    v28 = [(HDDemoDataFoodDatabase *)v27 randomFoodForType:4];

    v29 = selfCopy->_foodDatabase;
    v30 = [(HDDemoDataFoodDatabase *)v29 randomFoodForType:5];

    selfCopy->_nextDinnerTime = [(HDDemoDataFoodSampleGenerator *)selfCopy _nextMealTimeForDemoPerson:v25 atTime:toTime];
    selfCopy->_nextMealTime = selfCopy->_nextBreakfastTime;
    v189[0] = v28;
    v31 = v189;
  }

  else if (selfCopy->_nextSnackTime <= toTime)
  {
    v32 = selfCopy->_foodDatabase;
    v28 = [(HDDemoDataFoodDatabase *)v32 randomFoodForType:3];

    v33 = selfCopy->_foodDatabase;
    v30 = [(HDDemoDataFoodDatabase *)v33 randomFoodForType:5];

    [v28 recommendedNumServings];
    [v28 setRecommendedNumServings:v34 * 0.5];
    selfCopy->_nextSnackTime = [(HDDemoDataFoodSampleGenerator *)selfCopy _nextMealTimeForDemoPerson:v25 atTime:toTime];
    selfCopy->_nextMealTime = selfCopy->_nextDinnerTime;
    *&v190 = v28;
    v31 = &v190;
  }

  else if (selfCopy->_nextLunchTime <= toTime)
  {
    v35 = selfCopy->_foodDatabase;
    v28 = [(HDDemoDataFoodDatabase *)v35 randomFoodForType:2];

    v36 = selfCopy->_foodDatabase;
    v30 = [(HDDemoDataFoodDatabase *)v36 randomFoodForType:5];

    selfCopy->_nextLunchTime = [(HDDemoDataFoodSampleGenerator *)selfCopy _nextMealTimeForDemoPerson:v25 atTime:toTime];
    selfCopy->_nextMealTime = selfCopy->_nextSnackTime;
    v188 = v28;
    v31 = &v188;
  }

  else
  {
    if (selfCopy->_nextBreakfastTime > toTime)
    {
LABEL_8:
      v26 = v159;

      obj = 0;
      goto LABEL_60;
    }

    v37 = selfCopy->_foodDatabase;
    v28 = [(HDDemoDataFoodDatabase *)v37 randomFoodForType:1];

    v38 = selfCopy->_foodDatabase;
    v30 = [(HDDemoDataFoodDatabase *)v38 randomFoodForType:5];

    selfCopy->_nextBreakfastTime = [(HDDemoDataFoodSampleGenerator *)selfCopy _nextMealTimeForDemoPerson:v25 atTime:toTime];
    selfCopy->_nextMealTime = selfCopy->_nextLunchTime;
    v187 = v28;
    v31 = &v187;
  }

  v31[1] = v30;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

  if (!v39)
  {
    obj = 0;
    goto LABEL_59;
  }

  objc_storeStrong(&selfCopy->_lastMeal, v39);
  v178 = 0u;
  v179 = 0u;
  v177 = 0u;
  v176 = 0u;
  obj = v39;
  v163 = [obj countByEnumeratingWithState:&v176 objects:v186 count:16];
  if (v163)
  {
    v162 = *v177;
    v160 = *MEMORY[0x277CCC4A0];
    do
    {
      v40 = 0;
      do
      {
        if (*v177 != v162)
        {
          objc_enumerationMutation(obj);
        }

        v164 = v40;
        v41 = *(*(&v176 + 1) + 8 * v40);
        v168 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v172 = 0u;
        v173 = 0u;
        v174 = 0u;
        v175 = 0u;
        nutritionFacts = [v41 nutritionFacts];
        v43 = [nutritionFacts countByEnumeratingWithState:&v172 objects:v185 count:16];
        if (v43)
        {
          v44 = v43;
          v45 = *v173;
          do
          {
            v46 = 0;
            do
            {
              if (*v173 != v45)
              {
                objc_enumerationMutation(nutritionFacts);
              }

              v47 = *(*(&v172 + 1) + 8 * v46);
              if ([v25 nutritionTrackingType] == 2)
              {
                goto LABEL_28;
              }

              v48 = v47;
              if (qword_280D67B10 != -1)
              {
                dispatch_once(&qword_280D67B10, &__block_literal_global_376_0);
              }

              v49 = [qword_280D67B08 containsObject:v48];

              if (v49)
              {
LABEL_28:
                v50 = [(HDDemoDataFoodSampleGenerator *)&selfCopy->super.super.isa _computeNutrientForDemoPerson:v25 atTime:v41 mealItem:v47 quantityType:toTime]* 1.3;
                if (v50 != 0.0 && v50 != -2147483650.0)
                {
                  v52 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:v47];
                  v53 = [(HDDemoDataFoodDatabase *)selfCopy->_foodDatabase canonicalDietaryUnitForQuantityTypeIdentifier:v47];
                  v54 = [MEMORY[0x277CCD7E8] quantityWithUnit:v53 doubleValue:v50];
                  v55 = [MEMORY[0x277CCD800] quantitySampleWithType:v52 quantity:v54 startDate:v166 endDate:v166];
                  [collectionCopy addObjectFromPhone:v55];
                  [v168 addObject:v55];

                  selfCopy = v167;
                }
              }

              ++v46;
            }

            while (v44 != v46);
            v44 = [nutritionFacts countByEnumeratingWithState:&v172 objects:v185 count:16];
          }

          while (v44);
        }

        if ([v168 count])
        {
          v183 = v160;
          brandName = [v41 brandName];
          v184 = brandName;
          v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v184 forKeys:&v183 count:1];

          v58 = [MEMORY[0x277CCD240] correlationWithType:_MergedGlobals_9 startDate:v166 endDate:v166 objects:v168 metadata:v57];
          [collectionCopy addObjectFromPhone:v58];

          selfCopy = v167;
        }

        v40 = v164 + 1;
      }

      while (v164 + 1 != v163);
      v163 = [obj countByEnumeratingWithState:&v176 objects:v186 count:16];
    }

    while (v163);
  }

  v59 = obj;

  if ((v158 - 2) < 3)
  {
    goto LABEL_47;
  }

  if (v158 != 1)
  {
LABEL_59:
    v26 = v159;
    goto LABEL_60;
  }

  v60 = qword_280D67AF0;
  v61 = v25;
  v62 = v60;
  v63 = v166;
  if (v23 == 0.0 || [v61 insulinTherapy])
  {
    v64 = 0;
  }

  else
  {
    v152 = MEMORY[0x277CCD7E8];
    internationalUnit = [MEMORY[0x277CCDAB0] internationalUnit];
    v154 = [v152 quantityWithUnit:internationalUnit doubleValue:floor(v23 * 0.5)];

    v155 = MEMORY[0x277CCD800];
    *&v190 = *MEMORY[0x277CCC4C8];
    v189[0] = &unk_283CB0588;
    v156 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v189 forKeys:&v190 count:1];
    v64 = [v155 quantitySampleWithType:v62 quantity:v154 startDate:v63 endDate:v63 metadata:v156];

    selfCopy = v167;
  }

  if (v64)
  {
    [collectionCopy addObjectFromPhone:v64];
  }

  v59 = obj;
LABEL_47:
  v65 = v59;
  obj = v65;
  if (v23 == 0.0)
  {
    goto LABEL_56;
  }

  v192 = 0u;
  v193 = 0u;
  v190 = 0u;
  v191 = 0u;
  v66 = [v65 countByEnumeratingWithState:&v190 objects:v189 count:16];
  v65 = obj;
  if (!v66)
  {
    goto LABEL_56;
  }

  v67 = *v191;
  v68 = *MEMORY[0x277CCC9E8];
  v69 = 0.0;
  do
  {
    for (i = 0; i != v66; ++i)
    {
      if (*v191 != v67)
      {
        objc_enumerationMutation(obj);
      }

      nutritionFacts2 = [*(*(&v190 + 1) + 8 * i) nutritionFacts];
      v72 = [nutritionFacts2 objectForKeyedSubscript:v68];
      [v72 doubleValue];
      v69 = v69 + v73;
    }

    v66 = [obj countByEnumeratingWithState:&v190 objects:v189 count:16];
  }

  while (v66);
  selfCopy = v167;
  v65 = obj;
  if (v69 == 0.0)
  {
LABEL_56:

    v74 = 0;
  }

  else
  {
    v146 = MEMORY[0x277CCD7E8];
    internationalUnit2 = [MEMORY[0x277CCDAB0] internationalUnit];
    v74 = [v146 quantityWithUnit:internationalUnit2 doubleValue:floor(v69 / (500.0 / v23))];

    if (v74)
    {
      v148 = MEMORY[0x277CCD800];
      v149 = qword_280D67AF0;
      v181 = *MEMORY[0x277CCC4C8];
      v182 = &unk_283CB0570;
      v150 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v182 forKeys:&v181 count:1];
      v151 = [v148 quantitySampleWithType:v149 quantity:v74 startDate:v166 endDate:v166 metadata:v150];

      [collectionCopy addObjectFromPhone:v151];
    }

    selfCopy = v167;
  }

  v26 = v159;

LABEL_60:
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __107__HDDemoDataFoodSampleGenerator_generateObjectsForDemoPerson_fromTime_toTime_currentDate_objectCollection___block_invoke_370;
  aBlock[3] = &unk_278616268;
  aBlock[4] = selfCopy;
  v75 = v26;
  v170 = v75;
  v76 = collectionCopy;
  v171 = v76;
  v77 = _Block_copy(aBlock);
  if ([v75 useContinuousGlucoseMonitoring])
  {
    for (; time <= toTime; time = time + v78)
    {
      v77[2](v77, time);
      [v75 continuousGlucoseMonitoringSampleFrequency];
    }
  }

  else
  {
    v77[2](v77, toTime);
  }

  v79 = qword_280D67AF0;
  v80 = v75;
  v81 = v79;
  v82 = v166;
  v83 = 0;
  if (v167 && v23 != 0.0)
  {
    if ([v80 insulinTherapy] == 1 && v167[11] <= toTime)
    {
      [v80 timeIncrement];
      v167[11] = v84 + toTime;
      [v80 timeIncrement];
      v86 = floor(v23 * 0.5 * v85 * 40.0) / 40.0;
      v87 = MEMORY[0x277CCD7E8];
      internationalUnit3 = [MEMORY[0x277CCDAB0] internationalUnit];
      v89 = [v87 quantityWithUnit:internationalUnit3 doubleValue:v86];

      [v80 timeIncrement];
      v91 = [v82 dateByAddingTimeInterval:v90 * -86400.0];
      v92 = MEMORY[0x277CCD800];
      *&v190 = *MEMORY[0x277CCC4C8];
      v189[0] = &unk_283CB0588;
      v93 = MEMORY[0x277CBEAC0];
      v94 = v82;
      v95 = [v93 dictionaryWithObjects:v189 forKeys:&v190 count:1];
      v83 = [v92 quantitySampleWithType:v81 quantity:v89 startDate:v91 endDate:v94 metadata:v95];
    }

    else
    {
      v83 = 0;
    }
  }

  if (v83)
  {
    [v76 addObjectFromPhone:v83];
  }

  v96 = v80;
  v97 = v96;
  if (!v167)
  {
    goto LABEL_76;
  }

  if (v167[15] > toTime)
  {
    goto LABEL_76;
  }

  [v96 waterConsumedSampleFrequency];
  v167[15] = v98 + toTime;
  demoDataGenerator2 = [v167 demoDataGenerator];
  sleepSampleGenerator = [demoDataGenerator2 sleepSampleGenerator];
  v101 = [sleepSampleGenerator isDemoPersonSleeping:v97 atTime:toTime];

  if (v101)
  {
LABEL_76:
    v102 = 0;
    v103 = v97;
LABEL_77:

    goto LABEL_78;
  }

  demoDataGenerator3 = [v167 demoDataGenerator];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v107 = [demoDataGenerator3 isDemoDataTimeInWeekend:currentCalendar calendar:toTime];

  if (v107)
  {
    [v97 weekendSleepParameters];
  }

  else
  {
    [v97 weekdaySleepParameters];
  }
  v108 = ;
  demoDataGenerator4 = [v167 demoDataGenerator];
  sleepSampleGenerator2 = [demoDataGenerator4 sleepSampleGenerator];
  [v108 bedtime];
  v112 = v111;
  [v97 bedtimeNoiseStdDev];
  [sleepSampleGenerator2 computeSleepTimeFromCurrentTime:toTime mean:v112 stdDev:v113];
  v115 = v114;

  demoDataGenerator5 = [v167 demoDataGenerator];
  sleepSampleGenerator3 = [demoDataGenerator5 sleepSampleGenerator];
  [v108 wakeUpTime];
  v119 = v118;
  [v97 wakeUpTimeNoiseStdDev];
  [sleepSampleGenerator3 computeSleepTimeFromCurrentTime:toTime mean:v119 stdDev:v120];
  v122 = v121;

  [v97 waterConsumedSampleFrequency];
  v124 = ((v115 - v122) / v123);
  [v97 waterConsumedDailyMean];
  v126 = v125;
  [v97 waterConsumedIntervalMean];
  v128 = ((v126 / v127) / v124);
  demoDataGenerator6 = [v167 demoDataGenerator];
  statisticsSampleGenerator = [demoDataGenerator6 statisticsSampleGenerator];
  [statisticsSampleGenerator pseudoRandomDoubleFromTime:toTime];
  v132 = v131;

  if (v132 >= v128)
  {
    v102 = 0;
  }

  else
  {
    [v97 waterConsumedIntervalMean];
    v134 = v133;
    demoDataGenerator7 = [v167 demoDataGenerator];
    statisticsSampleGenerator2 = [demoDataGenerator7 statisticsSampleGenerator];
    [v97 waterConsumedIntervalStdDev];
    [statisticsSampleGenerator2 computeNoiseFromTime:toTime stdDev:v137];
    v139 = v134 + v138;

    v140 = 100 * (v139 / 100.0);
    if (v140 < 0)
    {
      v140 = -100 * (v139 / 100.0);
    }

    v141 = v140;
    if (v140 < 200.0)
    {
      v141 = 200.0;
    }

    v102 = [MEMORY[0x277CCABB0] numberWithDouble:v141];
  }

  if (v102)
  {
    v142 = MEMORY[0x277CCD7E8];
    v143 = qword_280D67AE0;
    [v102 doubleValue];
    v103 = [v142 quantityWithUnit:v143 doubleValue:v144 / 1000.0];
    v145 = [MEMORY[0x277CCD800] quantitySampleWithType:qword_280D67AF8 quantity:v103 startDate:v82 endDate:v82];
    [v76 addObjectFromPhone:v145];

    goto LABEL_77;
  }

LABEL_78:

  v104 = *MEMORY[0x277D85DE8];
}

uint64_t __107__HDDemoDataFoodSampleGenerator_generateObjectsForDemoPerson_fromTime_toTime_currentDate_objectCollection___block_invoke()
{
  v0 = [MEMORY[0x277CCD250] correlationTypeForIdentifier:*MEMORY[0x277CCBBB0]];
  v1 = _MergedGlobals_9;
  _MergedGlobals_9 = v0;

  v2 = [MEMORY[0x277CCDAB0] unitFromString:@"mg/dL"];
  v3 = qword_280D67AD8;
  qword_280D67AD8 = v2;

  v4 = [MEMORY[0x277CCDAB0] literUnit];
  v5 = qword_280D67AE0;
  qword_280D67AE0 = v4;

  v6 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC970]];
  v7 = qword_280D67AE8;
  qword_280D67AE8 = v6;

  v8 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCBC0]];
  v9 = qword_280D67AF0;
  qword_280D67AF0 = v8;

  qword_280D67AF8 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCAF8]];

  return MEMORY[0x2821F96F8]();
}

- (uint64_t)mealTypeForTime:(uint64_t)result
{
  if (result)
  {
    if (*(result + 152) <= a2)
    {
      return 4;
    }

    else if (*(result + 144) <= a2)
    {
      return 3;
    }

    else if (*(result + 136) <= a2)
    {
      return 2;
    }

    else if (*(result + 128) <= a2)
    {
      return 1;
    }

    else
    {
      return 5;
    }
  }

  return result;
}

- (double)_computeNutrientForDemoPerson:(void *)person atTime:(void *)time mealItem:(double)item quantityType:
{
  v9 = a2;
  personCopy = person;
  timeCopy = time;
  v12 = 0.0;
  if (self)
  {
    v13 = item - item;
    v14 = 1.0;
    if ([v9 biologicalSex] == 2)
    {
      v15 = 1.2;
    }

    else
    {
      v15 = 1.0;
    }

    [v9 numCupsOfCoffeeDailyMean];
    v17 = v16;
    demoDataGenerator = [self demoDataGenerator];
    statisticsSampleGenerator = [demoDataGenerator statisticsSampleGenerator];
    [v9 numCupsOfCoffeeStdDev];
    [statisticsSampleGenerator computeNoiseFromTime:item stdDev:v20];
    v22 = v21;

    [v9 dinnerTime];
    if (v13 >= v23)
    {
      v27 = 4;
    }

    else
    {
      [v9 snackTime];
      if (v13 >= v24)
      {
        v14 = 0.5;
        v27 = 3;
      }

      else
      {
        [v9 lunchTime];
        if (v13 >= v25)
        {
          v27 = 2;
        }

        else
        {
          [v9 breakfastTime];
          if (v13 < v26)
          {
            goto LABEL_24;
          }

          v27 = 1;
        }
      }
    }

    nutritionFacts = [personCopy nutritionFacts];
    v29 = [nutritionFacts objectForKeyedSubscript:timeCopy];
    [v29 doubleValue];
    v31 = v14 * v30;
    [personCopy recommendedNumServings];
    v33 = v31 * v32;

    if (v33 != 0.0)
    {
      if (v27 <= (v17 + v22) && [personCopy foodType] != 5)
      {
        coffee = [self[4] coffee];
        nutritionFacts2 = [coffee nutritionFacts];
        v36 = [nutritionFacts2 objectForKeyedSubscript:timeCopy];
        [v36 doubleValue];
        v33 = v33 + v37;
      }

      [v9 weightLossStartDay];
      if (v38 > item)
      {
        [v9 preDietIntakeMultiplier];
        v33 = v33 * v39;
      }

      demoDataGenerator2 = [self demoDataGenerator];
      statisticsSampleGenerator2 = [demoDataGenerator2 statisticsSampleGenerator];
      [statisticsSampleGenerator2 pseudoRandomDoubleFromTime:item];
      v43 = v15 * v33 * (v42 * 0.07 + 0.95);

      v44 = [timeCopy isEqualToString:*MEMORY[0x277CCCAF8]];
      v45 = 10.0;
      if (v43 >= 10.0)
      {
        v45 = v43;
      }

      v46 = v45;
      if (v44)
      {
        v12 = v46;
      }

      else
      {
        v12 = v43;
      }
    }
  }

LABEL_24:

  return v12;
}

void __107__HDDemoDataFoodSampleGenerator_generateObjectsForDemoPerson_fromTime_toTime_currentDate_objectCollection___block_invoke_370(id *a1, double a2)
{
  v163 = *MEMORY[0x277D85DE8];
  v4 = a1[4];
  v5 = a1[5];
  v6 = v5;
  if (!v4 || *(v4 + 7) > a2)
  {
    goto LABEL_77;
  }

  if ([v5 useContinuousGlucoseMonitoring])
  {
    [v6 continuousGlucoseMonitoringSampleFrequency];
    *(v4 + 7) = v7 + a2;
    v8 = 1;
  }

  else if (*(v4 + 8) <= a2)
  {
    v9 = a2;
    v10 = [v4 demoDataGenerator];
    v11 = [MEMORY[0x277CBEA80] currentCalendar];
    v12 = [v10 isDemoDataTimeInWeekend:v11 calendar:a2];

    if (v12)
    {
      [v6 weekendSleepParameters];
    }

    else
    {
      [v6 weekdaySleepParameters];
    }
    v13 = ;
    v14 = [v4 demoDataGenerator];
    v15 = [v14 activitySampleGenerator];
    [v6 exerciseStartTime];
    v17 = v16;
    [v6 exerciseStartTimeStdDev];
    [v15 _computeExerciseTimeFromCurrentTime:a2 mean:v17 stdDev:v18];
    v155 = v19;

    v20 = [v4 demoDataGenerator];
    v21 = [v20 activitySampleGenerator];
    [v6 exerciseStopTime];
    v23 = v22;
    [v6 exerciseStopTimeStdDev];
    [v21 _computeExerciseTimeFromCurrentTime:a2 mean:v23 stdDev:v24];
    v26 = v25;

    v27 = v9;
    [v6 breakfastTime];
    v29 = v28;
    [v6 breakfastTimeSampleNoiseStdDev];
    [v4 _computeMealTimeForDemoPerson:v6 fromTime:1 mealTimeType:a2 timeMean:v29 stdDev:v30];
    v32 = v31 + v9;
    [v6 breakfastTime];
    v34 = v33;
    [v6 mealTimeSampleNoiseStdDev];
    [v4 _computeMealTimeForDemoPerson:v6 fromTime:2 mealTimeType:a2 timeMean:v34 stdDev:v35];
    v37 = v36;
    [v6 breakfastTime];
    v39 = v38;
    [v6 mealTimeSampleNoiseStdDev];
    [v4 _computeMealTimeForDemoPerson:v6 fromTime:3 mealTimeType:a2 timeMean:v39 stdDev:v40];
    v153 = v41;
    [v6 breakfastTime];
    v43 = v42;
    [v6 mealTimeSampleNoiseStdDev];
    [v4 _computeMealTimeForDemoPerson:v6 fromTime:4 mealTimeType:a2 timeMean:v43 stdDev:v44];
    v152 = v45;
    v46 = [v4 demoDataGenerator];
    v47 = [v46 sleepSampleGenerator];
    [v13 bedtime];
    v49 = v48;
    [v6 bedtimeNoiseStdDev];
    [v47 computeSleepTimeFromCurrentTime:a2 mean:v49 stdDev:v50];
    v151 = v51;

    v52 = [v4 demoDataGenerator];
    v53 = [v52 sleepSampleGenerator];
    [v13 wakeUpTime];
    v55 = v54;
    [v6 wakeUpTimeNoiseStdDev];
    [v53 computeSleepTimeFromCurrentTime:a2 + 1.0 mean:v55 stdDev:v56];
    v58 = v57;

    v59 = [v4 demoDataGenerator];
    v60 = [v59 activitySampleGenerator];
    [v6 exerciseStartTime];
    v62 = v61;
    [v6 exerciseStartTimeStdDev];
    [v60 _computeExerciseTimeFromCurrentTime:a2 + 1.0 mean:v62 stdDev:v63];
    v65 = v64;

    if (*&v155 <= a2)
    {
      v67 = v37 + v27;
      if (v32 <= a2)
      {
        v68 = v153 + v27;
        if (v67 <= a2)
        {
          v69 = v152 + v27;
          if (v68 <= a2)
          {
            if (v69 <= a2)
            {
              v66 = v58 + (v9 + 1) + (v65 + (v9 + 1) - (v58 + (v9 + 1))) * 0.5;
            }

            else
            {
              v66 = v69 + (v151 + v27 - v69) * 0.5;
            }
          }

          else
          {
            v66 = v68 + (v69 - v68) * 0.5;
          }
        }

        else
        {
          v66 = v67 + (v68 - v67) * 0.5;
        }
      }

      else
      {
        v66 = v32 + (v67 - v32) / 3.0;
      }
    }

    else
    {
      v66 = v26 + (v32 - v26) * 0.5;
    }

    *(v4 + 8) = v66;
    v70 = [v4 demoDataGenerator];
    v71 = [v70 statisticsSampleGenerator];
    [v71 pseudoRandomDoubleFromTime:a2];
    v73 = v72;
    [v6 numDailyFingerSticksAdherence];
    v8 = v73 < v74;
  }

  else
  {
    v8 = 0;
  }

  v156 = [v4 demoDataGenerator];
  v154 = [v156 bodySampleGenerator];
  [v154 lastWeightInKg];
  v76 = v75;
  v77 = v6;
  if (*(v4 + 9) < a2)
  {
    v160 = 0u;
    v161 = 0u;
    v158 = 0u;
    v159 = 0u;
    v78 = *(v4 + 6);
    v79 = [v78 countByEnumeratingWithState:&v158 objects:v162 count:16];
    if (v79)
    {
      v80 = v79;
      v81 = *v159;
      v82 = *MEMORY[0x277CCC9E8];
      v83 = 0.0;
      do
      {
        for (i = 0; i != v80; ++i)
        {
          if (*v159 != v81)
          {
            objc_enumerationMutation(v78);
          }

          v83 = v83 + [(HDDemoDataFoodSampleGenerator *)v4 _computeNutrientForDemoPerson:v77 atTime:*(*(&v158 + 1) + 8 * i) mealItem:v82 quantityType:a2];
        }

        v80 = [v78 countByEnumeratingWithState:&v158 objects:v162 count:16];
      }

      while (v80);

      if (v83 > 0.0)
      {
        v85 = [v4 demoDataGenerator];
        v86 = [v85 statisticsSampleGenerator];
        [v86 computeNoiseFromTime:a2 + 4.0 stdDev:0.58];
        v88 = fabs(v87) + 1.0;

        v89 = *(v4 + 12);
        if (v89 > 0.0)
        {
          v88 = (v83 * v88 + v89 * *(v4 + 13)) / (v83 + v89);
        }

        *(v4 + 13) = v88;
        *(v4 + 12) = v83 + *(v4 + 12);
      }
    }

    else
    {
    }
  }

  v90 = [v4 demoDataGenerator];
  v91 = [v90 sleepSampleGenerator];
  v92 = [v91 isDemoPersonAwake:v77 atTime:a2];

  if (v92)
  {
    v93 = [v4 demoDataGenerator];
    v94 = [v93 generatorState];
    v95 = [v94 isExercising];

    if (v95)
    {
      v96 = 5.233;
    }

    else
    {
      v101 = [v4 demoDataGenerator];
      v102 = [v101 activitySampleGenerator];
      [v77 continuousGlucoseMonitoringSampleFrequency];
      v104 = [v102 _isDemoPersonWalking:v77 atTime:a2 samplePeriod:v103];

      if (v104)
      {
        v105 = [v4 demoDataGenerator];
        v106 = [v105 activitySampleGenerator];
        v107 = [v106 _computeFlightsClimbedForDemoPerson:v77 atTime:a2];

        v96 = dbl_2291669F0[v107 == 0];
      }

      else
      {
        v96 = 0.443;
      }
    }
  }

  else
  {
    v96 = 0.233;
  }

  if ([v77 biologicalSex] == 2)
  {
    v96 = v96 * 1.1;
  }

  [v77 continuousGlucoseMonitoringSampleFrequency];
  v98 = v96 * (v97 / 0.000694444444);
  v99 = *(v4 + 10);
  if (v99 <= 185.0)
  {
    if (v99 <= 180.0)
    {
      if (v99 <= 170.0)
      {
        if (v99 <= 160.0)
        {
          if (v99 <= 150.0)
          {
            if (v99 <= 140.0)
            {
              v100 = dbl_229166A00[v99 > 130.0];
            }

            else
            {
              v100 = 0.10019;
            }
          }

          else
          {
            v100 = 0.20038;
          }
        }

        else
        {
          v100 = 0.39377;
        }
      }

      else
      {
        v100 = 0.8155;
      }
    }

    else
    {
      v100 = 1.6543;
    }
  }

  else
  {
    v100 = 2.4698;
  }

  if ([v77 biologicalSex] == 2)
  {
    v108 = v100 * 1.08;
  }

  else
  {
    v108 = v100;
  }

  [v77 insulinProduction];
  v110 = v109;
  [v77 insulinProduction];
  v112 = 1.0 - v111;
  [v77 insulinAdherence];
  v114 = *(v4 + 14) + v108 * (v110 + v112 * v113);
  *(v4 + 14) = v114;
  [v77 insulinSensitivity];
  v116 = v114 * v115;
  [v77 continuousGlucoseMonitoringSampleFrequency];
  v118 = v98 + v116 * (v117 / 0.000694444444);
  [v77 continuousGlucoseMonitoringSampleFrequency];
  *(v4 + 14) = *(v4 + 14) * exp2(v119 / -0.00347222222);
  v120 = 0.0;
  if (*(v4 + 12) > 0.0)
  {
    v121 = fmax(v76 * 2.20461988 * -0.02 + 7.0, 2.0);
    if (v121 <= 5.5)
    {
      v122 = v121;
    }

    else
    {
      v122 = 5.5;
    }

    v123 = *(v4 + 13) / v122;
    [v77 continuousGlucoseMonitoringSampleFrequency];
    v125 = v123 * (v124 / 0.000694444444);
    v126 = *(v4 + 12);
    if (v125 >= v126)
    {
      v125 = *(v4 + 12);
    }

    v127 = v126 - v125;
    *(v4 + 12) = v127;
    if (v127 < 0.0)
    {
      *(v4 + 12) = 0;
      *(v4 + 13) = 0;
    }

    v120 = v125 * v122 + 0.0;
  }

  v128 = v120 + *(v4 + 10) - v118;
  if (v128 < 80.0)
  {
    v129 = (80.0 - v128) * 4.0 / 5.0;
    v130 = [v4 demoDataGenerator];
    v131 = [v130 statisticsSampleGenerator];
    [v131 computeNoiseFromTime:a2 stdDev:v129 / 5.0];
    v133 = v129 * fabs(v132);

    v120 = v120 + v133;
  }

  v134 = [v4 demoDataGenerator];
  v135 = [v134 statisticsSampleGenerator];
  [v135 computeNoiseFromTime:a2 stdDev:2.0];
  v137 = v136;

  v138 = (v137 + sin((a2 + -0.375) * 6.28318531) * 0.08 + v120 - v118 + *(v4 + 10));
  if (*(v4 + 9) <= a2)
  {
    *(v4 + 9) = *(v4 + 5);
  }

  v139 = v138;
  if (*(v4 + 7) - a2 < 0.0173611111)
  {
    v139 = *(v4 + 10) * 0.13 + v139 * 0.87;
  }

  if (v8)
  {
    v140 = [v4 demoDataGenerator];
    v141 = [v140 statisticsSampleGenerator];
    [v141 computeNoiseFromTime:a2 + 4.0 stdDev:10.0];
    v143 = v139 + v142;

    *(v4 + 10) = floor(v143);
    v157 = [MEMORY[0x277CCABB0] numberWithDouble:?];

    v144 = v157;
    if (!v157)
    {
      goto LABEL_79;
    }

    v145 = [a1[4] demoDataGenerator];
    v6 = [v145 currentDateFromCurrentTime:a2];

    v146 = MEMORY[0x277CCD7E8];
    v147 = qword_280D67AD8;
    [v157 doubleValue];
    v148 = [v146 quantityWithUnit:v147 doubleValue:?];
    v149 = [MEMORY[0x277CCD800] quantitySampleWithType:qword_280D67AE8 quantity:v148 startDate:v6 endDate:v6];
    [a1[6] addObjectFromPhone:v149];
  }

  else
  {
LABEL_77:
    v157 = 0;
  }

  v144 = v157;
LABEL_79:
  v150 = *MEMORY[0x277D85DE8];
}

void __73__HDDemoDataFoodSampleGenerator__isTypicalNutritionTrackingQuantityType___block_invoke()
{
  v8[6] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CCC9D8];
  v8[0] = *MEMORY[0x277CCC9E8];
  v8[1] = v1;
  v2 = *MEMORY[0x277CCCAB0];
  v8[2] = *MEMORY[0x277CCCA30];
  v8[3] = v2;
  v3 = *MEMORY[0x277CCCA10];
  v8[4] = *MEMORY[0x277CCCA90];
  v8[5] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:6];
  v5 = [v0 setWithArray:v4];
  v6 = qword_280D67B08;
  qword_280D67B08 = v5;

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isDemoPersonConsumingCaffeine:(id)caffeine atTime:(double)time
{
  caffeineCopy = caffeine;
  timeCopy = time;
  v8 = time - timeCopy;
  [caffeineCopy numCupsOfCoffeeDailyMean];
  v10 = v9;
  demoDataGenerator = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  statisticsSampleGenerator = [demoDataGenerator statisticsSampleGenerator];
  [caffeineCopy numCupsOfCoffeeStdDev];
  v14 = v13;

  [statisticsSampleGenerator computeNoiseFromTime:timeCopy stdDev:v14];
  v16 = fabs(v10 + v15);

  v17 = [(HDDemoDataFoodSampleGenerator *)self mealTypeForTime:v8];
  if (v17 <= 2)
  {
    if (v17 == 1)
    {
      nextBreakfastTime = self->_nextBreakfastTime;
      self->_lastMealTime = nextBreakfastTime;
      v20 = 1.0;
    }

    else
    {
      if (v17 != 2)
      {
LABEL_13:
        v21 = 0;
        nextBreakfastTime = self->_lastMealTime;
        goto LABEL_14;
      }

      nextBreakfastTime = self->_nextLunchTime;
      self->_lastMealTime = nextBreakfastTime;
      v20 = 2.0;
    }
  }

  else
  {
    switch(v17)
    {
      case 3:
        nextBreakfastTime = self->_nextSnackTime;
        self->_lastMealTime = nextBreakfastTime;
        v20 = 3.0;
        break;
      case 4:
        nextBreakfastTime = self->_nextDinnerTime;
        self->_lastMealTime = nextBreakfastTime;
        v20 = 4.0;
        break;
      case 5:
        return 0;
      default:
        goto LABEL_13;
    }
  }

  v21 = v16 >= v20;
LABEL_14:
  v22 = nextBreakfastTime + 0.0163541667;
  self->_lastMealTime = v22;
  v23 = v8 > v22;
  if (v8 >= v22 + 0.0486111111)
  {
    v23 = 0;
  }

  return v21 && v23;
}

- (double)_computeMealTimeForDemoPerson:(id)person fromTime:(double)time mealTimeType:(int64_t)type timeMean:(double)mean stdDev:(double)dev
{
  typeCopy = type;
  timeCopy = time;
  demoDataGenerator = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  statisticsSampleGenerator = [demoDataGenerator statisticsSampleGenerator];
  [statisticsSampleGenerator computeStatisticalTimeFromCurrentTime:typeCopy + timeCopy * 4.0 mean:mean stdDev:dev];
  v14 = v13;

  return v14;
}

- (double)_nextMealTimeForDemoPerson:(double)person atTime:
{
  v5 = a2;
  v6 = v5;
  personCopy = person;
  v8 = person + 1;
  if (self[19] <= person)
  {
    v10 = personCopy;
    [v5 dinnerTime];
    v12 = v11;
    [v6 mealTimeSampleNoiseStdDev];
    v14 = v13;
    selfCopy3 = self;
    v16 = v6;
    v17 = v10;
    v18 = 4;
LABEL_9:
    [selfCopy3 _computeMealTimeForDemoPerson:v16 fromTime:v18 mealTimeType:v17 timeMean:v12 stdDev:v14];
    v9 = v25 + v8;
    goto LABEL_10;
  }

  if (self[18] <= person)
  {
    v19 = personCopy;
    [v5 snackTime];
    v12 = v20;
    [v6 mealTimeSampleNoiseStdDev];
    v14 = v21;
    selfCopy3 = self;
    v16 = v6;
    v17 = v19;
    v18 = 3;
    goto LABEL_9;
  }

  if (self[17] <= person)
  {
    v22 = personCopy;
    [v5 lunchTime];
    v12 = v23;
    [v6 mealTimeSampleNoiseStdDev];
    v14 = v24;
    selfCopy3 = self;
    v16 = v6;
    v17 = v22;
    v18 = 2;
    goto LABEL_9;
  }

  if (self[16] <= person)
  {
    [v5 breakfastTime];
    v28 = v27;
    [v6 breakfastTimeSampleNoiseStdDev];
    [self _computeMealTimeForDemoPerson:v6 fromTime:1 mealTimeType:v8 timeMean:v28 stdDev:v29];
    v9 = v30 + v8;
  }

  else
  {
    v9 = self[5];
  }

LABEL_10:

  return v9;
}

- (void)_generateRandomLastMeal
{
  v12[2] = *MEMORY[0x277D85DE8];
  if (self)
  {
    foodDatabase = self->_foodDatabase;
  }

  else
  {
    foodDatabase = 0;
  }

  v4 = foodDatabase;
  v5 = [(HDDemoDataFoodDatabase *)v4 randomFoodForType:4];

  if (self)
  {
    v6 = self->_foodDatabase;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [(HDDemoDataFoodDatabase *)v7 randomFoodForType:5];

  v12[0] = v5;
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  lastMeal = self->_lastMeal;
  self->_lastMeal = v9;

  v11 = *MEMORY[0x277D85DE8];
}

@end