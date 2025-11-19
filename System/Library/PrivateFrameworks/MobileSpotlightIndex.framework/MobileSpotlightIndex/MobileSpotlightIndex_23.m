unint64_t ZSTD_initCDict_internal(uint64_t a1, const void *a2, size_t __n, int a4, int a5, uint64_t a6)
{
  v10 = *(a6 + 4);
  *(a1 + 348) = *(a6 + 16);
  *(a1 + 336) = v10;
  *(a1 + 220) = *(a6 + 120);
  if (__n && a2 && a4 != 1)
  {
    if (*(a1 + 88) || (v12 = *(a1 + 40), v11 = *(a1 + 48), v13 = v11 + ((__n + 7) & 0xFFFFFFFFFFFFFFF8), v13 > v12))
    {
      *(a1 + 80) = 1;
      return -64;
    }

    *(a1 + 48) = v13;
    *(a1 + 56) = v13;
    *(a1 + 64) = v13;
    if (!v11)
    {
      return -64;
    }

    *a1 = v11;
    memcpy(v11, a2, __n);
  }

  else
  {
    *a1 = a2;
  }

  *(a1 + 8) = __n;
  *(a1 + 16) = a5;
  if (*(a1 + 88) || (v15 = *(a1 + 48), v16 = v15 + 8704, (v15 + 8704) > *(a1 + 40)))
  {
    v15 = 0;
    *(a1 + 80) = 1;
  }

  else
  {
    *(a1 + 48) = v16;
    *(a1 + 56) = v16;
    *(a1 + 64) = v16;
  }

  *(a1 + 24) = v15;
  *(a1 + 5992) = 0x400000001;
  *(a1 + 6000) = 8;
  *(a1 + 2432) = 0;
  *(a1 + 5980) = 0;
  *(a1 + 5984) = 0;
  result = ZSTD_reset_matchState(a1 + 96, a1 + 32, (a6 + 4), *(a6 + 144), 0, 1, 0);
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    *(a6 + 44) = 3;
    *(a6 + 32) = 1;
    result = ZSTD_compress_insertDictionary(a1 + 376, (a1 + 96), 0, (a1 + 32), a6, *a1, *(a1 + 8), a5, 1, *(a1 + 24));
    if (result <= 0xFFFFFFFFFFFFFF88)
    {
      *(a1 + 6032) = result;
      return 0;
    }
  }

  return result;
}

uint64_t ZSTD_freeCDict(unint64_t a1)
{
  if (a1)
  {
    v2 = a1 + 6008;
    v8 = *(a1 + 6024);
    v7 = *(a1 + 6008);
    v4 = (a1 + 32);
    v3 = *(a1 + 32);
    if (v3 > a1)
    {
      v4[2] = 0u;
      v4[3] = 0u;
      *v4 = 0u;
      v4[1] = 0u;
      v9 = *v2;
      v10 = *(v2 + 16);
      ZSTD_customFree(v3, &v9);
LABEL_5:
      v9 = v7;
      v10 = v8;
      ZSTD_customFree(a1, &v9);
      return 0;
    }

    v5 = *(a1 + 40);
    v4[2] = 0u;
    v4[3] = 0u;
    *v4 = 0u;
    v4[1] = 0u;
    v9 = *v2;
    v10 = *(v2 + 16);
    ZSTD_customFree(v3, &v9);
    if (v5 < a1)
    {
      goto LABEL_5;
    }
  }

  return 0;
}

unint64_t ZSTD_createCDict(const void *a1, unint64_t a2, int a3)
{
  memset(v8, 0, 28);
  ZSTD_getCParams_internal(a3, -1, a2, 2, v8);
  v9 = 0;
  v18 = 0;
  v19 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *v10 = v8[0];
  *&v10[12] = *(v8 + 12);
  v11 = 0u;
  LODWORD(v11) = 1;
  v20 = 0;
  v21 = 0;
  result = ZSTD_createCDict_advanced2(a1, a2, 0, 0, &v9, ZSTD_defaultCMem_0);
  if (result)
  {
    if (a3)
    {
      v7 = a3;
    }

    else
    {
      v7 = 3;
    }

    *(result + 6036) = v7;
  }

  return result;
}

unint64_t ZSTD_compressBegin_usingCDict_internal(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5)
{
  if (!a2)
  {
    return -32;
  }

  if (a5 < 0x20000 || a5 == -1 || (v16 = *(a2 + 8), 6 * v16 > a5) || (v12 = *(a2 + 6036)) == 0)
  {
    v10 = *(a2 + 336);
    v21 = *(a2 + 356);
    v20 = *(a2 + 340);
    v11 = *(a2 + 360);
    v12 = *(a2 + 6036);
  }

  else
  {
    ZSTD_getCParams_internal(*(a2 + 6036), a5, v16, 3, &v22);
    v10 = v22;
    v20 = *v23;
    v11 = v24;
    v21 = *&v23[16];
  }

  v22 = 0;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  *v23 = v10;
  *&v23[4] = v20;
  v24 = v21;
  v25 = v11;
  v26 = a3;
  v27 = a4;
  v28 = v12;
  if (v11 - 6 > 0xFFFFFFFC)
  {
    if (v10 > 0xE)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    v13 = 2;
    LODWORD(v35) = v17;
  }

  else
  {
    v13 = 2;
    LODWORD(v35) = 2;
    if (v11 > 6)
    {
      if (v10 > 0x10)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      HIDWORD(v34) = v14;
      if (v10 > 0x1A)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      goto LABEL_22;
    }
  }

  HIDWORD(v34) = 2;
LABEL_22:
  LODWORD(v32) = v13;
  if (a5 != -1)
  {
    if (a5 < 2)
    {
      v19 = 1;
    }

    else
    {
      v18 = 0x80000;
      if (a5 < 0x80000)
      {
        v18 = a5;
      }

      v19 = (__clz(v18 - 1) ^ 0x1F) + 1;
    }

    if (v10 <= v19)
    {
      v10 = v19;
    }

    *v23 = v10;
  }

  return ZSTD_compressBegin_internal(a1, 0, 0, 0, 0, a2, &v22, a5, 0);
}

unint64_t ZSTD_compress_usingCDict_internal(uint64_t a1, char *a2, unint64_t a3, char *a4, unint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  result = ZSTD_compressBegin_usingCDict_internal(a1, a6, a7, a8, a5);
  if (result <= 0xFFFFFFFFFFFFFF88)
  {

    return ZSTD_compressEnd(a1, a2, a3, a4, a5);
  }

  return result;
}

void ZSTD_initCStream(uint64_t a1, int a2)
{
  *(a1 + 3456) = 0;
  *(a1 + 632) = 0;
  ZSTD_CCtx_refCDict(a1, 0);
  if (v4 <= 0xFFFFFFFFFFFFFF88)
  {
    if (*(a1 + 3456))
    {
      *(a1 + 4) = 1;
    }

    if (a2 >= -131072)
    {
      if (a2 <= 22)
      {
        if (!a2)
        {
          a2 = 3;
        }
      }

      else
      {
        a2 = 22;
      }
    }

    else
    {
      a2 = -131072;
    }

    *(a1 + 60) = a2;
  }
}

unint64_t ZSTD_compressStream2(uint64_t a1, uint64_t *a2, __int128 *a3, unsigned int a4)
{
  if (a2[2] > a2[1])
  {
    return -70;
  }

  v7 = a3 + 8;
  v6 = *(a3 + 1);
  if (*(v7 + 8) > v6)
  {
    return -72;
  }

  if (a4 > 2)
  {
    return -42;
  }

  if (*(a1 + 3456))
  {
    v11 = *(a1 + 316);
  }

  else
  {
    result = ZSTD_CCtx_init_compressStream2(a1, a4, v6);
    if (result > 0xFFFFFFFFFFFFFF88)
    {
      return result;
    }

    v11 = *(a1 + 316);
    if (v11 == 1)
    {
      v37 = *a3;
      *(a1 + 3480) = *(a3 + 2);
      *(a1 + 3464) = v37;
    }

    if (*(a1 + 320) == 1)
    {
      *(a1 + 3488) = a2[1] - a2[2];
    }
  }

  if (v11 != 1)
  {
    goto LABEL_14;
  }

  if (*(a1 + 3464) != *a3 || *(a1 + 3480) != *(a3 + 2))
  {
    return -105;
  }

  result = -105;
  if (a4 == 2 && *(a1 + 3472) == *(a3 + 1))
  {
LABEL_14:
    v12 = a2[1];
    v13 = a2[2];
    if (*(a1 + 320) == 1 && *(a1 + 3488) != v12 - v13)
    {
      return -104;
    }

    v43 = *a3;
    v44 = (*a3 + *(a3 + 1));
    v14 = (*a3 + *(a3 + 2));
    v45 = *a2 + v12;
    v42 = *a2;
    v15 = (*a2 + v13);
    while (2)
    {
      v16 = *(a1 + 3456);
      while (1)
      {
        if (!v16)
        {
          return -62;
        }

        if (v16 == 1)
        {
          break;
        }

        if (v16 == 2)
        {
          result = *(a1 + 3440);
          v17 = *(a1 + 3448);
          goto LABEL_71;
        }
      }

      if (a4 == 2)
      {
        v18 = v45 - v15;
        v19 = (0x20000 - (v44 - v14)) >> 11;
        if ((v44 - v14) >= 0x20000)
        {
          v19 = 0;
        }

        if ((v18 >= v44 - v14 + ((v44 - v14) >> 8) + v19 || *(a1 + 320) == 1) && !*(a1 + 3408))
        {
          result = ZSTD_compressEnd(a1, v15, v18, v14, v44 - v14);
          if (result > 0xFFFFFFFFFFFFFF88)
          {
            return result;
          }

          v15 += result;
          *(a1 + 3460) = 1;
          v14 = v44;
          goto LABEL_97;
        }
      }

      if (*(a1 + 316))
      {
        v20 = v45 - v15;
        break;
      }

      v21 = *(a1 + 3408);
      if (*(a1 + 3416) - v21 >= (v44 - v14))
      {
        v22 = v44 - v14;
      }

      else
      {
        v22 = *(a1 + 3416) - v21;
      }

      if (v22)
      {
        memcpy((*(a1 + 3384) + v21), v14, v22);
        v21 = *(a1 + 3408);
      }

      v23 = v21 + v22;
      *(a1 + 3408) = v23;
      v14 += v22;
      if (a4 == 1)
      {
        if (v23 == *(a1 + 3400))
        {
LABEL_90:
          v38 = *(a1 + 3460);
          *(a3 + 2) = &v14[-v43];
          a2[2] = &v15[-v42];
          if (v38)
          {
            goto LABEL_98;
          }

          v39 = *(a1 + 3416);
          v40 = *(a1 + 3408);
          result = v39 - v40;
          if (v39 == v40)
          {
            result = *(a1 + 624);
          }

          if (result <= 0xFFFFFFFFFFFFFF88)
          {
            goto LABEL_98;
          }

          return result;
        }
      }

      else if (!a4 && v23 < *(a1 + 3416))
      {
        goto LABEL_90;
      }

      v20 = v45 - v15;
      if (!*(a1 + 316))
      {
        v25 = v23 - *(a1 + 3400);
        v24 = 1;
LABEL_44:
        v26 = (0x20000 - v25) >> 11;
        if (v25 >= 0x20000)
        {
          v26 = 0;
        }

        if (v20 >= v25 + (v25 >> 8) + v26)
        {
          v27 = v15;
        }

        else
        {
          v27 = v15;
          if (*(a1 + 320) != 1)
          {
            v27 = *(a1 + 3424);
            v20 = *(a1 + 3432);
          }
        }

        if (v24)
        {
          v28 = a4 == 2 && v14 == v44;
          v29 = v28;
          v30 = (*(a1 + 3384) + *(a1 + 3400));
          if (v28)
          {
            result = ZSTD_compressEnd(a1, v27, v20, v30, v25);
          }

          else
          {
            result = ZSTD_compressContinue_internal(a1, v27, v20, v30, v25, 1, 0);
          }

          if (result > 0xFFFFFFFFFFFFFF88)
          {
            return result;
          }

          *(a1 + 3460) = v29;
          v32 = *(a1 + 3408);
          v33 = *(a1 + 624);
          *(a1 + 3416) = v33 + v32;
          if ((v33 + v32) > *(a1 + 3392))
          {
            v32 = 0;
            *(a1 + 3408) = 0;
            *(a1 + 3416) = v33;
          }

          *(a1 + 3400) = v32;
        }

        else
        {
          v31 = &v14[v25];
          v29 = &v14[v25] == v44;
          if (&v14[v25] == v44)
          {
            result = ZSTD_compressEnd(a1, v27, v20, v14, v25);
          }

          else
          {
            result = ZSTD_compressContinue_internal(a1, v27, v20, v14, v25, 1, 0);
          }

          if (result > 0xFFFFFFFFFFFFFF88)
          {
            return result;
          }

          *(a1 + 3460) = v29;
          v14 = v31;
        }

        if (v27 == v15)
        {
          v15 += result;
          if (!v29)
          {
            continue;
          }

          goto LABEL_97;
        }

        v17 = 0;
        *(a1 + 3440) = result;
        *(a1 + 3448) = 0;
        *(a1 + 3456) = 2;
LABEL_71:
        v34 = result - v17;
        v35 = v45 - v15;
        if (v45 - v15 >= result - v17)
        {
          v36 = result - v17;
        }

        else
        {
          v36 = v45 - v15;
        }

        if (v36)
        {
          memcpy(v15, (*(a1 + 3424) + v17), v36);
          v17 = *(a1 + 3448);
        }

        v15 += v36;
        *(a1 + 3448) = v17 + v36;
        if (v34 <= v35)
        {
          *(a1 + 3440) = 0;
          *(a1 + 3448) = 0;
          if (!*(a1 + 3460))
          {
            *(a1 + 3456) = 1;
            continue;
          }

LABEL_97:
          *(a1 + 3456) = 0;
          *(a1 + 632) = 0;
          *(a3 + 2) = &v14[-v43];
          a2[2] = &v15[-v42];
LABEL_98:
          if (*(a1 + 316) == 1)
          {
            v41 = *a3;
            *(a1 + 3480) = *(a3 + 2);
            *(a1 + 3464) = v41;
          }

          if (*(a1 + 320) == 1)
          {
            *(a1 + 3488) = a2[1] - a2[2];
          }

          return *(a1 + 3440) - *(a1 + 3448);
        }

        goto LABEL_90;
      }

      break;
    }

    v24 = 0;
    if ((v44 - v14) >= *(a1 + 624))
    {
      v25 = *(a1 + 624);
    }

    else
    {
      v25 = v44 - v14;
    }

    goto LABEL_44;
  }

  return result;
}

unint64_t ZSTD_CCtx_init_compressStream2(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(a1 + 160);
  v35 = *(a1 + 144);
  v36 = v6;
  v37 = *(a1 + 176);
  v7 = *(a1 + 96);
  v31 = *(a1 + 80);
  v32 = v7;
  v8 = *(a1 + 128);
  v33 = *(a1 + 112);
  v34 = v8;
  v9 = *(a1 + 32);
  *v28 = *(a1 + 16);
  *&v28[16] = v9;
  v10 = *(a1 + 64);
  v29 = *(a1 + 48);
  v30 = v10;
  v11 = *(a1 + 3544);
  v12 = *(a1 + 3552);
  v13 = *(a1 + 3560);
  v14 = *(a1 + 3504);
  if (v14 && !*(a1 + 3528))
  {
    v15 = *(a1 + 3512);
    v16 = *(a1 + 3520);
    *v27 = *(a1 + 744);
    *&v27[16] = *(a1 + 760);
    CDict_advanced2 = ZSTD_createCDict_advanced2(v14, v15, 1, v16, (a1 + 16), v27);
    *(a1 + 3528) = CDict_advanced2;
    if (!CDict_advanced2)
    {
      return -64;
    }

    *(a1 + 3536) = CDict_advanced2;
  }

  *(a1 + 3544) = 0;
  *(a1 + 3552) = 0;
  *(a1 + 3560) = 0;
  v18 = *(a1 + 3536);
  if (v18 && !*(a1 + 3528))
  {
    HIDWORD(v29) = *(v18 + 6036);
  }

  if (a2 == 2)
  {
    *(a1 + 632) = a3 + 1;
  }

  if (v11)
  {
    v19 = *(a1 + 632) - 1;
    v20 = v12;
    if (!v18)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (!v18)
    {
      v20 = 0;
      v19 = *(a1 + 632) - 1;
      goto LABEL_24;
    }

    v20 = *(v18 + 8);
    v19 = *(a1 + 632) - 1;
  }

  if (!*(v18 + 220))
  {
    if (v19 == -1 || attachDictSizeCutoffs[*(v18 + 360)] >= v19)
    {
      if (DWORD1(v31) == 2)
      {
        goto LABEL_24;
      }
    }

    else if (DWORD1(v31) != 1)
    {
      goto LABEL_24;
    }

    if (!v30)
    {
      goto LABEL_16;
    }

LABEL_24:
    v21 = 0;
    goto LABEL_25;
  }

LABEL_16:
  v21 = 1;
LABEL_25:
  ZSTD_getCParamsFromCCtxParams(v28, v19, v20, v21, v27);
  *&v28[4] = *v27;
  *&v28[16] = *&v27[12];
  v22 = HIDWORD(v35);
  if (!HIDWORD(v35))
  {
    if (*&v28[28] < 7u)
    {
      v22 = 2;
    }

    else if (*&v28[4] > 0x10u)
    {
      v22 = 1;
    }

    else
    {
      v22 = 2;
    }
  }

  HIDWORD(v35) = v22;
  v23 = v33;
  if (!v33)
  {
    if (*&v28[28] < 7u)
    {
      v23 = 2;
    }

    else if (*&v28[4] > 0x1Au)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }
  }

  LODWORD(v33) = v23;
  v24 = v36;
  if (!v36)
  {
    if ((*&v28[28] - 6) >= 0xFFFFFFFD)
    {
      if (*&v28[4] > 0xEu)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }
    }

    else
    {
      v24 = 2;
    }
  }

  LODWORD(v36) = v24;
  result = ZSTD_compressBegin_internal(a1, v11, v12, v13, 0, v18, v28, v19, 1);
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    *(a1 + 3400) = 0u;
    if (*(a1 + 316))
    {
      v26 = 0;
    }

    else
    {
      v26 = *(a1 + 624);
      if (v26 == v19)
      {
        ++v26;
      }
    }

    result = 0;
    *(a1 + 3416) = v26;
    *(a1 + 3440) = 0uLL;
    *(a1 + 3456) = 1;
  }

  return result;
}

uint64_t ZSTD_writeFrameHeader(_DWORD *a1, unint64_t a2, _DWORD *a3, unint64_t a4, unsigned int a5)
{
  v5 = a5 > 0xFF;
  if (a5)
  {
    ++v5;
  }

  if ((a5 & 0xFFFF0000) != 0)
  {
    ++v5;
  }

  if (a3[10])
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = a3[1];
  v8 = a3[8];
  if (v8)
  {
    v9 = 1 << v7 >= a4;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = a4 >> 8 > 0x100;
  if (a4 > 0xFF)
  {
    ++v11;
  }

  if (a4 > 0xFFFFFFFE)
  {
    ++v11;
  }

  if (v8)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v10)
  {
    v13 = 32;
  }

  else
  {
    v13 = 0;
  }

  if (a2 < 0x12)
  {
    return -70;
  }

  v16 = v13 | (v6 + 4 * (a3[9] > 0)) | (v12 << 6);
  if (*a3)
  {
    v17 = 0;
  }

  else
  {
    *a1 = -47205080;
    v17 = 1;
  }

  v14 = (v17 * 4) | 1;
  LOBYTE(a1[v17]) = v16;
  if ((v10 & 1) == 0)
  {
    *(a1 + v14) = 8 * v7 - 80;
    v14 = (v17 * 4) | 2;
  }

  switch(v6)
  {
    case 3:
      *(a1 + v14) = a5;
      v14 += 4;
      break;
    case 2:
      *(a1 + v14) = a5;
      v14 += 2;
      break;
    case 1:
      *(a1 + v14++) = a5;
      break;
  }

  switch(v12)
  {
    case 1:
      *(a1 + v14) = a4 - 256;
      v14 += 2;
      break;
    case 2:
      *(a1 + v14) = a4;
      v14 += 4;
      break;
    case 3:
      *(a1 + v14) = a4;
      v14 += 8;
      break;
    default:
      if (v10)
      {
        *(a1 + v14++) = a4;
      }

      break;
  }

  return v14;
}

double ZSTD_getParams@<D0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *v6 = 0uLL;
  if (!a2)
  {
    a2 = -1;
  }

  *&v6[24] = 0;
  *&v6[16] = 0;
  ZSTD_getCParams_internal(a1, a2, a3, 3, v6);
  *(a4 + 32) = 0;
  *a4 = *v6;
  result = *&v6[12];
  *(a4 + 12) = *&v6[12];
  *(a4 + 28) = 1;
  return result;
}

uint64_t ZSTD_resetCCtx_internal(uint64_t a1, __int128 *a2, unint64_t a3, unint64_t a4, int a5, int a6)
{
  *(a1 + 816) = 1;
  v10 = *a2;
  v11 = a2[2];
  *(a1 + 208) = a2[1];
  *(a1 + 224) = v11;
  *(a1 + 192) = v10;
  v12 = a2[3];
  v13 = a2[4];
  v14 = a2[6];
  *(a1 + 272) = a2[5];
  *(a1 + 288) = v14;
  *(a1 + 240) = v12;
  *(a1 + 256) = v13;
  v15 = a2[7];
  v16 = a2[8];
  v17 = a2[10];
  *(a1 + 336) = a2[9];
  *(a1 + 352) = v17;
  *(a1 + 304) = v15;
  *(a1 + 320) = v16;
  v18 = a1 + 288;
  if (*(a1 + 288) == 1)
  {
    ZSTD_ldm_adjustParameters((a1 + 288), (a1 + 196));
  }

  v19 = 1 << *(a1 + 196);
  if (v19 >= a3)
  {
    v19 = a3;
  }

  if (!a3)
  {
    v19 = 1;
  }

  if (v19 >= 0x20000)
  {
    v20 = 0x20000;
  }

  else
  {
    v20 = v19;
  }

  if (*(a1 + 212) == 3)
  {
    v21 = 3;
  }

  else
  {
    v21 = 4;
  }

  v75 = v21;
  if (a6 == 1)
  {
    v22 = (0x20000 - v20) >> 11;
    if (v19 >= 0x20000)
    {
      v22 = 0;
    }

    v23 = v20 + (v20 >> 8) + v22;
    if (*(a1 + 320))
    {
      v24 = 0;
    }

    else
    {
      v24 = v23 + 1;
    }

    v25 = v20 + v19;
    if (*(a1 + 316))
    {
      v26 = 0;
    }

    else
    {
      v26 = v25;
    }
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  v77 = *v18;
  v78 = *(v18 + 16);
  v27 = 1;
  MaxNbSeq = ZSTD_ldm_getMaxNbSeq(&v77, v20);
  if (!(a4 >> 29) && *(a1 + 3088) - *(a1 + 3096) <= 0xDF000000uLL)
  {
    v27 = *(a1 + 820) == 0;
  }

  matched = ZSTD_estimateCCtxSize_usingCCtxParams_internal((a1 + 196), v18, *(a1 + 776) != 0, *(a1 + 336), v26, v24, a3);
  if (matched > 0xFFFFFFFFFFFFFF88)
  {
    return matched;
  }

  v29 = *(a1 + 776);
  if (!v29)
  {
    ++*(a1 + 612);
  }

  v30 = *(a1 + 568);
  v31 = *(a1 + 560);
  v32 = *(a1 + 600) - *(a1 + 584) >= 3 * matched && *(a1 + 612) > 128;
  if (v30 - v31 < matched || v32)
  {
    if (!v29)
    {
      v78 = *(a1 + 760);
      v77 = *(a1 + 744);
      *(a1 + 560) = 0u;
      *(a1 + 576) = 0u;
      *(a1 + 592) = 0u;
      *(a1 + 608) = 0u;
      ZSTD_customFree(v31, &v77);
      v77 = *(a1 + 744);
      v78 = *(a1 + 760);
      v43 = ZSTD_customMalloc(matched, &v77);
      if (v43)
      {
        *(a1 + 560) = v43;
        v44 = &v43[matched];
        *(a1 + 568) = &v43[matched];
        *(a1 + 576) = v43;
        *(a1 + 592) = v43;
        *(a1 + 616) = 0;
        *(a1 + 584) = v43;
        *(a1 + 600) = &v43[matched];
        *(a1 + 608) = 0;
        *(a1 + 612) = 0;
        if (matched > 5631)
        {
          *(a1 + 576) = v43 + 5632;
          *(a1 + 584) = v43 + 5632;
          *(a1 + 592) = v43 + 5632;
          *(a1 + 3072) = v43;
          if (matched >> 10 > 0xA)
          {
            *(a1 + 576) = v43 + 11264;
            *(a1 + 584) = v43 + 11264;
            *(a1 + 592) = v43 + 11264;
            *(a1 + 3080) = v43 + 5632;
            if (matched >> 3 > 0x9DA)
            {
              *(a1 + 576) = v43 + 20184;
              v73 = (a1 + 616);
              *(a1 + 592) = v43 + 20184;
              v34 = (a1 + 608);
              *(a1 + 3368) = v43 + 11264;
              *(a1 + 584) = v43 + 20184;
              *(a1 + 600) = v44;
              *(a1 + 608) = 0;
              v27 = 1;
              goto LABEL_36;
            }

            *(a1 + 608) = 1;
            *(a1 + 3368) = 0;
          }

          else
          {
            *(a1 + 608) = 1;
            *(a1 + 3080) = 0;
          }
        }

        else
        {
          *(a1 + 608) = 1;
          *(a1 + 3072) = 0;
        }
      }
    }

    return -64;
  }

  v33 = *(a1 + 616);
  *(a1 + 584) = *(a1 + 576);
  *(a1 + 600) = v30;
  v34 = (a1 + 608);
  *(a1 + 608) = 0;
  v73 = (a1 + 616);
  if (v33 >= 2)
  {
    *(a1 + 616) = 1;
  }

LABEL_36:
  *(a1 + 3328) = *(a1 + 196);
  *(a1 + 3340) = *(a1 + 208);
  *(a1 + 640) = 0u;
  *(a1 + 632) = a3 + 1;
  if (a3 == -1)
  {
    *(a1 + 224) = 0;
  }

  *(a1 + 624) = v20;
  ZSTD_XXH64_reset(a1 + 656, 0);
  *a1 = 1;
  *(a1 + 544) = 0;
  *(a1 + 552) = 0;
  v35 = *(a1 + 3072);
  *(v35 + 5624) = 8;
  *(v35 + 5616) = 0x400000001;
  *(v35 + 2056) = 0;
  *(v35 + 5604) = 0;
  *(v35 + 5608) = 0;
  if (!*(a1 + 616))
  {
    *(a1 + 592) = *(a1 + 576);
    *(a1 + 616) = 1;
  }

  v36 = *(a1 + 600);
  v37 = v36 - v20 - 32;
  v38 = *(a1 + 584);
  if (v37 >= v38)
  {
    if (v37 < *(a1 + 592))
    {
      *(a1 + 592) = v37;
    }

    *(a1 + 600) = v37;
    v39 = v36 - v20 - 32;
  }

  else
  {
    v39 = 0;
    *v34 = 1;
    v37 = v36;
  }

  *(a1 + 840) = v39;
  *(a1 + 888) = v20;
  *(a1 + 3376) = a6;
  *(a1 + 3392) = v26;
  if (v26)
  {
    v40 = v37 - v26;
    v41 = v75;
    if (v37 - v26 >= v38)
    {
      if (v40 < *(a1 + 592))
      {
        *(a1 + 592) = v40;
      }

      *(a1 + 600) = v40;
      v42 = v37 - v26;
    }

    else
    {
      v42 = 0;
      *v34 = 1;
      v40 = v37;
    }
  }

  else
  {
    v42 = 0;
    v40 = v37;
    v41 = v75;
  }

  *(a1 + 3384) = v42;
  *(a1 + 3432) = v24;
  v45 = v20 / v41;
  if (!v24)
  {
    v47 = 0;
    goto LABEL_61;
  }

  v46 = v40 - v24;
  if (v40 - v24 < v38)
  {
    v47 = 0;
    *v34 = 1;
LABEL_61:
    v46 = v40;
    goto LABEL_65;
  }

  if (v46 < *(a1 + 592))
  {
    *(a1 + 592) = v46;
  }

  *(a1 + 600) = v46;
  v47 = v40 - v24;
LABEL_65:
  *(a1 + 3424) = v47;
  if (*(a1 + 288) == 1)
  {
    v48 = (*(a1 + 292) - *(a1 + 296));
    v49 = 1 << (*(a1 + 292) - *(a1 + 296));
    v50 = (v46 - v49);
    if (v46 - v49 >= v38)
    {
      if (v50 < *(a1 + 592))
      {
        *(a1 + 592) = v50;
      }

      *(a1 + 600) = v50;
    }

    else
    {
      v50 = 0;
      *v34 = 1;
    }

    *(a1 + 960) = v50;
    bzero(v50, v49);
  }

  if (*a1 == 1 && *v18 != 1)
  {
    *(a1 + 3064) = 0;
    *(a1 + 3032) = 0u;
    *(a1 + 3048) = 0u;
  }

  *(a1 + 880) = v45;
  v51 = *(a1 + 616);
  if (!v51)
  {
    *(a1 + 592) = *(a1 + 576);
    v51 = 1;
    *(a1 + 616) = 1;
  }

  if (v41 <= v20)
  {
    v53 = *(a1 + 600) - v45;
    if (v53 >= *(a1 + 584))
    {
      if (v53 < *(a1 + 592))
      {
        *(a1 + 592) = v53;
      }

      *(a1 + 600) = v53;
    }

    else
    {
      v53 = 0;
      *v34 = 1;
    }

    *(a1 + 856) = v53;
    v54 = *(a1 + 600) - v45;
    if (v54 >= *(a1 + 584))
    {
      if (v54 < *(a1 + 592))
      {
        *(a1 + 592) = v54;
      }

      *(a1 + 600) = v54;
    }

    else
    {
      v54 = 0;
      *v34 = 1;
    }

    *(a1 + 864) = v54;
    v52 = *(a1 + 600) - v45;
    if (v52 >= *(a1 + 584))
    {
      if (v52 < *(a1 + 592))
      {
        *(a1 + 592) = v52;
      }

      *(a1 + 600) = v52;
    }

    else
    {
      v52 = 0;
      *v34 = 1;
    }
  }

  else
  {
    v52 = 0;
    *(a1 + 856) = 0u;
  }

  *(a1 + 872) = v52;
  if (v51 <= 1)
  {
    v55 = *(a1 + 600) + (-*(a1 + 600) | 0xFFFFFFFFFFFFFFC0);
    if (v55 < *(a1 + 584))
    {
LABEL_105:
      v59 = 0;
      v58 = v34;
      *v34 = 1;
      goto LABEL_110;
    }

    v56 = *(a1 + 592);
    if (v55 < v56)
    {
      *(a1 + 592) = v55;
      v56 = v55;
    }

    *(a1 + 600) = v55;
    v57 = *(a1 + 576) + (-*(a1 + 576) & 0x3F);
    if (v57 > *(a1 + 568))
    {
      v58 = v34;
      v59 = 0;
      goto LABEL_110;
    }

    *(a1 + 576) = v57;
    *(a1 + 584) = v57;
    if (v56 < v57)
    {
      *(a1 + 592) = v57;
    }

    *v73 = 2;
  }

  v59 = (8 * v45 + 63) & 0x7FFFFFFC0;
  if (v59)
  {
    v59 = *(a1 + 600) - v59;
    if (v59 < *(a1 + 584))
    {
      goto LABEL_105;
    }

    if (v59 < *(a1 + 592))
    {
      *(a1 + 592) = v59;
    }

    v58 = v34;
    *(a1 + 600) = v59;
  }

  else
  {
    v58 = v34;
  }

LABEL_110:
  *(a1 + 824) = v59;
  matched = ZSTD_reset_matchState(a1 + 3088, a1 + 560, (a1 + 196), *(a1 + 336), a5, v27, 1);
  if (matched <= 0xFFFFFFFFFFFFFF88)
  {
    if (*v18 != 1)
    {
LABEL_151:
      matched = 0;
      *(a1 + 820) = 1;
      return matched;
    }

    v60 = 8 << *(a1 + 292);
    v61 = *(a1 + 616);
    if (v61 <= 1)
    {
      if (!v61)
      {
        *(a1 + 592) = *(a1 + 576);
      }

      v62 = *(a1 + 600) + (-*(a1 + 600) | 0xFFFFFFFFFFFFFFC0);
      if (v62 < *(a1 + 584))
      {
        goto LABEL_124;
      }

      v63 = *(a1 + 592);
      if (v62 < v63)
      {
        *(a1 + 592) = v62;
        v63 = v62;
      }

      *(a1 + 600) = v62;
      v64 = *(a1 + 576) + (-*(a1 + 576) & 0x3F);
      if (v64 > *(a1 + 568))
      {
        goto LABEL_127;
      }

      *(a1 + 576) = v64;
      *(a1 + 584) = v64;
      if (v63 < v64)
      {
        *(a1 + 592) = v64;
      }

      *v73 = 2;
    }

    v65 = (v60 + 63) & 0xFFFFFFFFFFFFFFC0;
    if (v65)
    {
      v66 = (*(a1 + 600) - v65);
      if (v66 < *(a1 + 584))
      {
LABEL_124:
        v66 = 0;
        *v58 = 1;
        goto LABEL_133;
      }

      if (v66 < *(a1 + 592))
      {
        *(a1 + 592) = v66;
      }

      *(a1 + 600) = v66;
LABEL_133:
      *(a1 + 944) = v66;
      bzero(v66, v60);
      v67 = *(a1 + 616);
      if (v67 <= 1)
      {
        if (!v67)
        {
          *(a1 + 592) = *(a1 + 576);
        }

        v68 = *(a1 + 600) + (-*(a1 + 600) | 0xFFFFFFFFFFFFFFC0);
        if (v68 < *(a1 + 584))
        {
          goto LABEL_146;
        }

        v69 = *(a1 + 592);
        if (v68 < v69)
        {
          *(a1 + 592) = v68;
          v69 = v68;
        }

        *(a1 + 600) = v68;
        v70 = *(a1 + 576) + (-*(a1 + 576) & 0x3F);
        if (v70 > *(a1 + 568))
        {
          v71 = 0;
LABEL_150:
          *(a1 + 3016) = v71;
          *(a1 + 3024) = MaxNbSeq;
          *(a1 + 936) = 0;
          *(a1 + 912) = " ";
          *(a1 + 920) = " ";
          *(a1 + 928) = 0x200000002;
          *(a1 + 904) = "WARNING: The maximum dictionary size %u is too large compared to the source size %u! size(source)/size(dictionary) = %f, but it should be >= 10! This may lead to a subpar dictionary! We recommend training on sources at least 10x, and preferably 100x the size of the dictionary! \n";
          *(a1 + 952) = 0;
          goto LABEL_151;
        }

        *(a1 + 576) = v70;
        *(a1 + 584) = v70;
        if (v69 < v70)
        {
          *(a1 + 592) = v70;
        }

        *v73 = 2;
      }

      v71 = (12 * MaxNbSeq + 63) & 0xFFFFFFFFFFFFFFC0;
      if (!v71)
      {
        goto LABEL_150;
      }

      v71 = *(a1 + 600) - v71;
      if (v71 >= *(a1 + 584))
      {
        if (v71 < *(a1 + 592))
        {
          *(a1 + 592) = v71;
        }

        *(a1 + 600) = v71;
        goto LABEL_150;
      }

LABEL_146:
      v71 = 0;
      *v58 = 1;
      goto LABEL_150;
    }

LABEL_127:
    v66 = 0;
    goto LABEL_133;
  }

  return matched;
}

uint64_t ZSTD_reset_matchState(uint64_t a1, uint64_t a2, _DWORD *a3, int a4, int a5, int a6, int a7)
{
  v12 = a3[6];
  if ((a7 || !*(a1 + 124)) && (v12 == 1 || a4 == 1 && (v12 - 3) < 3))
  {
    v13 = 0;
  }

  else
  {
    v13 = 4 << a3[1];
  }

  if (a7 == 1 && a3[4] == 3)
  {
    if (*a3 >= 0x11u)
    {
      v14 = 17;
    }

    else
    {
      v14 = *a3;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = a3[2];
  if (a6 == 1)
  {
    *(a1 + 32) = 0;
    v16 = " ";
    *(a1 + 8) = " ";
    *(a1 + 16) = " ";
    v17 = "WARNING: The maximum dictionary size %u is too large compared to the source size %u! size(source)/size(dictionary) = %f, but it should be >= 10! This may lead to a subpar dictionary! We recommend training on sources at least 10x, and preferably 100x the size of the dictionary! \n";
    *a1 = "WARNING: The maximum dictionary size %u is too large compared to the source size %u! size(source)/size(dictionary) = %f, but it should be >= 10! This may lead to a subpar dictionary! We recommend training on sources at least 10x, and preferably 100x the size of the dictionary! \n";
    v18 = *(a2 + 16);
    *(a2 + 32) = v18;
  }

  else
  {
    v17 = *a1;
    v16 = *(a1 + 8);
    v18 = *(a2 + 16);
  }

  v19 = v17 - v16;
  *(a1 + 24) = v19;
  *(a1 + 28) = v19;
  *(a1 + 44) = v19;
  *(a1 + 48) = v14;
  *(a1 + 40) = 0;
  *(a1 + 180) = 0;
  *(a1 + 232) = 0;
  *(a2 + 24) = v18;
  v20 = *(a2 + 56);
  if (v20 >= 2)
  {
    v22 = *(a2 + 40);
    v23 = v18;
LABEL_23:
    v24 = v23 + (4 << v15);
    if (v24 <= v22)
    {
      *(a2 + 24) = v24;
    }

    else
    {
      *(a2 + 48) = 1;
      v24 = v23;
      v23 = 0;
    }

    *(a1 + 96) = v23;
LABEL_27:
    v25 = v24 + v13;
    if (v25 <= v22)
    {
      *(a2 + 24) = v25;
    }

    else
    {
      *(a2 + 48) = 1;
      v25 = v24;
      v24 = 0;
    }

    *(a1 + 112) = v24;
    if (v14)
    {
      v26 = 4 << v14;
    }

    else
    {
      v26 = 0;
    }

    goto LABEL_33;
  }

  if (!v20)
  {
    *(a2 + 32) = v18;
  }

  v21 = *(a2 + 40);
  v22 = v21 + (-*(a2 + 40) | 0xFFFFFFFFFFFFFFC0);
  if (v22 < v18)
  {
    *(a2 + 48) = 1;
    goto LABEL_41;
  }

  v27 = *(a2 + 32);
  if (v22 < v27)
  {
    *(a2 + 32) = v22;
    v27 = v22;
  }

  *(a2 + 40) = v22;
  v23 = v18 + (-v18 & 0x3FLL);
  if (v23 <= *(a2 + 8))
  {
    *(a2 + 16) = v23;
    *(a2 + 24) = v23;
    if (v27 < v23)
    {
      *(a2 + 32) = v23;
    }

    *(a2 + 56) = 2;
    goto LABEL_23;
  }

  v21 = v22;
LABEL_41:
  *(a1 + 96) = 0;
  if (!v20)
  {
    *(a2 + 32) = *(a2 + 16);
  }

  v22 = v21 + (-v21 | 0xFFFFFFFFFFFFFFC0);
  if (v22 < v18)
  {
    *(a2 + 48) = 1;
    goto LABEL_49;
  }

  v28 = *(a2 + 32);
  if (v22 < v28)
  {
    *(a2 + 32) = v22;
    v28 = v21 + (-v21 | 0xFFFFFFFFFFFFFFC0);
  }

  *(a2 + 40) = v22;
  v24 = *(a2 + 16) + (-*(a2 + 16) & 0x3F);
  if (v24 <= *(a2 + 8))
  {
    *(a2 + 16) = v24;
    *(a2 + 24) = v24;
    if (v28 < v24)
    {
      *(a2 + 32) = v24;
    }

    *(a2 + 56) = 2;
    goto LABEL_27;
  }

  v21 = v22;
LABEL_49:
  *(a1 + 112) = 0;
  if (v14)
  {
    v26 = 4 << v14;
  }

  else
  {
    v26 = 0;
  }

  if (!v20)
  {
    *(a2 + 32) = *(a2 + 16);
  }

  v22 = v21 + (-v21 | 0xFFFFFFFFFFFFFFC0);
  if (v22 >= v18)
  {
    v41 = *(a2 + 32);
    if (v22 < v41)
    {
      *(a2 + 32) = v22;
      v41 = v21 + (-v21 | 0xFFFFFFFFFFFFFFC0);
    }

    *(a2 + 40) = v22;
    v25 = *(a2 + 16) + (-*(a2 + 16) & 0x3F);
    if (v25 > *(a2 + 8))
    {
      goto LABEL_35;
    }

    *(a2 + 16) = v25;
    *(a2 + 24) = v25;
    if (v41 < v25)
    {
      *(a2 + 32) = v25;
    }

    *(a2 + 56) = 2;
LABEL_33:
    v18 = v25 + v26;
    if (v25 + v26 <= v22)
    {
      *(a2 + 24) = v18;
      goto LABEL_56;
    }

    *(a2 + 48) = 1;
    v18 = v25;
LABEL_35:
    v25 = 0;
    goto LABEL_56;
  }

  v25 = 0;
  *(a2 + 48) = 1;
LABEL_56:
  *(a1 + 104) = v25;
  if (*(a2 + 48))
  {
    return -64;
  }

  if (a5 != 1)
  {
    v30 = *(a2 + 32);
    if (v30 < v18)
    {
      bzero(v30, v18 - v30);
      v18 = *(a2 + 24);
      v30 = *(a2 + 32);
    }

    if (v30 < v18)
    {
      *(a2 + 32) = v18;
    }
  }

  v31 = a3[6];
  if (a7 != 1 || v31 < 7)
  {
    if (a4 != 1 || v31 - 6 < 0xFFFFFFFD)
    {
      goto LABEL_140;
    }

    v35 = *(a2 + 56);
    if (v35 <= 1)
    {
      if (!v35)
      {
        *(a2 + 32) = *(a2 + 16);
      }

      v36 = *(a2 + 40) + (-*(a2 + 40) | 0xFFFFFFFFFFFFFFC0);
      if (v36 < v18)
      {
        goto LABEL_84;
      }

      v37 = *(a2 + 32);
      if (v36 < v37)
      {
        *(a2 + 32) = v36;
        v37 = v36;
      }

      *(a2 + 40) = v36;
      v18 = *(a2 + 16) + (-*(a2 + 16) & 0x3F);
      if (v18 > *(a2 + 8))
      {
        goto LABEL_85;
      }

      *(a2 + 16) = v18;
      *(a2 + 24) = v18;
      if (v37 < v18)
      {
        *(a2 + 32) = v18;
      }

      *(a2 + 56) = 2;
    }

    v38 = ((2 << v15) + 63) & 0xFFFFFFFFFFFFFFC0;
    if (!v38)
    {
LABEL_85:
      *(a1 + 56) = 0;
LABEL_86:
      v40 = a3[3];
      if (v40 >= 6)
      {
        v40 = 6;
      }

      if (v40 <= 4)
      {
        v40 = 4;
      }

      *(a1 + 52) = a3[2] - v40;
      goto LABEL_140;
    }

    v39 = (*(a2 + 40) - v38);
    if (v39 >= v18)
    {
      if (v39 < *(a2 + 32))
      {
        *(a2 + 32) = v39;
      }

      *(a2 + 40) = v39;
      *(a1 + 56) = v39;
      bzero(v39, 2 << v15);
      goto LABEL_86;
    }

LABEL_84:
    *(a2 + 48) = 1;
    goto LABEL_85;
  }

  v32 = *(a2 + 56);
  if (v32 >= 2)
  {
    v34 = *(a2 + 40);
    v42 = v18;
LABEL_104:
    v43 = v34 - 1024;
    if (v34 - 1024 >= v42)
    {
      if (v43 < *(a2 + 32))
      {
        *(a2 + 32) = v43;
      }

      *(a2 + 40) = v43;
      v44 = v34 - 1024;
    }

    else
    {
      v44 = 0;
      *(a2 + 48) = 1;
      v43 = v34;
    }

    *(a1 + 128) = v44;
    goto LABEL_110;
  }

  if (!v32)
  {
    *(a2 + 32) = *(a2 + 16);
  }

  v33 = *(a2 + 40);
  v34 = v33 + (-*(a2 + 40) | 0xFFFFFFFFFFFFFFC0);
  if (v34 < v18)
  {
    *(a2 + 48) = 1;
    v34 = v33;
    goto LABEL_146;
  }

  v55 = *(a2 + 32);
  if (v34 < v55)
  {
    *(a2 + 32) = v34;
    v55 = v34;
  }

  *(a2 + 40) = v34;
  v42 = *(a2 + 16) + (-*(a2 + 16) & 0x3F);
  if (v42 <= *(a2 + 8))
  {
    *(a2 + 16) = v42;
    *(a2 + 24) = v42;
    if (v55 < v42)
    {
      *(a2 + 32) = v42;
    }

    *(a2 + 56) = 2;
    goto LABEL_104;
  }

LABEL_146:
  *(a1 + 128) = 0;
  if (!v32)
  {
    *(a2 + 32) = *(a2 + 16);
  }

  v43 = v34 + (-v34 | 0xFFFFFFFFFFFFFFC0);
  if (v43 < v18)
  {
    *(a2 + 48) = 1;
    goto LABEL_154;
  }

  v56 = *(a2 + 32);
  if (v43 < v56)
  {
    *(a2 + 32) = v43;
    v56 = v43;
  }

  *(a2 + 40) = v43;
  v42 = *(a2 + 16) + (-*(a2 + 16) & 0x3F);
  if (v42 <= *(a2 + 8))
  {
    *(a2 + 16) = v42;
    *(a2 + 24) = v42;
    if (v56 < v42)
    {
      *(a2 + 32) = v42;
    }

    *(a2 + 56) = 2;
LABEL_110:
    v45 = v43 - 192;
    if (v43 - 192 >= v42)
    {
      if (v45 < *(a2 + 32))
      {
        *(a2 + 32) = v45;
      }

      *(a2 + 40) = v45;
      v46 = v43 - 192;
    }

    else
    {
      v46 = 0;
      *(a2 + 48) = 1;
      v45 = v43;
    }

    *(a1 + 136) = v46;
    goto LABEL_116;
  }

  v34 = v43;
LABEL_154:
  *(a1 + 136) = 0;
  if (!v32)
  {
    *(a2 + 32) = *(a2 + 16);
  }

  v45 = v34 + (-v34 | 0xFFFFFFFFFFFFFFC0);
  if (v45 < v18)
  {
    *(a2 + 48) = 1;
    goto LABEL_162;
  }

  v57 = *(a2 + 32);
  if (v45 < v57)
  {
    *(a2 + 32) = v45;
    v57 = v45;
  }

  *(a2 + 40) = v45;
  v42 = *(a2 + 16) + (-*(a2 + 16) & 0x3F);
  if (v42 <= *(a2 + 8))
  {
    *(a2 + 16) = v42;
    *(a2 + 24) = v42;
    if (v57 < v42)
    {
      *(a2 + 32) = v42;
    }

    *(a2 + 56) = 2;
LABEL_116:
    v47 = v45 - 256;
    if (v45 - 256 >= v42)
    {
      if (v47 < *(a2 + 32))
      {
        *(a2 + 32) = v47;
      }

      *(a2 + 40) = v47;
      v48 = v45 - 256;
    }

    else
    {
      v48 = 0;
      *(a2 + 48) = 1;
      v47 = v45;
    }

    *(a1 + 144) = v48;
    goto LABEL_122;
  }

  v34 = v45;
LABEL_162:
  *(a1 + 144) = 0;
  if (!v32)
  {
    *(a2 + 32) = *(a2 + 16);
  }

  v47 = v34 + (-v34 | 0xFFFFFFFFFFFFFFC0);
  if (v47 < v18)
  {
    *(a2 + 48) = 1;
    goto LABEL_173;
  }

  v58 = *(a2 + 32);
  if (v47 < v58)
  {
    *(a2 + 32) = v47;
    v58 = v47;
  }

  *(a2 + 40) = v47;
  v42 = *(a2 + 16) + (-*(a2 + 16) & 0x3F);
  if (v42 <= *(a2 + 8))
  {
    *(a2 + 16) = v42;
    *(a2 + 24) = v42;
    if (v58 < v42)
    {
      *(a2 + 32) = v42;
    }

    *(a2 + 56) = 2;
LABEL_122:
    v49 = v47 - 128;
    if (v47 - 128 >= v42)
    {
      if (v49 < *(a2 + 32))
      {
        *(a2 + 32) = v49;
      }

      *(a2 + 40) = v49;
      v50 = v47 - 128;
    }

    else
    {
      v50 = 0;
      *(a2 + 48) = 1;
      v49 = v47;
    }

    *(a1 + 152) = v50;
    goto LABEL_128;
  }

  v34 = v47;
LABEL_173:
  *(a1 + 152) = 0;
  if (!v32)
  {
    *(a2 + 32) = *(a2 + 16);
  }

  v49 = v34 + (-v34 | 0xFFFFFFFFFFFFFFC0);
  if (v49 < v18)
  {
    *(a2 + 48) = 1;
    goto LABEL_187;
  }

  v59 = *(a2 + 32);
  if (v49 < v59)
  {
    *(a2 + 32) = v49;
    v59 = v49;
  }

  *(a2 + 40) = v49;
  v42 = *(a2 + 16) + (-*(a2 + 16) & 0x3F);
  if (v42 <= *(a2 + 8))
  {
    *(a2 + 16) = v42;
    *(a2 + 24) = v42;
    if (v59 < v42)
    {
      *(a2 + 32) = v42;
    }

    *(a2 + 56) = 2;
LABEL_128:
    v51 = v49 - 32832;
    if (v49 - 32832 >= v42)
    {
      if (v51 < *(a2 + 32))
      {
        *(a2 + 32) = v51;
      }

      *(a2 + 40) = v51;
      v52 = v49 - 32832;
    }

    else
    {
      v52 = 0;
      *(a2 + 48) = 1;
      v51 = v49;
    }

    *(a1 + 160) = v52;
LABEL_134:
    v53 = v51 - 114752;
    if (v51 - 114752 >= v42)
    {
      if (v53 < *(a2 + 32))
      {
        *(a2 + 32) = v53;
      }

      *(a2 + 40) = v53;
      goto LABEL_139;
    }

    goto LABEL_135;
  }

  v34 = v49;
LABEL_187:
  *(a1 + 160) = 0;
  if (!v32)
  {
    *(a2 + 32) = *(a2 + 16);
  }

  v51 = v34 + (-v34 | 0xFFFFFFFFFFFFFFC0);
  if (v51 >= v18)
  {
    v60 = *(a2 + 32);
    if (v51 < v60)
    {
      *(a2 + 32) = v51;
      v60 = v34 + (-v34 | 0xFFFFFFFFFFFFFFC0);
    }

    *(a2 + 40) = v51;
    v42 = *(a2 + 16) + (-*(a2 + 16) & 0x3F);
    if (v42 > *(a2 + 8))
    {
      v53 = 0;
      goto LABEL_139;
    }

    *(a2 + 16) = v42;
    *(a2 + 24) = v42;
    if (v60 < v42)
    {
      *(a2 + 32) = v42;
    }

    *(a2 + 56) = 2;
    goto LABEL_134;
  }

LABEL_135:
  v53 = 0;
  *(a2 + 48) = 1;
LABEL_139:
  *(a1 + 168) = v53;
LABEL_140:
  v54 = *a3;
  *(a1 + 252) = *(a3 + 3);
  *(a1 + 240) = v54;
  if (*(a2 + 48))
  {
    return -64;
  }

  else
  {
    return 0;
  }
}

unint64_t ZSTD_buildSequencesStatistics@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, unsigned int a7@<W6>, unsigned int *a8@<X7>, uint64_t a9@<X8>, char *a10, unint64_t a11)
{
  v30 = a1[5];
  v31 = a1[6];
  v18 = a1[4];
  *a9 = 0u;
  *(a9 + 16) = 0u;
  ZSTD_seqToCodes(a1);
  v38[0] = 35;
  v19 = HIST_countFast_wksp(a8, v38, v18, a2, a10, a11);
  *(a4 + 3548) = *(a3 + 3548);
  v32 = a3;
  a3 += 2224;
  v33 = a7;
  v20 = ZSTD_selectEncodingType((a4 + 3548), a8, v38[0], v19, a2, 9u, a3, LL_defaultNorm_0, 6, 1, a7);
  *a9 = v20;
  v34 = a4;
  result = ZSTD_buildCTable(a5, a6 - a5, (a4 + 2224), 9u, v20, a8, v38[0], v18, a2, LL_defaultNorm_0, 6, 35, a3, 0x524uLL, a10, a11);
  if (result > 0xFFFFFFFFFFFFFF88)
  {
    *(a9 + 16) = result;
  }

  else
  {
    v22 = a9;
    if (v20 == 2)
    {
      *(a9 + 24) = result;
    }

    v23 = &a5[result];
    v37 = 31;
    v24 = HIST_countFast_wksp(a8, &v37, v31, a2, a10, a11);
    v25 = v37;
    *(v34 + 3540) = *(v32 + 3540);
    v26 = ZSTD_selectEncodingType((v34 + 3540), a8, v25, v24, a2, 8u, v32, OF_defaultNorm_0, 5, v25 < 0x1D, v33);
    *(a9 + 4) = v26;
    result = ZSTD_buildCTable(v23, a6 - v23, v34, 8u, v26, a8, v37, v31, a2, OF_defaultNorm_0, 5, 28, v32, 0x304uLL, a10, a11);
    if (result > 0xFFFFFFFFFFFFFF88)
    {
      goto LABEL_12;
    }

    if (v26 == 2)
    {
      *(a9 + 24) = result;
    }

    v27 = &v23[result];
    v36 = 52;
    v28 = HIST_countFast_wksp(a8, &v36, v30, a2, a10, a11);
    *(v34 + 3544) = *(v32 + 3544);
    v29 = ZSTD_selectEncodingType((v34 + 3544), a8, v36, v28, a2, 9u, (v32 + 772), ML_defaultNorm_0, 6, 1, v33);
    *(v22 + 8) = v29;
    result = ZSTD_buildCTable(v27, a6 - v27, (v34 + 772), 9u, v29, a8, v36, v30, a2, ML_defaultNorm_0, 6, 52, (v32 + 772), 0x5ACuLL, a10, a11);
    if (result > 0xFFFFFFFFFFFFFF88)
    {
LABEL_12:
      *(v22 + 16) = result;
    }

    else
    {
      if (v29 == 2)
      {
        *(v22 + 24) = result;
      }

      *(v22 + 16) = &v27[result] - a5;
    }
  }

  return result;
}

uint32x2_t *ZSTD_overflowCorrectIfNeeded(uint32x2_t *result, void *a2, _DWORD *a3, int a4, int a5)
{
  v5 = result[1];
  if ((a5 - v5.i32[0]) >= 0xE0000001)
  {
    v6 = 1 << a3[1];
    v7 = a3[7];
    v8 = 1 << (a3[2] - (v7 > 5));
    v9 = (v8 - 1) & (a4 - v5.i32[0]);
    if (v8 <= 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1 << (a3[2] - (v7 > 5));
    }

    if (v9 >= 2)
    {
      v10 = 0;
    }

    if (v8 > v6)
    {
      v6 = 1 << (a3[2] - (v7 > 5));
    }

    v11 = a4 - v5.i32[0] - (v6 + v9) - v10;
    v12 = (*&result[2] + v11);
    result[1] = (*&v5 + v11);
    result[2] = v12;
    v13 = v11 + 2;
    result[3] = vbsl_s8(vcgt_u32(vdup_n_s32(v11 + 2), result[3]), 0x200000002, vsub_s32(result[3], vdup_n_s32(v11)));
    ++result[4].i32[0];
    v14 = a2[2];
    a2[4] = v14;
    v15 = 1 << a3[3];
    if (v15 >= 0)
    {
      v16 = 1 << a3[3];
    }

    else
    {
      v16 = v15 + 15;
    }

    if (v15 >= 16)
    {
      v17 = 0;
      v18 = 0;
      v19 = result[12];
      v20 = v16 >> 4;
      v21 = vdupq_n_s32(v13);
      v22 = vdupq_n_s32(v11);
      do
      {
        for (i = 0; i != 64; i += 16)
        {
          *(*&v19 + 4 * v17 + i) = vbicq_s8(vsubq_s32(*(*&v19 + 4 * v17 + i), v22), vcgtq_u32(v21, *(*&v19 + 4 * v17 + i)));
        }

        v17 += 16;
        ++v18;
      }

      while (v18 != v20);
      v7 = a3[7];
    }

    if (result[15].i32[1] || v7 != 1 && (v7 - 3 > 2 || a3[36] != 1))
    {
      v24 = 1 << a3[2];
      v25 = result[14];
      v26 = v24 / 16;
      if (v7 == 6)
      {
        if (v24 >= 16)
        {
          v27 = 0;
          v28 = 0;
          v29 = vdupq_n_s32(v13);
          v30 = vdupq_n_s32(v11);
          v31.i64[0] = 0x100000001;
          v31.i64[1] = 0x100000001;
          do
          {
            v32 = 0;
            v33 = *&v25 + 4 * v27;
            do
            {
              v34 = *(v33 + v32);
              v35 = vceqq_s32(v34, v31);
              *(v33 + v32) = vsubq_s32(vbicq_s8(vbicq_s8(vsubq_s32(v34, v30), vcgtq_u32(v29, v34)), v35), v35);
              v32 += 16;
            }

            while (v32 != 64);
            v27 += 16;
            ++v28;
          }

          while (v28 != v26);
        }
      }

      else if (v24 >= 16)
      {
        v36 = 0;
        v37 = 0;
        v38 = vdupq_n_s32(v13);
        v39 = vdupq_n_s32(v11);
        do
        {
          for (j = 0; j != 64; j += 16)
          {
            *(*&v25 + 4 * v36 + j) = vbicq_s8(vsubq_s32(*(*&v25 + 4 * v36 + j), v39), vcgtq_u32(v38, *(*&v25 + 4 * v36 + j)));
          }

          v36 += 16;
          ++v37;
        }

        while (v37 != v26);
      }
    }

    v41 = result[6].i32[0];
    if (v41)
    {
      v42 = 1 << v41;
      v43 = v42 >= 0 ? v42 : v42 + 15;
      if (v42 >= 16)
      {
        v44 = 0;
        v45 = 0;
        v46 = result[13];
        v47 = v43 >> 4;
        v48 = vdupq_n_s32(v13);
        v49 = vdupq_n_s32(v11);
        do
        {
          for (k = 0; k != 64; k += 16)
          {
            *(*&v46 + 4 * v44 + k) = vbicq_s8(vsubq_s32(*(*&v46 + 4 * v44 + k), v49), vcgtq_u32(v48, *(*&v46 + 4 * v44 + k)));
          }

          v44 += 16;
          ++v45;
        }

        while (v45 != v47);
      }
    }

    v51 = a2[3];
    if (v14 < v51)
    {
      a2[4] = v51;
    }

    v52 = result[5].u32[1];
    v53 = v52 >= v11;
    v54 = v52 - v11;
    if (!v53)
    {
      v54 = 0;
    }

    result[5].i32[0] = 0;
    result[5].i32[1] = v54;
    result[29] = 0;
  }

  return result;
}

uint64_t ZSTD_compressBlock_internal(uint64_t a1, char *a2, size_t a3, void *a4, unint64_t a5, int a6)
{
  v12 = ZSTD_buildSeqStore(a1, a4, a5);
  v13 = 4 * (v12 == 1);
  if (v12 >= 0xFFFFFFFFFFFFFF89)
  {
    v13 = 1;
  }

  if (v13 == 4)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12;
    if (v13)
    {
      return v14;
    }

    if (*(a1 + 784))
    {
      ZSTD_copyBlockSequences(a1);
      v14 = 0;
      *(a1 + 3072) = vextq_s8(*(a1 + 3072), *(a1 + 3072), 8uLL);
      return v14;
    }

    v17 = ZSTD_entropyCompressSeqStore((a1 + 824), *(a1 + 3072), *(a1 + 3080), (a1 + 192), a2, a3, a5, *(a1 + 3368), *(a1 + 8));
    v14 = v17;
    if (a6 && !*(a1 + 816) && v17 <= 0x18 && ZSTD_isRLE(a4, a5))
    {
      *a2 = *a4;
      v14 = 1;
    }

    else if ((v14 - 2) <= 0xFFFFFFFFFFFFFF86)
    {
      *(a1 + 3072) = vextq_s8(*(a1 + 3072), *(a1 + 3072), 8uLL);
    }
  }

  v15 = *(a1 + 3072);
  if (*(v15 + 5604) == 2)
  {
    *(v15 + 5604) = 1;
  }

  return v14;
}

unint64_t ZSTD_buildSeqStore(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a3 > 6)
  {
    *(a1 + 848) = *(a1 + 840);
    *(a1 + 832) = *(a1 + 824);
    *(a1 + 896) = 0;
    v6 = *(a1 + 3072);
    *(a1 + 3304) = v6;
    *(a1 + 3312) = *(a1 + 264);
    v7 = a2 - *(a1 + 3096);
    v8 = *(a1 + 3132);
    if (v8 + 384 < v7)
    {
      v9 = v7 - v8 - 384;
      if (v9 >= 0xC0)
      {
        v9 = 192;
      }

      *(a1 + 3132) = v7 - v9;
    }

    if (*(a1 + 3116) >= *(a1 + 3112))
    {
      v10 = *(a1 + 3320);
      if (v10)
      {
        v12 = *(v10 + 124) == 0;
        v10 = 2;
        if (!v12)
        {
          v10 = 3;
        }
      }
    }

    else
    {
      v10 = 1;
    }

    v13 = 0;
    v14 = v6 + 5616;
    v15 = (*(a1 + 3080) + 5616);
    do
    {
      *(v15 + v13) = *(v14 + v13);
      v13 += 4;
    }

    while (v13 != 12);
    if (*(a1 + 3040) >= *(a1 + 3056))
    {
      if (*(a1 + 288) != 1)
      {
        v21 = *(a1 + 220);
        v22 = v21 - 3;
        v23 = *(a1 + 336) != 1 || v22 > 2;
        v24 = &ZSTD_selectBlockCompressor_rowBasedBlockCompressors[3 * v10] + v22;
        v25 = &ZSTD_selectBlockCompressor_blockCompressor[10 * v10] + v21;
        if (!v23)
        {
          v25 = v24;
        }

        v26 = *v25;
        *(a1 + 3360) = 0;
        v20 = (v26)(a1 + 3088, a1 + 824, v15, a2, a3);
        goto LABEL_29;
      }

      v28[0] = *(a1 + 3016);
      memset(&v28[1], 0, 24);
      v28[4] = *(a1 + 3024);
      result = ZSTD_ldm_generateSequences((a1 + 904), v28, (a1 + 288), a2, a3);
      if (result > 0xFFFFFFFFFFFFFF88)
      {
        return result;
      }

      v16 = *(a1 + 336);
      v17 = v28;
      v18 = a1 + 3088;
      v19 = a1 + 824;
      v15 = (*(a1 + 3080) + 5616);
    }

    else
    {
      v16 = *(a1 + 336);
      v17 = (a1 + 3032);
      v18 = a1 + 3088;
      v19 = a1 + 824;
    }

    v20 = ZSTD_ldm_blockCompress(v17, v18, v19, v15, v16, a2, a3);
LABEL_29:
    v27 = v20;
    memcpy(*(a1 + 848), (a2 + a3 - v20), v20);
    result = 0;
    *(a1 + 848) += v27;
    return result;
  }

  if (*(a1 + 220) < 7u)
  {
    ZSTD_ldm_skipSequences((a1 + 3032), a3, *(a1 + 212));
  }

  else
  {
    ZSTD_ldm_skipRawSeqStoreBytes(a1 + 3032, a3);
  }

  return 1;
}

uint64_t ZSTD_isRLE(void *a1, unint64_t a2)
{
  if (a2 == 1)
  {
    return 1;
  }

  v2 = a2 & 0x1F;
  if ((a2 & 0x1F) != 0)
  {
    v3 = (a1 + v2);
    v4 = a1;
    v5 = (a1 + 1);
    if (v2 >= 9)
    {
      v6 = *(a1 + 1);
      if (*a1 != v6)
      {
        v11 = __clz(__rbit64(v6 ^ *a1)) >> 3;
        goto LABEL_21;
      }

      v7 = 0;
      v5 = (a1 + 9);
      while (v5 < (v3 - 7))
      {
        v8 = *(v5 - 1);
        v10 = *v5;
        v5 += 4;
        v9 = v10;
        v7 += 8;
        if (v8 != v10)
        {
          v11 = v7 + (__clz(__rbit64(v9 ^ v8)) >> 3);
          goto LABEL_21;
        }
      }

      v4 = (v5 - 1);
    }

    if (v5 < (v3 - 3) && *v4 == *v5)
    {
      ++v4;
      v5 += 2;
    }

    if (v5 < (v3 - 1) && *v4 == *v5)
    {
      v4 = (v4 + 2);
      ++v5;
    }

    if (v5 < v3 && *v4 == *v5)
    {
      v5 = (v5 + 1);
    }

    v11 = v5 - (a1 + 1);
LABEL_21:
    if (v11 != v2 - 1)
    {
      return 0;
    }
  }

  if (a2 < 0x20)
  {
    return 1;
  }

  v13 = 0x101010101010101 * *a1;
  v14 = a1 + v2;
  result = 1;
LABEL_25:
  v15 = 0;
  while (*&v14[v15] == v13)
  {
    v16 = v15 > 0x17;
    v15 += 8;
    if (v16)
    {
      v2 += 32;
      v14 += 32;
      if (v2 != a2)
      {
        goto LABEL_25;
      }

      return result;
    }
  }

  return 0;
}

unint64_t ZSTD_compressSeqStore_singleBlock(uint64_t a1, uint64_t *a2, uint64_t *a3, int *a4, uint64_t a5, unint64_t a6, void *a7, size_t a8, int a9, int a10)
{
  v47 = *MEMORY[0x1E69E9840];
  v45 = *a3;
  v46 = *(a3 + 2);
  if (a10)
  {
    v16 = *a2;
    v17 = a2[1] - *a2;
    if ((v17 & 0x7FFFFFFF8) != 0)
    {
      v18 = (v17 >> 3);
      while (1)
      {
        v19 = *(v16 + 4) == 0;
        v20 = *v16;
        v21 = *v16 - 1;
        v22 = *v16;
        if (v21 <= 2)
        {
          v23 = v21 + v19;
          if (v21 + v19 == 3)
          {
            v24 = *a3 - 1;
            v25 = *a4 - 1;
          }

          else
          {
            v24 = *(a3 + v23);
            v25 = a4[v23];
          }

          v26 = v20 - 1;
          if (v24 == v25)
          {
            break;
          }

          v22 = v25 + 3;
          *v16 = v25 + 3;
          v26 = v25 + 2;
          if (v25 == 0 || v25 >= 0xFFFFFFFE)
          {
            break;
          }
        }

        *(a3 + 4) = *a3;
        *a3 = v22 - 3;
        if (v21 <= 2)
        {
          v23 = v21 + v19;
          goto LABEL_17;
        }

        *(a4 + 1) = *a4;
        v27 = v20 - 3;
LABEL_31:
        *a4 = v27;
LABEL_32:
        v16 += 8;
        if (!--v18)
        {
          goto LABEL_33;
        }
      }

      v28 = v26 + v19;
      if (v28)
      {
        if (v28 == 3)
        {
          v29 = *a3;
          v30 = *a3 - 1;
        }

        else
        {
          v30 = *(a3 + v28);
          v29 = *a3;
        }

        if (v28 == 1)
        {
          v31 = 8;
        }

        else
        {
          v31 = 4;
        }

        v32 = *(a3 + v31);
        *(a3 + 1) = v29;
        *(a3 + 2) = v32;
        *a3 = v30;
        if (!v23)
        {
          goto LABEL_32;
        }
      }

      else
      {
LABEL_17:
        if (!v23)
        {
          goto LABEL_32;
        }
      }

      if (v23 == 3)
      {
        v33 = *a4;
        v27 = *a4 - 1;
      }

      else
      {
        v27 = a4[v23];
        v33 = *a4;
      }

      if (v23 == 1)
      {
        v34 = a4 + 2;
      }

      else
      {
        v34 = a4 + 1;
      }

      a4[2] = *v34;
      a4[1] = v33;
      goto LABEL_31;
    }
  }

LABEL_33:
  v35 = a6 - 3;
  if (a6 < 3)
  {
    goto LABEL_34;
  }

  v37 = ZSTD_entropyCompressSeqStore(a2, *(a1 + 3072), *(a1 + 3080), (a1 + 192), (a5 + 3), v35, a8, *(a1 + 3368), *(a1 + 8));
  v36 = v37;
  if (v37 > 0xFFFFFFFFFFFFFF88)
  {
    goto LABEL_42;
  }

  if (v37 <= 0x18 && !*(a1 + 816) && ZSTD_isRLE(a7, a8))
  {
    v36 = 1;
  }

  if (*(a1 + 784))
  {
    ZSTD_copyBlockSequences(a1);
    v36 = 0;
    *(a1 + 3072) = vextq_s8(*(a1 + 3072), *(a1 + 3072), 8uLL);
    goto LABEL_42;
  }

  if (v36 == 1)
  {
    if (a6 == 3)
    {
      goto LABEL_34;
    }

    v41 = *a7;
    v42 = a9 + 8 * a8 + 2;
    *a5 = v42;
    *(a5 + 2) = BYTE2(v42);
    *(a5 + 3) = v41;
    *a3 = v45;
    *(a3 + 2) = v46;
    v36 = 4;
  }

  else
  {
    if (!v36)
    {
      v36 = a8 + 3;
      if (a8 + 3 <= a6)
      {
        v40 = a9 + 8 * a8;
        *a5 = v40;
        *(a5 + 2) = BYTE2(v40);
        memcpy((a5 + 3), a7, a8);
        if (v36 > 0xFFFFFFFFFFFFFF88)
        {
          goto LABEL_42;
        }

        *a3 = v45;
        *(a3 + 2) = v46;
        goto LABEL_51;
      }

LABEL_34:
      v36 = -70;
      goto LABEL_42;
    }

    *(a1 + 3072) = vextq_s8(*(a1 + 3072), *(a1 + 3072), 8uLL);
    v43 = a9 + 8 * v36 + 4;
    *a5 = v43;
    *(a5 + 2) = BYTE2(v43);
    v36 += 3;
  }

LABEL_51:
  v44 = *(a1 + 3072);
  if (*(v44 + 5604) == 2)
  {
    *(v44 + 5604) = 1;
  }

LABEL_42:
  v38 = *MEMORY[0x1E69E9840];
  return v36;
}

uint64_t ZSTD_deriveSeqStoreChunk(uint64_t a1, uint64_t *a2, unint64_t a3, unint64_t a4)
{
  v8 = a2[3];
  *a1 = *a2;
  v9 = *(a2 + 1);
  v10 = *(a2 + 2);
  v11 = *(a2 + 4);
  *(a1 + 48) = *(a2 + 3);
  *(a1 + 64) = v11;
  *(a1 + 16) = v9;
  *(a1 + 32) = v10;
  if (a3)
  {
    *(a1 + 8) = *a2 + 8 * a3;
    v12 = ZSTD_countSeqStoreLiteralsBytes(a1);
  }

  else
  {
    v12 = 0;
  }

  if (*(a2 + 18))
  {
    v13 = *(a2 + 19);
    if (v13 < a3 || v13 > a4)
    {
      *(a1 + 72) = 0;
    }

    else
    {
      *(a1 + 76) -= a3;
    }
  }

  *a1 = *a2 + 8 * a3;
  v14 = *a2;
  *(a1 + 8) = *a2 + 8 * a4;
  result = ZSTD_countSeqStoreLiteralsBytes(a1);
  v16 = *(a1 + 16) + v12;
  if (a4 == (a2[1] - v14) >> 3)
  {
    v17 = v8;
  }

  else
  {
    v17 = v16 + result;
  }

  *(a1 + 16) = v16;
  *(a1 + 24) = v17;
  v18 = *(a1 + 40) + a3;
  *(a1 + 32) += a3;
  *(a1 + 40) = v18;
  *(a1 + 48) += a3;
  return result;
}

uint64_t ZSTD_countSeqStoreLiteralsBytes(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1 - *a1;
  if (v1 == *a1)
  {
    return 0;
  }

  v3 = 0;
  v4 = v2 >> 3;
  v5 = *(a1 + 76);
  if (v4 <= 1)
  {
    v4 = 1;
  }

  v6 = (*a1 + 4);
  do
  {
    v7 = *v6;
    v6 += 4;
    v3 += v7;
    if (!v5 && *(a1 + 72) == 1)
    {
      v3 += 0x10000;
    }

    --v5;
    --v4;
  }

  while (v4);
  return v3;
}

unint64_t ZSTD_deriveBlockSplitsHelper(unint64_t result, unint64_t a2, unint64_t a3, void *a4, uint64_t *a5)
{
  if (a3 - a2 >= 0x12C)
  {
    v8 = a2;
    v9 = result;
    v10 = *(result + 8);
    do
    {
      if (v10 > 0xC3)
      {
        break;
      }

      v11 = (v8 + a3) >> 1;
      ZSTD_deriveSeqStoreChunk((a4 + 446), a5, v8, a3);
      ZSTD_deriveSeqStoreChunk((a4 + 456), a5, v8, v11);
      ZSTD_deriveSeqStoreChunk((a4 + 466), a5, v11, a3);
      v12 = ZSTD_buildEntropyStatisticsAndEstimateSubBlockSize(a4 + 446, a4);
      v13 = ZSTD_buildEntropyStatisticsAndEstimateSubBlockSize(a4 + 456, a4);
      result = ZSTD_buildEntropyStatisticsAndEstimateSubBlockSize(a4 + 466, a4);
      if (v12 > 0xFFFFFFFFFFFFFF88)
      {
        break;
      }

      if (v13 > 0xFFFFFFFFFFFFFF88)
      {
        break;
      }

      if (result > 0xFFFFFFFFFFFFFF88)
      {
        break;
      }

      if (result + v13 >= v12)
      {
        break;
      }

      result = ZSTD_deriveBlockSplitsHelper(v9, v8, (v8 + a3) >> 1, a4, a5);
      v14 = v9[1];
      *(*v9 + 4 * v14) = v11;
      v10 = v14 + 1;
      v9[1] = v14 + 1;
      v8 = (v8 + a3) >> 1;
    }

    while (a3 - v11 > 0x12B);
  }

  return result;
}

unint64_t ZSTD_buildEntropyStatisticsAndEstimateSubBlockSize(void *a1, uint64_t a2)
{
  result = ZSTD_buildBlockEntropyStats(a1, *(a2 + 3072), *(a2 + 3080), (a2 + 192), a2 + 4752, *(a2 + 3368), 0x22D8uLL);
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    v5 = a1[2];
    v6 = a1[3] - v5;
    v7 = a1[5];
    v8 = a1[6];
    v9 = a1[4];
    v10 = (a1[1] - *a1) >> 3;
    v11 = *(a2 + 3080);
    v12 = *(a2 + 3368);
    v13 = *(a2 + 4752);
    v23 = 255;
    v14 = 3;
    if (v6 > 0x3FF)
    {
      v14 = 4;
    }

    if ((v6 & 0xFFFFFFFFFFFFC000) != 0)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = v14;
    }

    if ((v13 - 2) < 2)
    {
      if (HIST_count_wksp(v12, &v23, v5, v6, v12, 0x22D8uLL) <= 0xFFFFFFFFFFFFFF88)
      {
        v16 = HUF_estimateCompressedSize(v11, v12, v23);
        if (v13 == 2)
        {
          v16 += *(a2 + 4888);
        }

        v17 = v16 + 6;
        if (v6 < 0x100)
        {
          v17 = v16;
        }

        v6 = v15 + v17;
      }
    }

    else if (v13)
    {
      v6 = v13 == 1;
    }

    v18 = ZSTD_estimateBlockSize_symbolType(*(a2 + 4900), v8, v10, 0x1Fu, v11 + 1032, 0, OF_defaultNorm_0, 5, v12);
    v19 = ZSTD_estimateBlockSize_symbolType(*(a2 + 4896), v9, v10, 0x23u, v11 + 2144, &LL_bits_3, LL_defaultNorm_0, 6, v12);
    v20 = ZSTD_estimateBlockSize_symbolType(*(a2 + 4904), v7, v10, 0x34u, v11 + 1418, &ML_bits_3, ML_defaultNorm_0, 6, v12);
    v21 = 2;
    if (v10 > 0x7F)
    {
      v21 = 3;
    }

    v22 = 3;
    if (v10 >> 8 > 0x7E)
    {
      v22 = 4;
    }

    return v22 + v21 + v6 + v18 + v19 + v20 + *(a2 + 5048);
  }

  return result;
}

unint64_t ZSTD_estimateBlockSize_symbolType(int a1, unsigned __int8 *a2, int64_t a3, unsigned int a4, unsigned __int16 *a5, uint64_t a6, unsigned __int16 *a7, char a8, unsigned int *a9)
{
  v14 = a2;
  v20 = a4;
  HIST_countFast_wksp(a9, &v20, a2, a3, a9, 0x22D8uLL);
  if (a1 == 1)
  {
    goto LABEL_8;
  }

  if (!a1)
  {
    v16 = ZSTD_crossEntropyCost(a7, a8, a9, v20);
    goto LABEL_6;
  }

  if ((a1 & 0xFFFFFFFE) != 2)
  {
LABEL_8:
    v16 = 0;
    goto LABEL_9;
  }

  v16 = ZSTD_fseBitCost(a5, a9, v20);
LABEL_6:
  if (v16 > 0xFFFFFFFFFFFFFF88)
  {
    return 10 * a3;
  }

LABEL_9:
  if (a3 >= 1)
  {
    v18 = &v14[a3];
    do
    {
      v19 = v14;
      if (a6)
      {
        v19 = (a6 + *v14);
      }

      v16 += *v19;
      ++v14;
    }

    while (v14 < v18);
  }

  return v16 >> 3;
}

unint64_t ZSTD_entropyCompressSeqStore(uint64_t *a1, char *__src, unsigned __int16 *__dst, _DWORD *a4, char *a5, size_t a6, size_t a7, uint64_t a8, int a9)
{
  v14 = a4[7];
  v15 = a1[1];
  v16 = a1[2];
  v17 = a1[3] - v16;
  v18 = (a8 + 212);
  v44 = *a1;
  v19 = v15 - *a1;
  v20 = v19 >> 3;
  v21 = v15 == *a1 || v17 / v20 > 0x13;
  v22 = a4[18];
  v42 = a4[1] > 0x39u;
  v43 = a8;
  if (v22 == 1)
  {
    goto LABEL_9;
  }

  if (v22 == 2)
  {
    v23 = 1;
    goto LABEL_10;
  }

  if (v14 != 1)
  {
LABEL_9:
    v23 = 0;
  }

  else
  {
    v23 = a4[6] != 0;
  }

LABEL_10:
  v40 = a1[4];
  v41 = a1[6];
  v39 = a1[5];
  result = ZSTD_compressLiterals(__src, __dst, v14, v23, a5, a6, v16, v17, v18, 0x2204uLL, a9, v21);
  if (result > 0xFFFFFFFFFFFFFF88)
  {
    goto LABEL_28;
  }

  if ((a6 - result) < 4)
  {
    if (a7 <= a6)
    {
      return 0;
    }

    else
    {
      return -70;
    }
  }

  v26 = &a5[result];
  if (v20 > 0x7F)
  {
    if (v20 >> 8 > 0x7E)
    {
      *v26 = -1;
      *(v26 + 1) = (v19 >> 3) - 32512;
      v27 = v26 + 3;
    }

    else
    {
      *v26 = BYTE1(v20) | 0x80;
      v26[1] = v19 >> 3;
      v27 = v26 + 2;
    }
  }

  else
  {
    *v26 = v19 >> 3;
    v27 = v26 + 1;
  }

  if (v15 == v44)
  {
    v36 = v27;
    memcpy(__dst + 1032, __src + 2064, 0xDE0uLL);
    v35 = v36;
  }

  else
  {
    v28 = a1;
    v29 = v27 + 1;
    v30 = v19 >> 3;
    v31 = v20;
    v32 = v27;
    ZSTD_buildSequencesStatistics(v28, v31, (__src + 2064), (__dst + 1032), v27 + 1, &a5[a6], v14, v43, &v47, v18, 0x2204uLL);
    result = v50;
    if (v50 > 0xFFFFFFFFFFFFFF88)
    {
      goto LABEL_28;
    }

    v33 = v51;
    *v32 = (v47 << 6) + 16 * v48 + 4 * v49;
    v34 = &v29[result];
    result = ZSTD_encodeSequences(&v29[result], &a5[a6] - &v29[result], __dst + 1418, v39, __dst + 1032, v41, __dst + 2144, v40, v44, v30, v42);
    if (result > 0xFFFFFFFFFFFFFF88)
    {
      goto LABEL_28;
    }

    if (v33 && result + v33 < 4)
    {
      return 0;
    }

    v35 = &v34[result];
  }

  result = v35 - a5;
  if (v35 == a5)
  {
    return result;
  }

LABEL_28:
  if (a7 <= a6 && result == -70)
  {
    return 0;
  }

  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    v37 = a4[7];
    if (v37 <= 7)
    {
      v38 = 6;
    }

    else
    {
      v38 = v37 - 1;
    }

    if (result >= a7 - (a7 >> v38) - 2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t ZSTD_copyBlockSequences(uint64_t result)
{
  v1 = *(result + 824);
  v2 = *(result + 832);
  v3 = *(result + 848);
  v4 = *(result + 840);
  v5 = *(result + 800);
  v6 = *(result + 792) + 16 * v5;
  v7 = *(result + 3072);
  v30 = *(v7 + 5616);
  v31 = *(v7 + 5624);
  v9 = v2 - v1;
  v8 = v9 == 0;
  v10 = v9 >> 3;
  v11 = 0;
  if (!v8)
  {
    v12 = *(result + 900);
    v13 = v30;
    v14 = HIDWORD(v30);
    if (v10 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v10;
    }

    v16 = (v1 + 6);
    v17 = v31;
    v18 = v6 + 8;
    v19 = v15;
    while (1)
    {
      v20 = *(v16 - 3);
      v21 = *(v16 - 1);
      v22 = *v16;
      *(v18 - 4) = v21;
      *v18 = (v22 + 3);
      if (v12)
      {
        goto LABEL_7;
      }

      v26 = *(result + 896);
      if (v26 == 2)
      {
        break;
      }

      v23 = v21;
      if (v26 == 1)
      {
        v23 = v21 | 0x10000;
        *(v18 - 4) = v21 | 0x10000;
      }

LABEL_8:
      if (v20 >= 4)
      {
        v25 = v20 - 3;
        *(v18 - 8) = v20 - 3;
        goto LABEL_30;
      }

      *(v18 + 4) = v20;
      if (v23)
      {
        v24 = --v20;
        goto LABEL_19;
      }

      if (v20 != 3)
      {
        v24 = v20 - 1;
LABEL_19:
        *(v18 - 8) = *(&v30 + v20);
        if (v24 > 2)
        {
          v25 = -3;
          goto LABEL_30;
        }

        goto LABEL_21;
      }

      *(v18 - 8) = v13 - 1;
      v24 = 2;
LABEL_21:
      if (v21)
      {
        v27 = v24;
      }

      else
      {
        v27 = v24 + 1;
      }

      switch(v27)
      {
        case 0u:
          goto LABEL_31;
        case 3u:
          v25 = v13 - 1;
          break;
        case 1u:
          v14 = v17;
          break;
        default:
          v25 = *(&v30 + v27);
          break;
      }

LABEL_30:
      HIDWORD(v30) = v13;
      v31 = v14;
      v17 = v14;
      v14 = v13;
      v13 = v25;
      LODWORD(v30) = v25;
LABEL_31:
      v16 += 4;
      v11 += v23;
      --v12;
      v18 += 16;
      if (!--v19)
      {
        goto LABEL_34;
      }
    }

    *v18 = v22 + 65539;
LABEL_7:
    v23 = v21;
    goto LABEL_8;
  }

  v15 = 0;
LABEL_34:
  v28 = v3 - (v11 + v4);
  v29 = v6 + 16 * v15;
  *v29 = 0;
  *(v29 + 4) = v28;
  *(v29 + 8) = 0;
  *(result + 800) = v10 + v5 + 1;
  return result;
}

unint64_t ZSTD_compress_insertDictionary(uint64_t a1, uint32x2_t *a2, unint64_t a3, void *a4, _DWORD *a5, _DWORD *a6, unint64_t a7, int a8, int a9, _WORD *a10)
{
  if (a6 && a7 > 7)
  {
    *(a1 + 5624) = 8;
    *(a1 + 5616) = 0x400000001;
    *(a1 + 2056) = 0;
    *(a1 + 5604) = 0;
    *(a1 + 5608) = 0;
    if (a8 == 1)
    {
LABEL_4:
      ZSTD_loadDictionaryContent(a2, a3, a4, a5, a6, a7, a9);
      return 0;
    }

    if (*a6 != -332356553)
    {
      if (a8 == 2)
      {
        return -32;
      }

      if (!a8)
      {
        goto LABEL_4;
      }
    }

    if (a5[10])
    {
      v16 = 0;
    }

    else
    {
      v16 = a6[1];
    }

    result = ZSTD_loadCEntropy(a1, a10, a6, a7);
    if (result <= 0xFFFFFFFFFFFFFF88)
    {
      ZSTD_loadDictionaryContent(a2, 0, a4, a5, a6 + result, a7 - result, a9);
      return v16;
    }
  }

  else if (a8 == 2)
  {
    return -32;
  }

  else
  {
    return 0;
  }

  return result;
}

uint32x2_t *ZSTD_loadDictionaryContent(uint32x2_t *result, unint64_t a2, void *a3, _DWORD *a4, unint64_t a5, unint64_t a6, int a7)
{
  v10 = result;
  v11 = (a5 + a6);
  v12 = a4 + 24;
  if (a2)
  {
    v13 = a4[24] == 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v15 = 3758096383;
  if (a6 < 0xDFFFFFFF)
  {
    v15 = a6;
  }

  if (!(a6 >> 29))
  {
    v15 = a6;
  }

  if (a6 >> 29 <= 6)
  {
    v16 = a5;
  }

  else
  {
    v16 = (v11 - 3758096383);
  }

  if (v15)
  {
    if (*result == v16)
    {
      v17 = result[2];
      LODWORD(v18) = result[3].i32[0];
      v19 = result[3].u32[1];
    }

    else
    {
      v17 = result[1];
      v18 = *result - *&v17;
      v19 = result[3].u32[0];
      result[3].i32[0] = v18;
      result[3].i32[1] = v19;
      result[1] = (v16 - v18);
      result[2] = v17;
      if (v18 - v19 <= 7)
      {
        result[3].i32[1] = v18;
        v19 = v18;
      }
    }

    *result = (v16 + v15);
    if (v16 + v15 > *&v17 + v19 && *&v17 + v18 > v16)
    {
      v20 = v16 + v15 - *&v17;
      if (v20 > v18)
      {
        LODWORD(v20) = v18;
      }

      result[3].i32[1] = v20;
    }
  }

  v21 = a4[12];
  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = v11 - result[1].i32[0];
  }

  result[5].i32[0] = v22;
  result[15].i32[0] = a4[37];
  if (!v14)
  {
    if (v15 < 9)
    {
      return result;
    }

    result = ZSTD_overflowCorrectIfNeeded(result, a3, a4, v16, a5 + a6);
    goto LABEL_45;
  }

  if (v15)
  {
    if (*a2 == v16)
    {
      v23 = *(a2 + 16);
      LODWORD(v24) = *(a2 + 24);
      v25 = *(a2 + 28);
    }

    else
    {
      v23 = *(a2 + 8);
      v24 = *a2 - v23;
      v25 = *(a2 + 24);
      *(a2 + 24) = v24;
      *(a2 + 28) = v25;
      *(a2 + 8) = v16 - v24;
      *(a2 + 16) = v23;
      if (v24 - v25 <= 7)
      {
        *(a2 + 28) = v24;
        v25 = v24;
      }
    }

    *a2 = v16 + v15;
    if (v16 + v15 > v23 + v25 && v23 + v24 > v16)
    {
      v26 = v16 + v15 - v23;
      if (v26 > v24)
      {
        LODWORD(v26) = v24;
      }

      *(a2 + 28) = v26;
    }
  }

  if (v21)
  {
    v27 = 0;
  }

  else
  {
    v27 = v11 - *(a2 + 8);
  }

  *(a2 + 48) = v27;
  if (v15 >= 9)
  {
    ZSTD_overflowCorrectIfNeeded(result, a3, a4, v16, a5 + a6);
    result = ZSTD_ldm_fillHashTable(a2, v16, v11, v12);
LABEL_45:
    v28 = a4[7];
    if (v28 > 5)
    {
      if ((v28 - 6) < 4)
      {
        result = ZSTD_updateTree(v10, v11 - 8, v11);
      }
    }

    else if ((v28 - 3) >= 3)
    {
      if (v28 == 1)
      {
        result = ZSTD_fillHashTable(v10, v11, a7);
      }

      else if (v28 == 2)
      {
        result = ZSTD_fillDoubleHashTable(v10, v11, a7);
      }
    }

    else if (*(v10 + 124))
    {
      result = ZSTD_dedicatedDictSearch_lazy_loadDictionary(v10, v11 - 8);
    }

    else if (a4[36] == 1)
    {
      bzero(*(v10 + 56), 2 << a4[3]);
      result = ZSTD_row_update(v10, v11 - 8);
    }

    else
    {
      result = ZSTD_insertAndFindFirstIndex(v10, v11 - 1);
    }

    *(v10 + 44) = v11 - *(v10 + 8);
  }

  return result;
}

uint64_t COVER_sum(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  result = 0;
  v4 = a2;
  do
  {
    v5 = *a1++;
    result += v5;
    --v4;
  }

  while (v4);
  return result;
}

unint64_t COVER_warnOnSmallCorpus(unint64_t result, unint64_t a2, int a3)
{
  if (a3 >= 1 && a2 / result < 10.0)
  {
    v4 = MEMORY[0x1E69E9848];
    fprintf(*MEMORY[0x1E69E9848], "WARNING: The maximum dictionary size %u is too large compared to the source size %u! size(source)/size(dictionary) = %f, but it should be >= 10! This may lead to a subpar dictionary! We recommend training on sources at least 10x, and preferably 100x the size of the dictionary! \n", result, a2, a2 / result);
    v5 = *v4;

    return fflush(v5);
  }

  return result;
}

unint64_t COVER_computeEpochs(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = 10 * a3;
  if (a1 / a3 >= a4)
  {
    v5 = a1 / a3 / a4;
  }

  else
  {
    v5 = 1;
  }

  v6 = a2 / v5;
  if (v6 < v4)
  {
    if (v4 >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = v4;
    }

    v5 = a2 / v6;
  }

  return v5 | (v6 << 32);
}

uint64_t COVER_checkTotalCompressedSize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, const void *a7, unint64_t a8)
{
  v14 = 0;
  if (*(a1 + 16) >= 1.0)
  {
    v15 = 0;
  }

  else
  {
    v15 = a5;
  }

  v16 = a6 - v15;
  if (a6 > v15)
  {
    v14 = 0;
    v17 = (a2 + 8 * v15);
    do
    {
      v19 = *v17++;
      v18 = v19;
      if (v19 > v14)
      {
        v14 = v18;
      }

      --v16;
    }

    while (v16);
  }

  v20 = ZSTD_compressBound(v14);
  v21 = malloc_type_malloc(v20, 0x75D6DB12uLL);
  CCtx = ZSTD_createCCtx();
  CDict = ZSTD_createCDict(a7, a8, *(a1 + 32));
  v24 = CDict;
  v25 = -1;
  if (v21 && CCtx && CDict)
  {
    if (*(a1 + 16) >= 1.0)
    {
      v26 = 0;
    }

    else
    {
      v26 = a5;
    }

    v27 = a6 - v26;
    if (a6 <= v26)
    {
      v25 = a8;
    }

    else
    {
      v28 = (a2 + 8 * v26);
      v25 = a8;
      v29 = (a4 + 8 * v26);
      while (1)
      {
        v31 = *v29++;
        v30 = v31;
        v32 = *v28++;
        v33 = ZSTD_compress_usingCDict(CCtx, v21, v20, (a3 + v30), v32, v24);
        if (v33 > 0xFFFFFFFFFFFFFF88)
        {
          break;
        }

        v25 += v33;
        if (!--v27)
        {
          goto LABEL_22;
        }
      }

      v25 = v33;
    }
  }

LABEL_22:
  ZSTD_freeCCtx(CCtx);
  ZSTD_freeCDict(v24);
  if (v21)
  {
    free(v21);
  }

  return v25;
}

double COVER_best_init(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 80) = -1;
    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
  }

  return result;
}

uint64_t COVER_best_wait(uint64_t result)
{
  if (result && *(result + 8))
  {
      ;
    }
  }

  return result;
}

void COVER_best_destroy(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 8))
    {
        ;
      }
    }

    v1 = *(a1 + 16);
    if (v1)
    {
      free(v1);
    }
  }
}

uint64_t COVER_best_start(uint64_t result)
{
  if (result)
  {
    ++*(result + 8);
  }

  return result;
}

void *COVER_best_finish(void *result, _OWORD *a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    v4 = *(a3 + 8);
    v5 = *(a3 + 16);
    v6 = *a3;
    --result[1];
    if (v5 < result[10])
    {
      result = result[2];
      if (result)
      {
        if (v3[3] >= v4)
        {
LABEL_7:
          if (v6)
          {
            result = memcpy(result, v6, v4);
            v3[3] = v4;
            v9 = a2[1];
            v8 = a2[2];
            *(v3 + 2) = *a2;
            *(v3 + 3) = v9;
            *(v3 + 4) = v8;
            v3[10] = v5;
          }

          return result;
        }

        free(result);
      }

      result = malloc_type_malloc(v4, 0x1CC71555uLL);
      v3[2] = result;
      if (!result)
      {
        v3[10] = -1;
        v3[3] = 0;
        return result;
      }

      goto LABEL_7;
    }
  }

  return result;
}

uint64_t COVER_dictSelectionError@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = result;
  return result;
}

void COVER_selectDict(size_t size@<X1>, char *a2@<X0>, size_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int a6@<W5>, unint64_t a7@<X6>, unint64_t a8@<X7>, void *a9@<X8>, __int128 *a10, uint64_t a11)
{
  v18 = malloc_type_malloc(size, 0x100004077774924uLL);
  v19 = malloc_type_malloc(size, 0x100004077774924uLL);
  v20 = v19;
  if (!v18 || !v19)
  {
LABEL_13:
    free(v18);
    free(v20);
    *a9 = 0;
    a9[1] = 0;
    a9[2] = a3;
    return;
  }

  v36 = a7;
  LODWORD(v11) = *(a10 + 7);
  memcpy(v18, a2, a3);
  v21 = a4;
  v23 = ZDICT_finalizeDictionary(v18, size, a2, a3, a4, a5, a6, v22, *(a10 + 4), *(a10 + 10));
  if (ZDICT_isError(v23))
  {
    goto LABEL_15;
  }

  v24 = a10[1];
  v40 = *a10;
  v41 = v24;
  v42 = a10[2];
  v25 = COVER_checkTotalCompressedSize(&v40, a5, a4, a11, v36, a8, v18, v23);
  if (v25 >= 0xFFFFFFFFFFFFFF89)
  {
    v23 = v25;
LABEL_15:
    free(v18);
    free(v20);
    *a9 = 0;
    a9[1] = 0;
    a9[2] = v23;
    return;
  }

  if (*(a10 + 6))
  {
    v33 = v25;
    if (v23 >= 0x101)
    {
      v34 = v23;
      v35 = &a2[a3];
      v26 = (v11 / 100.0 + 1.0) * v25;
      v27 = 256;
      do
      {
        memcpy(v20, v18, v23);
        v21 = v21 & 0xFFFFFFFF00000000 | *(a10 + 10);
        a3 = ZDICT_finalizeDictionary(v20, size, &v35[-v27], v27, a4, a5, a6, v28, *(a10 + 4), v21);
        if (ZDICT_isError(a3))
        {
          goto LABEL_13;
        }

        v29 = a10[1];
        v40 = *a10;
        v41 = v29;
        v42 = a10[2];
        v30 = COVER_checkTotalCompressedSize(&v40, a5, a4, a11, v36, a8, v20, a3);
        v31 = v30;
        if (v30 >= 0xFFFFFFFFFFFFFF89)
        {
          free(v18);
          free(v20);
          *a9 = 0;
          a9[1] = 0;
          a9[2] = v31;
          return;
        }

        if (v26 >= v30)
        {
          *a9 = v20;
          a9[1] = a3;
          a9[2] = v30;
          v32 = v18;
          goto LABEL_18;
        }

        v27 = 2 * a3;
        v23 = v34;
      }

      while (v27 < v34);
    }

    *a9 = v18;
    a9[1] = v23;
    a9[2] = v33;
  }

  else
  {
    *a9 = v18;
    a9[1] = v23;
    a9[2] = v25;
  }

  v32 = v20;
LABEL_18:

  free(v32);
}

uint64_t HUF_writeCTable_wksp(_BYTE *a1, unint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6, unint64_t a7)
{
  v7 = -a6 & 3;
  v8 = a7 - v7;
  if (a7 >= v7)
  {
    v9 = a6 + v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  if (v8 < 0x2EC)
  {
    return -1;
  }

  if (a4 > 0xFF)
  {
    return -46;
  }

  *(v9 + 480) = 0;
  v14 = (a5 + 1);
  if (v14 >= 2)
  {
    v15 = 0;
    v16 = vdupq_n_s64(v14 - 2);
    v17 = -((v14 + 14) & 0x1FFFFFFF0);
    v18 = (v9 + 496);
    v19 = 496;
    do
    {
      v20 = vdupq_n_s64(v19 - 496);
      v21 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v20, xmmword_1C2BF7A50)));
      if (vuzp1_s8(vuzp1_s16(v21, *v16.i8), *v16.i8).u8[0])
      {
        *(v18 - 15) = a5 + v15;
      }

      if (vuzp1_s8(vuzp1_s16(v21, *&v16), *&v16).i8[1])
      {
        *(v18 - 14) = a5 - 1 + v15;
      }

      if (vuzp1_s8(vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v20, xmmword_1C2BF9460)))), *&v16).i8[2])
      {
        *(v18 - 13) = a5 - 2 + v15;
        *(v18 - 12) = a5 - 3 + v15;
      }

      v22 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v20, xmmword_1C2BF9450)));
      if (vuzp1_s8(*&v16, vuzp1_s16(v22, *&v16)).i32[1])
      {
        *(v18 - 11) = a5 - 4 + v15;
      }

      if (vuzp1_s8(*&v16, vuzp1_s16(v22, *&v16)).i8[5])
      {
        *(v18 - 10) = a5 - 5 + v15;
      }

      if (vuzp1_s8(*&v16, vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v20, xmmword_1C2BF9440))))).i8[6])
      {
        *(v18 - 9) = a5 - 6 + v15;
        *(v18 - 8) = a5 - 7 + v15;
      }

      v23 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v20, xmmword_1C2BF9430)));
      if (vuzp1_s8(vuzp1_s16(v23, *v16.i8), *v16.i8).u8[0])
      {
        *(v18 - 7) = a5 - 8 + v15;
      }

      if (vuzp1_s8(vuzp1_s16(v23, *&v16), *&v16).i8[1])
      {
        *(v18 - 6) = a5 - 9 + v15;
      }

      if (vuzp1_s8(vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v20, xmmword_1C2BF9420)))), *&v16).i8[2])
      {
        *(v18 - 5) = a5 - 10 + v15;
        *(v18 - 4) = a5 - 11 + v15;
      }

      v24 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v20, xmmword_1C2BF9410)));
      if (vuzp1_s8(*&v16, vuzp1_s16(v24, *&v16)).i32[1])
      {
        *(v18 - 3) = a5 - 12 + v15;
      }

      if (vuzp1_s8(*&v16, vuzp1_s16(v24, *&v16)).i8[5])
      {
        *(v18 - 2) = a5 - 13 + v15;
      }

      if (vuzp1_s8(*&v16, vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v20, xmmword_1C2BF9400))))).i8[6])
      {
        *(v18 - 1) = a5 - 14 + v15;
        *v18 = a5 - 15 + v15;
      }

      v19 += 16;
      v15 -= 16;
      v18 += 16;
    }

    while (v17 != v15);
  }

  if (a4)
  {
    v25 = (a3 + 8);
    v26 = (v9 + 493);
    v27 = a4;
    do
    {
      v28 = *v25;
      v25 += 8;
      *v26++ = *(v9 + 480 + v28);
      --v27;
    }

    while (v27);
  }

  if (!a2)
  {
    return -70;
  }

  v40 = 12;
  if ((-v9 & 3) != 0)
  {
    return -1;
  }

  v29 = a1 + 1;
  if (a4 >= 2)
  {
    v31 = HIST_count_simple((v9 + 400), &v40, (v9 + 493), a4);
    if (v31 != a4 && v31 != 1)
    {
      v32 = FSE_optimalTableLog(6u, a4, v40);
      v33 = FSE_normalizeCount((v9 + 452), v32, (v9 + 400), a4, v40, 0);
      if (v33 > 0xFFFFFFFFFFFFFF88)
      {
        return v33;
      }

      v10 = FSE_writeNCount(a1 + 1, a2 - 1, v9 + 452, v40, v32);
      if (v10 > 0xFFFFFFFFFFFFFF88)
      {
        return v10;
      }

      v33 = FSE_buildCTable_wksp(v9, (v9 + 452), v40, v32, (v9 + 236), 0xA4uLL);
      if (v33 > 0xFFFFFFFFFFFFFF88)
      {
        return v33;
      }

      v34 = &v29[v10];
      v35 = FSE_compress_usingCTable(&v29[v10], a2 - 1 - v10, v9 + 493, a4, v9);
      v10 = v35;
      if (v35 > 0xFFFFFFFFFFFFFF88)
      {
        return v10;
      }

      if (v35)
      {
        v10 = &v34[v35] - v29;
        if (v10 > 0xFFFFFFFFFFFFFF88)
        {
          return v10;
        }

        if (v10 >= 2 && v10 < a4 >> 1)
        {
          *a1 = v10++;
          return v10;
        }
      }
    }
  }

  if (a4 > 0x80)
  {
    return -1;
  }

  v10 = ((a4 + 1) >> 1) + 1;
  if (v10 > a2)
  {
    return -70;
  }

  *a1 = a4 + 127;
  *(v9 + 493 + a4) = 0;
  if (a4)
  {
    v36 = 0;
    v37 = (v9 + 494);
    do
    {
      v38 = *(v37 - 1);
      v39 = *v37;
      v37 += 2;
      *v29++ = v39 + 16 * v38;
      v36 += 2;
    }

    while (v36 < a4);
  }

  return v10;
}

uint64_t HUF_writeCTable(_BYTE *a1, unint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v13 = *MEMORY[0x1E69E9840];
  bzero(v12, 0x2ECuLL);
  result = HUF_writeCTable_wksp(a1, a2, a3, a4, a5, v12, 0x2ECuLL);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t HUF_readCTable(void *a1, _DWORD *a2, char *a3, unint64_t a4, _DWORD *a5)
{
  v45 = *MEMORY[0x1E69E9840];
  memset(v44, 0, 256);
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  v33 = 0;
  result = HUF_readStats(v44, 0x100uLL, v42, &v33, &v33 + 1, a3, a4);
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    *a5 = LODWORD(v42[0]) != 0;
    v9 = HIDWORD(v33);
    if (HIDWORD(v33) <= 0xC)
    {
      v10 = v33;
      if (v33 <= *a2 + 1)
      {
        v11 = a1 + 1;
        *a1 = HIDWORD(v33);
        if (v9)
        {
          v12 = 0;
          v13 = 0;
          do
          {
            v14 = *(v42 + v12 + 1) << v12;
            *(v42 + v12 + 1) = v13;
            v13 += v14;
            ++v12;
          }

          while (v9 != v12);
        }

        if (v10)
        {
          v15 = v44;
          v16 = v10;
          v17 = a1 + 1;
          do
          {
            v18 = *v15++;
            v19 = v9 + 1 - v18;
            if (v18)
            {
              v20 = v19;
            }

            else
            {
              v20 = 0;
            }

            *v17++ = v20;
            --v16;
          }

          while (v16);
          v38 = 0;
          v39 = 0;
          v41 = 0;
          v40 = 0;
          v34 = 0;
          v35 = 0;
          v37 = 0;
          v21 = v10;
          v22 = (a1 + 1);
          v36 = 0;
          do
          {
            v23 = *v22;
            v22 += 8;
            ++*(&v38 + v23);
            --v21;
          }

          while (v21);
        }

        else
        {
          v38 = 0;
          v39 = 0;
          v41 = 0;
          v40 = 0;
          v34 = 0;
          v35 = 0;
          v37 = 0;
          v36 = 0;
        }

        v24 = &v34 + v9;
        v24[1] = 0;
        if (v9)
        {
          v25 = 0;
          v26 = &v38 + v9;
          do
          {
            *v24-- = v25;
            v27 = *v26--;
            v25 = (v27 + v25) >> 1;
            LODWORD(v9) = v9 - 1;
          }

          while (v9);
        }

        if (v10)
        {
          v28 = v10;
          do
          {
            v29 = *v11;
            v30 = *v11;
            v31 = *(&v34 + v30);
            *(&v34 + v30) = v31 + 1;
            if (v30)
            {
              *v11 = (v31 << -v30) | v29;
            }

            ++v11;
            --v28;
          }

          while (v28);
        }

        *a2 = v10 - 1;
      }

      else
      {
        result = -48;
      }
    }

    else
    {
      result = -44;
    }
  }

  v32 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HUF_buildCTable_wksp(void *a1, unsigned int *a2, unsigned int a3, unsigned int a4, uint64_t a5, unint64_t a6)
{
  v130 = *MEMORY[0x1E69E9840];
  v6 = -a5 & 3;
  v7 = a6 - v6;
  if (a6 >= v6)
  {
    v8 = (a5 + v6);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  if (v7 >> 8 < 0x13)
  {
    result = -66;
    goto LABEL_115;
  }

  if (a3 > 0xFF)
  {
    result = -46;
    goto LABEL_115;
  }

  v14 = v8 + 2;
  v15 = v8 + 1024;
  v16 = a3 + 1;
  bzero(v8, 0x1300uLL);
  v17 = a2;
  v18 = a3 + 1;
  do
  {
    v20 = *v17++;
    v19 = v20;
    v21 = (__clz(v20) ^ 0x1F) + 158;
    if (v20 >= 0xA5)
    {
      v19 = v21;
    }

    ++LOWORD(v15[v19]);
    --v18;
  }

  while (v18);
  v22 = 0;
  v23 = *(v8 + 2430);
  do
  {
    v24 = &v8[v22];
    v23 += LOWORD(v8[v22 + 1214]);
    *(v24 + 2428) = v23;
    *(v24 + 2429) = v23;
    --v22;
  }

  while (v22 != -191);
  v25 = 0;
  do
  {
    v26 = a2[v25];
    v27 = (__clz(v26) ^ 0x1F) + 158;
    if (v26 < 0xA5)
    {
      v27 = a2[v25];
    }

    v28 = &v15[v27 + 1];
    v29 = *(v28 + 1);
    *(v28 + 1) = v29 + 1;
    v30 = &v14[2 * v29];
    *v30 = v26;
    *(v30 + 6) = v25++;
  }

  while (v16 != v25);
  v31 = 0x3FFFFFFFFFFFFFE6;
  do
  {
    v32 = LOWORD(v8[v31 + 1215]);
    v33 = HIWORD(v8[v31 + 1215]) - v32;
    if (v33 >= 2)
    {
      HUF_simpleQuickSort(&v14[2 * v32], 0, v33 - 1);
    }

    ++v31;
  }

  while (v31 * 4);
  v34 = 0;
  v35 = (a3 << 32) + 0x100000000;
  v36 = &v8[2 * a3 + 3];
  do
  {
    v37 = *(v36 - 1);
    --v34;
    v35 -= 0x100000000;
    v36 -= 4;
  }

  while (!v37);
  if (a4)
  {
    v38 = a4;
  }

  else
  {
    v38 = 11;
  }

  v39 = a3 + v34 + 1;
  v40 = a3 + v34 + 256;
  v8[514] = *(v36 - 1) + v37;
  *v36 = 256;
  v36[4] = 256;
  v41 = a3 + v34 + 2;
  if (v39 >= 2)
  {
    v42 = 0;
    v43 = a3 - 1 + v34;
    if (v40 <= 257)
    {
      v44 = 257;
    }

    else
    {
      v44 = v40;
    }

    v45 = vdupq_n_s64(v44 - 257);
    v46 = v8 + 522;
    v47 = (v44 - 253) & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v48 = vdupq_n_s64(v42);
      v49 = vmovn_s64(vcgeq_u64(v45, vorrq_s8(v48, xmmword_1C2BF7A50)));
      if (vuzp1_s16(v49, *v45.i8).u8[0])
      {
        *(v46 - 6) = 0x40000000;
      }

      if (vuzp1_s16(v49, *&v45).i8[2])
      {
        *(v46 - 4) = 0x40000000;
      }

      if (vuzp1_s16(*&v45, vmovn_s64(vcgeq_u64(v45, vorrq_s8(v48, xmmword_1C2BF9460)))).i32[1])
      {
        *(v46 - 2) = 0x40000000;
        *v46 = 0x40000000;
      }

      v42 += 4;
      v46 += 8;
    }

    while (v47 != v42);
    *v8 = 0x80000000;
    v50 = 257;
    if (v40 <= 257)
    {
      v51 = 257;
    }

    else
    {
      v51 = v40;
    }

    v52 = v51 - 256;
    v53 = v8 + 516;
    v54 = 256;
    do
    {
      v55 = v14[2 * v43];
      v56 = v14[2 * v54];
      v57 = v55 >= v56;
      v58 = v55 < v56;
      if (v57)
      {
        v59 = v54 + 1;
      }

      else
      {
        v59 = v54;
      }

      if (!v57)
      {
        v54 = v43;
      }

      v60 = v43 - v58;
      v61 = v14[2 * v60];
      v62 = v14[2 * v59];
      v63 = v61 >= v62;
      if (v61 < v62)
      {
        v64 = v60;
      }

      else
      {
        v64 = v59;
      }

      v65 = &v14[2 * v54];
      v66 = &v14[2 * v64];
      v67 = !v63;
      *v53 = *v66 + *v65;
      v53 += 2;
      if (v63)
      {
        v54 = v59 + 1;
      }

      else
      {
        v54 = v59;
      }

      v43 = v60 - v67;
      *(v66 + 2) = v50;
      *(v65 + 2) = v50++;
      --v52;
    }

    while (v52);
    HIBYTE(v14[2 * v40 + 1]) = 0;
    v68 = &v8[2 * a3 + 513 + 2 * v34] + 3;
    do
    {
      *v68 = HIBYTE(v14[2 * *(v68 - 3) + 1]) + 1;
      v68 -= 8;
      --v40;
    }

    while (v40 > 256);
  }

  else
  {
    *v8 = 0x80000000;
    HIBYTE(v14[2 * v40 + 1]) = 0;
  }

  if ((v39 & 0x8000000000000000) == 0)
  {
    v69 = v41;
    v70 = v8 + 15;
    do
    {
      *v70 = HIBYTE(v14[2 * *(v70 - 3) + 1]) + 1;
      v70 += 8;
      --v69;
    }

    while (v69);
  }

  v71 = HIBYTE(v14[2 * v39 + 1]);
  v72 = v71;
  v73 = v71 - v38;
  if (v71 > v38)
  {
    v72 = v38;
    v74 = *(v14 + (v35 >> 29) + 7);
    if (v38 >= v74)
    {
      v75 = 0;
      v79 = v35 >> 32;
      LODWORD(v34) = a3 + v34 + 1;
    }

    else
    {
      v75 = 0;
      v34 = a3 + v34 + 1;
      v76 = v34 << 32;
      v77 = &v8[2 * v34 + 3] + 3;
      do
      {
        v75 += (1 << v73) + (-1 << (v71 - v74));
        *v77 = v38;
        v78 = *(v77 - 8);
        v77 -= 8;
        LOBYTE(v74) = v78;
        v76 -= 0x100000000;
        LODWORD(v34) = v34 - 1;
      }

      while (v38 < v78);
      v79 = v76 >> 32;
    }

    v80 = v34 + 1;
    v81 = v79 + 1;
    v82 = &v8[2 * v79 + 3] + 3;
    do
    {
      v83 = *v82;
      v82 -= 8;
      --v80;
      --v81;
    }

    while (v38 == v83);
    v84 = v75 >> v73;
    v127 = 0xF0F0F0F0F0F0F0F0;
    *&v85 = 0xF0F0F0F0F0F0F0F0;
    *(&v85 + 1) = 0xF0F0F0F0F0F0F0F0;
    v125 = v85;
    v126 = v85;
    v124 = v85;
    if ((v81 & 0x8000000000000000) == 0)
    {
      v86 = &v8[2 * v80 + 3] + 3;
      v87 = v38;
      do
      {
        v89 = *v86;
        v86 -= 8;
        v88 = v89;
        if (v87 <= v89)
        {
          v90 = v80;
        }

        else
        {
          *(&v124 + v38 - v88) = v80;
          v90 = v80;
          v87 = v88;
        }

        --v80;
      }

      while (v90 > 0);
    }

    if (v84 >= 1)
    {
      do
      {
        v91 = __clz(v84);
        if (v91 == 31)
        {
LABEL_85:
          v92 = 1;
        }

        else
        {
          v92 = 32 - v91;
          while (1)
          {
            v93 = *(&v124 + v92);
            v94 = v92 - 1;
            if (v93 != -252645136)
            {
              v95 = *(&v124 + v94);
              if (v95 == -252645136 || v14[2 * v93] <= (2 * v14[2 * v95]))
              {
                break;
              }
            }

            --v92;
            if ((v94 & 0xFFFFFFFE) == 0)
            {
              goto LABEL_85;
            }
          }

          if (v92 > 0xC)
          {
            goto LABEL_90;
          }
        }

        do
        {
          if (*(&v124 + v92) != -252645136)
          {
            break;
          }

          ++v92;
        }

        while (v92 != 13);
LABEL_90:
        v96 = v92 - 1;
        v97 = *(&v124 + v92);
        v98 = *(&v124 + (v92 - 1));
        ++HIBYTE(v14[2 * v97 + 1]);
        if (v98 == -252645136)
        {
          v99 = v97;
        }

        else
        {
          v99 = v98;
        }

        *(&v124 + v96) = v99;
        v100 = -252645136;
        if (v97)
        {
          v101 = v97 - 1;
          if (v38 - v92 == HIBYTE(v14[2 * v101 + 1]))
          {
            v100 = v101;
          }

          else
          {
            v100 = -252645136;
          }
        }

        v102 = -1 << v96;
        *(&v124 + v92) = v100;
        v103 = __OFADD__(v102, v84);
        v84 += v102;
      }

      while (!((v84 < 0) ^ v103 | (v84 == 0)));
    }

    if (v84 < 0)
    {
      v118 = DWORD1(v124);
      do
      {
        v119 = v118 + 1;
        v120 = v118 + 252645136;
        v121 = v84;
        while (v120)
        {
          --HIBYTE(v14[2 * v119++ + 1]);
          ++v120;
          v57 = __CFADD__(v121++, 1);
          if (v57)
          {
            goto LABEL_100;
          }
        }

        v118 = v81 + 2;
        v122 = &v8[2 * v81 + 3] + 3;
        LODWORD(v81) = v81 + 1;
        do
        {
          v123 = *v122;
          v122 -= 8;
          LODWORD(v81) = v81 - 1;
          --v118;
        }

        while (v38 == v123);
        --HIBYTE(v14[2 * v118 + 1]);
        v84 = v121 + 1;
      }

      while (v121 <= -2);
    }
  }

LABEL_100:
  if (v72 <= 0xC)
  {
    v124 = 0uLL;
    WORD4(v125) = 0;
    *&v125 = 0;
    memset(v128, 0, sizeof(v128));
    v129 = 0;
    if ((v39 & 0x8000000000000000) == 0)
    {
      v104 = v41;
      v105 = v8 + 15;
      do
      {
        v106 = *v105;
        v105 += 8;
        ++*(&v124 + v106);
        --v104;
      }

      while (v104);
    }

    if (v72)
    {
      v107 = 0;
      v108 = v72;
      do
      {
        *(v128 + v108) = v107;
        v107 = (*(&v124 + v108) + v107) >> 1;
      }

      while (v108-- > 1);
    }

    v110 = v8 + 15;
    v111 = a3 + 1;
    do
    {
      v112 = *(v110 - 1);
      v113 = *v110;
      v110 += 8;
      a1[v112 + 1] = v113;
      --v111;
    }

    while (v111);
    v114 = 1;
    do
    {
      v115 = a1[v114];
      v116 = *(v128 + v115);
      *(v128 + v115) = v116 + 1;
      if (v115)
      {
        a1[v114] = (v116 << -v115) | v115;
      }

      ++v114;
      --v16;
    }

    while (v16);
    result = v72;
    *a1 = v72;
  }

  else
  {
    result = -1;
  }

LABEL_115:
  v117 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t HUF_estimateCompressedSize(uint64_t a1, unsigned int *a2, int a3)
{
  if (a3 < 0)
  {
    return 0;
  }

  v3 = 0;
  v4 = (a1 + 8);
  v5 = (a3 + 1);
  do
  {
    v7 = *v4;
    v4 += 8;
    v6 = v7;
    v8 = *a2++;
    v3 += v6 * v8;
    --v5;
  }

  while (v5);
  return v3 >> 3;
}

BOOL HUF_validateCTable(uint64_t a1, int *a2, int a3)
{
  if (a3 < 0)
  {
    return 1;
  }

  v3 = 0;
  v4 = (a1 + 8);
  v5 = (a3 + 1);
  do
  {
    v6 = *a2++;
    v9 = v6 == 0;
    v8 = *v4;
    v4 += 8;
    v7 = v8;
    v9 = !v9 && v7 == 0;
    v10 = v9;
    v3 |= v10;
    --v5;
  }

  while (v5);
  return v3 == 0;
}

uint64_t HUF_compress1X_usingCTable_internal(unint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a2 <= 8)
  {
    return 0;
  }

  v7 = *a5;
  v5 = a5 + 1;
  v6 = v7;
  v8 = a1 + a2 - 8;
  if (((v7 * a4) >> 3) + 8 > a2 || v6 >= 0xC)
  {
    if (a4 <= 0)
    {
      v10 = -(-a4 & 3);
    }

    else
    {
      v10 = a4 & 3;
    }

    if (v10 < 1)
    {
      v12 = 0;
      v17 = 0;
      v18 = a1;
    }

    else
    {
      v11 = 0;
      v12 = 0;
      v13 = (a3 + a4 - 1);
      v14 = v10 + 1;
      do
      {
        v15 = *v13--;
        v16 = v5[v15];
        v12 = (v12 >> v16) | v16 & 0xFFFFFFFFFFFFFF00;
        v11 += v16;
        --v14;
      }

      while (v14 > 1);
      LODWORD(a4) = a4 - v10;
      v17 = v11 & 7;
      *a1 = v12 >> -v11;
      v18 = (a1 + (v11 >> 3));
      if (v18 > v8)
      {
        v18 = (a1 + a2 - 8);
      }
    }

    if ((a4 & 7) != 0)
    {
      for (i = 0; i != -3; --i)
      {
        v32 = v5[*(a3 + a4 - 1 + i)];
        v12 = (v12 >> v32) | v32;
        LOBYTE(v17) = v32 + v17;
      }

      a4 = a4 - 4;
      v33 = v5[*(a3 + a4)];
      v12 = (v12 >> v33) | v33 & 0xFFFFFFFFFFFFFF00;
      v34 = v33 + v17;
      v35 = v34;
      v36 = v12 >> -v34;
      v17 = v34 & 7;
      *v18 = v36;
      v18 = (v18 + (v35 >> 3));
      if (v18 > v8)
      {
        v18 = (a1 + a2 - 8);
      }
    }

    if (a4 >= 1)
    {
      v37 = a4;
      v38 = a3 + a4;
      v39 = v38 - 1;
      v40 = v38 - 5;
      do
      {
        for (j = 0; j != -3; --j)
        {
          v42 = v5[*(v39 + j)];
          v12 = (v12 >> v42) | v42;
          LOBYTE(v17) = v42 + v17;
        }

        v43 = 0;
        v44 = 0;
        v45 = 0;
        v46 = v5[*(v37 + a3 - 4)];
        v47 = (v12 >> v46) | v46 & 0xFFFFFFFFFFFFFF00;
        v48 = v46 + v17;
        *v18 = v47 >> -v48;
        v49 = (v18 + (v48 >> 3));
        do
        {
          v50 = v5[*(v40 + v43)];
          v45 = (v45 >> v50) | v50;
          v44 += v50;
          --v43;
        }

        while (v43 != -3);
        v51 = v48 & 7;
        if (v49 > v8)
        {
          v49 = v8;
        }

        v52 = v5[*(a3 - 8 + v37)];
        v53 = v52 + v44;
        v12 = (v45 >> v52) | v52 & 0xFFFFFFFFFFFFFF00 | (v47 >> v53);
        v54 = v53 + v51;
        v55 = v54;
        v56 = v12 >> -v54;
        v17 = v54 & 7;
        *v49 = v56;
        v18 = (v49 + (v55 >> 3));
        if (v18 > v8)
        {
          v18 = v8;
        }

        v39 -= 8;
        v40 -= 8;
        v57 = v37 <= 8;
        v37 -= 8;
      }

      while (!v57);
    }
  }

  else if (v6 <= 8)
  {
    if (v6 == 7)
    {
      if (a4 <= 0)
      {
        v75 = -(-a4 & 7);
      }

      else
      {
        v75 = a4 & 7;
      }

      if (v75 < 1)
      {
        v12 = 0;
        v17 = 0;
        v18 = a1;
      }

      else
      {
        v76 = 0;
        v12 = 0;
        v77 = (a3 + a4 - 1);
        v78 = v75 + 1;
        do
        {
          v79 = *v77--;
          v80 = v5[v79];
          v12 = (v12 >> v80) | v80 & 0xFFFFFFFFFFFFFF00;
          v76 += v80;
          --v78;
        }

        while (v78 > 1);
        LODWORD(a4) = a4 - v75;
        v17 = v76 & 7;
        *a1 = v12 >> -v76;
        v18 = (a1 + (v76 >> 3));
      }

      if ((a4 & 0xF) != 0)
      {
        for (k = 0; k != -7; --k)
        {
          v137 = v5[*(a3 + a4 - 1 + k)];
          v12 = (v12 >> v137) | v137;
          LOBYTE(v17) = v137 + v17;
        }

        a4 = a4 - 8;
        v138 = v5[*(a3 + a4)];
        v12 = (v12 >> v138) | v138 & 0xFFFFFFFFFFFFFF00;
        v139 = v138 + v17;
        v140 = v139;
        v141 = v12 >> -v139;
        v17 = v139 & 7;
        *v18 = v141;
        v18 = (v18 + (v140 >> 3));
      }

      if (a4 >= 1)
      {
        v142 = a4;
        v143 = a3 + a4;
        v144 = v143 - 1;
        v145 = v143 - 9;
        do
        {
          for (m = 0; m != -7; --m)
          {
            v147 = v5[*(v144 + m)];
            v12 = (v12 >> v147) | v147;
            LOBYTE(v17) = v147 + v17;
          }

          v148 = 0;
          v149 = 0;
          v150 = 0;
          v151 = v5[*(v142 + a3 - 8)];
          v152 = (v12 >> v151) | v151 & 0xFFFFFFFFFFFFFF00;
          v153 = v151 + v17;
          *v18 = v152 >> -v153;
          do
          {
            v154 = v5[*(v145 + v148)];
            v150 = (v150 >> v154) | v154;
            v149 += v154;
            --v148;
          }

          while (v148 != -7);
          v155 = (v18 + (v153 >> 3));
          v156 = v5[*(a3 - 16 + v142)];
          v157 = v156 + v149;
          v12 = (v150 >> v156) | v156 & 0xFFFFFFFFFFFFFF00 | (v152 >> v157);
          v158 = v157 + (v153 & 7);
          v159 = v158;
          v160 = v12 >> -v158;
          v17 = v158 & 7;
          *v155 = v160;
          v18 = (v155 + (v159 >> 3));
          v144 -= 16;
          v145 -= 16;
          v57 = v142 <= 16;
          v142 -= 16;
        }

        while (!v57);
      }
    }

    else
    {
      if (v6 != 8)
      {
LABEL_70:
        v81 = a4 % 9;
        if (a4 % 9 < 1)
        {
          v12 = 0;
          v17 = 0;
          v18 = a1;
        }

        else
        {
          v82 = 0;
          v12 = 0;
          v83 = (a3 + a4 - 1);
          v84 = v81 + 1;
          do
          {
            v85 = *v83--;
            v86 = v5[v85];
            v12 = (v12 >> v86) | v86 & 0xFFFFFFFFFFFFFF00;
            v82 += v86;
            --v84;
          }

          while (v84 > 1);
          LODWORD(a4) = a4 - v81;
          v17 = v82 & 7;
          *a1 = v12 >> -v82;
          v18 = (a1 + (v82 >> 3));
        }

        HIDWORD(v209) = 954437177 * a4 + 238609294;
        LODWORD(v209) = HIDWORD(v209);
        if ((v209 >> 1) >= 0xE38E38F)
        {
          v210 = a4;
          for (n = -1; n != -9; --n)
          {
            v212 = v5[*(a3 + a4 + n)];
            v12 = (v12 >> v212) | v212;
            LOBYTE(v17) = v212 + v17;
          }

          LODWORD(a4) = a4 - 9;
          v213 = v5[*(a3 + v210 - 9)];
          v12 = (v12 >> v213) | v213;
          v214 = v213 + v17;
          v215 = v214;
          v216 = v12 >> -v214;
          v17 = v214 & 7;
          *v18 = v216;
          v18 = (v18 + (v215 >> 3));
        }

        if (a4 >= 1)
        {
          v217 = a4;
          v218 = a3 + a4;
          do
          {
            for (ii = -1; ii != -9; --ii)
            {
              v220 = v5[*(v218 + ii)];
              v12 = (v12 >> v220) | v220;
              LOBYTE(v17) = v220 + v17;
            }

            v221 = 0;
            v222 = 0;
            v223 = v5[*(v217 + a3 - 9)];
            v224 = (v12 >> v223) | v223;
            v225 = v223 + v17;
            *v18 = v224 >> -v225;
            for (jj = -10; jj != -18; --jj)
            {
              v227 = v5[*(v218 + jj)];
              v222 = (v222 >> v227) | v227;
              v221 += v227;
            }

            v228 = (v18 + (v225 >> 3));
            v229 = v5[*(a3 - 18 + v217)];
            v230 = v229 + v221;
            v12 = (v222 >> v229) | (v224 >> v230) | v229;
            v231 = v230 + (v225 & 7);
            v232 = v231;
            v233 = v12 >> -v231;
            v17 = v231 & 7;
            *v228 = v233;
            v18 = (v228 + (v232 >> 3));
            v218 -= 18;
            v57 = v217 <= 18;
            v217 -= 18;
          }

          while (!v57);
        }

        goto LABEL_48;
      }

      v25 = a4 % 7;
      if (a4 % 7 < 1)
      {
        v12 = 0;
        v17 = 0;
        v18 = a1;
      }

      else
      {
        v26 = 0;
        v12 = 0;
        v27 = (a3 + a4 - 1);
        v28 = v25 + 1;
        do
        {
          v29 = *v27--;
          v30 = v5[v29];
          v12 = (v12 >> v30) | v30 & 0xFFFFFFFFFFFFFF00;
          v26 += v30;
          --v28;
        }

        while (v28 > 1);
        LODWORD(a4) = a4 - v25;
        v17 = v26 & 7;
        *a1 = v12 >> -v26;
        v18 = (a1 + (v26 >> 3));
      }

      HIDWORD(v185) = -1227133513 * a4 + 306783378;
      LODWORD(v185) = HIDWORD(v185);
      if ((v185 >> 1) >= 0x12492493)
      {
        v186 = a4;
        for (kk = -1; kk != -7; --kk)
        {
          v188 = v5[*(a3 + a4 + kk)];
          v12 = (v12 >> v188) | v188;
          LOBYTE(v17) = v188 + v17;
        }

        LODWORD(a4) = a4 - 7;
        v189 = v5[*(a3 + v186 - 7)];
        v12 = (v12 >> v189) | v189 & 0xFFFFFFFFFFFFFF00;
        v190 = v189 + v17;
        v191 = v190;
        v192 = v12 >> -v190;
        v17 = v190 & 7;
        *v18 = v192;
        v18 = (v18 + (v191 >> 3));
      }

      if (a4 >= 1)
      {
        v193 = a4;
        v194 = a3 + a4;
        do
        {
          for (mm = -1; mm != -7; --mm)
          {
            v196 = v5[*(v194 + mm)];
            v12 = (v12 >> v196) | v196;
            LOBYTE(v17) = v196 + v17;
          }

          v197 = 0;
          v198 = 0;
          v199 = v5[*(v193 + a3 - 7)];
          v200 = (v12 >> v199) | v199 & 0xFFFFFFFFFFFFFF00;
          v201 = v199 + v17;
          *v18 = v200 >> -v201;
          for (nn = -8; nn != -14; --nn)
          {
            v203 = v5[*(v194 + nn)];
            v198 = (v198 >> v203) | v203;
            v197 += v203;
          }

          v204 = (v18 + (v201 >> 3));
          v205 = v5[*(a3 - 14 + v193)];
          v206 = (v198 >> v205) | v205 & 0xFFFFFFFFFFFFFF00;
          LOBYTE(v205) = v205 + v197;
          v12 = v206 | (v200 >> v205);
          LOBYTE(v205) = v205 + (v201 & 7);
          v207 = v205;
          v208 = v12 >> -v205;
          v17 = v205 & 7;
          *v204 = v208;
          v18 = (v204 + (v207 >> 3));
          v194 -= 14;
          v57 = v193 <= 14;
          v193 -= 14;
        }

        while (!v57);
      }
    }
  }

  else
  {
    switch(v6)
    {
      case 9:
        v63 = a4 % 6;
        if (a4 % 6 < 1)
        {
          v12 = 0;
          v17 = 0;
          v18 = a1;
        }

        else
        {
          v64 = 0;
          v12 = 0;
          v65 = (a3 + a4 - 1);
          v66 = v63 + 1;
          do
          {
            v67 = *v65--;
            v68 = v5[v67];
            v12 = (v12 >> v68) | v68 & 0xFFFFFFFFFFFFFF00;
            v64 += v68;
            --v66;
          }

          while (v66 > 1);
          LODWORD(a4) = a4 - v63;
          v17 = v64 & 7;
          *a1 = v12 >> -v64;
          v18 = (a1 + (v64 >> 3));
        }

        HIDWORD(v87) = -1431655765 * a4 + 715827880;
        LODWORD(v87) = HIDWORD(v87);
        if ((v87 >> 2) >= 0x15555555)
        {
          v88 = a4;
          for (i1 = -1; i1 != -6; --i1)
          {
            v90 = v5[*(a3 + a4 + i1)];
            v12 = (v12 >> v90) | v90;
            LOBYTE(v17) = v90 + v17;
          }

          LODWORD(a4) = a4 - 6;
          v91 = v5[*(a3 + v88 - 6)];
          v12 = (v12 >> v91) | v91 & 0xFFFFFFFFFFFFFF00;
          v92 = v91 + v17;
          v93 = v92;
          v94 = v12 >> -v92;
          v17 = v92 & 7;
          *v18 = v94;
          v18 = (v18 + (v93 >> 3));
        }

        if (a4 >= 1)
        {
          v95 = a4;
          v96 = a3 + a4;
          do
          {
            for (i2 = -1; i2 != -6; --i2)
            {
              v98 = v5[*(v96 + i2)];
              v12 = (v12 >> v98) | v98;
              LOBYTE(v17) = v98 + v17;
            }

            v99 = 0;
            v100 = 0;
            v101 = v5[*(v95 + a3 - 6)];
            v102 = (v12 >> v101) | v101 & 0xFFFFFFFFFFFFFF00;
            v103 = v101 + v17;
            *v18 = v102 >> -v103;
            for (i3 = -7; i3 != -12; --i3)
            {
              v105 = v5[*(v96 + i3)];
              v100 = (v100 >> v105) | v105;
              v99 += v105;
            }

            v106 = (v18 + (v103 >> 3));
            v107 = v5[*(a3 - 12 + v95)];
            v108 = (v100 >> v107) | v107 & 0xFFFFFFFFFFFFFF00;
            LOBYTE(v107) = v107 + v99;
            v12 = v108 | (v102 >> v107);
            LOBYTE(v107) = v107 + (v103 & 7);
            v109 = v107;
            v110 = v12 >> -v107;
            v17 = v107 & 7;
            *v106 = v110;
            v18 = (v106 + (v109 >> 3));
            v96 -= 12;
            v57 = v95 <= 12;
            v95 -= 12;
          }

          while (!v57);
        }

        break;
      case 10:
        v69 = a4 % 5;
        if (a4 % 5 < 1)
        {
          v12 = 0;
          v17 = 0;
          v18 = a1;
        }

        else
        {
          v70 = 0;
          v12 = 0;
          v71 = (a3 + a4 - 1);
          v72 = v69 + 1;
          do
          {
            v73 = *v71--;
            v74 = v5[v73];
            v12 = (v12 >> v74) | v74 & 0xFFFFFFFFFFFFFF00;
            v70 += v74;
            --v72;
          }

          while (v72 > 1);
          LODWORD(a4) = a4 - v69;
          v17 = v70 & 7;
          *a1 = v12 >> -v70;
          v18 = (a1 + (v70 >> 3));
        }

        HIDWORD(v111) = -858993459 * a4 + 429496728;
        LODWORD(v111) = HIDWORD(v111);
        if ((v111 >> 1) >= 0x19999999)
        {
          v112 = a4;
          for (i4 = -1; i4 != -5; --i4)
          {
            v114 = v5[*(a3 + a4 + i4)];
            v12 = (v12 >> v114) | v114;
            LOBYTE(v17) = v114 + v17;
          }

          LODWORD(a4) = a4 - 5;
          v115 = v5[*(a3 + v112 - 5)];
          v12 = (v12 >> v115) | v115;
          v116 = v115 + v17;
          v117 = v116;
          v118 = v12 >> -v116;
          v17 = v116 & 7;
          *v18 = v118;
          v18 = (v18 + (v117 >> 3));
        }

        if (a4 >= 1)
        {
          v119 = a4;
          v120 = a3 + a4;
          do
          {
            for (i5 = -1; i5 != -5; --i5)
            {
              v122 = v5[*(v120 + i5)];
              v12 = (v12 >> v122) | v122;
              LOBYTE(v17) = v122 + v17;
            }

            v123 = 0;
            v124 = 0;
            v125 = v5[*(v119 + a3 - 5)];
            v126 = (v12 >> v125) | v125;
            v127 = v125 + v17;
            *v18 = v126 >> -v127;
            for (i6 = -6; i6 != -10; --i6)
            {
              v129 = v5[*(v120 + i6)];
              v124 = (v124 >> v129) | v129;
              v123 += v129;
            }

            v130 = (v18 + (v127 >> 3));
            v131 = v5[*(a3 - 10 + v119)];
            v132 = v131 + v123;
            v12 = (v124 >> v131) | (v126 >> v132) | v131;
            v133 = v132 + (v127 & 7);
            v134 = v133;
            v135 = v12 >> -v133;
            v17 = v133 & 7;
            *v130 = v135;
            v18 = (v130 + (v134 >> 3));
            v120 -= 10;
            v57 = v119 <= 10;
            v119 -= 10;
          }

          while (!v57);
        }

        break;
      case 11:
        v19 = a4 % 5;
        if (a4 % 5 < 1)
        {
          v12 = 0;
          v17 = 0;
          v18 = a1;
        }

        else
        {
          v20 = 0;
          v12 = 0;
          v21 = (a3 + a4 - 1);
          v22 = v19 + 1;
          do
          {
            v23 = *v21--;
            v24 = v5[v23];
            v12 = (v12 >> v24) | v24 & 0xFFFFFFFFFFFFFF00;
            v20 += v24;
            --v22;
          }

          while (v22 > 1);
          LODWORD(a4) = a4 - v19;
          v17 = v20 & 7;
          *a1 = v12 >> -v20;
          v18 = (a1 + (v20 >> 3));
        }

        HIDWORD(v161) = -858993459 * a4 + 429496728;
        LODWORD(v161) = HIDWORD(v161);
        if ((v161 >> 1) >= 0x19999999)
        {
          v162 = a4;
          for (i7 = -1; i7 != -5; --i7)
          {
            v164 = v5[*(a3 + a4 + i7)];
            v12 = (v12 >> v164) | v164;
            LOBYTE(v17) = v164 + v17;
          }

          LODWORD(a4) = a4 - 5;
          v165 = v5[*(a3 + v162 - 5)];
          v12 = (v12 >> v165) | v165 & 0xFFFFFFFFFFFFFF00;
          v166 = v165 + v17;
          v167 = v166;
          v168 = v12 >> -v166;
          v17 = v166 & 7;
          *v18 = v168;
          v18 = (v18 + (v167 >> 3));
        }

        if (a4 >= 1)
        {
          v169 = a4;
          v170 = a3 + a4;
          do
          {
            for (i8 = -1; i8 != -5; --i8)
            {
              v172 = v5[*(v170 + i8)];
              v12 = (v12 >> v172) | v172;
              LOBYTE(v17) = v172 + v17;
            }

            v173 = 0;
            v174 = 0;
            v175 = v5[*(v169 + a3 - 5)];
            v176 = (v12 >> v175) | v175 & 0xFFFFFFFFFFFFFF00;
            v177 = v175 + v17;
            *v18 = v176 >> -v177;
            for (i9 = -6; i9 != -10; --i9)
            {
              v179 = v5[*(v170 + i9)];
              v174 = (v174 >> v179) | v179;
              v173 += v179;
            }

            v180 = (v18 + (v177 >> 3));
            v181 = v5[*(a3 - 10 + v169)];
            v182 = (v174 >> v181) | v181 & 0xFFFFFFFFFFFFFF00;
            LOBYTE(v181) = v181 + v173;
            v12 = v182 | (v176 >> v181);
            LOBYTE(v181) = v181 + (v177 & 7);
            v183 = v181;
            v184 = v12 >> -v181;
            v17 = v181 & 7;
            *v180 = v184;
            v18 = (v180 + (v183 >> 3));
            v170 -= 10;
            v57 = v169 <= 10;
            v169 -= 10;
          }

          while (!v57);
        }

        break;
      default:
        goto LABEL_70;
    }
  }

LABEL_48:
  v58 = (v12 >> 1) | 0x8000000000000000;
  v59 = v17 + 1;
  v60 = (v17 + 1);
  *v18 = v58 >> -v60;
  v61 = v18 + (v60 >> 3);
  if (v61 > v8)
  {
    v61 = v8;
  }

  if (v61 >= v8)
  {
    return 0;
  }

  if ((v59 & 7) != 0)
  {
    return v61 - a1 + 1;
  }

  else
  {
    return v61 - a1;
  }
}

unint64_t HUF_compress4X_usingCTable_internal(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  result = 0;
  if (a2 >= 0x11 && a4 >= 0xC)
  {
    v11 = (a4 + 3) >> 2;
    v12 = a1 + 6;
    result = HUF_compress1X_usingCTable_internal((a1 + 6), a2 - 6, a3, v11, a5);
    if (result <= 0xFFFFFFFFFFFFFF88)
    {
      if (result - 0x10000 < 0xFFFFFFFFFFFF0001)
      {
        return 0;
      }

      v13 = a1 + a2;
      *a1 = result;
      v14 = v12 + result;
      result = HUF_compress1X_usingCTable_internal((v12 + result), v13 - (v12 + result), a3 + v11, (a4 + 3) >> 2, a5);
      if (result <= 0xFFFFFFFFFFFFFF88)
      {
        if (result - 0x10000 < 0xFFFFFFFFFFFF0001)
        {
          return 0;
        }

        *(a1 + 2) = result;
        v15 = (v14 + result);
        result = HUF_compress1X_usingCTable_internal(v15, v13 - v15, a3 + v11 + v11, (a4 + 3) >> 2, a5);
        if (result <= 0xFFFFFFFFFFFFFF88)
        {
          if (result - 0x10000 < 0xFFFFFFFFFFFF0001)
          {
            return 0;
          }

          v16 = a3 + a4;
          *(a1 + 4) = result;
          v17 = v15 + result;
          result = HUF_compress1X_usingCTable_internal((v15 + result), v13 - (v15 + result), a3 + v11 + v11 + v11, v16 - (a3 + v11 + v11 + v11), a5);
          if (result <= 0xFFFFFFFFFFFFFF88)
          {
            if (result - 0x10000 < 0xFFFFFFFFFFFF0001)
            {
              return 0;
            }

            return &v17[result - a1];
          }
        }
      }
    }
  }

  return result;
}

uint64_t HUF_compress_internal(unsigned __int8 *a1, unint64_t a2, unsigned __int8 *a3, unint64_t a4, unsigned int a5, unsigned int a6, int a7, uint64_t a8, unint64_t a9, char *a10, int *a11, int a12, int a13)
{
  v67 = a5;
  v13 = -a8 & 7;
  v14 = a9 - v13;
  if (a9 >= v13)
  {
    v15 = a8 + v13;
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  if (v14 >> 3 < 0x3E1)
  {
    return -66;
  }

  v16 = 0;
  if (!a2 || !a4)
  {
    return v16;
  }

  if (a4 > 0x20000)
  {
    return -72;
  }

  if (a6 > 0xC)
  {
    return -44;
  }

  if (a5 > 0xFF)
  {
    return -46;
  }

  if (!a5)
  {
    a5 = 255;
    v67 = 255;
  }

  if (a6)
  {
    v23 = a6;
  }

  else
  {
    v23 = 11;
  }

  if (a11)
  {
    v24 = a12 == 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = v24;
  if (v24 || *a11 != 2)
  {
    v63 = v23;
    if (a4 >= 0xA000)
    {
      if (a13)
      {
        v66 = a5;
        v26 = HIST_count_simple(v15, &v66, a3, 4096);
        v65 = v67;
        if (HIST_count_simple(v15, &v65, &a3[a4 - 4096], 4096) + v26 < 0x45)
        {
          return 0;
        }
      }
    }

    v27 = HIST_count_wksp(v15, &v67, a3, a4, (v15 + 3080), 0x1000uLL);
    v16 = v27;
    if (v27 > 0xFFFFFFFFFFFFFF88)
    {
      return v16;
    }

    if (v27 == a4)
    {
      *a1 = *a3;
      return 1;
    }

    if (v27 <= (a4 >> 7) + 4)
    {
      return 0;
    }

    if (a11)
    {
      v28 = *a11;
      if (*a11 == 1)
      {
        if ((v67 & 0x80000000) == 0)
        {
          v29 = 0;
          v30 = (a10 + 8);
          v31 = v67 + 1;
          v32 = v15;
          do
          {
            v33 = *v32++;
            v24 = v33 == 0;
            v35 = *v30;
            v30 += 8;
            v34 = v35;
            v37 = !v24 && v34 == 0;
            v29 |= v37;
            --v31;
          }

          while (v31);
          if (v29)
          {
            *a11 = 0;
            goto LABEL_56;
          }
        }

        v28 = 1;
      }

      if (v28)
      {
        v38 = v25;
      }

      else
      {
        v38 = 1;
      }

      if ((v38 & 1) == 0)
      {
        goto LABEL_67;
      }
    }

LABEL_56:
    v39 = FSE_optimalTableLog_internal(v63, a4, v67, 1);
    v16 = HUF_buildCTable_wksp((v15 + 1024), v15, v67, v39, v15 + 3080, 0x1300uLL);
    if (v16 > 0xFFFFFFFFFFFFFF88)
    {
      return v16;
    }

    v64 = v67;
    bzero((v15 + 1024 + 8 * (v67 + 2)), 2056 - 8 * (v67 + 2));
    __src = (v15 + 1024);
    v40 = HUF_writeCTable_wksp(a1, a2, v15 + 1024, v64, v16, v15 + 3080, 0x2ECuLL);
    v16 = v40;
    if (v40 > 0xFFFFFFFFFFFFFF88)
    {
      return v16;
    }

    if (a11)
    {
      if (*a11)
      {
        if ((v67 & 0x80000000) != 0)
        {
          goto LABEL_67;
        }

        v41 = 0;
        v42 = (a10 + 8);
        v43 = v67 + 1;
        v44 = v15;
        v45 = v43;
        do
        {
          v47 = *v42;
          v42 += 8;
          v46 = v47;
          v48 = *v44++;
          v41 += v46 * v48;
          --v45;
        }

        while (v45);
        v49 = 0;
        v50 = (v15 + 1032);
        do
        {
          v52 = *v50;
          v50 += 8;
          v51 = v52;
          v53 = *v15;
          v15 += 4;
          v49 += v51 * v53;
          --v43;
        }

        while (v43);
        if (v40 + 12 >= a4 || v41 >> 3 <= v40 + (v49 >> 3))
        {
LABEL_67:
          v54 = &a1[a2];
          v55 = a1;
          v56 = a1;
          v57 = a3;
          v58 = a4;
          v59 = a7;
          v60 = a10;
          return HUF_compressCTable_internal(v55, v56, v54, v57, v58, v59, v60);
        }

        goto LABEL_71;
      }

      if (v40 + 12 < a4)
      {
LABEL_71:
        *a11 = 0;
        v61 = __src;
        goto LABEL_72;
      }
    }

    else
    {
      v61 = (v15 + 1024);
      if (v40 + 12 < a4)
      {
LABEL_72:
        if (a10)
        {
          memcpy(a10, v61, 0x808uLL);
        }

        v56 = &a1[v16];
        v54 = &a1[a2];
        v55 = a1;
        v57 = a3;
        v58 = a4;
        v59 = a7;
        v60 = v61;
        return HUF_compressCTable_internal(v55, v56, v54, v57, v58, v59, v60);
      }
    }

    return 0;
  }

  return HUF_compressCTable_internal(a1, a1, &a1[a2], a3, a4, a7, a10);
}

uint64_t HUF_buildCTable(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  bzero(v10, 0x1300uLL);
  return HUF_buildCTable_wksp(v8, v7, v5, v3, v10, 0x1300uLL);
}

uint64_t HUF_simpleQuickSort(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = result;
  v5 = a3 - a2;
  if (a3 - a2 >= 8)
  {
    v13 = a3;
    if (a3 > a2)
    {
      do
      {
        v14 = (v4 + 8 * v13);
        v15 = *v14;
        v16 = (v3 - 1);
        v17 = v13 - v3;
        v18 = 8 * v3;
        do
        {
          if (*(v4 + v18) > v15)
          {
            v16 = (v16 + 1);
            v19 = *(v4 + 8 * v16);
            *(v4 + 8 * v16) = *(v4 + v18);
            *(v4 + v18) = v19;
          }

          v18 += 8;
          --v17;
        }

        while (v17);
        v20 = *(v4 + 8 * (v16 + 1));
        *(v4 + 8 * (v16 + 1)) = *v14;
        *v14 = v20;
        if (v16 + 1 - v3 >= v13 - (v16 + 1))
        {
          result = HUF_simpleQuickSort(v4, (v16 + 2), v13);
          v13 = v16;
        }

        else
        {
          result = HUF_simpleQuickSort(v4, v3, v16);
          v3 = (v16 + 2);
        }
      }

      while (v3 < v13);
    }
  }

  else if (v5 >= 1)
  {
    v6 = result + 8 * a2;
    v7 = (v5 + 1);
    v8 = 1;
    do
    {
      v9 = *(v6 + 8 * v8);
      v10 = v8;
      while (1)
      {
        v11 = v10 - 1;
        v12 = (v6 + 8 * (v10 - 1));
        if (*v12 >= v9)
        {
          break;
        }

        *(v6 + 8 * v10--) = *v12;
        if (v11 + 1 <= 1)
        {
          LODWORD(v10) = 0;
          break;
        }
      }

      *(v6 + 8 * v10) = v9;
      ++v8;
    }

    while (v8 != v7);
  }

  return result;
}

unint64_t HUF_compressCTable_internal(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6, uint64_t *a7)
{
  v10 = a3 - a2;
  if (a6)
  {
    result = HUF_compress4X_usingCTable_internal(a2, v10, a4, a5, a7);
  }

  else
  {
    result = HUF_compress1X_usingCTable_internal(a2, v10, a4, a5, a7);
  }

  v12 = a2 + result - a1;
  if (v12 >= a5 - 1)
  {
    v12 = 0;
  }

  if (!result)
  {
    v12 = 0;
  }

  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    return v12;
  }

  return result;
}

uint64_t FSE_buildCTable_wksp(_WORD *a1, unsigned __int16 *a2, int a3, int a4, _WORD *a5, unint64_t a6)
{
  v6 = (1 << a4);
  LODWORD(v7) = v6 >> 1;
  if (a4)
  {
    v7 = v7;
  }

  else
  {
    v7 = 1;
  }

  v8 = (a3 + 2);
  if (((2 * ((1 << a4) + v8)) & 0xFFFFFFFFFFFFFFFCLL) + 8 > a6)
  {
    return -44;
  }

  v10 = (v6 - 1);
  v11 = (v6 >> 3) + (v6 >> 1) + 3;
  *a1 = a4;
  v12 = &a5[v8];
  a1[1] = a3;
  *a5 = 0;
  v13 = (a3 + 1);
  if (a3 == -1)
  {
    a5[v13] = v6 + 1;
    v23 = &v12[v6];
  }

  else
  {
    v14 = 0;
    if (v8 <= 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = v8;
    }

    v15 = a5 + 1;
    v16 = v8 - 1;
    v17 = v6 - 1;
    do
    {
      v18 = a2[v14];
      v19 = *(v15 - 1);
      if (v18 == 0xFFFF)
      {
        *v15 = v19 + 1;
        v12[v17--] = v14;
      }

      else
      {
        *v15 = v19 + v18;
      }

      ++v15;
      ++v14;
    }

    while (v16 != v14);
    a5[v13] = v6 + 1;
    if (v17 != v10)
    {
      v35 = 0;
      v36 = 0;
      do
      {
        v37 = a2[v35];
        if (v37 >= 1)
        {
          for (i = 0; i != v37; ++i)
          {
            v12[v36] = v35;
            do
            {
              v36 = (v36 + v11) & v10;
            }

            while (v36 > v17);
          }
        }

        ++v35;
      }

      while (v35 != v13);
      goto LABEL_40;
    }

    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = &v12[v6];
    do
    {
      v24 = a2[v20];
      *&v23[v21] = v22;
      if (v24 >= 9)
      {
        v25 = 0;
        if (v24 <= 0x10)
        {
          v26 = 16;
        }

        else
        {
          v26 = v24;
        }

        v27 = (v26 - 9) >> 3;
        v28 = vdupq_n_s64(v27);
        v29 = &v23[v21 + 16];
        do
        {
          v30 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v25), xmmword_1C2BF7A50)));
          if (v30.i8[0])
          {
            *(v29 - 1) = v22;
          }

          if (v30.i8[4])
          {
            *v29 = v22;
          }

          v25 += 2;
          v29 += 16;
        }

        while (((v27 + 2) & 0x3FFFFFFFFFFFFFFELL) != v25);
      }

      v21 += v24;
      ++v20;
      v22 += 0x101010101010101;
    }

    while (v20 != v13);
  }

  v31 = 0;
  v32 = 0;
  v33 = v23 + 1;
  do
  {
    v12[v32 & v10] = *(v33 - 1);
    v34 = *v33;
    v33 += 2;
    v12[(v32 + v11) & v10] = v34;
    v32 = (v32 + 2 * v11) & v10;
    v31 += 2;
  }

  while (v31 < v6);
LABEL_40:
  v39 = (1 << a4);
  v40 = 1 << a4;
  do
  {
    v41 = *v12++;
    v42 = a5[v41];
    a5[v41] = v42 + 1;
    a1[v42 + 2] = v40++;
    --v39;
  }

  while (v39);
  v43 = 0;
  v44 = (a4 << 16) - v6;
  if (v13 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v13;
  }

  v45 = &a1[2 * v7 + 4];
  do
  {
    v47 = *a2++;
    v46 = v47;
    if (v47 == 0xFFFF || v46 == 1)
    {
      *(v45 - 1) = v43 - 1;
      *v45 = v44;
      ++v43;
    }

    else if (v46)
    {
      v49 = __clz(v46 - 1);
      *(v45 - 1) = v43 - v46;
      *v45 = ((a4 - (v49 ^ 0x1F)) << 16) - (v46 << (a4 - (v49 ^ 0x1F)));
      v43 += v46;
    }

    else
    {
      *v45 = v44 + 0x10000;
    }

    v45 += 2;
    --v13;
  }

  while (v13);
  return 0;
}

uint64_t FSE_writeNCount(_WORD *a1, unint64_t a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5 > 0xC)
  {
    return -44;
  }

  if (a5 < 5)
  {
    return -1;
  }

  LODWORD(v6) = ((a5 + a5 * a4 + 6) >> 3) + 3;
  if (a4)
  {
    v6 = v6;
  }

  else
  {
    v6 = 512;
  }

  return FSE_writeNCount_generic(a1, a2, a3, a4, a5, v6 <= a2);
}

uint64_t FSE_writeNCount_generic(_WORD *a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  v6 = (a4 + 1);
  if (a4 == -1)
  {
    return -1;
  }

  v8 = 0;
  v9 = 0;
  v10 = a5 - 5;
  v11 = 1 << a5;
  v12 = (1 << a5) + 1;
  v13 = (a5 + 1);
  v14 = a1 + a2 - 2;
  v15 = 4;
  v16 = a1;
  while (1)
  {
    if (!v8)
    {
      LODWORD(v17) = v9;
      goto LABEL_25;
    }

    LODWORD(v17) = v9;
    if (v9 < v6)
    {
      v17 = v9;
      while (!*(a3 + 2 * v17))
      {
        if (v6 == ++v17)
        {
          goto LABEL_43;
        }
      }
    }

    if (v17 == v6)
    {
      break;
    }

    if (v17 >= v9 + 24)
    {
      while (a6 || v16 <= v14)
      {
        v19 = v10 + (0xFFFF << v15);
        *v16++ = v19;
        v10 = HIWORD(v19);
        v18 = v9 + 24;
        v20 = v9 + 48;
        v9 += 24;
        if (v17 < v20)
        {
          goto LABEL_17;
        }
      }

      return -70;
    }

    v18 = v9;
LABEL_17:
    v21 = v18 + 3;
    while (v17 >= v21)
    {
      v10 += 3 << v15;
      v15 += 2;
      v21 = v18 + 6;
      v18 += 3;
    }

    v10 += (v17 - v18) << v15;
    if (v15 < 15)
    {
      v15 += 2;
    }

    else
    {
      if (!a6 && v16 > v14)
      {
        return -70;
      }

      *v16++ = v10;
      v10 >>= 16;
      v15 -= 14;
    }

LABEL_25:
    v22 = *(a3 + 2 * v17);
    v23 = ~v12 + 2 * v11;
    if (v22 >= 0)
    {
      v24 = *(a3 + 2 * v17);
    }

    else
    {
      v24 = -v22;
    }

    v12 -= v24;
    v25 = v22 + 1;
    if (v25 >= v11)
    {
      v26 = v23;
    }

    else
    {
      v26 = 0;
    }

    v27 = v26 + v25;
    v28 = v26 + v25 < v23;
    v8 = v27 == 1;
    if (v12 < 1)
    {
      return -1;
    }

    if (v12 >= v11)
    {
      v30 = v13;
    }

    else
    {
      v29 = v11;
      LODWORD(v30) = v13;
      do
      {
        v30 = (v30 - 1);
        v11 = v29 >> 1;
        v31 = v12 < v29 >> 1;
        v29 >>= 1;
      }

      while (v31);
    }

    v10 += v27 << v15;
    v15 = v15 + v13 - v28;
    if (v15 >= 17)
    {
      if (!a6 && v16 > v14)
      {
        return -70;
      }

      *v16++ = v10;
      v10 >>= 16;
      v15 -= 16;
    }

    v9 = v17 + 1;
    if (v17 + 1 < v6)
    {
      v13 = v30;
      if (v12 != 1)
      {
        continue;
      }
    }

    break;
  }

LABEL_43:
  v32 = v15 + 7;
  v31 = v15 < -7;
  v33 = v15 + 14;
  if (!v31)
  {
    v33 = v32;
  }

  if (v12 != 1)
  {
    return -1;
  }

  if (!a6 && v16 > v14)
  {
    return -70;
  }

  *v16 = v10;
  return v16 + (v33 >> 3) - a1;
}

uint64_t FSE_optimalTableLog_internal(unsigned int a1, unsigned int a2, unsigned int a3, int a4)
{
  v4 = (__clz(a2 - 1) ^ 0x1F) - a4;
  v5 = __clz(a2) ^ 0x1F;
  v6 = (__clz(a3) ^ 0x1F) + 2;
  if (v5 + 1 < v6)
  {
    v7 = v5 + 1;
  }

  else
  {
    v7 = v6;
  }

  if (a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = 11;
  }

  if (v4 >= v8)
  {
    v4 = v8;
  }

  if (v7 > v4)
  {
    v4 = v7;
  }

  if (v4 <= 5)
  {
    v4 = 5;
  }

  if (v4 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v4;
  }
}

uint64_t FSE_optimalTableLog(unsigned int a1, unsigned int a2, unsigned int a3)
{
  v3 = (__clz(a2 - 1) ^ 0x1F) - 2;
  v4 = __clz(a2) ^ 0x1F;
  v5 = (__clz(a3) ^ 0x1F) + 2;
  if (v4 + 1 < v5)
  {
    v6 = v4 + 1;
  }

  else
  {
    v6 = v5;
  }

  if (a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = 11;
  }

  if (v3 >= v7)
  {
    v3 = v7;
  }

  if (v6 > v3)
  {
    v3 = v6;
  }

  if (v3 <= 5)
  {
    v3 = 5;
  }

  if (v3 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v3;
  }
}

uint64_t FSE_normalizeCount(__int16 *a1, unsigned int a2, unsigned int *a3, unint64_t a4, unsigned int a5, int a6)
{
  if (a2)
  {
    result = a2;
  }

  else
  {
    result = 11;
  }

  if (result < 5)
  {
    return -1;
  }

  if (result > 0xC)
  {
    return -44;
  }

  v8 = __clz(a4) ^ 0x1F;
  v9 = (__clz(a5) ^ 0x1F) + 2;
  v10 = v8 + 1 < v9 ? v8 + 1 : v9;
  if (result < v10)
  {
    return -1;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  if (a6)
  {
    v14 = -1;
  }

  else
  {
    v14 = 1;
  }

  v15 = 62 - result;
  v16 = 1 << result;
  v17 = a4 >> result;
  LODWORD(v18) = 1 << result;
  do
  {
    v19 = a3[v13];
    if (v19 == a4)
    {
      return 0;
    }

    v20 = v13;
    if (v19)
    {
      if (v19 <= v17)
      {
        a1[v13] = v14;
        LODWORD(v18) = v18 - 1;
      }

      else
      {
        v21 = 0x4000000000000000uLL / a4 * v19;
        v22 = v21 >> v15;
        if (((v21 >> v15) & 0xFFF8) == 0 && v21 - ((v21 >> v15) << v15) > FSE_normalizeCount_rtbTable[(v21 >> v15)] << (42 - result))
        {
          LOWORD(v22) = v22 + 1;
        }

        if (v22 > v11)
        {
          v12 = v20;
          v11 = v22;
        }

        a1[v20] = v22;
        LODWORD(v18) = v18 - v22;
      }
    }

    else
    {
      a1[v13] = 0;
    }

    v13 = v20 + 1;
  }

  while (v20 + 1 <= a5);
  v23 = &a1[v12];
  v24 = *v23;
  if (-v18 < *v23 >> 1)
  {
LABEL_53:
    *v23 = v24 + v18;
    return result;
  }

  v25 = 0;
  v26 = (3 * a4) >> (result + 1);
  v27 = a5 + 1;
  v28 = a3;
  v29 = v27;
  v30 = a1;
  do
  {
    v32 = *v28++;
    v31 = v32;
    if (v32)
    {
      if (v31 <= v17)
      {
        *v30 = v14;
      }

      else
      {
        if (v31 > v26)
        {
          *v30 = -2;
          goto LABEL_38;
        }

        *v30 = 1;
      }

      ++v25;
      a4 -= v31;
    }

    else
    {
      *v30 = 0;
    }

LABEL_38:
    ++v30;
    --v29;
  }

  while (v29);
  v18 = (v16 - v25);
  if (v16 != v25)
  {
    if (a4 / v18 > v26)
    {
      v33 = a1;
      v34 = a5 + 1;
      v35 = a3;
      v36 = 3 * a4 / (2 * v18);
      do
      {
        if (*v33 == -2)
        {
          v37 = *v35;
          if (v37 <= v36)
          {
            *v33 = 1;
            ++v25;
            a4 -= v37;
          }
        }

        ++v35;
        ++v33;
        --v34;
      }

      while (v34);
      LODWORD(v18) = v16 - v25;
    }

    if (v25 == v27)
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      do
      {
        if (a3[v38] > v39)
        {
          v40 = v38;
          v39 = a3[v38];
        }

        ++v38;
      }

      while (v27 != v38);
      v23 = &a1[v40];
      v24 = *v23;
      goto LABEL_53;
    }

    if (a4)
    {
      v41 = 0;
      v42 = ~(-1 << (61 - result));
      v43 = ((v18 << v15) + v42) / a4;
      while (1)
      {
        v44 = v41;
        if (a1[v41] == -2)
        {
          v45 = v42 + v43 * a3[v41];
          v46 = v42 >> v15;
          if (v45 >> v15 == v46)
          {
            return -1;
          }

          a1[v44] = (v45 >> v15) - v46;
          v42 = v45;
        }

        v41 = v44 + 1;
        if (v44 + 1 > a5)
        {
          return result;
        }
      }
    }

    if (v18)
    {
      v47 = 0;
      do
      {
        v48 = v47;
        v49 = a1[v47];
        if (v49 >= 1)
        {
          LODWORD(v18) = v18 - 1;
          a1[v48] = v49 + 1;
        }

        if (v48 == a5)
        {
          v47 = 0;
        }

        else
        {
          v47 = v48 + 1;
        }
      }

      while (v18);
    }
  }

  return result;
}

uint64_t FSE_buildCTable_rle(uint64_t a1, unsigned int a2)
{
  *a1 = 0;
  *(a1 + 2) = a2;
  *(a1 + 4) = 0;
  *(a1 + 8 * a2 + 8) = 0;
  return 0;
}

uint64_t FSE_compress_usingCTable_generic(unint64_t *a1, unint64_t a2, unint64_t a3, unint64_t a4, unsigned __int16 *a5, int a6)
{
  if (a4 < 3 || a2 < 9)
  {
    return 0;
  }

  v6 = a3 + a4;
  v7 = a1 + a2 - 8;
  v10 = *a5;
  v8 = a5 + 2;
  v9 = v10;
  v11 = 1 << (v10 - 1);
  if (!v10)
  {
    v11 = 1;
  }

  v12 = &v8[2 * v11];
  v13 = &v12[4 * *(a3 + a4 - 1)];
  v14 = v8[((((*(v13 + 1) + 0x8000) & 0xFFFF0000) - *(v13 + 1)) >> ((*(v13 + 1) + 0x8000) >> 16)) + *v13];
  if (a4)
  {
    v23 = *(v6 - 3);
    v17 = (v6 - 3);
    v24 = &v12[4 * v17[1]];
    LODWORD(v22) = v8[((((*(v24 + 1) + 0x8000) & 0xFFFF0000) - *(v24 + 1)) >> ((*(v24 + 1) + 0x8000) >> 16)) + *v24];
    v25 = &v12[4 * v23];
    v26 = *v25;
    v27 = *(v25 + 1) + v14;
    v28 = v27 >> 16;
    v29 = BIT_mask_1[v27 >> 16] & v14;
    v20 = v8[(v14 >> SBYTE2(v27)) + v26];
    v30 = v27 >> 19;
    *a1 = v29;
    v21 = (a1 + (v27 >> 19));
    if (!a6 && v21 > v7)
    {
      v21 = v7;
    }

    v15 = v28 & 7;
    v16 = v29 >> (8 * v30);
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v18 = *(v6 - 2);
    v17 = (v6 - 2);
    v19 = &v12[4 * v18];
    v20 = v8[((((*(v19 + 1) + 0x8000) & 0xFFFF0000) - *(v19 + 1)) >> ((*(v19 + 1) + 0x8000) >> 16)) + *v19];
    v21 = a1;
    LODWORD(v22) = v8[((((*(v13 + 1) + 0x8000) & 0xFFFF0000) - *(v13 + 1)) >> ((*(v13 + 1) + 0x8000) >> 16)) + *v13];
  }

  v22 = v22;
  v31 = v20;
  if ((a4 & 2) == 0)
  {
    v32 = *(v17 - 2);
    v17 -= 2;
    v33 = &v12[4 * v17[1]];
    v34 = *v33;
    v35 = (*(v33 + 1) + v22) >> 16;
    v36 = (BIT_mask_1[v35] & v22) << v15;
    v37 = v15 + v35;
    v22 = v8[(v22 >> v35) + v34];
    v38 = &v12[4 * v32];
    LODWORD(v35) = *v38;
    v39 = (*(v38 + 1) + v31) >> 16;
    v40 = v36 | ((BIT_mask_1[v39] & v31) << v37) | v16;
    v41 = v37 + v39;
    v31 = v8[(v31 >> v39) + v35];
    v42 = v41 >> 3;
    *v21 = v40;
    v21 = (v21 + v42);
    if (!a6 && v21 > v7)
    {
      v21 = v7;
    }

    v15 = v41 & 7;
    v16 = v40 >> (8 * v42);
  }

  if (v17 <= a3)
  {
    v60 = v21;
  }

  else
  {
    do
    {
      v43 = *(v17 - 4);
      v17 -= 4;
      v44 = &v12[4 * v17[3]];
      v45 = (v22 + *(v44 + 1)) >> 16;
      v46 = v15 + ((v22 + *(v44 + 1)) >> 16);
      v47 = v8[(v22 >> ((v22 + *(v44 + 1)) >> 16)) + *v44];
      v48 = &v12[4 * v17[2]];
      v49 = (v31 + *(v48 + 1)) >> 16;
      v50 = v15 + v45 + v49;
      v51 = v8[(v31 >> ((v31 + *(v48 + 1)) >> 16)) + *v48];
      v52 = (*&v12[4 * v17[1] + 2] + v47) >> 16;
      v53 = *&v12[4 * v43];
      v54 = (*&v12[4 * v43 + 2] + v51) >> 16;
      v55 = v50 + v52 + v54;
      v56 = v55 >> 3;
      v57 = v21 + (v55 >> 3) > v7 && a6 == 0;
      v58 = (v22 & BIT_mask_1[v45]) << v15;
      v22 = v8[(v47 >> ((*&v12[4 * v17[1] + 2] + v47) >> 16)) + *&v12[4 * v17[1]]];
      v59 = v58 | v16 | ((v31 & BIT_mask_1[v49]) << v46) | ((BIT_mask_1[v52] & v47) << v50) | ((BIT_mask_1[v54] & v51) << (v50 + ((*&v12[4 * v17[1] + 2] + v47) >> 16)));
      v31 = v8[(v51 >> v54) + v53];
      if (v57)
      {
        v60 = v7;
      }

      else
      {
        v60 = (v21 + v56);
      }

      *v21 = v59;
      v16 = v59 >> (8 * v56);
      v15 = v55 & 7;
      v21 = v60;
    }

    while (v17 > a3);
  }

  v61 = BIT_mask_1[v9];
  v62 = ((v22 & v61) << v15) | v16;
  v63 = (v15 + v9) >> 3;
  *v60 = v62;
  v64 = (v60 + v63);
  if (v60 + v63 > v7)
  {
    v64 = v7;
  }

  v65 = (v15 + v9) & 7;
  v66 = ((v31 & v61) << v65) | (v62 >> (8 * v63));
  v67 = v65 + v9;
  v68 = v67 >> 3;
  *v64 = v66;
  v69 = (v64 + v68);
  if (v64 + v68 > v7)
  {
    v69 = v7;
  }

  v70 = v67 & 7;
  v71 = (v66 >> (8 * v68)) | (1 << v70);
  v72 = v70 + 1;
  *v69 = v71;
  v73 = v69 + (v72 >> 3);
  if (v73 > v7)
  {
    v73 = v7;
  }

  if (v73 >= v7)
  {
    return 0;
  }

  if ((v72 & 7) != 0)
  {
    return v73 - a1 + 1;
  }

  return v73 - a1;
}

unint64_t FSE_readNCount_bmi2(void *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, size_t a5)
{
  v41[1] = *MEMORY[0x1E69E9840];
  if (a5 > 7)
  {
    v12 = (*a2 + 1);
    bzero(a1, 2 * v12);
    v13 = *a4 & 0xF;
    if (v13 <= 0xA)
    {
      v14 = 0;
      v15 = *a4 >> 4;
      *a3 = v13 + 5;
      v16 = 32 << v13;
      v17 = (32 << v13) | 1;
      v18 = v13 + 6;
      v19 = a4 + a5 - 7;
      v20 = a4 + a5 - 4;
      v21 = 4;
      v22 = a4;
      while (1)
      {
        v28 = 2 * v16 - 1;
        v29 = v28 - v17;
        v30 = v15 & (v16 - 1);
        v31 = v15 & v28;
        if (v31 >= v16)
        {
          v32 = v28 - v17;
        }

        else
        {
          v32 = 0;
        }

        v33 = v31 - v32;
        v34 = v18 - 1;
        if (v30 < v29)
        {
          v33 = v30;
        }

        else
        {
          v34 = v18;
        }

        v26 = v34 + v21;
        v35 = v33 - 1;
        if (v33 <= 0)
        {
          v36 = v33 - 1;
        }

        else
        {
          v36 = 1 - v33;
        }

        v17 += v36;
        *(a1 + v14++) = v35;
        v37 = v35 != 0;
        if (v17 < v16)
        {
          if (v17 < 2)
          {
            break;
          }

          v38 = __clz(v17);
          v18 = 32 - v38;
          v16 = 1 << (v38 ^ 0x1F);
        }

        if (v14 >= v12)
        {
          break;
        }

        v39 = v26 >> 3;
        if (v22 <= v19 || v22 + v39 <= v20)
        {
          v22 = (v22 + v39);
          v21 = v26 & 7;
        }

        else
        {
          v21 = (v26 + 8 * (v22 - v20)) & 0x1F;
          v22 = (a4 + a5 - 4);
        }

        v15 = *v22 >> v21;
        if (!v37)
        {
          v23 = __clz(__rbit32(~v15 | 0x80000000));
          if (v23 >= 0x18)
          {
            do
            {
              if (v22 <= v19)
              {
                v22 = (v22 + 3);
              }

              else
              {
                v21 = (v21 + 8 * (v22 - v19)) & 0x1F;
                v22 = (a4 + a5 - 4);
              }

              v15 = *v22 >> v21;
              v23 = __clz(__rbit32(~v15 | 0x80000000));
              v14 += 36;
            }

            while (v23 > 0x17);
          }

          v24 = 3 * (v23 >> 1);
          v25 = v23 & 0x1E;
          v14 += v24 + ((v15 >> v25) & 3);
          v26 = v21 + v25 + 2;
          if (v14 >= v12)
          {
            break;
          }

          v27 = v26 >> 3;
          if (v22 <= v19 || v22 + v27 <= v20)
          {
            v22 = (v22 + v27);
            v21 = v26 & 7;
          }

          else
          {
            v21 = (v26 + 8 * (v22 - v20)) & 0x1F;
            v22 = (a4 + a5 - 4);
          }

          v15 = *v22 >> v21;
        }
      }

      if (v17 == 1)
      {
        if (v14 > v12)
        {
          result = -48;
          goto LABEL_46;
        }

        if (v26 <= 32)
        {
          *a2 = v14 - 1;
          result = v22 + ((v26 + 7) >> 3) - a4;
          goto LABEL_46;
        }
      }

      result = -20;
      goto LABEL_46;
    }

    result = -44;
  }

  else
  {
    v41[0] = 0;
    memcpy(v41, a4, a5);
    result = FSE_readNCount_bmi2(a1, a2, a3, v41, 8);
    if (result > a5 && result < 0xFFFFFFFFFFFFFF89)
    {
      result = -20;
    }
  }

LABEL_46:
  v40 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HUF_readStats(_BYTE *a1, unint64_t a2, uint64_t a3, _DWORD *a4, _DWORD *a5, char *a6, unint64_t a7)
{
  v17 = *MEMORY[0x1E69E9840];
  bzero(v16, 0x368uLL);
  result = HUF_readStats_wksp(a1, a2, a3, a4, a5, a6, a7, v16, 0x368uLL);
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HUF_readStats_wksp(_BYTE *a1, unint64_t a2, uint64_t a3, _DWORD *a4, _DWORD *a5, char *a6, unint64_t a7, unsigned __int16 *a8, unint64_t a9)
{
  if (!a7)
  {
    return -72;
  }

  v13 = *a6;
  if (*a6 < 0)
  {
    v15 = (v13 - 126) >> 1;
    if (v15 < a7)
    {
      v14 = v13 - 127;
      if (v13 - 127 < a2)
      {
        if (v13 != 127)
        {
          v17 = 0;
          v18 = a6 + 1;
          do
          {
            v19 = &a1[v17];
            *v19 = *v18 >> 4;
            v20 = *v18++;
            v19[1] = v20 & 0xF;
            v17 += 2;
          }

          while (v17 < v14);
LABEL_12:
          *(a3 + 48) = 0;
          *(a3 + 16) = 0u;
          *(a3 + 32) = 0u;
          *a3 = 0u;
          if (v14)
          {
            v21 = 0;
            v22 = 0;
            v23 = 1;
            while (1)
            {
              v24 = a1[v21];
              if (v24 > 0xC)
              {
                break;
              }

              ++*(a3 + 4 * v24);
              v22 += 1 << a1[v21] >> 1;
              v21 = v23;
              if (v14 <= v23++)
              {
                if (!v22)
                {
                  return -20;
                }

                v26 = __clz(v22);
                if ((v26 ^ 0x1F) > 0xB)
                {
                  return -20;
                }

                *a5 = 32 - v26;
                v27 = (2 << (v26 ^ 0x1F)) - v22;
                v28 = __clz(v27) ^ 0x1F;
                if (1 << v28 != v27)
                {
                  return -20;
                }

                v29 = v28 + 1;
                a1[v14] = v29;
                ++*(a3 + 4 * v29);
                v30 = *(a3 + 4);
                v16 = -20;
                if (v30 >= 2 && (v30 & 1) == 0)
                {
                  *a4 = v14 + 1;
                  return v15 + 1;
                }

                return v16;
              }
            }
          }

          return -20;
        }

        *(a3 + 48) = 0;
        *(a3 + 16) = 0u;
        *(a3 + 32) = 0u;
        *a3 = 0u;
      }

      return -20;
    }
  }

  else if (v13 < a7)
  {
    v14 = FSE_decompress_wksp_bmi2(a1, a2 - 1, a6 + 1, *a6, 6u, a8, a9);
    v15 = v13;
    v16 = v14;
    if (v14 > 0xFFFFFFFFFFFFFF88)
    {
      return v16;
    }

    goto LABEL_12;
  }

  return -72;
}

BOOL FASTCOVER_checkParameters(double *a1, unint64_t a2, int a3, int a4)
{
  v4 = *(a1 + 1);
  if (!v4)
  {
    return 0;
  }

  v6 = *a1;
  if (!v6)
  {
    return 0;
  }

  v7 = v4 == 8 || v4 == 6;
  if (!v7 || v6 > a2)
  {
    return 0;
  }

  result = 0;
  if ((a3 - 32) >= 0xFFFFFFE1 && v4 <= v6)
  {
    v9 = a1[2];
    if (v9 <= 0.0 || v9 > 1.0)
    {
      return 0;
    }

    return (a4 - 1) < 0xA;
  }

  return result;
}

uint64_t FASTCOVER_ctx_init(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int a4, unsigned int a5, int a6, uint64_t a7, double a8)
{
  v11 = a3;
  v12 = COVER_sum(a3, a4);
  v13 = v12;
  v14 = (a4 * a8);
  if (a8 >= 1.0)
  {
    v15 = 0;
  }

  else
  {
    v15 = (a4 * a8);
  }

  v16 = a4 - v15;
  if (a8 >= 1.0)
  {
    v17 = a4;
  }

  else
  {
    v17 = v14;
  }

  v18 = v12;
  v19 = v12;
  if (a8 < 1.0)
  {
    v18 = COVER_sum(v11, (a4 * a8));
    v19 = COVER_sum(&v11[v14], a4 - v15);
  }

  if (a5 <= 8)
  {
    v20 = 8;
  }

  else
  {
    v20 = a5;
  }

  if (v13 < v20 || v13 >= 0xFFFFFFFF)
  {
    if (g_displayLevel >= 1)
    {
      v22 = MEMORY[0x1E69E9848];
      fprintf(*MEMORY[0x1E69E9848], "Total samples size is too large (%u MB), maximum size is %u MB\n");
LABEL_25:
      fflush(*v22);
    }

    return -72;
  }

  if (v17 <= 4)
  {
    if (g_displayLevel >= 1)
    {
      v22 = MEMORY[0x1E69E9848];
      fprintf(*MEMORY[0x1E69E9848], "Total number of training samples is %u and is invalid\n");
      goto LABEL_25;
    }

    return -72;
  }

  if (a4 == v15)
  {
    if (g_displayLevel >= 1)
    {
      v22 = MEMORY[0x1E69E9848];
      fprintf(*MEMORY[0x1E69E9848], "Total number of testing samples is %u and is invalid.\n");
      goto LABEL_25;
    }

    return -72;
  }

  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  if (g_displayLevel >= 2)
  {
    v25 = MEMORY[0x1E69E9848];
    fprintf(*MEMORY[0x1E69E9848], "Training on %u samples of total size %u\n", v17, v18);
    fflush(*v25);
    if (g_displayLevel >= 2)
    {
      fprintf(*v25, "Testing on %u samples of total size %u\n", v16, v19);
      fflush(*v25);
    }
  }

  *a1 = a2;
  *(a1 + 16) = v11;
  *(a1 + 24) = a4;
  *(a1 + 32) = v17;
  *(a1 + 40) = v16;
  *(a1 + 48) = v18 - v20 + 1;
  *(a1 + 64) = a5;
  *(a1 + 68) = a6;
  v26 = a4 + 1;
  *(a1 + 72) = a7;
  v27 = malloc_type_calloc(a4 + 1, 8uLL, 0x100004000313F17uLL);
  *(a1 + 8) = v27;
  if (!v27)
  {
    if (g_displayLevel < 1)
    {
LABEL_58:
      v50 = *(a1 + 56);
LABEL_59:
      free(v50);
      *(a1 + 56) = 0;
      free(*(a1 + 8));
      *(a1 + 8) = 0;
      return -64;
    }

    v47 = MEMORY[0x1E69E9848];
    v48 = *MEMORY[0x1E69E9848];
    v49 = "Failed to allocate scratch buffers \n";
LABEL_57:
    fwrite(v49, 0x24uLL, 1uLL, v48);
    fflush(*v47);
    goto LABEL_58;
  }

  *v27 = 0;
  if (a4)
  {
    v28 = 0;
    if (v26 <= 2)
    {
      v29 = 2;
    }

    else
    {
      v29 = v26;
    }

    v30 = v27 + 1;
    v31 = v29 - 1;
    do
    {
      v32 = *v11++;
      v28 += v32;
      *v30++ = v28;
      --v31;
    }

    while (v31);
  }

  v33 = malloc_type_calloc(1 << a6, 4uLL, 0x100004052888210uLL);
  *(a1 + 56) = v33;
  if (!v33)
  {
    if (g_displayLevel < 1)
    {
      v50 = 0;
      goto LABEL_59;
    }

    v47 = MEMORY[0x1E69E9848];
    v48 = *MEMORY[0x1E69E9848];
    v49 = "Failed to allocate frequency table \n";
    goto LABEL_57;
  }

  if (g_displayLevel >= 2)
  {
    v34 = MEMORY[0x1E69E9848];
    fwrite("Computing frequencies\n", 0x16uLL, 1uLL, *MEMORY[0x1E69E9848]);
    fflush(*v34);
    v33 = *(a1 + 56);
  }

  v35 = *(a1 + 32);
  if (!v35)
  {
    return 0;
  }

  v36 = 0;
  v37 = *(a1 + 64);
  if (v37 <= 8)
  {
    v38 = 8;
  }

  else
  {
    v38 = v37;
  }

  v39 = *(a1 + 8);
  v40 = 64 - *(a1 + 68);
  v41 = 0xCF1BBCDCBF9B0000;
  if (v37 != 6)
  {
    v41 = 0xCF1BBCDCB7A56463;
  }

  v42 = *(a1 + 76) + 1;
  v43 = *v39;
  do
  {
    v44 = v39[++v36];
    if (v43 + v38 <= v44)
    {
      v45 = v38 + v43;
      v46 = (*a1 + v43);
      do
      {
        ++v33[(*v46 * v41) >> v40];
        v45 += v42;
        v46 = (v46 + v42);
      }

      while (v45 <= v44);
    }

    v23 = 0;
    v43 = v44;
  }

  while (v36 != v35);
  return v23;
}

size_t FASTCOVER_buildDictionary(uint64_t *a1, uint64_t a2, uint64_t a3, size_t a4, unsigned int *a5, uint64_t a6)
{
  v11 = COVER_computeEpochs(a4, *(a1 + 12), *a5, 1u);
  v12 = HIDWORD(v11);
  if (g_displayLevel >= 2)
  {
    v13 = MEMORY[0x1E69E9848];
    fprintf(*MEMORY[0x1E69E9848], "Breaking content into %u epochs of size %u\n", v11, HIDWORD(v11));
    fflush(*v13);
  }

  if (a4)
  {
    v14 = 0;
    v15 = 0;
    v16 = v11;
    v56 = a4;
    v17 = a4;
    v18 = &unk_1EBF61000;
    while (1)
    {
      v19 = v15 * v12;
      v20 = v15 * v12 + v12;
      v21 = a5[1];
      v22 = *(a1 + 17);
      if (v20 <= v15 * v12)
      {
        v24 = 0;
        v23 = 0;
        v39 = 1;
      }

      else
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v27 = *a1;
        v28 = 64 - v22;
        v29 = 0xCF1BBCDCBF9B0000;
        if (v21 != 6)
        {
          v29 = 0xCF1BBCDCB7A56463;
        }

        v30 = v19 - v20;
        v31 = v19 + 1;
        v32 = v21 - *a5;
        v33 = (v27 + v19);
        do
        {
          v34 = *v33;
          v33 = (v33 + 1);
          v35 = (v34 * v29) >> v28;
          if (!*(a6 + 2 * v35))
          {
            v26 += *(a2 + 4 * v35);
          }

          ++*(a6 + 2 * v35);
          if (v32 + v31 - v19 == 2)
          {
            v36 = (*(v27 + v19) * v29) >> v28;
            v37 = *(a6 + 2 * v36) - 1;
            *(a6 + 2 * v36) = v37;
            if (!v37)
            {
              v26 -= *(a2 + 4 * v36);
            }

            ++v19;
          }

          if (v26 > v25)
          {
            v25 = v26;
            v24 = v31;
            v23 = v19;
          }

          ++v31;
          v38 = __CFADD__(v30++, 1);
        }

        while (!v38);
        v39 = v25 == 0;
      }

      if (v19 < v20)
      {
        v40 = 0xCF1BBCDCBF9B0000;
        if (v21 != 6)
        {
          v40 = 0xCF1BBCDCB7A56463;
        }

        v41 = v19 - v20;
        v42 = (*a1 + v19);
        do
        {
          v43 = *v42;
          v42 = (v42 + 1);
          --*(a6 + 2 * ((v43 * v40) >> (64 - v22)));
          v38 = __CFADD__(v41++, 1);
        }

        while (!v38);
      }

      if (v23 != v24)
      {
        v44 = *a1;
        v45 = 64 - v22;
        v46 = v21 == 6;
        v47 = 0xCF1BBCDCBF9B0000;
        if (!v46)
        {
          v47 = 0xCF1BBCDCB7A56463;
        }

        v48 = v23;
        do
        {
          *(a2 + 4 * ((*(v44 + v48++) * v47) >> v45)) = 0;
        }

        while (v24 != v48);
      }

      if (v39)
      {
        if (v14 > 8)
        {
          goto LABEL_47;
        }

        ++v14;
      }

      else
      {
        v49 = a5[1];
        v50 = v24 + ~v23 + v49;
        if (v17 >= v50)
        {
          v51 = v50;
        }

        else
        {
          v51 = v17;
        }

        if (v51 < v49)
        {
          goto LABEL_47;
        }

        v17 -= v51;
        memcpy((a3 + v17), (*a1 + v23), v51);
        if (v18[138] >= 2 && (clock() - g_time > 0x249F0 || v18[138] >= 4))
        {
          g_time = clock();
          v52 = MEMORY[0x1E69E9848];
          fprintf(*MEMORY[0x1E69E9848], "\r%u%%       ", 100 * (v56 - v17) / v56);
          v53 = *v52;
          v18 = &unk_1EBF61000;
          fflush(v53);
        }

        v14 = 0;
      }

      v15 = (v15 + 1) % v16;
      if (!v17)
      {
        goto LABEL_47;
      }
    }
  }

  v17 = 0;
  v18 = &unk_1EBF61000;
LABEL_47:
  if (v18[138] >= 2)
  {
    v54 = MEMORY[0x1E69E9848];
    fprintf(*MEMORY[0x1E69E9848], "\r%79s\r", "");
    fflush(*v54);
  }

  return v17;
}

uint64_t ZDICT_optimizeTrainFromBuffer_fastCover(void *a1, unint64_t a2, uint64_t a3, uint64_t *a4, unsigned int a5, uint64_t a6)
{
  v81 = *MEMORY[0x1E69E9840];
  if (*(a6 + 24) <= 0.0)
  {
    v6 = 0.75;
  }

  else
  {
    v6 = *(a6 + 24);
  }

  v8 = *a6;
  v7 = *(a6 + 4);
  v9 = v7 == 0;
  if (v7)
  {
    v10 = *(a6 + 4);
  }

  else
  {
    v10 = 6;
  }

  if (v7)
  {
    v11 = *(a6 + 4);
  }

  else
  {
    v11 = 8;
  }

  v12 = *(a6 + 8);
  if (*(a6 + 12))
  {
    v13 = *(a6 + 12);
  }

  else
  {
    v13 = 40;
  }

  if (v8)
  {
    v14 = *a6;
  }

  else
  {
    v14 = 50;
  }

  if (v8)
  {
    v15 = *a6;
  }

  else
  {
    v15 = 2000;
  }

  if (v8)
  {
    v16 = 0;
  }

  else
  {
    v16 = 1950;
  }

  if (v16 / v13 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16 / v13;
  }

  if (!v12)
  {
    v12 = 20;
  }

  v18 = *(a6 + 32);
  if (v18 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = *(a6 + 32);
  }

  v20 = *(a6 + 48);
  if (v6 > 1.0)
  {
    if (v20 >= 1)
    {
      v21 = MEMORY[0x1E69E9848];
      v22 = *MEMORY[0x1E69E9848];
      v23 = "Incorrect splitPoint\n";
      v24 = 21;
LABEL_45:
      fwrite(v23, v24, 1uLL, v22);
      fflush(*v21);
      goto LABEL_46;
    }

    goto LABEL_46;
  }

  if (v18 >= 0xB)
  {
    if (v20 >= 1)
    {
      v21 = MEMORY[0x1E69E9848];
      v22 = *MEMORY[0x1E69E9848];
      v23 = "Incorrect accel\n";
      v24 = 16;
      goto LABEL_45;
    }

LABEL_46:
    v27 = -42;
    goto LABEL_47;
  }

  if (v14 < v11 || v15 < v14)
  {
    if (v20 >= 1)
    {
      v21 = MEMORY[0x1E69E9848];
      v22 = *MEMORY[0x1E69E9848];
      v23 = "Incorrect k\n";
      v24 = 12;
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  if (!a5)
  {
    if (v20 >= 1)
    {
      v30 = MEMORY[0x1E69E9848];
      fwrite("FASTCOVER must have at least one input file\n", 0x2CuLL, 1uLL, *MEMORY[0x1E69E9848]);
      fflush(*v30);
    }

    v27 = -72;
    goto LABEL_47;
  }

  if (a2 <= 0xFF)
  {
    if (v20 >= 1)
    {
      v26 = MEMORY[0x1E69E9848];
      fprintf(*MEMORY[0x1E69E9848], "dictBufferCapacity must be at least %u\n", 256);
      fflush(*v26);
    }

    v27 = -70;
    goto LABEL_47;
  }

  v60 = v12;
  v61 = v11;
  v65 = v19;
  v56 = v14;
  if (*(a6 + 16) < 2u)
  {
    v32 = 0;
  }

  else
  {
    v32 = POOL_create();
    if (!v32)
    {
      v27 = -64;
      goto LABEL_47;
    }
  }

  v78 = 0;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v62 = (v16 / v17 + 1) << v9;
  v63 = v32;
  v73 = 0u;
  COVER_best_init(&v73);
  v64 = *(a6 + 16);
  v79 = *(a6 + 44);
  v80 = *(a6 + 52);
  v33 = v65;
  v55 = FASTCOVER_defaultAccelParameters[v65];
  v34 = v20 - 1;
  if (!v20)
  {
    v34 = 0;
  }

  g_displayLevel = v34;
  if (v20 >= 2)
  {
    v35 = MEMORY[0x1E69E9848];
    fprintf(*MEMORY[0x1E69E9848], "Trying %u different sets of parameters\n", v62);
    fflush(*v35);
    v33 = v65;
  }

  if (v10 > v61)
  {
    goto LABEL_60;
  }

  v66 = 1;
  v40 = 0uLL;
  v41 = 1;
  while (2)
  {
    *v71 = v40;
    v72 = v40;
    v69 = v40;
    v70 = v40;
    *v68 = v40;
    if (v20 >= 3)
    {
      v42 = MEMORY[0x1E69E9848];
      fprintf(*MEMORY[0x1E69E9848], "d=%u\n", v10);
      fflush(*v42);
    }

    v43 = FASTCOVER_ctx_init(v68, a3, a4, a5, v10, v60, v55, v6);
    if (v43 < 0xFFFFFFFFFFFFFF89)
    {
      if (v41)
      {
        COVER_warnOnSmallCorpus(a2, v71[0], v20);
      }

      v44 = v56;
      do
      {
        v45 = malloc_type_malloc(0x48uLL, 0x1060040023D7745uLL);
        if (v20 >= 3)
        {
          v46 = MEMORY[0x1E69E9848];
          fprintf(*MEMORY[0x1E69E9848], "k=%u\n", v44);
          fflush(*v46);
        }

        if (!v45)
        {
          if (v20 >= 1)
          {
            v52 = MEMORY[0x1E69E9848];
            fwrite("Failed to allocate parameters\n", 0x1EuLL, 1uLL, *MEMORY[0x1E69E9848]);
            fflush(*v52);
          }

          COVER_best_destroy(&v73);
          free(v71[1]);
          v71[1] = 0;
          free(v68[1]);
          v68[1] = 0;
          v27 = -64;
          goto LABEL_93;
        }

        *v45 = v68;
        *(v45 + 1) = &v73;
        *(v45 + 2) = a2;
        v47 = v79;
        *(v45 + 8) = v80;
        *(v45 + 6) = v44;
        *(v45 + 7) = v10;
        *(v45 + 5) = v6;
        *(v45 + 8) = v13;
        *(v45 + 9) = v64;
        *(v45 + 6) = 0;
        *(v45 + 7) = v47;
        v48 = g_displayLevel;
        *(v45 + 15) = g_displayLevel;
        v49 = *(v45 + 40);
        v67[0] = *(v45 + 24);
        v67[1] = v49;
        v67[2] = *(v45 + 56);
        if (FASTCOVER_checkParameters(v67, a2, SDWORD1(v72), v65))
        {
          COVER_best_start(&v73);
          if (v63)
          {
            POOL_add(v63, FASTCOVER_tryParameters, v45);
          }

          else
          {
            FASTCOVER_tryParameters(v45);
          }

          if (v20 >= 2 && (clock() - g_time > 0x249F0 || v20 >= 4))
          {
            g_time = clock();
            v51 = MEMORY[0x1E69E9848];
            fprintf(*MEMORY[0x1E69E9848], "\r%u%%       ", 100 * v66 / v62);
            fflush(*v51);
          }

          ++v66;
        }

        else
        {
          if (v48 >= 1)
          {
            v50 = MEMORY[0x1E69E9848];
            fwrite("FASTCOVER parameters incorrect\n", 0x1FuLL, 1uLL, *MEMORY[0x1E69E9848]);
            fflush(*v50);
          }

          free(v45);
        }

        v44 += v17;
      }

      while (v44 <= v15);
      COVER_best_wait(&v73);
      free(v71[1]);
      v71[1] = 0;
      free(v68[1]);
      v41 = 0;
      v10 += 2;
      v33 = v65;
      v40 = 0uLL;
      if (v10 <= v61)
      {
        continue;
      }

LABEL_60:
      if (v20 >= 2)
      {
        v36 = MEMORY[0x1E69E9848];
        fprintf(*MEMORY[0x1E69E9848], "\r%79s\r", "");
        fflush(*v36);
        v33 = v65;
      }

      v27 = v78;
      if (v78 < 0xFFFFFFFFFFFFFF89)
      {
        v37 = *(&v75 + 1);
        *a6 = v75;
        v38 = v76;
        v39 = DWORD2(v76);
        *(a6 + 12) = v37;
        *(a6 + 24) = v38;
        *(a6 + 8) = v60;
        *(a6 + 44) = v77;
        *(a6 + 52) = DWORD2(v77);
        *(a6 + 32) = v33;
        *(a6 + 36) = v39;
        v27 = *(&v74 + 1);
        memcpy(a1, v74, *(&v74 + 1));
      }

      goto LABEL_64;
    }

    break;
  }

  v27 = v43;
  if (v20 >= 1)
  {
    v53 = MEMORY[0x1E69E9848];
    fwrite("Failed to initialize context\n", 0x1DuLL, 1uLL, *MEMORY[0x1E69E9848]);
    fflush(*v53);
  }

LABEL_64:
  COVER_best_destroy(&v73);
LABEL_93:
  POOL_free(v63);
LABEL_47:
  v28 = *MEMORY[0x1E69E9840];
  return v27;
}

void FASTCOVER_tryParameters(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 40);
  v30 = *(a1 + 24);
  v31 = v3;
  v32 = *(a1 + 56);
  v4 = *(a1 + 2);
  v5 = malloc_type_calloc(1 << *(v2 + 68), 2uLL, 0x1000040BDFB0063uLL);
  v6 = malloc_type_malloc(v4, 0x100004077774924uLL);
  v28 = 0uLL;
  v29 = 0;
  COVER_dictSelectionError(-1, &v28);
  v7 = malloc_type_malloc(4 << *(v2 + 68), 0x100004052888210uLL);
  v8 = v7;
  if (v5)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || v7 == 0)
  {
    if (g_displayLevel >= 1)
    {
      v11 = *MEMORY[0x1E69E9848];
      v12 = "Failed to allocate buffers: out of memory\n";
      v13 = 42;
LABEL_14:
      fwrite(v12, v13, 1uLL, v11);
      fflush(*MEMORY[0x1E69E9848]);
    }
  }

  else
  {
    memcpy(v7, *(v2 + 56), 4 << *(v2 + 68));
    v25 = v30;
    v26 = v31;
    v27 = v32;
    v14 = FASTCOVER_buildDictionary(v2, v8, v6, v4, &v25, v5);
    v16 = *(v2 + 24);
    v15 = *(v2 + 32);
    v17 = v15 * *(v2 + 72) / 0x64;
    v19 = *(v2 + 8);
    v18 = *(v2 + 16);
    v20 = *v2;
    v25 = v30;
    v26 = v31;
    v27 = v32;
    COVER_selectDict(v4, &v6[v14], v4 - v14, v20, v18, v17, v15, v16, &v23, &v25, v19);
    v28 = v23;
    v29 = v24;
    v25 = v23;
    *&v26 = v24;
    IsError = COVER_dictSelectionIsError(&v25);
    if (IsError && g_displayLevel >= 1)
    {
      v11 = *MEMORY[0x1E69E9848];
      v12 = "Failed to select dictionary\n";
      v13 = 28;
      goto LABEL_14;
    }
  }

  free(v6);
  v22 = *(a1 + 1);
  v25 = v30;
  v26 = v31;
  v27 = v32;
  v23 = v28;
  v24 = v29;
  COVER_best_finish(v22, &v25, &v23);
  free(a1);
  free(v5);
  v25 = v28;
  *&v26 = v29;
  COVER_dictSelectionFree(&v25);
  free(v8);
}

uint64_t HIST_count_simple(unsigned int *a1, unsigned int *a2, unsigned __int8 *a3, uint64_t a4)
{
  v7 = a1;
  v8 = *a2;
  bzero(a1, 4 * (*a2 + 1));
  if (a4)
  {
    if (a4 >= 1)
    {
      v9 = &a3[a4];
      do
      {
        v10 = *a3++;
        ++v7[v10];
      }

      while (a3 < v9);
    }

    do
    {
      v11 = v8;
    }

    while (!v7[v8--]);
    LODWORD(result) = 0;
    *a2 = v8 + 1;
    v14 = -1;
    do
    {
      v16 = *v7++;
      v15 = v16;
      if (v16 <= result)
      {
        result = result;
      }

      else
      {
        result = v15;
      }

      ++v14;
    }

    while (v14 < v11);
  }

  else
  {
    result = 0;
    *a2 = 0;
  }

  return result;
}

uint64_t HIST_countFast_wksp(unsigned int *a1, unsigned int *a2, unsigned __int8 *a3, unint64_t a4, char *a5, unint64_t a6)
{
  if (a4 <= 0x5DB)
  {
    return HIST_count_simple(a1, a2, a3, a4);
  }

  if ((a5 & 3) != 0)
  {
    return -1;
  }

  if (a6 < 0x1000)
  {
    return -66;
  }

  return HIST_count_parallel_wksp(a1, a2, a3, a4, 0, a5);
}

uint64_t HIST_count_parallel_wksp(void *a1, unsigned int *a2, unsigned int *a3, uint64_t a4, int a5, char *a6)
{
  v6 = a4;
  v9 = 4 * (*a2 + 1);
  if (a4)
  {
    v13 = (a3 + a4);
    bzero(a6, 0x1000uLL);
    v14 = a3;
    v15 = a3;
    if (v6 >= 20)
    {
      v16 = a6 + 1024;
      v17 = a6 + 2048;
      v18 = a6 + 3072;
      v19 = *a3;
      v14 = a3;
      v15 = a3;
      do
      {
        v20 = v15[1];
        ++*&a6[4 * v19];
        ++*&v16[4 * BYTE1(v19)];
        ++*&v17[4 * BYTE2(v19)];
        ++*&v18[4 * HIBYTE(v19)];
        v21 = v15[2];
        ++*&a6[4 * v20];
        ++*&v16[4 * BYTE1(v20)];
        ++*&v17[4 * BYTE2(v20)];
        ++*&v18[(v20 >> 22) & 0x3FC];
        v22 = v15[3];
        ++*&a6[4 * v21];
        ++*&v16[4 * BYTE1(v21)];
        ++*&v17[4 * BYTE2(v21)];
        ++*&v18[(v21 >> 22) & 0x3FC];
        v23 = v15[4];
        v15 += 4;
        v19 = v23;
        ++*&a6[4 * v22];
        ++*&v16[4 * BYTE1(v22)];
        ++*&v17[4 * BYTE2(v22)];
        ++*&v18[(v22 >> 22) & 0x3FC];
        v14 += 4;
      }

      while (v15 + 1 < (v13 - 15));
    }

    if (v15 < v13)
    {
      v24 = (a3 + v6 - v14);
      do
      {
        v25 = *v15;
        v15 = (v15 + 1);
        ++*&a6[4 * v25];
        --v24;
      }

      while (v24);
    }

    v26 = 0;
    v27 = 0uLL;
    do
    {
      v28 = vaddq_s32(vaddq_s32(*&a6[v26 + 2048], *&a6[v26 + 1024]), vaddq_s32(*&a6[v26 + 3072], *&a6[v26]));
      *&a6[v26] = v28;
      v27 = vmaxq_u32(v28, v27);
      v26 += 16;
    }

    while (v26 != 1024);
    v6 = vmaxvq_u32(v27);
    v29 = 256;
    do
    {
      --v29;
    }

    while (!*&a6[4 * v29]);
    if (a5 && v29 > *a2)
    {
      return -48;
    }

    else
    {
      *a2 = v29;
      memmove(a1, a6, v9);
    }
  }

  else
  {
    bzero(a1, 4 * (*a2 + 1));
    *a2 = 0;
  }

  return v6;
}

uint64_t HIST_count_wksp(void *a1, unsigned int *a2, unsigned int *a3, unint64_t a4, char *a5, unint64_t a6)
{
  if ((a5 & 3) != 0)
  {
    return -1;
  }

  if (a6 < 0x1000)
  {
    return -66;
  }

  if (*a2 <= 0xFE)
  {
    return HIST_count_parallel_wksp(a1, a2, a3, a4, 1, a5);
  }

  *a2 = 255;
  return HIST_countFast_wksp(a1, a2, a3, a4, a5, a6);
}

uint64_t HUF_readDTableX1_wksp_bmi2(int *a1, char *a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v69 = 0;
  if (a5 < 0x5D0)
  {
    return -44;
  }

  v8 = (a4 + 1232);
  v5 = HUF_readStats_wksp((a4 + 1232), 0x100uLL, a4, &v69, &v69 + 1, a2, a3, (a4 + 104), 0x368uLL);
  if (v5 > 0xFFFFFFFFFFFFFF88)
  {
    return v5;
  }

  v9 = *a1;
  v10 = *a1;
  v11 = v10 + 1;
  if ((v10 + 1) < 0xB)
  {
    v12 = v10 + 1;
  }

  else
  {
    v12 = 11;
  }

  v14 = v69;
  v13 = HIDWORD(v69);
  v15 = HIDWORD(v69) - v12;
  if (HIDWORD(v69) <= v12)
  {
    if (HIDWORD(v69) < v12)
    {
      v16 = v12 - HIDWORD(v69);
      if (v69)
      {
        v17 = v8;
        v18 = v69;
        do
        {
          if (*v17)
          {
            v19 = v16;
          }

          else
          {
            v19 = 0;
          }

          *v17++ += v19;
          --v18;
        }

        while (v18);
      }

      if (v16 < v12)
      {
        v20 = (a4 + 4 * v12);
        v21 = v12;
        do
        {
          *v20-- = *(a4 + 4 * (v15 + v21--));
        }

        while (v16 < v21);
      }

      bzero((a4 + 4 * (v16 - (v12 + ~v13))), 4 * (v12 + ~v13) + 4);
    }

    goto LABEL_21;
  }

  v12 = HIDWORD(v69);
  if (HIDWORD(v69) <= v11)
  {
LABEL_21:
    v22 = 0;
    *a1 = v9;
    *(a1 + 1) = 0;
    *(a1 + 2) = v12;
    *(a1 + 3) = HIBYTE(v9);
    v23 = a4 + 52;
    v24 = v12 + 1;
    v25 = v24;
    v26 = a4;
    do
    {
      v27 = *v26;
      v26[13] = v22;
      v22 += v27;
      ++v26;
      --v25;
    }

    while (v25);
    if (v14 < 4)
    {
      LODWORD(v28) = 0;
    }

    else
    {
      v28 = 0;
      do
      {
        for (i = 0; i != 4; ++i)
        {
          v30 = v8[v28 + i];
          v31 = *(v23 + 4 * v30);
          *(v23 + 4 * v30) = v31 + 1;
          *(a4 + 976 + v31) = v28 + i;
        }

        v28 += 4;
      }

      while (v28 < (v14 - 3));
    }

    if (v28 < v14)
    {
      v28 = v28;
      do
      {
        v32 = v8[v28];
        v33 = *(v23 + 4 * v32);
        *(v23 + 4 * v32) = v33 + 1;
        *(a4 + 976 + v33) = v28++;
      }

      while (v14 != v28);
    }

    v34 = 0;
    v35 = a4 + 976;
    v36 = *a4;
    v37 = a1 + 3;
    v38 = a1 + 1;
    v39 = a1 + 7;
    v40 = a1 + 5;
    v41 = a1 + 5;
    v42 = 1;
    while (1)
    {
      v43 = *(a4 + 4 * v42);
      v44 = 1 << v42 >> 1;
      v45 = v24 - v42;
      if (v44 > 3)
      {
        break;
      }

      if (v44 == 1)
      {
        if (v43 >= 1)
        {
          v60 = (v40 + 2 * v34);
          v61 = *(a4 + 4 * v42);
          v62 = (v35 + v36);
          do
          {
            v63 = *v62++;
            *(v60 - 1) = v45;
            *v60 = v63;
            v60 += 2;
            --v61;
          }

          while (v61);
        }

        goto LABEL_61;
      }

      if (v44 != 2)
      {
        goto LABEL_47;
      }

      if (v43 >= 1)
      {
        v46 = (v35 + v36);
        v47 = *(a4 + 4 * v42);
        v48 = (v39 + 2 * v34);
        do
        {
          v49 = *v46++;
          *(v48 - 3) = v45;
          *(v48 - 2) = v49;
          *(v48 - 1) = v45;
          *v48 = v49;
          v48 += 4;
          --v47;
        }

        while (v47);
      }

LABEL_61:
      v36 += v43;
      v34 += v43 * v44;
      if (++v42 == v24)
      {
        return v5;
      }
    }

    if (v44 == 4)
    {
      if (v43 >= 1)
      {
        v64 = (v38 + 2 * v34);
        v65 = *(a4 + 4 * v42);
        v66 = (v35 + v36);
        do
        {
          v67 = *v66++;
          *v64++ = 0x1000100010001 * ((v24 - v42) | (v67 << 8));
          --v65;
        }

        while (v65);
      }

      goto LABEL_61;
    }

    if (v44 == 8)
    {
      if (v43 >= 1)
      {
        v50 = (v37 + 2 * v34);
        v51 = *(a4 + 4 * v42);
        v52 = (v35 + v36);
        do
        {
          v53 = *v52++;
          v54 = 0x1000100010001 * ((v24 - v42) | (v53 << 8));
          *(v50 - 1) = v54;
          *v50 = v54;
          v50 += 2;
          --v51;
        }

        while (v51);
      }

      goto LABEL_61;
    }

LABEL_47:
    if (v43 >= 1)
    {
      v55 = 0;
      v56 = (v41 + 2 * v34);
      do
      {
        if (v44 >= 1)
        {
          v57 = 0;
          v58 = 0x1000100010001 * ((v24 - v42) | (*(v35 + v55 + v36) << 8));
          v59 = v56;
          do
          {
            *(v59 - 2) = v58;
            *(v59 - 1) = v58;
            *v59 = v58;
            v59[1] = v58;
            v59 += 4;
            v57 += 16;
          }

          while (v57 < v44);
        }

        ++v55;
        v56 = (v56 + 2 * v44);
      }

      while (v55 != v43);
    }

    goto LABEL_61;
  }

  return -44;
}

uint64_t HUF_decompress1X1_usingDTable_internal(_BYTE *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    return -72;
  }

  v5 = &a1[a2];
  v6 = a5 + 4;
  v7 = *(a5 + 2);
  v8 = a4 - 8;
  if (a4 < 8)
  {
    v10 = *a3;
    if (a4 > 4)
    {
      if (a4 != 5)
      {
        if (a4 != 6)
        {
          v10 |= a3[6] << 48;
        }

        v10 += a3[5] << 40;
      }

      v10 += a3[4] << 32;
    }

    else
    {
      if (a4 == 2)
      {
LABEL_24:
        v10 += a3[1] << 8;
LABEL_25:
        if (!a3[a4 - 1])
        {
          return -20;
        }

        v11 = __clz(a3[a4 - 1]) - 8 * a4 + 41;
        if (a2 < 4)
        {
          v9 = a3;
          goto LABEL_45;
        }

        v8 = 0;
        v9 = a3;
LABEL_28:
        v14 = -v7 & 0x3F;
        v15 = a1;
        while (1)
        {
          if (v8 >= 8)
          {
            LODWORD(v16) = v11 >> 3;
            v11 &= 7u;
            v18 = 1;
          }

          else
          {
            if (!v8)
            {
              break;
            }

            v16 = v11 >> 3;
            v17 = &v9[-v16];
            v18 = v17 >= a3;
            if (v17 < a3)
            {
              LODWORD(v16) = v8;
            }

            v11 -= 8 * v16;
          }

          v8 -= v16;
          v9 = &a3[v8];
          v10 = *&a3[v8];
          if (v15 >= v5 - 3 || !v18)
          {
            break;
          }

          v19 = (v6 + 2 * ((v10 << v11) >> v14));
          v20 = v11 + *v19;
          *v15 = v19[1];
          v21 = (v6 + 2 * ((v10 << v20) >> v14));
          v22 = v20 + *v21;
          v15[1] = v21[1];
          v23 = (v6 + 2 * ((v10 << v22) >> v14));
          v24 = v22 + *v23;
          v15[2] = v23[1];
          v25 = (v6 + 2 * ((v10 << v24) >> v14));
          v26 = v25[1];
          v11 = v24 + *v25;
          v12 = v15 + 4;
          v15[3] = v26;
          v15 += 4;
          if (v11 > 0x40)
          {
            goto LABEL_46;
          }
        }

        v12 = v15;
        goto LABEL_46;
      }

      if (a4 == 3)
      {
LABEL_23:
        v10 += a3[2] << 16;
        goto LABEL_24;
      }

      if (a4 != 4)
      {
        goto LABEL_25;
      }
    }

    v10 += a3[3] << 24;
    goto LABEL_23;
  }

  if (!a3[a4 - 1])
  {
    return -1;
  }

  if (a4 <= 0xFFFFFFFFFFFFFF88)
  {
    v9 = &a3[v8];
    v10 = *&a3[v8];
    v11 = 8 - (__clz(a3[a4 - 1]) ^ 0x1F);
    if (a2 <= 3)
    {
      if (a4 >= 16)
      {
        LODWORD(v13) = v11 >> 3;
        v11 &= 7u;
      }

      else
      {
        v12 = a1;
        if (!v8)
        {
LABEL_46:
          if (v12 < v5)
          {
            v27 = -v7 & 0x3F;
            v28 = &a1[a2] - v12;
            do
            {
              v29 = (v6 + 2 * ((v10 << v11) >> v27));
              v11 += *v29;
              *v12++ = v29[1];
              --v28;
            }

            while (v28);
          }

          if (v11 == 64 && v9 == a3)
          {
            return a2;
          }

          else
          {
            return -20;
          }
        }

        v13 = v11 >> 3;
        if (&v9[-v13] < a3)
        {
          LODWORD(v13) = v8;
        }

        v11 -= 8 * v13;
      }

      v9 -= v13;
      v10 = *v9;
LABEL_45:
      v12 = a1;
      goto LABEL_46;
    }

    goto LABEL_28;
  }

  return a4;
}

unint64_t HUF_decompress4X1_usingDTable_internal(unsigned __int8 *a1, uint64_t a2, unsigned __int16 *a3, unint64_t a4, uint64_t a5)
{
  if (a4 < 0xA)
  {
    return -20;
  }

  v214 = v5;
  v215 = v6;
  v11 = &a1[a2];
  v209 = 0;
  v210 = 0;
  v211 = 0;
  v204 = 0;
  v205 = 0;
  v206 = 0;
  v199 = 0;
  v200 = 0;
  v201 = 0;
  v198 = 0;
  v196 = 0u;
  v197 = 0u;
  v12 = *a3;
  v13 = a3[1];
  v14 = a3[2];
  v15 = v12 + v13 + v14 + 6;
  v16 = a4 - v15;
  v17 = a2 + 3;
  v18 = &a1[(a2 + 3) >> 2];
  v19 = &v18[(a2 + 3) >> 2];
  v20 = &v19[(a2 + 3) >> 2];
  if (a4 < v15 || v20 > v11)
  {
    return -20;
  }

  if (!v12)
  {
    return -72;
  }

  v23 = (a3 + 3);
  v24 = a3 + v12 + 6;
  v25 = *(a5 + 2);
  v212 = a3 + 3;
  v213 = a3 + 7;
  if (v12 < 8)
  {
    v26 = *v23;
    v211 = a3 + 3;
    v209 = v26;
    if (v12 > 4)
    {
      if (v12 != 5)
      {
        if (v12 != 6)
        {
          v26 |= *(a3 + 12) << 48;
        }

        v26 += *(a3 + 11) << 40;
      }

      v26 += *(a3 + 10) << 32;
    }

    else
    {
      if (v12 == 2)
      {
LABEL_25:
        v26 += *(a3 + 7) << 8;
        v209 = v26;
LABEL_26:
        if (!*(v24 - 1))
        {
          return -20;
        }

        v27 = __clz(*(v24 - 1)) - 8 * v12 + 41;
        goto LABEL_28;
      }

      if (v12 == 3)
      {
LABEL_24:
        v26 += *(a3 + 8) << 16;
        goto LABEL_25;
      }

      if (v12 != 4)
      {
        goto LABEL_26;
      }
    }

    v26 += *(a3 + 9) << 24;
    goto LABEL_24;
  }

  v23 = v24 - 8;
  v26 = *(v24 - 1);
  v211 = (v24 - 8);
  v209 = v26;
  if (!HIBYTE(v26))
  {
    return -1;
  }

  v27 = 8 - (__clz(HIBYTE(v26)) ^ 0x1F);
LABEL_28:
  LODWORD(v210) = v27;
  if (!v13)
  {
    return -72;
  }

  v28 = &v24[v13];
  v29 = v24 + 8;
  v207 = v24;
  v208 = v24 + 8;
  if (v13 >= 8)
  {
    v24 = v28 - 8;
    v30 = *(v28 - 1);
    v206 = v28 - 8;
    v204 = v30;
    if (HIBYTE(v30))
    {
      v31 = 8 - (__clz(HIBYTE(v30)) ^ 0x1F);
      goto LABEL_47;
    }

    return -1;
  }

  v30 = *v24;
  v206 = v24;
  v204 = v30;
  if (v13 > 4)
  {
    if (v13 != 5)
    {
      if (v13 != 6)
      {
        v30 |= v24[6] << 48;
      }

      v30 += v24[5] << 40;
    }

    v30 += v24[4] << 32;
    goto LABEL_42;
  }

  if (v13 != 2)
  {
    if (v13 == 3)
    {
LABEL_43:
      v30 += v24[2] << 16;
      goto LABEL_44;
    }

    if (v13 != 4)
    {
      goto LABEL_45;
    }

LABEL_42:
    v30 += v24[3] << 24;
    goto LABEL_43;
  }

LABEL_44:
  v30 += v24[1] << 8;
  v204 = v30;
LABEL_45:
  if (!*(v28 - 1))
  {
    return -20;
  }

  v31 = __clz(*(v28 - 1)) - 8 * v13 + 41;
LABEL_47:
  LODWORD(v205) = v31;
  if (!v14)
  {
    return -72;
  }

  v32 = &v28[v14];
  v202 = v28;
  v203 = v28 + 8;
  v193 = v28 + 8;
  if (v14 < 8)
  {
    v34 = *v28;
    v201 = v28;
    v199 = v34;
    if (v14 > 4)
    {
      if (v14 != 5)
      {
        if (v14 != 6)
        {
          v34 |= v28[6] << 48;
        }

        v34 += v28[5] << 40;
      }

      v34 += v28[4] << 32;
    }

    else
    {
      if (v14 == 2)
      {
LABEL_66:
        v34 += v28[1] << 8;
        v199 = v34;
        goto LABEL_67;
      }

      if (v14 == 3)
      {
LABEL_65:
        v34 += v28[2] << 16;
        goto LABEL_66;
      }

      if (v14 != 4)
      {
LABEL_67:
        if (*(v32 - 1))
        {
          v184 = v31;
          v185 = a3 + 7;
          v194 = v28;
          v195 = v34;
          v192 = v29;
          v186 = v30;
          v189 = v11;
          v190 = v27;
          v188 = v19;
          v187 = v25;
          v35 = __clz(*(v32 - 1)) - 8 * v14 + 41;
          goto LABEL_69;
        }

        return -20;
      }
    }

    v34 += v28[3] << 24;
    goto LABEL_65;
  }

  v33 = *(v32 - 1);
  v201 = v32 - 8;
  v199 = v33;
  if (!HIBYTE(v33))
  {
    return -1;
  }

  v184 = v31;
  v185 = a3 + 7;
  v194 = v32 - 8;
  v195 = v33;
  v192 = v29;
  v186 = v30;
  v189 = v11;
  v190 = v27;
  v188 = v19;
  v187 = v25;
  v35 = 8 - (__clz(HIBYTE(v33)) ^ 0x1F);
LABEL_69:
  LODWORD(v200) = v35;
  result = BIT_initDStream(&v196, v32, v16);
  v36 = v190;
  if (result > 0xFFFFFFFFFFFFFF88)
  {
    return result;
  }

  v37 = v20;
  v38 = v189 - 3;
  v39 = a5 + 4;
  v191 = v17 >> 2;
  if (v189 - v20 < 8)
  {
    v88 = v20;
    v89 = v188;
    v90 = v188;
    v91 = v18;
    v92 = a1;
  }

  else
  {
    v40 = v196;
    if (v20 >= v38)
    {
      v88 = v20;
      v89 = v188;
      v90 = v188;
      v91 = v18;
      v92 = a1;
      v47 = v186;
    }

    else
    {
      v183 = v20;
      v41 = -v187 & 0x3F;
      v42 = DWORD2(v196);
      v43 = v198;
      v44 = v197;
      v45 = 3 * v191;
      v46 = a1;
      v47 = v186;
      v48 = v184;
      do
      {
        v49 = v46;
        v50 = &v46[v191];
        v51 = &v46[2 * v191];
        v52 = &v46[v45];
        v53 = (v39 + 2 * (v26 << v36 >> v41));
        v54 = v53[1];
        LODWORD(v53) = v36 + *v53;
        *v49 = v54;
        v55 = (v39 + 2 * (v47 << v48 >> v41));
        v56 = v55[1];
        LODWORD(v55) = v48 + *v55;
        *v50 = v56;
        v57 = (v39 + 2 * (v195 << v35 >> v41));
        v58 = v47;
        v59 = v57[1];
        LODWORD(v57) = v35 + *v57;
        *v51 = v59;
        v60 = (v39 + 2 * ((v40 << v42) >> v41));
        v61 = v42 + *v60;
        *v52 = v60[1];
        v62 = (v39 + 2 * (v26 << v53 >> v41));
        LODWORD(v53) = v53 + *v62;
        v49[1] = v62[1];
        v63 = (v39 + 2 * (v58 << v55 >> v41));
        LODWORD(v55) = v55 + *v63;
        v50[1] = v63[1];
        v64 = (v39 + 2 * (v195 << v57 >> v41));
        LODWORD(v57) = v57 + *v64;
        v51[1] = v64[1];
        v65 = (v39 + 2 * ((v40 << v61) >> v41));
        v66 = v61 + *v65;
        v52[1] = v65[1];
        v67 = (v39 + 2 * (v26 << v53 >> v41));
        v68 = v67[1];
        LODWORD(v67) = v53 + *v67;
        v49[2] = v68;
        v69 = (v39 + 2 * (v58 << v55 >> v41));
        v70 = v55 + *v69;
        v50[2] = v69[1];
        v71 = (v39 + 2 * (v195 << v57 >> v41));
        v72 = v71[1];
        v73 = v57 + *v71;
        v51[2] = v72;
        v74 = (v39 + 2 * ((v40 << v66) >> v41));
        v75 = v66 + *v74;
        v52[2] = v74[1];
        v76 = (v39 + 2 * (v26 << v67 >> v41));
        v36 = v67 + *v76;
        v49[3] = v76[1];
        v77 = (v39 + 2 * (v58 << v70 >> v41));
        v78 = *v77;
        v50[3] = v77[1];
        v79 = (v39 + 2 * (v195 << v73 >> v41));
        v80 = *v79;
        v51[3] = v79[1];
        v81 = (v39 + 2 * ((v40 << v75) >> v41));
        v82 = *v81;
        v52[3] = v81[1];
        if (v23 < v185)
        {
          v83 = 3;
        }

        else
        {
          v83 = 0;
          v23 -= v36 >> 3;
          v36 &= 7u;
          v26 = *v23;
        }

        v48 = v70 + v78;
        v84 = v194;
        if (v24 < v192)
        {
          v85 = 3;
          v47 = v58;
        }

        else
        {
          v85 = 0;
          v24 -= v48 >> 3;
          v48 &= 7u;
          v47 = *v24;
        }

        v35 = v73 + v80;
        if (v194 < v193)
        {
          v86 = 3;
        }

        else
        {
          v86 = 0;
          v84 = &v194[-(v35 >> 3)];
          v35 &= 7u;
          v195 = *v84;
        }

        v42 = v75 + v82;
        if (v44 < v43)
        {
          v87 = 3;
        }

        else
        {
          v87 = 0;
          v44 = (v44 - (v42 >> 3));
          v42 &= 7u;
          v40 = *v44;
        }

        v194 = v84;
        if ((v52 + 4) >= v38)
        {
          break;
        }

        v46 = v49 + 4;
      }

      while (!(v85 | v83 | v86 | v87));
      v92 = v49 + 4;
      LODWORD(v210) = v36;
      LODWORD(v205) = v48;
      LODWORD(v200) = v35;
      DWORD2(v196) = v42;
      v211 = v23;
      v91 = &v49[v191 + 4];
      v206 = v24;
      v201 = v84;
      v90 = &v49[2 * v191 + 4];
      v88 = &v49[v45 + 4];
      *&v197 = v44;
      v89 = v188;
      v37 = v183;
    }

    v209 = v26;
    v204 = v47;
    v199 = v195;
    *&v196 = v40;
  }

  result = -20;
  if (v92 > v18 || v91 > v89 || v90 > v37)
  {
    return result;
  }

  if (v18 - v92 < 4)
  {
    v94 = v37;
    BIT_reloadDStream_0(&v209);
    v93 = v187;
    goto LABEL_99;
  }

  if (v36 > 0x40)
  {
    v93 = v187;
    v94 = v37;
LABEL_99:
    v95 = v89;
    goto LABEL_114;
  }

  v93 = v187;
  v96 = -v187 & 0x3F;
  v95 = v89;
  while (1)
  {
    if (v211 >= v213)
    {
      v100 = (v211 - (v36 >> 3));
      v211 = v100;
      v101 = v36 & 7;
      v98 = 1;
    }

    else
    {
      if (v211 == v212)
      {
        break;
      }

      v97 = v36 >> 3;
      v98 = (v211 - v97) >= v212;
      v99 = (v211 - v97) < v212 ? (v211 - v212) : v97;
      v100 = (v211 - v99);
      v211 = (v211 - v99);
      v101 = v36 - 8 * v99;
    }

    LODWORD(v210) = v101;
    v102 = *v100;
    v209 = v102;
    if (v92 >= v18 - 3 || !v98)
    {
      break;
    }

    v103 = (v39 + 2 * (v102 << v101 >> v96));
    v104 = v103[1];
    LODWORD(v210) = v101 + *v103;
    *v92 = v104;
    v105 = (v39 + 2 * (v209 << v210 >> v96));
    v106 = v105[1];
    LODWORD(v210) = v210 + *v105;
    v92[1] = v106;
    v107 = (v39 + 2 * (v209 << v210 >> v96));
    v108 = v107[1];
    LODWORD(v210) = v210 + *v107;
    v92[2] = v108;
    v109 = (v39 + 2 * (v209 << v210 >> v96));
    v110 = v109[1];
    LODWORD(v210) = v210 + *v109;
    v111 = v92 + 4;
    v92[3] = v110;
    v36 = v210;
    v92 += 4;
    if (v210 > 0x40)
    {
      goto LABEL_113;
    }
  }

  v111 = v92;
LABEL_113:
  v94 = v37;
  v92 = v111;
LABEL_114:
  v112 = v92 >= v18;
  v113 = v93;
  if (!v112)
  {
    v114 = &a1[v191] - v92;
    do
    {
      v115 = (v39 + 2 * (v209 << v210 >> (-v93 & 0x3F)));
      v116 = v115[1];
      LODWORD(v210) = v210 + *v115;
      *v92++ = v116;
      --v114;
    }

    while (v114);
  }

  if ((v95 - v91) < 4)
  {
    BIT_reloadDStream_0(&v204);
    v95 = v89;
    v119 = v91;
    v118 = v189;
    goto LABEL_121;
  }

  v117 = v205;
  v118 = v189;
  if (v205 > 0x40)
  {
    v119 = v91;
LABEL_121:
    v120 = v94;
    goto LABEL_122;
  }

  v159 = -v93 & 0x3F;
  v120 = v94;
  while (1)
  {
    if (v206 >= v208)
    {
      v162 = &v206[-(v117 >> 3)];
      v206 = v162;
      v163 = v117 & 7;
      v161 = 1;
    }

    else
    {
      if (v206 == v207)
      {
        break;
      }

      v160 = v117 >> 3;
      v161 = &v206[-v160] >= v207;
      v160 = &v206[-v160] < v207 ? (v206 - v207) : v160;
      v162 = &v206[-v160];
      v206 -= v160;
      v163 = v117 - 8 * v160;
    }

    LODWORD(v205) = v163;
    v164 = *v162;
    v204 = v164;
    if (v91 >= v95 - 3 || !v161)
    {
      break;
    }

    v165 = (v39 + 2 * (v164 << v163 >> v159));
    v166 = v165[1];
    LODWORD(v205) = v163 + *v165;
    *v91 = v166;
    v167 = (v39 + 2 * (v204 << v205 >> v159));
    v168 = v167[1];
    LODWORD(v205) = v205 + *v167;
    v91[1] = v168;
    v169 = (v39 + 2 * (v204 << v205 >> v159));
    v170 = v169[1];
    LODWORD(v205) = v205 + *v169;
    v91[2] = v170;
    v171 = (v39 + 2 * (v204 << v205 >> v159));
    v172 = v171[1];
    LODWORD(v205) = v205 + *v171;
    v119 = v91 + 4;
    v91[3] = v172;
    v117 = v205;
    v91 += 4;
    if (v205 > 0x40)
    {
      goto LABEL_122;
    }
  }

  v119 = v91;
LABEL_122:
  while (v119 < v95)
  {
    v121 = (v39 + 2 * (v204 << v205 >> (-v113 & 0x3F)));
    v122 = v121[1];
    LODWORD(v205) = v205 + *v121;
    *v119++ = v122;
  }

  if ((v120 - v90) < 4)
  {
    v140 = v120;
    BIT_reloadDStream_0(&v199);
    v120 = v140;
  }

  else
  {
    v123 = v200;
    if (v200 <= 0x40)
    {
      v124 = -v113 & 0x3F;
      v125 = v189 - 3;
      while (1)
      {
        if (v201 >= v203)
        {
          v128 = &v201[-(v123 >> 3)];
          v201 = v128;
          v129 = v123 & 7;
          v127 = 1;
        }

        else
        {
          if (v201 == v202)
          {
            break;
          }

          v126 = v123 >> 3;
          v127 = &v201[-v126] >= v202;
          v126 = &v201[-v126] < v202 ? (v201 - v202) : v126;
          v128 = &v201[-v126];
          v201 -= v126;
          v129 = v123 - 8 * v126;
        }

        LODWORD(v200) = v129;
        v130 = *v128;
        v199 = v130;
        if (v90 >= v120 - 3 || !v127)
        {
          break;
        }

        v131 = (v39 + 2 * (v130 << v129 >> v124));
        v132 = v131[1];
        LODWORD(v200) = v129 + *v131;
        *v90 = v132;
        v133 = (v39 + 2 * (v199 << v200 >> v124));
        v134 = v133[1];
        LODWORD(v200) = v200 + *v133;
        v90[1] = v134;
        v135 = (v39 + 2 * (v199 << v200 >> v124));
        v136 = v135[1];
        LODWORD(v200) = v200 + *v135;
        v90[2] = v136;
        v137 = (v39 + 2 * (v199 << v200 >> v124));
        v138 = v137[1];
        LODWORD(v200) = v200 + *v137;
        v139 = v90 + 4;
        v90[3] = v138;
        v123 = v200;
        v90 += 4;
        if (v200 > 0x40)
        {
          goto LABEL_140;
        }
      }

      v139 = v90;
      goto LABEL_140;
    }
  }

  v139 = v90;
  v125 = v189 - 3;
LABEL_140:
  while (v139 < v120)
  {
    v141 = (v39 + 2 * (v199 << v200 >> (-v113 & 0x3F)));
    v142 = v141[1];
    LODWORD(v200) = v200 + *v141;
    *v139++ = v142;
  }

  if ((v118 - v88) < 4)
  {
    BIT_reloadDStream_0(&v196);
  }

  else
  {
    v143 = DWORD2(v196);
    if (DWORD2(v196) <= 0x40)
    {
      v144 = -v113 & 0x3F;
      while (1)
      {
        if (v197 >= v198)
        {
          v147 = (v197 - (v143 >> 3));
          *&v197 = v147;
          v148 = v143 & 7;
          v146 = 1;
        }

        else
        {
          if (v197 == *(&v197 + 1))
          {
            break;
          }

          v145 = v143 >> 3;
          v146 = (v197 - v145) >= *(&v197 + 1);
          v145 = (v197 - v145) < *(&v197 + 1) ? (v197 - DWORD2(v197)) : v145;
          v147 = (v197 - v145);
          *&v197 = v197 - v145;
          v148 = v143 - 8 * v145;
        }

        DWORD2(v196) = v148;
        v149 = *v147;
        *&v196 = v149;
        if (v88 >= v125 || !v146)
        {
          break;
        }

        v150 = (v39 + 2 * ((v149 << v148) >> v144));
        v151 = v150[1];
        DWORD2(v196) = v148 + *v150;
        *v88 = v151;
        v152 = (v39 + 2 * (v196 << SBYTE8(v196) >> v144));
        v153 = v152[1];
        DWORD2(v196) += *v152;
        v88[1] = v153;
        v154 = (v39 + 2 * (v196 << SBYTE8(v196) >> v144));
        v155 = v154[1];
        DWORD2(v196) += *v154;
        v88[2] = v155;
        v156 = (v39 + 2 * (v196 << SBYTE8(v196) >> v144));
        v157 = v156[1];
        DWORD2(v196) += *v156;
        v158 = v88 + 4;
        v88[3] = v157;
        v143 = DWORD2(v196);
        v88 += 4;
        if (DWORD2(v196) > 0x40)
        {
          goto LABEL_171;
        }
      }

      v158 = v88;
LABEL_171:
      v88 = v158;
    }
  }

  if (v88 < v118)
  {
    v173 = &a1[a2] - v88;
    do
    {
      v174 = (v39 + 2 * (v196 << SBYTE8(v196) >> (-v113 & 0x3F)));
      v175 = v174[1];
      DWORD2(v196) += *v174;
      *v88++ = v175;
      --v173;
    }

    while (v173);
  }

  if (DWORD2(v196) == 64 && v197 == *(&v197 + 1) && v200 == 64 && v201 == v202 && v205 == 64 && v206 == v207 && v210 == 64 && v211 == v212)
  {
    return a2;
  }

  else
  {
    return -20;
  }
}