void sub_250978FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  objc_destroyWeak((v26 + 64));
  objc_destroyWeak((v27 - 112));
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25097A8A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_25097BE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25097BFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25097C548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void _userNotificationCallback(const void *a1, uint64_t a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    _userNotificationCallback_cold_1();
  }

  v4 = [MEMORY[0x277CCAE60] valueWithPointer:a1];
  v5 = +[IOUserNotification _notificationMapTableLock];
  [v5 lock];

  v6 = +[IOUserNotification _notificationMapTable];
  v7 = [v6 objectForKey:v4];

  v8 = +[IOUserNotification _notificationMapTableLock];
  [v8 unlock];

  if (v7)
  {
    v9 = +[IOUserNotification _notificationMapTableLock];
    [v9 lock];

    v10 = +[IOUserNotification _notificationMapTable];
    [v10 removeObjectForKey:v4];

    v11 = +[IOUserNotification _notificationMapTableLock];
    [v11 unlock];

    CFRetain(a1);
    v12 = [v7 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___userNotificationCallback_block_invoke;
    block[3] = &unk_2796A3320;
    v14 = v7;
    v15 = a2;
    v16 = a1;
    dispatch_async(v12, block);

    if (!a1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    _userNotificationCallback_cold_2();
    if (!a1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (a1)
  {
LABEL_8:
    CFRelease(a1);
  }

LABEL_9:
}

void sub_25097CEA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___userNotificationCallback_block_invoke(uint64_t a1)
{
  [*(a1 + 32) setVisible:0];
  v2 = *(a1 + 40);
  if ((~*(a1 + 40) & 3) == 0)
  {
    [*(a1 + 32) setNotificationCancelled:1];
    v2 = *(a1 + 40);
  }

  if ((v2 & 3) == 0)
  {
    v3 = [*(a1 + 32) buttonsMutable];
    v4 = [v3 count];

    if (!v4)
    {
      v5 = [*(a1 + 32) buttonsMutable];
      v6 = [IOUserNotificationButton buttonWithTitle:&stru_2862DB1F8];
      [v5 addObject:v6];
    }

    [*(a1 + 32) setResponseReceived:1];
    v7 = [*(a1 + 32) buttonsMutable];
    v8 = [v7 objectAtIndexedSubscript:0];
    [v8 setSelected:1];

    v2 = *(a1 + 40);
  }

  if ((v2 & 3) == 1)
  {
    [*(a1 + 32) setResponseReceived:1];
    v9 = [*(a1 + 32) buttonsMutable];
    v10 = [v9 objectAtIndexedSubscript:1];
    [v10 setSelected:1];

    v2 = *(a1 + 40);
  }

  v11 = v2 & 3;
  if (v11 == 2)
  {
    [*(a1 + 32) setResponseReceived:1];
    v12 = [*(a1 + 32) buttonsMutable];
    v13 = [v12 objectAtIndexedSubscript:2];
    [v13 setSelected:1];

    v11 = *(a1 + 40) & 3;
  }

  [*(a1 + 32) setResponse:v11];
  v14 = [*(a1 + 32) optionsMutable];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = ___userNotificationCallback_block_invoke_2;
  v17[3] = &__block_descriptor_40_e41_v32__0__IOUserNotificationOption_8Q16_B24l;
  v17[4] = *(a1 + 40);
  [v14 enumerateObjectsUsingBlock:v17];

  v15 = [*(a1 + 32) responseHandler];

  if (v15)
  {
    v16 = [*(a1 + 32) responseHandler];
    v16[2](v16, *(a1 + 32), 0);
  }

  CFRelease(*(a1 + 48));
}

__CFString *HIDRMUIErrorStringFromCode(uint64_t a1)
{
  v1 = @"Not found.";
  if (a1 != 1002)
  {
    v1 = 0;
  }

  if (a1 == 1001)
  {
    return @"Invalid parameter.";
  }

  else
  {
    return v1;
  }
}

void _userNotificationCallback_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}