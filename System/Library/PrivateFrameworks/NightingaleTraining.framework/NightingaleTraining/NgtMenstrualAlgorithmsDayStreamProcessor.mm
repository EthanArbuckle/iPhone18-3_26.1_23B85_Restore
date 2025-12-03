@interface NgtMenstrualAlgorithmsDayStreamProcessor
- (NgtMenstrualAlgorithmsDayStreamProcessor)initWithConfig:(id)config mlConfig:(id)mlConfig;
- (id).cxx_construct;
- (id)analyzeWithMostRecentMenstrualFlowJulianDayUpdated:(unsigned int)updated error:(id *)error;
- (unsigned)watchNumericIdentifierFromString:(id)string;
- (void)appendDay:(id)day;
- (void)beginPhase:(unsigned __int8)phase onJulianDay:(unsigned int)day;
- (void)endPhase:(unsigned __int8)phase onJulianDay:(unsigned int)day;
- (void)runDays;
@end

@implementation NgtMenstrualAlgorithmsDayStreamProcessor

- (NgtMenstrualAlgorithmsDayStreamProcessor)initWithConfig:(id)config mlConfig:(id)mlConfig
{
  v111 = *MEMORY[0x277D85DE8];
  configCopy = config;
  mlConfigCopy = mlConfig;
  v109.receiver = self;
  v109.super_class = NgtMenstrualAlgorithmsDayStreamProcessor;
  v72 = [(NgtMenstrualAlgorithmsDayStreamProcessor *)&v109 init];

  if (v72)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:100];
    dayInputBuffer = v72->_dayInputBuffer;
    v72->_dayInputBuffer = v6;

    LOBYTE(v82) = 0;
    v83 = 0;
    LOBYTE(v84) = 0;
    v85 = 0;
    LOBYTE(v86) = 0;
    v87 = 0;
    LOBYTE(v88) = 0;
    v89 = 0;
    LOBYTE(v90) = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    LOBYTE(v94) = 0;
    v95 = 0;
    v101 = 0;
    v96 = 0;
    LOBYTE(v97) = 0;
    v102 = 0x1800000018;
    memset(v103, 0, sizeof(v103));
    memset(v104, 0, sizeof(v104));
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    memset(&v108, 0, sizeof(v108));
    heartRateFwEnd10PctModelPath = [mlConfigCopy heartRateFwEnd10PctModelPath];
    v9 = heartRateFwEnd10PctModelPath;
    std::string::__assign_external(&v105, [heartRateFwEnd10PctModelPath UTF8String]);

    heartRatePeriod10PctModelPath = [mlConfigCopy heartRatePeriod10PctModelPath];
    v11 = heartRatePeriod10PctModelPath;
    std::string::__assign_external(&v104[1], [heartRatePeriod10PctModelPath UTF8String]);

    wTmpFwEndLstmModelPath = [mlConfigCopy wTmpFwEndLstmModelPath];
    v13 = wTmpFwEndLstmModelPath;
    std::string::__assign_external(&v103[1], [wTmpFwEndLstmModelPath UTF8String]);

    wTmpFwEndRFModelPath = [mlConfigCopy wTmpFwEndRFModelPath];
    v15 = wTmpFwEndRFModelPath;
    std::string::__assign_external(v104, [wTmpFwEndRFModelPath UTF8String]);

    wTmpPeriodLstmModelPath = [mlConfigCopy wTmpPeriodLstmModelPath];
    v17 = wTmpPeriodLstmModelPath;
    std::string::__assign_external(v103, [wTmpPeriodLstmModelPath UTF8String]);

    v81 = 0u;
    v79 = 0u;
    v80 = 0u;
    v78 = 0u;
    heartRatePeriodTFModelPaths = [mlConfigCopy heartRatePeriodTFModelPaths];
    v19 = [heartRatePeriodTFModelPaths countByEnumeratingWithState:&v78 objects:v110 count:16];
    if (v19)
    {
      v20 = *v79;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v79 != v20)
          {
            objc_enumerationMutation(heartRatePeriodTFModelPaths);
          }

          std::string::basic_string[abi:ne200100]<0>(__p, [*(*(&v78 + 1) + 8 * i) UTF8String]);
          v22 = v107;
          if (v107 >= *(&v107 + 1))
          {
            v24 = 0xAAAAAAAAAAAAAAABLL * ((v107 - *(&v106 + 1)) >> 3);
            v25 = v24 + 1;
            if (v24 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<float>::__throw_length_error[abi:ne200100]();
            }

            if (0x5555555555555556 * ((*(&v107 + 1) - *(&v106 + 1)) >> 3) > v25)
            {
              v25 = 0x5555555555555556 * ((*(&v107 + 1) - *(&v106 + 1)) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((*(&v107 + 1) - *(&v106 + 1)) >> 3) >= 0x555555555555555)
            {
              v26 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v26 = v25;
            }

            *&v74[32] = &v106 + 8;
            if (v26)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v106 + 8, v26);
            }

            v27 = 8 * ((v107 - *(&v106 + 1)) >> 3);
            v28 = *__p;
            *(v27 + 16) = v77;
            *v27 = v28;
            __p[1] = 0;
            v77 = 0;
            __p[0] = 0;
            v29 = 24 * v24 + 24;
            v30 = 24 * v24 - (v107 - *(&v106 + 1));
            memcpy((v27 - (v107 - *(&v106 + 1))), *(&v106 + 1), v107 - *(&v106 + 1));
            v31 = *(&v106 + 1);
            v32 = *(&v107 + 1);
            *(&v106 + 1) = v30;
            v107 = v29;
            *&v74[16] = v31;
            *&v74[24] = v32;
            *v74 = v31;
            *&v74[8] = v31;
            std::__split_buffer<std::string>::~__split_buffer(v74);
            *&v107 = v29;
            if (SHIBYTE(v77) < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            v23 = *__p;
            *(v107 + 16) = v77;
            *v22 = v23;
            *&v107 = v22 + 24;
          }
        }

        v19 = [heartRatePeriodTFModelPaths countByEnumeratingWithState:&v78 objects:v110 count:16];
      }

      while (v19);
    }

    heartRatePeriodEnsembleModelPath = [mlConfigCopy heartRatePeriodEnsembleModelPath];
    v34 = heartRatePeriodEnsembleModelPath;
    std::string::__assign_external(&v108, [heartRatePeriodEnsembleModelPath UTF8String]);

    userReportedCycleLength = [configCopy userReportedCycleLength];
    v36 = userReportedCycleLength == 0;

    if (!v36)
    {
      userReportedCycleLength2 = [configCopy userReportedCycleLength];
      unsignedIntValue = [userReportedCycleLength2 unsignedIntValue];
      if ((v83 & 1) == 0)
      {
        v83 = 1;
      }

      v82 = unsignedIntValue;
    }

    julianDayOfUserReportedCycleLength = [configCopy julianDayOfUserReportedCycleLength];
    v40 = julianDayOfUserReportedCycleLength == 0;

    if (!v40)
    {
      julianDayOfUserReportedCycleLength2 = [configCopy julianDayOfUserReportedCycleLength];
      unsignedIntValue2 = [julianDayOfUserReportedCycleLength2 unsignedIntValue];
      if ((v87 & 1) == 0)
      {
        v87 = 1;
      }

      v86 = unsignedIntValue2;
    }

    userReportedMenstruationLength = [configCopy userReportedMenstruationLength];
    v44 = userReportedMenstruationLength == 0;

    if (!v44)
    {
      userReportedMenstruationLength2 = [configCopy userReportedMenstruationLength];
      unsignedIntValue3 = [userReportedMenstruationLength2 unsignedIntValue];
      if ((v85 & 1) == 0)
      {
        v85 = 1;
      }

      v84 = unsignedIntValue3;
    }

    julianDayOfUserReportedMenstruationLength = [configCopy julianDayOfUserReportedMenstruationLength];
    v48 = julianDayOfUserReportedMenstruationLength == 0;

    if (!v48)
    {
      julianDayOfUserReportedMenstruationLength2 = [configCopy julianDayOfUserReportedMenstruationLength];
      unsignedIntValue4 = [julianDayOfUserReportedMenstruationLength2 unsignedIntValue];
      if ((v89 & 1) == 0)
      {
        v89 = 1;
      }

      v88 = unsignedIntValue4;
    }

    awakeSHRCountThreshold = [configCopy awakeSHRCountThreshold];
    v52 = awakeSHRCountThreshold == 0;

    if (!v52)
    {
      awakeSHRCountThreshold2 = [configCopy awakeSHRCountThreshold];
      LODWORD(v102) = [awakeSHRCountThreshold2 unsignedIntValue];
    }

    sleepSHRCountThreshold = [configCopy sleepSHRCountThreshold];
    v55 = sleepSHRCountThreshold == 0;

    if (!v55)
    {
      sleepSHRCountThreshold2 = [configCopy sleepSHRCountThreshold];
      HIDWORD(v102) = [sleepSHRCountThreshold2 unsignedIntValue];
    }

    birthDateComponents = [configCopy birthDateComponents];
    v58 = birthDateComponents == 0;

    if (!v58)
    {
      birthDateComponents2 = [configCopy birthDateComponents];
      date = [birthDateComponents2 date];
      [date timeIntervalSinceNow];
      v63 = v62;

      v59 = v63 / -31557600.0;
      if (v63 / -31557600.0 >= 1.0 && v59 <= 200.0)
      {
        v64 = v59;
        v94 = v64;
        v95 = 1;
        v65 = [MEMORY[0x277CCABB0] numberWithDouble:?];
        [(NgtMenstrualAlgorithmsDayStreamProcessor *)v72 setUserAgeInYears:v65];
      }
    }

    deviationInput = [configCopy deviationInput];
    v67 = deviationInput == 0;

    if (!v67)
    {
      deviationInput2 = [configCopy deviationInput];
      deviationInput(deviationInput2, v74);
      v97 = *v74;
      v98 = *&v74[16];
      v99 = *&v74[32];
      v100 = v75;
      if ((v101 & 1) == 0)
      {
        v101 = 1;
      }
    }

    todayAsJulianDay = [configCopy todayAsJulianDay];
    if ((v91 & 1) == 0)
    {
      v91 = 1;
    }

    v90 = todayAsJulianDay;
    operator new();
  }

  return 0;
}

- (void)appendDay:(id)day
{
  dayCopy = day;
  dayInputBuffer = [(NgtMenstrualAlgorithmsDayStreamProcessor *)self dayInputBuffer];
  [dayInputBuffer addObject:dayCopy];

  dayInputBuffer2 = [(NgtMenstrualAlgorithmsDayStreamProcessor *)self dayInputBuffer];
  v6 = [dayInputBuffer2 count];

  if (v6 == 100)
  {
    [(NgtMenstrualAlgorithmsDayStreamProcessor *)self runDays];
    dayInputBuffer3 = [(NgtMenstrualAlgorithmsDayStreamProcessor *)self dayInputBuffer];
    [dayInputBuffer3 removeAllObjects];
  }
}

- (void)runDays
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  dayInputBuffer = [(NgtMenstrualAlgorithmsDayStreamProcessor *)self dayInputBuffer];
  v4 = [dayInputBuffer countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v14 != v5)
      {
        objc_enumerationMutation(dayInputBuffer);
      }

      v7 = *(*(&v13 + 1) + 8 * v6);
      wristTemperature = [(NgtMenstrualAlgorithmsDayInput *)v7 wristTemperature];
      watchIdentifier = [wristTemperature watchIdentifier];
      v10 = [(NgtMenstrualAlgorithmsDayStreamProcessor *)self watchNumericIdentifierFromString:watchIdentifier];

      if (self->_julianDayOfLastInput.__engaged_)
      {
        val = self->_julianDayOfLastInput.var0.__val_;
        if (val >= [(NgtMenstrualAlgorithmsDayInput *)v7 julianDay])
        {
          break;
        }
      }

      self->_julianDayOfLastInput.var0.__val_ = [(NgtMenstrualAlgorithmsDayInput *)v7 julianDay];
      self->_julianDayOfLastInput.__engaged_ = 1;
      convert_day_input(v7, v10, v12);
      Nightingale::ngt_DayStreamProcessor::appendDay(self->_dayStreamProcessor.__ptr_, v12);
      if (v4 == ++v6)
      {
        v4 = [dayInputBuffer countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)beginPhase:(unsigned __int8)phase onJulianDay:(unsigned int)day
{
  ptr = self->_dayStreamProcessor.__ptr_;
  v6 = ngt_phase_to_algs_phase(phase);

  Nightingale::ngt_DayStreamProcessor::begin_phase(ptr, v6, day);
}

- (void)endPhase:(unsigned __int8)phase onJulianDay:(unsigned int)day
{
  ptr = self->_dayStreamProcessor.__ptr_;
  v6 = ngt_phase_to_algs_phase(phase);

  Nightingale::ngt_DayStreamProcessor::end_phase(ptr, v6, day);
}

- (unsigned)watchNumericIdentifierFromString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    watchIdentifiers = [(NgtMenstrualAlgorithmsDayStreamProcessor *)self watchIdentifiers];
    watchIdentifiers2 = [watchIdentifiers indexOfObject:stringCopy];

    if (watchIdentifiers2 == 0x7FFFFFFFFFFFFFFFLL)
    {
      watchIdentifiers2 = [(NgtMenstrualAlgorithmsDayStreamProcessor *)self watchIdentifiers];
      [watchIdentifiers2 addObject:stringCopy];

      watchIdentifiers3 = [(NgtMenstrualAlgorithmsDayStreamProcessor *)self watchIdentifiers];
      LOBYTE(watchIdentifiers2) = [watchIdentifiers3 count] - 1;
    }
  }

  else
  {
    LOBYTE(watchIdentifiers2) = 0;
  }

  return watchIdentifiers2;
}

- (id)analyzeWithMostRecentMenstrualFlowJulianDayUpdated:(unsigned int)updated error:(id *)error
{
  v6 = [(NgtMenstrualAlgorithmsDayStreamProcessor *)self dayInputBuffer:*&updated];
  v7 = [v6 count];

  if (v7)
  {
    [(NgtMenstrualAlgorithmsDayStreamProcessor *)self runDays];
    dayInputBuffer = [(NgtMenstrualAlgorithmsDayStreamProcessor *)self dayInputBuffer];
    [dayInputBuffer removeAllObjects];
  }

  v9 = objc_opt_new();
  v10 = updated & 0xFFFFFF00;
  if (updated <= 0)
  {
    v10 = 0;
  }

  Nightingale::ngt_DayStreamProcessor::analyze(self->_dayStreamProcessor.__ptr_, v10 & 0xFFFFFF00 | updated & ~(updated >> 31) | ((updated > 0) << 32), 1, &v115);
  [v9 setIsUserInactive:v137[141]];
  if (v137[136] == 1)
  {
    v11 = deviationAnalysis(v137);
    [v9 setDeviationAnalysis:v11];
  }

  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:0x4EC4EC4EC4EC4EC5 * ((v118 - __p) >> 3)];
  v13 = __p;
  v14 = v118;
  if (__p != v118)
  {
    do
    {
      if (*(v13 + 40) == 1)
      {
        v15 = objc_opt_new();
        [v15 setJulianDayOfWindowStart:*v13];
        if (*(v13 + 40) == 1)
        {
          [v15 setStartProbabilityMean:*(v13 + 1)];
          [v15 setStartProbabilityStdDev:*(v13 + 2)];
          [v15 setStartProbabilityLowRangeStart:*(v13 + 3)];
          [v15 setStartProbabilityLowRangeEnd:*(v13 + 4)];
        }

        if (*(v13 + 80) == 1)
        {
          [v15 setEndProbabilityMean:*(v13 + 6)];
          [v15 setEndProbabilityStdDev:*(v13 + 7)];
          [v15 setEndProbabilityLowRangeStart:*(v13 + 8)];
          [v15 setEndProbabilityLowRangeEnd:*(v13 + 9)];
        }

        [v15 setLowRange:{v13[22], v13[23]}];
        [v15 setDaysOffsetFromCalendarMethod:v13[24]];
        v16 = v13[25];
        if (v16 >= 4)
        {
          v17 = 3;
        }

        else
        {
          v17 = 3 - v16;
        }

        [v15 setPredictionPrimarySource:v17];
        [v12 addObject:v15];
      }

      v13 += 26;
    }

    while (v13 != v14);
  }

  [v9 setFertilityPredictions:v12];
  v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:0x4EC4EC4EC4EC4EC5 * ((v116 - v115) >> 3)];
  v19 = v116;
  if (v115 != v116)
  {
    v20 = v115 + 48;
    do
    {
      v21 = objc_opt_new();
      v22 = v20 - 48;
      [v21 setJulianDayOfWindowStart:*(v20 - 12)];
      if (*(v20 - 8) == 1)
      {
        [v21 setStartProbabilityMean:*(v20 - 5)];
        [v21 setStartProbabilityStdDev:*(v20 - 4)];
        [v21 setStartProbabilityLowRangeStart:*(v20 - 3)];
        [v21 setStartProbabilityLowRangeEnd:*(v20 - 2)];
      }

      if (v20[32] == 1)
      {
        [v21 setEndProbabilityMean:*v20];
        [v21 setEndProbabilityStdDev:*(v20 + 1)];
        [v21 setEndProbabilityLowRangeStart:*(v20 + 2)];
        [v21 setEndProbabilityLowRangeEnd:*(v20 + 3)];
      }

      [v21 setLowRange:{*(v20 + 10), *(v20 + 11)}];
      [v21 setDaysOffsetFromCalendarMethod:*(v20 + 12)];
      v23 = *(v20 + 13);
      if (v23 >= 4)
      {
        v24 = 3;
      }

      else
      {
        v24 = 3 - v23;
      }

      [v21 setPredictionPrimarySource:v24];
      [v18 addObject:v21];

      v20 += 104;
    }

    while (v22 + 104 != v19);
  }

  if ((v137[140] & 1) != 0 && [v18 count])
  {
    firstObject = [v18 firstObject];
    [firstObject setIsOngoingMenstruation:1];
  }

  [v9 setMenstruationPredictions:v18];
  v26 = objc_opt_new();
  [v9 setStats:v26];

  if (v120 == 1)
  {
    v27 = [MEMORY[0x277CCABB0] numberWithInt:v119];
    stats = [v9 stats];
    [stats setMedianCycleLength:v27];
  }

  if (v122 == 1)
  {
    v29 = [MEMORY[0x277CCABB0] numberWithInt:v121];
    stats2 = [v9 stats];
    [stats2 setMedianMenstruationLength:v29];
  }

  if (v128 == 1)
  {
    v31 = [MEMORY[0x277CCABB0] numberWithInt:v127];
    stats3 = [v9 stats];
    [stats3 setLowerCycleLengthPercentile:v31];
  }

  if (v124 == 1)
  {
    v33 = [MEMORY[0x277CCABB0] numberWithInt:v123];
    stats4 = [v9 stats];
    [stats4 setLowerMenstruationLengthPercentile:v33];
  }

  if (v130 == 1)
  {
    v35 = [MEMORY[0x277CCABB0] numberWithInt:v129];
    stats5 = [v9 stats];
    [stats5 setUpperCycleLengthPercentile:v35];
  }

  if (v126 == 1)
  {
    v37 = [MEMORY[0x277CCABB0] numberWithInt:v125];
    stats6 = [v9 stats];
    [stats6 setUpperMenstruationLengthPercentile:v37];
  }

  if (v132 == 1)
  {
    v39 = [MEMORY[0x277CCABB0] numberWithInt:v131];
    stats7 = [v9 stats];
    [stats7 setNumberOfCyclesFound:v39];
  }

  if (v134 == 1)
  {
    v41 = [MEMORY[0x277CCABB0] numberWithInt:v133];
    stats8 = [v9 stats];
    [stats8 setJulianDayOfFirstCycleStart:v41];
  }

  if (v136 == 1)
  {
    v43 = [MEMORY[0x277CCABB0] numberWithInt:v135];
    stats9 = [v9 stats];
    [stats9 setJulianDayOfLastCycleStart:v43];
  }

  if (v161 == 1)
  {
    v45 = [NgtMenstrualAlgorithmsTelemetry alloc];
    [v9 setTelemetry:v45];

    LODWORD(v46) = v138;
    v47 = [MEMORY[0x277CCABB0] numberWithFloat:v46];
    telemetry = [v9 telemetry];
    [telemetry setNumHistoricalCycles:v47];

    LODWORD(v49) = v139;
    v50 = [MEMORY[0x277CCABB0] numberWithFloat:v49];
    telemetry2 = [v9 telemetry];
    [telemetry2 setBaselineStdUncapped:v50];

    LODWORD(v52) = v140;
    v53 = [MEMORY[0x277CCABB0] numberWithFloat:v52];
    telemetry3 = [v9 telemetry];
    [telemetry3 setBaselineMean:v53];

    LODWORD(v55) = v141;
    v56 = [MEMORY[0x277CCABB0] numberWithFloat:v55];
    telemetry4 = [v9 telemetry];
    [telemetry4 setModel0Width:v56];

    LODWORD(v58) = v142;
    v59 = [MEMORY[0x277CCABB0] numberWithFloat:v58];
    telemetry5 = [v9 telemetry];
    [telemetry5 setDaysToModel0Drs:v59];

    LODWORD(v61) = v143;
    v62 = [MEMORY[0x277CCABB0] numberWithFloat:v61];
    telemetry6 = [v9 telemetry];
    [telemetry6 setModel1Width:v62];

    LODWORD(v64) = v144;
    v65 = [MEMORY[0x277CCABB0] numberWithFloat:v64];
    telemetry7 = [v9 telemetry];
    [telemetry7 setDaysToModel1Drs:v65];

    LODWORD(v67) = v145;
    v68 = [MEMORY[0x277CCABB0] numberWithFloat:v67];
    telemetry8 = [v9 telemetry];
    [telemetry8 setModel2Width:v68];

    LODWORD(v70) = v146;
    v71 = [MEMORY[0x277CCABB0] numberWithFloat:v70];
    telemetry9 = [v9 telemetry];
    [telemetry9 setDaysToModel2Drs:v71];

    LODWORD(v73) = v147;
    v74 = [MEMORY[0x277CCABB0] numberWithFloat:v73];
    telemetry10 = [v9 telemetry];
    [telemetry10 setAge:v74];

    LODWORD(v76) = v148;
    v77 = [MEMORY[0x277CCABB0] numberWithFloat:v76];
    telemetry11 = [v9 telemetry];
    [telemetry11 setSliceDayHrMean:v77];

    LODWORD(v79) = v149;
    v80 = [MEMORY[0x277CCABB0] numberWithFloat:v79];
    telemetry12 = [v9 telemetry];
    [telemetry12 setSliceDayHrStd:v80];

    LODWORD(v82) = v150;
    v83 = [MEMORY[0x277CCABB0] numberWithFloat:v82];
    telemetry13 = [v9 telemetry];
    [telemetry13 setSliceDayHrCount:v83];

    LODWORD(v85) = v151;
    v86 = [MEMORY[0x277CCABB0] numberWithFloat:v85];
    telemetry14 = [v9 telemetry];
    [telemetry14 setSliceNightHrMean:v86];

    LODWORD(v88) = v152;
    v89 = [MEMORY[0x277CCABB0] numberWithFloat:v88];
    telemetry15 = [v9 telemetry];
    [telemetry15 setSliceNightHrStd:v89];

    LODWORD(v91) = v153;
    v92 = [MEMORY[0x277CCABB0] numberWithFloat:v91];
    telemetry16 = [v9 telemetry];
    [telemetry16 setSliceNightHrCount:v92];

    LODWORD(v94) = v154;
    v95 = [MEMORY[0x277CCABB0] numberWithFloat:v94];
    telemetry17 = [v9 telemetry];
    [telemetry17 setDaysSinceLastPeriod:v95];

    LODWORD(v97) = v155;
    v98 = [MEMORY[0x277CCABB0] numberWithFloat:v97];
    telemetry18 = [v9 telemetry];
    [telemetry18 setNormalizedDaysSinceLastPeriod:v98];

    LODWORD(v100) = v156;
    v101 = [MEMORY[0x277CCABB0] numberWithFloat:v100];
    telemetry19 = [v9 telemetry];
    [telemetry19 setDaysSinceLastContraceptionEnd:v101];

    LODWORD(v103) = v157;
    v104 = [MEMORY[0x277CCABB0] numberWithFloat:v103];
    telemetry20 = [v9 telemetry];
    [telemetry20 setDaysSinceLastPregnancyEnd:v104];

    LODWORD(v106) = v158;
    v107 = [MEMORY[0x277CCABB0] numberWithFloat:v106];
    telemetry21 = [v9 telemetry];
    [telemetry21 setDaysSinceLastLactationEnd:v107];

    LODWORD(v109) = v159;
    v110 = [MEMORY[0x277CCABB0] numberWithFloat:v109];
    telemetry22 = [v9 telemetry];
    [telemetry22 setNumOutliers:v110];

    v112 = [MEMORY[0x277CCABB0] numberWithInt:v160];
    telemetry23 = [v9 telemetry];
    [telemetry23 setEnsembleSelectedModelIdx:v112];
  }

  if (__p)
  {
    v118 = __p;
    operator delete(__p);
  }

  if (v115)
  {
    v116 = v115;
    operator delete(v115);
  }

  return v9;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 16) = 0;
  *(self + 20) = 0;
  return self;
}

@end