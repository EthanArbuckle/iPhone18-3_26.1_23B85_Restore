@interface MXSampleAnalysisParser
+ (id)constructPayloadWithReport:(id)report withType:(int64_t)type;
+ (id)getCallStackForReport:(id)report withType:(int64_t)type;
+ (id)parseCallTreeFrame:(id)frame withDepth:(unint64_t)depth;
+ (void)sendDiagnosticReport:(id)report forType:(int64_t)type forSourceID:(int64_t)d;
@end

@implementation MXSampleAnalysisParser

+ (void)sendDiagnosticReport:(id)report forType:(int64_t)type forSourceID:(int64_t)d
{
  reportCopy = report;
  v8 = reportCopy;
  if (reportCopy && ([reportCopy sampleStore], (v9 = objc_claimAutoreleasedReturnValue()) != 0) && (v10 = v9, objc_msgSend(v8, "options"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
  {
    v12 = [MXSampleAnalysisParser constructPayloadWithReport:v8 withType:type];
    if (v12)
    {
      date = [MEMORY[0x277CBEAA8] date];
      v14 = +[MXSourceManager sharedManager];
      [v14 sendDiagnostic:v12 forDate:date andSourceID:d];
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

+ (id)constructPayloadWithReport:(id)report withType:(int64_t)type
{
  v100[1] = *MEMORY[0x277D85DE8];
  reportCopy = report;
  sampleStore = [reportCopy sampleStore];
  targetProcess = [sampleStore targetProcess];
  bundleIdentifier = [targetProcess bundleIdentifier];

  if (bundleIdentifier)
  {
    targetProcess2 = [sampleStore targetProcess];
    v10 = +[MXSourceUtilities isMetricKitClient:forUser:](MXSourceUtilities, "isMetricKitClient:forUser:", bundleIdentifier, [targetProcess2 uid]);

    if (v10)
    {
      v11 = [MXSampleAnalysisParser getCallStackForReport:reportCopy withType:type];
      v12 = objc_alloc(MEMORY[0x277CD79F8]);
      targetProcessBundleVersion = [sampleStore targetProcessBundleVersion];
      targetProcess3 = [sampleStore targetProcess];
      bundleIdentifier2 = [targetProcess3 bundleIdentifier];
      v96 = [v12 initWithRegionFormat:&stru_286A1D018 osVersion:&stru_286A1D018 deviceType:&stru_286A1D018 appBuildVersion:targetProcessBundleVersion platformArchitecture:&stru_286A1D018 bundleID:bundleIdentifier2];

      v94 = objc_alloc_init(MEMORY[0x277CBEB38]);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        +[MXSampleAnalysisParser constructPayloadWithReport:withType:];
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        +[MXSampleAnalysisParser constructPayloadWithReport:withType:];
      }

      eventTimeRange = [sampleStore eventTimeRange];
      startTime = [eventTimeRange startTime];
      [startTime wallTime];
      v19 = v18;

      if (v19 != 0.0)
      {
        v20 = MEMORY[0x277CBEAA8];
        eventTimeRange2 = [sampleStore eventTimeRange];
        startTime3 = eventTimeRange2;
LABEL_9:
        startTime2 = [eventTimeRange2 startTime];
        [startTime2 wallTime];
        v98 = [v20 dateWithTimeIntervalSinceReferenceDate:?];

        goto LABEL_20;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        +[MXSampleAnalysisParser constructPayloadWithReport:withType:];
      }

      eventTimeRange3 = [sampleStore eventTimeRange];
      startTime3 = [eventTimeRange3 startTime];

      v26 = [sampleStore indexOfFirstSampleOnOrAfterTimestamp:startTime3];
      if (v26 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v27 = v26;
        sampleTimestamps = [sampleStore sampleTimestamps];
        v29 = [sampleTimestamps objectAtIndexedSubscript:v27];
        [startTime3 guessMissingTimesBasedOnTimestamp:v29];
      }

      [startTime3 wallTime];
      if (v30 == 0.0)
      {
        startTime4 = [sampleStore startTime];
        [startTime4 wallTime];
        v74 = v73;

        v75 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v74 != 0.0)
        {
          if (v75)
          {
            [(MXSampleAnalysisParser *)v75 constructPayloadWithReport:v76 withType:v77, v78, v79, v80, v81, v82];
          }

          v20 = MEMORY[0x277CBEAA8];
          eventTimeRange2 = sampleStore;
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
        [startTime3 wallTime];
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
      targetProcess4 = [sampleStore targetProcess];
      v36 = [targetProcess4 pid];
      targetProcess5 = [sampleStore targetProcess];
      bundleIdentifier3 = [targetProcess5 bundleIdentifier];
      v97 = [MXSourceUtilities getSignpostDataforPid:v36 forClient:bundleIdentifier3 andEventTimestamp:v98];

      if (type == 1)
      {
        v56 = objc_alloc(MEMORY[0x277CCAB10]);
        bytesWritten = [sampleStore bytesWritten];
        bytes = [MEMORY[0x277CCAE18] bytes];
        v44 = [v56 initWithDoubleValue:bytes unit:bytesWritten];

        megabytes = [MEMORY[0x277CCAE18] megabytes];
        v49 = [v44 measurementByConvertingToUnit:megabytes];

        v60 = objc_alloc(MEMORY[0x277CD7988]);
        targetProcessBundleShortVersion = [sampleStore targetProcessBundleShortVersion];
        v39 = v33;
        v53 = [v60 initWithMetaData:v96 applicationVersion:targetProcessBundleShortVersion signpostData:v97 pid:objc_msgSend(sampleStore totalWritesCaused:"targetProcessId") stackTrace:{v49, v33}];

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
      if (!type)
      {
        v40 = objc_alloc(MEMORY[0x277CCAB10]);
        [sampleStore cpuUsed];
        v42 = v41;
        seconds = [MEMORY[0x277CCADD0] seconds];
        v44 = [v40 initWithDoubleValue:seconds unit:v42];

        v45 = objc_alloc(MEMORY[0x277CCAB10]);
        [sampleStore cpuDuration];
        v47 = v46;
        seconds2 = [MEMORY[0x277CCADD0] seconds];
        v49 = [v45 initWithDoubleValue:seconds2 unit:v47];

        v50 = objc_alloc(MEMORY[0x277CD7918]);
        targetProcessBundleShortVersion2 = [sampleStore targetProcessBundleShortVersion];
        v52 = v96;
        v53 = [v50 initWithMetaData:v96 applicationVersion:targetProcessBundleShortVersion2 signpostData:v97 pid:objc_msgSend(sampleStore callStack:"targetProcessId") totalCpuTime:v39 totalSampledTime:{v44, v49}];

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
          v99 = bundleIdentifier;
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
      if (type != 4)
      {
        if (type == 3)
        {
          v85 = objc_alloc(MEMORY[0x277CCAB10]);
          eventTimeRange4 = [sampleStore eventTimeRange];
          [eventTimeRange4 deltaMachAbsTimeSeconds];
          v88 = v87;
          seconds3 = [MEMORY[0x277CCADD0] seconds];
          v44 = [v85 initWithDoubleValue:seconds3 unit:v88];

          v90 = objc_alloc(MEMORY[0x277CD78C0]);
          targetProcessBundleShortVersion3 = [sampleStore targetProcessBundleShortVersion];
          v49 = [v90 initWithMetaData:v96 applicationVersion:targetProcessBundleShortVersion3 signpostData:v97 pid:objc_msgSend(sampleStore callStack:"targetProcessId") launchDuration:{v39, v44}];

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

        if (type != 2)
        {
          v55 = 0;
          v54 = v94;
          v71 = v34;
          goto LABEL_51;
        }
      }

      if (type == 2)
      {
        v62 = 1;
      }

      else
      {
        v62 = 2;
      }

      v63 = objc_alloc(MEMORY[0x277CCAB10]);
      eventTimeRange5 = [sampleStore eventTimeRange];
      [eventTimeRange5 deltaMachAbsTimeSeconds];
      v66 = v65;
      seconds4 = [MEMORY[0x277CCADD0] seconds];
      v44 = [v63 initWithDoubleValue:seconds4 unit:v66];

      v68 = objc_alloc(MEMORY[0x277CD79C0]);
      targetProcessBundleShortVersion4 = [sampleStore targetProcessBundleShortVersion];
      v49 = [v68 initWithMetaData:v96 applicationVersion:targetProcessBundleShortVersion4 signpostData:v97 pid:objc_msgSend(sampleStore callStack:"targetProcessId") hangDuration:v39 hangType:{v44, v62}];

      if (v49)
      {
        v70 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
        v54 = v94;
        if (type == 2)
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

+ (id)getCallStackForReport:(id)report withType:(int64_t)type
{
  reportCopy = report;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  sampleStore = [reportCopy sampleStore];
  options = [reportCopy options];
  aggregateStacksByProcess = [options aggregateStacksByProcess];

  if (aggregateStacksByProcess)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [MXSampleAnalysisParser getCallStackForReport:sampleStore withType:?];
    }

    targetProcess = [sampleStore targetProcess];

    if (targetProcess)
    {
      targetProcess2 = [sampleStore targetProcess];
      targetProcess = [reportCopy callTreeForTask:targetProcess2];

      v12 = [MXSampleAnalysisParser parseCallTree:targetProcess isAttributedThread:0];
      if (v12)
      {
        [v6 addObject:v12];
      }

      goto LABEL_23;
    }

    goto LABEL_24;
  }

  options2 = [reportCopy options];
  printTargetThreadOnly = [options2 printTargetThreadOnly];
  if (type & 0xFFFFFFFFFFFFFFFELL) == 2 || (printTargetThreadOnly)
  {

LABEL_15:
    targetProcess3 = [sampleStore targetProcess];
    threads = [targetProcess3 threads];
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(sampleStore, "targetThreadId")}];
    v20 = [threads objectForKeyedSubscript:v19];
    v21 = v20;
    if (v20)
    {
      targetProcess = v20;
    }

    else
    {
      targetProcess4 = [sampleStore targetProcess];
      targetProcess = [targetProcess4 mainThread];
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      +[MXSampleAnalysisParser getCallStackForReport:withType:];
      if (!targetProcess)
      {
        goto LABEL_24;
      }
    }

    else if (!targetProcess)
    {
      goto LABEL_24;
    }

    targetProcess5 = [sampleStore targetProcess];
    v12 = [reportCopy callTreeForThread:targetProcess inTask:targetProcess5];

    v24 = [MXSampleAnalysisParser parseCallTree:v12 isAttributedThread:1];
    if (v24)
    {
      [v6 addObject:v24];
    }

    goto LABEL_23;
  }

  if (type == 4)
  {
    goto LABEL_15;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [MXSampleAnalysisParser getCallStackForReport:sampleStore withType:?];
  }

  targetProcess = [sampleStore targetProcess];

  if (targetProcess)
  {
    targetProcess6 = [sampleStore targetProcess];
    targetProcess = [reportCopy callTreesForThreadsInTask:targetProcess6];

    threadCallTrees = [targetProcess threadCallTrees];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __57__MXSampleAnalysisParser_getCallStackForReport_withType___block_invoke;
    v28[3] = &unk_2798C8970;
    v29 = sampleStore;
    v30 = v6;
    [threadCallTrees enumerateObjectsUsingBlock:v28];

    v12 = v29;
LABEL_23:

    v25 = objc_alloc(MEMORY[0x277CD7940]);
    options3 = [reportCopy options];
    targetProcess = [v25 initWithThreadArray:v6 aggregatedByProcess:{objc_msgSend(options3, "aggregateStacksByProcess")}];
  }

LABEL_24:

  return targetProcess;
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

+ (id)parseCallTreeFrame:(id)frame withDepth:(unint64_t)depth
{
  frameCopy = frame;
  v6 = frameCopy;
  if (frameCopy && ([frameCopy frame], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    childFrames = [v6 childFrames];

    v10 = 0;
    if (depth <= 0x81 && childFrames)
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
      childFrames2 = [v6 childFrames];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __55__MXSampleAnalysisParser_parseCallTreeFrame_withDepth___block_invoke;
      v26[3] = &unk_2798C89C0;
      v27 = v11;
      depthCopy = depth;
      v25 = v11;
      [childFrames2 enumerateObjectsUsingBlock:v26];

      frame = [v6 frame];
      instruction = [frame instruction];

      binary = [instruction binary];
      v23 = objc_alloc(MEMORY[0x277CD7930]);
      name = [binary name];
      uuid = [binary uuid];
      v17 = MEMORY[0x277CCABB0];
      frame2 = [v6 frame];
      v19 = [v17 numberWithUnsignedLongLong:{objc_msgSend(frame2, "address")}];
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(instruction, "offsetIntoTextSegment")}];
      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "sampleCount")}];
      v10 = [v23 initWithBinaryName:name binaryUUID:uuid address:v19 binaryOffset:v20 sampleCount:v21 withDepth:depth subFrameArray:v25];
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