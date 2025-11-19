BOOL OUTLINED_FUNCTION_56@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
}

uint64_t OUTLINED_FUNCTION_38@<X0>(uint64_t a1@<X8>)
{
  if (a1)
  {
    return a1;
  }

  else
  {
    return v1;
  }
}

uint64_t OUTLINED_FUNCTION_7(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, a5, a6, 0, 0, a9, a10);
}

uint64_t MCDMExtractMessageData(_DWORD *a1, _DWORD *a2, uint64_t *a3, uint64_t **a4, void *a5, void *a6, void *a7)
{
  if (a1 && a4 && a3 && *a1 == -469794816)
  {
    *a1 = *(a3 + 2);
    if (a2)
    {
      *a2 = *(a3 + 3);
    }

    if (a7)
    {
      *a7 = a3[2];
    }

    result = *a3;
    if (!*a3)
    {
      if (a3[4])
      {
        v8 = a3 + 5;
      }

      else
      {
        v8 = a3[3];
      }

      *a4 = v8;
    }

    if (a6)
    {
      *a6 = a3[3];
    }

    if (a5)
    {
      *a5 = a3[4];
    }
  }

  else
  {
    if (a2)
    {
      *a2 = 0;
    }

    if (a4)
    {
      *a4 = 0;
    }

    if (a5)
    {
      *a5 = 0;
    }

    if (a6)
    {
      *a6 = 0;
    }

    result = 0;
    if (a7)
    {
      *a7 = 0;
    }
  }

  return result;
}

void sub_223E02498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  objc_sync_exit(v17);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL OUTLINED_FUNCTION_2@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x30u);
}

BOOL OUTLINED_FUNCTION_5@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x30u);
}

BOOL OUTLINED_FUNCTION_7_0@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x30u);
}

void OUTLINED_FUNCTION_11()
{
  *v2 = 12;
  *v1 = 0;
  *v0 = 0;
  v4 = *(v3 - 40);
}

void sub_223E07BCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  objc_sync_exit(v16);
  _Block_object_dispose(&a16, 8);
  _Unwind_Resume(a1);
}

void sub_223E08118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223E0841C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223E08700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223E08988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223E08C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223E08F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223E09250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223E0AD58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223E0B054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_223E0CED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_7_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x30u);
}

BOOL OUTLINED_FUNCTION_8_0@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_9_0(int a1@<W8>)
{
  *v2 = a1;
  *v1 = 0;
  v4 = *(v3 - 40);
}

void __PasscodeChangedNotificationCallback(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (__osLog)
  {
    v3 = __osLog;
  }

  else
  {
    v3 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134217984;
    v7 = a2;
    _os_log_impl(&dword_223E00000, v3, OS_LOG_TYPE_DEBUG, "__PasscodeChangedNotificationCallback(observer:%p)\n", &v6, 0xCu);
  }

  v4 = objc_autoreleasePoolPush();
  [a2 checkTemplatesValidityForUser:501];
  objc_autoreleasePoolPop(v4);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_223E14060(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_223E1D624(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_223E1F324(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x223E1F330);
  }

  JUMPOUT(0x223E1F354);
}

void OUTLINED_FUNCTION_10_0(int a1@<W8>)
{
  *v3 = a1;
  *v2 = 0;
  *v1 = 0;
  v5 = *(v4 - 40);
}

void OUTLINED_FUNCTION_22(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x30u);
}

BOOL OUTLINED_FUNCTION_23@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_32@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
}

uint64_t OUTLINED_FUNCTION_34@<X0>(uint64_t a1@<X8>)
{
  if (a1)
  {
    return a1;
  }

  else
  {
    return v1;
  }
}

void OUTLINED_FUNCTION_39(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x30u);
}

void OUTLINED_FUNCTION_54(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_impl(a1, v11, OS_LOG_TYPE_DEBUG, a4, &buf, 0x12u);
}

BOOL OUTLINED_FUNCTION_55@<W0>(NSObject *a1@<X8>)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = v1;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_3_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, a5, 0x30u);
}

void sub_223E2D2B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t AWDBiometricKitEventLogReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v35[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v35 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v35[0] & 0x7F) << v5;
        if ((v35[0] & 0x80) == 0)
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
        if ((v12 & 7) == 2)
        {
          v35[0] = 0;
          v35[1] = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v21 = [a2 position];
            if (v21 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v22 = 0;
            v23 = 0;
            v24 = 0;
            while (1)
            {
              v36 = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v36 & 0x7F) << v22;
              if ((v36 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                goto LABEL_42;
              }
            }

            [a2 hasError];
LABEL_42:
            PBRepeatedUInt32Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          while (1)
          {
            LOBYTE(v35[0]) = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v35[0] & 0x7F) << v28;
            if ((v35[0] & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              goto LABEL_60;
            }
          }

          [a2 hasError];
LABEL_60:
          PBRepeatedUInt32Add();
        }
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 40) |= 1u;
        while (1)
        {
          LOBYTE(v35[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v35 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v35[0] & 0x7F) << v13;
          if ((v35[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_48;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_48:
        *(a1 + 32) = v19;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v34 = [a2 position];
    }

    while (v34 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t lib_platform_rng()
{
  v0 = ccrng();
  REQUIRE_func(v0 != 0, 22, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform_lib.c");
  REQUIRE_func(0, 23, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform_lib.c");
  return v0;
}

uint64_t lib_platform_read_random(uint64_t a1, unsigned int a2)
{
  v4 = platform_rng();
  v5 = (*v4)(v4, a2, a1) == 0;

  return REQUIRE_func(v5, 31, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform_lib.c");
}

uint64_t rfc3394_wrap(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *, uint64_t *, uint64_t *, uint64_t), uint64_t *a5, unint64_t a6, void *a7, void *a8)
{
  v47 = a1;
  v48 = a3;
  v51 = *MEMORY[0x277D85DE8];
  memset(__s, 0, sizeof(__s));
  v14 = ccaes_cbc_encrypt_mode();
  v15 = *v14 + 15;
  MEMORY[0x28223BE20]();
  v49 = &v40 - v16;
  bzero(&v40 - v16, v16);
  v17 = v14[1] + 15;
  MEMORY[0x28223BE20]();
  v19 = &v40 - v18;
  bzero(&v40 - v18, v18);
  v20 = 0xFFFFFFFFLL;
  if (HIDWORD(a6) || (a6 - 40) < 0xFFFFFFE0)
  {
    goto LABEL_31;
  }

  v42 = &v40;
  v43 = a8;
  v44 = a6;
  v41 = a7;
  if (!a4)
  {
    v21 = (a2 & 0xFFFFFFFFFFFFFFF7) == 0x10 || a2 == 32;
    if (!v21 || !a8 || *a8 < a6 + 8)
    {
      rfc3394_wrap_cold_1(__s);
      goto LABEL_32;
    }

    cccbc_init();
    goto LABEL_15;
  }

  if (a8 && *v43 >= v44 + 8)
  {
LABEL_15:
    v22 = v44 >> 3;
    if (v44 >> 3 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = v22;
    }

    v24 = 8;
    v25 = v23;
    do
    {
      v26 = *a5++;
      *(__s + v24) = v26;
      v24 += 16;
      --v25;
    }

    while (v25);
    v27 = 0;
    *&__s[0] = v48;
    v28 = 1;
    v45 = v22;
    v46 = v23;
    do
    {
      v47 = v28;
      v48 = v27;
      v29 = __s;
      v30 = 1;
      do
      {
        if (a4)
        {
          if ((a4(1, &firebloom_null_iv, v29, v29, 16) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v31 = v14[1];
          cccbc_clear_iv();
          firebloom_cbc_update_f(v14, v49, v19, 0x10uLL);
        }

        v32 = *v29;
        v29 += 2;
        *&__s[v30 % v22] = v32 ^ bswap64(v28++);
        ++v30;
        --v23;
      }

      while (v23);
      v27 = v48 + 1;
      v23 = v46;
      v28 = v47 + v45;
    }

    while (v48 != 5);
    v33 = v41;
    *v41 = *&__s[0];
    v34 = v33 + 1;
    v35 = __s + 1;
    do
    {
      v36 = *v35;
      v35 += 2;
      *v34++ = v36;
      --v23;
    }

    while (v23);
    v20 = 0;
    *v43 = (v44 & 0x38) + 8;
LABEL_31:
    memset_s(__s, 0x40uLL, 0, 0x40uLL);
    if (a4)
    {
      goto LABEL_33;
    }

LABEL_32:
    v37 = *v14;
    cc_clear();
    goto LABEL_33;
  }

LABEL_6:
  rfc3394_wrap_cold_1(__s);
  v20 = 0xFFFFFFFFLL;
LABEL_33:
  v38 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t rfc3394_wrap_legacy(unint64_t a1, unsigned int a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *, uint64_t *, uint64_t *, uint64_t), uint64_t *a5, unsigned int a6, void *a7, _DWORD *a8)
{
  v11 = *a8;
  v9 = rfc3394_wrap(a1, a2, a3, a4, a5, a6, a7, &v11);
  REQUIRE_func(HIDWORD(v11) == 0, 171, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/aeskeywrap.c");
  *a8 = v11;
  return v9;
}

uint64_t rfc3394_unwrap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void *, unint64_t *, unint64_t *, uint64_t), void *a5, unint64_t a6, void *a7, void *a8)
{
  v44 = a3;
  v50 = a1;
  v53 = *MEMORY[0x277D85DE8];
  memset(__s, 0, sizeof(__s));
  v14 = ccaes_cbc_decrypt_mode();
  v15 = *v14 + 15;
  MEMORY[0x28223BE20]();
  v51 = &v42 - v16;
  bzero(&v42 - v16, v16);
  v17 = v14[1] + 15;
  MEMORY[0x28223BE20]();
  v19 = &v42 - v18;
  bzero(&v42 - v18, v18);
  v20 = 0xFFFFFFFFLL;
  if (HIDWORD(a6))
  {
    goto LABEL_33;
  }

  v49 = a6;
  v21 = a6 >> 3;
  if (v21 - 6 < 0xFFFFFFFC)
  {
    goto LABEL_33;
  }

  v45 = &v42;
  v46 = a8;
  v43 = a7;
  if (!a4)
  {
    v22 = (a2 & 0xFFFFFFFFFFFFFFF7) == 0x10 || a2 == 32;
    if (!v22 || !a8 || *a8 < v49 - 8)
    {
      rfc3394_wrap_cold_1(__s);
      goto LABEL_34;
    }

    cccbc_init();
    goto LABEL_15;
  }

  if (a8 && *v46 >= v49 - 8)
  {
LABEL_15:
    *&__s[0] = *a5;
    v23 = v21 - 1;
    if (v21 != 1)
    {
      v24 = __s + 1;
      v25 = a5 + 1;
      v26 = v21 - 1;
      do
      {
        v27 = *v25++;
        *v24 = v27;
        v24 += 2;
        --v26;
      }

      while (v26);
    }

    v28 = 6 * v21 - 6;
    v48 = 1 - v21;
    v29 = 5;
    v47 = &__s[v21 - 2];
    do
    {
      LODWORD(v50) = v29;
      if (v49 >= 0x10)
      {
        v30 = v47;
        v31 = v21 - 1;
        v32 = v28;
        do
        {
          *v30 = *&__s[v31 % v23] ^ bswap64(v32);
          if (a4)
          {
            if ((a4(0, &firebloom_null_iv, v30, v30, 16) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          else
          {
            v33 = v14[1];
            cccbc_clear_iv();
            firebloom_cbc_update_f(v14, v51, v19, 0x10uLL);
          }

          --v32;
          v30 -= 2;
          v34 = __OFSUB__(v31--, 1);
        }

        while (!((v31 < 0) ^ v34 | (v31 == 0)));
      }

      v29 = v50 - 1;
      v28 += v48;
    }

    while (v50);
    if (*&__s[0] == v44)
    {
      v35 = v43;
      if (v21 != 1)
      {
        v36 = __s + 1;
        v37 = v21 - 1;
        do
        {
          v38 = *v36;
          v36 += 2;
          *v35++ = v38;
          --v37;
        }

        while (v37);
      }

      v20 = 0;
      *v46 = 8 * v23;
    }

    else
    {
      v20 = 0xFFFFFFFFLL;
    }

LABEL_33:
    memset_s(__s, 0x40uLL, 0, 0x40uLL);
    if (a4)
    {
      goto LABEL_35;
    }

LABEL_34:
    v39 = *v14;
    cc_clear();
    goto LABEL_35;
  }

LABEL_6:
  rfc3394_wrap_cold_1(__s);
  v20 = 0xFFFFFFFFLL;
LABEL_35:
  v40 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t rfc3394_unwrap_legacy(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t (*a4)(void, void *, unint64_t *, unint64_t *, uint64_t), void *a5, unsigned int a6, void *a7, _DWORD *a8)
{
  v11 = *a8;
  v9 = rfc3394_unwrap(a1, a2, a3, a4, a5, a6, a7, &v11);
  REQUIRE_func(HIDWORD(v11) == 0, 261, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/aeskeywrap.c");
  *a8 = v11;
  return v9;
}

BOOL rfc3394_unwrapped_size_legacy(unsigned int a1, unsigned int *a2)
{
  v2 = a1 - 8;
  result = a1 > 7;
  *a2 = v2;
  return result;
}

BOOL rfc3394_unwrapped_size(unint64_t a1, unint64_t *a2)
{
  v2 = a1 - 8;
  result = a1 > 7;
  *a2 = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_0(void *a1)
{

  return memset_s(a1, 0x40uLL, 0, 0x40uLL);
}

uint64_t get_aks_client_connection()
{
  if (get_aks_client_dispatch_queue_onceToken != -1)
  {
    get_aks_client_connection_cold_1();
  }

  dispatch_sync(get_aks_client_dispatch_queue_connection_queue, &__block_literal_global_153);
  return get_aks_client_connection_connection;
}

uint64_t aks_delete_xart_leak(unsigned int a1, const void *a2)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x6Cu, input, 1u, a2, 0x10uLL, 0, 0, 0, 0);
  }

  else
  {
    aks_delete_xart_leak_cold_1();
    result = 3758097084;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

char *_iterate_path(char *result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x277D85DE8];
  if (result)
  {
    v6[0] = result;
    v6[1] = 0;
    result = fts_open(v6, 84, 0);
    if (result)
    {
      result = _iterate_path_cold_1(result, a2, a3);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

char *aks_dump_path(char *result, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v3 = result;
    bzero(v9, 0x400uLL);
    result = realpath_DARWIN_EXTSN(v3, v9);
    if (result)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 0x40000000;
      v7[2] = __aks_dump_path_block_invoke;
      v7[3] = &__block_descriptor_tmp;
      v8 = a2;
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 0x40000000;
      v5[2] = __aks_dump_path_block_invoke_2;
      v5[3] = &__block_descriptor_tmp_128;
      v6 = a2;
      result = _iterate_path(v9, v7, v5);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __aks_dump_path_block_invoke(uint64_t a1, uint64_t a2)
{
  path_class = _get_path_class(*(a2 + 48));
  v5 = *(a1 + 32);
  if (v5 == -1 || path_class == v5)
  {
    printf(" dir: %s %i\n", *(a2 + 48), path_class);
  }

  return 1;
}

uint64_t aks_fs_supports_enhanced_apfs()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = IORegistryEntryFromPath(*MEMORY[0x277CD28A0], "IODeviceTree:/filesystems");
  if (v0)
  {
    v1 = v0;
    CFProperty = IORegistryEntryCreateCFProperty(v0, @"e-apfs", *MEMORY[0x277CBECE8], 0);
    v3 = CFProperty != 0;
    if (CFProperty)
    {
      CFRelease(CFProperty);
    }

    IOObjectRelease(v1);
  }

  else
  {
    v3 = 0;
  }

  __len = 1023;
  bzero(__big, 0x400uLL);
  if ((_aks_check_apfs_shared_datavolume_bootarg_init & 1) == 0)
  {
    if (!sysctlbyname("kern.bootargs", __big, &__len, 0, 0) && strnstr(__big, "-apfs_shared_datavolume", __len))
    {
      _aks_check_apfs_shared_datavolume_bootarg_value = 1;
    }

    _aks_check_apfs_shared_datavolume_bootarg_init = 1;
  }

  v4 = _aks_check_apfs_shared_datavolume_bootarg_value;
  fprintf(*MEMORY[0x277D85E08], "%s:%spid:%d,%s:%s%s%s%s%s%u:%s ioreg: %d, boot_arg: %d%s\n", "aks", &unk_223E5FC53, -1, &unk_223E5FC53, &unk_223E5FC53, &unk_223E5FC53, &unk_223E5FC53, "aks_fs_supports_enhanced_apfs", ":", 438, &unk_223E5FC53, v3, _aks_check_apfs_shared_datavolume_bootarg_value, &unk_223E5FC53);
  v5 = *MEMORY[0x277D85DE8];
  return v3 | v4;
}

void aks_fs_status_with_map(const char *a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  bzero(__str, 0x400uLL);
  memset(&v8, 0, sizeof(v8));
  if (a3)
  {
    v6 = (a2 + 16);
    do
    {
      snprintf(__str, 0x400uLL, "%s%s", a1, *(v6 - 2));
      if (stat(__str, &v8))
      {
        printf("stat failed: %s\n");
      }

      else
      {
        _get_path_class(__str);
        *v6;
        printf("%s: mode=%o, u/g=%i:%i class=%i%s\n");
      }

      v6 += 6;
      --a3;
    }

    while (a3);
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t aks_show_allowlist()
{
  puts("shared allow list:");
  v0 = &byte_2784FA600;
  v1 = 36;
  do
  {
    if (*v0)
    {
      printf("%s%s\n", "<var>", *(v0 - 2));
    }

    v0 += 48;
    --v1;
  }

  while (v1);
  result = puts("user allow list:");
  v3 = &byte_2784FACC0;
  v4 = 72;
  do
  {
    if (*v3)
    {
      result = printf("%s%s\n", "<user>", *(v3 - 2));
    }

    v3 += 48;
    --v4;
  }

  while (v4);
  return result;
}

void aks_gather_stats(const char *a1, char a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    bzero(&v14, 0x878uLL);
    bzero(v13, 0x400uLL);
    if (realpath_DARWIN_EXTSN(a1, v13))
    {
      v4 = malloc(0x818uLL);
      memset_s(v4, 0x818uLL, 0, 0x818uLL);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 0x40000000;
      v12[2] = __aks_gather_stats_block_invoke_2;
      v12[3] = &__block_descriptor_tmp_141;
      v12[4] = v4;
      _iterate_path(v13, &__block_literal_global_3, v12);
      if (!statfs(v13, &v14))
      {
        if (a2)
        {
          printf("Free Blocks:%lld blocks of size:%d\n");
        }

        else
        {
          printf("%lld,%d\n");
        }
      }

      v5 = v4 + 340;
      for (i = 1; i != 5; ++i)
      {
        if (a2)
        {
          v9 = &v4[296 * i];
          printf("%s:\n\tNum files:\t%u,\n\tNum hardlinks:\t%u,\n\tNum compressed:\t%u,\n\tTotal Size:\t%lld,\n\tMin File Size:\t%lld,\n\tMax File Size:\t%lld,\n", class_names[i], *v9, *(v9 + 2), *(v9 + 1), *(v9 + 2), *(v9 + 3), *(v9 + 4));
          printf("\tSize Distribution:");
          printf("%i", *(v9 + 10));
          for (j = 0; j != 252; j += 4)
          {
            putchar(44);
            printf("%i", *&v5[j]);
          }
        }

        else
        {
          v7 = &v4[296 * i];
          printf("%i,%u,%u,%u,%lld,%lld,%lld,", i, *v7, *(v7 + 2), *(v7 + 1), *(v7 + 2), *(v7 + 3), *(v7 + 4));
          printf("%i", *(v7 + 10));
          for (k = 0; k != 252; k += 4)
          {
            putchar(44);
            printf("%i", *&v5[k]);
          }
        }

        putchar(10);
        v5 += 296;
      }

      free(v4);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t aks_kext_set_options(unsigned int a1, uint64_t a2)
{
  input[3] = *MEMORY[0x277D85DE8];
  input[0] = 1;
  input[1] = a1;
  input[2] = a2;
  output = 0;
  outputCnt = 1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x56u, input, 3u, 0, 0, &output, &outputCnt, 0, 0);
  }

  else
  {
    aks_kext_set_options_cold_1();
    result = 3758097084;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_internal_state()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x10u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_internal_state_cold_1();
  return 3758097084;
}

uint64_t aks_run_internal_test(unsigned int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    result = IOConnectCallMethod(aks_client_connection, 0x86u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_run_internal_test_cold_1();
    result = 3758097084;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void __get_aks_client_connection_block_invoke()
{
  if (!get_aks_client_connection_connection)
  {
    get_aks_client_connection_connection = _copy_aks_client_connection("IOService:/IOResources/AppleKeyStore", "AppleKeyStore");
  }
}

uint64_t get_akstest_client_connection()
{
  if (get_aks_client_dispatch_queue_onceToken != -1)
  {
    get_aks_client_connection_cold_1();
  }

  dispatch_sync(get_aks_client_dispatch_queue_connection_queue, &__block_literal_global_156);
  return get_akstest_client_connection_connection;
}

void __get_akstest_client_connection_block_invoke()
{
  if (!get_akstest_client_connection_connection)
  {
    get_akstest_client_connection_connection = _copy_aks_client_connection("IOService:/IOResources/AppleKeyStoreTest", "AppleKeyStoreTest");
  }
}

uint64_t akstest_new_ek(mach_port_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, size_t *a8)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a3;
  memset(inputStructCnt, 0, sizeof(inputStructCnt));
  aks_pack_data(&inputStructCnt[1], inputStructCnt, 2, a4, a5, a6, a7, a8, a2);
  v11 = IOConnectCallMethod(a1, 0x14u, input, 1u, *&inputStructCnt[1], inputStructCnt[0], 0, 0, a7, a8);
  free(*&inputStructCnt[1]);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t akstest_check_class(mach_port_t a1, void *inputStruct, unsigned int a3)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a3;
  result = IOConnectCallMethod(a1, 0x11u, input, 1u, inputStruct, 0x10uLL, 0, 0, 0, 0);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t akstest_last_user(mach_port_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a2;
  memset(inputStructCnt, 0, sizeof(inputStructCnt));
  aks_pack_data(&inputStructCnt[1], inputStructCnt, 1, a4, a5, a6, a7, a8, a3);
  v9 = IOConnectCallMethod(a1, 0x12u, input, 1u, *&inputStructCnt[1], inputStructCnt[0], 0, 0, 0, 0);
  free(*&inputStructCnt[1]);
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

dispatch_queue_t __get_aks_client_dispatch_queue_block_invoke()
{
  result = dispatch_queue_create("aks-client-queue", 0);
  get_aks_client_dispatch_queue_connection_queue = result;
  return result;
}

uint64_t _copy_aks_client_connection(char *path, const char *a2)
{
  connect = 0;
  v3 = *MEMORY[0x277CD28A0];
  v4 = IORegistryEntryFromPath(*MEMORY[0x277CD28A0], path);
  v5 = MEMORY[0x277D85F48];
  if (!v4 || (v6 = v4, v7 = IOServiceOpen(v4, *MEMORY[0x277D85F48], 0, &connect), IOObjectRelease(v6), v7))
  {
    v8 = IOServiceMatching(a2);
    MatchingService = IOServiceGetMatchingService(v3, v8);
    if (MatchingService)
    {
      v10 = MatchingService;
      IOServiceOpen(MatchingService, *v5, 0, &connect);
      IOObjectRelease(v10);
    }
  }

  if (connect)
  {
    if (IOConnectCallMethod(connect, 0, 0, 0, 0, 0, 0, 0, 0, 0))
    {
      IOServiceClose(connect);
      connect = 0;
      syslog(3, "failed to open userclient via %s: %d\n");
    }
  }

  else
  {
    syslog(3, "failed to open connection to %s: %d\n");
  }

  return connect;
}

uint64_t OUTLINED_FUNCTION_1_2(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, 0, 0, 0, 0, a9, a10);
}

uint64_t OUTLINED_FUNCTION_3_2(void *a1)
{

  return memset_s(a1, 0x1000uLL, 0, 0x1000uLL);
}

uint64_t sizeof_backup_bag(uint64_t *a1)
{
  v2 = a1[10];
  ccder_sizeof_implicit_uint64();
  ccder_sizeof_raw_octet_string();
  ccder_sizeof_raw_octet_string();
  v3 = *a1;
  ccder_sizeof_implicit_uint64();

  return ccder_sizeof();
}

uint64_t OUTLINED_FUNCTION_0_2(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char __s)
{

  return memset_s(&__s, 0x20uLL, 0, 0x20uLL);
}

uint64_t aks_stash_verify(uint64_t a1, _BYTE *a2)
{
  v4 = 0;
  if (!a2)
  {
    return _aks_stash_load(a1, 1, &v4);
  }

  *a2 = 0;
  result = _aks_stash_load(a1, 1, &v4);
  if (!result)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t aks_stash_destroy()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x25u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_stash_destroy_cold_1();
  return 3758097084;
}

uint64_t aks_stash_commit(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    result = IOConnectCallMethod(aks_client_connection, 0x24u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_stash_commit_cold_1();
    result = 3758097084;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_stash_enable(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    result = IOConnectCallMethod(aks_client_connection, 0x33u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_stash_enable_cold_1();
    result = 3758097084;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_stash_persist(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    result = IOConnectCallMethod(aks_client_connection, 0x35u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_stash_persist_cold_1();
    result = 3758097084;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_invalidate_sync_bags()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x42u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_invalidate_sync_bags_cold_1();
  return 3758097084;
}

uint64_t aks_unload_bag(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    result = IOConnectCallMethod(aks_client_connection, 4u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_unload_bag_cold_1();
    result = 3758097084;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_unload_session_bags(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    result = IOConnectCallMethod(aks_client_connection, 0x37u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_unload_session_bags_cold_1();
    result = 3758097084;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_change_secret_with_kek(int a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, int a9, unsigned __int8 a10, unsigned int a11, int a12, _DWORD *a13, void **a14)
{
  input[12] = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    input[1] = a11;
    input[2] = a10;
    input[3] = a2;
    input[4] = a3;
    input[5] = a4;
    input[6] = a5;
    input[7] = a6;
    input[8] = a7;
    input[9] = a8;
    input[10] = a9;
    input[11] = a12 & 0xFFFFFFF7 | (8 * (a14 != 0));
    output = 0;
    outputCnt = 1;
    if (a14)
    {
      outputStruct = *a14;
    }

    else
    {
      outputStruct = 0;
    }

    if (a14)
    {
      v24 = (a14 + 1);
    }

    else
    {
      v24 = 0;
    }

    result = IOConnectCallMethod(aks_client_connection, 0xFu, input, 0xCu, 0, 0, &output, &outputCnt, outputStruct, v24);
    if (a13 && !result)
    {
      *a13 = output;
    }
  }

  else
  {
    aks_change_secret_with_kek_cold_1();
    result = 3758097084;
  }

  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_lock_bag(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    result = IOConnectCallMethod(aks_client_connection, 0xDu, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_lock_bag_cold_1();
    result = 3758097084;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _aks_unlock_bag(int a1, uint64_t a2, int a3, unsigned int a4)
{
  input[4] = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    input[1] = a2;
    input[2] = a3;
    input[3] = a4;
    result = IOConnectCallMethod(aks_client_connection, 0xCu, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    _aks_unlock_bag_cold_1();
    result = 3758097084;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _aks_set_system_with_passcode(int a1, int a2, uint64_t a3, int a4, unsigned int a5)
{
  input[5] = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    input[1] = a2;
    input[2] = a3;
    input[3] = a4;
    input[4] = a5;
    result = IOConnectCallMethod(aks_client_connection, 5u, input, 5u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    _aks_set_system_with_passcode_cold_1();
    result = 3758097084;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_backup_unwrap_key(_OWORD *a1, void *a2, unsigned int a3, void *a4, void *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  memset(&v13[16], 0, 112);
  *v13 = 0u;
  v6 = a1[1];
  *&v13[4] = *a1;
  *&v13[20] = v6;
  v7 = a1[3];
  *&v13[36] = a1[2];
  v14 = 0;
  *&v13[52] = v7;
  v11 = *a5;
  __s = 1;
  v8 = unwrap_data(&__s, 0, 0, a2, a3, a4, &v11);
  *a5 = v11;
  memset_s(&__s, 0x88uLL, 0, 0x88uLL);
  result = err_sks_to_aks(v8);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void _set_cf_key(__CFDictionary *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    if (CFNumberGetTypeID() == a3)
    {
      valuePtr = der_get_number();
      v7 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &valuePtr);
      if (!v7)
      {
        return;
      }

      v8 = v7;
      CFDictionaryAddValue(a1, a2, v7);
      goto LABEL_5;
    }

    if (CFBooleanGetTypeID() == a3)
    {
      v9 = der_get_BOOL();
      v10 = MEMORY[0x277CBED28];
      if (!v9)
      {
        v10 = MEMORY[0x277CBED10];
      }

      v11 = *v10;

      CFDictionaryAddValue(a1, a2, v11);
    }

    else if (CFDataGetTypeID() == a3)
    {
      valuePtr = 0;
      v12 = ccder_decode_tl();
      if (v12)
      {
        v8 = CFDataCreate(*MEMORY[0x277CBECE8], v12, valuePtr);
        CFDictionaryAddValue(a1, a2, v8);
        if (v8)
        {
LABEL_5:
          CFRelease(v8);
        }
      }
    }
  }
}

uint64_t aks_assert_hold(int a1, unsigned int a2, uint64_t a3)
{
  input[3] = *MEMORY[0x277D85DE8];
  input[0] = a2;
  input[1] = a3;
  input[2] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x1Au, input, 3u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_assert_hold_cold_1();
    result = 3758097084;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_assert_drop(int a1, unsigned int a2)
{
  input[2] = *MEMORY[0x277D85DE8];
  input[0] = a2;
  input[1] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x1Bu, input, 2u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_assert_drop_cold_1();
    result = 3758097084;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_assert_promote(int a1, unsigned int a2)
{
  input[2] = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a2;
    input[1] = a1;
    result = IOConnectCallMethod(aks_client_connection, 0x64u, input, 2u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_assert_promote_cold_1();
    result = 3758097084;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_oneness_heartbeat(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x91u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_oneness_heartbeat_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_assert_consume(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x65u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_assert_consume_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _aks_recover_with_escrow_bag(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  input[4] = *MEMORY[0x277D85DE8];
  v23 = 0;
  v22 = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v17 = aks_client_connection;
    aks_pack_data(&v23, &v22, 3, v12, v13, v14, v15, v16, a2);
    input[0] = a1;
    input[1] = v23;
    input[2] = v22;
    input[3] = a8;
    v18 = IOConnectCallMethod(v17, 0x12u, input, 4u, 0, 0, 0, 0, 0, 0);
    v19 = v23;
  }

  else
  {
    _aks_recover_with_escrow_bag_cold_1();
    v19 = 0;
    v18 = 3758097084;
  }

  free(v19);
  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t aks_generation(int a1, unsigned int a2, _DWORD *a3)
{
  input[2] = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    input[1] = a2;
    output = 0;
    outputCnt = 1;
    result = IOConnectCallMethod(aks_client_connection, 0x28u, input, 2u, 0, 0, &output, &outputCnt, 0, 0);
    if (a3 && !result)
    {
      *a3 = output;
    }
  }

  else
  {
    aks_generation_cold_1();
    result = 3758097084;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_verify_password_with_opts(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  if (a1)
  {
    v41 = a3;
    if (a2)
    {
      v42 = a4;
      v43 = a5;
      v44 = a6;
      v45 = a7;
      v46 = 1;
    }

    else
    {
      v42 = a4;
      v43 = a5;
      v44 = a6;
      v45 = a7;
      v46 = 0;
    }

    v47 = 1;
  }

  else
  {
    v41 = a3;
    if (a2)
    {
      v42 = a4;
      v43 = a5;
      v44 = a6;
      v45 = a7;
      v46 = 1;
    }

    else
    {
      v42 = a4;
      v43 = a5;
      v44 = a6;
      v45 = a7;
      v46 = 0;
    }

    v47 = 0;
  }

  return _aks_verify_password(v41, v42, v43, v44, v45, v46, v47, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41);
}

uint64_t aks_register_for_notifications()
{
  if (get_aks_client_connection())
  {

    JUMPOUT(0x22AA481C0);
  }

  aks_register_for_notifications_cold_1();
  return 3758097084;
}

uint64_t aks_clear_backup_bag(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    result = IOConnectCallMethod(aks_client_connection, 0x16u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_clear_backup_bag_cold_1();
    result = 3758097084;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_remote_reset_all_peers(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0xA2u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_remote_reset_all_peers_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_remote_peer_drop(int a1, const void *a2, size_t a3)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x3Au, input, 1u, a2, a3, 0, 0, 0, 0);
  }

  else
  {
    aks_remote_peer_drop_cold_1();
    result = 3758097084;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_lock_device(int a1, int a2)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (a2)
    {
      v4 = 32;
    }

    else
    {
      v4 = 8;
    }

    result = IOConnectCallMethod(aks_client_connection, v4, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_lock_device_cold_1();
    result = 3758097084;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_lock_cx(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x8Du, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_lock_cx_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_unlock_device(int a1, uint64_t a2, int a3)
{
  input[4] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 9u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_unlock_device_cold_1();
    result = 3758097084;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_unlock_device_with_acm(int a1, uint64_t a2, int a3)
{
  input[4] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = 1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 9u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_unlock_device_with_acm_cold_1();
    result = 3758097084;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_unlock_device_with_opts(int a1, int a2, uint64_t a3, int a4)
{
  if (a1)
  {
    return aks_unlock_device_with_acm(a2, a3, a4);
  }

  else
  {
    return aks_unlock_device(a2, a3, a4);
  }
}

uint64_t aks_obliterate_class_d()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x13u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_obliterate_class_d_cold_1();
  return 3758097084;
}

uint64_t aks_migrate_s_key(int a1, unsigned int a2, uint64_t a3, unsigned int a4, const void *a5, int a6)
{
  input[4] = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    input[1] = a2;
    input[2] = a3;
    input[3] = a4;
    result = IOConnectCallMethod(aks_client_connection, 0x3Fu, input, 4u, a5, a6, 0, 0, 0, 0);
  }

  else
  {
    aks_migrate_s_key_cold_1();
    result = 3758097084;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_smartcard_unregister(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x3Cu, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_smartcard_unregister_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_se_fail(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x47u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_se_fail_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_se_set_healthy(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x49u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_se_set_healthy_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __aks_se_set_secret(int a1, uint64_t a2, uint64_t a3, uint32_t a4)
{
  input[3] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, a4, input, 3u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    __aks_se_set_secret_cold_1();
    result = 3758097084;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_se_recover(int a1, uint64_t a2, uint64_t a3)
{
  input[4] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x46u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_se_recover_cold_1();
    result = 3758097084;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_se_recover_with_acm(int a1, uint64_t a2, uint64_t a3)
{
  input[4] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = 1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x46u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_se_recover_with_acm_cold_1();
    result = 3758097084;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_se_recover_with_opts(int a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    return aks_se_recover_with_acm(a2, a3, a4);
  }

  else
  {
    return aks_se_recover(a2, a3, a4);
  }
}

uint64_t _aks_change_secret_epilogue(int a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  input[4] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = a4;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x69u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    _aks_change_secret_epilogue_cold_1();
    result = 3758097084;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_se_set_nonce(int a1, const void *a2, size_t a3)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (a2)
    {
      v6 = a3;
    }

    else
    {
      v6 = 0;
    }

    result = IOConnectCallMethod(aks_client_connection, 0x58u, input, 1u, a2, v6, 0, 0, 0, 0);
  }

  else
  {
    aks_se_set_nonce_cold_1();
    result = 3758097084;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_se_delete_reset_token(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x5Bu, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_se_delete_reset_token_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_se_support_in_rm(unsigned int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x5Eu, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_se_support_in_rm_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_se_support_in_rm_is_set(BOOL *a1)
{
  output[1] = *MEMORY[0x277D85DE8];
  output[0] = 0;
  outputCnt = 1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x6Bu, 0, 0, 0, 0, output, &outputCnt, 0, 0);
    if (a1 && !result)
    {
      *a1 = output[0] != 0;
    }
  }

  else
  {
    aks_se_support_in_rm_is_set_cold_1();
    result = 3758097084;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_se_stage_stash()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x5Fu, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_se_stage_stash_cold_1();
  return 3758097084;
}

uint64_t aks_enable_cache_flow(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0xA0u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_enable_cache_flow_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_fv_stash_kek_with_secret(int a1)
{
  v1 = 8;
  if (a1)
  {
    v1 = 12;
  }

  v5 = v1;
  aks_fv_set_protection();
  v3 = v2;
  syslog(6, "aks_fv_prot_cmd_stash_kek(%llu) = %d", v5, v2);
  return v3;
}

uint64_t aks_fv_commit_stashed_kek()
{
  aks_fv_set_protection();
  v1 = v0;
  syslog(6, "aks_fv_prot_cmd_stash_commit = %d", v0);
  return v1;
}

uint64_t aks_fv_destroy_stashed_kek()
{
  aks_fv_set_protection();
  v1 = v0;
  syslog(6, "aks_fv_prot_cmd_stash_destroy = %d", v0);
  return v1;
}

uint64_t aks_drop_auxiliary_auth_by_uid(unsigned int a1)
{
  input[2] = *MEMORY[0x277D85DE8];
  input[0] = 0;
  input[1] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x53u, input, 2u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_drop_auxiliary_auth_by_uid_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_drop_auxiliary_auth_by_handle(int a1)
{
  input[2] = *MEMORY[0x277D85DE8];
  input[0] = 1;
  input[1] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x53u, input, 2u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_drop_auxiliary_auth_by_handle_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_lower_iteration_count()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x5Cu, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_lower_iteration_count_cold_1();
  return 3758097084;
}

uint64_t aks_reset_iteration_count()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x5Cu, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_reset_iteration_count_cold_1();
  return 3758097084;
}

uint64_t aks_se_secret_drop(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x6Au, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_se_secret_drop_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_se_memento_secret_drop(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x9Cu, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_se_memento_secret_drop_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_prewarm_sps()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x73u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_prewarm_sps_cold_1();
  return 3758097084;
}

uint64_t aks_measure_and_seal_cryptex_manifest(const void *a1, size_t a2)
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x90u, 0, 0, a1, a2, 0, 0, 0, 0);
  }

  aks_measure_and_seal_cryptex_manifest_cold_1();
  return 3758097084;
}

uint64_t aks_seal_cryptex_manifest_lock()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x95u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_seal_cryptex_manifest_lock_cold_1();
  return 3758097084;
}

uint64_t aks_lkgp_recover(int a1, uint64_t a2, uint64_t a3)
{
  input[3] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x85u, input, 3u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_lkgp_recover_cold_1();
    result = 3758097084;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_memento_efface_blob(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x8Au, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_memento_efface_blob_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_set_jcop_supports_updated_kud_policy()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x89u, &input, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_set_jcop_supports_updated_kud_policy_cold_1();
  return 3758097084;
}

uint64_t aks_set_cx_window(uint64_t a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x97u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_set_cx_window_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t OUTLINED_FUNCTION_3_3(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, 1u, 0, 0, 0, 0, a9, a10);
}

void OUTLINED_FUNCTION_8_3()
{
  *(v1 - 56) = 0;
  *(v1 - 48) = v0;
  *(v1 - 60) = 1;
}

uint64_t OUTLINED_FUNCTION_16_1(mach_port_t a1, uint32_t a2, uint64_t a3, uint64_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, 0, 0, a5, a6, 0, 0, a9, a10);
}

uint64_t OUTLINED_FUNCTION_18_1(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, v11, v10, 0, 0, a9, a10);
}

uint64_t OUTLINED_FUNCTION_19_1(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, v11, v10, 0, 0, a9, a10);
}

uint64_t OUTLINED_FUNCTION_23_0(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint64_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, 1u, a5, a6, 0, 0, a9, a10);
}

void OUTLINED_FUNCTION_34_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  bzero(va, 0x8000uLL);
}

uint64_t OUTLINED_FUNCTION_35_0(void *a1)
{

  return memset_s(a1, 0x20uLL, 0, 0x20uLL);
}

uint64_t OUTLINED_FUNCTION_37(void *a1, rsize_t __n)
{

  return memset_s(a1, __n, 0, __n);
}

void OUTLINED_FUNCTION_39_0(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = *(v16 - 104);
  *(v16 - 96) = a1;
  *(v16 - 88) = v17;
  *(v16 - 80) = a16;
}

uint64_t OUTLINED_FUNCTION_52_0(void *a1)
{

  return memset_s(a1, 0x4000uLL, 0, 0x4000uLL);
}

uint64_t OUTLINED_FUNCTION_68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memset_s(&a9, 0x58uLL, 0, 0x58uLL);
}

void *OUTLINED_FUNCTION_71(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, size_t __n, uint64_t a22, uint64_t a23, char __src)
{

  return memcpy(a1, &__src, __n);
}

void OUTLINED_FUNCTION_72(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  bzero(va, 0x1000uLL);
}

const char *set_akslog_context(const char *__format, ...)
{
  va_start(va, __format);
  if (__format)
  {
    return vsnprintf(&_akslog_context, 0x20uLL, __format, va);
  }

  _akslog_context = 0;
  return __format;
}

uint64_t compress_uuid()
{
  v2 = *MEMORY[0x277D85DE8];
  ccsha256_di();
  ccdigest();
  result = 0;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t time_seconds_to_abs_interval(unsigned int a1)
{
  info = 0;
  mach_timebase_info(&info);
  return 1000000000 * info.denom * a1 / info.numer;
}

unint64_t time_absolute_to_nanoseconds(uint64_t a1)
{
  info = 0;
  mach_timebase_info(&info);
  return info.numer * a1 / info.denom;
}

uint64_t get_usec_time()
{
  info = 0;
  mach_timebase_info(&info);
  return mach_continuous_time() * info.numer / info.denom / 0x3E8;
}

__darwin_time_t get_clock_time()
{
  v1.tv_sec = 0;
  *&v1.tv_usec = 0;
  gettimeofday(&v1, 0);
  return v1.tv_sec;
}

void *circular_queue_init(unsigned int a1, unsigned int a2)
{
  v2 = a1 + 1;
  if (v2 == v2 << 31 >> 31)
  {
    v4 = calloc(0x20uLL, 1uLL);
    v5 = v4;
    if (v4)
    {
      v4[1] = 0;
      *v4 = a2;
      *(v4 + 1) = v2;
      v6 = calloc(v2 * a2, 1uLL);
      v5[2] = v2 * a2;
      v5[3] = v6;
    }
  }

  else
  {
    circular_queue_init_cold_1();
    return 0;
  }

  return v5;
}

uint64_t circular_queue_size(_DWORD *a1)
{
  v3 = a1[2];
  v2 = a1[3];
  result = v2 - v3;
  if (v2 < v3)
  {
    return (result + a1[1]);
  }

  return result;
}

uint64_t circular_queue_enqueue(unsigned int *a1, const void *a2)
{
  v3 = a1[3];
  v4 = (v3 + 1) % a1[1];
  memcpy((*(a1 + 3) + *a1 * v3), a2, *a1);
  a1[3] = v4;
  if (v4 == a1[2])
  {
    a1[2] = (v4 + 1) % a1[1];
  }

  return 0;
}

uint64_t circular_queue_dequeue(unsigned int *a1, void *__dst)
{
  v2 = a1[2];
  if (v2 == a1[3])
  {
    return 0xFFFFFFFFLL;
  }

  if (__dst)
  {
    memcpy(__dst, (*(a1 + 3) + *a1 * v2), *a1);
    v2 = a1[2];
  }

  memset_s((*(a1 + 3) + *a1 * v2), *a1, 0, *a1);
  result = 0;
  a1[2] = (a1[2] + 1) % a1[1];
  return result;
}

uint64_t circular_queue_peek(unsigned int *a1, void *__dst)
{
  v2 = a1[2];
  if (v2 == a1[3])
  {
    return 0xFFFFFFFFLL;
  }

  memcpy(__dst, (*(a1 + 3) + *a1 * v2), *a1);
  return 0;
}

uint64_t circular_queue_dequeue_all(int *a1, void *a2, unsigned int *a3)
{
  v7 = a1[2];
  v6 = a1[3];
  v8 = v6 - v7;
  if (v6 < v7)
  {
    v8 += a1[1];
  }

  if (!v8)
  {
    return 0;
  }

  v9 = *a1 * v8;
  v10 = calloc(v9, 1uLL);
  if (!v10)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = v10;
  v12 = a1[2];
  v13 = a1[3];
  if (v13 <= v12)
  {
    if (v12 <= v13)
    {
      goto LABEL_13;
    }

    v17 = a1[1] - v12;
    memcpy(v10, (*(a1 + 3) + *a1 * v12), *a1 * v17);
    if (v8 <= v17)
    {
      goto LABEL_13;
    }

    v15 = *(a1 + 3);
    v14 = *a1 * (v8 - v17);
    v10 = &v11[*a1 * v17];
  }

  else
  {
    v14 = *a1 * v8;
    v15 = (*(a1 + 3) + *a1 * v12);
  }

  memcpy(v10, v15, v14);
LABEL_13:
  v18 = a1[1];
  v19 = *a1;
  a1[2] = (a1[2] + v8) % v18;
  memset_s(*(a1 + 3), v19 * v18, 0, v19 * v18);
  result = 0;
  *a2 = v11;
  *a3 = v9;
  return result;
}

uint64_t circular_queue_clear(uint64_t a1)
{
  *(a1 + 8) = 0;
  v1 = (*a1 * *(a1 + 4));
  return memset_s(*(a1 + 24), v1, 0, v1);
}

void circular_queue_free(void *a1)
{
  *(a1 + 1) = 0;
  v2 = (*a1 * *(a1 + 1));
  memset_s(*(a1 + 3), v2, 0, v2);
  memset_s(*(a1 + 3), *(a1 + 2), 0, *(a1 + 2));
  free(*(a1 + 3));
  memset_s(a1, 0x20uLL, 0, 0x20uLL);

  free(a1);
}

BOOL persona_uuid_is_valid(uint8x16_t *a1)
{
  v1 = vmovl_high_u8(*a1);
  v2 = vmovl_u8(*a1->i8);
  v3 = vmovl_u16(vorr_s8(vorr_s8(*v2.i8, *v1.i8), vorr_s8(*&vextq_s8(v2, v2, 8uLL), *&vextq_s8(v1, v1, 8uLL))));
  return vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)) != 0;
}

BOOL is_non_zero(unsigned __int8 *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = 0;
  do
  {
    v3 = *a1++;
    v2 |= v3;
    --a2;
  }

  while (a2);
  return v2 != 0;
}

_DWORD *pfk_params_is_valid(_DWORD *result)
{
  if (result)
  {
    return (*result != 0);
  }

  return result;
}

uint64_t class_id_get(char a1)
{
  if ((a1 & 0x1Fu) > 0x14)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return a1 & 0x1F;
  }
}

uint64_t dump_bytes_internal(const char *a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = a1;
  v26 = *MEMORY[0x277D85DE8];
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  *__str = 0u;
  v18 = 0u;
  v5 = MEMORY[0x277D85E08];
  if (a3 >= 0x41)
  {
    fprintf(*MEMORY[0x277D85E08], "%s:%spid:%d,%s:%s%s%s%s%s%u:%s %sdump %s (len = %zd)%s%s\n", "aks", &unk_223E5FC53, -1, &unk_223E5FC53, &unk_223E5FC53, &unk_223E5FC53, &unk_223E5FC53, "dump_bytes_internal", ":", 844, &unk_223E5FC53, &unk_223E5FC53, a1, a3, &unk_223E5FC53, &unk_223E5FC53);
    v4 = &unk_223E5FC53;
  }

  else if (!a3)
  {
    goto LABEL_16;
  }

  v6 = 0;
  v16 = v3;
  do
  {
    v7 = v5;
    if (v3 - v6 >= 0x40)
    {
      v8 = 64;
    }

    else
    {
      v8 = v3 - v6;
    }

    if (v3 != v6)
    {
      v9 = (a2 + v6);
      if (v8 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v8;
      }

      v11 = __str;
      do
      {
        v12 = *v9++;
        snprintf(v11, 3uLL, "%02x", v12);
        v11 += 2;
        --v10;
      }

      while (v10);
    }

    v5 = v7;
    fprintf(*v7, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s %s%s%s[%04zu,%04zu): %s%s%s%s\n", "aks", &unk_223E5FC53, -1, &unk_223E5FC53, &unk_223E5FC53, &unk_223E5FC53, &unk_223E5FC53, "dump_bytes_internal", ":", 854, &unk_223E5FC53, &unk_223E5FC53, v4, &unk_223E5FC53, v6, v8 + v6, &unk_223E5FC53, __str, &unk_223E5FC53, &unk_223E5FC53);
    v6 += v8;
    v3 = v16;
  }

  while (v6 < v16);
LABEL_16:
  result = memset_s(__str, 0x81uLL, 0, 0x81uLL);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *bytes_to_str_hint(unsigned __int8 *a1, unint64_t a2)
{
  if (a2 >= 0x10)
  {
    v2 = 16;
  }

  else
  {
    v2 = a2;
  }

  if (a2)
  {
    v4 = bytes_to_str_hint_buf;
    v5 = v2;
    do
    {
      v6 = *a1++;
      snprintf(v4, 3uLL, "%02x", v6);
      v4 += 2;
      --v5;
    }

    while (v5);
  }

  bytes_to_str_hint_buf[2 * v2] = 0;
  return bytes_to_str_hint_buf;
}

char *byte_swap_val(char *result, unint64_t a2)
{
  if (a2 >= 2)
  {
    v2 = a2 >> 1;
    v3 = &result[a2 - 1];
    do
    {
      v4 = *result;
      *result++ = *v3;
      *v3-- = v4;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t err_sks_to_aks(uint64_t result)
{
  if (result == 0 || result >= 0xFFFFFFDA)
  {
    return dword_223E5FAF0[(result + 38)];
  }

  return result;
}

uint64_t REQUIRE_func(uint64_t result, int a2, const char *a3)
{
  if ((result & 1) == 0)
  {
    fprintf(*MEMORY[0x277D85E08], "%s:%spid:%d,%s:%s%s%s%s%s%u:%s failed REQUIRE condition (%s:%d)\n%s\n", "aks", &unk_223E5FC53, -1, &unk_223E5FC53, &unk_223E5FC53, &unk_223E5FC53, &unk_223E5FC53, "REQUIRE_func", ":", 1134, &unk_223E5FC53, a3, a2, &unk_223E5FC53);
    abort();
  }

  return result;
}

uint64_t generate_wrapping_key_curve25519(__int128 *a1, __int128 *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  memset(v16, 0, sizeof(v16));
  platform_read_random(v16, 0x20u);
  v4 = cccurve25519_make_pub() == 0;
  REQUIRE_func(v4, 58, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
  v10 = 0u;
  v11 = 0u;
  __s = 0x1000000;
  v5 = a2[1];
  v12 = *a2;
  v13 = v5;
  v6 = a1[1];
  v14 = *a1;
  v15 = v6;
  cccurve25519();
  ccsha256_di();
  ccdigest();
  memset_s(&__s, 0x64uLL, 0, 0x64uLL);
  memset_s(v16, 0x20uLL, 0, 0x20uLL);
  v7 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t generate_unwrap_shared_key_curve25519(__int128 *a1, uint64_t a2, __int128 *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v8 = 0u;
  v3 = a1[1];
  v10 = *a1;
  v11 = v3;
  v4 = a3[1];
  v12 = *a3;
  __s = 0x1000000;
  v13 = v4;
  cccurve25519();
  ccsha256_di();
  ccdigest();
  memset_s(&__s, 0x64uLL, 0, 0x64uLL);
  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x282201770](a1, 32, a3, 0, 0, v4, v3, 32);
}

uint64_t OUTLINED_FUNCTION_6_3()
{

  return generate_unwrap_shared_key_curve25519(v0, v1 + 8, (v1 + 40));
}

uint64_t firebloom_ec_export(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = &a2[3 * **a2];
  ccn_write_uint_padded();
  return 1;
}

uint64_t dict_find_params_cb(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 8) >= *a5)
  {
    v13 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = der_equal(*(*(a5 + 24) + v9), *(*(a5 + 24) + v9) + *(*(*(a5 + 24) + v9) + 1) + 2, a1);
      if (v11)
      {
        break;
      }

      ++v10;
      v9 += 40;
      if (v10 >= *a5)
      {
        goto LABEL_10;
      }
    }

    v14 = (*(a5 + 24) + v9);
    if (v14[1])
    {
      v12 = 0;
      *(a5 + 16) = 1;
    }

    else
    {
      ++*(a5 + 8);
      v14[1] = a3;
      v14[2] = a3 + a4;
      v14[3] = a3;
      v14[4] = a3 + a4;
      v12 = 1;
    }

LABEL_10:
    v13 = v12 | !v11;
  }

  return v13 & 1;
}

BOOL _dict_find_value_cb(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = der_equal(*a5, *a5 + *(*a5 + 1) + 2, a1);
  if (v8)
  {
    *(a5 + 24) = 1;
    *(a5 + 8) = a3;
    *(a5 + 16) = a3 + a4;
  }

  return !v8;
}

uint64_t encode_list_free(void **a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    v2 = *a1;
    if (!*a1)
    {
      break;
    }

    v3 = *(v2 + 1);
    *a1 = *v2;
    if (v3)
    {
      memset_s(v3, *(v2 + 2), 0, *(v2 + 2));
      free(*(v2 + 1));
    }

    memset_s(v2, 0x18uLL, 0, 0x18uLL);
    free(v2);
  }

  return 0;
}

uint64_t encode_list_remove_key(void *a1, unsigned __int8 *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = a1;
  result = _encode_list_find_key(a1, a2);
  if (result)
  {
    v4 = result;
    for (i = *v2; i != result; i = *i)
    {
      v2 = i;
    }

    *v2 = *i;
    v6 = *(result + 8);
    if (v6)
    {
      memset_s(v6, *(v4 + 16), 0, *(v4 + 16));
      free(*(v4 + 8));
    }

    memset_s(v4, 0x18uLL, 0, 0x18uLL);
    free(v4);
    return 0;
  }

  return result;
}

void *_encode_list_find_key(void *a1, unsigned __int8 *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *a1;
  if (*a1)
  {
    v4 = a2 + 2;
    do
    {
      v6 = v2[1];
      if (ccder_blob_decode_sequence_tl() && der_equal(a2, &v4[a2[1]], v6))
      {
        break;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return v2;
}

uint64_t encode_list_get_data(void *a1, unsigned __int8 *a2, int a3, void *a4, void *a5)
{
  key = _encode_list_find_key(a1, a2);
  if (!key)
  {
    return 0;
  }

  v9 = 1;
  if (a4)
  {
    if (a5)
    {
      v10 = key[1] + key[2];
      v15[0] = key[1];
      v15[1] = v10;
      v9 = ccder_blob_decode_sequence_tl();
      if (v9)
      {
        if (der_utils_decode_implicit_raw_octet_string_copy(v15, 12, 0, 0))
        {
          v11 = v15[0];
          if (ccder_blob_decode_tag())
          {
            if (ccder_blob_decode_len())
            {
              v13 = 0;
              v12 = v15[0];
              if (a3)
              {
                v13 = (LODWORD(v15[0]) - v11);
                v12 = v11;
              }

              *a4 = v12;
              *a5 = v13;
            }
          }
        }
      }
    }
  }

  return v9;
}

uint64_t encode_list_get_number(void *a1, unsigned __int8 *a2, uint64_t *a3)
{
  v7 = 0;
  v8 = 0;
  data = encode_list_get_data(a1, a2, 1, &v7, &v8);
  v5 = data;
  if (a3 && data)
  {
    *a3 = der_get_number();
  }

  return v5;
}

uint64_t encode_list_get_BOOL(void *a1, unsigned __int8 *a2, BOOL *a3)
{
  v7 = 0;
  v8 = 0;
  data = encode_list_get_data(a1, a2, 1, &v7, &v8);
  v5 = data;
  if (a3 && data)
  {
    *a3 = der_get_BOOL();
  }

  return v5;
}

uint64_t _merge_dict_cb(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  if ((ccder_blob_decode_tl() & 1) == 0)
  {
    _merge_dict_cb_cold_1();
LABEL_7:
    _merge_dict_cb_cold_2();
    result = 0;
    goto LABEL_5;
  }

  v9 = 0;
  v10 = 0;
  v8[0] = 12;
  v8[1] = 0;
  __memcpy_chk();
  if (encode_list_remove_key(a5, v8) || encode_list_add_der())
  {
    goto LABEL_7;
  }

  result = 1;
LABEL_5:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ccder_sizeof_fv_data(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
  }

  return ccder_sizeof();
}

uint64_t ccder_sizeof_fv_key(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
  }

  v2 = ccder_sizeof();
  return ccder_sizeof() + v2;
}

uint64_t der_utils_decode_fv_data(__int128 *a1, int a2, uint64_t a3)
{
  v6 = *a3;
  v5 = *(a3 + 8);
  v9 = *a1;
  if (a2)
  {
    v12 = *a1;
    v10 = 0;
    v11 = 0;
    result = ccder_blob_decode_range();
    if (!result)
    {
      return result;
    }

    v6 = v10;
    v8 = (v11 - v10);
    v9 = v12;
    goto LABEL_4;
  }

  LODWORD(v12) = v5;
  result = der_utils_decode_implicit_raw_octet_string_copy_len(&v9, 4, v6, &v12);
  if (result)
  {
    v8 = v12;
LABEL_4:
    *a3 = v6;
    *(a3 + 8) = v8;
    *a1 = v9;
    return 1;
  }

  return result;
}

uint64_t der_utils_decode_implicit_raw_octet_string_copy_partial(__int128 *a1)
{
  v4 = *a1;
  v2 = ccder_blob_decode_range();
  if (v2)
  {
    *a1 = v4;
  }

  return v2;
}

uint64_t se_derivation_request_serialization_len()
{
  ccder_sizeof();
  ccder_sizeof_implicit_uint64();
  ccder_sizeof_implicit_uint64();
  ccder_sizeof_implicit_uint64();

  return ccder_sizeof();
}

uint64_t OUTLINED_FUNCTION_3_5(void *a1)
{
  result = 0;
  a1[1] = v3;
  a1[2] = v2;
  *a1 = *v1;
  *v1 = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_4()
{
  v3 = v1 + *(v0 + 1) - v0;

  return ccder_blob_encode_body();
}

uint64_t OUTLINED_FUNCTION_12_3()
{

  return memset_s(v1, v0, 0, v0);
}

uint64_t OUTLINED_FUNCTION_13_2()
{

  return ccder_blob_encode_tl();
}

uint64_t OUTLINED_FUNCTION_19_2(uint64_t a1, ...)
{
  va_start(va2, a1);
  va_start(va1, a1);
  va_start(va, a1);
  va_arg(va1, void);
  va_copy(va2, va1);
  va_arg(va2, void);
  v3 = 0;
  v5 = 0;

  return encode_list_dict(va2, va, va1);
}

uint64_t OUTLINED_FUNCTION_20_2(void *a1)
{

  return memset_s(a1, 0x10uLL, 0, 0x10uLL);
}

uint64_t OUTLINED_FUNCTION_25_1()
{

  return ccder_sizeof();
}

void *OUTLINED_FUNCTION_26_0()
{

  return calloc(0x18uLL, 1uLL);
}

void *OUTLINED_FUNCTION_27(size_t a1)
{

  return calloc(a1, 1uLL);
}

uint64_t OUTLINED_FUNCTION_33_1()
{

  return ccder_blob_decode_range();
}

uint64_t OUTLINED_FUNCTION_34_1()
{

  return der_dict_iterate();
}

uint64_t platform_get_measurement(uint64_t a1, int a2, void *a3, size_t *a4)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 36, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  if (!lib_platform_callbacks)
  {
    return 4294967284;
  }

  if (a1 >= 7)
  {
    abort();
  }

  v8 = &pm_id_table + 72 * a1;
  if ((v8[4] & 1) == 0)
  {
    result = (lib_platform_callbacks)(a1, v8 + 5, v8 + 64);
    if (result)
    {
      return result;
    }

    v8[4] = 1;
  }

  if (*a4 < *(v8 + 8))
  {
    return 4294967285;
  }

  memcpy(a3, v8 + 5, *a4);
  v10 = *(v8 + 8);
  *a4 = v10;
  if (a2)
  {
    byte_swap_val(a3, v10);
  }

  return 0;
}

uint64_t platform_rng()
{
  REQUIRE_func(&lib_platform_callbacks != 0, 62, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(off_283745838[0] != 0, 63, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v0 = off_283745838[0];

  return v0();
}

uint64_t platform_read_random(uint64_t a1, unsigned int a2)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 70, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(off_283745840 != 0, 71, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v4 = off_283745840;

  return v4(a1, a2);
}

uint64_t platform_pka_get_pub_key(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 78, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_283745848 != 0, 79, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v16 = unk_283745848;

  return v16(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t platform_pka_ecdh(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 86, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_283745850 != 0, 87, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v18 = unk_283745850;

  return v18(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t platform_pka_sign(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 94, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_283745858 != 0, 95, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v18 = unk_283745858;

  return v18(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t platform_pka_sika_attest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 106, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_283745860 != 0, 107, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v17 = unk_283745860;

  return v17(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t platform_pka_shared_encrypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 115, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_283745868 != 0, 116, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v18 = unk_283745868;

  return v18(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t platform_ref_key_hw_crypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 123, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_283745870 != 0, 124, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v10 = unk_283745870;

  return v10(a1, a2, a3, a4, a5);
}

uint64_t platform_ref_key_hw_crypt_clear_cache()
{
  REQUIRE_func(&lib_platform_callbacks != 0, 131, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_283745878 != 0, 132, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v0 = unk_283745878;

  return v0();
}

uint64_t platform_get_device_id(uint64_t a1, uint64_t a2)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 139, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_283745880 != 0, 140, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v4 = unk_283745880;

  return v4(a1, a2);
}

uint64_t platform_get_aon_security(uint64_t a1)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 147, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_283745888 != 0, 148, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v2 = unk_283745888;

  return v2(a1);
}

uint64_t platform_get_att_sep_chip_rev(uint64_t a1)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 155, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_283745890 != 0, 156, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v2 = unk_283745890;

  return v2(a1);
}

uint64_t platform_get_chip_id(uint64_t a1)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 163, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_283745898 != 0, 164, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v2 = unk_283745898;

  return v2(a1);
}

uint64_t platform_get_ecid(uint64_t a1)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 171, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_2837458A0 != 0, 172, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v2 = unk_2837458A0;

  return v2(a1);
}

uint64_t platform_get_board_id(uint64_t a1)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 179, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_2837458A8 != 0, 180, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v2 = unk_2837458A8;

  return v2(a1);
}

uint64_t platform_get_fuse_bits(uint64_t a1)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 187, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_2837458B0 != 0, 188, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v2 = unk_2837458B0;

  return v2(a1);
}

uint64_t platform_get_att_board_and_chip_id(uint64_t a1)
{
  REQUIRE_func(&lib_platform_callbacks != 0, 195, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  REQUIRE_func(unk_2837458B8 != 0, 196, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  v2 = unk_2837458B8;

  return v2(a1);
}

char *aks_copy_packed_data(_DWORD *a1, const void *a2, int a3)
{
  v3 = (a1 + 1);
  if (a2)
  {
    *a1 = a3;
    memcpy(a1 + 1, a2, a3);
    v3 += a3;
    v5 = -a3;
    v6 = -a3 & 3;
    if ((v5 & 3) != 0)
    {
      __s = 0;
      memset_s(&__s, 4uLL, 0, 4uLL);
      memcpy(v3, &__s, v6);
      v3 += v6;
    }
  }

  else
  {
    *a1 = 0;
  }

  return v3;
}

char *aks_pack_data(char **a1, unsigned int *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21 = &a9;
  v12 = 4;
  if (a3)
  {
    v13 = a3;
    do
    {
      v14 = v21;
      v21 += 2;
      v12 += *(v14 + 2) + (-*(v14 + 2) & 3) + 4;
      --v13;
    }

    while (v13);
  }

  result = calloc(1uLL, v12);
  v16 = result;
  v22 = &a9;
  v17 = 0;
  if (a3)
  {
    v18 = 4;
    do
    {
      v19 = v22;
      v20 = *v22;
      v22 += 2;
      result = aks_copy_packed_data(&v16[v18], v20, *(v19 + 2));
      v18 = result - v16;
      ++v17;
    }

    while (a3 != v17);
  }

  *v16 = v17;
  *a1 = v16;
  *a2 = v12;
  return result;
}

BOOL rfc3394_wrapped_size_legacy(unsigned int a1, _DWORD *a2)
{
  v2 = a1 + 15;
  v3 = v2 << 31 >> 31;
  v4 = v3 == v2;
  v5 = v3 != v2;
  if (v4)
  {
    *a2 = v2 & 0xFFFFFFF8;
  }

  return !v5;
}

BOOL rfc3394_wrapped_size(unint64_t a1, unint64_t *a2)
{
  v2 = (((a1 >= 0xFFFFFFFFFFFFFFF1) << 63) >> 63) ^ (a1 >= 0xFFFFFFFFFFFFFFF1);
  if (!v2)
  {
    *a2 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
  }

  return v2 == 0;
}

void aks_fv_new_vek()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  *(v0 - 96) = *MEMORY[0x277D85DE8];
  bzero(v70, 0x1000uLL);
  v68[0] = v70;
  v68[1] = &v71;
  v68[2] = 4096;
  if (v6 && v4)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v15 = aks_client_connection;
      OUTLINED_FUNCTION_8_2(aks_client_connection, v8, v9, v10, v11, v12, v13, v14, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v67, v68[0]);
      if (ccder_blob_encode_body_tl())
      {
        if (der_utils_encode_fv_data(v68))
        {
          if (der_utils_encode_fv_data(v68))
          {
            if (der_utils_encode_fv_params(v68))
            {
              OUTLINED_FUNCTION_2_2();
              if (ccder_blob_encode_tl())
              {
                OUTLINED_FUNCTION_11_0();
                if (!OUTLINED_FUNCTION_1_2(v15, 0x4Au, v69, 2u, v16, v17, v18, v19, v70, v20))
                {
                  OUTLINED_FUNCTION_2_2();
                  if (ccder_blob_decode_range())
                  {
                    OUTLINED_FUNCTION_15();
                    v24 = der_utils_decode_fv_data(v21, v22, v23);
                    if (v24)
                    {
                      if (v2)
                      {
                        v32 = OUTLINED_FUNCTION_9_2(v24, v25, v26, v27, v28, v29, v30, v31, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v70);
                        der_utils_decode_fv_key(v32, v33, v34);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v37 = *MEMORY[0x277D85E08];
      OUTLINED_FUNCTION_0_1();
      fprintf(v38, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v39, v44, v46, v48, v50, v52, v54, ":", 180, &unk_223E5FC53, &unk_223E5FC53);
    }
  }

  OUTLINED_FUNCTION_3_2(v70);
  v35 = *(v0 - 96);
  v36 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_4_0();
}

unint64_t _aks_save_file(char *a1, const void *a2, size_t a3)
{
  v3 = a1;
  if (a1)
  {
    v6 = open_dprotected_np(a1, 1793, 4, 0, 384);
    if (v6 == -1)
    {
      v10 = __error();
      v11 = strerror(*v10);
      syslog(3, "could not create file: %s (%s)\n", v3, v11);
      return 0;
    }

    else
    {
      v7 = v6;
      v8 = write(v6, a2, a3);
      v3 = v8 != -1;
      if (v8 == -1)
      {
        v12 = __error();
        v13 = strerror(*v12);
        syslog(3, "failed to write restore bag to disk %s\n", v13);
      }

      close(v7);
    }
  }

  return v3;
}

BOOL _aks_load_file(_BOOL8 a1, void *a2, off_t *a3)
{
  bzero(&v14, 0x90uLL);
  if (a1)
  {
    if (!stat(a1, &v14))
    {
      st_size = v14.st_size;
      v7 = open(a1, 0);
      if (v7 == -1)
      {
        v12 = __error();
        v13 = strerror(*v12);
        syslog(3, "could not open file: %s (%s)\n", a1, v13);
      }

      else
      {
        v8 = v7;
        v9 = calloc(st_size, 1uLL);
        a1 = v9 != 0;
        if (!v9)
        {
LABEL_7:
          close(v8);
          return a1;
        }

        v10 = v9;
        if (read(v8, v9, st_size) == st_size)
        {
          *a2 = v10;
          *a3 = st_size;
          goto LABEL_7;
        }

        close(v8);
        free(v10);
      }
    }

    return 0;
  }

  return a1;
}

uint64_t _get_path_class(const char *a1)
{
  v1 = open_dprotected_np(a1, 0, 0, 1);
  if (v1 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = v1;
  v3 = fcntl(v1, 63);
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
  }

  return v3;
}

uint64_t __aks_dump_path_block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = _get_path_class(*(a2 + 48));
  v5 = *(a1 + 32);
  if (v5 == -1 || result == v5)
  {
    return printf("file: %s %i\n", *(a2 + 48), result);
  }

  return result;
}

uint64_t aks_fs_status(const char *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  bzero(v5, 0x400uLL);
  bzero(__str, 0x400uLL);
  if (realpath_DARWIN_EXTSN(a1, v5))
  {
    snprintf(__str, 0x400uLL, "%s/mobile", v5);
    aks_fs_status_with_map(v5, &sharedPathMap, 36);
    if ((aks_fs_supports_enhanced_apfs() & 1) == 0)
    {
      aks_fs_status_with_map(__str, &userPathMap, 72);
    }
  }

  v2 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t aks_user_fs_status(const char *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  bzero(v4, 0x400uLL);
  if (realpath_DARWIN_EXTSN(a1, v4))
  {
    aks_fs_status_with_map(v4, &userPathMap, 72);
  }

  v2 = *MEMORY[0x277D85DE8];
  return 0;
}

void aks_fv_new_kek()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20]();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_17_0(*MEMORY[0x277D85DE8]);
  bzero(v69, 0x1000uLL);
  v65 = v69;
  v66 = &v70;
  v67 = v0;
  if (v5 && v3)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v16 = aks_client_connection;
      OUTLINED_FUNCTION_8_2(aks_client_connection, v9, v10, v11, v12, v13, v14, v15, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v64, v65);
      if (ccder_blob_encode_body_tl())
      {
        if (der_utils_encode_fv_data(&v65))
        {
          if (der_utils_encode_fv_params(&v65))
          {
            OUTLINED_FUNCTION_2_2();
            if (ccder_blob_encode_tl())
            {
              v68[0] = v7;
              v68[1] = v66;
              v68[2] = &v70 - v66;
              if (!OUTLINED_FUNCTION_1_2(v16, 0x4Cu, v68, 3u, v17, v18, v19, v20, v69, &v67))
              {
                OUTLINED_FUNCTION_2_2();
                v21 = ccder_blob_decode_range();
                if (v21)
                {
                  v29 = OUTLINED_FUNCTION_9_2(v21, v22, v23, v24, v25, v26, v27, v28, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v69);
                  der_utils_decode_fv_data(v29, v30, v31);
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v34 = *MEMORY[0x277D85E08];
      OUTLINED_FUNCTION_0_1();
      fprintf(v35, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v36, v41, v43, v45, v47, v49, v51, ":", 509, &unk_223E5FC53, &unk_223E5FC53);
    }
  }

  OUTLINED_FUNCTION_3_2(v69);
  v32 = *(v1 - 88);
  v33 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_4_0();
}

void aks_fv_new_sibling_vek()
{
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_17_0(*MEMORY[0x277D85DE8]);
  bzero(v31, 0x1000uLL);
  v27 = v31;
  v28 = &v32;
  v29 = v0;
  if (v6 && v4)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v8 = aks_client_connection;
      if (ccder_blob_encode_body_tl())
      {
        if (der_utils_encode_fv_data(&v27))
        {
          if (der_utils_encode_fv_params(&v27))
          {
            OUTLINED_FUNCTION_2_2();
            if (ccder_blob_encode_tl())
            {
              v30[0] = v28;
              v30[1] = &v32 - v28;
              if (!OUTLINED_FUNCTION_1_2(v8, 0x63u, v30, 2u, v9, v10, v11, v12, v31, &v29))
              {
                *&v26 = v31;
                *(&v26 + 1) = &v31[v29];
                OUTLINED_FUNCTION_2_2();
                if (ccder_blob_decode_range())
                {
                  OUTLINED_FUNCTION_15();
                  if (der_utils_decode_fv_data(v13, v14, v15))
                  {
                    if (v2)
                    {
                      der_utils_decode_fv_key(&v26, 0, v2);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v17 = *MEMORY[0x277D85E08];
      OUTLINED_FUNCTION_0_1();
      fprintf(v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v19, v20, v21, v22, v23, v24, v25, ":", 544, &unk_223E5FC53, &unk_223E5FC53);
    }
  }

  OUTLINED_FUNCTION_3_2(v31);
  v16 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
}

void aks_fv_rewrap_kek()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  *(v0 - 96) = *MEMORY[0x277D85DE8];
  bzero(v70, 0x1000uLL);
  v68[0] = v70;
  v68[1] = &v71;
  v68[2] = 4096;
  if (v8 && v6 && v4 && v2)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v10 = aks_client_connection;
      v11 = der_utils_encode_fv_data(v68);
      if (v11)
      {
        OUTLINED_FUNCTION_8_2(v11, v12, v13, v14, v15, v16, v17, v18, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v67, v68[0]);
        if (ccder_blob_encode_body_tl())
        {
          if (der_utils_encode_fv_data(v68))
          {
            if (der_utils_encode_fv_data(v68))
            {
              if (der_utils_encode_fv_params(v68))
              {
                OUTLINED_FUNCTION_2_2();
                if (ccder_blob_encode_tl())
                {
                  OUTLINED_FUNCTION_11_0();
                  if (!OUTLINED_FUNCTION_1_2(v10, 0x4Du, v69, 2u, v19, v20, v21, v22, v70, v23))
                  {
                    OUTLINED_FUNCTION_2_2();
                    v24 = ccder_blob_decode_range();
                    if (v24)
                    {
                      v32 = OUTLINED_FUNCTION_9_2(v24, v25, v26, v27, v28, v29, v30, v31, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v70);
                      der_utils_decode_fv_data(v32, v33, v34);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v37 = *MEMORY[0x277D85E08];
      OUTLINED_FUNCTION_0_1();
      fprintf(v38, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v39, v44, v46, v48, v50, v52, v54, ":", 583, &unk_223E5FC53, &unk_223E5FC53);
    }
  }

  OUTLINED_FUNCTION_3_2(v70);
  v35 = *(v0 - 96);
  v36 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_4_0();
}

void aks_fv_set_protection()
{
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_16_0();
  v2 = v1;
  v4 = v3;
  v29[0] = *MEMORY[0x277D85DE8];
  bzero(v28, 0x1000uLL);
  v24 = v28;
  v25 = v29;
  v26 = 4096;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v6 = aks_client_connection;
    if (!der_utils_encode_fv_data(&v24) || !der_utils_encode_fv_data(&v24) || !der_utils_encode_fv_data(&v24) || !der_utils_encode_fv_params(&v24) || (OUTLINED_FUNCTION_2_2(), !ccder_blob_encode_tl()) || (v27[0] = v4, v27[1] = v2, v27[2] = v25, v27[3] = v29 - v25, !OUTLINED_FUNCTION_1_2(v6, 0x54u, v27, 4u, v7, v8, v9, v10, v28, &v26)) && v26 && ((OUTLINED_FUNCTION_2_2(), !ccder_blob_decode_range()) || v0 && (OUTLINED_FUNCTION_15(), (der_utils_decode_fv_data(v11, v12, v13) & 1) == 0)))
    {
      OUTLINED_FUNCTION_10_1();
    }
  }

  else
  {
    v15 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v16, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v17, v18, v19, v20, v21, v22, v23, ":", 617, &unk_223E5FC53, &unk_223E5FC53);
    OUTLINED_FUNCTION_10_1();
  }

  OUTLINED_FUNCTION_3_2(v28);
  v14 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
}

void aks_fv_unwrap_vek_with_acm()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_16_0();
  v4 = v3;
  *(v2 - 96) = *MEMORY[0x277D85DE8];
  bzero(v29, 0x1000uLL);
  v25 = v29;
  v26 = v30;
  v27 = 4096;
  if (v1)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v6 = aks_client_connection;
      if (!der_utils_encode_fv_data(&v25) || !der_utils_encode_fv_data(&v25) || !der_utils_encode_fv_data(&v25) || !der_utils_encode_fv_data(&v25) || !der_utils_encode_fv_params(&v25) || (OUTLINED_FUNCTION_2_2(), !ccder_blob_encode_tl()) || (v28[0] = v26, v28[1] = &v30[-v26], v28[2] = v4, !OUTLINED_FUNCTION_1_2(v6, 0x4Bu, v28, 3u, v7, v8, v9, v10, v29, &v27)) && ((OUTLINED_FUNCTION_2_2(), !ccder_blob_decode_range()) || v0 && (OUTLINED_FUNCTION_15(), (der_utils_decode_fv_key(v11, v12, v13) & 1) == 0)))
      {
        OUTLINED_FUNCTION_10_1();
      }
    }

    else
    {
      v16 = *MEMORY[0x277D85E08];
      OUTLINED_FUNCTION_0_1();
      fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v19, v20, v21, v22, v23, v24, ":", 654, &unk_223E5FC53, &unk_223E5FC53);
      OUTLINED_FUNCTION_10_1();
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_1();
  }

  OUTLINED_FUNCTION_3_2(v29);
  v14 = *(v2 - 96);
  v15 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_4_0();
}

uint64_t __aks_gather_stats_block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = _get_path_class(*(a2 + 48));
  if ((result - 7) >= 0xFFFFFFFA)
  {
    v5 = *(a2 + 96);
    v6 = *(v5 + 96);
    v7 = *(a1 + 32);
    ++*(v7 + 296 * result);
    if (*(v5 + 6) >= 2u)
    {
      ++*(v7 + 296 * result + 8);
    }

    if ((*(v5 + 116) & 0x20) != 0)
    {
      ++*(v7 + 296 * result + 4);
    }

    v8 = v7 + 296 * result;
    v10 = *(v8 + 32);
    v9 = (v8 + 32);
    *(v9 - 2) += v6;
    if (v6 > v10)
    {
      *v9 = v6;
    }

    v11 = v7 + 296 * result;
    v14 = *(v11 + 24);
    v12 = (v11 + 24);
    v13 = v14;
    if (v14)
    {
      v15 = v6 < v13;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      *v12 = v6;
    }

    if (v6)
    {
      v16 = v7 + 296 * result + 4 * (63 - __clz(v6));
    }

    else
    {
      v16 = v7 + 296 * result;
    }

    ++*(v16 + 40);
  }

  return result;
}

uint64_t aks_kext_get_options()
{
  input[3] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_12_1();
  if (v2)
  {
    v3 = v2;
    input[0] = 0;
    input[1] = v1;
    input[2] = 0;
    output = 0;
    outputCnt = 1;
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v0 = IOConnectCallMethod(aks_client_connection, 0x56u, input, 3u, 0, 0, &output, &outputCnt, 0, 0);
      if (!v0)
      {
        *v3 = output;
      }
    }

    else
    {
      v7 = *MEMORY[0x277D85E08];
      OUTLINED_FUNCTION_0_1();
      fprintf(v8, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v9, v10, v11, v12, v13, v14, v15, ":", 842, &unk_223E5FC53, &unk_223E5FC53);
    }
  }

  else
  {
    v0 = (v0 + 6);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v0;
}

void aks_stash_escrow()
{
  OUTLINED_FUNCTION_5_1();
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v0;
  v33 = *MEMORY[0x277D85DE8];
  bzero(__src, 0x8000uLL);
  __count = 0x8000;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v31[0] = v15;
    v31[1] = v14;
    v31[2] = v12;
    v31[3] = v10;
    if ((!v14 || v4 && v2) && !OUTLINED_FUNCTION_7(aks_client_connection, 0x36u, v31, 4u, v8, v6, v17, v18, __src, &__count))
    {
      if (v14)
      {
        v19 = calloc(__count, 1uLL);
        *v4 = v19;
        if (v19)
        {
          memcpy(v19, __src, __count);
          *v2 = __count;
        }
      }
    }
  }

  else
  {
    v21 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v22, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v23, v24, v25, v26, v27, v28, v29, ":", 891, &unk_223E5FC53, &unk_223E5FC53);
  }

  memset_s(__src, 0x8000uLL, 0, 0x8000uLL);
  v20 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
}

void akstest_new_key()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_6_1();
  v16[2] = *MEMORY[0x277D85DE8];
  v16[0] = v5;
  v16[1] = v4;
  v15 = 0;
  outputCnt = 1;
  bzero(outputStruct, 0x400uLL);
  v12 = 1024;
  if (!IOConnectCallMethod(v3, 0xFu, v16, 2u, v2, 0x10uLL, &v15, &outputCnt, outputStruct, &v12) && outputCnt == 1)
  {
    *v1 = v15;
    aks_unpack_data(outputStruct, v12, 3u, v6, v7, v8, v9, v10, v0);
  }

  v11 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
}

void akstest_new_ekwk(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, _DWORD *a22, uint64_t a23, uint64_t a24, _DWORD *a25)
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_6_1();
  v44[2] = *MEMORY[0x277D85DE8];
  v44[0] = v30;
  v44[1] = v29;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  outputCnt = 3;
  bzero(outputStruct, 0x400uLL);
  v38 = 1024;
  if (!IOConnectCallMethod(v28, 0x13u, v44, 2u, v27, 0x10uLL, &v41, &outputCnt, outputStruct, &v38) && outputCnt == 3)
  {
    v36 = v42;
    *v26 = v41;
    *a22 = v36;
    *a25 = v43;
    aks_unpack_data(outputStruct, v38, 5u, v31, v32, v33, v34, v35, v25);
  }

  v37 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
}

uint64_t akstest_rewrap_ek(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, uint64_t a11, unsigned int a12, void *outputStruct, size_t *a14, _DWORD *a15)
{
  input[4] = *MEMORY[0x277D85DE8];
  input[0] = a3;
  input[1] = a6;
  input[2] = a9;
  input[3] = a12;
  output = 0;
  outputCnt = 1;
  memset(inputStructCnt, 0, sizeof(inputStructCnt));
  aks_pack_data(&inputStructCnt[1], inputStructCnt, 4, a4, a5, a6, a7, a8, a2);
  v16 = IOConnectCallMethod(a1, 0x15u, input, 4u, *&inputStructCnt[1], inputStructCnt[0], &output, &outputCnt, outputStruct, a14);
  if (v16)
  {
    a1 = v16;
  }

  else if (outputCnt == 1)
  {
    a1 = 0;
    *a15 = output;
  }

  else
  {
    OUTLINED_FUNCTION_12_1();
  }

  free(*&inputStructCnt[1]);
  v17 = *MEMORY[0x277D85DE8];
  return a1;
}

void akstest_unwrap_key()
{
  OUTLINED_FUNCTION_5_1();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v23[2] = *MEMORY[0x277D85DE8];
  v23[0] = v4;
  v23[1] = v5;
  v21 = 0;
  v20 = 0;
  bzero(v22, 0x400uLL);
  v19 = 1024;
  aks_pack_data(&v21, &v20, 2, v6, v7, v8, v9, v10, v0);
  if (!OUTLINED_FUNCTION_7(v1, 0x10u, v23, 2u, v21, v20, v11, v12, v22, &v19))
  {
    aks_unpack_data(v22, v19, 2u, v13, v14, v15, v16, v17, v3);
  }

  free(v21);
  v18 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
}

void akstest_unwrap_ek(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned int a21, uint64_t a22)
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_14();
  v43[3] = *MEMORY[0x277D85DE8];
  v43[0] = v24;
  v43[1] = v25;
  v43[2] = a21;
  v41 = 0;
  v40 = 0;
  bzero(v42, 0x400uLL);
  v39 = 1024;
  aks_pack_data(&v41, &v40, 3, v26, v27, v28, v29, v30, v22);
  if (!OUTLINED_FUNCTION_7(v23, 0x17u, v43, 3u, v41, v40, v31, v32, v42, &v39))
  {
    aks_unpack_data(v42, v39, 2u, v33, v34, v35, v36, v37, a22);
  }

  free(v41);
  v38 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
}

uint64_t aks_get_internal_info_for_key()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v27[1] = *MEMORY[0x277D85DE8];
  v27[0] = v0;
  bzero(__src, 0x8000uLL);
  __n = 0x8000;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (v6)
    {
      v10 = 18;
    }

    else
    {
      v10 = 0;
    }

    v11 = OUTLINED_FUNCTION_7(aks_client_connection, 0x5Du, v27, 1u, v6, v10, v8, v9, __src, &__n);
    v12 = __n;
    if (v11)
    {
      v6 = v11;
    }

    else
    {
      OUTLINED_FUNCTION_12_1();
      if (v12 - 32769 < 0xFFFFFFFFFFFF8000)
      {
        v6 = (v6 + 6);
      }

      else
      {
        v13 = calloc(v12, 1uLL);
        *v4 = v13;
        v12 = __n;
        if (v13)
        {
          *v2 = __n;
          memcpy(v13, __src, v12);
          v6 = 0;
          v12 = __n;
        }

        else
        {
          v6 = (v6 + 1);
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_1();
    v16 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v19, v20, v21, v22, v23, v24, ":", 1246, &unk_223E5FC53, &unk_223E5FC53);
    v12 = 0x8000;
  }

  memset_s(__src, v12, 0, v12);
  v14 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t aks_delete_xart_leak_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 269, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t _iterate_path_cold_1(FTS *a1, uint64_t a2, uint64_t a3)
{
  v6 = fts_read(a1);
  if (v6)
  {
    v7 = v6;
    do
    {
      fts_info = v7->fts_info;
      if (fts_info == 1)
      {
        if (a2 && ((*(a2 + 16))(a2, v7) & 1) == 0)
        {
          fts_set(a1, v7, 4);
        }
      }

      else if (fts_info != 6 && a3 != 0 && fts_info == 8)
      {
        (*(a3 + 16))(a3, v7);
      }

      v7 = fts_read(a1);
    }

    while (v7);
  }

  return fts_close(a1);
}

uint64_t aks_kext_set_options_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 821, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_internal_state_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 858, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_run_internal_test_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 872, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t encode_backup_bag(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 + a3;
  v4 = a1[10];
  if (!ccder_blob_encode_implicit_uint64())
  {
    return 4294967273;
  }

  if (!ccder_blob_encode_body_tl())
  {
    return 4294967273;
  }

  if (!ccder_blob_encode_body_tl())
  {
    return 4294967273;
  }

  if (!ccder_blob_encode_body_tl())
  {
    return 4294967273;
  }

  v5 = *a1;
  if (!ccder_blob_encode_implicit_uint64())
  {
    return 4294967273;
  }

  v6 = ccder_blob_encode_tl();
  result = 4294967273;
  if (v6)
  {
    if (a2 == v9)
    {
      return 0;
    }

    else
    {
      return 4294967273;
    }
  }

  return result;
}

uint64_t decode_backup_bag(uint64_t a1, uint64_t a2, void *a3)
{
  *&v6 = a1;
  *(&v6 + 1) = a1 + a2;
  if (!ccder_blob_decode_range() || !der_utils_decode_implicit_uint64(&v6, 0x8000000000000000, a3) || !der_utils_decode_implicit_raw_octet_string_copy(&v6, 0x8000000000000001, a3 + 1, 16) || !der_utils_decode_implicit_raw_octet_string_copy(&v6, 0x8000000000000002, a3 + 3, 40) || !der_utils_decode_implicit_raw_octet_string_copy(&v6, 0x8000000000000003, a3 + 8, 16))
  {
    return 4294967277;
  }

  v4 = der_utils_decode_implicit_uint64(&v6, 0x8000000000000004, a3 + 10);
  result = 4294967277;
  if (v4)
  {
    if (v6 == *(&v6 + 1))
    {
      return 0;
    }

    else
    {
      return 4294967277;
    }
  }

  return result;
}

uint64_t wrap_backup_bag(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  *__s = 0u;
  v23 = 0u;
  HIDWORD(v21) = 40;
  *a4 = 0;
  uuid_copy((a4 + 8), (a1 + 32));
  *(a4 + 80) = 1;
  platform_read_random(a4 + 64, 0x10u);
  v8 = ccsha256_di();
  LODWORD(v9) = firebloom_ccpbkdf2_hmac(v8, a3, a2, 16, a4 + 64, *(a4 + 80), 32, __s);
  if (v9)
  {
    v17 = 4294967286;
  }

  else
  {
    v9 = rfc3394_wrap_legacy(__s, 0x20u, 0xA6A6A6A6A6A6A6A6, 0, a1, 0x20u, (a4 + 24), &v21 + 1);
    if (v9)
    {
      v17 = v9;
    }

    else if (HIDWORD(v21) == 40)
    {
      v17 = 0;
    }

    else
    {
      v17 = 4294967286;
    }
  }

  OUTLINED_FUNCTION_0_2(v9, v10, v11, v12, v13, v14, v15, v16, v20, v21, __s[0]);
  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t unwrap_backup_bag(const unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  v21 = *MEMORY[0x277D85DE8];
  *__s = 0u;
  v20 = 0u;
  HIDWORD(v18) = 32;
  if (*a1)
  {
    v14 = 4294967284;
  }

  else
  {
    v11 = a1;
    v12 = ccsha256_di();
    LODWORD(a1) = firebloom_ccpbkdf2_hmac(v12, a3, a2, 16, v11 + 64, *(v11 + 10), 32, __s);
    if (a1)
    {
      goto LABEL_9;
    }

    a1 = rfc3394_unwrap_legacy(__s, 0x20u, 0xA6A6A6A6A6A6A6A6, 0, v11 + 3, 0x28u, a4, &v18 + 1);
    if (a1)
    {
      v14 = a1;
      goto LABEL_8;
    }

    if (HIDWORD(v18) != 32)
    {
LABEL_9:
      v14 = 4294967286;
    }

    else
    {
      v13 = cccurve25519_make_pub() == 0;
      REQUIRE_func(v13, 118, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/backup_serialize.c");
      LODWORD(a1) = uuid_compare(v11 + 8, (a4 + 32));
      if (a1)
      {
        v14 = 4294967272;
      }

      else
      {
        v14 = 0;
      }
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_0_2(a1, a2, a3, a4, a5, a6, a7, a8, v17, v18, __s[0]);
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

void aks_stash_create_for_bag_and_kek()
{
  OUTLINED_FUNCTION_5_1();
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  v30 = *MEMORY[0x277D85DE8];
  bzero(v29, 0x1000uLL);
  v26 = v29;
  v27 = &v30;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v11 = aks_client_connection;
    if (der_utils_encode_fv_data(&v26))
    {
      OUTLINED_FUNCTION_2_2();
      if (ccder_blob_encode_tl())
      {
        v28[0] = v9;
        v28[1] = v8;
        v28[2] = v4;
        v28[3] = v2;
        v28[4] = v6;
        v28[5] = v27;
        v28[6] = &v30 - v27;
        OUTLINED_FUNCTION_1_2(v11, 0x21u, v28, 7u, v12, v13, v14, v15, 0, 0);
      }
    }
  }

  else
  {
    v17 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v19, v20, v21, v22, v23, v24, v25, ":", 53, &unk_223E5FC53, &unk_223E5FC53);
  }

  v16 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
}

uint64_t _aks_stash_load(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  if (get_aks_client_connection())
  {
    OUTLINED_FUNCTION_15_0();
    result = IOConnectCallMethod(v4, v5, v6, v7, v8, v9, v10, v11, 0, 0);
    if (!result)
    {
      result = 0;
      if (a3)
      {
        *a3 = 0;
      }
    }
  }

  else
  {
    v14 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v15, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v16, v17, v18, v19, v20, v21, v22, ":", 80, &unk_223E5FC53, &unk_223E5FC53);
    result = OUTLINED_FUNCTION_14_0();
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_prederived_free(void **a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *a1;
  OUTLINED_FUNCTION_44();
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  free(a1[1]);
  free(a1);
  return 0;
}

uint64_t aks_prederived_create(int a1, uint64_t a2, unint64_t a3, int a4, void *a5)
{
  v14 = 0;
  if (!a2 && a3)
  {
    return 0xFFFFFFFFLL;
  }

  if (_aks_prederived_create_ctx(a4, &v14) || (v9 = calloc(0x20uLL, 1uLL)) == 0)
  {
    v12 = 0xFFFFFFFFLL;
  }

  else
  {
    v10 = v9;
    v11 = _aks_prederive_passcode(v14);
    v12 = 0xFFFFFFFFLL;
    if (a3 <= 0x7FFFFFFE && !v11 && !_set_prederived_configuration(a1, a2, a3, v10, v14))
    {
      v12 = 0;
      if (a5)
      {
        *a5 = v14;
        v14 = 0;
      }
    }

    OUTLINED_FUNCTION_35_0(v10);
    free(v10);
  }

  if (v14)
  {
    aks_prederived_free(v14);
  }

  return v12;
}

uint64_t _aks_prederived_create_ctx(int a1, void *a2)
{
  if ((a1 - 1) > 2 || a2 == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = calloc(0x20uLL, 1uLL);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  *(v6 + 2) = 20;
  v8 = calloc(0x14uLL, 1uLL);
  *(v7 + 1) = v8;
  if (!v8)
  {
LABEL_19:
    free(v7);
    return 0xFFFFFFFFLL;
  }

  *v7 = 1634431856;
  v7[6] = a1;
  v9 = *MEMORY[0x277D85C28];
  v10 = *(v7 + 2);
  result = CCRandomCopyBytes();
  if (result)
  {
    v12 = *(v7 + 1);
    if (v12)
    {
      free(v12);
    }

    goto LABEL_19;
  }

  if (a1 == 3)
  {
    v11 = 2000;
  }

  else
  {
    v11 = 10000000;
  }

  if (a1 == 2)
  {
    v11 = 1000;
  }

  v7[1] = v11;
  *a2 = v7;
  return result;
}

uint64_t _aks_prederive_passcode(unsigned int *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *a1;
  OUTLINED_FUNCTION_44();
  if (!v6 || !v3 && v4)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (v5 && a1[6] - 4 >= 0xFFFFFFFD)
  {
    ccsha256_di();
    v9 = *(a1 + 1);
    v8 = *(a1 + 2);
    v10 = a1[1];
    if (ccpbkdf2_hmac())
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _set_prederived_configuration(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v42[4] = *MEMORY[0x277D85DE8];
  v42[0] = 0;
  OUTLINED_FUNCTION_33_0();
  v40 = 0;
  __n = 0;
  if ((v10 || !a3) && a4 && a5)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v12 = aks_client_connection;
      v13 = *(a5 + 8);
      v14 = *(a5 + 16);
      if (!encode_list_add_data() && !encode_list_add_data() && !encode_list_add_number(&v40, der_key_config_prederived_iterations, *(a5 + 4)) && !encode_list_add_number(&v40, der_key_config_prederived_type, *(a5 + 24)) && (a3 < 1 || !encode_list_add_data()) && !encode_list_is_empty(&v40) && !encode_list_dict(&v40, v42, &__n))
      {
        OUTLINED_FUNCTION_39_0(a1, v25, v27, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, __n);
        v5 = OUTLINED_FUNCTION_1_2(v12, 0x1Eu, v15, 3u, v16, v17, v18, v19, v26, v28);
      }
    }

    else
    {
      v22 = *MEMORY[0x277D85E08];
      OUTLINED_FUNCTION_0_1();
      fprintf(v23, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v24, v29, v30, v31, v32, v33, v34, ":", 221, &unk_223E5FC53, &unk_223E5FC53);
      v5 = (v5 - 6);
    }
  }

  encode_list_free(&v40);
  if (v42[0])
  {
    OUTLINED_FUNCTION_37(v42[0], __n);
    free(v42[0]);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v5;
}

void aks_prederived_is_enabled()
{
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20]();
  v38 = *MEMORY[0x277D85DE8];
  if (v2)
  {
    OUTLINED_FUNCTION_25_0();
    v3 = calloc(0x20uLL, 1uLL);
    if (v3)
    {
      v4 = v3;
      *v3 = 1634431856;
      aks_client_connection = get_aks_client_connection();
      if (!aks_client_connection)
      {
        v18 = *MEMORY[0x277D85E08];
        OUTLINED_FUNCTION_0_1();
        fprintf(v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v20, v21, v22, v23, v24, v25, v26, ":", 387, &unk_223E5FC53, &unk_223E5FC53);
        goto LABEL_16;
      }

      v6 = aks_client_connection;
      bzero(v37, 0x8000uLL);
      v27[0] = 0x8000;
      v36 = v1;
      if (OUTLINED_FUNCTION_3_3(v6, 0x1Fu, &v36, v7, v8, v9, v10, v11, v37, v27) || v27[0] > 0x8000)
      {
        goto LABEL_16;
      }

      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v29 = 0u;
      v31 = 0u;
      v32 = 0;
      v28 = 0u;
      v34 = 0u;
      v35 = 0u;
      v27[1] = der_key_config_prederived_salt;
      v30 = der_key_config_prederived_iterations;
      v33 = der_key_config_prederived_type;
      OUTLINED_FUNCTION_1_3();
      der_dict_iterate();
      v13 = ccder_decode_tl();
      if (v13)
      {
        v14 = v13;
        v15 = calloc(*(v4 + 2), 1uLL);
        *(v4 + 1) = v15;
        if (!v15)
        {
          v16 = 0;
          if (!Mutable)
          {
            goto LABEL_11;
          }

          goto LABEL_10;
        }

        memcpy(v15, v14, *(v4 + 2));
        v4[1] = der_get_number();
        v4[6] = der_get_number();
      }

      v16 = 1;
      if (!Mutable)
      {
LABEL_11:
        if (v16 && *(v4 + 2))
        {
          *v0 = v4;
          goto LABEL_14;
        }

LABEL_16:
        aks_prederived_free(v4);
        goto LABEL_14;
      }

LABEL_10:
      CFRelease(Mutable);
      goto LABEL_11;
    }
  }

LABEL_14:
  v17 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
}

uint64_t aks_prederived_unlock_keybag(int a1, uint64_t a2, int a3, unsigned int *a4)
{
  v11 = *MEMORY[0x277D85DE8];
  memset(v10, 0, sizeof(v10));
  if (a3)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 || a4 == 0;
  if (v5 || *a4 != 1634431856 || _aks_prederive_passcode(a4))
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = _aks_unlock_bag(a1, v10, 32, 0);
  }

  OUTLINED_FUNCTION_35_0(v10);
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t aks_prederived_change_secret(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int **a6)
{
  v25 = *MEMORY[0x277D85DE8];
  memset(v24, 0, sizeof(v24));
  memset(v23, 0, sizeof(v23));
  v22 = 0;
  if (!a6)
  {
    goto LABEL_18;
  }

  v7 = *a6;
  if (!*a6)
  {
    goto LABEL_18;
  }

  v8 = *v7;
  OUTLINED_FUNCTION_44();
  if (!v14)
  {
    goto LABEL_18;
  }

  v15 = v9;
  if (!v10)
  {
    if (v11)
    {
      goto LABEL_18;
    }
  }

  if (!v12 && v13 || _aks_prederive_passcode(v7))
  {
    goto LABEL_18;
  }

  v16 = _aks_prederived_create_ctx(v7[6], &v22);
  v17 = v22;
  if (v16 || (v18 = _aks_prederive_passcode(v22), v17 = v22, v18))
  {
LABEL_16:
    if (v17)
    {
      aks_prederived_free(v17);
    }

LABEL_18:
    v19 = 0xFFFFFFFFLL;
    goto LABEL_14;
  }

  if (_set_prederived_configuration(v15, v24, 32, v23, v22))
  {
    v17 = v22;
    goto LABEL_16;
  }

  aks_prederived_free(v7);
  v19 = 0;
  *a6 = v22;
LABEL_14:
  OUTLINED_FUNCTION_35_0(v24);
  OUTLINED_FUNCTION_35_0(v23);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t _create_bag(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = 3758097084;
  if (get_aks_client_connection())
  {
    if (a8)
    {
      OUTLINED_FUNCTION_15_0();
      v9 = IOConnectCallMethod(v10, v11, v12, v13, v14, v15, v16, v17, 0, 0);
      if (!v9)
      {
        *a8 = 0;
      }
    }

    else
    {
      v9 = 3758097090;
    }
  }

  else
  {
    v20 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v21, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v22, v23, v24, v25, v26, v27, v28, ":", 190, &unk_223E5FC53, &unk_223E5FC53);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t aks_load_bag(const void *a1, int a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_9_3(*MEMORY[0x277D85DE8]);
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v3 = (v3 + 6);
    if (a1)
    {
      if (a3)
      {
        output = 0;
        outputCnt = 1;
        v3 = IOConnectCallMethod(aks_client_connection, 6u, 0, 0, a1, a2, &output, &outputCnt, 0, 0);
        if (!v3)
        {
          *a3 = output;
        }
      }
    }
  }

  else
  {
    v10 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v11, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v12, v13, v14, v15, v16, v17, v18, ":", 607, &unk_223E5FC53, &unk_223E5FC53);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t aks_invalidate_bag(const void *a1, int a2)
{
  OUTLINED_FUNCTION_12_1();
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (a1)
    {
      return OUTLINED_FUNCTION_7(aks_client_connection, 0x57u, 0, 0, a1, a2, v6, v7, 0, 0);
    }

    return (v2 + 6);
  }

  else
  {
    v9 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v10, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v11, v12, v13, v14, v15, v16, v17, ":", 629, &unk_223E5FC53, &unk_223E5FC53);
  }

  return v2;
}

void aks_save_bag()
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_36_0();
  v7 = v6;
  *(v5 - 72) = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_51_0();
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v16 = aks_client_connection;
    if (v1)
    {
      if (v0)
      {
        OUTLINED_FUNCTION_34_0((v2 + 6), v9, v10, v11, v12, v13, v14, v15, v28, v29, v30, v31, v32, v33, v34);
        __count = v3;
        v37 = v7;
        if (!OUTLINED_FUNCTION_3_3(v16, 3u, &v37, v17, v18, v19, v20, v21, v4, &__count))
        {
          v22 = calloc(__count, 1uLL);
          *v1 = v22;
          if (v22)
          {
            memcpy(v22, __src, __count);
            *v0 = __count;
          }
        }
      }
    }
  }

  else
  {
    v25 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v26, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v27, v30, v31, v32, v33, v34, v35, ":", 679, &unk_223E5FC53, &unk_223E5FC53);
    OUTLINED_FUNCTION_14_0();
  }

  v23 = *(v5 - 72);
  v24 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_73();
}

uint64_t aks_get_bag_uuid()
{
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_9_3(*MEMORY[0x277D85DE8]);
  v20 = 16;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (v1)
    {
      v22 = 0uLL;
      v21 = v2;
      v0 = OUTLINED_FUNCTION_3_3(aks_client_connection, 0x17u, &v21, v4, v5, v6, v7, v8, &v22, &v20);
      if (!v0)
      {
        *v1 = v22;
      }
    }

    else
    {
      v0 = (v0 + 6);
    }
  }

  else
  {
    v11 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v12, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v13, v14, v15, v16, v17, v18, v19, ":", 782, &unk_223E5FC53, &unk_223E5FC53);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t aks_copy_volume_cookie_persona(int a1, uint64_t a2, void **a3, size_t *a4)
{
  v54 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_62();
  v53 = 0;
  memset(__src, 0, sizeof(__src));
  v49 = 0;
  __count = 34;
  HIDWORD(v47) = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v17 = (v4 + 5);
    if (a3 && a4)
    {
      v18 = aks_client_connection;
      v51 = a1;
      v19 = OUTLINED_FUNCTION_65(aks_client_connection, v10, v11, v12, v13, v14, v15, v16, a2, 16, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, 0);
      aks_pack_data(v19, v20, 1, v21, v22, v23, v24, v25, v36);
      if (v49)
      {
        v29 = OUTLINED_FUNCTION_23_0(v18, 0x44u, &v51, v26, v49, v48, v27, v28, __src, &__count);
        if (v29)
        {
          v17 = v29;
        }

        else
        {
          *a3 = calloc(__count, 1uLL);
          OUTLINED_FUNCTION_62();
          if (v30)
          {
            memcpy(v30, __src, __count);
            v17 = 0;
            *a4 = __count;
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_62();
      }
    }
  }

  else
  {
    v33 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v34, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v35, v37, v38, v39, v40, v41, v42, ":", 813, &unk_223E5FC53, &unk_223E5FC53);
    v17 = (v4 - 1);
  }

  free(v49);
  v31 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t aks_get_lock_state()
{
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_9_3(*MEMORY[0x277D85DE8]);
  if (get_aks_client_connection())
  {
    if (v1)
    {
      OUTLINED_FUNCTION_8_3();
      OUTLINED_FUNCTION_4_1();
      v0 = IOConnectCallMethod(v2, v3, v4, v5, v6, v7, v8, v9, v15, v16);
      if (!v0)
      {
        OUTLINED_FUNCTION_55_0();
      }
    }

    else
    {
      v0 = (v0 + 6);
    }
  }

  else
  {
    v12 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v13, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v14, v17, v18, v19, v20, v21, v22, ":", 889, &unk_223E5FC53, &unk_223E5FC53);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t aks_unwrap_key(const void *a1, int a2, int a3, int a4, void *a5, int *a6)
{
  OUTLINED_FUNCTION_6_2(*MEMORY[0x277D85DE8]);
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v6 = (v6 + 6);
    if (a1)
    {
      if (a5)
      {
        if (a6)
        {
          v28[0] = a4;
          v28[1] = a3;
          v27 = *a6;
          v6 = OUTLINED_FUNCTION_7(aks_client_connection, 0xBu, v28, 2u, a1, a2, v14, v15, a5, &v27);
          if (!v6)
          {
            *a6 = v27;
          }
        }
      }
    }
  }

  else
  {
    v18 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v20, v21, v22, v23, v24, v25, v26, ":", 942, &unk_223E5FC53, &unk_223E5FC53);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t aks_get_system()
{
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_9_3(*MEMORY[0x277D85DE8]);
  if (get_aks_client_connection())
  {
    if (v1)
    {
      OUTLINED_FUNCTION_15_0();
      v0 = IOConnectCallMethod(v2, v3, v4, v5, v6, v7, v8, v9, 0, 0);
      if (!v0)
      {
        OUTLINED_FUNCTION_55_0();
      }
    }

    else
    {
      v0 = (v0 + 6);
    }
  }

  else
  {
    v12 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v13, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v14, v15, v16, v17, v18, v19, v20, ":", 987, &unk_223E5FC53, &unk_223E5FC53);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v0;
}

void _aks_backup_enable_volume()
{
  OUTLINED_FUNCTION_5_1();
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v0;
  v37 = *MEMORY[0x277D85DE8];
  v34 = 0;
  v33 = 0;
  bzero(__src, 0x8000uLL);
  __count = 0x8000;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v18 = aks_client_connection;
    v35[0] = v10;
    v35[1] = v8;
    v35[2] = v6;
    aks_pack_data(&v34, &v33, 1, v13, v14, v15, v16, v17, v11);
    if (v34)
    {
      if (!OUTLINED_FUNCTION_7(v18, 0x6Eu, v35, 3u, v34, v33, v19, v20, __src, &__count))
      {
        v21 = calloc(__count, 1uLL);
        *v4 = v21;
        if (v21)
        {
          memcpy(v21, __src, __count);
          *v2 = __count;
        }
      }
    }
  }

  else
  {
    v23 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v24, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v25, v26, v27, v28, v29, v30, v31, ":", 1101, &unk_223E5FC53, &unk_223E5FC53);
  }

  free(v34);
  v22 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_4_0();
}

uint64_t aks_backup_disable_volume()
{
  OUTLINED_FUNCTION_12_1();
  v25 = 0;
  v24 = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v2 = aks_client_connection;
    OUTLINED_FUNCTION_63();
    aks_pack_data(&v25, &v24, 1, v3, v4, v5, v6, v7, v17);
    if (v25)
    {
      v0 = OUTLINED_FUNCTION_16_1(v2, 0x6Fu, v8, v9, v25, v24, v10, v11, 0, 0);
      v12 = v25;
    }

    else
    {
      v12 = OUTLINED_FUNCTION_31_0();
    }
  }

  else
  {
    v14 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v15, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v16, v18, v19, v20, v21, v22, v23, ":", 1143, &unk_223E5FC53, &unk_223E5FC53);
    v12 = 0;
  }

  free(v12);
  return v0;
}

uint64_t aks_backup_copy_current_bag_uuid(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_12_1();
  v29 = 0;
  v28 = 0;
  v27 = 16;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v11 = aks_client_connection;
    aks_pack_data(&v29, &v28, 1, v6, v7, v8, v9, v10, a1);
    if (v29)
    {
      v2 = OUTLINED_FUNCTION_16_1(v11, 0x70u, v12, v13, v29, v28, v14, v15, a2, &v27);
      v16 = v29;
    }

    else
    {
      v16 = OUTLINED_FUNCTION_31_0();
    }
  }

  else
  {
    v18 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v20, v21, v22, v23, v24, v25, v26, ":", 1165, &unk_223E5FC53, &unk_223E5FC53);
    v16 = 0;
  }

  free(v16);
  return v2;
}

uint64_t aks_backup_unwrap_bag(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v27 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  __s = 0u;
  v24 = 0u;
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v8 = decode_backup_bag(a1, a2, v21);
  if (v8)
  {
    v16 = v8;
  }

  else
  {
    v8 = unwrap_backup_bag(v21, a3, a4, &__s, v12, v13, v14, v15);
    v16 = v8;
    if (!v8)
    {
      v17 = v24;
      *a5 = __s;
      a5[1] = v17;
      v18 = v26;
      a5[2] = v25;
      a5[3] = v18;
    }
  }

  OUTLINED_FUNCTION_68(v8, v9, v10, v11, v12, v13, v14, v15, *&v21[0]);
  memset_s(&__s, 0x40uLL, 0, 0x40uLL);
  result = err_sks_to_aks(v16);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_backup_copy_bag_uuid(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v4 = decode_backup_bag(a1, a2, v15);
  v12 = v4;
  if (!v4)
  {
    uuid_copy(a3, v15 + 8);
  }

  OUTLINED_FUNCTION_68(v4, v5, v6, v7, v8, v9, v10, v11, *&v15[0]);
  result = err_sks_to_aks(v12);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_kc_backup_unwrap_key(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t *a5)
{
  OUTLINED_FUNCTION_42_0();
  v10 = v9;
  v27[2] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_12_1();
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v5 = (v5 + 6);
    if (v6 && v7)
    {
      v27[0] = v10;
      v27[1] = 64;
      v5 = OUTLINED_FUNCTION_19_1(aks_client_connection, 0x82u, v27, 2u, v12, v13, v14, v15, v7, a5);
    }
  }

  else
  {
    v18 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v20, v21, v22, v23, v24, v25, v26, ":", 1292, &unk_223E5FC53, &unk_223E5FC53);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t aks_kc_backup_wrap_key(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t *a5)
{
  OUTLINED_FUNCTION_42_0();
  v10 = v9;
  v27[1] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_12_1();
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v5 = (v5 + 6);
    if (v6 && v7)
    {
      v27[0] = v10;
      v5 = OUTLINED_FUNCTION_19_1(aks_client_connection, 0x81u, v27, 1u, v12, v13, v14, v15, v7, a5);
    }
  }

  else
  {
    v18 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v20, v21, v22, v23, v24, v25, v26, ":", 1311, &unk_223E5FC53, &unk_223E5FC53);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t aks_kc_backup_get_handle()
{
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_9_3(*MEMORY[0x277D85DE8]);
  if (get_aks_client_connection())
  {
    if (v1)
    {
      OUTLINED_FUNCTION_8_3();
      OUTLINED_FUNCTION_4_1();
      v0 = IOConnectCallMethod(v2, v3, v4, v5, v6, v7, v8, v9, v15, v16);
      if (!v0)
      {
        OUTLINED_FUNCTION_55_0();
      }
    }

    else
    {
      v0 = (v0 + 6);
    }
  }

  else
  {
    v12 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v13, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v14, v17, v18, v19, v20, v21, v22, ":", 1330, &unk_223E5FC53, &unk_223E5FC53);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t aks_kc_backup_get_uuid()
{
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_9_3(*MEMORY[0x277D85DE8]);
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (v1)
    {
      v23 = 0;
      v24 = v2;
      v21 = 16;
      *src = 0;
      v9 = OUTLINED_FUNCTION_3_3(aks_client_connection, 0x84u, &v24, v4, v5, v6, v7, v8, src, &v21);
      if (v9)
      {
        v0 = v9;
      }

      else if (v21 == 16)
      {
        uuid_copy(v1, src);
        v0 = 0;
      }

      else
      {
        v0 = 3758604298;
      }
    }

    else
    {
      v0 = (v0 + 6);
    }
  }

  else
  {
    v12 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v13, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v14, v15, v16, v17, v18, v19, v20, ":", 1352, &unk_223E5FC53, &unk_223E5FC53);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t aks_kc_backup_open_keybag(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  if (a5)
  {
    OUTLINED_FUNCTION_47_0();
    v10 = v9;
    *a5 = -1;
    v15 = aks_backup_unwrap_bag(v9, v11, v12, v13, v14);
    v16 = MEMORY[0x277D85E08];
    v17 = *MEMORY[0x277D85E08];
    if (!v15)
    {
      OUTLINED_FUNCTION_0_1();
      fprintf(v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Unwrapped DER backup bag%s\n", "aks", v19, v38, v39, v41, v43, v45, v47, ":", 1401, &unk_223E5FC53, &unk_223E5FC53);
      v20 = 0;
      goto LABEL_9;
    }

    v51 = v15;
    OUTLINED_FUNCTION_12_2();
    fprintf(v21, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Failed to unwrap backup bag as DER: 0x%08x%s\n", "aks", &unk_223E5FC53, v22, v39, v41, v43, v45, v47, v49, 1389, &unk_223E5FC53, v51, &unk_223E5FC53);
    bag = aks_load_bag(v10, v7, a5);
    if (bag)
    {
      v20 = bag;
      v32 = *v16;
      OUTLINED_FUNCTION_12_2();
      fprintf(v33, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Failed to load in-kernel backup bag: 0x%08x%s\n", "aks", &unk_223E5FC53, v34, v40, v42, v44, v46, v48, v50, 1391, &unk_223E5FC53, v20, &unk_223E5FC53);
    }

    else
    {
      v24 = *a5;
      aks_prederived_is_enabled();
      v26 = v25;
      v27 = *a5;
      if (v26)
      {
        v20 = aks_prederived_unlock_keybag(v27, v6, v5, 0);
        if (!v20)
        {
          goto LABEL_9;
        }

        v35 = *v16;
        OUTLINED_FUNCTION_12_2();
        fprintf(v36, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Failed to unlock in-kernel backup bag with prederived secret: 0x%08x%s\n", "aks", &unk_223E5FC53, v37);
      }

      else
      {
        v20 = _aks_unlock_bag(v27, v6, v5, 0);
        if (!v20)
        {
          goto LABEL_9;
        }

        v28 = *v16;
        OUTLINED_FUNCTION_12_2();
        fprintf(v29, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Failed to unlock in-kernel backup bag: 0x%08x%s\n", "aks", &unk_223E5FC53, v30);
      }
    }
  }

  else
  {
    v20 = 3758097090;
  }

  if (*a5 != -1)
  {
    aks_unload_bag(*a5);
    *a5 = -1;
  }

LABEL_9:
  aks_prederived_free(0);
  return v20;
}

uint64_t aks_keybag_persona_create(int a1, uint64_t a2, uint64_t a3)
{
  v31[3] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_12_1();
  v30 = 0;
  v29 = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v8 = aks_client_connection;
    v31[0] = a1;
    v31[1] = a2;
    v31[2] = a3;
    OUTLINED_FUNCTION_63();
    aks_pack_data(&v30, &v29, 1, v9, v10, v11, v12, v13, v22);
    if (v30)
    {
      v3 = OUTLINED_FUNCTION_7(v8, 0x60u, v31, 3u, v30, v29, v14, v15, 0, 0);
      v16 = v30;
    }

    else
    {
      v16 = OUTLINED_FUNCTION_31_0();
    }
  }

  else
  {
    v19 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v20, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v21, v23, v24, v25, v26, v27, v28, ":", 1423, &unk_223E5FC53, &unk_223E5FC53);
    v16 = 0;
  }

  free(v16);
  v17 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t aks_keybag_persona_create_with_flags(int a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  OUTLINED_FUNCTION_6_2(*MEMORY[0x277D85DE8]);
  v33 = 0;
  v32 = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v11 = aks_client_connection;
    v34[0] = a1;
    v34[1] = a2;
    v34[2] = a3;
    v34[3] = a5;
    OUTLINED_FUNCTION_63();
    aks_pack_data(&v33, &v32, 1, v12, v13, v14, v15, v16, v25);
    if (v33)
    {
      v5 = OUTLINED_FUNCTION_7(v11, 0x75u, v34, 4u, v33, v32, v17, v18, 0, 0);
      v19 = v33;
    }

    else
    {
      v19 = OUTLINED_FUNCTION_31_0();
    }
  }

  else
  {
    v22 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v23, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v24, v26, v27, v28, v29, v30, v31, ":", 1445, &unk_223E5FC53, &unk_223E5FC53);
    v19 = 0;
  }

  free(v19);
  v20 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t aks_keybag_persona_list()
{
  MEMORY[0x28223BE20]();
  v4 = v3;
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_43_0(*MEMORY[0x277D85DE8]);
  bzero(__src, 0x2000uLL);
  __count = 0x2000;
  v27 = v1;
  v5 = (v2 + 6);
  if (v0 && v4)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v12 = OUTLINED_FUNCTION_3_3(aks_client_connection, 0x61u, &v27, v7, v8, v9, v10, v11, __src, &__count);
      if (v12)
      {
        v5 = v12;
      }

      else
      {
        if (__count)
        {
          v13 = calloc(__count, 1uLL);
          *v0 = v13;
          if (!v13)
          {
            v5 = (v2 + 1);
            goto LABEL_10;
          }

          memcpy(v13, __src, __count);
          v14 = __count;
        }

        else
        {
          v14 = 0;
          *v0 = 0;
        }

        OUTLINED_FUNCTION_54_0(v14);
      }
    }

    else
    {
      v17 = *MEMORY[0x277D85E08];
      OUTLINED_FUNCTION_0_1();
      fprintf(v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v19, v20, v21, v22, v23, v24, v25, ":", 1471, &unk_223E5FC53, &unk_223E5FC53);
      OUTLINED_FUNCTION_32_0();
    }
  }

LABEL_10:
  memset_s(__src, 0x2000uLL, 0, 0x2000uLL);
  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t aks_keybag_persona_delete(int a1)
{
  OUTLINED_FUNCTION_9_3(*MEMORY[0x277D85DE8]);
  v27 = 0;
  v26 = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v4 = aks_client_connection;
    v28 = a1;
    OUTLINED_FUNCTION_63();
    aks_pack_data(&v27, &v26, 1, v5, v6, v7, v8, v9, v19);
    if (v27)
    {
      v1 = OUTLINED_FUNCTION_23_0(v4, 0x62u, &v28, v10, v27, v26, v11, v12, 0, 0);
      v13 = v27;
    }

    else
    {
      v13 = OUTLINED_FUNCTION_31_0();
    }
  }

  else
  {
    v16 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v20, v21, v22, v23, v24, v25, ":", 1493, &unk_223E5FC53, &unk_223E5FC53);
    v13 = 0;
  }

  free(v13);
  v14 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t _aks_set_configuration(int a1, uint64_t a2, uint64_t a3, int a4)
{
  v64[4] = *MEMORY[0x277D85DE8];
  v64[0] = 0;
  OUTLINED_FUNCTION_33_0();
  v62 = 0;
  __n = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v9 = aks_client_connection;
    CFNumberGetTypeID();
    v10 = OUTLINED_FUNCTION_22_0();
    if (!_copy_cf_key(v10, v11, v12))
    {
      CFNumberGetTypeID();
      v13 = OUTLINED_FUNCTION_22_0();
      if (!_copy_cf_key(v13, v14, v15))
      {
        CFNumberGetTypeID();
        v16 = OUTLINED_FUNCTION_22_0();
        if (!_copy_cf_key(v16, v17, v18))
        {
          CFNumberGetTypeID();
          v19 = OUTLINED_FUNCTION_22_0();
          if (!_copy_cf_key(v19, @"EscrowPasscodePeriod", v20))
          {
            CFNumberGetTypeID();
            v21 = OUTLINED_FUNCTION_22_0();
            if (!_copy_cf_key(v21, @"EscrowTokenPeriod", v22))
            {
              CFDataGetTypeID();
              v23 = OUTLINED_FUNCTION_22_0();
              if (!_copy_cf_key(v23, v24, v25))
              {
                CFDataGetTypeID();
                v26 = OUTLINED_FUNCTION_22_0();
                if (!_copy_cf_key(v26, v27, v28))
                {
                  CFBooleanGetTypeID();
                  v29 = OUTLINED_FUNCTION_22_0();
                  if (!_copy_cf_key(v29, v30, v31))
                  {
                    CFBooleanGetTypeID();
                    v32 = OUTLINED_FUNCTION_22_0();
                    if (!_copy_cf_key(v32, v33, v34) && !encode_list_is_empty(&v62))
                    {
                      if (!a2)
                      {
                        goto LABEL_24;
                      }

                      v35 = &der_key_acm_handle;
                      if (!a4)
                      {
                        v35 = &der_key_passcode;
                      }

                      v36 = *v35;
                      if (!encode_list_add_data())
                      {
LABEL_24:
                        if (!encode_list_dict(&v62, v64, &__n))
                        {
                          OUTLINED_FUNCTION_39_0(a1, v47, v49, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, __n);
                          v4 = OUTLINED_FUNCTION_1_2(v9, 0x1Eu, v37, 3u, v38, v39, v40, v41, v48, v50);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v44 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v45, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v46, v51, v52, v53, v54, v55, v56, ":", 1587, &unk_223E5FC53, &unk_223E5FC53);
    v4 = (v4 - 6);
  }

  encode_list_free(&v62);
  if (v64[0])
  {
    OUTLINED_FUNCTION_37(v64[0], __n);
    free(v64[0]);
  }

  v42 = *MEMORY[0x277D85DE8];
  return v4;
}

void aks_get_configuration()
{
  OUTLINED_FUNCTION_5_1();
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v90 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_12_1();
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (v2)
    {
      v5 = aks_client_connection;
      bzero(v89, 0x8000uLL);
      v86[0] = 0x8000;
      v88 = v3;
      if (!OUTLINED_FUNCTION_3_3(v5, 0x1Fu, &v88, v6, v7, v8, v9, v10, v89, v86) && v86[0] <= 0x8000)
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        bzero(v87, 0x250uLL);
        v86[1] = der_key_config_graceperiod;
        v87[4] = der_key_config_backoff_delay;
        v87[9] = der_key_config_max_unlock_attempts;
        v87[14] = der_key_config_escrow_passcode_period;
        v87[19] = der_key_config_escrow_token_period;
        v87[24] = der_key_config_flags;
        v87[29] = der_key_config_user_uuid;
        v87[34] = der_key_config_group_uuid;
        v87[39] = der_key_config_recovery_iterations;
        v87[44] = der_key_config_recovery_params;
        v87[49] = der_key_config_recovery_target_iterations;
        v87[54] = der_key_memento_supported;
        v87[59] = der_key_memento_blob_exists;
        v87[64] = der_key_config_memento_passcode_generation;
        v87[69] = der_key_config_passcode_generation;
        OUTLINED_FUNCTION_1_3();
        der_dict_iterate();
        v12 = v87[0];
        v13 = v87[5];
        v14 = v87[10];
        v15 = v87[15];
        v85 = v2;
        v16 = v87[20];
        v17 = v87[25];
        v18 = v87[30];
        v77 = v87[35];
        v78 = v87[40];
        v79 = v87[45];
        v80 = v87[50];
        v81 = v87[55];
        v82 = v87[60];
        v83 = v87[65];
        v84 = v87[70];
        CFNumberGetTypeID();
        v19 = OUTLINED_FUNCTION_13_1();
        _set_cf_key(v19, v20, v21, v12);
        CFNumberGetTypeID();
        v22 = OUTLINED_FUNCTION_13_1();
        _set_cf_key(v22, v23, v24, v13);
        CFNumberGetTypeID();
        v25 = OUTLINED_FUNCTION_13_1();
        _set_cf_key(v25, v26, v27, v14);
        CFNumberGetTypeID();
        v28 = OUTLINED_FUNCTION_13_1();
        _set_cf_key(v28, @"EscrowPasscodePeriod", v29, v15);
        CFNumberGetTypeID();
        v30 = OUTLINED_FUNCTION_13_1();
        _set_cf_key(v30, @"EscrowTokenPeriod", v31, v16);
        CFNumberGetTypeID();
        v32 = OUTLINED_FUNCTION_13_1();
        _set_cf_key(v32, v33, v34, v17);
        CFDataGetTypeID();
        v35 = OUTLINED_FUNCTION_13_1();
        _set_cf_key(v35, v36, v37, v18);
        CFDataGetTypeID();
        v38 = OUTLINED_FUNCTION_13_1();
        _set_cf_key(v38, v39, v40, v77);
        CFNumberGetTypeID();
        v41 = OUTLINED_FUNCTION_13_1();
        _set_cf_key(v41, v42, v43, v78);
        CFNumberGetTypeID();
        v44 = OUTLINED_FUNCTION_13_1();
        _set_cf_key(v44, v45, v46, v79);
        CFNumberGetTypeID();
        v47 = OUTLINED_FUNCTION_13_1();
        _set_cf_key(v47, v48, v49, v80);
        CFBooleanGetTypeID();
        v50 = OUTLINED_FUNCTION_13_1();
        _set_cf_key(v50, v51, v52, v81);
        CFBooleanGetTypeID();
        v53 = OUTLINED_FUNCTION_13_1();
        _set_cf_key(v53, v54, v55, v82);
        CFNumberGetTypeID();
        v56 = OUTLINED_FUNCTION_13_1();
        _set_cf_key(v56, v57, v58, v83);
        CFNumberGetTypeID();
        v59 = OUTLINED_FUNCTION_13_1();
        _set_cf_key(v59, v60, v61, v84);
        number = der_get_number();
        v63 = *MEMORY[0x277CBED10];
        v64 = *MEMORY[0x277CBED28];
        if ((number & 2) != 0)
        {
          v65 = *MEMORY[0x277CBED28];
        }

        else
        {
          v65 = *MEMORY[0x277CBED10];
        }

        CFDictionarySetValue(Mutable, @"InactivityRebootEnabled", v65);
        if ((number & 8) != 0)
        {
          v66 = v64;
        }

        else
        {
          v66 = v63;
        }

        CFDictionarySetValue(Mutable, @"OnenessAutomaticMode", v66);
        *v85 = Mutable;
      }
    }
  }

  else
  {
    v68 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v69, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v70, v71, v72, v73, v74, v75, v76, ":", 1677, &unk_223E5FC53, &unk_223E5FC53);
  }

  v67 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_4_0();
}

void aks_fdr_hmac_data()
{
  OUTLINED_FUNCTION_70();
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v24 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_33_0();
  bzero(__src, 0x8000uLL);
  __count = 0x8000;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (v7)
    {
      if (v4)
      {
        if (v2)
        {
          if (!OUTLINED_FUNCTION_7(aks_client_connection, 0x29u, 0, 0, v7, v6, v9, v10, __src, &__count))
          {
            v11 = calloc(__count, 1uLL);
            *v4 = v11;
            if (v11)
            {
              memcpy(v11, __src, __count);
              *v2 = __count;
            }
          }
        }
      }
    }
  }

  else
  {
    v13 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v14, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v15, v16, v17, v18, v19, v20, v21, ":", 1889, &unk_223E5FC53, &unk_223E5FC53);
  }

  memset_s(__src, 0x8000uLL, 0, 0x8000uLL);
  v12 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_69();
}

uint64_t aks_create_signing_key()
{
  OUTLINED_FUNCTION_43_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_59();
  result = (v0 + 6);
  if (v1)
  {
    v4 = v2;
    if (v2)
    {
      v5 = v1;
      aks_client_connection = get_aks_client_connection();
      if (aks_client_connection)
      {
        v7 = aks_client_connection;
        bzero(v39, 0x100uLL);
        result = OUTLINED_FUNCTION_1_2(v7, 0x31u, v38, 2u, v8, v9, v10, v11, v39, &__count);
        if (!result)
        {
          if (__count > 0x100)
          {
            result = OUTLINED_FUNCTION_58();
          }

          else
          {
            v12 = calloc(__count, 1uLL);
            *v5 = v12;
            if (v12)
            {
              OUTLINED_FUNCTION_71(v12, v13, v14, v15, v16, v17, v18, v19, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, __count, v38[0], v38[1], v39[0]);
              result = OUTLINED_FUNCTION_60();
              *v4 = v20;
            }

            else
            {
              result = (v0 + 1);
            }
          }
        }
      }

      else
      {
        v22 = *MEMORY[0x277D85E08];
        OUTLINED_FUNCTION_0_1();
        fprintf(v23, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v24, v27, v28, v29, v30, v31, v32, ":", 2020, &unk_223E5FC53, &unk_223E5FC53);
        result = OUTLINED_FUNCTION_14_0();
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void aks_create_signing_key_with_params()
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57();
  MEMORY[0x28223BE20]();
  *(v0 - 72) = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_59();
  if (v1)
  {
    v3 = v2;
    if (v2)
    {
      v4 = v1;
      aks_client_connection = get_aks_client_connection();
      if (aks_client_connection)
      {
        v6 = aks_client_connection;
        bzero(v43, 0x8000uLL);
        OUTLINED_FUNCTION_45_0();
        if (!OUTLINED_FUNCTION_18_1(v6, 0x31u, v7, 2u, v8, v9, v10, v11, v26, v28))
        {
          if (__count > 0x8000)
          {
            OUTLINED_FUNCTION_58();
          }

          else
          {
            v12 = calloc(__count, 1uLL);
            *v4 = v12;
            if (v12)
            {
              OUTLINED_FUNCTION_71(v12, v13, v14, v15, v16, v17, v18, v19, v27, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, __count, v41, v42, v43[0]);
              OUTLINED_FUNCTION_60();
              *v3 = v20;
            }
          }
        }
      }

      else
      {
        v23 = *MEMORY[0x277D85E08];
        OUTLINED_FUNCTION_0_1();
        fprintf(v24, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v25, v30, v31, v32, v33, v34, v35, ":", 2042, &unk_223E5FC53, &unk_223E5FC53);
        OUTLINED_FUNCTION_14_0();
      }
    }
  }

  v21 = *(v0 - 72);
  v22 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_73();
}

uint64_t remote_session_operate()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v33 = *MEMORY[0x277D85DE8];
  __count = 15360;
  v31[0] = v0;
  v31[1] = v7;
  v31[2] = v8;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v10 = aks_client_connection;
    bzero(__src, 0x3C00uLL);
    v15 = OUTLINED_FUNCTION_1_2(v10, v6, v31, 3u, v11, v12, v13, v14, __src, &__count);
    if (v15)
    {
      v6 = v15;
    }

    else if (__count > 0x3C00)
    {
      OUTLINED_FUNCTION_56_0();
    }

    else
    {
      v6 = 0;
      if (v4 && v2)
      {
        if (__count)
        {
          v16 = calloc(__count, 1uLL);
          *v4 = v16;
          if (!v16)
          {
            OUTLINED_FUNCTION_17_1();
            v6 = v23 | 1u;
            goto LABEL_11;
          }

          memcpy(v16, __src, __count);
          v17 = __count;
        }

        else
        {
          v17 = 0;
        }

        OUTLINED_FUNCTION_54_0(v17);
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_32_0();
    v20 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v21, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v22, v24, v25, v26, v27, v28, v29, ":", 2178, &unk_223E5FC53, &unk_223E5FC53);
  }

LABEL_11:
  v18 = *MEMORY[0x277D85DE8];
  return v6;
}

void aks_sign_signing_key(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, size_t *a21)
{
  OUTLINED_FUNCTION_5_1();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v76 = *MEMORY[0x277D85DE8];
  bzero(__src, 0x100uLL);
  v72 = 0;
  __count = 256;
  HIDWORD(v70) = 0;
  v74[0] = v34;
  v74[1] = v32;
  v74[2] = v28;
  if (v22 && a21)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v43 = aks_client_connection;
      v44 = OUTLINED_FUNCTION_65(aks_client_connection, v36, v37, v38, v39, v40, v41, v42, v58, v59, v26, v24, v62, v63, v64, v65, v66, v67, v68, v69, v70, 0);
      aks_pack_data(v44, v45, 2, v46, v47, v48, v49, v50, v30);
      if (v72)
      {
        if (!OUTLINED_FUNCTION_7(v43, 0x32u, v74, 3u, v72, v71, v51, v52, __src, &__count) && __count <= 0x100)
        {
          v53 = calloc(__count, 1uLL);
          *v22 = v53;
          if (v53)
          {
            memcpy(v53, __src, __count);
            *a21 = __count;
          }
        }
      }
    }

    else
    {
      v55 = *MEMORY[0x277D85E08];
      OUTLINED_FUNCTION_0_1();
      fprintf(v56, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v57, v60, v61, v62, v63, v64, v65, ":", 2072, &unk_223E5FC53, &unk_223E5FC53);
    }
  }

  free(v72);
  v54 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
}

uint64_t aks_validate_local_key()
{
  v10 = 0;
  v11 = 0;
  OUTLINED_FUNCTION_12_1();
  __n = 0;
  v9 = 0;
  v3 = (v0 + 6);
  v7 = 0;
  if (v1 && v2)
  {
    *&v12 = v1;
    *(&v12 + 1) = v1 + v2;
    v9 = 0;
    OUTLINED_FUNCTION_2_2();
    if (ccder_blob_decode_range())
    {
      der_utils_decode_implicit_uint64(&v12, 0x8000000000000001, &v9);
      if (v9)
      {
        OUTLINED_FUNCTION_15_0();
        v3 = remote_session_operate();
        if (v3)
        {
          syslog(3, "error: validating v1 local signing key failed: %d");
        }
      }

      else
      {
        signing_key = aks_create_signing_key();
        if (!signing_key)
        {
          v5 = v11;
          goto LABEL_10;
        }

        v3 = signing_key;
        syslog(3, "error: validating (create) v0 local signing key failed: %d", signing_key);
      }
    }

    else
    {
      syslog(3, "error parsing signing key: %d", v0 + 14);
      v3 = 3758097084;
    }
  }

  v5 = v11;
  v0 = v3;
LABEL_10:
  if (v5)
  {
    OUTLINED_FUNCTION_37(v5, __n);
    free(v11);
  }

  if (v10)
  {
    OUTLINED_FUNCTION_37(v10, v7);
    free(v10);
  }

  return v0;
}

void aks_drain_backup_keys()
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_36_0();
  v6 = v5;
  *(v4 - 72) = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_51_0();
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v15 = aks_client_connection;
    if (v1)
    {
      if (v0)
      {
        OUTLINED_FUNCTION_34_0((v2 + 6), v8, v9, v10, v11, v12, v13, v14, v35, v38, v41, v43, v45, v47, v49);
        OUTLINED_FUNCTION_45_0();
        if (!OUTLINED_FUNCTION_1_2(v15, 0x14u, v16, 2u, v17, v18, v19, v20, v36, v39))
        {
          if (v3)
          {
            v21 = calloc(v3, 1uLL);
            *v1 = v21;
            if (v21)
            {
              OUTLINED_FUNCTION_71(v21, v22, v23, v24, v25, v26, v27, v28, v37, v40, v42, v44, v46, v48, v50, v51, v52, v53, v54, v55, v3, v6, 0, v56);
              OUTLINED_FUNCTION_60();
              *v0 = v29;
            }
          }
        }
      }
    }
  }

  else
  {
    v32 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v33, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v34, v41, v43, v45, v47, v49, v51, ":", 2233, &unk_223E5FC53, &unk_223E5FC53);
    OUTLINED_FUNCTION_14_0();
  }

  v30 = *(v4 - 72);
  v31 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_73();
}

void aks_drain_backup_keys_info()
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_36_0();
  v6 = v5;
  *(v4 - 72) = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_51_0();
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v15 = aks_client_connection;
    if (v1)
    {
      if (v0)
      {
        OUTLINED_FUNCTION_34_0((v2 + 6), v8, v9, v10, v11, v12, v13, v14, v35, v38, v41, v43, v45, v47, v49);
        OUTLINED_FUNCTION_45_0();
        if (!OUTLINED_FUNCTION_1_2(v15, 0x14u, v16, 2u, v17, v18, v19, v20, v36, v39))
        {
          if (v3)
          {
            if (v3 % 0x7C)
            {
              OUTLINED_FUNCTION_58();
            }

            else
            {
              v21 = calloc(v3, 1uLL);
              *v1 = v21;
              if (v21)
              {
                OUTLINED_FUNCTION_71(v21, v22, v23, v24, v25, v26, v27, v28, v37, v40, v42, v44, v46, v48, v50, v51, v52, v53, v54, v55, v3, v6, 1, v56);
                OUTLINED_FUNCTION_60();
                *v0 = v29 / 0x7C;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v32 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v33, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v34, v41, v43, v45, v47, v49, v51, ":", 2261, &unk_223E5FC53, &unk_223E5FC53);
    OUTLINED_FUNCTION_14_0();
  }

  v30 = *(v4 - 72);
  v31 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_73();
}

void aks_set_backup_bag()
{
  OUTLINED_FUNCTION_5_1();
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v0;
  v36 = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v13 = aks_client_connection;
    if (v4)
    {
      if (!v2)
      {
        goto LABEL_10;
      }

      v14 = __src;
      p_count = &__count;
      v16 = 1;
    }

    else
    {
      p_count = 0;
      v14 = 0;
      v16 = 0;
    }

    bzero(__src, 0x8000uLL);
    __count = 0x8000;
    v34[0] = v11;
    v34[1] = v10;
    v34[2] = v16;
    v34[3] = v8;
    v34[4] = v6;
    v21 = OUTLINED_FUNCTION_1_2(v13, 0x15u, v34, 5u, v17, v18, v19, v20, v14, p_count);
    if (v4 && !v21)
    {
      v22 = calloc(__count, 1uLL);
      *v4 = v22;
      if (v22)
      {
        memcpy(v22, __src, __count);
        *v2 = __count;
      }

      else
      {
        OUTLINED_FUNCTION_17_1();
      }
    }
  }

  else
  {
    v24 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v25, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v26, v27, v28, v29, v30, v31, v32, ":", 2307, &unk_223E5FC53, &unk_223E5FC53);
    OUTLINED_FUNCTION_14_0();
  }

LABEL_10:
  v23 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
}

uint64_t aks_make_public_backup_bag()
{
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_9_3(*MEMORY[0x277D85DE8]);
  if (get_aks_client_connection())
  {
    if (v1)
    {
      OUTLINED_FUNCTION_8_3();
      OUTLINED_FUNCTION_4_1();
      v0 = IOConnectCallMethod(v2, v3, v4, v5, v6, v7, v8, v9, v15, v16);
      if (!v0)
      {
        OUTLINED_FUNCTION_55_0();
      }
    }

    else
    {
      v0 = (v0 + 6);
    }
  }

  else
  {
    v12 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v13, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v14, v17, v18, v19, v20, v21, v22, ":", 2339, &unk_223E5FC53, &unk_223E5FC53);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t _get_device_state()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v29[1] = *MEMORY[0x277D85DE8];
  v29[0] = v0;
  v25 = 4096;
  v5 = 3758097084;
  v27 = 0;
  memset(__src, 0, sizeof(__src));
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (v2)
    {
      v7 = aks_client_connection;
      bzero(v28, 0x1000uLL);
      v13 = OUTLINED_FUNCTION_3_3(v7, v4, v29, v8, v9, v10, v11, v12, v28, &v25);
      if (v13)
      {
        v5 = v13;
      }

      else
      {
        if (!decode_extended_state(v28))
        {
          memcpy(v2, __src, 0x42uLL);
        }

        v5 = 0;
      }
    }

    else
    {
      v5 = 3758097090;
    }
  }

  else
  {
    v16 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v19, v20, v21, v22, v23, v24, ":", 2409, &unk_223E5FC53, &unk_223E5FC53);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

void aks_remote_peer_get_state()
{
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_6_2(*MEMORY[0x277D85DE8]);
  v34 = 4096;
  v35 = v1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (v0)
    {
      v10 = aks_client_connection;
      v11 = OUTLINED_FUNCTION_50_0(aks_client_connection, v3, v4, v5, v6, v7, v8, v9, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36[0]);
      bzero(v11, v12);
      memset_s(v0, 0x68uLL, 0, 0x68uLL);
      if (!OUTLINED_FUNCTION_18_1(v10, 0x39u, &v35, 1u, v13, v14, v15, v16, v36, &v34))
      {
        decode_peer_state(v36, v34, v0);
      }
    }
  }

  else
  {
    v18 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v20, v23, v24, v25, v26, v27, v28, ":", 2440, &unk_223E5FC53, &unk_223E5FC53);
  }

  v17 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_69();
}

void aks_smartcard_register()
{
  OUTLINED_FUNCTION_70();
  v1 = v0;
  v3 = v2;
  v28[4] = *MEMORY[0x277D85DE8];
  v28[0] = v4;
  v28[1] = v5;
  v28[2] = v6;
  v28[3] = v7;
  __count = 2048;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v9 = aks_client_connection;
    bzero(__src, 0x800uLL);
    if (OUTLINED_FUNCTION_18_1(v9, 0x3Bu, v28, 4u, v10, v11, v12, v13, __src, &__count))
    {
      goto LABEL_11;
    }

    if (__count > 0x800)
    {
      OUTLINED_FUNCTION_56_0();
    }

    else if (v3 && v1)
    {
      if (__count)
      {
        v14 = calloc(__count, 1uLL);
        *v3 = v14;
        if (!v14)
        {
          OUTLINED_FUNCTION_17_1();
          goto LABEL_11;
        }

        memcpy(v14, __src, __count);
        v15 = __count;
      }

      else
      {
        v15 = 0;
      }

      OUTLINED_FUNCTION_54_0(v15);
    }
  }

  else
  {
    OUTLINED_FUNCTION_32_0();
    v17 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v19, v20, v21, v22, v23, v24, v25, ":", 2580, &unk_223E5FC53, &unk_223E5FC53);
  }

LABEL_11:
  v16 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_69();
}

void aks_smartcard_request_unlock()
{
  OUTLINED_FUNCTION_70();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v27[1] = *MEMORY[0x277D85DE8];
  v27[0] = v8;
  __count = 2048;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v10 = aks_client_connection;
    bzero(__src, 0x800uLL);
    if (!OUTLINED_FUNCTION_7(v10, 0x3Du, v27, 1u, v7, v5, v11, v12, __src, &__count) && __count <= 0x800 && v3 && v1)
    {
      if (__count)
      {
        v13 = calloc(__count, 1uLL);
        *v3 = v13;
        if (!v13)
        {
          OUTLINED_FUNCTION_17_1();
          goto LABEL_11;
        }

        memcpy(v13, __src, __count);
        v14 = __count;
      }

      else
      {
        v14 = 0;
      }

      *v1 = v14;
    }
  }

  else
  {
    v16 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v19, v20, v21, v22, v23, v24, ":", 2621, &unk_223E5FC53, &unk_223E5FC53);
  }

LABEL_11:
  v15 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_69();
}

void aks_smartcard_unlock()
{
  OUTLINED_FUNCTION_5_1();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_53_0();
  v31[1] = *MEMORY[0x277D85DE8];
  v31[0] = v7;
  v29 = 0;
  v28 = 0;
  bzero(__src, 0x800uLL);
  __count = 2048;
  aks_pack_data(&v29, &v28, 2, v8, v9, v10, v11, v12, v2);
  if (v29)
  {
    aks_client_connection = get_aks_client_connection();
    if (!aks_client_connection)
    {
      v20 = *MEMORY[0x277D85E08];
      OUTLINED_FUNCTION_0_1();
      fprintf(v21, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v22, v1, v0, v23, v24, v25, v26, ":", 2652, &unk_223E5FC53, &unk_223E5FC53);
      goto LABEL_12;
    }

    if (OUTLINED_FUNCTION_23_0(aks_client_connection, 0x3Eu, v31, v14, v29, v28, v15, v16, __src, &__count))
    {
      goto LABEL_12;
    }

    if (__count > 0x800)
    {
      OUTLINED_FUNCTION_56_0();
      goto LABEL_12;
    }

    if (v6 && v4)
    {
      if (!__count)
      {
        v18 = 0;
        goto LABEL_11;
      }

      v17 = calloc(__count, 1uLL);
      *v6 = v17;
      if (v17)
      {
        memcpy(v17, __src, __count);
        v18 = __count;
LABEL_11:
        OUTLINED_FUNCTION_54_0(v18);
      }
    }
  }

LABEL_12:
  free(v29);
  v19 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
}

uint64_t aks_smartcard_get_sc_usk(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  result = 0xFFFFFFFFLL;
  if (a3 && a4)
  {
    if (aks_smartcard_get_foo(der_key_sc_enc_sc_usk, 0, a1, a2, a3, a4))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t aks_smartcard_get_foo(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v14 = *MEMORY[0x277D85DE8];
  result = 0xFFFFFFFFLL;
  if (a3 && a4 && a5 && a6 && a4 >= 1)
  {
    OUTLINED_FUNCTION_1_3();
    der_dict_iterate();
    if (a2)
    {
      if (*a6 == 8)
      {
        number = der_get_number();
        result = 0;
        *a5 = number;
        goto LABEL_11;
      }
    }

    else
    {
      v11 = ccder_decode_tl();
      if (v11)
      {
        v12 = v11;
        result = 0;
        *a5 = v12;
        *a6 = 0;
        goto LABEL_11;
      }
    }

    result = 0xFFFFFFFFLL;
  }

LABEL_11:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_smartcard_get_ec_pub(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  result = 0xFFFFFFFFLL;
  if (a3 && a4)
  {
    if (aks_smartcard_get_foo(der_key_sc_auth_eph_pub, 0, a1, a2, a3, a4))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t aks_smartcard_get_mode(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = 8;
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  result = aks_smartcard_get_foo(der_key_sc_auth_mode, 1, a1, a2, &v6, &v5);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *a3 = v6;
  return result;
}

uint64_t aks_smartcard_get_version(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = 8;
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  result = aks_smartcard_get_foo(der_key_sc_auth_version, 1, a1, a2, &v6, &v5);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *a3 = v6;
  return result;
}

void _aks_se_get_reset_token_for_memento_secret()
{
  OUTLINED_FUNCTION_70();
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v29[4] = *MEMORY[0x277D85DE8];
  v29[0] = v0;
  v29[1] = v3;
  v29[2] = v4;
  v29[3] = v5;
  bzero(v28, 0x1000uLL);
  __n[0] = 4096;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (!OUTLINED_FUNCTION_1_2(aks_client_connection, 0x48u, v29, 4u, v7, v8, v9, v10, v28, __n))
    {
      if (__n[0] - 4097 < 0xFFFFFFFFFFFFF000)
      {
        OUTLINED_FUNCTION_56_0();
      }

      else
      {
        v26 = 0u;
        v27 = 0;
        v23 = 0u;
        v24 = 0u;
        __n[1] = der_key_config_se_reset_token;
        v25 = der_key_config_se_slot;
        OUTLINED_FUNCTION_1_3();
        der_dict_iterate();
        if (v23)
        {
          ccder_decode_tl();
        }

        else if (*(&v25 + 1))
        {
          number = der_get_number();
          if (number <= 0xFF)
          {
            *v2 = number;
          }
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_32_0();
    v13 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v14, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v15, v16, v17, v18, v19, v20, v21, ":", 2923, &unk_223E5FC53, &unk_223E5FC53);
  }

  OUTLINED_FUNCTION_37(v28, __n[0]);
  v12 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_69();
}

void aks_se_get_reset_sig()
{
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20]();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_36_0();
  v44 = *MEMORY[0x277D85DE8];
  *&v43[4091] = v6;
  OUTLINED_FUNCTION_72(v6, v7, v8, v9, v10, v11, v12, v13, v27, v29, v31, v33, v35, v37);
  if (v1 && v0 && v5 && v3)
  {
    if (get_aks_client_connection())
    {
      OUTLINED_FUNCTION_48();
      if (!OUTLINED_FUNCTION_3_3(v14, 0x5Au, &v43[4091], v15, v16, v17, v18, v19, v28, v30))
      {
        v20 = calloc(5uLL, 1uLL);
        *v5 = v20;
        if (v20)
        {
          *v3 = 5;
          v21 = v41;
          v20[4] = v42;
          *v20 = v21;
          v22 = calloc(0xFFBuLL, 1uLL);
          *v1 = v22;
          if (v22)
          {
            *v0 = 4091;
            memcpy(v22, v43, 0x1000uLL);
          }
        }
      }
    }

    else
    {
      v24 = *MEMORY[0x277D85E08];
      OUTLINED_FUNCTION_0_1();
      fprintf(v25, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v26, v32, v34, v36, v38, v39, v40, ":", 3021, &unk_223E5FC53, &unk_223E5FC53);
    }
  }

  OUTLINED_FUNCTION_37(&v41, 0x1000uLL);
  v23 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_69();
}

void aks_se_get_reset_pubkey()
{
  MEMORY[0x28223BE20]();
  v1 = v0;
  v3 = v2;
  v38[1] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_51_0();
  v38[0] = v4;
  OUTLINED_FUNCTION_72(v4, v5, v6, v7, v8, v9, v10, v11, v23, v25, v27, v29, v31, v33);
  if (v3 && v1)
  {
    if (get_aks_client_connection())
    {
      OUTLINED_FUNCTION_48();
      if (!OUTLINED_FUNCTION_3_3(v12, 0x59u, v38, v13, v14, v15, v16, v17, v24, v26))
      {
        v18 = calloc(0x1000uLL, 1uLL);
        *v3 = v18;
        if (v18)
        {
          *v1 = 4096;
          memcpy(v18, __src, 0x1000uLL);
        }
      }
    }

    else
    {
      v20 = *MEMORY[0x277D85E08];
      OUTLINED_FUNCTION_0_1();
      fprintf(v21, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v22, v28, v30, v32, v34, v35, v36, ":", 3053, &unk_223E5FC53, &unk_223E5FC53);
    }
  }

  memset_s(__src, 0x1000uLL, 0, 0x1000uLL);
  v19 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_38_0();
}

void aks_se_get_passcode_derivation()
{
  OUTLINED_FUNCTION_5_1();
  v41 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v45 = *MEMORY[0x277D85DE8];
  memset(v44, 0, sizeof(v44));
  v42 = 128;
  v15 = se_derivation_request_serialization_len();
  MEMORY[0x28223BE20]();
  v17 = &v40 - v16;
  v18 = OUTLINED_FUNCTION_49();
  bzero(v18, v19);
  if (!se_derivation_request_serialize(v12, v10, v8, v6, v4, v17, v15))
  {
    v43[0] = v14;
    v43[1] = v17;
    v43[2] = v15;
    if (v2)
    {
      v20 = v41;
      if (v41)
      {
        aks_client_connection = get_aks_client_connection();
        if (aks_client_connection)
        {
          if (!OUTLINED_FUNCTION_1_2(aks_client_connection, 0x9Bu, v43, 3u, v22, v23, v24, v25, v44, &v42))
          {
            v26 = calloc(v42, 1uLL);
            *v2 = v26;
            if (v26)
            {
              v27 = v42;
              *v20 = v42;
              memcpy(v26, v44, v27);
            }
          }
        }

        else
        {
          v31 = *MEMORY[0x277D85E08];
          OUTLINED_FUNCTION_0_1();
          fprintf(v32, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v33, v34, v35, v36, v37, v38, v39, ":", 3152, &unk_223E5FC53, &unk_223E5FC53);
          OUTLINED_FUNCTION_51_0();
        }
      }
    }
  }

  v28 = OUTLINED_FUNCTION_49();
  memset_s(v28, v29, 0, v15);
  OUTLINED_FUNCTION_37(v44, v42);
  v30 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
}

void aks_get_icsc_srp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, uint64_t a23, void *a24, size_t *a25)
{
  OUTLINED_FUNCTION_5_1();
  v25 = MEMORY[0x28223BE20]();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v67 = *MEMORY[0x277D85DE8];
  v65 = 0;
  v66 = 0;
  v64 = v25;
  bzero(__src, 0x4000uLL);
  v61 = a23;
  __count = 0x4000;
  v58[0] = v39;
  memset(__n, 0, sizeof(__n));
  v58[1] = v37;
  v58[2] = v35;
  v58[3] = v33;
  v58[4] = v31;
  v58[5] = v29;
  v58[6] = v27;
  v59 = a21;
  v60 = a22;
  if (encode_icsc_params_internal(v58, &__n[1], __n) || (v65 = *&__n[1], v66 = __n[0], !a24))
  {
    OUTLINED_FUNCTION_33_0();
  }

  else
  {
    OUTLINED_FUNCTION_33_0();
    if (a25)
    {
      aks_client_connection = get_aks_client_connection();
      if (aks_client_connection)
      {
        if (!OUTLINED_FUNCTION_1_2(aks_client_connection, 0x9Fu, &v64, 3u, v41, v42, v43, v44, __src, &__count))
        {
          v45 = calloc(__count, 1uLL);
          *a24 = v45;
          if (v45)
          {
            v46 = __count;
            *a25 = __count;
            memcpy(v45, __src, v46);
          }
        }
      }

      else
      {
        v48 = *MEMORY[0x277D85E08];
        OUTLINED_FUNCTION_0_1();
        fprintf(v49, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v50, v51, v52, v53, v54, v55, v56, ":", 3201, &unk_223E5FC53, &unk_223E5FC53);
      }
    }
  }

  OUTLINED_FUNCTION_37(*&__n[1], __n[0]);
  free(*&__n[1]);
  OUTLINED_FUNCTION_37(__src, __count);
  v47 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
}

void aks_fv_get_blob_state()
{
  OUTLINED_FUNCTION_74();
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v56 = *MEMORY[0x277D85DE8];
  v10 = OUTLINED_FUNCTION_50_0(v0, v3, v1, v5, v6, v7, v8, v9, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v53, v54, v55[0]);
  bzero(v10, v11);
  v52 = v55;
  v53 = &v56;
  v54 = 4096;
  if (v4 && v2)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v21 = aks_client_connection;
      v12 = der_utils_encode_fv_data(&v52);
      if (v12)
      {
        v12 = der_utils_encode_fv_params(&v52);
        if (v12)
        {
          OUTLINED_FUNCTION_2_2();
          v12 = ccder_blob_encode_tl();
          if (v12)
          {
            v12 = OUTLINED_FUNCTION_16_1(v21, 0x55u, v14, v15, v53, &v56 - v53, v18, v19, v55, &v54);
            if (!v12)
            {
              v12 = decode_fv_blob_state(v55);
            }
          }
        }
      }
    }

    else
    {
      v25 = *MEMORY[0x277D85E08];
      OUTLINED_FUNCTION_0_1();
      v12 = fprintf(v26, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v27, v33, v35, v37, v39, v41, v43, ":", 3262, &unk_223E5FC53, &unk_223E5FC53);
    }
  }

  v22 = OUTLINED_FUNCTION_50_0(v12, v13, v14, v15, v16, v17, v18, v19, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v52, v53, v54, v55[0]);
  memset_s(v22, v23, 0, 0x1000uLL);
  v24 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_73();
}

void aks_fv_get_last_known_gp_state(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    v1 = (*(a1 + 40) >> 64) | 0x10;
  }

  aks_fv_get_blob_state();
}

uint64_t aks_fv_get_size()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  input[1] = *MEMORY[0x277D85DE8];
  v3 = 3758097098;
  output = 0;
  input[0] = v4;
  HIDWORD(v55) = 1;
  v10 = OUTLINED_FUNCTION_50_0(v0, v4, v1, v5, v6, v7, v8, v9, outputStruct, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, inputStruct, v55, v56);
  bzero(v10, v11);
  v53 = &v56;
  inputStruct = &output;
  if (v2)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v21 = aks_client_connection;
      v12 = der_utils_encode_fv_params(&v53);
      if (v12)
      {
        OUTLINED_FUNCTION_2_2();
        v12 = ccder_blob_encode_tl();
        if (v12)
        {
          v12 = IOConnectCallMethod(v21, 0x4Eu, input, 1u, inputStruct, &output - inputStruct, &output, &v55 + 1, 0, 0);
          v3 = v12;
          if (!v12)
          {
            *v2 = output;
          }
        }
      }
    }

    else
    {
      v26 = *MEMORY[0x277D85E08];
      OUTLINED_FUNCTION_0_1();
      v12 = fprintf(v27, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v28, v34, v36, v38, v40, v42, v44, ":", 3305, &unk_223E5FC53, &unk_223E5FC53);
      v3 = 3758097084;
    }
  }

  else
  {
    v3 = 3758097090;
  }

  v22 = OUTLINED_FUNCTION_50_0(v12, v13, v14, v15, v16, v17, v18, v19, outputStructa, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v53, inputStruct, v55, v56);
  memset_s(v22, v23, 0, 0x1000uLL);
  v24 = *MEMORY[0x277D85DE8];
  return v3;
}

void aks_fv_import()
{
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20]();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v27[1] = *MEMORY[0x277D85DE8];
  v27[0] = v6;
  bzero(__s, 0x1000uLL);
  v23 = __s;
  v24 = v27;
  v25 = 4096;
  if (v5 && v3)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v8 = aks_client_connection;
      if (ccder_blob_encode_body_tl())
      {
        if (der_utils_encode_fv_data(&v23))
        {
          if (der_utils_encode_fv_params(&v23))
          {
            OUTLINED_FUNCTION_2_2();
            if (ccder_blob_encode_tl())
            {
              if (!OUTLINED_FUNCTION_23_0(v8, 0x4Fu, v27, v9, v24, v27 - v24, v10, v11, __s, &v25))
              {
                *&v22 = __s;
                *(&v22 + 1) = &__s[v25];
                OUTLINED_FUNCTION_2_2();
                if (ccder_blob_decode_range())
                {
                  if (v1)
                  {
                    der_utils_decode_fv_data(&v22, 0, v1);
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v13 = *MEMORY[0x277D85E08];
      OUTLINED_FUNCTION_0_1();
      fprintf(v14, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v15, v16, v17, v18, v19, v20, v21, ":", 3333, &unk_223E5FC53, &unk_223E5FC53);
    }
  }

  memset_s(__s, 0x1000uLL, 0, 0x1000uLL);
  v12 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
}

void aks_fv_is_access_token_unbound(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    aks_fv_get_blob_state();
  }

  v2 = *MEMORY[0x277D85DE8];
}

void aks_fv_grant_ownership()
{
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_53_0();
  v5 = *MEMORY[0x277D85DE8];
  bzero(v4, 0x1000uLL);
  bzero(v3, 0x1000uLL);
  v2[0] = v4;
  v2[1] = &v5;
  v1[0] = v3;
  v1[1] = v4;
  if (der_utils_encode_fv_data(v2))
  {
    if (der_utils_encode_fv_data(v2))
    {
      OUTLINED_FUNCTION_2_2();
      if (ccder_blob_encode_tl())
      {
        if (der_utils_encode_fv_data(v1))
        {
          if (der_utils_encode_fv_data(v1))
          {
            OUTLINED_FUNCTION_2_2();
            if (ccder_blob_encode_tl())
            {
              aks_fv_set_protection();
            }
          }
        }
      }
    }
  }

  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
}

void aks_fv_sidp_status()
{
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_36_0();
  v5 = *MEMORY[0x277D85DE8];
  bzero(v4, 0x4000uLL);
  OUTLINED_FUNCTION_15_0();
  aks_fv_set_protection();
  if (!v2)
  {
    if (ccder_decode_sequence_tl() && ccder_decode_tl())
    {
      __memcpy_chk();
      if (v1)
      {
        *v1 = 0;
      }

      if (v0)
      {
        *v0 = 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_14_0();
    }
  }

  v3 = *MEMORY[0x277D85DE8];
}

void aks_absinthe_collection()
{
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_46_0();
  v3 = v2;
  v32[1] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_12_1();
  *v5 = v4;
  bzero(__src, 0x8000uLL);
  v29 = 0;
  __count = 0x8000;
  v28 = 0;
  if (v1)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v12 = aks_client_connection;
      if (v3)
      {
        v13 = v3;
      }

      else
      {
        v13 = &unk_223E5FC53;
      }

      aks_pack_data(&v29, &v28, 2, v7, v8, v9, v10, v11, v13);
      if (!OUTLINED_FUNCTION_23_0(v12, 0x50u, v32, v14, v29, v28, v15, v16, __src, &__count))
      {
        v17 = calloc(__count, 1uLL);
        *v1 = v17;
        if (v17)
        {
          memcpy(v17, __src, __count);
          *v0 = __count;
        }
      }
    }

    else
    {
      v19 = *MEMORY[0x277D85E08];
      OUTLINED_FUNCTION_0_1();
      fprintf(v20, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v21, v22, v23, v24, v25, v26, v27, ":", 3582, &unk_223E5FC53, &unk_223E5FC53);
    }
  }

  memset_s(__src, 0x8000uLL, 0, 0x8000uLL);
  free(v29);
  v18 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_4_0();
}

uint64_t aks_get_current_sep_measurement()
{
  OUTLINED_FUNCTION_12_1();
  if (v2 && v1 && !aks_get_internal_info_for_key())
  {
    der_dict_get_data(der_key_sep_measurement);
  }

  free(0);
  return v0;
}

uint64_t aks_get_seconds_since_passcode_change(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_12_1();
  v8 = 0;
  v9 = 0;
  v7 = 0;
  if (!aks_get_internal_info_for_key() && der_dict_get_number(der_key_passcode_change_time, v9, v9 + v8, &v7))
  {
    if (a2)
    {
      v4 = time(0);
      v2 = 0;
      v5 = v4 - v7;
      if (v4 <= v7)
      {
        v5 = 0;
      }

      *a2 = v5;
    }

    else
    {
      v2 = 0;
    }
  }

  free(v9);
  return v2;
}

void aks_get_internal_state()
{
  MEMORY[0x28223BE20]();
  v1 = v0;
  v35[1] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_33_0();
  v35[0] = v2;
  OUTLINED_FUNCTION_72(v2, v3, v4, v5, v6, v7, v8, v9, v20, v22, v24, v26, v28, v30);
  if (get_aks_client_connection())
  {
    if (v1)
    {
      OUTLINED_FUNCTION_48();
      if (!OUTLINED_FUNCTION_3_3(v10, 0x8Eu, v35, v11, v12, v13, v14, v15, v21, v23))
      {
        decode_extended_state(v34);
      }
    }
  }

  else
  {
    v17 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v19, v25, v27, v29, v31, v32, v33, ":", 3797, &unk_223E5FC53, &unk_223E5FC53);
  }

  OUTLINED_FUNCTION_37(v34, 0x1000uLL);
  v16 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_38_0();
}

uint64_t aks_fairplay_wrap()
{
  v22[1] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17_1();
  v22[0] = 266;
  result = (v2 + 6);
  if (v0)
  {
    v4 = v1;
    if (v1)
    {
      v5 = v0;
      aks_client_connection = get_aks_client_connection();
      if (aks_client_connection)
      {
        v21 = *v4;
        result = OUTLINED_FUNCTION_19_1(aks_client_connection, 0x68u, v22, 1u, v7, v8, v9, v10, v5, &v21);
        if (!result)
        {
          *v4 = v21;
        }
      }

      else
      {
        v12 = *MEMORY[0x277D85E08];
        OUTLINED_FUNCTION_0_1();
        fprintf(v13, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v14, v15, v16, v17, v18, v19, v20, ":", 3823, &unk_223E5FC53, &unk_223E5FC53);
        result = OUTLINED_FUNCTION_14_0();
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _fairplay_generate_csk_internal()
{
  v23[1] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17_1();
  v23[0] = (v2 << 8) | 1;
  result = (v3 + 6);
  if (v5)
  {
    v6 = v1;
    if (v1)
    {
      OUTLINED_FUNCTION_42_0();
      aks_client_connection = get_aks_client_connection();
      if (aks_client_connection)
      {
        v22 = *v6;
        result = OUTLINED_FUNCTION_19_1(aks_client_connection, 0x68u, v23, 1u, v8, v9, v10, v11, v0, &v22);
        if (!result)
        {
          *v6 = v22;
        }
      }

      else
      {
        v13 = *MEMORY[0x277D85E08];
        OUTLINED_FUNCTION_0_1();
        fprintf(v14, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v15, v16, v17, v18, v19, v20, v21, ":", 3847, &unk_223E5FC53, &unk_223E5FC53);
        result = OUTLINED_FUNCTION_14_0();
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void aks_bak_get_beacon_internal()
{
  OUTLINED_FUNCTION_74();
  MEMORY[0x28223BE20]();
  v2 = v1;
  OUTLINED_FUNCTION_47_0();
  v4 = v3;
  v27 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  memset(v26, 0, sizeof(v26));
  bzero(v24, 0x4000uLL);
  v22 = 0x4000;
  v23[0] = 1;
  v23[1] = v4;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (!OUTLINED_FUNCTION_18_1(aks_client_connection, 0x87u, v23, 2u, v6, v7, v8, v9, v24, &v22))
    {
      __memcpy_chk();
      *v2 = 44;
      v10 = calloc(0x2CuLL, 1uLL);
      *v0 = v10;
      if (v10)
      {
        v11 = *v2;
        __memcpy_chk();
      }

      else
      {
        OUTLINED_FUNCTION_17_1();
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_32_0();
    v13 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v14, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v15, v16, v17, v18, v19, v20, v21, ":", 3883, &unk_223E5FC53, &unk_223E5FC53);
  }

  OUTLINED_FUNCTION_52_0(v24);
  v12 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_73();
}

uint64_t aks_bak_get_beacon()
{
  OUTLINED_FUNCTION_46_0();
  v4 = *MEMORY[0x277D85DE8];
  aks_bak_get_beacon_internal();
  if (v0)
  {
    v3 = v0;
  }

  else
  {
    v3 = 3758604312;
  }

  v1 = *MEMORY[0x277D85DE8];
  return v3;
}

void aks_bak_get_swizzler_internal()
{
  OUTLINED_FUNCTION_70();
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v34[2] = *MEMORY[0x277D85DE8];
  v34[0] = 2;
  v34[1] = v0;
  bzero(v30, 0xC4uLL);
  bzero(v29, 0x4000uLL);
  v28 = 0x4000;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (!OUTLINED_FUNCTION_1_2(aks_client_connection, 0x87u, v34, 2u, v10, v11, v12, v13, v29, &v28))
    {
      __memcpy_chk();
      v14 = calloc(0x28uLL, 1uLL);
      *v8 = v14;
      if (v14)
      {
        *v6 = 40;
        v15 = *&v30[8];
        v16 = v31;
        v14[4] = v32;
        *v14 = v15;
        *(v14 + 1) = v16;
        v17 = calloc(0x91uLL, 1uLL);
        *v4 = v17;
        if (v17)
        {
          *v2 = 145;
          memcpy(v17, v33, 0x91uLL);
        }
      }
    }
  }

  else
  {
    v19 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v20, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v21, v22, v23, v24, v25, v26, v27, ":", 3943, &unk_223E5FC53, &unk_223E5FC53);
  }

  OUTLINED_FUNCTION_52_0(v29);
  memset_s(v30, 0xC4uLL, 0, 0xC4uLL);
  v18 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_69();
}

uint64_t aks_test_stashed_kek(uint64_t a1)
{
  akstest_client_connection = get_akstest_client_connection();
  if (akstest_client_connection)
  {
    return OUTLINED_FUNCTION_16_1(akstest_client_connection, 0xCu, v3, v4, *a1, *(a1 + 8), v5, v6, 0, 0);
  }

  else
  {
    return OUTLINED_FUNCTION_14_0();
  }
}

uint64_t aks_get_dsme_key()
{
  v1 = MEMORY[0x28223BE20]();
  v3 = v2;
  v4 = v1;
  OUTLINED_FUNCTION_43_0(*MEMORY[0x277D85DE8]);
  v5 = 0x4000;
  bzero(__src, 0x4000uLL);
  __count = 0x4000;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v5 = (v0 + 6);
    if (v4 && v3)
    {
      v11 = OUTLINED_FUNCTION_1_2(aks_client_connection, 0x96u, 0, 0, v7, v8, v9, v10, __src, &__count);
      if (v11)
      {
        v5 = v11;
      }

      else
      {
        v12 = calloc(__count, 1uLL);
        *v4 = v12;
        if (v12)
        {
          v13 = __count;
          *v3 = __count;
          memcpy(v12, __src, v13);
          v5 = 0;
        }

        else
        {
          v5 = (v0 + 1);
        }
      }
    }
  }

  else
  {
    v16 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v18, v19, v20, v21, v22, v23, v24, ":", 3992, &unk_223E5FC53, &unk_223E5FC53);
    OUTLINED_FUNCTION_32_0();
  }

  OUTLINED_FUNCTION_52_0(__src);
  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

void aks_sealed_hashes_set()
{
  OUTLINED_FUNCTION_5_1();
  v19[1] = *MEMORY[0x277D85DE8];
  if (v1 && v0 <= 0x30)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v3 = aks_client_connection;
      ccder_sizeof_raw_octet_string();
      ccder_sizeof_uint64();
      ccder_sizeof_raw_octet_string();
      v4 = ccder_sizeof();
      MEMORY[0x28223BE20]();
      v6 = v19 - v5;
      bzero(v19 - v5, v4);
      ccder_encode_raw_octet_string();
      ccder_encode_uint64();
      ccder_encode_raw_octet_string();
      if (ccder_encode_constructed_tl() == v6)
      {
        OUTLINED_FUNCTION_7(v3, 0x72u, 0, 0, v6, v4, v7, v8, 0, 0);
      }

      else
      {
        OUTLINED_FUNCTION_17_1();
      }
    }

    else
    {
      OUTLINED_FUNCTION_12_1();
      v10 = *MEMORY[0x277D85E08];
      OUTLINED_FUNCTION_0_1();
      fprintf(v11, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v12, v13, v14, v15, v16, v17, v18, ":", 4036, &unk_223E5FC53, &unk_223E5FC53);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
}

void aks_memento_get_state()
{
  v0 = MEMORY[0x28223BE20]();
  v34[1] = *MEMORY[0x277D85DE8];
  v34[0] = v0;
  OUTLINED_FUNCTION_72(v0, v1, v2, v3, v4, v5, v6, v7, v20, v21, v22, v24, v26, v28);
  __n = 4096;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v14 = OUTLINED_FUNCTION_3_3(aks_client_connection, 0x8Bu, v34, v9, v10, v11, v12, v13, v33, &__n);
    v15 = __n;
    if (!v14)
    {
      OUTLINED_FUNCTION_33_0();
      if (v15 - 4097 >= 0xFFFFFFFFFFFFF000)
      {
        decode_memento_state(v33);
        v15 = __n;
      }
    }
  }

  else
  {
    v17 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v19, v23, v25, v27, v29, v30, v31, ":", 4130, &unk_223E5FC53, &unk_223E5FC53);
    v15 = 4096;
  }

  OUTLINED_FUNCTION_37(v33, v15);
  v16 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_38_0();
}

uint64_t aks_get_cx_window()
{
  v0 = MEMORY[0x28223BE20]();
  v20[512] = *MEMORY[0x277D85DE8];
  v19 = 4096;
  if (v0)
  {
    v1 = v0;
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v3 = aks_client_connection;
      bzero(v20, 0x1000uLL);
      result = OUTLINED_FUNCTION_1_2(v3, 0x98u, 0, 0, v4, v5, v6, v7, v20, &v19);
      if (!result)
      {
        if (v19 == 8)
        {
          result = 0;
          *v1 = v20[0];
        }

        else
        {
          result = OUTLINED_FUNCTION_58();
        }
      }
    }

    else
    {
      v10 = *MEMORY[0x277D85E08];
      OUTLINED_FUNCTION_0_1();
      fprintf(v11, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v12, v13, v14, v15, v16, v17, v18, ":", 4183, &unk_223E5FC53, &unk_223E5FC53);
      result = OUTLINED_FUNCTION_14_0();
    }
  }

  else
  {
    result = 4294967285;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void AKSGetStashStats()
{
  OUTLINED_FUNCTION_70();
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v29 = *MEMORY[0x277D85DE8];
  v27 = 4096;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v9 = aks_client_connection;
    bzero(v28, 0x1000uLL);
    if (!OUTLINED_FUNCTION_1_2(v9, 0x9Eu, 0, 0, v10, v11, v12, v13, v28, &v27) && !stash_stats_deserialize(v28, v27, &v24))
    {
      if (v7)
      {
        *v7 = *(&v26 + 1);
      }

      if (v6)
      {
        *v6 = v26;
      }

      if (v4)
      {
        *v4 = *(&v25 + 1);
      }

      if (v2)
      {
        *v2 = v25;
      }
    }
  }

  else
  {
    v15 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_1();
    fprintf(v16, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v17, v18, v19, v20, v21, v22, v23, ":", 4204, &unk_223E5FC53, &unk_223E5FC53);
  }

  v14 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_69();
}

uint64_t _copy_cf_key(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  value = 0;
  result = CFDictionaryGetValueIfPresent(a1, a2, &value);
  if (result)
  {
    if (CFGetTypeID(value) == a3)
    {
      if (CFNumberGetTypeID() == a3)
      {
        v8 = 0;
        if (!CFNumberGetValue(value, kCFNumberSInt64Type, &v8))
        {
          return 0xFFFFFFFFLL;
        }

        v5 = OUTLINED_FUNCTION_49();
        if (encode_list_add_number(v5, v6, v7))
        {
          return 0xFFFFFFFFLL;
        }

        return 0;
      }

      if (CFBooleanGetTypeID() == a3)
      {
        CFBooleanGetValue(value);
        OUTLINED_FUNCTION_49();
        if (encode_list_add_BOOL())
        {
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        if (CFDataGetTypeID() != a3)
        {
          return 0xFFFFFFFFLL;
        }

        CFDataGetBytePtr(value);
        CFDataGetLength(value);
        OUTLINED_FUNCTION_49();
        if (encode_list_add_data())
        {
          return 0xFFFFFFFFLL;
        }
      }

      return 0;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t aks_stash_destroy_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 128, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_stash_commit_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 141, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_stash_enable_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 157, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_stash_persist_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 173, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_invalidate_sync_bags_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 565, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_unload_bag_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 645, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_unload_session_bags_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 662, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_change_secret_with_kek_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 718, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_lock_bag_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 843, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t _aks_unlock_bag_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 860, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t _aks_set_system_with_passcode_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 1015, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_assert_hold_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 1773, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_assert_drop_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 1791, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_assert_promote_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 1806, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_oneness_heartbeat_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 1826, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_assert_consume_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 1841, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t _aks_recover_with_escrow_bag_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 1858, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_generation_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 1912, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_register_for_notifications_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2001, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_clear_backup_bag_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2290, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_remote_reset_all_peers_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2370, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_remote_peer_drop_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2459, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_lock_device_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2474, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_lock_cx_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2494, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_unlock_device_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2509, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_unlock_device_with_acm_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2524, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_obliterate_class_d_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2547, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_migrate_s_key_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2559, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_smartcard_unregister_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2604, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_se_fail_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2781, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_se_set_healthy_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2797, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t __aks_se_set_secret_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2813, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_se_recover_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2841, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_se_recover_with_acm_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2857, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t _aks_change_secret_epilogue_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2883, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_se_set_nonce_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 2999, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_se_delete_reset_token_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 3077, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_se_support_in_rm_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 3094, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_se_support_in_rm_is_set_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 3110, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_se_stage_stash_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 3127, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_enable_cache_flow_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 3225, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_drop_auxiliary_auth_by_uid_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 3642, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_drop_auxiliary_auth_by_handle_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 3658, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_lower_iteration_count_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 3672, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_reset_iteration_count_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 3686, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_se_secret_drop_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 3702, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_se_memento_secret_drop_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 3718, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_prewarm_sps_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 4019, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_measure_and_seal_cryptex_manifest_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 4066, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_seal_cryptex_manifest_lock_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 4080, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_lkgp_recover_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 4096, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_memento_efface_blob_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 4112, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_set_jcop_supports_updated_kud_policy_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 4150, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t aks_set_cx_window_cold_1()
{
  v0 = *MEMORY[0x277D85E08];
  OUTLINED_FUNCTION_0_1();
  return fprintf(v1, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v2, v4, v5, v6, v7, v8, v9, ":", 4166, &unk_223E5FC53, &unk_223E5FC53);
}

uint64_t get_kcv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(__s, 0, sizeof(__s));
  if (a4 == 3)
  {
    ccsha256_di();
    cchmac();
    v5 = 0;
    *a3 = __s[0];
    *(a3 + 2) = BYTE2(__s[0]);
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  memset_s(__s, 0x20uLL, 0, 0x20uLL);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t print_kcv(const char *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v5 = 0;
  get_kcv(a2, a3, &v5, 3);
  return dump_bytes_internal(a1, &v5, 3uLL);
}

uint64_t ascii_hex_to_bytes(unsigned __int8 *a1, unint64_t a2, void *a3, unint64_t *a4)
{
  v5 = 0xFFFFFFFFLL;
  if ((a2 & 1) == 0)
  {
    v6 = a1;
    if (a1)
    {
      if (a3 && a4)
      {
        v9 = a2 >> 1;
        v10 = calloc(a2 >> 1, 1uLL);
        if (v10)
        {
          if (a2 >= 2)
          {
            v11 = a2 >> 1;
            v12 = v10;
            do
            {
              v13 = *v6;
              v14 = v13 - 48;
              v15 = v13 - 97;
              if ((v13 - 65) >= 6)
              {
                v16 = -1;
              }

              else
              {
                v16 = v13 - 55;
              }

              v17 = v13 - 87;
              if (v15 > 5)
              {
                v17 = v16;
              }

              if (v14 < 0xA)
              {
                v17 = v14;
              }

              v18 = 16 * v17;
              v19 = v6[1];
              v20 = v19 - 48;
              v21 = v19 - 97;
              if ((v19 - 65) >= 6)
              {
                v22 = -1;
              }

              else
              {
                v22 = v19 - 55;
              }

              v23 = v19 - 87;
              if (v21 > 5)
              {
                v23 = v22;
              }

              if (v20 < 0xA)
              {
                v23 = v20;
              }

              *v12++ = v23 | v18;
              v6 += 2;
              --v11;
            }

            while (v11);
          }

          v5 = 0;
          *a3 = v10;
          *a4 = v9;
        }

        else
        {
          return 4294967279;
        }
      }
    }
  }

  return v5;
}

uint64_t fv_init_cred_from_secret(void *a1, uint64_t a2, char a3)
{
  memset_s(a1, 0x10uLL, 0, 0x10uLL);
  if (a2 && *a2 && (v6 = *(a2 + 8)) != 0)
  {
    if (a3)
    {
      return 4294967285;
    }

    else
    {
      v8 = calloc(v6, 1uLL);
      if (v8)
      {
        *a1 = v8;
        v9 = *a2;
        v10 = *(a2 + 8);
        a1[1] = v10;
        memcpy(v8, v9, v10);
        return 0;
      }

      else
      {
        return 4294967279;
      }
    }
  }

  else
  {
    result = 0;
    *a1 = 0;
    a1[1] = 0;
  }

  return result;
}

uint64_t copy_raw_secret(void **a1, _DWORD *a2, uint64_t a3, unsigned int a4, char a5)
{
  __s = 0;
  __n = 0;
  v10[0] = a3;
  v10[1] = a4;
  inited = fv_init_cred_from_secret(&__s, v10, a5);
  if (inited)
  {
    v8 = inited;
LABEL_7:
    memset_s(__s, __n, 0, __n);
    free(__s);
    return v8;
  }

  if (HIDWORD(__n))
  {
    v8 = 4294967286;
    goto LABEL_7;
  }

  v8 = 0;
  *a2 = __n;
  *a1 = __s;
  return v8;
}

uint64_t wrap_data(int *a1, uint64_t (*a2)(uint64_t, void *, uint64_t *, uint64_t *, uint64_t), char a3, uint64_t *a4, unsigned int a5, uint64_t a6, unsigned int *a7, int a8)
{
  v60 = *MEMORY[0x277D85DE8];
  HIDWORD(v53) = 0;
  v58 = 0u;
  v59 = 0u;
  __s = 0u;
  v57 = 0u;
  *v54 = 0u;
  v55 = 0u;
  v9 = 0xFFFFFFFFLL;
  if (a6 && a7)
  {
    v14 = a1;
    if (a1)
    {
      v15 = *a1;
      if ((*a1 - 1) < 2)
      {
        if ((a3 & 4) != 0)
        {
          v16 = 64;
        }

        else
        {
          v16 = 72;
        }

        HIDWORD(v53) = v16;
        v9 = 0xFFFFFFFFLL;
        if (a2)
        {
          goto LABEL_45;
        }

        v17 = a5 == 32 && *a7 >= v16;
        if (!v17)
        {
          goto LABEL_45;
        }

        v18 = v16;
        if (v15 == 1)
        {
          LODWORD(a1) = generate_wrapping_key_curve25519((a1 + 10), &__s);
        }

        else
        {
          v30 = *(a1 + 6);
          __s = *(a1 + 2);
          v57 = v30;
          v31 = *(a1 + 14);
          v58 = *(a1 + 10);
          v59 = v31;
        }

        if ((a3 & 0x80) == 0)
        {
          v32 = v57;
          *a6 = __s;
          *(a6 + 16) = v32;
          if ((a3 & 4) != 0)
          {
            v33 = ccaes_cbc_encrypt_mode();
            v34 = firebloom_cbc_one_shot_f(v33, 32, &v58, &firebloom_null_iv, 0x20uLL);
            v35 = OUTLINED_FUNCTION_4_2(v34);
            LODWORD(a1) = REQUIRE_func(v35, 166, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
LABEL_39:
            v47 = v18;
            v9 = 0;
LABEL_44:
            *a7 = v47;
            goto LABEL_45;
          }

          LODWORD(v53) = 40;
          if ((a3 & 8) != 0)
          {
            v39 = ccsha256_di();
            v52 = v54;
            OUTLINED_FUNCTION_0_3(v39, v40, &v58);
          }

          OUTLINED_FUNCTION_3_4();
          LODWORD(a1) = rfc3394_wrap_legacy(v41, v42, v43, v44, a4, 0x20u, v45, v46);
          if (!a1)
          {
            goto LABEL_39;
          }
        }

        goto LABEL_48;
      }

      if (v15)
      {
        goto LABEL_48;
      }
    }

    if (a2)
    {
      v21 = OUTLINED_FUNCTION_5_2();
      LODWORD(a1) = rfc3394_wrapped_size_legacy(v21, v22);
      if (a1)
      {
        OUTLINED_FUNCTION_1_4();
        if (!v17)
        {
          goto LABEL_48;
        }

        v23 = 0;
        v24 = 0;
        v25 = a2;
        v26 = a4;
LABEL_42:
        LODWORD(a1) = rfc3394_wrap_legacy(v23, v24, 0xA6A6A6A6A6A6A6A6, v25, v26, a5, a6, &v53 + 1);
        if (!a1)
        {
          goto LABEL_43;
        }

LABEL_48:
        v9 = 0xFFFFFFFFLL;
        goto LABEL_45;
      }
    }

    else
    {
      if ((a3 & 4) != 0)
      {
        if ((a5 & 0xF) != 0 || *a7 < a5)
        {
          goto LABEL_48;
        }

        HIDWORD(v53) = a5;
        v36 = ccaes_cbc_encrypt_mode();
        v37 = firebloom_cbc_one_shot_f(v36, 32, (v14 + 3), &firebloom_null_iv, a5);
        v38 = OUTLINED_FUNCTION_4_2(v37);
        LODWORD(a1) = REQUIRE_func(v38, 121, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
LABEL_43:
        v9 = 0;
        v47 = HIDWORD(v53);
        goto LABEL_44;
      }

      v28 = OUTLINED_FUNCTION_5_2();
      LODWORD(a1) = rfc3394_wrapped_size_legacy(v28, v29);
      if (a1)
      {
        OUTLINED_FUNCTION_1_4();
        if (!v17)
        {
          goto LABEL_48;
        }

        if ((a3 & 8) != 0)
        {
          v48 = ccsha256_di();
          v52 = v54;
          OUTLINED_FUNCTION_0_3(v48, v49, (v14 + 3));
          v23 = v54;
        }

        else
        {
          v23 = (v14 + 3);
        }

        v24 = 32;
        v25 = 0;
        v26 = a4;
        goto LABEL_42;
      }
    }

    v9 = 4294967285;
  }

LABEL_45:
  if ((a3 & 8) != 0)
  {
    OUTLINED_FUNCTION_0_2(a1, a2, a3, a4, a5, a6, a7, a8, v52, v53, v54[0]);
  }

  memset_s(&__s, 0x40uLL, 0, 0x40uLL);
  v50 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t unwrap_data(_DWORD *a1, uint64_t (*a2)(void, void *, unint64_t *, unint64_t *, uint64_t), char a3, void *a4, unsigned int a5, void *a6, unsigned int *a7)
{
  v56 = *MEMORY[0x277D85DE8];
  HIDWORD(v52) = 0;
  memset(__s, 0, sizeof(__s));
  v8 = 0xFFFFFFFFLL;
  if (a4 && a5)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

    if (*a1 != 1)
    {
      if (!*a1)
      {
LABEL_6:
        if (a5 <= 0x28)
        {
          if (a2)
          {
            v15 = OUTLINED_FUNCTION_5_2();
            if (!rfc3394_unwrapped_size_legacy(v15, v16))
            {
              goto LABEL_40;
            }

            OUTLINED_FUNCTION_1_4();
            if (!v17)
            {
              goto LABEL_40;
            }

            v18 = &v52 + 1;
            v19 = 0;
            v20 = 0;
            v21 = 0xA6A6A6A6A6A6A6A6;
            v22 = a2;
          }

          else
          {
            if ((a3 & 4) != 0)
            {
              if ((a5 & 0xF) != 0 || *a7 < a5)
              {
                goto LABEL_40;
              }

              HIDWORD(v52) = a5;
              v25 = ccaes_cbc_decrypt_mode();
              v26 = firebloom_cbc_one_shot_f(v25, 32, (a1 + 3), &firebloom_null_iv, a5);
              v27 = OUTLINED_FUNCTION_4_2(v26);
              REQUIRE_func(v27, 273, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
LABEL_33:
              v8 = 0;
              *a7 = HIDWORD(v52);
              goto LABEL_37;
            }

            v23 = OUTLINED_FUNCTION_5_2();
            if (!rfc3394_unwrapped_size_legacy(v23, v24))
            {
              goto LABEL_40;
            }

            OUTLINED_FUNCTION_1_4();
            if (!v17)
            {
              goto LABEL_40;
            }

            if ((a3 & 8) != 0)
            {
              v39 = ccsha256_di();
              OUTLINED_FUNCTION_0_3(v39, v40, (a1 + 3));
            }

            OUTLINED_FUNCTION_3_4();
          }

          if (!rfc3394_unwrap_legacy(v19, v20, v21, v22, a4, a5, a6, v18))
          {
            goto LABEL_33;
          }
        }

        goto LABEL_42;
      }

LABEL_24:
      v8 = 0xFFFFFFFFLL;
      goto LABEL_37;
    }

    HIDWORD(v52) = 32;
    if (*a7 >= 0x20)
    {
      *v53 = 0uLL;
      v54 = 0uLL;
      if ((a3 & 4) != 0)
      {
        if (a5 == 64)
        {
          OUTLINED_FUNCTION_6_3();
          v28 = ccaes_cbc_decrypt_mode();
          v29 = firebloom_cbc_one_shot_f(v28, 32, v53, &firebloom_null_iv, 0x20uLL);
          v30 = OUTLINED_FUNCTION_4_2(v29);
          v31 = REQUIRE_func(v30, 296, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
          goto LABEL_36;
        }
      }

      else if (a5 == 72)
      {
        OUTLINED_FUNCTION_6_3();
        if (a3 < 0)
        {
          goto LABEL_24;
        }

        LODWORD(v52) = 32;
        if ((a3 & 8) != 0)
        {
          v41 = ccsha256_di();
          v51 = __s;
          OUTLINED_FUNCTION_0_3(v41, v42, v53);
        }

        OUTLINED_FUNCTION_3_4();
        v31 = rfc3394_unwrap_legacy(v43, v44, v45, v46, v47, 0x28u, a6, v48);
        if (v31)
        {
          OUTLINED_FUNCTION_0_2(v31, v32, v33, v34, v35, v36, v37, v38, v51, v52, v53[0]);
LABEL_42:
          v8 = 4294967277;
          goto LABEL_37;
        }

LABEL_36:
        OUTLINED_FUNCTION_0_2(v31, v32, v33, v34, v35, v36, v37, v38, v51, v52, v53[0]);
        v8 = 0;
        *a7 = 32;
        goto LABEL_37;
      }
    }

LABEL_40:
    v8 = 4294967285;
  }

LABEL_37:
  if ((a3 & 8) != 0)
  {
    memset_s(__s, 0x20uLL, 0, 0x20uLL);
  }

  v49 = *MEMORY[0x277D85DE8];
  return v8;
}