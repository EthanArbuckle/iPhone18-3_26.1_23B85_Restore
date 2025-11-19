@interface NgtMenstrualAlgorithmsHistoricalAnalyzer
- (NgtMenstrualAlgorithmsHistoricalAnalyzer)initWithMlConfig:(id)a3;
- (id).cxx_construct;
- (id)analyzeWithError:(id *)a3;
- (unsigned)watchNumericIdentifierFromString:(id)a3;
- (void)appendDay:(id)a3;
- (void)beginPhase:(unsigned __int8)a3 onJulianDay:(unsigned int)a4;
- (void)endPhase:(unsigned __int8)a3 onJulianDay:(unsigned int)a4;
- (void)runDays;
@end

@implementation NgtMenstrualAlgorithmsHistoricalAnalyzer

- (NgtMenstrualAlgorithmsHistoricalAnalyzer)initWithMlConfig:(id)a3
{
  v4 = a3;
  v45.receiver = self;
  v45.super_class = NgtMenstrualAlgorithmsHistoricalAnalyzer;
  v5 = [(NgtMenstrualAlgorithmsHistoricalAnalyzer *)&v45 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:100];
    dayInputBuffer = v5->_dayInputBuffer;
    v5->_dayInputBuffer = v6;

    v8 = objc_opt_new();
    watchIdentifiers = v5->_watchIdentifiers;
    v5->_watchIdentifiers = v8;

    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v34 = 0;
    v32 = 0;
    v33 = 0;
    v35 = 0x1800000018;
    v36 = 0u;
    memset(v37, 0, sizeof(v37));
    v38 = 0u;
    memset(v39, 0, sizeof(v39));
    __p = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0;
    v10 = [v4 heartRateFwEnd10PctModelPath];
    std::string::basic_string[abi:ne200100]<0>(&v16, [v10 UTF8String]);
    if (SBYTE7(v41) < 0)
    {
      operator delete(__p);
    }

    __p = v16;
    *&v41 = v17;
    HIBYTE(v17) = 0;
    LOBYTE(v16) = 0;

    v11 = [v4 heartRatePeriod10PctModelPath];
    std::string::basic_string[abi:ne200100]<0>(&v16, [v11 UTF8String]);
    if (SHIBYTE(v39[3]) < 0)
    {
      operator delete(v39[1]);
    }

    *&v39[1] = v16;
    v39[3] = v17;
    HIBYTE(v17) = 0;
    LOBYTE(v16) = 0;

    v12 = [v4 wTmpFwEndLstmModelPath];
    std::string::basic_string[abi:ne200100]<0>(&v16, [v12 UTF8String]);
    if (SHIBYTE(v37[3]) < 0)
    {
      operator delete(v37[1]);
    }

    *&v37[1] = v16;
    v37[3] = v17;
    HIBYTE(v17) = 0;
    LOBYTE(v16) = 0;

    v13 = [v4 wTmpFwEndRFModelPath];
    std::string::basic_string[abi:ne200100]<0>(&v16, [v13 UTF8String]);
    if (SHIBYTE(v39[0]) < 0)
    {
      operator delete(v38);
    }

    v38 = v16;
    v39[0] = v17;
    HIBYTE(v17) = 0;
    LOBYTE(v16) = 0;

    v14 = [v4 wTmpPeriodLstmModelPath];
    std::string::basic_string[abi:ne200100]<0>(&v16, [v14 UTF8String]);
    if (SHIBYTE(v37[0]) < 0)
    {
      operator delete(v36);
    }

    v36 = v16;
    v37[0] = v17;
    HIBYTE(v17) = 0;
    LOBYTE(v16) = 0;

    operator new();
  }

  return 0;
}

- (void)appendDay:(id)a3
{
  v8 = a3;
  v4 = [(NgtMenstrualAlgorithmsHistoricalAnalyzer *)self dayInputBuffer];
  [v4 addObject:v8];

  v5 = [(NgtMenstrualAlgorithmsHistoricalAnalyzer *)self dayInputBuffer];
  v6 = [v5 count];

  if (v6 == 100)
  {
    [(NgtMenstrualAlgorithmsHistoricalAnalyzer *)self runDays];
    v7 = [(NgtMenstrualAlgorithmsHistoricalAnalyzer *)self dayInputBuffer];
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
  v3 = [(NgtMenstrualAlgorithmsHistoricalAnalyzer *)self dayInputBuffer];
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
      v10 = [(NgtMenstrualAlgorithmsHistoricalAnalyzer *)self watchNumericIdentifierFromString:v9];

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
      Nightingale::ngt_HistoricalAnalyzer::appendDay(self->_historicalAnalyzer.__ptr_, v12);
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

- (unsigned)watchNumericIdentifierFromString:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NgtMenstrualAlgorithmsHistoricalAnalyzer *)self watchIdentifiers];
    v6 = [v5 indexOfObject:v4];

    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [(NgtMenstrualAlgorithmsHistoricalAnalyzer *)self watchIdentifiers];
      [v6 addObject:v4];

      v7 = [(NgtMenstrualAlgorithmsHistoricalAnalyzer *)self watchIdentifiers];
      LOBYTE(v6) = [v7 count] - 1;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)beginPhase:(unsigned __int8)a3 onJulianDay:(unsigned int)a4
{
  ptr = self->_historicalAnalyzer.__ptr_;
  v6 = ngt_phase_to_algs_phase(a3);

  Nightingale::ngt_HistoricalAnalyzer::begin_phase(ptr, v6, a4);
}

- (void)endPhase:(unsigned __int8)a3 onJulianDay:(unsigned int)a4
{
  ptr = self->_historicalAnalyzer.__ptr_;
  v6 = ngt_phase_to_algs_phase(a3);

  Nightingale::ngt_HistoricalAnalyzer::end_phase(ptr, v6, a4);
}

- (id)analyzeWithError:(id *)a3
{
  v4 = [(NgtMenstrualAlgorithmsHistoricalAnalyzer *)self dayInputBuffer];
  v5 = [v4 count];

  if (v5)
  {
    [(NgtMenstrualAlgorithmsHistoricalAnalyzer *)self runDays];
    v6 = [(NgtMenstrualAlgorithmsHistoricalAnalyzer *)self dayInputBuffer];
    [v6 removeAllObjects];
  }

  Nightingale::ngt_HistoricalAnalyzer::analyze(self->_historicalAnalyzer.__ptr_, 1, &v22);
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:0x8E38E38E38E38E39 * ((v23 - v22) >> 3)];
  v8 = v22;
  for (i = v23; v8 != i; v8 += 18)
  {
    v10 = objc_opt_new();
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(v8 + 5) - *(v8 + 4)];
    v12 = *(v8 + 4);
    v13 = *(v8 + 5);
    while (v12 != v13)
    {
      if (((*v12 - 1) & 0xF8) != 0)
      {
        v14 = 0;
      }

      else
      {
        v14 = *v12;
      }

      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v14];
      [v11 addObject:v15];

      ++v12;
    }

    [v10 setPhases:v11];
    if (*(v8 + 4) == 1)
    {
      v16 = [MEMORY[0x277CCABB0] numberWithInt:*v8];
      [v10 setFertilityStartJulianDay:v16];
    }

    if (*(v8 + 12) == 1)
    {
      v17 = [MEMORY[0x277CCABB0] numberWithInt:v8[2]];
      [v10 setFertilityEndJulianDay:v17];
    }

    [v10 setJulianDayOfMenstruationStart:v8[4]];
    [v10 setJulianDayOfMenstruationEnd:v8[5]];
    [v10 setIsDeterminant:*(v8 + 24)];
    v18 = v8[15];
    if (v18 >= 5)
    {
      LOBYTE(v18) = 0;
    }

    [v10 setOvulationConfirmationFailure:v18];
    [v10 setDailyEligibleWristTemperatureCount:v8[16]];
    v19 = v8[14];
    if (v19 >= 4)
    {
      v20 = 3;
    }

    else
    {
      v20 = 3 - v19;
    }

    [v10 setPredictionPrimarySource:v20];
    [v7 addObject:v10];
  }

  v24 = &v22;
  std::vector<Nightingale::ngt_HistoricCycle>::__destroy_vector::operator()[abi:ne200100](&v24);

  return v7;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 16) = 0;
  *(self + 20) = 0;
  return self;
}

@end