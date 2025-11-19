void sub_24A0803F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  objc_destroyWeak((v9 + 56));
  objc_destroyWeak((v10 - 80));
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id ELSLogHandleForCategory(uint64_t a1)
{
  if (ELSLogHandleForCategory_onceToken != -1)
  {
    ELSLogHandleForCategory_cold_1();
  }

  if (ELSLogHandleForCategory_logHandles[a1])
  {
    v2 = ELSLogHandleForCategory_logHandles[a1];
  }

  else
  {
    v2 = MEMORY[0x277D86228];
  }

  return v2;
}

uint64_t __ELSLogHandleForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.EnhancedLoggingState", "unspecified");
  v1 = ELSLogHandleForCategory_logHandles[0];
  ELSLogHandleForCategory_logHandles[0] = v0;

  v2 = os_log_create("com.apple.EnhancedLoggingState", "host");
  v3 = qword_27EF332A8;
  qword_27EF332A8 = v2;

  v4 = os_log_create("com.apple.EnhancedLoggingState", "networking");
  v5 = qword_27EF332B0;
  qword_27EF332B0 = v4;

  v6 = os_log_create("com.apple.EnhancedLoggingState", "diagnostic");
  v7 = qword_27EF332B8;
  qword_27EF332B8 = v6;

  v8 = os_log_create("com.apple.EnhancedLoggingState", "localization");
  v9 = qword_27EF332C0;
  qword_27EF332C0 = v8;

  v10 = os_log_create("com.apple.EnhancedLoggingState", "ui");
  v11 = qword_27EF332C8;
  qword_27EF332C8 = v10;

  v12 = os_log_create("com.apple.EnhancedLoggingState", "component");
  v13 = qword_27EF332D0;
  qword_27EF332D0 = v12;

  v14 = os_log_create("com.apple.EnhancedLoggingState", "ids");
  v15 = qword_27EF332D8;
  qword_27EF332D8 = v14;

  v16 = os_log_create("com.apple.EnhancedLoggingState", "xpc");
  v17 = qword_27EF332E0;
  qword_27EF332E0 = v16;

  v18 = os_log_create("com.apple.EnhancedLoggingState", "unit-test");
  v19 = qword_27EF332E8;
  qword_27EF332E8 = v18;

  v20 = os_log_create("com.apple.EnhancedLoggingState", "device-management");
  v21 = qword_27EF332F0;
  qword_27EF332F0 = v20;

  qword_27EF332F8 = os_log_create("com.apple.EnhancedLoggingState", "enhanced-logging-state");

  return MEMORY[0x2821F96F8]();
}

__CFString *ELSInternalString(void *a1)
{
  v1 = MEMORY[0x277CBEAC0];
  v2 = a1;
  v3 = [v1 dictionaryWithContentsOfFile:@"/AppleInternal/Library/EnhancedLoggingState/Internal.strings"];
  v4 = [v3 objectForKey:v2];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &stru_285D33320;
  }

  return v5;
}