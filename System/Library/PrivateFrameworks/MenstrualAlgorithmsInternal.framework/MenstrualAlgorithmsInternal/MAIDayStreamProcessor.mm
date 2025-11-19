@interface MAIDayStreamProcessor
- (MAIDayStreamProcessor)initWithConfig:(id)a3;
- (MAIDayStreamProcessorOutput)analyzeWithMostRecentMenstrualFlowJulianDayUpdated:(SEL)a3;
- (id).cxx_construct;
- (unsigned)watchNumericIdentifierFromString:(id)a3;
- (void)appendDay:(id)a3;
@end

@implementation MAIDayStreamProcessor

- (MAIDayStreamProcessor)initWithConfig:(id)a3
{
  v4 = a3;
  v70.receiver = self;
  v70.super_class = MAIDayStreamProcessor;
  v5 = [(MAIDayStreamProcessor *)&v70 init];
  if (v5)
  {
    v6 = objc_opt_new();
    watchIdentifiers = v5->_watchIdentifiers;
    v5->_watchIdentifiers = v6;

    LOBYTE(v34) = 0;
    v35 = 0;
    LOBYTE(v36) = 0;
    v37 = 0;
    LOBYTE(v38) = 0;
    v39 = 0;
    LOBYTE(v40) = 0;
    v41 = 0;
    LOBYTE(v42) = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    LOBYTE(v46) = 0;
    v47 = 0;
    v53 = 0;
    v48 = 0;
    LOBYTE(v49) = 0;
    v54 = 0x1800000018;
    v55 = 1;
    LOBYTE(v56) = 0;
    v57 = 0;
    LOBYTE(v58) = 0;
    v59 = 0;
    LOBYTE(v60) = 0;
    v61 = 0;
    LOBYTE(v62) = 0;
    v63 = 0;
    LOBYTE(v64) = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    LOBYTE(__p) = 0;
    v69 = 0;
    v8 = [v4 userReportedCycleLength];

    if (v8)
    {
      v9 = [v4 userReportedCycleLength];
      v35 = !v35;
      v34 = [v9 unsignedIntValue];
    }

    v10 = [v4 julianDayOfUserReportedCycleLength];

    if (v10)
    {
      v11 = [v4 julianDayOfUserReportedCycleLength];
      v12 = [v11 unsignedIntValue];
      v39 = 1;
      v38 = v12;
    }

    v13 = [v4 userReportedMenstruationLength];

    if (v13)
    {
      v14 = [v4 userReportedMenstruationLength];
      v15 = [v14 unsignedIntValue];
      v37 = 1;
      v36 = v15;
    }

    v16 = [v4 julianDayOfUserReportedMenstruationLength];

    if (v16)
    {
      v17 = [v4 julianDayOfUserReportedMenstruationLength];
      v18 = [v17 unsignedIntValue];
      v41 = 1;
      v40 = v18;
    }

    v19 = [v4 birthDateComponents];

    if (v19)
    {
      v20 = [v4 birthDateComponents];
      v21 = [v20 date];
      [v21 timeIntervalSinceNow];
      v23 = v22 / -31557600.0;

      if (v23 >= 1.0 && v23 <= 200.0)
      {
        v26 = v23;
        v46 = v26;
        v47 = 1;
        v25 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
        [(MAIDayStreamProcessor *)v5 setUserAgeInYears:v25];
      }

      else
      {
        v25 = ha_get_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          [(MAIDayStreamProcessor *)v25 initWithConfig:v23];
        }
      }
    }

    v27 = [v4 deviationInput];

    if (v27)
    {
      v28 = [v4 deviationInput];
      HealthAlgorithms::deviationInput(v28, v33);
      v49 = v33[0];
      v50 = v33[1];
      v51 = v33[2];
      v52 = v33[3];
      if ((v53 & 1) == 0)
      {
        v53 = 1;
      }
    }

    v29 = [v4 todayAsJulianDay];
    if ((v43 & 1) == 0)
    {
      v43 = 1;
    }

    v42 = v29;
    if (_os_feature_enabled_impl())
    {
      v30 = ha_get_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v33[0]) = 0;
        _os_log_impl(&dword_2588F5000, v30, OS_LOG_TYPE_DEFAULT, "MenstrualAlgorithms/dayStreamUpdate is enabled", v33, 2u);
      }

      v31 = 1;
    }

    else
    {
      v30 = ha_get_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v33[0]) = 0;
        _os_log_impl(&dword_2588F5000, v30, OS_LOG_TYPE_DEFAULT, "MenstrualAlgorithms/dayStreamUpdate is disabled", v33, 2u);
      }

      v31 = 0;
    }

    v55 = v31;
    operator new();
  }

  return 0;
}

- (void)appendDay:(id)a3
{
  v4 = a3;
  v5 = [v4 wristTemperature];
  v6 = [v5 watchIdentifier];
  v7 = [(MAIDayStreamProcessor *)self watchNumericIdentifierFromString:v6];

  if (self->_julianDayOfLastInput.__engaged_ && (val = self->_julianDayOfLastInput.var0.__val_, val >= [v4 julianDay]))
  {
    v23 = ha_get_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      [MAIHistoricalAnalyzer appendDay:v23];
    }
  }

  else
  {
    self->_julianDayOfLastInput.var0.__val_ = [v4 julianDay];
    self->_julianDayOfLastInput.__engaged_ = 1;
    v9 = v4;
    v27 = 0;
    LOBYTE(v28) = 0;
    v29 = 0;
    LOBYTE(v30) = 0;
    v31 = 0;
    LOBYTE(v32) = 0;
    v33 = 0;
    LOBYTE(v34) = 0;
    v36 = 0;
    v25 = 0;
    LOBYTE(v26) = 0;
    LODWORD(v24) = [v9 julianDay];
    DWORD1(v24) = [v9 flow];
    BYTE8(v24) = [v9 spotting];
    HIDWORD(v24) = [v9 ovulationTestResult];
    v10 = [v9 sedentaryHeartRateStatistics];
    v11 = [v10 lowerPercentile];

    if (v11)
    {
      v12 = [v10 lowerPercentile];
      [v12 floatValue];
      v26 = v13;
      v27 = 1;

      v31 = 1;
      v30 = [v10 sampleCount];
    }

    else
    {
      v30 = 0;
      v31 = 1;
    }

    v14 = [v9 sleepHeartRateStatistics];
    v15 = [v14 lowerPercentile];

    if (v15)
    {
      v16 = [v14 lowerPercentile];
      [v16 floatValue];
      v28 = v17;
      v29 = 1;

      v33 = 1;
      v32 = [v14 sampleCount];
    }

    else
    {
      v32 = 0;
      v33 = 1;
    }

    v18 = [v9 wristTemperature];

    if (v18)
    {
      v19 = [v9 wristTemperature];
      [v19 temperatureCelsius];
      v21 = v20;

      v22 = v21;
      v34 = v7;
      v35 = v22;
      v36 = 1;
    }

    Nightingale::ngt_DayStreamProcessor::appendDay(self->_dayStreamProcessor.__ptr_, &v24);
  }
}

- (unsigned)watchNumericIdentifierFromString:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(MAIDayStreamProcessor *)self watchIdentifiers];
    v6 = [v5 indexOfObject:v4];

    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [(MAIDayStreamProcessor *)self watchIdentifiers];
      [v6 addObject:v4];

      v7 = [(MAIDayStreamProcessor *)self watchIdentifiers];
      LOBYTE(v6) = [v7 count] - 1;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (MAIDayStreamProcessorOutput)analyzeWithMostRecentMenstrualFlowJulianDayUpdated:(SEL)a3
{
  v161[35] = *MEMORY[0x277D85DE8];
  v7 = objc_opt_new();
  retstr->var1 = 0;
  p_var1 = &retstr->var1;
  retstr->var2 = 0;
  v8 = v7;
  v94 = self;
  v95 = retstr;
  retstr->var0 = v8;
  v9 = a4 & 0xFFFFFF00;
  if (a4 <= 0)
  {
    v9 = 0;
  }

  Nightingale::ngt_DayStreamProcessor::analyze(self->_dayStreamProcessor.__ptr_, v9 & 0xFFFFFF00 | a4 & ~(a4 >> 31) | ((a4 > 0) << 32), 1, &v97);
  [v8 setIsUserInactive:v122];
  if (v120 == 1)
  {
    v10 = HealthAlgorithms::deviationAnalysis(v119);
    [v8 setDeviationAnalysis:v10];
  }

  if (v159 == 1)
  {
    v96 = retrieve_id_for_core_analytics();
    v160[0] = @"awakeSHRMissingRate";
    LODWORD(v11) = v138;
    v92 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
    v161[0] = v92;
    v160[1] = @"calFWErr";
    if (v127)
    {
      v12 = v126;
    }

    else
    {
      v12 = 1000;
    }

    v91 = [MEMORY[0x277CCABB0] numberWithInt:v12];
    v161[1] = v91;
    v160[2] = @"currentCycleFactor";
    v90 = [MEMORY[0x277CCABB0] numberWithInt:v132];
    v161[2] = v90;
    v160[3] = @"daysBetweenConfirmedOvulationAndNotificationDay";
    v89 = [MEMORY[0x277CCABB0] numberWithInt:v156];
    v161[3] = v89;
    v160[4] = @"daysPassedEPAvailability";
    v88 = [MEMORY[0x277CCABB0] numberWithInt:v133];
    v161[4] = v88;
    v160[5] = @"daysWithAwakeSHRInPast45Days";
    v87 = [MEMORY[0x277CCABB0] numberWithInt:v149];
    v161[5] = v87;
    v160[6] = @"daysWithSleepSHRInPast45Days";
    v86 = [MEMORY[0x277CCABB0] numberWithInt:v150];
    v161[6] = v86;
    v160[7] = @"daysWithWristTempInPast12Days";
    v85 = [MEMORY[0x277CCABB0] numberWithInt:v134];
    v161[7] = v85;
    v160[8] = @"daysWithWristTempInPast19Days";
    v84 = [MEMORY[0x277CCABB0] numberWithInt:v135];
    v161[8] = v84;
    v160[9] = @"daysWithWristTempInPast45Days";
    v83 = [MEMORY[0x277CCABB0] numberWithInt:v136];
    v161[9] = v83;
    v160[10] = @"deltaBetweenTodayAndCalOvulation";
    v82 = [MEMORY[0x277CCABB0] numberWithInt:v131];
    v161[10] = v82;
    v160[11] = @"dlFWErr";
    if (v125)
    {
      v13 = v124;
    }

    else
    {
      v13 = 1000;
    }

    v81 = [MEMORY[0x277CCABB0] numberWithInt:v13];
    v161[11] = v81;
    v160[12] = @"fertileWindowPeriodUpdateCombination";
    v80 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v137];
    v161[12] = v80;
    v160[13] = @"hasMultipleWatchWithKali";
    v79 = [MEMORY[0x277CCABB0] numberWithBool:v129];
    v161[13] = v79;
    v160[14] = @"isOnCycleFactors";
    v78 = [MEMORY[0x277CCABB0] numberWithBool:v128];
    v161[14] = v78;
    v160[15] = @"isOngoingMenstruation";
    v77 = [MEMORY[0x277CCABB0] numberWithBool:v123];
    v161[15] = v77;
    v160[16] = @"kaliDay2DayNoiseAnchoredByToday";
    v76 = [MEMORY[0x277CCABB0] numberWithInt:v155];
    v161[16] = v76;
    v160[17] = @"kaliMeetsDLLSTMAvailability";
    v75 = [MEMORY[0x277CCABB0] numberWithBool:v153];
    v161[17] = v75;
    v160[18] = @"kaliMeetsDLRFAvailability";
    v74 = [MEMORY[0x277CCABB0] numberWithBool:v152];
    v161[18] = v74;
    v160[19] = @"kaliMeetsExpeditedPathAvailability";
    v73 = [MEMORY[0x277CCABB0] numberWithBool:v151];
    v161[19] = v73;
    v160[20] = @"kaliSignalAtOvulationEstimate";
    v72 = [MEMORY[0x277CCABB0] numberWithInt:v154];
    v161[20] = v72;
    v160[21] = @"ovulationConfirmationMethod";
    v71 = [MEMORY[0x277CCABB0] numberWithInt:v157];
    v161[21] = v71;
    v160[22] = @"ovulationConfirmationNoUpdateReason";
    v70 = [MEMORY[0x277CCABB0] numberWithInt:v158];
    v161[22] = v70;
    v160[23] = @"percentile30AwakeSHRCountOver45Days";
    v69 = [MEMORY[0x277CCABB0] numberWithInt:v141];
    v161[23] = v69;
    v160[24] = @"percentile50AwakeSHRCountOver45Days";
    v68 = [MEMORY[0x277CCABB0] numberWithInt:v139];
    v161[24] = v68;
    v160[25] = @"percentile30NightSHRCountOver45Days";
    v14 = [MEMORY[0x277CCABB0] numberWithInt:v142];
    v161[25] = v14;
    v160[26] = @"percentile50NightSHRCountOver45Days";
    v15 = [MEMORY[0x277CCABB0] numberWithInt:v140];
    v161[26] = v15;
    v160[27] = @"periodPredictionMethod";
    v16 = [MEMORY[0x277CCABB0] numberWithInt:v130];
    v161[27] = v16;
    v161[28] = v96;
    v160[28] = @"pseudoDeviceID";
    v160[29] = @"ratioAwakeSedentaryHeartRateCountMoreThan12";
    LODWORD(v17) = v143;
    v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
    v161[29] = v18;
    v160[30] = @"ratioAwakeSedentaryHeartRateCountMoreThan18";
    LODWORD(v19) = v144;
    v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
    v161[30] = v20;
    v160[31] = @"ratioAwakeSedentaryHeartRateCountMoreThan24";
    LODWORD(v21) = v145;
    v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
    v161[31] = v22;
    v160[32] = @"ratioSleepSedentaryHeartRateCountMoreThan12";
    LODWORD(v23) = v146;
    v24 = [MEMORY[0x277CCABB0] numberWithFloat:v23];
    v161[32] = v24;
    v160[33] = @"ratioSleepSedentaryHeartRateCountMoreThan18";
    LODWORD(v25) = v147;
    v26 = [MEMORY[0x277CCABB0] numberWithFloat:v25];
    v161[33] = v26;
    v160[34] = @"ratioSleepSedentaryHeartRateCountMoreThan24";
    LODWORD(v27) = v148;
    v28 = [MEMORY[0x277CCABB0] numberWithFloat:v27];
    v161[34] = v28;
    v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v161 forKeys:v160 count:35];

    *p_var1 = v67;
  }

  else
  {
    v29 = ha_get_log();
    v96 = v29;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [MAIDayStreamProcessor analyzeWithMostRecentMenstrualFlowJulianDayUpdated:v29];
    }
  }

  if (v120 == 1)
  {
    v30 = retrieve_id_for_core_analytics();
    v31 = v121;
    v32 = [(MAIDayStreamProcessor *)v94 userAgeInYears];
    v95->var2 = HealthAlgorithms::deviationAnalysisHIDCoreAnalytics(v119, v30, v31, v32);
  }

  v33 = [MEMORY[0x277CBEB18] arrayWithCapacity:{0x4EC4EC4EC4EC4EC5 * ((v100 - __p) >> 3), v67}];
  v34 = __p;
  v35 = v100;
  if (__p != v100)
  {
    do
    {
      if (*(v34 + 40) == 1)
      {
        v36 = objc_opt_new();
        [v36 setJulianDayOfWindowStart:*v34];
        if (*(v34 + 40) == 1)
        {
          [v36 setStartProbabilityMean:*(v34 + 1)];
          [v36 setStartProbabilityStdDev:*(v34 + 2)];
        }

        if (*(v34 + 80) == 1)
        {
          [v36 setEndProbabilityMean:*(v34 + 6)];
          [v36 setEndProbabilityStdDev:*(v34 + 7)];
        }

        [v36 setLowRange:{v34[22], v34[23]}];
        [v36 setDaysOffsetFromCalendarMethod:v34[24]];
        v37 = v34[25];
        if (v37 >= 4)
        {
          v38 = 3;
        }

        else
        {
          v38 = 3 - v37;
        }

        [v36 setPredictionPrimarySource:v38];
        [v33 addObject:v36];
      }

      v34 += 26;
    }

    while (v34 != v35);
  }

  [v8 setFertilityPredictions:v33];
  v39 = [MEMORY[0x277CBEB18] arrayWithCapacity:0x4EC4EC4EC4EC4EC5 * ((v98 - v97) >> 3)];
  v40 = v97;
  v41 = v98;
  if (v97 != v98)
  {
    do
    {
      v42 = objc_opt_new();
      [v42 setJulianDayOfWindowStart:*v40];
      if (*(v40 + 40) == 1)
      {
        [v42 setStartProbabilityMean:*(v40 + 1)];
        [v42 setStartProbabilityStdDev:*(v40 + 2)];
      }

      if (*(v40 + 80) == 1)
      {
        [v42 setEndProbabilityMean:*(v40 + 6)];
        [v42 setEndProbabilityStdDev:*(v40 + 7)];
      }

      [v42 setLowRange:{v40[22], v40[23]}];
      [v42 setDaysOffsetFromCalendarMethod:v40[24]];
      v43 = v40[25];
      if (v43 >= 4)
      {
        v44 = 3;
      }

      else
      {
        v44 = 3 - v43;
      }

      [v42 setPredictionPrimarySource:v44];
      [v39 addObject:v42];

      v40 += 26;
    }

    while (v40 != v41);
  }

  if ((v121 & 1) != 0 && [v39 count])
  {
    v45 = [v39 firstObject];
    [v45 setIsOngoingMenstruation:1];
  }

  [v8 setMenstruationPredictions:v39];
  v46 = objc_opt_new();
  [v8 setStats:v46];

  if (v102 == 1)
  {
    v47 = [MEMORY[0x277CCABB0] numberWithInt:v101];
    v48 = [v8 stats];
    [v48 setMedianCycleLength:v47];
  }

  if (v104 == 1)
  {
    v49 = [MEMORY[0x277CCABB0] numberWithInt:v103];
    v50 = [v8 stats];
    [v50 setMedianMenstruationLength:v49];
  }

  if (v110 == 1)
  {
    v51 = [MEMORY[0x277CCABB0] numberWithInt:v109];
    v52 = [v8 stats];
    [v52 setLowerCycleLengthPercentile:v51];
  }

  if (v106 == 1)
  {
    v53 = [MEMORY[0x277CCABB0] numberWithInt:v105];
    v54 = [v8 stats];
    [v54 setLowerMenstruationLengthPercentile:v53];
  }

  if (v112 == 1)
  {
    v55 = [MEMORY[0x277CCABB0] numberWithInt:v111];
    v56 = [v8 stats];
    [v56 setUpperCycleLengthPercentile:v55];
  }

  if (v108 == 1)
  {
    v57 = [MEMORY[0x277CCABB0] numberWithInt:v107];
    v58 = [v8 stats];
    [v58 setUpperMenstruationLengthPercentile:v57];
  }

  if (v114 == 1)
  {
    v59 = [MEMORY[0x277CCABB0] numberWithInt:v113];
    v60 = [v8 stats];
    [v60 setNumberOfCyclesFound:v59];
  }

  if (v116 == 1)
  {
    v61 = [MEMORY[0x277CCABB0] numberWithInt:v115];
    v62 = [v8 stats];
    [v62 setJulianDayOfFirstCycleStart:v61];
  }

  if (v118 == 1)
  {
    v63 = [MEMORY[0x277CCABB0] numberWithInt:v117];
    v64 = [v8 stats];
    [v64 setJulianDayOfLastCycleStart:v63];
  }

  if (__p)
  {
    v100 = __p;
    operator delete(__p);
  }

  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

  v66 = *MEMORY[0x277D85DE8];
  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 16) = 0;
  *(self + 20) = 0;
  return self;
}

- (void)initWithConfig:(os_log_t)log .cold.1(os_log_t log, double a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a2;
  _os_log_fault_impl(&dword_2588F5000, log, OS_LOG_TYPE_FAULT, "age of %f years doesn't make sense: ignoring it", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end