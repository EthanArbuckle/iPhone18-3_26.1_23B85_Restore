uint64_t OUTLINED_FUNCTION_11_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_19()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_1()
{

  return sub_2320EE020();
}

uint64_t SGRecordMeasurementState(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  result = a1[2];
  if (!result)
  {
    v3 = mach_absolute_time() - a1[1];
    if (SGMachTimeToNanoseconds_onceToken != -1)
    {
      dispatch_once(&SGMachTimeToNanoseconds_onceToken, &__block_literal_global_16525);
    }

    v4 = v3 * SGMachTimeToNanoseconds_machTimebaseInfo / *algn_280D9D734;
    v5 = sgLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v9 = *a1;
      v6 = v4;
      v10 = 138412546;
      v11 = v9;
      v12 = 2048;
      v13 = v4 * 0.000000001;
      _os_log_debug_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEBUG, "SGScales: %@ took %f seconds", &v10, 0x16u);
    }

    else
    {
      v6 = v4;
    }

    v7 = *a1;
    [SGAggregateLogging pushValue:@"timing" toDistKeyWithDomain:*a1 suffix:v6 / 1000000.0];

    *a1 = 0;
    if (v4 <= 1)
    {
      result = 1;
    }

    else
    {
      result = v4;
    }

    a1[2] = result;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

id aggdKeyForComponents(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v19[1] = *MEMORY[0x277D85DE8];
  memset(v18, 0, sizeof(v18));
  v17 = v18;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  v13 = a1;
  appendStringToBuf(&v17, v19, @"com.apple.suggestions", 0);
  appendStringToBuf(&v17, v19, v13, 1);

  appendStringToBuf(&v17, v19, v9, 1);
  appendStringToBuf(&v17, v19, v12, 1);

  appendStringToBuf(&v17, v19, v11, 1);
  appendStringToBuf(&v17, v19, v10, 1);

  v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v18];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

void appendStringToBuf(char **a1, unint64_t a2, void *a3, int a4)
{
  v7 = a3;
  v8 = *a1;
  v13 = v7;
  if (v7 && v8 < a2)
  {
    if (a4)
    {
      *v8 = 46;
      v8 = *a1 + 1;
      *a1 = v8;
      if (v8 >= a2)
      {
        v11 = [MEMORY[0x277CCA890] currentHandler];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void appendStringToBuf(char **, const char *, NSString *__strong, BOOL)"}];
        [v11 handleFailureInFunction:v12 file:@"SGAggregateLogging+PET.m" lineNumber:26 description:@"Logging string too long"];

        v8 = *a1;
      }
    }

    v8 = &(*a1)[strlcpy(v8, [v13 UTF8String], a2 - *a1)];
    *a1 = v8;
  }

  if (v8 >= a2)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void appendStringToBuf(char **, const char *, NSString *__strong, BOOL)"}];
    [v9 handleFailureInFunction:v10 file:@"SGAggregateLogging+PET.m" lineNumber:30 description:@"Logging string too long"];
  }
}

void ___registerEnableDisablePreferenceChangeListener_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v2 postNotificationName:*MEMORY[0x277D02480] object:0 userInfo:0 deliverImmediately:1];

  if (*(a1 + 32) == 1)
  {
    v3 = *MEMORY[0x277D021A0];
    v4 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
    LOBYTE(v3) = [v4 containsObject:v3];

    v5 = [MEMORY[0x277CC5A40] sg_newStore];
    v6 = v5;
    if (v3)
    {
      [v5 removeSuggestedEventCalendar];
    }

    else
    {
      [v5 insertSuggestedEventCalendar];
    }
  }
}

void sub_231E650CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 144), 8);
  _Unwind_Resume(a1);
}

void SGNotUserInitiated(void *a1, int a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if (SGNotUserInitiated__pasOnceToken3 != -1)
  {
    dispatch_once(&SGNotUserInitiated__pasOnceToken3, &__block_literal_global_4957);
  }

  v8 = SGNotUserInitiated__pasExprOnceResult;
  if (SGNotUserInitiated__pasOnceToken4 != -1)
  {
    dispatch_once(&SGNotUserInitiated__pasOnceToken4, &__block_literal_global_7);
  }

  v9 = SGNotUserInitiated__pasExprOnceResult_5;
  v10 = qos_class_self();
  if (v10 >= QOS_CLASS_UTILITY)
  {
    v11 = 17;
  }

  else
  {
    v11 = v10;
  }

  pthread_mutex_lock(&SGNotUserInitiated_queueCacheLock);
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v11];
  v13 = [v8 objectForKeyedSubscript:v12];

  if (!v13)
  {
    v13 = objc_opt_new();
    [v13 setQualityOfService:v11];
    [v13 setMaxConcurrentOperationCount:2];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v11];
    [v8 setObject:v13 forKeyedSubscript:v14];
  }

  v15 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v6];
  [v15 setName:v5];
  if (a2 == 2)
  {
    v16 = [v9 objectForKeyedSubscript:v5];
    if (v16)
    {
      [v15 addDependency:v16];
      objc_initWeak(&location, v15);
      objc_initWeak(&from, v16);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __SGNotUserInitiated_block_invoke_3;
      v22[3] = &unk_27894BF30;
      objc_copyWeak(&v23, &location);
      objc_copyWeak(&v24, &from);
      [v16 setCompletionBlock:v22];
      objc_destroyWeak(&v24);
      objc_destroyWeak(&v23);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }

    [v9 setObject:v15 forKeyedSubscript:v5];

    objc_initWeak(&location, v15);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __SGNotUserInitiated_block_invoke_4;
    v18[3] = &unk_27894BF58;
    v19 = v9;
    v20 = v5;
    objc_copyWeak(&v21, &location);
    [v15 setCompletionBlock:v18];
    objc_destroyWeak(&v21);

    objc_destroyWeak(&location);
  }

  else
  {
    [v15 setCompletionBlock:&__block_literal_global_12];
  }

  pthread_mutex_unlock(&SGNotUserInitiated_queueCacheLock);
  v17 = waitGroup();
  dispatch_group_enter(v17);

  [v13 addOperation:v15];
  objc_autoreleasePoolPop(v7);
}

void sub_231E65A0C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 96));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

id waitGroup()
{
  if (waitGroup__pasOnceToken2 != -1)
  {
    dispatch_once(&waitGroup__pasOnceToken2, &__block_literal_global_14);
  }

  v1 = waitGroup__pasExprOnceResult;

  return v1;
}

void sub_231E65F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void SGJSGarbageCollect(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getJSGarbageCollectSymbolLoc_ptr;
  v9 = getJSGarbageCollectSymbolLoc_ptr;
  if (!getJSGarbageCollectSymbolLoc_ptr)
  {
    v3 = JavaScriptCoreLibrary();
    v7[3] = dlsym(v3, "JSGarbageCollect");
    getJSGarbageCollectSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1);
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void SGJSGarbageCollect(JSContextRef)"];
    [v4 handleFailureInFunction:v5 file:@"SGReverseTemplateJS.m" lineNumber:56 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_231E661B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SGNotUserInitiated_block_invoke_4(uint64_t a1)
{
  pthread_mutex_lock(&SGNotUserInitiated_queueCacheLock);
  v2 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  WeakRetained = objc_loadWeakRetained((a1 + 48));

  if (v2 == WeakRetained)
  {
    [*(a1 + 32) setObject:0 forKeyedSubscript:*(a1 + 40)];
  }

  pthread_mutex_unlock(&SGNotUserInitiated_queueCacheLock);
  v4 = waitGroup();
  dispatch_group_leave(v4);
}

uint64_t OUTLINED_FUNCTION_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 48) = 0xD000000000000018;
  *(result + 56) = (a2 - 32) | 0x8000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_78()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_1()
{
  result = *(v0 - 168);
  v2 = *(v0 - 160);
  v3 = *(v0 - 152);
  v4 = *(v0 - 144);
  return result;
}

uint64_t getScannerRefAndAcquire()
{
  if (getScannerRefAndAcquire_sharedScannerSemaphoreOnce != -1)
  {
    dispatch_once(&getScannerRefAndAcquire_sharedScannerSemaphoreOnce, &__block_literal_global_251);
  }

  dispatch_semaphore_wait(sharedScannerSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  pthread_mutex_lock(&scannerPoolLock);
  if (scannerInUse[0] == 1)
  {
    if (byte_280D93FC9)
    {
LABEL_5:
      v0 = [MEMORY[0x277CCA890] currentHandler];
      v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"DDScannerRef getScannerRefAndAcquire(void)"];
      [v0 handleFailureInFunction:v1 file:@"SGDataDetectorMatch.m" lineNumber:311 description:@"Could not get data detector from pool"];

      v2 = 0;
      goto LABEL_11;
    }

    v3 = 1u;
  }

  else
  {
    v3 = 0;
  }

  scannerInUse[v3] = 1;
  v4 = sharedScanners[v3];
  if (!v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D425E8]) initWithBlock:&__block_literal_global_255 idleTimeout:1.0];
    v6 = sharedScanners[v3];
    sharedScanners[v3] = v5;

    v4 = sharedScanners[v3];
  }

  v2 = [v4 result];
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_11:
  pthread_mutex_unlock(&scannerPoolLock);
  return v2;
}

id __getScannerRefAndAcquire_block_invoke_2()
{
  ScannerOrFail = SGDataDetectorsCreateScannerOrFail();

  return ScannerOrFail;
}

uint64_t SGDataDetectorsCreateScannerOrFail()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = DDScannerCreate();
  if (v0)
  {
    DDScannerEnableOptionalSource();
  }

  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

intptr_t releaseScannerRef(const void *a1)
{
  pthread_mutex_lock(&scannerPoolLock);
  v2 = 0;
  v3 = 1;
  while (1)
  {
    v4 = v3;
    v5 = [sharedScanners[v2] resultIfAvailable];

    if (v5 == a1)
    {
      break;
    }

    v3 = 0;
    v2 = 1u;
    if ((v4 & 1) == 0)
    {
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void releaseScannerRef(DDScannerRef)"];
      [v6 handleFailureInFunction:v7 file:@"SGDataDetectorMatch.m" lineNumber:325 description:{@"Could not return scanner %@ to pool", a1}];

      goto LABEL_6;
    }
  }

  scannerInUse[v2] = 0;
  CFRelease(a1);
LABEL_6:
  pthread_mutex_unlock(&scannerPoolLock);
  v8 = sharedScannerSemaphore;

  return dispatch_semaphore_signal(v8);
}

void SGDataDetectorsScanRange(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a6;
  if (DDScannerScanStringWithRange())
  {
    v9 = DDScannerCopyResultsWithOptions();
    if (v9)
    {
      v10 = v9;
      Count = CFArrayGetCount(v9);
      v12 = Count - 1;
      if (Count >= 1)
      {
        v13 = 0;
        do
        {
          v14 = objc_autoreleasePoolPush();
          ValueAtIndex = CFArrayGetValueAtIndex(v10, v13);
          v16 = sgLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v21 = ValueAtIndex;
            _os_log_debug_impl(&dword_231E60000, v16, OS_LOG_TYPE_DEBUG, "SGDataDetectors: data detection: %@", buf, 0xCu);
          }

          v17 = v8[2](v8, ValueAtIndex);
          objc_autoreleasePoolPop(v14);
          if (!v17)
          {
            break;
          }
        }

        while (v12 != v13++);
      }

      CFRelease(v10);
    }
  }

  DDScannerReset();

  v19 = *MEMORY[0x277D85DE8];
}

void sub_231E67164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_231E67860()
{
  v1 = sub_2320EDA70();
  OUTLINED_FUNCTION_101(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_231E678F4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_231E67990()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_231E67AB0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_231E67AE8()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_73_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_231E67B1C()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_73_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_231E67B88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D318, &qword_232106510);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_231E67BDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D318, &qword_232106510);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

id sub_231E67FF8(uint64_t a1)
{
  sub_2320EDC40();
  if (v2)
  {
    v3 = sub_2320EDDA0();
  }

  else
  {
    v3 = 0;
  }

  sub_2320EDC50();
  v4 = sub_2320EDE10();

  sub_2320EDC30();
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v6 = sub_2320EDDA0();

  v7 = [v5 initWithDisplayName:v3 handles:v4 handleIdentifier:v6];

  v8 = sub_2320EDC60();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

uint64_t sub_231E68114()
{
  v1044 = sub_2320EDA70();
  v1 = OUTLINED_FUNCTION_13(v1044);
  v1043 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_57(&v1039 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1041 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_33(v8);
  v1048 = sub_2320EDD40();
  v9 = OUTLINED_FUNCTION_13(v1048);
  v1047 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_57(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D298, &qword_232106478);
  v16 = OUTLINED_FUNCTION_100(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_33(v25);
  v1087 = sub_2320EDC00();
  v26 = OUTLINED_FUNCTION_13(v1087);
  v1083 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_33(v36);
  v1119 = sub_2320ED8C0();
  v37 = OUTLINED_FUNCTION_13(v1119);
  v1110 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_58();
  v1114.n128_u64[0] = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2A0, &qword_232106480);
  v49 = OUTLINED_FUNCTION_100(v48);
  v51 = *(v50 + 64);
  v52 = MEMORY[0x28223BE20](v49);
  v54 = &v1039 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_57(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2A8, &qword_232106488);
  v59 = OUTLINED_FUNCTION_100(v58);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_57(v77);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2B0, &qword_232106810);
  v79 = OUTLINED_FUNCTION_100(v78);
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_33(v93);
  v94 = sub_2320ED5F0();
  v95 = OUTLINED_FUNCTION_13(v94);
  v1112 = v96;
  v1113 = v95;
  v98 = *(v97 + 64);
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v109);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_57(v110);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2B8, &qword_232106490);
  v112 = OUTLINED_FUNCTION_100(v111);
  v114 = *(v113 + 64);
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_33(v116);
  v1108.n128_u64[0] = sub_2320ED550();
  v117 = OUTLINED_FUNCTION_13(v1108.n128_i64[0]);
  v1097 = v118;
  v120 = *(v119 + 64);
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v121);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_33(v122);
  v1115 = sub_2320EDA20();
  v123 = OUTLINED_FUNCTION_13(v1115);
  v1117.n128_u64[0] = v124;
  v126 = *(v125 + 64);
  MEMORY[0x28223BE20](v123);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v127);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v128);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v129);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v130);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v131);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v132);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v133);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v134);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v135);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v136);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v137);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v138);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v139);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v140);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v141);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  v143 = MEMORY[0x28223BE20](v142);
  v145 = (&v1039 - v144);
  MEMORY[0x28223BE20](v143);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v146);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  v148 = MEMORY[0x28223BE20](v147);
  v150 = &v1039 - v149;
  MEMORY[0x28223BE20](v148);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v151);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  v153 = MEMORY[0x28223BE20](v152);
  v155 = &v1039 - v154;
  v156 = MEMORY[0x28223BE20](v153);
  v158 = (&v1039 - v157);
  MEMORY[0x28223BE20](v156);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v159);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v160);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v161);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v162);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v163);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v164);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v165);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v166);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  v168 = MEMORY[0x28223BE20](v167);
  v170 = &v1039 - v169;
  MEMORY[0x28223BE20](v168);
  v172 = &v1039 - v171;
  v1109 = sub_231E6E194();
  v1118 = v173;
  v1116 = v0;
  v175 = sub_2320EDA30();
  v176 = v174;
  v177 = v175 == 0x746867696C66 && v174 == 0xE600000000000000;
  if (v177 || (OUTLINED_FUNCTION_52() & 1) != 0)
  {

    v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2C8, &qword_2321064A0);
    v179 = OUTLINED_FUNCTION_107();
    v1114 = xmmword_232106450;
    v180 = OUTLINED_FUNCTION_3(v179, xmmword_232106450);
    OUTLINED_FUNCTION_16(v180, "http://schema.org");
    v1089 = v181;
    v182 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_31();
    *(v183 + 72) = v182;
    *(v183 + 80) = v184;
    OUTLINED_FUNCTION_97();
    v185[15] = v182;
    OUTLINED_FUNCTION_109(v185, v186);
    v1128 = sub_2320EDD60();
    v187 = OUTLINED_FUNCTION_6("http://schema.org/Reservation");
    v188 = v1118;
    MEMORY[0x23837EBB0](v187, v1118);

    v1127 = v182;
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_36();
    sub_2320EDA50();
    sub_2320ED980();
    OUTLINED_FUNCTION_46();
    v189 = *(v1117.n128_u64[0] + 8);
    OUTLINED_FUNCTION_123(v1117.n128_u64[0] + 8);
    v190();
    if ("http://schema.org/EventReservation" != -16)
    {
      v1127 = v182;
      *&v1125 = v172;
      *(&v1125 + 1) = "g/EventReservation";
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_32();
      sub_231E6EE40(v192, v191 & 0xFFFFFFFFFFFFLL | 0x7461000000000000, v193);
      OUTLINED_FUNCTION_36();
    }

    sub_2320EDA50();
    sub_2320ED9C0();
    OUTLINED_FUNCTION_46();
    (v1118)(v170, v188);
    if ("http://schema.org/EventReservation" != -16)
    {
      v1127 = v182;
      *&v1125 = v170;
      *(&v1125 + 1) = "g/EventReservation";
      sub_231E6EBF4(&v1125, &v1122);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_85();
      v194 = OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_102(v194, v195);
      OUTLINED_FUNCTION_36();
    }

    v1109 = v54;
    OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_82(&v1132);
    v196 = v1116;
    sub_2320EDA50();
    v197 = sub_2320ED8F0();
    v198 = OUTLINED_FUNCTION_81();
    v199 = v1118;
    (v1118)(v198);
    v200 = sub_231E831C4(v197);

    if (v200)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
      v201 = OUTLINED_FUNCTION_94();
      v202 = OUTLINED_FUNCTION_0(v201, v1114);
      v203 = OUTLINED_FUNCTION_2(v202, "http://schema.org/Person");
      *(v203 + 64) = v54;
      *(v203 + 72) = v204;
      sub_2320EDA50();
      v205 = sub_2320ED8F0();
      v206 = OUTLINED_FUNCTION_81();
      (v1118)(v206);
      *&v1125 = v205;
      v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D8, &qword_2321064B0);
      sub_231E6EF88();
      OUTLINED_FUNCTION_7();
      sub_2320EDD80();
      OUTLINED_FUNCTION_49();
      v199 = v1118;

      v201[5].n128_u64[0] = v182;
      v201[5].n128_u64[1] = v207;
      v188 = v1115;
      sub_2320EDD60();
      v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
      OUTLINED_FUNCTION_37(v208);
      OUTLINED_FUNCTION_85();
      OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_61();
      sub_231E6EE40(v209, v210, v211);
      OUTLINED_FUNCTION_36();
    }

    sub_2320EDA50();
    v212 = sub_2320ED8D0();
    v213 = OUTLINED_FUNCTION_81();
    (v199)(v213);
    v214 = sub_231E831C4(v212);

    if (v214)
    {
      v215 = OUTLINED_FUNCTION_107();
      OUTLINED_FUNCTION_55(v215);
      OUTLINED_FUNCTION_31();
      v54 = "http://schema.org/Organization";
      v217 = v216;
      *(v218 + 32) = v216;
      *(v218 + 40) = 0xE500000000000000;
      OUTLINED_FUNCTION_29();
      *(v219 + 48) = 0xD000000000000018;
      *(v219 + 56) = v220;
      v1088 = v178;
      v221 = MEMORY[0x277D837D0];
      OUTLINED_FUNCTION_77();
      *(v222 + 72) = v221;
      *(v222 + 80) = v223;
      OUTLINED_FUNCTION_76(v222);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
      v224 = OUTLINED_FUNCTION_94();
      OUTLINED_FUNCTION_55(v224);
      *(v225 + 32) = v217;
      *(v225 + 40) = 0xE500000000000000;
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_20(v226, v227);
      sub_2320EDA50();
      v228 = sub_2320ED8D0();
      v229 = OUTLINED_FUNCTION_118();
      (v1118)(v229);
      *&v1125 = v228;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D8, &qword_2321064B0);
      sub_231E6EF88();
      OUTLINED_FUNCTION_7();
      v230 = sub_2320EDD80();
      v182 = v231;
      v188 = v1115;

      v224[5].n128_u64[0] = v230;
      v224[5].n128_u64[1] = v182;
      v232 = sub_2320EDD60();
      v215[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
      v215[6].n128_u64[0] = v232;
      v199 = v1118;
      v178 = v1088;
      v212 = sub_2320EDD60();
      v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2F0, &qword_2321064C0);
      OUTLINED_FUNCTION_37(v233);
      OUTLINED_FUNCTION_85();
      OUTLINED_FUNCTION_24();
      v234 = OUTLINED_FUNCTION_41();
      sub_231E6EE40(v234, v235, v236);
      OUTLINED_FUNCTION_36();
    }

    OUTLINED_FUNCTION_82(&v1122);
    sub_2320EDA50();
    sub_2320ED940();
    OUTLINED_FUNCTION_89();
    v237 = OUTLINED_FUNCTION_81();
    (v199)(v237);
    OUTLINED_FUNCTION_70();
    if (v182)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
      v238 = OUTLINED_FUNCTION_94();
      OUTLINED_FUNCTION_22(v238);
      *(v239 + 32) = v54;
      *(v239 + 40) = v240;
      v241 = OUTLINED_FUNCTION_1(v239, "http://schema.org/Place");
      v241[8] = 1701667182;
      v241[9] = v242;
      v241[10] = v212;
      v241[11] = v182;
      v212 = sub_2320EDD60();
      v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
      OUTLINED_FUNCTION_37(v243);
      OUTLINED_FUNCTION_85();
      v244 = OUTLINED_FUNCTION_38();
      sub_231E6EE40(v244, v245, 0xE600000000000000);
      OUTLINED_FUNCTION_36();
    }

    OUTLINED_FUNCTION_90(&v1122 + 8);
    sub_2320EDA50();
    OUTLINED_FUNCTION_45(v1124);
    sub_2320ED950();
    (v199)("http://schema.org/Organization", v188);
    v246 = OUTLINED_FUNCTION_51();
    v247 = v1108.n128_u64[0];
    OUTLINED_FUNCTION_40(v246, v248);
    if (v177)
    {
      sub_231E6F05C(v212, &qword_27DD8D2B8, &qword_232106490);
      OUTLINED_FUNCTION_88();
    }

    else
    {
      OUTLINED_FUNCTION_83(&v1119);
      v250 = *(v249 + 32);
      OUTLINED_FUNCTION_110();
      OUTLINED_FUNCTION_87();
      v251();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
      v252 = OUTLINED_FUNCTION_107();
      v253 = OUTLINED_FUNCTION_0(v252, xmmword_232106440);
      strcpy(&v253[3], "CheckInAction");
      v253[3].n128_u16[7] = -4864;
      v253[4].n128_u64[0] = 0x747865746E6F6340;
      v253[4].n128_u64[1] = 0xE800000000000000;
      OUTLINED_FUNCTION_88();
      v254 = v1089;
      v255[10] = v196;
      v255[11] = v254;
      v255[12] = 0x746567726174;
      v255[13] = 0xE600000000000000;
      v252[7].n128_u64[0] = sub_2320ED530();
      v252[7].n128_u64[1] = v256;
      sub_2320EDD60();
      v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
      OUTLINED_FUNCTION_37(v257);
      OUTLINED_FUNCTION_85();
      v258 = OUTLINED_FUNCTION_41();
      sub_231E6EE40(v258, v259, v260);
      OUTLINED_FUNCTION_36();
      v261 = *(v178 + 8);
      OUTLINED_FUNCTION_70();
      v262();
    }

    v263 = swift_allocObject();
    v1111 = xmmword_232106460;
    v264 = OUTLINED_FUNCTION_35(v263, xmmword_232106460);
    v264[2].n128_u64[0] = v54;
    v264[2].n128_u64[1] = v265;
    OUTLINED_FUNCTION_29();
    v266[9] = MEMORY[0x277D837D0];
    v266[6] = v196 + 7;
    v266[7] = v267;
    v1121 = sub_2320EDD60();
    OUTLINED_FUNCTION_56(v1123);
    sub_2320EDA50();
    v268 = sub_2320ED970();
    v270 = v269;
    v271 = v247;
    v272 = v1118;
    (v1118)(v271, v188);
    if (v270)
    {
      OUTLINED_FUNCTION_125(&v1120);
      sub_2320EDA50();
      v273 = sub_2320ED8E0();
      v274 = v188;
      v276 = v275;
      (v272)(v54, v274);
      if (v276)
      {
        *&v1125 = v268;
        *(&v1125 + 1) = v270;

        MEMORY[0x23837EBB0](v273, v276);

        v1127 = MEMORY[0x277D837D0];
        OUTLINED_FUNCTION_34();
        OUTLINED_FUNCTION_103();
        sub_231E6EE40(&v1122, v196 - 1, 0x800000023210E8F0);
        OUTLINED_FUNCTION_84();
      }

      else
      {
      }

      v188 = v1115;
      v272 = v1118;
    }

    OUTLINED_FUNCTION_83(&v1125);
    sub_2320EDA50();
    sub_2320ED8E0();
    OUTLINED_FUNCTION_89();
    v326 = OUTLINED_FUNCTION_79();
    (v272)(v326);
    if (v268)
    {
      OUTLINED_FUNCTION_112(MEMORY[0x277D837D0]);
      OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_103();
      v327 = OUTLINED_FUNCTION_93();
      sub_231E6EE40(v327, v328, v329);
      OUTLINED_FUNCTION_84();
    }

    OUTLINED_FUNCTION_83(&v1125 + 8);
    sub_2320EDA50();
    v330 = v268;
    sub_2320ED970();
    OUTLINED_FUNCTION_89();
    v331 = OUTLINED_FUNCTION_79();
    (v272)(v331);
    v332 = v1113;
    v333 = v1105;
    if (v330)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
      v334 = OUTLINED_FUNCTION_94();
      OUTLINED_FUNCTION_22(v334);
      *(v335 + 32) = v54;
      *(v335 + 40) = v336;
      v337 = OUTLINED_FUNCTION_106(v335, "departureAirport");
      v337[8] = 0x65646F4361746169;
      v337[9] = 0xE800000000000000;
      v337[10] = v270;
      v337[11] = v330;
      v270 = sub_2320EDD60();
      v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
      OUTLINED_FUNCTION_64(v338);
      OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_67();
      v339 = OUTLINED_FUNCTION_93();
      sub_231E6EE40(v339, v340, 0xE800000000000000);
      OUTLINED_FUNCTION_84();
    }

    OUTLINED_FUNCTION_27(&v1127);
    sub_2320EDA60();
    OUTLINED_FUNCTION_23();
    if (v177)
    {
      sub_231E6F05C(v270, &qword_27DD8D2B0, &qword_232106810);
    }

    else
    {
      v341 = v1112;
      v342 = *(v1112 + 32);
      OUTLINED_FUNCTION_96();
      OUTLINED_FUNCTION_87();
      v343();
      v270 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
      v344 = sub_2320ED5B0();
      v345 = OUTLINED_FUNCTION_122();
      v347 = [v345 v346];

      sub_2320EDDB0();
      OUTLINED_FUNCTION_89();

      v332 = v1113;
      OUTLINED_FUNCTION_112(MEMORY[0x277D837D0]);
      OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_84();
      v348 = *(v341 + 8);
      v54 = (v341 + 8);
      v348(v196, v332);
    }

    OUTLINED_FUNCTION_27(&v1128);
    sub_2320ED840();
    OUTLINED_FUNCTION_23();
    if (v177)
    {
      sub_231E6F05C(v270, &qword_27DD8D2B0, &qword_232106810);
    }

    else
    {
      v54 = v1112;
      v349 = *(v1112 + 32);
      OUTLINED_FUNCTION_96();
      OUTLINED_FUNCTION_87();
      v350();
      v351 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
      v352 = sub_2320ED5B0();
      v353 = OUTLINED_FUNCTION_122();
      v355 = [v353 v354];

      sub_2320EDDB0();
      OUTLINED_FUNCTION_89();

      v332 = v1113;
      OUTLINED_FUNCTION_112(MEMORY[0x277D837D0]);
      OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_50();
      OUTLINED_FUNCTION_74();
      v356 = OUTLINED_FUNCTION_93();
      sub_231E6EE40(v356, v357, v358);
      OUTLINED_FUNCTION_84();
      (*(v54 + 1))(v196, v332);
    }

    v359 = v1104;
    OUTLINED_FUNCTION_88();
    OUTLINED_FUNCTION_125(v1126);
    sub_2320EDA50();
    sub_2320ED990();
    (v1118)(v54, v188);
    OUTLINED_FUNCTION_23();
    if (v177)
    {
      sub_231E6F05C(v359, &qword_27DD8D2B0, &qword_232106810);
    }

    else
    {
      v360 = v1112;
      v361 = *(v1112 + 32);
      OUTLINED_FUNCTION_110();
      OUTLINED_FUNCTION_87();
      v362();
      v359 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
      v363 = sub_2320ED5B0();
      v364 = OUTLINED_FUNCTION_122();
      v188 = v332;
      v366 = [v364 v365];

      sub_2320EDDB0();
      OUTLINED_FUNCTION_89();

      OUTLINED_FUNCTION_112(MEMORY[0x277D837D0]);
      OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_103();
      v367 = OUTLINED_FUNCTION_93();
      sub_231E6EE40(v367, v368, v369);
      OUTLINED_FUNCTION_84();
      (*(v360 + 8))(v54, v188);
    }

    v370 = v1106;
    sub_2320ED7D0();
    if (__swift_getEnumTagSinglePayload(v333, 1, v1119) == 1)
    {
      sub_231E6F05C(v333, &qword_27DD8D2A8, &qword_232106488);
    }

    else
    {
      sub_2320ED890();
      v359 = v371;
      OUTLINED_FUNCTION_124();
      (v188)(v333, v1119);
      if (v359)
      {
        goto LABEL_64;
      }
    }

    sub_2320ED7D0();
    OUTLINED_FUNCTION_28(v370);
    if (v177)
    {
      v372 = &qword_27DD8D2A8;
      v373 = &qword_232106488;
      v374 = v370;
    }

    else
    {
      OUTLINED_FUNCTION_45(&v1111.n128_i64[1]);
      sub_2320ED8B0();
      OUTLINED_FUNCTION_124();
      (v188)(v370, v1119);
      v370 = sub_2320EDC20();
      OUTLINED_FUNCTION_23();
      if (!v375)
      {
        sub_2320EDC10();
        v359 = v376;
        OUTLINED_FUNCTION_101(v370);
        (*(v377 + 8))();
        if (!v359)
        {
LABEL_77:
          OUTLINED_FUNCTION_27(&v1130);
          sub_2320ED7C0();
          OUTLINED_FUNCTION_28(v359);
          if (v177)
          {
            sub_231E6F05C(v359, &qword_27DD8D2A8, &qword_232106488);
          }

          else
          {
            sub_2320ED890();
            v359 = v391;
            OUTLINED_FUNCTION_124();
            v188();
            if (v359)
            {
              goto LABEL_89;
            }
          }

          OUTLINED_FUNCTION_56(&v1121);
          sub_2320ED7C0();
          OUTLINED_FUNCTION_28(v370);
          if (v177)
          {
            v392 = &qword_27DD8D2A8;
            v393 = &qword_232106488;
            v394 = v370;
          }

          else
          {
            OUTLINED_FUNCTION_45(&v1112);
            sub_2320ED8B0();
            OUTLINED_FUNCTION_124();
            (v188)(v370, v1119);
            v370 = sub_2320EDC20();
            OUTLINED_FUNCTION_23();
            if (!v395)
            {
              sub_2320EDC10();
              v359 = v396;
              OUTLINED_FUNCTION_101(v370);
              (*(v397 + 8))();
              if (!v359)
              {
                goto LABEL_102;
              }

LABEL_89:

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
              v398 = OUTLINED_FUNCTION_113();
              v399 = OUTLINED_FUNCTION_0(v398, v1111);
              OUTLINED_FUNCTION_106(v399, "http://schema.org/Flight");
              *&v1122 = sub_2320EDD60();
              OUTLINED_FUNCTION_90(&v1114.n128_i64[1]);
              sub_2320ED7C0();
              OUTLINED_FUNCTION_28("http://schema.org/Airport");
              if (v177)
              {
                sub_231E6F05C("http://schema.org/Airport", &qword_27DD8D2A8, &qword_232106488);
                v400 = v1109;
              }

              else
              {
                v359 = sub_2320ED890();
                v370 = v401;
                (v188)("http://schema.org/Airport", v1119);
                v400 = v1109;
                if (v370)
                {
                  OUTLINED_FUNCTION_53(v359, v370);
                }
              }

              OUTLINED_FUNCTION_27(&v1115);
              sub_2320ED7C0();
              OUTLINED_FUNCTION_28(v359);
              if (v177)
              {
                v402 = &qword_27DD8D2A8;
                v403 = &qword_232106488;
                v404 = v359;
              }

              else
              {
                sub_2320ED8B0();
                (v188)(v359, v1119);
                v405 = sub_2320EDC20();
                OUTLINED_FUNCTION_42(v400, 1, v405);
                if (!v406)
                {
                  v370 = sub_2320EDC10();
                  v462 = v461;
                  OUTLINED_FUNCTION_101(v405);
                  (*(v463 + 8))(v400, v405);
                  if (v462)
                  {
                    OUTLINED_FUNCTION_95();
                  }

                  goto LABEL_101;
                }

                v402 = &qword_27DD8D2A0;
                v403 = &qword_232106480;
                v404 = v400;
              }

              sub_231E6F05C(v404, v402, v403);
LABEL_101:
              v407 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
              OUTLINED_FUNCTION_64(v407);
              OUTLINED_FUNCTION_50();
              v408 = OUTLINED_FUNCTION_126();
              sub_231E6E288(v408, v409, v410);
              goto LABEL_102;
            }

            v392 = &qword_27DD8D2A0;
            v393 = &qword_232106480;
            v394 = v359;
          }

          sub_231E6F05C(v394, v392, v393);
LABEL_102:
          OUTLINED_FUNCTION_56(&v1129);
          sub_2320EDA50();
          sub_2320ED9D0();
          OUTLINED_FUNCTION_89();
          OUTLINED_FUNCTION_108();
          v411();
          if (v370)
          {
            OUTLINED_FUNCTION_112(MEMORY[0x277D837D0]);
            v412 = OUTLINED_FUNCTION_126();
            sub_231E6E288(v412, v413, 0xE800000000000000);
          }

          v414 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2F0, &qword_2321064C0);
          OUTLINED_FUNCTION_64(v414);
          OUTLINED_FUNCTION_19_0();
          OUTLINED_FUNCTION_63();
          OUTLINED_FUNCTION_32();
          v418 = v417 & 0xFFFFFFFFFFFFLL | 0x7461000000000000;
          goto LABEL_105;
        }

LABEL_64:

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
        v378 = OUTLINED_FUNCTION_113();
        v379 = OUTLINED_FUNCTION_0(v378, v1111);
        OUTLINED_FUNCTION_106(v379, "http://schema.org/Flight");
        *&v1122 = sub_2320EDD60();
        OUTLINED_FUNCTION_27(&v1113);
        sub_2320ED7D0();
        OUTLINED_FUNCTION_28(v359);
        if (v177)
        {
          sub_231E6F05C(v359, &qword_27DD8D2A8, &qword_232106488);
        }

        else
        {
          v380 = sub_2320ED890();
          v381 = v359;
          v359 = v380;
          v370 = v382;
          (v188)(v381, v1119);
          if (v370)
          {
            OUTLINED_FUNCTION_53(v359, v370);
          }
        }

        OUTLINED_FUNCTION_27(&v1114);
        sub_2320ED7D0();
        OUTLINED_FUNCTION_28(v359);
        if (v177)
        {
          v383 = &qword_27DD8D2A8;
          v384 = &qword_232106488;
          v385 = v359;
        }

        else
        {
          OUTLINED_FUNCTION_56(v1107);
          sub_2320ED8B0();
          (v188)(v359, v1119);
          v386 = sub_2320EDC20();
          v387 = OUTLINED_FUNCTION_65();
          OUTLINED_FUNCTION_42(v387, v388, v386);
          if (!v389)
          {
            v370 = sub_2320EDC10();
            v188 = v458;
            OUTLINED_FUNCTION_101(v386);
            (*(v459 + 8))(v460, v386);
            if (v188)
            {
              OUTLINED_FUNCTION_95();
            }

            goto LABEL_76;
          }

          v383 = &qword_27DD8D2A0;
          v384 = &qword_232106480;
          v385 = v370;
        }

        sub_231E6F05C(v385, v383, v384);
LABEL_76:
        v359 = "http://schema.org/Airport";
        v390 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
        OUTLINED_FUNCTION_30(v390);
        sub_231E6E288(&v1125, v196 - 1, 0x800000023210E8B0);
        goto LABEL_77;
      }

      v372 = &qword_27DD8D2A0;
      v373 = &qword_232106480;
      v374 = v359;
    }

    sub_231E6F05C(v374, v372, v373);
    goto LABEL_77;
  }

  OUTLINED_FUNCTION_66();
  v279 = v278 - 1;
  v280 = v175 == v278 - 1 && v277 == v176;
  if (v280 || (OUTLINED_FUNCTION_52() & 1) != 0)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2C8, &qword_2321064A0);
    v281 = OUTLINED_FUNCTION_107();
    v1108 = xmmword_232106450;
    v282 = OUTLINED_FUNCTION_3(v281, xmmword_232106450);
    OUTLINED_FUNCTION_16(v282, "http://schema.org");
    v283 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_31();
    *(v284 + 72) = v283;
    *(v284 + 80) = v285;
    OUTLINED_FUNCTION_97();
    v286[15] = v283;
    OUTLINED_FUNCTION_109(v286, v287);
    sub_2320EDD60();
    v288 = OUTLINED_FUNCTION_6("http://schema.org/Reservation");
    MEMORY[0x23837EBB0](v288, v1118);

    v1127 = v283;
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_54();
    sub_231E6EE40(&v1122, 0xD000000000000011, 0x800000023210E550);
    v289 = v1128;
    sub_2320EDA50();
    v290 = sub_2320ED980();
    v292 = v291;
    v293 = *(v1117.n128_u64[0] + 8);
    v294 = v1117.n128_u64[0] + 8;
    v293(v158, v1115);
    if (v292)
    {
      v1127 = v283;
      *&v1125 = v290;
      *(&v1125 + 1) = v292;
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_54();
      v295 = OUTLINED_FUNCTION_10();
      sub_231E6EE40(v295, 0x7461767265736572, v296);
      v289 = v1128;
    }

    sub_2320EDA50();
    sub_2320ED9C0();
    OUTLINED_FUNCTION_46();
    v297 = OUTLINED_FUNCTION_81();
    v298 = v294;
    (v293)(v297);
    if (v158)
    {
      OUTLINED_FUNCTION_91(MEMORY[0x277D837D0]);
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_54();
      v299 = OUTLINED_FUNCTION_17();
      sub_231E6EE40(v299, v300, 0xEA00000000006563);
      v289 = v1128;
    }

    OUTLINED_FUNCTION_111();
    v301 = v1116;
    sub_2320EDA50();
    sub_2320ED8F0();
    v302 = OUTLINED_FUNCTION_92();
    v303 = v1115;
    v293(v302, v1115);
    sub_231E831C4(v155);
    OUTLINED_FUNCTION_114();
    if (v158)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
      v158 = OUTLINED_FUNCTION_94();
      v304 = OUTLINED_FUNCTION_0(v158, v1108);
      v305 = OUTLINED_FUNCTION_2(v304, "http://schema.org/Person");
      *(v305 + 64) = 1701667182;
      *(v305 + 72) = v306;
      sub_2320EDA50();
      v307 = v155;
      v308 = sub_2320ED8F0();
      v309 = OUTLINED_FUNCTION_119();
      (v293)(v309);
      *&v1125 = v308;
      v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D8, &qword_2321064B0);
      sub_231E6EF88();
      OUTLINED_FUNCTION_7();
      sub_2320EDD80();
      OUTLINED_FUNCTION_72();
      v298 = v294;

      v158[5].n128_u64[0] = v307;
      v158[5].n128_u64[1] = v155;
      sub_2320EDD60();
      v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
      v311 = OUTLINED_FUNCTION_14(v310);
      OUTLINED_FUNCTION_47(v311);
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_61();
      sub_231E6EE40(v312, v313, v314);
      v289 = v1128;
    }

    OUTLINED_FUNCTION_82(&v1108);
    sub_2320EDA50();
    sub_2320ED940();
    OUTLINED_FUNCTION_46();
    v315 = OUTLINED_FUNCTION_119();
    (v293)(v315);
    if (v158)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
      v316 = OUTLINED_FUNCTION_94();
      v317 = OUTLINED_FUNCTION_0(v316, v1108);
      v318 = OUTLINED_FUNCTION_1(v317, "http://schema.org/Place");
      v318[8] = 1701667182;
      v318[9] = v319;
      v318[10] = v155;
      v318[11] = v158;
      sub_2320EDD60();
      v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
      v321 = OUTLINED_FUNCTION_14(v320);
      OUTLINED_FUNCTION_47(v321);
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_67();
      v322 = OUTLINED_FUNCTION_59();
      sub_231E6EE40(v322, v323, 0xE800000000000000);
      v289 = v1128;
    }

    v324 = v1114.n128_u64[0];
    OUTLINED_FUNCTION_90(&v1108.n128_i64[1]);
    sub_2320EDA60();
    v325 = v1113;
    OUTLINED_FUNCTION_40(v298, 1);
    if (v177)
    {
      sub_231E6F05C(v298, &qword_27DD8D2B0, &qword_232106810);
    }

    else
    {
      v301 = v1112;
      v155 = v1084;
      (*(v1112 + 32))(v1084, v298, v325);
      v420 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
      v421 = sub_2320ED5B0();
      v422 = OUTLINED_FUNCTION_127(v421, sel_stringFromDate_);

      sub_2320EDDB0();
      OUTLINED_FUNCTION_46();

      OUTLINED_FUNCTION_91(MEMORY[0x277D837D0]);
      v325 = v1113;
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_74();
      v423 = OUTLINED_FUNCTION_59();
      sub_231E6EE40(v423, v424, v425);
      v289 = v1128;
      v426 = *(v301 + 8);
      v427 = OUTLINED_FUNCTION_117();
      v428(v427);
    }

    OUTLINED_FUNCTION_26(&v1109);
    sub_2320ED840();
    v429 = OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_40(v429, v430);
    if (v177)
    {
      sub_231E6F05C(v301, &qword_27DD8D2B0, &qword_232106810);
    }

    else
    {
      OUTLINED_FUNCTION_48();
      v431 = OUTLINED_FUNCTION_96();
      v432(v431, v301, v325);
      v301 = v325;
      v433 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
      v434 = sub_2320ED5B0();
      v435 = OUTLINED_FUNCTION_127(v434, sel_stringFromDate_);

      sub_2320EDDB0();
      OUTLINED_FUNCTION_46();

      OUTLINED_FUNCTION_91(MEMORY[0x277D837D0]);
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_54();
      v436 = OUTLINED_FUNCTION_59();
      sub_231E6EE40(v436, v437, v438);
      v289 = v1128;
      v439 = *(v155 + 1);
      v155 += 8;
      v439(v303, v301);
    }

    OUTLINED_FUNCTION_111();
    v440 = v1089;
    OUTLINED_FUNCTION_26(&v1110);
    sub_2320ED7D0();
    v441 = OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_42(v441, v442, v1119);
    if (!v177)
    {
      v444 = *(v1110 + 32);
      v445 = OUTLINED_FUNCTION_79();
      v446(v445);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
      v447 = OUTLINED_FUNCTION_113();
      v448 = OUTLINED_FUNCTION_35(v447, xmmword_232106460);
      v448[2].n128_u64[0] = 0x6570797440;
      v448[2].n128_u64[1] = v449;
      OUTLINED_FUNCTION_11();
      *(v451 + 48) = v450 + 16;
      *(v451 + 56) = v452;
      v1128 = sub_2320EDD60();
      v453 = sub_2320ED890();
      if (v454)
      {
        OUTLINED_FUNCTION_53(v453, v454);
      }

      sub_2320ED8A0();
      v455 = OUTLINED_FUNCTION_65();
      v456 = v1087;
      OUTLINED_FUNCTION_42(v455, v457, v1087);
      if (v177)
      {
        sub_231E6F05C(v440, &qword_27DD8D298, &qword_232106478);
      }

      else
      {
        OUTLINED_FUNCTION_44(v1103);
        v505 = *(v504 + 32);
        v506 = OUTLINED_FUNCTION_96();
        v507(v506, v440, v456);
        v440 = v456;
        sub_2320EDBF0();
        OUTLINED_FUNCTION_15();
        sub_231E6E35C(v508, v509, v510, 0xE700000000000000);
        (*(v301 + 8))(v303, v456);
      }

      sub_2320ED870();
      if (v511)
      {
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_129(v512, v513, v514);
      }

      sub_2320EDA50();
      sub_2320ED960();
      v515 = OUTLINED_FUNCTION_92();
      v516 = v1115;
      v293(v515, v1115);
      sub_231E831C4(v155);
      OUTLINED_FUNCTION_114();
      if (v440)
      {
        sub_2320EDA50();
        v440 = sub_2320ED960();
        v517 = OUTLINED_FUNCTION_119();
        (v293)(v517);
        *&v1125 = v440;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D8, &qword_2321064B0);
        sub_231E6EF88();
        OUTLINED_FUNCTION_7();
        v518 = sub_2320EDD80();
        v520 = v519;

        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_62();
        v324 = v1114.n128_u64[0];
        sub_231E6ECEC(v518, v520, 0xD000000000000013, 0x800000023210E820);
        v1128 = v1125;
      }

      OUTLINED_FUNCTION_56(&v1106);
      sub_2320EDA50();
      v521 = sub_2320ED930();
      v293(v440, v516);
      if ((v521 & 0x100000000) == 0)
      {
        LODWORD(v1125) = v521;
        v522 = sub_2320EE010();
        v524 = v523;
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_62();
        sub_231E6ECEC(v522, v524, 0x664F7265626D756ELL, 0xED0000736D6F6F52);
        v1128 = v1125;
      }

      v525 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
      v526 = OUTLINED_FUNCTION_14(v525);
      OUTLINED_FUNCTION_47(v526);
      OUTLINED_FUNCTION_85();
      OUTLINED_FUNCTION_19_0();
      v527 = OUTLINED_FUNCTION_41();
      sub_231E6EE40(v527, 0x7461767265736572, v528);
      v289 = v1121;
      OUTLINED_FUNCTION_98(&v1131);
      v530 = v324;
      v531 = v1119;
LABEL_142:
      v529(v530, v531);
      return v289;
    }

    v443 = v301;
    goto LABEL_114;
  }

  OUTLINED_FUNCTION_66();
  v466 = v175 == v465 + 4 && v464 == v176;
  v467 = 0x6570797440;
  if (v466 || (OUTLINED_FUNCTION_52() & 1) != 0)
  {
    v468 = 0x7461767265736572;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2C8, &qword_2321064A0);
    v469 = OUTLINED_FUNCTION_107();
    v1114 = xmmword_232106450;
    v470 = OUTLINED_FUNCTION_3(v469, xmmword_232106450);
    v471 = OUTLINED_FUNCTION_16(v470, "http://schema.org");
    v472 = MEMORY[0x277D837D0];
    *(v471 + 72) = MEMORY[0x277D837D0];
    *(v471 + 80) = 0x6570797440;
    OUTLINED_FUNCTION_97();
    v473[15] = v472;
    OUTLINED_FUNCTION_109(v473, v474);
    sub_2320EDD60();
    v475 = OUTLINED_FUNCTION_6("http://schema.org/Reservation");
    MEMORY[0x23837EBB0](v475, v1118);

    v1127 = v472;
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_54();
    sub_231E6EE40(&v1122, 0xD000000000000011, 0x800000023210E550);
    v289 = v1128;
    sub_2320EDA50();
    sub_2320ED980();
    OUTLINED_FUNCTION_49();
    v476 = v1117.n128_u64[0] + 8;
    v477 = *(v1117.n128_u64[0] + 8);
    v477(v150, v1115);
    if ("http://schema.org/EventReservation" != -16)
    {
      OUTLINED_FUNCTION_75();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_54();
      v478 = OUTLINED_FUNCTION_10();
      sub_231E6EE40(v478, 0x7461767265736572, v479);
      v289 = v1128;
    }

    OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_83(&v1132);
    sub_2320EDA50();
    v480 = sub_2320ED8F0();
    v481 = v1115;
    v477(v150, v1115);
    v482 = sub_231E831C4(v480);

    if (v482)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
      v482 = OUTLINED_FUNCTION_94();
      OUTLINED_FUNCTION_22(v482);
      *(v483 + 32) = 0x6570797440;
      *(v483 + 40) = v484;
      v485 = OUTLINED_FUNCTION_2(v483, "http://schema.org/Person");
      *(v485 + 64) = 0x7461767265736572;
      *(v485 + 72) = v486;
      sub_2320EDA50();
      v468 = v476;
      v487 = sub_2320ED8F0();
      v477(v150, v481);
      *&v1125 = v487;
      v467 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D8, &qword_2321064B0);
      sub_231E6EF88();
      OUTLINED_FUNCTION_7();
      sub_2320EDD80();
      OUTLINED_FUNCTION_72();

      v482[5].n128_u64[0] = v150;
      v482[5].n128_u64[1] = v467;
      sub_2320EDD60();
      v488 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
      v489 = OUTLINED_FUNCTION_14(v488);
      OUTLINED_FUNCTION_47(v489);
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_61();
      sub_231E6EE40(v490, v491, v492);
      v289 = v1128;
    }

    OUTLINED_FUNCTION_82(v1099);
    sub_2320EDA50();
    sub_2320ED940();
    OUTLINED_FUNCTION_49();
    v493 = OUTLINED_FUNCTION_119();
    (v477)(v493);
    if (v482)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
      v494 = OUTLINED_FUNCTION_94();
      OUTLINED_FUNCTION_22(v494);
      OUTLINED_FUNCTION_70();
      *(v495 + 32) = v468;
      *(v495 + 40) = v496;
      v497 = OUTLINED_FUNCTION_1(v495, "http://schema.org/Place");
      v497[8] = 1701667182;
      v497[9] = v498;
      v497[10] = v467;
      v497[11] = v482;
      sub_2320EDD60();
      v499 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
      v500 = OUTLINED_FUNCTION_14(v499);
      OUTLINED_FUNCTION_47(v500);
      OUTLINED_FUNCTION_54();
      v501 = OUTLINED_FUNCTION_38();
      sub_231E6EE40(v501, v502, 0xE600000000000000);
      v289 = v1128;
      v503 = v1113;
    }

    else
    {
      v503 = v1113;
      OUTLINED_FUNCTION_70();
    }

    OUTLINED_FUNCTION_26(v1101);
    sub_2320EDA60();
    v532 = OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_42(v532, v533, v503);
    if (v177)
    {
      sub_231E6F05C(v482, &qword_27DD8D2B0, &qword_232106810);
    }

    else
    {
      v534 = v1112;
      v535 = *(v1112 + 32);
      v536 = OUTLINED_FUNCTION_96();
      v537(v536, v482, v503);
      v482 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
      v538 = sub_2320ED5B0();
      v539 = OUTLINED_FUNCTION_115(v538, sel_stringFromDate_);

      sub_2320EDDB0();
      OUTLINED_FUNCTION_49();

      v1127 = MEMORY[0x277D837D0];
      *&v1125 = v538;
      *(&v1125 + 1) = v482;
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_59();
      OUTLINED_FUNCTION_61();
      sub_231E6EE40(v540, v541, v542);
      v289 = v1128;
      (*(v534 + 8))(v481, v503);
    }

    v543 = v1115;
    v544 = v1119;
    OUTLINED_FUNCTION_44(v1100);
    sub_2320EDA50();
    v545 = sub_2320ED9A0();
    v477(v482, v543);
    if ((v545 & 0x100000000) == 0)
    {
      LODWORD(v1125) = v545;
      v546 = sub_2320EE010();
      v1127 = MEMORY[0x277D837D0];
      *&v1125 = v546;
      *(&v1125 + 1) = v547;
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_59();
      OUTLINED_FUNCTION_61();
      sub_231E6EE40(v548, v549, v550);
      v289 = v1128;
    }

    v551 = v1081;
    OUTLINED_FUNCTION_56(v1102);
    sub_2320ED7D0();
    v552 = OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_42(v552, v553, v544);
    if (!v177)
    {
      (*(v1110 + 32))(v551, v543, v544);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
      v554 = OUTLINED_FUNCTION_113();
      v555 = OUTLINED_FUNCTION_35(v554, xmmword_232106460);
      v555[2].n128_u64[0] = v468;
      v555[2].n128_u64[1] = v556;
      OUTLINED_FUNCTION_11();
      *(v558 + 48) = v557 + 18;
      *(v558 + 56) = v559;
      v1128 = sub_2320EDD60();
      v560 = sub_2320ED890();
      if (v561)
      {
        OUTLINED_FUNCTION_53(v560, v561);
      }

      OUTLINED_FUNCTION_56(v1098);
      sub_2320ED8A0();
      v562 = OUTLINED_FUNCTION_65();
      OUTLINED_FUNCTION_42(v562, v563, v1087);
      if (v177)
      {
        sub_231E6F05C(v543, &qword_27DD8D298, &qword_232106478);
      }

      else
      {
        OUTLINED_FUNCTION_44(v1103);
        v573 = *(v572 + 32);
        v574 = OUTLINED_FUNCTION_117();
        v575(v574);
        sub_2320EDBF0();
        OUTLINED_FUNCTION_15();
        sub_231E6E35C(v576, v577, v578, 0xE700000000000000);
        v579 = v482->n128_u64[1];
        v580 = OUTLINED_FUNCTION_117();
        v581(v580);
      }

      sub_2320ED870();
      if (v582)
      {
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_129(v583, v584, v585);
      }

      v586 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
      v587 = OUTLINED_FUNCTION_14(v586);
      OUTLINED_FUNCTION_47(v587);
      OUTLINED_FUNCTION_85();
      OUTLINED_FUNCTION_19_0();
      v588 = OUTLINED_FUNCTION_41();
      sub_231E6EE40(v588, 0x7461767265736572, v589);
      v289 = v1121;
      OUTLINED_FUNCTION_98(&v1131);
      v530 = v551;
      v531 = v544;
      goto LABEL_142;
    }

    v443 = v543;
LABEL_114:
    sub_231E6F05C(v443, &qword_27DD8D2A8, &qword_232106488);
    return v289;
  }

  OUTLINED_FUNCTION_66();
  v566 = v175 == v565 && v564 == v176;
  if (!v566 && (OUTLINED_FUNCTION_52() & 1) == 0)
  {
    v690 = v175 == 0x61746E6552726163 && v176 == 0xE90000000000006CLL;
    v691 = v1111.n128_u64[0];
    if (v690)
    {

      v693 = v1115;
      v694 = v1117.n128_u64[0];
      goto LABEL_204;
    }

    v692 = OUTLINED_FUNCTION_52();
    v693 = v1115;
    v694 = v1117.n128_u64[0];
    if (v692)
    {

LABEL_204:
      OUTLINED_FUNCTION_69();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2C8, &qword_2321064A0);
      v696 = OUTLINED_FUNCTION_107();
      v1117 = xmmword_232106450;
      v697 = OUTLINED_FUNCTION_3(v696, xmmword_232106450);
      OUTLINED_FUNCTION_16(v697, "http://schema.org");
      v698 = MEMORY[0x277D837D0];
      OUTLINED_FUNCTION_31();
      *(v699 + 72) = v698;
      *(v699 + 80) = v700;
      OUTLINED_FUNCTION_97();
      v701[15] = v698;
      OUTLINED_FUNCTION_109(v701, v702);
      v1128 = sub_2320EDD60();
      v703 = "g/EventReservation";
      v704 = OUTLINED_FUNCTION_6("http://schema.org/Reservation");
      MEMORY[0x23837EBB0](v704, v1118);

      v1127 = v698;
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_36();
      v705 = v1059;
      sub_2320EDA50();
      sub_2320ED980();
      OUTLINED_FUNCTION_46();
      v708 = *(v694 + 8);
      v706 = v694 + 8;
      v707 = v708;
      (v708)(v705, v693);
      if ("http://schema.org/EventReservation" != -16)
      {
        v1127 = v698;
        *&v1125 = v705;
        *(&v1125 + 1) = "g/EventReservation";
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_43();
        v709 = OUTLINED_FUNCTION_10();
        sub_231E6EE40(v709, v150, v710);
        OUTLINED_FUNCTION_36();
      }

      OUTLINED_FUNCTION_83(&v1132);
      sub_2320EDA50();
      v711 = sub_2320ED8F0();
      v712 = OUTLINED_FUNCTION_79();
      v707(v712);
      sub_231E831C4(v711);
      OUTLINED_FUNCTION_114();
      v713 = v706;
      if ("http://schema.org/EventReservation" != -16)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
        v703 = OUTLINED_FUNCTION_94();
        v714 = OUTLINED_FUNCTION_0(v703, v1117);
        v715 = OUTLINED_FUNCTION_2(v714, "http://schema.org/Person");
        *(v715 + 64) = 1701667182;
        *(v715 + 72) = v716;
        sub_2320EDA50();
        v717 = sub_2320ED8F0();
        (v707)(v150, v1115);
        *&v1125 = v717;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D8, &qword_2321064B0);
        sub_231E6EF88();
        OUTLINED_FUNCTION_7();
        v718 = sub_2320EDD80();
        v720 = v719;
        v693 = v1115;

        v703[5].n128_u64[0] = v718;
        v703[5].n128_u64[1] = v720;
        sub_2320EDD60();
        v721 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
        OUTLINED_FUNCTION_30(v721);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_43();
        OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_61();
        sub_231E6EE40(v722, v723, v724);
        OUTLINED_FUNCTION_36();
      }

      OUTLINED_FUNCTION_83(v1082);
      sub_2320EDA50();
      sub_2320ED9C0();
      OUTLINED_FUNCTION_46();
      v725 = OUTLINED_FUNCTION_79();
      v726 = v713;
      v707(v725);
      if (v703)
      {
        OUTLINED_FUNCTION_91(MEMORY[0x277D837D0]);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_43();
        v727 = OUTLINED_FUNCTION_17();
        OUTLINED_FUNCTION_102(v727, v728);
        OUTLINED_FUNCTION_36();
      }

      OUTLINED_FUNCTION_26(&v1084);
      sub_2320EDA60();
      v729 = OUTLINED_FUNCTION_60();
      v730 = v1113;
      OUTLINED_FUNCTION_40(v729, v731);
      if (v177)
      {
        sub_231E6F05C(v693, &qword_27DD8D2B0, &qword_232106810);
      }

      else
      {
        v774 = v1112;
        v775 = *(v1112 + 32);
        v776 = v1055;
        v777 = OUTLINED_FUNCTION_79();
        v778(v777);
        v779 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
        v780 = sub_2320ED5B0();
        v693 = OUTLINED_FUNCTION_127(v780, sel_stringFromDate_);

        sub_2320EDDB0();
        OUTLINED_FUNCTION_46();

        OUTLINED_FUNCTION_91(MEMORY[0x277D837D0]);
        v730 = v1113;
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_43();
        sub_231E6EE40(&v1122, 0x695470756B636970, 0xEA0000000000656DLL);
        OUTLINED_FUNCTION_36();
        (*(v774 + 8))(v776, v730);
      }

      OUTLINED_FUNCTION_45(v1086);
      sub_2320ED840();
      OUTLINED_FUNCTION_23();
      if (v177)
      {
        sub_231E6F05C(v726, &qword_27DD8D2B0, &qword_232106810);
      }

      else
      {
        v781 = v1112;
        v782 = *(v1112 + 32);
        v783 = v1056;
        OUTLINED_FUNCTION_87();
        v784();
        v785 = v730;
        v730 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
        v786 = sub_2320ED5B0();
        v693 = OUTLINED_FUNCTION_127(v786, sel_stringFromDate_);

        sub_2320EDDB0();
        OUTLINED_FUNCTION_46();

        OUTLINED_FUNCTION_91(MEMORY[0x277D837D0]);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_43();
        OUTLINED_FUNCTION_74();
        v787 = OUTLINED_FUNCTION_41();
        sub_231E6EE40(v787, v788, v789);
        OUTLINED_FUNCTION_36();
        (*(v781 + 8))(v783, v785);
      }

      v790 = v1115;
      v791 = v1110;
      v792 = v1119;
      OUTLINED_FUNCTION_44(&v1083);
      sub_2320EDA50();
      sub_2320ED940();
      OUTLINED_FUNCTION_46();
      (v707)(v693, v790);
      if (v730)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
        v793 = OUTLINED_FUNCTION_94();
        v794 = OUTLINED_FUNCTION_0(v793, v1117);
        v795 = OUTLINED_FUNCTION_1(v794, "http://schema.org/Place");
        v795[8] = 1701667182;
        v795[9] = v796;
        v795[10] = v693;
        v795[11] = v730;
        sub_2320EDD60();
        v797 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
        OUTLINED_FUNCTION_30(v797);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_43();
        v798 = OUTLINED_FUNCTION_38();
        sub_231E6EE40(v798, v799, 0xE600000000000000);
        OUTLINED_FUNCTION_36();
      }

      OUTLINED_FUNCTION_26(v1085);
      sub_2320EDA50();
      sub_2320ED900();
      OUTLINED_FUNCTION_46();
      (v707)(v693, v790);
      if (v730)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
        v800 = OUTLINED_FUNCTION_94();
        v801 = OUTLINED_FUNCTION_0(v800, v1117);
        v802 = OUTLINED_FUNCTION_1(v801, "http://schema.org/Place");
        v802[8] = 1701667182;
        v802[9] = v803;
        v802[10] = v693;
        v802[11] = v730;
        sub_2320EDD60();
        v804 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
        OUTLINED_FUNCTION_30(v804);
        OUTLINED_FUNCTION_67();
        v805 = OUTLINED_FUNCTION_63();
        sub_231E6E288(v805, v806, 0xE800000000000000);
      }

      OUTLINED_FUNCTION_45(&v1087);
      v807 = v1116;
      sub_2320EDA50();
      v808 = v790;
      sub_2320ED9B0();
      OUTLINED_FUNCTION_46();
      (v707)(v790, v1115);
      v809 = v1063;
      if (v730)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
        v810 = OUTLINED_FUNCTION_94();
        OUTLINED_FUNCTION_0(v810, v1117);
        OUTLINED_FUNCTION_97();
        v811[6] = 0xD000000000000015;
        v811[7] = v812;
        v811[8] = 0x6C65646F6DLL;
        v811[9] = v813;
        v811[10] = v808;
        v811[11] = v730;
        sub_2320EDD60();
        v814 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
        OUTLINED_FUNCTION_30(v814);
        OUTLINED_FUNCTION_19_0();
        OUTLINED_FUNCTION_63();
        OUTLINED_FUNCTION_32();
        sub_231E6E288(v816, v815 & 0xFFFFFFFFFFFFLL | 0x7461000000000000, v817);
      }

      sub_2320ED7D0();
      v818 = OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_42(v818, v819, v792);
      v820 = v1066;
      v821 = v1065;
      if (v177)
      {
        sub_231E6F05C(v809, &qword_27DD8D2A8, &qword_232106488);
        v822 = v1064;
      }

      else
      {
        (*(v791 + 32))(v1065, v809, v792);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
        v823 = OUTLINED_FUNCTION_113();
        OUTLINED_FUNCTION_0(v823, xmmword_232106460);
        OUTLINED_FUNCTION_11();
        *(v825 + 48) = v824 + 6;
        *(v825 + 56) = v826;
        *&v1122 = sub_2320EDD60();
        v827 = sub_2320ED890();
        if (v828)
        {
          OUTLINED_FUNCTION_53(v827, v828);
        }

        OUTLINED_FUNCTION_56(v1079);
        sub_2320ED8A0();
        v829 = OUTLINED_FUNCTION_65();
        v830 = v1087;
        OUTLINED_FUNCTION_42(v829, v831, v1087);
        if (v177)
        {
          sub_231E6F05C(v730, &qword_27DD8D298, &qword_232106478);
        }

        else
        {
          OUTLINED_FUNCTION_56(v1103);
          v868 = *(v867 + 32);
          v869 = OUTLINED_FUNCTION_96();
          v870(v869);
          sub_2320EDBF0();
          OUTLINED_FUNCTION_15();
          OUTLINED_FUNCTION_128(v871, v872, v873);
          (*(v730 + 1))(1701667182, v830);
        }

        sub_2320ED870();
        v822 = v1064;
        if (v874)
        {
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_129(v875, v876, v877);
        }

        v878 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
        OUTLINED_FUNCTION_64(v878);
        v879 = OUTLINED_FUNCTION_63();
        sub_231E6E288(v879, v880, v881);
        (*(v791 + 8))(v821, v792);
      }

      sub_2320ED7C0();
      v882 = OUTLINED_FUNCTION_65();
      OUTLINED_FUNCTION_42(v882, v883, v792);
      if (v177)
      {
        sub_231E6F05C(v822, &qword_27DD8D2A8, &qword_232106488);
      }

      else
      {
        (*(v791 + 32))(v820, v822, v792);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
        v884 = OUTLINED_FUNCTION_113();
        OUTLINED_FUNCTION_0(v884, xmmword_232106460);
        OUTLINED_FUNCTION_11();
        *(v886 + 48) = v885 + 6;
        *(v886 + 56) = v887;
        *&v1122 = sub_2320EDD60();
        v888 = sub_2320ED890();
        if (v889)
        {
          OUTLINED_FUNCTION_53(v888, v889);
        }

        OUTLINED_FUNCTION_44(v1080);
        sub_2320ED8A0();
        v890 = OUTLINED_FUNCTION_60();
        v891 = v1087;
        OUTLINED_FUNCTION_42(v890, v892, v1087);
        if (v177)
        {
          sub_231E6F05C(v807, &qword_27DD8D298, &qword_232106478);
        }

        else
        {
          OUTLINED_FUNCTION_56(v1103);
          v894 = *(v893 + 32);
          v895 = v1053;
          v896 = OUTLINED_FUNCTION_81();
          v897(v896);
          sub_2320EDBF0();
          OUTLINED_FUNCTION_15();
          OUTLINED_FUNCTION_128(v898, v899, v900);
          (*(v822 + 8))(v895, v891);
        }

        sub_2320ED870();
        if (v901)
        {
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_129(v902, v903, v904);
        }

        v905 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
        OUTLINED_FUNCTION_64(v905);
        v906 = OUTLINED_FUNCTION_63();
        sub_231E6E288(v906, v907, v908);
        (*(v791 + 8))(v820, v792);
      }

      return v1128;
    }

    v832 = v175 == 0x6D746E696F707061 && v176 == 0xEB00000000746E65;
    if (v832 || (OUTLINED_FUNCTION_52() & 1) != 0 || (v175 == 0x7974726170 ? (v833 = v176 == 0xE500000000000000) : (v833 = 0), v833 || (OUTLINED_FUNCTION_52() & 1) != 0))
    {

LABEL_268:
      OUTLINED_FUNCTION_69();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2C8, &qword_2321064A0);
      v834 = OUTLINED_FUNCTION_107();
      v1114 = xmmword_232106450;
      v835 = OUTLINED_FUNCTION_3(v834, xmmword_232106450);
      OUTLINED_FUNCTION_16(v835, "http://schema.org");
      v836 = MEMORY[0x277D837D0];
      OUTLINED_FUNCTION_31();
      *(v837 + 72) = v836;
      *(v837 + 80) = v838;
      OUTLINED_FUNCTION_97();
      v839[15] = v836;
      OUTLINED_FUNCTION_109(v839, v840);
      v1128 = sub_2320EDD60();
      v841 = OUTLINED_FUNCTION_6("http://schema.org/Reservation");
      MEMORY[0x23837EBB0](v841, v1118);

      v1127 = v836;
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_43();
      sub_231E6EE40(&v1122, 0xD000000000000011, 0x800000023210E550);
      OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_125(v1068);
      sub_2320EDA50();
      sub_2320ED980();
      OUTLINED_FUNCTION_49();
      v844 = *(v694 + 8);
      v842 = v694 + 8;
      v843 = v844;
      v844("http://schema.org/Place", v1115);
      if ("http://schema.org/EventReservation" != -16)
      {
        v1127 = v836;
        *&v1125 = "http://schema.org/Place";
        *(&v1125 + 1) = "g/EventReservation";
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_43();
        v845 = OUTLINED_FUNCTION_10();
        sub_231E6EE40(v845, v150, v846);
        OUTLINED_FUNCTION_36();
      }

      OUTLINED_FUNCTION_120();
      v847 = v1116;
      sub_2320EDA50();
      sub_2320ED8F0();
      v848 = OUTLINED_FUNCTION_92();
      v849 = v1115;
      v843(v848, v1115);
      v850 = sub_231E831C4(v691);

      v851 = v842;
      if (v850)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
        v850 = OUTLINED_FUNCTION_94();
        v852 = OUTLINED_FUNCTION_0(v850, v1114);
        v853 = OUTLINED_FUNCTION_2(v852, "http://schema.org/Person");
        *(v853 + 64) = "http://schema.org/Place";
        *(v853 + 72) = v854;
        sub_2320EDA50();
        v855 = v691;
        v842 = sub_2320ED8F0();
        v843(v691, v849);
        *&v1125 = v842;
        v691 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D8, &qword_2321064B0);
        sub_231E6EF88();
        OUTLINED_FUNCTION_7();
        sub_2320EDD80();
        OUTLINED_FUNCTION_72();

        v850[5].n128_u64[0] = v855;
        v850[5].n128_u64[1] = v691;
        OUTLINED_FUNCTION_111();
        sub_2320EDD60();
        v856 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
        OUTLINED_FUNCTION_30(v856);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_43();
        OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_61();
        sub_231E6EE40(v857, v858, v859);
        OUTLINED_FUNCTION_36();
      }

      OUTLINED_FUNCTION_90(v1069);
      sub_2320EDA50();
      sub_2320ED9C0();
      OUTLINED_FUNCTION_49();
      v1117.n128_u64[0] = v851;
      v843(v842, v849);
      if (v850)
      {
        v1127 = MEMORY[0x277D837D0];
        *&v1125 = v842;
        *(&v1125 + 1) = v850;
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_43();
        v860 = OUTLINED_FUNCTION_17();
        OUTLINED_FUNCTION_102(v860, v861);
        OUTLINED_FUNCTION_36();
      }

      OUTLINED_FUNCTION_45(v1070);
      sub_2320EDA50();
      OUTLINED_FUNCTION_83(v1072);
      sub_2320ED9E0();
      v843(v847, v1115);
      v862 = v1108.n128_u64[0];
      OUTLINED_FUNCTION_42(v849, 1, v1108.n128_i64[0]);
      if (v177)
      {
        sub_231E6F05C(v849, &qword_27DD8D2B8, &qword_232106490);
      }

      else
      {
        OUTLINED_FUNCTION_90(&v1119);
        v910 = *(v909 + 32);
        v911 = OUTLINED_FUNCTION_110();
        v912(v911, v849, v862);
        v913 = sub_2320ED530();
        v1127 = MEMORY[0x277D837D0];
        *&v1125 = v913;
        *(&v1125 + 1) = v914;
        v915 = OUTLINED_FUNCTION_63();
        sub_231E6E288(v915, 7107189, 0xE300000000000000);
        v916 = *(v842 + 8);
        v842 += 8;
        OUTLINED_FUNCTION_120();
        v917();
      }

      OUTLINED_FUNCTION_90(v1071);
      sub_2320EDA50();
      sub_2320ED940();
      OUTLINED_FUNCTION_49();
      v843(v842, v1115);
      if (v862)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
        v918 = OUTLINED_FUNCTION_94();
        v919 = OUTLINED_FUNCTION_0(v918, v1114);
        v920 = OUTLINED_FUNCTION_1(v919, "http://schema.org/Place");
        v920[8] = "http://schema.org/Place";
        v920[9] = v921;
        v920[10] = v842;
        v920[11] = v862;
        sub_2320EDD60();
        v922 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
        OUTLINED_FUNCTION_30(v922);
        v923 = OUTLINED_FUNCTION_63();
        sub_231E6E288(v923, v924, 0xE600000000000000);
      }

      v925 = v1116;
      sub_2320EDA50();
      sub_2320ED8D0();
      v926 = OUTLINED_FUNCTION_92();
      v927 = v1115;
      v843(v926, v1115);
      v928 = sub_231E831C4(v691);

      OUTLINED_FUNCTION_105();
      if (v928)
      {
        v929 = OUTLINED_FUNCTION_107();
        OUTLINED_FUNCTION_55(v929);
        *(v930 + 32) = v842;
        *(v930 + 40) = 0xE500000000000000;
        OUTLINED_FUNCTION_29();
        *(v931 + 48) = 0xD000000000000018;
        *(v931 + 56) = v932;
        v933 = MEMORY[0x277D837D0];
        OUTLINED_FUNCTION_77();
        *(v934 + 72) = v933;
        *(v934 + 80) = v935;
        OUTLINED_FUNCTION_76(v934);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
        v936 = OUTLINED_FUNCTION_94();
        OUTLINED_FUNCTION_55(v936);
        OUTLINED_FUNCTION_31();
        *(v937 + 32) = v938;
        *(v937 + 40) = 0xE500000000000000;
        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_20(v939, v940);
        sub_2320EDA50();
        v941 = v691;
        v842 = sub_2320ED8D0();
        v843(v691, v927);
        *&v1125 = v842;
        v691 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D8, &qword_2321064B0);
        sub_231E6EF88();
        OUTLINED_FUNCTION_7();
        sub_2320EDD80();
        OUTLINED_FUNCTION_72();
        OUTLINED_FUNCTION_105();

        v936[5].n128_u64[0] = v941;
        v936[5].n128_u64[1] = v691;
        v928 = sub_2320EDD60();
        v929[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
        v929[6].n128_u64[0] = v928;
        sub_2320EDD60();
        v942 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2F0, &qword_2321064C0);
        OUTLINED_FUNCTION_30(v942);
        OUTLINED_FUNCTION_24();
        v943 = OUTLINED_FUNCTION_63();
        sub_231E6E288(v943, v944, v945);
      }

      *&v1122 = sub_2320EDD60();
      sub_231E6E8E4(&v1125);
      v946 = OUTLINED_FUNCTION_86();
      sub_231E6E288(v946, v842, 0xE500000000000000);
      OUTLINED_FUNCTION_90(v1073);
      sub_2320EDA50();
      sub_2320ED9F0();
      OUTLINED_FUNCTION_49();
      v843(v842, v927);
      if (v928)
      {
        OUTLINED_FUNCTION_75();
        v947 = OUTLINED_FUNCTION_86();
        sub_231E6E288(v947, 1701667182, 0xE400000000000000);
      }

      else
      {
        OUTLINED_FUNCTION_45(&v1063);
        sub_2320EDA50();
        sub_2320EDA10();
        OUTLINED_FUNCTION_49();
        v843(v927, v1115);
      }

      v948 = v1110;
      v949 = v1119;
      OUTLINED_FUNCTION_26(v1075);
      sub_2320EDA60();
      v950 = OUTLINED_FUNCTION_60();
      v951 = v1113;
      OUTLINED_FUNCTION_42(v950, v952, v1113);
      if (v177)
      {
        sub_231E6F05C(v928, &qword_27DD8D2B0, &qword_232106810);
      }

      else
      {
        OUTLINED_FUNCTION_48();
        v925 = v1050;
        v953 = OUTLINED_FUNCTION_79();
        v954(v953);
        v928 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
        v955 = sub_2320ED5B0();
        v956 = OUTLINED_FUNCTION_115(v955, sel_stringFromDate_);

        sub_2320EDDB0();
        OUTLINED_FUNCTION_49();

        OUTLINED_FUNCTION_75();
        OUTLINED_FUNCTION_86();
        OUTLINED_FUNCTION_61();
        sub_231E6E288(v957, v958, v959);
        OUTLINED_FUNCTION_99();
        v960(v925, v951);
      }

      OUTLINED_FUNCTION_26(v1076);
      sub_2320ED840();
      v961 = OUTLINED_FUNCTION_60();
      OUTLINED_FUNCTION_42(v961, v962, v951);
      if (v177)
      {
        sub_231E6F05C(v928, &qword_27DD8D2B0, &qword_232106810);
      }

      else
      {
        OUTLINED_FUNCTION_48();
        v925 = v1051;
        v963 = OUTLINED_FUNCTION_79();
        v964(v963);
        v928 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
        v965 = sub_2320ED5B0();
        v966 = OUTLINED_FUNCTION_115(v965, sel_stringFromDate_);

        sub_2320EDDB0();
        OUTLINED_FUNCTION_49();

        OUTLINED_FUNCTION_75();
        v967 = OUTLINED_FUNCTION_86();
        sub_231E6E288(v967, v968, 0xE700000000000000);
        (*(v691 + 8))(v925, v951);
      }

      v969 = v1054;
      OUTLINED_FUNCTION_69();
      OUTLINED_FUNCTION_82(v1074);
      sub_2320EDA50();
      sub_2320ED9D0();
      OUTLINED_FUNCTION_49();
      v970 = OUTLINED_FUNCTION_118();
      (v843)(v970);
      if (v928)
      {
        OUTLINED_FUNCTION_75();
        v971 = OUTLINED_FUNCTION_86();
        sub_231E6E288(v971, v972, 0xE800000000000000);
      }

      sub_2320ED7D0();
      OUTLINED_FUNCTION_42(v969, 1, v949);
      if (v177)
      {
        sub_231E6F05C(v969, &qword_27DD8D2A8, &qword_232106488);
      }

      else
      {
        sub_2320ED870();
        OUTLINED_FUNCTION_49();
        (*(v948 + 8))(v969, v949);
        if (v928)
        {
          OUTLINED_FUNCTION_75();
          OUTLINED_FUNCTION_86();
          OUTLINED_FUNCTION_61();
          sub_231E6E288(v973, v974, v975);
        }
      }

      OUTLINED_FUNCTION_44(&v1078);
      sub_2320ED7D0();
      v976 = OUTLINED_FUNCTION_60();
      OUTLINED_FUNCTION_42(v976, v977, v949);
      if (v177)
      {
        sub_231E6F05C(v928, &qword_27DD8D2A8, &qword_232106488);
      }

      else
      {
        v978 = v1052;
        (*(v948 + 32))(v1052, v928, v949);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
        v979 = OUTLINED_FUNCTION_113();
        OUTLINED_FUNCTION_0(v979, xmmword_232106460);
        OUTLINED_FUNCTION_4();
        *(v981 + 48) = v980 + 6;
        *(v981 + 56) = v982;
        v1121 = sub_2320EDD60();
        v983 = sub_2320ED890();
        if (v984)
        {
          OUTLINED_FUNCTION_53(v983, v984);
        }

        OUTLINED_FUNCTION_44(v1067);
        sub_2320ED8A0();
        v985 = OUTLINED_FUNCTION_60();
        v986 = v1087;
        OUTLINED_FUNCTION_42(v985, v987, v1087);
        if (v177)
        {
          sub_231E6F05C(v928, &qword_27DD8D298, &qword_232106478);
        }

        else
        {
          OUTLINED_FUNCTION_56(v1103);
          v989 = v1049;
          (*(v988 + 32))(v1049, v928, v986);
          sub_2320EDBF0();
          OUTLINED_FUNCTION_15();
          sub_231E6E35C(v990, v991, v992, 0xE700000000000000);
          (*(v978 + 8))(v989, v986);
          v978 = v1052;
        }

        v993 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
        OUTLINED_FUNCTION_30(v993);
        v994 = OUTLINED_FUNCTION_86();
        sub_231E6E288(v994, v995, 0xE800000000000000);
        (*(v948 + 8))(v978, v949);
      }

      v996 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2F0, &qword_2321064C0);
      OUTLINED_FUNCTION_30(v996);
      OUTLINED_FUNCTION_19_0();
      v415 = OUTLINED_FUNCTION_63();
      v418 = v925;
      goto LABEL_105;
    }

    v1006 = v175 == 2003789939 && v176 == 0xE400000000000000;
    if (v1006 || (OUTLINED_FUNCTION_52() & 1) != 0)
    {

      v694 = v1117.n128_u64[0];
      OUTLINED_FUNCTION_111();
      goto LABEL_268;
    }

    if (v175 == 0x6361747441736369 && v176 == 0xED0000746E656D68)
    {
    }

    else
    {
      v1008 = OUTLINED_FUNCTION_52();

      if ((v1008 & 1) == 0)
      {
        if (qword_280D93948 != -1)
        {
          OUTLINED_FUNCTION_78();
        }

        __swift_project_value_buffer(v1048, qword_280D9DA90);
        OUTLINED_FUNCTION_121();
        v1009(v1045);
        v1010 = v1043;
        v1011 = *(v1043 + 16);
        v1012 = v1040;
        v1013 = v1044;
        v1011(v1040, v1116, v1044);
        v1011(v1042, v1012, v1013);
        v1014 = (*(v1010 + 80) + 16) & ~*(v1010 + 80);
        v1015 = swift_allocObject();
        OUTLINED_FUNCTION_68();
        v1017(v1016 + v1014, v1012, v1013);
        v1018 = sub_2320EDD20();
        v1019 = sub_2320EDE80();
        v1020 = swift_allocObject();
        *(v1020 + 16) = 32;
        v1021 = swift_allocObject();
        *(v1021 + 16) = 8;
        v1022 = swift_allocObject();
        *(v1022 + 16) = sub_231E6EB38;
        *(v1022 + 24) = v1015;
        v1023 = swift_allocObject();
        *(v1023 + 16) = sub_231E6EB98;
        *(v1023 + 24) = v1022;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2C0, &qword_232106498);
        v1024 = swift_allocObject();
        *(v1024 + 16) = xmmword_232106440;
        *(v1024 + 32) = sub_231E6EB90;
        *(v1024 + 40) = v1020;
        *(v1024 + 48) = sub_231E6F3D8;
        *(v1024 + 56) = v1021;
        *(v1024 + 64) = sub_231E6EBA0;
        *(v1024 + 72) = v1023;

        if (os_log_type_enabled(v1018, v1019))
        {
          v1025 = sub_231E75FF4();
          v1026 = swift_slowAlloc();
          *&v1125 = v1026;
          *v1025 = 136315138;
          v1027 = v1042;
          v1028 = sub_2320EDA30();
          v1030 = v1029;
          OUTLINED_FUNCTION_98(&v1059);
          v1031(v1027, v1044);
          sub_231E83810(v1028, v1030, &v1125);
          OUTLINED_FUNCTION_92();

          *(v1025 + 4) = v1028;
          _os_log_impl(&dword_231E60000, v1018, v1019, "SGTextUnderstandingImporter: schema creation is not supported for %s", v1025, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v1026);
          MEMORY[0x2383814F0](v1026, -1, -1);
          MEMORY[0x2383814F0](v1025, -1, -1);
        }

        else
        {

          OUTLINED_FUNCTION_98(&v1059);
          v1038(v1042, v1044);
        }

        OUTLINED_FUNCTION_98(v1062);
        v1037 = &v1060;
LABEL_373:
        v1036(*(v1037 - 32), v1048);
        return 0;
      }
    }

    if (qword_280D93948 != -1)
    {
      OUTLINED_FUNCTION_78();
    }

    __swift_project_value_buffer(v1048, qword_280D9DA90);
    OUTLINED_FUNCTION_121();
    v1032(v1046);
    v1033 = sub_2320EDD20();
    v1034 = sub_2320EDEA0();
    if (os_log_type_enabled(v1033, v1034))
    {
      v1035 = sub_231E75FF4();
      *v1035 = 0;
      _os_log_impl(&dword_231E60000, v1033, v1034, "SGTextUnderstandingImporter: calendar attachment doesn't vend schemaOrg", v1035, 2u);
      MEMORY[0x2383814F0](v1035, -1, -1);
    }

    OUTLINED_FUNCTION_98(v1062);
    v1037 = &v1061;
    goto LABEL_373;
  }

  OUTLINED_FUNCTION_105();

  v1114.n128_u64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2C8, &qword_2321064A0);
  v567 = swift_allocObject();
  OUTLINED_FUNCTION_3(v567, xmmword_232106460);
  OUTLINED_FUNCTION_29();
  v568[9] = MEMORY[0x277D837D0];
  v568[6] = 0xD000000000000011;
  v568[7] = v569;
  v1128 = sub_2320EDD60();
  sub_231E6E4C0(&v1125);
  v570 = v1111.n128_u64[0];
  if (v1127)
  {
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_85();
    v571 = OUTLINED_FUNCTION_41();
    sub_231E6EE40(v571, "http://schema.org/Organization", 0xE500000000000000);
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_87();
    sub_231E6F05C(v590, v591, v592);
    sub_231E6EC04("http://schema.org/Organization", 0xE500000000000000, &v1122);
    OUTLINED_FUNCTION_87();
    sub_231E6F05C(v593, v594, v595);
  }

  v596 = "g/EventReservation";
  OUTLINED_FUNCTION_4();
  *&v1125 = v598 + 12;
  *(&v1125 + 1) = v597;
  MEMORY[0x23837EBB0](v1109, v1118);

  v599 = MEMORY[0x277D837D0];
  v1127 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_36();
  sub_2320EDA50();
  sub_2320ED980();
  OUTLINED_FUNCTION_46();
  v600 = *(v1117.n128_u64[0] + 8);
  OUTLINED_FUNCTION_123(v1117.n128_u64[0] + 8);
  v601();
  if ("http://schema.org/EventReservation" != -16)
  {
    v1127 = v599;
    *&v1125 = v145;
    *(&v1125 + 1) = "g/EventReservation";
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_43();
    v602 = OUTLINED_FUNCTION_10();
    sub_231E6EE40(v602, 0x7461767265736572, v603);
    OUTLINED_FUNCTION_36();
  }

  sub_2320EDA50();
  v604 = sub_2320ED8F0();
  v605 = OUTLINED_FUNCTION_81();
  v606 = v1117.n128_u64[0];
  v607 = v1118;
  (v1118)(v605);
  sub_231E831C4(v604);
  OUTLINED_FUNCTION_114();
  if ("http://schema.org/EventReservation" != -16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
    v596 = OUTLINED_FUNCTION_94();
    v608 = OUTLINED_FUNCTION_35(v596, xmmword_232106450);
    v608[2].n128_u64[0] = "http://schema.org/Organization";
    v608[2].n128_u64[1] = v609;
    v610 = OUTLINED_FUNCTION_2(v608, "http://schema.org/Person");
    *(v610 + 64) = 1701667182;
    *(v610 + 72) = v611;
    sub_2320EDA50();
    v612 = sub_2320ED8F0();
    v613 = OUTLINED_FUNCTION_118();
    (v607)(v613);
    *&v1125 = v612;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D8, &qword_2321064B0);
    sub_231E6EF88();
    OUTLINED_FUNCTION_7();
    v614 = sub_2320EDD80();
    v616 = v615;
    v145 = v1115;

    v596[5].n128_u64[0] = v614;
    v596[5].n128_u64[1] = v616;
    v607 = v1118;
    sub_2320EDD60();
    v617 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
    OUTLINED_FUNCTION_30(v617);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_61();
    sub_231E6EE40(v618, v619, v620);
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_83(v1092);
  sub_2320EDA50();
  sub_2320ED9C0();
  OUTLINED_FUNCTION_46();
  v621 = OUTLINED_FUNCTION_79();
  (v607)(v621);
  if (v596)
  {
    OUTLINED_FUNCTION_91(MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_43();
    v622 = OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_102(v622, v623);
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_45(v1093);
  sub_2320EDA50();
  sub_2320ED940();
  OUTLINED_FUNCTION_46();
  (v607)(v606, v145);
  if (v596)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
    v624 = OUTLINED_FUNCTION_94();
    v625 = OUTLINED_FUNCTION_0(v624, xmmword_232106450);
    v626 = OUTLINED_FUNCTION_1(v625, "http://schema.org/Place");
    v626[8] = 1701667182;
    v626[9] = v627;
    v626[10] = v606;
    v626[11] = v596;
    sub_2320EDD60();
    v628 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
    OUTLINED_FUNCTION_30(v628);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_43();
    v629 = OUTLINED_FUNCTION_38();
    sub_231E6EE40(v629, v630, 0xE600000000000000);
    OUTLINED_FUNCTION_36();
  }

  sub_2320EDA50();
  v631 = sub_2320ED8D0();
  v632 = OUTLINED_FUNCTION_81();
  v633 = v1118;
  (v1118)(v632);
  sub_231E831C4(v631);
  OUTLINED_FUNCTION_114();
  if (v596)
  {
    v634 = OUTLINED_FUNCTION_107();
    v1114 = xmmword_232106450;
    *(v634 + 16) = xmmword_232106450;
    *(v634 + 32) = 0x6570797440;
    *(v634 + 40) = 0xE500000000000000;
    OUTLINED_FUNCTION_29();
    *(v635 + 48) = 0xD000000000000018;
    *(v635 + 56) = v636;
    v637 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_77();
    *(v638 + 72) = v637;
    *(v638 + 80) = v639;
    OUTLINED_FUNCTION_76(v638);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D0, &qword_2321064A8);
    v640 = OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_22(v640);
    *(v641 + 32) = 0x6570797440;
    *(v641 + 40) = v642;
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_20(v643, v644);
    sub_2320EDA50();
    v645 = sub_2320ED8D0();
    v646 = OUTLINED_FUNCTION_118();
    (v633)(v646);
    *&v1125 = v645;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2D8, &qword_2321064B0);
    sub_231E6EF88();
    OUTLINED_FUNCTION_7();
    v647 = sub_2320EDD80();
    v649 = v648;

    v640[5].n128_u64[0] = v647;
    v640[5].n128_u64[1] = v649;
    v145 = sub_2320EDD60();
    *(v634 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
    *(v634 + 96) = v145;
    sub_2320EDD60();
    v650 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2F0, &qword_2321064C0);
    OUTLINED_FUNCTION_30(v650);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_24();
    v651 = OUTLINED_FUNCTION_41();
    sub_231E6EE40(v651, v652, v653);
    OUTLINED_FUNCTION_36();
  }

  v654 = MEMORY[0x277D837D0];
  v655 = sub_2320EDD60();
  v1121 = v655;
  sub_231E6E6D4(&v1125);
  if (v1127)
  {
    sub_231E6EBF4(&v1125, &v1122);
    swift_isUniquelyReferenced_nonNull_native();
    v1120 = v655;
    v656 = OUTLINED_FUNCTION_93();
    sub_231E6EE40(v656, 0x6570797440, 0xE500000000000000);
    OUTLINED_FUNCTION_84();
  }

  else
  {
    v145 = &qword_27DD8D2F8;
    sub_231E6F05C(&v1125, &qword_27DD8D2F8, &qword_2321064C8);
    sub_231E6EC04(0x6570797440, 0xE500000000000000, &v1122);
    sub_231E6F05C(&v1122, &qword_27DD8D2F8, &qword_2321064C8);
  }

  v657 = v1078;
  OUTLINED_FUNCTION_44(v1094);
  sub_2320EDA60();
  v658 = OUTLINED_FUNCTION_60();
  v659 = v1113;
  OUTLINED_FUNCTION_42(v658, v660, v1113);
  if (v177)
  {
    sub_231E6F05C(v145, &qword_27DD8D2B0, &qword_232106810);
  }

  else
  {
    OUTLINED_FUNCTION_48();
    v661 = OUTLINED_FUNCTION_110();
    v662(v661, v145, v659);
    v145 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
    v663 = sub_2320ED5B0();
    v664 = OUTLINED_FUNCTION_115(v663, sel_stringFromDate_);

    sub_2320EDDB0();
    OUTLINED_FUNCTION_49();

    OUTLINED_FUNCTION_75();
    sub_231E6EBF4(&v1125, &v1122);
    v665 = v1121;
    swift_isUniquelyReferenced_nonNull_native();
    v1120 = v665;
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_99();
    v666(v633, v659);
  }

  OUTLINED_FUNCTION_44(v1095);
  sub_2320ED840();
  v667 = OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_42(v667, v668, v659);
  if (v177)
  {
    sub_231E6F05C(v145, &qword_27DD8D2B0, &qword_232106810);
  }

  else
  {
    OUTLINED_FUNCTION_48();
    v669 = OUTLINED_FUNCTION_110();
    v670(v669, v145, v659);
    v671 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
    v672 = sub_2320ED5B0();
    v673 = OUTLINED_FUNCTION_115(v672, sel_stringFromDate_);

    sub_2320EDDB0();
    OUTLINED_FUNCTION_49();

    OUTLINED_FUNCTION_75();
    OUTLINED_FUNCTION_50();
    OUTLINED_FUNCTION_74();
    v674 = OUTLINED_FUNCTION_126();
    sub_231E6E288(v674, v675, v676);
    (*(v570 + 8))(v633, v659);
  }

  v677 = v1077;
  OUTLINED_FUNCTION_56(v1096);
  sub_2320ED7D0();
  v678 = OUTLINED_FUNCTION_65();
  v679 = v1119;
  if (__swift_getEnumTagSinglePayload(v678, v680, v1119) == 1)
  {
    sub_231E6F05C(v654, &qword_27DD8D2A8, &qword_232106488);
    v681 = v1110;
LABEL_202:
    OUTLINED_FUNCTION_88();
    goto LABEL_222;
  }

  v681 = v1110;
  OUTLINED_FUNCTION_68();
  v682(v677, v654, v679);
  OUTLINED_FUNCTION_44(v1090);
  sub_2320EDA50();
  v683 = sub_2320ED910();
  v685 = v684;
  OUTLINED_FUNCTION_108();
  v686();
  if (!v685)
  {
    OUTLINED_FUNCTION_99();
    v695(v677, v679);
    goto LABEL_202;
  }

  *&v1122 = sub_2320EDD60();
  v687 = sub_2320ED890();
  if (v688)
  {
    OUTLINED_FUNCTION_53(v687, v688);
  }

  OUTLINED_FUNCTION_125(&v1088);
  sub_2320ED8A0();
  v689 = v1087;
  OUTLINED_FUNCTION_42(v679, 1, v1087);
  if (v177)
  {
    sub_231E6F05C(v679, &qword_27DD8D298, &qword_232106478);
  }

  else
  {
    v681 = v1083;
    OUTLINED_FUNCTION_68();
    v732 = v1057;
    v733(v1057, v679, v689);
    sub_2320EDBF0();
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_128(v734, v735, v736);
    OUTLINED_FUNCTION_99();
    v737(v732, v1087);
  }

  OUTLINED_FUNCTION_116();
  v738 = v177 && v685 == 0xE500000000000000;
  if (v738 || (OUTLINED_FUNCTION_71() & 1) != 0)
  {

    OUTLINED_FUNCTION_104();
    OUTLINED_FUNCTION_62();
    OUTLINED_FUNCTION_18(0xD00000000000001ELL);
  }

  else
  {
    v863 = v683 == 7566690 && v685 == 0xE300000000000000;
    if (!v863 && (OUTLINED_FUNCTION_71() & 1) == 0)
    {
      if (v683 == 1952542562 && v685 == 0xE400000000000000)
      {
      }

      else
      {
        v998 = OUTLINED_FUNCTION_71();

        if ((v998 & 1) == 0)
        {
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_62();
          OUTLINED_FUNCTION_88();
          OUTLINED_FUNCTION_18(v279 + 6);
          v999 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
          OUTLINED_FUNCTION_30(v999);
          v740 = OUTLINED_FUNCTION_126();
          goto LABEL_220;
        }
      }

      v679 = v1119;
      v681 = v1110;
      OUTLINED_FUNCTION_88();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_18(v279 + 13);
      v1003 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
      v1004 = OUTLINED_FUNCTION_14(v1003);
      sub_231E6E288(v1004, v279 + 4, 0x800000023210E700);
      OUTLINED_FUNCTION_99();
      v745 = v677;
      goto LABEL_221;
    }

    OUTLINED_FUNCTION_104();
    OUTLINED_FUNCTION_62();
    OUTLINED_FUNCTION_18(0xD000000000000019);
  }

  v739 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
  OUTLINED_FUNCTION_14(v739);
  OUTLINED_FUNCTION_88();
LABEL_220:
  sub_231E6E288(v740, v741, v742);
  OUTLINED_FUNCTION_82(&v1131);
  v744 = *(v743 + 8);
  v745 = v677;
  v679 = v1119;
LABEL_221:
  v744(v745, v679);
LABEL_222:
  OUTLINED_FUNCTION_45(&v1097);
  sub_2320ED7C0();
  v746 = OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_42(v746, v747, v679);
  if (!v177)
  {
    OUTLINED_FUNCTION_68();
    v748(v657, v677, v679);
    OUTLINED_FUNCTION_45(v1091);
    sub_2320EDA50();
    v749 = sub_2320ED910();
    v751 = v750;
    OUTLINED_FUNCTION_108();
    v752();
    if (!v751)
    {
      goto LABEL_238;
    }

    *&v1122 = sub_2320EDD60();
    v753 = sub_2320ED890();
    if (v754)
    {
      OUTLINED_FUNCTION_53(v753, v754);
    }

    OUTLINED_FUNCTION_27(&v1089);
    sub_2320ED8A0();
    v755 = OUTLINED_FUNCTION_51();
    v756 = v1087;
    if (__swift_getEnumTagSinglePayload(v755, v757, v1087) == 1)
    {
      sub_231E6F05C(v677, &qword_27DD8D298, &qword_232106478);
    }

    else
    {
      v758 = v1083;
      v759 = *(v1083 + 32);
      v760 = v1058;
      v761 = OUTLINED_FUNCTION_122();
      v762(v761);
      sub_2320EDBF0();
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_128(v763, v764, v765);
      (*(v758 + 8))(v760, v756);
      v657 = v1078;
    }

    OUTLINED_FUNCTION_116();
    v766 = v177 && v751 == 0xE500000000000000;
    if (v766 || (OUTLINED_FUNCTION_71() & 1) != 0)
    {

      OUTLINED_FUNCTION_104();
      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_18(v279 + 13);
      v767 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
      OUTLINED_FUNCTION_30(v767);
      OUTLINED_FUNCTION_50();
      v769 = v768 & 0xFFFFFFFFFFFFLL | 0x536C000000000000;
      v770 = &v1125;
      v772 = v771 + 17;
    }

    else
    {
      v864 = v749 == 7566690 && v751 == 0xE300000000000000;
      if (!v864 && (OUTLINED_FUNCTION_71() & 1) == 0)
      {
        if (v749 == 1952542562 && v751 == 0xE400000000000000)
        {
        }

        else
        {
          v1001 = OUTLINED_FUNCTION_71();

          if ((v1001 & 1) == 0)
          {
            swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_62();
            OUTLINED_FUNCTION_18(v279 + 6);
            v1002 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
            OUTLINED_FUNCTION_30(v1002);
            v769 = 0x697461636F4C6F74;
            v770 = &v1125;
            v772 = 0xEA00000000006E6FLL;
            goto LABEL_237;
          }
        }

        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_62();
        OUTLINED_FUNCTION_18(v279 + 13);
        v1005 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
        v770 = OUTLINED_FUNCTION_14(v1005);
        v769 = v279 + 2;
        v772 = 0x800000023210E6A0;
        goto LABEL_237;
      }

      OUTLINED_FUNCTION_104();
      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_18(v279 + 8);
      v865 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2E8, &qword_2321064B8);
      OUTLINED_FUNCTION_30(v865);
      OUTLINED_FUNCTION_50();
      v769 = v866 & 0xFFFFFFFFFFFFLL | 0x426C000000000000;
      v772 = 0xEE00706F74537375;
      v770 = &v1125;
    }

LABEL_237:
    sub_231E6E288(v770, v769, v772);
LABEL_238:
    (*(v681 + 8))(v657, v679);
    goto LABEL_239;
  }

  sub_231E6F05C(v677, &qword_27DD8D2A8, &qword_232106488);
LABEL_239:
  v773 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2F0, &qword_2321064C0);
  OUTLINED_FUNCTION_30(v773);
  OUTLINED_FUNCTION_19_0();
  v415 = OUTLINED_FUNCTION_63();
  v418 = 0x7461767265736572;
LABEL_105:
  sub_231E6E288(v415, v418, v416);
  return v1128;
}

uint64_t sub_231E6E194()
{
  v0 = 0x656C6C65636E6143;
  v1 = sub_2320ED830();
  v3 = v2;
  v4 = v1 == 0x656C6C65636E6163 && v2 == 0xE900000000000064;
  if (v4 || (v5 = v1, (sub_2320EE020() & 1) != 0) || (v5 == 0xD000000000000012 ? (v6 = 0x800000023210EA70 == v3) : (v6 = 0), v6))
  {
  }

  else
  {
    v7 = sub_2320EE020();

    if ((v7 & 1) == 0)
    {
      return 0x656D7269666E6F43;
    }
  }

  return v0;
}

uint64_t sub_231E6E288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_231E6EBF4(a1, v9);
    v6 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_231E6EE40(v9, a2, a3);

    *v3 = v8;
  }

  else
  {
    sub_231E6F05C(a1, &qword_27DD8D2F8, &qword_2321064C8);
    sub_231E6EC04(a2, a3, v9);

    return sub_231E6F05C(v9, &qword_27DD8D2F8, &qword_2321064C8);
  }

  return result;
}

uint64_t sub_231E6E35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v20 = *v4;
    sub_231E6ECEC(a1, a2, a3, a4);

    *v4 = v20;
  }

  else
  {
    v12 = *v4;
    v13 = sub_231E843DC(a3, a4);
    if (v14)
    {
      v15 = v13;
      v16 = *v5;
      swift_isUniquelyReferenced_nonNull_native();
      v21 = *v5;
      v17 = *(*v5 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D300, &qword_2321064D0);
      sub_2320EDFC0();
      v18 = *(*(v21 + 48) + 16 * v15 + 8);

      v19 = *(*(v21 + 56) + 16 * v15 + 8);
      sub_2320EDFD0();

      *v5 = v21;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_231E6E4C0@<X0>(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000022;
  v3 = sub_2320EDA20();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2320EDA50();
  v8 = sub_2320ED910();
  v10 = v9;
  result = (*(v4 + 8))(v7, v3);
  v12 = "http://schema.org";
  if (v10)
  {
    v13 = v8 == 0x6E69617274 && v10 == 0xE500000000000000;
    if (v13 || (sub_2320EE020() & 1) != 0)
    {
      v12 = "g/BusReservation";
LABEL_21:

      goto LABEL_22;
    }

    v14 = "g/BoatReservation";
    v15 = 0xD000000000000020;
    v16 = v8 == 7566690 && v10 == 0xE300000000000000;
    if (v16 || (sub_2320EE020() & 1) != 0 || ((v14 = "http://schema.org/TrainTrip", v15 = 0xD000000000000021, v8 == 1952542562) ? (v17 = v10 == 0xE400000000000000) : (v17 = 0), v17))
    {
      v12 = v14;
      v2 = v15;
      goto LABEL_21;
    }

    v18 = sub_2320EE020();

    if (v18)
    {
      v12 = "http://schema.org/TrainTrip";
      v2 = 0xD000000000000021;
    }
  }

LABEL_22:
  a1[3] = MEMORY[0x277D837D0];
  *a1 = v2;
  a1[1] = v12 | 0x8000000000000000;
  return result;
}

uint64_t sub_231E6E6D4@<X0>(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000017;
  v3 = sub_2320EDA20();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2320EDA50();
  v8 = sub_2320ED910();
  v10 = v9;
  result = (*(v4 + 8))(v7, v3);
  v12 = "flightDesignator";
  if (v10)
  {
    v13 = "http://schema.org/BusTrip";
    v14 = 0xD00000000000001BLL;
    v15 = v8 == 0x6E69617274 && v10 == 0xE500000000000000;
    if (v15 || (sub_2320EE020() & 1) != 0 || ((v13 = "http://schema.org/BoatTrip", v14 = 0xD000000000000019, v8 == 7566690) ? (v16 = v10 == 0xE300000000000000) : (v16 = 0), v16 || (sub_2320EE020() & 1) != 0 || ((v13 = "http://schema.org/Event", v14 = 0xD00000000000001ALL, v8 == 1952542562) ? (v17 = v10 == 0xE400000000000000) : (v17 = 0), v17)))
    {
      v12 = v13;
      v2 = v14;
    }

    else
    {
      v18 = sub_2320EE020();

      if (v18)
      {
        v12 = "http://schema.org/Event";
        v2 = 0xD00000000000001ALL;
      }
    }
  }

  a1[3] = MEMORY[0x277D837D0];
  *a1 = v2;
  a1[1] = v12 | 0x8000000000000000;
  return result;
}

uint64_t sub_231E6E8E4@<X0>(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001DLL;
  v3 = sub_2320EDA20();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2320EDA30() == 0x7974726170 && v8 == 0xE500000000000000)
  {

    goto LABEL_14;
  }

  v10 = sub_2320EE020();

  if (v10)
  {
LABEL_14:
    v17 = "g/ScreeningEvent";
    goto LABEL_15;
  }

  sub_2320EDA50();
  v12 = sub_2320EDA00();
  v14 = v13;
  result = (*(v4 + 8))(v7, v3);
  if (v14)
  {
    if (v12 == 0x6569766F6DLL && v14 == 0xE500000000000000)
    {
    }

    else
    {
      v16 = sub_2320EE020();

      if ((v16 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v17 = "g/TrainReservation";
    v2 = 0xD000000000000020;
    goto LABEL_15;
  }

LABEL_12:
  v17 = "flightDesignator";
  v2 = 0xD000000000000017;
LABEL_15:
  a1[3] = MEMORY[0x277D837D0];
  *a1 = v2;
  a1[1] = v17 | 0x8000000000000000;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_231E6EB38()
{
  v1 = sub_2320EDA70();
  OUTLINED_FUNCTION_100(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  return sub_2320EDA30();
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

_OWORD *sub_231E6EBF4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

double sub_231E6EC04@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_231E843DC(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v4;
    v11 = *(*v4 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D308, &qword_2321064D8);
    sub_2320EDFC0();
    v12 = *(*(v14 + 48) + 16 * v9 + 8);

    sub_231E6EBF4((*(v14 + 56) + 32 * v9), a3);
    sub_2320EDFD0();
    *v4 = v14;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_231E6ECEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_231E843DC(a3, a4);
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D300, &qword_2321064D0);
  if ((sub_2320EDFC0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = *v5;
  v16 = sub_231E843DC(a3, a4);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_13:
    result = sub_2320EE040();
    __break(1u);
    return result;
  }

  v13 = v16;
LABEL_5:
  v18 = *v5;
  if (v14)
  {
    v19 = (v18[7] + 16 * v13);
    v20 = v19[1];
    *v19 = a1;
    v19[1] = a2;
  }

  else
  {
    sub_231E6F268(v13, a3, a4, a1, a2, v18);
  }
}

_OWORD *sub_231E6EE40(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_231E843DC(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D308, &qword_2321064D8);
  if ((sub_2320EDFC0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_231E843DC(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_2320EE040();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = (v16[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v17);

    return sub_231E6EBF4(a1, v17);
  }

  else
  {
    sub_231E6F2B4(v11, a2, a3, a1, v16);
  }
}

unint64_t sub_231E6EF88()
{
  result = qword_27DD8D2E0;
  if (!qword_27DD8D2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD8D2D8, &qword_2321064B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD8D2E0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_231E6F05C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_101(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void sub_231E6F0B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2320EDD10();
  v5 = OUTLINED_FUNCTION_13(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = sub_231E84454();
  if (__OFADD__(*(v12 + 16), (v14 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v15 = v13;
  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D310, &qword_2321064E0);
  if ((sub_2320EDFC0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = *v2;
  v18 = sub_231E84454();
  if ((v16 & 1) != (v19 & 1))
  {
LABEL_11:
    sub_2320EE040();
    __break(1u);
    return;
  }

  v15 = v18;
LABEL_5:
  v20 = *v2;
  if (v16)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v15);
    *(v21 + 8 * v15) = a1;
  }

  else
  {
    v23 = *(v7 + 16);
    v24 = OUTLINED_FUNCTION_117();
    v25(v24);
    sub_231E6F320(v15, v11, a1, v20);
  }
}

unint64_t sub_231E6F268(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

_OWORD *sub_231E6F2B4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_231E6EBF4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_231E6F320(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2320EDD10();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

__n128 *OUTLINED_FUNCTION_0(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x6570797440;
  result[2].n128_u64[1] = 0xE500000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 48) = 0xD00000000000001ELL;
  *(result + 56) = a2 | 0x8000000000000000;
  return result;
}

__n128 *OUTLINED_FUNCTION_3(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x747865746E6F6340;
  result[2].n128_u64[1] = 0xE800000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_6@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 128) = v1 + 12;
  *(v2 - 120) = (a1 - 32) | 0x8000000000000000;
  return *(v2 - 288);
}

uint64_t OUTLINED_FUNCTION_12()
{
  sub_231E6EBF4((v0 - 128), (v0 - 160));
  v1 = *(v0 - 96);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_14(uint64_t a1)
{
  *(v2 - 104) = a1;
  *(v2 - 128) = v1;
  return v2 - 128;
}

uint64_t OUTLINED_FUNCTION_16@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 48) = 0xD000000000000011;
  *(result + 56) = (a2 - 32) | 0x8000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_18(uint64_t a1)
{

  return sub_231E6ECEC(a1, v1 | 0x8000000000000000, 1701869940, 0xE400000000000000);
}

void *OUTLINED_FUNCTION_20@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[6] = v2;
  result[7] = a2;
  result[8] = 0x626D754E74616573;
  result[9] = 0xEA00000000007265;
  return result;
}

uint64_t OUTLINED_FUNCTION_21()
{
  sub_231E6EBF4((v0 - 128), (v0 - 160));

  return swift_isUniquelyReferenced_nonNull_native();
}

__n128 OUTLINED_FUNCTION_22(__n128 *a1)
{
  result = *(v1 - 240);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_30(uint64_t result)
{
  *(v2 - 104) = result;
  *(v2 - 128) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_34()
{
  sub_231E6EBF4((v0 - 128), (v0 - 160));
  v1 = *(v0 - 168);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_37(uint64_t a1)
{
  *(v2 - 104) = a1;
  *(v2 - 128) = v1;
  sub_231E6EBF4((v2 - 128), (v2 - 160));
  v3 = *(v2 - 96);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_47(_OWORD *a1)
{
  sub_231E6EBF4(a1, (v1 - 160));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_52()
{

  return sub_2320EE020();
}

uint64_t OUTLINED_FUNCTION_53(uint64_t a1, uint64_t a2)
{

  return sub_231E6E35C(a1, a2, 1701667182, 0xE400000000000000);
}

__n128 OUTLINED_FUNCTION_55(__n128 *a1)
{
  result = *(v1 - 240);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_64(uint64_t result)
{
  *(v2 - 104) = result;
  *(v2 - 128) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_71()
{

  return sub_2320EE020();
}

_OWORD *OUTLINED_FUNCTION_73()
{

  return sub_231E6EE40((v1 - 160), 0xD000000000000011, v0 | 0x8000000000000000);
}

void OUTLINED_FUNCTION_75()
{
  *(v3 - 104) = v1;
  *(v3 - 128) = v0;
  *(v3 - 120) = v2;
}

_OWORD *OUTLINED_FUNCTION_80()
{

  return sub_231E6EE40((v0 - 160), 0x7275747261706564, 0xED0000656D695465);
}

void OUTLINED_FUNCTION_91(uint64_t a1@<X8>)
{
  *(v3 - 104) = a1;
  *(v3 - 128) = v1;
  *(v3 - 120) = v2;
}

uint64_t OUTLINED_FUNCTION_94()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_95()
{

  return sub_231E6E35C(v0, v1, 0x65646F4361746169, 0xE800000000000000);
}

_OWORD *OUTLINED_FUNCTION_102(_OWORD *a1, uint64_t a2)
{

  return sub_231E6EE40(a1, a2, 0xEA00000000006563);
}

uint64_t OUTLINED_FUNCTION_104()
{
  v2 = *(v0 - 160);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_106@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 48) = v2 + 8;
  *(result + 56) = a2 | 0x8000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_107()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_108()
{
  v1 = *(v0 - 224);
  v2 = *(v0 - 208);
  v3 = *(v0 - 192);
}

void *OUTLINED_FUNCTION_109@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[11] = a2;
  result[12] = v3;
  result[13] = v2;
  return result;
}

void OUTLINED_FUNCTION_112(uint64_t a1@<X8>)
{
  *(v3 - 104) = a1;
  *(v3 - 128) = v1;
  *(v3 - 120) = v2;
}

uint64_t OUTLINED_FUNCTION_113()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_114()
{
}

id OUTLINED_FUNCTION_115(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_118()
{
  result = v0;
  v3 = *(v1 - 224);
  return result;
}

void OUTLINED_FUNCTION_123(uint64_t a1@<X8>)
{
  v3 = *(v2 - 224);
  *(v2 - 208) = a1;
  *(v2 - 192) = v1;
}

id OUTLINED_FUNCTION_127(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_128(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_231E6E35C(a1, a2, a3, 0xE700000000000000);
}

uint64_t OUTLINED_FUNCTION_129(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_231E6E35C(a1, a2, a3, 0xE900000000000065);
}

uint64_t sub_231E6FD84()
{
  v0 = sub_2320ED6C0();
  v1 = OUTLINED_FUNCTION_13(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_41_0();
  v8 = v7 - v6;
  v9 = sub_2320ED6B0();
  v10 = OUTLINED_FUNCTION_13(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v10);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - v18;
  v20 = *MEMORY[0x277D3A1F8];
  v29 = *(v12 + 104);
  v29(&v28 - v18, v20, v9);
  sub_231E76C78(qword_280D93B30, MEMORY[0x277D3A228]);
  v21 = sub_2320ED6D0();
  v28 = *(v12 + 8);
  v28(v19, v9);
  if (v21)
  {
    goto LABEL_4;
  }

  (*(v3 + 104))(v8, *MEMORY[0x277D3A230], v0);
  sub_231E76C78(&qword_27DD8D328, MEMORY[0x277D3A240]);
  v22 = sub_2320ED6D0();
  (*(v3 + 8))(v8, v0);
  if (v22 & 1) != 0 || (v23 = v29, v29(v17, *MEMORY[0x277D3A208], v9), v24 = sub_2320ED6D0(), v25 = v28, v28(v17, v9), (v24))
  {
LABEL_4:
    v26 = 1;
  }

  else
  {
    v23(v17, *MEMORY[0x277D3A200], v9);
    v26 = sub_2320ED6D0();
    v25(v17, v9);
  }

  return v26 & 1;
}

uint64_t sub_231E7008C()
{
  sub_2320ED660();
  result = sub_2320ED650();
  qword_280D9DA58 = result;
  return result;
}

void static TextUnderstandingObservationSystem.start()()
{
  v1 = v0;
  v2 = sub_2320ED5F0();
  v3 = OUTLINED_FUNCTION_13(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_41_0();
  v10 = v9 - v8;
  v11 = type metadata accessor for TextUnderstandingBookmarks();
  v12 = OUTLINED_FUNCTION_33_0(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_41_0();
  v17 = v16 - v15;
  if (sub_231E6FD84())
  {
    if (qword_280D93740 != -1)
    {
      OUTLINED_FUNCTION_36_0();
    }

    v18 = sub_2320EDD40();
    __swift_project_value_buffer(v18, qword_280D9DA40);
    v19 = sub_2320EDD20();
    v20 = sub_2320EDEA0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_48_0();
      *v21 = 0;
      _os_log_impl(&dword_231E60000, v19, v20, "SGTextUnderstandingObservationSystem: starting", v21, 2u);
      OUTLINED_FUNCTION_45_0();
    }

    sub_231E84C7C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D318, &qword_232106510);
    sub_2320ED670();
    if (v41 == 0.0)
    {
      sub_2320ED5E0();
      sub_2320ED580();
      (*(v5 + 8))(v10, v2);
      sub_2320ED680();
      v22 = v11[5];
      OUTLINED_FUNCTION_63_0();
      v23 = v11[6];
      OUTLINED_FUNCTION_63_0();
      v24 = v11[7];
      OUTLINED_FUNCTION_63_0();
      v25 = sub_2320EDD20();
      v26 = sub_2320EDEA0();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = OUTLINED_FUNCTION_48_0();
        OUTLINED_FUNCTION_46_0(v27);
        _os_log_impl(&dword_231E60000, v25, v26, "SGTextUnderstandingObservationSystem: forced all bookmarks to current time.", v2, 2u);
        OUTLINED_FUNCTION_24_0();
      }
    }

    if (qword_280D93748 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for TextUnderstandingObserver();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    v31 = swift_allocObject();

    sub_231E70EF4(v32);
    qword_280D9DA38 = v31;

    v33 = swift_allocObject();
    *(v33 + 16) = v1;
    v34 = sub_231E70640(0xD000000000000037, 0x800000023210EA90, &unk_232106520, v33);

    qword_280D9DA68 = v34;

    v35 = swift_allocObject();
    *(v35 + 16) = v1;
    v36 = sub_231E70640(0xD000000000000038, 0x800000023210EAD0, &unk_232106530, v35);

    qword_280D9DA60 = v36;

    sub_231E76158(v17);
  }

  else
  {
    if (qword_280D93740 != -1)
    {
      OUTLINED_FUNCTION_36_0();
    }

    v37 = sub_2320EDD40();
    OUTLINED_FUNCTION_49_0(v37, qword_280D9DA40);
    v40 = sub_2320EDD20();
    v38 = sub_2320EDEA0();
    if (os_log_type_enabled(v40, v38))
    {
      v39 = OUTLINED_FUNCTION_48_0();
      *v39 = 0;
      _os_log_impl(&dword_231E60000, v40, v38, "SGTextUnderstandingObservationSystem: disabled", v39, 2u);
      OUTLINED_FUNCTION_45_0();
    }
  }
}

uint64_t sub_231E70574()
{
  OUTLINED_FUNCTION_22_0();
  v1 = qword_280D9DA38;
  *(v0 + 16) = qword_280D9DA38;
  if (v1)
  {

    v2 = swift_task_alloc();
    *(v0 + 24) = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_50_0(v2);

    return sub_231E70F60();
  }

  else
  {
    OUTLINED_FUNCTION_19();

    return v4();
  }
}

uint64_t sub_231E70640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_2320EDEB0();
  v10 = OUTLINED_FUNCTION_13(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_41_0();
  v17 = v16 - v15;
  v18 = sub_2320EDDA0();
  v19 = [objc_opt_self() defaultCenter];
  sub_2320EDEC0();

  OUTLINED_FUNCTION_73_0();
  v20 = swift_allocObject();
  v20[2] = v5;
  v20[3] = a1;
  v20[4] = a2;
  OUTLINED_FUNCTION_73_0();
  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = a4;
  v21[4] = v5;
  sub_231E76C78(&qword_280D93718, MEMORY[0x277CC9DB0]);

  v22 = sub_2320EDD50();

  (*(v12 + 8))(v17, v9);
  return v22;
}

uint64_t sub_231E70858()
{
  OUTLINED_FUNCTION_22_0();
  v1 = qword_280D9DA38;
  *(v0 + 16) = qword_280D9DA38;
  if (v1)
  {

    v2 = swift_task_alloc();
    *(v0 + 24) = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_50_0(v2);

    return sub_231E731A0();
  }

  else
  {
    OUTLINED_FUNCTION_19();

    return v4();
  }
}

uint64_t sub_231E70924()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_28_0();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_8_0();
  *v5 = v4;

  OUTLINED_FUNCTION_19();

  return v6();
}

void sub_231E70A48(_BYTE *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*a1 == 1)
  {
    if (qword_280D93740 != -1)
    {
      swift_once();
    }

    v6 = sub_2320EDD40();
    __swift_project_value_buffer(v6, qword_280D9DA40);

    oslog = sub_2320EDD20();
    v7 = sub_2320EDEA0();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_231E83810(a3, a4, &v18);
      _os_log_impl(&dword_231E60000, oslog, v7, "SGTextUnderstandingObserver: %s publisher finished", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x2383814F0](v9, -1, -1);
      v10 = v8;
LABEL_10:
      MEMORY[0x2383814F0](v10, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_280D93740 != -1)
    {
      swift_once();
    }

    v11 = sub_2320EDD40();
    __swift_project_value_buffer(v11, qword_280D9DA40);

    oslog = sub_2320EDD20();
    v12 = sub_2320EDE80();

    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v18 = v15;
      *v13 = 136315394;
      *(v13 + 4) = sub_231E83810(a3, a4, &v18);
      *(v13 + 12) = 2112;
      swift_allocError();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v16;
      *v14 = v16;
      _os_log_impl(&dword_231E60000, oslog, v12, "SGTextUnderstandingObserver: %s publisher failed: %@", v13, 0x16u);
      sub_231E768C8(v14, &qword_27DD8D320, &qword_232106700);
      MEMORY[0x2383814F0](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x2383814F0](v15, -1, -1);
      v10 = v13;
      goto LABEL_10;
    }
  }
}

uint64_t sub_231E70D2C()
{
  if (qword_280D93748 != -1)
  {
    swift_once();
  }

  return sub_2320ED640();
}

id TextUnderstandingObservationSystem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TextUnderstandingObservationSystem.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TextUnderstandingObservationSystem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_231E70E74(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2320EDD40();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_2320EDD30();
}

uint64_t sub_231E70EF4(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  sub_2320ED590();
  sub_2320ED590();
  *(v1 + OBJC_IVAR____TtC24CoreSuggestionsInternals25TextUnderstandingObserver_delayedResultsNotificationInProgress) = 0;
  *(v1 + OBJC_IVAR____TtC24CoreSuggestionsInternals25TextUnderstandingObserver_delayedDeletionNotificationInProgress) = 0;
  *(v1 + 120) = a1;
  return v1;
}

uint64_t sub_231E70F60()
{
  OUTLINED_FUNCTION_22_0();
  v1[8] = v0;
  v1[9] = *v0;
  v2 = sub_2320ED5F0();
  v1[10] = v2;
  OUTLINED_FUNCTION_14_0(v2);
  v1[11] = v3;
  v5 = *(v4 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_43_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231E71040()
{
  v2 = v0[8];
  v3 = *(v2 + 112);
  if (!v3)
  {
    v4 = sub_231E71768();
    v5 = *(v2 + 112);
    *(v2 + 112) = v4;

    v3 = *(v2 + 112);
    if (!v3)
    {
      if (qword_280D93CA8 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v54 = sub_2320EDD40();
      OUTLINED_FUNCTION_49_0(v54, qword_280D9DAA8);
      v9 = sub_2320EDD20();
      v55 = sub_2320EDE80();
      if (OUTLINED_FUNCTION_37_0(v55))
      {
        v56 = OUTLINED_FUNCTION_48_0();
        OUTLINED_FUNCTION_44_0(v56);
        OUTLINED_FUNCTION_18_0(&dword_231E60000, v57, v58, "SGTextUnderstandingObserver: failed to create importer.");
        OUTLINED_FUNCTION_26_0();
      }

      goto LABEL_10;
    }

    v2 = v0[8];
  }

  v0[14] = v3;
  v6 = OBJC_IVAR____TtC24CoreSuggestionsInternals25TextUnderstandingObserver_delayedResultsNotificationInProgress;
  if (*(v2 + OBJC_IVAR____TtC24CoreSuggestionsInternals25TextUnderstandingObserver_delayedResultsNotificationInProgress) == 1)
  {
    v7 = qword_280D93CA8;

    if (v7 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v8 = sub_2320EDD40();
    OUTLINED_FUNCTION_49_0(v8, qword_280D9DAA8);
    v9 = sub_2320EDD20();
    v10 = sub_2320EDE70();
    if (OUTLINED_FUNCTION_34_0(v10))
    {
      v11 = OUTLINED_FUNCTION_48_0();
      OUTLINED_FUNCTION_46_0(v11);
      OUTLINED_FUNCTION_10_0();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
      OUTLINED_FUNCTION_24_0();
    }

LABEL_10:

    goto LABEL_17;
  }

  v18 = v0[12];
  v17 = v0[13];
  v19 = v0[10];
  v20 = v0[11];

  sub_2320ED5E0();
  v21 = OBJC_IVAR____TtC24CoreSuggestionsInternals25TextUnderstandingObserver_lastResultsPostTime;
  OUTLINED_FUNCTION_59_0();
  v22 = OUTLINED_FUNCTION_57_0();
  v23(v22);
  sub_2320ED5A0();
  v24 = OUTLINED_FUNCTION_72_0();
  v21(v24);
  (v21)(v17, v19);
  if (v1 < 2.0)
  {
    if (qword_280D93CA8 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v25 = sub_2320EDD40();
    OUTLINED_FUNCTION_49_0(v25, qword_280D9DAA8);
    v26 = sub_2320EDD20();
    v27 = sub_2320EDE70();
    if (OUTLINED_FUNCTION_34_0(v27))
    {
      v28 = OUTLINED_FUNCTION_48_0();
      OUTLINED_FUNCTION_46_0(v28);
      OUTLINED_FUNCTION_10_0();
      _os_log_impl(v29, v30, v31, v32, v33, 2u);
      OUTLINED_FUNCTION_24_0();
    }

    v34 = v0[8];
    v35 = v0[9];

    *(v2 + v6) = 1;
    v36 = *(v34 + 120);
    v37 = swift_allocObject();
    *(v37 + 16) = v34;
    *(v37 + 24) = v35;

    sub_2320ED640();

LABEL_17:
    v39 = v0[12];
    v38 = v0[13];

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_56_0();

    __asm { BRAA            X1, X16 }
  }

  if (qword_280D93CA8 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v42 = sub_2320EDD40();
  v0[16] = __swift_project_value_buffer(v42, qword_280D9DAA8);
  v43 = sub_2320EDD20();
  v44 = sub_2320EDE60();
  if (OUTLINED_FUNCTION_34_0(v44))
  {
    v45 = OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_46_0(v45);
    OUTLINED_FUNCTION_10_0();
    _os_log_impl(v46, v47, v48, v49, v50, 2u);
    OUTLINED_FUNCTION_24_0();
  }

  v51 = swift_task_alloc();
  v0[17] = v51;
  *v51 = v0;
  OUTLINED_FUNCTION_64_0(v51);
  OUTLINED_FUNCTION_56_0();

  return sub_231E71EE4();
}

uint64_t sub_231E71418()
{
  OUTLINED_FUNCTION_25_0();
  v2 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;
  v5 = *(v2 + 136);
  *v4 = *v1;
  *(v3 + 144) = v0;

  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_231E7160C;
  }

  else
  {
    v7 = sub_231E7153C;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

void sub_231E7153C()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[16];
  v2 = sub_2320EDD20();
  v3 = sub_2320EDE60();
  if (OUTLINED_FUNCTION_37_0(v3))
  {
    v4 = OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_44_0(v4);
    OUTLINED_FUNCTION_18_0(&dword_231E60000, v5, v6, "SGTextUnderstandingObserver: results handler finished");
    OUTLINED_FUNCTION_26_0();
  }

  OUTLINED_FUNCTION_20_0();

  OUTLINED_FUNCTION_29_0();
  v7 = OUTLINED_FUNCTION_16_0();
  v8(v7);
  swift_endAccess();
  v10 = v0[12];
  v9 = v0[13];

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_77_0();

  __asm { BRAA            X1, X16 }
}

void sub_231E7160C()
{
  OUTLINED_FUNCTION_51_0();
  v2 = v0[18];
  v3 = v0[16];
  v4 = v2;
  v5 = sub_2320EDD20();
  v6 = sub_2320EDE80();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[18];
  if (v7)
  {
    OUTLINED_FUNCTION_75_0();
    v9 = OUTLINED_FUNCTION_60_0();
    *v1 = 138412290;
    v10 = v8;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v11;
    *v9 = v11;
    OUTLINED_FUNCTION_10_0();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    sub_231E768C8(v9, &qword_27DD8D320, &qword_232106700);
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_24_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_20_0();

  OUTLINED_FUNCTION_29_0();
  v17 = OUTLINED_FUNCTION_16_0();
  v18(v17);
  swift_endAccess();
  v20 = v0[12];
  v19 = v0[13];

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_77_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_231E71768()
{
  if ([objc_opt_self() defaultStore])
  {
    type metadata accessor for TextUnderstandingImporter();
    swift_allocObject();
    return TextUnderstandingImporter.init(store:)();
  }

  else
  {
    if (qword_280D93CA8 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v1 = sub_2320EDD40();
    OUTLINED_FUNCTION_49_0(v1, qword_280D9DAA8);
    v2 = sub_2320EDD20();
    v3 = sub_2320EDE80();
    if (OUTLINED_FUNCTION_61_0(v3))
    {
      v4 = OUTLINED_FUNCTION_48_0();
      OUTLINED_FUNCTION_44_0(v4);
      OUTLINED_FUNCTION_54_0();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    return 0;
  }
}

uint64_t sub_231E71850(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_2320EDFA0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231E71910, 0, 0);
}

uint64_t sub_231E71910()
{
  OUTLINED_FUNCTION_25_0();
  v1 = *(v0 + 40);
  sub_2320EE0A0();
  sub_2320EE070();
  v2 = OUTLINED_FUNCTION_74_0(&unk_232106718);
  *(v0 + 48) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_31_0(v2);

  return v4(v3);
}

uint64_t sub_231E719B8()
{
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_23_0();
  *v3 = v2;
  v5 = v4[6];
  v6 = v4[5];
  v7 = v4[4];
  v8 = v4[3];
  v9 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v10 = v9;
  *(v11 + 56) = v0;

  (*(v7 + 8))(v6, v8);
  if (v0)
  {
    v12 = sub_231E71BE8;
  }

  else
  {
    v12 = sub_231E71B14;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_231E71B14()
{
  OUTLINED_FUNCTION_25_0();
  if (qword_280D93CA8 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_2320EDD40();
  OUTLINED_FUNCTION_49_0(v1, qword_280D9DAA8);
  v2 = sub_2320EDD20();
  v3 = sub_2320EDE70();
  if (OUTLINED_FUNCTION_37_0(v3))
  {
    v4 = OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_44_0(v4);
    OUTLINED_FUNCTION_18_0(&dword_231E60000, v5, v6, "SGTextUnderstandingObserver: re-posting distributedResults");
    OUTLINED_FUNCTION_26_0();
  }

  v7 = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_231E71D48, v7, 0);
}

uint64_t sub_231E71BE8()
{
  OUTLINED_FUNCTION_51_0();
  if (qword_280D93CA8 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = *(v0 + 56);
  v3 = sub_2320EDD40();
  OUTLINED_FUNCTION_49_0(v3, qword_280D9DAA8);
  v4 = v2;
  v5 = sub_2320EDD20();
  v6 = sub_2320EDE80();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 56);
  if (v7)
  {
    OUTLINED_FUNCTION_75_0();
    v9 = OUTLINED_FUNCTION_60_0();
    *v1 = 138412290;
    v10 = v8;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v11;
    *v9 = v11;
    OUTLINED_FUNCTION_10_0();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    sub_231E768C8(v9, &qword_27DD8D320, &qword_232106700);
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_24_0();
  }

  else
  {
  }

  v17 = *(v0 + 40);

  OUTLINED_FUNCTION_19();

  return v18();
}

uint64_t sub_231E71D48()
{
  OUTLINED_FUNCTION_22_0();
  *(*(v0 + 16) + OBJC_IVAR____TtC24CoreSuggestionsInternals25TextUnderstandingObserver_delayedResultsNotificationInProgress) = 0;
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_231E71DE0;
  OUTLINED_FUNCTION_21_0();

  return sub_231E70F60();
}

uint64_t sub_231E71DE0()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;

  v5 = *(v1 + 40);

  v6 = *(v3 + 8);

  return v6();
}

uint64_t sub_231E71EE4()
{
  OUTLINED_FUNCTION_22_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2320ED7A0();
  v1[4] = v3;
  OUTLINED_FUNCTION_14_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_76_0();
  v7 = sub_2320EDA70();
  v1[7] = v7;
  OUTLINED_FUNCTION_14_0(v7);
  v1[8] = v8;
  v10 = *(v9 + 64);
  v1[9] = OUTLINED_FUNCTION_76_0();
  v11 = sub_2320EDBB0();
  v1[10] = v11;
  OUTLINED_FUNCTION_14_0(v11);
  v1[11] = v12;
  v14 = *(v13 + 64);
  v1[12] = OUTLINED_FUNCTION_76_0();
  v15 = OUTLINED_FUNCTION_43_0();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_231E72020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_47_0();
  if (qword_280D93CB8 != -1)
  {
    swift_once();
  }

  v12 = sub_2320ED700();
  *(v10 + 104) = v12;
  *(v10 + 112) = sub_231E76C78(&qword_280D93B18, MEMORY[0x277D203F0]);
  v14 = *(v10 + 16);
  v13 = *(v10 + 24);
  swift_getKeyPath();
  v15 = OUTLINED_FUNCTION_2_0();
  v19 = sub_231E74330(v15, v16, v17, v18);
  *(v10 + 120) = v19;
  *(v10 + 128) = v12;

  if (v12)
  {
    goto LABEL_4;
  }

  v29 = *(v19 + 16);
  *(v10 + 136) = v29;
  if (v29)
  {
    v30 = *(v10 + 80);
    v31 = *(v10 + 88);
    v32 = *(v31 + 16);
    *(v10 + 328) = *(v31 + 80);
    OUTLINED_FUNCTION_6_0();
    *(v10 + 144) = v33;
    *(v10 + 152) = v32;
    *(v10 + 160) = 0;
    v34 = *(v10 + 120);
    v35 = *(v10 + 96);

    v36 = OUTLINED_FUNCTION_13_0();
    v32(v36);
    v37 = swift_task_alloc();
    *(v10 + 168) = v37;
    *v37 = v10;
    v37[1] = sub_231E72438;
    v38 = *(v10 + 96);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_30_0();

    return sub_231E807E4();
  }

  if (qword_280D93CC0 != -1)
  {
    OUTLINED_FUNCTION_11_0();
  }

  v40 = sub_2320ED6F0();
  *(v10 + 176) = v40;
  OUTLINED_FUNCTION_27_0();
  *(v10 + 184) = sub_231E76C78(v41, v42);
  v44 = *(v10 + 16);
  v43 = *(v10 + 24);
  swift_getKeyPath();
  v45 = OUTLINED_FUNCTION_2_0();
  v49 = sub_231E748E8(v45, v46, v47, v48);
  *(v10 + 192) = v49;
  *(v10 + 200) = v40;

  if (v40)
  {
    goto LABEL_4;
  }

  v50 = *(v49 + 16);
  *(v10 + 208) = v50;
  if (v50)
  {
    v51 = *(v10 + 56);
    v52 = *(v10 + 64);
    v53 = *(v52 + 16);
    *(v10 + 332) = *(v52 + 80);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_62_0(v54);
    v55 = OUTLINED_FUNCTION_13_0();
    v53(v55);
    v56 = swift_task_alloc();
    *(v10 + 240) = v56;
    *v56 = v10;
    OUTLINED_FUNCTION_5_0(v56);
    OUTLINED_FUNCTION_30_0();

    return sub_231E81E38();
  }

  if (qword_280D93CC8 != -1)
  {
    OUTLINED_FUNCTION_11_0();
  }

  v58 = sub_2320ED6E0();
  *(v10 + 248) = v58;
  OUTLINED_FUNCTION_7_0();
  v61 = sub_231E76C78(v59, v60);
  OUTLINED_FUNCTION_55_0(v61);
  swift_getKeyPath();
  v62 = OUTLINED_FUNCTION_2_0();
  v66 = sub_231E74EA0(v62, v63, v64, v65);
  OUTLINED_FUNCTION_58_0(v66);
  if (v58)
  {
LABEL_4:
    OUTLINED_FUNCTION_52_0();

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_30_0();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
  }

  OUTLINED_FUNCTION_71_0();
  if (v67)
  {
    OUTLINED_FUNCTION_39_0();
    *(v10 + 336) = v68;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_38_0(v69);
    v70 = OUTLINED_FUNCTION_13_0();
    v11(v70);
    v71 = swift_task_alloc();
    v72 = OUTLINED_FUNCTION_67_0(v71);
    *v72 = v73;
    OUTLINED_FUNCTION_1_0(v72);
    OUTLINED_FUNCTION_30_0();

    return sub_231E82320();
  }

  else
  {

    v75 = swift_task_alloc();
    v76 = OUTLINED_FUNCTION_66_0(v75);
    *v76 = v77;
    OUTLINED_FUNCTION_3_0(v76);
    OUTLINED_FUNCTION_30_0();

    return sub_231E8190C();
  }
}

uint64_t sub_231E72438()
{
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_28_0();
  v2 = v1[21];
  v3 = v1[12];
  v4 = v1[11];
  v5 = v1[10];
  v6 = v1[3];
  v7 = *v0;
  OUTLINED_FUNCTION_8_0();
  *v8 = v7;

  v9 = OUTLINED_FUNCTION_32_0();
  v10(v9);
  v11 = OUTLINED_FUNCTION_42_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_231E72584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_47_0();
  v11 = *(v10 + 160);
  v12 = *(v10 + 136);
  OUTLINED_FUNCTION_68_0();
  if (!v14)
  {
    v37 = *(v10 + 144);
    v36 = *(v10 + 152);
    v38 = *(v10 + 328);
    v39 = *(v10 + 88);
LABEL_7:
    *(v10 + 160) = v13;
    v40 = *(v10 + 120);
    v41 = *(v10 + 96);
    v42 = *(v10 + 80);
    OUTLINED_FUNCTION_9_0();
    v36();
    v43 = swift_task_alloc();
    *(v10 + 168) = v43;
    *v43 = v10;
    v43[1] = sub_231E72438;
    v44 = *(v10 + 96);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_30_0();

    return sub_231E807E4();
  }

  v15 = *(v10 + 120);

  v16 = *(v10 + 120);
  v17 = *(v10 + 128);
  v18 = *(v10 + 104);
  v19 = *(v10 + 112);
  v21 = *(v10 + 16);
  v20 = *(v10 + 24);
  swift_getKeyPath();
  v22 = OUTLINED_FUNCTION_12_0();
  v26 = sub_231E74330(v22, v23, v24, v25);
  *(v10 + 120) = v26;
  *(v10 + 128) = v17;

  if (v17)
  {
    goto LABEL_4;
  }

  v46 = *(v26 + 16);
  *(v10 + 136) = v46;
  if (v46)
  {
    v47 = *(v10 + 88);
    *(v10 + 328) = *(v47 + 80);
    *(v10 + 144) = *(v47 + 72);
    v36 = *(v47 + 16);
    *(v10 + 152) = v36;

    v13 = 0;
    goto LABEL_7;
  }

  if (qword_280D93CC0 != -1)
  {
    OUTLINED_FUNCTION_11_0();
  }

  v48 = sub_2320ED6F0();
  *(v10 + 176) = v48;
  OUTLINED_FUNCTION_27_0();
  *(v10 + 184) = sub_231E76C78(v49, v50);
  v52 = *(v10 + 16);
  v51 = *(v10 + 24);
  swift_getKeyPath();
  v53 = OUTLINED_FUNCTION_2_0();
  v57 = sub_231E748E8(v53, v54, v55, v56);
  *(v10 + 192) = v57;
  *(v10 + 200) = v48;

  if (v48)
  {
    goto LABEL_4;
  }

  v58 = *(v57 + 16);
  *(v10 + 208) = v58;
  if (v58)
  {
    v59 = *(v10 + 56);
    v60 = *(v10 + 64);
    v61 = *(v60 + 16);
    *(v10 + 332) = *(v60 + 80);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_62_0(v62);
    v63 = OUTLINED_FUNCTION_13_0();
    v61(v63);
    v64 = swift_task_alloc();
    *(v10 + 240) = v64;
    *v64 = v10;
    OUTLINED_FUNCTION_5_0(v64);
    OUTLINED_FUNCTION_30_0();

    return sub_231E81E38();
  }

  if (qword_280D93CC8 != -1)
  {
    OUTLINED_FUNCTION_11_0();
  }

  v66 = sub_2320ED6E0();
  *(v10 + 248) = v66;
  OUTLINED_FUNCTION_7_0();
  v69 = sub_231E76C78(v67, v68);
  OUTLINED_FUNCTION_55_0(v69);
  swift_getKeyPath();
  v70 = OUTLINED_FUNCTION_2_0();
  v74 = sub_231E74EA0(v70, v71, v72, v73);
  OUTLINED_FUNCTION_58_0(v74);
  if (v66)
  {
LABEL_4:
    OUTLINED_FUNCTION_52_0();

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_30_0();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
  }

  OUTLINED_FUNCTION_71_0();
  if (v75)
  {
    OUTLINED_FUNCTION_39_0();
    *(v10 + 336) = v76;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_38_0(v77);
    v78 = OUTLINED_FUNCTION_13_0();
    v19(v78);
    v79 = swift_task_alloc();
    v80 = OUTLINED_FUNCTION_67_0(v79);
    *v80 = v81;
    OUTLINED_FUNCTION_1_0(v80);
    OUTLINED_FUNCTION_30_0();

    return sub_231E82320();
  }

  else
  {

    v83 = swift_task_alloc();
    v84 = OUTLINED_FUNCTION_66_0(v83);
    *v84 = v85;
    OUTLINED_FUNCTION_3_0(v84);
    OUTLINED_FUNCTION_30_0();

    return sub_231E8190C();
  }
}

uint64_t sub_231E72964()
{
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_28_0();
  v2 = v1[30];
  v3 = v1[9];
  v4 = v1[8];
  v5 = v1[7];
  v6 = v1[3];
  v7 = *v0;
  OUTLINED_FUNCTION_8_0();
  *v8 = v7;

  v9 = OUTLINED_FUNCTION_32_0();
  v10(v9);
  v11 = OUTLINED_FUNCTION_42_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_231E72AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_47_0();
  v11 = *(v10 + 232);
  v12 = *(v10 + 208);
  OUTLINED_FUNCTION_68_0();
  if (!v14)
  {
    v37 = *(v10 + 216);
    v36 = *(v10 + 224);
    v38 = *(v10 + 332);
    v39 = *(v10 + 64);
LABEL_7:
    *(v10 + 232) = v13;
    v40 = *(v10 + 192);
    v41 = *(v10 + 72);
    v42 = *(v10 + 56);
    OUTLINED_FUNCTION_9_0();
    v36();
    v43 = swift_task_alloc();
    *(v10 + 240) = v43;
    *v43 = v10;
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_30_0();

    return sub_231E81E38();
  }

  v15 = *(v10 + 192);

  v16 = *(v10 + 192);
  v17 = *(v10 + 200);
  v18 = *(v10 + 176);
  v19 = *(v10 + 184);
  v21 = *(v10 + 16);
  v20 = *(v10 + 24);
  swift_getKeyPath();
  v22 = OUTLINED_FUNCTION_12_0();
  v26 = sub_231E748E8(v22, v23, v24, v25);
  *(v10 + 192) = v26;
  *(v10 + 200) = v17;

  if (v17)
  {
    goto LABEL_4;
  }

  v45 = *(v26 + 16);
  *(v10 + 208) = v45;
  if (v45)
  {
    v46 = *(v10 + 64);
    *(v10 + 332) = *(v46 + 80);
    *(v10 + 216) = *(v46 + 72);
    v36 = *(v46 + 16);
    *(v10 + 224) = v36;

    v13 = 0;
    goto LABEL_7;
  }

  if (qword_280D93CC8 != -1)
  {
    OUTLINED_FUNCTION_11_0();
  }

  v47 = sub_2320ED6E0();
  *(v10 + 248) = v47;
  OUTLINED_FUNCTION_7_0();
  v50 = sub_231E76C78(v48, v49);
  OUTLINED_FUNCTION_55_0(v50);
  swift_getKeyPath();
  v51 = OUTLINED_FUNCTION_2_0();
  v55 = sub_231E74EA0(v51, v52, v53, v54);
  OUTLINED_FUNCTION_58_0(v55);
  if (v47)
  {
LABEL_4:
    OUTLINED_FUNCTION_52_0();

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_30_0();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_71_0();
    if (v56)
    {
      OUTLINED_FUNCTION_39_0();
      *(v10 + 336) = v57;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_38_0(v58);
      v59 = OUTLINED_FUNCTION_13_0();
      v19(v59);
      v60 = swift_task_alloc();
      v61 = OUTLINED_FUNCTION_67_0(v60);
      *v61 = v62;
      OUTLINED_FUNCTION_1_0(v61);
      OUTLINED_FUNCTION_30_0();

      return sub_231E82320();
    }

    else
    {

      v64 = swift_task_alloc();
      v65 = OUTLINED_FUNCTION_66_0(v64);
      *v65 = v66;
      OUTLINED_FUNCTION_3_0(v65);
      OUTLINED_FUNCTION_30_0();

      return sub_231E8190C();
    }
  }
}

uint64_t sub_231E72D5C()
{
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_28_0();
  v2 = v1[39];
  v3 = v1[6];
  v4 = v1[5];
  v5 = v1[4];
  v6 = v1[3];
  v7 = *v0;
  OUTLINED_FUNCTION_8_0();
  *v8 = v7;

  v9 = OUTLINED_FUNCTION_32_0();
  v10(v9);
  v11 = OUTLINED_FUNCTION_42_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_231E72EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_47_0();
  v11 = *(v10 + 304);
  v12 = *(v10 + 280);
  OUTLINED_FUNCTION_68_0();
  if (!v14)
  {
    v36 = *(v10 + 288);
    v35 = *(v10 + 296);
    v37 = *(v10 + 336);
    v38 = *(v10 + 40);
LABEL_7:
    *(v10 + 304) = v13;
    v39 = *(v10 + 264);
    v40 = *(v10 + 48);
    v41 = *(v10 + 32);
    OUTLINED_FUNCTION_9_0();
    v35();
    v42 = swift_task_alloc();
    v43 = OUTLINED_FUNCTION_67_0(v42);
    *v43 = v44;
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_30_0();

    return sub_231E82320();
  }

  v15 = *(v10 + 264);

  v16 = *(v10 + 264);
  v17 = *(v10 + 272);
  v18 = *(v10 + 248);
  v19 = *(v10 + 256);
  v21 = *(v10 + 16);
  v20 = *(v10 + 24);
  swift_getKeyPath();
  v22 = OUTLINED_FUNCTION_12_0();
  *(v10 + 264) = sub_231E74EA0(v22, v23, v24, v25);
  *(v10 + 272) = v17;

  if (v17)
  {
    OUTLINED_FUNCTION_52_0();

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_30_0();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_71_0();
    if (v46)
    {
      v47 = *(v10 + 40);
      *(v10 + 336) = *(v47 + 80);
      *(v10 + 288) = *(v47 + 72);
      v35 = *(v47 + 16);
      *(v10 + 296) = v35;

      v13 = 0;
      goto LABEL_7;
    }

    v48 = swift_task_alloc();
    v49 = OUTLINED_FUNCTION_66_0(v48);
    *v49 = v50;
    OUTLINED_FUNCTION_3_0(v49);
    OUTLINED_FUNCTION_30_0();

    return sub_231E8190C();
  }
}

uint64_t sub_231E73060()
{
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_28_0();
  v2 = v1[40];
  v3 = v1[12];
  v4 = v1[9];
  v5 = v1[6];
  v6 = *v0;
  OUTLINED_FUNCTION_8_0();
  *v7 = v6;

  OUTLINED_FUNCTION_19();

  return v8();
}

uint64_t sub_231E731A0()
{
  OUTLINED_FUNCTION_22_0();
  v1[8] = v0;
  v1[9] = *v0;
  v2 = sub_2320ED5F0();
  v1[10] = v2;
  OUTLINED_FUNCTION_14_0(v2);
  v1[11] = v3;
  v5 = *(v4 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_43_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231E73280()
{
  v2 = v0[8];
  v3 = *(v2 + 112);
  if (!v3)
  {
    v4 = sub_231E71768();
    v5 = *(v2 + 112);
    *(v2 + 112) = v4;

    v3 = *(v2 + 112);
    if (!v3)
    {
      if (qword_280D93CA8 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v54 = sub_2320EDD40();
      OUTLINED_FUNCTION_49_0(v54, qword_280D9DAA8);
      v9 = sub_2320EDD20();
      v55 = sub_2320EDE80();
      if (OUTLINED_FUNCTION_37_0(v55))
      {
        v56 = OUTLINED_FUNCTION_48_0();
        OUTLINED_FUNCTION_44_0(v56);
        OUTLINED_FUNCTION_18_0(&dword_231E60000, v57, v58, "SGTextUnderstandingObserver: failed to create importer.");
        OUTLINED_FUNCTION_26_0();
      }

      goto LABEL_10;
    }

    v2 = v0[8];
  }

  v0[14] = v3;
  v6 = OBJC_IVAR____TtC24CoreSuggestionsInternals25TextUnderstandingObserver_delayedDeletionNotificationInProgress;
  if (*(v2 + OBJC_IVAR____TtC24CoreSuggestionsInternals25TextUnderstandingObserver_delayedDeletionNotificationInProgress) == 1)
  {
    v7 = qword_280D93CA8;

    if (v7 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v8 = sub_2320EDD40();
    OUTLINED_FUNCTION_49_0(v8, qword_280D9DAA8);
    v9 = sub_2320EDD20();
    v10 = sub_2320EDE70();
    if (OUTLINED_FUNCTION_34_0(v10))
    {
      v11 = OUTLINED_FUNCTION_48_0();
      OUTLINED_FUNCTION_46_0(v11);
      OUTLINED_FUNCTION_10_0();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
      OUTLINED_FUNCTION_24_0();
    }

LABEL_10:

    goto LABEL_17;
  }

  v18 = v0[12];
  v17 = v0[13];
  v19 = v0[10];
  v20 = v0[11];

  sub_2320ED5E0();
  v21 = OBJC_IVAR____TtC24CoreSuggestionsInternals25TextUnderstandingObserver_lastDeletionPostTime;
  OUTLINED_FUNCTION_59_0();
  v22 = OUTLINED_FUNCTION_57_0();
  v23(v22);
  sub_2320ED5A0();
  v24 = OUTLINED_FUNCTION_72_0();
  v21(v24);
  (v21)(v17, v19);
  if (v1 < 2.0)
  {
    if (qword_280D93CA8 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v25 = sub_2320EDD40();
    OUTLINED_FUNCTION_49_0(v25, qword_280D9DAA8);
    v26 = sub_2320EDD20();
    v27 = sub_2320EDE70();
    if (OUTLINED_FUNCTION_34_0(v27))
    {
      v28 = OUTLINED_FUNCTION_48_0();
      OUTLINED_FUNCTION_46_0(v28);
      OUTLINED_FUNCTION_10_0();
      _os_log_impl(v29, v30, v31, v32, v33, 2u);
      OUTLINED_FUNCTION_24_0();
    }

    v34 = v0[8];
    v35 = v0[9];

    *(v2 + v6) = 1;
    v36 = *(v34 + 120);
    v37 = swift_allocObject();
    *(v37 + 16) = v34;
    *(v37 + 24) = v35;

    sub_2320ED640();

LABEL_17:
    v39 = v0[12];
    v38 = v0[13];

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_56_0();

    __asm { BRAA            X1, X16 }
  }

  if (qword_280D93CA8 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v42 = sub_2320EDD40();
  v0[16] = __swift_project_value_buffer(v42, qword_280D9DAA8);
  v43 = sub_2320EDD20();
  v44 = sub_2320EDE60();
  if (OUTLINED_FUNCTION_34_0(v44))
  {
    v45 = OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_46_0(v45);
    OUTLINED_FUNCTION_10_0();
    _os_log_impl(v46, v47, v48, v49, v50, 2u);
    OUTLINED_FUNCTION_24_0();
  }

  v51 = swift_task_alloc();
  v0[17] = v51;
  *v51 = v0;
  OUTLINED_FUNCTION_64_0(v51);
  OUTLINED_FUNCTION_56_0();

  return sub_231E73DD8();
}

uint64_t sub_231E73658()
{
  OUTLINED_FUNCTION_25_0();
  v2 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;
  v5 = *(v2 + 136);
  *v4 = *v1;
  *(v3 + 144) = v0;

  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_231E7384C;
  }

  else
  {
    v7 = sub_231E7377C;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

void sub_231E7377C()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[16];
  v2 = sub_2320EDD20();
  v3 = sub_2320EDE60();
  if (OUTLINED_FUNCTION_37_0(v3))
  {
    v4 = OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_44_0(v4);
    OUTLINED_FUNCTION_18_0(&dword_231E60000, v5, v6, "SGTextUnderstandingObserver: deletion handler finished");
    OUTLINED_FUNCTION_26_0();
  }

  OUTLINED_FUNCTION_20_0();

  OUTLINED_FUNCTION_29_0();
  v7 = OUTLINED_FUNCTION_16_0();
  v8(v7);
  swift_endAccess();
  v10 = v0[12];
  v9 = v0[13];

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_77_0();

  __asm { BRAA            X1, X16 }
}

void sub_231E7384C()
{
  OUTLINED_FUNCTION_51_0();
  v2 = v0[18];
  v3 = v0[16];
  v4 = v2;
  v5 = sub_2320EDD20();
  v6 = sub_2320EDE80();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[18];
  if (v7)
  {
    OUTLINED_FUNCTION_75_0();
    v9 = OUTLINED_FUNCTION_60_0();
    *v1 = 138412290;
    v10 = v8;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v11;
    *v9 = v11;
    OUTLINED_FUNCTION_10_0();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    sub_231E768C8(v9, &qword_27DD8D320, &qword_232106700);
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_24_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_20_0();

  OUTLINED_FUNCTION_29_0();
  v17 = OUTLINED_FUNCTION_16_0();
  v18(v17);
  swift_endAccess();
  v20 = v0[12];
  v19 = v0[13];

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_77_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_231E739A8(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_2320EDFA0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231E73A68, 0, 0);
}

uint64_t sub_231E73A68()
{
  OUTLINED_FUNCTION_25_0();
  v1 = *(v0 + 40);
  sub_2320EE0A0();
  sub_2320EE070();
  v2 = OUTLINED_FUNCTION_74_0(&unk_232106718);
  *(v0 + 48) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_31_0(v2);

  return v4(v3);
}

uint64_t sub_231E73B10()
{
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_23_0();
  *v3 = v2;
  v5 = v4[6];
  v6 = v4[5];
  v7 = v4[4];
  v8 = v4[3];
  v9 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v10 = v9;
  *(v11 + 56) = v0;

  (*(v7 + 8))(v6, v8);
  if (v0)
  {
    v12 = sub_231E76CCC;
  }

  else
  {
    v12 = sub_231E73C6C;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_231E73C6C()
{
  OUTLINED_FUNCTION_25_0();
  if (qword_280D93CA8 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_2320EDD40();
  OUTLINED_FUNCTION_49_0(v1, qword_280D9DAA8);
  v2 = sub_2320EDD20();
  v3 = sub_2320EDE70();
  if (OUTLINED_FUNCTION_37_0(v3))
  {
    v4 = OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_44_0(v4);
    OUTLINED_FUNCTION_18_0(&dword_231E60000, v5, v6, "SGTextUnderstandingObserver: re-posting distributedDeletion");
    OUTLINED_FUNCTION_26_0();
  }

  v7 = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_231E73D40, v7, 0);
}

uint64_t sub_231E73D40()
{
  OUTLINED_FUNCTION_22_0();
  *(*(v0 + 16) + OBJC_IVAR____TtC24CoreSuggestionsInternals25TextUnderstandingObserver_delayedDeletionNotificationInProgress) = 0;
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_231E76CC4;
  OUTLINED_FUNCTION_21_0();

  return sub_231E731A0();
}

uint64_t sub_231E73DD8()
{
  OUTLINED_FUNCTION_22_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2320EDCC0();
  v1[4] = v3;
  OUTLINED_FUNCTION_14_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_76_0();
  v7 = OUTLINED_FUNCTION_43_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231E73E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_47_0();
  if (qword_280D93CB0 != -1)
  {
    swift_once();
  }

  v12 = sub_2320ED710();
  *(v10 + 56) = v12;
  *(v10 + 64) = sub_231E76C78(&qword_280D93B10, MEMORY[0x277D20410]);
  v14 = *(v10 + 16);
  v13 = *(v10 + 24);
  swift_getKeyPath();
  v15 = OUTLINED_FUNCTION_2_0();
  v19 = sub_231E75458(v15, v16, v17, v18);
  *(v10 + 72) = v19;
  *(v10 + 80) = v12;

  if (v12)
  {
    v20 = *(v10 + 48);

    OUTLINED_FUNCTION_15_0();
LABEL_5:
    OUTLINED_FUNCTION_30_0();

    return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
  }

  v30 = *(v19 + 16);
  *(v10 + 88) = v30;
  if (!v30)
  {
    v38 = *(v10 + 48);

    OUTLINED_FUNCTION_19();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_39_0();
  *(v10 + 128) = v31;
  OUTLINED_FUNCTION_6_0();
  *(v10 + 96) = v32;
  *(v10 + 104) = v11;
  *(v10 + 112) = 0;
  v33 = *(v10 + 72);
  v34 = *(v10 + 48);

  v35 = OUTLINED_FUNCTION_13_0();
  v11(v35);
  v36 = swift_task_alloc();
  *(v10 + 120) = v36;
  *v36 = v10;
  OUTLINED_FUNCTION_4_0(v36);
  OUTLINED_FUNCTION_30_0();

  return sub_231E7FE1C();
}

uint64_t sub_231E74048()
{
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_28_0();
  v2 = v1[15];
  v3 = v1[6];
  v4 = v1[5];
  v5 = v1[4];
  v6 = v1[3];
  v7 = *v0;
  OUTLINED_FUNCTION_8_0();
  *v8 = v7;

  v9 = OUTLINED_FUNCTION_32_0();
  v10(v9);
  v11 = OUTLINED_FUNCTION_42_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_231E74194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_47_0();
  v11 = *(v10 + 112);
  v12 = *(v10 + 88);
  OUTLINED_FUNCTION_68_0();
  if (!v14)
  {
    v38 = *(v10 + 96);
    v37 = *(v10 + 104);
    v39 = *(v10 + 128);
    v40 = *(v10 + 40);
LABEL_8:
    *(v10 + 112) = v13;
    v41 = *(v10 + 72);
    v42 = *(v10 + 48);
    v43 = *(v10 + 32);
    OUTLINED_FUNCTION_9_0();
    v37();
    v44 = swift_task_alloc();
    *(v10 + 120) = v44;
    *v44 = v10;
    OUTLINED_FUNCTION_4_0(v44);
    OUTLINED_FUNCTION_30_0();

    return sub_231E7FE1C();
  }

  v15 = *(v10 + 72);

  v16 = *(v10 + 72);
  v17 = *(v10 + 80);
  v18 = *(v10 + 56);
  v19 = *(v10 + 64);
  v21 = *(v10 + 16);
  v20 = *(v10 + 24);
  swift_getKeyPath();
  v22 = OUTLINED_FUNCTION_12_0();
  v26 = sub_231E75458(v22, v23, v24, v25);
  *(v10 + 72) = v26;
  *(v10 + 80) = v17;

  if (v17)
  {
    v27 = *(v10 + 48);

    OUTLINED_FUNCTION_15_0();
  }

  else
  {
    v46 = *(v26 + 16);
    *(v10 + 88) = v46;
    if (v46)
    {
      v47 = *(v10 + 40);
      *(v10 + 128) = *(v47 + 80);
      *(v10 + 96) = *(v47 + 72);
      v37 = *(v47 + 16);
      *(v10 + 104) = v37;

      v13 = 0;
      goto LABEL_8;
    }

    v48 = *(v10 + 48);

    OUTLINED_FUNCTION_19();
  }

  OUTLINED_FUNCTION_30_0();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
}

uint64_t sub_231E74330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v52 = a1;
  v53 = a2;
  v49 = *v4;
  v6 = sub_2320ED5F0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TextUnderstandingBookmarks();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v54 = v15;
  *(v15 + 16) = MEMORY[0x277D84F90];
  v16 = v15 + 16;
  sub_231E84C7C();
  v50 = a4;
  v17 = swift_readAtKeyPath();
  v19 = *v18;
  v17(v56, 0);
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v21 = [objc_allocWithZone(MEMORY[0x277CF1A50]) init];
  sub_2320ED570();
  v22 = sub_2320ED5B0();
  v23 = v6;
  v24 = v52;
  (*(v7 + 8))(v10, v23);
  [v21 setStartDate_];

  [v21 setMaxEvents_];
  v25 = v21;
  v26 = v24;
  v27 = v51;
  sub_2320ED730();
  if (v27)
  {
    sub_231E76158(v14);
  }

  else
  {
    v51 = 0;
    v47[1] = v16;
    v48 = v25;

    __swift_project_boxed_opaque_existential_1(v56, v56[3]);
    v28 = swift_allocObject();
    v29 = v49;
    *(v28 + 16) = v49;
    v30 = swift_allocObject();
    v30[2] = v19;
    v30[3] = v54;
    v30[4] = v20;
    v30[5] = v29;

    sub_2320EDD50();

    swift_beginAccess();
    v55 = *(v20 + 16);
    swift_setAtWritableKeyPath();
    v31 = v14;
    if (qword_280D93CA8 != -1)
    {
      swift_once();
    }

    v32 = sub_2320EDD40();
    __swift_project_value_buffer(v32, qword_280D9DAA8);
    v33 = v54;

    v34 = sub_2320EDD20();
    v35 = sub_2320EDEA0();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v55 = v50;
      *v36 = 134218242;
      swift_beginAccess();
      *(v36 + 4) = *(*(v33 + 16) + 16);

      *(v36 + 12) = 2080;
      v49 = v31;
      v37 = v35;
      v38 = sub_2320ED720();
      v39 = [v38 streamIdentifier];

      v40 = sub_2320EDDB0();
      v42 = v41;

      v43 = sub_231E83810(v40, v42, &v55);

      *(v36 + 14) = v43;
      _os_log_impl(&dword_231E60000, v34, v37, "SGTextUnderstandingObserver: importEventBatch returning %ld events from %s", v36, 0x16u);
      v44 = v50;
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x2383814F0](v44, -1, -1);
      MEMORY[0x2383814F0](v36, -1, -1);

      v45 = v49;
    }

    else
    {

      v45 = v31;
    }

    sub_231E76158(v45);
    swift_beginAccess();
    v26 = *(v33 + 16);

    __swift_destroy_boxed_opaque_existential_0(v56);
  }

  return v26;
}

uint64_t sub_231E748E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v52 = a1;
  v53 = a2;
  v49 = *v4;
  v6 = sub_2320ED5F0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TextUnderstandingBookmarks();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v54 = v15;
  *(v15 + 16) = MEMORY[0x277D84F90];
  v16 = v15 + 16;
  sub_231E84C7C();
  v50 = a4;
  v17 = swift_readAtKeyPath();
  v19 = *v18;
  v17(v56, 0);
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v21 = [objc_allocWithZone(MEMORY[0x277CF1A50]) init];
  sub_2320ED570();
  v22 = sub_2320ED5B0();
  v23 = v6;
  v24 = v52;
  (*(v7 + 8))(v10, v23);
  [v21 setStartDate_];

  [v21 setMaxEvents_];
  v25 = v21;
  v26 = v24;
  v27 = v51;
  sub_2320ED730();
  if (v27)
  {
    sub_231E76158(v14);
  }

  else
  {
    v51 = 0;
    v47[1] = v16;
    v48 = v25;

    __swift_project_boxed_opaque_existential_1(v56, v56[3]);
    v28 = swift_allocObject();
    v29 = v49;
    *(v28 + 16) = v49;
    v30 = swift_allocObject();
    v30[2] = v19;
    v30[3] = v54;
    v30[4] = v20;
    v30[5] = v29;

    sub_2320EDD50();

    swift_beginAccess();
    v55 = *(v20 + 16);
    swift_setAtWritableKeyPath();
    v31 = v14;
    if (qword_280D93CA8 != -1)
    {
      swift_once();
    }

    v32 = sub_2320EDD40();
    __swift_project_value_buffer(v32, qword_280D9DAA8);
    v33 = v54;

    v34 = sub_2320EDD20();
    v35 = sub_2320EDEA0();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v55 = v50;
      *v36 = 134218242;
      swift_beginAccess();
      *(v36 + 4) = *(*(v33 + 16) + 16);

      *(v36 + 12) = 2080;
      v49 = v31;
      v37 = v35;
      v38 = sub_2320ED720();
      v39 = [v38 streamIdentifier];

      v40 = sub_2320EDDB0();
      v42 = v41;

      v43 = sub_231E83810(v40, v42, &v55);

      *(v36 + 14) = v43;
      _os_log_impl(&dword_231E60000, v34, v37, "SGTextUnderstandingObserver: importEventBatch returning %ld events from %s", v36, 0x16u);
      v44 = v50;
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x2383814F0](v44, -1, -1);
      MEMORY[0x2383814F0](v36, -1, -1);

      v45 = v49;
    }

    else
    {

      v45 = v31;
    }

    sub_231E76158(v45);
    swift_beginAccess();
    v26 = *(v33 + 16);

    __swift_destroy_boxed_opaque_existential_0(v56);
  }

  return v26;
}

uint64_t sub_231E74EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v52 = a1;
  v53 = a2;
  v49 = *v4;
  v6 = sub_2320ED5F0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TextUnderstandingBookmarks();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v54 = v15;
  *(v15 + 16) = MEMORY[0x277D84F90];
  v16 = v15 + 16;
  sub_231E84C7C();
  v50 = a4;
  v17 = swift_readAtKeyPath();
  v19 = *v18;
  v17(v56, 0);
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v21 = [objc_allocWithZone(MEMORY[0x277CF1A50]) init];
  sub_2320ED570();
  v22 = sub_2320ED5B0();
  v23 = v6;
  v24 = v52;
  (*(v7 + 8))(v10, v23);
  [v21 setStartDate_];

  [v21 setMaxEvents_];
  v25 = v21;
  v26 = v24;
  v27 = v51;
  sub_2320ED730();
  if (v27)
  {
    sub_231E76158(v14);
  }

  else
  {
    v51 = 0;
    v47[1] = v16;
    v48 = v25;

    __swift_project_boxed_opaque_existential_1(v56, v56[3]);
    v28 = swift_allocObject();
    v29 = v49;
    *(v28 + 16) = v49;
    v30 = swift_allocObject();
    v30[2] = v19;
    v30[3] = v54;
    v30[4] = v20;
    v30[5] = v29;

    sub_2320EDD50();

    swift_beginAccess();
    v55 = *(v20 + 16);
    swift_setAtWritableKeyPath();
    v31 = v14;
    if (qword_280D93CA8 != -1)
    {
      swift_once();
    }

    v32 = sub_2320EDD40();
    __swift_project_value_buffer(v32, qword_280D9DAA8);
    v33 = v54;

    v34 = sub_2320EDD20();
    v35 = sub_2320EDEA0();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v55 = v50;
      *v36 = 134218242;
      swift_beginAccess();
      *(v36 + 4) = *(*(v33 + 16) + 16);

      *(v36 + 12) = 2080;
      v49 = v31;
      v37 = v35;
      v38 = sub_2320ED720();
      v39 = [v38 streamIdentifier];

      v40 = sub_2320EDDB0();
      v42 = v41;

      v43 = sub_231E83810(v40, v42, &v55);

      *(v36 + 14) = v43;
      _os_log_impl(&dword_231E60000, v34, v37, "SGTextUnderstandingObserver: importEventBatch returning %ld events from %s", v36, 0x16u);
      v44 = v50;
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x2383814F0](v44, -1, -1);
      MEMORY[0x2383814F0](v36, -1, -1);

      v45 = v49;
    }

    else
    {

      v45 = v31;
    }

    sub_231E76158(v45);
    swift_beginAccess();
    v26 = *(v33 + 16);

    __swift_destroy_boxed_opaque_existential_0(v56);
  }

  return v26;
}

uint64_t sub_231E75458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v52 = a1;
  v53 = a2;
  v49 = *v4;
  v6 = sub_2320ED5F0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TextUnderstandingBookmarks();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v54 = v15;
  *(v15 + 16) = MEMORY[0x277D84F90];
  v16 = v15 + 16;
  sub_231E84C7C();
  v50 = a4;
  v17 = swift_readAtKeyPath();
  v19 = *v18;
  v17(v56, 0);
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v21 = [objc_allocWithZone(MEMORY[0x277CF1A50]) init];
  sub_2320ED570();
  v22 = sub_2320ED5B0();
  v23 = v6;
  v24 = v52;
  (*(v7 + 8))(v10, v23);
  [v21 setStartDate_];

  [v21 setMaxEvents_];
  v25 = v21;
  v26 = v24;
  v27 = v51;
  sub_2320ED730();
  if (v27)
  {
    sub_231E76158(v14);
  }

  else
  {
    v51 = 0;
    v47[1] = v16;
    v48 = v25;

    __swift_project_boxed_opaque_existential_1(v56, v56[3]);
    v28 = swift_allocObject();
    v29 = v49;
    *(v28 + 16) = v49;
    v30 = swift_allocObject();
    v30[2] = v19;
    v30[3] = v54;
    v30[4] = v20;
    v30[5] = v29;

    sub_2320EDD50();

    swift_beginAccess();
    v55 = *(v20 + 16);
    swift_setAtWritableKeyPath();
    v31 = v14;
    if (qword_280D93CA8 != -1)
    {
      swift_once();
    }

    v32 = sub_2320EDD40();
    __swift_project_value_buffer(v32, qword_280D9DAA8);
    v33 = v54;

    v34 = sub_2320EDD20();
    v35 = sub_2320EDEA0();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v55 = v50;
      *v36 = 134218242;
      swift_beginAccess();
      *(v36 + 4) = *(*(v33 + 16) + 16);

      *(v36 + 12) = 2080;
      v49 = v31;
      v37 = v35;
      v38 = sub_2320ED720();
      v39 = [v38 streamIdentifier];

      v40 = sub_2320EDDB0();
      v42 = v41;

      v43 = sub_231E83810(v40, v42, &v55);

      *(v36 + 14) = v43;
      _os_log_impl(&dword_231E60000, v34, v37, "SGTextUnderstandingObserver: importEventBatch returning %ld events from %s", v36, 0x16u);
      v44 = v50;
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x2383814F0](v44, -1, -1);
      MEMORY[0x2383814F0](v36, -1, -1);

      v45 = v49;
    }

    else
    {

      v45 = v31;
    }

    sub_231E76158(v45);
    swift_beginAccess();
    v26 = *(v33 + 16);

    __swift_destroy_boxed_opaque_existential_0(v56);
  }

  return v26;
}

void sub_231E75A10(void **a1)
{
  v1 = *a1;
  if (!*a1)
  {
    if (qword_280D93CA8 != -1)
    {
      swift_once();
    }

    v9 = sub_2320EDD40();
    __swift_project_value_buffer(v9, qword_280D9DAA8);
    oslog = sub_2320EDD20();
    v10 = sub_2320EDE60();
    if (!os_log_type_enabled(oslog, v10))
    {
      goto LABEL_11;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_231E60000, oslog, v10, "SGTextUnderstandingObserver: importEventBatch finished", v11, 2u);
    v8 = v11;
LABEL_10:
    MEMORY[0x2383814F0](v8, -1, -1);
LABEL_11:
    v12 = oslog;

    goto LABEL_13;
  }

  if (qword_280D93CA8 != -1)
  {
    swift_once();
  }

  v2 = sub_2320EDD40();
  __swift_project_value_buffer(v2, qword_280D9DAA8);
  v3 = v1;
  oslog = sub_2320EDD20();
  v4 = sub_2320EDE80();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_231E60000, oslog, v4, "SGTextUnderstandingObserver: importEventBatch failed: %@", v5, 0xCu);
    sub_231E768C8(v6, &qword_27DD8D320, &qword_232106700);
    MEMORY[0x2383814F0](v6, -1, -1);
    v8 = v5;
    goto LABEL_10;
  }

  v12 = v1;

LABEL_13:
}

void sub_231E75C38(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, void (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a8)(void))
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2B0, &qword_232106810);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v40 - v18;
  a6(v17);
  v20 = sub_2320ED5F0();
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_231E768C8(v19, &qword_27DD8D2B0, &qword_232106810);
    if (qword_280D93CA8 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v21 = sub_2320EDD40();
    OUTLINED_FUNCTION_49_0(v21, qword_280D9DAA8);
    v22 = sub_2320EDD20();
    v23 = sub_2320EDE80();
    if (!OUTLINED_FUNCTION_61_0(v23))
    {
      goto LABEL_13;
    }

    v24 = OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_44_0(v24);
    OUTLINED_FUNCTION_54_0();
    v30 = 2;
    goto LABEL_12;
  }

  sub_2320ED580();
  v32 = v31;
  (*(*(v20 - 8) + 8))(v19, v20);
  if (v32 > a4)
  {
    swift_beginAccess();
    sub_231E767C0(a7);
    v33 = *(*(a2 + 16) + 16);
    sub_231E7681C(v33, a7);
    v34 = *(a2 + 16);
    *(v34 + 16) = v33 + 1;
    v35 = a8(0);
    OUTLINED_FUNCTION_33_0(v35);
    (*(v36 + 16))(v34 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v33, a1);
    *(a2 + 16) = v34;
    swift_endAccess();
    swift_beginAccess();
    *(a3 + 16) = v32;
    return;
  }

  if (qword_280D93CA8 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v37 = sub_2320EDD40();
  OUTLINED_FUNCTION_49_0(v37, qword_280D9DAA8);
  v22 = sub_2320EDD20();
  v38 = sub_2320EDE70();
  if (OUTLINED_FUNCTION_61_0(v38))
  {
    v39 = OUTLINED_FUNCTION_75_0();
    *v39 = 134217984;
    *(v39 + 4) = v32;
    OUTLINED_FUNCTION_54_0();
    v30 = 12;
LABEL_12:
    _os_log_impl(v25, v26, v27, v28, v29, v30);
    OUTLINED_FUNCTION_26_0();
  }

LABEL_13:
}

uint64_t sub_231E75F1C()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  v3 = OBJC_IVAR____TtC24CoreSuggestionsInternals25TextUnderstandingObserver_lastResultsPostTime;
  v4 = sub_2320ED5F0();
  OUTLINED_FUNCTION_33_0(v4);
  v6 = *(v5 + 8);
  v6(&v3[v0], v4);
  v6(OBJC_IVAR____TtC24CoreSuggestionsInternals25TextUnderstandingObserver_lastDeletionPostTime + v0, v4);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_231E75FBC()
{
  sub_231E75F1C();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for TextUnderstandingObserver()
{
  result = qword_280D93810;
  if (!qword_280D93810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_231E76048()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_65_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_50_0(v3);

  return sub_231E70558();
}

uint64_t sub_231E760D0()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_65_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_50_0(v3);

  return sub_231E7083C();
}

uint64_t sub_231E76158(uint64_t a1)
{
  v2 = type metadata accessor for TextUnderstandingBookmarks();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231E761E0()
{
  result = sub_2320ED5F0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_231E76344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_2320EDF90();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_231E76444, 0, 0);
}

uint64_t sub_231E76444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_47_0();
  v11 = v10[10];
  v12 = v10[11];
  v13 = v10[8];
  v14 = v10[9];
  v15 = v10[7];
  sub_2320EDFA0();
  sub_231E76C78(&qword_280D93700, MEMORY[0x277D85928]);
  sub_2320EE050();
  sub_231E76C78(&qword_280D93708, MEMORY[0x277D858F8]);
  sub_2320EDFB0();
  v16 = *(v14 + 8);
  v10[12] = v16;
  v10[13] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v11, v13);
  v17 = *(MEMORY[0x277D85A58] + 4);
  v18 = swift_task_alloc();
  v10[14] = v18;
  *v18 = v10;
  v18[1] = sub_231E765C0;
  v19 = v10[11];
  v20 = v10[7];
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822008C8](v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_231E765C0()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_28_0();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;
  v6 = v5[14];
  v7 = v5[13];
  v8 = v5[12];
  v9 = v5[11];
  v10 = v5[8];
  v11 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v12 = v11;
  v3[15] = v0;

  v8(v9, v10);
  if (!v0)
  {
    v18 = v3[10];
    v17 = v3[11];

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_77_0();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_77_0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_231E7675C()
{
  OUTLINED_FUNCTION_22_0();
  v2 = v0[10];
  v1 = v0[11];

  OUTLINED_FUNCTION_19();
  v4 = v0[15];

  return v3();
}

uint64_t sub_231E767C0(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_231E7681C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_231E768C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_33_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_231E76920()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_65_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_50_0(v4);

  return sub_231E739A8(v1);
}

uint64_t objectdestroy_45Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_231E76AF4()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_65_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_50_0(v4);

  return sub_231E71850(v1);
}

uint64_t sub_231E76B80()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_28_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;

  OUTLINED_FUNCTION_19();

  return v5();
}

uint64_t sub_231E76C6C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_231E70D2C();
}

uint64_t sub_231E76C78(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_0(uint64_t a1)
{
  *(a1 + 8) = sub_231E72D5C;
  v2 = *(v1 + 16);
  return *(v1 + 48);
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t result)
{
  *(result + 8) = sub_231E73060;
  v2 = *(v1 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 16);
  return *(v2 + 48);
}

uint64_t OUTLINED_FUNCTION_5_0(uint64_t a1)
{
  *(a1 + 8) = sub_231E72964;
  v2 = *(v1 + 16);
  return *(v1 + 72);
}

uint64_t OUTLINED_FUNCTION_15_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_18_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_20_0()
{
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[8];

  return sub_2320ED5E0();
}

void OUTLINED_FUNCTION_24_0()
{

  JUMPOUT(0x2383814F0);
}

void OUTLINED_FUNCTION_26_0()
{

  JUMPOUT(0x2383814F0);
}

uint64_t OUTLINED_FUNCTION_29_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_31_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 40);
  return v2;
}

BOOL OUTLINED_FUNCTION_34_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_36_0()
{

  return swift_once();
}

BOOL OUTLINED_FUNCTION_37_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_38_0@<X0>(uint64_t a1@<X8>)
{
  v1[36] = a1;
  v1[37] = v2;
  v1[38] = 0;
  v4 = v1[33];
  v5 = v1[6];
}

void OUTLINED_FUNCTION_39_0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v2 + 16);
  v4 = *(v2 + 80);
}

double OUTLINED_FUNCTION_40_0()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return result;
}

void OUTLINED_FUNCTION_45_0()
{

  JUMPOUT(0x2383814F0);
}

uint64_t OUTLINED_FUNCTION_48_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_52_0()
{
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[6];
}

uint64_t OUTLINED_FUNCTION_55_0(uint64_t result)
{
  v1[32] = result;
  v3 = v1[2];
  v2 = v1[3];
  return result;
}

uint64_t OUTLINED_FUNCTION_58_0(uint64_t a1)
{
  *(v2 + 264) = a1;
  *(v2 + 272) = v1;
}

uint64_t OUTLINED_FUNCTION_59_0()
{
  *(v0 + 120) = v1;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_60_0()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_61_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_62_0@<X0>(uint64_t a1@<X8>)
{
  v1[27] = a1;
  v1[28] = v2;
  v1[29] = 0;
  v4 = v1[24];
  v5 = v1[9];
}

uint64_t OUTLINED_FUNCTION_63_0()
{

  return sub_2320ED680();
}

uint64_t OUTLINED_FUNCTION_64_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 64);
  return v2;
}

uint64_t OUTLINED_FUNCTION_74_0@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_75_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_76_0()
{

  return swift_task_alloc();
}

id sub_231E77324(char *a1)
{
  v145 = sub_2320EDC60();
  v2 = OUTLINED_FUNCTION_13(v145);
  v135 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  v143 = v6;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_58();
  v139 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D330, &qword_2321067A8);
  v10 = OUTLINED_FUNCTION_100(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8();
  v136 = v13;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_58();
  v137 = v15;
  v16 = sub_2320EDD10();
  v17 = OUTLINED_FUNCTION_13(v16);
  v133 = v18;
  v134 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_41_0();
  v23 = v22 - v21;
  v24 = sub_2320EDBB0();
  v25 = OUTLINED_FUNCTION_13(v24);
  v141 = v26;
  v142 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_8();
  v138 = v29;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v30);
  v32 = v121 - v31;
  v144 = sub_2320EDD40();
  v33 = OUTLINED_FUNCTION_13(v144);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_41_0();
  v40 = (v39 - v38);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2B0, &qword_232106810);
  v42 = OUTLINED_FUNCTION_100(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  v46 = v121 - v45;
  v47 = sub_2320ED5F0();
  v48 = OUTLINED_FUNCTION_13(v47);
  v50 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_41_0();
  v55 = v54 - v53;
  sub_2320EDAD0();
  if (__swift_getEnumTagSinglePayload(v46, 1, v47) == 1)
  {
    sub_231E78DE8(v46, &qword_27DD8D2B0, &qword_232106810);
    if (qword_280D93948 != -1)
    {
      OUTLINED_FUNCTION_78();
    }

    v56 = v144;
    v57 = __swift_project_value_buffer(v144, qword_280D9DA90);
    v58 = v40;
    (*(v35 + 16))(v40, v57, v56);
    v59 = v141;
    v60 = v142;
    v61 = *(v141 + 16);
    v61(v32, a1, v142);
    v145 = v58;
    v62 = sub_2320EDD20();
    v63 = sub_2320EDE80();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v146 = v143;
      *v64 = 136315138;
      LODWORD(v139) = v63;
      v65 = v142;
      v61(v138, v32, v142);
      v66 = sub_2320EDDC0();
      v68 = v67;
      v140 = a1;
      v69 = *(v59 + 8);
      v69(v32, v65);
      v70 = sub_231E83810(v66, v68, &v146);

      *(v64 + 4) = v70;
      _os_log_impl(&dword_231E60000, v62, v139, "SGPipelineEntity+TUImporter: failed to initialize SGPipelineEntity, %s is missing relevanceDate", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v143);
      OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_45_0();

      v69(v140, v65);
      (*(v35 + 8))(v145, v144);
    }

    else
    {

      v75 = *(v59 + 8);
      v75(a1, v60);
      v75(v32, v60);
      (*(v35 + 8))(v145, v56);
    }

    return 0;
  }

  else
  {
    v71 = *(v50 + 32);
    v138 = v55;
    v71(v55, v46, v47);
    sub_2320EDBA0();
    v72 = v47;
    v74 = v135;
    if (v73)
    {
      v130 = sub_2320EDDA0();
    }

    else
    {
      v130 = 0;
    }

    v77 = v145;
    v78 = v143;
    sub_2320EDAA0();
    sub_2320EDD00();
    (*(v133 + 8))(v23, v134);
    v134 = sub_2320EDDA0();

    sub_2320EDAC0();
    if (v79)
    {
      v133 = sub_2320EDDA0();
    }

    else
    {
      v133 = 0;
    }

    sub_2320EDB10();
    v129 = sub_2320EDE10();

    v80 = sub_2320EDA90();
    OUTLINED_FUNCTION_8_1(v80, v81);
    v128 = sub_2320EDDA0();

    sub_2320EDB50();
    if (v82)
    {
      v127 = sub_2320EDDA0();
    }

    else
    {
      v127 = 0;
    }

    v83 = sub_2320EDB90();
    OUTLINED_FUNCTION_8_1(v83, v84);
    v126 = sub_2320EDDA0();

    sub_2320EDB80();
    if (v85)
    {
      v125 = sub_2320EDDA0();
    }

    else
    {
      v125 = 0;
    }

    v86 = v74;
    v135 = sub_2320ED5B0();
    v87 = sub_2320EDB60();
    v88 = v137;
    sub_231E77DF0(v87, v137);

    v89 = v136;
    sub_231E78D78(v88, v136);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v89, 1, v77);
    v91 = v139;
    if (EnumTagSinglePayload == 1)
    {
      v136 = 0;
    }

    else
    {
      (*(v86 + 4))(v139, v89, v77);
      sub_231E78E48();
      (*(v86 + 2))(v78, v91, v77);
      v136 = sub_231E67FF8(v78);
      (*(v86 + 1))(v91, v77);
    }

    sub_231E78DE8(v88, &qword_27DD8D330, &qword_2321067A8);
    v92 = sub_2320EDB70();
    OUTLINED_FUNCTION_8_1(v92, v93);
    v137 = sub_2320EDDA0();

    v94 = sub_2320EDAB0();
    v124 = sub_2320EDB30();
    v123 = sub_2320EDAF0();
    v95 = sub_2320EDB00();
    v96 = *(v95 + 16);
    v140 = a1;
    v131 = v50;
    v132 = v72;
    if (v96)
    {
      v122 = v94;
      v146 = MEMORY[0x277D84F90];
      sub_2320EDF60();
      v144 = sub_231E78E48();
      v99 = *(v86 + 2);
      v97 = v86 + 16;
      v98 = v99;
      v100 = (v97[64] + 32) & ~v97[64];
      v121[1] = v95;
      v101 = v95 + v100;
      v143 = *(v97 + 7);
      v102 = v139;
      do
      {
        v98(v102, v101, v77);
        v98(v78, v102, v77);
        sub_231E67FF8(v78);
        (*(v97 - 1))(v102, v77);
        sub_2320EDF40();
        v103 = *(v146 + 16);
        sub_2320EDF70();
        v77 = v145;
        sub_2320EDF80();
        sub_2320EDF50();
        v101 += v143;
        --v96;
      }

      while (v96);

      LOBYTE(v94) = v122;
    }

    else
    {
    }

    v104 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    sub_231E78E48();
    v105 = sub_2320EDE10();
    v144 = v105;

    sub_2320EDAE0();
    v106 = sub_2320EDE10();
    v145 = v106;

    v119 = v105;
    v120 = v106;
    BYTE2(v118) = v123 & 1;
    BYTE1(v118) = v124 & 1;
    LOBYTE(v118) = v94 & 1;
    v107 = v136;
    v108 = v125;
    v109 = v126;
    v110 = v104;
    v112 = v129;
    v111 = v130;
    v114 = v133;
    v113 = v134;
    v115 = v127;
    v116 = v128;
    v76 = [v110 initWithMessageId:v130 uniqueIdentifier:v134 appleMailMessageId:v133 mailboxIdentifiers:v129 accountType:v128 mailingList:v127 source:v126 subject:v125 date:v135 author:v136 textContentSnippet:v137 isSent:v118 isPartiallyDownloaded:v119 hasInhumanHeaders:v120 primaryRecipients:? accountHandles:?];

    (*(v141 + 8))(v140, v142);
    (*(v131 + 8))(v138, v132);
  }

  return v76;
}

uint64_t sub_231E77DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_2320EDC60();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

id sub_231E77E98(uint64_t a1)
{
  v119 = sub_2320EDC60();
  v2 = OUTLINED_FUNCTION_13(v119);
  v113 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  v111 = v6;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_58();
  v112 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D330, &qword_2321067A8);
  v10 = OUTLINED_FUNCTION_100(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8();
  v117 = v13;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_58();
  v122 = v15;
  v16 = sub_2320EDD10();
  v17 = OUTLINED_FUNCTION_13(v16);
  v114 = v18;
  v115 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v17);
  v23 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v108 - v24;
  v26 = sub_2320EDBB0();
  v27 = OUTLINED_FUNCTION_13(v26);
  v123 = v28;
  v124 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_8();
  v110 = v31;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v32);
  v34 = &v108 - v33;
  v121 = sub_2320EDD40();
  v35 = OUTLINED_FUNCTION_13(v121);
  v116 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_41_0();
  v41 = v40 - v39;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2B0, &qword_232106810);
  v43 = OUTLINED_FUNCTION_100(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  v47 = &v108 - v46;
  v48 = sub_2320ED5F0();
  v49 = OUTLINED_FUNCTION_13(v48);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_41_0();
  v56 = v55 - v54;
  sub_2320EDAD0();
  if (__swift_getEnumTagSinglePayload(v47, 1, v48) == 1)
  {
    sub_231E78DE8(v47, &qword_27DD8D2B0, &qword_232106810);
    if (qword_280D93948 != -1)
    {
      OUTLINED_FUNCTION_78();
    }

    v57 = v121;
    v58 = __swift_project_value_buffer(v121, qword_280D9DA90);
    v59 = v116;
    (*(v116 + 16))(v41, v58, v57);
    v60 = v123;
    v61 = *(v123 + 16);
    v62 = a1;
    v63 = a1;
    v64 = v124;
    v61(v34, v63, v124);
    v65 = sub_2320EDD20();
    v66 = sub_2320EDE80();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v122 = v62;
      v120 = v68;
      v125 = v68;
      *v67 = 136315138;
      v61(v110, v34, v64);
      v69 = sub_2320EDDC0();
      v70 = v64;
      v71 = v69;
      v73 = v72;
      v74 = *(v123 + 8);
      v74(v34, v70);
      v75 = sub_231E83810(v71, v73, &v125);

      *(v67 + 4) = v75;
      _os_log_impl(&dword_231E60000, v65, v66, "SGPipelineEntity+TUImporter: failed to initialize SGPipelineEntity, %s is missing relevanceDate", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v120);
      OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_45_0();

      v74(v122, v124);
    }

    else
    {

      v84 = *(v60 + 8);
      v84(v62, v64);
      v84(v34, v64);
    }

    (*(v59 + 8))(v41, v121);
    return 0;
  }

  else
  {
    v76 = *(v51 + 32);
    v121 = v48;
    v76(v56, v47, v48);
    sub_2320EDAA0();
    sub_2320EDD00();
    v77 = *(v114 + 8);
    v78 = v25;
    v79 = v115;
    v77(v78, v115);
    v116 = sub_2320EDDA0();

    sub_2320EDAA0();
    sub_2320EDCF0();
    v77(v23, v79);
    v80 = sub_2320EDDA0();

    sub_2320EDB80();
    v81 = a1;
    v109 = v51;
    v118 = v56;
    if (v82)
    {
      v83 = sub_2320EDDA0();
    }

    else
    {
      v83 = 0;
    }

    v86 = sub_2320EDB70();
    OUTLINED_FUNCTION_8_1(v86, v87);
    v88 = sub_2320EDDA0();

    v89 = sub_2320ED5B0();
    v90 = sub_2320EDB60();
    v91 = v122;
    sub_231E77DF0(v90, v122);

    v92 = v117;
    sub_231E78D78(v91, v117);
    v93 = v119;
    v94 = 0;
    if (__swift_getEnumTagSinglePayload(v92, 1, v119) != 1)
    {
      v96 = v112;
      v95 = v113;
      (*(v113 + 32))(v112, v92, v93);
      sub_231E78E48();
      v97 = v111;
      (*(v95 + 16))(v111, v96, v93);
      v94 = sub_231E67FF8(v97);
      (*(v95 + 8))(v96, v93);
    }

    sub_231E78DE8(v122, &qword_27DD8D330, &qword_2321067A8);
    sub_2320EDB20();
    if (v98)
    {
      v99 = sub_2320EDDA0();
    }

    else
    {
      v99 = 0;
    }

    sub_2320EDB40();
    v101 = v81;
    if (v100)
    {
      v102 = sub_2320EDDA0();
    }

    else
    {
      v102 = 0;
    }

    v103 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    LOBYTE(v107) = sub_2320EDAB0() & 1;
    v104 = v103;
    v105 = v116;
    v85 = [v104 initWithUniqueIdentifier:v116 source:v80 subject:v83 textContent:v88 date:v89 author:v94 authorNickname:v99 authorPhotoPath:v102 isSent:v107];

    (*(v123 + 8))(v101, v124);
    (*(v109 + 8))(v118, v121);
  }

  return v85;
}

id sub_231E78728(char *a1)
{
  v2 = sub_2320EDD10();
  v3 = OUTLINED_FUNCTION_13(v2);
  v75 = v4;
  v76 = v3;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v3);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v73 - v10;
  v12 = sub_2320EDBB0();
  v80 = OUTLINED_FUNCTION_13(v12);
  v81 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_8();
  v74 = v16;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v17);
  v19 = &v73 - v18;
  v79 = sub_2320EDD40();
  v20 = OUTLINED_FUNCTION_13(v79);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_41_0();
  v78 = v26 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2B0, &qword_232106810);
  v28 = OUTLINED_FUNCTION_100(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v73 - v31;
  v33 = sub_2320ED5F0();
  v34 = OUTLINED_FUNCTION_13(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_41_0();
  v41 = v40 - v39;
  sub_2320EDAD0();
  if (__swift_getEnumTagSinglePayload(v32, 1, v33) == 1)
  {
    sub_231E78DE8(v32, &qword_27DD8D2B0, &qword_232106810);
    if (qword_280D93948 != -1)
    {
      OUTLINED_FUNCTION_78();
    }

    v42 = v79;
    v43 = __swift_project_value_buffer(v79, qword_280D9DA90);
    v44 = v78;
    (*(v22 + 16))(v78, v43, v42);
    v46 = v80;
    v45 = v81;
    v47 = *(v81 + 16);
    v77 = a1;
    v47(v19, a1, v80);
    v48 = sub_2320EDD20();
    v49 = sub_2320EDE80();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v82 = v51;
      *v50 = 136315138;
      v47(v74, v19, v46);
      v52 = sub_2320EDDC0();
      v53 = v46;
      v55 = v54;
      v56 = *(v81 + 8);
      v57 = v19;
      v58 = v53;
      v56(v57, v53);
      v59 = sub_231E83810(v52, v55, &v82);

      *(v50 + 4) = v59;
      _os_log_impl(&dword_231E60000, v48, v49, "SGPipelineEntity+TUImporter: failed to initialize SGPipelineEntity, %s is missing relevanceDate", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_45_0();

      v56(v77, v58);
      (*(v22 + 8))(v78, v79);
    }

    else
    {

      v66 = *(v45 + 8);
      v66(v77, v46);
      v66(v19, v46);
      (*(v22 + 8))(v44, v42);
    }

    return 0;
  }

  else
  {
    (*(v36 + 32))(v41, v32, v33);
    sub_2320EDAA0();
    sub_2320EDD00();
    v79 = v36;
    v60 = v76;
    v61 = *(v75 + 8);
    v61(v11, v76);
    v62 = sub_2320EDDA0();

    sub_2320EDAA0();
    sub_2320EDCF0();
    v61(v9, v60);
    v63 = sub_2320EDDA0();

    sub_2320EDB80();
    if (v64)
    {
      v65 = sub_2320EDDA0();
    }

    else
    {
      v65 = 0;
    }

    sub_2320EDB70();
    v68 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v69 = sub_2320EDDA0();

    v70 = sub_2320ED5B0();
    LOBYTE(v72) = 0;
    v67 = [v68 initWithUniqueIdentifier:v62 source:v63 subject:v65 textContent:v69 date:v70 author:0 authorNickname:0 authorPhotoPath:0 isSent:v72];

    (*(v81 + 8))(a1, v80);
    (*(v79 + 8))(v41, v33);
  }

  return v67;
}

uint64_t sub_231E78D78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D330, &qword_2321067A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231E78DE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_231E78E48()
{
  result = qword_280D93710;
  if (!qword_280D93710)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D93710);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_1(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_231E78ECC(void *a1)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2B8, &qword_232106490);
  v7 = OUTLINED_FUNCTION_100(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_33(&v276 - v10);
  v295 = sub_2320ED550();
  v11 = OUTLINED_FUNCTION_13(v295);
  v282 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_33(v16 - v15);
  v293 = sub_2320EDA20();
  v17 = OUTLINED_FUNCTION_13(v293);
  v292 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_33(v22 - v21);
  v302 = sub_2320EDA70();
  v23 = OUTLINED_FUNCTION_13(v302);
  v299 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5_1();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_33(v31);
  v32 = sub_2320EDD40();
  v33 = OUTLINED_FUNCTION_13(v32);
  v308 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_21_1();
  v38 = MEMORY[0x28223BE20](v37);
  v40 = &v276 - v39;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_33(v42);
  v306 = sub_2320ED630();
  v43 = OUTLINED_FUNCTION_13(v306);
  v286 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_58();
  v287 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2B0, &qword_232106810);
  v50 = OUTLINED_FUNCTION_100(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_33(v54);
  v55 = sub_2320ED5F0();
  v56 = OUTLINED_FUNCTION_13(v55);
  v303 = v57;
  v304 = v56;
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_58();
  v301 = v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D338, &qword_2321067D0);
  v65 = OUTLINED_FUNCTION_100(v64);
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_25();
  v307 = v70;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_46_1();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_58();
  v305 = v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2A8, &qword_232106488);
  v75 = OUTLINED_FUNCTION_100(v74);
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_5_1();
  v80 = v78 - v79;
  v82 = MEMORY[0x28223BE20](v81);
  v84 = &v276 - v83;
  MEMORY[0x28223BE20](v82);
  v86 = &v276 - v85;
  v314 = MEMORY[0x277D84F90];
  v309 = v4;
  v87 = sub_231E7AA68(v4);
  if (!v88)
  {
    if (qword_280D93948 != -1)
    {
      goto LABEL_159;
    }

    goto LABEL_10;
  }

  v89 = v88;
  v280 = v87;
  v90 = [a1 duplicateKey];
  if (!v90)
  {

    if (qword_280D93948 != -1)
    {
      OUTLINED_FUNCTION_78();
    }

    OUTLINED_FUNCTION_47_1(v32, qword_280D9DA90);
    v116 = v308;
    (*(v308 + 16))(v40);
    v117 = sub_2320EDD20();
    v118 = sub_2320EDE80();
    if (OUTLINED_FUNCTION_53_1(v118))
    {
      v119 = OUTLINED_FUNCTION_48_0();
      *v119 = 0;
      _os_log_impl(&dword_231E60000, v117, v118, "SGTextUnderstandingImporter: no dup key.", v119, 2u);
      OUTLINED_FUNCTION_45_0();
    }

    (*(v116 + 8))(v40, v32);
    return MEMORY[0x277D84F90];
  }

  v91 = a1;
  v279 = v90;
  v300 = v32;
  v92 = [a1 duplicateKey];
  if (v92 && (v93 = v92, v94 = [v92 entityKey], v93, v94))
  {
    objc_opt_self();
    v95 = swift_dynamicCastObjCClass();
    if (v95 && (v96 = v95, v97 = sub_231E7E91C(a1, &selRef_sourceKey), v98))
    {
      v99 = v97;
      v100 = v98;
      v277 = v91;
      result = sub_231E7E91C(v96, &selRef_messageId);
      if (!v102)
      {
        __break(1u);
        return result;
      }

      v310 = sub_231E7B2E0(v99, v100, result, v102);
      v278 = 0;

      v91 = v277;
    }

    else
    {
      v278 = 0;
      v310 = MEMORY[0x277D84F90];
    }

    a1 = v91;
    swift_unknownObjectRelease();
  }

  else
  {
    v278 = 0;
    v310 = MEMORY[0x277D84F90];
  }

  v121 = v305;
  sub_2320ED7D0();
  v122 = sub_2320ED8C0();
  v123 = OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_42(v123, v124, v122);
  if (v223)
  {
    sub_231E6F05C(v86, &qword_27DD8D2A8, &qword_232106488);
    v126 = 0;
  }

  else
  {
    sub_2320ED880();
    v126 = v125;
    OUTLINED_FUNCTION_101(v122);
    (*(v127 + 8))(v86, v122);
  }

  v128 = OUTLINED_FUNCTION_51();
  __swift_storeEnumTagSinglePayload(v128, v129, 1, v306);
  if (v126)
  {
    sub_2320ED600();

    sub_231E6F05C(v121, &qword_27DD8D338, &qword_2321067D0);
    sub_231E7E8AC(v3, v121);
  }

  sub_2320ED7C0();
  OUTLINED_FUNCTION_42(v84, 1, v122);
  if (v223)
  {
    sub_231E6F05C(v84, &qword_27DD8D2A8, &qword_232106488);
    v130 = v307;
  }

  else
  {
    sub_2320ED880();
    v132 = v131;
    OUTLINED_FUNCTION_101(v122);
    (*(v133 + 8))(v84, v122);
    v130 = v307;
    if (v132)
    {
      v134 = v306;
      goto LABEL_36;
    }
  }

  sub_2320ED7D0();
  OUTLINED_FUNCTION_42(v80, 1, v122);
  v134 = v306;
  if (v223)
  {
    sub_231E6F05C(v80, &qword_27DD8D2A8, &qword_232106488);
    v132 = 0;
  }

  else
  {
    sub_2320ED880();
    v132 = v135;
    OUTLINED_FUNCTION_101(v122);
    (*(v136 + 8))(v80, v122);
  }

LABEL_36:
  __swift_storeEnumTagSinglePayload(v130, 1, 1, v134);
  if (v132)
  {
    sub_2320ED600();

    sub_231E6F05C(v130, &qword_27DD8D338, &qword_2321067D0);
    sub_231E7E8AC(v3, v130);
  }

  sub_231E7E9D8(0, &qword_27DD8D340, off_278948A98);
  v137 = v279;
  v138 = v280;
  v280 = v137;
  v139 = sub_231E7C1DC(v138, v89, v137);
  v140 = v309;
  v141 = sub_2320ED820();
  if (v142)
  {
    v143 = v141;
  }

  else
  {
    v143 = 0x454C5449545F4F4ELL;
  }

  if (v142)
  {
    v144 = v142;
  }

  else
  {
    v144 = 0xE800000000000000;
  }

  objc_allocWithZone(SGPipelineEnrichment);
  v145 = a1;
  v279 = v139;
  v146 = sub_231E7DB80(v279, v143, v144, a1);
  sub_2320ED810();
  if (v147)
  {
    v148 = sub_2320EDDA0();
  }

  else
  {
    v148 = 0;
  }

  v149 = v304;
  v150 = v296;
  [v146 setContent_];

  v151 = [objc_opt_self() recordIdWithNumericValue_];
  [v146 setRecordId_];

  v152 = &selRef_bytes;
  [v145 creationTimestamp];
  [v146 setCreationTimestamp_];
  v296 = v145;
  [v145 lastModifiedTimestamp];
  [v146 setLastModifiedTimestamp_];
  sub_2320EDA60();
  OUTLINED_FUNCTION_30_1();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v153, v154, v155);
  v157 = 0x277D01000;
  v158 = &selRef__registerProcessPendingGeocodesActivity;
  v306 = v146;
  if (EnumTagSinglePayload != 1)
  {
    v159 = v303;
    v160 = v303[4];
    v161 = v301;
    v160(v301, v150, v149);
    v162 = v149;
    v163 = v159[2];
    v163(v297, v161, v162);
    v164 = v283;
    sub_231E7E83C(v121, v283);
    OUTLINED_FUNCTION_19_1();
    if (v223)
    {
      v165 = v287;
      sub_2320ED620();
      OUTLINED_FUNCTION_19_1();
      v166 = v285;
      if (!v223)
      {
        sub_231E6F05C(v164, &qword_27DD8D338, &qword_2321067D0);
      }
    }

    else
    {
      v165 = v287;
      (*(v286 + 32))(v287, v164, v134);
      v166 = v285;
    }

    sub_2320ED840();
    v167 = v304;
    if (__swift_getEnumTagSinglePayload(v166, 1, v304) == 1)
    {
      v163(v298, v301, v167);
      OUTLINED_FUNCTION_42(v166, 1, v167);
      v146 = v306;
      v149 = v167;
      v168 = v289;
      v169 = v288;
      if (!v223)
      {
        sub_231E6F05C(v166, &qword_27DD8D2B0, &qword_232106810);
      }
    }

    else
    {
      v160(v298, v166, v167);
      v146 = v306;
      v149 = v167;
      v168 = v289;
      v169 = v288;
    }

    v170 = v284;
    sub_231E7E83C(v307, v284);
    OUTLINED_FUNCTION_19_1();
    v158 = &selRef__registerProcessPendingGeocodesActivity;
    if (v223)
    {
      sub_2320ED620();
      OUTLINED_FUNCTION_19_1();
      v171 = v290;
      if (!v223)
      {
        sub_231E6F05C(v170, &qword_27DD8D338, &qword_2321067D0);
      }
    }

    else
    {
      (*(v286 + 32))(v169, v170, v134);
      v171 = v290;
    }

    sub_231E7E9D8(0, &qword_27DD8D360, 0x277D020E8);
    v172 = sub_231E7C24C(v297, v165, v298, v169);
    [v146 setTimeRange_];
    v173 = sub_2320EDA40();
    v174 = v300;
    v175 = v308;
    if (v173)
    {
      v152 = &selRef_bytes;
      if ([v172 isValidAllDayRange])
      {
        v176 = [objc_opt_self() allDay];
        OUTLINED_FUNCTION_16_1(v176);

        v157 = 0x277D01000uLL;
        v177 = OUTLINED_FUNCTION_36_1(v303);
        v178(v177);
        goto LABEL_72;
      }

      if (qword_280D93948 != -1)
      {
        OUTLINED_FUNCTION_78();
      }

      OUTLINED_FUNCTION_47_1(v174, qword_280D9DA90);
      (*(v175 + 16))(v171);
      v181 = v299;
      v182 = v168;
      v183 = v168;
      v184 = v302;
      (*(v299 + 16))(v182, v140, v302);
      v185 = v171;
      v186 = sub_2320EDD20();
      v187 = sub_2320EDE80();
      if (os_log_type_enabled(v186, v187))
      {
        v188 = OUTLINED_FUNCTION_75_0();
        v298 = OUTLINED_FUNCTION_51_1();
        *&v313 = v298;
        *v188 = 136315138;
        v189 = sub_2320EDA30();
        v191 = v190;
        (*(v181 + 8))(v183, v184);
        v192 = sub_231E83810(v189, v191, &v313);
        v140 = v309;

        *(v188 + 4) = v192;
        _os_log_impl(&dword_231E60000, v186, v187, "SGTextUnderstandingImporter: invalid time range for an all day '%s' event", v188, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v298);
        OUTLINED_FUNCTION_45_0();
        v158 = &selRef__registerProcessPendingGeocodesActivity;
        OUTLINED_FUNCTION_45_0();

        (*(v308 + 8))(v290, v300);
      }

      else
      {

        (*(v181 + 8))(v183, v184);
        (*(v308 + 8))(v185, v300);
      }

      v149 = v304;
      v193 = OUTLINED_FUNCTION_36_1(v303);
      v194(v193);
    }

    else
    {
      v179 = OUTLINED_FUNCTION_36_1(v303);
      v180(v179);
    }

    v152 = &selRef_bytes;
    v157 = 0x277D01000uLL;
    goto LABEL_72;
  }

  sub_231E6F05C(v150, &qword_27DD8D2B0, &qword_232106810);
LABEL_72:
  v195 = sub_2320ED7B0();
  v196 = ((v195 == 2) | v195);
  v197 = *(v157 + 4000);
  v198 = objc_opt_self();
  OUTLINED_FUNCTION_16_1([v198 eventCompleteness_]);

  sub_2320ED7E0();
  if (v199)
  {
    v200 = sub_2320EDDA0();

    v201 = [v198 extraKey_];

    [v146 v158[249]];
  }

  if (sub_231E7C3B0() == 3)
  {
    OUTLINED_FUNCTION_16_1([v198 extractedEventCancellation]);
  }

  [v296 v152[317]];
  v203 = SGUnixTimestampToDate(v202);
  if (v203)
  {
    v204 = v203;
    OUTLINED_FUNCTION_45(v315);
    sub_2320ED5D0();

    sub_2320ED5C0();
    if (v205 <= -604800.0)
    {
      OUTLINED_FUNCTION_16_1([v198 eventExtractedFromOldDocument]);
    }

    (v303[1])(v196, v149);
  }

  v304 = v198;
  v303 = [v146 locations];

  v206 = v310;
  v32 = sub_231E84864(v310);
  v207 = 0;
  v29 = v206 & 0xC000000000000001;
  v208 = MEMORY[0x277D84F90];
  v209 = v206 & 0xFFFFFFFFFFFFFF8;
  v1 = &selRef_bytes;
  while (1)
  {
    if (v32 == v207)
    {

      v218 = sub_2320EDE10();

      v219 = v303;
      [v303 addObjectsFromArray_];

      v220 = v291;
      sub_2320EDA50();
      sub_2320ED920();
      OUTLINED_FUNCTION_43_1();
      (*(v292 + 8))(v220, v293);
      v221 = v308;
      if (v208 >> 60 == 15)
      {
        goto LABEL_106;
      }

      v223 = sub_2320EDA30() == 0x6361747441736369 && v222 == 0xED0000746E656D68;
      if (v223)
      {

        v225 = v304;
      }

      else
      {
        v224 = OUTLINED_FUNCTION_14_1();

        v225 = v304;
        if ((v224 & 1) == 0)
        {
LABEL_105:
          sub_231E7E7D0(v218, v208);
LABEL_106:
          OUTLINED_FUNCTION_45(&v316);
          sub_2320ED800();
          v228 = OUTLINED_FUNCTION_51();
          v229 = v295;
          OUTLINED_FUNCTION_42(v228, v230, v295);
          v231 = v307;
          v232 = v294;
          if (v223)
          {
            sub_231E6F05C(v218, &qword_27DD8D2B8, &qword_232106490);
          }

          else
          {
            v233 = v282;
            v234 = v281;
            (*(v282 + 32))(v281, v218, v229);
            v235 = sub_2320ED540();
            v236 = [v304 url_];

            [v306 addTag_];
            (*(v233 + 8))(v234, v229);
          }

          v237 = sub_231E68114();
          if (v237)
          {
            v238 = v237;
            if (qword_280D93948 != -1)
            {
              OUTLINED_FUNCTION_78();
            }

            OUTLINED_FUNCTION_47_1(v300, qword_280D9DA90);
            (*(v221 + 16))(v232);
            v239 = sub_2320EDD20();
            v240 = sub_2320EDEA0();
            if (os_log_type_enabled(v239, v240))
            {
              v241 = OUTLINED_FUNCTION_48_0();
              *v241 = 0;
              _os_log_impl(&dword_231E60000, v239, v240, "SGTextUnderstandingImporter: successfully created schema for the event", v241, 2u);
              OUTLINED_FUNCTION_45_0();
            }

            (*(v221 + 8))(v232, v300);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D350, &qword_2321067D8);
            v242 = swift_allocObject();
            *(v242 + 16) = xmmword_232106460;
            v243 = sub_231E7C82C(v238);

            *(v242 + 32) = v243;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D358, &qword_2321067E0);
            v244 = sub_2320EDE10();

            v245 = [v304 schemaOrg_];

            if (v245)
            {
              [v306 addTag_];
            }
          }

          v246 = sub_231E7CAF0();
          if (v246)
          {
            v247 = v246;
            v248 = OUTLINED_FUNCTION_48_1();
            [v248 v249];
          }

          v250 = v296;
          v251 = sub_231E7E70C(v296);
          if (v251)
          {
            v1 = v251;
            v252 = sub_231E7E77C(v250, &selRef_accountHandles);
            if (v252)
            {
              v253 = v252;
              v254 = sub_231E84864(v1);
              if (v254 && *(v253 + 16))
              {
                v255 = v254;
                v310 = v253;
                v32 = 0;
                v29 = v1 & 0xC000000000000001;
                v256 = MEMORY[0x277D84F90];
                while (v255 != v32)
                {
                  if (v29)
                  {
                    v257 = MEMORY[0x23837ECF0](v32, v1);
                  }

                  else
                  {
                    if (v32 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_154;
                    }

                    v257 = v1[v32 + 4];
                  }

                  v258 = v257;
                  if (__OFADD__(v32, 1))
                  {
                    goto LABEL_153;
                  }

                  v259 = [v257 handles];
                  v260 = sub_2320EDE20();

                  v261 = *(v260 + 16);
                  v262 = *(v256 + 16);
                  v263 = v262 + v261;
                  if (__OFADD__(v262, v261))
                  {
                    goto LABEL_155;
                  }

                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  if (!isUniquelyReferenced_nonNull_native || v263 > *(v256 + 24) >> 1)
                  {
                    if (v262 <= v263)
                    {
                      v265 = v262 + v261;
                    }

                    else
                    {
                      v265 = v262;
                    }

                    sub_231E831F0(isUniquelyReferenced_nonNull_native, v265, 1, v256);
                    v256 = v266;
                  }

                  if (*(v260 + 16))
                  {
                    if ((*(v256 + 24) >> 1) - *(v256 + 16) < v261)
                    {
                      goto LABEL_157;
                    }

                    swift_arrayInitWithCopy();

                    if (v261)
                    {
                      v267 = *(v256 + 16);
                      v268 = __OFADD__(v267, v261);
                      v269 = v267 + v261;
                      if (v268)
                      {
                        goto LABEL_158;
                      }

                      *(v256 + 16) = v269;
                    }
                  }

                  else
                  {

                    if (v261)
                    {
                      goto LABEL_156;
                    }
                  }

                  ++v32;
                }

                v270 = sub_231E7D410(v256);
                v271 = sub_231E7D410(v310);
                v272 = sub_231E7D4D0(v271, v270);

                v231 = v307;
                v251 = v304;
                if (v272)
                {
                  v273 = [v304 eventWithOnlyNonAccountPrimaryRecipients];
                  v274 = OUTLINED_FUNCTION_48_1();
                  [v274 v275];
                }

                goto LABEL_145;
              }
            }
          }

LABEL_145:
          MEMORY[0x23837EBD0](v251);
          if (*((v314 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v314 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_2320EDE30();
          }

          sub_2320EDE40();
          v120 = v314;

          sub_231E6F05C(v231, &qword_27DD8D338, &qword_2321067D0);
          sub_231E6F05C(v305, &qword_27DD8D338, &qword_2321067D0);
          return v120;
        }
      }

      v226 = sub_2320ED560();
      v227 = [v225 icsAttachmentData_];

      if (v227)
      {
        [v306 addTag_];
      }

      goto LABEL_105;
    }

    if (v29)
    {
      v210 = MEMORY[0x23837ECF0](v207, v310);
    }

    else
    {
      if (v207 >= *(v209 + 16))
      {
        goto LABEL_152;
      }

      v210 = *(v310 + 8 * v207 + 32);
    }

    v211 = v210;
    if (__OFADD__(v207, 1))
    {
      break;
    }

    v212 = [v210 convertToStorageLocation];
    if (v212)
    {
      v213 = v212;
      v312 = sub_231E7E9D8(0, &qword_27DD8D348, off_278949178);

      *&v311 = v213;
      sub_231E6EBF4(&v311, &v313);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_231E832E8(0, *(v208 + 16) + 1, 1, v208);
        v208 = v216;
      }

      v215 = *(v208 + 16);
      v214 = *(v208 + 24);
      if (v215 >= v214 >> 1)
      {
        sub_231E832E8(v214 > 1, v215 + 1, 1, v208);
        v208 = v217;
      }

      *(v208 + 16) = v215 + 1;
      sub_231E6EBF4(&v313, (v208 + 32 * v215 + 32));
    }

    else
    {
    }

    ++v207;
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  OUTLINED_FUNCTION_78();
LABEL_10:
  OUTLINED_FUNCTION_47_1(v32, qword_280D9DA90);
  v103 = v308;
  (*(v308 + 16))(v1);
  v104 = v299;
  v105 = v302;
  (*(v299 + 16))(v29, v309, v302);
  v106 = sub_2320EDD20();
  v107 = v32;
  v108 = sub_2320EDE80();
  if (os_log_type_enabled(v106, v108))
  {
    v109 = OUTLINED_FUNCTION_75_0();
    v110 = OUTLINED_FUNCTION_51_1();
    *&v313 = v110;
    *v109 = 136315138;
    v300 = v107;
    v111 = sub_2320EDA30();
    v112 = v103;
    v114 = v113;
    (*(v104 + 8))(v29, v302);
    v115 = sub_231E83810(v111, v114, &v313);

    *(v109 + 4) = v115;
    _os_log_impl(&dword_231E60000, v106, v108, "SGTextUnderstandingImporter: '%s' event missing group id", v109, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v110);
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_45_0();

    (*(v112 + 8))(v1, v300);
  }

  else
  {

    (*(v104 + 8))(v29, v105);
    (*(v103 + 8))(v1, v107);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_231E7AA68(void *a1)
{
  v2 = sub_2320EDD40();
  v75 = *(v2 - 8);
  v3 = *(v75 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v74 = &v69 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v69 - v9;
  v11 = sub_2320EDA20();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2320EDA30() == 0x6361747441736369 && v16 == 0xED0000746E656D68)
  {
  }

  else
  {
    v18 = sub_2320EE020();

    if ((v18 & 1) == 0)
    {
LABEL_6:
      v19 = sub_2320ED850();
      if (!v20)
      {
        return sub_2320ED7E0();
      }

      return v19;
    }
  }

  sub_2320EDA50();
  v22 = sub_2320ED920();
  v24 = v23;
  (*(v12 + 8))(v15, v11);
  if (v24 >> 60 == 15)
  {
LABEL_13:
    if (qword_280D93948 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v2, qword_280D9DA90);
    v28 = v75;
    (*(v75 + 16))(v6, v27, v2);
    v29 = sub_2320EDD20();
    v30 = sub_2320EDE80();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_231E60000, v29, v30, "SGTextUnderstandingImporter: icsAttachment event missing attachment data", v31, 2u);
      MEMORY[0x2383814F0](v31, -1, -1);
    }

    (*(v28 + 8))(v6, v2);
    return 0;
  }

  v25 = objc_allocWithZone(MEMORY[0x277D7F108]);
  sub_231E7EA18(v22, v24);
  v73 = v22;
  v26 = sub_231E7DA84(v22, v24, 0);
  v33 = v26;
  v34 = v73;
  if (!v26)
  {
LABEL_12:
    sub_231E7E7D0(v34, v24);
    goto LABEL_13;
  }

  v35 = [v26 calendar];
  if (!v35)
  {

    goto LABEL_12;
  }

  v36 = v35;
  v71 = sub_231E7E77C(v35, &selRef_componentKeys);
  if (!v71)
  {

    goto LABEL_12;
  }

  v70 = v36;
  v37 = sub_231E7E91C(v36, &selRef_calscale);
  v39 = v71;
  if (v38)
  {
    if (v37 == 0x4149524F47455247 && v38 == 0xE90000000000004ELL)
    {
    }

    else
    {
      v41 = sub_2320EE020();

      if ((v41 & 1) == 0)
      {
        a1 = v33;

        if (qword_280D93948 != -1)
        {
LABEL_66:
          swift_once();
        }

        v42 = __swift_project_value_buffer(v2, qword_280D9DA90);
        v43 = v75;
        (*(v75 + 16))(v10, v42, v2);
        v44 = sub_2320EDD20();
        v45 = sub_2320EDE80();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&dword_231E60000, v44, v45, "SGTextUnderstandingImporter: Ignore non-Gregorian calendars for calendar attachment", v46, 2u);
          MEMORY[0x2383814F0](v46, -1, -1);

          sub_231E7E7D0(v73, v24);
        }

        else
        {
          sub_231E7E7D0(v73, v24);
        }

        (*(v43 + 8))(v10, v2);
        return 0;
      }
    }
  }

  v69 = v33;
  v47 = v70;
  if (!*(v39 + 16))
  {
LABEL_54:

    sub_231E7E7D0(v73, v24);
    goto LABEL_6;
  }

  v48 = *(v39 + 16);
  v49 = 0;
  v50 = v39 + 32;
  while (1)
  {
    if (v49 >= *(v39 + 16))
    {
      __break(1u);
      goto LABEL_66;
    }

    sub_231E7E97C(v50, v78);
    if (swift_dynamicCast())
    {
      v10 = sub_231E7E6BC(v76, v77, v47);

      if (v10)
      {
        break;
      }
    }

LABEL_53:
    ++v49;
    v50 += 32;
    if (v48 == v49)
    {
      goto LABEL_54;
    }
  }

  objc_opt_self();
  v72 = swift_dynamicCastObjCClass();
  if (!v72)
  {

    goto LABEL_53;
  }

  v51 = sub_2320ED820();
  if (!v52)
  {

    v39 = v71;
    goto LABEL_53;
  }

  v53 = v51;
  v54 = v52;
  v55 = sub_231E7E91C(v72, &selRef_summary);
  if (!v56)
  {

LABEL_52:
    v47 = v70;
    v39 = v71;
    goto LABEL_53;
  }

  if (v55 != v53 || v56 != v54)
  {
    v58 = sub_2320EE020();

    if (v58)
    {
      goto LABEL_58;
    }

    goto LABEL_52;
  }

LABEL_58:
  v59 = v70;

  v61 = v74;
  v60 = v75;
  if (qword_280D93948 != -1)
  {
    swift_once();
  }

  v62 = __swift_project_value_buffer(v2, qword_280D9DA90);
  (*(v60 + 16))(v61, v62, v2);
  v63 = sub_2320EDD20();
  v64 = sub_2320EDEA0();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&dword_231E60000, v63, v64, "SGTextUnderstandingImporter: successfully synthesized identifier from icsData", v65, 2u);
    v66 = v65;
    v59 = v70;
    MEMORY[0x2383814F0](v66, -1, -1);
  }

  (*(v60 + 8))(v61, v2);
  v67 = [v72 uid];
  if (v67)
  {
    v68 = v67;
    v21 = sub_2320EDDB0();
    sub_231E7E7D0(v73, v24);

    return v21;
  }

  sub_231E7E7D0(v73, v24);

  return 0;
}

unint64_t sub_231E7B2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v229 = a3;
  v230 = a4;
  v227 = a1;
  v228 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2A0, &qword_232106480);
  v10 = OUTLINED_FUNCTION_100(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8();
  v226 = v13;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v14);
  v16 = v215 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD8D2A8, &qword_232106488);
  v18 = OUTLINED_FUNCTION_100(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_25();
  v216 = v25;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_25();
  v219 = v28;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_25();
  v223 = v30;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_25();
  v221 = v32;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_25();
  v224 = v34;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_45_1();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_46_1();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_44_1();
  v233 = sub_2320ED8C0();
  v38 = OUTLINED_FUNCTION_13(v233);
  v231 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_25();
  v217 = v47;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_25();
  v218 = v49;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_25();
  v222 = v51;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_25();
  v220 = v53;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_21_1();
  v56 = MEMORY[0x28223BE20](v55);
  v58 = v215 - v57;
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_25();
  v225 = v59;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v60);
  v62 = v215 - v61;
  v237 = MEMORY[0x277D84F90];
  v232 = v5;
  v64 = sub_2320EDA30();
  v65 = v63;
  v66 = v64 == 0x746867696C66 && v63 == 0xE600000000000000;
  if (v66 || (OUTLINED_FUNCTION_12_1() & 1) != 0)
  {

    sub_2320ED7D0();
    v67 = v233;
    OUTLINED_FUNCTION_42(v7, 1, v233);
    v58 = v231;
    if (v66)
    {
      sub_231E6F05C(v7, &qword_27DD8D2A8, &qword_232106488);
      v7 = MEMORY[0x277D84F90];
    }

    else
    {
      OUTLINED_FUNCTION_28_1();
      v68(v62, v7, v67);
      sub_2320ED8B0();
      v69 = sub_2320EDC20();
      OUTLINED_FUNCTION_30_1();
      OUTLINED_FUNCTION_42(v70, v71, v72);
      if (v73)
      {
        sub_231E6F05C(v16, &qword_27DD8D2A0, &qword_232106480);
        v67 = 0;
        v6 = 0;
      }

      else
      {
        sub_2320EDC10();
        OUTLINED_FUNCTION_43_1();
        OUTLINED_FUNCTION_101(v69);
        (*(v81 + 8))(v16, v69);
      }

      v82 = OUTLINED_FUNCTION_15_1();
      sub_231E7D6A8(v82, v83, v84, v85, 2, v67, v6);

      MEMORY[0x23837EBD0](v86);
      OUTLINED_FUNCTION_6_1();
      if (v117)
      {
        OUTLINED_FUNCTION_7_1();
      }

      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_38_1();
      v67 = v233;
      v87(v62, v233);
    }

    sub_2320ED7C0();
    OUTLINED_FUNCTION_17_0(v8);
    if (!v66)
    {
      OUTLINED_FUNCTION_28_1();
      v89 = v225;
      v90();
      v91 = v226;
      sub_2320ED8B0();
      v92 = sub_2320EDC20();
      OUTLINED_FUNCTION_30_1();
      OUTLINED_FUNCTION_42(v93, v94, v95);
      if (v96)
      {
        sub_231E6F05C(v91, &qword_27DD8D2A0, &qword_232106480);
        v67 = 0;
        v6 = 0;
      }

      else
      {
        sub_2320EDC10();
        OUTLINED_FUNCTION_43_1();
        OUTLINED_FUNCTION_101(v92);
        (*(v97 + 8))(v91, v92);
      }

      v98 = OUTLINED_FUNCTION_15_1();
      sub_231E7D6A8(v98, v99, v100, v101, 3, v67, v6);

      MEMORY[0x23837EBD0](v102);
      OUTLINED_FUNCTION_6_1();
      if (v117)
      {
        OUTLINED_FUNCTION_7_1();
      }

      OUTLINED_FUNCTION_35_0();
      v7 = v237;
      v103 = *(v58 + 1);
      v58 += 8;
      v103(v89, v233);
      goto LABEL_34;
    }

    v88 = v8;
    goto LABEL_27;
  }

  v74 = 0xD000000000000010;
  OUTLINED_FUNCTION_22_1();
  v76 = v64 == 0xD000000000000010 && v75 == v65;
  if (v76 || (OUTLINED_FUNCTION_12_1() & 1) != 0)
  {

    OUTLINED_FUNCTION_41_1();
    v77 = OUTLINED_FUNCTION_60();
    v78 = v233;
    OUTLINED_FUNCTION_42(v77, v79, v233);
    if (!v66)
    {
      v109 = v231;
      (*(v231 + 4))(v58, v6, v78);
      v110 = OUTLINED_FUNCTION_2_1();
      sub_231E7D6A8(v110, v111, v112, v113, v114, v115, v116);
      OUTLINED_FUNCTION_40_1();
      OUTLINED_FUNCTION_6_1();
      if (v117)
      {
        OUTLINED_FUNCTION_7_1();
      }

      OUTLINED_FUNCTION_35_0();
      v7 = v237;
      (*(v109 + 1))(v58, v78);
      goto LABEL_34;
    }

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_22_1();
  v119 = v64 == 0xD000000000000015 && v118 == v65;
  if (v119 || (OUTLINED_FUNCTION_12_1() & 1) != 0)
  {

    v6 = v224;
    OUTLINED_FUNCTION_41_1();
    v120 = OUTLINED_FUNCTION_60();
    v58 = v233;
    OUTLINED_FUNCTION_42(v120, v121, v233);
    v122 = v231;
    if (!v66)
    {
      (*(v231 + 4))(v4, v6, v58);
      v123 = OUTLINED_FUNCTION_2_1();
      v6 = sub_231E7D6A8(v123, v124, v125, v126, v127, v128, v129);
      MEMORY[0x23837EBD0]();
      if (*(v237 + 16) >= *(v237 + 24) >> 1)
      {
        sub_2320EDE30();
      }

      sub_2320EDE40();
      v7 = v237;
      (*(v122 + 1))(v4, v58);
      goto LABEL_34;
    }

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_22_1();
  v131 = v64 == 0xD000000000000011 && v130 == v65;
  v58 = v231;
  if (v131 || (OUTLINED_FUNCTION_12_1() & 1) != 0)
  {

    v6 = v221;
    OUTLINED_FUNCTION_41_1();
    v132 = OUTLINED_FUNCTION_60();
    v64 = v233;
    OUTLINED_FUNCTION_42(v132, v133, v233);
    if (v66)
    {
      sub_231E6F05C(v6, &qword_27DD8D2A8, &qword_232106488);
      v7 = MEMORY[0x277D84F90];
      v74 = v222;
      goto LABEL_65;
    }

LABEL_63:
    OUTLINED_FUNCTION_28_1();
    v134 = v220;
    v135(v220, v6, v64);
    v136 = OUTLINED_FUNCTION_15_1();
    sub_231E7D6A8(v136, v137, v138, v139, 2, 0, 0);
    OUTLINED_FUNCTION_40_1();
    OUTLINED_FUNCTION_6_1();
    v74 = v222;
    if (!v117)
    {
LABEL_64:
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_38_1();
      v140(v134, v64);
LABEL_65:
      v6 = v223;
      sub_2320ED7C0();
      v141 = OUTLINED_FUNCTION_60();
      OUTLINED_FUNCTION_42(v141, v142, v64);
      if (!v66)
      {
        OUTLINED_FUNCTION_28_1();
        v143(v74, v6, v64);
        v144 = OUTLINED_FUNCTION_15_1();
        sub_231E7D6A8(v144, v145, v146, v147, 3, 0, 0);
LABEL_76:
        OUTLINED_FUNCTION_40_1();
        OUTLINED_FUNCTION_6_1();
        if (v117)
        {
          OUTLINED_FUNCTION_7_1();
        }

        OUTLINED_FUNCTION_35_0();
        v7 = v237;
        v158 = *(v58 + 1);
        v58 += 8;
        v158(v74, v64);
        goto LABEL_34;
      }

LABEL_67:
      v88 = v6;
LABEL_27:
      sub_231E6F05C(v88, &qword_27DD8D2A8, &qword_232106488);
      goto LABEL_34;
    }

LABEL_131:
    OUTLINED_FUNCTION_7_1();
    goto LABEL_64;
  }

  v148 = v64 == 2003789939 && v65 == 0xE400000000000000;
  v149 = v233;
  if (!v148 && (OUTLINED_FUNCTION_12_1() & 1) == 0)
  {
    if (v64 == OUTLINED_FUNCTION_31_1() && v65 == v159)
    {

      v134 = v217;
LABEL_86:
      v162 = v215[8];
      OUTLINED_FUNCTION_41_1();
      OUTLINED_FUNCTION_17_0(v162);
      v74 = v215[9];
      if (v66)
      {
        sub_231E6F05C(v162, &qword_27DD8D2A8, &qword_232106488);
        v7 = MEMORY[0x277D84F90];
      }

      else
      {
        OUTLINED_FUNCTION_28_1();
        v163(v134, v162, v149);
        v164 = OUTLINED_FUNCTION_2_1();
        sub_231E7D6A8(v164, v165, v166, v167, v168, v169, v170);
        OUTLINED_FUNCTION_40_1();
        OUTLINED_FUNCTION_6_1();
        if (v171)
        {
          OUTLINED_FUNCTION_7_1();
        }

        OUTLINED_FUNCTION_35_0();
        OUTLINED_FUNCTION_38_1();
        v172(v134, v149);
      }

      v6 = v216;
      sub_2320ED7C0();
      OUTLINED_FUNCTION_17_0(v6);
      if (v66)
      {
        goto LABEL_67;
      }

      goto LABEL_74;
    }

    v161 = OUTLINED_FUNCTION_12_1();
    v134 = v217;
    if (v161)
    {

      goto LABEL_86;
    }

    v174 = v64 == OUTLINED_FUNCTION_27_1() && v65 == v173;
    if (v174 || (OUTLINED_FUNCTION_12_1() & 1) != 0)
    {

      v6 = v215[7];
      OUTLINED_FUNCTION_41_1();
      OUTLINED_FUNCTION_17_0(v6);
      if (!v66)
      {
        OUTLINED_FUNCTION_28_1();
        v74 = v215[5];
        goto LABEL_75;
      }

      goto LABEL_19;
    }

    v175 = v64 == 0x7974726170 && v65 == 0xE500000000000000;
    if (v175 || (OUTLINED_FUNCTION_12_1() & 1) != 0)
    {

      OUTLINED_FUNCTION_45(&v241);
      sub_2320ED7D0();
      v176 = OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_42(v176, v177, v233);
      if (!v66)
      {
        (*(v231 + 4))(v215[4], v215[6], v233);
        v179 = OUTLINED_FUNCTION_2_1();
        sub_231E7D6A8(v179, v180, v181, v182, v183, v184, v185);
        OUTLINED_FUNCTION_40_1();
        OUTLINED_FUNCTION_6_1();
        if (v186)
        {
          OUTLINED_FUNCTION_7_1();
        }

        OUTLINED_FUNCTION_35_0();
        OUTLINED_FUNCTION_37_1();
        v188 = &v240;
LABEL_113:
        v187(*(v188 - 32), v233);
        goto LABEL_34;
      }

      v178 = &v241;
    }

    else
    {
      v190 = v64 == OUTLINED_FUNCTION_23_1() && v65 == v189;
      if (v190 || (OUTLINED_FUNCTION_12_1() & 1) != 0)
      {

        OUTLINED_FUNCTION_45(&v239);
        sub_2320ED7D0();
        v191 = OUTLINED_FUNCTION_51();
        OUTLINED_FUNCTION_42(v191, v192, v233);
        if (!v66)
        {
          (*(v231 + 4))(v215[2], v215[3], v233);
          v193 = OUTLINED_FUNCTION_2_1();
          sub_231E7D6A8(v193, v194, v195, v196, v197, v198, v199);
          OUTLINED_FUNCTION_40_1();
          OUTLINED_FUNCTION_6_1();
          if (v200)
          {
            OUTLINED_FUNCTION_7_1();
          }

          OUTLINED_FUNCTION_35_0();
          OUTLINED_FUNCTION_37_1();
          v188 = &v238;
          goto LABEL_113;
        }

        v178 = &v239;
      }

      else
      {
        if (v64 == OUTLINED_FUNCTION_26_1() && v65 == v201)
        {
        }

        else
        {
          v203 = OUTLINED_FUNCTION_12_1();

          if ((v203 & 1) == 0)
          {
            v234 = 0;
            v235 = 0xE000000000000000;
            sub_2320EDF10();

            v234 = 0xD00000000000001BLL;
            v235 = 0x800000023210ED20;
            v204 = sub_2320EDA30();
            MEMORY[0x23837EBB0](v204);

            sub_2320EDFE0();
            __break(1u);
            goto LABEL_131;
          }
        }

        OUTLINED_FUNCTION_45(&v237);
        sub_2320ED7D0();
        v205 = OUTLINED_FUNCTION_51();
        OUTLINED_FUNCTION_42(v205, v206, v233);
        if (!v66)
        {
          (*(v231 + 4))(v215[0], v215[1], v233);
          v207 = OUTLINED_FUNCTION_2_1();
          sub_231E7D6A8(v207, v208, v209, v210, v211, v212, v213);
          OUTLINED_FUNCTION_40_1();
          OUTLINED_FUNCTION_6_1();
          if (v214)
          {
            OUTLINED_FUNCTION_7_1();
          }

          OUTLINED_FUNCTION_35_0();
          OUTLINED_FUNCTION_37_1();
          v188 = &v236;
          goto LABEL_113;
        }

        v178 = &v237;
      }
    }

    v80 = *(v178 - 32);
    goto LABEL_20;
  }

  v6 = v219;
  OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_17_0(v6);
  v74 = v218;
  if (!v66)
  {
LABEL_74:
    OUTLINED_FUNCTION_28_1();
LABEL_75:
    v150(v74, v6, v149);
    v151 = OUTLINED_FUNCTION_2_1();
    sub_231E7D6A8(v151, v152, v153, v154, v155, v156, v157);
    v64 = v149;
    goto LABEL_76;
  }

LABEL_19:
  v80 = v6;
LABEL_20:
  sub_231E6F05C(v80, &qword_27DD8D2A8, &qword_232106488);
  v7 = MEMORY[0x277D84F90];
LABEL_34:
  v104 = MEMORY[0x277D84F90];
  v64 = 0;
  v234 = MEMORY[0x277D84F90];
  v105 = *(v7 + 16);
  while (v105 != v64)
  {
    if (v64 >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_63;
    }

    v106 = *(v7 + 8 * v64++ + 32);
    if (v106)
    {
      v107 = v106;
      MEMORY[0x23837EBD0]();
      v6 = *((v234 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6 >= *((v234 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        OUTLINED_FUNCTION_7_1();
      }

      OUTLINED_FUNCTION_35_0();
      v104 = v234;
    }
  }

  return v104;
}