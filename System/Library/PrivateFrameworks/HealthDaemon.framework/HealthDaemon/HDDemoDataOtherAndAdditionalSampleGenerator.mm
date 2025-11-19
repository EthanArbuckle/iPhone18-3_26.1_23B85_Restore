@interface HDDemoDataOtherAndAdditionalSampleGenerator
- (HDDemoDataOtherAndAdditionalSampleGenerator)initWithCoder:(id)a3;
- (id)_generateToothbrushingSampleForDate:(void *)a3 demoPerson:(double)a4 atTime:;
- (void)encodeWithCoder:(id)a3;
- (void)generateObjectsForDemoPerson:(id)a3 fromTime:(double)a4 toTime:(double)a5 currentDate:(id)a6 objectCollection:(id)a7;
@end

@implementation HDDemoDataOtherAndAdditionalSampleGenerator

- (HDDemoDataOtherAndAdditionalSampleGenerator)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HDDemoDataOtherAndAdditionalSampleGenerator;
  v5 = [(HDDemoDataBaseSampleGenerator *)&v10 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"NextToothbrushingSampleTimeKey"];
    v5->_nextToothbrushingSampleTime = v6;
    [v4 decodeDoubleForKey:@"NextHandwashingSampleTimeKey"];
    v5->_nextHandwashingSampleTime = v7;
    [v4 decodeDoubleForKey:@"nexttimeInDaylightSampleTimeKey"];
    v5->_nexttimeInDaylightSampleTime = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HDDemoDataOtherAndAdditionalSampleGenerator;
  v4 = a3;
  [(HDDemoDataBaseSampleGenerator *)&v6 encodeWithCoder:v4];
  if (self)
  {
    [v4 encodeDouble:@"NextToothbrushingSampleTimeKey" forKey:{self->_nextToothbrushingSampleTime, v6.receiver, v6.super_class}];
    [v4 encodeDouble:@"NextHandwashingSampleTimeKey" forKey:self->_nextHandwashingSampleTime];
    nexttimeInDaylightSampleTime = self->_nexttimeInDaylightSampleTime;
  }

  else
  {
    [v4 encodeDouble:@"NextToothbrushingSampleTimeKey" forKey:{0.0, v6.receiver, v6.super_class}];
    [v4 encodeDouble:@"NextHandwashingSampleTimeKey" forKey:0.0];
    nexttimeInDaylightSampleTime = 0.0;
  }

  [v4 encodeDouble:@"nexttimeInDaylightSampleTimeKey" forKey:nexttimeInDaylightSampleTime];
}

- (void)generateObjectsForDemoPerson:(id)a3 fromTime:(double)a4 toTime:(double)a5 currentDate:(id)a6 objectCollection:(id)a7
{
  v112.receiver = self;
  v112.super_class = HDDemoDataOtherAndAdditionalSampleGenerator;
  v11 = a7;
  v12 = a6;
  v13 = a3;
  [(HDDemoDataBaseSampleGenerator *)&v112 generateObjectsForDemoPerson:v13 fromTime:v12 toTime:v11 currentDate:a5 objectCollection:a5];
  v14 = v13;
  v15 = v12;
  v16 = v11;
  v17 = v16;
  if (!self)
  {

    v100 = v14;
    v101 = v15;
    v102 = v17;
    goto LABEL_10;
  }

  v18 = [MEMORY[0x277CBEA80] currentCalendar];
  if (self->_nextToothbrushingSampleTime <= a5)
  {
    v109 = v18;
    v19 = v18;
    v20 = [v19 components:30 fromDate:v15];
    [v20 setHour:8];
    [v20 setMinute:arc4random_uniform(0x3Bu)];
    v106 = [v19 dateFromComponents:v20];

    v21 = v19;
    v22 = [v21 components:30 fromDate:v15];
    [v22 setHour:21];
    [v22 setMinute:arc4random_uniform(0x3Bu)];
    v104 = [v21 dateFromComponents:v22];

    v23 = [(HDDemoDataOtherAndAdditionalSampleGenerator *)self _generateToothbrushingSampleForDate:v106 demoPerson:v14 atTime:a5];
    v24 = [(HDDemoDataOtherAndAdditionalSampleGenerator *)self _generateToothbrushingSampleForDate:v104 demoPerson:v14 atTime:a5];
    [v17 addObjectFromPhone:v23];
    [v17 addObjectFromPhone:v24];
    v25 = MEMORY[0x277CBEA80];
    v26 = v15;
    v27 = [v25 currentCalendar];
    v28 = [v27 components:254 fromDate:v26];

    [v28 setHour:{objc_msgSend(v28, "hour") + 24}];
    self->_nextToothbrushingSampleTime = floor(a5) + HDDemoData_timeFromNSDateComponents(v28);

    v18 = v109;
  }

  v29 = v14;
  v30 = v15;
  v31 = v17;
  if (self->_nextHandwashingSampleTime <= a5)
  {
    v110 = v31;
    v32 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    v33 = [v32 sleepSampleGenerator];
    if (([v33 isDemoPersonAwake:v29 atTime:a5] & 1) == 0)
    {

      goto LABEL_9;
    }

    [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    v34 = v107 = v17;
    [v34 activitySampleGenerator];
    v36 = v35 = v30;
    v37 = [v36 _isDemoPersonSedentary:v29 atTime:a5];

    v38 = v35;
    v17 = v107;

    if ((v37 & 1) == 0)
    {
      v39 = v29;
      v40 = v38;
      [v39 handwashingDurationMean];
      v42 = v41;
      [v39 handwashingDurationMeanStdDev];
      v44 = v43;

      v45 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      v46 = [v45 statisticsSampleGenerator];
      [v46 computeNoiseFromTime:a5 stdDev:v44];
      v48 = v42 + v47;

      v49 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB990]];
      v50 = MEMORY[0x277CCD0B0];
      v51 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v40 sinceDate:v48];
      v32 = [v50 categorySampleWithType:v49 value:0 startDate:v40 endDate:v51];

      [v110 addObjectFromWatch:v32];
      [v39 handwashingSampleFrequency];
      v53 = v52;
      [v39 handwashingSampleFrequencyStdDev];
      v55 = v54;
      v56 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      v57 = [v56 statisticsSampleGenerator];
      [v57 computeStatisticalTimeFromCurrentTime:a5 mean:v53 stdDev:v55];
      v59 = v58;

      self->_nextHandwashingSampleTime = v59 + a5;
LABEL_9:
    }
  }

LABEL_10:

  v60 = v14;
  v61 = v15;
  v62 = v17;
  if (self)
  {
    if (self->_nexttimeInDaylightSampleTime <= a5)
    {
      v63 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      v64 = [v63 sleepSampleGenerator];
      v65 = [v64 isDemoPersonAwake:v60 atTime:a5];

      if (v65)
      {
        v66 = v60;
        v108 = v61;
        [v66 timeInDaylightDurationMean];
        v68 = v67;
        [v66 timeInDaylightDurationMeanStdDev];
        v70 = v69;
        v111 = v66;

        v71 = arc4random_uniform(0x32u) / 100.0 + 5.0;
        v72 = v71 + arc4random_uniform(5u);
        v73 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
        v74 = [MEMORY[0x277CBEA80] currentCalendar];
        v75 = [v73 isDemoDataTimeInWeekend:v74 calendar:a5];

        v103 = v61;
        if (v75)
        {
          v72 = v72 + arc4random_uniform(3u);
        }

        v105 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v76 = arc4random_uniform(0x32u);
        v77 = (v76 + arc4random_uniform(0x514u) + 150);
        v78 = MEMORY[0x277CCD7E8];
        v79 = [MEMORY[0x277CCDAB0] luxUnit];
        v80 = [v78 quantityWithUnit:v79 doubleValue:v77];
        [v105 setObject:v80 forKeyedSubscript:*MEMORY[0x277CCC4E0]];

        v81 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
        v82 = [v81 statisticsSampleGenerator];
        [v82 computeNoiseFromTime:a5 stdDev:v70];
        v84 = v68 + v83;

        v85 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC80]];
        v86 = MEMORY[0x277CCD800];
        v87 = MEMORY[0x277CCD7E8];
        v88 = [MEMORY[0x277CCDAB0] minuteUnit];
        v89 = [v87 quantityWithUnit:v88 doubleValue:v72];
        v90 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v108 sinceDate:v84];
        v91 = [v86 quantitySampleWithType:v85 quantity:v89 startDate:v108 endDate:v90 metadata:v105];

        [v62 addObjectFromWatch:v91];
        [v111 timeInDaylightSampleFrequency];
        v93 = v92;
        [v111 timeInDaylightSampleFrequencyStdDev];
        v95 = v94;
        v96 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
        v97 = [v96 statisticsSampleGenerator];
        [v97 computeStatisticalTimeFromCurrentTime:a5 mean:v93 stdDev:v95];
        v99 = v98;

        self->_nexttimeInDaylightSampleTime = v99 + a5;
        v61 = v103;
      }
    }
  }
}

- (id)_generateToothbrushingSampleForDate:(void *)a3 demoPerson:(double)a4 atTime:
{
  v7 = a3;
  v8 = a2;
  [v7 toothbrushingDurationMean];
  v10 = v9;
  [v7 toothbrushingDurationMeanStdDev];
  v12 = v11;

  v13 = [a1 demoDataGenerator];
  v14 = [v13 statisticsSampleGenerator];
  [v14 computeNoiseFromTime:a4 stdDev:v12];
  v16 = v10 + v15;

  v17 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBAD8]];
  v18 = MEMORY[0x277CCD0B0];
  v19 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v8 sinceDate:v16];
  v20 = [v18 categorySampleWithType:v17 value:0 startDate:v8 endDate:v19];

  return v20;
}

@end