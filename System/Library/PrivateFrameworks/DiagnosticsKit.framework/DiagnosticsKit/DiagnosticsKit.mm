id DiagnosticsKitLogHandleForCategory(uint64_t a1)
{
  if (DiagnosticsKitLogHandleForCategory_onceToken != -1)
  {
    DiagnosticsKitLogHandleForCategory_cold_1();
  }

  if (DiagnosticsKitLogHandleForCategory_logHandles[a1])
  {
    v2 = DiagnosticsKitLogHandleForCategory_logHandles[a1];
  }

  else
  {
    v2 = MEMORY[0x277D86228];
  }

  return v2;
}

uint64_t __DiagnosticsKitLogHandleForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.DiagnosticsKit", "unspecified");
  v1 = DiagnosticsKitLogHandleForCategory_logHandles;
  DiagnosticsKitLogHandleForCategory_logHandles = v0;

  v2 = os_log_create("com.apple.DiagnosticsKit", "host");
  v3 = qword_27EEC9030;
  qword_27EEC9030 = v2;

  v4 = os_log_create("com.apple.DiagnosticsKit", "diagnostic");
  v5 = qword_27EEC9038;
  qword_27EEC9038 = v4;

  v6 = os_log_create("com.apple.DiagnosticsKit", "component");
  v7 = qword_27EEC9040;
  qword_27EEC9040 = v6;

  v8 = os_log_create("com.apple.DiagnosticsKit", "xpc");
  v9 = qword_27EEC9048;
  qword_27EEC9048 = v8;

  qword_27EEC9050 = os_log_create("com.apple.DiagnosticsKit", "unit-test");

  return MEMORY[0x2821F96F8]();
}

__CFString *DKErrorLocalizedDescriptionForCode(uint64_t a1)
{
  if ((a1 + 1009) > 9)
  {
    return 0;
  }

  else
  {
    return off_278F6BF28[a1 + 1009];
  }
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id DKTemporaryDirectoryURL()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    [(__CFString *)v1 UTF8String];
  }

  else
  {
    v1 = @"com.apple.DiagnosticsKit";
  }

  v15 = 1;
  v2 = container_system_group_path_for_identifier();
  if (!v2)
  {
    v3 = DiagnosticsKitLogHandleForCategory(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      DKTemporaryDirectoryURL_cold_1(&v15, v3);
    }

    v2 = "/tmp";
  }

  v4 = [MEMORY[0x277CCACA8] stringWithCString:v2 encoding:4];
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4 isDirectory:1];
  v6 = [v5 URLByAppendingPathComponent:@"tmp"];

  v7 = [v6 URLByAppendingPathComponent:v1];

  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [v7 path];
  v14 = 0;
  v10 = [v8 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:&v14];
  v11 = v14;

  if ((v10 & 1) == 0)
  {
    v12 = DiagnosticsKitLogHandleForCategory(2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      DKTemporaryDirectoryURL_cold_2(v7, v11, v12);
    }
  }

  return v7;
}

void sub_248BA73E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak(&a27);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248BAB340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

void sub_248BAB8F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 256), 8);
  _Unwind_Resume(a1);
}

void sub_248BAC5C4(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x240], 8);
  _Block_object_dispose(&STACK[0x270], 8);
  _Block_object_dispose(&STACK[0x2A0], 8);
  _Block_object_dispose(&STACK[0x2C0], 8);
  _Unwind_Resume(a1);
}

void sub_248BAF4C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, id a21)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a21);
  _Unwind_Resume(a1);
}

void sub_248BB0FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location, id a26)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a26);
  _Unwind_Resume(a1);
}

void sub_248BB1530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_248BB2134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_248BB2850(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_1_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_248BB699C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248BB94B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_2(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void DKTemporaryDirectoryURL_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 134217984;
  v5 = v2;
  _os_log_error_impl(&dword_248B9D000, a2, OS_LOG_TYPE_ERROR, "Could not get system group container: %llu", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void DKTemporaryDirectoryURL_cold_2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_248B9D000, log, OS_LOG_TYPE_ERROR, "Could not create directory at [%@]: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}