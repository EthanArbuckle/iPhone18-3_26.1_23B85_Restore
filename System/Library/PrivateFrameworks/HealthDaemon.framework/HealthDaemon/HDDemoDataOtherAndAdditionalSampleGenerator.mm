@interface HDDemoDataOtherAndAdditionalSampleGenerator
- (HDDemoDataOtherAndAdditionalSampleGenerator)initWithCoder:(id)coder;
- (id)_generateToothbrushingSampleForDate:(void *)date demoPerson:(double)person atTime:;
- (void)encodeWithCoder:(id)coder;
- (void)generateObjectsForDemoPerson:(id)person fromTime:(double)time toTime:(double)toTime currentDate:(id)date objectCollection:(id)collection;
@end

@implementation HDDemoDataOtherAndAdditionalSampleGenerator

- (HDDemoDataOtherAndAdditionalSampleGenerator)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = HDDemoDataOtherAndAdditionalSampleGenerator;
  v5 = [(HDDemoDataBaseSampleGenerator *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"NextToothbrushingSampleTimeKey"];
    v5->_nextToothbrushingSampleTime = v6;
    [coderCopy decodeDoubleForKey:@"NextHandwashingSampleTimeKey"];
    v5->_nextHandwashingSampleTime = v7;
    [coderCopy decodeDoubleForKey:@"nexttimeInDaylightSampleTimeKey"];
    v5->_nexttimeInDaylightSampleTime = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HDDemoDataOtherAndAdditionalSampleGenerator;
  coderCopy = coder;
  [(HDDemoDataBaseSampleGenerator *)&v6 encodeWithCoder:coderCopy];
  if (self)
  {
    [coderCopy encodeDouble:@"NextToothbrushingSampleTimeKey" forKey:{self->_nextToothbrushingSampleTime, v6.receiver, v6.super_class}];
    [coderCopy encodeDouble:@"NextHandwashingSampleTimeKey" forKey:self->_nextHandwashingSampleTime];
    nexttimeInDaylightSampleTime = self->_nexttimeInDaylightSampleTime;
  }

  else
  {
    [coderCopy encodeDouble:@"NextToothbrushingSampleTimeKey" forKey:{0.0, v6.receiver, v6.super_class}];
    [coderCopy encodeDouble:@"NextHandwashingSampleTimeKey" forKey:0.0];
    nexttimeInDaylightSampleTime = 0.0;
  }

  [coderCopy encodeDouble:@"nexttimeInDaylightSampleTimeKey" forKey:nexttimeInDaylightSampleTime];
}

- (void)generateObjectsForDemoPerson:(id)person fromTime:(double)time toTime:(double)toTime currentDate:(id)date objectCollection:(id)collection
{
  v112.receiver = self;
  v112.super_class = HDDemoDataOtherAndAdditionalSampleGenerator;
  collectionCopy = collection;
  dateCopy = date;
  personCopy = person;
  [(HDDemoDataBaseSampleGenerator *)&v112 generateObjectsForDemoPerson:personCopy fromTime:dateCopy toTime:collectionCopy currentDate:toTime objectCollection:toTime];
  v14 = personCopy;
  v15 = dateCopy;
  v16 = collectionCopy;
  v17 = v16;
  if (!self)
  {

    v100 = v14;
    v101 = v15;
    v102 = v17;
    goto LABEL_10;
  }

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  if (self->_nextToothbrushingSampleTime <= toTime)
  {
    v109 = currentCalendar;
    v19 = currentCalendar;
    v20 = [v19 components:30 fromDate:v15];
    [v20 setHour:8];
    [v20 setMinute:arc4random_uniform(0x3Bu)];
    v106 = [v19 dateFromComponents:v20];

    v21 = v19;
    v22 = [v21 components:30 fromDate:v15];
    [v22 setHour:21];
    [v22 setMinute:arc4random_uniform(0x3Bu)];
    v104 = [v21 dateFromComponents:v22];

    v23 = [(HDDemoDataOtherAndAdditionalSampleGenerator *)self _generateToothbrushingSampleForDate:v106 demoPerson:v14 atTime:toTime];
    v24 = [(HDDemoDataOtherAndAdditionalSampleGenerator *)self _generateToothbrushingSampleForDate:v104 demoPerson:v14 atTime:toTime];
    [v17 addObjectFromPhone:v23];
    [v17 addObjectFromPhone:v24];
    v25 = MEMORY[0x277CBEA80];
    v26 = v15;
    currentCalendar2 = [v25 currentCalendar];
    v28 = [currentCalendar2 components:254 fromDate:v26];

    [v28 setHour:{objc_msgSend(v28, "hour") + 24}];
    self->_nextToothbrushingSampleTime = floor(toTime) + HDDemoData_timeFromNSDateComponents(v28);

    currentCalendar = v109;
  }

  v29 = v14;
  v30 = v15;
  v31 = v17;
  if (self->_nextHandwashingSampleTime <= toTime)
  {
    v110 = v31;
    demoDataGenerator = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    sleepSampleGenerator = [demoDataGenerator sleepSampleGenerator];
    if (([sleepSampleGenerator isDemoPersonAwake:v29 atTime:toTime] & 1) == 0)
    {

      goto LABEL_9;
    }

    [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    v34 = v107 = v17;
    [v34 activitySampleGenerator];
    v36 = v35 = v30;
    v37 = [v36 _isDemoPersonSedentary:v29 atTime:toTime];

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

      demoDataGenerator2 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      statisticsSampleGenerator = [demoDataGenerator2 statisticsSampleGenerator];
      [statisticsSampleGenerator computeNoiseFromTime:toTime stdDev:v44];
      v48 = v42 + v47;

      v49 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB990]];
      v50 = MEMORY[0x277CCD0B0];
      v51 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v40 sinceDate:v48];
      demoDataGenerator = [v50 categorySampleWithType:v49 value:0 startDate:v40 endDate:v51];

      [v110 addObjectFromWatch:demoDataGenerator];
      [v39 handwashingSampleFrequency];
      v53 = v52;
      [v39 handwashingSampleFrequencyStdDev];
      v55 = v54;
      demoDataGenerator3 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      statisticsSampleGenerator2 = [demoDataGenerator3 statisticsSampleGenerator];
      [statisticsSampleGenerator2 computeStatisticalTimeFromCurrentTime:toTime mean:v53 stdDev:v55];
      v59 = v58;

      self->_nextHandwashingSampleTime = v59 + toTime;
LABEL_9:
    }
  }

LABEL_10:

  v60 = v14;
  v61 = v15;
  v62 = v17;
  if (self)
  {
    if (self->_nexttimeInDaylightSampleTime <= toTime)
    {
      demoDataGenerator4 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      sleepSampleGenerator2 = [demoDataGenerator4 sleepSampleGenerator];
      v65 = [sleepSampleGenerator2 isDemoPersonAwake:v60 atTime:toTime];

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
        demoDataGenerator5 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
        currentCalendar3 = [MEMORY[0x277CBEA80] currentCalendar];
        v75 = [demoDataGenerator5 isDemoDataTimeInWeekend:currentCalendar3 calendar:toTime];

        v103 = v61;
        if (v75)
        {
          v72 = v72 + arc4random_uniform(3u);
        }

        v105 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v76 = arc4random_uniform(0x32u);
        v77 = (v76 + arc4random_uniform(0x514u) + 150);
        v78 = MEMORY[0x277CCD7E8];
        luxUnit = [MEMORY[0x277CCDAB0] luxUnit];
        v80 = [v78 quantityWithUnit:luxUnit doubleValue:v77];
        [v105 setObject:v80 forKeyedSubscript:*MEMORY[0x277CCC4E0]];

        demoDataGenerator6 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
        statisticsSampleGenerator3 = [demoDataGenerator6 statisticsSampleGenerator];
        [statisticsSampleGenerator3 computeNoiseFromTime:toTime stdDev:v70];
        v84 = v68 + v83;

        v85 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC80]];
        v86 = MEMORY[0x277CCD800];
        v87 = MEMORY[0x277CCD7E8];
        minuteUnit = [MEMORY[0x277CCDAB0] minuteUnit];
        v89 = [v87 quantityWithUnit:minuteUnit doubleValue:v72];
        v90 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v108 sinceDate:v84];
        v91 = [v86 quantitySampleWithType:v85 quantity:v89 startDate:v108 endDate:v90 metadata:v105];

        [v62 addObjectFromWatch:v91];
        [v111 timeInDaylightSampleFrequency];
        v93 = v92;
        [v111 timeInDaylightSampleFrequencyStdDev];
        v95 = v94;
        demoDataGenerator7 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
        statisticsSampleGenerator4 = [demoDataGenerator7 statisticsSampleGenerator];
        [statisticsSampleGenerator4 computeStatisticalTimeFromCurrentTime:toTime mean:v93 stdDev:v95];
        v99 = v98;

        self->_nexttimeInDaylightSampleTime = v99 + toTime;
        v61 = v103;
      }
    }
  }
}

- (id)_generateToothbrushingSampleForDate:(void *)date demoPerson:(double)person atTime:
{
  dateCopy = date;
  v8 = a2;
  [dateCopy toothbrushingDurationMean];
  v10 = v9;
  [dateCopy toothbrushingDurationMeanStdDev];
  v12 = v11;

  demoDataGenerator = [self demoDataGenerator];
  statisticsSampleGenerator = [demoDataGenerator statisticsSampleGenerator];
  [statisticsSampleGenerator computeNoiseFromTime:person stdDev:v12];
  v16 = v10 + v15;

  v17 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBAD8]];
  v18 = MEMORY[0x277CCD0B0];
  v19 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v8 sinceDate:v16];
  v20 = [v18 categorySampleWithType:v17 value:0 startDate:v8 endDate:v19];

  return v20;
}

@end