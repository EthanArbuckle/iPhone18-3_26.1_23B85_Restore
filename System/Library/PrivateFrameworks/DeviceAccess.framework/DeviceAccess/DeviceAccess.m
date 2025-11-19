uint64_t sub_2488BDCCC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t OUTLINED_FUNCTION_0()
{

  return CUXPCDecodeUInt64RangedEx();
}

__CFString *DACurrentDeviceCapabilitiesToString(__int16 a1)
{
  if ((a1 & 0x400) != 0)
  {
    CUAppendF();
    v1 = 0;
  }

  else
  {
    v1 = 0;
  }

  v2 = &stru_285B4C350;
  if (v1)
  {
    v2 = v1;
  }

  v3 = v2;

  return v3;
}

__CFString *DADeviceInteractionTypeToString(char a1)
{
  if (a1)
  {
    CUAppendF();
    v1 = 0;
  }

  else
  {
    v1 = 0;
  }

  v2 = &stru_285B4C350;
  if (v1)
  {
    v2 = v1;
  }

  v3 = v2;

  return v3;
}

void DAXPCEncodeNSArrayOfCBUUID(void *a1, const char *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a3;
  if (v6)
  {
    v7 = xpc_array_create(0, 0);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v16 + 1) + 8 * v12) data];
          v14 = xpc_data_create([v13 bytes], objc_msgSend(v13, "length"));
          xpc_array_append_value(v7, v14);

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    xpc_dictionary_set_value(v5, a2, v7);
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t DAXPCDecodeNSArrayOfCBUUID(void *a1, const char *a2, id *a3, void *a4)
{
  v7 = a1;
  v8 = xpc_dictionary_get_value(v7, a2);
  v9 = v8;
  if (!v8)
  {
    goto LABEL_9;
  }

  if (MEMORY[0x24C1DC9E0](v8) == MEMORY[0x277D86440])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy_;
    v21 = __Block_byref_object_dispose_;
    v22 = 0;
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    applier[0] = MEMORY[0x277D85DD0];
    applier[1] = 3221225472;
    applier[2] = __DAXPCDecodeNSArrayOfCBUUID_block_invoke;
    applier[3] = &unk_278F57B18;
    applier[5] = &v17;
    applier[6] = a2;
    applier[4] = v12;
    xpc_array_apply(v9, applier);
    v13 = v18[5];
    if (v13)
    {
      if (a4)
      {
        v15 = v13;
        *a4 = v13;
      }
    }

    else
    {
      objc_storeStrong(a3, v12);
    }

    _Block_object_dispose(&v17, 8);
    if (v13)
    {
      goto LABEL_8;
    }

LABEL_9:
    v11 = 1;
    goto LABEL_10;
  }

  if (!a4)
  {
LABEL_8:
    v11 = 0;
    goto LABEL_10;
  }

  v10 = *MEMORY[0x277CCA590];
  NSErrorF_safe();
  *a4 = v11 = 0;
LABEL_10:

  return v11;
}

void sub_2488BFCF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __DAXPCDecodeNSArrayOfCBUUID_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (MEMORY[0x24C1DC9E0]() == MEMORY[0x277D86458])
  {
    length = xpc_data_get_length(v4);
    if (length <= 0x10 && ((1 << length) & 0x10014) != 0)
    {
      v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:xpc_data_get_bytes_ptr(v4) length:length];
      v7 = [MEMORY[0x277CBE0A0] UUIDWithData:v6];
      [*(a1 + 32) addObject:v7];

      v8 = 1;
    }

    else
    {
      v9 = *MEMORY[0x277CCA590];
      v13 = *(a1 + 48);
      v10 = NSErrorF_safe();
      v8 = 0;
      v11 = *(*(a1 + 40) + 8);
      v6 = *(v11 + 40);
      *(v11 + 40) = v10;
    }
  }

  else
  {
    __DAXPCDecodeNSArrayOfCBUUID_block_invoke_cold_1(a1, &v14);
    v8 = 0;
    v6 = v14;
  }

  return v8;
}

__CFString *DADeviceConnectedStatusToString(int a1)
{
  if ((a1 & 0x400) != 0)
  {
    CUAppendF();
    v2 = 0;
    if ((a1 & 0x100000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = 0;
  if ((a1 & 0x100000) != 0)
  {
LABEL_5:
    CUAppendF();
    v3 = v2;

    v2 = v3;
  }

LABEL_6:
  v4 = &stru_285B4C350;
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  return v5;
}

__CFString *DADeviceFlagsToString(__int16 a1)
{
  if ((a1 & 2) != 0)
  {
    CUAppendF();
    v2 = 0;
    if ((a1 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = 0;
  if ((a1 & 4) != 0)
  {
LABEL_5:
    CUAppendF();
    v3 = v2;

    v2 = v3;
  }

LABEL_6:
  if ((a1 & 8) != 0)
  {
    CUAppendF();
    v8 = v2;

    v2 = v8;
    if ((a1 & 0x10) == 0)
    {
LABEL_8:
      if ((a1 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_22;
    }
  }

  else if ((a1 & 0x10) == 0)
  {
    goto LABEL_8;
  }

  CUAppendF();
  v9 = v2;

  v2 = v9;
  if ((a1 & 0x20) == 0)
  {
LABEL_9:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  CUAppendF();
  v10 = v2;

  v2 = v10;
  if ((a1 & 0x40) == 0)
  {
LABEL_10:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  CUAppendF();
  v11 = v2;

  v2 = v11;
  if ((a1 & 0x80) == 0)
  {
LABEL_11:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  CUAppendF();
  v12 = v2;

  v2 = v12;
  if ((a1 & 0x100) == 0)
  {
LABEL_12:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  CUAppendF();
  v13 = v2;

  v2 = v13;
  if ((a1 & 0x200) == 0)
  {
LABEL_13:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_26:
  CUAppendF();
  v14 = v2;

  v2 = v14;
  if ((a1 & 0x400) != 0)
  {
LABEL_14:
    CUAppendF();
    v4 = v2;

    v2 = v4;
  }

LABEL_15:
  v5 = &stru_285B4C350;
  if (v2)
  {
    v5 = v2;
  }

  v6 = v5;

  return v6;
}

__CFString *DADeviceAccessorySetupOptionsToString(int a1)
{
  if (a1)
  {
    CUAppendF();
    v2 = 0;
    if ((a1 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = 0;
  if ((a1 & 2) != 0)
  {
LABEL_5:
    CUAppendF();
    v3 = v2;

    v2 = v3;
  }

LABEL_6:
  if ((a1 & 0x40000000) != 0)
  {
    CUAppendF();
    v4 = v2;

    v2 = v4;
  }

  v5 = @"None";
  if (v2)
  {
    v5 = v2;
  }

  v6 = v5;

  return v6;
}

__CFString *DADeviceProtocolTypeToString(uint64_t a1)
{
  v1 = @"?";
  if (a1 == 1)
  {
    v1 = @"DIAL";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Invalid";
  }
}

__CFString *DADeviceTypeToString(unint64_t a1)
{
  if (a1 > 6)
  {
    return @"?";
  }

  else
  {
    return off_278F57C10[a1];
  }
}

__CFString *DADeviceStateToString(uint64_t a1)
{
  if (a1 > 19)
  {
    if (a1 > 27)
    {
      if (a1 == 28)
      {
        return @"Unauthorized";
      }

      if (a1 == 30)
      {
        return @"Invalidating";
      }
    }

    else
    {
      if (a1 == 20)
      {
        return @"Activated";
      }

      if (a1 == 25)
      {
        return @"Authorized";
      }
    }
  }

  else if (a1 > 4)
  {
    if (a1 == 5)
    {
      return @"Found";
    }

    if (a1 == 10)
    {
      return @"Activating";
    }
  }

  else
  {
    if (!a1)
    {
      return @"Invalid";
    }

    if (a1 == 1)
    {
      return @"Archived";
    }
  }

  return @"?";
}

__CFString *DADeviceMediaPlaybackStateToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"?";
  }

  else
  {
    return off_278F57C48[a1];
  }
}

void sub_2488C57B4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id approvedCoreBluetoothADVKeysNested()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = *MEMORY[0x277CBDD28];
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

void sub_2488C6B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2488C7F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_2488C8134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2488C9860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&STACK[0x230], 8);
  _Unwind_Resume(a1);
}

void sub_2488CAC48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  (*(v11 + 16))(v11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _responseCallback(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(&gDAUserAlertMutex);
  v4 = gDAUserAlertMap;
  v5 = [MEMORY[0x277CCABB0] numberWithLong:a1];
  v6 = [v4 objectForKeyedSubscript:v5];

  pthread_mutex_unlock(&gDAUserAlertMutex);
  [v6 _responseCallback:a1 responseFlags:a2];
}

void sub_2488CEF40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  (*(v34 + 16))(v34);
  _Block_object_dispose(&a34, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2488CFB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2488D2660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_11()
{

  return LogPrintF();
}

__CFString *DAErrorCodeToString(uint64_t a1)
{
  switch(a1)
  {
    case 350000:
      result = @"DAErrorCodeUnknown";
      break;
    case 350001:
      result = @"DAErrorCodeBadParameter";
      break;
    case 350002:
      result = @"DAErrorCodeUnsupported";
      break;
    case 350003:
      result = @"DAErrorCodeTimeout";
      break;
    case 350004:
      result = @"DAErrorCodeInternal";
      break;
    case 350005:
      result = @"DAErrorCodeMissingEntitlement";
      break;
    case 350006:
      result = @"DAErrorCodePermission";
      break;
    case 350007:
      result = @"DAErrorCodeFileError";
      break;
    case 350008:
      result = @"DAErrorCodeBluetoothError";
      break;
    case 350009:
      result = @"DAErrorCodeInvalidBluetoothDevice";
      break;
    case 350010:
      result = @"DAErrorCodeBluetoothPairingFailed";
      break;
    case 350011:
      result = @"DAErrorCodePersistBTDeviceInvalidAction";
      break;
    case 350012:
      result = @"DAErrorCodeBTDisconnected";
      break;
    case 350013:
      result = @"DAErrorCodeBTConnectError";
      break;
    case 350014:
      result = @"DAErrorCodeBTTaskCancelled";
      break;
    case 350015:
      result = @"DAErrorCodeBTScanLost";
      break;
    case 350016:
      result = @"DAErrorCodeBTReset";
      break;
    default:
      if (a1)
      {
        result = @"?";
      }

      else
      {
        result = @"DAErrorCodeSuccess";
      }

      break;
  }

  return result;
}

id DAErrorF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v10 arguments:&a9];
  v12 = objc_alloc(MEMORY[0x277CCA9B8]);
  v17 = @"cuErrorMsg";
  v18[0] = v11;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v14 = [v12 initWithDomain:@"DAErrorDomain" code:a1 userInfo:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

id DANestedErrorF(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28[2] = *MEMORY[0x277D85DE8];
  v11 = a1;
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3];
  v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v12 arguments:&a9];
  v14 = v11;
  v15 = objc_alloc(MEMORY[0x277CCA9B8]);
  if (v14)
  {
    v16 = *MEMORY[0x277CCA7E8];
    v27[0] = @"cuErrorMsg";
    v27[1] = v16;
    v28[0] = v13;
    v28[1] = v14;
    v17 = MEMORY[0x277CBEAC0];
    v18 = v28;
    v19 = v27;
    v20 = 2;
  }

  else
  {
    v25 = @"cuErrorMsg";
    v26 = v13;
    v17 = MEMORY[0x277CBEAC0];
    v18 = &v26;
    v19 = &v25;
    v20 = 1;
  }

  v21 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:v20];
  v22 = [v15 initWithDomain:@"DAErrorDomain" code:a2 userInfo:v21];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

__CFString *DAEventTypeToString(uint64_t a1)
{
  if (a1 <= 31)
  {
    if (a1 > 16)
    {
      if (a1 <= 29)
      {
        if (a1 == 17)
        {
          return @"AccessorySetupUpgradeFailed";
        }

        if (a1 == 20)
        {
          return @"Invalidated";
        }

        return @"?";
      }

      if (a1 == 30)
      {
        return @"SessionStarted";
      }

      else
      {
        return @"SessionEnded";
      }
    }

    else
    {
      if (a1 <= 14)
      {
        if (!a1)
        {
          return @"Unknown";
        }

        if (a1 == 10)
        {
          return @"Activated";
        }

        return @"?";
      }

      if (a1 == 15)
      {
        return @"AccessorySetupMigrated";
      }

      else
      {
        return @"AccessorySetupUpgraded";
      }
    }
  }

  else
  {
    if (a1 > 41)
    {
      if (a1 <= 54)
      {
        if (a1 == 42)
        {
          return @"DeviceChanged";
        }

        if (a1 == 50)
        {
          return @"DevicesPresentChanged";
        }
      }

      else
      {
        switch(a1)
        {
          case '7':
            return @"DAEventTypeBluetoothPairingRequest";
          case '8':
            return @"DAEventTypeWiFiAwarePairingRequest";
          case '<':
            return @"XPCInterrupted";
        }
      }

      return @"?";
    }

    if (a1 <= 39)
    {
      if (a1 == 32)
      {
        return @"SessionError";
      }

      if (a1 == 35)
      {
        return @"ConnectionStatus";
      }

      return @"?";
    }

    if (a1 == 40)
    {
      return @"DeviceFound";
    }

    else
    {
      return @"DeviceLost";
    }
  }
}

id OUTLINED_FUNCTION_1_1(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{

  return objc_msgSendSuper2(&a9, a2, v9, v10);
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t a1)
{

  return [v1 failWithError:a1];
}

id OUTLINED_FUNCTION_4_0(uint64_t a1, uint64_t a2, void *a3)
{

  return a3;
}

void sub_2488D83F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  (*(v9 + 16))(v9);
  _Block_object_dispose((v10 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2488D9900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2488D9DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2488DA2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2488DB340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class initCBDiscovery()
{
  if (CoreBluetoothLibrary_sOnce != -1)
  {
    initCBDiscovery_cold_1();
  }

  result = objc_getClass("CBDiscovery");
  classCBDiscovery = result;
  getCBDiscoveryClass = CBDiscoveryFunction;
  return result;
}

void *__CoreBluetoothLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/CoreBluetooth.framework/CoreBluetooth", 2);
  CoreBluetoothLibrary_sLib = result;
  return result;
}

uint64_t DADevice.networkEndpoint.getter@<X0>(uint64_t a1@<X8>)
{
  if ([v1 networkEndpoint])
  {

    return sub_2488E7BE4();
  }

  else
  {
    v4 = sub_2488E7BD4();
    v5 = *(*(v4 - 8) + 56);

    return v5(a1, 1, 1, v4);
  }
}

uint64_t sub_2488DF45C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  if ([*a1 networkEndpoint])
  {

    return sub_2488E7BE4();
  }

  else
  {
    v4 = sub_2488E7BD4();
    v5 = *(*(v4 - 8) + 56);

    return v5(a2, 1, 1, v4);
  }
}

uint64_t sub_2488DF500(uint64_t a1, void **a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB3AF0, &qword_2488F0D68) - 8) + 64);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  sub_2488E0018(a1, &v15 - v8, &qword_27EEB3AF0, &qword_2488F0D68);
  v10 = *a2;
  sub_2488E0018(v9, v7, &qword_27EEB3AF0, &qword_2488F0D68);
  v11 = sub_2488E7BD4();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {
    sub_2488E0080(v7, &qword_27EEB3AF0, &qword_2488F0D68);
    v13 = 0;
  }

  else
  {
    v13 = sub_2488E7BC4();
    (*(v12 + 8))(v7, v11);
  }

  [v10 setNetworkEndpoint_];
  swift_unknownObjectRelease();
  return sub_2488E0080(v9, &qword_27EEB3AF0, &qword_2488F0D68);
}

uint64_t DADevice.networkEndpoint.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB3AF0, &qword_2488F0D68);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_2488E0018(a1, &v12 - v6, &qword_27EEB3AF0, &qword_2488F0D68);
  v8 = sub_2488E7BD4();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_2488E0080(v7, &qword_27EEB3AF0, &qword_2488F0D68);
    v10 = 0;
  }

  else
  {
    v10 = sub_2488E7BC4();
    (*(v9 + 8))(v7, v8);
  }

  [v2 setNetworkEndpoint_];
  swift_unknownObjectRelease();
  return sub_2488E0080(a1, &qword_27EEB3AF0, &qword_2488F0D68);
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

void (*DADevice.networkEndpoint.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB3AF0, &qword_2488F0D68) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v5[3] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v5[3] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[4] = v7;
  if ([v1 networkEndpoint])
  {
    sub_2488E7BE4();
  }

  else
  {
    v9 = sub_2488E7BD4();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  }

  return sub_2488DF9DC;
}

void sub_2488DF9DC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (a2)
  {
    v5 = *(v2 + 8);
    v4 = *(v2 + 16);
    sub_2488E0018(v3, v4, &qword_27EEB3AF0, &qword_2488F0D68);
    sub_2488E0018(v4, v5, &qword_27EEB3AF0, &qword_2488F0D68);
    v6 = sub_2488E7BD4();
    v7 = *(v6 - 8);
    v8 = (*(v7 + 48))(v5, 1, v6);
    v9 = *(v2 + 8);
    if (v8 == 1)
    {
      sub_2488E0080(*(v2 + 8), &qword_27EEB3AF0, &qword_2488F0D68);
      v10 = 0;
    }

    else
    {
      v10 = sub_2488E7BC4();
      (*(v7 + 8))(v9, v6);
    }

    v18 = *(v2 + 24);
    v17 = *(v2 + 32);
    v20 = *(v2 + 8);
    v19 = *(v2 + 16);
    [*v2 setNetworkEndpoint_];
    swift_unknownObjectRelease();
    sub_2488E0080(v19, &qword_27EEB3AF0, &qword_2488F0D68);
  }

  else
  {
    v11 = *(v2 + 24);
    sub_2488E0018(v3, v11, &qword_27EEB3AF0, &qword_2488F0D68);
    v12 = sub_2488E7BD4();
    v13 = *(v12 - 8);
    v14 = (*(v13 + 48))(v11, 1, v12);
    v15 = *(v2 + 24);
    if (v14 == 1)
    {
      sub_2488E0080(*(v2 + 24), &qword_27EEB3AF0, &qword_2488F0D68);
      v16 = 0;
    }

    else
    {
      v16 = sub_2488E7BC4();
      (*(v13 + 8))(v15, v12);
    }

    v18 = *(v2 + 24);
    v17 = *(v2 + 32);
    v20 = *(v2 + 8);
    v19 = *(v2 + 16);
    [*v2 setNetworkEndpoint_];
    swift_unknownObjectRelease();
  }

  sub_2488E0080(v17, &qword_27EEB3AF0, &qword_2488F0D68);
  free(v17);
  free(v18);
  free(v19);
  free(v20);

  free(v2);
}

uint64_t DADevice.txtRecord.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 txtRecordData];
  if (v3)
  {
    v4 = v3;
    sub_2488E7B84();

    sub_2488E7C14();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_2488E7C04();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_2488DFD18@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 txtRecordData];
  if (v3)
  {
    v4 = v3;
    sub_2488E7B84();

    sub_2488E7C14();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_2488E7C04();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_2488DFDD8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB3AF8, &qword_2488F0D70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_2488E0018(a1, &v10 - v6, &qword_27EEB3AF8, &qword_2488F0D70);
  v8 = *a2;
  return DADevice.txtRecord.setter(v7);
}

uint64_t DADevice.txtRecord.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB3AF8, &qword_2488F0D70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  sub_2488E0018(a1, &v15 - v6, &qword_27EEB3AF8, &qword_2488F0D70);
  v8 = sub_2488E7C04();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_2488E0080(v7, &qword_27EEB3AF8, &qword_2488F0D70);
    v10 = 0;
  }

  else
  {
    v11 = sub_2488E7BF4();
    v13 = v12;
    (*(v9 + 8))(v7, v8);
    v10 = sub_2488E7B74();
    sub_2488E00E0(v11, v13);
  }

  [v2 setTxtRecordData_];

  return sub_2488E0080(a1, &qword_27EEB3AF8, &qword_2488F0D70);
}

uint64_t sub_2488E0018(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2488E0080(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2488E00E0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void (*DADevice.txtRecord.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB3AF8, &qword_2488F0D70) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v5[3] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v5[3] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[4] = v7;
  v9 = [v1 txtRecordData];
  if (v9)
  {
    v10 = v9;
    sub_2488E7B84();

    sub_2488E7C14();
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = sub_2488E7C04();
  (*(*(v12 - 8) + 56))(v8, v11, 1, v12);
  return sub_2488E02D4;
}

void sub_2488E02D4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (a2)
  {
    v5 = *(v2 + 8);
    v4 = *(v2 + 16);
    sub_2488E0018(v3, v4, &qword_27EEB3AF8, &qword_2488F0D70);
    sub_2488E0018(v4, v5, &qword_27EEB3AF8, &qword_2488F0D70);
    v6 = sub_2488E7C04();
    v7 = *(v6 - 8);
    v8 = (*(v7 + 48))(v5, 1, v6);
    v9 = *(v2 + 8);
    if (v8 == 1)
    {
      sub_2488E0080(*(v2 + 8), &qword_27EEB3AF8, &qword_2488F0D70);
      v10 = 0;
    }

    else
    {
      v17 = sub_2488E7BF4();
      v19 = v18;
      (*(v7 + 8))(v9, v6);
      v10 = sub_2488E7B74();
      sub_2488E00E0(v17, v19);
    }

    v21 = *(v2 + 24);
    v20 = *(v2 + 32);
    v23 = *(v2 + 8);
    v22 = *(v2 + 16);
    [*v2 setTxtRecordData_];

    sub_2488E0080(v22, &qword_27EEB3AF8, &qword_2488F0D70);
  }

  else
  {
    v11 = *(v2 + 24);
    sub_2488E0018(v3, v11, &qword_27EEB3AF8, &qword_2488F0D70);
    v12 = sub_2488E7C04();
    v13 = *(v12 - 8);
    v14 = (*(v13 + 48))(v11, 1, v12);
    v15 = *(v2 + 24);
    if (v14 == 1)
    {
      sub_2488E0080(*(v2 + 24), &qword_27EEB3AF8, &qword_2488F0D70);
      v16 = 0;
    }

    else
    {
      v24 = sub_2488E7BF4();
      v26 = v25;
      (*(v13 + 8))(v15, v12);
      v16 = sub_2488E7B74();
      sub_2488E00E0(v24, v26);
    }

    v21 = *(v2 + 24);
    v20 = *(v2 + 32);
    v23 = *(v2 + 8);
    v22 = *(v2 + 16);
    [*v2 setTxtRecordData_];
  }

  sub_2488E0080(v20, &qword_27EEB3AF8, &qword_2488F0D70);
  free(v20);
  free(v21);
  free(v22);
  free(v23);

  free(v2);
}

uint64_t sub_2488E0588()
{
  v0 = sub_2488E7BB4();
  __swift_allocate_value_buffer(v0, qword_27EEB3B00);
  __swift_project_value_buffer(v0, qword_27EEB3B00);
  return sub_2488E7BA4();
}

id sub_2488E063C(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x277D85000];
  *(v1 + qword_27EEB3BF8) = a1;
  v4 = *((v3 & v2) + 0x50);
  v5 = *((v3 & v2) + 0x58);
  v7.receiver = v1;
  v7.super_class = type metadata accessor for DADiscoveryExtensionConfiguration.ExportedObject();
  return objc_msgSendSuper2(&v7, sel_init);
}

void sub_2488E06E4(void *a1)
{
  v1 = a1;
  sub_2488E06B8();
}

void sub_2488E0758(void *a1)
{
  v1 = a1;
  sub_2488E072C();
}

void sub_2488E07D8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_2488E07AC(v4);
}

void sub_2488E0840(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  sub_2488E17BC();
}

id sub_2488E0880()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for DADiscoveryExtensionConfiguration.ExportedObject();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2488E0910(uint64_t a1)
{
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;
  return MEMORY[0x2821F96F8]();
}

uint64_t sub_2488E091C(uint64_t a1)
{
  v2 = *(v1 + 40);
  *(v1 + 40) = a1;
  return MEMORY[0x2821F96F8]();
}

uint64_t DADiscoveryExtensionConfiguration.__allocating_init(discoveryExtension:)(uint64_t a1)
{
  v2 = swift_allocObject();
  DADiscoveryExtensionConfiguration.init(discoveryExtension:)(a1);
  return v2;
}

uint64_t DADiscoveryExtensionConfiguration.init(discoveryExtension:)(uint64_t a1)
{
  v2 = v1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  if (qword_27EEB3AE8 != -1)
  {
    swift_once();
  }

  v4 = sub_2488E7BB4();
  __swift_project_value_buffer(v4, qword_27EEB3B00);
  v5 = sub_2488E7B94();
  v6 = sub_2488E7C24();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2488BC000, v5, v6, "DA config init", v7, 2u);
    MEMORY[0x24C1DC7D0](v7, -1, -1);
  }

  *(v2 + 16) = -1;
  *(v2 + 24) = a1;
  return v2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2488E0A98(void *a1)
{
  v2 = v1;
  v4 = *v1;
  if (qword_27EEB3AE8 != -1)
  {
    swift_once();
  }

  v5 = sub_2488E7BB4();
  __swift_project_value_buffer(v5, qword_27EEB3B00);
  v6 = a1;
  v7 = sub_2488E7B94();
  v8 = sub_2488E7C44();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = [v6 processIdentifier];

    _os_log_impl(&dword_2488BC000, v7, v8, "XPC connection started: PID %d", v9, 8u);
    MEMORY[0x24C1DC7D0](v9, -1, -1);
  }

  else
  {

    v7 = v6;
  }

  v10 = v1[5];
  if (v10)
  {
    v11 = v6;
    v12 = v10;
    v13 = sub_2488E7B94();
    v14 = sub_2488E7C44();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109376;
      *(v15 + 4) = [v12 processIdentifier];
      *(v15 + 8) = 1024;
      *(v15 + 10) = [v11 processIdentifier];

      _os_log_impl(&dword_2488BC000, v13, v14, "XPC connection replacing: PID %d -> PID %d", v15, 0xEu);
      MEMORY[0x24C1DC7D0](v15, -1, -1);
    }

    else
    {

      v13 = v11;
    }

    [v12 invalidate];
    v16 = *(v2 + 40);
    *(v2 + 40) = 0;
  }

  v17 = *(v2 + 40);
  *(v2 + 40) = v6;
  v18 = v6;

  v19 = objc_opt_self();
  v20 = [v19 interfaceWithProtocol_];
  [v18 setExportedInterface:v20];

  v21 = *(v4 + 80);
  v22 = type metadata accessor for DADiscoveryExtensionConfiguration.ExportedObject();

  v23 = objc_allocWithZone(v22);
  v24 = sub_2488E063C(v2);
  [v18 setExportedObject:v24];

  v25 = swift_allocObject();
  *(v25 + 16) = v2;
  *(v25 + 24) = v18;
  v30[4] = sub_2488E1804;
  v30[5] = v25;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 1107296256;
  v30[2] = sub_2488E0E88;
  v30[3] = &block_descriptor;
  v26 = _Block_copy(v30);
  v27 = v18;

  [v27 setInvalidationHandler:v26];
  _Block_release(v26);
  v28 = [v19 interfaceWithProtocol_];
  [v27 setRemoteObjectInterface:v28];

  [v27 resume];
  return 1;
}

uint64_t sub_2488E0E88(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_2488E0ECC(void *a1)
{
  v2 = v1;
  if (qword_27EEB3AE8 != -1)
  {
    swift_once();
  }

  v4 = sub_2488E7BB4();
  __swift_project_value_buffer(v4, qword_27EEB3B00);
  v5 = a1;
  v6 = sub_2488E7B94();
  v7 = sub_2488E7C44();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = [v5 processIdentifier];

    _os_log_impl(&dword_2488BC000, v6, v7, "XPC connection ended: PID %d", v8, 8u);
    MEMORY[0x24C1DC7D0](v8, -1, -1);
  }

  else
  {

    v6 = v5;
  }

  v9 = v2[4];
  if (v9)
  {
    v10 = v2[3];
    v11 = v9;
    [v10 stopDiscoveryWithSession_];
    [v11 invalidate];

    v9 = v2[4];
  }

  v2[4] = 0;

  v12 = v2[5];
  v2[5] = 0;

  result = v2[2];
  if (result != -1)
  {

    return MEMORY[0x282204FA0]();
  }

  return result;
}

void sub_2488E1070()
{
  if (qword_27EEB3AE8 != -1)
  {
    swift_once();
  }

  v1 = sub_2488E7BB4();
  __swift_project_value_buffer(v1, qword_27EEB3B00);
  v2 = sub_2488E7B94();
  v3 = sub_2488E7C44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2488BC000, v2, v3, "XPC consume sandbox extension token", v4, 2u);
    MEMORY[0x24C1DC7D0](v4, -1, -1);
  }

  v5 = sandbox_extension_consume();
  *(v0 + 16) = v5;
  oslog = sub_2488E7B94();
  if (v5 == -1)
  {
    v6 = sub_2488E7C34();
    if (!os_log_type_enabled(oslog, v6))
    {
      goto LABEL_11;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "XPC consume sandbox token failed";
  }

  else
  {
    v6 = sub_2488E7C44();
    if (!os_log_type_enabled(oslog, v6))
    {
      goto LABEL_11;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "XPC consume sandbox token success";
  }

  _os_log_impl(&dword_2488BC000, oslog, v6, v8, v7, 2u);
  MEMORY[0x24C1DC7D0](v7, -1, -1);
LABEL_11:
}

void sub_2488E1234()
{
  v1 = v0;
  if (qword_27EEB3AE8 != -1)
  {
    swift_once();
  }

  v2 = sub_2488E7BB4();
  __swift_project_value_buffer(v2, qword_27EEB3B00);
  v3 = sub_2488E7B94();
  v4 = sub_2488E7C44();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2488BC000, v3, v4, "XPC start discovery", v5, 2u);
    MEMORY[0x24C1DC7D0](v5, -1, -1);
  }

  [*(v1 + 32) invalidate];
  v6 = [objc_allocWithZone(DADiscoveryExtensionSession) init];
  v7 = *(v1 + 32);
  *(v1 + 32) = v6;
  v8 = v6;

  v10[4] = sub_2488E198C;
  v10[5] = v1;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_2488E15C0;
  v10[3] = &block_descriptor_4;
  v9 = _Block_copy(v10);

  [v8 setEventHandler_];
  _Block_release(v9);
  [*(v1 + 24) startDiscoveryWithSession_];
}

uint64_t sub_2488E1400(void *a1, uint64_t a2)
{
  if (qword_27EEB3AE8 != -1)
  {
    swift_once();
  }

  v4 = sub_2488E7BB4();
  __swift_project_value_buffer(v4, qword_27EEB3B00);
  v5 = a1;
  v6 = sub_2488E7B94();
  v7 = sub_2488E7C44();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_2488BC000, v6, v7, "XPC report event: %@", v8, 0xCu);
    sub_2488E1994(v9);
    MEMORY[0x24C1DC7D0](v9, -1, -1);
    MEMORY[0x24C1DC7D0](v8, -1, -1);
  }

  result = *(a2 + 40);
  if (result)
  {
    v12 = [result remoteObjectProxy];
    sub_2488E7C54();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB3C80, &qword_2488F0EF8);
    result = swift_dynamicCast();
    if (result)
    {
      [v13 reportEvent_];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_2488E15C0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_2488E1628(uint64_t a1)
{
  v2 = v1;
  if (qword_27EEB3AE8 != -1)
  {
    swift_once();
  }

  v4 = sub_2488E7BB4();
  __swift_project_value_buffer(v4, qword_27EEB3B00);
  v5 = sub_2488E7B94();
  v6 = sub_2488E7C44();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2488BC000, v5, v6, "XPC didReceiveDeviceChangedEvent", v7, 2u);
    MEMORY[0x24C1DC7D0](v7, -1, -1);
  }

  v8 = *(v2 + 24);

  return [v8 didReceiveDeviceChangedEvent_];
}

uint64_t DADiscoveryExtensionConfiguration.deinit()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t DADiscoveryExtensionConfiguration.__deallocating_deinit()
{
  DADiscoveryExtensionConfiguration.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_2488E1794(void *a1)
{
  v2 = *v1;
  sub_2488E0A98(a1);
  return 1;
}

uint64_t sub_2488E1804()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_2488E0ECC(v1);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2488E1844(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2488E1994(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB3C88, &qword_2488F0F00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t __DAXPCDecodeNSArrayOfCBUUID_block_invoke_cold_1(uint64_t a1, void *a2)
{
  v4 = *MEMORY[0x277CCA590];
  v7 = *(a1 + 48);
  result = NSErrorF_safe();
  v6 = *(*(a1 + 40) + 8);
  *a2 = *(v6 + 40);
  *(v6 + 40) = result;
  return result;
}

void _resolveSRVCallack(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10, void *a11)
{
  v39[134] = *MEMORY[0x277D85DE8];
  v16 = a11;
  v17 = [v16 endpoint];
  if (gLogCategory_DADeviceResolver <= 30 && (gLogCategory_DADeviceResolver != -1 || _LogCategory_Initialize()))
  {
    v18 = CUPrintErrorCode();
    [v17 identifier];
    v37 = v36 = v18;
    v34 = a3;
    v35 = a2;
    v33 = a5;
    LogPrintF();
  }

  if ((a2 & 2) != 0)
  {
    v19 = [v16 resolver];
    v20 = [v19 resolveOperations];
    [v20 removeObject:v16];

    [v16 invalidate];
    if (!a4 && a8 >= 7)
    {
      v21 = a9 + 6;
      v22 = *(a9 + 6);
      if (!*(a9 + 6))
      {
        v24 = v39;
        v38 = 46;
        goto LABEL_24;
      }

      v23 = 0;
      v24 = &v38;
      v25 = a9 + 6;
      while (1)
      {
        if (v23 + 1 + v22 > 0xFE || v22 > 0x3F)
        {
LABEL_25:
          v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:{&v38, v33, v34, v35, v36, v37}];
          [v17 setBonjourHostname:v30];

          [v19 _startResolvingHostname:&v38 interfaceIndex:a3 endpoint:v17];
          v31 = [v19 coalescer];
          [v31 trigger];

          break;
        }

        v26 = v25 + v22;
        do
        {
          v28 = *++v25;
          v27 = v28;
          if (v28 == 92 || v27 == 46)
          {
            *v24++ = 92;
LABEL_16:
            v29 = v24;
            goto LABEL_17;
          }

          if (v27 > 0x20)
          {
            goto LABEL_16;
          }

          *v24 = 12380;
          v29 = v24 + 3;
          v24[2] = (v27 / 0xA) | 0x30;
          v27 = (v27 % 0xA) | 0x30;
LABEL_17:
          *v29 = v27;
          v24 = v29 + 1;
        }

        while (v25 < v26);
        v29[1] = 0;
        v23 += 1 + *(v21 + v23);
        v24 = v29 + 2;
        v29[1] = 46;
        v25 = v21 + v23;
        v22 = *(v21 + v23);
        if (!*(v21 + v23))
        {
LABEL_24:
          *v24 = 0;
          goto LABEL_25;
        }
      }
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

void _resolveHostnameCallback(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v22 = *MEMORY[0x277D85DE8];
  v11 = a8;
  v12 = [v11 endpoint];
  if (gLogCategory_DADeviceResolver <= 30 && (gLogCategory_DADeviceResolver != -1 || _LogCategory_Initialize()))
  {
    v13 = NSPrintF();
    v14 = CUPrintErrorCode();
    v20 = [v12 identifier];
    LogPrintF();
  }

  if ((a2 & 2) != 0)
  {
    v15 = [v11 resolver];
    v16 = [v15 resolveOperations];
    [v16 removeObject:v11];

    [v11 invalidate];
    if (!a4 && a6)
    {
      v21[0] = 0;
      SockAddrToString();
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:v21];
      [v12 setIpv4String:v17];

      v18 = [v15 coalescer];
      [v18 trigger];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}