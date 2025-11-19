void sub_256176930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25617760C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2561779CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_256177FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2561786D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t LCSFeatureEnabled(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = 0;
  }

  else
  {
    v2 = _os_feature_enabled_impl();
  }

  return ((overriddenEnabledFeatures & (1 << v1)) != 0) | v2 & 1u;
}

uint64_t LCSOverrideFeatureEnabled(uint64_t result, int a2)
{
  v2 = 1 << result;
  if (a2)
  {
    v3 = overriddenEnabledFeatures | v2;
  }

  else
  {
    v3 = overriddenEnabledFeatures & ~v2;
  }

  overriddenEnabledFeatures = v3;
  return result;
}

id LCSLogCommon()
{
  if (LCSLogCommon_onceToken != -1)
  {
    LCSLogCommon_cold_1();
  }

  v1 = LCSLogCommon___logObj;

  return v1;
}

uint64_t __LCSLogCommon_block_invoke()
{
  LCSLogCommon___logObj = os_log_create("com.apple.LockedContentServices", "Common");

  return MEMORY[0x2821F96F8]();
}

id LCSLogExtension()
{
  if (LCSLogExtension_onceToken != -1)
  {
    LCSLogExtension_cold_1();
  }

  v1 = LCSLogExtension___logObj;

  return v1;
}

uint64_t __LCSLogExtension_block_invoke()
{
  LCSLogExtension___logObj = os_log_create("com.apple.LockedContentServices", "Extension");

  return MEMORY[0x2821F96F8]();
}

id LCSLogSessionContents()
{
  if (LCSLogSessionContents_onceToken != -1)
  {
    LCSLogSessionContents_cold_1();
  }

  v1 = LCSLogSessionContents___logObj;

  return v1;
}

uint64_t __LCSLogSessionContents_block_invoke()
{
  LCSLogSessionContents___logObj = os_log_create("com.apple.LockedContentServices", "SessionContents");

  return MEMORY[0x2821F96F8]();
}

id LCSLogSandboxing()
{
  if (LCSLogSandboxing_onceToken != -1)
  {
    LCSLogSandboxing_cold_1();
  }

  v1 = LCSLogSandboxing___logObj;

  return v1;
}

uint64_t __LCSLogSandboxing_block_invoke()
{
  LCSLogSandboxing___logObj = os_log_create("com.apple.LockedContentServices", "Sandboxing");

  return MEMORY[0x2821F96F8]();
}

void sub_25617B914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25617BE8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *_LCSTypeIdentifierForType(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"com.apple.SecureCapture";
  }

  else
  {
    return @"com.apple.GenericSession";
  }
}

void sub_25617C910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25617E674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  objc_destroyWeak((v37 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *NSStringFromBundleTarget(uint64_t a1)
{
  if (a1)
  {
    return @"extension";
  }

  else
  {
    return @"container";
  }
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &buf, 0x3Au);
}

uint64_t OUTLINED_FUNCTION_2_0()
{

  return objc_opt_class();
}

void sub_256180614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25618153C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_256181A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_1_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id NSStringFromLCSCaptureApplicationLaunchTypeMask(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB68] string];
  v3 = v2;
  if (a1)
  {
    if ((a1 & 1) == 0)
    {
      goto LABEL_6;
    }

    v4 = @"Default Camera Capture Launch, ";
  }

  else
  {
    v4 = @"None";
  }

  [v2 appendString:v4];
LABEL_6:
  v5 = [v3 copy];

  return v5;
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}