@interface MAIHistoricalAnalyzer
- (MAIHistoricalAnalyzer)init;
- (MAIHistoricalAnalyzerOutput)analyze;
- (id).cxx_construct;
- (id)phaseStringFromNumber:(id)a3;
- (unsigned)watchNumericIdentifierFromString:(id)a3;
- (void)appendDay:(id)a3;
@end

@implementation MAIHistoricalAnalyzer

- (MAIHistoricalAnalyzer)init
{
  v6.receiver = self;
  v6.super_class = MAIHistoricalAnalyzer;
  v2 = [(MAIHistoricalAnalyzer *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    watchIdentifiers = v2->_watchIdentifiers;
    v2->_watchIdentifiers = v3;

    operator new();
  }

  return 0;
}

- (void)appendDay:(id)a3
{
  v4 = a3;
  v5 = [v4 wristTemperature];
  v6 = [v5 watchIdentifier];
  v7 = [(MAIHistoricalAnalyzer *)self watchNumericIdentifierFromString:v6];

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

    Nightingale::ngt_HistoricalAnalyzer::appendDay(self->_historicalAnalyzer.__ptr_, &v24);
  }
}

- (unsigned)watchNumericIdentifierFromString:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(MAIHistoricalAnalyzer *)self watchIdentifiers];
    v6 = [v5 indexOfObject:v4];

    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [(MAIHistoricalAnalyzer *)self watchIdentifiers];
      [v6 addObject:v4];

      v7 = [(MAIHistoricalAnalyzer *)self watchIdentifiers];
      LOBYTE(v6) = [v7 count] - 1;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)phaseStringFromNumber:(id)a3
{
  v9[9] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v8[0] = &unk_2869C9C58;
    v8[1] = &unk_2869C9C70;
    v9[0] = @"Pregnancy";
    v9[1] = @"Lactation";
    v8[2] = &unk_2869C9C88;
    v8[3] = &unk_2869C9CA0;
    v9[2] = @"ContraceptiveImplant";
    v9[3] = @"ContraceptiveInjection";
    v8[4] = &unk_2869C9CB8;
    v8[5] = &unk_2869C9CD0;
    v9[4] = @"ContraceptiveIntrauterineDevice";
    v9[5] = @"ContraceptiveIntravaginalRing";
    v8[6] = &unk_2869C9CE8;
    v8[7] = &unk_2869C9D00;
    v9[6] = @"ContraceptiveOral";
    v9[7] = @"ContraceptivePatch";
    v8[8] = &unk_2869C9D18;
    v9[8] = @"ContraceptiveUnspecified";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:9];
    v5 = [v4 objectForKeyedSubscript:v3];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (MAIHistoricalAnalyzerOutput)analyze
{
  v172 = *MEMORY[0x277D85DE8];
  Nightingale::ngt_HistoricalAnalyzer::analyze(self->_historicalAnalyzer.__ptr_, 1, &v72);
  if (v122 == 1)
  {
    v123[0] = @"countEligibleCycles";
    v70 = [MEMORY[0x277CCABB0] numberWithInt:v112];
    *buf = v70;
    v123[1] = @"daysHormonalContraceptionEndLoggedBeforeCycleStartMax";
    v69 = [MEMORY[0x277CCABB0] numberWithInt:v111];
    v125 = v69;
    v123[2] = @"daysHormonalContraceptionEndLoggedBeforeCycleStartMedian";
    v68 = [MEMORY[0x277CCABB0] numberWithInt:v109];
    v126 = v68;
    v123[3] = @"daysHormonalContraceptionEndLoggedBeforeCycleStartMin";
    v67 = [MEMORY[0x277CCABB0] numberWithInt:v110];
    v127 = v67;
    v123[4] = @"daysHormonalContraceptionStartLoggedAfterCycleStartMax";
    v66 = [MEMORY[0x277CCABB0] numberWithInt:v108];
    v128 = v66;
    v123[5] = @"daysHormonalContraceptionStartLoggedAfterCycleStartMedian";
    v65 = [MEMORY[0x277CCABB0] numberWithInt:v106];
    v129 = v65;
    v123[6] = @"daysHormonalContraceptionStartLoggedAfterCycleStartMin";
    v64 = [MEMORY[0x277CCABB0] numberWithInt:v107];
    v130 = v64;
    v123[7] = @"daysPregnancyEndLoggedBeforeCycleStartMax";
    v63 = [MEMORY[0x277CCABB0] numberWithInt:v105];
    v131 = v63;
    v123[8] = @"daysPregnancyEndLoggedBeforeCycleStartMedian";
    v62 = [MEMORY[0x277CCABB0] numberWithInt:v103];
    v132 = v62;
    v123[9] = @"daysPregnancyEndLoggedBeforeCycleStartMin";
    v61 = [MEMORY[0x277CCABB0] numberWithInt:v104];
    v133 = v61;
    v123[10] = @"daysPregnancyStartLoggedAfterCycleStartMax";
    v60 = [MEMORY[0x277CCABB0] numberWithInt:v102];
    v134 = v60;
    v123[11] = @"daysPregnancyStartLoggedAfterCycleStartMedian";
    v59 = [MEMORY[0x277CCABB0] numberWithInt:v100];
    v135 = v59;
    v123[12] = @"daysPregnancyStartLoggedAfterCycleStartMin";
    v58 = [MEMORY[0x277CCABB0] numberWithInt:v101];
    v136 = v58;
    v123[13] = @"estimatedLutealPhaseLength25Pct";
    v57 = [MEMORY[0x277CCABB0] numberWithInt:v96];
    v137 = v57;
    v123[14] = @"estimatedLutealPhaseLength75Pct";
    v56 = [MEMORY[0x277CCABB0] numberWithInt:v98];
    v138 = v56;
    v123[15] = @"estimatedLutealPhaseLengthMax";
    v55 = [MEMORY[0x277CCABB0] numberWithInt:v99];
    v139 = v55;
    v123[16] = @"estimatedLutealPhaseLengthMedian";
    v54 = [MEMORY[0x277CCABB0] numberWithInt:v97];
    v140 = v54;
    v123[17] = @"estimatedLutealPhaseLengthMin";
    v53 = [MEMORY[0x277CCABB0] numberWithInt:v95];
    v141 = v53;
    v123[18] = @"hasMultipleWatch";
    v52 = [MEMORY[0x277CCABB0] numberWithBool:v76];
    v142 = v52;
    v123[19] = @"kaliDay2DayNoise";
    v51 = [MEMORY[0x277CCABB0] numberWithInt:v88];
    v143 = v51;
    v123[20] = @"kaliFromPrimaryWatchRatio";
    v50 = [MEMORY[0x277CCABB0] numberWithInt:v89];
    v144 = v50;
    v123[21] = @"kaliMeetsHistoricalAlgAvailability";
    v49 = [MEMORY[0x277CCABB0] numberWithInt:v77];
    v145 = v49;
    v123[22] = @"kaliSignal25PctAtOvulationEstimate";
    v48 = [MEMORY[0x277CCABB0] numberWithInt:v78];
    v146 = v48;
    v123[23] = @"kaliSignal25PctDueToOPK";
    v47 = [MEMORY[0x277CCABB0] numberWithInt:v83];
    v147 = v47;
    v123[24] = @"kaliSignal75PctAtOvulationEstimate";
    v46 = [MEMORY[0x277CCABB0] numberWithInt:v80];
    v148 = v46;
    v123[25] = @"kaliSignal75PctDueToOPK";
    v45 = [MEMORY[0x277CCABB0] numberWithInt:v85];
    v149 = v45;
    v123[26] = @"kaliSignalMaxAtOvulationEstimate";
    v44 = [MEMORY[0x277CCABB0] numberWithInt:v82];
    v150 = v44;
    v123[27] = @"kaliSignalMaxDueToOPK";
    v43 = [MEMORY[0x277CCABB0] numberWithInt:v87];
    v151 = v43;
    v123[28] = @"kaliSignalMedianAtOvulationEstimate";
    v42 = [MEMORY[0x277CCABB0] numberWithInt:v79];
    v152 = v42;
    v123[29] = @"kaliSignalMedianDueToOPK";
    v41 = [MEMORY[0x277CCABB0] numberWithInt:v84];
    v153 = v41;
    v123[30] = @"kaliSignalMinAtOvulationEstimate";
    v40 = [MEMORY[0x277CCABB0] numberWithInt:v81];
    v154 = v40;
    v123[31] = @"kaliSignalMinDueToOPK";
    v39 = [MEMORY[0x277CCABB0] numberWithInt:v86];
    v155 = v39;
    v123[32] = @"ovulationConfirmationError25Pct";
    v38 = [MEMORY[0x277CCABB0] numberWithInt:v91];
    v156 = v38;
    v123[33] = @"ovulationConfirmationError75Pct";
    v37 = [MEMORY[0x277CCABB0] numberWithInt:v93];
    v157 = v37;
    v123[34] = @"ovulationConfirmationErrorMax";
    v36 = [MEMORY[0x277CCABB0] numberWithInt:v94];
    v158 = v36;
    v123[35] = @"ovulationConfirmationErrorMedian";
    v35 = [MEMORY[0x277CCABB0] numberWithInt:v92];
    v159 = v35;
    v123[36] = @"ovulationConfirmationErrorMin";
    v34 = [MEMORY[0x277CCABB0] numberWithInt:v90];
    v160 = v34;
    v123[37] = @"ovulationConfirmationFailureFactors";
    v33 = [MEMORY[0x277CCABB0] numberWithInt:v118];
    v161 = v33;
    v123[38] = @"ovulationConfirmationFailureKaliAvailability";
    v2 = [MEMORY[0x277CCABB0] numberWithInt:v113];
    v162 = v2;
    v123[39] = @"ovulationConfirmationFailureKaliNoise";
    v3 = [MEMORY[0x277CCABB0] numberWithInt:v114];
    v163 = v3;
    v123[40] = @"ovulationConfirmationFailureKaliSignal";
    v4 = [MEMORY[0x277CCABB0] numberWithInt:v115];
    v164 = v4;
    v123[41] = @"ovulationConfirmationFailureKaliSNR";
    v5 = [MEMORY[0x277CCABB0] numberWithInt:v116];
    v165 = v5;
    v123[42] = @"ovulationConfirmationFailureOPK";
    v6 = [MEMORY[0x277CCABB0] numberWithInt:v119];
    v166 = v6;
    v123[43] = @"ovulationConfirmationFailureShortCycles";
    v7 = [MEMORY[0x277CCABB0] numberWithInt:v117];
    v167 = v7;
    v123[44] = @"ovulationConfirmationNoFailure";
    v8 = [MEMORY[0x277CCABB0] numberWithInt:v120];
    v168 = v8;
    v123[45] = @"ovulationConfirmationNoFailureMT";
    v9 = [MEMORY[0x277CCABB0] numberWithInt:v121];
    v169 = v9;
    v123[46] = @"ratioCycleHasOPK";
    LODWORD(v10) = v75;
    v11 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
    v170 = v11;
    v123[47] = @"ratioCycleWith1DayPeriod";
    LODWORD(v12) = v74;
    v13 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
    v171 = v13;
    v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v123 count:48];
  }

  else
  {
    v14 = ha_get_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(MAIHistoricalAnalyzer *)v14 analyze];
    }

    v71 = 0;
  }

  v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:0x8E38E38E38E38E39 * ((v73 - v72) >> 3)];
  v16 = v72;
  for (i = v73; v16 != i; v16 += 18)
  {
    v18 = objc_opt_new();
    v19 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(v16 + 5) - *(v16 + 4)];
    v20 = *(v16 + 4);
    v21 = *(v16 + 5);
    while (v20 != v21)
    {
      if (((*v20 - 1) & 0xF8) != 0)
      {
        v22 = 0;
      }

      else
      {
        v22 = *v20;
      }

      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v22];
      [v19 addObject:v23];

      ++v20;
    }

    [v18 setPhases:v19];
    if (*(v16 + 4) == 1)
    {
      v24 = [MEMORY[0x277CCABB0] numberWithInt:*v16];
      [v18 setFertilityStartJulianDay:v24];
    }

    if (*(v16 + 12) == 1)
    {
      v25 = [MEMORY[0x277CCABB0] numberWithInt:v16[2]];
      [v18 setFertilityEndJulianDay:v25];
    }

    [v18 setJulianDayOfMenstruationStart:v16[4]];
    [v18 setJulianDayOfMenstruationEnd:v16[5]];
    [v18 setIsDeterminant:*(v16 + 24)];
    v26 = v16[15];
    if (v26 >= 5)
    {
      v27 = ha_get_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109120;
        *&buf[4] = v26;
        _os_log_fault_impl(&dword_2588F5000, v27, OS_LOG_TYPE_FAULT, "Unrecognized failureSrc %d: ", buf, 8u);
      }

      LOBYTE(v26) = 0;
    }

    [v18 setOvulationConfirmationFailure:v26];
    [v18 setDailyEligibleWristTemperatureCount:v16[16]];
    v28 = v16[14];
    if (v28 >= 4)
    {
      v29 = 3;
    }

    else
    {
      v29 = 3 - v28;
    }

    [v18 setPredictionPrimarySource:v29];
    [v15 addObject:v18];
  }

  *buf = &v72;
  std::vector<Nightingale::ngt_HistoricCycle>::__destroy_vector::operator()[abi:nn200100](buf);
  v30 = *MEMORY[0x277D85DE8];
  v31 = v15;
  v32 = v71;
  result.var1 = v32;
  result.var0 = v31;
  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 16) = 0;
  *(self + 20) = 0;
  return self;
}

@end