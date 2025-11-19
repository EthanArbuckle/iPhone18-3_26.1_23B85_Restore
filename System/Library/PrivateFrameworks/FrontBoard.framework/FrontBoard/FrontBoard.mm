id _descriptionForObject(void *a1)
{
  v1 = a1;
  v2 = FBLogAppDataStore();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);

  if (v3)
  {
    v4 = v1;
    if (([v4 isNSNumber] & 1) != 0 || (objc_msgSend(v4, "isNSDate") & 1) != 0 || *MEMORY[0x1E695E738] == v4)
    {
      v5 = _publicDescriptionForObject(v4);
    }

    else
    {
      if ([v4 isNSString])
      {
        v8 = MEMORY[0x1E696AEC0];
        v9 = [v4 description];
        v6 = [v8 stringWithFormat:@"<NSString: %p %@>", v4, v9];;
LABEL_18:

        goto LABEL_5;
      }

      if (![v4 isNSData])
      {
        if (!v4)
        {
          v6 = 0;
          goto LABEL_5;
        }

        v10 = MEMORY[0x1E696AEC0];
        v9 = NSStringFromClass([v4 classForCoder]);
        v11 = [v4 description];
        v6 = [v10 stringWithFormat:@"<%@: %p %@>", v9, v4, v11];;

        goto LABEL_18;
      }

      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<NSData: %p length = %lu>", v4, objc_msgSend(v4, "length")];;
    }

    v6 = v5;
LABEL_5:

    goto LABEL_7;
  }

  v6 = _publicDescriptionForObject(v1);
LABEL_7:

  return v6;
}

__CFString *_publicDescriptionForObject(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (*MEMORY[0x1E695E738] == v1)
  {
    v6 = @"<null>";
    goto LABEL_16;
  }

  if (([v1 isNSNumber] & 1) != 0 || objc_msgSend(v2, "isNSDate"))
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = NSStringFromClass([v2 classForCoder]);
    v5 = [v2 description];
    v6 = [v3 stringWithFormat:@"<%@ %@>", v4, v5];;

LABEL_5:
    goto LABEL_16;
  }

  if ([v2 isNSString])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<NSString; length = %lu>", objc_msgSend(v2, "length")];
    v6 = LABEL_15:;
    goto LABEL_16;
  }

  if ([v2 isNSData])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<NSData; length = %lu>", objc_msgSend(v2, "length")];
    goto LABEL_15;
  }

  if ([v2 isNSArray])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<NSArray; count = %lu>", objc_msgSend(v2, "count")];
    goto LABEL_15;
  }

  if ([v2 isNSDictionary])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"<NSDictionary; count = %lu>", objc_msgSend(v2, "count")];
    goto LABEL_15;
  }

  if (v2)
  {
    v8 = MEMORY[0x1E696AEC0];
    v4 = NSStringFromClass([v2 classForCoder]);
    v6 = [v8 stringWithFormat:@"<%@>", v4];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_16:

  return v6;
}

id FBLogProcess()
{
  if (FBLogProcess_onceToken != -1)
  {
    FBLogProcess_cold_1();
  }

  v1 = FBLogProcess___logObj;

  return v1;
}

id FBLogProcessWorkspace()
{
  if (FBLogProcessWorkspace_onceToken != -1)
  {
    FBLogProcessWorkspace_cold_1();
  }

  v1 = FBLogProcessWorkspace___logObj;

  return v1;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &buf, 0x3Au);
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &buf, 0x3Au);
}

uint64_t OUTLINED_FUNCTION_8()
{

  return objc_opt_class();
}

uint64_t OUTLINED_FUNCTION_12()
{

  return objc_opt_class();
}

void OUTLINED_FUNCTION_3_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x3Au);
}

void OUTLINED_FUNCTION_2_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

__CFString *FBProcessLaunchIntentDescription(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E783B6C8[a1];
  }
}

id FBLogTransaction()
{
  if (FBLogTransaction_onceToken != -1)
  {
    FBLogTransaction_cold_1();
  }

  v1 = FBLogTransaction___logObj;

  return v1;
}

uint64_t OUTLINED_FUNCTION_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 countByEnumeratingWithState:a3 objects:a4 count:16];
}

void OUTLINED_FUNCTION_11_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

__CFString *NSStringFromFBProcessTaskState(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E783D170[a1];
  }
}

void OUTLINED_FUNCTION_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x3Au);
}

void OUTLINED_FUNCTION_3_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

__CFString *NSStringFromFBProcessVisibility(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E783D190[a1];
  }
}

id FBSceneIdleEventQueue()
{
  if (FBSceneIdleEventQueue_onceToken != -1)
  {
    FBSceneIdleEventQueue_cold_1();
  }

  v1 = FBSceneIdleEventQueue___IdleEventQueue;

  return v1;
}

id NSStringFromFBWorkspaceState(int a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = NSStringFromFBWorkspaceActivity(a1);
  v4 = NSStringFromFBWorkspaceProcessRole(BYTE1(a1));
  v5 = [v2 stringWithFormat:@"%@-%@[%u]", v3, v4, BYTE2(a1)];

  return v5;
}

id NSStringFromFBWorkspaceProcessRole(uint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown %i)", a1];
  }

  else
  {
    v2 = *(&off_1E783D7D0 + a1);
  }

  return v2;
}

uint64_t OUTLINED_FUNCTION_6_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 40);
  return result;
}

void OUTLINED_FUNCTION_6_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

uint64_t OUTLINED_FUNCTION_5(void *a1, const char *a2)
{

  return [a1 classForCoder];
}

id FBAnalyticsLogHangTracerEvent(void *a1, uint64_t a2)
{
  v34[3] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [v3 bundleIdentifier];
  if (v4)
  {
    v5 = [v3 identity];
    v6 = [v5 isEmbeddedApplication];

    if (v6)
    {
      v7 = objc_getAssociatedObject(v3, &FBAnalyticsLogHangTracerEvent___FBAnalyticsHangTracerID);
      AppIdentifier = [v7 unsignedLongLongValue];

      if (!AppIdentifier)
      {
        [v4 UTF8String];
        AppIdentifier = HTAppActivationGenerateAppIdentifier();
        v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:AppIdentifier];
        objc_setAssociatedObject(v3, &FBAnalyticsLogHangTracerEvent___FBAnalyticsHangTracerID, v9, 1);
      }

      switch(a2)
      {
        case 1:
          v27 = 3;
          v10 = 1;
          goto LABEL_12;
        case 2:
          v27 = 5;
          v10 = 1;
LABEL_12:
          v33[0] = *MEMORY[0x1E69A2AF8];
          v12 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "pid")}];
          v13 = *MEMORY[0x1E69A2AE0];
          v34[0] = v12;
          v34[1] = v4;
          v14 = *MEMORY[0x1E69A2B00];
          v33[1] = v13;
          v33[2] = v14;
          v15 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "isForeground")}];
          v34[2] = v15;
          v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:3];

          if (a2 == 1)
          {
            HTAppActivationEvent();
LABEL_21:
            v22 = HTAppActivationEvent();
            if (v22)
            {
              v23 = v10;
            }

            else
            {
              v23 = 0;
            }

            if (v23 == 1)
            {
              v24 = v22;
              v28[0] = MEMORY[0x1E69E9820];
              v28[1] = 3221225472;
              v28[2] = __FBAnalyticsLogHangTracerEvent_block_invoke;
              v28[3] = &unk_1E783B618;
              v29 = v16;
              v30 = v24;
              v31 = AppIdentifier;
              v32 = v27;
              v11 = MEMORY[0x1AC572E40](v28);
            }

            else
            {
              v11 = 0;
            }

            goto LABEL_28;
          }

          if (a2 != 3)
          {
            goto LABEL_21;
          }

          v17 = [v3 exitContext];
          v18 = [v17 exitReason];
          if (v18 == 16)
          {
            v19 = [v16 mutableCopy];
            [v19 setObject:*MEMORY[0x1E69A2AF0] forKey:&unk_1F1C10948];
          }

          else
          {
            if (v18 != 2)
            {
LABEL_20:

              goto LABEL_21;
            }

            v19 = [v16 mutableCopy];
            v20 = *MEMORY[0x1E69A2AF0];
            v21 = [MEMORY[0x1E696AD98] numberWithInt:*MEMORY[0x1E69A2AD8]];
            [v19 setObject:v20 forKey:v21];
          }

          v16 = v19;
          goto LABEL_20;
        case 3:
          v10 = 0;
          v27 = 0;
          goto LABEL_12;
      }
    }
  }

  v11 = 0;
LABEL_28:

  v25 = *MEMORY[0x1E69E9840];

  return v11;
}

__CFString *NSStringFromProcessWatchdogEvent(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(invalid - %d)", a1];
  }

  else
  {
    v2 = off_1E783B828[a1];
  }

  return v2;
}

void OUTLINED_FUNCTION_16(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_16_1()
{
  v2 = *(v0 + 3776);

  return objc_opt_class();
}

id FBLogProcessScene()
{
  if (FBLogProcessScene_onceToken != -1)
  {
    FBLogProcessScene_cold_1();
  }

  v1 = FBLogProcessScene___logObj;

  return v1;
}

uint64_t FBWorkspaceStateCombine(int a1, int a2)
{
  v2 = a1;
  if (a1 <= a2)
  {
    v2 = a2;
  }

  v3 = BYTE1(a1);
  if (BYTE1(a1) <= BYTE1(a2))
  {
    v3 = BYTE1(a2);
  }

  v4 = BYTE2(a1);
  if (BYTE2(a1) <= BYTE2(a2))
  {
    v4 = BYTE2(a2);
  }

  return v2 | (v3 << 8) | (v4 << 16);
}

uint64_t FBSceneLifecycleStateForSettings(void *a1)
{
  if (a1)
  {
    if ([a1 isForeground])
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1AC572E40](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1AC572E40](*(a2 + 40));
  *(a1 + 40) = result;
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

__CFString *NSStringFromFBWatchdogBehavior(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnknownWatchdogBehavior (%ld)", a1];
  }

  else
  {
    v2 = off_1E783CBB0[a1];
  }

  return v2;
}

id FBLogScene()
{
  if (FBLogScene_onceToken != -1)
  {
    FBLogScene_cold_1();
  }

  v1 = FBLogScene___logObj;

  return v1;
}

void OUTLINED_FUNCTION_4_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x26u);
}

void OUTLINED_FUNCTION_4_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

__CFString *NSStringFromFBSceneContentState(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%li)", a1];
  }

  else
  {
    v2 = off_1E783D5D8[a1];
  }

  return v2;
}

__CFString *FBSceneLifecycleStateDescription(unsigned int a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(Unknown:%li)", a1];
  }

  else
  {
    v2 = off_1E783C348[a1];
  }

  return v2;
}

void __FBLogProcessWorkspace_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E699F810], "ProcessWorkspace");
  v1 = FBLogProcessWorkspace___logObj;
  FBLogProcessWorkspace___logObj = v0;
}

__CFString *NSStringFromFBWorkspaceDomainSelfAssertRuntime(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown(%i)", a1];
  }

  else
  {
    v2 = off_1E783BF28[a1];
  }

  return v2;
}

void OUTLINED_FUNCTION_24(uint64_t a1@<X0>, NSObject *a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  a5 = v10;
  a6 = v9;
  a7 = a1;
  a8 = v8;

  dispatch_async_and_wait(a2, &a3);
}

void sub_1A89E6C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __FBLogProcess_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E699F810], "Process");
  v1 = FBLogProcess___logObj;
  FBLogProcess___logObj = v0;
}

id FBSystemAppBundleID()
{
  if (FBSystemAppBundleID_onceToken != -1)
  {
    FBSystemAppBundleID_cold_1();
  }

  v1 = FBSystemAppBundleID___BundleID;

  return v1;
}

void FBOpenAppSystemServiceExecuteCallOut(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v13 = v5;
  if (v5)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v5 = v13;
    if ((isKindOfClass & 1) == 0)
    {
      FBOpenAppSystemServiceExecuteCallOut_cold_1(v13);
    }
  }

  if (!v4)
  {
    FBOpenAppSystemServiceExecuteCallOut_cold_5();
  }

  v7 = [MEMORY[0x1E696AF00] currentThread];
  v8 = [v7 threadDictionary];

  if (!v8)
  {
    FBOpenAppSystemServiceExecuteCallOut_cold_4();
  }

  v9 = [v8 objectForKey:@"FBOpenAppSystemServiceInstance"];

  if (v9)
  {
    FBOpenAppSystemServiceExecuteCallOut_cold_2();
  }

  if (v13)
  {
    [v8 setObject:v13 forKey:@"FBOpenAppSystemServiceInstance"];
    v10 = objc_autoreleasePoolPush();
    v4[2](v4);
    objc_autoreleasePoolPop(v10);
    [v8 removeObjectForKey:@"FBOpenAppSystemServiceInstance"];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v4[2](v4);
    objc_autoreleasePoolPop(v11);
  }

  v12 = [v8 objectForKey:@"FBOpenAppSystemServiceInstance"];

  if (v12)
  {
    FBOpenAppSystemServiceExecuteCallOut_cold_3();
  }
}

__CFString *_FBSceneActionToString(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(invalid - %d)", a1];
  }

  else
  {
    v2 = off_1E783C6E0[a1];
  }

  return v2;
}

uint64_t UIKitLibraryCore()
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = UIKitLibraryCore_frameworkLibrary;
  v6 = UIKitLibraryCore_frameworkLibrary;
  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E783D800;
    v8 = *off_1E783D810;
    v9 = 0;
    v4[3] = _sl_dlopen();
    UIKitLibraryCore_frameworkLibrary = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_1A89E8AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getUIWindowClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getUIWindowClass_softClass;
  v6 = getUIWindowClass_softClass;
  if (!getUIWindowClass_softClass)
  {
    UIKitLibraryCore();
    v4[3] = objc_getClass("UIWindow");
    getUIWindowClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1A89E8BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A89E8F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_9()
{

  return objc_opt_class();
}

uint64_t OUTLINED_FUNCTION_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{

  return [v18 countByEnumeratingWithState:&a9 objects:&a18 count:16];
}

__CFString *FBSceneLayerTypeDescription(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"(unknown)";
  }

  else
  {
    return off_1E783CB68[a1];
  }
}

void __FBSceneIdleEventQueue_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E698E6A8]);
  v1 = [v0 initWithName:@"SceneIdleEvents" onQueue:MEMORY[0x1E69E96A0]];
  v2 = FBSceneIdleEventQueue___IdleEventQueue;
  FBSceneIdleEventQueue___IdleEventQueue = v1;
}

void __FBLogScene_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E699F810], "Scene");
  v1 = FBLogScene___logObj;
  FBLogScene___logObj = v0;
}

id FBSceneErrorCreate(unint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = MEMORY[0x1E695DF90];
  v7 = a2;
  v8 = [v6 dictionary];
  v9 = NSStringFromFBSceneErrorCode(a1);
  [v8 setObject:v9 forKey:*MEMORY[0x1E698E5B8]];

  [v8 setObject:v7 forKey:*MEMORY[0x1E696A588]];
  if (v5)
  {
    [v8 setObject:v5 forKey:*MEMORY[0x1E696AA08]];
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"FBSceneErrorDomain" code:a1 userInfo:v8];

  return v10;
}

__CFString *NSStringFromFBSceneErrorCode(unint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown:%ld)", a1];
  }

  else
  {
    v2 = off_1E783C820[a1];
  }

  return v2;
}

void sub_1A89EB900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBLSBacklightClass_block_invoke(uint64_t a1)
{
  BacklightServicesLibrary();
  result = objc_getClass("BLSBacklight");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBLSBacklightClass_block_invoke_cold_1();
  }

  getBLSBacklightClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void BacklightServicesLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!BacklightServicesLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __BacklightServicesLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E783B198;
    v3 = 0;
    BacklightServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!BacklightServicesLibraryCore_frameworkLibrary)
  {
    BacklightServicesLibrary_cold_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x1E69E9840];
}

uint64_t __BacklightServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  BacklightServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getBLSRuntimeClass_block_invoke(uint64_t a1)
{
  BacklightServicesLibrary();
  result = objc_getClass("BLSRuntime");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBLSRuntimeClass_block_invoke_cold_1();
  }

  getBLSRuntimeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A89EDF68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location)
{
  objc_destroyWeak(&a33);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A89EE3A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A89EE8B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A89EFE84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t ManagedConfigurationLibraryCore()
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = ManagedConfigurationLibraryCore_frameworkLibrary;
  v6 = ManagedConfigurationLibraryCore_frameworkLibrary;
  if (!ManagedConfigurationLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E783B4D8;
    v8 = *off_1E783B4E8;
    v9 = 0;
    v4[3] = _sl_dlopen();
    ManagedConfigurationLibraryCore_frameworkLibrary = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_1A89F077C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __ManagedConfigurationLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  ManagedConfigurationLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ManagedConfigurationLibrary()
{
  v1 = 0;
  result = ManagedConfigurationLibraryCore();
  if (!result)
  {
    ManagedConfigurationLibrary_cold_1(&v1);
  }

  return result;
}

id getMCProfileConnectionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMCProfileConnectionClass_softClass;
  v7 = getMCProfileConnectionClass_softClass;
  if (!getMCProfileConnectionClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMCProfileConnectionClass_block_invoke;
    v3[3] = &unk_1E783B178;
    v3[4] = &v4;
    __getMCProfileConnectionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A89F0948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMCProfileConnectionClass_block_invoke(uint64_t a1)
{
  ManagedConfigurationLibrary();
  result = objc_getClass("MCProfileConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMCProfileConnectionClass_block_invoke_cold_1();
  }

  getMCProfileConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

__CFString *NSStringFromFBSystemShellState(unint64_t a1)
{
  if (a1 < 3)
  {
    return off_1E783B5C8[a1];
  }

  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexplained system shell state defined: %d", a1];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromFBSystemShellState_cold_1(v2);
  }

  [v2 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

void sub_1A89F1F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A89F2450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void FBAnalyticsLogWatchdogEvent(void *a1, void *a2, void *a3, void *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v7 && v8 && v10)
  {
    v12 = [v7 executablePath];
    v13 = [v7 bundleIdentifier];
    v14 = [v8 sceneSettings];

    if (v14)
    {
      v15 = [v8 sceneSettings];
      if ([v15 isForeground])
      {
        v16 = 2;
      }

      else
      {
        v16 = 1;
      }
    }

    else
    {
      v16 = 0;
    }

    v18 = [v8 event] - 1;
    if (v18 <= 3)
    {
      v19 = off_1E783B638[v18];
      if (v16)
      {
        if (v16 == 2)
        {
          v20 = @"com.apple.frontboard.watchdog-terminate.foreground.%@";
        }

        else
        {
          v20 = @"com.apple.frontboard.watchdog-terminate.background.%@";
        }

        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:v20, v19];
        ADClientAddValueForScalarKey();
      }

      if (v13)
      {
        v22 = FBLogWatchdog();
        if (os_signpost_enabled(v22))
        {
          *buf = 138543874;
          v31 = v13;
          v32 = 2114;
          v33 = v19;
          v34 = 2114;
          v35 = v12;
          _os_signpost_emit_with_name_impl(&dword_1A89DD000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "WatchdogKill", " enableTelemetry=YES BundleIdOverride=%{public, signpost.description:attribute}@ event=%{public, signpost.telemetry:string1}@ ExecutableURLKey=%{public, signpost.description:attribute}@", buf, 0x20u);
        }
      }
    }

    v25 = v12;
    v26 = v13;
    v27 = v8;
    v28 = v11;
    v29 = v9;
    v23 = v13;
    v17 = v12;
    AnalyticsSendEventLazy();
  }

  else
  {
    v17 = FBLogWatchdog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      FBAnalyticsLogWatchdogEvent_cold_1(v17);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

id __FBAnalyticsLogWatchdogEvent_block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [*(a1 + 32) lastPathComponent];
  [v2 bs_setSafeObject:v3 forKey:@"executableName"];

  [v2 bs_setSafeObject:*(a1 + 40) forKey:@"bundleIdentifier"];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 72)];
  [v2 bs_setSafeObject:v4 forKey:@"watchdogVisibility"];

  v5 = MEMORY[0x1E696AD98];
  v6 = [*(a1 + 48) event];
  if ((v6 - 1) >= 4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 numberWithInteger:v7];
  [v2 bs_setSafeObject:v8 forKey:@"watchdogEventType"];

  v9 = MEMORY[0x1E696AD98];
  v10 = [*(a1 + 56) taskState];
  if ((v10 - 1) >= 3)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v9 numberWithInteger:v11];
  [v2 bs_setSafeObject:v12 forKey:@"taskState"];

  v13 = MEMORY[0x1E696AD98];
  v14 = [*(a1 + 56) visibility];
  v15 = 0;
  if ((v14 - 1) <= 2)
  {
    v15 = qword_1A8A71EC8[v14 - 1];
  }

  v16 = [v13 numberWithInteger:v15];
  [v2 bs_setSafeObject:v16 forKey:@"visibility"];

  if ([*(a1 + 64) isResourceProvision])
  {
    v17 = *(a1 + 64);
    v18 = MEMORY[0x1E696AD98];
    v19 = [v17 type];
    if (v19 == 2)
    {
      v20 = 2;
    }

    else
    {
      v20 = v19 == 1;
    }

    v21 = [v18 numberWithInteger:v20];
    [v2 bs_setSafeObject:v21 forKey:@"resourceType"];
  }

  return v2;
}

void __FBAnalyticsLogHangTracerEvent_block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = v3;
    if (*(a1 + 40))
    {
      v10 = v3;
      v5 = [v3 mutableCopy];
      v6 = *MEMORY[0x1E69A2AE8];
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 40)];
      [v5 setObject:v6 forKey:v7];

      v4 = v5;
    }

    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v11 = v4;
    HTAppActivationEvent();
  }
}

void sub_1A89F6A14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *_FBSNSStringFromUBIssueType(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown - %ld)", a1];
  }

  else
  {
    v2 = off_1E783B928[a1];
  }

  return v2;
}

Class __getUBStuckServiceClass_block_invoke(uint64_t a1)
{
  UnblockClientLibrary();
  result = objc_getClass("UBStuckService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUBStuckServiceClass_block_invoke_cold_1();
  }

  getUBStuckServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void UnblockClientLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!UnblockClientLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __UnblockClientLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E783B8C8;
    v3 = 0;
    UnblockClientLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!UnblockClientLibraryCore_frameworkLibrary)
  {
    UnblockClientLibrary_cold_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x1E69E9840];
}

uint64_t __UnblockClientLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UnblockClientLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getUBUnblockClientClass_block_invoke(uint64_t a1)
{
  UnblockClientLibrary();
  result = objc_getClass("UBUnblockClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUBUnblockClientClass_block_invoke_cold_1();
  }

  getUBUnblockClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __FBSystemAppBundleID_block_invoke()
{
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v3 bundleIdentifier];
  v1 = [v0 copy];
  v2 = FBSystemAppBundleID___BundleID;
  FBSystemAppBundleID___BundleID = v1;
}

id FBFrameworkBundle()
{
  if (FBFrameworkBundle___once != -1)
  {
    FBFrameworkBundle_cold_1();
  }

  v1 = FBFrameworkBundle___bundle;

  return v1;
}

void __FBFrameworkBundle_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v1 = FBFrameworkBundle___bundle;
  FBFrameworkBundle___bundle = v0;
}

void __FB_REPORT_MAIN_THREAD_VIOLATION__(int a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = FBLogCommon();
  v5 = v4;
  if (a1)
  {
    v6 = OS_LOG_TYPE_FAULT;
  }

  else
  {
    v6 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(v4, v6))
  {
    v8 = 136446210;
    v9 = a2;
    _os_log_impl(&dword_1A89DD000, v5, v6, "Use of SPI %{public}s is restricted to the main thread.", &v8, 0xCu);
  }

  if ((a1 & 1) == 0)
  {
    __FB_REPORT_MAIN_THREAD_VIOLATION___cold_1();
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1A89FA33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getNFHardwareManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getNFHardwareManagerClass_softClass;
  v7 = getNFHardwareManagerClass_softClass;
  if (!getNFHardwareManagerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getNFHardwareManagerClass_block_invoke;
    v3[3] = &unk_1E783B178;
    v3[4] = &v4;
    __getNFHardwareManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A89FA4D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A89FA83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A89FB8B8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 224), 8);
  _Unwind_Resume(a1);
}

void *__getAKSEventsRegisterSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AppleKeyStoreLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AppleKeyStoreLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E783BD90;
    v7 = 0;
    AppleKeyStoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = AppleKeyStoreLibraryCore_frameworkLibrary;
  if (!AppleKeyStoreLibraryCore_frameworkLibrary)
  {
    __getAKSEventsRegisterSymbolLoc_block_invoke_cold_1(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "AKSEventsRegister");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAKSEventsRegisterSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AppleKeyStoreLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppleKeyStoreLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getNFHardwareManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!NearFieldLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __NearFieldLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E783BDA8;
    v6 = 0;
    NearFieldLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!NearFieldLibraryCore_frameworkLibrary)
  {
    __getNFHardwareManagerClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("NFHardwareManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getNFHardwareManagerClass_block_invoke_cold_1();
  }

  getNFHardwareManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __NearFieldLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  NearFieldLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getCBControllerLowPowerModeCompletionTimeoutSecondsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreBluetoothLibrary();
  result = dlsym(v2, "CBControllerLowPowerModeCompletionTimeoutSeconds");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCBControllerLowPowerModeCompletionTimeoutSecondsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreBluetoothLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CoreBluetoothLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CoreBluetoothLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E783BDC0;
    v5 = 0;
    CoreBluetoothLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreBluetoothLibraryCore_frameworkLibrary;
  if (!CoreBluetoothLibraryCore_frameworkLibrary)
  {
    CoreBluetoothLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __CoreBluetoothLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreBluetoothLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getCBControllerClass_block_invoke(uint64_t a1)
{
  CoreBluetoothLibrary();
  result = objc_getClass("CBController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCBControllerClass_block_invoke_cold_1();
  }

  getCBControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkNISystemShutdownCompletionTimeoutSecondsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NearbyInteractionLibrary();
  result = dlsym(v2, "kNISystemShutdownCompletionTimeoutSeconds");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkNISystemShutdownCompletionTimeoutSecondsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t NearbyInteractionLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!NearbyInteractionLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __NearbyInteractionLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E783BDD8;
    v5 = 0;
    NearbyInteractionLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = NearbyInteractionLibraryCore_frameworkLibrary;
  if (!NearbyInteractionLibraryCore_frameworkLibrary)
  {
    NearbyInteractionLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __NearbyInteractionLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  NearbyInteractionLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getNINotifySystemShutdownWithReasonSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NearbyInteractionLibrary();
  result = dlsym(v2, "NINotifySystemShutdownWithReason");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNINotifySystemShutdownWithReasonSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_0()
{

  return objc_opt_class();
}

void sub_1A8A05FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8A08338(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1A8A0DB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8A11450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id location)
{
  objc_destroyWeak((v42 + 32));
  objc_destroyWeak(&a28);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_17(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void sub_1A8A13630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose((v49 - 240), 8);
  _Unwind_Resume(a1);
}

void sub_1A8A141B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8A14D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8A15234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8A16980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8A17330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A8A17E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8A18074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8A18F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8A1A574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromFBWorkspaceSceneErrorCode(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown:%ld)", a1];
  }

  else
  {
    v2 = off_1E783C8F8[a1];
  }

  return v2;
}

id FBWorkspaceSceneErrorCreate(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = MEMORY[0x1E696ABC0];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __FBWorkspaceSceneErrorCreate_block_invoke;
  v16[3] = &unk_1E783C8D8;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = a1;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  v14 = [v10 bs_errorWithDomain:@"FBWorkspaceScene" code:a1 configuration:v16];

  return v14;
}

void __FBWorkspaceSceneErrorCreate_block_invoke(void *a1, void *a2)
{
  v3 = a1[7];
  v5 = a2;
  v4 = NSStringFromFBWorkspaceSceneErrorCode(v3);
  [v5 setCodeDescription:v4];

  [v5 setFailureDescription:a1[4]];
  [v5 setFailureReason:{@"%@", a1[5]}];
  [v5 setUnderlyingError:a1[6]];
}

void sub_1A8A1CDA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromFBSceneLayerTypeMask(char a1)
{
  v1 = (a1 & 0x1A);
  if (*&v1 == 26)
  {
    v2 = @"all";
  }

  else
  {
    v3 = [MEMORY[0x1E695DF70] array];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __NSStringFromFBSceneLayerTypeMask_block_invoke;
    v13 = &unk_1E783CB48;
    v4 = v3;
    v14 = v4;
    v5 = &v10;
    if (v1)
    {
      v6 = 0;
      v15 = 0;
      v7 = vcnt_s8(v1);
      v7.i16[0] = vaddlv_u8(v7);
      v8 = v7.i32[0];
      do
      {
        if (((1 << v6) & *&v1) != 0)
        {
          (v12)(v5);
          if (v15)
          {
            break;
          }

          --v8;
        }

        if (v6 > 0x3E)
        {
          break;
        }

        ++v6;
      }

      while (v8 > 0);
    }

    if ([v4 count])
    {
      v2 = [v4 componentsJoinedByString:{@", "}];
    }

    else
    {
      v2 = @"none";
    }
  }

  return v2;
}

uint64_t __NSStringFromFBSceneLayerTypeMask_block_invoke(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 <= 4 && ((1 << a3) & 0x1A) != 0)
  {
    v3 = *(result + 32);
    if (a3 - 1 > 3)
    {
      v4 = @"(unknown)";
    }

    else
    {
      v4 = off_1E783CB90[a3 - 1];
    }

    return [v3 addObject:v4];
  }

  return result;
}

uint64_t FBSceneLayerTypeMaskForType(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return qword_1A8A720C8[a1 - 1];
  }
}

BOOL FBSceneLayerTypeMaskContainsType(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) > 3)
  {
    v2 = 0;
  }

  else
  {
    v2 = qword_1A8A720C8[a2 - 1];
  }

  return (v2 & a1) != 0;
}

void sub_1A8A232E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromFBProcessExitReason(uint64_t a1)
{
  if (a1 <= 7)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return @"watchdog";
      }

      if (a1 == 4)
      {
        return @"crash";
      }
    }

    else
    {
      if (!a1)
      {
        return @"unknown";
      }

      if (a1 == 1)
      {
        return @"voluntary";
      }
    }
  }

  else if (a1 <= 31)
  {
    if (a1 == 8)
    {
      return @"signal";
    }

    if (a1 == 16)
    {
      return @"jetsam";
    }
  }

  else
  {
    switch(a1)
    {
      case 32:
        return @"fairplay";
      case 64:
        return @"launch-failed";
      case 128:
        return @"other";
    }
  }

  return @"(invalid)";
}

void _handleApplicationsRegisteredNotification(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a2;
  v7 = objc_opt_class();
  v8 = a5;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [v10 bs_safeArrayForKey:@"bundleIDs"];

  v12 = [v11 bs_objectsOfClass:objc_opt_class()];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = ___handleApplicationsRegisteredNotification_block_invoke;
  v15[3] = &unk_1E783B240;
  v16 = v6;
  v17 = v12;
  v13 = v12;
  v14 = v6;
  [v14 _performAfterDeferredWork:v15];
}

void sub_1A8A281F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *FBServiceClientAuthenticatorErrorCodeDescription(int __errnum)
{
  v3 = 0;
  if (__errnum > 12)
  {
    if (__errnum != 13 && __errnum != 22)
    {
LABEL_4:

      return v3;
    }

    goto LABEL_9;
  }

  if (__errnum)
  {
    if (__errnum != 3)
    {
      goto LABEL_4;
    }

LABEL_9:
    v3 = [MEMORY[0x1E696AEC0] stringWithCString:strerror(__errnum) encoding:4];

    return v3;
  }

  v3 = @"(none)";

  return v3;
}

void sub_1A8A2BEBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A8A2C9F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id FBLogSceneMutation()
{
  if (FBLogSceneMutation_onceToken != -1)
  {
    FBLogSceneMutation_cold_1();
  }

  v1 = FBLogSceneMutation___logObj;

  return v1;
}

void __FBLogSceneMutation_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E699F810], "SceneMutation");
  v1 = FBLogSceneMutation___logObj;
  FBLogSceneMutation___logObj = v0;
}

void __FBLogProcessScene_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E699F810], "ProcessScene");
  v1 = FBLogProcessScene___logObj;
  FBLogProcessScene___logObj = v0;
}

void __FBLogTransaction_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E699F810], "Transaction");
  v1 = FBLogTransaction___logObj;
  FBLogTransaction___logObj = v0;
}

void sub_1A8A32100(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_1A8A3CFE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id _pathForIdentifierAndBuffer(void *a1, int a2)
{
  v3 = a1;
  if (([v3 length] - 26) <= 0xFFFFFFFFFFFFFFE6)
  {
    _pathForIdentifierAndBuffer_cold_1(MEMORY[0x1E696AEC0], v3);
  }

  v4 = 1;
  if (a2)
  {
    v4 = 2;
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/FBW%d:%@", v4, v3];

  return v5;
}

void sub_1A8A40154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id FBSystemShellInitialize(void *a1)
{
  v48[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  BSSetMainThreadPriorityFixedForUI();
  v2 = objc_alloc(MEMORY[0x1E69C7548]);
  v3 = [MEMORY[0x1E69C7640] currentProcess];
  v4 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.frontboard" name:@"SystemShell-Initialize"];
  v48[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
  v6 = [v2 initWithExplanation:@"FBSystemShellInitialize" target:v3 attributes:v5];

  v41 = v6;
  [v6 acquireWithError:0];
  context = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x1E698F508] extendAutomaticBootstrapCompletion];
  v8 = objc_alloc_init(FBMutableSystemShellInitializationOptions);
  if (v1)
  {
    v1[2](v1, v8);
  }

  kdebug_trace();
  v9 = [FBSystemShell _createSingletonWithOptions:v8];
  v10 = 0;
  if ([(FBSystemShellInitializationOptions *)v8 initializeDisplayManager])
  {
    v10 = +[FBDisplayManager sharedInstance];
  }

  kdebug_trace();
  v11 = +[FBServiceFacilityServer sharedInstance];
  v12 = +[FBApplicationDataStoreRepositoryServer sharedInstance];
  if ([(FBSystemShellInitializationOptions *)v8 initializeDisplayManager])
  {
    v13 = +[FBMainDisplayLayoutPublisher sharedInstance];
  }

  v14 = +[FBSystemService sharedInstance];
  v15 = +[FBSystemAppProxyServiceServer sharedInstance];
  v16 = +[FBInterfaceOrientationService sharedInstance];
  v17 = [(FBSystemShellInitializationOptions *)v8 registerAdditionalServicesBlock];
  v18 = v17;
  if (v17)
  {
    (*(v17 + 16))(v17);
  }

  v19 = +[FBServiceFacilityServer sharedInstance];
  [v19 run];

  v20 = +[FBInterfaceOrientationService sharedInstance];
  [v20 initialize];

  v21 = +[FBServiceFacilityServer sharedInstance];
  [v21 noteMilestoneReached:*MEMORY[0x1E699FA08]];

  kdebug_trace();
  kdebug_trace();
  [v9 _startSystemShellService];
  kdebug_trace();
  kdebug_trace();
  v22 = [MEMORY[0x1E699FBC0] sharedInstance];
  [v22 startService];

  v23 = +[FBServiceFacilityServer sharedInstance];
  [v23 noteMilestoneReached:*MEMORY[0x1E699F9F8]];

  v24 = +[FBSceneManager sharedInstance];
  v25 = +[FBProcessManager sharedInstance];
  if ([(FBSystemShellInitializationOptions *)v8 initializeDisplayManager])
  {
    [v10 postBookendConnections];
  }

  kdebug_trace();
  kdebug_trace();
  v26 = +[FBServiceFacilityServer sharedInstance];
  [v26 noteMilestoneReached:*MEMORY[0x1E699FA00]];

  v27 = +[FBInterfaceOrientationService sharedInstance];
  [v27 startService];

  kdebug_trace();
  kdebug_trace();
  if ([(FBSystemShellInitializationOptions *)v8 resetDarkBootState])
  {
    v28 = objc_alloc_init(_FBDarkBootHelper);
    [(_FBDarkBootHelper *)v28 clearBootedDark];
  }

  if ([(FBSystemShellInitializationOptions *)v8 initializeDisplayManager])
  {
    v29 = +[FBMainDisplayLayoutPublisher sharedInstance];
    v30 = MEMORY[0x1E696AEC0];
    v31 = [MEMORY[0x1E696AAE8] mainBundle];
    v32 = [v31 bundleIdentifier];
    v33 = [v30 stringWithFormat:@"%@ Loading", v32];
    v34 = [v29 transitionAssertionWithReason:v33];
  }

  else
  {
    v34 = 0;
  }

  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __FBSystemShellInitialize_block_invoke;
  v43[3] = &unk_1E783B2D8;
  v35 = v9;
  v44 = v35;
  v45 = v7;
  v36 = v41;
  v46 = v36;
  v47 = v34;
  v37 = v34;
  v38 = v7;
  [v35 _addBlockToExecuteWhenReady:v43];
  [v35 _initializationComplete];
  if ([(FBSystemShellInitializationOptions *)v8 initializeReadyForInteraction])
  {
    [v35 readyForInteraction];
  }

  objc_autoreleasePoolPop(context);
  v39 = *MEMORY[0x1E69E9840];

  return v35;
}

void __FBSystemShellInitialize_block_invoke(uint64_t a1)
{
  v2 = +[FBServiceFacilityServer sharedInstance];
  [v2 noteMilestoneReached:*MEMORY[0x1E699FA10]];

  [*(a1 + 32) _informSystemShellServiceDidFinishLaunching];
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __FBSystemShellInitialize_block_invoke_2;
  v7 = &unk_1E783B240;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  dispatch_async(MEMORY[0x1E69E96A0], &v4);
  v3 = *(a1 + 56);
  if (v3)
  {
    [v3 invalidate];
  }
}

uint64_t __FBSystemShellInitialize_block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:*MEMORY[0x1E699FD48] object:0];

  [*(a1 + 32) invalidate];
  v3 = +[FBProcessManager sharedInstance];
  [v3 _noteShellInitializationComplete];

  v4 = *(a1 + 40);

  return [v4 invalidate];
}

id NSStringFromFBWorkspaceActivity(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown %i)", a1];
  }

  else
  {
    v2 = *(&off_1E783D7B0 + a1);
  }

  return v2;
}

uint64_t FBWorkspaceJetsamBandIsValid(unsigned int a1)
{
  result = 1;
  if (a1 > 0x28 || ((1 << a1) & 0x10E40100001) == 0)
  {
    v3 = a1 - 80;
    if (v3 > 0x15 || ((1 << v3) & 0x300401) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t FBWorkspaceStateCompare(int a1, int a2)
{
  v2 = 1;
  if (BYTE2(a1) <= BYTE2(a2))
  {
    v2 = -1;
  }

  if (BYTE2(a1) == BYTE2(a2))
  {
    v2 = 0;
  }

  v3 = 1;
  if (BYTE1(a1) <= BYTE1(a2))
  {
    v3 = -1;
  }

  if (BYTE1(a1) == BYTE1(a2))
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  v5 = 1;
  if (a1 <= a2)
  {
    v5 = -1;
  }

  if (a1 == a2)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

uint64_t __UIKitLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  UIKitLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

id getUIApplicationClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getUIApplicationClass_softClass;
  v6 = getUIApplicationClass_softClass;
  if (!getUIApplicationClass_softClass)
  {
    UIKitLibraryCore();
    v4[3] = objc_getClass("UIApplication");
    getUIApplicationClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1A8A41E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getUIApplicationClass_block_invoke(uint64_t a1)
{
  UIKitLibraryCore();
  result = objc_getClass("UIApplication");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIApplicationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getUIApplicationSceneSpecificationClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getUIApplicationSceneSpecificationClass_softClass;
  v6 = getUIApplicationSceneSpecificationClass_softClass;
  if (!getUIApplicationSceneSpecificationClass_softClass)
  {
    UIKitLibraryCore();
    v4[3] = objc_getClass("UIApplicationSceneSpecification");
    getUIApplicationSceneSpecificationClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1A8A41F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getUIApplicationSceneSpecificationClass_block_invoke(uint64_t a1)
{
  UIKitLibraryCore();
  result = objc_getClass("UIApplicationSceneSpecification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIApplicationSceneSpecificationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getUIApplicationSceneTransitionContextClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getUIApplicationSceneTransitionContextClass_softClass;
  v6 = getUIApplicationSceneTransitionContextClass_softClass;
  if (!getUIApplicationSceneTransitionContextClass_softClass)
  {
    UIKitLibraryCore();
    v4[3] = objc_getClass("UIApplicationSceneTransitionContext");
    getUIApplicationSceneTransitionContextClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1A8A420D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getUIApplicationSceneTransitionContextClass_block_invoke(uint64_t a1)
{
  UIKitLibraryCore();
  result = objc_getClass("UIApplicationSceneTransitionContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIApplicationSceneTransitionContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getUIWindowClass_block_invoke(uint64_t a1)
{
  UIKitLibraryCore();
  result = objc_getClass("UIWindow");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIWindowClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getBLSBacklightClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getBLSBacklightClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"FBMainDisplayLayoutPublisher.m" lineNumber:25 description:{@"Unable to find class %s", "BLSBacklight"}];

  __break(1u);
}

void BacklightServicesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *BacklightServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"FBMainDisplayLayoutPublisher.m" lineNumber:24 description:{@"%s", *a1}];

  __break(1u);
}

void __getBLSRuntimeClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getBLSRuntimeClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"FBMainDisplayLayoutPublisher.m" lineNumber:26 description:{@"Unable to find class %s", "BLSRuntime"}];

  __break(1u);
}

void ManagedConfigurationLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ManagedConfigurationLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"ManagedConfigurationSoftLinking.m" lineNumber:13 description:{@"%s", *a1}];

  __break(1u);
}

void __getMCProfileConnectionClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMCProfileConnectionClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"ManagedConfigurationSoftLinking.m" lineNumber:14 description:{@"Unable to find class %s", "MCProfileConnection"}];

  __break(1u);
}

void NSStringFromFBSystemShellState_cold_1(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull NSStringFromFBSystemShellState(FBSystemShellState)"];
  v4 = 138544130;
  v5 = v2;
  v6 = 2114;
  v7 = @"FBSystemShell.m";
  v8 = 1024;
  v9 = 39;
  v10 = 2114;
  v11 = a1;
  _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v4, 0x26u);

  v3 = *MEMORY[0x1E69E9840];
}

void __getUBStuckServiceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getUBStuckServiceClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"FBProcessWatchdog.m" lineNumber:20 description:{@"Unable to find class %s", "UBStuckService"}];

  __break(1u);
}

void UnblockClientLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *UnblockClientLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"FBProcessWatchdog.m" lineNumber:19 description:{@"%s", *a1}];

  __break(1u);
}

void __getUBUnblockClientClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getUBUnblockClientClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"FBProcessWatchdog.m" lineNumber:21 description:{@"Unable to find class %s", "UBUnblockClient"}];

  __break(1u);
}

void __FB_REPORT_MAIN_THREAD_VIOLATION___cold_1()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"soft"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void __FB_REPORT_MAIN_THREAD_VIOLATION__(BOOL, const char *)"}];
    *buf = 138544130;
    v3 = v1;
    v4 = 2114;
    v5 = @"FBBase.m";
    v6 = 1024;
    v7 = 33;
    v8 = 2114;
    v9 = v0;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void FBOpenAppSystemServiceExecuteCallOut_cold_1(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = [a1 classForCoder];
  if (!v2)
  {
    v2 = objc_opt_class();
  }

  v3 = NSStringFromClass(v2);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v1 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"instance", v3, v5];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void FBOpenAppSystemServiceExecuteCallOut(NSString *__strong, __strong dispatch_block_t)"}];
    v9 = 138544130;
    v10 = v7;
    v11 = 2114;
    v12 = @"FBSystemService.m";
    v13 = 1024;
    v14 = 106;
    v15 = 2114;
    v16 = v6;
    OUTLINED_FUNCTION_4_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v9);
  }

  [v6 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void FBOpenAppSystemServiceExecuteCallOut_cold_2()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FBCurrentOpenAppSystemServiceInstanceKey should be nil when not in a callout"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void FBOpenAppSystemServiceExecuteCallOut(NSString *__strong, __strong dispatch_block_t)"}];
    v3 = 138544130;
    v4 = v1;
    v5 = 2114;
    v6 = @"FBSystemService.m";
    v7 = 1024;
    v8 = 111;
    v9 = 2114;
    v10 = v0;
    OUTLINED_FUNCTION_4_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v3);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void FBOpenAppSystemServiceExecuteCallOut_cold_3()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"FBCurrentOpenAppSystemServiceInstanceKey should be nil when not in a callout"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void FBOpenAppSystemServiceExecuteCallOut(NSString *__strong, __strong dispatch_block_t)"}];
    v3 = 138544130;
    v4 = v1;
    v5 = 2114;
    v6 = @"FBSystemService.m";
    v7 = 1024;
    v8 = 121;
    v9 = 2114;
    v10 = v0;
    OUTLINED_FUNCTION_4_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v3);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void FBOpenAppSystemServiceExecuteCallOut_cold_4()
{
  v0 = MEMORY[0x1E696AEC0];
  v1 = [MEMORY[0x1E696AF00] currentThread];
  v2 = [v0 stringWithFormat:@"missing thread-local storage on %@", v1];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void FBOpenAppSystemServiceExecuteCallOut(NSString *__strong, __strong dispatch_block_t)"}];
    v5 = 138544130;
    v6 = v3;
    v7 = 2114;
    v8 = @"FBSystemService.m";
    v9 = 1024;
    v10 = 110;
    v11 = 2114;
    v12 = v2;
    OUTLINED_FUNCTION_4_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v5);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void FBOpenAppSystemServiceExecuteCallOut_cold_5()
{
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"block"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void FBOpenAppSystemServiceExecuteCallOut(NSString *__strong, __strong dispatch_block_t)"}];
    v3 = 138544130;
    v4 = v1;
    v5 = 2114;
    v6 = @"FBSystemService.m";
    v7 = 1024;
    v8 = 107;
    v9 = 2114;
    v10 = v0;
    OUTLINED_FUNCTION_4_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v2, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v3);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __getAKSEventsRegisterSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AppleKeyStoreLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"FBSystemService.m" lineNumber:54 description:{@"%s", *a1}];

  __break(1u);
}

void __getNFHardwareManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNFHardwareManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"FBSystemService.m" lineNumber:64 description:{@"Unable to find class %s", "NFHardwareManager"}];

  __break(1u);
}

void __getNFHardwareManagerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *NearFieldLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"FBSystemService.m" lineNumber:63 description:{@"%s", *a1}];

  __break(1u);
}

void CoreBluetoothLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreBluetoothLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"FBSystemService.m" lineNumber:68 description:{@"%s", *a1}];

  __break(1u);
}

void __getCBControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCBControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"FBSystemService.m" lineNumber:69 description:{@"Unable to find class %s", "CBController"}];

  __break(1u);
}

void NearbyInteractionLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *NearbyInteractionLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"FBSystemService.m" lineNumber:76 description:{@"%s", *a1}];

  __break(1u);
}

void _pathForIdentifierAndBuffer_cold_1(void *a1, uint64_t a2)
{
  v2 = [a1 stringWithFormat:@"improper length identifier : %@", a2];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString *_pathForIdentifierAndBuffer(NSString *__strong, BOOL)"}];
    *buf = 138544130;
    v5 = v3;
    v6 = 2114;
    v7 = @"FBWorkspaceConnectionsStateStore.m";
    v8 = 1024;
    v9 = 57;
    v10 = 2114;
    v11 = v2;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}