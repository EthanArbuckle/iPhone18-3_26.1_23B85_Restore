void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

uint64_t DESBfloat16TransportReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_34;
          }
        }

        v21 = [a2 hasError] ? 0 : v17;
LABEL_34:
        *(a1 + 8) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

BOOL DESDiagnosticsSubmissionAllowed()
{
  v0 = [MEMORY[0x277D262A0] sharedConnection];
  v1 = [v0 effectiveBoolValueForSetting:*MEMORY[0x277D25E58]] == 1;

  return v1;
}

BOOL DESServiceAvailable()
{
  v0 = MGCopyAnswer();
  if ([v0 BOOLValue])
  {
    v1 = 1;
  }

  else
  {
    v2 = MGGetProductType();
    v1 = v2 == 4240173202 || v2 == 2702125347;
  }

  return v1;
}

id DESGetDeviceClass()
{
  v0 = MGCopyAnswer();

  return v0;
}

id DESGetDeviceID()
{
  if (DESGetDeviceID_onceToken != -1)
  {
    DESGetDeviceID_cold_1();
  }

  v1 = DESGetDeviceID_deviceID;

  return v1;
}

uint64_t __DESGetDeviceID_block_invoke()
{
  DESGetDeviceID_deviceID = MGCopyAnswer();

  return MEMORY[0x2821F96F8]();
}

id DESGetDeviceType()
{
  v0 = MGCopyAnswer();

  return v0;
}

id DESGetOSVersion()
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 256;
  v0 = sysctlbyname("kern.osversion", v5, &v4, 0, 0);
  v1 = 0;
  if (!v0)
  {
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
  }

  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

id DESGetDeviceLocale()
{
  v0 = MEMORY[0x277CBEAF8];
  v1 = [MEMORY[0x277CBEAF8] currentLocale];
  v2 = [v1 localeIdentifier];
  v3 = [v0 canonicalLocaleIdentifierFromString:v2];

  return v3;
}

void DESApplyAsynchronousEnumeratorWithCompletion(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 nextObject];
  if (v8)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __DESApplyAsynchronousEnumeratorWithCompletion_block_invoke;
    v9[3] = &unk_278F83CF0;
    v10 = v5;
    v11 = v6;
    v12 = v7;
    (*(v6 + 2))(v11, v8, v9);
  }

  else
  {
    v7[2](v7);
  }
}

void DESApplyAsynchronousEnumerator(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 nextObject];
  if (v5)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __DESApplyAsynchronousEnumerator_block_invoke;
    v7[3] = &unk_278F83D18;
    v8 = v3;
    v9 = v4;
    (*(v4 + 2))(v9, v5, v7, v6);
  }
}

id DESSubmissionLogFileURLs(void *a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  DESSubmissionLogGarbageCollect();
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = DESSubmissionLogDirectoryURL();
  v11[0] = *MEMORY[0x277CBF178];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v10 = 0;
  v5 = [v2 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:v4 options:0 error:&v10];
  v6 = v10;

  if (a1 && v6)
  {
    v7 = v6;
    *a1 = v6;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

id DESSubmissionLogDirectoryURL()
{
  v0 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/var/mobile/Library/DES/" isDirectory:1];
  v1 = [v0 URLByAppendingPathComponent:@"SubmissionLogs/" isDirectory:1];

  return v1;
}

uint64_t DESShouldAlwaysParticipate()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"ShouldAlwaysParticipate"];

  if (v1)
  {
    v2 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      DESShouldAlwaysParticipate_cold_1(v2);
    }
  }

  return v1;
}

id DESTemporaryDownloadDirectoryURL()
{
  v0 = MEMORY[0x277CBEBC0];
  v1 = NSTemporaryDirectory();
  v2 = [v1 stringByAppendingPathComponent:@"dodML-Attachments"];
  v3 = [v0 fileURLWithPath:v2 isDirectory:1];

  return v3;
}

uint64_t binaryGCD(unint64_t a1, unint64_t a2)
{
  v2 = 1;
  if (a1 != a2)
  {
    v3 = a1;
    a1 = a2;
    while (1)
    {
      if (!v3)
      {
        return a1 * v2;
      }

      if (!a1)
      {
        a1 = v3;
        return a1 * v2;
      }

      if (((a1 | v3) & 1) == 0)
      {
        break;
      }

      if (a1 & 1) == 0 || (v3)
      {
        if ((a1 & 1) != 0 || (v3 & 1) == 0)
        {
          v4 = (a1 - v3) >> 1;
          if (v3 > a1)
          {
            v3 = (v3 - a1) >> 1;
          }

          else
          {
            a1 = v3;
            v3 = v4;
          }

          goto LABEL_11;
        }

        goto LABEL_10;
      }

      v3 >>= 1;
LABEL_11:
      if (v3 == a1)
      {
        return a1 * v2;
      }
    }

    v2 *= 2;
    v3 >>= 1;
LABEL_10:
    a1 >>= 1;
    goto LABEL_11;
  }

  return a1 * v2;
}

id DESDeviceIdentifierStoreURL()
{
  v0 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/var/mobile/Library/DES/" isDirectory:1];
  v1 = [v0 URLByAppendingPathComponent:@"deviceIdentifiers.json" isDirectory:0];

  return v1;
}

id DESRecordRootURL()
{
  v0 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/var/mobile/Library/DES/" isDirectory:1];
  v1 = [v0 URLByAppendingPathComponent:@"Records/" isDirectory:1];

  return v1;
}

uint64_t DESHourOfDayInUTC()
{
  v0 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  v1 = [MEMORY[0x277CBEA80] currentCalendar];
  v2 = [MEMORY[0x277CBEAA8] date];
  v3 = [v1 componentsInTimeZone:v0 fromDate:v2];

  v4 = [v3 hour];
  return v4;
}

id DESLogAndReturnSunsetError()
{
  if (DESLogAndReturnSunsetError_onceToken != -1)
  {
    DESLogAndReturnSunsetError_cold_1();
  }

  v0 = +[DESLogging coreChannel];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    DESLogAndReturnSunsetError_cold_2(v0);
  }

  v1 = DESLogAndReturnSunsetError_sunSetError;

  return v1;
}

void __DESLogAndReturnSunsetError_block_invoke()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277CCA450];
  v6[0] = @"DodML is already sunset. Pls migrate.";
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v2 = [v0 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:1533 userInfo:v1];
  v3 = DESLogAndReturnSunsetError_sunSetError;
  DESLogAndReturnSunsetError_sunSetError = v2;

  v4 = *MEMORY[0x277D85DE8];
}

void *DESLogAndSetSunsetError(void *result)
{
  if (result)
  {
    v1 = result;
    result = DESLogAndReturnSunsetError();
    *v1 = result;
  }

  return result;
}

id RecordDirPathForRecordType(void *a1)
{
  v1 = RecordDirURLForRecordType(a1);
  v2 = [v1 path];

  return v2;
}

id RecordDirURLForRecordType(void *a1)
{
  v1 = a1;
  v2 = DESRecordRootURL();
  v3 = [v2 URLByAppendingPathComponent:v1 isDirectory:1];

  return v3;
}

void GarbageCollectOldRecords(void *a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = RecordDirPathForRecordType(v1);
  v3 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v39 = 0;
  v4 = [v3 contentsOfDirectoryAtPath:v2 error:&v39];
  v5 = v39;
  v6 = v5;
  if (v4)
  {
    v29 = v5;
    [v3 changeCurrentDirectoryPath:v2];
    v7 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_3];
    v30 = v4;
    v8 = [v4 filteredArrayUsingPredicate:v7];

    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v35 objects:v47 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v36;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v36 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v35 + 1) + 8 * i) stringByDeletingPathExtension];
          [v9 addObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v35 objects:v47 count:16];
      }

      while (v12);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v16 = v9;
    v17 = [v16 countByEnumeratingWithState:&v31 objects:v46 count:16];
    if (v17)
    {
      v18 = v17;
      v27 = v2;
      v28 = v1;
      v19 = 0;
      v20 = *v32;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v32 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v22 = *(*(&v31 + 1) + 8 * j);
          v23 = v19 + DeleteFileWithBasePath(v3, v22, @"json");
          v19 = (v23 + DeleteFileWithBasePath(v3, v22, @"desdata"));
        }

        v18 = [v16 countByEnumeratingWithState:&v31 objects:v46 count:16];
      }

      while (v18);

      v1 = v28;
      if (v19)
      {
        [DESCoreAnalyticsEventManager sendEventDeleteRecordForBundleID:v28 removedCount:v19];
      }
    }

    else
    {

      v19 = 0;
    }

    v6 = v29;
    v24 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v26 = [v16 count];
      *buf = 134218498;
      v41 = v19;
      v42 = 2048;
      v43 = v26;
      v44 = 2112;
      v45 = v1;
      _os_log_debug_impl(&dword_248FF7000, v24, OS_LOG_TYPE_DEBUG, "Garbage collected %lu file(s) and %lu record(s) for %@", buf, 0x20u);
    }

    v4 = v30;
LABEL_25:

    goto LABEL_26;
  }

  if ([v5 code] != 260)
  {
    v10 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v6;
      _os_log_impl(&dword_248FF7000, v10, OS_LOG_TYPE_DEFAULT, "Couldn't read old DES records: %@", buf, 0xCu);
    }

    goto LABEL_25;
  }

LABEL_26:

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __GarbageCollectOldRecords_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 pathExtension];
  if ([v2 isEqualToString:@"json"])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isEqualToString:@"desdata"];
  }

  return v3;
}

uint64_t DeleteFileWithBasePath(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 stringByAppendingPathExtension:a3];
  v12 = 0;
  v7 = [v5 _fides_removeItemAtPath:v6 error:&v12];

  v8 = v12;
  v9 = +[DESLogging coreChannel];
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      DeleteFileWithBasePath_cold_2(v6, v10);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    DeleteFileWithBasePath_cold_1(v6, v8, v10);
  }

  return v7;
}

void GarbageCollectAllRecords()
{
  v35[1] = *MEMORY[0x277D85DE8];
  v0 = DESRecordRootURL();
  v1 = [MEMORY[0x277CCAA00] defaultManager];
  v2 = *MEMORY[0x277CBE868];
  v35[0] = *MEMORY[0x277CBE868];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
  v29 = 0;
  v4 = [v1 contentsOfDirectoryAtURL:v0 includingPropertiesForKeys:v3 options:4 error:&v29];
  v5 = v29;

  if (v4)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (!v7)
    {
      goto LABEL_19;
    }

    v8 = v7;
    v20 = v4;
    v21 = v1;
    v22 = v0;
    v9 = *v26;
    while (1)
    {
      v10 = 0;
      do
      {
        v11 = v5;
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v25 + 1) + 8 * v10);
        v23 = 0;
        v24 = 0;
        [v12 getResourceValue:&v24 forKey:v2 error:&v23];
        v13 = v24;
        v5 = v23;

        if (!v13)
        {
          v14 = +[DESLogging coreChannel];
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_13;
          }

          *buf = 138412546;
          v32 = v12;
          v33 = 2112;
          v34 = v5;
          v15 = v14;
          v16 = "Fail to read isDirectory for %@ with error=%@";
          v17 = 22;
          goto LABEL_16;
        }

        if ([v13 BOOLValue])
        {
          v14 = [v12 lastPathComponent];
          GarbageCollectOldRecords(v14);
          goto LABEL_13;
        }

        v14 = +[DESLogging coreChannel];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v32 = v12;
          v15 = v14;
          v16 = "Unexpected file in DES record root: %@";
          v17 = 12;
LABEL_16:
          _os_log_error_impl(&dword_248FF7000, v15, OS_LOG_TYPE_ERROR, v16, buf, v17);
        }

LABEL_13:

        ++v10;
      }

      while (v8 != v10);
      v18 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
      v8 = v18;
      if (!v18)
      {
        v1 = v21;
        v0 = v22;
        v4 = v20;
        goto LABEL_19;
      }
    }
  }

  if ([v5 code] != 260)
  {
    v6 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v32 = v0;
      v33 = 2112;
      v34 = v5;
      _os_log_impl(&dword_248FF7000, v6, OS_LOG_TYPE_DEFAULT, "Couldn't find any directories in %@ with error=%@", buf, 0x16u);
    }

LABEL_19:
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_0_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void DESSubmissionLogGarbageCollect()
{
  v77 = *MEMORY[0x277D85DE8];
  v0 = DESSubmissionLogDirectoryURL();
  v1 = [v0 path];

  v66 = 0;
  v51 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v2 = [v51 contentsOfDirectoryAtPath:v1 error:&v66];
  v3 = v66;
  if (v2)
  {
    v4 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_5];
    v43 = v2;
    v5 = [v2 filteredArrayUsingPredicate:v4];

    v49 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v47 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = [MEMORY[0x277CBEA80] currentCalendar];
    v7 = [MEMORY[0x277CBEAA8] date];
    v45 = [v6 dateByAddingUnit:16 value:-28 toDate:v7 options:0];

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = v5;
    v8 = [obj countByEnumeratingWithState:&v62 objects:v76 count:16];
    v46 = v1;
    if (v8)
    {
      v9 = v8;
      v10 = *v63;
      v50 = *MEMORY[0x277CCA108];
      v11 = *MEMORY[0x277CCA1C0];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          v13 = v3;
          if (*v63 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v14 = [v1 stringByAppendingPathComponent:*(*(&v62 + 1) + 8 * i)];
          v61 = v3;
          v15 = [v51 attributesOfItemAtPath:v14 error:&v61];
          v3 = v61;

          if (v15)
          {
            v16 = [v15 objectForKey:v50];
            v17 = [v15 objectForKey:v11];
            v18 = v17;
            if (v16)
            {
              v19 = v17 == 0;
            }

            else
            {
              v19 = 1;
            }

            if (!v19)
            {
              if ([v16 compare:v45]== -1)
              {
                [v49 addObject:v14];
              }

              v74[0] = @"Size";
              v74[1] = @"Date";
              v75[0] = v18;
              v75[1] = v16;
              v74[2] = @"Path";
              v75[2] = v14;
              v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:3];
              [v47 addObject:v20];

              v1 = v46;
            }
          }

          else
          {
            v16 = +[DESLogging coreChannel];
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v68 = v3;
              _os_log_error_impl(&dword_248FF7000, v16, OS_LOG_TYPE_ERROR, "Failed to get file attributes: %@", buf, 0xCu);
            }
          }
        }

        v9 = [obj countByEnumeratingWithState:&v62 objects:v76 count:16];
      }

      while (v9);
    }

    v44 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"Date" ascending:0];
    v73 = v44;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v73 count:1];
    v22 = [v47 sortedArrayUsingDescriptors:v21];

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v23 = v22;
    v24 = [v23 countByEnumeratingWithState:&v57 objects:v72 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = 0;
      v27 = *v58;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v58 != v27)
          {
            objc_enumerationMutation(v23);
          }

          v29 = *(*(&v57 + 1) + 8 * j);
          v30 = [v29 objectForKey:@"Size"];
          v26 += [v30 unsignedLongLongValue];

          if (v26 > 0xA00000)
          {
            v31 = [v29 objectForKey:@"Path"];
            [v49 addObject:v31];
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v57 objects:v72 count:16];
      }

      while (v25);
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v32 = v49;
    v33 = [v32 countByEnumeratingWithState:&v53 objects:v71 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v54;
      do
      {
        for (k = 0; k != v34; ++k)
        {
          v37 = v3;
          if (*v54 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v38 = *(*(&v53 + 1) + 8 * k);
          v52 = v3;
          v39 = [v51 removeItemAtPath:v38 error:&v52];
          v3 = v52;

          v40 = +[DESLogging coreChannel];
          v41 = v40;
          if (v39)
          {
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v68 = v38;
              _os_log_debug_impl(&dword_248FF7000, v41, OS_LOG_TYPE_DEBUG, "Garbage collected DES submission log file %@", buf, 0xCu);
            }
          }

          else if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v68 = v38;
            v69 = 2112;
            v70 = v3;
            _os_log_error_impl(&dword_248FF7000, v41, OS_LOG_TYPE_ERROR, "Could not garbage collect old DES submission log file %@: %@", buf, 0x16u);
          }
        }

        v34 = [v32 countByEnumeratingWithState:&v53 objects:v71 count:16];
      }

      while (v34);
    }

    v1 = v46;
    v2 = v43;
  }

  else
  {
    obj = +[DESLogging coreChannel];
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      DESSubmissionLogGarbageCollect_cold_1(v3, obj);
    }
  }

  v42 = *MEMORY[0x277D85DE8];
}

uint64_t __DESSubmissionLogGarbageCollect_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 pathExtension];
  v3 = [v2 isEqualToString:@"submissionlog"];

  return v3;
}

uint64_t DESWriteSubmissionLogData(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a1;
  v7 = DESSubmissionLogDirectoryURL();
  v8 = [v7 path];

  if (DESSubmissionLogsDateFormatter_onceToken != -1)
  {
    DESWriteSubmissionLogData_cold_1();
  }

  v9 = DESSubmissionLogsDateFormatter_formatter;
  v10 = [MEMORY[0x277CBEAA8] date];
  v11 = [v9 stringFromDate:v10];

  v12 = MEMORY[0x277CCACA8];
  v13 = [MEMORY[0x277CCAD78] UUID];
  v14 = [v13 UUIDString];
  v15 = [v12 stringWithFormat:@"%@%@-%@.%@", v6, v14, v11, @"submissionlog"];

  v16 = [v8 stringByAppendingPathComponent:v15];
  if (sDESSubmissionLogHandler)
  {
    v17 = (*(sDESSubmissionLogHandler + 16))();
  }

  else
  {
    v30 = 0;
    v28 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v18 = [v28 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:&v30];
    v19 = v30;
    v20 = v19;
    if (v18)
    {
      v29 = v19;
      v21 = [v5 writeToFile:v16 options:805306368 error:&v29];
      v22 = v29;

      if (v21)
      {
        DESSubmissionLogGarbageCollect();
        v17 = 1;
      }

      else
      {
        v25 = +[DESLogging coreChannel];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          DESWriteSubmissionLogData_cold_3(v22, v25);
        }

        if (a3)
        {
          v26 = v22;
          v17 = 0;
          *a3 = v22;
        }

        else
        {
          v17 = 0;
        }
      }

      v20 = v22;
    }

    else
    {
      v23 = +[DESLogging coreChannel];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        DESWriteSubmissionLogData_cold_2(v8, v20, v23);
      }

      if (a3)
      {
        v24 = v20;
        v17 = 0;
        *a3 = v20;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  return v17;
}

uint64_t DESSubmissionLogSetHandler(void *a1)
{
  sDESSubmissionLogHandler = [a1 copy];

  return MEMORY[0x2821F96F8]();
}

uint64_t __DESSubmissionLogsDateFormatter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = DESSubmissionLogsDateFormatter_formatter;
  DESSubmissionLogsDateFormatter_formatter = v0;

  v2 = DESSubmissionLogsDateFormatter_formatter;

  return [v2 setDateFormat:@"YYYYMMdd'T'HHmmss"];
}

void OUTLINED_FUNCTION_0_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t DESBinary32TransportReadFrom(uint64_t a1, void *a2)
{
  v3 = [a2 position];
  if (v3 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v4 = 0;
      v5 = 0;
      v6 = 0;
      while (1)
      {
        LOBYTE(v21[0]) = 0;
        v7 = [a2 position] + 1;
        if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
        {
          v9 = [a2 data];
          [v9 getBytes:v21 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v6 |= (v21[0] & 0x7F) << v4;
        if ((v21[0] & 0x80) == 0)
        {
          break;
        }

        v4 += 7;
        if (v5++ >= 9)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      if ((v11 >> 3) == 1)
      {
        if ((v11 & 7) == 2)
        {
          v21[0] = 0;
          v21[1] = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v13 = [a2 position];
            if (v13 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v22 = 0;
            v14 = [a2 position] + 4;
            if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 4, v15 <= objc_msgSend(a2, "length")))
            {
              v16 = [a2 data];
              [v16 getBytes:&v22 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            PBRepeatedFloatAdd();
          }

          PBReaderRecallMark();
        }

        else
        {
          LODWORD(v21[0]) = 0;
          v17 = [a2 position] + 4;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 4, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v21 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedFloatAdd();
        }
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v20 = [a2 position];
    }

    while (v20 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t DESBinary64TransportReadFrom(uint64_t a1, void *a2)
{
  v3 = [a2 position];
  if (v3 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v4 = 0;
      v5 = 0;
      v6 = 0;
      while (1)
      {
        LOBYTE(v21[0]) = 0;
        v7 = [a2 position] + 1;
        if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
        {
          v9 = [a2 data];
          [v9 getBytes:v21 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v6 |= (v21[0] & 0x7F) << v4;
        if ((v21[0] & 0x80) == 0)
        {
          break;
        }

        v4 += 7;
        if (v5++ >= 9)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        break;
      }

      if ((v11 >> 3) == 1)
      {
        if ((v11 & 7) == 2)
        {
          v21[0] = 0;
          v21[1] = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v13 = [a2 position];
            if (v13 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v22 = 0;
            v14 = [a2 position] + 8;
            if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
            {
              v16 = [a2 data];
              [v16 getBytes:&v22 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            PBRepeatedDoubleAdd();
          }

          PBReaderRecallMark();
        }

        else
        {
          v21[0] = 0;
          v17 = [a2 position] + 8;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v21 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedDoubleAdd();
        }
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v20 = [a2 position];
    }

    while (v20 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t DESPFLNoisableReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v52) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v52 & 0x7F) << v5;
        if ((v52 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 & 7;
      if (v13 == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v14 = v12 >> 3;
      if ((v12 >> 3) <= 4)
      {
        break;
      }

      if (v14 <= 6)
      {
        if (v14 == 5)
        {
          if (v13 != 2)
          {
            v52 = 0;
            v44 = [a2 position] + 8;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 8, v45 <= objc_msgSend(a2, "length")))
            {
              v49 = [a2 data];
              [v49 getBytes:&v52 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            PBRepeatedDoubleAdd();
            goto LABEL_97;
          }

          v52 = 0;
          v53 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v32 = [a2 position];
            if (v32 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v54 = 0;
            v33 = [a2 position] + 8;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 8, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:&v54 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            PBRepeatedDoubleAdd();
          }

LABEL_75:
          PBReaderRecallMark();
          goto LABEL_97;
        }

        if (v14 == 6)
        {
          if (v13 != 2)
          {
            LODWORD(v52) = 0;
            v46 = [a2 position] + 4;
            if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 4, v47 <= objc_msgSend(a2, "length")))
            {
              v50 = [a2 data];
              [v50 getBytes:&v52 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            PBRepeatedFloatAdd();
            goto LABEL_97;
          }

          v52 = 0;
          v53 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v18 = [a2 position];
            if (v18 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            LODWORD(v54) = 0;
            v19 = [a2 position] + 4;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 4, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v54 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            PBRepeatedFloatAdd();
          }

          goto LABEL_75;
        }

LABEL_73:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_97;
      }

      if (v14 == 7)
      {
        v15 = PBReaderReadString();
        v16 = 88;
        goto LABEL_72;
      }

      if (v14 != 8)
      {
        goto LABEL_73;
      }

      v24 = objc_alloc_init(DESDataTransport);
      objc_storeStrong((a1 + 64), v24);
      v52 = 0;
      v53 = 0;
      if (!PBReaderPlaceMark() || !DESDataTransportReadFrom(&v24->super.super.isa, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_97:
      v51 = [a2 position];
      if (v51 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v14 > 2)
    {
      if (v14 == 3)
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 100) |= 2u;
        while (1)
        {
          LOBYTE(v52) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v52 & 0x7F) << v36;
          if ((v52 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v11 = v37++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_83;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v38;
        }

LABEL_83:
        v43 = 72;
        goto LABEL_84;
      }

      if (v14 == 4)
      {
        *(a1 + 100) |= 1u;
        v52 = 0;
        v22 = [a2 position] + 8;
        if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 8, v23 <= objc_msgSend(a2, "length")))
        {
          v48 = [a2 data];
          [v48 getBytes:&v52 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 56) = v52;
        goto LABEL_97;
      }
    }

    else
    {
      if (v14 == 1)
      {
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 100) |= 4u;
        while (1)
        {
          LOBYTE(v52) = 0;
          v28 = [a2 position] + 1;
          if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
          {
            v30 = [a2 data];
            [v30 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v27 |= (v52 & 0x7F) << v25;
          if ((v52 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v11 = v26++ >= 9;
          if (v11)
          {
            v31 = 0;
            goto LABEL_79;
          }
        }

        if ([a2 hasError])
        {
          v31 = 0;
        }

        else
        {
          v31 = v27;
        }

LABEL_79:
        v43 = 96;
LABEL_84:
        *(a1 + v43) = v31;
        goto LABEL_97;
      }

      if (v14 == 2)
      {
        v15 = PBReaderReadString();
        v16 = 80;
LABEL_72:
        v42 = *(a1 + v16);
        *(a1 + v16) = v15;

        goto LABEL_97;
      }
    }

    goto LABEL_73;
  }

  return [a2 hasError] ^ 1;
}

uint64_t calculateSigmaFromEpsilonAndDeltaForUnitL2Norm(long double a1, long double a2)
{
  v9[4] = *MEMORY[0x277D85DE8];
  if (a2 != 0.0 && a1 != 0.0)
  {
    v4 = erfc(-0.0) * 0.5;
    v5 = exp(a1);
    if (v4 - v5 * (erfc(sqrt(a1 + a1) / 1.41421356) * 0.5) <= a2)
    {
      v9[0] = &unk_285C0FB88;
      *&v9[1] = a1;
      *&v9[2] = a2;
      v9[3] = v9;
      bisect(v9);
      result = std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v9);
    }

    else
    {
      v8[0] = &unk_285C0FC18;
      *&v8[1] = a1;
      *&v8[2] = a2;
      v8[3] = v8;
      bisect(v8);
      result = std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v8);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2490108A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

double bisect(uint64_t a1)
{
  v2 = 0.0;
  std::function<double ()(double)>::operator()(a1, 0.0);
  v4 = v3;
  v5 = 1000.0;
  std::function<double ()(double)>::operator()(a1, 1000.0);
  if (v4 * v6 >= 0.0)
  {
    return NAN;
  }

  do
  {
    v7 = (v2 + v5) * 0.5;
    std::function<double ()(double)>::operator()(a1, v7);
    if (fabs(v8) <= 2.22044605e-16)
    {
      break;
    }

    std::function<double ()(double)>::operator()(a1, (v2 + v5) * 0.5);
    v10 = v9;
    std::function<double ()(double)>::operator()(a1, v2);
    if (v10 * v11 < 0.0)
    {
      v5 = (v2 + v5) * 0.5;
    }

    else
    {
      v2 = (v2 + v5) * 0.5;
    }
  }

  while (v5 - v2 >= 2.22044605e-16);
  return v7;
}

uint64_t std::function<double ()(double)>::operator()(uint64_t a1, double a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

__n128 std::__function::__func<calculateSigmaFromEpsilonAndDeltaForUnitL2Norm::$_0,std::allocator<calculateSigmaFromEpsilonAndDeltaForUnitL2Norm::$_0>,double ()(double)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285C0FB88;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

long double std::__function::__func<calculateSigmaFromEpsilonAndDeltaForUnitL2Norm::$_0,std::allocator<calculateSigmaFromEpsilonAndDeltaForUnitL2Norm::$_0>,double ()(double)>::operator()(uint64_t a1, double *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = erfc(sqrt(*a2 * v4) / -1.41421356) * 0.5;
  v6 = exp(v4);
  return v5 - v6 * (erfc(sqrt((v3 + 2.0) * v4) / 1.41421356) * 0.5) - *(a1 + 16);
}

uint64_t std::__function::__func<calculateSigmaFromEpsilonAndDeltaForUnitL2Norm::$_0,std::allocator<calculateSigmaFromEpsilonAndDeltaForUnitL2Norm::$_0>,double ()(double)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 std::__function::__func<calculateSigmaFromEpsilonAndDeltaForUnitL2Norm::$_1,std::allocator<calculateSigmaFromEpsilonAndDeltaForUnitL2Norm::$_1>,double ()(double)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285C0FC18;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

long double std::__function::__func<calculateSigmaFromEpsilonAndDeltaForUnitL2Norm::$_1,std::allocator<calculateSigmaFromEpsilonAndDeltaForUnitL2Norm::$_1>,double ()(double)>::operator()(uint64_t a1, double *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = erfc(sqrt(*a2 * v4) / 1.41421356) * 0.5;
  v6 = exp(v4);
  return v5 - v6 * (erfc(sqrt((v3 + 2.0) * v4) / 1.41421356) * 0.5) - *(a1 + 16);
}

uint64_t std::__function::__func<calculateSigmaFromEpsilonAndDeltaForUnitL2Norm::$_1,std::allocator<calculateSigmaFromEpsilonAndDeltaForUnitL2Norm::$_1>,double ()(double)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void __DESLoggingGetCoreChannel_block_invoke()
{
  v0 = os_log_create("com.apple.MLRuntime", "MLRuntime");
  v1 = DESLoggingGetCoreChannel_coreChannel;
  DESLoggingGetCoreChannel_coreChannel = v0;

  if (!DESLoggingGetCoreChannel_coreChannel && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __DESLoggingGetCoreChannel_block_invoke_cold_1();
  }
}

uint64_t DESEncryptedDataReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadData();
          v15 = 24;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_24:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_41;
          }

          v14 = PBReaderReadString();
          v15 = 8;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v27 = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (v27 & 0x7F) << v17;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v11 = v18++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_40;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v19;
          }

LABEL_40:
          *(a1 + 32) = v23;
          goto LABEL_41;
        }

        if (v13 != 2)
        {
          goto LABEL_24;
        }

        v14 = PBReaderReadData();
        v15 = 16;
      }

      v24 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_41:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id getFedStatsDataEncoderClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getFedStatsDataEncoderClass_softClass;
  v7 = getFedStatsDataEncoderClass_softClass;
  if (!getFedStatsDataEncoderClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getFedStatsDataEncoderClass_block_invoke;
    v3[3] = &unk_278F84270;
    v3[4] = &v4;
    __getFedStatsDataEncoderClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_249012A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PrivateFederatedLearningLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!PrivateFederatedLearningLibraryCore_frameworkLibrary)
  {
    PrivateFederatedLearningLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = PrivateFederatedLearningLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __PrivateFederatedLearningLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PrivateFederatedLearningLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getFedStatsDataEncoderClass_block_invoke(uint64_t a1)
{
  v3 = 0;
  if (!PrivateFederatedLearningLibraryCore())
  {
    __getFedStatsDataEncoderClass_block_invoke_cold_2(&v3);
  }

  result = objc_getClass("FedStatsDataEncoder");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFedStatsDataEncoderClass_block_invoke_cold_1();
  }

  getFedStatsDataEncoderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id ErrorFromException(void *a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCA9B8];
  if (a1)
  {
    v7 = @"callStackSymbols";
    v2 = [a1 callStackSymbols];
    v8[0] = v2;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v4 = [v1 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:4000 userInfo:v3];
  }

  else
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:4000 userInfo:0];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t DESDataTransportReadFrom(id *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v14 = objc_alloc_init(DESBfloat16Transport);
        objc_storeStrong(a1 + 1, v14);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !DESBfloat16TransportReadFrom(v14, a2))
        {
LABEL_32:

          return 0;
        }

        goto LABEL_28;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(DESBinary64Transport);
        objc_storeStrong(a1 + 3, v14);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !DESBinary64TransportReadFrom(v14, a2))
        {
          goto LABEL_32;
        }

LABEL_28:
        PBReaderRecallMark();

        goto LABEL_30;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_30:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(DESBinary32Transport);
    objc_storeStrong(a1 + 2, v14);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !DESBinary32TransportReadFrom(v14, a2))
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  return [a2 hasError] ^ 1;
}

void DESShouldAlwaysParticipate_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = @"ShouldAlwaysParticipate";
  _os_log_debug_impl(&dword_248FF7000, log, OS_LOG_TYPE_DEBUG, "Detected override preference key: %@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void DESLogAndReturnSunsetError_cold_2(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138477827;
  v3 = @"DodML is already sunset. Pls refer to #help-pfl for more details";
  _os_log_error_impl(&dword_248FF7000, log, OS_LOG_TYPE_ERROR, "%{private}@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void DeleteFileWithBasePath_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_248FF7000, log, OS_LOG_TYPE_ERROR, "Could not garbage collect old DES record file %@: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void DeleteFileWithBasePath_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_248FF7000, a2, OS_LOG_TYPE_DEBUG, "Garbage collected old DES record file %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void DESSubmissionLogGarbageCollect_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_248FF7000, a2, OS_LOG_TYPE_ERROR, "Couldn't read DES submission logs: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void DESWriteSubmissionLogData_cold_2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_248FF7000, log, OS_LOG_TYPE_ERROR, "Failed to create submission logs directory: %@. Error: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void DESWriteSubmissionLogData_cold_3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_248FF7000, a2, OS_LOG_TYPE_ERROR, "Failed to write submission log data to file: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __getFedStatsDataEncoderClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getFedStatsDataEncoderClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"DESFedStatsRecorder.m" lineNumber:22 description:{@"Unable to find class %s", "FedStatsDataEncoder"}];

  __break(1u);
}

void __getFedStatsDataEncoderClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PrivateFederatedLearningLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"DESFedStatsRecorder.m" lineNumber:21 description:{@"%s", *a1}];

  __break(1u);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}