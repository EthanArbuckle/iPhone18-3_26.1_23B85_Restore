@interface HDDemoDataPathologySampleGenerator
- (HDDemoDataPathologySampleGenerator)init;
- (HDDemoDataPathologySampleGenerator)initWithCoder:(id)a3;
- (id)spirometryForDemoPerson:(uint64_t)a3 atTime:(double)a4 type:;
- (uint64_t)_isAsthmaAttackAllowedForDemoPerson:(double)a3 atTime:;
- (void)_computeSpirometryForDemoPerson:(uint64_t)a3 atTime:(double)a4 type:computeLowerLimitOfNormality:height:;
- (void)encodeWithCoder:(id)a3;
- (void)generateObjectsForDemoPerson:(id)a3 fromTime:(double)a4 toTime:(double)a5 currentDate:(id)a6 objectCollection:(id)a7;
- (void)setupWithDemoDataGenerator:(id)a3;
@end

@implementation HDDemoDataPathologySampleGenerator

- (HDDemoDataPathologySampleGenerator)init
{
  v6.receiver = self;
  v6.super_class = HDDemoDataPathologySampleGenerator;
  v2 = [(HDDemoDataBaseSampleGenerator *)&v6 init];
  v3 = v2;
  if (v2)
  {
    nextSpirometrySampleTimes = v2->_nextSpirometrySampleTimes;
    v2->_nextSpirometrySampleTimes = 0;

    v3->_nextAsthmaAttackSampleTime = 0.0;
    v3->_nextAsthmaAttackEndTime = 0.0;
    v3->_forcePEFR = 0;
  }

  return v3;
}

- (HDDemoDataPathologySampleGenerator)initWithCoder:(id)a3
{
  v17[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = HDDemoDataPathologySampleGenerator;
  v5 = [(HDDemoDataBaseSampleGenerator *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"HDDemoDataPathologySampleHelperNextSpirometrySampleTimesKey"];
    v10 = [v9 mutableCopy];
    nextSpirometrySampleTimes = v5->_nextSpirometrySampleTimes;
    v5->_nextSpirometrySampleTimes = v10;

    [v4 decodeDoubleForKey:@"HDDemoDataPathologySampleHelperNextAsthmaAttackSampleTimeKey"];
    v5->_nextAsthmaAttackSampleTime = v12;
    [v4 decodeDoubleForKey:@"HDDemoDataPathologySampleHelperNextAsthmaAttackEndTimeKey"];
    v5->_nextAsthmaAttackEndTime = v13;
    v5->_forcePEFR = [v4 decodeBoolForKey:@"HDDemoDataPathologySampleHelperForcePEFRKey"];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HDDemoDataPathologySampleGenerator;
  v4 = a3;
  [(HDDemoDataBaseSampleGenerator *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_nextSpirometrySampleTimes forKey:{@"HDDemoDataPathologySampleHelperNextSpirometrySampleTimesKey", v5.receiver, v5.super_class}];
  [v4 encodeDouble:@"HDDemoDataPathologySampleHelperNextAsthmaAttackSampleTimeKey" forKey:self->_nextAsthmaAttackSampleTime];
  [v4 encodeDouble:@"HDDemoDataPathologySampleHelperNextAsthmaAttackEndTimeKey" forKey:self->_nextAsthmaAttackEndTime];
  [v4 encodeBool:self->_forcePEFR forKey:@"HDDemoDataPathologySampleHelperForcePEFRKey"];
}

- (void)setupWithDemoDataGenerator:(id)a3
{
  v17[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = HDDemoDataPathologySampleGenerator;
  [(HDDemoDataBaseSampleGenerator *)&v15 setupWithDemoDataGenerator:v4];
  if (![(HDDemoDataBaseSampleGenerator *)self createdFromNSKeyedUnarchiver])
  {
    v16[0] = &unk_283CB3FF0;
    v16[1] = &unk_283CB4020;
    v17[0] = &unk_283CB4008;
    v17[1] = &unk_283CB4008;
    v16[2] = &unk_283CB4038;
    v17[2] = &unk_283CB4008;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
    v6 = [v5 mutableCopy];
    nextSpirometrySampleTimes = self->_nextSpirometrySampleTimes;
    self->_nextSpirometrySampleTimes = v6;

    v8 = [v4 demoPerson];
    [v8 lunchTime];
    self->_nextAsthmaAttackSampleTime = v9;

    v10 = self->_nextAsthmaAttackSampleTime + 0.107638889;
    v11 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    v12 = [v11 statisticsSampleGenerator];
    [v12 computeNoiseFromTime:0.0 stdDev:0.0243055556];
    self->_nextAsthmaAttackEndTime = v10 + v13;

    self->_forcePEFR = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)generateObjectsForDemoPerson:(id)a3 fromTime:(double)a4 toTime:(double)a5 currentDate:(id)a6 objectCollection:(id)a7
{
  v11 = a3;
  v12 = a6;
  v13 = a7;
  v63.receiver = self;
  v63.super_class = HDDemoDataPathologySampleGenerator;
  [(HDDemoDataBaseSampleGenerator *)&v63 generateObjectsForDemoPerson:v11 fromTime:v12 toTime:v13 currentDate:a5 objectCollection:a5];
  if ([v11 resultsTrackingType] == 2)
  {
    if (qword_27D86C200 != -1)
    {
      dispatch_once(&qword_27D86C200, &__block_literal_global_233);
    }

    v14 = [(HDDemoDataPathologySampleGenerator *)self spirometryForDemoPerson:v11 atTime:0 type:a5];
    i = v14;
    if (v14)
    {
      v16 = MEMORY[0x277CCD7E8];
      v17 = qword_27D86C1D0;
      [v14 doubleValue];
      v18 = [v16 quantityWithUnit:v17 doubleValue:?];
      v19 = [MEMORY[0x277CCD800] quantitySampleWithType:qword_27D86C1E0 quantity:v18 startDate:v12 endDate:v12];
      [v13 addObjectFromPhone:v19];
    }

    v20 = [(HDDemoDataPathologySampleGenerator *)self spirometryForDemoPerson:v11 atTime:1 type:a5];
    v21 = v20;
    if (v20)
    {
      v22 = MEMORY[0x277CCD7E8];
      v23 = qword_27D86C1D0;
      [v20 doubleValue];
      v24 = [v22 quantityWithUnit:v23 doubleValue:?];
      v25 = [MEMORY[0x277CCD800] quantitySampleWithType:qword_27D86C1E8 quantity:v24 startDate:v12 endDate:v12];
      [v13 addObjectFromPhone:v25];
    }

    v26 = [(HDDemoDataPathologySampleGenerator *)self spirometryForDemoPerson:v11 atTime:2 type:a5];
    v27 = v26;
    if (v26)
    {
      v28 = MEMORY[0x277CCD7E8];
      v29 = qword_27D86C1D8;
      [v26 doubleValue];
      v30 = [v28 quantityWithUnit:v29 doubleValue:?];
      v31 = [MEMORY[0x277CCD800] quantitySampleWithType:qword_27D86C1F0 quantity:v30 startDate:v12 endDate:v12];
      [v13 addObjectFromPhone:v31];
    }

    v32 = v11;
    v33 = v32;
    if (!self || [v32 asthmaSeverity] < 1 || self->_nextAsthmaAttackSampleTime >= a5)
    {
      goto LABEL_16;
    }

    [v33 timeIncrement];
    if (a5 - v34 <= self->_nextAsthmaAttackSampleTime)
    {
      self->_forcePEFR = 1;
    }

    if (self->_nextAsthmaAttackEndTime > a5)
    {
LABEL_16:

      v35 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v62 = i;
    v36 = [v33 asthmaSeverity] - 2;
    v37 = 0.0;
    v38 = 0.0;
    if (v36 <= 3)
    {
      v39 = dbl_229181720[v36];
      v40 = dbl_229181740[v36];
      v37 = dbl_229181760[v36];
      v41 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      v42 = [v41 statisticsSampleGenerator];
      [v42 computeNoiseFromTime:a5 stdDev:v39];
      v38 = v40 + v43;
    }

    v44 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    v45 = [v44 statisticsSampleGenerator];
    [v45 computeNoiseFromTime:a5 stdDev:0.03125];
    self->_nextAsthmaAttackEndTime = fabs(v46) + a5;

    v47 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    v48 = [v47 statisticsSampleGenerator];
    [v48 pseudoRandomDoubleFromTime:a5];
    if (v49 >= v37)
    {
    }

    else
    {
      v50 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      [v50 sleepSampleGenerator];
      v51 = v61 = v47;
      v60 = [v51 isDemoPersonSleeping:v33 atTime:self->_nextAsthmaAttackEndTime];

      if ((v60 & 1) == 0)
      {
        self->_forcePEFR = 1;
        i = v62;
LABEL_28:

        v35 = &unk_283CB4050;
        v55 = &unk_283CB4050;
        v56 = MEMORY[0x277CCD7E8];
        v57 = [MEMORY[0x277CCDAB0] countUnit];
        v58 = [v56 quantityWithUnit:v57 doubleValue:{objc_msgSend(&unk_283CB4050, "intValue")}];

        v59 = [MEMORY[0x277CCD800] quantitySampleWithType:qword_27D86C1F8 quantity:v58 startDate:v12 endDate:v12];
        [v13 addObjectFromPhone:v59];

        goto LABEL_17;
      }
    }

    self->_forcePEFR = 1;
    self->_nextAsthmaAttackSampleTime = v38 + a5;
    v52 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    v53 = [v52 statisticsSampleGenerator];
    [v53 computeNoiseFromTime:a5 stdDev:0.0243055556];
    self->_nextAsthmaAttackEndTime = v38 + a5 + 0.107638889 + v54;

    for (i = v62; ([(HDDemoDataPathologySampleGenerator *)self _isAsthmaAttackAllowedForDemoPerson:v33 atTime:self->_nextAsthmaAttackSampleTime]& 1) == 0; self->_nextAsthmaAttackEndTime = self->_nextAsthmaAttackEndTime + 0.0104166667)
    {
      if (![(HDDemoDataPathologySampleGenerator *)self _isAsthmaAttackAllowedForDemoPerson:v33 atTime:self->_nextAsthmaAttackEndTime])
      {
        break;
      }

      self->_nextAsthmaAttackSampleTime = self->_nextAsthmaAttackSampleTime + 0.0104166667;
    }

    goto LABEL_28;
  }

LABEL_18:
}

uint64_t __112__HDDemoDataPathologySampleGenerator_generateObjectsForDemoPerson_fromTime_toTime_currentDate_objectCollection___block_invoke()
{
  v0 = [MEMORY[0x277CCDAB0] countUnit];
  v1 = _MergedGlobals_24;
  _MergedGlobals_24 = v0;

  v2 = [MEMORY[0x277CCDAB0] literUnit];
  v3 = qword_27D86C1D0;
  qword_27D86C1D0 = v2;

  v4 = [MEMORY[0x277CCDAB0] unitFromString:@"L/min"];
  v5 = qword_27D86C1D8;
  qword_27D86C1D8 = v4;

  v6 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB78]];
  v7 = qword_27D86C1E0;
  qword_27D86C1E0 = v6;

  v8 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB80]];
  v9 = qword_27D86C1E8;
  qword_27D86C1E8 = v8;

  v10 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCBF8]];
  v11 = qword_27D86C1F0;
  qword_27D86C1F0 = v10;

  v12 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCBB8]];
  v13 = qword_27D86C1F8;
  qword_27D86C1F8 = v12;

  return MEMORY[0x2821F96F8](v12, v13);
}

- (id)spirometryForDemoPerson:(uint64_t)a3 atTime:(double)a4 type:
{
  v7 = a2;
  if (a1)
  {
    v8 = *(a1 + 40);
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v10 = [v8 objectForKeyedSubscript:v9];
    [v10 doubleValue];
    v12 = v11;

    if (v12 >= a4)
    {
      if (a3 != 2 || (*(a1 + 32) & 1) == 0)
      {
        a1 = 0;
        goto LABEL_17;
      }
    }

    else if (a3 != 2 || (*(a1 + 32) & 1) == 0)
    {
      [v7 spirometrySampleTime];
      v14 = v13 + a4;
      v15 = [a1 demoDataGenerator];
      v16 = [v15 statisticsSampleGenerator];
      [v7 genericSampleTimeNoiseStdDev];
      [v16 computeNoiseFromTime:a4 stdDev:v17];
      v19 = v14 + v18;

      v20 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
      v21 = *(a1 + 40);
      v22 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
      [v21 setObject:v20 forKeyedSubscript:v22];
    }

    v23 = [a1 demoDataGenerator];
    v24 = [v23 bodySampleGenerator];
    [v24 lastHeightInCm];
    [HDDemoDataPathologySampleGenerator _computeSpirometryForDemoPerson:a1 atTime:v7 type:a3 computeLowerLimitOfNormality:a4 height:?];
    v26 = v25;

    v27 = [a1 demoDataGenerator];
    v28 = [v27 bodySampleGenerator];
    [v28 lastHeightInCm];
    [HDDemoDataPathologySampleGenerator _computeSpirometryForDemoPerson:a1 atTime:v7 type:a3 computeLowerLimitOfNormality:a4 height:?];
    v30 = v29;

    v31 = (v26 - v30) / 2.3;
    v32 = [a1 demoDataGenerator];
    v33 = [v32 statisticsSampleGenerator];
    [v33 computeNoiseFromTime:0.0 stdDev:v31];
    v35 = v26 - fabs(v34);

    v36 = [a1 demoDataGenerator];
    v37 = [v36 statisticsSampleGenerator];
    [v37 computeNoiseFromTime:a4 stdDev:v31 * 0.2];
    v39 = v38;

    v40 = v35 + v39;
    if (a3 == 2)
    {
      if ([v7 asthmaSeverity] >= 2 && *(a1 + 48) <= a4 && *(a1 + 56) >= a4)
      {
        v41 = [a1 demoDataGenerator];
        v42 = [v41 statisticsSampleGenerator];
        [v42 pseudoRandomDoubleFromTime:a4];
        v40 = v40 * (v43 * 0.25 + 0.55);
      }

      if (*(a1 + 32) == 1)
      {
        *(a1 + 32) = 0;
      }
    }

    a1 = [MEMORY[0x277CCABB0] numberWithDouble:v40];
  }

LABEL_17:

  return a1;
}

- (void)_computeSpirometryForDemoPerson:(uint64_t)a3 atTime:(double)a4 type:computeLowerLimitOfNormality:height:
{
  v7 = a2;
  v8 = [a1 demoDataGenerator];
  v9 = [v8 currentDateFromCurrentTime:a4];

  v10 = [v7 birthDateComponents];
  v11 = HDDemoData_ageBetweenNSDateComponentsAndDate(v10, v9);

  v12 = [v7 biologicalSex];
  v13 = &unk_2291818B8;
  if (v11 < 18)
  {
    v13 = &unk_229181858;
  }

  v14 = &unk_2291818D0;
  if (v11 >= 18)
  {
    v15 = &unk_2291818E8;
  }

  else
  {
    v14 = &unk_229181870;
    v15 = &unk_229181888;
  }

  v16 = &unk_229181900;
  if (v11 < 18)
  {
    v16 = &unk_2291818A0;
  }

  v17 = &unk_2291817E0;
  if (v11 < 20)
  {
    v17 = &unk_229181780;
  }

  v18 = &unk_2291817F8;
  if (v11 < 20)
  {
    v18 = &unk_229181798;
  }

  v19 = &unk_229181810;
  if (v11 < 20)
  {
    v19 = &unk_2291817B0;
  }

  v20 = &unk_2291817C8;
  if (v11 >= 20)
  {
    v20 = &unk_229181828;
  }

  if (v12 == 2)
  {
    v13 = v17;
    v14 = v18;
    v15 = v19;
  }

  v21 = &unk_229181918;
  if (v12 == 2)
  {
    v16 = v20;
    v21 = &unk_229181840;
  }

  v22 = v13[a3];
  v23 = v14[a3];
  v24 = v15[a3];
  v25 = v16[a3];
  v26 = v21[a3];
}

- (uint64_t)_isAsthmaAttackAllowedForDemoPerson:(double)a3 atTime:
{
  v5 = a2;
  v6 = [a1 demoDataGenerator];
  v7 = [v6 generatorState];
  if (([v7 isExercising] & 1) == 0)
  {
    v8 = [a1 demoDataGenerator];
    v9 = [v8 activitySampleGenerator];
    if (([v9 _isDemoPersonCoolingDown:v5 atTime:a3] & 1) == 0)
    {
      v11 = [a1 demoDataGenerator];
      v12 = [v11 sleepSampleGenerator];
      v13 = [v12 isDemoPersonSleeping:v5 atTime:a3];

      v10 = v13 ^ 1u;
      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_6:

  return v10;
}

@end