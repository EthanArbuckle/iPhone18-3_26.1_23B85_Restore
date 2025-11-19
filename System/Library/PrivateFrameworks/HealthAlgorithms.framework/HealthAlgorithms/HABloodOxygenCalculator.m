@interface HABloodOxygenCalculator
+ (HABloodOxygenAnalysis)analyzeBloodOxygenFromRawData:(SEL)a3 withPressureInKilopascals:(id)a4;
+ (id)calculateBloodOxygenFromRawData:(id)a3;
- (HABloodOxygenAnalysis)runBloodOxygenAnalysisFromRawData:(SEL)a3 withPressureInKilopascals:(id)a4;
- (id)calculateBloodOxygenFromRawData:(id)a3;
- (void)finalizeAnalytics:(const SCAnalytics *)a3 timestamp:(double)a4;
- (void)handleAbort:(unsigned __int8)a3 withAnalytics:(const SCAnalytics *)a4 atTimestamp:(double)a5;
- (void)handleResult:(const SCResult *)a3 withAnalytics:(const SCAnalytics *)a4 atTimestamp:(double)a5;
@end

@implementation HABloodOxygenCalculator

+ (id)calculateBloodOxygenFromRawData:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = ha_diagnostic_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446210;
    v10 = "+[HABloodOxygenCalculator calculateBloodOxygenFromRawData:]";
    _os_log_impl(&dword_251282000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s", &v9, 0xCu);
  }

  v5 = objc_opt_new();
  v6 = [v5 calculateBloodOxygenFromRawData:v3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (HABloodOxygenAnalysis)analyzeBloodOxygenFromRawData:(SEL)a3 withPressureInKilopascals:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = ha_diagnostic_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v15) = 136446210;
    *(&v15 + 4) = "+[HABloodOxygenCalculator analyzeBloodOxygenFromRawData:withPressureInKilopascals:]";
    _os_log_impl(&dword_251282000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s", &v15, 0xCu);
  }

  v10 = objc_opt_new();
  v11 = v10;
  retstr->measurement = 0;
  *&retstr->background = 0;
  retstr->coreAnalytics = 0;
  if (v10)
  {
    [v10 runBloodOxygenAnalysisFromRawData:v7 withPressureInKilopascals:v8];
    v12 = v15;
  }

  else
  {
    v12 = 0;
    *(&v15 + 1) = 0;
    v16 = 0;
  }

  retstr->measurement = v12;
  retstr->background = BYTE8(v15);
  retstr->coreAnalytics = v16;

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (HABloodOxygenAnalysis)runBloodOxygenAnalysisFromRawData:(SEL)a3 withPressureInKilopascals:(id)a4
{
  v8 = a5;
  v9 = a4;
  v10 = ha_diagnostic_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(HABloodOxygenCalculator *)v8 runBloodOxygenAnalysisFromRawData:v10 withPressureInKilopascals:v11, v12, v13, v14, v15, v16];
  }

  pressure = self->_pressure;
  self->_pressure = v8;
  v18 = v8;

  v19 = [(HABloodOxygenCalculator *)self calculateBloodOxygenFromRawData:v9];

  measurement = self->_measurement;
  self->_measurement = v19;

  objc_storeStrong(&self->_analysis.measurement, self->_measurement);
  retstr->measurement = self->_analysis.measurement;
  retstr->background = self->_analysis.background;
  v21 = self->_analysis.coreAnalytics;

  retstr->coreAnalytics = v21;
  return result;
}

- (id)calculateBloodOxygenFromRawData:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!ScandiumLibraryCore() || (v46 = 0, [v4 length] < 2) || (objc_msgSend(v4, "getBytes:range:", &v46, 0, 2), v46 != 5))
  {
    v32 = 0;
    goto LABEL_32;
  }

  memset(v45, 0, sizeof(v45));
  self->_bootTime = 0.0;
  scandiumProcessor = self->_scandiumProcessor;
  self->_scandiumProcessor = 0;

  if ([v4 length] >= 3)
  {
    v6 = 0;
    v7 = 2;
    while (1)
    {
      v44 = 0;
      v8 = v7 + 4;
      if (v7 + 4 > [v4 length])
      {
        goto LABEL_40;
      }

      [v4 getBytes:&v44 range:{v7, 4}];
      v9 = HIWORD(v44);
      v7 = v8 + v9;
      if (v8 + v9 > [v4 length])
      {
        goto LABEL_40;
      }

      v10 = [v4 subdataWithRange:{v8, v9}];
      v11 = ha_diagnostic_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v30 = v44;
        v31 = [v10 length];
        *buf = 67109376;
        *&buf[4] = v30;
        LOWORD(v52) = 2048;
        *(&v52 + 2) = v31;
        _os_log_debug_impl(&dword_251282000, v11, OS_LOG_TYPE_DEBUG, "LP5 ID %u: %zu bytes", buf, 0x12u);
      }

      if (v44 <= 0x112u)
      {
        if (v44 == 205)
        {
          if ([v10 length] != 20)
          {
            goto LABEL_39;
          }

          [v10 getBytes:v45 length:20];
          if (*&v45[8] != 24000000)
          {
            goto LABEL_39;
          }

          self->_bootTime = *&v45[12] + *v45 / -24000000.0;
          self->_ticksPerSecond = 24000000;
        }

        else if (v44 == 214)
        {
          v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v10 encoding:4];

          v6 = v27;
        }
      }

      else if (v44 == 275)
      {
        v28 = self->_scandiumProcessor;
        if (!v28)
        {
          goto LABEL_39;
        }

        v29 = v10;
        -[SCProcessor processPacket:ofLength:](v28, "processPacket:ofLength:", [v10 bytes], objc_msgSend(v10, "length"));
      }

      else if (v44 == 276 || v44 == 284)
      {
        if (self->_scandiumProcessor || !v6 || !*&v45[8])
        {
          goto LABEL_39;
        }

        v47 = 0;
        v48 = &v47;
        v49 = 0x2050000000;
        v19 = getSCProcessorClass_softClass;
        v50 = getSCProcessorClass_softClass;
        if (!getSCProcessorClass_softClass)
        {
          *buf = MEMORY[0x277D85DD0];
          *&v52 = 3221225472;
          *(&v52 + 1) = __getSCProcessorClass_block_invoke;
          v53 = &unk_2796B3C20;
          v54 = &v47;
          __getSCProcessorClass_block_invoke(buf, v12, v13, v14, v15, v16, v17, v18, v43);
          v19 = v48[3];
        }

        v20 = v19;
        _Block_object_dispose(&v47, 8);
        v21 = [v19 alloc];
        v22 = v10;
        v23 = [v10 bytes];
        v24 = [v10 length];
        v43 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:self->_bootTime];
        v25 = [v21 initWithStartPacket:v23 ofLength:v24 delegate:self withSignalQualityMetricsEnabled:1 bypassingAlgorithms:0 forWindbreaker:0 bootDate:? hardwareModel:?];
        v26 = self->_scandiumProcessor;
        self->_scandiumProcessor = v25;

        if (!self->_scandiumProcessor)
        {
LABEL_39:

          goto LABEL_40;
        }
      }

      if (v7 >= [v4 length])
      {
        goto LABEL_36;
      }
    }
  }

  v6 = 0;
LABEL_36:
  if (!self->_measurement || !*&v45[8])
  {
LABEL_40:
    v32 = 0;
    goto LABEL_41;
  }

  v35 = MEMORY[0x277CBEAA8];
  p_scandiumProcessor = &self->_scandiumProcessor;
  bootTime = self->_bootTime;
  v38 = [(SCProcessor *)self->_scandiumProcessor startTimestamp];
  LODWORD(v39) = *&v45[8];
  v40 = [v35 dateWithTimeIntervalSinceReferenceDate:bootTime + v38 / v39];
  measurement = self->_measurement;
  p_measurement = &self->_measurement;
  [(HABloodOxygenMeasurement *)measurement setDate:v40];

  [(HABloodOxygenMeasurement *)*p_measurement setBackground:[(SCProcessor *)*p_scandiumProcessor forBackground]];
  v32 = *p_measurement;
LABEL_41:

LABEL_32:
  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

- (void)finalizeAnalytics:(const SCAnalytics *)a3 timestamp:(double)a4
{
  v50 = *MEMORY[0x277D85DE8];
  p_scandiumProcessor = &self->_scandiumProcessor;
  self->_analysis.background = [(SCProcessor *)self->_scandiumProcessor forBackground];
  if (a3)
  {
    v8 = [(SCProcessor *)*p_scandiumProcessor dictionaryForAnalytics:a3 sessionDuration:@"notApplicable" systemInterface:a4];
    v9 = [v8 mutableCopy];

    if (v9)
    {
      v10 = [MEMORY[0x277CCABB0] numberWithInt:{-[NSNumber intValue](self->_pressure, "intValue")}];
      [v9 setObject:v10 forKeyedSubscript:@"barometricPressure"];

      v11 = ha_diagnostic_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        bootTime = self->_bootTime;
        v13 = [(SCProcessor *)self->_scandiumProcessor startTimestamp];
        ticksPerSecond = self->_ticksPerSecond;
        *buf = 134218752;
        v43 = bootTime;
        v44 = 2048;
        v45 = v13;
        v46 = 1024;
        v47 = ticksPerSecond;
        v48 = 2048;
        v49 = a4;
        _os_log_impl(&dword_251282000, v11, OS_LOG_TYPE_DEFAULT, "bootTime: %f, sessionStartTime %llu, ticksPerSecond: %d, sessionDuration: %f", buf, 0x26u);
      }

      v15 = self->_bootTime;
      v16 = [(SCProcessor *)self->_scandiumProcessor startTimestamp];
      LODWORD(v17) = self->_ticksPerSecond;
      v18 = v15 + v16 / v17 + a4;
      if (!self->_analysis.background)
      {
        v19 = [MEMORY[0x277CCABB0] numberWithLong:llround(v18)];
        [v9 setObject:v19 forKeyedSubscript:@"CFAbsoluteTimeRounded"];
      }

      v20 = MEMORY[0x277CCABB0];
      v21 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v18];
      v22 = ha_diagnostic_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [(HABloodOxygenCalculator *)v21 finalizeAnalytics:v22 timestamp:v18];
      }

      v23 = objc_alloc(MEMORY[0x277CBEA80]);
      v24 = [v23 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
      v25 = [MEMORY[0x277CBEBB0] localTimeZone];
      [v24 setTimeZone:v25];

      v26 = [v24 component:32 fromDate:v21];
      v27 = [v20 numberWithInteger:v26];
      [v9 setObject:v27 forKeyedSubscript:@"hourOfDay"];

      objc_storeStrong(&self->_analysis.coreAnalytics, v9);
      v28 = [MEMORY[0x277D262A0] sharedConnection];
      LOBYTE(v27) = [v28 isHealthDataSubmissionAllowed];

      if ((v27 & 1) == 0)
      {
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v29 = [&unk_286357588 countByEnumeratingWithState:&v37 objects:v41 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v38;
          do
          {
            for (i = 0; i != v30; ++i)
            {
              if (*v38 != v31)
              {
                objc_enumerationMutation(&unk_286357588);
              }

              v33 = *(*(&v37 + 1) + 8 * i);
              v34 = [v9 objectForKeyedSubscript:v33];

              if (v34)
              {
                [v9 setObject:&unk_2863575A0 forKeyedSubscript:v33];
              }
            }

            v30 = [&unk_286357588 countByEnumeratingWithState:&v37 objects:v41 count:16];
          }

          while (v30);
        }
      }
    }

    else
    {
      v35 = ha_diagnostic_log();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
      {
        [(HABloodOxygenCalculator *)a3 finalizeAnalytics:v35 timestamp:?];
      }
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)handleAbort:(unsigned __int8)a3 withAnalytics:(const SCAnalytics *)a4 atTimestamp:(double)a5
{
  v8 = ha_diagnostic_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(HABloodOxygenCalculator *)v8 handleAbort:v9 withAnalytics:v10 atTimestamp:v11, v12, v13, v14, v15];
  }

  [(HABloodOxygenCalculator *)self finalizeAnalytics:a4 timestamp:a5];
}

- (void)handleResult:(const SCResult *)a3 withAnalytics:(const SCAnalytics *)a4 atTimestamp:(double)a5
{
  v9 = ha_diagnostic_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(HABloodOxygenCalculator *)v9 handleResult:v10 withAnalytics:v11 atTimestamp:v12, v13, v14, v15, v16];
  }

  v17 = objc_opt_new();
  measurement = self->_measurement;
  self->_measurement = v17;

  *&v19 = a3->var0;
  [(HABloodOxygenMeasurement *)self->_measurement setOxygenSaturationPercentage:v19];
  *&v20 = a3->var1;
  [(HABloodOxygenMeasurement *)self->_measurement setAverageHeartRate:v20];
  [(HABloodOxygenCalculator *)self finalizeAnalytics:a4 timestamp:a5];
}

- (void)runBloodOxygenAnalysisFromRawData:(uint64_t)a3 withPressureInKilopascals:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_251282000, a2, a3, "pressureInKilopascals: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)finalizeAnalytics:(double)a3 timestamp:.cold.1(uint64_t a1, NSObject *a2, double a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218242;
  v5 = a3;
  v6 = 2114;
  v7 = a1;
  _os_log_debug_impl(&dword_251282000, a2, OS_LOG_TYPE_DEBUG, "sessionEndTime: %f, sessionEndDate:  %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)finalizeAnalytics:(NSObject *)a3 timestamp:.cold.2(uint64_t a1, id *a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 208);
  v5 = [*a2 forBackground];
  v6 = "foreground";
  if (v5)
  {
    v6 = "background";
  }

  v8 = 138543618;
  v9 = v4;
  v10 = 2082;
  v11 = v6;
  _os_log_fault_impl(&dword_251282000, a3, OS_LOG_TYPE_FAULT, "coreAnalytics is nil. analytics->is_complete: %{public}@ self.processor.forBackground: %{public}s", &v8, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleAbort:(uint64_t)a3 withAnalytics:(uint64_t)a4 atTimestamp:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_251282000, a1, a3, "%{public}s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleResult:(uint64_t)a3 withAnalytics:(uint64_t)a4 atTimestamp:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_251282000, a1, a3, "%{public}s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end