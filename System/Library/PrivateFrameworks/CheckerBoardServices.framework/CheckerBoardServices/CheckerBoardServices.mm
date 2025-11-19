uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2433DD060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2433DD2A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2433DE3C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

id CheckerBoardLogHandleForCategory(uint64_t a1)
{
  if (CheckerBoardLogHandleForCategory_onceToken != -1)
  {
    CheckerBoardLogHandleForCategory_cold_1();
  }

  v2 = MEMORY[0x277D86228];
  v3 = MEMORY[0x277D86228];
  if (CheckerBoardLogHandleForCategory_loggingEnabled == 1)
  {
    v2 = CheckerBoardLogHandleForCategory_logHandles[a1];
  }

  return v2;
}

void __CheckerBoardLogHandleForCategory_block_invoke()
{
  has_internal_content = os_variant_has_internal_content();
  CFPreferencesAppSynchronize(@"com.apple.CheckerBoard");
  keyExistsAndHasValidFormat = 0;
  CheckerBoardLogHandleForCategory_loggingEnabled = CFPreferencesGetAppBooleanValue(@"Logging", @"com.apple.CheckerBoard", &keyExistsAndHasValidFormat) != 0;
  if (!keyExistsAndHasValidFormat)
  {
    CheckerBoardLogHandleForCategory_loggingEnabled = has_internal_content;
  }

  for (i = 0; i != 12; ++i)
  {
    v2 = os_log_create("com.apple.CheckerBoard", CheckerBoardLogHandleForCategory_categoryNames[i]);
    v3 = CheckerBoardLogHandleForCategory_logHandles[i];
    CheckerBoardLogHandleForCategory_logHandles[i] = v2;
  }
}