@interface HDDemoDataMindfulnessSampleGenerator
- (HDDemoDataMindfulnessSampleGenerator)init;
- (HDDemoDataMindfulnessSampleGenerator)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)generateObjectsForDemoPerson:(id)person fromTime:(double)time toTime:(double)toTime currentDate:(id)date objectCollection:(id)collection;
- (void)setupWithDemoDataGenerator:(id)generator;
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

- (HDDemoDataMindfulnessSampleGenerator)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = HDDemoDataMindfulnessSampleGenerator;
  v5 = [(HDDemoDataBaseSampleGenerator *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"NextMindfulnessMinuteSampleTime"];
    v5->_nextMindfulSessionSampleTime = v6;
    v5->_didGenerateMindfulnessMinute = [coderCopy decodeBoolForKey:@"_DidGenerateMindfulnessMinuteKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HDDemoDataMindfulnessSampleGenerator;
  coderCopy = coder;
  [(HDDemoDataBaseSampleGenerator *)&v6 encodeWithCoder:coderCopy];
  if (self)
  {
    nextMindfulSessionSampleTime = self->_nextMindfulSessionSampleTime;
  }

  else
  {
    nextMindfulSessionSampleTime = 0.0;
  }

  [coderCopy encodeDouble:@"NextMindfulnessMinuteSampleTime" forKey:{nextMindfulSessionSampleTime, v6.receiver, v6.super_class}];
  [coderCopy encodeBool:-[HDDemoDataMindfulnessSampleGenerator didGenerateMindfulnessMinute](self forKey:{"didGenerateMindfulnessMinute"), @"_DidGenerateMindfulnessMinuteKey"}];
}

- (void)setupWithDemoDataGenerator:(id)generator
{
  v3.receiver = self;
  v3.super_class = HDDemoDataMindfulnessSampleGenerator;
  [(HDDemoDataBaseSampleGenerator *)&v3 setupWithDemoDataGenerator:generator];
}

- (void)generateObjectsForDemoPerson:(id)person fromTime:(double)time toTime:(double)toTime currentDate:(id)date objectCollection:(id)collection
{
  v93[1] = *MEMORY[0x277D85DE8];
  personCopy = person;
  collectionCopy = collection;
  v87.receiver = self;
  v87.super_class = HDDemoDataMindfulnessSampleGenerator;
  dateCopy = date;
  [(HDDemoDataBaseSampleGenerator *)&v87 generateObjectsForDemoPerson:personCopy fromTime:dateCopy toTime:collectionCopy currentDate:toTime objectCollection:toTime];
  v14 = personCopy;
  v15 = dateCopy;
  if (!self || self->_nextMindfulSessionSampleTime > toTime)
  {
    goto LABEL_3;
  }

  demoDataGenerator = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  sleepSampleGenerator = [demoDataGenerator sleepSampleGenerator];
  if (![sleepSampleGenerator isDemoPersonAwake:v14 atTime:toTime])
  {
    goto LABEL_13;
  }

  demoDataGenerator2 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  activitySampleGenerator = [demoDataGenerator2 activitySampleGenerator];
  if (([activitySampleGenerator _isDemoPersonInWorkoutRecovery:v14 atTime:toTime] & 1) == 0)
  {
    v82 = v14;
    demoDataGenerator3 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    generatorState = [demoDataGenerator3 generatorState];
    selfCopy = self;
    isExercising = [generatorState isExercising];

    if (isExercising)
    {
      v16 = 0;
      v14 = v82;
      self = selfCopy;
      goto LABEL_15;
    }

    v14 = v82;
    [v82 mindfulSessionFrequency];
    self = selfCopy;
    selfCopy->_nextMindfulSessionSampleTime = v24 + toTime;
    [v82 mindfulSessionFrequency];
    v26 = exp2(v25 * -2.0) * 100.0;
    if (v26 <= arc4random_uniform(0x64u))
    {
LABEL_3:
      v16 = 0;
      goto LABEL_15;
    }

    demoDataGenerator4 = [(HDDemoDataBaseSampleGenerator *)selfCopy demoDataGenerator];
    statisticsSampleGenerator = [demoDataGenerator4 statisticsSampleGenerator];
    [statisticsSampleGenerator computeNoiseFromTime:toTime stdDev:{objc_msgSend(v82, "mindfulSessionStdDev")}];
    v30 = v29;

    v31 = llround(v30 + [v82 mindfulSessionMean]);
    demoDataGenerator = [&unk_283CB0420 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(&unk_283CB0420, "count"))}];
    v32 = arc4random_uniform(0x1Eu);
    v33 = *MEMORY[0x277CCDFC8];
    v88[0] = *MEMORY[0x277CCE060];
    v88[1] = v33;
    v89[0] = demoDataGenerator;
    v89[1] = &unk_283CB4248;
    v88[2] = *MEMORY[0x277CCDFD0];
    v34 = [MEMORY[0x277CCABB0] numberWithInteger:v32 + 60];
    v89[2] = v34;
    sleepSampleGenerator = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:3];

    if (v31 >= 1)
    {
      demoDataGenerator2 = [v15 dateByAddingTimeInterval:(60 * v31)];
      v35 = MEMORY[0x277CCD0B0];
      activitySampleGenerator = [MEMORY[0x277CCD720] categoryTypeForIdentifier:*MEMORY[0x277CCBA30]];
      v16 = [v35 categorySampleWithType:activitySampleGenerator value:0 startDate:v15 endDate:demoDataGenerator2 metadata:sleepSampleGenerator];
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
    [collectionCopy addObjectFromWatch:v16];
    v36 = v16;
    v37 = v14;
    if (self)
    {
      v80 = v16;
      v81 = collectionCopy;
      v83 = v14;
      selfCopy2 = self;
      endDate = [v36 endDate];
      startDate = [v36 startDate];
      [endDate timeIntervalSinceDate:startDate];
      v42 = (v41 / 60.0);

      v43 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
      array = [MEMORY[0x277CBEB18] array];
      v79 = v36;
      startDate2 = [v36 startDate];
      [startDate2 timeIntervalSinceReferenceDate];
      v47 = v46;

      v48 = *MEMORY[0x277CCE030];
      v86 = v37;
      if (v42 >= 1)
      {
        do
        {
          v47 = v47 + 60.0;
          restingHeartRate = [v37 restingHeartRate];
          v50 = (restingHeartRate + arc4random_uniform(3u) + 2);
          v51 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v47];
          v52 = MEMORY[0x277CCD7E8];
          v53 = [MEMORY[0x277CCDAB0] unitFromString:@"count/min"];
          v54 = [v52 quantityWithUnit:v53 doubleValue:v50];

          v55 = MEMORY[0x277CCD800];
          v88[0] = v48;
          v89[0] = &unk_283CB4260;
          v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:1];
          v57 = [v55 quantitySampleWithType:v43 quantity:v54 startDate:v51 endDate:v51 metadata:v56];

          [array addObject:v57];
          v37 = v86;

          --v42;
        }

        while (v42);
      }

      restingHeartRate2 = [v37 restingHeartRate];
      v59 = (restingHeartRate2 + arc4random_uniform(3u) + 2);
      startDate3 = [v79 startDate];
      v61 = [startDate3 dateByAddingTimeInterval:-180.0];

      v62 = MEMORY[0x277CCD7E8];
      v63 = [MEMORY[0x277CCDAB0] unitFromString:@"count/min"];
      v64 = [v62 quantityWithUnit:v63 doubleValue:v59];

      v65 = MEMORY[0x277CCD800];
      v92 = v48;
      v93[0] = &unk_283CB4218;
      v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:&v92 count:1];
      v67 = [v65 quantitySampleWithType:v43 quantity:v64 startDate:v61 endDate:v61 metadata:v66];

      v38 = array;
      [array addObject:v67];
      restingHeartRate3 = [v37 restingHeartRate];
      v69 = (restingHeartRate3 + arc4random_uniform(3u) + 2);
      startDate4 = [v79 startDate];
      v71 = [startDate4 dateByAddingTimeInterval:120.0];

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

      collectionCopy = v81;
      v14 = v83;
      self = selfCopy2;
      v16 = v80;
    }

    else
    {
      v38 = 0;
    }

    [collectionCopy addObjectsFromWatch:v38];
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