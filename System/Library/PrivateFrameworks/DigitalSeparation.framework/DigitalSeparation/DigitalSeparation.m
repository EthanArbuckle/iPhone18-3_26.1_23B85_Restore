id DSBundle()
{
  if (DSBundle_onceToken != -1)
  {
    DSBundle_cold_1();
  }

  v1 = DSBundle__Bundle;

  return v1;
}

uint64_t __DSBundle_block_invoke()
{
  DSBundle__Bundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

id DSLocStringForKey(void *a1)
{
  v1 = a1;
  v2 = DSBundle();
  v3 = [v2 localizedStringForKey:v1 value:v1 table:@"Localizable"];

  return v3;
}

void sub_248C42A28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t block, uint64_t a11, void (*a12)(uint64_t a1), void *a13, id a14, id a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v29 + 64));
  if (a2 == 1)
  {
    v34 = objc_begin_catch(a1);
    v35 = *(v30 + 672);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = [v27 name];
      [(DSSharingType *)v36 stopAllSharingOnQueue:v34 completion:v31 - 144];
    }

    block = MEMORY[0x277D85DD0];
    a11 = v32;
    a12 = __50__DSSharingType_stopAllSharingOnQueue_completion___block_invoke_317;
    a13 = &unk_278F72600;
    a15 = v28;
    a14 = v27;
    dispatch_async(v26, &block);

    objc_end_catch();
    JUMPOUT(0x248C429D0);
  }

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248C43F90()
{
  objc_end_catch();
  objc_destroyWeak(&v0);
  JUMPOUT(0x248C43FB4);
}

uint64_t OUTLINED_FUNCTION_0(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  return result;
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_248C446A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_248C447E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_248C44930(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

id displayNameForApp(void *a1)
{
  v1 = MEMORY[0x277CC1E70];
  v2 = a1;
  v15 = 0;
  v3 = [[v1 alloc] initWithBundleIdentifier:v2 allowPlaceholder:1 error:&v15];

  v4 = v15;
  if (v4 || ([v3 localizedName], v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
  {
    v5 = DSLog;
    if (os_log_type_enabled(DSLog, OS_LOG_TYPE_ERROR))
    {
      displayNameForApp_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v13 = [v3 localizedName];

  return v13;
}

void sub_248C46F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __DuetActivitySchedulerLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  DuetActivitySchedulerLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

__CFString *descriptionForError(uint64_t a1)
{
  if (a1 <= 5)
  {
    v1 = @"Fetch app permissions failed";
    v8 = @"Reset app permissions failed";
    v9 = @"Data usage policy was not met";
    if (a1 != 5)
    {
      v9 = 0;
    }

    if (a1 != 4)
    {
      v8 = v9;
    }

    if (a1 != 3)
    {
      v1 = v8;
    }

    v6 = @"Fetch sharing failed";
    v10 = @"Stop sharing failed";
    if (a1 != 2)
    {
      v10 = 0;
    }

    if (a1 != 1)
    {
      v6 = v10;
    }

    v7 = a1 <= 2;
  }

  else
  {
    v1 = @"Failed to reset device access methods";
    v2 = @"Failed due to hang(s) and/or timeout";
    if (a1 != 408)
    {
      v2 = 0;
    }

    if (a1 != 12)
    {
      v1 = v2;
    }

    v3 = @"Unpairing hosts for Continuity failed.";
    v4 = @"Failed to fetch device access methods";
    if (a1 != 11)
    {
      v4 = 0;
    }

    if (a1 != 10)
    {
      v3 = v4;
    }

    if (a1 <= 11)
    {
      v1 = v3;
    }

    v5 = @"Removing paired hosts failed.";
    if (a1 != 9)
    {
      v5 = 0;
    }

    if ((a1 - 6) >= 3)
    {
      v6 = v5;
    }

    else
    {
      v6 = @"Failed to stop sharing due to device restrictions";
    }

    v7 = a1 <= 9;
  }

  if (v7)
  {
    return v6;
  }

  else
  {
    return v1;
  }
}

void sub_248C4B3F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int16 buf)
{
  objc_destroyWeak(&a19);
  if (a2 != 1)
  {
    _Unwind_Resume(a1);
  }

  v29 = objc_begin_catch(a1);
  v30 = *(v25 + 688);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    v31 = [v23 name];
    __85__DSSharingPermissions_fetchPermissionsFromSources_includingErrors_queue_completion___block_invoke_cold_2(v31, v29, (v26 - 96), v30);
  }

  v32 = [v23 name];
  v33 = [v32 isEqualToString:v24];

  if (v33)
  {
    v34 = *(v25 + 688);
    v35 = v34;
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
    {
      buf = 0;
      v36 = "fetch.Calendars";
LABEL_48:
      _os_signpost_emit_with_name_impl(&dword_248C40000, v35, OS_SIGNPOST_INTERVAL_END, v22, v36, " enableTelemetry=YES ", &buf, 2u);
    }
  }

  else
  {
    v37 = [v23 name];
    v38 = [v37 isEqualToString:@"com.apple.DigitalSeparation.FindMy"];

    if (v38)
    {
      v39 = *(v25 + 688);
      v35 = v39;
      if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
      {
        buf = 0;
        v36 = "fetch.FindMy";
        goto LABEL_48;
      }
    }

    else
    {
      v40 = [v23 name];
      v41 = [v40 isEqualToString:@"com.apple.DigitalSeparation.Photos"];

      if (v41)
      {
        v42 = *(v25 + 688);
        v35 = v42;
        if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
        {
          buf = 0;
          v36 = "fetch.Photos";
          goto LABEL_48;
        }
      }

      else
      {
        v43 = [v23 name];
        v44 = [v43 isEqualToString:@"com.apple.DigitalSeparation.HomeKit.HomeSharing"];

        if (v44)
        {
          v45 = *(v25 + 688);
          v35 = v45;
          if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
          {
            buf = 0;
            v36 = "fetch.Home";
            goto LABEL_48;
          }
        }

        else
        {
          v46 = [v23 name];
          v47 = [v46 isEqualToString:@"com.apple.DigitalSeparation.HealthKit.HealthSharing"];

          if (v47)
          {
            v48 = *(v25 + 688);
            v35 = v48;
            if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
            {
              buf = 0;
              v36 = "fetch.Health";
              goto LABEL_48;
            }
          }

          else
          {
            v49 = [v23 name];
            v50 = [v49 isEqualToString:@"com.apple.DigitalSeparation.Notes"];

            if (v50)
            {
              v51 = *(v25 + 688);
              v35 = v51;
              if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
              {
                buf = 0;
                v36 = "fetch.Notes";
                goto LABEL_48;
              }
            }

            else
            {
              v52 = [v23 name];
              v53 = [v52 isEqualToString:@"com.apple.DigitalSeparation.Zelkova"];

              if (v53)
              {
                v54 = *(v25 + 688);
                v35 = v54;
                if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
                {
                  buf = 0;
                  v36 = "fetch.Zelkova";
                  goto LABEL_48;
                }
              }

              else
              {
                v55 = [v23 name];
                v56 = [v55 isEqualToString:@"com.apple.DigitalSeparation.Fitness"];

                if (v56)
                {
                  v57 = *(v25 + 688);
                  v35 = v57;
                  if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v57))
                  {
                    buf = 0;
                    v36 = "fetch.Activity";
                    goto LABEL_48;
                  }
                }

                else
                {
                  v58 = [v23 name];
                  v59 = [v58 isEqualToString:@"com.apple.DigitalSeparation.PassKeys"];

                  if (v59)
                  {
                    v60 = *(v25 + 688);
                    v35 = v60;
                    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v60))
                    {
                      buf = 0;
                      v36 = "fetch.Passkeys";
                      goto LABEL_48;
                    }
                  }

                  else
                  {
                    v61 = [v23 name];
                    v62 = [v61 isEqualToString:@"com.apple.DigitalSeparation.ItemSharing"];

                    if (v62)
                    {
                      v63 = *(v25 + 688);
                      v35 = v63;
                      if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v63))
                      {
                        buf = 0;
                        v36 = "fetch.ItemSharing";
                        goto LABEL_48;
                      }
                    }

                    else
                    {
                      v64 = [v23 name];
                      v65 = [v64 isEqualToString:@"com.apple.DigitalSeparation.Maps"];

                      v66 = *(v25 + 688);
                      v35 = v66;
                      if (v65)
                      {
                        if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v66))
                        {
                          buf = 0;
                          v36 = "fetch.Maps";
                          goto LABEL_48;
                        }
                      }

                      else
                      {
                        if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v66))
                        {
                          buf = 0;
                          _os_signpost_emit_with_name_impl(&dword_248C40000, v35, OS_SIGNPOST_INTERVAL_END, v22, "fetch.Notes", " enableTelemetry=YES ", &buf, 2u);
                        }

                        v35 = *(v25 + 688);
                        if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
                        {
                          v69 = [v23 name];
                          __85__DSSharingPermissions_fetchPermissionsFromSources_includingErrors_queue_completion___block_invoke_cold_3(v69, &buf, v35);
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

  v67 = [v23 name];
  v68 = [DSError errorWithCode:1 sourceName:v67 underlyingErrors:MEMORY[0x277CBEBF8]];

  [*(v21 + 48) addObject:v68];
  dispatch_group_leave(*(v21 + 32));

  objc_end_catch();
  JUMPOUT(0x248C4B3B4);
}

void sub_248C4CAD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_248C4D2B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, a5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 countByEnumeratingWithState:a3 objects:a4 count:16];
}

BOOL OUTLINED_FUNCTION_27()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_FAULT);
}

uint64_t __DSLogNSError_block_invoke()
{
  DSLogNSError_log = os_log_create("com.apple.DigitalSeparation", "DSLogNSError");

  return MEMORY[0x2821F96F8]();
}

void sub_248C5608C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak((v19 - 104));
  _Unwind_Resume(a1);
}

void sub_248C57CF8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_248C58654(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id DSLogCTDataUsagePolicies()
{
  if (DSLogCTDataUsagePolicies_onceToken != -1)
  {
    DSLogCTDataUsagePolicies_cold_1();
  }

  v1 = DSLogCTDataUsagePolicies_log;

  return v1;
}

uint64_t __DSLogCTDataUsagePolicies_block_invoke()
{
  DSLogCTDataUsagePolicies_log = os_log_create("com.apple.DigitalSeparation", "DSLogCTDataUsagePolicies");

  return MEMORY[0x2821F96F8]();
}

void sub_248C5B444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_248C5FEB8()
{
  objc_end_catch();
  objc_destroyWeak(&v1);
  _Unwind_Resume(v0);
}

void OUTLINED_FUNCTION_0_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_INFO, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_3_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_4_0(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_fault_impl(a1, a4, OS_LOG_TYPE_FAULT, a2, a3, 0xCu);
}

uint64_t OUTLINED_FUNCTION_7_0(uint64_t result, float *a2, void *a3, float a4)
{
  *a2 = a4;
  *a3 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_0(uint64_t a1)
{

  return [v2 setObject:v1 forKeyedSubscript:a1];
}

void sub_248C61C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void displayNameForApp_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_248C40000, a2, a3, "TCCAccess error getting display name for app: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}