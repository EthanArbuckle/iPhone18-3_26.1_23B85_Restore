@interface CopyProperty
@end

@implementation CopyProperty

uint64_t __manager_CopyProperty_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!CFEqual(*(a1 + 32), *MEMORY[0x277CC0C50]))
  {
    if (CFEqual(*(a1 + 32), *MEMORY[0x277CC0C60]))
    {
      v4 = 2;
    }

    else
    {
      if (CFEqual(*(a1 + 32), *MEMORY[0x277CC0C30]))
      {
        result = BluetoothEndpointCollectionCopyAsCFArray(*(*(a1 + 56) + 32), *(a1 + 48));
        goto LABEL_9;
      }

      if (CFEqual(*(a1 + 32), *MEMORY[0x277CC0C40]))
      {
        v6 = BluetoothEndpointManagerLogComponent;
        if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_INFO))
        {
          v7 = *(*(a1 + 56) + 32);
          v8 = v6;
          Count = BluetoothEndpointCollectionGetCount(v7);
          v10 = "endpoints present";
          if (!Count)
          {
            v10 = "no endpoints";
          }

          *v12 = 136446210;
          *&v12[4] = v10;
          _os_log_impl(&dword_241BB7000, v8, OS_LOG_TYPE_INFO, "We have %{public}s", v12, 0xCu);
        }

        v11 = BluetoothEndpointCollectionGetCount(*(*(a1 + 56) + 32));
        v2 = MEMORY[0x277CBED28];
        if (!v11)
        {
          v2 = MEMORY[0x277CBED10];
        }

        goto LABEL_3;
      }

      result = CFEqual(*(a1 + 32), *MEMORY[0x277CC0C58]);
      if (!result)
      {
        goto LABEL_10;
      }

      v4 = 7;
    }

    *v12 = v4;
    result = CFNumberCreate(*(a1 + 48), kCFNumberSInt64Type, v12);
    goto LABEL_9;
  }

  v2 = MEMORY[0x277CC0C70];
LABEL_3:
  result = CFRetain(*v2);
LABEL_9:
  **(a1 + 40) = result;
LABEL_10:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void __endpoint_CopyProperty_block_invoke(void *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v5 = a1[8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(v3, *MEMORY[0x277CC1568]))
  {
    *v5 = *MEMORY[0x277CC1A28];
LABEL_17:
    v13 = BluetoothEndpointManagerLogComponent;
    if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEBUG))
    {
      __endpoint_CopyProperty_block_invoke_cold_1(v3, v5, v13);
    }

    v14 = 0;
    goto LABEL_20;
  }

  if (CFEqual(v3, *MEMORY[0x277CC1368]))
  {
    Copy = *(DerivedStorage + 40);
    if (!Copy)
    {
LABEL_6:
      *v5 = Copy;
      goto LABEL_17;
    }

LABEL_5:
    Copy = CFRetain(Copy);
    goto LABEL_6;
  }

  if (CFEqual(v3, *MEMORY[0x277CC1440]))
  {
    v8 = CFRetain(*(DerivedStorage + 56));
    *v5 = v8;
    v9 = BluetoothEndpointManagerLogComponent;
    if (!os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_INFO))
    {
      goto LABEL_17;
    }

    *buf = 138412290;
    *&buf[4] = v8;
    v10 = "modelID=%@";
LABEL_16:
    _os_log_impl(&dword_241BB7000, v9, OS_LOG_TYPE_INFO, v10, buf, 0xCu);
    goto LABEL_17;
  }

  if (CFEqual(v3, *MEMORY[0x277CC14A0]))
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", *(DerivedStorage + 48)];
    *v5 = v11;
    v9 = BluetoothEndpointManagerLogComponent;
    if (!os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_INFO))
    {
      goto LABEL_17;
    }

    *buf = 138412290;
    *&buf[4] = v11;
    v10 = "pid=%@";
    goto LABEL_16;
  }

  if (CFEqual(v3, *MEMORY[0x277CC1598]))
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", *(DerivedStorage + 50)];
    *v5 = v12;
    v9 = BluetoothEndpointManagerLogComponent;
    if (!os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_INFO))
    {
      goto LABEL_17;
    }

    *buf = 138412290;
    *&buf[4] = v12;
    v10 = "vid=%@";
    goto LABEL_16;
  }

  if (CFEqual(v3, *MEMORY[0x277CC1450]))
  {
    Copy = *(DerivedStorage + 32);
    if (!Copy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (CFEqual(v3, *MEMORY[0x277CC14F8]))
  {
    *buf = 2;
    v16 = buf;
    v17 = v4;
    v18 = kCFNumberSInt64Type;
LABEL_26:
    Copy = CFNumberCreate(v17, v18, v16);
    goto LABEL_6;
  }

  if (CFEqual(v3, *MEMORY[0x277CC14E0]))
  {
    Mutable = CFArrayCreateMutable(v4, 0, MEMORY[0x277CBF128]);
    v20 = 0;
    v21 = DerivedStorage + 16;
    v22 = 1;
    do
    {
      v23 = v22;
      v24 = *(v21 + 8 * v20);
      if (v24)
      {
        CFArrayAppendValue(Mutable, v24);
      }

      v22 = 0;
      v20 = 1;
    }

    while ((v23 & 1) != 0);
    *v5 = Mutable;
    goto LABEL_17;
  }

  if (CFEqual(v3, *MEMORY[0x277CC1370]) || CFEqual(v3, *MEMORY[0x277CC1398]))
  {
    v25 = MEMORY[0x277CBED28];
    v26 = *(DerivedStorage + 64);
    goto LABEL_36;
  }

  if (CFEqual(v3, *MEMORY[0x277CC1280]))
  {
    v27 = *(DerivedStorage + 72);
    if (v27)
    {
      Copy = CFDictionaryCreateCopy(v4, v27);
      goto LABEL_6;
    }

    Copy = CFDictionaryGetEmpty();
    goto LABEL_5;
  }

  if (CFEqual(v3, *MEMORY[0x277CC1380]))
  {
    v25 = MEMORY[0x277CBED28];
    v26 = *(DerivedStorage + 97);
    goto LABEL_36;
  }

  if (CFEqual(v3, *MEMORY[0x277CC1420]))
  {
    v16 = (DerivedStorage + 104);
LABEL_49:
    v17 = v4;
    v18 = kCFNumberIntType;
    goto LABEL_26;
  }

  if (CFEqual(v3, *MEMORY[0x277CC1500]))
  {
    v16 = (DerivedStorage + 100);
    goto LABEL_49;
  }

  if (CFEqual(v3, *MEMORY[0x277CC1528]))
  {
    v25 = MEMORY[0x277CBED28];
    v26 = *(DerivedStorage + 109);
    goto LABEL_36;
  }

  if (CFEqual(v3, *MEMORY[0x277CC1248]))
  {
    v25 = MEMORY[0x277CBED28];
    if (*(DerivedStorage + 110) != 1)
    {
      v25 = MEMORY[0x277CBED10];
    }

    goto LABEL_38;
  }

  if (CFEqual(v3, *MEMORY[0x277CC1358]))
  {
    v16 = (DerivedStorage + 108);
    v17 = v4;
    v18 = kCFNumberCharType;
    goto LABEL_26;
  }

  if (CFEqual(v3, @"SupportsSmartRouting"))
  {
    v25 = MEMORY[0x277CBED28];
    v26 = *(DerivedStorage + 112);
    goto LABEL_36;
  }

  if (CFEqual(v3, @"SmartRoutingEnabled"))
  {
    v25 = MEMORY[0x277CBED28];
    v26 = *(DerivedStorage + 113);
    goto LABEL_36;
  }

  if (CFEqual(v3, @"SupportsConversationDetect"))
  {
    v25 = MEMORY[0x277CBED28];
    v26 = *(DerivedStorage + 115);
    goto LABEL_36;
  }

  if (CFEqual(v3, @"ConversationDetectEnable"))
  {
    v25 = MEMORY[0x277CBED28];
    v26 = *(DerivedStorage + 116);
    goto LABEL_36;
  }

  if (CFEqual(v3, *MEMORY[0x277CC13A8]))
  {
    v25 = MEMORY[0x277CBED28];
    v26 = *(DerivedStorage + 114);
LABEL_36:
    if (!v26)
    {
      v25 = MEMORY[0x277CBED10];
    }

LABEL_38:
    Copy = *v25;
    goto LABEL_5;
  }

  v28 = BluetoothEndpointManagerLogComponent;
  if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEBUG))
  {
    __endpoint_CopyProperty_block_invoke_cold_2(v3, v28);
  }

  v14 = -12787;
LABEL_20:
  *(*(a1[4] + 8) + 24) = v14;
  v15 = *MEMORY[0x277D85DE8];
}

CFTypeRef __audioStream_CopyProperty_block_invoke(uint64_t a1)
{
  if (CFEqual(*(a1 + 40), *MEMORY[0x277CC1900]))
  {
    v2 = MEMORY[0x277CC1960];
LABEL_5:
    v3 = *v2;
LABEL_6:
    result = CFRetain(v3);
    **(a1 + 48) = result;
    return result;
  }

  if (CFEqual(*(a1 + 40), *MEMORY[0x277CC18B0]))
  {
    v2 = MEMORY[0x277CC1930];
    goto LABEL_5;
  }

  result = CFEqual(*(a1 + 40), *MEMORY[0x277CC1878]);
  if (result)
  {
    v3 = *(*(a1 + 56) + 24);
    goto LABEL_6;
  }

  *(*(*(a1 + 32) + 8) + 24) = -12784;
  return result;
}

void __endpoint_CopyProperty_block_invoke_cold_1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  _os_log_debug_impl(&dword_241BB7000, log, OS_LOG_TYPE_DEBUG, "Copy property %@ returns %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __endpoint_CopyProperty_block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_241BB7000, a2, OS_LOG_TYPE_DEBUG, "Copy property %@ not supported", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end