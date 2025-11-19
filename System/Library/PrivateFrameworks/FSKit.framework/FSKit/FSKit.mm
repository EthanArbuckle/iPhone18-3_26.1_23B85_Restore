uint64_t sub_24A92A9F0()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

void sub_24A92B7B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24A9316D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 160), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_6(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x20u);
}

void OUTLINED_FUNCTION_7(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void OUTLINED_FUNCTION_11(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_24A937660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_24A939D24(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

id fskit_std_log()
{
  if (fskit_std_log_once != -1)
  {
    fskit_std_log_cold_1();
  }

  v1 = fskit_std_log_logger;

  return v1;
}

uint64_t __fskit_std_log_block_invoke()
{
  v0 = os_log_create("com.apple.FSKit", "default");
  v1 = fskit_std_log_logger;
  fskit_std_log_logger = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t locking_vprintf(const char *a1, va_list a2)
{
  v4 = +[FSClient sharedInstance];
  objc_sync_enter(v4);
  v5 = vprintf(a1, a2);
  objc_sync_exit(v4);

  return v5;
}

id FSKitLocalizedStringWithKeyAndVariant(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = v11;
  v15 = v12;
  v16 = v13;
  v17 = [0 stringByAppendingString:v14];
  if (!v17)
  {
    goto LABEL_4;
  }

  v18 = [v15 stringByAppendingString:@".f"];
  v19 = _FSKitLocalizedStringNoFallbackWithKeyAndVariant(v17, v18, v16);

  if (v19)
  {
    goto LABEL_8;
  }

  v20 = _FSKitLocalizedStringNoFallbackWithKeyAndVariant(v17, v15, v16);
  if (!v20)
  {
LABEL_4:
    v21 = [v15 stringByAppendingString:@".f"];
    v19 = _FSKitLocalizedStringWithKeyAndVariant(v14, v21, v16);

    if (v19)
    {
      goto LABEL_8;
    }

    v20 = _FSKitLocalizedStringWithKeyAndVariant(v14, v15, v16);
    if (!v20)
    {
      v20 = FSKitLocalizedErrorStringForKey(v14);
    }
  }

  v19 = v20;
LABEL_8:
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v19, &a9];
  v23 = [MEMORY[0x277CCACA8] stringWithFormat:v22, &stru_285DEFA28];

  return v23;
}

id _FSKitLocalizedStringNoFallbackWithKeyAndVariant(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v7 || ([MEMORY[0x277CCACA8] stringWithFormat:@"%@%@(%@)", v5, v6, v7], v8 = objc_claimAutoreleasedReturnValue(), FSKitLocalizedErrorStringForKey(v8), v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@(*)", v5, v6];
    v9 = FSKitLocalizedErrorStringForKey(v10);
  }

  return v9;
}

id _FSKitLocalizedStringWithKeyAndVariant(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = _FSKitLocalizedStringNoFallbackWithKeyAndVariant(v5, v6, v7);
  v9 = v8;
  if (v7 && !v8)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@(%@)", v6, v7];
    v9 = FSKitLocalizedErrorStringForKey(v10);
  }

  if (v6 && !v9)
  {
    if ([v6 isEqualToString:&stru_285DEFA28])
    {
      v9 = 0;
    }

    else
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v5, v6];
      v9 = FSKitLocalizedErrorStringForKey(v11);
    }
  }

  return v9;
}

id fskitLocalizationBundle()
{
  if (fskitLocalizationBundle_onceToken != -1)
  {
    fskitLocalizationBundle_cold_1();
  }

  v1 = fskitLocalizationBundle_bundle;

  return v1;
}

uint64_t __fskitLocalizationBundle_block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = fskitLocalizationBundle_bundle;
  fskitLocalizationBundle_bundle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

__CFString *_FSKitLocalizedString(void *a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v5)
  {
    v9 = [v7 localizedStringForKey:v5 value:@"LOCALIZED_STRING_UNAVAILABLE" table:v6];
    if (v9 == @"LOCALIZED_STRING_UNAVAILABLE")
    {
      v10 = fskit_std_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = [v8 bundlePath];
        v14 = 138412802;
        v15 = v5;
        v16 = 2112;
        v17 = v6;
        v18 = 2112;
        v19 = v13;
        _os_log_error_impl(&dword_24A929000, v10, OS_LOG_TYPE_ERROR, "Couldn't find value for key %@ in %@ at %@", &v14, 0x20u);
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

id _FSKitLocalizedStringWithFormat(id a1, void *a2, void *a3, ...)
{
  va_start(va, a3);
  v3 = a1;
  if (a1)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = a3;
    v7 = a2;
    v8 = v3;
    v9 = [v5 alloc];
    v10 = _FSKitLocalizedString(v8, v7, v6);

    v11 = [MEMORY[0x277CBEAF8] currentLocale];
    v3 = [v9 initWithFormat:v10 locale:v11 arguments:va];
  }

  return v3;
}

id FSKitLocalizedErrorStringForKey(void *a1)
{
  v1 = a1;
  v2 = fskitLocalizationBundle();
  v3 = [v2 localizedStringForKey:v1 value:@"X" table:@"Errors"];

  if ([v3 isEqualToString:@"X"])
  {
    if ([v1 hasSuffix:@"-C"] & 1) != 0 || (objc_msgSend(v1, "hasSuffix:", @"-R") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:", @".f") & 1) != 0 || (objc_msgSend(v1, "hasSuffix:", @"(*)") & 1) != 0 || (objc_msgSend(v1, "containsString:", @"("))
    {
      v4 = 0;
      goto LABEL_10;
    }

    v7 = fskit_std_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      FSKitLocalizedErrorStringForKey_cold_1(v1, v7);
    }

    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"KEY_MISSING(%@)", v1];
  }

  else
  {
    v5 = v3;
  }

  v4 = v5;
LABEL_10:

  return v4;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_24A94110C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_24A941464(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_24A942E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void deviceNotificationCallback(void *a1, io_registry_entry_t a2, int a3)
{
  v47 = *MEMORY[0x277D85DE8];
  if (!a1 || a3 != -536870896)
  {
    goto LABEL_18;
  }

  v5 = fskit_std_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    deviceNotificationCallback_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  v13 = a1;
  objc_sync_enter(v13);
  if ([v13 terminated])
  {
    v14 = fskit_std_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v13 getResourceID];
      *buf = 136315394;
      v44 = "deviceNotificationCallback";
      v45 = 2112;
      v46 = v15;
      _os_log_impl(&dword_24A929000, v14, OS_LOG_TYPE_INFO, "%s: resource (%@) is already terminated, nothing to do", buf, 0x16u);
    }
  }

  else
  {
    v16 = fskit_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = [v13 BSDName];
      deviceNotificationCallback_cold_2(v17, buf, v16);
    }

    properties = 0;
    if (IORegistryEntryCreateCFProperties(a2, &properties, 0, 0))
    {
      v18 = fskit_std_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        deviceNotificationCallback_cold_3();
      }
    }

    else
    {
      Value = CFDictionaryGetValue(properties, @"BSD Name");
      v29 = Value;
      if (Value)
      {
        v30 = CFGetTypeID(Value);
        if (v30 != CFStringGetTypeID())
        {
          v37 = fskit_std_log();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            deviceNotificationCallback_cold_4();
          }

          CFRelease(v29);
          goto LABEL_15;
        }

        v18 = v29;
        v31 = fskit_std_log();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          deviceNotificationCallback_cold_5();
        }

        v32 = [v13 BSDName];
        v33 = [v18 isEqualToString:v32];

        if (v33)
        {
          v34 = [v13 stopUsingResource:@"serviceTerminated"];
          if (!v34)
          {
            v35 = fskit_std_log();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
            {
              v36 = [v13 getResourceID];
              *v39 = 136315394;
              v40 = "deviceNotificationCallback";
              v41 = 2112;
              v42 = v36;
              _os_log_impl(&dword_24A929000, v35, OS_LOG_TYPE_INFO, "%s: resource (%@) closed for kernel", v39, 0x16u);
            }
          }

          [v13 terminateLocked];
        }
      }

      else
      {
        v18 = fskit_std_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          deviceNotificationCallback_cold_6();
        }
      }
    }
  }

LABEL_15:
  objc_sync_exit(v13);

  v19 = fskit_std_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    deviceNotificationCallback_cold_7(v19, v20, v21, v22, v23, v24, v25, v26);
  }

LABEL_18:
  v27 = *MEMORY[0x277D85DE8];
}

void OUTLINED_FUNCTION_3_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t *OUTLINED_FUNCTION_9_0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void OUTLINED_FUNCTION_2_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_24A9478E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v13);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24A947BFC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_24A94A1A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A94A5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A94B09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_24A94B2E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_1_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*result + 40);
  return result;
}

void OUTLINED_FUNCTION_4_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x1Cu);
}

uint64_t FSKitCheckContainerStart(uint64_t a1, uint64_t *a2, int a3)
{
  v37 = *MEMORY[0x277D85DE8];
  if (_MergedGlobals)
  {
    v3 = fskit_std_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      FSKitCheckContainerStart_cold_1();
    }

LABEL_15:
    v18 = 22;
    goto LABEL_16;
  }

  if (!a1 || (v5 = a2) == 0 || a3 <= 0)
  {
    v3 = fskit_std_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      FSKitCheckContainerStart_cold_3();
    }

    goto LABEL_15;
  }

  v7 = +[FSClient sharedInstance];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
  v9 = [MEMORY[0x277CBEB18] array];
  v10 = a3;
  do
  {
    v11 = *v5++;
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:v11];
    [v9 addObject:v12];

    --v10;
  }

  while (v10);
  v13 = [FSBlockDeviceResource proxyResourceForBSDName:v8];
  v14 = [v13 bsdName];
  v15 = [v9 copy];
  v28 = 0;
  v16 = [v7 startFSCKWithDevice:v14 volumes:v15 error:&v28];
  v3 = v28;

  if (v3)
  {
    v17 = fskit_std_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v30 = "FSKitCheckContainerStart";
      v31 = 2112;
      v32 = v8;
      v33 = 2112;
      v34 = v9;
      v35 = 2112;
      v36 = v3;
      _os_log_error_impl(&dword_24A929000, v17, OS_LOG_TYPE_ERROR, "%s: Can't start check on (%@/%@) error (%@)", buf, 0x2Au);
    }

    v18 = [v3 code];
  }

  else
  {
    v21 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:100];
    v22 = gProgress;
    gProgress = v21;

    v23 = gProgress;
    v24 = [v13 getProgressURLKey];
    [v23 setUserInfoObject:v24 forKey:*MEMORY[0x277CCA640]];

    [gProgress publish];
    gProgressVal = 0;
    gInterval = 0;
    v25 = [MEMORY[0x277CBEAA8] date];
    v26 = gStartDate;
    gStartDate = v25;

    objc_storeStrong(&_MergedGlobals, v16);
    qword_27EF7F520 = a1;
    v27 = fskit_std_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      FSKitCheckContainerStart_cold_2();
    }

    v18 = 0;
  }

LABEL_16:
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t FSKitCheckStart(uint64_t a1, uint64_t a2)
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (a1 && a2)
  {
    v5[0] = a2;
    result = FSKitCheckContainerStart(a1, v5, 1);
  }

  else
  {
    v3 = fskit_std_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      FSKitCheckStart_cold_1();
    }

    result = 22;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t FSKitCheckUpdate(int a1)
{
  if (gProgress)
  {
    gProgressVal = a1;
    if (!gInterval)
    {
      updateTimer(100000000);
    }

    return 0;
  }

  else
  {
    v2 = fskit_std_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      FSKitCheckUpdate_cold_1();
    }

    return 22;
  }
}

void updateTimer(uint64_t a1)
{
  obj = +[FSClient sharedInstance];
  objc_sync_enter(obj);
  gInterval = a1;
  if (gTimer)
  {
    dispatch_source_cancel(gTimer);
    v2 = gTimer;
    gTimer = 0;
  }

  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, 0);
  v4 = gTimer;
  gTimer = v3;

  v5 = gTimer;
  v6 = dispatch_time(0, 0);
  dispatch_source_set_timer(v5, v6, gInterval, 0);
  dispatch_source_set_event_handler(gTimer, &__block_literal_global_11);
  dispatch_resume(gTimer);
  objc_sync_exit(obj);
}

void FSKitCheckDone()
{
  if (qword_27EF7F520)
  {
    v0 = _MergedGlobals == 0;
  }

  else
  {
    v0 = 1;
  }

  if (v0)
  {
    v1 = fskit_std_log();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      FSKitCheckDone_cold_1();
    }
  }

  else
  {
    v1 = dispatch_group_create();
    dispatch_group_enter(v1);
    v2 = +[FSClient sharedInstance];
    v3 = [v2 doneFSCKWithTask:_MergedGlobals];
    v4 = v3;
    if (v3)
    {
      v5 = fskit_std_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        FSKitCheckDone_cold_2();
      }
    }

    v6 = gStartDate;
    gStartDate = 0;

    [gProgress unpublish];
    v7 = gProgress;
    gProgress = 0;

    v8 = fskit_std_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      FSKitCheckDone_cold_3();
    }

    v9 = _MergedGlobals;
    _MergedGlobals = 0;

    gInterval = 0;
    v10 = +[FSClient sharedInstance];
    objc_sync_enter(v10);
    if (gTimer)
    {
      dispatch_source_cancel(gTimer);
      v11 = gTimer;
      gTimer = 0;
    }

    objc_sync_exit(v10);
  }
}

void __updateTimer_block_invoke()
{
  v0 = 1000000000;
  [gProgress setCompletedUnitCount:gProgressVal];
  v1 = [MEMORY[0x277CBEAA8] date];
  [v1 timeIntervalSinceDate:gStartDate];
  v3 = v2;

  if (v3 >= 6.0 && gInterval != 1000000000)
  {
    v7 = fskit_std_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __updateTimer_block_invoke_cold_2();
    }

LABEL_17:

    updateTimer(v0);
    return;
  }

  v0 = 500000000;
  if (v3 < 6.0 && v3 >= 3.0 && gInterval != 500000000)
  {
    v7 = fskit_std_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __updateTimer_block_invoke_cold_1();
    }

    goto LABEL_17;
  }
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void sub_24A94E1E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  _Block_object_dispose(&a16, 8);
  _Block_object_dispose(&location, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24A94FD94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24A950E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A9546B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_7_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void OUTLINED_FUNCTION_9_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_24A95D084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __60__stolenUSBLocalStorageClient_loadVolumes_ofType_withError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_24A95D48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 176), 8);
  _Block_object_dispose((v33 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_24A95D7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24A95E10C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose((v51 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_5_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 8) = a3;
  v4 = *(result + 56);
  v5 = *(*(*a2 + 8) + 40);
  return result;
}

uint64_t sub_24A95F1C4(_BYTE *__src, uint64_t a2)
{
  result = 0;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      return sub_24A95F350(__src, &__src[a2]);
    }

    else
    {
      v5 = sub_24A96B73C();
      v6 = *(v5 + 48);
      v7 = *(v5 + 52);
      swift_allocObject();
      sub_24A96B72C();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_24A96B75C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
      }

      else
      {
        return a2 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_24A95F274(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id sub_24A95F2CC(_BYTE *a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_24A95F1C4(a1, a2);
  v7 = v6;
  v8 = sub_24A96B76C();
  sub_24A95F274(v5, v7);
  v9 = [v4 initWithData_];

  return v9;
}

uint64_t sub_24A95F350(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

FSKitUtils __swiftcall FSKitUtils.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void *sub_24A95F628(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7F388, &qword_24A971040);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7F390, &qword_24A971048);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t _sSo10FSKitUtilsC0A0E6string16withFormatString6locale9argumentsS2S_10Foundation6LocaleVSaySo8NSObjectCGtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7F378, &qword_24A971038) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  result = MEMORY[0x28223BE20]();
  v11 = &v27 - v10;
  if (a4 >> 62)
  {
    result = sub_24A96B84C();
    v12 = result;
  }

  else
  {
    v12 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = a1;
  v31 = a2;
  v28 = a3;
  v29 = v11;
  if (!v12)
  {
LABEL_12:
    v18 = sub_24A96B7BC();
    v19 = *(v18 - 8);
    v20 = v29;
    (*(v19 + 16))(v29, v28, v18);
    (*(v19 + 56))(v20, 0, 1, v18);
    v21 = sub_24A96B7EC();

    sub_24A95FBDC(v20);
    return v21;
  }

  if (v12 >= 1)
  {
    if ((a4 & 0xC000000000000001) != 0)
    {
      v13 = 0;
      v14 = MEMORY[0x277D84F90];
      do
      {
        v15 = MEMORY[0x24C220C10](v13, a4);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_24A95F628(0, v14[2] + 1, 1, v14);
        }

        v17 = v14[2];
        v16 = v14[3];
        if (v17 >= v16 >> 1)
        {
          v14 = sub_24A95F628((v16 > 1), v17 + 1, 1, v14);
        }

        ++v13;
        v33 = sub_24A95FACC(0, &qword_27EF7F370, 0x277D82BB8);
        v34 = sub_24A95FB5C();
        *&v32 = v15;
        v14[2] = v17 + 1;
        sub_24A95FBC4(&v32, &v14[5 * v17 + 4]);
      }

      while (v12 != v13);
    }

    else
    {
      v22 = MEMORY[0x277D84F90];
      v23 = (a4 + 32);
      do
      {
        v24 = *v23;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_24A95F628(0, v22[2] + 1, 1, v22);
        }

        v26 = v22[2];
        v25 = v22[3];
        if (v26 >= v25 >> 1)
        {
          v22 = sub_24A95F628((v25 > 1), v26 + 1, 1, v22);
        }

        v33 = sub_24A95FACC(0, &qword_27EF7F370, 0x277D82BB8);
        v34 = sub_24A95FB5C();
        *&v32 = v24;
        v22[2] = v26 + 1;
        sub_24A95FBC4(&v32, &v22[5 * v26 + 4]);
        ++v23;
        --v12;
      }

      while (v12);
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_24A95FACC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
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

unint64_t sub_24A95FB5C()
{
  result = qword_27EF7F380;
  if (!qword_27EF7F380)
  {
    sub_24A95FACC(255, &qword_27EF7F370, 0x277D82BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF7F380);
  }

  return result;
}

uint64_t sub_24A95FBC4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_24A95FBDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF7F378, &qword_24A971038);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sSo23FSMutableFileDataBufferC5FSKitE22withUnsafeMutableBytesyxxSwq_YKXEq_YKs5ErrorR_r0_lF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v35 = a6;
  v36 = a7;
  v43 = a2;
  v41 = a1;
  v33 = *(a4 - 8);
  v11 = *(v33 + 64);
  MEMORY[0x28223BE20](a1);
  v37 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24A96B87C();
  v14 = sub_24A96B82C();
  v39 = *(v14 - 8);
  v40 = v14;
  v15 = *(v39 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v32 - v19;
  v21 = *(v13 - 1);
  (*(v21 + 56))(&v32 - v19, 1, 1, v13);
  v22 = swift_allocObject();
  v22[2] = a3;
  v22[3] = a4;
  v34 = a4;
  v22[4] = a5;
  v22[5] = v7;
  v23 = v43;
  v22[6] = v41;
  v22[7] = v23;
  v22[8] = v20;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_24A9603AC;
  *(v24 + 24) = v22;
  aBlock[4] = sub_24A9603C0;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A9603E8;
  aBlock[3] = &block_descriptor;
  v25 = _Block_copy(aBlock);
  v26 = v7;

  [v26 withMutableBytes_];
  _Block_release(v25);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if (v26)
  {
    __break(1u);
    goto LABEL_7;
  }

  v29 = v39;
  v28 = v40;
  (*(v39 + 16))(v18, v20, v40);
  result = (*(v21 + 48))(v18, 1, v13);
  if (result == 1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v30 = v37;
  v31 = v38;
  sub_24A96042C(v13, v37, v36);
  if (v31)
  {
    (*(v33 + 32))(v35, v30, v34);
  }

  (*(v29 + 8))(v20, v28);
}

uint64_t sub_24A960018(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, char *, char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a8;
  v27 = a5;
  v11 = *(*(a7 - 8) + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v26 - v14;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v13);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(a1, [v21 length] + a1, v15);
  v22 = sub_24A96B87C();
  v23 = sub_24A96B82C();
  v24 = v27;
  (*(*(v23 - 8) + 8))(v27, v23);
  (*(v17 + 32))(v24, v20, a6);
  swift_storeEnumTagMultiPayload();
  return (*(*(v22 - 8) + 56))(v24, 0, 1, v22);
}

uint64_t sub_24A9603C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24A96042C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  v7 = a1[4];
  return swift_willThrowTypedImpl();
}

uint64_t FSModuleIdentity.id.getter()
{
  v1 = [v0 bundleIdentifier];
  v2 = sub_24A96B7DC();

  return v2;
}

void sub_24A960560(uint64_t *a1@<X8>)
{
  v3 = [*v1 bundleIdentifier];
  v4 = sub_24A96B7DC();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

void FileSystemExtension.configuration.getter(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = (*(a1 + 24))();
  v4 = type metadata accessor for _FSKitFileSystemExtensionConfiguration();
  v5 = objc_allocWithZone(v4);
  v6 = [objc_opt_self() moduleExtensionForAppex_];
  *&v5[OBJC_IVAR____TtC5FSKit38_FSKitFileSystemExtensionConfiguration_ourExtension] = v6;
  [v6 didFinishLaunching];
  v8.receiver = v5;
  v8.super_class = v4;
  v7 = objc_msgSendSuper2(&v8, sel_init);

  *a2 = v7;
}

void UnaryFileSystemExtension.configuration.getter(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = (*(a1 + 24))();
  v4 = type metadata accessor for _FSKitUnaryFileSystemExtensionConfiguration();
  v5 = objc_allocWithZone(v4);
  v6 = [objc_opt_self() moduleExtensionForAppex_];
  *&v5[OBJC_IVAR____TtC5FSKit43_FSKitUnaryFileSystemExtensionConfiguration_ourExtension] = v6;
  [v6 didFinishLaunching];
  v8.receiver = v5;
  v8.super_class = v4;
  v7 = objc_msgSendSuper2(&v8, sel_init);

  *a2 = v7;
}

id sub_24A96075C(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = [objc_opt_self() moduleExtensionForAppex_];
  *&v5[*a2] = v6;
  [v6 didFinishLaunching];
  v9.receiver = v5;
  v9.super_class = v2;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

id sub_24A960970(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24A960A38(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t FSVolume.id.getter()
{
  v1 = [v0 volumeID];
  v2 = FSEntityIdentifier.id.getter();

  return v2;
}

void sub_24A960AD4(uint64_t *a1@<X8>)
{
  v3 = [*v1 volumeID];
  v4 = FSEntityIdentifier.id.getter();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t FSEntityIdentifier.id.getter()
{
  v1 = sub_24A96B79C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 uuid];
  sub_24A96B78C();

  v7 = sub_24A96B77C();
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t sub_24A960C2C@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_24A96B79C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*v1 uuid];
  sub_24A96B78C();

  v9 = sub_24A96B77C();
  v11 = v10;
  result = (*(v4 + 8))(v7, v3);
  *a1 = v9;
  a1[1] = v11;
  return result;
}

uint64_t FSBlockDeviceResource.read(into:startingAt:length:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a1;
  v5[4] = a3;
  return MEMORY[0x2822009F8](sub_24A960D50, 0, 0);
}

uint64_t sub_24A960D50()
{
  v1 = v0[3];
  if (v1)
  {
    v3 = v0[5];
    v2 = v0[6];
    v4 = v0[4];
    v5 = swift_task_alloc();
    v0[7] = v5;
    v5[2] = v2;
    v5[3] = v1;
    v5[4] = v4;
    v5[5] = v3;
    v6 = *(MEMORY[0x277D85A40] + 4);
    v7 = swift_task_alloc();
    v0[8] = v7;
    *v7 = v0;
    v7[1] = sub_24A960EC0;
    v8 = MEMORY[0x277D83B88];

    return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD00000000000001DLL, 0x800000024A979320, sub_24A96105C, v5, v8);
  }

  else
  {
    fs_errorForPOSIXError(22);
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_24A960EC0()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_24A960FF8;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_24A960FDC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24A960FF8()
{
  v1 = v0[7];

  v2 = v0[9];
  v3 = v0[1];

  return v3();
}

void sub_24A9610B4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id FSBlockDeviceResource.read(into:startingAt:length:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x277D85DE8];
  result = sub_24A961808(a1, a2, a3, a4, &selRef_readInto_startingAt_length_error_);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t FSBlockDeviceResource.write(from:startingAt:length:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a1;
  v5[4] = a3;
  return MEMORY[0x2822009F8](sub_24A9611D0, 0, 0);
}

uint64_t sub_24A9611D0()
{
  v1 = v0[3];
  if (v1)
  {
    v3 = v0[5];
    v2 = v0[6];
    v4 = v0[4];
    v5 = swift_task_alloc();
    v0[7] = v5;
    v5[2] = v2;
    v5[3] = v1;
    v5[4] = v4;
    v5[5] = v3;
    v6 = *(MEMORY[0x277D85A40] + 4);
    v7 = swift_task_alloc();
    v0[8] = v7;
    *v7 = v0;
    v7[1] = sub_24A961340;
    v8 = MEMORY[0x277D83B88];

    return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD00000000000001ELL, 0x800000024A979360, sub_24A961614, v5, v8);
  }

  else
  {
    fs_errorForPOSIXError(22);
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_24A961340()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_24A961C1C;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_24A961C20;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_24A96145C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, SEL *a9)
{
  v23 = a4;
  v24 = a5;
  v22 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF7F480, &qword_24A971270);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  (*(v14 + 16))(&v21 - v16, a1, v13);
  v18 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v19 = swift_allocObject();
  (*(v14 + 32))(v19 + v18, v17, v13);
  aBlock[4] = a7;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A9610B4;
  aBlock[3] = a8;
  v20 = _Block_copy(aBlock);

  [a2 *a9];
  _Block_release(v20);
}

void sub_24A961680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, id), uint64_t a6, uint64_t a7, SEL *a8)
{
  if (a1)
  {
    aBlock[4] = a5;
    aBlock[5] = a6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A9610B4;
    aBlock[3] = a7;
    v14 = _Block_copy(aBlock);

    [v8 *a8];
    _Block_release(v14);
  }

  else
  {
    v15 = fs_errorForPOSIXError(22);
    a5(0, v15);
  }
}

id FSBlockDeviceResource.write(from:startingAt:length:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x277D85DE8];
  result = sub_24A961808(a1, a2, a3, a4, &selRef_writeFrom_startingAt_length_error_);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_24A961808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v9[0] = 0;
    result = [v5 *a5];
    v7 = v9[0];
    if (v9[0])
    {
      swift_willThrow();
      result = v7;
    }
  }

  else
  {
    fs_errorForPOSIXError(22);
    result = swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

id FSBlockDeviceResource.metadataRead(into:startingAt:length:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x277D85DE8];
  result = sub_24A9619BC(a1, a2, a3, a4, &selRef_metadataReadInto_startingAt_length_error_);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

id FSBlockDeviceResource.metadataWrite(from:startingAt:length:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x277D85DE8];
  result = sub_24A9619BC(a1, a2, a3, a4, &selRef_metadataWriteFrom_startingAt_length_error_);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

id FSBlockDeviceResource.delayedMetadataWrite(from:startingAt:length:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x277D85DE8];
  result = sub_24A9619BC(a1, a2, a3, a4, &selRef_delayedMetadataWriteFrom_startingAt_length_error_);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_24A9619BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    fs_errorForPOSIXError(22);
LABEL_6:
    result = swift_willThrow();
    goto LABEL_7;
  }

  v9[0] = 0;
  if (![v5 *a5])
  {
    v7 = v9[0];
    sub_24A96B74C();

    goto LABEL_6;
  }

  result = v9[0];
LABEL_7:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t objectdestroyTm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF7F480, &qword_24A971270);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24A961B28(uint64_t a1, void *a2)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF7F480, &qword_24A971270) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  if (a2)
  {
    v5 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF7F480, &qword_24A971270);
    return sub_24A96B80C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF7F480, &qword_24A971270);
    return sub_24A96B81C();
  }
}

void FSKitLocalizedErrorStringForKey_cold_1(uint64_t a1, NSObject *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = fskitLocalizationBundle();
  v5 = [v4 bundlePath];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_24A929000, a2, OS_LOG_TYPE_ERROR, "Localized key '%@' missing from table 'Errors' (bundlePath:%@)", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void deviceNotificationCallback_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0(&dword_24A929000, a1, a3, "%s:start", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void deviceNotificationCallback_cold_2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315394;
  *(buf + 4) = "deviceNotificationCallback";
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_debug_impl(&dword_24A929000, log, OS_LOG_TYPE_DEBUG, "%s:kIOMessageServiceIsTerminated:%@", buf, 0x16u);
}

void deviceNotificationCallback_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void deviceNotificationCallback_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void deviceNotificationCallback_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void deviceNotificationCallback_cold_6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void deviceNotificationCallback_cold_7(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0(&dword_24A929000, a1, a3, "%s:finish", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void FSKitCheckContainerStart_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void FSKitCheckContainerStart_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1(&dword_24A929000, v0, v1, "%s: Started check task (%@)", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void FSKitCheckContainerStart_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void FSKitCheckStart_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void FSKitCheckUpdate_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void FSKitCheckDone_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void FSKitCheckDone_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Au);
  v5 = *MEMORY[0x277D85DE8];
}

void FSKitCheckDone_cold_3()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1(&dword_24A929000, v0, v1, "%s: Check task (%@) is done", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __updateTimer_block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2_1(&dword_24A929000, v0, v1, "%s: After %f seconds, changing rate to 500ms", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __updateTimer_block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2_1(&dword_24A929000, v0, v1, "%s: After %f seconds, changing rate to 1s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}