id DefaultLog()
{
  if (DefaultLog_onceToken != -1)
  {
    DefaultLog_cold_1();
  }

  v1 = DefaultLog_logFacility;

  return v1;
}

uint64_t __DefaultLog_block_invoke()
{
  DefaultLog_logFacility = os_log_create("com.apple.DataDeliveryServices", "Default");

  return MEMORY[0x1EEE66BB8]();
}

id QueryLog()
{
  if (QueryLog_onceToken != -1)
  {
    QueryLog_cold_1();
  }

  v1 = QueryLog_logFacility;

  return v1;
}

BOOL DDS_LOG_REDACTED()
{
  v0 = DefaultLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    v1 = 1;
  }

  else
  {
    v2 = QueryLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v1 = 1;
    }

    else
    {
      v3 = UpdateLog();
      v1 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
    }
  }

  return v1;
}

id UpdateLog()
{
  if (UpdateLog_onceToken != -1)
  {
    UpdateLog_cold_1();
  }

  v1 = UpdateLog_logFacility;

  return v1;
}

void sub_1DF7C7FD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
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

void sub_1DF7C8B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DF7CA488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF7CABE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t DDS_IS_INTERNAL_INSTALL()
{
  if (DDS_IS_INTERNAL_INSTALL_once_token != -1)
  {
    DDS_IS_INTERNAL_INSTALL_cold_1();
  }

  return DDS_IS_INTERNAL_INSTALL_is_internal_install;
}

id DDS_BUILD_VERSION_STRING()
{
  if (DDS_BUILD_VERSION_STRING_onceToken != -1)
  {
    DDS_BUILD_VERSION_STRING_cold_1();
  }

  v1 = DDS_BUILD_VERSION_STRING_build;

  return v1;
}

id DDS_STRING_FROM_DATE(void *a1)
{
  v1 = DDS_STRING_FROM_DATE_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    DDS_STRING_FROM_DATE_cold_1();
  }

  v3 = [DDS_STRING_FROM_DATE_formatter stringFromDate:v2];

  return v3;
}

uint64_t DDSObjectsAreEqualOrNil(unint64_t a1, uint64_t a2)
{
  if (a1 | a2)
  {
    return [a1 isEqual:a2];
  }

  else
  {
    return 1;
  }
}

id DDSAssetDownloadUIError(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_13;
      }

      v1 = MEMORY[0x1E696ABC0];
      v2 = &unk_1F5AC5990;
      v3 = 1;
    }

    else
    {
      v1 = MEMORY[0x1E696ABC0];
      v2 = &unk_1F5AC5968;
      v3 = 0;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        v1 = MEMORY[0x1E696ABC0];
        v2 = &unk_1F5AC59B8;
        v3 = 2;
        break;
      case 3:
        v1 = MEMORY[0x1E696ABC0];
        v2 = &unk_1F5AC59E0;
        v3 = 3;
        break;
      case 4:
        v1 = MEMORY[0x1E696ABC0];
        v2 = &unk_1F5AC5A08;
        v3 = 4;
        break;
      default:
        goto LABEL_13;
    }
  }

  a1 = [v1 errorWithDomain:@"DDSAssetDownloadUIErrorDomain" code:v3 userInfo:v2];
LABEL_13:

  return a1;
}

void *DDSReadCompatabilityVersionFromFile(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [@"/System/Library/LinguisticData" stringByAppendingPathComponent:v1];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [v3 fileExistsAtPath:v2];

  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v2 options:1 error:0];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [MEMORY[0x1E696AE40] propertyListWithData:v5 options:0 format:0 error:0];
  v7 = [v6 objectForKey:@"MobileAssetProperties"];
  v8 = [v7 objectForKey:@"_CompatibilityVersion"];

  if (v8)
  {
    v5 = [v8 integerValue];
  }

  else
  {
LABEL_5:
    v5 = 0;
  }

LABEL_6:
  v9 = DefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134218242;
    v13 = v5;
    v14 = 2112;
    v15 = v1;
    _os_log_impl(&dword_1DF7C6000, v9, OS_LOG_TYPE_DEFAULT, "Supported compatibility version = %ld in file: %@", &v12, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

id DDSReadSupportedPriorityAssetSpecifiersFromFile(void *a1)
{
  v1 = MEMORY[0x1E695DFA8];
  v2 = a1;
  v3 = [v1 set];
  v4 = [@"/System/Library/LinguisticData" stringByAppendingPathComponent:v2];

  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v5 fileExistsAtPath:v4];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v4 options:1 error:0];
    if (v7)
    {
      v8 = [MEMORY[0x1E696AE40] propertyListWithData:v7 options:0 format:0 error:0];
      v9 = [v8 objectForKey:@"MobileAssetProperties"];
      v10 = [v9 objectForKey:@"PriorityAssetSpecifiers"];
      if (v10)
      {
        [v3 addObjectsFromArray:v10];
      }
    }
  }

  return v3;
}

void sub_1DF7CC4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF7CCCC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *assetUUIDWithLocalURL(void *a1)
{
  v1 = [a1 pathComponents];
  if ([v1 count] < 2)
  {
    v2 = &stru_1F5ABCB80;
  }

  else
  {
    v2 = [v1 objectAtIndexedSubscript:{objc_msgSend(v1, "count") - 2}];
  }

  return v2;
}

__CFString *uniqueIdentifierWithAttributes(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 objectForKey:@"LinguisticAssetType"];
  if (v2 || ([v1 objectForKey:@"AssetType"], (v2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = v2;
    v4 = [&stru_1F5ABCB80 stringByAppendingString:v2];
  }

  else
  {
    v4 = &stru_1F5ABCB80;
  }

  v5 = [v1 objectForKey:@"AssetLocale"];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v5, v4];

    v4 = v6;
  }

  v7 = [v1 objectForKey:@"AssetRegion"];
  if (v7)
  {
    v19 = v5;
    v20 = v1;
    v8 = [MEMORY[0x1E696AD60] string];
    [v8 appendString:@"{ "];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [v7 allKeys];
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = [v7 objectForKeyedSubscript:v14];
          [v8 appendFormat:@"%@ : %@, ", v14, v15];
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    [v8 appendString:@"}"];
    v16 = [(__CFString *)v4 stringByAppendingFormat:@"-%@", v8];

    v4 = v16;
    v5 = v19;
    v1 = v20;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v4;
}

__CFString *shortNameWithAttributes(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKey:@"LinguisticAssetType"];
  if (v2 || ([v1 objectForKey:@"AssetType"], (v2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = v2;
    v4 = [&stru_1F5ABCB80 stringByAppendingString:v2];
  }

  else
  {
    v4 = &stru_1F5ABCB80;
  }

  v5 = [v1 objectForKey:@"AssetLocale"];
  v6 = v5;
  if (v5)
  {
    v7 = [(__CFString *)v4 stringByAppendingFormat:@"-%@", v5];

    v4 = v7;
  }

  return v4;
}

void sub_1DF7D0FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

const __CFString *DDSGetPreferenceIntForKey(const __CFString *result)
{
  if (result)
  {
    return CFPreferencesGetAppIntegerValue(result, @"com.apple.DataDeliveryServices", 0);
  }

  return result;
}

__CFString *DDSGetPreferenceObjectForKey(__CFString *a1)
{
  if (a1)
  {
    a1 = CFPreferencesCopyAppValue(a1, @"com.apple.DataDeliveryServices");
    v1 = vars8;
  }

  return a1;
}

const __CFString *DDSSetPreferenceObjectForKey(const __CFString *result, const void *a2)
{
  if (result)
  {
    CFPreferencesSetAppValue(result, a2, @"com.apple.DataDeliveryServices");

    return CFPreferencesAppSynchronize(@"com.apple.DataDeliveryServices");
  }

  return result;
}

void sub_1DF7D209C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF7D2278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __QueryLog_block_invoke()
{
  QueryLog_logFacility = os_log_create("com.apple.DataDeliveryServices", "Query");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __UpdateLog_block_invoke()
{
  UpdateLog_logFacility = os_log_create("com.apple.DataDeliveryServices", "Update");

  return MEMORY[0x1EEE66BB8]();
}

id AutoAssetLog()
{
  if (AutoAssetLog_onceToken != -1)
  {
    AutoAssetLog_cold_1();
  }

  v1 = AutoAssetLog_logFacility;

  return v1;
}

uint64_t __AutoAssetLog_block_invoke()
{
  AutoAssetLog_logFacility = os_log_create("com.apple.DataDeliveryServices", "AutoAsset");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1DF7D74A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void assetUpdatedNotificationCallback(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = DefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v7;
    _os_log_impl(&dword_1DF7C6000, v8, OS_LOG_TYPE_DEFAULT, "User info in callback: %@", buf, 0xCu);
  }

  v9 = a3;
  v10 = [v9 stringByReplacingOccurrencesOfString:@".dds.assets-updated" withString:&stru_1F5ABCB80];
  if (a2)
  {
    v11 = a2;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = [v11 autoAssetTypes];
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v13)
    {
      v14 = v13;
      v22 = v10;
      v15 = *v24;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v23 + 1) + 8 * i);
          v18 = [MEMORY[0x1E69B1900] notifyRegistrationName:@"ASSET_VERSION_DOWNLOADED" forAssetType:{v17, v22}];
          if ([v18 isEqualToString:v9])
          {
            v10 = v17;

            goto LABEL_14;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }

      v10 = v22;
    }

LABEL_14:

    v19 = DefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = v9;
      v29 = 2112;
      v30 = v10;
      _os_log_impl(&dword_1DF7C6000, v19, OS_LOG_TYPE_DEFAULT, "Observed asset change notification: %@, type: %@", buf, 0x16u);
    }

    v20 = [v11 delegate];
    [v20 serverDidUpdateAssetsWithType:v10];
  }

  else
  {
    v11 = DefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF7C6000, v11, OS_LOG_TYPE_DEFAULT, "Unexpected nil AssetObserver in CFNotification callback", buf, 2u);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

void sub_1DF7DB348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1DF7DE490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF7DE638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF7DED2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1DF7DF184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF7DF784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF7DFF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF7E04A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DF7E05EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DF7E1588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v10 - 56));
  _Unwind_Resume(a1);
}

void sub_1DF7E41C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF7E53CC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1DF7E5C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1DF7E637C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1DF7E7D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1DF7E81C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose((v31 - 160), 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}