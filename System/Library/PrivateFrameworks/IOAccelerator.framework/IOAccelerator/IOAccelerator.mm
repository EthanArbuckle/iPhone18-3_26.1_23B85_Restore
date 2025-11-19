_DWORD *__IOAccelInitCommPage_block_invoke()
{
  result = IOSurfaceGetGraphicsCommPageAddress();
  __globalCommPage = result;
  if (!result)
  {
    result = malloc_type_malloc(4uLL, 0x100004052888210uLL);
    __globalCommPage = result;
    *result = 0;
  }

  return result;
}

uint64_t *IOAccelMemoryInfoRegisterAPICollectionBlock(const void *a1)
{
  if (notify_once != -1)
  {
    IOAccelMemoryInfoRegisterAPICollectionBlock_cold_1();
  }

  pthread_mutex_lock(&ioaccel_collection_block_mutex);
  v2 = 0;
  v3 = &ioaccel_collection_blocks;
  while (ioaccel_collection_blocks_orig[v2] != a1)
  {
    if (!*v3)
    {
      ioaccel_collection_blocks_orig[v2] = a1;
      *v3 = _Block_copy(a1);
      break;
    }

    ++v3;
    if (++v2 == 16)
    {
      v3 = 0;
      break;
    }
  }

  pthread_mutex_unlock(&ioaccel_collection_block_mutex);
  return v3;
}

void IOAccelInitCommPage()
{
  if (__globalCommPageInit != -1)
  {
    IOAccelInitCommPage_cold_1();
  }
}

uint64_t __IOAccelMemoryInfoRegisterAPICollectionBlock_block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v3.__sig = 0;
  *v3.__opaque = 0;
  pthread_mutexattr_init(&v3);
  pthread_mutexattr_settype(&v3, 1);
  pthread_mutex_init(&ioaccel_collection_block_mutex, &v3);
  pthread_mutexattr_destroy(&v3);
  global_queue = dispatch_get_global_queue(0, 0);
  result = notify_register_dispatch("com.apple.gpumemd.check_in_request", &ioaccel_memlist_notify_token, global_queue, &__block_literal_global_5);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t IOAccelDeviceGetTypeID()
{
  if (IOAccelDeviceGetTypeID_onceToken != -1)
  {
    IOAccelDeviceGetTypeID_cold_1();
  }

  return kIOAccelDeviceID;
}

uint64_t __IOAccelDeviceGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  kIOAccelDeviceID = result;
  return result;
}

uint64_t IOAccelDeviceCreateWithAPIProperty(io_service_t a1, const char *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  connect = 0;
  v4 = IOServiceOpen(a1, *MEMORY[0x277D85F48], 1u, &connect);
  if (v4)
  {
    v5 = v4;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      IOAccelDeviceCreateWithAPIProperty_cold_1(v5);
    }

    goto LABEL_21;
  }

  if (a2)
  {
    strncpy(__dst, a2, 0x10uLL);
    IOConnectCallStructMethod(connect, 7u, __dst, 0x10uLL, 0, 0);
  }

  v6 = connect;
  v7 = *MEMORY[0x277CBECF8];
  if (IOAccelDeviceGetTypeID_onceToken != -1)
  {
    IOAccelDeviceCreateWithAPIProperty_cold_2();
  }

  Instance = _CFRuntimeCreateInstance();
  v9 = Instance;
  if (!Instance)
  {
    goto LABEL_22;
  }

  *(Instance + 16) = a1;
  *(Instance + 20) = v6;
  v26 = 0u;
  memset(v27, 0, 432);
  v24 = 0u;
  v25 = 0u;
  *__dst = 0u;
  v23 = 0u;
  outputStructCnt = 600;
  if (IOConnectCallStructMethod(v6, 2u, 0, 0, __dst, &outputStructCnt))
  {
LABEL_20:
    CFRelease(v9);
LABEL_21:
    v9 = 0;
    goto LABEL_22;
  }

  *(v9 + 32) = *__dst;
  v10 = DWORD1(v23);
  *(v9 + 48) = DWORD1(v23);
  if (v10 < 2)
  {
    *(v9 + 40) = v9 + 32;
    goto LABEL_16;
  }

  *(v9 + 40) = malloc_type_malloc(8 * v10, 0x10040436913F5uLL);
  v10 = *(v9 + 48);
  if (v10 >= 1)
  {
    for (i = 0; i != v10; ++i)
    {
      *(*(v9 + 40) + 8 * i) = *(v27 + i + 2) + *(v9 + 32);
    }

LABEL_16:
    if (v10 >= 1)
    {
      v12 = 0;
      v13 = *(v9 + 40);
      do
      {
        *(v9 + 68 + 4 * v12) = **(v13 + 8 * v12);
        ++v12;
      }

      while (v12 < v10);
    }
  }

  *(v9 + 52) = *&__dst[8];
  *(v9 + 60) = v23;
  *(v9 + 24) = IOAccelDeviceTestEventFast;
  outputStruct = 64;
  if (IOConnectCallStructMethod(*(v9 + 20), 0, 0, 0, (v9 + 624), &outputStruct))
  {
    goto LABEL_20;
  }

  outputStruct = 0;
  v18 = 0;
  v19 = 0;
  v16 = 24;
  if (!IOConnectCallStructMethod(*(v9 + 20), 5u, 0, 0, &outputStruct, &v16))
  {
    *(v9 + 584) = outputStruct;
    if (v19 >= 4)
    {
      *(v9 + 592) = v18;
    }
  }

  if (__globalCommPageInit != -1)
  {
    IOAccelDeviceCreateWithAPIProperty_cold_3();
  }

  *(v9 + 616) = 0;
  *(v9 + 600) = 0u;
LABEL_22:
  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

void IOAccelDeviceRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t IOAccelDeviceGetConfig(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6)
{
  v6 = 3758097090;
  if (a1 && CFGetTypeID(a1) == kIOAccelDeviceID)
  {
    v6 = 0;
    *a2 = *(a1 + 624);
    *a3 = *(a1 + 628);
    *a4 = *(a1 + 632);
    *a5 = *(a1 + 640);
    *a6 = *(a1 + 648);
  }

  return v6;
}

uint64_t IOAccelDeviceGetConfig64(uint64_t a1, _DWORD *a2, _DWORD *a3, void *a4, void *a5, _DWORD *a6)
{
  v6 = 3758097090;
  if (a1 && CFGetTypeID(a1) == kIOAccelDeviceID)
  {
    v6 = 0;
    *a2 = *(a1 + 624);
    *a3 = *(a1 + 628);
    *a4 = *(a1 + 632);
    *a5 = *(a1 + 640);
    *a6 = *(a1 + 648);
  }

  return v6;
}

uint64_t IOAccelDeviceGetSharedMemorySize(void *a1, void *a2)
{
  v2 = 3758097090;
  if (a1 && CFGetTypeID(a1) == kIOAccelDeviceID)
  {
    v2 = 0;
    *a2 = a1[82];
  }

  return v2;
}

uint64_t IOAccelDeviceGetMaxResourceSize(void *a1, void *a2)
{
  v2 = 3758097090;
  if (a1 && CFGetTypeID(a1) == kIOAccelDeviceID)
  {
    v2 = 0;
    *a2 = a1[83];
  }

  return v2;
}

unsigned int *IOAccelDeviceGetConnect(unsigned int *result)
{
  if (result)
  {
    v1 = result;
    if (CFGetTypeID(result) == kIOAccelDeviceID)
    {
      return v1[5];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t IOAccelDeviceGetName(mach_port_t *a1, char *a2, size_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = 3758097090;
  v9 = 64;
  if (a1)
  {
    if (CFGetTypeID(a1) == kIOAccelDeviceID)
    {
      v3 = IOConnectCallStructMethod(a1[5], 1u, 0, 0, outputStruct, &v9);
      if (!v3)
      {
        strncpy(a2, outputStruct, a3);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t IOAccelDeviceGetNextGlobalTraceID(uint64_t a1)
{
  do
  {
    v2 = *(a1 + 616);
    v3 = *(a1 + 608);
    v4 = v3;
    atomic_compare_exchange_strong((a1 + 616), &v4, 0);
    if (v4 == v3)
    {
      outputStructCnt = 16;
      outputStruct = 0;
      v11 = 0;
      if (IOConnectCallStructMethod(*(a1 + 20), 6u, 0, 0, &outputStruct, &outputStructCnt))
      {
        *(a1 + 600) = 1;
        v5 = 0x100000000;
        v6 = 1;
      }

      else
      {
        v6 = outputStruct;
        if (!outputStruct)
        {
          IOAccelDeviceGetNextGlobalTraceID_cold_1();
        }

        *(a1 + 600) = outputStruct;
        v5 = v11;
      }

      *(a1 + 608) = v5;
      *(a1 + 616) = v6;
    }

    else
    {
      *(a1 + 608) = v4;
        ;
      }
    }

    result = v2 + 1;
    v8 = v2;
    atomic_compare_exchange_strong((a1 + 616), &v8, v2 + 1);
  }

  while (v8 != v2);
  return result;
}

uint64_t IOAccelDeviceTraceObjectLabel()
{
  v0 = kdebug_trace_string();
  kdebug_trace();
  return v0;
}

uint64_t IOAccelDeviceGetCurrentTraceFilter(mach_port_t *a1)
{
  v1 = 3758097090;
  v4 = 8;
  if (a1 && CFGetTypeID(a1) == kIOAccelDeviceID)
  {
    outputStruct = 0;
    return IOConnectCallMethod(a1[5], 4u, 0, 0, 0, 0, 0, 0, &outputStruct, &v4);
  }

  return v1;
}

uint64_t ioAccelDeviceFinalize(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = v2 == (a1 + 32);
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    free(v2);
  }

  result = IOConnectRelease(*(a1 + 20));
  *(a1 + 20) = 0;
  return result;
}

CFStringRef ioAccelDeviceCopyFormatDescription(unsigned int *a1, const __CFDictionary *a2)
{
  v4 = a1[5];
  v5 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(0, a2, @"<IOAccelDevice %p connect=%08x refcnt=%d>", a1, v4, v5);
}

CFStringRef ioAccelDeviceCopyDebugDescription(unsigned int *a1)
{
  v2 = a1[5];
  v3 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(0, 0, @"<IOAccelDevice %p connect=%08x refcnt=%d>", a1, v2, v3);
}

uint64_t IOAccelSharedGetTypeID()
{
  if (IOAccelSharedGetTypeID_onceToken != -1)
  {
    IOAccelSharedGetTypeID_cold_1();
  }

  return kIOAccelSharedID;
}

uint64_t __IOAccelSharedGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  kIOAccelSharedID = result;
  return result;
}

uint64_t IOAccelSharedCreate(uint64_t a1)
{
  connect = 0;
  if (IOServiceOpen(*(a1 + 16), *MEMORY[0x277D85F48], 2u, &connect))
  {
    return 0;
  }

  v3 = connect;
  v4 = *MEMORY[0x277CBECF8];
  if (IOAccelSharedGetTypeID_onceToken != -1)
  {
    IOAccelSharedCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v2 = Instance;
  if (Instance)
  {
    *(Instance + 84) = 0;
    *(Instance + 16) = a1;
    *(Instance + 24) = v3;
    *(Instance + 32) = 0;
    *(Instance + 48) = 0;
    outputStruct = 0;
    v12 = 0;
    v10 = 16;
    v6 = IOConnectCallStructMethod(v3, 7u, 0, 0, &outputStruct, &v10);
    v7 = outputStruct;
    v8 = v12;
    if (v6)
    {
      v7 = 0;
      v8 = 0;
    }

    *(v2 + 40) = v7;
    *(v2 + 96) = v8;
    os_unfair_lock_lock((v2 + 84));
    *(v2 + 88) = 0;
    os_unfair_lock_unlock((v2 + 84));
  }

  return v2;
}

void *IOAccelSharedSetWaitForGPUCallback(uint64_t a1, void *aBlock)
{
  result = _Block_copy(aBlock);
  *(a1 + 32) = result;
  return result;
}

void IOAccelSharedRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

unsigned int *IOAccelSharedGetConnect(unsigned int *result)
{
  if (result)
  {
    v1 = result;
    if (CFGetTypeID(result) == kIOAccelSharedID)
    {
      return v1[6];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t IOAccelSharedCreateDeviceShmem(uint64_t a1, unsigned int a2, void *a3, _DWORD *a4, _DWORD *a5)
{
  v17 = 0;
  input = a2;
  v15 = 16;
  outputStruct = 0;
  v9 = IOConnectCallMethod(*(a1 + 24), 5u, &input, 1u, 0, 0, 0, 0, &outputStruct, &v15);
  if (v9)
  {
    *a3 = 0;
    *a4 = 0;
    *a5 = 0;
  }

  else
  {
    *a3 = outputStruct;
    v11 = HIDWORD(v17);
    *a4 = v17;
    *a5 = v11;
    v12 = *MEMORY[0x277D85F00];
    if (*MEMORY[0x277D85F00])
    {
      v13 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
      if (v13)
      {
        v14 = v13;
        *v13 = outputStruct;
        v13[1] = v17;
        os_unfair_lock_lock((a1 + 84));
        v14[2] = *(a1 + 88);
        *(a1 + 88) = v14;
        os_unfair_lock_unlock((a1 + 84));
        v12(1677721616, *MEMORY[0x277D85F48], v17, 0, outputStruct, 0);
      }
    }
  }

  return v9;
}

uint64_t IOAccelSharedDestroyDeviceShmem(uint64_t a1, unsigned int a2)
{
  input = a2;
  os_unfair_lock_lock((a1 + 84));
  v5 = (a1 + 88);
  v4 = *(a1 + 88);
  if (v4)
  {
    v6 = *(a1 + 88);
    while (*(v6 + 3) != a2)
    {
      v6 = v6[2];
      if (!v6)
      {
        goto LABEL_12;
      }
    }

    if (*MEMORY[0x277D85F00])
    {
      (*MEMORY[0x277D85F00])(1677721632, *MEMORY[0x277D85F48], *v6, *(v6 + 2), 0, 0);
      v4 = *v5;
    }

    if (v4 != v6)
    {
      do
      {
        v7 = v4;
        v4 = v4[2];
      }

      while (v4 != v6);
      v5 = v7 + 2;
    }

    *v5 = v4[2];
    free(v6);
  }

LABEL_12:
  os_unfair_lock_unlock((a1 + 84));
  return IOConnectCallScalarMethod(*(a1 + 24), 6u, &input, 1u, 0, 0);
}

uint64_t IOAccelSharedAllocateFenceMemory(uint64_t a1, uint64_t a2)
{
  inputStruct = a2;
  outputStructCnt = 8;
  outputStruct = 0;
  if (IOConnectCallStructMethod(*(a1 + 24), 8u, &inputStruct, 8uLL, &outputStruct, &outputStructCnt))
  {
    return 0;
  }

  else
  {
    return outputStruct;
  }
}

uint64_t IOAccelSharedGetMemoryData(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v16 = 0u;
  v17 = 0u;
  outputStruct = 0u;
  outputStructCnt = 48;
  result = IOConnectCallStructMethod(*(a1 + 24), 0xBu, 0, 0, &outputStruct, &outputStructCnt);
  if (!result)
  {
    if (a2)
    {
      *a2 = outputStruct;
    }

    if (a3)
    {
      *a3 = *(&outputStruct + 1);
    }

    if (a4)
    {
      *a4 = v16;
    }

    if (a5)
    {
      *a5 = *(&v16 + 1);
    }

    if (a6)
    {
      *a6 = v17;
    }

    if (a7)
    {
      *a7 = *(&v17 + 1);
    }
  }

  return result;
}

uint64_t IOAccelSharedGetAllocatedSize(uint64_t a1, void *a2)
{
  v3 = *(a1 + 96);
  if (v3)
  {
    result = 0;
    if (!a2)
    {
      return result;
    }

    v5 = *v3;
    goto LABEL_7;
  }

  v6 = 8;
  outputStruct = 0;
  result = IOConnectCallStructMethod(*(a1 + 24), 0xDu, 0, 0, &outputStruct, &v6);
  if (a2 && !result)
  {
    v5 = outputStruct;
LABEL_7:
    *a2 = v5;
  }

  return result;
}

void ioAccelSharedFinalize(uint64_t a1)
{
  _Block_release(*(a1 + 32));
  *(a1 + 32) = 0;
  IOConnectRelease(*(a1 + 24));
  *(a1 + 24) = 0;
  os_unfair_lock_lock((a1 + 84));
  v3 = (a1 + 88);
  v2 = *(a1 + 88);
  if (v2)
  {
    v4 = MEMORY[0x277D85F00];
    v5 = MEMORY[0x277D85F48];
    do
    {
      v6 = v2[2];
      if (*v4)
      {
        (*v4)(1677721632, *v5, *v2, *(v2 + 2), 0, 0);
      }

      v7 = *v3;
      if (*v3 == v2)
      {
        v9 = (a1 + 88);
      }

      else
      {
        do
        {
          v8 = v7;
          v7 = v7[2];
        }

        while (v7 != v2);
        v9 = v8 + 2;
      }

      *v9 = v7[2];
      free(v2);
      v2 = v6;
    }

    while (v6);
  }

  os_unfair_lock_unlock((a1 + 84));
}

CFStringRef ioAccelSharedCopyFormatDescription(unsigned int *a1, const __CFDictionary *a2)
{
  v4 = a1[6];
  v5 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(0, a2, @"<IOAccelShared %p connect=%08x refcnt=%d>", a1, v4, v5);
}

CFStringRef ioAccelSharedCopyDebugDescription(unsigned int *a1)
{
  v2 = a1[6];
  v3 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(0, 0, @"<IOAccelShared %p connect=%08x refcnt=%d>", a1, v2, v3);
}

uint64_t IOAccelContextGetTypeID()
{
  if (IOAccelContextGetTypeID_onceToken != -1)
  {
    IOAccelContextGetTypeID_cold_1();
  }

  return kIOAccelContextID;
}

uint64_t __IOAccelContextGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  kIOAccelContextID = result;
  return result;
}

const void *IOAccelContextCreate(uint64_t a1, uint32_t type)
{
  connect = 0;
  v3 = IOServiceOpen(*(*(a1 + 16) + 16), *MEMORY[0x277D85F48], type, &connect);
  if (v3)
  {
    if (v3 == -536379391)
    {
      abort();
    }

    return 0;
  }

  v4 = connect;
  v5 = *MEMORY[0x277CBECF8];
  if (IOAccelContextGetTypeID_onceToken != -1)
  {
    IOAccelContextCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v7 = Instance;
  if (Instance)
  {
    *(Instance + 168) = 0u;
    *(Instance + 16) = a1;
    *(Instance + 24) = v4;
    *(Instance + 164) = 16;
    *(Instance + 32) = 0u;
    *(Instance + 48) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 80) = 0u;
    *(Instance + 96) = 0u;
    *(Instance + 112) = 0u;
    *(Instance + 128) = 0u;
    *(Instance + 144) = 0u;
    *(Instance + 184) = 0u;
    *(Instance + 200) = 0u;
    *(Instance + 216) = 0u;
    *(Instance + 232) = 0u;
    *(Instance + 248) = 0u;
    *(Instance + 264) = 0u;
    *(Instance + 280) = 0u;
    *(Instance + 296) = 0;
    if (MEMORY[0x259C1DEF0](connect, *(a1 + 24)))
    {
      CFRelease(v7);
      return 0;
    }
  }

  return v7;
}

void IOAccelContextRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

unsigned int *IOAccelContextGetConnect(unsigned int *result)
{
  if (result)
  {
    v1 = result;
    if (CFGetTypeID(result) == kIOAccelContextID)
    {
      return v1[6];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t IOAccelContextFinish(uint64_t a1)
{
  if (!a1 || CFGetTypeID(a1) != kIOAccelContextID)
  {
    return 3758097090;
  }

  v2 = *(*(a1 + 16) + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  return IOConnectCallMethod(*(a1 + 24), 0, 0, 0, 0, 0, 0, 0, 0, 0);
}

uint64_t IOAccelContextSetDataBufferClassUsedBytes(uint64_t result, unsigned int a2, uint64_t a3)
{
  if (*(result + 164) > a2)
  {
    *(result + 8 * a2 + 168) = a3;
  }

  return result;
}

uint64_t IOAccelContextSubmitDataBuffersExt2(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6)
{
  v12 = 3758097090;
  v13 = *(a1 + 164);
  if (CFGetTypeID(a1) == kIOAccelContextID)
  {
    *(a1 + 160) = a2;
    v14 = *(*(*(a1 + 16) + 16) + 60);
    outputStructCnt = (v14 * v13) + 48 * v13 + 24;
    v15 = malloc_type_malloc(outputStructCnt, 0x1000040504FFAC1uLL);
    if (v13)
    {
      v16 = (a1 + 32);
      do
      {
        if (*v16)
        {
          CFRelease(*v16);
          *v16 = 0;
        }

        ++v16;
        --v13;
      }

      while (v13);
    }

    v17 = IOConnectCallStructMethod(*(a1 + 24), 2u, (a1 + 160), 0x88uLL, v15, &outputStructCnt);
    if (!v17)
    {
      *a3 = v15[2];
      *a4 = v15[1];
      *a5 = v15[3];
      *a6 = v15[4];
      v18 = *v15;
      if (v15[1] || (v17 = 3758097090, (v18 * v14) + 48 * v18 + 24 >= outputStructCnt))
      {
        *(a1 + 164) = v18;
        if (v18)
        {
          v19 = 0;
          v20 = v15 + 6;
          v21 = &v15[12 * v18 + 6];
          v22 = (a1 + 32);
          v17 = 3758097086;
          while (1)
          {
            DataBuffer = IOAccelResourceCreateDataBuffer(*(a1 + 16), v20, (v21 + v19), v14);
            if (!DataBuffer)
            {
              break;
            }

            *v22++ = DataBuffer;
            v19 += v14;
            v20 += 6;
            if (!--v18)
            {
              goto LABEL_14;
            }
          }
        }

        else
        {
LABEL_14:
          v17 = 0;
        }
      }
    }

    free(v15);
    return v17;
  }

  return v12;
}

uint64_t IOAccelContextRequestDataBuffer(uint64_t a1, unsigned int a2, int a3)
{
  v3 = 3758097090;
  if (a2 <= 0xF)
  {
    v6 = *(*(*(a1 + 16) + 16) + 60);
    inputStruct[0] = a2;
    inputStruct[1] = a3;
    v13 = v6 + 48;
    v7 = malloc_type_malloc(v6 + 48, 0x1000040EED21634uLL);
    v8 = IOConnectCallStructMethod(*(a1 + 24), 3u, inputStruct, 8uLL, v7, &v13);
    if (!v8)
    {
      v8 = 3758097090;
      if (v6 + 48 >= v13)
      {
        DataBuffer = IOAccelResourceCreateDataBuffer(*(a1 + 16), v7, v7 + 48, v6);
        if (DataBuffer)
        {
          v10 = DataBuffer;
          v11 = *(a1 + 32 + 8 * a2);
          if (v11)
          {
            CFRelease(v11);
          }

          v8 = 0;
          *(a1 + 32 + 8 * a2) = v10;
        }

        else
        {
          v8 = 3758097086;
        }
      }
    }

    free(v7);
    return v8;
  }

  return v3;
}

uint64_t IOAccelContextGetDataBufferResource(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 164) <= a2)
  {
    return 0;
  }

  else
  {
    return *(a1 + 8 * a2 + 32);
  }
}

uint64_t IOAccelContextSetExecutableName(uint64_t a1, const char *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  strncpy(__dst, a2, 0x3FFuLL);
  result = IOConnectCallStructMethod(*(a1 + 24), 1u, __dst, 0x400uLL, 0, 0);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t IOAccelContextGetSidebandBuffer(uint64_t a1, void *a2, void *a3)
{
  v8 = 0;
  v9 = 0;
  result = MEMORY[0x259C1DF40](*(a1 + 24), 0, *MEMORY[0x277D85F48], &v9, &v8, 1);
  v7 = v8;
  v6 = v9;
  if (result)
  {
    v6 = 0;
    v7 = 0;
  }

  *a2 = v6;
  *a3 = v7;
  return result;
}

uint64_t IOAccelContextGetFenceBuffer(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v14 = 0;
  v15 = 0;
  v10 = MEMORY[0x277D85F48];
  result = MEMORY[0x259C1DF40](*(a1 + 24), 2, *MEMORY[0x277D85F48], &v15, &v14, 1);
  if (result)
  {
    *a4 = 0;
    *a5 = 0;
  }

  else
  {
    v12 = v14;
    *a4 = v15;
    *a5 = v12;
    result = MEMORY[0x259C1DF40](*(a1 + 24), 1, *v10, &v15, &v14, 1);
    if (result)
    {
      *a2 = 0;
      *a3 = 0;
    }

    else
    {
      v13 = v14;
      *a2 = v15;
      *a3 = v13;
    }
  }

  return result;
}

void IOAccelContextAddResource(uint64_t a1, uint64_t a2, __int16 a3, _DWORD *a4)
{
  *a4 = *(*(a2 + 72) + 256);
  if ((a3 & 0x100) == 0)
  {
    atomic_fetch_add_explicit((*(a2 + 80) + 24), 1u, memory_order_relaxed);
  }
}

uint64_t IOAccelContextTestResourceSysMem(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  if ((*(a2[9] + 260) & 0x80) == 0)
  {
    return 1;
  }

  if (*(a2[10] + 24) != 1)
  {
    a4(a5);
  }

  v7 = *(a2[2] + 24);

  return v7();
}

uint64_t IOAccelContextFlushResourceSysMem(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if ((*(*(a2 + 72) + 260) & 0xD) == 0 && *(*(a2 + 80) + 24) != 1)
  {
    return a4(a5);
  }

  return result;
}

void *IOAccelContextFinishResourceSysMem(uint64_t a1, void *a2, int a3, void (*a4)(uint64_t), uint64_t a5)
{
  if ((*(a2[9] + 260) & 0xD) == 0 && *(a2[10] + 24) != 1)
  {
    a4(a5);
  }

  return IOAccelResourceFinishSysMem(a2, a3);
}

uint64_t IOAccelContextEnableBlockFences(unint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    IOAccelContextEnableBlockFences_cold_4();
  }

  if (*(a1 + 296))
  {
    IOAccelContextEnableBlockFences_cold_1();
  }

  v2 = 3758097085;
  v3 = dispatch_queue_create("com.apple.IOAccelerator.BlockFences", 0);
  if (v3)
  {
    v4 = v3;
    v5 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
    *(a1 + 296) = v5;
    if (v5)
    {
      IONotificationPortSetDispatchQueue(v5, v4);
      dispatch_release(v4);
      reference[0] = 0;
      v11 = 0u;
      v12 = 0u;
      reference[1] = ioAccelContextBlockFenceCallback;
      v10 = a1;
      if (!*(a1 + 24))
      {
        IOAccelContextEnableBlockFences_cold_3();
      }

      MachPort = IONotificationPortGetMachPort(*(a1 + 296));
      if (!MachPort)
      {
        IOAccelContextEnableBlockFences_cold_2();
      }

      v2 = IOConnectCallAsyncScalarMethod(*(a1 + 24), 6u, MachPort, reference, 3u, 0, 0, 0, 0);
      if (v2)
      {
        IONotificationPortDestroy(*(a1 + 296));
        *(a1 + 296) = 0;
      }
    }

    else
    {
      dispatch_release(v4);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

void ioAccelContextBlockFenceCallback(const void *a1, int a2, uint64_t a3)
{
  if (!a1)
  {
    ioAccelContextBlockFenceCallback_cold_4();
  }

  if (a2)
  {
    ioAccelContextBlockFenceCallback_cold_1();
  }

  v3 = *a3;
  if (!*a3)
  {
    ioAccelContextBlockFenceCallback_cold_3();
  }

  v4 = *(a3 + 8);
  if (!v4)
  {
    ioAccelContextBlockFenceCallback_cold_2();
  }

  dispatch_async(*(a3 + 8), *a3);
  dispatch_release(v4);
  _Block_release(v3);

  CFRelease(a1);
}

uint64_t IOAccelContextSetBlockFenceOnQueue(void *a1, CFTypeRef cf, const void *a3, NSObject *a4)
{
  if (*(cf + 37) || (result = IOAccelContextEnableBlockFences(cf), !result))
  {
    CFRetain(cf);
    v8 = _Block_copy(a3);
    dispatch_retain(a4);
    result = 0;
    *a1 = v8;
    a1[1] = a4;
  }

  return result;
}

uint64_t ioAccelContextFinalize(uint64_t a1)
{
  v2 = *(a1 + 296);
  if (v2)
  {
    IONotificationPortDestroy(v2);
    *(a1 + 296) = 0;
  }

  v3 = 0;
  v4 = a1 + 32;
  do
  {
    v5 = *(v4 + v3);
    if (v5)
    {
      CFRelease(v5);
    }

    *(v4 + v3) = 0;
    v3 += 8;
  }

  while (v3 != 128);
  result = IOConnectRelease(*(a1 + 24));
  *(a1 + 24) = 0;
  return result;
}

CFStringRef ioAccelContextCopyFormatDescription(unsigned int *a1, const __CFDictionary *a2)
{
  v4 = a1[6];
  v5 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(0, a2, @"<IOAccelContext %p connect=%08x refcnt=%d>", a1, v4, v5);
}

CFStringRef ioAccelContextCopyDebugDescription(unsigned int *a1)
{
  v2 = a1[6];
  v3 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(0, 0, @"<IOAccelContext %p connect=%08x refcnt=%d>", a1, v2, v3);
}

uint64_t IOAccelCommandQueueGetTypeID()
{
  if (IOAccelCommandQueueGetTypeID_onceToken != -1)
  {
    IOAccelCommandQueueGetTypeID_cold_1();
  }

  return kIOAccelCommandQueueID;
}

uint64_t __IOAccelCommandQueueGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  kIOAccelCommandQueueID = result;
  return result;
}

uint64_t IOAccelCommandQueueCreateWithQoS(uint64_t a1, int a2)
{
  v28 = *MEMORY[0x277D85DE8];
  connect = 0;
  v4 = MEMORY[0x277D85F48];
  v5 = IOServiceOpen(*(*(a1 + 16) + 16), *MEMORY[0x277D85F48], 4u, &connect);
  if (v5)
  {
    if (v5 == -536379391)
    {
      IOAccelKillClient_LeakingContext();
    }

    goto LABEL_9;
  }

  v6 = connect;
  v7 = *MEMORY[0x277CBECF8];
  if (IOAccelCommandQueueGetTypeID_onceToken != -1)
  {
    IOAccelCommandQueueCreateWithQoS_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v9 = Instance;
  if (Instance)
  {
    *(Instance + 16) = a1;
    *(Instance + 24) = v6;
    *(Instance + 32) = 0;
    if (MEMORY[0x259C1DEF0](connect, *(a1 + 24)))
    {
      goto LABEL_8;
    }

    v12 = dispatch_queue_create("com.apple.IOAccelerator.CommandQueueCompletion", 0);
    if (!v12)
    {
      goto LABEL_8;
    }

    v13 = v12;
    v14 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
    *(v9 + 32) = v14;
    if (!v14)
    {
      dispatch_release(v13);
      goto LABEL_8;
    }

    IONotificationPortSetDispatchQueue(v14, v13);
    dispatch_release(v13);
    reference[0] = 0;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    reference[1] = ioAccelCommandQueueBlockFenceCallback;
    *&v25 = v9;
    MachPort = IONotificationPortGetMachPort(*(v9 + 32));
    if (!MachPort)
    {
      IOAccelCommandQueueCreateWithQoS_cold_2();
    }

    if (IOConnectCallAsyncScalarMethod(*(v9 + 24), 0, MachPort, reference, 3u, 0, 0, 0, 0))
    {
      IONotificationPortDestroy(*(v9 + 32));
      *(v9 + 32) = 0;
LABEL_8:
      CFRelease(v9);
LABEL_9:
      v9 = 0;
      goto LABEL_10;
    }

    bzero(buffer, 0x404uLL);
    x = 0;
    pid_for_task(*v4, &x);
    proc_pidpath(x, buffer, 0x400u);
    v23 = a2;
    outputStructCnt = 8;
    outputStruct = 0;
    v16 = IOConnectCallStructMethod(*(v9 + 24), 5u, buffer, 0x404uLL, &outputStruct, &outputStructCnt);
    v17 = outputStruct;
    if (v16)
    {
      v17 = 0;
    }

    *(v9 + 40) = v17;
  }

LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void ioAccelCommandQueueBlockFenceCallback(const void *a1, int a2, uint64_t a3)
{
  if (!a1)
  {
    ioAccelCommandQueueBlockFenceCallback_cold_3();
  }

  if (a2)
  {
    ioAccelCommandQueueBlockFenceCallback_cold_1();
  }

  v3 = *a3;
  if (!*a3)
  {
    ioAccelCommandQueueBlockFenceCallback_cold_2();
  }

  v3[2](*a3, *(a3 + 16), *(a3 + 32), *(a3 + 48));
  _Block_release(v3);

  CFRelease(a1);
}

void IOAccelCommandQueueRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

unsigned int *IOAccelCommandQueueGetConnect(unsigned int *result)
{
  if (result)
  {
    v1 = result;
    if (CFGetTypeID(result) == kIOAccelCommandQueueID)
    {
      return v1[6];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t IOAccelCommandQueueSubmitCommandBuffers(mach_port_t *a1, _DWORD *a2)
{
  v2 = 3758097090;
  if (a1)
  {
    v5 = CFGetTypeID(a1);
    if (a2)
    {
      if (v5 == kIOAccelCommandQueueID)
      {
        v6 = a2[1];
        if (v6 >= 1)
        {
          v7 = a2[1];
          do
          {
            CFRetain(a1);
            CFRetain(a1);
            --v7;
          }

          while (v7);
        }

        v2 = IOConnectCallMethod(a1[6], 1u, 0, 0, a2, 24 * v6 + 8, 0, 0, 0, 0);
        if (v2)
        {
          v8 = v6 < 1;
        }

        else
        {
          v8 = 1;
        }

        if (!v8)
        {
          do
          {
            CFRelease(a1);
            CFRelease(a1);
            --v6;
          }

          while (v6);
        }
      }
    }
  }

  return v2;
}

uint64_t ioAccelCommandQueueFinalize(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    IONotificationPortDestroy(v2);
    *(a1 + 32) = 0;
  }

  result = IOConnectRelease(*(a1 + 24));
  *(a1 + 24) = 0;
  return result;
}

CFStringRef ioAccelCommandQueueCopyFormatDescription(unsigned int *a1, const __CFDictionary *a2)
{
  v4 = a1[6];
  v5 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(0, a2, @"<IOAccelCommandQueue %p connect=%08x refcnt=%d>", a1, v4, v5);
}

CFStringRef ioAccelCommandQueueCopyDebugDescription(unsigned int *a1)
{
  v2 = a1[6];
  v3 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(0, 0, @"<IOAccelCommandQueue %p connect=%08x refcnt=%d>", a1, v2, v3);
}

void IOAccelGLContextRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t IOAccelResourceGetTypeID()
{
  if (IOAccelResourceGetTypeID_onceToken != -1)
  {
    IOAccelResourceGetTypeID_cold_1();
  }

  return kIOAccelResourceID;
}

uint64_t __IOAccelResourceGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  kIOAccelResourceID = result;
  return result;
}

uint64_t IOAccelResourceCreate(uint64_t a1, void *a2, size_t a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = *(*(a1 + 16) + 60);
  v20[0] = v6 + 88;
  v7 = MEMORY[0x28223BE20](a1, a2);
  v8 = v20 - ((v6 + 103) & 0x1FFFFFFF0);
  v9 = _IOAccelResourceAlloc(v7);
  if (v9)
  {
    bzero(v20 - ((v6 + 103) & 0x1FFFFFFF0), v6 + 88);
    if (IOConnectCallMethod(*(a1 + 24), 0, 0, 0, a2, a3, 0, 0, v20 - ((v6 + 103) & 0x1FFFFFFF0), v20))
    {
      CFRelease(v9);
      v9 = 0;
    }

    else
    {
      *(v9 + 32) = *(v8 + 1);
      *(v9 + 48) = *(v8 + 5);
      if ((*a2 & 0xF) != 0)
      {
        v12 = 0;
      }

      else
      {
        v12 = a2[11];
      }

      *(v9 + 40) = v12;
      v13 = *(v8 + 10);
      *(v9 + 56) = *v8;
      *(v9 + 64) = v13;
      v14 = *(v8 + 3);
      *(v9 + 72) = *(v8 + 2);
      *(v9 + 80) = v14;
      memcpy((v9 + 128), v8 + 88, v6);
      *(v9 + 96) = *(v8 + 56);
      *(v9 + 112) = *(v8 + 9);
      atomic_fetch_add_explicit((v14 + 24), 1u, memory_order_relaxed);
      if ((*(a2 + 36) & 0x40) != 0 && (v8[32] & 1) != 0 && (*(*(v9 + 72) + 260) | 0x40) == 0x40)
      {
        v15 = *(v9 + 32);
        if (v15)
        {
          bzero(v15, a2[11]);
          if (*(*(v9 + 72) + 260) == 64)
          {
            v16 = *(a2 + 32);
            v17 = *(v9 + 80);
            if (*(a2 + 32))
            {
              v18 = ~(-1 << *(a2 + 33));
              v19 = *(v9 + 80);
              do
              {
                *v19++ |= v18;
                --v16;
              }

              while (v16);
            }

            *(v17 + 28) |= 1u;
          }
        }
      }

      *(v9 + 88) = *(v8 + 6);
      if (*MEMORY[0x277D85F00] && *(v9 + 32) && !a2[9])
      {
        (*MEMORY[0x277D85F00])(1677721616, *MEMORY[0x277D85F48], *(v9 + 48), 0);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t _IOAccelResourceAlloc(void *a1)
{
  v2 = *MEMORY[0x277CBECF8];
  if (IOAccelResourceGetTypeID_onceToken != -1)
  {
    IOAccelResourceGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    CFRetain(a1);
    *(Instance + 16) = a1[2];
    *(Instance + 24) = a1;
    *(Instance + 120) = 0;
    *(Instance + 72) = 0;
    *(Instance + 80) = 0;
  }

  return Instance;
}

void *IOAccelResourceCreateDataBuffer(void *a1, void *a2, const void *a3, size_t a4)
{
  v7 = _IOAccelResourceAlloc(a1);
  v8 = v7;
  if (v7)
  {
    v9 = a2[1];
    v7[4] = *a2;
    v7[5] = v9;
    v10 = a2[3];
    v7[7] = a2[2];
    v11 = a2[4];
    v7[9] = v10;
    v7[10] = v11;
    memcpy(v7 + 16, a3, a4);
    atomic_fetch_add_explicit((v11 + 24), 1u, memory_order_relaxed);
    if (*MEMORY[0x277D85F00])
    {
      v12 = v8[4];
      if (v12)
      {
        (*MEMORY[0x277D85F00])(1677721616, *MEMORY[0x277D85F48], v8[5], 0, v12, 0);
      }
    }
  }

  return v8;
}

void IOAccelResourceRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void *IOAccelResourceGetDataBytes(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (IOAccelResourceGetTypeID_onceToken != -1)
    {
      IOAccelResourceGetTypeID_cold_1();
    }

    if (v2 == kIOAccelResourceID)
    {
      return v1[4];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t IOAccelResourceGetPrivate(uint64_t a1)
{
  if (*(*(a1 + 16) + 60))
  {
    return a1 + 128;
  }

  else
  {
    return 0;
  }
}

uint64_t IOAccelResourceGetClientShared(void *a1, void *a2)
{
  if (!a1)
  {
    goto LABEL_8;
  }

  v4 = CFGetTypeID(a1);
  if (IOAccelResourceGetTypeID_onceToken != -1)
  {
    IOAccelResourceGetTypeID_cold_1();
  }

  if (v4 == kIOAccelResourceID)
  {
    if (a2)
    {
      *a2 = a1[10];
    }

    return a1[9];
  }

  else
  {
LABEL_8:
    result = 0;
    if (a2)
    {
      *a2 = 0;
    }
  }

  return result;
}

uint64_t IOAccelResourceGetClientSharedPrivate(void *a1, uint64_t *a2)
{
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (IOAccelResourceGetTypeID_onceToken != -1)
    {
      IOAccelResourceGetTypeID_cold_1();
    }

    if (v4 == kIOAccelResourceID)
    {
      v5 = a1[2];
      if (*(v5 + 52))
      {
        result = a1[9] + 264;
        if (!a2)
        {
          return result;
        }
      }

      else
      {
        result = 0;
        if (!a2)
        {
          return result;
        }
      }

      if (*(v5 + 56))
      {
        v7 = a1[10] + 32;
      }

      else
      {
        v7 = 0;
      }

LABEL_14:
      *a2 = v7;
      return result;
    }
  }

  v7 = 0;
  result = 0;
  if (a2)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t IOAccelResourcePageoff(uint64_t a1, int a2, int a3)
{
  inputStruct[0] = *(*(a1 + 72) + 256);
  inputStruct[1] = a3 | (a2 << 16);
  return IOConnectCallMethod(*(*(a1 + 24) + 24), 2u, 0, 0, inputStruct, 8uLL, 0, 0, 0, 0);
}

uint64_t IOAccelResourceSetPurgeable(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  input[2] = *MEMORY[0x277D85DE8];
  outputCnt = 1;
  v4 = *(*(a1 + 72) + 256);
  output = 0;
  input[0] = v4;
  input[1] = a2;
  result = IOConnectCallMethod(*(*(a1 + 24) + 24), 4u, input, 2u, 0, 0, &output, &outputCnt, 0, 0);
  if (a3)
  {
    *a3 = output;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t IOAccelResourceFinishEvent(void *a1, unsigned int a2)
{
  input[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1[9] + (a2 << 6);
  result = (*(a1[2] + 24))();
  if (!result)
  {
    result = CFGetTypeID(a1);
    if (result == kIOAccelResourceID)
    {
      input[0] = *(a1[9] + 256);
      input[1] = v3;
      v6 = a1[3];
      v7 = *(v6 + 32);
      if (v7)
      {
        (*(v7 + 16))();
        v6 = a1[3];
      }

      result = IOConnectCallMethod(*(v6 + 24), 3u, input, 2u, 0, 0, 0, 0, 0, 0);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t IOAccelResourceCheckSysMem(void *a1)
{
  if ((*(a1[9] + 260) & 0x80) == 0)
  {
    return 1;
  }

  if (*(a1[10] + 24) == 1)
  {
    return (*(a1[2] + 24))();
  }

  return 0;
}

void *IOAccelResourceFinishSysMem(void *result, int a2)
{
  if ((*(result[9] + 260) & 0x80) != 0)
  {
    return IOAccelResourceFinishEvent(result, a2 == 0);
  }

  return result;
}

uint64_t IOAccelResourceCreateAllocationIdentifierSet(uint64_t result, void *a2, void *a3)
{
  *a2 = *(result + 96);
  *a3 = *(result + 104);
  return result;
}

void ioAccelResourceFinalize(void *a1)
{
  v3 = a1 + 9;
  v2 = a1[9];
  if (v2)
  {
    v2 = *(v2 + 256);
  }

  input = v2;
  v4 = a1[10];
  if (v4 && atomic_fetch_add_explicit((v4 + 24), 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    if (*MEMORY[0x277D85F00])
    {
      v5 = a1[4];
      if (v5)
      {
        (*MEMORY[0x277D85F00])(32, *MEMORY[0x277D85F48], v5, a1[6], 0, 0);
      }
    }

    if (IOConnectCallMethod(*(a1[3] + 24), 1u, &input, 1u, 0, 0, 0, 0, 0, 0) == -536870187)
    {
      ioAccelResourceFinalize_cold_1();
    }

    *v3 = 0;
    v3[1] = 0;
  }

  v6 = a1[3];
  if (v6)
  {
    CFRelease(v6);
    a1[3] = 0;
  }
}

CFStringRef ioAccelResourceCopyFormatDescription(void *a1, const __CFDictionary *a2)
{
  v4 = *(a1[9] + 256);
  v5 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(0, a2, @"<IOAccelResource %p id=%08x refcnt=%d>", a1, v4, v5);
}

CFStringRef ioAccelResourceCopyDebugDescription(void *a1)
{
  v2 = *(a1[9] + 256);
  v3 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(0, 0, @"<IOAccelResource %p id=%08x refcnt=%d>", a1, v2, v3);
}

uint64_t IOAccelDeviceTestEventFast(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a1 + 40);
  v4 = a1 + 68;
  while (1)
  {
    v5 = *(a2 + v2);
    if (v5 != -1 && HIDWORD(v5) - *(v4 + 4 * v5) >= 1)
    {
      v6 = **(v3 + 8 * v5);
      *(v4 + 4 * v5) = v6;
      if (HIDWORD(v5) - v6 > 0)
      {
        break;
      }
    }

    v2 += 8;
    if (v2 == 64)
    {
      return 1;
    }
  }

  return 0;
}

double IOAccelResourceListInit(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  *&v7 = -1;
  *(&v7 + 1) = -1;
  *(a1 + 480) = v7;
  *(a1 + 496) = v7;
  *(a1 + 448) = v7;
  *(a1 + 464) = v7;
  *(a1 + 416) = v7;
  *(a1 + 432) = v7;
  *(a1 + 384) = v7;
  *(a1 + 400) = v7;
  *(a1 + 352) = v7;
  *(a1 + 368) = v7;
  *(a1 + 320) = v7;
  *(a1 + 336) = v7;
  *(a1 + 288) = v7;
  *(a1 + 304) = v7;
  *(a1 + 256) = v7;
  *(a1 + 272) = v7;
  *(a1 + 224) = v7;
  *(a1 + 240) = v7;
  *(a1 + 192) = v7;
  *(a1 + 208) = v7;
  *(a1 + 160) = v7;
  *(a1 + 176) = v7;
  *(a1 + 128) = v7;
  *(a1 + 144) = v7;
  *(a1 + 96) = v7;
  *(a1 + 112) = v7;
  *(a1 + 64) = v7;
  *(a1 + 80) = v7;
  *(a1 + 32) = v7;
  *(a1 + 48) = v7;
  *a1 = v7;
  *(a1 + 16) = v7;
  *(a1 + 536) = a3 / 0x58;
  *(a1 + 528) = a4;
  *(a1 + 512) = a2;
  *(a1 + 520) = a4;
  *(a1 + 540) = 0;
  *(a1 + 548) = 0;
  result = 0.0;
  *(a1 + 552) = 0;
  *(a1 + 560) = a5;
  *(a1 + 568) = a6;
  *(a1 + 576) = a7;
  return result;
}

double IOAccelResourceListDestroy(uint64_t a1)
{
  result = 0.0;
  *(a1 + 568) = 0u;
  return result;
}

uint64_t IOAccelResourceListAddResourceNoThreshold(uint64_t a1, uint64_t a2, __int16 a3)
{
  v4 = *(a2 + 16);
  v5 = *(a1 + 2 * v4);
  if (v5 == 0xFFFF)
  {
LABEL_22:
    v19 = *a2;
    v20 = *(a2 + 8) & 0xFFFFFFFFFFFFFFLL;
    v21 = *(a2 + 16);

    return ioAccelResourceListAddNewGroupAndResource(a1, v21, v20, a3, v19, 1);
  }

  v6 = *(a1 + 512);
  v7 = v6 + 88 * *(a1 + 2 * v4);
  v8 = *(v7 + 86);
  if (!*(v7 + 86))
  {
LABEL_6:
    v10 = *(v7 + 84);
    if (v8 <= 5 && v10 == 0xFFFF)
    {
      return ioAccelResourceGroupAddNewResource(a1, v6 + 88 * v5, v5, v8, v4, *(a2 + 8) & 0xFFFFFFFFFFFFFFLL, a3, *a2, 1);
    }

    v12 = (v6 + 88 * *(a1 + 2 * v4) + 84);
    while (v10 != 0xFFFF)
    {
      v13 = v10;
      v14 = v12;
      v15 = v6 + 88 * v10;
      v16 = *(v15 + 86);
      if (*(v15 + 86))
      {
        v17 = 0;
        while (*(v15 + 4 * v17) != v4)
        {
          if (v16 == ++v17)
          {
            goto LABEL_16;
          }
        }

        *v12 = *(v15 + 84);
        *(v15 + 84) = v5;
        *(a1 + 2 * v4) = v13;
        v22 = v6 + 88 * v13 + 2 * v17;
        *(v22 + 72) |= a3;
        return v17 | (8 * v13);
      }

LABEL_16:
      v12 = (v15 + 84);
      v10 = *(v15 + 84);
      if (v16 <= 5 && v10 == 0xFFFF)
      {
        *v14 = -1;
        *(v15 + 84) = v5;
        *(a1 + 2 * v4) = v13;
        return ioAccelResourceGroupAddNewResource(a1, v15, v13, v16, v4, *(a2 + 8) & 0xFFFFFFFFFFFFFFLL, a3, *a2, 1);
      }
    }

    goto LABEL_22;
  }

  v9 = 0;
  while (*(v7 + 4 * v9) != v4)
  {
    if (v8 == ++v9)
    {
      goto LABEL_6;
    }
  }

  *(v7 + 2 * v9 + 72) |= a3;
  return v9 | (8 * v5);
}

uint64_t IOAccelResourceListAddResource(uint64_t a1, uint64_t a2, __int16 a3)
{
  v4 = *(a2 + 16);
  v5 = *(a1 + 2 * v4);
  if (v5 == 0xFFFF)
  {
LABEL_22:
    v19 = *a2;
    v20 = *(a2 + 8) & 0xFFFFFFFFFFFFFFLL;
    v21 = *(a2 + 16);

    return ioAccelResourceListAddNewGroupAndResource(a1, v21, v20, a3, v19, 0);
  }

  v6 = *(a1 + 512);
  v7 = v6 + 88 * *(a1 + 2 * v4);
  v8 = *(v7 + 86);
  if (!*(v7 + 86))
  {
LABEL_6:
    v10 = *(v7 + 84);
    if (v8 <= 5 && v10 == 0xFFFF)
    {
      return ioAccelResourceGroupAddNewResource(a1, v6 + 88 * v5, v5, v8, v4, *(a2 + 8) & 0xFFFFFFFFFFFFFFLL, a3, *a2, 0);
    }

    v12 = (v6 + 88 * *(a1 + 2 * v4) + 84);
    while (v10 != 0xFFFF)
    {
      v13 = v10;
      v14 = v12;
      v15 = v6 + 88 * v10;
      v16 = *(v15 + 86);
      if (*(v15 + 86))
      {
        v17 = 0;
        while (*(v15 + 4 * v17) != v4)
        {
          if (v16 == ++v17)
          {
            goto LABEL_16;
          }
        }

        *v12 = *(v15 + 84);
        *(v15 + 84) = v5;
        *(a1 + 2 * v4) = v13;
        v22 = v6 + 88 * v13 + 2 * v17;
        *(v22 + 72) |= a3;
        return v17 | (8 * v13);
      }

LABEL_16:
      v12 = (v15 + 84);
      v10 = *(v15 + 84);
      if (v16 <= 5 && v10 == 0xFFFF)
      {
        *v14 = -1;
        *(v15 + 84) = v5;
        *(a1 + 2 * v4) = v13;
        return ioAccelResourceGroupAddNewResource(a1, v15, v13, v16, v4, *(a2 + 8) & 0xFFFFFFFFFFFFFFLL, a3, *a2, 0);
      }
    }

    goto LABEL_22;
  }

  v9 = 0;
  while (*(v7 + 4 * v9) != v4)
  {
    if (v8 == ++v9)
    {
      goto LABEL_6;
    }
  }

  *(v7 + 2 * v9 + 72) |= a3;
  return v9 | (8 * v5);
}

BOOL _ioAccelResourceListMergeGroup(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v4 = 0;
    v5 = 0;
    v27 = a3;
    while (1)
    {
      v6 = a2 + 88 * v4;
      v7 = *(v6 + 86);
      if (*(v6 + 86))
      {
        break;
      }

LABEL_31:
      v5 = ++v4 >= v27;
      if (v4 == v27)
      {
        return 1;
      }
    }

    v8 = 0;
    v9 = v6 + 72;
    while (1)
    {
      v10 = *(v6 + 4 * v8);
      v11 = *(v6 + 24 + 8 * v8);
      v12 = *(v9 + 2 * v8);
      v13 = *(a1 + 2 * v10);
      if (v13 != 0xFFFF)
      {
        v14 = *(a1 + 512);
        v15 = v14 + 88 * *(a1 + 2 * v10);
        v16 = *(v15 + 86);
        if (*(v15 + 86))
        {
          v17 = 0;
          while (*(v15 + 4 * v17) != v10)
          {
            if (v16 == ++v17)
            {
              goto LABEL_10;
            }
          }

          *(v15 + 2 * v17 + 72) |= v12;
          v20 = v17 | (8 * v13);
          goto LABEL_29;
        }

LABEL_10:
        v18 = *(v15 + 84);
        if (v16 <= 5 && v18 == 0xFFFF)
        {
          v19 = a1;
LABEL_13:
          v20 = ioAccelResourceGroupMergeNewResource(v19, v15, v13, v16, v10, v11, v12);
          goto LABEL_29;
        }

        v21 = (v14 + 88 * *(a1 + 2 * v10) + 84);
        while (v18 != 0xFFFF)
        {
          v22 = v18;
          v23 = v21;
          v15 = v14 + 88 * v18;
          v16 = *(v15 + 86);
          if (*(v15 + 86))
          {
            v24 = 0;
            while (*(v15 + 4 * v24) != v10)
            {
              if (v16 == ++v24)
              {
                goto LABEL_20;
              }
            }

            *v21 = *(v15 + 84);
            *(v15 + 84) = v13;
            *(a1 + 2 * v10) = v22;
            *(v15 + 2 * v24 + 72) |= v12;
            v20 = v24 | (8 * v22);
            goto LABEL_29;
          }

LABEL_20:
          v21 = (v15 + 84);
          v18 = *(v15 + 84);
          if (v16 <= 5 && v18 == 0xFFFF)
          {
            *v23 = -1;
            *(v15 + 84) = v13;
            *(a1 + 2 * v10) = v22;
            v19 = a1;
            LODWORD(v13) = v22;
            goto LABEL_13;
          }
        }
      }

      v20 = ioAccelResourceListMergeNewResource(a1, *(v6 + 4 * v8), *(v6 + 24 + 8 * v8), *(v9 + 2 * v8));
LABEL_29:
      if (v20 == -1)
      {
        return v5;
      }

      if (++v8 == v7)
      {
        goto LABEL_31;
      }
    }
  }

  return 1;
}

__n128 IOAccelResourceListReset(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  *(a1 + 512) = a2;
  *(a1 + 536) = a3 / 0x58;
  if (a4)
  {
    *(a1 + 520) = *(a1 + 528);
    *(a1 + 540) = 0;
    result.n128_u64[0] = -1;
    result.n128_u64[1] = -1;
    *a1 = result;
    *(a1 + 16) = result;
    *(a1 + 32) = result;
    *(a1 + 48) = result;
    *(a1 + 64) = result;
    *(a1 + 80) = result;
    *(a1 + 96) = result;
    *(a1 + 112) = result;
    *(a1 + 128) = result;
    *(a1 + 144) = result;
    *(a1 + 160) = result;
    *(a1 + 176) = result;
    *(a1 + 192) = result;
    *(a1 + 208) = result;
    *(a1 + 224) = result;
    *(a1 + 240) = result;
    *(a1 + 256) = result;
    *(a1 + 272) = result;
    *(a1 + 288) = result;
    *(a1 + 304) = result;
    *(a1 + 320) = result;
    *(a1 + 336) = result;
    *(a1 + 352) = result;
    *(a1 + 368) = result;
    *(a1 + 384) = result;
    *(a1 + 400) = result;
    *(a1 + 416) = result;
    *(a1 + 432) = result;
    *(a1 + 448) = result;
    *(a1 + 464) = result;
    *(a1 + 480) = result;
    *(a1 + 496) = result;
  }

  return result;
}

uint64_t IOAccelResourceListShowResources(uint64_t result)
{
  v1 = *(result + 544);
  if (v1)
  {
    v2 = 0;
    v3 = *(result + 512);
    v4 = v3;
    do
    {
      v5 = v3 + 88 * v2;
      v6 = *(v5 + 86);
      if (*(v5 + 86))
      {
        v7 = 0;
        do
        {
          result = printf("Resource at %d(%d,%d) is %08x\n", (8 * v2) | v7, v2, v7, *(v4 + 4 * v7));
          ++v7;
        }

        while (v6 != v7);
      }

      ++v2;
      v4 += 88;
    }

    while (v2 != v1);
  }

  return result;
}

uint64_t ioAccelResourceGroupAddNewResource(uint64_t a1, uint64_t a2, int a3, unsigned int a4, int a5, unint64_t a6, __int16 a7, uint64_t a8, char a9)
{
  if ((a9 & 1) == 0)
  {
    v11 = *(a1 + 520);
    v12 = v11 >= a6;
    v13 = v11 - a6;
    if (!v12)
    {
      *(a1 + 520) = 0;
      return 0xFFFFFFFFLL;
    }

    *(a1 + 520) = v13;
    if (v13 > *(a1 + 528))
    {
      __assert_rtn("ioAccelResourceGroupAddNewResource", "IOAccelResourceList.c", 52, "l->remainingBytes <= l->threshold");
    }
  }

  *(a2 + 4 * a4) = a5;
  *(a2 + 8 * a4 + 24) = a6;
  *(a2 + 2 * a4 + 72) = a7;
  *(a2 + 86) = a4 + 1;
  ++*(a1 + 540);
  ++*(a1 + 548);
  if (a8)
  {
    v15 = *(a1 + 560);
    IOSurfaceBindAccel();
  }

  return a4 | (8 * a3);
}

uint64_t ioAccelResourceListAddNewGroupAndResource(uint64_t a1, int a2, unint64_t a3, __int16 a4, uint64_t a5, char a6)
{
  v7 = *(a1 + 544);
  if (v7 >= 0xFFFE)
  {
    abort();
  }

  if (v7 >= *(a1 + 536))
  {
    (*(a1 + 568))(*(a1 + 576));
    v7 = *(a1 + 544);
    if (v7 >= *(a1 + 536))
    {
      __assert_rtn("ioAccelResourceListAddNewGroupAndResource", "IOAccelResourceList.c", 92, "l->numResourceGroups < l->capacity");
    }
  }

  *(a1 + 544) = v7 + 1;
  v13 = *(a1 + 512) + 88 * v7;
  *(v13 + 86) = 0;
  *(v13 + 84) = *(a1 + 2 * a2);
  *(a1 + 2 * a2) = v7;
  return ioAccelResourceGroupAddNewResource(a1, v13, v7, 0, a2, a3, a4, a5, a6);
}

uint64_t ioAccelResourceGroupMergeNewResource(uint64_t a1, uint64_t a2, int a3, unsigned int a4, int a5, unint64_t a6, __int16 a7)
{
  v7 = *(a1 + 520);
  v8 = v7 >= a6;
  v9 = v7 - a6;
  if (v8)
  {
    *(a1 + 520) = v9;
    if (v9 > *(a1 + 528))
    {
      __assert_rtn("ioAccelResourceGroupMergeNewResource", "IOAccelResourceList.c", 229, "l->remainingBytes <= l->threshold");
    }

    *(a2 + 4 * a4) = a5;
    *(a2 + 8 * a4 + 24) = a6;
    *(a2 + 2 * a4 + 72) = a7;
    *(a2 + 86) = a4 + 1;
    ++*(a1 + 540);
    ++*(a1 + 548);
    return a4 | (8 * a3);
  }

  else
  {
    *(a1 + 520) = 0;
    return 0xFFFFFFFFLL;
  }
}

uint64_t ioAccelResourceListMergeNewResource(uint64_t a1, int a2, unint64_t a3, __int16 a4)
{
  v5 = *(a1 + 544);
  if (v5 >= 0xFFFE)
  {
    abort();
  }

  if (v5 >= *(a1 + 536))
  {
    (*(a1 + 568))(*(a1 + 576));
    v5 = *(a1 + 544);
    if (v5 >= *(a1 + 536))
    {
      __assert_rtn("ioAccelResourceListMergeNewResource", "IOAccelResourceList.c", 258, "l->numResourceGroups < l->capacity");
    }
  }

  *(a1 + 544) = v5 + 1;
  v9 = *(a1 + 512) + 88 * v5;
  *(v9 + 86) = 0;
  *(v9 + 84) = *(a1 + 2 * a2);
  *(a1 + 2 * a2) = v5;

  return ioAccelResourceGroupMergeNewResource(a1, v9, v5, 0, a2, a3, a4);
}

void IOAccelCLContextRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void IOAccelVideoContextRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t __IOAccelMemoryInfoRegisterAPICollectionBlock_block_invoke_2()
{
  pthread_mutex_lock(&ioaccel_collection_block_mutex);
  if (!ioaccel_memlist_connection)
  {
    ioaccel_memlist_connection = xpc_connection_create_mach_service("com.apple.gpumemd.source", 0, 2uLL);
    xpc_connection_set_event_handler(ioaccel_memlist_connection, &__block_literal_global_10);
    xpc_connection_resume(ioaccel_memlist_connection);
    v0 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v0, "CheckIn", 1);
    xpc_connection_send_message(ioaccel_memlist_connection, v0);
    xpc_release(v0);
  }

  return pthread_mutex_unlock(&ioaccel_collection_block_mutex);
}

uint64_t IOAccelMemoryInfoDeregisterAPICollectionBlock(const void **a1)
{
  pthread_mutex_lock(&ioaccel_collection_block_mutex);
  _Block_release(*a1);
  *a1 = 0;

  return pthread_mutex_unlock(&ioaccel_collection_block_mutex);
}

uint64_t __launchMemlistConnection_block_invoke(uint64_t a1, void *a2)
{
  pthread_mutex_lock(&ioaccel_collection_block_mutex);
  if (MEMORY[0x259C1E2C0](a2) == MEMORY[0x277D86480])
  {
    if (ioaccel_memlist_connection)
    {
      xpc_connection_cancel(ioaccel_memlist_connection);
      xpc_release(ioaccel_memlist_connection);
      ioaccel_memlist_connection = 0;
    }
  }

  else
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    for (i = 0; i != 16; ++i)
    {
      v5 = ioaccel_collection_blocks[i];
      if (v5)
      {
        v6 = (*(v5 + 16))();
        if (v6)
        {
          v7 = v6;
          v13.length = CFArrayGetCount(v6);
          v13.location = 0;
          CFArrayAppendArray(Mutable, v7, v13);
          CFRelease(v7);
        }
      }
    }

    v8 = _CFXPCCreateXPCObjectFromCFObject();
    CFRelease(Mutable);
    reply = xpc_dictionary_create_reply(a2);
    xpc_dictionary_set_value(reply, "Payload", v8);
    xpc_release(v8);
    remote_connection = xpc_dictionary_get_remote_connection(a2);
    xpc_connection_send_message(remote_connection, reply);
    xpc_release(reply);
  }

  return pthread_mutex_unlock(&ioaccel_collection_block_mutex);
}

void IOAccelDeviceCreateWithAPIProperty_cold_1(int a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&dword_2548EA000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Failed to create an IOAccelDevice... IOServiceOpen returned kIOReturn(0x%X)", v2, 8u);
  v1 = *MEMORY[0x277D85DE8];
}