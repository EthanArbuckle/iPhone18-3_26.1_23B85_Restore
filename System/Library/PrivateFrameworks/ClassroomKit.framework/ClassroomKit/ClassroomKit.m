id _CRKLogASM()
{
  if (_CRKLogASM_onceToken_1 != -1)
  {
    _CRKLogASM_cold_1();
  }

  v1 = _CRKLogASM_logObj_1;

  return v1;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

void sub_243556804(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x243556698);
  }

  _Unwind_Resume(exception_object);
}

id _CRKLogASM_0()
{
  if (_CRKLogASM_onceToken_2 != -1)
  {
    _CRKLogASM_cold_1_0();
  }

  v1 = _CRKLogASM_logObj_2;

  return v1;
}

uint64_t CRKLogAddStateHandler(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v9 = a3;
  v4 = v8;
  v5 = v9;
  v6 = os_state_add_handler();

  return v6;
}

_DWORD *__CRKLogAddStateHandler_block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  if (v2)
  {
    v13 = 0;
    v3 = [MEMORY[0x277CCAC58] dataWithPropertyList:v2 format:200 options:0 error:&v13];
    v4 = v13;
    if (v4)
    {
      v5 = _CRKLogGeneral();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __CRKLogAddStateHandler_block_invoke_cold_1(v4, v5);
      }

      v6 = 0;
    }

    else
    {
      v7 = malloc_type_calloc(1uLL, [v3 length] + 200, 0x1000040BEF03554uLL);
      v6 = v7;
      if (!v7)
      {
LABEL_15:

        goto LABEL_16;
      }

      *v7 = 1;
      v7[1] = [v3 length];
      v8 = [*(a1 + 32) dataUsingEncoding:4];
      v5 = v8;
      if (v8)
      {
        v9 = [v8 bytes];
        v10 = [v5 length];
        if (v10 >= 0x3F)
        {
          v11 = 63;
        }

        else
        {
          v11 = v10;
        }

        memcpy(v6 + 34, v9, v11);
      }

      memcpy(v6 + 50, [v3 bytes], objc_msgSend(v3, "length"));
    }

    goto LABEL_15;
  }

  v6 = 0;
LABEL_16:

  return v6;
}

id _CRKLogGeneral()
{
  if (_CRKLogGeneral_onceToken != -1)
  {
    _CRKLogGeneral_cold_1();
  }

  v1 = _CRKLogGeneral_logObj;

  return v1;
}

void CRTLog(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277CCACA8];
  v10 = a1;
  v11 = [[v9 alloc] initWithFormat:v10 arguments:&a9];

  v12 = _CRKLogGeneral();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = v11;
    _os_log_impl(&dword_243550000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v13 = MEMORY[0x277D85E08];
  fprintf(*MEMORY[0x277D85E08], "%s\n", [v11 UTF8String]);
  fflush(*v13);
}

void CRTLogError(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x277CCACA8];
  v10 = a1;
  v11 = [[v9 alloc] initWithFormat:v10 arguments:&a9];

  v12 = _CRKLogGeneral();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    CRTLogError_cold_1(v11, v12);
  }

  fprintf(*MEMORY[0x277D85DF8], "%s\n", [v11 UTF8String]);
}

id _CRKLogASM_1()
{
  if (_CRKLogASM_onceToken_3 != -1)
  {
    _CRKLogASM_cold_1_1();
  }

  v1 = _CRKLogASM_logObj_3;

  return v1;
}

id _CRKLogASM_2()
{
  if (_CRKLogASM_onceToken_4 != -1)
  {
    _CRKLogASM_cold_1_2();
  }

  v1 = _CRKLogASM_logObj_4;

  return v1;
}

uint64_t OUTLINED_FUNCTION_1_1()
{

  return objc_opt_class();
}

id _CRKLogASM_3()
{
  if (_CRKLogASM_onceToken_5 != -1)
  {
    _CRKLogASM_cold_1_3();
  }

  v1 = _CRKLogASM_logObj_5;

  return v1;
}

void sub_24355AF8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _CRKLogGeneral_0()
{
  if (_CRKLogGeneral_onceToken_0 != -1)
  {
    _CRKLogGeneral_cold_1_0();
  }

  v1 = _CRKLogGeneral_logObj_0;

  return v1;
}

void OUTLINED_FUNCTION_0_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void __crk_tokenized_properties_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCA900];
  v6 = a2;
  v8 = [v5 whitespaceAndNewlineCharacterSet];
  v7 = [v6 stringByTrimmingCharactersInSet:v8];

  [*(a1 + 32) setObject:v7 atIndexedSubscript:a3];
}

void __crk_tokenized_properties_block_invoke_0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCA900];
  v6 = a2;
  v8 = [v5 whitespaceAndNewlineCharacterSet];
  v7 = [v6 stringByTrimmingCharactersInSet:v8];

  [*(a1 + 32) setObject:v7 atIndexedSubscript:a3];
}

id _CRKLogASM_4()
{
  if (_CRKLogASM_onceToken_6 != -1)
  {
    _CRKLogASM_cold_1_4();
  }

  v1 = _CRKLogASM_logObj_6;

  return v1;
}

uint64_t CRKIsClassroomBundleIdentifier(void *a1)
{
  v1 = a1;
  v2 = CRKAllClassroomBundleIdentifiers();
  v3 = [v2 containsObject:v1];

  return v3;
}

id CRKAllClassroomBundleIdentifiers()
{
  v2[2] = *MEMORY[0x277D85DE8];
  v2[0] = @"com.apple.classroom";
  v2[1] = @"com.apple.macos.classroom";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:2];

  return v0;
}

void __crk_tokenized_properties_block_invoke_1(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCA900];
  v6 = a2;
  v8 = [v5 whitespaceAndNewlineCharacterSet];
  v7 = [v6 stringByTrimmingCharactersInSet:v8];

  [*(a1 + 32) setObject:v7 atIndexedSubscript:a3];
}

void __crk_tokenized_properties_block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCA900];
  v6 = a2;
  v8 = [v5 whitespaceAndNewlineCharacterSet];
  v7 = [v6 stringByTrimmingCharactersInSet:v8];

  [*(a1 + 32) setObject:v7 atIndexedSubscript:a3];
}

id _CRKLogBluetooth()
{
  if (_CRKLogBluetooth_onceToken != -1)
  {
    _CRKLogBluetooth_cold_1();
  }

  v1 = _CRKLogBluetooth_logObj;

  return v1;
}

id _CRKLogASM_5()
{
  if (_CRKLogASM_onceToken_7 != -1)
  {
    _CRKLogASM_cold_1_5();
  }

  v1 = _CRKLogASM_logObj_7;

  return v1;
}

id _CRKLogASM_6()
{
  if (_CRKLogASM_onceToken_8 != -1)
  {
    _CRKLogASM_cold_1_6();
  }

  v1 = _CRKLogASM_logObj_8;

  return v1;
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id JSONStringRepresentation(uint64_t a1, unsigned int a2, int a3)
{
  if (a3)
  {
    v3 = a2 | 2;
  }

  else
  {
    v3 = a2;
  }

  v9 = 0;
  v4 = [MEMORY[0x277CCAAA0] dataWithJSONObject:a1 options:v3 error:&v9];
  v5 = v9;
  if (v5)
  {
    if (_CRKLogGeneral_onceToken_1 != -1)
    {
      JSONStringRepresentation_cold_1();
    }

    v6 = _CRKLogGeneral_logObj_1;
    if (os_log_type_enabled(_CRKLogGeneral_logObj_1, OS_LOG_TYPE_ERROR))
    {
      JSONStringRepresentation_cold_2(v6, v5);
    }
  }

  if ([v4 length])
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v4 encoding:4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_24356A2E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __crk_tokenized_properties_block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCA900];
  v6 = a2;
  v8 = [v5 whitespaceAndNewlineCharacterSet];
  v7 = [v6 stringByTrimmingCharactersInSet:v8];

  [*(a1 + 32) setObject:v7 atIndexedSubscript:a3];
}

void __crk_tokenized_properties_block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCA900];
  v6 = a2;
  v8 = [v5 whitespaceAndNewlineCharacterSet];
  v7 = [v6 stringByTrimmingCharactersInSet:v8];

  [*(a1 + 32) setObject:v7 atIndexedSubscript:a3];
}

double CRKRectFromDictionary(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"x"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  [v4 doubleValue];
  v6 = v5;

  v7 = [v1 objectForKeyedSubscript:@"y"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 doubleValue];
  v10 = [v1 objectForKeyedSubscript:@"width"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  [v12 doubleValue];
  v13 = [v1 objectForKeyedSubscript:@"height"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  [v15 doubleValue];
  return v6;
}

id CRKDictionaryFromRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v15[4] = *MEMORY[0x277D85DE8];
  v14[0] = @"x";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v15[0] = v8;
  v14[1] = @"y";
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
  v15[1] = v9;
  v14[2] = @"width";
  v17.origin.x = a1;
  v17.origin.y = a2;
  v17.size.width = a3;
  v17.size.height = a4;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:CGRectGetWidth(v17)];
  v15[2] = v10;
  v14[3] = @"height";
  v18.origin.x = a1;
  v18.origin.y = a2;
  v18.size.width = a3;
  v18.size.height = a4;
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:CGRectGetHeight(v18)];
  v15[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];

  return v12;
}

unint64_t CRKRectHash(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = a1 ^ a2 ^ CGRectGetWidth(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  return v8 ^ CGRectGetHeight(v10);
}

id _CRKLogGeneral_1()
{
  if (_CRKLogGeneral_onceToken_5 != -1)
  {
    _CRKLogGeneral_cold_1_1();
  }

  v1 = _CRKLogGeneral_logObj_5;

  return v1;
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void __crk_tokenized_properties_block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCA900];
  v6 = a2;
  v8 = [v5 whitespaceAndNewlineCharacterSet];
  v7 = [v6 stringByTrimmingCharactersInSet:v8];

  [*(a1 + 32) setObject:v7 atIndexedSubscript:a3];
}

void __crk_tokenized_properties_block_invoke_6(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCA900];
  v6 = a2;
  v8 = [v5 whitespaceAndNewlineCharacterSet];
  v7 = [v6 stringByTrimmingCharactersInSet:v8];

  [*(a1 + 32) setObject:v7 atIndexedSubscript:a3];
}

void __crk_tokenized_properties_block_invoke_7(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCA900];
  v6 = a2;
  v8 = [v5 whitespaceAndNewlineCharacterSet];
  v7 = [v6 stringByTrimmingCharactersInSet:v8];

  [*(a1 + 32) setObject:v7 atIndexedSubscript:a3];
}

id _CRKLogASM_7()
{
  if (_CRKLogASM_onceToken_13 != -1)
  {
    _CRKLogASM_cold_1_7();
  }

  v1 = _CRKLogASM_logObj_13;

  return v1;
}

id _CRKLogSettings()
{
  if (_CRKLogSettings_onceToken != -1)
  {
    _CRKLogSettings_cold_1();
  }

  v1 = _CRKLogSettings_logObj;

  return v1;
}

id _CRKLogGeneral_2()
{
  if (_CRKLogGeneral_onceToken_7 != -1)
  {
    _CRKLogGeneral_cold_1_2();
  }

  v1 = _CRKLogGeneral_logObj_7;

  return v1;
}

id _CRKLogASM_8()
{
  if (_CRKLogASM_onceToken_14 != -1)
  {
    _CRKLogASM_cold_1_8();
  }

  v1 = _CRKLogASM_logObj_14;

  return v1;
}

void __crk_tokenized_properties_block_invoke_8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCA900];
  v6 = a2;
  v8 = [v5 whitespaceAndNewlineCharacterSet];
  v7 = [v6 stringByTrimmingCharactersInSet:v8];

  [*(a1 + 32) setObject:v7 atIndexedSubscript:a3];
}

id _CRKLogASM_9()
{
  if (_CRKLogASM_onceToken_15 != -1)
  {
    _CRKLogASM_cold_1_9();
  }

  v1 = _CRKLogASM_logObj_15;

  return v1;
}

void __crk_tokenized_properties_block_invoke_9(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCA900];
  v6 = a2;
  v8 = [v5 whitespaceAndNewlineCharacterSet];
  v7 = [v6 stringByTrimmingCharactersInSet:v8];

  [*(a1 + 32) setObject:v7 atIndexedSubscript:a3];
}

void sub_243584994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _CRKLogGeneral_3()
{
  if (_CRKLogGeneral_onceToken_9 != -1)
  {
    _CRKLogGeneral_cold_1_3();
  }

  v1 = _CRKLogGeneral_logObj_9;

  return v1;
}

void __crk_tokenized_properties_block_invoke_10(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCA900];
  v6 = a2;
  v8 = [v5 whitespaceAndNewlineCharacterSet];
  v7 = [v6 stringByTrimmingCharactersInSet:v8];

  [*(a1 + 32) setObject:v7 atIndexedSubscript:a3];
}

id _CRKLogBluetooth_0()
{
  if (_CRKLogBluetooth_onceToken_0 != -1)
  {
    _CRKLogBluetooth_cold_1_0();
  }

  v1 = _CRKLogBluetooth_logObj_0;

  return v1;
}

void OUTLINED_FUNCTION_0_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id extractErrorFromChange(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 status];
  if (v4 <= 2)
  {
    if (v4 < 2)
    {
      v5 = [MEMORY[0x277CCA890] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSError * _Nullable extractErrorFromChange(AVOutputContextDestinationChange * _Nonnull __strong, NSString * _Nullable __strong)"}];
      [v5 handleFailureInFunction:v6 file:@"CRKConcreteOutputDevice.m" lineNumber:71 description:{@"Should never receve this route setting status %ld", objc_msgSend(v3, "status")}];
LABEL_10:

      goto LABEL_11;
    }

    if (v4 == 2)
    {
LABEL_11:
      v8 = 0;
      goto LABEL_15;
    }

LABEL_9:
    v5 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSError * _Nullable extractErrorFromChange(AVOutputContextDestinationChange * _Nonnull __strong, NSString * _Nullable __strong)"}];
    [v5 handleFailureInFunction:v6 file:@"CRKConcreteOutputDevice.m" lineNumber:86 description:{@"Encountered unexpected change", v10}];
    goto LABEL_10;
  }

  if (v4 == 3)
  {
    v7 = 1;
  }

  else
  {
    if (v4 != 4)
    {
      goto LABEL_9;
    }

    if (a2)
    {
      v7 = 129;
    }

    else
    {
      v7 = 128;
    }
  }

  v8 = CRKErrorWithCodeAndUserInfo(v7, 0);
LABEL_15:

  return v8;
}

id _CRKLogASM_10()
{
  if (_CRKLogASM_onceToken_16 != -1)
  {
    _CRKLogASM_cold_1_10();
  }

  v1 = _CRKLogASM_logObj_16;

  return v1;
}

id CRKLocalizedSwiftStringFromTable(void *a1, void *a2)
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = a2;
  v5 = a1;
  v6 = [v3 bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:v5 value:&stru_285643BE8 table:v4];

  return v7;
}

void sub_24358C550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24358EBB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _CRKLogSession()
{
  if (_CRKLogSession_onceToken != -1)
  {
    _CRKLogSession_cold_1();
  }

  v1 = _CRKLogSession_logObj;

  return v1;
}

void sub_243592D90(void *a1, int a2)
{
  v3 = objc_begin_catch(a1);
  if (a2 == 2)
  {
    v4 = v3;
    v5 = _CRKLogGeneral_4();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[(CRKMDMIdentityProvider *)v4];
    }

    objc_end_catch();
    JUMPOUT(0x243592D40);
  }

  JUMPOUT(0x243592D44);
}

id _CRKLogGeneral_4()
{
  if (_CRKLogGeneral_onceToken_12 != -1)
  {
    _CRKLogGeneral_cold_1_4();
  }

  v1 = _CRKLogGeneral_logObj_12;

  return v1;
}

void sub_2435932A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_243593FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24359416C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _CRKLogASM_11()
{
  if (_CRKLogASM_onceToken_18 != -1)
  {
    _CRKLogASM_cold_1_11();
  }

  v1 = _CRKLogASM_logObj_18;

  return v1;
}

id _CRKLogASM_12()
{
  if (_CRKLogASM_onceToken_19 != -1)
  {
    _CRKLogASM_cold_1_12();
  }

  v1 = _CRKLogASM_logObj_19;

  return v1;
}

id _CRKLogBluetooth_1()
{
  if (_CRKLogBluetooth_onceToken_2 != -1)
  {
    _CRKLogBluetooth_cold_1_1();
  }

  v1 = _CRKLogBluetooth_logObj_2;

  return v1;
}

void sub_24359A6A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t CRKBoolCompare(int a1, int a2)
{
  v2 = 1;
  if (!a1)
  {
    v2 = -1;
  }

  if (a1 != a2)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t CRKIntegerCompare(uint64_t a1, uint64_t a2)
{
  v2 = 1;
  if (a1 <= a2)
  {
    v2 = -1;
  }

  if (a1 == a2)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

id _CRKLogGeneral_5()
{
  if (_CRKLogGeneral_onceToken_16 != -1)
  {
    _CRKLogGeneral_cold_1_5();
  }

  v1 = _CRKLogGeneral_logObj_16;

  return v1;
}

void __crk_tokenized_properties_block_invoke_11(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCA900];
  v6 = a2;
  v8 = [v5 whitespaceAndNewlineCharacterSet];
  v7 = [v6 stringByTrimmingCharactersInSet:v8];

  [*(a1 + 32) setObject:v7 atIndexedSubscript:a3];
}

void sub_2435A16AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _CRKLogGeneral_6()
{
  if (_CRKLogGeneral_onceToken_17 != -1)
  {
    _CRKLogGeneral_cold_1_6();
  }

  v1 = _CRKLogGeneral_logObj_17;

  return v1;
}

void sub_2435A1B58(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_2435A52A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _CRKLogOperation()
{
  if (_CRKLogOperation_onceToken != -1)
  {
    _CRKLogOperation_cold_1();
  }

  v1 = _CRKLogOperation_logObj;

  return v1;
}

void sub_2435AE260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _CRKLogGeneral_7()
{
  if (_CRKLogGeneral_onceToken_22 != -1)
  {
    _CRKLogGeneral_cold_1_7();
  }

  v1 = _CRKLogGeneral_logObj_22;

  return v1;
}

void sub_2435AE4EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_2435AE790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2435AFC60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2435AFE0C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

id _CRKLogSettings_0()
{
  if (_CRKLogSettings_onceToken_0 != -1)
  {
    _CRKLogSettings_cold_1_0();
  }

  v1 = _CRKLogSettings_logObj_0;

  return v1;
}

id _CRKLogOperation_0()
{
  if (_CRKLogOperation_onceToken_0 != -1)
  {
    _CRKLogOperation_cold_1_0();
  }

  v1 = _CRKLogOperation_logObj_0;

  return v1;
}

id _CRKLogGeneral_8()
{
  if (_CRKLogGeneral_onceToken_23 != -1)
  {
    _CRKLogGeneral_cold_1_8();
  }

  v1 = _CRKLogGeneral_logObj_23;

  return v1;
}

id _CRKLogOperation_1()
{
  if (_CRKLogOperation_onceToken_1 != -1)
  {
    _CRKLogOperation_cold_1_1();
  }

  v1 = _CRKLogOperation_logObj_1;

  return v1;
}

id _CRKLogGeneral_9()
{
  if (_CRKLogGeneral_onceToken_24 != -1)
  {
    _CRKLogGeneral_cold_1_9();
  }

  v1 = _CRKLogGeneral_logObj_24;

  return v1;
}

id _CRKLogASM_13()
{
  if (_CRKLogASM_onceToken_20 != -1)
  {
    _CRKLogASM_cold_1_13();
  }

  v1 = _CRKLogASM_logObj_20;

  return v1;
}

void sub_2435B7208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _CRKLogASM_14()
{
  if (_CRKLogASM_onceToken_21 != -1)
  {
    _CRKLogASM_cold_1_14();
  }

  v1 = _CRKLogASM_logObj_21;

  return v1;
}

void sub_2435B8500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _CRKLogASM_15()
{
  if (_CRKLogASM_onceToken_22 != -1)
  {
    _CRKLogASM_cold_1_15();
  }

  v1 = _CRKLogASM_logObj_22;

  return v1;
}

void sub_2435B9ED8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_2435BAC1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

id _CRKLogGeneral_10()
{
  if (_CRKLogGeneral_onceToken_26 != -1)
  {
    _CRKLogGeneral_cold_1_10();
  }

  v1 = _CRKLogGeneral_logObj_26;

  return v1;
}

id _CRKLogGeneral_11()
{
  if (_CRKLogGeneral_onceToken_27 != -1)
  {
    _CRKLogGeneral_cold_1_11();
  }

  v1 = _CRKLogGeneral_logObj_27;

  return v1;
}

void __crk_tokenized_properties_block_invoke_12(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCA900];
  v6 = a2;
  v8 = [v5 whitespaceAndNewlineCharacterSet];
  v7 = [v6 stringByTrimmingCharactersInSet:v8];

  [*(a1 + 32) setObject:v7 atIndexedSubscript:a3];
}

void __crk_tokenized_properties_block_invoke_13(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCA900];
  v6 = a2;
  v8 = [v5 whitespaceAndNewlineCharacterSet];
  v7 = [v6 stringByTrimmingCharactersInSet:v8];

  [*(a1 + 32) setObject:v7 atIndexedSubscript:a3];
}

void __crk_tokenized_properties_block_invoke_14(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCA900];
  v6 = a2;
  v8 = [v5 whitespaceAndNewlineCharacterSet];
  v7 = [v6 stringByTrimmingCharactersInSet:v8];

  [*(a1 + 32) setObject:v7 atIndexedSubscript:a3];
}

id _CRKLogBluetooth_2()
{
  if (_CRKLogBluetooth_onceToken_3 != -1)
  {
    _CRKLogBluetooth_cold_1_2();
  }

  v1 = _CRKLogBluetooth_logObj_3;

  return v1;
}

id _CRKLogASM_16()
{
  if (_CRKLogASM_onceToken_23 != -1)
  {
    _CRKLogASM_cold_1_16();
  }

  v1 = _CRKLogASM_logObj_23;

  return v1;
}

id _CRKLogSession_0()
{
  if (_CRKLogSession_onceToken_0 != -1)
  {
    _CRKLogSession_cold_1_0();
  }

  v1 = _CRKLogSession_logObj_0;

  return v1;
}

void sub_2435C305C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x20u);
}

id _CRKLogGeneral_12()
{
  if (_CRKLogGeneral_onceToken_28 != -1)
  {
    _CRKLogGeneral_cold_1_12();
  }

  v1 = _CRKLogGeneral_logObj_28;

  return v1;
}

void sub_2435C491C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _CRKLogASM_17()
{
  if (_CRKLogASM_onceToken_24 != -1)
  {
    _CRKLogASM_cold_1_17();
  }

  v1 = _CRKLogASM_logObj_24;

  return v1;
}

void __crk_tokenized_properties_block_invoke_15(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCA900];
  v6 = a2;
  v8 = [v5 whitespaceAndNewlineCharacterSet];
  v7 = [v6 stringByTrimmingCharactersInSet:v8];

  [*(a1 + 32) setObject:v7 atIndexedSubscript:a3];
}

void __crk_tokenized_properties_block_invoke_16(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCA900];
  v6 = a2;
  v8 = [v5 whitespaceAndNewlineCharacterSet];
  v7 = [v6 stringByTrimmingCharactersInSet:v8];

  [*(a1 + 32) setObject:v7 atIndexedSubscript:a3];
}

id _CRKLogGeneral_13()
{
  if (_CRKLogGeneral_onceToken_29 != -1)
  {
    _CRKLogGeneral_cold_1_13();
  }

  v1 = _CRKLogGeneral_logObj_29;

  return v1;
}

__CFString *NSStringFromCRKBookType(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_278DC2D88[a1];
  }
}

__CFString *CRKStringForConfigurationType(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_278DC2E88[a1];
  }
}

id CRKFoundationClasses()
{
  if (CRKFoundationClasses_onceToken != -1)
  {
    CRKFoundationClasses_cold_1();
  }

  v1 = CRKFoundationClasses_result;

  return v1;
}

uint64_t __CRKFoundationClasses_block_invoke()
{
  v11 = MEMORY[0x277CBEB98];
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  CRKFoundationClasses_result = [v11 setWithObjects:{v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

id _CRKLogASM_18()
{
  if (_CRKLogASM_onceToken_27 != -1)
  {
    _CRKLogASM_cold_1_18();
  }

  v1 = _CRKLogASM_logObj_27;

  return v1;
}

id _CRKLogGeneral_14()
{
  if (_CRKLogGeneral_onceToken_30 != -1)
  {
    _CRKLogGeneral_cold_1_14();
  }

  v1 = _CRKLogGeneral_logObj_30;

  return v1;
}

id _CRKLogASM_19()
{
  if (_CRKLogASM_onceToken_28 != -1)
  {
    _CRKLogASM_cold_1_19();
  }

  v1 = _CRKLogASM_logObj_28;

  return v1;
}

__CFString *NSStringFromCRKIDSAccountStateSummary(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"UNKNOWN-ThisIsABug";
  }

  else
  {
    return off_278DC2FB8[a1];
  }
}

void __crk_tokenized_properties_block_invoke_17(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCA900];
  v6 = a2;
  v8 = [v5 whitespaceAndNewlineCharacterSet];
  v7 = [v6 stringByTrimmingCharactersInSet:v8];

  [*(a1 + 32) setObject:v7 atIndexedSubscript:a3];
}

void _BOMCopierDidGenerateFatalError(uint64_t a1, uint64_t a2)
{
  v3 = BOMCopierUserData();
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  v6 = [v4 errorFromBOMCopierStatus:1 message:v5];

  v7 = _CRKLogOperation_2();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    _BOMCopierDidGenerateFatalError_cold_1(v3, v6, v7);
  }

  [v3 setStashedError:v6];
}

void _BOMCopierDidGenerateFatalFileError(uint64_t a1, uint64_t a2, int a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = BOMCopierUserData();
  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:a3 userInfo:0];
  v7 = _CRKLogOperation_2();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
    v9 = [v6 verboseDescription];
    v10 = 138543874;
    v11 = v5;
    v12 = 2114;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    _os_log_error_impl(&dword_243550000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Encountered FATAL file error for path %{public}@: %{public}@", &v10, 0x20u);
  }

  [v5 setStashedError:v6];
}

uint64_t _BOMCopierDidGenerateFileError(uint64_t a1, uint64_t a2, int a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = BOMCopierUserData();
  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:a3 userInfo:0];
  v7 = _CRKLogOperation_2();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
    v10 = [v6 verboseDescription];
    v11 = 138543874;
    v12 = v5;
    v13 = 2114;
    v14 = v9;
    v15 = 2114;
    v16 = v10;
    _os_log_error_impl(&dword_243550000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Encountered file error for path %{public}@: %{public}@", &v11, 0x20u);
  }

  [v5 setStashedError:v6];
  return 2;
}

uint64_t _BOMCopierDidGenerateFileConflictError(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = BOMCopierUserData();
  v4 = _CRKLogOperation_2();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
    *buf = 138543618;
    v17 = v3;
    v18 = 2114;
    v19 = v5;
    _os_log_impl(&dword_243550000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Encountered file conflict for path %{public}@", buf, 0x16u);
  }

  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  v15 = 0;
  v8 = [v6 removeItemAtPath:v7 error:&v15];
  v9 = v15;

  if (v8)
  {
    v10 = 3;
  }

  else
  {
    [v3 setStashedError:v9];
    v11 = _CRKLogOperation_2();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
      v14 = [v9 verboseDescription];
      *buf = 138543874;
      v17 = v3;
      v18 = 2114;
      v19 = v13;
      v20 = 2114;
      v21 = v14;
      _os_log_error_impl(&dword_243550000, v11, OS_LOG_TYPE_ERROR, "%{public}@: Failed to resolve file conflict by deleting existing file at path %{public}@. Error: %{public}@", buf, 0x20u);
    }

    v10 = 2;
  }

  return v10;
}

id _CRKLogOperation_2()
{
  if (_CRKLogOperation_onceToken_2 != -1)
  {
    _CRKLogOperation_cold_1_2();
  }

  v1 = _CRKLogOperation_logObj_2;

  return v1;
}

id _CRKLogGeneral_15()
{
  if (_CRKLogGeneral_onceToken_32 != -1)
  {
    _CRKLogGeneral_cold_1_15();
  }

  v1 = _CRKLogGeneral_logObj_32;

  return v1;
}

void __crk_tokenized_properties_block_invoke_18(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCA900];
  v6 = a2;
  v8 = [v5 whitespaceAndNewlineCharacterSet];
  v7 = [v6 stringByTrimmingCharactersInSet:v8];

  [*(a1 + 32) setObject:v7 atIndexedSubscript:a3];
}

void sub_2435D5B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2435D7C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2435D7E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

id _CRKLogGeneral_16()
{
  if (_CRKLogGeneral_onceToken_35 != -1)
  {
    _CRKLogGeneral_cold_1_16();
  }

  v1 = _CRKLogGeneral_logObj_35;

  return v1;
}

void sub_2435D8F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2435D9118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _CRKLogGeneral_17()
{
  if (_CRKLogGeneral_onceToken_36 != -1)
  {
    _CRKLogGeneral_cold_1_17();
  }

  v1 = _CRKLogGeneral_logObj_36;

  return v1;
}

id _CRKLogGeneral_18()
{
  if (_CRKLogGeneral_onceToken_37 != -1)
  {
    _CRKLogGeneral_cold_1_18();
  }

  v1 = _CRKLogGeneral_logObj_37;

  return v1;
}

void sub_2435E4048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

id CRKErrorWithCodeAndUserInfo(uint64_t a1, void *a2)
{
  v230 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (CRKErrorWithCodeAndUserInfo_onceToken != -1)
  {
    CRKErrorWithCodeAndUserInfo_cold_1();
  }

  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCA450]];
  if (v4)
  {
    v5 = v4;
    v6 = [v3 objectForKeyedSubscript:@"NSDescriptionKey"];

    if (v6)
    {
      goto LABEL_5;
    }
  }

  if (a1 > 299)
  {
    switch(a1)
    {
      case 300:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The AirPlay route is out of range.";
        break;
      case 350:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"There is no active instructor certificate to vend.";
        break;
      case 351:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The Books Service was unable to parse a book's table of contents.";
        break;
      default:
LABEL_5:
        v7 = v3;
        v8 = 0;
        v9 = 0;
        goto LABEL_253;
    }

LABEL_250:
    v8 = [v11 cat_localizedStringsForKey:v12 value:&stru_285643BE8 table:@"CRKErrors"];
    v9 = 0;
  }

  else
  {
    v10 = v3;
    switch(a1)
    {
      case 1:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"An unknown error occurred.";
        goto LABEL_250;
      case 2:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"A parameter was invalid.";
        goto LABEL_250;
      case 3:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The maximum number of retries has been exceeded.";
        goto LABEL_250;
      case 4:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The device could not be found.";
        goto LABEL_250;
      case 5:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The provided item cannot be modified.";
        goto LABEL_250;
      case 6:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The instructor is out of range.";
        goto LABEL_250;
      case 7:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The configuration could not be written.";
        goto LABEL_250;
      case 8:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The resource credential could not be retrieved.";
        goto LABEL_250;
      case 9:
        v162 = a1;
        v13 = objc_opt_new();
        [CRKErrorWithCodeAndUserInfo_bundle cat_localizedStringsForKey:@"Failed to create user notification (error code %@)." value:&stru_285643BE8 table:@"CRKErrors"];
        v213 = 0u;
        v214 = 0u;
        v215 = 0u;
        v9 = v216 = 0u;
        v91 = [v9 countByEnumeratingWithState:&v213 objects:v229 count:16];
        if (v91)
        {
          v92 = v91;
          v93 = *v214;
          do
          {
            for (i = 0; i != v92; ++i)
            {
              if (*v214 != v93)
              {
                objc_enumerationMutation(v9);
              }

              v95 = *(*(&v213 + 1) + 8 * i);
              v96 = [v9 objectForKeyedSubscript:v95];
              v97 = MEMORY[0x277CCACA8];
              v98 = [v10 objectForKeyedSubscript:@"kCRKCFUserNotificationErrorCodeKey"];
              v99 = [v97 stringWithValidatedFormat:v96 validFormatSpecifiers:@"%@" error:0, v98];
              v100 = v99;
              if (v99)
              {
                v101 = v99;
              }

              else
              {
                v101 = @"FORMAT SPECIFIER ERROR";
              }

              [v13 setObject:v101 forKeyedSubscript:v95];
            }

            v92 = [v9 countByEnumeratingWithState:&v213 objects:v229 count:16];
          }

          while (v92);
        }

        v3 = v10;
        goto LABEL_240;
      case 10:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"Failed to create run loop source.";
        goto LABEL_250;
      case 11:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"Failed to create certificate.";
        goto LABEL_250;
      case 12:
        v162 = a1;
        v13 = objc_opt_new();
        [CRKErrorWithCodeAndUserInfo_bundle cat_localizedStringsForKey:@"“%@” not found." value:&stru_285643BE8 table:@"CRKErrors"];
        v209 = 0u;
        v210 = 0u;
        v211 = 0u;
        v9 = v212 = 0u;
        v69 = [v9 countByEnumeratingWithState:&v209 objects:v228 count:16];
        if (v69)
        {
          v70 = v69;
          v71 = *v210;
          do
          {
            for (j = 0; j != v70; ++j)
            {
              if (*v210 != v71)
              {
                objc_enumerationMutation(v9);
              }

              v73 = *(*(&v209 + 1) + 8 * j);
              v74 = [v9 objectForKeyedSubscript:v73];
              v75 = MEMORY[0x277CCACA8];
              v76 = [v3 objectForKeyedSubscript:@"kCRKItemNameErrorKey"];
              v77 = [v75 stringWithValidatedFormat:v74 validFormatSpecifiers:@"%@" error:0, v76];
              v78 = v77;
              if (v77)
              {
                v79 = v77;
              }

              else
              {
                v79 = @"FORMAT SPECIFIER ERROR";
              }

              [v13 setObject:v79 forKeyedSubscript:v73];

              v3 = v10;
            }

            v70 = [v9 countByEnumeratingWithState:&v209 objects:v228 count:16];
          }

          while (v70);
        }

        goto LABEL_239;
      case 13:
        v162 = a1;
        v13 = objc_opt_new();
        [CRKErrorWithCodeAndUserInfo_bundle cat_localizedStringsForKey:@"No app handling URL “%@” was found." value:&stru_285643BE8 table:@"CRKErrors"];
        v205 = 0u;
        v206 = 0u;
        v207 = 0u;
        v9 = v208 = 0u;
        v80 = [v9 countByEnumeratingWithState:&v205 objects:v227 count:16];
        if (v80)
        {
          v81 = v80;
          v82 = *v206;
          do
          {
            for (k = 0; k != v81; ++k)
            {
              if (*v206 != v82)
              {
                objc_enumerationMutation(v9);
              }

              v84 = *(*(&v205 + 1) + 8 * k);
              v85 = [v9 objectForKeyedSubscript:v84];
              v86 = MEMORY[0x277CCACA8];
              v87 = [v3 objectForKeyedSubscript:@"kCRKURLStringErrorKey"];
              v88 = [v86 stringWithValidatedFormat:v85 validFormatSpecifiers:@"%@" error:0, v87];
              v89 = v88;
              if (v88)
              {
                v90 = v88;
              }

              else
              {
                v90 = @"FORMAT SPECIFIER ERROR";
              }

              [v13 setObject:v90 forKeyedSubscript:v84];

              v3 = v10;
            }

            v81 = [v9 countByEnumeratingWithState:&v205 objects:v227 count:16];
          }

          while (v81);
        }

        goto LABEL_239;
      case 14:
        v162 = a1;
        v13 = objc_opt_new();
        [CRKErrorWithCodeAndUserInfo_bundle cat_localizedStringsForKey:@"“%@” is an invalid session identifier." value:&stru_285643BE8 table:@"CRKErrors"];
        v201 = 0u;
        v202 = 0u;
        v203 = 0u;
        v9 = v204 = 0u;
        v102 = [v9 countByEnumeratingWithState:&v201 objects:v226 count:16];
        if (v102)
        {
          v103 = v102;
          v104 = *v202;
          do
          {
            for (m = 0; m != v103; ++m)
            {
              if (*v202 != v104)
              {
                objc_enumerationMutation(v9);
              }

              v106 = *(*(&v201 + 1) + 8 * m);
              v107 = [v9 objectForKeyedSubscript:v106];
              v108 = MEMORY[0x277CCACA8];
              v109 = [v3 objectForKeyedSubscript:@"kCRKSessionIdentifierStringErrorKey"];
              v110 = [v108 stringWithValidatedFormat:v107 validFormatSpecifiers:@"%@" error:0, v109];
              v111 = v110;
              if (v110)
              {
                v112 = v110;
              }

              else
              {
                v112 = @"FORMAT SPECIFIER ERROR";
              }

              [v13 setObject:v112 forKeyedSubscript:v106];

              v3 = v10;
            }

            v103 = [v9 countByEnumeratingWithState:&v201 objects:v226 count:16];
          }

          while (v103);
        }

        goto LABEL_239;
      case 15:
        v162 = a1;
        v13 = objc_opt_new();
        [CRKErrorWithCodeAndUserInfo_bundle cat_localizedStringsForKey:@"Session “%@” is not active." value:&stru_285643BE8 table:@"CRKErrors"];
        v197 = 0u;
        v198 = 0u;
        v199 = 0u;
        v9 = v200 = 0u;
        v36 = [v9 countByEnumeratingWithState:&v197 objects:v225 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v198;
          do
          {
            for (n = 0; n != v37; ++n)
            {
              if (*v198 != v38)
              {
                objc_enumerationMutation(v9);
              }

              v40 = *(*(&v197 + 1) + 8 * n);
              v41 = [v9 objectForKeyedSubscript:v40];
              v42 = MEMORY[0x277CCACA8];
              v43 = [v3 objectForKeyedSubscript:@"kCRKSessionIdentifierStringErrorKey"];
              v44 = [v42 stringWithValidatedFormat:v41 validFormatSpecifiers:@"%@" error:0, v43];
              v45 = v44;
              if (v44)
              {
                v46 = v44;
              }

              else
              {
                v46 = @"FORMAT SPECIFIER ERROR";
              }

              [v13 setObject:v46 forKeyedSubscript:v40];

              v3 = v10;
            }

            v37 = [v9 countByEnumeratingWithState:&v197 objects:v225 count:16];
          }

          while (v37);
        }

        goto LABEL_239;
      case 16:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"No enrollment record found.";
        goto LABEL_250;
      case 17:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"Identity certificate not available.";
        goto LABEL_250;
      case 18:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The user declined to receive the item.";
        goto LABEL_250;
      case 19:
        v162 = a1;
        v13 = objc_opt_new();
        [CRKErrorWithCodeAndUserInfo_bundle cat_localizedStringsForKey:@"File path “%@” is invalid." value:&stru_285643BE8 table:@"CRKErrors"];
        v193 = 0u;
        v194 = 0u;
        v195 = 0u;
        v9 = v196 = 0u;
        v58 = [v9 countByEnumeratingWithState:&v193 objects:v224 count:16];
        if (v58)
        {
          v59 = v58;
          v60 = *v194;
          do
          {
            for (ii = 0; ii != v59; ++ii)
            {
              if (*v194 != v60)
              {
                objc_enumerationMutation(v9);
              }

              v62 = *(*(&v193 + 1) + 8 * ii);
              v63 = [v9 objectForKeyedSubscript:v62];
              v64 = MEMORY[0x277CCACA8];
              v65 = [v3 objectForKeyedSubscript:@"kCRKFilePathErrorKey"];
              v66 = [v64 stringWithValidatedFormat:v63 validFormatSpecifiers:@"%@" error:0, v65];
              v67 = v66;
              if (v66)
              {
                v68 = v66;
              }

              else
              {
                v68 = @"FORMAT SPECIFIER ERROR";
              }

              [v13 setObject:v68 forKeyedSubscript:v62];

              v3 = v10;
            }

            v59 = [v9 countByEnumeratingWithState:&v193 objects:v224 count:16];
          }

          while (v59);
        }

        goto LABEL_239;
      case 20:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"Failed to add certificate to keychain.";
        goto LABEL_250;
      case 21:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"VoiceOver is enabled.";
        goto LABEL_250;
      case 22:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The resource is invalid.";
        goto LABEL_250;
      case 23:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The security level of the user's account is not HSA2.";
        goto LABEL_250;
      case 24:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The user's account is not eligible for the requested feature.";
        goto LABEL_250;
      case 25:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"Could not present a UI alert.";
        goto LABEL_250;
      case 26:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The workspace failed to open the URL.";
        goto LABEL_250;
      case 27:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"Failed to add a new Classroom identity to the keychain.";
        goto LABEL_250;
      case 28:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"Failed to remove a Classroom identity from the keychain.";
        goto LABEL_250;
      case 29:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"Multiple errors exist in the underlying error.";
        goto LABEL_250;
      case 30:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"Failed to enroll in course.";
        goto LABEL_250;
      case 31:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The attempted action is unsupported in the simulator.";
        goto LABEL_250;
      case 32:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The operation timed out.";
        goto LABEL_250;
      case 33:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The certificate is temporally invalid.";
        goto LABEL_250;
      case 34:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The common name of the certificate is malformed.";
        goto LABEL_250;
      case 35:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"There are no Apple Accounts.";
        goto LABEL_250;
      case 36:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The user identifier contained in the certificate does not match the expected user identifier.";
        goto LABEL_250;
      case 37:
        v162 = a1;
        v13 = objc_opt_new();
        [CRKErrorWithCodeAndUserInfo_bundle cat_localizedStringsForKey:@"Property “%@” was never retrieved." value:&stru_285643BE8 table:@"CRKErrors"];
        v189 = 0u;
        v190 = 0u;
        v191 = 0u;
        v9 = v192 = 0u;
        v47 = [v9 countByEnumeratingWithState:&v189 objects:v223 count:16];
        if (v47)
        {
          v48 = v47;
          v49 = *v190;
          do
          {
            for (jj = 0; jj != v48; ++jj)
            {
              if (*v190 != v49)
              {
                objc_enumerationMutation(v9);
              }

              v51 = *(*(&v189 + 1) + 8 * jj);
              v52 = [v9 objectForKeyedSubscript:v51];
              v53 = MEMORY[0x277CCACA8];
              v54 = [v3 objectForKeyedSubscript:@"kCRKPropertyNameErrorKey"];
              v55 = [v53 stringWithValidatedFormat:v52 validFormatSpecifiers:@"%@" error:0, v54];
              v56 = v55;
              if (v55)
              {
                v57 = v55;
              }

              else
              {
                v57 = @"FORMAT SPECIFIER ERROR";
              }

              [v13 setObject:v57 forKeyedSubscript:v51];

              v3 = v10;
            }

            v48 = [v9 countByEnumeratingWithState:&v189 objects:v223 count:16];
          }

          while (v48);
        }

        goto LABEL_239;
      case 38:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The instructor is quarantined and not permitted to perform this operation.";
        goto LABEL_250;
      case 39:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"A required primitive subsystem is missing.";
        goto LABEL_250;
      case 40:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The public key could not be extracted.";
        goto LABEL_250;
      case 41:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The user canceled the credential renewal attempt.";
        goto LABEL_250;
      case 42:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The credential renewal attempt failed.";
        goto LABEL_250;
      case 43:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"Credential renewal has been rate limited.";
        goto LABEL_250;
      case 44:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The account needs more time to process the results of the sign-in.";
        goto LABEL_250;
      case 45:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The status for the IDS ID is unknown. Message sending may or may not succeed.";
        goto LABEL_250;
      case 46:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The status for the IDS ID is invalid. Message sending will not succeed.";
        goto LABEL_250;
      case 47:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The requested action is already in progress.";
        goto LABEL_250;
      case 51:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"Partial error from iCloud";
        goto LABEL_250;
      case 52:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"Zone does not exist for iCloud operation";
        goto LABEL_250;
      case 53:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"Requested item is not found on iCloud";
        goto LABEL_250;
      case 54:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"User not signed into iCloud";
        goto LABEL_250;
      case 55:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"iCloud server unreachable";
        goto LABEL_250;
      case 56:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"This should never happen, error handling must be updated";
        goto LABEL_250;
      case 57:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"Releasing resources before they are uploaded to iCloud";
        goto LABEL_250;
      case 58:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"App is too far out of date to interact with iCloud server";
        goto LABEL_250;
      case 59:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"Small hiccup on iCloud server, try the operation again";
        goto LABEL_250;
      case 60:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The syncing manager is failing to handle this error";
        goto LABEL_250;
      case 61:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The task is too large for a single iCloud transaction. Divide work in half and try again";
        goto LABEL_250;
      case 62:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"Nonrecoverable iCloud syncing failure";
        goto LABEL_250;
      case 63:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"iCloud record modification race";
        goto LABEL_250;
      case 64:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"Server token is out of date. Pull update from iCloud";
        goto LABEL_250;
      case 65:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"Could not establish a push connection for iCloud container";
        goto LABEL_250;
      case 66:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"Could not make the requested engine transition from the current state";
        goto LABEL_250;
      case 67:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"Application could not be made visible.";
        goto LABEL_250;
      case 101:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The instructor extension could not be found.";
        goto LABEL_250;
      case 102:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The device's screen is off.";
        goto LABEL_250;
      case 103:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"BTLE not available on this device.";
        goto LABEL_250;
      case 104:
        v162 = a1;
        v13 = objc_opt_new();
        [CRKErrorWithCodeAndUserInfo_bundle cat_localizedStringsForKey:@"A user with the identifier (%@) could not be found." value:&stru_285643BE8 table:@"CRKErrors"];
        v169 = 0u;
        v170 = 0u;
        v171 = 0u;
        v9 = v172 = 0u;
        v124 = [v9 countByEnumeratingWithState:&v169 objects:v218 count:16];
        if (v124)
        {
          v125 = v124;
          v126 = *v170;
          do
          {
            for (kk = 0; kk != v125; ++kk)
            {
              if (*v170 != v126)
              {
                objc_enumerationMutation(v9);
              }

              v128 = *(*(&v169 + 1) + 8 * kk);
              v129 = [v9 objectForKeyedSubscript:v128];
              v130 = MEMORY[0x277CCACA8];
              v131 = [v3 objectForKeyedSubscript:@"kCRKInvalidIdentifierErrorKey"];
              v132 = [v130 stringWithValidatedFormat:v129 validFormatSpecifiers:@"%@" error:0, v131];
              v133 = v132;
              if (v132)
              {
                v134 = v132;
              }

              else
              {
                v134 = @"FORMAT SPECIFIER ERROR";
              }

              [v13 setObject:v134 forKeyedSubscript:v128];

              v3 = v10;
            }

            v125 = [v9 countByEnumeratingWithState:&v169 objects:v218 count:16];
          }

          while (v125);
        }

        goto LABEL_239;
      case 105:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"An error occured while trying to save the user.";
        goto LABEL_250;
      case 106:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"A user is not logged in.";
        goto LABEL_250;
      case 107:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The device is locked.";
        goto LABEL_250;
      case 108:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"Feature is restricted by profile.";
        goto LABEL_250;
      case 109:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"An error occurred when obtaining permission to perform the request.";
        goto LABEL_250;
      case 110:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The user denied permission to perform the request.";
        goto LABEL_250;
      case 111:
        v162 = a1;
        v13 = objc_opt_new();
        [CRKErrorWithCodeAndUserInfo_bundle cat_localizedStringsForKey:@"Feature “%@” is not modifiable." value:&stru_285643BE8 table:@"CRKErrors"];
        v165 = 0u;
        v166 = 0u;
        v167 = 0u;
        v9 = v168 = 0u;
        v146 = [v9 countByEnumeratingWithState:&v165 objects:v217 count:16];
        if (v146)
        {
          v147 = v146;
          v148 = *v166;
          do
          {
            for (mm = 0; mm != v147; ++mm)
            {
              if (*v166 != v148)
              {
                objc_enumerationMutation(v9);
              }

              v150 = *(*(&v165 + 1) + 8 * mm);
              v151 = [v9 objectForKeyedSubscript:v150];
              v152 = MEMORY[0x277CCACA8];
              v153 = [v3 objectForKeyedSubscript:@"kCRKFeatureErrorKey"];
              v154 = [v152 stringWithValidatedFormat:v151 validFormatSpecifiers:@"%@" error:0, v153];
              v155 = v154;
              if (v154)
              {
                v156 = v154;
              }

              else
              {
                v156 = @"FORMAT SPECIFIER ERROR";
              }

              [v13 setObject:v156 forKeyedSubscript:v150];

              v3 = v10;
            }

            v147 = [v9 countByEnumeratingWithState:&v165 objects:v217 count:16];
          }

          while (v147);
        }

        goto LABEL_239;
      case 112:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The operation is not implemented on the current platform";
        goto LABEL_250;
      case 113:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"Unable to fetch today's date.";
        goto LABEL_250;
      case 114:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The student daemon is not available on this platform.";
        goto LABEL_250;
      case 115:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The user is unable to open the item";
        goto LABEL_250;
      case 116:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The device's screen saver is active";
        goto LABEL_250;
      case 117:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The course mascot and color have already been set for this class session";
        goto LABEL_250;
      case 118:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"Failed to set metadata for the course";
        goto LABEL_250;
      case 119:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"Failed to pause media";
        goto LABEL_250;
      case 120:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"Failed to take screenshot";
        goto LABEL_250;
      case 121:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"Failed to wake screen";
        goto LABEL_250;
      case 122:
        v162 = a1;
        v13 = objc_opt_new();
        [CRKErrorWithCodeAndUserInfo_bundle cat_localizedStringsForKey:@"The app “%@” is not installed." value:&stru_285643BE8 table:@"CRKErrors"];
        v185 = 0u;
        v186 = 0u;
        v187 = 0u;
        v9 = v188 = 0u;
        v14 = [v9 countByEnumeratingWithState:&v185 objects:v222 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v186;
          do
          {
            for (nn = 0; nn != v15; ++nn)
            {
              if (*v186 != v16)
              {
                objc_enumerationMutation(v9);
              }

              v18 = *(*(&v185 + 1) + 8 * nn);
              v19 = [v9 objectForKeyedSubscript:v18];
              v20 = MEMORY[0x277CCACA8];
              v21 = [v3 objectForKeyedSubscript:@"kCRKBundleIdentifierErrorKey"];
              v22 = [v20 stringWithValidatedFormat:v19 validFormatSpecifiers:@"%@" error:0, v21];
              v23 = v22;
              if (v22)
              {
                v24 = v22;
              }

              else
              {
                v24 = @"FORMAT SPECIFIER ERROR";
              }

              [v13 setObject:v24 forKeyedSubscript:v18];

              v3 = v10;
            }

            v15 = [v9 countByEnumeratingWithState:&v185 objects:v222 count:16];
          }

          while (v15);
        }

        goto LABEL_239;
      case 123:
        v162 = a1;
        v13 = objc_opt_new();
        [CRKErrorWithCodeAndUserInfo_bundle cat_localizedStringsForKey:@"The provided app “%@” could not be opened." value:&stru_285643BE8 table:@"CRKErrors"];
        v181 = 0u;
        v182 = 0u;
        v183 = 0u;
        v9 = v184 = 0u;
        v135 = [v9 countByEnumeratingWithState:&v181 objects:v221 count:16];
        if (v135)
        {
          v136 = v135;
          v137 = *v182;
          do
          {
            for (i1 = 0; i1 != v136; ++i1)
            {
              if (*v182 != v137)
              {
                objc_enumerationMutation(v9);
              }

              v139 = *(*(&v181 + 1) + 8 * i1);
              v140 = [v9 objectForKeyedSubscript:v139];
              v141 = MEMORY[0x277CCACA8];
              v142 = [v3 objectForKeyedSubscript:@"kCRKBundleIdentifierErrorKey"];
              v143 = [v141 stringWithValidatedFormat:v140 validFormatSpecifiers:@"%@" error:0, v142];
              v144 = v143;
              if (v143)
              {
                v145 = v143;
              }

              else
              {
                v145 = @"FORMAT SPECIFIER ERROR";
              }

              [v13 setObject:v145 forKeyedSubscript:v139];

              v3 = v10;
            }

            v136 = [v9 countByEnumeratingWithState:&v181 objects:v221 count:16];
          }

          while (v136);
        }

        goto LABEL_239;
      case 124:
        v162 = a1;
        v13 = objc_opt_new();
        [CRKErrorWithCodeAndUserInfo_bundle cat_localizedStringsForKey:@"The provided URL “%@” could not be opened." value:&stru_285643BE8 table:@"CRKErrors"];
        v177 = 0u;
        v178 = 0u;
        v179 = 0u;
        v9 = v180 = 0u;
        v25 = [v9 countByEnumeratingWithState:&v177 objects:v220 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v178;
          do
          {
            for (i2 = 0; i2 != v26; ++i2)
            {
              if (*v178 != v27)
              {
                objc_enumerationMutation(v9);
              }

              v29 = *(*(&v177 + 1) + 8 * i2);
              v30 = [v9 objectForKeyedSubscript:v29];
              v31 = MEMORY[0x277CCACA8];
              v32 = [v3 objectForKeyedSubscript:@"kCRKURLStringErrorKey"];
              v33 = [v31 stringWithValidatedFormat:v30 validFormatSpecifiers:@"%@" error:0, v32];
              v34 = v33;
              if (v33)
              {
                v35 = v33;
              }

              else
              {
                v35 = @"FORMAT SPECIFIER ERROR";
              }

              [v13 setObject:v35 forKeyedSubscript:v29];

              v3 = v10;
            }

            v26 = [v9 countByEnumeratingWithState:&v177 objects:v220 count:16];
          }

          while (v26);
        }

        goto LABEL_239;
      case 125:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The volume could not be set.";
        goto LABEL_250;
      case 126:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"Canceling Single App Mode timed out.";
        goto LABEL_250;
      case 127:
        v162 = a1;
        v13 = objc_opt_new();
        [CRKErrorWithCodeAndUserInfo_bundle cat_localizedStringsForKey:@"Single App Mode could not be initiated for the provided bundle identifier “%@”." value:&stru_285643BE8 table:@"CRKErrors"];
        v173 = 0u;
        v174 = 0u;
        v175 = 0u;
        v9 = v176 = 0u;
        v113 = [v9 countByEnumeratingWithState:&v173 objects:v219 count:16];
        if (v113)
        {
          v114 = v113;
          v115 = *v174;
          do
          {
            for (i3 = 0; i3 != v114; ++i3)
            {
              if (*v174 != v115)
              {
                objc_enumerationMutation(v9);
              }

              v117 = *(*(&v173 + 1) + 8 * i3);
              v118 = [v9 objectForKeyedSubscript:v117];
              v119 = MEMORY[0x277CCACA8];
              v120 = [v3 objectForKeyedSubscript:@"kCRKBundleIdentifierErrorKey"];
              v121 = [v119 stringWithValidatedFormat:v118 validFormatSpecifiers:@"%@" error:0, v120];
              v122 = v121;
              if (v121)
              {
                v123 = v121;
              }

              else
              {
                v123 = @"FORMAT SPECIFIER ERROR";
              }

              [v13 setObject:v123 forKeyedSubscript:v117];

              v3 = v10;
            }

            v114 = [v9 countByEnumeratingWithState:&v173 objects:v219 count:16];
          }

          while (v114);
        }

LABEL_239:

LABEL_240:
        a1 = v162;
        v8 = v13;
        break;
      case 128:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"A password is required to AirPlay to the requested route.";
        goto LABEL_250;
      case 129:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The supplied password for the AirPlay route was incorrect.";
        goto LABEL_250;
      case 130:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The user initated a disconnect of the management session.";
        goto LABEL_250;
      case 131:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The device has been idle for the maximum allowable time.";
        goto LABEL_250;
      case 150:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"ClassKit did not report a known current user for the device";
        goto LABEL_250;
      case 151:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"Could not find location with required permissions.";
        goto LABEL_250;
      case 152:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"Found several objects matching given object ID.";
        goto LABEL_250;
      case 153:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The same user was requested to be both added to, and removed from, the course.";
        goto LABEL_250;
      case 154:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The connection to the server failed.";
        goto LABEL_250;
      case 155:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"There are too many users to perform the requested operation.";
        goto LABEL_250;
      case 156:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"Your device is not connected to the Internet.";
        goto LABEL_250;
      case 201:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The device is already enrolled.";
        goto LABEL_250;
      case 202:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The student is not enrolled in the course.";
        goto LABEL_250;
      case 203:
        v11 = CRKErrorWithCodeAndUserInfo_bundle;
        v12 = @"The instructor is not known or not trusted.";
        goto LABEL_250;
      default:
        goto LABEL_5;
    }
  }

  v7 = v3;
  if (v8)
  {
    v157 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v7];
    v163[0] = MEMORY[0x277D85DD0];
    v163[1] = 3221225472;
    v163[2] = __CRKErrorWithCodeAndUserInfo_block_invoke_2;
    v163[3] = &unk_278DC33B0;
    v164 = v157;
    v158 = v157;
    [v8 enumerateKeysAndObjectsUsingBlock:v163];
    v159 = [v158 copy];

    v7 = v159;
  }

LABEL_253:
  v160 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ClassroomKit.error" code:a1 userInfo:v7];

  return v160;
}

uint64_t __CRKErrorWithCodeAndUserInfo_block_invoke()
{
  CRKErrorWithCodeAndUserInfo_bundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

void __CRKErrorWithCodeAndUserInfo_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v7];

  if (!v6)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
  }
}

id _CRKLogGeneral_19()
{
  if (_CRKLogGeneral_onceToken_39 != -1)
  {
    _CRKLogGeneral_cold_1_19();
  }

  v1 = _CRKLogGeneral_logObj_39;

  return v1;
}

void sub_2435E7B38(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2435E9344(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id _CRKLogGeneral_20()
{
  if (_CRKLogGeneral_onceToken_40 != -1)
  {
    _CRKLogGeneral_cold_1_20();
  }

  v1 = _CRKLogGeneral_logObj_40;

  return v1;
}

id _CRKLogGeneral_21()
{
  if (_CRKLogGeneral_onceToken_41 != -1)
  {
    _CRKLogGeneral_cold_1_21();
  }

  v1 = _CRKLogGeneral_logObj_41;

  return v1;
}

id _CRKLogGeneral_22()
{
  if (_CRKLogGeneral_onceToken_44 != -1)
  {
    _CRKLogGeneral_cold_1_22();
  }

  v1 = _CRKLogGeneral_logObj_44;

  return v1;
}

void sub_2435F3704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _CRKLogGeneral_23()
{
  if (_CRKLogGeneral_onceToken_47 != -1)
  {
    _CRKLogGeneral_cold_1_23();
  }

  v1 = _CRKLogGeneral_logObj_47;

  return v1;
}

void __CRKLogAddStateHandler_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_243550000, a2, OS_LOG_TYPE_ERROR, "Error serializing dictionary for State Capture: %{public}@", &v2, 0xCu);
}

void CRTLogError_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_243550000, a2, OS_LOG_TYPE_ERROR, "%{public}@", &v2, 0xCu);
}

void JSONStringRepresentation_cold_2(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 verboseDescription];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_243550000, v3, OS_LOG_TYPE_ERROR, "Error encoding JSON data: %@", &v5, 0xCu);
}

void _BOMCopierDidGenerateFatalError_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a2 verboseDescription];
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&dword_243550000, a3, OS_LOG_TYPE_ERROR, "%{public}@: Encountered FATAL error: %{public}@", &v6, 0x16u);
}