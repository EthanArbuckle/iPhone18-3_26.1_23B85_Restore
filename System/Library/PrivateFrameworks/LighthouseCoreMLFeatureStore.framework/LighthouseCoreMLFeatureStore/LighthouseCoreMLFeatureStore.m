uint64_t doubleSort(void *a1, void *a2)
{
  v3 = a2;
  [a1 doubleValue];
  v5 = v4;
  [v3 doubleValue];
  v7 = v6;

  if (v5 < v7)
  {
    return -1;
  }

  else
  {
    return v5 > v7;
  }
}

void LCFLoggingUtilsInit()
{
  if (LCFLoggingUtilsInit_once != -1)
  {
    LCFLoggingUtilsInit_cold_1();
  }
}

uint64_t __LCFLoggingUtilsInit_block_invoke()
{
  v0 = os_log_create(LRRLoggingSubsystem, LRRLoggingCategoryFeatureStore);
  v1 = LCFLogFeatureStore;
  LCFLogFeatureStore = v0;

  v2 = os_log_create(LRRLoggingSubsystem, LRRLoggingCategoryBiomeManager);
  v3 = LCFLogContextBiomeManager;
  LCFLogContextBiomeManager = v2;

  v4 = os_log_create(LRRLoggingSubsystem, LRRLoggingCategoryDatabaseConnection);
  v5 = LCFLogDatabaseConnection;
  LCFLogDatabaseConnection = v4;

  LCFLogDatabaseColumnConnection = os_log_create(LRRLoggingSubsystem, LRRLoggingCategoryDatabaseColumnConnection);

  return MEMORY[0x2821F96F8]();
}

void sub_255F293E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}