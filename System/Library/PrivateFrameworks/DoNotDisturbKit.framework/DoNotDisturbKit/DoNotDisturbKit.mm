void DNDKitRegisterLogging()
{
  if (DNDKitRegisterLogging_onceToken != -1)
  {
    DNDKitRegisterLogging_cold_1();
  }
}

uint64_t __DNDKitRegisterLogging_block_invoke()
{
  v0 = os_log_create("com.apple.donotdisturb", "Location");
  v1 = DNDLogLocation;
  DNDLogLocation = v0;

  v2 = os_log_create("com.apple.donotdisturb", "Notifications");
  v3 = DNDLogNotifications;
  DNDLogNotifications = v2;

  DNDLogToggleManager = os_log_create("com.apple.donotdisturb", "ToggleManager");

  return MEMORY[0x2821F96F8]();
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

__CFString *DNDStringFromToggleTargetState(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"<unknown>";
  }

  else
  {
    return off_278F885C0[a1];
  }
}

id DNDLocalizedStringHelper(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCA8D8];
  v3 = a2;
  v4 = [v2 dndk_localizationBundle];
  v5 = [v4 localizedStringForKey:v3 value:&stru_285C22820 table:0];

  return v5;
}

void sub_249126568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_249127680(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}