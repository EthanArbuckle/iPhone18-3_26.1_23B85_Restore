@interface HDDemoDataBodySampleGenerator
- (HDDemoDataBodySampleGenerator)init;
- (HDDemoDataBodySampleGenerator)initWithCoder:(id)coder;
- (double)weightChangeForDemoPerson:(double)person atTime:;
- (void)encodeWithCoder:(id)coder;
- (void)generateObjectsForDemoPerson:(id)person fromTime:(double)time toTime:(double)toTime currentDate:(id)date objectCollection:(id)collection;
- (void)setupWithDemoDataGenerator:(id)generator;
@end

@implementation HDDemoDataBodySampleGenerator

- (HDDemoDataBodySampleGenerator)init
{
  v13.receiver = self;
  v13.super_class = HDDemoDataBodySampleGenerator;
  v2 = [(HDDemoDataBaseSampleGenerator *)&v13 init];
  v3 = v2;
  if (v2)
  {
    boysHeightBirthTo36MonthsGrowthCurve = v2->_boysHeightBirthTo36MonthsGrowthCurve;
    v2->_boysHeightBirthTo36MonthsGrowthCurve = 0;

    boysHeight2To20YearsGrowthCurve = v3->_boysHeight2To20YearsGrowthCurve;
    v3->_boysHeight2To20YearsGrowthCurve = 0;

    boysWeightBirthTo36MonthsGrowthCurve = v3->_boysWeightBirthTo36MonthsGrowthCurve;
    v3->_boysWeightBirthTo36MonthsGrowthCurve = 0;

    boysWeight2To20YearsGrowthCurve = v3->_boysWeight2To20YearsGrowthCurve;
    v3->_boysWeight2To20YearsGrowthCurve = 0;

    girlsHeightBirthTo36MonthsGrowthCurve = v3->_girlsHeightBirthTo36MonthsGrowthCurve;
    v3->_girlsHeightBirthTo36MonthsGrowthCurve = 0;

    girlsHeight2To20YearsGrowthCurve = v3->_girlsHeight2To20YearsGrowthCurve;
    v3->_girlsHeight2To20YearsGrowthCurve = 0;

    girlsWeightBirthTo36MonthsGrowthCurve = v3->_girlsWeightBirthTo36MonthsGrowthCurve;
    v3->_girlsWeightBirthTo36MonthsGrowthCurve = 0;

    girlsWeight2To20YearsGrowthCurve = v3->_girlsWeight2To20YearsGrowthCurve;
    v3->_girlsWeight2To20YearsGrowthCurve = 0;

    v3->_nextHeightSampleTime = 0.0;
    v3->_nextWeightSampleTime = 0.0;
    v3->_lastHeightInCm = 0.0;
    v3->_lastWeightInKg = 0.0;
    v3->_weightAdultStartInKg = 0.0;
  }

  return v3;
}

- (HDDemoDataBodySampleGenerator)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = HDDemoDataBodySampleGenerator;
  v5 = [(HDDemoDataBaseSampleGenerator *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"HDDemoDataBodySampleGeneratorNextHeightSampleTimeKey"];
    v5->_nextHeightSampleTime = v6;
    [coderCopy decodeDoubleForKey:@"HDDemoDataBodySampleGeneratorNextWeightSampleTimeKey"];
    v5->_nextWeightSampleTime = v7;
    [coderCopy decodeDoubleForKey:@"HDDemoDataBodySampleGeneratorLastHeightInCmKey"];
    v5->_lastHeightInCm = v8;
    [coderCopy decodeDoubleForKey:@"HDDemoDataBodySampleGeneratorLastWeightInKgKey"];
    v5->_lastWeightInKg = v9;
    [coderCopy decodeDoubleForKey:@"HDDemoDataBodySampleGeneratorWeightAdultStartInKgKey"];
    v5->_weightAdultStartInKg = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HDDemoDataBodySampleGenerator;
  coderCopy = coder;
  [(HDDemoDataBaseSampleGenerator *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeDouble:@"HDDemoDataBodySampleGeneratorNextHeightSampleTimeKey" forKey:{self->_nextHeightSampleTime, v5.receiver, v5.super_class}];
  [coderCopy encodeDouble:@"HDDemoDataBodySampleGeneratorNextWeightSampleTimeKey" forKey:self->_nextWeightSampleTime];
  [coderCopy encodeDouble:@"HDDemoDataBodySampleGeneratorLastHeightInCmKey" forKey:self->_lastHeightInCm];
  [coderCopy encodeDouble:@"HDDemoDataBodySampleGeneratorLastWeightInKgKey" forKey:self->_lastWeightInKg];
  [coderCopy encodeDouble:@"HDDemoDataBodySampleGeneratorWeightAdultStartInKgKey" forKey:self->_weightAdultStartInKg];
}

- (void)setupWithDemoDataGenerator:(id)generator
{
  generatorCopy = generator;
  v31.receiver = self;
  v31.super_class = HDDemoDataBodySampleGenerator;
  [(HDDemoDataBaseSampleGenerator *)&v31 setupWithDemoDataGenerator:generatorCopy];
  v5 = HDHealthDaemonFrameworkBundle();
  v6 = [v5 pathForResource:@"CDCGrowthCurves50thPercentile" ofType:@"plist"];

  v7 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v6];
  v8 = [v7 objectForKeyedSubscript:@"boysHeightBirthTo36MonthsGrowthCurve"];
  boysHeightBirthTo36MonthsGrowthCurve = self->_boysHeightBirthTo36MonthsGrowthCurve;
  self->_boysHeightBirthTo36MonthsGrowthCurve = v8;

  v10 = [v7 objectForKeyedSubscript:@"boysHeight2To20YearsGrowthCurve"];
  boysHeight2To20YearsGrowthCurve = self->_boysHeight2To20YearsGrowthCurve;
  self->_boysHeight2To20YearsGrowthCurve = v10;

  v12 = [v7 objectForKeyedSubscript:@"boysWeightBirthTo36MonthsGrowthCurve"];
  boysWeightBirthTo36MonthsGrowthCurve = self->_boysWeightBirthTo36MonthsGrowthCurve;
  self->_boysWeightBirthTo36MonthsGrowthCurve = v12;

  v14 = [v7 objectForKeyedSubscript:@"boysWeight2To20YearsGrowthCurve"];
  boysWeight2To20YearsGrowthCurve = self->_boysWeight2To20YearsGrowthCurve;
  self->_boysWeight2To20YearsGrowthCurve = v14;

  v16 = [v7 objectForKeyedSubscript:@"girlsHeightBirthTo36MonthsGrowthCurve"];
  girlsHeightBirthTo36MonthsGrowthCurve = self->_girlsHeightBirthTo36MonthsGrowthCurve;
  self->_girlsHeightBirthTo36MonthsGrowthCurve = v16;

  v18 = [v7 objectForKeyedSubscript:@"girlsHeight2To20YearsGrowthCurve"];
  girlsHeight2To20YearsGrowthCurve = self->_girlsHeight2To20YearsGrowthCurve;
  self->_girlsHeight2To20YearsGrowthCurve = v18;

  v20 = [v7 objectForKeyedSubscript:@"girlsWeightBirthTo36MonthsGrowthCurve"];
  girlsWeightBirthTo36MonthsGrowthCurve = self->_girlsWeightBirthTo36MonthsGrowthCurve;
  self->_girlsWeightBirthTo36MonthsGrowthCurve = v20;

  v22 = [v7 objectForKeyedSubscript:@"girlsWeight2To20YearsGrowthCurve"];
  girlsWeight2To20YearsGrowthCurve = self->_girlsWeight2To20YearsGrowthCurve;
  self->_girlsWeight2To20YearsGrowthCurve = v22;

  if (![(HDDemoDataBaseSampleGenerator *)self createdFromNSKeyedUnarchiver])
  {
    demoPerson = [generatorCopy demoPerson];
    demoDataGenerator = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    v26 = [demoDataGenerator currentDateFromCurrentTime:0.0];

    birthDateComponents = [demoPerson birthDateComponents];
    v28 = HDDemoData_ageBetweenNSDateComponentsAndDate(birthDateComponents, v26);

    if (v28 >= 21)
    {
      [demoPerson weightTargetInKg];
      self->_weightAdultStartInKg = v29;
      self->_lastWeightInKg = v29;
      [demoPerson heightTargetInCm];
      self->_lastHeightInCm = v30;
    }
  }
}

- (void)generateObjectsForDemoPerson:(id)person fromTime:(double)time toTime:(double)toTime currentDate:(id)date objectCollection:(id)collection
{
  personCopy = person;
  dateCopy = date;
  collectionCopy = collection;
  v163.receiver = self;
  v163.super_class = HDDemoDataBodySampleGenerator;
  [(HDDemoDataBaseSampleGenerator *)&v163 generateObjectsForDemoPerson:personCopy fromTime:dateCopy toTime:collectionCopy currentDate:toTime objectCollection:toTime];
  if (qword_280D67D00 != -1)
  {
    dispatch_once(&qword_280D67D00, &__block_literal_global_145);
  }

  v14 = personCopy;
  v15 = v14;
  if (!self)
  {

    v157 = v15;
    v79 = 0;
    v161 = 0;
    v80 = v15;
    v18 = dateCopy;
    goto LABEL_60;
  }

  v162 = collectionCopy;
  if (self->_nextHeightSampleTime > toTime)
  {
    v16 = 0;
    v17 = v14;
    v18 = dateCopy;
LABEL_32:

    goto LABEL_33;
  }

  demoDataGenerator = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  [demoDataGenerator currentDateFromCurrentTime:toTime];
  v21 = v20 = self;

  birthDateComponents = [v15 birthDateComponents];
  v160 = v21;
  v23 = HDDemoData_ageBetweenNSDateComponentsAndDate(birthDateComponents, v21);

  demoDataGenerator2 = [(HDDemoDataBaseSampleGenerator *)v20 demoDataGenerator];
  firstSampleDayOfYear = [demoDataGenerator2 firstSampleDayOfYear];

  birthDateComponents2 = [v15 birthDateComponents];
  v27 = HDDemoData_currentDayOfYearFromNSDateComponents(birthDateComponents2);

  v28 = ((toTime + firstSampleDayOfYear - v27 + 365) % 365) / 365.0;
  v29 = v28 + v23;
  if (v29 >= 0.0)
  {
    v18 = dateCopy;
    if (v29 >= 20.0)
    {
      [v15 heightTargetInCm];
      v31 = v38;
      demoDataGenerator3 = [(HDDemoDataBaseSampleGenerator *)v20 demoDataGenerator];
      statisticsSampleGenerator = [demoDataGenerator3 statisticsSampleGenerator];
      [statisticsSampleGenerator computeNoiseFromTime:toTime stdDev:6.0];
      v35 = fabs(v39) + 90.0;
      goto LABEL_30;
    }

    biologicalSex = [v15 biologicalSex];
    if (v29 >= 3.0)
    {
      if (v29 >= 21.0)
      {
        demoDataGenerator3 = 0;
        goto LABEL_19;
      }

      v37 = &OBJC_IVAR___HDDemoDataBodySampleGenerator__boysHeight2To20YearsGrowthCurve;
      if (biologicalSex != 2)
      {
        v37 = &OBJC_IVAR___HDDemoDataBodySampleGenerator__girlsHeight2To20YearsGrowthCurve;
      }
    }

    else
    {
      v37 = &OBJC_IVAR___HDDemoDataBodySampleGenerator__girlsHeightBirthTo36MonthsGrowthCurve;
      if (biologicalSex == 2)
      {
        v37 = OBJC_IVAR___HDDemoDataBodySampleGenerator__boysHeightBirthTo36MonthsGrowthCurve;
      }
    }

    demoDataGenerator3 = *(&v20->super.super.isa + *v37);
LABEL_19:
    biologicalSex2 = [v15 biologicalSex];
    v41 = 5;
    if (biologicalSex2 == 2)
    {
      v41 = 1;
    }

    statisticsSampleGenerator = *(&v20->super.super.isa + OBJC_IVAR___HDDemoDataBodySampleGenerator__boysHeightBirthTo36MonthsGrowthCurve[v41]);
    demoDataGenerator4 = [(HDDemoDataBaseSampleGenerator *)v20 demoDataGenerator];
    statisticsSampleGenerator2 = [demoDataGenerator4 statisticsSampleGenerator];
    v44 = statisticsSampleGenerator2;
    if (v29 >= 3.0)
    {
      [statisticsSampleGenerator2 computeNoiseFromTime:toTime stdDev:15.0];
      v35 = v50 + 30.0;

      v48 = v28 + (v23 - 2) + v28 + (v23 - 2);
      i = v28 + -0.5 + v28 + -0.5;
      if (v28 <= 0.5)
      {
        v49 = 0.0;
      }

      else
      {
        v49 = v28 + -0.5 + v28 + -0.5;
      }
    }

    else
    {
      [statisticsSampleGenerator2 computeNoiseFromTime:toTime stdDev:3.0];
      v46 = v45;

        ;
      }

      v35 = v46 + 3.0;
      v48 = v29 * 4.0;
      v49 = v28 * 4.0;
    }

    v51 = v48;
    v52 = [demoDataGenerator3 objectAtIndexedSubscript:{v48, i}];
    [v52 doubleValue];
    v54 = v53;

    v55 = [demoDataGenerator3 objectAtIndexedSubscript:v51 + 1];
    [v55 doubleValue];
    v57 = v56;

    v58 = v49 * v57 + v54 * (1.0 - v49);
    [v15 heightTargetInCm];
    v60 = v59;
    lastObject = [statisticsSampleGenerator lastObject];
    [lastObject doubleValue];
    v63 = v60 / v62;

    v64 = fmin(v29 * v29 / 289.0, 1.0);
    v65 = v58 * (1.0 - v64 + v63 * v64);
    demoDataGenerator5 = [(HDDemoDataBaseSampleGenerator *)v20 demoDataGenerator];
    statisticsSampleGenerator3 = [demoDataGenerator5 statisticsSampleGenerator];
    [v15 heightSampleNoiseStdDev];
    v69 = v68;
    lastObject2 = [statisticsSampleGenerator lastObject];
    [lastObject2 doubleValue];
    [statisticsSampleGenerator3 computeNoiseFromTime:toTime stdDev:v69 / v71];
    v31 = v65 + v72;

    goto LABEL_29;
  }

  [v15 heightTargetInCm];
  v31 = v30;
  demoDataGenerator3 = [(HDDemoDataBaseSampleGenerator *)v20 demoDataGenerator];
  statisticsSampleGenerator = [demoDataGenerator3 statisticsSampleGenerator];
  [statisticsSampleGenerator computeNoiseFromTime:toTime stdDev:6.0];
  v35 = fabs(v34) + 90.0;
LABEL_29:
  v18 = dateCopy;
LABEL_30:

  v20->_nextHeightSampleTime = v35 + v20->_nextHeightSampleTime;
  v20->_lastHeightInCm = v31;
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:v31];

  self = v20;
  if (v16)
  {
    v73 = MEMORY[0x277CCD7E8];
    v74 = v20;
    v75 = _MergedGlobals_6;
    [v16 doubleValue];
    v17 = [v73 quantityWithUnit:v75 doubleValue:v76 * 0.01];
    v77 = [MEMORY[0x277CCD800] quantitySampleWithType:qword_280D67CD8 quantity:v17 startDate:v18 endDate:v18];
    collectionCopy = v162;
    [v162 addObjectFromPhone:v77];

    self = v74;
    goto LABEL_32;
  }

  collectionCopy = v162;
LABEL_33:
  v161 = v16;
  v78 = v15;
  if (self->_nextWeightSampleTime > toTime)
  {
    v79 = 0;
    v80 = v15;
    goto LABEL_60;
  }

  v81 = v78;
  demoDataGenerator6 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  v83 = [demoDataGenerator6 currentDateFromCurrentTime:toTime];

  birthDateComponents3 = [v81 birthDateComponents];
  v85 = HDDemoData_ageBetweenNSDateComponentsAndDate(birthDateComponents3, v83);

  demoDataGenerator7 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  selfCopy = self;
  firstSampleDayOfYear2 = [demoDataGenerator7 firstSampleDayOfYear];

  birthDateComponents4 = [v81 birthDateComponents];
  v90 = HDDemoData_currentDayOfYearFromNSDateComponents(birthDateComponents4);

  v91 = ((toTime + firstSampleDayOfYear2 - v90 + 365) % 365) / 365.0;
  v92 = v91 + v85;
  if (v92 >= 0.0 && v92 < 20.0)
  {
    biologicalSex3 = [v81 biologicalSex];
    if (v92 >= 3.0)
    {
      if (v92 >= 21.0)
      {
        v95 = v18;
        demoDataGenerator10 = 0;
LABEL_47:
        biologicalSex4 = [v81 biologicalSex];
        v102 = 7;
        if (biologicalSex4 == 2)
        {
          v102 = 3;
        }

        statisticsSampleGenerator6 = *(&selfCopy->super.super.isa + OBJC_IVAR___HDDemoDataBodySampleGenerator__boysHeightBirthTo36MonthsGrowthCurve[v102]);
        demoDataGenerator8 = [(HDDemoDataBaseSampleGenerator *)selfCopy demoDataGenerator];
        statisticsSampleGenerator4 = [demoDataGenerator8 statisticsSampleGenerator];
        [statisticsSampleGenerator4 computeNoiseFromTime:toTime stdDev:3.0];
        v106 = fabs(v105);

        if (v92 >= 3.0)
        {
          k = v106 + 30.0;
            ;
          }
        }

        else
        {
            ;
          }

          j = v92;
        }

        v108 = (j * 12.0);
        v109 = v91 * 12.0;
        v110 = [demoDataGenerator10 objectAtIndexedSubscript:v108];
        [v110 doubleValue];
        v112 = v111;

        v113 = [demoDataGenerator10 objectAtIndexedSubscript:v108 + 1];
        [v113 doubleValue];
        v115 = v114;

        v116 = v109 * v115 + v112 * (1.0 - v109);
        [v81 weightTargetInKg];
        v118 = v117;
        lastObject3 = [statisticsSampleGenerator6 lastObject];
        [lastObject3 doubleValue];
        v121 = v118 / v120;

        v122 = fmin(v92 * v92 / 289.0, 1.0);
        v123 = v116 * (1.0 - v122 + v121 * v122);
        demoDataGenerator9 = [(HDDemoDataBaseSampleGenerator *)selfCopy demoDataGenerator];
        statisticsSampleGenerator5 = [demoDataGenerator9 statisticsSampleGenerator];
        [v81 weightSampleNoiseStdDev];
        v127 = v126;
        lastObject4 = [statisticsSampleGenerator6 lastObject];
        [lastObject4 doubleValue];
        [statisticsSampleGenerator5 computeNoiseFromTime:toTime stdDev:v127 / v129];
        v96 = v123 + v130;

        selfCopy->_weightAdultStartInKg = v96;
        goto LABEL_56;
      }

      v94 = &OBJC_IVAR___HDDemoDataBodySampleGenerator__boysWeight2To20YearsGrowthCurve;
    }

    else
    {
      v94 = &OBJC_IVAR___HDDemoDataBodySampleGenerator__boysWeightBirthTo36MonthsGrowthCurve;
    }

    if (biologicalSex3 != 2)
    {
      v94 += 4;
    }

    v95 = v18;
    demoDataGenerator10 = *(&selfCopy->super.super.isa + *v94);
    goto LABEL_47;
  }

  v95 = v18;
  v96 = [(HDDemoDataBodySampleGenerator *)selfCopy weightChangeForDemoPerson:v81 atTime:toTime];
  demoDataGenerator10 = [(HDDemoDataBaseSampleGenerator *)selfCopy demoDataGenerator];
  statisticsSampleGenerator6 = [demoDataGenerator10 statisticsSampleGenerator];
  [statisticsSampleGenerator6 computeNoiseFromTime:toTime stdDev:1.0];
  k = fabs(v99);
LABEL_56:

  selfCopy->_nextWeightSampleTime = k + toTime;
  selfCopy->_lastWeightInKg = v96;
  v79 = [MEMORY[0x277CCABB0] numberWithDouble:(v96 * 10.0) / 10.0];

  collectionCopy = v162;
  if (!v79)
  {
    v18 = v95;
    goto LABEL_61;
  }

  v159 = v15;
  [v79 doubleValue];
  v132 = v131;
  v80 = [MEMORY[0x277CCD7E8] quantityWithUnit:qword_280D67CB8 doubleValue:?];
  v158 = [MEMORY[0x277CCD800] quantitySampleWithType:qword_280D67CE0 quantity:v80 startDate:v95 endDate:v95];
  [v162 addObjectFromPhone:?];
  lastHeightInCm = selfCopy->_lastHeightInCm;
  v134 = v81;
  biologicalSex5 = [v134 biologicalSex];
  [v134 waistCircumferenceInInches];
  v137 = v136;
  [v134 forearmCircumferenceInInches];
  v139 = v138;
  [v134 wristCircumferenceInInches];
  v141 = v140;
  [v134 hipCircumferenceInInches];
  v143 = v142;

  [HDDemoDataFormula computeLeanBodyMassFromWeight:biologicalSex5 height:v132 sex:lastHeightInCm waistCircumference:v137 forearmCircumference:v139 wristCircumference:v141 hipCircumference:v143];
  v145 = v144;
  v146 = [MEMORY[0x277CCD7E8] quantityWithUnit:qword_280D67CB8 doubleValue:?];
  v147 = [MEMORY[0x277CCD800] quantitySampleWithType:qword_280D67CE8 quantity:v146 startDate:v95 endDate:v95];
  [v162 addObjectFromPhone:v147];
  demoDataGenerator11 = [(HDDemoDataBaseSampleGenerator *)selfCopy demoDataGenerator];
  statisticsSampleGenerator7 = [demoDataGenerator11 statisticsSampleGenerator];
  [statisticsSampleGenerator7 computeNoiseFromTime:toTime stdDev:0.33];
  v151 = v145 + v150;

  [HDDemoDataFormula computeBodyFatPercentageFromWeight:v132 leanBodyMass:v151];
  v152 = [MEMORY[0x277CCD7E8] quantityWithUnit:qword_280D67CC8 doubleValue:?];
  v153 = [MEMORY[0x277CCD800] quantitySampleWithType:qword_280D67CF0 quantity:v152 startDate:v95 endDate:v95];
  [v162 addObjectFromPhone:v153];
  v154 = 0.0;
  if (v132 != 0.0)
  {
    [HDDemoDataFormula computeBodyMassIndexFromWeight:v132 height:selfCopy->_lastHeightInCm];
  }

  v155 = [MEMORY[0x277CCD7E8] quantityWithUnit:qword_280D67CD0 doubleValue:v154];
  v156 = [MEMORY[0x277CCD800] quantitySampleWithType:qword_280D67CF8 quantity:v155 startDate:v95 endDate:v95];
  collectionCopy = v162;
  [v162 addObjectFromPhone:v156];

  v18 = v95;
  v15 = v159;
LABEL_60:

LABEL_61:
}

uint64_t __107__HDDemoDataBodySampleGenerator_generateObjectsForDemoPerson_fromTime_toTime_currentDate_objectCollection___block_invoke()
{
  v0 = [MEMORY[0x277CCDAB0] meterUnit];
  v1 = _MergedGlobals_6;
  _MergedGlobals_6 = v0;

  v2 = [MEMORY[0x277CCDAB0] gramUnitWithMetricPrefix:9];
  v3 = qword_280D67CB8;
  qword_280D67CB8 = v2;

  v4 = [MEMORY[0x277CCDAB0] gramUnit];
  v5 = qword_280D67CC0;
  qword_280D67CC0 = v4;

  v6 = [MEMORY[0x277CCDAB0] percentUnit];
  v7 = qword_280D67CC8;
  qword_280D67CC8 = v6;

  v8 = [MEMORY[0x277CCDAB0] countUnit];
  v9 = qword_280D67CD0;
  qword_280D67CD0 = v8;

  v10 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCBA8]];
  v11 = qword_280D67CD8;
  qword_280D67CD8 = v10;

  v12 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC990]];
  v13 = qword_280D67CE0;
  qword_280D67CE0 = v12;

  v14 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCBC8]];
  v15 = qword_280D67CE8;
  qword_280D67CE8 = v14;

  v16 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC988]];
  v17 = qword_280D67CF0;
  qword_280D67CF0 = v16;

  v18 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC998]];
  v19 = qword_280D67CF8;
  qword_280D67CF8 = v18;

  return MEMORY[0x2821F96F8](v18, v19);
}

- (double)weightChangeForDemoPerson:(double)person atTime:
{
  v5 = a2;
  [v5 genericSampleTimeNoiseStdDev];
  v7 = v6;
  [v5 weightSampleTimeFrequency];
  v9 = v8;
  demoDataGenerator = [self demoDataGenerator];
  statisticsSampleGenerator = [demoDataGenerator statisticsSampleGenerator];
  [statisticsSampleGenerator computeNoiseFromTime:person stdDev:v7];
  self[13] = v9 + v12 + self[13];

  v13 = self[15];
  demoDataGenerator2 = [self demoDataGenerator];
  statisticsSampleGenerator2 = [demoDataGenerator2 statisticsSampleGenerator];
  [v5 weightSampleNoiseStdDev];
  [statisticsSampleGenerator2 computeNoiseFromTime:person stdDev:v16];
  v18 = v17;

  demoDataGenerator3 = [self demoDataGenerator];
  statisticsSampleGenerator3 = [demoDataGenerator3 statisticsSampleGenerator];
  [v5 weightDailyChangeStdDev];
  [statisticsSampleGenerator3 computeNoiseFromTime:person stdDev:v21];
  v23 = v22;

  if (v23 + (arc4random_uniform(0xAu) & 1) == 0.0)
  {
    v24 = v18;
  }

  else
  {
    v24 = -v18;
  }

  self[15] = self[15] + v24;
  demoDataGenerator4 = [self demoDataGenerator];
  v26 = ([demoDataGenerator4 firstSampleDayOfYear] + person) % 365;

  weightGainHolidayDaysInYear = [v5 weightGainHolidayDaysInYear];
  v28 = [MEMORY[0x277CCABB0] numberWithInteger:v26];
  v29 = [weightGainHolidayDaysInYear containsObject:v28];

  if (v29)
  {
    demoDataGenerator5 = [self demoDataGenerator];
    statisticsSampleGenerator4 = [demoDataGenerator5 statisticsSampleGenerator];
    [v5 weightDailyChangeStdDev];
    [statisticsSampleGenerator4 computeNoiseFromTime:person stdDev:v32];
    v34 = v33;

    v35 = fabs(v34) + self[15];
    self[15] = v35;
  }

  else
  {
    v35 = self[15];
  }

  v36 = self[16];
  [v5 weightChangePercentageMax];
  v38 = v36 * (1.0 - v37);
  v39 = self[15];
  if (v35 >= v38)
  {
    v41 = self[16];
    [v5 weightChangePercentageMax];
    if (v39 <= v41 * (v42 + 1.0))
    {
      goto LABEL_12;
    }

    v40 = self[15] + vabdd_f64(self[15], v13) * -2.0;
  }

  else
  {
    v40 = v39 + vabdd_f64(v13, v39) * 2.0;
  }

  self[15] = v40;
LABEL_12:
  [v5 weightDailyMaxLoss];
  v44 = self[15];
  if (vabdd_f64(v44, v13) > v43)
  {
    if (v44 <= v13)
    {
      v43 = -v43;
    }

    v44 = v13 + v43;
    self[15] = v13 + v43;
  }

  v45 = (v44 * 10.0) / 10.0;

  return v45;
}

@end