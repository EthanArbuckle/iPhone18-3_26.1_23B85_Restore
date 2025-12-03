@interface HDDemoDataReproductiveHealthSampleGenerator
- (HDDemoDataReproductiveHealthSampleGenerator)init;
- (HDDemoDataReproductiveHealthSampleGenerator)initWithCoder:(id)coder;
- (id)_computeFirstRunCycleFactorSamplesForDemoPerson:(void *)person targetDate:(void *)date;
- (int64_t)_computeNextLuteinizingHormoneSurgeForDemoPerson:(id)person atTime:(double)time;
- (int64_t)cycleDayIndexAtTime:(double)time demoPerson:(id)person;
- (uint64_t)menstrualFlowForDemoPerson:(void *)person withSampleDate:;
- (void)addMenstruationSampleForDemoPersonFromWatch:(void *)watch date:(uint64_t)date flow:(uint64_t)flow objectCollection:(void *)collection;
- (void)addSymptomSampleForDemoPersonFromWatch:(void *)watch date:categoryType:objectCollection:;
- (void)completeOnboardingForDemoPerson:(void *)person;
- (void)encodeWithCoder:(id)coder;
- (void)generateFirstRunObjectsForDemoPerson:(id)person firstDate:(id)date objectCollection:(id)collection;
- (void)generateObjectsForDemoPerson:(id)person fromTime:(double)time toTime:(double)toTime currentDate:(id)date objectCollection:(id)collection;
- (void)setupWithDemoDataGenerator:(id)generator;
@end

@implementation HDDemoDataReproductiveHealthSampleGenerator

- (HDDemoDataReproductiveHealthSampleGenerator)init
{
  v3.receiver = self;
  v3.super_class = HDDemoDataReproductiveHealthSampleGenerator;
  result = [(HDDemoDataBaseSampleGenerator *)&v3 init];
  if (result)
  {
    result->_nextSexualActivitySampleTime = 0.0;
    result->_nextCycleDaySampleTime = 0.0;
  }

  return result;
}

- (HDDemoDataReproductiveHealthSampleGenerator)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HDDemoDataReproductiveHealthSampleGenerator;
  v5 = [(HDDemoDataBaseSampleGenerator *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"HDDemoDataReproductiveHealthSampleHelperNextSexualActivitySampleTimeKey"];
    v5->_nextSexualActivitySampleTime = v6;
    [coderCopy decodeDoubleForKey:@"HDDemoDataReproductiveHealthSampleHelperNextCycleDaySampleTimeKey"];
    v5->_nextCycleDaySampleTime = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HDDemoDataReproductiveHealthSampleGenerator;
  coderCopy = coder;
  [(HDDemoDataBaseSampleGenerator *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeDouble:@"HDDemoDataReproductiveHealthSampleHelperNextSexualActivitySampleTimeKey" forKey:{self->_nextSexualActivitySampleTime, v5.receiver, v5.super_class}];
  [coderCopy encodeDouble:@"HDDemoDataReproductiveHealthSampleHelperNextCycleDaySampleTimeKey" forKey:self->_nextCycleDaySampleTime];
}

- (void)generateFirstRunObjectsForDemoPerson:(id)person firstDate:(id)date objectCollection:(id)collection
{
  v117[16] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CCDD30];
  collectionCopy = collection;
  dateCopy = date;
  personCopy = person;
  sharedBehavior = [v8 sharedBehavior];
  LODWORD(person) = [sharedBehavior isAppleWatch];

  if (person)
  {
    v12 = personCopy;
    v87 = dateCopy;
    v13 = dateCopy;
    v14 = collectionCopy;
    if (self && [v12 biologicalSex] != 2)
    {
      v83 = v12;
      v85 = collectionCopy;
      [HDDemoDataReproductiveHealthSampleGenerator completeOnboardingForDemoPerson:?];
      v15 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:&unk_283CAE6B0];
      v16 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:&unk_283CAE6C8];
      v17 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:&unk_283CAE6E0];
      v109 = 0u;
      v110 = 0u;
      v111 = 0u;
      v112 = 0u;
      obj = v15;
      v18 = [obj countByEnumeratingWithState:&v109 objects:v117 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = 0;
        v21 = *v110;
        do
        {
          v22 = 0;
          v23 = v20;
          do
          {
            if (*v110 != v21)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v109 + 1) + 8 * v22);

            v24 = [v13 dateByAddingTimeInterval:{(86400 * objc_msgSend(v20, "intValue"))}];
            [HDDemoDataReproductiveHealthSampleGenerator addMenstruationSampleForDemoPersonFromWatch:v24 date:0 flow:4 objectCollection:v14];

            ++v22;
            v23 = v20;
          }

          while (v19 != v22);
          v19 = [obj countByEnumeratingWithState:&v109 objects:v117 count:16];
        }

        while (v19);
      }

      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v25 = v16;
      v26 = [v25 countByEnumeratingWithState:&v105 objects:v116 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = 0;
        v29 = *v106;
        do
        {
          v30 = 0;
          v31 = v28;
          do
          {
            if (*v106 != v29)
            {
              objc_enumerationMutation(v25);
            }

            v28 = *(*(&v105 + 1) + 8 * v30);

            v32 = [v13 dateByAddingTimeInterval:{(86400 * objc_msgSend(v28, "intValue"))}];
            [HDDemoDataReproductiveHealthSampleGenerator addMenstruationSampleForDemoPersonFromWatch:v32 date:1 flow:3 objectCollection:v14];

            ++v30;
            v31 = v28;
          }

          while (v27 != v30);
          v27 = [v25 countByEnumeratingWithState:&v105 objects:v116 count:16];
        }

        while (v27);
      }

      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v33 = v17;
      v34 = [v33 countByEnumeratingWithState:&v101 objects:v115 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = 0;
        v37 = *v102;
        do
        {
          v38 = 0;
          v39 = v36;
          do
          {
            if (*v102 != v37)
            {
              objc_enumerationMutation(v33);
            }

            v36 = *(*(&v101 + 1) + 8 * v38);

            v40 = [v13 dateByAddingTimeInterval:{(86400 * objc_msgSend(v36, "intValue"))}];
            [HDDemoDataReproductiveHealthSampleGenerator addMenstruationSampleForDemoPersonFromWatch:v40 date:2 flow:2 objectCollection:v14];

            ++v38;
            v39 = v36;
          }

          while (v35 != v38);
          v35 = [v33 countByEnumeratingWithState:&v101 objects:v115 count:16];
        }

        while (v35);
      }

      v82 = v33;

      v41 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:&unk_283CAE6F8];
      v42 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:&unk_283CAE710];
      v43 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB8C8]];
      v44 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB998]];
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      v100 = 0u;
      v90 = v41;
      v45 = [v90 countByEnumeratingWithState:&v97 objects:v114 count:16];
      v84 = v25;
      if (v45)
      {
        v46 = v45;
        v80 = v42;
        v47 = 0;
        v48 = *v98;
        do
        {
          v49 = 0;
          v50 = v47;
          do
          {
            if (*v98 != v48)
            {
              objc_enumerationMutation(v90);
            }

            v47 = *(*(&v97 + 1) + 8 * v49);

            v51 = [v13 dateByAddingTimeInterval:{(86400 * objc_msgSend(v47, "intValue"))}];
            [HDDemoDataReproductiveHealthSampleGenerator addSymptomSampleForDemoPersonFromWatch:v51 date:v43 categoryType:v14 objectCollection:?];

            ++v49;
            v50 = v47;
          }

          while (v46 != v49);
          v46 = [v90 countByEnumeratingWithState:&v97 objects:v114 count:16];
        }

        while (v46);

        v25 = v84;
        v42 = v80;
      }

      v81 = v43;

      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v52 = v42;
      v53 = [v52 countByEnumeratingWithState:&v93 objects:v113 count:16];
      if (v53)
      {
        v54 = v53;
        v55 = 0;
        v56 = *v94;
        do
        {
          v57 = 0;
          v58 = v55;
          do
          {
            if (*v94 != v56)
            {
              objc_enumerationMutation(v52);
            }

            v55 = *(*(&v93 + 1) + 8 * v57);

            v59 = [v13 dateByAddingTimeInterval:{(86400 * objc_msgSend(v55, "intValue"))}];
            [HDDemoDataReproductiveHealthSampleGenerator addSymptomSampleForDemoPersonFromWatch:v59 date:v44 categoryType:v14 objectCollection:?];

            ++v57;
            v58 = v55;
          }

          while (v54 != v57);
          v54 = [v52 countByEnumeratingWithState:&v93 objects:v113 count:16];
        }

        while (v54);

        v25 = v84;
      }

      v12 = v83;
      v60 = [HDDemoDataReproductiveHealthSampleGenerator _computeFirstRunCycleFactorSamplesForDemoPerson:v83 targetDate:v13];
      if (v60)
      {
        [v14 addObjectsFromWatch:v60];
      }

      collectionCopy = v85;
    }

    dateCopy = v87;
  }

  else
  {
    v61 = personCopy;
    v62 = dateCopy;
    obja = collectionCopy;
    if (self)
    {
      profile = [(HDDemoDataBaseSampleGenerator *)self profile];

      if (!profile)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:sel_generatePhoneFirstRunSampleForDemoPerson_firstDate_objectCollection_ object:self file:@"HDDemoDataReproductiveHealthSampleGenerator.m" lineNumber:99 description:@"HDProfile must be set"];
      }

      birthDateComponents = [v61 birthDateComponents];
      v65 = HDDemoData_ageBetweenNSDateComponentsAndDate(birthDateComponents, v62);

      if (v65 >= 11)
      {
        [HDDemoDataReproductiveHealthSampleGenerator completeOnboardingForDemoPerson:?];
        v66 = [v62 dateByAddingTimeInterval:-7776000.0];
        if (qword_27D86C090 != -1)
        {
          dispatch_once(&qword_27D86C090, &__block_literal_global_32);
        }

        if ([v66 compare:v62] == -1)
        {
          v86 = collectionCopy;
          v88 = dateCopy;
          v68 = 0;
          v69 = *MEMORY[0x277CCC4F0];
          do
          {
            v70 = [(HDDemoDataReproductiveHealthSampleGenerator *)self menstrualFlowForDemoPerson:v61 withSampleDate:v66];
            if (v71 != 0xFFFFFFFF80000000)
            {
              v72 = v70;
              v73 = v71;
              v116[0] = v69;
              v74 = [MEMORY[0x277CCABB0] numberWithBool:v70 == 1];
              v117[0] = v74;
              v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v117 forKeys:v116 count:1];

              v76 = [MEMORY[0x277CCD0B0] categorySampleWithType:_MergedGlobals_15 value:v73 startDate:v66 endDate:v66 metadata:v75];
              [obja addObjectFromPhone:v76];
              if (!v68 && v72 == 1)
              {
                v68 = v66;
              }
            }

            v67 = [v66 dateByAddingTimeInterval:86400.0];

            v66 = v67;
          }

          while ([v67 compare:v62] == -1);
          dateCopy = v88;
          if (v68)
          {
            v77 = [HDDemoDataReproductiveHealthSampleGenerator _computeFirstRunCycleFactorSamplesForDemoPerson:v61 targetDate:v68];
            if (v77)
            {
              [obja addObjectsFromPhone:v77];
            }
          }

          collectionCopy = v86;
        }

        else
        {
          v67 = v66;
        }
      }
    }
  }

  v78 = *MEMORY[0x277D85DE8];
}

- (void)completeOnboardingForDemoPerson:(void *)person
{
  v49[4] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CCD740]);
  v3 = *MEMORY[0x277CCC090];
  date = [MEMORY[0x277CBEAA8] date];
  v5 = [v2 initWithFeatureIdentifier:v3 version:2 completionDate:date countryCode:0 countryCodeProvenance:0];

  personCopy = person;
  profile = [person profile];
  onboardingCompletionManager = [profile onboardingCompletionManager];
  v41 = 0;
  LOBYTE(date) = [onboardingCompletionManager insertOnboardingCompletion:v5 error:&v41];
  v8 = v41;

  if (date)
  {
    v31 = v8;
    v32 = v5;
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    countryCode = [currentLocale countryCode];

    date2 = [MEMORY[0x277CBEAA8] date];
    v11 = *MEMORY[0x277CCC098];
    v49[0] = *MEMORY[0x277CCC0A0];
    v49[1] = v11;
    v12 = *MEMORY[0x277CCC0A8];
    v49[2] = *MEMORY[0x277CCC0F8];
    v49[3] = v12;
    [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:4];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v40 = 0u;
    v13 = [obj countByEnumeratingWithState:&v37 objects:v48 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v38;
      do
      {
        v16 = 0;
        do
        {
          if (*v38 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v37 + 1) + 8 * v16);
          v18 = [objc_alloc(MEMORY[0x277CCD740]) initWithFeatureIdentifier:v17 version:1 completionDate:date2 countryCode:countryCode countryCodeProvenance:102];
          profile2 = [personCopy profile];
          onboardingCompletionManager2 = [profile2 onboardingCompletionManager];
          v36 = 0;
          v21 = [onboardingCompletionManager2 insertOnboardingCompletion:v18 error:&v36];
          v22 = v36;

          if ((v21 & 1) == 0)
          {
            _HKInitializeLogging();
            v23 = *MEMORY[0x277CCC2B8];
            if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
            {
              v24 = v23;
              v25 = objc_opt_class();
              *buf = 138543874;
              v43 = v25;
              v44 = 2114;
              v45 = v17;
              v46 = 2114;
              v47 = v22;
              v26 = v25;
              _os_log_error_impl(&dword_228986000, v24, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to insert onboarding record for %{public}@: %{public}@", buf, 0x20u);
            }
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [obj countByEnumeratingWithState:&v37 objects:v48 count:16];
      }

      while (v14);
    }

    v8 = v31;
    v5 = v32;
  }

  else
  {
    _HKInitializeLogging();
    v27 = *MEMORY[0x277CCC2B8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v43 = v8;
      _os_log_impl(&dword_228986000, v27, OS_LOG_TYPE_DEFAULT, "Failed to insert Cycle Tracking onboarding completion: %{public}@", buf, 0xCu);
    }
  }

  v28 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.private.health.menstrual-cycles"];
  [v28 setBool:1 forKey:@"MenstruationNotificationsEnabled"];
  [v28 setBool:1 forKey:@"MenstruationProjectionsEnabled"];
  [v28 setBool:1 forKey:@"FertileWindowProjectionsEnabled"];
  [v28 setBool:1 forKey:@"FertileWindowNotificationsEnabled"];
  v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v28 setObject:v29 forKey:@"ShouldHideByDisplayTypeIdentifier"];

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __115__HDDemoDataReproductiveHealthSampleGenerator_generatePhoneFirstRunSampleForDemoPerson_firstDate_objectCollection___block_invoke()
{
  _MergedGlobals_15 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBA28]];

  return MEMORY[0x2821F96F8]();
}

- (uint64_t)menstrualFlowForDemoPerson:(void *)person withSampleDate:
{
  personCopy = person;
  if (self)
  {
    v6 = MEMORY[0x277CBEA80];
    v7 = a2;
    currentCalendar = [v6 currentCalendar];
    v9 = [currentCalendar components:16 fromDate:personCopy];

    biologicalSex = [v7 biologicalSex];
    if (biologicalSex == 2)
    {
      v11 = [v9 day];
    }

    else
    {
      v12 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:&unk_283CAE788];
      v13 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:&unk_283CAE7A0];
      v14 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:&unk_283CAE7B8];
      v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "day")}];
      v16 = [v12 containsObject:v15];

      if (v16 || ([MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "day")}], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v13, "containsObject:", v17), v17, v18))
      {
        v11 = [v9 day];
      }

      else
      {
        currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
        v20 = [currentCalendar2 components:8 fromDate:personCopy];

        if (([v20 month] & 1) == 0)
        {
          v21 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "day")}];
          [v14 containsObject:v21];
        }

        v11 = [v9 day];
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_computeFirstRunCycleFactorSamplesForDemoPerson:(void *)person targetDate:(void *)date
{
  personCopy = person;
  dateCopy = date;
  if ([personCopy biologicalSex] == 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
    v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(&unk_283CB05E8, "intValue") - 280}];
    v7 = [dateCopy dateByAddingTimeInterval:{(86400 * objc_msgSend(v6, "intValue"))}];
    v8 = [dateCopy dateByAddingTimeInterval:{(86400 * objc_msgSend(&unk_283CB05E8, "intValue"))}];
    birthDateComponents = [personCopy birthDateComponents];
    v10 = HDDemoData_ageBetweenNSDateComponentsAndDate(birthDateComponents, v7);

    if (v10 >= 21)
    {
      v11 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBA68]];
      v12 = [MEMORY[0x277CCD0B0] categorySampleWithType:v11 value:0 startDate:v7 endDate:v8];
      [v5 addObject:v12];
    }

    v13 = [dateCopy dateByAddingTimeInterval:{(86400 * objc_msgSend(&unk_283CB0600, "intValue"))}];
    birthDateComponents2 = [personCopy birthDateComponents];
    v15 = HDDemoData_ageBetweenNSDateComponentsAndDate(birthDateComponents2, v13);

    if (v15 >= 18)
    {
      v16 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB938]];
      v17 = MEMORY[0x277CCD0B0];
      distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
      v19 = [v17 categorySampleWithType:v16 value:1 startDate:v13 endDate:distantFuture];

      [v5 addObject:v19];
    }
  }

  return v5;
}

- (void)addMenstruationSampleForDemoPersonFromWatch:(void *)watch date:(uint64_t)date flow:(uint64_t)flow objectCollection:(void *)collection
{
  v17[1] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CCD0C0];
  v8 = *MEMORY[0x277CCBA28];
  collectionCopy = collection;
  watchCopy = watch;
  v11 = [v7 categoryTypeForIdentifier:v8];
  v16 = *MEMORY[0x277CCC4F0];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:date == 0];
  v17[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];

  v14 = [MEMORY[0x277CCD0B0] categorySampleWithType:v11 value:flow startDate:watchCopy endDate:watchCopy metadata:v13];

  [collectionCopy addObjectFromWatch:v14];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)addSymptomSampleForDemoPersonFromWatch:(void *)watch date:categoryType:objectCollection:
{
  v5 = MEMORY[0x277CCD0B0];
  watchCopy = watch;
  v7 = [v5 categorySampleWithType:a2 value:0 startDate:self endDate:self];
  [watchCopy addObjectFromWatch:v7];
}

- (void)setupWithDemoDataGenerator:(id)generator
{
  generatorCopy = generator;
  v11.receiver = self;
  v11.super_class = HDDemoDataReproductiveHealthSampleGenerator;
  [(HDDemoDataBaseSampleGenerator *)&v11 setupWithDemoDataGenerator:generatorCopy];
  basalBodyTempMultiplierTable = self->_basalBodyTempMultiplierTable;
  self->_basalBodyTempMultiplierTable = &unk_283CAE728;

  cervicalMucusTable = self->_cervicalMucusTable;
  self->_cervicalMucusTable = &unk_283CAE740;

  if (![(HDDemoDataBaseSampleGenerator *)self createdFromNSKeyedUnarchiver])
  {
    statisticsSampleGenerator = [generatorCopy statisticsSampleGenerator];
    demoPerson = [generatorCopy demoPerson];
    [demoPerson genericSampleTimeNoiseStdDev];
    [statisticsSampleGenerator computeNoiseFromTime:0.0 stdDev:v9];
    self->_nextSexualActivitySampleTime = v10 + 0.923611111;
  }
}

- (void)generateObjectsForDemoPerson:(id)person fromTime:(double)time toTime:(double)toTime currentDate:(id)date objectCollection:(id)collection
{
  v198[1] = *MEMORY[0x277D85DE8];
  personCopy = person;
  dateCopy = date;
  collectionCopy = collection;
  v194.receiver = self;
  v194.super_class = HDDemoDataReproductiveHealthSampleGenerator;
  [(HDDemoDataBaseSampleGenerator *)&v194 generateObjectsForDemoPerson:personCopy fromTime:dateCopy toTime:collectionCopy currentDate:toTime objectCollection:toTime];
  if (qword_27D86C0D8 != -1)
  {
    dispatch_once(&qword_27D86C0D8, &__block_literal_global_369);
  }

  v14 = [dateCopy dateByAddingTimeInterval:-86400.0];
  v15 = personCopy;
  if (self)
  {
    demoDataGenerator = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    v17 = [demoDataGenerator currentDateFromCurrentTime:toTime];

    birthDateComponents = [v15 birthDateComponents];
    v19 = HDDemoData_ageBetweenNSDateComponentsAndDate(birthDateComponents, v17);

    if (v19 < 18 || self->_nextSexualActivitySampleTime > toTime)
    {
      goto LABEL_20;
    }

    demoDataGenerator2 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    statisticsSampleGenerator = [demoDataGenerator2 statisticsSampleGenerator];
    [statisticsSampleGenerator computeNoiseFromTime:toTime stdDev:0.00694444444];
    self->_nextSexualActivitySampleTime = v22 + 1.0 + self->_nextSexualActivitySampleTime;

    [v15 sexualActivityProbabilityPercentage];
    v24 = v23;
    [v15 sexualActivityProtectionProbabilityPercentage];
    v26 = v25;
    [v15 sexualActivityProtectionDocumentationProbabilityPercentage];
    v28 = v27;
    if ([v15 sexualActivityIsTryingToConceive])
    {
      [v15 sexualActivityProbabilityPercentage];
      v24 = v29 * 1.5;
      v26 = 0.0;
    }

    if ([v15 biologicalSex] == 1)
    {
      v30 = v15;
      if ([v30 biologicalSex] == 2)
      {
LABEL_12:

        goto LABEL_13;
      }

      v192 = v14;
      v31 = collectionCopy;
      v32 = dateCopy;
      demoDataGenerator3 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      v34 = [demoDataGenerator3 currentDateFromCurrentTime:toTime];

      birthDateComponents2 = [v30 birthDateComponents];
      v36 = HDDemoData_ageBetweenNSDateComponentsAndDate(birthDateComponents2, v34);

      if (v36 <= 10)
      {

        dateCopy = v32;
        collectionCopy = v31;
        v14 = v192;
        goto LABEL_12;
      }

      v124 = [(HDDemoDataReproductiveHealthSampleGenerator *)self _computeNextLuteinizingHormoneSurgeForDemoPerson:v30 atTime:toTime];

      dateCopy = v32;
      collectionCopy = v31;
      v14 = v192;
      if (toTime == v124 && ([v30 sexualActivityIsTryingToConceive] & 1) != 0)
      {
        goto LABEL_14;
      }
    }

LABEL_13:
    demoDataGenerator4 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
    statisticsSampleGenerator2 = [demoDataGenerator4 statisticsSampleGenerator];
    [statisticsSampleGenerator2 pseudoRandomDoubleFromTime:toTime * 5.0];
    v40 = v39;

    if (v40 < v24)
    {
LABEL_14:
      demoDataGenerator5 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      statisticsSampleGenerator3 = [demoDataGenerator5 statisticsSampleGenerator];
      [statisticsSampleGenerator3 pseudoRandomDoubleFromTime:toTime * 6.0];
      v44 = v43;

      if (v44 < 0.1)
      {
        demoDataGenerator6 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
        statisticsSampleGenerator4 = [demoDataGenerator6 statisticsSampleGenerator];
        [statisticsSampleGenerator4 computeNoiseFromTime:toTime stdDev:0.0104166667];
        self->_nextSexualActivitySampleTime = self->_nextSexualActivitySampleTime - (v47 + 0.958333333);
      }

      demoDataGenerator7 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      statisticsSampleGenerator5 = [demoDataGenerator7 statisticsSampleGenerator];
      [statisticsSampleGenerator5 pseudoRandomDoubleFromTime:toTime * 7.0];
      v51 = v50;

      if (v51 >= v28)
      {
        v56 = &unk_283CB0750;
      }

      else
      {
        demoDataGenerator8 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
        statisticsSampleGenerator6 = [demoDataGenerator8 statisticsSampleGenerator];
        [statisticsSampleGenerator6 pseudoRandomDoubleFromTime:toTime * 3.0];
        v55 = v54;

        if (v55 >= v26)
        {
          v56 = &unk_283CB0738;
        }

        else
        {
          v56 = &unk_283CB0720;
        }
      }

      goto LABEL_21;
    }

LABEL_20:
    v56 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v56 = 0;
LABEL_22:

  v57 = v56;
  v58 = v57;
  if (v57)
  {
    intValue = [v57 intValue];
    if ([v58 intValue] == 1)
    {
      v60 = 0;
    }

    else
    {
      v197 = *MEMORY[0x277CCC508];
      v61 = [MEMORY[0x277CCABB0] numberWithBool:intValue == 3];
      v198[0] = v61;
      v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v198 forKeys:&v197 count:1];
    }

    v62 = [MEMORY[0x277CCD0B0] categorySampleWithType:qword_27D86C0A0 value:0 startDate:v14 endDate:v14 metadata:v60];
    [collectionCopy addObjectFromPhone:v62];
  }

  demoDataGenerator9 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
  v64 = [demoDataGenerator9 currentDateFromCurrentTime:toTime];

  birthDateComponents3 = [v15 birthDateComponents];
  v66 = HDDemoData_ageBetweenNSDateComponentsAndDate(birthDateComponents3, v64);

  if ([v15 biologicalSex] == 1 && v66 >= 12)
  {
    v191 = v64;
    v193 = v14;
    v67 = v15;
    v68 = v67;
    if (self)
    {
      demoDataGenerator10 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      v70 = [demoDataGenerator10 currentDateFromCurrentTime:toTime];

      birthDateComponents4 = [v68 birthDateComponents];
      v72 = HDDemoData_ageBetweenNSDateComponentsAndDate(birthDateComponents4, v70);

      if (v72 < 21)
      {
        goto LABEL_35;
      }

      v73 = toTime - toTime;
      demoDataGenerator11 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
      statisticsSampleGenerator7 = [demoDataGenerator11 statisticsSampleGenerator];
      [statisticsSampleGenerator7 pseudoRandomDoubleFromTime:toTime];
      v77 = v76 * 3.0 + 4.0;

      v78 = v77 / 24.0;
      [v68 timeIncrement];
      v80 = v73 - v79;
      if (v73 >= v78 && v80 < v78)
      {
        demoDataGenerator12 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
        vitalsSampleGenerator = [demoDataGenerator12 vitalsSampleGenerator];
        [vitalsSampleGenerator _computeBodyTempInCelsiusForDemoPerson:v68 atTime:0 addNoise:toTime];
        v86 = v85;

        demoDataGenerator13 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
        statisticsSampleGenerator8 = [demoDataGenerator13 statisticsSampleGenerator];
        [v68 bodyTempSampleNoiseStdDev];
        [statisticsSampleGenerator8 computeNoiseFromTime:toTime stdDev:v89];
        v91 = v90;

        v82 = [MEMORY[0x277CCABB0] numberWithDouble:((v86 + v91) * 100.0) / 100.0];
      }

      else
      {
LABEL_35:
        v82 = 0;
      }

      if (v82)
      {
        v92 = MEMORY[0x277CCD7E8];
        v93 = qword_27D86C098;
        [v82 doubleValue];
        v94 = [v92 quantityWithUnit:v93 doubleValue:?];
        v95 = [MEMORY[0x277CCD800] quantitySampleWithType:qword_27D86C0A8 quantity:v94 startDate:dateCopy endDate:dateCopy];
        [collectionCopy addObjectFromPhone:v95];
      }

      v190 = v82;
      v96 = v68;
      if ([v96 biologicalSex] != 2 && (objc_msgSend(v96, "biologicalSex") != 1 || objc_msgSend(v96, "sexualActivityIsTryingToConceive")))
      {
        demoDataGenerator14 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
        v100 = [demoDataGenerator14 currentDateFromCurrentTime:toTime];

        birthDateComponents5 = [v96 birthDateComponents];
        v187 = v100;
        v102 = HDDemoData_ageBetweenNSDateComponentsAndDate(birthDateComponents5, v100);

        if (v102 >= 11)
        {
          v182 = dateCopy;
          v103 = toTime - toTime;
          demoDataGenerator15 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
          currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
          v106 = [demoDataGenerator15 isDemoDataTimeInWeekend:currentCalendar calendar:toTime];

          if (v106)
          {
            [v96 weekendSleepParameters];
          }

          else
          {
            [v96 weekdaySleepParameters];
          }
          v186 = ;
          [v186 wakeUpTime];
          v108 = v107 + 0.00763888889;
          demoDataGenerator16 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
          statisticsSampleGenerator9 = [demoDataGenerator16 statisticsSampleGenerator];
          [v96 genericSampleTimeNoiseStdDev];
          [statisticsSampleGenerator9 computeNoiseFromTime:toTime stdDev:v111 * 0.5];
          v113 = v108 + v112;

          [v96 timeIncrement];
          v97 = 0;
          dateCopy = v182;
          if (v103 >= v113 && v103 - v114 < v113)
          {
            v179 = v58;
            v115 = collectionCopy;
            [v96 menstrualPeriodFrequency];
            v117 = v116;
            v118 = [(NSArray *)self->_cervicalMucusTable objectAtIndexedSubscript:[(HDDemoDataReproductiveHealthSampleGenerator *)self cycleDayIndexAtTime:v96 demoPerson:toTime]];
            intValue2 = [v118 intValue];
            v120 = intValue2;

            if ((intValue2 & 0xFFFFFFFE) == 2)
            {
              demoDataGenerator17 = [(HDDemoDataBaseSampleGenerator *)self demoDataGenerator];
              statisticsSampleGenerator10 = [demoDataGenerator17 statisticsSampleGenerator];
              [statisticsSampleGenerator10 pseudoRandomDoubleFromTime:toTime];
              v120 = vcvtpd_s64_f64(v120 - v123);
            }

            if (toTime % v117 > v117 / 2 + 3)
            {
              collectionCopy = v115;
              v58 = v179;
              dateCopy = v182;
              v97 = 0;
            }

            else
            {
              collectionCopy = v115;
              v58 = v179;
              dateCopy = v182;
              v97 = 0;
              if (v120)
              {
                v97 = [MEMORY[0x277CCABB0] numberWithInteger:v120];
              }
            }
          }
        }

        else
        {
          v97 = 0;
        }

        if (!v97)
        {
          v14 = v193;
          goto LABEL_65;
        }

        v14 = v193;
        v98 = [MEMORY[0x277CCD0B0] categorySampleWithType:qword_27D86C0B0 value:objc_msgSend(v97 startDate:"intValue") endDate:{v193, v193}];
        [collectionCopy addObjectFromPhone:v98];
LABEL_64:

LABEL_65:
        if (self->_nextCycleDaySampleTime <= toTime)
        {
          v125 = [(HDDemoDataReproductiveHealthSampleGenerator *)self menstrualFlowForDemoPerson:v68 withSampleDate:v14];
          if (v126 != 0xFFFFFFFF80000000)
          {
            v127 = v126;
            v195 = *MEMORY[0x277CCC4F0];
            v128 = [MEMORY[0x277CCABB0] numberWithBool:v125 == 0];
            v196 = v128;
            v129 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v196 forKeys:&v195 count:1];

            v130 = [MEMORY[0x277CCD0B0] categorySampleWithType:qword_27D86C0B8 value:v127 startDate:v193 endDate:v193 metadata:v129];
            [collectionCopy addObjectFromPhone:v130];

            v14 = v193;
          }

          v188 = v97;
          v131 = v68;
          v132 = v14;
          v185 = v131;
          if ([v131 biologicalSex] == 2)
          {
            v133 = 0;
          }

          else
          {
            v180 = v58;
            v183 = dateCopy;
            v134 = collectionCopy;
            v135 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:&unk_283CAE758];
            v136 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:&unk_283CAE770];
            currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
            v138 = [currentCalendar2 components:16 fromDate:v132];

            v139 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v138, "day")}];
            v140 = [v135 containsObject:v139];

            if (v140)
            {
              v133 = &unk_283CB0738;
            }

            else
            {
              v141 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v138, "day")}];
              v142 = [v136 containsObject:v141];

              if (v142)
              {
                v133 = &unk_283CB0750;
              }

              else
              {
                v133 = 0;
              }
            }

            collectionCopy = v134;
            v58 = v180;
            dateCopy = v183;
            v131 = v185;
          }

          v189 = collectionCopy;

          v143 = v133;
          v144 = v143;
          if (v143)
          {
            v145 = [MEMORY[0x277CCD0B0] categorySampleWithType:qword_27D86C0C0 value:objc_msgSend(v143 startDate:"intValue") endDate:{v132, v132}];
            [collectionCopy addObjectFromPhone:v145];
          }

          v184 = v144;
          mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
          isAppleWatch = [mEMORY[0x277CCDD30] isAppleWatch];

          if ((isAppleWatch & 1) == 0)
          {
            v148 = MEMORY[0x277CBEA80];
            v149 = v132;
            v150 = v131;
            currentCalendar3 = [v148 currentCalendar];
            v152 = [currentCalendar3 components:16 fromDate:v149];

            biologicalSex = [v150 biologicalSex];
            v154 = &unk_283CB07C8;
            if (biologicalSex != 2)
            {
              v181 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:&unk_283CAE7D0];
              v155 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v152, "day")}];
              v156 = v149;
              v157 = v152;
              v158 = v58;
              v159 = dateCopy;
              v160 = [v181 containsObject:v155];

              v161 = v160 == 0;
              dateCopy = v159;
              v58 = v158;
              v152 = v157;
              v149 = v156;
              if (!v161)
              {
                v154 = &unk_283CB06A8;
              }
            }

            v162 = v154;
            if ([v162 isEqualToNumber:&unk_283CB06A8])
            {
              v163 = [MEMORY[0x277CCD0B0] categorySampleWithType:qword_27D86C0C8 value:0 startDate:v149 endDate:v149];
              [v189 addObjectFromPhone:v163];
            }

            v131 = v185;
          }

          v164 = dateCopy;
          v165 = MEMORY[0x277CBEA80];
          v166 = v132;
          v167 = v131;
          currentCalendar4 = [v165 currentCalendar];
          v169 = [currentCalendar4 components:16 fromDate:v166];

          biologicalSex2 = [v167 biologicalSex];
          v171 = &unk_283CB07C8;
          if (biologicalSex2 != 2)
          {
            v172 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:&unk_283CAE7E8];
            v173 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v169, "day")}];
            v174 = [v172 containsObject:v173];

            if (v174)
            {
              v171 = &unk_283CB06A8;
            }
          }

          v175 = v171;
          collectionCopy = v189;
          if ([v175 isEqualToNumber:&unk_283CB06A8])
          {
            v176 = [MEMORY[0x277CCD0B0] categorySampleWithType:qword_27D86C0D0 value:0 startDate:v166 endDate:v166];
            [v189 addObjectFromPhone:v176];
          }

          self->_nextCycleDaySampleTime = toTime + 1.0;

          dateCopy = v164;
          v14 = v193;
          v97 = v188;
        }

        v64 = v191;
        goto LABEL_95;
      }

      v97 = 0;
    }

    else
    {

      v178 = v68;
      v97 = 0;
      v190 = 0;
    }

    v98 = v68;
    v14 = v193;
    goto LABEL_64;
  }

LABEL_95:

  v177 = *MEMORY[0x277D85DE8];
}

uint64_t __121__HDDemoDataReproductiveHealthSampleGenerator_generateObjectsForDemoPerson_fromTime_toTime_currentDate_objectCollection___block_invoke()
{
  v0 = [MEMORY[0x277CCDAB0] degreeCelsiusUnit];
  v1 = qword_27D86C098;
  qword_27D86C098 = v0;

  v2 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBA98]];
  v3 = qword_27D86C0A0;
  qword_27D86C0A0 = v2;

  v4 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC958]];
  v5 = qword_27D86C0A8;
  qword_27D86C0A8 = v4;

  v6 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB918]];
  v7 = qword_27D86C0B0;
  qword_27D86C0B0 = v6;

  v8 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBA28]];
  v9 = qword_27D86C0B8;
  qword_27D86C0B8 = v8;

  v10 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBA50]];
  v11 = qword_27D86C0C0;
  qword_27D86C0C0 = v10;

  v12 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB8C8]];
  v13 = qword_27D86C0C8;
  qword_27D86C0C8 = v12;

  qword_27D86C0D0 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB998]];

  return MEMORY[0x2821F96F8]();
}

- (int64_t)cycleDayIndexAtTime:(double)time demoPerson:(id)person
{
  personCopy = person;
  v7 = [(HDDemoDataReproductiveHealthSampleGenerator *)self _computeNextLuteinizingHormoneSurgeForDemoPerson:personCopy atTime:time]+ 1;
  [personCopy menstrualPeriodFrequency];
  v9 = v8;

  return time % v9 + v7 / v9 * v9 - v7 + 15;
}

- (int64_t)_computeNextLuteinizingHormoneSurgeForDemoPerson:(id)person atTime:(double)time
{
  personCopy = person;
  [personCopy menstrualPeriodFrequency];
  v7 = (v6 * 0.5 + -1.0);
  [personCopy menstrualPeriodFrequency];
  v9 = (time / v8);
  [personCopy menstrualPeriodFrequency];
  v11 = v10;

  return (v11 * v9) + v7;
}

@end