@interface HDDemoDataFoodSampleGenerator
- (BOOL)_isDemoPersonConsumingCaffeine:(id)a3 atTime:(double)a4;
- (HDDemoDataFoodSampleGenerator)init;
- (HDDemoDataFoodSampleGenerator)initWithCoder:(id)a3;
- (double)_computeMealTimeForDemoPerson:(id)a3 fromTime:(double)a4 mealTimeType:(int64_t)a5 timeMean:(double)a6 stdDev:(double)a7;
- (double)_computeNutrientForDemoPerson:(void *)a3 atTime:(void *)a4 mealItem:(double)a5 quantityType:;
- (double)_nextMealTimeForDemoPerson:(double)a3 atTime:;
- (uint64_t)mealTypeForTime:(uint64_t)result;
- (void)_generateRandomLastMeal;
- (void)encodeWithCoder:(id)a3;
- (void)generateFirstRunObjectsForDemoPerson:(id)a3 firstDate:(id)a4 objectCollection:(id)a5;
- (void)generateObjectsForDemoPerson:(id)a3 fromTime:(double)a4 toTime:(double)a5 currentDate:(id)a6 objectCollection:(id)a7;
- (void)setupWithDemoDataGenerator:(id)a3;
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

- (HDDemoDataFoodSampleGenerator)initWithCoder:(id)a3
{
  v29[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = HDDemoDataFoodSampleGenerator;
  v5 = [(HDDemoDataBaseSampleGenerator *)&v28 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorNextMealTimeKey"];
    v5->_nextMealTime = v6;
    [v4 decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorNextBreakfastTimeKey"];
    v5->_nextBreakfastTime = v7;
    [v4 decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorNextLunchTimeKey"];
    v5->_nextLunchTime = v8;
    [v4 decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorNextSnackTimeKey"];
    v5->_nextSnackTime = v9;
    [v4 decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorNextDinnerTimeKey"];
    v5->_nextDinnerTime = v10;
    [v4 decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorLastMealTimeKey"];
    v5->_lastMealTime = v11;
    v12 = MEMORY[0x277CBEB98];
    v29[0] = objc_opt_class();
    v29[1] = objc_opt_class();
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
    v14 = [v12 setWithArray:v13];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"HDDemoDataFoodSampleGeneratorLastMealKey"];
    lastMeal = v5->_lastMeal;
    v5->_lastMeal = v15;

    [v4 decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorNextBloodGlucoseSampleTimeKey"];
    v5->_nextBloodGlucoseSampleTime = v17;
    [v4 decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorNextBloodGlucoseFingerStickSampleTimeKey"];
    v5->_nextBloodGlucoseFingerStickSampleTime = v18;
    [v4 decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorNextBloodGlucoseMealTimeKey"];
    v5->_nextBloodGlucoseMealTime = v19;
    [v4 decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorLastBloodGlucoseKey"];
    v5->_lastBloodGlucose = v20;
    [v4 decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorNextInsulinPumpBasalSampleKey"];
    v5->_nextInsulinPumpBasalSampleTime = v21;
    [v4 decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorCarbohydratesLeftToDigestKey"];
    v5->_carbohydratesLeftToDigest = v22;
    [v4 decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorBloodGlucoseCarbohydrateGlycemicRateKey"];
    v5->_bloodGlucoseCarbohydrateGlycemicRate = v23;
    [v4 decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorBloodGlucoseDecreaseRateDueToInsulinKey"];
    v5->_bloodGlucoseDecreaseRateDueToInsulin = v24;
    [v4 decodeDoubleForKey:@"HDDemoDataFoodSampleGeneratorNextWaterConsumeSampleTimeKey"];
    v5->_nextWaterConsumedSampleTime = v25;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HDDemoDataFoodSampleGenerator;
  v4 = a3;
  [(HDDemoDataBaseSampleGenerator *)&v5 encodeWithCoder:v4];
  [v4 encodeDouble:@"HDDemoDataFoodSampleGeneratorNextMealTimeKey" forKey:{self->_nextMealTime, v5.receiver, v5.super_class}];
  [v4 encodeDouble:@"HDDemoDataFoodSampleGeneratorNextBreakfastTimeKey" forKey:self->_nextBreakfastTime];
  [v4 encodeDouble:@"HDDemoDataFoodSampleGeneratorNextLunchTimeKey" forKey:self->_nextLunchTime];
  [v4 encodeDouble:@"HDDemoDataFoodSampleGeneratorNextSnackTimeKey" forKey:self->_nextSnackTime];
  [v4 encodeDouble:@"HDDemoDataFoodSampleGeneratorNextDinnerTimeKey" forKey:self->_nextDinnerTime];
  [v4 encodeDouble:@"HDDemoDataFoodSampleGeneratorLastMealTimeKey" forKey:self->_lastMealTime];
  [v4 encodeObject:self->_lastMeal forKey:@"HDDemoDataFoodSampleGeneratorLastMealKey"];
  [v4 encodeDouble:@"HDDemoDataFoodSampleGeneratorNextBloodGlucoseSampleTimeKey" forKey:self->_nextBloodGlucoseSampleTime];
  [v4 encodeDouble:@"HDDemoDataFoodSampleGeneratorNextBloodGlucoseFingerStickSampleTimeKey" forKey:self->_nextBloodGlucoseFingerStickSampleTime];
  [v4 encodeDouble:@"HDDemoDataFoodSampleGeneratorNextBloodGlucoseMealTimeKey" forKey:self->_nextBloodGlucoseMealTime];
  [v4 encodeDouble:@"HDDemoDataFoodSampleGeneratorLastBloodGlucoseKey" forKey:self->_lastBloodGlucose];
  [v4 encodeDouble:@"HDDemoDataFoodSampleGeneratorNextInsulinPumpBasalSampleKey" forKey:self->_nextInsulinPumpBasalSampleTime];
  [v4 encodeDouble:@"HDDemoDataFoodSampleGeneratorCarbohydratesLeftToDigestKey" forKey:self->_carbohydratesLeftToDigest];
  [v4 encodeDouble:@"HDDemoDataFoodSampleGeneratorBloodGlucoseCarbohydrateGlycemicRateKey" forKey:self->_bloodGlucoseCarbohydrateGlycemicRate];
  [v4 encodeDouble:@"HDDemoDataFoodSampleGeneratorBloodGlucoseDecreaseRateDueToInsulinKey" forKey:self->_bloodGlucoseDecreaseRateDueToInsulin];
  [v4 encodeDouble:@"HDDemoDataFoodSampleGeneratorNextWaterConsumeSampleTimeKey" forKey:self->_nextWaterConsumedSampleTime];
}

- (void)setupWithDemoDataGenerator:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = HDDemoDataFoodSampleGenerator;
  [(HDDemoDataBaseSampleGenerator *)&v19 setupWithDemoDataGenerator:v4];
  v5 = objc_alloc_init(HDDemoDataFoodDatabase);
  foodDatabase = self->_foodDatabase;
  self->_foodDatabase = v5;

  if (![(HDDemoDataBaseSampleGenerator *)self createdFromNSKeyedUnarchiver])
  {
    v7 = [v4 demoPerson];
    [v7 breakfastTime];
    self->_nextMealTime = v8;

    v9 = [v4 demoPerson];
    [v9 breakfastTime];
    self->_nextBreakfastTime = v10;

    v11 = [v4 demoPerson];
    [v11 lunchTime];
    self->_nextLunchTime = v12;

    v13 = [v4 demoPerson];
    [v13 snackTime];
    self->_nextSnackTime = v14;

    v15 = [v4 demoPerson];
    [v15 dinnerTime];
    self->_nextDinnerTime = v16;

    v17 = [v4 demoPerson];
    [v17 breakfastTime];
    self->_nextBloodGlucoseMealTime = v18;
  }
}

- (void)generateFirstRunObjectsForDemoPerson:(id)a3 firstDate:(id)a4 objectCollection:(id)a5
{
  v29[2] = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = HDDemoDataFoodSampleGenerator;
  v8 = a5;
  [(HDDemoDataBaseSampleGenerator *)&v28 generateFirstRunObjectsForDemoPerson:a3 firstDate:a4 objectCollection:v8];
  v9 = v8;
  if (self)
  {
    v10 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v11 = [HDDemoDataGeneratorConfiguration configurationFromDefaults:v10];

    if ([v11 shouldGenerateRecentLiquidsIntake])
    {
      v26 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCAF8]];
      v27 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC9D8]];
      v12 = MEMORY[0x277CCD7E8];
      v13 = [MEMORY[0x277CCDAB0] fluidOunceUSUnit];
      v14 = [v12 quantityWithUnit:v13 doubleValue:8.0];

      v15 = MEMORY[0x277CCD7E8];
      v16 = [MEMORY[0x277CCDAB0] gramUnit];
      v17 = [v15 quantityWithUnit:v16 doubleValue:0.12];

      v18 = objc_alloc(MEMORY[0x277CBEA80]);
      v19 = [v18 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
      v20 = [MEMORY[0x277CBEAA8] date];
      v21 = [v19 dateBySettingHour:8 minute:0 second:0 ofDate:v20 options:0];

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

- (void)generateObjectsForDemoPerson:(id)a3 fromTime:(double)a4 toTime:(double)a5 currentDate:(id)a6 objectCollection:(id)a7
{
  v194 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a6;
  v14 = self;
  v15 = v13;
  v180.receiver = v14;
  v180.super_class = HDDemoDataFoodSampleGenerator;
  v165 = a7;
  v166 = v15;
  [(HDDemoDataBaseSampleGenerator *)&v180 generateObjectsForDemoPerson:v12 fromTime:v15 toTime:a5 currentDate:a5 objectCollection:?];
  if (qword_280D67B00 != -1)
  {
    dispatch_once(&qword_280D67B00, &__block_literal_global_23);
  }

  v167 = v14;
  v159 = v12;
  if (!v14)
  {
    v157 = v12;
    v23 = 0.0;
    goto LABEL_8;
  }

  v16 = v12;
  v17 = [(HDDemoDataBaseSampleGenerator *)v14 demoDataGenerator];
  v18 = [v17 bodySampleGenerator];
  [v18 lastWeightInKg];
  v20 = v19 * 0.55;

  [v16 insulinProduction];
  v22 = v21;

  v23 = v20 * fmax(1.0 - v22, 0.0);
  v24 = [(HDDemoDataFoodSampleGenerator *)v14 mealTypeForTime:a5];
  v25 = v16;
  v158 = v24;
  if (v14->_nextDinnerTime <= a5)
  {
    v27 = v14->_foodDatabase;
    v28 = [(HDDemoDataFoodDatabase *)v27 randomFoodForType:4];

    v29 = v14->_foodDatabase;
    v30 = [(HDDemoDataFoodDatabase *)v29 randomFoodForType:5];

    v14->_nextDinnerTime = [(HDDemoDataFoodSampleGenerator *)v14 _nextMealTimeForDemoPerson:v25 atTime:a5];
    v14->_nextMealTime = v14->_nextBreakfastTime;
    v189[0] = v28;
    v31 = v189;
  }

  else if (v14->_nextSnackTime <= a5)
  {
    v32 = v14->_foodDatabase;
    v28 = [(HDDemoDataFoodDatabase *)v32 randomFoodForType:3];

    v33 = v14->_foodDatabase;
    v30 = [(HDDemoDataFoodDatabase *)v33 randomFoodForType:5];

    [v28 recommendedNumServings];
    [v28 setRecommendedNumServings:v34 * 0.5];
    v14->_nextSnackTime = [(HDDemoDataFoodSampleGenerator *)v14 _nextMealTimeForDemoPerson:v25 atTime:a5];
    v14->_nextMealTime = v14->_nextDinnerTime;
    *&v190 = v28;
    v31 = &v190;
  }

  else if (v14->_nextLunchTime <= a5)
  {
    v35 = v14->_foodDatabase;
    v28 = [(HDDemoDataFoodDatabase *)v35 randomFoodForType:2];

    v36 = v14->_foodDatabase;
    v30 = [(HDDemoDataFoodDatabase *)v36 randomFoodForType:5];

    v14->_nextLunchTime = [(HDDemoDataFoodSampleGenerator *)v14 _nextMealTimeForDemoPerson:v25 atTime:a5];
    v14->_nextMealTime = v14->_nextSnackTime;
    v188 = v28;
    v31 = &v188;
  }

  else
  {
    if (v14->_nextBreakfastTime > a5)
    {
LABEL_8:
      v26 = v159;

      obj = 0;
      goto LABEL_60;
    }

    v37 = v14->_foodDatabase;
    v28 = [(HDDemoDataFoodDatabase *)v37 randomFoodForType:1];

    v38 = v14->_foodDatabase;
    v30 = [(HDDemoDataFoodDatabase *)v38 randomFoodForType:5];

    v14->_nextBreakfastTime = [(HDDemoDataFoodSampleGenerator *)v14 _nextMealTimeForDemoPerson:v25 atTime:a5];
    v14->_nextMealTime = v14->_nextLunchTime;
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

  objc_storeStrong(&v14->_lastMeal, v39);
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
        v42 = [v41 nutritionFacts];
        v43 = [v42 countByEnumeratingWithState:&v172 objects:v185 count:16];
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
                objc_enumerationMutation(v42);
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
                v50 = [(HDDemoDataFoodSampleGenerator *)&v14->super.super.isa _computeNutrientForDemoPerson:v25 atTime:v41 mealItem:v47 quantityType:a5]* 1.3;
                if (v50 != 0.0 && v50 != -2147483650.0)
                {
                  v52 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:v47];
                  v53 = [(HDDemoDataFoodDatabase *)v14->_foodDatabase canonicalDietaryUnitForQuantityTypeIdentifier:v47];
                  v54 = [MEMORY[0x277CCD7E8] quantityWithUnit:v53 doubleValue:v50];
                  v55 = [MEMORY[0x277CCD800] quantitySampleWithType:v52 quantity:v54 startDate:v166 endDate:v166];
                  [v165 addObjectFromPhone:v55];
                  [v168 addObject:v55];

                  v14 = v167;
                }
              }

              ++v46;
            }

            while (v44 != v46);
            v44 = [v42 countByEnumeratingWithState:&v172 objects:v185 count:16];
          }

          while (v44);
        }

        if ([v168 count])
        {
          v183 = v160;
          v56 = [v41 brandName];
          v184 = v56;
          v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v184 forKeys:&v183 count:1];

          v58 = [MEMORY[0x277CCD240] correlationWithType:_MergedGlobals_9 startDate:v166 endDate:v166 objects:v168 metadata:v57];
          [v165 addObjectFromPhone:v58];

          v14 = v167;
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
    v153 = [MEMORY[0x277CCDAB0] internationalUnit];
    v154 = [v152 quantityWithUnit:v153 doubleValue:floor(v23 * 0.5)];

    v155 = MEMORY[0x277CCD800];
    *&v190 = *MEMORY[0x277CCC4C8];
    v189[0] = &unk_283CB0588;
    v156 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v189 forKeys:&v190 count:1];
    v64 = [v155 quantitySampleWithType:v62 quantity:v154 startDate:v63 endDate:v63 metadata:v156];

    v14 = v167;
  }

  if (v64)
  {
    [v165 addObjectFromPhone:v64];
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

      v71 = [*(*(&v190 + 1) + 8 * i) nutritionFacts];
      v72 = [v71 objectForKeyedSubscript:v68];
      [v72 doubleValue];
      v69 = v69 + v73;
    }

    v66 = [obj countByEnumeratingWithState:&v190 objects:v189 count:16];
  }

  while (v66);
  v14 = v167;
  v65 = obj;
  if (v69 == 0.0)
  {
LABEL_56:

    v74 = 0;
  }

  else
  {
    v146 = MEMORY[0x277CCD7E8];
    v147 = [MEMORY[0x277CCDAB0] internationalUnit];
    v74 = [v146 quantityWithUnit:v147 doubleValue:floor(v69 / (500.0 / v23))];

    if (v74)
    {
      v148 = MEMORY[0x277CCD800];
      v149 = qword_280D67AF0;
      v181 = *MEMORY[0x277CCC4C8];
      v182 = &unk_283CB0570;
      v150 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v182 forKeys:&v181 count:1];
      v151 = [v148 quantitySampleWithType:v149 quantity:v74 startDate:v166 endDate:v166 metadata:v150];

      [v165 addObjectFromPhone:v151];
    }

    v14 = v167;
  }

  v26 = v159;

LABEL_60:
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __107__HDDemoDataFoodSampleGenerator_generateObjectsForDemoPerson_fromTime_toTime_currentDate_objectCollection___block_invoke_370;
  aBlock[3] = &unk_278616268;
  aBlock[4] = v14;
  v75 = v26;
  v170 = v75;
  v76 = v165;
  v171 = v76;
  v77 = _Block_copy(aBlock);
  if ([v75 useContinuousGlucoseMonitoring])
  {
    for (; a4 <= a5; a4 = a4 + v78)
    {
      v77[2](v77, a4);
      [v75 continuousGlucoseMonitoringSampleFrequency];
    }
  }

  else
  {
    v77[2](v77, a5);
  }

  v79 = qword_280D67AF0;
  v80 = v75;
  v81 = v79;
  v82 = v166;
  v83 = 0;
  if (v167 && v23 != 0.0)
  {
    if ([v80 insulinTherapy] == 1 && v167[11] <= a5)
    {
      [v80 timeIncrement];
      v167[11] = v84 + a5;
      [v80 timeIncrement];
      v86 = floor(v23 * 0.5 * v85 * 40.0) / 40.0;
      v87 = MEMORY[0x277CCD7E8];
      v88 = [MEMORY[0x277CCDAB0] internationalUnit];
      v89 = [v87 quantityWithUnit:v88 doubleValue:v86];

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

  if (v167[15] > a5)
  {
    goto LABEL_76;
  }

  [v96 waterConsumedSampleFrequency];
  v167[15] = v98 + a5;
  v99 = [v167 demoDataGenerator];
  v100 = [v99 sleepSampleGenerator];
  v101 = [v100 isDemoPersonSleeping:v97 atTime:a5];

  if (v101)
  {
LABEL_76:
    v102 = 0;
    v103 = v97;
LABEL_77:

    goto LABEL_78;
  }

  v105 = [v167 demoDataGenerator];
  v106 = [MEMORY[0x277CBEA80] currentCalendar];
  v107 = [v105 isDemoDataTimeInWeekend:v106 calendar:a5];

  if (v107)
  {
    [v97 weekendSleepParameters];
  }

  else
  {
    [v97 weekdaySleepParameters];
  }
  v108 = ;
  v109 = [v167 demoDataGenerator];
  v110 = [v109 sleepSampleGenerator];
  [v108 bedtime];
  v112 = v111;
  [v97 bedtimeNoiseStdDev];
  [v110 computeSleepTimeFromCurrentTime:a5 mean:v112 stdDev:v113];
  v115 = v114;

  v116 = [v167 demoDataGenerator];
  v117 = [v116 sleepSampleGenerator];
  [v108 wakeUpTime];
  v119 = v118;
  [v97 wakeUpTimeNoiseStdDev];
  [v117 computeSleepTimeFromCurrentTime:a5 mean:v119 stdDev:v120];
  v122 = v121;

  [v97 waterConsumedSampleFrequency];
  v124 = ((v115 - v122) / v123);
  [v97 waterConsumedDailyMean];
  v126 = v125;
  [v97 waterConsumedIntervalMean];
  v128 = ((v126 / v127) / v124);
  v129 = [v167 demoDataGenerator];
  v130 = [v129 statisticsSampleGenerator];
  [v130 pseudoRandomDoubleFromTime:a5];
  v132 = v131;

  if (v132 >= v128)
  {
    v102 = 0;
  }

  else
  {
    [v97 waterConsumedIntervalMean];
    v134 = v133;
    v135 = [v167 demoDataGenerator];
    v136 = [v135 statisticsSampleGenerator];
    [v97 waterConsumedIntervalStdDev];
    [v136 computeNoiseFromTime:a5 stdDev:v137];
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

- (double)_computeNutrientForDemoPerson:(void *)a3 atTime:(void *)a4 mealItem:(double)a5 quantityType:
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = 0.0;
  if (a1)
  {
    v13 = a5 - a5;
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
    v18 = [a1 demoDataGenerator];
    v19 = [v18 statisticsSampleGenerator];
    [v9 numCupsOfCoffeeStdDev];
    [v19 computeNoiseFromTime:a5 stdDev:v20];
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

    v28 = [v10 nutritionFacts];
    v29 = [v28 objectForKeyedSubscript:v11];
    [v29 doubleValue];
    v31 = v14 * v30;
    [v10 recommendedNumServings];
    v33 = v31 * v32;

    if (v33 != 0.0)
    {
      if (v27 <= (v17 + v22) && [v10 foodType] != 5)
      {
        v34 = [a1[4] coffee];
        v35 = [v34 nutritionFacts];
        v36 = [v35 objectForKeyedSubscript:v11];
        [v36 doubleValue];
        v33 = v33 + v37;
      }

      [v9 weightLossStartDay];
      if (v38 > a5)
      {
        [v9 preDietIntakeMultiplier];
        v33 = v33 * v39;
      }

      v40 = [a1 demoDataGenerator];
      v41 = [v40 statisticsSampleGenerator];
      [v41 pseudoRandomDoubleFromTime:a5];
      v43 = v15 * v33 * (v42 * 0.07 + 0.95);

      v44 = [v11 isEqualToString:*MEMORY[0x277CCCAF8]];
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

- (BOOL)_isDemoPersonConsumingCaffeine:(id)a3 atTime:(double)a4
{
  v6 = a3;
  v7 = a4;
  v8 = a4 - v7;
  [v6 numCupsOfCoffeeDailyMean];
  v10 = v9;
  v11 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  v12 = [v11 statisticsSampleGenerator];
  [v6 numCupsOfCoffeeStdDev];
  v14 = v13;

  [v12 computeNoiseFromTime:v7 stdDev:v14];
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

- (double)_computeMealTimeForDemoPerson:(id)a3 fromTime:(double)a4 mealTimeType:(int64_t)a5 timeMean:(double)a6 stdDev:(double)a7
{
  v9 = a5;
  v10 = a4;
  v11 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  v12 = [v11 statisticsSampleGenerator];
  [v12 computeStatisticalTimeFromCurrentTime:v9 + v10 * 4.0 mean:a6 stdDev:a7];
  v14 = v13;

  return v14;
}

- (double)_nextMealTimeForDemoPerson:(double)a3 atTime:
{
  v5 = a2;
  v6 = v5;
  v7 = a3;
  v8 = a3 + 1;
  if (a1[19] <= a3)
  {
    v10 = v7;
    [v5 dinnerTime];
    v12 = v11;
    [v6 mealTimeSampleNoiseStdDev];
    v14 = v13;
    v15 = a1;
    v16 = v6;
    v17 = v10;
    v18 = 4;
LABEL_9:
    [v15 _computeMealTimeForDemoPerson:v16 fromTime:v18 mealTimeType:v17 timeMean:v12 stdDev:v14];
    v9 = v25 + v8;
    goto LABEL_10;
  }

  if (a1[18] <= a3)
  {
    v19 = v7;
    [v5 snackTime];
    v12 = v20;
    [v6 mealTimeSampleNoiseStdDev];
    v14 = v21;
    v15 = a1;
    v16 = v6;
    v17 = v19;
    v18 = 3;
    goto LABEL_9;
  }

  if (a1[17] <= a3)
  {
    v22 = v7;
    [v5 lunchTime];
    v12 = v23;
    [v6 mealTimeSampleNoiseStdDev];
    v14 = v24;
    v15 = a1;
    v16 = v6;
    v17 = v22;
    v18 = 2;
    goto LABEL_9;
  }

  if (a1[16] <= a3)
  {
    [v5 breakfastTime];
    v28 = v27;
    [v6 breakfastTimeSampleNoiseStdDev];
    [a1 _computeMealTimeForDemoPerson:v6 fromTime:1 mealTimeType:v8 timeMean:v28 stdDev:v29];
    v9 = v30 + v8;
  }

  else
  {
    v9 = a1[5];
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