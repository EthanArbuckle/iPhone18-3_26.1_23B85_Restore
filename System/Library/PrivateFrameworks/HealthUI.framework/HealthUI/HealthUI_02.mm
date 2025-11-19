uint64_t HKCodableSleepSummaryCollectionReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(HKCodableSleepSummaryEntry);
        [a1 addSleepSummaryEntry:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HKCodableSleepSummaryEntryReadFrom(&v13->super.super.isa, a2))
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

void sub_1C3A5110C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HKCodableTimePeriodDataReadFrom(uint64_t a1, void *a2)
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
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v23[0] & 0x7F) << v14;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_36;
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

LABEL_36:
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HKCodableDateInterval);
        objc_storeStrong((a1 + 16), v13);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !HKCodableDateIntervalReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableSummaryBalanceMetricsValueReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v24) = 0;
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v21 = objc_alloc_init(HKCodableDayIndexRange);
        objc_storeStrong((a1 + 24), v21);
        v24 = 0;
        v25 = 0;
        if (!PBReaderPlaceMark() || !HKCodableDayIndexRangeReadFrom(v21, a2))
        {
          goto LABEL_43;
        }

LABEL_34:
        PBReaderRecallMark();

        goto LABEL_41;
      }

      if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          LOBYTE(v24) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v24 & 0x7F) << v14;
          if ((v24 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_40;
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

LABEL_40:
        *(a1 + 8) = v20;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_41:
      v22 = [a2 position];
      if (v22 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v21 = objc_alloc_init(HKCodableSleepingSampleBaselineComparison);
    [a1 addBaselineComparison:v21];
    v24 = 0;
    v25 = 0;
    if (!PBReaderPlaceMark() || !HKCodableSleepingSampleBaselineComparisonReadFrom(v21, a2))
    {
LABEL_43:

      return 0;
    }

    goto LABEL_34;
  }

  return [a2 hasError] ^ 1;
}

void sub_1C3A55490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C3A55950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  objc_destroyWeak(va);
  objc_destroyWeak((v16 - 96));
  _Unwind_Resume(a1);
}

uint64_t HKCodableSummaryMostRecentRangeValueReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v21[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v21 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v21[0] & 0x7F) << v5;
        if ((v21[0] & 0x80) == 0)
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
      if ((v12 >> 3) == 3)
      {
        *(a1 + 32) |= 1u;
        v21[0] = 0;
        v16 = [a2 position] + 8;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
        {
          v18 = [a2 data];
          [v18 getBytes:v21 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v21[0];
        goto LABEL_32;
      }

      if (v13 == 2)
      {
        v14 = objc_alloc_init(HKCodableQuantity);
        v15 = 16;
      }

      else
      {
        if (v13 != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_32;
        }

        v14 = objc_alloc_init(HKCodableQuantity);
        v15 = 24;
      }

      objc_storeStrong((a1 + v15), v14);
      v21[0] = 0;
      v21[1] = 0;
      if (!PBReaderPlaceMark() || !HKCodableQuantityReadFrom(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_32:
      v19 = [a2 position];
    }

    while (v19 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1C3A5B840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HKCodableHealthRecordsIndividualRecordReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v23) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23 & 0x7F) << v5;
        if ((v23 & 0x80) == 0)
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
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v14 = PBReaderReadString();
            v15 = 24;
            goto LABEL_42;
          }

          if (v13 == 8)
          {
            v14 = PBReaderReadString();
            v15 = 40;
            goto LABEL_42;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v14 = PBReaderReadString();
            v15 = 48;
            goto LABEL_42;
          }

          if (v13 == 6)
          {
            v14 = PBReaderReadString();
            v15 = 56;
            goto LABEL_42;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          *(a1 + 72) |= 1u;
          v23 = 0;
          v17 = [a2 position] + 8;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v23 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v23;
          goto LABEL_43;
        }

        if (v13 == 4)
        {
          v16 = objc_alloc_init(HKCodableQuantityValueWithRange);
          [a1 addValueWithRange:v16];
          v23 = 0;
          v24 = 0;
          if (!PBReaderPlaceMark() || !HKCodableQuantityValueWithRangeReadFrom(v16, a2))
          {
LABEL_50:

            return 0;
          }

          goto LABEL_36;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v16 = objc_alloc_init(HKCodableHealthRecordsCode);
          [a1 addCode:v16];
          v23 = 0;
          v24 = 0;
          if (!PBReaderPlaceMark() || !HKCodableHealthRecordsCodeReadFrom(v16, a2))
          {
            goto LABEL_50;
          }

LABEL_36:
          PBReaderRecallMark();

          goto LABEL_43;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 32;
LABEL_42:
          v19 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_43;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_43:
      v20 = [a2 position];
    }

    while (v20 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1C3A62A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id getSOSUtilitiesClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSOSUtilitiesClass_softClass_0;
  v7 = getSOSUtilitiesClass_softClass_0;
  if (!getSOSUtilitiesClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSOSUtilitiesClass_block_invoke_0;
    v3[3] = &unk_1E81B5C18;
    v3[4] = &v4;
    __getSOSUtilitiesClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C3A6839C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C3A68570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSOSUtilitiesClass_block_invoke_0(uint64_t a1)
{
  SOSLibrary_0();
  result = objc_getClass("SOSUtilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSOSUtilitiesClass_block_invoke_cold_1_0();
  }

  getSOSUtilitiesClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void SOSLibrary_0()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!SOSLibraryCore_frameworkLibrary_0)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __SOSLibraryCore_block_invoke_0;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E81B7DC0;
    v2 = 0;
    SOSLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!SOSLibraryCore_frameworkLibrary_0)
  {
    SOSLibrary_cold_1_0(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __SOSLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  SOSLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getSOSManagerClass_block_invoke(uint64_t a1)
{
  SOSLibrary_0();
  result = objc_getClass("SOSManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSOSManagerClass_block_invoke_cold_1();
  }

  getSOSManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t HKCodableSummaryVisualizationDataPresencePointReadFrom(uint64_t a1, void *a2)
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
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v23[0] & 0x7F) << v14;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_34;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_34:
        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HKCodableDateInterval);
        objc_storeStrong((a1 + 8), v13);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !HKCodableDateIntervalReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableDayIndexRangeReadFrom(uint64_t a1, void *a2)
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
            v21 = &OBJC_IVAR___HKCodableDayIndexRange__dayIndex;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___HKCodableDayIndexRange__dayIndex;
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
        v21 = &OBJC_IVAR___HKCodableDayIndexRange__duration;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___HKCodableDayIndexRange__duration;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

id HKUILocalizedStringForStateOfMind(void *a1)
{
  v1 = a1;
  v2 = [v1 valenceClassification];
  v3 = [v1 reflectiveInterval];

  return HKUILocalizedStringForValenceClassificationAndReflectiveInterval(v2, v3);
}

id HKUILocalizedStringForValenceClassificationAndReflectiveInterval(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v5 = v4;
  v6 = @"UNKNOWN_VALENCE_CLASSIFICATION";
  v7 = @"PLEASANT_DAY";
  if (a2 == 1)
  {
    v7 = @"PLEASANT_MOMENT";
    v8 = @"VERY_PLEASANT_MOMENT";
  }

  else
  {
    v8 = @"VERY_PLEASANT_DAY";
  }

  if (a1 != 7)
  {
    v8 = @"UNKNOWN_VALENCE_CLASSIFICATION";
  }

  if (a1 != 6)
  {
    v7 = v8;
  }

  v9 = @"NEUTRAL_DAY";
  if (a2 == 1)
  {
    v9 = @"NEUTRAL_MOMENT";
  }

  v10 = @"SLIGHTLY_PLEASANT_DAY";
  if (a2 == 1)
  {
    v10 = @"SLIGHTLY_PLEASANT_MOMENT";
  }

  if (a1 != 5)
  {
    v10 = @"UNKNOWN_VALENCE_CLASSIFICATION";
  }

  if (a1 != 4)
  {
    v9 = v10;
  }

  if (a1 <= 5)
  {
    v7 = v9;
  }

  v11 = @"VERY_UNPLEASANT_MOMENT";
  if (a2 != 1)
  {
    v11 = @"VERY_UNPLEASANT_DAY";
  }

  v12 = @"UNPLEASANT_MOMENT";
  if (a2 != 1)
  {
    v12 = @"UNPLEASANT_DAY";
  }

  v13 = @"SLIGHTLY_UNPLEASANT_DAY";
  if (a2 == 1)
  {
    v13 = @"SLIGHTLY_UNPLEASANT_MOMENT";
  }

  if (a1 == 3)
  {
    v6 = v13;
  }

  if (a1 == 2)
  {
    v6 = v12;
  }

  if (a1 == 1)
  {
    v6 = v11;
  }

  if (a1 <= 3)
  {
    v14 = v6;
  }

  else
  {
    v14 = v7;
  }

  v15 = [v4 localizedStringForKey:v14 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chamomile"];

  return v15;
}

id HKUILocalizedStringForValenceClassification(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = v2;
  if ((a1 - 1) > 6)
  {
    v4 = @"UNKNOWN_VALENCE_CLASSIFICATION";
  }

  else
  {
    v4 = off_1E81B7DD8[a1 - 1];
  }

  v5 = [v2 localizedStringForKey:v4 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chamomile"];

  return v5;
}

id HKUILocalizedStringForValenceClassificationRangeBound(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = v2;
  if ((a1 - 1) > 6)
  {
    v4 = @"UNKNOWN_VALENCE_CLASSIFICATION_RANGE_BOUND";
  }

  else
  {
    v4 = off_1E81B7E10[a1 - 1];
  }

  v5 = [v2 localizedStringForKey:v4 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chamomile"];

  return v5;
}

id HKUILocalizedStringForValenceRange(double a1, double a2)
{
  v4 = HKStateOfMindValenceClassificationForValence();
  v5 = HKStateOfMindValenceClassificationForValence();
  v6 = v5;
  v7 = 0;
  if (v4 && v5)
  {
    v8 = HKUILocalizedStringForValenceClassificationRangeBound([v4 integerValue]);
    v9 = HKUILocalizedStringForValenceClassificationRangeBound([v6 integerValue]);
    if ([v4 isEqualToNumber:v6])
    {
      v7 = HKUILocalizedStringForValenceClassification([v4 integerValue]);
    }

    else
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v12 = [v11 localizedStringForKey:@"VALENCE_CLASSIFICATION_RANGE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chamomile"];
      if (a1 <= a2)
      {
        [v10 stringWithFormat:v12, v9, v8];
      }

      else
      {
        [v10 stringWithFormat:v12, v8, v9];
      }
      v7 = ;
    }
  }

  return v7;
}

id HKUILocalizedStringForStateOfMindLabel(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = v2;
  if ((a1 - 1) > 0x25)
  {
    v4 = @"UNKNOWN_LABEL";
  }

  else
  {
    v4 = off_1E81B7E48[a1 - 1];
  }

  v5 = [v2 localizedStringForKey:v4 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chamomile"];

  return v5;
}

id HKUILocalizedStringForStateOfMindDomain(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = v2;
  if ((a1 - 1) > 0x11)
  {
    v4 = @"UNKNOWN_DOMAIN";
  }

  else
  {
    v4 = off_1E81B7F78[a1 - 1];
  }

  v5 = [v2 localizedStringForKey:v4 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chamomile"];

  return v5;
}

id HKUILocalizedStringForGAD7Risk(uint64_t a1)
{
  if ((a1 - 1) <= 3)
  {
    v2 = off_1E81B8008[a1 - 1];
    v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v1 = [v3 localizedStringForKey:v2 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chamomile"];
  }

  return v1;
}

id HKUILocalizedStringForGAD7Answer(unint64_t a1)
{
  if (a1 <= 3)
  {
    v2 = off_1E81B8028[a1];
    v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v1 = [v3 localizedStringForKey:v2 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chamomile"];
  }

  return v1;
}

id HKUILocalizedStringForPHQ9Risk(uint64_t a1)
{
  if ((a1 - 1) <= 4)
  {
    v2 = off_1E81B8048[a1 - 1];
    v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v1 = [v3 localizedStringForKey:v2 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chamomile"];
  }

  return v1;
}

id HKUILocalizedStringForPHQ9Answer(unint64_t a1)
{
  if (a1 <= 4)
  {
    v2 = off_1E81B8070[a1];
    v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v1 = [v3 localizedStringForKey:v2 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chamomile"];
  }

  return v1;
}

uint64_t HKCodableClosedRangeReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v23) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23 & 0x7F) << v5;
        if ((v23 & 0x80) == 0)
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
        v23 = 0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
        {
          v17 = [a2 data];
          [v17 getBytes:&v23 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v18 = v23;
        v19 = &OBJC_IVAR___HKCodableClosedRange__lowerBound;
LABEL_31:
        *(a1 + *v19) = v18;
        goto LABEL_32;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v21 = [a2 position];
      if (v21 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v23 = 0;
    v15 = [a2 position] + 8;
    if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
    {
      v20 = [a2 data];
      [v20 getBytes:&v23 range:{objc_msgSend(a2, "position"), 8}];

      [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
    }

    else
    {
      [a2 _setError];
    }

    v18 = v23;
    v19 = &OBJC_IVAR___HKCodableClosedRange__upperBound;
    goto LABEL_31;
  }

  return [a2 hasError] ^ 1;
}

id _IndentString(void *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [&stru_1F42FFBE0 stringByPaddingToLength:a2 withString:@" " startingAtIndex:0];
  v5 = [v3 componentsSeparatedByString:@"\n"];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [v4 stringByAppendingString:{*(*(&v15 + 1) + 8 * i), v15}];
        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [v6 componentsJoinedByString:@"\n"];

  return v13;
}

uint64_t HKCodableSleepingSampleBaselineReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v18[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v18 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v18[0] & 0x7F) << v5;
        if ((v18[0] & 0x80) == 0)
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
      if ((v12 >> 3) == 3)
      {
        v14 = objc_alloc_init(HKCodableQuantity);
        v15 = 8;
      }

      else if (v13 == 2)
      {
        v14 = objc_alloc_init(HKCodableQuantity);
        v15 = 16;
      }

      else
      {
        if (v13 != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_27;
        }

        v14 = objc_alloc_init(HKCodableQuantity);
        v15 = 24;
      }

      objc_storeStrong((a1 + v15), v14);
      v18[0] = 0;
      v18[1] = 0;
      if (!PBReaderPlaceMark() || !HKCodableQuantityReadFrom(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_27:
      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id HKLogAFibBurden()
{
  if (HKLogAFibBurden_onceToken != -1)
  {
    HKLogAFibBurden_cold_1();
  }

  v1 = HKLogAFibBurden_aFibBurdenCategory;

  return v1;
}

uint64_t __HKLogAFibBurden_block_invoke()
{
  v0 = os_log_create("com.apple.Health.AFibBurden", "charting");
  v1 = HKLogAFibBurden_aFibBurdenCategory;
  HKLogAFibBurden_aFibBurdenCategory = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1C3A77A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __HKPopulationNormsSortedAgeRangesFromTable_block_invoke_0(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 rangeValue];
  v6 = [v4 rangeValue];

  if (v5 >= v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (v5 > v6)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

__CFString *HKVisionLeftRightLongLocalizedString(void *a1, void *a2)
{
  v3 = a2;
  v4 = _HKVisionSphereDiopterStringFromNumber(a1);
  v5 = _HKVisionSphereDiopterStringFromNumber(v3);

  if (v4 && v5)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v8 = [v7 localizedStringForKey:@"VISION_LEFT_RIGHT_LONG_%@%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-VRX"];
    v12 = v5;
LABEL_4:
    [v6 localizedStringWithFormat:v8, v4, v12];
    v10 = LABEL_8:;

    goto LABEL_9;
  }

  if (!v4 && v5)
  {
    v9 = MEMORY[0x1E696AEC0];
    v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v8 = [v7 localizedStringForKey:@"VISION_RIGHT_LONG_%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-VRX"];
    [v9 localizedStringWithFormat:v8, v5, v12];
    goto LABEL_8;
  }

  v10 = &stru_1F42FFBE0;
  if (v4 && !v5)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v8 = [v7 localizedStringForKey:@"VISION_LEFT_LONG_%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-VRX"];
    goto LABEL_4;
  }

LABEL_9:

  return v10;
}

__CFString *_HKVisionSphereDiopterStringFromNumber(void *a1)
{
  if (a1)
  {
    v1 = a1;
    [v1 doubleValue];
    v2 = HKCompareDoubles() != 0;
    v3 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    [v3 setMinimumFractionDigits:v2];
    [v3 setMaximumFractionDigits:2];
    v4 = [v3 plusSign];
    [v3 setPositivePrefix:v4];

    v5 = [v3 stringFromNumber:v1];

    v6 = &stru_1F42FFBE0;
    if (v5)
    {
      v6 = v5;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

__CFString *HKVisionLeftRightShortLocalizedString(void *a1, void *a2)
{
  v3 = a2;
  v4 = _HKVisionSphereDiopterStringFromNumber(a1);
  v5 = _HKVisionSphereDiopterStringFromNumber(v3);

  if (v4 && v5)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v8 = [v7 localizedStringForKey:@"VISION_LEFT_RIGHT_SHORT_%@%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-VRX"];
    v12 = v5;
LABEL_4:
    [v6 localizedStringWithFormat:v8, v4, v12];
    v10 = LABEL_8:;

    goto LABEL_9;
  }

  if (!v4 && v5)
  {
    v9 = MEMORY[0x1E696AEC0];
    v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v8 = [v7 localizedStringForKey:@"VISION_RIGHT_SHORT_%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-VRX"];
    [v9 localizedStringWithFormat:v8, v5, v12];
    goto LABEL_8;
  }

  v10 = &stru_1F42FFBE0;
  if (v4 && !v5)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v8 = [v7 localizedStringForKey:@"VISION_LEFT_SHORT_%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-VRX"];
    goto LABEL_4;
  }

LABEL_9:

  return v10;
}

id HKVisionPrescriptionTypeLongLocalizedString(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = v2;
  if (a1 == 2)
  {
    v4 = @"VISION_PRESCRIPTION_TYPE_CONTACTS_LONG";
  }

  else
  {
    v4 = @"VISION_PRESCRIPTION_TYPE_GLASSES_LONG";
  }

  v5 = [v2 localizedStringForKey:v4 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-VRX"];

  return v5;
}

id HKVisionPrescriptionTypeShortLocalizedString(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = v2;
  if (a1 == 2)
  {
    v4 = @"VISION_PRESCRIPTION_TYPE_CONTACTS_SHORT";
  }

  else
  {
    v4 = @"VISION_PRESCRIPTION_TYPE_GLASSES_SHORT";
  }

  v5 = [v2 localizedStringForKey:v4 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-VRX"];

  return v5;
}

__CFString *HKVisionPrescriptionTypeDetailedLongLocalizedString(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 brand];
    if ([v2 length])
    {
      v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v4 = [v3 localizedStringForKey:@"VISION_PRESCRIPTION_CONTACTS_AND_BRAND_FORMAT_%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-VRX"];

      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:v4, v2];
LABEL_13:
      v9 = v5;

      goto LABEL_14;
    }
  }

  v6 = [v1 prescriptionType];
  if (v6 != 2)
  {
    if (v6 != 1)
    {
      v9 = &stru_1F42FFBE0;
      goto LABEL_15;
    }

    v7 = [v1 metadata];
    v2 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696BAB0]];

    v8 = [v1 metadata];
    v4 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696C778]];

    if (v4)
    {
      HKVisionPrescriptionFormattedVisionProOpticalInsertsDescription(v2);
    }

    else
    {
      HKVisionPrescriptionFormattedGlassesDescription(v2);
    }
    v5 = ;
    goto LABEL_13;
  }

  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v9 = [v2 localizedStringForKey:@"VISION_PRESCRIPTION_TYPE_CONTACTS_LONG" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-VRX"];
LABEL_14:

LABEL_15:

  return v9;
}

id HKVisionPrescriptionFormattedVisionProOpticalInsertsDescription(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = v3;
  if (v2)
  {
    v5 = [v3 localizedStringForKey:@"VISION_PRESCRIPTION_VISION_PRO_OPTICAL_INSERTS_AND_DESCRIPTION_FORMAT_%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-VRX"];

    v6 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v5, v1];
    v4 = v5;
  }

  else
  {
    v6 = [v3 localizedStringForKey:@"VISION_PRESCRIPTION_TYPE_VISION_PRO_OPTICAL_INSERTS_LONG" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-VRX"];
  }

  return v6;
}

id HKVisionPrescriptionFormattedGlassesDescription(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = v3;
  if (v2)
  {
    v5 = [v3 localizedStringForKey:@"VISION_PRESCRIPTION_GLASSES_AND_DESCRIPTION_FORMAT_%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-VRX"];

    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:v5, v1];
    v4 = v5;
  }

  else
  {
    v6 = [v3 localizedStringForKey:@"VISION_PRESCRIPTION_TYPE_GLASSES_LONG" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-VRX"];
  }

  return v6;
}

__CFString *HKVisionPrescriptionRawDescription(void *a1)
{
  v1 = a1;
  v2 = [v1 prescriptionType];
  if (v2 == 2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v1 brand];
      goto LABEL_7;
    }
  }

  else if (v2 == 1)
  {
    v3 = [v1 metadata];
    v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E696BAB0]];

    goto LABEL_7;
  }

  v4 = &stru_1F42FFBE0;
LABEL_7:

  return v4;
}

id HKVisionPrescriptionImageOnlyLocalizedString()
{
  v0 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v1 = [v0 localizedStringForKey:@"VISION_PRESCRIPTION_IMAGE_ONLY" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-VRX"];

  return v1;
}

id HKVisionPrescriptionGenerateGlassesPrescriptionSample()
{
  v10[1] = *MEMORY[0x1E69E9840];
  v0 = _HKVisionRandomGlassesLensSpecifications();
  v9 = *MEMORY[0x1E696BAB0];
  v1 = HKVisionPrescriptionTypeLongLocalizedString(1);
  v10[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v3 = MEMORY[0x1E696C190];
  v4 = [v0 objectAtIndexedSubscript:1];
  v5 = [v0 objectAtIndexedSubscript:0];
  v6 = [MEMORY[0x1E695DF00] now];
  v7 = [v3 prescriptionWithRightEyeSpecification:v4 leftEyeSpecification:v5 dateIssued:v6 expirationDate:0 device:0 metadata:v2];

  return v7;
}

id _HKVisionRandomGlassesLensSpecifications()
{
  v25[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696C510] diopterUnit];
  v1 = _HKVisionRandomLeftRightQuantities(4, v0, -10.5, 6.5, 0.25);

  v2 = [MEMORY[0x1E696C510] diopterUnit];
  v3 = _HKVisionRandomLeftRightQuantities(4, v2, -3.0, 3.0, 0.25);

  v4 = [MEMORY[0x1E696C510] degreeAngleUnit];
  v5 = _HKVisionRandomLeftRightQuantities(4, v4, 0.0, 180.0, 5.0);

  v6 = [MEMORY[0x1E696C510] diopterUnit];
  v7 = _HKVisionRandomLeftRightQuantities(2, v6, 0.25, 2.5, 0.25);

  v8 = objc_alloc(MEMORY[0x1E696C188]);
  v23 = v1;
  v24 = [v1 objectAtIndexedSubscript:0];
  v21 = v3;
  v22 = [v3 objectAtIndexedSubscript:0];
  v20 = v5;
  v9 = [v5 objectAtIndexedSubscript:0];
  v10 = [v7 objectAtIndexedSubscript:0];
  v11 = [v8 initWithSphere:v24 cylinder:v22 axis:v9 addPower:v10 vertexDistance:0 prism:0 farPupillaryDistance:0 nearPupillaryDistance:0];
  v25[0] = v11;
  v12 = objc_alloc(MEMORY[0x1E696C188]);
  v13 = [v1 objectAtIndexedSubscript:1];
  v14 = [v3 objectAtIndexedSubscript:1];
  v15 = [v5 objectAtIndexedSubscript:1];
  v16 = [v7 objectAtIndexedSubscript:1];
  v17 = [v12 initWithSphere:v13 cylinder:v14 axis:v15 addPower:v16 vertexDistance:0 prism:0 farPupillaryDistance:0 nearPupillaryDistance:0];
  v25[1] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];

  return v18;
}

id _HKVisionRandomLeftRightQuantities(uint64_t a1, void *a2, double a3, double a4, double a5)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v9 = ((a4 - a3) / a5);
  v10 = a2;
  v11 = a3 + a5 * (arc4random() % (v9 + 1));
  if (arc4random())
  {
    v12 = 1;
  }

  else
  {
    v12 = -1;
  }

  v13 = v11 + (arc4random() % a1 + 1) * a5 * v12;
  if (v13 >= a4)
  {
    v13 = a4;
  }

  if (v13 >= a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = a3;
  }

  v15 = [MEMORY[0x1E696C348] quantityWithUnit:v10 doubleValue:v11];
  v19[0] = v15;
  v16 = [MEMORY[0x1E696C348] quantityWithUnit:v10 doubleValue:v14];

  v19[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];

  return v17;
}

id HKVisionPrescriptionSupportedImageUTTypeIdentifiers()
{
  v5[6] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6982E58];
  v5[0] = *MEMORY[0x1E6982E00];
  v5[1] = v0;
  v1 = *MEMORY[0x1E6982F10];
  v5[2] = *MEMORY[0x1E6982E80];
  v5[3] = v1;
  v2 = *MEMORY[0x1E6983008];
  v5[4] = *MEMORY[0x1E6982F28];
  v5[5] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:6];

  return v3;
}

uint64_t HKCodableSummaryUnderwaterDepthValueReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27[0] & 0x7F) << v5;
        if ((v27[0] & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        *(a1 + 28) |= 1u;
        v27[0] = 0;
        v22 = [a2 position] + 8;
        if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 8, v23 <= objc_msgSend(a2, "length")))
        {
          v24 = [a2 data];
          [v24 getBytes:v27 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v27[0];
      }

      else if (v13 == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          LOBYTE(v27[0]) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v27[0] & 0x7F) << v15;
          if ((v27[0] & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_38;
          }
        }

        v21 = (v17 != 0) & ~[a2 hasError];
LABEL_38:
        *(a1 + 24) = v21;
      }

      else if (v13 == 1)
      {
        v14 = objc_alloc_init(HKCodableQuantity);
        objc_storeStrong((a1 + 16), v14);
        v27[0] = 0;
        v27[1] = 0;
        if (!PBReaderPlaceMark() || !HKCodableQuantityReadFrom(v14, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableChartBloodPressureDataSourceQueryDataReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
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
        v13 = objc_alloc_init(HKCodableStatisticsCollection);
        v14 = 8;
      }

      else
      {
        if ((v12 >> 3) != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_25;
        }

        v13 = objc_alloc_init(HKCodableStatisticsCollection);
        v14 = 16;
      }

      objc_storeStrong((a1 + v14), v13);
      v17[0] = 0;
      v17[1] = 0;
      if (!PBReaderPlaceMark() || !HKCodableStatisticsCollectionReadFrom(&v13->super.super.isa, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_25:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1C3A80A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C3A80CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CoreTelephonyLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!CoreTelephonyLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __CoreTelephonyLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E81B8378;
    v4 = 0;
    CoreTelephonyLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreTelephonyLibraryCore_frameworkLibrary;
  if (!CoreTelephonyLibraryCore_frameworkLibrary)
  {
    CoreTelephonyLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __CoreTelephonyLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreTelephonyLibraryCore_frameworkLibrary = result;
  return result;
}

void _RunBlockForPointsInPath(const void *a1, uint64_t a2)
{
  v3 = _Block_copy(a1);
  v6 = *(a2 + 8);
  v7 = *a2;
  if (*a2 <= 1)
  {
    if (v7 > 1)
    {
      goto LABEL_11;
    }

    v4.n128_u64[0] = *v6;
    v5.n128_u64[0] = v6[1];
    v8 = v3;
    v3[2](v4, v5);
  }

  else
  {
    switch(v7)
    {
      case 2u:
        v4.n128_u64[0] = v6[2];
        v5.n128_u64[0] = v6[3];
        v8 = v3;
        v3[2](v4, v5);
        break;
      case 3u:
        v4.n128_u64[0] = v6[4];
        v5.n128_u64[0] = v6[5];
        v8 = v3;
        v3[2](v4, v5);
        break;
      case 4u:
        v8 = v3;
        (v3[2])(v3, 4, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8));
        break;
      default:
        goto LABEL_11;
    }
  }

  v3 = v8;
LABEL_11:
}

void _FindFirstPoint(void *a1, uint64_t a2)
{
  v4 = a1;
  if (![v4 count] && *a2 <= 3u)
  {
    v3 = [MEMORY[0x1E696B098] valueWithCGPoint:{**(a2 + 8), *(*(a2 + 8) + 8)}];
    [v4 addObject:v3];
  }
}

uint64_t HKCodableNotificationSampleReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v53[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v53 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v53[0] & 0x7F) << v5;
        if ((v53[0] & 0x80) == 0)
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
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v40 = 0;
            v41 = 0;
            v42 = 0;
            *(a1 + 72) |= 0x10u;
            while (1)
            {
              LOBYTE(v53[0]) = 0;
              v43 = [a2 position] + 1;
              if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
              {
                v45 = [a2 data];
                [v45 getBytes:v53 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v42 |= (v53[0] & 0x7F) << v40;
              if ((v53[0] & 0x80) == 0)
              {
                break;
              }

              v40 += 7;
              v11 = v41++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_83;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v42;
            }

LABEL_83:
            v46 = 40;
            goto LABEL_92;
          }

          if (v13 == 8)
          {
            v29 = PBReaderReadString();
            v30 = *(a1 + 64);
            *(a1 + 64) = v29;

            goto LABEL_98;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v33 = 0;
            v34 = 0;
            v35 = 0;
            *(a1 + 72) |= 2u;
            while (1)
            {
              LOBYTE(v53[0]) = 0;
              v36 = [a2 position] + 1;
              if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
              {
                v38 = [a2 data];
                [v38 getBytes:v53 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v35 |= (v53[0] & 0x7F) << v33;
              if ((v53[0] & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v11 = v34++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_79;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v35;
            }

LABEL_79:
            v46 = 16;
            goto LABEL_92;
          }

          if (v13 == 6)
          {
            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(a1 + 72) |= 8u;
            while (1)
            {
              LOBYTE(v53[0]) = 0;
              v19 = [a2 position] + 1;
              if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
              {
                v21 = [a2 data];
                [v21 getBytes:v53 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v18 |= (v53[0] & 0x7F) << v16;
              if ((v53[0] & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_87;
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

LABEL_87:
            v46 = 32;
            goto LABEL_92;
          }
        }

        goto LABEL_74;
      }

      if (v13 <= 2)
      {
        break;
      }

      if (v13 != 3)
      {
        if (v13 == 4)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 72) |= 1u;
          while (1)
          {
            LOBYTE(v53[0]) = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:v53 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v53[0] & 0x7F) << v23;
            if ((v53[0] & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_91;
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

LABEL_91:
          v46 = 8;
LABEL_92:
          *(a1 + v46) = v22;
          goto LABEL_98;
        }

        goto LABEL_74;
      }

      v39 = objc_alloc_init(HKCodableMetadataDictionary);
      objc_storeStrong((a1 + 56), v39);
      v53[0] = 0;
      v53[1] = 0;
      if (!PBReaderPlaceMark() || !HKCodableMetadataDictionaryReadFrom(v39, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_98:
      v51 = [a2 position];
      if (v51 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      *(a1 + 72) |= 0x20u;
      v53[0] = 0;
      v31 = [a2 position] + 8;
      if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 8, v32 <= objc_msgSend(a2, "length")))
      {
        v47 = [a2 data];
        [v47 getBytes:v53 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      v48 = v53[0];
      v49 = 48;
      goto LABEL_97;
    }

    if (v13 == 2)
    {
      *(a1 + 72) |= 4u;
      v53[0] = 0;
      v14 = [a2 position] + 8;
      if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
      {
        v50 = [a2 data];
        [v50 getBytes:v53 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      v48 = v53[0];
      v49 = 24;
LABEL_97:
      *(a1 + v49) = v48;
      goto LABEL_98;
    }

LABEL_74:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_98;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableSummaryAudiogramValueReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v21) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v21 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v21 & 0x7F) << v5;
        if ((v21 & 0x80) == 0)
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
      if ((v12 >> 3) > 4)
      {
        switch(v13)
        {
          case 5:
            v14 = objc_alloc_init(HKCodableQuantity);
            v15 = 32;
            goto LABEL_33;
          case 6:
            *(a1 + 56) |= 1u;
            v21 = 0;
            v17 = [a2 position] + 8;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v21 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 8) = v21;
            goto LABEL_36;
          case 7:
            v14 = objc_alloc_init(HKCodableAudiogramSensitivityPoint);
            [a1 addSensitivityPoints:v14];
            v21 = 0;
            v22 = 0;
            if (!PBReaderPlaceMark() || !HKCodableAudiogramSensitivityPointReadFrom(&v14->super.super.isa, a2))
            {
LABEL_44:

              return 0;
            }

            goto LABEL_35;
        }
      }

      else
      {
        switch(v13)
        {
          case 2:
            v14 = objc_alloc_init(HKCodableQuantity);
            v15 = 16;
            goto LABEL_33;
          case 3:
            v14 = objc_alloc_init(HKCodableQuantity);
            v15 = 24;
            goto LABEL_33;
          case 4:
            v14 = objc_alloc_init(HKCodableQuantity);
            v15 = 40;
LABEL_33:
            objc_storeStrong((a1 + v15), v14);
            v21 = 0;
            v22 = 0;
            if (!PBReaderPlaceMark() || !HKCodableQuantityReadFrom(v14, a2))
            {
              goto LABEL_44;
            }

LABEL_35:
            PBReaderRecallMark();

            goto LABEL_36;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_36:
      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableSummaryBreathingDisturbancesValueReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v24) = 0;
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          LOBYTE(v24) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v24 & 0x7F) << v15;
          if ((v24 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_40;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_40:
        *(a1 + 8) = v21;
        goto LABEL_41;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(HKCodableSummaryQuantityValue);
        objc_storeStrong((a1 + 24), v14);
        v24 = 0;
        v25 = 0;
        if (!PBReaderPlaceMark() || !HKCodableSummaryQuantityValueReadFrom(v14, a2))
        {
          goto LABEL_43;
        }

LABEL_34:
        PBReaderRecallMark();

        goto LABEL_41;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_41:
      v22 = [a2 position];
      if (v22 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(HKCodableLevelViewDataConfiguration);
    objc_storeStrong((a1 + 16), v14);
    v24 = 0;
    v25 = 0;
    if (!PBReaderPlaceMark() || !HKCodableLevelViewDataConfigurationReadFrom(v14, a2))
    {
LABEL_43:

      return 0;
    }

    goto LABEL_34;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableSummaryStateOfMindValueReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v58) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v58 & 0x7F) << v5;
        if ((v58 & 0x80) == 0)
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
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 & 7;
      if (v13 == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v14 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v14 == 1)
        {
          *(a1 + 80) |= 1u;
          v58 = 0;
          v39 = [a2 position] + 8;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 8, v40 <= objc_msgSend(a2, "length")))
          {
            v56 = [a2 data];
            [v56 getBytes:&v58 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v54 = v58;
          v55 = 56;
          goto LABEL_99;
        }

        if (v14 == 2)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 80) |= 2u;
          while (1)
          {
            LOBYTE(v58) = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v58 & 0x7F) << v23;
            if ((v58 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_74;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v25;
          }

LABEL_74:
          *(a1 + 64) = v29;
          goto LABEL_100;
        }
      }

      else
      {
        switch(v14)
        {
          case 3:
            *(a1 + 80) |= 4u;
            v58 = 0;
            v30 = [a2 position] + 8;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 8, v31 <= objc_msgSend(a2, "length")))
            {
              v53 = [a2 data];
              [v53 getBytes:&v58 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v54 = v58;
            v55 = 72;
LABEL_99:
            *(a1 + v55) = v54;
            goto LABEL_100;
          case 4:
            if (v13 != 2)
            {
              v41 = 0;
              v42 = 0;
              v43 = 0;
              while (1)
              {
                LOBYTE(v58) = 0;
                v44 = [a2 position] + 1;
                if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
                {
                  v46 = [a2 data];
                  [v46 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v43 |= (v58 & 0x7F) << v41;
                if ((v58 & 0x80) == 0)
                {
                  goto LABEL_93;
                }

                v41 += 7;
                v11 = v42++ >= 9;
                if (v11)
                {
                  goto LABEL_94;
                }
              }
            }

            v58 = 0;
            v59 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v32 = [a2 position];
              if (v32 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_70;
              }

              v33 = 0;
              v34 = 0;
              v35 = 0;
              while (1)
              {
                v60 = 0;
                v36 = [a2 position] + 1;
                if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
                {
                  v38 = [a2 data];
                  [v38 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v35 |= (v60 & 0x7F) << v33;
                if ((v60 & 0x80) == 0)
                {
                  break;
                }

                v33 += 7;
                v11 = v34++ >= 9;
                if (v11)
                {
                  goto LABEL_64;
                }
              }

              [a2 hasError];
LABEL_64:
              PBRepeatedInt64Add();
            }

          case 5:
            if (v13 != 2)
            {
              v47 = 0;
              v48 = 0;
              v49 = 0;
              while (1)
              {
                LOBYTE(v58) = 0;
                v50 = [a2 position] + 1;
                if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
                {
                  v52 = [a2 data];
                  [v52 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v49 |= (v58 & 0x7F) << v47;
                if ((v58 & 0x80) == 0)
                {
                  break;
                }

                v47 += 7;
                v11 = v48++ >= 9;
                if (v11)
                {
                  goto LABEL_94;
                }
              }

LABEL_93:
              [a2 hasError];
LABEL_94:
              PBRepeatedInt64Add();
              goto LABEL_100;
            }

            v58 = 0;
            v59 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v16 = [a2 position];
              if (v16 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v17 = 0;
              v18 = 0;
              v19 = 0;
              while (1)
              {
                v60 = 0;
                v20 = [a2 position] + 1;
                if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
                {
                  v22 = [a2 data];
                  [v22 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v19 |= (v60 & 0x7F) << v17;
                if ((v60 & 0x80) == 0)
                {
                  break;
                }

                v17 += 7;
                v11 = v18++ >= 9;
                if (v11)
                {
                  goto LABEL_35;
                }
              }

              [a2 hasError];
LABEL_35:
              PBRepeatedInt64Add();
            }

LABEL_70:
            PBReaderRecallMark();
            goto LABEL_100;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_100:
      v57 = [a2 position];
    }

    while (v57 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1C3A89F4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C3A8C4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose((v46 - 248), 8);
  _Block_object_dispose((v46 - 200), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HKCodableChartCardioFitnessQueryDataReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v37[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37[0] & 0x7F) << v5;
        if ((v37[0] & 0x80) == 0)
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
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 40) |= 1u;
        while (1)
        {
          LOBYTE(v37[0]) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:v37 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v37[0] & 0x7F) << v28;
          if ((v37[0] & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_65;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v30;
        }

LABEL_65:
        v34 = 8;
        goto LABEL_66;
      }

      if (v13 != 4)
      {
        goto LABEL_34;
      }

      v21 = objc_alloc_init(HKCodableChartQuantityDataSourceQueryData);
      objc_storeStrong((a1 + 32), v21);
      v37[0] = 0;
      v37[1] = 0;
      if (!PBReaderPlaceMark() || !HKCodableChartQuantityDataSourceQueryDataReadFrom(v21, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_67:
      v35 = [a2 position];
      if (v35 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      *(a1 + 40) |= 4u;
      while (1)
      {
        LOBYTE(v37[0]) = 0;
        v25 = [a2 position] + 1;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
        {
          v27 = [a2 data];
          [v27 getBytes:v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v24 |= (v37[0] & 0x7F) << v22;
        if ((v37[0] & 0x80) == 0)
        {
          break;
        }

        v22 += 7;
        v11 = v23++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_61;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v24;
      }

LABEL_61:
      v34 = 24;
      goto LABEL_66;
    }

    if (v13 == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 40) |= 2u;
      while (1)
      {
        LOBYTE(v37[0]) = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v37[0] & 0x7F) << v14;
        if ((v37[0] & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_57;
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

LABEL_57:
      v34 = 16;
LABEL_66:
      *(a1 + v34) = v20;
      goto LABEL_67;
    }

LABEL_34:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_67;
  }

  return [a2 hasError] ^ 1;
}

void OUTLINED_FUNCTION_1_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t HKCodableSleepPeriodReadFrom(id *a1, void *a2)
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
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
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
        v13 = objc_alloc_init(HKCodableDateInterval);
        objc_storeStrong(a1 + 1, v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !HKCodableDateIntervalReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(HKCodableSleepPeriodSegment);
    [a1 addSegment:v13];
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !HKCodableSleepPeriodSegmentReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableActivitySummaryEntryReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v32) = 0;
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
      if ((v12 >> 3) <= 5)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v14 = objc_alloc_init(HKCodableDateComponents);
            objc_storeStrong((a1 + 80), v14);
            v32 = 0;
            v33 = 0;
            if (!PBReaderPlaceMark() || !HKCodableDateComponentsReadFrom(v14, a2))
            {
LABEL_74:

              return 0;
            }

            goto LABEL_62;
          }

          if (v13 == 2)
          {
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 92) |= 1u;
            while (1)
            {
              LOBYTE(v32) = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v32 & 0x7F) << v23;
              if ((v32 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_70;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v25;
            }

LABEL_70:
            *(a1 + 8) = v29;
            goto LABEL_63;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v14 = objc_alloc_init(HKCodableQuantity);
              v15 = 16;
              goto LABEL_60;
            case 4:
              v14 = objc_alloc_init(HKCodableQuantity);
              v15 = 48;
              goto LABEL_60;
            case 5:
              v14 = objc_alloc_init(HKCodableQuantity);
              v15 = 32;
              goto LABEL_60;
          }
        }
      }

      else if (v13 > 8)
      {
        switch(v13)
        {
          case 9:
            v14 = objc_alloc_init(HKCodableQuantity);
            v15 = 40;
            goto LABEL_60;
          case 0xA:
            v14 = objc_alloc_init(HKCodableQuantity);
            v15 = 72;
            goto LABEL_60;
          case 0xB:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(a1 + 92) |= 2u;
            while (1)
            {
              LOBYTE(v32) = 0;
              v19 = [a2 position] + 1;
              if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
              {
                v21 = [a2 data];
                [v21 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v18 |= (v32 & 0x7F) << v16;
              if ((v32 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                LOBYTE(v22) = 0;
                goto LABEL_72;
              }
            }

            v22 = (v18 != 0) & ~[a2 hasError];
LABEL_72:
            *(a1 + 88) = v22;
            goto LABEL_63;
        }
      }

      else
      {
        switch(v13)
        {
          case 6:
            v14 = objc_alloc_init(HKCodableQuantity);
            v15 = 64;
            goto LABEL_60;
          case 7:
            v14 = objc_alloc_init(HKCodableQuantity);
            v15 = 24;
            goto LABEL_60;
          case 8:
            v14 = objc_alloc_init(HKCodableQuantity);
            v15 = 56;
LABEL_60:
            objc_storeStrong((a1 + v15), v14);
            v32 = 0;
            v33 = 0;
            if (!PBReaderPlaceMark() || !HKCodableQuantityReadFrom(v14, a2))
            {
              goto LABEL_74;
            }

LABEL_62:
            PBReaderRecallMark();

            goto LABEL_63;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_63:
      v30 = [a2 position];
    }

    while (v30 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1C3A991A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSTStorageAppHeaderCellClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!StorageSettingsLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __StorageSettingsLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E81B85B8;
    v5 = 0;
    StorageSettingsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!StorageSettingsLibraryCore_frameworkLibrary)
  {
    __getSTStorageAppHeaderCellClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("STStorageAppHeaderCell");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSTStorageAppHeaderCellClass_block_invoke_cold_1();
  }

  getSTStorageAppHeaderCellClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __StorageSettingsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  StorageSettingsLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t HKCodableHandwashingEventReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v46[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v46 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v46[0] & 0x7F) << v5;
        if ((v46[0] & 0x80) == 0)
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
        break;
      }

      if (v13 == 1)
      {
        *(a1 + 52) |= 8u;
        v46[0] = 0;
        v22 = [a2 position] + 8;
        if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 8, v23 <= objc_msgSend(a2, "length")))
        {
          v40 = [a2 data];
          [v40 getBytes:v46 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v41 = v46[0];
        v42 = 32;
        goto LABEL_77;
      }

      if (v13 == 2)
      {
        *(a1 + 52) |= 4u;
        v46[0] = 0;
        v31 = [a2 position] + 8;
        if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 8, v32 <= objc_msgSend(a2, "length")))
        {
          v43 = [a2 data];
          [v43 getBytes:v46 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v41 = v46[0];
        v42 = 24;
LABEL_77:
        *(a1 + v42) = v41;
        goto LABEL_78;
      }

      if (v13 != 3)
      {
        goto LABEL_48;
      }

      v14 = objc_alloc_init(HKCodableQuantity);
      objc_storeStrong((a1 + 40), v14);
      v46[0] = 0;
      v46[1] = 0;
      if (!PBReaderPlaceMark() || !HKCodableQuantityReadFrom(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_78:
      v44 = [a2 position];
      if (v44 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 4:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 52) |= 2u;
        while (1)
        {
          LOBYTE(v46[0]) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:v46 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v46[0] & 0x7F) << v24;
          if ((v46[0] & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            v30 = 0;
            goto LABEL_65;
          }
        }

        if ([a2 hasError])
        {
          v30 = 0;
        }

        else
        {
          v30 = v26;
        }

LABEL_65:
        v39 = 16;
        goto LABEL_72;
      case 5:
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 52) |= 1u;
        while (1)
        {
          LOBYTE(v46[0]) = 0;
          v36 = [a2 position] + 1;
          if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
          {
            v38 = [a2 data];
            [v38 getBytes:v46 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v35 |= (v46[0] & 0x7F) << v33;
          if ((v46[0] & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v11 = v34++ >= 9;
          if (v11)
          {
            v30 = 0;
            goto LABEL_71;
          }
        }

        if ([a2 hasError])
        {
          v30 = 0;
        }

        else
        {
          v30 = v35;
        }

LABEL_71:
        v39 = 8;
LABEL_72:
        *(a1 + v39) = v30;
        goto LABEL_78;
      case 6:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 52) |= 0x10u;
        while (1)
        {
          LOBYTE(v46[0]) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:v46 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v46[0] & 0x7F) << v15;
          if ((v46[0] & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_67;
          }
        }

        v21 = (v17 != 0) & ~[a2 hasError];
LABEL_67:
        *(a1 + 48) = v21;
        goto LABEL_78;
    }

LABEL_48:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_78;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableHealthRecordsLocalizedEducationContentSectionReadFrom(uint64_t a1, void *a2)
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
        v27 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
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
            v16 = PBReaderReadString();
            if (v16)
            {
              [a1 addSectionValidRegionCodes:v16];
            }

            break;
          case 5:
            v16 = PBReaderReadString();
            if (v16)
            {
              [a1 addSectionAttributions:v16];
            }

            break;
          case 6:
            v16 = PBReaderReadString();
            if (v16)
            {
              [a1 addSectionCitations:v16];
            }

            break;
          default:
LABEL_38:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_49;
        }
      }

      else if (v13 == 1)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 56) |= 1u;
        while (1)
        {
          v28 = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v28 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v28 & 0x7F) << v17;
          if ((v28 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_48;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v19;
        }

LABEL_48:
        *(a1 + 8) = v23;
      }

      else
      {
        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 40;
        }

        else
        {
          if (v13 != 3)
          {
            goto LABEL_38;
          }

          v14 = PBReaderReadString();
          v15 = 32;
        }

        v25 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_49:
      v26 = [a2 position];
    }

    while (v26 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableMenstrualCyclesProjectionReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v52[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v52 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v52[0] & 0x7F) << v5;
        if ((v52[0] & 0x80) == 0)
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
      if ((v12 >> 3) <= 4)
      {
        break;
      }

      if (v13 > 7)
      {
        if (v13 == 8)
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          *(a1 + 68) |= 1u;
          while (1)
          {
            LOBYTE(v52[0]) = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:v52 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v39 |= (v52[0] & 0x7F) << v37;
            if ((v52[0] & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v11 = v38++ >= 9;
            if (v11)
            {
              v31 = 0;
              goto LABEL_75;
            }
          }

          if ([a2 hasError])
          {
            v31 = 0;
          }

          else
          {
            v31 = v39;
          }

LABEL_75:
          v43 = 8;
          goto LABEL_82;
        }

        if (v13 == 10)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 68) |= 8u;
          while (1)
          {
            LOBYTE(v52[0]) = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              v30 = [a2 data];
              [v30 getBytes:v52 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v52[0] & 0x7F) << v25;
            if ((v52[0] & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v11 = v26++ >= 9;
            if (v11)
            {
              v31 = 0;
              goto LABEL_81;
            }
          }

          if ([a2 hasError])
          {
            v31 = 0;
          }

          else
          {
            v31 = v27;
          }

LABEL_81:
          v43 = 32;
LABEL_82:
          *(a1 + v43) = v31;
          goto LABEL_92;
        }

        goto LABEL_70;
      }

      if (v13 != 5)
      {
        if (v13 == 6)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 68) |= 0x40u;
          while (1)
          {
            LOBYTE(v52[0]) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:v52 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v52[0] & 0x7F) << v16;
            if ((v52[0] & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              LOBYTE(v22) = 0;
              goto LABEL_77;
            }
          }

          v22 = (v18 != 0) & ~[a2 hasError];
LABEL_77:
          *(a1 + 64) = v22;
          goto LABEL_92;
        }

LABEL_70:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_92;
      }

      v34 = objc_alloc_init(HKCodableDayIndexRange);
      objc_storeStrong((a1 + 56), v34);
      v52[0] = 0;
      v52[1] = 0;
      if (!PBReaderPlaceMark() || !HKCodableDayIndexRangeReadFrom(v34, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_92:
      v50 = [a2 position];
      if (v50 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        *(a1 + 68) |= 2u;
        v52[0] = 0;
        v35 = [a2 position] + 8;
        if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 8, v36 <= objc_msgSend(a2, "length")))
        {
          v47 = [a2 data];
          [v47 getBytes:v52 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v45 = v52[0];
        v46 = 16;
        goto LABEL_91;
      }

      if (v13 == 4)
      {
        *(a1 + 68) |= 4u;
        v52[0] = 0;
        v23 = [a2 position] + 8;
        if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 8, v24 <= objc_msgSend(a2, "length")))
        {
          v49 = [a2 data];
          [v49 getBytes:v52 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v45 = v52[0];
        v46 = 24;
        goto LABEL_91;
      }
    }

    else
    {
      if (v13 == 1)
      {
        *(a1 + 68) |= 0x10u;
        v52[0] = 0;
        v32 = [a2 position] + 8;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 8, v33 <= objc_msgSend(a2, "length")))
        {
          v44 = [a2 data];
          [v44 getBytes:v52 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v45 = v52[0];
        v46 = 40;
        goto LABEL_91;
      }

      if (v13 == 2)
      {
        *(a1 + 68) |= 0x20u;
        v52[0] = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v48 = [a2 data];
          [v48 getBytes:v52 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v45 = v52[0];
        v46 = 48;
LABEL_91:
        *(a1 + v46) = v45;
        goto LABEL_92;
      }
    }

    goto LABEL_70;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableCellHeaderViewModelReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v37[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37[0] & 0x7F) << v5;
        if ((v37[0] & 0x80) == 0)
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
        break;
      }

      if (v13 == 1)
      {
        v29 = PBReaderReadString();
        v30 = 48;
LABEL_55:
        v33 = *(a1 + v30);
        *(a1 + v30) = v29;

        goto LABEL_64;
      }

      if (v13 == 2)
      {
        v29 = PBReaderReadString();
        v30 = 40;
        goto LABEL_55;
      }

      if (v13 != 3)
      {
        goto LABEL_48;
      }

      v21 = objc_alloc_init(HKCodableColorRepresentation);
      objc_storeStrong((a1 + 32), v21);
      v37[0] = 0;
      v37[1] = 0;
      if (!PBReaderPlaceMark() || !HKCodableColorRepresentationReadFrom(v21, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_64:
      v35 = [a2 position];
      if (v35 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 5)
    {
      if (v13 == 6)
      {
        v29 = PBReaderReadString();
        v30 = 24;
        goto LABEL_55;
      }

      if (v13 == 7)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 60) |= 2u;
        while (1)
        {
          LOBYTE(v37[0]) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v37 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v37[0] & 0x7F) << v22;
          if ((v37[0] & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
          if (v11)
          {
            v28 = 0;
            goto LABEL_61;
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

LABEL_61:
        *(a1 + 16) = v28;
        goto LABEL_64;
      }
    }

    else
    {
      if (v13 == 4)
      {
        *(a1 + 60) |= 1u;
        v37[0] = 0;
        v31 = [a2 position] + 8;
        if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 8, v32 <= objc_msgSend(a2, "length")))
        {
          v34 = [a2 data];
          [v34 getBytes:v37 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v37[0];
        goto LABEL_64;
      }

      if (v13 == 5)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 60) |= 4u;
        while (1)
        {
          LOBYTE(v37[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v37 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v37[0] & 0x7F) << v14;
          if ((v37[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_57;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_57:
        *(a1 + 56) = v20;
        goto LABEL_64;
      }
    }

LABEL_48:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_64;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableColorRepresentationReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27[0] & 0x7F) << v5;
        if ((v27[0] & 0x80) == 0)
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
        v22 = PBReaderReadString();
        v23 = 32;
        goto LABEL_38;
      }

      if (v13 != 4)
      {
        goto LABEL_34;
      }

      v21 = objc_alloc_init(HKCodableRGBConfiguration);
      objc_storeStrong((a1 + 24), v21);
      v27[0] = 0;
      v27[1] = 0;
      if (!PBReaderPlaceMark() || !HKCodableRGBConfigurationReadFrom(v21, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_43:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v22 = PBReaderReadString();
      v23 = 16;
LABEL_38:
      v24 = *(a1 + v23);
      *(a1 + v23) = v22;

      goto LABEL_43;
    }

    if (v13 == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 40) |= 1u;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v27[0] & 0x7F) << v14;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_42;
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

LABEL_42:
      *(a1 + 8) = v20;
      goto LABEL_43;
    }

LABEL_34:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_43;
  }

  return [a2 hasError] ^ 1;
}

void sub_1C3AA87B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCNAvatarImageRendererClass_block_invoke(uint64_t a1)
{
  ContactsUILibrary();
  result = objc_getClass("CNAvatarImageRenderer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNAvatarImageRendererClass_block_invoke_cold_1();
  }

  getCNAvatarImageRendererClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void ContactsUILibrary()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!ContactsUILibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __ContactsUILibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E81B8638;
    v2 = 0;
    ContactsUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ContactsUILibraryCore_frameworkLibrary)
  {
    ContactsUILibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __ContactsUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ContactsUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getCNAvatarImageRenderingScopeClass_block_invoke(uint64_t a1)
{
  ContactsUILibrary();
  result = objc_getClass("CNAvatarImageRenderingScope");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNAvatarImageRenderingScopeClass_block_invoke_cold_1();
  }

  getCNAvatarImageRenderingScopeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t HKCodableSummaryCurrentValueReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v34) = 0;
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
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v22 = PBReaderReadData();
            v23 = 56;
LABEL_55:
            v30 = *(a1 + v23);
            *(a1 + v23) = v22;

            goto LABEL_65;
          case 2:
            v22 = PBReaderReadString();
            v23 = 24;
            goto LABEL_55;
          case 3:
            v14 = objc_alloc_init(HKCodableSummarySupplementaryValue);
            objc_storeStrong((a1 + 48), v14);
            v34 = 0;
            v35 = 0;
            if (!PBReaderPlaceMark() || !HKCodableSummarySupplementaryValueReadFrom(v14, a2))
            {
LABEL_67:

              return 0;
            }

            goto LABEL_29;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 64) |= 1u;
          while (1)
          {
            LOBYTE(v34) = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v34 & 0x7F) << v24;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_59;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v26;
          }

LABEL_59:
          v31 = 8;
          goto LABEL_64;
        }

        if (v13 == 7)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 64) |= 2u;
          while (1)
          {
            LOBYTE(v34) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v34 & 0x7F) << v15;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_63;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_63:
          v31 = 16;
LABEL_64:
          *(a1 + v31) = v21;
          goto LABEL_65;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v22 = PBReaderReadData();
          v23 = 40;
          goto LABEL_55;
        }

        if (v13 == 5)
        {
          v14 = objc_alloc_init(HKCodableMetadataDictionary);
          objc_storeStrong((a1 + 32), v14);
          v34 = 0;
          v35 = 0;
          if (!PBReaderPlaceMark() || !HKCodableMetadataDictionaryReadFrom(v14, a2))
          {
            goto LABEL_67;
          }

LABEL_29:
          PBReaderRecallMark();

          goto LABEL_65;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_65:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id HKOTAFactorPackID()
{
  v0 = [MEMORY[0x1E69DB518] clientWithIdentifier:275];
  v1 = [v0 rolloutIdentifiersWithNamespaceName:*MEMORY[0x1E696BBD0]];
  v2 = [v1 factorPackId];

  return v2;
}

uint64_t HKCodableSummaryCategoryValueReadFrom(uint64_t a1, void *a2)
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
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
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
        *(a1 + 24) |= 2u;
        v25 = 0;
        v20 = [a2 position] + 8;
        if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 8, v21 <= objc_msgSend(a2, "length")))
        {
          v23 = [a2 data];
          [v23 getBytes:&v25 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 16) = v25;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v27 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v27 & 0x7F) << v13;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_36:
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

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableSleepingSampleAggregateReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27[0] & 0x7F) << v5;
        if ((v27[0] & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        *(a1 + 32) |= 1u;
        v27[0] = 0;
        v22 = [a2 position] + 8;
        if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 8, v23 <= objc_msgSend(a2, "length")))
        {
          v24 = [a2 data];
          [v24 getBytes:v27 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v27[0];
      }

      else if (v13 == 2)
      {
        v21 = objc_alloc_init(HKCodableQuantity);
        objc_storeStrong((a1 + 24), v21);
        v27[0] = 0;
        v27[1] = 0;
        if (!PBReaderPlaceMark() || !HKCodableQuantityReadFrom(v21, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 32) |= 2u;
        while (1)
        {
          LOBYTE(v27[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v27[0] & 0x7F) << v14;
          if ((v27[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_40;
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

LABEL_40:
        *(a1 + 16) = v20;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1C3AB63D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 240), 8);
  _Block_object_dispose((v37 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HKCodableStateOfMindDataSourceQueryDataReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(HKCodableStateOfMindValenceDistributionSummary);
        [a1 addValenceDistributionSummary:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HKCodableStateOfMindValenceDistributionSummaryReadFrom(&v13->super.super.isa, a2))
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

void sub_1C3ABA8E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_1C3ABE208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_12(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t OUTLINED_FUNCTION_2_2()
{

  return NSRequestConcreteImplementation();
}

uint64_t HKCodableSummaryTrendResultsReadFrom(_BYTE *a1, void *a2)
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
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
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

      if (v13 == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        a1[32] |= 1u;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v31[0] & 0x7F) << v15;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_46;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_46:
        v28 = 8;
LABEL_51:
        *&a1[v28] = v21;
        goto LABEL_52;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(HKCodableSummaryTrendValue);
        [a1 addTrendValues:v14];
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || !HKCodableSummaryTrendValueReadFrom(v14, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_52:
      v29 = [a2 position];
      if (v29 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v24 = 0;
    a1[32] |= 2u;
    while (1)
    {
      LOBYTE(v31[0]) = 0;
      v25 = [a2 position] + 1;
      if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
      {
        v27 = [a2 data];
        [v27 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v24 |= (v31[0] & 0x7F) << v22;
      if ((v31[0] & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v11 = v23++ >= 9;
      if (v11)
      {
        v21 = 0;
        goto LABEL_50;
      }
    }

    if ([a2 hasError])
    {
      v21 = 0;
    }

    else
    {
      v21 = v24;
    }

LABEL_50:
    v28 = 16;
    goto LABEL_51;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableMenstrualCyclesProjectionKindReadFrom(uint64_t a1, void *a2)
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
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
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
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableHealthChartsDataReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(HKCodableHealthChartsSeries);
        [a1 addSeries:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HKCodableHealthChartsSeriesReadFrom(v13, a2))
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

void sub_1C3AC24D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _WeekendDaysInCalendar(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = [a1 hk_weekendDays];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v9;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v8 + 1) + 8 * i) unsignedIntegerValue];
        v4 |= HKSleepScheduleWeekdayFromWeekdayComponent();
      }

      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id _TimeStringForDateComponents(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [MEMORY[0x1E695DEE8] currentCalendar];
    v3 = [v2 dateFromComponents:v1];

    v4 = HKTimeFormatter();
    v5 = [v4 stringFromDate:v3];
  }

  else
  {
    v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v5 = [v3 localizedStringForKey:@"SLEEP_SCHEDULE_NO_TIMES_TEXT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Eucalyptus"];
  }

  return v5;
}

id _OverrideStringForCalendar(void *a1, void *a2)
{
  v3 = a1;
  if (!a2)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString * _Nonnull _OverrideStringForCalendar(NSCalendar * _Nonnull __strong, NSNumber * _Nullable __strong)"}];
    [v11 handleFailureInFunction:v12 file:@"HKSleepSchedule+HealthUI.m" lineNumber:44 description:@"Can't create an override string without a day index"];

    v4 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v13 = [v4 localizedStringForKey:@"SLEEP_SCHEDULE_NO_TIMES_TEXT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Eucalyptus"];
    goto LABEL_21;
  }

  v4 = [MEMORY[0x1E695DF00] hk_dateOnDayIndex:objc_msgSend(a2 atHour:"integerValue") calendar:{12, v3}];
  v5 = HKLocalizedStringForDateAndTemplateWithFormattingContext(v4, 13, 1);
  v6 = [v3 component:512 fromDate:v4];
  if (v6 <= 3)
  {
    switch(v6)
    {
      case 1:
        v7 = MEMORY[0x1E696AEC0];
        v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v9 = v8;
        v10 = @"SLEEP_SCHEDULE_SUNDAY_ONLY_%@";
        goto LABEL_19;
      case 2:
        v7 = MEMORY[0x1E696AEC0];
        v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v9 = v8;
        v10 = @"SLEEP_SCHEDULE_MONDAY_ONLY_%@";
        goto LABEL_19;
      case 3:
        v7 = MEMORY[0x1E696AEC0];
        v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v9 = v8;
        v10 = @"SLEEP_SCHEDULE_TUESDAY_ONLY_%@";
LABEL_19:
        v16 = [v8 localizedStringForKey:v10 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Eucalyptus"];
        v13 = [v7 stringWithFormat:v16, v5];

        goto LABEL_20;
    }
  }

  else
  {
    if (v6 <= 5)
    {
      v7 = MEMORY[0x1E696AEC0];
      if (v6 == 4)
      {
        v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v9 = v8;
        v10 = @"SLEEP_SCHEDULE_WEDNESDAY_ONLY_%@";
      }

      else
      {
        v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v9 = v8;
        v10 = @"SLEEP_SCHEDULE_THURSDAY_ONLY_%@";
      }

      goto LABEL_19;
    }

    if (v6 == 6)
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v9 = v8;
      v10 = @"SLEEP_SCHEDULE_FRIDAY_ONLY_%@";
      goto LABEL_19;
    }

    if (v6 == 7)
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v9 = v8;
      v10 = @"SLEEP_SCHEDULE_SATURDAY_ONLY_%@";
      goto LABEL_19;
    }
  }

  v14 = [MEMORY[0x1E696AAA8] currentHandler];
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString * _Nonnull _OverrideStringForCalendar(NSCalendar * _Nonnull __strong, NSNumber * _Nullable __strong)"}];
  [v14 handleFailureInFunction:v15 file:@"HKSleepSchedule+HealthUI.m" lineNumber:67 description:@"Incompatible weekday component for override schedule"];

  v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v13 = [v9 localizedStringForKey:@"SLEEP_SCHEDULE_NO_TIMES_TEXT" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Eucalyptus"];
LABEL_20:

LABEL_21:

  return v13;
}

id _OrderedCalendarWeekdayComponents(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [v1 firstWeekday];
  v4 = [v1 weekdaySymbols];
  v5 = [v4 count];

  if (v3 <= v5)
  {
    do
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
      [v2 addObject:v6];

      ++v3;
      v7 = [v1 weekdaySymbols];
      v8 = [v7 count];
    }

    while (v3 <= v8);
  }

  if ([v1 firstWeekday] >= 2)
  {
    v9 = 1;
    do
    {
      v10 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
      [v2 addObject:v10];

      ++v9;
    }

    while (v9 < [v1 firstWeekday]);
  }

  return v2;
}

id __HKAdjustedAxisBoundsRuleBlockForRange_block_invoke(double a1, double a2)
{
  v2 = a1 + (a2 - a1) * 0.122302158;
  if (a1 <= 0.0)
  {
    v2 = a1;
  }

  v5[1] = 3221225472;
  v5[0] = MEMORY[0x1E69E9820];
  v5[2] = __HKAdjustedAxisBoundsRuleBlockForRange_block_invoke_2;
  v5[3] = &__block_descriptor_64_e19_B40__0d8d16_d24_d32l;
  *&v5[4] = v2;
  *&v5[5] = a1 + (a2 - a1) * 0.877697842;
  *&v5[6] = a1;
  *&v5[7] = a2;
  v3 = _Block_copy(v5);

  return v3;
}

uint64_t __HKAdjustedAxisBoundsRuleBlockForRange_block_invoke_2(uint64_t a1, void *a2, void *a3, double a4, double a5)
{
  if (*(a1 + 32) > a4 || *(a1 + 40) < a5)
  {
    return 0;
  }

  if (a2)
  {
    *a2 = *(a1 + 48);
  }

  if (a3)
  {
    *a3 = *(a1 + 56);
  }

  return 1;
}

id __HKIdentityAxisBoundsRuleBlockForRange_block_invoke(double a1, double a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __HKIdentityAxisBoundsRuleBlockForRange_block_invoke_2;
  v4[3] = &__block_descriptor_48_e19_B40__0d8d16_d24_d32l;
  *&v4[4] = a1;
  *&v4[5] = a2;
  v2 = _Block_copy(v4);

  return v2;
}

uint64_t __HKIdentityAxisBoundsRuleBlockForRange_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    *a2 = *(a1 + 32);
  }

  if (a3)
  {
    *a3 = *(a1 + 40);
  }

  return 1;
}

id NSStringFromHKGraphSeriesDataPointPath(void *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{zoom:%ld, index:%ld, resolution:%ld}", a1[1], *a1, a1[2]];
  v4 = [v2 stringWithFormat:@"{%@, pointIndex:%ld}", v3, a1[3]];

  return v4;
}

BOOL HKGraphSeriesDataPointPathEqualToPath(void *a1, void *a2)
{
  if (a1[3] == a2[3] && (*a1 == *a2 ? (v2 = a1[1] == a2[1]) : (v2 = 0), v2))
  {
    return a1[2] == a2[2];
  }

  else
  {
    return 0;
  }
}

BOOL HKGraphSeriesDataPointPathRangeEqualToRange(void *a1, void *a2)
{
  if (a1[3] != a2[3])
  {
    return 0;
  }

  v2 = *a1 == *a2 && a1[1] == a2[1];
  v3 = v2 && a1[2] == a2[2];
  if (!v3 || a1[7] != a2[7])
  {
    return 0;
  }

  return a1[4] == a2[4] && a1[5] == a2[5] && a1[6] == a2[6];
}

uint64_t HKGraphSeriesDataPointPathInRange(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*a1 <= *a2)
  {
    v3 = *a1 == *a2 && a1[3] > a2[3];
  }

  else
  {
    v3 = 1;
  }

  v4 = a2[4];
  if (v2 >= v4)
  {
    v5 = v2 == v4 && a1[3] < a2[7];
  }

  else
  {
    v5 = 1;
  }

  return v3 & v5;
}

uint64_t HKGraphSeriesDataPointPathInRangeInclusive(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  v7 = a2[3];
  if (v4 == v7)
  {
    v8 = v2 == v6 && v3 == a2[1];
    if (v8 && v5 == a2[2])
    {
      return 1;
    }
  }

  v10 = a2[4];
  v11 = a2[7];
  if (v4 == v11)
  {
    v12 = v2 == v10 && v3 == a2[5];
    if (v12 && v5 == a2[6])
    {
      return 1;
    }
  }

  v15 = v2 == v6 && v4 > v7;
  v16 = v2 > v6 || v15;
  v18 = v2 == v10 && v4 < v11;
  v19 = v2 < v10 || v18;
  return v16 & v19;
}

id HKGraphSeriesDataBlockPathMinimumX(uint64_t *a1)
{
  v2 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:0.0];
  v3 = *a1;
  v4 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:a1[1]];
  [v4 seriesBlockSize];
  v6 = v5;

  v7 = [v2 dateByAddingTimeInterval:v6 * v3];

  return v7;
}

id HKGraphSeriesDataBlockPathMaximumX(uint64_t a1)
{
  v3 = *a1 + 1;
  v4 = *(a1 + 8);
  v1 = HKGraphSeriesDataBlockPathMinimumX(&v3);

  return v1;
}

void HKGraphSeriesDataBlockPathContainingDate(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = MEMORY[0x1E695DF00];
  v8 = a1;
  v14 = [v7 dateWithTimeIntervalSinceReferenceDate:0.0];
  v9 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:a2];
  [v9 seriesBlockSize];
  v11 = v10;

  [v8 timeIntervalSinceDate:v14];
  v13 = v12;

  *a4 = vcvtmd_s64_f64(v13 / v11);
  a4[1] = a2;
  a4[2] = a3;
}

uint64_t HKSleepChartPointFormatterOptionsForSleepAnalysis(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && (v3 = [v1 intValue], v3 <= 5))
  {
    v4 = qword_1C3D5D5E0[v3];
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

void sub_1C3AD6F18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C3AD79E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C3ADAAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMKBGetDeviceLockStateSymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MobileKeyBagLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MobileKeyBagLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E81B8C50;
    v6 = 0;
    MobileKeyBagLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = MobileKeyBagLibraryCore_frameworkLibrary;
  if (!MobileKeyBagLibraryCore_frameworkLibrary)
  {
    __getMKBGetDeviceLockStateSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "MKBGetDeviceLockState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKBGetDeviceLockStateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MobileKeyBagLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MobileKeyBagLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getBKDeviceClass_block_invoke(uint64_t a1)
{
  BiometricKitLibrary();
  result = objc_getClass("BKDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBKDeviceClass_block_invoke_cold_1();
  }

  getBKDeviceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void BiometricKitLibrary()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!BiometricKitLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __BiometricKitLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E81B8C68;
    v2 = 0;
    BiometricKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!BiometricKitLibraryCore_frameworkLibrary)
  {
    BiometricKitLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __BiometricKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  BiometricKitLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getBKDeviceManagerClass_block_invoke(uint64_t a1)
{
  BiometricKitLibrary();
  result = objc_getClass("BKDeviceManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBKDeviceManagerClass_block_invoke_cold_1();
  }

  getBKDeviceManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void _RenderImageInRect(CGContext *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v13 = a2;
  v28.origin.x = a3;
  v28.origin.y = a4;
  v28.size.width = a5;
  v28.size.height = a6;
  if (!CGRectIsEmpty(v28))
  {
    [v13 size];
    if (v15 > 0.0 && v14 > 0.0)
    {
      CGContextSaveGState(a1);
      CGContextSetAlpha(a1, a7);
      v29.origin.x = a3;
      v29.origin.y = a4;
      v29.size.width = a5;
      v29.size.height = a6;
      MinX = CGRectGetMinX(v29);
      v30.origin.x = a3;
      v30.origin.y = a4;
      v30.size.width = a5;
      v30.size.height = a6;
      MaxY = CGRectGetMaxY(v30);
      CGContextTranslateCTM(a1, MinX, MaxY);
      CGContextScaleCTM(a1, 1.0, -1.0);
      v18 = [v13 imageOrientation];
      if (a6 <= 0.0 || a5 <= 0.0 || !v18)
      {
        goto LABEL_27;
      }

      v19 = xmmword_1C3D5D610;
      v20 = -1.0;
      if (v18 <= 3)
      {
        if (v18 != 1)
        {
          if (v18 == 2)
          {
            v23 = a6 / a5;
            *(&v19 + 1) = 0;
            *&v19 = -a5 / a6;
            v22 = 0.0;
            v21 = a5;
            goto LABEL_25;
          }

          if (v18 == 3)
          {
            v23 = -a6 / a5;
            *(&v19 + 1) = 0;
            *&v19 = a5 / a6;
            v21 = 0.0;
            v22 = a6;
LABEL_25:
            v20 = 0.0;
            goto LABEL_26;
          }

          goto LABEL_19;
        }

        v23 = 0.0;
      }

      else
      {
        if (v18 <= 5)
        {
          if (v18 == 4)
          {
            v19 = xmmword_1C3D5D620;
            v22 = 0.0;
            v21 = a5;
          }

          else
          {
            v20 = 1.0;
            v21 = 0.0;
            v22 = a6;
          }

          v23 = 0.0;
          goto LABEL_26;
        }

        if (v18 != 6)
        {
          if (v18 == 7)
          {
            v23 = a6 / a5;
            *(&v19 + 1) = 0;
            *&v19 = a5 / a6;
            v22 = 0.0;
            v21 = 0.0;
            goto LABEL_25;
          }

LABEL_19:
          v20 = *MEMORY[0x1E695EFD0];
          v23 = *(MEMORY[0x1E695EFD0] + 8);
          v19 = *(MEMORY[0x1E695EFD0] + 16);
          v21 = *(MEMORY[0x1E695EFD0] + 32);
          v22 = *(MEMORY[0x1E695EFD0] + 40);
LABEL_26:
          v27.a = v20;
          v27.b = v23;
          *&v27.c = v19;
          v27.tx = v21;
          v27.ty = v22;
          CGContextConcatCTM(a1, &v27);
LABEL_27:
          v24 = *MEMORY[0x1E695EFF8];
          v25 = *(MEMORY[0x1E695EFF8] + 8);
          v26 = [v13 CGImage];
          v31.origin.x = v24;
          v31.origin.y = v25;
          v31.size.width = a5;
          v31.size.height = a6;
          CGContextDrawImage(a1, v31, v26);
          CGContextRestoreGState(a1);
          goto LABEL_28;
        }

        v23 = -a6 / a5;
        *(&v19 + 1) = 0;
        *&v19 = -a5 / a6;
        v20 = 0.0;
      }

      v22 = a6;
      v21 = a5;
      goto LABEL_26;
    }
  }

LABEL_28:
}

void sub_1C3AE1FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HKCodableSleepingSampleBaselineComparisonReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v24) = 0;
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(HKCodableSleepingSampleAggregate);
          objc_storeStrong((a1 + 16), v14);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !HKCodableSleepingSampleAggregateReadFrom(v14, a2))
          {
LABEL_48:

            return 0;
          }

          goto LABEL_41;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(HKCodableSleepingSampleBaselineAvailability);
          objc_storeStrong((a1 + 24), v14);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !HKCodableSleepingSampleBaselineAvailabilityReadFrom(v14, a2))
          {
            goto LABEL_48;
          }

          goto LABEL_41;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            LOBYTE(v24) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v24 & 0x7F) << v15;
            if ((v24 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_45;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_45:
          *(a1 + 8) = v21;
          goto LABEL_46;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(HKCodableSleepingSampleBaseline);
          objc_storeStrong((a1 + 32), v14);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !HKCodableSleepingSampleBaselineReadFrom(v14, a2))
          {
            goto LABEL_48;
          }

LABEL_41:
          PBReaderRecallMark();

          goto LABEL_46;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_46:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1C3AE4628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HKCodableActivitySummaryCollectionReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(HKCodableActivitySummaryEntry);
        [a1 addActivitySummaryEntry:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HKCodableActivitySummaryEntryReadFrom(v13, a2))
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

id HKInteractiveChartInfographicTitleAttributes()
{
  v5[2] = *MEMORY[0x1E69E9840];
  v4[0] = *MEMORY[0x1E69DB648];
  v0 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDDC0] variant:1024];
  v5[0] = v0;
  v4[1] = *MEMORY[0x1E69DB650];
  v1 = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
  v5[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

id HKInteractiveChartInfographicTableTitleAttributes()
{
  v5[2] = *MEMORY[0x1E69E9840];
  v4[0] = *MEMORY[0x1E69DB648];
  v0 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] variant:1024];
  v5[0] = v0;
  v4[1] = *MEMORY[0x1E69DB650];
  v1 = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
  v5[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

id HKInteractiveChartInfographicFootnoteAttributes()
{
  v5[2] = *MEMORY[0x1E69E9840];
  v4[0] = *MEMORY[0x1E69DB648];
  v0 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v5[0] = v0;
  v4[1] = *MEMORY[0x1E69DB650];
  v1 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v5[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

void sub_1C3AE7570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C3AE86CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose((v71 - 256), 8);
  _Unwind_Resume(a1);
}

void sub_1C3AEB258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C3AEBCE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C3AEC1EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C3AEC874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C3AECA00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C3AEFCD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C3AF2090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C3AF3974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *HKStringForChartDataSourceQueryRequestAudience(uint64_t a1)
{
  if (a1)
  {
    return @"sharing";
  }

  else
  {
    return @"primary";
  }
}

void sub_1C3AFB20C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _DateForDescription(void *a1)
{
  v1 = _DateForDescription_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    _DateForDescription_cold_1();
  }

  v3 = [_DateForDescription_dateFormatter stringFromDate:v2];

  return v3;
}

uint64_t OUTLINED_FUNCTION_1_7()
{

  return objc_opt_class();
}

uint64_t HKCodableSleepPeriodSegmentReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v24[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24[0] & 0x7F) << v5;
        if ((v24[0] & 0x80) == 0)
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
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          LOBYTE(v24[0]) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v24[0] & 0x7F) << v15;
          if ((v24[0] & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_39;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_39:
        *(a1 + 8) = v21;
        goto LABEL_40;
      }

      if (v13 == 2)
      {
        v14 = objc_alloc_init(HKCodableDateInterval);
        [a1 addSampleInterval:v14];
      }

      else
      {
        if (v13 != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_40;
        }

        v14 = objc_alloc_init(HKCodableDateInterval);
        objc_storeStrong((a1 + 16), v14);
      }

      v24[0] = 0;
      v24[1] = 0;
      if (!PBReaderPlaceMark() || !HKCodableDateIntervalReadFrom(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_40:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1C3AFFEEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_14(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

uint64_t HKCodableMetadataKeyValuePairReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27[0] & 0x7F) << v5;
        if ((v27[0] & 0x80) == 0)
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
        v22 = PBReaderReadString();
        v23 = 32;
        goto LABEL_38;
      }

      if (v13 != 4)
      {
        goto LABEL_34;
      }

      v21 = objc_alloc_init(HKCodableQuantity);
      objc_storeStrong((a1 + 24), v21);
      v27[0] = 0;
      v27[1] = 0;
      if (!PBReaderPlaceMark() || !HKCodableQuantityReadFrom(v21, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_43:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v22 = PBReaderReadString();
      v23 = 16;
LABEL_38:
      v24 = *(a1 + v23);
      *(a1 + v23) = v22;

      goto LABEL_43;
    }

    if (v13 == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 40) |= 1u;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v27[0] & 0x7F) << v14;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_42;
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

LABEL_42:
      *(a1 + 8) = v20;
      goto LABEL_43;
    }

LABEL_34:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_43;
  }

  return [a2 hasError] ^ 1;
}

id HKUILocalizedWorkoutTypeName()
{
  v0 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v1 = _HKWorkoutActivityNameForActivityType();
  v2 = [v0 localizedStringForKey:v1 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v2;
}

void sub_1C3B07B1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HKCodableSummarySleepDurationValueReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v27) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
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
      if ((v12 >> 3) == 3)
      {
        *(a1 + 32) |= 2u;
        v27 = 0;
        v18 = [a2 position] + 8;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 8, v19 <= objc_msgSend(a2, "length")))
        {
          v23 = [a2 data];
          [v23 getBytes:&v27 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v21 = v27;
        v22 = &OBJC_IVAR___HKCodableSummarySleepDurationValue__endOfSleepTimeIntervalSinceReferenceDate;
        goto LABEL_37;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        *(a1 + 32) |= 4u;
        v27 = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v24 = [a2 data];
          [v24 getBytes:&v27 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v21 = v27;
        v22 = &OBJC_IVAR___HKCodableSummarySleepDurationValue__inBedDuration;
LABEL_37:
        *(a1 + *v22) = v21;
        goto LABEL_38;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_38:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    *(a1 + 32) |= 1u;
    v27 = 0;
    v16 = [a2 position] + 8;
    if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
    {
      v20 = [a2 data];
      [v20 getBytes:&v27 range:{objc_msgSend(a2, "position"), 8}];

      [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
    }

    else
    {
      [a2 _setError];
    }

    v21 = v27;
    v22 = &OBJC_IVAR___HKCodableSummarySleepDurationValue__asleepDuration;
    goto LABEL_37;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableChartFeedItemDataReadFrom(id *a1, void *a2)
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
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
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
        v13 = objc_alloc_init(HKCodableChartSharableModel);
        objc_storeStrong(a1 + 1, v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !HKCodableChartSharableModelReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(HKCodableSummaryTrendChartViewModel);
    [a1 addTrends:v13];
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !HKCodableSummaryTrendChartViewModelReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableChartTimePeriodSeriesDataSourceDataReadFrom(id *a1, void *a2)
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
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
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
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v14 = objc_alloc_init(HKCodableTimePeriodData);
        [a1 addDateIntervalsToTotals:v14];
LABEL_25:
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !HKCodableTimePeriodDataReadFrom(v14, a2))
        {
LABEL_31:

          return 0;
        }

        goto LABEL_27;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(HKCodableDateComponents);
        objc_storeStrong(a1 + 3, v14);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !HKCodableDateComponentsReadFrom(v14, a2))
        {
          goto LABEL_31;
        }

LABEL_27:
        PBReaderRecallMark();

        goto LABEL_29;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(HKCodableTimePeriodData);
    [a1 addIntervalCounts:v14];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HKCodableSummaryQuantityValueReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        *(a1 + 24) |= 1u;
        v19[0] = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v16 = [a2 data];
          [v16 getBytes:v19 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v19[0];
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HKCodableQuantity);
        objc_storeStrong((a1 + 16), v13);
        v19[0] = 0;
        v19[1] = 0;
        if (!PBReaderPlaceMark() || !HKCodableQuantityReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id RevealObfuscatedStringWithSalt(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 dataUsingEncoding:4];
  CC_SHA1([v4 bytes], objc_msgSend(v4, "length"), md);
  v5 = [MEMORY[0x1E696AD60] stringWithCapacity:40];
  for (i = 0; i != 20; ++i)
  {
    [v5 appendFormat:@"%02x", md[i]];
  }

  v7 = [v5 copy];

  v8 = v7;
  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%s", a1];
  v10 = [v9 dataUsingEncoding:4];

  v11 = [v10 bytes];
  v12 = [v8 dataUsingEncoding:4];
  v13 = [v12 bytes];

  if ([v10 length])
  {
    v14 = 0;
    v15 = 0;
    v16 = v13;
    do
    {
      v17 = *v16++;
      *(v11 + v14) ^= v17;
      if ([v8 length] == v15 + 1)
      {
        v16 = v13;
        v15 = 0;
      }

      else
      {
        ++v15;
      }

      ++v14;
    }

    while ([v10 length] > v14);
  }

  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v10 encoding:4];

  return v18;
}

void sub_1C3B11590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C3B12C9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C3B13188(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t HKCodableQuantityDistributionDataReadFrom(_BYTE *a1, void *a2)
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
        LOBYTE(v33) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
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
      if ((v12 >> 3) <= 4)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v14 = objc_alloc_init(HKCodableQuantity);
            v17 = 80;
            goto LABEL_42;
          }

          if (v13 == 4)
          {
            v14 = objc_alloc_init(HKCodableQuantity);
            v17 = 88;
            goto LABEL_42;
          }
        }

        else
        {
          if (v13 == 1)
          {
            a1[96] |= 2u;
            v33 = 0;
            v18 = [a2 position] + 8;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 8, v19 <= objc_msgSend(a2, "length")))
            {
              v30 = [a2 data];
              [v30 getBytes:&v33 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v28 = v33;
            v29 = 40;
            goto LABEL_65;
          }

          if (v13 == 2)
          {
            a1[96] |= 1u;
            v33 = 0;
            v15 = [a2 position] + 8;
            if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v33 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v28 = v33;
            v29 = 32;
LABEL_65:
            *&a1[v29] = v28;
            goto LABEL_66;
          }
        }
      }

      else if (v13 <= 6)
      {
        if (v13 == 5)
        {
          v14 = objc_alloc_init(HKCodableQuantity);
          v17 = 72;
LABEL_42:
          objc_storeStrong(&a1[v17], v14);
          v33 = 0;
          v34 = 0;
          if (!PBReaderPlaceMark() || !HKCodableQuantityReadFrom(v14, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          goto LABEL_45;
        }

        if (v13 == 6)
        {
          v14 = objc_alloc_init(HKCodableQuantity);
          v17 = 48;
          goto LABEL_42;
        }
      }

      else
      {
        switch(v13)
        {
          case 7:
            v14 = objc_alloc_init(HKCodableQuantity);
            v17 = 64;
            goto LABEL_42;
          case 8:
            if ((v12 & 7) == 2)
            {
              v33 = 0;
              v34 = 0;
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

                v35 = 0;
                v22 = [a2 position] + 8;
                if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 8, v23 <= objc_msgSend(a2, "length")))
                {
                  v24 = [a2 data];
                  [v24 getBytes:&v35 range:{objc_msgSend(a2, "position"), 8}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
                }

                else
                {
                  [a2 _setError];
                }

                PBRepeatedDoubleAdd();
              }

              PBReaderRecallMark();
            }

            else
            {
              v33 = 0;
              v25 = [a2 position] + 8;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 8, v26 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v33 range:{objc_msgSend(a2, "position"), 8}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
              }

              else
              {
                [a2 _setError];
              }

              PBRepeatedDoubleAdd();
            }

            goto LABEL_66;
          case 9:
            v14 = PBReaderReadString();
            if (v14)
            {
              [a1 addContextIdentifiers:v14];
            }

LABEL_45:

            goto LABEL_66;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_66:
      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1C3B1A064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HKCodableSummaryTimePeriodValueReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v23) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23 & 0x7F) << v5;
        if ((v23 & 0x80) == 0)
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
        *(a1 + 24) |= 2u;
        v23 = 0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
        {
          v17 = [a2 data];
          [v17 getBytes:&v23 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v18 = v23;
        v19 = &OBJC_IVAR___HKCodableSummaryTimePeriodValue__timeInterval;
LABEL_31:
        *(a1 + *v19) = v18;
        goto LABEL_32;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v21 = [a2 position];
      if (v21 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    *(a1 + 24) |= 1u;
    v23 = 0;
    v15 = [a2 position] + 8;
    if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
    {
      v20 = [a2 data];
      [v20 getBytes:&v23 range:{objc_msgSend(a2, "position"), 8}];

      [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
    }

    else
    {
      [a2 _setError];
    }

    v18 = v23;
    v19 = &OBJC_IVAR___HKCodableSummaryTimePeriodValue__dateData;
    goto LABEL_31;
  }

  return [a2 hasError] ^ 1;
}

HKSampleTypeCountDataSource *HKInteractiveChartDataSourceCount(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [(HKHealthQueryChartCacheDataSource *)[HKSampleTypeCountDataSource alloc] initWithDisplayType:v4 healthStore:v3];

  [(HKSampleTypeCountDataSource *)v5 setUserInfoCreationBlock:&__block_literal_global_60];

  return v5;
}

HKInteractiveChartNumberData *__HKInteractiveChartDataSourceCount_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(HKInteractiveChartNumberData);
  [(HKInteractiveChartNumberData *)v3 setValue:v2];

  v4 = HKIntegerFormatter();
  [(HKInteractiveChartNumberData *)v3 setNumberFormatter:v4];

  return v3;
}

HKSingleDailyValueQuantityTypeDataSource *HKInteractiveChartDataSourceQuantityType(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a2;
  v16 = [v11 presentation];
  v17 = [v16 configurationForTimeScope:a3];

  v18 = [v15 aggregationStyle];
  if (!v18)
  {
    v20 = 16;
    v21 = v11;
    v22 = v13;
    v23 = v11;
    v24 = 16;
LABEL_8:
    v19 = [v21 _singleValueUserInfoBlockWithUnitController:v22 displayType:v23 statisticsOption:v24];
    goto LABEL_9;
  }

  if ([v17 detailChart] != 1)
  {
    if ([v17 detailChart] == 2)
    {
      v20 = 4;
      v21 = v11;
      v22 = v13;
      v23 = v11;
      v24 = 4;
    }

    else
    {
      v20 = 2;
      v21 = v11;
      v22 = v13;
      v23 = v11;
      v24 = 2;
    }

    goto LABEL_8;
  }

  v29 = MEMORY[0x1E69E9820];
  v30 = 3221225472;
  v31 = __HKInteractiveChartDataSourceQuantityType_block_invoke;
  v32 = &unk_1E81B6288;
  v33 = v13;
  v34 = v11;
  v19 = _Block_copy(&v29);

  v20 = 12;
LABEL_9:
  v25 = [v17 singleDailyValue];
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 6 && v25)
  {
    v26 = [(HKQuantityTypeDataSource *)[HKSingleDailyValueQuantityTypeDataSource alloc] initWithUnitController:v13 options:v20 displayType:v11 healthStore:v12];
  }

  else
  {
    v27 = [[HKQuantityTypeDataSource alloc] initWithUnitController:v13 options:v20 displayType:v11 healthStore:v12];
    v26 = v27;
    if (v14)
    {
      [(HKQuantityTypeDataSource *)v27 setPreprocessingHandler:v14];
    }
  }

  [(HKQuantityTypeDataSource *)v26 setUserInfoCreationBlock:v19];

  return v26;
}

HKInteractiveChartSinglePointData *__HKInteractiveChartDataSourceQuantityType_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) unitForDisplayType:*(a1 + 40)];
  v5 = [v3 minQuantity];
  [v5 doubleValueForUnit:v4];
  v7 = v6;

  v8 = [v3 maxQuantity];
  [v8 doubleValueForUnit:v4];
  v10 = v9;

  v11 = objc_alloc_init(HKInteractiveChartSinglePointData);
  v12 = v11;
  if (vabdd_f64(v10, v7) >= 0.00000011920929)
  {
    [(HKInteractiveChartSinglePointData *)v11 setMinValue:v7];
    [(HKInteractiveChartSinglePointData *)v12 setMaxValue:v10];
    [(HKInteractiveChartSinglePointData *)v12 setUnit:v4];
    -[HKInteractiveChartSinglePointData setRecordCount:](v12, "setRecordCount:", [v3 recordCount]);
    v14 = [v3 statisticsInterval];
    [(HKInteractiveChartSinglePointData *)v12 setStatisticsInterval:v14];

    [(HKInteractiveChartSinglePointData *)v12 setRepresentsRange:1];
  }

  else
  {
    [(HKInteractiveChartSinglePointData *)v11 setValue:v7];
    [(HKInteractiveChartSinglePointData *)v12 setUnit:v4];
    -[HKInteractiveChartSinglePointData setRecordCount:](v12, "setRecordCount:", [v3 recordCount]);
    v13 = [v3 statisticsInterval];
    [(HKInteractiveChartSinglePointData *)v12 setStatisticsInterval:v13];
  }

  v15 = [v3 metadata];
  [(HKInteractiveChartSinglePointData *)v12 setMetadata:v15];

  return v12;
}

id HKInteractiveChartDataSourceChartStyle(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v10 = [v7 chartingRules];
  v11 = [v10 chartStyleForTimeScope:a2];

  if (v11 > 4)
  {
    if (v11 <= 7)
    {
      if ((v11 - 5) >= 2)
      {
        if (v11 != 7)
        {
          goto LABEL_17;
        }

        v12 = [v7 objectType];
        v14 = HKInteractiveChartDataSourceSingleCenteredLine(v7, v12, v17, v8);
      }

      else
      {
        v12 = [v7 objectType];
        v14 = HKInteractiveChartDataSourceStackedCategoryValue(v7, v12, v13, v8);
      }

      goto LABEL_16;
    }

    if (v11 == 8)
    {
      v12 = [v7 objectType];
      v14 = HKInteractiveChartDataSourceLevelCategoryValue(v7, v12, v18, v8);
LABEL_16:
      v10 = v14;

      goto LABEL_17;
    }

    if (v11 != 9)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  if ((v11 - 1) < 3)
  {
LABEL_10:
    _HKInitializeLogging();
    v16 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      HKInteractiveChartDataSourceChartStyle_cold_1(v7, a2, v16);
    }

    v10 = 0;
    goto LABEL_17;
  }

  if (v11 == 4)
  {
    v15 = [v7 objectType];
    v10 = HKInteractiveChartDataSourceTimePeriod(v7, v15, a2, v8);
  }

LABEL_17:

  return v10;
}

HKTimePeriodSeriesDataSource *HKInteractiveChartDataSourceTimePeriod(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v9 = a2;
  v10 = [(HKHealthQueryChartCacheDataSource *)[HKTimePeriodSeriesDataSource alloc] initWithDisplayType:v7 healthStore:v8];

  [(HKTimePeriodSeriesDataSource *)v10 setSampleType:v9];
  v11 = [v7 chartingPredicateForTimeScope:a3];
  [(HKTimePeriodSeriesDataSource *)v10 setQueryPredicate:v11];

  v12 = v7;
  if ([v12 displayTypeIdentifier] == 63)
  {
    v13 = [v12 hk_enumeratedValueLabels];
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:_HKCategoryValueSleepAnalysisDefaultAsleepValue()];
    v15 = [v13 objectForKeyedSubscript:v14];
  }

  else
  {
    v15 = 0;
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __HKInteractiveChartDataSourceTimePeriod_block_invoke;
  v18[3] = &unk_1E81B96B0;
  v19 = v15;
  v16 = v15;
  [(HKTimePeriodSeriesDataSource *)v10 setUserInfoCreationBlock:v18];

  return v10;
}

HKHorizontalTimePeriodDataSource *HKInteractiveChartDataSourceStackedCategoryValue(void *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  v8 = a1;
  v9 = [(HKHealthQueryChartCacheDataSource *)[HKHorizontalTimePeriodDataSource alloc] initWithDisplayType:v8 healthStore:v6];

  [(HKHorizontalTimePeriodDataSource *)v9 setSampleType:v7];
  v10 = [v8 hk_valueOrderForStackedCharts];

  [(HKHorizontalTimePeriodDataSource *)v9 setValueOrder:v10];
  [(HKHorizontalTimePeriodDataSource *)v9 setUserInfoCreationBlock:&__block_literal_global_332_2];

  return v9;
}

HKHorizontalSingleLineDataSource *HKInteractiveChartDataSourceSingleCenteredLine(void *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  v8 = a1;
  v9 = [(HKHealthQueryChartCacheDataSource *)[HKHorizontalSingleLineDataSource alloc] initWithDisplayType:v8 healthStore:v6];

  [(HKHorizontalSingleLineDataSource *)v9 setUserInfoCreationBlock:&__block_literal_global_328];
  [(HKHorizontalSingleLineDataSource *)v9 setSampleType:v7];

  return v9;
}

HKLevelCategoryDataSource *HKInteractiveChartDataSourceLevelCategoryValue(void *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  v8 = a1;
  v9 = [(HKHealthQueryChartCacheDataSource *)[HKLevelCategoryDataSource alloc] initWithDisplayType:v8 healthStore:v6];

  v10 = [v8 hk_valueOrderForStackedCharts];

  [(HKLevelCategoryDataSource *)v9 setValueOrder:v10];
  [(HKLevelCategoryDataSource *)v9 setSampleType:v7];

  [(HKLevelCategoryDataSource *)v9 setUserInfoCreationBlock:&__block_literal_global_323];

  return v9;
}

HKInteractiveChartCategoryValueData *__HKInteractiveChartDataSourceLevelCategoryValue_block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(HKInteractiveChartCategoryValueData);
  [(HKInteractiveChartCategoryValueData *)v8 setValue:a2];
  [(HKInteractiveChartCategoryValueData *)v8 setStartDate:v7];

  [(HKInteractiveChartCategoryValueData *)v8 setEndDate:v6];

  return v8;
}

HKInteractiveChartCategoryValueData *__HKInteractiveChartDataSourceSingleCenteredLine_block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(HKInteractiveChartCategoryValueData);
  [(HKInteractiveChartCategoryValueData *)v8 setValue:a2];
  [(HKInteractiveChartCategoryValueData *)v8 setStartDate:v7];

  [(HKInteractiveChartCategoryValueData *)v8 setEndDate:v6];

  return v8;
}

HKInteractiveChartTimePeriodData *__HKInteractiveChartDataSourceStackedCategoryValue_block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(HKInteractiveChartTimePeriodData);
  [v5 timeIntervalSinceDate:v6];
  [(HKInteractiveChartTimePeriodData *)v7 setTimePeriod:?];
  [(HKInteractiveChartTimePeriodData *)v7 setStartDate:v6];

  [(HKInteractiveChartTimePeriodData *)v7 setEndDate:v5];
  [(HKInteractiveChartTimePeriodData *)v7 setRecordCount:1];

  return v7;
}

HKInteractiveChartTimePeriodData *__HKInteractiveChartDataSourceTimePeriod_block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = a2;
  v9 = objc_alloc_init(HKInteractiveChartTimePeriodData);
  [v8 doubleValue];
  v11 = v10;

  [(HKInteractiveChartTimePeriodData *)v9 setTimePeriod:v11];
  [(HKInteractiveChartTimePeriodData *)v9 setTimePeriodPrefix:*(a1 + 32)];
  [(HKInteractiveChartTimePeriodData *)v9 setRecordCount:a3];
  [(HKInteractiveChartTimePeriodData *)v9 setStatisticsInterval:v7];

  return v9;
}

HKJulianIndexedSevenDayQuantityDataSource *HKInteractiveChartDataSourceForAfibBurden(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v9 = a3;
  v10 = [HKJulianIndexedSevenDayQuantityDataSource alloc];
  v11 = [v7 objectType];
  if (a2 == 3)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __HKInteractiveChartDataSourceForAfibBurden_block_invoke;
    v14[3] = &unk_1E81B96D8;
    v15 = v8;
    v16 = v7;
    v12 = [(HKJulianIndexedSevenDayQuantityDataSource *)v10 initWithDisplayType:v16 healthStore:v9 quantityType:v11 unitController:v15 singlePointUserInfoCreationBlock:v14];
  }

  else
  {
    v12 = [(HKJulianIndexedSevenDayQuantityDataSource *)v10 initWithDisplayType:v7 healthStore:v9 quantityType:v11 unitController:v8 intervalUserInfoCreationBlock:&__block_literal_global_341_1];
  }

  return v12;
}

HKInteractiveChartAFibBurdenData *__HKInteractiveChartDataSourceForAfibBurden_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = a2;
  v8 = [v4 unitForDisplayType:v5];
  v9 = [v7 averageQuantity];
  [v9 doubleValueForUnit:v8];
  v11 = v10;

  v12 = [v7 recordCount];
  if (v11 < 0.02)
  {
    v11 = 0.02;
  }

  v13 = objc_alloc_init(HKInteractiveChartAFibBurdenData);
  [(HKInteractiveChartSinglePointData *)v13 setValue:v11];
  [(HKInteractiveChartSinglePointData *)v13 setUnit:v8];
  [(HKInteractiveChartSinglePointData *)v13 setRepresentsRange:1];
  [(HKInteractiveChartSinglePointData *)v13 setMinValue:v11];
  [(HKInteractiveChartSinglePointData *)v13 setMaxValue:v11];
  v14 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696BB38]];

  -[HKInteractiveChartAFibBurdenData setClampsLowerData:](v13, "setClampsLowerData:", [v14 BOOLValue]);
  [(HKInteractiveChartSinglePointData *)v13 setRecordCount:v12];
  v15 = [v7 statisticsInterval];

  [(HKInteractiveChartSinglePointData *)v13 setStatisticsInterval:v15];

  return v13;
}

HKInteractiveChartAFibBurdenData *__HKInteractiveChartDataSourceForAfibBurden_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = objc_alloc_init(HKInteractiveChartAFibBurdenData);
  v7 = [v5 _unit];
  [(HKInteractiveChartSinglePointData *)v6 setUnit:v7];

  v8 = [v5 _unit];
  [v5 doubleValueForUnit:v8];
  v10 = v9;

  if (v10 < 0.02)
  {
    v10 = 0.02;
  }

  [(HKInteractiveChartSinglePointData *)v6 setValue:v10];
  [(HKInteractiveChartSinglePointData *)v6 setMinValue:v10];
  [(HKInteractiveChartSinglePointData *)v6 setMaxValue:v10];
  [(HKInteractiveChartSinglePointData *)v6 setRepresentsRange:1];
  v11 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696BB38]];

  -[HKInteractiveChartAFibBurdenData setClampsLowerData:](v6, "setClampsLowerData:", [v11 BOOLValue]);

  return v6;
}

id HKInteractiveChartDataSourceForAppleWalkingSteadiness(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a1;
  v10 = [v9 objectType];
  v11 = [HKMobilityUtilities generateAppleWalkingSteadinessDataSourceForTimeScope:a2 displayType:v9 healthStore:v8 quantityType:v10 unitController:v7];

  return v11;
}

id HKInteractiveChartDataSourceForAudioLevel(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = [v7 objectType];
  v9 = [v8 identifier];
  v10 = [v7 _audioLevelDataSourceForTypeIdentifier:v9 withHealthStore:v6 attenuatesExposureData:1 unitController:v5];

  return v10;
}

HKBalanceChartDataSource *HKInteractiveChartDataSourceForBalance(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [[HKBalanceChartDataSource alloc] initWithDisplayType:v4 healthStore:v3];

  return v5;
}

HKBloodPressureDataSource *HKInteractiveChartDataSourceForBloodPressure(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696C510];
  v4 = a2;
  v5 = a1;
  v6 = [v3 unitFromString:@"mmHg"];
  v7 = [(HKHealthQueryChartCacheDataSource *)[HKBloodPressureDataSource alloc] initWithDisplayType:v5 healthStore:v4];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __HKInteractiveChartDataSourceForBloodPressure_block_invoke;
  v10[3] = &unk_1E81B9720;
  v11 = v6;
  v8 = v6;
  [(HKBloodPressureDataSource *)v7 setUserInfoCreationBlock:v10];

  return v7;
}

HKInteractiveChartBloodPressureData *__HKInteractiveChartDataSourceForBloodPressure_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = MEMORY[0x1E696AD98];
    v9 = [v5 minimumQuantity];
    [v9 doubleValueForUnit:*(a1 + 32)];
    v10 = [v8 numberWithDouble:?];

    v11 = MEMORY[0x1E696AD98];
    v12 = [v5 maximumQuantity];
    [v12 doubleValueForUnit:*(a1 + 32)];
    v13 = [v11 numberWithDouble:?];

    v14 = [HKValueRange valueRangeWithMinValue:v10 maxValue:v13];
    v15 = MEMORY[0x1E696AD98];
    v16 = [v5 averageQuantity];
    [v16 doubleValueForUnit:*(a1 + 32)];
    v17 = [v15 numberWithDouble:?];

    if (v7)
    {
LABEL_3:
      v18 = MEMORY[0x1E696AD98];
      v19 = [v7 minimumQuantity];
      [v19 doubleValueForUnit:*(a1 + 32)];
      v20 = [v18 numberWithDouble:?];

      v21 = MEMORY[0x1E696AD98];
      v22 = [v7 maximumQuantity];
      [v22 doubleValueForUnit:*(a1 + 32)];
      v23 = [v21 numberWithDouble:?];

      v24 = [HKValueRange valueRangeWithMinValue:v20 maxValue:v23];
      v25 = MEMORY[0x1E696AD98];
      v26 = [v7 averageQuantity];
      [v26 doubleValueForUnit:*(a1 + 32)];
      v27 = [v25 numberWithDouble:?];

      goto LABEL_6;
    }
  }

  else
  {
    v17 = 0;
    v14 = 0;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  v27 = 0;
  v24 = 0;
LABEL_6:
  v28 = objc_alloc_init(HKInteractiveChartBloodPressureData);
  [(HKInteractiveChartBloodPressureData *)v28 setSystolicRange:v14];
  [(HKInteractiveChartBloodPressureData *)v28 setDiastolicRange:v24];
  [(HKInteractiveChartBloodPressureData *)v28 setSystolicAverage:v17];
  [(HKInteractiveChartBloodPressureData *)v28 setDiastolicAverage:v27];

  return v28;
}