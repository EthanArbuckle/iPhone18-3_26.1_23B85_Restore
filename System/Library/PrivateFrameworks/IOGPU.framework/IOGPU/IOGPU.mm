uint64_t IOGPUDeviceGetNextGlobalTraceID(uint64_t a1)
{
  do
  {
    v2 = *(a1 + 152);
    v3 = *(a1 + 144);
    v4 = v3;
    atomic_compare_exchange_strong((a1 + 152), &v4, 0);
    if (v4 == v3)
    {
      outputStructCnt = 16;
      outputStruct = 0;
      v11 = 0;
      if (IOConnectCallStructMethod(*(a1 + 20), 5u, 0, 0, &outputStruct, &outputStructCnt))
      {
        *(a1 + 136) = 1;
        v5 = 0x100000000;
        v6 = 1;
      }

      else
      {
        v6 = outputStruct;
        if (!outputStruct)
        {
          IOGPUDeviceGetNextGlobalTraceID_cold_1();
        }

        *(a1 + 136) = outputStruct;
        v5 = v11;
      }

      *(a1 + 144) = v5;
      *(a1 + 152) = v6;
    }

    else
    {
      *(a1 + 144) = v4;
        ;
      }
    }

    result = v2 + 1;
    v8 = v2;
    atomic_compare_exchange_strong((a1 + 152), &v8, v2 + 1);
  }

  while (v8 != v2);
  return result;
}

uint64_t IOGPUDeviceTraceObjectLabel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = kdebug_trace_string();
  if (v6 != -1)
  {
    v7 = v6;
    kdebug_trace();
    return v7;
  }

  return a5;
}

void *IOGPUMetalDeviceShmemPoolCreateShmem(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 24));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2 + 1;
    v4 = v2[2];
    v5 = v2[3];
    if (v4)
    {
      *(v4 + 24) = v5;
      v6 = v2[2];
      v5 = v2[3];
    }

    else
    {
      v6 = 0;
      *(a1 + 16) = v5;
    }

    *v5 = v6;
    --*(a1 + 28);
    v2[2] = 0;
    v2[3] = 0;
    os_unfair_lock_unlock((a1 + 24));
    goto LABEL_8;
  }

  os_unfair_lock_unlock((a1 + 24));
  v7 = [objc_alloc(*(a1 + 32)) initWithDevice:*(a1 + 40) shmemSize:*(a1 + 48) shmemType:*(a1 + 52)];
  v2 = v7;
  if (v7)
  {
    v3 = (v7 + 8);
    *(a1 + 56) += *(v7 + 132);
LABEL_8:
    *v3 = a1;
    v8 = a1;
  }

  return v2;
}

IOGPUMetalCommandBufferStorage *IOGPUMetalCommandBufferStoragePoolCreateStorage(uint64_t a1, uint64_t a2, int a3)
{
  os_unfair_lock_lock((a1 + 16));
  Ext = *a1;
  if (!*a1)
  {
    os_unfair_lock_unlock((a1 + 16));
    Ext = IOGPUMetalCommandBufferStorageCreateExt(*(a1 + 32), *(a1 + 40), a2, a3);
    if (!Ext)
    {
      return Ext;
    }

    goto LABEL_13;
  }

  var0 = Ext->var2.var0;
  var1 = Ext->var2.var1;
  p_var1 = &var0->var2.var1;
  if (!var0)
  {
    p_var1 = (a1 + 8);
  }

  *p_var1 = var1;
  *var1 = var0;
  --*(a1 + 20);
  Ext->var2.var0 = 0;
  Ext->var2.var1 = 0;
  os_unfair_lock_unlock((a1 + 16));
  *&Ext->var31 = a2;
  var20 = Ext->var20;
  if (a3)
  {
    if (var20)
    {
      goto LABEL_12;
    }

    v11 = *(*(a1 + 40) + 40);
    ResourceList = MTLResourceListPoolCreateResourceList();
  }

  else
  {
    if (!var20)
    {
      goto LABEL_12;
    }

    MTLResourceListRelease();
    ResourceList = 0;
  }

  Ext->var20 = ResourceList;
LABEL_12:
  if ((_iogpuMetalCommandBufferStorageSetupShmems(Ext, *(a1 + 40)) & 1) == 0)
  {
    _iogpuMetalCommandBufferStorageFree(Ext);
    return 0;
  }

LABEL_13:
  Ext->var1 = a1;
  LOBYTE(Ext[1].var3) = 0;
  return Ext;
}

void IOGPUMetalCommandBufferStorageBeginKernelCommands(uint64_t a1, int a2)
{
  v4 = *(a1 + 816);
  if (v4)
  {
    v5 = a2 - *(a1 + 40);
    goto LABEL_11;
  }

  v6 = *(a1 + 832);
  if (v6 != -1)
  {
    if (!v6)
    {
      v4 = *(a1 + 128);
      *(*(a1 + 120) + 12) = v4 - *(a1 + 120);
      *(a1 + 808) = v4;
      *(a1 + 120) = 0;
      *(a1 + 128) = 0u;
      *(a1 + 848) = 0u;
      goto LABEL_8;
    }

    MTLReleaseAssertionFailure();
  }

  v4 = *(a1 + 808);
LABEL_8:
  *(a1 + 816) = v4;
  *(a1 + 832) = 1;
  *(a1 + 824) = 0;
  if ((v4 + 48) >= *(a1 + 112))
  {
    IOGPUMetalCommandBufferStorageGrowSegmentList(a1);
    v4 = *(a1 + 816);
  }

  *v4 = *(a1 + 800);
  *(v4 + 8) = 0x4000000100000000;
  v5 = a2 - *(a1 + 40);
  *(v4 + 16) = v5;
LABEL_11:
  v7 = *(a1 + 824);
  v8 = *(a1 + 828);
  if (v8)
  {
    if (*(v4 + 8 * (v8 - 1) + 20) == v5)
    {
      return;
    }

    ++v7;
  }

  if (v4 + 8 * (v7 + 1) + 16 >= *(a1 + 112))
  {
    IOGPUMetalCommandBufferStorageGrowSegmentList(a1);
    v4 = *(a1 + 816);
  }

  *(v4 + 8 * v7 + 16) = v5;
  *(a1 + 824) = v7;
}

uint64_t _ioGPUResourceListAddResourceEntry(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFLL) + 1023;
  if ((a4 & 1) == 0)
  {
    v8 = *(a1 + 520);
    if (v8 < (v7 & 0x1FFFFFFFFFFFC00))
    {
      *(a1 + 520) = 0;
      return 0xFFFFFFFFLL;
    }

    *(a1 + 520) = v8 - (v7 & 0x1FFFFFFFFFFFC00);
  }

  v10 = *(a1 + 500);
  if (*(a1 + 544) >= *(a1 + 536) && v10 == 0)
  {
    (*(a1 + 568))(*(a1 + 576));
    if (*(a1 + 544) >= *(a1 + 536))
    {
      __assert_rtn("_ioGPUResourceListAddResourceEntry", "IOGPUResourceList.m", 362, "l->numResourceGroups < l->capacity");
    }
  }

  v12 = *(a1 + 504);
  v13 = v10 | (8 * v12);
  v14 = *(a2 + 16) & 0xFFFFFFLL | (a3 << 48) | ((*&v13 & 0xFFFFFFLL) << 24);
  if ((ioGPUResourceListAddHashValue(a1, v14) & 1) == 0)
  {
    do
    {
      ioGPUResourceListRebuild(a1);
    }

    while (!ioGPUResourceListAddHashValue(a1, v14));
  }

  if (!v10)
  {
    ++*(a1 + 544);
  }

  v15 = *(a1 + 512) + (v12 << 6);
  if ((v15 + 62) >= *(*(a1 + 576) + 112))
  {
    _ioGPUResourceListAddResourceEntryFault();
  }

  v16 = (v15 + 4 * v10);
  *v16 = *(a2 + 16);
  v16[6] = v7 >> 10;
  *(v15 + 2 * v10 + 48) = a3;
  v17 = v10 + 1;
  *(v15 + 62) = v10 + 1;
  if (v10 == 5)
  {
    v17 = 0;
    *(a1 + 504) = *(a1 + 544);
  }

  *(a1 + 500) = v17;
  v18 = *(a1 + 540) + 1;
  *(a1 + 540) = v18;
  *(a1 + 548) = v18;
  if (*a2)
  {
    v19 = *(a1 + 560);
    IOSurfaceBindAccel();
  }

  return v13 & 0xFFFFFF;
}

uint64_t IOGPUResourceListAddResource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = (0x9E3779B97F4A7C15 * v3) >> -*(a1 + 488);
  v5 = *(*(a1 + 456) + 4 * v4);
  do
  {
    if (!v5)
    {
      return _ioGPUResourceListAddResourceEntry(a1, a2, a3, 0);
    }

    v6 = __clz(__rbit32(v5));
    v5 &= ~(1 << v6);
    v7 = (v6 + v4) & (*(a1 + 480) - 1);
    v8 = *(a1 + 472);
    v9 = *(v8 + 8 * v7);
  }

  while ((*(v8 + 8 * v7) & 0xFFFFFF) != v3);
  v10 = (HIWORD(v9) | a3);
  if (v10 != HIWORD(v9))
  {
    *(v8 + 8 * v7) = v9 & 0xFFFFFFFFFFFFLL | (v10 << 48);
    *(*(a1 + 512) + (((v9 >> 27) & 0x1FFFFF) << 6) + 2 * ((v9 >> 24) & 7) + 48) = HIWORD(v9) | a3;
    v9 = v9 & 0xFFFFFFFFFFFFLL | (v10 << 48);
  }

  return (v9 >> 24) & 0xFFFFFF;
}

uint64_t ioGPUResourceListAddHashValue(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a1 + 480) - 1;
  v4 = (0x9E3779B97F4A7C15 * (a2 & 0xFFFFFF)) >> -*(a1 + 488);
  v5 = *(a1 + 496);
  v6 = *(a1 + 464);
  v7 = *(v6 + 8 * (v4 >> 6)) | ~(-1 << v4);
  v8 = 64 - (v4 & 0x3F);
  v9 = v4 >> 6 << 6;
  v10 = (v4 >> 6) + 1;
  while (v7 == -1)
  {
    v2 += v8;
    v7 = *(v6 + 8 * (v10 & v5));
    v9 += 64;
    ++v10;
    v8 = 64;
    if (v2 >= 0x80)
    {
      return 0;
    }
  }

  v11 = __clz(__rbit64(~v7)) + v9;
  if ((v11 - v4) > 0x7F)
  {
    return 0;
  }

  while ((v11 - v4) >= 0x20)
  {
    v14 = v11 - 31;
    if (v11 < 0x1F)
    {
      v20 = v11;
    }

    else
    {
      v15 = *(a1 + 456);
      v16 = -31;
      while (1)
      {
        v14 = v11 + v16;
        v17 = (v11 + v16) & v3;
        v18 = *(v15 + 4 * v17);
        v19 = __clz(__rbit32(v18));
        v20 = v11 + v16 + v19;
        if (v18 && v20 < v11)
        {
          break;
        }

        if (!__CFADD__(v11, ++v16))
        {
          return 0;
        }
      }

      v22 = v18 & ~(1 << v19);
      v24 = *(a1 + 464);
      v23 = *(a1 + 472);
      v25 = *(v23 + 8 * (v20 & v3));
      *(v15 + 4 * v17) = v22 | (1 << -v16);
      *(v24 + 8 * (v5 & (v11 >> 6))) |= 1 << v11;
      *(v23 + 8 * (v11 & v3)) = v25;
    }

    v12 = 0;
    v26 = v14 == v11;
    v11 = v20;
    if (v26)
    {
      return v12;
    }
  }

  *(*(a1 + 472) + 8 * (v11 & v3)) = a2;
  v12 = 1;
  v27 = *(a1 + 464);
  *(*(a1 + 456) + 4 * v4) |= 1 << (v11 - v4);
  *(v27 + 8 * (v5 & (v11 >> 6))) |= 1 << v11;
  return v12;
}

void IOGPUMetalCommandBufferStorageBeginSegment(IOGPUMetalCommandBufferStorage *a1, int a2)
{
  var4 = a1->var4;
  if (!a1->var11)
  {
    _mtlIOGPUCommandBufferStorageBeginSegmentList(a1);
  }

  var13 = a1->var13;
  var10 = a1->var10;
  if (&var13[32] >= var10)
  {
    IOGPUMetalCommandBufferStorageGrowSegmentList(a1);
    var10 = a1->var10;
    var13 = a1->var13;
  }

  var12 = a1->var12;
  var12->var5 = 0;
  var12->var2 = 0;
  var12->var3 = 0;
  var12->var1 = a2 - var4;
  *&a1->var37 = 0u;
  IOGPUResourceListReset(&a1->var14, var12->var7, var10 - var13, 1);
  a1->var12->var0 = a1->var26;
}

void IOGPUResourceListReset(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a3 <= 0)
  {
    IOGPUResourceListReset_cold_2();
  }

  *(a1 + 512) = a2;
  *(a1 + 536) = a3 >> 6;
  if (a2 + (a3 & 0x3FFFFFFFC0uLL) > *(*(a1 + 576) + 112))
  {
    IOGPUResourceListReset_cold_1();
  }

  if (a4)
  {
    *(a1 + 520) = *(a1 + 528);
    *(a1 + 540) = 0;
    *(a1 + 504) = 0;
    *(a1 + 480) = 2048;
    *(a1 + 488) = 11;
    *(a1 + 496) = 31;
    bzero(*(a1 + 456), 0x2000uLL);
    v5 = *(a1 + 464);
    v6 = *(a1 + 480) >> 3;

    bzero(v5, v6);
  }
}

uint64_t IOGPUResourceCreate(mach_port_t *a1, void *a2, size_t a3)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a1[13];
  v17[0] = v6 + 88;
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = v17 - ((v6 + 103) & 0x1FFFFFFF0);
  v8 = *MEMORY[0x1E695E490];
  if (IOGPUResourceGetTypeID_onceToken != -1)
  {
    IOGPUResourceGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    bzero(v17 - ((v6 + 103) & 0x1FFFFFFF0), v6 + 88);
    CFRetain(a1);
    *(Instance + 16) = a1;
    *(Instance + 72) = 0;
    *(Instance + 48) = 0;
    if (IOConnectCallMethod(a1[5], 8u, 0, 0, a2, a3, 0, 0, v17 - ((v6 + 103) & 0x1FFFFFFF0), v17))
    {
      CFRelease(Instance);
      Instance = 0;
    }

    else
    {
      v12 = *(v7 + 1);
      *(Instance + 24) = v12;
      *(Instance + 40) = *(v7 + 5);
      v13 = *a2;
      *(Instance + 48) = *(v7 + 9);
      *(Instance + 52) = v13;
      if ((v13 & 0xF) != 0)
      {
        v14 = 0;
      }

      else
      {
        v14 = a2[9];
      }

      *(Instance + 32) = v14;
      v15 = *(v7 + 2);
      *(Instance + 112) = *(v7 + 3);
      v16 = *(v7 + 10);
      *(Instance + 56) = *v7;
      *(Instance + 64) = v16;
      *(Instance + 72) = v15;
      memcpy((Instance + 120), v7 + 88, v6);
      *(Instance + 88) = *(v7 + 56);
      *(Instance + 104) = *(v7 + 9);
      if ((*(a2 + 20) & 0x40) != 0 && !v13 && (*(v7 + 8) & 1) != 0 && v12)
      {
        bzero(v12, a2[9]);
      }

      *(Instance + 80) = *(v7 + 6);
      if (*MEMORY[0x1E69E99E8] && *(Instance + 24) && !a2[8])
      {
        (*MEMORY[0x1E69E99E8])(1677721616, *MEMORY[0x1E69E9A60], *(Instance + 40), 0);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return Instance;
}

uint64_t IOGPUResourceSetPurgeable(uint64_t a1, uintptr_t p2, _DWORD *a3)
{
  v5 = 0;
  result = IOConnectTrap3(*(*(a1 + 16) + 20), 3u, *(a1 + 48), p2, &v5);
  if (a3)
  {
    *a3 = v5;
  }

  return result;
}

uint64_t IOGPUDeviceGetAllocatedSize(uint64_t a1, uint64_t *output)
{
  v4 = *(a1 + 104);
  if (v4)
  {
    result = 0;
    *output = *v4;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6 = 1;
    *output = 0;
    return IOConnectCallScalarMethod(*(a1 + 20), 0x17u, 0, 0, output, &v6);
  }

  return result;
}

uint64_t IOGPUCommandQueueSubmitCommandBuffers(uint64_t a1, unsigned int a2, unsigned int a3, const void *a4, uintptr_t a5, _DWORD *a6)
{
  input[4] = *MEMORY[0x1E69E9840];
  v6 = 3758097090;
  if (a1 && CFGetTypeID(a1) == kIOGPUCommandQueueID)
  {
    v13 = *(a1 + 40);
    if (v13)
    {
      if (a4)
      {
        v14 = a3 << (*(a1 + 48) ^ 1);
        IOGPUNotificationQueueWillSubmit(v13, v14);
        if (a3 == 1 && a5 <= 0x40)
        {
          v6 = IOConnectTrap4(*(*(a1 + 16) + 20), 0, *(a1 + 24), a5, a4, a6);
        }

        else
        {
          v15 = *(a1 + 16);
          input[0] = *(a1 + 24);
          input[1] = a2;
          input[2] = a3;
          input[3] = a5;
          output = 0;
          outputCnt = 1;
          v6 = IOConnectCallMethod(*(v15 + 20), 0x19u, input, 4u, a4, a3 * a5, &output, &outputCnt, 0, 0);
          if (a6)
          {
            *a6 = output;
          }
        }

        if (v6)
        {
          IOGPUNotificationQueueDidSubmit(*(a1 + 40), v14);
        }
      }
    }

    else
    {
      v6 = 3758096385;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v6;
}

void IOGPUMetalCommandBufferStorageReset(uint64_t a1)
{
  _iogpuMetalCommandBufferStorageReleaseExtraResources(a1);
  v2 = *(a1 + 728);
  if (v2)
  {
    [v2 releaseAllObjectsAndReset];
  }

  v3 = *(a1 + 736);
  if (v3)
  {
    [v3 releaseAllObjectsAndReset];
  }

  v4 = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = *(a1 + 896 + 8 * v4);
    if (v7)
    {
      [v7 removeAllObjects];
    }

    v5 = 0;
    v4 = 1;
  }

  while ((v6 & 1) != 0);
  *(a1 + 888) = 0;
  *(a1 + 912) = 0;
  IOGPUMetalCommandBufferStorageReleaseDeviceShmems(a1);
  if (*(a1 + 768))
  {
    _iogpuMetalCommandBufferStorageReleaseCurrentResources(a1);
  }

  *(a1 + 776) = 0;
}

void IOGPUNotificationQueueDispatchAvailableCompletionNotifications(uint64_t a1)
{
  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  for (dataSize = 40; !IODataQueueDequeue(*(a1 + 32), &v3, &dataSize); dataSize = 40)
  {
    dispatch_semaphore_signal(*(a1 + 64));
    v2 = v3;
    (*(v3 + 16))(v3, *(&v3 + 1) * *algn_1ED5DB184 / _iogpuTimebaseInfo, v4 * *algn_1ED5DB184 / _iogpuTimebaseInfo, DWORD2(v4), v5);
    _Block_release(v2);
    v5 = 0;
    v3 = 0u;
    v4 = 0u;
  }

  IOGPUDeviceCheckAndLogSoftFaultCount(*(a1 + 16));
}

void __IOGPUNotificationQueueSetDispatchQueue_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 8)
  {
    dispatch_release(*(*(a1 + 40) + 72));
    *(*(a1 + 40) + 72) = 0;
    dispatch_release(*(*(a1 + 40) + 48));
    *(*(a1 + 40) + 48) = 0;
    dispatch_semaphore_signal(*(*(a1 + 40) + 56));
    v3 = *(a1 + 40);

    CFRelease(v3);
  }

  else if (a2 == 2)
  {
    dispatch_mach_msg_get_msg();
    (*(a1 + 32))(*(a1 + 40));
  }
}

void ioGPUResourceFinalize(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    if (*MEMORY[0x1E69E99E8])
    {
      v3 = *(a1 + 24);
      if (v3)
      {
        (*MEMORY[0x1E69E99E8])(32, *MEMORY[0x1E69E9A60], v3, *(a1 + 40), 0, 0);
      }
    }

    if (IOConnectTrap1(*(*(a1 + 16) + 20), 1u, v2) == -536870187)
    {
      ioGPUResourceFinalize_cold_1();
    }

    *(a1 + 48) = 0;
    *(a1 + 72) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 16) = 0;
  }
}

void IOGPUResourceRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void IOGPUDeviceCheckAndLogSoftFaultCount(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1 && *(v1 + 8) > *(a1 + 64))
  {
    os_unfair_lock_lock((a1 + 60));
    v3 = *(*(a1 + 104) + 8);
    if (v3 > *(a1 + 64) && (*(a1 + 64) = v3, v4 = mach_absolute_time(), v4 >= *(a1 + 72)))
    {
      *(a1 + 72) = *(a1 + 80) + v4;
      os_unfair_lock_unlock((a1 + 60));
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        IOGPUDeviceCheckAndLogSoftFaultCount_cold_1(v3);
      }
    }

    else
    {

      os_unfair_lock_unlock((a1 + 60));
    }
  }
}

uint64_t IOGPUMetalDeviceShmemUpdateTrimLevel(uint64_t result, uint64_t a2)
{
  v2 = *(result + 136);
  v3 = a2 - v2;
  if (a2 - v2 >= 0)
  {
    v4 = result;
    if (v3 < *(result + 132))
    {
      v5 = 0;
      v6 = *MEMORY[0x1E69E9AB8];
      v7 = ~*MEMORY[0x1E69E9AB8];
      v8 = (v3 + *MEMORY[0x1E69E9AB8]) & v7;
      v9 = *(result + 112);
      *(result + 112) = v9 + 1;
      v10 = -v9 < 0;
      v11 = -v9 & 7;
      v12 = v9 & 7;
      if (v10)
      {
        v13 = v12;
      }

      else
      {
        v13 = -v11;
      }

      *(result + 48 + 8 * v13) = v8;
      v14 = 0uLL;
      do
      {
        v14 = vbslq_s8(vcgtq_s64(*(result + 48 + v5), v14), *(result + 48 + v5), v14);
        v5 += 16;
      }

      while (v5 != 64);
      v15 = vextq_s8(v14, v14, 8uLL).u64[0];
      v16 = (v6 + 16 * *&vbsl_s8(vcgtd_s64(v14.i64[0], v15), *v14.i8, v15) / 0xAuLL) & v7;
      v17 = *(result + 40);
      v18 = v17 - v16 + 3;
      if (v17 >= v16)
      {
        v18 = v17 - v16;
      }

      v19 = v7 & (v18 >> 2);
      if (v19 <= 0x10000)
      {
        if (v8 <= v17)
        {
          return result;
        }
      }

      else
      {
        v20 = v17 - v16 - v19;
        result = madvise((v2 + v17 - v19), v19, 5);
        v8 = v20 + v16;
      }

      *(v4 + 40) = v8;
    }
  }

  return result;
}

void IOGPUMetalCommandBufferStorageDealloc(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    IOGPUMetalDeviceShmemUpdateTrimLevel(v2, *(a1 + 48));
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    IOGPUMetalDeviceShmemUpdateTrimLevel(v3, *(a1 + 808));
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    IOGPUMetalDeviceShmemUpdateTrimLevel(v4, *(a1 + 80));
  }

  IOGPUMetalCommandBufferStorageReset(a1);
  v5 = *(a1 + 8);
  if (!v5 || !IOGPUMetalCommandBufferStoragePoolReturnStorage(v5, a1))
  {

    _iogpuMetalCommandBufferStorageFree(a1);
  }
}

void IOGPUMetalCommandBufferStorageReleaseDeviceShmems(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    IOGPUMetalDeviceShmemRelease(v2);
    *(a1 + 32) = 0;
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    IOGPUMetalDeviceShmemRelease(v3);
    *(a1 + 96) = 0;
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    IOGPUMetalDeviceShmemRelease(v4);
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
  }

  v5 = *(a1 + 864);
  if (v5)
  {
    v6 = (a1 + 864);
    IOGPUMetalDeviceShmemRelease(v5);
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
  }
}

void IOGPUMetalDeviceShmemRelease(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2 + 2;
    *(a1 + 8) = 0;
    v8 = v2;
    os_unfair_lock_lock(v2 + 6);
    v4 = *(a1 + 132);
    if (v4 >= v3[10]._os_unfair_lock_opaque)
    {
      v6 = *&v3->_os_unfair_lock_opaque;
      *(a1 + 16) = *&v3->_os_unfair_lock_opaque;
      if (v6)
      {
        v7 = v6 + 6;
      }

      else
      {
        v7 = v3 + 2;
      }

      *&v7->_os_unfair_lock_opaque = a1 + 16;
      *&v3->_os_unfair_lock_opaque = a1;
      *(a1 + 24) = v3;
      ++v3[5]._os_unfair_lock_opaque;
    }

    else
    {
      *&v8[14]._os_unfair_lock_opaque -= v4;
    }

    os_unfair_lock_unlock(v3 + 4);
    v5 = v8;
  }

  else
  {
    v5 = a1;
  }
}

void IOGPUMetalPooledResourceRelease(void *a1)
{
  v2 = a1 + 38;
  v3 = a1[38];
  if (v3)
  {
    v8 = v3;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      IOGPUMetalPooledResourceRelease_cold_1();
    }

    *v2 = 0;
    os_unfair_lock_lock(v8 + 10);
    if (*(v2 + 8) == *(v8 + 22))
    {
      v4 = v8 + 24;
      v5 = *(v8 + 3);
      a1[39] = v5;
      if (v5)
      {
        v6 = (v5 + 320);
      }

      else
      {
        v6 = v8 + 32;
      }

      *v6 = a1 + 39;
      *v4 = a1;
      a1[40] = v4;
      ++*(v8 + 11);
      v2[3] = mach_absolute_time();
    }

    else
    {
      *(v8 + 12) -= [a1 allocatedSize];
    }

    os_unfair_lock_unlock(v8 + 10);
    v7 = v8;
  }

  else
  {
    v7 = a1;
  }
}

BOOL IOGPUMetalCommandBufferStoragePoolReturnStorage(uint64_t *a1, void *a2)
{
  a2[1] = 0;
  os_unfair_lock_lock(a1 + 4);
  v4 = *(a1 + 5);
  v5 = *(a1 + 7);
  if (v4 < v5)
  {
    v6 = *a1;
    a2[2] = *a1;
    if (v6)
    {
      v7 = (v6 + 24);
    }

    else
    {
      v7 = a1 + 1;
    }

    *v7 = a2 + 2;
    *a1 = a2;
    a2[3] = a1;
    *(a1 + 5) = v4 + 1;
  }

  v8 = v4 < v5;
  os_unfair_lock_unlock(a1 + 4);
  return v8;
}

uint64_t IOGPUResourceCreateAllocationIdentifierSet(uint64_t result, void *a2, void *a3)
{
  *a2 = *(result + 88);
  *a3 = *(result + 96);
  return result;
}

void *IOGPUResourceGetClientShared(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (IOGPUResourceGetTypeID_onceToken != -1)
    {
      IOGPUResourceGetTypeID_cold_1();
    }

    if (v2 == kIOGPUResourceID)
    {
      return v1[9];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void IOGPUMetalCommandBufferStorageFinalizeShmemHeader(IOGPUMetalCommandBufferStorage *a1)
{
  var32 = a1->var32;
  if (a1[1].var1)
  {
    v3 = 0;
    p_var2 = &a1[1].var2;
    v5 = 1;
    do
    {
      v6 = v5;
      v7 = *(&p_var2->var0 + v3);
      if (v7 && [v7 count])
      {
        v14[0] = 0;
        v14[1] = v14;
        v14[2] = 0x2020000000;
        v14[3] = a1[1].var1;
        v8 = *(&p_var2->var0 + v3);
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __IOGPUMetalCommandBufferStorageFinalizeShmemHeader_block_invoke;
        v13[3] = &unk_1E8362C68;
        v13[4] = v14;
        [v8 enumerateObjectsUsingBlock:v13];
        _Block_object_dispose(v14, 8);
      }

      v5 = 0;
      v3 = 1;
    }

    while ((v6 & 1) != 0);
  }

  var35 = a1->var35;
  if (var35 == 1)
  {
    var33 = a1->var33;
    v12 = LODWORD(a1->var34) + 1;
    var33->var0[2] = v12;
    a1->var32 = &var33->var0[2 * v12 + 4];
    LODWORD(a1->var35) = -1;
    a1->var33 = 0;
    goto LABEL_13;
  }

  if (!var35)
  {
    goto LABEL_11;
  }

  if (a1->var32 == a1->var9)
  {
    _mtlIOGPUCommandBufferStorageBeginSegmentList(a1);
LABEL_11:
    var12 = a1->var12;
    a1->var11->var2 = var12 - a1->var11;
    a1->var32 = var12;
    LODWORD(a1->var35) = -1;
    a1->var11 = 0;
    *&a1->var12 = 0u;
    *&a1->var37 = 0u;
  }

LABEL_13:
  var32->var2 |= 0x80000000;
}

void sub_1CA09A30C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 IOGPUMetalCommandBufferStorageAllocResourceAtIndex(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 792) <= a2)
  {
    IOGPUMetalCommandBufferStorageAllocResourceAtIndex_cold_1();
  }

  v4 = *(*(a1 + 784) + 8 * a2);
  if (!v4)
  {
    IOGPUMetalCommandBufferStorageAllocResourceAtIndex_cold_3();
  }

  v5 = *(a1 + 768) + (a2 << 6);
  v6 = *(v5 + 32);
  if (v6)
  {
    v7 = *(a1 + 744);
    v8 = *(a1 + 752);
    if (v7 >= v8)
    {
      v10 = 2 * v8;
      if (!v8)
      {
        v10 = 32;
      }

      *(a1 + 752) = v10;
      v9 = malloc_type_realloc(*(a1 + 760), 8 * v10, 0x80040B8603338uLL);
      *(a1 + 760) = v9;
      v7 = *(a1 + 744);
    }

    else
    {
      v9 = *(a1 + 760);
    }

    *(a1 + 744) = v7 + 1;
    v9[v7] = v6;
    v4 = *(*(a1 + 784) + 8 * a2);
  }

  PooledResource = IOGPUMetalResourcePoolCreatePooledResource(v4);
  if (!PooledResource)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      IOGPUMetalCommandBufferStorageAllocResourceAtIndex_cold_2();
    }

    abort();
  }

  v12 = PooledResource;
  if (MTLValidationEnabled())
  {
    -[__n128 setLabel:](v12, "setLabel:", [MEMORY[0x1E696AEC0] stringWithFormat:@"IOGPUMetalResourcePool (dbclass: %d)", a2]);
  }

  *(v5 + 32) = v12;
  v13 = v12[10].n128_u64[0];
  *(v5 + 8) = v13;
  *(v5 + 24) = v13;
  *(v5 + 16) = (v12[4].n128_u64[1] & 0xFFFFFFFFFFFFFFLL) + v13;
  *v5 = v12[6].n128_u64[1];
  result = v12[4];
  *(v5 + 56) = v12[5].n128_u64[0];
  *(v5 + 40) = result;
  return result;
}

void *IOGPUMetalResourcePoolCreatePooledResource(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 40));
  v2 = *(a1 + 88);
  v3 = *(a1 + 24);
  if (v3)
  {
    v5 = v3[39];
    v4 = v3[40];
    if (v5)
    {
      *(v5 + 320) = v4;
      v6 = v3[39];
      v4 = v3[40];
    }

    else
    {
      v6 = 0;
      *(a1 + 32) = v4;
    }

    *v4 = v6;
LABEL_13:
    v11 = v3 + 38;
    --*(a1 + 44);
    goto LABEL_14;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    v8 = v3[39];
    v7 = v3[40];
    if (v8)
    {
      *(v8 + 320) = v7;
      v9 = v3[39];
      v7 = v3[40];
    }

    else
    {
      v9 = 0;
      *(a1 + 16) = v7;
    }

    *v7 = v9;
    [v3 setPurgeableState:2];
    goto LABEL_13;
  }

  v10 = [objc_alloc(*(a1 + 48)) initWithDevice:*(a1 + 56) options:0 args:*(a1 + 64) argsSize:*(a1 + 72)];
  v3 = v10;
  if (v10)
  {
    [v10 setLabel:@"IOGPUMetalResourcePool"];
    v11 = v3 + 38;
    *(a1 + 96) += [v3 allocatedSize];
LABEL_14:
    *v11 = a1;
    *(v11 + 8) = v2;
    v12 = a1;
  }

  os_unfair_lock_unlock((a1 + 40));
  return v3;
}

dispatch_semaphore_t *IOGPUNotificationQueueWillSubmit(dispatch_semaphore_t *result, int a2)
{
  if (result)
  {
    v3 = result;
    result = CFGetTypeID(result);
    if (result == kIOGPUNotificationQueueID && a2 != 0)
    {
      do
      {
        result = dispatch_semaphore_wait(v3[8], 0xFFFFFFFFFFFFFFFFLL);
        --a2;
      }

      while (a2);
    }
  }

  return result;
}

uint64_t IOGPUMetalCommandBufferStorageEndKernelCommands(uint64_t result, int a2)
{
  v2 = *(result + 816);
  v3 = a2 - *(result + 40);
  v4 = *(result + 824);
  *(result + 828) = v4 + 1;
  *(v2 + 8 * v4 + 20) = v3;
  return result;
}

uint64_t IOGPUDeviceSetDisplayParams(uint64_t a1, uintptr_t p1, uintptr_t p2)
{
  if (a1 && (v3 = *(a1 + 20)) != 0)
  {
    return IOConnectTrap2(v3, 8u, p1, p2);
  }

  else
  {
    return 3758097088;
  }
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 8u);
}

void OUTLINED_FUNCTION_1(os_unfair_lock_s *a1)
{
  v2 = a1 + 204;

  os_unfair_lock_lock(v2);
}

void *IOGPUResourceGetDataBytes(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (IOGPUResourceGetTypeID_onceToken != -1)
    {
      IOGPUResourceGetTypeID_cold_1();
    }

    if (v2 == kIOGPUResourceID)
    {
      return v1[3];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id IOGPUMetalSuballocatorAllocate(uint64_t a1, uint64_t *a2, unint64_t a3, unint64_t *a4, uint64_t a5, uint64_t a6)
{
  if (!a1 || !a2 || !a4)
  {
    IOGPUMetalSuballocatorAllocate_cold_1();
  }

  v12 = *a4;
  v13 = *a4 >> 4;
  v14 = (*a4 >> 8) & 3;
  if (v14 == 2)
  {
    LODWORD(v14) = 0;
    *a4 = v12 & 0xFFFFFFFFFFFFFDFFLL;
  }

  v15 = v13 <= 2 && ((v14 | v12) & 0xE) == 0;
  v16 = ((((v12 >> 14) & 0x10) + 4 * (v12 & 0xF)) | v13) + 8 * v14;
  if (!v15)
  {
    v16 = 0xFFFF;
  }

  *(a2 + 9) = v16;
  if (*a2 > 0x20000)
  {
    return 0;
  }

  v17 = 0;
  if (a3 <= 0x20000 && *a2 && (v16 & 0x8000) == 0)
  {
    v18 = 256;
    if (a3 > 0x100)
    {
      v18 = a3;
    }

    v98 = v18;
    v19 = a1 + 88 * v16;
    os_unfair_lock_lock((v19 + 80));
    v20 = *(v19 + 72);
    v21 = *a4;
    if (v20 == -1)
    {
      *(v19 + 72) = v21;
    }

    else if (v20 != v21)
    {
      __assert_rtn("IOGPUMetalSuballocatorAllocate", "IOGPUMetalSuballocator.mm", 191, "false && Different MTLResourceOptions used for the same heap index, this is not supported");
    }

    v94 = a1;
    v95 = a4;
    v22 = *a2;
    v96 = a6;
    v97 = *a2;
    if (a5)
    {
      v23 = *v19;
      if (*(v19 + 8) != *v19)
      {
        v24 = 0;
        v25 = 0;
        while (1)
        {
          v26 = &v23[64 * v24];
          if ([*v26 gpuAddress] == a5)
          {
            [*v26 gpuAddress];
            v27 = a2[1];
            if (MTLRangeAllocatorAllocateRange())
            {
              break;
            }
          }

          v24 = ++v25;
          v23 = *v19;
          if (v25 >= ((*(v19 + 8) - *v19) >> 6))
          {
            goto LABEL_48;
          }
        }

        MaxFreeSize = MTLRangeAllocatorGetMaxFreeSize();
        v46 = MaxFreeSize;
        v47 = *(v26 + 14);
        if (v47 != MaxFreeSize)
        {
          if (v47 <= MaxFreeSize)
          {
            __assert_rtn("IOGPUMetalSuballocatorAllocate", "IOGPUMetalSuballocator.mm", 215, "newFreeSize < buffer.freeSize && Buffer cannot have more space as a result of allocation");
          }

          v48 = (v19 + 56);
          v49 = *(v19 + 56);
          if (v49)
          {
            v50 = (v19 + 56);
            do
            {
              v51 = *(v49 + 28);
              v32 = v51 >= v97;
              v52 = v51 < v97;
              if (v32)
              {
                v50 = v49;
              }

              v49 = *(v49 + 8 * v52);
            }

            while (v49);
            if (v50 != v48)
            {
              while (*(v50 + 16) != v25)
              {
                v53 = v50[1];
                if (v53)
                {
                  do
                  {
                    v54 = v53;
                    v53 = *v53;
                  }

                  while (v53);
                }

                else
                {
                  do
                  {
                    v54 = v50[2];
                    v15 = *v54 == v50;
                    v50 = v54;
                  }

                  while (!v15);
                }

                v50 = v54;
                if (v54 == v48)
                {
                  goto LABEL_113;
                }
              }

              std::__tree<std::__value_type<unsigned int,short>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,short>,std::less<unsigned int>,true>,IOGPUMetalSuballocatorHeap::Allocator<std::__value_type<unsigned int,short>>>::__remove_node_pointer((v19 + 48), v50);
              free(v50);
            }
          }

LABEL_113:
          *(v26 + 14) = v46;
          WORD2(v101) = v25;
          LODWORD(v101) = v46;
          std::__tree<std::__value_type<unsigned int,short>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,short>,std::less<unsigned int>,true>,IOGPUMetalSuballocatorHeap::Allocator<std::__value_type<unsigned int,short>>>::__emplace_multi<std::pair<unsigned int,short>>(v19 + 48, &v101);
          LODWORD(v22) = v97;
        }

        v83 = a2[1];
        v84 = *(v26 + 13);
        if (v83 >= v84)
        {
          *a4 |= 0x10000uLL;
        }

        v85 = v83 + v22;
        if (v84 > v85)
        {
          v85 = v84;
        }

        ++*(v26 + 12);
        *(v26 + 13) = v85;
        *(a2 + 8) = v25;
LABEL_119:
        v17 = *v26;
        goto LABEL_120;
      }
    }

    else
    {
      v29 = (v19 + 56);
      v28 = *(v19 + 56);
      if (v28)
      {
        v93 = (v19 + 48);
        v30 = (v19 + 56);
        do
        {
          v31 = *(v28 + 28);
          v32 = v31 >= v22;
          v33 = v31 < v22;
          if (v32)
          {
            v30 = v28;
          }

          v28 = *(v28 + 8 * v33);
        }

        while (v28);
        if (v30 != v29)
        {
          while (1)
          {
            v34 = *(v30 + 16);
            if (v34 >= (*(v19 + 8) - *v19) >> 6)
            {
              __assert_rtn("IOGPUMetalSuballocatorAllocate", "IOGPUMetalSuballocator.mm", 253, "bufferIndex < heap.buffers.size()");
            }

            v26 = (*v19 + (v34 << 6));
            if (!*(v26 + 12))
            {
              v87 = 255;
              v88 = "buffer.isAlive() && Buffer index corrupt: refers to dead item";
              goto LABEL_127;
            }

            v35 = *(v26 + 14);
            if (MTLRangeAllocatorGetMaxFreeSize() != v35)
            {
              break;
            }

            LODWORD(v22) = v97;
            if (*(v26 + 14) < v97)
            {
              v87 = 257;
              v88 = "buffer.freeSize >= bytes && Bad primary buffer selected";
LABEL_127:
              __assert_rtn("IOGPUMetalSuballocatorAllocate", "IOGPUMetalSuballocator.mm", v87, v88);
            }

            v101 = 0;
            if (MTLRangeAllocatorAllocate())
            {
              v55 = MTLRangeAllocatorGetMaxFreeSize();
              v56 = v55;
              v57 = *(v26 + 14);
              if (v57 != v55)
              {
                if (v57 <= v55)
                {
                  __assert_rtn("IOGPUMetalSuballocatorAllocate", "IOGPUMetalSuballocator.mm", 271, "newFreeSize < buffer.freeSize && Buffer cannot have more space as a result of allocation");
                }

                std::__tree<std::__value_type<unsigned int,short>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,short>,std::less<unsigned int>,true>,IOGPUMetalSuballocatorHeap::Allocator<std::__value_type<unsigned int,short>>>::__remove_node_pointer(v93, v30);
                free(v30);
                *(v26 + 14) = v56;
                v100 = v34;
                v99 = v56;
                std::__tree<std::__value_type<unsigned int,short>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,short>,std::less<unsigned int>,true>,IOGPUMetalSuballocatorHeap::Allocator<std::__value_type<unsigned int,short>>>::__emplace_multi<std::pair<unsigned int,short>>(v93, &v99);
                LODWORD(v22) = v97;
              }

              v58 = v101;
              v59 = v58 - [*v26 gpuAddress];
              v60 = v59;
              v61 = *(v26 + 13);
              if (v59 >= v61)
              {
                *v95 |= 0x10000uLL;
              }

              v62 = v59 + v22;
              if (v61 > v62)
              {
                v62 = v61;
              }

              ++*(v26 + 12);
              *(v26 + 13) = v62;
              *(a2 + 8) = v34;
              a2[1] = v60;
              goto LABEL_119;
            }

            if (a3 <= 0x100)
            {
              __assert_rtn("IOGPUMetalSuballocatorAllocate", "IOGPUMetalSuballocator.mm", 301, "align > kMinAlignment && Buffer index corrupt: expected index to be suitable");
            }

            v36 = v30[1];
            if (v36)
            {
              do
              {
                v37 = v36;
                v36 = *v36;
              }

              while (v36);
            }

            else
            {
              do
              {
                v37 = v30[2];
                v15 = *v37 == v30;
                v30 = v37;
              }

              while (!v15);
            }

            v30 = v37;
            if (v37 == v29)
            {
              goto LABEL_48;
            }
          }

          v87 = 256;
          v88 = "buffer.freeSize == MTLRangeAllocatorGetMaxFreeSize(&buffer.allocator, kMinAlignment) && Buffer index corrupt: allocator state doesn't match";
          goto LABEL_127;
        }
      }
    }

LABEL_48:
    v38 = *(v19 + 32);
    if (*(v19 + 24) == v38)
    {
      v43 = *v19;
      v42 = *(v19 + 8);
      v44 = &v42[-*v19];
      if (v44 > 0xFFC0)
      {
        goto LABEL_111;
      }

      if (v43 == v42)
      {
        std::vector<IOGPUMetalSuballocatorHeap::Buffer,IOGPUMetalSuballocatorHeap::Allocator<IOGPUMetalSuballocatorHeap::Buffer>>::reserve(v19, 0x80uLL);
        v41 = v95;
        std::vector<short,IOGPUMetalSuballocatorHeap::Allocator<short>>::reserve(v19 + 24, 0x80uLL);
        v43 = *v19;
        v42 = *(v19 + 8);
        v44 = &v42[-*v19];
      }

      else
      {
        v41 = v95;
      }

      v63 = v44 >> 6;
      LOWORD(v99) = v44 >> 6;
      v64 = *(v19 + 16);
      if (v42 >= v64)
      {
        v66 = v63 + 1;
        if ((v63 + 1) >> 58)
        {
          std::vector<NSObject *>::__throw_length_error[abi:ne200100]();
        }

        v67 = v64 - v43;
        if (v67 >> 5 > v66)
        {
          v66 = v67 >> 5;
        }

        if (v67 >= 0x7FFFFFFFFFFFFFC0)
        {
          v68 = 0x3FFFFFFFFFFFFFFLL;
        }

        else
        {
          v68 = v66;
        }

        if (v68)
        {
          v69 = IOGPUMetalSuballocatorHeap::Allocator<IOGPUMetalSuballocatorHeap::Buffer>::allocate(v19, v68);
        }

        else
        {
          v69 = 0;
        }

        v70 = &v69[64 * v63];
        v71 = &v69[64 * v68];
        *(v70 + 2) = 0u;
        *(v70 + 3) = 0u;
        *v70 = 0u;
        *(v70 + 1) = 0u;
        v65 = v70 + 64;
        v72 = *(v19 + 8) - *v19;
        v73 = &v70[-v72];
        memcpy(&v70[-v72], *v19, v72);
        v74 = *v19;
        *v19 = v73;
        *(v19 + 8) = v65;
        *(v19 + 16) = v71;
        if (v74)
        {
          free(v74);
        }

        LODWORD(v22) = v97;
      }

      else
      {
        *(v42 + 2) = 0u;
        *(v42 + 3) = 0u;
        *v42 = 0u;
        *(v42 + 1) = 0u;
        v65 = v42 + 64;
      }

      *(v19 + 8) = v65;
      *(v65 - 4) = 0;
      v40 = *v19;
      v39 = v44 << 42 >> 48;
    }

    else
    {
      LOWORD(v99) = *(v38 - 2);
      v39 = v99;
      *(v19 + 32) = v38 - 2;
      v40 = *v19;
      if (v39 >= (*(v19 + 8) - *v19) >> 6)
      {
        __assert_rtn("IOGPUMetalSuballocatorAllocate", "IOGPUMetalSuballocator.mm", 330, "bufferIndex < heap.buffers.size()");
      }

      v41 = v95;
    }

    v75 = &v40[64 * v39];
    if (*(v75 + 12))
    {
      __assert_rtn("IOGPUMetalSuballocatorAllocate", "IOGPUMetalSuballocator.mm", 333, "!buffer.isAlive() && Alive buffer found in dead slots");
    }

    if (a5)
    {
      v76 = objc_opt_new();
      [v76 setPinnedGPUAddress:a5];
      [v76 setLength:v96];
      [v76 setResourceOptions:*(v19 + 72)];
      *v75 = [*(v94 + 2816) newBufferWithDescriptor:v76];

      if (*v75)
      {
        [*v75 gpuAddress];
        MTLRangeAllocatorInitWithStartRange();
        [*v75 gpuAddress];
        v77 = a2[1];
        if (MTLRangeAllocatorAllocateRange())
        {
          *(a2 + 8) = v99;
          *(v75 + 12) = 1;
          v78 = *(a2 + 2);
          v79 = v96 - ((v22 + 255) & 0xFFFFFF00) - v78;
          if (v78 > v79)
          {
            v79 = *(a2 + 2);
          }

          *(v75 + 14) = v79;
          v80 = MTLRangeAllocatorGetMaxFreeSize();
          if (v80 == *(v75 + 14))
          {
            LODWORD(v101) = v80;
            WORD2(v101) = (v80 | (v99 << 32)) >> 32;
            std::__tree<std::__value_type<unsigned int,short>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,short>,std::less<unsigned int>,true>,IOGPUMetalSuballocatorHeap::Allocator<std::__value_type<unsigned int,short>>>::__emplace_multi<std::pair<unsigned int,short>>(v19 + 48, &v101);
            *v41 |= 0x10000uLL;
            LODWORD(v22) = *(a2 + 2) + v22;
LABEL_109:
            *(v75 + 13) = v22;
            v17 = *v75;
LABEL_120:
            os_unfair_lock_unlock((v19 + 80));
            return v17;
          }

          v89 = "MTLRangeAllocatorGetMaxFreeSize(&buffer.allocator, kMinAlignment) == buffer.freeSize && Bad initial free size computed";
          v90 = 363;
        }

        else
        {
          v89 = "false && Failed to suballocate from fresh block";
          v90 = 356;
        }

        __assert_rtn("IOGPUMetalSuballocatorAllocate", "IOGPUMetalSuballocator.mm", v90, v89);
      }
    }

    else
    {
      v81 = objc_opt_new();
      [v81 setLength:0x20000];
      [v81 setResourceOptions:*(v19 + 72)];
      [v81 setAlignment:v98];
      *v75 = [*(v94 + 2816) newBufferWithDescriptor:v81];

      if (*v75)
      {
        [*v75 gpuAddress];
        MTLRangeAllocatorInitWithStartRange();
        [*v75 gpuAddress];
        if (MTLRangeAllocatorAllocateRange())
        {
          a2[1] = 0;
          *(a2 + 8) = v99;
          *(v75 + 12) = 1;
          v82 = MTLRangeAllocatorGetMaxFreeSize();
          *(v75 + 14) = v82;
          if (0x20000 - ((v22 + 255) & 0x1FFFFFF00) == v82)
          {
            LODWORD(v101) = v82;
            WORD2(v101) = v99;
            std::__tree<std::__value_type<unsigned int,short>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,short>,std::less<unsigned int>,true>,IOGPUMetalSuballocatorHeap::Allocator<std::__value_type<unsigned int,short>>>::__emplace_multi<std::pair<unsigned int,short>>(v19 + 48, &v101);
            *v41 |= 0x10000uLL;
            goto LABEL_109;
          }

          v91 = "kBufferSize - ((bytes + kMinAlignment - 1) & ~(kMinAlignment - 1)) == buffer.freeSize && Bad initial free size computed";
          v92 = 405;
        }

        else
        {
          v91 = "false && Failed to suballocate from fresh block";
          v92 = 397;
        }

        __assert_rtn("IOGPUMetalSuballocatorAllocate", "IOGPUMetalSuballocator.mm", v92, v91);
      }
    }

    std::vector<short,IOGPUMetalSuballocatorHeap::Allocator<short>>::push_back[abi:ne200100]((v19 + 24), &v99);
LABEL_111:
    v17 = 0;
    goto LABEL_120;
  }

  return v17;
}

uint64_t *std::__tree<std::__value_type<unsigned int,short>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,short>,std::less<unsigned int>,true>,IOGPUMetalSuballocatorHeap::Allocator<std::__value_type<unsigned int,short>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

_DWORD *std::__tree<std::__value_type<unsigned int,short>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,short>,std::less<unsigned int>,true>,IOGPUMetalSuballocatorHeap::Allocator<std::__value_type<unsigned int,short>>>::__emplace_multi<std::pair<unsigned int,short>>(uint64_t a1, unsigned int *a2)
{
  v4 = IOGPUMetalSuballocatorHeap::Allocator<std::__tree_node<std::__value_type<unsigned int,short>,void *>>::allocate(a1, 1);
  v5 = *a2;
  v4[7] = *a2;
  *(v4 + 16) = *(a2 + 2);
  v6 = (a1 + 8);
  v7 = *(a1 + 8);
  if (v7)
  {
    do
    {
      while (1)
      {
        v6 = v7;
        if (v5 >= *(v7 + 7))
        {
          break;
        }

        v7 = *v7;
        v8 = v6;
        if (!*v6)
        {
          goto LABEL_8;
        }
      }

      v7 = v7[1];
    }

    while (v7);
    v8 = v6 + 1;
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_8:
  std::__tree<std::__value_type<unsigned int,short>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,short>,std::less<unsigned int>,true>,IOGPUMetalSuballocatorHeap::Allocator<std::__value_type<unsigned int,short>>>::__insert_node_at(a1, v6, v8, v4);
  return v4;
}

void *IOGPUMetalSuballocatorHeap::Allocator<std::__tree_node<std::__value_type<unsigned int,short>,void *>>::allocate(uint64_t a1, uint64_t a2)
{
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 8uLL, 40 * a2, 0x102004081A36325uLL))
  {
    return 0;
  }

  else
  {
    return memptr;
  }
}

uint64_t *std::__tree<std::__value_type<unsigned int,short>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,short>,std::less<unsigned int>,true>,IOGPUMetalSuballocatorHeap::Allocator<std::__value_type<unsigned int,short>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t IOGPUDeviceCreateDeviceShmem(uint64_t a1, unsigned int a2, unsigned int a3, void *a4, _DWORD *a5, _DWORD *a6)
{
  input[2] = *MEMORY[0x1E69E9840];
  input[0] = a2;
  input[1] = a3;
  outputStruct = 0;
  v19 = 0;
  v17 = 16;
  v10 = IOConnectCallMethod(*(a1 + 20), 0xCu, input, 2u, 0, 0, 0, 0, &outputStruct, &v17);
  if (v10)
  {
    *a4 = 0;
    *a5 = 0;
    *a6 = 0;
  }

  else
  {
    *a4 = outputStruct;
    v13 = HIDWORD(v19);
    *a5 = v19;
    *a6 = v13;
    v14 = *MEMORY[0x1E69E99E8];
    if (*MEMORY[0x1E69E99E8])
    {
      v15 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
      if (v15)
      {
        v16 = v15;
        *v15 = outputStruct;
        v15[1] = v19;
        os_unfair_lock_lock((a1 + 120));
        v16[2] = *(a1 + 128);
        *(a1 + 128) = v16;
        os_unfair_lock_unlock((a1 + 120));
        v14(1677721616, *MEMORY[0x1E69E9A60], v19, 0, outputStruct, 0);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

dispatch_semaphore_t *IOGPUNotificationQueueDidSubmit(dispatch_semaphore_t *result, int a2)
{
  if (result)
  {
    v3 = result;
    result = CFGetTypeID(result);
    if (result == kIOGPUNotificationQueueID && a2 != 0)
    {
      do
      {
        result = dispatch_semaphore_signal(v3[8]);
        --a2;
      }

      while (a2);
    }
  }

  return result;
}

void IOGPUMetalSuballocatorFree(uint64_t a1, uint64_t *a2)
{
  if (!a1 || !a2)
  {
    IOGPUMetalSuballocatorFree_cold_5();
  }

  if ((*a2 - 131073) <= 0xFFFFFFFFFFFDFFFFLL)
  {
    IOGPUMetalSuballocatorFree_cold_4();
  }

  if ((a2[1] + *a2) > 0x20000)
  {
    IOGPUMetalSuballocatorFree_cold_3();
  }

  if (*(a2 + 9) >= 0x20uLL)
  {
    IOGPUMetalSuballocatorFree_cold_2();
  }

  v3 = (a2 + 2);
  if (*(a2 + 8) >= 0x400u)
  {
    IOGPUMetalSuballocatorFree_cold_1();
  }

  v4 = a1 + 88 * *(a2 + 9);
  os_unfair_lock_lock((v4 + 80));
  v5 = *v4 + (*v3 << 6);
  if (!*(v5 + 48))
  {
    __assert_rtn("IOGPUMetalSuballocatorFree", "IOGPUMetalSuballocator.mm", 432, "buffer.isAlive() && Reference to dead buffer");
  }

  [*v5 gpuAddress];
  v6 = *a2;
  v7 = a2[1];
  MTLRangeAllocatorDeallocate();
  --*(v5 + 48);
  MaxFreeSize = MTLRangeAllocatorGetMaxFreeSize();
  v9 = MaxFreeSize;
  v10 = *(v5 + 56);
  if (v10 > MaxFreeSize)
  {
    v23 = "buffer.freeSize <= newFreeSize && Buffer cannot have less space as a result of deallocation";
    v24 = 442;
    goto LABEL_48;
  }

  v11 = MaxFreeSize;
  if (MaxFreeSize > 0x20000uLL)
  {
    v23 = "newFreeSize <= kBufferSize && Unexpected free size";
    v24 = 443;
    goto LABEL_48;
  }

  v12 = v10 != MaxFreeSize || *(v5 + 48) == 0;
  if (v12)
  {
    v13 = *(v4 + 56);
    if (!v13)
    {
      goto LABEL_23;
    }

    v14 = (v4 + 48);
    v15 = (v4 + 56);
    do
    {
      v16 = *(v13 + 28);
      v17 = v16 >= v10;
      v18 = v16 < v10;
      if (v17)
      {
        v15 = v13;
      }

      v13 = *(v13 + 8 * v18);
    }

    while (v13);
    if (v15 == (v4 + 56) || v10 < *(v15 + 7))
    {
LABEL_23:
      __assert_rtn("IOGPUMetalSuballocatorFree", "IOGPUMetalSuballocator.mm", 449, "it != heap.index.end() && Buffer index corrupt: buffer not found at expected size");
    }

    v19 = *v3;
    if (*(v15 + 16) == v19)
    {
      v20 = v15;
    }

    else
    {
      do
      {
        if (*(v15 + 7) != v10)
        {
          __assert_rtn("IOGPUMetalSuballocatorFree", "IOGPUMetalSuballocator.mm", 452, "it->first == buffer.freeSize");
        }

        v21 = v15[1];
        if (v21)
        {
          do
          {
            v20 = v21;
            v21 = *v21;
          }

          while (v21);
        }

        else
        {
          do
          {
            v20 = v15[2];
            v12 = *v20 == v15;
            v15 = v20;
          }

          while (!v12);
        }

        v15 = v20;
      }

      while (*(v20 + 16) != v19);
    }

    std::__tree<std::__value_type<unsigned int,short>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,short>,std::less<unsigned int>,true>,IOGPUMetalSuballocatorHeap::Allocator<std::__value_type<unsigned int,short>>>::__remove_node_pointer(v14, v20);
    free(v20);
    if (*(v5 + 48))
    {
      if (*(v5 + 56) != v9)
      {
        *(v5 + 56) = v9;
        v22 = *v3;
        v25 = v11;
        v26 = v22;
        std::__tree<std::__value_type<unsigned int,short>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,short>,std::less<unsigned int>,true>,IOGPUMetalSuballocatorHeap::Allocator<std::__value_type<unsigned int,short>>>::__emplace_multi<std::pair<unsigned int,short>>(v14, &v25);
      }

      goto LABEL_38;
    }

    if (v9 == 0x20000)
    {
      MTLRangeAllocatorDestroy();

      std::vector<short,IOGPUMetalSuballocatorHeap::Allocator<short>>::push_back[abi:ne200100]((v4 + 24), v3);
      goto LABEL_38;
    }

    v23 = "newFreeSize == kBufferSize && Allocator state not empty with no allocations left";
    v24 = 460;
LABEL_48:
    __assert_rtn("IOGPUMetalSuballocatorFree", "IOGPUMetalSuballocator.mm", v24, v23);
  }

LABEL_38:
  os_unfair_lock_unlock((v4 + 80));
}

uint64_t IOGPUDeviceCreateWithOptions(io_service_t a1, int a2)
{
  connect = 0;
  v3 = IOServiceOpen(a1, *MEMORY[0x1E69E9A60], (a2 << 16) | 1, &connect);
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      IOGPUDeviceCreateWithOptions_cold_1(v4);
    }

    return 0;
  }

  v5 = connect;
  v6 = *MEMORY[0x1E695E490];
  if (IOGPUDeviceGetTypeID_onceToken != -1)
  {
    IOGPUDeviceCreateWithOptions_cold_2();
  }

  Instance = _CFRuntimeCreateInstance();
  v8 = Instance;
  if (Instance)
  {
    *(Instance + 16) = a1;
    *(Instance + 20) = v5;
    *(Instance + 68) = 0;
    *(Instance + 60) = 0;
    *(Instance + 76) = 0;
    *(Instance + 80) = 300000000000 * *algn_1ED5DB14C / timebase_info;
    memset(outputStruct, 0, 512);
    outputStructCnt = 536;
    if (IOConnectCallStructMethod(v5, 2u, 0, 0, outputStruct, &outputStructCnt))
    {
      goto LABEL_15;
    }

    *(v8 + 24) = *&outputStruct[0];
    v9 = DWORD1(outputStruct[1]);
    *(v8 + 40) = DWORD1(outputStruct[1]);
    if (v9 < 2)
    {
      *(v8 + 32) = v8 + 24;
    }

    else
    {
      *(v8 + 32) = malloc_type_malloc(8 * v9, 0x10040436913F5uLL);
      v10 = *(v8 + 40);
      if (v10 >= 1)
      {
        for (i = 0; i != v10; ++i)
        {
          *(*(v8 + 32) + 8 * i) = *(&outputStruct[1] + i + 2) + *(v8 + 24);
        }
      }
    }

    *(v8 + 44) = *(&outputStruct[0] + 1);
    *(v8 + 52) = outputStruct[1];
    v14[0] = 64;
    if (IOConnectCallStructMethod(*(v8 + 20), 0, 0, 0, (v8 + 160), v14))
    {
LABEL_15:
      CFRelease(v8);
      return 0;
    }

    *v14 = 0u;
    v15 = 0u;
    v13 = 32;
    if (!IOConnectCallStructMethod(*(v8 + 20), 4u, 0, 0, v14, &v13))
    {
      *(v8 + 88) = v14[0];
      if (DWORD2(v15) >= 4)
      {
        *(v8 + 96) = v14[1];
      }

      *(v8 + 104) = v15;
    }

    if (__globalGPUCommPageInit != -1)
    {
      IOGPUDeviceCreateWithOptions_cold_3();
    }

    *(v8 + 112) = 0;
    *(v8 + 120) = 0;
    *(v8 + 128) = 0u;
    *(v8 + 144) = 0u;
  }

  return v8;
}

uint64_t __IOGPUDeviceGetTypeID_block_invoke()
{
  kIOGPUDeviceID = _CFRuntimeRegisterClass();

  return mach_timebase_info(&timebase_info);
}

_DWORD *__IOGPUDeviceCreateWithOptions_block_invoke()
{
  result = IOSurfaceGetGraphicsCommPageAddress();
  __globalGPUCommPage = result;
  if (!result)
  {
    result = malloc_type_malloc(4uLL, 0x100004052888210uLL);
    __globalGPUCommPage = result;
    *result = 0;
  }

  return result;
}

uint64_t IOGPUDeviceGetSharedMemorySize(void *a1, void *a2)
{
  v2 = 3758097090;
  if (a1 && CFGetTypeID(a1) == kIOGPUDeviceID)
  {
    v2 = 0;
    *a2 = a1[24];
  }

  return v2;
}

uint64_t IOGPUDeviceGetConfig64(uint64_t a1, _DWORD *a2, _DWORD *a3, void *a4, void *a5, _DWORD *a6)
{
  v6 = 3758097090;
  if (a1 && CFGetTypeID(a1) == kIOGPUDeviceID)
  {
    v6 = 0;
    *a2 = *(a1 + 160);
    *a3 = *(a1 + 164);
    *a4 = *(a1 + 168);
    *a5 = *(a1 + 176);
    *a6 = *(a1 + 184);
  }

  return v6;
}

IOGPUMetalCommandBufferStorage *IOGPUMetalCommandBufferStorageCreateExt(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = malloc_type_calloc(0x398uLL, 1uLL, 0x10B0040F5BD1C16uLL);
  v8->var0 = a1;
  *&v8->var31 = a3;
  IOGPUResourceListInit(&v8->var14, 0, 0, *(a1 + 760), *(a1 + 752), IOGPUMetalCommandBufferStorageGrowSegmentList, v8);
  v9 = *(a2 + 32);
  if (v9)
  {
    *&v8->var27 = *(a2 + 24);
    v10 = malloc_type_calloc(1uLL, v9 << 6, 0x10B0040CDE4EDB6uLL);
    LODWORD(v9) = *(a2 + 32);
  }

  else
  {
    v10 = 0;
  }

  v8->var25 = v10;
  v8->var29 = v9;
  ResourceList = *(a2 + 48);
  if (ResourceList)
  {
    ResourceList = MTLResourceListPoolCreateResourceList();
  }

  v8->var21 = ResourceList;
  if (a4)
  {
    v12 = *(a2 + 40);
    v13 = MTLResourceListPoolCreateResourceList();
  }

  else
  {
    v13 = 0;
  }

  v8->var20 = v13;
  if ((_iogpuMetalCommandBufferStorageSetupShmems(v8, a2) & 1) == 0)
  {
    _iogpuMetalCommandBufferStorageFree(v8);
    return 0;
  }

  return v8;
}

uint64_t IOGPUCommandQueueCreate(mach_port_t *a1, _BYTE *a2, unsigned int a3)
{
  input[2] = *MEMORY[0x1E69E9840];
  v16 = 16;
  v6 = *MEMORY[0x1E695E490];
  if (IOGPUCommandQueueGetTypeID_onceToken != -1)
  {
    IOGPUCommandQueueGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    outputStruct = 0;
    v18 = 0;
    CFRetain(a1);
    *(Instance + 16) = a1;
    *(Instance + 24) = 0;
    *(Instance + 40) = 0;
    *(Instance + 48) = a2[1029] != 0;
    v8 = IOConnectCallMethod(a1[5], 6u, 0, 0, a2, a3, 0, 0, &outputStruct, &v16);
    if (v8)
    {
      if (v8 == -536379391)
      {
        abort();
      }

      v9 = a1;
      goto LABEL_15;
    }

    if (!outputStruct)
    {
      IOGPUCommandQueueCreate_cold_4();
    }

    v10 = v18;
    *(Instance + 24) = outputStruct;
    *(Instance + 32) = v10;
    v11 = IOGPUNotificationQueueCreate(a1, 0x100u, 0x28u);
    *(Instance + 40) = v11;
    if (!v11)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        IOGPUCommandQueueCreate_cold_3();
      }

      goto LABEL_14;
    }

    input[0] = *(Instance + 24);
    input[1] = IOGPUNotificationQueueGetID(v11);
    v12 = IOConnectCallMethod(a1[5], 0x18u, input, 2u, 0, 0, 0, 0, 0, 0);
    if (v12)
    {
      v13 = v12;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        IOGPUCommandQueueCreate_cold_2(v13);
      }

LABEL_14:
      v9 = Instance;
LABEL_15:
      CFRelease(v9);
      Instance = 0;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return Instance;
}

double IOGPUResourceListInit(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  *(a1 + 480) = 2048;
  *(a1 + 488) = 0x8000000000BLL;
  *(a1 + 456) = malloc_type_calloc(0x800uLL, 4uLL, 0x100004052888210uLL);
  *(a1 + 472) = malloc_type_malloc(8 * *(a1 + 492), 0x100004000313F17uLL);
  *(a1 + 464) = malloc_type_calloc(*(a1 + 492) >> 3, 1uLL, 0x100004000313F17uLL);
  *(a1 + 496) = (*(a1 + 480) >> 6) - 1;
  *(a1 + 536) = a3 >> 6;
  *(a1 + 528) = a4;
  *(a1 + 512) = a2;
  *(a1 + 520) = a4;
  *(a1 + 540) = 0;
  result = 0.0;
  *(a1 + 544) = 0;
  *(a1 + 504) = 0;
  *(a1 + 560) = a5;
  *(a1 + 568) = a6;
  *(a1 + 576) = a7;
  return result;
}

uint64_t IOGPUNotificationQueueCreate(mach_port_t *a1, unsigned int a2, unsigned int a3)
{
  input[2] = *MEMORY[0x1E69E9840];
  v13 = 16;
  if (IOGPUNotificationQueueCreate_once != -1)
  {
    IOGPUNotificationQueueCreate_cold_1();
  }

  v6 = *MEMORY[0x1E695E490];
  if (IOGPUNotificationQueueGetTypeID_onceToken != -1)
  {
    IOGPUNotificationQueueGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    outputStruct = 0;
    v15 = 0;
    CFRetain(a1);
    *(Instance + 24) = 0;
    *(Instance + 16) = a1;
    *(Instance + 72) = 0;
    *(Instance + 32) = 0;
    *(Instance + 40) = 0;
    *(Instance + 48) = 0;
    *(Instance + 56) = 0;
    input[0] = a2;
    input[1] = a3;
    if (IOConnectCallMethod(a1[5], 0xEu, input, 2u, 0, 0, 0, 0, &outputStruct, &v13))
    {
      v8 = a1;
    }

    else
    {
      if (!v15)
      {
        IOGPUNotificationQueueCreate_cold_3();
      }

      v9 = outputStruct;
      *(Instance + 24) = v15;
      *(Instance + 32) = v9;
      NotificationPort = IODataQueueAllocateNotificationPort();
      *(Instance + 40) = NotificationPort;
      if (NotificationPort && !MEMORY[0x1CCA975E0](a1[5], 0, NotificationPort, *(Instance + 24)))
      {
        *(Instance + 56) = dispatch_semaphore_create(0);
        *(Instance + 64) = dispatch_semaphore_create(a2);
        goto LABEL_13;
      }

      v8 = Instance;
    }

    CFRelease(v8);
    Instance = 0;
  }

LABEL_13:
  v11 = *MEMORY[0x1E69E9840];
  return Instance;
}

void *IOGPUNotificationQueueGetID(void *result)
{
  if (result)
  {
    v1 = result;
    if (CFGetTypeID(result) == kIOGPUNotificationQueueID)
    {
      return v1[3];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double IOGPUResourceListDestroy(uint64_t a1)
{
  free(*(a1 + 456));
  free(*(a1 + 472));
  free(*(a1 + 464));
  result = 0.0;
  *(a1 + 568) = 0u;
  return result;
}

dispatch_queue_t *IOGPUNotificationQueueSetDispatchQueue(dispatch_queue_t *result, NSObject *a2, int a3)
{
  if (result)
  {
    v5 = result;
    result = CFGetTypeID(result);
    if (result == kIOGPUNotificationQueueID)
    {
      if (v5[9])
      {
        dispatch_assert_queue_not_V2(v5[6]);
        v6 = v5[9];
        dispatch_mach_cancel();
        result = dispatch_semaphore_wait(v5[7], 0xFFFFFFFFFFFFFFFFLL);
        if (v5[6])
        {
          IOGPUNotificationQueueSetDispatchQueue_cold_1();
        }

        if (v5[9])
        {
          IOGPUNotificationQueueSetDispatchQueue_cold_2();
        }
      }

      if (a2 && (a3 == 1 || a3 == 2))
      {
        label = dispatch_queue_get_label(a2);
        if (*label)
        {
          v8 = label;
        }

        else
        {
          v8 = "IOGPUNotificationQueueDispatchQueue";
        }

        CFRetain(v5);
        v9 = dispatch_queue_create_with_target_V2(v8, 0, a2);
        v10 = dispatch_mach_create();
        v5[6] = v9;
        v5[9] = v10;
        v11 = *(v5 + 10);
        return dispatch_mach_connect();
      }
    }
  }

  return result;
}

uint64_t IOGPUDeviceGetMaxResourceSize(void *a1, void *a2)
{
  v2 = 3758097090;
  if (a1 && CFGetTypeID(a1) == kIOGPUDeviceID)
  {
    v2 = 0;
    *a2 = a1[25];
  }

  return v2;
}

unint64_t validateGPUPriority(unint64_t result, char a2)
{
  if (result > 5)
  {
    return MTLReportFailure();
  }

  if (result == 3 && (a2 & 1) == 0)
  {
    return validateGPUPriority_cold_1();
  }

  return result;
}

void std::vector<IOGPUMetalSuballocatorHeap::Buffer,IOGPUMetalSuballocatorHeap::Allocator<IOGPUMetalSuballocatorHeap::Buffer>>::reserve(uint64_t a1, unint64_t a2)
{
  if (a2 > (*(a1 + 16) - *a1) >> 6)
  {
    if (a2 >> 58)
    {
      std::vector<NSObject *>::__throw_length_error[abi:ne200100]();
    }

    v4 = *(a1 + 8) - *a1;
    v5 = IOGPUMetalSuballocatorHeap::Allocator<IOGPUMetalSuballocatorHeap::Buffer>::allocate(a1, a2);
    v6 = &v5[v4];
    v7 = &v5[64 * a2];
    v8 = *(a1 + 8) - *a1;
    v9 = &v6[-v8];
    memcpy(&v6[-v8], *a1, v8);
    v10 = *a1;
    *a1 = v9;
    *(a1 + 8) = v6;
    *(a1 + 16) = v7;
    if (v10)
    {

      free(v10);
    }
  }
}

void *IOGPUMetalSuballocatorHeap::Allocator<IOGPUMetalSuballocatorHeap::Buffer>::allocate(uint64_t a1, uint64_t a2)
{
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x40uLL, a2 << 6, 0x10A0040958DC350uLL))
  {
    return 0;
  }

  else
  {
    return memptr;
  }
}

uint64_t IOGPUCommandQueueSetPriorityAndBackground(uint64_t a1, void *inputStruct, _DWORD *a3)
{
  outputCnt = 1;
  output = 3;
  result = IOConnectCallMethod(*(*(a1 + 16) + 20), 0x1Au, (a1 + 24), 1u, inputStruct, 0xCuLL, &output, &outputCnt, 0, 0);
  if (a3)
  {
    if (!result)
    {
      *a3 = output;
    }
  }

  return result;
}

void std::vector<short,IOGPUMetalSuballocatorHeap::Allocator<short>>::reserve(uint64_t a1, unint64_t a2)
{
  if (a2 > (*(a1 + 16) - *a1) >> 1)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      std::vector<NSObject *>::__throw_length_error[abi:ne200100]();
    }

    v4 = *(a1 + 8) - *a1;
    v5 = IOGPUMetalSuballocatorHeap::Allocator<short>::allocate(a1, a2);
    v6 = &v5[v4];
    v7 = &v5[2 * a2];
    v8 = *(a1 + 8) - *a1;
    v9 = &v6[-v8];
    memcpy(&v6[-v8], *a1, v8);
    v10 = *a1;
    *a1 = v9;
    *(a1 + 8) = v6;
    *(a1 + 16) = v7;
    if (v10)
    {

      free(v10);
    }
  }
}

void *IOGPUMetalSuballocatorHeap::Allocator<short>::allocate(uint64_t a1, uint64_t a2)
{
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 8uLL, 2 * a2, 0x1000040BDFB0063uLL))
  {
    return 0;
  }

  else
  {
    return memptr;
  }
}

uint64_t IOGPUMetalCommandBufferStorageEndSegment(uint64_t result)
{
  v1 = *(result + 688);
  v2 = *(result + 48) - *(result + 40);
  v4 = *(result + 120);
  v3 = *(result + 128);
  v3[6] = *(result + 684);
  v3[7] = v1;
  v3[3] = v2;
  ++*(v4 + 8);
  ++*(result + 840);
  v5 = *(result + 136);
  v6 = v5 + (v1 << 6);
  *(result + 848) = v3;
  *(result + 856) = v5;
  *(result + 128) = v6;
  *(result + 136) = v6 + 32;
  return result;
}

void IOGPUMetalSuballocatorCreate(IOGPUMetalDevice *a1)
{
  v3 = 0;
  if (a1)
  {
    v2 = IOGPUMetalSuballocatorHeap::Allocator<IOGPUMetalSuballocator>::allocate(&v3, 1);
    if (v2)
    {
      IOGPUMetalSuballocator::IOGPUMetalSuballocator(v2, a1);
    }
  }
}

void *IOGPUMetalSuballocatorHeap::Allocator<IOGPUMetalSuballocator>::allocate(uint64_t a1, uint64_t a2)
{
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 8uLL, 2824 * a2, 0x10F0040732811FFuLL))
  {
    return 0;
  }

  else
  {
    return memptr;
  }
}

void IOGPUMetalSuballocator::IOGPUMetalSuballocator(IOGPUMetalSuballocator *this, IOGPUMetalDevice *a2)
{
  for (i = 0; i != 2816; i += 88)
  {
    v4 = this + i;
    *(this + i + 56) = 0;
    *v4 = 0uLL;
    *(v4 + 1) = 0uLL;
    *(v4 + 2) = 0uLL;
    *(v4 + 6) = this + i + 56;
    *(v4 + 8) = 0;
    *(v4 + 9) = -1;
    *(v4 + 20) = 0;
  }

  *(this + 352) = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("IOGPUMetalSuballocator", "IOGPUMetalSuballocator.mm", 117, "[device isKindOfClass:[IOGPUMetalDevice class]] && Bad device instance");
  }

  v5 = a2;
}

double IOGPUMetalCommandBufferStoragePoolCreate(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x30uLL, 0x10A00400E4E355EuLL);
  if (v4)
  {
    result = 0.0;
    v4[1] = xmmword_1CA0CCDC0;
    *v4 = 0;
    *(v4 + 1) = v4;
    *(v4 + 4) = a1;
    *(v4 + 5) = a2;
  }

  return result;
}

uint64_t __IOGPUResourceGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  kIOGPUResourceID = result;
  return result;
}

uint64_t __IOGPUCommandQueueGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  kIOGPUCommandQueueID = result;
  return result;
}

uint64_t __IOGPUNotificationQueueGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  kIOGPUNotificationQueueID = result;
  return result;
}

uint64_t IOGPUGenerationalSet<objc_object *,IOGPUMTLIdKey,IOGPUMTLObjectHashAllocator>::init(int32x2_t *a1, size_t size, unsigned int a3)
{
  if (size > a3)
  {
    return 0;
  }

  v5 = size;
  a1[6].i32[0] = size;
  a1[2] = malloc_type_calloc(4uLL, size, 0x100004052888210uLL);
  *a1 = malloc_type_calloc(8uLL, a1[6].u32[0], 0x100004000313F17uLL);
  a1[1] = malloc_type_calloc(8uLL, a1[6].u32[0], 0x100004000313F17uLL);
  a1[3] = malloc_type_calloc(8uLL, (a1[6].i32[0] + 63) >> 6, 0x100004000313F17uLL);
  a1[4] = malloc_type_calloc(8uLL, (a1[6].i32[0] + 63) >> 6, 0x100004000313F17uLL);
  v7 = malloc_type_calloc(8uLL, (a1[6].i32[0] + 4095) >> 12, 0x100004000313F17uLL);
  a1[5] = v7;
  if (*&a1[2] && *a1 && *&a1[1] && *&a1[3])
  {
    if (a1[4])
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = !v8;
    a1[13].i8[0] = v9;
    if (v8)
    {
      return 0;
    }

    else
    {
      a1[6].i32[1] = v5 - 1;
      a1[7] = vadd_s32(vshl_u32(vadd_s32(vdup_n_s32(v5), 0xFFF0000003FLL), 0xFFFFFFF4FFFFFFFALL), -1);
      a1[8].i32[0] = __clz(__rbit32(a1[6].u32[0]));
      a1[9].i32[1] = a3;
      return 1;
    }
  }

  else
  {
    result = 0;
    a1[13].i8[0] = 0;
  }

  return result;
}

void IOGPUGenerationalSet<objc_object *,IOGPUMTLIdKey,IOGPUMTLObjectHashAllocator>::releaseAllKeys(uint64_t *a1)
{
  if (*(a1 + 104) == 1)
  {
    v2 = 0;
    v3 = a1[3];
    do
    {
      v4 = *(v3 + 8 * v2);
      v5 = v2;
      if (v4)
      {
        v6 = v2 << 6;
        do
        {
          v7 = __clz(__rbit64(v4));
          v4 &= ~(1 << v7);
          v8 = v7 | v6;
          v9 = *a1;

          *(v9 + 8 * v8) = 0;
          --*(a1 + 17);
        }

        while (v4);
        v3 = a1[3];
        *(v3 + 8 * v5) = 0;
      }

      v2 = v5 + 1;
    }

    while ((v5 + 1) <= *(a1 + 14));
  }
}

uint64_t IOGPUGenerationalSet<objc_object *,IOGPUMTLIdKey,IOGPUMTLObjectHashAllocator>::~IOGPUGenerationalSet(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    free(v2);
    *(a1 + 16) = 0;
  }

  if (*a1)
  {
    free(*a1);
    *a1 = 0;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    free(v3);
    *(a1 + 8) = 0;
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    free(v4);
    *(a1 + 24) = 0;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    free(v5);
    *(a1 + 32) = 0;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    free(v6);
    *(a1 + 40) = 0;
  }

  return a1;
}

void __ioGPUCommandQueueFinalize_block_invoke_2(uint64_t a1)
{
  IOGPUNotificationQueueSetDispatchQueue(*(a1 + 32), 0, 0);
  v2 = *(a1 + 32);

  IOGPUNotificationQueueRelease(v2);
}

void IOGPUNotificationQueueRelease(const void *a1)
{
  if (a1 && CFGetTypeID(a1) == kIOGPUNotificationQueueID)
  {

    CFRelease(a1);
  }
}

void ioGPUNotificationQueueFinalize(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    mach_port_mod_refs(*MEMORY[0x1E69E9A60], v2, 1u, -1);
    *(a1 + 40) = 0;
  }

  if (*(a1 + 72))
  {
    ioGPUNotificationQueueFinalize_cold_1();
  }

  if (*(a1 + 48))
  {
    ioGPUNotificationQueueFinalize_cold_2();
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    dispatch_release(v4);
  }

  if (*(a1 + 24))
  {
    v5 = IOConnectCallMethod(*(*(a1 + 16) + 20), 0xFu, (a1 + 24), 1u, 0, 0, 0, 0, 0, 0);
    if (v5)
    {
      v6 = v5;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        ioGPUNotificationQueueFinalize_cold_3(v6);
      }
    }
  }

  *(a1 + 24) = 0;
  CFRelease(*(a1 + 16));
}

void IOGPUMetalCommandBufferStorageGrowKernelCommandBuffer(void *a1, int a2)
{
  v2 = a1[4];
  if (!v2)
  {
    IOGPUMetalCommandBufferStorageGrowKernelCommandBuffer_cold_8();
  }

  v4 = a1[5];
  if (!v4 || (v5 = a1[7]) == 0 || (v6 = a1[6]) == 0)
  {
    IOGPUMetalCommandBufferStorageGrowKernelCommandBuffer_cold_7();
  }

  if (v5 < v4)
  {
    IOGPUMetalCommandBufferStorageGrowKernelCommandBuffer_cold_6();
  }

  v7 = v6 - v4;
  if (v6 < v4)
  {
    IOGPUMetalCommandBufferStorageGrowKernelCommandBuffer_cold_5();
  }

  v8 = a2 + 24 + v5 - v4;
  v9 = *(v2 + 8);
  v10 = *(v9 + 48);
  while (v10 < v8)
  {
    if (v10 >= 0x200000)
    {
      v10 += 0x100000;
    }

    else
    {
      v10 *= 2;
    }
  }

  [*(v2 + 8) setShmemSize:?];
  Shmem = IOGPUMetalDeviceShmemPoolCreateShmem(v9);
  a1[4] = Shmem;
  if (!Shmem)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      IOGPUMetalCommandBufferStorageGrowKernelCommandBuffer_cold_4(a1);
    }

    abort();
  }

  v12 = a1[111];
  if (v12)
  {
    a1[111] = v12 - *(v2 + 136) + Shmem[17];
  }

  v13 = *(Shmem + 33);
  v14 = Shmem[17];
  a1[5] = v14;
  if (v13 < v8)
  {
    IOGPUMetalCommandBufferStorageGrowKernelCommandBuffer_cold_3();
  }

  a1[7] = &v14[v13];
  v15 = *(v2 + 136);
  if (!v15)
  {
    IOGPUMetalCommandBufferStorageGrowKernelCommandBuffer_cold_2();
  }

  if (v13 <= v7)
  {
    IOGPUMetalCommandBufferStorageGrowKernelCommandBuffer_cold_1();
  }

  memcpy(v14, v15, v7);
  IOGPUMetalDeviceShmemRelease(v2);
  a1[6] = a1[5] + v7;
}

uint64_t IOGPUDeviceDestroyDeviceShmem(uint64_t a1, unsigned int a2)
{
  input = a2;
  os_unfair_lock_lock((a1 + 120));
  v5 = (a1 + 128);
  v4 = *(a1 + 128);
  if (v4)
  {
    v6 = *(a1 + 128);
    while (*(v6 + 3) != a2)
    {
      v6 = v6[2];
      if (!v6)
      {
        goto LABEL_12;
      }
    }

    if (*MEMORY[0x1E69E99E8])
    {
      (*MEMORY[0x1E69E99E8])(1677721632, *MEMORY[0x1E69E9A60], *v6, *(v6 + 2), 0, 0);
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
  os_unfair_lock_unlock((a1 + 120));
  return IOConnectCallScalarMethod(*(a1 + 20), 0xDu, &input, 1u, 0, 0);
}

void sub_1CA09E160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  if (STACK[0x1008] != &a10)
  {
    free(STACK[0x1008]);
  }

  _Unwind_Resume(a1);
}

unint64_t IOGPUResourceGroupUpdateResources(uint64_t a1, uintptr_t p2, unsigned int *p3, uintptr_t a4, void *a5)
{
  v5 = p3;
  v6 = p2;
  v44 = *MEMORY[0x1E69E9840];
  if (p2 > 0x100 || a4 > 0x100)
  {
    if (!a4)
    {
      goto LABEL_27;
    }

    if (a4 > 0x100)
    {
      input = *(a1 + 48);
      v43 = a4;
      v22 = IOConnectCallMethod(*(*(a1 + 16) + 20), 0x35u, &input, 2u, a5, 8 * a4, 0, 0, 0, 0);
    }

    else
    {
      if (a4 == 1)
      {
        v10 = *a5;
        v11 = HIDWORD(*a5);
      }

      else
      {
        v10 = 0;
        v11 = 0;
      }

      v23 = *(*(a1 + 16) + 20);
      if (a4 == 1)
      {
        a5 = v10;
      }

      v22 = IOConnectTrap4(v23, 5u, *(a1 + 48), a4, a5, v11);
    }

    v24 = v22;
    if (v22 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      IOGPUResourceGroupUpdateResources_cold_1(v24, v25, v26, v27, v28, v29, v30, v31);
      if (!v6)
      {
        goto LABEL_36;
      }
    }

    else
    {
LABEL_27:
      if (!v6)
      {
        goto LABEL_36;
      }
    }

    if (v6 > 0x100)
    {
      input = *(a1 + 48);
      v43 = v6;
      v32 = IOConnectCallMethod(*(*(a1 + 16) + 20), 0x34u, &input, 2u, v5, 4 * v6, 0, 0, 0, 0);
    }

    else
    {
      if (v6 == 1)
      {
        v5 = *v5;
      }

      v32 = IOConnectTrap3(*(*(a1 + 16) + 20), 4u, *(a1 + 48), v6, v5);
    }

    v6 = v32;
    if (v32 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      IOGPUResourceGroupUpdateResources_cold_2(v6, v33, v34, v35, v36, v37, v38, v39);
    }
  }

  else
  {
    if (a4 == 1)
    {
      v8 = *a5;
      v9 = HIDWORD(*a5);
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }

    v12 = p2;
    if (p2)
    {
      if (p2 == 1)
      {
        v12 = *p3;
      }

      else
      {
        v12 = p3;
      }
    }

    v13 = *(*(a1 + 16) + 20);
    if (a4 <= 1)
    {
      v14 = v8;
    }

    else
    {
      v14 = a5;
    }

    v6 = MEMORY[0x1CCA97640](v13, 6, *(a1 + 48), p2, v12, a4, v14, v9);
    if (v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      IOGPUResourceGroupUpdateResources_cold_3(v6, v15, v16, v17, v18, v19, v20, v21);
    }
  }

LABEL_36:
  v40 = *MEMORY[0x1E69E9840];
  return v6;
}

void IOGPUCommandQueueRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void ioGPUCommandQueueFinalize(uint64_t a1)
{
  if (_cmdq_finalize_queue_once_0 != -1)
  {
    ioGPUCommandQueueFinalize_cold_1();
  }

  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __ioGPUCommandQueueFinalize_block_invoke_2;
    block[3] = &__block_descriptor_tmp_9;
    block[4] = v2;
    dispatch_async(_cmdq_finalize_queue_0, block);
  }

  if (*(a1 + 24))
  {
    v3 = IOConnectCallMethod(*(*(a1 + 16) + 20), 7u, (a1 + 24), 1u, 0, 0, 0, 0, 0, 0);
    if (v3)
    {
      fprintf(*MEMORY[0x1E69E9848], "IOGPUCommandQueue delete failed with error 0x%x", v3);
    }
  }

  *(a1 + 24) = 0;
  CFRelease(*(a1 + 16));
}

void *IOGPUMetalCommandBufferStorageAllocSidebandBuffer(void *a1, unsigned int a2)
{
  if (!a1)
  {
    IOGPUMetalCommandBufferStorageAllocSidebandBuffer_cold_4();
  }

  if (!*a1)
  {
    IOGPUMetalCommandBufferStorageAllocSidebandBuffer_cold_3();
  }

  if (a1[8])
  {
    IOGPUMetalCommandBufferStorageAllocSidebandBuffer_cold_1();
  }

  v3 = *(*(a1[1] + 40) + 16);
  if (!v3)
  {
    IOGPUMetalCommandBufferStorageAllocSidebandBuffer_cold_2();
  }

  while ([v3 shmemSize] < a2)
  {
    v5 = [v3 shmemSize];
    v6 = [v3 shmemSize];
    if (v5 >= 0x200000)
    {
      v7 = (v6 + 0x100000);
    }

    else
    {
      v7 = (2 * v6);
    }

    [v3 setShmemSize:v7];
  }

  result = IOGPUMetalDeviceShmemPoolCreateShmem(v3);
  if (result)
  {
    v9 = result[17];
    a1[8] = result;
    a1[9] = v9;
    v10 = v9 + *(result + 33);
    a1[10] = v9;
    a1[11] = v10;
  }

  return result;
}

uint64_t IOGPUResourceSetOwnerIdentity(uint64_t a1, unsigned int a2)
{
  input[2] = *MEMORY[0x1E69E9840];
  input[0] = *(a1 + 48);
  input[1] = a2;
  result = IOConnectCallScalarMethod(*(*(a1 + 16) + 20), 0x23u, input, 2u, 0, 0);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void _addResidencySets(os_unfair_lock_s *a1, void *a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock(a1 + 110);
  if (!*&a1[2 * a4 + 106]._os_unfair_lock_opaque)
  {
    *&a1[2 * a4 + 106]._os_unfair_lock_opaque = objc_opt_new();
  }

  if (a3)
  {
    v8 = MEMORY[0x1E69742F0];
    do
    {
      [*&a1[2 * a4 + 106]._os_unfair_lock_opaque addObject:*a2];
      if (*__globalGPUCommPage)
      {
        v9 = *(&a1->_os_unfair_lock_opaque + *v8);
        v10 = *(*a2 + 48);
        IOGPUDeviceTraceEvent();
      }

      ++a2;
      --a3;
    }

    while (a3);
  }

  if (a4 == 1)
  {
    v11 = 8;
  }

  else
  {
    v11 = 32;
  }

  if ([*&a1[2 * a4 + 106]._os_unfair_lock_opaque count] > v11)
  {
    MTLReportFailure();
  }

  _updateResidencySets(a1);

  os_unfair_lock_unlock(a1 + 110);
}

void _removeResidencySets(os_unfair_lock_s *a1, void *a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock(a1 + 110);
  if (!*&a1[2 * a4 + 106]._os_unfair_lock_opaque)
  {
    *&a1[2 * a4 + 106]._os_unfair_lock_opaque = objc_opt_new();
  }

  if (a3)
  {
    v8 = &a1[2 * a4];
    v9 = MEMORY[0x1E69742F0];
    do
    {
      [*&v8[106]._os_unfair_lock_opaque removeObject:*a2];
      if (*__globalGPUCommPage)
      {
        v10 = *(&a1->_os_unfair_lock_opaque + *v9);
        v11 = *(*a2 + 48);
        IOGPUDeviceTraceEvent();
      }

      ++a2;
      --a3;
    }

    while (a3);
  }

  _updateResidencySets(a1);

  os_unfair_lock_unlock(a1 + 110);
}

void _updateResidencySets(uint64_t a1)
{
  os_unfair_lock_assert_owner((a1 + 440));
  v2 = [*(a1 + 424) count];
  v3 = [*(a1 + 432) count] + v2;
  if (v3 >= 0x29)
  {
    _updateResidencySets_cold_1();
  }

  if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  v5 = (4 * v4);
  v6 = (8 * v4);
  v7 = malloc_type_malloc(v5, 0x100004052888210uLL);
  v8 = malloc_type_malloc(v6, 0x80040B8603338uLL);
  bzero(v7, v5);
  bzero(v8, v6);
  v9 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1;
  do
  {
    v12 = v11;
    v13 = *(a1 + 424 + 8 * v9);
    v17[0] = v10;
    v17[1] = 3221225472;
    v17[2] = ___updateResidencySets_block_invoke;
    v17[3] = &unk_1E83629E8;
    v18 = v3;
    v17[4] = &v19;
    v17[5] = v8;
    v17[6] = v7;
    [v13 enumerateObjectsUsingBlock:v17];
    v11 = 0;
    v9 = 1;
  }

  while ((v12 & 1) != 0);
  if (*(v20 + 6) != v3)
  {
    __assert_rtn("_updateResidencySets", "IOGPUMetalCommandQueue.m", 412, "resourceGroupCount == _count");
  }

  v14 = *(a1 + *MEMORY[0x1E69742E0]);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___updateResidencySets_block_invoke_2;
  block[3] = &unk_1E8362A10;
  v16 = v3;
  block[4] = a1;
  block[5] = v7;
  block[6] = v8;
  dispatch_async(v14, block);
  _Block_object_dispose(&v19, 8);
}

void *___updateResidencySets_block_invoke(void *result, _DWORD *a2)
{
  v2 = *(result[4] + 8);
  v3 = *(v2 + 24);
  if (v3 < *(result + 14))
  {
    v5 = result;
    result = a2;
    *(v5[5] + 8 * *(*(v5[4] + 8) + 24)) = result;
    *(v5[6] + 4 * *(*(v5[4] + 8) + 24)) = a2[10];
    v2 = *(v5[4] + 8);
    v3 = *(v2 + 24);
  }

  *(v2 + 24) = v3 + 1;
  return result;
}

void ___updateResidencySets_block_invoke_2(uint64_t a1)
{
  v2 = IOGPUCommandQueueSetResourceGroups(*(*(a1 + 32) + 384), *(a1 + 56), *(a1 + 40));
  if (v2)
  {
    v3 = v2;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ___updateResidencySets_block_invoke_2_cold_1(v3);
    }
  }

  if (*(a1 + 56))
  {
    v4 = 0;
    do
    {
    }

    while (v4 < *(a1 + 56));
  }

  free(*(a1 + 40));
  free(*(a1 + 48));
}

void sub_1CA0A43C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA0A4CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<NSObject *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<NSObject *>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<NSObject *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E8362940, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<NSObject *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void sub_1CA0A9438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (STACK[0x800] != &a9)
  {
    free(STACK[0x800]);
  }

  if (STACK[0x1008] != &STACK[0x808])
  {
    free(STACK[0x1008]);
  }

  if (STACK[0x1810] != &STACK[0x1010])
  {
    free(STACK[0x1810]);
  }

  if (STACK[0x2018] != &STACK[0x1818])
  {
    free(STACK[0x2018]);
  }

  _Unwind_Resume(a1);
}

void sub_1CA0A9638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (STACK[0x800] != &a9)
  {
    free(STACK[0x800]);
  }

  if (STACK[0xC08] != &STACK[0x808])
  {
    free(STACK[0xC08]);
  }

  _Unwind_Resume(a1);
}

void sub_1CA0A981C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (STACK[0x800] != &a9)
  {
    free(STACK[0x800]);
  }

  if (STACK[0xC08] != &STACK[0x808])
  {
    free(STACK[0xC08]);
  }

  _Unwind_Resume(a1);
}

void IOGPUGenerationalSet<objc_object *,IOGPUMTLIdKey,IOGPUMTLObjectHashAllocator>::rehash(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 48);
  v3 = 2 * v2;
  if (a2)
  {
    v3 = a2;
  }

  do
  {
    v4 = v2;
    v2 *= 2;
  }

  while (v4 < v3);
  operator new();
}

void IOGPUGenerationalSet<objc_object *,IOGPUMTLIdKey,IOGPUMTLObjectHashAllocator>::swap(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  *a2 = *a3;
  *a3 = v3;
  v4 = a2[1];
  a2[1] = a3[1];
  a3[1] = v4;
  v5 = a2[2];
  a2[2] = a3[2];
  a3[2] = v5;
  v6 = a2[3];
  a2[3] = a3[3];
  a3[3] = v6;
  v7 = a2[4];
  a2[4] = a3[4];
  a3[4] = v7;
  v8 = a2[5];
  a2[5] = a3[5];
  a3[5] = v8;
  LODWORD(v8) = *(a2 + 15);
  *(a2 + 15) = *(a3 + 15);
  *(a3 + 15) = v8;
  LODWORD(v8) = *(a2 + 12);
  *(a2 + 12) = *(a3 + 12);
  *(a3 + 12) = v8;
  LODWORD(v8) = *(a2 + 19);
  *(a2 + 19) = *(a3 + 19);
  *(a3 + 19) = v8;
  LODWORD(v8) = *(a2 + 13);
  *(a2 + 13) = *(a3 + 13);
  *(a3 + 13) = v8;
  LODWORD(v8) = *(a2 + 14);
  *(a2 + 14) = *(a3 + 14);
  *(a3 + 14) = v8;
  LODWORD(v8) = *(a2 + 16);
  *(a2 + 16) = *(a3 + 16);
  *(a3 + 16) = v8;
  LODWORD(v8) = *(a2 + 17);
  *(a2 + 17) = *(a3 + 17);
  *(a3 + 17) = v8;
  LODWORD(v8) = *(a2 + 18);
  *(a2 + 18) = *(a3 + 18);
  *(a3 + 18) = v8;
  v9 = a2[10];
  a2[10] = a3[10];
  a3[10] = v9;
}

uint64_t IOGPUNotificationQueueGetTypeID()
{
  if (IOGPUNotificationQueueGetTypeID_onceToken != -1)
  {
    IOGPUNotificationQueueGetTypeID_cold_1();
  }

  return kIOGPUNotificationQueueID;
}

uint64_t ioGPUNotificationQueueIODispatch(uint64_t a1)
{
  data = 0;
  v7 = 0;
  dataSize = 16;
  for (i = *(a1 + 32); ; i = *(a1 + 32))
  {
    result = IODataQueueDequeue(i, &data, &dataSize);
    if (result)
    {
      break;
    }

    dispatch_semaphore_signal(*(a1 + 64));
    v4 = data;
    data[2](data, v7);
    _Block_release(v4);
    data = 0;
    v7 = 0;
    dataSize = 16;
  }

  return result;
}

CFStringRef ioGPUNotificationQueueCopyFormatDescription(void *a1, const __CFDictionary *a2)
{
  v4 = a1[3];
  v5 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(0, a2, @"<IOGPUNotificationQueue %p ID=0x%llu refcnt=%d>", a1, v4, v5);
}

CFStringRef ioGPUNotificationQueueCopyDebugDescription(void *a1)
{
  v2 = a1[3];
  v3 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(0, 0, @"<IOGPUNotificationQueue %p ID=0x%llu refcnt=%d>", a1, v2, v3);
}

void IOGPUMetalCommandBufferStorageGrowSegmentList(uint64_t a1)
{
  v2 = *(a1 + 96);
  v3 = *(v2 + 132);
  if (v3 >= 0x200000)
  {
    v4 = v3 + 0x100000;
  }

  else
  {
    v4 = 2 * v3;
  }

  [*(v2 + 8) setShmemSize:v4];
  Shmem = IOGPUMetalDeviceShmemPoolCreateShmem(*(v2 + 8));
  if (!Shmem)
  {
    v25 = *(a1 + 120);
    v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
    if (v25)
    {
      if (v26)
      {
        IOGPUMetalCommandBufferStorageGrowSegmentList_cold_1(v25);
        abort();
      }
    }

    else if (v26)
    {
      IOGPUMetalCommandBufferStorageGrowSegmentList_cold_2();
    }

    abort();
  }

  v6 = Shmem;
  memcpy(Shmem[17], *(a1 + 104), *(*(a1 + 96) + 132));
  IOGPUMetalDeviceShmemRelease(*(a1 + 96));
  *(a1 + 96) = v6;
  if (*(a1 + 836))
  {
    v7 = *(a1 + 128) - *(a1 + 104);
    v8 = v6[17];
    v9 = v8 + *(v6 + 33);
    *(a1 + 104) = v8;
    *(a1 + 112) = v9;
    v10 = v8 + v7;
    *(a1 + 120) = v8;
    *(a1 + 128) = v10;
    v11 = v10 + 32;
    *(a1 + 136) = v10 + 32;
    v12 = v9 - (v10 + 32);
  }

  else
  {
    v13 = *(a1 + 832);
    if (v13)
    {
      if (v13 == 1)
      {
        v14 = *(a1 + 816) - *(a1 + 104);
        v15 = v6[17];
        v16 = v15 + *(v6 + 33);
        *(a1 + 104) = v15;
        *(a1 + 112) = v16;
        v17 = v15 + v14;
        *(a1 + 816) = v17;
        *(a1 + 808) = v17;
      }

      else
      {
        v27 = MTLReleaseAssertionFailure();
        _iogpuMetalCommandBufferStorageSetupShmems(v27);
      }

      return;
    }

    v18 = *(a1 + 104);
    v19 = *(a1 + 120) - v18;
    v20 = *(a1 + 128) - v18;
    v21 = v6[17];
    v22 = v21 + *(v6 + 33);
    *(a1 + 104) = v21;
    *(a1 + 112) = v22;
    v23 = v21 + v19;
    *(a1 + 808) = v23;
    v24 = v21 + v20;
    *(a1 + 120) = v23;
    *(a1 + 128) = v24;
    v11 = v24 + 32;
    *(a1 + 136) = v24 + 32;
    v12 = v22 - (v24 + 32);
  }

  IOGPUResourceListReset(a1 + 144, v11, v12, 0);
}

uint64_t _iogpuMetalCommandBufferStorageSetupShmems(uint64_t a1, uint64_t *a2)
{
  result = IOGPUMetalDeviceShmemPoolCreateShmem(*a2);
  if (result)
  {
    v5 = *(result + 136);
    v6 = *(result + 132);
    *(a1 + 96) = result;
    *(a1 + 104) = v5;
    *(a1 + 808) = v5;
    *(a1 + 832) = -1;
    *(a1 + 840) = 0;
    *(a1 + 816) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 112) = v5 + v6;
    *(a1 + 120) = 0;
    Shmem = IOGPUMetalDeviceShmemPoolCreateShmem(a2[1]);
    if (Shmem)
    {
      v8 = Shmem[17];
      *(a1 + 32) = Shmem;
      *(a1 + 40) = v8;
      *(a1 + 56) = v8 + *(Shmem + 33);
      v9 = Shmem[17];
      *(a1 + 48) = v9;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      if (*(StatusReg + 288) == 11181)
      {
        *(a1 + 888) = 0;
      }

      else
      {
        *v9 = 0xAC0000000FLL;
        bzero(v9 + 1, 0xA4uLL);
        *(a1 + 888) = v9 + 1;
        *(a1 + 48) = v9 + 172;
        IOGPUMetalCommandBufferStorageBeginKernelCommands(a1, v9);
        v11 = *(a1 + 816);
        v12 = v9 + 172 - *(a1 + 40);
        v13 = *(a1 + 824);
        *(a1 + 828) = v13 + 1;
        *(v11 + 8 * v13 + 20) = v12;
      }

      return 1;
    }

    else
    {
      IOGPUMetalDeviceShmemRelease(*(a1 + 96));
      result = 0;
      *(a1 + 96) = 0;
    }
  }

  return result;
}

void _iogpuMetalCommandBufferStorageFree(IOGPUMetalCommandBufferStorage *a1)
{
  IOGPUResourceListDestroy(&a1->var14);
  if (a1->var3)
  {
    _iogpuMetalCommandBufferStorageFree();
  }

  if (a1->var8)
  {
    _iogpuMetalCommandBufferStorageFree();
  }

  if (a1->var25)
  {
    _iogpuMetalCommandBufferStorageReleaseCurrentResources(a1);
    free(a1->var25);
    a1->var25 = 0;
  }

  _iogpuMetalCommandBufferStorageReleaseExtraResources(a1);
  var20 = a1->var20;
  if (var20)
  {
    [(IOGPUMetalCommandBufferResourceInfo *)var20 releaseAllObjectsAndReset];
    v3 = a1->var20;
    MTLResourceListRelease();
    a1->var20 = 0;
  }

  var21 = a1->var21;
  if (var21)
  {
    [var21 releaseAllObjectsAndReset];
    v5 = a1->var21;
    MTLResourceListRelease();
    a1->var21 = 0;
  }

  a1[1].var2.var0 = 0;
  a1[1].var2.var1 = 0;

  free(a1);
}

void _iogpuMetalCommandBufferStorageReleaseExtraResources(IOGPUMetalCommandBufferStorage *a1)
{
  var22 = a1->var22;
  if (var22)
  {
    v3 = 0;
    p_var22 = &a1->var22;
    do
    {
      v5 = *(a1->var24 + 8 * v3);
      if (v5)
      {
        IOGPUMetalPooledResourceRelease(v5);
        var22 = *p_var22;
      }

      ++v3;
    }

    while (v3 < var22);
    free(a1->var24);
    *p_var22 = 0;
    p_var22[1] = 0;
    p_var22[2] = 0;
  }
}

void _iogpuMetalCommandBufferStorageReleaseCurrentResources(IOGPUMetalCommandBufferStorage *a1)
{
  var29 = a1->var29;
  if (var29)
  {
    v3 = 0;
    v4 = var29 << 6;
    do
    {
      v5 = a1->var25 + v3;
      v6 = *(v5 + 4);
      if (v6)
      {
        IOGPUMetalPooledResourceRelease(v6);
        *(v5 + 14) = 0;
        *(v5 + 3) = 0;
        *(v5 + 4) = 0;
      }

      v3 += 64;
    }

    while (v4 != v3);
  }
}

uint64_t __IOGPUMetalCommandBufferStorageFinalizeShmemHeader_block_invoke(uint64_t result, uint64_t a2, BOOL *a3)
{
  v3 = *(*(*(result + 32) + 8) + 24);
  v4 = *v3;
  v5 = &v3[v4];
  LODWORD(v4) = v4 + 1;
  v5[1] = *(a2 + 40);
  **(*(*(result + 32) + 8) + 24) = v4;
  *a3 = v4 == 40;
  return result;
}

uint64_t _mtlIOGPUCommandBufferStorageBeginSegmentList(uint64_t result)
{
  v1 = *(result + 832);
  if (v1 != -1)
  {
    if (v1 == 1)
    {
      v3 = *(result + 816);
      v4 = *(result + 824) + 1;
      *(v3 + 8) = v4;
      v2 = (v3 + 8 * v4 + 16);
      *(result + 808) = v2;
      *(result + 816) = 0;
      goto LABEL_6;
    }

    result = MTLReleaseAssertionFailure();
  }

  v2 = *(result + 808);
LABEL_6:
  *(result + 832) = 0;
  *(result + 120) = v2;
  *v2 = *(result + 800);
  v2[1] = 0;
  *(result + 128) = v2 + 2;
  *(result + 136) = v2 + 6;
  return result;
}

void *IOGPUMetalCommandBufferStorageGetSegmentListPointers(void *result, void *a2, void *a3, void *a4)
{
  v7 = result;
  if (!result[15])
  {
    result = _mtlIOGPUCommandBufferStorageBeginSegmentList(result);
  }

  if (a2)
  {
    *a2 = v7[15];
  }

  if (a3)
  {
    *a3 = v7[16];
  }

  if (a4)
  {
    *a4 = v7[14];
  }

  return result;
}

uint64_t IOGPUMetalCommandBufferStorageResumeSegment(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 848);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a1 + 856);
  if (!v3)
  {
    return 0;
  }

  *(a1 + 128) = v2;
  *(a1 + 136) = v3;
  *(a1 + 848) = 0;
  *(a1 + 856) = 0;
  --*(v1 + 8);
  --*(a1 + 840);
  *(v2 + 24) = 0;
  *(v2 + 12) = 0;
  return 1;
}

void IOGPUMetalCommandBufferStoragePoolDealloc(_DWORD *a1)
{
  v2 = *a1;
  if (v2)
  {
    do
    {
      v4 = *(v2 + 16);
      v3 = *(v2 + 24);
      v5 = (v4 + 24);
      if (!v4)
      {
        v5 = (a1 + 2);
      }

      *v5 = v3;
      *v3 = v4;
      --a1[5];
      IOGPUMetalCommandBufferStorageDealloc(v2);
      v2 = v4;
    }

    while (v4);
  }

  free(a1);
}

void IOGPUMetalCommandBufferStoragePoolPurge(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 16));
  v2 = *a1;
  if (*a1)
  {
    do
    {
      v4 = *(v2 + 16);
      v3 = *(v2 + 24);
      v5 = (v4 + 24);
      if (!v4)
      {
        v5 = (a1 + 8);
      }

      *v5 = v3;
      *v3 = v4;
      --*(a1 + 20);
      IOGPUMetalCommandBufferStorageDealloc(v2);
      v2 = v4;
    }

    while (v4);
  }

  os_unfair_lock_unlock((a1 + 16));
}

void *IOGPUMetalCommandBufferStorageAllocDebugBuffer(void *a1)
{
  result = IOGPUMetalDeviceShmemPoolCreateShmem(*(*(a1[1] + 40) + 56));
  if (result)
  {
    a1[108] = result;
    v3 = result[17];
    a1[109] = v3;
    a1[110] = v3 + *(result + 33);
  }

  return result;
}

void IOGPUMetalCommandBufferStorageGrowDebugBuffer(void *a1, int a2)
{
  v3 = a1[108];
  v4 = *(v3 + 132);
  v5 = v4 + a2;
  while (v4 < v5)
  {
    if (v4 >= 0x200000)
    {
      v4 += 0x100000;
    }

    else
    {
      v4 *= 2;
    }
  }

  [*(v3 + 8) setShmemSize:?];
  Shmem = IOGPUMetalDeviceShmemPoolCreateShmem(*(v3 + 8));
  if (!Shmem)
  {
    v9 = a1[15];
    v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
    if (v9)
    {
      if (v10)
      {
        IOGPUMetalCommandBufferStorageGrowDebugBuffer_cold_1(v9);
        abort();
      }
    }

    else if (v10)
    {
      IOGPUMetalCommandBufferStorageGrowDebugBuffer_cold_2();
    }

    abort();
  }

  v7 = Shmem;
  IOGPUMetalDeviceShmemRelease(a1[108]);
  a1[108] = v7;
  v8 = v7[17];
  a1[109] = v8;
  a1[110] = v8 + *(v7 + 33);
}

uint64_t IOGPUMetalCommandBufferStorageGetDebugBufferPointers(uint64_t result, void *a2, void *a3)
{
  if (a2)
  {
    *a2 = *(result + 872);
  }

  if (a3)
  {
    *a3 = *(result + 880);
  }

  return result;
}

void IOGPUMetalCommandBufferStorageGrowSidebandBuffer(void *a1, int a2)
{
  v2 = a1[8];
  if (!v2)
  {
    IOGPUMetalCommandBufferStorageGrowSidebandBuffer_cold_3();
  }

  v4 = *(v2 + 132) + a2;
  for (i = *(*(a1[1] + 40) + 16); [i shmemSize] < v4; objc_msgSend(i, "setShmemSize:", v8))
  {
    v6 = [i shmemSize];
    v7 = [i shmemSize];
    if (v6 >= 0x200000)
    {
      v8 = (v7 + 0x100000);
    }

    else
    {
      v8 = (2 * v7);
    }
  }

  Shmem = IOGPUMetalDeviceShmemPoolCreateShmem(i);
  if (!Shmem)
  {
    v13 = a1[15];
    v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
    if (v13)
    {
      if (v14)
      {
        IOGPUMetalCommandBufferStorageGrowSidebandBuffer_cold_1(v13);
        abort();
      }
    }

    else if (v14)
    {
      IOGPUMetalCommandBufferStorageGrowSidebandBuffer_cold_2();
    }

    abort();
  }

  v10 = Shmem;
  v11 = a1[10] - a1[9];
  memcpy(Shmem[17], *(v2 + 136), v11);
  IOGPUMetalDeviceShmemRelease(a1[8]);
  v12 = v10[17];
  a1[11] = v12 + *(v10 + 33);
  a1[9] = v12;
  a1[10] = v10[17] + v11;
  a1[8] = v10;
}

unint64_t IOGPUMetalCommandBufferStorageAddResidencySets(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  if (a4)
  {
    v7 = 8;
  }

  else
  {
    v7 = 32;
  }

  v8 = a1 + 896;
  v9 = *(a1 + 896 + 8 * a4);
  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AB50]);
    *(v8 + 8 * a4) = v9;
  }

  if (a3)
  {
    do
    {
      v10 = *a2++;
      [*(v8 + 8 * a4) addObject:v10];
      --a3;
    }

    while (a3);
    v9 = *(v8 + 8 * a4);
  }

  result = [v9 count];
  if (result > v7)
  {
    return IOGPUMetalCommandBufferStorageAddResidencySets_cold_1();
  }

  return result;
}

void IOGPUMetalResidencySetListDuplicate(uint64_t a1)
{
  if (a1)
  {
    operator new();
  }

  IOGPUMetalResidencySetListDuplicate_cold_1();
}

uint64_t __IOGPUMetalResidencySetList::operator=(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 80; i += 40)
  {
    if (a1 != a2)
    {
      *(a1 + i + 32) = *(a2 + i + 32);
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned int,void *> *>>((a1 + i), *(a2 + i + 16), 0);
    }
  }

  return a1;
}

void IOGPUMetalResidencySetListCreate(uint64_t a1)
{
  if (a1)
  {
    operator new();
  }

  IOGPUMetalResidencySetListCreate_cold_1();
}

unint64_t _IOGPUMetalResidencySetListInitialize(unint64_t result, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 888);
  if (!v2)
  {
    _IOGPUMetalResidencySetListInitialize();
  }

  v4 = result;
  v5 = 0;
  v6 = 0;
  v7 = a2 + 896;
  v8 = 1;
  do
  {
    v9 = v8;
    v10 = *(v7 + 8 * v5);
    if (v10)
    {
      result = [*(v7 + 8 * v5) count];
      if (result > *v2)
      {
        _IOGPUMetalResidencySetListInitialize();
      }

      v11 = result;
      if (*(a2 + 912))
      {
        if (result > *(&unk_1CA0CCDB8 + v5))
        {
          _IOGPUMetalResidencySetListInitialize();
        }

        result = [v10 getObjects:v16 count:result];
        if (v11)
        {
          v13 = v16;
          do
          {
            v14 = *v13++;
            result = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>((v4 + 40 * v5), (v14 + 40));
            --v11;
          }

          while (v11);
        }
      }

      else if (result)
      {
        v12 = &v2[v6 + 1];
        v6 += result;
        do
        {
          result = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>((v4 + 40 * v5), v12++);
          --v11;
        }

        while (v11);
      }
    }

    v8 = 0;
    v5 = 1;
  }

  while ((v9 & 1) != 0);
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void IOGPUMetalResidencySetListDestroy(uint64_t a1)
{
  if (a1)
  {
    for (i = 40; i != -40; i -= 40)
    {
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(a1 + i);
    }

    JUMPOUT(0x1CCA97AD0);
  }

  IOGPUMetalResidencySetListDestroy_cold_1();
}

BOOL IOGPUMetalCommandBufferStorageMergeResidencySetList(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    IOGPUMetalCommandBufferStorageMergeResidencySetList_cold_2();
  }

  if (!a2)
  {
    IOGPUMetalCommandBufferStorageMergeResidencySetList_cold_1();
  }

  v4 = 0;
  v5 = 1;
  while (1)
  {
    v6 = v5;
    v7 = *(a1 + 40 * v4 + 24) + [*(a2 + 896 + 8 * v4) count];
    v8 = *(&unk_1CA0CCDB8 + v4);
    if (v7 > v8)
    {
      break;
    }

    v5 = 0;
    v4 = 1;
    if ((v6 & 1) == 0)
    {
      v14 = 0u;
      v15 = 0u;
      v16 = 1065353216;
      v17 = 0u;
      v18 = 0u;
      v19 = 1065353216;
      v9 = a1;
      goto LABEL_8;
    }
  }

  v14 = 0u;
  v15 = 0u;
  v16 = 1065353216;
  v17 = 0u;
  v18 = 0u;
  v19 = 1065353216;
  v9 = &v14;
  __IOGPUMetalResidencySetList::operator=(&v14, a1);
LABEL_8:
  _IOGPUMetalResidencySetListInitialize(v9, a2);
  if (*(v9 + 3) <= 0x20uLL)
  {
    v11 = *(v9 + 8);
    v10 = v11 < 9;
    if (v11 <= 8 && v7 > v8)
    {
      __IOGPUMetalResidencySetList::operator=(a1, &v14);
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  for (i = 40; i != -40; i -= 40)
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v14 + i);
  }

  return v10;
}

void sub_1CA0ACC80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  for (i = 40; i != -40; i -= 40)
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&a9 + i);
  }

  _Unwind_Resume(a1);
}

uint64_t IOGPUMetalCommandBufferStorageFinalizeResidencySetList(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    IOGPUMetalCommandBufferStorageFinalizeResidencySetList_cold_6();
  }

  v2 = *(result + 888);
  if (!v2)
  {
    IOGPUMetalCommandBufferStorageFinalizeResidencySetList_cold_5();
  }

  if (!a2)
  {
    IOGPUMetalCommandBufferStorageFinalizeResidencySetList_cold_4();
  }

  v3 = *(a2 + 24);
  if (v3 >= 0x21)
  {
    IOGPUMetalCommandBufferStorageFinalizeResidencySetList_cold_3();
  }

  v4 = *(a2 + 64);
  if (v4 >= 9)
  {
    IOGPUMetalCommandBufferStorageFinalizeResidencySetList_cold_2();
  }

  v5 = 0;
  v6 = 0;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = *(a2 + 40 * v5 + 16);
    if (v9)
    {
      v10 = &v2[v6 + 1];
      do
      {
        *v10++ = *(v9 + 4);
        v9 = *v9;
        ++v6;
      }

      while (v9);
    }

    v7 = 0;
    v5 = 1;
  }

  while ((v8 & 1) != 0);
  if (v4 + v3 != v6)
  {
    IOGPUMetalCommandBufferStorageFinalizeResidencySetList_cold_1();
  }

  *v2 = v6;
  *(result + 912) = 1;
  return result;
}

void IOGPUMetal4CommandBufferStorageEndCommandBuffer(uint64_t a1)
{
  if (*(a1 + 888))
  {
    v2 = 0;
    v3 = a1 + 896;
    v4 = 1;
    do
    {
      v5 = v4;
      v6 = *(v3 + 8 * v2);
      if (v6)
      {
        if ([v6 count])
        {
          v9[0] = 0;
          v9[1] = v9;
          v9[2] = 0x2020000000;
          v9[3] = *(a1 + 888);
          v7 = *(v3 + 8 * v2);
          v8[0] = MEMORY[0x1E69E9820];
          v8[1] = 3221225472;
          v8[2] = __IOGPUMetal4CommandBufferStorageEndCommandBuffer_block_invoke;
          v8[3] = &unk_1E8362C68;
          v8[4] = v9;
          [v7 enumerateObjectsUsingBlock:v8];
          _Block_object_dispose(v9, 8);
        }
      }

      v4 = 0;
      v2 = 1;
    }

    while ((v5 & 1) != 0);
  }
}

void sub_1CA0ACE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __IOGPUMetal4CommandBufferStorageEndCommandBuffer_block_invoke(uint64_t result, uint64_t a2, BOOL *a3)
{
  v3 = *(*(*(result + 32) + 8) + 24);
  v4 = *v3;
  v5 = &v3[v4];
  LODWORD(v4) = v4 + 1;
  v5[1] = *(a2 + 40);
  **(*(*(result + 32) + 8) + 24) = v4;
  *a3 = v4 == 40;
  return result;
}

uint64_t IOGPUMetal4CommandBufferStorageFinalizeCommandBuffer(uint64_t result)
{
  v1 = result;
  v2 = *(result + 808);
  v3 = *(result + 832);
  if (v3 == 1)
  {
    v5 = *(result + 816);
    v6 = *(result + 824) + 1;
    *(v5 + 8) = v6;
    *(result + 808) = v5 + 8 * v6 + 16;
    *(result + 832) = -1;
    *(result + 816) = 0;
    goto LABEL_7;
  }

  if (!v3)
  {
    goto LABEL_5;
  }

  if (v2 == *(result + 104))
  {
    result = _mtlIOGPUCommandBufferStorageBeginSegmentList(result);
LABEL_5:
    v4 = *(v1 + 128);
    *(*(v1 + 120) + 12) = v4 - *(v1 + 120);
    *(v1 + 808) = v4;
    *(v1 + 832) = -1;
    *(v1 + 120) = 0;
    *(v1 + 128) = 0u;
    *(v1 + 848) = 0u;
  }

LABEL_7:
  *(v2 + 12) |= 0x80000000;
  return result;
}

void std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned int,void *> *>>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = *(a2 + 4);
        *(v8 + 4) = v9;
        v10 = *v8;
        v8[1] = v9;
        inserted = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__node_insert_multi_prepare(a1, v9, v8 + 4);
        std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__node_insert_multi_perform(a1, v8, inserted);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_multi<unsigned int const&>();
  }
}

void sub_1CA0AD040(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__rehash<false>(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = *(v16 + 8);
    if (v14.u32[0] > 1uLL)
    {
      v20 = *(v16 + 8);
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && *(v16 + 16) == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void *std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__rehash<false>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t *std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t IOGPUIOCommandQueueGetTypeID()
{
  if (IOGPUIOCommandQueueGetTypeID_onceToken != -1)
  {
    IOGPUIOCommandQueueGetTypeID_cold_1();
  }

  return kIOGPUIOCommandQueueID;
}

uint64_t __IOGPUIOCommandQueueGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  kIOGPUIOCommandQueueID = result;
  return result;
}

void *IOGPUIOCommandQueueCreate(mach_port_t *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  input[2] = *MEMORY[0x1E69E9840];
  v7 = *MEMORY[0x1E695E490];
  if (IOGPUIOCommandQueueGetTypeID_onceToken != -1)
  {
    IOGPUIOCommandQueueGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      IOGPUIOCommandQueueCreate_cold_5();
    }

    goto LABEL_18;
  }

  v9 = Instance;
  CFRetain(a1);
  v9[2] = a1;
  v9[3] = 0;
  v9[5] = 0;
  input[0] = a3;
  input[1] = a4;
  outputCnt = 2;
  if (IOConnectCallMethod(a1[5], 0x2Au, input, 2u, 0, 0, output, &outputCnt, 0, 0))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      IOGPUIOCommandQueueCreate_cold_2();
    }

    v10 = a1;
    goto LABEL_17;
  }

  *(v9 + 3) = *output;
  v11 = IOGPUNotificationQueueCreate(a1, 0x2000u, 0x10u);
  v9[5] = v11;
  if (!v11)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      IOGPUIOCommandQueueCreate_cold_4();
    }

    goto LABEL_16;
  }

  v15[0] = v9[3];
  v15[1] = IOGPUNotificationQueueGetID(v11);
  if (IOConnectCallMethod(a1[5], 0x2Cu, v15, 2u, 0, 0, 0, 0, 0, 0))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      IOGPUIOCommandQueueCreate_cold_3();
    }

LABEL_16:
    v10 = v9;
LABEL_17:
    CFRelease(v10);
LABEL_18:
    v9 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

dispatch_queue_t *IOGPUIOCommandQueueSetDispatchQueue(dispatch_queue_t *result, NSObject *a2)
{
  if (result)
  {
    v3 = result;
    result = CFGetTypeID(result);
    if (result == kIOGPUIOCommandQueueID)
    {
      v4 = v3[5];

      return IOGPUNotificationQueueSetDispatchQueue(v4, a2, 2);
    }
  }

  return result;
}

uint64_t IOGPUIOCommandQueueGetConnect(void *a1)
{
  v1 = 3758097090;
  if (a1 && CFGetTypeID(a1) == kIOGPUIOCommandQueueID)
  {
    return *(a1[2] + 20);
  }

  return v1;
}

void *IOGPUIOCommandQueueGetID(void *result)
{
  if (result)
  {
    v1 = result;
    if (CFGetTypeID(result) == kIOGPUIOCommandQueueID)
    {
      return v1[3];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void IOGPUIOCommandQueueRelease(const void *a1)
{
  if (a1 && CFGetTypeID(a1) == kIOGPUIOCommandQueueID)
  {

    CFRelease(a1);
  }
}

void *IOGPUIOCommandQueueGetGlobalTraceObjectID(void *result)
{
  if (result)
  {
    v1 = result;
    if (CFGetTypeID(result) == kIOGPUIOCommandQueueID)
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

uint64_t IOGPUIOCommandQueueSubmitIOCommands(uint64_t a1, _DWORD *a2, unsigned int a3)
{
  v3 = 3758097090;
  if (a1 && CFGetTypeID(a1) == kIOGPUIOCommandQueueID)
  {
    v7 = *(a1 + 40);
    if (!v7)
    {
      return 3758096385;
    }

    if (!a2)
    {
      return v3;
    }

    if (!*a2)
    {
      return 3758096385;
    }

    if (a3 <= 0x2000)
    {
      v9 = 24 * *a2;
      IOGPUNotificationQueueWillSubmit(v7, a3);
      v3 = IOConnectCallMethod(*(*(a1 + 16) + 20), 0x2Du, (a1 + 24), 1u, a2, v9 + 8, 0, 0, 0, 0);
      if (v3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
        {
          IOGPUIOCommandQueueSubmitIOCommands_cold_1();
        }

        IOGPUNotificationQueueDidSubmit(*(a1 + 40), a3);
      }
    }

    else
    {
      v3 = 3758097131;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        IOGPUIOCommandQueueSubmitIOCommands_cold_2();
      }
    }
  }

  return v3;
}

uint64_t IOGPUIOCommandQueueCreateIOCommandBuffer(uint64_t a1, _DWORD *a2, uint64_t *a3)
{
  output[2] = *MEMORY[0x1E69E9840];
  v3 = 3758097090;
  if (a1)
  {
    v7 = CFGetTypeID(a1) != kIOGPUIOCommandQueueID || a2 == 0;
    if (!v7 && a3 != 0)
    {
      outputCnt = 2;
      v3 = IOConnectCallMethod(*(*(a1 + 16) + 20), 0x2Eu, (a1 + 24), 1u, 0, 0, output, &outputCnt, 0, 0);
      if (v3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
        {
          IOGPUIOCommandQueueCreateIOCommandBuffer_cold_1();
        }

        v9 = 0;
        *a2 = 0;
      }

      else
      {
        CFRetain(a1);
        v9 = output[1];
        *a2 = output[0];
      }

      *a3 = v9;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t IOGPUIOCommandQueueDestroyIOCommandBuffer(void *a1, unsigned int a2)
{
  input[2] = *MEMORY[0x1E69E9840];
  v2 = 3758097090;
  if (a1 && CFGetTypeID(a1) == kIOGPUIOCommandQueueID)
  {
    v5 = a1[2];
    input[0] = a1[3];
    input[1] = a2;
    v2 = IOConnectCallMethod(*(v5 + 20), 0x2Fu, input, 2u, 0, 0, 0, 0, 0, 0);
    if (v2)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        IOGPUIOCommandQueueDestroyIOCommandBuffer_cold_1();
      }
    }

    else
    {
      CFRelease(a1);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t IOGPUIOCommandQueueTryCancelIOCommandBuffer(void *a1, unsigned int a2)
{
  input[2] = *MEMORY[0x1E69E9840];
  v2 = 3758097090;
  if (a1)
  {
    if (CFGetTypeID(a1) == kIOGPUIOCommandQueueID)
    {
      v5 = a1[2];
      input[0] = a1[3];
      input[1] = a2;
      v2 = IOConnectCallMethod(*(v5 + 20), 0x30u, input, 2u, 0, 0, 0, 0, 0, 0);
      if (v2)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
        {
          IOGPUIOCommandQueueTryCancelIOCommandBuffer_cold_1();
        }
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t IOGPUIOCommandQueuePerformIO(uint64_t a1)
{
  if (a1 && CFGetTypeID(a1) == kIOGPUIOCommandQueueID)
  {
    return IOConnectCallMethod(*(*(a1 + 16) + 20), 0x31u, (a1 + 24), 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOGPUIOCommandQueueIOCommandBufferComplete(uint64_t a1)
{
  if (a1 && CFGetTypeID(a1) == kIOGPUIOCommandQueueID)
  {
    return IOConnectCallMethod(*(*(a1 + 16) + 20), 0x32u, (a1 + 24), 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOGPUIOCommandQueueIOCommandBufferBarrierComplete(void *a1, unsigned int a2, unsigned int a3)
{
  input[3] = *MEMORY[0x1E69E9840];
  v3 = 3758097090;
  if (a1)
  {
    if (CFGetTypeID(a1) == kIOGPUIOCommandQueueID)
    {
      v7 = a1[2];
      input[0] = a1[3];
      input[1] = a2;
      input[2] = a3;
      v3 = IOConnectCallMethod(*(v7 + 20), 0x33u, input, 3u, 0, 0, 0, 0, 0, 0);
      if (v3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
        {
          IOGPUIOCommandQueueIOCommandBufferBarrierComplete_cold_1();
        }
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

void ioGPUIOCommandQueueFinalize(uint64_t a1)
{
  if (_cmdq_finalize_queue_once != -1)
  {
    ioGPUIOCommandQueueFinalize_cold_1();
  }

  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __ioGPUIOCommandQueueFinalize_block_invoke_2;
    block[3] = &__block_descriptor_tmp_6;
    block[4] = v2;
    dispatch_async(_cmdq_finalize_queue, block);
  }

  if (*(a1 + 24))
  {
    v3 = IOConnectCallMethod(*(*(a1 + 16) + 20), 0x2Bu, (a1 + 24), 1u, 0, 0, 0, 0, 0, 0);
    if (v3)
    {
      fprintf(*MEMORY[0x1E69E9848], "IOGPUCommandQueue delete failed with error 0x%x", v3);
    }
  }

  *(a1 + 24) = 0;
  CFRelease(*(a1 + 16));
}

CFStringRef ioGPUIOCommandQueueCopyFormatDescription(void *a1, const __CFDictionary *a2)
{
  v4 = a1[3];
  v5 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(0, a2, @"<IOGPUIOCommandQueue %p ID=0x%llu refcnt=%d>", a1, v4, v5);
}

CFStringRef ioGPUIOCommandQueueCopyDebugDescription(void *a1)
{
  v2 = a1[3];
  v3 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(0, 0, @"<IOGPUIOCommandQueue %p ID=0x%llu refcnt=%d>", a1, v2, v3);
}

dispatch_queue_t __ioGPUIOCommandQueueFinalize_block_invoke()
{
  result = dispatch_queue_create("com.Metal.NotificationQueueCleaupQueue", 0);
  _cmdq_finalize_queue = result;
  return result;
}

void __ioGPUIOCommandQueueFinalize_block_invoke_2(uint64_t a1)
{
  IOGPUNotificationQueueSetDispatchQueue(*(a1 + 32), 0, 0);
  v2 = *(a1 + 32);

  IOGPUNotificationQueueRelease(v2);
}

uint64_t IOGPUDeviceGetTypeID()
{
  if (IOGPUDeviceGetTypeID_onceToken != -1)
  {
    IOGPUDeviceGetTypeID_cold_1();
  }

  return kIOGPUDeviceID;
}

void IOGPUDeviceRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t IOGPUDeviceGetConfig(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6)
{
  v6 = 3758097090;
  if (a1 && CFGetTypeID(a1) == kIOGPUDeviceID)
  {
    v6 = 0;
    *a2 = *(a1 + 160);
    *a3 = *(a1 + 164);
    v13 = *(a1 + 176);
    *a4 = *(a1 + 168);
    *a5 = v13;
    *a6 = *(a1 + 184);
  }

  return v6;
}

unsigned int *IOGPUDeviceGetConnect(unsigned int *result)
{
  if (result)
  {
    v1 = result;
    if (CFGetTypeID(result) == kIOGPUDeviceID)
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

uint64_t IOGPUDeviceGetName(mach_port_t *a1, char *a2, size_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = 3758097090;
  v9 = 64;
  if (a1)
  {
    if (CFGetTypeID(a1) == kIOGPUDeviceID)
    {
      v3 = IOConnectCallStructMethod(a1[5], 1u, 0, 0, outputStruct, &v9);
      if (!v3)
      {
        strncpy(a2, outputStruct, a3);
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t IOGPUDeviceGetCurrentTraceFilter(mach_port_t *a1)
{
  v1 = 3758097090;
  v4 = 8;
  if (a1 && CFGetTypeID(a1) == kIOGPUDeviceID)
  {
    outputStruct = 0;
    return IOConnectCallMethod(a1[5], 3u, 0, 0, 0, 0, 0, 0, &outputStruct, &v4);
  }

  return v1;
}

void *IOGPUDeviceSetWaitForGPUCallback(uint64_t a1, void *aBlock)
{
  result = _Block_copy(aBlock);
  *(a1 + 112) = result;
  return result;
}

uint64_t IOGPUDeviceGetMemoryData(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v16 = 0u;
  v17 = 0u;
  outputStruct = 0u;
  outputStructCnt = 48;
  result = IOConnectCallStructMethod(*(a1 + 20), 0x15u, 0, 0, &outputStruct, &outputStructCnt);
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

uint64_t IOGPUDeviceSetAppGPURole(uint64_t a1, int a2, unsigned int a3)
{
  input[2] = *MEMORY[0x1E69E9840];
  result = 3758097088;
  if (a1)
  {
    v5 = *(a1 + 20);
    if (v5)
    {
      input[0] = a2;
      input[1] = a3;
      result = IOConnectCallScalarMethod(v5, 0x21u, input, 2u, 0, 0);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOGPUDeviceGetAppGPURole(uint64_t a1, int a2, _DWORD *a3)
{
  input[1] = *MEMORY[0x1E69E9840];
  result = 3758097088;
  if (a1)
  {
    v5 = *(a1 + 20);
    if (v5)
    {
      output = 0;
      input[0] = a2;
      outputCnt = 1;
      result = IOConnectCallScalarMethod(v5, 0x22u, input, 1u, &output, &outputCnt);
      if (!result)
      {
        *a3 = output;
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOGPUDeviceCreateVNIODesc(_DWORD *cf, int a2, _DWORD *a3, void *a4)
{
  *&input[5] = *MEMORY[0x1E69E9840];
  v4 = 3758097088;
  input[0] = a2;
  if (cf)
  {
    if (cf[5])
    {
      if (CFGetTypeID(cf) == kIOGPUDeviceID)
      {
        v4 = 3758097090;
        if (a3)
        {
          if (a4)
          {
            outputCnt = 2;
            v4 = IOConnectCallMethod(cf[5], 0x28u, input, 1u, 0, 0, &input[1], &outputCnt, 0, 0);
            if (v4)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
              {
                IOGPUDeviceCreateVNIODesc_cold_1();
              }

              v8 = 0;
              *a3 = 0;
            }

            else
            {
              v8 = *&input[3];
              *a3 = input[1];
            }

            *a4 = v8;
          }
        }
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t IOGPUDeviceDestroyVNIODesc(_DWORD *cf, int a2)
{
  v2 = 3758097088;
  LODWORD(input) = a2;
  if (cf && cf[5] && CFGetTypeID(cf) == kIOGPUDeviceID)
  {
    return IOConnectCallMethod(cf[5], 0x29u, &input, 1u, 0, 0, 0, 0, 0, 0);
  }

  return v2;
}

uint64_t IOGPUDeviceCreateDeviceAssertion(_DWORD *cf, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  input[2] = *MEMORY[0x1E69E9840];
  v4 = 3758097088;
  if (cf)
  {
    if (cf[5])
    {
      if (CFGetTypeID(cf) == kIOGPUDeviceID)
      {
        input[0] = a2;
        input[1] = a3;
        output = 0;
        outputCnt = 1;
        v4 = IOConnectCallScalarMethod(cf[5], 0x36u, input, 2u, &output, &outputCnt);
        if (!v4)
        {
          *a4 = output;
        }
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t IOGPUDevicePerformMapping(_DWORD *cf)
{
  if (!cf || !cf[5] || CFGetTypeID(cf) != kIOGPUDeviceID)
  {
    return 3758097088;
  }

  v2 = cf[5];

  return IOConnectCallScalarMethod(v2, 0x37u, 0, 0, 0, 0);
}

void ioGPUDeviceFinalize(uint64_t a1)
{
  _Block_release(*(a1 + 112));
  *(a1 + 112) = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2 == (a1 + 24);
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    free(v2);
  }

  IOConnectRelease(*(a1 + 20));
  *(a1 + 20) = 0;
  os_unfair_lock_lock((a1 + 120));
  v5 = (a1 + 128);
  v4 = *(a1 + 128);
  if (v4)
  {
    v6 = MEMORY[0x1E69E99E8];
    v7 = MEMORY[0x1E69E9A60];
    do
    {
      v8 = v4[2];
      if (*v6)
      {
        (*v6)(1677721632, *v7, *v4, *(v4 + 2), 0, 0);
      }

      v9 = *v5;
      if (*v5 == v4)
      {
        v11 = (a1 + 128);
      }

      else
      {
        do
        {
          v10 = v9;
          v9 = v9[2];
        }

        while (v9 != v4);
        v11 = v10 + 2;
      }

      *v11 = v9[2];
      free(v4);
      v4 = v8;
    }

    while (v8);
  }

  os_unfair_lock_unlock((a1 + 120));
}

CFStringRef ioGPUDeviceCopyFormatDescription(unsigned int *a1, const __CFDictionary *a2)
{
  v4 = a1[5];
  v5 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(0, a2, @"<IOGPUDevice %p connect=%08x refcnt=%d>", a1, v4, v5);
}

CFStringRef ioGPUDeviceCopyDebugDescription(unsigned int *a1)
{
  v2 = a1[5];
  v3 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(0, 0, @"<IOGPUDevice %p connect=%08x refcnt=%d>", a1, v2, v3);
}

uint64_t IOGPUCommandQueueGetTypeID()
{
  if (IOGPUCommandQueueGetTypeID_onceToken != -1)
  {
    IOGPUCommandQueueGetTypeID_cold_1();
  }

  return kIOGPUCommandQueueID;
}

void *IOGPUCommandQueueGetConnect(void *result)
{
  if (result)
  {
    v1 = result;
    if (CFGetTypeID(result) == kIOGPUCommandQueueID)
    {
      return *(v1[2] + 20);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *IOGPUCommandQueueGetID(void *result)
{
  if (result)
  {
    v1 = result;
    if (CFGetTypeID(result) == kIOGPUCommandQueueID)
    {
      return v1[3];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t IOGPUCommandQueueSetResourceGroups(uint64_t a1, uintptr_t p2, uintptr_t a3)
{
  v4 = *(a1 + 24);
  v5 = *(*(a1 + 16) + 20);
  if (p2 <= 1)
  {
    a3 = *a3;
  }

  return IOConnectTrap3(v5, 7u, v4, p2, a3);
}

uint64_t IOGPUCommandQueueSignalSharedEvent(uint64_t a1, uintptr_t p2, uintptr_t p3)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    IOGPUCommandQueueSignalSharedEvent_cold_1();
  }

  v4 = p3;
  v5 = HIDWORD(p3);
  v6 = *(a1 + 24);
  v7 = *(*(a1 + 16) + 20);

  return IOConnectTrap4(v7, 9u, v6, p2, v4, v5);
}

uint64_t IOGPUCommandQueueWaitSharedEvent(uint64_t a1, uintptr_t p2, uintptr_t p3, uintptr_t p5)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    IOGPUCommandQueueWaitSharedEvent_cold_1();
  }

  v5 = p3;
  v6 = HIDWORD(p3);
  v7 = *(a1 + 24);
  v8 = *(*(a1 + 16) + 20);

  return IOConnectTrap5(v8, 0xAu, v7, p2, v5, v6, p5);
}

uint64_t IOGPUCommandQueueSignalMTLEvent(uint64_t a1, uintptr_t p2, uintptr_t p3)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    IOGPUCommandQueueSignalMTLEvent_cold_1();
  }

  v4 = p3;
  v5 = HIDWORD(p3);
  v6 = *(a1 + 24);
  v7 = *(*(a1 + 16) + 20);

  return IOConnectTrap4(v7, 0xBu, v6, p2, v4, v5);
}

uint64_t IOGPUCommandQueueWaitMTLEvent(uint64_t a1, uintptr_t p2, uintptr_t p3, uintptr_t p5)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    IOGPUCommandQueueWaitMTLEvent_cold_1();
  }

  v5 = p3;
  v6 = HIDWORD(p3);
  v7 = *(a1 + 24);
  v8 = *(*(a1 + 16) + 20);

  return IOConnectTrap5(v8, 0xCu, v7, p2, v5, v6, p5);
}

uint64_t IOGPUCommandQueueSupportsBackgroundAppRole(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1 | a2)
  {
    v2 = 3758097088;
  }

  else
  {
    v2 = 3758097090;
  }

  if (a1)
  {
    if (a2)
    {
      v3 = *(a2 + 24);
    }

    else
    {
      v3 = 0;
    }

    v2 = IOConnectTrap1(*(a1 + 20), 0xDu, v3);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = v2;
      _os_log_impl(&dword_1CA097000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "BackgroundAppRole kr = 0x%X", v6, 8u);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

CFStringRef ioGPUCommandQueueCopyFormatDescription(void *a1, const __CFDictionary *a2)
{
  v4 = a1[3];
  v5 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(0, a2, @"<IOGPUCommandQueue %p ID=0x%llu refcnt=%d>", a1, v4, v5);
}

CFStringRef ioGPUCommandQueueCopyDebugDescription(void *a1)
{
  v2 = a1[3];
  v3 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(0, 0, @"<IOGPUCommandQueue %p ID=0x%llu refcnt=%d>", a1, v2, v3);
}

dispatch_queue_t __ioGPUCommandQueueFinalize_block_invoke()
{
  result = dispatch_queue_create("com.Metal.NotificationQueueCleaupQueue", 0);
  _cmdq_finalize_queue_0 = result;
  return result;
}

uint64_t IOGPUResourceGetTypeID()
{
  if (IOGPUResourceGetTypeID_onceToken != -1)
  {
    IOGPUResourceGetTypeID_cold_1();
  }

  return kIOGPUResourceID;
}

uint64_t IOGPUResourceGetPrivate(uint64_t a1)
{
  if (*(*(a1 + 16) + 52))
  {
    return a1 + 120;
  }

  else
  {
    return 0;
  }
}

void *IOGPUResourceGetClientSharedPrivate(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (IOGPUResourceGetTypeID_onceToken != -1)
    {
      IOGPUResourceGetTypeID_cold_1();
    }

    if (v2 == kIOGPUResourceID && *(v1[2] + 44))
    {
      return (v1[9] + 128);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFTypeID IOGPUResourceFinishEvent(uint64_t a1, unsigned int a2)
{
  v3 = a2;
  result = IOGPUDeviceTestEventFast(*(a1 + 16), (*(a1 + 72) + (a2 << 6)));
  if (a1)
  {
    if (!result)
    {
      result = CFGetTypeID(a1);
      if (result == kIOGPUResourceID)
      {
        v5 = *(a1 + 48);
        v6 = *(a1 + 16);
        v7 = *(v6 + 112);
        if (v7)
        {
          (*(v7 + 16))();
          v6 = *(a1 + 16);
        }

        v8 = *(v6 + 20);

        return IOConnectTrap2(v8, 2u, v5, v3);
      }
    }
  }

  return result;
}

uint64_t IOGPUResourceCheckSysMem(uint64_t a1, int a2)
{
  if ((*(a1 + 52) & 0x80) != 0)
  {
    return IOGPUDeviceTestEventFast(*(a1 + 16), (*(a1 + 72) + ((a2 == 0) << 6)));
  }

  else
  {
    return 1;
  }
}

CFTypeID IOGPUResourceFinishSysMem(CFTypeID result, int a2)
{
  if ((*(result + 52) & 0x80) != 0)
  {
    return IOGPUResourceFinishEvent(result, a2 == 0);
  }

  return result;
}

IOSurfaceRef IOGPUResourceCreateIOSurface(uint64_t a1, uint64_t a2, uint64_t a3)
{
  input[3] = *MEMORY[0x1E69E9840];
  input[0] = *(a1 + 48);
  input[1] = a2;
  input[2] = a3;
  output = 0;
  outputCnt = 1;
  v3 = 0;
  if (!IOConnectCallScalarMethod(*(*(a1 + 16) + 20), 0x24u, input, 3u, &output, &outputCnt))
  {
    v3 = IOSurfaceLookupFromMachPort(output);
    mach_port_mod_refs(*MEMORY[0x1E69E9A60], output, 0, -1);
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t IOGPUResourceDetachBacking(uint64_t a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = *(a1 + 48);
  result = IOConnectCallMethod(*(*(a1 + 16) + 20), 0x25u, input, 1u, 0, 0, 0, 0, 0, 0);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOGPUResourceReplaceBackingWithBytes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  inputStruct[1] = a2;
  inputStruct[0] = v3;
  inputStruct[2] = a3;
  return IOConnectCallMethod(*(*(a1 + 16) + 20), 0x26u, 0, 0, inputStruct, 0x18uLL, 0, 0, 0, 0);
}

uint64_t IOGPUResourceReplaceBackingWithRanges(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, void *a6)
{
  output[1] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 48);
  inputStruct[1] = a2;
  outputCnt = 1;
  inputStruct[0] = v8;
  if (a5)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  BYTE4(inputStruct[0]) = v9 | a4;
  inputStruct[2] = a3;
  result = IOConnectCallMethod(*(*(a1 + 16) + 20), 0x27u, 0, 0, inputStruct, 0x18uLL, output, &outputCnt, 0, 0);
  if (result)
  {
    v11 = 1;
  }

  else
  {
    v11 = a5 == 0;
  }

  if (!v11)
  {
    *a6 = output[0];
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef ioGPUResourceCopyFormatDescription(unsigned int *a1, const __CFDictionary *a2)
{
  v4 = a1[12];
  v5 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(0, a2, @"<IOGPUResource %p id=%08x refcnt=%d>", a1, v4, v5);
}

CFStringRef ioGPUResourceCopyDebugDescription(unsigned int *a1)
{
  v2 = a1[12];
  v3 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(0, 0, @"<IOGPUResource %p id=%08x refcnt=%d>", a1, v2, v3);
}

uint64_t IOGPUDeviceTestEventFast(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 32);
  v3 = *a2 | 0x8000;
  v4 = __clz(__rbit32(v3));
  result = 1;
  if (v4 != 15)
  {
    while (1)
    {
      v6 = a2[v4 + 1];
      if (v6 << 24 != -16777216 && ((v6 & 0xFFFFFF00) - **(v2 + 8 * v6)) > 0)
      {
        break;
      }

      v3 ^= 1 << v4;
      v4 = __clz(__rbit32(v3));
      if (v4 >= 0xF)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

id errorWithMessage(uint64_t a1)
{
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObject:a1 forKey:*MEMORY[0x1E696A578]];
  v2 = objc_alloc(MEMORY[0x1E696ABC0]);
  v3 = [v2 initWithDomain:*MEMORY[0x1E6973FA8] code:2 userInfo:v1];

  return v3;
}

const char *tensorDataTypeToString(uint64_t a1)
{
  if (a1 <= 36)
  {
    if (a1 > 28)
    {
      if (a1 == 29)
      {
        return "MTLTensorDataTypeInt32";
      }

      if (a1 == 33)
      {
        return "MTLTensorDataTypeUInt32";
      }
    }

    else
    {
      if (a1 == 3)
      {
        return "MTLTensorDataTypeFloat32";
      }

      if (a1 == 16)
      {
        return "MTLTensorDataTypeFloat16";
      }
    }
  }

  else if (a1 <= 44)
  {
    if (a1 == 37)
    {
      return "MTLTensorDataTypeInt16";
    }

    if (a1 == 41)
    {
      return "MTLTensorDataTypeUInt16";
    }
  }

  else
  {
    switch(a1)
    {
      case '-':
        return "MTLTensorDataTypeInt8";
      case '1':
        return "MTLTensorDataTypeUInt8";
      case 'y':
        return "MTLTensorDataTypeBFloat16";
    }
  }

  return "";
}

uint64_t IOGPUResourceListAddResourceNoThreshold(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = (0x9E3779B97F4A7C15 * v3) >> -*(a1 + 488);
  v5 = *(*(a1 + 456) + 4 * v4);
  do
  {
    if (!v5)
    {
      return _ioGPUResourceListAddResourceEntry(a1, a2, a3, 1);
    }

    v6 = __clz(__rbit32(v5));
    v5 &= ~(1 << v6);
    v7 = (v6 + v4) & (*(a1 + 480) - 1);
    v8 = *(a1 + 472);
    v9 = *(v8 + 8 * v7);
  }

  while ((*(v8 + 8 * v7) & 0xFFFFFF) != v3);
  v10 = (HIWORD(v9) | a3);
  if (v10 != HIWORD(v9))
  {
    *(v8 + 8 * v7) = v9 & 0xFFFFFFFFFFFFLL | (v10 << 48);
    *(*(a1 + 512) + (((v9 >> 27) & 0x1FFFFF) << 6) + 2 * ((v9 >> 24) & 7) + 48) = HIWORD(v9) | a3;
    v9 = v9 & 0xFFFFFFFFFFFFLL | (v10 << 48);
  }

  return (v9 >> 24) & 0xFFFFFF;
}

BOOL _ioGPUResourceListMergeGroup(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v5 = 0;
    v6 = 0;
    v7 = (a2 + 48);
    v8 = a2;
    v9 = a3;
    while (1)
    {
      v10 = a2 + (v5 << 6);
      v11 = *(v10 + 62);
      v12 = v7;
      v13 = v8;
      if (*(v10 + 62))
      {
        break;
      }

LABEL_6:
      ++v5;
      v8 += 16;
      v7 += 32;
      v6 = v5 >= v9;
      if (v5 == v9)
      {
        return 1;
      }
    }

    while (1)
    {
      v18 = 0;
      LODWORD(v18) = *v13;
      v14 = (v13[6] << 10);
      v17[0] = 0;
      v17[1] = v14;
      v15 = *v12++;
      if (IOGPUResourceListAddResource(a1, v17, v15) == -1)
      {
        break;
      }

      ++v13;
      if (!--v11)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
    return 1;
  }

  return v6;
}

uint64_t IOGPUResourceListShowResources(uint64_t result)
{
  v1 = *(result + 544);
  if (v1)
  {
    v2 = 0;
    v3 = *(result + 512);
    v4 = v3;
    do
    {
      v5 = v3 + (v2 << 6);
      v6 = *(v5 + 62);
      if (*(v5 + 62))
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
      v4 += 64;
    }

    while (v2 != v1);
  }

  return result;
}

void ioGPUResourceListRebuild(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 480);
  v2 = 2 * v1;
  *(a1 + 480) = 2 * v1;
  ++*(a1 + 488);
  *(a1 + 484) = 2 * v1 - 1;
  *(a1 + 496) = ((v1 >> 5) & 0x3FFFFFF) - 1;
  if (((2 * v1) & 0x80000000) != 0)
  {
LABEL_18:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1CA097000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "ioGPUResourceListRebuild() failed.  Hash limit reached", buf, 2u);
    }

    abort();
  }

  while (1)
  {
    v4 = *(a1 + 456);
    if (*(a1 + 492) >= v2)
    {
      bzero(v4, 4 * v2);
      bzero(*(a1 + 464), *(a1 + 480) >> 3);
    }

    else
    {
      free(v4);
      free(*(a1 + 472));
      free(*(a1 + 464));
      *(a1 + 456) = malloc_type_calloc(*(a1 + 480), 4uLL, 0x100004052888210uLL);
      *(a1 + 472) = malloc_type_malloc(8 * *(a1 + 480), 0x100004000313F17uLL);
      *(a1 + 464) = malloc_type_calloc(*(a1 + 480) >> 3, 1uLL, 0x100004000313F17uLL);
      *(a1 + 492) = *(a1 + 480);
    }

    v18 = *(a1 + 544);
    if (!v18)
    {
      break;
    }

    v5 = 0;
    v6 = *(a1 + 512);
    v7 = (v6 + 12);
    v19 = v6;
    while (!HIWORD(v19[16 * v5 + 15]))
    {
LABEL_11:
      ++v5;
      v6 += 16;
      v7 += 32;
      if (v5 == v18)
      {
        goto LABEL_17;
      }
    }

    v8 = 0;
    v9 = HIWORD(v19[16 * v5 + 15]) << 24;
    v10 = v7;
    v11 = v6;
    while (1)
    {
      v12 = *v11++;
      v13 = v12 & 0xFFFFFF;
      v14 = *v10++;
      if ((ioGPUResourceListAddHashValue(a1, v13 | (v14 << 48) | ((v5 << 27) | v8) & 0xFFFFFF000000) & 1) == 0)
      {
        break;
      }

      v8 += 0x1000000;
      if (v9 == v8)
      {
        goto LABEL_11;
      }
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      v16 = *(a1 + 480);
      *buf = 67109376;
      v21 = v16;
      v22 = 1024;
      v23 = 2 * v16;
      _os_log_fault_impl(&dword_1CA097000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "intermediate rebuild failed, trying larger hash table %d -> %d...\n", buf, 0xEu);
    }

    v15 = *(a1 + 480);
    v2 = 2 * v15;
    *(a1 + 480) = 2 * v15;
    ++*(a1 + 488);
    *(a1 + 484) = 2 * v15 - 1;
    *(a1 + 496) = ((v15 >> 5) & 0x3FFFFFF) - 1;
    if (((2 * v15) & 0x80000000) != 0)
    {
      goto LABEL_18;
    }
  }

LABEL_17:
  v17 = *MEMORY[0x1E69E9840];
}

void IOGPUMetalSuballocatorDestroy(IOGPUMetalSuballocator *a1)
{
  if (!a1)
  {
    IOGPUMetalSuballocatorDestroy_cold_1();
  }

  IOGPUMetalSuballocator::~IOGPUMetalSuballocator(a1);

  free(v1);
}

void std::vector<short,IOGPUMetalSuballocatorHeap::Allocator<short>>::push_back[abi:ne200100](const void **a1, __int16 *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      std::vector<NSObject *>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      v13 = IOGPUMetalSuballocatorHeap::Allocator<short>::allocate(a1, v12);
      v7 = *a1;
      v8 = a1[1] - *a1;
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[2 * v9];
    v15 = &v13[2 * v12];
    v16 = *a2;
    v17 = &v14[-2 * (v8 >> 1)];
    *v14 = v16;
    v6 = v14 + 2;
    memcpy(v17, v7, v8);
    v18 = *a1;
    *a1 = v17;
    a1[1] = v6;
    a1[2] = v15;
    if (v18)
    {
      free(v18);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void IOGPUMetalSuballocator::~IOGPUMetalSuballocator(IOGPUMetalSuballocator *this)
{
  for (i = 2728; i != -88; i -= 88)
  {
    IOGPUMetalSuballocatorHeap::~IOGPUMetalSuballocatorHeap((this + i));
  }
}

void IOGPUMetalSuballocatorHeap::~IOGPUMetalSuballocatorHeap(IOGPUMetalSuballocatorHeap *this)
{
  for (i = *this; i != *(this + 1); i += 64)
  {
    if (*(i + 48))
    {
      __assert_rtn("~IOGPUMetalSuballocatorHeap", "IOGPUMetalSuballocator.mm", 97, "false && At least one suballocation was not freed before suballocator is destroyed, primary buffer is leaked!");
    }
  }

  std::__tree<std::__value_type<unsigned int,short>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,short>,std::less<unsigned int>,true>,IOGPUMetalSuballocatorHeap::Allocator<std::__value_type<unsigned int,short>>>::destroy(this + 48, *(this + 7));
  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    free(v3);
  }

  v4 = *this;
  if (*this)
  {
    *(this + 1) = v4;
    free(v4);
  }
}

void std::__tree<std::__value_type<unsigned int,short>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,short>,std::less<unsigned int>,true>,IOGPUMetalSuballocatorHeap::Allocator<std::__value_type<unsigned int,short>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,short>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,short>,std::less<unsigned int>,true>,IOGPUMetalSuballocatorHeap::Allocator<std::__value_type<unsigned int,short>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,short>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,short>,std::less<unsigned int>,true>,IOGPUMetalSuballocatorHeap::Allocator<std::__value_type<unsigned int,short>>>::destroy(a1, a2[1]);

    free(a2);
  }
}

void std::vector<IOGPUIOCommandQueueCommandBufferCallbackBlock>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<NSObject *>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<IOGPUIOCommandQueueCommandBufferCallbackBlock>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_1CA0B83F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37)
{
  if (__p)
  {
    operator delete(__p);
  }

  v39 = *(v37 - 160);
  if (v39)
  {
    *(v37 - 152) = v39;
    operator delete(v39);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_64c66_ZTSNSt3__16vectorI24IOGPUIODecompressionArgsNS_9allocatorIS1_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v2 = a1 + 64;
  *(v2 + 16) = 0;
  return std::vector<IOGPUIODecompressionArgs>::__init_with_size[abi:ne200100]<IOGPUIODecompressionArgs*,IOGPUIODecompressionArgs*>(v2, *(a2 + 64), *(a2 + 72), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 72) - *(a2 + 64)) >> 3));
}

void __destroy_helper_block_e8_64c66_ZTSNSt3__16vectorI24IOGPUIODecompressionArgsNS_9allocatorIS1_EEEE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<IOGPUIOCommandQueueCommandBufferCallbackBlock>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<IOGPUIODecompressionArgs>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<IOGPUIODecompressionArgs>::__init_with_size[abi:ne200100]<IOGPUIODecompressionArgs*,IOGPUIODecompressionArgs*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<IOGPUIODecompressionArgs>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1CA0B9B30(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<IOGPUIODecompressionArgs>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<IOGPUIODecompressionArgs>>(a1, a2);
  }

  std::vector<NSObject *>::__throw_length_error[abi:ne200100]();
}

void submitCommandBuffers(void *a1)
{
  v1 = a1;
  v25 = a1[1];
  v2 = *(a1 + 5);
  if (v2)
  {
    v3 = 0;
    v26 = *a1;
    v4 = *(a1 + 4);
    v5 = &unk_1E8363040;
    v27 = *(a1 + 5);
    do
    {
      if (v2 - v3 >= 0x40)
      {
        v6 = 64;
      }

      else
      {
        v6 = v2 - v3;
      }

      if (*__globalGPUCommPage)
      {
        [v25 backgroundTrackingPID];
        [objc_msgSend(v25 "device")];
        [v25 globalTraceObjectID];
        v7 = v1[3];
        IOGPUDeviceTraceEvent();
      }

      v8 = (v26 + (v3 * v4));
      v9 = IOGPUCommandQueueSubmitCommandBuffers(*(v1[1] + 128), 0, v6, v8, v4, 0);
      v10 = v9;
      v28 = v3;
      if ((v9 & 0x80000000) != 0)
      {
        if (v9 == -536870206)
        {
          v10 = 10;
          goto LABEL_17;
        }

        if (v9 == -536870174)
        {
          v10 = 7;
LABEL_17:
          v11 = 1;
          goto LABEL_19;
        }
      }

      else
      {
        if (!v9)
        {
          v11 = 0;
          goto LABEL_19;
        }

        if (v9 == 268435459)
        {
          v10 = 15;
          goto LABEL_17;
        }
      }

      v11 = 1;
      v10 = 1;
LABEL_19:
      v12 = v6;
      if (*__globalGPUCommPage)
      {
        [v25 globalTraceObjectID];
        v13 = v1[3];
        mach_absolute_time();
        IOGPUDeviceTraceEvent();
      }

      v14 = 0x1EC432000uLL;
      v15 = v1;
      v16 = v5;
      if (v11)
      {
        v17 = v8;
        v18 = v10;
        v19 = 0;
        v20 = 0;
        v29 = MEMORY[0x1E69E9820];
        do
        {
          v21 = *&v17[v19 + 24];
          v22 = v14;
          v23 = *(v15[1] + *(v14 + 952));
          block[0] = v29;
          block[1] = 3221225472;
          block[2] = ___ZL20submitCommandBuffersPv_block_invoke;
          block[3] = v16;
          block[4] = v21;
          v31 = v18;
          v24 = v18;
          dispatch_async(v23, block);
          v18 = v24;
          v14 = v22;
          ++v20;
          v19 += v4;
        }

        while (v20 < v12);
      }

      v2 = v27;
      v3 = v28 + 64;
      v5 = v16;
      v1 = v15;
    }

    while (v28 + 64 < v27);
  }

  free(v1);
}

void _waitForEvent(char *a1, void *a2, uint64_t a3, int a4)
{
  *&a1[*MEMORY[0x1E6974250]] = 0;
  *&a1[*MEMORY[0x1E6974258]] = 0;
  [a1 commitMappingCommandBuffer];
  if ([a2 _isSharedEvent])
  {
    v8 = [a2 eventPort];
    v9 = *&a1[*MEMORY[0x1E6974260]];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = ___ZL13_waitForEventP23IOGPUMetal4CommandQueuePU18objcproto8MTLEvent11objc_objectyjPP7NSError_block_invoke;
    v14[3] = &unk_1E8363068;
    v14[4] = a1;
    v14[5] = a3;
    v15 = v8;
    v16 = a4;
    v10 = v14;
    v11 = v9;
  }

  else
  {
    v11 = *&a1[*MEMORY[0x1E6974260]];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZL13_waitForEventP23IOGPUMetal4CommandQueuePU18objcproto8MTLEvent11objc_objectyjPP7NSError_block_invoke_2;
    block[3] = &unk_1E8363090;
    block[4] = a2;
    block[5] = a1;
    block[6] = a3;
    v13 = a4;
    v10 = block;
  }

  dispatch_async(v11, v10);
}

void _addResidencySets(IOGPUMetal4CommandQueue *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock(&a1->_resourceGroupsLock);
  if (!a1->_resourceGroups[a4])
  {
    a1->_resourceGroups[a4] = objc_alloc_init(MEMORY[0x1E696AB50]);
  }

  if (a3)
  {
    v8 = 0;
    v9 = 1;
    v10 = MEMORY[0x1E6974248];
    do
    {
      [(NSCountedSet *)a1->_resourceGroups[a4] addObject:*(a2 + 8 * v8)];
      if (*__globalGPUCommPage)
      {
        v11 = *(&a1->super.super.super.isa + *v10);
        v12 = *(*(a2 + 8 * v8) + 48);
        IOGPUDeviceTraceEvent();
      }

      v8 = v9++;
    }

    while (v8 < a3);
  }

  if (a4 == 1)
  {
    v13 = 8;
  }

  else
  {
    v13 = 32;
  }

  if ([(NSCountedSet *)a1->_resourceGroups[a4] count]> v13)
  {
    MTLReportFailure();
  }

  _updateResidencySets(a1);

  os_unfair_lock_unlock(&a1->_resourceGroupsLock);
}

void _removeResidencySets(IOGPUMetal4CommandQueue *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock(&a1->_resourceGroupsLock);
  if (!a1->_resourceGroups[a4])
  {
    a1->_resourceGroups[a4] = objc_alloc_init(MEMORY[0x1E696AB50]);
  }

  if (a3)
  {
    v8 = 0;
    v9 = 1;
    v10 = MEMORY[0x1E6974248];
    v11 = (&a1->super.super.super.isa + a4);
    do
    {
      [v11[19] removeObject:*(a2 + 8 * v8)];
      if (*__globalGPUCommPage)
      {
        v12 = *(&a1->super.super.super.isa + *v10);
        v13 = *(*(a2 + 8 * v8) + 48);
        IOGPUDeviceTraceEvent();
      }

      v8 = v9++;
    }

    while (v8 < a3);
  }

  _updateResidencySets(a1);

  os_unfair_lock_unlock(&a1->_resourceGroupsLock);
}

void sub_1CA0BD0B8(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void ___ZL20submitCommandBuffersPv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 32);

  _Block_release(v3);
}

uint64_t ___ZL13_waitForEventP23IOGPUMetal4CommandQueuePU18objcproto8MTLEvent11objc_objectyjPP7NSError_block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) eventName];
  v3 = *(a1 + 48);
  v4 = *(*(a1 + 40) + 128);
  v5 = *(a1 + 56);

  return IOGPUCommandQueueWaitMTLEvent(v4, v2, v3, v5);
}

void _updateResidencySets(IOGPUMetal4CommandQueue *a1)
{
  os_unfair_lock_assert_owner(&a1->_resourceGroupsLock);
  v2 = [(NSCountedSet *)a1->_resourceGroups[0] count];
  v3 = [(NSCountedSet *)a1->_resourceGroups[1] count]+ v2;
  if (v3 >= 0x29)
  {
    _updateResidencySets();
  }

  if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  v5 = (4 * v4);
  v6 = (8 * v4);
  v7 = malloc_type_malloc(v5, 0x100004052888210uLL);
  v8 = malloc_type_malloc(v6, 0x80040B8603338uLL);
  bzero(v7, v5);
  bzero(v8, v6);
  v9 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1;
  do
  {
    v12 = v11;
    v13 = a1->_resourceGroups[v9];
    v17[0] = v10;
    v17[1] = 3221225472;
    v17[2] = ___ZL20_updateResidencySetsP23IOGPUMetal4CommandQueue_block_invoke;
    v17[3] = &unk_1E83629E8;
    v18 = v3;
    v17[4] = &v19;
    v17[5] = v8;
    v17[6] = v7;
    [(NSCountedSet *)v13 enumerateObjectsUsingBlock:v17];
    v11 = 0;
    v9 = 1;
  }

  while ((v12 & 1) != 0);
  if (*(v20 + 6) != v3)
  {
    __assert_rtn("_updateResidencySets", "IOGPUMetal4CommandQueue.mm", 597, "resourceGroupCount == _count");
  }

  v14 = *(&a1->super.super.super.isa + *MEMORY[0x1E6974260]);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZL20_updateResidencySetsP23IOGPUMetal4CommandQueue_block_invoke_2;
  block[3] = &unk_1E8362A10;
  v16 = v3;
  block[4] = a1;
  block[5] = v7;
  block[6] = v8;
  dispatch_async(v14, block);
  _Block_object_dispose(&v19, 8);
}

void *___ZL20_updateResidencySetsP23IOGPUMetal4CommandQueue_block_invoke(void *result, _DWORD *a2)
{
  v2 = *(result[4] + 8);
  v3 = *(v2 + 24);
  if (v3 < *(result + 14))
  {
    v5 = result;
    result = a2;
    *(v5[5] + 8 * *(*(v5[4] + 8) + 24)) = result;
    *(v5[6] + 4 * *(*(v5[4] + 8) + 24)) = a2[10];
    v2 = *(v5[4] + 8);
    v3 = *(v2 + 24);
  }

  *(v2 + 24) = v3 + 1;
  return result;
}

void ___ZL20_updateResidencySetsP23IOGPUMetal4CommandQueue_block_invoke_2(uint64_t a1)
{
  v2 = IOGPUCommandQueueSetResourceGroups(*(*(a1 + 32) + 128), *(a1 + 56), *(a1 + 40));
  if (v2)
  {
    v3 = v2;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ___updateResidencySets_block_invoke_2_cold_1(v3);
    }
  }

  if (*(a1 + 56))
  {
    v4 = 0;
    do
    {
    }

    while (v4 < *(a1 + 56));
  }

  free(*(a1 + 40));
  free(*(a1 + 48));
}

void ___updateResidencySets_block_invoke_2_cold_1(int a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1CA097000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "IOGPUCommandQueueSetResourceGroups() failed: %08x", v2, 8u);
  v1 = *MEMORY[0x1E69E9840];
}

void ioGPUNotificationQueueFinalize_cold_3(int a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&dword_1CA097000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "IOGPUNotificationQueue delete failed with error 0x%x", v2, 8u);
  v1 = *MEMORY[0x1E69E9840];
}

void IOGPUMetalCommandBufferStorageGrowSegmentList_cold_1(uint64_t *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v8 = *(a1 + 2);
  v9 = *(a1 + 3);
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x22u);
  v6 = *MEMORY[0x1E69E9840];
}

void IOGPUMetalCommandBufferStorageGrowSegmentList_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void _iogpuMetalCommandBufferStorageFree()
{
  __assert_rtn("_iogpuMetalCommandBufferStorageFree", "IOGPUMetalCommandBufferStorage.mm", 156, "!storage->kernelCommandBufferResource");
}

{
  __assert_rtn("_iogpuMetalCommandBufferStorageFree", "IOGPUMetalCommandBufferStorage.mm", 157, "!storage->segmentListShmem");
}

void IOGPUMetalCommandBufferStorageGrowKernelCommandBuffer_cold_4(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 120);
  v8 = *v1;
  v9 = *(v1 + 2);
  v10 = *(v1 + 3);
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x28u);
  v7 = *MEMORY[0x1E69E9840];
}

void IOGPUMetalCommandBufferStorageAllocResourceAtIndex_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void IOGPUMetalCommandBufferStorageGrowDebugBuffer_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void IOGPUMetalCommandBufferStorageGrowDebugBuffer_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void IOGPUMetalCommandBufferStorageGrowSidebandBuffer_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void IOGPUMetalCommandBufferStorageGrowSidebandBuffer_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void _IOGPUMetalResidencySetListInitialize()
{
  __assert_rtn("_IOGPUMetalResidencySetListInitialize", "IOGPUMetalCommandBufferStorage.mm", 1269, "cnt <= limit[groupIndex]");
}

{
  __assert_rtn("_IOGPUMetalResidencySetListInitialize", "IOGPUMetalCommandBufferStorage.mm", 1255, "cnt <= resourceGroupArgs->groupCount");
}

{
  __assert_rtn("_IOGPUMetalResidencySetListInitialize", "IOGPUMetalCommandBufferStorage.mm", 1234, "source.resourceGroupArgs");
}

void IOGPUIOCommandQueueCreate_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void IOGPUIOCommandQueueDestroyIOCommandBuffer_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void IOGPUIOCommandQueueTryCancelIOCommandBuffer_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void IOGPUIOCommandQueueIOCommandBufferBarrierComplete_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void IOGPUDeviceCreateWithOptions_cold_1(int a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&dword_1CA097000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Failed to create an IOGPUDevice... IOServiceOpen returned kIOReturn(0x%X)", v2, 8u);
  v1 = *MEMORY[0x1E69E9840];
}

void IOGPUDeviceCheckAndLogSoftFaultCount_cold_1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_1CA097000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "GPU Soft Fault count: %lld\n", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void IOGPUCommandQueueCreate_cold_2(int a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&dword_1CA097000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Failed to set notification queue for cmd queue: %08x", v2, 8u);
  v1 = *MEMORY[0x1E69E9840];
}

void IOGPUResourceGroupUpdateResources_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1(&dword_1CA097000, MEMORY[0x1E69E9C10], a3, "Group Remove Resources Failed = 0x%X", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

void IOGPUResourceGroupUpdateResources_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1(&dword_1CA097000, MEMORY[0x1E69E9C10], a3, "Group Add Resources Failed = 0x%X", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

void IOGPUResourceGroupUpdateResources_cold_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1(&dword_1CA097000, MEMORY[0x1E69E9C10], a3, "Group Update Resources Failed = 0x%X", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}