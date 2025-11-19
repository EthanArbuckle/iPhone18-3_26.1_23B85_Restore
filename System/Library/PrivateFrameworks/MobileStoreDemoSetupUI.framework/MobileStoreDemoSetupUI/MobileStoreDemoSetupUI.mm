void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_259BCC360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_259BD2028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259BDBDD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259BDE5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id defaultLogHandle()
{
  if (defaultLogHandle_once != -1)
  {
    defaultLogHandle_cold_1();
  }

  v1 = defaultLogHandle_defaultLogObj;

  return v1;
}

uint64_t __defaultLogHandle_block_invoke()
{
  defaultLogHandle_defaultLogObj = os_log_create("com.apple.MobileStoreDemo", "Default");

  return MEMORY[0x2821F96F8]();
}

id screenSaverLogHandle()
{
  if (screenSaverLogHandle_once != -1)
  {
    screenSaverLogHandle_cold_1();
  }

  v1 = screenSaverLogHandle_currentLogObj;

  return v1;
}

uint64_t __screenSaverLogHandle_block_invoke()
{
  screenSaverLogHandle_currentLogObj = os_log_create("com.apple.MobileStoreDemo", "ScreenSaver");

  return MEMORY[0x2821F96F8]();
}

id messageLogHandle()
{
  if (messageLogHandle_once != -1)
  {
    messageLogHandle_cold_1();
  }

  v1 = messageLogHandle_messageLogObj;

  return v1;
}

uint64_t __messageLogHandle_block_invoke()
{
  messageLogHandle_messageLogObj = os_log_create("com.apple.MobileStoreDemo", "Message");

  return MEMORY[0x2821F96F8]();
}

id signpostLogHandle()
{
  if (signpostLogHandle_once != -1)
  {
    signpostLogHandle_cold_1();
  }

  v1 = signpostLogHandle_signpostLogObj;

  return v1;
}

void __signpostLogHandle_block_invoke()
{
  if (os_variant_has_internal_content())
  {
    v0 = os_log_create("com.apple.MobileStoreDemo", "Signpost");
  }

  else
  {
    v0 = MEMORY[0x277D86228];
    v1 = MEMORY[0x277D86228];
  }

  v2 = signpostLogHandle_signpostLogObj;
  signpostLogHandle_signpostLogObj = v0;
}

void MSDLogToFile(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  v10 = +[MSDLogModel sharedInstance];
  [v10 logWithFormat:v9 andArgs:&a9];
}

void sub_259BE0450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}