void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1CEDC9F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CEDCEE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 120), 8);
  _Block_object_dispose((v26 - 88), 8);
  _Unwind_Resume(a1);
}

void updater_log(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = handleForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = a1;
    v8 = 2080;
    v9 = a2;
    _os_log_impl(&dword_1CEDC5000, v4, OS_LOG_TYPE_DEFAULT, "%s: %s", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

CFTypeRef copyCameraIORegValue(const __CFString *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = IOServiceNameMatching("AppleH16CamIn");
  if (!v2)
  {
    copyCameraIORegValue_cold_2();
LABEL_8:

    goto LABEL_9;
  }

  MatchingService = IOServiceGetMatchingService(*MEMORY[0x1E696CD60], v2);
  if (!MatchingService)
  {
    copyCameraIORegValue_cold_1();
    goto LABEL_8;
  }

  v4 = MatchingService;
  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, a1, *MEMORY[0x1E695E480], 0);
  IOObjectRelease(v4);
  if (CFProperty)
  {
    v6 = handleForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 138412546;
      *&v9[4] = a1;
      v10 = 2112;
      v11 = CFProperty;
      _os_log_impl(&dword_1CEDC5000, v6, OS_LOG_TYPE_DEFAULT, "property %@ found: %@", v9, 0x16u);
    }

    goto LABEL_12;
  }

LABEL_9:
  v6 = handleForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 138412290;
    *&v9[4] = a1;
    _os_log_impl(&dword_1CEDC5000, v6, OS_LOG_TYPE_DEFAULT, "No %@ property found", v9, 0xCu);
  }

  CFProperty = 0;
LABEL_12:

  v7 = *MEMORY[0x1E69E9840];
  return CFProperty;
}

uint64_t createECDSADerData(char *a1, unsigned int a2, void *a3, _DWORD *a4)
{
  v8 = DEREncoderCreate();
  if (!v8)
  {
    v31 = handleForCategory(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      createECDSADerData_cold_8();
    }

    goto LABEL_38;
  }

  v9 = DEREncoderCreate();
  if (!v9)
  {
    v31 = handleForCategory(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      createECDSADerData_cold_7();
    }

LABEL_38:
    v10 = 0;
    v13 = 0;
    v12 = 0;
    goto LABEL_47;
  }

  v10 = v9;
  v11 = a2 >> 1;
  v12 = malloc_type_malloc((v11 + 1), 0x100004077774924uLL);
  v13 = malloc_type_malloc((v11 + 1), 0x100004077774924uLL);
  bzero(v13, (v11 + 1));
  bzero(v12, (v11 + 1));
  if (*a1 < 0)
  {
    if (a2 >= 2)
    {
      v18 = v11;
      v19 = v12 + 1;
      v20 = a1;
      do
      {
        v21 = *v20++;
        *v19++ = v21;
        --v18;
      }

      while (v18);
    }
  }

  else if (a2 >= 2)
  {
    v14 = v11;
    v15 = a1;
    v16 = v12;
    do
    {
      v17 = *v15++;
      *v16++ = v17;
      --v14;
    }

    while (v14);
  }

  v22 = &a1[v11];
  if (a1[v11] < 0)
  {
    if (a2 >= 2)
    {
      v26 = v13 + 1;
      v27 = a2 >> 1;
      do
      {
        v28 = *v22++;
        *v26++ = v28;
        --v27;
      }

      while (v27);
    }
  }

  else if (a2 >= 2)
  {
    v23 = a2 >> 1;
    v24 = v13;
    do
    {
      v25 = *v22++;
      *v24++ = v25;
      --v23;
    }

    while (v23);
  }

  if (DEREncoderAddData())
  {
    v31 = handleForCategory(0);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_47;
    }

    goto LABEL_40;
  }

  if (DEREncoderAddData())
  {
    v31 = handleForCategory(0);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
LABEL_47:

      v32 = handleForCategory(0);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        createECDSADerData_cold_9(v32);
      }

      goto LABEL_49;
    }

LABEL_40:
    createECDSADerData_cold_1();
    goto LABEL_47;
  }

  if (DEREncoderAddSequenceFromEncoder())
  {
    v31 = handleForCategory(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      createECDSADerData_cold_3();
    }

    goto LABEL_47;
  }

  if (DEREncoderCreateEncodedBuffer())
  {
    v31 = handleForCategory(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      createECDSADerData_cold_4();
    }

    goto LABEL_47;
  }

  if (*a3)
  {
    if (*a4)
    {
      v29 = 0;
LABEL_26:
      DEREncoderDestroy();
      goto LABEL_27;
    }

    v32 = handleForCategory(0);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      createECDSADerData_cold_5();
    }
  }

  else
  {
    v32 = handleForCategory(0);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      createECDSADerData_cold_6();
    }
  }

LABEL_49:

  v29 = 3;
  if (v8)
  {
    goto LABEL_26;
  }

LABEL_27:
  if (v10)
  {
    DEREncoderDestroy();
  }

  if (v12)
  {
    free(v12);
  }

  if (v13)
  {
    free(v13);
  }

  return v29;
}

void signChallenge(void *a1, CFDataRef *a2, void *a3, _DWORD *a4, uint64_t a5)
{
  v49 = *MEMORY[0x1E69E9840];
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = -1;
  memset(length, 0, sizeof(length));
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__0;
  v37 = __Block_byref_object_dispose__0;
  v38 = dispatch_semaphore_create(0);
  if (!a2)
  {
    v15 = handleForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      signChallenge_cold_9();
    }

    v11 = 0;
    v16 = 0;
    v10 = 0;
    goto LABEL_13;
  }

  v10 = [a1 mutableCopy];
  if (a3)
  {
    v11 = malloc_type_malloc(0x20uLL, 0x100004077774924uLL);
    if (!v11)
    {
      v13 = handleForCategory(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        signChallenge_cold_2();
      }

      goto LABEL_10;
    }

    v12 = ccrng();
    if ((*v12)(v12, 32, v11))
    {
      v13 = handleForCategory(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        signChallenge_cold_1();
      }

LABEL_10:

      v15 = handleForCategory(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        signChallenge_cold_3();
      }

      v16 = 0;
LABEL_13:
      v14 = 0;
LABEL_14:

      goto LABEL_32;
    }

    v14 = [MEMORY[0x1E695DEF0] dataWithBytes:v11 length:32];
    [v10 appendData:v14];
  }

  else
  {
    v11 = 0;
    v14 = 0;
  }

  v17 = v10;
  v10 = v10;
  v18 = [v10 bytes];
  v19 = [v10 length];

  if (CC_SHA256(v18, v19, md))
  {
    v16 = [MEMORY[0x1E695DEF0] dataWithBytes:md length:32];
  }

  else
  {
    v16 = 0;
  }

  [MEMORY[0x1E6997730] sharedManager];
  if (a5)
    v20 = {;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __signChallenge_block_invoke_2;
    v31[3] = &unk_1E83B3F10;
    v31[4] = &v40;
    v31[5] = &v44;
    v31[6] = &v33;
    [v20 authenticateTouchControllerWithChallenge:v16 completionHandler:v31];
  }

  else
    v20 = {;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __signChallenge_block_invoke;
    v32[3] = &unk_1E83B3F10;
    v32[4] = &v40;
    v32[5] = &v44;
    v32[6] = &v33;
    [v20 authenticateBatteryWithChallenge:v16 completionHandler:v32];
  }

  v21 = v34[5];
  v22 = dispatch_time(0, 30000000000);
  if (dispatch_semaphore_wait(v21, v22))
  {
    v15 = handleForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      signChallenge_cold_4();
    }

    goto LABEL_14;
  }

  v23 = *(v41 + 6);
  if (a4)
  {
    *a4 = v23;
  }

  if (v23)
  {
    v15 = handleForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      signChallenge_cold_5();
    }

    goto LABEL_14;
  }

  v24 = v45[3];
  if (!v24)
  {
    v15 = handleForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      signChallenge_cold_9();
    }

    goto LABEL_14;
  }

  BytePtr = CFDataGetBytePtr(v24);
  v26 = CFDataGetLength(v45[3]);
  if (createECDSADerData(BytePtr, v26, &length[1], length))
  {
    v15 = handleForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      signChallenge_cold_6(v15);
    }

    goto LABEL_14;
  }

  v27 = CFDataCreateWithBytesNoCopy(0, *&length[1], length[0], *MEMORY[0x1E695E488]);
  *a2 = v27;
  if (!v27)
  {
    v15 = handleForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      signChallenge_cold_8();
    }

    goto LABEL_14;
  }

  *&length[1] = 0;
  if (a3)
  {
    v28 = v14;
    *a3 = v28;
    if (!v28)
    {
      v15 = handleForCategory(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        signChallenge_cold_7();
      }

      goto LABEL_13;
    }

    v14 = v28;
  }

LABEL_32:
  v29 = v45[3];
  if (v29)
  {
    CFRelease(v29);
  }

  if (v11)
  {
    free(v11);
  }

  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);
  v30 = *MEMORY[0x1E69E9840];
}

void sub_1CEDD0530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __signChallenge_block_invoke(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6)
{
  v8 = a4;
  *(*(a1[4] + 8) + 24) = a6;
  v9 = v8;
  *(*(a1[5] + 8) + 24) = v9;
  dispatch_semaphore_signal(*(*(a1[6] + 8) + 40));
}

void __signChallenge_block_invoke_2(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6)
{
  v8 = a4;
  *(*(a1[4] + 8) + 24) = a6;
  v9 = v8;
  *(*(a1[5] + 8) + 24) = v9;
  dispatch_semaphore_signal(*(*(a1[6] + 8) + 40));
}

void __signVeridian_block_invoke(void *a1, void *a2, void *a3, int a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = v8;
  *(*(a1[4] + 8) + 24) = a4;
  if (!v7)
  {
    __signVeridian_block_invoke_cold_2();
LABEL_8:
    v10 = v13;
    goto LABEL_5;
  }

  if (!v8)
  {
    __signVeridian_block_invoke_cold_1();
    goto LABEL_8;
  }

  *(*(a1[5] + 8) + 24) = v7;
  *(*(a1[6] + 8) + 24) = v9;
  v10 = handleForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    Length = CFDataGetLength(*(*(a1[6] + 8) + 24));
    LODWORD(v13) = 67109376;
    HIDWORD(v13) = a4;
    v14 = 2048;
    v15 = Length;
    _os_log_impl(&dword_1CEDC5000, v10, OS_LOG_TYPE_DEFAULT, "C API: Received response from ACCHWComponentAuth, authError is %x:Size:%ld", &v13, 0x12u);
  }

LABEL_5:

  dispatch_semaphore_signal(*(*(a1[7] + 8) + 40));
  v12 = *MEMORY[0x1E69E9840];
}

BOOL OUTLINED_FUNCTION_4(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_5(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_6(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_7(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_1CEDD6360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CEDD6638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CEDD68C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CEDD6BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CEDD7B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1CEDD80C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 176), 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1CEDD86E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 176), 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1CEDE4294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose((v43 - 240), 8);
  _Unwind_Resume(a1);
}