@interface NgtMenstrualAlgorithmsDayStreamProcessor
- (NgtMenstrualAlgorithmsDayStreamProcessor)initWithConfig:(id)a3 mlConfig:(id)a4;
- (id).cxx_construct;
- (id)analyzeWithMostRecentMenstrualFlowJulianDayUpdated:(unsigned int)a3 error:(id *)a4;
- (unsigned)watchNumericIdentifierFromString:(id)a3;
- (void)appendDay:(id)a3;
- (void)beginPhase:(unsigned __int8)a3 onJulianDay:(unsigned int)a4;
- (void)endPhase:(unsigned __int8)a3 onJulianDay:(unsigned int)a4;
- (void)runDays;
@end

@implementation NgtMenstrualAlgorithmsDayStreamProcessor

- (NgtMenstrualAlgorithmsDayStreamProcessor)initWithConfig:(id)a3 mlConfig:(id)a4
{
  v111 = *MEMORY[0x277D85DE8];
  v73 = a3;
  v71 = a4;
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
    v8 = [v71 heartRateFwEnd10PctModelPath];
    v9 = v8;
    std::string::__assign_external(&v105, [v8 UTF8String]);

    v10 = [v71 heartRatePeriod10PctModelPath];
    v11 = v10;
    std::string::__assign_external(&v104[1], [v10 UTF8String]);

    v12 = [v71 wTmpFwEndLstmModelPath];
    v13 = v12;
    std::string::__assign_external(&v103[1], [v12 UTF8String]);

    v14 = [v71 wTmpFwEndRFModelPath];
    v15 = v14;
    std::string::__assign_external(v104, [v14 UTF8String]);

    v16 = [v71 wTmpPeriodLstmModelPath];
    v17 = v16;
    std::string::__assign_external(v103, [v16 UTF8String]);

    v81 = 0u;
    v79 = 0u;
    v80 = 0u;
    v78 = 0u;
    v18 = [v71 heartRatePeriodTFModelPaths];
    v19 = [v18 countByEnumeratingWithState:&v78 objects:v110 count:16];
    if (v19)
    {
      v20 = *v79;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v79 != v20)
          {
            objc_enumerationMutation(v18);
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

        v19 = [v18 countByEnumeratingWithState:&v78 objects:v110 count:16];
      }

      while (v19);
    }

    v33 = [v71 heartRatePeriodEnsembleModelPath];
    v34 = v33;
    std::string::__assign_external(&v108, [v33 UTF8String]);

    v35 = [v73 userReportedCycleLength];
    v36 = v35 == 0;

    if (!v36)
    {
      v37 = [v73 userReportedCycleLength];
      v38 = [v37 unsignedIntValue];
      if ((v83 & 1) == 0)
      {
        v83 = 1;
      }

      v82 = v38;
    }

    v39 = [v73 julianDayOfUserReportedCycleLength];
    v40 = v39 == 0;

    if (!v40)
    {
      v41 = [v73 julianDayOfUserReportedCycleLength];
      v42 = [v41 unsignedIntValue];
      if ((v87 & 1) == 0)
      {
        v87 = 1;
      }

      v86 = v42;
    }

    v43 = [v73 userReportedMenstruationLength];
    v44 = v43 == 0;

    if (!v44)
    {
      v45 = [v73 userReportedMenstruationLength];
      v46 = [v45 unsignedIntValue];
      if ((v85 & 1) == 0)
      {
        v85 = 1;
      }

      v84 = v46;
    }

    v47 = [v73 julianDayOfUserReportedMenstruationLength];
    v48 = v47 == 0;

    if (!v48)
    {
      v49 = [v73 julianDayOfUserReportedMenstruationLength];
      v50 = [v49 unsignedIntValue];
      if ((v89 & 1) == 0)
      {
        v89 = 1;
      }

      v88 = v50;
    }

    v51 = [v73 awakeSHRCountThreshold];
    v52 = v51 == 0;

    if (!v52)
    {
      v53 = [v73 awakeSHRCountThreshold];
      LODWORD(v102) = [v53 unsignedIntValue];
    }

    v54 = [v73 sleepSHRCountThreshold];
    v55 = v54 == 0;

    if (!v55)
    {
      v56 = [v73 sleepSHRCountThreshold];
      HIDWORD(v102) = [v56 unsignedIntValue];
    }

    v57 = [v73 birthDateComponents];
    v58 = v57 == 0;

    if (!v58)
    {
      v60 = [v73 birthDateComponents];
      v61 = [v60 date];
      [v61 timeIntervalSinceNow];
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

    v66 = [v73 deviationInput];
    v67 = v66 == 0;

    if (!v67)
    {
      v68 = [v73 deviationInput];
      deviationInput(v68, v74);
      v97 = *v74;
      v98 = *&v74[16];
      v99 = *&v74[32];
      v100 = v75;
      if ((v101 & 1) == 0)
      {
        v101 = 1;
      }
    }

    v69 = [v73 todayAsJulianDay];
    if ((v91 & 1) == 0)
    {
      v91 = 1;
    }

    v90 = v69;
    operator new();
  }

  return 0;
}

- (void)appendDay:(id)a3
{
  v8 = a3;
  v4 = [(NgtMenstrualAlgorithmsDayStreamProcessor *)self dayInputBuffer];
  [v4 addObject:v8];

  v5 = [(NgtMenstrualAlgorithmsDayStreamProcessor *)self dayInputBuffer];
  v6 = [v5 count];

  if (v6 == 100)
  {
    [(NgtMenstrualAlgorithmsDayStreamProcessor *)self runDays];
    v7 = [(NgtMenstrualAlgorithmsDayStreamProcessor *)self dayInputBuffer];
    [v7 removeAllObjects];
  }
}

- (void)runDays
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(NgtMenstrualAlgorithmsDayStreamProcessor *)self dayInputBuffer];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v14 != v5)
      {
        objc_enumerationMutation(v3);
      }

      v7 = *(*(&v13 + 1) + 8 * v6);
      v8 = [(NgtMenstrualAlgorithmsDayInput *)v7 wristTemperature];
      v9 = [v8 watchIdentifier];
      v10 = [(NgtMenstrualAlgorithmsDayStreamProcessor *)self watchNumericIdentifierFromString:v9];

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
        v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)beginPhase:(unsigned __int8)a3 onJulianDay:(unsigned int)a4
{
  ptr = self->_dayStreamProcessor.__ptr_;
  v6 = ngt_phase_to_algs_phase(a3);

  Nightingale::ngt_DayStreamProcessor::begin_phase(ptr, v6, a4);
}

- (void)endPhase:(unsigned __int8)a3 onJulianDay:(unsigned int)a4
{
  ptr = self->_dayStreamProcessor.__ptr_;
  v6 = ngt_phase_to_algs_phase(a3);

  Nightingale::ngt_DayStreamProcessor::end_phase(ptr, v6, a4);
}

- (unsigned)watchNumericIdentifierFromString:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NgtMenstrualAlgorithmsDayStreamProcessor *)self watchIdentifiers];
    v6 = [v5 indexOfObject:v4];

    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [(NgtMenstrualAlgorithmsDayStreamProcessor *)self watchIdentifiers];
      [v6 addObject:v4];

      v7 = [(NgtMenstrualAlgorithmsDayStreamProcessor *)self watchIdentifiers];
      LOBYTE(v6) = [v7 count] - 1;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)analyzeWithMostRecentMenstrualFlowJulianDayUpdated:(unsigned int)a3 error:(id *)a4
{
  v6 = [(NgtMenstrualAlgorithmsDayStreamProcessor *)self dayInputBuffer:*&a3];
  v7 = [v6 count];

  if (v7)
  {
    [(NgtMenstrualAlgorithmsDayStreamProcessor *)self runDays];
    v8 = [(NgtMenstrualAlgorithmsDayStreamProcessor *)self dayInputBuffer];
    [v8 removeAllObjects];
  }

  v9 = objc_opt_new();
  v10 = a3 & 0xFFFFFF00;
  if (a3 <= 0)
  {
    v10 = 0;
  }

  Nightingale::ngt_DayStreamProcessor::analyze(self->_dayStreamProcessor.__ptr_, v10 & 0xFFFFFF00 | a3 & ~(a3 >> 31) | ((a3 > 0) << 32), 1, &v115);
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
    v25 = [v18 firstObject];
    [v25 setIsOngoingMenstruation:1];
  }

  [v9 setMenstruationPredictions:v18];
  v26 = objc_opt_new();
  [v9 setStats:v26];

  if (v120 == 1)
  {
    v27 = [MEMORY[0x277CCABB0] numberWithInt:v119];
    v28 = [v9 stats];
    [v28 setMedianCycleLength:v27];
  }

  if (v122 == 1)
  {
    v29 = [MEMORY[0x277CCABB0] numberWithInt:v121];
    v30 = [v9 stats];
    [v30 setMedianMenstruationLength:v29];
  }

  if (v128 == 1)
  {
    v31 = [MEMORY[0x277CCABB0] numberWithInt:v127];
    v32 = [v9 stats];
    [v32 setLowerCycleLengthPercentile:v31];
  }

  if (v124 == 1)
  {
    v33 = [MEMORY[0x277CCABB0] numberWithInt:v123];
    v34 = [v9 stats];
    [v34 setLowerMenstruationLengthPercentile:v33];
  }

  if (v130 == 1)
  {
    v35 = [MEMORY[0x277CCABB0] numberWithInt:v129];
    v36 = [v9 stats];
    [v36 setUpperCycleLengthPercentile:v35];
  }

  if (v126 == 1)
  {
    v37 = [MEMORY[0x277CCABB0] numberWithInt:v125];
    v38 = [v9 stats];
    [v38 setUpperMenstruationLengthPercentile:v37];
  }

  if (v132 == 1)
  {
    v39 = [MEMORY[0x277CCABB0] numberWithInt:v131];
    v40 = [v9 stats];
    [v40 setNumberOfCyclesFound:v39];
  }

  if (v134 == 1)
  {
    v41 = [MEMORY[0x277CCABB0] numberWithInt:v133];
    v42 = [v9 stats];
    [v42 setJulianDayOfFirstCycleStart:v41];
  }

  if (v136 == 1)
  {
    v43 = [MEMORY[0x277CCABB0] numberWithInt:v135];
    v44 = [v9 stats];
    [v44 setJulianDayOfLastCycleStart:v43];
  }

  if (v161 == 1)
  {
    v45 = [NgtMenstrualAlgorithmsTelemetry alloc];
    [v9 setTelemetry:v45];

    LODWORD(v46) = v138;
    v47 = [MEMORY[0x277CCABB0] numberWithFloat:v46];
    v48 = [v9 telemetry];
    [v48 setNumHistoricalCycles:v47];

    LODWORD(v49) = v139;
    v50 = [MEMORY[0x277CCABB0] numberWithFloat:v49];
    v51 = [v9 telemetry];
    [v51 setBaselineStdUncapped:v50];

    LODWORD(v52) = v140;
    v53 = [MEMORY[0x277CCABB0] numberWithFloat:v52];
    v54 = [v9 telemetry];
    [v54 setBaselineMean:v53];

    LODWORD(v55) = v141;
    v56 = [MEMORY[0x277CCABB0] numberWithFloat:v55];
    v57 = [v9 telemetry];
    [v57 setModel0Width:v56];

    LODWORD(v58) = v142;
    v59 = [MEMORY[0x277CCABB0] numberWithFloat:v58];
    v60 = [v9 telemetry];
    [v60 setDaysToModel0Drs:v59];

    LODWORD(v61) = v143;
    v62 = [MEMORY[0x277CCABB0] numberWithFloat:v61];
    v63 = [v9 telemetry];
    [v63 setModel1Width:v62];

    LODWORD(v64) = v144;
    v65 = [MEMORY[0x277CCABB0] numberWithFloat:v64];
    v66 = [v9 telemetry];
    [v66 setDaysToModel1Drs:v65];

    LODWORD(v67) = v145;
    v68 = [MEMORY[0x277CCABB0] numberWithFloat:v67];
    v69 = [v9 telemetry];
    [v69 setModel2Width:v68];

    LODWORD(v70) = v146;
    v71 = [MEMORY[0x277CCABB0] numberWithFloat:v70];
    v72 = [v9 telemetry];
    [v72 setDaysToModel2Drs:v71];

    LODWORD(v73) = v147;
    v74 = [MEMORY[0x277CCABB0] numberWithFloat:v73];
    v75 = [v9 telemetry];
    [v75 setAge:v74];

    LODWORD(v76) = v148;
    v77 = [MEMORY[0x277CCABB0] numberWithFloat:v76];
    v78 = [v9 telemetry];
    [v78 setSliceDayHrMean:v77];

    LODWORD(v79) = v149;
    v80 = [MEMORY[0x277CCABB0] numberWithFloat:v79];
    v81 = [v9 telemetry];
    [v81 setSliceDayHrStd:v80];

    LODWORD(v82) = v150;
    v83 = [MEMORY[0x277CCABB0] numberWithFloat:v82];
    v84 = [v9 telemetry];
    [v84 setSliceDayHrCount:v83];

    LODWORD(v85) = v151;
    v86 = [MEMORY[0x277CCABB0] numberWithFloat:v85];
    v87 = [v9 telemetry];
    [v87 setSliceNightHrMean:v86];

    LODWORD(v88) = v152;
    v89 = [MEMORY[0x277CCABB0] numberWithFloat:v88];
    v90 = [v9 telemetry];
    [v90 setSliceNightHrStd:v89];

    LODWORD(v91) = v153;
    v92 = [MEMORY[0x277CCABB0] numberWithFloat:v91];
    v93 = [v9 telemetry];
    [v93 setSliceNightHrCount:v92];

    LODWORD(v94) = v154;
    v95 = [MEMORY[0x277CCABB0] numberWithFloat:v94];
    v96 = [v9 telemetry];
    [v96 setDaysSinceLastPeriod:v95];

    LODWORD(v97) = v155;
    v98 = [MEMORY[0x277CCABB0] numberWithFloat:v97];
    v99 = [v9 telemetry];
    [v99 setNormalizedDaysSinceLastPeriod:v98];

    LODWORD(v100) = v156;
    v101 = [MEMORY[0x277CCABB0] numberWithFloat:v100];
    v102 = [v9 telemetry];
    [v102 setDaysSinceLastContraceptionEnd:v101];

    LODWORD(v103) = v157;
    v104 = [MEMORY[0x277CCABB0] numberWithFloat:v103];
    v105 = [v9 telemetry];
    [v105 setDaysSinceLastPregnancyEnd:v104];

    LODWORD(v106) = v158;
    v107 = [MEMORY[0x277CCABB0] numberWithFloat:v106];
    v108 = [v9 telemetry];
    [v108 setDaysSinceLastLactationEnd:v107];

    LODWORD(v109) = v159;
    v110 = [MEMORY[0x277CCABB0] numberWithFloat:v109];
    v111 = [v9 telemetry];
    [v111 setNumOutliers:v110];

    v112 = [MEMORY[0x277CCABB0] numberWithInt:v160];
    v113 = [v9 telemetry];
    [v113 setEnsembleSelectedModelIdx:v112];
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