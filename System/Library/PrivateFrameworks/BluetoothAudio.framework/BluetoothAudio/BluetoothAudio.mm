uint64_t manager_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return 4294950584;
  }

  v8 = *(DerivedStorage + 8);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __manager_CopyProperty_block_invoke;
  v10[3] = &__block_descriptor_64_e5_v8__0l;
  v10[4] = a2;
  v10[5] = a4;
  v10[6] = a3;
  v10[7] = DerivedStorage;
  dispatch_sync(v8, v10);
  return 0;
}

uint64_t BluetoothEndpointCollectionGetCount(NSObject **a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = *a1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = __BluetoothEndpointCollectionGetCount_block_invoke;
  v4[3] = &unk_278D10560;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

CFIndex __BluetoothEndpointCollectionGetCount_block_invoke(uint64_t a1)
{
  result = CFArrayGetCount(*(*(a1 + 40) + 32));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void endpoint_setConnected(const void *a1, int a2)
{
  v41 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = BluetoothEndpointManagerLogComponent;
  if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "connected";
    v7 = *(DerivedStorage + 40);
    if (!a2)
    {
      v6 = "disconnected";
    }

    *buf = 138412546;
    v38 = v7;
    v39 = 2080;
    v40 = v6;
    _os_log_impl(&dword_241BB7000, v5, OS_LOG_TYPE_DEFAULT, "Device with address %@ is %s", buf, 0x16u);
  }

  *(DerivedStorage + 64) = a2;
  if (a2)
  {
    v8 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v8, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetValue(Mutable, @"Name", *(DerivedStorage + 32));
    v10 = *(DerivedStorage + 96);
    if (v10)
    {
      v11 = CFGetAllocator(a1);
      v12 = CFStringCreateWithFormat(v11, 0, @"%@-%s", *(DerivedStorage + 40), "tacl");
      CFDictionarySetValue(Mutable, @"DeviceID", v12);
      v13 = CFGetAllocator(a1);
      BluetoothEndpointStreamAudioCreate(v13, Mutable, (DerivedStorage + 16));
      CFRelease(v12);
      v10 = *(DerivedStorage + 96);
    }

    if ((v10 & 2) != 0)
    {
      v14 = CFGetAllocator(a1);
      v15 = CFStringCreateWithFormat(v14, 0, @"%@-%s", *(DerivedStorage + 40), "tsco");
      CFDictionarySetValue(Mutable, @"DeviceID", v15);
      v16 = CFGetAllocator(a1);
      BluetoothEndpointStreamAudioCreate(v16, Mutable, (DerivedStorage + 24));
      CFRelease(v15);
    }

    CFRelease(Mutable);
  }

  else
  {
    v17 = 0;
    v18 = DerivedStorage + 16;
    v19 = 1;
    do
    {
      v20 = v19;
      v21 = *(v18 + 8 * v17);
      if (v21)
      {
        v22 = *(v18 + 8 * v17);
        VTable = CMBaseObjectGetVTable();
        v24 = *(*(VTable + 16) + 32);
        if (v24)
        {
          v25 = *(VTable + 16) + 32;
          v24(v21);
        }

        v26 = *(v18 + 8 * v17);
        if (v26)
        {
          CFRelease(v26);
          *(v18 + 8 * v17) = 0;
        }
      }

      v19 = 0;
      v17 = 1;
    }

    while ((v20 & 1) != 0);
  }

  v28 = *(DerivedStorage + 80);
  v27 = *(DerivedStorage + 88);
  v29 = CFGetAllocator(a1);
  v30 = CFDictionaryCreateMutable(v29, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v31 = *MEMORY[0x277CC0CB0];
  FigCFDictionarySetInt64();
  v32 = *MEMORY[0x277CC0CD0];
  FigCFDictionarySetInt64();
  CFRetain(a1);
  v33 = *DerivedStorage;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __endpoint_setConnected_block_invoke;
  block[3] = &__block_descriptor_49_e5_v8__0l;
  v36 = a2;
  block[4] = a1;
  block[5] = v30;
  dispatch_async(v33, block);
  v34 = *MEMORY[0x277D85DE8];
}

uint64_t BluetoothEndpointUpdateWithDescription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (a1 && a2 && a3)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v7 = *(DerivedStorage + 8);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __BluetoothEndpointUpdateWithDescription_block_invoke;
      v10[3] = &unk_278D103F8;
      v10[4] = &v11;
      v10[5] = a1;
      v10[6] = a2;
      v10[7] = a3;
      dispatch_sync(v7, v10);
      v8 = *(v12 + 6);
    }

    else
    {
      v8 = 4294950575;
      *(v12 + 6) = -16721;
    }
  }

  else
  {
    v8 = 4294950576;
    v14 = -16720;
  }

  _Block_object_dispose(&v11, 8);
  return v8;
}

void sub_241BB8A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void BluetoothEndpoint_Disassociate(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  v3 = *DerivedStorage;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __BluetoothEndpoint_Disassociate_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_async(v3, block);
}

void endpoint_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __endpoint_Finalize_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = DerivedStorage;
  dispatch_sync(v1, block);
  v2 = *(DerivedStorage + 8);
  *(DerivedStorage + 8) = 0;
}

uint64_t endpoint_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = *(CMBaseObjectGetDerivedStorage() + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __endpoint_CopyProperty_block_invoke;
  block[3] = &unk_278D10420;
  block[4] = &v12;
  block[5] = a1;
  block[6] = a2;
  block[7] = a3;
  block[8] = a4;
  dispatch_sync(v8, block);
  v9 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v9;
}

uint64_t endpoint_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = *(CMBaseObjectGetDerivedStorage() + 8);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __endpoint_SetProperty_block_invoke;
  v9[3] = &unk_278D103F8;
  v9[4] = &v10;
  v9[5] = a1;
  v9[6] = a2;
  v9[7] = a3;
  dispatch_sync(v6, v9);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

void sub_241BB8D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void endpoint_SetUserRouted(void *a1, int a2)
{
  v4 = a2 != 0;
  v17 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBE020]);
  [v5 setIdentifier:a1[5]];
  v6 = objc_alloc_init(MEMORY[0x277CBE028]);
  [v6 setDeviceFlagsMask:0x400000];
  [v6 setDeviceFlagsValue:v4 << 22];
  v7 = BluetoothEndpointManagerLogComponent;
  if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = a2;
    _os_log_impl(&dword_241BB7000, v7, OS_LOG_TYPE_DEFAULT, "Set user routed: %d", buf, 8u);
  }

  v8 = objc_alloc_init(MEMORY[0x277CBE010]);
  [v8 setDispatchQueue:*a1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __endpoint_SetUserRouted_block_invoke;
  v11[3] = &unk_278D10470;
  v14 = a2;
  v12 = v8;
  v13 = a1;
  v9 = v8;
  [v9 modifyDevice:v5 settings:v6 completion:v11];

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t endpoint_Activate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = *(DerivedStorage + 8);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __endpoint_Activate_block_invoke;
  v13[3] = &unk_278D104D8;
  v13[4] = &v14;
  v13[5] = DerivedStorage;
  v13[6] = a2;
  v13[7] = a1;
  v13[8] = a4;
  v13[9] = a5;
  dispatch_sync(v10, v13);
  v11 = *(v15 + 6);
  _Block_object_dispose(&v14, 8);
  return v11;
}

void sub_241BB9F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t endpoint_Deactivate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *(DerivedStorage + 8);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __endpoint_Deactivate_block_invoke;
  v10[3] = &__block_descriptor_64_e5_v8__0l;
  v10[4] = DerivedStorage;
  v10[5] = a3;
  v10[6] = a1;
  v10[7] = a4;
  dispatch_sync(v8, v10);
  return 0;
}

void __endpoint_setConnected_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  CMNotificationCenterGetDefaultLocalCenter();
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = *MEMORY[0x277CC0D38];
  }

  else
  {
    v5 = *MEMORY[0x277CC0D50];
    CMNotificationCenterPostNotification();
    CMNotificationCenterGetDefaultLocalCenter();
    v6 = *MEMORY[0x277CC0D40];
    v7 = *(a1 + 32);
  }

  v8 = *(a1 + 40);
  CMNotificationCenterPostNotification();
  v9 = *(a1 + 40);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 32);
  if (v10)
  {

    CFRelease(v10);
  }
}

void OUTLINED_FUNCTION_0(int a1@<W8>, float a2@<S0>)
{
  *(v2 - 128) = a2;
  *(v2 - 124) = a1;
  *(v2 - 120) = 1024;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, OS_LOG_TYPE_DEFAULT, a4, (v5 - 128), 0xEu);
}

void OUTLINED_FUNCTION_4(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v4 - 128) = a2;
  *(v3 + 4) = a1;
  *(v4 - 116) = 2112;
  *(v3 + 14) = v2;
}

void OUTLINED_FUNCTION_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

BOOL OUTLINED_FUNCTION_6()
{
  v2 = *v0;

  return os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
}

BOOL OUTLINED_FUNCTION_9(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

BOOL OUTLINED_FUNCTION_10(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

uint64_t BluetoothEndpointCollectionCreate(const __CFAllocator *a1, __CFArray *a2, __CFArray *a3, __CFArray *a4, CFMutableArrayRef **a5)
{
  v10 = malloc_type_calloc(1uLL, 0x28uLL, 0xA0040B0408BC2uLL);
  if (v10 && (v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM), v12 = dispatch_queue_create("BluetoothEndpointCollectionQueue", v11), (*v10 = v12) != 0) && (Mutable = CFArrayCreateMutable(a1, 0, 0), (v10[4] = Mutable) != 0))
  {
    result = 0;
    v10[1] = a2;
    v10[2] = a3;
    v10[3] = a4;
  }

  else
  {
    BluetoothEndpointCollectionDelete(v10);
    v10 = 0;
    result = 4294954510;
  }

  *a5 = v10;
  return result;
}

void BluetoothEndpointCollectionDelete(CFMutableArrayRef *a1)
{
  if (a1)
  {
    v2 = a1[4];
    v5.length = CFArrayGetCount(v2);
    v5.location = 0;
    CFArrayApplyFunction(v2, v5, collection_deleteApplier, a1);
    CFArrayRemoveAllValues(a1[4]);
    if (*a1)
    {
      dispatch_release(*a1);
      *a1 = 0;
    }

    v3 = a1[4];
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

uint64_t BluetoothEndpointCollectionCopyAsCFArray(NSObject **a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *a1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __BluetoothEndpointCollectionCopyAsCFArray_block_invoke;
  block[3] = &unk_278D10588;
  block[4] = &v6;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v2, block);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __BluetoothEndpointCollectionCopyAsCFArray_block_invoke(uint64_t a1)
{
  Count = CFArrayGetCount(*(*(a1 + 40) + 32));
  *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(*(a1 + 48), Count, MEMORY[0x277CBF128]);
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = Count < 1;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 40) + 32), v4);
      CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), *ValueAtIndex);
      ++v4;
    }

    while (Count != v4);
  }
}

uint64_t BluetoothEndpointCollectionUpdateEndpoint(NSObject **a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  if (a3)
  {
    v3 = *a1;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 0x40000000;
    v6[2] = __BluetoothEndpointCollectionUpdateEndpoint_block_invoke;
    v6[3] = &unk_278D105B0;
    v6[6] = a2;
    v6[7] = a3;
    v6[4] = &v7;
    v6[5] = a1;
    dispatch_sync(v3, v6);
    v4 = *(v8 + 6);
  }

  else
  {
    v4 = 4294950586;
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

void __BluetoothEndpointCollectionUpdateEndpoint_block_invoke(uint64_t a1)
{
  v8 = -1;
  EntryForDescription = collection_findEntryForDescription(*(a1 + 40), *(a1 + 48), &v8);
  if (EntryForDescription)
  {
    BluetoothEndpointUpdateWithDescription(*EntryForDescription, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    cf = 0;
    *(*(*(a1 + 32) + 8) + 24) = BluetoothEndpointCreateWithDescription(*MEMORY[0x277CBECE8], *(a1 + 48), &cf);
    if (!*(*(*(a1 + 32) + 8) + 24))
    {
      v3 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
      if (v3)
      {
        v4 = v3;
        *v3 = CFRetain(cf);
        CFArrayAppendValue(*(*(a1 + 40) + 32), v4);
        v5 = *(a1 + 40);
        v6 = *(v5 + 8);
        if (v6)
        {
          v6(v5, cf, *(v5 + 24));
        }

        **(a1 + 56) = 1;
      }

      else
      {
        *(*(*(a1 + 32) + 8) + 24) = -12786;
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }
  }
}

uint64_t *collection_findEntryForDescription(uint64_t a1, const __CFDictionary *a2, CFIndex *a3)
{
  cf = 0;
  Count = CFArrayGetCount(*(a1 + 32));
  Value = CFDictionaryGetValue(a2, @"DeviceID");
  if (Value)
  {
    v8 = Value;
    if (Count < 1)
    {
      ValueAtIndex = 0;
      v9 = -1;
      if (!a3)
      {
LABEL_16:
        v15 = BluetoothEndpointManagerLogComponent;
        if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEBUG))
        {
          collection_findEntryForDescription_cold_1(ValueAtIndex, v8, v15);
        }

        return ValueAtIndex;
      }
    }

    else
    {
      v9 = 0;
      v10 = *MEMORY[0x277CC1368];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 32), v9);
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        v12 = *ValueAtIndex;
        CMBaseObject = FigEndpointGetCMBaseObject();
        v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v14)
        {
          v14(CMBaseObject, v10, 0, &cf);
        }

        if (cf && CFEqual(v8, cf))
        {
          break;
        }

        if (Count == ++v9)
        {
          ValueAtIndex = 0;
          v9 = -1;
          break;
        }
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (!a3)
      {
        goto LABEL_16;
      }
    }

    *a3 = v9;
    goto LABEL_16;
  }

  v16 = BluetoothEndpointManagerLogComponent;
  if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_ERROR))
  {
    collection_findEntryForDescription_cold_2(v16);
  }

  return 0;
}

uint64_t BluetoothEndpointCollectionMarkEndpointForRemoval(NSObject **a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  if (a3)
  {
    v3 = *a1;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 0x40000000;
    v6[2] = __BluetoothEndpointCollectionMarkEndpointForRemoval_block_invoke;
    v6[3] = &unk_278D105D8;
    v6[4] = &v7;
    v6[5] = a1;
    v6[6] = a2;
    v6[7] = a3;
    dispatch_sync(v3, v6);
    v4 = *(v8 + 6);
  }

  else
  {
    v4 = 4294950586;
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

void __BluetoothEndpointCollectionMarkEndpointForRemoval_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = -1;
  EntryForDescription = collection_findEntryForDescription(*(a1 + 40), *(a1 + 48), &v7);
  if (EntryForDescription)
  {
    v3 = EntryForDescription;
    v4 = BluetoothEndpointManagerLogComponent;
    if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      Value = CFDictionaryGetValue(*(a1 + 48), @"DeviceID");
      *buf = 138412290;
      v9 = Value;
      _os_log_impl(&dword_241BB7000, v4, OS_LOG_TYPE_DEFAULT, "Removing %@", buf, 0xCu);
    }

    collection_removeEntry(*(a1 + 40), v3, v7);
    *(*(*(a1 + 32) + 8) + 24) = 1;
    **(a1 + 56) = 1;
  }

  v6 = *MEMORY[0x277D85DE8];
}

void collection_removeEntry(uint64_t a1, const void **a2, CFIndex a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = BluetoothEndpointManagerLogComponent;
  if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEBUG))
  {
    collection_removeEntry_cold_1(v6);
  }

  v16 = 0;
  v7 = *a2;
  CMBaseObject = FigEndpointGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v10 = *(*(VTable + 8) + 48);
  if (v10)
  {
    v11 = *(VTable + 8) + 48;
    v10(CMBaseObject, *MEMORY[0x277CC1450], 0, &v16);
    v12 = v16;
    if (v16)
    {
      v13 = BluetoothEndpointManagerLogComponent;
      if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v12;
        _os_log_impl(&dword_241BB7000, v13, OS_LOG_TYPE_DEFAULT, "Removing %@", buf, 0xCu);
        v12 = v16;
      }

      CFRelease(v12);
    }
  }

  CFArrayRemoveValueAtIndex(*(a1 + 32), a3);
  v14 = *(a1 + 16);
  if (v14)
  {
    v14(a1, *a2, *(a1 + 24));
  }

  collection_destroyCollectionEntry(a2);
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t BluetoothEndpointCollectionMarkAllEndpointsForRemoval(NSObject **a1)
{
  v1 = *a1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __BluetoothEndpointCollectionMarkAllEndpointsForRemoval_block_invoke;
  block[3] = &__block_descriptor_tmp_5;
  block[4] = a1;
  dispatch_sync(v1, block);
  return 0;
}

void __BluetoothEndpointCollectionMarkAllEndpointsForRemoval_block_invoke(uint64_t a1)
{
  Count = CFArrayGetCount(*(*(a1 + 32) + 32));
  if (Count >= 1)
  {
    v3 = Count + 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 32) + 32), 0);
      collection_removeEntry(*(a1 + 32), ValueAtIndex, 0);
      --v3;
    }

    while (v3 > 1);
  }
}

void collection_destroyCollectionEntry(const void **a1)
{
  v2 = BluetoothEndpointManagerLogComponent;
  if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_241BB7000, v2, OS_LOG_TYPE_INFO, "Destroy Collection entry", v7, 2u);
  }

  BluetoothEndpoint_Disassociate(*a1);
  v3 = *a1;
  VTable = CMBaseObjectGetVTable();
  v5 = *(*(VTable + 16) + 32);
  if (v5)
  {
    v6 = *(VTable + 16) + 32;
    v5(v3);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

uint64_t BluetoothEndpointManagerCreate(const __CFAllocator *a1, void *a2, const __CFDictionary *a3, uint64_t *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = os_log_create("com.apple.bluetooth", "BTFigE");
  v9 = BluetoothEndpointManagerLogComponent;
  BluetoothEndpointManagerLogComponent = v8;

  if (a4)
  {
    if (staticManager)
    {
      v10 = BluetoothEndpointManagerLogComponent;
      if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v28 = staticManager;
        _os_log_impl(&dword_241BB7000, v10, OS_LOG_TYPE_DEFAULT, "BluetoothEndpointManager %p already exists!", buf, 0xCu);
      }

      v11 = 0;
      v12 = staticManager;
LABEL_6:
      *a4 = v12;
      goto LABEL_15;
    }

    if (!v7)
    {
      v7 = MEMORY[0x277D85CD0];
      v13 = MEMORY[0x277D85CD0];
    }

    FigEndpointManagerGetClassID();
    v14 = CMDerivedObjectCreate();
    if (v14)
    {
      goto LABEL_12;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v16 = dispatch_queue_create("BluetoothEndpointManager", 0);
    v17 = *(DerivedStorage + 8);
    *(DerivedStorage + 8) = v16;

    if (*(DerivedStorage + 8))
    {
      objc_storeStrong((DerivedStorage + 16), v7);
      *(DerivedStorage + 24) = CFRetain(*MEMORY[0x277CC0C08]);
      v14 = BluetoothEndpointCollectionCreate(a1, manager_endpointAddedCallback, manager_endpointRemovedCallback, 0, (DerivedStorage + 32));
      if (!v14)
      {
        v21 = +[BluetoothBridge sharedBluetoothBridge];
        v22 = *(DerivedStorage + 40);
        *(DerivedStorage + 40) = v21;

        [*(DerivedStorage + 40) setManager:0];
        if (!a3 || !CFDictionaryGetValue(a3, @"TargetUserSession") || (Value = CFDictionaryGetValue(a3, @"TargetUserSession"), CFBooleanGetValue(Value)))
        {
          [*(DerivedStorage + 40) setTargetUserSession:1];
        }

        v24 = BluetoothEndpointManagerLogComponent;
        if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
        {
          v25 = *(DerivedStorage + 40);
          v26 = v24;
          *buf = 134218240;
          v28 = 0;
          v29 = 1024;
          v30 = [v25 targetUserSession];
          _os_log_impl(&dword_241BB7000, v26, OS_LOG_TYPE_DEFAULT, "Created BluetoothEndpointManager %p with TargetUserSession: %d", buf, 0x12u);
        }

        v11 = 0;
        v12 = 0;
        staticManager = 0;
        goto LABEL_6;
      }

LABEL_12:
      v11 = v14;
      goto LABEL_13;
    }

    v11 = 4294950585;
  }

  else
  {
    v11 = 4294950586;
  }

LABEL_13:
  v18 = BluetoothEndpointManagerLogComponent;
  if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_ERROR))
  {
    BluetoothEndpointManagerCreate_cold_1(v11, v18);
  }

LABEL_15:

  v19 = *MEMORY[0x277D85DE8];
  return v11;
}

void manager_endpointAddedCallback(uint64_t a1, uint64_t a2, const void *a3)
{
  cf = 0;
  CMNotificationCenterGetDefaultLocalCenter();
  v4 = *MEMORY[0x277CC0D48];
  CMNotificationCenterAddListener();
  v5 = CFGetAllocator(a3);
  CMBaseObject = FigEndpointGetCMBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v7(CMBaseObject, *MEMORY[0x277CC1370], v5, &cf);
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

void manager_endpointRemovedCallback(int a1, int a2, CFTypeRef cf)
{
  cfa = 0;
  v3 = CFGetAllocator(cf);
  CMBaseObject = FigEndpointGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v6 = *(*(VTable + 8) + 48);
  if (v6)
  {
    v7 = *(VTable + 8) + 48;
    v6(CMBaseObject, *MEMORY[0x277CC1370], v3, &cfa);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v8 = *MEMORY[0x277CC0D48];
  CMNotificationCenterRemoveListener();
  if (cfa)
  {
    CFRelease(cfa);
  }
}

void BluetoothEndpointManagerHandleUpdateEvent(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __BluetoothEndpointManagerHandleUpdateEvent_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = DerivedStorage;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v5, block);
}

void __BluetoothEndpointManagerHandleUpdateEvent_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0;
  updated = BluetoothEndpointCollectionUpdateEndpoint(*(*(a1 + 32) + 32), *(a1 + 40), &v7);
  if (v7 == 1)
  {
    v3 = updated;
    v4 = BluetoothEndpointManagerLogComponent;
    if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      *buf = 138412546;
      v9 = v5;
      v10 = 1024;
      v11 = v3;
      _os_log_impl(&dword_241BB7000, v4, OS_LOG_TYPE_DEFAULT, "Update %@ err:%d", buf, 0x12u);
    }

    if (!v3)
    {
      manager_postEndpointsChangedNotification(*(a1 + 48));
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void manager_postEndpointsChangedNotification(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  v3 = *(DerivedStorage + 16);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __manager_postEndpointsChangedNotification_block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = DerivedStorage;
  v4[5] = a1;
  dispatch_async(v3, v4);
}

void BluetoothEndpointManagerHandleRemove(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __BluetoothEndpointManagerHandleRemove_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = DerivedStorage;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v5, block);
}

void __BluetoothEndpointManagerHandleRemove_block_invoke(uint64_t a1)
{
  v2 = 0;
  BluetoothEndpointCollectionMarkEndpointForRemoval(*(*(a1 + 32) + 32), *(a1 + 40), &v2);
  if (v2 == 1)
  {
    manager_postEndpointsChangedNotification(*(a1 + 48));
  }
}

void BluetoothEndpointManagerHandleRemoveAllEvent(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = BluetoothEndpointManagerLogComponent;
  if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241BB7000, v3, OS_LOG_TYPE_DEFAULT, "Handle Remove All Event", buf, 2u);
  }

  v4 = *(DerivedStorage + 8);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __BluetoothEndpointManagerHandleRemoveAllEvent_block_invoke;
  v5[3] = &__block_descriptor_48_e5_v8__0l;
  v5[4] = DerivedStorage;
  v5[5] = a1;
  dispatch_sync(v4, v5);
}

void __BluetoothEndpointManagerHandleRemoveAllEvent_block_invoke(uint64_t a1)
{
  BluetoothEndpointCollectionMarkAllEndpointsForRemoval(*(*(a1 + 32) + 32));
  v2 = *(a1 + 40);

  manager_postEndpointsChangedNotification(v2);
}

uint64_t manager_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __manager_Invalidate_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = DerivedStorage;
  dispatch_sync(v1, block);
  return 0;
}

void manager_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage[2];
  DerivedStorage[2] = 0;

  manager_Invalidate();
  v2 = DerivedStorage[5];
  DerivedStorage[5] = 0;

  v3 = DerivedStorage[3];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[3] = 0;
  }

  v4 = DerivedStorage[1];
  DerivedStorage[1] = 0;
}

uint64_t manager_SetProperty()
{
  if (*CMBaseObjectGetDerivedStorage())
  {
    return 4294950584;
  }

  else
  {
    return 0;
  }
}

uint64_t manager_SetDiscoveryMode(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __manager_SetDiscoveryMode_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = a2;
  block[5] = a1;
  block[6] = DerivedStorage;
  dispatch_sync(v5, block);
  return 0;
}

void __manager_postEndpointsChangedNotification_block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (manager_postEndpointsChangedNotification_previousEndpointsPresent)
  {
LABEL_2:
    if (BluetoothEndpointCollectionGetCount(*(*(a1 + 32) + 32)))
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  if (!BluetoothEndpointCollectionGetCount(*(*(a1 + 32) + 32)))
  {
    if ((manager_postEndpointsChangedNotification_previousEndpointsPresent & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_2;
  }

LABEL_5:
  v2 = BluetoothEndpointManagerLogComponent;
  if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 32);
    v4 = v2;
    v14 = 67109120;
    Count = BluetoothEndpointCollectionGetCount(v3);
    _os_log_impl(&dword_241BB7000, v4, OS_LOG_TYPE_DEFAULT, "Posting Endpoints Present Changed Notification #endpoints:%d", &v14, 8u);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v5 = *MEMORY[0x277CC0C28];
  v6 = *(a1 + 40);
  CMNotificationCenterPostNotification();
  manager_postEndpointsChangedNotification_previousEndpointsPresent ^= 1u;
LABEL_8:
  v7 = BluetoothEndpointManagerLogComponent;
  if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(a1 + 32) + 32);
    v9 = v7;
    v10 = BluetoothEndpointCollectionGetCount(v8);
    v14 = 67109120;
    Count = v10;
    _os_log_impl(&dword_241BB7000, v9, OS_LOG_TYPE_DEFAULT, "Posting Available Endpoints Changed Notification #endpoints:%d", &v14, 8u);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v11 = *MEMORY[0x277CC0C20];
  v12 = *(a1 + 40);
  CMNotificationCenterPostNotification();
  CFRelease(*(a1 + 40));
  v13 = *MEMORY[0x277D85DE8];
}

void manager_handleEndpointDescriptionChanged(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a2);
  v4 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __manager_handleEndpointDescriptionChanged_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  dispatch_async(v4, block);
}

void __manager_handleEndpointDescriptionChanged_block_invoke(uint64_t a1)
{
  manager_postEndpointsChangedNotification(*(a1 + 32));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void audioStream_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __audioStream_Finalize_block_invoke;
  block[3] = &__block_descriptor_tmp_0;
  block[4] = DerivedStorage;
  dispatch_sync(v1, block);
  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    dispatch_release(v2);
    *(DerivedStorage + 8) = 0;
  }
}

CFMutableStringRef audioStream_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v4 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __audioStream_CopyDebugDescription_block_invoke;
  block[3] = &__block_descriptor_tmp_4_0;
  block[4] = Mutable;
  block[5] = a1;
  block[6] = DerivedStorage;
  dispatch_sync(v4, block);
  return Mutable;
}

uint64_t audioStream_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    v7 = *(DerivedStorage + 8);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 0x40000000;
    v10[2] = __audioStream_CopyProperty_block_invoke;
    v10[3] = &unk_278D107D0;
    v10[6] = a4;
    v10[7] = DerivedStorage;
    v10[4] = &v11;
    v10[5] = a2;
    dispatch_sync(v7, v10);
    v8 = *(v12 + 6);
  }

  else
  {
    v8 = 4294950536;
    *(v12 + 6) = -16760;
  }

  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t BluetoothEndpointCreateWithDescription(const __CFAllocator *a1, const __CFDictionary *a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = 4294950576;
  if (a2 && a3)
  {
    v7 = BluetoothEndpointManagerLogComponent;
    if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v45 = a2;
      _os_log_impl(&dword_241BB7000, v7, OS_LOG_TYPE_DEFAULT, "BluetoothEndpointCreateWithDescription %@", buf, 0xCu);
    }

    FigEndpointGetClassID();
    v3 = CMDerivedObjectCreate();
    if (!v3)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (!DerivedStorage)
      {
        v3 = 4294950575;
        goto LABEL_31;
      }

      v9 = DerivedStorage;
      v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v11 = dispatch_queue_create("BluetoothEndpointQueue", v10);
      v12 = *(v9 + 8);
      *(v9 + 8) = v11;

      if (*(v9 + 8))
      {
        Value = CFDictionaryGetValue(a2, @"Name");
        *(v9 + 32) = Value;
        if (!Value)
        {
          goto LABEL_32;
        }

        CFRetain(Value);
        v14 = CFDictionaryGetValue(a2, @"DeviceID");
        *(v9 + 40) = v14;
        if (!v14)
        {
          goto LABEL_32;
        }

        CFRetain(v14);
        v15 = CFDictionaryGetValue(a2, *MEMORY[0x277CC14A0]);
        if (!CFNumberGetValue(v15, kCFNumberShortType, (v9 + 48)))
        {
          goto LABEL_32;
        }

        v16 = CFDictionaryGetValue(a2, *MEMORY[0x277CC1598]);
        if (!CFNumberGetValue(v16, kCFNumberShortType, (v9 + 50)))
        {
          goto LABEL_32;
        }

        v17 = CFDictionaryGetValue(a2, @"ModelID");
        *(v9 + 56) = v17;
        if (!v17)
        {
          goto LABEL_32;
        }

        CFRetain(v17);
        if (CFDictionaryGetValue(a2, @"Shareable"))
        {
          v18 = CFDictionaryGetValue(a2, @"Shareable");
          *(v9 + 97) = CFBooleanGetValue(v18);
        }

        v19 = CFDictionaryGetValue(a2, @"SupportedFormats");
        if (!CFNumberGetValue(v19, kCFNumberCharType, (v9 + 96)))
        {
          goto LABEL_32;
        }

        v20 = CFDictionaryGetValue(a2, @"ListeningMode");
        if (!CFNumberGetValue(v20, kCFNumberIntType, (v9 + 104)))
        {
          goto LABEL_32;
        }

        v21 = CFDictionaryGetValue(a2, @"SupportedListeningModes");
        if (!CFNumberGetValue(v21, kCFNumberIntType, (v9 + 100)))
        {
          goto LABEL_32;
        }

        v22 = CFDictionaryGetValue(a2, @"SupportsSpatialAudio");
        if (!v22)
        {
          goto LABEL_32;
        }

        *(v9 + 109) = CFBooleanGetValue(v22);
        v23 = CFDictionaryGetValue(a2, @"SpatialAudioEnabled");
        if (!v23)
        {
          goto LABEL_32;
        }

        *(v9 + 110) = CFBooleanGetValue(v23);
        v24 = CFDictionaryGetValue(a2, @"SpatialAudioMode");
        if (!CFNumberGetValue(v24, kCFNumberCharType, (v9 + 108)))
        {
          goto LABEL_32;
        }

        v25 = CFDictionaryGetValue(a2, @"SupportsSmartRouting");
        if (!v25)
        {
          goto LABEL_32;
        }

        *(v9 + 112) = CFBooleanGetValue(v25);
        v26 = CFDictionaryGetValue(a2, @"SmartRoutingEnabled");
        if (!v26 || (*(v9 + 113) = CFBooleanGetValue(v26), (v27 = CFDictionaryGetValue(a2, @"SupportsConversationDetect")) == 0) || (*(v9 + 115) = CFBooleanGetValue(v27), (v28 = CFDictionaryGetValue(a2, @"ConversationDetectEnable")) == 0) || (*(v9 + 116) = CFBooleanGetValue(v28), (v29 = CFDictionaryGetValue(a2, @"IsGenuineAirPods")) == 0))
        {
LABEL_32:
          v3 = 4294950576;
LABEL_33:
          v39 = *(v9 + 32);
          if (v39)
          {
            CFRelease(v39);
          }

          v40 = *(v9 + 40);
          if (v40)
          {
            CFRelease(v40);
          }

          v41 = *(v9 + 56);
          if (v41)
          {
            CFRelease(v41);
          }

          v42 = *(v9 + 72);
          if (v42)
          {
            CFRelease(v42);
          }

          v43 = *v9;
          *v9 = 0;

          goto LABEL_31;
        }

        *(v9 + 114) = CFBooleanGetValue(v29);
        v30 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v31 = dispatch_queue_create("BluetoothEndpointNotification", v30);
        v32 = *v9;
        *v9 = v31;

        if (*v9)
        {
          v33 = CFDictionaryGetValue(a2, @"Connected");
          v34 = CFBooleanGetValue(v33);
          endpoint_setConnected(0, v34);
          if (CFDictionaryContainsKey(a2, @"BatteryLevels"))
          {
            v35 = CFDictionaryGetValue(a2, @"BatteryLevels");
            Copy = CFDictionaryCreateCopy(a1, v35);
          }

          else
          {
            Copy = CFDictionaryCreate(a1, 0, 0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          }

          v3 = 0;
          *(v9 + 72) = Copy;
          *a3 = 0;
          goto LABEL_31;
        }
      }

      v3 = 4294950575;
      goto LABEL_33;
    }
  }

LABEL_31:
  v37 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t _BluetoothEndpointUpdateWithDescription(const void *a1, const __CFDictionary *a2, _BYTE *a3)
{
  v119 = *MEMORY[0x277D85DE8];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(a2, @"Name");
  if (!Value)
  {
    result = 4294950576;
    goto LABEL_94;
  }

  v9 = Value;
  v10 = &loc_241BC0000;
  if (!CFEqual(*(DerivedStorage + 32), Value))
  {
    CFAutorelease(*(DerivedStorage + 32));
    if (OUTLINED_FUNCTION_10(BluetoothEndpointManagerLogComponent))
    {
      OUTLINED_FUNCTION_4(*(DerivedStorage + 32), 5.778e-34);
      OUTLINED_FUNCTION_3();
      _os_log_impl(v11, v12, v13, v14, v15, 0x16u);
    }

    *(DerivedStorage + 32) = v9;
    CFRetain(v9);
    OUTLINED_FUNCTION_2();
  }

  v16 = CFDictionaryGetValue(a2, @"DeviceID");
  if (!CFEqual(*(DerivedStorage + 40), v16))
  {
    CFAutorelease(*(DerivedStorage + 40));
    if (OUTLINED_FUNCTION_10(BluetoothEndpointManagerLogComponent))
    {
      OUTLINED_FUNCTION_4(*(DerivedStorage + 40), 5.778e-34);
      OUTLINED_FUNCTION_3();
      _os_log_impl(v17, v18, v19, v20, v21, 0x16u);
    }

    *(DerivedStorage + 40) = v16;
    CFRetain(v16);
    OUTLINED_FUNCTION_2();
  }

  v22 = CFDictionaryGetValue(a2, *MEMORY[0x277CC14A0]);
  valuePtr = 0;
  if (CFNumberGetValue(v22, kCFNumberShortType, &valuePtr) && *(DerivedStorage + 48) != valuePtr)
  {
    if (OUTLINED_FUNCTION_6())
    {
      OUTLINED_FUNCTION_0(*(DerivedStorage + 48), 1.5047e-36);
      *&v117[6] = v23;
      OUTLINED_FUNCTION_1(&dword_241BB7000, v24, v25, "ProductID 0x%04X->0x%04X");
    }

    *(DerivedStorage + 48) = valuePtr;
    OUTLINED_FUNCTION_2();
  }

  v26 = CFDictionaryGetValue(a2, *MEMORY[0x277CC1598]);
  v113 = 0;
  if (CFNumberGetValue(v26, kCFNumberShortType, &v113) && *(DerivedStorage + 50) != v113)
  {
    if (OUTLINED_FUNCTION_6())
    {
      OUTLINED_FUNCTION_0(*(DerivedStorage + 50), 1.5047e-36);
      *&v117[6] = v27;
      OUTLINED_FUNCTION_1(&dword_241BB7000, v28, v29, "VendorID 0x%04X->0x%04X");
    }

    *(DerivedStorage + 50) = v113;
    OUTLINED_FUNCTION_2();
  }

  v30 = CFDictionaryGetValue(a2, @"ModelID");
  if (!CFEqual(*(DerivedStorage + 56), v30))
  {
    CFAutorelease(*(DerivedStorage + 56));
    if (OUTLINED_FUNCTION_10(BluetoothEndpointManagerLogComponent))
    {
      OUTLINED_FUNCTION_4(*(DerivedStorage + 56), 5.778e-34);
      OUTLINED_FUNCTION_3();
      _os_log_impl(v31, v32, v33, v34, v35, 0x16u);
    }

    *(DerivedStorage + 56) = v30;
    CFRetain(v30);
    OUTLINED_FUNCTION_2();
  }

  v36 = CFDictionaryGetValue(a2, @"SupportedListeningModes");
  v112 = 0;
  if (CFNumberGetValue(v36, kCFNumberIntType, &v112) && *(DerivedStorage + 100) != v112)
  {
    if (OUTLINED_FUNCTION_6())
    {
      OUTLINED_FUNCTION_0(*(DerivedStorage + 100), 1.5047e-36);
      *&v117[6] = v37;
      OUTLINED_FUNCTION_1(&dword_241BB7000, v38, v39, "Supported Listening Modes %d->%d");
    }

    *(DerivedStorage + 100) = v112;
    OUTLINED_FUNCTION_2();
  }

  v40 = CFDictionaryGetValue(a2, @"Connected");
  v41 = CFBooleanGetValue(v40);
  if (v41 != *(DerivedStorage + 64))
  {
    v30 = v41;
    if (OUTLINED_FUNCTION_10(BluetoothEndpointManagerLogComponent))
    {
      OUTLINED_FUNCTION_0(*(DerivedStorage + 64), 1.5047e-36);
      *&v117[6] = v30;
      OUTLINED_FUNCTION_3();
      _os_log_impl(v42, v43, v44, v45, v46, 0xEu);
    }

    endpoint_setConnected(a1, v30);
    OUTLINED_FUNCTION_2();
  }

  v47 = CFDictionaryGetValue(a2, @"BatteryLevels");
  if (v47)
  {
    v48 = v47;
    v102 = a2;
    v103 = a3;
    cf = a1;
    v30 = *(DerivedStorage + 72);
    v49 = v48;
    v50 = [v30 allKeys];
    v51 = [v49 allKeys];
    v52 = [v50 arrayByAddingObjectsFromArray:v51];

    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v53 = v52;
    v54 = [v53 countByEnumeratingWithState:&v108 objects:v115 count:16];
    if (v54)
    {
      v55 = v54;
      v56 = *v109;
      while (2)
      {
        for (i = 0; i != v55; ++i)
        {
          if (*v109 != v56)
          {
            objc_enumerationMutation(v53);
          }

          v58 = *(*(&v108 + 1) + 8 * i);
          v59 = [v30 objectForKeyedSubscript:v58];
          v60 = [v49 objectForKeyedSubscript:v58];
          LODWORD(v10) = [v59 isEqual:v60];

          if ((v10 & 1) == 0)
          {
            CFAutorelease(*(DerivedStorage + 72));
            v61 = BluetoothEndpointManagerLogComponent;
            if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
            {
              v62 = *(DerivedStorage + 72);
              *buf = 138412546;
              *v117 = v62;
              *&v117[8] = 2112;
              v118 = v49;
              _os_log_impl(&dword_241BB7000, v61, OS_LOG_TYPE_DEFAULT, "Battery Levels %@->%@", buf, 0x16u);
            }

            v63 = CFGetAllocator(cf);
            *(DerivedStorage + 72) = CFDictionaryCreateCopy(v63, v49);
            *v103 = 1;
            goto LABEL_46;
          }
        }

        v55 = [v53 countByEnumeratingWithState:&v108 objects:v115 count:16];
        if (v55)
        {
          continue;
        }

        break;
      }
    }

LABEL_46:

    a3 = v103;
    a1 = cf;
    a2 = v102;
  }

  if (CFDictionaryContainsKey(a2, @"Shareable"))
  {
    v64 = CFDictionaryGetValue(a2, @"Shareable");
    v65 = CFBooleanGetValue(v64);
    if (*(DerivedStorage + 97) != v65)
    {
      v30 = v65;
      if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_0(*(DerivedStorage + 97), 1.5047e-36);
        *&v117[6] = v30;
        OUTLINED_FUNCTION_3();
        _os_log_impl(v66, v67, v68, v69, v70, 0xEu);
      }

      *(DerivedStorage + 97) = v30;
      OUTLINED_FUNCTION_2();
    }
  }

  v107 = 0;
  v71 = CFDictionaryGetValue(a2, @"ListeningMode");
  if (CFNumberGetValue(v71, kCFNumberIntType, &v107) && v107 != *(DerivedStorage + 104))
  {
    if (OUTLINED_FUNCTION_6())
    {
      OUTLINED_FUNCTION_0(*(DerivedStorage + 104), 1.5047e-36);
      *&v117[6] = v72;
      OUTLINED_FUNCTION_1(&dword_241BB7000, v73, v74, "Listening mode %d->%d");
    }

    *(DerivedStorage + 104) = v107;
    OUTLINED_FUNCTION_2();
  }

  v75 = CFDictionaryGetValue(a2, @"SupportsSpatialAudio");
  CFBooleanGetValue(v75);
  OUTLINED_FUNCTION_7();
  if (*(DerivedStorage + 109) != v10)
  {
    if (OUTLINED_FUNCTION_9(BluetoothEndpointManagerLogComponent))
    {
      OUTLINED_FUNCTION_0(*(DerivedStorage + 109), 1.5047e-36);
      *&v117[6] = v10;
      OUTLINED_FUNCTION_1(&dword_241BB7000, v76, v77, "Spatial audio Support : %d->%d");
    }

    *(DerivedStorage + 109) = v10;
    OUTLINED_FUNCTION_2();
  }

  v78 = CFDictionaryGetValue(a2, @"SpatialAudioEnabled");
  CFBooleanGetValue(v78);
  OUTLINED_FUNCTION_7();
  if (*(DerivedStorage + 110) != v10)
  {
    if (OUTLINED_FUNCTION_9(BluetoothEndpointManagerLogComponent))
    {
      OUTLINED_FUNCTION_0(*(DerivedStorage + 110), 1.5047e-36);
      *&v117[6] = v10;
      OUTLINED_FUNCTION_1(&dword_241BB7000, v79, v80, "Spatial audio Allowed : %d->%d");
    }

    *(DerivedStorage + 110) = v10;
    OUTLINED_FUNCTION_2();
  }

  v106 = 0;
  v81 = CFDictionaryGetValue(a2, @"SpatialAudioMode");
  if (CFNumberGetValue(v81, kCFNumberCharType, &v106) && v106 != *(DerivedStorage + 108))
  {
    if (OUTLINED_FUNCTION_6())
    {
      OUTLINED_FUNCTION_0(*(DerivedStorage + 108), 1.5047e-36);
      *&v117[6] = v82;
      OUTLINED_FUNCTION_1(&dword_241BB7000, v83, v84, "Spatial Audio mode %d->%d");
    }

    *(DerivedStorage + 108) = v106;
    OUTLINED_FUNCTION_2();
  }

  v85 = CFDictionaryGetValue(a2, @"SupportsSmartRouting");
  CFBooleanGetValue(v85);
  OUTLINED_FUNCTION_7();
  if (*(DerivedStorage + 112) != v10)
  {
    if (OUTLINED_FUNCTION_9(BluetoothEndpointManagerLogComponent))
    {
      OUTLINED_FUNCTION_0(*(DerivedStorage + 112), 1.5047e-36);
      *&v117[6] = v10;
      OUTLINED_FUNCTION_1(&dword_241BB7000, v86, v87, "Support SmartRouting : %d->%d");
    }

    *(DerivedStorage + 112) = v10;
    OUTLINED_FUNCTION_2();
  }

  v88 = CFDictionaryGetValue(a2, @"SmartRoutingEnabled");
  CFBooleanGetValue(v88);
  OUTLINED_FUNCTION_7();
  if (*(DerivedStorage + 113) != v10)
  {
    if (OUTLINED_FUNCTION_9(BluetoothEndpointManagerLogComponent))
    {
      OUTLINED_FUNCTION_0(*(DerivedStorage + 113), 1.5047e-36);
      *&v117[6] = v10;
      OUTLINED_FUNCTION_1(&dword_241BB7000, v89, v90, "SmartRouting Enabled : %d->%d");
    }

    *(DerivedStorage + 113) = v10;
    OUTLINED_FUNCTION_2();
  }

  v91 = CFDictionaryGetValue(a2, @"SupportsConversationDetect");
  CFBooleanGetValue(v91);
  OUTLINED_FUNCTION_7();
  if (*(DerivedStorage + 115) != v10)
  {
    if (OUTLINED_FUNCTION_9(BluetoothEndpointManagerLogComponent))
    {
      OUTLINED_FUNCTION_0(*(DerivedStorage + 115), 1.5047e-36);
      *&v117[6] = v10;
      OUTLINED_FUNCTION_1(&dword_241BB7000, v92, v93, "Support Conversation Detect : %d->%d");
    }

    *(DerivedStorage + 115) = v10;
    OUTLINED_FUNCTION_2();
  }

  v94 = CFDictionaryGetValue(a2, @"ConversationDetectEnable");
  CFBooleanGetValue(v94);
  OUTLINED_FUNCTION_7();
  if (*(DerivedStorage + 116) != v10)
  {
    if (OUTLINED_FUNCTION_9(BluetoothEndpointManagerLogComponent))
    {
      OUTLINED_FUNCTION_0(*(DerivedStorage + 116), 1.5047e-36);
      *&v117[6] = v10;
      OUTLINED_FUNCTION_1(&dword_241BB7000, v95, v96, "Conversation Detect Enabled : %d->%d");
    }

    *(DerivedStorage + 116) = v10;
    OUTLINED_FUNCTION_2();
  }

  v97 = CFDictionaryGetValue(a2, @"IsGenuineAirPods");
  CFBooleanGetValue(v97);
  OUTLINED_FUNCTION_7();
  if (*(DerivedStorage + 114) == v10)
  {
    if ((*a3 & 1) == 0)
    {
      goto LABEL_93;
    }
  }

  else
  {
    v98 = BluetoothEndpointManagerLogComponent;
    if (os_log_type_enabled(BluetoothEndpointManagerLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_0(*(DerivedStorage + 114), 1.5047e-36);
      *&v117[6] = v10;
      _os_log_impl(&dword_241BB7000, v98, OS_LOG_TYPE_DEFAULT, "Is Genuine AirPods : %d->%d", buf, 0xEu);
    }

    *(DerivedStorage + 114) = v10;
    OUTLINED_FUNCTION_2();
  }

  CFRetain(a1);
  v99 = *DerivedStorage;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___BluetoothEndpointUpdateWithDescription_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_async(v99, block);
LABEL_93:
  result = 0;
LABEL_94:
  v101 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __BluetoothEndpointUpdateWithDescription_block_invoke(uint64_t a1)
{
  result = _BluetoothEndpointUpdateWithDescription(*(a1 + 40), *(a1 + 48), *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void collection_findEntryForDescription_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = "Didn't find an entry";
  if (a1)
  {
    v3 = "Found an existing entry";
  }

  v5 = 136446466;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_241BB7000, log, OS_LOG_TYPE_DEBUG, "%{public}s for %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void BluetoothEndpointManagerCreate_cold_1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_241BB7000, a2, OS_LOG_TYPE_ERROR, "Error creating Bluetooth Endpoint Manager 0x%x", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t BluetoothEndpointStreamAudioCreate(int a1, CFTypeRef cf, void *a3)
{
  if (cf)
  {
    v5 = CFGetTypeID(cf);
    TypeID = CFDictionaryGetTypeID();
    v7 = 4294950536;
    if (!a3 || v5 != TypeID)
    {
      return v7;
    }
  }

  else if (!a3)
  {
    return 4294950536;
  }

  FigEndpointStreamGetClassID();
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    return v8;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11 = dispatch_queue_create("BluetoothEndpointStreamQueue", v10);
  *(DerivedStorage + 8) = v11;
  if (v11)
  {
    Value = CFDictionaryGetValue(cf, @"Name");
    *(DerivedStorage + 16) = Value;
    if (Value && (CFRetain(Value), v13 = CFDictionaryGetValue(cf, @"DeviceID"), (*(DerivedStorage + 24) = v13) != 0))
    {
      CFRetain(v13);
      v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v15 = dispatch_queue_create("BluetoothEndpointStreamAudio", v14);
      *DerivedStorage = v15;
      if (v15)
      {
        v7 = 0;
        *a3 = 0;
        return v7;
      }

      v7 = 4294950535;
    }

    else
    {
      v7 = 4294950576;
    }
  }

  else
  {
    v7 = 4294950575;
  }

  v17 = *(DerivedStorage + 16);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(DerivedStorage + 24);
  if (v18)
  {
    CFRelease(v18);
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
  }

  return v7;
}