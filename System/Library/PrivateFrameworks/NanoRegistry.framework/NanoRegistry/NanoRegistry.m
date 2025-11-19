uint64_t _NRIsDemoModeEnabled()
{
  if (qword_1ED6F0A70 != -1)
  {
    dispatch_once(&qword_1ED6F0A70, &__block_literal_global_2);
  }

  return _MergedGlobals_7;
}

void sub_1E0AE0A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0AE0FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id nr_framework_log()
{
  if (nr_framework_log_onceToken != -1)
  {
    dispatch_once(&nr_framework_log_onceToken, &__block_literal_global_15);
  }

  v1 = nr_framework_log___logger;

  return v1;
}

uint64_t __nr_framework_log_block_invoke()
{
  nr_framework_log___logger = os_log_create("com.apple.NanoRegistry", "framework");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1E0AE17D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id numberFromCFPrefs(const __CFString *a1)
{
  v1 = CFPreferencesCopyValue(a1, @"com.apple.NanoRegistry", @"mobile", *MEMORY[0x1E695E898]);
  v2 = v1;
  if (v1)
  {
    v3 = CFGetTypeID(v1);
    if (v3 == CFStringGetTypeID())
    {
      v4 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v2, "integerValue")}];

      v2 = v4;
    }

    else if (v3 != CFNumberGetTypeID())
    {
      CFRelease(v2);
      v2 = 0;
    }
  }

  return v2;
}

void sub_1E0AE1F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NRPairedDeviceRegistryStatusCodeString(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"NRPairedDeviceRegistryStatusCode UNKNOWN";
  }

  else
  {
    return off_1E86DC3C0[a1];
  }
}

uint64_t NRWatchOSVersionForRemoteDevice(void *a1)
{
  v1 = a1;
  v2 = [v1 valueForProperty:@"systemName"];
  v3 = [v1 valueForProperty:@"systemVersion"];

  v4 = NRWatchOSVersion(v2, v3);
  return v4;
}

uint64_t NRRawVersionFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 componentsSeparatedByString:@"."];
    if (![v3 count])
    {
      v11 = 0xFFFFFFFFLL;
LABEL_11:

      goto LABEL_12;
    }

    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = [v4 integerValue];

    if ([v3 count] < 2)
    {
      v7 = 0;
    }

    else
    {
      v6 = [v3 objectAtIndexedSubscript:1];
      v7 = [v6 integerValue];

      if ([v3 count] >= 3)
      {
        v8 = [v3 objectAtIndexedSubscript:2];
        v9 = [v8 integerValue];

        v10 = v9;
LABEL_10:
        v11 = (v5 << 16) | (v7 << 8) | v10;
        goto LABEL_11;
      }
    }

    v10 = 0;
    goto LABEL_10;
  }

  v11 = 0xFFFFFFFFLL;
LABEL_12:

  return v11;
}

uint64_t NRWatchOSVersion(void *a1, void *a2)
{
  v3 = a1;
  v4 = 0xFFFFFFFFLL;
  if (v3 && a2)
  {
    v4 = NRRawVersionFromString(a2);
    v5 = v3;
    if (([v5 isEqualToString:@"Watch OS"] & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"watchOS") & 1) == 0)
    {
      if (v4 >> 8 == 2050 && [v5 isEqualToString:@"iPhone OS"])
      {
        v4 = v4 | 0x10000u;
      }

      else
      {
        v4 = 0xFFFFFFFFLL;
      }
    }
  }

  return v4;
}

void sub_1E0AE27CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id nr_daemon_log()
{
  if (nr_daemon_log_onceToken != -1)
  {
    dispatch_once(&nr_daemon_log_onceToken, &__block_literal_global_11);
  }

  v1 = nr_daemon_log___logger;

  return v1;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *NRProcessNameForPID(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v10 = *MEMORY[0x1E69E9840];
  if (proc_pidpath(v2, buffer, 0x1000u) < 1)
  {
    v4 = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:buffer];
    v4 = [v3 lastPathComponent];
  }

  v5 = @"(unknown)";
  if (v4)
  {
    v5 = v4;
  }

  v6 = v5;

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

void sub_1E0AE57DC(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v5 = objc_begin_catch(exception_object);
    v6 = nr_framework_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

    if (v7)
    {
      v8 = nr_framework_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *(v4 - 112) = 138412546;
        v9 = v4 - 112;
        *(v9 + 4) = v5;
        *(v4 - 100) = 2112;
        *(v9 + 14) = v2;
        _os_log_error_impl(&dword_1E0ADF000, v8, OS_LOG_TYPE_ERROR, "NRTermsAcknowledgementRegistry add:forEventID:withCompletion: exception %@ event %@", (v4 - 112), 0x16u);
      }
    }

    (*(v3 + 16))(v3, v5);

    objc_end_catch();
    JUMPOUT(0x1E0AE5794);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E0AE5E00(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v5 = objc_begin_catch(exception_object);
    v6 = nr_framework_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

    if (v7)
    {
      v8 = nr_framework_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *(v4 - 112) = 138412546;
        v9 = v4 - 112;
        *(v9 + 4) = v5;
        *(v4 - 100) = 2112;
        *(v9 + 14) = v2;
        _os_log_error_impl(&dword_1E0ADF000, v8, OS_LOG_TYPE_ERROR, "NRTermsAcknowledgementRegistry checkForAcknowledgement:forEventID:withCompletion: exception %@ event %@", (v4 - 112), 0x16u);
      }
    }

    (*(v3 + 16))(v3, 0, v5);

    objc_end_catch();
    JUMPOUT(0x1E0AE5D74);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E0AE6F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0AE7100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0AE7C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0AE7DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0AF49A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0AF4CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t NRPBSwitchRecordCollectionReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(NRPBSwitchRecord);
        [(NRPBSwitchRecordCollection *)a1 addRecords:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !NRPBSwitchRecordReadFrom(v13, a2))
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

uint64_t NRPBPropertyValueReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v52) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v52 & 0x7F) << v5;
        if ((v52 & 0x80) == 0)
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
      if ((v12 >> 3) > 6)
      {
        if (v13 > 9)
        {
          switch(v13)
          {
            case 0xA:
              v31 = 0;
              v32 = 0;
              v33 = 0;
              *(a1 + 72) |= 1u;
              while (1)
              {
                LOBYTE(v52) = 0;
                v34 = [a2 position] + 1;
                if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
                {
                  v36 = [a2 data];
                  [v36 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v33 |= (v52 & 0x7F) << v31;
                if ((v52 & 0x80) == 0)
                {
                  break;
                }

                v31 += 7;
                v11 = v32++ >= 9;
                if (v11)
                {
                  LOBYTE(v22) = 0;
                  goto LABEL_99;
                }
              }

              v22 = (v33 != 0) & ~[a2 hasError];
LABEL_99:
              v49 = 64;
              goto LABEL_104;
            case 0xB:
              v43 = 0;
              v44 = 0;
              v45 = 0;
              *(a1 + 72) |= 2u;
              while (1)
              {
                LOBYTE(v52) = 0;
                v46 = [a2 position] + 1;
                if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
                {
                  v48 = [a2 data];
                  [v48 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v45 |= (v52 & 0x7F) << v43;
                if ((v52 & 0x80) == 0)
                {
                  break;
                }

                v43 += 7;
                v11 = v44++ >= 9;
                if (v11)
                {
                  LOBYTE(v22) = 0;
                  goto LABEL_103;
                }
              }

              v22 = (v45 != 0) & ~[a2 hasError];
LABEL_103:
              v49 = 65;
              goto LABEL_104;
            case 0xC:
              v24 = 0;
              v25 = 0;
              v26 = 0;
              *(a1 + 72) |= 4u;
              while (1)
              {
                LOBYTE(v52) = 0;
                v27 = [a2 position] + 1;
                if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
                {
                  v29 = [a2 data];
                  [v29 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v26 |= (v52 & 0x7F) << v24;
                if ((v52 & 0x80) == 0)
                {
                  break;
                }

                v24 += 7;
                v11 = v25++ >= 9;
                if (v11)
                {
                  LOBYTE(v22) = 0;
                  goto LABEL_97;
                }
              }

              v22 = (v26 != 0) & ~[a2 hasError];
LABEL_97:
              v49 = 66;
              goto LABEL_104;
          }
        }

        else
        {
          switch(v13)
          {
            case 7:
              v23 = objc_alloc_init(NRPBPropertyValue);
              [a1 addArrayValues:v23];
LABEL_54:
              v52 = 0;
              v53 = 0;
              if (!PBReaderPlaceMark() || !NRPBPropertyValueReadFrom(v23, a2))
              {
                goto LABEL_107;
              }

LABEL_82:
              PBReaderRecallMark();

              goto LABEL_105;
            case 8:
              v37 = 0;
              v38 = 0;
              v39 = 0;
              *(a1 + 72) |= 0x10u;
              while (1)
              {
                LOBYTE(v52) = 0;
                v40 = [a2 position] + 1;
                if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
                {
                  v42 = [a2 data];
                  [v42 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v39 |= (v52 & 0x7F) << v37;
                if ((v52 & 0x80) == 0)
                {
                  break;
                }

                v37 += 7;
                v11 = v38++ >= 9;
                if (v11)
                {
                  LOBYTE(v22) = 0;
                  goto LABEL_101;
                }
              }

              v22 = (v39 != 0) & ~[a2 hasError];
LABEL_101:
              v49 = 68;
              goto LABEL_104;
            case 9:
              v16 = 0;
              v17 = 0;
              v18 = 0;
              *(a1 + 72) |= 8u;
              while (1)
              {
                LOBYTE(v52) = 0;
                v19 = [a2 position] + 1;
                if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
                {
                  v21 = [a2 data];
                  [v21 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v18 |= (v52 & 0x7F) << v16;
                if ((v52 & 0x80) == 0)
                {
                  break;
                }

                v16 += 7;
                v11 = v17++ >= 9;
                if (v11)
                {
                  LOBYTE(v22) = 0;
                  goto LABEL_95;
                }
              }

              v22 = (v18 != 0) & ~[a2 hasError];
LABEL_95:
              v49 = 67;
LABEL_104:
              *(a1 + v49) = v22;
              goto LABEL_105;
          }
        }
      }

      else if (v13 > 3)
      {
        switch(v13)
        {
          case 4:
            v14 = PBReaderReadData();
            v15 = 16;
            goto LABEL_58;
          case 5:
            v23 = objc_alloc_init(NRPBSize);
            objc_storeStrong((a1 + 40), v23);
            v52 = 0;
            v53 = 0;
            if (!PBReaderPlaceMark() || !NRPBSizeReadFrom(v23, a2))
            {
LABEL_107:

              return 0;
            }

            goto LABEL_82;
          case 6:
            v23 = objc_alloc_init(NRPBPropertyValue);
            objc_storeStrong((a1 + 24), v23);
            goto LABEL_54;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = PBReaderReadString();
            v15 = 48;
            goto LABEL_58;
          case 2:
            v23 = objc_alloc_init(NRPBNumber);
            objc_storeStrong((a1 + 32), v23);
            v52 = 0;
            v53 = 0;
            if (!PBReaderPlaceMark() || !NRPBNumberReadFrom(v23, a2))
            {
              goto LABEL_107;
            }

            goto LABEL_82;
          case 3:
            v14 = PBReaderReadData();
            v15 = 56;
LABEL_58:
            v30 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_105;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_105:
      v50 = [a2 position];
    }

    while (v50 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NRPBSwitchRecordReadFrom(uint64_t a1, void *a2)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          v30 = 0;
          v21 = [a2 position] + 1;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
          {
            v23 = [a2 data];
            [v23 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v20 |= (v30 & 0x7F) << v18;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v11 = v19++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_38;
          }
        }

        v24 = [a2 hasError] ? 0 : v20;
LABEL_38:
        *(a1 + 24) = v24;
      }

      else if (v13 == 2)
      {
        *(a1 + 28) |= 1u;
        v28 = 0;
        v16 = [a2 position] + 8;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v28 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v28;
      }

      else if (v13 == 1)
      {
        v14 = PBReaderReadData();
        v15 = *(a1 + 16);
        *(a1 + 16) = v14;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v27 = [a2 position];
    }

    while (v27 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id nrGetPairingError(unint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (a1 >= 0x2E)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"error %ld missing error string", a1];
  }

  else
  {
    v2 = off_1E86DBAF0[a1];
  }

  v3 = objc_alloc(MEMORY[0x1E696ABC0]);
  v8 = @"englishMessage";
  v9[0] = v2;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v3 initWithDomain:@"com.apple.nanoregistry.pairingerror" code:a1 userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

__CFString *nrGetReportStringForErrorCode(unint64_t a1)
{
  if (a1 >= 0x2E)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missingError%ld", a1];
  }

  else
  {
    v2 = off_1E86DBC60[a1];
  }

  return v2;
}

uint64_t NRWatchOSVersionForLocalDevice()
{
  if (qword_1ED6F0AD8 != -1)
  {
    dispatch_once(&qword_1ED6F0AD8, &__block_literal_global_3);
  }

  return _MergedGlobals_8;
}

void __NRWatchOSVersionForLocalDevice_block_invoke()
{
  v1 = MGCopyAnswer();
  v0 = MGCopyAnswer();
  _MergedGlobals_8 = NRWatchOSVersion(v1, v0);
}

void sub_1E0AFB8CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0AFBEFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void std::vector<unsigned int>::reserve(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      v2 = this->__end_ - this->__begin_;
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(__n);
    }

    std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
  }
}

void std::__throw_length_error[abi:ne200100]()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception);
  __cxa_throw(exception, off_1E86DAC88, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "vector");
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

uint64_t NRPBSizeReadFrom(uint64_t a1, void *a2)
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
        v25 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v25 & 0x7F) << v5;
        if ((v25 & 0x80) == 0)
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
        v24 = 0;
        v13 = [a2 position] + 4;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 4, v14 <= objc_msgSend(a2, "length")))
        {
          v17 = [a2 data];
          [v17 getBytes:&v24 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v18 = v24;
        v19 = &OBJC_IVAR___NRPBSize__width;
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
    v15 = [a2 position] + 4;
    if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 4, v16 <= objc_msgSend(a2, "length")))
    {
      v20 = [a2 data];
      [v20 getBytes:&v23 range:{objc_msgSend(a2, "position"), 4}];

      [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
    }

    else
    {
      [a2 _setError];
    }

    v18 = v23;
    v19 = &OBJC_IVAR___NRPBSize__height;
    goto LABEL_31;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NRPBNumberReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v56) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v56 & 0x7F) << v5;
        if ((v56 & 0x80) == 0)
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
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 36) |= 8u;
            while (1)
            {
              LOBYTE(v56) = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v56 & 0x7F) << v30;
              if ((v56 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v36 = 0;
                goto LABEL_82;
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

LABEL_82:
            *(a1 + 28) = v36;
            break;
          case 2:
            *(a1 + 36) |= 4u;
            LODWORD(v56) = 0;
            v50 = [a2 position] + 4;
            if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 4, v51 <= objc_msgSend(a2, "length")))
            {
              v54 = [a2 data];
              [v54 getBytes:&v56 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 24) = v56;
            break;
          case 3:
            *(a1 + 36) |= 1u;
            v56 = 0;
            v21 = [a2 position] + 8;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
            {
              v53 = [a2 data];
              [v53 getBytes:&v56 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 8) = v56;
            break;
          default:
            goto LABEL_56;
        }
      }

      else
      {
        if (v13 > 5)
        {
          if (v13 == 6)
          {
            v44 = 0;
            v45 = 0;
            v46 = 0;
            *(a1 + 36) |= 0x40u;
            while (1)
            {
              LOBYTE(v56) = 0;
              v47 = [a2 position] + 1;
              if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
              {
                v49 = [a2 data];
                [v49 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v46 |= (v56 & 0x7F) << v44;
              if ((v56 & 0x80) == 0)
              {
                break;
              }

              v44 += 7;
              v11 = v45++ >= 9;
              if (v11)
              {
                LOBYTE(v29) = 0;
                goto LABEL_86;
              }
            }

            v29 = (v46 != 0) & ~[a2 hasError];
LABEL_86:
            v52 = 34;
          }

          else
          {
            if (v13 != 7)
            {
LABEL_56:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_98;
            }

            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 36) |= 0x20u;
            while (1)
            {
              LOBYTE(v56) = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v56 & 0x7F) << v23;
              if ((v56 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                LOBYTE(v29) = 0;
                goto LABEL_92;
              }
            }

            v29 = (v25 != 0) & ~[a2 hasError];
LABEL_92:
            v52 = 33;
          }

          goto LABEL_93;
        }

        if (v13 == 4)
        {
          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 36) |= 0x10u;
          while (1)
          {
            LOBYTE(v56) = 0;
            v41 = [a2 position] + 1;
            if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
            {
              v43 = [a2 data];
              [v43 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v40 |= (v56 & 0x7F) << v38;
            if ((v56 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v11 = v39++ >= 9;
            if (v11)
            {
              LOBYTE(v29) = 0;
              goto LABEL_84;
            }
          }

          v29 = (v40 != 0) & ~[a2 hasError];
LABEL_84:
          v52 = 32;
LABEL_93:
          *(a1 + v52) = v29;
          goto LABEL_98;
        }

        if (v13 != 5)
        {
          goto LABEL_56;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 36) |= 2u;
        while (1)
        {
          LOBYTE(v56) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v56 & 0x7F) << v14;
          if ((v56 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_90;
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

LABEL_90:
        *(a1 + 16) = v20;
      }

LABEL_98:
      v55 = [a2 position];
    }

    while (v55 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1E0B007A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0B00B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0B01B0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E0B02ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0B032A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0B0357C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0B0380C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0B06E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1E0B07054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1E0B07234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0B07C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0B0939C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0B0B8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0B0BCBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1E0B0BF48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_1E0B0C1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_1E0B0C460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t _NRIsAutomated()
{
  if (qword_1ED6F0A60 != -1)
  {
    dispatch_once(&qword_1ED6F0A60, &__block_literal_global_699);
  }

  return byte_1ED6F09EA;
}

uint64_t NRPBMutableDevicePropertyReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(NRPBPropertyValue);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !NRPBPropertyValueReadFrom(v13, a2))
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

uint64_t NRPBMutableDeviceCollectionReadFrom(void *a1, void *a2)
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
        v13 = PBReaderReadData();
        if (v13)
        {
          [a1 addPairingIDs:v13];
        }

LABEL_24:

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

    v13 = objc_alloc_init(NRPBMutableDevice);
    [a1 addDevices:v13];
    v16[0] = 0;
    v16[1] = 0;
    if (!PBReaderPlaceMark() || !NRPBMutableDeviceReadFrom(v13, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NRPBMigrationDevicesReadFrom(void *a1, void *a2)
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
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(NRPBMigrationDeviceInfo);
        [a1 addDevices:v13];
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !NRPBMigrationDeviceInfoReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadData();
    v13 = a1[2];
    a1[2] = v14;
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

void sub_1E0B12E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0B14B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E0B14F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0B150C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0B15970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0B15B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0B15F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NRStringRepresentationFromInteger(unint64_t a1)
{
  if ([@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890" length] <= a1)
  {
    v3 = nr_framework_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = nr_framework_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v7 = 0;
        _os_log_error_impl(&dword_1E0ADF000, v5, OS_LOG_TYPE_ERROR, "Tried to create out-off-bound char rep!", v7, 2u);
      }
    }

    v2 = 0;
  }

  else
  {
    v2 = [@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890" substringWithRange:{a1, 1}];
  }

  return v2;
}

id NRAdvertisingInfoFromPayload(void *a1)
{
  v33[4] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 length] == 8)
  {
    v2 = [v1 substringWithRange:{0, 5}];
    v3 = [v1 substringWithRange:{5, 1}];
    v4 = NRIntegerValueRepresentationFromString(v3);

    v5 = [v1 substringWithRange:{6, 1}];
    v6 = NRIntegerValueRepresentationFromString(v5);

    v7 = [v1 substringWithRange:{7, 1}];
    v8 = NRIntegerValueRepresentationFromString(v7);

    if ([v2 length]== 5 && v4 != 0x7FFFFFFFFFFFFFFFLL && v6 != 0x7FFFFFFFFFFFFFFFLL && v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v33[0] = v2;
      v32[0] = @"n";
      v32[1] = @"v";
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
      v33[1] = v9;
      v32[2] = @"m";
      v10 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
      v33[2] = v10;
      v32[3] = @"s";
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
      v33[3] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:4];

LABEL_14:
LABEL_16:

      goto LABEL_18;
    }

    v15 = nr_daemon_log();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

    if (v16)
    {
      v9 = nr_daemon_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v19 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
        v20 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
        v21 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
        v22 = 138413314;
        v23 = v1;
        v24 = 2112;
        v25 = v2;
        v26 = 2112;
        v27 = v19;
        v28 = 2112;
        v29 = v20;
        v30 = 2112;
        v31 = v21;
        _os_log_error_impl(&dword_1E0ADF000, v9, OS_LOG_TYPE_ERROR, "Invalid Advertising Payload %@ - %@ %@ %@ %@", &v22, 0x34u);
      }

      v12 = 0;
      goto LABEL_14;
    }

LABEL_15:
    v12 = 0;
    goto LABEL_16;
  }

  v13 = nr_daemon_log();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);

  if (v14)
  {
    v2 = nr_daemon_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v22 = 138412290;
      v23 = v1;
      _os_log_error_impl(&dword_1E0ADF000, v2, OS_LOG_TYPE_ERROR, "Invalid Advertising Payload %@", &v22, 0xCu);
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_18:

  v17 = *MEMORY[0x1E69E9840];

  return v12;
}

uint64_t NRIntegerValueRepresentationFromString(void *a1)
{
  v1 = a1;
  if ([v1 length] == 1)
  {
    v2 = [@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890" rangeOfString:v1];
  }

  else
  {
    v3 = nr_daemon_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

    if (v4)
    {
      v5 = nr_daemon_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v7 = 0;
        _os_log_error_impl(&dword_1E0ADF000, v5, OS_LOG_TYPE_ERROR, "Tried to get rep of string rather than string-character", v7, 2u);
      }
    }

    v2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v2;
}

uint64_t NRPBDeviceCollectionHistoryEntryReadFrom(uint64_t a1, void *a2)
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
        v23 = objc_alloc_init(NRPBDeviceCollectionDiff);
        objc_storeStrong((a1 + 24), v23);
        v27[0] = 0;
        v27[1] = 0;
        if (!PBReaderPlaceMark() || !NRPBDeviceCollectionDiffReadFrom(v23, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 2)
      {
        *(a1 + 32) |= 1u;
        v27[0] = 0;
        v21 = [a2 position] + 8;
        if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
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

void sub_1E0B19310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E0B19870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0B19A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0B19DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0B1A514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t NRPBPropertyReadFrom(uint64_t a1, void *a2)
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
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(NRPBPropertyValue);
    objc_storeStrong((a1 + 16), v14);
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !NRPBPropertyValueReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NRPBMigrationDeviceInfoReadFrom(uint64_t a1, void *a2)
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
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
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
        v14 = PBReaderReadString();
        v15 = &OBJC_IVAR___NRPBMigrationDeviceInfo__advertisedName;
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadData();
        v15 = &OBJC_IVAR___NRPBMigrationDeviceInfo__iD;
LABEL_23:
        v16 = *v15;
        v17 = *(a1 + v16);
        *(a1 + v16) = v14;

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v18 = [a2 position];
      if (v18 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    v15 = &OBJC_IVAR___NRPBMigrationDeviceInfo__name;
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NRPBCompressedDataReadFrom(uint64_t a1, void *a2)
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
        v20 = PBReaderReadData();
        v21 = *(a1 + 8);
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
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
            LOBYTE(v19) = 0;
            goto LABEL_32;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_32:
        *(a1 + 16) = v19;
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

void sub_1E0B213C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t NRPBDeviceCollectionDiffReadFrom(uint64_t a1, void *a2)
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
        v13 = PBReaderReadData();
        if (v13)
        {
          [(NRPBDeviceCollectionDiff *)a1 addPairingIDs:v13];
        }

LABEL_24:

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

    v13 = objc_alloc_init(NRPBDeviceDiffType);
    [(NRPBDeviceCollectionDiff *)a1 addDiffs:v13];
    v16[0] = 0;
    v16[1] = 0;
    if (!PBReaderPlaceMark() || !NRPBDeviceDiffTypeReadFrom(v13, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NRDeviceSizeForProductType(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 componentsSeparatedByString:{@", "}];
  if ([v2 count] < 2)
  {
    goto LABEL_60;
  }

  v3 = [v2 objectAtIndexedSubscript:0];
  v4 = [v2 objectAtIndexedSubscript:1];
  if (([v3 isEqualToString:@"Watch1"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"Watch2"))
  {
    if (([v4 isEqualToString:@"1"] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"3") & 1) == 0)
    {
      if ([v4 isEqualToString:@"6"])
      {
        v5 = 2;
      }

      else
      {
        v5 = 1;
      }

      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if ([v3 isEqualToString:@"Watch3"])
  {
    if ([v4 isEqualToString:@"1"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"3"))
    {
LABEL_12:
      v5 = 2;
LABEL_13:

      goto LABEL_65;
    }

    if ([v4 isEqualToString:@"2"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"4"))
    {
      v5 = 1;
      goto LABEL_13;
    }

    goto LABEL_59;
  }

  if ([v3 isEqualToString:@"Watch4"])
  {
    if (([v4 isEqualToString:@"1"] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"3") & 1) == 0)
    {
      if ([v4 isEqualToString:@"2"])
      {
LABEL_20:
        v5 = 3;
        goto LABEL_13;
      }

      v6 = @"4";
      goto LABEL_19;
    }

LABEL_38:
    v5 = 4;
    goto LABEL_13;
  }

  if (![v3 isEqualToString:@"Watch5"])
  {
    if ([v3 isEqualToString:@"Watch6"])
    {
      if ([v4 isEqualToString:@"1"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"3") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"10") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"12"))
      {
        goto LABEL_38;
      }

      if ([v4 isEqualToString:@"2"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"4") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"11") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"13"))
      {
        goto LABEL_20;
      }

      if (([v4 isEqualToString:@"6"] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"8") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"14") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"16") & 1) == 0)
      {
        if (([v4 isEqualToString:@"7"] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"9") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"15") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"17") & 1) == 0)
        {
          if (([v4 isEqualToString:@"18"] & 1) == 0)
          {
            goto LABEL_59;
          }

          goto LABEL_67;
        }

        goto LABEL_45;
      }
    }

    else
    {
      if (![v3 isEqualToString:@"Watch7"])
      {
        goto LABEL_59;
      }

      if (([v4 isEqualToString:@"1"] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"3") & 1) == 0)
      {
        if (([v4 isEqualToString:@"2"] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"4") & 1) == 0)
        {
          if (([v4 isEqualToString:@"5"] & 1) == 0)
          {
            if ([v4 isEqualToString:@"8"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"10") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"17") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"19"))
            {
              v5 = 8;
              goto LABEL_13;
            }

            if ([v4 isEqualToString:@"9"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"11") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"18") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"20"))
            {
              v5 = 9;
              goto LABEL_13;
            }

            if ([v4 isEqualToString:@"12"])
            {
              v5 = 10;
              goto LABEL_13;
            }

            if (([v4 isEqualToString:@"13"] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"15") & 1) == 0)
            {
              if (([v4 isEqualToString:@"14"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"16"))
              {
                goto LABEL_20;
              }

              goto LABEL_59;
            }

            goto LABEL_38;
          }

LABEL_67:
          v5 = 7;
          goto LABEL_13;
        }

LABEL_45:
        v5 = 6;
        goto LABEL_13;
      }
    }

    v5 = 5;
    goto LABEL_13;
  }

  if ([v4 isEqualToString:@"1"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"3") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"9") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"11"))
  {
    goto LABEL_38;
  }

  if ([v4 isEqualToString:@"2"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"4") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"10"))
  {
    goto LABEL_20;
  }

  v6 = @"12";
LABEL_19:
  if ([v4 isEqualToString:v6])
  {
    goto LABEL_20;
  }

LABEL_59:

LABEL_60:
  v7 = nr_framework_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

  if (v8)
  {
    v9 = nr_framework_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v1;
      _os_log_error_impl(&dword_1E0ADF000, v9, OS_LOG_TYPE_ERROR, "IMPORTANT! Unsupported ProductType (%@) falling back to generic size (which won't behave correctly in UI)!", &v12, 0xCu);
    }
  }

  v5 = 0;
LABEL_65:

  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t NRDeviceSizeForArtworkDeviceSubType(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1 <= 429)
  {
    if (a1 > 383)
    {
      if (a1 == 384)
      {
        result = 1;
        goto LABEL_27;
      }

      if (a1 == 390)
      {
        result = 3;
        goto LABEL_27;
      }
    }

    else
    {
      if (a1 == 320)
      {
        result = 2;
        goto LABEL_27;
      }

      if (a1 == 340)
      {
        result = 4;
        goto LABEL_27;
      }
    }
  }

  else if (a1 <= 483)
  {
    if (a1 == 430)
    {
      result = 5;
      goto LABEL_27;
    }

    if (a1 == 446)
    {
      result = 8;
      goto LABEL_27;
    }
  }

  else
  {
    switch(a1)
    {
      case 484:
        result = 6;
        goto LABEL_27;
      case 496:
        result = 9;
        goto LABEL_27;
      case 502:
        result = 7;
        goto LABEL_27;
    }
  }

  v3 = nr_framework_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);

  if (v4)
  {
    v5 = nr_framework_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 134217984;
      v8 = a1;
      _os_log_error_impl(&dword_1E0ADF000, v5, OS_LOG_TYPE_ERROR, "IMPORTANT! Unsupported ArtworkDeviceSubType (%lu) falling back to generic size (which won't behave correctly in UI)!", &v7, 0xCu);
    }
  }

  result = 0;
LABEL_27:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

id NRClassesForPropertiesWithArray(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (qword_1ED6F0B38 == -1)
  {
    if (v1)
    {
LABEL_3:
      v3 = [MEMORY[0x1E695DFA8] setWithSet:_MergedGlobals_13];
      v4 = [MEMORY[0x1E695DFD8] setWithArray:v2];
      [v3 unionSet:v4];

      goto LABEL_6;
    }
  }

  else
  {
    dispatch_once(&qword_1ED6F0B38, &__block_literal_global_11);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v3 = _MergedGlobals_13;
LABEL_6:

  return v3;
}

void __NRClassesForPropertiesWithArray_block_invoke()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v5 count:11];
  v2 = [v0 setWithArray:{v1, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14}];
  v3 = _MergedGlobals_13;
  _MergedGlobals_13 = v2;

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1E0B27910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t NRPBDeviceDiffTypeReadFrom(uint64_t a1, void *a2)
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
        v20 = objc_alloc_init(NRPBDeviceDiff);
        objc_storeStrong((a1 + 16), v20);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !NRPBDeviceDiffReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
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

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_36:
        *(a1 + 8) = v19;
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

void sub_1E0B2A234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0B2A3BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0B2A4F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0B2A7BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0B2AA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0B2AEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E0B2B0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t NRPBDevicePropertyDiffReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(NRPBPropertyValue);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !NRPBPropertyValueReadFrom(v13, a2))
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

uint64_t __nr_daemon_log_block_invoke()
{
  v0 = os_log_create("com.apple.NanoRegistry", "daemon");
  v1 = nr_daemon_log___logger;
  nr_daemon_log___logger = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id nr_root_daemon_log()
{
  if (qword_1ED6F0B60 != -1)
  {
    dispatch_once(&qword_1ED6F0B60, &__block_literal_global_14);
  }

  v1 = _MergedGlobals_15;

  return v1;
}

uint64_t __nr_root_daemon_log_block_invoke()
{
  v0 = os_log_create("com.apple.NanoRegistry", "root_daemon");
  v1 = _MergedGlobals_15;
  _MergedGlobals_15 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id nr_pairing_reporter_log()
{
  if (qword_1ED6F0B70 != -1)
  {
    dispatch_once(&qword_1ED6F0B70, &__block_literal_global_17);
  }

  v1 = qword_1ED6F0B68;

  return v1;
}

uint64_t __nr_pairing_reporter_log_block_invoke()
{
  v0 = os_log_create("com.apple.NanoRegistry", "pairing_reporter");
  v1 = qword_1ED6F0B68;
  qword_1ED6F0B68 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id nr_magic_switch_log()
{
  if (qword_1ED6F0B80 != -1)
  {
    dispatch_once(&qword_1ED6F0B80, &__block_literal_global_20_0);
  }

  v1 = qword_1ED6F0B78;

  return v1;
}

uint64_t __nr_magic_switch_log_block_invoke()
{
  v0 = os_log_create("com.apple.NanoRegistry", "magic_switch");
  v1 = qword_1ED6F0B78;
  qword_1ED6F0B78 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id link_monitor_log_handle()
{
  if (qword_1ED6F0B88 != -1)
  {
    dispatch_once(&qword_1ED6F0B88, &__block_literal_global_23);
  }

  v1 = qword_1ED6F0B90;

  return v1;
}

uint64_t __link_monitor_log_handle_block_invoke()
{
  v0 = os_log_create("com.apple.NanoRegistry", "link-monitor");
  v1 = qword_1ED6F0B90;
  qword_1ED6F0B90 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id networkrelay_pairing_log_handle()
{
  if (qword_1ED6F0B98 != -1)
  {
    dispatch_once(&qword_1ED6F0B98, &__block_literal_global_26);
  }

  v1 = qword_1ED6F0BA0;

  return v1;
}

uint64_t __networkrelay_pairing_log_handle_block_invoke()
{
  v0 = os_log_create("com.apple.NanoRegistry", "networkrelay-pairing");
  v1 = qword_1ED6F0BA0;
  qword_1ED6F0BA0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t NRPBDeviceDiffReadFrom(uint64_t a1, void *a2)
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
        v13 = PBReaderReadString();
        if (v13)
        {
          [(NRPBDeviceDiff *)a1 addNames:v13];
        }

LABEL_24:

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

    v13 = objc_alloc_init(NRPBDevicePropertyDiffType);
    [(NRPBDeviceDiff *)a1 addDiffs:v13];
    v16[0] = 0;
    v16[1] = 0;
    if (!PBReaderPlaceMark() || !NRPBDevicePropertyDiffTypeReadFrom(v13, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NRPBTermsEventReadFrom(uint64_t a1, void *a2)
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
        v37 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37 & 0x7F) << v5;
        if ((v37 & 0x80) == 0)
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
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 96) |= 2u;
            while (1)
            {
              v39 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v39 & 0x7F) << v23;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_68;
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

LABEL_68:
            v34 = 56;
            goto LABEL_73;
          }

          if (v13 == 2)
          {
            v14 = PBReaderReadData();
            v15 = 88;
            goto LABEL_60;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v14 = PBReaderReadString();
              v15 = 48;
              goto LABEL_60;
            case 4:
              v14 = PBReaderReadString();
              v15 = 80;
              goto LABEL_60;
            case 5:
              v16 = 0;
              v17 = 0;
              v18 = 0;
              *(a1 + 96) |= 4u;
              while (1)
              {
                v38 = 0;
                v19 = [a2 position] + 1;
                if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
                {
                  v21 = [a2 data];
                  [v21 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v18 |= (v38 & 0x7F) << v16;
                if ((v38 & 0x80) == 0)
                {
                  break;
                }

                v16 += 7;
                v11 = v17++ >= 9;
                if (v11)
                {
                  v22 = 0;
                  goto LABEL_72;
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

LABEL_72:
              v34 = 72;
LABEL_73:
              *(a1 + v34) = v22;
              goto LABEL_61;
          }
        }
      }

      else if (v13 > 8)
      {
        switch(v13)
        {
          case 9:
            v14 = PBReaderReadString();
            v15 = 40;
            goto LABEL_60;
          case 0xA:
            *(a1 + 96) |= 1u;
            v36 = 0;
            v29 = [a2 position] + 8;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 8, v30 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:&v36 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 8) = v36;
            goto LABEL_61;
          case 0xB:
            v14 = PBReaderReadString();
            v15 = 64;
            goto LABEL_60;
        }
      }

      else
      {
        switch(v13)
        {
          case 6:
            v14 = PBReaderReadString();
            v15 = 16;
            goto LABEL_60;
          case 7:
            v14 = PBReaderReadString();
            v15 = 24;
            goto LABEL_60;
          case 8:
            v14 = PBReaderReadString();
            v15 = 32;
LABEL_60:
            v31 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_61;
        }
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

LABEL_61:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _NRIsInternalInstall()
{
  if (_NRIsInternalInstall___onceToken != -1)
  {
    dispatch_once(&_NRIsInternalInstall___onceToken, &__block_literal_global_18);
  }

  return _NRIsInternalInstall___internalInstall;
}

uint64_t NRPBMutableDeviceReadFrom(void *a1, void *a2)
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
        v13 = PBReaderReadString();
        if (v13)
        {
          [a1 addNames:v13];
        }

LABEL_24:

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

    v13 = objc_alloc_init(NRPBMutableDeviceProperty);
    [a1 addProperties:v13];
    v16[0] = 0;
    v16[1] = 0;
    if (!PBReaderPlaceMark() || !NRPBMutableDevicePropertyReadFrom(v13, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NRPBDevicePropertyDiffTypeReadFrom(uint64_t a1, void *a2)
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
        v20 = objc_alloc_init(NRPBDevicePropertyDiff);
        objc_storeStrong((a1 + 16), v20);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !NRPBDevicePropertyDiffReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
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

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_36:
        *(a1 + 8) = v19;
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

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}