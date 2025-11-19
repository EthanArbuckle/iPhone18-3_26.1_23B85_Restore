void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_7(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id OUTLINED_FUNCTION_0_8(id a1)
{

  return a1;
}

void sub_25181E188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25181E508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
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

void sub_25181ED94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_25181FD94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2518211C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

void sub_251823ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25182961C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25182A51C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HDCodableMedicationScheduleReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
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
      LOBYTE(v61) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v61 & 0x7F) << v5;
      if ((v61 & 0x80) == 0)
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

    switch((v12 >> 3))
    {
      case 1u:
        v13 = PBReaderReadData();
        v14 = 120;
        goto LABEL_83;
      case 2u:
        v13 = PBReaderReadString();
        v14 = 88;
        goto LABEL_83;
      case 3u:
        *(a1 + 132) |= 0x20u;
        v61 = 0;
        v35 = [a2 position] + 8;
        if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 8, v36 <= objc_msgSend(a2, "length")))
        {
          v58 = [a2 data];
          [v58 getBytes:&v61 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v54 = v61;
        v55 = 48;
        goto LABEL_109;
      case 4u:
        *(a1 + 132) |= 4u;
        v61 = 0;
        v31 = [a2 position] + 8;
        if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 8, v32 <= objc_msgSend(a2, "length")))
        {
          v56 = [a2 data];
          [v56 getBytes:&v61 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v54 = v61;
        v55 = 24;
        goto LABEL_109;
      case 5u:
        v13 = PBReaderReadString();
        v14 = 64;
        goto LABEL_83;
      case 6u:
        *(a1 + 132) |= 8u;
        v61 = 0;
        v33 = [a2 position] + 8;
        if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 8, v34 <= objc_msgSend(a2, "length")))
        {
          v57 = [a2 data];
          [v57 getBytes:&v61 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v54 = v61;
        v55 = 32;
        goto LABEL_109;
      case 7u:
        v43 = objc_alloc_init(MEMORY[0x277D10628]);
        objc_storeStrong((a1 + 72), v43);
        v61 = 0;
        v62 = 0;
        if (!PBReaderPlaceMark() || !HDCodableDateComponentsReadFrom())
        {
          goto LABEL_112;
        }

        goto LABEL_86;
      case 8u:
        v13 = PBReaderReadString();
        v14 = 104;
        goto LABEL_83;
      case 9u:
        v13 = PBReaderReadData();
        v14 = 96;
LABEL_83:
        v50 = *(a1 + v14);
        *(a1 + v14) = v13;

        goto LABEL_110;
      case 0xAu:
        *(a1 + 132) |= 1u;
        v61 = 0;
        v29 = [a2 position] + 8;
        if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 8, v30 <= objc_msgSend(a2, "length")))
        {
          v53 = [a2 data];
          [v53 getBytes:&v61 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v54 = v61;
        v55 = 8;
LABEL_109:
        *(a1 + v55) = v54;
        goto LABEL_110;
      case 0xBu:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 132) |= 0x40u;
        while (1)
        {
          LOBYTE(v61) = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v61 & 0x7F) << v37;
          if ((v61 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v11 = v38++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_92;
          }
        }

        v21 = (v39 != 0) & ~[a2 hasError];
LABEL_92:
        v52 = 128;
        goto LABEL_100;
      case 0xCu:
        v43 = objc_alloc_init(MEMORY[0x277D10650]);
        objc_storeStrong((a1 + 112), v43);
        v61 = 0;
        v62 = 0;
        if (!PBReaderPlaceMark() || !HDCodableSyncIdentityReadFrom())
        {
          goto LABEL_112;
        }

        goto LABEL_86;
      case 0xDu:
        v43 = objc_alloc_init(HDCodableMedicationScheduleCompatibilityVersionRange);
        objc_storeStrong((a1 + 56), v43);
        v61 = 0;
        v62 = 0;
        if (!PBReaderPlaceMark() || !HDCodableMedicationScheduleCompatibilityVersionRangeReadFrom(v43, a2))
        {
          goto LABEL_112;
        }

        goto LABEL_86;
      case 0xEu:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        *(a1 + 132) |= 0x10u;
        while (1)
        {
          LOBYTE(v61) = 0;
          v47 = [a2 position] + 1;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v46 |= (v61 & 0x7F) << v44;
          if ((v61 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v11 = v45++ >= 9;
          if (v11)
          {
            v28 = 0;
            goto LABEL_96;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v46;
        }

LABEL_96:
        v51 = 40;
        goto LABEL_97;
      case 0xFu:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 132) |= 2u;
        while (1)
        {
          LOBYTE(v61) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v61 & 0x7F) << v22;
          if ((v61 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
          if (v11)
          {
            v28 = 0;
            goto LABEL_90;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v24;
        }

LABEL_90:
        v51 = 16;
LABEL_97:
        *(a1 + v51) = v28;
        goto LABEL_110;
      case 0x10u:
      case 0x11u:
      case 0x12u:
      case 0x13u:
        goto LABEL_29;
      case 0x14u:
        v43 = objc_alloc_init(HDCodableMedicationScheduleIntervalData);
        [a1 addIntervalData:v43];
        v61 = 0;
        v62 = 0;
        if (PBReaderPlaceMark() && HDCodableMedicationScheduleIntervalDataReadFrom(v43, a2))
        {
LABEL_86:
          PBReaderRecallMark();

LABEL_110:
          v59 = [a2 position];
          if (v59 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_112:

        return 0;
      default:
        if ((v12 >> 3) == 100)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 132) |= 0x80u;
          while (1)
          {
            LOBYTE(v61) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v61 & 0x7F) << v15;
            if ((v61 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_99;
            }
          }

          v21 = (v17 != 0) & ~[a2 hasError];
LABEL_99:
          v52 = 129;
LABEL_100:
          *(a1 + v52) = v21;
        }

        else
        {
LABEL_29:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }
        }

        goto LABEL_110;
    }
  }
}

id OUTLINED_FUNCTION_1_2(uint64_t a1, uint64_t a2, void *a3)
{

  return a3;
}

void sub_25182E79C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25182E8D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25182ECEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_25182FE50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_7(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_DEFAULT, a4, a5, 0xCu);
}

void OUTLINED_FUNCTION_8(uint64_t a1)
{
  v2 = *(a1 + 16);

  dispatch_assert_queue_V2(v2);
}

void OUTLINED_FUNCTION_11(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint8_t buf)
{

  _os_log_debug_impl(a1, v15, OS_LOG_TYPE_DEBUG, a4, &buf, 0x16u);
}

BOOL OUTLINED_FUNCTION_13(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

BOOL OUTLINED_FUNCTION_14(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

id HDMedicationDailyAnalyticsBucketForCount(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 integerValue];
    if (v3 > 5)
    {
      v5 = &unk_2863C27E0;
      v6 = &unk_2863C27F8;
      v7 = &unk_2863C2810;
      v8 = &unk_2863C2840;
      if (v3 < 0x33)
      {
        v8 = &unk_2863C2828;
      }

      if (v3 >= 0x29)
      {
        v7 = v8;
      }

      if (v3 >= 0x1F)
      {
        v6 = v7;
      }

      if (v3 >= 0x15)
      {
        v5 = v6;
      }

      if (v3 >= 0xB)
      {
        v4 = v5;
      }

      else
      {
        v4 = &unk_2863C27C8;
      }
    }

    else
    {
      v4 = v2;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_251833A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_251833F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_251834280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_251834638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_251834C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25183548C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2518358B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_251835D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2518360F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25183794C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_5_0(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  return result;
}

void OUTLINED_FUNCTION_8_0(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x16u);
}

void sub_251838494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_251839964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_1_4(float a1)
{
  *(v2 - 144) = a1;
  *(v2 - 140) = v1;
  *(v2 - 132) = 2114;
}

void OUTLINED_FUNCTION_2_1(float a1)
{
  *(v2 - 144) = a1;
  *(v2 - 140) = v1;
  *(v2 - 132) = 2114;
}

void OUTLINED_FUNCTION_10_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

void OUTLINED_FUNCTION_11_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, OS_LOG_TYPE_INFO, a4, (v5 - 144), 0xCu);
}

id OUTLINED_FUNCTION_16(id a1)
{

  return a1;
}

BOOL OUTLINED_FUNCTION_21(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_22(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_23(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 0xCu);
}

BOOL OUTLINED_FUNCTION_24(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

BOOL OUTLINED_FUNCTION_25(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

BOOL OUTLINED_FUNCTION_28(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

uint64_t HDCodableMedicationScheduleCollectionReadFrom(void *a1, void *a2)
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
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
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
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HDCodableMedicationScheduleData);
        [a1 addSchedules:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HDCodableMedicationScheduleDataReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_25183CD1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDCodableMedicationScheduleIntervalDataReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v40[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40[0] & 0x7F) << v5;
        if ((v40[0] & 0x80) == 0)
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
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 48) |= 4u;
          while (1)
          {
            LOBYTE(v40[0]) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:v40 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v40[0] & 0x7F) << v16;
            if ((v40[0] & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_69;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_69:
          v36 = 24;
          goto LABEL_70;
        }

LABEL_56:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_73;
      }

      v35 = objc_alloc_init(MEMORY[0x277D10628]);
      objc_storeStrong((a1 + 40), v35);
      v40[0] = 0;
      v40[1] = 0;
      if (!PBReaderPlaceMark() || !HDCodableDateComponentsReadFrom())
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_73:
      v38 = [a2 position];
      if (v38 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 3:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 48) |= 1u;
        while (1)
        {
          LOBYTE(v40[0]) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v40[0] & 0x7F) << v23;
          if ((v40[0] & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_61;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v25;
        }

LABEL_61:
        v36 = 8;
        goto LABEL_70;
      case 4:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 48) |= 2u;
        while (1)
        {
          LOBYTE(v40[0]) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v40[0] & 0x7F) << v29;
          if ((v40[0] & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v11 = v30++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_65;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v31;
        }

LABEL_65:
        v36 = 16;
LABEL_70:
        *(a1 + v36) = v22;
        goto LABEL_73;
      case 5:
        *(a1 + 48) |= 8u;
        v40[0] = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v37 = [a2 data];
          [v37 getBytes:v40 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 32) = v40[0];
        goto LABEL_73;
    }

    goto LABEL_56;
  }

  return [a2 hasError] ^ 1;
}

void sub_25183E928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HDCodableMedicationMonthHighlightReadFrom(void *a1, void *a2)
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
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
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
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HDCodableHighlightDay);
        [a1 addDays:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HDCodableHighlightDayReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_251841530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDMedicationScheduleItemPredicateForNotificationSent(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  return [MEMORY[0x277D10B18] predicateWithProperty:@"notification_sent" value:a1 comparisonType:v2];
}

id HDMedicationScheduleItemPredicateForScheduledDateTime(uint64_t a1)
{
  v2 = MEMORY[0x277D10B18];
  v3 = _HDSQLiteValueForDate();
  v4 = [v2 predicateWithProperty:@"scheduled_date_time" value:v3 comparisonType:a1];

  return v4;
}

uint64_t HDMedicationScheduleItemPredicateForIdentifier(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  return [MEMORY[0x277D10B18] predicateWithProperty:@"identifier" value:a1 comparisonType:v2];
}

id HDDismissedDrugInteractionResultPredicateForDrugClassAncestorIdentifier(void *a1)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277D10B18];
  v2 = MEMORY[0x277CCABB0];
  v3 = a1;
  v4 = [v2 numberWithLongLong:{objc_msgSend(v3, "rawIdentifier")}];
  v5 = [v1 predicateWithProperty:@"first_drug_class_ancestor_identifier" equalToValue:v4];

  v6 = MEMORY[0x277D10B18];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v3 rawIdentifier];

  v9 = [v7 numberWithLongLong:v8];
  v10 = [v6 predicateWithProperty:@"second_drug_class_ancestor_identifier" equalToValue:v9];

  v11 = MEMORY[0x277D10B20];
  v16[0] = v5;
  v16[1] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v13 = [v11 predicateMatchingAnyPredicates:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void sub_251842FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t HDCodableMedicationScheduleDataReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 != 3)
      {
        if (v13 == 100)
        {
          v16 = PBReaderReadData();
          v17 = 24;
LABEL_29:
          v18 = *(a1 + v17);
          *(a1 + v17) = v16;

          goto LABEL_35;
        }

        goto LABEL_26;
      }

      v19 = objc_alloc_init(HDCodableMedicationScheduleCompatibilityVersionRange);
      objc_storeStrong((a1 + 16), v19);
      v23[0] = 0;
      v23[1] = 0;
      if (!PBReaderPlaceMark() || !HDCodableMedicationScheduleCompatibilityVersionRangeReadFrom(v19, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_35:
      v21 = [a2 position];
      if (v21 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v16 = PBReaderReadData();
      v17 = 32;
      goto LABEL_29;
    }

    if (v13 == 2)
    {
      *(a1 + 40) |= 1u;
      v23[0] = 0;
      v14 = [a2 position] + 8;
      if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
      {
        v20 = [a2 data];
        [v20 getBytes:v23 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      *(a1 + 8) = v23[0];
      goto LABEL_35;
    }

LABEL_26:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_35;
  }

  return [a2 hasError] ^ 1;
}

void sub_25184548C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_251845700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2518458FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25184705C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_251847280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_251847BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t BoolValueFromIdentifierForKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 componentsSeparatedByString:{@", "}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __KeyValuePairFromIdentifierForKey_block_invoke;
  v11[3] = &unk_2796CE388;
  v12 = v3;
  v5 = v3;
  v6 = [v4 hk_firstObjectPassingTest:v11];

  v7 = [v6 componentsSeparatedByString:@":"];
  v8 = [v7 lastObject];

  v9 = [v8 BOOLValue];
  return v9;
}

uint64_t __KeyValuePairFromIdentifierForKey_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 componentsSeparatedByString:@":"];
  v4 = [v3 firstObject];

  v5 = [v4 isEqualToString:*(a1 + 32)];
  return v5;
}

id HDDismissedPregnancyLactationInteractionPredicateForMedicationIdentifiersAndInteractionTypes(void *a1, void *a2)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1 hk_map:&__block_literal_global_12];
  v5 = [MEMORY[0x277D10B28] containsPredicateWithProperty:@"medication_identifier" values:v4];
  if ([v3 count])
  {
    v6 = [MEMORY[0x277D10B28] containsPredicateWithProperty:@"interaction_type" values:v3];
    v7 = MEMORY[0x277D10B20];
    v12[0] = v5;
    v12[1] = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
    v9 = [v7 predicateMatchingAllPredicates:v8];
  }

  else
  {
    v9 = v5;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t __HDDismissedPregnancyLactationInteractionPredicateForMedicationIdentifiersAndInteractionTypes_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 rawIdentifier];

  return [v2 numberWithLongLong:v3];
}

id HDDismissedPregnancyLactationInteractionPredicateForMedicationIdentifiers(void *a1)
{
  v1 = [a1 hk_map:&__block_literal_global_360];
  v2 = [MEMORY[0x277D10B28] containsPredicateWithProperty:@"medication_identifier" values:v1];

  return v2;
}

uint64_t __HDDismissedPregnancyLactationInteractionPredicateForMedicationIdentifiers_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 rawIdentifier];

  return [v2 numberWithLongLong:v3];
}

void sub_25184CE80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25184DCB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25184FF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2518511A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25185211C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_2518532FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _HDCalculateMedicationScheduleSyncAnchorOffset(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = _HDGetMaximumSyncAnchor(v3, 1, a2);
  v5 = _HDGetMaximumSyncAnchor(v3, 2, a2);
  v6 = -1;
  if (v4 != -1 && v5 != -1)
  {
    if (v4 <= v5)
    {
      v4 = v5;
    }

    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v7 = [v3 protectedDatabase];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = ___HDCalculateMedicationScheduleSyncAnchorOffset_block_invoke;
    v12[3] = &unk_2796CE5C8;
    v12[4] = &v13;
    v8 = [v7 executeUncachedSQL:@"SELECT MIN(ROWID) from medication_schedules" error:a2 bindingHandler:0 enumerationHandler:v12];

    if (v8)
    {
      v9 = v14[3];
      if (v9)
      {
        v10 = v4 - v9 + 1;
      }

      else
      {
        v10 = 0;
      }

      if (v9 <= v4)
      {
        v6 = v10;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = -1;
    }

    _Block_object_dispose(&v13, 8);
  }

  return v6;
}

void sub_251853C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _HDGetMaximumSyncAnchor(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT MAX(next) from sync_anchors WHERE schema=medication AND type=%d", a2];
  v7 = [v5 unprotectedDatabase];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___HDGetMaximumSyncAnchor_block_invoke;
  v10[3] = &unk_2796CE5C8;
  v10[4] = &v11;
  LOBYTE(a3) = [v7 executeUncachedSQL:v6 error:a3 bindingHandler:0 enumerationHandler:v10];

  if (a3)
  {
    v8 = v12[3];
  }

  else
  {
    v8 = -1;
  }

  _Block_object_dispose(&v11, 8);
  return v8;
}

void sub_251854100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2518588BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_251858B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_251858DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HDCodableMedicationScheduleCompatibilityVersionRangeReadFrom(uint64_t a1, void *a2)
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
        *(a1 + 24) |= 1u;
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
            v21 = &OBJC_IVAR___HDCodableMedicationScheduleCompatibilityVersionRange__minimum;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___HDCodableMedicationScheduleCompatibilityVersionRange__minimum;
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
    *(a1 + 24) |= 2u;
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
        v21 = &OBJC_IVAR___HDCodableMedicationScheduleCompatibilityVersionRange__origin;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___HDCodableMedicationScheduleCompatibilityVersionRange__origin;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableHighlightDayReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
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
        v34 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34 & 0x7F) << v5;
        if ((v34 & 0x80) == 0)
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
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 20) |= 2u;
        while (1)
        {
          v35 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v35 & 0x7F) << v23;
          if ((v35 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            LOBYTE(v22) = 0;
            goto LABEL_46;
          }
        }

        v22 = (v25 != 0) & ~[a2 hasError];
LABEL_46:
        v30 = 16;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            *(a1 + 20) |= 1u;
            v33 = 0;
            v14 = [a2 position] + 8;
            if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:&v33 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 8) = v33;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_50;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 20) |= 4u;
        while (1)
        {
          v36 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v36 & 0x7F) << v16;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            LOBYTE(v22) = 0;
            goto LABEL_44;
          }
        }

        v22 = (v18 != 0) & ~[a2 hasError];
LABEL_44:
        v30 = 17;
      }

      *(a1 + v30) = v22;
LABEL_50:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableMedicationChartSeriesReadFrom(uint64_t a1, void *a2)
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
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
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

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___HDCodableMedicationChartSeries__sixMonthsData;
LABEL_21:
        v14 = PBReaderReadData();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___HDCodableMedicationChartSeries__monthData;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableMedicationShareableModelReadFrom(uint64_t a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v65) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v65 & 0x7F) << v6;
      if ((v65 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = PBReaderReadString();
        v15 = 80;
        goto LABEL_118;
      case 2u:
        v14 = PBReaderReadString();
        v15 = 40;
        goto LABEL_118;
      case 5u:
        v14 = PBReaderReadString();
        v15 = 48;
        goto LABEL_118;
      case 6u:
        v23 = PBReaderReadString();
        if (v23)
        {
          [a1 addIngredientComponentStrings:v23];
        }

        goto LABEL_106;
      case 7u:
        v14 = PBReaderReadString();
        v15 = 176;
        goto LABEL_118;
      case 8u:
        v14 = PBReaderReadString();
        v15 = 168;
        goto LABEL_118;
      case 9u:
        v14 = PBReaderReadString();
        v15 = 88;
        goto LABEL_118;
      case 0xAu:
        v14 = PBReaderReadString();
        v15 = 208;
        goto LABEL_118;
      case 0xCu:
        v14 = PBReaderReadString();
        v15 = 144;
        goto LABEL_118;
      case 0xDu:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        *(a1 + 220) |= 1u;
        while (1)
        {
          LOBYTE(v65) = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v65 & 0x7F) << v49;
          if ((v65 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v12 = v50++ >= 9;
          if (v12)
          {
            v36 = 0;
            goto LABEL_139;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v51;
        }

LABEL_139:
        v63 = 8;
        goto LABEL_140;
      case 0xEu:
        v23 = objc_alloc_init(HDCodableMedicationSchedule);
        objc_storeStrong((a1 + 200), v23);
        v65 = 0;
        v66 = 0;
        if (!PBReaderPlaceMark() || !HDCodableMedicationScheduleReadFrom(v23, a2))
        {
          goto LABEL_145;
        }

        goto LABEL_105;
      case 0xFu:
        v23 = objc_alloc_init(MEMORY[0x277D10630]);
        objc_storeStrong((a1 + 160), v23);
        v65 = 0;
        v66 = 0;
        if (!PBReaderPlaceMark() || !HDCodableMedicationDoseEventReadFrom())
        {
          goto LABEL_145;
        }

        goto LABEL_105;
      case 0x10u:
        v23 = objc_alloc_init(HDCodableMedicationMonthHighlight);
        [a1 addMonthHighlights:v23];
        v65 = 0;
        v66 = 0;
        if (!PBReaderPlaceMark() || !HDCodableMedicationMonthHighlightReadFrom(v23, a2))
        {
          goto LABEL_145;
        }

        goto LABEL_105;
      case 0x11u:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 220) |= 0x10u;
        while (1)
        {
          LOBYTE(v65) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v65 & 0x7F) << v16;
          if ((v65 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v12 = v17++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_121;
          }
        }

        v22 = (v18 != 0) & ~[a2 hasError];
LABEL_121:
        v62 = 216;
        goto LABEL_143;
      case 0x12u:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 220) |= 4u;
        while (1)
        {
          LOBYTE(v65) = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v65 & 0x7F) << v37;
          if ((v65 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v12 = v38++ >= 9;
          if (v12)
          {
            v36 = 0;
            goto LABEL_131;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v39;
        }

LABEL_131:
        v63 = 24;
        goto LABEL_140;
      case 0x13u:
        v43 = 0;
        v44 = 0;
        v45 = 0;
        *(a1 + 220) |= 8u;
        while (1)
        {
          LOBYTE(v65) = 0;
          v46 = [a2 position] + 1;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v45 |= (v65 & 0x7F) << v43;
          if ((v65 & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v12 = v44++ >= 9;
          if (v12)
          {
            v36 = 0;
            goto LABEL_135;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v45;
        }

LABEL_135:
        v63 = 32;
        goto LABEL_140;
      case 0x14u:
        v23 = objc_alloc_init(HDCodableMedicationChartSeries);
        objc_storeStrong((a1 + 72), v23);
        v65 = 0;
        v66 = 0;
        if (PBReaderPlaceMark() && HDCodableMedicationChartSeriesReadFrom(v23, a2))
        {
          goto LABEL_105;
        }

        goto LABEL_145;
      case 0x15u:
        v14 = PBReaderReadString();
        v15 = 184;
        goto LABEL_118;
      case 0x16u:
        v14 = PBReaderReadString();
        v15 = 64;
        goto LABEL_118;
      case 0x17u:
        v14 = PBReaderReadString();
        v15 = 112;
        goto LABEL_118;
      case 0x18u:
        v14 = PBReaderReadString();
        v15 = 136;
        goto LABEL_118;
      case 0x19u:
        v14 = PBReaderReadString();
        v15 = 56;
        goto LABEL_118;
      case 0x1Au:
        v14 = PBReaderReadString();
        v15 = 96;
        goto LABEL_118;
      case 0x1Bu:
        v23 = objc_alloc_init(MEMORY[0x277D10648]);
        objc_storeStrong((a1 + 104), v23);
        v65 = 0;
        v66 = 0;
        if (PBReaderPlaceMark() && HDCodableQuantityReadFrom())
        {
LABEL_105:
          PBReaderRecallMark();
LABEL_106:

LABEL_119:
          v4 = a2;
          continue;
        }

LABEL_145:

        return 0;
      case 0x1Cu:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 220) |= 2u;
        while (1)
        {
          LOBYTE(v65) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v65 & 0x7F) << v30;
          if ((v65 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v12 = v31++ >= 9;
          if (v12)
          {
            v36 = 0;
            goto LABEL_127;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v32;
        }

LABEL_127:
        v63 = 16;
LABEL_140:
        *(a1 + v63) = v36;
        goto LABEL_119;
      case 0x1Du:
        v14 = PBReaderReadString();
        v15 = 192;
        goto LABEL_118;
      case 0x1Eu:
        v14 = PBReaderReadString();
        v15 = 128;
LABEL_118:
        v61 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_119;
      case 0x1Fu:
        v55 = 0;
        v56 = 0;
        v57 = 0;
        *(a1 + 220) |= 0x40u;
        while (1)
        {
          LOBYTE(v65) = 0;
          v58 = [a2 position] + 1;
          if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
          {
            v60 = [a2 data];
            [v60 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v57 |= (v65 & 0x7F) << v55;
          if ((v65 & 0x80) == 0)
          {
            break;
          }

          v55 += 7;
          v12 = v56++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_142;
          }
        }

        v22 = (v57 != 0) & ~[a2 hasError];
LABEL_142:
        v62 = 218;
        goto LABEL_143;
      case 0x20u:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 220) |= 0x20u;
        while (1)
        {
          LOBYTE(v65) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v65 & 0x7F) << v24;
          if ((v65 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v12 = v25++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_123;
          }
        }

        v22 = (v26 != 0) & ~[a2 hasError];
LABEL_123:
        v62 = 217;
LABEL_143:
        *(a1 + v62) = v22;
        goto LABEL_119;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_119;
    }
  }
}

id HDMedicationSchedulePredicateForActiveMedications()
{
  v39[1] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(MEMORY[0x277D10B80]);
  [v0 setEntityClass:objc_opt_class()];
  v1 = HDListUserDomainConceptEntityPredicateForListType();
  [v0 setPredicate:v1];

  [v0 setLimitCount:1];
  v2 = [MEMORY[0x277D10B68] orderingTermWithProperty:*MEMORY[0x277D10528] entityClass:objc_opt_class() ascending:0];
  v37[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
  [v0 setOrderingTerms:v3];

  v4 = MEMORY[0x277D10B18];
  v38[0] = *MEMORY[0x277D10560];
  v5 = v38[0];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
  v7 = [v4 predicateWithProperty:v5 comparisonType:7 subqueryDescriptor:v0 subqueryProperties:v6];

  v8 = objc_alloc_init(MEMORY[0x277D10B80]);
  [v8 setEntityClass:objc_opt_class()];
  [v8 setPredicate:v7];

  v9 = MEMORY[0x277D10B18];
  v37[0] = *MEMORY[0x277D104F8];
  v10 = v37[0];
  v11 = MEMORY[0x277CBEA60];
  v12 = v8;
  v13 = [v11 arrayWithObjects:v37 count:1];
  v14 = [v9 predicateWithProperty:@"medication_uuid" comparisonType:7 subqueryDescriptor:v12 subqueryProperties:v13];

  v15 = MEMORY[0x277D10B18];
  v16 = *MEMORY[0x277D10558];
  v39[0] = v10;
  v17 = MEMORY[0x277CBEA60];
  v18 = v12;
  v19 = [v17 arrayWithObjects:v39 count:1];
  v20 = [v15 predicateWithProperty:v16 comparisonType:7 subqueryDescriptor:v18 subqueryProperties:v19];

  v21 = *MEMORY[0x277D10520];
  v22 = *MEMORY[0x277D10518];
  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"'medication' || ? || '0' || ? || %@ || ? || %@", *MEMORY[0x277D10520], *MEMORY[0x277D10518]];
  v24 = MEMORY[0x277D10B90];
  v38[0] = v21;
  v38[1] = v22;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
  v37[0] = *MEMORY[0x277CCCE50];
  v37[1] = v37[0];
  v37[2] = v37[0];
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:3];
  v27 = [v24 predicateWithSQL:@"(1=1)" overProperties:v25 values:v26];

  v28 = objc_alloc_init(MEMORY[0x277D10B80]);
  [v28 setEntityClass:objc_opt_class()];
  v29 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v27 otherPredicate:v20];
  [v28 setPredicate:v29];

  [v28 setReturnsDistinctEntities:1];
  v30 = MEMORY[0x277D10B18];
  v36 = v23;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
  v32 = [v30 predicateWithProperty:@"medication_identifier" comparisonType:7 subqueryDescriptor:v28 subqueryProperties:v31];

  v33 = [MEMORY[0x277D10B70] disjunctionWithPredicate:v14 otherPredicate:v32];

  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

void sub_251860A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id HDMedicationsScheduleEntityAllProperties()
{
  v6[16] = *MEMORY[0x277D85DE8];
  v6[0] = @"uuid";
  v6[1] = @"medication_uuid";
  v6[2] = @"medication_identifier";
  v6[3] = @"start_date_time";
  v6[4] = @"end_date_time";
  v6[5] = @"created_time_zone";
  v6[6] = @"frequency_type";
  v6[7] = @"cycle_start_date_components";
  v6[8] = @"note";
  v6[9] = @"creation_date";
  v6[10] = @"deleted";
  v6[11] = @"sync_identity";
  v6[12] = @"minimum_compatibility_version";
  v6[13] = @"origin_compatibility_version";
  v6[14] = @"schedule_type";
  v6[15] = @"display_options";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:16];
  v5 = @"sync_provenance";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:&v5 count:1];
  v2 = [v0 arrayByAddingObjectsFromArray:v1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

id HDMedicationSchedulePredicateForCreationDate(uint64_t a1)
{
  v2 = MEMORY[0x277D10B18];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v4 = [v2 predicateWithProperty:@"creation_date" value:v3 comparisonType:a1];

  return v4;
}

id HDMedicationSchedulePredicateForStartDateTime(uint64_t a1)
{
  v2 = MEMORY[0x277D10B18];
  v3 = _HDSQLiteValueForDate();
  v4 = [v2 predicateWithProperty:@"start_date_time" value:v3 comparisonType:a1];

  return v4;
}

id HDMedicationSchedulePredicateForEndDateTime(uint64_t a1)
{
  v2 = MEMORY[0x277D10B18];
  v3 = _HDSQLiteValueForDate();
  v4 = [v2 predicateWithProperty:@"end_date_time" value:v3 comparisonType:a1];

  return v4;
}

id HDMedicationSchedulePredicateForDeleted(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D10B18];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a1];
  v5 = [v3 predicateWithProperty:@"deleted" value:v4 comparisonType:a2];

  return v5;
}

void sub_251862970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_251862B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_251862C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *HDStringFromMedicationsWidgetSchedulingManagerReloadReason(unint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown (%d)", a1];
  }

  else
  {
    v2 = off_2796CEC58[a1];
  }

  return v2;
}

Class __getCHSTimelineControllerClass_block_invoke(uint64_t a1)
{
  ChronoServicesLibrary();
  result = objc_getClass("CHSTimelineController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCHSTimelineControllerClass_block_invoke_cold_1();
  }

  getCHSTimelineControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void ChronoServicesLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!ChronoServicesLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __ChronoServicesLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_2796CEC20;
    v3 = 0;
    ChronoServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ChronoServicesLibraryCore_frameworkLibrary)
  {
    ChronoServicesLibrary_cold_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x277D85DE8];
}

uint64_t __ChronoServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ChronoServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getCHSWidgetServiceClass_block_invoke(uint64_t a1)
{
  ChronoServicesLibrary();
  result = objc_getClass("CHSWidgetService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCHSWidgetServiceClass_block_invoke_cold_1();
  }

  getCHSWidgetServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_25186464C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __getCHSTimelineControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCHSTimelineControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HDMedicationsWidgetSchedulingManager.m" lineNumber:22 description:{@"Unable to find class %s", "CHSTimelineController"}];

  __break(1u);
}

void ChronoServicesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ChronoServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HDMedicationsWidgetSchedulingManager.m" lineNumber:21 description:{@"%s", *a1}];

  __break(1u);
}

void __getCHSWidgetServiceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCHSWidgetServiceClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HDMedicationsWidgetSchedulingManager.m" lineNumber:23 description:{@"Unable to find class %s", "CHSWidgetService"}];

  __break(1u);
}