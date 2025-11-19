void BMMonitorBlockExecutionWithSignature(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[BMBlockMonitoring sharedManager];
  [v4 executeBlockWithSignature:a1 block:v3];
}

void sub_241BB08BC(void *a1)
{
  objc_begin_catch(a1);
  *v2 = v3;
  dispatch_source_cancel(v1);
  objc_exception_rethrow();
}

void BMMonitorBlockExecutionWithSignatureAndOptions(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v6 = 60;
  if (a2 < 0x3C)
  {
    v6 = a2;
  }

  if (a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1;
  }

  v8 = a4;
  v9 = +[BMBlockMonitoring sharedManager];
  [v9 executeBlockWithSignature:a1 timeout:v7 options:a3 block:v8];
}

void BMMonitorBlockExecutionWithExtraDiagnostics(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v8 = 60;
  if (a2 < 0x3C)
  {
    v8 = a2;
  }

  if (a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1;
  }

  v10 = a5;
  v11 = a4;
  v12 = +[BMBlockMonitoring sharedManager];
  [v12 executeBlockWithSignature:a1 timeout:v9 options:a3 diagnosticCollectionBlock:v11 block:v10];
}

uint64_t SetupAssistantLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!SetupAssistantLibraryCore_frameworkLibrary)
  {
    SetupAssistantLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = SetupAssistantLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __SetupAssistantLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SetupAssistantLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getBYSetupAssistantFinishedDarwinNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SetupAssistantLibrary();
  result = dlsym(v2, "BYSetupAssistantFinishedDarwinNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBYSetupAssistantFinishedDarwinNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SetupAssistantLibrary()
{
  v0 = SetupAssistantLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

void *__getBYSetupAssistantNeedsToRunSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SetupAssistantLibrary();
  result = dlsym(v2, "BYSetupAssistantNeedsToRun");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBYSetupAssistantNeedsToRunSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_13(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint8_t buf)
{

  _os_log_debug_impl(a1, v39, OS_LOG_TYPE_DEBUG, a4, &buf, 0x1Cu);
}

void OUTLINED_FUNCTION_18(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x1Cu);
}

BOOL OUTLINED_FUNCTION_19()
{
  v2 = *(v0 + 88);

  return os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_20(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_INFO, a4, a5, 0x1Cu);
}