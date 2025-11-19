uint64_t BLTPBContactReadFrom(uint64_t a1, void *a2)
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
        v40 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40 & 0x7F) << v5;
        if ((v40 & 0x80) == 0)
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
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v28 = PBReaderReadString();
            v29 = 56;
          }

          else
          {
            if (v13 != 4)
            {
              goto LABEL_63;
            }

            v28 = PBReaderReadString();
            v29 = 32;
          }

          goto LABEL_53;
        }

        if (v13 == 1)
        {
          v28 = PBReaderReadString();
          v29 = 40;
LABEL_53:
          v30 = *(a1 + v29);
          *(a1 + v29) = v28;

          goto LABEL_74;
        }

        if (v13 != 2)
        {
          goto LABEL_63;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          v41 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v41 & 0x7F) << v21;
          if ((v41 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_68;
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

LABEL_68:
        *(a1 + 48) = v27;
      }

      else
      {
        if (v13 <= 6)
        {
          if (v13 == 5)
          {
            v28 = PBReaderReadString();
            v29 = 16;
          }

          else
          {
            if (v13 != 6)
            {
LABEL_63:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_74;
            }

            v28 = PBReaderReadString();
            v29 = 8;
          }

          goto LABEL_53;
        }

        switch(v13)
        {
          case 9:
            v28 = PBReaderReadString();
            v29 = 24;
            goto LABEL_53;
          case 8:
            v31 = 0;
            v32 = 0;
            v33 = 0;
            *(a1 + 68) |= 1u;
            while (1)
            {
              v42 = 0;
              v34 = [a2 position] + 1;
              if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
              {
                v36 = [a2 data];
                [v36 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v33 |= (v42 & 0x7F) << v31;
              if ((v42 & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              v11 = v32++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_72;
              }
            }

            v20 = (v33 != 0) & ~[a2 hasError];
LABEL_72:
            v38 = 65;
            break;
          case 7:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              v43 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v43 & 0x7F) << v14;
              if ((v43 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_70;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_70:
            v38 = 64;
            break;
          default:
            goto LABEL_63;
        }

        *(a1 + v38) = v20;
      }

LABEL_74:
      v39 = [a2 position];
    }

    while (v39 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_242014BD8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

__CFString *_stringForSettingsWillPresentBlockedBy(uint64_t a1)
{
  if (a1)
  {
    v2 = [MEMORY[0x277CBEB18] array];
    for (i = 0; i != 10; ++i)
    {
      v4 = _stringForSettingsWillPresentBlockedBy_flags[i];
      if ((v4 & a1) != 0)
      {
        v5 = @"BLTSettingsWillPresentBlockedByScreenTime";
        if (v4 != 512)
        {
          v5 = 0;
        }

        if (v4 == 256)
        {
          v5 = @"BLTSettingsWillPresentBlockedByForwardOnly";
        }

        if (v4 == 128)
        {
          v5 = @"BLTSettingsWillPresentBlockedByDisableWristDetection";
        }

        if (v4 == 64)
        {
          v6 = @"BLTSettingsWillPresentBlockedByOptOutOfCoordinationDenyListed";
        }

        else
        {
          v6 = 0;
        }

        if (v4 == 32)
        {
          v6 = @"BLTSettingsWillPresentBlockedByNotAllowsNotifications";
        }

        if (v4 <= 127)
        {
          v5 = v6;
        }

        if (v4 == 16)
        {
          v7 = @"BLTSettingsWillPresentBlockedByNotShowsOnExternalDevices";
        }

        else
        {
          v7 = 0;
        }

        if (v4 == 8)
        {
          v7 = @"BLTSettingsWillPresentBlockedByDisconnection";
        }

        if (v4 == 4)
        {
          v7 = @"BLTSettingsWillPresentBlockedByFirstPartyCoordinationDenyListed";
        }

        if (v4 == 2)
        {
          v8 = @"BLTSettingsWillPresentBlockedByNotShowsInLockscreen";
        }

        else
        {
          v8 = 0;
        }

        if (v4 == 1)
        {
          v8 = @"BLTSettingsWillPresentBlockedByAlertType";
        }

        if (v4 <= 3)
        {
          v7 = v8;
        }

        if (v4 <= 31)
        {
          v9 = v7;
        }

        else
        {
          v9 = v5;
        }

        [v2 addObject:v9];
      }
    }

    if ([v2 count])
    {
      v10 = [v2 componentsJoinedByString:@"|"];
    }

    else
    {
      v10 = @"0";
    }
  }

  else
  {
    v10 = @"BLTSettingsWillPresentBlockedByNone";
  }

  return v10;
}

void sub_242016B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24201741C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 160), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x2Au);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t BLTPBActionInformationReadFrom(uint64_t a1, void *a2)
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

      if ((v12 >> 3) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 5)
      {
        v13 = &OBJC_IVAR___BLTPBActionInformation__contextNulls;
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

    v13 = &OBJC_IVAR___BLTPBActionInformation__context;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

void sub_24201BFF8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 128));
  _Unwind_Resume(a1);
}

void sub_24201C39C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24201D42C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24201EF30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2420206F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t BLTPBHandleSupplementaryActionRequestReadFrom(uint64_t a1, void *a2)
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v15 = PBReaderReadString();
          v16 = 16;
LABEL_30:
          v14 = *(a1 + v16);
          *(a1 + v16) = v15;
LABEL_31:

          goto LABEL_32;
        }

        if (v13 == 2)
        {
          v15 = PBReaderReadString();
          v16 = 24;
          goto LABEL_30;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v15 = PBReaderReadString();
            v16 = 32;
            goto LABEL_30;
          case 4:
            v15 = PBReaderReadString();
            v16 = 40;
            goto LABEL_30;
          case 5:
            v14 = objc_alloc_init(BLTPBActionInformation);
            objc_storeStrong((a1 + 8), v14);
            v19[0] = 0;
            v19[1] = 0;
            if (!PBReaderPlaceMark() || !BLTPBActionInformationReadFrom(v14, a2))
            {

              return 0;
            }

            PBReaderRecallMark();
            goto LABEL_31;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void *nilForNSNull(void *a1)
{
  v1 = MEMORY[0x277CBEB68];
  v2 = a1;
  v3 = [v1 null];
  if (v3 == v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  v5 = v4;

  return v4;
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t BLTPBHandleDismissActionRequestReadFrom(uint64_t a1, void *a2)
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadString();
          v15 = 32;
          goto LABEL_30;
        }

        if (v13 == 4)
        {
          v16 = objc_alloc_init(BLTPBActionInformation);
          objc_storeStrong((a1 + 8), v16);
          v19[0] = 0;
          v19[1] = 0;
          if (!PBReaderPlaceMark() || !BLTPBActionInformationReadFrom(v16, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          goto LABEL_31;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 16;
          goto LABEL_30;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 24;
LABEL_30:
          v16 = *(a1 + v15);
          *(a1 + v15) = v14;
LABEL_31:

          goto LABEL_32;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void BLTSignificantTimeChanged(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = BLTWorkQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __BLTSignificantTimeChanged_block_invoke;
  block[3] = &unk_278D31428;
  v6 = v2;
  v4 = v2;
  dispatch_async(v3, block);
}

void BLTMuteForTodaySectionIdentifiersChanged(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = BLTWorkQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __BLTMuteForTodaySectionIdentifiersChanged_block_invoke;
  block[3] = &unk_278D31428;
  v6 = v2;
  v4 = v2;
  dispatch_async(v3, block);
}

uint64_t __BLTMuteForTodaySectionIdentifiersChanged_block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadMutedSectionIdentifiers];
  v2 = *(a1 + 32);

  return [v2 _updateObservers];
}

id _BLTToday()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  v1 = [MEMORY[0x277CBEA80] currentCalendar];
  v2 = [v1 components:28 fromDate:v0];

  return v2;
}

void sub_242026A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2420273A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2420275D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id BBSectionInfoFromBLTPBSectionInfo(void *a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(MEMORY[0x277CF3568]);
    v3 = [v1 sectionID];
    [v2 setSectionID:v3];

    v4 = [v1 subsectionID];
    [v2 setSubsectionID:v4];

    [v2 setSectionType:{objc_msgSend(v1, "sectionType")}];
    [v2 setSuppressFromSettings:{objc_msgSend(v1, "suppressFromSettings")}];
    [v2 setShowsOnExternalDevices:{objc_msgSend(v1, "showsOnExternalDevices")}];
    [v2 setNotificationCenterLimit:{objc_msgSend(v1, "notificationCenterLimit")}];
    [v2 setPushSettings:{objc_msgSend(v1, "pushSettings")}];
    [v2 setAlertType:{objc_msgSend(v1, "alertType")}];
    [v2 setShowsMessagePreview:{objc_msgSend(v1, "showsMessagePreview")}];
    if ([v1 hasAuthorizationStatus])
    {
      [v2 setAuthorizationStatus:{objc_msgSend(v1, "authorizationStatus")}];
    }

    else if ([v1 hasAllowsNotifications])
    {
      [v2 setAllowsNotifications:{objc_msgSend(v1, "allowsNotifications")}];
    }

    if ([v1 hasLockScreenSetting])
    {
      v5 = [v1 lockScreenSetting];
      if (v5 == 2)
      {
        v6 = 2;
      }

      else
      {
        v6 = v5 == 1;
      }

      [v2 setLockScreenSetting:v6];
    }

    else if ([v1 hasShowsInLockScreen])
    {
      [v2 setShowsInLockScreen:{objc_msgSend(v1, "showsInLockScreen")}];
    }

    if ([v1 hasNotificationCenterSetting])
    {
      v7 = [v1 notificationCenterSetting];
      if (v7 == 2)
      {
        v8 = 2;
      }

      else
      {
        v8 = v7 == 1;
      }

      [v2 setNotificationCenterSetting:v8];
    }

    else if ([v1 hasShowsInNotificationCenter])
    {
      [v2 setShowsInNotificationCenter:{objc_msgSend(v1, "showsInNotificationCenter")}];
    }

    if ([v1 hasSpokenNotificationSetting])
    {
      v9 = [v1 spokenNotificationSetting];
      if (v9 == 2)
      {
        v10 = 2;
      }

      else
      {
        v10 = v9 == 1;
      }

      [v2 setSpokenNotificationSetting:v10];
    }

    [v2 setSuppressedSettings:{objc_msgSend(v1, "suppressedSettings")}];
    v11 = [v1 displayName];
    [v2 setDisplayName:v11];

    if ([v1 hasCriticalAlertSetting])
    {
      if ([v1 criticalAlertSetting])
      {
        v12 = 2;
      }

      else
      {
        v12 = 1;
      }

      [v2 setCriticalAlertSetting:v12];
    }

    if ([v1 hasGroupingSetting])
    {
      v13 = [v1 groupingSetting];
      if (v13 <= 2)
      {
        [v2 setBulletinGroupingSetting:v13];
      }
    }

    v14 = [v1 subsections];
    v15 = [v14 count];

    if (v15)
    {
      v16 = MEMORY[0x277CBEB18];
      v17 = [v1 subsections];
      v18 = [v16 arrayWithCapacity:{objc_msgSend(v17, "count")}];

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v19 = [v1 subsections];
      v20 = [v19 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v38;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v38 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = BBSectionInfoFromBLTPBSectionInfo(*(*(&v37 + 1) + 8 * i));
            [v18 addObject:v24];
          }

          v21 = [v19 countByEnumeratingWithState:&v37 objects:v41 count:16];
        }

        while (v21);
      }

      v25 = [v18 copy];
      [v2 setSubsections:v25];
    }

    [v2 setSubsectionPriority:{objc_msgSend(v1, "subsectionPriority")}];
    [v2 setVersion:{objc_msgSend(v1, "version")}];
    v26 = [v1 factorySectionID];
    [v2 setFactorySectionID:v26];

    v27 = [v1 icon];
    v28 = BBSectionIconFromBLTPBSectionIcon(v27);
    [v2 setIcon:v28];

    if ([MEMORY[0x277D2BCC8] activePairedDeviceSupportsAuthorizationExpirationDate])
    {
      if ([v1 hasAuthorizationExpirationDate])
      {
        v29 = MEMORY[0x277CBEAA8];
        [v1 authorizationExpirationDate];
        v30 = [v29 dateWithTimeIntervalSince1970:?];
        [v2 setAuthorizationExpirationDate:v30];
      }

      if ([v1 hasLastUserGrantedAuthorizationDate])
      {
        v31 = MEMORY[0x277CBEAA8];
        [v1 lastUserGrantedAuthorizationDate];
        v32 = [v31 dateWithTimeIntervalSince1970:?];
        [v2 setLastUserGrantedAuthorizationDate:v32];
      }
    }

    if ([v1 hasSectionInfoSettings])
    {
      v33 = [v2 sectionInfoSettings];
      v34 = [v1 sectionInfoSettings];
      [v33 applySectionInfoSettingsFromProtobuf:v34];
    }
  }

  else
  {
    v2 = 0;
  }

  v35 = *MEMORY[0x277D85DE8];

  return v2;
}

id BBSectionIconFromBLTPBSectionIcon(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 variants];
  v3 = [v2 count];

  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CF3558]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [v1 variants];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [MEMORY[0x277CF3560] sectionIconVariantFromProtobuf:*(*(&v13 + 1) + 8 * i)];
          if (v10)
          {
            [v4 addVariant:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

BLTPBSectionInfo *BLTPBSectionInfoFromBBSectionInfoForDeviceSize(void *a1, uint64_t a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (v3)
  {
    v4 = objc_alloc_init(BLTPBSectionInfo);
    v5 = [v3 sectionID];
    [(BLTPBSectionInfo *)v4 setSectionID:v5];

    v6 = [v3 subsectionID];
    [(BLTPBSectionInfo *)v4 setSubsectionID:v6];

    -[BLTPBSectionInfo setSectionType:](v4, "setSectionType:", [v3 sectionType]);
    -[BLTPBSectionInfo setSuppressFromSettings:](v4, "setSuppressFromSettings:", [v3 suppressFromSettings]);
    -[BLTPBSectionInfo setShowsOnExternalDevices:](v4, "setShowsOnExternalDevices:", [v3 showsOnExternalDevices]);
    -[BLTPBSectionInfo setNotificationCenterLimit:](v4, "setNotificationCenterLimit:", [v3 notificationCenterLimit]);
    -[BLTPBSectionInfo setPushSettings:](v4, "setPushSettings:", [v3 pushSettings]);
    -[BLTPBSectionInfo setAlertType:](v4, "setAlertType:", [v3 alertType]);
    -[BLTPBSectionInfo setShowsMessagePreview:](v4, "setShowsMessagePreview:", [v3 showsMessagePreview]);
    -[BLTPBSectionInfo setShowsInNotificationCenter:](v4, "setShowsInNotificationCenter:", [v3 showsInNotificationCenter]);
    -[BLTPBSectionInfo setShowsInLockScreen:](v4, "setShowsInLockScreen:", [v3 showsInLockScreen]);
    -[BLTPBSectionInfo setAllowsNotifications:](v4, "setAllowsNotifications:", [v3 allowsNotifications]);
    if ([MEMORY[0x277D2BCC8] activePairedDeviceSupportsAuthorizationStatusLockScreenAndNCSettings])
    {
      if (([MEMORY[0x277D2BCC8] activePairedDeviceSupportsAuthorizationExpirationDate] & 1) != 0 || objc_msgSend(v3, "authorizationStatus") != 4)
      {
        v9 = [v3 authorizationStatus];
      }

      else
      {
        v7 = [v3 sectionInfoSettings];
        v8 = [v7 isAuthorizedTemporarily];

        if (v8)
        {
          v9 = 2;
        }

        else
        {
          v9 = 0;
        }
      }

      [(BLTPBSectionInfo *)v4 setAuthorizationStatus:v9];
      v10 = [v3 lockScreenSetting];
      if (v10 == 2)
      {
        v11 = 2;
      }

      else
      {
        v11 = v10 == 1;
      }

      [(BLTPBSectionInfo *)v4 setLockScreenSetting:v11];
      v12 = [v3 notificationCenterSetting];
      if (v12 == 2)
      {
        v13 = 2;
      }

      else
      {
        v13 = v12 == 1;
      }

      [(BLTPBSectionInfo *)v4 setNotificationCenterSetting:v13];
    }

    if ([MEMORY[0x277D2BCC8] activePairedDeviceSupportsSpokenNotificationSettings])
    {
      v14 = [v3 spokenNotificationSetting];
      if (v14 == 2)
      {
        v15 = 2;
      }

      else
      {
        v15 = v14 == 1;
      }

      [(BLTPBSectionInfo *)v4 setSpokenNotificationSetting:v15];
    }

    -[BLTPBSectionInfo setSuppressedSettings:](v4, "setSuppressedSettings:", [v3 suppressedSettings]);
    v16 = [v3 displayName];
    v17 = [MEMORY[0x277CBEB68] null];
    if (v17 == v16)
    {
      v18 = 0;
    }

    else
    {
      v18 = v16;
    }

    v19 = v18;

    [(BLTPBSectionInfo *)v4 setDisplayName:v19];
    if ([MEMORY[0x277D2BCC8] activePairedDeviceSupportsCriticalAndGroupingSettings])
    {
      v20 = [v3 criticalAlertSetting];
      if (v20)
      {
        [(BLTPBSectionInfo *)v4 setCriticalAlertSetting:v20 == 2];
      }

      v21 = [v3 bulletinGroupingSetting];
      if (v21 <= 2)
      {
        [(BLTPBSectionInfo *)v4 setGroupingSetting:v21];
      }
    }

    v22 = [v3 subsections];
    v23 = [v22 count];

    if (v23)
    {
      v24 = MEMORY[0x277CBEB18];
      v25 = [v3 subsections];
      v26 = [v24 arrayWithCapacity:{objc_msgSend(v25, "count")}];

      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v27 = [v3 subsections];
      v28 = [v27 countByEnumeratingWithState:&v49 objects:v55 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v50;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v50 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = BLTPBSectionInfoFromBBSectionInfoForDeviceSize(*(*(&v49 + 1) + 8 * i), a2);
            [v26 addObject:v32];
          }

          v29 = [v27 countByEnumeratingWithState:&v49 objects:v55 count:16];
        }

        while (v29);
      }

      [(BLTPBSectionInfo *)v4 setSubsections:v26];
    }

    -[BLTPBSectionInfo setSubsectionPriority:](v4, "setSubsectionPriority:", [v3 subsectionPriority]);
    -[BLTPBSectionInfo setVersion:](v4, "setVersion:", [v3 version]);
    v33 = [v3 factorySectionID];
    [(BLTPBSectionInfo *)v4 setFactorySectionID:v33];

    v34 = [v3 parentSection];

    if (!v34)
    {
      v35 = blt_ids_log();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = [v3 sectionID];
        *buf = 138412290;
        v54 = v36;
        _os_log_impl(&dword_241FB3000, v35, OS_LOG_TYPE_INFO, "Fetching icons for BBSectionInfo to BLTPBSectionInfo conversion of %@", buf, 0xCu);
      }

      v37 = [v3 icon];
      v38 = [v3 sectionID];
      v39 = BLTPBSectionIconFromBBSectionIconForDeviceSize(v37, v38, a2);
      [(BLTPBSectionInfo *)v4 setIcon:v39];
    }

    v40 = [v3 sectionInfoSettings];

    if (v40)
    {
      v41 = [v3 sectionInfoSettings];
      v42 = [v41 blt_protobuf];
      [(BLTPBSectionInfo *)v4 setSectionInfoSettings:v42];
    }

    if ([MEMORY[0x277D2BCC8] activePairedDeviceSupportsAuthorizationExpirationDate])
    {
      v43 = [v3 authorizationExpirationDate];

      if (v43)
      {
        v44 = [v3 authorizationExpirationDate];
        [v44 timeIntervalSince1970];
        [(BLTPBSectionInfo *)v4 setAuthorizationExpirationDate:?];
      }

      v45 = [v3 lastUserGrantedAuthorizationDate];

      if (v45)
      {
        v46 = [v3 lastUserGrantedAuthorizationDate];
        [v46 timeIntervalSince1970];
        [(BLTPBSectionInfo *)v4 setLastUserGrantedAuthorizationDate:?];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v47 = *MEMORY[0x277D85DE8];

  return v4;
}

BLTPBSectionIcon *BLTPBSectionIconFromBBSectionIconForDeviceSize(void *a1, void *a2, signed int a3)
{
  v68 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = [MEMORY[0x277D2BCF8] blt_boundedWaitForActivePairedDevice];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 valueForProperty:*MEMORY[0x277D2BBE8]];
    [v9 floatValue];
    v11 = v10;
  }

  else
  {
    v12 = blt_ids_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      BLTPBSectionIconFromBBSectionIconForDeviceSize_cold_1();
    }

    v11 = 2.0;
  }

  v13 = [v5 variants];
  v14 = [v13 count];

  if (!v14)
  {
    v15 = 0;
    goto LABEL_28;
  }

  v15 = objc_alloc_init(BLTPBSectionIcon);
  v16 = BLTPBValidSectionIconVariantsForDeviceSize(a3);
  v17 = blt_ids_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    BLTPBSectionIconFromBBSectionIconForDeviceSize_cold_2();
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v18 = [v5 variants];
  v19 = [v18 countByEnumeratingWithState:&v54 objects:v67 count:16];
  if (v19)
  {
    v20 = v19;
    v48 = a3;
    v50 = v8;
    v52 = v5;
    v49 = v6;
    v21 = *v55;
    while (2)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v55 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v54 + 1) + 8 * i);
        v24 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v23, "format")}];
        v25 = [v16 containsObject:v24];

        if (v25)
        {
          v26 = [v23 applicationIdentifier];

          if (v26)
          {
            v28 = blt_ids_log();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              BLTPBSectionIconFromBBSectionIconForDeviceSize_cold_4(v23);
            }

            v6 = [v23 applicationIdentifier];

            v15 = 0;
            v5 = v52;
            goto LABEL_26;
          }

          v27 = [v23 blt_ProtobufWithScale:v11];
          [(BLTPBSectionIcon *)v15 addVariant:v27];
        }

        else
        {
          v27 = blt_ids_log();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            BLTPBSectionIconFromBBSectionIconForDeviceSize_cold_3(v65, v23, &v66, v27);
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v54 objects:v67 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }

    v5 = v52;
    v6 = v49;
LABEL_26:
    v8 = v50;
    a3 = v48;
  }

  if (!v15)
  {
LABEL_28:
    if (!v6)
    {
      goto LABEL_58;
    }

    v29 = blt_ids_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      BLTPBSectionIconFromBBSectionIconForDeviceSize_cold_5();
    }

    v51 = v8;
    v53 = v5;
    if (a3 <= 4)
    {
      if (a3 > 2)
      {
        if (a3 == 3)
        {
          v64[0] = 0x405B000000000000;
          v30 = 29.0;
          v31 = 19;
          v32 = 9;
          v33 = 0x4049000000000000;
          v34 = 16;
          goto LABEL_47;
        }
      }

      else if (a3 >= 2)
      {
        if (a3 == 2)
        {
          v64[0] = 0x4055800000000000;
          v30 = 24.0;
          v31 = 11;
          v32 = 7;
          v33 = 0x4044000000000000;
          v34 = 3;
          goto LABEL_47;
        }

        goto LABEL_62;
      }

      v64[0] = 0x4058800000000000;
      v31 = 13;
      v30 = 27.5;
      v32 = 9;
      v35 = 0x4046000000000000;
LABEL_46:
      v33 = v35;
      v34 = 5;
      goto LABEL_47;
    }

    if (a3 > 7)
    {
      if (a3 != 8)
      {
        if (a3 != 9)
        {
LABEL_62:
          v64[0] = 0x4060200000000000;
          v31 = 28;
          v30 = 33.0;
          v32 = 32;
          v33 = 0x404A400000000000;
          v34 = 30;
LABEL_47:
          v64[1] = v34;
          v64[2] = v33;
          v64[3] = v32;
          *&v64[4] = v30;
          v64[5] = v31;
          v15 = objc_opt_new();
          for (j = 0; j != 6; j += 2)
          {
            v37 = BLTPBGetPNGIconDataFromAppIcon(v6, *&v64[j], v11);
            if (v37)
            {
              v38 = objc_opt_new();
              [v38 setFormat:LODWORD(v64[j + 1])];
              [v38 setPrecomposed:1];
              [v38 setImageData:v37];
              v39 = blt_ids_log();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                v40 = v64[j];
                v41 = [v38 imageData];
                v42 = [v41 length];
                *buf = 138412802;
                v59 = v6;
                v60 = 2048;
                v61 = v40;
                v62 = 2048;
                v63 = v42;
                _os_log_error_impl(&dword_241FB3000, v39, OS_LOG_TYPE_ERROR, "Fetched icon for %@ of size %f with data size %lu", buf, 0x20u);
              }

              [(BLTPBSectionIcon *)v15 addVariant:v38];
            }
          }

          v43 = [(BLTPBSectionIcon *)v15 variants];
          v44 = [v43 count];

          if (v44)
          {
            v8 = v51;
            v5 = v53;
          }

          else
          {

            v45 = blt_ids_log();
            v8 = v51;
            v5 = v53;
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              BLTPBSectionIconFromBBSectionIconForDeviceSize_cold_6();
            }

            v15 = 0;
          }

          goto LABEL_58;
        }

LABEL_42:
        v64[0] = 0x405D400000000000;
        v31 = 21;
        v30 = 33.0;
        v32 = 25;
        v33 = 0x404A400000000000;
        v34 = 23;
        goto LABEL_47;
      }
    }

    else if (a3 != 5)
    {
      if (a3 != 6)
      {
        goto LABEL_62;
      }

      goto LABEL_42;
    }

    v64[0] = 0x4058800000000000;
    v30 = 29.0;
    v31 = 19;
    v32 = 9;
    v35 = 0x4049000000000000;
    goto LABEL_46;
  }

LABEL_58:

  v46 = *MEMORY[0x277D85DE8];

  return v15;
}

id BLTPBSectionInfoFromBBSectionInfo(void *a1)
{
  v1 = MEMORY[0x277D2BCF8];
  v2 = a1;
  v3 = [v1 blt_boundedWaitForActivePairedDevice];
  v4 = [v3 valueForProperty:*MEMORY[0x277D2BBC0]];
  v5 = NRDeviceSizeForProductType();
  v6 = BLTPBSectionInfoFromBBSectionInfoForDeviceSize(v2, v5);

  return v6;
}

id BLTPBDataForSectionIconVariant(void *a1, double a2)
{
  v3 = a1;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 imageData];

  if (!v5)
  {
    v8 = [v3 bundlePath];
    if (v8 && (v9 = v8, [v3 imageName], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
    {
      v11 = MEMORY[0x277CCA8D8];
      v12 = [v3 bundlePath];
      v13 = [v11 bundleWithPath:v12];

      v14 = MEMORY[0x277D755B8];
      v15 = [v3 imageName];
      v16 = [MEMORY[0x277D75C80] traitCollectionWithDisplayScale:a2];
      v17 = [v14 imageNamed:v15 inBundle:v13 compatibleWithTraitCollection:v16];

      v18 = [MEMORY[0x277CCAB98] defaultCenter];
      v19 = *MEMORY[0x277D76660];
      v20 = [MEMORY[0x277D75128] sharedApplication];
      [v18 postNotificationName:v19 object:v20];

      [MEMORY[0x277D75DE0] _clearAllCachedImagesAndAssets];
      v21 = blt_ids_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        BLTPBDataForSectionIconVariant_cold_2(v17, v3);
      }

      v7 = UIImagePNGRepresentation(v17);
    }

    else
    {
      v22 = [v3 imagePath];

      if (!v22)
      {
        v7 = 0;
        goto LABEL_16;
      }

      v23 = MEMORY[0x277D755B8];
      v24 = [v3 imagePath];
      v13 = [v23 imageWithContentsOfFile:v24];

      v25 = blt_ids_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        BLTPBDataForSectionIconVariant_cold_3(v13, v3);
      }

      v7 = UIImagePNGRepresentation(v13);
    }

    goto LABEL_16;
  }

  v6 = blt_ids_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    BLTPBDataForSectionIconVariant_cold_1();
  }

  v7 = [v3 imageData];
LABEL_16:
  objc_autoreleasePoolPop(v4);

  return v7;
}

id BLTPBGetPNGIconDataFromAppIcon(void *a1, double a2, double a3)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = objc_autoreleasePoolPush();
  v7 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithBundleIdentifier:v5];
  v8 = [objc_alloc(MEMORY[0x277D1B1C8]) initWithSize:a2 scale:{a2, a3}];
  [v8 setShape:1];
  v24[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  [v7 prepareImagesForImageDescriptors:v9];

  v10 = [v7 imageForDescriptor:v8];
  if (!v10)
  {
    v11 = blt_general_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      BLTPBGetPNGIconDataFromAppIcon_cold_4();
    }

    goto LABEL_14;
  }

  v11 = v10;
  if ([v10 placeholder])
  {
    v12 = blt_general_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      BLTPBGetPNGIconDataFromAppIcon_cold_1();
    }

    v13 = [v7 prepareImageForDescriptor:v8];

    v11 = v13;
  }

  v14 = [v11 CGImage];
  if (!v14)
  {
    v19 = blt_general_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      BLTPBGetPNGIconDataFromAppIcon_cold_3();
    }

LABEL_14:
    v17 = 0;
    v18 = 0;
    goto LABEL_19;
  }

  v15 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:v14 scale:0 orientation:a3];
  v16 = v15;
  v17 = v15 != 0;
  if (v15)
  {
    v18 = UIImagePNGRepresentation(v15);
  }

  else
  {
    v20 = blt_general_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      BLTPBGetPNGIconDataFromAppIcon_cold_2();
    }

    v18 = 0;
  }

LABEL_19:
  objc_autoreleasePoolPop(v6);
  if (v17)
  {
    v21 = v18;
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

id BLTPBSectionIconFromBBSectionIcon(void *a1, void *a2)
{
  v3 = MEMORY[0x277D2BCF8];
  v4 = a2;
  v5 = a1;
  v6 = [v3 blt_boundedWaitForActivePairedDevice];
  v7 = [v6 valueForProperty:*MEMORY[0x277D2BBC0]];
  v8 = NRDeviceSizeForProductType();
  v9 = BLTPBSectionIconFromBBSectionIconForDeviceSize(v5, v4, v8);

  return v9;
}

id BLTPBValidSectionIconVariantsForDeviceSize(unsigned int a1)
{
  if (a1 > 9)
  {
    v3 = &unk_28544B4A8;
  }

  else
  {
    v3 = qword_278D32FE8[a1];
  }

  v4 = [MEMORY[0x277CBEB98] setWithArray:{v3, v1}];

  return v4;
}

uint64_t BLTSettingSyncingNotificationsLevelToBLTPBSetNotificationsAlertLevel(uint64_t result)
{
  if ((result - 1) < 3)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t BLTPBSetNotificationsAlertLevelToBLTSettingSyncingNotificationsLevel(int a1)
{
  v1 = (a1 - 1);
  if (v1 < 3)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

void sub_242029B84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_24202A1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id a42)
{
  objc_destroyWeak(&a42);
  objc_destroyWeak((v42 - 128));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24202D00C(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    v4 = blt_general_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(BLTPreviouslySentMessageStore *)v3 initWithMessageStorePath:v2, v4];
    }

    objc_end_catch();
    JUMPOUT(0x24202CF88);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t BLTPBBulletinIdentifierReadFrom(uint64_t a1, void *a2)
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
        v13 = &OBJC_IVAR___BLTPBBulletinIdentifier__recordID;
LABEL_21:
        v14 = PBReaderReadString();
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

    v13 = &OBJC_IVAR___BLTPBBulletinIdentifier__publisherBulletinID;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t BLTPBTransportDataReadFrom(uint64_t a1, void *a2)
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
        v40 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40 & 0x7F) << v5;
        if ((v40 & 0x80) == 0)
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
        if (v13 == 1)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            v41 = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v41 & 0x7F) << v31;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v11 = v32++ >= 9;
            if (v11)
            {
              v37 = 0;
              goto LABEL_62;
            }
          }

          if ([a2 hasError])
          {
            v37 = 0;
          }

          else
          {
            v37 = v33;
          }

LABEL_62:
          *(a1 + 8) = v37;
        }

        else
        {
          if (v13 != 2)
          {
LABEL_53:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_65;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 40) |= 4u;
          while (1)
          {
            v42 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v42 & 0x7F) << v16;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              LOBYTE(v22) = 0;
              goto LABEL_64;
            }
          }

          v22 = (v18 != 0) & ~[a2 hasError];
LABEL_64:
          *(a1 + 36) = v22;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = PBReaderReadData();
            v15 = 24;
            break;
          case 4:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 40) |= 2u;
            while (1)
            {
              v43 = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v43 & 0x7F) << v24;
              if ((v43 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_58;
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

LABEL_58:
            *(a1 + 32) = v30;
            goto LABEL_65;
          case 5:
            v14 = PBReaderReadData();
            v15 = 16;
            break;
          default:
            goto LABEL_53;
        }

        v23 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_65:
      v39 = [a2 position];
    }

    while (v39 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t BLTPBHandleLaunchSessionActionRequestReadFrom(uint64_t a1, void *a2)
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadString();
          v15 = 32;
          goto LABEL_30;
        }

        if (v13 == 4)
        {
          v16 = objc_alloc_init(BLTPBActionInformation);
          objc_storeStrong((a1 + 8), v16);
          v19[0] = 0;
          v19[1] = 0;
          if (!PBReaderPlaceMark() || !BLTPBActionInformationReadFrom(v16, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          goto LABEL_31;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 16;
          goto LABEL_30;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 24;
LABEL_30:
          v16 = *(a1 + v15);
          *(a1 + v15) = v14;
LABEL_31:

          goto LABEL_32;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_242030518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24203061C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t BLTPBSectionIconReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(BLTPBSectionIconVariant);
        [a1 addVariant:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !BLTPBSectionIconVariantReadFrom(v13, a2))
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

uint64_t BLTPBSetSectionInfoRequestReadFrom(id *a1, void *a2)
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
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(BLTPBSectionInfo);
        objc_storeStrong(a1 + 2, v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !BLTPBSectionInfoReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_24;
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

    v13 = PBReaderReadString();
    if (v13)
    {
      [a1 addKeypaths:v13];
    }

LABEL_24:

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

void _readDataFromFile_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void BLTCleanAttachmentsPath_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_241FB3000, a2, OS_LOG_TYPE_ERROR, "Unable to remove attachments dir %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void _BLTFileURLWithPath_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_241FB3000, log, OS_LOG_TYPE_ERROR, "Could not create %@ error: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void _BLTCaptureBug_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_241FB3000, a2, OS_LOG_TYPE_ERROR, "Diagnostic Reporter failed to send snapshot for bug %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void BLTPBSectionIconFromBBSectionIconForDeviceSize_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void BLTPBSectionIconFromBBSectionIconForDeviceSize_cold_3(uint8_t *a1, void *a2, uint64_t *a3, NSObject *a4)
{
  v7 = [a2 format];
  *a1 = 134217984;
  *a3 = v7;
  _os_log_error_impl(&dword_241FB3000, a4, OS_LOG_TYPE_ERROR, "Skipping icon variant %ld as it is invalid for the current device", a1, 0xCu);
}

void BLTPBSectionIconFromBBSectionIconForDeviceSize_cold_4(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 applicationIdentifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void BLTPBSectionIconFromBBSectionIconForDeviceSize_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void BLTPBSectionIconFromBBSectionIconForDeviceSize_cold_6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void BLTPBDataForSectionIconVariant_cold_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a2 bundlePath];
  v10 = [a2 imageName];
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

void BLTPBDataForSectionIconVariant_cold_3(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = [a2 imagePath];
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void BLTPBGetPNGIconDataFromAppIcon_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void BLTPBGetPNGIconDataFromAppIcon_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void BLTPBGetPNGIconDataFromAppIcon_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}