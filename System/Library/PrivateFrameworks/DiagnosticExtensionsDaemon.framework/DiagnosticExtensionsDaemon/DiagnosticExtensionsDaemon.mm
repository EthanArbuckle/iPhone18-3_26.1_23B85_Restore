uint64_t sub_248AD8FD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_248B4B6C8();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_248AD903C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_248B4B6C8();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t AWDDEDExtensionScheduledReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v32 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 != 2)
      {
        if (v13 != 1)
        {
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_50;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 32) |= 2u;
        while (1)
        {
          v34 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v34 & 0x7F) << v14;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_48;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_48:
        v30 = 16;
        goto LABEL_49;
      }

      v21 = PBReaderReadString();
      v22 = *(a1 + 24);
      *(a1 + 24) = v21;

LABEL_50:
      v31 = [a2 position];
      if (v31 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v23 = 0;
    v24 = 0;
    v25 = 0;
    *(a1 + 32) |= 1u;
    while (1)
    {
      v33 = 0;
      v26 = [a2 position] + 1;
      if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
      {
        v28 = [a2 data];
        [v28 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v25 |= (v33 & 0x7F) << v23;
      if ((v33 & 0x80) == 0)
      {
        break;
      }

      v23 += 7;
      v11 = v24++ >= 9;
      if (v11)
      {
        v20 = 0;
        goto LABEL_44;
      }
    }

    if ([a2 hasError])
    {
      v20 = 0;
    }

    else
    {
      v20 = v25;
    }

LABEL_44:
    v30 = 8;
LABEL_49:
    *(a1 + v30) = v20;
    goto LABEL_50;
  }

  return [a2 hasError] ^ 1;
}

void sub_248ADD1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_248ADD738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t AWDDEDDeferredCheckInReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 2u;
        while (1)
        {
          v31 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v31 & 0x7F) << v13;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            v20 = 0;
            v21 = &OBJC_IVAR___AWDDEDDeferredCheckIn__timestamp;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___AWDDEDDeferredCheckIn__timestamp;
LABEL_41:
        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v15;
        }

LABEL_44:
        *(a1 + *v21) = v20;
        goto LABEL_45;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    *(a1 + 24) |= 1u;
    while (1)
    {
      v30 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v30 & 0x7F) << v22;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        v20 = 0;
        v21 = &OBJC_IVAR___AWDDEDDeferredCheckIn__numtasks;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___AWDDEDDeferredCheckIn__numtasks;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id formatter()
{
  if (formatter_onceToken != -1)
  {
    formatter_cold_1();
  }

  v1 = formatter_f;

  return v1;
}

uint64_t __formatter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = formatter_f;
  formatter_f = v0;

  v2 = formatter_f;

  return [v2 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSS"];
}

void OUTLINED_FUNCTION_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_debug_impl(a1, v4, OS_LOG_TYPE_DEBUG, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id DEDSessionStateLog()
{
  if (DEDSessionStateLog_onceToken != -1)
  {
    DEDSessionStateLog_cold_1();
  }

  v1 = DEDSessionStateLog_log;

  return v1;
}

void __DEDSessionStateLog_block_invoke()
{
  v2 = +[DEDConfiguration sharedInstance];
  v0 = os_log_create([v2 loggingSubsystem], "s-state");
  v1 = DEDSessionStateLog_log;
  DEDSessionStateLog_log = v0;
}

double DEDTimeElapsed(double a1, double a2)
{
  v4 = a2 != -1.0 && a1 != -1.0 && a2 > 0.0 && a2 > a1;
  result = a2 - a1;
  if (!v4)
  {
    return -1.0;
  }

  return result;
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

void __Log_block_invoke()
{
  v2 = +[DEDConfiguration sharedInstance];
  v0 = os_log_create([v2 loggingSubsystem], "ded-cfu-notifier");
  v1 = Log_log;
  Log_log = v0;
}

id DEDSessionCleanupLog()
{
  if (DEDSessionCleanupLog_onceToken != -1)
  {
    DEDSessionCleanupLog_cold_1();
  }

  v1 = DEDSessionCleanupLog_log;

  return v1;
}

void __DEDSessionCleanupLog_block_invoke()
{
  v2 = +[DEDConfiguration sharedInstance];
  v0 = os_log_create([v2 loggingSubsystem], "cleanup");
  v1 = DEDSessionCleanupLog_log;
  DEDSessionCleanupLog_log = v0;
}

void sub_248AF6D18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id obj)
{
  objc_destroyWeak((v10 + 40));
  objc_destroyWeak((v9 + 40));
  _Unwind_Resume(a1);
}

void sub_248AFA044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak(&a71);
  _Block_object_dispose((v71 - 176), 8);
  objc_destroyWeak((v71 - 248));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_5_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_6_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

void sub_248AFE2CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id Log_0()
{
  if (Log_onceToken_0 != -1)
  {
    Log_cold_1_0();
  }

  v1 = Log_log_0;

  return v1;
}

void sub_248AFE984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248AFF020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_248AFFE74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248B0039C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248B00AB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248B01758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248B01D30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248B027F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __Log_block_invoke_0()
{
  v2 = +[DEDConfiguration sharedInstance];
  v0 = os_log_create([v2 loggingSubsystem], "ded-daemon");
  v1 = Log_log_0;
  Log_log_0 = v0;
}

void OUTLINED_FUNCTION_2_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x16u);
}

uint64_t *OUTLINED_FUNCTION_3_0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void sub_248B072F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_248B076A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248B07ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __Log_block_invoke_1()
{
  v2 = +[DEDConfiguration sharedInstance];
  v0 = os_log_create([v2 loggingSubsystem], "de-collector");
  v1 = Log_handle;
  Log_handle = v0;
}

uint64_t AWDDEDExtensionStartedReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadString();
        v21 = *(a1 + 16);
        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDDEDDaemonStartedReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 16) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_248B0F4C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_2_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

id Log_1()
{
  if (Log_onceToken_1 != -1)
  {
    Log_cold_1_1();
  }

  v1 = Log_log_1;

  return v1;
}

void __Log_block_invoke_2()
{
  v2 = +[DEDConfiguration sharedInstance];
  v0 = os_log_create([v2 loggingSubsystem], "dedfbk");
  v1 = Log_log_1;
  Log_log_1 = v0;
}

_BYTE *OUTLINED_FUNCTION_0_7(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_1_3(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

id DEDAddressForIDSDevice()
{
  v0 = IDSCopyIDForDevice();
  v1 = [v0 rangeOfString:@"self-" options:2 range:{0, 6}];
  if (v2)
  {
    v3 = [v0 stringByReplacingCharactersInRange:v1 withString:{v2, &stru_285B72378}];

    v0 = v3;
  }

  return v0;
}

id DEDIDSConnectionLog()
{
  if (DEDIDSConnectionLog_onceToken1 != -1)
  {
    DEDIDSConnectionLog_cold_1();
  }

  v1 = DEDIDSConnectionLog_handle;

  return v1;
}

void __DEDIDSConnectionLog_block_invoke()
{
  v2 = +[DEDConfiguration sharedInstance];
  v0 = os_log_create([v2 loggingSubsystem], "ids-connection");
  v1 = DEDIDSConnectionLog_handle;
  DEDIDSConnectionLog_handle = v0;
}

const char *DEDIDSCommandString(unsigned int a1)
{
  if (a1 > 0x21)
  {
    return "UNKNOWN";
  }

  else
  {
    return off_278F662C0[a1];
  }
}

uint64_t isKnownDevice(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v4 && ([v3 deviceForFromID:v4], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = 1;
  }

  else
  {
    v7 = Log_2();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      isKnownDevice_cold_1();
    }

    v6 = 0;
  }

  return v6;
}

id Log_2()
{
  if (Log_onceToken_2 != -1)
  {
    Log_cold_1_2();
  }

  v1 = Log_log_2;

  return v1;
}

id IDSDelLog()
{
  if (IDSDelLog_onceToken != -1)
  {
    IDSDelLog_cold_1();
  }

  v1 = IDSDelLog_log;

  return v1;
}

void __Log_block_invoke_3()
{
  v2 = +[DEDConfiguration sharedInstance];
  v0 = os_log_create([v2 loggingSubsystem], "ids-inbound");
  v1 = Log_log_2;
  Log_log_2 = v0;
}

void __IDSDelLog_block_invoke()
{
  v2 = +[DEDConfiguration sharedInstance];
  v0 = os_log_create([v2 loggingSubsystem], "ids-delegate");
  v1 = IDSDelLog_log;
  IDSDelLog_log = v0;
}

void OUTLINED_FUNCTION_1_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_4_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_7_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_0_8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id LogEnhancedLoggingNotifier()
{
  if (LogEnhancedLoggingNotifier_onceToken != -1)
  {
    LogEnhancedLoggingNotifier_cold_1();
  }

  v1 = LogEnhancedLoggingNotifier_log;

  return v1;
}

void __LogEnhancedLoggingNotifier_block_invoke()
{
  v2 = +[DEDConfiguration sharedInstance];
  v0 = os_log_create([v2 loggingSubsystem], "ded-el-notifier");
  v1 = LogEnhancedLoggingNotifier_log;
  LogEnhancedLoggingNotifier_log = v0;
}

uint64_t AWDDEDBugSessionCreatedReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadString();
        v21 = *(a1 + 16);
        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id Log_3()
{
  if (Log_onceToken_3 != -1)
  {
    Log_cold_1_3();
  }

  v1 = Log_log_3;

  return v1;
}

void __Log_block_invoke_4()
{
  v2 = +[DEDConfiguration sharedInstance];
  v0 = os_log_create([v2 loggingSubsystem], "debug-request");
  v1 = Log_log_3;
  Log_log_3 = v0;
}

id Log_4()
{
  if (Log_onceToken_4 != -1)
  {
    Log_cold_1_4();
  }

  v1 = Log_log_4;

  return v1;
}

void __Log_block_invoke_5()
{
  v2 = +[DEDConfiguration sharedInstance];
  v0 = os_log_create([v2 loggingSubsystem], "state");
  v1 = Log_log_4;
  Log_log_4 = v0;
}

uint64_t AWDDEDBugSessionEndedReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 20) |= 2u;
        while (1)
        {
          v31 = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v31 & 0x7F) << v20;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            v26 = 0;
            goto LABEL_46;
          }
        }

        v26 = [a2 hasError] ? 0 : v22;
LABEL_46:
        *(a1 + 16) = v26;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v30 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v30 & 0x7F) << v13;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_42;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_42:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id Log_5()
{
  if (Log_onceToken1 != -1)
  {
    Log_cold_1_5();
  }

  v1 = Log_handle_0;

  return v1;
}

void sub_248B24BC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v6 - 128));
  _Unwind_Resume(a1);
}

void sub_248B2597C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v6 - 128));
  _Unwind_Resume(a1);
}

void sub_248B26370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248B276A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 96));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_248B27C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_248B28198(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 56));
  objc_destroyWeak((v4 + 40));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 48));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v6 - 192));
  objc_destroyWeak((v6 - 184));
  _Block_object_dispose((v6 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_248B287A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_248B28BB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __Log_block_invoke_6()
{
  v2 = +[DEDConfiguration sharedInstance];
  v0 = os_log_create([v2 loggingSubsystem], "sharing-connection");
  v1 = Log_handle_0;
  Log_handle_0 = v0;
}

id DEDHealthWrapDERDataFromString(void *a1)
{
  v1 = MEMORY[0x277CBEA90];
  v2 = a1;
  v3 = [[v1 alloc] initWithBase64EncodedString:v2 options:0];

  return v3;
}

SecCertificateRef DEDHealthWrapCertificateFromString(void *a1)
{
  v1 = DEDHealthWrapDERDataFromString(a1);
  v2 = SecCertificateCreateWithData(0, v1);

  return v2;
}

id LogEncryptor()
{
  if (LogEncryptor_onceToken != -1)
  {
    LogEncryptor_cold_1();
  }

  v1 = LogEncryptor_log;

  return v1;
}

void __LogEncryptor_block_invoke()
{
  v2 = +[DEDConfiguration sharedInstance];
  v0 = os_log_create([v2 loggingSubsystem], "ded-encryptor");
  v1 = LogEncryptor_log;
  LogEncryptor_log = v0;
}

id Log_6()
{
  if (Log_onceToken_5 != -1)
  {
    Log_cold_1_6();
  }

  v1 = Log_log_5;

  return v1;
}

void __Log_block_invoke_7()
{
  v2 = +[DEDConfiguration sharedInstance];
  v0 = os_log_create([v2 loggingSubsystem], "ded-usernotfier");
  v1 = Log_log_5;
  Log_log_5 = v0;
}

void sub_248B29BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *stringIfNil(__CFString *a1)
{
  if (!a1)
  {
    a1 = &stru_285B72378;
  }

  return a1;
}

id argumentsList()
{
  v0 = [MEMORY[0x277CCAC38] processInfo];
  v1 = [v0 arguments];

  if ([v1 count] == 1)
  {
    v2 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v2 = [v1 subarrayWithRange:{1, objc_msgSend(v1, "count") - 1}];
  }

  return v2;
}

id DEDSessionStartLog()
{
  if (DEDSessionStartLog_onceToken != -1)
  {
    DEDSessionStartLog_cold_1();
  }

  v1 = DEDSessionStartLog_log;

  return v1;
}

void __DEDSessionStartLog_block_invoke()
{
  v2 = +[DEDConfiguration sharedInstance];
  v0 = os_log_create([v2 loggingSubsystem], "session-start");
  v1 = DEDSessionStartLog_log;
  DEDSessionStartLog_log = v0;
}

uint64_t AWDDEDExtensionCompletedReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v51 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v51 & 0x7F) << v5;
        if ((v51 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v33 = 0;
            v34 = 0;
            v35 = 0;
            *(a1 + 56) |= 2u;
            while (1)
            {
              v53 = 0;
              v36 = [a2 position] + 1;
              if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
              {
                v38 = [a2 data];
                [v38 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v35 |= (v53 & 0x7F) << v33;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v11 = v34++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_79;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v35;
            }

LABEL_79:
            v49 = 16;
            break;
          case 5:
            v42 = 0;
            v43 = 0;
            v44 = 0;
            *(a1 + 56) |= 0x10u;
            while (1)
            {
              v56 = 0;
              v45 = [a2 position] + 1;
              if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
              {
                v47 = [a2 data];
                [v47 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v44 |= (v56 & 0x7F) << v42;
              if ((v56 & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              v11 = v43++ >= 9;
              if (v11)
              {
                v48 = 0;
                goto LABEL_94;
              }
            }

            if ([a2 hasError])
            {
              v48 = 0;
            }

            else
            {
              v48 = v44;
            }

LABEL_94:
            *(a1 + 40) = v48;
            goto LABEL_89;
          case 6:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 56) |= 1u;
            while (1)
            {
              v52 = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v52 & 0x7F) << v21;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_87;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v23;
            }

LABEL_87:
            v49 = 8;
            break;
          default:
LABEL_60:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_89;
        }

        goto LABEL_88;
      }

      if (v13 == 1)
      {
        break;
      }

      if (v13 != 2)
      {
        if (v13 != 3)
        {
          goto LABEL_60;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 56) |= 4u;
        while (1)
        {
          v54 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v54 & 0x7F) << v14;
          if ((v54 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_83;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_83:
        v49 = 24;
        goto LABEL_88;
      }

      v40 = PBReaderReadString();
      v41 = *(a1 + 48);
      *(a1 + 48) = v40;

LABEL_89:
      v50 = [a2 position];
      if (v50 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v27 = 0;
    v28 = 0;
    v29 = 0;
    *(a1 + 56) |= 8u;
    while (1)
    {
      v55 = 0;
      v30 = [a2 position] + 1;
      if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
      {
        v32 = [a2 data];
        [v32 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v29 |= (v55 & 0x7F) << v27;
      if ((v55 & 0x80) == 0)
      {
        break;
      }

      v27 += 7;
      v11 = v28++ >= 9;
      if (v11)
      {
        v20 = 0;
        goto LABEL_75;
      }
    }

    if ([a2 hasError])
    {
      v20 = 0;
    }

    else
    {
      v20 = v29;
    }

LABEL_75:
    v49 = 32;
LABEL_88:
    *(a1 + v49) = v20;
    goto LABEL_89;
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDDEDFinisherEndedReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v50 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v50 & 0x7F) << v5;
        if ((v50 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      switch(v13)
      {
        case 3:
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 40) |= 2u;
          while (1)
          {
            v51 = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v51 & 0x7F) << v28;
            if ((v51 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_73;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v30;
          }

LABEL_73:
          v47 = 16;
LABEL_91:
          *(a1 + v47) = v27;
          goto LABEL_92;
        case 4:
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 40) |= 0x10u;
          while (1)
          {
            v55 = 0;
            v37 = [a2 position] + 1;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
            {
              v39 = [a2 data];
              [v39 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v36 |= (v55 & 0x7F) << v34;
            if ((v55 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v11 = v35++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_77;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v36;
          }

LABEL_77:
          v48 = 36;
          break;
        case 5:
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 40) |= 8u;
          while (1)
          {
            v54 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v54 & 0x7F) << v14;
            if ((v54 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_85;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_85:
          v48 = 32;
          break;
        default:
          goto LABEL_68;
      }

      *(a1 + v48) = v20;
LABEL_92:
      v49 = [a2 position];
      if (v49 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v40 = 0;
      v41 = 0;
      v42 = 0;
      *(a1 + 40) |= 4u;
      while (1)
      {
        v53 = 0;
        v43 = [a2 position] + 1;
        if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
        {
          v45 = [a2 data];
          [v45 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v42 |= (v53 & 0x7F) << v40;
        if ((v53 & 0x80) == 0)
        {
          break;
        }

        v40 += 7;
        v11 = v41++ >= 9;
        if (v11)
        {
          v27 = 0;
          goto LABEL_81;
        }
      }

      if ([a2 hasError])
      {
        v27 = 0;
      }

      else
      {
        v27 = v42;
      }

LABEL_81:
      v47 = 24;
    }

    else
    {
      if (v13 != 2)
      {
LABEL_68:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_92;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      *(a1 + 40) |= 1u;
      while (1)
      {
        v52 = 0;
        v24 = [a2 position] + 1;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v23 |= (v52 & 0x7F) << v21;
        if ((v52 & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v11 = v22++ >= 9;
        if (v11)
        {
          v27 = 0;
          goto LABEL_90;
        }
      }

      if ([a2 hasError])
      {
        v27 = 0;
      }

      else
      {
        v27 = v23;
      }

LABEL_90:
      v47 = 8;
    }

    goto LABEL_91;
  }

  return [a2 hasError] ^ 1;
}

void sub_248B33548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248B33AD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t AWDDEDFinisherStartedReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v43 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v43 & 0x7F) << v5;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 36) |= 1u;
        while (1)
        {
          v44 = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v44 & 0x7F) << v35;
          if ((v44 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_75;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v37;
        }

LABEL_75:
        v41 = 8;
LABEL_76:
        *(a1 + v41) = v20;
        goto LABEL_77;
      }

      if (v13 != 4)
      {
LABEL_40:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_77;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      *(a1 + 36) |= 8u;
      while (1)
      {
        v47 = 0;
        v24 = [a2 position] + 1;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v23 |= (v47 & 0x7F) << v21;
        if ((v47 & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v11 = v22++ >= 9;
        if (v11)
        {
          v27 = 0;
          goto LABEL_67;
        }
      }

      if ([a2 hasError])
      {
        v27 = 0;
      }

      else
      {
        v27 = v23;
      }

LABEL_67:
      *(a1 + 32) = v27;
LABEL_77:
      v42 = [a2 position];
      if (v42 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      *(a1 + 36) |= 4u;
      while (1)
      {
        v46 = 0;
        v32 = [a2 position] + 1;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
        {
          v34 = [a2 data];
          [v34 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v31 |= (v46 & 0x7F) << v29;
        if ((v46 & 0x80) == 0)
        {
          break;
        }

        v29 += 7;
        v11 = v30++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_71;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v31;
      }

LABEL_71:
      v41 = 24;
    }

    else
    {
      if (v13 != 2)
      {
        goto LABEL_40;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 36) |= 2u;
      while (1)
      {
        v45 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v45 & 0x7F) << v14;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_63;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_63:
      v41 = 16;
    }

    goto LABEL_76;
  }

  return [a2 hasError] ^ 1;
}

void sub_248B3A368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_248B3CB24(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    v4 = [v2 log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [DEDSeedingClient HTTPErrorWithResponse:withData:];
    }

    objc_end_catch();
    JUMPOUT(0x248B3C9BCLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_248B3FEC4()
{
  v0 = sub_248B4B7C8();
  __swift_allocate_value_buffer(v0, qword_27EEC7968);
  __swift_project_value_buffer(v0, qword_27EEC7968);
  return sub_248B4B7B8();
}

id AEAHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AEAHandler.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AEAHandler();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AEAHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AEAHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_248B40174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v133 = a3;
  v138 = a2;
  v143 = a1;
  v3 = sub_248B4B798();
  v128 = *(v3 - 8);
  v129 = v3;
  v4 = *(v128 + 64);
  (MEMORY[0x28223BE20])();
  v127 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_248B4B738() - 8) + 64);
  (MEMORY[0x28223BE20])();
  v131 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_248B4B768() - 8) + 64);
  (MEMORY[0x28223BE20])();
  v130 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_248B4B6C8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = (MEMORY[0x28223BE20])();
  v137 = &v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v132 = &v127 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v127 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC7778, &qword_248B53180);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v127 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v127 - v24;
  v142 = sub_248B4B7E8();
  v26 = *(v142 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v142);
  v135 = &v127 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v141 = &v127 - v30;
  if (qword_27EEC7960 != -1)
  {
    swift_once();
  }

  v136 = v23;
  v31 = sub_248B4B7C8();
  v140 = __swift_project_value_buffer(v31, qword_27EEC7968);
  v32 = sub_248B4B7A8();
  v33 = sub_248B4B858();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = 1;
    _os_log_impl(&dword_248AD7000, v32, v33, "AEA encryption with %ld threads", v34, 0xCu);
    MEMORY[0x24C1E5600](v34, -1, -1);
  }

  v139 = v11;
  v35 = (v11 + 16);
  v36 = v143;
  v144 = *(v11 + 16);
  v144(v18, v143, v10);
  sub_248B4B7D8();
  v37 = v26;
  v38 = *(v26 + 48);
  v39 = v142;
  if (v38(v25, 1, v142) == 1)
  {
    sub_248B419B4(v25, &qword_27EEC7778, &qword_248B53180);
    v40 = v137;
    v41 = v144;
    v144(v137, v36, v10);
    v42 = sub_248B4B7A8();
    v43 = sub_248B4B868();
    v44 = v36;
    v45 = v41;
    if (os_log_type_enabled(v42, v43))
    {
      v46 = swift_slowAlloc();
      v141 = v46;
      v142 = swift_slowAlloc();
      *v46 = 138543362;
      type metadata accessor for AEAHandler.Error();
      sub_248B41A14(&qword_27EEC7780, type metadata accessor for AEAHandler.Error);
      swift_allocError();
      v47 = v40;
      v49 = v48;
      v41(v48, v47, v10);
      v50 = v139;
      (*(v139 + 56))(v49, 0, 3, v10);
      v51 = _swift_stdlib_bridgeErrorToNSError();
      (*(v50 + 8))(v47, v10);
      v52 = v141;
      v53 = v142;
      *(v141 + 4) = v51;
      *v53 = v51;
      v44 = v143;
      _os_log_impl(&dword_248AD7000, v42, v43, "%{public}@", v52, 0xCu);
      sub_248B419B4(v53, &qword_27EEC7788, &qword_248B53188);
      MEMORY[0x24C1E5600](v53, -1, -1);
      MEMORY[0x24C1E5600](v52, -1, -1);
    }

    else
    {

      v50 = v139;
      (*(v139 + 8))(v40, v10);
    }

    type metadata accessor for AEAHandler.Error();
    sub_248B41A14(&qword_27EEC7780, type metadata accessor for AEAHandler.Error);
    swift_allocError();
    v74 = v73;
    v45(v73, v44, v10);
    (*(v50 + 56))(v74, 0, 3, v10);
    return swift_willThrow();
  }

  v143 = v37;
  v54 = *(v37 + 32);
  v54(v141, v25, v39);
  v55 = v138;
  v144(v18, v138, v10);
  v137 = v35;
  v56 = v136;
  sub_248B4B7D8();
  v57 = v38(v56, 1, v39);
  v58 = v39;
  v59 = v10;
  if (v57 != 1)
  {
    v144 = v10;
    v76 = v135;
    v54(v135, v56, v58);
    sub_248B4B758();
    sub_248B4B728();
    v77 = sub_248B4B788();
    v78 = *(v77 + 48);
    v79 = *(v77 + 52);
    swift_allocObject();
    sub_248B4B778();
    v80 = v134;
    sub_248B4B748();
    if (v80)
    {

      v81 = *(v143 + 8);
      v81(v76, v58);
LABEL_15:
      v82 = v141;
      v83 = v58;
      return (v81)(v82, v83);
    }

    v87 = sub_248B4B7A8();
    v88 = sub_248B4B878();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = v58;
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&dword_248AD7000, v87, v88, "AEA context public key set", v90, 2u);
      v91 = v90;
      v58 = v89;
      MEMORY[0x24C1E5600](v91, -1, -1);
    }

    sub_248B4B718();
    v92 = sub_248B4B6E8();
    if (v92)
    {
      v93 = v92;
      v94 = sub_248B4B6E8();
      if (v94)
      {
        v95 = v76;
        v137 = v93;
        v138 = v94;
        v96 = v58;
        v97 = sub_248B4B7A8();
        v98 = sub_248B4B878();
        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          *v99 = 0;
          _os_log_impl(&dword_248AD7000, v97, v98, "AEA source file stream created", v99, 2u);
          MEMORY[0x24C1E5600](v99, -1, -1);
        }

        v145 = MEMORY[0x277D84F90];
        sub_248B41A14(&qword_27EEC7790, MEMORY[0x277D832A8]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC7798, &qword_248B53190);
        sub_248B41A5C();
        v100 = v127;
        v101 = v129;
        sub_248B4B888();
        v102 = sub_248B4B6D8();
        (*(v128 + 8))(v100, v101);
        if (v102)
        {
          v103 = sub_248B4B7A8();
          v104 = sub_248B4B878();
          if (os_log_type_enabled(v103, v104))
          {
            v105 = swift_slowAlloc();
            *v105 = 0;
            _os_log_impl(&dword_248AD7000, v103, v104, "AEA encryption file stream created", v105, 2u);
            v106 = v105;
            v96 = v142;
            MEMORY[0x24C1E5600](v106, -1, -1);
          }

          sub_248B4B708();
          v107 = sub_248B4B7A8();
          v108 = sub_248B4B878();
          if (os_log_type_enabled(v107, v108))
          {
            v109 = swift_slowAlloc();
            *v109 = 0;
            _os_log_impl(&dword_248AD7000, v107, v108, "AEA process finished", v109, 2u);
            v110 = v109;
            v96 = v142;
            MEMORY[0x24C1E5600](v110, -1, -1);
          }

          sub_248B4B6F8();
          sub_248B4B6F8();
          v58 = v96;
          sub_248B4B6F8();

          v81 = *(v143 + 8);
          v81(v95, v96);
          goto LABEL_15;
        }

        v119 = sub_248B4B7A8();
        v120 = sub_248B4B868();
        if (os_log_type_enabled(v119, v120))
        {
          v121 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          *v121 = 138543362;
          type metadata accessor for AEAHandler.Error();
          sub_248B41A14(&qword_27EEC7780, type metadata accessor for AEAHandler.Error);
          swift_allocError();
          (*(v139 + 56))(v123, 2, 3, v144);
          v124 = _swift_stdlib_bridgeErrorToNSError();
          *(v121 + 4) = v124;
          *v122 = v124;
          _os_log_impl(&dword_248AD7000, v119, v120, "%{public}@", v121, 0xCu);
          sub_248B419B4(v122, &qword_27EEC7788, &qword_248B53188);
          v125 = v122;
          v96 = v142;
          MEMORY[0x24C1E5600](v125, -1, -1);
          MEMORY[0x24C1E5600](v121, -1, -1);
        }

        type metadata accessor for AEAHandler.Error();
        sub_248B41A14(&qword_27EEC7780, type metadata accessor for AEAHandler.Error);
        swift_allocError();
        (*(v139 + 56))(v126, 2, 3, v144);
        swift_willThrow();

        v81 = *(v143 + 8);
        v81(v95, v96);
LABEL_37:
        v82 = v141;
        v83 = v96;
        return (v81)(v82, v83);
      }
    }

    v96 = v58;
    v111 = sub_248B4B7A8();
    v112 = sub_248B4B868();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      *v113 = 138543362;
      type metadata accessor for AEAHandler.Error();
      sub_248B41A14(&qword_27EEC7780, type metadata accessor for AEAHandler.Error);
      swift_allocError();
      (*(v139 + 56))(v115, 1, 3, v144);
      v116 = _swift_stdlib_bridgeErrorToNSError();
      *(v113 + 4) = v116;
      *v114 = v116;
      _os_log_impl(&dword_248AD7000, v111, v112, "%{public}@", v113, 0xCu);
      sub_248B419B4(v114, &qword_27EEC7788, &qword_248B53188);
      v117 = v114;
      v96 = v142;
      MEMORY[0x24C1E5600](v117, -1, -1);
      MEMORY[0x24C1E5600](v113, -1, -1);
    }

    type metadata accessor for AEAHandler.Error();
    sub_248B41A14(&qword_27EEC7780, type metadata accessor for AEAHandler.Error);
    swift_allocError();
    (*(v139 + 56))(v118, 1, 3, v144);
    swift_willThrow();

    v81 = *(v143 + 8);
    v81(v76, v96);
    goto LABEL_37;
  }

  v60 = v58;
  sub_248B419B4(v56, &qword_27EEC7778, &qword_248B53180);
  v61 = v132;
  v144(v132, v55, v59);
  v62 = sub_248B4B7A8();
  v63 = sub_248B4B868();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    *v64 = 138543362;
    type metadata accessor for AEAHandler.Error();
    sub_248B41A14(&qword_27EEC7780, type metadata accessor for AEAHandler.Error);
    swift_allocError();
    v66 = v65;
    v144(v65, v61, v59);
    v67 = v61;
    v68 = v139;
    (*(v139 + 56))(v66, 0, 3, v59);
    v69 = _swift_stdlib_bridgeErrorToNSError();
    (*(v68 + 8))(v67, v59);
    *(v64 + 4) = v69;
    v70 = v140;
    *v140 = v69;
    v71 = v138;
    _os_log_impl(&dword_248AD7000, v62, v63, "%{public}@", v64, 0xCu);
    sub_248B419B4(v70, &qword_27EEC7788, &qword_248B53188);
    v72 = v142;
    MEMORY[0x24C1E5600](v70, -1, -1);
    MEMORY[0x24C1E5600](v64, -1, -1);
  }

  else
  {
    v71 = v55;

    v84 = v61;
    v68 = v139;
    (*(v139 + 8))(v84, v59);
    v72 = v60;
  }

  type metadata accessor for AEAHandler.Error();
  sub_248B41A14(&qword_27EEC7780, type metadata accessor for AEAHandler.Error);
  swift_allocError();
  v86 = v85;
  v144(v85, v71, v59);
  (*(v68 + 56))(v86, 0, 3, v59);
  swift_willThrow();
  return (*(v143 + 8))(v141, v72);
}

uint64_t _s26DiagnosticExtensionsDaemon10AEAHandlerC7encrypt9sourceURL011destinationG0Sb10Foundation0G0V_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v22 = a2;
  v2 = sub_248B4B808();
  v23 = *(v2 - 8);
  v24 = v2;
  v3 = *(v23 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_248B4B848();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = objc_opt_self();
  v9 = [v8 defaultManager];
  v10 = sub_248B4B828();
  v11 = [v9 fileExistsAtPath_];

  if (v11 & 1) != 0 || (v12 = [v8 defaultManager], v13 = sub_248B4B828(), v14 = objc_msgSend(v12, sel_fileExistsAtPath_, v13), v12, v13, (v14))
  {
    sub_248B4B838();
    sub_248B4B818();

    sub_248B4B7F8();
    sub_248B40174(v21, v22, v5);
    (*(v23 + 8))(v5, v24);
    return 1;
  }

  else
  {
    if (qword_27EEC7960 != -1)
    {
      swift_once();
    }

    v15 = sub_248B4B7C8();
    __swift_project_value_buffer(v15, qword_27EEC7968);
    v16 = sub_248B4B7A8();
    v17 = sub_248B4B868();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_248AD7000, v16, v17, "Failed to find encryption public key in expected paths.", v18, 2u);
      MEMORY[0x24C1E5600](v18, -1, -1);
    }

    return 0;
  }
}

uint64_t type metadata accessor for AEAHandler.Error()
{
  result = qword_27EEC7A00;
  if (!qword_27EEC7A00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_248B418DC()
{
  v0 = sub_248B4B6C8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_248B419B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_248B41A14(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_248B41A5C()
{
  result = qword_27EEC77A0;
  if (!qword_27EEC77A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEC7798, &qword_248B53190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEC77A0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void isKnownDevice_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}