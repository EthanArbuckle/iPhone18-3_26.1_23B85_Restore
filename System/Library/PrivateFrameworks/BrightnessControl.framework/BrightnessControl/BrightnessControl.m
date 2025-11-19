void sub_223D12E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223D13470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223D1377C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL _isIOKitCompatible()
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  inited = _COREBRIGHTNESS_LOG_DEFAULT;
  if (!_COREBRIGHTNESS_LOG_DEFAULT)
  {
    inited = init_default_corebrightness_log();
  }

  result = os_log_type_enabled(inited, OS_LOG_TYPE_ERROR);
  if (result)
  {
    _isIOKitCompatible_cold_1();
    return 0;
  }

  return result;
}

CFStringRef createAmmoliteKey(const char *a1, uint64_t a2)
{
  v3 = *MEMORY[0x277CBECE8];
  if ((a2 & 0x80000000) == 0)
  {
    return CFStringCreateWithFormat(v3, 0, @"%s-%d", a1, a2);
  }

  SystemEncoding = CFStringGetSystemEncoding();

  return CFStringCreateWithCString(v3, a1, SystemEncoding);
}

void sub_223D16380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223D169F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223D16CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_223D16E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void BoostFactorUpdateNotificationCallback(void *a1, int a2, int a3, uint64_t a4)
{
  if ([a1 logHandle])
  {
    inited = [a1 logHandle];
LABEL_3:
    v9 = inited;
    goto LABEL_5;
  }

  v9 = _COREBRIGHTNESS_LOG_DEFAULT;
  if (!_COREBRIGHTNESS_LOG_DEFAULT)
  {
    inited = init_default_corebrightness_log();
    goto LABEL_3;
  }

LABEL_5:
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    BoostFactorUpdateNotificationCallback_cold_1(a3, a2, v9);
  }

  if (a3 == -536788733)
  {
    [a1 boostFactorFromIOFixed:a4];
    [a1 setBoostFactor:?];
  }
}

id _copyMatchingDict()
{
  v5[3] = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  v5[0] = @"IOHIDDevice";
  v4[0] = @"IOProviderClass";
  v4[1] = @"DeviceUsagePage";
  v5[1] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:128];
  v4[2] = @"DeviceUsage";
  v5[2] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:3];
  objc_autoreleasePoolPop(v0);
  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

double getUserForNits(double a1)
{
  v1 = 0.0;
  if (a1 <= 0.0)
  {
    return v1;
  }

  v1 = 1.0;
  if (a1 >= 728.274)
  {
    return v1;
  }

  v2 = 0;
  v3 = 1001;
  v4 = 1001;
  do
  {
    v5 = v2 + (v3 >> 1);
    if (*(&table + 2 * v5) >= a1)
    {
      v4 = v5;
    }

    else
    {
      v2 = v5;
    }

    v3 = v4 - v2;
  }

  while ((v4 - v2) > 1);
  return *(&table + 2 * v2 + 1) + (a1 - *(&table + 2 * v2)) / (*(&table + 2 * v4) - *(&table + 2 * v2)) * (*(&table + 2 * v4 + 1) - *(&table + 2 * v2 + 1));
}

uint64_t copyNitsToUserMapping()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277CBEB18] arrayWithCapacity:1002];
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:1002];
  v3 = 0;
  v4 = &qword_223D20570;
  do
  {
    [v1 setObject:objc_msgSend(MEMORY[0x277CCABB0] atIndexedSubscript:{"numberWithDouble:", *(v4 - 1)), v3}];
    v5 = *v4;
    v4 += 2;
    [v2 setObject:objc_msgSend(MEMORY[0x277CCABB0] atIndexedSubscript:{"numberWithDouble:", v5), v3++}];
  }

  while (v3 != 1002);
  v6 = objc_alloc(MEMORY[0x277CBEA60]);
  v7 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v1];
  v8 = [v6 initWithObjects:{v7, objc_msgSend(objc_alloc(MEMORY[0x277CBEA60]), "initWithArray:", v2), 0}];
  objc_autoreleasePoolPop(v0);
  return v8;
}

float clamp(float a1, float a2, float a3)
{
  if (a1 <= a3)
  {
    a3 = a1;
  }

  if (a1 >= a2)
  {
    return a3;
  }

  else
  {
    return a2;
  }
}

float *find_bound(float *result, unint64_t a2, unint64_t *a3, uint64_t *a4, float a5)
{
  v5 = 0;
  v6 = 0;
  if (!result || !a2)
  {
    goto LABEL_13;
  }

  if (*result > a5)
  {
    v5 = 0;
    v6 = 1;
LABEL_13:
    *a3 = v5;
    *a4 = v6;
    return result;
  }

  v6 = a2 - 1;
  if (result[a2 - 1] <= a5)
  {
    v5 = a2 - 2;
    goto LABEL_13;
  }

  if (a2 >= 2)
  {
    v7 = 0;
    for (i = result + 1; *(i - 1) > a5 || *i <= a5; ++i)
    {
      if (1 - a2 == --v7)
      {
        return result;
      }
    }

    v5 = -v7;
    v6 = 1 - v7;
    goto LABEL_13;
  }

  return result;
}

float *two_dimensional_interpolation(float *result, unint64_t a2, float *a3, unint64_t a4, uint64_t a5, float a6, float a7)
{
  if (a4 >= 2 && a2 >= 2)
  {
    v8 = result;
    if (result)
    {
      if (a3 && a5)
      {
        v12 = result[a2 - 1];
        if (v12 >= a6)
        {
          v12 = a6;
        }

        if (*result <= a6)
        {
          v13 = v12;
        }

        else
        {
          v13 = *result;
        }

        v14 = a3[a4 - 1];
        if (v14 >= a7)
        {
          v14 = a7;
        }

        if (*a3 <= a7)
        {
          v15 = v14;
        }

        else
        {
          v15 = *a3;
        }

        v26 = 0;
        v27 = 0;
        find_bound(result, a2, &v27, &v26, v13);
        v24 = 0;
        v25 = 0;
        result = find_bound(a3, a4, &v25, &v24, v15);
        v16 = v8[v27];
        v17 = v8[v26];
        v18 = a3[v25];
        v19 = a3[v24];
        v20 = (v17 - v16) * (v19 - v18);
        v21 = fabsf(v20);
        v22 = 1.0 / v20;
        if (v21 <= (fmaxf(v21, 0.0) * 0.00000011921))
        {
          v22 = 1.0;
        }

        v23 = (((*(a5 + 4 * v24 * a2 + 4 * v27) * (((v17 - v13) * (v15 - v18)) * v22)) + ((((v17 - v13) * (v19 - v15)) * v22) * *(a5 + 4 * v25 * a2 + 4 * v27))) + ((((v13 - v16) * (v19 - v15)) * v22) * *(a5 + 4 * v25 * a2 + 4 * v26))) + ((((v13 - v16) * (v15 - v18)) * v22) * *(a5 + 4 * v24 * a2 + 4 * v26));
      }
    }
  }

  return result;
}

float mach_time_to_nanoseconds(unint64_t a1)
{
  if (mach_time_to_nanoseconds::token != -1)
  {
    mach_time_to_nanoseconds_cold_1();
  }

  return *&mach_time_to_nanoseconds::machTimeBaseFactor * a1;
}

float __mach_time_to_nanoseconds_block_invoke()
{
  mach_timebase_info(&info);
  result = info.numer / info.denom;
  *&mach_time_to_nanoseconds::machTimeBaseFactor = result;
  return result;
}

float mach_time_to_milliseconds(unint64_t a1)
{
  if (mach_time_to_nanoseconds::token != -1)
  {
    mach_time_to_nanoseconds_cold_1();
  }

  return (*&mach_time_to_nanoseconds::machTimeBaseFactor * a1) / 1000000.0;
}

float mach_time_to_seconds(unint64_t a1)
{
  if (mach_time_to_nanoseconds::token != -1)
  {
    mach_time_to_nanoseconds_cold_1();
  }

  return (*&mach_time_to_nanoseconds::machTimeBaseFactor * a1) / 1000000000.0;
}

float mach_time_now_in_nanoseconds()
{
  v0 = mach_absolute_time();
  if (mach_time_to_nanoseconds::token != -1)
  {
    mach_time_to_nanoseconds_cold_1();
  }

  return *&mach_time_to_nanoseconds::machTimeBaseFactor * v0;
}

float mach_time_now_in_milliseconds()
{
  v0 = mach_absolute_time();
  if (mach_time_to_nanoseconds::token != -1)
  {
    mach_time_to_nanoseconds_cold_1();
  }

  return (*&mach_time_to_nanoseconds::machTimeBaseFactor * v0) / 1000000.0;
}

float mach_time_now_in_seconds()
{
  v0 = mach_absolute_time();
  if (mach_time_to_nanoseconds::token != -1)
  {
    mach_time_to_nanoseconds_cold_1();
  }

  return (*&mach_time_to_nanoseconds::machTimeBaseFactor * v0) / 1000000000.0;
}

unint64_t create_array_from_cfdata<int>(const void *a1, UInt8 **a2)
{
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != CFDataGetTypeID()))
  {
    v7 = 0;
    goto LABEL_6;
  }

  Length = CFDataGetLength(a1);
  if ((CFDataGetLength(a1) & 3) == 0)
  {
    v6 = Length >> 2;
    v7 = malloc_type_calloc(Length >> 2, 4uLL, 0x100004052888210uLL);
    if (v7)
    {
      v9.length = Length & 0xFFFFFFFFFFFFFFFCLL;
      v9.location = 0;
      CFDataGetBytes(a1, v9, v7);
      goto LABEL_7;
    }

LABEL_6:
    v6 = 0;
LABEL_7:
    *a2 = v7;
    return v6;
  }

  return 0;
}

uint64_t get_value_from_cfdata<int>(uint64_t result, _DWORD *a2)
{
  *buffer = 0;
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFDataGetTypeID() && CFDataGetLength(v3) == 4)
    {
      v7.location = 0;
      v7.length = 4;
      CFDataGetBytes(v3, v7, buffer);
      result = 1;
      v5 = *buffer;
    }

    else
    {
      v5 = 0;
      result = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t get_value_from_cfdata<float>(uint64_t result, _DWORD *a2)
{
  *buffer = 0;
  v3 = 0;
  if (result)
  {
    v4 = result;
    v5 = CFGetTypeID(result);
    if (v5 == CFDataGetTypeID() && CFDataGetLength(v4) == 4)
    {
      v7.location = 0;
      v7.length = 4;
      CFDataGetBytes(v4, v7, buffer);
      result = 1;
      v3 = *buffer;
    }

    else
    {
      result = 0;
    }
  }

  *a2 = v3;
  return result;
}

CFTypeRef load_integer_array_from_edt(io_registry_entry_t a1, CFStringRef key, UInt8 **a3)
{
  result = IORegistryEntrySearchCFProperty(a1, "IOService", key, *MEMORY[0x277CBECE8], 3u);
  if (result)
  {
    v5 = result;
    array_from = create_array_from_cfdata<int>(result, a3);
    CFRelease(v5);
    return array_from;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

unint64_t load_float_array_from_edt(io_registry_entry_t a1, CFStringRef key, void *a3)
{
  v4 = IORegistryEntrySearchCFProperty(a1, "IOService", key, *MEMORY[0x277CBECE8], 3u);
  if (v4)
  {
    v5 = v4;
    v8 = 0;
    v6 = create_array_from_cfdata<int>(v4, &v8);
    *a3 = v8;
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
    *a3 = 0;
  }

  return v6;
}

float load_float_from_edt(io_registry_entry_t a1, CFStringRef key)
{
  v5 = NAN;
  v2 = IORegistryEntrySearchCFProperty(a1, "IOService", key, *MEMORY[0x277CBECE8], 3u);
  if (!v2)
  {
    return NAN;
  }

  v3 = v2;
  get_value_from_cfdata<float>(v2, &v5);
  CFRelease(v3);
  return v5;
}

CFTypeRef load_int_from_edt(io_registry_entry_t a1, CFStringRef key, _DWORD *a3)
{
  result = IORegistryEntrySearchCFProperty(a1, "IOService", key, *MEMORY[0x277CBECE8], 3u);
  if (result)
  {
    v5 = result;
    value_from = get_value_from_cfdata<int>(result, a3);
    CFRelease(v5);
    return value_from;
  }

  return result;
}

CFTypeRef load_uint_from_edt(io_registry_entry_t a1, CFStringRef key, _DWORD *a3)
{
  result = IORegistryEntrySearchCFProperty(a1, "IOService", key, *MEMORY[0x277CBECE8], 3u);
  if (result)
  {
    v5 = result;
    value_from = get_value_from_cfdata<int>(result, a3);
    CFRelease(v5);
    return value_from;
  }

  return result;
}

float load_fixed_float_from_edt(io_registry_entry_t a1, CFStringRef key)
{
  v2 = IORegistryEntrySearchCFProperty(a1, "IOService", key, *MEMORY[0x277CBECE8], 3u);
  if (!v2)
  {
    return NAN;
  }

  v3 = v2;
  v6 = 0;
  if (get_value_from_cfdata<int>(v2, &v6))
  {
    v4 = v6 * 0.000015259;
  }

  else
  {
    v4 = NAN;
  }

  CFRelease(v3);
  return v4;
}

CFTypeRef load_BOOL_from_edt(io_registry_entry_t a1, const __CFString *a2, BOOL *a3)
{
  v5 = 0;
  result = load_uint_from_edt(a1, a2, &v5);
  if (result)
  {
    *a3 = v5 != 0;
  }

  return result;
}

double scaleForExponent(int a1)
{
  result = 1.0;
  if (a1 >= 8)
  {
    if (a1 <= 0xF)
    {
      for (i = 16; i > a1; --i)
      {
        result = result * 10.0;
      }
    }
  }

  else
  {
    v2 = 1.0;
    if (a1 >= 1)
    {
      do
      {
        v2 = v2 * 10.0;
        --a1;
      }

      while (a1);
    }

    return 1.0 / v2;
  }

  return result;
}

double AAP_GCP_LuxThreshold(double a1)
{
  if (a1 <= 1000.0)
  {
    return a1 * -0.146673 + a1 * 0.000081 * a1 + 74.694167;
  }

  v1 = 13.0;
  if (a1 >= 10000.0)
  {
    v2 = 50.0;
    v3 = a1 + -10000.0;
    if (v3 <= 50.0)
    {
      v2 = v3;
    }

    if (v3 >= 13.0)
    {
      return v2;
    }

    else
    {
      return 13.0;
    }
  }

  return v1;
}

uint64_t get_int_from_bootarg(const char *a1, _DWORD *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  bzero(__s1, 0x400uLL);
  v8 = 1024;
  if (sysctlbyname("kern.bootargs", __s1, &v8, 0, 0))
  {
    result = 0;
  }

  else
  {
    result = strstr(__s1, a1);
    if (result)
    {
      v5 = result;
      v6 = strlen(a1);
      *a2 = strtol((v5 + v6 + 1), 0, 0);
      result = 1;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t get_float_from_bootarg(const char *a1, float *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  bzero(__s1, 0x400uLL);
  v8 = 1024;
  if (sysctlbyname("kern.bootargs", __s1, &v8, 0, 0))
  {
    result = 0;
  }

  else
  {
    result = strstr(__s1, a1);
    if (result)
    {
      v5 = result;
      v6 = strlen(a1);
      *a2 = strtof((v5 + v6 + 1), 0);
      result = 1;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_1_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

os_log_t init_default_corebrightness_log()
{
  v0 = os_log_create("com.apple.CoreBrightness", "default");
  _COREBRIGHTNESS_LOG_DEFAULT = v0;
  if (!v0)
  {
    v0 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      init_default_corebrightness_log_cold_1();
    }

    _COREBRIGHTNESS_LOG_DEFAULT = v0;
  }

  return v0;
}

int main(int argc, const char **argv, const char **envp)
{
  v17 = *MEMORY[0x277D85DE8];
  displays = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = +[BCBrtControl copyAllAvailableControls];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        [displays setObject:v8 forKeyedSubscript:{objc_msgSend(v8, "ID")}];
        [v8 setDisplayInvalidHandler:&__block_literal_global_0];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __main_block_invoke_2;
  v11[3] = &unk_2784F8F98;
  v11[4] = &__block_literal_global_0;
  [+[BCBrtControl newMonitorForAllControlsWithHandler:error:](BCBrtControl newMonitorForAllControlsWithHandler:v11 error:{0), "cancel"}];
  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t __main_block_invoke(uint64_t a1, void *a2)
{
  v2 = displays;
  v3 = [a2 ID];

  return [v2 removeObjectForKey:v3];
}

void __main_block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [displays objectForKey:{objc_msgSend(a2, "ID")}];
    if (v3)
    {
      if (([v3 isEqual:a2] & 1) == 0)
      {
        __main_block_invoke_2_cold_1();
      }
    }

    else
    {
      [displays setObject:a2 forKeyedSubscript:{objc_msgSend(a2, "ID")}];
      [a2 setCallbackQueue:{dispatch_get_global_queue(0, 0)}];
      v4 = *(a1 + 32);

      [a2 setDisplayInvalidHandler:v4];
    }
  }
}

uint64_t setBrightnessOnAllDisplays(double a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = displays;
  result = [displays countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v9 = 0;
        [v7 setNits:&v9 error:a1];
        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v4 = result;
    }

    while (result);
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t load_array_from_reader<unsigned int>(void *a1, uint64_t a2, void *a3)
{
  v4 = [a1 copyProperty:a2];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v8 = 0;
  v6 = create_array_from_cfdata<int>(v4, &v8);

  if (v6)
  {
    *a3 = v8;
  }

  return v6;
}

unint64_t load_array_from_reader<short>(void *a1, uint64_t a2, void *a3)
{
  v4 = [a1 copyProperty:a2];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v8 = 0;
  v6 = create_array_from_cfdata<short>(v4, &v8);

  if (v6)
  {
    *a3 = v8;
  }

  return v6;
}

void sub_223D1B7C8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t load_from_reader<int>(void *a1, uint64_t a2, _DWORD *a3)
{
  if (!a3)
  {
    return 0;
  }

  result = [a1 copyProperty:a2];
  if (result)
  {
    v5 = result;
    v7 = 0;
    value_from = get_value_from_cfdata<int>(result, &v7);

    if (value_from)
    {
      *a3 = v7;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t load_from_reader<float>(void *a1, uint64_t a2, _DWORD *a3)
{
  if (!a3)
  {
    return 0;
  }

  result = [a1 copyProperty:a2];
  if (result)
  {
    v5 = result;
    v7 = 0;
    value_from = get_value_from_cfdata<float>(result, &v7);

    if (value_from)
    {
      *a3 = v7;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t create_array_from_cfdata<short>(const void *a1, UInt8 **a2)
{
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != CFDataGetTypeID()))
  {
    v7 = 0;
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  Length = CFDataGetLength(a1);
  if (CFDataGetLength(a1))
  {
    return 0;
  }

  v6 = Length >> 1;
  v7 = malloc_type_calloc(Length >> 1, 2uLL, 0x1000040BDFB0063uLL);
  if (!v7)
  {
    goto LABEL_7;
  }

  v9.length = Length & 0xFFFFFFFFFFFFFFFELL;
  v9.location = 0;
  CFDataGetBytes(a1, v9, v7);
LABEL_8:
  *a2 = v7;
  return v6;
}

void OUTLINED_FUNCTION_1_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_223D1D794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *_newBlockWrapper(const void *a1)
{
  if (!a1)
  {
    _newBlockWrapper_cold_1();
  }

  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = _Block_copy(a1);
  return v2;
}

void _freeBlockWrapper(const void **a1)
{
  _Block_release(*a1);

  free(a1);
}

id BCBrtControlNewMonitorForAllDisplaysWithHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __BCBrtControlNewMonitorForAllDisplaysWithHandler_block_invoke;
  v4[3] = &__block_descriptor_48_e22_v16__0__BCBrtControl_8l;
  v4[4] = a1;
  v4[5] = a2;
  return [BCBrtControl newMonitorForAllControlsWithHandler:v4 error:a3];
}

uint64_t BCBrtControlSetDisplayInvalidHandler(void *a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __BCBrtControlSetDisplayInvalidHandler_block_invoke;
  v4[3] = &__block_descriptor_48_e22_v16__0__BCBrtControl_8l;
  v4[4] = a2;
  v4[5] = a3;
  return [a1 setDisplayInvalidHandler:v4];
}

uint64_t BCBrtControlSetNitsAsync(void *a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __BCBrtControlSetNitsAsync_block_invoke;
  v4[3] = &__block_descriptor_48_e17_v16__0__NSError_8l;
  v4[4] = a2;
  v4[5] = a3;
  return [a1 setNitsAsync:v4 completionHandler:?];
}

uint64_t BCBrtControlSetPropertyAync(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __BCBrtControlSetPropertyAync_block_invoke;
  v6[3] = &__block_descriptor_48_e17_v16__0__NSError_8l;
  v6[4] = a4;
  v6[5] = a5;
  return [a1 setPropertyAync:a2 value:a3 completionHandler:v6];
}

void _isIOKitCompatible_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void BoostFactorUpdateNotificationCallback_cold_1(int a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109376;
  v4[1] = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_debug_impl(&dword_223D10000, log, OS_LOG_TYPE_DEBUG, "display service message type 0x%X from service 0x%X", v4, 0xEu);
  v3 = *MEMORY[0x277D85DE8];
}