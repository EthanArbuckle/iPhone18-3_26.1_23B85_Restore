uint64_t GTFenum_isSharedResourceConstructor(int a1)
{
  result = 1;
  if (a1 <= -16097)
  {
    if (a1 > -16164)
    {
      if (a1 == -16163)
      {
        return result;
      }

      v3 = -16104;
    }

    else
    {
      if (a1 == -16312)
      {
        return result;
      }

      v3 = -16294;
    }

    goto LABEL_11;
  }

  if (((a1 + 16031) > 0x34 || ((1 << (a1 - 97)) & 0x18000000000003) == 0) && (a1 + 15914) >= 2)
  {
    v3 = -16096;
LABEL_11:
    if (a1 != v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t GTFenum_isParallelCommandEncoderCall(int a1)
{
  result = 1;
  if (a1 > -16163)
  {
    if ((a1 + 16162) >= 3 && (a1 + 16028) >= 3)
    {
      return 0;
    }
  }

  else if (((a1 + 16289) > 7 || a1 == -16286) && a1 != -16351)
  {
    return 0;
  }

  return result;
}

BOOL GTFenum_isMTL4CommandBufferRelated(int a1)
{
  ReceiverType = GTFenum_getReceiverType(a1);
  if (ReceiverType - 91) < 0xF && ((0x4091u >> (ReceiverType - 91)))
  {
    return 1;
  }

  v4 = GTFenum_getConstructorType(a1) - 91;
  return ReceiverType == 92 || v4 < 2;
}

uint64_t GTFenum_isBeginCommandBuffer(int a1)
{
  result = 1;
  if (a1 > -15174)
  {
    if ((a1 + 15173) < 2)
    {
      return result;
    }

    v3 = -12544;
  }

  else
  {
    if ((a1 + 16343) < 2)
    {
      return result;
    }

    v3 = -15701;
  }

  if (a1 != v3)
  {
    return 0;
  }

  return result;
}

uint64_t GTFenum_isEndCommandBuffer(int a1)
{
  result = 1;
  if (a1 > -15319)
  {
    if (a1 != -15318 && a1 != -15316)
    {
      v3 = -15169;
LABEL_8:
      if (a1 != v3)
      {
        return 0;
      }
    }
  }

  else if (a1 != -16361 && a1 != -16202)
  {
    v3 = -15908;
    goto LABEL_8;
  }

  return result;
}

uint64_t GTTraceStoreAllocNode(int *a1, unint64_t a2, char a3, uint64_t a4)
{
  v7 = a2 + 64;
  if (a2 < 0xC1)
  {
    v12 = (a1 + 66);
    pthread_mutex_lock((a1 + 66));
    v11 = 0;
    goto LABEL_8;
  }

  v8 = -1;
  v9 = 256;
  do
  {
    v10 = v8;
    v9 *= 2;
    ++v8;
  }

  while (v9 < v7);
  v11 = v10 + 2;
  v12 = (a1 + 66);
  pthread_mutex_lock((a1 + 66));
  if (v8 <= 0x1D)
  {
LABEL_8:
    v13 = v11;
    while (!*&a1[2 * v13 + 4])
    {
      if (++v13 == 31)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_26;
  }

  if (v11 != 31)
  {
LABEL_30:
    v26 = v11;
    goto LABEL_31;
  }

  v11 = 31;
LABEL_11:
  v14 = 0;
  v15 = 0x800000;
  if (v7 > 0x800000)
  {
    v15 = v7;
  }

  for (i = 256; i < v15; i *= 2)
  {
    ++v14;
  }

  v17 = 256;
  do
  {
    v17 *= 2;
    --v14;
  }

  while (v14);
  v18 = GTCoreAlloc(v17);
  v19 = *a1;
  v20 = a1[1];
  if (v20 == *a1)
  {
    v21 = 2 * v20;
    if (!v20)
    {
      v21 = 8;
    }

    a1[1] = v21;
    v22 = malloc_type_realloc(*(a1 + 1), 16 * v21, 0x10C004028F705ECuLL);
    *(a1 + 1) = v22;
    v19 = *a1;
  }

  else
  {
    v22 = *(a1 + 1);
  }

  *a1 = v19 + 1;
  v23 = &v22[16 * v19];
  *v23 = v18;
  v23[1] = v17;
  *v18 = v17;
  *(v18 + 4) = 64;
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v18;
  *(v18 + 48) = 0;
  *(v18 + 56) = 0;
  *(v18 + 40) = 0;
  LODWORD(v13) = 0;
  if (v17)
  {
    v24 = 256;
    do
    {
      v24 *= 2;
      LODWORD(v13) = v13 + 1;
    }

    while (v24 < v17);
  }

  *&a1[2 * v13 + 4] = v18;
LABEL_26:
  if (v11 >= v13)
  {
    goto LABEL_30;
  }

  v25 = v13;
  v26 = v11;
  v27 = &a1[2 * v13];
  v30 = *(v27 + 2);
  v28 = v27 + 4;
  v29 = v30;
  v31 = v25 + 2;
  do
  {
    *v28 = *(v29 + 5);
    v32 = *v29 >> 1;
    *v29 >>= 1;
    v29[1] = 64;
    *(v29 + 1) = 0;
    *(v29 + 2) = 0;
    *(v29 + 3) = 0;
    *(v29 + 4) = v29;
    *(v29 + 6) = 0;
    *(v29 + 7) = 0;
    v33 = v29 + v32;
    *v33 = v32;
    *(v33 + 1) = 64;
    *(v33 + 1) = 0;
    *(v33 + 2) = 0;
    *(v33 + 3) = 0;
    *(v33 + 4) = v33;
    *(v33 + 6) = 0;
    *(v33 + 7) = 0;
    *(v33 + 5) = 0;
    *(v29 + 5) = v29 + v32;
    *--v28 = v29;
    v34 = v31 - 3;
    --v31;
  }

  while (v34 > v11);
LABEL_31:
  v35 = &a1[2 * v26];
  v36 = *(v35 + 2);
  *(v35 + 2) = *(v36 + 40);
  *(v36 + 8) = a3;
  *(v36 + 16) = a4;
  *(v36 + 24) = a1;
  *(v36 + 40) = 0;
  pthread_mutex_unlock(v12);
  return v36;
}

char *GTTraceMemPool_allocateBytes(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = (HIDWORD(a3) + 23) & 0x1FFFFFFF8;
  add = atomic_fetch_add((a1 + 24), 1u);
  do
  {
    v8 = atomic_load((a1 + 28));
  }

  while (v8 != add);
  v9 = *(a1 + 8);
  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = atomic_load(v9 + 1);
  while (1)
  {
    v11 = v10;
    v12 = v6 + v10;
    v13 = *v9;
    if (v12 > v13)
    {
      break;
    }

    v10 = v11;
    atomic_compare_exchange_strong(v9 + 1, &v10, v12);
    if (v10 == v11)
    {
      v13 = *v9;
      break;
    }
  }

  v14 = v9 + v11;
  result = v12 <= v13 ? v14 : 0;
  if (v12 > v13)
  {
LABEL_12:
    v16 = GTTraceStoreAllocNode(*a1, (HIDWORD(a3) + 23) & 0x1FFFFFFF8, 2, *(a1 + 32));
    v17 = *(a1 + 16);
    if (v17)
    {
      v18 = (v17 + 40);
    }

    else
    {
      v18 = (a1 + 8);
    }

    *v18 = v16;
    *(a1 + 16) = v16;
    *(v16 + 5) = 0;
    v19 = atomic_load(v16 + 1);
    while (1)
    {
      v20 = v19;
      v21 = v6 + v19;
      v22 = *v16;
      if (v21 > v22)
      {
        break;
      }

      v19 = v20;
      atomic_compare_exchange_strong(v16 + 1, &v19, v21);
      if (v19 == v20)
      {
        v22 = *v16;
        break;
      }
    }

    v23 = v16 + v20;
    if (v21 <= v22)
    {
      result = v23;
    }

    else
    {
      result = 0;
    }
  }

  atomic_store(add + 1, (a1 + 28));
  *result = a2;
  *(result + 1) = a3;
  return result;
}

uint64_t FBDecoder_DecodeArguments(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = *a1;
  v11 = (a2 + v10);
  v12 = memchr((a2 + v10), 0, a3 - v10);
  if (v12)
  {
    v13 = v12;
    v31 = a2;
    v32 = a1;
    v14 = a1[1];
    v15 = v12 + 1;
    if (v11 == v12)
    {
LABEL_37:
      result = 0;
      *v32 = ((v15 + 3) & 0xFFFFFFFC) - v31;
      v32[1] = v14;
      return result;
    }

    v16 = a2 + a3;
    while (1)
    {
      v17 = v14;
      if (v14 >= a5)
      {
        return 2;
      }

      v18 = a4 + 16 * v14;
      *(v18 + 11) = 0;
      *(v18 + 8) = 1;
      v19 = *v11;
      if (v19 == 64)
      {
        v20 = 0;
        v21 = (v11 + 1);
        if (v11 + 1 != v13)
        {
          v22 = v11[1] - 48;
          if (v22 <= 9)
          {
            LOWORD(v20) = 0;
            v23 = (v11 + 2);
            do
            {
              v21 = v23;
              LOWORD(v20) = v22 + 10 * v20;
              if (v23 == v13)
              {
                break;
              }

              ++v23;
              v22 = *v21 - 48;
            }

            while (v22 < 0xA);
            v20 = v20;
          }
        }

        *(v18 + 11) = 1;
        *(v18 + 8) = v20;
        v19 = *v21;
        v24 = 3;
        v11 = v21;
      }

      else
      {
        v24 = 2;
        v20 = 1;
      }

      if (v19 == 117)
      {
        *(v18 + 11) = v24;
        v25 = *++v11;
        v19 = v25;
      }

      *(v18 + 10) = v19;
      result = 0xFFFFFFFFLL;
      if (v19 <= 97)
      {
        if (v19 != 67)
        {
          if (v19 != 83 && v19 != 85)
          {
            return result;
          }

          if (v16 - v15 >= 8 && *v15 == 0xFFFFFFFFLL)
          {
            *v18 = 0;
            *(v18 + 8) = 0;
            ++v15;
          }

          else
          {
            *v18 = v15;
            v29 = memchr(v15, 0, v16 - v15);
            if (!v29)
            {
              return 0xFFFFFFFFLL;
            }

            *(v18 + 8) = v29 - v15;
            v15 = v29 + 1;
          }

          goto LABEL_32;
        }
      }

      else
      {
        v27 = v19 - 98;
        if ((v19 - 98) > 0x15)
        {
          return result;
        }

        if (((1 << v27) & 0x244404) == 0)
        {
          if (((1 << v27) & 0x90) != 0)
          {
            v30 = (v15 + 3) & 0xFFFFFFFFFFFFFFFCLL;
            *v18 = v30;
            v15 = (v30 + 4 * v20);
          }

          else
          {
            if (v19 != 98)
            {
              return result;
            }

            *v18 = v15;
            v15 = (v15 + v20);
          }

          goto LABEL_32;
        }
      }

      v28 = (v15 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      *v18 = v28;
      v15 = (v28 + 8 * v20);
LABEL_32:
      if (v16 < v15)
      {
        return 0xFFFFFFFFLL;
      }

      if ((v11 + 1) < v16 && v11[1] == 60)
      {
        v11 = memchr(v11 + 2, 62, v13 - (v11 + 2));
      }

      v14 = v17 + 1;
      if (++v11 == v13)
      {
        goto LABEL_37;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t GTMTLCreateIndirectCommandEncoder(uint64_t result, uint64_t a2)
{
  *&v2 = -1;
  *(&v2 + 1) = -1;
  *(result + 16) = v2;
  *(result + 208) = -1;
  *(result + 176) = v2;
  *(result + 192) = v2;
  *(result + 144) = v2;
  *(result + 160) = v2;
  *(result + 112) = v2;
  *(result + 128) = v2;
  *(result + 80) = v2;
  *(result + 96) = v2;
  *(result + 48) = v2;
  *(result + 64) = v2;
  *(result + 32) = v2;
  *result = a2;
  *(result + 8) = 0;
  if (*(a2 + 26))
  {
    v3 = 8;
  }

  else
  {
    *(result + 16) = 8;
    v3 = 16;
  }

  if (!*(a2 + 19))
  {
    v4 = *(a2 + 38);
    *(result + 24) = v3;
    *(result + 32) = v3 + 8 * v4;
    v5 = v4 + *(a2 + 31);
    v6 = v3 + 8 * v5;
    v7 = v5 + *(a2 + 35);
    *(result + 40) = v6;
    *(result + 48) = v3 + 8 * v7;
    v8 = v7 + *(a2 + 34);
    *(result + 56) = v3 + 8 * v8;
    v3 += 8 * (v8 + *(a2 + 32));
  }

  v9 = *(a2 + 36);
  *(result + 64) = v3;
  *(result + 72) = v3 + 8 * v9;
  v10 = v9 + *(a2 + 33);
  v11 = v3 + 8 * v10;
  v12 = *(a2 + 16);
  *(result + 80) = v11;
  if (*(a2 + 40))
  {
    if ((v12 & 0xF) != 0)
    {
      v13 = *(a2 + 38);
    }

    else
    {
      if ((v12 & 0x60) == 0)
      {
        goto LABEL_12;
      }

      v13 = *(a2 + 32);
    }

    v11 = v3 + 8 * (v10 + v13);
  }

LABEL_12:
  if (*(a2 + 42))
  {
    *(result + 88) = v11;
    v11 += 8;
  }

  if (!*(a2 + 23))
  {
    *(result + 96) = v11;
    v11 += 8;
  }

  if (!*(a2 + 22))
  {
    *(result + 104) = v11;
    v11 += 8;
  }

  if (!*(a2 + 20))
  {
    *(result + 112) = v11;
    v11 += 8;
  }

  if (!*(a2 + 25))
  {
    *(result + 120) = v11;
    v11 += 8;
  }

  if (!*(a2 + 29))
  {
    *(result + 128) = v11;
    v11 += 8;
  }

  if (!*(a2 + 21))
  {
    *(result + 136) = v11;
    v11 += 16;
  }

  if (!*(a2 + 28))
  {
    *(result + 144) = v11;
    v11 += 8;
  }

  if (!*(a2 + 24))
  {
    *(result + 152) = v11;
    v11 += 8;
  }

  if (!*(a2 + 27))
  {
    *(result + 160) = v11;
    *(result + 168) = v11 + 8;
    v11 += 8 + 32 * *(a2 + 37);
  }

  if (!*(a2 + 30))
  {
    *(result + 176) = v11;
    *(result + 184) = v11 + 8;
    v11 += 8 + 48 * *(a2 + 39);
  }

  if (!*(a2 + 18))
  {
    *(result + 192) = v11;
    v11 += 16;
  }

  v14 = (v12 << 63 >> 63) & 0x28;
  if ((v12 & 2) != 0)
  {
    v14 = 56;
  }

  v15 = 72;
  if ((v12 & 4) != 0)
  {
    v14 = 72;
  }

  if ((v12 & 8) != 0)
  {
    v14 = 80;
  }

  if ((v12 & 0x60) != 0)
  {
    v14 = 120;
  }

  if (v14 <= 0x48)
  {
    v16 = 72;
  }

  else
  {
    v16 = v14;
  }

  if ((v12 & 0x80) != 0)
  {
    v14 = v16;
  }

  if (v14 > 0x48)
  {
    v15 = v14;
  }

  if ((v12 & 0x100) != 0)
  {
    v17 = v15;
  }

  else
  {
    v17 = v14;
  }

  *(result + 200) = v11;
  *(result + 208) = v11 + v17;
  return result;
}

double GetExecuteCommandsInBufferArgs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  if (v6 > -15963)
  {
    if (v6 == -15961)
    {
LABEL_8:
      v10 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      v11 = GTTraceFunc_argumentBlobWithMap(a2, v10[41], a3);
      *a1 = *(v10 + 1);
      *(a1 + 8) = *(v11 + 16);
      v9 = v10[40];
      v8 = *(v10 + 4);
      goto LABEL_9;
    }

    if (v6 != -15962)
    {
LABEL_13:
      *(a1 + 32) = 0;
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return result;
    }
  }

  else if (v6 != -15964)
  {
    if (v6 != -15963)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v7 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
  *a1 = *(v7 + 8);
  v8 = *(v7 + 4);
  *(a1 + 16) = *(v7 + 3);
  v9 = v7[40];
LABEL_9:
  v12 = GTTraceMemoryMap_argumentBlobAtIndex(v9, a3, v8);
  if (v12)
  {
    v14 = v12 + 16;
    v15 = *(v12 + 12);
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  *(a1 + 24) = v14;
  *(a1 + 32) = v15;
  return result;
}

uint64_t PerformanceStatisticsURL(_DWORD *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 33) & 0x10) != 0)
  {
    do
    {
      v3 = (a1 + *a1);
      if (v3[1] != -12272)
      {
        break;
      }

      v5 = 0;
      if (FBDecoder_DecodeArguments(&v5, (v3 + 9), (*v3 - 36), v6, 0xDuLL) || HIDWORD(v5) < 2)
      {
        break;
      }

      if (*v7 == 116)
      {
        result = v8;
        goto LABEL_3;
      }

      a1 = InternalDataArgumentChainEnd(v3, 0);
    }

    while ((*(a1 + 33) & 0x20) == 0);
  }

  result = 0;
LABEL_3:
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

_DWORD *InternalDataArgumentChainEnd(_DWORD *a1, int *a2)
{
  v3 = a1;
  v12 = *MEMORY[0x277D85DE8];
  if ((gt_error_assert_add_error(a2, a1[1] == -12272, "header->fenum == kDYFEInternalData") & 1) == 0)
  {
    v9 = 0;
    v4 = (FBDecoder_DecodeArguments(&v9, (v3 + 9), (*v3 - 36), v10, 0xDuLL) & 0xFFFFFFFD) == 0;
    if ((gt_error_assert_add_error(a2, v4, "err == 0 || err == 2") & 1) == 0 && (gt_error_assert_add_error(a2, HIDWORD(v9) > 1, "2 <= parser.ntokens") & 1) == 0)
    {
      v5 = *v11 - 102;
      if (v5 <= 0x22 && ((1 << v5) & 0x5B008001FLL) != 0)
      {
        memset(v8, 0, sizeof(v8));
        v3 = DecodeDYMTLBinding(0, v3, v8, 0, a2);
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

_DWORD *DecodeDYMTLBinding(uint64_t a1, _DWORD *a2, void *a3, uint64_t a4, int *a5)
{
  v6 = a4;
  v8 = a2;
  v65 = *MEMORY[0x277D85DE8];
  v51 = a4;
  if (gt_error_assert_add_error(a5, a2[1] == -12272, "it->fenum == kDYFEInternalData") & 1) != 0 || (v52 = 0, v10 = FBDecoder_DecodeArguments(&v52, (v8 + 9), (*v8 - 36), v53, 0xDuLL) == 0, (gt_error_assert_add_error(a5, v10, "err == 0")) || (LODWORD(v11) = HIDWORD(v52), (gt_error_assert_add_error(a5, HIDWORD(v52) > 6, "7 <= parser.ntokens")))
  {
    v12 = 0;
    LOWORD(v6) = 0;
    LOWORD(v11) = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    LOBYTE(v19) = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_5;
  }

  v24 = __s;
  if (!__s)
  {
    v28 = 0;
    v26 = a3 + 29;
    v27 = a3[29];
    goto LABEL_12;
  }

  v25 = strlen(__s);
  v26 = a3 + 29;
  v27 = a3[29];
  v21 = v27;
  v28 = v25 + 1;
  if (v25 == -1)
  {
LABEL_12:
    v21 = 0;
  }

  *v26 = &v27[v28];
  if (v6)
  {
    v29 = v24;
    v30 = v21;
    memcpy(v21, v29, v28);
    v21 = v30;
  }

  v13 = 0;
  v12 = 0;
  LODWORD(v19) = *v55;
  v18 = *v56;
  v16 = *v57 & 1;
  v17 = *v58;
  v50 = v21;
  v48 = *v56;
  v49 = v16;
  if (v19 > 0xF)
  {
    switch(v19)
    {
      case 0x10:
        v47 = *v58;
        if (gt_error_assert_add_error(a5, v11 > 9, "10 <= parser.ntokens"))
        {
          v12 = 0;
          LOWORD(v6) = 0;
          LOWORD(v11) = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          v20 = 0;
        }

        else
        {
          v34 = *v60;
          v35 = *v61;
          if (v11 < 0xC)
          {
            v14 = v34 | 0xFF00000000;
          }

          else
          {
            v14 = (*v62 << 40) | (*v63 << 32) | v34;
          }

          v44 = a3[21];
          if (*v61)
          {
            v11 = a3[21];
          }

          else
          {
            v11 = 0;
          }

          if (*v61)
          {
            v20 = 0;
          }

          else
          {
            v20 = a3[21];
          }

          a3[21] = v44 + 24;
          v45 = DecodeDYMTLStructType(v44, (v8 + *v8), a3, v6, a5);
          v15 = v11;
          v8 = v45;
          v12 = 0;
          LOWORD(v6) = 0;
          LOWORD(v11) = 0;
          v13 = 0;
        }

        LOBYTE(v19) = 16;
        break;
      case 0x11:
        v47 = *v58;
        if (gt_error_assert_add_error(a5, v11 > 0xC, "13 <= parser.ntokens"))
        {
          v12 = 0;
          LOWORD(v6) = 0;
          LOWORD(v11) = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          v20 = 0;
        }

        else
        {
          v14 = *v61 | (*v60 << 48) | (*v63 << 40) | (*v64 << 32);
          v42 = a3[21];
          if (*v62)
          {
            v11 = a3[21];
          }

          else
          {
            v11 = 0;
          }

          if (*v62)
          {
            v20 = 0;
          }

          else
          {
            v20 = a3[21];
          }

          a3[21] = v42 + 24;
          v43 = DecodeDYMTLStructType(v42, (v8 + *v8), a3, v6, a5);
          v15 = v11;
          v8 = v43;
          v12 = 0;
          LOWORD(v6) = 0;
          LOWORD(v11) = 0;
          v13 = 0;
        }

        LOBYTE(v19) = 17;
        break;
      case 0x23:
        v47 = *v58;
        if (gt_error_assert_add_error(a5, v11 > 0xB, "12 <= parser.ntokens"))
        {
          v12 = 0;
          LOWORD(v6) = 0;
          LOWORD(v11) = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
        }

        else
        {
          v38 = *v59 | (*v60 << 8);
          LODWORD(v11) = *v61;
          LODWORD(v6) = *v62;
          v12 = *v63;
          v14 = a3[21];
          a3[21] = v14 + 24;
          v39 = DecodeDYMTLStructType(v14, (v8 + *v8), a3, v51, a5);
          v13 = a3[21];
          a3[21] = v13 + 24;
          v40 = DecodeDYMTLStructType(v13, (v39 + *v39), a3, v51, a5);
          v15 = v38;
          v8 = v40;
        }

        v20 = 0;
        LOBYTE(v19) = 35;
        break;
      default:
        LOWORD(v6) = 0;
        LOWORD(v11) = 0;
        v14 = 0;
        v15 = 0;
        v20 = 0;
        goto LABEL_5;
    }

    goto LABEL_69;
  }

  if (!*v55)
  {
    v47 = *v58;
    if ((gt_error_assert_add_error(a5, v11 > 9, "10 <= parser.ntokens") & 1) == 0)
    {
      v15 = *v60 | (*v59 << 32) & 0xFF00FFFFFFFFFFFFLL | (*v61 << 48);
      v21 = v50;
      v17 = v47;
      if (v11 < 0xC)
      {
        v12 = 0;
        LOWORD(v6) = 0;
        LOWORD(v11) = 0;
        v13 = 0;
        v14 = 0;
        LOBYTE(v19) = 0;
        v20 = 0;
      }

      else
      {
        if (*v62)
        {
          v32 = *v60 | (*v59 << 32) & 0xFF00FFFFFFFFFFFFLL | (*v61 << 48);
          gt_error_assert_add_error(a5, *v61 == 1, "result.buffer.dataType == GTMTLDataTypeStruct");
          v20 = a3[21];
          a3[21] = v20 + 24;
          v33 = DecodeDYMTLStructType(v20, (v8 + *v8), a3, v6, a5);
          v15 = v32;
          v17 = v47;
          v21 = v50;
          v8 = v33;
        }

        else
        {
          v20 = 0;
        }

        v12 = 0;
        LOWORD(v6) = 0;
        LOWORD(v11) = 0;
        v13 = 0;
        v14 = 0;
        LOBYTE(v19) = 0;
        v15 |= *v63 << 56;
      }

      goto LABEL_74;
    }

    v12 = 0;
    LOWORD(v6) = 0;
    LOWORD(v11) = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    LOBYTE(v19) = 0;
    v20 = 0;
LABEL_69:
    v21 = v50;
    v18 = v48;
    v16 = v49;
    v17 = v47;
    goto LABEL_5;
  }

  if (v19 == 1)
  {
    v47 = *v58;
    if ((gt_error_assert_add_error(a5, v11 > 8, "9 <= parser.ntokens") & 1) == 0)
    {
      v15 = *v60 | (*v59 << 32);
      v21 = v50;
      v17 = v47;
      if (v11 >= 0xC)
      {
        v11 = *v61;
        v15 = *v60 | (*v59 << 32) & 0xFF00FFFFFFFFFFFFLL | (*v61 << 48);
        if (*v63)
        {
          v46 = *v60 | (*v59 << 32) & 0xFF00FFFFFFFFFFFFLL | (*v61 << 48);
          v6 = *v62;
          v20 = a3[20];
          v41 = a3[21];
          a3[20] = v20 + 24;
          a3[21] = v41 + 24;
          v8 = DecodeDYMTLStructType(v41, (v8 + *v8), a3, v51, a5);
          if (!v51)
          {
            goto LABEL_7;
          }

          *v20 = 60;
          *(v20 + 22) = v11;
          *(v20 + 16) = v6;
          gt_error_assert_add_error(a5, v11 == 1, "result.threadgroupMemory.dataType == GTMTLDataTypeStruct");
          v14 = 0;
          v19 = v41;
          v13 = 0;
          LOWORD(v11) = 0;
          LOWORD(v6) = 0;
          v12 = 0;
          *(v20 + 8) = v19;
          LOBYTE(v19) = 1;
          v21 = v50;
          v18 = v48;
          v16 = v49;
          v17 = v47;
          v15 = v46;
          goto LABEL_6;
        }
      }

      v12 = 0;
      LOWORD(v6) = 0;
      LOWORD(v11) = 0;
      v13 = 0;
      v14 = 0;
      v20 = 0;
      LOBYTE(v19) = 1;
      goto LABEL_74;
    }

    v12 = 0;
    LOWORD(v6) = 0;
    LOWORD(v11) = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v20 = 0;
    LOBYTE(v19) = 1;
    goto LABEL_69;
  }

  if (v19 != 2)
  {
    LOWORD(v6) = 0;
    LOWORD(v11) = 0;
    v14 = 0;
    v15 = 0;
    v20 = 0;
LABEL_74:
    v18 = v48;
    v16 = v49;
    goto LABEL_5;
  }

  v31 = *v58;
  if (gt_error_assert_add_error(a5, v11 > 8, "9 <= parser.ntokens"))
  {
    v12 = 0;
    LOWORD(v6) = 0;
    LOWORD(v11) = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v20 = 0;
    LOBYTE(v19) = 2;
    v21 = v50;
  }

  else
  {
    v36 = *v60 | (*v59 << 8);
    v37 = v11 >= 0xB;
    v21 = v50;
    v12 = 0;
    LOWORD(v6) = 0;
    LOWORD(v11) = 0;
    v13 = 0;
    v14 = 0;
    v20 = 0;
    if (v37)
    {
      v15 = (*v61 << 16) | (*v62 << 24) | v36;
    }

    else
    {
      v15 = v36 | 0x10000;
    }

    LOBYTE(v19) = 2;
  }

  v18 = v48;
  v16 = v49;
  v17 = v31;
LABEL_5:
  if (v51)
  {
LABEL_6:
    *a1 = v21;
    *(a1 + 8) = v20;
    *(a1 + 16) = v19;
    *(a1 + 17) = v18;
    *(a1 + 18) = v17;
    *(a1 + 19) = v16;
    *(a1 + 20) = 0;
    *(a1 + 24) = v15;
    *(a1 + 32) = v14;
    *(a1 + 40) = v13;
    *(a1 + 48) = v11;
    *(a1 + 50) = v6;
    *(a1 + 52) = v12;
    *(a1 + 53) = 0;
    *(a1 + 55) = 0;
  }

LABEL_7:
  v22 = *MEMORY[0x277D85DE8];
  return v8;
}

_DWORD *DecodeDYMTLStructType(uint64_t a1, _DWORD *a2, void *a3, uint64_t a4, int *a5)
{
  v8 = a2;
  v59 = *MEMORY[0x277D85DE8];
  if (gt_error_assert_add_error(a5, a2[1] == -12272, "it->fenum == kDYFEInternalData") & 1) != 0 || (v44 = 0, v10 = FBDecoder_DecodeArguments(&v44, (v8 + 9), (*v8 - 36), v48, 2uLL) == 0, (gt_error_assert_add_error(a5, v10, "err == 0")) || (gt_error_assert_add_error(a5, HIDWORD(v44) > 1, "2 <= parser.ntokens"))
  {
    LODWORD(v11) = 0;
    v12 = 0;
    goto LABEL_5;
  }

  v11 = *v49;
  v12 = a3[22];
  a3[22] = v12 + 32 * v11;
  if (v11 >= 1)
  {
    v41 = a3;
    v42 = v12;
    v37 = v11;
    v38 = a1;
    v16 = 0;
    v43 = 32 * v11;
    while (1)
    {
      v8 = (v8 + *v8);
      v47 = 0;
      v46 = 0;
      if ((gt_error_assert_add_error(a5, v8[1] == -12272, "it->fenum == kDYFEInternalData") & 1) == 0)
      {
        v45 = 0;
        v17 = FBDecoder_DecodeArguments(&v45, (v8 + 9), (*v8 - 36), v50, 9uLL) == 0;
        if ((gt_error_assert_add_error(a5, v17, "err == 0") & 1) == 0)
        {
          v18 = HIDWORD(v45);
          if ((gt_error_assert_add_error(a5, HIDWORD(v45) > 5, "6 <= parser.ntokens") & 1) == 0)
          {
            break;
          }
        }
      }

      v19 = 0;
      LOBYTE(v20) = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
LABEL_17:
      if (a4)
      {
        v25 = v42 + v16;
        *v25 = v24;
        *(v25 + 8) = v23;
        *(v25 + 16) = v22;
        *(v25 + 20) = 0;
        *(v25 + 22) = v21;
        *(v25 + 24) = v20;
        *(v25 + 25) = v19;
        *(v25 + 26) = v46;
        *(v25 + 30) = v47;
      }

      v16 += 32;
      if (v43 == v16)
      {
        LODWORD(v11) = v37;
        a1 = v38;
        v12 = v42;
        goto LABEL_5;
      }
    }

    v26 = __s;
    v20 = *v51;
    if (__s)
    {
      v27 = strlen(__s);
      v28 = v41[29];
      v24 = v28;
      v29 = v27 + 1;
      if (v27 != -1)
      {
LABEL_26:
        v41[29] = &v28[v29];
        if (a4)
        {
          memcpy(v24, v26, v29);
        }

        v22 = *v53;
        v30 = *v54;
        v31 = *v55;
        if (v18 != 6)
        {
          if (v18 != 7)
          {
            if (v18 == 8)
            {
              v21 = *v56;
              if (*v57)
              {
                v39 = *v55;
                v40 = *v54;
                v32 = 0;
LABEL_38:
                v8 = (v8 + *v8);
                v45 = 0;
                v33 = FBDecoder_DecodeArguments(&v45, (v8 + 9), (*v8 - 36), v50, 9uLL) == 0;
                if (gt_error_assert_add_error(a5, v33, "err == 0"))
                {
                  v19 = 0;
LABEL_51:
                  v23 = 0;
                  goto LABEL_17;
                }

                if ((v20 - 62) > 0xFu)
                {
                  v34 = 0;
                }

                else
                {
                  v34 = word_24DA91F80[(v20 - 62)];
                }

                gt_error_assert_add_error(a5, *v51 == v34, "pixelFormat == DataTypeToPixelFormat(result.dataType)");
                v19 = *__s;
                v31 = v39;
                v30 = v40;
LABEL_46:
                switch(v20)
                {
                  case 0x3Cu:
                    if (v32)
                    {
                      v23 = v41[20];
                      v41[20] = v23 + 24;
                      v8 = DecodeDYMTLPointerType(v23, (v8 + *v8), v41, a4, a5);
                    }

                    else
                    {
                      v23 = 0;
                    }

                    LOBYTE(v20) = 60;
                    goto LABEL_17;
                  case 2u:
                    v36 = v31;
                    gt_error_assert_add_error(a5, v31 != 0, "isArrayType");
                    if (v36)
                    {
                      v23 = v41[23];
                      v41[23] = v23 + 32;
                      v8 = DecodeDYMTLArrayType(v23, (v8 + *v8), v41, a4, a5);
                    }

                    else
                    {
                      v23 = 0;
                    }

                    LOBYTE(v20) = 2;
                    goto LABEL_17;
                  case 1u:
                    v35 = v30;
                    gt_error_assert_add_error(a5, v30 != 0, "isStructType");
                    if (v35)
                    {
                      v23 = v41[21];
                      v41[21] = v23 + 24;
                      v8 = DecodeDYMTLStructType(v23, v8 + *v8, v41, a4, a5);
                    }

                    else
                    {
                      v23 = 0;
                    }

                    LOBYTE(v20) = 1;
                    goto LABEL_17;
                }

                goto LABEL_51;
              }

              v32 = 0;
            }

            else
            {
              v21 = *v56;
              v32 = *v58 != 0;
              if (*v57)
              {
                v39 = *v55;
                v40 = *v54;
                goto LABEL_38;
              }
            }

LABEL_45:
            v19 = 0;
            goto LABEL_46;
          }

          if (*v56)
          {
            v39 = *v55;
            v40 = *v54;
            v32 = 0;
            v21 = 0;
            goto LABEL_38;
          }
        }

        v32 = 0;
        v21 = 0;
        goto LABEL_45;
      }
    }

    else
    {
      v29 = 0;
      v28 = v41[29];
    }

    v24 = 0;
    goto LABEL_26;
  }

LABEL_5:
  if (a4)
  {
    *a1 = 1;
    *(a1 + 16) = v11;
    if (v11)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    *(a1 + 8) = v13;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

_DWORD *DecodeDYMTLArrayType(uint64_t a1, _DWORD *a2, void *a3, uint64_t a4, int *a5)
{
  v8 = a2;
  v45 = *MEMORY[0x277D85DE8];
  if (gt_error_assert_add_error(a5, a2[1] == -12272, "it->fenum == kDYFEInternalData") & 1) != 0 || (v35 = 0, v10 = FBDecoder_DecodeArguments(&v35, (v8 + 9), (*v8 - 36), v36, 9uLL) == 0, (gt_error_assert_add_error(a5, v10, "err == 0")) || (v11 = HIDWORD(v35), (gt_error_assert_add_error(a5, HIDWORD(v35) > 5, "6 <= parser.ntokens")))
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    LOWORD(v15) = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    goto LABEL_5;
  }

  v15 = *v37;
  v13 = *v38;
  v16 = *v39;
  v21 = *v40;
  v22 = *v41;
  if (v11 < 7)
  {
    v12 = 0;
    v14 = 0;
    v24 = 1;
    goto LABEL_26;
  }

  v23 = *v42;
  if (v11 != 7)
  {
    v12 = *v43;
    if (v11 < 9)
    {
      v24 = 1;
      if (!*v42)
      {
LABEL_23:
        v14 = 0;
        goto LABEL_26;
      }
    }

    else
    {
      v24 = *v44 == 0;
      if (!*v42)
      {
        goto LABEL_23;
      }
    }

    v32 = *v41;
    v33 = *v40;
    v34 = *v37;
    goto LABEL_18;
  }

  v24 = 1;
  if (!*v42)
  {
    v12 = 0;
    goto LABEL_23;
  }

  v32 = *v41;
  v33 = *v40;
  v34 = *v37;
  v12 = 0;
LABEL_18:
  v8 = (v8 + *v8);
  v35 = 0;
  v25 = FBDecoder_DecodeArguments(&v35, (v8 + 9), (*v8 - 36), v36, 9uLL) == 0;
  if (gt_error_assert_add_error(a5, v25, "err == 0"))
  {
    v14 = 0;
    v17 = 0;
LABEL_40:
    v18 = 2;
    goto LABEL_43;
  }

  if ((v13 - 62) > 0xFu)
  {
    v26 = 0;
  }

  else
  {
    v26 = word_24DA91F80[(v13 - 62)];
  }

  gt_error_assert_add_error(a5, *v37 == v26, "pixelFormat == DataTypeToPixelFormat(result.elementType)");
  v14 = *v38;
  v21 = v33;
  LOWORD(v15) = v34;
  v22 = v32;
LABEL_26:
  if (v13 == 60)
  {
    if (v24)
    {
      v17 = 0;
    }

    else
    {
      v17 = a3[20];
      a3[20] = v17 + 24;
      v29 = (v8 + *v8);
      v30 = v15;
      v31 = DecodeDYMTLPointerType(v17, v29, a3, a4, a5);
      LOWORD(v15) = v30;
      v8 = v31;
    }

    v18 = 2;
    v13 = 60;
    goto LABEL_5;
  }

  if (v13 == 2)
  {
    LOWORD(v34) = v15;
    v28 = v22;
    gt_error_assert_add_error(a5, v22 != 0, "isArrayType");
    if (v28)
    {
      v17 = a3[23];
      a3[23] = v17 + 32;
      v8 = DecodeDYMTLArrayType(v17, v8 + *v8, a3, a4, a5);
    }

    else
    {
      v17 = 0;
    }

    v13 = 2;
    goto LABEL_40;
  }

  if (v13 != 1)
  {
    v17 = 0;
    v18 = 2;
    goto LABEL_5;
  }

  LOWORD(v34) = v15;
  v27 = v21;
  gt_error_assert_add_error(a5, v21 != 0, "isStructType");
  if (v27)
  {
    v17 = a3[21];
    a3[21] = v17 + 24;
    v8 = DecodeDYMTLStructType(v17, v8 + *v8, a3, a4, a5);
  }

  else
  {
    v17 = 0;
  }

  v18 = 2;
  v13 = 1;
LABEL_43:
  LOWORD(v15) = v34;
LABEL_5:
  if (a4)
  {
    *a1 = v18;
    *(a1 + 1) = 0;
    *(a1 + 4) = 0;
    *(a1 + 8) = v17;
    *(a1 + 16) = v16;
    *(a1 + 20) = v15;
    *(a1 + 22) = v12;
    *(a1 + 24) = v13;
    *(a1 + 25) = v14;
    *(a1 + 26) = 0;
    *(a1 + 30) = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v8;
}

_DWORD *DecodeDYMTLPointerType(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, int *a5)
{
  v8 = a2;
  v29 = *MEMORY[0x277D85DE8];
  if (gt_error_assert_add_error(a5, a2[1] == -12272, "it->fenum == kDYFEInternalData") & 1) != 0 || (v21 = 0, v10 = FBDecoder_DecodeArguments(&v21, (v8 + 9), (*v8 - 36), v22, 8uLL) == 0, (gt_error_assert_add_error(a5, v10, "err == 0")) || (gt_error_assert_add_error(a5, HIDWORD(v21) > 6, "7 <= parser.ntokens"))
  {
    v11 = 0;
    v12 = 0;
    LOBYTE(v13) = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v13 = *v23;
    v14 = *v24;
    v12 = *v25;
    v11 = *v26;
    if (v13 == 2)
    {
      v20 = *v28;
      gt_error_assert_add_error(a5, *v28 != 0, "isArrayType");
      if (v20)
      {
        v15 = *(a3 + 184);
        *(a3 + 184) = v15 + 32;
        v8 = DecodeDYMTLArrayType(v15, v8 + *v8, a3, a4, a5);
      }

      else
      {
        v15 = 0;
      }

      v16 = 60;
      LOBYTE(v13) = 2;
    }

    else if (v13 == 1)
    {
      v19 = *v27;
      gt_error_assert_add_error(a5, *v27 != 0, "isStructType");
      if (v19)
      {
        v15 = *(a3 + 168);
        *(a3 + 168) = v15 + 24;
        v8 = DecodeDYMTLStructType(v15, v8 + *v8, a3, a4, a5);
      }

      else
      {
        v15 = 0;
      }

      v16 = 60;
      LOBYTE(v13) = 1;
    }

    else
    {
      v15 = 0;
      v16 = 60;
    }
  }

  if (a4)
  {
    *a1 = v16;
    *(a1 + 1) = 0;
    *(a1 + 4) = 0;
    *(a1 + 8) = v15;
    *(a1 + 16) = v11;
    *(a1 + 20) = v12;
    *(a1 + 22) = v13;
    *(a1 + 23) = v14;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t DecodeDYMTLComputePipelineReflection(_DWORD *a1, void *a2, uint64_t a3, int *a4)
{
  v7 = a1;
  v80 = *MEMORY[0x277D85DE8];
  v69 = 0uLL;
  v73 = 0u;
  v74 = 0u;
  v75 = 0;
  v70 = 0u;
  v71 = 0u;
  memset(v72, 0, 26);
  if (gt_error_assert_add_error(a4, (a1[8] >> 12) & 1, "header->flags & 0x00001000"))
  {
    v63 = 0;
    v8 = 0;
    v9 = a2[19];
LABEL_18:
    v11 = 0;
    v64 = 0;
    goto LABEL_19;
  }

  v59 = a3;
  v61 = a2;
  v10 = 0;
  v11 = 0;
  v8 = 0;
  v12 = v7;
  do
  {
    v13 = (v12 + *v12);
    if (gt_error_assert_add_error(a4, v13[1] == -12272, "header->fenum == kDYFEInternalData"))
    {
      break;
    }

    *&v65 = 0;
    v14 = (FBDecoder_DecodeArguments(&v65, (v13 + 9), (*v13 - 36), v76, 0xDuLL) & 0xFFFFFFFD) == 0;
    if (gt_error_assert_add_error(a4, v14, "err == 0 || err == 2") & 1) != 0 || (gt_error_assert_add_error(a4, DWORD1(v65) > 1, "2 <= parser.ntokens"))
    {
      break;
    }

    v15 = *v77;
    if (*v77 == 126)
    {
      ++v8;
    }

    else if (v15 == 106)
    {
      ++v11;
    }

    else if (v15 == 105)
    {
      ++v10;
    }

    v12 = InternalDataArgumentChainEnd(v13, a4);
  }

  while ((*(v12 + 33) & 0x20) == 0);
  a2 = v61;
  if (v10)
  {
    v16 = v61[19];
  }

  else
  {
    v16 = 0;
  }

  v9 = v61[19] + 56 * v10;
  v63 = v16;
  v64 = v9;
  a3 = v59;
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_19:
  a2[19] = v9 + 56 * v11;
  if (v8)
  {
    v17 = a2[28];
  }

  else
  {
    v17 = 0;
  }

  if (v8)
  {
    v18 = a2[28] + 8 * v8;
  }

  else
  {
    v18 = 0;
  }

  v58 = v18;
  a2[28] += 8 * v8 + 8 * v8;
  if ((v7[8] & 0x1000) != 0 && (gt_error_assert_add_error(a4, (v7[8] & 0x2000) == 0, "!(header->flags & 0x00002000)") & 1) == 0)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v60 = 0;
    v62 = 0;
    v56 = 0;
    v57 = v17;
    while (1)
    {
      v7 = (v7 + *v7);
      if (gt_error_assert_add_error(a4, v7[1] == -12272, "header->fenum == kDYFEInternalData"))
      {
        goto LABEL_28;
      }

      v68 = 0;
      v29 = FBDecoder_DecodeArguments(&v68, (v7 + 9), (*v7 - 36), v76, 0xDuLL) == 0;
      if (gt_error_assert_add_error(a4, v29, "err == 0"))
      {
        goto LABEL_28;
      }

      v30 = HIDWORD(v68);
      if (gt_error_assert_add_error(a4, HIDWORD(v68) > 1, "2 <= parser.ntokens"))
      {
        goto LABEL_28;
      }

      v31 = *v77;
      if (*v77 <= 119)
      {
        switch(v31)
        {
          case 'i':
            v7 = DecodeDYMTLBinding(v63 + 56 * v19++, v7, a2, a3, a4);
            break;
          case 'j':
            v7 = DecodeDYMTLBinding(v64 + 56 * v20++, v7, a2, a3, a4);
            break;
          case 'k':
            if (gt_error_assert_add_error(a4, v30 > 3, "4 <= parser.ntokens"))
            {
              goto LABEL_28;
            }

            v22 = *v78;
            v60 = *v79;
            break;
        }

        goto LABEL_74;
      }

      if (v31 == 120)
      {
        v34 = v21;
        v66 = 0u;
        *__s = 0u;
        v65 = 0u;
        DYTraceDecode_InternalData(&v65, v7, (*v7 - 36), 0);
        v35 = __s[0];
        if (__s[0])
        {
          v36 = strlen(__s[0]);
          v37 = a2[29];
          v38 = v37;
          v39 = v36 + 1;
          if (v36 != -1)
          {
            goto LABEL_58;
          }
        }

        else
        {
          v39 = 0;
          v37 = a2[29];
        }

        v38 = 0;
LABEL_58:
        a2[29] = &v37[v39];
        if (a3)
        {
          memcpy(v38, v35, v39);
          v46 = __s[1];
          v47 = v66;
          ++*(v56 + 8);
          v48 = a2[27];
          *v48 = v38;
          *(v48 + 8) = v47;
          *(v48 + 12) = BYTE8(v47);
          *(v48 + 13) = v46;
          *(v48 + 14) = 0;
        }

        a2[27] += 16;
        v17 = v57;
        v21 = v34;
        goto LABEL_74;
      }

      if (v31 != 126)
      {
        if (v31 == 137)
        {
          v66 = 0u;
          *__s = 0u;
          v65 = 0u;
          DYTraceDecode_InternalData(&v65, v7, (*v7 - 36), 0);
          if (a3)
          {
            v32 = v66;
            v33 = a2[17];
            *v33 = a2[27];
            *(v33 + 8) = 0;
            *(v33 + 9) = v32;
            *(v33 + 10) = BYTE8(v32);
            *(v33 + 11) = 0;
            v56 = v33;
            *(v33 + 15) = 0;
          }

          v62 = a2[17];
          a2[17] = v62 + 16;
        }

        goto LABEL_74;
      }

      if (gt_error_assert_add_error(a4, v30 > 3, "4 <= parser.ntokens"))
      {
        goto LABEL_28;
      }

      v55 = v22;
      v40 = v21;
      v41 = v78;
      if (!v78)
      {
        break;
      }

      v42 = strlen(v78);
      v43 = a2[29];
      v44 = v43;
      v45 = v42 + 1;
      if (v42 == -1)
      {
        goto LABEL_62;
      }

LABEL_63:
      a2[29] = &v43[v45];
      if (a3)
      {
        memcpy(v44, v41, v45);
      }

      v49 = v79;
      if (v79)
      {
        v50 = strlen(v79);
        v51 = a2;
        v52 = a2[29];
        v53 = v52;
        v54 = v50 + 1;
        if (v50 != -1)
        {
          goto LABEL_70;
        }
      }

      else
      {
        v54 = 0;
        v51 = a2;
        v52 = a2[29];
      }

      v53 = 0;
LABEL_70:
      v51[29] = &v52[v54];
      if (a3)
      {
        memcpy(v53, v49, v54);
        v17 = v57;
        *(v57 + 8 * v40) = v44;
        *(v58 + 8 * v40) = v53;
        v21 = (v40 + 1);
        a2 = v51;
      }

      else
      {
        a2 = v51;
        v17 = v57;
        v21 = v40;
      }

      v22 = v55;
LABEL_74:
      if ((*(v7 + 33) & 0x20) != 0)
      {
        goto LABEL_28;
      }
    }

    v45 = 0;
    v43 = a2[29];
LABEL_62:
    v44 = 0;
    goto LABEL_63;
  }

  v19 = 0;
  v20 = 0;
  LOWORD(v21) = 0;
  LOWORD(v22) = 0;
  v60 = 0;
  v62 = 0;
LABEL_28:
  if (a3)
  {
    v23 = a2[14];
    *(v23 + 8) = v69;
    v24 = v74;
    *(v23 + 56) = v73;
    *(v23 + 72) = v24;
    *(v23 + 144) = *(v72 + 10);
    v25 = v71;
    *(v23 + 134) = v72[0];
    v26 = v70;
    *(v23 + 118) = v25;
    *v23 = -1;
    *(v23 + 24) = v63;
    *(v23 + 32) = v64;
    *(v23 + 40) = v17;
    *(v23 + 48) = v58;
    *(v23 + 88) = v75;
    *(v23 + 92) = v19;
    *(v23 + 94) = v20;
    *(v23 + 96) = v21;
    *(v23 + 98) = v22;
    *(v23 + 100) = v60;
    *(v23 + 102) = v26;
    *(v23 + 160) = v62;
  }

  result = a2[14];
  a2[14] = result + 168;
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DecodeDYMTLRenderPipelineReflection(_DWORD *a1, void *a2, unsigned int a3, int *a4)
{
  v4 = a4;
  v132 = *MEMORY[0x277D85DE8];
  v122 = 0uLL;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  memset(v127, 0, sizeof(v127));
  memset(__src, 0, 280);
  if (gt_error_assert_add_error(a4, (a1[8] >> 12) & 1, "header->flags & 0x00001000"))
  {
    v104 = 0;
    v7 = 0;
    LOWORD(v8) = 0;
    LOWORD(v9) = 0;
    LOWORD(v10) = 0;
    LOWORD(v11) = 0;
    LOWORD(v12) = 0;
    LOWORD(v13) = 0;
    v14 = a2[19];
LABEL_58:
    LOWORD(v16) = 0;
    v34 = 0;
    goto LABEL_59;
  }

  v109 = a2;
  v15 = 0;
  v114 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v16 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v17 = a1;
  do
  {
    v18 = (v17 + *v17);
    if (gt_error_assert_add_error(v4, v18[1] == -12272, "header->fenum == kDYFEInternalData"))
    {
      break;
    }

    *&v117 = 0;
    v19 = FBDecoder_DecodeArguments(&v117, (v18 + 9), (*v18 - 36), v128, 0xDuLL) == 0;
    if (gt_error_assert_add_error(v4, v19, "err == 0") & 1) != 0 || (gt_error_assert_add_error(v4, DWORD1(v117) > 1, "2 <= parser.ntokens"))
    {
      break;
    }

    v20 = *v129;
    if (*v129 <= 125)
    {
      if (v20 == 121)
      {
        v26 = v8 + 1;
      }

      else
      {
        v26 = v8;
      }

      if (v20 == 104)
      {
        v27 = v114 + 1;
      }

      else
      {
        v27 = v114;
      }

      if (v20 == 104)
      {
        v26 = v8;
      }

      v28 = v20 == 103 ? v15 + 1 : v15;
      if (v20 == 102)
      {
        v28 = v15;
        v29 = v16 + 1;
      }

      else
      {
        v29 = v16;
      }

      if (v20 > 103)
      {
        v30 = v27;
      }

      else
      {
        v15 = v28;
        v30 = v114;
      }

      v114 = v30;
      if (v20 <= 103)
      {
        v16 = v29;
      }

      else
      {
        v8 = v26;
      }
    }

    else
    {
      if (v20 == 134)
      {
        v21 = v12 + 1;
      }

      else
      {
        v21 = v12;
      }

      if (v20 == 133)
      {
        v22 = v11 + 1;
      }

      else
      {
        v22 = v11;
      }

      if (v20 == 133)
      {
        v21 = v12;
      }

      if (v20 == 131)
      {
        v23 = v10 + 1;
      }

      else
      {
        v23 = v10;
      }

      if (v20 == 131)
      {
        v22 = v11;
        v21 = v12;
      }

      v24 = v20 == 130 ? v9 + 1 : v9;
      if (v20 == 126)
      {
        v24 = v9;
        v25 = v13 + 1;
      }

      else
      {
        v25 = v13;
      }

      if (v20 > 130)
      {
        v10 = v23;
      }

      else
      {
        v9 = v24;
      }

      if (v20 <= 130)
      {
        v13 = v25;
      }

      else
      {
        v11 = v22;
        v12 = v21;
      }
    }

    v4 = a4;
    v17 = InternalDataArgumentChainEnd(v18, a4);
  }

  while ((*(v17 + 33) & 0x20) == 0);
  v31 = v15;
  v32 = v15 == 0;
  a2 = v109;
  if (v32)
  {
    v33 = 0;
  }

  else
  {
    v33 = v109[19];
  }

  v104 = v33;
  v14 = v109[19] + 56 * v31;
  v34 = v14;
  v7 = v114;
  if (!v16)
  {
    goto LABEL_58;
  }

LABEL_59:
  v103 = v34;
  v35 = v14 + 56 * v16;
  if (v9)
  {
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  v102 = v36;
  v37 = v35 + 56 * v9;
  if (v11)
  {
    v38 = v37;
  }

  else
  {
    v38 = 0;
  }

  v101 = v38;
  v39 = v37 + 56 * v11;
  if (v10)
  {
    v40 = v39;
  }

  else
  {
    v40 = 0;
  }

  v100 = v40;
  v41 = v39 + 56 * v10;
  if (v12)
  {
    v42 = v41;
  }

  else
  {
    v42 = 0;
  }

  v99 = v42;
  v43 = v41 + 56 * v12;
  if (v7)
  {
    v44 = v43;
  }

  else
  {
    v44 = 0;
  }

  v98 = v44;
  v45 = v43 + 56 * v7;
  if (v8)
  {
    v46 = v45;
  }

  else
  {
    v46 = 0;
  }

  v97 = v46;
  a2[19] = v45 + 56 * v8;
  if (v13)
  {
    v47 = a2[28];
  }

  else
  {
    v47 = 0;
  }

  if (v13)
  {
    v48 = a2[28] + 8 * v13;
  }

  else
  {
    v48 = 0;
  }

  v95 = v48;
  a2[28] += 8 * v13 + 8 * v13;
  v49 = a1;
  if ((a1[8] & 0x1000) == 0)
  {
    LOWORD(v50) = 0;
    v115 = 0;
    v108 = 0;
    v110 = 0;
    v106 = 0;
    v107 = 0;
    v105 = 0;
    v51 = 0;
    v96 = 0;
    v52 = 0;
    v53 = 0;
    v93 = 0;
    v94 = 0;
    v92 = 0;
    v54 = a3;
    goto LABEL_87;
  }

  v54 = a3;
  v50 = 0;
  if ((gt_error_assert_add_error(v4, (a1[8] & 0x2000) == 0, "!(header->flags & 0x00002000)") & 1) == 0)
  {
    v115 = 0;
    v108 = 0;
    v110 = 0;
    v106 = 0;
    v107 = 0;
    v105 = 0;
    v51 = 0;
    v96 = 0;
    v52 = 0;
    v53 = 0;
    v93 = 0;
    v94 = 0;
    v91 = 0;
    v92 = 0;
    while (1)
    {
      v49 = (v49 + *v49);
      if (gt_error_assert_add_error(v4, v49[1] == -12272, "header->fenum == kDYFEInternalData"))
      {
        goto LABEL_87;
      }

      v120 = 0;
      v62 = FBDecoder_DecodeArguments(&v120, (v49 + 9), (*v49 - 36), v128, 0xDuLL) == 0;
      if (gt_error_assert_add_error(v4, v62, "err == 0"))
      {
        goto LABEL_87;
      }

      v63 = HIDWORD(v120);
      if (gt_error_assert_add_error(v4, HIDWORD(v120) > 1, "2 <= parser.ntokens"))
      {
        goto LABEL_87;
      }

      v64 = *v129;
      if (*v129 > 125)
      {
        if (v64 > 132)
        {
          switch(v64)
          {
            case 133:
              v49 = DecodeDYMTLBinding(v101 + 56 * v105++, v49, a2, a3, v4);
              break;
            case 134:
              v49 = DecodeDYMTLBinding(v99 + 56 * v51++, v49, a2, a3, v4);
              break;
            case 137:
              v118 = 0u;
              *v119 = 0u;
              v117 = 0u;
              DYTraceDecode_InternalData(&v117, v49, (*v49 - 36), 0);
              v65 = BYTE8(v118);
              v66 = a2[17];
              if (BYTE8(v118) <= 2u)
              {
                if (!BYTE8(v118))
                {
                  v52 = a2[17];
                  if (!a3)
                  {
                    goto LABEL_159;
                  }

                  goto LABEL_157;
                }

                if (BYTE8(v118) != 1)
                {
                  goto LABEL_156;
                }

                v53 = a2[17];
                if (a3)
                {
                  goto LABEL_157;
                }
              }

              else
              {
                if (BYTE8(v118) != 3)
                {
                  if (BYTE8(v118) == 4)
                  {
                    v94 = a2[17];
                  }

                  else if (BYTE8(v118) == 5)
                  {
                    v92 = a2[17];
                    if (!a3)
                    {
                      goto LABEL_159;
                    }

LABEL_157:
                    v89 = v118;
                    *v66 = a2[27];
                    *(v66 + 8) = 0;
                    *(v66 + 9) = v89;
                    *(v66 + 10) = v65;
                    *(v66 + 11) = 0;
                    *(v66 + 15) = 0;
                    v90 = a2[17];
                    v91 = v66;
LABEL_160:
                    a2[17] = v90 + 16;
                    break;
                  }

LABEL_156:
                  if (!a3)
                  {
                    goto LABEL_159;
                  }

                  goto LABEL_157;
                }

                v93 = a2[17];
                if (a3)
                {
                  goto LABEL_157;
                }
              }

LABEL_159:
              v90 = a2[17];
              goto LABEL_160;
            default:
LABEL_130:
              gt_error_assert_add_error(v4, 0, "0");
              break;
          }
        }

        else
        {
          switch(v64)
          {
            case 126:
              if (gt_error_assert_add_error(v4, v63 > 3, "4 <= parser.ntokens"))
              {
                goto LABEL_87;
              }

              v67 = v47;
              v68 = __s;
              v112 = v50;
              if (__s)
              {
                v69 = strlen(__s);
                v70 = a2[29];
                v71 = v70;
                v72 = v69 + 1;
                if (v69 != -1)
                {
LABEL_142:
                  v82 = v53;
                  a2[29] = &v70[v72];
                  if (a3)
                  {
                    memcpy(v71, v68, v72);
                  }

                  v83 = v52;
                  v84 = v131;
                  if (v131)
                  {
                    v85 = strlen(v131);
                    v86 = a2[29];
                    v87 = v86;
                    v88 = v85 + 1;
                    if (v85 != -1)
                    {
                      goto LABEL_149;
                    }
                  }

                  else
                  {
                    v88 = 0;
                    v86 = a2[29];
                  }

                  v87 = 0;
LABEL_149:
                  a2[29] = &v86[v88];
                  if (a3)
                  {
                    memcpy(v87, v84, v88);
                    *(v67 + 8 * v96) = v71;
                    v47 = v67;
                    *(v95 + 8 * v96++) = v87;
                    v4 = a4;
                  }

                  else
                  {
                    v4 = a4;
                    v47 = v67;
                  }

                  v52 = v83;
                  v53 = v82;
                  v50 = v112;
                  break;
                }
              }

              else
              {
                v72 = 0;
                v70 = a2[29];
              }

              v71 = 0;
              goto LABEL_142;
            case 130:
              v49 = DecodeDYMTLBinding(v102 + 56 * v108++, v49, a2, a3, v4);
              break;
            case 131:
              v49 = DecodeDYMTLBinding(v100 + 56 * v107++, v49, a2, a3, v4);
              break;
            default:
              goto LABEL_130;
          }
        }
      }

      else if (v64 > 115)
      {
        if (v64 != 116)
        {
          if (v64 == 120)
          {
            v73 = v47;
            v118 = 0u;
            *v119 = 0u;
            v117 = 0u;
            DYTraceDecode_InternalData(&v117, v49, (*v49 - 36), 0);
            v74 = v119[0];
            if (v119[0])
            {
              v75 = strlen(v119[0]);
              v76 = a2[29];
              v77 = v76;
              v78 = v75 + 1;
              if (v75 != -1)
              {
                goto LABEL_137;
              }
            }

            else
            {
              v78 = 0;
              v76 = a2[29];
            }

            v77 = 0;
LABEL_137:
            a2[29] = &v76[v78];
            if (a3)
            {
              memcpy(v77, v74, v78);
              v79 = v119[1];
              v80 = v118;
              ++*(v91 + 8);
              v81 = a2[27];
              *v81 = v77;
              *(v81 + 8) = v80;
              *(v81 + 12) = BYTE8(v80);
              *(v81 + 13) = v79;
              *(v81 + 14) = 0;
            }

            a2[27] += 16;
            v4 = a4;
            v47 = v73;
            goto LABEL_161;
          }

          if (v64 != 121)
          {
            goto LABEL_130;
          }

          v49 = DecodeDYMTLBinding(v97 + 56 * v110++, v49, a2, a3, v4);
        }
      }

      else
      {
        switch(v64)
        {
          case 'f':
            v49 = DecodeDYMTLBinding(v103 + 56 * v106++, v49, a2, a3, v4);
            break;
          case 'g':
            v49 = DecodeDYMTLBinding(v104 + 56 * v50, v49, a2, a3, v4);
            v50 = (v50 + 1);
            break;
          case 'h':
            v49 = DecodeDYMTLBinding(v98 + 56 * v115++, v49, a2, a3, v4);
            break;
          default:
            goto LABEL_130;
        }
      }

LABEL_161:
      if ((*(v49 + 33) & 0x20) != 0)
      {
        goto LABEL_87;
      }
    }
  }

  v115 = 0;
  v108 = 0;
  v110 = 0;
  v106 = 0;
  v107 = 0;
  v105 = 0;
  v51 = 0;
  v96 = 0;
  v52 = 0;
  v53 = 0;
  v93 = 0;
  v94 = 0;
  v92 = 0;
LABEL_87:
  if (v54)
  {
    v55 = a2[15];
    *v55 = -1;
    *(v55 + 8) = v122;
    *(v55 + 24) = v104;
    *(v55 + 32) = v98;
    *(v55 + 40) = v102;
    *(v55 + 48) = v100;
    *(v55 + 56) = v97;
    *(v55 + 64) = 0;
    *(v55 + 72) = v103;
    *(v55 + 80) = v101;
    *(v55 + 88) = v99;
    *(v55 + 96) = v47;
    *(v55 + 104) = v95;
    v56 = v124;
    *(v55 + 112) = v123;
    *(v55 + 128) = v56;
    v57 = v125;
    v58 = v126;
    v59 = *v127;
    *(v55 + 190) = *&v127[14];
    *(v55 + 160) = v58;
    *(v55 + 176) = v59;
    *(v55 + 144) = v57;
    *(v55 + 198) = v50;
    *(v55 + 200) = v115;
    *(v55 + 202) = v110;
    *(v55 + 204) = v108;
    *(v55 + 206) = v107;
    *(v55 + 208) = v106;
    *(v55 + 210) = v105;
    *(v55 + 212) = v51;
    *(v55 + 214) = v96;
    memcpy((v55 + 216), __src, 0x118uLL);
    *(v55 + 496) = v52;
    *(v55 + 504) = v53;
    *(v55 + 512) = v94;
    *(v55 + 520) = v93;
    *(v55 + 528) = v92;
  }

  result = a2[15];
  a2[15] = result + 536;
  v61 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t DecodeDYMTL4MachineLearningPipelineReflection(unsigned int *a1, void *a2, uint64_t a3, int *a4)
{
  v7 = a1;
  v22 = *MEMORY[0x277D85DE8];
  result = gt_error_assert_add_error(a4, (a1[8] >> 12) & 1, "header->flags & 0x00001000");
  if (result)
  {
    v9 = 0;
    v10 = 0;
LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

  v10 = 0;
  result = v7;
  do
  {
    v11 = (result + *result);
    result = gt_error_assert_add_error(a4, v11[1] == -12272, "header->fenum == kDYFEInternalData");
    if (result)
    {
      break;
    }

    v19 = 0;
    v12 = (FBDecoder_DecodeArguments(&v19, (v11 + 9), (*v11 - 36), v20, 0xDuLL) & 0xFFFFFFFD) == 0;
    result = gt_error_assert_add_error(a4, v12, "err == 0 || err == 2");
    if (result)
    {
      break;
    }

    result = gt_error_assert_add_error(a4, HIDWORD(v19) > 1, "2 <= parser.ntokens");
    if (result)
    {
      break;
    }

    if (*v21 == 136)
    {
      v10 = v10 & 0xFFFFFFFFFFFF0000 | (v10 + 1);
    }

    result = InternalDataArgumentChainEnd(v11, a4);
  }

  while ((*(result + 33) & 0x20) == 0);
  v9 = v10;
  if (!v10)
  {
    goto LABEL_12;
  }

  v13 = a2[19];
LABEL_13:
  a2[19] += 56 * v9;
  v14 = v10 & 0xFFFFFFFFFFFF0000;
  if ((v7[8] & 0x1000) != 0)
  {
    result = gt_error_assert_add_error(a4, (v7[8] & 0x2000) == 0, "!(header->flags & 0x00002000)");
    if ((result & 1) == 0)
    {
      do
      {
        v7 = (v7 + *v7);
        result = gt_error_assert_add_error(a4, v7[1] == -12272, "header->fenum == kDYFEInternalData");
        if (result)
        {
          break;
        }

        v19 = 0;
        v17 = FBDecoder_DecodeArguments(&v19, (v7 + 9), *v7 - 36, v20, 0xDuLL) == 0;
        result = gt_error_assert_add_error(a4, v17, "err == 0");
        if (result)
        {
          break;
        }

        result = gt_error_assert_add_error(a4, HIDWORD(v19) > 1, "2 <= parser.ntokens");
        if (result)
        {
          break;
        }

        if (*v21 == 136)
        {
          v18 = v14;
          v14 = v14 & 0xFFFFFFFFFFFF0000 | (v14 + 1);
          result = DecodeDYMTLBinding(v13 + 56 * v18, v7, a2, a3, a4);
          v7 = result;
        }
      }

      while ((*(v7 + 33) & 0x20) == 0);
    }
  }

  if (a3)
  {
    v15 = a2[16];
    *v15 = v13;
    v15[1] = v14;
  }

  a2[16] += 16;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void DecodeDYMTLFunctionInfo(unsigned int *a1, void *a2, int a3, int *a4)
{
  v54 = 0;
  v53 = 0;
  if ((a1[8] & 0x1000) == 0)
  {
    return;
  }

  v7 = a1;
  v8 = 0;
  if ((gt_error_assert_add_error(a4, (a1[8] & 0x2000) == 0, "!(header->flags & 0x00002000)") & 1) == 0)
  {
    v46 = 0;
    v47 = 0;
    v9 = 0;
    v10 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v48 = 0;
    __dst = 0;
    while (1)
    {
      v7 = (v7 + *v7);
      if (gt_error_assert_add_error(a4, v7[1] == -12272, "header->fenum == kDYFEInternalData"))
      {
        goto LABEL_58;
      }

      *__s = 0u;
      *v52 = 0u;
      v50 = 0u;
      DYTraceDecode_InternalData(&v50, v7, *v7 - 36, 0);
      if (SDWORD2(v50) > 116)
      {
        switch(DWORD2(v50))
        {
          case 0x89:
            v8 = __s[0];
            break;
          case 0x78:
            if (!v9)
            {
              v44 = a2[27];
            }

            v24 = v52[0];
            if (v52[0])
            {
              v25 = strlen(v52[0]);
              v26 = a2[29];
              v27 = v26;
              v28 = v25 + 1;
              if (v25 != -1)
              {
                goto LABEL_54;
              }
            }

            else
            {
              v28 = 0;
              v26 = a2[29];
            }

            v27 = 0;
LABEL_54:
            a2[29] = &v26[v28];
            if (a3)
            {
              memcpy(v27, v24, v28);
              v38 = a2[27];
              v39 = __s[0];
              v40 = __s[1];
              v41 = v52[1];
              *v38 = v27;
              *(v38 + 8) = v39;
              *(v38 + 12) = v40;
              *(v38 + 13) = v41;
              *(v38 + 14) = 0;
            }

            ++v9;
            a2[27] += 16;
            break;
          case 0x75:
            v11 = __s[0];
            if (__s[0])
            {
              v12 = strlen(__s[0]);
              v13 = a2[29];
              v48 = v13;
              v14 = v12 + 1;
              if (v12 != -1)
              {
LABEL_45:
                a2[29] = &v13[v14];
                if (a3)
                {
                  memcpy(v48, v11, v14);
                }

                break;
              }
            }

            else
            {
              v14 = 0;
              v13 = a2[29];
            }

            v48 = 0;
            goto LABEL_45;
        }
      }

      else
      {
        switch(DWORD2(v50))
        {
          case 'e':
            WORD2(v46) = __s[0];
            v15 = v52[0];
            if (v52[0])
            {
              v16 = strlen(v52[0]);
              v17 = a2[29];
              __dst = v17;
              v18 = v16 + 1;
              if (v16 != -1)
              {
LABEL_33:
                a2[29] = &v17[v18];
                if (a3)
                {
                  memcpy(__dst, v15, v18);
                }

                LOWORD(v46) = __s[1];
                v29 = v52[1];
                if (v52[1])
                {
                  v30 = strlen(v52[1]);
                  v31 = a2[29];
                  v32 = v31;
                  v33 = v30 + 1;
                  if (v30 != -1)
                  {
                    goto LABEL_40;
                  }
                }

                else
                {
                  v33 = 0;
                  v31 = a2[29];
                }

                v32 = 0;
LABEL_40:
                a2[29] = &v31[v33];
                v45 = v32;
                if (a3)
                {
                  memcpy(v32, v29, v33);
                }

                v8 = -1;
                break;
              }
            }

            else
            {
              v18 = 0;
              v17 = a2[29];
            }

            __dst = 0;
            goto LABEL_33;
          case 'm':
            if (!v10)
            {
              v43 = a2[26];
            }

            v19 = v52[0];
            if (v52[0])
            {
              v20 = strlen(v52[0]);
              v21 = a2[29];
              v22 = v21;
              v23 = v20 + 1;
              if (v20 != -1)
              {
                goto LABEL_49;
              }
            }

            else
            {
              v23 = 0;
              v21 = a2[29];
            }

            v22 = 0;
LABEL_49:
            a2[29] = &v21[v23];
            if (a3)
            {
              memcpy(v22, v19, v23);
              v34 = a2[26];
              v35 = __s[0];
              v36 = __s[1];
              v37 = v52[1];
              *v34 = v22;
              *(v34 + 8) = v35;
              *(v34 + 12) = v36;
              *(v34 + 13) = v37;
              *(v34 + 14) = 0;
            }

            ++v10;
            a2[26] += 16;
            break;
          case 'n':
            LOWORD(v47) = __s[1];
            BYTE4(v47) = __s[0];
            break;
        }
      }

      if ((*(v7 + 33) & 0x20) != 0)
      {
        goto LABEL_58;
      }
    }
  }

  v46 = 0;
  v47 = 0;
  v9 = 0;
  v10 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v48 = 0;
  __dst = 0;
LABEL_58:
  if (a3)
  {
    v42 = a2[3];
    *v42 = v48;
    *(v42 + 8) = __dst;
    *(v42 + 16) = v45;
    *(v42 + 24) = v43;
    *(v42 + 32) = v44;
    *(v42 + 40) = WORD2(v46);
    *(v42 + 42) = v46;
    *(v42 + 44) = v47;
    *(v42 + 46) = v10;
    *(v42 + 47) = v9;
    *(v42 + 48) = BYTE4(v47);
    *(v42 + 49) = v8;
    *(v42 + 50) = v53;
    *(v42 + 54) = v54;
  }

  a2[3] += 56;
}

void DecodeDYMTLDynamicLibraryInfo(unsigned int *a1, void *a2, int a3, int *a4)
{
  v29 = 0;
  v28 = 0;
  if ((a1[8] & 0x1000) == 0)
  {
    return;
  }

  v7 = a1;
  v8 = 0;
  if ((gt_error_assert_add_error(a4, (a1[8] & 0x2000) == 0, "!(header->flags & 0x00002000)") & 1) == 0)
  {
    v24 = 0;
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v7 = (v7 + *v7);
      if (gt_error_assert_add_error(a4, v7[1] == -12272, "header->fenum == kDYFEInternalData"))
      {
        goto LABEL_35;
      }

      *__s = 0u;
      v27 = 0u;
      v25 = 0u;
      DYTraceDecode_InternalData(&v25, v7, *v7 - 36, a4);
      if (DWORD2(v25) == 129)
      {
        if (!v8)
        {
          v24 = a2[28];
        }

        v17 = __s[0];
        if (__s[0])
        {
          v18 = strlen(__s[0]);
          v19 = a2[29];
          v20 = v19;
          v21 = v18 + 1;
          if (v18 != -1)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v21 = 0;
          v19 = a2[29];
        }

        v20 = 0;
LABEL_26:
        a2[29] = &v19[v21];
        if (a3)
        {
          memcpy(v20, v17, v21);
          *a2[28] = v20;
        }

        ++v8;
        a2[28] += 8;
        goto LABEL_34;
      }

      if (DWORD2(v25) != 128)
      {
        if (DWORD2(v25) != 127)
        {
          goto LABEL_34;
        }

        v11 = __s[0];
        if (__s[0])
        {
          v12 = strlen(__s[0]);
          v13 = a2[29];
          v9 = v13;
          v14 = v12 + 1;
          if (v12 != -1)
          {
LABEL_31:
            a2[29] = &v13[v14];
            if (a3)
            {
              v22 = v9;
              goto LABEL_33;
            }

            goto LABEL_34;
          }
        }

        else
        {
          v14 = 0;
          v13 = a2[29];
        }

        v9 = 0;
        goto LABEL_31;
      }

      v11 = __s[0];
      if (!__s[0])
      {
        break;
      }

      v15 = strlen(__s[0]);
      v16 = a2[29];
      v10 = v16;
      v14 = v15 + 1;
      if (v15 == -1)
      {
        goto LABEL_21;
      }

LABEL_22:
      a2[29] = &v16[v14];
      if (a3)
      {
        v22 = v10;
LABEL_33:
        memcpy(v22, v11, v14);
      }

LABEL_34:
      if ((*(v7 + 33) & 0x20) != 0)
      {
        goto LABEL_35;
      }
    }

    v14 = 0;
    v16 = a2[29];
LABEL_21:
    v10 = 0;
    goto LABEL_22;
  }

  v24 = 0;
  v9 = 0;
  v10 = 0;
LABEL_35:
  if (a3)
  {
    v23 = a2[2];
    *v23 = v10;
    *(v23 + 8) = v9;
    *(v23 + 16) = v24;
    *(v23 + 24) = v8;
    *(v23 + 26) = v28;
    *(v23 + 30) = v29;
  }

  a2[2] += 32;
}

uint64_t DecodeDYMTLLibraryInfo(unsigned int *a1, uint64_t a2, int a3, int *a4)
{
  v20 = 0uLL;
  if ((a1[8] & 0x1000) == 0)
  {
    return 0;
  }

  v8 = a1;
  v4 = 0;
  v9 = 0;
  if ((gt_error_assert_add_error(a4, (a1[8] & 0x2000) == 0, "!(header->flags & 0x00002000)") & 1) == 0)
  {
    while (1)
    {
      v8 = (v8 + *v8);
      if (gt_error_assert_add_error(a4, v8[1] == -12272, "header->fenum == kDYFEInternalData"))
      {
        goto LABEL_17;
      }

      *__s = 0u;
      v19 = 0u;
      v17 = 0u;
      DYTraceDecode_InternalData(&v17, v8, *v8 - 36, a4);
      v10 = DWORD2(v17);
      if (DWORD2(v17) == 127)
      {
        break;
      }

      if (DWORD2(v17) == 108)
      {
        v11 = __s[1];
        if (__s[1])
        {
          goto LABEL_8;
        }

LABEL_11:
        v14 = 0;
        v11 = 0;
        v13 = *(a2 + 232);
        goto LABEL_12;
      }

LABEL_16:
      if ((*(v8 + 33) & 0x20) != 0)
      {
        goto LABEL_17;
      }
    }

    v11 = __s[0];
    if (!__s[0])
    {
      goto LABEL_11;
    }

LABEL_8:
    v12 = strlen(v11);
    v13 = *(a2 + 232);
    v9 = v13;
    v14 = v12 + 1;
    if (v12 == -1)
    {
LABEL_12:
      v9 = 0;
    }

    *(a2 + 232) = &v13[v14];
    if (a3)
    {
      memcpy(v9, v11, v14);
      v4 = DWORD2(v17);
    }

    else
    {
      v4 = v10;
    }

    goto LABEL_16;
  }

LABEL_17:
  if (a3)
  {
    v15 = *(a2 + 56);
    *v15 = v9;
    *(v15 + 8) = v20;
  }

  *(a2 + 56) += 24;
  return v4;
}

void DecodeDYMTLPipelineLibraryInfo(unsigned int *a1, void *a2, uint64_t a3, int *a4)
{
  v43 = 0;
  v42 = 0;
  if ((a1[8] & 0x1000) == 0)
  {
    return;
  }

  v7 = a1;
  if (gt_error_assert_add_error(a4, (a1[8] & 0x2000) == 0, "!(header->flags & 0x00002000)"))
  {
    if (a3)
    {
      LOWORD(v8) = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      goto LABEL_46;
    }

    goto LABEL_47;
  }

  v8 = 0;
  v11 = 0;
  v9 = 0;
  v10 = 0;
  do
  {
    v7 = (v7 + *v7);
    if (gt_error_assert_add_error(a4, v7[1] == -12272, "header->fenum == kDYFEInternalData"))
    {
      break;
    }

    *__s = 0u;
    v41 = 0u;
    *newpool = 0u;
    DYTraceDecode_InternalData(newpool, v7, *v7 - 36, a4);
    if (LODWORD(newpool[1]) == 135)
    {
      v38 = v10;
      if (!v8)
      {
        v9 = a2[28];
        v11 = (v9 + 8);
      }

      v17 = __s[0];
      if (__s[0])
      {
        v18 = strlen(__s[0]);
        v19 = a2[29];
        v20 = v19;
        v21 = v18 + 1;
        if (v18 != -1)
        {
LABEL_23:
          a2[29] = &v19[v21];
          v22 = a3;
          if (a3)
          {
            memcpy(v20, v17, v21);
          }

          v23 = v8;
          v24 = __s[1];
          if (__s[1])
          {
            v25 = strlen(__s[1]);
            v26 = a2[29];
            v27 = v26;
            v28 = v25 + 1;
            if (v25 != -1)
            {
              goto LABEL_30;
            }
          }

          else
          {
            v28 = 0;
            v26 = a2[29];
          }

          v27 = 0;
LABEL_30:
          a2[29] = &v26[v28];
          if (v22)
          {
            memcpy(v27, v24, v28);
            *a2[28] = v20;
            *(a2[28] + 8) = v27;
          }

          v8 = v23 + 1;
          a2[28] += 16;
          v10 = v38;
          a3 = v22;
          continue;
        }
      }

      else
      {
        v21 = 0;
        v19 = a2[29];
      }

      v20 = 0;
      goto LABEL_23;
    }

    if (LODWORD(newpool[1]) == 132)
    {
      v13 = __s[0];
      if (__s[0])
      {
        v14 = strlen(__s[0]);
        v15 = a2[29];
        v10 = v15;
        v16 = v14 + 1;
        if (v14 != -1)
        {
LABEL_19:
          a2[29] = &v15[v16];
          if (a3)
          {
            memcpy(v10, v13, v16);
          }

          continue;
        }
      }

      else
      {
        v16 = 0;
        v15 = a2[29];
      }

      v10 = 0;
      goto LABEL_19;
    }
  }

  while ((*(v7 + 33) & 0x20) == 0);
  if (a3)
  {
    if (v8)
    {
      newpool[0] = 0;
      apr_pool_create_ex(newpool, 0, 0, v12);
      v29 = v8;
      v30 = apr_palloc(newpool[0], 16 * v8);
      v31 = 0;
      v32 = v30;
      do
      {
        *v32++ = *(v9 + v31);
        v31 += 16;
      }

      while (16 * v8 != v31);
      v33 = &v30[v8];
      v34 = v8;
      do
      {
        v35 = *v11;
        v11 += 2;
        *v33++ = v35;
        --v34;
      }

      while (v34);
      v36 = 8 * v8;
      do
      {
        *(v9 + v34) = *(v30 + v34);
        v34 += 8;
      }

      while (v36 != v34);
      v11 = (v9 + 8 * v8);
      do
      {
        *(v9 + v36) = v30[v36 / 8];
        v36 += 8;
        --v29;
      }

      while (v29);
      apr_pool_destroy(newpool[0]);
    }

    else
    {
      LOWORD(v8) = 0;
    }

LABEL_46:
    v37 = a2[8];
    *v37 = v10;
    *(v37 + 8) = v9;
    *(v37 + 16) = v11;
    *(v37 + 24) = v8;
    *(v37 + 26) = v42;
    *(v37 + 30) = v43;
  }

LABEL_47:
  a2[8] += 32;
}

uint64_t GTTraceFuncArgs_getMtl4Commits(uint64_t a1, uint64_t a2, char **a3)
{
  *a3 = 0;
  v6 = *(a1 + 8);
  if (v6 == -14847)
  {
    v8 = 16;
  }

  else
  {
    result = 0;
    if (v6 != -14846)
    {
      return result;
    }

    v8 = 24;
  }

  v9 = GTTraceFunc_argumentBytesWithMap(a1, *(a1 + 13), a2);
  *a3 = GTTraceFunc_argumentBytesWithMap(a1, v9[v8], a2);
  return *(v9 + 1);
}

void **MakeDYMTLRenderPipelineColorAttachmentDescriptor(void **result, uint64_t a2, int a3)
{
  v3 = *result;
  v4 = *(*result)++;
  v5 = v3[1];
  *result = v3 + 2;
  v6 = v3[2];
  *result = v3 + 3;
  v7 = v3[3];
  *result = v3 + 4;
  v8 = v3[4];
  *result = v3 + 5;
  v9 = v3[5];
  *result = v3 + 6;
  v10 = v3[6];
  *result = v3 + 7;
  v11 = v3[7];
  *result = v3 + 8;
  v12 = v3[8];
  *result = v3 + 9;
  if (a3)
  {
    *a2 = v12;
    *(a2 + 2) = v10;
    *(a2 + 3) = v4;
    *(a2 + 4) = v9;
    *(a2 + 5) = v6;
    *(a2 + 6) = v7;
    *(a2 + 7) = v8;
    *(a2 + 8) = v5;
    *(a2 + 9) = v11;
    *(a2 + 10) = 0;
    *(a2 + 14) = 0;
  }

  return result;
}

size_t MakeDYMTLLinkedFunctions(size_t result, void *a2, void *a3, int a4, uint64_t a5)
{
  v9 = result;
  v10 = (*result + 8);
  v11 = **result;
  *result = v10;
  if (v11)
  {
    v46 = a3[72];
    v12 = v11;
    do
    {
      v13 = **v9;
      *v9 += 8;
      if (a4)
      {
        if (a5)
        {
          result = GetAliasStream2(a5, v13);
          if (result)
          {
            v13 = *result;
          }

          else
          {
            v13 = 0;
          }
        }

        v14 = a3[72];
        *v14 = v13;
      }

      else
      {
        v14 = a3[72];
      }

      a3[72] = v14 + 1;
      --v12;
    }

    while (v12);
    v10 = *v9;
  }

  else
  {
    v46 = 0;
  }

  v17 = *v10;
  v15 = v10 + 8;
  v16 = v17;
  *v9 = v15;
  v49 = v17;
  if (v17)
  {
    v45 = a3[72];
    v18 = v16;
    do
    {
      v19 = **v9;
      *v9 += 8;
      if (a4)
      {
        if (a5)
        {
          result = GetAliasStream2(a5, v19);
          if (result)
          {
            v19 = *result;
          }

          else
          {
            v19 = 0;
          }
        }

        v20 = a3[72];
        *v20 = v19;
      }

      else
      {
        v20 = a3[72];
      }

      a3[72] = v20 + 1;
      --v18;
    }

    while (v18);
    v15 = *v9;
  }

  else
  {
    v45 = 0;
  }

  v22 = v15 + 8;
  v21 = *v15;
  *v9 = v15 + 8;
  v47 = v11;
  v48 = a2;
  if (v21)
  {
    v23 = *(v15 + 1);
    v22 = v15 + 16;
    *v9 = v15 + 16;
    if (v23)
    {
      v24 = 0;
      v50 = a3[63];
      v51 = v15 + 16;
      *v9 = &v22[8 * v23];
      a3[63] += 24 * v23;
      while (1)
      {
        v25 = *v9;
        result = strlen(*v9);
        *v9 += (result & 0xFFFFFFFFFFFFFFF8) + 8;
        if (*v25)
        {
          v26 = v25;
        }

        else
        {
          v26 = 0;
        }

        if (*v25)
        {
          result = strlen(v26);
          v27 = a3[74];
          v28 = result + 1;
          if (result != -1)
          {
            v29 = a3[74];
            goto LABEL_36;
          }
        }

        else
        {
          v27 = a3[74];
        }

        v28 = 0;
        v29 = 0;
LABEL_36:
        a3[74] = v27 + v28;
        if (a4)
        {
          result = memcpy(v29, v26, v28);
        }

        v30 = *&v22[8 * v24];
        if (v30)
        {
          v31 = v23;
          v32 = a3[72];
          v33 = v30;
          do
          {
            v34 = **v9;
            *v9 += 8;
            if (a4)
            {
              if (a5)
              {
                result = GetAliasStream2(a5, v34);
                if (result)
                {
                  v34 = *result;
                }

                else
                {
                  v34 = 0;
                }
              }

              v35 = a3[72];
              *v35 = v34;
            }

            else
            {
              v35 = a3[72];
            }

            a3[72] = v35 + 1;
            --v33;
          }

          while (v33);
          v23 = v31;
          v22 = v51;
          if ((a4 & 1) == 0)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v32 = 0;
          if ((a4 & 1) == 0)
          {
            goto LABEL_50;
          }
        }

        v36 = v50 + 24 * v24;
        *v36 = v29;
        *(v36 + 8) = v32;
        *(v36 + 16) = v30;
        *(v36 + 20) = 0;
LABEL_50:
        if (++v24 == v23)
        {
          v22 = *v9;
          v37 = v50;
          goto LABEL_56;
        }
      }
    }

    v37 = 0;
LABEL_56:
    if (a4)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    if (a4)
    {
      v39 = v23;
    }

    else
    {
      v39 = 0;
    }
  }

  else
  {
    v38 = 0;
    v39 = 0;
  }

  v40 = *v22;
  *v9 = v22 + 8;
  if (v40)
  {
    v41 = a3[72];
    v42 = v40;
    do
    {
      v43 = **v9;
      *v9 += 8;
      if (a4)
      {
        if (a5)
        {
          result = GetAliasStream2(a5, v43);
          if (result)
          {
            v43 = *result;
          }

          else
          {
            v43 = 0;
          }
        }

        v44 = a3[72];
        *v44 = v43;
      }

      else
      {
        v44 = a3[72];
      }

      a3[72] = v44 + 1;
      --v42;
    }

    while (v42);
  }

  else
  {
    v41 = 0;
  }

  if (a4)
  {
    *v48 = v45;
    v48[1] = v49;
    v48[2] = v46;
    v48[3] = v47;
    v48[4] = v38;
    v48[5] = v39;
    v48[6] = v41;
    v48[7] = v40;
  }

  return result;
}

uint64_t DecodeDYMTLSamplerDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *a1;
  v35 = *(a1 + 16);
  v36 = *(a1 + 24);
  v37 = *(a1 + 8);
  v8 = *(a1 + 32);
  v38 = *(a1 + 40);
  v39 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v12 = (a1 + 88);
  v13 = *(a1 + 80);
  v14 = strlen((a1 + 88));
  if (*(a1 + 88))
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  if (*(a1 + 88))
  {
    v16 = strlen(v15);
    v17 = (a3 + 592);
    v18 = *(a3 + 592);
    v19 = v16 + 1;
    if (v16 != -1)
    {
      v20 = *(a3 + 592);
      goto LABEL_9;
    }
  }

  else
  {
    v17 = (a3 + 592);
    v18 = *(a3 + 592);
  }

  v19 = 0;
  v20 = 0;
LABEL_9:
  *v17 = v18 + v19;
  if (a4)
  {
    memcpy(v20, v15, v19);
  }

  v21 = 0uLL;
  v22 = 0;
  if (v7 < 2)
  {
    v32 = 0;
    v30 = 0;
    v27 = 0;
    v25 = 0;
    v24 = 0;
LABEL_24:
    v29 = 0;
    v28 = 0;
    v26 = 0;
LABEL_25:
    v31 = 0;
    goto LABEL_26;
  }

  v23 = &v12[v14 & 0xFFFFFFFFFFFFFFF8];
  v24 = *(v23 + 8);
  if (v7 < 8)
  {
    v32 = 0;
    v30 = 0;
    v27 = 0;
    v25 = 0;
    goto LABEL_24;
  }

  v25 = v23[16];
  if (v7 < 0xA)
  {
    v32 = 0;
    v30 = 0;
    v27 = 0;
    goto LABEL_24;
  }

  v26 = *(v23 + 24);
  if (v7 < 0x11)
  {
    v32 = 0;
    v30 = 0;
    v27 = 0;
LABEL_41:
    v29 = 0;
    v28 = 0;
    goto LABEL_25;
  }

  v27 = *(v23 + 32);
  if (v7 < 0x16)
  {
    v32 = 0;
    v30 = 0;
    goto LABEL_41;
  }

  v28 = *(v23 + 5);
  v29 = *(v23 + 48);
  if (v7 < 0x1C)
  {
    v32 = 0;
    v30 = 0;
    goto LABEL_25;
  }

  v30 = v23[56];
  if (v7 < 0x27)
  {
    v32 = 0;
    goto LABEL_25;
  }

  v26 = *(v23 + 64);
  v21 = vuzp1q_s32(*(v23 + 72), *(v23 + 88));
  v31 = v23[104];
  if (v7 < 0x2A)
  {
    v32 = 0;
  }

  else
  {
    v32 = *(v23 + 56);
    if (v7 >= 0x53)
    {
      v22 = *(v23 + 30);
    }
  }

LABEL_26:
  v33 = *(a3 + 16);
  result = v33 + 72;
  *(a3 + 16) = v33 + 72;
  if (a4)
  {
    if (v29 == 255)
    {
      LOBYTE(v29) = 0;
    }

    *v33 = v20;
    *(v33 + 8) = v8;
    if (v28 == -1)
    {
      v28 = 0;
    }

    *(v33 + 16) = v28;
    if (v27 == 255)
    {
      LOBYTE(v27) = 0;
    }

    *(v33 + 24) = v21;
    if (v26 == 255)
    {
      LOBYTE(v26) = 0;
    }

    if (v24 == 255)
    {
      LOBYTE(v24) = 0;
    }

    *(v33 + 40) = v22;
    *(v33 + 44) = v13;
    *(v33 + 48) = v11;
    *(v33 + 52) = v32;
    *(v33 + 54) = v26;
    *(v33 + 55) = v25;
    *(v33 + 56) = v29;
    *(v33 + 57) = v31;
    *(v33 + 58) = v24;
    *(v33 + 59) = v35;
    *(v33 + 60) = v37;
    *(v33 + 61) = v36;
    *(v33 + 62) = v10;
    *(v33 + 63) = v9;
    *(v33 + 64) = v30;
    *(v33 + 65) = v38;
    *(v33 + 66) = v27;
    *(v33 + 67) = v39;
    *(v33 + 68) = 0;
  }

  return result;
}

unint64_t EncodeDYMTLSamplerDescriptor(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 8)
  {
    *a2 = 115;
    if (a3 >= 0x10)
    {
      *(a2 + 8) = *(a1 + 60);
      if (a3 >= 0x18)
      {
        *(a2 + 16) = *(a1 + 59);
        if (a3 >= 0x20)
        {
          *(a2 + 24) = *(a1 + 61);
          if (a3 >= 0x28)
          {
            *(a2 + 32) = *(a1 + 8);
            if (a3 >= 0x30)
            {
              *(a2 + 40) = *(a1 + 65);
              if (a3 >= 0x38)
              {
                *(a2 + 48) = *(a1 + 67);
                if (a3 >= 0x40)
                {
                  *(a2 + 56) = *(a1 + 63);
                  if (a3 >= 0x48)
                  {
                    *(a2 + 64) = *(a1 + 62);
                    if (a3 >= 0x4C)
                    {
                      *(a2 + 72) = *(a1 + 48);
                      if (a3 >= 0x4D)
                      {
                        v6 = a3 - 76 >= 4 ? 4 : a3 - 76;
                        bzero((a2 + 76), v6);
                        if (a3 >= 0x54)
                        {
                          *(a2 + 80) = *(a1 + 44);
                          if (a3 >= 0x55)
                          {
                            if (a3 - 84 >= 4)
                            {
                              v7 = 4;
                            }

                            else
                            {
                              v7 = a3 - 84;
                            }

                            bzero((a2 + 84), v7);
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (*a1)
  {
    v8 = *a1;
  }

  else
  {
    v8 = "";
  }

  v9 = strlen(v8);
  v10 = v9 + 89;
  if (a3 >= v9 + 89)
  {
    memcpy((a2 + 88), v8, v9 + 1);
  }

  v11 = v9 & 0xFFFFFFFFFFFFFFF8;
  if (a3 > v10)
  {
    if (a3 - v10 >= v11 + ~v9 + 8)
    {
      v12 = v11 + ~v9 + 8;
    }

    else
    {
      v12 = a3 - v10;
    }

    bzero((a2 + v10), v12);
  }

  if (v11 + 104 <= a3)
  {
    *(a2 + v11 + 96) = *(a1 + 58);
  }

  if (v11 + 112 <= a3)
  {
    *(a2 + v11 + 104) = *(a1 + 55);
  }

  if (v11 + 120 <= a3)
  {
    *(a2 + v11 + 112) = *(a1 + 54);
  }

  if (v11 + 128 <= a3)
  {
    *(a2 + v11 + 120) = *(a1 + 66);
  }

  if (v11 + 136 <= a3)
  {
    *(a2 + v11 + 128) = *(a1 + 16);
  }

  if (v11 + 144 <= a3)
  {
    *(a2 + v11 + 136) = *(a1 + 56);
  }

  if (v11 + 152 <= a3)
  {
    *(a2 + v11 + 144) = *(a1 + 64);
  }

  if (v11 + 160 <= a3)
  {
    *(a2 + v11 + 152) = *(a1 + 54);
  }

  if (v11 + 168 <= a3)
  {
    *(a2 + v11 + 160) = *(a1 + 24);
  }

  if (v11 + 176 <= a3)
  {
    *(a2 + v11 + 168) = *(a1 + 28);
  }

  if (v11 + 184 <= a3)
  {
    *(a2 + v11 + 176) = *(a1 + 32);
  }

  if (v11 + 192 <= a3)
  {
    *(a2 + v11 + 184) = *(a1 + 36);
  }

  if (v11 + 200 <= a3)
  {
    *(a2 + v11 + 192) = *(a1 + 57);
  }

  if (v11 + 208 <= a3)
  {
    *(a2 + v11 + 200) = *(a1 + 52);
  }

  v13 = v11 + 212;
  if (a3 >= v11 + 212)
  {
    *(a2 + v11 + 208) = *(a1 + 40);
  }

  if (a3 > v13)
  {
    if (a3 - v13 >= 4)
    {
      v14 = 4;
    }

    else
    {
      v14 = a3 - v13;
    }

    bzero((a2 + v13), v14);
  }

  return v11 + 216;
}

size_t DecodeDYMTLFunctionDescriptor(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5)
{
  v9 = (a1 + 16);
  v38 = *(a1 + 8);
  v39 = *a1;
  v10 = strlen((a1 + 16)) & 0xFFFFFFFFFFFFFFF8;
  v11 = &v9[v10 + 8];
  if (*(a1 + 16))
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  if (*(a1 + 16))
  {
    v13 = strlen(v12);
    v14 = a3 + 74;
    v15 = a3[74];
    v16 = v13 + 1;
    if (v13 != -1)
    {
      v17 = a3[74];
      goto LABEL_9;
    }
  }

  else
  {
    v14 = a3 + 74;
    v15 = a3[74];
  }

  v16 = 0;
  v17 = 0;
LABEL_9:
  *v14 = v15 + v16;
  if (a4)
  {
    memcpy(v17, v12, v16);
  }

  result = strlen(v11);
  v19 = result & 0xFFFFFFFFFFFFFFF8;
  v20 = &v11[result & 0xFFFFFFFFFFFFFFF8];
  if (*v11)
  {
    v21 = v11;
  }

  else
  {
    v21 = 0;
  }

  if (*v11)
  {
    result = strlen(v21);
    v22 = a3 + 74;
    v23 = a3[74];
    v24 = result + 1;
    if (result != -1)
    {
      v25 = a3[74];
      goto LABEL_19;
    }
  }

  else
  {
    v22 = a3 + 74;
    v23 = a3[74];
  }

  v24 = 0;
  v25 = 0;
LABEL_19:
  v37 = v17;
  *v22 = v23 + v24;
  if (a4)
  {
    result = memcpy(v25, v21, v24);
  }

  v26 = *(v20 + 1);
  v27 = (v20 + 16);
  if (v26)
  {
    v28 = a3[59];
    result = DecodeDYMTLFunctionConstantValues(v27, v26, a3, a4);
  }

  else
  {
    v28 = 0;
  }

  if (v39 < 0x3E)
  {
    v30 = 0;
    goto LABEL_36;
  }

  v29 = (v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = *(v27 + v29);
  if (!v30)
  {
LABEL_36:
    v32 = 0;
    goto LABEL_37;
  }

  v40 = v28;
  v31 = 0;
  v32 = a3[72];
  v33 = v10 + v19 + v29 + a1 + 48;
  v34 = v32;
  do
  {
    if (a4)
    {
      v35 = *(v33 + 8 * v31);
      if (a5)
      {
        result = GetAliasStream2(a5, v35);
        if (result)
        {
          v35 = *result;
        }

        else
        {
          v35 = 0;
        }
      }

      v34 = a3[72];
      *v34 = v35;
    }

    a3[72] = ++v34;
    ++v31;
  }

  while (v30 != v31);
  v28 = v40;
LABEL_37:
  v36 = a3[10];
  a3[10] = v36 + 48;
  if (a4)
  {
    *v36 = v28;
    *(v36 + 8) = v37;
    *(v36 + 16) = v32;
    *(v36 + 24) = v30;
    *(v36 + 32) = v25;
    *(v36 + 40) = v38;
    *(v36 + 41) = 0;
    *(v36 + 44) = 0;
  }

  return result;
}

size_t DecodeDYMTLFunctionConstantValues(size_t result, uint64_t a2, void *a3, int a4)
{
  v6 = result + 8;
  v27 = a3[61];
  if (*(result + 8) != -1)
  {
    v7 = 0;
    while (1)
    {
      v8 = a3[61];
      a3[61] = v8 + 32;
      v9 = *v6;
      v10 = v6 + 8;
      result = strlen((v6 + 8));
      v11 = result;
      v12 = *(v6 + 8);
      v13 = *(v6 + 8) ? (v6 + 8) : 0;
      if (!v12)
      {
        break;
      }

      result = strlen(v13);
      v14 = a3[74];
      v15 = result + 1;
      if (result == -1)
      {
        goto LABEL_10;
      }

      v16 = a3[74];
LABEL_11:
      v17 = (v10 + (v11 & 0xFFFFFFFFFFFFFFF8));
      v18 = v14 + v15;
      a3[74] = v18;
      if (a4)
      {
        memcpy(v16, v13, v15);
        v19 = a3[74];
        v20 = v17[2];
        v28 = v17[1];
        v21 = v17[3];
        v22 = v17 + 4;
        v6 = v17 + ((v21 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
        a3[74] = &v19[v21];
        if (v21)
        {
          v23 = v19;
        }

        else
        {
          v23 = 0;
        }

        if (v21)
        {
          v24 = v22;
        }

        else
        {
          v24 = 0;
        }

        result = memcpy(v23, v24, v21);
        *v8 = v23;
        *(v8 + 8) = v21;
        *(v8 + 16) = v16;
        *(v8 + 24) = v9;
        *(v8 + 26) = v20;
        *(v8 + 27) = v28;
        *(v8 + 28) = 0;
      }

      else
      {
        v25 = v17[3];
        v6 = v17 + ((v25 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
        a3[74] = v18 + v25;
      }

      ++v7;
      if (*v6 == -1)
      {
        goto LABEL_23;
      }
    }

    v14 = a3[74];
LABEL_10:
    v15 = 0;
    v16 = 0;
    goto LABEL_11;
  }

  v7 = 0;
LABEL_23:
  v26 = a3[59];
  a3[59] = v26 + 2;
  if (a4)
  {
    *v26 = v27;
    v26[1] = v7;
  }

  return result;
}

uint64_t DecodeDYMTLCompileOptions(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = a1 + 16 + ((v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v9)
  {
    v11 = a3[74];
  }

  else
  {
    v11 = 0;
  }

  a3[74] += v9;
  if (a4)
  {
    if (v9)
    {
      v12 = (a1 + 16);
    }

    else
    {
      v12 = 0;
    }

    memcpy(v11, v12, v9);
  }

  v13 = *v10;
  v15 = *v10 == 0;
  v14 = *v10 != 0;
  v16 = 2 * v14;
  result = *(v10 + 8);
  if (v8 <= 0xF)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    if (v8 < 6)
    {
      v28 = 0;
      v29 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
    }

    else
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = *(v10 + 40);
      v29 = 0;
    }

    goto LABEL_35;
  }

  v58 = *(v10 + 16);
  if (v8 < 0x28)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v29 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
LABEL_34:
    v28 = v58;
    goto LABEL_35;
  }

  v54 = *(v10 + 8);
  v55 = 2 * v14;
  v56 = *v10 == 0;
  v57 = *v10;
  v53 = v11;
  v30 = v10 + 24;
  v31 = strlen((v10 + 24));
  if (*(v10 + 24))
  {
    v32 = (v10 + 24);
  }

  else
  {
    v32 = 0;
  }

  if (*(v10 + 24))
  {
    v33 = strlen(v32);
    v34 = a3[74];
    v35 = v33 + 1;
    if (v33 != -1)
    {
      v29 = a3[74];
      v15 = v56;
      v13 = v57;
      result = v54;
      v16 = v55;
      goto LABEL_23;
    }
  }

  else
  {
    v34 = a3[74];
  }

  v15 = *v10 == 0;
  v13 = *v10;
  result = *(v10 + 8);
  v16 = v55;
  v35 = 0;
  v29 = 0;
LABEL_23:
  a3[74] = v34 + v35;
  if (a4)
  {
    memcpy(v29, v32, v35);
    result = v54;
    v16 = v55;
    v15 = v56;
    v13 = v57;
  }

  if (v8 < 0x2B)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v11 = v53;
    goto LABEL_34;
  }

  v36 = v30 + (v31 & 0xFFFFFFFFFFFFFFF8);
  v52 = *(v36 + 8);
  v11 = v53;
  if (v8 < 0x30)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = v58;
    v22 = v52;
    goto LABEL_35;
  }

  v37 = v36 + 16 + (strlen((v36 + 16)) & 0xFFFFFFFFFFFFFFF8);
  v38 = *(v36 + 16);
  if (*(v36 + 16))
  {
    v39 = (v36 + 16);
  }

  else
  {
    v39 = 0;
  }

  if (v38)
  {
    v40 = strlen(v39);
    v41 = a3[74];
    v42 = v40 + 1;
    if (v40 != -1)
    {
      v26 = a3[74];
      v15 = v56;
      v13 = v57;
      result = v54;
      v16 = v55;
      goto LABEL_41;
    }
  }

  else
  {
    v41 = a3[74];
  }

  v15 = v56;
  v13 = v57;
  result = v54;
  v16 = v55;
  v42 = 0;
  v26 = 0;
LABEL_41:
  v51 = v29;
  a3[74] = v41 + v42;
  if (a4)
  {
    memcpy(v26, v39, v42);
    result = v54;
    v16 = v55;
    v15 = v56;
    v13 = v57;
  }

  v50 = *(v37 + 8);
  v24 = *(v37 + 16);
  v44 = v37 + 24;
  if (v24)
  {
    v25 = a3[72];
    v45 = v24;
    v46 = v25;
    do
    {
      v48 = *v44;
      v44 += 8;
      v47 = v48;
      if (a4)
      {
        if (a5)
        {
          AliasStream2 = GetAliasStream2(a5, v47);
          if (AliasStream2)
          {
            v47 = *AliasStream2;
          }

          else
          {
            v47 = 0;
          }
        }

        v46 = a3[72];
        *v46 = v47;
      }

      a3[72] = ++v46;
      --v45;
    }

    while (v45);
    v11 = v53;
    v15 = v56;
    v13 = v57;
    result = v54;
    v16 = v55;
  }

  else
  {
    v25 = 0;
  }

  if (v8 < 0x3B)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v21 = *v44;
    if (v8 >= 0x40)
    {
      v27 = *(v44 + 8);
      if (v8 < 0x47)
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
      }

      else
      {
        v19 = *(v44 + 16);
        v20 = *(v44 + 24);
        v18 = *(v44 + 32);
        if (v8 >= 0x4C)
        {
          v15 = *(v44 + 40);
          v16 = *(v44 + 48);
        }
      }

      goto LABEL_62;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
  }

  v27 = 0;
LABEL_62:
  v28 = v58;
  v29 = v51;
  v22 = v52;
  v23 = v50;
LABEL_35:
  v43 = a3[57];
  a3[57] = v43 + 64;
  if (a4)
  {
    *v43 = v11;
    *(v43 + 8) = v9;
    *(v43 + 16) = v29;
    *(v43 + 24) = v26;
    *(v43 + 32) = v25;
    *(v43 + 40) = v24;
    *(v43 + 48) = v28;
    *(v43 + 52) = v18;
    *(v43 + 54) = v20;
    *(v43 + 55) = v19;
    *(v43 + 56) = result;
    *(v43 + 57) = v13;
    *(v43 + 58) = v23;
    *(v43 + 59) = v15;
    *(v43 + 60) = v16;
    *(v43 + 61) = v27;
    *(v43 + 62) = v22;
    *(v43 + 63) = v21;
  }

  return result;
}

uint64_t *DecodeDYMTLRenderPipelineFunctionsDescriptor(uint64_t *result, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v8 = result[1];
  v9 = result + 2;
  v46 = v8;
  if (v8)
  {
    v10 = *(a3 + 576);
    v45 = v10;
    do
    {
      v12 = *v9++;
      v11 = v12;
      if (a4)
      {
        if (a5)
        {
          result = GetAliasStream2(a5, v11);
          if (result)
          {
            v11 = *result;
          }

          else
          {
            v11 = 0;
          }
        }

        v10 = *(a3 + 576);
        *v10 = v11;
      }

      *(a3 + 576) = ++v10;
      --v8;
    }

    while (v8);
  }

  else
  {
    v45 = 0;
  }

  v15 = *v9;
  v14 = v9 + 1;
  v13 = v15;
  v44 = v15;
  if (v15)
  {
    v16 = *(a3 + 576);
    v43 = v16;
    do
    {
      v18 = *v14++;
      v17 = v18;
      if (a4)
      {
        if (a5)
        {
          result = GetAliasStream2(a5, v17);
          if (result)
          {
            v17 = *result;
          }

          else
          {
            v17 = 0;
          }
        }

        v16 = *(a3 + 576);
        *v16 = v17;
      }

      *(a3 + 576) = ++v16;
      --v13;
    }

    while (v13);
  }

  else
  {
    v43 = 0;
  }

  v21 = *v14;
  v19 = v14 + 1;
  v20 = v21;
  if (v21)
  {
    v22 = *(a3 + 576);
    v23 = v20;
    v42 = v22;
    do
    {
      v25 = *v19++;
      v24 = v25;
      if (a4)
      {
        if (a5)
        {
          result = GetAliasStream2(a5, v24);
          if (result)
          {
            v24 = *result;
          }

          else
          {
            v24 = 0;
          }
        }

        v22 = *(a3 + 576);
        *v22 = v24;
      }

      *(a3 + 576) = ++v22;
      v23 = (v23 - 1);
    }

    while (v23);
  }

  else
  {
    v42 = 0;
  }

  v28 = *v19;
  v27 = v19 + 1;
  v26 = v28;
  if (v28)
  {
    v29 = *(a3 + 576);
    v30 = v26;
    v31 = v29;
    do
    {
      v33 = *v27++;
      v32 = v33;
      if (a4)
      {
        if (a5)
        {
          result = GetAliasStream2(a5, v32);
          if (result)
          {
            v32 = *result;
          }

          else
          {
            v32 = 0;
          }
        }

        v31 = *(a3 + 576);
        *v31 = v32;
      }

      *(a3 + 576) = ++v31;
      v30 = (v30 - 1);
    }

    while (v30);
  }

  else
  {
    v29 = 0;
  }

  v34 = *v27;
  if (*v27)
  {
    v35 = *(a3 + 576);
    v36 = v27 + 1;
    v37 = v34;
    v38 = v35;
    do
    {
      v40 = *v36++;
      v39 = v40;
      if (a4)
      {
        if (a5)
        {
          result = GetAliasStream2(a5, v39);
          if (result)
          {
            v39 = *result;
          }

          else
          {
            v39 = 0;
          }
        }

        v38 = *(a3 + 576);
        *v38 = v39;
      }

      *(a3 + 576) = ++v38;
      --v37;
    }

    while (v37);
  }

  else
  {
    v35 = 0;
  }

  v41 = *(a3 + 96);
  *(a3 + 96) = v41 + 10;
  if (a4)
  {
    *v41 = v43;
    v41[1] = v44;
    v41[2] = v29;
    v41[3] = v26;
    v41[4] = v35;
    v41[5] = v34;
    v41[6] = v42;
    v41[7] = v20;
    v41[8] = v45;
    v41[9] = v46;
  }

  return result;
}

size_t DecodeDYMTLResidencySetDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *(a1 + 24);
  result = a1 + 24;
  v7 = v8;
  v9 = *(result - 16);
  v10 = *(result - 8);
  if (v8)
  {
    v11 = result;
  }

  else
  {
    v11 = 0;
  }

  if (v7)
  {
    result = strlen(v11);
    v12 = (a3 + 592);
    v13 = *(a3 + 592);
    v14 = result + 1;
    if (result != -1)
    {
      v15 = *(a3 + 592);
      goto LABEL_9;
    }
  }

  else
  {
    v12 = (a3 + 592);
    v13 = *(a3 + 592);
  }

  v14 = 0;
  v15 = 0;
LABEL_9:
  *v12 = v13 + v14;
  if (a4)
  {
    result = memcpy(v15, v11, v14);
    v16 = *(a3 + 112);
    *(a3 + 112) = v16 + 24;
    *v16 = v10;
    *(v16 + 8) = v15;
    *(v16 + 16) = v9;
    *(v16 + 17) = 0;
    *(v16 + 20) = 0;
  }

  else
  {
    *(a3 + 112) += 24;
  }

  return result;
}

size_t DecodeDYMTL4ArgumentTableDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *a1;
  v8 = (a1 + 16);
  v9 = *(a1 + 8);
  result = strlen((a1 + 16));
  v11 = result & 0xFFFFFFFFFFFFFFF8;
  v12 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    result = strlen(v13);
    v14 = (a3 + 592);
    v15 = *(a3 + 592);
    v16 = result + 1;
    if (result != -1)
    {
      v17 = *(a3 + 592);
      goto LABEL_9;
    }
  }

  else
  {
    v14 = (a3 + 592);
    v15 = *(a3 + 592);
  }

  v16 = 0;
  v17 = 0;
LABEL_9:
  v18 = &v8[v11];
  *v14 = v15 + v16;
  if (a4)
  {
    result = memcpy(v17, v13, v16);
  }

  if (v7 < 0x69)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18[32];
  }

  v20 = *(v18 + 8);
  v21 = *(v18 + 3);
  v22 = *(a3 + 120);
  *(a3 + 120) = v22 + 40;
  if (a4)
  {
    *v22 = v17;
    *(v22 + 8) = v20;
    *(v22 + 24) = v21;
    *(v22 + 32) = v9;
    *(v22 + 33) = v19;
    *(v22 + 34) = 0;
    *(v22 + 38) = 0;
  }

  return result;
}

size_t DecodeDYMTL4LibraryDescriptor(const char *a1, uint64_t a2, void *a3, int a4, uint64_t a5)
{
  v9 = *a1;
  v10 = a1 + 8;
  result = strlen(a1 + 8);
  v12 = &v10[result & 0xFFFFFFFFFFFFFFF8];
  if (a1[8])
  {
    result = strlen(v10);
    v15 = a3 + 74;
    v16 = a3[74];
    v13 = result + 1;
    if (result != -1)
    {
      v14 = a3[74];
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
    v15 = a3 + 74;
    v16 = a3[74];
  }

  v13 = 0;
  v14 = 0;
LABEL_6:
  *v15 = v16 + v13;
  if (a4)
  {
    result = memcpy(v14, v10, v13);
  }

  if (!*(v12 + 1))
  {
    v17 = 0;
    v39 = v12 + 16;
    goto LABEL_48;
  }

  if (a4)
  {
    v17 = a3[57];
  }

  else
  {
    v17 = 0;
  }

  a3[57] += 64;
  v18 = *(v12 + 2);
  v19 = v12 + 24;
  v20 = &v12[((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 24];
  if (v18)
  {
    v21 = a3[74];
  }

  else
  {
    v21 = 0;
  }

  a3[74] += v18;
  if (a4)
  {
    if (v18)
    {
      v22 = v19;
    }

    else
    {
      v22 = 0;
    }

    memcpy(v21, v22, v18);
  }

  v23 = *v20;
  v25 = *v20 == 0;
  v24 = *v20 != 0;
  v26 = 2 * v24;
  v27 = *(v20 + 8);
  v74 = v21;
  if (v9 > 0xF)
  {
    v73 = *(v20 + 16);
    v39 = (v20 + 24);
    if (v9 < 0x28)
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      result = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      goto LABEL_45;
    }

    v69 = v27;
    v70 = 2 * v24;
    v71 = v25;
    v72 = v23;
    v68 = v14;
    v40 = strlen(v39);
    if (*v39)
    {
      v41 = v39;
    }

    else
    {
      v41 = 0;
    }

    if (*v39)
    {
      v42 = strlen(v41);
      v43 = a3[74];
      v44 = v42 + 1;
      if (v42 != -1)
      {
        result = a3[74];
        v25 = v71;
        v23 = v72;
        v27 = v69;
        v26 = v70;
LABEL_35:
        v45 = v40 & 0xFFFFFFFFFFFFFFF8;
        a3[74] = v43 + v44;
        if (a4)
        {
          v46 = result;
          memcpy(result, v41, v44);
          result = v46;
          v27 = v69;
          v26 = v70;
          v25 = v71;
          v23 = v72;
        }

        v47 = &v39[v45];
        v14 = v68;
        if (v9 >= 0x2B)
        {
          v39 = (v47 + 16);
          v67 = v47[8];
          if (v9 < 0x30)
          {
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v38 = v73;
            v32 = v47[8];
            goto LABEL_46;
          }

          v66 = result;
          v48 = &v39[strlen(v47 + 16) & 0xFFFFFFFFFFFFFFF8];
          v49 = *v39;
          if (!*v39)
          {
            v39 = 0;
          }

          if (v49)
          {
            v50 = strlen(v39);
            v51 = a3[74];
            v52 = v50 + 1;
            if (v50 != -1)
            {
              __dst = a3[74];
              v25 = v71;
              v23 = v72;
              v27 = v69;
              v26 = v70;
              result = v66;
LABEL_62:
              a3[74] = v51 + v52;
              if (a4)
              {
                memcpy(__dst, v39, v52);
                result = v66;
                v27 = v69;
                v26 = v70;
                v25 = v71;
                v23 = v72;
              }

              v64 = v48[8];
              v33 = *(v48 + 2);
              v39 = (v48 + 24);
              if (v33)
              {
                v35 = a3[72];
                v59 = v33;
                v60 = v35;
                do
                {
                  v62 = *v39;
                  v39 += 8;
                  v61 = v62;
                  if (a4)
                  {
                    if (a5)
                    {
                      AliasStream2 = GetAliasStream2(a5, v61);
                      if (AliasStream2)
                      {
                        v61 = *AliasStream2;
                      }

                      else
                      {
                        v61 = 0;
                      }
                    }

                    v60 = a3[72];
                    *v60 = v61;
                  }

                  a3[72] = ++v60;
                  --v59;
                }

                while (v59);
                v14 = v68;
                v25 = v71;
                v23 = v72;
                v27 = v69;
                v26 = v70;
                result = v66;
              }

              else
              {
                v35 = 0;
              }

              if (v9 < 0x3B)
              {
                v28 = 0;
                v29 = 0;
                v30 = 0;
                v31 = 0;
                v37 = 0;
              }

              else
              {
                v31 = *v39;
                if (v9 < 0x40)
                {
                  v28 = 0;
                  v29 = 0;
                  v30 = 0;
                  v37 = 0;
                  v39 += 8;
                }

                else
                {
                  v37 = v39[8];
                  if (v9 < 0x47)
                  {
                    v28 = 0;
                    v29 = 0;
                    v30 = 0;
                    v39 += 16;
                  }

                  else
                  {
                    v28 = v39[16];
                    v29 = v39[24];
                    v30 = *(v39 + 16);
                    if (v9 < 0x4C)
                    {
                      v39 += 40;
                    }

                    else
                    {
                      v25 = v39[40];
                      v26 = v39[48];
                      v39 += 56;
                    }
                  }
                }
              }

              v38 = v73;
              v32 = v67;
              v36 = __dst;
              v34 = v64;
              goto LABEL_46;
            }
          }

          else
          {
            v51 = a3[74];
          }

          v25 = v71;
          v23 = v72;
          v27 = v69;
          v26 = v70;
          result = v66;
          v52 = 0;
          __dst = 0;
          goto LABEL_62;
        }

        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v39 = (v47 + 8);
LABEL_45:
        v38 = v73;
        goto LABEL_46;
      }
    }

    else
    {
      v43 = a3[74];
    }

    v25 = v71;
    v23 = v72;
    v27 = v69;
    v26 = v70;
    v44 = 0;
    result = 0;
    goto LABEL_35;
  }

  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  if (v9 < 6)
  {
    v38 = 0;
    result = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v39 = (v20 + 16);
  }

  else
  {
    result = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = *(v20 + 40);
    v39 = (v20 + 48);
  }

LABEL_46:
  if (a4)
  {
    *v17 = v74;
    *(v17 + 8) = v18;
    *(v17 + 16) = result;
    *(v17 + 24) = v36;
    *(v17 + 32) = v35;
    *(v17 + 40) = v33;
    *(v17 + 48) = v38;
    *(v17 + 52) = v30;
    *(v17 + 54) = v29;
    *(v17 + 55) = v28;
    *(v17 + 56) = v27;
    *(v17 + 57) = v23;
    *(v17 + 58) = v34;
    *(v17 + 59) = v25;
    *(v17 + 60) = v26;
    *(v17 + 61) = v37;
    *(v17 + 62) = v32;
    *(v17 + 63) = v31;
  }

LABEL_48:
  if (*v39)
  {
    v53 = v39;
  }

  else
  {
    v53 = 0;
  }

  if (*v39)
  {
    result = strlen(v53);
    v54 = a3 + 74;
    v55 = a3[74];
    v56 = result + 1;
    if (result != -1)
    {
      v57 = a3[74];
      goto LABEL_56;
    }
  }

  else
  {
    v54 = a3 + 74;
    v55 = a3[74];
  }

  v56 = 0;
  v57 = 0;
LABEL_56:
  *v54 = v55 + v56;
  if (a4)
  {
    result = memcpy(v57, v53, v56);
    v58 = a3[16];
    a3[16] = v58 + 4;
    *v58 = v14;
    v58[1] = v17;
    v58[2] = 0;
    v58[3] = v57;
  }

  else
  {
    a3[16] += 32;
  }

  return result;
}

size_t DecodeDYMTL4CompilerDescriptor(size_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = a4;
  v8 = *(result + 8);
  v9 = *(result + 16);
  if (*result < 0x6Eu)
  {
    v17 = *(a3 + 152);
    *(a3 + 152) = v17 + 24;
    if (!a4)
    {
      return result;
    }

    v16 = 0;
    if (!a5)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v11 = *(result + 24);
  result += 24;
  v10 = v11;
  if (v11)
  {
    v12 = result;
  }

  else
  {
    v12 = 0;
  }

  if (v10)
  {
    result = strlen(v12);
    v13 = (a3 + 592);
    v14 = *(a3 + 592);
    v15 = result + 1;
    if (result != -1)
    {
      v16 = *(a3 + 592);
      goto LABEL_13;
    }
  }

  else
  {
    v13 = (a3 + 592);
    v14 = *(a3 + 592);
  }

  v15 = 0;
  v16 = 0;
LABEL_13:
  *v13 = v14 + v15;
  if ((v6 & 1) == 0)
  {
    *(a3 + 152) += 24;
    return result;
  }

  result = memcpy(v16, v12, v15);
  v17 = *(a3 + 152);
  *(a3 + 152) = v17 + 24;
  if (a5)
  {
LABEL_15:
    result = GetAliasStream2(a5, v8);
    if (result)
    {
      v8 = *result;
    }

    else
    {
      v8 = 0;
    }
  }

LABEL_19:
  *v17 = v16;
  *(v17 + 8) = v8;
  *(v17 + 16) = v9;
  *(v17 + 17) = 0;
  *(v17 + 20) = 0;
  return result;
}

__n64 MakeDYMTL4RenderPipelineColorAttachmentDescriptor(void **a1, uint64_t a2, int a3)
{
  v3 = *a1;
  v4 = *(*a1)++;
  v5 = v3[1];
  *a1 = v3 + 2;
  v6 = v3[2];
  *a1 = v3 + 3;
  v7 = v3[3];
  *a1 = v3 + 4;
  v8 = v3[4];
  *a1 = v3 + 5;
  v9 = v3[5];
  *a1 = v3 + 6;
  v10 = v3[6];
  *a1 = v3 + 7;
  v11 = v3[7];
  *a1 = v3 + 8;
  v12 = v3[8];
  *a1 = v3 + 9;
  if (a3)
  {
    result.n64_u8[0] = v4;
    result.n64_u8[1] = v5;
    result.n64_u8[2] = v6;
    result.n64_u8[3] = v7;
    result.n64_u8[4] = v9;
    result.n64_u8[5] = v10;
    result.n64_u8[6] = v11;
    result.n64_u8[7] = v12;
    *a2 = v8;
    *(a2 + 2) = result;
    *(a2 + 10) = 0;
    *(a2 + 14) = 0;
  }

  return result;
}

size_t DecodeDYMTLResourceViewPoolDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *a1;
  v8 = (a1 + 8);
  result = strlen((a1 + 8));
  v10 = result & 0xFFFFFFFFFFFFFFF8;
  v11 = *(a1 + 8);
  if (*(a1 + 8))
  {
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    result = strlen(v12);
    v13 = (a3 + 592);
    v14 = *(a3 + 592);
    v15 = result + 1;
    if (result != -1)
    {
      v16 = *(a3 + 592);
      goto LABEL_9;
    }
  }

  else
  {
    v13 = (a3 + 592);
    v14 = *(a3 + 592);
  }

  v15 = 0;
  v16 = 0;
LABEL_9:
  v17 = &v8[v10];
  *v13 = v14 + v15;
  if (a4)
  {
    result = memcpy(v16, v12, v15);
  }

  if (v7 < 0x6A)
  {
    v19 = 0;
    v18 = 0;
  }

  else
  {
    v18 = *(v17 + 2);
    v19 = v17[24];
  }

  v20 = *(v17 + 1);
  v21 = *(a3 + 168);
  *(a3 + 168) = v21 + 32;
  if (a4)
  {
    *v21 = v18;
    *(v21 + 8) = v16;
    *(v21 + 16) = v20;
    *(v21 + 24) = v19;
    *(v21 + 25) = 0;
    *(v21 + 28) = 0;
  }

  return result;
}

size_t DecodeDYMTL4CommandQueueDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *a1;
  v8 = (a1 + 8);
  result = strlen((a1 + 8));
  v10 = result;
  v11 = *(a1 + 8);
  if (*(a1 + 8))
  {
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    result = strlen(v12);
    v13 = (a3 + 592);
    v14 = *(a3 + 592);
    v15 = result + 1;
    if (result != -1)
    {
      v16 = *(a3 + 592);
      goto LABEL_9;
    }
  }

  else
  {
    v13 = (a3 + 592);
    v14 = *(a3 + 592);
  }

  v15 = 0;
  v16 = 0;
LABEL_9:
  *v13 = v14 + v15;
  if (a4)
  {
    result = memcpy(v16, v12, v15);
  }

  if (v7 < 0x72)
  {
    v17 = 0;
  }

  else
  {
    v17 = v8[(v10 & 0xFFFFFFFFFFFFFFF8) + 8];
  }

  v18 = *(a3 + 184);
  *(a3 + 184) = v18 + 16;
  if (a4)
  {
    *v18 = v16;
    *(v18 + 8) = v17;
    *(v18 + 9) = 0;
    *(v18 + 12) = 0;
  }

  return result;
}

__n128 MakeDYMTL4IndirectInstanceAccelerationStructureDescriptor(uint64_t *a1, uint64_t a2, int a3)
{
  v3 = *a1;
  v4 = *a1 + 16;
  v5 = *a1 + 24;
  v6 = **a1;
  *a1 += 8;
  v7 = v3[1];
  *a1 = v4;
  v8 = v3[2];
  *a1 = v5;
  v9 = v3[3];
  *a1 = (v3 + 4);
  v10 = v3[4];
  *a1 = (v3 + 5);
  v11 = v3[5];
  *a1 = (v3 + 6);
  v12 = v3[6];
  *a1 = (v3 + 7);
  v13 = v3[7];
  *a1 = (v3 + 8);
  v14 = v3[8];
  *a1 = (v3 + 9);
  v15 = v3[9];
  *a1 = (v3 + 10);
  v16 = v3[10];
  *a1 = (v3 + 11);
  v17 = v3[11];
  *a1 = (v3 + 12);
  v18 = v3[12];
  *a1 = (v3 + 13);
  v19 = v3[13];
  *a1 = (v3 + 14);
  v20 = v3[14];
  *a1 = (v3 + 15);
  if (a3)
  {
    *&v21 = v6;
    *(&v21 + 1) = v7;
    *&v22 = v8;
    *(&v22 + 1) = v9;
    *a2 = v21;
    *(a2 + 16) = v22;
    result.n128_u64[0] = v15;
    result.n128_u64[1] = v16;
    *&v22 = v17;
    *(&v22 + 1) = v18;
    *(a2 + 32) = result;
    *(a2 + 48) = v22;
    *(a2 + 64) = v19;
    *(a2 + 72) = v10;
    *(a2 + 76) = v13;
    *(a2 + 80) = v14;
    *(a2 + 84) = v11;
    *(a2 + 85) = v12;
    *(a2 + 86) = v20;
    *(a2 + 87) = 0;
  }

  return result;
}

uint64_t **MakeDYMTL4PipelineStageDynamicLinkingDescriptor(uint64_t **result, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  v9 = result;
  v10 = *result + 1;
  v11 = **result;
  *result = v10;
  if (v11)
  {
    v12 = *(a3 + 576);
    v13 = v11;
    do
    {
      v14 = *(*v9)++;
      if (a4)
      {
        if (a5)
        {
          result = GetAliasStream2(a5, v14);
          if (result)
          {
            v14 = *result;
          }

          else
          {
            v14 = 0;
          }
        }

        v15 = *(a3 + 576);
        *v15 = v14;
      }

      else
      {
        v15 = *(a3 + 576);
      }

      *(a3 + 576) = v15 + 1;
      --v13;
    }

    while (v13);
    v10 = *v9;
  }

  else
  {
    v12 = 0;
  }

  v16 = *v10;
  *v9 = v10 + 1;
  v17 = v10[1];
  *v9 = v10 + 2;
  if (!v17)
  {
    v19 = 0;
    if ((a4 & 1) == 0)
    {
      return result;
    }

    goto LABEL_24;
  }

  v23 = v16;
  v18 = v12;
  v19 = *(a3 + 576);
  v20 = v17;
  do
  {
    v21 = *(*v9)++;
    if (a4)
    {
      if (a5)
      {
        result = GetAliasStream2(a5, v21);
        if (result)
        {
          v21 = *result;
        }

        else
        {
          v21 = 0;
        }
      }

      v22 = *(a3 + 576);
      *v22 = v21;
    }

    else
    {
      v22 = *(a3 + 576);
    }

    *(a3 + 576) = v22 + 1;
    --v20;
  }

  while (v20);
  v12 = v18;
  v16 = v23;
  if (a4)
  {
LABEL_24:
    *a2 = v12;
    a2[1] = v11;
    a2[2] = v16;
    a2[3] = v19;
    a2[4] = v17;
  }

  return result;
}

uint64_t *DecodeDYMTL4PipelineStageDynamicLinkingDescriptor(uint64_t *result, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v8 = result[1];
  v9 = result + 2;
  if (v8)
  {
    v10 = *(a3 + 576);
    v11 = result[1];
    v12 = v10;
    do
    {
      v14 = *v9++;
      v13 = v14;
      if (a4)
      {
        if (a5)
        {
          result = GetAliasStream2(a5, v13);
          if (result)
          {
            v13 = *result;
          }

          else
          {
            v13 = 0;
          }
        }

        v12 = *(a3 + 576);
        *v12 = v13;
      }

      *(a3 + 576) = ++v12;
      --v11;
    }

    while (v11);
  }

  else
  {
    v10 = 0;
  }

  v16 = *v9;
  v15 = v9[1];
  if (v15)
  {
    v17 = v9 + 2;
    v18 = *(a3 + 576);
    v19 = v15;
    v20 = v18;
    do
    {
      v22 = *v17++;
      v21 = v22;
      if (a4)
      {
        if (a5)
        {
          result = GetAliasStream2(a5, v21);
          if (result)
          {
            v21 = *result;
          }

          else
          {
            v21 = 0;
          }
        }

        v20 = *(a3 + 576);
        *v20 = v21;
      }

      *(a3 + 576) = ++v20;
      --v19;
    }

    while (v19);
  }

  else
  {
    v18 = 0;
  }

  v23 = *(a3 + 192);
  *(a3 + 192) = v23 + 5;
  if (a4)
  {
    *v23 = v10;
    v23[1] = v8;
    v23[2] = v16;
    v23[3] = v18;
    v23[4] = v15;
  }

  return result;
}

size_t MakeDYMTL4FunctionDescriptor(size_t result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = result;
  v10 = *result;
  v11 = **result;
  *result += 8;
  if (v11 != 1)
  {
    if (v11 != 2)
    {
      if (!a4)
      {
        return result;
      }

      v12 = 0;
      v17 = 0;
LABEL_30:
      v24 = 0;
      goto LABEL_31;
    }

    v12 = *(v10 + 8);
    *result = v10 + 16;
    result = strlen((v10 + 16));
    *v9 = (v10 + 16 + (result & 0xFFFFFFFFFFFFFFF8) + 8);
    if (*(v10 + 16))
    {
      v13 = (v10 + 16);
    }

    else
    {
      v13 = 0;
    }

    if (*(v10 + 16))
    {
      result = strlen(v13);
      v14 = a3 + 74;
      v15 = a3[74];
      v16 = result + 1;
      if (result != -1)
      {
        v17 = a3[74];
LABEL_15:
        *v14 = v15 + v16;
        if (!a4)
        {
          return result;
        }

        result = memcpy(v17, v13, v16);
        if (a5)
        {
          result = GetAliasStream2(a5, v12);
          if (result)
          {
            v12 = *result;
          }

          else
          {
            v12 = 0;
          }
        }

        goto LABEL_30;
      }
    }

    else
    {
      v14 = a3 + 74;
      v15 = a3[74];
    }

    v16 = 0;
    v17 = 0;
    goto LABEL_15;
  }

  v18 = *(v10 + 8);
  *result = v10 + 16 + ((v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v18)
  {
    v12 = a3[59];
    DecodeDYMTLFunctionConstantValues(v10 + 16, v18, a3, a4);
  }

  else
  {
    v12 = 0;
  }

  v17 = a3[58];
  a3[58] = v17 + 32;
  MakeDYMTL4FunctionDescriptor(v9, v17, a3, a4, a5);
  v19 = *v9;
  result = strlen(*v9);
  *v9 += (result & 0xFFFFFFFFFFFFFFF8) + 8;
  v20 = *v19;
  if (!*v19)
  {
    v19 = 0;
  }

  if (!v20)
  {
    v21 = a3 + 74;
    v22 = a3[74];
    goto LABEL_26;
  }

  result = strlen(v19);
  v21 = a3 + 74;
  v22 = a3[74];
  v23 = result + 1;
  if (result == -1)
  {
LABEL_26:
    v23 = 0;
    v24 = 0;
    goto LABEL_27;
  }

  v24 = a3[74];
LABEL_27:
  *v21 = v22 + v23;
  if (!a4)
  {
    return result;
  }

  result = memcpy(v24, v19, v23);
LABEL_31:
  *a2 = v12;
  *(a2 + 8) = v17;
  *(a2 + 16) = v24;
  *(a2 + 24) = v11;
  *(a2 + 25) = 0;
  *(a2 + 28) = 0;
  return result;
}

size_t DecodeDYMTL4CommandAllocatorDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *(a1 + 8);
  result = a1 + 8;
  v7 = v8;
  if (v8)
  {
    v9 = result;
  }

  else
  {
    v9 = 0;
  }

  if (v7)
  {
    result = strlen(v9);
    v10 = (a3 + 592);
    v11 = *(a3 + 592);
    v12 = result + 1;
    if (result != -1)
    {
      v13 = *(a3 + 592);
      goto LABEL_9;
    }
  }

  else
  {
    v10 = (a3 + 592);
    v11 = *(a3 + 592);
  }

  v12 = 0;
  v13 = 0;
LABEL_9:
  *v10 = v11 + v12;
  if (a4)
  {
    result = memcpy(v13, v9, v12);
    v14 = *(a3 + 200);
    *(a3 + 200) = v14 + 1;
    *v14 = v13;
  }

  else
  {
    *(a3 + 200) += 8;
  }

  return result;
}

uint64_t **MakeDYMTLRenderPassColorAttachmentDescriptor(uint64_t **result, uint64_t a2, unsigned int a3, int a4, uint64_t a5)
{
  v7 = *result;
  v8 = *(*result)++;
  v9 = *(v7 + 8);
  *result = v7 + 2;
  v10 = *(v7 + 16);
  *result = v7 + 3;
  v11 = *(v7 + 24);
  *result = v7 + 4;
  v12 = v7[4];
  *result = v7 + 5;
  v13 = *(v7 + 40);
  *result = v7 + 6;
  v14 = *(v7 + 48);
  *result = v7 + 7;
  v15 = *(v7 + 28);
  *result = v7 + 8;
  v16 = *(v7 + 64);
  *result = v7 + 9;
  v17 = *(v7 + 72);
  *result = v7 + 10;
  v18 = v7 + 11;
  if (a3 <= 0x12)
  {
    v19 = 0;
    v22 = 0;
    *&v20 = v7[10];
    *result = v18;
    *(&v20 + 1) = *v18;
    *result = v7 + 12;
    *&v21 = v7[12];
    *result = v7 + 13;
    *(&v21 + 1) = v7[13];
    *result = v7 + 14;
    if (!a4)
    {
      return result;
    }
  }

  else
  {
    v19 = *(v7 + 80);
    *result = v18;
    *&v20 = v7[11];
    *result = v7 + 12;
    *(&v20 + 1) = v7[12];
    *result = v7 + 13;
    *&v21 = v7[13];
    *result = v7 + 14;
    *(&v21 + 1) = v7[14];
    *result = v7 + 15;
    if (a3 < 0x27)
    {
      v22 = 0;
      if (!a4)
      {
        return result;
      }
    }

    else
    {
      v22 = *(v7 + 120);
      *result = v7 + 16;
      if (!a4)
      {
        return result;
      }
    }
  }

  if (a5)
  {
    v24 = v21;
    v25 = v20;
    v26 = v19;
    v27 = v17;
    v28 = v15;
    v29 = v16;
    AliasStream2 = GetAliasStream2(a5, v8);
    if (AliasStream2)
    {
      v8 = *AliasStream2;
    }

    else
    {
      v8 = 0;
    }

    result = GetAliasStream2(a5, v12);
    if (result)
    {
      v12 = *result;
    }

    else
    {
      v12 = 0;
    }

    v15 = v28;
    v16 = v29;
    v19 = v26;
    v17 = v27;
    v21 = v24;
    v20 = v25;
  }

  *a2 = v12;
  *(a2 + 8) = v8;
  *(a2 + 16) = v11;
  *(a2 + 18) = v15;
  *(a2 + 20) = v14;
  *(a2 + 22) = v10;
  *(a2 + 24) = v9;
  *(a2 + 25) = v16;
  *(a2 + 26) = v13;
  *(a2 + 27) = v17;
  *(a2 + 28) = v19;
  *(a2 + 29) = v22;
  *(a2 + 30) = 0;
  *(a2 + 32) = v20;
  *(a2 + 48) = v21;
  return result;
}

uint64_t **MakeDYMTLRenderPassDepthAttachmentDescriptor(uint64_t **result, uint64_t a2, unsigned int a3, int a4, uint64_t a5)
{
  v7 = *result;
  v8 = *(*result)++;
  v9 = *(v7 + 8);
  *result = v7 + 2;
  v10 = *(v7 + 16);
  *result = v7 + 3;
  v11 = *(v7 + 24);
  *result = v7 + 4;
  v12 = v7[4];
  *result = v7 + 5;
  v13 = *(v7 + 40);
  *result = v7 + 6;
  v14 = *(v7 + 24);
  *result = v7 + 7;
  v15 = *(v7 + 28);
  *result = v7 + 8;
  v16 = *(v7 + 64);
  *result = v7 + 9;
  v17 = *(v7 + 72);
  *result = v7 + 10;
  if (a3 >= 0x13)
  {
    v18 = *(v7 + 80);
    *result = v7 + 11;
    v19 = v7[11];
    v20 = v7 + 15;
    *result = v7 + 15;
    if (a3 < 0x27)
    {
      v21 = 0;
    }

    else
    {
      v20 = v7 + 16;
      v21 = *(v7 + 120);
      *result = v7 + 16;
    }

    goto LABEL_8;
  }

  v21 = 0;
  v18 = 0;
  v22 = 0;
  v19 = v7[10];
  v20 = v7 + 14;
  *result = v7 + 14;
  if (a3 >= 5)
  {
LABEL_8:
    v23 = *v20;
    *result = v20 + 1;
    v24 = v23;
    if (v23 == 255)
    {
      v22 = 0;
    }

    else
    {
      v22 = v24;
    }

    if (!a4)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (!a4)
  {
    return result;
  }

LABEL_12:
  if (a5)
  {
    v26 = v18;
    v27 = v17;
    v28 = v15;
    v29 = v16;
    v30 = v13;
    AliasStream2 = GetAliasStream2(a5, v8);
    if (AliasStream2)
    {
      v8 = *AliasStream2;
    }

    else
    {
      v8 = 0;
    }

    result = GetAliasStream2(a5, v12);
    if (result)
    {
      v12 = *result;
    }

    else
    {
      v12 = 0;
    }

    v16 = v29;
    v13 = v30;
    v17 = v27;
    v15 = v28;
    v18 = v26;
  }

  *a2 = v12;
  *(a2 + 8) = v8;
  *(a2 + 16) = v11;
  *(a2 + 18) = v15;
  *(a2 + 20) = v14;
  *(a2 + 22) = v10;
  *(a2 + 24) = v9;
  *(a2 + 25) = v16;
  *(a2 + 26) = v13;
  *(a2 + 27) = v17;
  *(a2 + 28) = v18;
  *(a2 + 29) = v21;
  *(a2 + 30) = 0;
  *(a2 + 32) = v19;
  *(a2 + 40) = v22;
  *(a2 + 41) = 0;
  *(a2 + 44) = 0;
  return result;
}

uint64_t **MakeDYMTLRenderPassStencilAttachmentDescriptor(uint64_t **result, uint64_t a2, unsigned int a3, int a4, uint64_t a5)
{
  v7 = *result;
  v8 = *(*result)++;
  v9 = *(v7 + 8);
  *result = v7 + 2;
  v10 = *(v7 + 16);
  *result = v7 + 3;
  v11 = *(v7 + 24);
  *result = v7 + 4;
  v12 = v7[4];
  *result = v7 + 5;
  v13 = *(v7 + 40);
  *result = v7 + 6;
  v14 = *(v7 + 48);
  *result = v7 + 7;
  v15 = *(v7 + 56);
  *result = v7 + 8;
  v16 = *(v7 + 64);
  *result = v7 + 9;
  v17 = *(v7 + 72);
  *result = v7 + 10;
  if (a3 <= 0x12)
  {
    v18 = 0;
    v20 = 0;
    v19 = *(v7 + 10);
    *result = v7 + 14;
    if (!a4)
    {
      return result;
    }
  }

  else
  {
    v18 = *(v7 + 80);
    *result = v7 + 11;
    v19 = *(v7 + 11);
    *result = v7 + 15;
    if (a3 < 0x27)
    {
      v20 = 0;
      if (!a4)
      {
        return result;
      }
    }

    else
    {
      v20 = *(v7 + 120);
      *result = v7 + 16;
      if (!a4)
      {
        return result;
      }
    }
  }

  v21 = v19;
  if (a5)
  {
    v23 = v14;
    v24 = v13;
    v25 = v11;
    v26 = v10;
    v27 = v9;
    AliasStream2 = GetAliasStream2(a5, v8);
    if (AliasStream2)
    {
      v8 = *AliasStream2;
    }

    else
    {
      v8 = 0;
    }

    result = GetAliasStream2(a5, v12);
    if (result)
    {
      v12 = *result;
    }

    else
    {
      v12 = 0;
    }

    v10 = v26;
    v9 = v27;
    v13 = v24;
    v11 = v25;
    v14 = v23;
  }

  *a2 = v12;
  *(a2 + 8) = v8;
  *(a2 + 16) = v11;
  *(a2 + 18) = v15;
  *(a2 + 20) = v14;
  *(a2 + 22) = v10;
  *(a2 + 24) = v9;
  *(a2 + 25) = v16;
  *(a2 + 26) = v13;
  *(a2 + 27) = v17;
  *(a2 + 28) = v18;
  *(a2 + 29) = v20;
  *(a2 + 30) = 0;
  *(a2 + 32) = v21;
  *(a2 + 36) = 0;
  return result;
}

void MakeDYMTLVertexDescriptor(uint64_t **a1, void *a2, unsigned int a3, int a4)
{
  bzero(__src, 0x2E8uLL);
  v8 = *a1;
  if (a3 < 0x1A)
  {
    v9 = 31;
  }

  else
  {
    v10 = *v8++;
    LODWORD(v9) = v10;
    *a1 = v8;
    if (v10 < 1)
    {
      goto LABEL_12;
    }

    v9 = v9;
  }

  v11 = &__src[11];
  do
  {
    v12 = *v8;
    *a1 = v8 + 1;
    v13 = v8[1];
    *a1 = v8 + 2;
    v14 = v8[2];
    v8 += 3;
    *a1 = v8;
    if (a4)
    {
      if (v12 == 0xFFFFFFFFLL)
      {
        v12 = -1;
      }

      *(v11 - 11) = v12;
      *(v11 - 3) = v13;
      *(v11 - 1) = v14;
      *v11 = 0;
      v11[4] = 0;
    }

    v11 += 16;
    --v9;
  }

  while (v9);
  if (a3 <= 0x19)
  {
    v15 = 31;
    goto LABEL_15;
  }

LABEL_12:
  v16 = *v8++;
  LODWORD(v15) = v16;
  *a1 = v8;
  if (v16 < 1)
  {
    goto LABEL_19;
  }

  v15 = v15;
LABEL_15:
  v17 = &__src[502];
  do
  {
    v18 = *v8;
    *a1 = v8 + 1;
    v19 = v8[1];
    *a1 = v8 + 2;
    v20 = v8[2];
    v8 += 3;
    *a1 = v8;
    if (a4)
    {
      *(v17 - 3) = v19;
      *(v17 - 2) = v20;
      *(v17 - 1) = v18;
      *v17 = 0;
    }

    v17 += 4;
    --v15;
  }

  while (v15);
LABEL_19:
  if (a4)
  {
    memcpy(a2, __src, 0x2E8uLL);
  }
}

size_t DecodeDYMTLMeshRenderPipelineDescriptor(uint64_t a1, void *a2, void *a3, int a4, uint64_t a5)
{
  v46[1] = a2;
  memcpy(v45, &GTMTLMeshRenderPipelineDescriptorDefaults, sizeof(v45));
  v9 = *a1;
  v10 = (a1 + 8);
  result = strlen((a1 + 8));
  v46[0] = (a1 + 8 + (result & 0xFFFFFFFFFFFFFFF8) + 8);
  if (*(a1 + 8))
  {
    result = strlen(v10);
    v14 = a3 + 74;
    v15 = a3[74];
    v12 = result + 1;
    if (result != -1)
    {
      v13 = a3[74];
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
    v14 = a3 + 74;
    v15 = a3[74];
  }

  v12 = 0;
  v13 = 0;
LABEL_6:
  *v14 = v15 + v12;
  if (a4)
  {
    result = memcpy(v13, v10, v12);
  }

  *(&v45[22] + 8) = vextq_s8(*v46[0], *v46[0], 8uLL);
  v16 = v46[0][2];
  WORD3(v45[25]) = v46[0][3];
  v17 = v46[0][5];
  WORD2(v45[25]) = v46[0][4];
  v18 = v46[0][7];
  v19 = *(v46[0] + 4);
  v21 = v46[0][10];
  v20 = v46[0][11];
  v22 = v46[0] + 12;
  v23 = v46[0][6];
  v46[0] += 6;
  BYTE12(v45[31]) = v17;
  BYTE11(v45[31]) = v23;
  *(&v45[21] + 1) = v16;
  *&v45[22] = v13;
  *(&v45[23] + 1) = v18;
  v45[20] = v19;
  *&v45[21] = v21;
  if (v20)
  {
    v24 = &v45[29] + 8;
    do
    {
      if (a4)
      {
        *v24 = *v22;
      }

      ++v22;
      ++v24;
      --v20;
    }

    while (v20);
  }

  v27 = *v22;
  v25 = v22 + 1;
  v26 = v27;
  v46[0] = v25;
  if (v27)
  {
    v28 = &v45[27] + 9;
    do
    {
      if (a4)
      {
        *v28 = *v25;
      }

      ++v25;
      ++v28;
      --v26;
    }

    while (v26);
  }

  v31 = *v25;
  v29 = v25 + 1;
  v30 = v31;
  v46[0] = v29;
  if (v31)
  {
    v32 = &v45[25] + 10;
    do
    {
      if (a4)
      {
        *v32 = *v29;
      }

      ++v29;
      ++v32;
      --v30;
    }

    while (v30);
  }

  BYTE13(v45[31]) = *v29;
  BYTE7(v45[31]) = v29[1];
  BYTE8(v45[31]) = v29[2];
  BYTE14(v45[31]) = v29[3];
  BYTE10(v45[31]) = v29[4];
  HIDWORD(v45[24]) = v29[5];
  v33 = v29[6];
  v34 = v29 + 7;
  v46[0] = v34;
  if (v33)
  {
    v35 = v45;
    do
    {
      result = MakeDYMTLRenderPipelineColorAttachmentDescriptor(v46, v35++, a4);
      --v33;
    }

    while (v33);
    v34 = v46[0];
  }

  LOWORD(v45[25]) = *v34;
  WORD4(v45[25]) = v34[1];
  HIBYTE(v45[31]) = v34[2];
  if (v9 > 0x43)
  {
    v36 = v34[3];
    v46[0] = v34 + 4;
    DWORD2(v45[24]) = v36;
    if (v9 >= 0x46)
    {
      MakeDYMTLLinkedFunctions(v46, &v45[16], a3, a4, a5);
      MakeDYMTLLinkedFunctions(v46, &v45[12], a3, a4, a5);
      result = MakeDYMTLLinkedFunctions(v46, &v45[8], a3, a4, a5);
      if (v9 >= 0x4B)
      {
        v37 = v46[0][1];
        WORD1(v45[25]) = *v46[0];
        *&v45[24] = v37;
        if (v9 >= 0x6F)
        {
          BYTE9(v45[31]) = v46[0][2];
        }
      }
    }
  }

  v38 = a3[27];
  a3[27] = v38 + 512;
  if (a4)
  {
    if (a5)
    {
      AliasStream2 = GetAliasStream2(a5, *&v45[23]);
      if (AliasStream2)
      {
        v40 = *AliasStream2;
      }

      else
      {
        v40 = 0;
      }

      *&v45[23] = v40;
      v42 = GetAliasStream2(a5, *(&v45[22] + 1));
      if (v42)
      {
        v43 = *v42;
      }

      else
      {
        v43 = 0;
      }

      *(&v45[22] + 1) = v43;
      v41 = GetAliasStream2(a5, *(&v45[21] + 1));
      if (!v41)
      {
        v44 = 0;
        goto LABEL_44;
      }
    }

    else
    {
      v41 = &v45[21] + 1;
    }

    v44 = *v41;
LABEL_44:
    *(&v45[21] + 1) = v44;
    return memcpy(v38, v45, 0x200uLL);
  }

  return result;
}

size_t DecodeDYMTLDepthStencilDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *(a1 + 8);
  v8 = (a1 + 24);
  v9 = *(a1 + 16);
  result = strlen((a1 + 24));
  v11 = result;
  v12 = *(a1 + 24);
  if (*(a1 + 24))
  {
    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    result = strlen(v13);
    v14 = (a3 + 592);
    v15 = *(a3 + 592);
    v16 = result + 1;
    if (result != -1)
    {
      v17 = *(a3 + 592);
      goto LABEL_9;
    }
  }

  else
  {
    v14 = (a3 + 592);
    v15 = *(a3 + 592);
  }

  v16 = 0;
  v17 = 0;
LABEL_9:
  *v14 = v15 + v16;
  if (a4)
  {
    v18 = &v8[v11 & 0xFFFFFFFFFFFFFFF8];
    result = memcpy(v17, v13, v16);
    v20 = *(v18 + 4);
    v19 = *(v18 + 5);
    v22 = *(v18 + 2);
    v21 = *(v18 + 3);
    v23 = vmovn_s64(*(v18 + 3));
    v25 = *(v18 + 11);
    v24 = *(v18 + 12);
    v27 = *(v18 + 9);
    v26 = *(v18 + 10);
    v28 = *(a3 + 224);
    v29 = vmovn_s64(*(v18 + 104));
    *(a3 + 224) = v28 + 48;
    *v28 = v29;
    *(v28 + 8) = v25;
    *(v28 + 9) = v24;
    *(v28 + 10) = v27;
    *(v28 + 11) = v26;
    *(v28 + 12) = 0;
    *(v28 + 16) = v23;
    *(v28 + 24) = v20;
    *(v28 + 25) = v19;
    *(v28 + 26) = v22;
    *(v28 + 27) = v21;
    *(v28 + 28) = 0;
    *(v28 + 32) = v17;
    *(v28 + 40) = v7;
    *(v28 + 41) = v9;
    *(v28 + 46) = 0;
    *(v28 + 42) = 0;
  }

  else
  {
    *(a3 + 224) += 48;
  }

  return result;
}

__n128 DecodeDYMTLTileRenderPipelineDescriptor(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5)
{
  v65[1] = a2;
  v61 = xmmword_24DA92DE8;
  v62 = unk_24DA92DF8;
  v63 = xmmword_24DA92E08;
  v64 = unk_24DA92E18;
  v57 = xmmword_24DA92DA8;
  v58 = unk_24DA92DB8;
  v59 = xmmword_24DA92DC8;
  v60 = unk_24DA92DD8;
  v53 = GTMTLTileRenderPipelineDescriptorDefaults;
  v54 = unk_24DA92D78;
  v55 = xmmword_24DA92D88;
  v56 = unk_24DA92D98;
  v9 = (a1 + 8);
  v10 = *a1;
  v65[0] = a1 + 8 + (strlen((a1 + 8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v12 = *(a1 + 8);
  if (*(a1 + 8))
  {
    v13 = v9;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = strlen(v13);
    v15 = a3 + 74;
    v16 = a3[74];
    v17 = v14 + 1;
    if (v14 != -1)
    {
      v18 = a3[74];
      goto LABEL_9;
    }
  }

  else
  {
    v15 = a3 + 74;
    v16 = a3[74];
  }

  v17 = 0;
  v18 = 0;
LABEL_9:
  *v15 = v16 + v17;
  if (a4)
  {
    memcpy(v18, v13, v17);
  }

  v19 = *v65[0];
  v20 = *(v65[0] + 8);
  *&v60 = v18;
  *(&v61 + 1) = v19;
  v62.n128_u16[3] = v20;
  v21 = *(v65[0] + 16);
  v22 = (v65[0] + 24);
  if (v21)
  {
    v23 = &v57;
    do
    {
      if (a4)
      {
        *v23 = *v22;
      }

      ++v22;
      v23 = (v23 + 2);
      --v21;
    }

    while (v21);
  }

  BYTE9(v64) = *v22;
  v24 = v22[1];
  v25 = v22 + 2;
  v65[0] = v25;
  if (v24)
  {
    v26 = &v62.n128_u8[8];
    do
    {
      if (a4)
      {
        *v26 = *v25;
      }

      ++v25;
      ++v26;
      --v24;
    }

    while (v24);
  }

  if (v10 > 0x2D)
  {
    v29 = *v25;
    v27 = v25 + 1;
    v28 = v29;
    v30 = (v27 + ((v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    v65[0] = v30;
    if (v29)
    {
      v31 = a3[74];
    }

    else
    {
      v31 = 0;
    }

    a3[74] += v28;
    if (a4)
    {
      if (v28)
      {
        v32 = v27;
      }

      else
      {
        v32 = 0;
      }

      memcpy(v31, v32, v28);
    }

    *&v59 = v31;
    *(&v59 + 1) = v28;
    if (v10 >= 0x33)
    {
      v35 = *v30;
      v34 = v30 + 1;
      v33 = v35;
      v65[0] = v34;
      *&v61 = v35;
      if (v35)
      {
        v36 = a3[72];
        *(&v60 + 1) = v36;
        do
        {
          v38 = *v34++;
          v37 = v38;
          if (a4)
          {
            if (a5)
            {
              AliasStream2 = GetAliasStream2(a5, v37);
              if (AliasStream2)
              {
                v37 = *AliasStream2;
              }

              else
              {
                v37 = 0;
              }
            }

            v36 = a3[72];
            *v36 = v37;
          }

          a3[72] = ++v36;
          --v33;
        }

        while (v33);
        v65[0] = v34;
      }

      else
      {
        *(&v60 + 1) = 0;
      }

      if (v10 >= 0x37)
      {
        MakeDYMTLLinkedFunctions(v65, &v53, a3, a4, a5);
        if (v10 >= 0x42)
        {
          v40 = v65[0];
          BYTE8(v64) = *v65[0];
          if (v10 >= 0x45)
          {
            v62.n128_u16[1] = *(v65[0] + 8);
            if (v10 >= 0x4B)
            {
              v62.n128_u16[0] = *(v65[0] + 16);
              if (v10 >= 0x66)
              {
                v41 = *(v65[0] + 24);
                if (v41)
                {
                  v42 = a3[74];
                }

                else
                {
                  v42 = 0;
                }

                a3[74] += v41;
                if (a4)
                {
                  v43 = (v40 + 32);
                  if (v41)
                  {
                    v44 = v43;
                  }

                  else
                  {
                    v44 = 0;
                  }

                  memcpy(v42, v44, v41);
                }

                *&v58 = v42;
                *(&v58 + 1) = v41;
              }
            }
          }
        }
      }
    }
  }

  v45 = a3[29];
  a3[29] = v45 + 192;
  if (a4)
  {
    v46 = *(&v61 + 1);
    if (a5)
    {
      v47 = GetAliasStream2(a5, *(&v61 + 1));
      if (v47)
      {
        v46 = *v47;
      }

      else
      {
        v46 = 0;
      }
    }

    *(&v61 + 1) = v46;
    v48 = v64;
    *(v45 + 160) = v63;
    *(v45 + 176) = v48;
    v49 = v58;
    *(v45 + 64) = v57;
    *(v45 + 80) = v49;
    v50 = v60;
    *(v45 + 96) = v59;
    *(v45 + 112) = v50;
    v51 = v54;
    *v45 = v53;
    *(v45 + 16) = v51;
    v52 = v56;
    *(v45 + 32) = v55;
    *(v45 + 48) = v52;
    result = v62;
    *(v45 + 128) = v61;
    *(v45 + 144) = result;
  }

  return result;
}

size_t DecodeDYMTLRasterizationRateMapDescriptor(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v7 = *a1;
  v8 = (a1 + 8);
  result = strlen((a1 + 8));
  v10 = &v8[result & 0xFFFFFFFFFFFFFFF8];
  if (*(a1 + 8))
  {
    result = strlen(v8);
    v13 = a3 + 74;
    v14 = a3[74];
    v11 = result + 1;
    if (result != -1)
    {
      v12 = a3[74];
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    v13 = a3 + 74;
    v14 = a3[74];
  }

  v11 = 0;
  v12 = 0;
LABEL_6:
  *v13 = v14 + v11;
  if (a4)
  {
    result = memcpy(v12, v8, v11);
  }

  v15 = *(v10 + 4);
  v16 = *(v10 + 8);
  v17 = *(v10 + 12);
  v18 = v10 + 40;
  v19 = *(v10 + 4);
  if (v19)
  {
    v20 = 0;
    v21 = a3[52];
    while (1)
    {
      v22 = a3[52];
      a3[52] = v22 + 24;
      v23 = *v18;
      v24 = *(v18 + 1);
      result = *(v18 + 8);
      v18 += 24;
      v25 = v23;
      if (v23)
      {
        v26 = a3[73];
        v27 = v26 + 4;
        do
        {
          if (a4)
          {
            *(v27 - 4) = *v18;
          }

          v18 += 8;
          a3[73] = v27;
          v27 += 4;
          --v25;
        }

        while (v25);
      }

      else
      {
        v26 = 0;
      }

      v28 = v24;
      if (v24)
      {
        v29 = a3[73];
        v30 = v29 + 4;
        do
        {
          if (a4)
          {
            *(v30 - 4) = *v18;
          }

          v18 += 8;
          a3[73] = v30;
          v30 += 4;
          --v28;
        }

        while (v28);
        if ((a4 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v29 = 0;
        if ((a4 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      *v22 = v26;
      *(v22 + 8) = v29;
      *(v22 + 16) = v23;
      *(v22 + 18) = result;
      *(v22 + 20) = v24;
      *(v22 + 22) = 0;
LABEL_24:
      if (++v20 == v19)
      {
        goto LABEL_29;
      }
    }
  }

  v21 = 0;
LABEL_29:
  if (v7 <= 0x39)
  {
    v33 = 0;
    v32 = 2;
    v31 = 0;
  }

  else
  {
    v31 = *v18;
    v32 = v18[8];
    if (v7 < 0x44)
    {
      v33 = 0;
    }

    else
    {
      v33 = v18[16];
    }
  }

  v34 = a3[30];
  a3[30] = v34 + 40;
  if (a4)
  {
    *v34 = v12;
    *(v34 + 8) = v21;
    *(v34 + 16) = v19;
    *(v34 + 24) = v31;
    *(v34 + 28) = v17;
    *(v34 + 30) = v16;
    *(v34 + 32) = v15;
    *(v34 + 34) = v32;
    *(v34 + 35) = v33;
    *(v34 + 36) = 0;
  }

  return result;
}

size_t DecodeDYMTLIntersectionFunctionDescriptor(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v7 = (a1 + 16);
  v8 = *(a1 + 8);
  v9 = (a1 + 16 + (strlen((a1 + 16)) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (*(a1 + 16))
  {
    v10 = strlen(v7);
    v13 = a3 + 74;
    v14 = a3[74];
    v11 = v10 + 1;
    if (v10 != -1)
    {
      v12 = a3[74];
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    v13 = a3 + 74;
    v14 = a3[74];
  }

  v11 = 0;
  v12 = 0;
LABEL_6:
  *v13 = v14 + v11;
  if (a4)
  {
    memcpy(v12, v7, v11);
  }

  result = strlen(v9);
  v16 = &v9[result & 0xFFFFFFFFFFFFFFF8];
  v17 = *v9;
  if (!*v9)
  {
    v9 = 0;
  }

  if (v17)
  {
    result = strlen(v9);
    v18 = a3 + 74;
    v19 = a3[74];
    v20 = result + 1;
    if (result != -1)
    {
      v21 = a3[74];
      goto LABEL_15;
    }
  }

  else
  {
    v18 = a3 + 74;
    v19 = a3[74];
  }

  v20 = 0;
  v21 = 0;
LABEL_15:
  *v18 = v19 + v20;
  if (a4)
  {
    result = memcpy(v21, v9, v20);
  }

  v22 = *(v16 + 1);
  if (v22)
  {
    v23 = a3[59];
    result = DecodeDYMTLFunctionConstantValues((v16 + 16), v22, a3, a4);
  }

  else
  {
    v23 = 0;
  }

  v24 = a3[35];
  a3[35] = v24 + 48;
  if (a4)
  {
    *v24 = v23;
    *(v24 + 8) = v12;
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    *(v24 + 32) = v21;
    *(v24 + 40) = v8;
    *(v24 + 41) = 0;
    *(v24 + 44) = 0;
  }

  return result;
}

__n128 DecodeDYMTL4RenderPipelineDynamicLinkingDescriptor(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5)
{
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v28[0] = (a1 + 8);
  v28[1] = a2;
  MakeDYMTL4PipelineStageDynamicLinkingDescriptor(v28, &v15, a3, a4, a5);
  MakeDYMTL4PipelineStageDynamicLinkingDescriptor(v28, &v17 + 1, a3, a4, a5);
  MakeDYMTL4PipelineStageDynamicLinkingDescriptor(v28, &v20, a3, a4, a5);
  MakeDYMTL4PipelineStageDynamicLinkingDescriptor(v28, &v22 + 1, a3, a4, a5);
  MakeDYMTL4PipelineStageDynamicLinkingDescriptor(v28, &v25, a3, a4, a5);
  v9 = *(a3 + 288);
  *(a3 + 288) = v9 + 200;
  if (a4)
  {
    v10 = v26;
    *(v9 + 160) = v25;
    *(v9 + 176) = v10;
    *(v9 + 192) = v27;
    v11 = v22;
    *(v9 + 96) = v21;
    *(v9 + 112) = v11;
    v12 = v24;
    *(v9 + 128) = v23;
    *(v9 + 144) = v12;
    v13 = v18;
    *(v9 + 32) = v17;
    *(v9 + 48) = v13;
    v14 = v20;
    *(v9 + 64) = v19;
    *(v9 + 80) = v14;
    result = v16;
    *v9 = v15;
    *(v9 + 16) = result;
  }

  return result;
}

uint64_t *DecodeDYMTLRenderPassDescriptor(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5)
{
  v45[1] = a2;
  memcpy(__dst, &GTMTLRenderPassDescriptorDefaults, sizeof(__dst));
  v9 = *a1;
  v10 = (a1 + 16);
  __dst[99] = *(a1 + 8);
  while (1)
  {
    v11 = *v10;
    v45[0] = v10 + 1;
    if (v11 == -1)
    {
      break;
    }

    MakeDYMTLRenderPassColorAttachmentDescriptor(v45, &__dst[8 * v11], v9, a4, a5);
    v10 = v45[0];
  }

  MakeDYMTLRenderPassDepthAttachmentDescriptor(v45, &__dst[84], v9, a4, a5);
  result = MakeDYMTLRenderPassStencilAttachmentDescriptor(v45, &__dst[90], v9, a4, a5);
  if (v9 <= 6)
  {
    v14 = HIWORD(__dst[100]);
  }

  else
  {
    v13 = v45[0];
    v14 = *v45[0];
    HIWORD(__dst[100]) = *v45[0];
    if (v9 >= 0xD)
    {
      v15 = v45[0][7];
      v16 = v45[0][2];
      WORD2(__dst[100]) = v45[0][1];
      LODWORD(__dst[100]) = v16;
      v17 = v45[0][4];
      HIWORD(__dst[101]) = v45[0][3];
      WORD2(__dst[101]) = v17;
      v18 = v45[0][6];
      WORD1(__dst[101]) = v45[0][5];
      v45[0] += 7;
      LOWORD(__dst[101]) = v18;
      LOBYTE(__dst[102]) = v15;
      if (v9 != 13)
      {
        v19 = v13[8];
        v20 = v13 + 9;
        v21 = *(a3 + 584);
        __dst[95] = v21;
        __dst[96] = v19;
        if (v19 << 32)
        {
          v22 = 2 * v19;
          if (v22 <= 1)
          {
            v22 = 1;
          }

          v23 = v21;
          do
          {
            if (a4)
            {
              *v23 = *v20;
            }

            ++v20;
            ++v23;
            --v22;
          }

          while (v22);
        }

        *(a3 + 584) = &v21[2 * v19];
        if (v9 >= 0x14)
        {
          BYTE4(__dst[94]) = *v20;
          if (v9 >= 0x18)
          {
            BYTE2(__dst[102]) = v20[1];
            if (v9 >= 0x21)
            {
              __dst[98] = v20[2];
              if (v9 >= 0x27)
              {
                BYTE1(__dst[102]) = v20[3];
                if (v9 >= 0x2A)
                {
                  __dst[97] = v20[4];
                  v24 = v20[5];
                  v25 = v20 + 6;
                  v45[0] = v20 + 6;
                  BYTE3(__dst[102]) = v24;
                  if (v9 >= 0x32)
                  {
                    while (1)
                    {
                      v26 = v25;
                      v27 = *v25;
                      if (*v25 == -1)
                      {
                        break;
                      }

                      v25 += 6;
                      if (a4)
                      {
                        v28 = v26[1];
                        v29 = v26[2];
                        v30 = v26[3];
                        v31 = v26[4];
                        v32 = v26[5];
                        if (a5)
                        {
                          v43 = v26[2];
                          result = GetAliasStream2(a5, v28);
                          if (result)
                          {
                            v28 = *result;
                          }

                          else
                          {
                            v28 = 0;
                          }

                          v29 = v43;
                        }

                        v33 = &__dst[5 * v27 + 64];
                        *v33 = v32;
                        v33[1] = v30;
                        v33[2] = v28;
                        v33[3] = v31;
                        v33[4] = v29;
                      }
                    }

                    if (v9 >= 0x43)
                    {
                      BYTE4(__dst[102]) = v25[1];
                      if (v9 >= 0x66)
                      {
                        BYTE6(__dst[102]) = v25[2];
                        if (v9 != 102)
                        {
                          BYTE5(__dst[102]) = v25[3];
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (v14 == 0xFFFF)
  {
    v34 = 0;
  }

  else
  {
    v34 = v14;
  }

  HIWORD(__dst[100]) = v34;
  if (WORD2(__dst[100]) == 0xFFFF)
  {
    v35 = 0;
  }

  else
  {
    v35 = WORD2(__dst[100]);
  }

  WORD2(__dst[100]) = v35;
  v36 = __dst[100];
  if (LODWORD(__dst[100]) == -1)
  {
    v36 = 0;
  }

  LODWORD(__dst[100]) = v36;
  __dst[101] = vbic_s8(__dst[101], vceq_s16(__dst[101], -1));
  v37 = __dst[102];
  if (LOBYTE(__dst[102]) == 255)
  {
    v37 = 0;
  }

  LOBYTE(__dst[102]) = v37;
  v38 = *(a3 + 296);
  *(a3 + 296) = v38 + 824;
  if (a4)
  {
    if (a5)
    {
      AliasStream2 = GetAliasStream2(a5, __dst[99]);
      if (AliasStream2)
      {
        v40 = *AliasStream2;
      }

      else
      {
        v40 = 0;
      }

      __dst[99] = v40;
      v41 = GetAliasStream2(a5, __dst[98]);
      if (!v41)
      {
        v42 = 0;
        goto LABEL_48;
      }
    }

    else
    {
      v41 = &__dst[98];
    }

    v42 = *v41;
LABEL_48:
    __dst[98] = v42;
    return memcpy(v38, __dst, 0x338uLL);
  }

  return result;
}

size_t DecodeDYMTLRenderPipelineDescriptor(uint64_t a1, uint64_t *a2, void *a3, int a4, uint64_t a5)
{
  v91[1] = a2;
  memcpy(__dst, &GTMTLRenderPipelineDescriptorDefaults, sizeof(__dst));
  v9 = *a1;
  __dst[162] = *(a1 + 8);
  v10 = *(a1 + 16);
  v91[0] = (a1 + 24);
  __dst[147] = v10;
  MakeDYMTLVertexDescriptor(v91, __dst, v9, a4);
  __dst[159] = *v91[0];
  __dst[161] = v91[0][1];
  HIDWORD(__dst[166]) = *(v91[0] + 4);
  LOBYTE(__dst[185]) = v91[0][3];
  BYTE1(__dst[185]) = v91[0][4];
  BYTE6(__dst[186]) = v91[0][5];
  WORD2(__dst[167]) = v91[0][6];
  LOWORD(__dst[169]) = v91[0][7];
  v11 = v91[0][8];
  v12 = v91[0] + 9;
  v91[0] += 9;
  if (v11)
  {
    v13 = &__dst[93];
    do
    {
      MakeDYMTLRenderPipelineColorAttachmentDescriptor(v91, v13, a4);
      v13 += 2;
      --v11;
    }

    while (v11);
    v12 = v91[0];
  }

  result = strlen(v12);
  v91[0] = (v12 + (result & 0xFFFFFFFFFFFFFFF8) + 8);
  v15 = *v12;
  if (!*v12)
  {
    v12 = 0;
  }

  if (v15)
  {
    result = strlen(v12);
    v16 = a3 + 74;
    v17 = a3[74];
    v18 = result + 1;
    if (result != -1)
    {
      v19 = a3[74];
      goto LABEL_12;
    }
  }

  else
  {
    v16 = a3 + 74;
    v17 = a3[74];
  }

  v18 = 0;
  v19 = 0;
LABEL_12:
  *v16 = v17 + v18;
  if (a4)
  {
    result = memcpy(v19, v12, v18);
  }

  __dst[150] = v19;
  if (v9 > 6)
  {
    v20 = v91[0];
    BYTE6(__dst[185]) = *v91[0];
    if (v9 >= 9)
    {
      BYTE2(__dst[188]) = v91[0][1];
      __dst[151] = v91[0][2];
      HIBYTE(__dst[187]) = v91[0][3];
      BYTE6(__dst[187]) = v91[0][4];
      BYTE5(__dst[187]) = v91[0][5];
      v21 = v91[0][6];
      v91[0] += 6;
      LOBYTE(__dst[188]) = v21;
      BYTE1(__dst[188]) = v20[7];
      if (v9 >= 0x12)
      {
        v22 = v20[8];
        v23 = v20 + 9;
        if (v22)
        {
          v24 = &__dst[180] + 7;
          do
          {
            if (a4)
            {
              *v24 = *v23;
            }

            ++v23;
            ++v24;
            --v22;
          }

          while (v22);
        }

        v27 = *v23;
        v25 = v23 + 1;
        v26 = v27;
        v91[0] = v25;
        if (v27)
        {
          v28 = &__dst[169] + 2;
          do
          {
            v30 = *v25++;
            v29 = v30;
            v91[0] = v25;
            if (a4)
            {
              *v28 = v29;
            }

            ++v28;
            --v26;
          }

          while (v26);
        }

        if (v9 >= 0x17)
        {
          BYTE4(__dst[187]) = *v25;
          if (v9 >= 0x20)
          {
            BYTE4(__dst[188]) = v25[1];
            v31 = v25[2];
            v91[0] = v25 + 2;
            LODWORD(__dst[166]) = v31;
            if (v9 >= 0x26)
            {
              __dst[158] = v25[3];
              if (v9 != 38)
              {
                HIBYTE(__dst[185]) = v25[4];
                HIBYTE(__dst[184]) = v25[5];
                LODWORD(__dst[167]) = v25[6];
                HIDWORD(__dst[165]) = v25[7];
                LOBYTE(__dst[186]) = v25[8];
                BYTE2(__dst[186]) = v25[9];
                BYTE3(__dst[186]) = v25[10];
                BYTE4(__dst[186]) = v25[11];
                BYTE3(__dst[188]) = v25[12];
                BYTE6(__dst[184]) = v25[13];
                BYTE5(__dst[186]) = v25[14];
                BYTE2(__dst[185]) = v25[15];
                if (v9 >= 0x29)
                {
                  __dst[160] = v25[16];
                  if (v9 != 41)
                  {
                    __dst[145] = v25[17];
                    __dst[146] = v25[18];
                    HIBYTE(__dst[186]) = v25[19];
                    BYTE1(__dst[186]) = v25[20];
                    BYTE4(__dst[185]) = v25[21];
                    BYTE5(__dst[185]) = v25[22];
                    v32 = v25[23];
                    v33 = v25 + 24;
                    v34 = (v25 + ((v32 + 7) & 0xFFFFFFFFFFFFFFF8) + 192);
                    v91[0] = v34;
                    if (v32)
                    {
                      v35 = a3[74];
                    }

                    else
                    {
                      v35 = 0;
                    }

                    v36 = (a3[74] + v32);
                    a3[74] = v36;
                    if (a4)
                    {
                      if (v32)
                      {
                        v37 = v33;
                      }

                      else
                      {
                        v37 = 0;
                      }

                      result = memcpy(v35, v37, v32);
                      v36 = a3[74];
                    }

                    __dst[143] = v35;
                    __dst[144] = v32;
                    v40 = *v34;
                    v39 = v34 + 1;
                    v38 = v40;
                    v41 = (v39 + ((v40 + 7) & 0xFFFFFFFFFFFFFFF8));
                    v91[0] = v41;
                    if (v40)
                    {
                      v42 = v36;
                    }

                    else
                    {
                      v42 = 0;
                    }

                    a3[74] = &v36[v38];
                    if (a4)
                    {
                      if (v38)
                      {
                        v43 = v39;
                      }

                      else
                      {
                        v43 = 0;
                      }

                      result = memcpy(v42, v43, v38);
                    }

                    __dst[141] = v42;
                    __dst[142] = v38;
                    if (v9 >= 0x33)
                    {
                      v46 = *v41;
                      v45 = v41 + 1;
                      v44 = v46;
                      v91[0] = v45;
                      __dst[164] = v46;
                      if (v46)
                      {
                        v47 = 0;
                        v48 = a3[72];
                        __dst[163] = v48;
                        do
                        {
                          v50 = *v45++;
                          v49 = v50;
                          v91[0] = v45;
                          if (a4)
                          {
                            if (a5)
                            {
                              result = GetAliasStream2(a5, v49);
                              if (result)
                              {
                                v49 = *result;
                              }

                              else
                              {
                                v49 = 0;
                              }
                            }

                            v48 = a3[72];
                            *v48 = v49;
                            v44 = __dst[164];
                          }

                          a3[72] = ++v48;
                          ++v47;
                        }

                        while (v44 > v47);
                      }

                      else
                      {
                        __dst[163] = 0;
                      }

                      v51 = *v45;
                      v91[0] = v45 + 1;
                      __dst[149] = v51;
                      if (v51)
                      {
                        v52 = 0;
                        v53 = a3[72];
                        __dst[148] = v53;
                        v54 = v45 + 2;
                        do
                        {
                          v55 = *(v54 - 1);
                          v91[0] = v54;
                          if (a4)
                          {
                            if (a5)
                            {
                              result = GetAliasStream2(a5, v55);
                              if (result)
                              {
                                v55 = *result;
                              }

                              else
                              {
                                v55 = 0;
                              }
                            }

                            v53 = a3[72];
                            *v53 = v55;
                            v51 = __dst[149];
                          }

                          ++v54;
                          a3[72] = ++v53;
                          ++v52;
                        }

                        while (v51 > v52);
                      }

                      else
                      {
                        __dst[148] = 0;
                      }

                      if (v9 >= 0x37)
                      {
                        MakeDYMTLLinkedFunctions(v91, &__dst[133], a3, a4, a5);
                        result = MakeDYMTLLinkedFunctions(v91, &__dst[109], a3, a4, a5);
                        if (v9 >= 0x3C)
                        {
                          __dst[155] = *v91[0];
                          __dst[152] = v91[0][1];
                          v56 = v91[0][2];
                          v57 = v91[0] + 3;
                          if (v56)
                          {
                            v58 = &__dst[177];
                            do
                            {
                              if (a4)
                              {
                                *v58 = *v57;
                              }

                              ++v57;
                              ++v58;
                              --v56;
                            }

                            while (v56);
                          }

                          v61 = *v57;
                          v60 = v57 + 1;
                          v59 = v61;
                          v91[0] = v60;
                          if (v61)
                          {
                            v62 = &__dst[173] + 1;
                            do
                            {
                              v64 = *v60++;
                              v63 = v64;
                              v91[0] = v60;
                              if (a4)
                              {
                                *v62 = v63;
                              }

                              ++v62;
                              --v59;
                            }

                            while (v59);
                          }

                          v67 = *v60;
                          v66 = v60 + 1;
                          v65 = v67;
                          v91[0] = v66;
                          __dst[157] = v67;
                          if (v67)
                          {
                            v68 = 0;
                            v69 = a3[72];
                            __dst[156] = v69;
                            do
                            {
                              v71 = *v66++;
                              v70 = v71;
                              v91[0] = v66;
                              if (a4)
                              {
                                if (a5)
                                {
                                  AliasStream2 = GetAliasStream2(a5, v70);
                                  if (AliasStream2)
                                  {
                                    v70 = *AliasStream2;
                                  }

                                  else
                                  {
                                    v70 = 0;
                                  }
                                }

                                v69 = a3[72];
                                *v69 = v70;
                                v65 = __dst[157];
                              }

                              a3[72] = ++v69;
                              ++v68;
                            }

                            while (v65 > v68);
                          }

                          else
                          {
                            __dst[156] = 0;
                          }

                          v73 = *v66;
                          v91[0] = v66 + 1;
                          __dst[154] = v73;
                          if (v73)
                          {
                            v74 = 0;
                            v75 = a3[72];
                            __dst[153] = v75;
                            v76 = v66 + 2;
                            do
                            {
                              v77 = *(v76 - 1);
                              v91[0] = v76;
                              if (a4)
                              {
                                if (a5)
                                {
                                  v78 = GetAliasStream2(a5, v77);
                                  if (v78)
                                  {
                                    v77 = *v78;
                                  }

                                  else
                                  {
                                    v77 = 0;
                                  }
                                }

                                v75 = a3[72];
                                *v75 = v77;
                                v73 = __dst[154];
                              }

                              ++v76;
                              a3[72] = ++v75;
                              ++v74;
                            }

                            while (v73 > v74);
                          }

                          else
                          {
                            __dst[153] = 0;
                          }

                          MakeDYMTLLinkedFunctions(v91, &__dst[125], a3, a4, a5);
                          result = MakeDYMTLLinkedFunctions(v91, &__dst[117], a3, a4, a5);
                          if (v9 >= 0x42)
                          {
                            BYTE3(__dst[187]) = *v91[0];
                            LOBYTE(__dst[187]) = v91[0][1];
                            BYTE2(__dst[187]) = v91[0][2];
                            BYTE1(__dst[187]) = v91[0][3];
                            if (v9 >= 0x44)
                            {
                              LODWORD(__dst[165]) = v91[0][4];
                              if (v9 != 68)
                              {
                                HIWORD(__dst[168]) = v91[0][5];
                                LOWORD(__dst[168]) = v91[0][6];
                                WORD2(__dst[168]) = v91[0][7];
                                WORD1(__dst[168]) = v91[0][8];
                                if (v9 >= 0x4B)
                                {
                                  HIWORD(__dst[167]) = v91[0][9];
                                  if (v9 >= 0x6F)
                                  {
                                    BYTE3(__dst[185]) = v91[0][10];
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (BYTE6(__dst[185]) == 255)
  {
    BYTE6(__dst[185]) = 0;
  }

  if (LODWORD(__dst[166]) == -1)
  {
    BYTE4(__dst[188]) = 0;
    LODWORD(__dst[166]) = 1;
  }

  v79 = a3[38];
  a3[38] = v79 + 1512;
  if (a4)
  {
    if (a5)
    {
      v80 = GetAliasStream2(a5, __dst[162]);
      if (v80)
      {
        v81 = *v80;
      }

      else
      {
        v81 = 0;
      }

      __dst[162] = v81;
      v83 = GetAliasStream2(a5, __dst[147]);
      if (v83)
      {
        v84 = *v83;
      }

      else
      {
        v84 = 0;
      }

      __dst[147] = v84;
      v85 = GetAliasStream2(a5, __dst[158]);
      if (v85)
      {
        v86 = *v85;
      }

      else
      {
        v86 = 0;
      }

      __dst[158] = v86;
      v87 = GetAliasStream2(a5, __dst[155]);
      if (v87)
      {
        v88 = *v87;
      }

      else
      {
        v88 = 0;
      }

      __dst[155] = v88;
      v82 = GetAliasStream2(a5, __dst[152]);
      if (!v82)
      {
        v89 = 0;
        goto LABEL_134;
      }
    }

    else
    {
      v82 = &__dst[152];
    }

    v89 = *v82;
LABEL_134:
    __dst[152] = v89;
    return memcpy(v79, __dst, 0x5E8uLL);
  }

  return result;
}

void DecodeDYMTLComputePipelineDescriptor(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5)
{
  v66[1] = a2;
  memcpy(v65, &GTMTLComputePipelineDescriptorDefaults, sizeof(v65));
  v9 = *a1;
  v10 = *(a1 + 16);
  v65[106] = *(a1 + 8);
  BYTE6(v65[119]) = v10;
  v66[0] = a1 + 24 + (strlen((a1 + 24)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = *(a1 + 24);
  if (*(a1 + 24))
  {
    v12 = (a1 + 24);
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = strlen(v12);
    v14 = a3 + 74;
    v15 = a3[74];
    v16 = v13 + 1;
    if (v13 != -1)
    {
      v17 = a3[74];
      goto LABEL_9;
    }
  }

  else
  {
    v14 = a3 + 74;
    v15 = a3[74];
  }

  v16 = 0;
  v17 = 0;
LABEL_9:
  *v14 = v15 + v16;
  if (a4)
  {
    memcpy(v17, v12, v16);
  }

  v65[109] = v17;
  if (v9 < 0xB)
  {
    goto LABEL_87;
  }

  bzero(__src, 0x2F0uLL);
  v18 = v66[0];
  if (v9 < 0x1A)
  {
    v19 = 31;
  }

  else
  {
    v18 = (v66[0] + 8);
    v19 = *v66[0];
    if (!*v66[0])
    {
      goto LABEL_23;
    }
  }

  v20 = &__src[11];
  do
  {
    if (a4)
    {
      v22 = v18[1];
      v21 = v18[2];
      v23 = *v18;
      if (*v18 == 0xFFFFFFFFLL)
      {
        v23 = -1;
      }

      *(v20 - 11) = v23;
      *(v20 - 3) = v22;
      *(v20 - 1) = v21;
      *v20 = 0;
      v20[4] = 0;
    }

    v18 += 3;
    v20 += 16;
    --v19;
  }

  while (v19);
  v66[0] = v18;
  if (v9 > 0x19)
  {
LABEL_23:
    v25 = *v18++;
    v24 = v25;
    v66[0] = v18;
    if (!v25)
    {
      goto LABEL_30;
    }

    goto LABEL_26;
  }

  v24 = 31;
LABEL_26:
  v26 = &__src[502];
  do
  {
    if (a4)
    {
      v27 = v18[2];
      v28 = *v18;
      *(v26 - 3) = v18[1];
      *(v26 - 2) = v27;
      *(v26 - 1) = v28;
      *v26 = 0;
    }

    v18 += 3;
    v26 += 4;
    --v24;
  }

  while (v24);
LABEL_30:
  __src[745] = *v18;
  v29 = v18[1];
  v30 = v18 + 2;
  v66[0] = v18 + 2;
  __src[744] = v29;
  if (a4)
  {
    memcpy(v65, __src, 0x2F0uLL);
  }

  HIBYTE(v65[118]) = -1;
  if (v9 >= 0x12)
  {
    if (v9 < 0x1A)
    {
      v31 = 31;
    }

    else
    {
      v31 = v18[2];
      v30 = v18 + 3;
      v66[0] = v18 + 3;
      if (v31 < 1)
      {
        goto LABEL_39;
      }

      v31 = v31;
    }

    v32 = &v65[115];
    do
    {
      v33 = *v30++;
      *v32++ = v33;
      --v31;
    }

    while (v31);
LABEL_39:
    if (v9 >= 0x1B)
    {
      BYTE4(v65[119]) = *v30;
      if (v9 >= 0x25)
      {
        HIWORD(v65[114]) = v30[1];
        if (v9 != 37)
        {
          v65[110] = v30[2];
          if (v9 >= 0x28)
          {
            v34 = v30[3];
            v35 = v30 + 4;
            v66[0] = v35;
            v65[108] = v34;
            if (v34)
            {
              v36 = a3[72];
              v65[107] = v36;
              do
              {
                v38 = *v35++;
                v37 = v38;
                if (a4)
                {
                  if (a5)
                  {
                    AliasStream2 = GetAliasStream2(a5, v37);
                    if (AliasStream2)
                    {
                      v37 = *AliasStream2;
                    }

                    else
                    {
                      v37 = 0;
                    }
                  }

                  v36 = a3[72];
                  *v36 = v37;
                }

                a3[72] = ++v36;
                --v34;
              }

              while (v34);
            }

            else
            {
              v65[107] = 0;
            }

            if (v9 != 40)
            {
              v65[113] = *v35;
              if (v9 >= 0x2A)
              {
                BYTE5(v65[119]) = v35[1];
                LOWORD(v65[114]) = v35[2];
                BYTE2(v65[119]) = v35[3];
                BYTE1(v65[119]) = v35[4];
                LOBYTE(v65[119]) = v35[5];
                v40 = v35[6];
                v41 = v35 + 7;
                v42 = (v35 + ((v40 + 7) & 0xFFFFFFFFFFFFFFF8) + 56);
                v66[0] = v42;
                if (v40)
                {
                  v43 = a3[74];
                }

                else
                {
                  v43 = 0;
                }

                v44 = (a3[74] + v40);
                a3[74] = v44;
                if (a4)
                {
                  if (v40)
                  {
                    v45 = v41;
                  }

                  else
                  {
                    v45 = 0;
                  }

                  memcpy(v43, v45, v40);
                  v44 = a3[74];
                }

                v65[104] = v43;
                v65[105] = v40;
                v48 = *v42;
                v47 = v42 + 1;
                v46 = v48;
                v49 = (v47 + ((v48 + 7) & 0xFFFFFFFFFFFFFFF8));
                v66[0] = v49;
                if (v48)
                {
                  v50 = v44;
                }

                else
                {
                  v50 = 0;
                }

                a3[74] = &v44[v46];
                if (a4)
                {
                  if (v46)
                  {
                    v51 = v47;
                  }

                  else
                  {
                    v51 = 0;
                  }

                  memcpy(v50, v51, v46);
                }

                v65[102] = v50;
                v65[103] = v46;
                if (v9 >= 0x2D)
                {
                  v52 = *v49;
                  v66[0] = v49 + 1;
                  WORD2(v65[114]) = v52;
                  v53 = v49[1];
                  v66[0] = v49 + 2;
                  BYTE3(v65[119]) = v53;
                  MakeDYMTLLinkedFunctions(v66, &v65[94], a3, a4, a5);
                  if (v9 >= 0x30)
                  {
                    v54 = (v66[0] + 8);
                    v55 = *v66[0];
                    v65[112] = v55;
                    if (v55)
                    {
                      v56 = a3[72];
                      v65[111] = v56;
                      do
                      {
                        v58 = *v54++;
                        v57 = v58;
                        if (a4)
                        {
                          if (a5)
                          {
                            v59 = GetAliasStream2(a5, v57);
                            if (v59)
                            {
                              v57 = *v59;
                            }

                            else
                            {
                              v57 = 0;
                            }
                          }

                          v56 = a3[72];
                          *v56 = v57;
                        }

                        a3[72] = ++v56;
                        --v55;
                      }

                      while (v55);
                    }

                    else
                    {
                      v65[111] = 0;
                    }

                    if (v9 >= 0x4B)
                    {
                      WORD1(v65[114]) = *v54;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_87:
  v60 = a3[39];
  a3[39] = v60 + 960;
  if (!a4)
  {
    return;
  }

  if (a5)
  {
    v61 = GetAliasStream2(a5, v65[106]);
    if (v61)
    {
      v62 = *v61;
    }

    else
    {
      v62 = 0;
    }

    v65[106] = v62;
    v63 = GetAliasStream2(a5, v65[110]);
    if (!v63)
    {
      v64 = 0;
      goto LABEL_96;
    }
  }

  else
  {
    v63 = &v65[110];
  }

  v64 = *v63;
LABEL_96:
  v65[110] = v64;
  memcpy(v60, v65, 0x3C0uLL);
}

size_t MakeDYMTL4PrimitiveAccelerationStructureDescriptor(size_t result, uint64_t a2, uint64_t a3, int a4)
{
  v5 = result;
  v6 = (*result + 8);
  v7 = **result;
  *result = v6;
  if (v7)
  {
    v60 = v7;
    v61 = a2;
    v59 = *(a3 + 432);
    while (1)
    {
      v9 = *(a3 + 432);
      *(a3 + 432) = v9 + 152;
      v10 = *v5;
      v11 = **v5;
      *v5 += 8;
      v12 = *(v10 + 1);
      *v5 = v10 + 16;
      result = strlen(v10 + 16);
      *v5 = &v10[(result & 0xFFFFFFFFFFFFFFF8) + 24];
      if (v10[16])
      {
        v13 = v10 + 16;
      }

      else
      {
        v13 = 0;
      }

      if (v10[16])
      {
        result = strlen(v13);
        v14 = *(a3 + 592);
        v15 = result + 1;
        if (result != -1)
        {
          v16 = *(a3 + 592);
          goto LABEL_11;
        }
      }

      else
      {
        v14 = *(a3 + 592);
      }

      v15 = 0;
      v16 = 0;
LABEL_11:
      *(a3 + 592) = v14 + v15;
      if (a4)
      {
        result = memcpy(v16, v13, v15);
      }

      v17 = *v5;
      v18 = **v5;
      *v5 += 8;
      v19 = *(v17 + 1);
      *v5 = v17 + 16;
      v20 = *(v17 + 2);
      *v5 = v17 + 24;
      v21 = *(v17 + 3);
      *v5 = v17 + 32;
      v22 = *(v17 + 4);
      *v5 = v17 + 40;
      v23 = v17[40];
      *v5 = v17 + 48;
      v65 = v11;
      v66 = v18;
      v63 = v21;
      v64 = v12;
      v62 = v22;
      if (v23 > 9)
      {
        if (v23 == 10)
        {
LABEL_24:
          *&v44 = *(v17 + 6);
          *v5 = v17 + 56;
          *(&v44 + 1) = *(v17 + 7);
          *v5 = v17 + 64;
          *&v43 = *(v17 + 8);
          *v5 = v17 + 72;
          *(&v43 + 1) = *(v17 + 9);
          *v5 = v17 + 80;
          if (a4)
          {
            v31 = 0;
            result = 0;
            v30 = 0;
            v33 = 0;
            LOBYTE(v26) = 0;
            LOBYTE(v29) = 0;
            LOBYTE(v32) = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            LOBYTE(v37) = 0;
            LOBYTE(v38) = 0;
            LOBYTE(v39) = 0;
            LOBYTE(v40) = 0;
            LOBYTE(v41) = 0;
            LOBYTE(v42) = 0;
            goto LABEL_30;
          }

          goto LABEL_31;
        }

        if (v23 == 11)
        {
          v49 = *(v17 + 6);
          *v5 = v17 + 56;
          v50 = *(v17 + 7);
          *v5 = v17 + 64;
          v30 = *(v17 + 8);
          *v5 = v17 + 72;
          v37 = *(v17 + 9);
          *v5 = v17 + 80;
          v33 = *(v17 + 10);
          *v5 = v17 + 88;
          v38 = *(v17 + 11);
          *v5 = v17 + 96;
          v39 = *(v17 + 12);
          *v5 = v17 + 104;
          v40 = *(v17 + 13);
          *v5 = v17 + 112;
          v51 = *(v17 + 14);
          *v5 = v17 + 120;
          v52 = *(v17 + 15);
          *v5 = v17 + 128;
          v41 = *(v17 + 16);
          *v5 = v17 + 136;
          v31 = *(v17 + 17);
          *v5 = v17 + 144;
          result = *(v17 + 18);
          *v5 = v17 + 152;
          v42 = *(v17 + 19);
          *v5 = v17 + 160;
          v26 = *(v17 + 20);
          *v5 = v17 + 168;
          v35 = *(v17 + 21);
          *v5 = v17 + 176;
          v36 = *(v17 + 22);
          *v5 = v17 + 184;
          if (a4)
          {
            *&v43 = v51;
            *(&v43 + 1) = v52;
            *&v44 = v49;
            *(&v44 + 1) = v50;
            v29 = v26 >> 8;
            v32 = v26 >> 16;
            v34 = v26 & 0xFFFFFFFFFF000000;
            goto LABEL_30;
          }

          goto LABEL_31;
        }

        if (v23 != 12)
        {
LABEL_26:
          if (a4)
          {
            v31 = 0;
            result = 0;
            v30 = 0;
            v33 = 0;
            LOBYTE(v26) = 0;
            LOBYTE(v29) = 0;
            LOBYTE(v32) = 0;
            v34 = 0;
            v35 = 0;
            v36 = 0;
            LOBYTE(v37) = 0;
            LOBYTE(v38) = 0;
            LOBYTE(v39) = 0;
            LOBYTE(v40) = 0;
            LOBYTE(v41) = 0;
            LOBYTE(v42) = 0;
            v44 = 0uLL;
            v43 = 0uLL;
            goto LABEL_30;
          }

          goto LABEL_31;
        }

        v45 = *(v17 + 6);
        *v5 = v17 + 56;
        v46 = *(v17 + 7);
        *v5 = v17 + 64;
        v30 = *(v17 + 8);
        *v5 = v17 + 72;
        v37 = *(v17 + 9);
        *v5 = v17 + 80;
        v33 = *(v17 + 10);
        *v5 = v17 + 88;
        v38 = *(v17 + 11);
        *v5 = v17 + 96;
        v39 = *(v17 + 12);
        *v5 = v17 + 104;
        v40 = *(v17 + 13);
        *v5 = v17 + 112;
        v47 = *(v17 + 14);
        *v5 = v17 + 120;
        v48 = *(v17 + 15);
        *v5 = v17 + 128;
        v41 = *(v17 + 16);
        *v5 = v17 + 136;
        v31 = *(v17 + 17);
        *v5 = v17 + 144;
        result = *(v17 + 18);
        *v5 = v17 + 152;
        v42 = *(v17 + 19);
        *v5 = v17 + 160;
        v26 = *(v17 + 20);
        *v5 = v17 + 168;
        v35 = *(v17 + 21);
        *v5 = v17 + 176;
        v36 = *(v17 + 22);
        *v5 = v17 + 184;
        if (a4)
        {
          *&v43 = v47;
          *(&v43 + 1) = v48;
          *&v44 = v45;
          v29 = v26 >> 8;
          v32 = v26 >> 16;
          v34 = v26 & 0xFFFFFFFFFF000000;
          *(&v44 + 1) = v46;
          goto LABEL_30;
        }
      }

      else
      {
        if (v23 != 7)
        {
          if (v23 == 8)
          {
            goto LABEL_24;
          }

          if (v23 != 9)
          {
            goto LABEL_26;
          }
        }

        v24 = *(v17 + 6);
        *v5 = v17 + 56;
        v25 = *(v17 + 7);
        *v5 = v17 + 64;
        LOBYTE(v26) = v17[64];
        *v5 = v17 + 72;
        v27 = *(v17 + 9);
        *v5 = v17 + 80;
        v28 = *(v17 + 10);
        *v5 = v17 + 88;
        v29 = *(v17 + 11);
        *v5 = v17 + 96;
        v30 = *(v17 + 12);
        *v5 = v17 + 104;
        v31 = *(v17 + 13);
        *v5 = v17 + 112;
        result = *(v17 + 14);
        *v5 = v17 + 120;
        v32 = *(v17 + 15);
        *v5 = v17 + 128;
        v33 = *(v17 + 16);
        *v5 = v17 + 136;
        if (a4)
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          LOBYTE(v37) = 0;
          LOBYTE(v38) = 0;
          LOBYTE(v39) = 0;
          LOBYTE(v40) = 0;
          LOBYTE(v41) = 0;
          LOBYTE(v42) = 0;
          *&v43 = v27;
          *(&v43 + 1) = v28;
          *&v44 = v24;
          *(&v44 + 1) = v25;
LABEL_30:
          *v9 = v44;
          *(v9 + 16) = v43;
          *(v9 + 32) = v31;
          *(v9 + 40) = result;
          *(v9 + 48) = v30;
          *(v9 + 56) = v33;
          *(v9 + 64) = v34 | (v32 << 16) | (v29 << 8) | v26;
          *(v9 + 72) = v35;
          *(v9 + 80) = v36;
          *(v9 + 88) = v37;
          *(v9 + 89) = v38;
          *(v9 + 90) = v39;
          *(v9 + 91) = v40;
          *(v9 + 92) = v41;
          *(v9 + 93) = v42;
          *(v9 + 94) = 0;
          *(v9 + 96) = v19;
          *(v9 + 104) = v20;
          *(v9 + 112) = v64;
          *(v9 + 120) = v16;
          *(v9 + 128) = v63;
          *(v9 + 136) = v62;
          *(v9 + 144) = v65;
          *(v9 + 145) = v66;
          *(v9 + 146) = v23;
          *(v9 + 147) = 0;
          *(v9 + 151) = 0;
        }
      }

LABEL_31:
      if (!--v7)
      {
        v6 = *v5;
        v7 = v60;
        a2 = v61;
        v53 = v59;
        goto LABEL_34;
      }
    }
  }

  v53 = 0;
LABEL_34:
  v54 = *v6;
  *v5 = v6 + 8;
  v55 = *(v6 + 2);
  *v5 = v6 + 16;
  v56 = *(v6 + 2);
  *v5 = v6 + 24;
  v57 = *(v6 + 3);
  *v5 = v6 + 32;
  v58 = *(v6 + 8);
  *v5 = v6 + 40;
  if (a4)
  {
    *a2 = v53;
    *(a2 + 8) = v7;
    *(a2 + 16) = v56;
    *(a2 + 24) = v55;
    *(a2 + 28) = v58;
    *(a2 + 32) = v54;
    *(a2 + 33) = v57;
    *(a2 + 34) = 0;
    *(a2 + 38) = 0;
  }

  return result;
}