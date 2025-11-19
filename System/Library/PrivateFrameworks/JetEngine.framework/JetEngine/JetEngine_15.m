uint64_t StoreCompressedMetaBlockHeader(uint64_t result, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v4 = *a3;
  *(a4 + (*a3 >> 3)) = (result << (*a3 & 7)) | *(a4 + (*a3 >> 3));
  v5 = v4 + 1;
  *a3 = v4 + 1;
  if (result)
  {
    *(a4 + (v5 >> 3)) = *(a4 + (v5 >> 3));
    *a3 = v4 + 2;
    if (a2 == 1 || (v6 = __clz(a2 - 1) ^ 0x1F, v6 <= 0xE))
    {
      v7 = 4;
    }

    else
    {
      v7 = (v6 + 4) >> 2;
    }

    *(a4 + ((v4 + 2) >> 3)) = ((v7 - 4) << ((v4 + 2) & 7)) | *(a4 + ((v4 + 2) >> 3));
    v10 = v4 + 4;
    *a3 = v10;
    *(a4 + (v10 >> 3)) = ((a2 - 1) << (v10 & 7)) | *(a4 + (v10 >> 3));
    v11 = v10 + 4 * v7;
  }

  else
  {
    if (a2 == 1 || (v8 = __clz(a2 - 1) ^ 0x1F, v8 <= 0xE))
    {
      v9 = 4;
    }

    else
    {
      v9 = (v8 + 4) >> 2;
    }

    *(a4 + (v5 >> 3)) = ((v9 - 4) << (v5 & 7)) | *(a4 + (v5 >> 3));
    v12 = v4 + 3;
    *a3 = v12;
    *(a4 + (v12 >> 3)) = ((a2 - 1) << (v12 & 7)) | *(a4 + (v12 >> 3));
    v13 = v12 + 4 * v9;
    *a3 = v13;
    *(a4 + (v13 >> 3)) = *(a4 + (v13 >> 3));
    v11 = v13 + 1;
  }

  *a3 = v11;
  return result;
}

unint64_t BuildAndStoreBlockSwitchEntropyCodes(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  __memset_chk();
  memset(v38, 0, sizeof(v38));
  v39 = 0;
  if (v8)
  {
    v11 = 0;
    v12 = 0;
    v13 = 1;
    do
    {
      v14 = v10[v11];
      if (v11)
      {
        if (v12 == v14)
        {
          v15 = 0;
        }

        else
        {
          v15 = v14 + 2;
        }

        if (v13 + 1 == v14)
        {
          v15 = 1;
        }

        ++v40[v15];
      }

      v16 = v7[v11];
      if (v16 <= 0x2F0)
      {
        v17 = 14;
      }

      else
      {
        v17 = 20;
      }

      if (v16 <= 0x28)
      {
        v18 = 0;
      }

      else
      {
        v18 = 7;
      }

      if (v16 <= 0xB0)
      {
        v19 = v18;
      }

      else
      {
        v19 = v17;
      }

      v20 = (&_kBrotliPrefixCodeRanges + 4 * v19 + 4);
      do
      {
        v21 = v19;
        if (v19 == 25)
        {
          break;
        }

        ++v19;
        v22 = *v20;
        v20 += 2;
      }

      while (v16 >= v22);
      ++*(v38 + v21);
      ++v11;
      v12 = v13;
      v13 = v14;
    }

    while (v11 != v8);
  }

  result = StoreVarLenUint8(v9 - 1, a3, a4);
  if (v9 >= 2)
  {
    BuildAndStoreHuffmanTree(v40, v9 + 2, v9 + 2, a2, (a1 + 56), a1 + 314, a3, a4);
    result = BuildAndStoreHuffmanTree(v38, 0x1AuLL, 26, a2, (a1 + 830), a1 + 856, a3, a4);
    v24 = *v7;
    v25 = *(a1 + 40);
    *(a1 + 40) = *v10;
    *(a1 + 48) = v25;
    v26 = 14;
    if (v24 > 0x2F0)
    {
      v26 = 20;
    }

    v27 = 7;
    if (v24 <= 0x28)
    {
      v27 = 0;
    }

    if (v24 <= 0xB0)
    {
      v28 = v27;
    }

    else
    {
      v28 = v26;
    }

    v29 = (&_kBrotliPrefixCodeRanges + 4 * v28 + 4);
    do
    {
      v30 = v28;
      if (v28 == 25)
      {
        break;
      }

      ++v28;
      v31 = *v29;
      v29 += 2;
    }

    while (v24 >= v31);
    v32 = (&_kBrotliPrefixCodeRanges + 4 * v30);
    v33 = *(v32 + 2);
    v34 = *(a1 + 830 + v30);
    v35 = *a3;
    v36 = v24 - *v32;
    *(a4 + (*a3 >> 3)) = (*(a1 + 856 + 2 * v30) << (*a3 & 7)) | *(a4 + (*a3 >> 3));
    *a3 = v35 + v34;
    *(a4 + ((v35 + v34) >> 3)) = (v36 << ((v35 + v34) & 7)) | *(a4 + ((v35 + v34) >> 3));
    *a3 = v35 + v34 + v33;
  }

  return result;
}

unint64_t StoreTrivialContextMap(_BYTE *a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6)
{
  result = StoreVarLenUint8(a2 - 1, a5, a6);
  if (a2 >= 2)
  {
    v26 = a4;
    v13 = a3 - 1;
    v14 = a3 - 1 + a2;
    v15 = a1 + 1088;
    v16 = a1 + 1360;
    bzero(a1, 4 * v14);
    v17 = *a5;
    *(a6 + (*a5 >> 3)) = (1 << (*a5 & 7)) | *(a6 + (*a5 >> 3));
    *a5 = v17 + 1;
    *(a6 + ((v17 + 1) >> 3)) = ((a3 - 2) << ((v17 + 1) & 7)) | *(a6 + ((v17 + 1) >> 3));
    *a5 = v17 + 5;
    *&a1[4 * a3 - 4] = a2;
    *a1 = 1;
    if (v14 > a3)
    {
      memset_pattern16(&a1[4 * a3], &unk_1AB4AF4E0, 4 * a2 - 4);
    }

    result = BuildAndStoreHuffmanTree(a1, a3 - 1 + a2, a3 - 1 + a2, v26, a1 + 1088, (a1 + 1360), a5, a6);
    v18 = 0;
    v19 = *a5;
    v20 = a3 - 1;
    do
    {
      if (v18)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      v22 = v15[v21];
      *(a6 + (v19 >> 3)) = (*&v16[2 * v21] << (v19 & 7)) | *(a6 + (v19 >> 3));
      v23 = v19 + v22;
      *a5 = v23;
      v24 = v15[v13];
      *(a6 + (v23 >> 3)) = (*&v16[2 * v13] << (v23 & 7)) | *(a6 + (v23 >> 3));
      v25 = v23 + v24;
      *a5 = v25;
      *(a6 + (v25 >> 3)) = (~(-1 << (a3 - 1)) << (v25 & 7)) | *(a6 + (v25 >> 3));
      v19 = v25 + v13;
      *a5 = v25 + v13;
      --v18;
      ++v20;
    }

    while (-a2 != v18);
    *(a6 + (v19 >> 3)) = (1 << (v19 & 7)) | *(a6 + (v19 >> 3));
    *a5 = v25 + a3;
  }

  return result;
}

uint64_t EncodeContextMap(uint64_t a1, char *a2, unsigned int *a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  *&v75[255] = *MEMORY[0x1E69E9840];
  result = StoreVarLenUint8(a5 - 1, a7, a8);
  if (a5 == 1)
  {
    return result;
  }

  v71 = a5;
  v72 = a6;
  v17 = BrotliAllocate(a1);
  v18 = *a3;
  if (a4 >= 2)
  {
    v19 = a4 - 1;
    v20 = a3 + 1;
    do
    {
      v22 = *v20++;
      v21 = v22;
      if (v22 > v18)
      {
        v18 = v21;
      }

      --v19;
    }

    while (v19);
  }

  v23 = 0;
  v24 = a2 + 1088;
  v25 = xmmword_1AB4CE310;
  v26 = xmmword_1AB4CE320;
  v27 = xmmword_1AB4CE330;
  v28 = xmmword_1AB4CE340;
  v29 = xmmword_1AB4CE350;
  v30 = xmmword_1AB4CE360;
  v31 = xmmword_1AB465F90;
  v32 = xmmword_1AB465FA0;
  v33 = vdupq_n_s64(v18);
  v34 = vdupq_n_s64(0x10uLL);
  do
  {
    v35 = vmovn_s64(vcgeq_u64(v33, v32));
    if (vuzp1_s8(vuzp1_s16(v35, *v25.i8), *v25.i8).u8[0])
    {
      v75[v23 - 1] = v23;
    }

    if (vuzp1_s8(vuzp1_s16(v35, *&v25), *&v25).i8[1])
    {
      v75[v23] = v23 | 1;
    }

    if (vuzp1_s8(vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v33, *&v31))), *&v25).i8[2])
    {
      v75[v23 + 1] = v23 | 2;
      v75[v23 + 2] = v23 | 3;
    }

    v36 = vmovn_s64(vcgeq_u64(v33, v30));
    if (vuzp1_s8(*&v25, vuzp1_s16(v36, *&v25)).i32[1])
    {
      v75[v23 + 3] = v23 | 4;
    }

    if (vuzp1_s8(*&v25, vuzp1_s16(v36, *&v25)).i8[5])
    {
      v75[v23 + 4] = v23 | 5;
    }

    if (vuzp1_s8(*&v25, vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v33, *&v29)))).i8[6])
    {
      v75[v23 + 5] = v23 | 6;
      v75[v23 + 6] = v23 | 7;
    }

    v37 = vmovn_s64(vcgeq_u64(v33, v28));
    if (vuzp1_s8(vuzp1_s16(v37, *v25.i8), *v25.i8).u8[0])
    {
      v75[v23 + 7] = v23 | 8;
    }

    if (vuzp1_s8(vuzp1_s16(v37, *&v25), *&v25).i8[1])
    {
      v75[v23 + 8] = v23 | 9;
    }

    if (vuzp1_s8(vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v33, *&v27))), *&v25).i8[2])
    {
      v75[v23 + 9] = v23 | 0xA;
      v75[v23 + 10] = v23 | 0xB;
    }

    v38 = vmovn_s64(vcgeq_u64(v33, v26));
    if (vuzp1_s8(*&v25, vuzp1_s16(v38, *&v25)).i32[1])
    {
      v75[v23 + 11] = v23 | 0xC;
    }

    if (vuzp1_s8(*&v25, vuzp1_s16(v38, *&v25)).i8[5])
    {
      v75[v23 + 12] = v23 | 0xD;
    }

    if (vuzp1_s8(*&v25, vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v33, *&v25)))).i8[6])
    {
      v75[v23 + 13] = v23 | 0xE;
      v75[v23 + 14] = v23 | 0xF;
    }

    v30 = vaddq_s64(v30, v34);
    v23 += 16;
    v31 = vaddq_s64(v31, v34);
    v32 = vaddq_s64(v32, v34);
    v29 = vaddq_s64(v29, v34);
    v28 = vaddq_s64(v28, v34);
    v27 = vaddq_s64(v27, v34);
    v26 = vaddq_s64(v26, v34);
    v25 = vaddq_s64(v25, v34);
  }

  while (((v18 + 16) & 0x1FFFFFFF0) != v23);
  v73 = (a2 + 1360);
  if (!a4)
  {
    goto LABEL_67;
  }

  v39 = 0;
  v40 = v18 + 1;
  LOBYTE(v41) = __src;
  do
  {
    if (v40)
    {
      v42 = 0;
      v41 = LOBYTE(a3[v39]);
      while (v75[v42 - 1] != v41)
      {
        if (v40 == ++v42)
        {
          *(v17 + 4 * v39) = v40;
          LOBYTE(v41) = v75[v40 - 1];
          v42 = v40;
          goto LABEL_42;
        }
      }

      *(v17 + 4 * v39) = v42;
      if (!v42)
      {
        goto LABEL_43;
      }

LABEL_42:
      memmove(v75, &__src, v42);
    }

    else
    {
      *(v17 + 4 * v39) = 0;
    }

LABEL_43:
    __src = v41;
    ++v39;
  }

  while (v39 != a4);
  v43 = 0;
  v44 = 0;
  v24 = a2 + 1088;
  do
  {
    if (a4 <= v44 + 1)
    {
      v45 = v44 + 1;
    }

    else
    {
      v45 = a4;
    }

    v46 = (v17 + 4 * v44);
    while (*(v17 + 4 * v44))
    {
      ++v44;
      ++v46;
      if (v45 == v44)
      {
        v50 = 0;
LABEL_63:
        if (v50 > v43)
        {
          v43 = v50;
        }

        goto LABEL_65;
      }
    }

    if (a4 <= v44)
    {
      v49 = 0;
    }

    else
    {
      v47 = 0;
      while (!*v46++)
      {
        if (v44 - a4 == --v47)
        {
          v50 = a4 - v44;
          goto LABEL_63;
        }
      }

      v44 -= v47;
      v49 = -v47;
    }

    if (v49 > v43)
    {
      v43 = v49;
    }
  }

  while (v44 < a4);
LABEL_65:
  if (v43)
  {
    v51 = __clz(v43) ^ 0x1F;
  }

  else
  {
LABEL_67:
    v51 = 0;
  }

  if (v51 >= 6)
  {
    v52 = 6;
  }

  else
  {
    v52 = v51;
  }

  if (!a4)
  {
    bzero(a2, 0x440uLL);
    v53 = 0;
LABEL_95:
    v61 = 1;
    goto LABEL_96;
  }

  v53 = 0;
  v54 = 0;
  v55 = 2 << v52;
  do
  {
    v56 = *(v17 + 4 * v54);
    if (v56)
    {
      *(v17 + 4 * v53) = v56 + v52;
      ++v54;
LABEL_75:
      ++v53;
      continue;
    }

    if (v54 + 1 >= a4)
    {
      v57 = 1;
      ++v54;
      goto LABEL_86;
    }

    v57 = a4 - v54;
    v58 = 1;
    while (!*(v17 + 4 * v54 + 4 * v58))
    {
      if (a4 - v54 == ++v58)
      {
        goto LABEL_85;
      }
    }

    v57 = v58;
LABEL_85:
    v54 += v57;
    if (v57)
    {
LABEL_86:
      while (1)
      {
        v59 = v57 - v55;
        if (v57 < v55)
        {
          break;
        }

        *(v17 + 4 * v53++) = v52 | (~(-1 << v52) << 9);
        v57 = v59 + 1;
        if (v59 == -1)
        {
          goto LABEL_76;
        }
      }

      v60 = __clz(v57);
      *(v17 + 4 * v53) = v60 ^ 0x1F | (((-1 << (v60 ^ 0x1F)) + v57) << 9);
      goto LABEL_75;
    }

LABEL_76:
    ;
  }

  while (v54 < a4);
  bzero(a2, 0x440uLL);
  v61 = v53 == 0;
  if (!v53)
  {
    goto LABEL_95;
  }

  for (i = 0; i != v53; ++i)
  {
    v63 = *(v17 + 4 * i) & 0x1FF;
    ++*&a2[4 * v63];
  }

LABEL_96:
  v64 = *a7;
  *(a8 + (*a7 >> 3)) = ((v51 != 0) << (*a7 & 7)) | *(a8 + (*a7 >> 3));
  *a7 = v64 + 1;
  if (v51)
  {
    *(a8 + ((v64 + 1) >> 3)) = ((v52 - 1) << ((v64 + 1) & 7)) | *(a8 + ((v64 + 1) >> 3));
    *a7 = v64 + 5;
  }

  BuildAndStoreHuffmanTree(a2, v71 + v52, v71 + v52, v72, v24, v73, a7, a8);
  v65 = *a7;
  if (!v61)
  {
    v66 = v17;
    do
    {
      v68 = *v66++;
      v67 = v68;
      v69 = v68 & 0x1FF;
      v70 = v24[v69];
      *(a8 + (v65 >> 3)) = (*(v73 + 2 * v69) << (v65 & 7)) | *(a8 + (v65 >> 3));
      v65 += v70;
      *a7 = v65;
      if (v69 - 1 < v52)
      {
        *(a8 + (v65 >> 3)) = (v67 >> 9 << (v65 & 7)) | *(a8 + (v65 >> 3));
        v65 += v69;
        *a7 = v65;
      }

      --v53;
    }

    while (v53);
  }

  *(a8 + (v65 >> 3)) = (1 << (v65 & 7)) | *(a8 + (v65 >> 3));
  *a7 = v65 + 1;

  return BrotliFree(a1);
}

void *StoreSymbol(void *result, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v4 = result[115];
  if (!v4)
  {
    v5 = result[114] + 1;
    result[114] = v5;
    v6 = *(result[3] + 4 * v5);
    v7 = *(result[2] + v5);
    result[115] = v6;
    result[116] = *result * v7;
    v8 = result[5];
    if (v8 + 1 == v7)
    {
      v9 = 1;
    }

    else if (result[6] == v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = v7 + 2;
    }

    result[5] = v7;
    result[6] = v8;
    v10 = *(result + v9 + 56);
    v11 = *(result + v9 + 157);
    v12 = *a3;
    *(a4 + (*a3 >> 3)) = (v11 << (*a3 & 7)) | *(a4 + (*a3 >> 3));
    v13 = v12 + v10;
    *a3 = v13;
    v14 = 14;
    if (v6 > 0x2F0)
    {
      v14 = 20;
    }

    v15 = 7;
    if (v6 <= 0x28)
    {
      v15 = 0;
    }

    if (v6 <= 0xB0)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    v17 = (&_kBrotliPrefixCodeRanges + 4 * v16 + 4);
    do
    {
      v18 = v16;
      if (v16 == 25)
      {
        break;
      }

      ++v16;
      v19 = *v17;
      v17 += 2;
    }

    while (v6 >= v19);
    v20 = (&_kBrotliPrefixCodeRanges + 4 * v18);
    v21 = *(v20 + 2);
    v22 = v6 - *v20;
    v23 = *(result + v18 + 830);
    *(a4 + (v13 >> 3)) = (*(result + v18 + 428) << (v13 & 7)) | *(a4 + (v13 >> 3));
    v24 = v13 + v23;
    *a3 = v24;
    *(a4 + (v24 >> 3)) = (v22 << (v24 & 7)) | *(a4 + (v24 >> 3));
    *a3 = v24 + v21;
    v4 = result[115];
  }

  result[115] = v4 - 1;
  v25 = result[116] + a2;
  v26 = *(result[117] + v25);
  v27 = *a3;
  *(a4 + (*a3 >> 3)) = (*(result[118] + 2 * v25) << (*a3 & 7)) | *(a4 + (*a3 >> 3));
  *a3 = v27 + v26;
  return result;
}

void *StoreSymbolWithContext(void *result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, char a7)
{
  v7 = result[115];
  if (!v7)
  {
    v8 = result[114] + 1;
    result[114] = v8;
    v9 = *(result[3] + 4 * v8);
    v10 = *(result[2] + v8);
    result[115] = v9;
    result[116] = v10 << a7;
    v11 = result[5];
    if (v11 + 1 == v10)
    {
      v12 = 1;
    }

    else if (result[6] == v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = v10 + 2;
    }

    result[5] = v10;
    result[6] = v11;
    v13 = *(result + v12 + 56);
    v14 = *(result + v12 + 157);
    v15 = *a5;
    *(a6 + (*a5 >> 3)) = (v14 << (*a5 & 7)) | *(a6 + (*a5 >> 3));
    v16 = v15 + v13;
    *a5 = v16;
    v17 = 14;
    if (v9 > 0x2F0)
    {
      v17 = 20;
    }

    v18 = 7;
    if (v9 <= 0x28)
    {
      v18 = 0;
    }

    if (v9 <= 0xB0)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    v20 = (&_kBrotliPrefixCodeRanges + 4 * v19 + 4);
    do
    {
      v21 = v19;
      if (v19 == 25)
      {
        break;
      }

      ++v19;
      v22 = *v20;
      v20 += 2;
    }

    while (v9 >= v22);
    v23 = (&_kBrotliPrefixCodeRanges + 4 * v21);
    v24 = *(v23 + 2);
    v25 = v9 - *v23;
    v26 = *(result + v21 + 830);
    *(a6 + (v16 >> 3)) = (*(result + v21 + 428) << (v16 & 7)) | *(a6 + (v16 >> 3));
    v27 = v16 + v26;
    *a5 = v27;
    *(a6 + (v27 >> 3)) = (v25 << (v27 & 7)) | *(a6 + (v27 >> 3));
    *a5 = v27 + v24;
    v7 = result[115];
  }

  result[115] = v7 - 1;
  v28 = a2 + *result * *(a4 + 4 * result[116] + 4 * a3);
  v29 = *(result[117] + v28);
  v30 = *a5;
  *(a6 + (*a5 >> 3)) = (*(result[118] + 2 * v28) << (*a5 & 7)) | *(a6 + (*a5 >> 3));
  *a5 = v30 + v29;
  return result;
}

uint64_t BrotliStoreMetaBlockTrivial(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t *a10, uint64_t a11)
{
  v26 = a6;
  v18 = BrotliAllocate(a1);
  v25 = *(a7 + 64);
  StoreCompressedMetaBlockHeader(a6, a4, a10, a11);
  bzero(v18, 0x400uLL);
  *(v18 + 1024) = 0;
  *(v18 + 1032) = 0x7FF0000000000000;
  bzero((v18 + 1040), 0xB00uLL);
  *(v18 + 3856) = 0;
  *(v18 + 3864) = 0x7FF0000000000000;
  bzero((v18 + 3872), 0x880uLL);
  *(v18 + 6048) = 0;
  *(v18 + 6056) = 0x7FF0000000000000;
  BuildHistograms(a2, a3, a5, a8, a9, v18, v18 + 1040, v18 + 3872);
  v19 = *a10;
  *(a11 + (*a10 >> 3)) = *(a11 + (*a10 >> 3));
  *a10 = v19 + 13;
  BuildAndStoreHuffmanTree(v18, 0x100uLL, 256, v18 + 9364, (v18 + 6064), v18 + 6320, a10, a11);
  BuildAndStoreHuffmanTree(v18 + 1040, 0x2C0uLL, 704, v18 + 9364, (v18 + 6832), v18 + 7536, a10, a11);
  BuildAndStoreHuffmanTree(v18 + 3872, 0x8CuLL, v25, v18 + 9364, (v18 + 8944), v18 + 9084, a10, a11);
  StoreDataWithHuffmanCodes(a2, a3, a5, a8, a9, v18 + 6064, v18 + 6320, v18 + 6832, v18 + 7536, v18 + 8944, v18 + 9084, a10, a11);
  result = BrotliFree(a1);
  if (v26)
  {
    v21 = *a10 + 7;
    *a10 = v21 & 0xFFFFFFF8;
    *(a11 + (v21 >> 3)) = 0;
  }

  return result;
}

uint64_t BuildHistograms(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5)
  {
    v8 = 0;
    v9 = *(a7 + 2816);
    do
    {
      v10 = (a4 + 16 * v8);
      v12 = *v10;
      v11 = v10[1];
      v13 = *(v10 + 6);
      v14 = *(v10 + 7);
      ++*(a7 + 4 * v13);
      *(a7 + 2816) = ++v9;
      if (v12)
      {
        v15 = *(a6 + 1024) + 1;
        do
        {
          ++*(a6 + 4 * *(result + (a2 & a3)));
          *(a6 + 1024) = v15;
          ++a2;
          ++v15;
          --v12;
        }

        while (v12);
      }

      v16 = v11 & 0x1FFFFFF;
      if (v16)
      {
        if (v13 >= 0x80)
        {
          ++*(a8 + 4 * (v14 & 0x3FF));
          ++*(a8 + 2176);
        }
      }

      a2 += v16;
      ++v8;
    }

    while (v8 != a5);
  }

  return result;
}

unint64_t BuildAndStoreHuffmanTree(unint64_t result, size_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v14 = result;
  v43 = *MEMORY[0x1E69E9840];
  v41 = 0u;
  v42 = 0u;
  if (a2)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      if (*(result + 4 * v15))
      {
        if (v16 > 3)
        {
          if (v16 != 4)
          {
            break;
          }
        }

        else
        {
          *(&v41 + v16) = v15;
        }

        ++v16;
      }

      ++v15;
    }

    while (a2 != v15);
  }

  else
  {
    v16 = 0;
  }

  v17 = 64 - __clz(a3 - 1);
  if (a3 == 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  v19 = v16 - 1;
  if (v16 <= 1)
  {
    v20 = *a7;
    *(a8 + (*a7 >> 3)) = (1 << (*a7 & 7)) | *(a8 + (*a7 >> 3));
    v20 += 4;
    *a7 = v20;
    v21 = v41;
    *(a8 + (v20 >> 3)) = (v41 << (v20 & 7)) | *(a8 + (v20 >> 3));
    *a7 = v20 + v18;
    a5[v21] = 0;
    *(a6 + 2 * v21) = 0;
    return result;
  }

  bzero(a5, a2);
  BrotliCreateHuffmanTree(v14, a2, 15, a4, a5);
  result = BrotliConvertBitDepthsToSymbols(a5, a2, a6);
  if (v16 <= 4)
  {
    v22 = 0;
    v23 = *a7;
    *(a8 + (*a7 >> 3)) = (1 << (*a7 & 7)) | *(a8 + (*a7 >> 3));
    *a7 = v23 + 2;
    *(a8 + ((v23 + 2) >> 3)) = (v19 << ((v23 + 2) & 7)) | *(a8 + ((v23 + 2) >> 3));
    v24 = v23 + 4;
    *a7 = v24;
    v25 = &v41 + 8;
    do
    {
      v26 = v22 + 1;
      if (v22 + 1 < v16)
      {
        v27 = *(&v41 + v22);
        v28 = v25;
        v29 = v19;
        do
        {
          v30 = *v28;
          result = a5[v27];
          if (a5[*v28] < result)
          {
            *v28 = v27;
            *(&v41 + v22) = v30;
            v27 = v30;
          }

          ++v28;
          --v29;
        }

        while (v29);
      }

      --v19;
      v25 += 8;
      ++v22;
    }

    while (v26 != v16);
    v31 = v41;
    v32 = v24 >> 3;
    v33 = v41 << (v24 & 7);
    v34 = v24 + v18;
    if (v16 == 3)
    {
      *(a8 + v32) = v33 | *(a8 + v32);
      *a7 = v34;
      v35 = v42;
      *(a8 + (v34 >> 3)) = (*(&v41 + 1) << (v34 & 7)) | *(a8 + (v34 >> 3));
      v34 += v18;
      *a7 = v34;
      *(a8 + (v34 >> 3)) = (v35 << (v34 & 7)) | *(a8 + (v34 >> 3));
    }

    else
    {
      if (v16 != 2)
      {
        *(a8 + v32) = v33 | *(a8 + v32);
        *a7 = v34;
        v37 = v42;
        *(a8 + (v34 >> 3)) = (*(&v41 + 1) << (v34 & 7)) | *(a8 + (v34 >> 3));
        v38 = v34 + v18;
        *a7 = v38;
        *(a8 + (v38 >> 3)) = (v37 << (v38 & 7)) | *(a8 + (v38 >> 3));
        v39 = v38 + v18;
        *a7 = v39;
        *(a8 + (v39 >> 3)) = (*(&v42 + 1) << (v39 & 7)) | *(a8 + (v39 >> 3));
        v40 = v39 + v18;
        *a7 = v40;
        *(a8 + (v40 >> 3)) = ((a5[v31] == 1) << (v40 & 7)) | *(a8 + (v40 >> 3));
        v36 = v40 + 1;
        goto LABEL_33;
      }

      *(a8 + v32) = v33 | *(a8 + v32);
      *a7 = v34;
      *(a8 + (v34 >> 3)) = (*(&v41 + 1) << (v34 & 7)) | *(a8 + (v34 >> 3));
    }

    v36 = v34 + v18;
LABEL_33:
    *a7 = v36;
    return result;
  }

  return BrotliStoreHuffmanTree(a5, a2, a4, a7, a8);
}

uint64_t StoreDataWithHuffmanCodes(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t *a12, uint64_t a13)
{
  if (a5)
  {
    v13 = 0;
    v14 = *a12;
    do
    {
      v15 = (a4 + 16 * v13);
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[2];
      v19 = *(v15 + 6);
      v20 = *(v15 + 7);
      v21 = *(a8 + v19);
      *(a13 + (v14 >> 3)) = (*(a9 + 2 * v19) << (v14 & 7)) | *(a13 + (v14 >> 3));
      v22 = v14 + v21;
      *a12 = v22;
      LOWORD(v23) = v16;
      if (v16 >= 6)
      {
        if (v16 > 0x81)
        {
          if (v16 > 0x841)
          {
            if (v16 >> 1 >= 0xC21)
            {
              if (v16 < 0x5842)
              {
                LOWORD(v23) = 22;
              }

              else
              {
                LOWORD(v23) = 23;
              }
            }

            else
            {
              LOWORD(v23) = 21;
            }
          }

          else
          {
            LODWORD(v23) = (__clz(v16 - 66) ^ 0x1F) + 10;
          }
        }

        else
        {
          v24 = (__clz(v16 - 2) ^ 0x1F) - 1;
          v23 = ((v16 - 2) >> v24) + 2 * v24 + 2;
        }
      }

      v25 = HIBYTE(v17) & 0x80 | (v17 >> 25);
      v26 = v17 & 0x1FFFFFF;
      v27 = (v26 + v25);
      if (v27 > 9)
      {
        if (v27 > 0x85)
        {
          v30 = (__clz(v27 - 70) ^ 0x1F) + 12;
          if (v27 <= 0x845)
          {
            LOWORD(v28) = v30;
          }

          else
          {
            LOWORD(v28) = 23;
          }
        }

        else
        {
          v29 = (__clz(v27 - 6) ^ 0x1F) - 1;
          v28 = ((v27 - 6) >> v29) + 2 * v29 + 4;
        }
      }

      else
      {
        LOWORD(v28) = v26 + v25 - 2;
      }

      v31 = 4 * v23;
      v32 = *(&kBrotliInsExtra + v31);
      v33 = 4 * v28;
      v34 = ((v27 - *(&kBrotliCopyBase + v33)) << v32) | (v16 - *(&kBrotliInsBase + v31));
      v35 = (*(&kBrotliCopyExtra + v33) + v32);
      *(a13 + (v22 >> 3)) = (v34 << (v22 & 7)) | *(a13 + (v22 >> 3));
      v14 = v22 + v35;
      *a12 = v14;
      if (v16)
      {
        do
        {
          v36 = *(result + (a2 & a3));
          v37 = *(a6 + v36);
          *(a13 + (v14 >> 3)) = (*(a7 + 2 * v36) << (v14 & 7)) | *(a13 + (v14 >> 3));
          v14 += v37;
          *a12 = v14;
          ++a2;
          --v16;
        }

        while (v16);
      }

      if (v26)
      {
        if (v19 >= 0x80)
        {
          v38 = *(a10 + (v20 & 0x3FF));
          *(a13 + (v14 >> 3)) = (*(a11 + 2 * (v20 & 0x3FF)) << (v14 & 7)) | *(a13 + (v14 >> 3));
          *a12 = v14 + v38;
          *(a13 + ((v14 + v38) >> 3)) = (v18 << ((v14 + v38) & 7)) | *(a13 + ((v14 + v38) >> 3));
          v14 += v38 + (v20 >> 10);
          *a12 = v14;
        }
      }

      a2 += v26;
      ++v13;
    }

    while (v13 != a5);
  }

  return result;
}

uint64_t BrotliStoreMetaBlockFast(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unint64_t *a10, uint64_t a11)
{
  v33 = *MEMORY[0x1E69E9840];
  v17 = BrotliAllocate(a1);
  v18 = *(a7 + 64);
  StoreCompressedMetaBlockHeader(a6, a4, a10, a11);
  v19 = *a10;
  *(a11 + (*a10 >> 3)) = *(a11 + (*a10 >> 3));
  *a10 = v19 + 13;
  if (a9 > 0x80)
  {
    bzero(v17, 0x400uLL);
    *(v17 + 1024) = 0;
    *(v17 + 1032) = 0x7FF0000000000000;
    bzero((v17 + 1040), 0xB00uLL);
    *(v17 + 3856) = 0;
    *(v17 + 3864) = 0x7FF0000000000000;
    bzero((v17 + 3872), 0x880uLL);
    *(v17 + 6048) = 0;
    *(v17 + 6056) = 0x7FF0000000000000;
    BuildHistograms(a2, a3, a5, a8, a9, v17, v17 + 1040, v17 + 3872);
    BrotliBuildAndStoreHuffmanTreeFast(v17 + 9364, v17, *(v17 + 1024), 8, (v17 + 6064), v17 + 6320, a10, a11);
    BrotliBuildAndStoreHuffmanTreeFast(v17 + 9364, v17 + 1040, *(v17 + 3856), 10, (v17 + 6832), v17 + 7536, a10, a11);
    BrotliBuildAndStoreHuffmanTreeFast(v17 + 9364, v17 + 3872, *(v17 + 6048), (__clz(v18 - 1) ^ 0x1F) + 1, (v17 + 8944), v17 + 9084, a10, a11);
    StoreDataWithHuffmanCodes(a2, a3, a5, a8, a9, v17 + 6064, v17 + 6320, v17 + 6832, v17 + 7536, v17 + 8944, v17 + 9084, a10, a11);
    v23 = a1;
  }

  else
  {
    bzero(v32, 0x400uLL);
    if (a9)
    {
      v20 = 0;
      v21 = 0;
      v22 = a3;
      v23 = a1;
      do
      {
        v24 = (a8 + 16 * v20);
        v25 = *v24;
        if (v25)
        {
          v26 = *v24;
          do
          {
            ++v32[*(a2 + (v22++ & a5))];
            --v26;
          }

          while (v26);
        }

        v21 += v25;
        v22 += v24[1] & 0x1FFFFFF;
        ++v20;
      }

      while (v20 != a9);
    }

    else
    {
      v21 = 0;
      v23 = a1;
    }

    BrotliBuildAndStoreHuffmanTreeFast(v17 + 9364, v32, v21, 8, (v17 + 6064), v17 + 6320, a10, a11);
    v27 = *a10;
    *(a11 + (*a10 >> 3)) = (0x92624416307003 << (*a10 & 7)) | *(a11 + (*a10 >> 3));
    *a10 = v27 + 56;
    *(a11 + ((v27 + 56) >> 3)) = *(a11 + ((v27 + 56) >> 3));
    *a10 = v27 + 59;
    *(a11 + ((v27 + 59) >> 3)) = (57269251 << ((v27 + 59) & 7)) | *(a11 + ((v27 + 59) >> 3));
    *a10 = v27 + 87;
    StoreDataWithHuffmanCodes(a2, a3, a5, a8, a9, v17 + 6064, v17 + 6320, &kStaticCommandCodeDepth, &kStaticCommandCodeBits, &kStaticDistanceCodeDepth, &kStaticDistanceCodeBits, a10, a11);
  }

  result = BrotliFree(v23);
  if (a6)
  {
    v29 = *a10 + 7;
    *a10 = v29 & 0xFFFFFFF8;
    *(a11 + (v29 >> 3)) = 0;
  }

  return result;
}

void *BrotliStoreUncompressedMetaBlock(int a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t a5, unint64_t *a6, uint64_t a7)
{
  v9 = a5;
  v12 = a4 & a3;
  v13 = *a6;
  *(a7 + (*a6 >> 3)) = *(a7 + (*a6 >> 3));
  if (a5 == 1 || (v14 = __clz(a5 - 1) ^ 0x1F, v14 <= 0xE))
  {
    v15 = 4;
  }

  else
  {
    v15 = (v14 + 4) >> 2;
  }

  *(a7 + ((v13 + 1) >> 3)) = ((v15 - 4) << ((v13 + 1) & 7)) | *(a7 + ((v13 + 1) >> 3));
  v16 = v13 + 3;
  *(a7 + (v16 >> 3)) = ((a5 - 1) << (v16 & 7)) | *(a7 + (v16 >> 3));
  *a6 = v16;
  v17 = v16 + 4 * v15;
  *(a7 + (v17 >> 3)) = (1 << (v17 & 7)) | *(a7 + (v17 >> 3));
  v18 = v17 + 8;
  v19 = v18 & 0xFFFFFFF8;
  v20 = (a7 + (v19 >> 3));
  *v20 = 0;
  v21 = a4 + 1;
  if (v12 + a5 <= a4 + 1)
  {
    v23 = v18 >> 3;
  }

  else
  {
    v22 = v21 - v12;
    memcpy(v20, (a2 + v12), v21 - v12);
    v12 = 0;
    v19 += 8 * v22;
    v9 -= v22;
    v23 = v19 >> 3;
  }

  result = memcpy((a7 + v23), (a2 + v12), v9);
  v25 = v19 + 8 * v9;
  *a6 = v25;
  *(a7 + (v25 >> 3)) = 0;
  if (a1)
  {
    *(a7 + (v25 >> 3)) = 1 << (v19 & 7);
    *(a7 + ((v25 + 1) >> 3)) = (1 << ((v25 + 1) & 7)) | *(a7 + ((v25 + 1) >> 3));
    v26 = v25 + 9;
    *a6 = v26 & 0xFFFFFFF8;
    *(a7 + (v26 >> 3)) = 0;
  }

  return result;
}

uint64_t StoreVarLenUint8(uint64_t result, unint64_t *a2, uint64_t a3)
{
  if (result)
  {
    v3 = __clz(result) ^ 0x1F;
    v4 = *a2;
    *(a3 + (*a2 >> 3)) = (1 << (*a2 & 7)) | *(a3 + (*a2 >> 3));
    *a2 = v4 + 1;
    *(a3 + ((v4 + 1) >> 3)) = (v3 << ((v4 + 1) & 7)) | *(a3 + ((v4 + 1) >> 3));
    v4 += 4;
    *a2 = v4;
    *(a3 + (v4 >> 3)) = (((-1 << v3) + result) << (v4 & 7)) | *(a3 + (v4 >> 3));
    v5 = v4 + v3;
  }

  else
  {
    v6 = *a2;
    *(a3 + (*a2 >> 3)) = *(a3 + (*a2 >> 3));
    v5 = v6 + 1;
  }

  *a2 = v5;
  return result;
}

uint64_t BrotliDecoderStateInit(uint64_t a1, void *(*a2)(int a1, size_t size), void (*a3)(int a1, void *a2), uint64_t a4)
{
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = BrotliDefaultAllocFunc;
  }

  if (a2)
  {
    v9 = a3;
  }

  else
  {
    v9 = BrotliDefaultFreeFunc;
  }

  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  if (a2)
  {
    v10 = a4;
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 64) = v10;
  *(a1 + 128) = 0;
  BrotliInitBitReader((a1 + 8));
  *a1 = 0;
  v11 = *(a1 + 772);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 136) = 0;
  *(a1 + 408) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 744) = 0;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0;
  *(a1 + 784) = 0u;
  *(a1 + 772) = v11 & 0xFFFFF000 | 0x10;
  *(a1 + 112) = xmmword_1AB4D2EF0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 440) = 63;
  *(a1 + 808) = 0;
  result = BrotliSharedDictionaryCreateInstance(a2, a3, a4);
  *(a1 + 800) = result;
  if (result)
  {
    *(a1 + 736) = 0;
    *(a1 + 720) = 0u;
    return 1;
  }

  return result;
}

double BrotliDecoderStateMetablockBegin(uint64_t a1)
{
  *(a1 + 132) = 0;
  *(a1 + 280) = 0x1000000;
  *(a1 + 288) = vdupq_n_s64(0x1000000uLL);
  *(a1 + 312) = 1;
  *(a1 + 320) = vdupq_n_s64(1uLL);
  *(a1 + 336) = xmmword_1AB4CE300;
  *(a1 + 352) = xmmword_1AB4CE300;
  *(a1 + 368) = xmmword_1AB4CE300;
  *(a1 + 716) = 0;
  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 784) = 0u;
  return result;
}

uint64_t BrotliDecoderStateCleanupAfterMetablock(uint64_t a1)
{
  (*(a1 + 56))(*(a1 + 64), *(a1 + 792));
  *(a1 + 792) = 0;
  (*(a1 + 56))(*(a1 + 64), *(a1 + 784));
  *(a1 + 784) = 0;
  (*(a1 + 56))(*(a1 + 64), *(a1 + 408));
  *(a1 + 408) = 0;
  (*(a1 + 56))(*(a1 + 64), *(a1 + 184));
  *(a1 + 184) = 0;
  (*(a1 + 56))(*(a1 + 64), *(a1 + 208));
  *(a1 + 208) = 0;
  result = (*(a1 + 56))(*(a1 + 64), *(a1 + 232));
  *(a1 + 232) = 0;
  return result;
}

uint64_t BrotliDecoderStateCleanup(uint64_t a1)
{
  BrotliDecoderStateCleanupAfterMetablock(a1);
  (*(a1 + 56))(*(a1 + 64), *(a1 + 808));
  *(a1 + 808) = 0;
  BrotliSharedDictionaryDestroyInstance(*(a1 + 800));
  *(a1 + 800) = 0;
  (*(a1 + 56))(*(a1 + 64), *(a1 + 136));
  *(a1 + 136) = 0;
  result = (*(a1 + 56))(*(a1 + 64), *(a1 + 256));
  *(a1 + 256) = 0;
  return result;
}

BOOL BrotliDecoderHuffmanTreeGroupInit(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v9 = (*(a1 + 48))(*(a1 + 64), (4 * a4 + 1512) * a5);
  *(a2 + 16) = a3;
  *(a2 + 18) = v6;
  *(a2 + 20) = a5;
  *a2 = v9;
  *(a2 + 8) = v9 + 8 * a5;
  return v9 != 0;
}

id default argument 0 of AppVersionFieldProvider.init(bundle:)()
{
  v0 = [objc_opt_self() mainBundle];

  return v0;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1AB129BE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 152))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1AB129C40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t sub_1AB129D1C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SQLiteResult(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SQLiteResult(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1AB129E50(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x1AC59D4E0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_1AB129EA4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AB4621B4();
  *a2 = 0;
  *(a2 + 4) = 1;
  return v3 & 1;
}

uint64_t sub_1AB129EFC@<X0>(_DWORD *a1@<X8>)
{
  result = sub_1AB4621C4();
  *a1 = result;
  return result;
}

uint64_t sub_1AB129F24(uint64_t a1, id *a2)
{
  result = sub_1AB460524();
  *a2 = 0;
  return result;
}

uint64_t sub_1AB129F9C(uint64_t a1, id *a2)
{
  v3 = sub_1AB460534();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1AB12A01C@<X0>(uint64_t *a1@<X8>)
{
  sub_1AB460544();
  v2 = sub_1AB460514();

  *a1 = v2;
  return result;
}

uint64_t sub_1AB12A060()
{
  swift_getWitnessTable();

  return sub_1AB45FC14();
}

uint64_t sub_1AB12A114()
{
  swift_getWitnessTable();

  return sub_1AB45FC14();
}

uint64_t sub_1AB12A180()
{
  sub_1AB12A8BC(&qword_1EB436498, type metadata accessor for NSKeyValueChangeKey);
  sub_1AB12A8BC(&unk_1EB4364A0, type metadata accessor for NSKeyValueChangeKey);

  return sub_1AB461994();
}

uint64_t sub_1AB12A23C()
{
  sub_1AB12A8BC(&qword_1EB4363A0, type metadata accessor for AMSBagKey);
  sub_1AB12A8BC(&qword_1EB4363A8, type metadata accessor for AMSBagKey);

  return sub_1AB461994();
}

uint64_t sub_1AB12A2F8()
{
  sub_1AB12A8BC(&qword_1EB436390, type metadata accessor for AMSMediaArtworkFormat);
  sub_1AB12A8BC(&qword_1EB436398, type metadata accessor for AMSMediaArtworkFormat);

  return sub_1AB461994();
}

uint64_t sub_1AB12A3B4()
{
  sub_1AB12A8BC(&qword_1EB436380, type metadata accessor for AMSMediaArtworkCropStyle);
  sub_1AB12A8BC(&qword_1EB436388, type metadata accessor for AMSMediaArtworkCropStyle);

  return sub_1AB461994();
}

uint64_t sub_1AB12A470()
{
  sub_1AB12A8BC(&qword_1EB436478, type metadata accessor for FileAttributeKey);
  sub_1AB12A8BC(&qword_1EB436480, type metadata accessor for FileAttributeKey);

  return sub_1AB461994();
}

_DWORD *sub_1AB12A52C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1AB12A53C()
{
  sub_1AB12A8BC(&qword_1EB436370, type metadata accessor for SignpostComponent);
  sub_1AB12A8BC(&qword_1EB436378, type metadata accessor for SignpostComponent);
  return sub_1AB461994();
}

uint64_t sub_1AB12A5F8()
{
  sub_1AB12A8BC(&qword_1EB436468, type metadata accessor for FileProtectionType);
  sub_1AB12A8BC(&qword_1EB436470, type metadata accessor for FileProtectionType);

  return sub_1AB461994();
}

uint64_t sub_1AB12A6B4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1AB460514();

  *a1 = v2;
  return result;
}

uint64_t sub_1AB12A6FC()
{
  sub_1AB12A8BC(&qword_1EB436488, type metadata accessor for AMSMediaArtworkColorKind);
  sub_1AB12A8BC(&qword_1EB436490, type metadata accessor for AMSMediaArtworkColorKind);

  return sub_1AB461994();
}

uint64_t sub_1AB12A8BC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AB12AA98()
{
  sub_1AB4620A4();
  swift_getWitnessTable();
  sub_1AB45FC24();
  return sub_1AB462104();
}

uint64_t sub_1AB12AC14()
{
  v0 = sub_1AB460544();
  v1 = MEMORY[0x1AC59BAE0](v0);

  return v1;
}

uint64_t sub_1AB12AC50()
{
  sub_1AB460544();
  sub_1AB460684();
}

uint64_t sub_1AB12ACA4()
{
  sub_1AB460544();
  sub_1AB4620A4();
  sub_1AB460684();
  v0 = sub_1AB462104();

  return v0;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1AB12B2C8()
{
  v0 = sub_1AB460544();
  v2 = v1;
  if (v0 == sub_1AB460544() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1AB461DA4();
  }

  return v5 & 1;
}

id JetEngineBootstrap.URLProtocolHandler.make(using:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = v1[1];
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = 0;
      v5 = 0;
      v6 = 2;
      v7 = 1;
      v3 = 0;
    }

    else
    {
      v4 = v1[2];
      v5 = v1[3];
      v7 = *v1;

      v6 = 0;
    }
  }

  else
  {
    v6 = 2;
    v7 = 0;
    v4 = 0;
    v5 = 0;
  }

  v11 = v5;
  v12 = v6;
  v8 = [objc_opt_self() currentProcess];
  v9 = sub_1AB087834(v8, v2);

  sub_1AB0877D0(v7, v3, v4, v11, v12);
  return v9;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t JetEngineBootstrap.withBagProfile(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v8 = *v2;
  v12[4] = &type metadata for Bag.Profile;
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = v4;
  v9[4] = v7;
  v9[5] = v6;
  v12[0] = &type metadata for Bag.Profile;
  v12[1] = v9;
  *a2 = v8;

  v10 = sub_1AB0300F4(v12);

  *a2 = v10;
  return sub_1AB01667C(v12);
}

uint64_t JetEngineBootstrap.withProcess(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v10 = sub_1AB016760(0, &unk_1ED4D1398);
  v9[0] = v10;
  v9[1] = a1;
  *a2 = v5;
  v6 = a1;

  v7 = sub_1AB0300F4(v9);

  *a2 = v7;
  return sub_1AB01667C(v9);
}

uint64_t JetEngineBootstrap.withBagSpy(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *v3;
  if (a1)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    v9 = sub_1AB1580BC;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436570);
  v12[1] = v9;
  v12[2] = v8;
  v12[0] = v13;
  *a3 = v7;
  sub_1AB04B604(a1);

  v10 = sub_1AB0300F4(v12);

  *a3 = v10;
  return sub_1AB01667C(v12);
}

uint64_t JetEngineBootstrap.withProtocolHandler(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *v2;
  v12[4] = &type metadata for JetEngineBootstrap.URLProtocolHandler;
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = v5;
  v9[4] = v6;
  v9[5] = v7;
  v12[0] = &type metadata for JetEngineBootstrap.URLProtocolHandler;
  v12[1] = v9;
  *a2 = v8;
  sub_1AB144A64(v4, v5);

  v10 = sub_1AB0300F4(v12);

  *a2 = v10;
  return sub_1AB01667C(v12);
}

uint64_t JetEngineBootstrap.withAccountProvider(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436578);
  v9 = swift_allocObject();
  sub_1AB01494C(a1, v9 + 16);
  v8 = v10;
  *a2 = v5;

  v6 = sub_1AB0300F4(&v8);

  *a2 = v6;
  return sub_1AB01667C(&v8);
}

uint64_t JetEngineBootstrap.withBagServicePolicy(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v6 = sub_1AB45FD64();
  v11[3] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, a1, v6);
  v10 = v6;
  *a2 = v5;

  v8 = sub_1AB0300F4(&v10);

  *a2 = v8;
  return sub_1AB01667C(&v10);
}

uint64_t sub_1AB12BA44@<X0>(void *a1@<X8>)
{
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  type metadata accessor for BaseObjectGraph();

  swift_task_localValuePush();
  sub_1AB08D5A8(*(v1 + 16), &v7);
  swift_task_localValuePop();
  result = v7;
  v4 = v8;
  v5 = v9;
  v6 = v10;
  if (v8)
  {
    *a1 = v7;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }

  else
  {
    sub_1AB158004(v7, 0);
    sub_1AB145A20();
    result = sub_1AB461884();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AB12BB40@<X0>(void *a1@<X8>)
{
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  type metadata accessor for BaseObjectGraph();

  swift_task_localValuePush();
  sub_1AB12DEA0(*(v1 + 16), &v7);
  swift_task_localValuePop();
  result = v7;
  v4 = v8;
  v5 = v9;
  v6 = v10;
  if (v8 == 2)
  {
    sub_1AB157FD4(v7, 2uLL);
    sub_1AB145E80();
    result = sub_1AB461884();
    __break(1u);
  }

  else
  {
    *a1 = v7;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }

  return result;
}

uint64_t JetEngineBootstrap.process.getter()
{
  v1 = *v0;
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  type metadata accessor for BaseObjectGraph();

  swift_task_localValuePush();
  v2 = sub_1AB0466F8(*(v1 + 16));
  swift_task_localValuePop();
  if (v2)
  {
    return v2;
  }

  sub_1AB1453B4();
  result = sub_1AB461884();
  __break(1u);
  return result;
}

uint64_t (*JetEngineBootstrap.bagSpy.getter())(uint64_t a1)
{
  v1 = *v0;
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  type metadata accessor for BaseObjectGraph();

  swift_task_localValuePush();
  v2 = sub_1AB08E530(*(v1 + 16));
  v4 = v3;
  swift_task_localValuePop();
  if (!v2)
  {
    return v2;
  }

  if (v2 != 1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    *(v5 + 24) = v4;
    return sub_1AB14586C;
  }

  sub_1AB144AF4();
  result = sub_1AB461884();
  __break(1u);
  return result;
}

uint64_t JetEngineBootstrap.accounts.getter()
{
  v1 = *v0;
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  type metadata accessor for BaseObjectGraph();

  swift_task_localValuePush();
  v2 = sub_1AB12E320(*(v1 + 16));
  swift_task_localValuePop();
  if (!v2)
  {
    if (qword_1EB435648 != -1)
    {
      swift_once();
    }

    v2 = qword_1EB435650;
  }

  return v2;
}

uint64_t JetEngineBootstrap.withAccounts(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439A20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D4190;
  v6 = type metadata accessor for Unstable.Accounts();
  *(inited + 64) = v6;
  *(inited + 40) = a1;
  *(inited + 32) = v6;
  v7 = *(a1 + 16);
  v8 = sub_1AB016760(0, &qword_1ED4D1F60);
  *(inited + 104) = v8;
  *(inited + 72) = v8;
  *(inited + 80) = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436578);
  *(inited + 144) = v9;
  v10 = swift_allocObject();
  *(inited + 120) = v10;
  v10[5] = v6;
  v10[6] = &protocol witness table for Unstable.Accounts;
  v10[2] = a1;
  *(inited + 112) = v9;
  swift_retain_n();

  v11 = v7;
  v12 = sub_1AB023248(inited);
  swift_setDeallocating();
  swift_arrayDestroy();

  *a2 = v12;
  return result;
}

char *sub_1AB12C0AC(void (*a1)(char **__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EB434948 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v14[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1AB033054(0, *(v14[0] + 2) + 1, 1, v14[0]);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1AB033054((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[16 * v10];
  *(v11 + 4) = a3;
  *(v11 + 5) = a4;
  v14[3] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365D0);
  v12 = swift_task_localValuePush();
  a1(v14, v12);
  if (v4)
  {
    return swift_task_localValuePop();
  }

  swift_task_localValuePop();
  return v14[0];
}

uint64_t sub_1AB12C208(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EB434948 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v7 = v13;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1AB033054(0, *(v13 + 16) + 1, 1, v13);
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1AB033054((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  v10 = &v7[16 * v9];
  *(v10 + 4) = a3;
  *(v10 + 5) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365D0);
  v11 = swift_task_localValuePush();
  a1(v11);
  return swift_task_localValuePop();
}

char *sub_1AB12C354(void (*a1)(char **__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EB434948 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v14;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1AB033054(0, *(v14 + 2) + 1, 1, v14);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1AB033054((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[16 * v10];
  *(v11 + 4) = a3;
  *(v11 + 5) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365D0);
  v12 = swift_task_localValuePush();
  a1(&v14, v12);
  if (v4)
  {
    return swift_task_localValuePop();
  }

  swift_task_localValuePop();
  return v14;
}

char *sub_1AB12C4B0(void (*a1)(char **__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EB434948 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v14[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1AB033054(0, *(v14[0] + 2) + 1, 1, v14[0]);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1AB033054((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[16 * v10];
  *(v11 + 4) = a3;
  *(v11 + 5) = a4;
  v14[4] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365D0);
  v12 = swift_task_localValuePush();
  a1(v14, v12);
  if (v4)
  {
    return swift_task_localValuePop();
  }

  swift_task_localValuePop();
  return v14[0];
}

uint64_t sub_1AB12C610(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    if (!v5)
    {
      break;
    }

    v11 = v8;
LABEL_13:
    v13 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v14 = v13 | (v11 << 6);
    v15 = *(*(a1 + 48) + 8 * v14);
    sub_1AB0165C4(*(a1 + 56) + 32 * v14, v21);
    *&v22 = v15;
    sub_1AB014B78(v21, (&v22 + 8));
    v8 = v11;
LABEL_14:
    v25[0] = v22;
    v25[1] = v23;
    v26 = v24;
    v16 = v22;
    if (!v22)
    {

      return v9;
    }

    sub_1AB014B78((v25 + 8), &v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436570);
    if (swift_dynamicCast())
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1AB2AFAE8(0, *(v9 + 2) + 1, 1, v9);
      }

      v20 = *(v9 + 2);
      v19 = *(v9 + 3);
      if (v20 >= v19 >> 1)
      {
        v9 = sub_1AB2AFAE8((v19 > 1), v20 + 1, 1, v9);
      }

      *(v9 + 2) = v20 + 1;
      *&v9[8 * v20 + 32] = v16;
      sub_1AB0177B8(*&v21[0]);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4368B0);
      if (swift_dynamicCast() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4368B8), swift_dynamicCast()))
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1AB2AFAE8(0, *(v9 + 2) + 1, 1, v9);
        }

        v18 = *(v9 + 2);
        v17 = *(v9 + 3);
        if (v18 >= v17 >> 1)
        {
          v9 = sub_1AB2AFAE8((v17 > 1), v18 + 1, 1, v9);
        }

        *(v9 + 2) = v18 + 1;
        *&v9[8 * v18 + 32] = v16;
      }
    }

    result = __swift_destroy_boxed_opaque_existential_1Tm(&v22);
  }

  if (v6 <= v8 + 1)
  {
    v12 = v8 + 1;
  }

  else
  {
    v12 = v6;
  }

  v8 = v12 - 1;
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v6)
    {
      v5 = 0;
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      goto LABEL_14;
    }

    v5 = *(v2 + 8 * v11);
    ++v10;
    if (v5)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

char *sub_1AB12C8F8(uint64_t a1)
{
  v2 = sub_1AB45FD64();
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  v31 = (v3 + 8);

  v11 = 0;
  v32 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v12 = v11;
    if (!v8)
    {
      break;
    }

    v13 = v11;
LABEL_13:
    v15 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v16 = v15 | (v13 << 6);
    v17 = *(*(a1 + 48) + 8 * v16);
    sub_1AB0165C4(*(a1 + 56) + 32 * v16, v33);
    *&v34 = v17;
    sub_1AB014B78(v33, (&v34 + 8));
    v11 = v13;
LABEL_14:
    v37[0] = v34;
    v37[1] = v35;
    v38 = v36;
    v18 = v34;
    if (!v34)
    {

      return v32;
    }

    sub_1AB014B78((v37 + 8), &v34);
    if (swift_dynamicCast())
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1AB2AFAE8(0, *(v32 + 2) + 1, 1, v32);
      }

      v24 = *(v32 + 2);
      v23 = *(v32 + 3);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v30 = v24 + 1;
        v28 = sub_1AB2AFAE8((v23 > 1), v24 + 1, 1, v32);
        v25 = v30;
        v32 = v28;
      }

      v26 = v32;
      *(v32 + 2) = v25;
      *&v26[8 * v24 + 32] = v18;
      (*v31)(v5, v2);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436910);
      if (swift_dynamicCast() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436918), swift_dynamicCast()))
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_1AB2AFAE8(0, *(v32 + 2) + 1, 1, v32);
        }

        v20 = *(v32 + 2);
        v19 = *(v32 + 3);
        v21 = v20 + 1;
        if (v20 >= v19 >> 1)
        {
          v30 = v20 + 1;
          v27 = sub_1AB2AFAE8((v19 > 1), v20 + 1, 1, v32);
          v21 = v30;
          v32 = v27;
        }

        v22 = v32;
        *(v32 + 2) = v21;
        *&v22[8 * v20 + 32] = v18;
      }
    }

    result = __swift_destroy_boxed_opaque_existential_1Tm(&v34);
  }

  if (v9 <= v11 + 1)
  {
    v14 = v11 + 1;
  }

  else
  {
    v14 = v9;
  }

  v11 = v14 - 1;
  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v9)
    {
      v8 = 0;
      v36 = 0;
      v34 = 0u;
      v35 = 0u;
      goto LABEL_14;
    }

    v8 = *(a1 + 64 + 8 * v13);
    ++v12;
    if (v8)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB12CC88(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    if (!v5)
    {
      break;
    }

    v11 = v8;
LABEL_13:
    v13 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v14 = v13 | (v11 << 6);
    v15 = *(*(a1 + 48) + 8 * v14);
    sub_1AB0165C4(*(a1 + 56) + 32 * v14, v21);
    *&v22 = v15;
    sub_1AB014B78(v21, (&v22 + 8));
    v8 = v11;
LABEL_14:
    v25[0] = v22;
    v25[1] = v23;
    v26 = v24;
    v16 = v22;
    if (!v22)
    {

      return v9;
    }

    sub_1AB014B78((v25 + 8), &v22);
    sub_1AB016760(0, &unk_1ED4D1398);
    if (swift_dynamicCast())
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1AB2AFAE8(0, *(v9 + 2) + 1, 1, v9);
      }

      v20 = *(v9 + 2);
      v19 = *(v9 + 3);
      if (v20 >= v19 >> 1)
      {
        v9 = sub_1AB2AFAE8((v19 > 1), v20 + 1, 1, v9);
      }

      *(v9 + 2) = v20 + 1;
      *&v9[8 * v20 + 32] = v16;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4368C8);
      if (swift_dynamicCast() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4368D0), swift_dynamicCast()))
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1AB2AFAE8(0, *(v9 + 2) + 1, 1, v9);
        }

        v18 = *(v9 + 2);
        v17 = *(v9 + 3);
        if (v18 >= v17 >> 1)
        {
          v9 = sub_1AB2AFAE8((v17 > 1), v18 + 1, 1, v9);
        }

        *(v9 + 2) = v18 + 1;
        *&v9[8 * v18 + 32] = v16;
      }
    }

    result = __swift_destroy_boxed_opaque_existential_1Tm(&v22);
  }

  if (v6 <= v8 + 1)
  {
    v12 = v8 + 1;
  }

  else
  {
    v12 = v6;
  }

  v8 = v12 - 1;
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v6)
    {
      v5 = 0;
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      goto LABEL_14;
    }

    v5 = *(v2 + 8 * v11);
    ++v10;
    if (v5)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB12CF74(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    if (!v5)
    {
      break;
    }

    v11 = v8;
LABEL_13:
    v13 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v14 = v13 | (v11 << 6);
    v15 = *(*(a1 + 48) + 8 * v14);
    sub_1AB0165C4(*(a1 + 56) + 32 * v14, &v21);
    *&v22 = v15;
    sub_1AB014B78(&v21, (&v22 + 8));
    v8 = v11;
LABEL_14:
    v25[0] = v22;
    v25[1] = v23;
    v26 = v24;
    v16 = v22;
    if (!v22)
    {

      return v9;
    }

    sub_1AB014B78((v25 + 8), &v22);
    if (swift_dynamicCast())
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1AB2AFAE8(0, *(v9 + 2) + 1, 1, v9);
      }

      v20 = *(v9 + 2);
      v19 = *(v9 + 3);
      if (v20 >= v19 >> 1)
      {
        v9 = sub_1AB2AFAE8((v19 > 1), v20 + 1, 1, v9);
      }

      *(v9 + 2) = v20 + 1;
      *&v9[8 * v20 + 32] = v16;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4368E0);
      if (swift_dynamicCast() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4368E8), swift_dynamicCast()))
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1AB2AFAE8(0, *(v9 + 2) + 1, 1, v9);
        }

        v18 = *(v9 + 2);
        v17 = *(v9 + 3);
        if (v18 >= v17 >> 1)
        {
          v9 = sub_1AB2AFAE8((v17 > 1), v18 + 1, 1, v9);
        }

        *(v9 + 2) = v18 + 1;
        *&v9[8 * v18 + 32] = v16;
      }
    }

    result = __swift_destroy_boxed_opaque_existential_1Tm(&v22);
  }

  if (v6 <= v8 + 1)
  {
    v12 = v8 + 1;
  }

  else
  {
    v12 = v6;
  }

  v8 = v12 - 1;
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v6)
    {
      v5 = 0;
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      goto LABEL_14;
    }

    v5 = *(v2 + 8 * v11);
    ++v10;
    if (v5)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB12D258(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    if (!v5)
    {
      break;
    }

    v11 = v8;
LABEL_13:
    v13 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v14 = v13 | (v11 << 6);
    v15 = *(*(a1 + 48) + 8 * v14);
    sub_1AB0165C4(*(a1 + 56) + 32 * v14, &v21);
    *&v22 = v15;
    sub_1AB014B78(&v21, (&v22 + 8));
    v8 = v11;
LABEL_14:
    v25[0] = v22;
    v25[1] = v23;
    v26 = v24;
    v16 = v22;
    if (!v22)
    {

      return v9;
    }

    sub_1AB014B78((v25 + 8), &v22);
    if (swift_dynamicCast())
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1AB2AFAE8(0, *(v9 + 2) + 1, 1, v9);
      }

      v20 = *(v9 + 2);
      v19 = *(v9 + 3);
      if (v20 >= v19 >> 1)
      {
        v9 = sub_1AB2AFAE8((v19 > 1), v20 + 1, 1, v9);
      }

      *(v9 + 2) = v20 + 1;
      *&v9[8 * v20 + 32] = v16;
      sub_1AB093AF0(v21, *(&v21 + 1));
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436898);
      if (swift_dynamicCast() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4368A0), swift_dynamicCast()))
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1AB2AFAE8(0, *(v9 + 2) + 1, 1, v9);
        }

        v18 = *(v9 + 2);
        v17 = *(v9 + 3);
        if (v18 >= v17 >> 1)
        {
          v9 = sub_1AB2AFAE8((v17 > 1), v18 + 1, 1, v9);
        }

        *(v9 + 2) = v18 + 1;
        *&v9[8 * v18 + 32] = v16;
      }
    }

    result = __swift_destroy_boxed_opaque_existential_1Tm(&v22);
  }

  if (v6 <= v8 + 1)
  {
    v12 = v8 + 1;
  }

  else
  {
    v12 = v6;
  }

  v8 = v12 - 1;
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v6)
    {
      v5 = 0;
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      goto LABEL_14;
    }

    v5 = *(v2 + 8 * v11);
    ++v10;
    if (v5)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB12D534(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    if (!v5)
    {
      break;
    }

    v11 = v8;
LABEL_13:
    v13 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v14 = v13 | (v11 << 6);
    v15 = *(*(a1 + 48) + 8 * v14);
    sub_1AB0165C4(*(a1 + 56) + 32 * v14, v21);
    *&v22 = v15;
    sub_1AB014B78(v21, (&v22 + 8));
    v8 = v11;
LABEL_14:
    v25[0] = v22;
    v25[1] = v23;
    v26 = v24;
    v16 = v22;
    if (!v22)
    {

      return v9;
    }

    sub_1AB014B78((v25 + 8), &v22);
    if (swift_dynamicCast())
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1AB2AFAE8(0, *(v9 + 2) + 1, 1, v9);
      }

      v20 = *(v9 + 2);
      v19 = *(v9 + 3);
      if (v20 >= v19 >> 1)
      {
        v9 = sub_1AB2AFAE8((v19 > 1), v20 + 1, 1, v9);
      }

      *(v9 + 2) = v20 + 1;
      *&v9[8 * v20 + 32] = v16;
      swift_unknownObjectRelease();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436868);
      if (swift_dynamicCast() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436870), swift_dynamicCast()))
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1AB2AFAE8(0, *(v9 + 2) + 1, 1, v9);
        }

        v18 = *(v9 + 2);
        v17 = *(v9 + 3);
        if (v18 >= v17 >> 1)
        {
          v9 = sub_1AB2AFAE8((v17 > 1), v18 + 1, 1, v9);
        }

        *(v9 + 2) = v18 + 1;
        *&v9[8 * v18 + 32] = v16;
      }
    }

    result = __swift_destroy_boxed_opaque_existential_1Tm(&v22);
  }

  if (v6 <= v8 + 1)
  {
    v12 = v8 + 1;
  }

  else
  {
    v12 = v6;
  }

  v8 = v12 - 1;
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v6)
    {
      v5 = 0;
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      goto LABEL_14;
    }

    v5 = *(v2 + 8 * v11);
    ++v10;
    if (v5)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB12D80C(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    if (!v5)
    {
      break;
    }

    v11 = v8;
LABEL_13:
    v13 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v14 = v13 | (v11 << 6);
    v15 = *(*(a1 + 48) + 8 * v14);
    sub_1AB0165C4(*(a1 + 56) + 32 * v14, v24);
    *&v25 = v15;
    sub_1AB014B78(v24, (&v25 + 8));
    v8 = v11;
LABEL_14:
    v28[0] = v25;
    v28[1] = v26;
    v29 = v27;
    v16 = v25;
    if (!v25)
    {

      return v9;
    }

    sub_1AB014B78((v28 + 8), &v25);
    type metadata accessor for JetPackAssetSession();
    if (swift_dynamicCast())
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1AB2AFAE8(0, *(v9 + 2) + 1, 1, v9);
      }

      v18 = *(v9 + 2);
      v17 = *(v9 + 3);
      if (v18 >= v17 >> 1)
      {
        v9 = sub_1AB2AFAE8((v17 > 1), v18 + 1, 1, v9);
      }

      *(v9 + 2) = v18 + 1;
      *&v9[8 * v18 + 32] = v16;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436710);
      if (swift_dynamicCast())
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1AB2AFAE8(0, *(v9 + 2) + 1, 1, v9);
        }

        v20 = *(v9 + 2);
        v19 = *(v9 + 3);
        if (v20 >= v19 >> 1)
        {
          v9 = sub_1AB2AFAE8((v19 > 1), v20 + 1, 1, v9);
        }

        *(v9 + 2) = v20 + 1;
        v21 = &v9[8 * v20];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436718);
        if (!swift_dynamicCast())
        {
          goto LABEL_18;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1AB2AFAE8(0, *(v9 + 2) + 1, 1, v9);
        }

        v23 = *(v9 + 2);
        v22 = *(v9 + 3);
        if (v23 >= v22 >> 1)
        {
          v9 = sub_1AB2AFAE8((v22 > 1), v23 + 1, 1, v9);
        }

        *(v9 + 2) = v23 + 1;
        v21 = &v9[8 * v23];
      }

      *(v21 + 4) = v16;
    }

LABEL_18:
    result = __swift_destroy_boxed_opaque_existential_1Tm(&v25);
  }

  if (v6 <= v8 + 1)
  {
    v12 = v8 + 1;
  }

  else
  {
    v12 = v6;
  }

  v8 = v12 - 1;
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v6)
    {
      v5 = 0;
      v27 = 0;
      v25 = 0u;
      v26 = 0u;
      goto LABEL_14;
    }

    v5 = *(v2 + 8 * v11);
    ++v10;
    if (v5)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

char *sub_1AB12DB58(uint64_t a1)
{
  v2 = type metadata accessor for JetPackAsset(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v29 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v10;
    if (!v7)
    {
      break;
    }

    v12 = v10;
LABEL_13:
    v14 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v15 = v14 | (v12 << 6);
    v16 = *(*(a1 + 48) + 8 * v15);
    sub_1AB0165C4(*(a1 + 56) + 32 * v15, v30);
    *&v31 = v16;
    sub_1AB014B78(v30, (&v31 + 8));
    v10 = v12;
LABEL_14:
    v34[0] = v31;
    v34[1] = v32;
    v35 = v33;
    v17 = v31;
    if (!v31)
    {

      return v29;
    }

    sub_1AB014B78((v34 + 8), &v31);
    if (swift_dynamicCast())
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1AB2AFAE8(0, *(v29 + 2) + 1, 1, v29);
      }

      v23 = *(v29 + 2);
      v22 = *(v29 + 3);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v28 = v23 + 1;
        v27 = sub_1AB2AFAE8((v22 > 1), v23 + 1, 1, v29);
        v24 = v28;
        v29 = v27;
      }

      v25 = v29;
      *(v29 + 2) = v24;
      *&v25[8 * v23 + 32] = v17;
      sub_1AB045284(v4);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366D0);
      if (swift_dynamicCast() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366D8), swift_dynamicCast()))
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_1AB2AFAE8(0, *(v29 + 2) + 1, 1, v29);
        }

        v19 = *(v29 + 2);
        v18 = *(v29 + 3);
        v20 = v19 + 1;
        if (v19 >= v18 >> 1)
        {
          v28 = v19 + 1;
          v26 = sub_1AB2AFAE8((v18 > 1), v19 + 1, 1, v29);
          v20 = v28;
          v29 = v26;
        }

        v21 = v29;
        *(v29 + 2) = v20;
        *&v21[8 * v19 + 32] = v17;
      }
    }

    result = __swift_destroy_boxed_opaque_existential_1Tm(&v31);
  }

  if (v8 <= v10 + 1)
  {
    v13 = v10 + 1;
  }

  else
  {
    v13 = v8;
  }

  v10 = v13 - 1;
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {
      v7 = 0;
      v33 = 0;
      v31 = 0u;
      v32 = 0u;
      goto LABEL_14;
    }

    v7 = *(a1 + 64 + 8 * v12);
    ++v11;
    if (v7)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB12DEA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1AB016558(&type metadata for JetEngineBootstrap.URLProtocolHandler), (v5 & 1) != 0))
  {
    sub_1AB0165C4(*(a1 + 56) + 32 * v4, v14);
    sub_1AB014B78(v14, &v15);
    sub_1AB0165C4(&v15, v14);
    if (swift_dynamicCast())
    {
      *a2 = v12;
      *(a2 + 16) = v13;
LABEL_25:
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v15);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436898);
    if (swift_dynamicCast())
    {
      sub_1AB13128C(a2);

      goto LABEL_25;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4368A0);
    if (swift_dynamicCast())
    {

      sub_1AB41B324("JetEngine/DependencyDictionary.swift", 36, 2, 231, v12);

      sub_1AB132CE8(a2);

      goto LABEL_25;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365B0);
    if (swift_dynamicCast())
    {
      sub_1AB41BC00("JetEngine/DependencyDictionary.swift", 36, 2, 239, v12);
      swift_unknownObjectRelease();
      *a2 = xmmword_1AB4D41A0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      goto LABEL_25;
    }
  }

  else
  {
    if (qword_1ED4D19F0 != -1)
    {
      swift_once();
    }

    v6 = off_1ED4D19F8;
    v7 = *(off_1ED4D19F8 + 2);
    v8 = off_1ED4D19F8 + 32;

    if (v7)
    {
      v9 = 0;
      while (1)
      {
        v14[0] = *&v8[16 * v9];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4368A8);
        if (swift_dynamicCast())
        {
          if (v15)
          {
            break;
          }
        }

        if (v7 == ++v9)
        {
          goto LABEL_13;
        }
      }

      v7 = v9;
    }

LABEL_13:
    v10 = v6[2];
    if (v7 == v10)
    {

      *a2 = xmmword_1AB4D41A0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      return result;
    }

    if (v7 >= v10)
    {
      __break(1u);
    }

    else
    {
      v14[0] = *&v8[16 * v7];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4368A8);
      if ((swift_dynamicCast() & 1) != 0 && v15)
      {

        return sub_1AB01D05C(a1, v15, *(&v15 + 1), a2);
      }
    }

    __break(1u);
  }

  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
  __swift_project_boxed_opaque_existential_1Tm(&v15, v16);
  sub_1AB461D64();
  MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
  MEMORY[0x1AC59BA20](0xD000000000000012, 0x80000001AB4D4260);
  MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB4FEF10);
  result = sub_1AB461884();
  __break(1u);
  return result;
}

uint64_t sub_1AB12E320(uint64_t a1)
{
  v2 = type metadata accessor for Unstable.Accounts();
  if (*(a1 + 16) && (v3 = sub_1AB016558(v2), (v4 & 1) != 0))
  {
    sub_1AB0165C4(*(a1 + 56) + 32 * v3, v14);
    sub_1AB014B78(v14, &v15);
    sub_1AB0165C4(&v15, v14);
    if (swift_dynamicCast())
    {
      v5 = v12;
LABEL_22:
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      __swift_destroy_boxed_opaque_existential_1Tm(&v15);
      return v5;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436888);
    if (swift_dynamicCast())
    {
      v5 = sub_1AB1315B4(type metadata accessor for Unstable.Accounts, sub_1AB138EEC);

      goto LABEL_22;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436890);
    if (swift_dynamicCast())
    {

      sub_1AB41C4C4("JetEngine/DependencyDictionary.swift", 36, 2, 231, v12);

      v5 = sub_1AB132FF0(type metadata accessor for Unstable.Accounts, sub_1AB14BD4C);

      goto LABEL_22;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365B0);
    if (swift_dynamicCast())
    {
      sub_1AB41C4DC("JetEngine/DependencyDictionary.swift", 36, 2, 239, v12, v13);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      __swift_destroy_boxed_opaque_existential_1Tm(&v15);
      return 0;
    }
  }

  else
  {
    if (qword_1ED4D19F0 != -1)
    {
      swift_once();
    }

    v6 = off_1ED4D19F8;
    v7 = *(off_1ED4D19F8 + 2);
    v8 = off_1ED4D19F8 + 32;

    if (v7)
    {
      v9 = 0;
      while (1)
      {
        v14[0] = *&v8[16 * v9];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436880);
        if (swift_dynamicCast())
        {
          if (v15)
          {
            break;
          }
        }

        if (v7 == ++v9)
        {
          goto LABEL_13;
        }
      }

      v7 = v9;
    }

LABEL_13:
    v10 = v6[2];
    if (v7 == v10)
    {

      return 0;
    }

    if (v7 >= v10)
    {
      __break(1u);
    }

    else
    {
      v14[0] = *&v8[16 * v7];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436880);
      if ((swift_dynamicCast() & 1) != 0 && v15)
      {

        sub_1AB01D05C(a1, v15, *(&v15 + 1), &v15);
        return v15;
      }
    }

    __break(1u);
  }

  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
  __swift_project_boxed_opaque_existential_1Tm(&v15, v16);
  sub_1AB461D64();
  MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
  MEMORY[0x1AC59BA20](0x73746E756F636341, 0xE800000000000000);
  MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB4FEF10);
  result = sub_1AB461884();
  __break(1u);
  return result;
}

uint64_t sub_1AB12E7DC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = sub_1AB016558(a1), (v4 & 1) != 0))
  {
    sub_1AB0165C4(*(a2 + 56) + 32 * v3, v14);
    sub_1AB014B78(v14, &v15);
    sub_1AB0165C4(&v15, v14);
    sub_1AB460184();
    if (swift_dynamicCast())
    {
      v5 = v13;
LABEL_22:
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      __swift_destroy_boxed_opaque_existential_1Tm(&v15);
      return v5;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436840);
    if (swift_dynamicCast())
    {
      v5 = sub_1AB1315B4(MEMORY[0x1E6977AD8], sub_1AB13A214);

      goto LABEL_22;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436848);
    if (swift_dynamicCast())
    {

      sub_1AB41CC88("JetEngine/DependencyDictionary.swift", 36, 2, 231, v13);

      v5 = sub_1AB132FF0(MEMORY[0x1E6977AD8], sub_1AB14D0F8);

      goto LABEL_22;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365B0);
    if (swift_dynamicCast())
    {
      sub_1AB41D580("JetEngine/DependencyDictionary.swift", 36, 2, 239, v13);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      __swift_destroy_boxed_opaque_existential_1Tm(&v15);
      return 0;
    }
  }

  else
  {
    if (qword_1ED4D19F0 != -1)
    {
      swift_once();
    }

    v6 = off_1ED4D19F8;
    v7 = *(off_1ED4D19F8 + 2);
    v8 = off_1ED4D19F8 + 32;

    if (v7)
    {
      v9 = 0;
      while (1)
      {
        v14[0] = *&v8[16 * v9];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436838);
        if (swift_dynamicCast())
        {
          if (v15)
          {
            break;
          }
        }

        if (v7 == ++v9)
        {
          goto LABEL_13;
        }
      }

      v7 = v9;
    }

LABEL_13:
    v10 = v6[2];
    if (v7 == v10)
    {

      return 0;
    }

    if (v7 >= v10)
    {
      __break(1u);
    }

    else
    {
      v14[0] = *&v8[16 * v7];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436838);
      if ((swift_dynamicCast() & 1) != 0 && v15)
      {

        sub_1AB460184();
        sub_1AB01D05C(a2, v15, *(&v15 + 1), &v15);
        return v15;
      }
    }

    __break(1u);
  }

  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
  __swift_project_boxed_opaque_existential_1Tm(&v15, v16);
  sub_1AB461D64();
  MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
  v12 = sub_1AB462314();
  MEMORY[0x1AC59BA20](v12);

  MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB4FEF10);
  result = sub_1AB461884();
  __break(1u);
  return result;
}

uint64_t sub_1AB12ECA0(uint64_t a1)
{
  v2 = type metadata accessor for PageMetricsPresenter();
  if (*(a1 + 16) && (v3 = sub_1AB016558(v2), (v4 & 1) != 0))
  {
    sub_1AB0165C4(*(a1 + 56) + 32 * v3, v13);
    sub_1AB014B78(v13, &v14);
    sub_1AB0165C4(&v14, v13);
    if (swift_dynamicCast())
    {
      v5 = v12;
LABEL_22:
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      __swift_destroy_boxed_opaque_existential_1Tm(&v14);
      return v5;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436800);
    if (swift_dynamicCast())
    {
      v5 = sub_1AB1315B4(type metadata accessor for PageMetricsPresenter, sub_1AB13C774);

      goto LABEL_22;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436808);
    if (swift_dynamicCast())
    {

      sub_1AB41DE60("JetEngine/DependencyDictionary.swift", 36, 2, 231, v12);

      v5 = sub_1AB132FF0(type metadata accessor for PageMetricsPresenter, sub_1AB14F7B8);

      goto LABEL_22;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365B0);
    if (swift_dynamicCast())
    {
      sub_1AB41E738("JetEngine/DependencyDictionary.swift", 36, 2, 239, v12);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      __swift_destroy_boxed_opaque_existential_1Tm(&v14);
      return 0;
    }
  }

  else
  {
    if (qword_1ED4D19F0 != -1)
    {
      swift_once();
    }

    v6 = off_1ED4D19F8;
    v7 = *(off_1ED4D19F8 + 2);
    v8 = off_1ED4D19F8 + 32;

    if (v7)
    {
      v9 = 0;
      while (1)
      {
        v13[0] = *&v8[16 * v9];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4367F8);
        if (swift_dynamicCast())
        {
          if (v14)
          {
            break;
          }
        }

        if (v7 == ++v9)
        {
          goto LABEL_13;
        }
      }

      v7 = v9;
    }

LABEL_13:
    v10 = v6[2];
    if (v7 == v10)
    {

      return 0;
    }

    if (v7 >= v10)
    {
      __break(1u);
    }

    else
    {
      v13[0] = *&v8[16 * v7];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4367F8);
      if ((swift_dynamicCast() & 1) != 0 && v14)
      {

        sub_1AB01D05C(a1, v14, *(&v14 + 1), &v14);
        return v14;
      }
    }

    __break(1u);
  }

  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
  __swift_project_boxed_opaque_existential_1Tm(&v14, v15);
  sub_1AB461D64();
  MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
  MEMORY[0x1AC59BA20](0xD000000000000014, 0x80000001AB4FF240);
  MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB4FEF10);
  result = sub_1AB461884();
  __break(1u);
  return result;
}

uint64_t sub_1AB12F164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1AB016558(&type metadata for MetricsPipeline), (v5 & 1) != 0))
  {
    sub_1AB0165C4(*(a1 + 56) + 32 * v4, v19);
    sub_1AB014B78(v19, &v22);
    sub_1AB0165C4(&v22, v21);
    if (swift_dynamicCast())
    {
      v6 = v19[11];
      *(a2 + 160) = v19[10];
      *(a2 + 176) = v6;
      *(a2 + 192) = v20;
      v7 = v19[7];
      *(a2 + 96) = v19[6];
      *(a2 + 112) = v7;
      v8 = v19[9];
      *(a2 + 128) = v19[8];
      *(a2 + 144) = v8;
      v9 = v19[3];
      *(a2 + 32) = v19[2];
      *(a2 + 48) = v9;
      v10 = v19[5];
      *(a2 + 64) = v19[4];
      *(a2 + 80) = v10;
      v11 = v19[1];
      *a2 = v19[0];
      *(a2 + 16) = v11;
LABEL_25:
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v22);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436818);
    if (swift_dynamicCast())
    {
      sub_1AB131AD8(a2);

      goto LABEL_25;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436820);
    if (swift_dynamicCast())
    {
      v18 = *&v19[0];

      sub_1AB41DE18("JetEngine/DependencyDictionary.swift", 36, 2, 231, v18);

      sub_1AB133528(a2);

      goto LABEL_25;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365B0);
    if (swift_dynamicCast())
    {
      sub_1AB41DE3C("JetEngine/DependencyDictionary.swift", 36, 2, 239, *&v19[0], *(&v19[0] + 1));
      swift_unknownObjectRelease();
      *(a2 + 192) = 0;
      *(a2 + 160) = 0u;
      *(a2 + 176) = 0u;
      *(a2 + 128) = 0u;
      *(a2 + 144) = 0u;
      *(a2 + 96) = 0u;
      *(a2 + 112) = 0u;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      goto LABEL_25;
    }
  }

  else
  {
    if (qword_1ED4D19F0 != -1)
    {
      swift_once();
    }

    v12 = off_1ED4D19F8;
    v13 = *(off_1ED4D19F8 + 2);
    v14 = off_1ED4D19F8 + 32;

    if (v13)
    {
      v15 = 0;
      while (1)
      {
        v22 = *&v14[16 * v15];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436810);
        if (swift_dynamicCast())
        {
          if (*&v19[0])
          {
            break;
          }
        }

        if (v13 == ++v15)
        {
          goto LABEL_13;
        }
      }

      v13 = v15;
    }

LABEL_13:
    v16 = v12[2];
    if (v13 == v16)
    {

      *(a2 + 192) = 0;
      *(a2 + 160) = 0u;
      *(a2 + 176) = 0u;
      *(a2 + 128) = 0u;
      *(a2 + 144) = 0u;
      *(a2 + 96) = 0u;
      *(a2 + 112) = 0u;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (v13 >= v16)
    {
      __break(1u);
    }

    else
    {
      v22 = *&v14[16 * v13];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436810);
      if ((swift_dynamicCast() & 1) != 0 && *&v19[0])
      {

        return sub_1AB01D05C(a1, *&v19[0], *(&v19[0] + 1), a2);
      }
    }

    __break(1u);
  }

  *&v19[0] = 0;
  *(&v19[0] + 1) = 0xE000000000000000;
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
  __swift_project_boxed_opaque_existential_1Tm(&v22, v23);
  sub_1AB461D64();
  MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
  MEMORY[0x1AC59BA20](0x507363697274654DLL, 0xEF656E696C657069);
  MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB4FEF10);
  result = sub_1AB461884();
  __break(1u);
  return result;
}

uint64_t sub_1AB12F650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436660);
  if (*(a1 + 16) && (v5 = sub_1AB016558(v4), (v6 & 1) != 0))
  {
    sub_1AB0165C4(*(a1 + 56) + 32 * v5, v14);
    sub_1AB014B78(v14, &v16);
    sub_1AB0165C4(&v16, v15);
    if (swift_dynamicCast())
    {
      sub_1AB0149B0(v14, a2);
LABEL_25:
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v16);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436670);
    if (swift_dynamicCast())
    {
      sub_1AB1321A0(&qword_1EB436660, &unk_1AB4D43A8, sub_1AB13F5DC);

      goto LABEL_25;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436678);
    if (swift_dynamicCast())
    {
      v13 = *&v14[0];

      sub_1AB4211C4("JetEngine/DependencyDictionary.swift", 36, 2, 231, v13);

      sub_1AB133BEC(&qword_1EB436660, &unk_1AB4D43A8, sub_1AB152790);

      goto LABEL_25;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365B0);
    if (swift_dynamicCast())
    {
      sub_1AB421AA0("JetEngine/DependencyDictionary.swift", 36, 2, 239, *&v14[0]);
      swift_unknownObjectRelease();
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      goto LABEL_25;
    }
  }

  else
  {
    if (qword_1ED4D19F0 != -1)
    {
      swift_once();
    }

    v7 = off_1ED4D19F8;
    v8 = *(off_1ED4D19F8 + 2);
    v9 = off_1ED4D19F8 + 32;

    if (v8)
    {
      v10 = 0;
      while (1)
      {
        v16 = *&v9[16 * v10];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436668);
        if (swift_dynamicCast())
        {
          if (*&v14[0])
          {
            break;
          }
        }

        if (v8 == ++v10)
        {
          goto LABEL_13;
        }
      }

      v8 = v10;
    }

LABEL_13:
    v11 = v7[2];
    if (v8 == v11)
    {

      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (v8 >= v11)
    {
      __break(1u);
    }

    else
    {
      v16 = *&v9[16 * v8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436668);
      if ((swift_dynamicCast() & 1) != 0 && *&v14[0])
      {

        return sub_1AB01D05C(a1, *&v14[0], *(&v14[0] + 1), a2);
      }
    }

    __break(1u);
  }

  *&v14[0] = 0;
  *(&v14[0] + 1) = 0xE000000000000000;
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
  __swift_project_boxed_opaque_existential_1Tm(&v16, v17);
  sub_1AB461D64();
  MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
  MEMORY[0x1AC59BA20](0xD000000000000010, 0x80000001AB4FF070);
  MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB4FEF10);
  result = sub_1AB461884();
  __break(1u);
  return result;
}

uint64_t sub_1AB12FB20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1AB016558(&type metadata for IntentDispatchTimeout), (v5 & 1) != 0))
  {
    sub_1AB0165C4(*(a1 + 56) + 32 * v4, v14);
    sub_1AB014B78(v14, &v15);
    sub_1AB0165C4(&v15, v14);
    if (swift_dynamicCast())
    {
      *a2 = v12;
      *(a2 + 8) = v13;
LABEL_21:
      *(a2 + 9) = 0;
LABEL_26:
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v15);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436650);
    if (swift_dynamicCast())
    {
      sub_1AB131918(a2);

      goto LABEL_21;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436658);
    if (swift_dynamicCast())
    {

      sub_1AB422354("JetEngine/DependencyDictionary.swift", 36, 2, 231, v12);

      sub_1AB133364(a2);
      *(a2 + 9) = 0;

      goto LABEL_26;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365B0);
    if (swift_dynamicCast())
    {
      sub_1AB422C2C("JetEngine/DependencyDictionary.swift", 36, 2, 239, v12);
      swift_unknownObjectRelease();
      *a2 = 0;
      *(a2 + 8) = 256;
      goto LABEL_26;
    }
  }

  else
  {
    if (qword_1ED4D19F0 != -1)
    {
      swift_once();
    }

    v6 = off_1ED4D19F8;
    v7 = *(off_1ED4D19F8 + 2);
    v8 = off_1ED4D19F8 + 32;

    if (v7)
    {
      v9 = 0;
      while (1)
      {
        v14[0] = *&v8[16 * v9];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436648);
        if (swift_dynamicCast())
        {
          if (v15)
          {
            break;
          }
        }

        if (v7 == ++v9)
        {
          goto LABEL_13;
        }
      }

      v7 = v9;
    }

LABEL_13:
    v10 = v6[2];
    if (v7 == v10)
    {

      *a2 = 0;
      *(a2 + 8) = 256;
      return result;
    }

    if (v7 >= v10)
    {
      __break(1u);
    }

    else
    {
      v14[0] = *&v8[16 * v7];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436648);
      if ((swift_dynamicCast() & 1) != 0 && v15)
      {

        return sub_1AB01D05C(a1, v15, *(&v15 + 1), a2);
      }
    }

    __break(1u);
  }

  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
  __swift_project_boxed_opaque_existential_1Tm(&v15, v16);
  sub_1AB461D64();
  MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
  MEMORY[0x1AC59BA20](0xD000000000000015, 0x80000001AB4FF050);
  MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB4FEF10);
  result = sub_1AB461884();
  __break(1u);
  return result;
}

uint64_t sub_1AB12FFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PageIntentInstrumentation();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) && (v8 = sub_1AB016558(v4), (v9 & 1) != 0))
  {
    sub_1AB0165C4(*(a1 + 56) + 32 * v8, v24);
    sub_1AB014B78(v24, &v25);
    sub_1AB0165C4(&v25, v24);
    if (swift_dynamicCast())
    {
      sub_1AB0342CC(v7, a2, type metadata accessor for PageIntentInstrumentation);
LABEL_22:
      (*(v5 + 56))(a2, 0, 1, v4);
LABEL_27:
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v25);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436628);
    if (swift_dynamicCast())
    {
      sub_1AB1323C0(type metadata accessor for PageIntentInstrumentation, sub_1AB13BCF0);

      goto LABEL_22;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436630);
    if (swift_dynamicCast())
    {
      v18 = v22;

      sub_1AB4234CC("JetEngine/DependencyDictionary.swift", 36, 2, 231, v18);

      sub_1AB133E44(type metadata accessor for PageIntentInstrumentation, sub_1AB14ED0C);
      (*(v5 + 56))(a2, 0, 1, v4);

      goto LABEL_27;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365B0);
    if (swift_dynamicCast())
    {
      sub_1AB423DA4("JetEngine/DependencyDictionary.swift", 36, 2, 239, v22);
      swift_unknownObjectRelease();
      (*(v5 + 56))(a2, 1, 1, v4);
      goto LABEL_27;
    }
  }

  else
  {
    if (qword_1ED4D19F0 != -1)
    {
      swift_once();
    }

    v10 = off_1ED4D19F8;
    v11 = *(off_1ED4D19F8 + 2);
    v12 = off_1ED4D19F8 + 32;

    if (v11)
    {
      v19 = v5;
      v20 = a2;
      v21 = v4;
      v13 = 0;
      while (1)
      {
        v24[0] = *&v12[16 * v13];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436620);
        if (swift_dynamicCast())
        {
          if (v25)
          {
            break;
          }
        }

        if (v11 == ++v13)
        {
          goto LABEL_13;
        }
      }

      v11 = v13;
LABEL_13:
      a2 = v20;
      v4 = v21;
      v5 = v19;
    }

    v14 = v10[2];
    if (v11 == v14)
    {

      return (*(v5 + 56))(a2, 1, 1, v4);
    }

    if (v11 >= v14)
    {
      __break(1u);
    }

    else
    {
      v24[0] = *&v12[16 * v11];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436620);
      if (swift_dynamicCast())
      {
        v16 = v25;
        if (v25)
        {
          v17 = *(&v25 + 1);

          return sub_1AB01D05C(a1, v16, v17, a2);
        }
      }
    }

    __break(1u);
  }

  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
  __swift_project_boxed_opaque_existential_1Tm(&v25, v26);
  sub_1AB461D64();
  MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
  MEMORY[0x1AC59BA20](0xD000000000000019, 0x80000001AB4FF030);
  MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB4FEF10);
  result = sub_1AB461884();
  __break(1u);
  return result;
}

uint64_t sub_1AB13055C(uint64_t a1)
{
  v2 = type metadata accessor for PageRenderMetricsPresenter();
  if (*(a1 + 16) && (v3 = sub_1AB016558(v2), (v4 & 1) != 0))
  {
    sub_1AB0165C4(*(a1 + 56) + 32 * v3, v13);
    sub_1AB014B78(v13, &v14);
    sub_1AB0165C4(&v14, v13);
    if (swift_dynamicCast())
    {
      v5 = v12;
LABEL_22:
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      __swift_destroy_boxed_opaque_existential_1Tm(&v14);
      return v5;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436610);
    if (swift_dynamicCast())
    {
      v5 = sub_1AB1315B4(type metadata accessor for PageRenderMetricsPresenter, sub_1AB1438FC);

      goto LABEL_22;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436618);
    if (swift_dynamicCast())
    {

      sub_1AB424644("JetEngine/DependencyDictionary.swift", 36, 2, 231, v12);

      v5 = sub_1AB132FF0(type metadata accessor for PageRenderMetricsPresenter, sub_1AB156CAC);

      goto LABEL_22;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365B0);
    if (swift_dynamicCast())
    {
      sub_1AB424F1C("JetEngine/DependencyDictionary.swift", 36, 2, 239, v12);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      __swift_destroy_boxed_opaque_existential_1Tm(&v14);
      return 0;
    }
  }

  else
  {
    if (qword_1ED4D19F0 != -1)
    {
      swift_once();
    }

    v6 = off_1ED4D19F8;
    v7 = *(off_1ED4D19F8 + 2);
    v8 = off_1ED4D19F8 + 32;

    if (v7)
    {
      v9 = 0;
      while (1)
      {
        v13[0] = *&v8[16 * v9];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436608);
        if (swift_dynamicCast())
        {
          if (v14)
          {
            break;
          }
        }

        if (v7 == ++v9)
        {
          goto LABEL_13;
        }
      }

      v7 = v9;
    }

LABEL_13:
    v10 = v6[2];
    if (v7 == v10)
    {

      return 0;
    }

    if (v7 >= v10)
    {
      __break(1u);
    }

    else
    {
      v13[0] = *&v8[16 * v7];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436608);
      if ((swift_dynamicCast() & 1) != 0 && v14)
      {

        sub_1AB01D05C(a1, v14, *(&v14 + 1), &v14);
        return v14;
      }
    }

    __break(1u);
  }

  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
  __swift_project_boxed_opaque_existential_1Tm(&v14, v15);
  sub_1AB461D64();
  MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
  MEMORY[0x1AC59BA20](0xD00000000000001ALL, 0x80000001AB4FF010);
  MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB4FEF10);
  result = sub_1AB461884();
  __break(1u);
  return result;
}

uint64_t sub_1AB130A20(uint64_t a1)
{
  if (*(a1 + 16) && (v2 = sub_1AB016558(&type metadata for IntentDispatchOptions.BadOrderingCanary), (v3 & 1) != 0))
  {
    sub_1AB0165C4(*(a1 + 56) + 32 * v2, v19);
    sub_1AB014B78(v19, &v20);
    sub_1AB0165C4(&v20, v19);
    if (swift_dynamicCast())
    {
      v24 = v18;
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      __swift_destroy_boxed_opaque_existential_1Tm(&v20);
      return v17;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365F8);
    if (swift_dynamicCast())
    {
      v10 = sub_1AB132798();
      v12 = v11;

      v24 = v12;
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      __swift_destroy_boxed_opaque_existential_1Tm(&v20);
      return v10;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436600);
    if (swift_dynamicCast())
    {

      sub_1AB4257BC("JetEngine/DependencyDictionary.swift", 36, 2, 231, v17);

      sub_1AB134230();
      v14 = v13;
      v16 = v15;

      v24 = v16;
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      __swift_destroy_boxed_opaque_existential_1Tm(&v20);
      return v14;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365B0);
    if (swift_dynamicCast())
    {
      sub_1AB426094("JetEngine/DependencyDictionary.swift", 36, 2, 239, v17);
      swift_unknownObjectRelease();
      v22 = 0;
      v23 = 0;
      v24 = 256;
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      __swift_destroy_boxed_opaque_existential_1Tm(&v20);
      return 0;
    }
  }

  else
  {
    if (qword_1ED4D19F0 != -1)
    {
      swift_once();
    }

    v5 = off_1ED4D19F8;
    v6 = *(off_1ED4D19F8 + 2);
    v7 = off_1ED4D19F8 + 32;

    if (v6)
    {
      v8 = 0;
      while (1)
      {
        v19[0] = *&v7[16 * v8];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365F0);
        if (swift_dynamicCast())
        {
          if (v20)
          {
            break;
          }
        }

        if (v6 == ++v8)
        {
          goto LABEL_13;
        }
      }

      v6 = v8;
    }

LABEL_13:
    v9 = v5[2];
    if (v6 == v9)
    {

      result = 0;
      v22 = 0;
      v23 = 0;
      v24 = 256;
      return result;
    }

    if (v6 >= v9)
    {
      __break(1u);
    }

    else
    {
      v19[0] = *&v7[16 * v6];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365F0);
      if ((swift_dynamicCast() & 1) != 0 && v20)
      {

        sub_1AB01D05C(a1, v20, *(&v20 + 1), &v22);
        return v22;
      }
    }

    __break(1u);
  }

  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
  __swift_project_boxed_opaque_existential_1Tm(&v20, v21);
  sub_1AB461D64();
  MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
  MEMORY[0x1AC59BA20](0xD000000000000038, 0x80000001AB4FEFD0);
  MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB4FEF10);
  result = sub_1AB461884();
  __break(1u);
  return result;
}

uint64_t sub_1AB130F34()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436570);
  v5.i64[0] = v0;
  v5.i64[1] = v1;
  sub_1AB030B7C(&v5);
  v2 = *(v0 + 16);

  os_unfair_lock_lock(v2 + 9);
  v3 = sub_1AB1353F8(&v2[4], v0, v0, v1);
  os_unfair_lock_unlock(v2 + 9);

  return v3;
}

uint64_t sub_1AB1310F8@<X0>(void (**a1)(uint64_t)@<X8>)
{
  v5.i64[1] = &type metadata for Bag.Profile;
  sub_1AB030B7C(&v5);
  v3 = *(v1 + 16);

  os_unfair_lock_lock(v3 + 13);
  sub_1AB136830(&v3[4], v1, &type metadata for Bag.Profile, a1);
  os_unfair_lock_unlock(v3 + 13);
}

uint64_t sub_1AB13128C@<X0>(void (**a1)(uint64_t)@<X8>)
{
  v5.i64[1] = &type metadata for JetEngineBootstrap.URLProtocolHandler;
  sub_1AB030B7C(&v5);
  v3 = *(v1 + 16);

  os_unfair_lock_lock(v3 + 13);
  sub_1AB137200(&v3[4], v1, &type metadata for JetEngineBootstrap.URLProtocolHandler, a1);
  os_unfair_lock_unlock(v3 + 13);
}

uint64_t sub_1AB131420@<X0>(void (**a1)(uint64_t)@<X8>)
{
  v5.i64[1] = &type metadata for Bag;
  sub_1AB030B7C(&v5);
  v3 = *(v1 + 16);

  os_unfair_lock_lock(v3 + 9);
  sub_1AB137BDC(&v3[4], v1, &type metadata for Bag, a1);
  os_unfair_lock_unlock(v3 + 9);
}

uint64_t sub_1AB1315B4(uint64_t (*a1)(void), uint64_t (*a2)(os_unfair_lock_s *, uint64_t, uint64_t, uint64_t))
{
  v4 = a1(0);
  v8.i64[0] = v2;
  v8.i64[1] = v4;
  sub_1AB030B7C(&v8);
  v5 = *(v2 + 16);

  os_unfair_lock_lock(v5 + 9);
  v6 = a2(v5 + 4, v2, v2, v4);
  os_unfair_lock_unlock(v5 + 9);

  return v6;
}

uint64_t sub_1AB131754(uint64_t a1, void (*a2)(os_unfair_lock_s *, uint64_t, uint64_t, uint64_t))
{
  v7.i64[1] = a1;
  sub_1AB030B7C(&v7);
  v5 = *(v2 + 16);

  os_unfair_lock_lock(v5 + 9);
  a2(v5 + 4, v2, v2, a1);
  os_unfair_lock_unlock(v5 + 9);
}

uint64_t sub_1AB131918@<X0>(uint64_t a1@<X8>)
{
  v5.i64[1] = &type metadata for IntentDispatchTimeout;
  sub_1AB030B7C(&v5);
  v3 = *(v1 + 16);

  os_unfair_lock_lock(v3 + 9);
  sub_1AB13B368(&v3[4], v1, &type metadata for IntentDispatchTimeout, a1);
  os_unfair_lock_unlock(v3 + 9);
}

uint64_t sub_1AB131AD8@<X0>(uint64_t a1@<X8>)
{
  v5.i64[1] = &type metadata for MetricsPipeline;
  sub_1AB030B7C(&v5);
  v3 = *(v1 + 16);

  os_unfair_lock_lock(v3 + 53);
  sub_1AB13D11C(&v3[4], v1, &type metadata for MetricsPipeline, a1);
  os_unfair_lock_unlock(v3 + 53);
}

char *sub_1AB131C6C(unint64_t *a1, uint64_t a2, void (*a3)(void, void, void))
{
  v7 = sub_1AB016760(0, a1);
  v11.i64[0] = v3;
  v11.i64[1] = v7;
  sub_1AB030B7C(&v11);
  v8 = *(v3 + 16);

  os_unfair_lock_lock(v8 + 9);
  v9 = sub_1AB138550(&v8[4], v3, v3, v7, a1, a2, a3);
  os_unfair_lock_unlock(v8 + 9);

  return v9;
}

uint64_t sub_1AB131E28@<X0>(_OWORD *a1@<X8>)
{
  v5.i64[1] = &type metadata for SentryConfiguration;
  sub_1AB030B7C(&v5);
  v3 = *(v1 + 16);

  os_unfair_lock_lock(v3 + 33);
  sub_1AB13E320(&v3[4], v1, &type metadata for SentryConfiguration, a1);
  os_unfair_lock_unlock(v3 + 33);
}

uint64_t sub_1AB131FE4@<X0>(_OWORD *a1@<X8>)
{
  v5.i64[1] = &type metadata for JetPackAssetSession.Configuration;
  sub_1AB030B7C(&v5);
  v3 = *(v1 + 16);

  os_unfair_lock_lock(v3 + 25);
  sub_1AB13FDB4(&v3[4], v1, &type metadata for JetPackAssetSession.Configuration, a1);
  os_unfair_lock_unlock(v3 + 25);
}

uint64_t sub_1AB1321A0(uint64_t *a1, uint64_t a2, void (*a3)(os_unfair_lock_s *, uint64_t, uint64_t, uint64_t))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v8.i64[0] = v3;
  v8.i64[1] = v5;
  sub_1AB030B7C(&v8);
  v6 = *(v3 + 16);

  os_unfair_lock_lock(v6 + 15);
  a3(v6 + 4, v3, v3, v5);
  os_unfair_lock_unlock(v6 + 15);
}

uint64_t sub_1AB1323C0(uint64_t (*a1)(void), void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = a1(0);
  v9.i64[0] = v2;
  v9.i64[1] = v4;
  sub_1AB030B7C(&v9);
  v5 = *(v2 + 16);
  v6 = *(*v5 + *MEMORY[0x1E69E6B68] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v5 + v7));
  a2(v5 + v6, v2, v2, v4);
  os_unfair_lock_unlock((v5 + v7));
}

uint64_t sub_1AB1325FC(uint64_t a1, void (*a2)(os_unfair_lock_s *, uint64_t, uint64_t, uint64_t))
{
  v7.i64[1] = a1;
  sub_1AB030B7C(&v7);
  v5 = *(v2 + 16);

  os_unfair_lock_lock(v5 + 19);
  a2(v5 + 4, v2, v2, a1);
  os_unfair_lock_unlock(v5 + 19);
}

char *sub_1AB132798()
{
  v4.i64[1] = &type metadata for IntentDispatchOptions.BadOrderingCanary;
  sub_1AB030B7C(&v4);
  v1 = *(v0 + 16);

  os_unfair_lock_lock(v1 + 9);
  v2 = sub_1AB1442A4(&v1[4], v0, v0, &type metadata for IntentDispatchOptions.BadOrderingCanary);
  os_unfair_lock_unlock(v1 + 9);

  return v2;
}

uint64_t sub_1AB132988()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436570);
  v7.i64[0] = v0;
  v7.i64[1] = v2;
  sub_1AB030B7C(&v7);
  if (v1)
  {
    v7.i64[0] = v1;
    v6 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
    if (swift_dynamicCast())
    {
      sub_1AB157E60();
      sub_1AB462024();
    }

    else
    {

      v7.i64[0] = 0;
      v7.i64[1] = 0xE000000000000000;
      MEMORY[0x1AC59BA20](0x6168636165726E55, 0xED0000203A656C62);
      swift_getErrorValue();
      sub_1AB461D64();
    }

    result = sub_1AB461884();
    __break(1u);
  }

  else
  {
    v3 = *(v0 + 16);
    os_unfair_lock_lock(v3 + 9);
    v4 = sub_1AB1480CC(&v3[4], v0, v0, v2);
    os_unfair_lock_unlock(v3 + 9);
    return v4;
  }

  return result;
}

void sub_1AB132B64(void (**a1)(uint64_t)@<X8>)
{
  v6.i64[1] = &type metadata for Bag.Profile;
  sub_1AB030B7C(&v6);
  if (v2)
  {
    v6.i64[0] = v2;
    v5 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
    if (swift_dynamicCast())
    {
      sub_1AB157E60();
      sub_1AB462024();
    }

    else
    {

      v6.i64[0] = 0;
      v6.i64[1] = 0xE000000000000000;
      MEMORY[0x1AC59BA20](0x6168636165726E55, 0xED0000203A656C62);
      swift_getErrorValue();
      sub_1AB461D64();
    }

    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 16);
    os_unfair_lock_lock(v4 + 13);
    sub_1AB149574(&v4[4], v1, COERCE_DOUBLE(&type metadata for Bag.Profile), a1);
    os_unfair_lock_unlock(v4 + 13);
  }
}

void sub_1AB132CE8(void (**a1)(uint64_t)@<X8>)
{
  v6.i64[1] = &type metadata for JetEngineBootstrap.URLProtocolHandler;
  sub_1AB030B7C(&v6);
  if (v2)
  {
    v6.i64[0] = v2;
    v5 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
    if (swift_dynamicCast())
    {
      sub_1AB157E60();
      sub_1AB462024();
    }

    else
    {

      v6.i64[0] = 0;
      v6.i64[1] = 0xE000000000000000;
      MEMORY[0x1AC59BA20](0x6168636165726E55, 0xED0000203A656C62);
      swift_getErrorValue();
      sub_1AB461D64();
    }

    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 16);
    os_unfair_lock_lock(v4 + 13);
    sub_1AB149F70(&v4[4], v1, &type metadata for JetEngineBootstrap.URLProtocolHandler, a1);
    os_unfair_lock_unlock(v4 + 13);
  }
}

void sub_1AB132E6C(void (**a1)(uint64_t)@<X8>)
{
  v6.i64[1] = &type metadata for Bag;
  sub_1AB030B7C(&v6);
  if (v2)
  {
    v6.i64[0] = v2;
    v5 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
    if (swift_dynamicCast())
    {
      sub_1AB157E60();
      sub_1AB462024();
    }

    else
    {

      v6.i64[0] = 0;
      v6.i64[1] = 0xE000000000000000;
      MEMORY[0x1AC59BA20](0x6168636165726E55, 0xED0000203A656C62);
      swift_getErrorValue();
      sub_1AB461D64();
    }

    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = *(*&v1 + 16);
    os_unfair_lock_lock(v4 + 9);
    sub_1AB14A970(&v4[4], v1, &type metadata for Bag, a1);
    os_unfair_lock_unlock(v4 + 9);
  }
}

uint64_t sub_1AB132FF0(uint64_t (*a1)(void), uint64_t (*a2)(os_unfair_lock_s *, uint64_t, uint64_t, uint64_t))
{
  v5 = a1(0);
  v10.i64[0] = v2;
  v10.i64[1] = v5;
  sub_1AB030B7C(&v10);
  if (v3)
  {
    v10.i64[0] = v3;
    v9 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
    if (swift_dynamicCast())
    {
      sub_1AB157E60();
      sub_1AB462024();
    }

    else
    {

      v10.i64[0] = 0;
      v10.i64[1] = 0xE000000000000000;
      MEMORY[0x1AC59BA20](0x6168636165726E55, 0xED0000203A656C62);
      swift_getErrorValue();
      sub_1AB461D64();
    }

    result = sub_1AB461884();
    __break(1u);
  }

  else
  {
    v6 = *(v2 + 16);
    os_unfair_lock_lock(v6 + 9);
    v7 = a2(v6 + 4, v2, v2, v5);
    os_unfair_lock_unlock(v6 + 9);
    return v7;
  }

  return result;
}

void sub_1AB133198(uint64_t a1, void (*a2)(os_unfair_lock_s *, uint64_t, uint64_t, uint64_t))
{
  v8.i64[1] = a1;
  sub_1AB030B7C(&v8);
  if (v3)
  {
    v8.i64[0] = v3;
    v7 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
    if (swift_dynamicCast())
    {
      sub_1AB157E60();
      sub_1AB462024();
    }

    else
    {

      v8.i64[0] = 0;
      v8.i64[1] = 0xE000000000000000;
      MEMORY[0x1AC59BA20](0x6168636165726E55, 0xED0000203A656C62);
      swift_getErrorValue();
      sub_1AB461D64();
    }

    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v6 = *(v2 + 16);
    os_unfair_lock_lock(v6 + 9);
    a2(v6 + 4, v2, v2, a1);
    os_unfair_lock_unlock(v6 + 9);
  }
}

void sub_1AB133364(uint64_t a1@<X8>)
{
  v6.i64[1] = &type metadata for IntentDispatchTimeout;
  sub_1AB030B7C(&v6);
  if (v2)
  {
    v6.i64[0] = v2;
    v5 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
    if (swift_dynamicCast())
    {
      sub_1AB157E60();
      sub_1AB462024();
    }

    else
    {

      v6.i64[0] = 0;
      v6.i64[1] = 0xE000000000000000;
      MEMORY[0x1AC59BA20](0x6168636165726E55, 0xED0000203A656C62);
      swift_getErrorValue();
      sub_1AB461D64();
    }

    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 16);
    os_unfair_lock_lock(v4 + 9);
    sub_1AB14E350(&v4[4], v1, COERCE_DOUBLE(&type metadata for IntentDispatchTimeout), a1);
    os_unfair_lock_unlock(v4 + 9);
  }
}

void sub_1AB133528(uint64_t a1@<X8>)
{
  v6.i64[1] = &type metadata for MetricsPipeline;
  sub_1AB030B7C(&v6);
  if (v2)
  {
    v6.i64[0] = v2;
    v5 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
    if (swift_dynamicCast())
    {
      sub_1AB157E60();
      sub_1AB462024();
    }

    else
    {

      v6.i64[0] = 0;
      v6.i64[1] = 0xE000000000000000;
      MEMORY[0x1AC59BA20](0x6168636165726E55, 0xED0000203A656C62);
      swift_getErrorValue();
      sub_1AB461D64();
    }

    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 16);
    os_unfair_lock_lock((v4 + 212));
    sub_1AB150188((v4 + 16), v1, *&v1, &type metadata for MetricsPipeline, a1);
    os_unfair_lock_unlock((v4 + 212));
  }
}

uint64_t sub_1AB1336AC(unint64_t *a1, uint64_t a2, void (*a3)(void (*)(char **__return_ptr, uint64_t), uint64_t, void))
{
  v8 = sub_1AB016760(0, a1);
  v13.i64[0] = v3;
  v13.i64[1] = v8;
  sub_1AB030B7C(&v13);
  if (v4)
  {
    v13.i64[0] = v4;
    v12 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
    if (swift_dynamicCast())
    {
      sub_1AB157E60();
      sub_1AB462024();
    }

    else
    {

      v13.i64[0] = 0;
      v13.i64[1] = 0xE000000000000000;
      MEMORY[0x1AC59BA20](0x6168636165726E55, 0xED0000203A656C62);
      swift_getErrorValue();
      sub_1AB461D64();
    }

    result = sub_1AB461884();
    __break(1u);
  }

  else
  {
    v9 = *(v3 + 16);
    os_unfair_lock_lock(v9 + 9);
    v10 = sub_1AB14B340(&v9[4], v3, v3, v8, a1, a2, a3);
    os_unfair_lock_unlock(v9 + 9);
    return v10;
  }

  return result;
}

void sub_1AB13386C(_OWORD *a1@<X8>)
{
  v6.i64[1] = &type metadata for SentryConfiguration;
  sub_1AB030B7C(&v6);
  if (v2)
  {
    v6.i64[0] = v2;
    v5 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
    if (swift_dynamicCast())
    {
      sub_1AB157E60();
      sub_1AB462024();
    }

    else
    {

      v6.i64[0] = 0;
      v6.i64[1] = 0xE000000000000000;
      MEMORY[0x1AC59BA20](0x6168636165726E55, 0xED0000203A656C62);
      swift_getErrorValue();
      sub_1AB461D64();
    }

    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 16);
    os_unfair_lock_lock(v4 + 33);
    sub_1AB151428(&v4[4], v1, &type metadata for SentryConfiguration, a1);
    os_unfair_lock_unlock(v4 + 33);
  }
}

void sub_1AB133A2C(_OWORD *a1@<X8>)
{
  v6.i64[1] = &type metadata for JetPackAssetSession.Configuration;
  sub_1AB030B7C(&v6);
  if (v2)
  {
    v6.i64[0] = v2;
    v5 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
    if (swift_dynamicCast())
    {
      sub_1AB157E60();
      sub_1AB462024();
    }

    else
    {

      v6.i64[0] = 0;
      v6.i64[1] = 0xE000000000000000;
      MEMORY[0x1AC59BA20](0x6168636165726E55, 0xED0000203A656C62);
      swift_getErrorValue();
      sub_1AB461D64();
    }

    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 16);
    os_unfair_lock_lock(v4 + 25);
    sub_1AB152FE4(&v4[4], v1, &type metadata for JetPackAssetSession.Configuration, a1);
    os_unfair_lock_unlock(v4 + 25);
  }
}

void sub_1AB133BEC(uint64_t *a1, uint64_t a2, void (*a3)(os_unfair_lock_s *, uint64_t, uint64_t, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v9.i64[0] = v3;
  v9.i64[1] = v6;
  sub_1AB030B7C(&v9);
  if (v4)
  {
    v9.i64[0] = v4;
    v8 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
    if (swift_dynamicCast())
    {
      sub_1AB157E60();
      sub_1AB462024();
    }

    else
    {

      v9.i64[0] = 0;
      v9.i64[1] = 0xE000000000000000;
      MEMORY[0x1AC59BA20](0x6168636165726E55, 0xED0000203A656C62);
      swift_getErrorValue();
      sub_1AB461D64();
    }

    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v7 = *(v3 + 16);
    os_unfair_lock_lock(v7 + 15);
    a3(v7 + 4, v3, v3, v6);
    os_unfair_lock_unlock(v7 + 15);
  }
}

void sub_1AB133E44(uint64_t (*a1)(void), void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = a1(0);
  v10.i64[0] = v2;
  v10.i64[1] = v5;
  sub_1AB030B7C(&v10);
  if (v3)
  {
    v10.i64[0] = v3;
    v9 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
    if (swift_dynamicCast())
    {
      sub_1AB157E60();
      sub_1AB462024();
    }

    else
    {

      v10.i64[0] = 0;
      v10.i64[1] = 0xE000000000000000;
      MEMORY[0x1AC59BA20](0x6168636165726E55, 0xED0000203A656C62);
      swift_getErrorValue();
      sub_1AB461D64();
    }

    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v6 = *(v2 + 16);
    v7 = *(*v6 + *MEMORY[0x1E69E6B68] + 16);
    v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v6 + v8));
    a2(v6 + v7, v2, v2, v5);
    os_unfair_lock_unlock((v6 + v8));
  }
}

void sub_1AB1340A0(uint64_t a1, void (*a2)(os_unfair_lock_s *, uint64_t, uint64_t, uint64_t))
{
  v8.i64[1] = a1;
  sub_1AB030B7C(&v8);
  if (v3)
  {
    v8.i64[0] = v3;
    v7 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
    if (swift_dynamicCast())
    {
      sub_1AB157E60();
      sub_1AB462024();
    }

    else
    {

      v8.i64[0] = 0;
      v8.i64[1] = 0xE000000000000000;
      MEMORY[0x1AC59BA20](0x6168636165726E55, 0xED0000203A656C62);
      swift_getErrorValue();
      sub_1AB461D64();
    }

    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v6 = *(v2 + 16);
    os_unfair_lock_lock(v6 + 19);
    a2(v6 + 4, v2, v2, a1);
    os_unfair_lock_unlock(v6 + 19);
  }
}

void sub_1AB134230()
{
  v4.i64[1] = &type metadata for IntentDispatchOptions.BadOrderingCanary;
  sub_1AB030B7C(&v4);
  if (v1)
  {
    v4.i64[0] = v1;
    v3 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
    if (swift_dynamicCast())
    {
      sub_1AB157E60();
      sub_1AB462024();
    }

    else
    {

      v4.i64[0] = 0;
      v4.i64[1] = 0xE000000000000000;
      MEMORY[0x1AC59BA20](0x6168636165726E55, 0xED0000203A656C62);
      swift_getErrorValue();
      sub_1AB461D64();
    }

    sub_1AB461884();
    __break(1u);
  }

  else
  {
    isa = v0[2].isa;
    os_unfair_lock_lock(isa + 9);
    sub_1AB15767C(&isa[4], v0, v0, &type metadata for IntentDispatchOptions.BadOrderingCanary);
    os_unfair_lock_unlock(isa + 9);
  }
}

uint64_t sub_1AB1343D4(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v61 = a3;
  v62 = a4;
  v6 = sub_1AB45FFD4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB45FF84();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v51 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v51 - v16;
  v18 = *a1;
  if (*(a1 + 16))
  {
  }

  v52 = v7;
  v60 = v15;
  v64 = v18;
  v66 = v4;
  v20 = qword_1EB434BA8;
  v63 = *(a1 + 8);

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = sub_1AB45FFC4();
  v22 = __swift_project_value_buffer(v21, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v56 = v22;
  v23 = sub_1AB45FFA4();
  v24 = sub_1AB461234();
  v25 = sub_1AB461314();
  v53 = v6;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v58 = v10;
    v28 = v9;
    v29 = v27;
    v65.tv_sec = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_1AB030D2C(0xD000000000000017, 0x80000001AB4FEF80, &v65.tv_sec);
    v30 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v23, v24, v30, "MakeDependency", "object=%s,type=lazy", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    v31 = v29;
    v9 = v28;
    v10 = v58;
    MEMORY[0x1AC59F020](v31, -1, -1);
    MEMORY[0x1AC59F020](v26, -1, -1);
  }

  (*(v10 + 16))(v14, v17, v9);
  sub_1AB460014();
  swift_allocObject();
  v32 = sub_1AB460004();
  v57 = v9;
  v58 = v32;
  v55 = *(v10 + 8);
  v55(v17, v9);
  static MonotonicTime.now.getter(&v65);
  tv_sec = v65.tv_sec;
  tv_nsec = v65.tv_nsec;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v34 = v65.tv_sec;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v35 = swift_allocObject();
  *(v35 + 24) = 0;
  v36 = (v35 + 24);
  *(v35 + 16) = 0;
  v65.tv_sec = v35;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
  swift_task_localValuePush();
  v37 = v66;
  v19 = sub_1AB12C354(v64, v63, v61, v62);
  v66 = v37;
  sub_1AB057304();
  *a1 = v19;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;

  static MonotonicTime.now.getter(&v65);
  v38 = v65.tv_sec;
  v39 = v65.tv_nsec;
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  v40 = v39 / *&qword_1ED4D1F90 + v38 - (tv_nsec / *&qword_1ED4D1F90 + tv_sec);

  v41 = sub_1AB45FFA4();
  v42 = v60;
  sub_1AB45FFF4();
  LODWORD(v62) = sub_1AB461224();

  if (sub_1AB461314())
  {

    v43 = v59;
    sub_1AB460024();

    v45 = v52;
    v44 = v53;
    if ((*(v52 + 88))(v43, v53) == *MEMORY[0x1E69E93E8])
    {
      v46 = 0;
      v61 = "[Error] Interval already ended";
    }

    else
    {
      (*(v45 + 8))(v43, v44);
      v61 = "selfTime=%f";
      v46 = 1;
    }

    v47 = swift_slowAlloc();
    *v47 = 0;
    *(v47 + 1) = v46;
    *(v47 + 2) = 2048;
    os_unfair_lock_lock(v36);
    v48 = *(v35 + 16);
    os_unfair_lock_unlock(v36);
    *(v47 + 4) = v40 - v48;
    v42 = v60;
    v49 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v41, v62, v49, "MakeDependency", v61, v47, 0xCu);
    MEMORY[0x1AC59F020](v47, -1, -1);
  }

  v55(v42, v57);
  os_unfair_lock_lock((v34 + 24));
  *(v34 + 16) = v40 + *(v34 + 16);
  os_unfair_lock_unlock((v34 + 24));
  swift_task_localValuePop();
  sub_1AB057304();

  return v19;
}

uint64_t sub_1AB134A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void (**a4)(uint64_t)@<X8>)
{
  v5 = v4;
  v90 = a2;
  v91 = a3;
  v8 = sub_1AB45FFD4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v84 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AB460134();
  v88 = *(v11 - 8);
  v89 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v87 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AB45FF84();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v75 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = a1;
  v22 = &v75 - v21;
  v23 = *v20;
  if (*(v20 + 16))
  {
    *a4 = v23;
  }

  else
  {
    v75 = v9;
    v76 = v8;
    v85 = v19;
    v93 = v23;
    v82 = a4;
    v80 = v20;
    v25 = qword_1EB434BA8;
    v92 = *(v20 + 8);

    if (v25 != -1)
    {
      swift_once();
    }

    v26 = sub_1AB45FFC4();
    v27 = __swift_project_value_buffer(v26, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v79 = v27;
    v28 = sub_1AB45FFA4();
    v29 = sub_1AB461234();
    v30 = sub_1AB461314();
    v86 = v13;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v32 = v14;
      v33 = swift_slowAlloc();
      v94.tv_sec = v33;
      *v31 = 136315138;
      *(v31 + 4) = sub_1AB030D2C(0xD000000000000017, 0x80000001AB4FEEF0, &v94.tv_sec);
      v34 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v28, v29, v34, "MakeDependency", "object=%s,type=lazy", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      v35 = v33;
      v14 = v32;
      MEMORY[0x1AC59F020](v35, -1, -1);
      v36 = v31;
      v13 = v86;
      MEMORY[0x1AC59F020](v36, -1, -1);
    }

    v37 = v5;
    (*(v14 + 16))(v18, v22, v13);
    sub_1AB460014();
    swift_allocObject();
    v83 = sub_1AB460004();
    v38 = *(v14 + 8);
    v81 = v14 + 8;
    v78 = v38;
    v38(v22, v13);
    static MonotonicTime.now.getter(&v94);
    tv_sec = v94.tv_sec;
    tv_nsec = v94.tv_nsec;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v77 = v94.tv_sec;
    type metadata accessor for BaseObjectGraph();
    v41 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v94.tv_sec = v41;

    swift_task_localValuePush();
    v42 = sub_1AB01DBA0(*(v41 + 16));
    swift_task_localValuePop();

    if (v42 && (v43 = swift_conformsToProtocol2()) != 0)
    {
      v44 = *(v43 + 8);

      v44();
      sub_1AB0318FC();
      sub_1AB460184();
      v45 = sub_1AB460154();
      v46 = *(v42 + 48);

      os_unfair_lock_lock((v46 + 20));
      v47 = *(v46 + 16);
      os_unfair_lock_unlock((v46 + 20));

      if (v47 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v45);

      sub_1AB460164();
    }

    else
    {
      v45 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
    v48 = swift_allocObject();
    *(v48 + 24) = 0;
    v49 = (v48 + 24);
    *(v48 + 16) = 0;
    v94.tv_sec = v48;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
    swift_task_localValuePush();
    sub_1AB12C208(v93, v92, v90, v91);
    v91 = v37;
    v50 = v45;
    if (v45)
    {
      v52 = v88;
      v51 = v89;
      v53 = tv_sec;
      v54 = tv_nsec;
      v55 = v87;
      (*(v88 + 104))(v87, *MEMORY[0x1E6977AC8], v89);
      sub_1AB460174();
      v56 = v55;
      tv_nsec = v54;
      tv_sec = v53;
      (*(v52 + 8))(v56, v51);
    }

    v57 = v50;
    if (v42)
    {
      v94.tv_sec = &type metadata for AsyncObjectGraphMetrics;
      StartUpPerformanceEvent.record(checkpoint:)(&v94.tv_sec);
    }

    v58 = v80;
    sub_1AB157FC0(*v80, *(v80 + 8), *(v80 + 16), MEMORY[0x1E69E7CF8]);
    *v58 = v95;
    *(v58 + 8) = 0;
    *(v58 + 16) = 1;

    static MonotonicTime.now.getter(&v94);
    v59 = v94.tv_sec;
    v60 = v94.tv_nsec;
    if (qword_1ED4D1F88 != -1)
    {
      swift_once();
    }

    v61 = v60 / *&qword_1ED4D1F90 + v59 - (tv_nsec / *&qword_1ED4D1F90 + tv_sec);

    v62 = sub_1AB45FFA4();
    v63 = v85;
    sub_1AB45FFF4();
    v64 = sub_1AB461224();

    if (sub_1AB461314())
    {
      v90 = v57;
      v65 = v64;

      v66 = v84;
      sub_1AB460024();

      v67 = v75;
      v68 = v76;
      if ((*(v75 + 88))(v66, v76) == *MEMORY[0x1E69E93E8])
      {
        v69 = 0;
        v70 = "[Error] Interval already ended";
      }

      else
      {
        (*(v67 + 8))(v66, v68);
        v70 = "selfTime=%f";
        v69 = 1;
      }

      v71 = swift_slowAlloc();
      *v71 = 0;
      *(v71 + 1) = v69;
      *(v71 + 2) = 2048;
      os_unfair_lock_lock(v49);
      v72 = *(v48 + 16);
      os_unfair_lock_unlock(v49);
      *(v71 + 4) = v61 - v72;
      v63 = v85;
      v73 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v62, v65, v73, "MakeDependency", v70, v71, 0xCu);
      MEMORY[0x1AC59F020](v71, -1, -1);
    }

    v78(v63, v86);
    v74 = v77;
    os_unfair_lock_lock(v77 + 6);
    *&v74[4]._os_unfair_lock_opaque = v61 + *&v74[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v74 + 6);
    *v82 = v95;
    swift_task_localValuePop();
    sub_1AB157FC0(v93, v92, 0, MEMORY[0x1E69E7CF8]);
  }
}

uint64_t sub_1AB1353F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v92 = a3;
  v93 = a4;
  v6 = sub_1AB45FFD4();
  v84 = *(v6 - 8);
  v85 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v83 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AB460134();
  v89 = *(v8 - 8);
  v90 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v88 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB45FF84();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v76 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v76 - v17;
  v19 = *a1;
  v20 = *(a1 + 8);
  if (*(a1 + 16))
  {
    sub_1AB04B604(*a1);
    return v19;
  }

  v86 = v16;
  v91 = v19;
  v96 = v4;
  v22 = qword_1EB434BA8;
  v94 = v20;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = sub_1AB45FFC4();
  v24 = __swift_project_value_buffer(v23, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v80 = v24;
  v25 = sub_1AB45FFA4();
  v26 = sub_1AB461234();
  v27 = sub_1AB461314();
  v87 = v10;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v95.tv_sec = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_1AB030D2C(0xD00000000000001ELL, 0x80000001AB4FF310, &v95.tv_sec);
    v30 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v25, v26, v30, "MakeDependency", "object=%s,type=lazy", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    v31 = v29;
    v10 = v87;
    MEMORY[0x1AC59F020](v31, -1, -1);
    MEMORY[0x1AC59F020](v28, -1, -1);
  }

  (*(v11 + 16))(v15, v18, v10);
  sub_1AB460014();
  swift_allocObject();
  v32 = sub_1AB460004();
  v33 = *(v11 + 8);
  v81 = v11 + 8;
  v79 = v33;
  v33(v18, v10);
  static MonotonicTime.now.getter(&v95);
  tv_nsec = v95.tv_nsec;
  tv_sec = v95.tv_sec;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v78 = v95.tv_sec;
  type metadata accessor for BaseObjectGraph();
  v35 = static BaseObjectGraph.current.getter();
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v95.tv_sec = v35;

  swift_task_localValuePush();
  v36 = sub_1AB01DBA0(*(v35 + 16));
  swift_task_localValuePop();

  if (v36)
  {
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436570);
    v38 = swift_conformsToProtocol2();
    v39 = 0;
    v40 = v91;
    if (!v38 || !v37)
    {
      goto LABEL_19;
    }

    v41 = *(v38 + 8);
    v42 = v38;

    v41(v37, v42);
    sub_1AB0318FC();
    sub_1AB460184();
    v39 = sub_1AB460154();
    v43 = *(v36 + 48);

    os_unfair_lock_lock((v43 + 20));
    v44 = *(v43 + 16);
    os_unfair_lock_unlock((v43 + 20));

    if (v44 == 1)
    {

      sub_1AB460124();
    }

    sub_1AB3858E0(v39);

    sub_1AB460164();
  }

  else
  {
    v39 = 0;
  }

  v40 = v91;
LABEL_19:
  v82 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v45 = swift_allocObject();
  *(v45 + 24) = 0;
  v76 = (v45 + 24);
  *(v45 + 16) = 0;
  v95.tv_sec = v45;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
  swift_task_localValuePush();
  v46 = v96;
  v47 = sub_1AB12C0AC(v40, v94, v92, v93);
  v21 = v47;
  v49 = v48;
  v96 = v46;
  v50 = v39;
  if (v39)
  {
    v51 = *MEMORY[0x1E6977AC8];
    v92 = v49;
    v93 = v45;
    v52 = v47;
    v53 = tv_nsec;
    v55 = v89;
    v54 = v90;
    v56 = a1;
    v57 = v36;
    v58 = v88;
    (*(v89 + 104))(v88, v51, v90);
    sub_1AB460174();
    v59 = v58;
    v36 = v57;
    a1 = v56;
    (*(v55 + 8))(v59, v54);
    tv_nsec = v53;
    v21 = v52;
    v49 = v92;
    v45 = v93;
  }

  v93 = v50;
  if (v36)
  {
    v95.tv_sec = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436570);
    StartUpPerformanceEvent.record(checkpoint:)(&v95.tv_sec);
  }

  sub_1AB157FF4(v40, v94, 0);
  *a1 = v21;
  *(a1 + 8) = v49;
  *(a1 + 16) = 1;
  sub_1AB04B604(v21);
  static MonotonicTime.now.getter(&v95);
  v60 = v95.tv_sec;
  v61 = v95.tv_nsec;
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  v62 = v61 / *&qword_1ED4D1F90 + v60 - (tv_nsec / *&qword_1ED4D1F90 + tv_sec);

  v63 = sub_1AB45FFA4();
  v64 = v86;
  sub_1AB45FFF4();
  LODWORD(v92) = sub_1AB461224();

  if (sub_1AB461314())
  {

    v65 = v83;
    sub_1AB460024();

    v67 = v84;
    v66 = v85;
    if ((*(v84 + 88))(v65, v85) == *MEMORY[0x1E69E93E8])
    {
      v68 = 0;
      v69 = "[Error] Interval already ended";
    }

    else
    {
      (*(v67 + 8))(v65, v66);
      v69 = "selfTime=%f";
      v68 = 1;
    }

    v70 = swift_slowAlloc();
    *v70 = 0;
    *(v70 + 1) = v68;
    *(v70 + 2) = 2048;
    v71 = v76;
    os_unfair_lock_lock(v76);
    v72 = *(v45 + 16);
    os_unfair_lock_unlock(v71);
    *(v70 + 4) = v62 - v72;
    v64 = v86;
    v73 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v63, v92, v73, "MakeDependency", v69, v70, 0xCu);
    MEMORY[0x1AC59F020](v70, -1, -1);
    v40 = v91;
  }

  v79(v64, v87);
  v74 = v78;
  os_unfair_lock_lock(v78 + 6);
  *&v74[4]._os_unfair_lock_opaque = v62 + *&v74[4]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v74 + 6);
  swift_task_localValuePop();

  sub_1AB157FF4(v40, v94, 0);

  return v21;
}

uint64_t sub_1AB135D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v85 = a3;
  v86 = a4;
  v83 = a2;
  v92 = a5;
  v6 = sub_1AB45FFD4();
  v78 = *(v6 - 8);
  v79 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v77 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AB460134();
  v81 = *(v8 - 8);
  v82 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v80 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB45FD64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v94 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_1AB45FF84();
  v93 = *(v91 - 8);
  v13 = MEMORY[0x1EEE9AC00](v91);
  v89 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v73 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v73 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436928);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v73 - v21;
  v87 = a1;
  sub_1AB014A58(a1, &v73 - v21, &qword_1EB436928);
  v84 = v20;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v11 + 32))(v92, v22, v10);
  }

  v88 = v11;
  v90 = v10;
  v24 = *(v22 + 1);
  v74 = *v22;
  if (qword_1EB434BA8 != -1)
  {
    swift_once();
  }

  v25 = sub_1AB45FFC4();
  v26 = __swift_project_value_buffer(v25, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v83 = v26;
  v27 = sub_1AB45FFA4();
  v28 = sub_1AB461234();
  if (sub_1AB461314())
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v95.tv_sec = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_1AB030D2C(0x7963696C6F50, 0xE600000000000000, &v95.tv_sec);
    v31 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v27, v28, v31, "MakeDependency", "object=%s,type=lazy", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x1AC59F020](v30, -1, -1);
    MEMORY[0x1AC59F020](v29, -1, -1);
  }

  v32 = v93;
  v33 = v91;
  (*(v93 + 16))(v17, v19, v91);
  sub_1AB460014();
  swift_allocObject();
  v34 = sub_1AB460004();
  v35 = *(v32 + 8);
  v93 = v32 + 8;
  v76 = v35;
  v35(v19, v33);
  static MonotonicTime.now.getter(&v95);
  v73 = v95;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  tv_sec = v95.tv_sec;
  type metadata accessor for BaseObjectGraph();
  v36 = static BaseObjectGraph.current.getter();
  v37 = v90;
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v95.tv_sec = v36;

  swift_task_localValuePush();
  v38 = sub_1AB01DBA0(*(v36 + 16));
  swift_task_localValuePop();

  if (v38 && (v39 = swift_conformsToProtocol2()) != 0)
  {
    v40 = *(v39 + 8);
    v41 = v39;

    v40(v37, v41);
    sub_1AB0318FC();
    sub_1AB460184();
    v42 = sub_1AB460154();
    v43 = *(v38 + 48);

    os_unfair_lock_lock((v43 + 20));
    v44 = *(v43 + 16);
    os_unfair_lock_unlock((v43 + 20));

    if (v44 == 1)
    {

      sub_1AB460124();
    }

    sub_1AB3858E0(v42);

    sub_1AB460164();
  }

  else
  {
    v42 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v45 = swift_allocObject();
  *(v45 + 24) = 0;
  v46 = (v45 + 24);
  *(v45 + 16) = 0;
  v95.tv_sec = v45;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
  swift_task_localValuePush();
  v47 = v96;
  sub_1AB12C208(v74, v24, v85, v86);
  v96 = v47;
  if (v42)
  {
    v49 = v81;
    v48 = v82;
    v50 = v24;
    v51 = v34;
    v52 = v80;
    (*(v81 + 104))(v80, *MEMORY[0x1E6977AC8], v82);
    sub_1AB460174();
    v53 = v52;
    v34 = v51;
    v24 = v50;
    (*(v49 + 8))(v53, v48);
    v37 = v90;
  }

  v54 = v88;
  if (v38)
  {
    v95.tv_sec = v37;
    StartUpPerformanceEvent.record(checkpoint:)(&v95.tv_sec);
  }

  v86 = v24;
  v55 = v87;
  sub_1AB014AC0(v87, &qword_1EB436928);
  (*(v54 + 16))(v55, v94, v37);
  swift_storeEnumTagMultiPayload();
  static MonotonicTime.now.getter(&v95);
  v56 = v95.tv_sec;
  tv_nsec = v95.tv_nsec;
  v58 = v92;
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  v59 = tv_nsec / *&qword_1ED4D1F90 + v56 - (v73.tv_nsec / *&qword_1ED4D1F90 + v73.tv_sec);

  v60 = sub_1AB45FFA4();
  v61 = v89;
  sub_1AB45FFF4();
  LODWORD(v87) = sub_1AB461224();

  if (sub_1AB461314())
  {

    v62 = v77;
    sub_1AB460024();
    v85 = v34;

    v64 = v78;
    v63 = v79;
    if ((*(v78 + 88))(v62, v79) == *MEMORY[0x1E69E93E8])
    {
      v65 = 0;
      v66 = "[Error] Interval already ended";
    }

    else
    {
      (*(v64 + 8))(v62, v63);
      v66 = "selfTime=%f";
      v65 = 1;
    }

    v67 = swift_slowAlloc();
    *v67 = 0;
    *(v67 + 1) = v65;
    *(v67 + 2) = 2048;
    os_unfair_lock_lock(v46);
    v68 = *(v45 + 16);
    os_unfair_lock_unlock(v46);
    *(v67 + 4) = v59 - v68;
    v69 = v89;
    v70 = sub_1AB45FF64();
    v71 = v66;
    v61 = v69;
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v60, v87, v70, "MakeDependency", v71, v67, 0xCu);
    MEMORY[0x1AC59F020](v67, -1, -1);
    v58 = v92;
  }

  v76(v61, v91);
  v72 = tv_sec;
  os_unfair_lock_lock(tv_sec + 6);
  *&v72[4]._os_unfair_lock_opaque = v59 + *&v72[4]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v72 + 6);
  (*(v88 + 32))(v58, v94, v90);
  swift_task_localValuePop();
}

uint64_t sub_1AB136830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void (**a4)(uint64_t)@<X8>)
{
  v5 = v4;
  v97 = a2;
  v98 = a3;
  v8 = sub_1AB45FFD4();
  v91 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v90 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB460134();
  v95 = *(v10 - 8);
  v96 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v94 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AB45FF84();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v79 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v79 - v19;
  v22 = *a1;
  v21 = *(a1 + 8);
  v23 = *(a1 + 16);
  v24 = *(a1 + 24);
  if (*(a1 + 32))
  {
    *a4 = v22;
    a4[1] = v21;
    a4[2] = v23;
    a4[3] = v24;
  }

  else
  {
    v84 = v5;
    v80 = v8;
    v92 = v18;
    v99 = v22;
    v86 = v23;
    v87 = v24;
    v88 = a4;
    v26 = qword_1EB434BA8;
    v104 = v21;

    if (v26 != -1)
    {
      swift_once();
    }

    v27 = sub_1AB45FFC4();
    v28 = __swift_project_value_buffer(v27, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v83 = v28;
    v29 = sub_1AB45FFA4();
    v30 = sub_1AB461234();
    v31 = sub_1AB461314();
    v93 = v12;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v33 = v13;
      v34 = swift_slowAlloc();
      v101.tv_sec = v34;
      *v32 = 136315138;
      *(v32 + 4) = sub_1AB030D2C(0x656C69666F7250, 0xE700000000000000, &v101.tv_sec);
      v35 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v29, v30, v35, "MakeDependency", "object=%s,type=lazy", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      v36 = v34;
      v13 = v33;
      MEMORY[0x1AC59F020](v36, -1, -1);
      v37 = v32;
      v12 = v93;
      MEMORY[0x1AC59F020](v37, -1, -1);
    }

    (*(v13 + 16))(v17, v20, v12);
    sub_1AB460014();
    swift_allocObject();
    v89 = sub_1AB460004();
    v39 = *(v13 + 8);
    v38 = v13 + 8;
    v82 = v39;
    v39(v20, v12);
    static MonotonicTime.now.getter(&v101);
    tv_nsec = v101.tv_nsec;
    tv_sec = v101.tv_sec;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    v85 = v38;
    sub_1AB4622E4();
    v81 = v101.tv_sec;
    type metadata accessor for BaseObjectGraph();
    v42 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v101.tv_sec = v42;

    swift_task_localValuePush();
    v43 = sub_1AB01DBA0(*(v42 + 16));
    swift_task_localValuePop();

    if (v43 && (v44 = swift_conformsToProtocol2()) != 0)
    {
      v45 = *(v44 + 8);

      v45();
      sub_1AB0318FC();
      sub_1AB460184();
      v46 = sub_1AB460154();
      v47 = *(v43 + 48);

      os_unfair_lock_lock((v47 + 20));
      LODWORD(v45) = *(v47 + 16);
      os_unfair_lock_unlock((v47 + 20));

      if (v45 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v46);

      sub_1AB460164();
    }

    else
    {
      v46 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
    v48 = swift_allocObject();
    *(v48 + 24) = 0;
    v79 = (v48 + 24);
    *(v48 + 16) = 0;
    v101.tv_sec = v48;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
    swift_task_localValuePush();
    sub_1AB12C208(v99, v104, v97, v98);
    if (v46)
    {
      v49 = *MEMORY[0x1E6977AC8];
      v98 = tv_nsec;
      v51 = v95;
      v50 = v96;
      v52 = v43;
      v53 = tv_sec;
      v54 = v94;
      (*(v95 + 104))(v94, v49, v96);
      sub_1AB460174();
      v55 = v54;
      tv_sec = v53;
      v43 = v52;
      (*(v51 + 8))(v55, v50);
      tv_nsec = v98;
    }

    if (v43)
    {
      v100.tv_sec = &type metadata for Bag.Profile;
      StartUpPerformanceEvent.record(checkpoint:)(&v100.tv_sec);
    }

    sub_1AB158048(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
    v56 = v101.tv_nsec;
    v57 = v102;
    v58 = v103;
    *a1 = v101.tv_sec;
    *(a1 + 8) = v56;
    *(a1 + 16) = v57;
    *(a1 + 24) = v58;
    *(a1 + 32) = 1;

    static MonotonicTime.now.getter(&v100);
    v59 = v100.tv_sec;
    v60 = v100.tv_nsec;
    if (qword_1ED4D1F88 != -1)
    {
      swift_once();
    }

    v61 = v60 / *&qword_1ED4D1F90 + v59 - (tv_nsec / *&qword_1ED4D1F90 + tv_sec);

    v62 = sub_1AB45FFA4();
    v63 = v92;
    sub_1AB45FFF4();
    v64 = sub_1AB461224();

    if (sub_1AB461314())
    {
      v98 = v46;
      v65 = v64;

      v66 = v90;
      sub_1AB460024();

      v67 = v91;
      v68 = v80;
      if ((*(v91 + 88))(v66, v80) == *MEMORY[0x1E69E93E8])
      {
        v69 = 0;
        v70 = "[Error] Interval already ended";
      }

      else
      {
        (*(v67 + 8))(v66, v68);
        v70 = "selfTime=%f";
        v69 = 1;
      }

      v71 = swift_slowAlloc();
      *v71 = 0;
      *(v71 + 1) = v69;
      *(v71 + 2) = 2048;
      v72 = v79;
      os_unfair_lock_lock(v79);
      v73 = *(v48 + 16);
      os_unfair_lock_unlock(v72);
      *(v71 + 4) = v61 - v73;
      v63 = v92;
      v74 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v62, v65, v74, "MakeDependency", v70, v71, 0xCu);
      MEMORY[0x1AC59F020](v71, -1, -1);
    }

    v82(v63, v93);
    v75 = v81;
    os_unfair_lock_lock(v81 + 6);
    *&v75[4]._os_unfair_lock_opaque = v61 + *&v75[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v75 + 6);
    v76 = v102;
    v77 = v103;
    v78 = v88;
    *v88 = v101;
    v78[1].tv_sec = v76;
    v78[1].tv_nsec = v77;
    swift_task_localValuePop();
    sub_1AB158048(v99, v104, v86, v87, 0);
  }
}

uint64_t sub_1AB137200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void (**a4)(uint64_t)@<X8>)
{
  v94 = a2;
  v95 = a3;
  v7 = sub_1AB45FFD4();
  v88 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v87 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB460134();
  v92 = *(v9 - 8);
  v93 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v91 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AB45FF84();
  v100 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v75 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v75 - v17;
  v19 = *a1;
  v20 = *(a1 + 8);
  v21 = *(a1 + 16);
  v22 = *(a1 + 24);
  if (*(a1 + 32))
  {
    *a4 = v19;
    a4[1] = v20;
    a4[2] = v21;
    a4[3] = v22;
    return sub_1AB144A64(v19, v20);
  }

  else
  {
    v81 = v4;
    v77 = v7;
    v89 = v16;
    v96 = v19;
    v83 = v21;
    v84 = v22;
    v85 = a4;
    v24 = qword_1EB434BA8;

    if (v24 != -1)
    {
      swift_once();
    }

    v25 = sub_1AB45FFC4();
    v26 = __swift_project_value_buffer(v25, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v80 = v26;
    v27 = sub_1AB45FFA4();
    v28 = sub_1AB461234();
    v29 = sub_1AB461314();
    v90 = v11;
    v82 = v20;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v98.tv_sec = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_1AB030D2C(0xD000000000000012, 0x80000001AB4D4260, &v98.tv_sec);
      v32 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v27, v28, v32, "MakeDependency", "object=%s,type=lazy", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      v33 = v100;
      MEMORY[0x1AC59F020](v31, -1, -1);
      v34 = v30;
      v11 = v90;
      v20 = v82;
      MEMORY[0x1AC59F020](v34, -1, -1);
    }

    else
    {

      v33 = v100;
    }

    (*(v33 + 16))(v15, v18, v11);
    sub_1AB460014();
    swift_allocObject();
    v86 = sub_1AB460004();
    v79 = *(v33 + 8);
    v79(v18, v11);
    static MonotonicTime.now.getter(&v98);
    tv_nsec = v98.tv_nsec;
    tv_sec = v98.tv_sec;
    v37 = v33 + 8;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v78 = v98.tv_sec;
    type metadata accessor for BaseObjectGraph();
    v38 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v98.tv_sec = v38;

    swift_task_localValuePush();
    v39 = sub_1AB01DBA0(*(v38 + 16));
    swift_task_localValuePop();

    v100 = v37;
    if (v39 && (v40 = swift_conformsToProtocol2()) != 0)
    {
      v41 = *(v40 + 8);

      v41();
      sub_1AB0318FC();
      sub_1AB460184();
      v42 = sub_1AB460154();
      v43 = *(v39 + 48);

      os_unfair_lock_lock((v43 + 20));
      LODWORD(v41) = *(v43 + 16);
      os_unfair_lock_unlock((v43 + 20));

      if (v41 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v42);

      sub_1AB460164();
    }

    else
    {
      v42 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
    v44 = swift_allocObject();
    *(v44 + 24) = 0;
    v76 = (v44 + 24);
    *(v44 + 16) = 0;
    v98.tv_sec = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
    swift_task_localValuePush();
    v45 = v81;
    sub_1AB12C208(v96, v20, v94, v95);
    v95 = v45;
    if (v42)
    {
      v46 = *MEMORY[0x1E6977AC8];
      v94 = v44;
      v47 = tv_sec;
      v48 = v39;
      v49 = tv_nsec;
      v51 = v92;
      v50 = v93;
      v52 = v20;
      v53 = v91;
      (*(v92 + 104))(v91, v46, v93);
      sub_1AB460174();
      v54 = v53;
      v20 = v52;
      (*(v51 + 8))(v54, v50);
      tv_nsec = v49;
      v39 = v48;
      tv_sec = v47;
      v44 = v94;
    }

    if (v39)
    {
      v97.tv_sec = &type metadata for JetEngineBootstrap.URLProtocolHandler;
      StartUpPerformanceEvent.record(checkpoint:)(&v97.tv_sec);
    }

    sub_1AB157FE4(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
    v55 = v98;
    v56 = v99;
    *a1 = v98;
    *(a1 + 16) = v56;
    *(a1 + 32) = 1;
    sub_1AB144A64(v55.tv_sec, v55.tv_nsec);
    static MonotonicTime.now.getter(&v97);
    v57 = v97.tv_sec;
    v58 = v97.tv_nsec;
    if (qword_1ED4D1F88 != -1)
    {
      swift_once();
    }

    v59 = v58 / *&qword_1ED4D1F90 + v57 - (tv_nsec / *&qword_1ED4D1F90 + tv_sec);

    v60 = sub_1AB45FFA4();
    v61 = v89;
    sub_1AB45FFF4();
    v62 = sub_1AB461224();

    if (sub_1AB461314())
    {

      v63 = v87;
      sub_1AB460024();

      v64 = v88;
      v65 = v77;
      if ((*(v88 + 88))(v63, v77) == *MEMORY[0x1E69E93E8])
      {
        v66 = 0;
        v67 = "[Error] Interval already ended";
      }

      else
      {
        (*(v64 + 8))(v63, v65);
        v67 = "selfTime=%f";
        v66 = 1;
      }

      v68 = swift_slowAlloc();
      *v68 = 0;
      *(v68 + 1) = v66;
      *(v68 + 2) = 2048;
      v69 = v76;
      os_unfair_lock_lock(v76);
      v70 = *(v44 + 16);
      os_unfair_lock_unlock(v69);
      *(v68 + 4) = v59 - v70;
      v61 = v89;
      v71 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v60, v62, v71, "MakeDependency", v67, v68, 0xCu);
      MEMORY[0x1AC59F020](v68, -1, -1);
      v20 = v82;
    }

    v79(v61, v90);
    v72 = v78;
    os_unfair_lock_lock(v78 + 6);
    *&v72[4]._os_unfair_lock_opaque = v59 + *&v72[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v72 + 6);
    v73 = v99;
    v74 = v85;
    *v85 = v98;
    v74[1] = v73;
    swift_task_localValuePop();
    sub_1AB157FE4(v96, v20, v83, v84, 0);
  }
}

uint64_t sub_1AB137BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void (**a4)(uint64_t)@<X8>)
{
  v5 = v4;
  v90 = a2;
  v91 = a3;
  v8 = sub_1AB45FFD4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v84 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AB460134();
  v88 = *(v11 - 8);
  v89 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v87 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AB45FF84();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v75 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = a1;
  v22 = &v75 - v21;
  v23 = *v20;
  if (*(v20 + 16))
  {
    *a4 = v23;
    return swift_unknownObjectRetain();
  }

  else
  {
    v75 = v9;
    v76 = v8;
    v85 = v19;
    v93 = v23;
    v82 = a4;
    v80 = v20;
    v25 = qword_1EB434BA8;
    v92 = *(v20 + 8);

    if (v25 != -1)
    {
      swift_once();
    }

    v26 = sub_1AB45FFC4();
    v27 = __swift_project_value_buffer(v26, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v79 = v27;
    v28 = sub_1AB45FFA4();
    v29 = sub_1AB461234();
    v30 = sub_1AB461314();
    v86 = v13;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v32 = v14;
      v33 = swift_slowAlloc();
      v94.tv_sec = v33;
      *v31 = 136315138;
      *(v31 + 4) = sub_1AB030D2C(6775106, 0xE300000000000000, &v94.tv_sec);
      v34 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v28, v29, v34, "MakeDependency", "object=%s,type=lazy", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      v35 = v33;
      v14 = v32;
      MEMORY[0x1AC59F020](v35, -1, -1);
      v36 = v31;
      v13 = v86;
      MEMORY[0x1AC59F020](v36, -1, -1);
    }

    v37 = v5;
    (*(v14 + 16))(v18, v22, v13);
    sub_1AB460014();
    swift_allocObject();
    v83 = sub_1AB460004();
    v38 = *(v14 + 8);
    v81 = v14 + 8;
    v78 = v38;
    v38(v22, v13);
    static MonotonicTime.now.getter(&v94);
    tv_sec = v94.tv_sec;
    tv_nsec = v94.tv_nsec;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v77 = v94.tv_sec;
    type metadata accessor for BaseObjectGraph();
    v41 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v94.tv_sec = v41;

    swift_task_localValuePush();
    v42 = sub_1AB01DBA0(*(v41 + 16));
    swift_task_localValuePop();

    if (v42 && (v43 = swift_conformsToProtocol2()) != 0)
    {
      v44 = *(v43 + 8);

      v44();
      sub_1AB0318FC();
      sub_1AB460184();
      v45 = sub_1AB460154();
      v46 = *(v42 + 48);

      os_unfair_lock_lock((v46 + 20));
      v47 = *(v46 + 16);
      os_unfair_lock_unlock((v46 + 20));

      if (v47 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v45);

      sub_1AB460164();
    }

    else
    {
      v45 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
    v48 = swift_allocObject();
    *(v48 + 24) = 0;
    v49 = (v48 + 24);
    *(v48 + 16) = 0;
    v94.tv_sec = v48;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
    swift_task_localValuePush();
    sub_1AB12C208(v93, v92, v90, v91);
    v91 = v37;
    v50 = v45;
    if (v45)
    {
      v52 = v88;
      v51 = v89;
      v53 = tv_sec;
      v54 = tv_nsec;
      v55 = v87;
      (*(v88 + 104))(v87, *MEMORY[0x1E6977AC8], v89);
      sub_1AB460174();
      v56 = v55;
      tv_nsec = v54;
      tv_sec = v53;
      (*(v52 + 8))(v56, v51);
    }

    v57 = v50;
    if (v42)
    {
      v94.tv_sec = &type metadata for Bag;
      StartUpPerformanceEvent.record(checkpoint:)(&v94.tv_sec);
    }

    v58 = v80;
    sub_1AB157FC0(*v80, *(v80 + 8), *(v80 + 16), MEMORY[0x1E69E7D60]);
    *v58 = v95;
    *(v58 + 8) = 0;
    *(v58 + 16) = 1;
    swift_unknownObjectRetain();
    static MonotonicTime.now.getter(&v94);
    v59 = v94.tv_sec;
    v60 = v94.tv_nsec;
    if (qword_1ED4D1F88 != -1)
    {
      swift_once();
    }

    v61 = v60 / *&qword_1ED4D1F90 + v59 - (tv_nsec / *&qword_1ED4D1F90 + tv_sec);

    v62 = sub_1AB45FFA4();
    v63 = v85;
    sub_1AB45FFF4();
    v64 = sub_1AB461224();

    if (sub_1AB461314())
    {
      v90 = v57;
      v65 = v64;

      v66 = v84;
      sub_1AB460024();

      v67 = v75;
      v68 = v76;
      if ((*(v75 + 88))(v66, v76) == *MEMORY[0x1E69E93E8])
      {
        v69 = 0;
        v70 = "[Error] Interval already ended";
      }

      else
      {
        (*(v67 + 8))(v66, v68);
        v70 = "selfTime=%f";
        v69 = 1;
      }

      v71 = swift_slowAlloc();
      *v71 = 0;
      *(v71 + 1) = v69;
      *(v71 + 2) = 2048;
      os_unfair_lock_lock(v49);
      v72 = *(v48 + 16);
      os_unfair_lock_unlock(v49);
      *(v71 + 4) = v61 - v72;
      v63 = v85;
      v73 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v62, v65, v73, "MakeDependency", v70, v71, 0xCu);
      MEMORY[0x1AC59F020](v71, -1, -1);
    }

    v78(v63, v86);
    v74 = v77;
    os_unfair_lock_lock(v77 + 6);
    *&v74[4]._os_unfair_lock_opaque = v61 + *&v74[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v74 + 6);
    *v82 = v95;
    swift_task_localValuePop();
    sub_1AB157FC0(v93, v92, 0, MEMORY[0x1E69E7D60]);
  }
}

char *sub_1AB138550(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, unint64_t *a5, uint64_t a6, void (*a7)(void, void, void))
{
  v103 = a6;
  v104 = a7;
  v102 = a5;
  v99 = a3;
  v100 = a4;
  v9 = sub_1AB45FFD4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v93 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AB460134();
  v97 = *(v12 - 8);
  v98 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v96 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1AB45FF84();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v85 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v85 - v21;
  v23 = *a1;
  if (*(a1 + 16))
  {
    return v23;
  }

  v92 = v7;
  v87 = v10;
  v88 = v9;
  v94 = v20;
  v107 = v23;
  v25 = qword_1EB434BA8;
  v105 = *(a1 + 8);

  v26 = a1;
  if (v25 != -1)
  {
    swift_once();
  }

  v27 = sub_1AB45FFC4();
  v28 = __swift_project_value_buffer(v27, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v91 = v28;
  v29 = sub_1AB45FFA4();
  v30 = sub_1AB461234();
  v31 = sub_1AB461314();
  v95 = v14;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v101 = v15;
    v33 = v32;
    v34 = swift_slowAlloc();
    v106.tv_sec = v34;
    *v33 = 136315138;
    sub_1AB016760(0, v102);
    v35 = sub_1AB462314();
    v37 = sub_1AB030D2C(v35, v36, &v106.tv_sec);

    *(v33 + 4) = v37;
    v38 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v29, v30, v38, "MakeDependency", "object=%s,type=lazy", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    v39 = v34;
    v14 = v95;
    MEMORY[0x1AC59F020](v39, -1, -1);
    v40 = v33;
    v15 = v101;
    MEMORY[0x1AC59F020](v40, -1, -1);
  }

  (*(v15 + 16))(v19, v22, v14);
  sub_1AB460014();
  swift_allocObject();
  v41 = sub_1AB460004();
  v43 = *(v15 + 8);
  v42 = v15 + 8;
  v90 = v43;
  v43(v22, v14);
  static MonotonicTime.now.getter(&v106);
  tv_nsec = v106.tv_nsec;
  tv_sec = v106.tv_sec;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  v101 = v42;
  sub_1AB4622E4();
  v45 = v106.tv_sec;
  type metadata accessor for BaseObjectGraph();
  v46 = static BaseObjectGraph.current.getter();
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v106.tv_sec = v46;

  swift_task_localValuePush();
  v47 = sub_1AB01DBA0(*(v46 + 16));
  swift_task_localValuePop();

  if (v47)
  {
    v48 = sub_1AB016760(0, v102);
    v49 = swift_conformsToProtocol2();
    v50 = 0;
    v51 = v104;
    if (!v49 || !v48)
    {
      goto LABEL_19;
    }

    v52 = *(v49 + 8);
    v53 = v49;

    v52(v48, v53);
    sub_1AB0318FC();
    sub_1AB460184();
    v50 = sub_1AB460154();
    v54 = *(v47 + 6);

    os_unfair_lock_lock((v54 + 20));
    v55 = *(v54 + 16);
    os_unfair_lock_unlock((v54 + 20));

    if (v55 == 1)
    {

      sub_1AB460124();
    }

    sub_1AB3858E0(v50);

    sub_1AB460164();
  }

  else
  {
    v50 = 0;
  }

  v51 = v104;
LABEL_19:
  v103 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v56 = swift_allocObject();
  *(v56 + 24) = 0;
  v86 = (v56 + 24);
  *(v56 + 16) = 0;
  v106.tv_sec = v56;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
  swift_task_localValuePush();
  v57 = v92;
  v58 = sub_1AB12C354(v107, v105, v99, v100);
  v102 = v57;
  if (v50)
  {
    v59 = *MEMORY[0x1E6977AC8];
    v99 = v26;
    v100 = v47;
    v60 = v97;
    v61 = v51;
    v62 = v45;
    v63 = v96;
    v64 = v56;
    v65 = tv_nsec;
    v66 = v98;
    (*(v97 + 104))(v96, v59, v98);
    sub_1AB460174();
    v67 = v63;
    v45 = v62;
    v51 = v61;
    v68 = v66;
    tv_nsec = v65;
    v56 = v64;
    (*(v60 + 8))(v67, v68);
    v26 = v99;
    v47 = v100;
  }

  if (v47)
  {
    v106.tv_sec = swift_getObjectType();
    StartUpPerformanceEvent.record(checkpoint:)(&v106.tv_sec);
  }

  v51(v107, v105, 0);
  *v26 = v58;
  *(v26 + 8) = 0;
  *(v26 + 16) = 1;
  v100 = v58;
  static MonotonicTime.now.getter(&v106);
  v69 = v106.tv_sec;
  v70 = v106.tv_nsec;
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  v71 = v70 / *&qword_1ED4D1F90 + v69 - (tv_nsec / *&qword_1ED4D1F90 + tv_sec);

  v72 = sub_1AB45FFA4();
  v73 = v94;
  sub_1AB45FFF4();
  LODWORD(v99) = sub_1AB461224();

  if (sub_1AB461314())
  {

    v74 = v93;
    sub_1AB460024();

    v75 = v87;
    v76 = v88;
    if ((*(v87 + 88))(v74, v88) == *MEMORY[0x1E69E93E8])
    {
      v77 = 0;
      v78 = "[Error] Interval already ended";
    }

    else
    {
      (*(v75 + 8))(v74, v76);
      v78 = "selfTime=%f";
      v77 = 1;
    }

    v79 = swift_slowAlloc();
    *v79 = 0;
    *(v79 + 1) = v77;
    *(v79 + 2) = 2048;
    v80 = v86;
    os_unfair_lock_lock(v86);
    v81 = *(v56 + 16);
    os_unfair_lock_unlock(v80);
    *(v79 + 4) = v71 - v81;
    v82 = v94;
    v83 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v72, v99, v83, "MakeDependency", v78, v79, 0xCu);
    v84 = v79;
    v73 = v82;
    MEMORY[0x1AC59F020](v84, -1, -1);
    v51 = v104;
  }

  v90(v73, v95);
  os_unfair_lock_lock((v45 + 24));
  *(v45 + 16) = v71 + *(v45 + 16);
  os_unfair_lock_unlock((v45 + 24));
  swift_task_localValuePop();

  v51(v107, v105, 0);

  return v100;
}

uint64_t sub_1AB138EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v89 = a3;
  v90 = a4;
  v6 = sub_1AB45FFD4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v81 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB460134();
  v86 = *(v9 - 8);
  v87 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AB45FF84();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v71 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v71 - v18;
  v20 = *a1;
  if (*(a1 + 16))
  {
  }

  v73 = v7;
  v74 = v6;
  v82 = v17;
  v88 = v20;
  v92 = v4;
  v22 = *(a1 + 8);
  v23 = qword_1EB434BA8;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = sub_1AB45FFC4();
  v25 = __swift_project_value_buffer(v24, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v78 = v25;
  v26 = sub_1AB45FFA4();
  v27 = sub_1AB461234();
  v28 = sub_1AB461314();
  v83 = v22;
  v84 = v11;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = v12;
    v31 = swift_slowAlloc();
    v91.tv_sec = v31;
    *v29 = 136315138;
    *(v29 + 4) = sub_1AB030D2C(0x73746E756F636341, 0xE800000000000000, &v91.tv_sec);
    v32 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v26, v27, v32, "MakeDependency", "object=%s,type=lazy", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    v33 = v31;
    v12 = v30;
    v22 = v83;
    MEMORY[0x1AC59F020](v33, -1, -1);
    v34 = v29;
    v11 = v84;
    MEMORY[0x1AC59F020](v34, -1, -1);
  }

  (*(v12 + 16))(v16, v19, v11);
  sub_1AB460014();
  swift_allocObject();
  v80 = sub_1AB460004();
  v36 = *(v12 + 8);
  v35 = v12 + 8;
  v77 = v36;
  v36(v19, v11);
  static MonotonicTime.now.getter(&v91);
  v75 = v91;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  v79 = v35;
  sub_1AB4622E4();
  tv_sec = v91.tv_sec;
  type metadata accessor for BaseObjectGraph();
  v37 = static BaseObjectGraph.current.getter();
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v91.tv_sec = v37;

  swift_task_localValuePush();
  v38 = sub_1AB01DBA0(*(v37 + 16));
  swift_task_localValuePop();

  if (v38)
  {
    v39 = type metadata accessor for Unstable.Accounts();
    v40 = swift_conformsToProtocol2();
    v41 = 0;
    v42 = v88;
    if (!v40 || !v39)
    {
      goto LABEL_19;
    }

    v43 = *(v40 + 8);
    v44 = v40;

    v43(v39, v44);
    sub_1AB0318FC();
    sub_1AB460184();
    v41 = sub_1AB460154();
    v45 = *(v38 + 48);

    os_unfair_lock_lock((v45 + 20));
    v46 = *(v45 + 16);
    os_unfair_lock_unlock((v45 + 20));

    if (v46 == 1)
    {

      sub_1AB460124();
    }

    sub_1AB3858E0(v41);

    sub_1AB460164();
  }

  else
  {
    v41 = 0;
  }

  v42 = v88;
LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v47 = swift_allocObject();
  *(v47 + 24) = 0;
  v72 = (v47 + 24);
  *(v47 + 16) = 0;
  v91.tv_sec = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
  swift_task_localValuePush();
  v48 = v92;
  v49 = sub_1AB12C354(v42, v22, v89, v90);
  v21 = v49;
  v92 = v48;
  if (v41)
  {
    v50 = *MEMORY[0x1E6977AC8];
    v90 = v47;
    v51 = v49;
    v52 = v85;
    v53 = v86;
    v54 = v87;
    (*(v86 + 104))(v85, v50, v87);
    sub_1AB460174();
    (*(v53 + 8))(v52, v54);
    v21 = v51;
    v47 = v90;
  }

  if (v38)
  {
    v91.tv_sec = *v21;
    StartUpPerformanceEvent.record(checkpoint:)(&v91.tv_sec);
  }

  sub_1AB057304();
  *a1 = v21;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;

  static MonotonicTime.now.getter(&v91);
  v55 = v91.tv_sec;
  tv_nsec = v91.tv_nsec;
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  v57 = tv_nsec / *&qword_1ED4D1F90 + v55 - (v75.tv_nsec / *&qword_1ED4D1F90 + v75.tv_sec);

  v58 = sub_1AB45FFA4();
  v59 = v82;
  sub_1AB45FFF4();
  LODWORD(v90) = sub_1AB461224();

  if (sub_1AB461314())
  {

    v60 = v81;
    sub_1AB460024();

    v61 = v73;
    v62 = v74;
    if ((*(v73 + 88))(v60, v74) == *MEMORY[0x1E69E93E8])
    {
      v63 = 0;
      v64 = "[Error] Interval already ended";
    }

    else
    {
      (*(v61 + 8))(v60, v62);
      v64 = "selfTime=%f";
      v63 = 1;
    }

    v65 = swift_slowAlloc();
    *v65 = 0;
    *(v65 + 1) = v63;
    *(v65 + 2) = 2048;
    v66 = v72;
    os_unfair_lock_lock(v72);
    v67 = *(v47 + 16);
    os_unfair_lock_unlock(v66);
    *(v65 + 4) = v57 - v67;
    v59 = v82;
    v68 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v58, v90, v68, "MakeDependency", v64, v65, 0xCu);
    MEMORY[0x1AC59F020](v65, -1, -1);
  }

  v77(v59, v84);
  v69 = tv_sec;
  os_unfair_lock_lock(tv_sec + 6);
  *&v69[4]._os_unfair_lock_opaque = v57 + *&v69[4]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v69 + 6);
  swift_task_localValuePop();

  sub_1AB057304();

  return v21;
}

uint64_t sub_1AB139890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void (**a4)(uint64_t)@<X8>)
{
  v5 = v4;
  v90 = a2;
  v91 = a3;
  v8 = sub_1AB45FFD4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v84 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AB460134();
  v88 = *(v11 - 8);
  v89 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v87 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AB45FF84();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v75 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = a1;
  v22 = &v75 - v21;
  v23 = *v20;
  if (*(v20 + 16))
  {
    *a4 = v23;
  }

  else
  {
    v75 = v9;
    v76 = v8;
    v85 = v19;
    v93 = v23;
    v82 = a4;
    v80 = v20;
    v25 = qword_1EB434BA8;
    v92 = *(v20 + 8);

    if (v25 != -1)
    {
      swift_once();
    }

    v26 = sub_1AB45FFC4();
    v27 = __swift_project_value_buffer(v26, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v79 = v27;
    v28 = sub_1AB45FFA4();
    v29 = sub_1AB461234();
    v30 = sub_1AB461314();
    v86 = v13;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v32 = v14;
      v33 = swift_slowAlloc();
      v94.tv_sec = v33;
      *v31 = 136315138;
      *(v31 + 4) = sub_1AB030D2C(0x746E6F434E4F534ALL, 0xEB00000000747865, &v94.tv_sec);
      v34 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v28, v29, v34, "MakeDependency", "object=%s,type=lazy", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      v35 = v33;
      v14 = v32;
      MEMORY[0x1AC59F020](v35, -1, -1);
      v36 = v31;
      v13 = v86;
      MEMORY[0x1AC59F020](v36, -1, -1);
    }

    v37 = v5;
    (*(v14 + 16))(v18, v22, v13);
    sub_1AB460014();
    swift_allocObject();
    v83 = sub_1AB460004();
    v38 = *(v14 + 8);
    v81 = v14 + 8;
    v78 = v38;
    v38(v22, v13);
    static MonotonicTime.now.getter(&v94);
    tv_sec = v94.tv_sec;
    tv_nsec = v94.tv_nsec;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v77 = v94.tv_sec;
    type metadata accessor for BaseObjectGraph();
    v41 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v94.tv_sec = v41;

    swift_task_localValuePush();
    v42 = sub_1AB01DBA0(*(v41 + 16));
    swift_task_localValuePop();

    if (v42 && (v43 = swift_conformsToProtocol2()) != 0)
    {
      v44 = *(v43 + 8);

      v44();
      sub_1AB0318FC();
      sub_1AB460184();
      v45 = sub_1AB460154();
      v46 = *(v42 + 48);

      os_unfair_lock_lock((v46 + 20));
      v47 = *(v46 + 16);
      os_unfair_lock_unlock((v46 + 20));

      if (v47 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v45);

      sub_1AB460164();
    }

    else
    {
      v45 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
    v48 = swift_allocObject();
    *(v48 + 24) = 0;
    v49 = (v48 + 24);
    *(v48 + 16) = 0;
    v94.tv_sec = v48;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
    swift_task_localValuePush();
    sub_1AB12C208(v93, v92, v90, v91);
    v91 = v37;
    v50 = v45;
    if (v45)
    {
      v52 = v88;
      v51 = v89;
      v53 = tv_sec;
      v54 = tv_nsec;
      v55 = v87;
      (*(v88 + 104))(v87, *MEMORY[0x1E6977AC8], v89);
      sub_1AB460174();
      v56 = v55;
      tv_nsec = v54;
      tv_sec = v53;
      (*(v52 + 8))(v56, v51);
    }

    v57 = v50;
    if (v42)
    {
      v94.tv_sec = &type metadata for JSONContext;
      StartUpPerformanceEvent.record(checkpoint:)(&v94.tv_sec);
    }

    v58 = v80;
    sub_1AB157FC0(*v80, *(v80 + 8), *(v80 + 16), MEMORY[0x1E69E7CF8]);
    *v58 = v95;
    *(v58 + 8) = 0;
    *(v58 + 16) = 1;

    static MonotonicTime.now.getter(&v94);
    v59 = v94.tv_sec;
    v60 = v94.tv_nsec;
    if (qword_1ED4D1F88 != -1)
    {
      swift_once();
    }

    v61 = v60 / *&qword_1ED4D1F90 + v59 - (tv_nsec / *&qword_1ED4D1F90 + tv_sec);

    v62 = sub_1AB45FFA4();
    v63 = v85;
    sub_1AB45FFF4();
    v64 = sub_1AB461224();

    if (sub_1AB461314())
    {
      v90 = v57;
      v65 = v64;

      v66 = v84;
      sub_1AB460024();

      v67 = v75;
      v68 = v76;
      if ((*(v75 + 88))(v66, v76) == *MEMORY[0x1E69E93E8])
      {
        v69 = 0;
        v70 = "[Error] Interval already ended";
      }

      else
      {
        (*(v67 + 8))(v66, v68);
        v70 = "selfTime=%f";
        v69 = 1;
      }

      v71 = swift_slowAlloc();
      *v71 = 0;
      *(v71 + 1) = v69;
      *(v71 + 2) = 2048;
      os_unfair_lock_lock(v49);
      v72 = *(v48 + 16);
      os_unfair_lock_unlock(v49);
      *(v71 + 4) = v61 - v72;
      v63 = v85;
      v73 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v62, v65, v73, "MakeDependency", v70, v71, 0xCu);
      MEMORY[0x1AC59F020](v71, -1, -1);
    }

    v78(v63, v86);
    v74 = v77;
    os_unfair_lock_lock(v77 + 6);
    *&v74[4]._os_unfair_lock_opaque = v61 + *&v74[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v74 + 6);
    *v82 = v95;
    swift_task_localValuePop();
    sub_1AB157FC0(v93, v92, 0, MEMORY[0x1E69E7CF8]);
  }
}

uint64_t sub_1AB13A214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v90 = a3;
  v91 = a4;
  v7 = sub_1AB45FFD4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v83 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB460134();
  v88 = *(v10 - 8);
  v89 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v87 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AB45FF84();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v74 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v74 - v19;
  v21 = *a1;
  if (*(a1 + 16))
  {
  }

  v76 = v8;
  v77 = v7;
  v84 = v18;
  v86 = v21;
  v23 = qword_1EB434BA8;
  v92 = *(a1 + 8);

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = sub_1AB45FFC4();
  v25 = __swift_project_value_buffer(v24, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v80 = v25;
  v26 = sub_1AB45FFA4();
  v27 = sub_1AB461234();
  v28 = sub_1AB461314();
  v85 = v12;
  v94 = v5;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v93.tv_sec = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_1AB030D2C(0x697669746341574ELL, 0xEA00000000007974, &v93.tv_sec);
    v31 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v26, v27, v31, "MakeDependency", "object=%s,type=lazy", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    v32 = v30;
    v12 = v85;
    MEMORY[0x1AC59F020](v32, -1, -1);
    MEMORY[0x1AC59F020](v29, -1, -1);
  }

  (*(v13 + 16))(v17, v20, v12);
  sub_1AB460014();
  swift_allocObject();
  v82 = sub_1AB460004();
  v33 = v13 + 8;
  v79 = *(v13 + 8);
  v79(v20, v12);
  static MonotonicTime.now.getter(&v93);
  tv_sec = v93.tv_sec;
  tv_nsec = v93.tv_nsec;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v78 = v93.tv_sec;
  type metadata accessor for BaseObjectGraph();
  v36 = static BaseObjectGraph.current.getter();
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v81 = v33;
  v93.tv_sec = v36;

  swift_task_localValuePush();
  v37 = sub_1AB01DBA0(*(v36 + 16));
  swift_task_localValuePop();

  if (v37)
  {
    v38 = sub_1AB460184();
    v39 = swift_conformsToProtocol2();
    v40 = 0;
    if (v39 && v38)
    {
      v41 = *(v39 + 8);
      v42 = v39;

      v41(v38, v42);
      sub_1AB0318FC();
      v40 = sub_1AB460154();
      v43 = *(v37 + 48);

      os_unfair_lock_lock((v43 + 20));
      v44 = *(v43 + 16);
      os_unfair_lock_unlock((v43 + 20));

      if (v44 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v40);

      sub_1AB460164();
    }
  }

  else
  {
    v40 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v45 = swift_allocObject();
  *(v45 + 24) = 0;
  v75 = (v45 + 24);
  *(v45 + 16) = 0;
  v93.tv_sec = v45;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
  swift_task_localValuePush();
  v46 = v94;
  v47 = sub_1AB12C354(v86, v92, v90, v91);
  v22 = v47;
  v94 = v46;
  if (v40)
  {
    v48 = *MEMORY[0x1E6977AC8];
    v90 = v47;
    v91 = v45;
    v49 = tv_sec;
    v50 = v88;
    v51 = v37;
    v52 = v87;
    v53 = a1;
    v54 = tv_nsec;
    v55 = v89;
    (*(v88 + 104))(v87, v48, v89);
    sub_1AB460174();
    v56 = v52;
    v37 = v51;
    v57 = v55;
    tv_nsec = v54;
    a1 = v53;
    (*(v50 + 8))(v56, v57);
    tv_sec = v49;
    v22 = v90;
    v45 = v91;
  }

  if (v37)
  {
    v93.tv_sec = *v22;
    StartUpPerformanceEvent.record(checkpoint:)(&v93.tv_sec);
  }

  sub_1AB057304();
  *a1 = v22;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;

  static MonotonicTime.now.getter(&v93);
  v58 = v93.tv_sec;
  v59 = v93.tv_nsec;
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  v60 = v59 / *&qword_1ED4D1F90 + v58 - (tv_nsec / *&qword_1ED4D1F90 + tv_sec);

  v61 = sub_1AB45FFA4();
  v62 = v84;
  sub_1AB45FFF4();
  LODWORD(v91) = sub_1AB461224();

  if (sub_1AB461314())
  {

    v63 = v83;
    sub_1AB460024();

    v65 = v76;
    v64 = v77;
    if ((*(v76 + 88))(v63, v77) == *MEMORY[0x1E69E93E8])
    {
      v66 = 0;
      v67 = "[Error] Interval already ended";
    }

    else
    {
      (*(v65 + 8))(v63, v64);
      v67 = "selfTime=%f";
      v66 = 1;
    }

    v68 = swift_slowAlloc();
    *v68 = 0;
    *(v68 + 1) = v66;
    *(v68 + 2) = 2048;
    v69 = v75;
    os_unfair_lock_lock(v75);
    v70 = *(v45 + 16);
    os_unfair_lock_unlock(v69);
    *(v68 + 4) = v60 - v70;
    v62 = v84;
    v71 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v61, v91, v71, "MakeDependency", v67, v68, 0xCu);
    MEMORY[0x1AC59F020](v68, -1, -1);
  }

  v79(v62, v85);
  v72 = v78;
  os_unfair_lock_lock(v78 + 6);
  *&v72[4]._os_unfair_lock_opaque = v60 + *&v72[4]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v72 + 6);
  swift_task_localValuePop();

  sub_1AB057304();

  return v22;
}

uint64_t sub_1AB13AB90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v65 = a2;
  v66 = a3;
  v7 = sub_1AB45FFD4();
  v63 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v67 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB45FF84();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v69 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v56 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v56 - v16;
  sub_1AB014A58(a1, v72, &qword_1EB436698);
  if (v73)
  {
    return sub_1AB0149B0(v72, a4);
  }

  v56 = v7;
  v74 = v4;
  v68 = *(&v72[0] + 1);
  v58 = *&v72[0];
  if (qword_1EB434BA8 != -1)
  {
    swift_once();
  }

  v19 = sub_1AB45FFC4();
  v20 = __swift_project_value_buffer(v19, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v60 = v20;
  v21 = sub_1AB45FFA4();
  v22 = sub_1AB461234();
  v23 = sub_1AB461314();
  v64 = v9;
  v61 = a4;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v71[0].tv_sec = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_1AB030D2C(0xD000000000000021, 0x80000001AB4FF090, &v71[0].tv_sec);
    v26 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v21, v22, v26, "MakeDependency", "object=%s,type=lazy", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    v27 = v25;
    v9 = v64;
    MEMORY[0x1AC59F020](v27, -1, -1);
    MEMORY[0x1AC59F020](v24, -1, -1);
  }

  (*(v10 + 16))(v15, v17, v9);
  sub_1AB460014();
  swift_allocObject();
  v28 = sub_1AB460004();
  v30 = *(v10 + 8);
  v29 = v10 + 8;
  v59 = v30;
  v30(v17, v9);
  static MonotonicTime.now.getter(v71);
  tv_sec = v71[0].tv_sec;
  tv_nsec = v71[0].tv_nsec;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  v62 = v28;
  sub_1AB4622E4();
  v32 = v71[0].tv_sec;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436690);
  if (v33 == type metadata accessor for StartUpPerformanceEvent())
  {
    v35 = 0;
  }

  else
  {
    type metadata accessor for BaseObjectGraph();
    v34 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v71[0].tv_sec = v34;

    swift_task_localValuePush();
    v35 = sub_1AB01DBA0(*(v34 + 16));
    swift_task_localValuePop();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v36 = swift_allocObject();
  *(v36 + 24) = 0;
  v37 = (v36 + 24);
  *(v36 + 16) = 0;
  v71[0].tv_sec = v36;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
  swift_task_localValuePush();
  v38 = v74;
  sub_1AB12C208(v58, v68, v65, v66);
  v74 = v38;
  v66 = v35;
  if (v35)
  {
    v70.tv_sec = v33;
    StartUpPerformanceEvent.record(checkpoint:)(&v70.tv_sec);
  }

  v65 = v29;
  sub_1AB014AC0(a1, &qword_1EB436698);
  sub_1AB01494C(v71, a1);
  *(a1 + 40) = 1;
  static MonotonicTime.now.getter(&v70);
  v39 = v70.tv_sec;
  v40 = v70.tv_nsec;
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  v41 = v40 / *&qword_1ED4D1F90 + v39 - (tv_nsec / *&qword_1ED4D1F90 + tv_sec);

  v42 = sub_1AB45FFA4();
  v43 = v69;
  sub_1AB45FFF4();
  v44 = sub_1AB461224();

  v45 = sub_1AB461314();
  v46 = v67;
  if (v45)
  {

    sub_1AB460024();

    v47 = v63;
    v48 = v56;
    if ((*(v63 + 88))(v46, v56) == *MEMORY[0x1E69E93E8])
    {
      v49 = 0;
      v50 = "[Error] Interval already ended";
    }

    else
    {
      (*(v47 + 8))(v46, v48);
      v50 = "selfTime=%f";
      v49 = 1;
    }

    v51 = swift_slowAlloc();
    *v51 = 0;
    *(v51 + 1) = v49;
    *(v51 + 2) = 2048;
    os_unfair_lock_lock(v37);
    v52 = *(v36 + 16);
    os_unfair_lock_unlock(v37);
    *(v51 + 4) = v41 - v52;
    v53 = v69;
    v54 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v42, v44, v54, "MakeDependency", v50, v51, 0xCu);
    v55 = v51;
    v43 = v53;
    MEMORY[0x1AC59F020](v55, -1, -1);
  }

  v59(v43, v64);
  os_unfair_lock_lock((v32 + 24));
  *(v32 + 16) = v41 + *(v32 + 16);
  os_unfair_lock_unlock((v32 + 24));
  sub_1AB0149B0(&v71[0].tv_sec, v61);
  swift_task_localValuePop();
}

uint64_t sub_1AB13B368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v90 = a2;
  v91 = a3;
  v7 = sub_1AB45FFD4();
  v85 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v84 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB460134();
  v88 = *(v9 - 8);
  v89 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v87 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AB45FF84();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v76 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v76 - v18;
  v21 = *a1;
  result = *(a1 + 8);
  if (*(a1 + 16))
  {
    *a4 = v21;
    *(a4 + 8) = result & 1;
  }

  else
  {
    v76 = v7;
    v86 = v17;
    v92 = v21;
    v93 = result;
    v98 = v4;
    v22 = qword_1EB434BA8;

    if (v22 != -1)
    {
      swift_once();
    }

    v23 = sub_1AB45FFC4();
    v24 = __swift_project_value_buffer(v23, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v80 = v24;
    v25 = sub_1AB45FFA4();
    v26 = sub_1AB461234();
    v27 = sub_1AB461314();
    v82 = a4;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v94 = v12;
      v30 = v11;
      v31 = v29;
      v97.tv_sec = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1AB030D2C(0xD000000000000015, 0x80000001AB4FF050, &v97.tv_sec);
      v32 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v25, v26, v32, "MakeDependency", "object=%s,type=lazy", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      v33 = v31;
      v11 = v30;
      v12 = v94;
      MEMORY[0x1AC59F020](v33, -1, -1);
      MEMORY[0x1AC59F020](v28, -1, -1);
    }

    (*(v12 + 16))(v16, v19, v11);
    sub_1AB460014();
    swift_allocObject();
    v83 = sub_1AB460004();
    v35 = *(v12 + 8);
    v34 = v12 + 8;
    v81 = v11;
    v79 = v35;
    v35(v19, v11);
    static MonotonicTime.now.getter(&v97);
    tv_nsec = v97.tv_nsec;
    tv_sec = v97.tv_sec;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v78 = v97.tv_sec;
    type metadata accessor for BaseObjectGraph();
    v37 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v97.tv_sec = v37;

    swift_task_localValuePush();
    v38 = sub_1AB01DBA0(*(v37 + 16));
    swift_task_localValuePop();

    if (v38 && (v39 = swift_conformsToProtocol2()) != 0)
    {
      v40 = *(v39 + 8);

      v40();
      sub_1AB0318FC();
      sub_1AB460184();
      v41 = sub_1AB460154();
      v42 = *(v38 + 48);

      os_unfair_lock_lock((v42 + 20));
      v43 = *(v42 + 16);
      os_unfair_lock_unlock((v42 + 20));

      if (v43 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v41);

      sub_1AB460164();
    }

    else
    {
      v41 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
    v44 = swift_allocObject();
    *(v44 + 24) = 0;
    v45 = (v44 + 24);
    *(v44 + 16) = 0;
    v97.tv_sec = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
    swift_task_localValuePush();
    v46 = v98;
    sub_1AB12C208(v92, v93, v90, v91);
    v98 = v46;
    v47 = v41;
    if (v41)
    {
      v48 = *MEMORY[0x1E6977AC8];
      v94 = v44;
      v49 = a1;
      v50 = v34;
      v51 = v45;
      v52 = v38;
      v53 = tv_nsec;
      v54 = v87;
      v55 = v88;
      v56 = v89;
      (*(v88 + 104))(v87, v48, v89);
      sub_1AB460174();
      (*(v55 + 8))(v54, v56);
      tv_nsec = v53;
      v38 = v52;
      v45 = v51;
      v34 = v50;
      a1 = v49;
      v44 = v94;
    }

    if (v38)
    {
      v97.tv_sec = &type metadata for IntentDispatchTimeout;
      StartUpPerformanceEvent.record(checkpoint:)(&v97.tv_sec);
    }

    v94 = v34;
    sub_1AB0D60F4(*a1, *(a1 + 8), *(a1 + 16));
    v57 = v96;
    *a1 = v95;
    *(a1 + 8) = v57;
    *(a1 + 16) = 1;
    static MonotonicTime.now.getter(&v97);
    v58 = v97.tv_sec;
    v59 = v97.tv_nsec;
    if (qword_1ED4D1F88 != -1)
    {
      swift_once();
    }

    v60 = v59 / *&qword_1ED4D1F90 + v58 - (tv_nsec / *&qword_1ED4D1F90 + tv_sec);

    v61 = sub_1AB45FFA4();
    v62 = v86;
    sub_1AB45FFF4();
    v63 = sub_1AB461224();

    if (sub_1AB461314())
    {
      v91 = v47;
      v64 = v63;

      v65 = v84;
      sub_1AB460024();

      v66 = v85;
      v67 = v76;
      if ((*(v85 + 88))(v65, v76) == *MEMORY[0x1E69E93E8])
      {
        v68 = 0;
        v69 = "[Error] Interval already ended";
      }

      else
      {
        (*(v66 + 8))(v65, v67);
        v69 = "selfTime=%f";
        v68 = 1;
      }

      v70 = swift_slowAlloc();
      *v70 = 0;
      *(v70 + 1) = v68;
      *(v70 + 2) = 2048;
      os_unfair_lock_lock(v45);
      v71 = *(v44 + 16);
      os_unfair_lock_unlock(v45);
      *(v70 + 4) = v60 - v71;
      v62 = v86;
      v72 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v61, v64, v72, "MakeDependency", v69, v70, 0xCu);
      MEMORY[0x1AC59F020](v70, -1, -1);
    }

    v79(v62, v81);
    v73 = v78;
    os_unfair_lock_lock(v78 + 6);
    *&v73[4]._os_unfair_lock_opaque = v60 + *&v73[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v73 + 6);
    v74 = v96;
    v75 = v82;
    *v82 = v95;
    *(v75 + 8) = v74;
    swift_task_localValuePop();
    sub_1AB0D60F4(v92, v93, 0);
  }

  return result;
}

uint64_t sub_1AB13BCF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v90 = a3;
  v91 = a4;
  v88 = a2;
  v8 = sub_1AB45FFD4();
  v82 = *(v8 - 8);
  v83 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v81 = &tv_sec - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB460134();
  v86 = *(v10 - 8);
  v87 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v85 = &tv_sec - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for PageIntentInstrumentation();
  MEMORY[0x1EEE9AC00](v96);
  v95 = &tv_sec - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1AB45FF84();
  v100 = *(v97 - 8);
  v13 = MEMORY[0x1EEE9AC00](v97);
  v94 = &tv_sec - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &tv_sec - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &tv_sec - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436638);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &tv_sec - v21;
  v92 = a1;
  sub_1AB014A58(a1, &tv_sec - v21, &qword_1EB436638);
  v89 = v20;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1AB0342CC(v22, a5, type metadata accessor for PageIntentInstrumentation);
  }

  v84 = a5;
  v24 = *(v22 + 1);
  v77 = *v22;
  v93 = v24;
  if (qword_1EB434BA8 != -1)
  {
    swift_once();
  }

  v25 = sub_1AB45FFC4();
  v26 = __swift_project_value_buffer(v25, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v80 = v26;
  v27 = sub_1AB45FFA4();
  v28 = sub_1AB461234();
  v29 = sub_1AB461314();
  v31 = v95;
  v30 = v96;
  v98 = v5;
  if (v29)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v99.tv_sec = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_1AB030D2C(0xD000000000000019, 0x80000001AB4FF030, &v99.tv_sec);
    v34 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v27, v28, v34, "MakeDependency", "object=%s,type=lazy", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x1AC59F020](v33, -1, -1);
    MEMORY[0x1AC59F020](v32, -1, -1);
  }

  v35 = v100;
  v36 = v97;
  (*(v100 + 16))(v17, v19, v97);
  sub_1AB460014();
  swift_allocObject();
  v37 = sub_1AB460004();
  v38 = *(v35 + 8);
  v100 = v35 + 8;
  v79 = v38;
  v38(v19, v36);
  static MonotonicTime.now.getter(&v99);
  tv_nsec = v99.tv_nsec;
  tv_sec = v99.tv_sec;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v78 = v99.tv_sec;
  type metadata accessor for BaseObjectGraph();
  v40 = static BaseObjectGraph.current.getter();
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v99.tv_sec = v40;

  swift_task_localValuePush();
  v41 = sub_1AB01DBA0(*(v40 + 16));
  swift_task_localValuePop();

  v88 = v37;
  if (v41 && (v42 = swift_conformsToProtocol2()) != 0)
  {
    v43 = *(v42 + 8);
    v44 = v42;

    v43(v30, v44);
    sub_1AB0318FC();
    sub_1AB460184();
    v45 = sub_1AB460154();
    v46 = *(v41 + 48);

    os_unfair_lock_lock((v46 + 20));
    v47 = *(v46 + 16);
    os_unfair_lock_unlock((v46 + 20));

    if (v47 == 1)
    {

      sub_1AB460124();
    }

    sub_1AB3858E0(v45);

    sub_1AB460164();
  }

  else
  {
    v45 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v48 = swift_allocObject();
  *(v48 + 24) = 0;
  v49 = (v48 + 24);
  *(v48 + 16) = 0;
  v99.tv_sec = v48;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
  swift_task_localValuePush();
  v50 = v98;
  sub_1AB12C208(v77, v93, v90, v91);
  v98 = v50;
  if (v45)
  {
    v52 = v86;
    v51 = v87;
    v53 = v31;
    v54 = tv_nsec;
    v55 = v85;
    (*(v86 + 104))(v85, *MEMORY[0x1E6977AC8], v87);
    sub_1AB460174();
    v56 = v55;
    tv_nsec = v54;
    v31 = v53;
    (*(v52 + 8))(v56, v51);
    v30 = v96;
  }

  if (v41)
  {
    v99.tv_sec = v30;
    StartUpPerformanceEvent.record(checkpoint:)(&v99.tv_sec);
  }

  v57 = v92;
  sub_1AB014AC0(v92, &qword_1EB436638);
  sub_1AB03AB54(v31, v57, type metadata accessor for PageIntentInstrumentation);
  swift_storeEnumTagMultiPayload();
  static MonotonicTime.now.getter(&v99);
  v58 = v99.tv_sec;
  v59 = v99.tv_nsec;
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  v60 = v59 / *&qword_1ED4D1F90 + v58 - (tv_nsec / *&qword_1ED4D1F90 + tv_sec);

  v61 = sub_1AB45FFA4();
  v62 = v94;
  sub_1AB45FFF4();
  LODWORD(v96) = sub_1AB461224();

  v63 = sub_1AB461314();
  v64 = v84;
  if (v63)
  {

    v65 = v81;
    sub_1AB460024();

    v67 = v82;
    v66 = v83;
    if ((*(v82 + 88))(v65, v83) == *MEMORY[0x1E69E93E8])
    {
      v68 = 0;
      v69 = "[Error] Interval already ended";
    }

    else
    {
      (*(v67 + 8))(v65, v66);
      v69 = "selfTime=%f";
      v68 = 1;
    }

    v70 = swift_slowAlloc();
    *v70 = 0;
    *(v70 + 1) = v68;
    *(v70 + 2) = 2048;
    os_unfair_lock_lock(v49);
    v71 = *(v48 + 16);
    os_unfair_lock_unlock(v49);
    *(v70 + 4) = v60 - v71;
    v72 = v94;
    v73 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v61, v96, v73, "MakeDependency", v69, v70, 0xCu);
    v74 = v70;
    v62 = v72;
    MEMORY[0x1AC59F020](v74, -1, -1);
    v64 = v84;
    v31 = v95;
  }

  v79(v62, v97);
  v75 = v78;
  os_unfair_lock_lock(v78 + 6);
  *&v75[4]._os_unfair_lock_opaque = v60 + *&v75[4]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v75 + 6);
  sub_1AB0342CC(v31, v64, type metadata accessor for PageIntentInstrumentation);
  swift_task_localValuePop();
}

uint64_t sub_1AB13C774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v89 = a3;
  v90 = a4;
  v6 = sub_1AB45FFD4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v81 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB460134();
  v86 = *(v9 - 8);
  v87 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AB45FF84();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v71 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v71 - v18;
  v20 = *a1;
  if (*(a1 + 16))
  {
  }

  v73 = v7;
  v74 = v6;
  v82 = v17;
  v88 = v20;
  v92 = v4;
  v22 = *(a1 + 8);
  v23 = qword_1EB434BA8;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = sub_1AB45FFC4();
  v25 = __swift_project_value_buffer(v24, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v78 = v25;
  v26 = sub_1AB45FFA4();
  v27 = sub_1AB461234();
  v28 = sub_1AB461314();
  v83 = v22;
  v84 = v11;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = v12;
    v31 = swift_slowAlloc();
    v91.tv_sec = v31;
    *v29 = 136315138;
    *(v29 + 4) = sub_1AB030D2C(0xD000000000000014, 0x80000001AB4FF240, &v91.tv_sec);
    v32 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v26, v27, v32, "MakeDependency", "object=%s,type=lazy", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    v33 = v31;
    v12 = v30;
    v22 = v83;
    MEMORY[0x1AC59F020](v33, -1, -1);
    v34 = v29;
    v11 = v84;
    MEMORY[0x1AC59F020](v34, -1, -1);
  }

  (*(v12 + 16))(v16, v19, v11);
  sub_1AB460014();
  swift_allocObject();
  v80 = sub_1AB460004();
  v36 = *(v12 + 8);
  v35 = v12 + 8;
  v77 = v36;
  v36(v19, v11);
  static MonotonicTime.now.getter(&v91);
  v75 = v91;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  v79 = v35;
  sub_1AB4622E4();
  tv_sec = v91.tv_sec;
  type metadata accessor for BaseObjectGraph();
  v37 = static BaseObjectGraph.current.getter();
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v91.tv_sec = v37;

  swift_task_localValuePush();
  v38 = sub_1AB01DBA0(*(v37 + 16));
  swift_task_localValuePop();

  if (v38)
  {
    v39 = type metadata accessor for PageMetricsPresenter();
    v40 = swift_conformsToProtocol2();
    v41 = 0;
    v42 = v88;
    if (!v40 || !v39)
    {
      goto LABEL_19;
    }

    v43 = *(v40 + 8);
    v44 = v40;

    v43(v39, v44);
    sub_1AB0318FC();
    sub_1AB460184();
    v41 = sub_1AB460154();
    v45 = *(v38 + 48);

    os_unfair_lock_lock((v45 + 20));
    v46 = *(v45 + 16);
    os_unfair_lock_unlock((v45 + 20));

    if (v46 == 1)
    {

      sub_1AB460124();
    }

    sub_1AB3858E0(v41);

    sub_1AB460164();
  }

  else
  {
    v41 = 0;
  }

  v42 = v88;
LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v47 = swift_allocObject();
  *(v47 + 24) = 0;
  v72 = (v47 + 24);
  *(v47 + 16) = 0;
  v91.tv_sec = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
  swift_task_localValuePush();
  v48 = v92;
  v49 = sub_1AB12C354(v42, v22, v89, v90);
  v21 = v49;
  v92 = v48;
  if (v41)
  {
    v50 = *MEMORY[0x1E6977AC8];
    v90 = v47;
    v51 = v49;
    v52 = v85;
    v53 = v86;
    v54 = v87;
    (*(v86 + 104))(v85, v50, v87);
    sub_1AB460174();
    (*(v53 + 8))(v52, v54);
    v21 = v51;
    v47 = v90;
  }

  if (v38)
  {
    v91.tv_sec = *v21;
    StartUpPerformanceEvent.record(checkpoint:)(&v91.tv_sec);
  }

  sub_1AB057304();
  *a1 = v21;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;

  static MonotonicTime.now.getter(&v91);
  v55 = v91.tv_sec;
  tv_nsec = v91.tv_nsec;
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  v57 = tv_nsec / *&qword_1ED4D1F90 + v55 - (v75.tv_nsec / *&qword_1ED4D1F90 + v75.tv_sec);

  v58 = sub_1AB45FFA4();
  v59 = v82;
  sub_1AB45FFF4();
  LODWORD(v90) = sub_1AB461224();

  if (sub_1AB461314())
  {

    v60 = v81;
    sub_1AB460024();

    v61 = v73;
    v62 = v74;
    if ((*(v73 + 88))(v60, v74) == *MEMORY[0x1E69E93E8])
    {
      v63 = 0;
      v64 = "[Error] Interval already ended";
    }

    else
    {
      (*(v61 + 8))(v60, v62);
      v64 = "selfTime=%f";
      v63 = 1;
    }

    v65 = swift_slowAlloc();
    *v65 = 0;
    *(v65 + 1) = v63;
    *(v65 + 2) = 2048;
    v66 = v72;
    os_unfair_lock_lock(v72);
    v67 = *(v47 + 16);
    os_unfair_lock_unlock(v66);
    *(v65 + 4) = v57 - v67;
    v59 = v82;
    v68 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v58, v90, v68, "MakeDependency", v64, v65, 0xCu);
    MEMORY[0x1AC59F020](v65, -1, -1);
  }

  v77(v59, v84);
  v69 = tv_sec;
  os_unfair_lock_lock(tv_sec + 6);
  *&v69[4]._os_unfair_lock_opaque = v57 + *&v69[4]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v69 + 6);
  swift_task_localValuePop();

  sub_1AB057304();

  return v21;
}

uint64_t sub_1AB13D11C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v95 = a2;
  v96 = a3;
  v6 = sub_1AB45FFD4();
  v90 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v89 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AB460134();
  v93 = *(v8 - 8);
  v94 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v92 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB45FF84();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v99 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v81 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v81 - v17;
  v97 = a1;
  result = sub_1AB014A58(a1, v104, &qword_1EB436828);
  if (v106)
  {
    v20 = v104[11];
    *(a4 + 160) = v104[10];
    *(a4 + 176) = v20;
    *(a4 + 192) = v105;
    v21 = v104[7];
    *(a4 + 96) = v104[6];
    *(a4 + 112) = v21;
    v22 = v104[9];
    *(a4 + 128) = v104[8];
    *(a4 + 144) = v22;
    v23 = v104[3];
    *(a4 + 32) = v104[2];
    *(a4 + 48) = v23;
    v24 = v104[5];
    *(a4 + 64) = v104[4];
    *(a4 + 80) = v24;
    v25 = v104[1];
    *a4 = v104[0];
    *(a4 + 16) = v25;
  }

  else
  {
    v83 = v6;
    v100 = v11;
    v98 = *(&v104[0] + 1);
    v85 = *&v104[0];
    if (qword_1EB434BA8 != -1)
    {
      swift_once();
    }

    v26 = sub_1AB45FFC4();
    v27 = __swift_project_value_buffer(v26, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v87 = v27;
    v28 = sub_1AB45FFA4();
    v29 = sub_1AB461234();
    v30 = sub_1AB461314();
    v91 = v10;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v102[0].tv_sec = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_1AB030D2C(0x507363697274654DLL, 0xEF656E696C657069, &v102[0].tv_sec);
      v33 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v28, v29, v33, "MakeDependency", "object=%s,type=lazy", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x1AC59F020](v32, -1, -1);
      v34 = v31;
      v10 = v91;
      MEMORY[0x1AC59F020](v34, -1, -1);
    }

    v35 = v100;
    (*(v100 + 16))(v16, v18, v10);
    sub_1AB460014();
    swift_allocObject();
    v36 = sub_1AB460004();
    v38 = *(v35 + 8);
    v37 = v35 + 8;
    v86 = v38;
    v38(v18, v10);
    static MonotonicTime.now.getter(v102);
    v84 = v102[0];
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    tv_sec = v102[0].tv_sec;
    type metadata accessor for BaseObjectGraph();
    v39 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v102[0].tv_sec = v39;

    swift_task_localValuePush();
    v40 = sub_1AB01DBA0(*(v39 + 16));
    swift_task_localValuePop();

    v100 = v37;
    if (v40 && (v41 = swift_conformsToProtocol2()) != 0)
    {
      v42 = *(v41 + 8);

      v42();
      sub_1AB0318FC();
      sub_1AB460184();
      v43 = sub_1AB460154();
      v44 = *(v40 + 48);

      os_unfair_lock_lock((v44 + 20));
      v45 = *(v44 + 16);
      os_unfair_lock_unlock((v44 + 20));

      if (v45 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v43);

      sub_1AB460164();

      v46 = v107;
      v47 = v43;
    }

    else
    {
      v47 = 0;
      v46 = v107;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
    v48 = swift_allocObject();
    *(v48 + 24) = 0;
    v82 = (v48 + 24);
    *(v48 + 16) = 0;
    v102[0].tv_sec = v48;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
    swift_task_localValuePush();
    sub_1AB12C208(v85, v98, v95, v96);
    v49 = v46;
    v96 = v40;
    if (v47)
    {
      v51 = v92;
      v50 = v93;
      v52 = v94;
      (*(v93 + 104))(v92, *MEMORY[0x1E6977AC8], v94);
      sub_1AB460174();
      v53 = v51;
      v40 = v96;
      (*(v50 + 8))(v53, v52);
      v49 = v46;
    }

    if (v40)
    {
      v101.tv_sec = &type metadata for MetricsPipeline;
      StartUpPerformanceEvent.record(checkpoint:)(&v101.tv_sec);
    }

    v54 = v97;
    sub_1AB014AC0(v97, &qword_1EB436828);
    sub_1AB0560F8(v102, v54);
    *(v54 + 193) = 1;
    static MonotonicTime.now.getter(&v101);
    v55 = v101.tv_sec;
    tv_nsec = v101.tv_nsec;
    if (qword_1ED4D1F88 != -1)
    {
      swift_once();
    }

    v57 = tv_nsec / *&qword_1ED4D1F90 + v55 - (v84.tv_nsec / *&qword_1ED4D1F90 + v84.tv_sec);

    v58 = sub_1AB45FFA4();
    v59 = v99;
    sub_1AB45FFF4();
    LODWORD(v97) = sub_1AB461224();

    if (sub_1AB461314())
    {

      v60 = v36;
      v61 = v89;
      sub_1AB460024();
      v95 = v60;

      v62 = v90;
      v63 = v83;
      v64 = (*(v90 + 88))(v61, v83);
      v65 = *MEMORY[0x1E69E93E8];
      v107 = v49;
      if (v64 == v65)
      {
        v66 = 0;
        v67 = "[Error] Interval already ended";
      }

      else
      {
        (*(v62 + 8))(v61, v63);
        v67 = "selfTime=%f";
        v66 = 1;
      }

      v68 = swift_slowAlloc();
      *v68 = 0;
      *(v68 + 1) = v66;
      *(v68 + 2) = 2048;
      v69 = v82;
      os_unfair_lock_lock(v82);
      v70 = *(v48 + 16);
      os_unfair_lock_unlock(v69);
      *(v68 + 4) = v57 - v70;
      v71 = v99;
      v72 = sub_1AB45FF64();
      v73 = v67;
      v59 = v71;
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v58, v97, v72, "MakeDependency", v73, v68, 0xCu);
      MEMORY[0x1AC59F020](v68, -1, -1);
    }

    v86(v59, v91);
    v74 = tv_sec;
    os_unfair_lock_lock(tv_sec + 6);
    *&v74[4]._os_unfair_lock_opaque = v57 + *&v74[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v74 + 6);
    v75 = v102[11];
    *(a4 + 160) = v102[10];
    *(a4 + 176) = v75;
    *(a4 + 192) = v103;
    v76 = v102[7];
    *(a4 + 96) = v102[6];
    *(a4 + 112) = v76;
    v77 = v102[9];
    *(a4 + 128) = v102[8];
    *(a4 + 144) = v77;
    v78 = v102[3];
    *(a4 + 32) = v102[2];
    *(a4 + 48) = v78;
    v79 = v102[5];
    *(a4 + 64) = v102[4];
    *(a4 + 80) = v79;
    v80 = v102[1];
    *a4 = v102[0];
    *(a4 + 16) = v80;
    swift_task_localValuePop();
  }

  return result;
}

uint64_t sub_1AB13DB40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v65 = a2;
  v66 = a3;
  v7 = sub_1AB45FFD4();
  v63 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v67 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB45FF84();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v69 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v56 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v56 - v16;
  sub_1AB014A58(a1, v72, &qword_1EB4367E8);
  if (v73)
  {
    return sub_1AB0149B0(v72, a4);
  }

  v56 = v7;
  v74 = v4;
  v68 = *(&v72[0] + 1);
  v58 = *&v72[0];
  if (qword_1EB434BA8 != -1)
  {
    swift_once();
  }

  v19 = sub_1AB45FFC4();
  v20 = __swift_project_value_buffer(v19, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v60 = v20;
  v21 = sub_1AB45FFA4();
  v22 = sub_1AB461234();
  v23 = sub_1AB461314();
  v64 = v9;
  v61 = a4;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v71[0].tv_sec = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_1AB030D2C(0x50746E756F636341, 0xEF72656469766F72, &v71[0].tv_sec);
    v26 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v21, v22, v26, "MakeDependency", "object=%s,type=lazy", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    v27 = v25;
    v9 = v64;
    MEMORY[0x1AC59F020](v27, -1, -1);
    MEMORY[0x1AC59F020](v24, -1, -1);
  }

  (*(v10 + 16))(v15, v17, v9);
  sub_1AB460014();
  swift_allocObject();
  v28 = sub_1AB460004();
  v30 = *(v10 + 8);
  v29 = v10 + 8;
  v59 = v30;
  v30(v17, v9);
  static MonotonicTime.now.getter(v71);
  tv_sec = v71[0].tv_sec;
  tv_nsec = v71[0].tv_nsec;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  v62 = v28;
  sub_1AB4622E4();
  v32 = v71[0].tv_sec;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436578);
  if (v33 == type metadata accessor for StartUpPerformanceEvent())
  {
    v35 = 0;
  }

  else
  {
    type metadata accessor for BaseObjectGraph();
    v34 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v71[0].tv_sec = v34;

    swift_task_localValuePush();
    v35 = sub_1AB01DBA0(*(v34 + 16));
    swift_task_localValuePop();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v36 = swift_allocObject();
  *(v36 + 24) = 0;
  v37 = (v36 + 24);
  *(v36 + 16) = 0;
  v71[0].tv_sec = v36;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
  swift_task_localValuePush();
  v38 = v74;
  sub_1AB12C208(v58, v68, v65, v66);
  v74 = v38;
  v66 = v35;
  if (v35)
  {
    v70.tv_sec = v33;
    StartUpPerformanceEvent.record(checkpoint:)(&v70.tv_sec);
  }

  v65 = v29;
  sub_1AB014AC0(a1, &qword_1EB4367E8);
  sub_1AB01494C(v71, a1);
  *(a1 + 40) = 1;
  static MonotonicTime.now.getter(&v70);
  v39 = v70.tv_sec;
  v40 = v70.tv_nsec;
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  v41 = v40 / *&qword_1ED4D1F90 + v39 - (tv_nsec / *&qword_1ED4D1F90 + tv_sec);

  v42 = sub_1AB45FFA4();
  v43 = v69;
  sub_1AB45FFF4();
  v44 = sub_1AB461224();

  v45 = sub_1AB461314();
  v46 = v67;
  if (v45)
  {

    sub_1AB460024();

    v47 = v63;
    v48 = v56;
    if ((*(v63 + 88))(v46, v56) == *MEMORY[0x1E69E93E8])
    {
      v49 = 0;
      v50 = "[Error] Interval already ended";
    }

    else
    {
      (*(v47 + 8))(v46, v48);
      v50 = "selfTime=%f";
      v49 = 1;
    }

    v51 = swift_slowAlloc();
    *v51 = 0;
    *(v51 + 1) = v49;
    *(v51 + 2) = 2048;
    os_unfair_lock_lock(v37);
    v52 = *(v36 + 16);
    os_unfair_lock_unlock(v37);
    *(v51 + 4) = v41 - v52;
    v53 = v69;
    v54 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v42, v44, v54, "MakeDependency", v50, v51, 0xCu);
    v55 = v51;
    v43 = v53;
    MEMORY[0x1AC59F020](v55, -1, -1);
  }

  v59(v43, v64);
  os_unfair_lock_lock((v32 + 24));
  *(v32 + 16) = v41 + *(v32 + 16);
  os_unfair_lock_unlock((v32 + 24));
  sub_1AB0149B0(&v71[0].tv_sec, v61);
  swift_task_localValuePop();
}

uint64_t sub_1AB13E320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  v89 = a3;
  v88 = a2;
  v7 = sub_1AB45FFD4();
  v83 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v92 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1AB460134();
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v85 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB45FF84();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v99 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v75 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v75 - v17;
  v90 = a1;
  result = sub_1AB014A58(a1, v97, &qword_1EB436790);
  if (v98)
  {
    v20 = v97[5];
    a4[4] = v97[4];
    a4[5] = v20;
    a4[6] = v97[6];
    v21 = v97[1];
    *a4 = v97[0];
    a4[1] = v21;
    v22 = v97[3];
    a4[2] = v97[2];
    a4[3] = v22;
  }

  else
  {
    v77 = v7;
    v94 = v4;
    v91 = *(&v97[0] + 1);
    v78 = *&v97[0];
    if (qword_1EB434BA8 != -1)
    {
      swift_once();
    }

    v23 = sub_1AB45FFC4();
    v24 = __swift_project_value_buffer(v23, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v81 = v24;
    v25 = sub_1AB45FFA4();
    v26 = sub_1AB461234();
    v27 = sub_1AB461314();
    v84 = v10;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v29 = v11;
      v30 = swift_slowAlloc();
      v96[0].tv_sec = v30;
      *v28 = 136315138;
      *(v28 + 4) = sub_1AB030D2C(0xD000000000000013, 0x80000001AB4FF220, &v96[0].tv_sec);
      v31 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v25, v26, v31, "MakeDependency", "object=%s,type=lazy", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      v32 = v30;
      v11 = v29;
      MEMORY[0x1AC59F020](v32, -1, -1);
      v33 = v28;
      v10 = v84;
      MEMORY[0x1AC59F020](v33, -1, -1);
    }

    (*(v11 + 16))(v16, v18, v10);
    sub_1AB460014();
    swift_allocObject();
    v93 = sub_1AB460004();
    v34 = *(v11 + 8);
    v82 = v11 + 8;
    v79 = v34;
    v34(v18, v10);
    static MonotonicTime.now.getter(v96);
    tv_sec = v96[0].tv_sec;
    tv_nsec = v96[0].tv_nsec;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v80 = v96[0].tv_sec;
    type metadata accessor for BaseObjectGraph();
    v37 = static BaseObjectGraph.current.getter();
    v38 = v92;
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v96[0].tv_sec = v37;

    swift_task_localValuePush();
    v39 = sub_1AB01DBA0(*(v37 + 16));
    swift_task_localValuePop();

    if (v39 && (v40 = swift_conformsToProtocol2()) != 0)
    {
      v41 = *(v40 + 8);

      v41();
      sub_1AB0318FC();
      sub_1AB460184();
      v42 = sub_1AB460154();
      v43 = *(v39 + 48);

      os_unfair_lock_lock((v43 + 20));
      v44 = *(v43 + 16);
      os_unfair_lock_unlock((v43 + 20));

      if (v44 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v42);

      sub_1AB460164();

      v38 = v92;
    }

    else
    {
      v42 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
    v45 = swift_allocObject();
    *(v45 + 24) = 0;
    v76 = (v45 + 24);
    *(v45 + 16) = 0;
    v96[0].tv_sec = v45;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
    swift_task_localValuePush();
    v46 = v94;
    sub_1AB12C208(v78, v91, v88, v89);
    v94 = v46;
    v47 = v42;
    if (v42)
    {
      v48 = *MEMORY[0x1E6977AC8];
      v92 = v45;
      v49 = a4;
      v50 = v38;
      v51 = v39;
      v52 = tv_sec;
      v53 = tv_nsec;
      v54 = v86;
      v55 = v85;
      v56 = v87;
      (*(v86 + 104))(v85, v48, v87);
      sub_1AB460174();
      (*(v54 + 8))(v55, v56);
      tv_nsec = v53;
      tv_sec = v52;
      v39 = v51;
      v38 = v50;
      a4 = v49;
      v45 = v92;
    }

    v92 = v47;
    if (v39)
    {
      v95.tv_sec = &type metadata for SentryConfiguration;
      StartUpPerformanceEvent.record(checkpoint:)(&v95.tv_sec);
    }

    v57 = v90;
    sub_1AB014AC0(v90, &qword_1EB436790);
    sub_1AB157F64(v96, v57);
    *(v57 + 112) = 1;
    static MonotonicTime.now.getter(&v95);
    v58 = v95.tv_sec;
    v59 = v95.tv_nsec;
    if (qword_1ED4D1F88 != -1)
    {
      swift_once();
    }

    v60 = v59 / *&qword_1ED4D1F90 + v58 - (tv_nsec / *&qword_1ED4D1F90 + tv_sec);

    v61 = sub_1AB45FFA4();
    sub_1AB45FFF4();
    v62 = sub_1AB461224();

    if (sub_1AB461314())
    {
      LODWORD(v90) = v62;

      sub_1AB460024();

      v63 = v83;
      v64 = v77;
      if ((*(v83 + 88))(v38, v77) == *MEMORY[0x1E69E93E8])
      {
        v65 = 0;
        v66 = "[Error] Interval already ended";
      }

      else
      {
        (*(v63 + 8))(v38, v64);
        v66 = "selfTime=%f";
        v65 = 1;
      }

      v67 = swift_slowAlloc();
      *v67 = 0;
      *(v67 + 1) = v65;
      *(v67 + 2) = 2048;
      v68 = v76;
      os_unfair_lock_lock(v76);
      v69 = *(v45 + 16);
      os_unfair_lock_unlock(v68);
      *(v67 + 4) = v60 - v69;
      v70 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v61, v90, v70, "MakeDependency", v66, v67, 0xCu);
      MEMORY[0x1AC59F020](v67, -1, -1);
    }

    v79(v99, v84);
    v71 = v80;
    os_unfair_lock_lock(v80 + 6);
    *&v71[4]._os_unfair_lock_opaque = v60 + *&v71[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v71 + 6);
    v72 = v96[5];
    a4[4] = v96[4];
    a4[5] = v72;
    a4[6] = v96[6];
    v73 = v96[1];
    *a4 = v96[0];
    a4[1] = v73;
    v74 = v96[3];
    a4[2] = v96[2];
    a4[3] = v74;
    swift_task_localValuePop();
  }

  return result;
}