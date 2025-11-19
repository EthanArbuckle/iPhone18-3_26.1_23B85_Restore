@interface HDDemoDataMindfulnessSampleGenerator
- (HDDemoDataMindfulnessSampleGenerator)init;
- (HDDemoDataMindfulnessSampleGenerator)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)generateObjectsForDemoPerson:(id)a3 fromTime:(double)a4 toTime:(double)a5 currentDate:(id)a6 objectCollection:(id)a7;
- (void)setupWithDemoDataGenerator:(id)a3;
@end

@implementation HDDemoDataMindfulnessSampleGenerator

- (HDDemoDataMindfulnessSampleGenerator)init
{
  v3.receiver = self;
  v3.super_class = HDDemoDataMindfulnessSampleGenerator;
  result = [(HDDemoDataBaseSampleGenerator *)&v3 init];
  if (result)
  {
    result->_nextMindfulSessionSampleTime = 0.0;
    result->_didGenerateMindfulnessMinute = 0;
  }

  return result;
}

- (HDDemoDataMindfulnessSampleGenerator)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HDDemoDataMindfulnessSampleGenerator;
  v5 = [(HDDemoDataBaseSampleGenerator *)&v8 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"NextMindfulnessMinuteSampleTime"];
    v5->_nextMindfulSessionSampleTime = v6;
    v5->_didGenerateMindfulnessMinute = [v4 decodeBoolForKey:@"_DidGenerateMindfulnessMinuteKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HDDemoDataMindfulnessSampleGenerator;
  v4 = a3;
  [(HDDemoDataBaseSampleGenerator *)&v6 encodeWithCoder:v4];
  if (self)
  {
    nextMindfulSessionSampleTime = self->_nextMindfulSessionSampleTime;
  }

  else
  {
    nextMindfulSessionSampleTime = 0.0;
  }

  [v4 encodeDouble:@"NextMindfulnessMinuteSampleTime" forKey:{nextMindfulSessionSampleTime, v6.receiver, v6.super_class}];
  [v4 encodeBool:-[HDDemoDataMindfulnessSampleGenerator didGenerateMindfulnessMinute](self forKey:{"didGenerateMindfulnessMinute"), @"_DidGenerateMindfulnessMinuteKey"}];
}

- (void)setupWithDemoDataGenerator:(id)a3
{
  v3.receiver = self;
  v3.super_class = HDDemoDataMindfulnessSampleGenerator;
  [(HDDemoDataBaseSampleGenerator *)&v3 setupWithDemoDataGenerator:a3];
}

- (void)generateObjectsForDemoPerson:(id)a3 fromTime:(double)a4 toTime:(double)a5 currentDate:(id)a6 objectCollection:(id)a7
{
  v93[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a7;
  v87.receiver = self;
  v87.super_class = HDDemoDataMindfulnessSampleGenerator;
  v13 = a6;
  [(HDDemoDataBaseSampleGenerator *)&v87 generateObjectsForDemoPerson:v11 fromTime:v13 toTime:v12 currentDate:a5 objectCollection:a5];
  v14 = v11;
  v15 = v13;
  if (!self || self->_nextMindfulSessionSampleTime > a5)
  {
    goto LABEL_3;
  }

  v17 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  v18 = [v17 sleepSampleGenerator];
  if (![v18 isDemoPersonAwake:v14 atTime:a5])
  {
    goto LABEL_13;
  }

  v19 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  v20 = [v19 activitySampleGenerator];
  if (([v20 _isDemoPersonInWorkoutRecovery:v14 atTime:a5] & 1) == 0)
  {
    v82 = v14;
    v21 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    v22 = [v21 generatorState];
    v84 = self;
    v23 = [v22 isExercising];

    if (v23)
    {
      v16 = 0;
      v14 = v82;
      self = v84;
      goto LABEL_15;
    }

    v14 = v82;
    [v82 mindfulSessionFrequency];
    self = v84;
    v84->_nextMindfulSessionSampleTime = v24 + a5;
    [v82 mindfulSessionFrequency];
    v26 = exp2(v25 * -2.0) * 100.0;
    if (v26 <= arc4random_uniform(0x64u))
    {
LABEL_3:
      v16 = 0;
      goto LABEL_15;
    }

    v27 = [(HDDemoDataBaseSampleGenerator *)v84 demoDataGenerator];
    v28 = [v27 statisticsSampleGenerator];
    [v28 computeNoiseFromTime:a5 stdDev:{objc_msgSend(v82, "mindfulSessionStdDev")}];
    v30 = v29;

    v31 = llround(v30 + [v82 mindfulSessionMean]);
    v17 = [&unk_283CB0420 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(&unk_283CB0420, "count"))}];
    v32 = arc4random_uniform(0x1Eu);
    v33 = *MEMORY[0x277CCDFC8];
    v88[0] = *MEMORY[0x277CCE060];
    v88[1] = v33;
    v89[0] = v17;
    v89[1] = &unk_283CB4248;
    v88[2] = *MEMORY[0x277CCDFD0];
    v34 = [MEMORY[0x277CCABB0] numberWithInteger:v32 + 60];
    v89[2] = v34;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:3];

    if (v31 >= 1)
    {
      v19 = [v15 dateByAddingTimeInterval:(60 * v31)];
      v35 = MEMORY[0x277CCD0B0];
      v20 = [MEMORY[0x277CCD720] categoryTypeForIdentifier:*MEMORY[0x277CCBA30]];
      v16 = [v35 categorySampleWithType:v20 value:0 startDate:v15 endDate:v19 metadata:v18];
      goto LABEL_7;
    }

LABEL_13:
    v16 = 0;
    goto LABEL_14;
  }

  v16 = 0;
LABEL_7:

LABEL_14:
LABEL_15:

  if (v16)
  {
    [v12 addObjectFromWatch:v16];
    v36 = v16;
    v37 = v14;
    if (self)
    {
      v80 = v16;
      v81 = v12;
      v83 = v14;
      v85 = self;
      v39 = [v36 endDate];
      v40 = [v36 startDate];
      [v39 timeIntervalSinceDate:v40];
      v42 = (v41 / 60.0);

      v43 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
      v44 = [MEMORY[0x277CBEB18] array];
      v79 = v36;
      v45 = [v36 startDate];
      [v45 timeIntervalSinceReferenceDate];
      v47 = v46;

      v48 = *MEMORY[0x277CCE030];
      v86 = v37;
      if (v42 >= 1)
      {
        do
        {
          v47 = v47 + 60.0;
          v49 = [v37 restingHeartRate];
          v50 = (v49 + arc4random_uniform(3u) + 2);
          v51 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v47];
          v52 = MEMORY[0x277CCD7E8];
          v53 = [MEMORY[0x277CCDAB0] unitFromString:@"count/min"];
          v54 = [v52 quantityWithUnit:v53 doubleValue:v50];

          v55 = MEMORY[0x277CCD800];
          v88[0] = v48;
          v89[0] = &unk_283CB4260;
          v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:1];
          v57 = [v55 quantitySampleWithType:v43 quantity:v54 startDate:v51 endDate:v51 metadata:v56];

          [v44 addObject:v57];
          v37 = v86;

          --v42;
        }

        while (v42);
      }

      v58 = [v37 restingHeartRate];
      v59 = (v58 + arc4random_uniform(3u) + 2);
      v60 = [v79 startDate];
      v61 = [v60 dateByAddingTimeInterval:-180.0];

      v62 = MEMORY[0x277CCD7E8];
      v63 = [MEMORY[0x277CCDAB0] unitFromString:@"count/min"];
      v64 = [v62 quantityWithUnit:v63 doubleValue:v59];

      v65 = MEMORY[0x277CCD800];
      v92 = v48;
      v93[0] = &unk_283CB4218;
      v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:&v92 count:1];
      v67 = [v65 quantitySampleWithType:v43 quantity:v64 startDate:v61 endDate:v61 metadata:v66];

      v38 = v44;
      [v44 addObject:v67];
      v68 = [v37 restingHeartRate];
      v69 = (v68 + arc4random_uniform(3u) + 2);
      v70 = [v79 startDate];
      v71 = [v70 dateByAddingTimeInterval:120.0];

      v72 = MEMORY[0x277CCD7E8];
      v73 = [MEMORY[0x277CCDAB0] unitFromString:@"count/min"];
      v74 = [v72 quantityWithUnit:v73 doubleValue:v69];

      v75 = MEMORY[0x277CCD800];
      v90 = v48;
      v91 = &unk_283CB4218;
      v76 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
      v77 = [v75 quantitySampleWithType:v43 quantity:v74 startDate:v71 endDate:v71 metadata:v76];

      [v38 addObject:v77];
      v37 = v86;
      v36 = v79;

      v12 = v81;
      v14 = v83;
      self = v85;
      v16 = v80;
    }

    else
    {
      v38 = 0;
    }

    [v12 addObjectsFromWatch:v38];
    if (self)
    {
      self->_didGenerateMindfulnessMinute = 1;
    }
  }

  else if (self)
  {
    self->_didGenerateMindfulnessMinute = 0;
  }

  v78 = *MEMORY[0x277D85DE8];
}

@end