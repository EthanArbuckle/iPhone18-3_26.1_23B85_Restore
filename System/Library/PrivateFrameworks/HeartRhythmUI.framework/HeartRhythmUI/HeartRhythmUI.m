void sub_2521ED58C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2521EDB28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_2521EE49C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getASDSystemAppMetadataClass_block_invoke(uint64_t a1)
{
  AppStoreDaemonLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ASDSystemAppMetadata");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getASDSystemAppMetadataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getASDSystemAppMetadataClass_block_invoke_cold_1();
    AppStoreDaemonLibrary();
  }
}

void AppStoreDaemonLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!AppStoreDaemonLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __AppStoreDaemonLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_2796FB670;
    v3 = 0;
    AppStoreDaemonLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!AppStoreDaemonLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __AppStoreDaemonLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppStoreDaemonLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getASDInstallAppsClass_block_invoke(uint64_t a1)
{
  AppStoreDaemonLibrary();
  result = objc_getClass("ASDInstallApps");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getASDInstallAppsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getASDInstallAppsClass_block_invoke_cold_1();
    return [UIImage(HeartRhythmUI) hrui_screenWidthImageWithName:v3];
  }

  return result;
}

void sub_2521EED24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2521EEF80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t OUTLINED_FUNCTION_0_0()
{

  return NSRequestConcreteImplementation();
}

uint64_t OUTLINED_FUNCTION_1_0()
{

  return objc_opt_class();
}

id OUTLINED_FUNCTION_0_1(id a1)
{

  return a1;
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id OUTLINED_FUNCTION_0_2(id a1)
{

  return a1;
}

void sub_2522133F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id HRHeartRhythmUIFrameworkBundle()
{
  if (HRHeartRhythmUIFrameworkBundle_onceToken != -1)
  {
    HRHeartRhythmUIFrameworkBundle_cold_1();
  }

  v1 = HRHeartRhythmUIFrameworkBundle_heartRhythmUIFrameworkBundle;

  return v1;
}

uint64_t __HRHeartRhythmUIFrameworkBundle_block_invoke()
{
  HRHeartRhythmUIFrameworkBundle_heartRhythmUIFrameworkBundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

id HRUIECGLocalizedString(void *a1)
{
  v1 = a1;
  v2 = HRHeartRhythmUIFrameworkBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Cinnamon"];

  v4 = HKConditionallyRedactedHeartRhythmString();

  return v4;
}

id NSURLFromHRLinkTextViewURLIdentifier(uint64_t a1)
{
  if ((a1 - 1) >= 2)
  {
    v1 = 0;
    v2 = 0;
    if (!a1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v1 = HRUIElectrocardiogramLearnMoreLink;
  }

  v2 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v1];

LABEL_5:

  return v2;
}

CFRange CTFrameGetStringRange(CTFrameRef frame)
{
  v1 = MEMORY[0x282114890](frame);
  result.length = v2;
  result.location = v1;
  return result;
}

CFRange CTFrameGetVisibleStringRange(CTFrameRef frame)
{
  v1 = MEMORY[0x282114898](frame);
  result.length = v2;
  result.location = v1;
  return result;
}

CFRange CTRunGetStringRange(CTRunRef run)
{
  v1 = MEMORY[0x2821149E8](run);
  result.length = v2;
  result.location = v1;
  return result;
}