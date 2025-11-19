@interface MXSampleAnalysisParser
+ (id)constructPayloadWithReport:(id)a3 withType:(int64_t)a4;
+ (id)getCallStackForReport:(id)a3 withType:(int64_t)a4;
+ (id)parseCallTreeFrame:(id)a3 withDepth:(unint64_t)a4;
+ (void)sendDiagnosticReport:(id)a3 forType:(int64_t)a4 forSourceID:(int64_t)a5;
@end

@implementation MXSampleAnalysisParser

+ (void)sendDiagnosticReport:(id)a3 forType:(int64_t)a4 forSourceID:(int64_t)a5
{
  v7 = a3;
  v8 = v7;
  if (v7 && ([v7 sampleStore], (v9 = objc_claimAutoreleasedReturnValue()) != 0) && (v10 = v9, objc_msgSend(v8, "options"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    v12 = [MXSampleAnalysisParser constructPayloadWithReport:v8 withType:a4];
    if (v12)
    {
      v13 = [MEMORY[0x277CBEAA8] date];
      v14 = +[MXSourceManager sharedManager];
      [v14 sendDiagnostic:v12 forDate:v13 andSourceID:a5];
    }
  }

  else
  {
    v15 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v15)
    {
      [(MXSampleAnalysisParser *)v15 sendDiagnosticReport:v16 forType:v17 forSourceID:v18, v19, v20, v21, v22];
    }
  }
}

+ (id)constructPayloadWithReport:(id)a3 withType:(int64_t)a4
{
  v100[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 sampleStore];
  v7 = [v6 targetProcess];
  v8 = [v7 bundleIdentifier];

  if (v8)
  {
    v9 = [v6 targetProcess];
    v10 = +[MXSourceUtilities isMetricKitClient:forUser:](MXSourceUtilities, "isMetricKitClient:forUser:", v8, [v9 uid]);

    if (v10)
    {
      v11 = [MXSampleAnalysisParser getCallStackForReport:v5 withType:a4];
      v12 = objc_alloc(MEMORY[0x277CD79F8]);
      v13 = [v6 targetProcessBundleVersion];
      v14 = [v6 targetProcess];
      v15 = [v14 bundleIdentifier];
      v96 = [v12 initWithRegionFormat:&stru_286A1D018 osVersion:&stru_286A1D018 deviceType:&stru_286A1D018 appBuildVersion:v13 platformArchitecture:&stru_286A1D018 bundleID:v15];

      v94 = objc_alloc_init(MEMORY[0x277CBEB38]);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        +[MXSampleAnalysisParser constructPayloadWithReport:withType:];
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        +[MXSampleAnalysisParser constructPayloadWithReport:withType:];
      }

      v16 = [v6 eventTimeRange];
      v17 = [v16 startTime];
      [v17 wallTime];
      v19 = v18;

      if (v19 != 0.0)
      {
        v20 = MEMORY[0x277CBEAA8];
        v21 = [v6 eventTimeRange];
        v22 = v21;
LABEL_9:
        v23 = [v21 startTime];
        [v23 wallTime];
        v98 = [v20 dateWithTimeIntervalSinceReferenceDate:?];

        goto LABEL_20;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        +[MXSampleAnalysisParser constructPayloadWithReport:withType:];
      }

      v25 = [v6 eventTimeRange];
      v22 = [v25 startTime];

      v26 = [v6 indexOfFirstSampleOnOrAfterTimestamp:v22];
      if (v26 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v27 = v26;
        v28 = [v6 sampleTimestamps];
        v29 = [v28 objectAtIndexedSubscript:v27];
        [v22 guessMissingTimesBasedOnTimestamp:v29];
      }

      [v22 wallTime];
      if (v30 == 0.0)
      {
        v72 = [v6 startTime];
        [v72 wallTime];
        v74 = v73;

        v75 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v74 != 0.0)
        {
          if (v75)
          {
            [(MXSampleAnalysisParser *)v75 constructPayloadWithReport:v76 withType:v77, v78, v79, v80, v81, v82];
          }

          v20 = MEMORY[0x277CBEAA8];
          v21 = v6;
          goto LABEL_9;
        }

        if (v75)
        {
          [(MXSampleAnalysisParser *)v75 constructPayloadWithReport:v76 withType:v77, v78, v79, v80, v81, v82];
        }

        v32 = [MEMORY[0x277CBEAA8] now];
      }

      else
      {
        v31 = MEMORY[0x277CBEAA8];
        [v22 wallTime];
        v32 = [v31 dateWithTimeIntervalSinceReferenceDate:?];
      }

      v98 = v32;
LABEL_20:
      v33 = v11;

      v34 = objc_alloc_init(MEMORY[0x277CCA968]);
      v93 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
      [v34 setLocale:?];
      [v34 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        [MXSampleAnalysisParser constructPayloadWithReport:v34 withType:v98];
      }

      v95 = v34;
      v35 = [v6 targetProcess];
      v36 = [v35 pid];
      v37 = [v6 targetProcess];
      v38 = [v37 bundleIdentifier];
      v97 = [MXSourceUtilities getSignpostDataforPid:v36 forClient:v38 andEventTimestamp:v98];

      if (a4 == 1)
      {
        v56 = objc_alloc(MEMORY[0x277CCAB10]);
        v57 = [v6 bytesWritten];
        v58 = [MEMORY[0x277CCAE18] bytes];
        v44 = [v56 initWithDoubleValue:v58 unit:v57];

        v59 = [MEMORY[0x277CCAE18] megabytes];
        v49 = [v44 measurementByConvertingToUnit:v59];

        v60 = objc_alloc(MEMORY[0x277CD7988]);
        v61 = [v6 targetProcessBundleShortVersion];
        v39 = v33;
        v53 = [v60 initWithMetaData:v96 applicationVersion:v61 signpostData:v97 pid:objc_msgSend(v6 totalWritesCaused:"targetProcessId") stackTrace:{v49, v33}];

        if (v53)
        {
          v54 = v94;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            [MXSampleAnalysisParser constructPayloadWithReport:v53 withType:?];
          }

          [v94 setObject:v53 forKey:@"diskWriteExceptionDiagnostics"];
          v55 = [[MXSpinTracerData alloc] initPayloadDataWithDiagnostics:v94];
          v52 = v96;
          goto LABEL_49;
        }

        v55 = 0;
        v52 = v96;
        goto LABEL_48;
      }

      v39 = v33;
      if (!a4)
      {
        v40 = objc_alloc(MEMORY[0x277CCAB10]);
        [v6 cpuUsed];
        v42 = v41;
        v43 = [MEMORY[0x277CCADD0] seconds];
        v44 = [v40 initWithDoubleValue:v43 unit:v42];

        v45 = objc_alloc(MEMORY[0x277CCAB10]);
        [v6 cpuDuration];
        v47 = v46;
        v48 = [MEMORY[0x277CCADD0] seconds];
        v49 = [v45 initWithDoubleValue:v48 unit:v47];

        v50 = objc_alloc(MEMORY[0x277CD7918]);
        v51 = [v6 targetProcessBundleShortVersion];
        v52 = v96;
        v53 = [v50 initWithMetaData:v96 applicationVersion:v51 signpostData:v97 pid:objc_msgSend(v6 callStack:"targetProcessId") totalCpuTime:v39 totalSampledTime:{v44, v49}];

        if (v53)
        {
          v54 = v94;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            [MXSampleAnalysisParser constructPayloadWithReport:v53 withType:?];
          }

          [v94 setObject:v53 forKey:@"cpuExceptionDiagnostics"];
          v55 = [[MXSpinTracerData alloc] initPayloadDataWithDiagnostics:v94];
          goto LABEL_49;
        }

        v55 = 0;
LABEL_48:
        v54 = v94;
LABEL_49:

        v71 = v95;
LABEL_50:

LABEL_51:
        if (v55)
        {
          v99 = v8;
          v100[0] = v55;
          v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v100 forKeys:&v99 count:1];
        }

        else
        {
          v24 = 0;
        }

        goto LABEL_55;
      }

      v52 = v96;
      if (a4 != 4)
      {
        if (a4 == 3)
        {
          v85 = objc_alloc(MEMORY[0x277CCAB10]);
          v86 = [v6 eventTimeRange];
          [v86 deltaMachAbsTimeSeconds];
          v88 = v87;
          v89 = [MEMORY[0x277CCADD0] seconds];
          v44 = [v85 initWithDoubleValue:v89 unit:v88];

          v90 = objc_alloc(MEMORY[0x277CD78C0]);
          v91 = [v6 targetProcessBundleShortVersion];
          v49 = [v90 initWithMetaData:v96 applicationVersion:v91 signpostData:v97 pid:objc_msgSend(v6 callStack:"targetProcessId") launchDuration:{v39, v44}];

          if (v49)
          {
            v54 = v94;
            v71 = v95;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              [MXSampleAnalysisParser constructPayloadWithReport:v49 withType:?];
            }

            v92 = @"appLaunchDiagnostic";
            goto LABEL_70;
          }

LABEL_62:
          v55 = 0;
          v54 = v94;
          v71 = v95;
          goto LABEL_50;
        }

        if (a4 != 2)
        {
          v55 = 0;
          v54 = v94;
          v71 = v34;
          goto LABEL_51;
        }
      }

      if (a4 == 2)
      {
        v62 = 1;
      }

      else
      {
        v62 = 2;
      }

      v63 = objc_alloc(MEMORY[0x277CCAB10]);
      v64 = [v6 eventTimeRange];
      [v64 deltaMachAbsTimeSeconds];
      v66 = v65;
      v67 = [MEMORY[0x277CCADD0] seconds];
      v44 = [v63 initWithDoubleValue:v67 unit:v66];

      v68 = objc_alloc(MEMORY[0x277CD79C0]);
      v69 = [v6 targetProcessBundleShortVersion];
      v49 = [v68 initWithMetaData:v96 applicationVersion:v69 signpostData:v97 pid:objc_msgSend(v6 callStack:"targetProcessId") hangDuration:v39 hangType:{v44, v62}];

      if (v49)
      {
        v70 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
        v54 = v94;
        if (a4 == 2)
        {
          v71 = v95;
          if (v70)
          {
            [MXSampleAnalysisParser constructPayloadWithReport:v49 withType:?];
          }
        }

        else
        {
          v71 = v95;
          if (v70)
          {
            [MXSampleAnalysisParser constructPayloadWithReport:v49 withType:?];
          }
        }

        v92 = @"hangDiagnostic";
LABEL_70:
        [v54 setObject:v49 forKey:v92];
        v55 = [[MXHangTracerData alloc] initPayloadDataWithDiagnostics:v54];
        goto LABEL_50;
      }

      goto LABEL_62;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    +[MXSampleAnalysisParser constructPayloadWithReport:withType:];
  }

  v24 = 0;
LABEL_55:

  v83 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (id)getCallStackForReport:(id)a3 withType:(int64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [v5 sampleStore];
  v8 = [v5 options];
  v9 = [v8 aggregateStacksByProcess];

  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [MXSampleAnalysisParser getCallStackForReport:v7 withType:?];
    }

    v10 = [v7 targetProcess];

    if (v10)
    {
      v11 = [v7 targetProcess];
      v10 = [v5 callTreeForTask:v11];

      v12 = [MXSampleAnalysisParser parseCallTree:v10 isAttributedThread:0];
      if (v12)
      {
        [v6 addObject:v12];
      }

      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v13 = [v5 options];
  v14 = [v13 printTargetThreadOnly];
  if (a4 & 0xFFFFFFFFFFFFFFFELL) == 2 || (v14)
  {

LABEL_15:
    v17 = [v7 targetProcess];
    v18 = [v17 threads];
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v7, "targetThreadId")}];
    v20 = [v18 objectForKeyedSubscript:v19];
    v21 = v20;
    if (v20)
    {
      v10 = v20;
    }

    else
    {
      v22 = [v7 targetProcess];
      v10 = [v22 mainThread];
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      +[MXSampleAnalysisParser getCallStackForReport:withType:];
      if (!v10)
      {
        goto LABEL_24;
      }
    }

    else if (!v10)
    {
      goto LABEL_24;
    }

    v23 = [v7 targetProcess];
    v12 = [v5 callTreeForThread:v10 inTask:v23];

    v24 = [MXSampleAnalysisParser parseCallTree:v12 isAttributedThread:1];
    if (v24)
    {
      [v6 addObject:v24];
    }

    goto LABEL_23;
  }

  if (a4 == 4)
  {
    goto LABEL_15;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [MXSampleAnalysisParser getCallStackForReport:v7 withType:?];
  }

  v10 = [v7 targetProcess];

  if (v10)
  {
    v15 = [v7 targetProcess];
    v10 = [v5 callTreesForThreadsInTask:v15];

    v16 = [v10 threadCallTrees];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __57__MXSampleAnalysisParser_getCallStackForReport_withType___block_invoke;
    v28[3] = &unk_2798C8970;
    v29 = v7;
    v30 = v6;
    [v16 enumerateObjectsUsingBlock:v28];

    v12 = v29;
LABEL_23:

    v25 = objc_alloc(MEMORY[0x277CD7940]);
    v26 = [v5 options];
    v10 = [v25 initWithThreadArray:v6 aggregatedByProcess:{objc_msgSend(v26, "aggregateStacksByProcess")}];
  }

LABEL_24:

  return v10;
}

void __57__MXSampleAnalysisParser_getCallStackForReport_withType___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 targetThreadId];
  v6 = [v4 thread];
  v7 = v5 == [v6 threadId];

  v9 = [MXSampleAnalysisParser parseCallTree:v4 isAttributedThread:v7];

  v8 = v9;
  if (v9)
  {
    [*(a1 + 40) addObject:v9];
    v8 = v9;
  }
}

uint64_t __59__MXSampleAnalysisParser_parseCallTree_isAttributedThread___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MXSampleAnalysisParser parseCallTreeFrame:a2 withDepth:0];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  return MEMORY[0x2821F96F8]();
}

+ (id)parseCallTreeFrame:(id)a3 withDepth:(unint64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (v5 && ([v5 frame], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    v9 = [v6 childFrames];

    v10 = 0;
    if (a4 <= 0x81 && v9)
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v12 = [v6 childFrames];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __55__MXSampleAnalysisParser_parseCallTreeFrame_withDepth___block_invoke;
      v26[3] = &unk_2798C89C0;
      v27 = v11;
      v28 = a4;
      v25 = v11;
      [v12 enumerateObjectsUsingBlock:v26];

      v13 = [v6 frame];
      v14 = [v13 instruction];

      v24 = [v14 binary];
      v23 = objc_alloc(MEMORY[0x277CD7930]);
      v15 = [v24 name];
      v16 = [v24 uuid];
      v17 = MEMORY[0x277CCABB0];
      v18 = [v6 frame];
      v19 = [v17 numberWithUnsignedLongLong:{objc_msgSend(v18, "address")}];
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v14, "offsetIntoTextSegment")}];
      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "sampleCount")}];
      v10 = [v23 initWithBinaryName:v15 binaryUUID:v16 address:v19 binaryOffset:v20 sampleCount:v21 withDepth:a4 subFrameArray:v25];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __55__MXSampleAnalysisParser_parseCallTreeFrame_withDepth___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MXSampleAnalysisParser parseCallTreeFrame:a2 withDepth:*(a1 + 40) + 1];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  return MEMORY[0x2821F96F8]();
}

+ (void)constructPayloadWithReport:withType:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)constructPayloadWithReport:(void *)a1 withType:(uint64_t)a2 .cold.6(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [a1 stringFromDate:a2];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)constructPayloadWithReport:(void *)a1 withType:.cold.7(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 totalWritesCaused];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)constructPayloadWithReport:(void *)a1 withType:.cold.8(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 totalCPUTime];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)constructPayloadWithReport:(void *)a1 withType:.cold.9(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 launchDuration];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)constructPayloadWithReport:(void *)a1 withType:.cold.10(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 hangDuration];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)constructPayloadWithReport:(void *)a1 withType:.cold.11(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 hangDuration];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)constructPayloadWithReport:withType:.cold.12()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)getCallStackForReport:(void *)a1 withType:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 targetProcess];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)getCallStackForReport:withType:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)getCallStackForReport:(void *)a1 withType:.cold.3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 targetProcess];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

@end