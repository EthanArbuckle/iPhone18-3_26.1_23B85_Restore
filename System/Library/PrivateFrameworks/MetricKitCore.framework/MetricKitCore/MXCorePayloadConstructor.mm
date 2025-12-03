@interface MXCorePayloadConstructor
+ (id)buildDiagnosticPayloadForClient:(id)client fromClientDiagnosticsDictionary:(id)dictionary withDateString:(id)string;
+ (id)buildMetricPayloadForClient:(id)client fromClientMetricsDictionary:(id)dictionary;
+ (id)buildSampleDiagnosticPayloadForClient:(id)client withDateString:(id)string;
+ (id)buildSamplePayloadForClient:(id)client withDateString:(id)string;
+ (id)constructPayloadWithServiceString:(id)string withSourceData:(id)data withDateString:(id)dateString forClient:(id)client;
+ (id)updatePayload:(id)payload withServiceString:(id)string withSourceData:(id)data withDateString:(id)dateString forClient:(id)client;
@end

@implementation MXCorePayloadConstructor

+ (id)buildDiagnosticPayloadForClient:(id)client fromClientDiagnosticsDictionary:(id)dictionary withDateString:(id)string
{
  v100 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  dictionaryCopy = dictionary;
  stringCopy = string;
  v10 = os_log_create("com.apple.metrickit.core.payload", "constructor");
  v11 = [&unk_286A1BB08 objectAtIndexedSubscript:3];
  v12 = [dictionaryCopy objectForKey:v11];
  if (v12)
  {
    goto LABEL_4;
  }

  v12 = [&unk_286A1BB20 objectAtIndexedSubscript:4];
  v13 = [dictionaryCopy objectForKey:v12];
  if (v13)
  {

LABEL_4:
LABEL_5:
    v14 = v10;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      allKeys = [dictionaryCopy allKeys];
      *buf = 138412290;
      v99 = allKeys;
      _os_log_impl(&dword_258D6F000, v14, OS_LOG_TYPE_DEFAULT, "Constructing payload for data sources: %@", buf, 0xCu);
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      +[MXCorePayloadConstructor buildDiagnosticPayloadForClient:fromClientDiagnosticsDictionary:withDateString:];
    }

    v16 = objc_alloc_init(MEMORY[0x277CCA968]);
    v71 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
    [v16 setLocale:?];
    [v16 setDateFormat:@"yyyy-MM-dd HH:mm"];
    localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
    [v16 setTimeZone:localTimeZone];

    date = [MEMORY[0x277CBEAA8] date];
    v19 = [v16 stringFromDate:date];
    v78 = [v16 dateFromString:v19];

    date2 = [MEMORY[0x277CBEAA8] date];
    v21 = [v16 stringFromDate:date2];
    v72 = v16;
    v77 = [v16 dateFromString:v21];

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      +[MXCorePayloadConstructor buildDiagnosticPayloadForClient:fromClientDiagnosticsDictionary:withDateString:];
    }

    v73 = v10;
    v74 = stringCopy;
    v76 = clientCopy;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      +[MXCorePayloadConstructor buildDiagnosticPayloadForClient:fromClientDiagnosticsDictionary:withDateString:];
    }

    v22 = [&unk_286A1BB50 objectAtIndexedSubscript:4];
    v23 = [dictionaryCopy objectForKey:v22];

    v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v81 = v23;
    if (v23)
    {
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v26 = v23;
      v27 = [v26 countByEnumeratingWithState:&v91 objects:v97 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v92;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v92 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v91 + 1) + 8 * i);
            cpuExceptionDiagnostic = [v31 cpuExceptionDiagnostic];

            if (cpuExceptionDiagnostic)
            {
              cpuExceptionDiagnostic2 = [v31 cpuExceptionDiagnostic];
              [v24 addObject:cpuExceptionDiagnostic2];
            }

            diskWriteExceptionDiagnostic = [v31 diskWriteExceptionDiagnostic];

            if (diskWriteExceptionDiagnostic)
            {
              diskWriteExceptionDiagnostic2 = [v31 diskWriteExceptionDiagnostic];
              [v25 addObject:diskWriteExceptionDiagnostic2];
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v91 objects:v97 count:16];
        }

        while (v28);
      }
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      +[MXCorePayloadConstructor buildDiagnosticPayloadForClient:fromClientDiagnosticsDictionary:withDateString:];
    }

    v36 = [&unk_286A1BB68 objectAtIndexedSubscript:3];
    v37 = [dictionaryCopy objectForKey:v36];

    v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v82 = v24;
    v79 = v37;
    v80 = v14;
    if (v37)
    {
      v40 = dictionaryCopy;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v41 = v37;
      v42 = [v41 countByEnumeratingWithState:&v87 objects:v96 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v88;
        do
        {
          for (j = 0; j != v43; ++j)
          {
            if (*v88 != v44)
            {
              objc_enumerationMutation(v41);
            }

            v46 = *(*(&v87 + 1) + 8 * j);
            hangDiagnostic = [v46 hangDiagnostic];

            if (hangDiagnostic)
            {
              hangDiagnostic2 = [v46 hangDiagnostic];
              [v38 addObject:hangDiagnostic2];
            }

            appLaunchDiagnostic = [v46 appLaunchDiagnostic];

            if (appLaunchDiagnostic)
            {
              appLaunchDiagnostic2 = [v46 appLaunchDiagnostic];
              [v39 addObject:appLaunchDiagnostic2];
            }
          }

          v43 = [v41 countByEnumeratingWithState:&v87 objects:v96 count:16];
        }

        while (v43);
      }

      dictionaryCopy = v40;
      v37 = v79;
      v14 = v80;
      v24 = v82;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      +[MXCorePayloadConstructor buildDiagnosticPayloadForClient:fromClientDiagnosticsDictionary:withDateString:];
    }

    v51 = [&unk_286A1BB80 objectAtIndexedSubscript:5];
    v75 = dictionaryCopy;
    v52 = [dictionaryCopy objectForKey:v51];

    v53 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v52)
    {
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v70 = v52;
      v54 = v52;
      v55 = [v54 countByEnumeratingWithState:&v83 objects:v95 count:16];
      if (v55)
      {
        v56 = v55;
        v57 = *v84;
        do
        {
          for (k = 0; k != v56; ++k)
          {
            if (*v84 != v57)
            {
              objc_enumerationMutation(v54);
            }

            v59 = *(*(&v83 + 1) + 8 * k);
            crashDiagnostic = [v59 crashDiagnostic];

            if (crashDiagnostic)
            {
              crashDiagnostic2 = [v59 crashDiagnostic];
              [v53 addObject:crashDiagnostic2];
            }
          }

          v56 = [v54 countByEnumeratingWithState:&v83 objects:v95 count:16];
        }

        while (v56);
      }

      v37 = v79;
      v14 = v80;
      v24 = v82;
      v52 = v70;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      +[MXCorePayloadConstructor buildDiagnosticPayloadForClient:fromClientDiagnosticsDictionary:withDateString:];
    }

    v62 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v63 = [v24 count];
    v64 = v24;
    if (v63)
    {
      [v62 setObject:v24 forKey:@"cpuExceptionDiagnostics"];
    }

    if ([v25 count])
    {
      [v62 setObject:v25 forKey:@"diskWriteExceptionDiagnostics"];
    }

    if ([v38 count])
    {
      [v62 setObject:v38 forKey:@"hangDiagnostics"];
    }

    if ([v39 count])
    {
      [v62 setObject:v39 forKey:@"appLaunchDiagnostics"];
    }

    if ([v53 count])
    {
      [v62 setObject:v53 forKey:@"crashDiagnostics"];
    }

    if ([v62 count])
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        +[MXCorePayloadConstructor buildDiagnosticPayloadForClient:fromClientDiagnosticsDictionary:withDateString:];
      }

      v65 = [objc_alloc(MEMORY[0x277CD7968]) initWithTimeStampBegin:v78 withTimeStampEnd:v77 withDiagnostics:v62];
    }

    else
    {
      v65 = 0;
    }

    dictionaryCopy = v75;
    clientCopy = v76;
    v10 = v73;
    stringCopy = v74;
    goto LABEL_72;
  }

  v68 = [&unk_286A1BB38 objectAtIndexedSubscript:5];
  v69 = [dictionaryCopy objectForKey:v68];

  if (v69)
  {
    goto LABEL_5;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    +[MXCorePayloadConstructor buildDiagnosticPayloadForClient:fromClientDiagnosticsDictionary:withDateString:];
  }

  v65 = 0;
LABEL_72:

  v66 = *MEMORY[0x277D85DE8];

  return v65;
}

+ (id)buildMetricPayloadForClient:(id)client fromClientMetricsDictionary:(id)dictionary
{
  v49 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  dictionaryCopy = dictionary;
  oslog = os_log_create("com.apple.metrickit.core.payload", "constructor");
  v6 = [&unk_286A1BB98 objectAtIndexedSubscript:2];
  v7 = [dictionaryCopy objectForKey:v6];
  if (v7)
  {

LABEL_4:
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v28 = dictionaryCopy;
    obj = dictionaryCopy;
    v30 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
    if (v30)
    {
      v29 = *v40;
      do
      {
        v11 = 0;
        do
        {
          if (*v40 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v32 = v11;
          v12 = *(*(&v39 + 1) + 8 * v11);
          v13 = [obj objectForKeyedSubscript:v12];
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v44 = v13;
            _os_log_debug_impl(&dword_258D6F000, oslog, OS_LOG_TYPE_DEBUG, "Service data to parse: %@", buf, 0xCu);
          }

          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v14 = v13;
          v15 = [v14 countByEnumeratingWithState:&v35 objects:v47 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v36;
            do
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v36 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v35 + 1) + 8 * i);
                v20 = [v10 objectForKeyedSubscript:v19];

                if (v20)
                {
                  v21 = [v10 objectForKeyedSubscript:v19];
                  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412546;
                    v44 = v21;
                    v45 = 2112;
                    v46 = v19;
                    _os_log_debug_impl(&dword_258D6F000, oslog, OS_LOG_TYPE_DEBUG, "Payload: %@ exists for date string: %@", buf, 0x16u);
                  }

                  v22 = [v14 objectForKeyedSubscript:v19];
                  v23 = [MXCorePayloadConstructor updatePayload:v21 withServiceString:v12 withSourceData:v22 withDateString:v19 forClient:clientCopy];
                  [v10 setObject:v23 forKeyedSubscript:v19];
                }

                else
                {
                  v21 = [v14 objectForKeyedSubscript:v19];
                  v22 = [MXCorePayloadConstructor constructPayloadWithServiceString:v12 withSourceData:v21 withDateString:v19 forClient:clientCopy];
                  [v10 setObject:v22 forKeyedSubscript:v19];
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v35 objects:v47 count:16];
            }

            while (v16);
          }

          v11 = v32 + 1;
        }

        while (v32 + 1 != v30);
        v30 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
      }

      while (v30);
    }

    v24 = oslog;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [MXCorePayloadConstructor buildMetricPayloadForClient:v10 fromClientMetricsDictionary:?];
    }

    allValues = [v10 allValues];

    dictionaryCopy = v28;
    goto LABEL_28;
  }

  v8 = [&unk_286A1BBB0 objectAtIndexedSubscript:6];
  v9 = [dictionaryCopy objectForKey:v8];

  if (v9)
  {
    goto LABEL_4;
  }

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    +[MXCorePayloadConstructor buildMetricPayloadForClient:fromClientMetricsDictionary:];
  }

  allValues = 0;
LABEL_28:

  v26 = *MEMORY[0x277D85DE8];

  return allValues;
}

+ (id)updatePayload:(id)payload withServiceString:(id)string withSourceData:(id)data withDateString:(id)dateString forClient:(id)client
{
  payloadCopy = payload;
  stringCopy = string;
  dataCopy = data;
  v12 = os_log_create("com.apple.metrickit.core.payload", "Payload Updater");
  v13 = v12;
  if (payloadCopy)
  {
    v14 = payloadCopy;
    v15 = [&unk_286A1BBC8 objectAtIndexedSubscript:2];
    v16 = [stringCopy isEqualToString:v15];

    if (v16)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        +[MXCorePayloadConstructor updatePayload:withServiceString:withSourceData:withDateString:forClient:];
      }

      v17 = dataCopy;
      if (v17)
      {
        v18 = v17;
        v19 = v13;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          +[MXCorePayloadConstructor updatePayload:withServiceString:withSourceData:withDateString:forClient:];
        }

        cpuMetrics = [v18 cpuMetrics];
        [v14 setCpuMetrics:cpuMetrics];

        gpuMetrics = [v18 gpuMetrics];
        [v14 setGpuMetrics:gpuMetrics];

        cellularConditionMetrics = [v18 cellularConditionMetrics];
        [v14 setCellularConditionMetrics:cellularConditionMetrics];

        applicationTimeMetrics = [v18 applicationTimeMetrics];
        [v14 setApplicationTimeMetrics:applicationTimeMetrics];

        locationActivityMetrics = [v18 locationActivityMetrics];
        [v14 setLocationActivityMetrics:locationActivityMetrics];

        networkTransferMetrics = [v18 networkTransferMetrics];
        [v14 setNetworkTransferMetrics:networkTransferMetrics];

        applicationLaunchMetrics = [v18 applicationLaunchMetrics];
        [v14 setApplicationLaunchMetrics:applicationLaunchMetrics];

        applicationResponsivenessMetrics = [v18 applicationResponsivenessMetrics];
        [v14 setApplicationResponsivenessMetrics:applicationResponsivenessMetrics];

        diskIOMetrics = [v18 diskIOMetrics];
        [v14 setDiskIOMetrics:diskIOMetrics];

        displayMetrics = [v18 displayMetrics];
        [v14 setDisplayMetrics:displayMetrics];

        memoryMetrics = [v18 memoryMetrics];
        [v14 setMemoryMetrics:memoryMetrics];

        signpostMetrics = [v18 signpostMetrics];
        [v14 setSignpostMetrics:signpostMetrics];

        animationMetrics = [v18 animationMetrics];
        [v14 setAnimationMetrics:animationMetrics];

        applicationExitMetrics = [v18 applicationExitMetrics];
        [v14 setApplicationExitMetrics:applicationExitMetrics];

        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          +[MXCorePayloadConstructor updatePayload:withServiceString:withSourceData:withDateString:forClient:];
        }

LABEL_21:

        goto LABEL_22;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        +[MXCorePayloadConstructor updatePayload:withServiceString:withSourceData:withDateString:forClient:];
      }
    }

    else
    {
      v35 = [&unk_286A1BBE0 objectAtIndexedSubscript:6];
      v36 = [stringCopy isEqualToString:v35];

      if (!v36)
      {
LABEL_22:
        v34 = v14;
LABEL_28:

        goto LABEL_29;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        +[MXCorePayloadConstructor updatePayload:withServiceString:withSourceData:withDateString:forClient:];
      }

      v37 = dataCopy;
      if (v37)
      {
        v38 = v37;
        v39 = v13;
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          +[MXCorePayloadConstructor updatePayload:withServiceString:withSourceData:withDateString:forClient:];
        }

        diskSpaceUsageMetrics = [v38 diskSpaceUsageMetrics];
        [v14 setDiskSpaceUsageMetrics:diskSpaceUsageMetrics];

        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          +[MXCorePayloadConstructor updatePayload:withServiceString:withSourceData:withDateString:forClient:];
        }

        goto LABEL_21;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        +[MXCorePayloadConstructor updatePayload:withServiceString:withSourceData:withDateString:forClient:];
      }
    }

    v34 = 0;
    goto LABEL_28;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    +[MXCorePayloadConstructor updatePayload:withServiceString:withSourceData:withDateString:forClient:];
  }

  v34 = 0;
LABEL_29:

  return v34;
}

+ (id)constructPayloadWithServiceString:(id)string withSourceData:(id)data withDateString:(id)dateString forClient:(id)client
{
  stringCopy = string;
  dataCopy = data;
  clientCopy = client;
  v11 = os_log_create("com.apple.metrickit.core.payload", "Payload Constructor");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    +[MXCorePayloadConstructor constructPayloadWithServiceString:withSourceData:withDateString:forClient:];
  }

  v12 = objc_alloc(MEMORY[0x277CD7A00]);
  v66 = 0;
  v13 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:clientCopy allowPlaceholder:0 error:&v66];
  v62 = v66;
  v63 = clientCopy;
  if (v62)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[MXCorePayloadConstructor constructPayloadWithServiceString:withSourceData:withDateString:forClient:];
    }

    v13 = 0;
  }

  shortVersionString = [v13 shortVersionString];
  if (shortVersionString)
  {
    [v13 shortVersionString];
  }

  else
  {
    [v13 bundleVersion];
  }
  v65 = ;

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    +[MXCorePayloadConstructor constructPayloadWithServiceString:withSourceData:withDateString:forClient:];
  }

  exactBundleVersion = [v13 exactBundleVersion];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    +[MXCorePayloadConstructor constructPayloadWithServiceString:withSourceData:withDateString:forClient:];
  }

  v64 = dataCopy;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    +[MXCorePayloadConstructor constructPayloadWithServiceString:withSourceData:withDateString:forClient:];
  }

  v16 = objc_alloc(MEMORY[0x277CD79F8]);
  regionFormat = [MEMORY[0x277D28708] regionFormat];
  osVersion = [MEMORY[0x277D28708] osVersion];
  modelIdentifier = [MEMORY[0x277D28708] modelIdentifier];
  platformArchitecture = [MEMORY[0x277D28708] platformArchitecture];
  v21 = [v16 initWithRegionFormat:regionFormat osVersion:osVersion deviceType:modelIdentifier appBuildVersion:exactBundleVersion platformArchitecture:platformArchitecture];

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    +[MXCorePayloadConstructor constructPayloadWithServiceString:withSourceData:withDateString:forClient:];
  }

  v22 = [&unk_286A1BBF8 objectAtIndexedSubscript:2];
  v23 = [stringCopy isEqualToString:v22];

  if (v23)
  {
    v61 = v21;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      +[MXCorePayloadConstructor constructPayloadWithServiceString:withSourceData:withDateString:forClient:];
    }

    v24 = v64;
    v25 = v64;
    if (v25)
    {
      v26 = v25;
      v60 = stringCopy;
      v27 = v11;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        +[MXCorePayloadConstructor constructPayloadWithServiceString:withSourceData:withDateString:forClient:];
      }

      v28 = v12;
      includesMultipleApplicationVersions = [v26 includesMultipleApplicationVersions];
      beginDate = [v26 beginDate];
      endDate = [v26 endDate];
      v32 = [v28 initWithAppVersion:v65 withMutipleAppVersions:includesMultipleApplicationVersions withTimeStampBegin:beginDate withTimeStampEnd:endDate];

      cpuMetrics = [v26 cpuMetrics];
      [v32 setCpuMetrics:cpuMetrics];

      gpuMetrics = [v26 gpuMetrics];
      [v32 setGpuMetrics:gpuMetrics];

      cellularConditionMetrics = [v26 cellularConditionMetrics];
      [v32 setCellularConditionMetrics:cellularConditionMetrics];

      applicationTimeMetrics = [v26 applicationTimeMetrics];
      [v32 setApplicationTimeMetrics:applicationTimeMetrics];

      locationActivityMetrics = [v26 locationActivityMetrics];
      [v32 setLocationActivityMetrics:locationActivityMetrics];

      networkTransferMetrics = [v26 networkTransferMetrics];
      [v32 setNetworkTransferMetrics:networkTransferMetrics];

      applicationLaunchMetrics = [v26 applicationLaunchMetrics];
      [v32 setApplicationLaunchMetrics:applicationLaunchMetrics];

      applicationResponsivenessMetrics = [v26 applicationResponsivenessMetrics];
      [v32 setApplicationResponsivenessMetrics:applicationResponsivenessMetrics];

      diskIOMetrics = [v26 diskIOMetrics];
      [v32 setDiskIOMetrics:diskIOMetrics];

      displayMetrics = [v26 displayMetrics];
      [v32 setDisplayMetrics:displayMetrics];

      memoryMetrics = [v26 memoryMetrics];
      [v32 setMemoryMetrics:memoryMetrics];

      signpostMetrics = [v26 signpostMetrics];
      [v32 setSignpostMetrics:signpostMetrics];

      animationMetrics = [v26 animationMetrics];
      [v32 setAnimationMetrics:animationMetrics];

      applicationExitMetrics = [v26 applicationExitMetrics];
      [v32 setApplicationExitMetrics:applicationExitMetrics];

      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        +[MXCorePayloadConstructor constructPayloadWithServiceString:withSourceData:withDateString:forClient:];
      }

LABEL_34:
      stringCopy = v60;
      v57 = v61;
      v24 = v64;

      [v32 setMetaData:v61];
      v12 = v32;
      v58 = v12;
      goto LABEL_43;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[MXCorePayloadConstructor updatePayload:withServiceString:withSourceData:withDateString:forClient:];
    }

    v58 = 0;
    v57 = v61;
  }

  else
  {
    v47 = [&unk_286A1BC10 objectAtIndexedSubscript:6];
    v48 = [stringCopy isEqualToString:v47];

    if (v48)
    {
      v24 = v64;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        +[MXCorePayloadConstructor constructPayloadWithServiceString:withSourceData:withDateString:forClient:];
      }

      v49 = v64;
      if (v49)
      {
        v50 = v49;
        v60 = stringCopy;
        v61 = v21;
        v51 = v11;
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          +[MXCorePayloadConstructor constructPayloadWithServiceString:withSourceData:withDateString:forClient:];
        }

        v52 = v12;
        includesMultipleApplicationVersions2 = [v50 includesMultipleApplicationVersions];
        beginDate2 = [v50 beginDate];
        endDate2 = [v50 endDate];
        v32 = [v52 initWithAppVersion:v65 withMutipleAppVersions:includesMultipleApplicationVersions2 withTimeStampBegin:beginDate2 withTimeStampEnd:endDate2];

        diskSpaceUsageMetrics = [v50 diskSpaceUsageMetrics];
        [v32 setDiskSpaceUsageMetrics:diskSpaceUsageMetrics];

        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          +[MXCorePayloadConstructor constructPayloadWithServiceString:withSourceData:withDateString:forClient:];
        }

        goto LABEL_34;
      }

      v57 = v21;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[MXCorePayloadConstructor updatePayload:withServiceString:withSourceData:withDateString:forClient:];
      }
    }

    else
    {
      v57 = v21;
      v24 = v64;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[MXCorePayloadConstructor constructPayloadWithServiceString:withSourceData:withDateString:forClient:];
      }
    }

    v58 = 0;
  }

LABEL_43:

  return v58;
}

+ (id)buildSamplePayloadForClient:(id)client withDateString:(id)string
{
  v348[3] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CD7A00];
  stringCopy = string;
  clientCopy = client;
  v307 = [v5 alloc];
  v8 = objc_alloc_init(MEMORY[0x277CCA968]);
  v311 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [v8 setLocale:?];
  [v8 setDateFormat:@"yyyy-MM-dd HH:mm"];
  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  [v8 setTimeZone:localTimeZone];

  v10 = [stringCopy stringByAppendingString:@" 00:00"];
  v338 = [v8 dateFromString:v10];

  v11 = [stringCopy stringByAppendingString:@" 23:59"];

  v312 = v8;
  v337 = [v8 dateFromString:v11];

  v339 = 0;
  v12 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:clientCopy allowPlaceholder:0 error:&v339];

  v310 = v339;
  if (v310)
  {

    v12 = 0;
  }

  shortVersionString = [v12 shortVersionString];
  if (shortVersionString)
  {
    [v12 shortVersionString];
  }

  else
  {
    [v12 bundleVersion];
  }
  v336 = ;

  bundleVersion = [v12 bundleVersion];
  v14 = objc_alloc(MEMORY[0x277CD79F8]);
  [MEMORY[0x277D28708] regionFormat];
  v15 = v309 = v12;
  osVersion = [MEMORY[0x277D28708] osVersion];
  modelIdentifier = [MEMORY[0x277D28708] modelIdentifier];
  platformArchitecture = [MEMORY[0x277D28708] platformArchitecture];
  v335 = [v14 initWithRegionFormat:v15 osVersion:osVersion deviceType:modelIdentifier appBuildVersion:bundleVersion platformArchitecture:platformArchitecture];

  v19 = objc_alloc(MEMORY[0x277CD7928]);
  v20 = objc_alloc(MEMORY[0x277CCAB10]);
  seconds = [MEMORY[0x277CCADD0] seconds];
  v22 = [v20 initWithDoubleValue:seconds unit:100.0];
  v23 = objc_alloc(MEMORY[0x277CCAB10]);
  v24 = [objc_alloc(MEMORY[0x277CCAD98]) initWithSymbol:@"kiloinstructions"];
  v25 = [v23 initWithDoubleValue:v24 unit:100.0];
  v334 = [v19 initWithCumulativeCPUTimeMeasurement:v22 withCumulativeCPUInstructions:v25];

  v26 = objc_alloc(MEMORY[0x277CD79B0]);
  v27 = objc_alloc(MEMORY[0x277CCAB10]);
  seconds2 = [MEMORY[0x277CCADD0] seconds];
  v29 = [v27 initWithDoubleValue:seconds2 unit:20.0];
  v333 = [v26 initWithCumulativeGPUTimeMeasurement:v29];

  v30 = objc_alloc(MEMORY[0x277CD79D0]);
  v31 = objc_alloc(MEMORY[0x277CCAB10]);
  bars = [MEMORY[0x277CD7A58] bars];
  v33 = [v31 initWithDoubleValue:bars unit:1.0];
  v34 = objc_alloc(MEMORY[0x277CCAB10]);
  bars2 = [MEMORY[0x277CD7A58] bars];
  v36 = [v34 initWithDoubleValue:bars2 unit:1.0];
  v306 = [v30 initWithBucketStart:v33 bucketEnd:v36 bucketCount:20];

  v37 = objc_alloc(MEMORY[0x277CD79D0]);
  v38 = objc_alloc(MEMORY[0x277CCAB10]);
  bars3 = [MEMORY[0x277CD7A58] bars];
  v40 = [v38 initWithDoubleValue:bars3 unit:2.0];
  v41 = objc_alloc(MEMORY[0x277CCAB10]);
  bars4 = [MEMORY[0x277CD7A58] bars];
  v43 = [v41 initWithDoubleValue:bars4 unit:2.0];
  v305 = [v37 initWithBucketStart:v40 bucketEnd:v43 bucketCount:30];

  v44 = objc_alloc(MEMORY[0x277CD79D0]);
  v45 = objc_alloc(MEMORY[0x277CCAB10]);
  bars5 = [MEMORY[0x277CD7A58] bars];
  v47 = [v45 initWithDoubleValue:bars5 unit:3.0];
  v48 = objc_alloc(MEMORY[0x277CCAB10]);
  bars6 = [MEMORY[0x277CD7A58] bars];
  v50 = [v48 initWithDoubleValue:bars6 unit:3.0];
  v304 = [v44 initWithBucketStart:v47 bucketEnd:v50 bucketCount:50];

  v51 = objc_alloc(MEMORY[0x277CD7948]);
  v348[0] = v306;
  v348[1] = v305;
  v348[2] = v304;
  v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v348 count:3];
  v332 = [v51 initWithCellularConditionTime:v52];

  v53 = objc_alloc(MEMORY[0x277CD78E8]);
  v54 = objc_alloc(MEMORY[0x277CCAB10]);
  seconds3 = [MEMORY[0x277CCADD0] seconds];
  v56 = [v54 initWithDoubleValue:seconds3 unit:700.0];
  v57 = objc_alloc(MEMORY[0x277CCAB10]);
  seconds4 = [MEMORY[0x277CCADD0] seconds];
  v59 = [v57 initWithDoubleValue:seconds4 unit:40.0];
  v60 = objc_alloc(MEMORY[0x277CCAB10]);
  seconds5 = [MEMORY[0x277CCADD0] seconds];
  v62 = [v60 initWithDoubleValue:seconds5 unit:30.0];
  v63 = objc_alloc(MEMORY[0x277CCAB10]);
  seconds6 = [MEMORY[0x277CCADD0] seconds];
  v65 = [v63 initWithDoubleValue:seconds6 unit:30.0];
  v331 = [v53 initWithCumulativeForegroundTimeMeasurement:v56 cumulativeBackgroundTimeMeasurement:v59 cumulativeBackgroundAudioTimeMeasurement:v62 cumulativeBackgroundLocationTimeMeasurement:v65];

  v329 = objc_alloc(MEMORY[0x277CD79D8]);
  v66 = objc_alloc(MEMORY[0x277CCAB10]);
  seconds7 = [MEMORY[0x277CCADD0] seconds];
  v323 = [v66 initWithDoubleValue:seconds7 unit:30.0];
  v67 = objc_alloc(MEMORY[0x277CCAB10]);
  seconds8 = [MEMORY[0x277CCADD0] seconds];
  v68 = [v67 initWithDoubleValue:seconds8 unit:20.0];
  v69 = objc_alloc(MEMORY[0x277CCAB10]);
  seconds9 = [MEMORY[0x277CCADD0] seconds];
  v71 = [v69 initWithDoubleValue:seconds9 unit:30.0];
  v72 = objc_alloc(MEMORY[0x277CCAB10]);
  seconds10 = [MEMORY[0x277CCADD0] seconds];
  v74 = [v72 initWithDoubleValue:seconds10 unit:30.0];
  v75 = objc_alloc(MEMORY[0x277CCAB10]);
  seconds11 = [MEMORY[0x277CCADD0] seconds];
  v77 = [v75 initWithDoubleValue:seconds11 unit:20.0];
  v78 = objc_alloc(MEMORY[0x277CCAB10]);
  seconds12 = [MEMORY[0x277CCADD0] seconds];
  v80 = [v78 initWithDoubleValue:seconds12 unit:20.0];
  v330 = [v329 initWithCumulativeBestAccuracyTimeMeasurement:v323 cumulativeBestAccuracyForNavigationTimeMeasurement:v68 nearestTenMetersAccuracyTimeMeasurement:v71 hundredMetersAccuracyTimeMeasurement:v74 kilometerAccuracyTimeMeasurement:v77 threeKilometerAccuracyTimeMeasurement:v80];

  v81 = objc_alloc(MEMORY[0x277CD7A08]);
  v82 = objc_alloc(MEMORY[0x277CCAB10]);
  kilobytes = [MEMORY[0x277CCAE18] kilobytes];
  v84 = [v82 initWithDoubleValue:kilobytes unit:50000.0];
  v85 = objc_alloc(MEMORY[0x277CCAB10]);
  kilobytes2 = [MEMORY[0x277CCAE18] kilobytes];
  v87 = [v85 initWithDoubleValue:kilobytes2 unit:60000.0];
  v88 = objc_alloc(MEMORY[0x277CCAB10]);
  kilobytes3 = [MEMORY[0x277CCAE18] kilobytes];
  v90 = [v88 initWithDoubleValue:kilobytes3 unit:70000.0];
  v91 = objc_alloc(MEMORY[0x277CCAB10]);
  kilobytes4 = [MEMORY[0x277CCAE18] kilobytes];
  v93 = [v91 initWithDoubleValue:kilobytes4 unit:80000.0];
  v328 = [v81 initWithCumulativeWifiUploadMeasurement:v84 cumulativeWifiDownloadMeasurement:v87 cumulativeCellularUploadMeasurement:v90 cumulativeCellularDownloadMeasurement:v93];

  v94 = objc_alloc(MEMORY[0x277CD79D0]);
  v95 = objc_alloc(MEMORY[0x277CCAB10]);
  milliseconds = [MEMORY[0x277CCADD0] milliseconds];
  v97 = [v95 initWithDoubleValue:milliseconds unit:0.0];
  v98 = objc_alloc(MEMORY[0x277CCAB10]);
  milliseconds2 = [MEMORY[0x277CCADD0] milliseconds];
  v100 = [v98 initWithDoubleValue:milliseconds2 unit:100.0];
  v303 = [v94 initWithBucketStart:v97 bucketEnd:v100 bucketCount:50];

  v101 = objc_alloc(MEMORY[0x277CD79D0]);
  v102 = objc_alloc(MEMORY[0x277CCAB10]);
  milliseconds3 = [MEMORY[0x277CCADD0] milliseconds];
  v104 = [v102 initWithDoubleValue:milliseconds3 unit:100.0];
  v105 = objc_alloc(MEMORY[0x277CCAB10]);
  milliseconds4 = [MEMORY[0x277CCADD0] milliseconds];
  v107 = [v105 initWithDoubleValue:milliseconds4 unit:400.0];
  v302 = [v101 initWithBucketStart:v104 bucketEnd:v107 bucketCount:60];

  v108 = objc_alloc(MEMORY[0x277CD79D0]);
  v109 = objc_alloc(MEMORY[0x277CCAB10]);
  milliseconds5 = [MEMORY[0x277CCADD0] milliseconds];
  v111 = [v109 initWithDoubleValue:milliseconds5 unit:400.0];
  v112 = objc_alloc(MEMORY[0x277CCAB10]);
  milliseconds6 = [MEMORY[0x277CCADD0] milliseconds];
  v114 = [v112 initWithDoubleValue:milliseconds6 unit:700.0];
  v301 = [v108 initWithBucketStart:v111 bucketEnd:v114 bucketCount:30];

  v115 = objc_alloc(MEMORY[0x277CD78D8]);
  v347[0] = v303;
  v347[1] = v302;
  v347[2] = v301;
  v116 = [MEMORY[0x277CBEA60] arrayWithObjects:v347 count:3];
  v326 = [v115 initWithAppResponsivenessData:v116];

  v117 = objc_alloc(MEMORY[0x277CD7970]);
  v118 = objc_alloc(MEMORY[0x277CCAB10]);
  kilobytes5 = [MEMORY[0x277CCAE18] kilobytes];
  v120 = [v118 initWithDoubleValue:kilobytes5 unit:1300.0];
  v324 = [v117 initWithCumulativeLogicalWritesMeasurement:v120];

  v121 = objc_alloc(MEMORY[0x277CD79F0]);
  v122 = objc_alloc(MEMORY[0x277CCAB10]);
  kilobytes6 = [MEMORY[0x277CCAE18] kilobytes];
  v124 = [v122 initWithDoubleValue:kilobytes6 unit:200000.0];
  v125 = objc_alloc(MEMORY[0x277CD78F8]);
  v126 = objc_alloc(MEMORY[0x277CCAB10]);
  kilobytes7 = [MEMORY[0x277CCAE18] kilobytes];
  v128 = [v126 initWithDoubleValue:kilobytes7 unit:100000.0];
  v129 = [v125 initWithMeasurement:v128 sampleCount:500 standardDeviation:0.0];
  v300 = [v121 initWithPeakMemoryUsageMeasurement:v124 averageMemoryUsageMeasurement:v129];

  v130 = objc_alloc(MEMORY[0x277CD79D0]);
  v131 = objc_alloc(MEMORY[0x277CCAB10]);
  milliseconds7 = [MEMORY[0x277CCADD0] milliseconds];
  v133 = [v131 initWithDoubleValue:milliseconds7 unit:0.0];
  v134 = objc_alloc(MEMORY[0x277CCAB10]);
  milliseconds8 = [MEMORY[0x277CCADD0] milliseconds];
  v136 = [v134 initWithDoubleValue:milliseconds8 unit:100.0];
  v319 = [v130 initWithBucketStart:v133 bucketEnd:v136 bucketCount:50];

  v137 = objc_alloc(MEMORY[0x277CD79D0]);
  v138 = objc_alloc(MEMORY[0x277CCAB10]);
  milliseconds9 = [MEMORY[0x277CCADD0] milliseconds];
  v140 = [v138 initWithDoubleValue:milliseconds9 unit:100.0];
  v141 = objc_alloc(MEMORY[0x277CCAB10]);
  milliseconds10 = [MEMORY[0x277CCADD0] milliseconds];
  v143 = [v141 initWithDoubleValue:milliseconds10 unit:400.0];
  v299 = [v137 initWithBucketStart:v140 bucketEnd:v143 bucketCount:60];

  v144 = objc_alloc(MEMORY[0x277CD79D0]);
  v145 = objc_alloc(MEMORY[0x277CCAB10]);
  milliseconds11 = [MEMORY[0x277CCADD0] milliseconds];
  v147 = [v145 initWithDoubleValue:milliseconds11 unit:400.0];
  v148 = objc_alloc(MEMORY[0x277CCAB10]);
  milliseconds12 = [MEMORY[0x277CCADD0] milliseconds];
  v150 = [v148 initWithDoubleValue:milliseconds12 unit:700.0];
  v298 = [v144 initWithBucketStart:v147 bucketEnd:v150 bucketCount:30];

  v151 = objc_alloc(MEMORY[0x277CD79D0]);
  v152 = objc_alloc(MEMORY[0x277CCAB10]);
  milliseconds13 = [MEMORY[0x277CCADD0] milliseconds];
  v154 = [v152 initWithDoubleValue:milliseconds13 unit:0.0];
  v155 = objc_alloc(MEMORY[0x277CCAB10]);
  milliseconds14 = [MEMORY[0x277CCADD0] milliseconds];
  v157 = [v155 initWithDoubleValue:milliseconds14 unit:200.0];
  v322 = [v151 initWithBucketStart:v154 bucketEnd:v157 bucketCount:60];

  v158 = objc_alloc(MEMORY[0x277CD79D0]);
  v159 = objc_alloc(MEMORY[0x277CCAB10]);
  milliseconds15 = [MEMORY[0x277CCADD0] milliseconds];
  v161 = [v159 initWithDoubleValue:milliseconds15 unit:201.0];
  v162 = objc_alloc(MEMORY[0x277CCAB10]);
  milliseconds16 = [MEMORY[0x277CCADD0] milliseconds];
  v164 = [v162 initWithDoubleValue:milliseconds16 unit:300.0];
  v321 = [v158 initWithBucketStart:v161 bucketEnd:v164 bucketCount:70];

  v165 = objc_alloc(MEMORY[0x277CD79D0]);
  v166 = objc_alloc(MEMORY[0x277CCAB10]);
  milliseconds17 = [MEMORY[0x277CCADD0] milliseconds];
  v168 = [v166 initWithDoubleValue:milliseconds17 unit:301.0];
  v169 = objc_alloc(MEMORY[0x277CCAB10]);
  milliseconds18 = [MEMORY[0x277CCADD0] milliseconds];
  v171 = [v169 initWithDoubleValue:milliseconds18 unit:500.0];
  v320 = [v165 initWithBucketStart:v168 bucketEnd:v171 bucketCount:80];

  v315 = objc_alloc(MEMORY[0x277CD7A30]);
  v313 = objc_alloc(MEMORY[0x277CD7A18]);
  v346[0] = v319;
  v346[1] = v299;
  v346[2] = v298;
  v295 = [MEMORY[0x277CBEA60] arrayWithObjects:v346 count:3];
  v172 = objc_alloc(MEMORY[0x277CCAB10]);
  milliseconds19 = [MEMORY[0x277CCADD0] milliseconds];
  v173 = [v172 initWithDoubleValue:milliseconds19 unit:30000.0];
  v174 = objc_alloc(MEMORY[0x277CD78F8]);
  v175 = objc_alloc(MEMORY[0x277CCAB10]);
  kilobytes8 = [MEMORY[0x277CCAE18] kilobytes];
  v177 = [v175 initWithDoubleValue:kilobytes8 unit:100000.0];
  v178 = [v174 initWithMeasurement:v177 sampleCount:2 standardDeviation:0.0];
  v179 = objc_alloc(MEMORY[0x277CCAB10]);
  kilobytes9 = [MEMORY[0x277CCAE18] kilobytes];
  v181 = [v179 initWithDoubleValue:kilobytes9 unit:600.0];
  v182 = objc_alloc(MEMORY[0x277CCAB10]);
  v183 = [objc_alloc(MEMORY[0x277CCAD98]) initWithSymbol:@"ms per s"];
  v184 = [v182 initWithDoubleValue:v183 unit:50.0];
  v185 = [v313 initWithHistogramDurationData:v295 withCumulativeCPUTime:v173 withAverageMemory:v178 withCumulativeLogicalWrites:v181 withCumulativeHitchTimeRatio:v184];
  v297 = [v315 initWithSignpostName:@"TestSignpostName1" withSignpostCategory:@"TestSignpostCategory1" withTotalCount:30 withSignpostIntervalData:v185];

  v186 = objc_alloc(MEMORY[0x277CD7A30]);
  v187 = objc_alloc(MEMORY[0x277CD7A18]);
  v345[0] = v322;
  v345[1] = v321;
  v345[2] = v320;
  v188 = [MEMORY[0x277CBEA60] arrayWithObjects:v345 count:3];
  v189 = objc_alloc(MEMORY[0x277CCAB10]);
  milliseconds20 = [MEMORY[0x277CCADD0] milliseconds];
  v191 = [v189 initWithDoubleValue:milliseconds20 unit:50000.0];
  v192 = objc_alloc(MEMORY[0x277CD78F8]);
  v193 = objc_alloc(MEMORY[0x277CCAB10]);
  kilobytes10 = [MEMORY[0x277CCAE18] kilobytes];
  v195 = [v193 initWithDoubleValue:kilobytes10 unit:60000.0];
  v196 = [v192 initWithMeasurement:v195 sampleCount:2 standardDeviation:0.0];
  v197 = objc_alloc(MEMORY[0x277CCAB10]);
  kilobytes11 = [MEMORY[0x277CCAE18] kilobytes];
  v199 = [v197 initWithDoubleValue:kilobytes11 unit:700.0];
  v200 = [v187 initWithHistogramDurationData:v188 withCumulativeCPUTime:v191 withAverageMemory:v196 withCumulativeLogicalWrites:v199];
  v296 = [v186 initWithSignpostName:@"TestSignpostName2" withSignpostCategory:@"TestSignpostCategory2" withTotalCount:40 withSignpostIntervalData:v200];

  v201 = objc_alloc(MEMORY[0x277CD7998]);
  v202 = objc_alloc(MEMORY[0x277CD78F8]);
  v203 = objc_alloc(MEMORY[0x277CCAB10]);
  v204 = [MEMORY[0x277CD7A40] apl];
  v205 = [v203 initWithDoubleValue:v204 unit:50.0];
  v206 = [v202 initWithMeasurement:v205 sampleCount:500 standardDeviation:0.0];
  v294 = [v201 initWithAveragePictureLevel:v206];

  v207 = objc_alloc(MEMORY[0x277CD78A8]);
  v208 = objc_alloc(MEMORY[0x277CCAB10]);
  v209 = [objc_alloc(MEMORY[0x277CCAD98]) initWithSymbol:@"ms per s"];
  v210 = [v208 initWithDoubleValue:v209 unit:1000.0];
  v211 = objc_alloc(MEMORY[0x277CCAB10]);
  v212 = [objc_alloc(MEMORY[0x277CCAD98]) initWithSymbol:@"ms per s"];
  v213 = [v211 initWithDoubleValue:v212 unit:1000.0];
  v293 = [v207 initWithHitchTimeRatio:v210 perceivedHitchTimeRatio:v213];

  v214 = objc_alloc(MEMORY[0x277CD78B8]);
  v215 = [objc_alloc(MEMORY[0x277CD79A8]) initWithNormalAppExitCount:1 withMemoryResourceLimitExitCount:1 withCPUResourceLimitExitCount:1 withBadAccessExitCount:1 withAbnormalExitCount:1 withIllegalInstructionExitCount:1 withAppWatchDogExitCount:1];
  v216 = [objc_alloc(MEMORY[0x277CD7910]) initWithNormalAppExitCount:1 memoryResourceLimitExitCount:1 cpuResourceLimitExitCount:1 memoryPressureExitCount:1 badAccessExitCount:1 abnormalExitCount:1 illegalInstructionExitCount:1 appWatchDogExitCount:1 cumulativeSuspendedWithLockedFileExitCount:1 cumulativeBackgroundTaskAssertionTimeoutExitCount:1 cumulativeBackgroundURLSessionCompletionTimeoutExitCount:1 cumulativeBackgroundFetchCompletionTimeoutExitCount:1];
  v292 = [v214 initWithForegroundExitData:v215 backgroundExitData:v216];

  v217 = objc_alloc(MEMORY[0x277CD79D0]);
  v218 = objc_alloc(MEMORY[0x277CCAB10]);
  milliseconds21 = [MEMORY[0x277CCADD0] milliseconds];
  v220 = [v218 initWithDoubleValue:milliseconds21 unit:1000.0];
  v221 = objc_alloc(MEMORY[0x277CCAB10]);
  milliseconds22 = [MEMORY[0x277CCADD0] milliseconds];
  v223 = [v221 initWithDoubleValue:milliseconds22 unit:1010.0];
  v318 = [v217 initWithBucketStart:v220 bucketEnd:v223 bucketCount:50];

  v224 = objc_alloc(MEMORY[0x277CD79D0]);
  v225 = objc_alloc(MEMORY[0x277CCAB10]);
  milliseconds23 = [MEMORY[0x277CCADD0] milliseconds];
  v227 = [v225 initWithDoubleValue:milliseconds23 unit:2000.0];
  v228 = objc_alloc(MEMORY[0x277CCAB10]);
  milliseconds24 = [MEMORY[0x277CCADD0] milliseconds];
  v230 = [v228 initWithDoubleValue:milliseconds24 unit:2010.0];
  v316 = [v224 initWithBucketStart:v227 bucketEnd:v230 bucketCount:60];

  v231 = objc_alloc(MEMORY[0x277CD79D0]);
  v232 = objc_alloc(MEMORY[0x277CCAB10]);
  milliseconds25 = [MEMORY[0x277CCADD0] milliseconds];
  v234 = [v232 initWithDoubleValue:milliseconds25 unit:3000.0];
  v235 = objc_alloc(MEMORY[0x277CCAB10]);
  milliseconds26 = [MEMORY[0x277CCADD0] milliseconds];
  v237 = [v235 initWithDoubleValue:milliseconds26 unit:3010.0];
  v314 = [v231 initWithBucketStart:v234 bucketEnd:v237 bucketCount:30];

  v238 = objc_alloc(MEMORY[0x277CD79D0]);
  v239 = objc_alloc(MEMORY[0x277CCAB10]);
  milliseconds27 = [MEMORY[0x277CCADD0] milliseconds];
  v241 = [v239 initWithDoubleValue:milliseconds27 unit:200.0];
  v242 = objc_alloc(MEMORY[0x277CCAB10]);
  milliseconds28 = [MEMORY[0x277CCADD0] milliseconds];
  v244 = [v242 initWithDoubleValue:milliseconds28 unit:210.0];
  v291 = [v238 initWithBucketStart:v241 bucketEnd:v244 bucketCount:60];

  v245 = objc_alloc(MEMORY[0x277CD79D0]);
  v246 = objc_alloc(MEMORY[0x277CCAB10]);
  milliseconds29 = [MEMORY[0x277CCADD0] milliseconds];
  v248 = [v246 initWithDoubleValue:milliseconds29 unit:300.0];
  v249 = objc_alloc(MEMORY[0x277CCAB10]);
  milliseconds30 = [MEMORY[0x277CCADD0] milliseconds];
  v251 = [v249 initWithDoubleValue:milliseconds30 unit:310.0];
  v290 = [v245 initWithBucketStart:v248 bucketEnd:v251 bucketCount:70];

  v252 = objc_alloc(MEMORY[0x277CD79D0]);
  v253 = objc_alloc(MEMORY[0x277CCAB10]);
  milliseconds31 = [MEMORY[0x277CCADD0] milliseconds];
  v255 = [v253 initWithDoubleValue:milliseconds31 unit:500.0];
  v256 = objc_alloc(MEMORY[0x277CCAB10]);
  milliseconds32 = [MEMORY[0x277CCADD0] milliseconds];
  v258 = [v256 initWithDoubleValue:milliseconds32 unit:510.0];
  v289 = [v252 initWithBucketStart:v255 bucketEnd:v258 bucketCount:80];

  v259 = objc_alloc(MEMORY[0x277CD78C8]);
  v344[0] = v318;
  v344[1] = v316;
  v344[2] = v314;
  v260 = [MEMORY[0x277CBEA60] arrayWithObjects:v344 count:3];
  v343[0] = v291;
  v343[1] = v290;
  v343[2] = v289;
  v261 = [MEMORY[0x277CBEA60] arrayWithObjects:v343 count:3];
  v342[0] = v318;
  v342[1] = v316;
  v342[2] = v314;
  v262 = [MEMORY[0x277CBEA60] arrayWithObjects:v342 count:3];
  v341[0] = v318;
  v341[1] = v316;
  v341[2] = v314;
  v263 = [MEMORY[0x277CBEA60] arrayWithObjects:v341 count:3];
  v288 = [v259 initWithLaunchTimeData:v260 withResumeTimeData:v261 withActivationTimeData:v262 withExtendedLaunchTimeData:v263];

  v284 = objc_alloc(MEMORY[0x277CD7980]);
  v264 = objc_alloc(MEMORY[0x277CCAB10]);
  kilobytes12 = [MEMORY[0x277CCAE18] kilobytes];
  v283 = [v264 initWithDoubleValue:kilobytes12 unit:2000.0];
  v265 = objc_alloc(MEMORY[0x277CCAB10]);
  kilobytes13 = [MEMORY[0x277CCAE18] kilobytes];
  v266 = [v265 initWithDoubleValue:kilobytes13 unit:60000.0];
  v267 = objc_alloc(MEMORY[0x277CCAB10]);
  kilobytes14 = [MEMORY[0x277CCAE18] kilobytes];
  v269 = [v267 initWithDoubleValue:kilobytes14 unit:60000.0];
  v270 = objc_alloc(MEMORY[0x277CCAB10]);
  kilobytes15 = [MEMORY[0x277CCAE18] kilobytes];
  v272 = [v270 initWithDoubleValue:kilobytes15 unit:60000.0];
  v273 = objc_alloc(MEMORY[0x277CCAB10]);
  kilobytes16 = [MEMORY[0x277CCAE18] kilobytes];
  v275 = [v273 initWithDoubleValue:kilobytes16 unit:60000.0];
  v276 = objc_alloc(MEMORY[0x277CCAB10]);
  kilobytes17 = [MEMORY[0x277CCAE18] kilobytes];
  v278 = [v276 initWithDoubleValue:kilobytes17 unit:60000.0];
  v285 = [v284 initWithTotalBinaryFileSize:v283 totalBinaryFileCount:2 totalDataFileSize:v266 totalDataFileCount:2 totalCacheFolderSize:v269 totalCloneSize:v272 totalDiskSpaceUsedSize:v275 totalDiskSpaceCapacity:v278];

  v279 = [v307 initWithAppVersion:v336 withMutipleAppVersions:0 withTimeStampBegin:v338 withTimeStampEnd:v337];
  [v279 setMetaData:v335];
  [v279 setCpuMetrics:v334];
  [v279 setGpuMetrics:v333];
  [v279 setCellularConditionMetrics:v332];
  [v279 setApplicationTimeMetrics:v331];
  [v279 setLocationActivityMetrics:v330];
  [v279 setNetworkTransferMetrics:v328];
  [v279 setApplicationLaunchMetrics:v288];
  [v279 setApplicationResponsivenessMetrics:v326];
  [v279 setDiskIOMetrics:v324];
  [v279 setDisplayMetrics:v294];
  [v279 setAnimationMetrics:v293];
  [v279 setApplicationExitMetrics:v292];
  [v279 setMemoryMetrics:v300];
  [v279 setDiskSpaceUsageMetrics:v285];
  v340[0] = v297;
  v340[1] = v296;
  v280 = [MEMORY[0x277CBEA60] arrayWithObjects:v340 count:2];
  [v279 setSignpostMetrics:v280];

  v281 = *MEMORY[0x277D85DE8];

  return v279;
}

+ (id)buildSampleDiagnosticPayloadForClient:(id)client withDateString:(id)string
{
  v97[5] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA968];
  clientCopy = client;
  v6 = objc_alloc_init(v4);
  v83 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [v6 setLocale:?];
  [v6 setDateFormat:@"yyyy-MM-dd HH:mm"];
  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  [v6 setTimeZone:localTimeZone];

  date = [MEMORY[0x277CBEAA8] date];
  v9 = [v6 stringFromDate:date];
  v82 = [v6 dateFromString:v9];

  date2 = [MEMORY[0x277CBEAA8] date];
  v11 = [v6 stringFromDate:date2];
  v84 = v6;
  v81 = [v6 dateFromString:v11];

  v12 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:clientCopy allowPlaceholder:0 error:0];
  shortVersionString = [v12 shortVersionString];
  if (shortVersionString)
  {
    [v12 shortVersionString];
  }

  else
  {
    [v12 bundleVersion];
  }
  v90 = ;

  bundleVersion = [v12 bundleVersion];
  v14 = objc_alloc(MEMORY[0x277CD79F8]);
  [MEMORY[0x277D28708] regionFormat];
  v15 = v80 = v12;
  osVersion = [MEMORY[0x277D28708] osVersion];
  modelIdentifier = [MEMORY[0x277D28708] modelIdentifier];
  platformArchitecture = [MEMORY[0x277D28708] platformArchitecture];
  v19 = [v14 initWithRegionFormat:v15 osVersion:osVersion deviceType:modelIdentifier appBuildVersion:bundleVersion platformArchitecture:platformArchitecture];

  v88 = v19;
  [v19 setLowPowerModeEnabled:1];
  [v19 setIsTestFlightApp:0];
  [v19 setPid:123];
  v20 = objc_alloc(MEMORY[0x277CCAB10]);
  seconds = [MEMORY[0x277CCADD0] seconds];
  v87 = [v20 initWithDoubleValue:seconds unit:20.0];

  v22 = objc_alloc(MEMORY[0x277CCAB10]);
  bytes = [MEMORY[0x277CCAE18] bytes];
  v89 = [v22 initWithDoubleValue:bytes unit:2000.0];

  v24 = objc_alloc(MEMORY[0x277CD7940]);
  v25 = objc_alloc(MEMORY[0x277CBEA60]);
  v26 = objc_alloc(MEMORY[0x277CD7938]);
  v27 = objc_alloc(MEMORY[0x277CBEA60]);
  v28 = objc_alloc(MEMORY[0x277CD7930]);
  uUID = [MEMORY[0x277CCAD78] UUID];
  v30 = [MEMORY[0x277CCABB0] numberWithLongLong:74565];
  v31 = objc_alloc_init(MEMORY[0x277CBEA60]);
  v32 = [v28 initWithBinaryName:@"testBinaryName" binaryUUID:uUID address:v30 binaryOffset:&unk_286A1BC58 sampleCount:&unk_286A1BC70 withDepth:0 subFrameArray:v31];
  v33 = [v27 initWithObjects:{v32, 0}];
  v34 = [v26 initWithTopCallStackFrames:v33 isAttributedThread:1];
  v35 = [v25 initWithObjects:v34];
  v86 = [v24 initWithThreadArray:v35 aggregatedByProcess:1];

  v36 = objc_alloc(MEMORY[0x277CD7940]);
  v37 = objc_alloc(MEMORY[0x277CBEA60]);
  v38 = objc_alloc(MEMORY[0x277CD7938]);
  v39 = objc_alloc(MEMORY[0x277CBEA60]);
  v40 = objc_alloc(MEMORY[0x277CD7930]);
  uUID2 = [MEMORY[0x277CCAD78] UUID];
  v42 = [MEMORY[0x277CCABB0] numberWithLongLong:74565];
  v43 = objc_alloc_init(MEMORY[0x277CBEA60]);
  v44 = [v40 initWithBinaryName:@"testBinaryName" binaryUUID:uUID2 address:v42 binaryOffset:&unk_286A1BC58 sampleCount:&unk_286A1BC70 withDepth:0 subFrameArray:v43];
  v45 = [v39 initWithObjects:{v44, 0}];
  v46 = [v38 initWithTopCallStackFrames:v45 isAttributedThread:1];
  v47 = [v37 initWithObjects:v46];
  v48 = [v36 initWithThreadArray:v47 aggregatedByProcess:0];

  date3 = [MEMORY[0x277CBEAA8] date];
  LOBYTE(v67) = 0;
  v77 = [objc_alloc(MEMORY[0x277CD7A38]) initWithSubSystem:@"testEventSubsystem" category:@"testEventCategory" name:@"testEventName" beginTimeStamp:date3 endTimeStamp:0 duration:0 isInterval:v67];
  v50 = objc_alloc(MEMORY[0x277CD7A38]);
  v78 = date3;
  v51 = [date3 addTimeInterval:-5.0];
  v52 = objc_alloc(MEMORY[0x277CCAB10]);
  milliseconds = [MEMORY[0x277CCADD0] milliseconds];
  v54 = [v52 initWithDoubleValue:milliseconds unit:5000.0];
  LOBYTE(v68) = 1;
  v76 = [v50 initWithSubSystem:@"testIntervalSubsystem" category:@"testIntervalCategory" name:@"testIntervalName" beginTimeStamp:v51 endTimeStamp:date3 duration:v54 isInterval:v68];

  array = [MEMORY[0x277CBEB18] array];
  [array addObject:v77];
  [array addObject:v76];
  v85 = [objc_alloc(MEMORY[0x277CD7918]) initWithMetaData:v88 applicationVersion:v87 signpostData:? pid:? callStack:? totalCpuTime:? totalSampledTime:?];
  v72 = [objc_alloc(MEMORY[0x277CD79C0]) initWithMetaData:v88 applicationVersion:v90 signpostData:array pid:123 callStack:v48 hangDuration:v87];
  v75 = v48;
  v71 = [objc_alloc(MEMORY[0x277CD78C0]) initWithMetaData:v88 applicationVersion:v90 signpostData:array pid:123 callStack:v48 launchDuration:v87];
  v73 = [objc_alloc(MEMORY[0x277CD7988]) initWithMetaData:v88 applicationVersion:v90 signpostData:array pid:123 totalWritesCaused:v89 stackTrace:v86];
  v74 = [objc_alloc(MEMORY[0x277CD7960]) initWithComposedMessage:@"*** -[NSArray objectAtIndex:]: index 0 beyond bounds for empty array" formatString:@"*** -[%@ %@]: index %@ beyond bounds for empty array" arguments:&unk_286A1BC28 type:@"NSRangeException" className:@"NSException" exceptionName:@"NSRangeException"];
  v56 = [objc_alloc(MEMORY[0x277CD7958]) initWithMetaData:v88 applicationVersion:v90 signpostData:array pid:123 terminationReason:@"Namespace SIGNAL applicationSpecificInfo:Code 0xb" virtualMemoryRegionInfo:&unk_286A1BC40 exceptionType:@"0 is not in any region.  Bytes before following region: 4000000000 REGION TYPE                      START - END             [ VSIZE] PRT/MAX SHRMOD  REGION DETAIL UNUSED SPACE AT START ---> __TEXT                 0000000000000000-0000000000000000 [   32K] r-x/r-x SM=COW  ...pp/Test" exceptionCode:&unk_286A1BC88 exceptionReason:&unk_286A1BCA0 signal:v74 stackTrace:{&unk_286A1BCB8, v48}];
  v57 = objc_alloc(MEMORY[0x277CD7968]);
  v70 = [MEMORY[0x277CBEAA8] now];
  v58 = [MEMORY[0x277CBEAA8] now];
  v95 = v73;
  v96[0] = @"diskWriteExceptionDiagnostics";
  v59 = [MEMORY[0x277CBEA60] arrayWithObjects:&v95 count:1];
  v97[0] = v59;
  v96[1] = @"hangDiagnostics";
  v94 = v72;
  v60 = [MEMORY[0x277CBEA60] arrayWithObjects:&v94 count:1];
  v97[1] = v60;
  v96[2] = @"appLaunchDiagnostics";
  v93 = v71;
  v61 = [MEMORY[0x277CBEA60] arrayWithObjects:&v93 count:1];
  v97[2] = v61;
  v96[3] = @"cpuExceptionDiagnostics";
  v92 = v85;
  v62 = [MEMORY[0x277CBEA60] arrayWithObjects:&v92 count:1];
  v97[3] = v62;
  v96[4] = @"crashDiagnostics";
  v91 = v56;
  v63 = [MEMORY[0x277CBEA60] arrayWithObjects:&v91 count:1];
  v97[4] = v63;
  v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:v96 count:5];
  v69 = [v57 initWithTimeStampBegin:v70 withTimeStampEnd:v58 withDiagnostics:v64];

  v65 = *MEMORY[0x277D85DE8];

  return v69;
}

+ (void)buildDiagnosticPayloadForClient:fromClientDiagnosticsDictionary:withDateString:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)buildDiagnosticPayloadForClient:fromClientDiagnosticsDictionary:withDateString:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(&dword_258D6F000, v0, OS_LOG_TYPE_DEBUG, "Construction Step: Date Data: %@, %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)buildDiagnosticPayloadForClient:fromClientDiagnosticsDictionary:withDateString:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)buildDiagnosticPayloadForClient:fromClientDiagnosticsDictionary:withDateString:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)buildDiagnosticPayloadForClient:fromClientDiagnosticsDictionary:withDateString:.cold.5()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)buildDiagnosticPayloadForClient:fromClientDiagnosticsDictionary:withDateString:.cold.6()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)buildDiagnosticPayloadForClient:fromClientDiagnosticsDictionary:withDateString:.cold.7()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)buildDiagnosticPayloadForClient:fromClientDiagnosticsDictionary:withDateString:.cold.8()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_3(&dword_258D6F000, v0, v1, "No diagnostic service payloads found for client: %@ date: %@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)buildMetricPayloadForClient:(void *)a1 fromClientMetricsDictionary:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 allValues];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)updatePayload:withServiceString:withSourceData:withDateString:forClient:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)updatePayload:withServiceString:withSourceData:withDateString:forClient:.cold.2()
{
  OUTLINED_FUNCTION_8();
  v9 = *MEMORY[0x277D85DE8];
  [v1 beginDate];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_7_0() endDate];
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)updatePayload:withServiceString:withSourceData:withDateString:forClient:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)updatePayload:withServiceString:withSourceData:withDateString:forClient:.cold.5()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)updatePayload:withServiceString:withSourceData:withDateString:forClient:.cold.7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)constructPayloadWithServiceString:withSourceData:withDateString:forClient:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)constructPayloadWithServiceString:withSourceData:withDateString:forClient:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_3(&dword_258D6F000, v0, v1, "Error retrieving app record for %@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)constructPayloadWithServiceString:withSourceData:withDateString:forClient:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)constructPayloadWithServiceString:withSourceData:withDateString:forClient:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)constructPayloadWithServiceString:withSourceData:withDateString:forClient:.cold.5()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)constructPayloadWithServiceString:withSourceData:withDateString:forClient:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)constructPayloadWithServiceString:withSourceData:withDateString:forClient:.cold.7()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_258D6F000, v0, OS_LOG_TYPE_ERROR, "Compatible service string not found. Received: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)constructPayloadWithServiceString:withSourceData:withDateString:forClient:.cold.8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)constructPayloadWithServiceString:withSourceData:withDateString:forClient:.cold.9()
{
  OUTLINED_FUNCTION_8();
  v9 = *MEMORY[0x277D85DE8];
  [v1 beginDate];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_7_0() endDate];
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)constructPayloadWithServiceString:withSourceData:withDateString:forClient:.cold.10()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)constructPayloadWithServiceString:withSourceData:withDateString:forClient:.cold.12()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)constructPayloadWithServiceString:withSourceData:withDateString:forClient:.cold.14()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end