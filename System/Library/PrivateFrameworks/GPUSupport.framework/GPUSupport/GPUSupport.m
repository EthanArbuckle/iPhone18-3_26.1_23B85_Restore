void gpusLoadTransformFeedbackBuffers(uint64_t a1)
{
  if (!*(a1 + 816))
  {
    v2 = malloc_type_zone_malloc(*(*a1 + 232), 0x28uLL, 0x1EE5DEDuLL);
    if (!v2)
    {
      abort();
    }

    *(a1 + 816) = v2;
  }

  v3 = 0;
  while (1)
  {
    v4 = *(*(a1 + 40) + v3 + 376);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = **(v4 + 8);
    if (!**(v4 + 8))
    {
      goto LABEL_9;
    }

    if (!(*(*(a1 + 8) + 320))(*(a1 + 16), v4, **(v4 + 8)))
    {
      break;
    }

    **(v4 + 8) = 0;
LABEL_9:
    *(*(a1 + 816) + v3) = v4;
    v3 += 8;
    if (v3 == 40)
    {
      return;
    }
  }

  malloc_zone_free(*(*a1 + 232), *(a1 + 816));
  *(a1 + 816) = 0;
}

uint64_t gldCreateBuffer(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = malloc_type_zone_calloc(*(*a1 + 232), 1uLL, *(*a1 + 128), 0x5EE7D508uLL);
  if (!v8)
  {
    abort();
  }

  v9 = v8;
  *v8 = a3;
  v8[1] = a4;
  (*(a1[1] + 128))(a1, v8);
  *a2 = v9;
  return 0;
}

BOOL gldLoadBuffer(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *v2;
  if (!*v2)
  {
    return 1;
  }

  if (!*(a1 + 288) || (pthread_mutex_lock((a1 + 48)), v6 = *(a2 + 8), v3 = *v6, *v6))
  {
    if ((*(*(a1 + 8) + 320))(a1, a2, v3))
    {
      LODWORD(v3) = 0;
      **(a2 + 8) = 0;
    }
  }

  if (*(a1 + 288))
  {
    pthread_mutex_unlock((a1 + 48));
  }

  return v3 == 0;
}

uint64_t gldDestroyBuffer(void *a1, void *a2)
{
  (*(a1[1] + 136))();
  v4 = a2[2];
  if (v4)
  {
    gldDestroyMemoryPlugin(a1, v4);
    a2[2] = 0;
  }

  malloc_zone_free(*(*a1 + 232), a2);
  return 0;
}

uint64_t gldDestroyMemoryPlugin(uint64_t a1, _OWORD *a2)
{
  if (*a2)
  {
    if (*(a1 + 288))
    {
      pthread_mutex_lock((a1 + 48));
    }

    gpusWaitResource();
    v4 = *a2;
    IOAccelResourceRelease();
    *a2 = 0u;
    a2[1] = 0u;
    if (*(a1 + 288))
    {
      pthread_mutex_unlock((a1 + 48));
    }
  }

  (*(*(a1 + 8) + 152))(a1, a2);
  malloc_zone_free(*(*a1 + 232), a2);
  return 0;
}

uint64_t gldUnbindBuffer(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
    if (v2)
    {
      v3 = *(v2 + 16);
      if (v3)
      {
        if (*(v3 + 24) != 1)
        {
          return (*(*(result + 8) + 472))();
        }
      }
    }
  }

  return result;
}

void gldRestoreBufferData(uint64_t a1, void *a2)
{
  v2 = a2[2];
  if (!v2)
  {
    return;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return;
  }

  if (*(a1 + 288))
  {
    pthread_mutex_lock((a1 + 48));
    v2 = a2[2];
    v3 = *(v2 + 8);
  }

  v6 = *(v2 + 16);
  v7 = *v2;
  CFRetain(*v2);
  if (*(a1 + 288))
  {
    pthread_mutex_unlock((a1 + 48));
  }

  if (v3)
  {
    v8 = *(v3 + 260);
    if (v8 == 128)
    {
      v9 = *v6;
      if ((v6[6] & 1 & ~v9) != 0)
      {
        *v6 = v6[6] & 1 | v9;
      }

      if (!*(*a2 + 29))
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (v8 == 192)
    {
      if (v6[6] & ~*v6)
      {
        IOAccelResourcePageoff();
        goto LABEL_17;
      }

LABEL_16:
      IOAccelResourceFinishEvent();
    }
  }

LABEL_17:

  CFRelease(v7);
}

uint64_t gpusGetKernelBufferResource(void *a1, uint64_t a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, int a8, uint64_t a9)
{
  v17 = *(a2 + 16);
  if (v17)
  {
    v18 = *v17;
  }

  else
  {
    v27 = 0;
    gldCreateMemoryPlugin(a1, &v27);
    v17 = v27;
    *(a2 + 16) = v27;
  }

  *v17 = 0u;
  *(v17 + 1) = 0u;
  *(a9 + 80) = a4;
  *(a9 + 88) = a7;
  *(a9 + 64) = a5;
  *(a9 + 72) = a6;
  *(a9 + 24) = a7;
  *(a9 + 32) = 16777473;
  if (a7 >= a4)
  {
    v19 = a4;
  }

  else
  {
    v19 = a7;
  }

  *(a9 + 8) = v19;
  *(a9 + 10) = 65537;
  *(a9 + 16) = a4;
  *a9 = a3;
  *(a9 + 4) = a8;
  v20 = a1[5];
  v21 = *(a1[1] + 552);
  v22 = IOAccelResourceCreate();
  **(a2 + 16) = v22;
  if (v22)
  {
    ClientShared = IOAccelResourceGetClientShared();
    v24 = *(a2 + 16);
    *(v24 + 8) = ClientShared;
    v25 = 1;
    *(*(v24 + 16) + 28) = 1;
    *(*(a2 + 16) + 24) = IOAccelResourceGetDataBytes();
  }

  else
  {
    v25 = 0;
  }

  IOAccelResourceRelease();
  return v25;
}

uint64_t gldCreateMemoryPlugin(void *a1, void *a2)
{
  v4 = malloc_type_zone_calloc(*(*a1 + 232), 1uLL, *(*a1 + 152), 0x5EE7D508uLL);
  if (!v4)
  {
    abort();
  }

  v5 = v4;
  (*(a1[1] + 144))(a1, v4);
  *a2 = v5;
  return 0;
}

void gldGetMemoryPlugin(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v3 = *(a2 + 16);
    *(a2 + 16) = 0;
    *a3 = v3;
    if (v3)
    {
      **(a2 + 8) |= 1u;
      v4 = *(v3 + 8);
      if (v4)
      {
        if (*(v4 + 260) == 192)
        {
          v5 = *(v3 + 16);
          if (*(v5 + 24) == 1)
          {
            *v5 = 0;
            *(v5 + 12) = 0;
          }
        }
      }
    }
  }
}

void gldSetMemoryPlugin(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(a3 + 8);
    v3 = *(a3 + 16);
    *(a2 + 16) = a3;
    if (v3)
    {
      *(v3 + 28) = 1;
      if (*(v4 + 260) == 192)
      {
        *(v3 + 12) = 0;
        *v3 = 0;
      }

      **(a2 + 8) &= ~1u;
    }
  }
}

uint64_t gldFlushMemoryPlugin(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    if (*(v2 + 24) != 1)
    {
      return (*(*(result + 8) + 472))();
    }
  }

  return result;
}

uint64_t gldTestMemoryPlugin(uint64_t a1, uint64_t *a2)
{
  if (*a2)
  {
    return gpusCheckResource(*a2, 0);
  }

  else
  {
    return 1;
  }
}

uint64_t gldBufferSubData(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a2[1];
  v11 = *v10;
  if (*v10 && !*(*a2 + 31))
  {
    v12 = *(a1 + 16);
    if (!*(v12 + 288) || (pthread_mutex_lock((v12 + 48)), v13 = a2[1], v11 = *v13, *v13))
    {
      if ((*(*(a1 + 8) + 320))(*(a1 + 16), a2, v11))
      {
        LODWORD(v11) = 0;
        *a2[1] = 0;
      }
    }

    v14 = *(a1 + 16);
    if (*(v14 + 288))
    {
      pthread_mutex_unlock((v14 + 48));
    }
  }

  if (v11)
  {
    return 0;
  }

  v16 = *(*(a1 + 8) + 432);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t gldCopyBufferSubData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = **(a2 + 8);
  v13 = **(a3 + 8);
  if (v13 | v12)
  {
    v14 = *(a1 + 16);
    if (*(v14 + 288))
    {
      pthread_mutex_lock((v14 + 48));
      LOBYTE(v12) = **(a2 + 8);
    }

    if (v12 && (*(*(a1 + 8) + 320))(*(a1 + 16), a2, v12))
    {
      LOBYTE(v12) = 0;
      **(a2 + 8) = 0;
    }

    v13 = **(a3 + 8);
    if (v12)
    {
      v15 = 1;
    }

    else
    {
      v15 = v13 == 0;
    }

    if (!v15 && (*(*(a1 + 8) + 320))(*(a1 + 16), a3, **(a3 + 8)))
    {
      LOBYTE(v13) = 0;
      **(a3 + 8) = 0;
    }

    v16 = *(a1 + 16);
    if (*(v16 + 288))
    {
      pthread_mutex_unlock((v16 + 48));
    }
  }

  if (v13 | v12)
  {
    return 0;
  }

  v18 = *(*(a1 + 8) + 440);

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t gpumUpdateUniformBuffers(void *a1)
{
  v2 = 0;
  while (1)
  {
    v3 = *(a1[5] + 8 * v2 + 328);
    if (!v3)
    {
      goto LABEL_20;
    }

    v4 = *v3;
    v5 = *(*v3 + 60);
    if (v5 >= 1)
    {
      v6 = 64;
      do
      {
        v7 = *(a1[5] + 8 * *(*v3 + v6) + 528);
        if (v7 && **(v7 + 8))
        {
          result = (*(a1[1] + 320))(a1[2], v7);
          if (!result)
          {
            return result;
          }

          **(v7 + 8) = 0;
        }

        v6 += 4;
        --v5;
      }

      while (v5);
      v4 = *v3;
    }

    v9 = *(v4 + 28);
    if (!v9)
    {
      goto LABEL_20;
    }

    if (*(v4 + 24))
    {
      return 0;
    }

    if ((*(v3[1] + 64) & 8) != 0 && v9 >= 1)
    {
      v10 = 0;
      v11 = 8 * v9;
      do
      {
        v12 = *(*(v3[1] + 40) + v10);
        if (**(v12 + 8))
        {
          result = (*(a1[1] + 320))(a1[2], *(*(v3[1] + 40) + v10));
          if (!result)
          {
            return result;
          }

          **(v12 + 8) = 0;
        }

        v10 += 8;
      }

      while (v11 != v10);
    }

LABEL_20:
    if (++v2 == 5)
    {
      return 1;
    }
  }
}

uint64_t gldGetBufferAllocationIdentifiers(uint64_t result, _DWORD *a2)
{
  *a2 = 0;
  v2 = *(result + 16);
  if (v2)
  {
    result = *v2;
    if (*v2)
    {
      return IOAccelResourceCreateAllocationIdentifierSet();
    }
  }

  return result;
}

void gpusGenerateCrashLog(uint64_t a1, int a2, uint64_t a3)
{
  if ((a2 & 0x20000000) != 0)
  {
    gpus_ReturnGuiltyForHardwareRestart();
    return;
  }

  if (a3 > -4)
  {
    if (a3 == -3)
    {
      gpus_ReturnTextureErrorKillClient();
      return;
    }

    if (a3 != -2)
    {
      if (a3 == -1)
      {
        gpus_ReturnContextErrorKillClient();
        return;
      }

      goto LABEL_14;
    }

    gpus_ReturnObjectErrorKillClient();
  }

  else
  {
    if (a3 == -536870174)
    {
      gpus_ReturnNotPermittedKillClient();
      return;
    }

    if (a3 != -5)
    {
      if (a3 == -4)
      {
        gpus_ReturnCmdBufferErrorKillClient();
        return;
      }

LABEL_14:
      gpus_ReturnUnexpectedKillClient(a3);
      return;
    }

    gpus_ReturnTokenErrorKillClient();
  }
}

uint64_t gpumCompCreateFence(void *a1, void *a2)
{
  v4 = malloc_type_zone_calloc(*(*a1 + 232), 1uLL, 0x18uLL, 0x5EE7D508uLL);
  if (!v4)
  {
    abort();
  }

  v5 = v4;
  v6 = a1[145];
  v7 = v6 >> 5;
  if ((v6 >> 5))
  {
    v8 = 0;
    v9 = (v6 >> 5);
    while (1)
    {
      v10 = *(a1[144] + 4 * v8);
      if (v10 != -1)
      {
        break;
      }

      if (v9 == ++v8)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
    v10 = 0;
  }

  if (v8 == v7)
  {
LABEL_9:
    malloc_zone_free(*(*a1 + 232), v4);
    v5 = 0;
    result = 10016;
  }

  else
  {
    for (i = 0; i != 32; ++i)
    {
      if (((v10 >> i) & 1) == 0)
      {
        break;
      }
    }

    result = 0;
    *(a1[144] + 4 * v8) |= 1 << i;
    v5[4] = i + 32 * v8;
    *(v5 + 20) = 1;
  }

  *a2 = v5;
  return result;
}

void *__abort_malloc_zone_calloc(malloc_zone_t *a1, size_t size)
{
  result = malloc_type_zone_calloc(a1, 1uLL, size, 0x5EE7D508uLL);
  if (!result)
  {
    abort();
  }

  return result;
}

uint64_t gpumCompTestFence(void *a1, uint64_t a2)
{
  v2 = *(a2 + 20);
  if (v2)
  {
    return v2;
  }

  if (!*(a1[141] + 16 * *(a2 + 16)))
  {
    v5 = *(a1[1] + 584);
    v6 = a1[139];
    v2 = IOAccelDeviceTestEvent();
    *(a2 + 20) = v2;
    return v2;
  }

  return 0;
}

uint64_t gpumCompFinishFence(void *a1, uint64_t a2)
{
  if (*(a2 + 20))
  {
    return 1;
  }

  if (*(a1[141] + 16 * *(a2 + 16)))
  {
    return 0;
  }

  v4 = *(a1[1] + 584);
  v5 = a1[139];
  v6 = IOAccelDeviceTestEvent();
  if ((v6 & 0xFE) == 0)
  {
    v6 = 1;
  }

  *(a2 + 20) = v6;
  return 1;
}

BOOL gpumCompGetFenceStatus(void *a1, uint64_t a2, int *a3)
{
  v4 = gpumCompTestFence(a1, a2);
  v5 = v4 == 0;
  result = v4 != 0;
  if (v5)
  {
    v7 = 3;
  }

  else
  {
    v7 = 1;
  }

  *a3 = v7;
  return result;
}

uint64_t gldCreateQueue(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  v8 = *v7;
  v9 = malloc_type_zone_calloc(*(*v7 + 232), 1uLL, *(*v7 + 160), 0x5EE7D508uLL);
  if (!v9)
  {
    abort();
  }

  v10 = v9;
  *v9 = v8;
  v9[1] = v7;
  v9[2] = a1;
  v9[3] = a4;
  *(v9 + 8) = 0;
  v11 = *(a1 + 40);
  v12 = IOAccelCLContextCreate();
  *(v10 + 40) = v12;
  if (!v12)
  {
    goto LABEL_20;
  }

  *(v10 + 1104) = 0;
  if (MEMORY[0x25302F030](v12, v10 + 1104, v10 + 1112))
  {
LABEL_19:
    IOAccelCLContextRelease();
LABEL_20:
    malloc_zone_free(*(v8 + 232), v10);
    return 10015;
  }

  if (MEMORY[0x25302F020](*(v10 + 40), v10 + 1136, v10 + 1152, v10 + 1120, v10 + 1128))
  {
LABEL_18:
    v24 = *(v10 + 40);
    goto LABEL_19;
  }

  pthread_mutex_lock((a1 + 48));
  v13 = *(v10 + 1128);
  *(v10 + 1168) = v13 >> 6;
  v14 = 24 * (v13 >> 6);
  v15 = (v10 + 1184);
  *(v10 + 1200) = v14;
  *(v10 + 1192) = v14;
  *(v10 + 1208) = -2001041176;
  *(v10 + 1212) = 0;
  *(v10 + 1240) = -1;
  v16 = MEMORY[0x277D85F48];
  if (vm_allocate(*MEMORY[0x277D85F48], (v10 + 1184), v14, 1))
  {
LABEL_17:
    pthread_mutex_unlock((a1 + 48));
    goto LABEL_18;
  }

  *(v10 + 1144) = *(v10 + 1184);
  v17 = (v10 + 1176);
  if (gldCreateBuffer(a1, (v10 + 1176), v10 + 1184, v10 + 1240))
  {
    v18 = *v16;
    v19 = *(v10 + 1184);
    v20 = *(v10 + 1200);
LABEL_16:
    MEMORY[0x25302F430](v18, v19, v20);
    goto LABEL_17;
  }

  v21 = *(*v17)[1];
  v22 = (v7[40])(a1);
  v23 = *v17;
  if (!v22)
  {
    gldDestroyBuffer(a1, v23);
    v18 = *v16;
    v19 = *(v10 + 1184);
LABEL_15:
    v20 = *(v10 + 1192);
    goto LABEL_16;
  }

  **(v23 + 8) = 0;
  *(v10 + 1084) = 16;
  if (gpusQueueSubmitDataBuffers(v10))
  {
    if (*v17)
    {
      gldDestroyBuffer(a1, *v17);
    }

    v19 = *v15;
    if (!*v15)
    {
      goto LABEL_17;
    }

    v18 = *v16;
    goto LABEL_15;
  }

  *(v10 + 1160) = __abort_malloc_zone_calloc(*(v8 + 232), (*(v10 + 1168) >> 3) & 0x1FFFFFFFFFFFFFFCLL);
  ++*(a1 + 292);
  *(a1 + 288) = 1;
  pthread_mutex_unlock((a1 + 48));
  (v7[6])(v10);
  result = 0;
  *a2 = v10;
  return result;
}

uint64_t gpusQueueSubmitDataBuffers(uint64_t a1)
{
  v16 = 0;
  if (*(a1 + 1084))
  {
    v2 = 0;
    v3 = (a1 + 100);
    do
    {
      *v3 += *(v3 - 9) - *(v3 - 13);
      MEMORY[0x25302F060](*(a1 + 40), v2);
      *(v3 - 3) = 0;
      ++v2;
      v3 += 16;
    }

    while (v2 < *(a1 + 1084));
  }

  v4 = MEMORY[0x25302F070](*(a1 + 40), *(a1 + 1072), a1 + 1076, &v16);
  if (!v4)
  {
    if ((*(a1 + 1076) & 0x20000000) != 0)
    {
      v5 = *(*(a1 + 8) + 504);
    }

    else
    {
      if (!v16)
      {
        goto LABEL_10;
      }

      v5 = *(*(a1 + 8) + 504);
    }

    v5();
  }

LABEL_10:
  v6 = MEMORY[0x25302F000](*(a1 + 40));
  *(a1 + 1084) = v6;
  if (v6)
  {
    v7 = 0;
    v8 = (a1 + 56);
    do
    {
      v8[4] = MEMORY[0x25302F010](*(a1 + 40), v7);
      DataBytes = IOAccelResourceGetDataBytes();
      *(v8 - 1) = DataBytes;
      DataSize = IOAccelResourceGetDataSize();
      v11 = *(v8 - 1);
      *v8 = DataBytes + DataSize - 128;
      v8[1] = v11;
      v8[2] = IOAccelResourceGetClientShared();
      v12 = *(a1 + 40);
      IOAccelContextAddResource();
      *(v8 + 44) = 0x100000000;
      ++v7;
      v8 += 8;
    }

    while (v7 < *(a1 + 1084));
  }

  *(a1 + 1072) = 0;
  v13 = *(a1 + 1104);
  v14 = *v13;
  *(v13 + 2) = 131328;
  *(a1 + 1096) = &v13[v14 - 28];
  *(a1 + 1088) = v13 + 6;
  return v4;
}

uint64_t gldDestroyQueue(void *a1)
{
  (*(a1[1] + 56))();
  gldDestroyBuffer(a1[2], a1[147]);
  MEMORY[0x25302F430](*MEMORY[0x277D85F48], a1[148], a1[149]);
  v2 = a1[5];
  IOAccelCLContextRelease();
  v3 = a1[145];
  if (v3)
  {
    malloc_zone_free(*(*a1 + 232), v3);
  }

  malloc_zone_free(*(*a1 + 232), a1);
  return 0;
}

uint64_t gldCreateComputeModule(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = malloc_type_zone_calloc(*(*a1 + 232), 1uLL, *(*a1 + 168), 0x5EE7D508uLL);
  if (!v8)
  {
    abort();
  }

  v9 = v8;
  *v8 = a3;
  v8[1] = a4;
  (*(a1[1] + 160))(a1, v8);
  *a2 = v9;
  return 0;
}

uint64_t gldDestroyComputeModule(void *a1, void *a2)
{
  (*(a1[1] + 168))();
  malloc_zone_free(*(*a1 + 232), a2);
  return 0;
}

uint64_t gldCreateComputeProgram(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = malloc_type_zone_calloc(*(*a1 + 232), 1uLL, *(*a1 + 176), 0x5EE7D508uLL);
  if (!v8)
  {
    abort();
  }

  v9 = v8;
  *v8 = a3;
  v8[1] = a4;
  (*(a1[1] + 176))(a1, v8);
  *a2 = v9;
  return 0;
}

uint64_t gldDestroyComputeProgram(void *a1, void *a2)
{
  (*(a1[1] + 184))();
  malloc_zone_free(*(*a1 + 232), a2);
  return 0;
}

uint64_t gldCreateKernel(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = malloc_type_zone_calloc(*(*a1 + 232), 1uLL, *(*a1 + 184), 0x5EE7D508uLL);
  if (!v12)
  {
    abort();
  }

  v13 = v12;
  *v12 = a4;
  v12[1] = a5;
  v12[2] = a6;
  (*(a1[1] + 192))(a1, a2, v12);
  *a3 = v13;
  return 0;
}

uint64_t gldDestroyKernel(void *a1, uint64_t a2, void *a3)
{
  (*(a1[1] + 200))();
  malloc_zone_free(*(*a1 + 232), a3);
  return 0;
}

uint64_t gpusComputeSubmitDataBuffers(uint64_t a1)
{
  v17 = 0;
  if (*(a1 + 1076))
  {
    v2 = 0;
    v3 = (a1 + 92);
    do
    {
      *v3 += *(v3 - 9) - *(v3 - 13);
      MEMORY[0x25302F060](*(a1 + 32), v2);
      *(v3 - 3) = 0;
      ++v2;
      v3 += 16;
    }

    while (v2 < *(a1 + 1076));
  }

  v4 = MEMORY[0x25302F070](*(a1 + 32), *(a1 + 1064), a1 + 1068, &v17);
  if (v4)
  {
    v5 = *(*(a1 + 8) + 504);
LABEL_6:
    v5();
    goto LABEL_7;
  }

  v16 = *(a1 + 1068);
  if ((v16 & 0x68000000) != 0)
  {
    if ((v16 & 0x8000000) != 0)
    {
      v5 = *(*(a1 + 8) + 504);
      goto LABEL_6;
    }
  }

  else if (v17)
  {
    v5 = *(*(a1 + 8) + 504);
    goto LABEL_6;
  }

LABEL_7:
  v6 = MEMORY[0x25302F000](*(a1 + 32));
  *(a1 + 1076) = v6;
  if (v6)
  {
    v7 = 0;
    v8 = (a1 + 48);
    do
    {
      v8[4] = MEMORY[0x25302F010](*(a1 + 32), v7);
      DataBytes = IOAccelResourceGetDataBytes();
      *(v8 - 1) = DataBytes;
      DataSize = IOAccelResourceGetDataSize();
      v11 = *(v8 - 1);
      *v8 = DataBytes + DataSize - 128;
      v8[1] = v11;
      v8[2] = IOAccelResourceGetClientShared();
      v12 = *(a1 + 32);
      IOAccelContextAddResource();
      *(v8 + 44) = 0x100000000;
      ++v7;
      v8 += 8;
    }

    while (v7 < *(a1 + 1076));
  }

  *(a1 + 1064) = 0;
  v13 = *(a1 + 1096);
  v14 = *v13;
  *(v13 + 2) = 131328;
  *(a1 + 1088) = &v13[v14 - 28];
  *(a1 + 1080) = v13 + 6;
  return v4;
}

uint64_t gpusComputeGetDataBuffer(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x25302F050](*(a1 + 32));
  if (!v4)
  {
    v5 = a1 + (a2 << 6);
    *(v5 + 92) += *(v5 + 56) - *(v5 + 40);
    *(v5 + 80) = MEMORY[0x25302F010](*(a1 + 32), a2);
    DataBytes = IOAccelResourceGetDataBytes();
    *(v5 + 40) = DataBytes;
    DataSize = IOAccelResourceGetDataSize();
    v8 = *(v5 + 40);
    *(v5 + 48) = DataBytes + DataSize - 128;
    *(v5 + 56) = v8;
    *(v5 + 64) = IOAccelResourceGetClientShared();
    v9 = *(a1 + 32);
    IOAccelContextAddResource();
    ++*(v5 + 96);
  }

  return v4;
}

uint64_t gpusQueueGetDataBuffer(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x25302F050](*(a1 + 40));
  if (!v4)
  {
    v5 = a1 + (a2 << 6);
    *(v5 + 100) += *(v5 + 64) - *(v5 + 48);
    *(v5 + 88) = MEMORY[0x25302F010](*(a1 + 40), a2);
    DataBytes = IOAccelResourceGetDataBytes();
    *(v5 + 48) = DataBytes;
    DataSize = IOAccelResourceGetDataSize();
    v8 = *(v5 + 48);
    *(v5 + 56) = DataBytes + DataSize - 128;
    *(v5 + 64) = v8;
    *(v5 + 72) = IOAccelResourceGetClientShared();
    v9 = *(a1 + 40);
    IOAccelContextAddResource();
    ++*(v5 + 104);
  }

  return v4;
}

uint64_t gldCreateContext(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a1 + 8);
  v13 = *v12;
  *a2 = 0;
  result = (v12[31])(v12, a3);
  if (!result)
  {
    v15 = *(a3 + 52);
    v16 = *(v12 + 149);
    if ((v16 & v15) == 0 || (v15 & ~v16) != 0)
    {
      return 10006;
    }

    v17 = malloc_type_zone_calloc(*(v13 + 232), 1uLL, *(v13 + 80), 0x5EE7D508uLL);
    if (!v17)
    {
      abort();
    }

    v18 = v17;
    __CFSetLastAllocationEventName();
    v19 = *(a1 + 40);
    v20 = IOAccelGLContextCreate();
    v18[8] = v20;
    if (!v20)
    {
      return 10004;
    }

    v18[271] = 0;
    if (MEMORY[0x25302F170](v20, v18 + 271, v18 + 272))
    {
LABEL_12:
      IOAccelGLContextRelease();
      malloc_zone_free(*(v13 + 232), v18);
      return 10015;
    }

    if (MEMORY[0x25302F160](v18[8], v18 + 275, v18 + 276, v18 + 273, v18 + 274) || (v18[278] = v18[274] >> 6, *(v18 + 537) = 16, v18[1] = v12, gpusSubmitDataBuffers(v18)))
    {
      v21 = v18[8];
      goto LABEL_12;
    }

    pthread_mutex_lock((a1 + 48));
    v22 = *(a1 + 292) + 1;
    *(a1 + 292) = v22;
    if (v22 >= 3)
    {
      *(a1 + 288) = 1;
      v23 = *(a1 + 32);
      glgSetTakeLock();
    }

    pthread_mutex_unlock((a1 + 48));
    *(v18 + 20) = *(a1 + 296);
    v18[11] = v12[98];
    v18[277] = __abort_malloc_zone_calloc_0(*(v13 + 232), (v18[278] >> 3) & 0x1FFFFFFFFFFFFFFCLL);
    if ((MEMORY[0xFFFFFC020] & 0x20) != 0)
    {
      v24 = 64;
    }

    else if ((MEMORY[0xFFFFFC020] & 0x40) != 0)
    {
      v24 = 0x80;
    }

    else
    {
      v24 = 32;
    }

    *(v18 + 72) = v24;
    v18[19] = glgCreateProcessor();
    *v18 = v13;
    v18[1] = v12;
    v18[2] = a1;
    v18[3] = a5;
    v18[5] = a6;
    *(v18 + 2366) = 1;
    *(v18 + 2363) = 1;
    *(v18 + 28) = 3;
    (v12[4])(v18, a3);
    if ((v18[10] & 0x80) != 0)
    {
      v25 = 1;
    }

    else
    {
      v25 = 3;
    }

    *(a4 + 120) = v25;
    (v12[32])(v18, a4, a3);
    result = 0;
    v18[4] = a4;
    *a2 = v18;
  }

  return result;
}

void *__abort_malloc_zone_calloc_0(malloc_zone_t *a1, size_t size)
{
  result = malloc_type_zone_calloc(a1, 1uLL, size, 0x5EE7D508uLL);
  if (!result)
  {
    abort();
  }

  return result;
}

uint64_t gpusSubmitDataBuffers(uint64_t a1)
{
  v15 = 0;
  if (*(a1 + 2148))
  {
    v2 = 0;
    v3 = (a1 + 1164);
    do
    {
      *v3 += *(v3 - 9) - *(v3 - 13);
      MEMORY[0x25302F1B0](*(a1 + 64), v2);
      *(v3 - 3) = 0;
      ++v2;
      v3 += 16;
    }

    while (v2 < *(a1 + 2148));
  }

  v4 = MEMORY[0x25302F1C0](*(a1 + 64), *(a1 + 2136), a1 + 2140, &v15 + 4, &v15, a1 + 2144);
  if (v4)
  {
    v5 = *(*(a1 + 8) + 504);
LABEL_6:
    v5();
    goto LABEL_7;
  }

  v14 = *(a1 + 2140);
  if ((v14 & 0x6C000000) != 0)
  {
    if ((v14 & 0x8000000) != 0)
    {
      *(a1 + 76) = 2;
      if (!no_crash_upon_reset && !*(a1 + 77))
      {
        v5 = *(*(a1 + 8) + 504);
        goto LABEL_6;
      }
    }

    else if ((v14 & 0x20000000) != 0)
    {
      *(a1 + 76) = 1;
    }
  }

  else if (HIDWORD(v15))
  {
    v5 = *(*(a1 + 8) + 504);
    goto LABEL_6;
  }

LABEL_7:
  v6 = MEMORY[0x25302F140](*(a1 + 64));
  *(a1 + 2148) = v6;
  if (v6)
  {
    v7 = 0;
    v8 = (a1 + 1164);
    do
    {
      *(v8 - 12) = MEMORY[0x25302F150](*(a1 + 64), v7);
      DataBytes = IOAccelResourceGetDataBytes();
      *(v8 - 52) = DataBytes;
      *(v8 - 44) = DataBytes + IOAccelResourceGetDataSize() - 128;
      *(v8 - 36) = *(v8 - 52);
      *(v8 - 28) = IOAccelResourceGetClientShared();
      v10 = *(a1 + 64);
      IOAccelContextAddResource();
      *v8 = 0x100000000;
      v8 += 8;
      ++v7;
    }

    while (v7 < *(a1 + 2148));
  }

  *(a1 + 2136) = 0;
  v11 = *(a1 + 2168);
  v12 = *v11;
  *(v11 + 2) = 131328;
  *(a1 + 2160) = &v11[v12 - 28];
  *(a1 + 2152) = v11 + 6;
  return v4;
}

uint64_t gldDestroyContext(void *a1)
{
  v2 = a1[2];
  v3 = *(v2 + 24);
  if (v3)
  {
    if (!*(v2 + 288) || (pthread_mutex_lock((v2 + 48)), v4 = a1[2], (v3 = *(v4 + 24)) != 0))
    {
      do
      {
        gpuiCleanContextFromProgram(a1, v3);
        v3 = *(v3 + 32);
      }

      while (v3);
      v4 = a1[2];
    }

    if (*(v4 + 288))
    {
      pthread_mutex_unlock((v4 + 48));
    }
  }

  gpuiReleaseDrawable(a1);
  (*(a1[1] + 40))(a1);
  v5 = a1[19];
  glgDestroyProcessor();
  v6 = a1[8];
  IOAccelGLContextRelease();
  v7 = a1[277];
  if (v7)
  {
    malloc_zone_free(*(*a1 + 232), v7);
  }

  v8 = *a1;
  if (*(*a1 + 231) && a1[103])
  {
    gpuiDestroyQueryBufferClientAlloc(a1);
    malloc_zone_free(*(*a1 + 232), a1[103]);
    v8 = *a1;
  }

  v9 = a1[280];
  if (v9)
  {
    malloc_zone_free(*(v8 + 232), v9);
    v8 = *a1;
  }

  v10 = a1[102];
  if (v10)
  {
    malloc_zone_free(*(v8 + 232), v10);
    v8 = *a1;
  }

  malloc_zone_free(*(v8 + 232), a1);
  return 0;
}

void gldReclaimContext(uint64_t a1)
{
  (*(*(a1 + 8) + 472))();
  v2 = *(a1 + 64);

  JUMPOUT(0x25302F180);
}

uint64_t gpusGetDataBuffer(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x25302F1A0](*(a1 + 64));
  if (!v4)
  {
    v5 = a1 + (a2 << 6);
    *(v5 + 1164) += *(v5 + 1128) - *(v5 + 1112);
    *(v5 + 1152) = MEMORY[0x25302F150](*(a1 + 64), a2);
    DataBytes = IOAccelResourceGetDataBytes();
    *(v5 + 1112) = DataBytes;
    *(v5 + 1120) = DataBytes + IOAccelResourceGetDataSize() - 128;
    *(v5 + 1128) = *(v5 + 1112);
    *(v5 + 1136) = IOAccelResourceGetClientShared();
    v7 = *(a1 + 64);
    IOAccelContextAddResource();
    ++*(v5 + 1168);
  }

  return v4;
}

uint64_t gpumCreateDevice(void *a1, int a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v8 = *(a4 + 216);
  v9 = *(a4 + 208);
  v10 = 0;
  if (v8)
  {
    while ((*(v9 + 596) & a2) == 0)
    {
      ++v10;
      v9 += *(a4 + 64);
      if (v8 == v10)
      {
        return 10006;
      }
    }
  }

  if (v10 == v8 || (a2 & ~*(v9 + 596)) != 0)
  {
    return 10006;
  }

  *a3 = *(v9 + 772);
  IORegistryEntryGetRegistryEntryID(*(v9 + 592), (a3 + 384));
  if ((*(v9 + 765) & 0x20) != 0)
  {
    *(a3 + 5) = 1;
  }

  *(a3 + 4) = 0;
  *(a3 + 392) = getpagesize();
  a5(v9, a3);
  result = 0;
  *(v9 + 8) = a3;
  *a1 = v9;
  return result;
}

uint64_t gldGetError(uint64_t a1)
{
  result = *(a1 + 116);
  *(a1 + 116) = 0;
  if (!result)
  {
    v3 = *(a1 + 16);
    result = *(v3 + 300);
    *(v3 + 300) = 0;
  }

  return result;
}

uint64_t gpumAcquireFenceOnQueue(uint64_t result, uint64_t a2)
{
  if (*(a2 + 8) != result)
  {
    v3 = result;
    gldClearFence(result, a2);
    result = gpulAllocFenceIndexOnQueue(v3, (a2 + 16), 0);
    if (result)
    {
      *(a2 + 8) = v3;
    }
  }

  return result;
}

void gldClearFence(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    v2 = (*a2 + 2216);
    v3 = a2;
  }

  else
  {
    v3 = (a2 + 8);
    v4 = *(a2 + 8);
    if (!v4)
    {
      return;
    }

    v2 = (v4 + 1160);
  }

  *(*v2 + ((*(a2 + 16) >> 3) & 0x1FFFFFFC)) &= ~(1 << *(a2 + 16));
  *v3 = 0;
  *(a2 + 20) = 1;
  *(a2 + 16) = -1;
}

uint64_t gpulAllocFenceIndexOnQueue(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v5 = 0;
  v6 = MEMORY[0x277D85F48];
  v7 = *(a1 + 1168);
  v8 = v7 >> 5;
  if ((v7 >> 5))
  {
    v9 = 0;
    v10 = (v7 >> 5);
    while (1)
    {
      v5 = *(*(a1 + 1160) + 4 * v9);
      if (v5 != -1)
      {
        break;
      }

      if (v10 == ++v9)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    LODWORD(v9) = 0;
  }

  if (v9 == v8)
  {
LABEL_8:
    if (!MEMORY[0x25302F020](*(a1 + 40), a1 + 1136, a1 + 1152, a1 + 1120, a1 + 1128))
    {
      address = 0;
      v11 = *(a1 + 1128);
      *(a1 + 1168) = v11 >> 6;
      v12 = (v11 >> 9) & 0x7FFFFFFFFFFFFCLL;
      v13 = malloc_type_zone_realloc(*(*a1 + 232), *(a1 + 1160), v12, 0x5361369AuLL);
      if (!v13)
      {
        abort();
      }

      *(a1 + 1160) = v13;
      bzero(&v13[v12 >> 1], v12 >> 1);
      if (!vm_allocate(*v6, &address, 24 * *(a1 + 1168), 1))
      {
        gpusFinishQueueResourceUsingFlushFunc(a1, **(*(a1 + 1176) + 16), 0, a3);
      }
    }

    return 0;
  }

  else
  {
    for (i = 0; i != 32; ++i)
    {
      if (((v5 >> i) & 1) == 0)
      {
        break;
      }
    }

    result = 1;
    *(*(a1 + 1160) + 4 * v9) |= 1 << i;
    *a2 = i + 32 * v9;
  }

  return result;
}

uint64_t gpumAcquireFenceOnQueueNolock(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 8) != result)
  {
    v5 = result;
    gldClearFence(result, a2);
    result = gpulAllocFenceIndexOnQueue(v5, (a2 + 16), a3);
    if (result)
    {
      *(a2 + 8) = v5;
    }
  }

  return result;
}

uint64_t gpumSetFenceOnQueue(uint64_t a1, uint64_t a2)
{
  result = (*(*(a1 + 8) + 464))();
  if (result)
  {
    *(a2 + 20) = 0;
    *(*(a1 + 1136) + 16 * *(a2 + 16)) = 1;
  }

  return result;
}

uint64_t gldCreateFence(uint64_t a1, void *a2)
{
  v3 = malloc_type_zone_calloc(*(*a1 + 232), 1uLL, 0x18uLL, 0x5EE7D508uLL);
  if (!v3)
  {
    abort();
  }

  *v3 = 0;
  v3[1] = 0;
  *(v3 + 20) = 1;
  *(v3 + 4) = -1;
  *a2 = v3;
  return 0;
}

uint64_t gldDestroyFence(uint64_t a1, void *a2)
{
  gldClearFence(a1, a2);
  malloc_zone_free(*(*a1 + 232), a2);
  return 0;
}

uint64_t gldSetFenceOnContext(uint64_t a1, uint64_t a2)
{
  if (*a2 != a1)
  {
    gldClearFence(a1, a2);
    v4 = 0;
    while (1)
    {
      v5 = *(a1 + 2224);
      v6 = v5 >> 5;
      if ((v5 >> 5))
      {
        v7 = 0;
        v8 = (v5 >> 5);
        while (1)
        {
          v4 = *(*(a1 + 2216) + 4 * v7);
          if (v4 != -1)
          {
            break;
          }

          if (v8 == ++v7)
          {
            v4 = -1;
            goto LABEL_10;
          }
        }
      }

      else
      {
        LODWORD(v7) = 0;
      }

      if (v7 != v6)
      {
        break;
      }

LABEL_10:
      result = MEMORY[0x25302F160](*(a1 + 64), a1 + 2200, a1 + 2208, a1 + 2184, a1 + 2192);
      if (result)
      {
        return result;
      }

      v10 = *(a1 + 2192);
      *(a1 + 2224) = v10 >> 6;
      v11 = (v10 >> 9) & 0x7FFFFFFFFFFFFCLL;
      v12 = malloc_type_zone_realloc(*(*a1 + 232), *(a1 + 2216), v11, 0x5361369AuLL);
      if (!v12)
      {
        abort();
      }

      *(a1 + 2216) = v12;
      bzero(&v12[v11 >> 1], v11 >> 1);
    }

    for (i = 0; i != 32; ++i)
    {
      if (((v4 >> i) & 1) == 0)
      {
        break;
      }
    }

    *(*(a1 + 2216) + 4 * v7) |= 1 << i;
    *(a2 + 16) = i + 32 * v7;
    *a2 = a1;
  }

  result = (*(*(a1 + 8) + 456))(a1, a2);
  if (result)
  {
    *(a2 + 20) = 0;
    *(*(a1 + 2200) + 16 * *(a2 + 16)) = 1;
  }

  return result;
}

uint64_t gldSetFenceOnQueue(uint64_t a1, uint64_t a2)
{
  gpumAcquireFenceOnQueue(a1, a2);
  result = (*(*(a1 + 8) + 464))(a1, a2);
  if (result)
  {
    *(a2 + 20) = 0;
    *(*(a1 + 1136) + 16 * *(a2 + 16)) = 1;
  }

  return result;
}

uint64_t gldFlushFenceOnQueue(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 20))
  {
    v2 = result;
    result = *(a2 + 8);
    if (result == v2)
    {
      if (*(*(result + 1136) + 16 * *(a2 + 16)))
      {
        return (*(*(result + 8) + 480))();
      }
    }
  }

  return result;
}

uint64_t gldFinishFenceOnQueue(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 20))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  if (*(*(v4 + 1136) + 16 * *(a2 + 16)))
  {
    if (v4 != a1)
    {
      return 0;
    }

    (*(*(v4 + 8) + 480))(*(a2 + 8));
    v5 = *(a2 + 16);
  }

  v6 = *(*(v4 + 8) + 584);
  v7 = *(v4 + 1120);
  v8 = IOAccelDeviceTestEvent();
  *(a2 + 20) = v8;
  if (!v8)
  {
    MEMORY[0x25302EFE0](*(v4 + 40), *(a2 + 16));
    *(a2 + 20) = 1;
  }

  result = *(v4 + 32);
  if (result)
  {
    *(v4 + 32) = 0;
  }

  return result;
}

uint64_t gldGetFenceStatus(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 20))
  {
    return 3;
  }

  v4 = *a2;
  if (*a2)
  {
    if (!*(v4[275] + 16 * *(a2 + 16)))
    {
      v5 = v4 + 273;
      goto LABEL_11;
    }

    return 0;
  }

  v4 = *(a2 + 8);
  if (!v4)
  {
    return 3;
  }

  if (*(v4[142] + 16 * *(a2 + 16)))
  {
    return 0;
  }

  v5 = v4 + 140;
LABEL_11:
  v6 = *(v4[1] + 584);
  v7 = *v5;
  v8 = IOAccelDeviceTestEvent();
  *(a2 + 20) = v8;
  if (v8)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

uint64_t gpuiTestFence(uint64_t a1, void *a2, int a3)
{
  LOBYTE(v3) = *(a2 + 20);
  if (v3)
  {
    return v3;
  }

  v5 = *a2;
  if (!*(*(*a2 + 2200) + 16 * *(a2 + 4)))
  {
LABEL_6:
    v7 = *(*(v5 + 8) + 584);
    v8 = *(v5 + 2184);
    LOBYTE(v3) = IOAccelDeviceTestEvent();
    *(a2 + 20) = v3;
    return v3;
  }

  v3 = 0;
  if (a3 && v5 == a1)
  {
    (*(*(v5 + 8) + 472))(*a2, 2);
    v6 = *(a2 + 4);
    goto LABEL_6;
  }

  return v3;
}

uint64_t gpuiFlushFence(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 20))
  {
    v2 = result;
    result = *a2;
    if (*a2 == v2)
    {
      if (*(*(result + 2200) + 16 * *(a2 + 16)))
      {
        return (*(*(result + 8) + 472))();
      }
    }
  }

  return result;
}

uint64_t gpuiFinishFence(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 20))
  {
    v3 = *a2;
    if (*(*(*a2 + 2200) + 16 * *(a2 + 16)))
    {
      if (v3 != result)
      {
        return result;
      }

      (*(v3[1] + 472))(*a2, 2);
      v4 = *(a2 + 16);
    }

    v5 = *(v3[1] + 584);
    v6 = v3[273];
    result = IOAccelDeviceTestEvent();
    *(a2 + 20) = result;
    if (!result)
    {
      result = MEMORY[0x25302F110](v3[8], *(a2 + 16));
      *(a2 + 20) = 1;
    }
  }

  return result;
}

uint64_t gpuiWaitForFence(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 20))
  {
    v3 = *a2;
    if (*a2)
    {
      if (!*(v3[275] + 16 * *(a2 + 16)))
      {
        v4 = *(*(result + 8) + 584);
        v5 = v3[273];
        result = IOAccelDeviceTestEvent();
        *(a2 + 20) = result;
        if (!result)
        {
          result = MEMORY[0x25302F110](v3[8], *(a2 + 16));
LABEL_10:
          *(a2 + 20) = 1;
        }
      }
    }

    else
    {
      v6 = *(a2 + 8);
      if (v6)
      {
        if (!*(v6[142] + 16 * *(a2 + 16)))
        {
          v7 = *(*(result + 8) + 584);
          v8 = v6[140];
          result = IOAccelDeviceTestEvent();
          *(a2 + 20) = result;
          if (!result)
          {
            result = MEMORY[0x25302EFE0](v6[5], *(a2 + 16));
            goto LABEL_10;
          }
        }
      }
    }
  }

  return result;
}

uint64_t gpumChoosePixelFormat(char **a1, int *a2, uint64_t a3, uint64_t (*a4)(uint64_t *, unint64_t, void, void))
{
  v85 = 0;
  v4 = a3;
  v87 = 0;
  v86 = 0;
  LOWORD(v6) = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v106 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v88 = *(a3 + 220);
  v14 = 16777212;
  v15 = 1280;
  v16 = a2;
  while (1)
  {
    v17 = *v16;
    if (!*v16)
    {
      break;
    }

    v18 = v16 + 1;
    v19 = 10000;
    if (v17 > 12)
    {
      switch(v17)
      {
        case '3':
          LODWORD(v85) = 1;
          goto LABEL_60;
        case '4':
          HIDWORD(v85) = 1;
          goto LABEL_60;
        case '5':
          v15 |= 4u;
          goto LABEL_60;
        case '6':
          v15 |= 2u;
          goto LABEL_60;
        case '7':
          v25 = *v18;
          if (*v18 < 0)
          {
            goto LABEL_71;
          }

          v18 = v16 + 2;
          HIDWORD(v86) = v25;
          goto LABEL_60;
        case '8':
          v6 = *v18;
          if ((*v18 & 0x80000000) == 0)
          {
            goto LABEL_49;
          }

          goto LABEL_71;
        case '9':
          v15 |= 0x800u;
          goto LABEL_60;
        case ':':
          v14 = 1056964608;
          goto LABEL_60;
        case ';':
          v7 = 2;
          goto LABEL_60;
        case '<':
          v7 = 1;
          goto LABEL_60;
        case '=':
          v8 = 1;
          goto LABEL_60;
        case '>':
        case '?':
        case '@':
        case 'A':
        case 'B':
        case 'C':
        case 'D':
        case 'E':
        case 'F':
        case 'G':
        case 'H':
        case 'I':
        case 'J':
        case 'K':
        case 'N':
        case 'O':
        case 'Q':
        case 'R':
        case 'S':
        case 'U':
        case 'V':
        case 'W':
        case 'X':
        case 'Y':
          goto LABEL_141;
        case 'L':
          v15 |= 8u;
          goto LABEL_60;
        case 'M':
          v15 |= 0x10u;
          goto LABEL_60;
        case 'P':
          v15 |= 1u;
          goto LABEL_60;
        case 'T':
          v18 = v16 + 2;
          v88 &= v16[1];
          goto LABEL_60;
        case 'Z':
          v15 |= 0x2000u;
          goto LABEL_60;
        default:
          if (v17 == 13)
          {
            v26 = *v18;
            if (*v18 < 0)
            {
              goto LABEL_71;
            }

            v18 = v16 + 2;
            if (v26 > v11)
            {
              v11 = v26;
            }
          }

          else
          {
            if (v17 != 14)
            {
              goto LABEL_141;
            }

            v23 = *v18;
            if (*v18 < 0)
            {
LABEL_71:
              v19 = 10008;
              goto LABEL_141;
            }

            v18 = v16 + 2;
            if (v23 > v12)
            {
              v12 = v23;
            }
          }

          break;
      }

      goto LABEL_60;
    }

    if (v17 > 6)
    {
      if (v17 > 10)
      {
        if (v17 == 11)
        {
          v24 = *v18;
          if (*v18 < 0)
          {
            goto LABEL_71;
          }

          v18 = v16 + 2;
          if (v24 > v13)
          {
            v13 = v24;
          }
        }

        else
        {
          v22 = *v18;
          if (*v18 < 0)
          {
            goto LABEL_71;
          }

          v18 = v16 + 2;
          if (v22 > v10)
          {
            v10 = v22;
          }
        }
      }

      else if (v17 == 7)
      {
        LODWORD(v86) = *v18;
        if (*v18 < 0)
        {
          goto LABEL_71;
        }

LABEL_49:
        v18 = v16 + 2;
      }

      else
      {
        if (v17 != 8)
        {
          goto LABEL_141;
        }

        v20 = *v18;
        if (*v18 < 0)
        {
          goto LABEL_71;
        }

        v18 = v16 + 2;
        if (v20 > v9)
        {
          v9 = v20;
        }
      }

      goto LABEL_60;
    }

    if (v17 > 4)
    {
      if (v17 == 5)
      {
        v21 = v87 | 8;
      }

      else
      {
        v21 = v87 | 2;
      }
    }

    else
    {
      if (v17 != 3)
      {
        if (v17 != 4)
        {
          goto LABEL_141;
        }

        goto LABEL_60;
      }

      v21 = v87 | 0x18;
    }

    v87 = v21;
LABEL_60:
    v16 = v18;
    if (v18 - a2 > 192)
    {
      v19 = 10000;
      goto LABEL_141;
    }
  }

  v80 = v15;
  v83 = gpulGLIBitsGE(v11);
  v82 = gpulGLIBitsGE(v10);
  v28 = v13 < 9 && v9 < 33;
  v29 = v14 & 0x3F0FFFFC;
  if (!v28)
  {
    v29 = v14;
  }

  if (v9 > 0x100)
  {
    v30 = 0;
    v31 = v8;
    goto LABEL_78;
  }

  v31 = v8;
  if (v9 > 0x80)
  {
    v30 = 805306368;
    goto LABEL_78;
  }

  if (v9 > 0x40)
  {
    v30 = 201326592;
    goto LABEL_78;
  }

  if (v9 > 0x20)
  {
    v30 = 1072693248;
    goto LABEL_78;
  }

  if (v9 <= 0x10)
  {
    v32 = v80;
    if (v9 <= 8)
    {
      if (v9)
      {
        v30 = 1073741820;
      }

      else
      {
        v30 = -1073741828;
      }
    }

    else
    {
      v30 = 1073741760;
    }
  }

  else
  {
    v30 = 1073725440;
LABEL_78:
    v32 = v80;
  }

  if (v13 <= 0x20)
  {
    if (v13 <= 0x10)
    {
      if (v13 <= 0xC)
      {
        if (v13 <= 8)
        {
          v33 = 178891048;
          if (v13 <= 4)
          {
            if (v13 <= 2)
            {
              if (v13)
              {
                v34 = 179154344;
              }

              else
              {
                v34 = -1073741828;
              }

              if (v13 == 2)
              {
                v33 = 179153320;
              }

              else
              {
                v33 = v34;
              }
            }

            else
            {
              v33 = 178891176;
            }
          }
        }

        else
        {
          v33 = 178257920;
        }
      }

      else
      {
        v33 = 176160768;
      }
    }

    else
    {
      v33 = 0x8000000;
    }
  }

  else
  {
    v33 = 0;
  }

  if (v12)
  {
    v35 = 0x8000000;
  }

  else
  {
    v35 = 0x80000000;
  }

  v81 = v35;
  if (HIDWORD(v86))
  {
    v36 = v6;
  }

  else
  {
    v36 = 0;
  }

  v79 = v36;
  if (HIDWORD(v86))
  {
    v37 = v7;
  }

  else
  {
    v37 = 0;
  }

  if (HIDWORD(v86))
  {
    v38 = v31;
  }

  else
  {
    v38 = 0;
  }

  v39 = (v32 & 0x2006) == 0;
  if (*(v4 + 216))
  {
    v40 = 0;
    v75 = 0;
    ptr = 0;
    v41 = v29 & 0x3FFFFFFC & v30 & v33;
    v42 = v32 | v39;
    v78 = v32 | v39 | 0x200;
    v74 = v4;
    do
    {
      v43 = *(v4 + 208) + *(v4 + 64) * v40;
      v44 = *(v43 + 596) & v88;
      if (v44)
      {
        v45 = 0;
        LODWORD(v27) = *(v43 + 596) & v88;
        v46 = vcnt_s8(*&v27);
        v46.i16[0] = vaddlv_u8(v46);
        v47 = v46.i32[0];
        v77 = v40;
        v48 = (v40 << 24) + 0x1000000;
        v49 = 1;
        while (1)
        {
          v89 = 0;
          v90 = 0;
          v91 = v42;
          v92 = v87;
          v93 = v41;
          v94 = v81;
          v95 = v82;
          v96 = v83;
          v97 = 0;
          v98 = v86;
          v99 = WORD2(v86);
          v100 = v79;
          v101 = v37;
          v102 = v38;
          v103 = 0;
          v104 = 0;
          v105 = v88;
          if (v45)
          {
            v92 = v87 & 0xFFFFFFEF;
          }

          if (v47 >= 2)
          {
            v91 = v78;
          }

          v90 = *(v43 + 780) | v48;
          v105 = v44;
          v50 = a4(&v89, v43, v85, HIDWORD(v85));
          if (v50)
          {
            break;
          }

          v51 = *&v49 & ((v92 & 0x10) >> 4);
          v45 = 1;
          v49 = 0;
          if ((v51 & 1) == 0)
          {
            v4 = v74;
            v40 = v77;
            goto LABEL_135;
          }
        }

        v52 = (v50 + v75);
        v53 = malloc_type_zone_malloc(*(v74 + 232), 56 * v52, 0x1EE5DEDuLL);
        if (!v53)
        {
          abort();
        }

        v40 = v77;
        if (v75 < 1)
        {
          v61 = 0;
          v57 = v52;
        }

        else
        {
          v54 = v75;
          v55 = v53 + 56;
          v56 = ptr;
          v57 = v52;
          do
          {
            v58 = v56[1];
            v27 = v56[2];
            v59 = *(v56 + 6);
            v60 = *v56;
            v56 = (v56 + 56);
            *(v55 - 56) = v60;
            *(v55 - 1) = v59;
            *(v55 - 24) = v27;
            *(v55 - 40) = v58;
            *(v55 - 7) = v55;
            v55 += 56;
            --v54;
          }

          while (v54);
          v61 = v75;
        }

        v4 = v74;
        v62 = v61;
        if (v61 < v57)
        {
          v63 = v61 - v75;
          v64 = &v53[56 * v62 + 56];
          v65 = v57 - v62;
          do
          {
            v66 = &v89 + 7 * v63;
            v67 = *(v66 + 1);
            v27 = *(v66 + 2);
            v68 = v66[6];
            *(v64 - 56) = *v66;
            *(v64 - 8) = v68;
            *(v64 - 24) = v27;
            *(v64 - 40) = v67;
            *(v64 - 56) = v64;
            ++v63;
            v64 += 56;
            --v65;
          }

          while (v65);
          LODWORD(v62) = v57;
        }

        *&v53[56 * v62 - 56] = 0;
        if (ptr)
        {
          v69 = v53;
          malloc_zone_free(*(v74 + 232), ptr);
          ptr = v69;
        }

        else
        {
          ptr = v53;
        }

        v75 = v57;
      }

LABEL_135:
      ++v40;
    }

    while (v40 < *(v4 + 216));
    v70 = a1;
    v71 = ptr;
    if (ptr && v75 <= 0)
    {
      malloc_zone_free(*(v4 + 232), ptr);
      v71 = 0;
    }
  }

  else
  {
    v71 = 0;
    v70 = a1;
  }

  v19 = 0;
  *v70 = v71;
LABEL_141:
  v72 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t gpulGLIBitsGE(unsigned int a1)
{
  if (a1 > 0x7F)
  {
    return 0x10000;
  }

  if (a1 > 0x5F)
  {
    return 98304;
  }

  if (a1 > 0x3F)
  {
    return 114688;
  }

  if (a1 > 0x2F)
  {
    return 122880;
  }

  if (a1 > 0x1F)
  {
    return 126976;
  }

  if (a1 > 0x17)
  {
    return 129024;
  }

  if (a1 > 0xF)
  {
    return 130048;
  }

  if (a1 > 0xB)
  {
    return 130560;
  }

  if (a1 > 9)
  {
    return 130816;
  }

  if (a1 > 7)
  {
    return 130944;
  }

  if (a1 > 5)
  {
    return 131008;
  }

  if (a1 == 5)
  {
    return 131040;
  }

  if (a1 > 3)
  {
    return 131056;
  }

  if (a1 == 3)
  {
    return 131064;
  }

  if (a1 > 1)
  {
    return 131068;
  }

  if (a1)
  {
    return 131070;
  }

  return 0x3FFFFLL;
}

uint64_t gpumDestroyPixelFormat(void *ptr, uint64_t a2)
{
  if (ptr)
  {
    malloc_zone_free(*(a2 + 232), ptr);
  }

  return 0;
}

uint64_t gldCreateFramebuffer(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = malloc_type_zone_calloc(*(*a1 + 232), 1uLL, *(*a1 + 96), 0x5EE7D508uLL);
  if (!v8)
  {
    abort();
  }

  v9 = v8;
  *v8 = a3;
  v8[1] = a4;
  *(v8 + 4) = 0;
  (*(a1[1] + 64))(a1, v8);
  *a2 = v9;
  return 0;
}

uint64_t gldDestroyFramebuffer(void *a1, void *a2)
{
  (*(a1[1] + 72))();
  malloc_zone_free(*(*a1 + 232), a2);
  return 0;
}

uint64_t gldUnbindFramebuffer(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(result + 48) == a2)
  {
    result = (*(*(result + 8) + 352))(result, 0);
    *(v3 + 48) = 0;
    *(v3 + 840) = 0;
  }

  if (*(v3 + 56) == a2)
  {
    result = (*(*(v3 + 8) + 360))(v3, 0);
    *(v3 + 56) = 0;
    *(v3 + 844) = 0;
  }

  return result;
}

BOOL gldLoadFramebuffer(uint64_t a1, uint64_t a2)
{
  v4 = *(*a2 + 200);
  if (*(a1 + 288))
  {
    pthread_mutex_lock((a1 + 48));
  }

  *(*(a2 + 8) + 81) = 1;
  if (v4)
  {
    do
    {
      v5 = __clz(__rbit32(v4));
      v6 = *(*(a2 + 8) + 8 * v5);
      if (*(*(v6 + 8) + 20))
      {
        v7 = *(a1 + 316) + 1;
        *(a1 + 316) = v7;
        *(v6 + 56) = v7;
        if (!(*(*(a1 + 8) + 296))(a1, v6))
        {
          goto LABEL_10;
        }

        v8 = *(v6 + 8);
        *(v8 + 13) = 0;
        *(v8 + 8) = 0;
      }

      v9 = 1 << v5 == v4;
      v4 ^= 1 << v5;
    }

    while (!v9);
  }

  v10 = *(a1 + 312) + 1;
  *(a1 + 312) = v10;
  *(a2 + 16) = v10;
  v11 = (*(*(a1 + 8) + 264))(a1, a2, 7);
  v12 = *(a2 + 8);
  *(v12 + 81) = v11 == 0;
  *(v12 + 80) = 0;
LABEL_10:
  if (*(a1 + 288))
  {
    pthread_mutex_unlock((a1 + 48));
  }

  return *(*(a2 + 8) + 81) == 0;
}

uint64_t gldUpdateReadFramebuffer(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    v3 = *(a1 + 40);
    v4 = *(v3 + 424);
    if (v4)
    {
      gpulCheckForFramebufferIOSurfaceChanges(*(a1 + 16), *(v3 + 424));
      v5 = *(v4 + 16);
      if (*(a1 + 844) != v5)
      {
        *(a1 + 844) = v5;
        (*(*(a1 + 8) + 360))(a1, v4);
      }
    }

    else
    {
      *(a1 + 844) = 0;
      (*(*(a1 + 8) + 360))(a1, 0);
    }

    *(a1 + 56) = v4;
  }

  return 1;
}

uint64_t gpulCheckForFramebufferIOSurfaceChanges(uint64_t result, void *a2)
{
  v2 = *(*a2 + 200);
  if (v2)
  {
    v4 = result;
    do
    {
      v5 = __clz(__rbit32(v2));
      v6 = **(a2[1] + 8 * v5);
      if ((*v6 & 0x800) != 0)
      {
        v7 = *(v6 + 256);
        v8 = *(*(v4 + 8) + 772);
        v9 = *(v6 + 250);
        result = IOSurfaceBindAccel();
      }

      v10 = 1 << v5 == v2;
      v2 ^= 1 << v5;
    }

    while (!v10);
  }

  return result;
}

uint64_t gldUpdateDrawFramebuffer(uint64_t a1, int a2)
{
  if ((a2 & 0x40000000) == 0)
  {
    if ((a2 & 0x43C0478) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    (*(*(a1 + 8) + 328))(a1);
    goto LABEL_10;
  }

  v4 = *(a1 + 40);
  v5 = *(v4 + 416);
  if (v5)
  {
    gpulCheckForFramebufferIOSurfaceChanges(*(a1 + 16), *(v4 + 416));
    v6 = *(v5 + 16);
    if (*(a1 + 840) != v6)
    {
      *(a1 + 840) = v6;
      (*(*(a1 + 8) + 352))(a1, v5);
    }
  }

  else
  {
    *(a1 + 840) = 0;
    (*(*(a1 + 8) + 352))(a1, 0);
  }

  *(a1 + 48) = v5;
  v7 = *(a1 + 832) | a2 & 0x43C0478;
  *(a1 + 832) = 0;
  if (v7)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (*(a1 + 836))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t gldPopulateRendererInfo(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  if (*(*(a1 + 8) + 5))
  {
    v2 = 566683;
  }

  else
  {
    v2 = 42395;
  }

  v3 = *(a1 + 596);
  *(a2 + 8) = ((*(a1 + 776) << 24) + 0x1000000) | *(a1 + 780);
  *(a2 + 12) = v2;
  *(a2 + 52) = *(*(a1 + 8) + 384);
  *(a2 + 16) = xmmword_24D62A330;
  *(a2 + 32) = 128;
  *(a2 + 36) = v3;
  *(a2 + 48) = 0;
  *(a2 + 40) = 0;
  *(a2 + 43) = 0;
  *(a2 + 68) = 0;
  *(a2 + 60) = 0;
  *(a2 + 76) = (*(a1 + 792) >> 20);
  *(a2 + 84) = *(a1 + 784) >> 20;
  *(a2 + 120) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 88) = 0u;
  (*(a1 + 240))(a2, a1);
  return 0;
}

void gpumInitializeIOData(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, void (*a8)(uint64_t))
{
  v9 = 0;
  v10 = 0;
  v25 = *MEMORY[0x277D85DE8];
  *a7 = a4;
  *(a7 + 8) = a5;
  *(a7 + 220) = a3;
  *(a7 + 224) = a6;
  *(a7 + 230) = a6;
  do
  {
    v11 = 1 << v9;
    v24[v9 + 64] = 0;
    v24[v9 + 32] = 0;
    v24[v9] = 0;
    v12 = v10;
    if (((1 << v9) & a3) != 0)
    {
      v13 = *(a1 + 4 * v9);
      if (!v10)
      {
        goto LABEL_11;
      }

      v14 = 0;
      while (v24[v14 + 64] != v13)
      {
        if (v10 == ++v14)
        {
          goto LABEL_11;
        }
      }

      if ((v14 & 0x80000000) != 0)
      {
LABEL_11:
        v24[v10++ + 64] = v13;
        v24[v12 + 32] |= v11;
      }

      else
      {
        v24[v14 + 32] |= v11;
        ++v24[v14];
      }
    }

    ++v9;
  }

  while (v9 != 32);
  a8(a7);
  if (v10)
  {
    v15 = v10;
    v16 = malloc_type_zone_calloc(*(a7 + 232), 1uLL, *(a7 + 64) * v10, 0x5EE7D508uLL);
    if (!v16)
    {
      abort();
    }

    v17 = v16;
    v18 = 0;
    *(a7 + 208) = v16;
    while (1)
    {
      v19 = &v17[*(a7 + 64) * v18];
      *(v19 + 194) = v18;
      *v19 = a7;
      *(v19 + 148) = v24[v18 + 64];
      *(v19 + 149) = v24[v18 + 32];
      *(v19 + 150) = v24[v18];
      v20 = IOAccelDeviceCreateWithAPIProperty();
      if (!v20)
      {
        break;
      }

      *(v19 + 73) = v20;
      if (IOAccelDeviceGetConfig64())
      {
        break;
      }

      v21 = *(a7 + 16);
      Connect = IOAccelDeviceGetConnect();
      if (v21(v19, Connect))
      {
        break;
      }

      if (v15 == ++v18)
      {
        LODWORD(v18) = v15;
        break;
      }
    }

    *(a7 + 216) = v18;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    gpumInitializeIOData_cold_1();
  }

  v23 = *MEMORY[0x277D85DE8];
}

void gpumTerminateIOData(uint64_t a1)
{
  v2 = *(a1 + 208);
  v3 = *(a1 + 216);
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v5 = &v2[*(a1 + 64) * i];
      (*(a1 + 24))(v5);
      v6 = *(v5 + 73);
      IOAccelDeviceRelease();
      *(v5 + 73) = 0;
    }

    v2 = *(a1 + 208);
  }

  *(a1 + 216) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  if (v2)
  {
    malloc_zone_free(*(a1 + 232), v2);
    *(a1 + 208) = 0;
  }
}

uint64_t gldSetInteger(uint64_t a1, int a2, int *a3)
{
  if (!a3)
  {
    return 10014;
  }

  if (a2 > 665)
  {
    if (a2 > 700)
    {
      if (a2 == 701)
      {
        return 0;
      }

      if (a2 == 1402)
      {
        result = 0;
        *(*(a1 + 16) + 308) = *a3 != 0;
        return result;
      }

      goto LABEL_31;
    }

    if (a2 == 666)
    {
      v9 = *(a1 + 144);
      result = 0;
      if (*a3)
      {
        v8 = v9 & 0xFFFFFDFF;
      }

      else
      {
        v8 = v9 | 0x200;
      }
    }

    else
    {
      if (a2 != 667)
      {
LABEL_31:
        v17 = *(*(a1 + 8) + 496);
LABEL_45:

        return v17();
      }

      v7 = *(a1 + 144);
      result = 0;
      if (*a3)
      {
        v8 = v7 & 0xFFDFFFFF;
      }

      else
      {
        v8 = v7 | 0x200000;
      }
    }

    *(a1 + 144) = v8;
    return result;
  }

  if (a2 <= 606)
  {
    if (a2 == 318)
    {
      result = 0;
      *(a1 + 77) = *a3 == 0;
      return result;
    }

    if (a2 == 321)
    {
      v4 = *(a1 + 64);
      v5 = *a3;
      IOAccelContextSetBackgroundRendering();
      return 0;
    }

    goto LABEL_31;
  }

  if (a2 != 607)
  {
    if (a2 == 610)
    {
      result = 0;
      *(*(a1 + 16) + 309) = *a3 != 0;
      return result;
    }

    goto LABEL_31;
  }

  v10 = *a3;
  if (!*a3)
  {
    result = 0;
    no_crash_upon_reset = 1;
    return result;
  }

  if (v10 == 1)
  {
    v18 = *(a1 + 2148);
    if (!v18)
    {
      return 0;
    }

    for (i = 0; i < v18; ++i)
    {
      v20 = a1 + 1112 + (i << 6);
      v21 = *v20;
      if (*v20 < *(v20 + 16))
      {
        do
        {
          *v21++ = random();
        }

        while (v21 < *(v20 + 16));
        v18 = *(a1 + 2148);
      }

      result = 0;
    }
  }

  else
  {
    if (v10 != 2)
    {
      v17 = *(*(a1 + 8) + 496);
      goto LABEL_45;
    }

    if (!*(a1 + 2148))
    {
      return 0;
    }

    v11 = 0;
    do
    {
      v12 = (a1 + 1112 + (v11 << 6));
      v13 = ((v12[2] - *v12) >> 2);
      v14 = random();
      do
      {
        v15 = v14;
        v14 >>= 1;
      }

      while (v15 > v13);
      v16 = random();
      result = 0;
      *(*v12 + 4 * v15) = v16;
      ++v11;
    }

    while (v11 < *(a1 + 2148));
  }

  return result;
}

uint64_t gldGetInteger(uint64_t a1, int a2, int *a3)
{
  if (!a3)
  {
    return 10014;
  }

  if (a2 > 665)
  {
    if (a2 <= 1399)
    {
      if (a2 == 666)
      {
        result = 0;
        v5 = ((*(a1 + 144) >> 9) & 1) == 0;
        goto LABEL_24;
      }

      if (a2 == 667)
      {
        result = 0;
        v5 = ((*(a1 + 144) >> 21) & 1) == 0;
        goto LABEL_24;
      }
    }

    else
    {
      switch(a2)
      {
        case 1400:
          result = 0;
          v5 = 1;
          goto LABEL_24;
        case 1401:
          result = 0;
          v7 = *(a1 + 16);
          *a3 = *(v7 + 304) | *(a1 + 2392);
          *(a1 + 2392) = 0;
          *(v7 + 304) = 0;
          return result;
        case 1402:
          result = 0;
          v5 = *(*(a1 + 16) + 308);
LABEL_24:
          *a3 = v5;
          return result;
      }
    }

    return (*(*(a1 + 8) + 488))(a1);
  }

  if (a2 > 318)
  {
    if (a2 == 319)
    {
      result = 0;
      v5 = (*(a1 + 80) >> 8) & 1;
      goto LABEL_24;
    }

    if (a2 == 320)
    {
      result = 0;
      v5 = (*(a1 + 80) >> 9) & 1;
      goto LABEL_24;
    }

    return (*(*(a1 + 8) + 488))(a1);
  }

  if (a2 != 317)
  {
    if (a2 == 318)
    {
      result = 0;
      v5 = *(a1 + 77) == 0;
      goto LABEL_24;
    }

    return (*(*(a1 + 8) + 488))(a1);
  }

  v6 = *(a1 + 76);
  *a3 = v6;
  result = 0;
  if (v6 == 1)
  {
    *(a1 + 76) = 0;
  }

  return result;
}

uint64_t gpusPixelBytes(int a1, int a2)
{
  result = 1;
  if (a2 > 33633)
  {
    if (a2 > 34233)
    {
      if (a2 <= 36192)
      {
        if ((a2 - 34234) >= 2)
        {
          return 4;
        }

        return 2;
      }

      if (a2 != 36193)
      {
        if (a2 == 36269)
        {
          return 8;
        }

        return 4;
      }

      return 2 * gpulComponents(a1);
    }

    if (a2 > 33638)
    {
      return 4;
    }

    if ((a2 - 33635) < 4)
    {
      return 2;
    }

    v5 = 33634;
LABEL_29:
    if (a2 != v5)
    {
      return 4;
    }

    return result;
  }

  if (a2 > 32817)
  {
    if ((a2 - 32819) < 2)
    {
      return 2;
    }

    if ((a2 - 32821) < 2)
    {
      return 4;
    }

    v5 = 32818;
    goto LABEL_29;
  }

  if ((a2 - 5120) > 0xB)
  {
LABEL_27:
    if (!a2)
    {
      if (a1 <= 37807)
      {
        result = 8;
        if (a1 > 36282)
        {
          if ((a1 - 37488) > 9)
          {
            if ((a1 - 36283) < 2)
            {
              return result;
            }
          }

          else if (((1 << (a1 - 112)) & 0xF3) != 0)
          {
            return result;
          }
        }

        else if (a1 > 35411)
        {
          if ((a1 - 35412) < 4 || (a1 - 35420) >= 4 && (a1 - 35840) < 4)
          {
            return result;
          }
        }

        else if ((a1 - 33776) < 2)
        {
          return result;
        }
      }

      return 16;
    }

    v5 = 6656;
    goto LABEL_29;
  }

  if (((1 << a2) & 0x70) != 0)
  {
    return 4 * gpulComponents(a1);
  }

  if (((1 << a2) & 0x80C) != 0)
  {
    return 2 * gpulComponents(a1);
  }

  if (((1 << a2) & 3) == 0)
  {
    goto LABEL_27;
  }

  v4 = a1 - 101;
  if ((a1 - 35429) > 0xF)
  {
    if ((a1 - 37883) < 3)
    {
      return result;
    }

    if (a1 == 37902 || (a1 - 37875) < 6)
    {
      return 2;
    }

    if ((a1 - 37903) >= 2)
    {

      return gpulComponents(a1);
    }

    return 4;
  }

  if (((1 << v4) & 0xE2E2) != 0)
  {
    return 2;
  }

  if (((1 << v4) & 0xD0D) == 0)
  {
    return 4;
  }

  return result;
}

uint64_t gpulComponents(int a1)
{
  result = 1;
  if (a1 > 35428)
  {
    if ((a1 - 35429) < 0x10 || (a1 - 37875) <= 0x1B && ((1 << (a1 + 13)) & 0x800073F) != 0)
    {
      return 3;
    }

    v3 = a1 - 36244;
    if (v3 > 9)
    {
      return 4;
    }

    if (((1 << v3) & 0x10F) == 0)
    {
      if (((1 << v3) & 0x50) != 0)
      {
        return 3;
      }

      if (v3 != 9)
      {
        return 4;
      }

      return 2;
    }
  }

  else
  {
    if (a1 <= 6408)
    {
      if ((a1 - 6400) < 7)
      {
        return result;
      }

      v5 = 6407;
LABEL_25:
      if (a1 == v5)
      {
        return 3;
      }

      return 4;
    }

    if (a1 > 33318)
    {
      if ((a1 - 33319) < 2 || a1 == 34041)
      {
        return 2;
      }

      v4 = 34233;
      goto LABEL_20;
    }

    if (a1 > 32840)
    {
      if (a1 != 32841)
      {
        v5 = 32992;
        goto LABEL_25;
      }
    }

    else if (a1 != 6409)
    {
      v4 = 6410;
LABEL_20:
      if (a1 != v4)
      {
        return 4;
      }

      return 2;
    }
  }

  return result;
}

uint64_t gpusRowBytes(int a1, int a2, int a3)
{
  if (!a2)
  {
    v4 = 4;
    if (a1 > 35841)
    {
      v5 = 4;
      switch(a1)
      {
        case 37808:
        case 37840:
        case 37886:
        case 37887:
          goto LABEL_26;
        case 37809:
        case 37810:
        case 37841:
        case 37842:
        case 37888:
        case 37889:
          v5 = 1;
          v4 = 5;
          return (((a3 + v4 - 1) / v4 * gpusPixelBytes(a1, 0)) / v5);
        case 37811:
        case 37812:
        case 37843:
        case 37844:
        case 37890:
        case 37891:
          v5 = 1;
          v4 = 6;
          return (((a3 + v4 - 1) / v4 * gpusPixelBytes(a1, 0)) / v5);
        case 37813:
        case 37814:
        case 37815:
        case 37845:
        case 37846:
        case 37847:
        case 37892:
        case 37893:
        case 37894:
        case 37895:
          goto LABEL_27;
        case 37816:
        case 37817:
        case 37818:
        case 37819:
        case 37848:
        case 37849:
        case 37850:
        case 37851:
        case 37896:
        case 37897:
        case 37898:
        case 37899:
          v5 = 1;
          v4 = 10;
          return (((a3 + v4 - 1) / v4 * gpusPixelBytes(a1, 0)) / v5);
        case 37820:
        case 37821:
        case 37852:
        case 37853:
        case 37900:
        case 37901:
          v5 = 1;
          v4 = 12;
          return (((a3 + v4 - 1) / v4 * gpusPixelBytes(a1, 0)) / v5);
        case 37822:
        case 37823:
        case 37824:
        case 37825:
        case 37826:
        case 37827:
        case 37828:
        case 37829:
        case 37830:
        case 37831:
        case 37832:
        case 37833:
        case 37834:
        case 37835:
        case 37836:
        case 37837:
        case 37838:
        case 37839:
        case 37854:
        case 37855:
        case 37856:
        case 37857:
        case 37858:
        case 37859:
        case 37860:
        case 37861:
        case 37862:
        case 37863:
        case 37864:
        case 37865:
        case 37866:
        case 37867:
        case 37868:
        case 37869:
        case 37870:
        case 37871:
        case 37872:
        case 37873:
        case 37874:
        case 37875:
        case 37876:
        case 37877:
        case 37878:
        case 37879:
        case 37880:
        case 37881:
        case 37882:
        case 37883:
        case 37884:
        case 37885:
          return (((a3 + v4 - 1) / v4 * gpusPixelBytes(a1, 0)) / v5);
        default:
          if (a1 == 35842)
          {
            goto LABEL_32;
          }

          v7 = 35843;
          goto LABEL_30;
      }
    }

    if (a1 <= 35420)
    {
      if (a1 <= 35413)
      {
        if (a1 != 35412)
        {
          v5 = 4;
          if (a1 != 35413)
          {
            return (((a3 + v4 - 1) / v4 * gpusPixelBytes(a1, 0)) / v5);
          }

          goto LABEL_32;
        }
      }

      else if (a1 != 35414)
      {
        if (a1 != 35415)
        {
          v6 = 35420;
          goto LABEL_25;
        }

        goto LABEL_32;
      }

LABEL_31:
      v5 = 8;
      v4 = 16;
      return (((a3 + v4 - 1) / v4 * gpusPixelBytes(a1, 0)) / v5);
    }

    if (a1 <= 35422)
    {
      if (a1 != 35421)
      {
        v6 = 35422;
LABEL_25:
        v5 = 4;
        if (a1 == v6)
        {
LABEL_26:
          v5 = 1;
        }

        return (((a3 + v4 - 1) / v4 * gpusPixelBytes(a1, 0)) / v5);
      }
    }

    else if (a1 != 35423)
    {
      if (a1 == 35840)
      {
LABEL_32:
        v4 = 8;
        v5 = 8;
        return (((a3 + v4 - 1) / v4 * gpusPixelBytes(a1, 0)) / v5);
      }

      v7 = 35841;
LABEL_30:
      v5 = 4;
      if (a1 != v7)
      {
        return (((a3 + v4 - 1) / v4 * gpusPixelBytes(a1, 0)) / v5);
      }

      goto LABEL_31;
    }

LABEL_27:
    v5 = 1;
    v4 = 8;
    return (((a3 + v4 - 1) / v4 * gpusPixelBytes(a1, 0)) / v5);
  }

  if (a2 == 6656)
  {
    return ((a3 + 7) >> 3);
  }

  else
  {
    return gpusPixelBytes(a1, a2) * a3;
  }
}

uint64_t gpusPixelSettings(int a1, int a2, int a3, int a4, int *a5, _DWORD *a6, _DWORD *a7, int *a8, char a9)
{
  result = gpusPixelBytes(a1, a2);
  *a6 = result;
  if (a2 && a8)
  {
    v18 = result;
    v19 = a8[1];
    if (!v19)
    {
      v20 = *a8;
      if (*a8 < 1)
      {
        result = gpusRowBytes(a1, a2, a3);
      }

      else
      {
        v21 = v20 * result;
        v22 = (v20 + 7) >> 3;
        result = a2 == 6656 ? v22 : v21;
      }

      v23 = a8[7];
      v24 = result % v23;
      v19 = v23 + result - result % v23;
      if (!v24)
      {
        v19 = result;
      }
    }

    *a5 = v19;
    v25 = a8[3];
    if (!v25)
    {
      v26 = a8[2];
      if (v26 <= 0)
      {
        v26 = a4;
      }

      v25 = v26 * v19;
    }

    v27 = a8[5];
    v28 = v27 >> 3;
    v29 = v27 * v18;
    if (a2 == 6656)
    {
      v29 = v28;
    }

    if ((a9 & 4) != 0)
    {
      v30 = a8[6];
    }

    else
    {
      v30 = 0;
    }

    *a7 = v29 + v30 * v25 + a8[4] * v19;
  }

  else
  {
    *a7 = 0;
    result = gpusRowBytes(a1, a2, a3);
    *a5 = result;
  }

  return result;
}

uint64_t gldCreateProgram(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = malloc_type_zone_calloc(*(*a1 + 232), 1uLL, *(*a1 + 136), 0x5EE7D508uLL);
  if (!v7)
  {
    abort();
  }

  *v7 = a3;
  v7[1] = a4;
  *a2 = v7;
  return 0;
}

unint64_t *gpusPPParameterOffset(unint64_t *result, unsigned int *a2, _DWORD *a3)
{
  v3 = *result;
  *a3 = 4;
  if ((v3 & 0x1F00) == 0xE00)
  {
    *a2 = (v3 >> 14) & 0x3FFFC;
    *a3 = (v3 >> 30) & 0x1C;
  }

  return result;
}

void gpumDeleteCachedProgram(uint64_t a1, uint64_t a2, void *ptr)
{
  v6 = ptr[1];
  v5 = ptr[2];
  v7 = (a2 + 16);
  if (v5)
  {
    v7 = (v5 + 8);
  }

  *v7 = v6;
  if (v6)
  {
    v8 = (v6 + 16);
  }

  else
  {
    v8 = (a2 + 24);
  }

  *v8 = v5;
  --*(a2 + 48);
  if (ptr[3])
  {
    (*(*a1 + 40))(*ptr);
  }

  v9 = *(*a1 + 232);

  malloc_zone_free(v9, ptr);
}

void *gpumGetCachedProgram(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = *(a2 + 16);
    while (*v5 != a1)
    {
      v5 = v5[1];
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    v10 = v5[2];
    if (v10)
    {
      v11 = v5[1];
      *(v10 + 8) = v11;
      if (v11)
      {
        v12 = (v11 + 16);
      }

      else
      {
        v12 = (a2 + 24);
      }

      *v12 = v10;
      v5[1] = v4;
      v5[2] = 0;
      *(v4 + 16) = v5;
      *(a2 + 16) = v5;
    }
  }

  else
  {
LABEL_5:
    v6 = malloc_type_zone_malloc(*(*a1 + 232), 0x40uLL, 0x1EE5DEDuLL);
    if (!v6)
    {
      abort();
    }

    v5 = v6;
    v6[2] = 0;
    v7 = *(a2 + 16);
    *v6 = a1;
    v6[1] = v7;
    if (v7)
    {
      *(v7 + 16) = v6;
    }

    v6[3] = 0;
    (*(*a1 + 56))(v6 + 4);
    *(a2 + 16) = v5;
    v8 = *(a2 + 24);
    if (!v8)
    {
      *(a2 + 24) = v5;
      v8 = v5;
    }

    v9 = *(a2 + 48) + 1;
    *(a2 + 48) = v9;
    if (v9 >= 5)
    {
      gpumDeleteCachedProgram(a1[2], a2, v8);
    }
  }

  return v5;
}

void gpuiCleanContextFromProgram(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    while (*v2 != a1)
    {
      v2 = v2[1];
      if (!v2)
      {
        return;
      }
    }

    gpumDeleteCachedProgram(*(a1 + 16), a2, v2);
  }
}

uint64_t gldObjectPurgeable(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  if (a2 != 3)
  {
    if (a2 != 1)
    {
      return 35355;
    }

    v8 = *(a3 + 32);
    if (v8)
    {
      v9 = a1[1];
      v10 = *(v9 + 512);
      if (v10)
      {
        LODWORD(result) = v10(a1, a3, a4, a5);
      }

      else if (a4 == 35353)
      {
        v17 = a1[269];
        if ((v17 + 3) > a1[270])
        {
          (*(v9 + 472))(a1, 2);
          v17 = a1[269];
        }

        a1[269] = v17 + 3;
        *v17 = 197888;
        v17[1] = (a1[141] - a1[139]) >> 2;
        v18 = a1[8];
        v19 = *(a3 + 24);
        IOAccelContextAddResource();
        v20 = *(a3 + 24);
        IOAccelResourceRelease();
        *(a3 + 24) = 0;
        *(a3 + 32) = 0;
        *(a3 + 40) = 0;
        *(*(a3 + 8) + 20) = 3;
        LODWORD(result) = 35353;
      }

      else if ((*(v8 + 260) & 0xF) != 0)
      {
        LODWORD(result) = 35355;
      }

      else
      {
        v30 = a1[269];
        if ((v30 + 16) > a1[270])
        {
          (*(v9 + 472))(a1, 2);
          v30 = a1[269];
        }

        a1[269] = v30 + 16;
        *v30 = 263168;
        *(v30 + 4) = (a1[141] - a1[139]) >> 2;
        v31 = a1[8];
        v32 = *(a3 + 24);
        IOAccelContextAddResource();
        *(v30 + 14) = 0;
        v33 = *(v8 + 260);
        *(v30 + 13) = (v33 & 0x40) != 0;
        *(v30 + 12) = (v33 & 0x80) == 0 || !v5;
        LODWORD(result) = 35354;
      }

      if ((*(*(a3 + 8) + 20) & 0xF) != 0)
      {
        return 35355;
      }

      else
      {
        return result;
      }
    }

    v16 = (*(*(a3 + 8) + 20) & 0xF) == 0;
LABEL_13:
    if (v16)
    {
      return 35353;
    }

    else
    {
      return 35355;
    }
  }

  v12 = *(a3 + 16);
  if (!v12 || (v13 = v12[1]) == 0)
  {
    v16 = **a3 == 0;
    goto LABEL_13;
  }

  v14 = a1[1];
  v15 = *(v14 + 528);
  if (v15)
  {
    result = v15(a1, a3, a4, a5);
  }

  else if (a4 == 35353)
  {
    v21 = a1[269];
    if ((v21 + 3) > a1[270])
    {
      (*(v14 + 472))(a1, 2);
      v21 = a1[269];
      v12 = *(a3 + 16);
    }

    a1[269] = v21 + 3;
    *v21 = 197888;
    v21[1] = (a1[141] - a1[139]) >> 2;
    v22 = a1[8];
    v23 = *v12;
    IOAccelContextAddResource();
    v24 = **(a3 + 16);
    IOAccelResourceRelease();
    v25 = *(a3 + 16);
    *v25 = 0u;
    v25[1] = 0u;
    (*(a1[1] + 152))(a1[2]);
    malloc_zone_free(*(*a1 + 232), *(a3 + 16));
    *(a3 + 16) = 0;
    **(a3 + 8) = 1;
    result = 35353;
  }

  else
  {
    if ((*(v13 + 260) & 0xF) == 0)
    {
      v26 = a1[269];
      if ((v26 + 16) > a1[270])
      {
        (*(v14 + 472))(a1, 2);
        v26 = a1[269];
        v12 = *(a3 + 16);
      }

      a1[269] = v26 + 16;
      *v26 = 263168;
      *(v26 + 4) = (a1[141] - a1[139]) >> 2;
      v27 = a1[8];
      v28 = *v12;
      IOAccelContextAddResource();
      *(v26 + 14) = 0;
      v29 = *(v13 + 260);
      *(v26 + 13) = (v29 & 0x40) != 0;
      *(v26 + 12) = (v29 & 0x80) == 0 || !v5;
    }

    result = 35355;
  }

  if ((**(a3 + 8) & 5) != 0)
  {
    if (**a3)
    {
      return 35355;
    }

    else
    {
      return 35356;
    }
  }

  return result;
}

uint64_t gldObjectUnpurgeable(void *a1, int a2, uint64_t a3, int a4, _DWORD *a5)
{
  if (a2 == 3)
  {
    v9 = *(a3 + 16);
    if ((**(a3 + 8) & 5) != 0)
    {
      if (v9)
      {
        v10 = v9[2];
        if (v10)
        {
          *(v10 + 29) = 0;
        }
      }

      goto LABEL_25;
    }

    v21 = v9[1];
    *a5 = (*(v21 + 260) & 0xFFFFFFBF) == 0;
    v22 = a1[1];
    v13 = *(v22 + 536);
    if (!v13)
    {
      if ((*(v21 + 260) & 0xF) == 0)
      {
        v23 = v9[2];
        v14 = a1[269];
        if ((v14 + 16) > a1[270])
        {
          (*(v22 + 472))(a1, 2);
          v14 = a1[269];
          v9 = *(a3 + 16);
        }

        a1[269] = v14 + 16;
        *v14 = 263168;
        *(v14 + 4) = (a1[141] - a1[139]) >> 2;
        v24 = a1[8];
        v25 = *v9;
        IOAccelContextAddResource();
        *(v14 + 12) = 0;
        if (a4 == 35355)
        {
          *(v14 + 14) = 0;
          if (a1[141] > a1[139] || a1[269] > (a1[271] + 16))
          {
            (*(a1[1] + 472))(a1, 2);
          }

          v26 = *v23;
          if ((*(v21 + 260) & 0x40) != 0)
          {
            v26 |= v23[6];
          }

          v19 = v26 == 0;
LABEL_42:
          if (v19)
          {
            return 35356;
          }

          else
          {
            return 35355;
          }
        }

LABEL_45:
        *(v14 + 14) = 1;
        return 35356;
      }

      return 35355;
    }
  }

  else
  {
    if (a2 != 1)
    {
      return 35355;
    }

    v8 = *(a3 + 40);
    if ((*(*(a3 + 8) + 20) & 0xF) != 0)
    {
      if (v8)
      {
        *(v8 + 29) = 0;
      }

      goto LABEL_25;
    }

    if (!v8)
    {
LABEL_25:
      *a5 = 1;
      return 35356;
    }

    v11 = *(a3 + 32);
    *a5 = (*(v11 + 260) & 0xFFFFFFBF) == 0;
    v12 = a1[1];
    v13 = *(v12 + 520);
    if (!v13)
    {
      if ((*(v11 + 260) & 0xF) == 0)
      {
        v14 = a1[269];
        if ((v14 + 16) > a1[270])
        {
          (*(v12 + 472))(a1, 2);
          v14 = a1[269];
        }

        a1[269] = v14 + 16;
        *v14 = 263168;
        *(v14 + 4) = (a1[141] - a1[139]) >> 2;
        v15 = a1[8];
        v16 = *(a3 + 24);
        IOAccelContextAddResource();
        *(v14 + 12) = 0;
        if (a4 == 35355)
        {
          *(v14 + 14) = 0;
          if (a1[141] > a1[139] || a1[269] > (a1[271] + 16))
          {
            (*(a1[1] + 472))(a1, 2);
          }

          v17 = *(*a3 + 211);
          if (!*(*a3 + 211))
          {
            return 35356;
          }

          v18 = 0;
          do
          {
            v18 |= *v8;
            if ((*(v11 + 260) & 0x40) != 0)
            {
              v18 |= v8[6];
            }

            ++v8;
            --v17;
          }

          while (v17);
          v19 = v18 == 0;
          goto LABEL_42;
        }

        goto LABEL_45;
      }

      return 35355;
    }
  }

  return v13();
}

uint64_t gpuiDestroyQueryBufferClientAlloc(uint64_t a1)
{
  if (**(a1 + 824))
  {
    IOAccelResourceRelease();
    v2 = *(a1 + 824);
    *v2 = 0;
    v2[1] = 0;
    v2[2] = 0;
  }

  (*(*(a1 + 8) + 232))(a1);
  return 0;
}

uint64_t gpumCreateQuery(uint64_t a1, void *a2, size_t a3)
{
  v5 = malloc_type_zone_calloc(*(*a1 + 232), 1uLL, *(*a1 + 192), 0x5EE7D508uLL);
  if (!v5)
  {
LABEL_37:
    abort();
  }

  v6 = 0;
  *v5 = 0xCFFFFFFFFLL;
  ptr = v5;
  v5[2] = 0;
  while (1)
  {
    v7 = *(a1 + 2252);
    v8 = v7 >> 5;
    if (v7 < 0x20)
    {
      break;
    }

    v9 = 0;
    do
    {
      v6 = *(*(a1 + 2240) + 4 * v9);
      if (v6 != -1)
      {
        goto LABEL_5;
      }

      ++v9;
    }

    while (v8 != v9);
    v6 = -1;
LABEL_11:
    v10 = *(a1 + 8);
    v11 = *(v10 + 568);
    v12 = *(v10 + 560);
    v13 = malloc_type_zone_calloc(*(*a1 + 232), 1uLL, a3, 0x5EE7D508uLL);
    if (!v13)
    {
      goto LABEL_37;
    }

    v14 = v13;
    if (*(a1 + 2248))
    {
      v15 = 2 * *(a1 + 2252);
      v16 = v12 + v11 + v11 * v15;
    }

    else
    {
      v16 = v12 + v11 + 32 * v11;
      v15 = 32;
    }

    v17 = *v13;
    *(v13 + 2) = 0;
    v18 = v13 + 16;
    *(v13 + 1) = 0;
    *(v13 + 6) = 0;
    *(v13 + 11) = 0;
    *(v13 + 12) = 0;
    *(v13 + 13) = 0;
    *(v13 + 14) = v16;
    *(v13 + 28) = 257;
    v13[58] = 0;
    *(v13 + 16) = v16;
    *(v13 + 34) = 65537;
    *(v13 + 5) = 0;
    *(v13 + 6) = v16;
    v19 = *(*(a1 + 16) + 40);
    v20 = *(*(a1 + 8) + 552);
    v21 = IOAccelResourceCreate();
    *v14 = v21;
    v14[1] = IOAccelResourceGetClientShared();
    *(*v18 + 28) = 1;
    IOAccelResourceRelease();
    if (!v21)
    {
      malloc_zone_free(*(*a1 + 232), ptr);
      v35 = 0;
      result = 10016;
      goto LABEL_36;
    }

    v22 = *v14;
    DataBytes = IOAccelResourceGetDataBytes();
    v24 = DataBytes;
    v25 = *(a1 + 2232);
    if (v25 && DataBytes)
    {
      v26 = *(a1 + 824);
      if (v26)
      {
        if (*(v26[2] + 24) != 1)
        {
          (*(*(a1 + 8) + 472))(a1, 2);
          v26 = *(a1 + 824);
        }

        v27 = *v26;
        IOAccelResourceFinishEvent();
        v25 = *(a1 + 2232);
      }

      memcpy(v24, v25, *(a1 + 2248));
    }

    v28 = *(a1 + 824);
    if (v28)
    {
      if (*v28)
      {
        gpuiDestroyQueryBufferClientAlloc(a1);
        v28 = *(a1 + 824);
      }

      malloc_zone_free(*(*a1 + 232), v28);
    }

    *(a1 + 824) = v14;
    *(a1 + 2232) = v24;
    *(a1 + 2252) = v15;
    *(a1 + 2248) = v16;
    (*(*(a1 + 8) + 224))(a1);
    v29 = *(a1 + 2252);
    v30 = v29 >> 3;
    v31 = *(a1 + 2240);
    v32 = *(*a1 + 232);
    if (v31)
    {
      v33 = malloc_type_zone_realloc(v32, v31, v30, 0x5361369AuLL);
      if (!v33)
      {
        goto LABEL_37;
      }

      *(a1 + 2240) = v33;
      bzero(&v33[v29 >> 4], v29 >> 4);
    }

    else
    {
      v34 = malloc_type_zone_calloc(v32, 1uLL, v30, 0x5EE7D508uLL);
      if (!v34)
      {
        goto LABEL_37;
      }

      *(a1 + 2240) = v34;
    }
  }

  LODWORD(v9) = 0;
LABEL_5:
  if (v9 == v8)
  {
    goto LABEL_11;
  }

  for (i = 0; i != 32; ++i)
  {
    if (((v6 >> i) & 1) == 0)
    {
      break;
    }
  }

  result = 0;
  *(*(a1 + 2240) + 4 * v9) |= 1 << i;
  v38 = i + 32 * v9;
  v35 = ptr;
  ptr[2] = v38;
LABEL_36:
  *a2 = v35;
  return result;
}

uint64_t gpumModifyQuery(uint64_t a1, uint64_t a2, int a3, void *a4, void (*a5)(uint64_t, uint64_t, void), void (*a6)(uint64_t, uint64_t, void))
{
  v11 = *(a2 + 4);
  if (v11 != 12)
  {
    a5(a1, a2, *(a2 + 4));
    *(a2 + 4) = 12;
    *(a1 + 8 * v11 + 712) = 0;
  }

  if (a3)
  {
    return 10010;
  }

  a6(a1, a2, *a4);
  return 0;
}

uint64_t gpumGetQueryInfo(uint64_t a1, _DWORD *a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void, uint64_t), void (*a6)(uint64_t, _DWORD *, uint64_t), uint64_t (*a7)(void, void, void, void))
{
  if (!a3)
  {
    v14 = *(*(a1 + 40) + 520);
    if (v14 == *(a1 + 800))
    {
      v15 = a2[1];
      if (v15 > 9)
      {
        return 0;
      }
    }

    else
    {
      a5(a1, *(*(a1 + 40) + 520), 11);
      *(v14 + 4) = 11;
      *(a1 + 800) = v14;
      v15 = a2[1];
    }

    a6(a1, a2, v15);
    result = 0;
    a2[1] = 12;
    *(a1 + 8 * v15 + 712) = 0;
    return result;
  }

  if (*a2 == -1)
  {
    if (a3 == 34918)
    {
      result = 0;
      *a4 = 0;
    }

    else if (a3 == 34919)
    {
      result = 0;
      *a4 = 1;
    }

    else
    {
      return 10010;
    }
  }

  else
  {
    v12 = a2[1];
    if (v12 <= 9)
    {
      v16 = a7;
      a6(a1, a2, a2[1]);
      a7 = v16;
      a2[1] = 12;
      *(a1 + 8 * v12 + 712) = 0;
    }

    return a7(a1, a2, a3, a4);
  }

  return result;
}

uint64_t gpumDestroyQuery(void *a1, int *ptr, void (*a3)(void *, int *, void))
{
  v5 = ptr[1];
  if (v5 != 12)
  {
    a3(a1, ptr, ptr[1]);
    ptr[1] = 12;
    a1[v5 + 89] = 0;
  }

  *(a1[280] + ((ptr[2] >> 3) & 0x1FFFFFFC)) &= ~(1 << ptr[2]);
  malloc_zone_free(*(*a1 + 232), ptr);
  return 0;
}

uint64_t gpumLoadCurrentQueries(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = result;
  v6 = 0;
  v7 = result + 712;
  do
  {
    v8 = *(v5 + 40) + 8 * v6;
    v9 = *(v8 + 432);
    v10 = v5 + 8 * v6;
    v11 = *(v10 + 712);
    if (v9 != v11)
    {
      if (v9)
      {
        v12 = *(v9 + 4);
        if (v12 != 12)
        {
          result = a3(v5, *(v8 + 432), *(v9 + 4));
          *(v9 + 4) = 12;
          *(v7 + 8 * v12) = 0;
          v11 = *(v10 + 712);
        }
      }

      if (v11)
      {
        v13 = *(v11 + 4);
        result = a3(v5, v11, v13);
        *(v11 + 4) = 12;
        *(v7 + 8 * v13) = 0;
      }

      if (v9)
      {
        result = a2(v5, v9, v6);
        *(v9 + 4) = v6;
        *(v10 + 712) = v9;
      }
    }

    ++v6;
  }

  while (v6 != 11);
  return result;
}

uint64_t gldReadFramebufferData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    v17 = **(a10 + 8);
    if (v17)
    {
      v18 = *(a1 + 16);
      if (*(v18 + 288))
      {
        pthread_mutex_lock((v18 + 48));
        LOBYTE(v17) = **(a10 + 8);
      }

      if (v17 && (*(*(a1 + 8) + 320))(*(a1 + 16), a10, v17))
      {
        LOBYTE(v17) = 0;
        **(a10 + 8) = 0;
      }

      v19 = *(a1 + 16);
      if (*(v19 + 288))
      {
        pthread_mutex_unlock((v19 + 48));
      }

      if (v17)
      {
        return 0;
      }
    }
  }

  v21 = *(*(a1 + 8) + 448);

  return v21(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t gldCreateSampler(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = malloc_type_zone_calloc(*(*a1 + 232), 1uLL, *(*a1 + 120), 0x5EE7D508uLL);
  if (!v8)
  {
    abort();
  }

  v9 = v8;
  *v8 = a3;
  v8[1] = a4;
  v10 = *(a1 + 320) + 1;
  *(a1 + 320) = v10;
  *(v8 + 4) = v10;
  (*(*(a1 + 8) + 112))(a1, v8);
  *a2 = v9;
  return 0;
}

uint64_t gldLoadSampler(uint64_t a1, uint64_t a2)
{
  if (!**(a2 + 8))
  {
    return 1;
  }

  if (*(a1 + 288))
  {
    pthread_mutex_lock((a1 + 48));
    v4 = **(a2 + 8);
    v5 = *(a1 + 320) + 1;
    *(a1 + 320) = v5;
    *(a2 + 16) = v5;
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = *(a1 + 320) + 1;
    *(a1 + 320) = v7;
    *(a2 + 16) = v7;
  }

  if ((*(*(a1 + 8) + 312))(a1, a2))
  {
    **(a2 + 8) = 0;
LABEL_9:
    v6 = 1;
    goto LABEL_11;
  }

  v6 = 0;
LABEL_11:
  if (*(a1 + 288))
  {
    pthread_mutex_unlock((a1 + 48));
  }

  return v6;
}

uint64_t gldDestroySampler(void *a1, void *a2)
{
  (*(a1[1] + 120))();
  malloc_zone_free(*(*a1 + 232), a2);
  return 0;
}

uint64_t gpusLoadCurrentSamplers(uint64_t result, unsigned __int16 a2)
{
  v2 = *(result + 24);
  if (!*(v2 + 12724))
  {
    return result;
  }

  v3 = result;
  v4 = 0;
  v5 = a2;
  v6 = *(result + 16);
  v7 = result + 976;
  v8 = result + 456;
  v18 = a2;
  do
  {
    if (!v5)
    {
      goto LABEL_22;
    }

    v19 = v4;
    v9 = 16 * v4;
    do
    {
      v10 = __clz(__rbit32(v5));
      v11 = v10 + v9;
      v12 = *(v3[5] + 8 * v11 + 720);
      if (!v12)
      {
        if (!*(v8 + 8 * v11))
        {
          v12 = 0;
          goto LABEL_18;
        }

        v12 = 0;
        *(v7 + 4 * v11) = 0;
        v15 = 1;
        goto LABEL_17;
      }

      v13 = **(v12 + 8);
      v14 = *(v12 + 16);
      if (*(v7 + 4 * v11) == v14)
      {
        v15 = **(v12 + 8);
      }

      else
      {
        v15 = 1;
      }

      if (**(v12 + 8))
      {
        v16 = *(v6 + 320) + 1;
        *(v6 + 320) = v16;
        *(v12 + 16) = v16;
        result = (*(v3[1] + 312))(v6, v12);
        if (result)
        {
          **(v12 + 8) = 0;
          v14 = *(v12 + 16);
          goto LABEL_12;
        }

        v12 = 0;
        *(v7 + 4 * v11) = 0;
        v15 = *(v8 + 8 * v11) != 0;
        if (!*(v8 + 8 * v11))
        {
          goto LABEL_18;
        }

LABEL_17:
        result = (*(v3[1] + 384))(v3, v12, v10 + v9, v15);
        goto LABEL_18;
      }

LABEL_12:
      *(v7 + 4 * v11) = v14;
      if (v15)
      {
        goto LABEL_17;
      }

LABEL_18:
      *(v8 + 8 * v11) = v12;
      v17 = 1 << v10 == v5;
      v5 ^= 1 << v10;
    }

    while (!v17);
    v2 = v3[3];
    v5 = v18;
    v4 = v19;
LABEL_22:
    ++v4;
  }

  while (v4 < *(v2 + 12724));
  return result;
}

uint64_t gldCreateShareGroup(void *a1, void *a2, uint64_t a3)
{
  *a2 = 0;
  v6 = a1[73];
  v7 = IOAccelSharedCreate();
  if (!v7)
  {
    return 10015;
  }

  v8 = v7;
  v9 = malloc_type_zone_calloc(*(*a1 + 232), 1uLL, *(*a1 + 72), 0x5EE7D508uLL);
  if (!v9)
  {
    abort();
  }

  v10 = v9;
  *v9 = *a1;
  *(v9 + 1) = a1;
  *(v9 + 2) = a3;
  *(v9 + 5) = v8;
  *(v9 + 74) = *(a1 + 191);
  pthread_mutex_init((v9 + 48), 0);
  v10[288] = 0;
  *(v10 + 73) = 1;
  *(v10 + 75) = 0;
  *(v10 + 4) = glgCreateProcessor();
  (a1[2])(v10, 0);
  result = 10020;
  if (*(v10 + 75) != 10020)
  {
    result = 0;
    *a2 = v10;
  }

  return result;
}

uint64_t gldDestroyShareGroup(uint64_t a1)
{
  for (i = 0; i != 88; i += 8)
  {
    v3 = a1 + i;
    v4 = *(a1 + i + 112);
    if (v4)
    {
      gpusDestroyZeroTexture(a1, v4);
      *(v3 + 112) = 0;
    }

    v5 = *(v3 + 200);
    if (v5)
    {
      gpusDestroyZeroTexture(a1, v5);
      *(v3 + 200) = 0;
    }
  }

  (*(*(a1 + 8) + 24))(a1);
  v6 = *(a1 + 40);
  IOAccelSharedRelease();
  v7 = *(a1 + 32);
  glgDestroyProcessor();
  pthread_mutex_destroy((a1 + 48));
  malloc_zone_free(*(*a1 + 232), a1);
  return 0;
}

uint64_t gpusPixelSize(int a1)
{
  v1 = ((a1 & 0x30000000) != 0) << 8;
  if ((a1 & 0xC000000) != 0)
  {
    v1 = 128;
  }

  if ((a1 & 0x3F00000) != 0)
  {
    v1 = 64;
  }

  if ((a1 & 0xFC000) != 0)
  {
    v1 = 32;
  }

  if ((a1 & 0x3FC0) != 0)
  {
    v1 = 16;
  }

  if ((a1 & 0x3C) != 0)
  {
    return 8;
  }

  else
  {
    return v1;
  }
}

uint64_t gpusDepthSize(unsigned int a1)
{
  if ((a1 & 0x400) != 0)
  {
    v1 = 16;
  }

  else
  {
    v1 = (a1 >> 4) & 8;
  }

  if ((a1 & 0x800) != 0)
  {
    v2 = 24;
  }

  else
  {
    v2 = v1;
  }

  if ((a1 & 0x1000) != 0)
  {
    return 32;
  }

  else
  {
    return v2;
  }
}

uint64_t gpusAlphaSize(unsigned int a1)
{
  if ((a1 & 0x2800000) != 0)
  {
    v1 = 16;
  }

  else
  {
    v1 = (a1 >> 22) & 0x20;
  }

  if ((a1 & 0x200000) != 0)
  {
    v2 = 12;
  }

  else
  {
    v2 = v1;
  }

  if ((a1 & 0x9A928) != 0)
  {
    v3 = 8;
  }

  else
  {
    v3 = v2;
  }

  if ((a1 & 0x80) != 0)
  {
    v4 = 4;
  }

  else
  {
    v4 = v3;
  }

  if ((a1 & 0x40000) != 0)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  if ((a1 & 0x400) != 0)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

uint64_t gpusColorSizes(unsigned int a1, uint64_t a2)
{
  *(a2 + 8) = 0;
  *a2 = 0;
  if ((a1 & 0x3C) != 0)
  {
    v2 = 2;
    v3 = 3;
    v4 = 3;
LABEL_10:
    *a2 = v3;
    *(a2 + 2) = v4;
    *(a2 + 4) = v2;
    *(a2 + 6) = gpusAlphaSize(a1);
    return 1;
  }

  if ((a1 & 0x1C0) != 0)
  {
    v3 = 4;
    v4 = 4;
    v2 = 4;
    goto LABEL_10;
  }

  if ((a1 & 0xE00) != 0)
  {
    v3 = 5;
    v4 = 5;
LABEL_9:
    v2 = 5;
    goto LABEL_10;
  }

  if ((a1 & 0x3000) != 0)
  {
    v4 = 6;
    v3 = 5;
    goto LABEL_9;
  }

  if ((a1 & 0x1C000) != 0)
  {
    v3 = 8;
    v4 = 8;
    v2 = 8;
    goto LABEL_10;
  }

  if ((a1 & 0xE0000) != 0)
  {
    v3 = 10;
    v4 = 10;
    v2 = 10;
    goto LABEL_10;
  }

  if ((a1 & 0x300000) != 0)
  {
    v3 = 12;
    v4 = 12;
    v2 = 12;
    goto LABEL_10;
  }

  if ((a1 & 0x2C00000) != 0)
  {
    v3 = 16;
    v4 = 16;
    v2 = 16;
    goto LABEL_10;
  }

  if ((a1 & 0x8000000) != 0)
  {
    v3 = 32;
    v4 = 32;
    v2 = 32;
    goto LABEL_10;
  }

  return 0;
}

uint64_t gldWaitForContext(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 544);
  if (v2)
  {
    v2(a1);
  }

  do
  {
    result = MEMORY[0x25302F100](*(a1 + 64));
  }

  while (result == -536870186);
  return result;
}

uint64_t gldFinishContext(uint64_t a1)
{
  (*(*(a1 + 8) + 472))();
  v2 = *(*(a1 + 8) + 544);
  if (v2)
  {
    v2(a1);
  }

  do
  {
    result = MEMORY[0x25302F100](*(a1 + 64));
  }

  while (result == -536870186);
  return result;
}

void gpusFinishQueueResourceUsingFlushFunc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    v4 = *(*(a1 + 8) + 480);
  }

  v5 = *(a1 + 40);
  JUMPOUT(0x25302EFF0);
}

uint64_t gldTestObject(uint64_t a1, int a2, int a3, int a4, void *a5)
{
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 != 3)
      {
        return 0;
      }

      v7 = a5[2];
      if (v7)
      {
        v5 = *v7;
        if (a4)
        {
LABEL_5:
          if (v5)
          {
            v6 = *(a1 + 64);
            JUMPOUT(0x25302F1D0);
          }

          return 1;
        }

LABEL_11:
        if (v5)
        {
          return MEMORY[0x282174328](v5, a3 == 0);
        }
      }
    }

    return 1;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v5 = a5[3];
      if (a4)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }

    return 0;
  }

  return gpuiTestFence(a1, a5, a4);
}

uint64_t gldFlushObject(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      gpuiFlushFence(a1, a4);
      return 0;
    }

    if (a2 == 1)
    {
      if (!*(a4 + 24))
      {
        return 0;
      }

      goto LABEL_10;
    }

    return 10010;
  }

  if (a2 != 2)
  {
    if (a2 == 3)
    {
      v4 = *(a4 + 16);
      if (!v4 || !*v4)
      {
        return 0;
      }

LABEL_10:
      MEMORY[0x25302F130](*(a1 + 64));
      return 0;
    }

    return 10010;
  }

  return 0;
}

uint64_t gldFinishObject(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      gpuiFinishFence(a1, a4);
      return 0;
    }

    if (a2 == 1)
    {
      if (!*(a4 + 24))
      {
        return 0;
      }

      goto LABEL_10;
    }

    return 10010;
  }

  if (a2 != 2)
  {
    if (a2 == 3)
    {
      v4 = *(a4 + 16);
      if (!v4 || !*v4)
      {
        return 0;
      }

LABEL_10:
      MEMORY[0x25302F120](*(a1 + 64));
      return 0;
    }

    return 10010;
  }

  return 0;
}

uint64_t gldWaitForObject(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 != 3)
      {
        return 10010;
      }

      v5 = *(a4 + 16);
      if (v5)
      {
        result = *v5;
        if (!*v5)
        {
          return result;
        }

        goto LABEL_10;
      }
    }

    return 0;
  }

  if (!a2)
  {
    gpuiWaitForFence(a1, a4);
    return 0;
  }

  if (a2 != 1)
  {
    return 10010;
  }

  result = *(a4 + 24);
  if (result)
  {
LABEL_10:
    IOAccelResourceFinishSysMem();
    return 0;
  }

  return result;
}

uint64_t gldCreateTexture(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = malloc_type_zone_calloc(*(*a1 + 232), 1uLL, *(*a1 + 112), 0x5EE7D508uLL);
  if (!v8)
  {
    abort();
  }

  v9 = v8;
  *v8 = a3;
  v8[1] = a4;
  *(v8 + 1) = 0u;
  *(v8 + 2) = 0u;
  v8[6] = 0;
  v10 = *(a1 + 316) + 1;
  *(a1 + 316) = v10;
  *(v8 + 14) = v10;
  (*(*(a1 + 8) + 96))(a1, v8);
  *a2 = v9;
  return 0;
}

uint64_t gldModifyTexture(uint64_t a1, void *a2)
{
  v3 = a2 + 3;
  v2 = a2[3];
  *(a2[1] + 20) |= 2u;
  if (v2)
  {
    if (*(a1 + 288))
    {
      pthread_mutex_lock((a1 + 48));
    }

    v6 = a2[4];
    if (v6 && (*(v6 + 260) & 0x8F) == 0x80)
    {
      v7 = *v3;
      IOAccelResourceRelease();
      *v3 = 0;
      v3[1] = 0;
      v3[2] = 0;
    }

    if (*(a1 + 288))
    {
      pthread_mutex_unlock((a1 + 48));
    }
  }

  return 0;
}

uint64_t gldLoadTexture(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(v2 + 20);
  if (!*(v2 + 20))
  {
    return 1;
  }

  v6 = **a2 & 0xF;
  if (*(a1 + 288))
  {
    pthread_mutex_lock((a1 + 48));
    v2 = *(a2 + 8);
    v3 = *(v2 + 20);
  }

  v7 = *(a1 + 316) + 1;
  *(a1 + 316) = v7;
  *(a2 + 56) = v7;
  v8 = *v2;
  if (v6 != 7 && v8 == 0)
  {
    if (v3)
    {
      if (!(*(*(a1 + 8) + 296))(a1, a2, v3, v2 + 1))
      {
        v14 = 0;
        goto LABEL_28;
      }

      v15 = *(a2 + 8);
      *(v15 + 13) = 0;
      *(v15 + 8) = 0;
    }

    v14 = 1;
    goto LABEL_28;
  }

  v10 = (v3 & 8) == 0;
  if ((v3 & 8) == 0 || !v8)
  {
    goto LABEL_14;
  }

  v11 = *(v8 + 8);
  if (!*v11)
  {
LABEL_13:
    *v11 = 0;
    v10 = 1;
LABEL_14:
    if (v10 && v3 != 0)
    {
      if ((*(*(a1 + 8) + 296))(a1, a2, v3, *(a2 + 8) + 8))
      {
        LODWORD(v3) = 0;
        v13 = *(a2 + 8);
        *(v13 + 13) = 0;
        *(v13 + 8) = 0;
      }

      else
      {
        LODWORD(v3) = 1;
      }
    }

    goto LABEL_27;
  }

  if ((*(*(a1 + 8) + 320))(a1, v8, *v11))
  {
    v11 = *(v8 + 8);
    goto LABEL_13;
  }

LABEL_27:
  v14 = v3 == 0;
LABEL_28:
  if (*(a1 + 288))
  {
    pthread_mutex_unlock((a1 + 48));
  }

  return v14;
}

uint64_t gldReclaimTexture(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 288))
  {
    pthread_mutex_lock((a1 + 48));
  }

  result = gpulDeleteKernelTexture(a2);
  if (*(a1 + 288))
  {
    result = pthread_mutex_unlock((a1 + 48));
  }

  *(*(a2 + 8) + 20) = 15;
  return result;
}

uint64_t gpulDeleteKernelTexture(uint64_t a1)
{
  v2 = 0;
  v3 = (a1 + 80);
  v4 = a1 + 64;
  do
  {
    result = *v3;
    if (*v3)
    {
      if (result == *(a1 + 24))
      {
        *(a1 + 40) = 0u;
        *(a1 + 24) = 0u;
      }

      gpusWaitResource();
      v6 = *v3;
      result = IOAccelResourceRelease();
      *v3 = 0;
      v3[4] = 0;
      v3[8] = 0;
      *(v4 + v2) = 0;
    }

    v2 += 4;
    ++v3;
  }

  while (v2 != 16);
  if (*(a1 + 24))
  {
    v7 = *(a1 + 24);
    gpusWaitResource();
    result = IOAccelResourceRelease();
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
  }

  *(a1 + 216) = -1;
  return result;
}

uint64_t gldDestroyTexture(void *a1, void *a2)
{
  (*(a1[1] + 104))();
  gldReclaimTexture(a1, a2);
  malloc_zone_free(*(*a1 + 232), a2);
  return 0;
}

uint64_t gldUnbindTexture(uint64_t result, uint64_t a2)
{
  v3 = result;
  if ((**a2 & 0xF) == 7 && (v4 = **(a2 + 8)) != 0 && (v5 = *(v4 + 16)) != 0)
  {
    v6 = (v5 + 16);
  }

  else
  {
    v6 = (a2 + 40);
  }

  v7 = *v6;
  if (*v6)
  {
    for (i = 0; i != 32; ++i)
    {
      v9 = v3 + 8 * i;
      if (*(v9 + 200) == a2)
      {
        result = (*(*(v3 + 8) + 376))(v3, 0, i, 143);
        *(v9 + 200) = 0;
        *(v3 + 4 * i + 848) = 0;
      }
    }

    if (*(v7 + 24) != 1)
    {
      v10 = *(*(v3 + 8) + 472);

      return v10(v3, 2);
    }
  }

  return result;
}

uint64_t gpumGetTextureLevelInfo(void *a1, unsigned __int16 **a2, uint64_t a3, uint64_t a4, int a5, _DWORD *a6, void (*a7)(uint64_t, unsigned __int16 **, uint64_t, uint64_t, unint64_t *))
{
  v24 = 0;
  v25 = 0;
  v23 = 0;
  if ((a2[1][10] & 2) != 0)
  {
    v14 = a1[2];
    if (!*(v14 + 288) || (pthread_mutex_lock((v14 + 48)), v14 = a1[2], (a2[1][10] & 2) != 0))
    {
      (*(a1[1] + 304))(v14, a2);
      *(a2[1] + 20) &= ~2u;
      v14 = a1[2];
    }

    if (*(v14 + 288))
    {
      pthread_mutex_unlock((v14 + 48));
    }
  }

  v22 = (**a2 >> 8) & 1;
  a7(a1[2], a2, a3, a4, &v22);
  if ((**a2 & 0x100) != 0)
  {
    v15 = 0;
    v16 = v22;
    do
    {
      v17 = *(a1[5] + v15);
      if (v17)
      {
        memset(v21, 0, sizeof(v21));
        v18 = a1[2];
        if ((*(*(v17 + 8) + 20) & 2) != 0)
        {
          if (!*(v18 + 288) || (pthread_mutex_lock((v18 + 48)), v18 = a1[2], (*(*(v17 + 8) + 20) & 2) != 0))
          {
            (*(a1[1] + 304))(v18, v17);
            *(*(v17 + 8) + 20) &= ~2u;
            v18 = a1[2];
          }

          if (*(v18 + 288))
          {
            pthread_mutex_unlock((v18 + 48));
            v18 = a1[2];
          }
        }

        *&v21[0] = 1;
        a7(v18, v17, a3, a4, v21);
        v16 += *&v21[0];
      }

      v15 += 8;
    }

    while (v15 != 256);
    if (v16 > a1[11])
    {
      v19 = 0;
      result = 10016;
LABEL_49:
      *a6 = v19;
      return result;
    }
  }

  result = 10010;
  if (a5 <= 32864)
  {
    if (a5 > 32861)
    {
      if (a5 == 32862)
      {
        result = 0;
        v19 = HIWORD(v23);
      }

      else
      {
        result = 0;
        if (a5 == 32863)
        {
          v19 = v24;
        }

        else
        {
          v19 = WORD1(v24);
        }
      }
    }

    else
    {
      switch(a5)
      {
        case 4099:
          result = 0;
          v19 = v23;
          break;
        case 32860:
          result = 0;
          v19 = WORD1(v23);
          break;
        case 32861:
          result = 0;
          v19 = WORD2(v23);
          break;
        default:
          return result;
      }
    }

    goto LABEL_49;
  }

  if (a5 <= 35902)
  {
    switch(a5)
    {
      case 32865:
        result = 0;
        v19 = WORD2(v24);
        break;
      case 34890:
        result = 0;
        v19 = HIWORD(v24);
        break;
      case 35057:
        result = 0;
        v19 = v25;
        break;
      default:
        return result;
    }

    goto LABEL_49;
  }

  if (a5 > 37125)
  {
    if (a5 != 37126)
    {
      if (a5 != 37127)
      {
        return result;
      }

      result = 0;
      v19 = BYTE6(v25);
      goto LABEL_49;
    }

LABEL_41:
    result = 0;
    v19 = WORD2(v25);
    goto LABEL_49;
  }

  if (a5 == 35903)
  {
    result = 0;
    v19 = WORD1(v25);
    goto LABEL_49;
  }

  if (a5 == 36011)
  {
    goto LABEL_41;
  }

  return result;
}

uint64_t gpumRestoreTextureData(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, void *, uint64_t, uint64_t))
{
  if (*(a1 + 288))
  {
    pthread_mutex_lock((a1 + 48));
  }

  v12 = a2[4];
  v11 = a2[5];
  if ((*(v12 + 260) | 0x80) != 0xC0)
  {
    v14 = (v11 + 2 * a3);
    v15 = v14[6];
    v16 = *v14;
    if ((v15 & ~v16 & (1 << a4)) != 0)
    {
      *(v11 + 2 * a3) = v15 & (1 << a4) | v16;
    }

    v17 = a2[3];
    IOAccelResourceFinishEvent();
    goto LABEL_9;
  }

  if (((1 << a4) & *(v11 + 2 * a3 + 12) & ~*(v11 + 2 * a3)) != 0)
  {
    v13 = a2[3];
    IOAccelResourcePageoff();
LABEL_9:
    v18 = *(v12 + 260);
    goto LABEL_10;
  }

  v21 = a2[3];
  IOAccelResourceFinishEvent();
  v18 = *(v12 + 260);
  if (v18 == 192)
  {
    if ((*(a1 + 296) & 0x80) != 0)
    {
      v22 = *a2 + 480 * a3 + 32 * a4;
      v23 = gpusRowBytes(*(v22 + 280), *(v22 + 282), *(v22 + 276));
      gpusFlushMemoryForIn(*(v22 + 288), *(v22 + 278) * v23 * *(v22 + 272));
    }

    goto LABEL_9;
  }

LABEL_10:
  if ((v18 | 0x40) == 0x40)
  {
    v19 = a6(a1, a2, a3, a4);
  }

  else
  {
    v19 = 0;
  }

  if (*(a1 + 288))
  {
    pthread_mutex_unlock((a1 + 48));
  }

  return v19;
}

uint64_t gpumReadTextureData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (*(a1 + 288))
  {
    pthread_mutex_lock((a1 + 48));
  }

  v16 = a9(a1, a2, a3, a4, a5, a6, a7);
  if (*(a1 + 288))
  {
    pthread_mutex_unlock((a1 + 48));
  }

  return v16;
}

uint64_t gpusLoadCurrentTextures(uint64_t result, unsigned __int16 a2, uint64_t a3)
{
  v3 = a2;
  *(result + 140) &= ~a2;
  v4 = *(result + 24);
  v37 = *(result + 16);
  if (!*(v4 + 12724))
  {
    return result;
  }

  v5 = a3;
  v6 = result;
  v7 = 0;
  v8 = result + 200;
  v40 = result + 848;
  v36 = a2;
  do
  {
    if (!v3)
    {
      goto LABEL_58;
    }

    v41 = 16 * v7;
    v39 = v7;
    do
    {
      v9 = __clz(__rbit32(v3));
      v10 = 1 << v9;
      v11 = v9 + v41;
      v12 = *(v5 + 8 * v7) >> (4 * v9);
      v13 = v12 & 0xF;
      if (v13 > 0xA)
      {
        if (!*(v8 + 8 * v11))
        {
          v14 = 0;
          goto LABEL_55;
        }

        v14 = 0;
        *(v40 + 4 * v11) = 0;
        goto LABEL_52;
      }

      v14 = *(*(v6 + 40) + 8 * v11);
      if (v14)
      {
        v15 = *(v14 + 8);
        v16 = *(v15 + 20);
        v17 = *(v40 + 4 * v11);
        if (v17 == *(v14 + 56))
        {
          v18 = *(v15 + 20);
        }

        else
        {
          v18 = -113;
        }

        if (v13 == 7)
        {
          if ((v16 & 8) == 0)
          {
            if (!*(v15 + 20))
            {
              v5 = a3;
LABEL_35:
              v7 = v39;
LABEL_42:
              *(v40 + 4 * v11) = *(v14 + 56);
              v31 = *v14;
              if ((**v14 & 0x800) != 0)
              {
                v32 = *(v31 + 32);
                v33 = *(*(v6 + 8) + 772);
                v34 = v31[125];
                result = IOSurfaceBindAccel();
              }

LABEL_53:
              if (!v18)
              {
                goto LABEL_55;
              }

              goto LABEL_54;
            }

            goto LABEL_40;
          }

          v26 = *v15;
          if (*v15)
          {
            v27 = **(v26 + 8);
            if (!**(v26 + 8))
            {
              goto LABEL_40;
            }

            result = (*(*(v6 + 8) + 320))(v37, v26, **(v26 + 8));
            if (result)
            {
              **(v26 + 8) = 0;
LABEL_40:
              v28 = *(v37 + 316) + 1;
              *(v37 + 316) = v28;
              *(v14 + 56) = v28;
              v29 = *(v14 + 8) + 8;
              result = (*(*(v6 + 8) + 296))();
              v5 = a3;
              v7 = v39;
              if (result)
              {
                goto LABEL_41;
              }

              goto LABEL_46;
            }
          }

          v5 = a3;
        }

        else
        {
          v19 = *v14;
          if ((v10 & *(*(v6 + 24) + 2 * v39 + 12720)) == 0 || *(v19 + 2))
          {
            v20 = v19[2];
            v21 = v20 == 6402 || v20 == 34041;
            v22 = v21;
            v23 = v12 & 0xF;
            v24 = v37 + 112 + 88 * v22;
            v14 = *(v24 + 8 * v23);
            if (!v14)
            {
              result = gpusCreateZeroTexture(v37, v22, v13);
              v14 = result;
              *(v24 + 8 * v23) = result;
              v17 = *(v40 + 4 * v11);
            }

            v16 = *(*(v14 + 8) + 20);
            if (v17 == *(v14 + 56))
            {
              v18 = *(*(v14 + 8) + 20);
            }

            else
            {
              v18 = -113;
            }

            v5 = a3;
          }

          if (!v16)
          {
            goto LABEL_35;
          }

          v25 = *(v37 + 316) + 1;
          *(v37 + 316) = v25;
          *(v14 + 56) = v25;
          result = (*(*(v6 + 8) + 296))();
          if (result)
          {
            v7 = v39;
LABEL_41:
            v30 = *(v14 + 8);
            *(v30 + 13) = 0;
            *(v30 + 8) = 0;
            goto LABEL_42;
          }
        }

        v7 = v39;
      }

      else
      {
        v18 = 0;
      }

LABEL_46:
      v14 = 0;
      if (v13 == 7 && *(v6 + 84) != 0)
      {
        goto LABEL_53;
      }

      *(v6 + 140) |= 1 << v11;
      *(v40 + 4 * v11) = 0;
      if (!*(v8 + 8 * v11))
      {
        goto LABEL_55;
      }

LABEL_52:
      v18 = -113;
LABEL_54:
      result = (*(*(v6 + 8) + 376))(v6, v14, v11, v18);
LABEL_55:
      *(v8 + 8 * v11) = v14;
      v21 = v10 == v3;
      v3 ^= v10;
    }

    while (!v21);
    v4 = *(v6 + 24);
    v3 = v36;
LABEL_58:
    ++v7;
  }

  while (v7 < *(v4 + 12724));
  return result;
}

uint64_t gpusCreateZeroTexture(uint64_t a1, int a2, int a3)
{
  if (a3 == 10)
  {
    v11 = 15;
    v7 = 1;
    v9 = 6;
    v8 = 2;
    v10 = 1;
  }

  else
  {
    if (a3)
    {
      v6 = 1;
    }

    else
    {
      v6 = 6;
    }

    if (a3 == 2)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    v8 = 0;
    v9 = 1;
    v10 = a3 != 2;
    if (a3 == 2)
    {
      v11 = 1;
    }

    else
    {
      v11 = 15;
    }
  }

  v12 = 32 * v7 * v11 + 264;
  v13 = malloc_type_zone_calloc(*(*a1 + 232), 1uLL, v12 + 4 * v9 + 24, 0x5EE7D508uLL);
  if (!v13)
  {
    abort();
  }

  v14 = v13;
  v15 = 0;
  v16 = &v13[v12];
  v17 = &v13[v12 + 24];
  do
  {
    *(v17 + v15) = -16777216;
    v15 += 4;
  }

  while (4 * v9 != v15);
  *v13 = a3 & 0xF | 0x1000;
  *(v13 + 3) = 1028;
  *(v13 + 2) = 1065353216;
  if (a2)
  {
    v18 = 6402;
  }

  else
  {
    v18 = 6408;
  }

  *(v13 + 2) = v18;
  v13[24] = v13[24] & 0xE7 | 8;
  *(v13 + 38) = 687941889;
  *(v13 + 78) = 10497;
  *(v13 + 10) = xmmword_24D62A350;
  *(v13 + 18) = 0x20326002600;
  *(v13 + 116) = 0x3E800000000;
  *(v13 + 31) = 0;
  v13[130] &= 0xFAu;
  *(v13 + 28) = 420054461;
  *(v13 + 33) = 0;
  *(v13 + 17) = 0;
  v19 = *(v13 + 107) & 0xC0FF;
  *(v13 + 64) = *(v13 + 64) & 0xF000 | 0x688;
  if (a3 > 5)
  {
    if (a3 <= 7)
    {
      if (a3 == 6)
      {
        v19 |= 0x2000u;
      }

      else
      {
        v19 |= 0x100u;
      }

      goto LABEL_38;
    }

    if (a3 != 8)
    {
      if (a3 == 9)
      {
        v20 = 9472;
        goto LABEL_37;
      }

      if (a3 == 10)
      {
        goto LABEL_27;
      }

      goto LABEL_33;
    }

    goto LABEL_30;
  }

  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v20 = 5120;
      goto LABEL_37;
    }

    if (a3 != 2)
    {
      goto LABEL_33;
    }

LABEL_30:
    v20 = 1280;
    goto LABEL_37;
  }

  if (a3 == 3)
  {
LABEL_33:
    v19 |= 0x400u;
    goto LABEL_38;
  }

  if (a3 != 4)
  {
LABEL_27:
    v20 = 9216;
LABEL_37:
    v19 |= v20;
  }

LABEL_38:
  v21 = 0;
  v13[211] = v7;
  v13[213] = v11;
  *(v13 + 50) = -2090368799;
  *(v13 + 98) = 1;
  *(v13 + 99) = v9;
  *(v13 + 107) = v19 & 0xBF00 | 0x4000;
  *(v13 + 48) = 98392;
  *(v13 + 102) = 0;
  if (v11 <= 2)
  {
    v22 = 2;
  }

  else
  {
    v22 = v11;
  }

  v13[206] = v8;
  *(v13 + 207) = 0x10000;
  *(v16 + 20) = -113;
  v23 = v13 + 314;
  v24 = v22 - 1;
  *(v16 + 8) = -1;
  *(v16 + 16) = -1;
  do
  {
    v25 = &v13[480 * v21 + 264];
    *(v25 + 4) = 65537;
    *(v25 + 8) = v9;
    *(v25 + 24) = v17;
    *(v25 + 12) = 0x836780E100010001;
    *&v13[2 * v21 + 216] |= 1u;
    *(v25 + 11) = 48;
    *&v13[2 * v21 + 228] |= 1u;
    if (v10)
    {
      v26 = v24;
      v27 = v23;
      do
      {
        *(v27 - 2) = 335616264;
        v27 += 32;
        --v26;
      }

      while (v26);
    }

    ++v21;
    v23 += 480;
  }

  while (v21 != v7);
  v29 = 0;
  gldCreateTexture(a1, &v29, v13, v16);
  result = v29;
  *(v29 + 16) = v14;
  return result;
}

uint64_t gldModifyTexSubImage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v17 = *(a2 + 8);
  v18 = *(v17 + 20);
  if (*(v17 + 20) || a13 && **(a13 + 8))
  {
    if (((*(*a2 + 2 * a3 + 228) & *(v17 + 2 * a3 + 8)) >> a4))
    {
      if (!*(v17 + 20))
      {
        goto LABEL_22;
      }

      return 0;
    }

    v19 = *(a1 + 16);
    if (*(v19 + 288))
    {
      pthread_mutex_lock((v19 + 48));
      v18 = *(*(a2 + 8) + 20);
    }

    if (v18)
    {
      v21 = *(a1 + 8);
      v20 = *(a1 + 16);
      v22 = *(v20 + 316) + 1;
      *(v20 + 316) = v22;
      *(a2 + 56) = v22;
      if (!(*(v21 + 296))())
      {
        goto LABEL_18;
      }

      v23 = *(a2 + 8);
      *(v23 + 13) = 0;
      *(v23 + 8) = 0;
    }

    if (a13 && **(a13 + 8))
    {
      if ((*(*(a1 + 8) + 320))(*(a1 + 16), a13))
      {
        v18 = 0;
        **(a13 + 8) = 0;
      }

      else
      {
        v18 = 1;
      }
    }

    else
    {
      v18 = 0;
    }

LABEL_18:
    v24 = *(a1 + 16);
    if (*(v24 + 288))
    {
      pthread_mutex_unlock((v24 + 48));
    }

    if (!v18)
    {
      goto LABEL_22;
    }

    return 0;
  }

LABEL_22:
  v26 = *(*(a1 + 8) + 392);

  return v26(a1, a2, a3, a4);
}

uint64_t gldCopyTexSubImage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!*(*(a2 + 8) + 20))
  {
LABEL_10:
    v18 = *(*(a1 + 8) + 400);

    return v18(a1, a2, a3, a4, a5, a6);
  }

  v12 = *(a1 + 16);
  if (*(v12 + 288))
  {
    pthread_mutex_lock((v12 + 48));
    v13 = *(a1 + 16);
    v14 = *(*(a2 + 8) + 20);
    v15 = *(v13 + 316) + 1;
    *(v13 + 316) = v15;
    *(a2 + 56) = v15;
    if (!v14)
    {
LABEL_8:
      if (*(v13 + 288))
      {
        pthread_mutex_unlock((v13 + 48));
      }

      goto LABEL_10;
    }
  }

  else
  {
    v16 = *(v12 + 316) + 1;
    *(v12 + 316) = v16;
    *(a2 + 56) = v16;
  }

  if ((*(*(a1 + 8) + 296))())
  {
    v17 = *(a2 + 8);
    *(v17 + 13) = 0;
    *(v17 + 8) = 0;
    v13 = *(a1 + 16);
    goto LABEL_8;
  }

  v20 = *(a1 + 16);
  if (*(v20 + 288))
  {
    pthread_mutex_unlock((v20 + 48));
  }

  return 0;
}

uint64_t gldCopyTextureData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(*(a5 + 8) + 20);
  if (!*(*(a2 + 8) + 20))
  {
    v21 = 0;
    goto LABEL_12;
  }

  v17 = *(a1 + 16);
  if (*(v17 + 288))
  {
    pthread_mutex_lock((v17 + 48));
    v18 = *(a1 + 16);
    v19 = *(*(a2 + 8) + 20);
    v20 = *(v18 + 316) + 1;
    *(v18 + 316) = v20;
    *(a2 + 56) = v20;
    if (!v19)
    {
      v21 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v22 = *(v17 + 316) + 1;
    *(v17 + 316) = v22;
    *(a2 + 56) = v22;
  }

  if ((*(*(a1 + 8) + 296))())
  {
    v21 = 0;
    v23 = *(a2 + 8);
    *(v23 + 13) = 0;
    *(v23 + 8) = 0;
  }

  else
  {
    v21 = 1;
  }

LABEL_10:
  v24 = *(a1 + 16);
  if (*(v24 + 288))
  {
    pthread_mutex_unlock((v24 + 48));
  }

LABEL_12:
  if (v16)
  {
    v25 = *(a1 + 16);
    if (*(v25 + 288))
    {
      pthread_mutex_lock((v25 + 48));
      v25 = *(a1 + 16);
    }

    v26 = *(v25 + 316) + 1;
    *(v25 + 316) = v26;
    *(a5 + 56) = v26;
    if (*(*(a5 + 8) + 20))
    {
      if ((*(*(a1 + 8) + 296))())
      {
        v16 = 0;
        v27 = *(a5 + 8);
        *(v27 + 13) = 0;
        *(v27 + 8) = 0;
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

    v28 = *(a1 + 16);
    if (*(v28 + 288))
    {
      pthread_mutex_unlock((v28 + 48));
    }
  }

  if ((v21 | v16))
  {
    return 0;
  }

  v30 = *(*(a1 + 8) + 408);

  return v30(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t gldGenerateTexMipmaps(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(*(a2 + 8) + 20))
  {
LABEL_10:
    v14 = *(*(a1 + 8) + 424);

    return v14(a1, a2, a3, a4);
  }

  v8 = *(a1 + 16);
  if (*(v8 + 288))
  {
    pthread_mutex_lock((v8 + 48));
    v9 = *(a1 + 16);
    v10 = *(*(a2 + 8) + 20);
    v11 = *(v9 + 316) + 1;
    *(v9 + 316) = v11;
    *(a2 + 56) = v11;
    if (!v10)
    {
LABEL_8:
      if (*(v9 + 288))
      {
        pthread_mutex_unlock((v9 + 48));
      }

      goto LABEL_10;
    }
  }

  else
  {
    v12 = *(v8 + 316) + 1;
    *(v8 + 316) = v12;
    *(a2 + 56) = v12;
  }

  if ((*(*(a1 + 8) + 296))())
  {
    v13 = *(a2 + 8);
    *(v13 + 13) = 0;
    *(v13 + 8) = 0;
    v9 = *(a1 + 16);
    goto LABEL_8;
  }

  v16 = *(a1 + 16);
  if (*(v16 + 288))
  {
    pthread_mutex_unlock((v16 + 48));
  }

  return 0;
}

uint64_t gpusGetKernelTexture(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8, uint64_t a9, unsigned int a10, int a11, int a12, uint64_t a13)
{
  v14 = a2;
  v16 = a9;
  v17 = a2[3];
  v18 = *a2;
  v19 = *(*a2 + 208);
  v20 = (*(*a2 + 194) >> v19) | (*(*a2 + 194) >> v19 == 0);
  v21 = (*(*a2 + 196) >> v19) | (*(*a2 + 196) >> v19 == 0);
  v22 = (*(*a2 + 198) >> v19) | (*(*a2 + 198) >> v19 == 0);
  if (!v19)
  {
    LOWORD(v20) = *(*a2 + 194);
    LOWORD(v21) = *(*a2 + 196);
    LOWORD(v22) = *(*a2 + 198);
  }

  *(a2 + 3) = 0u;
  *(a2 + 5) = 0u;
  if (!a6 && v17)
  {
    v35 = a8;
    v23 = a4;
    v24 = a7;
    v25 = a5;
    v36 = v20;
    v26 = v21;
    v34 = v22;
    IOAccelResourceRelease();
    LOWORD(v22) = v34;
    LOWORD(v21) = v26;
    LOWORD(v20) = v36;
    a5 = v25;
    v16 = a9;
    v14 = a2;
    a7 = v24;
    a4 = v23;
    a8 = v35;
  }

  if (a6 || !v16)
  {
    if (a6 && v16)
    {
      v27 = 192;
    }

    else
    {
      if (v16)
      {
        v28 = 1;
      }

      else
      {
        v28 = a6 == 0;
      }

      if (v28)
      {
        v27 = 0;
      }

      else
      {
        v27 = 128;
      }
    }
  }

  else
  {
    v27 = 64;
  }

  *(a13 + 64) = a5;
  *(a13 + 72) = a6;
  *(a13 + 80) = v16;
  *(a13 + 88) = a7;
  *(a13 + 32) = *(v18 + 211);
  *(a13 + 33) = *(v18 + 209);
  *(a13 + 34) = v19;
  *(a13 + 8) = v20;
  *(a13 + 10) = v21;
  *(a13 + 12) = v22;
  *a13 = v27;
  *(a13 + 4) = a12;
  *(a13 + 35) = a4;
  *(a13 + 16) = a10;
  *(a13 + 24) = a8;
  v29 = *(a1 + 40);
  v30 = *(*(a1 + 8) + 552);
  v31 = IOAccelResourceCreate();
  if (!v31)
  {
    return 0;
  }

  v14[3] = v31;
  v14[4] = IOAccelResourceGetClientShared();
  v32 = 1;
  *(v14[5] + 28) = 1;
  v14[6] = IOAccelResourceGetDataBytes();
  IOAccelResourceRelease();
  return v32;
}

uint64_t gldGetTextureAllocationIdentifiers(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v5 = *a2;
  *a2 = 0;
  if ((**a1 & 0x800) != 0)
  {
    v9 = 0;
    v10 = a1 + 80;
    do
    {
      result = *(v10 + v9);
      if (result)
      {
        result = IOAccelResourceCreateAllocationIdentifierSet();
        v11 = *a2;
        if (v11 < v5)
        {
          *(a3 + 8 * v11) = 0xDEADBEEFDEADBEEFLL;
          *a2 = v11 + 1;
        }

        v12 = *a2;
        if (v12 < v5)
        {
          *(a3 + 8 * v12) = 0xDEADBEEFDEADBEEFLL;
          *a2 = v12 + 1;
        }
      }

      v9 += 8;
    }

    while (v9 != 32);
  }

  else
  {
    result = *(a1 + 24);
    if (result)
    {
      result = IOAccelResourceCreateAllocationIdentifierSet();
      v7 = *a2;
      if (v7 < v5)
      {
        *(a3 + 8 * v7) = 0xDEADBEEFDEADBEEFLL;
        *a2 = v7 + 1;
      }

      v8 = *a2;
      if (v8 < v5)
      {
        *(a3 + 8 * v8) = 0xDEADBEEFDEADBEEFLL;
        *a2 = v8 + 1;
      }
    }
  }

  return result;
}

uint64_t gpusReleaseAccumIOSurface(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 204))
  {
    v3 = *(a2 + 176);
    result = IOAccelResourceRelease();
    *(a2 + 176) = 0;
  }

  *(a2 + 204) = 0;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  return result;
}

uint64_t gpusGetKernelTextureIOSurface(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *(*a2 + 196);
  v7 = *(*a2 + 198);
  v8 = *(*a2 + 208);
  if (v8)
  {
    v7 = (v7 >> v8) | (v7 >> v8 == 0);
    v6 = (v6 >> v8) | (v6 >> v8 == 0);
    v9 = (*(*a2 + 194) >> v8) | (*(*a2 + 194) >> v8 == 0);
  }

  else
  {
    v9 = *(*a2 + 194);
  }

  v10 = *(v5 + 256);
  if (!v10)
  {
    return 0;
  }

  v12 = a4;
  v13 = a3;
  v15 = a1;
  v38 = v6;
  v39 = v9;
  v37 = v7;
  v16 = 0;
  v17 = (v5 + 48);
  v18 = -1;
  do
  {
    if (v10 == v17[v16])
    {
      v18 = v16;
    }

    ++v16;
  }

  while (v16 != 4);
  v19 = (a2 + 24);
  v20 = *(a2 + 24);
  if (v20)
  {
    v21 = 0;
    v22 = (a2 + 80);
    v23 = a2 + 64;
    while (1)
    {
      v24 = *v22;
      if (*v22)
      {
        if (!v17[v21])
        {
          goto LABEL_15;
        }

        if (IOSurfaceGetID(v17[v21]) != *(v23 + 4 * v21))
        {
          break;
        }
      }

LABEL_21:
      ++v21;
      ++v22;
      if (v21 == 4)
      {
        v15 = a1;
        v13 = a3;
        v12 = a4;
        if (*a5 != 130 || *(a5 + 68) != *(v5 + 248) || *(a5 + 72) != *(v5 + 250) || *(a5 + 76) != a3 || *(a5 + 32) != *(v5 + 211) || *(a5 + 33) != *(v5 + 209) || *(a5 + 34) != *(v5 + 208) || *(a5 + 35) != a4 || v39 != *(a5 + 8) || v38 != *(a5 + 10) || v37 != *(a5 + 12))
        {
          if (*(a2 + 204))
          {
            v26 = *(a2 + 176);
            IOAccelResourceRelease();
            *(a2 + 176) = 0;
          }

          *(a2 + 204) = 0;
          *(a2 + 184) = 0;
          *(a2 + 192) = 0;
        }

        goto LABEL_36;
      }
    }

    v24 = *v22;
LABEL_15:
    if (v24 == *(a2 + 176))
    {
      *(a2 + 204) = 1;
    }

    else
    {
      gpusWaitResource();
      v25 = *v22;
      IOAccelResourceRelease();
      v24 = *v22;
    }

    if (v24 == v20)
    {
      *v19 = 0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
    }

    *v22 = 0;
    v22[4] = 0;
    v22[8] = 0;
    *(v23 + 4 * v21) = 0;
    goto LABEL_21;
  }

LABEL_36:
  *(a5 + 68) = *(v5 + 248);
  *(a5 + 72) = *(v5 + 250);
  *(a5 + 76) = v13;
  *(a5 + 32) = *(v5 + 211);
  *(a5 + 33) = *(v5 + 209);
  *(a5 + 34) = *(v5 + 208);
  *(a5 + 8) = v39;
  *(a5 + 10) = v38;
  *(a5 + 12) = v37;
  *(a5 + 35) = v12;
  *a5 = 130;
  v27 = 64;
  for (i = a2 + 144; ; i += 8)
  {
    if (!*v17 || *(i - 64))
    {
      goto LABEL_41;
    }

    *(a5 + 64) = IOSurfaceGetID(*v17);
    v29 = *(v15 + 40);
    v30 = *(*(v15 + 8) + 552);
    v31 = IOAccelResourceCreate();
    if (!v31)
    {
      break;
    }

    *(i - 64) = v31;
    *(i - 32) = IOAccelResourceGetClientShared();
    *(a2 + v27) = *(a5 + 64);
LABEL_41:
    ++v17;
    v27 += 4;
    if (v27 == 80)
    {
      v32 = *(a2 + 112 + 8 * v18);
      *(a2 + 24) = *(a2 + 80 + 8 * v18);
      *(a2 + 32) = v32;
      *(a2 + 40) = *(a2 + 144 + 8 * v18);
      *(a2 + 48) = 0;
      *(a2 + 216) = v18;
      return 1;
    }
  }

  gpulDeleteKernelTexture(a2);
  return 0;
}

void gpusDestroyZeroTexture(void *a1, void *a2)
{
  v3 = a2[2];
  a2[2] = 0;
  gldDestroyTexture(a1, a2);
  v4 = *(*a1 + 232);

  malloc_zone_free(v4, v3);
}

uint64_t gldCreateVertexArray(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = malloc_type_zone_calloc(*(*a1 + 232), 1uLL, *(*a1 + 104), 0x5EE7D508uLL);
  if (!v8)
  {
    abort();
  }

  v9 = v8;
  *v8 = a3;
  v8[1] = a4;
  v8[4] = 0;
  (*(a1[1] + 80))(a1, v8);
  *a2 = v9;
  return 0;
}

uint64_t gldFlushVertexArray(uint64_t a1, int a2, void *start, size_t len, int a5)
{
  if (!a5)
  {
    return 0;
  }

  if ((*(a1 + 296) & 0x80) != 0)
  {
    gpusFlushMemoryForOut(start, len);
  }

  return 1;
}

uint64_t gldDestroyVertexArray(void *a1, void *a2)
{
  (*(a1[1] + 88))();
  malloc_zone_free(*(*a1 + 232), a2);
  return 0;
}

uint64_t gldUnbindVertexArray(uint64_t result, uint64_t a2)
{
  if (*(result + 808) == a2)
  {
    v2 = result;
    result = (*(*(result + 8) + 368))();
    *(v2 + 808) = 0;
    *(v2 + 1104) = 0;
  }

  return result;
}

void *gpusLoadCurrentVertexArray(void *result)
{
  v1 = result;
  v2 = result[5];
  v3 = *(v2 + 368);
  if (*(result[15] + 12))
  {
    v4 = *(v2 + 976);
    if (v4)
    {
      v5 = **(v4 + 8);
      if (**(v4 + 8))
      {
        v6 = **(v4 + 8);
        result = (*(*(result[2] + 8) + 320))();
        if (!result)
        {
          goto LABEL_17;
        }

        **(v4 + 8) = 0;
      }
    }
  }

  if (v3)
  {
    v7 = *v3;
    v8 = *(v3[1] + 272);
    v9 = *(v3 + 9);
    if (*(v1 + 277) == v9)
    {
      v10 = *(v3[1] + 272);
    }

    else
    {
      v10 = -1;
    }

    if (v8)
    {
      v12 = v1[1];
      v11 = v1[2];
      v13 = *(v11 + 328) + 1;
      *(v11 + 328) = v13;
      *(v3 + 9) = v13;
      result = (*(v12 + 272))();
      v9 = *(v3 + 9);
    }

    *(v1 + 277) = v9;
    if (v10)
    {
      result = (*(v1[1] + 344))(v1, v3, v10);
    }

    v14 = *(v7 + 768);
    if ((*(v1[4] + 25) < 0 || v14) && (v14 & ~*(v7 + 776)) == 0)
    {
      v16 = *(v1[1] + 280);
      if (v16)
      {
        v17 = v3[1];
        v18 = *(v17 + 264);
        if (v18 != 128)
        {
          v19 = *(v3 + 8);
          if (*(v1 + 276) == v19)
          {
            v15 = *(v17 + 264);
          }

          else
          {
            v15 = -1;
          }

          if (!v18)
          {
LABEL_46:
            *(v1 + 276) = v19;
            if (!v15)
            {
              goto LABEL_22;
            }

            goto LABEL_21;
          }

          v20 = v1[2];
          v21 = *(v20 + 324) + 1;
          *(v20 + 324) = v21;
          v22 = v3[2];
          *(v3 + 8) = v21;
          v33 = v22;
          v32 = v3[3];
          v34 = v32 | v8;
          v35 = v22 | v18;
          if (((v22 | v18) & 0x10) == 0)
          {
            goto LABEL_44;
          }

          v23 = *v3;
          if ((v35 & 4) == 0)
          {
LABEL_38:
            v27 = *(v23 + 768) & v35;
            if (v27)
            {
              do
              {
                v28 = __clz(__rbit64(v27));
                v29 = *(v3[1] + 8 * v28 - 128);
                v30 = **(v29 + 8);
                if (**(v29 + 8))
                {
                  result = (*(*(v20 + 8) + 320))(v20, *(v3[1] + 8 * v28 - 128), **(v29 + 8));
                  if (!result)
                  {
                    goto LABEL_48;
                  }

                  **(v29 + 8) = 0;
                }

                v31 = 1 << v28 == v27;
                v27 ^= 1 << v28;
              }

              while (!v31);
            }

LABEL_44:
            result = v16(v1[2], v3, v35, v34);
            if (result)
            {
              v15 |= v33;
              v10 |= v32;
              v3[2] = 0;
              v3[3] = 0;
              *(v3[1] + 264) = 0;
              *(v3[1] + 272) = 0;
              v19 = *(v3 + 8);
              goto LABEL_46;
            }

LABEL_48:
            v3[2] = v35;
            v3[3] = v34;
            *(v3[1] + 264) = 128;
            *(v3[1] + 272) = 0;
            goto LABEL_17;
          }

          v24 = *(v17 + 256);
          if (v24)
          {
            v25 = **(v24 + 8);
            if (!**(v24 + 8))
            {
LABEL_35:
              v26 = 1;
LABEL_37:
              *(v3 + 40) = v26;
              goto LABEL_38;
            }

            if ((*(*(v20 + 8) + 320))(v20, v24, **(v24 + 8)))
            {
              **(v24 + 8) = 0;
              goto LABEL_35;
            }
          }

          v26 = 0;
          goto LABEL_37;
        }
      }
    }
  }

LABEL_17:
  v3 = 0;
  *(v1 + 276) = 0;
  if (v1[101])
  {
    v10 = -1;
  }

  else
  {
    v10 = 0;
  }

  v15 = v10;
  if (v10)
  {
LABEL_21:
    result = (*(v1[1] + 368))(v1, v3, v15, v10);
  }

LABEL_22:
  v1[101] = v3;
  return result;
}