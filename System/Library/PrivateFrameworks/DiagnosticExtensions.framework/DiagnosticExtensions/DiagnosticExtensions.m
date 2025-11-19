void sub_248AB5A74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

void sub_248AB5D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(&location);
  _Block_object_dispose((v18 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_248AB61D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248AB68AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_248AB70D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248AB74F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id Log()
{
  if (Log_onceToken != -1)
  {
    Log_cold_1();
  }

  v1 = Log_log;

  return v1;
}

uint64_t __Log_block_invoke()
{
  Log_log = os_log_create("com.apple.diagnosticextensions", "extension-tracker");

  return MEMORY[0x2821F96F8]();
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_248AB8D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

id Log_0()
{
  if (Log_onceToken_0 != -1)
  {
    Log_cold_1_0();
  }

  v1 = Log_handle;

  return v1;
}

void sub_248ABAAA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_248ABCA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248ABCF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248ABD354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_248ABD7FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248ABDBB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Log_block_invoke_0()
{
  Log_handle = os_log_create("com.apple.diagnosticextensions", "extension");

  return MEMORY[0x2821F96F8]();
}

void OUTLINED_FUNCTION_2_0(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_5(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

void OUTLINED_FUNCTION_2_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_248AC052C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id Log_1()
{
  if (Log_onceToken_1 != -1)
  {
    Log_cold_1_1();
  }

  v1 = Log_Log;

  return v1;
}

uint64_t __Log_block_invoke_1()
{
  Log_Log = os_log_create("com.apple.diagnosticextensions", "d-helper");

  return MEMORY[0x2821F96F8]();
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_248AC1300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t DEUtilsValidateConnection(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = Log_2();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v10 = 67109120;
    v11 = [v1 processIdentifier];
    _os_log_impl(&dword_248AB3000, v2, OS_LOG_TYPE_INFO, "Validating connection from pid %d", &v10, 8u);
  }

  v3 = [v1 valueForEntitlement:@"com.apple.DiagnosticExtensions.xpc-helper-access"];
  v4 = v3;
  if (v3 && ([v3 BOOLValue] & 1) != 0)
  {
    v5 = Log_2();
    v6 = 1;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = [v1 processIdentifier];
      v10 = 67109120;
      v11 = v7;
      _os_log_impl(&dword_248AB3000, v5, OS_LOG_TYPE_INFO, "Connection from pid %d is valid", &v10, 8u);
    }
  }

  else
  {
    v5 = Log_2();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      DEUtilsValidateConnection_cold_1(v5);
    }

    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

id Log_2()
{
  if (Log_onceToken_2 != -1)
  {
    Log_cold_1_2();
  }

  v1 = Log_handle_0;

  return v1;
}

uint64_t DEUtilsValidateDestination(void *a1)
{
  if (a1)
  {
    v1 = [a1 absoluteString];
    v2 = [v1 hasPrefix:@"file:///Users/"];
    v3 = Log_2();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      DEUtilsValidateDestination_cold_1(v1, v2, v3);
    }

    if ((v2 & 1) == 0)
    {
      v4 = Log_2();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        DEUtilsValidateDestination_cold_2(v1, v4);
      }
    }
  }

  else
  {
    v1 = Log_2();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      DEUtilsValidateDestination_cold_3(v1);
    }

    v2 = 0;
  }

  return v2;
}

uint64_t __Log_block_invoke_2()
{
  Log_handle_0 = os_log_create("com.apple.diagnosticextensions", "de-helper");

  return MEMORY[0x2821F96F8]();
}

uint64_t pgrep(const char *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *v17 = xmmword_248ACC0D0;
  v16 = 0;
  if (sysctl(v17, 3u, 0, &v16, 0, 0) < 0)
  {
    v7 = *__error();
    v8 = __error();
    v9 = strerror(*v8);
    printf("failed to get process list: (%d) %s\n", v7, v9);
LABEL_12:
    v13 = 0xFFFFFFFFLL;
    goto LABEL_16;
  }

  v2 = v16 + 4096;
  v16 = v2;
  if (v2 <= 0x1000)
  {
    pgrep_cold_2();
  }

  v3 = malloc_type_malloc(v2, 0xEE9DD23BuLL);
  if (!v3)
  {
    pgrep_cold_1();
  }

  v4 = v3;
  if (sysctl(v17, 3u, v3, &v16, 0, 0) < 0)
  {
    v10 = *__error();
    v11 = __error();
    v12 = strerror(*v11);
    printf("failed to get process list: (%d) %s\n", v10, v12);
    free(v4);
    goto LABEL_12;
  }

  v5 = (v16 / 0x288);
  if (!(v16 / 0x288))
  {
    goto LABEL_14;
  }

  v6 = v4 + 243;
  while (strncmp(v6, a1, 0x11uLL))
  {
    v6 += 648;
    if (!--v5)
    {
      goto LABEL_14;
    }
  }

  v13 = *(v6 - 203);
  if (v13 == -1)
  {
LABEL_14:
    printf("failed to find process named %s\n", a1);
    v13 = 0xFFFFFFFFLL;
  }

  free(v4);
LABEL_16:
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

id Log_3()
{
  if (Log_onceToken_3 != -1)
  {
    Log_cold_1_3();
  }

  v1 = Log_Log_0;

  return v1;
}

uint64_t __Log_block_invoke_3()
{
  Log_Log_0 = os_log_create("com.apple.diagnosticextensions", "utils");

  return MEMORY[0x2821F96F8]();
}

void OUTLINED_FUNCTION_8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_248AC6DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void DEUtilsValidateDestination_cold_1(uint64_t a1, char a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 1024;
  v7 = a2 & 1;
  _os_log_debug_impl(&dword_248AB3000, log, OS_LOG_TYPE_DEBUG, "Validating destination %@, valid? %i", &v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

void DEUtilsValidateDestination_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_248AB3000, a2, OS_LOG_TYPE_ERROR, "Destination path [%{public}@] failed validation", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}