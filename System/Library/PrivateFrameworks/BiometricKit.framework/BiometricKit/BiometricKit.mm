id setError(id result, void *a2)
{
  if (a2)
  {
    result = [BKErrorHelper errorWithCode:result];
    *a2 = result;
  }

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

BOOL OUTLINED_FUNCTION_2_0@<W0>(NSObject *a1@<X8>)
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

BOOL OUTLINED_FUNCTION_2_1@<W0>(NSObject *a1@<X8>)
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

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x30u);
}

void OUTLINED_FUNCTION_3_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x30u);
}

uint64_t OUTLINED_FUNCTION_5@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 24) = a2;
  v3 = *(result + 7304);
  return result;
}

void OUTLINED_FUNCTION_10_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x30u);
}

void sub_1C82AEF70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 184));
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void _BKLogEventOrCode(uint64_t a1)
{
  if (_BKLogEventOrCode_onceToken != -1)
  {
    _BKLogEventOrCode_cold_1();
  }

  if (_BKLogEventOrCode_isDaemon == 1)
  {
    v2 = [NSClassFromString(&cfstr_Biometrickitev.isa) logger];
    [v2 logEventOrCode:a1];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___BKLogEventOrCode_block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    dispatch_async(_BKLogEventOrCode_queue, block);
  }
}

void sub_1C82AF5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

unint64_t absoluteToNanoseconds(uint64_t a1)
{
  v2 = dword_1EDADB1D4;
  if (!dword_1EDADB1D4)
  {
    if (mach_timebase_info(&sTimebaseInfo))
    {
      absoluteToNanoseconds_cold_1();
      v2 = 1;
    }

    else
    {
      v2 = dword_1EDADB1D4;
    }
  }

  return sTimebaseInfo * a1 / v2;
}

uint64_t isInternalBuild()
{
  if (isInternalBuild_onceToken != -1)
  {
    isInternalBuild_cold_1();
  }

  return isInternalBuild_isInternal;
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

unint64_t nanosecondsToAbsolute(uint64_t a1)
{
  if (!dword_1EDADB1D4)
  {
    mach_timebase_info(&sTimebaseInfo);
    if (mach_timebase_info(&sTimebaseInfo))
    {
      nanosecondsToAbsolute_cold_1();
    }
  }

  return dword_1EDADB1D4 * a1 / sTimebaseInfo;
}

uint64_t dictionaryGetInteger(void *a1, void *a2, uint64_t *a3)
{
  v5 = a1;
  v6 = a2;
  if (v6 && a3)
  {
    v7 = [v5 objectForKeyedSubscript:v6];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v7 integerValue];

        v7 = 0;
      }

      else
      {
        dictionaryGetInteger_cold_1(v7);
        v8 = 0;
        v7 = 258;
      }
    }

    else
    {
      v8 = *a3;
    }
  }

  else
  {
    v7 = 258;
    if (dictionaryGetInteger_cold_2(a3 == 0))
    {
      goto LABEL_8;
    }

    v8 = 0;
  }

  *a3 = v8;
LABEL_8:

  return v7;
}

uint64_t dictionaryGetBool(void *a1, void *a2, _BYTE *a3)
{
  v5 = a1;
  v6 = a2;
  if (v6 && a3)
  {
    v7 = [v5 objectForKeyedSubscript:v6];
    if (v7)
    {
      v8 = v7;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v8 BOOLValue];
        v10 = 0;
      }

      else
      {
        dictionaryGetBool_cold_1(&v12, &v13);
        v10 = v12;
        v9 = v13;
      }

      goto LABEL_9;
    }

    v10 = 0;
  }

  else
  {
    v10 = 258;
    if (dictionaryGetBool_cold_2(a3 == 0))
    {
      goto LABEL_10;
    }
  }

  v9 = 0;
LABEL_9:
  *a3 = v9;
LABEL_10:

  return v10;
}

uint64_t dictionaryGetDouble(void *a1, void *a2, uint64_t *a3)
{
  v5 = a1;
  v6 = a2;
  if (v6 && a3)
  {
    v7 = [v5 objectForKeyedSubscript:v6];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v7 doubleValue];
        v9 = v8;

        v7 = 0;
      }

      else
      {
        dictionaryGetDouble_cold_1(v7);
        v9 = 0;
        v7 = 258;
      }
    }

    else
    {
      v9 = *a3;
    }
  }

  else
  {
    v9 = 0;
    v7 = 258;
    if (dictionaryGetDouble_cold_2(a3 == 0))
    {
      goto LABEL_8;
    }
  }

  *a3 = v9;
LABEL_8:

  return v7;
}

__CFString *getUUIDString(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *uu = 0;
    v7 = 0;
    [v1 getUUIDBytes:uu];
    if (uuid_is_null(uu))
    {
      v3 = @"0";
    }

    else
    {
      v3 = [v2 UUIDString];
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

uint64_t isEphemeralMultiUser()
{
  if (isEphemeralMultiUser_onceToken != -1)
  {
    isEphemeralMultiUser_cold_1();
  }

  return isEphemeralMultiUser_ephemeralMultiUser;
}

uint64_t isTouchIDPlatformWithFailure(_BYTE *a1)
{
  *&v9[5] = *MEMORY[0x1E69E9840];
  if ((isTouchIDPlatformWithFailure_checked & 1) == 0)
  {
    v2 = MEMORY[0x1E69E9C10];
    if (__osLogTrace)
    {
      v3 = __osLogTrace;
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      *v9 = a1;
      _os_log_impl(&dword_1C82AD000, v3, OS_LOG_TYPE_DEFAULT, "isTouchIDPlatformWithFailure(%p)\n", &v8, 0xCu);
    }

    isTouchIDPlatformWithFailure_checked = 1;
    isTouchIDPlatformWithFailure_result = MGGetBoolAnswer();
    if (__osLogTrace)
    {
      v4 = __osLogTrace;
    }

    else
    {
      v4 = v2;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (a1)
      {
        v5 = *a1;
      }

      else
      {
        v5 = -1;
      }

      v8 = 67109376;
      v9[0] = isTouchIDPlatformWithFailure_result;
      LOWORD(v9[1]) = 1024;
      *(&v9[1] + 2) = v5;
      _os_log_impl(&dword_1C82AD000, v4, OS_LOG_TYPE_DEFAULT, "isTouchIDPlatformWithFailure -> %u, failure:%d\n", &v8, 0xEu);
    }
  }

  if (a1)
  {
    *a1 = 0;
  }

  result = isTouchIDPlatformWithFailure_result;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void OUTLINED_FUNCTION_3_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x30u);
}

uint64_t isFaceIDPlatform()
{
  if (isFaceIDPlatform_onceToken != -1)
  {
    isFaceIDPlatform_cold_1();
  }

  return isFaceIDPlatform_faceIDPlatform;
}

BiometricKitEnrollProgressInfo *GenerateEnrollProgressInfo(double *a1, int a2, void *a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (*a1 == -1)
  {
    GenerateEnrollProgressInfo_cold_2(&v44, buf);
    v9 = v44;
    v8 = *buf;
    goto LABEL_46;
  }

  v7 = objc_alloc_init(BiometricKitEnrollProgressInfo);
  v8 = v7;
  v9 = 0;
  v10 = *a1;
  if (*a1 <= 1)
  {
    if (v10)
    {
      if (v10 != 1)
      {
        goto LABEL_32;
      }

      [(BiometricKitEnrollProgressInfo *)v7 setMessage:1];
      v13 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 2)];
      [v6 setObject:v13 forKey:@"BKEPDNewComponentID"];

      v14 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 1)];
      [v6 setObject:v14 forKey:@"BKEPDNewNodeID"];
    }

    else
    {
      [(BiometricKitEnrollProgressInfo *)v7 setMessage:0];
    }

    v9 = 0;
  }

  else
  {
    switch(v10)
    {
      case 2:
        [(BiometricKitEnrollProgressInfo *)v7 setMessage:2];
        v15 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 2)];
        [v6 setObject:v15 forKey:@"BKEPDExtendedComponentID"];

        v16 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 1)];
        [v6 setObject:v16 forKey:@"BKEPDNewNodeID"];

LABEL_11:
        v9 = __makeCoordinates(a1 + 2);
        if (v9)
        {
          [v6 setObject:v9 forKey:@"BKEPDNewNodeCoordinates"];
        }

        break;
      case 3:
        [(BiometricKitEnrollProgressInfo *)v7 setMessage:3];
        v17 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 2)];
        [v6 setObject:v17 forKey:@"BKEPDResultComponentID"];

        v18 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 1)];
        [v6 setObject:v18 forKey:@"BKEPDNewNodeID"];

        v9 = __makeCoordinates(a1 + 2);
        if (v9)
        {
          [v6 setObject:v9 forKey:@"BKEPDNewNodeCoordinates"];
        }

        v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
        if (v19)
        {
          v21 = v19;
          v42 = a2;
          v43 = v5;
          if (*(a1 + 10) >= 1)
          {
            v22 = 0;
            v23 = a1 + 7;
            *&v20 = 136316162;
            v41 = v20;
            do
            {
              v24 = objc_alloc_init(BiometricKitEnrollProgressMergedComponent);
              v25 = v24;
              if (v24)
              {
                [(BiometricKitEnrollProgressMergedComponent *)v24 setComponentID:*(v23 - 2)];
                v26 = __makeCoordinates(v23);
                [(BiometricKitEnrollProgressMergedComponent *)v25 setTransformationCoordinates:v26];
              }

              else
              {
                if (__osLog)
                {
                  v27 = __osLog;
                }

                else
                {
                  v27 = MEMORY[0x1E69E9C10];
                }

                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  *buf = v41;
                  *&buf[4] = "result";
                  v46 = 2048;
                  v47 = 0;
                  v48 = 2080;
                  v49 = &unk_1C82F52EE;
                  v50 = 2080;
                  v51 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/BiometricKit/BiometricKitEnrollProgressInfo.m";
                  v52 = 1024;
                  v53 = 92;
                  _os_log_impl(&dword_1C82AD000, v27, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
                }
              }

              [v21 insertObject:v25 atIndex:{v22, v41}];

              ++v22;
              v23 += 4;
            }

            while (v22 < *(a1 + 10));
          }

          v28 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v21];

          if (v28)
          {
            [v6 setObject:v28 forKey:@"BKEPDMergedInComponents"];
          }

          a2 = v42;
          v5 = v43;
        }

        else
        {
          GenerateEnrollProgressInfo_cold_1();
        }

        break;
      case 4:
        [(BiometricKitEnrollProgressInfo *)v7 setMessage:4];
        v11 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 2)];
        [v6 setObject:v11 forKey:@"BKEPDExtendedComponentID"];

        v12 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 1)];
        [v6 setObject:v12 forKey:@"BKEPDNewNodeID"];

        goto LABEL_11;
    }
  }

LABEL_32:
  if (*(a1 + 2413) != -1)
  {
    v29 = [MEMORY[0x1E696AD98] numberWithInt:?];
    [v6 setObject:v29 forKey:@"BKEPDRemovedNodeID"];

    if (*(a1 + 2414) != -1)
    {
      v30 = [MEMORY[0x1E696AD98] numberWithInt:?];
      [v6 setObject:v30 forKey:@"BKEPDRemovedComponentID"];
    }
  }

  if (a1[1208] != -1.0)
  {
    v31 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [v6 setObject:v31 forKey:@"BKTDLargestCompArea"];
  }

  v32 = *(a1 + 4830);
  if (v32 != 0xFFFF)
  {
    v33 = [MEMORY[0x1E696AD98] numberWithDouble:v32];
    [v6 setObject:v33 forKey:@"BKTDLargestCompNodes"];
  }

  if (a1[1210] != -1.0)
  {
    v34 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [v6 setObject:v34 forKey:@"BKTDTotalArea"];
  }

  v35 = *(a1 + 4836);
  if (v35 != 0xFFFF)
  {
    v36 = [MEMORY[0x1E696AD98] numberWithDouble:v35];
    [v6 setObject:v36 forKey:@"BKTDTotalNodes"];
  }

  if (*(a1 + 2422) != -1)
  {
    v37 = [MEMORY[0x1E696AD98] numberWithInt:?];
    [v6 setObject:v37 forKey:@"BKEPDRedundantNode"];
  }

  v38 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v6];
  [(BiometricKitEnrollProgressInfo *)v8 setMessageDetails:v38];

  [(BiometricKitEnrollProgressInfo *)v8 setProgress:a2];
  [(BiometricKitEnrollProgressInfo *)v8 setCaptureImage:v5];
  [(BiometricKitEnrollProgressInfo *)v8 setRenderedImage:0];
  [(BiometricKitEnrollProgressInfo *)v8 setCurrentPrimaryComponentID:*(a1 + 2412)];
LABEL_46:

  v39 = *MEMORY[0x1E69E9840];

  return v8;
}

BiometricKitEnrollProgressCoordinates *__makeCoordinates(double *a1)
{
  v2 = objc_alloc_init(BiometricKitEnrollProgressCoordinates);
  v3 = v2;
  if (v2)
  {
    [(BiometricKitEnrollProgressCoordinates *)v2 setX:*a1];
    [(BiometricKitEnrollProgressCoordinates *)v3 setY:a1[1]];
    [(BiometricKitEnrollProgressCoordinates *)v3 setAngle:a1[2]];
  }

  else
  {
    __makeCoordinates_cold_1();
  }

  return v3;
}

id GenerateTemplateTopologyInfo()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v18 = v1;
  v3 = v2;
  v4 = v0;
  v19 = [MEMORY[0x1E695DF70] array];
  if (*v4 >= 1)
  {
    v5 = 0;
    v6 = (v4 + 7);
    do
    {
      v22 = 0;
      memset(&v21[16], 0, 480);
      *v21 = 0u;
      v7 = *(v4 + 8);
      v20 = *(v6 - 2);
      v8 = *(v6 - 2);
      v23 = v7;
      *v21 = v8;
      *&v21[8] = *v6;
      *&v21[24] = *(v6 + 2);
      v24 = -1;
      v28 = 0xBFF0000000000000;
      v27 = -1;
      v26 = 0xBFF0000000000000;
      v25 = -1;
      v29 = -1;
      v9 = GenerateEnrollProgressInfo(&v20, 255, *(v3 + 8 * v5));
      if (v9)
      {
        [v19 addObject:v9];
      }

      ++v5;
      v6 += 10;
    }

    while (v5 < *v4);
  }

  if (v18)
  {
    v10 = [MEMORY[0x1E695DF90] dictionary];
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:v4[1]];
    [v10 setObject:v11 forKey:@"BKTDLargestCompArea"];

    v12 = [MEMORY[0x1E696AD98] numberWithInt:*(v4 + 1)];
    [v10 setObject:v12 forKey:@"BKTDLargestCompNodes"];

    v13 = [MEMORY[0x1E696AD98] numberWithDouble:v4[3]];
    [v10 setObject:v13 forKey:@"BKTDTotalArea"];

    v14 = [MEMORY[0x1E696AD98] numberWithInt:*(v4 + 4)];
    [v10 setObject:v14 forKey:@"BKTDTotalNodes"];

    if (*(v4 + 9) != -1)
    {
      v15 = [MEMORY[0x1E696AD98] numberWithInt:?];
      [v10 setObject:v15 forKey:@"BKTemplateUpdated"];
    }

    v16 = v10;
    *v18 = v10;
  }

  return v19;
}

void sub_1C82B6884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B6A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B6B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B6CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B6E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B700C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B7190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B7330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B74C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B7648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B7E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B8074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B81E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B8374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B8554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B8734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B88F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B8AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B8CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1C82B8ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B9068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B92D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1C82B95C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B9730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B98B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B9A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B9BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B9D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82B9EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82BA224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_1C82BA418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82BA558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82BA6F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82BA864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82BA9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82BAAE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82BAC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82BAE48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82BB00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82BB1D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82BB3C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82BB59C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82BB780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82BBC88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82BBF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82BC0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82BC304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1C82BC524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1C82BC77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1C82BC9C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1C82BCC44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1C82BCE4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C82BD018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void BKLogCode(uint64_t a1, unsigned int a2)
{
  v3 = a1;
  v7 = *MEMORY[0x1E69E9840];
  if ((a1 - 15) <= 0xFFFFFFF1)
  {
    if (__osLog)
    {
      v4 = __osLog;
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6[0] = 67109120;
      v6[1] = v3;
      _os_log_impl(&dword_1C82AD000, v4, OS_LOG_TYPE_ERROR, "illegal class %d\n\n", v6, 8u);
    }

    v3 = 15;
  }

  _BKLogEventOrCode(a2 | (v3 << 32));
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1C82BFDD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_7_0(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return [a1 addObserver:v5 selector:a4 name:a5 object:0];
}

double ComponentSetInit(_OWORD *a1)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double ComponentSetRelease(int *a1)
{
  if (*a1 >= 1)
  {
    v2 = 0;
    do
    {
      free(*(*(a1 + 1) + 8 * v2++));
    }

    while (v2 < *a1);
  }

  free(*(a1 + 1));
  if (a1[5] >= 1)
  {
    v3 = 0;
    do
    {
      free(*(*(a1 + 5) + 8 * v3++));
    }

    while (v3 < a1[5]);
  }

  free(*(a1 + 5));
  result = 0.0;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  return result;
}

double ConvertVectorForGUI(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a1[2] + 1.57079633;
  *a2 = *a1 * 6.123234e-17 + 0.0 - v2;
  result = v3 + -1.57079633;
  a2[1] = *a1 + 0.0 + v2 * 6.123234e-17;
  a2[2] = result;
  return result;
}

uint64_t ComponentSetUpdate()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v3 = v0;
  v174 = *MEMORY[0x1E69E9840];
  memset(v159, 0, 480);
  memset(v158, 0, sizeof(v158));
  if (*(v0 + 56) == 1)
  {
    ComponentSetUpdate_cold_26();
LABEL_196:
    v103 = *buf;
LABEL_139:
    *(v3 + 56) = 1;
    goto LABEL_190;
  }

  v4 = v2;
  v5 = v1;
  v6 = v1[3];
  v7 = v1[4];
  ++*(v0 + 52);
  if (v2)
  {
    *(v2 + 40) = 0;
    *v2 = -1;
    *(v2 + 9656) = -1;
    *(v2 + 9648) = -1;
    *(v2 + 8) = -1;
  }

  if (!v1[23])
  {
    ComponentSetUpdate_cold_25();
    goto LABEL_196;
  }

  if (__TranslateNodePlacement(v1, v158))
  {
    ComponentSetUpdate_cold_1();
    goto LABEL_196;
  }

  *(v3 + 24) = v6;
  *(v3 + 25) = v7;
  if (v7 == -1)
  {
    goto LABEL_38;
  }

  if (v7 >= v5[2])
  {
    ComponentSetUpdate_cold_2(buf);
LABEL_200:
    v103 = *buf;
    goto LABEL_190;
  }

  if (v6 != v7)
  {
    ComponentSetUpdate_cold_3(buf);
    goto LABEL_200;
  }

  v8 = *v3;
  if (v8 < 1)
  {
LABEL_13:
    if (__osLog)
    {
      v13 = __osLog;
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v165 = "removedVertex";
      v166 = 2048;
      v167 = 0;
      v168 = 2080;
      v169 = &unk_1C82F52EE;
      v170 = 2080;
      v171 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/TouchID/nodevis.c";
      v172 = 1024;
      v173 = 609;
      _os_log_impl(&dword_1C82AD000, v13, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }
  }

  else
  {
    v9 = *(v3 + 1);
    v10 = v9;
    v11 = *v3;
    while (1)
    {
      v12 = *v10;
      if ((*v10)[13] == v6)
      {
        break;
      }

      ++v10;
      if (!--v11)
      {
        goto LABEL_13;
      }
    }

    if (v4)
    {
      *(v4 + 2413) = v12[12];
    }

    if (v12[14] == v6)
    {
      v14 = 0;
      do
      {
        v15 = *v9;
        if (*v9 != v12 && *(v15 + 28) == v6)
        {
          v16 = *(v15 + 26);
          if (v16 != -1 && (!v14 || *(v14 + 26) > v16))
          {
            v14 = *v9;
          }
        }

        ++v9;
        --v8;
      }

      while (v8);
      if (v14)
      {
        if (__RebaseComponent(v3, v12, v14))
        {
          ComponentSetUpdate_cold_4();
          goto LABEL_196;
        }

        if (*(*(*(v3 + 5) + 8 * v12[15]) + 26) <= 1)
        {
          ComponentSetUpdate_cold_5();
        }
      }

      else
      {
        v17 = v12[15];
        if (v4)
        {
          *(v4 + 2414) = v17;
        }

        v12[14] = -1;
        if (*(*(*(v3 + 5) + 8 * v17) + 26) != 1)
        {
          ComponentSetUpdate_cold_6();
        }
      }
    }

    v18 = *(*(v3 + 5) + 8 * v12[15]);
    --*(v18 + 26);
    v12[13] = -1;
  }

LABEL_38:
  if (v6 == -1)
  {
    ++v3[4];
    if (v4)
    {
      *v4 = 0;
    }

    goto LABEL_182;
  }

  if (v6 >= v5[2])
  {
    ComponentSetUpdate_cold_7(buf);
    goto LABEL_200;
  }

  if (*v3 == v3[1])
  {
    v19 = malloc_type_realloc(*(v3 + 1), 8 * *v3 + 128, 0x2004093837F09uLL);
    if (!v19)
    {
      ComponentSetUpdate_cold_22(buf);
      goto LABEL_209;
    }

    *(v3 + 1) = v19;
    v20 = &v19[8 * v3[1]];
    *(v20 + 6) = 0u;
    *(v20 + 7) = 0u;
    *(v20 + 4) = 0u;
    *(v20 + 5) = 0u;
    *(v20 + 2) = 0u;
    *(v20 + 3) = 0u;
    *v20 = 0u;
    *(v20 + 1) = 0u;
    v3[1] += 16;
  }

  v21 = v3[5];
  if (v21 == v3[6])
  {
    v22 = malloc_type_realloc(*(v3 + 5), 8 * v21 + 128, 0x2004093837F09uLL);
    if (!v22)
    {
      ComponentSetUpdate_cold_21(buf);
      goto LABEL_209;
    }

    *(v3 + 5) = v22;
    v23 = &v22[8 * v3[6]];
    *(v23 + 6) = 0u;
    *(v23 + 7) = 0u;
    *(v23 + 4) = 0u;
    *(v23 + 5) = 0u;
    *(v23 + 2) = 0u;
    *(v23 + 3) = 0u;
    *v23 = 0u;
    *(v23 + 1) = 0u;
    v3[6] += 16;
  }

  v24 = malloc_type_calloc(0x20uLL, 1uLL, 0x1000040E0EAB150uLL);
  if (!v24)
  {
    ComponentSetUpdate_cold_20();
    goto LABEL_209;
  }

  v25 = v24;
  v26 = *v3;
  *(*(v3 + 1) + 8 * v26) = v24;
  *(v24 + 12) = v26;
  v27 = (v26 + 1);
  *v3 = v27;
  v28 = &v158[2 * v6] + 1;
  v29 = *v28;
  *v24 = *v28;
  v30 = v28[1];
  v24[1] = v30;
  v31 = v28[2];
  v24[2] = v31;
  v32 = *(v28 + 12);
  *(v24 + 14) = v32;
  *(v24 + 13) = v6;
  if (v32 != v6)
  {
    *(v24 + 15) = -1;
    if (v26 < 1)
    {
      goto LABEL_61;
    }

    v38 = *(v3 + 1);
    while (1)
    {
      v39 = *v38;
      if (*(*v38 + 26) == v32)
      {
        break;
      }

      ++v38;
      if (!--v26)
      {
        goto LABEL_61;
      }
    }

    LODWORD(v36) = *(v39 + 30);
    *(v24 + 15) = *(v39 + 30);
    if ((v36 & 0x80000000) != 0)
    {
LABEL_61:
      ComponentSetUpdate_cold_8();
      goto LABEL_69;
    }

    v37 = 0;
LABEL_64:
    v40 = *(*(v3 + 5) + 8 * v36);
    ++*(v40 + 24);
    ++*(v40 + 26);
    if (v4)
    {
      *(v4 + 1) = *(v25 + 24);
      *(v4 + 2) = v36;
      v41 = *(v40 + 16);
      v42 = __sincos_stret(v41);
      v4[4] = v41 + *(v25 + 16);
      v43 = *(v25 + 8);
      v4[2] = *v40 + v42.__cosval * *v25 - v42.__sinval * v43;
      v4[3] = *(v40 + 8) + v42.__sinval * *v25 + v42.__cosval * v43;
      if (v37)
      {
        v44 = 1;
      }

      else
      {
        v44 = 2;
      }

      *v4 = v44;
    }

    goto LABEL_69;
  }

  if (SLOWORD(v158[0]) < 1)
  {
LABEL_53:
    *(v24 + 15) = v3[5];
    v35 = malloc_type_calloc(0x20uLL, 1uLL, 0x1000040F6D918ACuLL);
    v36 = *(v25 + 30);
    *(*(v3 + 5) + 8 * v36) = v35;
    if (*(*(v3 + 5) + 8 * v36))
    {
      ++v3[5];
      v37 = 1;
      goto LABEL_64;
    }

    ComponentSetUpdate_cold_19();
    goto LABEL_209;
  }

  v33 = 0;
  v34 = v159;
  while (v6 == v33 || *v34 != v6)
  {
    ++v33;
    v34 += 16;
    if (SLOWORD(v158[0]) == v33)
    {
      goto LABEL_53;
    }
  }

  if ((v26 & 0x80000000) != 0)
  {
LABEL_159:
    if (__osLog)
    {
      v127 = __osLog;
    }

    else
    {
      v127 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v165 = "v";
      v166 = 2048;
      v167 = 0;
      v168 = 2080;
      v169 = &unk_1C82F52EE;
      v170 = 2080;
      v171 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/TouchID/nodevis.c";
      v172 = 1024;
      v173 = 512;
      goto LABEL_164;
    }

    goto LABEL_69;
  }

  v123 = v33;
  v124 = *(v3 + 1);
  v125 = v124;
  v126 = v27;
  while (*(*v125 + 26) != v123)
  {
    ++v125;
    if (!--v126)
    {
      goto LABEL_159;
    }
  }

  v128 = *(*v125 + 28);
  do
  {
    v129 = *v124;
    if (*(*v124 + 26) == v128)
    {
      if (v128 == -1)
      {
        ComponentSetUpdate_cold_11();
        goto LABEL_69;
      }

      *(v24 + 15) = *(v129 + 30);
      if (fabs(v29) >= 0.1 || fabs(v30) >= 0.1 || vabdd_f64(v31 / 6.28318531, floor(v31 / 6.28318531)) >= 0.01)
      {
        ComponentSetUpdate_cold_9();
        goto LABEL_69;
      }

      v130 = &v158[2 * v128] + 1;
      v131 = *v130;
      v132 = v130[1];
      v133 = v130[2];
      v134 = __sincos_stret(v133);
      *v25 = -(v132 * v134.__sinval + v134.__cosval * v131);
      *(v25 + 8) = -(v132 * v134.__cosval + -v134.__sinval * v131);
      *(v25 + 16) = -v133;
      if (!__RebaseComponent(v3, v129, v25))
      {
        v37 = 0;
        LOWORD(v36) = *(v25 + 30);
        goto LABEL_64;
      }

      ComponentSetUpdate_cold_10();
LABEL_209:
      v103 = *buf;
      if (__osLog)
      {
        v145 = __osLog;
      }

      else
      {
        v145 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v145, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v165 = "!result";
        v166 = 2048;
        v167 = 0;
        v168 = 2080;
        v169 = &unk_1C82F52EE;
        v170 = 2080;
        v171 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/TouchID/nodevis.c";
        v172 = 1024;
        v173 = 921;
        _os_log_impl(&dword_1C82AD000, v145, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
      }

      goto LABEL_139;
    }

    ++v124;
    --v27;
  }

  while (v27);
  if (__osLog)
  {
    v127 = __osLog;
  }

  else
  {
    v127 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    v165 = "oldBaseVertex";
    v166 = 2048;
    v167 = 0;
    v168 = 2080;
    v169 = &unk_1C82F52EE;
    v170 = 2080;
    v171 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/TouchID/nodevis.c";
    v172 = 1024;
    v173 = 514;
LABEL_164:
    _os_log_impl(&dword_1C82AD000, v127, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
  }

LABEL_69:
  v45 = *v3;
  if (*v3 < 1)
  {
    goto LABEL_182;
  }

  v150 = v5;
  v46 = 0;
  v47 = 0;
  v153 = v4 + 6;
  v48 = 0.1;
  v49 = 6.28318531;
  v152 = vdupq_n_s64(0x3FB999999999999AuLL);
  while (2)
  {
    v50 = *(v3 + 1);
    v51 = v50[v46];
    v52 = *(v51 + 28);
    if (v52 != -1)
    {
      v155 = v50[v46];
      if (*(v51 + 26) == v52)
      {
        v53 = &v158[2 * v52] + 1;
        v54 = *(v53 + 12);
        if (v54 != v52)
        {
          v154 = v47;
          v55 = v45;
          v56 = *(v3 + 1);
          v57 = v45;
          while (1)
          {
            v58 = *v56;
            if (*(*v56 + 26) == v54)
            {
              break;
            }

            ++v56;
            if (!--v57)
            {
              v100 = MEMORY[0x1E69E9C10];
              if (__osLog)
              {
                v101 = __osLog;
              }

              else
              {
                v101 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
              {
                *buf = 136316162;
                v165 = "baseVertex";
                v166 = 2048;
                v167 = 0;
                v168 = 2080;
                v169 = &unk_1C82F52EE;
                v170 = 2080;
                v171 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/TouchID/nodevis.c";
                v172 = 1024;
                v173 = 741;
LABEL_132:
                _os_log_impl(&dword_1C82AD000, v101, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
                goto LABEL_133;
              }

              goto LABEL_133;
            }
          }

          v59 = *(v155 + 30);
          v157 = *(v58 + 30);
          if (v59 == *(v58 + 30))
          {
            ComponentSetUpdate_cold_17();
          }

          else
          {
            v60 = v4;
            v61 = v59;
            v62 = v59;
            v151 = v60;
            if (!v60)
            {
              goto LABEL_83;
            }

            v63 = *(v60 + 10);
            if (v63 >= 300)
            {
              ComponentSetUpdate_cold_13();
            }

            else
            {
              *(v60 + 10) = v63 + 1;
              if ((*v60 - 4) <= 0xFFFFFFFD)
              {
                ComponentSetUpdate_cold_12();
              }

              else
              {
                v64 = v49;
                v65 = v48;
                v66 = &v153[8 * v63];
                v156 = v66;
                *v60 = 3;
                *v66 = v62;
                *(v66 + 1) = v157;
                logb = *(v3 + 5);
                isa = logb[v157].isa;
                v68 = isa[2];
                v69 = __sincos_stret(v68);
                v70 = v53[1];
                v71 = v68 + v53[2];
                v72 = *isa + v69.__cosval * *v53 - v69.__sinval * v70;
                v146 = isa[1] + v69.__sinval * *v53 + v69.__cosval * v70;
                v73 = logb[v61].isa;
                v74 = *v73;
                v75 = v73[1];
                v76 = v73[2];
                v77 = __sincos_stret(v71);
                v156[1] = v72 + v77.__cosval * v74 - v77.__sinval * v75;
                v156[2] = v146 + v77.__sinval * v74 + v77.__cosval * v75;
                v156[3] = v71 + v76;
                v48 = v65;
                v49 = v64;
LABEL_83:
                if (fabs(*v155) >= v48 || fabs(*(v155 + 8)) >= v48 || vabdd_f64(*(v155 + 16) / v49, floor(*(v155 + 16) / v49)) >= 0.01)
                {
                  ComponentSetUpdate_cold_14();
                }

                else
                {
                  do
                  {
                    v78 = *v50;
                    if (*(*v50 + 30) == v61)
                    {
                      v79 = v53[2];
                      v80 = __sincos_stret(v79);
                      v81 = *(v78 + 8);
                      v82 = v79 + *(v78 + 16);
                      v83 = v53[1] + v80.__sinval * *v78 + v80.__cosval * v81;
                      *v78 = *v53 + v80.__cosval * *v78 - v80.__sinval * v81;
                      *(v78 + 8) = v83;
                      *(v78 + 16) = v82;
                      *(v78 + 28) = *(v58 + 28);
                    }

                    ++v50;
                    --v55;
                  }

                  while (v55);
                  v84 = vmovn_s64(vcgtq_f64(v152, vabdq_f64(*v155, *v53)));
                  if ((v84.i32[0] & v84.i32[1] & 1) != 0 && (v85 = vabdd_f64(*(v155 + 16), v53[2]) / v49, vabdd_f64(v85, floor(v85)) < 0.01))
                  {
                    v86 = 0;
                    do
                    {
                      v87 = *(*(v3 + 1) + 8 * v86);
                      if (*(v87 + 30) == v62)
                      {
                        v88 = *(v3 + 5);
                        v89 = *(v88 + 8 * v61);
                        v90 = *(v89 + 24);
                        if (v90 <= 0)
                        {
                          v93 = (__osLog ? __osLog : MEMORY[0x1E69E9C10]);
                          log = v93;
                          if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 136316162;
                            v165 = "set->components[replaceComponentIndex]->nodeCount > 0";
                            v166 = 2048;
                            v167 = 0;
                            v168 = 2080;
                            v169 = &unk_1C82F52EE;
                            v170 = 2080;
                            v171 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/TouchID/nodevis.c";
                            v172 = 1024;
                            v173 = 701;
                            _os_log_impl(&dword_1C82AD000, log, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
                            v88 = *(v3 + 5);
                            v89 = *(v88 + 8 * v61);
                            LOWORD(v90) = *(v89 + 24);
                          }
                        }

                        *(v89 + 24) = v90 - 1;
                        v91 = *(v88 + 8 * v157);
                        ++*(v91 + 24);
                        if (*(v87 + 26) != -1)
                        {
                          v92 = *(v89 + 26);
                          if (v92 <= 0)
                          {
                            v94 = (__osLog ? __osLog : MEMORY[0x1E69E9C10]);
                            loga = v94;
                            if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 136316162;
                              v165 = "set->components[replaceComponentIndex]->mapiNodeCount > 0";
                              v166 = 2048;
                              v167 = 0;
                              v168 = 2080;
                              v169 = &unk_1C82F52EE;
                              v170 = 2080;
                              v171 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/TouchID/nodevis.c";
                              v172 = 1024;
                              v173 = 706;
                              _os_log_impl(&dword_1C82AD000, loga, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
                              v95 = *(v3 + 5);
                              v89 = *(v95 + 8 * v61);
                              LOWORD(v92) = *(v89 + 26);
                              v91 = *(v95 + 8 * v157);
                            }
                          }

                          *(v89 + 26) = v92 - 1;
                          ++*(v91 + 26);
                        }

                        *(v87 + 30) = v157;
                        v45 = *v3;
                      }

                      ++v86;
                    }

                    while (v86 < v45);
                    v96 = *(*(v3 + 5) + 8 * v61);
                    if (*(v96 + 24))
                    {
                      if (__osLog)
                      {
                        v98 = __osLog;
                      }

                      else
                      {
                        v98 = MEMORY[0x1E69E9C10];
                      }

                      v97 = v154;
                      if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136316162;
                        v165 = "set->components[replaceComponentIndex]->nodeCount == 0";
                        v166 = 2048;
                        v167 = 0;
                        v168 = 2080;
                        v169 = &unk_1C82F52EE;
                        v170 = 2080;
                        v171 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/TouchID/nodevis.c";
                        v172 = 1024;
                        v173 = 713;
                        _os_log_impl(&dword_1C82AD000, v98, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
                        v96 = *(*(v3 + 5) + 8 * v61);
                      }
                    }

                    else
                    {
                      v97 = v154;
                    }

                    if (*(v96 + 26))
                    {
                      v99 = (__osLog ? __osLog : MEMORY[0x1E69E9C10]);
                      if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136316162;
                        v165 = "set->components[replaceComponentIndex]->mapiNodeCount == 0";
                        v166 = 2048;
                        v167 = 0;
                        v168 = 2080;
                        v169 = &unk_1C82F52EE;
                        v170 = 2080;
                        v171 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/TouchID/nodevis.c";
                        v172 = 1024;
                        v173 = 714;
                        _os_log_impl(&dword_1C82AD000, v99, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
                      }
                    }

                    v4 = v151;
                    if (*(v58 + 30) == *(v155 + 30))
                    {
                      v47 = v97 + 1;
                      v45 = *v3;
                      goto LABEL_115;
                    }

                    ComponentSetUpdate_cold_16();
                  }

                  else
                  {
                    ComponentSetUpdate_cold_15();
                  }
                }
              }
            }
          }

          v100 = MEMORY[0x1E69E9C10];
          if (__osLog)
          {
            v101 = __osLog;
          }

          else
          {
            v101 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v165 = "!result";
            v166 = 2048;
            v167 = 0;
            v168 = 2080;
            v169 = &unk_1C82F52EE;
            v170 = 2080;
            v171 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/TouchID/nodevis.c";
            v172 = 1024;
            v173 = 743;
            goto LABEL_132;
          }

LABEL_133:
          if (__osLog)
          {
            v102 = __osLog;
          }

          else
          {
            v102 = v100;
          }

          if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v165 = "!result";
            v166 = 2048;
            v167 = 0;
            v168 = 2080;
            v169 = &unk_1C82F52EE;
            v170 = 2080;
            v171 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/TouchID/nodevis.c";
            v172 = 1024;
            v173 = 926;
            _os_log_impl(&dword_1C82AD000, v102, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
          }

          v103 = 22;
          goto LABEL_139;
        }
      }
    }

LABEL_115:
    if (++v46 < v45)
    {
      continue;
    }

    break;
  }

  v5 = v150;
  if (v4)
  {
    if (v47)
    {
      v104 = *(v4 + 10);
      if (v104 >= 1)
      {
        v105 = 0;
        v106 = 0;
        v107 = 0;
        v108 = *(v4 + 2);
        v109 = v4 + 9;
        while (1)
        {
          v110 = v4;
          v111 = &v153[8 * v105];
          v112 = *(v111 + 1);
          v113 = v104;
          v114 = v109;
          if (v112 == v108)
          {
LABEL_150:
            v121 = v106;
          }

          else
          {
            while (v112 != *(v114 - 6))
            {
              v114 += 4;
              if (!--v113)
              {
                v100 = MEMORY[0x1E69E9C10];
                if ((v107 & 1) == 0)
                {
                  ComponentSetUpdate_cold_18();
                }

                goto LABEL_133;
              }
            }

            if (*(v114 - 5) == v108)
            {
              v115 = *v114;
              v116 = __sincos_stret(*v114);
              v117 = v111[2];
              v118 = v115 + v111[3];
              v119 = v111[1];
              v120 = *(v114 - 1) + v116.__sinval * v119 + v116.__cosval * v117;
              v111[1] = *(v114 - 2) + v116.__cosval * v119 - v116.__sinval * v117;
              v111[2] = v120;
              v111[3] = v118;
              *(v111 + 1) = v108;
              v107 = 1;
              goto LABEL_150;
            }

            v121 = 1;
          }

          v4 = v110;
          ++v105;
          v106 = v121;
          if (v105 == v104)
          {
            v105 = 0;
            v106 = 0;
            v122 = v107 & v121;
            v107 = 0;
            if ((v122 & 1) == 0)
            {
              break;
            }
          }
        }

        v100 = MEMORY[0x1E69E9C10];
        if (v121)
        {
          goto LABEL_133;
        }
      }
    }
  }

LABEL_182:
  if (__FindLargestComponent(v3, 1, v3 + 8))
  {
    ComponentSetUpdate_cold_23();
    goto LABEL_196;
  }

  if (__FindLargestComponent(v3, 0, v3 + 7))
  {
    ComponentSetUpdate_cold_24();
    goto LABEL_196;
  }

  if (v4)
  {
    *(v4 + 2412) = v3[8];
    v135 = v4[3];
    v136 = v4[4] + 1.57079633;
    v137 = v4[2];
    v4[2] = v137 * 6.123234e-17 + 0.0 - v135;
    v4[3] = v137 + 0.0 + v135 * 6.123234e-17;
    v4[4] = v136 + -1.57079633;
    v138 = *(v4 + 10);
    if (v138 >= 1)
    {
      v139 = v4 + 9;
      do
      {
        v140 = *(v139 - 1);
        v141 = *v139 + 1.57079633;
        v142 = *(v139 - 2);
        *(v139 - 2) = v142 * 6.123234e-17 + 0.0 - v140;
        *(v139 - 1) = v142 + 0.0 + v140 * 6.123234e-17;
        *v139 = v141 + -1.57079633;
        v139 += 4;
        --v138;
      }

      while (v138);
    }

    v103 = 0;
    *(v4 + 4830) = v160;
    *(v4 + 1208) = v161;
    *(v4 + 4836) = v162;
    *(v4 + 1210) = v163;
    *(v4 + 2422) = v5[1529] & 1;
  }

  else
  {
    v103 = 0;
  }

LABEL_190:
  v143 = *MEMORY[0x1E69E9840];
  return v103;
}

uint64_t __TranslateNodePlacement(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __TranslateNodePlacement_cold_4();
LABEL_29:
    result = v31;
    goto LABEL_24;
  }

  if (*a1 != 3060)
  {
    __TranslateNodePlacement_cold_1();
    goto LABEL_29;
  }

  if (*(a1 + 2) != 3)
  {
    __TranslateNodePlacement_cold_2();
    goto LABEL_29;
  }

  if (!a2)
  {
    __TranslateNodePlacement_cold_3();
    goto LABEL_29;
  }

  v4 = *(a1 + 4);
  *a2 = v4;
  *(a2 + 2) = *(a1 + 6);
  v5 = *(a1 + 46);
  if (v4 >= 1)
  {
    v6 = a2 + 8;
    v7 = v5;
    v8 = (a1 + 56);
    v9 = a2 + 16;
    v10 = v4;
    do
    {
      v11 = *(v8 - 3) * 100.0 / v7;
      *(v9 - 8) = v11;
      v12 = *(v8 - 2) * 100.0 / v7;
      *v9 = v12;
      v13 = *(v8 - 4) * 3.14159265;
      v14 = v13 * 0.00390625;
      *(v9 + 8) = v13 * 0.00390625;
      if (*v8)
      {
        v15 = __sincos_stret(v13 * 0.00390625);
        *(v9 - 8) = -(v12 * v15.__sinval + v15.__cosval * v11);
        *v9 = -(v12 * v15.__cosval + -v15.__sinval * v11);
        *(v9 + 8) = -v14;
      }

      *(v9 + 16) = *(v8 - 1);
      v8 += 10;
      v9 += 32;
      --v10;
    }

    while (v10);
    for (i = 0; i != v4; ++i)
    {
      v17 = v6 + 32 * i;
      v18 = *(v17 + 24);
      if ((v18 & 0x80000000) == 0)
      {
        v19 = 300;
        while (1)
        {
          v20 = v6 + 32 * v18;
          v21 = *(v20 + 24);
          if (v21 == v18)
          {
            break;
          }

          v22 = *(v20 + 16);
          v23 = __sincos_stret(v22);
          v24 = *(v17 + 8);
          v25 = v22 + *(v17 + 16);
          v26 = *(v20 + 8) + v23.__sinval * *v17 + v23.__cosval * v24;
          *v17 = *v20 + v23.__cosval * *v17 - v23.__sinval * v24;
          *(v17 + 8) = v26;
          *(v17 + 16) = v25;
          *(v17 + 24) = v21;
          LOWORD(v18) = v21;
          if (!--v19)
          {
            if (__osLog)
            {
              v29 = __osLog;
            }

            else
            {
              v29 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v31 = 136316162;
              v32 = "found";
              v33 = 2048;
              v34 = 0;
              v35 = 2080;
              v36 = &unk_1C82F52EE;
              v37 = 2080;
              v38 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/TouchID/nodevis.c";
              v39 = 1024;
              v40 = 181;
              _os_log_impl(&dword_1C82AD000, v29, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v31, 0x30u);
            }

            result = 22;
            goto LABEL_24;
          }
        }
      }
    }
  }

  result = 0;
  *(a2 + 9608) = *(a1 + 3048);
  v28 = 100.0 / v5 * (100.0 / v5);
  *(a2 + 9616) = v28 * (16 * *(a1 + 3050));
  *(a2 + 9624) = *(a1 + 3052);
  *(a2 + 9632) = v28 * (16 * *(a1 + 3054));
LABEL_24:
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __FindLargestComponent(unsigned int *a1, int a2, _DWORD *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = malloc_type_calloc(a1[5], 2uLL, 0x1000040BDFB0063uLL);
  if (v6)
  {
    v8 = v6;
    v9 = *a1;
    v10 = a1[5];
    if (v9 < 1)
    {
LABEL_9:
      if (v10 < 1)
      {
        v21 = 0;
      }

      else
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        if (a2)
        {
          v15 = 26;
        }

        else
        {
          v15 = 24;
        }

        v16 = MEMORY[0x1E69E9C10];
        *&v7 = 136316162;
        do
        {
          v17 = v12;
          v18 = v8[v12];
          if (v18 != *(*(*(a1 + 5) + 8 * v12) + v15))
          {
            v19 = (__osLog ? __osLog : v16);
            log = v19;
            v25 = v7;
            v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
            v7 = v25;
            v16 = MEMORY[0x1E69E9C10];
            if (v20)
            {
              *buf = v25;
              v27 = "histogram[i] == (mapiNodesOnly?set->components[i]->mapiNodeCount:set->components[i]->nodeCount)";
              v28 = 2048;
              v29 = 0;
              v30 = 2080;
              v31 = &unk_1C82F52EE;
              v32 = 2080;
              v33 = "/Library/Caches/com.apple.xbs/Sources/BiometricKit/TouchID/nodevis.c";
              v34 = 1024;
              v35 = 832;
              _os_log_impl(&dword_1C82AD000, log, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
              v7 = v25;
              v16 = MEMORY[0x1E69E9C10];
              v18 = v8[v17];
              v10 = a1[5];
            }
          }

          if (v18 > v13)
          {
            v14 = v17;
            v13 = v18;
          }

          v12 = v17 + 1;
        }

        while (v10 > (v17 + 1));
        v21 = v14;
      }

      *a3 = v21;
    }

    else
    {
      v11 = *(a1 + 1);
      while (v10 > *(*v11 + 30))
      {
        if (!a2 || *(*v11 + 26) != -1)
        {
          ++v6[*(*v11 + 30)];
        }

        v11 += 8;
        if (!--v9)
        {
          goto LABEL_9;
        }
      }

      __FindLargestComponent_cold_1();
    }

    free(v8);
    result = 0;
  }

  else
  {
    __FindLargestComponent_cold_2();
    result = *buf;
  }

  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t FindRectangleForComponent(unsigned int *a1, unsigned __int16 a2, _WORD *a3, _WORD *a4, _WORD *a5, _WORD *a6)
{
  v6 = *a1;
  if (v6 < 1)
  {
    LOWORD(v17) = 1;
    LOWORD(v15) = -1;
    LOWORD(v16) = 1;
    LOWORD(v14) = -1;
  }

  else
  {
    v7 = *(a1 + 1);
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    do
    {
      v12 = *v7;
      if (*(*v7 + 15) == a2)
      {
        v13 = v12[1];
        if (v8 > *v12)
        {
          v8 = *v12;
        }

        if (v9 < *v12)
        {
          v9 = *v12;
        }

        if (v11 > v13)
        {
          v11 = v12[1];
        }

        if (v10 < v13)
        {
          v10 = v12[1];
        }
      }

      ++v7;
      --v6;
    }

    while (v6);
    v14 = (v8 + -1.0);
    v15 = (v11 + -1.0);
    v16 = (v9 + 1.0);
    v17 = (v10 + 1.0);
  }

  *a3 = v14;
  *a4 = v15;
  *a5 = v16;
  *a6 = v17;
  return 0;
}

uint64_t GenerateTemplateTopology()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v3 = v0;
  v16 = *MEMORY[0x1E69E9840];
  memset(v9, 0, 512);
  bzero(v15, 0x4B0uLL);
  v8 = 0;
  if (!v3)
  {
    GenerateTemplateTopology_cold_4();
LABEL_18:
    result = v14;
    goto LABEL_13;
  }

  if (!v2)
  {
    GenerateTemplateTopology_cold_3();
    goto LABEL_18;
  }

  if (__TranslateNodePlacement(v3, v9))
  {
    GenerateTemplateTopology_cold_1();
    goto LABEL_18;
  }

  if (__GenerateTemplateTopology(v9, v2, v15, &v8))
  {
    GenerateTemplateTopology_cold_2();
    goto LABEL_18;
  }

  if (v8 < 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    for (i = 1; i != v8; ++i)
    {
      if (v15[v4] < v15[i])
      {
        v4 = i;
      }
    }
  }

  result = 0;
  *(v2 + 4) = v10;
  *(v2 + 8) = v11;
  *(v2 + 16) = v12;
  *(v2 + 24) = v13;
  *(v2 + 32) = v4;
  *(v2 + 36) = -1;
LABEL_13:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __GenerateTemplateTopology(uint64_t a1, _DWORD *a2, uint64_t a3, _DWORD *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  bzero(v20, 0x4B0uLL);
  if (!a1)
  {
    __GenerateTemplateTopology_cold_2();
LABEL_16:
    result = v19;
    goto LABEL_13;
  }

  if (!a2)
  {
    __GenerateTemplateTopology_cold_1();
    goto LABEL_16;
  }

  v8 = 0;
  v9 = 0;
  v10 = (a2 + 18);
  v11 = a1 + 16;
  do
  {
    v12 = *(v11 + 16);
    if (v12 == -1)
    {
      break;
    }

    *(v10 - 7) = v8;
    if (v8 == v12)
    {
      v13 = v9++;
      v14 = 1;
    }

    else
    {
      v13 = v20[v12];
      v14 = 2;
    }

    *(v10 - 8) = v14;
    v20[v8] = v13;
    *(v10 - 6) = v13;
    v15 = *v11;
    v16 = *(v11 + 8) + 1.57079633;
    *(v10 - 2) = *(v11 - 8) * 6.123234e-17 + 0.0 - *v11;
    *(v10 - 1) = *(v11 - 8) + 0.0 + v15 * 6.123234e-17;
    *v10 = v16 + -1.57079633;
    if (a3)
    {
      ++*(a3 + 4 * v13);
    }

    v11 += 32;
    ++v8;
    v10 += 5;
  }

  while (v8 != 300);
  *a2 = v8;
  result = 0;
  if (a4)
  {
    *a4 = v9;
  }

LABEL_13:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t GenerateMatchTemplateTopology()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v3 = v0;
  bzero(v22, 0x25A8uLL);
  if (v3)
  {
    if (v2)
    {
      if (__TranslateNodePlacement((v3 + 6), v22))
      {
        GenerateMatchTemplateTopology_cold_1();
      }

      else
      {
        v4 = v3[29];
        v5 = v3[4];
        v6 = v3[5];
        v7 = v3[3];
        if (__GenerateTemplateTopology(v22, v2, 0, 0))
        {
          GenerateMatchTemplateTopology_cold_2();
        }

        else
        {
          v8 = (*v2)++;
          v9 = v2 + 40 + 40 * v8;
          *v9 = 4;
          *(v9 + 4) = v8;
          if (v3[2] < 300)
          {
            v10 = v5 * 100.0 / v4;
            v11 = v6 * 100.0 / v4;
            v12 = v7 * 3.14159265 * 0.00390625;
            v13 = v2 + 40 + 40 * v3[2];
            v14 = *(v13 + 8);
            *(v9 + 8) = v14;
            v15 = v10 * 6.123234e-17 + 0.0 - v11;
            v16 = v10 + 0.0 + v11 * 6.123234e-17;
            v17 = v12 + 1.57079633 + -1.57079633;
            v18 = *(v13 + 32);
            v19 = __sincos_stret(v18);
            result = 0;
            v21 = *(v13 + 24);
            *(v9 + 16) = *(v13 + 16) + v19.__cosval * v15 - v19.__sinval * v16;
            *(v9 + 24) = v21 + v19.__sinval * v15 + v19.__cosval * v16;
            *(v9 + 32) = v17 + v18;
            *(v2 + 32) = v14;
            *(v2 + 4) = v22[4804];
            *(v2 + 8) = v23;
            *(v2 + 16) = v24;
            *(v2 + 24) = v25;
            *(v2 + 36) = v3[9] != -1;
            return result;
          }

          GenerateMatchTemplateTopology_cold_3();
        }
      }
    }

    else
    {
      GenerateMatchTemplateTopology_cold_4();
    }
  }

  else
  {
    GenerateMatchTemplateTopology_cold_5();
  }

  return v26;
}

uint64_t __RebaseComponent(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 30);
  if (v3 == *(a3 + 30))
  {
    v4 = *(a2 + 26);
    if (v4 == 0xFFFF)
    {
      __RebaseComponent_cold_7();
    }

    else
    {
      v6 = *(a3 + 26);
      if (v6 == 0xFFFF)
      {
        __RebaseComponent_cold_6();
      }

      else if (v4 == *(a2 + 28))
      {
        if (fabs(*a2) >= 0.1 || fabs(*(a2 + 8)) >= 0.1 || vabdd_f64(*(a2 + 16) / 6.28318531, floor(*(a2 + 16) / 6.28318531)) >= 0.01)
        {
          __RebaseComponent_cold_3();
        }

        else
        {
          v8 = *(a2 + 30);
          v9 = *(*(a1 + 5) + 8 * v3);
          v10 = v9[2];
          v11 = __sincos_stret(v10);
          v12 = *(a3 + 8);
          v13 = v10 + *(a3 + 16);
          v14 = v9[1] + v11.__sinval * *a3 + v11.__cosval * v12;
          *v9 = *v9 + v11.__cosval * *a3 - v11.__sinval * v12;
          v9[1] = v14;
          v9[2] = v13;
          v15 = *a3;
          v16 = *(a3 + 8);
          v17 = *(a3 + 16);
          v18 = __sincos_stret(v17);
          v19 = *a1;
          if (v19 >= 1)
          {
            v20 = *(a1 + 1);
            do
            {
              v21 = *v20;
              if (*(*v20 + 30) == v8)
              {
                *(v21 + 28) = v6;
                v22 = *(v21 + 8);
                v23 = *(v21 + 16) - v17;
                v24 = -v18.__sinval * *v21 - (v16 * v18.__cosval + -v18.__sinval * v15) + v18.__cosval * v22;
                *v21 = v18.__cosval * *v21 - (v16 * v18.__sinval + v18.__cosval * v15) + v18.__sinval * v22;
                *(v21 + 8) = v24;
                *(v21 + 16) = v23;
              }

              ++v20;
              --v19;
            }

            while (v19);
            v15 = *a3;
          }

          if (fabs(v15) >= 0.1 || fabs(*(a3 + 8)) >= 0.1 || vabdd_f64(*(a3 + 16) / 6.28318531, floor(*(a3 + 16) / 6.28318531)) >= 0.01)
          {
            __RebaseComponent_cold_4();
          }

          else
          {
            if (v6 == *(a3 + 28))
            {
              return 0;
            }

            __RebaseComponent_cold_5();
          }
        }
      }

      else
      {
        __RebaseComponent_cold_2();
      }
    }
  }

  else
  {
    __RebaseComponent_cold_1();
  }

  return v26;
}

BOOL OUTLINED_FUNCTION_12()
{
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = v0;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_17()
{
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = v0;
  }

  return os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
}

void __initializeOSLog_block_invoke()
{
  v0 = os_log_create("com.apple.BiometricKit", "Framework-Internal");
  v1 = __osLog;
  __osLog = v0;

  if (!__osLog && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __initializeOSLog_block_invoke_cold_1();
  }

  v2 = os_log_create("com.apple.BiometricKit", "Framework-API");
  v3 = __osLogTrace;
  __osLogTrace = v2;

  if (!__osLogTrace && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __initializeOSLog_block_invoke_cold_2();
  }
}

void updateCallback(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (__osLog)
  {
    v3 = __osLog;
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134217984;
    v7 = a2;
    _os_log_impl(&dword_1C82AD000, v3, OS_LOG_TYPE_DEBUG, "updateCallback(observer:%p)\n", &v6, 0xCu);
  }

  v4 = a2;
  [v4 synchronize];
  [v4 updateNotification];

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1C82CC64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1C82CCE3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1C82CEB38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1C82CF1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1C82CF7C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_4_2(uint64_t a1)
{
  *v2 = a1;
  v3 = *(v1 + 16);
  return v1;
}

BOOL OUTLINED_FUNCTION_11@<W0>(NSObject *a1@<X8>)
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

id OUTLINED_FUNCTION_13_0()
{

  return setError(1, v0);
}

id OUTLINED_FUNCTION_14_0()
{

  return setErrorWithOSStatus(v1, v0);
}

uint64_t SaveRawImageAsPGM(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*a1 bytes];
  if (v7 && (v8 = v7, (v9 = fopen([v5 UTF8String], "w")) != 0))
  {
    v10 = v9;
    fwrite("P5\n", 3uLL, 1uLL, v9);
    if (v6)
    {
      v11 = [v6 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#"];
      fprintf(v10, "#%s\n", [v11 UTF8String]);
    }

    fprintf(v10, "%i %i 255\n", *(a1 + 8), *(a1 + 12));
    fwrite(v8, *(a1 + 8), *(a1 + 12), v10);
    fclose(v10);
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

FILE *LoadRawImageAsPGM(uint64_t a1, id a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v15 = -1;
  v16 = -1;
  v14 = -1;
  *a1 = 0;
  v4 = a2;
  result = fopen([a2 UTF8String], "rb");
  if (result)
  {
    v6 = result;
    if (!ReadLine(v17, result))
    {
      goto LABEL_4;
    }

    if (*v17 ^ 0x3550 | v18)
    {
      goto LABEL_4;
    }

    if (!ReadLine(v17, v6))
    {
      goto LABEL_4;
    }

    sscanf(v17, "%i%i%i", &v16, &v15, &v14);
    if (v16 < 1)
    {
      goto LABEL_4;
    }

    v8 = v15;
    if (v15 == -1)
    {
      if (!ReadLine(v17, v6))
      {
        goto LABEL_4;
      }

      sscanf(v17, "%i%i", &v15, &v14);
      v8 = v15;
      if (v15 < 1)
      {
        goto LABEL_4;
      }
    }

    if (v14 == -1)
    {
      if (!ReadLine(v17, v6) || (sscanf(v17, "%i", &v14), v14 != 255))
      {
LABEL_4:
        result = fclose(v6);
        goto LABEL_5;
      }

      v8 = v15;
    }

    if (((v8 * v16) >> 64))
    {
      LoadRawImageAsPGM_cold_2();
    }

    else
    {
      v9 = malloc_type_malloc(v16 * v8, 0x553C162AuLL);
      if (v9)
      {
        v10 = v9;
        v11 = fread(v9, v16, v15, v6);
        v12 = v15;
        if (v11 == v15)
        {
          v13 = v16;
          *(a1 + 8) = v16;
          *(a1 + 12) = v12;
          *a1 = CFRetain([MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v10 length:v13 * v12]);
        }

        else
        {
          LoadRawImageAsPGM_cold_1(v10);
        }
      }
    }

    goto LABEL_4;
  }

LABEL_5:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

const char *ReadLine(char *a1, FILE *a2)
{
  while (1)
  {
    v4 = fgets(a1, 1024, a2);
    if (!v4)
    {
      break;
    }

    v5 = v4;
    do
    {
      v6 = v5;
      v8 = *v5++;
      v7 = v8;
    }

    while (v8 && v7 < 33);
    v9 = strlen(v6);
    if (v9 != 1)
    {
      v10 = v9 - 2;
      do
      {
        if (v5[v10] > 32)
        {
          break;
        }

        v5[v10--] = 0;
      }

      while (v10 != -1);
    }

    if (v7 != 35)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t AppendCommentToPGM(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v3];
  v6 = v5;
  if (v5 && [v5 length])
  {
    v7 = [v6 bytes];
    v8 = &v7[[v6 length]];
    v9 = v7;
    while (1)
    {
      v10 = memchr(v9, 10, [v6 length]);
      if (!v10)
      {
        AppendCommentToPGM_cold_1(&v17);
        v15 = v17;
        goto LABEL_14;
      }

      v9 = v10 + 1;
      if ((v10 + 1) >= v8)
      {
        break;
      }

      if (*v9 != 35)
      {
        goto LABEL_9;
      }
    }

    v9 = v10;
LABEL_9:
    v11 = fopen([v3 UTF8String], "w");
    if (!v11)
    {
      goto LABEL_13;
    }

    v12 = v11;
    v13 = v9 - v7;
    fwrite(v7, v9 - v7, 1uLL, v11);
    if (v4)
    {
      v14 = [v4 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#"];
      fprintf(v12, "#%s\n", [v14 UTF8String]);
    }

    v15 = 1;
    fwrite(v9, [v6 length] - v13, 1uLL, v12);
    fclose(v12);
  }

  else
  {
LABEL_13:
    v15 = 0;
  }

LABEL_14:

  return v15;
}

void RIESClear(char *a1)
{
  v2 = -4800;
  do
  {
    v3 = *&a1[v2 + 4800];
    if (v3)
    {
      CFRelease(v3);
    }

    v2 += 16;
  }

  while (v2);

  bzero(a1, 0x12C0uLL);
}

void RIESAdd(uint64_t a1, _OWORD *a2, unsigned int a3)
{
  if ((a3 & 0x80000000) != 0)
  {
    RIESAdd_cold_1();
  }

  else
  {
    v4 = (a1 + 16 * a3);
    if (*v4)
    {
      CFRelease(*v4);
    }

    *v4 = *a2;
    v5 = *v4;
    if (*v4)
    {

      CFRetain(v5);
    }
  }
}

void RIESSave(void *a1, void *a2)
{
  v6 = DirectoryNameForIdentity(a2);
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  [v3 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:0];

  for (i = 0; i != 300; ++i)
  {
    if (*a1)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%i.pgm", v6, i];
      SaveRawImageAsPGM(a1, v5, 0);
    }

    a1 += 2;
  }
}

id DirectoryNameForIdentity(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = [a1 uuid];
  v3 = [v2 UUIDString];
  v4 = [v1 stringWithFormat:@"%@/%@", @"/var/mobile/BiometricKit/biometrickitd", v3];

  return v4;
}

void RIESLoad(uint64_t a1, void *a2)
{
  v5 = DirectoryNameForIdentity(a2);
  for (i = 0; i != 300; ++i)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%i.pgm", v5, i];
    LoadRawImageAsPGM(a1, v4);

    a1 += 16;
  }
}

void RIESDelete(void *a1)
{
  v2 = DirectoryNameForIdentity(a1);
  v1 = [MEMORY[0x1E696AC08] defaultManager];
  [v1 removeItemAtPath:v2 error:0];
}

void RIESUpdate(void *a1, void *a2, uint64_t a3)
{
  v7 = DirectoryNameForIdentity(a1);
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%i.pgm", v7, a3];
  if (*a2)
  {
    SaveRawImageAsPGM(a2, v5, 0);
  }

  else
  {
    v6 = [MEMORY[0x1E696AC08] defaultManager];
    [v6 removeItemAtPath:v5 error:0];
  }
}

double roundMostSignificant(int a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v3 = roundMostSignificant_formatter;
  if (!roundMostSignificant_formatter)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v5 = roundMostSignificant_formatter;
    roundMostSignificant_formatter = v4;

    [roundMostSignificant_formatter setMaximumSignificantDigits:a1];
    [roundMostSignificant_formatter setUsesSignificantDigits:1];
    v3 = roundMostSignificant_formatter;
  }

  v6 = [v3 stringFromNumber:v2];
  v7 = [v3 numberFromString:v6];
  [v7 doubleValue];
  v9 = v8;

  return v9;
}

id rotateBitmap90Data8(char *a1, int a2, int a3)
{
  if (a1)
  {
    if (a2 < 1 || a3 <= 0)
    {
      rotateBitmap90Data8_cold_2();
    }

    else
    {
      v5 = a1;
      v6 = a3 * a2;
      v7 = malloc_type_malloc(v6, 0x100004077774924uLL);
      if (v7)
      {
        v8 = v7;
        v9 = 0;
        v10 = a3 - 1;
        do
        {
          v11 = a2;
          v12 = v10;
          v13 = v5;
          do
          {
            v14 = *v13++;
            *(v7 + v12) = v14;
            v12 += a3;
            --v11;
          }

          while (v11);
          ++v9;
          v5 += a2;
          --v10;
        }

        while (v9 != a3);
        v15 = [MEMORY[0x1E695DEF0] dataWithBytes:v7 length:v6];
        free(v8);
        goto LABEL_10;
      }

      rotateBitmap90Data8_cold_1();
    }
  }

  else
  {
    rotateBitmap90Data8_cold_3();
  }

  v15 = v17;
LABEL_10:

  return v15;
}

id rotateBitmap90Data16(__int16 *a1, int a2, int a3)
{
  if (a1)
  {
    if (a2 < 1 || a3 <= 0)
    {
      rotateBitmap90Data16_cold_2();
    }

    else
    {
      v5 = a1;
      v6 = 2 * a3 * a2;
      v7 = malloc_type_malloc(v6, 0x1000040BDFB0063uLL);
      if (v7)
      {
        v8 = v7;
        v9 = 0;
        v10 = 2 * a3;
        v11 = v10 - 2;
        do
        {
          v12 = a2;
          v13 = v11;
          v14 = v5;
          do
          {
            v15 = *v14++;
            *&v7[v13] = v15;
            v13 += v10;
            --v12;
          }

          while (v12);
          ++v9;
          v5 += a2;
          v11 -= 2;
        }

        while (v9 != a3);
        v16 = [MEMORY[0x1E695DEF0] dataWithBytes:v7 length:v6];
        free(v8);
        goto LABEL_10;
      }

      rotateBitmap90Data16_cold_1();
    }
  }

  else
  {
    rotateBitmap90Data16_cold_3();
  }

  v16 = v18;
LABEL_10:

  return v16;
}

unint64_t localizeAbsolute(uint64_t a1, unsigned int *a2)
{
  v4 = dword_1EDADB1D4;
  if (!dword_1EDADB1D4)
  {
    mach_timebase_info(&sTimebaseInfo);
    v4 = dword_1EDADB1D4;
  }

  return *a2 * a1 / a2[1] * v4 / sTimebaseInfo;
}

uint64_t dictionaryGetData(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if (v6 && a3)
  {
    v7 = [v5 objectForKeyedSubscript:v6];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
        v7 = 0;
        v9 = v8;
      }

      else
      {
        dictionaryGetData_cold_1(v7, &v12, &v13, &v14);
        v7 = v12;
        v8 = v13;
        v9 = v14;
      }

      goto LABEL_8;
    }

LABEL_7:
    v8 = 0;
    v9 = 0;
LABEL_8:
    v10 = v8;
    *a3 = v8;

    goto LABEL_9;
  }

  v7 = 258;
  if ((dictionaryGetData_cold_2(a3 == 0) & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:

  return v7;
}

uint64_t getSensorPatchVersion()
{
  v0 = IOServiceMatching("AppleBiometricSensor");
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x1E696CD60], v0);
  v2 = MatchingService;
  if (MatchingService)
  {
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"patch-version", *MEMORY[0x1E695E480], 0);
    v4 = CFProperty;
    if (CFProperty)
    {
      v5 = [CFProperty integerValue];
      v6 = v4;
      v7 = v2;
    }

    else
    {
      getSensorPatchVersion_cold_1(v2, &v9, &v11, &v10);
      v5 = v9;
      v6 = v11;
      v7 = v10;
    }

    IOObjectRelease(v7);
    if (v6)
    {
      CFRelease(v6);
    }
  }

  else
  {
    getSensorPatchVersion_cold_2(&v11);
    return v11;
  }

  return v5;
}

void __isFaceIDPlatform_block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = IORegistryEntryFromPath(*MEMORY[0x1E696CD60], "IODeviceTree:/arm-io/pearl-sep");
  if (v0)
  {
    isFaceIDPlatform_faceIDPlatform = 1;
    IOObjectRelease(v0);
  }

  if (__osLog)
  {
    v1 = __osLog;
  }

  else
  {
    v1 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 67109120;
    v3[1] = isFaceIDPlatform_faceIDPlatform;
    _os_log_impl(&dword_1C82AD000, v1, OS_LOG_TYPE_DEFAULT, "isFaceIDPlatform: %u\n", v3, 8u);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void __isEphemeralMultiUser_block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DF068] sharedManager];
  isEphemeralMultiUser_ephemeralMultiUser = [v0 isSharedIPad];

  if (isEphemeralMultiUser_ephemeralMultiUser == 1)
  {
    if (__osLog)
    {
      v1 = __osLog;
    }

    else
    {
      v1 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v3[0] = 67109120;
      v3[1] = isEphemeralMultiUser_ephemeralMultiUser;
      _os_log_impl(&dword_1C82AD000, v1, OS_LOG_TYPE_DEFAULT, "isEphemeralMultiUser: %u\n", v3, 8u);
    }
  }

  v2 = *MEMORY[0x1E69E9840];
}

uint64_t getCurrentUserID()
{
  v0 = [MEMORY[0x1E69DF068] sharedManager];
  v1 = [v0 currentUser];

  if (v1)
  {
    v2 = [v1 uid];
  }

  else
  {
    getCurrentUserID_cold_1(&v4);
    v2 = v4;
  }

  return v2;
}

id getBootArgs()
{
  v0 = IORegistryEntryFromPath(*MEMORY[0x1E696CD60], "IODeviceTree:/options");
  if (v0)
  {
    v1 = v0;
    CFProperty = IORegistryEntryCreateCFProperty(v0, @"boot-args", 0, 0);
    IOObjectRelease(v1);
  }

  else
  {
    CFProperty = 0;
  }

  return CFProperty;
}

uint64_t __isInternalBuild_block_invoke()
{
  result = MGGetBoolAnswer();
  isInternalBuild_isInternal = result;
  return result;
}

BOOL OUTLINED_FUNCTION_9@<W0>(NSObject *a1@<X8>)
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

void sub_1C82D490C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t __statusToFingerprintCaptureError(int a1)
{
  v1 = 3;
  v2 = 4;
  v3 = 5;
  if (a1 != 98)
  {
    v3 = 0;
  }

  if (a1 != 88)
  {
    v2 = v3;
  }

  if (a1 != 87)
  {
    v1 = v2;
  }

  v4 = 6;
  v5 = 1;
  v6 = 2;
  if (a1 != 86)
  {
    v6 = 0;
  }

  if (a1 != 85)
  {
    v5 = v6;
  }

  if (a1 != 78)
  {
    v4 = v5;
  }

  if (a1 <= 86)
  {
    return v4;
  }

  else
  {
    return v1;
  }
}

uint64_t __faceDetectFeedback(uint64_t result)
{
  if ((result - 2) >= 0xC)
  {
    return 1;
  }

  return result;
}

uint64_t __passcodeShortcutReason(uint64_t result)
{
  if ((result - 1) >= 5)
  {
    return 0;
  }

  return result;
}

void sub_1C82E2CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1C82E2FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

id setErrorWithOSStatus(id result, void *a2)
{
  if (a2)
  {
    result = [BKErrorHelper errorWithOSStatus:result];
    *a2 = result;
  }

  return result;
}

void GenerateEnrollProgressInfo_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void GenerateEnrollProgressInfo_cold_2(void *a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (__osLog)
  {
    v4 = __osLog;
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    v7 = &unk_1C82F52EE;
    OUTLINED_FUNCTION_1();
    v8 = 128;
    _os_log_impl(&dword_1C82AD000, v4, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v6, 0x30u);
  }

  *a2 = 0;
  *a1 = 0;
  v5 = *MEMORY[0x1E69E9840];
}

void __makeCoordinates_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void ComponentSetUpdate_cold_1()
{
  OUTLINED_FUNCTION_13();
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_14();
  v6 = *MEMORY[0x1E69E9840];
}

void ComponentSetUpdate_cold_2(_DWORD *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v9);
  }

  *a1 = 0;
  v8 = *MEMORY[0x1E69E9840];
}

void ComponentSetUpdate_cold_3(_DWORD *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v9);
  }

  *a1 = 0;
  v8 = *MEMORY[0x1E69E9840];
}

void ComponentSetUpdate_cold_4()
{
  OUTLINED_FUNCTION_13();
  v15 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_2_3();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, 2u);
  }

  if (OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_2_3();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v8, v9, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v10, v11, v12, v13, 2u);
  }

  *v0 = v1;
  v14 = *MEMORY[0x1E69E9840];
}

void ComponentSetUpdate_cold_5()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void ComponentSetUpdate_cold_6()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void ComponentSetUpdate_cold_7(_DWORD *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v9);
  }

  *a1 = 0;
  v8 = *MEMORY[0x1E69E9840];
}

void ComponentSetUpdate_cold_8()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void ComponentSetUpdate_cold_9()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void ComponentSetUpdate_cold_10()
{
  OUTLINED_FUNCTION_13();
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_14();
  v6 = *MEMORY[0x1E69E9840];
}

void ComponentSetUpdate_cold_11()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void ComponentSetUpdate_cold_12()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void ComponentSetUpdate_cold_13()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void ComponentSetUpdate_cold_14()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void ComponentSetUpdate_cold_15()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void ComponentSetUpdate_cold_16()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void ComponentSetUpdate_cold_17()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void ComponentSetUpdate_cold_18()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void ComponentSetUpdate_cold_19()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_15();
  v6 = *MEMORY[0x1E69E9840];
}

void ComponentSetUpdate_cold_20()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_15();
  v6 = *MEMORY[0x1E69E9840];
}

void ComponentSetUpdate_cold_21(_DWORD *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_12())
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, 2u);
  }

  if (OUTLINED_FUNCTION_12())
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v8, v9, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v10, v11, v12, v13, 2u);
  }

  *a1 = 12;
  v14 = *MEMORY[0x1E69E9840];
}

void ComponentSetUpdate_cold_22(_DWORD *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_12())
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, 2u);
  }

  if (OUTLINED_FUNCTION_12())
  {
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v8, v9, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v10, v11, v12, v13, 2u);
  }

  *a1 = 12;
  v14 = *MEMORY[0x1E69E9840];
}

void ComponentSetUpdate_cold_23()
{
  OUTLINED_FUNCTION_13();
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_14();
  v6 = *MEMORY[0x1E69E9840];
}

void ComponentSetUpdate_cold_24()
{
  OUTLINED_FUNCTION_13();
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_14();
  v6 = *MEMORY[0x1E69E9840];
}

void ComponentSetUpdate_cold_25()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_4_1();
  v6 = *MEMORY[0x1E69E9840];
}

void ComponentSetUpdate_cold_26()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_4_1();
  v6 = *MEMORY[0x1E69E9840];
}

void __TranslateNodePlacement_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_4_1();
  v6 = *MEMORY[0x1E69E9840];
}

void __TranslateNodePlacement_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_4_1();
  v6 = *MEMORY[0x1E69E9840];
}

void __TranslateNodePlacement_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_4_1();
  v6 = *MEMORY[0x1E69E9840];
}

void __TranslateNodePlacement_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_4_1();
  v6 = *MEMORY[0x1E69E9840];
}

void __FindLargestComponent_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __FindLargestComponent_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_15();
  v6 = *MEMORY[0x1E69E9840];
}

void GenerateTemplateTopology_cold_1()
{
  OUTLINED_FUNCTION_13();
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_14();
  v6 = *MEMORY[0x1E69E9840];
}

void GenerateTemplateTopology_cold_2()
{
  OUTLINED_FUNCTION_13();
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_14();
  v6 = *MEMORY[0x1E69E9840];
}

void GenerateTemplateTopology_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_4_1();
  v6 = *MEMORY[0x1E69E9840];
}

void GenerateTemplateTopology_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_4_1();
  v6 = *MEMORY[0x1E69E9840];
}

void __GenerateTemplateTopology_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_4_1();
  v6 = *MEMORY[0x1E69E9840];
}

void __GenerateTemplateTopology_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_4_1();
  v6 = *MEMORY[0x1E69E9840];
}

void GenerateMatchTemplateTopology_cold_1()
{
  OUTLINED_FUNCTION_13();
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_14();
  v6 = *MEMORY[0x1E69E9840];
}

void GenerateMatchTemplateTopology_cold_2()
{
  OUTLINED_FUNCTION_13();
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_14();
  v6 = *MEMORY[0x1E69E9840];
}

void GenerateMatchTemplateTopology_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_4_1();
  v6 = *MEMORY[0x1E69E9840];
}

void GenerateMatchTemplateTopology_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_4_1();
  v6 = *MEMORY[0x1E69E9840];
}

void GenerateMatchTemplateTopology_cold_5()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_4_1();
  v6 = *MEMORY[0x1E69E9840];
}

void __RebaseComponent_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_4_1();
  v6 = *MEMORY[0x1E69E9840];
}

void __RebaseComponent_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_4_1();
  v6 = *MEMORY[0x1E69E9840];
}

void __RebaseComponent_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_4_1();
  v6 = *MEMORY[0x1E69E9840];
}

void __RebaseComponent_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_4_1();
  v6 = *MEMORY[0x1E69E9840];
}

void __RebaseComponent_cold_5()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_4_1();
  v6 = *MEMORY[0x1E69E9840];
}

void __RebaseComponent_cold_6()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_4_1();
  v6 = *MEMORY[0x1E69E9840];
}

void __RebaseComponent_cold_7()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_4_1();
  v6 = *MEMORY[0x1E69E9840];
}

void LoadRawImageAsPGM_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v9);
  }

  free(a1);
  v8 = *MEMORY[0x1E69E9840];
}

void LoadRawImageAsPGM_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void AppendCommentToPGM_cold_1(_BYTE *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v9);
  }

  *a1 = 0;
  v8 = *MEMORY[0x1E69E9840];
}

void RIESAdd_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void rotateBitmap90Data8_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_6();
  v6 = *MEMORY[0x1E69E9840];
}

void rotateBitmap90Data8_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_6();
  v6 = *MEMORY[0x1E69E9840];
}

void rotateBitmap90Data8_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_6();
  v6 = *MEMORY[0x1E69E9840];
}

void rotateBitmap90Data16_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_6();
  v6 = *MEMORY[0x1E69E9840];
}

void rotateBitmap90Data16_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_6();
  v6 = *MEMORY[0x1E69E9840];
}

void rotateBitmap90Data16_cold_3()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_6();
  v6 = *MEMORY[0x1E69E9840];
}

void absoluteToNanoseconds_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  dword_1EDADB1D4 = 1;
  v6 = *MEMORY[0x1E69E9840];
}

void nanosecondsToAbsolute_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_0(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  sTimebaseInfo = 1;
  v6 = *MEMORY[0x1E69E9840];
}

void dictionaryGetBool_cold_1(_DWORD *a1, _BYTE *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (__osLog)
  {
    v4 = __osLog;
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    v7 = &unk_1C82F52EE;
    OUTLINED_FUNCTION_1();
    v8 = 524;
    _os_log_impl(&dword_1C82AD000, v4, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v6, 0x30u);
  }

  *a2 = 0;
  *a1 = 258;
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t dictionaryGetBool_cold_2(char a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v10);
  }

  v8 = *MEMORY[0x1E69E9840];
  return a1 & 1;
}

void dictionaryGetInteger_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v9);
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t dictionaryGetInteger_cold_2(char a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v10);
  }

  v8 = *MEMORY[0x1E69E9840];
  return a1 & 1;
}

void dictionaryGetDouble_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v9);
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t dictionaryGetDouble_cold_2(char a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v10);
  }

  v8 = *MEMORY[0x1E69E9840];
  return a1 & 1;
}

void dictionaryGetData_cold_1(uint64_t a1, _DWORD *a2, void *a3, void *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_9(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_10_2(&dword_1C82AD000, v8, v9, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v10, v11, v12, v13, v15);
  }

  *a4 = a1;
  *a3 = 0;
  *a2 = 258;
  v14 = *MEMORY[0x1E69E9840];
}

uint64_t dictionaryGetData_cold_2(char a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v10);
  }

  v8 = *MEMORY[0x1E69E9840];
  return a1 & 1;
}

void getSensorPatchVersion_cold_1(int a1, void *a2, void *a3, _DWORD *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_9(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_10_2(&dword_1C82AD000, v8, v9, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v10, v11, v12, v13, v15);
  }

  *a4 = a1;
  *a3 = 0;
  *a2 = -1;
  v14 = *MEMORY[0x1E69E9840];
}

void getSensorPatchVersion_cold_2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v9);
  }

  *a1 = -1;
  v8 = *MEMORY[0x1E69E9840];
}

void getCurrentUserID_cold_1(_DWORD *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v9);
  }

  *a1 = -1;
  v8 = *MEMORY[0x1E69E9840];
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}