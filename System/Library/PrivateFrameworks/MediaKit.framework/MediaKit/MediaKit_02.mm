uint64_t IOJobWait(uint64_t a1, unsigned int a2)
{
  v7.tv_nsec = 0;
  if (!a1)
  {
    return 22;
  }

  v7.tv_sec = time(0) + a2;
  pthread_mutex_lock(a1);
  if (*(a1 + 164))
  {
    do
    {
      v4 = (a1 + 112);
      if (a2)
      {
        v5 = pthread_cond_timedwait(v4, a1, &v7);
        if (v5 == 60)
        {
          break;
        }
      }

      else
      {
        v5 = pthread_cond_wait(v4, a1);
      }
    }

    while (*(a1 + 164));
  }

  else
  {
    v5 = 0;
  }

  pthread_mutex_unlock(a1);
  if (*(a1 + 532) && (v5 == 60 || !v5))
  {
    return *(a1 + 532);
  }

  return v5;
}

uint64_t IOJobCopySingleInfo(pthread_mutex_t *a1, const void *a2, CFTypeRef *a3)
{
  if (!a3)
  {
    return 22;
  }

  *a3 = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v10[0] = Mutable;
  v10[1] = a1;
  pthread_mutex_lock(a1);
  DictKeyFiller(a2, v10);
  pthread_mutex_unlock(a1);
  Value = CFDictionaryGetValue(Mutable, a2);
  if (Value)
  {
    v8 = 0;
    *a3 = CFRetain(Value);
    if (!Mutable)
    {
      return v8;
    }

    goto LABEL_7;
  }

  v8 = 22;
  if (Mutable)
  {
LABEL_7:
    CFRelease(Mutable);
  }

  return v8;
}

uint64_t *DictKeyFiller(const void *a1, uint64_t *a2)
{
  result = bsearch(a1, &InfoLookupTable, 0x11uLL, 0x10uLL, InfoLookupKeyRecCompare);
  if (result)
  {
    v4 = *result;
    v5 = result[1];
    v7 = *a2;
    v6 = a2[1];

    return v5(v6, v4, v7);
  }

  return result;
}

void InfoFillerGetState(uint64_t a1, const void *a2, __CFDictionary *a3)
{
  valuePtr = *(a1 + 168);
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(a3, a2, v5);
  CFRelease(v5);
}

void InfoFillerGetPercentDone(uint64_t a1, const void *a2, __CFDictionary *a3)
{
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt16Type, (a1 + 234));
  CFDictionaryAddValue(a3, a2, v5);

  CFRelease(v5);
}

uint64_t *stkgettop(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *result;
    *(a1 + 8) = *result;
    *result = 0;
    if (!v3)
    {
      *(a1 + 16) = 0;
    }

    --*(a1 + 2);
  }

  return result;
}

uint64_t BuildiCache(uint64_t a1, void *a2)
{
  if (*(a1 + 36))
  {
    goto LABEL_2;
  }

  v9 = *(a1 + 40);
  if (*(a1 + 40))
  {
    v10 = 0;
    v11 = 1;
    do
    {
      if (StepTable)
      {
        v12 = &word_281DA9AC2;
        v13 = StepTable;
        while (*(v12 - 17) != *(a1 + 42 + 2 * v10))
        {
          --v13;
          v12 += 24;
          if (!v13)
          {
            goto LABEL_15;
          }
        }

        if (*v12)
        {
          break;
        }
      }

LABEL_15:
      v11 = ++v10 < v9;
    }

    while (v10 != v9);
    if (v11)
    {
LABEL_2:
      v4 = malloc_type_calloc(1uLL, 0x20uLL, 0x10A00404E4CC0B5uLL);
      if (v4)
      {
        v5 = v4;
        v6 = *(a1 + 36);
        if (!v6)
        {
          goto LABEL_18;
        }

        v7 = malloc_type_calloc(1uLL, v6, 0x9D6A67AuLL);
        v5[2] = v7;
        if (v7)
        {
          goto LABEL_18;
        }

        free(v5);
      }

      *a2 = 0;
      return *__error();
    }
  }

  v5 = 0;
LABEL_18:
  result = 0;
  *a2 = v5;
  return result;
}

uint64_t SetupStep(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (!v1)
  {
    return 22;
  }

  if (!*(a1 + 128))
  {
    v5 = StepTable;
    if (StepTable)
    {
      v6 = *(v1 + 2 * *(a1 + 16) + 42);
      v7 = &word_281DA9AA0;
      while (*v7 != v6)
      {
        --v5;
        v7 += 24;
        if (!v5)
        {
          goto LABEL_13;
        }
      }

      *(a1 + 128) = v7;
      goto LABEL_3;
    }

LABEL_13:
    *(a1 + 128) = 0;
    return 22;
  }

LABEL_3:
  *(a1 + 144) = 0;
  v2 = *(a1 + 136);
  if (v2)
  {
    v3 = *(v2 + 24);
    if (*(v2 + 24))
    {
      v4 = (v2 + 32);
      while (*v4 != *(a1 + 16))
      {
        --v3;
        v4 += 8;
        if (!v3)
        {
          goto LABEL_16;
        }
      }

      *(a1 + 144) = v4;
    }
  }

LABEL_16:
  *(a1 + 88) = *(a1 + 32);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1 && (v9 = *(a1 + 24) - 4, v9 < 4))
    {
      v10 = qword_2586A0840[v9];
      v11 = 64;
    }

    else
    {
      v11 = 64;
      v10 = 48;
    }
  }

  else
  {
    v11 = 56;
    v10 = 40;
  }

  v8 = 0;
  *(a1 + 80) = *(a1 + v10);
  *(a1 + 96) = *(a1 + v11);
  return v8;
}

uint64_t IOAdvertising(uint64_t result, pthread_cond_t *a2)
{
  if (*(result + 2))
  {
    if (*(result + 2) == 1)
    {
      return pthread_cond_signal(a2);
    }

    else
    {
      return pthread_cond_broadcast(a2);
    }
  }

  return result;
}

uint64_t IORV(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2 == 1)
  {
    return MKMediaReadBlocks(*(a9 + 96), *(a9 + 80), *(a9 + 88), *(a9 + 72), *(a9 + 112), 0);
  }

  else
  {
    return 0;
  }
}

uint64_t IOWV(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2 == 1)
  {
    return MKMediaWriteBlocks(*(a9 + 96), *(a9 + 80), *(a9 + 88), *(a9 + 72), *(a9 + 112), 0);
  }

  else
  {
    return 0;
  }
}

uint64_t IOJobDispose(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = pthread_mutex_trylock(result);
    if (result != 16)
    {
      v2 = *(v1 + 256);
      if (v2)
      {
        if (*v2)
        {
          v3 = 0;
          v4 = 0;
          do
          {
            if (*&v2[v3 + 4])
            {
              CFRelease(*&v2[v3 + 4]);
              v2 = *(v1 + 256);
            }

            if (*&v2[v3 + 6])
            {
              CFRelease(*&v2[v3 + 6]);
              v2 = *(v1 + 256);
            }

            ++v4;
            v3 += 12;
          }

          while (v4 < *v2);
        }

        free(v2);
      }

      v5 = *(v1 + 288);
      if (v5)
      {
        free(v5);
      }

      v6 = *(v1 + 544);
      if (v6)
      {
        free(v6);
      }

      stkclear(v1 + 296, v1, DisposeProbe);
      stkclear(v1 + 320, v1, DisposeProbe);
      stkclear(v1 + 344, v1, DisposeProbe);
      stkclear(v1 + 368, v1, iCacheDispose);
      pthread_cond_destroy((v1 + 64));
      pthread_cond_destroy((v1 + 112));
      pthread_mutex_unlock(v1);
      v7 = pthread_mutex_destroy(v1);
      free(v1);
      --NumJobs;
      return v7;
    }
  }

  return result;
}

uint64_t stkclear(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *(a1 + 8);
  if (v4)
  {
    while (1)
    {
      v6 = *v4;
      *(a1 + 8) = *v4;
      --*(a1 + 2);
      if (v6)
      {
        if (a3)
        {
          goto LABEL_4;
        }

LABEL_8:
        v4 = v6;
        if (!v6)
        {
          return 0;
        }
      }

      else
      {
        *(a1 + 16) = 0;
        if (!a3)
        {
          goto LABEL_8;
        }

LABEL_4:
        v7 = a3();
        if (v7)
        {
          return v7;
        }

        v4 = v6;
        if (!v6)
        {
          return v7;
        }
      }
    }
  }

  return 0;
}

uint64_t DisposeProbe(uint64_t a1)
{
  munlock(*(a1 + 112), *(a1 + 104));
  free(*(a1 + 112));
  free(a1);
  return 0;
}

uint64_t purgeLoader(const __CFDictionary *a1, const __CFDictionary *a2, const void **a3, unsigned int a4, int *a5, const __CFArray *a6, int a7, _DWORD *a8)
{
  v41 = *MEMORY[0x277D85DE8];
  if ((a4 & 0x80000000) != 0 || (v12 = *a3, v40 = 0, memset(__s, 0, sizeof(__s)), memset(v38, 0, 154), *(v12 + 47) <= a4) || (v17 = CFStringCreateWithCString(0, &v12[152 * a4 + 144], 0)) == 0)
  {
    v20 = 0;
    v19 = 22;
    goto LABEL_7;
  }

  v18 = v17;
  idx = 0;
  v19 = MKLookupSchemeFormat(a1, @"GPT", v17, 1, v38);
  CFRelease(v18);
  if (v19)
  {
    v20 = 0;
    goto LABEL_7;
  }

  if (!LOWORD(v38[0]))
  {
    goto LABEL_38;
  }

  if (!a2 || (theDict = CFDictionaryGetValue(a2, @"Loaders")) == 0)
  {
    v20 = 0;
    v19 = -417;
LABEL_7:
    v21 = 0;
    if (!a5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v24 = LOWORD(v38[0]);
  if (!LOWORD(v38[0]))
  {
LABEL_38:
    v20 = 0;
LABEL_39:
    v19 = 2;
    goto LABEL_7;
  }

  v35 = a6;
  v25 = 0;
  v26 = &v38[2] + 4;
  v34 = a7;
  do
  {
    v27 = *v26;
    if (v27 == 6)
    {
      if (*(v12 + 47) - 1 <= a4)
      {
        goto LABEL_32;
      }

      v20 = 1;
    }

    else
    {
      if (v27 != 1 || a4 == 0)
      {
        goto LABEL_32;
      }

      v20 = -1;
    }

    v29 = CFStringCreateWithCString(0, v26 - 34, 0);
    Value = CFDictionaryGetValue(theDict, v29);
    CFRelease(v29);
    if (!Value || GPTUpdateLoaderRecord(Value, __s) || (~comparePartitions(&v12[152 * (v20 + a4) + 96], __s) & 6) == 0)
    {
      goto LABEL_34;
    }

    v24 = LOWORD(v38[0]);
LABEL_32:
    ++v25;
    v26 += 38;
  }

  while (v25 < v24);
  v20 = 0;
LABEL_34:
  if (v25 >= LOWORD(v38[0]))
  {
    goto LABEL_39;
  }

  if (v35)
  {
    v31 = v20 + a4;
    v32 = CFNumberCreate(0, kCFNumberSInt64Type, *a3 + 152 * (v20 + a4) + 208);
    v33 = CFArrayDictionarySearchWithIndexOptions(v35, @"Offset", v32, &idx, 0);
    CFRelease(v32);
    if (v33)
    {
      v21 = idx - v34;
      CFArrayRemoveValueAtIndex(v35, idx);
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
    v31 = v20 + a4;
  }

  v19 = delentry(a3, 96, 0x5Eu, v31, 152);
  if (a5)
  {
LABEL_8:
    *a5 = v20;
  }

LABEL_9:
  if (a8)
  {
    *a8 = v21;
  }

  if (v19 == 2)
  {
    result = 0;
  }

  else
  {
    result = v19;
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t IOZV(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2 == 1)
  {
    bzero(*(a9 + 112), *(a9 + 88) * *(a9 + 72));
  }

  return 0;
}

uint64_t MKMediaUpdateProperties(uint64_t a1)
{
  if (a1)
  {
    return _MKMediaUpdateGeometryFromDict(a1);
  }

  return a1;
}

uint64_t setMediaBlockcount(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = **(*a1 + 8);
  if (!v3)
  {
    return 22;
  }

  v4 = *(v2 + 94);
  if (*(v2 + 94))
  {
    v5 = 0;
    v6 = (v2 + 216);
    do
    {
      if (*v6 + *(v6 - 1) > v5)
      {
        v5 = *v6 + *(v6 - 1);
      }

      v6 += 19;
      --v4;
    }

    while (v4);
    v7 = v5 + 1;
  }

  else
  {
    v7 = 1;
  }

  v9 = *(v3 + 84) * *(v3 + 80);
  v10 = *(v2 + 32);
  v11 = v9 / v10;
  if (v9 % v10)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = v11;
  }

  v13 = v7 + v12;
  if (a2)
  {
    if (v13 > a2)
    {
      return 4294961955;
    }
  }

  else
  {
    a2 = v13;
  }

  *(v2 + 64) = a2;
  *(v3 + 24) = 1;
  *(v3 + 32) = a2 - 1;
  *(v3 + 72) = 2;
  v14 = v12 + 2;
  v15 = a2 - v12 - 2;
  *(v3 + 40) = v14;
  *(v3 + 48) = v15;
  if (v15 < v14)
  {
    return 4294961955;
  }

  uuid_LtoB(v2 + 16, v3 + 56);
  result = 0;
  v16 = *(v3 + 40);
  v17 = *(v3 + 48);
  v18 = *(v3 + 32) + v16 - v17;
  *(v2 + 40) = v16;
  *(v2 + 48) = v18;
  *(v2 + 56) = v17 - v16 + 1;
  *(v2 + 88) = *(v3 + 8);
  return result;
}

uint64_t MKScavangeDross(uint64_t a1, const __CFArray *a2, uint64_t a3, int a4, __int16 *a5, unsigned int *a6)
{
  if (!a1)
  {
    v12 = 0;
    v8 = -1;
    result = 22;
    if (!a6)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v8 = a4 - 1;
  if (((a4 - 1) & 0x8000) != 0)
  {
    result = 0;
    v12 = 0;
    if (!a6)
    {
      goto LABEL_20;
    }

LABEL_19:
    *a6 = v12;
    goto LABEL_20;
  }

  v12 = 0;
  v13 = (a4 - 1);
  v14 = a1 + 1072 * v13 + 576;
  v8 = a4;
  while (strncasecmp(v14, (a3 + 33), 0x20uLL))
  {
    if ((!a2 || CFStrMatchlist(v14, a2) == -1) && PMCategorize(*(a1 + 514), *(v14 + 506)) - 3 > 1)
    {
      result = 0;
      if (!a6)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    v12 += *(v14 - 36);
LABEL_10:
    v8 = v13;
    v14 -= 1072;
    if (v13-- <= 0)
    {
      result = 0;
      v8 = -1;
      if (a6)
      {
        goto LABEL_19;
      }

      goto LABEL_20;
    }
  }

  v12 += *(v14 - 36);
  if (v12 < *(a3 + 88))
  {
    goto LABEL_10;
  }

  result = 0;
  v8 = v13;
  if (a6)
  {
    goto LABEL_19;
  }

LABEL_20:
  *a5 = v8;
  return result;
}

uint64_t SValidate(uint64_t *a1, unsigned int a2, int a3, int a4)
{
  if (a1)
  {
    v4 = *a1;
    v5 = *a1 + 528;
    v6 = v5 + 1072 * a4;
    v7 = *(v6 + 8);
    if (v7 <= a2)
    {
      v8 = 0;
    }

    else
    {
      if (!a4 || *(v5 + 1072 * a4 - 518) != 24320)
      {
        return -5341;
      }

      if (*(v5 + 1072 * a4 - 1064) <= a2)
      {
        v8 = 0;
      }

      else
      {
        v8 = -5341;
      }
    }

    if ((a3 + a2) > (*(v6 + 12) + v7))
    {
      if (a4 + 1 >= *(v4 + 522))
      {
        v10 = *(v4 + 4);
      }

      else
      {
        v9 = v5 + 1072 * (a4 + 1);
        v10 = *(v9 + 8);
        if (*(v9 + 554) == 24320)
        {
          v10 += *(v9 + 12);
        }
      }

      if ((a3 + a2) <= v10)
      {
        return 0;
      }

      else
      {
        return -5341;
      }
    }
  }

  else
  {
    return 22;
  }

  return v8;
}

uint64_t MKPurgeLoader(const __CFDictionary *a1, const __CFDictionary *a2, const void **a3, unsigned int a4, int *a5, const __CFArray *a6, int a7, _DWORD *a8)
{
  v36 = *MEMORY[0x277D85DE8];
  if ((a4 & 0x80000000) != 0 || (v12 = *a3, *(*a3 + 261) <= a4))
  {
    v16 = 0;
    LODWORD(result) = 22;
    goto LABEL_6;
  }

  idx = 0;
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  memset(v33, 0, 154);
  LODWORD(result) = MKGetPartitionRequisites(a1, *(v12 + 257), &v12[1072 * a4 + 576], *&v12[1072 * a4 + 1082], v33);
  if (result)
  {
    v16 = 0;
LABEL_6:
    v17 = 0;
    goto LABEL_7;
  }

  theDict = CFDictionaryGetValue(a2, @"Loaders");
  if (!theDict)
  {
    v16 = 0;
    LODWORD(result) = -417;
    goto LABEL_6;
  }

  v19 = LOWORD(v33[0]);
  if (!LOWORD(v33[0]))
  {
    v16 = 0;
LABEL_37:
    LODWORD(result) = 2;
    goto LABEL_6;
  }

  v29 = a6;
  v20 = 0;
  v21 = &v33[2] + 4;
  do
  {
    v22 = *v21;
    if (v22 == 6)
    {
      if (*(v12 + 261) - 1 <= a4)
      {
        goto LABEL_29;
      }

      v16 = 1;
    }

    else
    {
      if (v22 != 1 || a4 == 0)
      {
        goto LABEL_29;
      }

      v16 = -1;
    }

    v24 = CFStringCreateWithCString(0, v21 - 34, 0);
    Value = CFDictionaryGetValue(theDict, v24);
    CFRelease(v24);
    if (!Value)
    {
      LODWORD(result) = -415;
      goto LABEL_6;
    }

    LODWORD(result) = MKGetPartitionInfo(Value, *(v12 + 257), v34);
    if (result)
    {
      goto LABEL_6;
    }

    v26 = strcasecmp(&v12[1072 * (v16 + a4) + 576], &v34[33]);
    v19 = LOWORD(v33[0]);
    if (!v26)
    {
      goto LABEL_31;
    }

LABEL_29:
    ++v20;
    v21 += 38;
  }

  while (v20 < v19);
  v16 = 0;
LABEL_31:
  v17 = v29;
  if (v20 >= v19)
  {
    goto LABEL_37;
  }

  if (v29)
  {
    v27 = CFNumberCreate(0, kCFNumberSInt32Type, *a3 + 1072 * (v16 + a4) + 536);
    v28 = CFArrayDictionarySearchWithIndexOptions(v29, @"Offset", v27, &idx, 0);
    CFRelease(v27);
    if (v28)
    {
      v17 = idx - a7;
      CFArrayRemoveValueAtIndex(v29, idx);
    }

    else
    {
      v17 = 0;
    }
  }

  if (v16)
  {
    LODWORD(result) = PMRemovePartition(a3, (v16 + a4), 0);
  }

  else
  {
    LODWORD(result) = 0;
  }

LABEL_7:
  if (a5)
  {
    *a5 = v16;
  }

  if (a8)
  {
    *a8 = v17;
  }

  if (result == 2)
  {
    result = 0;
  }

  else
  {
    result = result;
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PMRemovePartition(const void **a1, unsigned int a2, int a3)
{
  if (!a1 || (v5 = *a1, *(*a1 + 261) <= a2))
  {
    LOWORD(v10) = -50;
    return v10;
  }

  v7 = &v5[1072 * a2];
  v8 = (v7 + 528);
  v9 = *(v7 + 249);
  bzero(v7 + 608, 0x3E0uLL);
  v10 = PMSetTypeExtended(v8, 24320, *(v5 + 257), &unk_2586A0C2E);
  if (!a3 || a2 < 2 || v10)
  {
    return v10;
  }

  v11 = *(v5 + 257);
  if (v11 == 8)
  {
    v13 = *(v8 - 518);
    if (v13 != 5 && v13 != 133 && v13 != 15)
    {
      goto LABEL_20;
    }

LABEL_19:
    v10 = PMSetTypeExtended(v8 - 1072, 24320, v11, &unk_2586A0C2E);
    if (!v10)
    {
      goto LABEL_20;
    }

    return v10;
  }

  if (v11 == 1 && (v9 & 8) != 0 && *(v8 - 518) == 14336)
  {
    goto LABEL_19;
  }

LABEL_20:

  return PMRationalise(a1);
}

uint64_t PMSetTypeExtended(uint64_t a1, int a2, int a3, char *a4)
{
  if (a1)
  {
    *(a1 + 554) = a2;
    v6 = PMCodeSearch(a2, a3);
    strncpypad((a1 + 48), v6, 0x20uLL, 0);
    if (a4)
    {
      strncpypad((a1 + 16), a4, 0x20uLL, 0);
    }

    return 0;
  }

  else
  {
    return -50;
  }
}

uint64_t PMRationalise(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*(*a1 + 261) >= 2u)
    {
      v3 = 0;
      v4 = 1;
      while (1)
      {
        v5 = &v2[536 * v3 + 264];
        if (*(v5 + 554) != 24320)
        {
          goto LABEL_16;
        }

        v6 = *(v5 + 12);
        if (v6)
        {
          v7 = &v2[536 * (v3 + 1) + 264];
          if (*(v7 + 554) == 24320)
          {
            v8 = *(v7 + 12);
            if (v8)
            {
              if (*(v5 + 8) < *(v7 + 8))
              {
                if ((*(v5 + 90) & 0x20) != 0)
                {
                  strncpypad((v5 + 16), (v7 + 16), 0x20uLL, 0);
                  *(v5 + 88) = *(v7 + 88);
                  v8 = *(v7 + 12);
                  v6 = *(v5 + 12);
                }

                *(v5 + 12) = v6 + v8;
                v9 = (v3 + 1);
                goto LABEL_13;
              }
            }
          }

LABEL_16:
          v10 = 0;
          v3 = (v3 + 1);
          v4 = v3 + 1;
          if (v3 + 1 >= v2[261])
          {
            return v10;
          }
        }

        else
        {
          v9 = v3;
LABEL_13:
          v10 = delentry(a1, 528, 0x20Au, v9, 1072);
          if (v10)
          {
            return v10;
          }

          v2 = *a1;
          if (v4 >= *(*a1 + 261))
          {
            break;
          }
        }
      }
    }

    return 0;
  }

  else
  {
    return -50;
  }
}

uint64_t _MKMediaCharDeviceInitialize(uint64_t a1, CFDictionaryRef theDict)
{
  v21 = 0;
  strcpy(__source, "/dev/");
  if (!a1 || *a1 != 1296786550)
  {
    return 22;
  }

  memset(&v20, 0, sizeof(v20));
  if (*(a1 + 4) == -1)
  {
    v13 = *(a1 + 8);
    if (v13)
    {
      if (stat(v13, &v20))
      {
        return *__error();
      }

      v14 = devname(v20.st_rdev, 0x2000u);
      if (!v14)
      {
        return 2;
      }

      v15 = v14;
      v16 = strlen(v14);
      v17 = malloc_type_malloc(v16 + 6, 0x1000040274DC3F3uLL);
      strlcpy(v17, __source, v16 + 6);
      strlcat(v17, v15, v16 + 6);
      free(*(a1 + 8));
      *(a1 + 8) = v17;
      v18 = _MKMediaOpenFile(v17, theDict, &v21 + 1, &v21);
      if (v18 < 0)
      {
        return *__error();
      }

      *(a1 + 4) = v18;
      goto LABEL_8;
    }

    return 22;
  }

  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"Writable");
    if (Value)
    {
      HIDWORD(v21) = CFEqual(Value, *MEMORY[0x277CBED28]);
    }
  }

  *(a1 + 8) = strdup("<unknown device>");
LABEL_8:
  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(a1 + 16) = Mutable;
  if (!Mutable)
  {
    return 12;
  }

  v7 = *MEMORY[0x277CBED28];
  v8 = *MEMORY[0x277CBED10];
  if (HIDWORD(v21))
  {
    v9 = *MEMORY[0x277CBED28];
  }

  else
  {
    v9 = *MEMORY[0x277CBED10];
  }

  CFDictionaryAddValue(Mutable, @"Writable", v9);
  if (v21)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  CFDictionaryAddValue(*(a1 + 16), @"Shared Writer", v10);
  v11 = CFStringCreateWithCString(v5, *(a1 + 8), 0x8000100u);
  CFDictionaryAddValue(*(a1 + 16), @"Path", v11);
  CFRelease(v11);
  return 0;
}

const void *_MKMediaFileCopyProperty(uint64_t a1, void *key)
{
  if (!key)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  if (v4 && (v5 = CFDictionaryGetValue(v4, key)) != 0)
  {
    Value = v5;
    Mutable = 0;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    _MKMediaFileGetGeoProperties(a1, Mutable);
    Value = CFDictionaryGetValue(Mutable, key);
    if (!Value)
    {
      goto LABEL_7;
    }
  }

  CFRetain(Value);
LABEL_7:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return Value;
}

uint64_t _MKMediaFileGetGeoProperties(_DWORD *a1, __CFDictionary *a2)
{
  if (!a1)
  {
    return 22;
  }

  if (*a1 != 1296786550)
  {
    return 22;
  }

  v4 = a1[1];
  if (v4 < 0)
  {
    return 22;
  }

  v9 = v2;
  v10 = v3;
  memset(&v8, 0, sizeof(v8));
  if (fstat(v4, &v8))
  {
    return *__error();
  }

  if (v8.st_size)
  {
    v7 = v8.st_size / 512;
  }

  else
  {
    v7 = -1;
  }

  return _MKMediaSetupGeometry(a2, 512, v7, 0x10000);
}

uint64_t MKMakePartBootable(__CFBundle *a1, const void **a2, void *a3, int a4, char *a5, char *a6, unsigned int a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, char *), BOOL *a10)
{
  v81 = *MEMORY[0x277D85DE8];
  v73 = 0;
  valuePtr = 0;
  v76 = 22;
  v17 = a1;
  if (!a1)
  {
    v17 = MKAccessLibrary(0);
    if (!v17)
    {
      *a10 = 0;
      result = 22;
      goto LABEL_20;
    }
  }

  v67 = a8;
  v74 = 0;
  v72 = 0;
  memset(v78, 0, sizeof(v78));
  v79 = 0u;
  v80 = 0;
  memset(v71, 0, sizeof(v71));
  v70 = 0;
  v18 = MKLoadDB(v17, @"database", &v76);
  if (v18)
  {
    v19 = v18;
    v68 = a2;
    v20 = MKLoadDB(v17, @"inventory", &v76);
    if (!v20)
    {
      v24 = 0;
      v21 = v19;
LABEL_15:
      CFRelease(v21);
      if (a1)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v21 = v20;
    v66 = a7;
    v76 = PMAccountFreespace(v68, 0, 0x8000u);
    if (v76)
    {
      goto LABEL_10;
    }

    v76 = PMGuidSearch(v68, a3, &v72);
    if (v76)
    {
      goto LABEL_10;
    }

    v22 = *v68;
    v63 = v72;
    if (a4)
    {
      v23 = *v68;
      a5 = PMCodeSearch(a4, v22[257]);
    }

    else if (a5)
    {
      v23 = *v68;
      if (*a5)
      {
        LOWORD(a4) = PMDescriptorSearch(a5, v22[257]);
      }

      else
      {
        LOWORD(a4) = 0;
        a5 = 0;
      }
    }

    else
    {
      v23 = *v68;
      LOWORD(a4) = 0;
    }

    if (v76)
    {
      goto LABEL_10;
    }

    v27 = &v23[536 * v63 + 264];
    if (a5)
    {
      v64 = &v23[536 * v63 + 264];
      if (!strncasecmp((v27 + 48), a5, 0x20uLL))
      {
        LODWORD(a5) = 0;
        v27 = v64;
      }

      else
      {
        v76 = MKPurgeLoader(v19, v21, v68, v72, &v74, 0, 0, 0);
        if (v76)
        {
LABEL_10:
          LODWORD(a5) = 0;
          goto LABEL_11;
        }

        *(v64 + 554) = a4;
        *(v64 + 84) = *(v64 + 12);
        strncpypad((v64 + 48), a5, 0x20uLL, 0);
        v76 = PMDefaultPartitionStatus(v23[257], v64);
        if ((v66 & 4) == 0)
        {
          *(v64 + 88) |= 0x100000u;
        }

        LODWORD(a5) = 1;
        v27 = v64;
      }
    }

    if (a6)
    {
      v28 = v27;
      if (strncasecmp((v27 + 16), a6, 0x20uLL))
      {
        strncpypad((v28 + 16), a6, 0x20uLL, 0);
        LODWORD(a5) = a5 + 1;
      }

      v27 = v28;
    }

    v76 = MKGetPartitionRequisites(v19, v23[257], (v27 + 48), *(v27 + 554), v71);
    if (v76)
    {
      goto LABEL_11;
    }

    v65 = v23;
    v29 = *v71;
    if (!*v71)
    {
      v32 = 1;
      goto LABEL_44;
    }

    v30 = &v71[36];
    v31 = v66;
    while (*v30 != 1)
    {
      v30 += 38;
      if (!--v29)
      {
        v32 = 1;
        goto LABEL_45;
      }
    }

    v76 = -417;
    Value = CFDictionaryGetValue(v21, @"Loaders");
    if (!Value)
    {
      goto LABEL_11;
    }

    v39 = Value;
    v76 = -415;
    v60 = (v30 - 34);
    v40 = CFStringCreateWithCString(0, v30 - 34, 0);
    v41 = CFDictionaryGetValue(v39, v40);
    v42 = v40;
    v43 = v41;
    CFRelease(v42);
    if (!v43)
    {
      goto LABEL_11;
    }

    v76 = MKGetPartitionInfo(v43, v23[257], v78);
    if (v76)
    {
      goto LABEL_11;
    }

    v44 = CFDictionaryGetValue(v43, @"Partition Type Throw Aways");
    v76 = MKScavangeDross(v23, v44, v78, v72, &v73, &v74 + 1);
    if (v76)
    {
      goto LABEL_11;
    }

    theDict = v43;
    if (v72 > v73)
    {
      if (v73 + 1 == v72)
      {
        v45 = &v23[536 * v73 + 264];
        if (!strcasecmp((v45 + 48), &v78[33]) && *(v45 + 12) == DWORD2(v79))
        {
          v46 = *(v45 + 554);
          if (v46 != 24320)
          {
            if (strcasecmp((v45 + 472), v60))
            {
              v76 = PMSetupLoader(v45, v60, v78);
              if (v76)
              {
                goto LABEL_11;
              }

              LODWORD(a5) = a5 + 1;
            }

            v61 = *(v45 + 88);
            v76 = PMDefaultPartitionStatus(v23[257], v45);
            if (v61 != *(v45 + 88))
            {
              LODWORD(a5) = a5 + 1;
            }
          }

          v47 = PMGuidSearch(v68, a3, &v72);
          v76 = v47;
          v65 = *v68;
          if (v46 == 24320)
          {
LABEL_103:
            v62 = a5;
            goto LABEL_104;
          }

          v48 = v73;
LABEL_98:
          if (v65[536 * v48 + 541] != 24320)
          {
            v47 = MKUpdateLoader(v68, v48, v17, v21, v67, a9);
            v76 = v47;
            if (!v47)
            {
              v32 = 0;
              LODWORD(a5) = a5 + 1;
LABEL_44:
              v31 = v66;
LABEL_45:
              if ((v31 & 0x1000) != 0)
              {
                v37 = v32 == 0;
                v33 = &v73;
                if (!v37)
                {
                  v33 = &v72;
                }

                LODWORD(a5) = PMSetBootPartition(v65, *v33) + a5;
                v34 = *v71;
                if (*v71)
                {
                  v35 = &v71[36];
                  while (*v35 != 3)
                  {
                    v35 += 38;
                    if (!--v34)
                    {
                      goto LABEL_52;
                    }
                  }

                  v76 = -417;
                  v49 = CFDictionaryGetValue(v21, @"Loaders");
                  if (!v49)
                  {
                    goto LABEL_11;
                  }

                  v50 = v49;
                  v76 = -415;
                  v51 = CFStringCreateWithCString(0, v35 - 34, 0);
                  v52 = CFDictionaryGetValue(v50, v51);
                  if (!v52)
                  {
                    goto LABEL_11;
                  }

                  v76 = ResolveLoaderPath(v17, v52, v51, v77);
                  CFRelease(v51);
                  if (v76)
                  {
                    goto LABEL_11;
                  }

                  v76 = MBRSetBootloaderFile(v65, v77);
                  if (v76)
                  {
                    goto LABEL_11;
                  }

                  LODWORD(a5) = a5 + 1;
                }
              }

LABEL_52:
              v36 = MKPurgeLoaders(v17, v68, &v70);
              v76 = v36;
              v37 = v70 && v36 == 0;
              if (v37)
              {
                LODWORD(a5) = a5 + 1;
              }

LABEL_11:
              CFRelease(v19);
              v24 = a5 != 0;
              goto LABEL_15;
            }

            if (v47 == 64230)
            {
              v32 = 0;
              v76 = 0;
              goto LABEL_44;
            }
          }

          goto LABEL_103;
        }

        v76 = PMSetTypeExtended(v45, 24320, v23[257], &unk_2586A0C2E);
        if (v76)
        {
          goto LABEL_11;
        }

        v76 = PMRationalise(v68);
        if (v76)
        {
          goto LABEL_11;
        }

        LODWORD(a5) = a5 + 1;
        v76 = PMGuidSearch(v68, a3, &v72);
      }

      else
      {
        v53 = 0;
        v54 = v23;
        v55 = &v23[536 * v73 + 264];
        v62 = a5;
        while (1)
        {
          v76 = PMSetTypeExtended(v55, 24320, v54[257], &unk_2586A0C2E);
          if (v76)
          {
            break;
          }

          v76 = PMRationalise(v68);
          if (v76)
          {
            v62 = a5 + v53;
            break;
          }

          ++v53;
          ++v62;
          --v72;
          v55 += 1072;
          v54 = v23;
          if (v73 >= v72)
          {
            v53 = 1;
            break;
          }
        }

        v47 = PMGuidSearch(v68, a3, &v72);
        v76 = v47;
        if (!v53)
        {
          v65 = *v68;
LABEL_104:
          if (v47)
          {
            LODWORD(a5) = v62;
            goto LABEL_11;
          }

          v32 = 0;
          LODWORD(a5) = v62;
          goto LABEL_44;
        }

        LODWORD(a5) = v62;
      }
    }

    v56 = CFDictionaryGetValue(theDict, @"Minimum Host Size");
    if (v56)
    {
      CFNumberGetValue(v56, kCFNumberSInt32Type, &valuePtr);
      v57 = valuePtr;
    }

    else
    {
      v57 = 0;
    }

    v58 = PMCreateLoader(v68, 0, v72, v57, v60, (v66 >> 13) & 1, v78);
    v76 = v58;
    if (v58)
    {
      if (v58 != 28)
      {
        goto LABEL_11;
      }

      v32 = 0;
      v76 = 0;
      v65 = *v68;
      goto LABEL_44;
    }

    v76 = PMRationalise(v68);
    if (v76)
    {
      goto LABEL_11;
    }

    v47 = PMGuidSearch(v68, a3, &v72);
    v76 = v47;
    v48 = v72 - 1;
    v73 = v72 - 1;
    LODWORD(a5) = a5 + 1;
    v65 = *v68;
    goto LABEL_98;
  }

  v24 = 0;
  if (a1)
  {
    goto LABEL_17;
  }

LABEL_16:
  CFRelease(v17);
LABEL_17:
  result = v76;
  *a10 = v24;
  if (result == -1)
  {
    result = *__error();
  }

LABEL_20:
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PMSetBootPartition(uint64_t a1, int a2)
{
  v2 = *(a1 + 522);
  if (*(a1 + 522))
  {
    result = 0;
    for (i = (a1 + 616); ; i += 268)
    {
      v6 = *i;
      if (a2)
      {
        if ((v6 & 0x80000000) != 0)
        {
          v7 = v6 & 0x7FFFFFFF;
LABEL_8:
          *i = v7;
          result = (result + 1);
        }
      }

      else if ((v6 & 0x80000000) == 0)
      {
        v7 = v6 | 0xC0000000;
        goto LABEL_8;
      }

      --a2;
      if (!--v2)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t VWritePartitions(Ptr *a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, Ptr))
{
  if (!a1)
  {
    return -109;
  }

  v5 = *a1;
  if (!*(*a1 + 1) || !*(v5 + 259))
  {
    return -50;
  }

  if (a2 >= 0x21)
  {
    a2 = *(v5 + 257);
  }

  if (a2 - 1 < 3)
  {
    return APMWriteMedia(a1, a3, a4, a5);
  }

  if (a2 != 8)
  {
    if (a2 == 32)
    {
      return ISOWriteMedia(a1, a3, a4, a5);
    }

    return -5317;
  }

  return MBRWriteMedia(a1, a3, a4, a5);
}

CFStringRef _MKMediaCFRuntimeCopyDebugDesc(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    return CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s <%p>", "MKMedia", a1);
  }

  result = v2(*(a1 + 88), 0, 1);
  if (!result)
  {
    return CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s <%p>", "MKMedia", a1);
  }

  return result;
}

uint64_t DDMDrvrRecord_BtoN(uint64_t result, uint64_t a2)
{
  *result = bswap32(*a2);
  *(result + 4) = bswap32(*(a2 + 4)) >> 16;
  *(result + 6) = bswap32(*(a2 + 6)) >> 16;
  return result;
}

int8x16_t PMPtchDescriptor_BtoN(uint64_t a1, uint64_t a2)
{
  *a1 = bswap32(*a2);
  *(a1 + 4) = bswap32(*(a2 + 4)) >> 16;
  *(a1 + 6) = bswap32(*(a2 + 6)) >> 16;
  result = vrev32q_s8(*(a2 + 8));
  *(a1 + 8) = result;
  *(a1 + 24) = bswap32(*(a2 + 24));
  if (a1 != a2)
  {
    v3 = *(a2 + 28);
    v4 = *(a2 + 44);
    *(a1 + 60) = *(a2 + 60);
    *(a1 + 44) = v4;
    *(a1 + 28) = v3;
    result = *(a2 + 61);
    v5 = *(a2 + 77);
    *(a1 + 93) = *(a2 + 93);
    *(a1 + 77) = v5;
    *(a1 + 61) = result;
  }

  return result;
}

_WORD *PMPtchList_BtoN(_WORD *result, unsigned __int16 *a2)
{
  *result = bswap32(*a2) >> 16;
  result[1] = bswap32(a2[1]) >> 16;
  return result;
}

int8x8_t PMPtchHeader_BtoN(char *__dst, char *__src)
{
  if (__dst != __src)
  {
    memcpy(__dst, __src, 0x200EuLL);
  }

  *__dst = bswap32(*__src) >> 16;
  result = vrev32_s8(*(__src + 2));
  *(__dst + 2) = result;
  *(__dst + 5) = bswap32(*(__src + 5)) >> 16;
  *(__dst + 6) = bswap32(*(__src + 6)) >> 16;
  return result;
}

int8x16_t PMPtchDescriptor_NtoB(uint64_t a1, uint64_t a2)
{
  *a1 = bswap32(*a2);
  *(a1 + 4) = bswap32(*(a2 + 4)) >> 16;
  *(a1 + 6) = bswap32(*(a2 + 6)) >> 16;
  result = vrev32q_s8(*(a2 + 8));
  *(a1 + 8) = result;
  *(a1 + 24) = bswap32(*(a2 + 24));
  if (a1 != a2)
  {
    v3 = *(a2 + 28);
    v4 = *(a2 + 44);
    *(a1 + 60) = *(a2 + 60);
    *(a1 + 44) = v4;
    *(a1 + 28) = v3;
    result = *(a2 + 61);
    v5 = *(a2 + 77);
    *(a1 + 93) = *(a2 + 93);
    *(a1 + 77) = v5;
    *(a1 + 61) = result;
  }

  return result;
}

_WORD *PMPtchList_NtoB(_WORD *result, unsigned __int16 *a2)
{
  *result = bswap32(*a2) >> 16;
  result[1] = bswap32(a2[1]) >> 16;
  return result;
}

char *APMDDMGenerate(char *result, int a2, char a3, int a4)
{
  v4 = result + 18;
  *(result + 8) = 0;
  v5 = *(result + 261);
  if (*(result + 261))
  {
    v8 = 0;
    v9 = 0;
    v24 = result;
    v10 = result + 528;
    v23 = (a3 & 0x7F) << 9;
    v11 = result + 18;
    while (1)
    {
      v12 = &v10[1072 * v9];
      result = strstr(v12 + 48, "Driver");
      if (result)
      {
        if (!a2 || (a4 == 1 ? (v13 = (v12[91] & 3) == 2) : (v13 = 0), !v13 ? (v14 = 0) : (v14 = 1), (v12[91] & 3) == 0 ? (v15 = a4 == 4) : (v15 = 0), !v15 && (v14 & 1) == 0))
        {
          v16 = *(v12 + 277);
          if ((v16 - 12288) > 4)
          {
            LOWORD(v17) = 0;
LABEL_31:
            *(v12 + 22) &= 0x703u;
LABEL_32:
            if (v17)
            {
              *v11 = *(v12 + 2);
              v21 = *(v12 + 24);
              if (v21 % v23)
              {
                v22 = v21 / v23 + 1;
              }

              else
              {
                v22 = v21 / v23;
              }

              *(v11 + 2) = v22;
              *(v11 + 3) = v17;
              v11 += 8;
              *(v24 + 8) = ++v8;
            }

            goto LABEL_37;
          }

          v17 = word_2586A03BC[(v16 - 12288)];
          if (!v8)
          {
            goto LABEL_31;
          }

          v18 = 0;
          v19 = 0;
          do
          {
            v20 = v18 == 0;
            if (*&v4[8 * v19 + 6] == v17)
            {
              ++v18;
            }

            if (*&v4[8 * v19 + 6] == v17 && v20)
            {
              v17 = -v17;
            }

            ++v19;
          }

          while (v8 > v19);
          *(v12 + 22) &= 0x703u;
          if (!a2 || !v18)
          {
            goto LABEL_32;
          }

          if (a4 == 1)
          {
            if (v16 != 12290 && v16 != 12292)
            {
              goto LABEL_32;
            }
          }

          else if ((v16 - 12288) > 3 || v16 == 12290)
          {
            goto LABEL_32;
          }
        }
      }

LABEL_37:
      if (v5 <= ++v9)
      {
        goto LABEL_43;
      }
    }
  }

  v11 = result + 18;
LABEL_43:
  *v11 = 0;
  return result;
}

uint64_t apmirec2xrec(uint64_t a1, uint64_t a2)
{
  *(a2 + 496) = 0;
  *(a2 + 464) = 0u;
  *(a2 + 480) = 0u;
  *(a2 + 432) = 0u;
  *(a2 + 448) = 0u;
  *(a2 + 400) = 0u;
  *(a2 + 416) = 0u;
  *(a2 + 368) = 0u;
  *(a2 + 384) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 352) = 0u;
  *(a2 + 304) = 0u;
  *(a2 + 320) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 20557;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 88) = *(a1 + 88) & 0xF000FFFF;
  *(a2 + 92) = *(a1 + 92);
  *(a2 + 116) = *(a1 + 116);
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  result = __strlcpy_chk();
  *(a2 + 136) = *(a1 + 136);
  *(a2 + 148) = *(a1 + 464);
  *(a2 + 500) = *(a1 + 512);
  *(a2 + 498) = *(a1 + 508);
  return result;
}

uint64_t PMPTCHQuantify(uint64_t a1, int a2, unsigned int a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, Ptr))
{
  if (a1)
  {
    v7 = *(a1 + 498);
    if (v7 == a3)
    {
      return 0;
    }

    else
    {
      v12 = *(a1 + 8);
      v13 = NewPtrClear((v7 & 0x7F) << 9);
      v14 = MemError();
      if (v13)
      {
        v15 = (v12 * a2);
        v16 = a5(a4, 2, 512, v15, v7, v13);
        if (v16)
        {
          v8 = v16;
        }

        else
        {
          v17 = bswap32(*v13) >> 16;
          *v13 = v17;
          v18 = *(v13 + 1);
          v19 = __rev16(v18);
          *(v13 + 1) = v19;
          if (v19 <= 0x20 && (v20 = *(a1 + 12), v20 >= v17))
          {
            if (v18)
            {
              v29 = v15;
              v22 = 0;
              v23 = 0;
              v24 = v20 * a2;
              while (1)
              {
                v25 = &v13[v22 + 4];
                PMPtchDescriptor_BtoN(v25, v25);
                v26 = *(v25 + 3) * v7;
                v27 = v26 + (*(v25 + 4) >> 9);
                if ((*(v25 + 4) & 0x1FF) != 0)
                {
                  ++v27;
                }

                if (v27 > v24)
                {
                  break;
                }

                if (v24 >= v26)
                {
                  v24 = *(v25 + 3) * v7;
                }

                *(v25 + 3) = v26 / a3;
                v22 += *(v25 + 6);
                PMPtchDescriptor_NtoB(v25, v25);
                ++v23;
                v18 = *(v13 + 1);
                if (v18 <= v23)
                {
                  v17 = *v13;
                  v15 = v29;
                  goto LABEL_23;
                }
              }

              v8 = -5344;
            }

            else
            {
LABEL_23:
              *v13 = __rev16(v17);
              *(v13 + 1) = __rev16(v18);
              v28 = a5(a4, 3, 512, v15, v7, v13);
              v8 = v28;
              if (!v28)
              {
                *(a1 + 498) = a3;
              }
            }
          }

          else
          {
            v8 = -5325;
          }
        }

        DisposePtr(v13);
      }

      else
      {
        return v14;
      }
    }
  }

  else
  {
    return -50;
  }

  return v8;
}

uint64_t DDMRecord_NtoB(uint64_t result, unsigned __int16 *a2)
{
  *result = bswap32(*a2) >> 16;
  *(result + 2) = bswap32(a2[1]) >> 16;
  *(result + 4) = bswap32(*(a2 + 1));
  *(result + 8) = bswap32(a2[4]) >> 16;
  *(result + 10) = bswap32(a2[5]) >> 16;
  *(result + 12) = bswap32(*(a2 + 3));
  *(result + 16) = bswap32(a2[8]) >> 16;
  v2 = a2[8];
  if (a2[8])
  {
    v3 = 0;
    v4 = a2 + 9;
    v5 = result + 18;
    do
    {
      *v5 = bswap32(*v4);
      *(v5 + 4) = bswap32(v4[2]) >> 16;
      *(v5 + 6) = bswap32(v4[3]) >> 16;
      ++v3;
      v4 += 4;
      v5 += 8;
    }

    while (v3 < v2);
  }

  return result;
}

uint64_t APMReadRawMediaMap(const void **a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, unsigned __int16 *))
{
  v31 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  memset(v24, 0, sizeof(v24));
  memset(v23, 0, sizeof(v23));
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v19[0] = 0;
  v19[1] = 0;
  v20 = 0;
  v7 = PMConvertBlocks(63, *(*a1 + 1), 0x200u);
  v8 = APMMapAnalysis(v19, v7, 2u, 0, a3, a4);
  v9 = v8;
  if (!v8)
  {
    v10 = (v19[0] & 1) == 0;
    if (v7 < 2)
    {
      v9 = 0;
    }

    else
    {
      v11 = 1;
      while (1)
      {
        v12 = malloc_type_malloc(0x200uLL, 0xAB14B78FuLL);
        if (!v12)
        {
          break;
        }

        v13 = v12;
        v14 = a4(a3, 2, 512, v11, 1, v12);
        if (v14)
        {
          goto LABEL_23;
        }

        if (PMRecord_BtoN(v21, v13))
        {
          apmxrec2irec(v21, v23);
          v15 = PMLookupDESC(v24, 0, &APMDescriptors);
          if (v15)
          {
            v16 = *v15;
            switch(v16)
            {
              case 24320:
                if (!v23[3])
                {
                  v10 = 2;
                }

                LOWORD(v16) = 24320;
                break;
              case 20482:
                v10 = 3;
                break;
              case 12544:
                WORD6(v29) = 1;
                LOWORD(v16) = 12544;
                break;
            }
          }

          else
          {
            LOWORD(v16) = 0;
          }

          v30 = v16;
          WORD5(v29) = v11 - 1;
          WORD4(v29) = -1;
          *(&v25 + 1) = v13;
          LOWORD(v14) = addentry(a1, v23, 0x210uLL, 0x20Au, 0xFFFFu, 0x430u);
          if (v14)
          {
LABEL_23:
            v9 = v14;
LABEL_24:
            free(v13);
            goto LABEL_26;
          }

          v13 = 0;
        }

        v11 = (v11 + 1);
        if (v11 >= v7)
        {
          v9 = 0;
          if (!v13)
          {
            goto LABEL_26;
          }

          goto LABEL_24;
        }
      }

      v9 = -1;
    }

LABEL_26:
    *(*a1 + 257) = v10;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t PMSetDriver(uint64_t *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a1)
  {
    v5 = *a1;
    if (*(*a1 + 522) <= a2)
    {
      LOWORD(v15) = -5343;
    }

    else
    {
      v9 = *(v5 + 2);
      v10 = v5 + 1072 * a2;
      if (*(v10 + 576) && !strstr((v10 + 576), "Driver"))
      {
        LOWORD(v15) = -5342;
      }

      else
      {
        v11 = (v10 + 528);
        v12 = *(a3 + 96);
        if ((*a3 & 0x200) != 0 && *(v12 + 12) == 9251 && !*(v12 + 22))
        {
          *(v12 + 22) = bswap32(*(a3 + 8));
        }

        v13 = DrvrChecksum(v12, *(a3 + 8));
        v14 = *(a3 + 8);
        if (v11[29] == v13 && v14 == v11[24])
        {
          LOWORD(v15) = -1306;
        }

        else if (v14 <= v11[3] * v9)
        {
          v16 = v11[2];
          v15 = a5(a4, 4, v9, v16);
          if (!v15)
          {
            v17 = *(a3 + 8);
            v18 = v17 / v9;
            if (v17 % v9)
            {
              v19 = v18 + 1;
            }

            else
            {
              v19 = v18;
            }

            v15 = (a5)(a4, 3, v9, v16, v19, *(a3 + 96));
            if (!v15)
            {
              v11[24] = *(a3 + 8);
              v11[29] = v13;
              v11[22] = *a3 & 0x700 | 3;
              __strlcpy_chk();
              LOWORD(v15) = 0;
              v11[34] = *(a3 + 4);
            }
          }
        }

        else
        {
          LOWORD(v15) = -1310;
        }
      }
    }
  }

  else
  {
    LOWORD(v15) = -109;
  }

  return v15;
}

uint64_t PMWriteDriver(Ptr *a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!a1)
  {
    LOWORD(v19) = -109;
    return v19;
  }

  v10 = *(a2 + 4);
  v23 = 0x8000;
  v11 = HGetState(a1);
  HLock(a1);
  v12 = *(*a1 + 261);
  if (*(*a1 + 261))
  {
    v13 = 0;
    v14 = (*a1 + 576);
    while (!strstr(v14, "Driver") || v10 && *(v14 + 88) != v10 || strncasecmp(v14, (a2 + 12), 0x20uLL))
    {
      ++v13;
      v14 += 1072;
      if (v12 == v13)
      {
        goto LABEL_9;
      }
    }

    v23 = v13;
    HSetState(a1, v11);
    LOWORD(v19) = -1306;
    goto LABEL_18;
  }

LABEL_9:
  HSetState(a1, v11);
  v15 = *a1;
  v16 = *(a2 + 8);
  if (v16 <= a3)
  {
    v16 = a3;
  }

  v17 = *(v15 + 259);
  if (v16 % v17)
  {
    v18 = v16 / v17 + 1;
  }

  else
  {
    v18 = v16 / v17;
  }

  v19 = PMNewPartitionExtended(a1, 0, (a2 + 12), 0, v18 * v17 / *(v15 + 1), (a2 + 44), a4, &v23, 0);
  if (!v19)
  {
LABEL_18:
    if (*(a2 + 96))
    {
      LOWORD(v19) = PMSetDriver(a1, v23, a2, a5, a6);
    }
  }

  return v19;
}

uint64_t PMAddpatch(uint64_t a1, int a2, _DWORD *a3, unsigned __int8 *a4, unsigned int a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, Ptr))
{
  v7 = -50;
  if (a1 && a3 && a2 >= 1 && a3[4])
  {
    v12 = *a1 + 1072 * a2;
    if (*(v12 + 1036) <= 1u)
    {
      v13 = 1;
    }

    else
    {
      v13 = *(v12 + 1036);
    }

    v14 = *(*a1 + 2);
    v15 = *(v12 + 536);
    v16 = NewPtrClear((v13 & 0x7F) << 9);
    v17 = MemError();
    if (!v16)
    {
      return v17;
    }

    v18 = v14 >> 9;
    v19 = v15 * v18;
    v20 = a7(a6, 2, 512, v19, v13, v16);
    if (!v20)
    {
      v22 = bswap32(*v16);
      *v16 = HIWORD(v22);
      v23 = *(v16 + 1);
      v24 = __rev16(v23);
      *(v16 + 1) = v24;
      v25 = *(v12 + 540);
      v7 = -5325;
      if (v25 < HIWORD(v22) || v24 > 0x20)
      {
        goto LABEL_11;
      }

      v52 = v19;
      v53 = a6;
      v54 = a7;
      v55 = v13 << 9;
      v51 = v13;
      v26 = v25 * v18 / v13;
      if (v23)
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
        do
        {
          v30 = &v16[v28 + 4];
          PMPtchDescriptor_BtoN(v30, v30);
          v31 = *(v30 + 3);
          if (v31)
          {
            if (v26 >= v31)
            {
              v26 = *(v30 + 3);
            }

            v27 += *(v30 + 4);
            if (*v30 == *a3)
            {
              break;
            }
          }

          v28 += *(v30 + 6);
          ++v29;
        }

        while (v29 < *(v16 + 1));
      }

      else
      {
        v28 = 0;
        v27 = 0;
      }

      v32 = DrvrChecksum(a4, *(a3 + 8));
      v33 = ((2 * (*(a3 + 61) & 1) + *(a3 + 61)) & 0x1FEu) + 62;
      a3[5] = v32;
      a3[6] = v33;
      v34 = &v16[v28 + 4];
      memcpy(v34, a3, v33);
      v35 = *(v34 + 4);
      if (v35 % v55)
      {
        v36 = v35 / v55 + 1;
      }

      else
      {
        v36 = v35 / v55;
      }

      if (a5 <= 1)
      {
        v37 = 1;
      }

      else
      {
        v37 = a5;
      }

      v38 = v36 / v37;
      if (v36 % v37)
      {
        ++v38;
      }

      v39 = v26 - v38 * v37;
      *(v34 + 3) = v39;
      v50 = v36;
      v40 = NewPtrClear(v36 * v55);
      LOWORD(v20) = MemError();
      if (v40)
      {
        if (v26 >= v39)
        {
          v26 = v39;
        }

        memcpy(v40, a4, *(v34 + 4));
        v41 = a3[6] + v28;
        if (v41 % v55)
        {
          v42 = v41 / v55 + 1;
        }

        else
        {
          v42 = v41 / v55;
        }

        v7 = -5344;
        if (v42 <= 1 && v26 > v42)
        {
          v54(v53, 3, v55, *(v34 + 3) + v52 / v51, v50, v40);
          v43 = (*(v16 + 1))++ + 1;
          v44 = *(v34 + 4) + v27;
          if (v44 % v55)
          {
            v45 = v44 / v55 + 1;
          }

          else
          {
            v45 = v44 / v55;
          }

          *v16 = v45;
          if ((v43 & 0x10000) != 0)
          {
            v46 = 0;
          }

          else
          {
            v47 = 0;
            v48 = 0;
            do
            {
              v49 = &v16[v47 + 4];
              v47 += *(v49 + 24);
              PMPtchDescriptor_NtoB(v49, v49);
              ++v48;
              v46 = *(v16 + 1);
            }

            while (v46 > v48);
            v45 = *v16;
          }

          *v16 = bswap32(v45) >> 16;
          *(v16 + 1) = __rev16(v46);
          v7 = v54(v53, 3, 512, v52, v51, v16);
        }

        DisposePtr(v40);
        goto LABEL_11;
      }
    }

    v7 = v20;
LABEL_11:
    DisposePtr(v16);
  }

  return v7;
}

CFArrayRef APMCFCreateMapRuns(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  *keys = xmmword_2798A1450;
  valuePtr = 0;
  v4 = *MEMORY[0x277CBECE8];
  values = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
  valuePtr = 1;
  cf = CFNumberCreate(v4, kCFNumberIntType, &valuePtr);
  v9 = CFDictionaryCreate(v4, keys, &values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFRelease(values);
  CFRelease(cf);
  v5 = CFArrayCreate(v4, &v9, 1, MEMORY[0x277CBF128]);
  CFRelease(v9);
  *a3 = 0;
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t ApplyToHFSPlusBTreeRecords(const void *a1, uint64_t (*a2)(__int8 *, uint64_t, uint64_t, char *, __n128), uint64_t a3, int a4)
{
  v58 = *MEMORY[0x277D85DE8];
  v49 = 0;
  Sectors = MKReadHFSMDBVHB(a1, &v49, v56, 0, 0);
  if (Sectors)
  {
    goto LABEL_67;
  }

  if (v49 < 2)
  {
    Sectors = -123;
    goto LABEL_67;
  }

  if (v49 == 3)
  {
    v8 = MKMediaCreateWithEmbeddedHFSPlus(a1, &Sectors);
  }

  else
  {
    v8 = CFRetain(a1);
  }

  v9 = v8;
  if (!Sectors)
  {
    v10 = v57;
    v11 = a4 == 1 ? 192 : 272;
    v12 = a4 == 1 ? 3 : 4;
    Sectors = MKHFSPlusMapFileBlock(&v56[v11], 0, 0, 0, &v49 + 4, 0);
    if (!Sectors)
    {
      v13 = v10 >> 9;
      Sectors = MKMediaReadSectors(v9, HIDWORD(v49) * (v10 >> 9), 1uLL, &v52, 0);
      if (!Sectors)
      {
        TAO_BTNodeDescriptor_BigToHost(&v52);
        TAO_BTHeaderRec_BigToHost(v53);
        v14 = size;
        if (size)
        {
          v15 = malloc_type_calloc(1uLL, size, 0x8B838E25uLL);
          if (v15)
          {
            v16 = v15;
            v43 = v14;
            v44 = v13;
            v45 = v12;
            v48 = a3;
            v47 = v54;
            v40 = v15 + v14 - 2;
            v41 = v11;
            v39 = a4;
            v42 = v9;
            do
            {
              if (!v47)
              {
                break;
              }

              Sectors = ReadWriteBTreeNode(&v56[v11], v43, v44, 0, v47, v16, v9, v45);
              if (Sectors)
              {
                break;
              }

              v46 = v16->i32[0];
              v17 = 0;
              if (a4)
              {
                v18 = 0;
                v51 = 0;
                v19 = v40;
                while (v18 < v16[1].u16[1])
                {
                  v20 = bswap32(*v19);
                  v21 = HIWORD(v20);
                  TAO_HFSPlusExtentKey_BigToHost((v16 + v21));
                  v22 = v16 + (*(v16->i16 + v21) + HIWORD(v20) + 2);
                  v23 = TAO_HFSPlusExtentRecord_BigToHost(v22);
                  v24 = a2(v16 + v21, v22, v48, &v51, v23);
                  v25 = v24;
                  if (!v24 || v24 == -128)
                  {
                    ++v18;
                    if (v51)
                    {
                      v17 = 1;
                    }

                    TAO_HFSPlusExtentRecord_BigToHost(v22);
                    TAO_HFSPlusExtentKey_BigToHost((v16 + v21));
                    --v19;
                    if (!v25)
                    {
                      continue;
                    }
                  }

                  goto LABEL_53;
                }

                v25 = 0;
              }

              else
              {
                v26 = 0;
                v51 = 0;
                v27 = v40;
                while (v26 < v16[1].u16[1])
                {
                  v28 = bswap32(*v27);
                  v29 = HIWORD(v28);
                  TAO_HFSPlusCatalogKey_BigToHost((v16 + v29));
                  v31 = (v16 + (*(v16->i16 + v29) + HIWORD(v28) + 2));
                  v32 = bswap32(*v31) >> 16;
                  if (v32 - 3 < 2)
                  {
                    TAO_HFSPlusCatalogThread_BigToHost(v31);
                    v33 = v48;
                  }

                  else
                  {
                    v33 = v48;
                    if (v32 == 2)
                    {
                      v30.n128_f64[0] = TAO_HFSPlusCatalogFile_BigToHost(v31);
                    }

                    else if (v32 == 1)
                    {
                      v30.n128_u64[0] = TAO_HFSPlusCatalogFolder_BigToHost(v31);
                    }
                  }

                  v34 = a2(v16 + v29, v31, v33, &v51, v30);
                  v25 = v34;
                  if (!v34 || v34 == -128)
                  {
                    if (v51)
                    {
                      v17 = 1;
                    }

                    if (v32 - 3 < 2)
                    {
                      TAO_HFSPlusCatalogThread_HostToBig(v31);
                    }

                    else if (v32 == 2)
                    {
                      TAO_HFSPlusCatalogFile_BigToHost(v31);
                    }

                    else if (v32 == 1)
                    {
                      TAO_HFSPlusCatalogFolder_BigToHost(v31);
                    }

                    TAO_HFSPlusCatalogKey_HostToBig((v16 + v29));
                    --v27;
                    ++v26;
                    if (!v25)
                    {
                      continue;
                    }
                  }

                  goto LABEL_52;
                }

                v25 = 0;
LABEL_52:
                a4 = v39;
              }

LABEL_53:
              v11 = v41;
              v9 = v42;
              Sectors = v25;
              if (v25)
              {
                if (v25 != -128)
                {
                  break;
                }
              }

              if (v17)
              {
                v35 = ReadWriteBTreeNode(&v56[v41], v43, v44, 1, v47, v16, v42, v45);
                if (v35)
                {
                  Sectors = v35;
                  break;
                }

                v25 = Sectors;
              }

              v47 = v46;
            }

            while (!v25);
            free(v16);
            goto LABEL_65;
          }

          v36 = 12;
        }

        else
        {
          v36 = 22;
        }

        Sectors = v36;
      }
    }
  }

LABEL_65:
  if (v9)
  {
    CFRelease(v9);
  }

LABEL_67:
  result = Sectors;
  v38 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ReadWriteBTreeNode(uint64_t a1, unsigned int a2, unsigned int a3, int a4, int a5, int8x8_t *a6, uint64_t a7, uint64_t a8)
{
  if (a4)
  {
    TAO_BTNodeDescriptor_BigToHost(a6);
  }

  v31 = 0;
  v14 = a2 >> 9;
  if (a8 == 3)
  {
    v15 = 0;
  }

  else
  {
    v15 = a7;
  }

  if (v14 <= a3)
  {
    v27 = v14 * a5;
    result = MKHFSPlusMapFileBlock(a1, a8, 0, v27 / a3, &v31, v15);
    if (!result)
    {
      v28 = v27 % a3 + v31 * a3;
      if (a4)
      {
        return MKMediaWriteSectors(a7, v28, v14, a6, 0);
      }

      else
      {
        v16 = a6;
        result = MKMediaReadSectors(a7, v28, v14, a6, 0);
        if (!result)
        {
LABEL_20:
          TAO_BTNodeDescriptor_BigToHost(v16);
          return 0;
        }
      }
    }
  }

  else
  {
    v16 = a6;
    v17 = 0;
    v18 = 0;
    v19 = a5;
    v20 = v14 / a3;
    v21 = v20 * v19;
    v22 = a3;
    v23 = a3 << 9;
    while (1)
    {
      result = MKHFSPlusMapFileBlock(a1, a8, 0, (v21 + v18), &v31, v15);
      if (result)
      {
        break;
      }

      v25 = v31 * v22;
      v26 = v16 + v17;
      result = a4 ? MKMediaWriteSectors(a7, v25, v22, v26, 0) : MKMediaReadSectors(a7, v25, v22, v26, 0);
      if (result)
      {
        break;
      }

      ++v18;
      v17 += v23;
      if (v18 >= v20)
      {
        if (a4)
        {
          return 0;
        }

        goto LABEL_20;
      }
    }
  }

  return result;
}

uint64_t MKRecordEFATFSRuns(uint64_t a1, int a2, void (*a3)(uint64_t, uint64_t, void), uint64_t a4)
{
  v60 = *MEMORY[0x277D85DE8];
  memset(v54, 0, sizeof(v54));
  v58 = 0u;
  memset(v59, 0, sizeof(v59));
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  MKMediaGetGeometry(a1, v54);
  LOWORD(v55) = 5;
  v7 = v54[0];
  LODWORD(v56) = LODWORD(v54[0]) >> 9;
  *(&v56 + 1) = *(&v54[0] + 1);
  *size = 0u;
  v52 = 0u;
  memset(v53, 0, sizeof(v53));
  v8 = 12 * LODWORD(v54[0]);
  LOWORD(size[0]) = v54[0];
  v9 = malloc_type_malloc((12 * LODWORD(v54[0])), 0x18D5DE31uLL);
  if (v9)
  {
    v10 = v7;
    while (1)
    {
      v11 = v9;
      if (v10 - 4097 < 0xFFFFF1FF)
      {
        v15 = 4294967173;
        goto LABEL_30;
      }

      Blocks = MKMediaReadBlocks(a1, 0, 12, v10, v9, 0);
      if (Blocks)
      {
        break;
      }

      v13 = v11[108];
      v10 = (1 << v13);
      LOWORD(size[0]) = 1 << v13;
      if (v8 == 12 * v10)
      {
        v14 = v11;
LABEL_14:
        if (v13 <= 0xF)
        {
          v17 = 0;
          v18 = 0;
          v16 = 11 * (1 << v13);
          do
          {
            if (v18 != 112 && (v18 & 0x7FFFFFFFFFFFFFFELL) != 0x6A)
            {
              HIDWORD(v19) = v17;
              LODWORD(v19) = v17;
              v17 = (v19 >> 1) + v14[v18];
            }

            ++v18;
          }

          while (v16 != v18);
        }

        else
        {
          v16 = 0;
          v17 = 0;
        }

        v20 = &v14[v16];
        while (v20 < &v14[12 * (1 << v13)])
        {
          v21 = *v20;
          v20 += 4;
          if (v21 != v17)
          {
            goto LABEL_26;
          }
        }

        v22 = v11[109];
        if (v22 + v11[108] > 0x19)
        {
LABEL_26:
          v15 = 22;
          goto LABEL_29;
        }

        WORD1(size[0]) = (1 << v13) >> 9;
        v39 = v10 << v22;
        WORD2(size[0]) = v39 / v10;
        v40 = v11[110];
        HIWORD(size[0]) = v11[110];
        WORD4(v53[1]) = *(v11 + 53);
        v41 = BYTE8(v53[1]) & 1;
        WORD1(size[1]) = v41 + 1;
        *(v53 + 8) = *(v11 + 4);
        v42 = *(v11 + 21);
        DWORD1(v53[0]) = *(v11 + 20);
        LOWORD(size[1]) = v42;
        v44 = *(v11 + 22);
        v43 = *(v11 + 23);
        HIDWORD(size[1]) = v39;
        *&v52 = __PAIR64__(v44, v43);
        v45 = *(v11 + 24);
        DWORD2(v52) = v45;
        if (v45 >= v43)
        {
          v46 = 22;
        }

        else
        {
          v46 = 0;
        }

        if (v45 >= 2)
        {
          v47 = v46;
        }

        else
        {
          v47 = 22;
        }

        if (v41 >= v40)
        {
          v47 = 22;
        }

        if (v40 - 3 >= 0xFFFFFFFE)
        {
          v15 = v47;
        }

        else
        {
          v15 = 22;
        }

        goto LABEL_29;
      }

      if (!malloc_type_realloc(v11, 12 * (1 << v13), 0x2639EDDBuLL))
      {
        v11 = 0;
        goto LABEL_28;
      }

      v9 = malloc_type_malloc(12 * (1 << v13), 0x18D5DE31uLL);
      v8 = 12 * (1 << v13);
      if (!v9)
      {
        v14 = 0;
        goto LABEL_14;
      }
    }

    v15 = Blocks;
    if (Blocks == -1)
    {
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  v11 = 0;
LABEL_28:
  v15 = *__error();
  v14 = v11;
LABEL_29:
  v11 = v14;
  if (v14)
  {
LABEL_30:
    free(v11);
  }

  if (v15)
  {
    v23 = 0;
    v24 = 0;
  }

  else
  {
    HIDWORD(v55) = LOWORD(size[0]) >> 9;
    v25 = v52 * WORD2(size[0]);
    *&v57 = *&v53[1] * WORD1(size[0]);
    *(&v57 + 1) = (v25 + DWORD1(v52)) * WORD1(size[0]);
    *(&v58 + 1) = (v25 + DWORD1(v52)) * WORD1(size[0]);
    if ((BYTE8(v53[1]) & 2) != 0)
    {
      *&v59[0] |= 2uLL;
    }

    if ((BYTE8(v53[1]) & 4) != 0)
    {
      *&v59[0] |= 0x10uLL;
    }

    v26 = *(&v56 + 1) / ((v25 + DWORD1(v52)) * WORD1(size[0]));
    if (v26 > 10000.0 || v26 < 0.0001)
    {
      a3(a4, 4, 0);
      v15 = 22;
      goto LABEL_69;
    }

    v23 = malloc_type_malloc(HIDWORD(size[1]), 0xDCB2EA38uLL);
    if (!v23 || (v27 = malloc_type_malloc(HIDWORD(size[1]), 0x8373AE25uLL)) == 0)
    {
      a3(a4, 4, 0);
      v24 = 0;
      goto LABEL_71;
    }

    v24 = v27;
    v49 = a3;
    v28 = 0;
    v29 = DWORD2(v52);
    while (v29 < v52 + 2)
    {
      v30 = MKMediaReadBlocks(a1, ((v29 - 2) * WORD2(size[0]) + DWORD1(v52)) * WORD1(size[0]), WORD2(size[0]) * WORD1(size[0]), 0x200u, v23, 0);
      if (v30)
      {
        goto LABEL_84;
      }

      if (HIDWORD(size[1]))
      {
        v31 = v23;
        do
        {
          v32 = *v31;
          if (v32 == 129)
          {
            if (WORD1(size[1]) == (v31[1] & 1) + 1)
            {
              HIDWORD(v52) = *(v31 + 5);
              v34 = *(v31 + 3);
              if (v34 % HIDWORD(size[1]))
              {
                v35 = v34 / HIDWORD(size[1]) + 1;
              }

              else
              {
                v35 = v34 / HIDWORD(size[1]);
              }

              LODWORD(v53[0]) = v35;
            }
          }

          else if (v32 == 131)
          {
            v33 = v31[1];
            if ((v33 - 13) >= 0xFFFFFFF4)
            {
              uniconvert(v59 + 12, 256, 0x8000100u, 0, v31 + 2, 2 * v33, 0x14000100u, 1u);
            }
          }

          else if (!*v31)
          {
            goto LABEL_85;
          }

          v31 += 32;
        }

        while (v31 < &v23[HIDWORD(size[1])]);
      }

      v36 = 4 * v29 / HIDWORD(size[1]);
      if (v28 != v36 + DWORD1(v53[0]) * WORD1(size[1]))
      {
        v30 = MKMediaReadBlocks(a1, v36 + DWORD1(v53[0]) * WORD1(size[1]), (HIDWORD(size[1]) / LOWORD(size[0])), LOWORD(size[0]), v24, 0);
        v28 = v36 + DWORD1(v53[0]) * WORD1(size[1]);
        if (v30)
        {
LABEL_84:
          v15 = v30;
          if ((v30 & 0x80000000) != 0)
          {
            v49(a4, 4, 0);
            goto LABEL_34;
          }

          break;
        }
      }

      v29 = *&v24[4 * v29 % HIDWORD(size[1])];
      if (v29 + 1 < 2)
      {
        break;
      }
    }

LABEL_85:
    a3 = v49;
    v48 = (v49)(a4, 0, 0);
    if (v48)
    {
      v15 = v48;
    }

    else
    {
      v15 = exFATTidemark(&v55, size, a2, a1, v49, a4);
      v49(a4, 3, &v55);
    }
  }

  a3(a4, 4, 0);
LABEL_34:
  if (v15 != -1)
  {
    if (!v23)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_71:
  v15 = *__error();
  if (v23)
  {
LABEL_36:
    free(v23);
  }

LABEL_37:
  if (v24)
  {
    free(v24);
  }

LABEL_69:
  v37 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t exFATTidemark(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t *), uint64_t a6)
{
  v59 = 0;
  v58 = 0;
  v53 = 0;
  v54 = 0;
  LOWORD(v6) = 22;
  v55 = 0;
  if (a1 && a2)
  {
    v60 = 0;
    v12 = *(a2 + 12);
    v13 = malloc_type_malloc(v12, 0x72148617uLL);
    if (!v13)
    {
      goto LABEL_41;
    }

    LODWORD(v58) = 8 * v12;
    HIDWORD(v58) = v12 >> 3;
    v59 = 64;
    v54 = 0;
    LOWORD(v53) = 1;
    v14 = *(a2 + 16);
    if ((a3 & 3) != 0)
    {
      v51 = a5;
      v15 = *(a2 + 2);
      v16 = *(a2 + 4);
      v17 = bmaddr(v14 + 1, &v58);
      v18 = *(a2 + 20);
      v19 = *(a2 + 4);
      v20 = *(a2 + 2);
      v21 = v20 * v18;
      v55 = v21;
      v49 = v17;
      if (v17 < 0)
      {
LABEL_27:
        if (v21)
        {
          v33 = v54;
          v34 = v53;
          if (!v53 && (*(a1 + 32) - (v21 + v54)) >= 1)
          {
            v21 = *(a1 + 32) - v54;
            v55 = v21;
          }

          if (((v53 + 1) & a3) != 0)
          {
            v26 = v51(a6, 1, &v53);
            if (v26)
            {
              goto LABEL_40;
            }

            v33 = v54;
            v21 = v55;
            v34 = v53;
          }

          v35 = v33 + v21;
          v54 = v35;
          if (v34 == 1 && v35 > *(a1 + 56))
          {
            *(a1 + 56) = v35 - 1;
          }
        }

        if ((a3 & 1) == 0 || (v36 = *(a1 + 32), v36 <= v54) || (LOWORD(v53) = 0, v55 = v36 - v54, (v26 = v51(a6, 1, &v53)) == 0))
        {
          LOWORD(v6) = 0;
          *(a1 + 72) = *(a1 + 56) / (*(a1 + 40) - *(a1 + 48)) - 1;
          goto LABEL_46;
        }

        goto LABEL_40;
      }

      v50 = a4;
      v22 = v16 * v15;
      v23 = (((v14 - 1) * v19) + v18) * v20;
      v24 = (v12 >> 9);
      v25 = 0;
      v47 = v24;
      while (1)
      {
        v26 = MKMediaReadBlocks(v50, ((v25 + *(a2 + 28) - 2) * *(a2 + 4) + *(a2 + 20)) * *(a2 + 2), v24, 0x200u, v13, &v60);
        if (v26)
        {
          break;
        }

        v48 = v25;
        v27 = HIDWORD(v58);
        if (SHIDWORD(v58) >= 1)
        {
          v28 = 0;
          v29 = v59;
          while (v29 < 1)
          {
LABEL_24:
            if (++v28 >= v27)
            {
              goto LABEL_25;
            }
          }

          v30 = 0;
          v31 = v53;
          v21 = v55;
          while (1)
          {
            v32 = (*&v13[8 * v28] >> v30) & 1;
            if (v32 != v31)
            {
              if (v21)
              {
                if (((v31 + 1) & a3) != 0)
                {
                  v26 = v51(a6, 1, &v53);
                  if (v26)
                  {
                    goto LABEL_40;
                  }

                  v21 = v55;
                  v31 = v53;
                }

                v54 += v21;
                v55 = 0;
              }

              if (v31 == 1)
              {
                *(a1 + 56) = v54 - 1;
              }

              v21 = 0;
              LOWORD(v53) = v32;
              v31 = v32;
            }

            if (v21 + v54 > v23)
            {
              goto LABEL_27;
            }

            v21 += v22;
            v55 = v21;
            v29 = v59;
            if (++v30 >= v59)
            {
              v27 = HIDWORD(v58);
              goto LABEL_24;
            }
          }
        }

LABEL_25:
        v25 = v48 + 1;
        v24 = v47;
        if (v48 >= v49)
        {
          v21 = v55;
          goto LABEL_27;
        }
      }
    }

    else
    {
      if ((a3 & 0x40000) == 0)
      {
        LOWORD(v6) = 0;
        goto LABEL_46;
      }

      v38 = bmaddr(v14 + 1, &v58);
      v40 = v38;
      v56 = v38;
      v57 = v39;
      if ((v38 & 0x80000000) != 0)
      {
LABEL_65:
        LOWORD(v6) = 0;
        *(a1 + 56) = (*(a2 + 4) + *(a2 + 4) * alblock(&v56, &v58) + *(a2 + 20)) * *(a2 + 2) - 1;
        goto LABEL_46;
      }

      v41 = v39;
      v42 = HIDWORD(v38);
      while (1)
      {
        v26 = MKMediaReadBlocks(a4, ((v40 + *(a2 + 28) - 2) * *(a2 + 4) + *(a2 + 20)) * *(a2 + 2), (v12 >> 9), 0x200u, v13, &v60);
        if (v26)
        {
          break;
        }

        if ((v42 & 0x80000000) == 0)
        {
          v43 = v42;
          while (1)
          {
            v44 = *&v13[8 * v43];
            if (v44)
            {
              if ((v41 & 0x80000000) == 0)
              {
                break;
              }
            }

LABEL_58:
            v41 = v59 - 1;
            v46 = v43-- <= 0;
            if (v46)
            {
              v41 = v59 - 1;
              goto LABEL_61;
            }
          }

          while (((v44 >> v41) & 1) == 0)
          {
            v45 = __OFSUB__(v41--, 1);
            if (v41 < 0 != v45)
            {
              goto LABEL_58;
            }
          }

          HIDWORD(v56) = v43;
          v57 = v41;
          goto LABEL_65;
        }

LABEL_61:
        LODWORD(v42) = HIDWORD(v58) - 1;
        HIDWORD(v56) = HIDWORD(v58) - 1;
        v57 = v41;
        LODWORD(v56) = v40 - 1;
        v46 = v40-- <= 0;
        if (v46)
        {
          goto LABEL_65;
        }
      }
    }

LABEL_40:
    LOWORD(v6) = v26;
    if (v26 == -1)
    {
LABEL_41:
      v6 = *__error();
      if (!v13)
      {
        return v6;
      }
    }

LABEL_46:
    free(v13);
  }

  return v6;
}

uint64_t MKDetectEFATFS(uint64_t a1, unsigned __int8 *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  *a3 = 0;
  if (*(a2 + 255) == 43605)
  {
    *a3 = 500;
    if (*a2 == 235 && a2[1] == 118 && a2[2] == 144)
    {
      *a3 = 1000;
      if (*(a2 + 3) == 0x2020205441465845)
      {
        *a3 = 5000;
        if (a5)
        {
          *a5 = 5;
        }
      }
    }
  }

  return 0;
}

CFMutableDictionaryRef MKCFCreateEFATFSInfo(uint64_t a1, const __CFDictionary *a2, _DWORD *a3)
{
  v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x1020040CA22B68AuLL);
  if (v6)
  {
    v7 = v6;
    *v6 = FSConvertOptions(a2);
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(v7 + 8) = Mutable;
    v9 = MKRecordEFATFSRuns(a1, *v7, MKCFRecordFSInfo, v7);
    if (v9)
    {
      v10 = Mutable == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      CFRelease(Mutable);
      Mutable = 0;
    }

    free(v7);
    if (a3)
    {
      if (v9 != -1)
      {
LABEL_12:
        *a3 = v9;
        return Mutable;
      }

LABEL_11:
      v9 = *__error();
      goto LABEL_12;
    }
  }

  else
  {
    Mutable = 0;
    if (a3)
    {
      goto LABEL_11;
    }
  }

  return Mutable;
}

uint64_t MKFSDescriptorIdentity(char *a1, _WORD *a2)
{
  v3 = fsIdentifiers[0];
  if (!fsIdentifiers[0])
  {
LABEL_10:
    result = 0;
    goto LABEL_11;
  }

  v5 = 1;
  while (1)
  {
    v6 = strlen(v3);
    if (!strncasecmp(a1, v3, v6))
    {
      break;
    }

    v3 = fsIdentifiers[v5++];
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  switch(v5)
  {
    case 3:
      result = MKFATFSDescriptorIdentity(a1);
      break;
    case 2:
      result = disposegpmr();
      break;
    case 1:
      result = MKHFSDescriptorIdentity(a1);
      break;
    default:
      goto LABEL_10;
  }

LABEL_11:
  if (a2)
  {
    *a2 = result;
  }

  return result;
}

const char *MKFSIdentity(int a1, unsigned int a2)
{
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      return MKNTFSIdentity();
    }

    if (a1 != 5)
    {
      if (a1 == 7)
      {
        return MKISOFSIdentity();
      }

      return "Unknown Filesystem";
    }

    return MKEFATFSIdentity();
  }

  else
  {
    if (a1 == 1)
    {
      return MKHFSIdentity(a2);
    }

    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return MKFATFSIdentity(a2);
      }

      return "Unknown Filesystem";
    }

    return MKAPFSIdentity();
  }
}

const __CFDictionary *FSConvertOptions(const __CFDictionary *result)
{
  if (result)
  {
    v1 = result;
    v2 = MKCFOptionBit(result, @"Record Runs", 3);
    v3 = MKCFOptionBit(v1, @"Record On Bits", 2) | v2;
    v4 = MKCFOptionBit(v1, @"Record Off Bits", 1);
    v5 = v3 | v4 | MKCFOptionBit(v1, @"Ignore Embedded", 0x10000);
    v6 = MKCFOptionBit(v1, @"Record Container", 0x20000);
    v7 = v6 | MKCFOptionBit(v1, @"Record Tidemark", 0x40000);
    return (v5 | v7 | MKCFOptionBit(v1, @"Record Markers", 4));
  }

  return result;
}

uint64_t MKRecordFSCopyInstructions(CFArrayRef *__dst, int a2, _WORD *__src)
{
  switch(a2)
  {
    case 3:
      memcpy(__dst, __src, 0x150uLL);
      return 0;
    case 1:
      if (*__src)
      {
        if (*__src != 1)
        {
          return 0;
        }

        if (*(__dst + 93))
        {
          v5 = 7;
        }

        else
        {
          v5 = 1;
        }
      }

      else
      {
        v5 = 2;
      }

      valuePtr = 0;
      v23 = 0;
      Count = CFArrayGetCount(__dst[42]);
      if (!Count)
      {
        goto LABEL_17;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(__dst[42], Count - 1);
      Value = CFDictionaryGetValue(ValueAtIndex, @"Instruction Code");
      CFNumberGetValue(Value, kCFNumberSInt16Type, &valuePtr);
      v9 = CFDictionaryGetValue(ValueAtIndex, @"Source Offset");
      CFNumberGetValue(v9, kCFNumberSInt64Type, &v23);
      v10 = v23;
      v11 = CFDictionaryGetValue(ValueAtIndex, @"Block Count");
      CFNumberGetValue(v11, kCFNumberSInt64Type, &v23);
      if (*(__dst + 368) != 1)
      {
        goto LABEL_17;
      }

      if (v5 == valuePtr && *(__src + 1) == v23 + v10)
      {
        v23 += *(__src + 2);
        v12 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &v23);
        CFDictionaryReplaceValue(ValueAtIndex, @"Block Count", v12);
      }

      else
      {
LABEL_17:
        v13 = *MEMORY[0x277CBECE8];
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        valuePtr = v5;
        v15 = CFNumberCreate(v13, kCFNumberSInt16Type, &valuePtr);
        CFDictionaryAddValue(Mutable, @"Instruction Code", v15);
        CFRelease(v15);
        if (*(__dst + 93))
        {
          valuePtr = *(__dst + 93);
          v16 = CFNumberCreate(v13, kCFNumberSInt16Type, &valuePtr);
          CFDictionaryAddValue(Mutable, @"Checksum Type", v16);
          CFRelease(v16);
        }

        v23 = *(__src + 2);
        v17 = CFNumberCreate(v13, kCFNumberSInt64Type, &v23);
        CFDictionaryAddValue(Mutable, @"Block Count", v17);
        CFRelease(v17);
        v23 = *(__src + 1);
        v18 = CFNumberCreate(v13, kCFNumberSInt64Type, &v23);
        CFDictionaryAddValue(Mutable, @"Source Offset", v18);
        CFRelease(v18);
        v23 += __dst[45];
        v19 = CFNumberCreate(v13, kCFNumberSInt64Type, &v23);
        CFDictionaryAddValue(Mutable, @"Target Offset", v19);
        CFRelease(v19);
        v20 = __dst[43];
        if (v20)
        {
          CFDictionaryAddValue(Mutable, @"Source Device", v20);
        }

        v21 = __dst[44];
        if (v21)
        {
          CFDictionaryAddValue(Mutable, @"Target Device", v21);
        }

        CFArrayAppendValue(__dst[42], Mutable);
      }

      break;
    case 0:
      __dst[42] = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      break;
  }

  return 0;
}

uint64_t MKCFDecomposeFSInfoRecord(const __CFDictionary *a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    valuePtr = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 160) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 256) = 0u;
    *(a2 + 272) = 0u;
    *(a2 + 288) = 0u;
    *(a2 + 304) = 0u;
    *(a2 + 320) = 0u;
    Value = CFDictionaryGetValue(a1, @"Filesystem");
    CFStringGetCString(Value, buffer, 32, 0);
    *a2 = MKFSDescriptorIdentity(buffer, (a2 + 2));
    v5 = CFDictionaryGetValue(a1, @"Volume name");
    if (v5)
    {
      CFStringGetCString(v5, (a2 + 76), 256, 0x8000100u);
    }

    v6 = CFDictionaryGetValue(a1, @"Volume offset");
    if (v6)
    {
      CFNumberGetValue(v6, kCFNumberSInt32Type, (a2 + 4));
    }

    v7 = CFDictionaryGetValue(a1, @"phi");
    if (v7)
    {
      CFNumberGetValue(v7, kCFNumberSInt32Type, (a2 + 8));
    }

    v8 = CFDictionaryGetValue(a1, @"Physical block size");
    if (v8)
    {
      CFNumberGetValue(v8, kCFNumberSInt32Type, &valuePtr);
      *(a2 + 16) = valuePtr >> 9;
    }

    v9 = CFDictionaryGetValue(a1, @"Physical size");
    if (v9)
    {
      CFNumberGetValue(v9, kCFNumberSInt64Type, (a2 + 24));
    }

    v10 = CFDictionaryGetValue(a1, @"Media size");
    if (v10)
    {
      CFNumberGetValue(v10, kCFNumberSInt64Type, (a2 + 32));
    }

    v11 = CFDictionaryGetValue(a1, @"Volume size");
    if (v11)
    {
      CFNumberGetValue(v11, kCFNumberSInt64Type, (a2 + 40));
    }

    v12 = CFDictionaryGetValue(a1, @"Volume block size");
    if (v12)
    {
      CFNumberGetValue(v12, kCFNumberSInt32Type, &valuePtr);
      *(a2 + 12) = valuePtr >> 9;
    }

    v13 = CFDictionaryGetValue(a1, @"Tidemark");
    if (v13)
    {
      CFNumberGetValue(v13, kCFNumberSInt64Type, (a2 + 56));
    }

    v14 = CFDictionaryGetValue(a1, @"Fragmentation Index");
    if (v14)
    {
      CFNumberGetValue(v14, kCFNumberSInt32Type, (a2 + 72));
    }

    result = CFDictionaryGetValue(a1, @"Attributes");
    if (result)
    {
      v16 = result;
      *(a2 + 64) |= MKCFOptionBit(result, @"Read only", 1);
      *(a2 + 64) |= MKCFOptionBit(v16, @"Dirty", 2);
      *(a2 + 64) |= MKCFOptionBit(v16, @"Journaled", 4);
      v17 = MKCFOptionBit(v16, @"Case sensitive", 8);
      result = 0;
      *(a2 + 64) |= v17;
    }
  }

  else
  {
    result = 22;
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MKCFRecordFSInfo(uint64_t a1, int a2, unsigned __int16 *a3)
{
  result = 0;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v7 = Mutable;
        MKCFCreateFSInfoRecord(a3, Mutable);
        CFDictionarySetValue(*(a1 + 8), @"Container", v7);
LABEL_18:
        v17 = v7;
        goto LABEL_19;
      }

      return 0xFFFFFFFFLL;
    }

    if (a2 == 3)
    {
      MKCFCreateFSInfoRecord(a3, *(a1 + 8));
      return 0;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      if ((*a1 >> *a3))
      {
        v6 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v6)
        {
          v7 = v6;
          v8 = CFNumberCreate(0, kCFNumberSInt16Type, a3);
          if (v8)
          {
            v9 = v8;
            CFDictionarySetValue(v7, @"Type", v8);
            CFRelease(v9);
            valuePtr = *(a3 + 1) + *(a1 + 24);
            v10 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
            if (v10)
            {
              v11 = v10;
              CFDictionarySetValue(v7, @"Origin", v10);
              CFRelease(v11);
              v12 = *a3;
              if (v12 >= 2)
              {
                if (v12 == 2)
                {
                  v19 = *(a3 + 2);
                  if (v19 > 1448037418)
                  {
                    if (v19 == 1448037419)
                    {
                      v14 = @"Volume Start";
                    }

                    else
                    {
                      if (v19 != 1448037421)
                      {
                        goto LABEL_36;
                      }

                      v14 = @"Volume End";
                    }
                  }

                  else if (v19 == 1162691115)
                  {
                    v14 = @"Embedded Start";
                  }

                  else
                  {
                    if (v19 != 1162691117)
                    {
                      goto LABEL_36;
                    }

                    v14 = @"Embedded End";
                  }

                  v15 = @"Marker";
                  goto LABEL_35;
                }
              }

              else
              {
                v13 = CFNumberCreate(0, kCFNumberSInt64Type, a3 + 8);
                if (v13)
                {
                  v14 = v13;
                  v15 = @"Length";
LABEL_35:
                  CFDictionarySetValue(v7, v15, v14);
                  CFRelease(v14);
                }
              }

LABEL_36:
              CFArrayAppendValue(*(a1 + 16), v7);
              goto LABEL_18;
            }
          }
        }

        return 0xFFFFFFFFLL;
      }

      return 0;
    }
  }

  else
  {
    v16 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    *(a1 + 16) = v16;
    if (v16)
    {
      CFDictionarySetValue(*(a1 + 8), @"Data Runs", v16);
      v17 = *(a1 + 16);
LABEL_19:
      CFRelease(v17);
      return 0;
    }

    return *__error();
  }

  return result;
}

void MKCFCreateFSInfoRecord(const char *a1, __CFDictionary *a2)
{
  v4 = MKFSIdentity(*a1, *(a1 + 1));
  if (v4)
  {
    v5 = CFStringCreateWithCString(0, v4, 0);
    if (!v5)
    {
      return;
    }

    v6 = v5;
    CFDictionarySetValue(a2, @"Filesystem", v5);
    CFRelease(v6);
  }

  if (a1[76])
  {
    v7 = CFStringCreateWithCString(0, a1 + 76, 0x8000100u);
    if (!v7)
    {
      return;
    }

    v8 = v7;
    CFDictionarySetValue(a2, @"Volume name", v7);
    CFRelease(v8);
  }

  valuePtr = *(a1 + 4) << 9;
  v9 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  if (v9)
  {
    v10 = v9;
    CFDictionarySetValue(a2, @"Physical block size", v9);
    CFRelease(v10);
    v11 = CFNumberCreate(0, kCFNumberSInt64Type, a1 + 24);
    if (v11)
    {
      v12 = v11;
      CFDictionarySetValue(a2, @"Physical size", v11);
      CFRelease(v12);
      v13 = CFNumberCreate(0, kCFNumberSInt64Type, a1 + 32);
      if (v13)
      {
        v14 = v13;
        CFDictionarySetValue(a2, @"Media size", v13);
        CFRelease(v14);
        if (*(a1 + 1))
        {
          v15 = CFNumberCreate(0, kCFNumberSInt32Type, a1 + 4);
          if (!v15)
          {
            return;
          }

          v16 = v15;
          CFDictionarySetValue(a2, @"Volume offset", v15);
          CFRelease(v16);
        }

        if (*(a1 + 2))
        {
          v17 = CFNumberCreate(0, kCFNumberSInt32Type, a1 + 8);
          if (!v17)
          {
            return;
          }

          v18 = v17;
          CFDictionarySetValue(a2, @"phi", v17);
          CFRelease(v18);
        }

        v19 = CFNumberCreate(0, kCFNumberSInt64Type, a1 + 40);
        if (v19)
        {
          v20 = v19;
          CFDictionarySetValue(a2, @"Volume size", v19);
          CFRelease(v20);
          valuePtr = *(a1 + 3) << 9;
          v21 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
          if (v21)
          {
            v22 = v21;
            CFDictionarySetValue(a2, @"Volume block size", v21);
            CFRelease(v22);
            if (*(a1 + 7))
            {
              v23 = CFNumberCreate(0, kCFNumberSInt64Type, a1 + 56);
              if (!v23)
              {
                return;
              }

              v24 = v23;
              CFDictionarySetValue(a2, @"Tidemark", v23);
              CFRelease(v24);
            }

            if (*(a1 + 18) >= 1)
            {
              v25 = CFNumberCreate(0, kCFNumberSInt32Type, a1 + 72);
              if (!v25)
              {
                return;
              }

              v26 = v25;
              CFDictionarySetValue(a2, @"Fragmentation Index", v25);
              CFRelease(v26);
            }

            Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (Mutable)
            {
              v28 = Mutable;
              CFDictionarySetValue(a2, @"Attributes", Mutable);
              CFRelease(v28);
              v29 = *MEMORY[0x277CBED28];
              v30 = *MEMORY[0x277CBED10];
              if (*(a1 + 8))
              {
                v31 = *MEMORY[0x277CBED28];
              }

              else
              {
                v31 = *MEMORY[0x277CBED10];
              }

              CFDictionarySetValue(v28, @"Read only", v31);
              if ((*(a1 + 8) & 2) != 0)
              {
                v32 = v29;
              }

              else
              {
                v32 = v30;
              }

              CFDictionarySetValue(v28, @"Dirty", v32);
              if ((*(a1 + 8) & 4) != 0)
              {
                v33 = v29;
              }

              else
              {
                v33 = v30;
              }

              CFDictionarySetValue(v28, @"Journaled", v33);
              if ((*(a1 + 8) & 8) != 0)
              {
                v34 = v29;
              }

              else
              {
                v34 = v30;
              }

              CFDictionarySetValue(v28, @"Case sensitive", v34);
              if ((*(a1 + 8) & 0x10) != 0)
              {
                v35 = v29;
              }

              else
              {
                v35 = v30;
              }

              CFDictionarySetValue(v28, @"Corrupted", v35);
            }
          }
        }
      }
    }
  }
}

uint64_t MKRecordFSRuns(const void *a1, int a2, unsigned __int16 (*a3)(uint64_t, uint64_t, uint64_t *), uint64_t a4)
{
  v10 = 0;
  v9 = 0;
  result = MKFileSystemDetect(a1, &v10 + 1, &v10, &v9);
  if (!result)
  {
    result = 4294967292;
    if (v9 <= 2)
    {
      if (v9 == 1)
      {
        return MKRecordHFSRuns(a1, a2, a3, a4);
      }

      else if (v9 == 2)
      {
        return MKRecordAPFSRuns(a1, a2, a3, a4);
      }
    }

    else
    {
      switch(v9)
      {
        case 3:
          return MKRecordFATFSRuns(a1, a2, a3, a4);
        case 4:
          return MKRecordNTFSRuns();
        case 5:
          return MKRecordEFATFSRuns(a1, a2, a3, a4);
      }
    }
  }

  return result;
}

CFMutableDictionaryRef MKCFCreateFSInfo(const void *a1, const __CFDictionary *a2, _DWORD *a3)
{
  v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x1020040CA22B68AuLL);
  if (v6)
  {
    v7 = v6;
    if (a2)
    {
      Value = CFDictionaryGetValue(a2, @"Start Offset");
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberSInt64Type, (v7 + 24));
        if (CFDictionaryGetCount(a2) == 1)
        {
          a2 = 0;
        }
      }
    }

    *v7 = FSConvertOptions(a2);
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(v7 + 8) = Mutable;
    v10 = MKRecordFSRuns(a1, *v7, MKCFRecordFSInfo, v7);
    if (v10)
    {
      v11 = Mutable == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      CFRelease(Mutable);
      Mutable = 0;
    }

    free(v7);
    if (a3)
    {
      if (v10 != -1)
      {
LABEL_16:
        *a3 = v10;
        return Mutable;
      }

LABEL_15:
      v10 = *__error();
      goto LABEL_16;
    }
  }

  else
  {
    Mutable = 0;
    if (a3)
    {
      goto LABEL_15;
    }
  }

  return Mutable;
}

uint64_t pwriteoffline(int a1, char *a2, size_t a3, uint64_t a4)
{
  v54 = *MEMORY[0x277D85DE8];
  memset(&v53, 0, 512);
  memset(&v45, 0, sizeof(v45));
  v44 = 0;
  v8 = fstatfs(a1, &v53);
  if (v8)
  {
    goto LABEL_2;
  }

  if ((v53.f_flags & 1) == 0)
  {
    v9 = 13;
LABEL_7:
    v10 = a3;
    goto LABEL_8;
  }

  v8 = fstat(a1, &v45);
  if (v8)
  {
LABEL_2:
    v9 = v8;
    v10 = a3;
    goto LABEL_3;
  }

  if (!v45.st_size)
  {
    v9 = -39;
    goto LABEL_7;
  }

  if (a4 + a3 > v45.st_size)
  {
    v9 = 28;
    goto LABEL_7;
  }

  memset(v47, 0, sizeof(v47));
  if ((v45.st_size & 0x1FF) != 0)
  {
    v13 = v45.st_size / 512 + 1;
  }

  else
  {
    v13 = v45.st_size / 512;
  }

  v48 = 0uLL;
  v49 = 0uLL;
  v50 = 0;
  v46 = 512;
  if (!v13)
  {
    goto LABEL_43;
  }

  v14 = 0;
  v42 = 0;
  v15 = 0;
  v16 = 0;
  LODWORD(v17) = 0;
  *v51 = 0;
  memset(v52, 0, 12);
  while (1)
  {
    v18 = v17;
    if (lseek(a1, v14, 0) == -1 || fcntl(a1, 49, v51))
    {
      break;
    }

    v17 = (*(v52 + 4) + (*(v52 + 4) < 0 ? 0x1FFuLL : 0)) >> 9;
    if (v18 + 1 != (*(v52 + 4) / 512))
    {
      if (v16)
      {
        if (HIDWORD(v42) >= 9)
        {
          v9 = 34;
          goto LABEL_7;
        }

        v19 = &v47[HIDWORD(v42) + 1];
        *v19 = v16;
        v19[1] = v15;
        LODWORD(v42) = v42 + v15;
        ++HIDWORD(v42);
        v16 = v17;
        v15 = 0;
      }

      else
      {
        v15 = 0;
        v16 = *(v52 + 4) / 512;
      }
    }

    ++v15;
    v14 += 512;
    if (!--v13)
    {
      v21 = v42;
      v20 = HIDWORD(v42);
      v47[0] = v42;
      if (!v16)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }
  }

  v21 = v42;
  v47[0] = v42;
  v22 = __error();
  v20 = HIDWORD(v42);
  v9 = *v22;
  if (*v22)
  {
    v23 = 1;
  }

  else
  {
    v23 = v16 == 0;
  }

  if (!v23)
  {
LABEL_42:
    v24 = v20 + 1;
    v25 = &v47[v20 + 1];
    *v25 = v16;
    v25[1] = v15;
    LODWORD(v47[0]) = v21 + v15;
    HIDWORD(v47[0]) = v24;
    goto LABEL_43;
  }

  if (v9 == -1)
  {
    v9 = *__error();
  }

  v10 = a3;
  if (!v9)
  {
LABEL_43:
    if (MKBSDSlice(v53.f_mntfromname, &v44 + 4, &v44, 0) < 2)
    {
      v9 = 22;
      goto LABEL_7;
    }

    __sprintf_chk(v51, 0, 0x400uLL, "/dev/rdisk%is%i", HIDWORD(v44), v44);
    v26 = open(v51, 2, 438);
    if (v26 < 0)
    {
      result = -1;
      goto LABEL_12;
    }

    v27 = v26;
    if (a3)
    {
      v28 = 0;
      v29 = &v47[1] + 4;
      v10 = a3;
      while (1)
      {
        while (1)
        {
          v30 = a4 + 511;
          if (a4 >= 0)
          {
            v30 = a4;
          }

          v31 = HIDWORD(v47[0]);
          if (!HIDWORD(v47[0]))
          {
            goto LABEL_73;
          }

          v32 = 0;
          v33 = v30 >> 9;
          v34 = a4 - (v30 & 0xFFFFFFFFFFFFFE00);
          v35 = v10 >> 9;
          v36 = v29;
          while (1)
          {
            v37 = *v36;
            if (v33 < (*v36 + v32))
            {
              break;
            }

            v36 += 2;
            v32 += v37;
            if (!--v31)
            {
              goto LABEL_73;
            }
          }

          v38 = (*(v36 - 1) + v33 - v32);
          if (!v38)
          {
LABEL_73:
            v9 = 22;
            goto LABEL_74;
          }

          if (!v34)
          {
            break;
          }

          v43 = v29;
          if (!v28)
          {
            v28 = malloc_type_calloc(1uLL, 0x200uLL, 0x29C4CD68uLL);
            if (!v28)
            {
              goto LABEL_86;
            }
          }

          v40 = v38 << 9;
          if (pread(v27, v28, 0x200uLL, v38 << 9) != 512)
          {
            goto LABEL_85;
          }

          v41 = v10 >= (512 - v34) ? (512 - v34) : v10;
          memcpy(&v28[v34], a2, v41);
          if (pwrite(v27, v28, 0x200uLL, v40) != 512)
          {
            goto LABEL_85;
          }

          a4 += v41;
          a2 += v41;
          v10 -= v41;
          v29 = v43;
          if (!v10)
          {
            goto LABEL_83;
          }
        }

        if (v10 < 0x200)
        {
          break;
        }

        if (v35 >= (v37 - (v33 - v32)))
        {
          v35 = (v37 - (v33 - v32));
        }

        v39 = pwrite(v27, v28, v35 << 9, v38 << 9);
        if (v39 < 0)
        {
          v9 = -1;
          goto LABEL_74;
        }

        a2 += v39;
        a4 += v39;
        v10 -= v39;
        if (!v10)
        {
          v9 = 0;
LABEL_74:
          if (!v28)
          {
            goto LABEL_77;
          }

LABEL_75:
          free(v28);
          goto LABEL_77;
        }
      }

      if (v28 || (v28 = malloc_type_calloc(1uLL, 0x200uLL, 0xDFFB1851uLL)) != 0)
      {
        if (pread(v27, v28, 0x200uLL, v38 << 9) == 512 && (memcpy(v28, a2, v10), pwrite(v27, v28, 0x200uLL, v38 << 9) == 512))
        {
LABEL_83:
          v10 = 0;
          v9 = 0;
        }

        else
        {
LABEL_85:
          v9 = -1;
        }

        goto LABEL_75;
      }

LABEL_86:
      v9 = -1;
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

LABEL_77:
    close(v27);
  }

LABEL_3:
  if ((v9 - 1) <= 0xFFFFFFFD)
  {
LABEL_8:
    *__error() = v9;
  }

  if (v9)
  {
    result = -1;
  }

  else
  {
    result = a3 - v10;
  }

LABEL_12:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t salloc(uint64_t *a1, uint64_t *a2, unsigned int a3, uint64_t (*a4)(uint64_t, void, uint64_t, void, uint64_t), uint64_t a5, int *a6)
{
  v17 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  memset(v13, 0, sizeof(v13));
  v8 = srequest(a1, a2, a3, 0, v13, a4, a5);
  v9 = v8;
  if (v14 == -1)
  {
    v10 = -5344;
    if (!a6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v10 = addentry(a1, v13, 0x60uLL, 0x5Eu, v8, 0x98u);
  if (a6)
  {
LABEL_3:
    *a6 = v10;
  }

LABEL_4:
  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sfree(const void **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 47);
  if (!*(*a1 + 47))
  {
    return 22;
  }

  v8 = 0;
  v9 = v3 + 216;
  result = 22;
  do
  {
    if (*(v9 - 1) == a2)
    {
      if (*v9 != a3)
      {
        return result;
      }

      result = delentry(a1, 96, 0x5Eu, v8, 152);
      v4 = *(v3 + 47);
    }

    v9 += 19;
    ++v8;
  }

  while (v8 < v4);
  return result;
}

uint64_t GPTCategorize(int a1)
{
  v1 = &GPTDescriptors;
  while (*v1 != a1)
  {
    v2 = *(v1 + 13);
    v1 += 28;
    if (!v2)
    {
      v1 = &unk_2798A2068;
      return v1[1];
    }
  }

  return v1[1];
}

uint64_t GPTSubReadMBR(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v41 = *MEMORY[0x277D85DE8];
  v39 = 0;
  v8 = *a1;
  if (*(*a1 + 94))
  {
    v9 = 0;
    v10 = (v8 + 144);
    while (1)
    {
      v11 = MBRInfoSearch(v10);
      if (v11)
      {
        v12 = *v11;
        v13 = v12 > 0xC || ((1 << v12) & 0x1880) == 0;
        if (!v13 || v12 == 131)
        {
          break;
        }
      }

      v14 = v9 + 1;
      if (v9 <= 2)
      {
        v10 += 152;
        ++v9;
        if (v14 < *(v8 + 94))
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    *(v8 + 80) |= 2uLL;
    v14 = v9;
  }

  else
  {
    v14 = 0;
  }

LABEL_15:
  v15 = malloc_type_calloc(1uLL, 0x200uLL, 0xBA8D1F4EuLL);
  *(a2 + 8) = v15;
  if (!v15)
  {
    result = 12;
    goto LABEL_58;
  }

  result = MKMediaReadBlocks(a4, 0, 1, 0x200u, v15, &v39);
  if (!result)
  {
    v17 = *(a2 + 8);
    if (*(v17 + 510) != 43605)
    {
      result = 0;
      goto LABEL_58;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = (v17 + 446);
    while (1)
    {
      if (*(v21 + 3) && (!v18 || *(v21 + 2)))
      {
        v22 = v21[4];
        if (v22 == 238)
        {
          ++v19;
        }

        else
        {
          v23 = MBRInfoSearchByType(v22);
          v24 = v23;
          if (v18 == 3 && v23[1] == 6)
          {
            *(v8 + 80) |= 8uLL;
          }

          v25 = *v23;
          if (!*v23 || v25 == 255)
          {
            goto LABEL_51;
          }

          ++v20;
          v26 = *(v21 + 2);
          v39 = *(v21 + 3);
          v27 = *(v8 + 94);
          if (*(v8 + 94))
          {
            v28 = (v8 + 208);
            while (*v28 != v26)
            {
              v28 += 19;
              if (!--v27)
              {
                goto LABEL_33;
              }
            }

            v30 = v28 - 14;
            goto LABEL_41;
          }

LABEL_33:
          if (v25 == 7 && (v14 == 3 && v18 == 3 || v14 == 2 && v18 == 2))
          {
            GPTuuidType2HumanExtended(v40, *(v23 + 1), 96, 1, 0);
            v29 = gpmrtypesearch(a1, v40, 2);
            v14 = v29;
            if (v29 > 1)
            {
              if ((a3 & 4) == 0)
              {
                v30 = (v8 + 96 + 152 * v29);
                v33 = *(v30 - 4) + *(v30 - 5);
                if (v33 <= v26)
                {
                  v34 = (v8 + 56);
                  if (v29 + 1 < *(v8 + 94))
                  {
                    v34 = v30 + 33;
                  }

                  v35 = *v34 - v33;
                  v36 = v39;
                  if (v39 <= v35)
                  {
                    v30[14] = v26;
                    v30[15] = v36;
                    *(v8 + 80) |= 0x10uLL;
                  }
                }

LABEL_41:
                v31 = v30[17];
                v30[17] = v31 & 0xFFFFFFFFFFFFFF7FLL;
                if (*v21 < 0)
                {
                  v30[17] = v31 | 0x80;
                }

                if (*v24 != 7)
                {
                  v32 = *(v24 + 1);
                  __strlcpy_chk();
                }
              }
            }

            else
            {
              *(v8 + 80) |= 4uLL;
            }
          }
        }
      }

LABEL_51:
      v21 += 16;
      if (v18++ >= 3)
      {
        result = 0;
        if (v19 && v20)
        {
          result = 0;
          *(v8 + 80) |= 1uLL;
        }

        break;
      }
    }
  }

LABEL_58:
  v38 = *MEMORY[0x277D85DE8];
  return result;
}

__CFArray *GPTCFCreateMapRuns(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  *size = 0u;
  v23 = 0u;
  *keys = xmmword_2798A20A0;
  values = 0;
  cf = 0;
  v21 = 0;
  v19 = 0;
  valuePtr = 0;
  MKMediaGetGeometry(a1, size);
  v5 = LODWORD(size[0]);
  v6 = malloc_type_calloc(1uLL, LODWORD(size[0]), 0x5941CF53uLL);
  v7 = __error();
  if (v6)
  {
    v8 = *MEMORY[0x277CBECE8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    v10 = GPTReadHeaderBlock(1, size[0], a1, &v21, v6);
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v12 = v5 >> 9;
      valuePtr = 0;
      values = CFNumberCreate(v8, kCFNumberSInt64Type, &valuePtr);
      v13 = (v6[21] * v6[20]);
      if (((*(v6 + 42) * *(v6 + 40)) & 0x1FF) != 0)
      {
        v14 = (v13 >> 9) + 1;
      }

      else
      {
        v14 = v13 >> 9;
      }

      v19 = v14 + *(v6 + 9) * v12;
      cf = CFNumberCreate(v8, kCFNumberSInt64Type, &v19);
      v15 = CFDictionaryCreate(v8, keys, &values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFRelease(values);
      CFRelease(cf);
      CFArrayAppendValue(Mutable, v15);
      CFRelease(v15);
      v11 = GPTReadHeaderBlock(size[1] / v12 - 1, size[0], a1, &v21, v6);
      if (!v11)
      {
        valuePtr = *(v6 + 9) * v12;
        values = CFNumberCreate(v8, kCFNumberSInt64Type, &valuePtr);
        v19 = v12 + v12 * (*(v6 + 3) - *(v6 + 9));
        cf = CFNumberCreate(v8, kCFNumberSInt64Type, &v19);
        v16 = CFDictionaryCreate(v8, keys, &values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        CFRelease(values);
        CFRelease(cf);
        CFArrayAppendValue(Mutable, v16);
        CFRelease(v16);
      }
    }

    free(v6);
    if (v11 && Mutable)
    {
      CFRelease(Mutable);
      Mutable = 0;
    }
  }

  else
  {
    Mutable = 0;
    v11 = *v7;
  }

  *a3 = v11;
  v17 = *MEMORY[0x277D85DE8];
  return Mutable;
}

uint64_t GPMUpdateVolumeUUID(uint64_t *a1, int a2, unsigned int a3, uint64_t a4)
{
  v16[2] = *MEMORY[0x277D85DE8];
  result = 22;
  v15 = 22;
  if (a1)
  {
    if ((a2 & 0x80000000) == 0)
    {
      v6 = *a1;
      if (a2 <= *(v6 + 94))
      {
        v16[0] = 0;
        v16[1] = 0;
        v7 = v6 + 152 * a2;
        v8 = *(v7 + 208);
        v9 = *(v7 + 216);
        if (v8 && v9 != 0)
        {
          v14 = 0;
          v13 = 0;
          v11 = MKMediaCreateWithSubRange(0, a4, v8 * a3, v9 * a3, &v15);
          result = v15;
          if (!v15)
          {
            result = MKFileSystemDetect(v11, &v14, &v13 + 1, &v13);
            v15 = result;
            if (!result && v13 == 1 && SHIDWORD(v13) >= 2)
            {
              result = MKHFSProcessVolumeUUID(v11, 2, v16);
              v15 = result;
            }
          }

          if (v11)
          {
            CFRelease(v11);
            result = v15;
          }
        }
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MKHFSPlusMapFileBlock(uint64_t a1, int a2, unsigned __int8 a3, unsigned int a4, int *a5, const void *a6)
{
  if (*(a1 + 12) <= a4)
  {
    return 4294967257;
  }

  v17 = v6;
  v18 = v7;
  v9 = 0;
  v10 = (a1 + 20);
  v11 = 8;
  do
  {
    v12 = *v10 + v9;
    if (v12 > a4)
    {
      v14 = a4 - v9 + *(v10 - 1);
      goto LABEL_13;
    }

    v10 += 2;
    v9 = v12;
    --v11;
  }

  while (v11);
  if (!a6)
  {
    return 84;
  }

  v16 = 0;
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  LODWORD(result) = ApplyToHFSPlusExtentRecords(a6, FindFileBlock, v15);
  if (result)
  {
    result = result;
  }

  else
  {
    result = 22;
  }

  if (result == -128)
  {
    v14 = v16;
LABEL_13:
    result = 0;
    *a5 = v14;
  }

  return result;
}

uint64_t FindFileBlock(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(a1 + 4) == *a3 && *(a1 + 2) == *(a3 + 4) && (v4 = *(a3 + 8), v5 = *(a1 + 8), v6 = v4 >= v5, v7 = v4 - v5, v6))
  {
    v8 = 0;
    v9 = (a2 + 4);
    v10 = 8;
    while (1)
    {
      v11 = *v9 + v8;
      if (v11 > v7)
      {
        break;
      }

      v9 += 2;
      v8 = v11;
      if (!--v10)
      {
        goto LABEL_8;
      }
    }

    *(a3 + 12) = v7 - v8 + *(v9 - 1);
    result = 4294967168;
  }

  else
  {
LABEL_8:
    result = 0;
  }

  *a4 = 0;
  return result;
}

uint64_t MKHFSDescriptorIdentity(char *a1)
{
  v1 = hfsdescriptors[0];
  if (hfsdescriptors[0])
  {
    v3 = 0;
    do
    {
      if (!strcasecmp(a1, v1))
      {
        break;
      }

      v1 = hfsdescriptors[++v3];
    }

    while (v1);
  }

  else
  {
    LOWORD(v3) = 0;
  }

  return v3;
}

uint64_t MKHFSIdentity(unsigned int a1)
{
  if (a1 >= 5)
  {
    v1 = 0;
  }

  else
  {
    v1 = a1;
  }

  return hfsdescriptors[v1];
}

uint64_t MKRecordHFSRuns(const void *a1, int a2, unsigned __int16 (*a3)(uint64_t, uint64_t, uint64_t *), uint64_t a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  memset(v33, 0, sizeof(v33));
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  memset(v28, 0, sizeof(v28));
  Blocks = MKMediaReadBlocks(a1, 2, 1, 0x200u, v34, 0);
  if (!Blocks)
  {
    Geometry = MKMediaGetGeometry(a1, v28);
    LOWORD(v29) = 1;
    LODWORD(v30) = LODWORD(v28[0]) >> 9;
    *(&v30 + 1) = *(&v28[0] + 1);
    *&v31 = *(&v28[0] + 1);
    Blocks = (a3)(a4, 0, 0, Geometry);
    if (!Blocks)
    {
      v13 = bswap32(v34[0]) >> 16;
      if (v13 == 16964)
      {
        WORD1(v29) = 1;
        TAO_HFSMasterDirectoryBlock_BigToHost(v34);
        if (v38 < 0x200)
        {
          v10 = 22;
          goto LABEL_16;
        }

        v22 = v38 >> 9;
        HIDWORD(v29) = v38 >> 9;
        v10 = 22;
        if (v37 < 8u)
        {
          goto LABEL_16;
        }

        v23 = v22 * v37;
        if (v31 < v23)
        {
          goto LABEL_16;
        }

        v24 = v39 + v23;
        LODWORD(v25) = v22 * v40;
        v25 = v25 >= v23 ? v23 : v25;
        *(&v31 + 1) = v24 + 2;
        *&v32 = v25;
        *(&v32 + 1) = v24 - 1;
        DWORD2(v29) = v39;
        v26 = *(&v30 + 1) / (v24 + 2);
        if (v26 > 10000.0 || v26 < 0.0001)
        {
          goto LABEL_16;
        }

        if ((v36 & 0x8080) != 0)
        {
          *&v33[0] |= 1uLL;
        }

        if ((v36 & 0x900) != 0x100)
        {
          *&v33[0] |= 2uLL;
        }

        if ((a2 & 0x10000) != 0 || v46 != 18475)
        {
          if ((v45 & 0xFFFFFF) == 0x636E65)
          {
            SystemEncoding = HIBYTE(v45);
          }

          else
          {
            SystemEncoding = CFStringGetSystemEncoding();
          }

          if (!uniconvert(v33 + 12, 256, 0x8000100u, 0, v41, 27, SystemEncoding, 0))
          {
            uniconvert(v33 + 12, 256, 0x8000100u, 0, v41, 27, 0, 0);
          }

          v15 = HFSSuperTidemark(&v29, a2, v34, a1, a3, a4);
          if (v15)
          {
            goto LABEL_12;
          }

          v20 = *(&v32 + 1) - v39 + 1;
          v21 = v23 - v32;
          goto LABEL_54;
        }

        v15 = (a3)(a4, 2, &v29);
        if (v15)
        {
LABEL_12:
          v10 = v15;
LABEL_16:
          a3(a4, 4, 0);
          goto LABEL_4;
        }

        WORD1(v29) = 3;
        DWORD1(v29) = v39 + HIDWORD(v29) * v47;
        *&v31 = HIDWORD(v29) * v48;
      }

      else
      {
        if (v13 == 18475)
        {
          v14 = 2;
        }

        else
        {
          if (v13 != 18520)
          {
            WORD1(v29) = 0;
            v10 = 4294967239;
            goto LABEL_16;
          }

          v14 = 4;
        }

        WORD1(v29) = v14;
      }

      v15 = MKMediaReadBlocks(a1, (DWORD1(v29) + 2), 1, 0x200u, v34, 0);
      if (v15)
      {
        goto LABEL_12;
      }

      TAO_HFSPlusVolumeHeader_BigToHost(v34);
      if ((v35 & 0x8080) != 0)
      {
        *&v33[0] |= 1uLL;
      }

      if ((v35 & 0x900) != 0x100)
      {
        *&v33[0] |= 2uLL;
      }

      if ((v35 & 0x2000) != 0)
      {
        *&v33[0] |= 4uLL;
      }

      v10 = 22;
      if (v42 < 0x200)
      {
        goto LABEL_16;
      }

      v16 = vcnt_s8(v42);
      v16.i16[0] = vaddlv_u8(v16);
      if (v16.i32[0] > 1u)
      {
        goto LABEL_16;
      }

      if (v43 < 8)
      {
        goto LABEL_16;
      }

      v17 = v42 >> 9;
      HIDWORD(v29) = v42 >> 9;
      if (v42 >> 9 > v43)
      {
        goto LABEL_16;
      }

      v18 = (v17 << (v42 < 0x400));
      *(&v31 + 1) = v43 * v17;
      *&v32 = v44 * v17;
      *(&v32 + 1) = ~v18 + *(&v31 + 1) + DWORD1(v29);
      v19 = *(&v30 + 1) / *(&v31 + 1);
      if (v19 > 10000.0 || v19 < 0.0001)
      {
        goto LABEL_16;
      }

      v15 = MKReadHFSParams(a1, v34, &v29);
      if (v15)
      {
        goto LABEL_12;
      }

      v15 = HFSSuperTidemark(&v29, a2, v34, a1, a3, a4);
      if (v15)
      {
        goto LABEL_12;
      }

      v20 = *(&v32 + 1) - DWORD1(v29) + 1;
      v21 = *(&v31 + 1) - v32 - v18;
LABEL_54:
      DWORD2(v33[0]) = v20 / v21;
      v15 = (a3)(a4, 3, &v29);
      goto LABEL_12;
    }
  }

  v10 = Blocks;
LABEL_4:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t HFSSuperTidemark(uint64_t a1, int a2, uint64_t a3, const void *a4, unsigned __int16 (*a5)(uint64_t, uint64_t, uint64_t *), uint64_t a6)
{
  v81 = 0;
  v77 = 0;
  v75 = 0;
  v76 = 0;
  v73 = 0;
  v74 = 0;
  if (a1)
  {
    v11 = *(a1 + 12);
    v12 = malloc_type_malloc((v11 << 9), 0xAD961A15uLL);
    if (v12)
    {
      v13 = v12;
      v69 = a4;
      v78 = v11 << 12;
      v79 = (v11 << 6) & 0x1FFFFFFF;
      v80 = 64;
      v14 = *(a1 + 2);
      if (v14 == 1)
      {
        v15 = *(a3 + 18) - 1;
        v70 = a3;
        v16 = *(a3 + 28);
        v17 = v15 + 1;
        v18 = *(a1 + 12);
        v68 = -1;
      }

      else
      {
        v15 = (*(a3 + 44) - 1);
        v18 = *(a1 + 12);
        v20 = -2;
        if (v18 > 1)
        {
          v20 = -1;
        }

        v16 = *(a1 + 4);
        v17 = v15 + v20 + 1;
        v68 = a3;
        v70 = -1;
      }

      v82 = 0;
      v71 = v13;
      if ((a2 & 3) == 0)
      {
        if ((a2 & 0x40000) == 0)
        {
          LOWORD(v19) = 0;
LABEL_121:
          free(v71);
          return v19;
        }

        if (v18 <= 1)
        {
          v46 = -2;
        }

        else
        {
          v46 = -1;
        }

        if (v14 <= 1)
        {
          v47 = 0;
        }

        else
        {
          v47 = v46;
        }

        v48 = bmaddr(v15 + v47, &v78);
        v49 = v48;
        v51 = v50;
        v76 = v48;
        v77 = v50;
        if ((v48 & 0x80000000) == 0)
        {
          v52 = HIDWORD(v48);
          do
          {
            if (*(a1 + 2) < 2u)
            {
              v53 = *(a1 + 12);
              v54 = (v53 * v49) + *(v70 + 14);
            }

            else
            {
              LOWORD(v19) = MKHFSPlusMapFileBlock(v68 + 112, 6, 0, v49, &v81, v69);
              if (v19)
              {
                goto LABEL_121;
              }

              v53 = *(a1 + 12);
              v54 = v53 * v81;
              v13 = v71;
            }

            LOWORD(v19) = MKMediaReadBlocks(v69, v54 + *(a1 + 4), v53, 0x200u, v13, &v82);
            if (v19)
            {
              goto LABEL_121;
            }

            if ((v52 & 0x80000000) == 0)
            {
              v55 = v80 - 1;
              v56 = v52;
              v13 = v71;
              while (1)
              {
                v57 = *&v71[8 * v56];
                if (v57)
                {
                  v58 = bswap64(v57);
                  *&v71[8 * v56] = v58;
                  if ((v51 & 0x80000000) == 0)
                  {
                    break;
                  }
                }

LABEL_102:
                v51 = v55;
                v44 = v56-- <= 0;
                if (v44)
                {
                  v51 = v55;
                  goto LABEL_106;
                }
              }

              v59 = v51;
              v60 = v55 - v51;
              while (((v58 >> v60) & 1) == 0)
              {
                ++v60;
                v44 = v59-- < 1;
                if (v44)
                {
                  goto LABEL_102;
                }
              }

              HIDWORD(v76) = v56;
              v77 = v59;
              break;
            }

            v13 = v71;
LABEL_106:
            LODWORD(v52) = v79 - 1;
            HIDWORD(v76) = v79 - 1;
            v77 = v51;
            LODWORD(v76) = v49 - 1;
            v44 = v49-- <= 0;
          }

          while (!v44);
        }

        v64 = *(a1 + 4);
        LOWORD(v19) = 0;
        v63 = v64 + *(a1 + 12) + *(a1 + 12) * alblock(&v76, &v78) - 1;
LABEL_120:
        *(a1 + 56) = v63;
        goto LABEL_121;
      }

      v67 = bmaddr(v15, &v78);
      if (*(a1 + 2) == 1)
      {
        v21 = a2;
        if ((a2 & 2) != 0)
        {
          LOWORD(v73) = 1;
          v22 = *(v70 + 28);
          v74 = 0;
          v75 = v22;
          LOWORD(v19) = a5(a6, 1, &v73);
          if (v19)
          {
            goto LABEL_121;
          }
        }

        v19 = 0;
        v23 = *(v70 + 28);
      }

      else
      {
        v19 = 0;
        v23 = *(a1 + 4);
        v21 = a2;
        if ((~a2 & 0x20002) == 0 && v23)
        {
          LOWORD(v73) = 1;
          v74 = 0;
          v75 = v23;
          v19 = a5(a6, 1, &v73);
          LODWORD(v23) = *(a1 + 4);
        }

        v23 = v23;
      }

      v74 = v23;
      v75 = 0;
      if ((v21 & 4) != 0)
      {
        LOWORD(v73) = 2;
        v75 = 1448037419;
        v19 = a5(a6, 1, &v73);
        v75 = 0;
      }

      v24 = v16 + v17 * v18;
      LODWORD(v76) = 0;
      if (v67 < 0)
      {
        v25 = 0;
      }

      else
      {
        v25 = 0;
        v26 = 0;
        v27 = v71;
        while (1)
        {
          if (*(a1 + 2) < 2u)
          {
            v28 = v69;
            v29 = *(a1 + 12);
            v30 = v29 * v26 + *(v70 + 14);
          }

          else
          {
            v28 = v69;
            v19 = MKHFSPlusMapFileBlock(v68 + 112, 6, 0, v26, &v81, v69);
            if (v19)
            {
              break;
            }

            v29 = *(a1 + 12);
            v30 = v29 * v81;
            v27 = v71;
          }

          v19 = MKMediaReadBlocks(v28, v30 + *(a1 + 4), v29, 0x200u, v27, &v82);
          if (v19)
          {
            break;
          }

          v66 = v26;
          HIDWORD(v76) = 0;
          v31 = v79;
          if (v79 >= 1)
          {
            v32 = 0;
            v33 = v80;
            v27 = v71;
            while (1)
            {
              *&v27[8 * v32] = bswap64(*&v27[8 * v32]);
              v77 = 0;
              if (v33 >= 1)
              {
                break;
              }

LABEL_48:
              HIDWORD(v76) = ++v32;
              if (v32 >= v31)
              {
                goto LABEL_51;
              }
            }

            v34 = a6;
            v35 = a5;
            v36 = 1;
            v37 = -1;
            v38 = v73;
            while (1)
            {
              v39 = (*&v27[8 * v32] >> (v33 + v37)) & 1;
              if (v38 == v39)
              {
                v40 = v74;
                v41 = v75;
              }

              else
              {
                v42 = v75;
                if (v75)
                {
                  if (((v38 + 1) & a2) != 0)
                  {
                    v19 = v35(v34, 1, &v73);
                    if (v19)
                    {
                      goto LABEL_54;
                    }

                    v42 = v75;
                    v38 = v73;
                    v27 = v71;
                  }

                  v40 = v74 + v42;
                  v74 = v40;
                  v75 = 0;
                }

                else
                {
                  v40 = v74;
                }

                v41 = 0;
                if (v38 == 1)
                {
                  v25 = v40;
                }

                LOWORD(v73) = v39;
                v38 = v39;
              }

              if (v41 + v40 >= v24)
              {
                break;
              }

              v75 = v41 + *(a1 + 12);
              v77 = v36;
              v33 = v80;
              --v37;
              v44 = v36++ < v80;
              if (!v44)
              {
                v31 = v79;
                a5 = v35;
                a6 = v34;
                v21 = a2;
                goto LABEL_48;
              }
            }

            v19 = 0;
LABEL_54:
            a5 = v35;
            a6 = v34;
            v21 = a2;
            break;
          }

          v27 = v71;
LABEL_51:
          v26 = v66 + 1;
          LODWORD(v76) = v66 + 1;
          if (v66 >= v67)
          {
            v19 = 0;
            break;
          }
        }
      }

      if (v75)
      {
        if (((v73 + 1) & v21) != 0)
        {
          v19 = a5(a6, 1, &v73);
        }

        if (v19)
        {
          goto LABEL_121;
        }

        v43 = v74 + v75;
        v74 = v43;
        v75 = 0;
        v44 = v43 <= v24 && v43 > v25;
        if (!v44)
        {
          v43 = v25;
        }

        if (v73 == 1)
        {
          v25 = v43;
        }

        LOWORD(v19) = 0;
      }

      if ((v21 & 4) != 0)
      {
        LOWORD(v73) = 2;
        v75 = 1448037421;
        LOWORD(v19) = a5(a6, 1, &v73);
        v75 = 0;
      }

      v45 = *(a1 + 4) + *(a1 + 32) - 2;
      if ((v21 & 1) != 0 && v74 < v45)
      {
        LOWORD(v73) = 0;
        v75 = v45 + ~v74;
        if (v75)
        {
          LOWORD(v19) = a5(a6, 1, &v73);
        }
      }

      if ((v21 & 2) != 0 && v74 <= v45)
      {
        LOWORD(v73) = 1;
        v74 = v45;
        v75 = 1;
        LOWORD(v19) = a5(a6, 1, &v73);
      }

      if (v21)
      {
        LOWORD(v73) = 0;
        v74 = *(a1 + 4) + *(a1 + 32) - 1;
        v75 = 1;
        LOWORD(v19) = a5(a6, 1, &v73);
        if ((v21 & 0x20000) == 0)
        {
          goto LABEL_117;
        }

        v61 = *(a1 + 4);
        if (!v61)
        {
          goto LABEL_117;
        }

        LOWORD(v73) = 0;
        v62 = *(a1 + 24);
        v74 = *(a1 + 32) + v61;
        v75 = v62 - v74 - 2;
        if (v74 < v62 - 2)
        {
          LOWORD(v19) = a5(a6, 1, &v73);
        }
      }

      else if ((v21 & 0x20000) == 0 || !*(a1 + 4))
      {
LABEL_117:
        v63 = v25 - 1;
        goto LABEL_120;
      }

      if ((v21 & 2) != 0)
      {
        LOWORD(v73) = 1;
        v74 = *(a1 + 24) - 2;
        v75 = 1;
        LOWORD(v19) = a5(a6, 1, &v73);
      }

      if (v21)
      {
        LOWORD(v73) = 0;
        v74 = *(a1 + 24) - 1;
        v75 = 1;
        LOWORD(v19) = a5(a6, 1, &v73);
      }

      goto LABEL_117;
    }

    LOWORD(v19) = -1;
  }

  else
  {
    LOWORD(v19) = 22;
  }

  return v19;
}

uint64_t MKReadHFSParams(const void *a1, uint64_t a2, uint64_t a3)
{
  v3 = 22;
  if (!a1 || !a2)
  {
    return v3;
  }

  v7 = 2 * *(a2 + 40);
  v8 = malloc_type_malloc(v7, 0xE7984701uLL);
  if (!v8)
  {
    return *__error();
  }

  v9 = v8;
  v33 = 0;
  v10 = *(a2 + 40);
  Blocks = MKHFSPlusMapFileBlock(a2 + 272, 4, 0, 0, &v33, a1);
  if (Blocks)
  {
    goto LABEL_6;
  }

  v12 = v10 >> 9;
  Blocks = MKMediaReadBlocks(a1, *(a3 + 4) + v33 * (v10 >> 9), 1, 0x200u, v9, 0);
  if (Blocks)
  {
    goto LABEL_6;
  }

  if (v9[1].i8[0] != 1)
  {
    goto LABEL_33;
  }

  v14 = TAO_BTHeaderRec_BigToHost(&v9[1] + 3).u64[0];
  Blocks = MKHFSValidate_BTHDR(&v9[1] + 6, v14);
  if (Blocks)
  {
LABEL_6:
    v3 = Blocks;
    goto LABEL_7;
  }

  v15 = v9[4].u16[0];
  v16 = v9;
  if (v7 < v15)
  {
    free(v9);
    v16 = malloc_type_malloc(v15, 0xC37B73F9uLL);
    if (!v16)
    {
      return *__error();
    }
  }

  v32 = v16;
  if (v9[6].u8[3] == 188)
  {
    *(a3 + 64) |= 8uLL;
  }

  v29 = v15;
  LODWORD(v17) = v15 >> 9;
  v18 = (v15 >> 9) / v12;
  if ((v15 >> 9) % v12)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = v18;
  }

  if (!v19)
  {
LABEL_27:
    v9 = v32;
    TAO_BTNodeDescriptor_BigToHost(v32);
    if (v32[1].i16[1])
    {
      v26 = bswap32(*(&v32->u16[-1] + v29)) >> 16;
      v3 = 22;
      if (v26 < 0xE || v29 - 518 < v26)
      {
        goto LABEL_34;
      }

      v27 = v32 + v26;
      TAO_HFSPlusCatalogKey_BigToHost((v32 + v26));
      if (*(v27 + 2) == 1)
      {
        v28 = *(v27 + 3);
        if (v28 <= 0xFF)
        {
          uniconvert((a3 + 76), 256, 0x8000100u, 0, v27 + 8, 2 * v28, 0x100u, 0);
          v3 = 0;
        }

        goto LABEL_34;
      }
    }

LABEL_33:
    v3 = 4294967246;
LABEL_34:
    free(v9);
    return v3;
  }

  v20 = 0;
  v21 = 0;
  v22 = v9[3].i32[0] * v17;
  v23 = v22 / v12;
  v31 = v22 % v12;
  if (v12 >= v17)
  {
    v17 = v17;
  }

  else
  {
    v17 = v12;
  }

  v30 = v17;
  v24 = v10 & 0xFFFFFE00;
  while (1)
  {
    v25 = MKHFSPlusMapFileBlock(a2 + 272, 4, 0, v23 + v21, &v33, a1);
    if (v25)
    {
      break;
    }

    v33 = *(a3 + 4) + v31 + v33 * v12;
    v25 = MKMediaReadBlocks(a1, v33, v30, 0x200u, v32 + v20, 0);
    if (v25)
    {
      break;
    }

    ++v21;
    v20 += v24;
    if (v21 >= v19)
    {
      goto LABEL_27;
    }
  }

  v3 = v25;
  v9 = v32;
LABEL_7:
  free(v9);
  if (v3 == -1)
  {
    return *__error();
  }

  return v3;
}

CFMutableDictionaryRef MKCFCreateHFSInfo(const void *a1, const __CFDictionary *a2, _DWORD *a3)
{
  v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x1020040CA22B68AuLL);
  if (v6)
  {
    v7 = v6;
    *v6 = FSConvertOptions(a2);
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(v7 + 8) = Mutable;
    v9 = MKRecordHFSRuns(a1, *v7, MKCFRecordFSInfo, v7);
    if (v9)
    {
      v10 = Mutable == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      CFRelease(Mutable);
      Mutable = 0;
    }

    free(v7);
    if (a3)
    {
      if (v9 != -1)
      {
LABEL_12:
        *a3 = v9;
        return Mutable;
      }

LABEL_11:
      v9 = *__error();
      goto LABEL_12;
    }
  }

  else
  {
    Mutable = 0;
    if (a3)
    {
      goto LABEL_11;
    }
  }

  return Mutable;
}

uint64_t HFSAllocFileIO(const void *a1, unsigned __int16 *a2, char **a3, int a4)
{
  if (!a3)
  {
    return 22;
  }

  v4 = a3;
  v5 = a2;
  v7 = *a2;
  if (v7 == 18520 || v7 == 18475)
  {
    v9 = *(a2 + 10);
    v10 = *(a2 + 11) >> 3;
    if (v10 % v9)
    {
      v11 = v10 / v9 + 1;
    }

    else
    {
      v11 = v10 / v9;
    }

    v12 = v11 * v9;
    v13 = a2 + 64;
    v29 = a2;
    v5 = -1;
  }

  else
  {
    if (v7 != 16964)
    {
      v24 = 0;
      v15 = 4294967173;
      goto LABEL_43;
    }

    v13 = 0;
    v9 = *(a2 + 5);
    v10 = a2[9] >> 3;
    if (v10 % v9)
    {
      v11 = v10 / v9 + 1;
    }

    else
    {
      v11 = v10 / v9;
    }

    v12 = v11 * v9;
    v29 = -1;
  }

  if (!a4)
  {
    v14 = malloc_type_malloc(v12, 0x71E0D049uLL);
    v27 = v14;
    if (!v14)
    {
      v24 = 0;
      v15 = 0xFFFFFFFFLL;
      goto LABEL_44;
    }

    goto LABEL_21;
  }

  if (!*a3)
  {
    return 22;
  }

  bzero(&(*a3)[v10 + 1], ~v10 + v12);
  v27 = 0;
  v14 = *v4;
LABEL_21:
  v28 = v5;
  v26 = v4;
  v16 = 0;
  v17 = 0;
  v18 = v9 >> 9;
  v32 = 0;
  v31 = 0;
  while (1)
  {
    if (v17 >= v11)
    {
      v15 = 0;
      v4 = v26;
      v24 = v27;
      goto LABEL_43;
    }

    if (v7 == 16964)
    {
      v19 = *(v28 + 14) + v17 * v18;
      v20 = v11;
      goto LABEL_31;
    }

    v21 = MKHFSPlusMapFileBlock(v29 + 112, 6, 0, v17, &v32, a1);
    if (v21)
    {
      break;
    }

    v19 = v32 * v18;
    if (v13)
    {
      v20 = (*(v13 + 1) * v18);
      if (v16++ <= 6)
      {
        v13 += 4;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v20 = v18;
    }

LABEL_31:
    if (a4)
    {
      v23 = MKMediaWriteSectors(a1, v19, v20, v14, &v31);
    }

    else
    {
      v23 = MKMediaReadSectors(a1, v19, v20, v14, &v31);
    }

    v15 = v23;
    v17 += v20 / v18;
    v14 += 512 * v31;
    if (v23)
    {
      goto LABEL_40;
    }
  }

  v15 = v21;
LABEL_40:
  if (v27)
  {
    free(v27);
  }

  v24 = 0;
  v4 = v26;
LABEL_43:
  if (!a4)
  {
LABEL_44:
    *v4 = v24;
  }

  return v15;
}

uint64_t HFSAllocateSpace(const void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*a3 == a4)
  {
    return 0;
  }

  v20 = 0;
  v4 = HFSAllocFileIO(a1, a2, &v20, 0);
  if (!v4)
  {
    v9 = *(a2 + 40);
    if (a4 % v9)
    {
      v10 = a4 / v9 + 1;
    }

    else
    {
      v10 = a4 / v9;
    }

    v12 = *(a3 + 12);
    v11 = *(a3 + 16);
    if (*a3 <= a4)
    {
      v14 = *(a2 + 44);
      if (BitsClear(v20, v11 + v12, v10 - v12))
      {
        *(a3 + 20) = v10;
        *(a3 + 12) = v10;
        *a3 = a4;
        v15 = v20;
        v16 = v11 + v12;
        v17 = v10 - v12;
      }

      else
      {
        SetBits(v20, v11, v12, 0);
        v18 = ScanForZeros(v20, v14, v10);
        if (v18 == -1)
        {
          return 28;
        }

        v16 = v18;
        *(a3 + 16) = v18;
        *(a3 + 20) = v10;
        *(a3 + 12) = v10;
        *a3 = a4;
        v15 = v20;
        v17 = v10;
      }

      SetBits(v15, v16, v17, 1);
      v13 = *(a2 + 48) - (v10 - v12);
    }

    else
    {
      if (!v10)
      {
        *(a3 + 16) = 0;
      }

      *(a3 + 20) = v10;
      *(a3 + 12) = v10;
      *a3 = a4;
      SetBits(v20, v11 + v10, v12 - v10, 0);
      v13 = *(a2 + 48) + v12 - v10;
    }

    *(a2 + 48) = v13;
    v4 = HFSAllocFileIO(a1, a2, &v20, 1);
    free(v20);
  }

  return v4;
}

uint64_t MKHFSValidate_BTHDR(uint64_t a1, int8x8_t a2)
{
  a2.i32[0] = *(a1 + 18);
  v2 = vaddlv_u8(vcnt_s8(a2));
  if ((*(a1 + 18) - 512) <= 0x7E00u)
  {
    v3 = v2 != 0;
    v4 = v2 == 1;
  }

  else
  {
    v3 = 1;
    v4 = 0;
  }

  if (!v4 && v3)
  {
    return 22;
  }

  v5 = *(a1 + 22);
  if (*(a1 + 10) >= v5)
  {
    return 22;
  }

  v6 = 22;
  if (*(a1 + 14) < v5)
  {
    if (*(a1 + 26) <= v5)
    {
      return 0;
    }

    else
    {
      return 22;
    }
  }

  return v6;
}

unsigned __int16 *TAO_HFSMasterDirectoryBlock_BigToHost(unsigned __int16 *result)
{
  *result = bswap32(*result) >> 16;
  *(result + 1) = vrev32_s8(*(result + 1));
  *(result + 5) = vrev16_s8(*(result + 5));
  result[9] = bswap32(result[9]) >> 16;
  *(result + 10) = vrev32_s8(*(result + 10));
  result[14] = bswap32(result[14]) >> 16;
  *(result + 15) = bswap32(*(result + 15));
  result[17] = bswap32(result[17]) >> 16;
  *(result + 16) = bswap32(*(result + 16));
  result[34] = bswap32(result[34]) >> 16;
  *(result + 35) = vrev32_s8(*(result + 35));
  *(result + 39) = bswap32(*(result + 39));
  result[41] = bswap32(result[41]) >> 16;
  *(result + 42) = vrev32q_s8(*(result + 42));
  *(result + 50) = vrev32q_s8(*(result + 50));
  v1 = vrev32_s8(*(result + 58));
  result[62] = bswap32(result[62]) >> 16;
  result[63] = bswap32(result[63]) >> 16;
  result[64] = bswap32(result[64]) >> 16;
  *(result + 65) = bswap32(*(result + 65));
  v2 = result + 68;
  v3 = 3;
  *(result + 58) = v1;
  do
  {
    *(v2 - 1) = bswap32(*(v2 - 1)) >> 16;
    *v2 = bswap32(*v2) >> 16;
    v2 += 2;
    --v3;
  }

  while (v3);
  *(result + 73) = bswap32(*(result + 73));
  v4 = result + 76;
  v5 = 3;
  do
  {
    *(v4 - 1) = bswap32(*(v4 - 1)) >> 16;
    *v4 = bswap32(*v4) >> 16;
    v4 += 2;
    --v5;
  }

  while (v5);
  return result;
}

unsigned __int16 *TAO_HFSExtentDescriptor_BigToHost(unsigned __int16 *result)
{
  *result = bswap32(*result) >> 16;
  result[1] = bswap32(result[1]) >> 16;
  return result;
}

uint64_t TAO_HFSExtentRecord_BigToHost(uint64_t result)
{
  v1 = (result + 2);
  v2 = 3;
  do
  {
    *(v1 - 1) = bswap32(*(v1 - 1)) >> 16;
    *v1 = bswap32(*v1) >> 16;
    v1 += 2;
    --v2;
  }

  while (v2);
  return result;
}

uint64_t TAO_HFSExtentKey_BigToHost(uint64_t result)
{
  *(result + 2) = bswap32(*(result + 2));
  *(result + 6) = bswap32(*(result + 6)) >> 16;
  return result;
}

int8x16_t TAO_HFSCatalogFolder_BigToHost(unsigned __int16 *a1)
{
  *a1 = bswap32(*a1) >> 16;
  a1[1] = bswap32(a1[1]) >> 16;
  a1[2] = bswap32(a1[2]) >> 16;
  *(a1 + 3) = vrev32q_s8(*(a1 + 3));
  _TAO_DInfo_BigToHost((a1 + 11));
  a1[20] = bswap32(a1[20]) >> 16;
  a1[19] = bswap32(a1[19]) >> 16;
  *(a1 + 21) = bswap32(*(a1 + 21));
  a1[24] = bswap32(a1[24]) >> 16;
  result = vrev32q_s8(*(a1 + 25));
  *(a1 + 25) = result;
  *(a1 + 33) = bswap32(*(a1 + 33));
  return result;
}

int8x16_t _TAO_DInfo_BigToHost(int8x16_t *a1)
{
  result = vrev16q_s8(*a1);
  *a1 = result;
  return result;
}

unsigned __int16 *_TAO_DXInfo_BigToHost(unsigned __int16 *result)
{
  result[1] = bswap32(result[1]) >> 16;
  *result = bswap32(*result) >> 16;
  *(result + 1) = bswap32(*(result + 1));
  result[5] = bswap32(result[5]) >> 16;
  *(result + 3) = bswap32(*(result + 3));
  return result;
}

unsigned __int16 *TAO_HFSCatalogFile_BigToHost(unsigned __int16 *result)
{
  *result = bswap32(*result) >> 16;
  *(result + 2) = vrev32_s8(*(result + 2));
  *(result + 6) = vrev16_s8(*(result + 6));
  *(result + 5) = bswap32(*(result + 5));
  result[12] = bswap32(result[12]) >> 16;
  *(result + 13) = vrev32_s8(*(result + 13));
  result[17] = bswap32(result[17]) >> 16;
  *(result + 18) = vrev32q_s8(*(result + 18));
  *(result + 13) = bswap32(*(result + 13));
  v1 = vrev16_s8(*(result + 28));
  result[33] = bswap32(result[33]) >> 16;
  *(result + 17) = bswap32(*(result + 17));
  result[36] = bswap32(result[36]) >> 16;
  v2 = result + 38;
  v3 = 3;
  *(result + 7) = v1;
  do
  {
    *(v2 - 1) = bswap32(*(v2 - 1)) >> 16;
    *v2 = bswap32(*v2) >> 16;
    v2 += 2;
    --v3;
  }

  while (v3);
  v4 = result + 44;
  v5 = 3;
  do
  {
    *(v4 - 1) = bswap32(*(v4 - 1)) >> 16;
    *v4 = bswap32(*v4) >> 16;
    v4 += 2;
    --v5;
  }

  while (v5);
  *(result + 49) = bswap32(*(result + 49));
  return result;
}

int8x8_t TAO_FInfo_BigToHost(int8x8_t *a1)
{
  result = vrev32_s8(*a1);
  v2 = vrev16_s8(a1[1]);
  *a1 = result;
  a1[1] = v2;
  return result;
}

int8x8_t _TAO_FXInfo_BigToHost(int8x8_t *a1)
{
  result = vrev16_s8(*a1);
  *a1 = result;
  a1[1].i16[1] = bswap32(a1[1].u16[1]) >> 16;
  a1[1].i32[1] = bswap32(a1[1].u32[1]);
  return result;
}

int8x8_t TAO_HFSCatalogThread_BigToHost(unsigned __int16 *a1)
{
  *a1 = bswap32(*a1) >> 16;
  result = vrev32_s8(*(a1 + 1));
  *(a1 + 1) = result;
  *(a1 + 5) = bswap32(*(a1 + 5));
  return result;
}

int8x16_t TAO_JournalInfoBlock_BigToHost(uint64_t a1)
{
  *a1 = bswap32(*a1);
  *(a1 + 4) = vrev32q_s8(*(a1 + 4));
  *(a1 + 20) = vrev32q_s8(*(a1 + 20));
  result = vrev64q_s8(*(a1 + 36));
  *(a1 + 36) = result;
  return result;
}

int8x8_t TAO_HFSPlusExtentKey_BigToHost(unsigned __int16 *a1)
{
  *a1 = bswap32(*a1) >> 16;
  result = vrev32_s8(*(a1 + 2));
  *(a1 + 2) = result;
  return result;
}

int8x8_t TAO_HFSPlusBSDInfo_BigToHost(int8x8_t *a1)
{
  result = vrev32_s8(*a1);
  *a1 = result;
  a1[1].i16[1] = bswap32(a1[1].u16[1]) >> 16;
  a1[1].i32[1] = bswap32(a1[1].u32[1]);
  return result;
}

unsigned __int16 *TAO_HFSPlusCatalogKey_BigToHost(unsigned __int16 *result)
{
  *result = bswap32(*result) >> 16;
  *(result + 1) = bswap32(*(result + 1));
  v1 = result[3];
  LODWORD(v2) = __rev16(v1);
  result[3] = v2;
  if (v1)
  {
    if (v2 >= 0xFF)
    {
      v2 = 255;
    }

    else
    {
      v2 = v2;
    }

    v3 = result + 4;
    do
    {
      *v3 = bswap32(*v3) >> 16;
      ++v3;
      --v2;
    }

    while (v2);
  }

  return result;
}

_WORD *TAO_HFSUniStr255_BigToHost(_WORD *result, unint64_t a2)
{
  if (a2 >= 2)
  {
    v2 = bswap32(*result) >> 16;
    *result = v2;
    if ((a2 - 2) >> 1 < v2)
    {
      LOWORD(v2) = (a2 - 2) >> 1;
    }

    if (v2)
    {
      v3 = result + 1;
      v2 = v2;
      do
      {
        *v3 = bswap32(*v3) >> 16;
        ++v3;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

unsigned __int16 *TAO_HFSPlusCatalogKey_HostToBig(unsigned __int16 *result)
{
  *result = bswap32(*result) >> 16;
  *(result + 1) = bswap32(*(result + 1));
  LODWORD(v1) = result[3];
  result[3] = __rev16(v1);
  if (v1)
  {
    if (v1 >= 0xFF)
    {
      v1 = 255;
    }

    else
    {
      v1 = v1;
    }

    v2 = result + 4;
    do
    {
      *v2 = bswap32(*v2) >> 16;
      ++v2;
      --v1;
    }

    while (v1);
  }

  return result;
}

_WORD *TAO_HFSUniStr255_HostToBig(_WORD *result, unint64_t a2)
{
  if (a2 >= 2)
  {
    v2 = *result;
    *result = __rev16(v2);
    if ((a2 - 2) >> 1 < v2)
    {
      LOWORD(v2) = (a2 - 2) >> 1;
    }

    if (v2)
    {
      v3 = result + 1;
      v2 = v2;
      do
      {
        *v3 = bswap32(*v3) >> 16;
        ++v3;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

int8x8_t TAO_HFSPlusCatalogFolder_BigToHost(unsigned __int16 *a1)
{
  *a1 = bswap32(*a1) >> 16;
  a1[1] = bswap32(a1[1]) >> 16;
  *(a1 + 2) = vrev32q_s8(*(a1 + 2));
  *(a1 + 10) = vrev32q_s8(*(a1 + 10));
  *(a1 + 9) = bswap32(*(a1 + 9));
  a1[21] = bswap32(a1[21]) >> 16;
  *(a1 + 11) = bswap32(*(a1 + 11));
  _TAO_DInfo_BigToHost(a1 + 3);
  a1[33] = bswap32(a1[33]) >> 16;
  a1[32] = bswap32(a1[32]) >> 16;
  *(a1 + 17) = bswap32(*(a1 + 17));
  a1[37] = bswap32(a1[37]) >> 16;
  result = vrev32_s8(*(a1 + 38));
  *(a1 + 38) = result;
  *(a1 + 21) = bswap32(*(a1 + 21));
  return result;
}

double TAO_HFSPlusCatalogFile_BigToHost(unsigned __int16 *a1)
{
  *a1 = bswap32(*a1) >> 16;
  a1[1] = bswap32(a1[1]) >> 16;
  *(a1 + 2) = vrev32q_s8(*(a1 + 2));
  *(a1 + 10) = vrev32q_s8(*(a1 + 10));
  *(a1 + 9) = bswap32(*(a1 + 9));
  a1[21] = bswap32(a1[21]) >> 16;
  *(a1 + 22) = vrev32_s8(*(a1 + 22));
  *(a1 + 13) = bswap32(*(a1 + 13));
  *(a1 + 28) = vrev16q_s8(*(a1 + 28));
  a1[37] = bswap32(a1[37]) >> 16;
  *(a1 + 38) = vrev32_s8(*(a1 + 38));
  TAO_HFSPlusForkData_BigToHost((a1 + 44));

  *&result = TAO_HFSPlusForkData_BigToHost((a1 + 84)).u64[0];
  return result;
}

unsigned __int16 *TAO_HFSPlusCatalogThread_BigToHost(unsigned __int16 *result)
{
  *result = bswap32(*result) >> 16;
  result[1] = bswap32(result[1]) >> 16;
  *(result + 1) = bswap32(*(result + 1));
  v1 = result[4];
  LODWORD(v2) = __rev16(v1);
  result[4] = v2;
  if (v1)
  {
    if (v2 >= 0xFF)
    {
      v2 = 255;
    }

    else
    {
      v2 = v2;
    }

    v3 = result + 5;
    do
    {
      *v3 = bswap32(*v3) >> 16;
      ++v3;
      --v2;
    }

    while (v2);
  }

  return result;
}

unsigned __int16 *TAO_HFSPlusCatalogThread_HostToBig(unsigned __int16 *result)
{
  *result = bswap32(*result) >> 16;
  result[1] = bswap32(result[1]) >> 16;
  *(result + 1) = bswap32(*(result + 1));
  LODWORD(v1) = result[4];
  result[4] = __rev16(v1);
  if (v1)
  {
    if (v1 >= 0xFF)
    {
      v1 = 255;
    }

    else
    {
      v1 = v1;
    }

    v2 = result + 5;
    do
    {
      *v2 = bswap32(*v2) >> 16;
      ++v2;
      --v1;
    }

    while (v1);
  }

  return result;
}

unsigned int *TAO_HFSPlusAttrData_BigToHost(unsigned int *result)
{
  *result = bswap32(*result);
  result[3] = bswap32(result[3]);
  return result;
}

double TAO_HFSPlusAttrForkData_BigToHost(int8x8_t *a1)
{
  *a1 = vrev32_s8(*a1);
  *&result = TAO_HFSPlusForkData_BigToHost(&a1[1]).u64[0];
  return result;
}

int8x16_t TAO_HFSPlusAttrExtents_BigToHost(int8x8_t *a1)
{
  v1 = 0;
  *a1 = vrev32_s8(*a1);
  v2 = a1 + 1;
  do
  {
    v3 = &v2[v1];
    result = vrev32q_s8(*v2[v1 + 2].i8);
    *v3 = vrev32q_s8(*v2[v1].i8);
    v3[1] = result;
    v1 += 4;
  }

  while (v1 != 8);
  return result;
}

void TAO_HFSPlusAttrRecord_BigToHost(unsigned int *a1)
{
  v2 = *a1;
  v3 = bswap32(*a1);
  switch(v3)
  {
    case 0x30u:
      v5 = 0;
      a1[1] = bswap32(a1[1]);
      v6 = a1 + 2;
      do
      {
        v7 = &v6[v5];
        v8 = vrev32q_s8(*&v6[v5 + 4]);
        *v7 = vrev32q_s8(*&v6[v5]);
        v7[1] = v8;
        v5 += 8;
      }

      while (v5 != 16);
      v2 = 48;
      break;
    case 0x20u:
      v4 = bswap32(a1[1]);
      *a1 = 32;
      a1[1] = v4;
      TAO_HFSPlusForkData_BigToHost((a1 + 2));
      v2 = *a1;
      break;
    case 0x10u:
      a1[3] = bswap32(a1[3]);
      v2 = 16;
      break;
  }

  *a1 = bswap32(v2);
}

void TAO_HFSPlusAttrRecord_HostToBig(unsigned int *a1)
{
  v2 = *a1;
  if (*a1 == 48)
  {
    v4 = 0;
    a1[1] = bswap32(a1[1]);
    v5 = a1 + 2;
    do
    {
      v6 = &v5[v4];
      v7 = vrev32q_s8(*&v5[v4 + 4]);
      *v6 = vrev32q_s8(*&v5[v4]);
      v6[1] = v7;
      v4 += 8;
    }

    while (v4 != 16);
    v2 = 805306368;
  }

  else if (v2 == 32)
  {
    v3 = bswap32(a1[1]);
    *a1 = 0x20000000;
    a1[1] = v3;
    TAO_HFSPlusForkData_BigToHost((a1 + 2));
    v2 = *a1;
  }

  else if (v2 == 16)
  {
    a1[3] = bswap32(a1[3]);
    v2 = 0x10000000;
  }

  *a1 = bswap32(v2);
}

int8x8_t TAO_BTNodeDescriptor_BigToHost(int8x8_t *a1)
{
  result = vrev32_s8(*a1);
  *a1 = result;
  a1[1].i16[1] = bswap32(a1[1].u16[1]) >> 16;
  a1[1].i16[2] = bswap32(a1[1].u16[2]) >> 16;
  return result;
}

int8x16_t TAO_BTHeaderRec_BigToHost(unsigned __int16 *a1)
{
  v1 = 0;
  *a1 = bswap32(*a1) >> 16;
  a1[9] = bswap32(a1[9]) >> 16;
  a1[10] = bswap32(a1[10]) >> 16;
  a1[15] = bswap32(a1[15]) >> 16;
  *(a1 + 8) = bswap32(*(a1 + 8));
  *(a1 + 19) = bswap32(*(a1 + 19));
  *(a1 + 1) = vrev32q_s8(*(a1 + 1));
  *(a1 + 11) = vrev32_s8(*(a1 + 11));
  v2 = a1 + 21;
  do
  {
    result = vrev32q_s8(*&v2[v1]);
    *&v2[v1] = result;
    v1 += 8;
  }

  while (v1 != 32);
  return result;
}

size_t readn(int a1, char *a2, size_t a3)
{
  if (a3)
  {
    v6 = a3;
    while (1)
    {
      v7 = read(a1, a2, v6);
      if (v7 < 0)
      {
        if (*__error() != 4)
        {
          return -1;
        }

        v7 = 0;
      }

      else if (!v7)
      {
        return a3 - v6;
      }

      a2 += v7;
      v6 -= v7;
      if (!v6)
      {
        return a3 - v6;
      }
    }
  }

  v6 = 0;
  return a3 - v6;
}

size_t writen(int __fd, char *__buf, size_t __nbyte)
{
  v3 = __nbyte;
  if (__nbyte)
  {
    v6 = __nbyte;
    do
    {
      v7 = write(__fd, __buf, v6);
      if (v7 <= 0)
      {
        if (*__error() != 4)
        {
          return -1;
        }

        v7 = 0;
      }

      __buf += v7;
      v6 -= v7;
    }

    while (v6);
  }

  return v3;
}

_DWORD *TAOpopenl(char *a1, const char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21 = &a9;
  v12 = 8;
  do
  {
    v13 = v21++;
    v12 += 8;
  }

  while (*v13);
  v14 = malloc_type_malloc(v12, 0x9B87C2FEuLL);
  if (v14)
  {
    v15 = v14;
    v22 = &a9;
    *v14 = a3;
    v16 = 1;
    do
    {
      v17 = v22++;
      v18 = *v17;
      v14[v16++] = v18;
    }

    while (v18);
    v19 = TAOpopenv(a1, a2, v14);
    free(v15);
  }

  else
  {
    v19 = 0;
    *__error() = 12;
  }

  return v19;
}

_DWORD *TAOpopenv(char *a1, const char *a2, char *const *a3)
{
  v5 = a1;
  v18 = *MEMORY[0x277D85DE8];
  v6 = strchr(a1, 43);
  if (v6)
  {
    if (socketpair(1, 1, 0, &v16) < 0)
    {
LABEL_16:
      v7 = 0;
      goto LABEL_17;
    }

    v5 = "r+";
  }

  else
  {
    v12 = *v5;
    if (v12 != 119 && v12 != 114 || v5[1] || pipe(&v16) < 0)
    {
      goto LABEL_16;
    }
  }

  v7 = malloc_type_malloc(0x18uLL, 0x10A00408A00E5F2uLL);
  if (!v7)
  {
    close(v16);
    close(v17);
    goto LABEL_17;
  }

  v8 = fork();
  if (v8 == -1)
  {
    close(v16);
    close(v17);
    free(v7);
    goto LABEL_16;
  }

  v9 = v8;
  if (!v8)
  {
    if (*v5 == 114)
    {
      close(v16);
      if (v17 != 1)
      {
        dup2(v17, 1);
        close(v17);
      }

      if (v6)
      {
        dup2(1, 0);
      }
    }

    else
    {
      if (v16)
      {
        dup2(v16, 0);
        close(v16);
      }

      close(v17);
    }

    execv(a2, a3);
    v15 = __error();
    _exit(*v15);
  }

  if (*v5 == 114)
  {
    v10 = fdopen(v16, v5);
    v11 = v17;
  }

  else
  {
    v10 = fdopen(v17, v5);
    v11 = v16;
  }

  close(v11);
  *v7 = v10;
  v7[2] = v9;
LABEL_17:
  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t TAOpclose(void *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v6 = 0;
  fclose(v2);
  do
  {
    v4 = wait4(v3, &v6, 0, 0);
  }

  while (v4 == -1 && *__error() == 4);
  free(a1);
  if (v4 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v6;
  }
}

uint64_t TAOlaccess(const char *a1, int a2)
{
  v9 = 0;
  v8 = 0;
  if (TAObuildgrouplist(&v9, &v8))
  {
    return 1;
  }

  v5 = geteuid();
  v6 = v8;
  v7 = TAOlaccess2(a1, a2, v5, v9, v8);
  free(v6);
  return v7;
}

uint64_t TAObuildgrouplist(int *a1, gid_t **a2)
{
  v4 = malloc_type_malloc(0x40uLL, 0x100004052888210uLL);
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  v6 = getgroups(16, v4);
  if (v6 < 0)
  {
    return 1;
  }

  v7 = v6;
  result = 0;
  *a1 = v7;
  *a2 = v5;
  return result;
}

uint64_t TAOlaccess2(const char *a1, int a2, int a3, int a4, int *a5)
{
  memset(&v13, 0, sizeof(v13));
  if (lstat(a1, &v13) < 0)
  {
    return *__error();
  }

  if (v13.st_uid == a3)
  {
    if (((~(v13.st_mode >> 6) | 0xFFFFFFF8) & a2) != 0)
    {
      return 13;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (a4 < 1)
    {
LABEL_11:
      v12 = 0;
    }

    else
    {
      v10 = a4;
      while (1)
      {
        v11 = *a5++;
        if (v11 == v13.st_gid)
        {
          break;
        }

        if (!--v10)
        {
          goto LABEL_11;
        }
      }

      if (((~(v13.st_mode >> 3) | 0xFFFFFFF8) & a2) == 0)
      {
        return 0;
      }

      v12 = 13;
    }

    if (((~LOBYTE(v13.st_mode) | 0xFFFFFFF8) & a2) != 0)
    {
      return 13;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t TAOsystemv(const char *a1, char *const *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = TAOpopenv("r", a1, a2);
  if (fgets(v6, 1024, *v2))
  {
    v3 = MEMORY[0x277D85E08];
    do
    {
      fputs(v6, *v3);
    }

    while (fgets(v6, 1024, *v2));
  }

  result = TAOpclose(v2);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t IONewBuffer(const void ***a1, unsigned int a2)
{
  v4 = malloc_type_malloc(0xA0uLL, 0x10F0040F7EB2C67uLL);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  *(v4 + 26) = a2;
  v6 = malloc_type_valloc(a2, 0x98A2C8A7uLL);
  v5[14] = v6;
  if (!v6)
  {
    free(v5);
LABEL_6:
    *a1 = 0;
    return *__error();
  }

  v7 = mprotect(v6, a2, 3);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = mlock(v5[14], a2);
    if (!v8)
    {
      *a1 = v5;
      return v8;
    }
  }

  v9 = v5[14];
  if (v9)
  {
    free(v9);
  }

  free(v5);
  *a1 = 0;
  if (v8 == -1)
  {
    return *__error();
  }

  return v8;
}

uint64_t IOJobCopyInfo(pthread_mutex_t *a1, const __CFArray *a2, CFMutableDictionaryRef *a3)
{
  *a3 = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v8[0] = Mutable;
  v8[1] = a1;
  pthread_mutex_lock(a1);
  v9.length = CFArrayGetCount(a2);
  v9.location = 0;
  CFArrayApplyFunction(a2, v9, DictKeyFiller, v8);
  pthread_mutex_unlock(a1);
  *a3 = Mutable;
  return 0;
}

uint64_t iCacheDispose(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    free(v2);
  }

  free(a1);
  return 0;
}

void InfoFillerGetStateName(uint64_t a1, const void *a2, __CFDictionary *a3)
{
  v5 = *MEMORY[0x277CBECE8];
  v6 = *(a1 + 168);
  if (v6 >= 6)
  {
    v6 = 6;
  }

  v7 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], off_2798A20B0[v6], 0x600u);
  CFDictionaryAddValue(a3, a2, v7);

  CFRelease(v7);
}

void InfoFillerGetCurInstrNum(uint64_t a1, const void *a2, __CFDictionary *a3)
{
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, (a1 + 172));
  CFDictionaryAddValue(a3, a2, v5);

  CFRelease(v5);
}

void InfoFillerGetTotalBlocks(uint64_t a1, const void *a2, __CFDictionary *a3)
{
  valuePtr = *(a1 + 200);
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &valuePtr);
  CFDictionaryAddValue(a3, a2, v5);
  CFRelease(v5);
}

void InfoFillerGetProcessed(uint64_t a1, const void *a2, __CFDictionary *a3)
{
  valuePtr = *(a1 + 208);
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &valuePtr);
  CFDictionaryAddValue(a3, a2, v5);
  CFRelease(v5);
}

void InfoFillerGetStatusCode(uint64_t a1, const void *a2, __CFDictionary *a3)
{
  valuePtr = *(a1 + 532);
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
  CFDictionaryAddValue(a3, a2, v5);
  CFRelease(v5);
}

void InfoFillerGetTime(uint64_t a1, const void *a2, __CFDictionary *a3)
{
  if (*(a1 + 168) >= 2u)
  {
    v7 = *(a1 + 192);
    if (!v7)
    {
      v7 = time(0);
    }

    v5 = v7 - *(a1 + 184);
  }

  else
  {
    v5 = -1;
  }

  valuePtr = v5;
  v8 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &valuePtr);
  CFDictionaryAddValue(a3, a2, v8);
  CFRelease(v8);
}

void InfoFillerGetThreadCount(uint64_t a1, const void *a2, __CFDictionary *a3)
{
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt16Type, (a1 + 248));
  CFDictionaryAddValue(a3, a2, v5);

  CFRelease(v5);
}

void InfoFillerGetBufferCount(uint64_t a1, const void *a2, __CFDictionary *a3)
{
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt16Type, (a1 + 250));
  CFDictionaryAddValue(a3, a2, v5);

  CFRelease(v5);
}

void InfoFillerGetBufferSize(uint64_t a1, const void *a2, __CFDictionary *a3)
{
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, (a1 + 244));
  CFDictionaryAddValue(a3, a2, v5);

  CFRelease(v5);
}

void InfoFillerGetBlockSize(uint64_t a1, const void *a2, __CFDictionary *a3)
{
  valuePtr = *(a1 + 240);
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
  CFDictionaryAddValue(a3, a2, v5);
  CFRelease(v5);
}

void InfoFillerGetPercentThreshold(uint64_t a1, const void *a2, __CFDictionary *a3)
{
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt16Type, (a1 + 252));
  CFDictionaryAddValue(a3, a2, v5);

  CFRelease(v5);
}

void InfoFillerGetTimeThreshold(uint64_t a1, const void *a2, __CFDictionary *a3)
{
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt16Type, (a1 + 254));
  CFDictionaryAddValue(a3, a2, v5);

  CFRelease(v5);
}

void InfoFillerGetChecksum(uint64_t a1, const void *a2, __CFDictionary *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 544))
  {
    v24 = 0u;
    v25 = 0u;
    *bytes = 0u;
    v23 = 0u;
    v6 = *(a1 + 552);
    v7 = (a1 + 376);
    v8 = (a1 + 376);
    while (1)
    {
      v8 = *v8;
      if (!v8)
      {
        break;
      }

      if (*(v8 + 2) == v6)
      {
        v9 = *(a1 + 256);
        if (*v9 > v6)
        {
          v10 = InstructionTable;
          if (InstructionTable)
          {
            v11 = LOWORD(v9[12 * v6 + 2]);
            v12 = &word_27F956EE4;
            while (*v12 != v11)
            {
              --v10;
              v12 += 26;
              if (!v10)
              {
                goto LABEL_32;
              }
            }

            if (*(v12 + 9))
            {
              LODWORD(v13) = v12[20];
              if (v12[20])
              {
                v14 = 0;
                v15 = 0;
                do
                {
                  while (1)
                  {
                    if (StepTable)
                    {
                      v16 = &off_281DA9AC8;
                      v17 = StepTable;
                      while (*(v16 - 20) != v12[v14 + 21])
                      {
                        --v17;
                        v16 += 6;
                        if (!v17)
                        {
                          goto LABEL_20;
                        }
                      }

                      if (*(v16 - 3))
                      {
                        break;
                      }
                    }

LABEL_20:
                    if (++v14 >= v13)
                    {
                      if (v15)
                      {
                        goto LABEL_26;
                      }

                      goto LABEL_32;
                    }
                  }

                  if ((*v16)(v8[2], 4))
                  {
                    goto LABEL_32;
                  }

                  v13 = v12[20];
                  ++v14;
                  v15 = 1;
                }

                while (v14 < v13);
LABEL_26:
                while (1)
                {
                  v7 = *v7;
                  if (!v7)
                  {
                    break;
                  }

                  if (*(v7 + 2) == *(a1 + 552))
                  {
                    v18 = *v7[2] - 4;
                    if (v18 >= 5)
                    {
                      *bytes = bswap32(*bytes);
                      v19 = 4;
                    }

                    else
                    {
                      v19 = qword_2586A0818[v18];
                    }

                    v20 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, v19);
                    CFDictionaryAddValue(a3, a2, v20);
                    CFRelease(v20);
                    goto LABEL_32;
                  }
                }
              }
            }
          }
        }

        break;
      }
    }
  }

LABEL_32:
  v21 = *MEMORY[0x277D85DE8];
}

void InfoFillerGetSkipSize(uint64_t a1, const void *a2, __CFDictionary *a3)
{
  valuePtr = *(a1 + 216);
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &valuePtr);
  CFDictionaryAddValue(a3, a2, v5);
  CFRelease(v5);
}

void InfoFillerGetSkipInstrs(uint64_t a1, uint64_t a2, __CFDictionary *a3)
{
  v18 = 0;
  valuePtr = 0;
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (*(a1 + 280))
  {
    v6 = *(a1 + 288);
    if (*v6)
    {
      v7 = 0;
      v8 = v6 + 2;
      do
      {
        v9 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        valuePtr = *v8;
        v10 = CFNumberCreate(v4, kCFNumberSInt16Type, &valuePtr);
        CFDictionaryAddValue(v9, @"Instruction Code", v10);
        CFRelease(v10);
        v11 = *(v8 + 1);
        if (v11)
        {
          CFDictionaryAddValue(v9, @"Source Device", v11);
        }

        v12 = *(v8 + 2);
        if (v12)
        {
          CFDictionaryAddValue(v9, @"Target Device", v12);
        }

        v18 = *(v8 + 3);
        v13 = CFNumberCreate(v4, kCFNumberSInt64Type, &v18);
        CFDictionaryAddValue(v9, @"Block Count", v13);
        CFRelease(v13);
        v18 = *(v8 + 4);
        v14 = CFNumberCreate(v4, kCFNumberSInt64Type, &v18);
        CFDictionaryAddValue(v9, @"Source Offset", v14);
        CFRelease(v14);
        v18 = *(v8 + 5);
        v15 = CFNumberCreate(v4, kCFNumberSInt64Type, &v18);
        CFDictionaryAddValue(v9, @"Target Offset", v15);
        CFRelease(v15);
        CFArrayAppendValue(Mutable, v9);
        CFRelease(v9);
        ++v7;
        v8 += 12;
      }

      while (v7 < **(a1 + 288));
    }
  }

  CFDictionaryAddValue(a3, @"Skip Instructions", Mutable);
  CFRelease(Mutable);
}

uint64_t IOCV(int *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 *a9, uint64_t a10)
{
  if (a2 == 4)
  {
    if (*(a10 + 544))
    {
      v22 = &off_2869A9F28;
      do
      {
        v24 = *(v22 + 8);
        v22 += 4;
        v23 = v24;
      }

      while (v24 != -1 && v23 != *a1);
      if (v23 == -1)
      {
        v26 = &ChecksumDescriptors;
      }

      else
      {
        v26 = v22;
      }

      (*(v26 + 3))(a9);
      return 0;
    }

    return 22;
  }

  if (a2 != 3)
  {
    if (a2 != 1)
    {
      return 0;
    }

    v11 = *(a9 + 19);
    if (v11)
    {
      v12 = *(a9 + 18) * *(a9 + 22);
      v13 = *a1;
      v14 = *(a9 + 14);
      if (v13 > 4)
      {
        if (v13 <= 6)
        {
          if (v13 == 5)
          {
            CC_SHA224_Update(v11, v14, v12);
          }

          else
          {
            CC_SHA256_Update(v11, v14, v12);
          }

          return 0;
        }

        if (v13 == 7)
        {
          CC_SHA384_Update(v11, v14, v12);
          return 0;
        }

        if (v13 == 8)
        {
          CC_SHA512_Update(v11, v14, v12);
          return 0;
        }

LABEL_43:
        MKBlockChecksum(v11, v14, v12);
        return 0;
      }

      if (v13 == 2)
      {
        MKBlockChecksum2(v11, v14, v12);
        return 0;
      }

      if (v13 == 3)
      {
        MKImageChecksum(v11, v14, v12);
        return 0;
      }

      if (v13 != 4)
      {
        goto LABEL_43;
      }

      CC_SHA1_Update(v11, v14, v12);
      return 0;
    }

    return 22;
  }

  v15 = *a9;
  *a1 = v15;
  if (*(a10 + 544))
  {
    return 0;
  }

  v16 = &off_2869A9F28;
  do
  {
    v18 = *(v16 + 8);
    v16 += 4;
    v17 = v18;
  }

  while (v18 != -1 && v17 != v15);
  if (v17 == -1)
  {
    v20 = &ChecksumDescriptors;
  }

  else
  {
    v20 = v16;
  }

  v21 = malloc_type_malloc(*(v20 + 1), 0xB4F70D32uLL);
  *(a10 + 544) = v21;
  if (v21)
  {
    (*(v20 + 2))();
    return 0;
  }

  return 12;
}

uint64_t IOSetParams(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 256);
  if (*v2 <= a2)
  {
    return 22;
  }

  v3 = InstructionTable;
  if (!InstructionTable)
  {
    return 2;
  }

  v6 = LOWORD(v2[12 * a2 + 2]);
  for (i = &word_27F956EE4; *i != v6; i += 26)
  {
    if (!--v3)
    {
      return 2;
    }
  }

  v9 = (a1 + 376);
  while (1)
  {
    v9 = *v9;
    if (!v9)
    {
      break;
    }

    if (*(v9 + 2) == a2)
    {
      result = 6;
      v10 = v9;
      if (!*(i + 9))
      {
        return result;
      }

      goto LABEL_16;
    }
  }

  v16 = 0;
  if (!*(i + 9))
  {
    return 6;
  }

  result = BuildiCache(i, &v16);
  v10 = v16;
  if (!v16)
  {
    return result;
  }

LABEL_16:
  *(v10 + 2) = a2;
  v11 = i[20];
  if (i[20])
  {
    v12 = 0;
    v13 = StepTable;
    do
    {
      if (v13)
      {
        v14 = &off_281DA9AC8;
        v15 = v13;
        while (*(v14 - 20) != i[v12 + 21])
        {
          --v15;
          v14 += 6;
          if (!v15)
          {
            goto LABEL_27;
          }
        }

        if (*(v14 - 3))
        {
          result = (*v14)(v10[2], 3);
          if (result)
          {
            return result;
          }

          v13 = StepTable;
          v11 = i[20];
        }
      }

      else
      {
        v13 = 0;
      }

LABEL_27:
      ++v12;
    }

    while (v12 < v11);
  }

  if (!v9 && !result)
  {
    stkputbtm(a1 + 368, v10);
    return 0;
  }

  return result;
}

const char *ISOCodeSearch(int a1)
{
  if (a1 == 32769)
  {
    return "ISO SYSTEM AREA";
  }

  v3 = &off_2798A2100;
  do
  {
    result = *v3;
    if (!*v3)
    {
      break;
    }

    v4 = *(v3 - 4);
    v3 += 2;
  }

  while (v4 != a1);
  return result;
}

unsigned __int16 *ISODescriptorSearch(char *a1)
{
  result = PMLookupDESC(a1, 0, &ISODescriptors);
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t ISOCategorize(int a1)
{
  v1 = &ISODescriptors;
  while (*v1 != a1)
  {
    v2 = *(v1 + 3);
    v1 += 8;
    if (!v2)
    {
      v1 = &unk_2798A2158;
      return v1[1];
    }
  }

  return v1[1];
}

uint64_t ISOSetupNewPartitionList(const void **a1, int a2, unsigned __int16 a3)
{
  if ((a3 & 0x1FF) != 0)
  {
    return 5;
  }

  v4 = *a1;
  v4[128] = 2097668;
  *(v4 + 259) = a3;
  *(v4 + 260) = 0x7FFF;
  *(v4 + 1) = a3;
  v4[1] = a2;
  *(v4 + 250) = a3 >> 9;
  return PMGenPartitionType(a1, 32769, 0, 16, 0x800u, 0, 0, 0, 0xFFFFu);
}

uint64_t defaultvd2pmrecord(uint64_t a1, unsigned __int8 *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 554) = *a2;
  return 0;
}

uint64_t VReadISOPartitionsII(const void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, void, uint64_t, _BYTE *))
{
  if ((*(a3 + 4) & 0x1FF) != 0)
  {
    LOWORD(v5) = 5;
    return v5;
  }

  v10 = malloc_type_malloc(0x800uLL, 0x44ED2E31uLL);
  if (!v10)
  {
    goto LABEL_31;
  }

  v11 = v10;
  v12 = malloc_type_calloc(1uLL, 0x430uLL, 0x10800402BBFFE52uLL);
  if (!v12)
  {
    free(v11);
    goto LABEL_31;
  }

  v13 = v12;
  v14 = 0;
  v15 = 0x800u / *(a3 + 4);
  for (i = -1; i < 0x20; ++i)
  {
    v17 = a5(a4, 2, 2048, i + 17, 1, v11);
    if (v17)
    {
      break;
    }

    bzero(v13, 0x430uLL);
    if (strncmp(v11 + 1, "CD001", 5uLL))
    {
      break;
    }

    *(v13 + 253) = i + 1;
    *(v13 + 252) = -1;
    *(v13 + 117) = 2;
    v18 = *v11;
    if (v18 > 1)
    {
      if (v18 != 2)
      {
        if (v18 == 255)
        {
          break;
        }

        continue;
      }
    }

    else
    {
      if (!*v11)
      {
        *(v13 + 1) = *(v11 + 71);
        *(v13 + 277) = 0;
        v23 = PMCodeSearch(0, 32);
        strncpypad(v13 + 48, v23, 0x20uLL, 0);
        strncpypad(v13 + 16, v11 + 7, 0x20uLL, 0);
        v24 = malloc_type_malloc(0x800uLL, 0x3D2BF525uLL);
        *(v13 + 55) = v24;
        if (!v24)
        {
LABEL_28:
          LOWORD(v25) = -1;
LABEL_29:
          v5 = v25;
          goto LABEL_30;
        }

        memcpy(v24, v11, 0x800uLL);
        goto LABEL_17;
      }

      if (v18 != 1)
      {
        continue;
      }

      *(*a1 + 259) = *(v11 + 64);
      *(v13 + 117) = 0;
    }

    v19 = (*(v11 + 20) - 16) * v15;
    *(v13 + 2) = 16 * v15;
    *(v13 + 3) = v19;
    *(v13 + 277) = v18;
    *(v13 + 84) = v19;
    v20 = PMCodeSearch(v18, 32);
    strncpypad(v13 + 48, v20, 0x20uLL, 0);
    v21 = strntrim(v11 + 40, 32);
    strncpypad(v13 + 16, v21, 0x20uLL, 0);
    v22 = malloc_type_malloc(0x800uLL, 0xD0CDA70CuLL);
    *(v13 + 55) = v22;
    if (!v22)
    {
      goto LABEL_28;
    }

    memcpy(v22, v11, 0x800uLL);
    MEMORY[0x259C86EE0](v13 + 448);
LABEL_17:
    if (!v14)
    {
      v25 = ISOSetupNewPartitionList(a1, *(a3 + 8), *(a3 + 4));
      if (v25)
      {
        goto LABEL_29;
      }
    }

    LOWORD(v25) = addentry(a1, v13, 0x210uLL, 0x20Au, 0xFFFFu, 0x430u);
    if (v25)
    {
      goto LABEL_29;
    }

    ++v14;
  }

  if (v17 | v14)
  {
    v5 = v17;
  }

  else
  {
    v5 = -5343;
  }

LABEL_30:
  free(v11);
  free(v13);
  if (v5 == -1)
  {
LABEL_31:
    v5 = *__error();
  }

  return v5;
}

uint64_t ISOWriteMedia(Ptr *a1, int a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void, uint64_t, uint64_t, _BYTE *))
{
  v31 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v8 = malloc_type_calloc(1uLL, 0x800uLL, 0x43D6E7C8uLL);
    if (v8)
    {
      v9 = v8;
      v10 = HGetState(a1);
      HLock(a1);
      v11 = *a1;
      if (*(*a1 + 257) != 32 || a2 != 0xFFFF && (a2 & 0x100) != 0)
      {
        LOWORD(v12) = -50;
        goto LABEL_7;
      }

      v26 = v9;
      v27 = *(v11 + 259);
      if (*(v11 + 261))
      {
        v15 = 0;
        v16 = v11 + 544;
        v17 = 16;
        v12 = -50;
        while (1)
        {
          v18 = *(v16 + 269);
          if ((v18 - 1) < 2)
          {
            break;
          }

          if (!*(v16 + 269))
          {
            if (v17 != 17)
            {
              LOWORD(v12) = -5323;
              v9 = v26;
              goto LABEL_7;
            }

            v25 = *(v16 + 53);
            *v25 = 0;
            *(v25 + 1) = 808469571;
            *(v25 + 5) = 305;
            strncpypad((v25 + 7), "EL TORITO SPECIFICATION", 0x20uLL, 0);
            *(v25 + 71) = *(v16 - 2);
            goto LABEL_25;
          }

          if (v18 == 255)
          {
            goto LABEL_30;
          }

          v19 = *(v16 + 53);
          if (v19)
          {
            *v19 = v18;
            *(v19 + 1) = 808469571;
            *(v19 + 5) = 305;
LABEL_25:
            v12 = a4(a3, 3, v27, v17, 1, *(v16 + 53));
            if (v12)
            {
              goto LABEL_30;
            }

            v17 = (v17 + 1);
          }

          ++v15;
          v16 += 1072;
          if (v15 >= *(v11 + 261))
          {
            goto LABEL_30;
          }
        }

        v20 = *(v16 + 53);
        *v20 = v18;
        *(v20 + 1) = 808469571;
        *(v20 + 5) = 305;
        strncpypad((v20 + 40), v16, 0x20uLL, 32);
        strncpypad((v20 + 8), "Mac OS X", 0x20uLL, 32);
        if (*(v20 + 318) <= 32)
        {
          strncpypad((v20 + 318), "Apple Computer Inc.", 0x20uLL, 32);
        }

        strncpypad((v20 + 446), "ei7dkb", 0x80uLL, 32);
        v21 = *(v16 - 1);
        *(v20 + 80) = v21;
        *(v20 + 84) = bswap32(v21);
        *(v20 + 120) = 0x100000101000001;
        v22 = *(v11 + 259);
        *(v20 + 128) = v22;
        *(v20 + 130) = bswap32(v22) >> 16;
        v28 = time(0);
        v23 = localtime(&v28);
        tm_gmtoff = v23->tm_gmtoff;
        __sprintf_chk(v29, 0, 0x21uLL, "%4.4d%2.2d%2.2d%2.2d%2.2d%2.2d00-", v23->tm_year + 1900, v23->tm_mon + 1, v23->tm_mday, v23->tm_hour, v23->tm_min, v23->tm_sec);
        v30 = ((((tm_gmtoff * 0x48D159E26AF37C05) >> 64) & 0x8000000000000000) != 0) + (((tm_gmtoff * 0x48D159E26AF37C05) >> 64) >> 8);
        if (!*(v20 + 813))
        {
          *(v20 + 813) = *v29;
          *(v20 + 829) = v30;
        }

        *(v20 + 846) = v30;
        *(v20 + 830) = *v29;
        *(v20 + 881) = 1;
        goto LABEL_25;
      }

      v12 = -50;
      v17 = 16;
LABEL_30:
      v9 = v26;
      if (!v12)
      {
        *(v26 + 1) = 808469571;
        *(v26 + 5) = 305;
        *v26 = -1;
        LOWORD(v12) = a4(a3, 3, v27, v17, 1, v26);
      }

LABEL_7:
      free(v9);
    }

    else
    {
      v10 = 0;
      LOWORD(v12) = -1;
    }
  }

  else
  {
    v10 = 0;
    LOWORD(v12) = -109;
  }

  HSetState(a1, v10);
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t ISOReadMedia(const void ***a1, unsigned int a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void, uint64_t, _BYTE *))
{
  memset(v12, 0, sizeof(v12));
  if (a2 == 0xFFFF)
  {
    v7 = 3584;
  }

  else
  {
    v7 = a2;
  }

  result = a4(a3, 15, 2048, 0, 0, v12);
  if (result)
  {
    v9 = 0;
  }

  else
  {
    v9 = NewHandleClear(528);
    result = MemError();
    if (v9)
    {
      v11 = *v9;
      v11[128] = 33554948;
      *(v11 + 259) = WORD2(v12[0]);
      result = VReadISOPartitionsII(v9, v10, v12, a3, a4);
      if (!result)
      {
        if ((v7 & 0x10) == 0 || (result = PMAccountFreespace(v9, 0, v7), !result))
        {
          if ((v7 & 0x80) != 0)
          {
            result = PMRationalise(v9);
          }

          else
          {
            result = 0;
          }
        }
      }
    }
  }

  *a1 = v9;
  return result;
}

uint64_t ISOCFRecordSections(const UInt8 *a1, __CFArray *a2)
{
  v2 = 0xFFFFFFFFLL;
  if (!a2)
  {
    return v2;
  }

  v4 = *a1;
  if (!*a1)
  {
    return v2;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    return v2;
  }

  v7 = Mutable;
  CFDictionarySetValue(Mutable, @"ID", @"MAP");
  v8 = *(v4 + 2) >> 9;
  v9 = *(v4 + 4);
  valuePtr = 16 * v8;
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  if (!v10)
  {
    goto LABEL_33;
  }

  v11 = v10;
  CFDictionarySetValue(v7, @"Offset", v10);
  CFRelease(v11);
  MKCFRecordSectionSize(v7, valuePtr, valuePtr, (v9 * v8), (v9 * v8), *(v4 + 518));
  v12 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (!v12)
  {
    goto LABEL_33;
  }

  v13 = v12;
  CFDictionarySetValue(v7, @"Partitions", v12);
  CFRelease(v13);
  v39 = 0;
  v40 = 0;
  v37 = *a1;
  v14 = *(*a1 + 522);
  if (!*(*a1 + 522))
  {
LABEL_28:
    mkcfstoreref(v7, a1);
    v2 = 0;
    goto LABEL_33;
  }

  v15 = 0;
  v16 = *a1;
  v17 = *(v37 + 2) >> 9;
  v41 = 0;
  while (1)
  {
    v18 = v37 + 528 + 1072 * v15;
    v19 = &ISODescriptors;
    while (*v19 != *(v18 + 554))
    {
      v20 = *(v19 + 3);
      v19 += 8;
      if (!v20)
      {
        v19 = &unk_2798A2158;
        break;
      }
    }

    if (v19[1] != 2)
    {
      goto LABEL_27;
    }

    v21 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!v21)
    {
      v2 = 0xFFFFFFFFLL;
      goto LABEL_33;
    }

    v22 = v21;
    v23 = CFDictionarySetUUID(v21, @"GUID", (v18 + 448));
    if (v23)
    {
      break;
    }

    if (*(v18 + 506) < 0)
    {
      v41 = 0;
    }

    else
    {
      v24 = *(v18 + 506) + 1;
      v41 = v24 / v17;
      if (v17 <= v24)
      {
        v25 = CFNumberCreate(0, kCFNumberSInt16Type, &v41);
        if (v25)
        {
          v26 = v25;
          CFDictionarySetValue(v22, @"Partition ID", v25);
          CFRelease(v26);
        }
      }
    }

    if (*(v18 + 16))
    {
      v27 = CFStringCreateWithCString(0, (v18 + 16), 0);
      if (!v27)
      {
        goto LABEL_29;
      }

      v28 = v27;
      CFDictionarySetValue(v22, @"Name", v27);
      CFRelease(v28);
    }

    v29 = CFStringCreateWithCString(0, (v18 + 48), 0);
    if (!v29)
    {
      goto LABEL_29;
    }

    v30 = v29;
    CFDictionarySetValue(v22, @"Type", v29);
    CFRelease(v30);
    v31 = *(v18 + 12);
    v40 = *(v18 + 8) * v17;
    v39 = v31 * v17;
    v32 = CFNumberCreate(0, kCFNumberSInt64Type, &v40);
    if (!v32 || (v33 = v32, CFDictionarySetValue(v22, @"Offset", v32), CFRelease(v33), (v34 = CFNumberCreate(0, kCFNumberSInt64Type, &v39)) == 0))
    {
LABEL_29:
      v2 = 22;
      goto LABEL_32;
    }

    v35 = v34;
    CFDictionarySetValue(v22, @"Size", v34);
    CFRelease(v35);
    CFArrayAppendValue(v13, v22);
    CFRelease(v22);
    v14 = *(v37 + 522);
LABEL_27:
    if (++v15 >= v14)
    {
      goto LABEL_28;
    }
  }

  v2 = v23;
LABEL_32:
  CFRelease(v22);
LABEL_33:
  CFArrayAppendValue(a2, v7);
  CFRelease(v7);
  return v2;
}

uint64_t stksearch(uint64_t a1, void *a2)
{
  v2 = (a1 + 8);
  v3 = -1;
  do
  {
    v2 = *v2;
    ++v3;
    if (v2)
    {
      v4 = v2 == a2;
    }

    else
    {
      v4 = 1;
    }
  }

  while (!v4);
  if (v2)
  {
    return v3;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void *stklocate(uint64_t a1, int a2)
{
  result = *(a1 + 8);
  v3 = a2 + 1;
  do
  {
    if (!--v3)
    {
      break;
    }

    result = *result;
  }

  while (result);
  return result;
}

uint64_t stkputtop(uint64_t result, void *a2)
{
  if (a2)
  {
    v2 = *(result + 16);
    *a2 = *(result + 8);
    *(result + 8) = a2;
    if (!v2)
    {
      *(result + 16) = a2;
    }

    ++*(result + 2);
  }

  return result;
}

uint64_t stkenqueue(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    if (!a3)
    {
      v3 = *(a1 + 16);
      *(a1 + 16) = a2;
      *a2 = 0;
      if (!v3)
      {
        v3 = (a1 + 8);
      }

      goto LABEL_12;
    }

    if (a3 == -1)
    {
      v3 = (a1 + 16);
      v4 = *(a1 + 16);
      *a2 = *(a1 + 8);
      *(a1 + 8) = a2;
      if (!v4)
      {
        goto LABEL_12;
      }
    }

    else
    {
      *a2 = *a3;
      *a3 = a2;
      if (!*a2)
      {
        v3 = (a1 + 16);
LABEL_12:
        *v3 = a2;
      }
    }

    v5 = 0;
    ++*(a1 + 2);
    return v5;
  }

  return 22;
}

uint64_t stkdequeue(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = (a1 + 8);
    do
    {
      v4 = v2;
      v3 = *v3;
      if (v3)
      {
        v5 = v3 == a2;
      }

      else
      {
        v5 = 1;
      }

      v2 = v3;
    }

    while (!v5);
    if (v3)
    {
      v6 = *v3;
      if (v4)
      {
        *v4 = v6;
        if (!v6)
        {
          goto LABEL_15;
        }
      }

      else
      {
        *(a1 + 8) = v6;
        if (!v6)
        {
          v4 = 0;
LABEL_15:
          *(a1 + 16) = v4;
        }
      }

      v7 = 0;
      --*(a1 + 2);
      return v7;
    }
  }

  return 22;
}

uint64_t stkiterate(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *(a1 + 8);
  while (v4)
  {
    v5 = *v4;
    v6 = a3();
    v4 = v5;
    if (v6)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t stkdestroy(uint64_t a1)
{
  if (!a1)
  {
    return 22;
  }

  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *(a1 + 2);
    do
    {
      v1 = *v1;
      --v2;
    }

    while (v1);
    *(a1 + 2) = v2;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  return v1;
}

uint64_t stkinit(void *a1)
{
  if (!a1)
  {
    return 22;
  }

  result = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return result;
}

double DOSPBR_LtoN(char *__dst, char *__src)
{
  if (__dst != __src)
  {
    memcpy(__dst, __src, 0x200uLL);
  }

  v4 = 0;
  *(__dst + 255) = *(__src + 255);
  do
  {
    result = *&__src[v4 + 454];
    *&__dst[v4 + 454] = result;
    v4 += 16;
  }

  while (v4 != 64);
  return result;
}

uint64_t MBRFSDetect(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, int *a5)
{
  if (*(a2 + 255) == 43605)
  {
    v5 = *a5;
    *a5 += 2500;
    v6 = *a2;
    if (v6 == 233 || v6 == 235 && a2[2] == 144)
    {
      *a5 = v5 + 5000;
    }
  }

  return 0;
}

uint64_t MBRSetBootloader(uint64_t a1, uint64_t a2, unint64_t a3, void *__src)
{
  if (!a1)
  {
    return 22;
  }

  result = 22;
  if ((a2 & 0x8000000000000000) == 0 && *(a1 + 514) == 8)
  {
    if (*(a1 + 1082) == -32768)
    {
      v9 = *(a1 + 968);
      if (v9 || (v11 = malloc_type_calloc(1uLL, 0x200uLL, 0x10000407EBBDD04uLL), (*(a1 + 968) = v11) == 0))
      {
        if (446 - a2 >= a3)
        {
          v10 = a3;
        }

        else
        {
          v10 = 446 - a2;
        }

        memcpy((v9 + a2), __src, v10);
        return 0;
      }

      else
      {
        return *__error();
      }
    }

    else
    {
      return 4294961973;
    }
  }

  return result;
}

uint64_t MBRGetBootloader(uint64_t a1, void *a2)
{
  *a2 = 0;
  if (!a1)
  {
    return 22;
  }

  if (*(a1 + 514) != 8)
  {
    return 22;
  }

  if (*(a1 + 1082) != -32768)
  {
    return 4294961973;
  }

  if (!*(a1 + 968))
  {
    return 0;
  }

  v4 = malloc_type_calloc(1uLL, 0x200uLL, 0x10000407EBBDD04uLL);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  memcpy(v4, *(a1 + 968), 0x1BEuLL);
  result = 0;
  *a2 = v5;
  return result;
}

uint64_t MBRSetBootloaderFile(uint64_t a1, char *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = open(a2, 0, 0);
  if (v3 < 0)
  {
    goto LABEL_6;
  }

  v4 = v3;
  v5 = read(v3, __src, 0x1BEuLL);
  if (v5 == -1)
  {
    close(v4);
LABEL_6:
    v6 = *__error();
    goto LABEL_7;
  }

  v6 = MBRSetBootloader(a1, 0, v5, __src);
  close(v4);
  if (v6 == -1)
  {
    goto LABEL_6;
  }

LABEL_7:
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t WriteDOSExtendedChain(unsigned __int16 *a1, __int16 *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, size_t))
{
  v14 = a1[1];
  v15 = malloc_type_calloc(1uLL, v14, 0xC2F2E8DEuLL);
  if (!v15)
  {
    return 12;
  }

  v16 = v15;
  v17 = 0;
  v38 = -1;
  v39 = 0;
  v40 = -1;
  v18 = *a2;
  *(v15 + 255) = -21931;
  if (*a2 >= a1[261])
  {
LABEL_25:
    *(a3 + 12) = v17 - *(a3 + 8);
    v32 = a7(a6, 3, v14);
    goto LABEL_26;
  }

  v34 = a4;
  v36 = a7;
  v37 = a6;
  v19 = 0;
  v20 = v15 + 446;
  v21 = &a1[536 * v18 + 308];
  v35 = a3;
  while (1)
  {
    v22 = *(v21 + 466);
    if (v22 == 5 || (v22 != 133 ? (v23 = v22 == 15) : (v23 = 1), v23))
    {
      v24 = *(v21 + 352);
      if (v24)
      {
        memcpy(v16, v24, 0x1BEuLL);
      }

      goto LABEL_23;
    }

    if (v22 >> 12 <= 4)
    {
      break;
    }

LABEL_23:
    v21 += 1072;
    v31 = *a2 + 1;
    *a2 = v31;
    if (a1[261] <= v31)
    {
LABEL_24:
      v17 = v39;
      a6 = v37;
      goto LABEL_25;
    }
  }

  if ((*(v21 + 3) & 2) == 0)
  {
    goto LABEL_24;
  }

  if (v19)
  {
    *(v20 + 4) = 5;
    v25 = v39;
    v26 = v39 + 1;
    *(v20 + 8) = v39;
    *(v20 + 12) = 1;
    if (v25 >= *(v21 - 80))
    {
      *(v35 + 12) = v26 - *(v35 + 8);
      v32 = -5323;
      goto LABEL_26;
    }

    v27 = WriteDOSExtendedChain(a1, a2, v20, v34, a5, v37, a7);
    if (v27)
    {
      v32 = v27;
      goto LABEL_32;
    }

    v28 = *(v20 + 8);
    v29 = *(v20 + 12) + v28;
    if (v26 > v29)
    {
      v29 = v26;
    }

    v39 = v29;
    *(v20 + 8) = v28 - v34;
    a3 = v35;
    goto LABEL_22;
  }

  v30 = WriteGutz(a1, a2, &v40, v20, &v39, &v38, v37, a7);
  a5 = (a5 + 1);
  *(v21 + 418) = a1[250] * a5 - 1;
  if (!v30)
  {
    *(v20 + 8) -= *(a3 + 8);
LABEL_22:
    Setupdpp(a1, v20);
    ++v19;
    v20 += 16;
    a7 = v36;
    goto LABEL_23;
  }

  v32 = v30;
  v26 = v39;
LABEL_32:
  *(v35 + 12) = v26 - *(v35 + 8);
LABEL_26:
  free(v16);
  return v32;
}

CFArrayRef MBRCFCreateMapRuns(uint64_t a1, uint64_t a2, int *a3)
{
  *&v24[54] = *MEMORY[0x277D85DE8];
  *keys = xmmword_2798A28E8;
  Sectors = MKMediaReadSectors(a1, 0, 1uLL, v23, 0);
  if (!Sectors)
  {
    v6 = v24;
    v7 = 4;
    v8 = 63;
    v9 = v24;
    while (1)
    {
      v10 = *v9;
      v9 += 4;
      if (v10)
      {
        v11 = *(v6 - 8);
        v12 = v11 == 5 || v11 == 15;
        if (v12 || v11 == 133)
        {
          v5 = 0;
          Sectors = -4;
          goto LABEL_15;
        }

        v13 = *(v6 - 1);
        if (v8 >= v13)
        {
          v8 = v13;
        }
      }

      v6 = v9;
      if (!--v7)
      {
        v17 = v8;
        valuePtr = 0;
        v14 = *MEMORY[0x277CBECE8];
        values = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &valuePtr);
        cf = CFNumberCreate(v14, kCFNumberSInt64Type, &v17);
        v19 = CFDictionaryCreate(v14, keys, &values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        CFRelease(values);
        CFRelease(cf);
        v5 = CFArrayCreate(v14, &v19, 1, MEMORY[0x277CBF128]);
        CFRelease(v19);
        Sectors = 0;
        goto LABEL_15;
      }
    }
  }

  v5 = 0;
LABEL_15:
  *a3 = Sectors;
  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t MBRCFSetBootcode(const __CFDictionary *a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (!a1)
  {
    return 22;
  }

  Value = CFDictionaryGetValue(a1, @"Sections");
  if (!Value)
  {
    return 22;
  }

  v8 = CFArrayDictionarySearchWithIndexOptions(Value, @"ID", @"MAP", 0, 0);
  v9 = mkcfrecoverref(v8);
  if (!v9)
  {
    return 22;
  }

  v10 = *v9;

  return MBRSetBootloader(v10, a2, a3, a4);
}

uint64_t MKBSDCreateDeviceInfo(const char *a1, CFMutableDictionaryRef *a2)
{
  properties = 0;
  *a2 = 0;
  mainPort = 0;
  existing = 0;
  MatchingServices = MEMORY[0x259C86740](*MEMORY[0x277D85F18], &mainPort);
  if (MatchingServices)
  {
    return MatchingServices;
  }

  v7 = IOBSDNameMatching(mainPort, 0, a1);
  if (!v7)
  {
    return 2;
  }

  MatchingServices = IOServiceGetMatchingServices(mainPort, v7, &existing);
  if (MatchingServices)
  {
    return MatchingServices;
  }

  v8 = IOIteratorNext(existing);
  if (v8)
  {
    v9 = v8;
    appended = IORegistryEntryCreateCFProperties(v8, &properties, *MEMORY[0x277CBECE8], 0);
    if (!appended)
    {
      *a2 = CFDictionaryCreateMutableCopy(0, 0, properties);
      CFRelease(properties);
      properties = 0;
      if (*a2)
      {
        CFDictionaryRemoveValue(*a2, @"Content Hint");
        appended = AppendDeviceInfo(v9, *a2);
        IOObjectRelease(v9);
        if (appended)
        {
          CFRelease(*a2);
          *a2 = 0;
        }
      }

      else
      {
        appended = 0;
      }
    }
  }

  else
  {
    appended = 2;
  }

  IOObjectRelease(existing);
  return appended;
}

uint64_t AppendDeviceInfo(uint64_t a1, __CFDictionary *a2)
{
  v74 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v13 = 2;
    goto LABEL_39;
  }

  v3 = a1;
  v4 = *MEMORY[0x277CBECE8];
  v5 = IORegistryEntrySearchCFProperty(a1, "IOService", @"Physical Interconnect", *MEMORY[0x277CBECE8], 3u);
  if (!v5)
  {
    CFDictionaryAddValue(a2, @"Device Type", @"Number 47 Bus");
    goto LABEL_30;
  }

  CFDictionaryAddValue(a2, @"Device Type", v5);
  v6 = IORegistryEntrySearchCFProperty(v3, "IOService", @"Physical Interconnect Location", v4, 3u);
  if (v6)
  {
    v7 = v6;
    CFDictionaryAddValue(a2, @"Physical Interconnect Location", v6);
    CFRelease(v7);
  }

  if (CFStringCompare(v5, @"Virtual Interface", 1uLL) == kCFCompareEqualTo)
  {
    goto LABEL_30;
  }

  if (CFStringCompare(v5, @"SCSI", 1uLL) == kCFCompareEqualTo)
  {
    v14 = IORegistryEntrySearchCFProperty(v3, "IOService", @"IOUnit", v4, 3u);
    if (!v14)
    {
      goto LABEL_30;
    }

    v11 = v14;
    v12 = @"Device ID";
    goto LABEL_18;
  }

  if (CFStringCompare(v5, @"ATA", 1uLL) == kCFCompareEqualTo)
  {
    v16 = IORegistryEntrySearchCFProperty(v3, "IOService", @"unit number", v4, 3u);
    if (!v16)
    {
      v16 = IORegistryEntrySearchCFProperty(v3, "IOService", @"IOUnit", v4, 3u);
      if (!v16)
      {
        goto LABEL_30;
      }
    }

    v17 = v16;
    CFDictionaryAddValue(a2, @"Device ID", v16);
    CFRelease(v17);
    v18 = IORegistryEntrySearchCFProperty(v3, "IOService", @"AAPL,bus-id", v4, 3u);
    if (!v18)
    {
      goto LABEL_30;
    }

    v19 = v18;
    BytePtr = CFDataGetBytePtr(v18);
    v21 = CFNumberCreate(0, kCFNumberSInt32Type, BytePtr);
    CFRelease(v19);
    if (!v21)
    {
      goto LABEL_30;
    }

LABEL_28:
    CFDictionaryAddValue(a2, @"Device Bus", v21);
    v15 = v21;
    goto LABEL_29;
  }

  if (CFStringCompare(v5, @"ATAPI", 1uLL) == kCFCompareEqualTo)
  {
    v22 = IORegistryEntrySearchCFProperty(v3, "IOService", @"unit number", v4, 3u);
    if (!v22)
    {
      v22 = IORegistryEntrySearchCFProperty(v3, "IOService", @"IOUnit", v4, 3u);
      if (!v22)
      {
        goto LABEL_30;
      }
    }

    v23 = v22;
    CFDictionaryAddValue(a2, @"Device ID", v22);
    CFRelease(v23);
    v24 = IORegistryEntrySearchCFProperty(v3, "IOService", @"AAPL,bus-id", v4, 3u);
    if (!v24)
    {
      goto LABEL_30;
    }

    v25 = v24;
    v26 = CFDataGetBytePtr(v24);
    v21 = CFNumberCreate(0, kCFNumberSInt32Type, v26);
    CFRelease(v25);
    goto LABEL_28;
  }

  if (CFStringCompare(v5, @"FIREWIRE", 1uLL))
  {
    if (CFStringCompare(v5, @"USB", 1uLL) == kCFCompareEqualTo)
    {
      v8 = IORegistryEntrySearchCFProperty(v3, "IOService", @"USB Address", v4, 3u);
      if (v8)
      {
        v9 = v8;
        CFDictionaryAddValue(a2, @"Device ID", v8);
        CFRelease(v9);
        v10 = IORegistryEntrySearchCFProperty(v3, "IOService", @"busNumber", v4, 3u);
        if (v10)
        {
          v11 = v10;
          v12 = @"Device Bus";
LABEL_18:
          CFDictionaryAddValue(a2, v12, v11);
          v15 = v11;
LABEL_29:
          CFRelease(v15);
        }
      }
    }
  }

  else
  {
    v36 = IORegistryEntrySearchCFProperty(v3, "IOService", @"IOUnit", v4, 3u);
    if (v36)
    {
      v37 = v36;
      CFDictionaryAddValue(a2, @"Device ID", v36);
      CFRelease(v37);
      v38 = IORegistryEntrySearchCFProperty(v3, "IOService", @"FireWire Node ID", v4, 3u);
      if (v38)
      {
        v39 = v38;
        CFDictionaryAddValue(a2, @"Device Node ID", v38);
        CFRelease(v39);
        v40 = IORegistryEntrySearchCFProperty(v3, "IOService", @"GUID", v4, 3u);
        if (v40)
        {
          v11 = v40;
          v12 = @"Device Absolute ID";
          goto LABEL_18;
        }
      }
    }
  }

LABEL_30:
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  *v42 = 0u;
  v43 = 0u;
  parent = 0;
  ParentEntry = MEMORY[0x259C867C0](v3, "IOService", v42);
  if (!ParentEntry)
  {
    v28 = index(v42, 58);
    v29 = CFStringCreateWithCString(0, v28 + 1, 0x600u);
    if (v29)
    {
      v30 = v29;
      CFDictionaryAddValue(a2, @"IOS Path", v29);
      CFRelease(v30);
    }

    if (IORegistryEntryInPlane(v3, "IODeviceTree"))
    {
LABEL_36:
      ParentEntry = MEMORY[0x259C867C0](v3, "IODeviceTree", v42);
      if (!ParentEntry)
      {
        v33 = index(v42, 58);
        v34 = CFStringCreateWithCString(0, v33 + 1, 0x600u);
        if (v34)
        {
          v35 = v34;
          CFDictionaryAddValue(a2, @"OF Path", v34);
          CFRelease(v35);
        }

        v13 = 0;
        if (v5)
        {
          goto LABEL_38;
        }

        goto LABEL_39;
      }
    }

    else
    {
      while (1)
      {
        ParentEntry = IORegistryEntryGetParentEntry(v3, "IOService", &parent);
        if (ParentEntry)
        {
          break;
        }

        v3 = parent;
        if (IORegistryEntryInPlane(parent, "IODeviceTree"))
        {
          goto LABEL_36;
        }
      }
    }
  }

  v13 = ParentEntry;
  if (v5)
  {
LABEL_38:
    CFRelease(v5);
  }

LABEL_39:
  v31 = *MEMORY[0x277D85DE8];
  return v13;
}