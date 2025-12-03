@interface HAHermitNotificationAlgorithms
+ (HAHypertensivePatternAnalysis)analyzeMeasurements:(id)measurements forDateInterval:(id)interval;
@end

@implementation HAHermitNotificationAlgorithms

+ (HAHypertensivePatternAnalysis)analyzeMeasurements:(id)measurements forDateInterval:(id)interval
{
  v64 = *MEMORY[0x277D85DE8];
  measurementsCopy = measurements;
  intervalCopy = interval;
  __src = 0;
  v54 = 0;
  v55 = 0;
  std::vector<HermitNotification::HSReport>::reserve(&__src, [measurementsCopy count]);
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v6 = measurementsCopy;
  v7 = [v6 countByEnumeratingWithState:&v49 objects:v63 count:16];
  if (v7)
  {
    v8 = *v50;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v50 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v49 + 1) + 8 * i);
        v11 = hws_get_hermit_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          [v10 value];
          v28 = v27;
          date = [v10 date];
          *buf = 134545923;
          v61 = v28;
          *v62 = 2114;
          *&v62[2] = date;
          _os_log_debug_impl(&dword_251282000, v11, OS_LOG_TYPE_DEBUG, "%{sensitive}lf on %{public}@", buf, 0x16u);
        }

        date2 = [v10 date];
        [date2 timeIntervalSince1970];
        v14 = v13;

        [v10 value];
        v16 = v15;
        v17 = v54;
        if (v54 >= v55)
        {
          v19 = __src;
          v20 = v54 - __src;
          v21 = (v54 - __src) >> 4;
          v22 = v21 + 1;
          if ((v21 + 1) >> 60)
          {
            std::vector<mimosa::OpticalSampleV1>::__throw_length_error[abi:ne200100]();
          }

          v23 = v55 - __src;
          if ((v55 - __src) >> 3 > v22)
          {
            v22 = v23 >> 3;
          }

          if (v23 >= 0x7FFFFFFFFFFFFFF0)
          {
            v24 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v24 = v22;
          }

          if (v24)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<HermitNotification::HSReport>>(&__src, v24);
          }

          v25 = 16 * v21;
          *v25 = v14;
          *(v25 + 8) = v16;
          v18 = 16 * v21 + 16;
          memcpy(0, v19, v20);
          v26 = __src;
          __src = 0;
          v54 = v18;
          v55 = 0;
          if (v26)
          {
            operator delete(v26);
          }
        }

        else
        {
          *v54 = v14;
          *(v17 + 2) = v16;
          v18 = (v17 + 16);
        }

        v54 = v18;
      }

      v7 = [v6 countByEnumeratingWithState:&v49 objects:v63 count:16];
    }

    while (v7);
  }

  HermitNotification::Processor::Processor(v48);
  startDate = [intervalCopy startDate];
  [startDate timeIntervalSince1970];
  v32 = v31;

  endDate = [intervalCopy endDate];
  [endDate timeIntervalSince1970];
  v35 = v34;

  HermitNotification::Processor::process(buf, v48, &__src, v32, v35);
  if (v62[4] == 1)
  {
    v58[0] = @"alert_status";
    v36 = [MEMORY[0x277CCABB0] numberWithInt:*buf];
    v59[0] = v36;
    v58[1] = @"num_scores";
    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*v62];
    v59[1] = v37;
    v58[2] = @"mean_score";
    LODWORD(v38) = v61;
    v39 = [MEMORY[0x277CCABB0] numberWithFloat:v38];
    v59[2] = v39;
    v58[3] = @"valid_score_days";
    v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v61)];
    v59[3] = v40;
    v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:4];
  }

  else
  {
    v41 = MEMORY[0x277CBEC10];
  }

  v42 = *buf;
  v43 = hws_get_hermit_log();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    *v56 = 67436801;
    v57 = v42 == 1;
    _os_log_impl(&dword_251282000, v43, OS_LOG_TYPE_DEFAULT, "Algs result: %{sensitive}u", v56, 8u);
  }

  HermitNotification::Processor::~Processor(v48);
  if (__src)
  {
    v54 = __src;
    operator delete(__src);
  }

  v44 = *MEMORY[0x277D85DE8];
  v45 = v41;
  v46 = v42 == 1;
  result.var1 = v46;
  result.var0 = v45;
  return result;
}

@end