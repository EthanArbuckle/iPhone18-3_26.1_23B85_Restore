id CalGenerateRandomDispatchQueueName(__CFString *a1)
{
  v2 = @"Unknown";
  if (a1)
  {
    v2 = a1;
  }

  v3 = MEMORY[0x1E696AEC0];
  v4 = v2;
  v5 = a1;
  v6 = CalGenerateUUID();
  v7 = [v3 stringWithFormat:@"%@-%@", v4, v6];

  return v7;
}

__CFString *CalGenerateUUID()
{
  v0 = *MEMORY[0x1E695E480];
  v1 = CFUUIDCreate(*MEMORY[0x1E695E480]);
  v2 = CFUUIDCreateString(v0, v1);
  CFRelease(v1);

  return v2;
}

id CalCachedObjectForKeyWithCalculateBlock(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 objectForKey:v6];
  if (!v8)
  {
    v9 = v7[2](v7);
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
    }

    v8 = v11;
    [v5 setObject:v11 forKey:v6];
  }

  v12 = [MEMORY[0x1E695DFB0] null];
  v13 = [v8 isEqual:v12];

  if (v13)
  {

    v8 = 0;
  }

  return v8;
}

uint64_t timezonesAreEquivalent(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    if ([v3 isEqualToTimeZone:v4])
    {
      v6 = 1;
    }

    else
    {
      v7 = [v3 name];
      v8 = [v7 length];
      if (v8 >= 0x3F)
      {
        v9 = 63;
      }

      else
      {
        v9 = v8;
      }

      [v7 getCharacters:v17 range:{0, v9}];
      v17[v9] = 0;

      v10 = [v5 name];
      v11 = [v10 length];
      if (v11 >= 0x3F)
      {
        v12 = 63;
      }

      else
      {
        v12 = v11;
      }

      [v10 getCharacters:v16 range:{0, v12}];
      v16[v12] = 0;

      *s2 = 0;
      ucal_getCanonicalTimeZoneID();
      ucal_getCanonicalTimeZoneID();
      v6 = 0;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

id _EKSharedGregorianCalendarLock()
{
  if (_EKSharedGregorianCalendarLock_onceToken != -1)
  {
    _EKSharedGregorianCalendarLock_cold_1();
  }

  v1 = _EKSharedGregorianCalendarLock_sharedGregorianCalendarLock;

  return v1;
}

id _EKSharedGregorianCalendarForTimeZone(void *a1)
{
  v1 = a1;
  v2 = [v1 name];
  v3 = v2;
  if (v1)
  {
    if (!v2)
    {
      v4 = 0;
      goto LABEL_13;
    }
  }

  else
  {

    v3 = @"floating";
  }

  v5 = _EKSharedGregorianCalendarForTimeZone___calendarCache;
  if (!_EKSharedGregorianCalendarForTimeZone___calendarCache)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    v7 = _EKSharedGregorianCalendarForTimeZone___calendarCache;
    _EKSharedGregorianCalendarForTimeZone___calendarCache = v6;

    v5 = _EKSharedGregorianCalendarForTimeZone___calendarCache;
  }

  v8 = [v5 objectForKeyedSubscript:v3];
  if (v8)
  {
    v4 = v8;
    if ([(__CFString *)v3 isEqualToString:@"floating"])
    {
      v9 = [v4 timeZone];
      v10 = [MEMORY[0x1E695DFE8] defaultTimeZone];
      v11 = [v9 isEquivalentTo:v10];

      if ((v11 & 1) == 0)
      {
        v12 = [MEMORY[0x1E695DFE8] defaultTimeZone];
        [v4 setTimeZone:v12];
      }
    }
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x1E695DEE8]);
    v14 = [v13 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
    v4 = v14;
    if (v14)
    {
      [v14 setTimeZone:v1];
      [_EKSharedGregorianCalendarForTimeZone___calendarCache setObject:v4 forKeyedSubscript:v3];
    }
  }

LABEL_13:

  return v4;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id EKDateGetDateComponents(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2;
  v21 = __Block_byref_object_dispose__2;
  v22 = 0;
  v7 = _EKSharedGregorianCalendarLock();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __EKDateGetDateComponents_block_invoke;
  v12[3] = &unk_1E7EC67C8;
  v13 = v5;
  v14 = v6;
  v15 = &v17;
  v16 = a2;
  v8 = v6;
  v9 = v5;
  dispatch_sync(v7, v12);

  v10 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v10;
}

uint64_t __EKDateGetDateComponents_block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    v2 = _EKSharedGregorianCalendarForTimeZone(*(result + 40));
    v3 = [v2 components:v1[7] fromDate:v1[4]];
    v4 = *(v1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = v1[5];
    v7 = *(*(v1[6] + 8) + 40);

    return [v7 setTimeZone:v6];
  }

  return result;
}

uint64_t sub_1B9913284()
{
  MEMORY[0x1BFADFDD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B99132BC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9913304()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1B9914CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _phoneNumberDetector()
{
  if (_phoneNumberDetector_onceToken != -1)
  {
    _phoneNumberDetector_cold_1();
  }

  v1 = _sPhoneNumberDetector;

  return v1;
}

uint64_t ___phoneNumberDetector_block_invoke()
{
  _sPhoneNumberDetector = [objc_alloc(MEMORY[0x1E696AB60]) initWithTypes:2080 error:0];

  return MEMORY[0x1EEE66BB8]();
}

double _CalRecurrenceByDayItemCopy(uint64_t a1, double *a2)
{
  v3 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  if (v3)
  {
    result = *a2;
    *v3 = *a2;
  }

  return result;
}

void _CalRecurrenceByDayItemFree(int a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

CFStringRef _CalRecurrenceByDayItemCopyStringRepresentation(unsigned int *a1)
{
  v1 = &stru_1F379FFA8;
  if (*a1 > 0)
  {
    v1 = @"+";
  }

  return CFStringCreateWithFormat(0, 0, @"%@%d%s", v1, *a1, kCalDayStrings[a1[1]]);
}

BOOL _CalRecurrenceByDayItemEqual(_DWORD *a1, _DWORD *a2)
{
  result = a1 == a2;
  if (a2 && a1 && a1 != a2)
  {
    return a1[1] == a2[1] && *a1 == *a2;
  }

  return result;
}

__CFString *CalDescriptionForCalVirtualConferenceSource(uint64_t a1)
{
  if (a1)
  {
    return @"Google";
  }

  else
  {
    return @"Apple";
  }
}

void sub_1B9919504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ChronoServicesLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!ChronoServicesLibraryCore_frameworkLibrary)
  {
    ChronoServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = ChronoServicesLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __ChronoServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ChronoServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getCHSTimelineControllerClass_block_invoke(uint64_t a1)
{
  ChronoServicesLibrary();
  result = objc_getClass("CHSTimelineController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCHSTimelineControllerClass_block_invoke_cold_1();
  }

  getCHSTimelineControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void ChronoServicesLibrary()
{
  v0 = 0;
  if (!ChronoServicesLibraryCore())
  {
    ChronoServicesLibrary_cold_1(&v0);
  }
}

Class __getCHSWidgetServiceClass_block_invoke(uint64_t a1)
{
  ChronoServicesLibrary();
  result = objc_getClass("CHSWidgetService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCHSWidgetServiceClass_block_invoke_cold_1();
  }

  getCHSWidgetServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B991AD9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id anonString_block_invoke()
{
  v0 = MEMORY[0x1E696AEC0];
  ++anonString_block_invoke_count;
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v2 = [v0 stringWithFormat:@"SomeString-%@", v1];

  return v2;
}

id anonSummary_block_invoke_2()
{
  v0 = MEMORY[0x1E696AEC0];
  ++anonSummary_block_invoke_2_count;
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v2 = [v0 stringWithFormat:@"SomeSummary-%@", v1];

  return v2;
}

id anonDescription_block_invoke_3()
{
  v0 = MEMORY[0x1E696AEC0];
  ++anonDescription_block_invoke_3_count;
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v2 = [v0 stringWithFormat:@"SomeDescription-%@", v1];

  return v2;
}

id anonUID_block_invoke_4()
{
  v0 = CalGenerateUUID();
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SomeUID-%@", v0];

  return v1;
}

id anonURNUID_block_invoke_5()
{
  v0 = CalGenerateUUID();
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"uuid:SomeURNUID-%@", v0];

  return v1;
}

id anonName_block_invoke_6()
{
  v0 = MEMORY[0x1E696AEC0];
  ++anonName_block_invoke_6_count;
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v2 = [v0 stringWithFormat:@"Somebody-%@", v1];

  return v2;
}

id anonEmail_block_invoke_7()
{
  v0 = MEMORY[0x1E696AEC0];
  ++anonEmail_block_invoke_7_count;
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v2 = +[CaliCalendarAnonymizer sharedAnonymizedDomainName];
  v3 = [v0 stringWithFormat:@"SomeMr-%@@%@", v1, v2];

  return v3;
}

id anonLocation_block_invoke_8()
{
  v0 = MEMORY[0x1E696AEC0];
  ++anonLocation_block_invoke_8_count;
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v2 = [v0 stringWithFormat:@"SomeLoc-%@", v1];

  return v2;
}

id anonPhoneNumber_block_invoke_9()
{
  v0 = MEMORY[0x1E696AEC0];
  ++anonPhoneNumber_block_invoke_9_count;
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v2 = [v0 stringWithFormat:@"SomePhone-%@", v1];

  return v2;
}

id anonWebURL_block_invoke_10(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if ([v2 rangeOfString:@"//"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v3 appendString:@"//"];
  }

  v4 = random();
  if (v4 <= 0)
  {
    v5 = --v4;
  }

  else
  {
    v5 = v4;
  }

  v6 = random();
  if (v6 <= 0)
  {
    v7 = --v6;
  }

  else
  {
    v7 = v6;
  }

  v8 = random();
  if (v8 <= 0)
  {
    v9 = --v8;
  }

  else
  {
    v9 = v8;
  }

  v10 = random();
  if (v10 <= 0)
  {
    v11 = --v10;
  }

  else
  {
    v11 = v10;
  }

  [v3 appendFormat:@"%ld.%ld.%ld.%ld", v5, v7, v9, v11];
  if ([v2 rangeOfString:@".html"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = (random() % 26 + 97);
    v13 = (random() % 26 + 97);
    v14 = (random() % 26 + 97);
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%c%c%c%c", v12, v13, v14, (random() % 26 + 97)];
    [v3 appendString:@"/"];
    [v3 appendString:v15];
    [v3 appendString:@".html"];
  }

  return v3;
}

__CFString *CalXPCErrorTypeAsString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == MEMORY[0x1E69E9E20])
  {
    v6 = @"XPC_ERROR_CONNECTION_INVALID";
  }

  else if (v1 == MEMORY[0x1E69E9E18])
  {
    v6 = @"XPC_ERROR_CONNECTION_INTERRUPTED";
  }

  else if (v1 == MEMORY[0x1E69E9E38])
  {
    v6 = @"XPC_ERROR_TERMINATION_IMMINENT";
  }

  else if (v1 && (string = xpc_dictionary_get_string(v1, *MEMORY[0x1E69E9E28])) != 0)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = @"UNKNOWN";
    }
  }

  else
  {
    v6 = @"UNKNOWN";
  }

  return v6;
}

uint64_t OUTLINED_FUNCTION_6@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

void OUTLINED_FUNCTION_7(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

double EKAbsoluteTimeGetAbsoluteTimeInTimeZone(void *a1, void *a2, double a3)
{
  v5 = a2;
  GregorianDate = EKAbsoluteTimeGetGregorianDate(a1, a3);
  AbsoluteTime = EKGregorianDateGetAbsoluteTime(GregorianDate, v7, v5);

  return AbsoluteTime;
}

uint64_t EKAbsoluteTimeGetGregorianDate(void *a1, double a2)
{
  if (a1)
  {
    [a1 secondsFromGMTForAbsoluteTime:a2];
  }

  else
  {
    v3 = 0.0;
  }

  v5[0] = 0;
  v5[1] = 0;
  AbsoluteToYMDHMS(v5, v3 + a2);
  return v5[0];
}

double EKGregorianDateGetAbsoluteTime(unint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = __EKAbsoluteFromYMD(a1, (a1 >> 8) >> 24, (a1 >> 16) >> 24);
  v7 = v6;
  if (v5)
  {
    v8 = v6 + -1.0;
    [v5 secondsFromGMTForAbsoluteTime:v6 + -1.0];
    v10 = v9;
    v11 = v7 - v9;
    [v5 secondsFromGMTForAbsoluteTime:v7 - v9];
    if (v10 >= v12)
    {
      v14 = v12;
      [v5 secondsFromGMTForAbsoluteTime:v8];
      v10 = v15;
    }

    else
    {
      [v5 secondsFromGMTForAbsoluteTime:v11 + -1.0];
      v14 = v13;
    }

    v7 = v11 + v10 - v14;
  }

  v16 = (a1 >> 56) * 60.0 + ((a1 >> 24) >> 24) * 3600.0 + *&a2 + v7;
  if (v5)
  {
    v17 = v7 + -1.0;
    [v5 nextDaylightSavingTimeTransitionAfterAbsoluteTime:v7 + -1.0];
    if (v16 > v18)
    {
      v19 = v18;
      [v5 secondsFromGMTForAbsoluteTime:v17];
      v21 = v20;
      [v5 secondsFromGMTForAbsoluteTime:v16];
      v23 = v16 + v21 - v22;
      if (v23 >= v19)
      {
        v16 = v23;
      }
    }
  }

  return v16;
}

double EKGregorianDateGetAbsoluteTimeWithCFTimeZone(unint64_t a1, uint64_t a2)
{
  v4 = [EKTimeZone timeZoneWithNSTimeZone:?];
  AbsoluteTime = EKGregorianDateGetAbsoluteTime(a1, a2, v4);

  return AbsoluteTime;
}

double __EKAbsoluteFromYMD(unint64_t a1, int a2, int a3)
{
  if (a1 - 1801 > 0x12A)
  {
    v7 = ((10923 * (a2 - 14)) >> 17) + ((10923 * (a2 - 14)) >> 31);
    v8 = a1 + v7;
    v9 = 1461 * v8 + 7012803;
    if ((1461 * v8 + 7012800) >= 0)
    {
      v9 = 1461 * v8 + 7012800;
    }

    v10 = 715827883 * (367 * (a2 - 12 * v7) - 734);
    v6 = ((v9 >> 2) + a3 - 3 * ((v8 + 4900) / 100) / 4 + ((v10 >> 33) + (v10 >> 63)) - 32075);
    v5 = -0.5;
  }

  else
  {
    v3 = 367 * a1 + a3 + 275 * a2 / 9 - ((7 * (a1 + (((10923 * (a2 + 9)) >> 17) + ((10923 * (a2 + 9)) >> 31)))) >> 2);
    if (a1 > 0x76C)
    {
      v6 = v3;
      v5 = 1721013.5;
    }

    else
    {
      v4 = -0.5;
      v5 = 0.5;
      if ((100 * a1 + a2) + -190002.5 >= 0.0)
      {
        v4 = 0.5;
      }

      v6 = v3 + 1721013.5 - v4;
    }
  }

  return (v6 + v5 + -2451910.5) * *&CalTimeInterval_OneDayInSeconds;
}

double EKGregorianComponentsGetAbsoluteTime(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = __EKAbsoluteFromYMD([v4 year], objc_msgSend(v4, "month"), objc_msgSend(v4, "day"));
  v6 = [v4 hour];
  v7 = [v4 minute] * 60.0 + v6 * 3600.0;
  v8 = [v4 second];

  v9 = v5 + v7 + v8;
  if (v3)
  {
    [v3 secondsFromGMTForAbsoluteTime:v9];
    [v3 secondsFromGMTForAbsoluteTime:v9 - v10];
    v9 = v9 - v11;
  }

  return v9;
}

uint64_t AbsoluteToYMDHMS(uint64_t result, double a2)
{
  v2 = a2 / *&CalTimeInterval_OneDayInSeconds + 2451910.5 + 0.5;
  v3 = v2;
  v4 = ((v3 + -1867216.25) / 36524.25);
  v5 = v4 + 3;
  if (v4 >= 0)
  {
    v5 = ((v3 + -1867216.25) / 36524.25);
  }

  v6 = v2 + v4 - (v5 >> 2) + 1525;
  v7 = ((v6 + -122.1) / 365.25);
  v8 = v6 - (v7 * 365.25);
  v9 = (v8 / 30.6001);
  v10 = v2 - v3;
  v11 = v9;
  v12 = -13;
  if (v9 < 14)
  {
    v12 = -1;
  }

  v13 = v12 + v9;
  if (v13 >= 3)
  {
    v14 = -4716;
  }

  else
  {
    v14 = -4715;
  }

  *result = v14 + v7;
  *(result + 4) = v13;
  *(result + 5) = (v10 + (v8 - (v11 * 30.6001)));
  v15 = vrndmq_f64(vdivq_f64(vdupq_lane_s64(*&a2, 0), xmmword_1B997D850));
  v16 = a2 - 60.0 * v15.f64[0];
  v17 = vcvt_s32_f32(vcvt_f32_f64(vrndmq_f64(vmlsq_f64(v15, xmmword_1B997D860, vrndmq_f64(vdivq_f64(v15, xmmword_1B997D860))))));
  v18 = vcltz_s32(v17);
  if (v18.i8[4])
  {
    v19 = 24;
  }

  else
  {
    v19 = 0;
  }

  *(result + 6) = v19 + v17.i8[4];
  if (v18.i8[0])
  {
    v20 = 60;
  }

  else
  {
    v20 = 0;
  }

  *(result + 7) = v20 + v17.i8[0];
  if (v16 < 0.0)
  {
    v16 = v16 + 60.0;
  }

  if (v16 == 0.0)
  {
    v16 = 0.0;
  }

  *(result + 8) = v16;
  return result;
}

uint64_t EKAbsoluteTimeGetDayOfWeek(void *a1, double a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    [v3 secondsFromGMTForAbsoluteTime:a2];
  }

  else
  {
    v5 = 0.0;
  }

  v6 = vcvtmd_s64_f64((v5 + a2) / *&CalTimeInterval_OneDayInSeconds);
  v7 = (~v6 * 0x2492492492492493uLL) >> 64;
  v8 = (~v6 - 7 * ((v7 + ((~v6 - v7) >> 1)) >> 2)) ^ 7;
  if (v6 >= 0)
  {
    v9 = v6 % 7uLL + 1;
  }

  else
  {
    v9 = v8;
  }

  if (v9 <= 6)
  {
    v10 = (v9 + 1);
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

uint64_t EKAbsoluteTimeGetDayOfYear(void *a1, double a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    [v3 secondsFromGMTForAbsoluteTime:a2];
  }

  else
  {
    v5 = 0.0;
  }

  v12[0] = 0;
  v12[1] = 0;
  AbsoluteToYMDHMS(v12, (v5 + a2));
  v6 = 0;
  if ((v12[0] & 3) == 0)
  {
    HIDWORD(v7) = -1030792151 * LODWORD(v12[0]) + 85899344;
    LODWORD(v7) = HIDWORD(v7);
    if ((v7 >> 2) <= 0x28F5C28)
    {
      HIDWORD(v8) = -1030792151 * LODWORD(v12[0]) + 85899344;
      LODWORD(v8) = HIDWORD(v8);
      v6 = (v8 >> 4) < 0xA3D70B;
    }

    else
    {
      v6 = 1;
    }
  }

  v9 = daysBeforeMonth[16 * v6 + SBYTE4(v12[0])];
  v10 = SBYTE5(v12[0]);

  return (v10 + v9);
}

uint64_t EKAbsoluteTimeGetWeekOfYear(void *a1, double a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    [v3 secondsFromGMTForAbsoluteTime:a2];
  }

  else
  {
    v5 = 0.0;
  }

  v20[0] = 0;
  v20[1] = 0;
  AbsoluteToYMDHMS(v20, floor((v5 + a2) / *&CalTimeInterval_OneDayInSeconds));
  v6 = SLODWORD(v20[0]);
  v7 = __EKAbsoluteFromYMD(SLODWORD(v20[0]), 1, 1);
  *&v7 = floor(v7 - floor(v7 / 7.0) * 7.0);
  v8 = ((*&v7 >> 31) & 7) + *&v7;
  v9 = SBYTE4(v20[0]);
  v10 = SBYTE5(v20[0]);
  if (SBYTE4(v20[0]) == 1 && SBYTE5(v20[0]) <= 3)
  {
    if (v8 == 4 || SBYTE5(v20[0]) <= 2 && v8 == 5 || SBYTE5(v20[0]) < 2 && v8 == 6)
    {
      v11 = 53;
      goto LABEL_24;
    }
  }

  else if (SBYTE4(v20[0]) == 12 && SBYTE5(v20[0]) >= 29)
  {
    v11 = 1;
    v12 = __EKAbsoluteFromYMD(v6 + 1, 1, 1);
    v13 = floor(v12 - floor(v12 / 7.0) * 7.0);
    v14 = (v13 >> 31) & 7;
    if (v13 + v14 == 3 || v10 >= 0x1E && v13 + v14 == 2)
    {
      goto LABEL_24;
    }

    if (v10 >= 0x1F && v13 + v14 == 1)
    {
      goto LABEL_24;
    }
  }

  HIDWORD(v16) = -1030792151 * v6 + 85899344;
  LODWORD(v16) = HIDWORD(v16);
  v15 = v16 >> 2;
  LODWORD(v16) = HIDWORD(v16);
  v17 = (v16 >> 4) < 0xA3D70B;
  if (v15 > 0x28F5C28)
  {
    v17 = 1;
  }

  if ((v6 & 3) != 0)
  {
    v17 = 0;
  }

  v18 = (2454267027 * (v8 - 10 + v10 + daysBeforeMonth[16 * v17 + v9] - 7 * ((v8 - 10) / 7) + 2)) >> 32;
  v11 = (v18 >> 2) + (v18 >> 31) + 1;
LABEL_24:

  return v11;
}

uint64_t EKAbsoluteTimeGetGregorianDateForWeekStart(void *a1, uint64_t a2, void *a3, double a4)
{
  v7 = a1;
  v8 = EKAbsoluteTimeGetDayOfWeek(v7, a4) - 1;
  v9 = 7;
  if (a2 - 1 <= v8)
  {
    v9 = 0;
  }

  v10 = v8 - a2 + v9 + 1;
  if (a3)
  {
    *a3 = v10;
  }

  v16 = 0;
  v15 = 0;
  v17 = 0;
  *&v14 = 0;
  *(&v14 + 1) = -v10;
  v11 = EKAbsoluteTimeAddGregorianDuration(v7, &v14, a4);
  GregorianDate = EKAbsoluteTimeGetGregorianDate(v7, v11);

  return GregorianDate & 0xFFFFFFFFFFFFLL;
}

double EKAbsoluteTimeAddGregorianDuration(void *a1, _OWORD *a2, double a3)
{
  v5 = a1;
  GregorianDate = EKAbsoluteTimeGetGregorianDate(v5, a3);
  v7 = a2[1];
  *&v22.years = *a2;
  *&v22.minutes = v7;
  v9 = EKAddGregorianUnits(GregorianDate, v8, &v22.years);
  v11 = *&v10;
  AbsoluteTime = EKGregorianDateGetAbsoluteTime(v9, v10, v5);
  v13 = a2[1];
  *&v22.years = *a2;
  *&v22.minutes = v13;
  v14 = CFAbsoluteTimeAddGregorianUnits(0.0, 0, &v22);
  if (v14 < 0.0)
  {
    v15 = v14 + a3;
    [v5 nextDaylightSavingTimeTransitionAfterAbsoluteTime:v14 + a3];
    if (v16 <= a3 && v16 > v15)
    {
      v18 = EKAbsoluteTimeGetGregorianDate(v5, AbsoluteTime);
      v20 = v19 - v11 + ((((v18 >> 24) >> 24) - ((v9 >> 24) >> 24)) * 3600.0) + ((SHIDWORD(v18) >> 24) - (SHIDWORD(v9) >> 24)) * 60.0;
      if (v20 > 0.1)
      {
        AbsoluteTime = AbsoluteTime - v20;
      }
    }
  }

  return AbsoluteTime;
}

unint64_t EKAddGregorianUnits(unint64_t a1, uint64_t a2, double *a3)
{
  v3 = *(a3 + 3) + ((a1 >> 24) >> 24);
  v4 = *(a3 + 4) + (a1 >> 56);
  v5 = a3[3] + *&a2;
  if (v5 > 59.0 || v5 < 0.0)
  {
    v4 = (v5 / 60 + v4);
  }

  v6 = (a1 >> 16) >> 24;
  if (v4 >= 0x3C)
  {
    v3 += v4 / 60;
    v4 = (v4 % 60);
  }

  v7 = *(a3 + 1) + ((a1 >> 8) >> 24);
  if (v3 >= 0x18)
  {
    *(a3 + 2) += v3 / 24;
    v3 %= 24;
    v6 += v3 >> 31;
    if (v3 < 0)
    {
      LOBYTE(v3) = v3 + 24;
    }
  }

  v8 = *a3;
  if (v7 < 13)
  {
    v11 = v8 + a1;
  }

  else
  {
    v9 = v7 - 24;
    if (v7 < 0x18)
    {
      v9 = 0;
    }

    v10 = (v9 + 11) / 0xCu;
    v7 = v7 - 12 * v10 - 12;
    v11 = v8 + a1 + v10 + 1;
  }

  if (v7 <= 0)
  {
    if (v7 <= -11)
    {
      v12 = -11;
    }

    else
    {
      v12 = v7;
    }

    if (v7 >= -11)
    {
      v13 = v7;
    }

    else
    {
      v13 = v7 + 1;
    }

    v14 = (v12 - v13) / 0xCu;
    if (v7 < -11)
    {
      ++v14;
    }

    v7 += 12 * v14 + 12;
    v11 += ~v14;
  }

  if ((v11 & 3) != 0)
  {
    v15 = 0;
  }

  else
  {
    HIDWORD(v16) = -1030792151 * v11 + 85899344;
    LODWORD(v16) = HIDWORD(v16);
    if ((v16 >> 2) <= 0x28F5C28)
    {
      HIDWORD(v17) = -1030792151 * v11 + 85899344;
      LODWORD(v17) = HIDWORD(v17);
      v15 = (v17 >> 4) < 0xA3D70B;
    }

    else
    {
      v15 = 1;
    }
  }

  v18 = daysInMonth[16 * v15 + v7];
  if (v6 >= v18)
  {
    v6 = v18;
  }

  for (i = (v6 + *(a3 + 2)); i > v18; v18 = daysInMonth[16 * v20 + v7])
  {
    if (v7 <= 11)
    {
      ++v7;
    }

    else
    {
      ++v11;
      v7 = 1;
    }

    if ((v11 & 3) != 0)
    {
      v20 = 0;
    }

    else
    {
      HIDWORD(v21) = 85899344 - 1030792151 * v11;
      LODWORD(v21) = HIDWORD(v21);
      if ((v21 >> 2) <= 0x28F5C28)
      {
        HIDWORD(v22) = 85899344 - 1030792151 * v11;
        LODWORD(v22) = HIDWORD(v22);
        v20 = (v22 >> 4) < 0xA3D70B;
      }

      else
      {
        v20 = 1;
      }
    }

    i = (i - v18);
  }

  if (i <= 0)
  {
    do
    {
      v23 = v7 < 2;
      if (v7 >= 2)
      {
        --v7;
      }

      else
      {
        v7 = 12;
      }

      v11 -= v23;
      if ((v11 & 3) != 0)
      {
        v24 = 0;
      }

      else
      {
        HIDWORD(v25) = 85899344 - 1030792151 * v11;
        LODWORD(v25) = HIDWORD(v25);
        if ((v25 >> 2) <= 0x28F5C28)
        {
          HIDWORD(v26) = 85899344 - 1030792151 * v11;
          LODWORD(v26) = HIDWORD(v26);
          v24 = (v26 >> 4) < 0xA3D70B;
        }

        else
        {
          v24 = 1;
        }
      }

      i = i + daysInMonth[16 * v24 + v7];
    }

    while (i < 1);
  }

  return (v4 << 56) | (v3 << 48) | (i << 40) | (v7 << 32) | v11;
}

double EKAbsoluteTimeAddGregorianUnits(void *a1, uint64_t a2, double a3)
{
  v5 = a1;
  GregorianDate = EKAbsoluteTimeGetGregorianDate(v5, a3);
  v8 = *a2 + GregorianDate;
  v9 = *(a2 + 4) + ((GregorianDate >> 8) >> 24);
  if (v9 >= 13)
  {
    v10 = v9 - 24;
    if (v9 < 0x18)
    {
      v10 = 0;
    }

    v11 = (v10 + 11) / 0xCu;
    v9 = v9 - 12 * v11 - 12;
    v8 += v11 + 1;
  }

  if (v9 <= 0)
  {
    if (v9 <= -11)
    {
      v12 = -11;
    }

    else
    {
      v12 = v9;
    }

    if (v9 >= -11)
    {
      v13 = v9;
    }

    else
    {
      v13 = v9 + 1;
    }

    v14 = (v12 - v13) / 0xCu;
    if (v9 < -11)
    {
      ++v14;
    }

    v9 += 12 * v14 + 12;
    v8 += ~v14;
  }

  v15 = (GregorianDate >> 16) >> 24;
  if ((v8 & 3) != 0)
  {
    v16 = 0;
  }

  else
  {
    HIDWORD(v17) = -1030792151 * v8 + 85899344;
    LODWORD(v17) = HIDWORD(v17);
    if ((v17 >> 2) <= 0x28F5C28)
    {
      HIDWORD(v18) = -1030792151 * v8 + 85899344;
      LODWORD(v18) = HIDWORD(v18);
      v16 = (v18 >> 4) < 0xA3D70B;
    }

    else
    {
      v16 = 1;
    }
  }

  v19 = daysInMonth[16 * v16 + v9];
  if (v15 >= v19)
  {
    v15 = v19;
  }

  for (i = (v15 + *(a2 + 8)); i > v19; v19 = daysInMonth[16 * v21 + v9])
  {
    if (v9 <= 11)
    {
      ++v9;
    }

    else
    {
      ++v8;
      v9 = 1;
    }

    if ((v8 & 3) != 0)
    {
      v21 = 0;
    }

    else
    {
      HIDWORD(v22) = 85899344 - 1030792151 * v8;
      LODWORD(v22) = HIDWORD(v22);
      if ((v22 >> 2) <= 0x28F5C28)
      {
        HIDWORD(v23) = 85899344 - 1030792151 * v8;
        LODWORD(v23) = HIDWORD(v23);
        v21 = (v23 >> 4) < 0xA3D70B;
      }

      else
      {
        v21 = 1;
      }
    }

    i = (i - v19);
  }

  if (i <= 0)
  {
    do
    {
      v24 = v9 < 2;
      if (v9 >= 2)
      {
        --v9;
      }

      else
      {
        v9 = 12;
      }

      v8 -= v24;
      if ((v8 & 3) != 0)
      {
        v25 = 0;
      }

      else
      {
        HIDWORD(v26) = 85899344 - 1030792151 * v8;
        LODWORD(v26) = HIDWORD(v26);
        if ((v26 >> 2) <= 0x28F5C28)
        {
          HIDWORD(v27) = 85899344 - 1030792151 * v8;
          LODWORD(v27) = HIDWORD(v27);
          v25 = (v27 >> 4) < 0xA3D70B;
        }

        else
        {
          v25 = 1;
        }
      }

      i = i + daysInMonth[16 * v25 + v9];
    }

    while (i < 1);
  }

  v28 = *(a2 + 24) + EKGregorianDateGetAbsoluteTime(GregorianDate & 0xFFFF000000000000 | (i << 40) | (v9 << 32) | v8, v7, v5) + *(a2 + 12) * 3600.0 + *(a2 + 16) * 60.0;

  return v28;
}

void EKAbsoluteTimeGetDifferenceAsGregorianUnits(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v9 = a1;
  v10 = 0;
  if (a5 < a4)
  {
    v11 = 1;
  }

  else
  {
    v11 = -1;
  }

  *a3 = 0uLL;
  *(a3 + 16) = 0uLL;
  v12 = a5;
  v20 = v9;
  do
  {
    if (((1 << v10) & a2) != 0)
    {
      v13 = ((a4 - v12) / dword_1B997D8D0[v10]);
      *(a3 + 4 * v10) = -3 * v11 + v13;
      v14 = -4 * v11 + v13;
      v15 = -2 * v11 + v13;
      do
      {
        v16 = v12;
        *(a3 + 4 * v10) = v15;
        v17 = *(a3 + 16);
        v21[0] = *a3;
        v21[1] = v17;
        v12 = EKAbsoluteTimeAddGregorianUnits(v20, v21, a5);
        v9 = v20;
        v18 = v12 <= a4;
        if (a5 >= a4)
        {
          v18 = v12 >= a4;
        }

        v14 += v11;
        v15 += v11;
      }

      while (v18);
      *(a3 + 4 * v10) = v14;
      v12 = v16;
    }

    ++v10;
  }

  while (v10 != 5);
  if ((a2 & 0x20) == 0 || (v19 = a4 - v12, *(a3 + 24) = v19, v19 == 0.0))
  {
    *(a3 + 24) = 0;
  }
}

id EKCachedTimeZoneWithName(void *a1)
{
  v1 = a1;
  if (EKCachedTimeZoneWithName_onceToken != -1)
  {
    EKCachedTimeZoneWithName_cold_1();
  }

  v2 = [EKCachedTimeZoneWithName_timeZoneCache objectForKey:v1];
  if (v2)
  {
    v3 = v2;
    v4 = [MEMORY[0x1E695DFB0] null];
    v5 = [v4 isEqual:v3];

    if (!v5)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v6 = [MEMORY[0x1E695DFE8] timeZoneWithName:v1];
  if (!v6)
  {
    v6 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:v1];
    if (!v6)
    {
      v8 = EKCachedTimeZoneWithName_timeZoneCache;
      v9 = [MEMORY[0x1E695DFB0] null];
      [v8 setObject:v9 forKey:v1];

LABEL_6:
      v3 = 0;
      goto LABEL_10;
    }
  }

  v3 = v6;
  [EKCachedTimeZoneWithName_timeZoneCache setObject:v6 forKey:v1];
LABEL_10:

  return v3;
}

uint64_t __EKCachedTimeZoneWithName_block_invoke()
{
  EKCachedTimeZoneWithName_timeZoneCache = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

id EKDateComponentsGetDate(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2;
  v18 = __Block_byref_object_dispose__2;
  v19 = 0;
  v5 = _EKSharedGregorianCalendarLock();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __EKDateComponentsGetDate_block_invoke;
  block[3] = &unk_1E7EC67F0;
  v12 = v4;
  v13 = &v14;
  v11 = v3;
  v6 = v4;
  v7 = v3;
  dispatch_sync(v5, block);

  v8 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v8;
}

void __EKDateComponentsGetDate_block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v5 = _EKSharedGregorianCalendarForTimeZone(*(a1 + 40));
    v2 = [v5 dateFromComponents:*(a1 + 32)];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

void sub_1B99217B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B9922328(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v4 = objc_begin_catch(exception_object);
    v5 = [v3 logHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(CalSubscribedCalendarExternalRepresentation *)v4 dictionaryWithExternalRepresentationData:v5, v6, v7, v8, v9, v10, v11];
    }

    objc_end_catch();
    if (!v2)
    {
      JUMPOUT(0x1B99222C8);
    }

    JUMPOUT(0x1B99222DCLL);
  }

  _Unwind_Resume(exception_object);
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_1B99274FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *CalRedactURLString(void *a1)
{
  v80 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v3 = 0;
    goto LABEL_107;
  }

  if ([v1 hasPrefix:@"tel:"])
  {
    v3 = @"tel:<private>";
    goto LABEL_107;
  }

  if ([v2 hasPrefix:@"mailto:"])
  {
    v3 = @"mailto:<private>";
    goto LABEL_107;
  }

  v4 = 0x1E696A000uLL;
  v62 = v2;
  if ([v2 hasPrefix:@"urn:"])
  {
    v5 = v2;
    v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v6 = [v5 componentsSeparatedByString:@":"];
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v73 objects:v79 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v74;
      do
      {
        v10 = 0;
        do
        {
          if (*v74 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v73 + 1) + 8 * v10);
          if (([v11 isEqualToString:@"urn"] & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"x-uid") & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"uuid"))
          {
            v12 = v11;
          }

          else
          {
            v12 = uuidWithUnknownExtensionsRedacted(v11);
          }

          if (v12)
          {
            v13 = v12;
          }

          else
          {
            v13 = @"<private>";
          }

          [(__CFString *)v3 appendString:v13];
          [(__CFString *)v3 appendString:@":"];

          ++v10;
        }

        while (v8 != v10);
        v14 = [v6 countByEnumeratingWithState:&v73 objects:v79 count:16];
        v8 = v14;
      }

      while (v14);
    }

    if ([(__CFString *)v3 length])
    {
      [(__CFString *)v3 deleteCharactersInRange:[(__CFString *)v3 length]- 1, 1];
    }

    goto LABEL_106;
  }

  v15 = [v2 componentsSeparatedByString:@"/"];
  v16 = [v15 lastObject];
  if (getPublicURLParts_onceToken != -1)
  {
    CalRedactURLString_cold_1();
  }

  v68 = getPublicURLParts_publicURLParts;
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v17 = v15;
  v18 = [v17 countByEnumeratingWithState:&v69 objects:v77 count:16];
  if (!v18)
  {

    v34 = 0;
LABEL_49:
    if ([(__CFString *)v3 length])
    {
      [(__CFString *)v3 deleteCharactersInRange:[(__CFString *)v3 length]- 1, 1];
    }

    if (!v34)
    {
      goto LABEL_105;
    }

    goto LABEL_52;
  }

  v19 = v18;
  v64 = 0;
  v20 = 0;
  v21 = *v70;
  do
  {
    v22 = v17;
    v23 = 0;
    v24 = v20;
    do
    {
      if (*v70 != v21)
      {
        objc_enumerationMutation(v22);
      }

      v25 = *(*(&v69 + 1) + 8 * v23);
      if (v16 == v25)
      {
        v26 = [v16 rangeOfString:@"?"];
        if (v26 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v27 = v26;
          v28 = [v16 substringFromIndex:v26 + 1];

          v29 = [v16 substringToIndex:v27];

          v64 = v28;
          v25 = v29;
        }
      }

      v30 = [v25 lowercaseString];
      v31 = [v68 containsObject:v30];

      if (v31)
      {
        v32 = v25;
      }

      else
      {
        v32 = uuidWithUnknownExtensionsRedacted(v25);
      }

      v33 = v32;
      v20 = v32 == 0;
      if (v32)
      {
        if (v24)
        {
          [(__CFString *)v3 appendString:@"<private>/"];
        }

        [(__CFString *)v3 appendFormat:@"%@/", v33];
      }

      ++v23;
      v24 = v20;
    }

    while (v19 != v23);
    v17 = v22;
    v19 = [v22 countByEnumeratingWithState:&v69 objects:v77 count:16];
  }

  while (v19);

  if (v33)
  {
    v34 = v64;
    v4 = 0x1E696A000;
    goto LABEL_49;
  }

  [(__CFString *)v3 appendString:@"<private>"];
  v34 = v64;
  v4 = 0x1E696A000;
  if (!v64)
  {
    goto LABEL_105;
  }

LABEL_52:
  v35 = v34;
  v36 = [objc_alloc(*(v4 + 3424)) initWithCapacity:{objc_msgSend(v35, "length")}];
  v37 = [v35 componentsSeparatedByString:@"&"];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = v37;
  v38 = [v37 countByEnumeratingWithState:&v73 objects:v79 count:16];
  if (!v38)
  {
LABEL_99:
    if ([v36 length])
    {
      [v36 deleteCharactersInRange:{objc_msgSend(v36, "length") - 1, 1}];
    }

    goto LABEL_104;
  }

  v39 = v38;
  v65 = v34;
  v66 = v36;
  v61 = v17;
  v40 = 0;
  v67 = *v74;
  do
  {
    v41 = 0;
    v42 = v40;
    do
    {
      if (*v74 != v67)
      {
        objc_enumerationMutation(obj);
      }

      v43 = *(*(&v73 + 1) + 8 * v41);
      v44 = [v43 lowercaseString];
      if ([v44 isEqualToString:@"action=split"])
      {
        v45 = v43;
      }

      else
      {
        v45 = 0;
      }

      if (![v44 hasPrefix:@"rid="])
      {
        goto LABEL_87;
      }

      v46 = [v44 length];
      if (v46 > 0x14 || ((1 << v46) & 0x181000) == 0)
      {
LABEL_85:
        v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"rid=<malformed date or not-a-date, %lu characters>", objc_msgSend(v43, "length") - 4];
        goto LABEL_86;
      }

      v48 = v46 - 4;
      [v44 getCharacters:v78 range:{4, v46 - 4}];
      v49 = 0;
      v78[v48] = 0;
      v50 = 1;
      while (1)
      {
        v51 = v78[v49];
        if ((v51 - 48) < 0xA)
        {
          goto LABEL_72;
        }

        if (v49 != 15)
        {
          break;
        }

        if (v51 != 122)
        {
LABEL_74:
          if (v78[v49])
          {
            goto LABEL_85;
          }

LABEL_75:
          v52 = 1;
          if (!v50)
          {
            goto LABEL_85;
          }

          goto LABEL_76;
        }

LABEL_72:
        v50 = v49++ < 0x10;
        if (v49 == 17)
        {
          goto LABEL_75;
        }
      }

      if (v49 == 8)
      {
        if (v51 != 116)
        {
          goto LABEL_74;
        }

        goto LABEL_72;
      }

      v52 = v49 == 16 && v51 == 0;
      if (!v50)
      {
        goto LABEL_85;
      }

LABEL_76:
      if (!v52)
      {
        goto LABEL_85;
      }

      v53 = v43;
LABEL_86:
      v55 = v53;

      v45 = v55;
LABEL_87:
      if ([v44 hasPrefix:@"uid="])
      {
        v56 = [v43 substringFromIndex:4];
        v57 = uuidWithUnknownExtensionsRedacted(v56);

        if (v57)
        {
          v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"uid=%@", v57];
        }

        else
        {
          v58 = @"uid=<private>";
        }

        v45 = v58;
      }

      v40 = v45 == 0;
      if (v45)
      {
        if (v42)
        {
          [v66 appendString:@"<private>&"];
        }

        [v66 appendFormat:@"%@&", v45];
      }

      ++v41;
      v42 = v45 == 0;
    }

    while (v41 != v39);
    v39 = [obj countByEnumeratingWithState:&v73 objects:v79 count:16];
  }

  while (v39);
  v17 = v61;
  v34 = v65;
  v36 = v66;
  if (v45)
  {
    goto LABEL_99;
  }

  [v66 appendString:@"<private>"];
LABEL_104:

  [(__CFString *)v3 appendFormat:@"?%@", v36];
LABEL_105:

LABEL_106:
  v2 = v62;
LABEL_107:

  v59 = *MEMORY[0x1E69E9840];

  return v3;
}

id uuidWithUnknownExtensionsRedacted(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 componentsSeparatedByString:@"."];
  v3 = [v2 count];
  if ((v3 - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    v4 = 0;
    goto LABEL_28;
  }

  if (v3 != 2)
  {
    v6 = 0;
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v5 = [v2 objectAtIndexedSubscript:1];
  v6 = v5;
  if (!v5 || ![v5 compare:@"xml" options:1])
  {
    goto LABEL_8;
  }

  v7 = [v6 compare:@"ics" options:1] != 0;
LABEL_9:
  v8 = [v2 objectAtIndexedSubscript:0];
  v9 = [v8 length];
  v4 = 0;
  if ((v9 - 71) >= 0xFFFFFFFFFFFFFFD9)
  {
    v10 = v9;
    [v8 getCharacters:v18];
    v11 = 0;
    do
    {
      v12 = v18[v11];
      if (((v12 - 65) > 0x25 || ((1 << (v12 - 65)) & 0x3F0000003FLL) == 0) && v12 != 45 && (v12 - 48) > 9)
      {
        v4 = 0;
        goto LABEL_27;
      }

      ++v11;
    }

    while (v10 != v11);
    if (v7)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.<private>", v8];
    }

    else
    {
      v15 = v1;
    }

    v4 = v15;
  }

LABEL_27:

LABEL_28:
  v16 = *MEMORY[0x1E69E9840];

  return v4;
}

uint64_t __getPublicURLParts_block_invoke()
{
  getPublicURLParts_publicURLParts = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F37B0568];

  return MEMORY[0x1EEE66BB8]();
}

BOOL UnzipArchive(void *a1, void *a2)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1;
  BOMCopierNew();
  [v4 fileSystemRepresentation];

  [v3 fileSystemRepresentation];
  v5 = *MEMORY[0x1E695E4D0];
  v9[0] = @"extractPKZip";
  v9[1] = @"sequesterResources";
  v10[0] = v5;
  v10[1] = v5;
  v9[2] = @"copyResources";
  v10[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];
  LODWORD(v4) = BOMCopierCopyWithOptions();
  BOMCopierFree();

  v7 = *MEMORY[0x1E69E9840];
  return v4 == 0;
}

id CalTemporaryDirectory()
{
  v0 = [MEMORY[0x1E696AC08] defaultManager];
  v1 = [v0 CalTemporaryDirectoryAppropriateForURL:0];
  v2 = [v1 path];

  return v2;
}

void fatalBomError(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  NSLog(&cfstr_CouldnTCreateA.isa, v2);
}

void fatalBomFileError(uint64_t a1, uint64_t a2)
{
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void fatalBomFileError(BOMCopier, const char *, int)"}];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  v4 = MEMORY[0x1E696AEC0];
  v5 = __error();
  v6 = [v4 stringWithUTF8String:strerror(*v5)];
  NSLog(&cfstr_CouldnTCreateA_0.isa, v7, v3, v6);
}

id GetStaticAutoUpdatingCurrentLocale()
{
  if (GetStaticAutoUpdatingCurrentLocale_onceToken != -1)
  {
    GetStaticAutoUpdatingCurrentLocale_cold_1();
  }

  v1 = GetStaticAutoUpdatingCurrentLocale_sLocale;

  return v1;
}

uint64_t __GetStaticAutoUpdatingCurrentLocale_block_invoke()
{
  GetStaticAutoUpdatingCurrentLocale_sLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t CurrentLocaleExpectsSurnameFirst()
{
  if (CurrentLocaleExpectsSurnameFirst_onceToken != -1)
  {
    CurrentLocaleExpectsSurnameFirst_cold_1();
  }

  v0 = CurrentLocaleExpectsSurnameFirst_sSurnameFirstCountries;
  v1 = GetStaticAutoUpdatingCurrentLocale();
  v2 = [v1 objectForKey:*MEMORY[0x1E695D978]];
  v3 = [v0 containsObject:v2];

  return v3;
}

uint64_t __CurrentLocaleExpectsSurnameFirst_block_invoke()
{
  CurrentLocaleExpectsSurnameFirst_sSurnameFirstCountries = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"CN", @"JP", @"KP", @"KR", @"VN", @"HU", 0}];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t CurrentLocaleExpectsMultipleFamilyNames()
{
  if (!CurrentLocaleExpectsMultipleFamilyNames_sMultipleFamilyNameLanguages)
  {
    v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"ca", @"es", 0}];
    v1 = CurrentLocaleExpectsMultipleFamilyNames_sMultipleFamilyNameLanguages;
    CurrentLocaleExpectsMultipleFamilyNames_sMultipleFamilyNameLanguages = v0;
  }

  if (CurrentLocaleExpectsSurnameFirst())
  {
    return 0;
  }

  v3 = CurrentLocaleExpectsMultipleFamilyNames_sMultipleFamilyNameLanguages;
  v4 = GetStaticAutoUpdatingCurrentLocale();
  v5 = [v4 objectForKey:*MEMORY[0x1E695D9B0]];
  v6 = [v3 containsObject:v5];

  return v6;
}

id DisplayNameStringForIdentityWithProperties(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 length] || objc_msgSend(v4, "length"))
  {
    v5 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    [v5 setGivenName:v3];
    [v5 setFamilyName:v4];
    v6 = [CalPersonNameComponentsFormatter stringFromPersonNameComponents:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1B992C4F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B992CB18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11)
{
  if (v11)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

BOOL __canFetchPersonas_block_invoke()
{
  result = [CalEntitlementsVerifier currentProcessHasBooleanEntitlement:@"com.apple.usermanagerd.persona.fetch"];
  canFetchPersonas_canFetchPersonas = result;
  return result;
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_0_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id _acquireArrayFromDictionary(id *a1, void *a2)
{
  v3 = a2;
  v4 = *a1;
  if (!*a1)
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
    v6 = *a1;
    *a1 = v5;

    v4 = *a1;
  }

  v7 = [v4 objectForKeyedSubscript:v3];
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DF70] array];
    [*a1 setObject:v7 forKeyedSubscript:v3];
  }

  return v7;
}

id _acquireSetFromDictionary(id *a1, void *a2)
{
  v3 = a2;
  v4 = *a1;
  if (!*a1)
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
    v6 = *a1;
    *a1 = v5;

    v4 = *a1;
  }

  v7 = [v4 objectForKeyedSubscript:v3];
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DFA8] set];
    [*a1 setObject:v7 forKeyedSubscript:v3];
  }

  return v7;
}

id _acquireArrayFromTable(id *a1, void *a2)
{
  v3 = a2;
  v4 = *a1;
  if (!*a1)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    v6 = *a1;
    *a1 = v5;

    v4 = *a1;
  }

  v7 = [v4 objectForKey:v3];
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DF70] array];
    [*a1 setObject:v7 forKey:v3];
  }

  return v7;
}

void CalAnalyticsSendEvent(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [@"com.apple.calendar." stringByAppendingString:a1];
  AnalyticsSendEvent();
}

uint64_t CalAnalyticsSendEventLazy(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [@"com.apple.calendar." stringByAppendingString:a1];
  v8 = v3;
  v5 = v3;
  v6 = AnalyticsSendEventLazy();

  return v6;
}

id __CalAnalyticsSendEventLazy_block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, v2);
  }

  return v2;
}

uint64_t CalAnalyticsIsEventUsed(uint64_t a1)
{
  v1 = [@"com.apple.calendar." stringByAppendingString:a1];
  IsEventUsed = AnalyticsIsEventUsed();

  return IsEventUsed;
}

double CalAnalyticsTimeIntervalFromMachTimes(uint64_t a1, uint64_t a2)
{
  if (CalAnalyticsTimeIntervalFromMachTimes_onceToken != -1)
  {
    CalAnalyticsTimeIntervalFromMachTimes_cold_1();
  }

  return *&CalAnalyticsTimeIntervalFromMachTimes_timebaseFactor * (a2 - a1);
}

double __CalAnalyticsTimeIntervalFromMachTimes_block_invoke()
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  result = v0 / v1 / 1000000000.0;
  CalAnalyticsTimeIntervalFromMachTimes_timebaseFactor = *&result;
  return result;
}

void sub_1B992FB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CalendarFoundationPerformBlockOnSharedContactStore(void *a1)
{
  v1 = a1;
  v2 = +[CalContactsProvider defaultProvider];
  v3 = [v2 store];

  if (CalendarFoundationPerformBlockOnSharedContactStore_onceToken != -1)
  {
    CalendarFoundationPerformBlockOnSharedContactStore_cold_1();
  }

  v4 = CalendarFoundationPerformBlockOnSharedContactStore__contactStoreQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __CalendarFoundationPerformBlockOnSharedContactStore_block_invoke_2;
  v7[3] = &unk_1E7EC6A08;
  v8 = v3;
  v9 = v1;
  v5 = v3;
  v6 = v1;
  dispatch_sync(v4, v7);
}

uint64_t __CalendarFoundationPerformBlockOnSharedContactStore_block_invoke()
{
  CalendarFoundationPerformBlockOnSharedContactStore__contactStoreQueue = dispatch_queue_create("com.apple.eventkit.contactstore", 0);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1B9930A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B99320D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B9932350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B99325B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B9932E7C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1B9933C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B9933E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMGGetBoolAnswerSymbolLoc_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = libMobileGestaltLibraryCore_frameworkLibrary;
  v11 = libMobileGestaltLibraryCore_frameworkLibrary;
  if (!libMobileGestaltLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __libMobileGestaltLibraryCore_block_invoke;
    v5[4] = &unk_1E7EC6C10;
    v6 = &v8;
    v7 = v5;
    v12 = xmmword_1E7EC6BF0;
    v13 = 0;
    v9[3] = _sl_dlopen();
    libMobileGestaltLibraryCore_frameworkLibrary = *(v6[1] + 24);
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    __getMGGetBoolAnswerSymbolLoc_block_invoke_cold_1(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "MGGetBoolAnswer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMGGetBoolAnswerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B993563C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __libMobileGestaltLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  libMobileGestaltLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *OUTLINED_FUNCTION_7_0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void sub_1B993664C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void CalDateTimeSetTimeZone(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 8);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    if (cf)
    {
      CFRetain(cf);
    }

    *(a1 + 8) = cf;
  }
}

void CalSetSystemTimeZone(void *a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&__GlobalLock);
  if (__SystemTimeZone)
  {
    v4 = CFEqual(__SystemTimeZone, a1);
    v5 = +[CalFoundationLogSubsystem defaultCategory];
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
    if (v4)
    {
      if (v6)
      {
        CalSetSystemTimeZone_cold_1(a1);
      }

      v7 = 0;
    }

    else
    {
      if (v6)
      {
        CalSetSystemTimeZone_cold_2(a1);
      }

      CFRelease(__SystemTimeZone);
      __SystemTimeZone = CFRetain(a1);
      v7 = 1;
    }
  }

  else
  {
    v8 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      CalSetSystemTimeZone_cold_3(a1);
    }

    v7 = 0;
    __SystemTimeZone = CFRetain(a1);
  }

  if (__TimeZone)
  {
    v9 = _CalCopyDefaultTimeZone(1);
    v10 = _CalSetTimeZone(v9);
    CFRelease(v9);
    if (v10)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 1;
  }

  v12 = __Calendar;
  if (__Calendar)
  {
    __Calendar = 0;
  }

  pthread_mutex_unlock(&__GlobalLock);
  if ((v7 & a2) == 1)
  {
    v13 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      CalSetSystemTimeZone_cold_4();
    }

    *keys = xmmword_1E7EC6D68;
    v17[0] = __SystemTimeZone;
    v17[1] = __TimeZone;
    v14 = CFDictionaryCreate(0, keys, v17, v11, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(LocalCenter, @"CalTimeZoneChangedNotification", 0, v14, 1u);
    CFRelease(v14);
  }

  v16 = *MEMORY[0x1E69E9840];
}

CFTimeZoneRef _CalCopyDefaultTimeZone(int a1)
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"ViewedTimeZoneAutomatic", @"com.apple.mobilecal", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v3 = AppBooleanValue == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v5 = CFPreferencesCopyAppValue(@"ViewedTimeZone", @"com.apple.mobilecal");
    if (!v5)
    {
      v6 = +[CalFoundationLogSubsystem defaultCategory];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        _CalCopyDefaultTimeZone_cold_2();
      }

      v5 = CFPreferencesCopyAppValue(@"CalTimeZoneKey", @"com.apple.mobilecal");
      if (!v5)
      {
        goto LABEL_14;
      }
    }

    v7 = v5;
    v8 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      _CalCopyDefaultTimeZone_cold_3();
    }

    v4 = _CalTimeZoneCopyCFTimeZone(v7);
    CFRelease(v7);
    if (!v4)
    {
LABEL_14:
      v9 = +[CalFoundationLogSubsystem defaultCategory];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        _CalCopyDefaultTimeZone_cold_4();
      }

      v4 = (_CalCopySystemTimeZone)();
    }

    v10 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      _CalCopyDefaultTimeZone_cold_5();
    }
  }

  else
  {
    if (a1)
    {
      v4 = _CalCopySystemTimeZone(AppBooleanValue);
    }

    else
    {
      v4 = 0;
    }

    v10 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      _CalCopyDefaultTimeZone_cold_1(v4);
    }
  }

  if (!__SystemTimeZone)
  {
    v11 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      _CalCopyDefaultTimeZone_cold_6();
    }

    v13 = _CalCopySystemTimeZone(v12);
    CFRelease(v13);
  }

  return v4;
}

BOOL _CalSetTimeZone(void *a1)
{
  v2 = __TimeZone;
  v3 = __TimeZone != 0;
  v4 = +[CalFoundationLogSubsystem defaultCategory];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (!v2)
  {
    if (v5)
    {
      _CalSetTimeZone_cold_1(a1);
    }

    goto LABEL_10;
  }

  if (v5)
  {
    _CalSetTimeZone_cold_2(a1);
  }

  if (!CFEqual(a1, __TimeZone))
  {
    CFRelease(__TimeZone);
LABEL_10:
    __TimeZone = CFRetain(a1);
    return v3;
  }

  return 0;
}

CFTypeRef CalCopySystemTimeZone()
{
  pthread_mutex_lock(&__GlobalLock);
  v0 = _CalCopySystemTimeZone();
  pthread_mutex_unlock(&__GlobalLock);
  return v0;
}

CFTypeRef _CalCopySystemTimeZone()
{
  v0 = __SystemTimeZone;
  if (!__SystemTimeZone)
  {
    __SystemTimeZone = CFTimeZoneCopySystem();
    v1 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      _CalCopySystemTimeZone_cold_1();
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _significantTimeChange, @"SignificantTimeChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v0 = __SystemTimeZone;
  }

  return CFRetain(v0);
}

CFTimeZoneRef CalCopyDefaultTimeZone()
{
  pthread_mutex_lock(&__GlobalLock);
  v0 = _CalCopyDefaultTimeZone(1);
  pthread_mutex_unlock(&__GlobalLock);
  return v0;
}

CFTimeZoneRef CalCopyDefaultTimeZoneSetting()
{
  pthread_mutex_lock(&__GlobalLock);
  CFPreferencesAppSynchronize(@"com.apple.mobilecal");
  v0 = _CalCopyDefaultTimeZone(0);
  pthread_mutex_unlock(&__GlobalLock);
  return v0;
}

BOOL CalDefaultTimeZoneSettingIsImplicit()
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"ViewedTimeZoneAutomatic", @"com.apple.mobilecal", &keyExistsAndHasValidFormat);
  result = 0;
  if (AppBooleanValue)
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    return !CFPreferencesGetAppBooleanValue(@"ViewedTimeZoneChosen", @"com.apple.mobilecal", &keyExistsAndHasValidFormat) || keyExistsAndHasValidFormat == 0;
  }

  return result;
}

BOOL CalDefaultTimeZoneSettingIsAutomatic()
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"ViewedTimeZoneAutomatic", @"com.apple.mobilecal", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v1 = AppBooleanValue == 0;
  }

  else
  {
    v1 = 1;
  }

  return !v1;
}

void CalSetDefaultTimeZone(void *a1)
{
  pthread_mutex_lock(&__GlobalLock);
  v2 = +[CalFoundationLogSubsystem defaultCategory];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    CalSetDefaultTimeZone_cold_1(a1);
  }

  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"ViewedTimeZoneAutomatic", @"com.apple.mobilecal", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v4 = AppBooleanValue == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  if (((a1 == 0) ^ v5))
  {
    if (!a1)
    {
      v7 = *MEMORY[0x1E695E4D0];
      CFPreferencesSetAppValue(@"ViewedTimeZoneAutomatic", *MEMORY[0x1E695E4D0], @"com.apple.mobilecal");
      goto LABEL_21;
    }

    v6 = @"UserChangedDefaultTimezone";
  }

  else if (a1)
  {
    v6 = @"UserEnabledTimezoneSupport";
  }

  else
  {
    v6 = @"UserDisabledTimezoneSupport";
  }

  CalAnalyticsSendEvent(v6, 0);
  v7 = *MEMORY[0x1E695E4D0];
  v8 = *MEMORY[0x1E695E4C0];
  if (a1)
  {
    v9 = *MEMORY[0x1E695E4C0];
  }

  else
  {
    v9 = *MEMORY[0x1E695E4D0];
  }

  CFPreferencesSetAppValue(@"ViewedTimeZoneAutomatic", v9, @"com.apple.mobilecal");
  if (a1)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v11 = CalCFTimeZoneCopyCalTimeZone(a1, Current);
    CFPreferencesSetAppValue(@"ViewedTimeZone", v11, @"com.apple.mobilecal");
    CFRelease(v11);
  }

LABEL_21:
  CFPreferencesSetAppValue(@"ViewedTimeZoneChosen", v7, @"com.apple.mobilecal");
  CFPreferencesAppSynchronize(@"com.apple.mobilecal");
  ++__TimeZoneNotificationEchoCount;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mobilecal.timezonechanged", 0, 0, 1u);
  pthread_mutex_unlock(&__GlobalLock);
  _CalDefaultTimeZoneSettingsChanged();
}

CFStringRef CalCFTimeZoneCopyCalTimeZone(const __CFTimeZone *a1, CFAbsoluteTime a2)
{
  if (*MEMORY[0x1E695E738] == a1)
  {

    return CFRetain(@"_float");
  }

  else
  {
    v4 = MEMORY[0x1BFADF020]();
    if (v4)
    {
      v5 = v4;
      CFRetain(v4);
      return v5;
    }

    else
    {

      return CFTimeZoneCopyAbbreviation(a1, a2);
    }
  }
}

void _CalDefaultTimeZoneSettingsChanged()
{
  pthread_mutex_lock(&__GlobalLock);
  if (!__TimeZone)
  {
    v1 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      _CalDefaultTimeZoneSettingsChanged_cold_3();
    }

    goto LABEL_7;
  }

  v0 = _CalCopyDefaultTimeZone(1);
  if (CFEqual(v0, __TimeZone))
  {
    CFRelease(v0);
LABEL_7:
    pthread_mutex_unlock(&__GlobalLock);
    return;
  }

  v2 = +[CalFoundationLogSubsystem defaultCategory];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    _CalDefaultTimeZoneSettingsChanged_cold_1(v0);
  }

  CFRelease(__TimeZone);
  __TimeZone = v0;
  v3 = __Calendar;
  __Calendar = 0;

  v4 = CFRetain(v0);
  pthread_mutex_unlock(&__GlobalLock);
  v5 = +[CalFoundationLogSubsystem defaultCategory];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    _CalDefaultTimeZoneSettingsChanged_cold_2();
  }

  v8 = v4;
  keys = @"CalTimeZoneKey";
  v6 = CFDictionaryCreate(0, &keys, &v8, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, @"CalTimeZoneChangedNotification", 0, v6, 1u);
  CFRelease(v6);
  CFRelease(v4);
}

void _CalTimeZoneForceUpdate()
{
  pthread_mutex_lock(&__GlobalLock);
  if (__PAIR128__(__TimeZone, __SystemTimeZone) != 0)
  {
    pthread_mutex_unlock(&__GlobalLock);
LABEL_4:
    v1 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      _CalTimeZoneForceUpdate_cold_2();
    }

    _significantTimeChange();
    _CalTimeZonePrefChanged();
    return;
  }

  v0 = __Calendar;
  pthread_mutex_unlock(&__GlobalLock);
  if (v0)
  {
    goto LABEL_4;
  }

  v2 = +[CalFoundationLogSubsystem defaultCategory];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    _CalTimeZoneForceUpdate_cold_1();
  }
}

void _significantTimeChange()
{
  v0 = +[CalFoundationLogSubsystem defaultCategory];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    _significantTimeChange_cold_1();
  }

  CFTimeZoneResetSystem();
  v1 = CFTimeZoneCopySystem();
  CalSetSystemTimeZone(v1, 1);
  CFRelease(v1);
}

void _CalTimeZonePrefChanged()
{
  v0 = __TimeZoneNotificationEchoCount;
  v1 = +[CalFoundationLogSubsystem defaultCategory];
  v2 = os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG);
  if (v0)
  {
    if (v2)
    {
      _CalTimeZonePrefChanged_cold_1(v1);
    }

    --__TimeZoneNotificationEchoCount;
  }

  else
  {
    if (v2)
    {
      _CalTimeZonePrefChanged_cold_2();
    }

    CFPreferencesAppSynchronize(@"com.apple.mobilecal");
    _CalDefaultTimeZoneSettingsChanged();
  }
}

CFTimeZoneRef _CalCopyTimeZone()
{
  v1 = __TimeZone;
  if (__TimeZone)
  {

    return CFRetain(v1);
  }

  else
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _CalTimeZonePrefChanged, @"com.apple.mobilecal.timezonechanged", 0, CFNotificationSuspensionBehaviorDrop);
    v4 = _CalCopyDefaultTimeZone(1);
    v5 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      _CalCopyTimeZone_cold_1(v4);
    }

    _CalSetTimeZone(v4);
    return v4;
  }
}

CFTimeZoneRef CalCopyTimeZone()
{
  pthread_mutex_lock(&__GlobalLock);
  v0 = _CalCopyTimeZone();
  pthread_mutex_unlock(&__GlobalLock);
  return v0;
}

id CalCopyCalendar()
{
  pthread_mutex_lock(&__GlobalLock);
  v0 = _CalCopyCalendar();
  pthread_mutex_unlock(&__GlobalLock);

  return v0;
}

id _CalCopyCalendar()
{
  v0 = __Calendar;
  if (!__Calendar)
  {
    v1 = [MEMORY[0x1E695DEE8] currentCalendar];
    v2 = __Calendar;
    __Calendar = v1;

    v3 = _CalCopyTimeZone();
    if (v3)
    {
      [__Calendar setTimeZone:v3];
    }

    v0 = __Calendar;
  }

  v4 = [v0 copy];

  return v4;
}

CFTimeZoneRef CalTimeZoneCopyCFTimeZone(const __CFString *a1)
{
  pthread_mutex_lock(&__GlobalLock);
  v2 = _CalTimeZoneCopyCFTimeZone(a1);
  pthread_mutex_unlock(&__GlobalLock);
  return v2;
}

CFTimeZoneRef _CalTimeZoneCopyCFTimeZone(const __CFString *key)
{
  if (_CalTimeZoneCopyCFTimeZone___TimeZoneCache)
  {
    Value = CFDictionaryGetValue(_CalTimeZoneCopyCFTimeZone___TimeZoneCache, key);
    if (Value)
    {
      v3 = Value;
      CFRetain(Value);
      return v3;
    }
  }

  else
  {
    _CalTimeZoneCopyCFTimeZone___TimeZoneCache = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v3 = CFTimeZoneCreateWithName(0, key, 1u);
  if (v3)
  {
    CFDictionarySetValue(_CalTimeZoneCopyCFTimeZone___TimeZoneCache, key, v3);
  }

  return v3;
}

void CalDateTimeRelease(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t CalDateTimeGetGregorianDate(uint64_t a1, const __CFString *a2, const __CFTimeZone *a3)
{
  AbsoluteTime = CalDateTimeGetAbsoluteTime(a1, a2, a3);

  return CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone(a3, AbsoluteTime);
}

double CalDateTimeGetAbsoluteTime(uint64_t AbsoluteTime, CFStringRef theString1, const __CFTimeZone *a3)
{
  if (!theString1 || CFStringCompare(theString1, @"_float", 0) == kCFCompareEqualTo)
  {
    pthread_mutex_lock(&__GlobalLock);
    v5 = _CalTimeZoneCopyCFTimeZone(@"GMT");
    pthread_mutex_unlock(&__GlobalLock);
    v6 = a3;
    if (!a3)
    {
      pthread_mutex_lock(&__GlobalLock);
      v6 = _CalCopyTimeZone();
      pthread_mutex_unlock(&__GlobalLock);
    }

    if (!CFEqual(v5, v6))
    {
      GregorianDate = CFAbsoluteTimeGetGregorianDate(*&AbsoluteTime, v5);
      AbsoluteTime = CFGregorianDateGetAbsoluteTime(GregorianDate, v6);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    if (!a3)
    {
      CFRelease(v6);
    }
  }

  return *&AbsoluteTime;
}

uint64_t CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone(const __CFTimeZone *a1, CFAbsoluteTime a2)
{
  if (a1)
  {

    return *&CFAbsoluteTimeGetGregorianDate(a2, a1);
  }

  else
  {
    pthread_mutex_lock(&__GlobalLock);
    v4 = _CalCopyTimeZone();
    pthread_mutex_unlock(&__GlobalLock);
    v5 = *&CFAbsoluteTimeGetGregorianDate(a2, v4);
    CFRelease(v4);
    return v5;
  }
}

uint64_t CalGregorianDateCopyDateTime(CFGregorianDate gdate, CFTimeZoneRef tz)
{
  second = gdate.second;
  v4 = *&gdate.year;
  v8[1] = 0.0;
  v5 = tz;
  if (!tz)
  {
    pthread_mutex_lock(&__GlobalLock);
    v5 = _CalCopyTimeZone();
    pthread_mutex_unlock(&__GlobalLock);
  }

  *&v9.year = v4;
  v9.second = second;
  v8[0] = CFGregorianDateGetAbsoluteTime(v9, v5);
  v6 = CalCFTimeZoneCopyCalTimeZone(v5, v8[0]);
  CalDateTimeSetTimeZone(v8, v6);
  if (v6)
  {
    CFRelease(v6);
  }

  if (!tz)
  {
    CFRelease(v5);
  }

  return *&v8[0];
}

CFAbsoluteTime CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone(CFGregorianDate gdate, const __CFTimeZone *a2)
{
  second = gdate.second;
  v3 = *&gdate.year;
  if (a2)
  {

    return CFGregorianDateGetAbsoluteTime(gdate, a2);
  }

  else
  {
    pthread_mutex_lock(&__GlobalLock);
    v5 = _CalCopyTimeZone();
    pthread_mutex_unlock(&__GlobalLock);
    *&v8.year = v3;
    v8.second = second;
    AbsoluteTime = CFGregorianDateGetAbsoluteTime(v8, v5);
    CFRelease(v5);
    return AbsoluteTime;
  }
}

uint64_t CalAbsoluteTimeGetDayOfWeek(const __CFTimeZone *a1, CFAbsoluteTime a2)
{
  if (a1)
  {
    DayOfWeek = CFAbsoluteTimeGetDayOfWeek(a2, a1);
  }

  else
  {
    pthread_mutex_lock(&__GlobalLock);
    v4 = _CalCopyTimeZone();
    pthread_mutex_unlock(&__GlobalLock);
    DayOfWeek = CFAbsoluteTimeGetDayOfWeek(a2, v4);
    CFRelease(v4);
  }

  if (DayOfWeek == 7)
  {
    return 0;
  }

  else
  {
    return DayOfWeek;
  }
}

uint64_t CalGregorianDateGetDayOfWeek(CFGregorianDate gdate, const __CFTimeZone *a2)
{
  second = gdate.second;
  v4 = *&gdate.year;
  v5 = a2;
  if (!a2)
  {
    pthread_mutex_lock(&__GlobalLock);
    v5 = _CalCopyTimeZone();
    pthread_mutex_unlock(&__GlobalLock);
  }

  *&v9.year = v4;
  v9.second = second;
  AbsoluteTimeWithFallbackToDefaultTimeZone = CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone(v9, v5);
  DayOfWeek = CalAbsoluteTimeGetDayOfWeek(v5, AbsoluteTimeWithFallbackToDefaultTimeZone);
  if (!a2)
  {
    CFRelease(v5);
  }

  return DayOfWeek;
}

double CalAbsoluteTimeGetAbsoluteTimeInTimeZone(CFTimeZoneRef tz, const __CFTimeZone *a2, CFAbsoluteTime a3)
{
  v6 = tz;
  if (!tz)
  {
    pthread_mutex_lock(&__GlobalLock);
    v6 = _CalCopyTimeZone();
    pthread_mutex_unlock(&__GlobalLock);
  }

  v7 = a2;
  if (!a2)
  {
    pthread_mutex_lock(&__GlobalLock);
    v7 = _CalCopyTimeZone();
    pthread_mutex_unlock(&__GlobalLock);
  }

  GregorianDate = CFAbsoluteTimeGetGregorianDate(a3, v6);
  AbsoluteTime = CFGregorianDateGetAbsoluteTime(GregorianDate, v7);
  if (!tz)
  {
    CFRelease(v6);
    if (a2)
    {
      return AbsoluteTime;
    }

LABEL_9:
    CFRelease(v7);
    return AbsoluteTime;
  }

  if (!a2)
  {
    goto LABEL_9;
  }

  return AbsoluteTime;
}

double CalAbsoluteTimeGetTimeForStartOfDay(const void *a1, CFAbsoluteTime a2)
{
  if (a1)
  {
    v3 = CFRetain(a1);
  }

  else
  {
    pthread_mutex_lock(&__GlobalLock);
    v3 = _CalTimeZoneCopyCFTimeZone(@"GMT");
    pthread_mutex_unlock(&__GlobalLock);
  }

  *&v6.year = CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone(v3, a2) & 0xFFFFFFFFFFFFLL;
  v6.second = 0.0;
  AbsoluteTimeWithFallbackToDefaultTimeZone = CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone(v6, v3);
  CFRelease(v3);
  return AbsoluteTimeWithFallbackToDefaultTimeZone;
}

BOOL CalGregorianDateEqualToGregorianDate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 ^ a1;
  if (((a3 ^ a1) & 0xFF0000000000) != 0)
  {
    return 0;
  }

  v6 = a1;
  result = 0;
  if (v6 == a3 && (v4 & 0xFFFF00FF00000000) == 0)
  {
    return vabdd_f64(*&a2, *&a4) < 2.22044605e-16;
  }

  return result;
}

uint64_t CalAbsoluteTimeGetGregorianDateForWeek(const __CFTimeZone *a1, unsigned int a2, _DWORD *a3, CFAbsoluteTime a4)
{
  v8 = a1;
  if (!a1)
  {
    pthread_mutex_lock(&__GlobalLock);
    v8 = _CalCopyTimeZone();
    pthread_mutex_unlock(&__GlobalLock);
  }

  DayOfWeek = CalAbsoluteTimeGetDayOfWeek(v8, a4);
  v10 = DayOfWeek % 7 - a2;
  if (DayOfWeek % 7 >= a2)
  {
    v11 = 0;
  }

  else
  {
    v11 = 7;
  }

  *(&v16.minutes + 1) = 0;
  v12 = v10 + v11;
  v16.minutes = 0;
  HIDWORD(v16.seconds) = 0;
  *&v16.years = 0;
  *&v16.days = -(v10 + v11);
  v13 = CFAbsoluteTimeAddGregorianUnits(a4, v8, &v16);
  v14 = *&CFAbsoluteTimeGetGregorianDate(v13, v8);
  if (!a1)
  {
    CFRelease(v8);
  }

  if (a3)
  {
    *a3 = v12;
  }

  return v14 & 0xFFFFFFFFFFFFLL;
}

double CalAbsoluteTimeGetAbsoluteTimeInCalTimeZone(const __CFString *a1, CFAbsoluteTime a2)
{
  pthread_mutex_lock(&__GlobalLock);
  v4 = _CalTimeZoneCopyCFTimeZone(@"GMT");
  pthread_mutex_unlock(&__GlobalLock);
  GregorianDate = CFAbsoluteTimeGetGregorianDate(a2, v4);
  v6 = CFStringCompare(a1, @"_float", 0);
  pthread_mutex_lock(&__GlobalLock);
  if (v6)
  {
    v7 = _CalTimeZoneCopyCFTimeZone(a1);
  }

  else
  {
    v7 = _CalCopyTimeZone();
  }

  v8 = v7;
  pthread_mutex_unlock(&__GlobalLock);
  AbsoluteTime = CFGregorianDateGetAbsoluteTime(GregorianDate, v8);
  if (v4)
  {
    CFRelease(v4);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return AbsoluteTime;
}

uint64_t CalGregorianDateAddUnits(CFGregorianDate gdate, _OWORD *a2, CFTimeZoneRef tz)
{
  second = gdate.second;
  v6 = *&gdate.year;
  v7 = tz;
  if (!tz)
  {
    pthread_mutex_lock(&__GlobalLock);
    v7 = _CalCopyTimeZone();
    pthread_mutex_unlock(&__GlobalLock);
  }

  *&v14.year = v6;
  v14.second = second;
  AbsoluteTime = CFGregorianDateGetAbsoluteTime(v14, v7);
  v9 = a2[1];
  *&v13.years = *a2;
  *&v13.minutes = v9;
  v10 = CFAbsoluteTimeAddGregorianUnits(AbsoluteTime, v7, &v13);
  v11 = *&CFAbsoluteTimeGetGregorianDate(v10, v7);
  if (!tz)
  {
    CFRelease(v7);
  }

  return v11;
}

unint64_t CalGregorianDateAddDays(unint64_t a1, uint64_t a2, int a3)
{
  v3 = (a1 >> 8) >> 24;
  v4 = a3 + ((a1 >> 16) >> 24);
  if (v3 - 1 > 0xB)
  {
    v5 = 0;
  }

  else
  {
    v5 = __DaysInMonths[v3];
    if (v3 == 2)
    {
      v6 = (a1 - 2000) % 400;
      if (v6 == 300)
      {
        v7 = __DaysInMonths[v3];
      }

      else
      {
        v7 = v5 + 1;
      }

      if (v6 == 200)
      {
        v7 = __DaysInMonths[v3];
      }

      if (v6 == 100)
      {
        v7 = __DaysInMonths[v3];
      }

      if ((v6 & 3) == 0)
      {
        v5 = v7;
      }
    }
  }

  if (v5 >= v4)
  {
    v8 = a1;
  }

  else
  {
    v8 = a1;
    do
    {
      if (v3 + 1 <= 0xC)
      {
        ++v3;
      }

      else
      {
        ++v8;
        v3 = 1;
      }

      if (v3 - 1 > 0xB)
      {
        v9 = 0;
      }

      else
      {
        v9 = __DaysInMonths[v3];
        if (v3 == 2)
        {
          v10 = (v8 - 2000) % 400;
          if ((v10 & 3) == 0 && v10 != 100 && v10 != 200 && v10 != 300)
          {
            ++v9;
          }
        }
      }

      v4 -= v5;
      v5 = v9;
    }

    while (v9 < v4);
  }

  return a1 & 0xFFFF000000000000 | (v4 << 40) | (v3 << 32) | v8;
}

CFIndex _CalAbsoluteTimeGetRangeOfUnit(const __CFTimeZone *a1, CFCalendarUnit a2, CFCalendarUnit a3, CFAbsoluteTime a4)
{
  pthread_mutex_lock(&__GlobalLock);
  v8 = _CalCopyCalendar();
  v9 = v8;
  if (a1)
  {
    CFCalendarSetTimeZone(v8, a1);
  }

  length = CFCalendarGetRangeOfUnit(v9, a2, a3, a4).length;
  pthread_mutex_unlock(&__GlobalLock);
  return length;
}

uint64_t CalGregorianDateGetDaysInMonth(unint64_t a1)
{
  v1 = (a1 >> 8) >> 24;
  if ((v1 - 1) > 0xB)
  {
    return 0;
  }

  v2 = a1;
  result = __DaysInMonths[v1];
  if (v1 == 2)
  {
    v4 = (v2 - 2000) % 400;
    if ((v4 & 3) == 0 && v4 != 100 && v4 != 200 && v4 != 300)
    {
      return (result + 1);
    }
  }

  return result;
}

uint64_t CalAbsoluteTimeGetDaysInYear(CFTimeZoneRef tz, CFAbsoluteTime a2)
{
  v4 = tz;
  if (!tz)
  {
    pthread_mutex_lock(&__GlobalLock);
    v4 = _CalCopyTimeZone();
    pthread_mutex_unlock(&__GlobalLock);
  }

  *&v8.years = 1;
  memset(&v8.days, 0, 24);
  v5 = CFAbsoluteTimeAddGregorianUnits(a2, v4, &v8);
  CFAbsoluteTimeGetDifferenceAsGregorianUnits(&v8, v5, a2, v4, 4uLL);
  days = v8.days;
  if (!tz)
  {
    CFRelease(v4);
  }

  return days;
}

uint64_t CalAbsoluteTimeGetWeekOfYear(int a1, CFTimeZoneRef tz, CFAbsoluteTime a3)
{
  v3 = tz;
  if (a1 == 1)
  {
    if (!tz)
    {
      pthread_mutex_lock(&__GlobalLock);
      v5 = _CalCopyTimeZone();
      pthread_mutex_unlock(&__GlobalLock);
      v3 = CFAutorelease(v5);
    }

    return CFAbsoluteTimeGetWeekOfYear(a3, v3);
  }

  else
  {
    pthread_mutex_lock(&__GlobalLock);
    v8 = _CalCopyCalendar();
    v9 = v8;
    if (v3)
    {
      CFCalendarSetTimeZone(v8, v3);
    }

    v10 = 0;
    CFCalendarSetFirstWeekday(v9, (a1 + 1));
    CFCalendarSetMinimumDaysInFirstWeek(v9, 4);
    if (!CFCalendarDecomposeAbsoluteTime(v9, a3, "w", &v10))
    {
      v10 = 0;
    }

    pthread_mutex_unlock(&__GlobalLock);
    return v10;
  }
}

uint64_t CalGregorianDateGetExtremities(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = 1933;
    *(result + 4) = 257;
  }

  if (a2)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *a2 = 2067;
    *(a2 + 4) = 7948;
  }

  return result;
}

double CalAbsoluteTimeAddGregorianUnits(uint64_t a1, _OWORD *a2, double a3)
{
  v5 = [EKTimeZone timeZoneWithNSTimeZone:a1];
  v6 = a2[1];
  v9[0] = *a2;
  v9[1] = v6;
  v7 = EKAbsoluteTimeAddGregorianDuration(v5, v9, a3);

  return v7;
}

uint64_t _CalCompareDates(unint64_t a1, unint64_t a2)
{
  if (a1 < a2)
  {
    return -1;
  }

  else
  {
    return a1 > a2;
  }
}

void OUTLINED_FUNCTION_1_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

uint64_t EKSymbolicColorToRGBMapping()
{
  if (EKSymbolicColorToRGBMapping_onceToken != -1)
  {
    EKSymbolicColorToRGBMapping_cold_1();
  }

  return EKSymbolicColorToRGBMapping___symbolicColorNamesToRGB;
}

CFIndex __EKSymbolicColorToRGBMapping_block_invoke()
{
  EKSymbolicColorToRGBMapping___symbolicColorNamesToRGB = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v0 = EKGetDefaultCalendarColors();
  result = CFArrayGetCount(v0);
  if (result >= 1)
  {
    for (i = 0; i < result; ++i)
    {
      v3 = EKSymbolicColorToRGBMapping___symbolicColorNamesToRGB;
      v4 = *(&off_1E7EC6D80 + i);
      ValueAtIndex = CFArrayGetValueAtIndex(v0, i);
      CFDictionarySetValue(v3, v4, ValueAtIndex);
      result = CFArrayGetCount(v0);
    }
  }

  return result;
}

uint64_t EKGetDefaultCalendarColors()
{
  v4 = *MEMORY[0x1E69E9840];
  result = EKGetDefaultCalendarColors___DefaultColors;
  if (!EKGetDefaultCalendarColors___DefaultColors)
  {
    pthread_mutex_lock(&EKGetDefaultCalendarColors___DefaultColorsLock);
    if (!EKGetDefaultCalendarColors___DefaultColors)
    {
      v2[0] = xmmword_1E7EC6DB8;
      v2[1] = *&off_1E7EC6DC8;
      v2[2] = xmmword_1E7EC6DD8;
      v3 = @"#AC7F5E";
      EKGetDefaultCalendarColors___DefaultColors = CFArrayCreate(0, v2, 7, MEMORY[0x1E695E9C0]);
    }

    pthread_mutex_unlock(&EKGetDefaultCalendarColors___DefaultColorsLock);
    result = EKGetDefaultCalendarColors___DefaultColors;
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t EKGetBrightonCalendarColors()
{
  v4 = *MEMORY[0x1E69E9840];
  result = EKGetBrightonCalendarColors___DefaultColors;
  if (!EKGetBrightonCalendarColors___DefaultColors)
  {
    pthread_mutex_lock(&EKGetBrightonCalendarColors___DefaultColorsLock);
    if (!EKGetBrightonCalendarColors___DefaultColors)
    {
      v2[0] = xmmword_1E7EC6DF0;
      v2[1] = *&off_1E7EC6E00;
      v2[2] = xmmword_1E7EC6E10;
      v3 = @"#882F00";
      EKGetBrightonCalendarColors___DefaultColors = CFArrayCreate(0, v2, 7, MEMORY[0x1E695E9C0]);
    }

    pthread_mutex_unlock(&EKGetBrightonCalendarColors___DefaultColorsLock);
    result = EKGetBrightonCalendarColors___DefaultColors;
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t EKGetWildcatDefaultCalendarColors()
{
  v4 = *MEMORY[0x1E69E9840];
  result = EKGetWildcatDefaultCalendarColors___WildcatDefaultColors;
  if (!EKGetWildcatDefaultCalendarColors___WildcatDefaultColors)
  {
    pthread_mutex_lock(&EKGetWildcatDefaultCalendarColors___WildcatDefaultColorsLock);
    if (!EKGetWildcatDefaultCalendarColors___WildcatDefaultColors)
    {
      v2[0] = xmmword_1E7EC6E28;
      v2[1] = *&off_1E7EC6E38;
      v3 = @"#B90E28";
      EKGetWildcatDefaultCalendarColors___WildcatDefaultColors = CFArrayCreate(0, v2, 5, MEMORY[0x1E695E9C0]);
    }

    pthread_mutex_unlock(&EKGetWildcatDefaultCalendarColors___WildcatDefaultColorsLock);
    result = EKGetWildcatDefaultCalendarColors___WildcatDefaultColors;
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t EKGetApexDefaultCalendarColors()
{
  v4 = *MEMORY[0x1E69E9840];
  result = EKGetApexDefaultCalendarColors___ApexDefaultColors;
  if (!EKGetApexDefaultCalendarColors___ApexDefaultColors)
  {
    pthread_mutex_lock(&EKGetApexDefaultCalendarColors___ApexDefaultColorsLock);
    if (!EKGetApexDefaultCalendarColors___ApexDefaultColors)
    {
      v2[0] = xmmword_1E7EC6E50;
      v2[1] = *&off_1E7EC6E60;
      v3 = @"#B5000D";
      EKGetApexDefaultCalendarColors___ApexDefaultColors = CFArrayCreate(0, v2, 5, MEMORY[0x1E695E9C0]);
    }

    pthread_mutex_unlock(&EKGetApexDefaultCalendarColors___ApexDefaultColorsLock);
    result = EKGetApexDefaultCalendarColors___ApexDefaultColors;
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t EKGetSnowLeopardDefaultCalendarColors()
{
  v4 = *MEMORY[0x1E69E9840];
  result = EKGetSnowLeopardDefaultCalendarColors___SnowLeopardDefaultColors;
  if (!EKGetSnowLeopardDefaultCalendarColors___SnowLeopardDefaultColors)
  {
    pthread_mutex_lock(&EKGetSnowLeopardDefaultCalendarColors___SnowLeopardDefaultColorsLock);
    if (!EKGetSnowLeopardDefaultCalendarColors___SnowLeopardDefaultColors)
    {
      v2[0] = xmmword_1E7EC6E78;
      v2[1] = *off_1E7EC6E88;
      v3 = @"#E51717";
      EKGetSnowLeopardDefaultCalendarColors___SnowLeopardDefaultColors = CFArrayCreate(0, v2, 5, MEMORY[0x1E695E9C0]);
    }

    pthread_mutex_unlock(&EKGetSnowLeopardDefaultCalendarColors___SnowLeopardDefaultColorsLock);
    result = EKGetSnowLeopardDefaultCalendarColors___SnowLeopardDefaultColors;
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

id NSDateFromICSValueInTimeZone(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_opt_new();
    [v8 setYear:{objc_msgSend(v5, "year")}];
    [v8 setMonth:{objc_msgSend(v5, "month")}];
    [v8 setDay:{objc_msgSend(v5, "day")}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v5;
      [v8 setHour:{objc_msgSend(v9, "hour")}];
      [v8 setMinute:{objc_msgSend(v9, "minute")}];
      v10 = [v9 second];

      [v8 setSecond:v10];
    }

    [v6 setTimeZone:v7];
    v11 = [v6 dateFromComponents:v8];
  }

  else
  {
    v12 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      NSDateFromICSValueInTimeZone_cold_1(v12);
    }

    v11 = 0;
  }

  return v11;
}

void sub_1B993B4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_1B993DF8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B993E170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void CalRoundWithSigFigs(unsigned int a1, double a2)
{
  if (fabs(a2) >= 2.22044605e-16)
  {
    v4 = -a2;
    if (a2 >= 0.0)
    {
      v4 = a2;
    }

    v5 = log10(v4);
    __exp10((a1 - vcvtpd_s64_f64(v5)));
  }
}

uint64_t CalRoundToNearestMultiple(int a1, float a2)
{
  v2 = a2 / a1;
  v3 = ceilf(v2 + -0.5);
  v4 = floorf(v2 + 0.5);
  if (a2 >= 0.0)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  return (v5 * a1);
}

double CalRoundDoubleToNearestMultiple(double a1, double a2)
{
  v4 = fabs(a2);
  if (v4 >= 2.22044605e-16)
  {
    return v4 * round(a1 / v4);
  }

  v5 = +[CalFoundationLogSubsystem defaultCategory];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    CalRoundDoubleToNearestMultiple_cold_1(v5, a2, a1);
  }

  return a1;
}

id CalGenerateQualifiedIdentifierWithClassAndSubdomain(objc_class *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:a1];
    v5 = [v4 bundleIdentifier];
    v6 = NSStringFromClass(a1);
    if (v3 && [v3 length])
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.%@.%@", v5, v6, v3];
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.%@", v5, v6, v10];
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t doURLsEmailsPhoneNumbersMatch(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if ([v11 isEqual:v14])
  {
    v17 = 1;
  }

  else
  {
    v18 = [v11 stringRemovingMailto];
    v19 = [v14 stringRemovingMailto];
    if ([v12 isEqualToString:v15] & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", v19) & 1) != 0 || (objc_msgSend(v18, "isEqualToString:", v15) & 1) != 0 || (objc_msgSend(v18, "isEqualToString:", v19))
    {
      v17 = 1;
    }

    else
    {
      v21 = [v11 stringRemovingTel];
      v22 = [v14 stringRemovingTel];
      v24 = v22;
      if ([v13 isEqualToString:v16] & 1) != 0 || (objc_msgSend(v13, "isEqualToString:", v22) & 1) != 0 || (objc_msgSend(v21, "isEqualToString:", v16))
      {
        v23 = v21;
        v17 = 1;
      }

      else
      {
        v23 = v21;
        v17 = [v21 isEqualToString:v24];
      }
    }
  }

  return v17;
}

uint64_t CALPreferenceMajorVersion()
{
  v0 = +[CalDefaults shared];
  v1 = [v0 objectForKey:@"iCal version"];

  v2 = [v1 integerValue] >> 24;
  return v2;
}

uint64_t CalEqualObjects(void *a1, void *a2)
{
  if (a1 && a2)
  {
    return [a1 isEqual:a2];
  }

  else
  {
    return a1 == a2;
  }
}

uint64_t CalEqualStrings(void *a1, void *a2)
{
  if (a1 && a2)
  {
    return [a1 isEqualToString:a2];
  }

  else
  {
    return a1 == a2;
  }
}

id _GetFormatAnd_d_FieldRangeFor_EEEd(void *a1, uint64_t *a2)
{
  v3 = a1;
  v4 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"EEEd" options:0 locale:v3];
  v5 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"d" options:0 locale:v3];
  v6 = _GetModifiedFormatFromFormat(v4);
  v7 = _GetModifiedFormatFromFormat(v5);
  v8 = [v6 rangeOfString:v7];
  *a2 = v8;
  a2[1] = v9;
  if (v8 == 0x7FFFFFFFFFFFFFFFLL && (v8 = [v6 rangeOfString:@"dd"], *a2 = v8, a2[1] = v9, v8 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v10 = [v6 rangeOfString:@"d"];
    *a2 = v10;
    a2[1] = v9;
    if (v10 < 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v10 = v8;
    if (v8 < 0)
    {
      goto LABEL_34;
    }
  }

  v11 = v9 + v10;
  v12 = [v6 length];
  if (v11 < v12 && [v6 characterAtIndex:v11] == 100)
  {
    ++v11;
  }

  if (v11 < v12 && [v6 characterAtIndex:v11 - 1] == 100 && objc_msgSend(v6, "characterAtIndex:", v11) == 46)
  {
    ++v11;
  }

  v18 = v4;
  if (v10)
  {
    if ([v6 characterAtIndex:v10 - 1] == 100)
    {
      *a2 = --v10;
    }

    if (v10 >= 2)
    {
      v13 = [v6 characterAtIndex:v10 - 1];
      if (v13 == 8208 || v13 == 45)
      {
        --v10;
      }
    }
  }

  v14 = 0;
  while (1)
  {
    v15 = v10 - 1;
    if (v10 < 1)
    {
      break;
    }

    v16 = [v6 characterAtIndex:v10 - 1];
    if (u_isUWhiteSpace(v16) || u_ispunct(v16))
    {
      if ((v14 & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

    if (u_isUAlphabetic(v16))
    {
      v14 = 1;
      --v10;
      if ((v16 - 65) > 0x39)
      {
        continue;
      }

      v10 = v15;
      if ((v16 - 97) >= 0xFFFFFFFA)
      {
        continue;
      }
    }

    goto LABEL_33;
  }

  if ((v14 & 1) == 0)
  {
    goto LABEL_33;
  }

  v10 = 0;
LABEL_32:
  *a2 = v10;
LABEL_33:
  a2[1] = v11 - *a2;
  v4 = v18;
LABEL_34:

  return v4;
}

id _GetModifiedFormatFromFormat(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E696AD60] stringWithCapacity:15];
  [v2 insertString:v1 atIndex:0];
  v3 = [v2 length];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = [v2 characterAtIndex:v5];
      if (v7 == 39)
      {
        v6 ^= 1u;
      }

      else if ((v7 - 65) <= 0x39 && (v6 & 1) != 0 && (v7 - 97) <= 0xFFFFFFF9)
      {
        v10 = v7 - 8257;
        v6 = 1;
        v8 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v10 length:1];
        [v2 replaceCharactersInRange:v5 withString:{1, v8}];
      }

      ++v5;
    }

    while (v4 != v5);
  }

  return v2;
}

void sub_1B99440F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t CalGetRGBAFromString(void *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, int *a5)
{
  v9 = a1;
  v22 = 0;
  v23 = 0;
  if ([v9 length])
  {
    if ([v9 characterAtIndex:0] == 35)
    {
      v10 = [v9 length];
      if (v10 == 9 || [v9 length] == 7)
      {
        v11 = [v9 substringWithRange:{1, 2}];
        v12 = [MEMORY[0x1E696AE88] scannerWithString:v11];
        [v12 scanHexInt:&v23 + 4];

        if (HIDWORD(v23) <= 0xFF)
        {
          v14 = [v9 substringWithRange:{3, 2}];
          v15 = [MEMORY[0x1E696AE88] scannerWithString:v14];
          [v15 scanHexInt:&v23];

          if (v23 <= 0xFF)
          {
            v16 = [v9 substringWithRange:{5, 2}];
            v19 = [MEMORY[0x1E696AE88] scannerWithString:v16];
            [v19 scanHexInt:&v22 + 4];

            if (HIDWORD(v22) <= 0xFF)
            {
              if (v10 == 9)
              {
                v17 = [v9 substringWithRange:{7, 2}];
                v20 = [MEMORY[0x1E696AE88] scannerWithString:v17];
                [v20 scanHexInt:&v22];

                v21 = v22;
                if (v22 > 0xFF)
                {
                  v13 = 0;
                  goto LABEL_12;
                }
              }

              else
              {
                v17 = 0;
                v21 = 255;
                LODWORD(v22) = 255;
              }

              if (a2)
              {
                *a2 = HIDWORD(v23);
              }

              if (a3)
              {
                *a3 = v23;
              }

              if (a4)
              {
                *a4 = HIDWORD(v22);
              }

              if (a5)
              {
                *a5 = v21;
              }

              v13 = 1;
              goto LABEL_12;
            }

            v13 = 0;
LABEL_11:
            v17 = 0;
LABEL_12:

            goto LABEL_13;
          }

          v13 = 0;
        }

        else
        {
          v13 = 0;
          v14 = 0;
        }

        v16 = 0;
        goto LABEL_11;
      }
    }
  }

  v13 = 0;
LABEL_13:

  return v13;
}

uint64_t CalUnsignedIntDiff(unsigned int a1, unsigned int a2)
{
  if (a1 <= a2)
  {
    return a2 - a1;
  }

  else
  {
    return a1 - a2;
  }
}

BOOL CalColorsAreAlmostEqual(void *a1, void *a2)
{
  v3 = a2;
  v12 = 0;
  v11 = 0;
  v9 = 0;
  v10 = 0;
  if (!CalGetRGBAFromString(a1, &v12, &v11, &v10 + 1, 0) || !CalGetRGBAFromString(v3, &v10, &v9 + 1, &v9, 0))
  {
    goto LABEL_12;
  }

  v4 = v12 - v10;
  if (v12 <= v10)
  {
    v4 = v10 - v12;
  }

  if (v4 > 1)
  {
    goto LABEL_12;
  }

  v5 = v11 - HIDWORD(v9);
  if (v11 <= HIDWORD(v9))
  {
    v5 = HIDWORD(v9) - v11;
  }

  if (v5 <= 1)
  {
    v6 = HIDWORD(v10) - v9;
    if (HIDWORD(v10) <= v9)
    {
      v6 = v9 - HIDWORD(v10);
    }

    v7 = v6 < 2;
  }

  else
  {
LABEL_12:
    v7 = 0;
  }

  return v7;
}

void CalFlagForProfilingStart(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = _startTimes();
    v6 = [MEMORY[0x1E695DF00] date];
    [v5 setObject:v6 forKey:v4];

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      CalFlagForProfilingStart_cold_1();
    }
  }
}

id _startTimes()
{
  if (_startTimes_onceToken != -1)
  {
    _startTimes_cold_1();
  }

  v1 = _startTimes_startTimes;

  return v1;
}

void CalFlagForProfilingEnd(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = _startTimes();
    v6 = [v5 objectForKey:v4];

    if (v6)
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = [MEMORY[0x1E695DF00] date];
      [v8 timeIntervalSinceDate:v6];
      v10 = [v7 stringWithFormat:@" (%g s)", v9];
    }

    else
    {
      v10 = &stru_1F379FFA8;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      CalFlagForProfilingEnd_cold_1();
    }
  }
}

void CalFlagForProfilingPoint(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = _startTimes();
    v6 = [v5 objectForKey:v4];

    if (v6)
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = [MEMORY[0x1E695DF00] date];
      [v8 timeIntervalSinceDate:v6];
      v10 = [v7 stringWithFormat:@" (%g s)", v9];
    }

    else
    {
      v10 = &stru_1F379FFA8;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      CalFlagForProfilingPoint_cold_1();
    }
  }
}

void CalPerfLogStart(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    CalPerfLogStart_cold_1();
  }
}

void CalPerfLogEnd(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    CalPerfLogEnd_cold_1();
  }
}

void CalPerfLogPoint(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    CalPerfLogPoint_cold_1();
  }
}

uint64_t ___startTimes_block_invoke()
{
  _startTimes_startTimes = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1B994982C()
  v1 = {;

  return v1;
}

uint64_t CalDarwinNotificationListener_ObservationCallback(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 _notificationWithNameReceived:?];
  }

  return result;
}

void OUTLINED_FUNCTION_3_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

void OUTLINED_FUNCTION_0_8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void *EKWeakLinkSymbol(const char *a1, unint64_t a2)
{
  result = __HandleForSource(a2);
  if (result)
  {

    return dlsym(result, a1);
  }

  return result;
}

const void *__HandleForSource(unint64_t a1)
{
  os_unfair_lock_lock(&__HandlesLock);
  Mutable = __Handles;
  if (!__Handles)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
    __Handles = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, a1);
  if (!Value)
  {
    if (a1 > 0x15)
    {
      v5 = 0;
    }

    else
    {
      v4 = [&stru_1F379FFA8 stringByAppendingString:off_1E7EC7328[a1]];
      v5 = v4;
      if (v4)
      {
        v6 = dlopen([v4 UTF8String], 1);
        if (v6)
        {
          Value = v6;
          CFDictionarySetValue(__Handles, a1, v6);
LABEL_12:

          goto LABEL_13;
        }
      }
    }

    v7 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __HandleForSource_cold_1(a1, v7);
    }

    Value = 0;
    goto LABEL_12;
  }

LABEL_13:
  os_unfair_lock_unlock(&__HandlesLock);
  return Value;
}

id EKWeakLinkClass(void *a1, unint64_t a2)
{
  v3 = a1;
  if (__HandleForSource(a2))
  {
    v4 = NSClassFromString(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id *EKWeakLinkStringConstant(const char *a1, unint64_t a2)
{
  v3 = __HandleForSource(a2);
  if (v3)
  {
    v3 = dlsym(v3, a1);
    if (v3)
    {
      v3 = *v3;
    }
  }

  return v3;
}

void sub_1B9951BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CalAddStateCaptureBlock(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v3 = v4;
  os_state_add_handler();
}

_DWORD *__CalAddStateCaptureBlock_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 16) == 3)
    {
      v3 = (*(*(a1 + 32) + 16))();
      if (v3)
      {
        v4 = v3;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_18;
        }

        v5 = v4;
        if ([v5 canBeConvertedToEncoding:1])
        {
          if ([v5 length] > 0x7F09)
          {
            v6 = +[CalFoundationLogSubsystem defaultCategory];
            if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
            {
              __CalAddStateCaptureBlock_block_invoke_cold_2(v5, v6);
            }

            v7 = [v5 substringToIndex:32522];
            goto LABEL_17;
          }
        }

        else
        {
          v10 = [v5 lengthOfBytesUsingEncoding:2483028224];
          if (v10 > 0x7F09)
          {
            v11 = v10;
            v12 = +[CalFoundationLogSubsystem defaultCategory];
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              __CalAddStateCaptureBlock_block_invoke_cold_1(v11, v12);
            }

            v13 = malloc_type_malloc(0x7F0AuLL, 0x7D364BBDuLL);
            v22 = 0;
            [v5 getBytes:v13 maxLength:32522 usedLength:&v22 encoding:2483028224 options:1 range:0 remainingRange:{objc_msgSend(v5, "length"), 0}];
            v14 = objc_alloc(MEMORY[0x1E696AEC0]);
            v7 = [v14 initWithBytesNoCopy:v13 length:v22 encoding:2483028224 freeWhenDone:1];
            goto LABEL_17;
          }
        }

        v7 = v5;
LABEL_17:
        v4 = v7;

LABEL_18:
        v21 = 0;
        v15 = [MEMORY[0x1E696AE40] dataWithPropertyList:v4 format:200 options:0 error:&v21];
        v16 = v21;
        if (v15)
        {
          v17 = [v15 length];
          v18 = malloc_type_calloc(1uLL, v17 + 200, 0x1000040BEF03554uLL);
          if (v18)
          {
            v8 = v18;
            v19 = *(a1 + 40);
            __strlcpy_chk();
            *v8 = 1;
            v8[1] = v17;
            [v15 getBytes:v8 + 50 range:{0, v17}];
LABEL_26:

            return v8;
          }

          v20 = +[CalFoundationLogSubsystem defaultCategory];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            __CalAddStateCaptureBlock_block_invoke_cold_3(a1, v20);
          }
        }

        else
        {
          v20 = +[CalFoundationLogSubsystem defaultCategory];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            __CalAddStateCaptureBlock_block_invoke_cold_4(a1, v16, v20);
          }
        }

        v8 = 0;
        goto LABEL_26;
      }
    }
  }

  return 0;
}

uint64_t _EKRecurrenceByMonthFilter(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = a1;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) unsignedIntegerValue];
        if (v8 == [v3 month])
        {
          v5 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t _EKRecurrenceByDayMaskFromArrayByDayItems(void *a1)
{
  v1 = a1;
  v2 = [v1 count];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    for (i = 0; i != v3; ++i)
    {
      v6 = [v1 objectAtIndex:i];
      if (![v6 weekNumber] || objc_msgSend(v6, "weekNumber") == 1)
      {
        v4 |= 1 << ([v6 dayOfTheWeek] - 1);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t _EKRecurrenceApplyFiltersToSingleDate(void *a1, uint64_t a2, unint64_t a3, void *a4, char a5)
{
  v9 = a1;
  v10 = a4;
  if (a5)
  {
    if (!a3)
    {
      v11 = 1;
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 1;
    if (([v9 isEqual:v10] & 1) != 0 || !a3)
    {
      goto LABEL_9;
    }
  }

  v12 = (a2 + 8);
  v13 = 1;
  do
  {
    v14 = (*(v12 - 1))(*v12, v9);
    v11 = v14;
    if (v13 >= a3)
    {
      break;
    }

    ++v13;
    v12 += 2;
  }

  while ((v14 & 1) != 0);
LABEL_9:

  return v11;
}

BOOL _EKRecurrenceRangeFilter(uint64_t a1, void *a2)
{
  [a2 absoluteTime];
  v4 = v3;
  [*a1 absoluteTime];
  v6 = v5;
  [*(a1 + 8) absoluteTime];
  if (v4 < v6)
  {
    return 0;
  }

  v9 = fabs(v7);
  return v4 < v7 || v9 < 2.22044605e-16 || *(a1 + 16) != 0;
}

void _InsertAbsoluteTimeIntoArrayAtIndex(void *a1, CFAbsoluteTime a2)
{
  theArray = a1;
  v3 = CFDateCreate(0, a2);
  if (v3)
  {
    v4 = v3;
    CFArrayInsertValueAtIndex(theArray, 0, v3);
    CFRelease(v4);
  }
}

void _EKRecurrenceApplyBySetPosToRange(void *a1, void *a2, CFIndex *a3, void *a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  theArray = a1;
  v13 = a2;
  v34 = a4;
  v38 = a5;
  v35 = a6;
  v32 = a3[1];
  v14 = [v13 count];
  if (a3[1] >= 1)
  {
    v15 = v14;
    v16 = 0;
    v17 = *a3;
    do
    {
      if (!v38 && !a7)
      {
        goto LABEL_6;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v17);
      v19 = MEMORY[0x1BFADEE30](ValueAtIndex);
      [v35 absoluteTime];
      if (vabdd_f64(v19, v20) < 2.22044605e-16)
      {
        goto LABEL_6;
      }

      [v34 absoluteTime];
      if (v38 && v19 >= v22)
      {
        [v38 absoluteTime];
        if (v19 >= v23 && !*a8)
        {
          goto LABEL_6;
        }
      }

      else if (v19 < v22)
      {
        goto LABEL_6;
      }

      if (v15 >= 1)
      {
        v24 = 0;
        v25 = v17 - *a3 + v16;
        v26 = v25 + 1;
        v27 = v25 - v32;
        while (1)
        {
          v28 = [v13 objectAtIndex:v24];
          v29 = [v28 intValue];

          if (v26 == v29 || v27 == v29)
          {
            break;
          }

          if (v15 == ++v24)
          {
            goto LABEL_6;
          }
        }

        if (v38)
        {
          if (*a8)
          {
            [v38 absoluteTime];
            if (v19 >= v30)
            {
              --*a8;
            }
          }
        }

        v31 = a7 - 1;
        if (!a7)
        {
          v31 = 0;
        }

        a7 = v31;
        ++v17;
        v21 = a3[1];
        continue;
      }

LABEL_6:
      CFArrayRemoveValueAtIndex(theArray, v17);
      v21 = a3[1] - 1;
      a3[1] = v21;
      ++v16;
    }

    while (v17 < *a3 + v21);
  }
}

void _EKRecurrenceByDayGenerator(void *a1, CFRange *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9, uint64_t a10, unint64_t a11, char a12)
{
  v78 = a1;
  v17 = a3;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a6;
  v22 = a4;
  v82 = v21;
  v23 = [v21 count];
  v24 = v17;
  v25 = [v22 calendarDateByAddingDays:-1];

  [v24 absoluteTime];
  v27 = v26;
  v74 = v25;
  [v25 absoluteTime];
  if (v27 >= v28)
  {
    v70 = 0;
    v29 = 0;
    v56 = v24;
  }

  else
  {
    v71 = v20;
    v72 = v19;
    v79 = 0;
    v80 = 0;
    v29 = 0;
    v75 = 2;
    v76 = v18;
    v73 = v24;
    v30 = v24;
    do
    {
      v31 = [v30 dayOfWeek];
      v32 = v31;
      v33 = v75;
      if (!v79)
      {
        v33 = v31;
      }

      v75 = v33;
      v34 = [v30 calendarDateByAddingMonths:1];
      v35 = [v34 calendarDateByAddingDays:-1];

      v79 = v35;
      v36 = [v35 dayOfWeek];
      if (v23)
      {
        v37 = v36;
        for (i = 0; i != v23; ++i)
        {
          v39 = [v82 objectAtIndex:i];
          if ([v39 weekNumber])
          {
            v40 = [v39 weekNumber];
            v41 = [v39 dayOfTheWeek];
            v42 = [v39 dayOfTheWeek];
            v43 = 7 * [v39 weekNumber];
            v44 = v41 < v32;
            if (v40 < 0)
            {
              v45 = v37;
            }

            else
            {
              v45 = v32;
            }

            v46 = -7;
            if (v40 >= 0)
            {
              v47 = v30;
            }

            else
            {
              v46 = 7;
              v44 = v41 > v37;
              v47 = v79;
            }

            if (v44)
            {
              v48 = 0;
            }

            else
            {
              v48 = v46;
            }

            v49 = [v47 calendarDateByAddingDays:v42 - v45 + v43 + v48];

            [v49 absoluteTime];
            v51 = v50;
            [v30 absoluteTime];
            if (v51 >= v52)
            {
              [v49 absoluteTime];
              v54 = v53;
              [v79 absoluteTime];
              if (v54 <= v55)
              {
                _EKRecurrenceResultsAddValueIfNotPresent(v78, a2, v49, a10, a11, v76, a12);
              }

              v29 = v49;
            }

            else
            {
              v29 = v49;
            }
          }

          else
          {
            v80 |= 1 << ([v39 dayOfTheWeek] - 1);
          }
        }
      }

      v56 = [v30 calendarDateByAddingMonths:1];

      [v56 absoluteTime];
      v58 = v57;
      [v74 absoluteTime];
      v30 = v56;
    }

    while (v58 < v59);
    v60 = v80;
    if (v80)
    {
      v61 = 1;
      v18 = v76;
      do
      {
        v81 = v60;
        if (v60)
        {
          v62 = 7;
          if (v61 >= v75)
          {
            v62 = 0;
          }

          v63 = [v73 calendarDateByAddingDays:v61 - v75 + v62];

          [v63 absoluteTime];
          v65 = v64;
          [v74 absoluteTime];
          if (v65 <= v66)
          {
            do
            {
              _EKRecurrenceResultsAddValueIfNotPresent(v78, a2, v63, a10, a11, v76, a12);
              v29 = [v63 calendarDateByAddingDays:7];

              [v29 absoluteTime];
              v68 = v67;
              [v74 absoluteTime];
              v63 = v29;
            }

            while (v68 <= v69);
          }

          else
          {
            v29 = v63;
          }
        }

        ++v61;
        v60 = v81 >> 1;
      }

      while (v81 > 1);
      v70 = v79;
      v19 = v72;
      v24 = v73;
      v20 = v71;
    }

    else
    {
      v18 = v76;
      v20 = v71;
      v19 = v72;
      v24 = v73;
      v70 = v79;
    }
  }
}

uint64_t _EKRecurrenceApplyGenerator(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, unsigned int a9, unint64_t *a10, void *a11, char a12)
{
  v17 = a1;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v41 = [v17 count];
  v42 = 0;
  if (a9 == 4)
  {
    [v21 calendarDateByAddingYears:1];
  }

  else
  {
    [v21 calendarDateByAddingMonths:1];
  }
  v22 = ;
  v24 = *a2;
  v23 = *(a2 + 8);
  v25 = v18;
  v24(v17, &v41, v21, v22, a9, v23, v18, v19, v20, a3, a4, a12);
  if (a10)
  {
    v26 = *a10;
    if (*a10)
    {
      v27 = v42;
      if (v42 <= v26 || (v43.location = v26 + v41, v43.length = v42 - v26, CFArrayReplaceValues(v17, v43, 0, 0), v27 = *a10, v42 = v27, (v26 = v27) != 0))
      {
        *a10 = v26 - v27;
      }
    }
  }

  if (a11 && *a11 && v42 >= 1)
  {
    v28 = v41 + 1;
    while (1)
    {
      v29 = [v17 objectAtIndexedSubscript:v28 - 1];
      [v29 timeIntervalSinceReferenceDate];
      v31 = v30;
      v32 = [v20 date];
      [v32 timeIntervalSinceReferenceDate];
      v34 = v33;

      if (v31 >= v34 && (*a11)-- == 1)
      {
        break;
      }

      if (v28++ >= v42 + v41)
      {
        goto LABEL_18;
      }
    }

    [v17 removeObjectsInRange:{v28, v42 + v41 - v28}];
  }

LABEL_18:
  v37 = v42;

  return v37;
}

void _AppendAbsoluteTimeToArray(void *a1, double a2)
{
  theArray = a1;
  v3 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:a2];
  if (v3)
  {
    CFArrayAppendValue(theArray, v3);
  }
}

void _EKRecurrenceByYearDayGenerator(void *a1, CFRange *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9, uint64_t a10, unint64_t a11, char a12)
{
  v37 = a1;
  v17 = a3;
  v35 = a4;
  v18 = a7;
  v34 = a8;
  v33 = a9;
  v19 = a6;
  v20 = [v19 count];
  v21 = v17;
  v22 = [v21 daysInYear];
  v23 = v21;
  if (v20)
  {
    v24 = v22;
    v25 = 0;
    v26 = v22 + 1;
    v23 = v21;
    do
    {
      v27 = [v19 objectAtIndex:{v25, v33, v34, v35}];
      v28 = [v27 intValue];

      if (v28 >= 0)
      {
        v29 = 0;
      }

      else
      {
        v29 = v26;
      }

      v30 = v29 + v28;
      if (v30 >= 1 && v30 <= v24)
      {
        v32 = [v21 calendarDateByAddingDays:v30 - 1];

        _EKRecurrenceResultsAddValueIfNotPresent(v37, a2, v32, a10, a11, v18, a12);
        v23 = v32;
      }

      ++v25;
    }

    while (v20 != v25);
  }
}

uint64_t _EKRecurrenceByDayFilter(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 count];
  v5 = [v3 dayOfWeek];
  if (v4)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = 1;
    while (1)
    {
      v10 = [a1 objectAtIndex:v9 - 1];
      if ([v10 dayOfTheWeek] == v6)
      {
        if (![v10 weekNumber])
        {

          v16 = 1;
          goto LABEL_25;
        }

        if ([v10 weekNumber] < 1)
        {
          if (!v8)
          {
            v17 = [v3 calendarDateForEndOfMonth];
            v18 = [v17 dayOfWeek];
            v19 = 7;
            if (v18 >= v6)
            {
              v19 = 0;
            }

            v20 = [v17 calendarDateByAddingDays:v18 - v6 + v19];

            v8 = [v20 differenceInDays:v3] / 7 + 1;
          }

          v15 = [v10 weekNumber] + v8 == 0;
        }

        else
        {
          if (!v7)
          {
            v11 = [v3 calendarDateForMonth];
            v12 = [v11 dayOfWeek];
            v13 = 7;
            if (v6 >= v12)
            {
              v13 = 0;
            }

            v14 = [v11 calendarDateByAddingDays:v6 - v12 + v13];

            v7 = [v3 differenceInDays:v14] / 7 + 1;
          }

          v15 = [v10 weekNumber] == v7;
        }

        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v9 < v4)
      {
        ++v9;
        if (!v16)
        {
          continue;
        }
      }

      goto LABEL_25;
    }
  }

  v16 = 0;
LABEL_25:

  return v16;
}

BOOL _EKRecurrenceByWeekNoFilter(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 weekOfYear];
  v5 = [*(a1 + 8) count];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), v8 - 1);
      if ((ValueAtIndex & 0x8000000000000000) != 0)
      {
        if (!v7)
        {
          v7 = [v3 weeksInYear];
        }

        ValueAtIndex += v7 + 1;
      }

      v10 = ValueAtIndex == v4;
      if (v8 >= v6)
      {
        break;
      }

      ++v8;
    }

    while (ValueAtIndex != v4);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

BOOL _EKRecurrenceByMonthDayFilterInternal(void *a1, void *a2, int a3)
{
  v5 = a2;
  v6 = [a1 count];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 1;
    while (1)
    {
      v10 = [a1 objectAtIndex:v9 - 1];
      v11 = [v10 intValue];
      v12 = v11;
      if (v11 < 0)
      {
        break;
      }

      if (a3)
      {
        goto LABEL_9;
      }

LABEL_13:
      v13 = [v5 day];
      v14 = v12 == v13;

      if (v9 < v7)
      {
        ++v9;
        if (v12 != v13)
        {
          continue;
        }
      }

      goto LABEL_17;
    }

    if (!v8)
    {
      v8 = [v5 daysInMonth];
    }

    v12 += v8 + 1;
    if (!a3)
    {
      goto LABEL_13;
    }

LABEL_9:
    if (!v8)
    {
      v8 = [v5 daysInMonth];
    }

    if (v12 >= v8)
    {
      v12 = v8;
    }

    goto LABEL_13;
  }

  v14 = 0;
LABEL_17:

  return v14;
}

void _EKRecurrenceResultsAddValueIfNotPresent(void *a1, CFRange *a2, void *a3, uint64_t a4, unint64_t a5, void *a6, char a7)
{
  theArray = a1;
  v13 = a3;
  v14 = a6;
  if ((a7 & 1) != 0 || ([v13 isEqual:v14] & 1) == 0)
  {
    location = a2->location;
    length = a2->length;
    if (!a5 || _EKRecurrenceApplyFiltersToSingleDate(v13, a4, a5, v14, a7))
    {
      [v13 absoluteTime];
      v18 = CFDateCreate(0, v17);
      v19 = CFArrayBSearchValues(theArray, *a2, v18, MEMORY[0x1E695D770], 0);
      v20 = v19;
      if (v19 >= length + location || v19 < 0 || (ValueAtIndex = CFArrayGetValueAtIndex(theArray, v19), !CFEqual(ValueAtIndex, v18)))
      {
        if (v20 >= length + location)
        {
          v22 = length + location;
        }

        else
        {
          v22 = v20;
        }

        CFArrayInsertValueAtIndex(theArray, v22, v18);
        ++a2->length;
      }

      CFRelease(v18);
    }
  }
}

void _EKRecurrenceByMonthDayGeneratorInternal(void *a1, CFRange *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9, unint64_t a10, char a11, char a12)
{
  v48 = a1;
  v18 = a3;
  v19 = a4;
  v47 = a6;
  v44 = a7;
  v43 = a8;
  v20 = a5;
  v21 = [v20 count];
  v22 = v18;
  [v22 absoluteTime];
  v24 = v23;
  v45 = v19;
  [v19 absoluteTime];
  v42 = v22;
  v25 = 0;
  if (v24 < v26)
  {
    v27 = v22;
    do
    {
      v28 = [v27 daysInMonth];
      if (v21)
      {
        v29 = v28;
        v30 = 0;
        v31 = v28 + 1;
        do
        {
          v32 = [v20 objectAtIndex:v30];
          v33 = [v32 intValue];

          if (v33 >= 0)
          {
            v34 = 0;
          }

          else
          {
            v34 = v31;
          }

          v35 = v34 + v33;
          if (v35 >= v29)
          {
            v36 = v29;
          }

          else
          {
            v36 = v35;
          }

          if (a11)
          {
            v35 = v36;
          }

          if (v35 >= 1 && v35 <= v29)
          {
            v38 = [v27 calendarDateByAddingDays:v35 - 1];

            _EKRecurrenceResultsAddValueIfNotPresent(v48, a2, v38, a9, a10, v47, a12);
            v25 = v38;
          }

          ++v30;
        }

        while (v21 != v30);
      }

      v22 = [v27 calendarDateByAddingMonths:1];

      [v22 absoluteTime];
      v40 = v39;
      [v45 absoluteTime];
      v27 = v22;
    }

    while (v40 < v41);
  }
}

void sub_1B9956A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B995C180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1B995C364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B995C9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1B995D2DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1B995D530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CalDoNotCallThisInitializer()
{
  v0 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Usage of this initializer is forbidden." userInfo:0];
  objc_exception_throw(v0);
}

void CalSubclassShouldImplement()
{
  v0 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"It is intended for this code to be implemented by subclasses." userInfo:0];
  objc_exception_throw(v0);
}

void CalUnimplemented()
{
  v0 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"This code has been left unimplemented." userInfo:0];
  objc_exception_throw(v0);
}

__CFString *CalBooleanAsString(int a1)
{
  if (a1)
  {
    return @"YES";
  }

  else
  {
    return @"NO";
  }
}

uint64_t CalConvertNSIntegerToNSUInteger(uint64_t a1)
{
  v1 = a1;
  if (a1 < 0)
  {
    v2 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      CalConvertNSIntegerToNSUInteger_cold_1(v1, v2);
    }

    return 0;
  }

  return v1;
}

uint64_t CalConvertNSUIntegerToNSInteger(uint64_t a1)
{
  v1 = a1;
  if (a1 < 0)
  {
    v2 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      CalConvertNSUIntegerToNSInteger_cold_1(v1, v2);
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return v1;
}

uint64_t CalMonotonicTime()
{
  result = override;
  if (!override)
  {
    return mach_absolute_time();
  }

  return result;
}

uint64_t CalContinuousTime()
{
  result = override;
  if (!override)
  {
    return mach_continuous_time();
  }

  return result;
}

uint64_t CalApproximateContinuousTime()
{
  result = override;
  if (!override)
  {
    return mach_continuous_approximate_time();
  }

  return result;
}

double CalContinuousIntervalToNSTimeInterval(unint64_t a1)
{
  if (override)
  {
    return vcvtd_n_f64_u64(a1, 1uLL);
  }

  info = 0;
  mach_timebase_info(&info);
  LODWORD(v4) = info.denom;
  LODWORD(v3) = info.numer;
  return a1 * v3 / v4 / 1000000000.0;
}

unint64_t CalNSTimeIntervalToContinuousInterval(double a1)
{
  if (override)
  {
    return (a1 + a1);
  }

  else
  {
    info = 0;
    mach_timebase_info(&info);
    LODWORD(v3) = info.denom;
    LODWORD(v4) = info.numer;
    return (a1 * 1000000000.0 * v3 / v4);
  }
}

const char *CalendarFeatureFlags.feature.getter()
{
  v1 = *v0;
  v2 = "all_on";
  v3 = "app_intents";
  v4 = "app_entity_observation";
  if (v1 != 3)
  {
    v4 = "intros";
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = "quick_feature_toggle";
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t CalendarFeatureFlags.hashValue.getter()
{
  v1 = *v0;
  sub_1B997011C();
  MEMORY[0x1BFADEB50](v1);
  return sub_1B997013C();
}

uint64_t sub_1B99609B4()
{
  v1 = *v0;
  sub_1B997011C();
  MEMORY[0x1BFADEB50](v1);
  return sub_1B997013C();
}

uint64_t sub_1B9960A28()
{
  v1 = *v0;
  sub_1B997011C();
  MEMORY[0x1BFADEB50](v1);
  return sub_1B997013C();
}

unint64_t sub_1B9960A70()
{
  result = qword_1EBBDB6E0;
  if (!qword_1EBBDB6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDB6E0);
  }

  return result;
}

const char *sub_1B9960AD8()
{
  v1 = *v0;
  v2 = "all_on";
  v3 = "app_intents";
  v4 = "app_entity_observation";
  if (v1 != 3)
  {
    v4 = "intros";
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = "quick_feature_toggle";
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t getEnumTagSinglePayload for CalendarFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CalendarFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id static CalFoundationPreferences.shared()()
{
  v0 = [objc_opt_self() shared];

  return v0;
}

id sub_1B9960D60()
{
  result = [objc_allocWithZone(CalBlockListWrapper) init];
  qword_1EBBDBED8 = result;
  return result;
}

void __swiftcall CalBlockListWrapper.init()(CalBlockListWrapper *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_1B9960DCC()
{
  v0 = sub_1B996FF0C();
  __swift_allocate_value_buffer(v0, qword_1EBBDBEE8);
  __swift_project_value_buffer(v0, qword_1EBBDBEE8);
  return sub_1B996FEFC();
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

id CalBlockListWrapper.init()()
{
  v1 = v0;
  v2 = OBJC_IVAR___CalBlockListWrapper_knownBlockedLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDB6F0, &qword_1B997DB40);
  v3 = swift_allocObject();
  *(v3 + 32) = 0;
  v4 = MEMORY[0x1E69E7CD0];
  *(v3 + 16) = MEMORY[0x1E69E7CD0];
  *(v3 + 24) = v4;
  *&v1[v2] = v3;
  if (MEMORY[0x1E69958F0])
  {
    v5 = MEMORY[0x1E69958D8] == 0;
  }

  else
  {
    v5 = 1;
  }

  v7 = v5 || MEMORY[0x1E69958F8] == 0 || MEMORY[0x1E69958E0] == 0;
  v8 = 0;
  v9 = v7 || MEMORY[0x1E69958E8] == 0;
  if (!v9 && MEMORY[0x1E696EE08] && MEMORY[0x1E696EE00] && MEMORY[0x1E696EDF0] && MEMORY[0x1E696EE18] && MEMORY[0x1E696EDD0] && MEMORY[0x1E696EDD8] && MEMORY[0x1E696EDE0])
  {
    v10 = sub_1B996FE8C();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v8 = sub_1B996FE7C();
  }

  *&v1[OBJC_IVAR___CalBlockListWrapper_blockList] = v8;
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25[3] = sub_1B9966694(0, &qword_1EBBDB708, 0x1E69E9610);
  v25[1] = "quick_feature_toggle";
  v25[2] = v25;
  v14 = *(*(sub_1B996FF3C() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  sub_1B996FF2C();
  v15 = *(*(sub_1B997001C() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B9966A18(&qword_1EBBDB710, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDB718, &qword_1B997DB48);
  sub_1B9966A60(&qword_1EBBDB720, &qword_1EBBDB718, &qword_1B997DB48);
  sub_1B997006C();
  v16 = *(*(sub_1B997002C() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  (*(v18 + 104))(v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69E8090]);
  v19 = sub_1B997005C();
  v20 = objc_allocWithZone(CalAccumulatingQueue);
  aBlock[4] = sub_1B9961390;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9964758;
  aBlock[3] = &block_descriptor;
  v21 = _Block_copy(aBlock);

  v22 = [v20 initWithQueue:v19 andBlock:v21];

  _Block_release(v21);

  *&v1[OBJC_IVAR___CalBlockListWrapper_cacheUpdatingQueue] = v22;
  v26.receiver = v1;
  v26.super_class = CalBlockListWrapper;
  v23 = objc_msgSendSuper2(&v26, sel_init);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  return v23;
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

void sub_1B9961390(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v14 = 0u;
    v15 = 0u;
    sub_1B9967274(&v14, &qword_1EBBDB838, &qword_1B997DC48);
    v5 = 0;
    goto LABEL_18;
  }

  sub_1B99700AC();
  if (!*(a2 + 16) || (v3 = sub_1B9964CA8(v13), (v4 & 1) == 0))
  {
    sub_1B99670A0(v13);
    v14 = 0u;
    v15 = 0u;
    goto LABEL_9;
  }

  sub_1B99672D4(*(a2 + 56) + 32 * v3, &v14);
  sub_1B99670A0(v13);
  if (!*(&v15 + 1))
  {
LABEL_9:
    sub_1B9967274(&v14, &qword_1EBBDB838, &qword_1B997DC48);
    v5 = 0;
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDB830, &qword_1B997DC40);
  if (swift_dynamicCast())
  {
    v5 = v13[0];
  }

  else
  {
    v5 = 0;
  }

LABEL_10:
  sub_1B99700AC();
  if (!*(a2 + 16) || (v6 = sub_1B9964CA8(v13), (v7 & 1) == 0))
  {
    sub_1B99670A0(v13);
LABEL_18:
    v14 = 0u;
    v15 = 0u;
    goto LABEL_19;
  }

  sub_1B99672D4(*(a2 + 56) + 32 * v6, &v14);
  sub_1B99670A0(v13);
  if (!*(&v15 + 1))
  {
LABEL_19:
    sub_1B9967274(&v14, &qword_1EBBDB838, &qword_1B997DC48);
    v8 = 0;
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDB830, &qword_1B997DC40);
  if (swift_dynamicCast())
  {
    v8 = v13[0];
  }

  else
  {
    v8 = 0;
  }

LABEL_20:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return;
  }

  v10 = Strong;
  if (!v5)
  {
    v11 = 0;
    if (v8)
    {
      goto LABEL_23;
    }

LABEL_26:
    v12 = 0;
    goto LABEL_27;
  }

  v11 = sub_1B996FFDC();

  if (!v8)
  {
    goto LABEL_26;
  }

LABEL_23:
  v12 = sub_1B996FFDC();

LABEL_27:
  [v10 updateCacheNowWithEmails:v11 phones:v12];
}

uint64_t sub_1B99616A8(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v17[3] = &type metadata for CalendarFeatureFlags;
  v17[4] = sub_1B9964830();
  LOBYTE(v17[0]) = 4;
  v5 = sub_1B996FE4C();
  __swift_destroy_boxed_opaque_existential_1(v17);
  if ((v5 & 1) != 0 && *(v3 + OBJC_IVAR___CalBlockListWrapper_blockList))
  {
    v6 = sub_1B996FEDC();
    v7 = *(v6 - 8);
    v8 = *(v7 + 64);
    MEMORY[0x1EEE9AC00]();
    v10 = &v17[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = *(*(sub_1B996FE9C() - 8) + 64);
    MEMORY[0x1EEE9AC00]();
    (*(v13 + 104))(&v17[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), *a3);

    sub_1B996FEAC();
    v14 = sub_1B996FE5C();

    (*(v7 + 8))(v10, v6);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1B99618D4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_1B996FF7C();
  v8 = v7;
  v9 = a1;
  LOBYTE(a4) = a4(v6, v8);

  return a4 & 1;
}

Swift::Bool __swiftcall CalBlockListWrapper.cachedBlocked(email:)(Swift::String email)
{
  object = email._object;
  countAndFlagsBits = email._countAndFlagsBits;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBDB8C0, &qword_1B997DB50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B997DB20;
  *(inited + 32) = countAndFlagsBits;
  *(inited + 40) = object;

  sub_1B9965978(inited);
  swift_setDeallocating();
  sub_1B9965AE0(inited + 32);
  v5 = sub_1B996FFDC();

  [v1 queueUpdateCacheWithEmails:v5 phones:0];

  v6 = *&v1[OBJC_IVAR___CalBlockListWrapper_knownBlockedLock];

  os_unfair_lock_lock((v6 + 32));
  sub_1B9965B34((v6 + 16), &v8);
  os_unfair_lock_unlock((v6 + 32));
  LOBYTE(object) = v8;

  return object;
}

uint64_t sub_1B9961A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1B997011C();
  sub_1B996FF8C();
  v7 = sub_1B997013C();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1B99700FC() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

Swift::Bool __swiftcall CalBlockListWrapper.cachedBlocked(phoneNumber:)(Swift::String phoneNumber)
{
  object = phoneNumber._object;
  countAndFlagsBits = phoneNumber._countAndFlagsBits;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBDB8C0, &qword_1B997DB50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B997DB20;
  *(inited + 32) = countAndFlagsBits;
  *(inited + 40) = object;

  sub_1B9965978(inited);
  swift_setDeallocating();
  sub_1B9965AE0(inited + 32);
  v5 = sub_1B996FFDC();

  [v1 queueUpdateCacheWithEmails:0 phones:v5];

  v6 = *&v1[OBJC_IVAR___CalBlockListWrapper_knownBlockedLock];

  os_unfair_lock_lock(v6 + 8);
  sub_1B9965B74(&v6[4], &v8);
  os_unfair_lock_unlock(v6 + 8);
  LOBYTE(object) = v8;

  return object;
}

uint64_t CalBlockListWrapper.isEmpty.getter()
{
  v5[3] = &type metadata for CalendarFeatureFlags;
  v5[4] = sub_1B9964830();
  LOBYTE(v5[0]) = 4;
  v1 = sub_1B996FE4C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  if ((v1 & 1) != 0 && *(v0 + OBJC_IVAR___CalBlockListWrapper_blockList))
  {
    v2 = *(v0 + OBJC_IVAR___CalBlockListWrapper_blockList);

    v3 = sub_1B996FE6C();
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t CalBlockListWrapper.batchLookup(emails:phoneNumbers:completionHandler:)(uint64_t a1, uint64_t a2, void (*a3)(void, void, void), uint64_t a4)
{
  v67 = a1;
  v68 = a2;
  v7 = sub_1B996FE3C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = (MEMORY[0x1EEE9AC00])();
  v70 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v69 = v60 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBDB8B0, &qword_1B997DB60);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = v60 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = v60 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = v60 - v24;
  v79[3] = &type metadata for CalendarFeatureFlags;
  v79[4] = sub_1B9964830();
  LOBYTE(v79[0]) = 4;
  v26 = sub_1B996FE4C();
  __swift_destroy_boxed_opaque_existential_1(v79);
  if (v26)
  {
    if (*(v4 + OBJC_IVAR___CalBlockListWrapper_blockList))
    {
      v27 = *(v8 + 56);
      v27(v25, 1, 1, v7);
      v60[1] = v8 + 56;
      v60[0] = v27;
      v27(v23, 1, 1, v7);
      v28 = v67;
      v65 = a4;
      v66 = a3;
      v63 = v8;
      v64 = v7;
      v62 = v23;
      v61 = v25;
      if (v67)
      {

        sub_1B996FE2C();
        v77 = *(v28 + 16);
        if (v77)
        {
          v76 = sub_1B996FEDC();
          v29 = *(v76 - 8);
          v75 = *(v29 + 64);
          v30 = sub_1B996FE9C();
          v31 = 0;
          v74 = v30;
          v32 = *(v30 - 8);
          v33 = *(v32 + 104);
          v72 = v32 + 104;
          v73 = v33;
          v34 = *(v32 + 64);
          v71 = *MEMORY[0x1E696ED98];
          v35 = (v29 + 8);
          v36 = (v28 + 40);
          do
          {
            v38 = *(v36 - 1);
            v37 = *v36;
            v39 = MEMORY[0x1EEE9AC00](v30);
            v41 = v60 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
            MEMORY[0x1EEE9AC00](v39);
            v73(v60 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), v71, v74);

            sub_1B996FEAC();
            if (sub_1B996FE5C())
            {
              sub_1B996FE1C();
            }

            ++v31;
            v30 = (*v35)(v41, v76);
            v36 += 2;
          }

          while (v77 != v31);
        }

        v25 = v61;
        sub_1B9967274(v61, &unk_1EBBDB8B0, &qword_1B997DB60);
        v43 = v64;
        (*(v63 + 32))(v25, v69, v64);
        (v60[0])(v25, 0, 1, v43);
        a3 = v66;
        v23 = v62;
        v44 = v68;
        if (!v68)
        {
          goto LABEL_19;
        }
      }

      else
      {

        v44 = v68;
        if (!v68)
        {
LABEL_19:
          a3(v25, v23, 0);

          goto LABEL_20;
        }
      }

      sub_1B996FE2C();
      v77 = *(v44 + 16);
      if (v77)
      {
        v76 = sub_1B996FEDC();
        v45 = *(v76 - 8);
        v75 = *(v45 + 64);
        v46 = sub_1B996FE9C();
        v47 = 0;
        v74 = v46;
        v48 = *(v46 - 8);
        v49 = *(v48 + 104);
        v72 = v48 + 104;
        v73 = v49;
        v50 = *(v48 + 64);
        v71 = *MEMORY[0x1E696ED88];
        v51 = (v45 + 8);
        v52 = (v44 + 40);
        do
        {
          v54 = *(v52 - 1);
          v53 = *v52;
          v55 = MEMORY[0x1EEE9AC00](v46);
          v57 = v60 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
          MEMORY[0x1EEE9AC00](v55);
          v73(v60 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0), v71, v74);

          sub_1B996FEAC();
          if (sub_1B996FE5C())
          {
            sub_1B996FE1C();
          }

          ++v47;
          v46 = (*v51)(v57, v76);
          v52 += 2;
        }

        while (v77 != v47);
      }

      v23 = v62;
      sub_1B9967274(v62, &unk_1EBBDB8B0, &qword_1B997DB60);
      v58 = v64;
      (*(v63 + 32))(v23, v70, v64);
      (v60[0])(v23, 0, 1, v58);
      a3 = v66;
      v25 = v61;
      goto LABEL_19;
    }
  }

  v42 = *(v8 + 56);
  v42(v20, 1, 1, v7);
  v42(v17, 1, 1, v7);
  a3(v20, v17, 0);
  v23 = v17;
  v25 = v20;
LABEL_20:
  sub_1B9967274(v23, &unk_1EBBDB8B0, &qword_1B997DB60);
  return sub_1B9967274(v25, &unk_1EBBDB8B0, &qword_1B997DB60);
}

uint64_t CalBlockListWrapper.batchCached(emails:phoneNumbers:completionHandler:)(uint64_t a1, uint64_t a2, void (*a3)(char *, char *, void), uint64_t a4)
{
  v28 = a4;
  v29 = a3;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBDB750, &qword_1B997DB68);
  v7 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBDB8B0, &qword_1B997DB60);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v27 - v15;
  if (a1)
  {

    v18 = sub_1B99665E8(v17);

    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = 0;
    if (a2)
    {
LABEL_3:

      v20 = sub_1B99665E8(v19);

      if (v18)
      {
        goto LABEL_4;
      }

LABEL_8:
      v21 = 0;
      if (v20)
      {
        goto LABEL_5;
      }

LABEL_9:
      v22 = 0;
      goto LABEL_10;
    }
  }

  v20 = 0;
  if (!v18)
  {
    goto LABEL_8;
  }

LABEL_4:
  v21 = sub_1B996FFDC();

  if (!v20)
  {
    goto LABEL_9;
  }

LABEL_5:
  v22 = sub_1B996FFDC();

LABEL_10:
  [v4 queueUpdateCacheWithEmails:v21 phones:{v22, v27, v28}];

  v23 = *&v4[OBJC_IVAR___CalBlockListWrapper_knownBlockedLock];
  MEMORY[0x1EEE9AC00](v24);
  *(&v27 - 2) = a1;
  *(&v27 - 1) = a2;

  os_unfair_lock_lock((v23 + 32));
  sub_1B9965BEC((v23 + 16), v9);
  os_unfair_lock_unlock((v23 + 32));

  v25 = *(v27 + 48);
  sub_1B99670F4(v9, v16, &unk_1EBBDB8B0, &qword_1B997DB60);
  sub_1B99670F4(&v9[v25], v14, &unk_1EBBDB8B0, &qword_1B997DB60);
  v29(v16, v14, 0);
  sub_1B9967274(v14, &unk_1EBBDB8B0, &qword_1B997DB60);
  return sub_1B9967274(v16, &unk_1EBBDB8B0, &qword_1B997DB60);
}

uint64_t sub_1B9962910@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a4;
  v7 = sub_1B996FE3C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v63 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v55 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBDB8B0, &qword_1B997DB60);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v57 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v55 - v18;
  v60 = v8;
  v61 = v7;
  v59 = &v55 - v18;
  if (a2)
  {
    v56 = a3;
    v62 = v13;
    sub_1B996FE2C();
    v20 = *(a2 + 16);
    if (v20)
    {
      for (i = 0; i != v20; ++i)
      {
        v22 = *a1;
        if (*(*a1 + 16))
        {
          v23 = (a2 + 32 + 16 * i);
          v25 = *v23;
          v24 = v23[1];
          v26 = *(v22 + 40);
          sub_1B997011C();

          sub_1B996FF8C();
          v27 = sub_1B997013C();
          v28 = -1 << *(v22 + 32);
          v29 = v27 & ~v28;
          if ((*(v22 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
          {
            v30 = ~v28;
            while (1)
            {
              v31 = (*(v22 + 48) + 16 * v29);
              v32 = *v31 == v25 && v31[1] == v24;
              if (v32 || (sub_1B99700FC() & 1) != 0)
              {
                break;
              }

              v29 = (v29 + 1) & v30;
              if (((*(v22 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
              {
                goto LABEL_4;
              }
            }

            sub_1B996FE1C();
          }

          else
          {
LABEL_4:
          }
        }
      }
    }

    v19 = v59;
    v33 = v60;
    v7 = v61;
    (*(v60 + 32))(v59, v62, v61);
    v34 = *(v33 + 56);
    v34(v19, 0, 1, v7);
    a3 = v56;
    if (v56)
    {
      goto LABEL_18;
    }

LABEL_35:
    v50 = v57;
    v34(v57, 1, 1, v7);
    goto LABEL_36;
  }

  v34 = *(v8 + 56);
  v34(&v55 - v18, 1, 1, v7);
  if (!a3)
  {
    goto LABEL_35;
  }

LABEL_18:
  v62 = v34;
  sub_1B996FE2C();
  v35 = *(a3 + 16);
  if (v35)
  {
    v36 = 0;
    v37 = a3 + 32;
    do
    {
      v38 = a1[1];
      if (*(v38 + 16))
      {
        v39 = (v37 + 16 * v36);
        v41 = *v39;
        v40 = v39[1];
        v42 = *(v38 + 40);
        sub_1B997011C();

        sub_1B996FF8C();
        v43 = sub_1B997013C();
        v44 = -1 << *(v38 + 32);
        v45 = v43 & ~v44;
        if ((*(v38 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
        {
          v46 = ~v44;
          while (1)
          {
            v47 = (*(v38 + 48) + 16 * v45);
            v48 = *v47 == v41 && v47[1] == v40;
            if (v48 || (sub_1B99700FC() & 1) != 0)
            {
              break;
            }

            v45 = (v45 + 1) & v46;
            if (((*(v38 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
            {
              goto LABEL_20;
            }
          }

          sub_1B996FE1C();
        }

        else
        {
LABEL_20:
        }
      }

      ++v36;
    }

    while (v36 != v35);
  }

  v49 = v61;
  v50 = v57;
  (*(v60 + 32))(v57, v63, v61);
  v19 = v59;
  v62(v50, 0, 1, v49);
LABEL_36:
  v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBDB750, &qword_1B997DB68) + 48);
  v52 = v19;
  v53 = v58;
  sub_1B99670F4(v52, v58, &unk_1EBBDB8B0, &qword_1B997DB60);
  return sub_1B99670F4(v50, v53 + v51, &unk_1EBBDB8B0, &qword_1B997DB60);
}

uint64_t sub_1B9962DCC(void *a1, int a2, uint64_t a3, uint64_t a4, void *aBlock, void (*a6)(uint64_t, uint64_t, id, void *))
{
  v10 = _Block_copy(aBlock);
  if (a3)
  {
    a3 = sub_1B996FFBC();
  }

  if (a4)
  {
    a4 = sub_1B996FFBC();
  }

  v11 = a1;
  _Block_copy(v10);
  a6(a3, a4, v11, v10);
  _Block_release(v10);
  _Block_release(v10);
}

void sub_1B9962E9C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_7;
  }

  if (!a2)
  {
    if (!*(a1 + 16))
    {
      return;
    }

    goto LABEL_10;
  }

  if (!*(a1 + 16))
  {
LABEL_7:
    if (!*(a2 + 16))
    {
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDB7E8, &qword_1B997DC00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B997DB20;

    sub_1B99700AC();
    *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDB830, &qword_1B997DC40);
    *(inited + 72) = a2;
    sub_1B9966EF8(inited);
    swift_setDeallocating();
    v8 = inited + 32;
    goto LABEL_11;
  }

  if (!*(a2 + 16))
  {
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDB7E8, &qword_1B997DC00);
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_1B997DB20;

    sub_1B99700AC();
    *(v9 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDB830, &qword_1B997DC40);
    *(v9 + 72) = a1;
    sub_1B9966EF8(v9);
    swift_setDeallocating();
    v8 = v9 + 32;
LABEL_11:
    sub_1B9967274(v8, &qword_1EBBDB7F8, &qword_1B997DC10);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDB7E8, &qword_1B997DC00);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_1B997DB30;

  sub_1B99700AC();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDB830, &qword_1B997DC40);
  *(v5 + 96) = v6;
  *(v5 + 72) = a1;
  sub_1B99700AC();
  *(v5 + 168) = v6;
  *(v5 + 144) = a2;
  sub_1B9966EF8(v5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDB7F8, &qword_1B997DC10);
  swift_arrayDestroy();
LABEL_12:
  v10 = [v2 cacheUpdatingQueue];
  v11 = sub_1B996FF4C();

  [v10 updateTagsAndExecuteBlock:0 withContext:v11];
}

uint64_t sub_1B99631EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B996FF1C();
  v80 = *(v4 - 8);
  v81 = v4;
  v5 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v78 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1B996FF3C();
  v77 = *(v79 - 8);
  v7 = *(v77 + 64);
  v8 = MEMORY[0x1EEE9AC00](v79);
  v76 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69E7CC0];
  v84 = a2;
  if (a1)
  {
    v11 = a1 + 56;
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a1 + 56);
    v15 = (v12 + 63) >> 6;

    v17 = 0;
    for (i = a1; v14; a1 = i)
    {
      v87 = v10;
LABEL_10:
      v19 = (*(a1 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v14)))));
      v21 = *v19;
      v20 = v19[1];
      v85 = sub_1B996FEDC();
      v86 = &v76;
      v22 = *(v85 - 8);
      v23 = *(v22 + 64);
      MEMORY[0x1EEE9AC00](v85);
      v25 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      v26 = sub_1B996FE9C();
      v27 = *(*(v26 - 8) + 64);
      MEMORY[0x1EEE9AC00](v26);
      (*(v29 + 104))(&v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E696ED98]);

      sub_1B996FEAC();
      v10 = v87;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1B99649C4(0, v10[2] + 1, 1, v10);
      }

      v31 = v10[2];
      v30 = v10[3];
      if (v31 >= v30 >> 1)
      {
        v10 = sub_1B99649C4(v30 > 1, v31 + 1, 1, v10);
      }

      v14 &= v14 - 1;
      v10[2] = v31 + 1;
      result = (*(v22 + 32))(v10 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v31, v25, v85);
    }

    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v15)
      {

        a2 = v84;
        goto LABEL_17;
      }

      v14 = *(v11 + 8 * v18);
      ++v17;
      if (v14)
      {
        v87 = v10;
        v17 = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_52;
  }

LABEL_17:
  if (!a2)
  {
LABEL_33:
    if (*&v83[OBJC_IVAR___CalBlockListWrapper_blockList])
    {
      v52 = v10;
      v53 = v10[2];
      if (v53)
      {
        v54 = *(sub_1B996FEDC() - 8);
        v55 = v52;
        v56 = &v52[(*(v54 + 80) + 32) & ~*(v54 + 80)];
        v57 = *(v54 + 72);

        v58 = MEMORY[0x1E69E7CC0];
        do
        {
          v59 = sub_1B996FE5C();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v58 = sub_1B99648D0(0, *(v58 + 16) + 1, 1, v58);
          }

          v61 = *(v58 + 16);
          v60 = *(v58 + 24);
          if (v61 >= v60 >> 1)
          {
            v58 = sub_1B99648D0((v60 > 1), v61 + 1, 1, v58);
          }

          *(v58 + 16) = v61 + 1;
          *(v58 + v61 + 32) = v59 & 1;
          v56 += v57;
          --v53;
        }

        while (v53);

LABEL_46:
        v64 = *&v83[OBJC_IVAR___CalBlockListWrapper_knownBlockedLock];
        MEMORY[0x1EEE9AC00](v8);
        *(&v76 - 2) = v55;
        *(&v76 - 1) = v58;

        os_unfair_lock_lock((v64 + 32));
        sub_1B9966820((v64 + 16), &aBlock);
        os_unfair_lock_unlock((v64 + 32));

        v65 = aBlock;
        v66 = v89;

        if (*(v65 + 16))
        {
        }

        else
        {
          v67 = *(v66 + 16);

          if (!v67)
          {
          }
        }

        sub_1B9966694(0, &qword_1EBBDB708, 0x1E69E9610);
        v68 = sub_1B997003C();
        v69 = swift_allocObject();
        v70 = v83;
        v69[2] = v83;
        v69[3] = v65;
        v69[4] = v66;
        v92 = sub_1B996684C;
        v93 = v69;
        aBlock = MEMORY[0x1E69E9820];
        v89 = 1107296256;
        v90 = sub_1B99645E8;
        v91 = &block_descriptor_12;
        v71 = _Block_copy(&aBlock);
        v72 = v70;

        v73 = v76;
        sub_1B996FF2C();
        aBlock = MEMORY[0x1E69E7CC0];
        sub_1B9966A18(&qword_1EBBDB7C8, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDB7D0, &qword_1B997DBF0);
        sub_1B9966A60(&qword_1EBBDB7D8, &qword_1EBBDB7D0, &qword_1B997DBF0);
        v74 = v78;
        v75 = v81;
        sub_1B997006C();
        MEMORY[0x1BFADEA70](0, v73, v74, v71);
        _Block_release(v71);

        (*(v80 + 8))(v74, v75);
        return (*(v77 + 8))(v73, v79);
      }

      v55 = v52;
    }

    else
    {
      v55 = v10;
      v62 = v10[2];
      if (v62)
      {
        v63 = v10[2];
        v58 = sub_1B996FFCC();
        *(v58 + 16) = v62;
        bzero((v58 + 32), v62);
        goto LABEL_46;
      }
    }

    v58 = MEMORY[0x1E69E7CC0];
    goto LABEL_46;
  }

  v32 = a2 + 56;
  v33 = 1 << *(a2 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(a2 + 56);
  v36 = (v33 + 63) >> 6;

  for (j = 0; v35; result = (*(v42 + 32))(v10 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v51, v45, v85))
  {
    v87 = v10;
LABEL_26:
    v39 = (*(a2 + 48) + ((j << 10) | (16 * __clz(__rbit64(v35)))));
    v40 = *v39;
    v41 = v39[1];
    v85 = sub_1B996FEDC();
    v86 = &v76;
    v42 = *(v85 - 8);
    v43 = *(v42 + 64);
    MEMORY[0x1EEE9AC00](v85);
    v45 = &v76 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
    v46 = sub_1B996FE9C();
    v47 = *(*(v46 - 8) + 64);
    MEMORY[0x1EEE9AC00](v46);
    (*(v49 + 104))(&v76 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E696ED88]);

    sub_1B996FEAC();
    v10 = v87;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1B99649C4(0, v10[2] + 1, 1, v10);
    }

    v51 = v10[2];
    v50 = v10[3];
    a2 = v84;
    if (v51 >= v50 >> 1)
    {
      v10 = sub_1B99649C4(v50 > 1, v51 + 1, 1, v10);
    }

    v35 &= v35 - 1;
    v10[2] = v51 + 1;
  }

  while (1)
  {
    v38 = j + 1;
    if (__OFADD__(j, 1))
    {
      break;
    }

    if (v38 >= v36)
    {

      goto LABEL_33;
    }

    v35 = *(v32 + 8 * v38);
    ++j;
    if (v35)
    {
      v87 = v10;
      j = v38;
      goto LABEL_26;
    }
  }

LABEL_52:
  __break(1u);
  return result;
}

uint64_t sub_1B9963C28@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v81 = a1;
  v72 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDB808, &qword_1B997DC20);
  v80 = *(*(v6 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v79 = v8;
  v9 = &v71 - v8;
  v10 = 0;
  v73 = a2;
  v11 = *(a2 + 16);
  v78 = a3;
  v76 = a3 + 32;
  v75 = MEMORY[0x1E69E7CC0];
  v74 = MEMORY[0x1E69E7CC0];
  v82 = &v71 - v8;
  v77 = v11;
  while (1)
  {
    result = MEMORY[0x1EEE9AC00](v7);
    v13 = &v71 - v79;
    if (v10 == v11)
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDB810, &qword_1B997DC28);
      (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
      goto LABEL_9;
    }

    if (v10 >= v11)
    {
      break;
    }

    result = sub_1B996FEDC();
    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_64;
    }

    v16 = result;
    v17 = *(result - 8);
    v18 = v73 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v10;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDB810, &qword_1B997DC28);
    v20 = *(v19 - 8);
    v21 = *(v20 + 64);
    v22 = MEMORY[0x1EEE9AC00](v19);
    v24 = &v71 - v23;
    v25 = *(v22 + 48);
    *v24 = v26;
    (*(v17 + 16))(&v24[v25], v18, v16);
    v9 = v82;
    sub_1B99670F4(v24, v13, &qword_1EBBDB810, &qword_1B997DC28);
    (*(v20 + 56))(v13, 0, 1, v19);
    v11 = v15;
LABEL_9:
    sub_1B99670F4(v13, v9, &qword_1EBBDB808, &qword_1B997DC20);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDB810, &qword_1B997DC28);
    result = (*(*(v27 - 8) + 48))(v9, 1, v27);
    if (result == 1)
    {
      v69 = v72;
      v70 = v74;
      *v72 = v75;
      v69[1] = v70;
      return result;
    }

    v89 = v11;
    v28 = sub_1B996FEDC();
    v88 = &v71;
    v29 = *(*(v28 - 8) + 64);
    MEMORY[0x1EEE9AC00](v28);
    v31 = &v71 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = *v9;
    v33 = *(v27 + 48);
    v86 = v35;
    v87 = v34;
    (*(v35 + 32))(v31, &v9[v33]);
    v36 = sub_1B996FE9C();
    v85 = &v71;
    v37 = *(v36 - 8);
    v38 = *(v37 + 64);
    MEMORY[0x1EEE9AC00](v36);
    v39 = &v71 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = sub_1B996FEBC();
    MEMORY[0x1EEE9AC00](v40);
    (*(v37 + 104))(v39, *MEMORY[0x1E696ED98], v36);
    sub_1B996715C();
    v84 = v39;
    sub_1B996FF9C();
    sub_1B996FF9C();
    v83 = *(v37 + 8);
    v83(v39, v36);
    v41 = v90[0];
    v42 = v90[9];
    result = sub_1B996FECC();
    v43 = result;
    v45 = v44;
    if (v41 == v42)
    {
      v46 = *v81;
      v47 = *(*v81 + 16);
      if (v47)
      {
        v48 = *(v46 + 40);
        sub_1B997011C();
        sub_1B996FF8C();
        result = sub_1B997013C();
        v49 = -1 << *(v46 + 32);
        v50 = result & ~v49;
        if ((*(v46 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50))
        {
          v51 = ~v49;
          while (1)
          {
            v52 = (*(v46 + 48) + 16 * v50);
            result = *v52;
            if (*v52 == v43 && v52[1] == v45)
            {
              LODWORD(v47) = 1;
              goto LABEL_34;
            }

            result = sub_1B99700FC();
            if (result)
            {
              break;
            }

            v50 = (v50 + 1) & v51;
            if (((*(v46 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
            {
              goto LABEL_20;
            }
          }

          LODWORD(v47) = 1;
          if ((v32 & 0x8000000000000000) != 0)
          {
            goto LABEL_66;
          }
        }

        else
        {
LABEL_20:
          LODWORD(v47) = 0;
          if ((v32 & 0x8000000000000000) != 0)
          {
            goto LABEL_66;
          }
        }
      }

      else
      {
LABEL_34:
        if ((v32 & 0x8000000000000000) != 0)
        {
          goto LABEL_66;
        }
      }

      if (v32 >= *(v78 + 16))
      {
        goto LABEL_68;
      }

      if (v47 == *(v76 + v32))
      {
        goto LABEL_2;
      }

      v11 = v77;
      if (v47)
      {
        sub_1B9965678(v43, v45);
      }

      else
      {

        sub_1B9964DB4(v90, v43, v45);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = sub_1B9964B9C(0, *(v75 + 2) + 1, 1, v75);
      }

      v63 = *(v75 + 2);
      v62 = *(v75 + 3);
      v64 = v63 + 1;
      if (v63 >= v62 >> 1)
      {
        v75 = sub_1B9964B9C((v62 > 1), v63 + 1, 1, v75);
      }

      v83(v84, v36);
      v7 = (*(v86 + 8))(v31, v87);
      v65 = &v92;
    }

    else
    {
      v54 = v81[1];
      v55 = *(v54 + 16);
      if (v55)
      {
        v56 = *(v54 + 40);
        sub_1B997011C();
        sub_1B996FF8C();
        result = sub_1B997013C();
        v57 = -1 << *(v54 + 32);
        v58 = result & ~v57;
        if ((*(v54 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58))
        {
          v59 = ~v57;
          while (1)
          {
            v60 = (*(v54 + 48) + 16 * v58);
            result = *v60;
            if (*v60 == v43 && v60[1] == v45)
            {
              LODWORD(v55) = 1;
              goto LABEL_46;
            }

            result = sub_1B99700FC();
            if (result)
            {
              break;
            }

            v58 = (v58 + 1) & v59;
            if (((*(v54 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
            {
              goto LABEL_31;
            }
          }

          LODWORD(v55) = 1;
          if ((v32 & 0x8000000000000000) != 0)
          {
            goto LABEL_65;
          }
        }

        else
        {
LABEL_31:
          LODWORD(v55) = 0;
          if ((v32 & 0x8000000000000000) != 0)
          {
            goto LABEL_65;
          }
        }
      }

      else
      {
LABEL_46:
        if ((v32 & 0x8000000000000000) != 0)
        {
          goto LABEL_65;
        }
      }

      if (v32 >= *(v78 + 16))
      {
        goto LABEL_67;
      }

      if (v55 == *(v76 + v32))
      {
LABEL_2:

        v83(v84, v36);
        v7 = (*(v86 + 8))(v31, v87);
        v11 = v77;
        goto LABEL_3;
      }

      v11 = v77;
      if (v55)
      {
        sub_1B9965678(v43, v45);
      }

      else
      {

        sub_1B9964DB4(v90, v43, v45);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v74 = sub_1B9964B9C(0, *(v74 + 2) + 1, 1, v74);
      }

      v63 = *(v74 + 2);
      v66 = *(v74 + 3);
      v64 = v63 + 1;
      if (v63 >= v66 >> 1)
      {
        v74 = sub_1B9964B9C((v66 > 1), v63 + 1, 1, v74);
      }

      v83(v84, v36);
      v7 = (*(v86 + 8))(v31, v87);
      v65 = &v91;
    }

    v67 = *(v65 - 32);
    *(v67 + 16) = v64;
    v68 = v67 + 16 * v63;
    *(v68 + 32) = v43;
    *(v68 + 40) = v45;
LABEL_3:
    v10 = v89;
    v9 = v82;
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
  return result;
}

uint64_t sub_1B99645E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1B9964644(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v6 = a4;
  if (a3)
  {
    v8 = sub_1B996FFEC();
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (a4)
  {
LABEL_3:
    v6 = sub_1B996FFEC();
  }

LABEL_4:
  v9 = a1;
  a5(v8, v6);
}

uint64_t sub_1B9964758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_1B996FFBC();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = 0;
  if (a3)
  {
LABEL_3:
    v3 = sub_1B996FF5C();
  }

LABEL_4:

  v5(v6, v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1B9964830()
{
  result = qword_1EBBDB730;
  if (!qword_1EBBDB730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDB730);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

char *sub_1B99648D0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDB828, &qword_1B997DC38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

size_t sub_1B99649C4(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDB7E0, &qword_1B997DBF8);
  v10 = *(sub_1B996FEDC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1B996FEDC() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1B9964B9C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBDB8C0, &qword_1B997DB50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1B9964CA8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1B997008C();

  return sub_1B9964CEC(a1, v5);
}

unint64_t sub_1B9964CEC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1B9967044(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1BFADEAC0](v9, a1);
      sub_1B99670A0(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1B9964DB4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1B997011C();
  sub_1B996FF8C();
  v9 = sub_1B997013C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1B99700FC() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1B9965164(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1B9964F04(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDB820, &qword_1B997DC30);
  result = sub_1B99700CC();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1B997011C();
      sub_1B996FF8C();
      result = sub_1B997013C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1B9965164(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1B9964F04(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1B99652E4();
      goto LABEL_16;
    }

    sub_1B9965440(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1B997011C();
  sub_1B996FF8C();
  result = sub_1B997013C();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1B99700FC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1B997010C();
  __break(1u);
  return result;
}

void *sub_1B99652E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDB820, &qword_1B997DC30);
  v2 = *v0;
  v3 = sub_1B99700BC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1B9965440(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDB820, &qword_1B997DC30);
  result = sub_1B99700CC();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1B997011C();

      sub_1B996FF8C();
      result = sub_1B997013C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1B9965678(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1B997011C();
  sub_1B996FF8C();
  v7 = sub_1B997013C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1B99700FC() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B99652E4();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_1B99657B4(v9);
  *v2 = v20;
  return v13;
}

unint64_t sub_1B99657B4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1B997007C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_1B997011C();

        sub_1B996FF8C();
        v15 = sub_1B997013C();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1B9965978(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDB820, &qword_1B997DC30);
    v3 = sub_1B99700DC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_1B997011C();

      sub_1B996FF8C();
      result = sub_1B997013C();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_1B99700FC();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1B9965B34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B9961A60(*(v2 + 16), *(v2 + 24), *a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1B9965B74@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B9961A60(*(v2 + 16), *(v2 + 24), *(a1 + 8));
  *a2 = result & 1;
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

uint64_t sub_1B9965C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v83 = a1;
  v84 = a2;
  v6 = sub_1B996FE3C();
  v87 = *(v6 - 8);
  v7 = *(v87 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v89 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v88 = &v76 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBDB8B0, &qword_1B997DB60);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v76 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v76 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v76 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v76 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v85 = &v76 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v76 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v86 = &v76 - v33;
  v98[3] = &type metadata for CalendarFeatureFlags;
  v98[4] = sub_1B9964830();
  LOBYTE(v98[0]) = 4;
  v34 = sub_1B996FE4C();
  __swift_destroy_boxed_opaque_existential_1(v98);
  if (v34)
  {
    if (*(a3 + OBJC_IVAR___CalBlockListWrapper_blockList))
    {
      v77 = v27;
      v24 = v86;
      v35 = v87;
      v36 = v87 + 56;
      v37 = *(v87 + 56);
      v37(v86, 1, 1, v6);
      v82 = v32;
      v79 = v36;
      v78 = v37;
      v37(v32, 1, 1, v6);
      v38 = v83;
      v81 = a4;
      v80 = v6;
      if (v83)
      {

        sub_1B996FE2C();
        v96 = *(v38 + 16);
        if (v96)
        {
          v95 = sub_1B996FEDC();
          v39 = *(v95 - 8);
          v94 = *(v39 + 64);
          v40 = sub_1B996FE9C();
          v41 = 0;
          v93 = v40;
          v42 = *(v40 - 8);
          v43 = *(v42 + 104);
          v91 = v42 + 104;
          v92 = v43;
          v44 = *(v42 + 64);
          v90 = *MEMORY[0x1E696ED98];
          v45 = (v39 + 8);
          v46 = (v38 + 40);
          do
          {
            v48 = *(v46 - 1);
            v47 = *v46;
            v49 = MEMORY[0x1EEE9AC00](v40);
            v51 = &v76 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
            MEMORY[0x1EEE9AC00](v49);
            v92(&v76 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0), v90, v93);

            sub_1B996FEAC();
            if (sub_1B996FE5C())
            {
              sub_1B996FE1C();
            }

            ++v41;
            v40 = (*v45)(v51, v95);
            v46 += 2;
          }

          while (v96 != v41);
        }

        v24 = v86;
        sub_1B9967274(v86, &unk_1EBBDB8B0, &qword_1B997DB60);
        v35 = v87;
        v6 = v80;
        (*(v87 + 32))(v24, v88, v80);
        v78(v24, 0, 1, v6);
        a4 = v81;
        v57 = v84;
        if (!v84)
        {
          goto LABEL_25;
        }
      }

      else
      {

        v57 = v84;
        if (!v84)
        {
LABEL_25:
          v72 = v85;
          sub_1B99671A8(v24, v85, &unk_1EBBDB8B0, &qword_1B997DB60);
          v73 = *(v35 + 48);
          if (v73(v72, 1, v6) == 1)
          {
            v55 = 0;
          }

          else
          {
            v55 = sub_1B996FDFC();
            (*(v35 + 8))(v72, v6);
          }

          v74 = v77;
          sub_1B99671A8(v82, v77, &unk_1EBBDB8B0, &qword_1B997DB60);
          if (v73(v74, 1, v6) == 1)
          {
            v56 = 0;
          }

          else
          {
            v56 = sub_1B996FDFC();
            (*(v35 + 8))(v74, v6);
          }

          (*(a4 + 16))(a4, v55, v56, 0);

          v21 = v82;
          goto LABEL_32;
        }
      }

      sub_1B996FE2C();
      v96 = *(v57 + 16);
      if (v96)
      {
        v95 = sub_1B996FEDC();
        v58 = *(v95 - 8);
        v94 = *(v58 + 64);
        v59 = sub_1B996FE9C();
        v60 = 0;
        v93 = v59;
        v61 = *(v59 - 8);
        v62 = *(v61 + 104);
        v91 = v61 + 104;
        v92 = v62;
        v63 = *(v61 + 64);
        v90 = *MEMORY[0x1E696ED88];
        v64 = (v58 + 8);
        v65 = (v57 + 40);
        do
        {
          v67 = *(v65 - 1);
          v66 = *v65;
          v68 = MEMORY[0x1EEE9AC00](v59);
          v70 = &v76 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
          MEMORY[0x1EEE9AC00](v68);
          v92(&v76 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0), v90, v93);

          sub_1B996FEAC();
          if (sub_1B996FE5C())
          {
            sub_1B996FE1C();
          }

          ++v60;
          v59 = (*v64)(v70, v95);
          v65 += 2;
        }

        while (v96 != v60);
      }

      v71 = v82;
      sub_1B9967274(v82, &unk_1EBBDB8B0, &qword_1B997DB60);
      v35 = v87;
      v6 = v80;
      (*(v87 + 32))(v71, v89, v80);
      v78(v71, 0, 1, v6);
      a4 = v81;
      v24 = v86;
      goto LABEL_25;
    }
  }

  v52 = v87;
  v53 = *(v87 + 56);
  v53(v24, 1, 1, v6);
  v53(v21, 1, 1, v6);
  sub_1B99671A8(v24, v18, &unk_1EBBDB8B0, &qword_1B997DB60);
  v54 = *(v52 + 48);
  if (v54(v18, 1, v6) == 1)
  {
    v55 = 0;
  }

  else
  {
    v55 = sub_1B996FDFC();
    (*(v52 + 8))(v18, v6);
  }

  sub_1B99671A8(v21, v15, &unk_1EBBDB8B0, &qword_1B997DB60);
  if (v54(v15, 1, v6) == 1)
  {
    v56 = 0;
  }

  else
  {
    v56 = sub_1B996FDFC();
    (*(v52 + 8))(v15, v6);
  }

  (*(a4 + 16))(a4, v55, v56, 0);
LABEL_32:

  sub_1B9967274(v21, &unk_1EBBDB8B0, &qword_1B997DB60);
  return sub_1B9967274(v24, &unk_1EBBDB8B0, &qword_1B997DB60);
}

uint64_t sub_1B99665E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1BFADEA20](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1B9964DB4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1B9966694(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1B99666E8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B9966708(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_1EBBDB7C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EBBDB7C0);
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B996678C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B99667D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B996684C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = [objc_opt_self() defaultCenter];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDB7E8, &qword_1B997DC00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B997DB30;
  sub_1B996FF7C();
  sub_1B99700AC();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDB7F0, &qword_1B997DC08);
  *(inited + 96) = v6;
  *(inited + 72) = v2;
  v9 = sub_1B996FF7C();
  v10 = v7;

  sub_1B99700AC();
  *(inited + 168) = v6;
  *(inited + 144) = v3;

  sub_1B9966EF8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDB7F8, &qword_1B997DC10);
  swift_arrayDestroy();
  v8 = sub_1B996FF4C();

  [v4 postNotificationName:@"CalBlockListCacheUpdatedNotification" object:v1 userInfo:{v8, v9, v10}];
}

uint64_t sub_1B9966A18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9966A60(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B9966AB8(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v40 = a4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBDB750, &qword_1B997DB68);
  v7 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBDB8B0, &qword_1B997DB60);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v38 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v39 = &v38 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v38 - v20;
  if (a1)
  {

    v23 = sub_1B99665E8(v22);

    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v23 = 0;
    if (a2)
    {
LABEL_3:

      v25 = sub_1B99665E8(v24);

      if (v23)
      {
        goto LABEL_4;
      }

LABEL_8:
      v26 = 0;
      if (v25)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  v25 = 0;
  if (!v23)
  {
    goto LABEL_8;
  }

LABEL_4:
  v26 = sub_1B996FFDC();

  if (v25)
  {
LABEL_5:
    v27 = sub_1B996FFDC();

    goto LABEL_10;
  }

LABEL_9:
  v27 = 0;
LABEL_10:
  [a3 queueUpdateCacheWithEmails:v26 phones:{v27, v38}];

  v28 = *&a3[OBJC_IVAR___CalBlockListWrapper_knownBlockedLock];
  MEMORY[0x1EEE9AC00](v29);
  *(&v38 - 2) = a1;
  *(&v38 - 1) = a2;

  os_unfair_lock_lock((v28 + 32));
  sub_1B9967338((v28 + 16), v9);
  os_unfair_lock_unlock((v28 + 32));

  v30 = *(v38 + 48);
  sub_1B99670F4(v9, v21, &unk_1EBBDB8B0, &qword_1B997DB60);
  v31 = v39;
  sub_1B99670F4(&v9[v30], v39, &unk_1EBBDB8B0, &qword_1B997DB60);
  sub_1B99671A8(v21, v17, &unk_1EBBDB8B0, &qword_1B997DB60);
  v32 = sub_1B996FE3C();
  v33 = *(v32 - 8);
  v34 = *(v33 + 48);
  v35 = 0;
  if (v34(v17, 1, v32) != 1)
  {
    v35 = sub_1B996FDFC();
    (*(v33 + 8))(v17, v32);
  }

  sub_1B99671A8(v31, v14, &unk_1EBBDB8B0, &qword_1B997DB60);
  if (v34(v14, 1, v32) == 1)
  {
    v36 = 0;
  }

  else
  {
    v36 = sub_1B996FDFC();
    (*(v33 + 8))(v14, v32);
  }

  (*(v40 + 16))(v40, v35, v36, 0);

  sub_1B9967274(v31, &unk_1EBBDB8B0, &qword_1B997DB60);
  return sub_1B9967274(v21, &unk_1EBBDB8B0, &qword_1B997DB60);
}

unint64_t sub_1B9966EF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDB800, &qword_1B997DC18);
    v3 = sub_1B99700EC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B99671A8(v4, v13, &qword_1EBBDB7F8, &qword_1B997DC10);
      result = sub_1B9964CA8(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1B9967034(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

_OWORD *sub_1B9967034(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1B99670F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1B996715C()
{
  result = qword_1EBBDB818;
  if (!qword_1EBBDB818)
  {
    sub_1B996FE9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDB818);
  }

  return result;
}

uint64_t sub_1B99671A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
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

uint64_t sub_1B9967274(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B99672D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}