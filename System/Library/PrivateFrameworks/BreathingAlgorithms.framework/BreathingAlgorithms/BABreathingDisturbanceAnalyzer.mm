@interface BABreathingDisturbanceAnalyzer
+ (BABreathingDisturbanceAnalysis)analyzeSamples:(SEL)samples dateInterval:(id)interval;
@end

@implementation BABreathingDisturbanceAnalyzer

+ (BABreathingDisturbanceAnalysis)analyzeSamples:(SEL)samples dateInterval:(id)interval
{
  v114 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  v90 = a5;
  retstr->var0 = &unk_285402D90;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  obj = intervalCopy;
  v8 = [obj countByEnumeratingWithState:&v102 objects:v113 count:16];
  if (v8)
  {
    v9 = *v103;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v103 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v102 + 1) + 8 * i);
        v12 = hws_get_framework_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          quantity = [v11 quantity];
          countUnit = [MEMORY[0x277CCDAB0] countUnit];
          [quantity doubleValueForUnit:countUnit];
          v16 = v15;
          startDate = [v11 startDate];
          endDate = [v11 endDate];
          uUID = [v11 UUID];
          *buf = 134546435;
          *&buf[4] = v16;
          *&buf[12] = 2114;
          *&buf[14] = startDate;
          *&buf[22] = 2114;
          *&buf[24] = endDate;
          LOWORD(v111) = 2114;
          *(&v111 + 2) = uUID;
          _os_log_impl(&dword_241E46000, v12, OS_LOG_TYPE_DEFAULT, "%{sensitive}lf for %{public}@ - %{public}@ for %{public}@", buf, 0x2Au);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v102 objects:v113 count:16];
    }

    while (v8);
  }

  if ([obj count] < 0x1F)
  {
    startDate2 = [v90 startDate];
    endDate2 = [v90 endDate];
    v23 = [startDate2 isEqualToDate:endDate2];

    if (v23)
    {
      v24 = hws_get_framework_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        startDate3 = [v90 startDate];
        endDate3 = [v90 endDate];
        [(BABreathingDisturbanceAnalyzer *)startDate3 analyzeSamples:endDate3 dateInterval:buf, v24];
      }
    }

    else
    {
      __src = 0;
      v100 = 0;
      v101 = 0;
      std::vector<NebulaNotification::BDReport>::reserve(&__src, [obj count]);
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v91 = obj;
      v27 = [v91 countByEnumeratingWithState:&v95 objects:v112 count:16];
      if (v27)
      {
        v28 = *v96;
        v29 = *MEMORY[0x277CCC930];
LABEL_20:
        v30 = 0;
        while (1)
        {
          if (*v96 != v28)
          {
            objc_enumerationMutation(v91);
          }

          v31 = *(*(&v95 + 1) + 8 * v30);
          quantity2 = [v31 quantity];
          countUnit2 = [MEMORY[0x277CCDAB0] countUnit];
          [quantity2 doubleValueForUnit:countUnit2];
          v35 = v34;

          quantityType = [v31 quantityType];
          identifier = [quantityType identifier];
          v38 = identifier == v29;

          if (!v38)
          {
            v83 = hws_get_framework_log();
            if (os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
            {
              quantityType2 = [v31 quantityType];
              identifier2 = [quantityType2 identifier];
              uUID2 = [v31 UUID];
              *buf = 138543618;
              *&buf[4] = identifier2;
              *&buf[12] = 2114;
              *&buf[14] = uUID2;
              _os_log_fault_impl(&dword_241E46000, v83, OS_LOG_TYPE_FAULT, "Invalid HealthKit type (%{public}@) for sample %{public}@.", buf, 0x16u);
            }

            goto LABEL_54;
          }

          if (v35 < 0.0)
          {
            v83 = hws_get_framework_log();
            if (os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
            {
              [v31 UUID];
              objc_claimAutoreleasedReturnValue();
              +[BABreathingDisturbanceAnalyzer analyzeSamples:dateInterval:];
            }

            goto LABEL_54;
          }

          if (v35 > 130.0)
          {
            v83 = hws_get_framework_log();
            if (os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
            {
              [v31 UUID];
              objc_claimAutoreleasedReturnValue();
              +[BABreathingDisturbanceAnalyzer analyzeSamples:dateInterval:];
            }

            goto LABEL_54;
          }

          endDate4 = [v31 endDate];
          startDate4 = [v90 startDate];
          v41 = [endDate4 compare:startDate4] == 1;

          if (!v41)
          {
            break;
          }

          endDate5 = [v31 endDate];
          endDate6 = [v90 endDate];
          v44 = [endDate5 compare:endDate6] == 1;

          if (v44)
          {
            v83 = hws_get_framework_log();
            if (os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
            {
              [v31 UUID];
              objc_claimAutoreleasedReturnValue();
              +[BABreathingDisturbanceAnalyzer analyzeSamples:dateInterval:];
            }

LABEL_54:

            goto LABEL_55;
          }

          startDate5 = [v31 startDate];
          [startDate5 timeIntervalSinceReferenceDate];
          v47 = v46;
          endDate7 = [v31 endDate];
          [endDate7 timeIntervalSinceReferenceDate];
          v50 = v35;
          v51 = v100;
          if (v100 >= v101)
          {
            v53 = __src;
            v54 = v100 - __src;
            v55 = 0xAAAAAAAAAAAAAAABLL * ((v100 - __src) >> 3);
            v56 = v55 + 1;
            if (v55 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<NebulaNotification::BDReport>::__throw_length_error[abi:ne200100]();
            }

            if (0x5555555555555556 * ((v101 - __src) >> 3) > v56)
            {
              v56 = 0x5555555555555556 * ((v101 - __src) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v101 - __src) >> 3) >= 0x555555555555555)
            {
              v56 = 0xAAAAAAAAAAAAAAALL;
            }

            if (v56)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<NebulaNotification::BDReport>>(&__src, v56);
            }

            v57 = 8 * ((v100 - __src) >> 3);
            *v57 = v50;
            *(v57 + 8) = v47;
            *(v57 + 16) = v49;
            v52 = 24 * v55 + 24;
            v58 = (24 * v55 - v54);
            memcpy((v57 - v54), v53, v54);
            v59 = __src;
            __src = v58;
            v100 = v52;
            v101 = 0;
            if (v59)
            {
              operator delete(v59);
            }
          }

          else
          {
            *v100 = v50;
            v52 = (v51 + 6);
            *(v51 + 1) = v47;
            *(v51 + 2) = v49;
          }

          v100 = v52;

          if (v27 == ++v30)
          {
            v27 = [v91 countByEnumeratingWithState:&v95 objects:v112 count:16];
            if (v27)
            {
              goto LABEL_20;
            }

            goto LABEL_41;
          }
        }

        v83 = hws_get_framework_log();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
        {
          [v31 UUID];
          objc_claimAutoreleasedReturnValue();
          +[BABreathingDisturbanceAnalyzer analyzeSamples:dateInterval:];
        }

        goto LABEL_54;
      }

LABEL_41:

      NebulaNotification::Processor::Processor(&v94);
      v111 = 0u;
      memset(buf, 0, sizeof(buf));
      NebulaNotification::Processor::process(&__src, buf, &v94);
      v108[0] = @"notification_status";
      v60 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:buf[4]];
      v109[0] = v60;
      v108[1] = @"percent_bd_at_least_10";
      LODWORD(v61) = *&buf[8];
      v92 = [MEMORY[0x277CCABB0] numberWithFloat:v61];
      v109[1] = v92;
      v108[2] = @"percent_bd_at_least_11";
      LODWORD(v62) = *&buf[12];
      v63 = [MEMORY[0x277CCABB0] numberWithFloat:v62];
      v109[2] = v63;
      v108[3] = @"percent_bd_at_least_12";
      LODWORD(v64) = *&buf[16];
      v65 = [MEMORY[0x277CCABB0] numberWithFloat:v64];
      v109[3] = v65;
      v108[4] = @"percent_bd_at_least_13";
      LODWORD(v66) = *&buf[20];
      v67 = [MEMORY[0x277CCABB0] numberWithFloat:v66];
      v109[4] = v67;
      v108[5] = @"bd_count";
      v68 = [MEMORY[0x277CCABB0] numberWithInt:*&buf[24]];
      v109[5] = v68;
      v108[6] = @"bd_median";
      LODWORD(v69) = *&buf[28];
      v70 = [MEMORY[0x277CCABB0] numberWithFloat:v69];
      v109[6] = v70;
      v108[7] = @"bd_mean";
      LODWORD(v71) = v111;
      v72 = [MEMORY[0x277CCABB0] numberWithFloat:v71];
      v109[7] = v72;
      v108[8] = @"bd_standard_deviation";
      LODWORD(v73) = DWORD1(v111);
      v74 = [MEMORY[0x277CCABB0] numberWithFloat:v73];
      v109[8] = v74;
      v108[9] = @"bd_maximum";
      LODWORD(v75) = DWORD2(v111);
      v76 = [MEMORY[0x277CCABB0] numberWithFloat:v75];
      v109[9] = v76;
      v108[10] = @"bd_minimum";
      LODWORD(v77) = HIDWORD(v111);
      v78 = [MEMORY[0x277CCABB0] numberWithFloat:v77];
      v109[10] = v78;
      v79 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v109 forKeys:v108 count:11];
      var1 = retstr->var1;
      retstr->var1 = v79;

      v81 = buf[0];
      retstr->var2 = buf[0];
      v82 = hws_get_framework_log();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
      {
        *v106 = 67436801;
        v107 = v81;
        _os_log_impl(&dword_241E46000, v82, OS_LOG_TYPE_DEFAULT, "Algs result: %{sensitive}u", v106, 8u);
      }

      NebulaNotification::Processor::~Processor(&v94);
LABEL_55:
      if (__src)
      {
        v100 = __src;
        operator delete(__src);
      }
    }
  }

  else
  {
    v20 = hws_get_framework_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      +[BABreathingDisturbanceAnalyzer analyzeSamples:dateInterval:].cold.7(buf, [obj count], v20);
    }
  }

  v88 = *MEMORY[0x277D85DE8];
  return result;
}

+ (void)analyzeSamples:dateInterval:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0(&dword_241E46000, v3, v4, "Invalid BD sample %{public}@ with end date prior to or equal to start of query interval.", v5);
}

+ (void)analyzeSamples:dateInterval:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0(&dword_241E46000, v3, v4, "Invalid BD sample %{public}@ with end date after end of query interval.", v5);
}

+ (void)analyzeSamples:dateInterval:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0(&dword_241E46000, v3, v4, "Invalid BD sample %{public}@, greater than limit.", v5);
}

+ (void)analyzeSamples:dateInterval:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0(&dword_241E46000, v3, v4, "Invalid BD sample %{public}@, less than minimum.", v5);
}

+ (void)analyzeSamples:dateInterval:.cold.5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_0(&dword_241E46000, v3, v4, "Invalid BD sample %{public}@ has NAN.", v5);
}

+ (void)analyzeSamples:(uint8_t *)buf dateInterval:(os_log_t)log .cold.6(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_fault_impl(&dword_241E46000, log, OS_LOG_TYPE_FAULT, "Invalid query interval (%{public}@ - %{public}@) with a duration of zero.", buf, 0x16u);
}

+ (void)analyzeSamples:(NSObject *)a3 dateInterval:.cold.7(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *a1 = 134349056;
  *(a1 + 4) = a2;
  OUTLINED_FUNCTION_0(&dword_241E46000, a2, a3, "Invalid number (%{public}lu) of BD samples, more than expected.", a1);
}

@end