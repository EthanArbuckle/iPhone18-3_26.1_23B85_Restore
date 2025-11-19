void sub_22AC1E1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18468(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22AC1E5AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AC1E6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AC1ED5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id cacheFileIdentifierForAccessoryServer(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 deviceID];
  v5 = [v4 deviceIDString];
  v6 = [v5 stringByAppendingFormat:@"+%@", v3];

  return v6;
}

void sub_22AC1F814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AC2072C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AC20E50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_22AC211E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_22AC21A94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_22AC22248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose((v21 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_22AC233A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

void __characteristicDescriptionsFromRequest_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 characteristic];
  v3 = characteristicDescriptionFromCharacteristic(v4);
  [v2 addObject:v3];
}

id characteristicDescriptionFromCharacteristic(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = a1;
  v3 = [v2 type];
  v4 = [HAPCharacteristic hap2_shortTypeFromUUID:v3];
  v5 = [v2 instanceID];

  v6 = [v1 stringWithFormat:@"%@ [%@]", v4, v5];

  return v6;
}

void sub_22AC23D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AC25B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AC2653C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AC26C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 184), 8);
  _Block_object_dispose((v32 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_22AC2764C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AC280F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AC288E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AC289E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AC2A3B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AC2A688(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22AC2AA28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AC2ACB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19076(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22AC2AEC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AC2B100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AC2B338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AC2B470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AC2B5A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AC2B7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *HAPAccessorySuspendedStateDescription(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
    v1 = [v2 stringWithFormat:@"unknown (%@)", v3];
  }

  else
  {
    v1 = off_2786D5DA0[a1];
  }

  return v1;
}

void sub_22AC35BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  __HMFActivityScopeLeave();
  _Unwind_Resume(a1);
}

void sub_22AC35E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  __HMFActivityScopeLeave();
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20180(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22AC36594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_22AC39808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  __HMFActivityScopeLeave();
  _Block_object_dispose(&a29, 8);
  __HMFActivityScopeLeave();
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

void sub_22AC39D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void coapRequestHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    __assert_rtn("coap_session_get_app_data", "coap_session.c", 92, "session");
  }

  v10 = *(a3 + 344);
  v11 = v10;
  if (v10)
  {
    [v10 didReceiveRequestInSession:a3 messageID:*(a4 + 6) request:a4 response:a7];
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v12 = hap2Log_coap;
    if (os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a4 + 6);
      v15[0] = 67109120;
      v15[1] = v14;
      _os_log_error_impl(&dword_22AADC000, v12, OS_LOG_TYPE_ERROR, "Received request with message id %i but session has no app data", v15, 8u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void coapPongHandler(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    __assert_rtn("coap_session_get_app_data", "coap_session.c", 92, "session");
  }

  v6 = *(a2 + 344);
  v7 = v6;
  if (v6)
  {
    [v6 didReceivePongInSession:a2 messageID:a4];
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v8 = hap2Log_coap;
    if (os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_ERROR))
    {
      v10[0] = 67109120;
      v10[1] = a4;
      _os_log_error_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "Received pong with message id %i but session has no app data", v10, 8u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void coapNackHandler(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    __assert_rtn("coap_session_get_app_data", "coap_session.c", 92, "session");
  }

  v9 = *(a2 + 344);
  v10 = v9;
  if (v9)
  {
    [v9 didFailToSendMessageInSession:a2 messageID:a5 message:a3 reason:a4];
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v11 = hap2Log_coap;
    if (os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_ERROR))
    {
      v13[0] = 67109120;
      v13[1] = a5;
      _os_log_error_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "Received nack for message id %i but session has no app data", v13, 8u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t coapEventHandler(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v3 = hap2Log_coap;
  if (os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_debug_impl(&dword_22AADC000, v3, OS_LOG_TYPE_DEBUG, "Received event %u", v6, 8u);
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void coapResponseHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    __assert_rtn("coap_session_get_app_data", "coap_session.c", 92, "session");
  }

  v8 = *(a2 + 344);
  v9 = v8;
  if (v8)
  {
    [v8 didReceiveResponseInSession:a2 messageID:a5 response:a4];
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v10 = hap2Log_coap;
    if (os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_ERROR))
    {
      v12[0] = 67109120;
      v12[1] = a5;
      _os_log_error_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "Received response with message id %i but session has no app data", v12, 8u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t coapNetworkRead(uint64_t a1, _BYTE *a2)
{
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v4 = hap2Log_coap;
  if (os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_debug_impl(&dword_22AADC000, v4, OS_LOG_TYPE_DEBUG, "Coap Network Read", v6, 2u);
  }

  result = coap_network_read(a1, a2);
  if (a2[37] == 30)
  {
    a2[36] = 0;
  }

  if (a2[5] == 30)
  {
    a2[4] = 0;
  }

  return result;
}

void coapLogHandler(unsigned int a1, uint64_t a2)
{
  *&v16[5] = *MEMORY[0x277D85DE8];
  if (a1 == 6)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v5 = hap2Log_coap;
    if (os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_INFO))
    {
      v15 = 136380675;
      *v16 = a2;
      v6 = v5;
      v7 = OS_LOG_TYPE_INFO;
LABEL_16:
      _os_log_impl(&dword_22AADC000, v6, v7, "<libcoap> %{private}s", &v15, 0xCu);
    }
  }

  else
  {
    if (a1 == 7)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v4 = hap2Log_coap;
      if (os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_DEBUG))
      {
        v15 = 136380675;
        *v16 = a2;
        _os_log_debug_impl(&dword_22AADC000, v4, OS_LOG_TYPE_DEBUG, "<libcoap> %{private}s", &v15, 0xCu);
      }

      goto LABEL_23;
    }

    if ((a1 & 0xFFFFFFFE) != 4)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v9 = hap2Log_coap;
      v10 = os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_ERROR);
      if (a1 > 3)
      {
        if (!v10)
        {
          goto LABEL_23;
        }

        v15 = 67109379;
        v16[0] = a1;
        LOWORD(v16[1]) = 2081;
        *(&v16[1] + 2) = a2;
        v11 = "<libcoap> Unknown log level (%u) for message: %{private}s";
        v12 = v9;
        v13 = 18;
      }

      else
      {
        if (!v10)
        {
          goto LABEL_23;
        }

        v15 = 136380675;
        *v16 = a2;
        v11 = "<libcoap> %{private}s";
        v12 = v9;
        v13 = 12;
      }

      _os_log_error_impl(&dword_22AADC000, v12, OS_LOG_TYPE_ERROR, v11, &v15, v13);
      goto LABEL_23;
    }

    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v8 = hap2Log_coap;
    if (os_log_type_enabled(hap2Log_coap, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136380675;
      *v16 = a2;
      v6 = v8;
      v7 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_16;
    }
  }

LABEL_23:
  v14 = *MEMORY[0x277D85DE8];
}

void sub_22AC3D290(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

__CFString *HAPWiProxScanStateString(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    v2 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
    v1 = [v2 stringValue];
  }

  else
  {
    v1 = off_2786D5EE8[a1 - 1];
  }

  return v1;
}

void sub_22AC42A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a16, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20997(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22AC43594(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 168), 8);
  __HMFActivityScopeLeave();
  _Unwind_Resume(a1);
}

void sub_22AC44084(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_22AC44540(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22AC44D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22AC4522C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AC465AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22AC47414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a11);
  _Unwind_Resume(a1);
}

void sub_22AC47C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v15 + 48));
  objc_destroyWeak((v17 - 96));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AC495E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&STACK[0x238], 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a52, 8);
  __HMFActivityScopeLeave();
  __HMFActivityScopeLeave();
  _Unwind_Resume(a1);
}

void sub_22AC4A0C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AC4A500(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22AC4A690(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22AC4AC64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id HAPStringFromAccessoryServerSession(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  if (a1 >= 1)
  {
    for (i = 1; i <= a1 && i; i *= 2)
    {
      if ((i & a1) == 0)
      {
        continue;
      }

      if (i <= 7)
      {
        switch(i)
        {
          case 1:
            v4 = @"CameraStreaming";
            break;
          case 2:
            v4 = @"FirmwareDownloading";
            break;
          case 4:
            v4 = @"LogUploading";
            break;
          default:
            continue;
        }
      }

      else if (i > 31)
      {
        if (i == 32)
        {
          v4 = @"DiagnosticsTransfer";
        }

        else
        {
          if (i != 64)
          {
            continue;
          }

          v4 = @"ForegroundClientNotifications";
        }
      }

      else if (i == 8)
      {
        v4 = @"TargetController";
      }

      else
      {
        if (i != 16)
        {
          continue;
        }

        v4 = @"SiriEndpoint";
      }

      [v2 addObject:v4];
    }
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = [v2 componentsJoinedByString:{@", "}];
  v7 = [v5 stringWithFormat:@"<%@>", v6];

  return v7;
}

uint64_t HAPAccessoryServerSessionTypesFromString(void *a1)
{
  v1 = a1;
  v2 = 1;
  v3 = HAPStringFromAccessoryServerSession(1);
  v4 = [v1 isEqual:v3];

  if ((v4 & 1) == 0)
  {
    v2 = 2;
    v5 = HAPStringFromAccessoryServerSession(2);
    v6 = [v1 isEqual:v5];

    if ((v6 & 1) == 0)
    {
      v2 = 4;
      v7 = HAPStringFromAccessoryServerSession(4);
      v8 = [v1 isEqual:v7];

      if ((v8 & 1) == 0)
      {
        v2 = 8;
        v9 = HAPStringFromAccessoryServerSession(8);
        v10 = [v1 isEqual:v9];

        if ((v10 & 1) == 0)
        {
          v2 = 16;
          v11 = HAPStringFromAccessoryServerSession(16);
          v12 = [v1 isEqual:v11];

          if ((v12 & 1) == 0)
          {
            v2 = 32;
            v13 = HAPStringFromAccessoryServerSession(32);
            v14 = [v1 isEqual:v13];

            if ((v14 & 1) == 0)
            {
              v15 = HAPStringFromAccessoryServerSession(64);
              v16 = [v1 isEqual:v15];

              if (v16)
              {
                v2 = 64;
              }

              else
              {
                v2 = 0;
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_22AC4CABC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22AC4CC64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AC4DAE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void __shouldLogPrivateInformation_block_invoke()
{
  v1 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v0 = [v1 preferenceForKey:@"shouldLogPrivateInformation"];
  shouldLogPrivateInformation_shouldLogPrivateInformation = [v0 BOOLValue];
}

uint64_t _SavePairedPeerDelegateCallback_f_21963(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a1 length:a2 encoding:4];
  v9 = [v7 identifier];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:a3 length:32];
    v12 = [v7 keyStore];
    v29 = 0;
    [v12 savePublicKey:v11 forAccessoryName:v8 error:&v29];
    v13 = v29;

    v14 = [v13 code];
    if (!v14)
    {
      [v7 associateAccessoryWithControllerKeyUsingAccessoryPublicKey:v11];
      v15 = [v7 keyStore];
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        v17 = [v7 keyStore];
        v18 = [v7 peripheral];
        v19 = [v18 identifier];
        v20 = [v7 identifier];
        v28 = v13;
        [v17 updatePeripheralIdentifier:v19 forAccessoryIdentifier:v20 protocolVersion:objc_msgSend(v7 previousVersion:"hapBLEProtocolVersion") resumeSessionID:0 error:{0, &v28}];
        v21 = v28;

        v13 = v21;
        v14 = [v21 code];
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [v7 identifier];
      *buf = 138544130;
      v31 = v24;
      v32 = 2080;
      v33 = "OSStatus _SavePairedPeerDelegateCallback_f(const void *, size_t, const uint8_t *, void *)";
      v34 = 2112;
      v35 = v8;
      v36 = 2112;
      v37 = v25;
      _os_log_impl(&dword_22AADC000, v23, OS_LOG_TYPE_ERROR, "%{public}@%s: Accessory username provided by Pair Setup, %@, doesn't match username provided by BTLE advertisement data, %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v22);
    v14 = 4294960548;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t _CopyPairingIdentityDelegateCallback_f_21966(int a1, char **a2, _OWORD *a3, _OWORD *a4, void *a5)
{
  v58 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = [v8 pairingRequest];
  v10 = [v9 pairingIdentity];
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v12 = [v8 keyBag];
    v11 = [v12 currentIdentity];

    if (!v11)
    {
      v30 = 0;
      v31 = 0;
      v28 = 0;
      v26 = 0;
      goto LABEL_23;
    }
  }

  v43 = a3;
  v13 = objc_autoreleasePoolPush();
  v14 = v8;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543618;
    v55 = v16;
    v56 = 2112;
    v57 = v11;
    _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Using Pairing Identity : %@", buf, 0x16u);
  }

  v46 = v8;

  objc_autoreleasePoolPop(v13);
  v17 = [v11 publicKey];
  v18 = [v17 data];

  v19 = [v11 identifier];
  v44 = a4;
  if (a4)
  {
    v20 = [v11 privateKey];
    v21 = [v20 data];

    v22 = [v14 keyStore];
    v52 = v21;
    v53 = v18;
    v51 = v19;
    v23 = [v14 identifier];
    v50 = 0;
    v24 = &v51;
    v25 = &v50;
    [v22 getControllerPublicKey:&v53 secretKey:&v52 username:&v51 allowCreation:a1 != 0 forAccessory:v23 error:&v50];
    v26 = v53;

    v27 = v52;
    v18 = v21;
    v28 = v52;
  }

  else
  {
    v22 = [v14 keyStore];
    v48 = v19;
    v49 = v18;
    v23 = [v14 identifier];
    v47 = 0;
    v24 = &v48;
    v25 = &v47;
    [v22 getControllerPublicKey:&v49 secretKey:0 username:&v48 allowCreation:a1 != 0 forAccessory:v23 error:&v47];
    v28 = 0;
    v27 = v49;
    v26 = v49;
  }

  v29 = v27;

  v30 = *v24;
  v31 = *v25;

  v32 = [v31 code];
  if (v32)
  {
    v8 = v46;
    goto LABEL_24;
  }

  v8 = v46;
  if (!v26)
  {
    goto LABEL_23;
  }

  if ([v26 length] != 32)
  {
    goto LABEL_25;
  }

  v33 = [v26 bytes];
  v34 = v33[1];
  *v43 = *v33;
  v43[1] = v34;
  if (!v44)
  {
    goto LABEL_17;
  }

  if (!v28)
  {
LABEL_23:
    v32 = 4294960569;
    goto LABEL_24;
  }

  if ([v28 length] != 32)
  {
    goto LABEL_25;
  }

  v35 = [v28 bytes];
  v36 = v35[1];
  *v44 = *v35;
  v44[1] = v36;
LABEL_17:
  v32 = 0;
  if (a2 && v30)
  {
    v37 = [v30 lengthOfBytesUsingEncoding:4];
    if (v37)
    {
      v38 = v37;
      v39 = malloc_type_calloc(v37 + 1, 1uLL, 0x100004077774924uLL);
      if (v39)
      {
        v40 = v39;
        strlcpy(v39, [v30 UTF8String], v38 + 1);
        v32 = 0;
        *a2 = v40;
      }

      else
      {
        v32 = 4294960568;
      }

      goto LABEL_24;
    }

LABEL_25:
    v32 = 4294960553;
  }

LABEL_24:

  v41 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t _PairSetupPromptForSetupCodeDelegateCallback_f_21968(int a1, int a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v19 = v8;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Pair-setup prompting for password...\n", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  [v5 _cancelConnectionLifetimeTimer];
  if ((a1 & 0x30000) == 0)
  {
    if ([v5 _delegateRespondsToSelector:sel_accessoryServer_promptUserForPasswordWithType_])
    {
      v9 = [v5 delegateQueue];
      v10 = v9;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ___PairSetupPromptForSetupCodeDelegateCallback_f_block_invoke_2;
      block[3] = &unk_2786D6CA0;
      block[4] = v5;
      v11 = block;
      goto LABEL_8;
    }

LABEL_9:
    v12 = 4294960594;
    goto LABEL_10;
  }

  if (![v5 _delegateRespondsToSelector:sel_accessoryServer_didReceiveBadPasswordThrottleAttemptsWithDelay_])
  {
    goto LABEL_9;
  }

  v9 = [v5 delegateQueue];
  v10 = v9;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = ___PairSetupPromptForSetupCodeDelegateCallback_f_block_invoke;
  v16[3] = &unk_2786D6740;
  v16[4] = v5;
  v17 = a2;
  v11 = v16;
LABEL_8:
  dispatch_async(v9, v11);

  v12 = 0;
LABEL_10:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

id _convertFromBTLEToHAPValue(void *a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = HAPCharacteristicFormatFromString(v3);
  if (v5)
  {
    v6 = v5;
    v7 = +[HAPDataValueTransformer defaultDataValueTransformer];
    v22 = 0;
    v8 = [v7 reverseTransformedValue:v4 format:v6 error:&v22];
    v9 = v22;

    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v8;
LABEL_14:

        goto LABEL_15;
      }

      v14 = objc_autoreleasePoolPush();
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v24 = v16;
        v25 = 2112;
        v26 = v3;
        v17 = "%{public}@[HAPAccessoryServerBTLE] Invalid Format %@ for StepValue";
        v18 = v15;
        v19 = 22;
        goto LABEL_12;
      }
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138544130;
        v24 = v16;
        v25 = 2112;
        v26 = v4;
        v27 = 2112;
        v28 = v3;
        v29 = 2112;
        v30 = v9;
        v17 = "%{public}@[HAPAccessoryServerBTLE] Failed to transform value, %@, with format, %@, with error: %@";
        v18 = v15;
        v19 = 42;
LABEL_12:
        _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
      }
    }

    objc_autoreleasePoolPop(v14);
    v10 = 0;
    goto LABEL_14;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v24 = v13;
    v25 = 2112;
    v26 = v3;
    _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@[HAPAccessoryServerBTLE] Invalid format type string '%@'", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v10 = 0;
LABEL_15:

  v20 = *MEMORY[0x277D85DE8];

  return v10;
}

void _updateHAPConstraintsFromBTLEValidRange(void *a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if ([v4 length])
  {
    v18 = objc_autoreleasePoolPush();
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v20;
      v28 = 2048;
      v29 = [v4 length];
      _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_ERROR, "%{public}@### Invalid Range data length: %ld", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
  }

  else
  {
    v5 = [v3 constraints];

    if (!v5)
    {
      v6 = objc_alloc_init(HAPMetadataConstraints);
      [v3 setConstraints:v6];
    }

    v7 = [v4 length] >> 1;
    v8 = [v4 length] >> 1;
    v9 = [v4 length] >> 1;
    v10 = [v4 subdataWithRange:{0, v7}];
    v11 = [v4 subdataWithRange:{v8, v9}];
    v12 = [v3 format];
    v13 = [v12 isEqualToString:@"string"];

    if (v13)
    {
      v14 = _convertFromBTLEToHAPValue(@"uint16", v10);
      v15 = [v3 constraints];
      [v15 setMinLength:v14];

      v16 = _convertFromBTLEToHAPValue(@"uint16", v11);
      v17 = [v3 constraints];
      [v17 setMaxLength:v16];
    }

    else
    {
      v21 = [v3 format];
      v22 = _convertFromBTLEToHAPValue(v21, v10);
      v23 = [v3 constraints];
      [v23 setMinimumValue:v22];

      v16 = [v3 format];
      v17 = _convertFromBTLEToHAPValue(v16, v11);
      v24 = [v3 constraints];
      [v24 setMaximumValue:v17];
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void sub_22AC595D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AC5C688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AC5CB20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id HAPWACWiFiBandToString(char a1)
{
  if (a1)
  {
    v2 = [@"<" stringByAppendingString:@" 2.4"];
    if ((a1 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = @"<";
  if ((a1 & 2) != 0)
  {
LABEL_5:
    v3 = [(__CFString *)v2 stringByAppendingString:@" 5"];

    v2 = v3;
  }

LABEL_6:
  v4 = [(__CFString *)v2 stringByAppendingString:@" GHz >"];

  return v4;
}

void sub_22AC6A5CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 56));
  _Unwind_Resume(a1);
}

__CFString *HAPDiagnosticsSnapshotFormatAsString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"HAPDiagnosticsSnapshotFormatText";
    }

    else
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HAPDiagnosticsSnapshotFormat %ld", a1];
    }
  }

  else
  {
    v2 = @"HAPDiagnosticsSnapshotFormatZip";
  }

  return v2;
}

__CFString *HAP2TLVThreadOperationTypeAsString(uint64_t a1)
{
  if ((a1 - 1) >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HAP2TLVThreadOperationType %ld", a1];
  }

  else
  {
    v2 = off_2786D6B40[a1 - 1];
  }

  return v2;
}

void sub_22AC71ECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AC7209C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_22AC7221C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22AC723E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_22AC725B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_22AC72750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AC728EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AC72A98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AC72E60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22AC730B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AC73234(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22AC733B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22AC735BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AC7373C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

__CFString *HAP2UnpairedAccessoryServerPermissionTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Unknown Type";
  }

  else
  {
    return off_2786D6C50[a1 - 1];
  }
}

void sub_22AC74380(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22AC74594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void localDeviceCallback(uint64_t a1, uint64_t a2, int a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = btLocalDeviceState2String;
    v9 = [MEMORY[0x277CCABB0] numberWithInt:a2];
    v10 = [v8 objectForKeyedSubscript:v9];
    v12 = 138543874;
    v13 = v7;
    v14 = 2112;
    v15 = v10;
    v16 = 1024;
    v17 = a3;
    _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_ERROR, "%{public}@[CBConnectionsObserver] localDeviceCallback with event %@ and result 0x%08x", &v12, 0x1Cu);
  }

  objc_autoreleasePoolPop(v5);
  v11 = *MEMORY[0x277D85DE8];
}

void serviceEventCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = HMFGetLogIdentifier();
    v10 = btServiceEvent2String;
    v11 = [MEMORY[0x277CCABB0] numberWithInt:a3];
    v12 = [v10 objectForKeyedSubscript:v11];
    v14 = 138543874;
    v15 = v9;
    v16 = 2112;
    v17 = v12;
    v18 = 1024;
    v19 = a5;
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] serviceEventCallbackwith event %@  result 0x%08x", &v14, 0x1Cu);
  }

  objc_autoreleasePoolPop(v7);
  v13 = *MEMORY[0x277D85DE8];
}

void sessionEventCallback(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v19 = 138543874;
      v20 = v9;
      v21 = 1024;
      v22 = a2;
      v23 = 1024;
      v24 = a3;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] sessionEventCallback: BTServer detached, event ID 0x%08x with error 0x%08x", &v19, 0x18u);
    }

    objc_autoreleasePoolPop(v7);
    *(a4 + 40) = 0;
    *(a4 + 48) = 0;
  }

  else
  {
    if (a3)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v19 = 138543618;
        v20 = v12;
        v21 = 1024;
        v22 = a3;
        _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "%{public}@[CBConnectionsObserver] (BTServer) sessionEventCallback: Failed to attach to BTServer with error 0x%08x", &v19, 0x12u);
      }
    }

    else
    {
      *(a4 + 40) = a1;
      Default = BTLocalDeviceGetDefault();
      if (Default)
      {
        v14 = Default;
        v10 = objc_autoreleasePoolPush();
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = HMFGetLogIdentifier();
          v19 = 138543618;
          v20 = v16;
          v21 = 1024;
          v22 = v14;
          _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_ERROR, "%{public}@[CBConnectionsObserver] (BTServer) sessionEventCallback: failed to get local device handle with error 0x%08x", &v19, 0x12u);
        }
      }

      else
      {
        *(a4 + 248) = 0;
        v10 = objc_autoreleasePoolPush();
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v17 = HMFGetLogIdentifier();
          v19 = 138543362;
          v20 = v17;
          _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@[CBConnectionsObserver] (BTServer) sessionEventCallback: attached.", &v19, 0xCu);
        }
      }
    }

    objc_autoreleasePoolPop(v10);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_22AC76F5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AC77340(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22AC77610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AC779C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AC77C84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22AC782B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AC7885C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id _extractResponseHeaderFields(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a1;
  if ([v7 length] > 2)
  {
    [v7 getBytes:a2 length:1];
    v12 = [v7 subdataWithRange:{1, objc_msgSend(v7, "length") - 1}];

    if ((*a2 & 2) != 0)
    {
      [v12 getBytes:a3 length:1];
      v17 = [v12 subdataWithRange:{1, objc_msgSend(v12, "length") - 1}];

      [v17 getBytes:a4 length:1];
      v18 = [v17 subdataWithRange:{1, objc_msgSend(v17, "length") - 1}];

      v7 = v18;
      v11 = v7;
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v16 = *a2;
        v21 = 138543618;
        v22 = v15;
        v23 = 1024;
        LODWORD(v24) = v16;
        _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unexpected PDU Type in controlfield 0x%02x - expecting a response", &v21, 0x12u);
      }

      objc_autoreleasePoolPop(v13);
      v11 = 0;
      v7 = v12;
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v10;
      v23 = 2048;
      v24 = [v7 length];
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "%{public}@Insufficient length %tu - dropping", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v11 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v11;
}

void sub_22AC7E1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__25107(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22AC7E484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AC7E5CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22AC7E72C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22AC7EA60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22AC7EBD8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22AC7ED70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22AC7EFE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22AC7F46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__25273(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22AC7F8F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22AC7FBE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

__CFString *HAPDataStreamTransportCommandAsString(uint64_t a1)
{
  if (a1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HAPDataStreamTransportCommand %ld", a1];
  }

  else
  {
    v2 = @"HAPDataStreamTransportCommandStartSession";
  }

  return v2;
}

__CFString *HAPDataStreamTransportCommandStatusAsString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HAPDataStreamTransportCommandStatus %ld", a1];
  }

  else
  {
    v2 = off_2786D7010[a1];
  }

  return v2;
}

__CFString *HAPDataStreamTransportProtocolAsString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"HAPDataStreamTransportProtocolHAP";
    }

    else
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HAPDataStreamTransportProtocol %ld", a1];
    }
  }

  else
  {
    v2 = @"HAPDataStreamTransportProtocolTCP";
  }

  return v2;
}

double coap_ticks(void *a1)
{
  v3.tv_sec = 0;
  *&v3.tv_usec = 0;
  gettimeofday(&v3, 0);
  result = v3.tv_usec * 1.024 + 512.0;
  *a1 = 1000 * (v3.tv_sec - coap_clock_offset) + (result >> 10);
  return result;
}

uint64_t coap_session_str(uint64_t a1)
{
  if (coap_print_addr(a1 + 136, &coap_session_str_szSession, 0x100uLL))
  {
    result = strlen(&coap_session_str_szSession);
    v3 = result;
    if (result > 249)
    {
      if (result > 0xFE)
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v3 = 0;
  }

  strcpy(&coap_session_str_szSession + v3, " <-> ");
  v3 += 5;
LABEL_7:
  result = coap_print_addr(a1 + 104, &coap_session_str_szSession + v3, 256 - v3);
  if (result)
  {
    result = strlen(&coap_session_str_szSession + v3);
    v3 += result;
  }

  if (*(a1 + 168) >= 1 && v3 <= 254)
  {
    result = snprintf(&coap_session_str_szSession + v3, 256 - v3, " (if%d)", *(a1 + 168));
    v3 += result;
  }

  if (v3 <= 249)
  {
    v4 = &coap_session_str_szSession + v3;
    if ((*a1 - 1) > 3u)
    {
      v5 = " NONE";
    }

    else
    {
      v5 = off_2786D7098[(*a1 - 1)];
    }

    v6 = *v5;
    *(v4 + 2) = *(v5 + 2);
    *v4 = v6;
  }

  return result;
}

void coap_session_release(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 4);
    if (!v2)
    {
      __assert_rtn("coap_session_release", "coap_session.c", 76, "session->ref > 0");
    }

    v3 = v2 - 1;
    *(a1 + 4) = v3;
    if (!v3 && *(a1 + 1) == 1)
    {

      coap_session_free(a1);
    }
  }
}

void coap_session_free(_DWORD *a1)
{
  if (!a1)
  {
    return;
  }

  if (a1[1])
  {
    __assert_rtn("coap_session_free", "coap_session.c", 171, "session->ref == 0");
  }

  v2 = *(a1 + 33);
  if (v2)
  {
    coap_delete_pdu(v2);
  }

  if (*(a1 + 90))
  {
    v3 = a1[44];
    if (v3 != -1)
    {
      *(a1 + 23) = 0;
      *(a1 + 24) = 0;
      close(v3);
      a1[44] = -1;
    }

    *(a1 + 90) = 0;
  }

  v4 = *(a1 + 39);
  if (v4)
  {
    free(v4);
  }

  v5 = *(a1 + 41);
  if (v5)
  {
    free(v5);
  }

  v6 = *(a1 + 29);
  while (v6)
  {
    v7 = v6;
    v6 = *v6;
    if (!**(v7 + 40))
    {
      v8 = *(a1 + 26);
      if (v8)
      {
        v9 = *(v8 + 80);
        if (v9)
        {
          *a1;
          v10 = *(v7 + 32);
          v9();
        }
      }
    }

    coap_delete_node(v7);
  }

  v11 = *(a1 + 25);
  if (!v11)
  {
    v17 = *(a1 + 26);
    if (!v17)
    {
      goto LABEL_46;
    }

    v18 = *(v17 + 64);
    v12 = (v17 + 64);
    v13 = v18;
    if (!v18)
    {
      goto LABEL_46;
    }

    v15 = (a1 + 12);
    if (!*(a1 + 6))
    {
      goto LABEL_46;
    }

    v16 = *(a1 + 7);
    if (!v16 && !*(a1 + 8))
    {
      free(**(v13 + 48));
      free(*(*(*(a1 + 26) + 64) + 48));
      *(*(a1 + 26) + 64) = 0;
      goto LABEL_46;
    }

LABEL_32:
    v19 = *(v13 + 48);
    if (v15 == *(v19 + 24))
    {
      *(v19 + 24) = v16 + *(v19 + 32);
    }

    v20 = *(a1 + 8);
    if (v16)
    {
      v12 = (v16 + *(v19 + 32) + 16);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *v12 = v20;
    v21 = *(v13 + 48);
    if (v20)
    {
      *(v20 + *(v21 + 32) + 8) = v16;
    }

    v22 = *v21 + 16 * ((*(v21 + 8) - 1) & a1[25]);
    --*(v22 + 8);
    v23 = *(a1 + 10);
    if (*v22 == v15)
    {
      *v22 = v23;
    }

    v24 = *(a1 + 9);
    if (v24)
    {
      *(v24 + 32) = v23;
    }

    if (v23)
    {
      *(v23 + 24) = v24;
    }

    --*(v21 + 16);
    goto LABEL_46;
  }

  v14 = *(v11 + 80);
  v12 = (v11 + 80);
  v13 = v14;
  if (!v14)
  {
    goto LABEL_46;
  }

  v15 = (a1 + 12);
  if (!*(a1 + 6))
  {
    goto LABEL_46;
  }

  v16 = *(a1 + 7);
  if (v16 || *(a1 + 8))
  {
    goto LABEL_32;
  }

  free(**(v13 + 48));
  free(*(*(*(a1 + 25) + 80) + 48));
  *(*(a1 + 25) + 80) = 0;
LABEL_46:
  if (maxlog >= 7)
  {
    coap_session_str(a1);
    coap_log_impl(7, "***%s: session closed\n", &coap_session_str_szSession);
  }

  free(a1);
}

uint64_t coap_session_max_pdu_size(unsigned __int8 *a1)
{
  v1 = (*(a1 + 3) - *(a1 + 2));
  if (*a1 - 1 > 1)
  {
    if (v1 >= 3)
    {
      if (v1 > 0xE)
      {
        if (v1 > 0x10F)
        {
          if (v1 > 0x10110)
          {
            return v1 - 6;
          }

          else
          {
            return v1 - 4;
          }
        }

        else
        {
          return v1 - 3;
        }
      }

      else
      {
        return v1 - 2;
      }
    }

    else
    {
      return 0;
    }
  }

  else if (v1 <= 4)
  {
    return 0;
  }

  else
  {
    return v1 - 4;
  }
}

uint64_t coap_session_write(uint64_t a1, const void *a2, int64_t a3)
{
  *(a1 + 180) &= 0xFDDFu;
  v5 = send(*(a1 + 176), a2, a3, 0);
  if (v5 == -1)
  {
    if (*__error() == 35 || *__error() == 4)
    {
      v6 = 0;
      *(a1 + 180) |= 0x20u;
      return v6;
    }

    if (maxlog < 4)
    {
      return -1;
    }

    v8 = __error();
    v9 = strerror(*v8);
    coap_log_impl(4, "coap_socket_write: send: %s\n", v9);
    v6 = -1;
  }

  else
  {
    v6 = v5;
    if (v5 < a3)
    {
      *(a1 + 180) |= 0x20u;
    }

    if (v5 >= 1)
    {
      v11.tv_sec = 0;
      *&v11.tv_usec = 0;
      gettimeofday(&v11, 0);
      *(a1 + 272) = 1000 * (v11.tv_sec - coap_clock_offset) + ((v11.tv_usec * 1.024 + 512.0) >> 10);
      if (maxlog > 6)
      {
        v7 = "*  %s: sent %zd bytes\n";
LABEL_16:
        coap_session_str(a1);
        coap_log_impl(7, v7, &coap_session_str_szSession, a3);
        return v6;
      }

      return v6;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      return v6;
    }
  }

  if (maxlog >= 7)
  {
    v7 = "*   %s: failed to send %zd bytes\n";
    goto LABEL_16;
  }

  return v6;
}

uint64_t coap_session_delay_pdu(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a3;
    v12 = 0;
    coap_remove_from_queue((*(a1 + 26) + 48), a1, *(a3 + 32), &v12);
    if (v12 != v4)
    {
      __assert_rtn("coap_session_delay_pdu", "coap_session.c", 257, "removed == node");
    }

    coap_session_release(v4[3]);
    v4[3] = 0;
    v4[1] = 0;
  }

  else
  {
    v9 = a1 + 232;
    while (1)
    {
      v9 = *v9;
      if (!v9)
      {
        break;
      }

      if (*(v9 + 8) == *(a2 + 6))
      {
        if (maxlog >= 3)
        {
          coap_session_str(a1);
          coap_log_impl(3, "**  %s: tid=%d: already in-use - dropped\n", &coap_session_str_szSession, *(a2 + 6));
        }

        return -1;
      }
    }

    v10 = coap_new_node();
    if (!v10)
    {
      return -1;
    }

    v4 = v10;
    *(v10 + 8) = *(a2 + 6);
    v10[5] = a2;
    if (!*a2 && *a1 - 1 <= 1)
    {
      __buf = 0;
      arc4random_buf(&__buf, 1uLL);
      *(v4 + 5) = coap_calc_timeout(a1, __buf);
    }
  }

  *v4 = 0;
  v5 = a1 + 232;
  for (i = *(a1 + 29); i; i = *i)
  {
    v5 = i;
  }

  *v5 = v4;
  if (maxlog >= 7)
  {
    coap_session_str(a1);
    coap_log_impl(7, "** %s: tid=%d: delayed\n", &coap_session_str_szSession, *(v4 + 8));
  }

  return -3;
}

void coap_session_send_csm(unsigned __int8 *a1)
{
  if (*a1 - 5 <= 0xFFFFFFFD)
  {
    __assert_rtn("coap_session_send_csm", "coap_session.c", 291, "COAP_PROTO_RELIABLE(session->proto)");
  }

  if (maxlog >= 7)
  {
    coap_session_str(a1);
    coap_log_impl(7, "***%s: sending CSM\n", &coap_session_str_szSession);
  }

  a1[2] = 3;
  *(a1 + 30) = 0;
  if (!*(a1 + 3))
  {
    *(a1 + 3) = 1152;
  }

  v2 = coap_pdu_init(0, 0xE1u, 0, 0x10uLL);
  if (v2)
  {
    v3 = v2;
    v4 = coap_encode_var_safe(v5, 0x800100u);
    if (!coap_add_option(v3, 2u, v4, v5) || !coap_pdu_encode_header(v3, *a1) || coap_session_send_pdu(a1, v3) != *(v3 + 24) + *(v3 + 3))
    {
      coap_session_disconnected(a1, 1);
    }

    coap_delete_pdu(v3);
  }

  else
  {

    coap_session_disconnected(a1, 1);
  }
}

void coap_session_disconnected(unsigned __int8 *a1, int a2)
{
  v4 = a1[2];
  if (maxlog >= 7)
  {
    coap_session_str(a1);
    coap_log_impl(7, "***%s: session disconnected (reason %d)\n", &coap_session_str_szSession, a2);
  }

  v5 = *(*(a1 + 26) + 16);
  if (v5)
  {
    do
    {
      v6 = *(v5 + 80);
      v7 = *(v5 + 128);
      if (v7)
      {
        do
        {
          v8 = *v7;
          if (v7[1] == a1)
          {
            v9 = *(v5 + 128);
            if (v9 == v7)
            {
              *(v5 + 128) = *v9;
            }

            else
            {
              do
              {
                v10 = v9;
                v9 = *v9;
                if (v9)
                {
                  v11 = v9 == v7;
                }

                else
                {
                  v11 = 1;
                }
              }

              while (!v11);
              if (v9)
              {
                *v10 = v8;
              }
            }

            coap_session_release(a1);
            v12 = v7[6];
            if (v12)
            {
              free(v12);
            }

            free(v7);
          }

          v7 = v8;
        }

        while (v8);
      }

      v5 = v6;
    }

    while (v6);
  }

  v13 = *a1;
  if (*(a1 + 27))
  {
    *(a1 + 27) = 0;
  }

  a1[2] = 4 * (v13 == 1);
  a1[226] = 0;
  v14 = *(a1 + 33);
  if (v14)
  {
    coap_delete_pdu(v14);
    *(a1 + 33) = 0;
  }

  *(a1 + 32) = 0;
  for (i = *(a1 + 29); i; i = *(a1 + 29))
  {
    *(a1 + 29) = *i;
    *i = 0;
    if (maxlog >= 7)
    {
      coap_session_str(a1);
      coap_log_impl(7, "** %s: tid=%d: not transmitted after disconnect\n", &coap_session_str_szSession, *(i + 32));
    }

    if (**(i + 40))
    {
      goto LABEL_28;
    }

    v16 = *a1;
    if (v16 == 1)
    {
      if (a2 != 4)
      {
        goto LABEL_38;
      }
    }

    else if (a2 != 4 || v16 != 2)
    {
      goto LABEL_38;
    }

    if ((coap_wait_ack(*(a1 + 26), a1, i) & 0x80000000) == 0)
    {
      continue;
    }

    if (!**(i + 40))
    {
LABEL_38:
      v17 = *(*(a1 + 26) + 80);
      if (v17)
      {
        v18 = *(i + 32);
        v17();
      }
    }

LABEL_28:
    coap_delete_node(i);
  }

  if (a2 != 4)
  {
    v19 = *(a1 + 26);
    v20 = *(v19 + 48);
    if (v20)
    {
      while (1)
      {
        v21 = *v20;
        if (*(v20 + 24) != a1)
        {
          break;
        }

        *(v19 + 48) = v21;
        if (maxlog >= 7)
        {
          coap_session_str(a1);
          coap_log_impl(7, "** %s: tid=%d: removed\n", &coap_session_str_szSession, *(v20 + 32));
        }

        if (!**(v20 + 40))
        {
          v22 = *(v19 + 80);
          if (v22)
          {
            v23 = *(v20 + 32);
            v22(v19, a1);
          }
        }

        coap_delete_node(v20);
        v20 = *(v19 + 48);
        if (!v20)
        {
          goto LABEL_60;
        }
      }

      if (v21)
      {
        do
        {
          if (*(v21 + 24) == a1)
          {
            *v20 = *v21;
            if (maxlog >= 7)
            {
              coap_session_str(a1);
              coap_log_impl(7, "** %s: tid=%d: removed\n", &coap_session_str_szSession, *(v21 + 32));
            }

            if (!**(v21 + 40))
            {
              v24 = *(v19 + 80);
              if (v24)
              {
                v25 = *(v21 + 32);
                v24(v19, a1);
              }
            }

            coap_delete_node(v21);
          }

          else
          {
            v20 = v21;
          }

          v21 = *v20;
        }

        while (*v20);
      }
    }
  }

LABEL_60:
  if (*a1 - 3 <= 1)
  {
    if (*(a1 + 90))
    {
      v26 = *(a1 + 44);
      if (v26 != -1)
      {
        *(a1 + 23) = 0;
        *(a1 + 24) = 0;
        close(v26);
        *(a1 + 44) = -1;
      }

      *(a1 + 90) = 0;
      if (v4 == 1)
      {
        v27 = 4099;
      }

      else
      {
        v27 = 4098;
      }

      coap_handle_event(*(a1 + 26), v27, a1);
    }

    if (v4)
    {
      v28 = *(a1 + 26);
      if (v4 == 4)
      {
        v29 = 8194;
      }

      else
      {
        v29 = 8195;
      }

      coap_handle_event(v28, v29, a1);
    }
  }
}

void coap_session_connected(unsigned __int8 *a1)
{
  v2 = a1[2];
  if (v2 != 4)
  {
    if (maxlog >= 7)
    {
      coap_session_str(a1);
      coap_log_impl(7, "***%s: session connected\n", &coap_session_str_szSession);
      v2 = a1[2];
    }

    if (v2 == 3)
    {
      coap_handle_event(*(a1 + 26), 8193, a1);
    }
  }

  a1[2] = 4;
  *(a1 + 30) = 0;
  if (*a1 == 2)
  {
    *(a1 + 2) = 0;
    if (!*(a1 + 3) && maxlog >= 3)
    {
      coap_log_impl(3, "DTLS overhead exceeds MTU\n");
    }
  }

  v4 = *(a1 + 29);
  if (v4)
  {
    while (a1[2] == 4)
    {
      v5 = v4[5];
      if (!*v5 && *a1 - 1 <= 1)
      {
        if (a1[226])
        {
          return;
        }

        a1[226] = 1;
      }

      *(a1 + 29) = *v4;
      *v4 = 0;
      if (maxlog >= 7)
      {
        coap_session_str(a1);
        coap_log_impl(7, "** %s: tid=%d: transmitted after delay\n", &coap_session_str_szSession, *(v4[5] + 6));
        v5 = v4[5];
      }

      v6 = coap_session_send_pdu(a1, v5);
      v7 = *a1 - 1;
      if (*v4[5])
      {
        v8 = 1;
      }

      else
      {
        v8 = (*a1 - 1) > 1u;
      }

      if (!v8)
      {
        if (coap_wait_ack(*(a1 + 26), a1, v4) >= 0)
        {
          v4 = 0;
        }

        v7 = *a1 - 1;
      }

      if (v7 > 1u)
      {
        if (v6 < 1)
        {
          *v4 = *(a1 + 29);
          *(a1 + 29) = v4;
          return;
        }

        if (v6 < *(v4[5] + 24) + *(v4[5] + 3))
        {
          *v4 = *(a1 + 29);
          *(a1 + 29) = v4;
          *(a1 + 30) = v6;
          return;
        }

        coap_delete_node(v4);
      }

      else
      {
        if (v4)
        {
          coap_delete_node(v4);
        }

        if (v6 < 0)
        {
          return;
        }
      }

      v4 = *(a1 + 29);
      if (!v4)
      {
        return;
      }
    }
  }
}

char *coap_make_session(int a1, char a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, int a6, uint64_t a7, uint64_t a8)
{
  v16 = malloc_type_malloc(0x178uLL, 0x5CBEF798uLL);
  v17 = v16;
  if (!v16)
  {
    return v17;
  }

  *(v16 + 46) = 0;
  *(v16 + 242) = 0u;
  *(v16 + 226) = 0u;
  *(v16 + 210) = 0u;
  *(v16 + 194) = 0u;
  *(v16 + 178) = 0u;
  *(v16 + 162) = 0u;
  *(v16 + 146) = 0u;
  *(v16 + 130) = 0u;
  *(v16 + 114) = 0u;
  *(v16 + 98) = 0u;
  *(v16 + 82) = 0u;
  *(v16 + 66) = 0u;
  *(v16 + 50) = 0u;
  *(v16 + 34) = 0u;
  *(v16 + 18) = 0u;
  *(v16 + 2) = 0u;
  *(v16 + 338) = 0u;
  *(v16 + 354) = 0u;
  *(v16 + 306) = 0u;
  *(v16 + 322) = 0u;
  *(v16 + 274) = 0u;
  *(v16 + 290) = 0u;
  *(v16 + 258) = 0u;
  *v16 = a1;
  v16[1] = a2;
  if (a3)
  {
    *(v16 + 1) = 0uLL;
    *(v16 + 2) = 0uLL;
    v18 = *a3;
    *(v16 + 4) = v18;
    v19 = *(a3 + 5);
    if (v19 == 2)
    {
      *(v16 + 20) = *(a3 + 1);
      if (!a4)
      {
        goto LABEL_17;
      }
    }

    else if (v19 == 30)
    {
      v16[21] = 30;
      *(v16 + 28) = *(a3 + 3);
      *(v16 + 11) = *(a3 + 3);
      *(v16 + 11) = a3[7];
      if (!a4)
      {
        goto LABEL_17;
      }
    }

    else
    {
      memcpy(v16 + 20, a3 + 1, v18);
      if (!a4)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    *(v16 + 28) = 0;
    *(v16 + 20) = 0;
    *(v16 + 11) = 0;
    *(v16 + 36) = 0;
    *(v16 + 4) = 28;
    if (!a4)
    {
LABEL_17:
      *(v17 + 148) = 0;
      *(v17 + 140) = 0;
      *(v17 + 41) = 0;
      *(v17 + 156) = 0;
      *(v17 + 34) = 28;
      if (a5)
      {
        goto LABEL_18;
      }

      goto LABEL_23;
    }
  }

  *(v17 + 152) = 0u;
  *(v17 + 136) = 0u;
  v20 = *a4;
  *(v17 + 34) = v20;
  v21 = *(a4 + 5);
  if (v21 == 2)
  {
    *(v17 + 140) = *(a4 + 1);
    if (a5)
    {
      goto LABEL_18;
    }
  }

  else if (v21 == 30)
  {
    v17[141] = 30;
    *(v17 + 148) = *(a4 + 3);
    *(v17 + 71) = *(a4 + 3);
    *(v17 + 41) = a4[7];
    if (a5)
    {
      goto LABEL_18;
    }
  }

  else
  {
    memcpy(v17 + 140, a4 + 1, v20);
    if (a5)
    {
LABEL_18:
      *(v17 + 120) = 0u;
      *(v17 + 104) = 0u;
      v22 = *a5;
      *(v17 + 26) = v22;
      v23 = *(a5 + 5);
      if (v23 == 2)
      {
        *(v17 + 108) = *(a5 + 1);
      }

      else if (v23 == 30)
      {
        v17[109] = 30;
        *(v17 + 116) = *(a5 + 3);
        *(v17 + 55) = *(a5 + 3);
        *(v17 + 33) = a5[7];
      }

      else
      {
        memcpy(v17 + 108, a5 + 1, v22);
      }

      goto LABEL_25;
    }
  }

LABEL_23:
  *(v17 + 116) = 0;
  *(v17 + 108) = 0;
  *(v17 + 33) = 0;
  *(v17 + 124) = 0;
  *(v17 + 26) = 28;
LABEL_25:
  *(v17 + 42) = a6;
  *(v17 + 25) = a8;
  *(v17 + 26) = a7;
  if (a8)
  {
    v24 = *(a8 + 18);
    *(v17 + 3) = v24;
    if (a1 == 2)
    {
      *(v17 + 2) = 29;
      if (v24 <= 0x1D)
      {
        *(v17 + 2) = v24;
        if (maxlog >= 3)
        {
          coap_log_impl(3, "DTLS overhead exceeds MTU\n");
        }
      }
    }
  }

  else
  {
    *(v17 + 3) = 1152;
    if (a1 == 2)
    {
      *(v17 + 2) = 29;
    }
  }

  *(v17 + 88) = 4;
  *(v17 + 356) = 0x1F4000100000002;
  *(v17 + 92) = -1;
  *(v17 + 57) = -1;
  arc4random_buf(v17 + 224, 2uLL);
  return v17;
}

size_t coap_print_addr(uint64_t a1, char *__dst, unint64_t a3)
{
  v3 = a3;
  v6 = *(a1 + 5);
  if (v6 == 30)
  {
    if (a3 < 7)
    {
      return 0;
    }

    *__dst = 91;
    v10 = __dst + 1;
    v7 = (a1 + 12);
    v8 = *(a1 + 5);
    v9 = 46;
LABEL_6:
    v11 = *(a1 + 6);
    if (v9 >= a3)
    {
      v12 = a3;
    }

    else
    {
      v12 = v9;
    }

    if (inet_ntop(v8, v7, v10, v12))
    {
      v13 = &v10[strnlen(v10, v3)];
      if (*(a1 + 5) != 30)
      {
        return &__dst[v3] - &v13[snprintf(v13, &__dst[v3] - v13 + 1, ":%d", bswap32(v11) >> 16)];
      }

      if (v13 < &__dst[v3])
      {
        *v13++ = 93;
        return &__dst[v3] - &v13[snprintf(v13, &__dst[v3] - v13 + 1, ":%d", bswap32(v11) >> 16)];
      }
    }

    else
    {
      perror("coap_print_addr");
    }

    return 0;
  }

  if (v6 == 2)
  {
    v7 = (a1 + 8);
    v8 = 2;
    v9 = 16;
    v10 = __dst;
    goto LABEL_6;
  }

  if (a3 >= 0x16)
  {
    v3 = 22;
  }

  memcpy(__dst, "(unknown address type)", v3);
  return v3;
}

uint64_t coap_show_pdu(uint64_t result)
{
  v92 = *MEMORY[0x277D85DE8];
  if (maxlog < 7)
  {
    goto LABEL_113;
  }

  v1 = result;
  v2 = *result;
  if (v2 >= 4)
  {
    v2 = 4;
  }

  v3 = msg_type_string_types[v2];
  v4 = *(result + 1);
  if (v4 > 7)
  {
    if ((v4 - 224) > 5)
    {
      v5 = msg_code_string_buf;
      snprintf(msg_code_string_buf, 5uLL, "%u.%02u", v4 >> 5, v4 & 0x1F);
    }

    else
    {
      v5 = msg_code_string_signals[(v4 - 224)];
    }
  }

  else
  {
    v5 = msg_code_string_methods[v4];
  }

  v89 = 0;
  memset(v88, 0, sizeof(v88));
  snprintf(__str, 0x808uLL, "v:%d t:%s c:%s i:%04x {", 1, v3, v5, *(v1 + 6));
  if (*(v1 + 4))
  {
    v6 = 0;
    do
    {
      v7 = strlen(__str);
      snprintf(&__str[v7], 2056 - v7, "%02x", *(*(v1 + 40) + v6++));
    }

    while (v6 < *(v1 + 4));
  }

  v8 = strlen(__str);
  snprintf(&__str[v8], 2056 - v8, "}");
  coap_option_iterator_init(v1, v88, 0);
  v9 = strlen(__str);
  snprintf(&__str[v9], 2056 - v9, " [");
  v10 = -1;
  for (i = 1; ; i = 0)
  {
    v12 = coap_option_next(v88);
    if (!v12)
    {
      break;
    }

    v13 = v12;
    if ((i & 1) == 0)
    {
      v14 = strlen(__str);
      snprintf(&__str[v14], 2056 - v14, ",");
    }

    v15 = *(v1 + 1);
    if (v15 <= 0xE3)
    {
      if (v15 - 226 < 2)
      {
        goto LABEL_18;
      }

      if (v15 == 225)
      {
        if (WORD4(v88[0]) != 2)
        {
          goto LABEL_18;
        }

        v22 = coap_opt_value(v13);
        v23 = coap_opt_length(v13);
        v24 = 0;
        if (v23)
        {
          v25 = v23;
          do
          {
            v26 = *v22++;
            v24 = v26 | (v24 << 8);
            --v25;
          }

          while (v25);
        }

        goto LABEL_53;
      }

      goto LABEL_35;
    }

    if (v15 != 228)
    {
      if (v15 == 229)
      {
        if (WORD4(v88[0]) != 2)
        {
          goto LABEL_18;
        }

        v17 = coap_opt_value(v13);
        v18 = coap_opt_length(v13);
        v19 = 0;
        if (v18)
        {
          v20 = v18;
          do
          {
            v21 = *v17++;
            v19 = v21 | (v19 << 8);
            --v20;
          }

          while (v20);
        }

        goto LABEL_53;
      }

LABEL_35:
      v31 = 0;
      if (WORD4(v88[0]) <= 0xAu)
      {
        if (WORD4(v88[0]) - 6 < 2)
        {
LABEL_46:
          v33 = coap_opt_value(v13);
          v34 = coap_opt_length(v13);
          v35 = 0;
          if (v34)
          {
            v36 = v34;
            do
            {
              v37 = *v33++;
              v35 = v37 | (v35 << 8);
              --v36;
            }

            while (v36);
          }

LABEL_53:
          v43 = snprintf(v91, 0x400uLL, "%u");
LABEL_54:
          v16 = v43;
          goto LABEL_67;
        }

        if (WORD4(v88[0]) != 3 && WORD4(v88[0]) != 8)
        {
LABEL_64:
          v31 = 1;
        }
      }

      else
      {
        if (WORD4(v88[0]) > 0x3Cu)
        {
          goto LABEL_55;
        }

        if (((1 << SBYTE8(v88[0])) & 0x800108000) == 0)
        {
          if (((1 << SBYTE8(v88[0])) & 0x1000000010004000) != 0)
          {
            goto LABEL_46;
          }

          if (((1 << SBYTE8(v88[0])) & 0x8800000) != 0)
          {
            coap_opt_block_num(v13);
            if (coap_opt_length(v13))
            {
              coap_opt_length(v13);
              v32 = coap_opt_value(v13);
              v32[coap_opt_length(v13) - 1];
            }

            if (coap_opt_length(v13))
            {
              coap_opt_length(v13);
              v62 = coap_opt_value(v13);
              v63 = (v62[coap_opt_length(v13) - 1] & 7) + 4;
            }

            v43 = snprintf(v91, 0x400uLL, "%u/%c/%u");
            goto LABEL_54;
          }

LABEL_55:
          if (WORD4(v88[0]) != 11)
          {
            if (WORD4(v88[0]) == 12)
            {
              v44 = coap_opt_value(v13);
              v45 = coap_opt_length(v13);
              v10 = 0;
              if (v45)
              {
                v46 = v45;
                do
                {
                  v47 = *v44++;
                  v10 = v47 | (v10 << 8);
                  --v46;
                }

                while (v46);
              }

              v48 = 24;
              v49 = &print_content_format_formats;
              while (*v49 != v10)
              {
                v49 += 4;
                if (!--v48)
                {
                  v43 = snprintf(v91, 0x400uLL, "%d");
                  goto LABEL_54;
                }
              }

              v87 = *(v49 + 1);
              v43 = snprintf(v91, 0x400uLL, "%s");
              goto LABEL_54;
            }

            goto LABEL_64;
          }
        }
      }

      v50 = coap_opt_value(v13);
      v28 = coap_opt_length(v13);
      v29 = v50;
      v30 = v31;
      goto LABEL_66;
    }

    if (WORD4(v88[0]) == 4)
    {
      v38 = coap_opt_value(v13);
      v39 = coap_opt_length(v13);
      v40 = 0;
      if (v39)
      {
        v41 = v39;
        do
        {
          v42 = *v38++;
          v40 = v42 | (v40 << 8);
          --v41;
        }

        while (v41);
      }

      goto LABEL_53;
    }

    if (WORD4(v88[0]) != 2)
    {
LABEL_18:
      v16 = 0;
      goto LABEL_67;
    }

    v27 = coap_opt_value(v13);
    v28 = coap_opt_length(v13);
    v29 = v27;
    v30 = 0;
LABEL_66:
    v16 = print_readable(v29, v28, v91, v30);
LABEL_67:
    v51 = strlen(__str);
    v52 = *(v1 + 1);
    if (v52 == 225)
    {
      v53 = 0;
      v54 = 1;
      while (1)
      {
        v55 = v54;
        v56 = &msg_option_string_options_csm[8 * v53];
        if (*v56 == WORD4(v88[0]))
        {
          break;
        }

        v54 = 0;
        v53 = 1;
        if ((v55 & 1) == 0)
        {
          goto LABEL_82;
        }
      }

LABEL_87:
      v57 = *(v56 + 1);
      goto LABEL_88;
    }

    if ((v52 & 0xFE) == 0xE2)
    {
      v57 = "Custody";
    }

    else
    {
      if (v52 != 229)
      {
        if (v52 == 228)
        {
          v58 = 0;
          v59 = 1;
          while (1)
          {
            v60 = v59;
            v56 = &msg_option_string_options_release[8 * v58];
            if (*v56 == WORD4(v88[0]))
            {
              break;
            }

            v59 = 0;
            v58 = 1;
            if ((v60 & 1) == 0)
            {
              goto LABEL_82;
            }
          }
        }

        else
        {
          v61 = 20;
          v56 = &msg_option_string_options;
          while (*v56 != WORD4(v88[0]))
          {
            v56 += 8;
            if (!--v61)
            {
              goto LABEL_82;
            }
          }
        }

        goto LABEL_87;
      }

      v57 = "Bad-CSM-Option";
    }

    if (WORD4(v88[0]) != 2)
    {
LABEL_82:
      v57 = msg_option_string_buf;
      snprintf(msg_option_string_buf, 6uLL, "%u", WORD4(v88[0]));
    }

LABEL_88:
    snprintf(&__str[v51], 2056 - v51, " %s:%.*s", v57, v16, v91);
  }

  v64 = strlen(__str);
  snprintf(&__str[v64], 2056 - v64, " ]");
  v65 = *(v1 + 48);
  v66 = MEMORY[0x277D85E08];
  if (v65)
  {
    v67 = *(v1 + 24) - v65 + *(v1 + 40);
    v68 = strlen(__str);
    snprintf(&__str[v68], 2056 - v68, " :: ");
    if ((v10 + 1) <= 0x33 && ((1 << (v10 + 1)) & 0x8060000000003) != 0)
    {
      if (print_readable(v65, v67, v91, 0))
      {
        v69 = strlen(__str);
        if (snprintf(&__str[v69], 2056 - v69, "'%s'", v91) >= 2056 - v69)
        {
          __str[2055] = 0;
        }
      }
    }

    else
    {
      v70 = strlen(__str);
      snprintf(&__str[v70], 2056 - v70, "binary data length %zu\n", v67);
      fputs(__str, *v66);
      strcpy(__str, "<<");
      if (v67)
      {
        v71 = v67;
        v72 = v65;
        do
        {
          --v71;
          v73 = strlen(__str);
          v74 = *v72++;
          snprintf(&__str[v73], 2056 - v73, "%02x", v74);
        }

        while (v71);
      }

      v75 = strlen(__str);
      snprintf(&__str[v75], 2056 - v75, ">>");
      v76 = v67 << 32;
      v77 = strlen(__str);
      snprintf(&__str[v77], 2056 - v77, "\n");
      fputs(__str, *v66);
      strcpy(__str, "<<");
      if (v76)
      {
        v78 = v76 >> 32;
        v79 = MEMORY[0x277D85DE0];
        do
        {
          v80 = strlen(__str);
          v81 = *v65;
          if ((v81 & 0x80) != 0)
          {
            v82 = __maskrune(*v65, 0x40000uLL);
          }

          else
          {
            v82 = *(v79 + 4 * *v65 + 60) & 0x40000;
          }

          --v78;
          if (v82)
          {
            v83 = v81;
          }

          else
          {
            v83 = 46;
          }

          snprintf(&__str[v80], 2056 - v80, "%c ", v83);
          ++v65;
        }

        while (v78);
      }

      v84 = strlen(__str);
      snprintf(&__str[v84], 2056 - v84, ">>");
      v66 = MEMORY[0x277D85E08];
    }
  }

  v85 = strlen(__str);
  snprintf(&__str[v85], 2056 - v85, "\n");
  result = fputs(__str, *v66);
LABEL_113:
  v86 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t print_readable(_BYTE *a1, uint64_t a2, _BYTE *a3, int a4)
{
  v6 = a2;
  v7 = a1;
  if (!a1 && a2)
  {
    __assert_rtn("print_readable", "coap_debug.c", 124, "data || len == 0");
  }

  v8 = 0;
  if (a2)
  {
    v9 = MEMORY[0x277D85DE0];
    do
    {
      if (!a4)
      {
        v11 = *v7;
        if (v11 < 0)
        {
          if (__maskrune(*v7, 0x40000uLL))
          {
LABEL_12:
            v10 = v8 + 1;
            if ((v8 + 1) > 0x3FF)
            {
              break;
            }

            *a3++ = v11;
            goto LABEL_14;
          }
        }

        else if ((*(v9 + 4 * v11 + 60) & 0x40000) != 0)
        {
          goto LABEL_12;
        }
      }

      v10 = v8 + 4;
      if ((v8 + 4) > 0x3FF)
      {
        break;
      }

      *a3 = 30812;
      a3[2] = a0123456789abcd_0[*v7 >> 4];
      a3[3] = a0123456789abcd_0[*v7 & 0xF];
      a3 += 4;
LABEL_14:
      v8 = v10;
      ++v7;
      --v6;
    }

    while (v6);
  }

  *a3 = 0;
  return v8;
}

void coap_log_impl(signed int a1, char *__format, ...)
{
  va_start(va, __format);
  v10 = *MEMORY[0x277D85DE8];
  if (maxlog >= a1)
  {
    if (log_handler)
    {
      va_copy(v8, va);
      vsnprintf(__str, 0x808uLL, __format, va);
      coapLogHandler(a1, __str);
    }

    else
    {
      v4 = MEMORY[0x277D85DF8];
      if (a1 >= 3)
      {
        v4 = MEMORY[0x277D85E08];
      }

      v5 = *v4;
      __str[0].tv_sec = 0;
      *&__str[0].tv_usec = 0;
      gettimeofday(__str, 0);
      v8 = coap_clock_offset + (1000 * (__str[0].tv_sec - coap_clock_offset) + ((__str[0].tv_usec * 1.024 + 512.0) >> 10)) / 0x3E8;
      v6 = localtime(&v8);
      if (strftime(__str, 0x20uLL, "%b %d %H:%M:%S", v6))
      {
        fprintf(v5, "%s ", __str);
      }

      if (a1 <= 9)
      {
        fprintf(v5, "%s ", loglevels[a1]);
      }

      vfprintf(v5, __format, va);
      fflush(v5);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

unint64_t coap_opt_parse(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v15 = "opt";
    goto LABEL_35;
  }

  if (!a3)
  {
    v15 = "result";
LABEL_35:
    __assert_rtn("coap_opt_parse", "option.c", 39, v15);
  }

  if (!a2)
  {
    return 0;
  }

  v3 = *a1 >> 4;
  *a3 = v3;
  v4 = *a1 & 0xF;
  *(a3 + 8) = v4;
  if (v3 == 13)
  {
    v7 = a1;
LABEL_15:
    if (!--a2)
    {
      return 0;
    }

    v9 = v7[1];
    v5 = v7 + 1;
    *a3 = v3 + v9;
LABEL_17:
    switch(v4)
    {
      case 0xD:
        v11 = 13;
        break;
      case 0xE:
        if (!--a2)
        {
          return 0;
        }

        v10 = *++v5;
        v11 = (v10 << 8) + 269;
        *(a3 + 8) = v11;
        break;
      case 0xF:
        if (maxlog >= 7)
        {
          coap_log_impl(7, "found reserved option length 15\n");
        }

        return 0;
      default:
        goto LABEL_27;
    }

    if (!--a2)
    {
      return 0;
    }

    v12 = *++v5;
    v4 = v11 + v12;
    *(a3 + 8) = v4;
LABEL_27:
    v13 = v5 + 1;
    *(a3 + 16) = v13;
    if (a2 - 1 >= v4)
    {
      return &v13[v4] - a1;
    }

    if (maxlog >= 7)
    {
      coap_log_impl(7, "invalid option length\n");
    }

    return 0;
  }

  if (v3 == 14)
  {
    if (!--a2)
    {
      return 0;
    }

    v7 = a1 + 1;
    v8 = a1[1];
    LOWORD(v3) = (v8 << 8) + 269;
    *a3 = v3;
    if (v8 == 255)
    {
      if (maxlog >= 7)
      {
        coap_log_impl(7, "delta too large\n");
      }

      return 0;
    }

    goto LABEL_15;
  }

  v5 = a1;
  if (v3 != 15)
  {
    goto LABEL_17;
  }

  v6 = 0;
  if (*a1 != 255 && maxlog >= 7)
  {
    coap_log_impl(7, "ignored reserved option delta 15\n");
    return 0;
  }

  return v6;
}

uint64_t coap_option_iterator_init(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (!result)
  {
    __assert_rtn("coap_option_iterator_init", "option.c", 112, "pdu");
  }

  if (!*(result + 40))
  {
    __assert_rtn("coap_option_iterator_init", "option.c", 113, "pdu->token");
  }

  if (!a2)
  {
    __assert_rtn("coap_option_iterator_init", "option.c", 114, "oi");
  }

  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = *(result + 4);
  *(a2 + 16) = *(result + 40) + v3;
  v4 = *(result + 24);
  v5 = v4 <= v3;
  v6 = v4 - v3;
  if (v5)
  {
    v8 = 1;
  }

  else
  {
    *a2 = v6;
    if (!a3)
    {
      return result;
    }

    v7 = *a3;
    *(a2 + 32) = *(a3 + 2);
    *(a2 + 24) = v7;
    v8 = 2;
  }

  *(a2 + 10) = v8;
  return result;
}

unsigned __int8 *coap_option_next(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("coap_option_next", "option.c", 152, "oi");
  }

  v2 = *(a1 + 10);
  if ((v2 & 1) == 0)
  {
    if (*a1)
    {
      v3 = *(a1 + 16);
      if (v3)
      {
        memset(v9, 0, sizeof(v9));
        if (*v3 != 255)
        {
          while (1)
          {
            v4 = *(a1 + 16);
            v5 = coap_opt_parse(v4, *a1, v9);
            if (!v5)
            {
              break;
            }

            v6 = *a1 - v5;
            if (*a1 < v5)
            {
              __assert_rtn("coap_option_next", "option.c", 167, "optsize <= oi->length");
            }

            *(a1 + 16) += v5;
            *a1 = v6;
            v7 = *(a1 + 8) + LOWORD(v9[0]);
            *(a1 + 8) = v7;
            if ((*(a1 + 10) & 2) == 0 || coap_option_filter_op((a1 + 24), v7, 2))
            {
              return v4;
            }
          }

          v2 = *(a1 + 10);
        }
      }
    }
  }

  v4 = 0;
  *(a1 + 10) = v2 | 1;
  return v4;
}

uint64_t coap_option_filter_op(_WORD *a1, unsigned int a2, int a3)
{
  v3 = *a1;
  if (a2 >= 0x100)
  {
    v7 = 0;
    v8 = 1;
    v9 = 1;
    while (1)
    {
      v10 = v9;
      if ((v8 & v3) != 0 && a1[v7 + 1] == a2)
      {
        break;
      }

      v9 = 0;
      v8 = 2 * v8;
      v7 = 1;
      if ((v10 & 1) == 0)
      {
        v6 = 3;
LABEL_12:
        if ((a3 - 1) < 2)
        {
          return 0;
        }

        v11 = v6 & ~v3;
        if ((v6 & ~v3) == 0)
        {
          return 0;
        }

        v12 = -1;
        do
        {
          ++v12;
          v13 = v11 > 1;
          v11 >>= 1;
        }

        while (v13);
        if (a2 >= 0x100)
        {
          a1[v12 + 1] = a2;
        }

        else
        {
          *(a1 + v12 + 4) = a2;
        }

        v3 |= 1 << v12;
        goto LABEL_25;
      }
    }

    if (a3 != 1)
    {
      return 1;
    }

    LOWORD(v3) = v3 & ~v8;
  }

  else
  {
    v4 = 0;
    v5 = 4;
    while ((v5 & v3) == 0 || *(a1 + v4 + 6) != a2)
    {
      v5 = (2 * v5) & 0x1FFF8;
      if (++v4 == 6)
      {
        v6 = 252;
        goto LABEL_12;
      }
    }

    if (a3 != 1)
    {
      return 1;
    }

    LOWORD(v3) = v3 & ~v5;
  }

LABEL_25:
  *a1 = v3;
  return 1;
}

unsigned __int8 *coap_check_option(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v7 = 0;
  coap_option_filter_op(&v7, a2, 0);
  coap_option_iterator_init(a1, a3, &v7);
  result = coap_option_next(a3);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t coap_opt_length(_BYTE *a1)
{
  v1 = *a1;
  v2 = *a1 & 0xF0;
  switch(v2)
  {
    case 208:
      goto LABEL_7;
    case 224:
      ++a1;
LABEL_7:
      ++a1;
      break;
    case 240:
      if (maxlog >= 7)
      {
        coap_log_impl(7, "illegal option delta\n");
      }

LABEL_13:
      LOWORD(v3) = 0;
      return v3;
  }

  LODWORD(v3) = v1 & 0xF;
  switch(v3)
  {
    case 0xD:
      v3 = a1 + 1;
      v4 = 13;
      goto LABEL_16;
    case 0xE:
      v3 = a1 + 2;
      v4 = (a1[1] << 8) + 269;
LABEL_16:
      LOWORD(v3) = v4 + *v3;
      return v3;
    case 0xF:
      if (maxlog >= 7)
      {
        coap_log_impl(7, "illegal option length\n");
      }

      goto LABEL_13;
  }

  return v3;
}

_BYTE *coap_opt_value(_BYTE *a1)
{
  v1 = *a1 & 0xF0;
  switch(v1)
  {
    case 208:
      v2 = 2;
      break;
    case 224:
      v2 = 3;
      break;
    case 240:
      if (maxlog >= 7)
      {
        coap_log_impl(7, "illegal option delta\n");
      }

      return 0;
    default:
      v2 = 1;
      break;
  }

  v3 = *a1 & 0xF;
  switch(v3)
  {
    case 13:
      return &a1[++v2];
    case 14:
      ++v2;
      return &a1[++v2];
    case 15:
      if (maxlog >= 7)
      {
        coap_log_impl(7, "illegal option length\n");
      }

      return 0;
  }

  return &a1[v2];
}

uint64_t coap_opt_block_num(_BYTE *a1)
{
  result = coap_opt_length(a1);
  if (result)
  {
    if (result == 1 || (v3 = coap_opt_value(a1), v4 = coap_opt_length(a1), v5 = (v4 - 1), v4 == 1))
    {
      v8 = 0;
    }

    else
    {
      v6 = 0;
      do
      {
        v7 = *v3++;
        v6 = v7 | (v6 << 8);
        --v5;
      }

      while (v5);
      v8 = 16 * v6;
    }

    coap_opt_length(a1);
    v9 = coap_opt_value(a1);
    return v8 | (v9[coap_opt_length(a1) - 1] >> 4);
  }

  return result;
}

uint64_t coap_get_block(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    __assert_rtn("coap_get_block", "block.c", 40, "block");
  }

  *a2 = 0;
  if (result)
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    result = coap_check_option(result, 0x17u, v8);
    if (result)
    {
      v3 = result;
      if (coap_opt_length(result))
      {
        coap_opt_length(v3);
        v4 = coap_opt_value(v3);
        v5 = 2 * (v4[coap_opt_length(v3) - 1] & 7);
      }

      else
      {
        v5 = 0;
      }

      *(a2 + 4) = *(a2 + 4) & 0xF1 | v5;
      if (coap_opt_length(v3))
      {
        coap_opt_length(v3);
        v6 = coap_opt_value(v3);
        if ((v6[coap_opt_length(v3) - 1] & 8) != 0)
        {
          *(a2 + 4) |= 1u;
        }
      }

      v7 = coap_opt_block_num(v3);
      if (v7 >> 20)
      {
        return 0;
      }

      else
      {
        *a2 = v7;
        return 1;
      }
    }
  }

  return result;
}

uint64_t coap_encode_var_safe(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a2;
  do
  {
    result = v3 + 1;
    if (v4 < 0x100)
    {
      break;
    }

    v4 >>= 8;
  }

  while (v3++ < 3);
  v7 = a1 - 1;
  v8 = result;
  do
  {
    *(v7 + v8) = a2;
    a2 >>= 8;
    --v8;
  }

  while (v8);
  return result;
}

void *coap_new_string(uint64_t a1)
{
  v2 = malloc_type_malloc(a1 + 17, 0x5CBEF798uLL);
  v3 = v2;
  if (v2)
  {
    *v2 = 0;
    v2[1] = v2 + 2;
    *(v2 + a1 + 16) = 0;
  }

  else if (maxlog >= 2)
  {
    coap_log_impl(2, "coap_new_string: malloc: failed\n");
  }

  return v3;
}

ssize_t coap_network_send(uint64_t a1, uint64_t a2, void *a3, size_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  ++send_packet_count;
  if ((*(a1 + 4) & 4) == 0)
  {
    if (!a2)
    {
      __assert_rtn("coap_network_send", "coap_io.c", 874, "session");
    }

    v19[0] = a3;
    v19[1] = a4;
    memset(v20, 0, sizeof(v20));
    memset(&v18.msg_namelen, 0, 40);
    v18.msg_name = (a2 + 108);
    v18.msg_namelen = *(a2 + 104);
    v18.msg_iov = v19;
    v18.msg_iovlen = 1;
    v5 = *(a2 + 141);
    if (v5 == 30)
    {
      v8 = bswap64(*MEMORY[0x277D85EE8]);
      v9 = bswap64(*(a2 + 148));
      if (v8 == v9 && (v8 = bswap64(*(MEMORY[0x277D85EE8] + 8)), v9 = bswap64(*(a2 + 156)), v8 == v9))
      {
        v6 = 0;
      }

      else if (v8 < v9)
      {
        v6 = -1;
      }

      else
      {
        v6 = 1;
      }
    }

    else
    {
      if (v5 != 2)
      {
        if (maxlog >= 4)
        {
          coap_log_impl(4, "protocol not supported\n");
        }

        goto LABEL_26;
      }

      v6 = *(a2 + 144);
    }

    if (v6)
    {
      if (v5 == 2)
      {
        if ((*(a2 + 144) & 0xF0) != 0xE0)
        {
          v18.msg_control = v20;
          v18.msg_controllen = 24;
          *&v20[0] = 24;
          v12 = *(a2 + 168);
          DWORD2(v20[0]) = 26;
          HIDWORD(v20[0]) = v12;
          v11 = *(a2 + 144);
LABEL_24:
          LODWORD(v20[1]) = v11;
        }
      }

      else if (*(a2 + 148) != 255)
      {
        if (*(a2 + 148) || *(a2 + 152) || *(a2 + 156) != -65536)
        {
          v18.msg_control = v20;
          v18.msg_controllen = 32;
          DWORD2(v20[0]) = 46;
          *&v20[0] = 0x2900000020;
          HIDWORD(v20[1]) = *(a2 + 168);
          *(v20 + 12) = *(a2 + 148);
          goto LABEL_26;
        }

        v18.msg_control = v20;
        v18.msg_controllen = 24;
        *&v20[0] = 24;
        v10 = *(a2 + 168);
        DWORD2(v20[0]) = 26;
        HIDWORD(v20[0]) = v10;
        v11 = *(a2 + 160);
        goto LABEL_24;
      }
    }

LABEL_26:
    v7 = sendmsg(*a1, &v18, 0);
    goto LABEL_27;
  }

  v7 = send(*a1, a3, a4, 0);
LABEL_27:
  v13 = v7;
  if (v7 < 0 && maxlog >= 2)
  {
    v14 = __error();
    v15 = strerror(*v14);
    coap_log_impl(2, "coap_network_send: %s\n", v15);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t coap_network_read(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    __assert_rtn("coap_network_read", "coap_io.c", 1228, "sock");
  }

  if (!a2)
  {
    __assert_rtn("coap_network_read", "coap_io.c", 1229, "packet");
  }

  v4 = *(a1 + 4);
  if ((v4 & 0x100) == 0)
  {
    goto LABEL_4;
  }

  *(a1 + 4) = v4 & 0xFEFF;
  if ((v4 & 4) != 0)
  {
    v16 = recv(*a1, (a2 + 80), 0x1000uLL, 0);
    if ((v16 & 0x8000000000000000) == 0)
    {
      v5 = v16;
      if (v16)
      {
        *(a2 + 72) = v16;
      }

      goto LABEL_5;
    }

    v17 = __error();
    v18 = maxlog;
    if (*v17 == 61)
    {
      if (maxlog >= 4)
      {
        coap_log_impl(4, "coap_network_read: unreachable\n");
      }

      v5 = -2;
      goto LABEL_5;
    }

LABEL_38:
    if (v18 >= 4)
    {
      v19 = __error();
      v20 = strerror(*v19);
      coap_log_impl(4, "coap_network_read: %s\n", v20);
    }

LABEL_4:
    v5 = -1;
    goto LABEL_5;
  }

  v22[0] = a2 + 80;
  v22[1] = 4096;
  *(&v21.msg_namelen + 1) = 0;
  *(&v21.msg_iovlen + 1) = 0;
  v21.msg_name = (a2 + 4);
  v21.msg_namelen = 28;
  v21.msg_iov = v22;
  v21.msg_iovlen = 1;
  v21.msg_control = &v23;
  v21.msg_flags = 0;
  v21.msg_controllen = 32;
  v23 = -4294967252;
  v24 = -1;
  v8 = recvmsg(*a1, &v21, 0);
  if (v8 < 0)
  {
    if (*__error() == 61)
    {
      v5 = 0;
      goto LABEL_5;
    }

    v18 = maxlog;
    goto LABEL_38;
  }

  v5 = v8;
  msg_controllen = v21.msg_controllen;
  *a2 = v21.msg_namelen;
  *(a2 + 72) = v8;
  if (msg_controllen >= 0xC)
  {
    msg_control = v21.msg_control;
    if (v21.msg_control)
    {
      v11 = v21.msg_control;
      do
      {
        v12 = v11[1];
        if (v12 != -1)
        {
          if (v12)
          {
            if (v12 == 41)
            {
              v13 = v11[2];
              if (v13 == 46)
              {
                *(a2 + 64) = v11[7];
                *(a2 + 44) = *(v11 + 3);
                goto LABEL_5;
              }
            }

            else
            {
              v13 = v11[2];
            }
          }

          else
          {
            v13 = v11[2];
            if (v13 == 26)
            {
              *(a2 + 64) = v11[3];
              if (*(a2 + 37) == 30)
              {
                *(a2 + 44) = 0;
                *(a2 + 52) = -65536;
                *(a2 + 56) = v11[5];
              }

              else
              {
                *(a2 + 40) = v11[5];
              }

              goto LABEL_5;
            }
          }

          if (v13 != -1 && maxlog >= 7)
          {
            coap_log_impl(7, "cmsg_level = %d and cmsg_type = %d not supported - fix\n", v11[1], v13);
            msg_control = v21.msg_control;
            msg_controllen = v21.msg_controllen;
          }
        }

        v11 = (v11 + ((*v11 + 3) & 0x1FFFFFFFCLL));
      }

      while (v11 + 3 <= &msg_control[msg_controllen]);
    }
  }

  v15 = *a1;
  *(a2 + 64) = *a1;
  if (getsockname(v15, (a2 + 36), (a2 + 32)) < 0 && maxlog >= 7)
  {
    coap_log_impl(7, "Cannot determine local port\n");
  }

LABEL_5:
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

unsigned __int8 *coap_pdu_init(unsigned __int8 a1, unsigned __int8 a2, __int16 a3, unint64_t a4)
{
  v8 = malloc_type_malloc(0x38uLL, 0x5CBEF798uLL);
  v9 = v8;
  if (v8)
  {
    v8[2] = 6;
    v10 = 256;
    if (a4 < 0x100)
    {
      v10 = a4;
    }

    *(v8 + 2) = v10;
    v11 = malloc_type_malloc(v10 + 6, 0x5CBEF798uLL);
    if (v11)
    {
      v12 = v9[2];
      *(v9 + 5) = &v11[v12];
      if (v12 <= 3)
      {
        __assert_rtn("coap_pdu_clear", "pdu.c", 37, "pdu->max_hdr_size >= COAP_PDU_MAX_UDP_HEADER_SIZE");
      }

      if (*(v9 + 2) > a4)
      {
        *(v9 + 2) = a4;
      }

      *(v9 + 3) = 0;
      *(v9 + 4) = 0;
      *(v9 + 3) = 0;
      *(v9 + 4) = a4;
      *(v9 + 6) = 0;
      *(v9 + 3) = a3;
      *v9 = a1;
      v9[1] = a2;
    }

    else
    {
      free(v9);
      return 0;
    }
  }

  return v9;
}

void coap_delete_pdu(void *a1)
{
  if (a1)
  {
    v2 = a1[5];
    if (v2)
    {
      free((v2 - *(a1 + 2)));
    }

    free(a1);
  }
}

uint64_t coap_pdu_resize(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) >= a2)
  {
    goto LABEL_17;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = v4 >= a2;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = v7 - v6;
      if (v7 <= v6)
      {
        __assert_rtn("coap_pdu_resize", "pdu.c", 152, "pdu->data > pdu->token");
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = malloc_type_realloc((v6 - *(a1 + 2)), *(a1 + 2) + a2, 0x100004077774924uLL);
    if (!v9)
    {
      if (maxlog >= 4)
      {
        coap_log_impl(4, "coap_pdu_resize: realloc failed\n");
      }

      return 0;
    }

    v10 = &v9[*(a1 + 2)];
    v11 = &v10[v8];
    if (!v8)
    {
      v11 = 0;
    }

    *(a1 + 40) = v10;
    *(a1 + 48) = v11;
LABEL_17:
    *(a1 + 16) = a2;
    return 1;
  }

  if (maxlog >= 4)
  {
    coap_log_impl(4, "coap_pdu_resize: pdu too big\n");
  }

  return 0;
}

uint64_t coap_add_token(uint64_t a1, unint64_t a2, const void *a3)
{
  result = 0;
  if (a1 && a2 <= 8)
  {
    if (*(a1 + 24))
    {
      if (maxlog >= 4)
      {
        coap_log_impl(4, "coap_add_token: The token must defined first. Token ignored\n");
      }

      return 0;
    }

    else
    {
      result = coap_pdu_check_resize(a1, a2);
      if (result)
      {
        *(a1 + 4) = a2;
        if (a2)
        {
          memcpy(*(a1 + 40), a3, a2);
        }

        *(a1 + 8) = 0;
        *(a1 + 24) = a2;
        result = 1;
        *(a1 + 48) = 0;
      }
    }
  }

  return result;
}

uint64_t coap_pdu_check_resize(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 >= a2)
  {
    return 1;
  }

  v3 = 2 * v2;
  v4 = 256;
  if (v3 > 0x100)
  {
    v4 = v3;
  }

  do
  {
    v5 = v4;
    v4 *= 2;
  }

  while (v5 < a2);
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = v5 > v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v5 = *(a1 + 32);
    if (v6 < a2)
    {
      return 0;
    }
  }

  result = coap_pdu_resize(a1, v5);
  if (result)
  {
    return 1;
  }

  return result;
}

unint64_t coap_add_option(uint64_t a1, unsigned int a2, size_t a3, const void *a4)
{
  *(a1 + 48) = 0;
  v4 = *(a1 + 8);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (!v5)
  {
    if (maxlog >= 4)
    {
      coap_log_impl(4, "coap_add_option: options are not in correct order\n");
    }

    return 0;
  }

  v9 = a2;
  v11 = 2;
  if (v6 >= 0x10Du)
  {
    v11 = 3;
  }

  if (v6 <= 0xCu)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 + 2;
  if (a3 <= 0x10C)
  {
    v13 = v12 + 1;
  }

  if (a3 >= 0xD)
  {
    v12 = v13;
  }

  if (!coap_pdu_check_resize(a1, v12 + a3 + *(a1 + 24)))
  {
    return 0;
  }

  v14 = *(a1 + 40);
  if (!v14)
  {
    __assert_rtn("coap_opt_setheader", "option.c", 322, "opt");
  }

  v16 = *(a1 + 16);
  v15 = *(a1 + 24);
  if (v16 == v15)
  {
    goto LABEL_16;
  }

  v19 = (v14 + v15);
  v20 = v16 - v15;
  v21 = v9 - *(a1 + 8);
  if (v21 > 0xCu)
  {
    if (v21 > 0x10Cu)
    {
      if (v20 <= 2)
      {
        goto LABEL_44;
      }

      v23 = -32;
      *v19 = -32;
      v19[1] = (v21 - 269) >> 8;
      v19[2] = v21 - 13;
      v22 = 2;
    }

    else
    {
      if (v20 == 1)
      {
        goto LABEL_44;
      }

      v23 = -48;
      *v19 = -48;
      v19[1] = v21 - 13;
      v22 = 1;
    }
  }

  else
  {
    v22 = 0;
    v23 = 16 * v21;
    *v19 = 16 * v21;
  }

  if (a3 <= 0xC)
  {
    *v19 = v23 | a3;
    goto LABEL_26;
  }

  if (a3 > 0x10C)
  {
    if (v22 + 3 <= v20)
    {
      *v19 = v23 | 0xE;
      v19[v22 + 1] = (a3 - 269) >> 8;
      v22 += 2;
      v19[v22] = a3 - 13;
      goto LABEL_26;
    }

LABEL_44:
    v17 = maxlog;
    if (maxlog < 7)
    {
      goto LABEL_19;
    }

    coap_log_impl(7, "insufficient space to encode option delta %d\n");
LABEL_16:
    v17 = maxlog;
    if (maxlog <= 6)
    {
      goto LABEL_19;
    }

    coap_log_impl(7, "coap_opt_encode: cannot set option header\n");
    goto LABEL_18;
  }

  if (v22 + 2 > v20)
  {
    v17 = maxlog;
    if (maxlog < 7)
    {
      goto LABEL_19;
    }

    coap_log_impl(7, "insufficient space to encode option length %zu\n");
    goto LABEL_16;
  }

  *v19 = v23 | 0xD;
  v19[++v22] = a3 - 13;
LABEL_26:
  if (v22 >= v20)
  {
    __assert_rtn("coap_opt_encode", "option.c", 403, "l <= maxlen");
  }

  v24 = v22 + 1;
  if (v20 - (v22 + 1) < a3)
  {
    v17 = maxlog;
    if (maxlog > 6)
    {
      coap_log_impl(7, "coap_opt_encode: option too large for buffer\n");
LABEL_18:
      v17 = maxlog;
    }

LABEL_19:
    if (v17 >= 4)
    {
      coap_log_impl(4, "coap_add_option: cannot add option\n");
    }

    return 0;
  }

  if (a4)
  {
    memcpy(&v19[v24], a4, a3);
  }

  result = v24 + a3;
  if (!(v24 + a3))
  {
    goto LABEL_18;
  }

  *(a1 + 8) = v9;
  *(a1 + 24) += result;
  return result;
}

uint64_t coap_add_data_after(void *a1, uint64_t a2)
{
  if (a1[6])
  {
    __assert_rtn("coap_add_data_after", "pdu.c", 302, "pdu->data == NULL");
  }

  if (!a2 || !coap_pdu_resize(a1, a2 + a1[3] + 1))
  {
    return 0;
  }

  v4 = a1[5];
  v5 = a1[3];
  a1[3] = v5 + 1;
  *(v4 + v5) = -1;
  v6 = a1[3];
  result = a1[5] + v6;
  a1[6] = result;
  a1[3] = v6 + a2;
  return result;
}

uint64_t coap_get_data(void *a1, uint64_t *a2, uint64_t *a3)
{
  if (!a1)
  {
    __assert_rtn("coap_get_data", "pdu.c", 319, "pdu");
  }

  if (!a2)
  {
    __assert_rtn("coap_get_data", "pdu.c", 320, "len");
  }

  if (!a3)
  {
    __assert_rtn("coap_get_data", "pdu.c", 321, "data");
  }

  v3 = a1[6];
  *a3 = v3;
  if (v3)
  {
    v3 = a1[3] - v3 + a1[5];
    result = 1;
  }

  else
  {
    result = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t coap_pdu_parse_header_size(int a1, unsigned __int8 *a2)
{
  if (!a2)
  {
    __assert_rtn("coap_pdu_parse_header_size", "pdu.c", 407, "data");
  }

  if ((a1 - 3) > 1)
  {
    return 4 * ((a1 - 1) < 2);
  }

  v2 = *a2;
  v3 = 6;
  if (v2 >> 4 == 14)
  {
    v3 = 4;
  }

  v4 = 3;
  if (v2 >> 4 != 13)
  {
    v4 = v3;
  }

  if (v2 >= 0xD0)
  {
    return v4;
  }

  else
  {
    return 2;
  }
}

uint64_t coap_pdu_parse_header(uint64_t a1, int a2)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 3);
  v5 = v3 - v4;
  if ((a2 - 1) > 1)
  {
    if ((a2 - 3) <= 1)
    {
      if ((v4 - 7) <= 0xFFFFFFFA)
      {
        __assert_rtn("coap_pdu_parse_header", "pdu.c", 473, "pdu->hdr_size >= 2 && pdu->hdr_size <= 6");
      }

      LOWORD(v7) = 0;
      *a1 = 0;
      v6 = *v5 & 0xF;
      *(a1 + 4) = v6;
      *(a1 + 1) = *(v3 - 1);
      goto LABEL_8;
    }

    if (maxlog >= 7)
    {
      coap_log_impl(7, "coap_pdu_parse: unsupported protocol\n");
    }

    return 0;
  }

  if (v4 != 4)
  {
    __assert_rtn("coap_pdu_parse_header", "pdu.c", 463, "pdu->hdr_size == 4");
  }

  if ((*v5 & 0xC0) != 0x40)
  {
    if (maxlog >= 7)
    {
      coap_log_impl(7, "coap_pdu_parse: UDP version not supported\n");
    }

    return 0;
  }

  *a1 = (*v5 >> 4) & 3;
  v6 = *v5 & 0xF;
  *(a1 + 4) = v6;
  *(a1 + 1) = *(v5 + 1);
  v7 = bswap32(*(v5 + 2)) >> 16;
LABEL_8:
  *(a1 + 6) = v7;
  v8 = *(a1 + 16);
  if (v8 >= v6)
  {
    return 1;
  }

  if (maxlog >= 7)
  {
    coap_log_impl(7, "coap_pdu_parse: PDU header token size broken\n");
    v8 = *(a1 + 16);
  }

  result = 0;
  *(a1 + 4) = v8;
  return result;
}

uint64_t coap_pdu_parse_opt(uint64_t a1)
{
  if (*(a1 + 1))
  {
    v2 = *(a1 + 4);
    v3 = *(a1 + 24);
    v4 = v2 <= 8 && v3 >= v2;
    if (!v4)
    {
      if (maxlog >= 7)
      {
        coap_log_impl(7, "coap_pdu_parse: invalid Token\n");
      }

      return 0;
    }

    v6 = v3 - v2;
    if (v3 != v2)
    {
      v7 = (*(a1 + 40) + v2);
      while (*v7 != 255)
      {
        memset(v9, 0, sizeof(v9));
        v8 = coap_opt_parse(v7, v6, v9);
        if (!v8)
        {
          if (maxlog >= 7)
          {
            coap_log_impl(7, "coap_pdu_parse: missing payload start code\n");
          }

          return 0;
        }

        v4 = v6 >= v8;
        v6 -= v8;
        if (!v4)
        {
          __assert_rtn("next_option_safe", "pdu.c", 395, "optsize <= *length");
        }

        v7 += v8;
        if (!v6)
        {
          goto LABEL_27;
        }
      }

      if (v6 != 1)
      {
        *(a1 + 48) = v7 + 1;
        return 1;
      }

      if (maxlog >= 7)
      {
        coap_log_impl(7, "coap_pdu_parse: message ending in payload start marker\n");
      }

      return 0;
    }
  }

  else
  {
    if (*(a1 + 24) || *(a1 + 4))
    {
      if (maxlog >= 7)
      {
        coap_log_impl(7, "coap_pdu_parse: empty message is not empty\n");
      }

      return 0;
    }

    *(a1 + 24) = 0;
  }

LABEL_27:
  *(a1 + 48) = 0;
  return 1;
}

uint64_t coap_pdu_encode_header(uint64_t a1, int a2)
{
  if ((a2 - 1) <= 1)
  {
    if (*(a1 + 2) <= 3u)
    {
      __assert_rtn("coap_pdu_encode_header", "pdu.c", 570, "pdu->max_hdr_size >= 4");
    }

    *(*(a1 + 40) - 4) = *(a1 + 4) | (16 * *a1) | 0x40;
    *(*(a1 + 40) - 3) = *(a1 + 1);
    *(*(a1 + 40) - 2) = *(a1 + 7);
    v3 = *(a1 + 6);
    goto LABEL_4;
  }

  if ((a2 - 3) <= 1)
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 4);
    v8 = v6 >= v7;
    v9 = v6 - v7;
    if (!v8)
    {
      __assert_rtn("coap_pdu_encode_header", "pdu.c", 585, "pdu->used_size >= pdu->token_length");
    }

    if (v9 <= 0xC)
    {
      if (*(a1 + 2) <= 1u)
      {
        __assert_rtn("coap_pdu_encode_header", "pdu.c", 592, "pdu->max_hdr_size >= 2");
      }

      *(*(a1 + 40) - 2) = v7 | (16 * v9);
      *(*(a1 + 40) - 1) = *(a1 + 1);
      v4 = 2;
      goto LABEL_5;
    }

    if (v9 <= 0x10C)
    {
      if (*(a1 + 2) <= 2u)
      {
        __assert_rtn("coap_pdu_encode_header", "pdu.c", 603, "pdu->max_hdr_size >= 3");
      }

      *(*(a1 + 40) - 3) = v7 | 0xD0;
      *(*(a1 + 40) - 2) = v9 - 13;
      *(*(a1 + 40) - 1) = *(a1 + 1);
      v4 = 3;
      goto LABEL_5;
    }

    v10 = *(a1 + 2);
    if (v9 > 0x1010C)
    {
      if (v10 <= 5)
      {
        __assert_rtn("coap_pdu_encode_header", "pdu.c", 626, "pdu->max_hdr_size >= 6");
      }

      *(*(a1 + 40) - 6) = v7 | 0xF0;
      v12 = v9 - 65805;
      *(*(a1 + 40) - 5) = HIBYTE(v12);
      *(*(a1 + 40) - 4) = BYTE2(v12);
      *(*(a1 + 40) - 3) = BYTE1(v12);
      *(*(a1 + 40) - 2) = v12;
      *(*(a1 + 40) - 1) = *(a1 + 1);
      v4 = 6;
      goto LABEL_5;
    }

    if (v10 <= 3)
    {
      __assert_rtn("coap_pdu_encode_header", "pdu.c", 614, "pdu->max_hdr_size >= 4");
    }

    *(*(a1 + 40) - 4) = v7 | 0xE0;
    v11 = v9 - 269;
    *(*(a1 + 40) - 3) = HIBYTE(v11);
    *(*(a1 + 40) - 2) = v11;
    v3 = *(a1 + 1);
LABEL_4:
    *(*(a1 + 40) - 1) = v3;
    v4 = 4;
LABEL_5:
    *(a1 + 3) = v4;
    return *(a1 + 3);
  }

  if (maxlog >= 4)
  {
    coap_log_impl(4, "coap_pdu_encode_header: unsupported protocol\n");
  }

  return *(a1 + 3);
}

uint64_t coap_print_wellknown(uint64_t a1, _BYTE *a2, void *a3, uint64_t a4, _BYTE *a5)
{
  v8 = *a3;
  v57 = 0;
  v58 = 0;
  if (!a5)
  {
    i = 0;
    __s1 = 0;
LABEL_10:
    v13 = 0;
    goto LABEL_30;
  }

  __s1 = coap_opt_value(a5);
    ;
  }

  if (i >= coap_opt_length(a5))
  {
    goto LABEL_10;
  }

  v11 = a4;
  v12 = i == 4 && *__s1 == 1717924456;
  v14 = &coap_print_wellknown__rt_attributes;
  v15 = "rt";
  while (i != *v14 || memcmp(__s1, v15, i))
  {
    v15 = v14[3];
    v14 += 2;
    if (!v15)
    {
      v16 = v12;
      goto LABEL_18;
    }
  }

  v16 = v12 | 4;
LABEL_18:
  v17 = &coap_opt_value(a5)[i];
  v58 = v17 + 1;
  if (i >= coap_opt_length(a5))
  {
    __assert_rtn("coap_print_wellknown", "resource.c", 212, "(resource_param.length + 1) <= coap_opt_length(query_filter)");
  }

  v18 = ~i + coap_opt_length(a5);
  v57 = v18;
  v13 = v16;
  if (v17[1] != 47 || (v16 & 1) == 0)
  {
    v20 = 1;
    if (v18)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v57 = --v18;
    v58 = v17 + 2;
    v20 = 2;
    if (v18)
    {
LABEL_27:
      if (v17[v20 - 1 + v18] == 42)
      {
        v57 = v18 - 1;
        v13 = v16 | 2;
      }
    }
  }

  a4 = v11;
LABEL_30:
  v50 = a3;
  v51 = a4;
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = 0;
    v24 = &a2[v8];
    v53 = v13 >> 2;
    v54 = (v13 >> 1) & 1;
    v25 = a4;
    v26 = a2;
    while (1)
    {
      v27 = v21;
      v21 = *(v21 + 80);
      if (!i)
      {
        goto LABEL_40;
      }

      if (v13)
      {
        break;
      }

      v28 = v23;
      v29 = v13;
      v56 = 0uLL;
      v30 = *(v27 + 120);
      if (!v30)
      {
        goto LABEL_38;
      }

      while (1)
      {
        v31 = v30[1];
        if (*v31 == i && !memcmp(*(v31 + 8), __s1, i))
        {
          break;
        }

        v30 = *v30;
        if (!v30)
        {
          goto LABEL_38;
        }
      }

      v32 = v30[2];
      if (!v32)
      {
        goto LABEL_38;
      }

      v56 = *v32;
      if (**(v32 + 1) == 34)
      {
        *&v56 = v56 - 2;
        ++*(&v56 + 1);
      }

      if (!match(&v56, &v57, v54, v53))
      {
LABEL_38:
        v13 = v29;
        v23 = v28;
        goto LABEL_110;
      }

      v13 = v29;
      v23 = v28;
      if (v22)
      {
        goto LABEL_41;
      }

LABEL_51:
      if ((v24 - v26) >= 1)
      {
        if (!v25)
        {
          *v26 = 60;
          v33 = v26 + 1;
          if ((v26 + 1) >= v24)
          {
            v25 = 0;
            goto LABEL_61;
          }

LABEL_59:
          v25 = 0;
          *v33++ = 47;
          goto LABEL_61;
        }

        --v25;
      }

      if (v26 < v24)
      {
        v33 = v26;
        if (!v25)
        {
          goto LABEL_59;
        }

        --v25;
      }

      v33 = v26;
LABEL_61:
      v34 = *(v27 + 136);
      v35 = *v34;
      if (*v34)
      {
        v36 = 0;
        do
        {
          v37 = v36;
          if (v33 < v24)
          {
            if (v25)
            {
              --v25;
            }

            else
            {
              *v33++ = *(v34[1] + v36);
              v34 = *(v27 + 136);
              v35 = *v34;
            }
          }

          ++v36;
        }

        while (v37 + 1 < v35);
        v38 = v37 + 4;
      }

      else
      {
        v38 = 3;
      }

      if (v33 < v24)
      {
        if (v25)
        {
          --v25;
        }

        else
        {
          *v33++ = 62;
        }
      }

      for (j = *(v27 + 120); j; j = *j)
      {
        if (v33 < v24)
        {
          if (v25)
          {
            --v25;
          }

          else
          {
            *v33++ = 59;
          }
        }

        ++v38;
        v40 = j[1];
        v41 = *v40;
        if (*v40)
        {
          v42 = 0;
          do
          {
            if (v33 < v24)
            {
              if (v25)
              {
                --v25;
              }

              else
              {
                *v33++ = *(v40[1] + v42);
                v40 = j[1];
                v41 = *v40;
              }
            }

            ++v38;
            ++v42;
          }

          while (v42 < v41);
        }

        v43 = j[2];
        if (v43 && v43[1])
        {
          if (v33 < v24)
          {
            if (v25)
            {
              --v25;
            }

            else
            {
              *v33++ = 61;
              v43 = j[2];
            }
          }

          ++v38;
          v44 = *v43;
          if (*v43)
          {
            v45 = 0;
            do
            {
              if (v33 < v24)
              {
                if (v25)
                {
                  --v25;
                }

                else
                {
                  *v33++ = *(v43[1] + v45);
                  v43 = j[2];
                  v44 = *v43;
                }
              }

              ++v38;
              ++v45;
            }

            while (v45 < v44);
          }
        }
      }

      if ((*v27 & 4) != 0)
      {
        for (k = 0; k != 4; ++k)
        {
          if (v33 < v24)
          {
            if (v25)
            {
              --v25;
            }

            else
            {
              *v33++ = aObs[k];
            }
          }
        }

        v38 += 4;
      }

      v47 = v33 - v26;
      if (v47 >> 28)
      {
        goto LABEL_113;
      }

      v26 += v47;
      v23 += v38;
      v22 = 1;
LABEL_110:
      if (!v21)
      {
        goto LABEL_113;
      }
    }

    if (!match(*(v27 + 136), &v57, v54, v53))
    {
      goto LABEL_110;
    }

LABEL_40:
    if (!v22)
    {
      goto LABEL_51;
    }

LABEL_41:
    if (v26 < v24)
    {
      if (v25)
      {
        --v25;
      }

      else
      {
        *v26++ = 44;
      }
    }

    ++v23;
    goto LABEL_51;
  }

  v23 = 0;
  v25 = a4;
  v26 = a2;
LABEL_113:
  *v50 = v23;
  v48 = v26 - a2;
  if (v26 - a2 + v51 - v25 < v23)
  {
    v48 = (v26 - a2) | 0x40000000;
  }

  if ((v26 - a2) >> 28)
  {
    return 0x80000000;
  }

  else
  {
    return v48;
  }
}

BOOL match(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (!a1)
  {
    v15 = "text";
    goto LABEL_27;
  }

  if (!a2)
  {
    v15 = "pattern";
LABEL_27:
    __assert_rtn("match", "resource.c", 102, v15);
  }

  v5 = *a1;
  v6 = *a2;
  if (*a1 < *a2)
  {
    return 0;
  }

  if (!a4)
  {
    if (a3 || v6 == v5)
    {
      return memcmp(*(a1 + 8), *(a2 + 8), *a2) == 0;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  v9 = *(a1 + 8);
  while (1)
  {
    v10 = memchr(v9, 32, v5);
    v11 = v10;
    v12 = v10 - v9;
    v13 = v10 ? (v10 + 1) : 0;
    v14 = v10 ? v10 - v9 : v5;
    if ((a3 || v6 == v14) && !memcmp(v9, *(a2 + 8), v6))
    {
      break;
    }

    result = 0;
    if (v11)
    {
      v9 = v13;
      v5 += ~v12;
      if (v5)
      {
        continue;
      }
    }

    return result;
  }

  return 1;
}

void coap_free_resource(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    do
    {
      v3 = *v2;
      free(v2[1]);
      v4 = v2[2];
      if (v4)
      {
        free(v4);
      }

      free(v2);
      v2 = v3;
    }

    while (v3);
  }

  free(*(a1 + 136));
  v5 = *(a1 + 128);
  if (v5)
  {
    do
    {
      v6 = *v5;
      coap_session_release(v5[1]);
      v7 = v5[6];
      if (v7)
      {
        free(v7);
      }

      free(v5);
      v5 = v6;
    }

    while (v6);
  }

  free(a1);
}

uint64_t coap_get_resource_from_uri_path(uint64_t a1, size_t __n, unsigned __int8 *__s2)
{
  v5 = -17973521;
  v6 = -1640531527;
  if (__n < 0xC)
  {
    v9 = -1640531527;
    v8 = __n;
    v7 = __s2;
  }

  else
  {
    v7 = __s2;
    v8 = __n;
    v9 = -1640531527;
    do
    {
      v10 = *(v7 + 1) + v6;
      v11 = *(v7 + 2) + v5;
      v12 = (*v7 + v9 - (v10 + v11)) ^ (v11 >> 13);
      v13 = (v10 - v11 - v12) ^ (v12 << 8);
      v14 = (v11 - v12 - v13) ^ (v13 >> 13);
      v15 = (v12 - v13 - v14) ^ (v14 >> 12);
      v16 = (v13 - v14 - v15) ^ (v15 << 16);
      v17 = (v14 - v15 - v16) ^ (v16 >> 5);
      v9 = (v15 - v16 - v17) ^ (v17 >> 3);
      v6 = (v16 - v17 - v9) ^ (v9 << 10);
      v5 = (v17 - v9 - v6) ^ (v6 >> 15);
      v7 += 12;
      v8 -= 12;
    }

    while (v8 > 0xB);
  }

  v18 = v5 + __n;
  if (v8 > 5)
  {
    if (v8 > 8)
    {
      if (v8 != 9)
      {
        if (v8 != 10)
        {
          v18 += v7[10] << 24;
        }

        v18 += v7[9] << 16;
      }

      v18 += v7[8] << 8;
    }

    else
    {
      if (v8 == 6)
      {
LABEL_22:
        v6 += v7[5] << 8;
        goto LABEL_23;
      }

      if (v8 == 7)
      {
LABEL_21:
        v6 += v7[6] << 16;
        goto LABEL_22;
      }
    }

    v6 += v7[7] << 24;
    goto LABEL_21;
  }

  if (v8 > 2)
  {
    if (v8 == 3)
    {
LABEL_25:
      v9 += v7[2] << 16;
      goto LABEL_26;
    }

    if (v8 == 4)
    {
LABEL_24:
      v9 += v7[3] << 24;
      goto LABEL_25;
    }

LABEL_23:
    v6 += v7[4];
    goto LABEL_24;
  }

  if (v8 == 1)
  {
    goto LABEL_27;
  }

  if (v8 != 2)
  {
    goto LABEL_28;
  }

LABEL_26:
  v9 += v7[1] << 8;
LABEL_27:
  v9 += *v7;
LABEL_28:
  v19 = *(a1 + 16);
  if (!v19)
  {
    return 0;
  }

  v20 = (v9 - v6 - v18) ^ (v18 >> 13);
  v21 = (v6 - v18 - v20) ^ (v20 << 8);
  v22 = (v18 - v20 - v21) ^ (v21 >> 13);
  v23 = (v20 - v21 - v22) ^ (v22 >> 12);
  v24 = (v21 - v22 - v23) ^ (v23 << 16);
  v25 = (v22 - v23 - v24) ^ (v24 >> 5);
  v26 = (v23 - v24 - v25) ^ (v25 >> 3);
  v27 = (v25 - v26 - ((v24 - v25 - v26) ^ (v26 << 10))) ^ (((v24 - v25 - v26) ^ (v26 << 10)) >> 15);
  v28 = *(v19 + 64);
  v29 = *(*v28 + 16 * ((*(v28 + 8) - 1) & v27));
  if (!v29)
  {
    return 0;
  }

  v30 = -*(v28 + 32);
  while (1)
  {
    v31 = v29 + v30;
    if (*(v29 + v30 + 116) == v27 && *(v31 + 112) == __n && !memcmp(*(v31 + 104), __s2, __n))
    {
      break;
    }

    v29 = *(v31 + 96);
    if (!v29)
    {
      return 0;
    }
  }

  return v31;
}

void *coap_find_observer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    __assert_rtn("coap_find_observer", "resource.c", 586, "resource");
  }

  if (!a2)
  {
    __assert_rtn("coap_find_observer", "resource.c", 587, "session");
  }

  for (i = *(a1 + 128); i; i = *i)
  {
    if (i[1] == a2 && (!a3 || *a3 == i[4] && !memcmp(*(a3 + 8), i + 5, *a3)))
    {
      break;
    }
  }

  return i;
}

void *coap_add_observer(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, uint64_t a6)
{
  observer = coap_find_observer(a1, a2, a3);
  if (observer)
  {
    v13 = observer;
    v14 = observer[6];
    if (v14)
    {
      free(v14);
    }

    v13[6] = a4;
  }

  else
  {
    for (i = *(a1 + 128); i; i = *i)
    {
      if (i[1] == a2)
      {
        v17 = i[6];
        if (a4)
        {
          if (v17)
          {
            v18 = *a4;
            if (*a4 == *v17 && (!v18 || !memcmp(*(a4 + 1), *(v17 + 8), v18)))
            {
LABEL_17:
              v22[0] = i[4];
              v22[1] = i + 5;
              coap_delete_observer(a1, a2, v22);
              break;
            }
          }
        }

        else if (!v17)
        {
          goto LABEL_17;
        }
      }
    }

    v19 = malloc_type_malloc(0x38uLL, 0x5CBEF798uLL);
    if (v19)
    {
      v13 = v19;
      v19[6] = 0;
      *(v19 + 1) = 0u;
      *(v19 + 2) = 0u;
      *v19 = 0u;
      ++*(a2 + 4);
      v19[1] = a2;
      if (a3)
      {
        v20 = *a3;
        if (*a3)
        {
          v19[4] = v20;
          if (v20 >= 8)
          {
            v21 = 8;
          }

          else
          {
            v21 = v20;
          }

          memcpy(v19 + 5, *(a3 + 8), v21);
        }
      }

      v13[6] = a4;
      *(v13 + 16) = v13[2] & 0x7F | (a5 << 7);
      *(v13 + 20) = a6;
      *v13 = *(a1 + 128);
      *(a1 + 128) = v13;
      if (maxlog >= 7)
      {
        coap_log_impl(7, "create new subscription\n");
      }
    }

    else
    {
      if (a4)
      {
        free(a4);
      }

      return 0;
    }
  }

  return v13;
}

void coap_delete_observer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  observer = coap_find_observer(a1, a2, a3);
  if (observer)
  {
    v6 = observer;
    if (maxlog >= 7)
    {
      v18[0] = 0;
      v18[1] = 0;
      v19 = 0;
      if (!observer[4])
      {
        goto LABEL_7;
      }

      v7 = 0;
      v8 = 0;
      v9 = 1;
      do
      {
        snprintf(v18 + v7, 3uLL, "%02x", *(v6 + v8 + 40));
        v8 = v9;
        v10 = v6[4] > v9++;
        v7 += 2;
      }

      while (v10);
      if (maxlog >= 7)
      {
LABEL_7:
        coap_log_impl(7, "removed observer tid %s\n", v18);
      }
    }

    v13 = *(a1 + 128);
    v12 = (a1 + 128);
    v11 = v13;
    if (v13)
    {
      if (v11 == v6)
      {
        goto LABEL_17;
      }

      v14 = v11;
      do
      {
        v12 = v14;
        v14 = *v14;
        if (v14)
        {
          v15 = v14 == v6;
        }

        else
        {
          v15 = 1;
        }
      }

      while (!v15);
      v11 = v6;
      if (v14)
      {
LABEL_17:
        *v12 = *v11;
      }

      coap_session_release(a2);
      v16 = v6[6];
      if (v16)
      {
        free(v16);
      }

      free(v6);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void *coap_touch_observer(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    do
    {
      v6 = v5;
      v5 = v5[10];
      result = coap_find_observer(v6, a2, a3);
      if (result)
      {
        *(result + 16) &= 0xCFu;
      }
    }

    while (v5);
  }

  return result;
}

void *coap_insert_node(void *result, void *a2)
{
  if (result)
  {
    v2 = *result;
    if (*result)
    {
      v3 = a2[1];
      v4 = v2[1];
      if (v4 <= v3)
      {
        while (1)
        {
          v5 = v2;
          v3 -= v4;
          a2[1] = v3;
          v2 = *v2;
          if (!v2)
          {
            break;
          }

          v4 = v2[1];
          if (v4 > v3)
          {
            v2[1] = v4 - v3;
            break;
          }
        }

        *a2 = v2;
        *v5 = a2;
      }

      else
      {
        *a2 = v2;
        *result = a2;
        v2[1] = v4 - v3;
      }
    }

    else
    {
      *result = a2;
    }
  }

  return result;
}

void coap_delete_node(uint64_t a1)
{
  if (a1)
  {
    coap_delete_pdu(*(a1 + 40));
    v2 = *(a1 + 24);
    if (v2)
    {
      v3 = *(v2 + 208);
      v6 = *(v3 + 48);
      v4 = (v3 + 48);
      v5 = v6;
      if (v6)
      {
        if (v5 == a1)
        {
          goto LABEL_12;
        }

        v7 = v5;
        do
        {
          v4 = v7;
          v7 = *v7;
          if (v7)
          {
            v8 = v7 == a1;
          }

          else
          {
            v8 = 1;
          }
        }

        while (!v8);
        v5 = a1;
        if (v7)
        {
LABEL_12:
          *v4 = *v5;
        }
      }

      coap_session_release();
    }

    free(a1);
  }
}

void coap_delete_all(void *a1)
{
  if (a1)
  {
    coap_delete_all(*a1);

    coap_delete_node(a1);
  }
}

void *coap_new_node()
{
  v0 = malloc_type_malloc(0x38uLL, 0x5CBEF798uLL);
  v1 = v0;
  if (v0)
  {
    v0[6] = 0;
    *(v0 + 1) = 0u;
    *(v0 + 2) = 0u;
    *v0 = 0u;
  }

  else if (maxlog >= 4)
  {
    coap_log_impl(4, "coap_new_node: malloc failed\n");
  }

  return v1;
}

uint64_t coap_startup()
{
  if ((coap_started & 1) == 0)
  {
    coap_started = 1;
    v1.tv_sec = 0;
    *&v1.tv_usec = 0;
    gettimeofday(&v1, 0);
    coap_clock_offset = v1.tv_sec;
    v1.tv_sec = 0;
    *&v1.tv_usec = 0;
    return gettimeofday(&v1, 0);
  }

  return result;
}

void coap_free_context(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  coap_delete_all(*(a1 + 48));
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v4 = *(v2 + 72);
    v5 = *(v2 + 80);
    if (!v4)
    {
      break;
    }

    v6 = *v3;
LABEL_6:
    v7 = *(v6 + 64);
    if (v2 + 64 == *(v7 + 24))
    {
      *(v7 + 24) = v4 + *(v7 + 32);
    }

    v8 = (a1 + 16);
    v9 = v5;
    if (v4)
    {
      v8 = (v4 + *(v7 + 32) + 16);
      v9 = v6;
    }

    *v8 = v5;
    v10 = *(v9 + 64);
    if (v5)
    {
      *(v5 + *(v10 + 32) + 8) = v4;
    }

    v11 = *v10 + 16 * ((*(v10 + 8) - 1) & *(v2 + 116));
    --*(v11 + 8);
    v12 = *(v2 + 96);
    if (*v11 == v2 + 64)
    {
      *v11 = v12;
    }

    v13 = *(v2 + 88);
    if (v13)
    {
      *(v13 + 32) = v12;
    }

    if (v12)
    {
      *(v12 + 24) = v13;
    }

    --*(v10 + 16);
    coap_free_resource(v2);
    v2 = v5;
    if (!v5)
    {
      goto LABEL_22;
    }
  }

  v6 = *v3;
  if (v5)
  {
    goto LABEL_6;
  }

  free(**(v6 + 64));
  free(*(*v3 + 64));
  *v3 = 0;
  coap_free_resource(v2);
LABEL_22:
  *(a1 + 16) = 0;
  v14 = *(a1 + 24);
  if (v14)
  {
    coap_free_resource(v14);
    *(a1 + 24) = 0;
  }

  v15 = *(a1 + 56);
  while (v15)
  {
    v16 = v15;
    v15 = *v15;
    if (*(v16 + 14))
    {
      v17 = *(v16 + 6);
      if (v17 != -1)
      {
        v16[4] = 0;
        v16[5] = 0;
        close(v17);
        *(v16 + 6) = -1;
      }

      *(v16 + 14) = 0;
    }

    v18 = v16[10];
    if (v18)
    {
      do
      {
        if (*(v18 + 4))
        {
          __assert_rtn("coap_free_endpoint", "coap_session.c", 1014, "session->ref == 0");
        }

        v19 = *(v18 + 64);
        coap_session_free(v18);
        v18 = v19;
      }

      while (v19);
    }

    v20 = v16[1];
    if (v20)
    {
      v23 = *(v20 + 56);
      v21 = (v20 + 56);
      v22 = v23;
      if (v23 == v16)
      {
        goto LABEL_41;
      }

      v24 = v22;
      do
      {
        v21 = v24;
        v24 = *v24;
        if (v24)
        {
          v25 = v24 == v16;
        }

        else
        {
          v25 = 1;
        }
      }

      while (!v25);
      v22 = v16;
      if (v24)
      {
LABEL_41:
        *v21 = *v22;
      }
    }

    free(v16);
  }

  v26 = *(a1 + 64);
  if (v26)
  {
    do
    {
      v27 = *(v26 + 64);
      coap_session_release(v26);
      v26 = v27;
    }

    while (v27);
  }

  v28 = *(a1 + 160);
  if (v28)
  {
    free(v28);
  }

  v29 = *(a1 + 176);
  if (v29)
  {
    free(v29);
  }

  free(a1);
}

uint64_t coap_get_context_server_hint(uint64_t a1, void *__dst, unint64_t a3)
{
  v3 = *(a1 + 208);
  if (!v3 || !*(v3 + 160) || *(v3 + 168) - 1 >= a3)
  {
    return 0;
  }

  memcpy(__dst, *(v3 + 160), *(v3 + 168));
  return *(v3 + 168);
}

uint64_t coap_get_context_server_psk(uint64_t a1, int a2, int a3, void *__dst, unint64_t a5)
{
  v5 = *(a1 + 208);
  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 176);
  if (!v6)
  {
    return 0;
  }

  v7 = *(v5 + 184);
  if (v7 - 1 >= a5)
  {
    return 0;
  }

  memcpy(__dst, v6, v7);
  return *(v5 + 184);
}

uint64_t coap_get_session_client_psk(uint64_t a1, int a2, int a3, void *__dst, void *a5, size_t a6, void *a7, unint64_t a8)
{
  v11 = *(a1 + 312);
  if (v11 && (v12 = *(a1 + 320)) != 0 && *(a1 + 328) && (v13 = *(a1 + 336)) != 0)
  {
    if (v12 <= a6 && v13 <= a8)
    {
      memcpy(__dst, v11, v12);
      memcpy(a7, *(a1 + 328), *(a1 + 336));
      *a5 = *(a1 + 320);
      return *(a1 + 336);
    }
  }

  else
  {
    v15 = *(a1 + 208);
    if (v15)
    {
      v16 = *(v15 + 176);
      if (v16)
      {
        if (*(v15 + 184) - 1 < a8)
        {
          *a5 = 0;
          memcpy(a7, v16, *(v15 + 184));
          return *(*(a1 + 208) + 184);
        }
      }
    }
  }

  result = 0;
  *a5 = 0;
  return result;
}

uint64_t coap_option_check_critical(_WORD *a1, uint64_t a2, _WORD *a3)
{
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  coap_option_iterator_init(a2, v12, 0);
  v5 = 1;
  while (coap_option_next(v12))
  {
    v6 = WORD4(v12[0]);
    if (BYTE8(v12[0]))
    {
      v7 = (WORD4(v12[0]) - 1) >> 1;
      v8 = v7 > 0x13;
      v9 = (1 << v7) & 0xA29AF;
      v10 = v8 || v9 == 0;
      if (v10 && !coap_option_filter_op(a1, WORD4(v12[0]), 2))
      {
        if (maxlog >= 7)
        {
          coap_log_impl(7, "unknown critical option %d\n", v6);
          v6 = WORD4(v12[0]);
        }

        coap_option_filter_op(a3, v6, 0);
        v5 = 0;
      }
    }
  }

  return v5;
}

uint64_t coap_send(unsigned __int8 *a1, uint64_t a2)
{
  if (!coap_pdu_encode_header(a2, *a1))
  {
    goto LABEL_16;
  }

  v4 = coap_send_pdu(a1, a2, 0);
  if (v4 != -3)
  {
    v5 = v4;
    if ((v4 & 0x8000000000000000) == 0)
    {
      if (*a1 - 3 > 1)
      {
        if (!*a2)
        {
          v6 = coap_new_node();
          if (v6)
          {
            v7 = v6;
            __buf = 0;
            *(v6 + 8) = *(a2 + 6);
            v6[5] = a2;
            *(v6 + 12) = 0;
            arc4random_buf(&__buf, 1uLL);
            *(v7 + 20) = coap_calc_timeout(a1, __buf);
            return coap_wait_ack(*(a1 + 26), a1, v7);
          }

          if (maxlog >= 7)
          {
            coap_log_impl(7, "coap_wait_ack: insufficient memory\n");
          }

          goto LABEL_16;
        }
      }

      else if (v4 < *(a2 + 24) + *(a2 + 3))
      {
        if (coap_session_delay_pdu(a1, a2, 0) == -3)
        {
          *(a1 + 30) = v5;
          return *(a2 + 6);
        }

LABEL_16:
        coap_delete_pdu(a2);
        return 0xFFFFFFFFLL;
      }

      v5 = *(a2 + 6);
    }

    coap_delete_pdu(a2);
    return v5;
  }

  return *(a2 + 6);
}

uint64_t coap_send_pdu(unsigned __int8 *a1, _BYTE *a2, uint64_t a3)
{
  v6 = a1[141];
  if (v6 == 2)
  {
    if ((*(a1 + 36) & 0xF0) != 0xE0)
    {
      goto LABEL_8;
    }
  }

  else if (v6 != 30 || a1[148] != 255)
  {
    goto LABEL_8;
  }

  if (a2[1] > 0x5Fu)
  {
    return -2;
  }

LABEL_8:
  if (a1[2])
  {
    goto LABEL_9;
  }

  v8 = *a1;
  if (v8 == 2)
  {
    if (!*(a1 + 27))
    {
      v9 = *(a1 + 26);
      v10 = 512;
LABEL_91:
      coap_handle_event(v9, v10, a1);
    }

    return -1;
  }

  if ((v8 - 3) > 1)
  {
    return -1;
  }

  if (v8 == 4)
  {
    v12 = 5684;
  }

  else
  {
    v12 = 5683;
  }

  v36 = 0;
  v37 = 1;
  memset(&v34[4], 0, 24);
  v35 = 0;
  *v34 = *(a1 + 26);
  v13 = a1[109];
  if (v13 == 2)
  {
    *&v34[4] = *(a1 + 108);
  }

  else if (v13 == 30)
  {
    v34[5] = 30;
    *&v34[12] = *(a1 + 116);
    *&v34[6] = *(a1 + 55);
    v35 = *(a1 + 33);
  }

  else
  {
    __memcpy_chk();
  }

  *(a1 + 90) &= ~4u;
  v14 = socket(v13, 1, 0);
  *(a1 + 44) = v14;
  if (v14 == -1)
  {
    if (maxlog <= 3)
    {
LABEL_90:
      *(a1 + 90) = 0;
      v9 = *(a1 + 26);
      v10 = 4099;
      goto LABEL_91;
    }

    v18 = "coap_socket_connect_tcp1: socket: %s\n";
    goto LABEL_87;
  }

  if (ioctl(v14, 0x8004667EuLL, &v37) == -1 && maxlog >= 4)
  {
    v15 = __error();
    v16 = strerror(*v15);
    coap_log_impl(4, "coap_socket_connect_tcp1: ioctl FIONBIO: %s\n", v16);
  }

  v17 = a1[109];
  if (v17 == 30)
  {
    if (!*&v34[6])
    {
      *&v34[6] = bswap32(v12) >> 16;
    }

    if (setsockopt(*(a1 + 44), 41, 27, &v36, 4u) == -1 && maxlog >= 4)
    {
      v19 = __error();
      strerror(*v19);
      coap_log_impl(4, "coap_socket_connect_tcp1: setsockopt IPV6_V6ONLY: %s\n");
    }
  }

  else if (v17 == 2)
  {
    if (!*&v34[6])
    {
      *&v34[6] = bswap32(v12) >> 16;
    }
  }

  else if (maxlog >= 1)
  {
    coap_log_impl(1, "coap_socket_connect_tcp1: unsupported sa_family\n");
  }

  v20 = a1[21];
  if (!a1[21])
  {
    a1[141] = a1[109];
    goto LABEL_66;
  }

  *(a1 + 140) = 0;
  v21 = a1 + 140;
  *(a1 + 41) = 0;
  *(a1 + 148) = 0;
  *(a1 + 156) = 0;
  v22 = *(a1 + 4);
  *(a1 + 34) = v22;
  if (v20 == 2)
  {
    *v21 = *(a1 + 20);
  }

  else if (v20 == 30)
  {
    a1[141] = 30;
    *(a1 + 148) = *(a1 + 28);
    *(a1 + 71) = *(a1 + 11);
    *(a1 + 41) = *(a1 + 11);
  }

  else
  {
    memcpy(v21, a1 + 20, v22);
  }

  if (setsockopt(*(a1 + 44), 0xFFFF, 4, &v37, 4u) == -1 && maxlog >= 4)
  {
    v23 = __error();
    v24 = strerror(*v23);
    coap_log_impl(4, "coap_socket_connect_tcp1: setsockopt SO_REUSEADDR: %s\n", v24);
  }

  if (a1[21] == 2)
  {
    v25 = 16;
  }

  else
  {
    v25 = *(a1 + 4);
  }

  if (bind(*(a1 + 44), (a1 + 20), v25) == -1)
  {
    if (maxlog <= 3)
    {
      goto LABEL_88;
    }

    v18 = "coap_socket_connect_tcp1: bind: %s\n";
LABEL_87:
    v31 = __error();
    v32 = strerror(*v31);
    coap_log_impl(4, v18, v32);
LABEL_88:
    v33 = *(a1 + 44);
    if (v33 != -1)
    {
      *(a1 + 23) = 0;
      *(a1 + 24) = 0;
      close(v33);
      *(a1 + 44) = -1;
    }

    goto LABEL_90;
  }

LABEL_66:
  if (connect(*(a1 + 44), &v34[4], *v34) == -1)
  {
    if (*__error() == 36)
    {
      v28 = 132;
      goto LABEL_75;
    }

    if (maxlog <= 3)
    {
      goto LABEL_88;
    }

    v18 = "coap_socket_connect_tcp1: connect: %s\n";
    goto LABEL_87;
  }

  if (getsockname(*(a1 + 44), (a1 + 140), a1 + 34) == -1 && maxlog >= 4)
  {
    v26 = __error();
    v27 = strerror(*v26);
    coap_log_impl(4, "coap_socket_connect_tcp1: getsockname: %s\n", v27);
  }

  v28 = 4;
  if (getpeername(*(a1 + 44), (a1 + 108), a1 + 26) == -1 && maxlog >= 4)
  {
    v29 = __error();
    v30 = strerror(*v29);
    coap_log_impl(4, "coap_socket_connect_tcp1: getpeername: %s\n", v30);
  }

LABEL_75:
  *(a1 + 90) |= v28;
  *(a1 + 36) = 0;
  *(a1 + 37) = 0;
  *(a1 + 38) = 0;
  *v34 = 0;
  *&v34[8] = 0;
  gettimeofday(v34, 0);
  *(a1 + 34) = 1000 * (*v34 - coap_clock_offset) + ((*&v34[8] * 1.024 + 512.0) >> 10);
  if ((*(a1 + 90) & 0x80) != 0)
  {
    a1[2] = 1;
    goto LABEL_79;
  }

  coap_handle_event(*(a1 + 26), 4097, a1);
  if (*a1 == 4)
  {
    a1[2] = 2;
    *(a1 + 27) = 0;
    coap_handle_event(*(a1 + 26), 512, a1);
    coap_session_disconnected(a1, 3);
    return -1;
  }

  coap_session_send_csm(a1);
LABEL_9:
  if (*a2)
  {
    if (a1[2] == 4 && (~*(a1 + 90) & 0x21) != 0)
    {
LABEL_12:

      return coap_session_send_pdu(a1, a2);
    }

    goto LABEL_79;
  }

  v11 = *(a1 + 90);
  if ((~v11 & 0x1001) == 0)
  {
    if (maxlog >= 3)
    {
      coap_log_impl(3, "Multicast requests cannot be Confirmable (RFC7252 8.1)\n");
    }

    return -1;
  }

  if (a1[2] == 4 && !a1[226] && (~v11 & 0x21) != 0)
  {
    if (*a1 - 1 <= 1)
    {
      a1[226] = 1;
    }

    goto LABEL_12;
  }

LABEL_79:

  return coap_session_delay_pdu(a1, a2, a3);
}

uint64_t coap_wait_ack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ++*(a2 + 4);
  *(a3 + 24) = a2;
  v8.tv_sec = 0;
  *&v8.tv_usec = 0;
  gettimeofday(&v8, 0);
  v5 = 1000 * (v8.tv_sec - coap_clock_offset) + ((v8.tv_usec * 1.024 + 512.0) >> 10);
  if (*(a1 + 48))
  {
    v6 = v5 - *(a1 + 40) + (*(a3 + 20) << *(a3 + 16));
  }

  else
  {
    v6 = (*(a3 + 20) << *(a3 + 16));
    *(a1 + 40) = v5;
  }

  *(a3 + 8) = v6;
  coap_insert_node((a1 + 48), a3);
  if (maxlog >= 7)
  {
    coap_session_str(*(a3 + 24));
    coap_log_impl(7, "** %s: tid=%d: added to retransmit queue (%ums)\n", &coap_session_str_szSession, *(a3 + 32), ((((125 * *(a3 + 8)) & 0x1FFFFFFFFFFFFFFFLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4);
  }

  return *(a3 + 32);
}

void coap_handle_event(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (maxlog >= 7)
  {
    coap_log_impl(7, "***EVENT: 0x%04x\n", a2);
  }

  v6 = *(a1 + 104);
  if (v6)
  {

    v6(a1, a2, a3);
  }
}

uint64_t coap_session_send_pdu(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(a2 + 3);
  if (!*(a2 + 3))
  {
    __assert_rtn("coap_session_send_pdu", "net.c", 687, "pdu->hdr_size > 0");
  }

  v5 = *a1;
  if (v5 == 3)
  {
    v7 = coap_session_write(a1, (*(a2 + 40) - v2), *(a2 + 24) + v2);
  }

  else if (v5 == 1)
  {
    if (*(a1 + 90))
    {
      v6 = a1 + 176;
    }

    else
    {
      v8 = *(a1 + 25);
      if (!v8)
      {
        __assert_rtn("coap_session_send", "coap_session.c", 221, "session->endpoint != NULL");
      }

      v6 = (v8 + 24);
    }

    v9 = *(a2 + 24) + v2;
    v7 = (*(*(a1 + 26) + 112))(v6, a1, *(a2 + 40) - v2, v9);
    if (v7 == v9)
    {
      v12.tv_sec = 0;
      *&v12.tv_usec = 0;
      gettimeofday(&v12, 0);
      *(a1 + 34) = 1000 * (v12.tv_sec - coap_clock_offset) + ((v12.tv_usec * 1.024 + 512.0) >> 10);
      if (maxlog <= 6)
      {
        v7 = v9;
        goto LABEL_17;
      }

      v10 = "*  %s: sent %zd bytes\n";
      goto LABEL_15;
    }

    if (maxlog >= 7)
    {
      v10 = "*  %s: failed to send %zd bytes\n";
LABEL_15:
      coap_session_str(a1);
      coap_log_impl(7, v10, &coap_session_str_szSession, v9);
    }
  }

  else
  {
    v7 = -1;
  }

LABEL_17:
  coap_show_pdu(a2);
  return v7;
}

unsigned __int8 *coap_new_error_response(unsigned __int8 *a1, int a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[4];
  if (a2 == 65)
  {
    v7 = &coap_error;
LABEL_6:
    v11 = *(v7 + 1);
    if (v11)
    {
      v12 = 0;
      v6 += strlen(*(v7 + 1)) + 1;
      goto LABEL_10;
    }
  }

  else
  {
    v8 = &coap_error;
    v9 = 23;
    while (--v9)
    {
      v7 = v8 + 16;
      v10 = v8[16];
      v8 += 16;
      if (v10 == a2)
      {
        goto LABEL_6;
      }
    }

    v11 = 0;
  }

  v12 = 1;
LABEL_10:
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  v13 = *a1;
  v14 = *a3;
  v15 = 4;
  v16 = 6;
  while ((v15 & v14) == 0 || *(a3 + v16) != 12)
  {
    v15 = (2 * v15) & 0x1FFF8;
    if (++v16 == 12)
    {
      goto LABEL_16;
    }
  }

  *a3 = v14 & ~v15;
LABEL_16:
  coap_option_iterator_init(a1, v36, a3);
  for (i = 0; ; i = WORD4(v36[0]))
  {
    v18 = coap_option_next(v36);
    if (!v18)
    {
      break;
    }

    v19 = v18;
    v20 = (WORD4(v36[0]) - i);
    if (v20 < 0x10D)
    {
      v21 = 2;
    }

    else
    {
      v21 = 3;
    }

    if (v20 < 0xD)
    {
      v22 = 1;
    }

    else
    {
      v22 = v21;
    }

    v6 += v22 + coap_opt_length(v18);
    v23 = *v19 & 0xF;
    if (v23 != 13)
    {
      if (v23 != 14)
      {
        continue;
      }

      ++v6;
    }

    ++v6;
  }

  if (v13)
  {
    v24 = 1;
  }

  else
  {
    v24 = 2;
  }

  v25 = coap_pdu_init(v24, v4, *(a1 + 3), v6);
  v26 = v25;
  if (v25)
  {
    if (coap_add_token(v25, a1[4], *(a1 + 5)))
    {
      coap_option_iterator_init(a1, v36, a3);
      while (1)
      {
        v27 = coap_option_next(v36);
        if (!v27)
        {
          break;
        }

        v28 = v27;
        v29 = WORD4(v36[0]);
        v30 = coap_opt_length(v27);
        v31 = coap_opt_value(v28);
        coap_add_option(v26, v29, v30, v31);
      }

      if ((v12 & 1) == 0)
      {
        v32 = strlen(v11);
        if (v32)
        {
          v33 = v32;
          v34 = coap_add_data_after(v26, v32);
          if (v34)
          {
            memcpy(v34, v11, v33);
          }
        }
      }
    }

    else
    {
      if (maxlog >= 7)
      {
        coap_log_impl(7, "cannot add token to error response\n", *&v36[0]);
      }

      coap_delete_pdu(v26);
      return 0;
    }
  }

  return v26;
}

unsigned __int8 *coap_send_message_type(unsigned __int8 *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    result = coap_pdu_init(3u, 0, *(a2 + 6), 0);
    if (result)
    {

      return coap_send(v2, result);
    }
  }

  return result;
}

void coap_handle_dgram_for_proto(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a2 == 1)
  {
    v6 = *(a3 + 72);
    v7 = coap_pdu_init(0, 0, 0, v6 - 4);
    if (v7)
    {
      if (v6 && (v8 = *a2, v9 = coap_pdu_parse_header_size(v8, (a3 + 80)), v9 - 1 < v6) && (v10 = v9, v9 <= v7[2]) && coap_pdu_resize(v7, v6 - v9) && (memcpy((*(v7 + 5) - v10), (a3 + 80), v6), v7[3] = v10, *(v7 + 3) = v6 - v10, coap_pdu_parse_header(v7, v8)) && coap_pdu_parse_opt(v7))
      {
        coap_dispatch(a1, a2, v7);
      }

      else if (maxlog >= 4)
      {
        coap_log_impl(4, "discard malformed PDU\n");
      }
    }

    coap_delete_pdu(v7);
  }
}

void coap_read_session()
{
  v0 = MEMORY[0x28223BE20]();
  v44 = v2;
  v51 = *MEMORY[0x277D85DE8];
  if ((*(v1 + 90) & 0x1004) == 0)
  {
    __assert_rtn("coap_read_session", "net.c", 1502, "session->sock.flags & (COAP_SOCKET_CONNECTED | COAP_SOCKET_MULTICAST)");
  }

  v3 = v1;
  v4 = v0;
  v49 = 0u;
  memset(v50, 0, 432);
  v47 = 0u;
  v48 = 0u;
  v5 = *v1;
  v45 = 0u;
  v46 = 0u;
  if ((v5 - 1) <= 1)
  {
    v6 = *(v1 + 120);
    v45 = *(v1 + 104);
    v46 = v6;
    v7 = *(v1 + 152);
    v47 = *(v1 + 136);
    v48 = v7;
    v8 = (*(v0 + 120))(v1 + 176, &v45);
    v9 = v8;
    if (v8 < 0)
    {
      if (v8 == -2)
      {
        v39 = v3;
        v40 = 4;
LABEL_90:
        coap_session_disconnected(v39, v40);
      }

      else if (maxlog >= 4)
      {
        coap_session_str(v3);
        coap_log_impl(4, "*  %s: read error\n", &coap_session_str_szSession);
      }
    }

    else if (v8)
    {
      *(v3 + 34) = v44;
      v10 = v46;
      *(v3 + 104) = v45;
      *(v3 + 120) = v10;
      v11 = v48;
      *(v3 + 136) = v47;
      *(v3 + 152) = v11;
      if (maxlog >= 7)
      {
        coap_session_str(v3);
        coap_log_impl(7, "*  %s: received %zd bytes\n", &coap_session_str_szSession, v9);
      }

      coap_handle_dgram_for_proto(v4, v3, &v45);
    }

    goto LABEL_91;
  }

  v12 = v50;
  v13 = v1 + 248;
LABEL_9:
  if (v5 != 3)
  {
    if (v5 != 4)
    {
      goto LABEL_91;
    }

    goto LABEL_89;
  }

  v14 = recv(*(v3 + 44), v50, 0x1000uLL, 0);
  if (v14 != -1)
  {
    v15 = v14;
    if (!v14)
    {
      *(v3 + 90) &= ~0x100u;
      goto LABEL_89;
    }

    if (v14 <= 4095)
    {
      *(v3 + 90) &= ~0x100u;
      if (v14 < 1)
      {
        v16 = v14;
LABEL_88:
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_91;
        }

LABEL_89:
        v39 = v3;
        v40 = 1;
        goto LABEL_90;
      }
    }

    if (maxlog >= 7)
    {
      coap_session_str(v3);
      coap_log_impl(7, "*  %s: received %zd bytes\n", &coap_session_str_szSession, v15);
    }

    *(v3 + 34) = v44;
    v16 = v15;
    while (1)
    {
      v17 = *(v3 + 33);
      if (v17)
      {
        v18 = *(v17 + 3);
        v19 = *(v17 + 24) + v18;
        v20 = *(v3 + 32);
        v21 = v19 - v20;
        if (v19 - v20 >= v16)
        {
          v22 = v16;
        }

        else
        {
          v22 = v19 - v20;
        }

        memcpy((*(v17 + 40) - v18 + v20), v12, v22);
        if (v21 <= v16)
        {
          if (coap_pdu_parse_header(*(v3 + 33), *v3) && coap_pdu_parse_opt(*(v3 + 33)))
          {
            coap_dispatch(v4, v3, *(v3 + 33));
          }

          coap_delete_pdu(*(v3 + 33));
          v23 = 0;
          *(v3 + 33) = 0;
        }

        else
        {
          v23 = *(v3 + 32) + v22;
        }

        v16 -= v22;
        v12 += v22;
      }

      else
      {
        v24 = *(v3 + 32);
        if (v24)
        {
          v25 = *v3;
          if ((v25 - 3) > 1)
          {
            v29 = 4 * ((v25 - 1) < 2);
          }

          else
          {
            v26 = *v13;
            v27 = 6;
            if (v26 >> 4 == 14)
            {
              v27 = 4;
            }

            v28 = 3;
            if (v26 >> 4 != 13)
            {
              v28 = v27;
            }

            if (v26 >= 0xD0)
            {
              v29 = v28;
            }

            else
            {
              v29 = 2;
            }
          }

          v30 = v29 - v24;
          if (v29 - v24 >= v16)
          {
            v31 = v16;
          }

          else
          {
            v31 = v29 - v24;
          }

          memcpy(&v13[v24], v12, v31);
          v32 = v16 - v31;
          v12 += v31;
          if (v30 <= v16)
          {
            if (*v3 - 3 >= 2)
            {
              __assert_rtn("coap_pdu_parse_size", "pdu.c", 432, "proto == COAP_PROTO_TCP || proto == COAP_PROTO_TLS");
            }

            v33 = *v13;
            if (v33 > 0xCF)
            {
              v35 = v33 >> 4;
              v36 = 6;
              if (v33 >> 4 == 14)
              {
                v36 = 4;
              }

              if (v35 == 13)
              {
                v36 = 3;
              }

              if (v36 > v29)
              {
LABEL_93:
                __assert_rtn("coap_pdu_parse_size", "pdu.c", 433, "coap_pdu_parse_header_size(proto, data) <= length");
              }

              if (v35 == 14)
              {
                v34 = __rev16(*(v3 + 249)) + 269;
              }

              else if (v35 == 13)
              {
                v34 = v3[249] + 13;
              }

              else if (v29 < 5)
              {
                v34 = 0;
              }

              else
              {
                v34 = bswap32(*(v3 + 249)) + 65805;
              }
            }

            else
            {
              if (v29 < 2)
              {
                goto LABEL_93;
              }

              v34 = v33 >> 4;
            }

            v37 = v34 + (v33 & 0xF);
            v38 = coap_pdu_init(0, 0, 0, v37);
            *(v3 + 33) = v38;
            if (!v38)
            {
              goto LABEL_89;
            }

            if (*(v38 + 2) < v37)
            {
              if (!coap_pdu_resize(v38, v37))
              {
                goto LABEL_89;
              }

              v38 = *(v3 + 33);
            }

            v38[3] = v29;
            *(v38 + 3) = v37;
            memcpy((*(v38 + 5) - v29), v3 + 248, v29);
            *(v3 + 32) = v29;
            if (!v37)
            {
              if (coap_pdu_parse_header(*(v3 + 33), *v3))
              {
                coap_dispatch(v4, v3, *(v3 + 33));
              }

              coap_delete_pdu(*(v3 + 33));
              *(v3 + 32) = 0;
              *(v3 + 33) = 0;
            }
          }

          else
          {
            *(v3 + 32) += v32;
          }

          v16 = v32;
          goto LABEL_71;
        }

        v3[248] = *v12;
        if (*v3 - 1 > 3)
        {
          goto LABEL_89;
        }

        --v16;
        ++v12;
        v23 = 1;
      }

      *(v3 + 32) = v23;
LABEL_71:
      if (v16 <= 0)
      {
        if (v15 != 4096 || v16)
        {
          goto LABEL_88;
        }

        v5 = *v3;
        v12 = v50;
        goto LABEL_9;
      }
    }
  }

  *(v3 + 90) &= ~0x100u;
  if (*__error() != 35 && *__error() != 4)
  {
    if (*__error() != 54 && maxlog >= 4)
    {
      v41 = __error();
      v42 = strerror(*v41);
      coap_log_impl(4, "coap_socket_read: recv: %s\n", v42);
    }

    goto LABEL_89;
  }

LABEL_91:
  v43 = *MEMORY[0x277D85DE8];
}

void coap_write_session(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 180) & 4) == 0)
  {
    __assert_rtn("coap_write_session", "net.c", 1448, "session->sock.flags & COAP_SOCKET_CONNECTED");
  }

  for (i = *(a1 + 232); i; i = *(a1 + 232))
  {
    if (maxlog >= 7)
    {
      coap_session_str(a1);
      coap_log_impl(7, "** %s: tid=%d: transmitted after delay\n", &coap_session_str_szSession, *(i[5] + 6));
    }

    v5 = *(a1 + 240);
    v6 = i[5];
    v7 = *(v6 + 3);
    v8 = *(v6 + 24) + v7;
    if (v8 <= v5)
    {
      __assert_rtn("coap_write_session", "net.c", 1455, "session->partial_write < q->pdu->used_size + q->pdu->hdr_size");
    }

    if (*a1 != 3)
    {
      break;
    }

    v9 = coap_session_write(a1, (*(v6 + 40) - v7 - v5), v8 - v5);
    if (v9 < 1)
    {
      break;
    }

    *(a1 + 272) = a2;
    v10 = *(a1 + 240);
    if (v9 < *(i[5] + 24) + *(i[5] + 3) - v10)
    {
      *(a1 + 240) = v10 + v9;
      return;
    }

    *(a1 + 232) = *i;
    *(a1 + 240) = 0;
    coap_delete_node(i);
  }
}

void coap_dispatch(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v154 = *MEMORY[0x277D85DE8];
  v143 = 0;
  if (maxlog >= 7)
  {
    coap_show_pdu(a3);
  }

  v6 = 0;
  v149 = 0;
  v148 = 0;
  v7 = *a3;
  if (v7 <= 1)
  {
    if (*a3)
    {
      if (v7 == 1)
      {
        v6 = 0;
        if (!coap_option_check_critical(a1, a3, &v148))
        {
          goto LABEL_293;
        }
      }

      goto LABEL_19;
    }

    if (coap_option_check_critical(a1, a3, &v148))
    {
      v6 = 0;
      goto LABEL_19;
    }

    v46 = coap_new_error_response(a3, 130, &v148);
    if (v46)
    {
      v6 = 0;
      if (coap_send(a2, v46) != -1 || maxlog < 4)
      {
        goto LABEL_293;
      }

      coap_log_impl(4, "coap_dispatch: error sending response\n");
    }

    else if (maxlog >= 4)
    {
      coap_log_impl(4, "coap_dispatch: cannot create error response\n");
    }

LABEL_150:
    v6 = 0;
    goto LABEL_293;
  }

  if (v7 == 3)
  {
    if (*(a2 + 57) == *(a3 + 3) && *(a1 + 204) && *(a2 + 36))
    {
      v25 = 0;
    }

    else
    {
      v25 = 1;
      if (maxlog >= 1)
      {
        coap_log_impl(1, "got RST for message %d\n", *(a3 + 3));
      }
    }

    if (a2[226])
    {
      --a2[226];
      if (a2[2] == 4)
      {
        coap_session_connected(a2);
      }
    }

    coap_remove_from_queue((a1 + 48), a2, *(a3 + 3), &v143);
    v6 = v143;
    if (v143)
    {
      v54 = *(v143 + 40);
      v55 = *(v54 + 4);
      v56 = *(v54 + 40);
      *&v145 = v55;
      *(&v145 + 1) = v56;
      v57 = *(a1 + 16);
      if (v57)
      {
        do
        {
          v58 = *(v57 + 80);
          coap_cancel_all_messages(a1, *(v6 + 24), *(&v145 + 1), v145);
          coap_delete_observer(v57, *(v6 + 24), &v145);
          v57 = v58;
        }

        while (v58);
      }

      if (v25)
      {
        if (!**(v6 + 40))
        {
          v59 = *(a1 + 80);
          if (v59)
          {
            v60 = *(v6 + 32);
            v59(a1, *(v6 + 24));
          }
        }
      }

      else
      {
        v65 = *(a1 + 96);
        if (v65)
        {
          v65(a1, a2, a3, *(a3 + 3));
        }

        *(a2 + 37) = *(a2 + 34);
        *(a2 + 57) = -1;
      }

      goto LABEL_293;
    }

    v61 = *(a1 + 16);
    if (v61)
    {
      while (1)
      {
        v62 = *(v61 + 80);
        v63 = *(v61 + 128);
        if (v63)
        {
          break;
        }

LABEL_126:
        v6 = 0;
        v61 = *(v61 + 80);
        if (!v62)
        {
          goto LABEL_293;
        }
      }

      while (1)
      {
        v64 = *v63;
        if (*(v63 + 9) == *(a3 + 3) && v63[1] == a2)
        {
          break;
        }

        v63 = *v63;
        if (!v64)
        {
          goto LABEL_126;
        }
      }

      *&v145 = v63[4];
      *(&v145 + 1) = v63 + 5;
      coap_delete_observer(v61, a2, &v145);
    }

    goto LABEL_150;
  }

  if (v7 == 2)
  {
    coap_remove_from_queue((a1 + 48), a2, *(a3 + 3), &v143);
    if (a2[226])
    {
      --a2[226];
      if (a2[2] == 4)
      {
        coap_session_connected(a2);
      }
    }

    v6 = v143;
    if (!a3[1])
    {
      goto LABEL_293;
    }

    if (v143)
    {
      v8 = *(v143 + 40);
      if ((*(v8 + 1) & 0xE0) == 0x40)
      {
        v145 = 0uLL;
        v9 = *(v8 + 4);
        v10 = *(v8 + 40);
        *&v145 = v9;
        *(&v145 + 1) = v10;
        coap_touch_observer(*(a1 + 16), *(v143 + 24), &v145);
      }
    }
  }

LABEL_19:
  v11 = a3[1];
  if (v11 < 0xE0)
  {
    if (v11 - 1 > 0x1E)
    {
      if (v11 < 0x40)
      {
        if (!a3[1])
        {
          v47 = *(a1 + 88);
          if (v47)
          {
            v47(a1, a2, a3, *(a3 + 3));
          }
        }

        if (maxlog >= 7)
        {
          coap_log_impl(7, "dropped message with invalid code (%d.%02d)\n", a3[1] >> 5, a3[1] & 0x1F);
        }

        v48 = a2[141];
        if (v48 == 2)
        {
          if ((*(a2 + 36) & 0xF0) == 0xE0)
          {
            goto LABEL_293;
          }
        }

        else if (v48 == 30 && a2[148] == 255)
        {
          goto LABEL_293;
        }

        if (a3[1])
        {
          coap_send_message_type(a2, a3);
        }

        else if (*a2 - 3 >= 2)
        {
          *&v145 = 0;
          coap_ticks(&v145);
          v77 = v145;
          if (*(a2 + 35) + 250 < v145)
          {
            coap_send_message_type(a2, a3);
            *(a2 + 35) = v77;
          }
        }
      }

      else
      {
        if (v6)
        {
          v26 = *(v6 + 40);
        }

        else
        {
          v26 = 0;
        }

        if (!*a3 && *a2 - 1 <= 1)
        {
          v75 = coap_pdu_init(2u, 0, *(a3 + 3), 0);
          if (v75)
          {
            coap_send(a2, v75);
          }
        }

        coap_cancel_all_messages(a1, a2, *(a3 + 5), a3[4]);
        v76 = *(a1 + 72);
        if (v76)
        {
          v76(a1, a2, v26, a3, *(a3 + 3));
        }
      }

      goto LABEL_293;
    }

    v153 = 0;
    v152 = 0;
    v147 = 0;
    v145 = 0u;
    v146 = 0u;
    LODWORD(v151) = 0;
    v150 = 0;
    coap_option_filter_op(&v150, 0xBu, 0);
    coap_option_iterator_init(a3, &v145, &v150);
    for (i = 0; ; ++i)
    {
      v15 = coap_option_next(&v145);
      if (!v15)
      {
        break;
      }

      v16 = v15;
      v17 = coap_opt_length(v15);
      v18 = coap_opt_value(v16);
      if (v17)
      {
        v19 = v17;
        do
        {
          v21 = *v18++;
          v20 = v21;
          v22 = (v21 & 0xFFFFFFDF) - 65;
          v23 = (v21 - 48) >= 0xA && v22 >= 0x1A;
          if (v23 && ((v20 - 33) <= 0x3E ? (v24 = ((1 << (v20 - 33)) & 0x4000000096003FC9) == 0) : (v24 = 1), v24 && v20 != 126))
          {
            if (v20 == 38)
            {
              ++i;
            }

            else
            {
              i += 3;
            }
          }

          else
          {
            ++i;
          }

          --v19;
        }

        while (v19);
      }
    }

    if (i)
    {
      v27 = i - 1;
    }

    else
    {
      v27 = 0;
    }

    v28 = coap_new_string(v27);
    if (!v28)
    {
      goto LABEL_293;
    }

    v140 = a2;
    v141 = v28;
    *v28 = v27;
    v29 = v28[1];
    v142 = a3;
    coap_option_iterator_init(a3, &v145, &v150);
    v30 = 0;
    while (1)
    {
      v31 = coap_option_next(&v145);
      if (!v31)
      {
        break;
      }

      v32 = v31;
      if (v30)
      {
        *v29++ = 47;
      }

      ++v30;
      v33 = coap_opt_length(v31);
      v34 = coap_opt_value(v32);
      if (v33)
      {
        v35 = v33;
        do
        {
          v36 = *v34;
          v37 = (v36 - 48) >= 0xA && (v36 & 0xFFFFFFDF) - 65 >= 0x1A;
          if (v37 && ((v36 - 33) <= 0x3E ? (v38 = ((1 << (v36 - 33)) & 0x4000000096003FE9) == 0) : (v38 = 1), v38 && v36 != 126))
          {
            *v29 = 37;
            v29[1] = a0123456789abcd_0[*v34 >> 4];
            v29[2] = a0123456789abcd_0[*v34 & 0xF];
            v29 += 3;
          }

          else
          {
            *v29++ = v36;
          }

          ++v34;
          --v35;
        }

        while (v35);
      }
    }

    v39 = v141;
    v40 = *v141;
    v41 = v141[1];
    resource_from_uri_path = coap_get_resource_from_uri_path(a1, *v141, v41);
    v43 = resource_from_uri_path;
    if (resource_from_uri_path && (*resource_from_uri_path & 0x10) == 0)
    {
      v44 = resource_from_uri_path;
      v45 = v140;
      goto LABEL_179;
    }

    v45 = v140;
    if (v40 == 16 && (*v41 == 0x6E6B2D6C6C65772ELL ? (v49 = *(v41 + 8) == 0x65726F632F6E776FLL) : (v49 = 0), v49))
    {
      v51 = v142;
      if (*(v142 + 1) == 1)
      {
        if (maxlog >= 6)
        {
          coap_log_impl(6, "create default response for %s\n", ".well-known/core");
        }

        v78 = coap_wellknown_response(a1, v140, v142);
        goto LABEL_175;
      }

      if (maxlog >= 7)
      {
        coap_log_impl(7, "method not allowed for .well-known/core\n");
      }

      v52 = v142;
      v53 = 133;
    }

    else
    {
      v44 = *(a1 + 24);
      v50 = *(v142 + 1);
      if (v44 && (v50 - 1) <= 6 && *(v44 + 8 * (v50 - 1) + 8))
      {
        goto LABEL_179;
      }

      if (v50 == 4)
      {
        if (maxlog >= 7)
        {
          coap_log_impl(7, "request for unknown resource '%*.*s', return 2.02\n", v40, v40, v41);
        }

        v51 = v142;
        v52 = v142;
        v53 = 66;
      }

      else
      {
        if (maxlog >= 7)
        {
          coap_log_impl(7, "request for unknown resource '%*.*s', return 4.04\n", v40, v40, v41);
        }

        v51 = v142;
        v52 = v142;
        v53 = 132;
      }
    }

    v78 = coap_new_error_response(v52, v53, &v152);
LABEL_175:
    v79 = v78;
    if (!v43)
    {
      if (!v78)
      {
LABEL_292:
        free(v39);
        goto LABEL_293;
      }

      if (no_response(v51, v78) != 1)
      {
        if (coap_send(v140, v79) == -1 && maxlog >= 4)
        {
          v132 = *(v51 + 6);
          coap_log_impl(4, "cannot send response for transaction %u\n");
        }

        goto LABEL_292;
      }

      v104 = v79;
LABEL_279:
      coap_delete_pdu(v104);
      goto LABEL_292;
    }

    if (v78)
    {
      coap_delete_pdu(v78);
    }

    v44 = v43;
LABEL_179:
    v80 = v142;
    v81 = *(v142 + 1) - 1;
    if (v81 > 6 || (v82 = *(v44 + 8 * v81 + 8)) == 0)
    {
      if (*v141 == 16 && ((v99 = v141[1], v101 = *v99, v100 = v99[1], v101 == 0x6E6B2D6C6C65772ELL) ? (v102 = v100 == 0x65726F632F6E776FLL) : (v102 = 0), v102))
      {
        if (maxlog >= 7)
        {
          coap_log_impl(7, "create default response for %s\n", ".well-known/core");
        }

        v117 = coap_wellknown_response(a1, v45, v142);
        v103 = v117;
        if (maxlog >= 7)
        {
          coap_log_impl(7, "have wellknown response %p\n", v117);
        }
      }

      else
      {
        v103 = coap_new_error_response(v142, 133, &v152);
      }

      if (!v103)
      {
        goto LABEL_292;
      }

      if (no_response(v142, v103) != 1)
      {
        if (coap_send(v45, v103) == -1 && maxlog >= 7)
        {
          v136 = *(v142 + 6);
          coap_log_impl(7, "cannot send response for transaction %d\n");
        }

        goto LABEL_292;
      }

      v104 = v103;
      goto LABEL_279;
    }

    v139 = v82;
    v147 = 0;
    v145 = 0u;
    v146 = 0u;
    LODWORD(v151) = 0;
    v150 = 0;
    coap_option_filter_op(&v150, 0xFu, 0);
    coap_option_iterator_init(v142, &v145, &v150);
    for (j = 0; ; ++j)
    {
      v84 = coap_option_next(&v145);
      if (!v84)
      {
        break;
      }

      v85 = v84;
      v86 = coap_opt_length(v84);
      v87 = coap_opt_value(v85);
      if (v86)
      {
        v88 = v86;
        do
        {
          v90 = *v87++;
          v89 = v90;
          v91 = (v90 & 0xFFFFFFDF) - 65;
          v92 = v90 - 48;
          v93 = v90 != 126;
          v94 = (1 << (v90 - 33)) & 0x4000000096003FE9;
          v96 = ((v90 - 33) > 0x3E || v94 == 0) && v93;
          v98 = v92 >= 0xA && v91 >= 0x1A && v96;
          if ((v89 & 0xFFFFFFEF) != 47 && v98)
          {
            j += 3;
          }

          else
          {
            ++j;
          }

          --v88;
        }

        while (v88);
      }
    }

    if (j)
    {
      v105 = j - 1;
    }

    else
    {
      v105 = 0;
    }

    if (j >= 2)
    {
      v107 = coap_new_string(v105);
      v106 = v107;
      if (v107)
      {
        v138 = v44;
        *v107 = v105;
        v108 = v107[1];
        coap_option_iterator_init(v142, &v145, &v150);
        while (1)
        {
          v109 = coap_option_next(&v145);
          if (!v109)
          {
            break;
          }

          v110 = v109;
          if (v108 != v106[1])
          {
            *v108++ = 38;
          }

          v111 = coap_opt_length(v109);
          v112 = coap_opt_value(v110);
          if (v111)
          {
            v113 = v111;
            do
            {
              v114 = *v112;
              v115 = (v114 - 48) >= 0xA && (v114 & 0xFFFFFFDF) - 65 >= 0x1A;
              if (!v115 || ((v114 - 33) <= 0x3E ? (v116 = ((1 << (v114 - 33)) & 0x4000000096003FE9) == 0) : (v116 = 1), !v116 || v114 == 126 || (v114 & 0xFFFFFFEF) == 0x2F))
              {
                *v108++ = v114;
              }

              else
              {
                *v108 = 37;
                v108[1] = a0123456789abcd_0[*v112 >> 4];
                v108[2] = a0123456789abcd_0[*v112 & 0xF];
                v108 += 3;
              }

              ++v112;
              --v113;
            }

            while (v113);
          }
        }

        v45 = v140;
        v80 = v142;
        v44 = v138;
      }
    }

    else
    {
      v106 = 0;
    }

    v39 = v141;
    if (maxlog >= 7)
    {
      coap_log_impl(7, "call custom handler for resource '%*.*s'\n", **(v44 + 136), **(v44 + 136), *(*(v44 + 136) + 8));
    }

    v118 = *v80;
    v119 = *(v80 + 3);
    v120 = coap_session_max_pdu_size(v45);
    if (v118)
    {
      v121 = 1;
    }

    else
    {
      v121 = 2;
    }

    v122 = coap_pdu_init(v121, 0, v119, v120);
    if (!coap_add_token(v122, v80[4], *(v80 + 5)))
    {
      if (maxlog >= 4)
      {
        coap_log_impl(4, "cannot generate response\r\n");
      }

      if (v122)
      {
        __assert_rtn("handle_request", "net.c", 2594, "response == NULL");
      }

      goto LABEL_292;
    }

    v123 = *(v80 + 5);
    v150 = v80[4];
    v151 = v123;
    v147 = 0;
    v145 = 0u;
    v146 = 0u;
    if ((*v44 & 4) != 0)
    {
      v125 = coap_check_option(v80, 6u, &v145);
      if (v125)
      {
        v126 = v125;
        v127 = coap_opt_value(v125);
        v128 = coap_opt_length(v126);
        v80 = v142;
        if (!v128)
        {
          goto LABEL_266;
        }

        v129 = -1;
        do
        {
          ++v129;
        }

        while (v129 - v128 != -1);
        if ((v127[v129] & 1) == 0)
        {
LABEL_266:
          v144 = 0;
          block = coap_get_block(v142, &v144);
          if (coap_add_observer(v44, v45, &v150, v106, block, v144))
          {
            coap_touch_observer(*(a1 + 16), v45, &v150);
          }

          v139(a1, v44, v45, v142, &v150, v106, v122);
          v131 = no_response(v142, v122);
          if (v131 == 1)
          {
            goto LABEL_278;
          }

LABEL_281:
          if (v122[1] >= 0x60u)
          {
            coap_delete_observer(v44, v45, &v150);
          }

LABEL_283:
          v134 = *v122;
          if (v134 == 2)
          {
            if (!v122[1])
            {
              v122[4] = 0;
              *(v122 + 3) = 0;
            }
          }

          else if (v131 != 2 && v134 == 1 && v122[1] < 0x40u)
          {
LABEL_278:
            v104 = v122;
            goto LABEL_279;
          }

          if (coap_send(v45, v122) == -1 && maxlog >= 7)
          {
            v137 = *(v80 + 3);
            coap_log_impl(7, "cannot send response for message %d\n");
          }

          goto LABEL_292;
        }

        coap_delete_observer(v44, v45, &v150);
        v124 = 0;
      }

      else
      {
        v124 = 1;
        v80 = v142;
      }
    }

    else
    {
      v124 = 1;
    }

    v139(a1, v44, v45, v80, &v150, v106, v122);
    if (v106)
    {
      free(v106);
    }

    v133 = no_response(v80, v122);
    if (v133 == 1)
    {
      goto LABEL_278;
    }

    v131 = v133;
    if (v124)
    {
      goto LABEL_283;
    }

    goto LABEL_281;
  }

  v147 = 0;
  v145 = 0u;
  v146 = 0u;
  coap_option_iterator_init(a3, &v145, 0);
  v12 = a3[1];
  if (v12 <= 0xE3)
  {
    if (v12 != 225)
    {
      if (v12 == 226)
      {
        v73 = coap_pdu_init(0, 0xE3u, 0, 1uLL);
        v74 = *(a1 + 88);
        if (v74)
        {
          v74(a1, a2, a3, *(a3 + 3));
        }

        if (v73)
        {
          coap_add_option(v73, 2u, 0, 0);
          coap_send(a2, v73);
        }
      }

      else if (v12 == 227)
      {
        *(a2 + 37) = *(a2 + 34);
        v13 = *(a1 + 96);
        if (v13)
        {
          v13(a1, a2, a3, *(a3 + 3));
        }
      }

      goto LABEL_293;
    }

    while (1)
    {
      do
      {
        v66 = coap_option_next(&v145);
        if (!v66)
        {
          if (a2[2] == 3)
          {
            coap_session_connected(a2);
          }

          goto LABEL_293;
        }
      }

      while (WORD4(v145) != 2);
      v67 = v66;
      v68 = coap_opt_value(v66);
      v69 = coap_opt_length(v67);
      v70 = 0;
      if (v69)
      {
        v71 = v69;
        do
        {
          v72 = *v68++;
          v70 = v72 | (v70 << 8);
          --v71;
        }

        while (v71);
        *(a2 + 3) = v70;
        if (*(a2 + 2) >= v70)
        {
          goto LABEL_139;
        }
      }

      else
      {
        *(a2 + 3) = 0;
LABEL_139:
        *(a2 + 2) = v70;
        if (maxlog >= 3)
        {
          coap_log_impl(3, "DTLS overhead exceeds MTU\n");
        }
      }
    }
  }

  if (v12 - 228 < 2)
  {
    coap_session_disconnected(a2, 2);
  }

LABEL_293:
  coap_delete_node(v6);
  v135 = *MEMORY[0x277D85DE8];
}

void coap_remove_from_queue(void **a1, uint64_t a2, int a3, void *a4)
{
  if (!a1)
  {
    return;
  }

  v4 = *a1;
  if (!*a1)
  {
    return;
  }

  if (v4[3] == a2 && *(v4 + 8) == a3)
  {
    *a4 = v4;
    v6 = **a1;
    *a1 = v6;
    v7 = *a4;
    if (v6)
    {
      v6[1] += v7[1];
    }

    *v7 = 0;
    if (maxlog <= 6)
    {
      return;
    }

LABEL_17:
    coap_session_str(a2);
    coap_log_impl(7, "** %s: tid=%d: removed\n", &coap_session_str_szSession, a3);
    return;
  }

  v8 = *v4;
  if (*v4)
  {
    while (1)
    {
      v9 = v8;
      if (v8[3] == a2 && *(v8 + 8) == a3)
      {
        break;
      }

      v8 = *v8;
      v4 = v9;
      if (!*v9)
      {
        return;
      }
    }

    v10 = *v8;
    *v4 = *v9;
    if (v10)
    {
      v10[1] += v9[1];
    }

    *v9 = 0;
    *a4 = v9;
    if (maxlog >= 7)
    {
      goto LABEL_17;
    }
  }
}

void coap_cancel_all_messages(uint64_t a1, uint64_t a2, void *__s1, size_t __n)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    while (*(v4 + 24) == a2)
    {
      v9 = *(v4 + 40);
      if (*(v9 + 4) != __n || __n && memcmp(__s1, *(v9 + 40), __n))
      {
        break;
      }

      *(a1 + 48) = *v4;
      if (maxlog >= 7)
      {
        coap_session_str(a2);
        coap_log_impl(7, "** %s: tid=%d: removed\n", &coap_session_str_szSession, *(v4 + 32));
      }

      coap_delete_node(v4);
      v4 = *(a1 + 48);
      if (!v4)
      {
        return;
      }
    }

    for (i = *v4; *v4; i = *v4)
    {
      if (*(i + 24) == a2 && (v11 = *(i + 40), *(v11 + 4) == __n) && (!__n || !memcmp(__s1, *(v11 + 40), __n)))
      {
        *v4 = *i;
        if (maxlog >= 7)
        {
          coap_session_str(a2);
          coap_log_impl(7, "** %s: tid=%d: removed\n", &coap_session_str_szSession, *(i + 32));
        }

        coap_delete_node(i);
      }

      else
      {
        v4 = i;
      }
    }
  }
}

uint64_t coap_wellknown_response(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v5 = *a3;
  v6 = *(a3 + 3);
  v7 = coap_session_max_pdu_size(a2);
  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  v9 = coap_pdu_init(v8, 0x45u, v6, v7);
  v10 = v9;
  if (v9)
  {
    v54 = 0;
    memset(v53, 0, sizeof(v53));
    v52 = 0;
    v50 = 0;
    if (!coap_add_token(v9, a3[4], *(a3 + 5)))
    {
      if (maxlog >= 7)
      {
        coap_log_impl(7, "coap_wellknown_response: cannot add token\n");
      }

      goto LABEL_19;
    }

    v11 = coap_check_option(a3, 0xFu, v53);
    v55 = 0;
    if ((coap_print_wellknown(a1, v51, &v55, 0xFFFFFFFFLL, v11) & 0x80000000) != 0)
    {
      if (maxlog >= 4)
      {
        coap_log_impl(4, "cannot determine length of /.well-known/core\n");
      }
    }

    else
    {
      v12 = v55;
      if (maxlog >= 7)
      {
        coap_log_impl(7, "get_wkc_len: coap_print_wellknown() returned %zu\n", v55);
      }

      if (v12)
      {
        if (coap_get_block(a3, &v50))
        {
          if (maxlog >= 7)
          {
            coap_log_impl(7, "create block\n");
          }

          v13 = (BYTE4(v50) >> 1) & 7;
          if (v13 == 7)
          {
            *(v10 + 1) = 0x80;
            return v10;
          }

          v22 = v50 << (v13 + 4);
          v23 = *(v10 + 32);
          if (!v23 || v23 > *(v10 + 24) + 8)
          {
LABEL_38:
            v24 = v22;
            v25 = coap_encode_var_safe(v51, v12);
            coap_add_option(v10, 4u, v25, v51);
            v26 = 0;
            goto LABEL_42;
          }

LABEL_39:
          if (maxlog >= 7)
          {
            coap_log_impl(7, "coap_wellknown_response: insufficient storage space\n");
          }

          goto LABEL_19;
        }

        v16 = *(v10 + 32);
        if (v16)
        {
          v17 = *(v10 + 24);
          if (v16 <= v17 + 8)
          {
            goto LABEL_39;
          }

          v18 = v16 - v17;
          if (v16 - v17 < v12 + 1)
          {
            if (v16 < v17)
            {
              __assert_rtn("coap_wellknown_response", "net.c", 2187, "resp->used_size <= resp->max_size");
            }

            LODWORD(v50) = 0;
            v19 = BYTE4(v50) & 0xF0 | 0xC;
            if (v18 <= 0x405)
            {
              LOBYTE(v20) = 6;
              while (v20)
              {
                v21 = v19 + 14;
                v19 = v19 & 0xFFFFFFF1 | (2 * (((v19 + 14) >> 1) & 7));
                v20 = (v21 >> 1) & 7;
                if (v18 >= ((16 << v20) | 6u))
                {
                  goto LABEL_35;
                }
              }

              BYTE4(v50) = v19;
              if (maxlog >= 7)
              {
                coap_log_impl(7, "coap_wellknown_response: message to small even for szx == 0\n");
              }

              goto LABEL_19;
            }

LABEL_35:
            v22 = 0;
            BYTE4(v50) = v19;
            goto LABEL_38;
          }
        }

        v24 = 0;
        v26 = 1;
LABEL_42:
        if (coap_encode_var_safe(v51, 0x28u) != 1)
        {
          __assert_rtn("coap_wellknown_response", "net.c", 2218, "coap_encode_var_safe(buf, sizeof(buf), COAP_MEDIATYPE_APPLICATION_LINK_FORMAT) == 1");
        }

        v27 = coap_encode_var_safe(v51, 0x28u);
        coap_add_option(v10, 0xCu, v27, v51);
        if (v26)
        {
          v28 = coap_encode_var_safe(v51, v12);
          coap_add_option(v10, 0x1Cu, v28, v51);
          v29 = *(v10 + 32);
          if (v29)
          {
            v30 = *(v10 + 24);
            if (v12 + v30 + 1 > v29)
            {
              v12 = v29 + ~v30;
            }
          }

LABEL_69:
          v52 = v12;
          v49 = coap_add_data_after(v10, v12);
          if (v49)
          {
            if ((coap_print_wellknown(a1, v49, &v52, v24, v11) & 0x80000000) == 0)
            {
              return v10;
            }

            if (maxlog >= 7)
            {
              coap_log_impl(7, "coap_print_wellknown failed\n");
            }
          }

          else if (maxlog >= 7)
          {
            coap_log_impl(7, "coap_wellknown_response: coap_add_data failed\n");
          }

          goto LABEL_19;
        }

        v31 = v50;
        v32 = BYTE4(v50);
        v33 = (BYTE4(v50) >> 1) & 7;
        v34 = (v50 << (v33 + 4));
        v35 = v12 - v34;
        if (v12 > v34)
        {
          v36 = *(v10 + 32);
          if (!v36)
          {
            __assert_rtn("coap_write_block_opt", "block.c", 77, "pdu->max_size > 0");
          }

          v37 = v36 - *(v10 + 24) - 4;
          v38 = 1 << (v33 + 4);
          if (v38 <= v37)
          {
            if (v38 >= v35)
            {
              v43 = BYTE4(v50) & 0xFE;
            }

            else
            {
              v43 = (BYTE4(v50) & 0xFE) + 1;
            }
          }

          else
          {
            if (v35 > v37)
            {
              if (v37 >= 0x10)
              {
                v39 = -1;
                v40 = v37;
                do
                {
                  ++v39;
                  v41 = v40 > 1;
                  v40 >>= 1;
                }

                while (v41);
                v42 = v39 - 4;
                if (maxlog >= 7)
                {
                  coap_log_impl(7, "decrease block size for %zu to %d\n", v37, v42);
                  v32 = BYTE4(v50);
                  v31 = v50;
                  LODWORD(v33) = (BYTE4(v50) >> 1) & 7;
                }

                v43 = v32 & 0xF0 | (2 * (v42 & 7)) | 1;
                BYTE4(v50) = v43;
                v31 <<= v33 - (v42 & 7);
                LODWORD(v50) = v31;
                goto LABEL_66;
              }

              if (maxlog > 6)
              {
                coap_log_impl(7, "not enough space, even the smallest block does not fit");
LABEL_59:
                if (maxlog >= 7)
                {
                  coap_log_impl(7, "coap_wellknown_response: cannot add Block2 option\n");
                }

                goto LABEL_19;
              }

              goto LABEL_19;
            }

            v43 = BYTE4(v50) & 0xFE;
          }

          BYTE4(v50) = v43;
LABEL_66:
          v44 = coap_encode_var_safe(&v55, (8 * (v43 & 1)) | (16 * v31) | (v43 >> 1) & 7);
          coap_add_option(v10, 0x17u, v44, &v55);
          v45 = coap_encode_var_safe(v51, v12);
          coap_add_option(v10, 0x1Cu, v45, v51);
          v46 = ((BYTE4(v50) >> 1) & 7) + 4;
          v47 = 1 << v46;
          v48 = v12 - (v50 << v46);
          if (v48 >= v47)
          {
            v12 = v47;
          }

          else
          {
            v12 = v48;
          }

          goto LABEL_69;
        }

        if (maxlog > 6)
        {
          coap_log_impl(7, "illegal block requested\n");
          goto LABEL_59;
        }

LABEL_19:
        v14 = -93;
LABEL_25:
        *(v10 + 1) = v14;
        *(v10 + 24) = *(v10 + 4);
        return v10;
      }
    }

    if (maxlog >= 7)
    {
      coap_log_impl(7, "coap_wellknown_response: undefined resource\n");
    }

    v14 = 0x80;
    goto LABEL_25;
  }

  if (maxlog >= 7)
  {
    coap_log_impl(7, "coap_wellknown_response: cannot create PDU\n");
  }

  return v10;
}

uint64_t no_response(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    __assert_rtn("no_response", "net.c", 2338, "request");
  }

  if (!a2)
  {
    __assert_rtn("no_response", "net.c", 2339, "response");
  }

  if (*(a2 + 1) < 0x20u)
  {
    return 0;
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  result = coap_check_option(a1, 0x102u, v10);
  if (result)
  {
    v4 = result;
    v5 = coap_opt_value(result);
    v6 = coap_opt_length(v4);
    v7 = 0;
    if (v6)
    {
      v8 = v6;
      do
      {
        v9 = *v5++;
        v7 = v9 | (v7 << 8);
        --v8;
      }

      while (v8);
    }

    if ((v7 >> ((*(a2 + 1) >> 5) - 1)))
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}