uint64_t rijndaelKeySetupEnc(unsigned int *a1, unsigned int *a2, int a3)
{
  v3 = bswap32(*a2);
  *a1 = v3;
  v4 = bswap32(a2[1]);
  a1[1] = v4;
  v5 = bswap32(a2[2]);
  a1[2] = v5;
  v6 = bswap32(a2[3]);
  a1[3] = v6;
  if (a3 == 128)
  {
    v7 = 0;
    v8 = a1 + 4;
    do
    {
      v9 = *(v8 - 1);
      v3 ^= (Te4[4 * BYTE2(v9) + 3] << 24) ^ (Te4[4 * BYTE1(v9) + 2] << 16) ^ (Te4[4 * v9 + 1] << 8) ^ Te4[(v9 >> 22) & 0x3FC] ^ rcon[v7];
      v10 = *(v8 - 2);
      v11 = *(v8 - 3) ^ v3;
      *v8 = v3;
      v8[1] = v11;
      v12 = v10 ^ v11;
      v8[2] = v12;
      v8[3] = v12 ^ v9;
      ++v7;
      v8 += 4;
    }

    while (v7 != 10);
    return 10;
  }

  else
  {
    a1[4] = bswap32(a2[4]);
    v14 = bswap32(a2[5]);
    a1[5] = v14;
    if (a3 == 192)
    {
      v15 = 0;
      for (i = a1 + 11; ; i += 6)
      {
        v3 ^= (Te4[4 * BYTE2(v14) + 3] << 24) ^ (Te4[4 * BYTE1(v14) + 2] << 16) ^ (Te4[4 * v14 + 1] << 8) ^ Te4[4 * HIBYTE(v14)] ^ rcon[v15];
        v4 ^= v3;
        *(i - 5) = v3;
        *(i - 4) = v4;
        v5 ^= v4;
        v6 ^= v5;
        *(i - 3) = v5;
        *(i - 2) = v6;
        if (v15 == 7)
        {
          break;
        }

        v17 = *(i - 7) ^ v6;
        v14 ^= v17;
        *(i - 1) = v17;
        *i = v14;
        ++v15;
      }

      return 12;
    }

    else
    {
      a1[6] = bswap32(a2[6]);
      v18 = bswap32(a2[7]);
      a1[7] = v18;
      if (a3 == 256)
      {
        v19 = 0;
        for (j = a1 + 8; ; j += 8)
        {
          v3 ^= (Te4[4 * BYTE2(v18) + 3] << 24) ^ (Te4[4 * BYTE1(v18) + 2] << 16) ^ (Te4[4 * v18 + 1] << 8) ^ Te4[4 * HIBYTE(v18)] ^ rcon[v19];
          v4 ^= v3;
          *j = v3;
          j[1] = v4;
          v5 ^= v4;
          v6 ^= v5;
          j[2] = v5;
          j[3] = v6;
          if (v19 == 6)
          {
            break;
          }

          v21 = *(j - 4) ^ (Te4[4 * HIBYTE(v6) + 3] << 24) ^ (Te4[4 * BYTE2(v6) + 2] << 16) ^ (Te4[4 * BYTE1(v6) + 1] << 8) ^ Te4[4 * v6];
          v22 = *(j - 3) ^ v21;
          j[4] = v21;
          j[5] = v22;
          v23 = *(j - 2) ^ v22;
          v18 ^= v23;
          j[6] = v23;
          j[7] = v18;
          ++v19;
        }

        return 14;
      }

      else
      {
        return 0;
      }
    }
  }
}

_DWORD *rijndaelEncrypt(_DWORD *result, int a2, unsigned int *a3, _DWORD *a4)
{
  v4 = bswap32(*a3) ^ *result;
  v5 = bswap32(a3[1]) ^ result[1];
  v6 = a3[3];
  v7 = bswap32(a3[2]) ^ result[2];
  v8 = bswap32(v6) ^ result[3];
  v9 = result + 6;
  for (i = (a2 >> 1) - 1; ; --i)
  {
    v11 = Te1[BYTE2(v5)] ^ Te0[HIBYTE(v4)] ^ Te2[BYTE1(v7)] ^ Te3[v8] ^ *(v9 - 2);
    v12 = Te1[BYTE2(v7)] ^ Te0[HIBYTE(v5)] ^ Te2[BYTE1(v8)] ^ Te3[v4] ^ *(v9 - 1);
    v13 = Te1[BYTE2(v8)] ^ Te0[HIBYTE(v7)] ^ Te2[BYTE1(v4)] ^ Te3[v5] ^ *v9;
    v14 = Te1[BYTE2(v4)] ^ Te0[HIBYTE(v8)] ^ Te2[BYTE1(v5)] ^ Te3[v7] ^ v9[1];
    v15 = HIBYTE(v11);
    v16 = HIBYTE(v12);
    v17 = BYTE1(v14);
    v18 = HIBYTE(v13);
    v19 = BYTE2(v14);
    v20 = BYTE1(v11);
    v21 = HIBYTE(v14);
    v22 = BYTE2(v11);
    if (!i)
    {
      break;
    }

    v23 = Te1[BYTE2(v12)] ^ Te0[v15] ^ Te2[BYTE1(v13)] ^ Te3[v14];
    v24 = v9[2];
    v25 = v9[3];
    v26 = v9[4];
    v27 = v9[5];
    v9 += 8;
    v4 = v23 ^ v24;
    v5 = Te1[BYTE2(v13)] ^ Te0[v16] ^ Te2[v17] ^ Te3[v11] ^ v25;
    v28 = Te0[v21];
    v29 = Te1[v22];
    v7 = Te1[v19] ^ Te0[v18] ^ Te2[v20] ^ Te3[v12] ^ v26;
    v8 = v29 ^ v28 ^ Te2[BYTE1(v12)] ^ Te3[v13] ^ v27;
  }

  v30 = &result[8 * ((a2 >> 1) - 1)];
  *a4 = bswap32(((Te4[4 * v15 + 3] << 24) | (Te4[4 * BYTE2(v12) + 2] << 16) | (Te4[4 * BYTE1(v13) + 1] << 8) | Te4[4 * v14]) ^ v30[8]);
  a4[1] = bswap32(((Te4[4 * v16 + 3] << 24) | (Te4[4 * BYTE2(v13) + 2] << 16) | (Te4[4 * BYTE1(v14) + 1] << 8) | Te4[4 * v11]) ^ v30[9]);
  a4[2] = bswap32(((Te4[4 * v18 + 3] << 24) | (Te4[4 * BYTE2(v14) + 2] << 16) | (Te4[4 * BYTE1(v11) + 1] << 8) | Te4[4 * v12]) ^ v30[10]);
  a4[3] = bswap32(((Te4[4 * v21 + 3] << 24) | (Te4[4 * BYTE2(v11) + 2] << 16) | (Te4[4 * BYTE1(v12) + 1] << 8) | Te4[4 * v13]) ^ v30[11]);
  return result;
}

_OWORD *kdf(_OWORD *result, unsigned __int8 (*a2)[4][4], char a3, int a4)
{
  v4 = a4;
  v6 = result;
  v14 = *MEMORY[0x277D85DE8];
  *(&__src + 1) = 0xAAAAAAAAAAAAAAAALL;
  memset(v12, 0, sizeof(v12));
  *&__src = 0xAAAAAAAAAAAAAAAALL;
  v12[7] = a3;
  v13 = 1;
  if (a4 < 16)
  {
    v8 = a4;
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = 2;
  do
  {
    result = rijndaelEncrypt(a2, 10, v12, &__src);
    v8 = v4 - 16;
    *v6++ = __src;
    v13 = v7++;
    v9 = v4 > 0x1F;
    v4 -= 16;
  }

  while (v9);
  if (v8)
  {
LABEL_5:
    rijndaelEncrypt(a2, 10, v12, &__src);
    result = memcpy(v6, &__src, v8);
  }

LABEL_6:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t poly_hash(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = (a1 + 1208);
  do
  {
    v4 = *(a2 + v2);
    v5 = *(v3 - 4);
    v6 = HIDWORD(*v3);
    v7 = v5 * v6 + HIDWORD(v5) * *v3;
    v8 = v5 * *v3 + 59 * (HIDWORD(v7) + HIDWORD(v5) * v6);
    result = v8 + 59;
    if (v8 < v7 << 32)
    {
      v8 += 59;
    }

    if (v4 < 0xFFFFFFFF00000000)
    {
      v17 = v8 + v4;
      if (__CFADD__(v8, v4))
      {
        v17 = v8 + v4 + 59;
      }
    }

    else
    {
      if (v8 > 0x3B)
      {
        v10 = -1;
      }

      else
      {
        v10 = -60;
      }

      v11 = v10 + v8;
      *v3 = v11;
      v12 = *(a2 + v2);
      result = v12 - 59;
      v13 = HIDWORD(v11) * v5 + v11 * HIDWORD(v5);
      v14 = v11 * v5 + 59 * (HIDWORD(v13) + HIDWORD(v11) * HIDWORD(v5));
      if (v14 < v13 << 32)
      {
        v14 += 59;
      }

      v15 = __CFADD__(v14, result);
      v16 = v14 + result;
      v17 = v14 + v12;
      if (!v15)
      {
        v17 = v16;
      }
    }

    *v3++ = v17;
    v2 += 8;
  }

  while (v2 != 32);
  return result;
}

uint64_t ip_long(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = result + 1208;
  v4 = (result + 1264);
  do
  {
    v5 = *(v3 + 8 * v2);
    if (v5 >= 0xFFFFFFFFFFFFFFC5)
    {
      v5 += 59;
      *(v3 + 8 * v2) = v5;
    }

    v6 = *(v4 - 3) * HIWORD(v5) + *(v4 - 2) * WORD2(v5) + *(v4 - 1) * WORD1(v5) + *v4 * v5;
    v7 = v6 - 0xFFFFFFFFBLL * (v6 >> 36);
    if (v7 > 0xFFFFFFFFALL)
    {
      LODWORD(v7) = v7 + 5;
    }

    *(a2 + 4 * v2) = bswap32(*(result + 4 * v2 + 1368) ^ v7);
    ++v2;
    v4 += 4;
  }

  while (v2 != 4);
  return result;
}

uint64_t ip_short(uint64_t result, void *a2, _DWORD *a3)
{
  v3 = a2[1];
  v4 = *(result + 1240) * HIWORD(*a2) + *(result + 1248) * WORD2(*a2) + *(result + 1256) * WORD1(*a2) + *(result + 1264) * *a2;
  v5 = v4 - 0xFFFFFFFFBLL * (v4 >> 36);
  if (v5 > 0xFFFFFFFFALL)
  {
    LODWORD(v5) = v5 + 5;
  }

  *a3 = bswap32(*(result + 1368) ^ v5);
  v6 = *(result + 1272) * HIWORD(v3) + *(result + 1280) * WORD2(v3) + *(result + 1288) * WORD1(v3) + *(result + 1296) * v3;
  v7 = v6 - 0xFFFFFFFFBLL * (v6 >> 36);
  if (v7 > 0xFFFFFFFFALL)
  {
    LODWORD(v7) = v7 + 5;
  }

  a3[1] = bswap32(*(result + 1372) ^ v7);
  v8 = a2[3];
  v9 = *(result + 1304) * HIWORD(a2[2]) + *(result + 1312) * WORD2(a2[2]) + *(result + 1320) * WORD1(a2[2]) + *(result + 1328) * a2[2];
  v10 = v9 - 0xFFFFFFFFBLL * (v9 >> 36);
  if (v10 > 0xFFFFFFFFALL)
  {
    LODWORD(v10) = v10 + 5;
  }

  a3[2] = bswap32(*(result + 1376) ^ v10);
  v11 = *(result + 1336) * HIWORD(v8) + *(result + 1344) * WORD2(v8) + *(result + 1352) * WORD1(v8) + *(result + 1360) * v8;
  v12 = v11 - 0xFFFFFFFFBLL * (v11 >> 36);
  if (v12 > 0xFFFFFFFFALL)
  {
    LODWORD(v12) = v12 + 5;
  }

  a3[3] = bswap32(*(result + 1380) ^ v12);
  return result;
}

uint64_t uhash(int64x2_t *a1, unsigned __int8 *a2, uint64_t a3, _DWORD *a4)
{
  v5 = a3;
  v6 = a2;
  v20 = *MEMORY[0x277D85DE8];
  v8.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v8.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v18 = v8;
  v19 = v8;
  if (a3 >= 1025)
  {
    v10 = (a3 & 0xFFFFFC00) - 1024;
    v11 = a3 + 1024;
    v12 = 8 * a3;
    v13 = a3 - (((a3 & 0x3FF) + 31) & 0x7E0);
    v14 = &a2[a3 & 0x80000000000003FFLL];
    v17 = vdupq_n_s64(0x2000uLL);
    do
    {
      v18 = v17;
      v19 = v17;
      nh_aux(a1->i32, v6, v18.i64, 0x400u);
      poly_hash(a1, &v18);
      v6 += 1024;
      v11 -= 1024;
      v12 -= 0x2000;
      v13 -= 1024;
      v14 += 1024;
    }

    while (v11 > 0x7FF);
    if (v11 != 1024)
    {
      zero_pad(v14, -v13);
      v18.i64[0] = v12 & 0xFFFFFFF8;
      v18.i64[1] = v18.i64[0];
      v19.i64[0] = v18.i64[0];
      v19.i64[1] = v18.i64[0];
      nh_aux(a1->i32, v6, v18.i64, (v5 - v10 - 993) & 0xFFFFFFE0);
      poly_hash(a1, &v18);
    }

    ip_long(a1, a4);
  }

  else
  {
    if (a3)
    {
      v9 = (a3 + 31) & 0xFFFFFFE0;
    }

    else
    {
      v9 = 32;
    }

    zero_pad(&a2[a3], v9 - a3);
    v18.i64[0] = 8 * (v5 & 0x1FFFFFFF);
    v18.i64[1] = v18.i64[0];
    v19.i64[0] = v18.i64[0];
    v19.i64[1] = v18.i64[0];
    nh_aux(a1->i32, v6, v18.i64, v9);
    ip_short(a1, &v18, a4);
  }

  a1[73].i64[0] = 0;
  a1[72] = 0u;
  a1[71] = 0u;
  a1[86].i32[2] = 0;
  a1[75].i64[1] = 1;
  a1[76] = vdupq_n_s64(1uLL);
  a1[77].i64[0] = 1;
  v15 = *MEMORY[0x277D85DE8];
  return 1;
}

void zero_pad(unsigned __int8 *a1, int a2)
{
  v2 = a2;
  v3 = a1;
  if (a2 >= 8)
  {
    if ((a1 & 7) == 0 || (v4 = (~a1 & 7) + 1, bzero(a1, v4), v2 += v3 | 0xFFFFFFF8, v3 += v4, v2 >= 8))
    {
      v5 = v2 - 15;
      if (v2 < 0xF)
      {
        v5 = 0;
      }

      v6 = (v5 + 7) & 0xFFFFFFF8;
      bzero(v3, v6 + 8);
      v2 = v2 - v6 - 8;
      v3 += v6 + 8;
    }
  }

  if (v2)
  {

    bzero(v3, v2);
  }
}

void **umac_new(unsigned int *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = malloc_type_malloc(0x658uLL, 0x1020040B23A9D2DuLL);
  v3 = v2;
  if (v2)
  {
    *v2 = (((v2 + 1) & 0xFFFFFFFFFFFFFFF0) + 16);
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v21[9] = v4;
    v21[10] = v4;
    v21[7] = v4;
    v21[8] = v4;
    v21[5] = v4;
    v21[6] = v4;
    v21[3] = v4;
    v21[4] = v4;
    v21[1] = v4;
    v21[2] = v4;
    v21[0] = v4;
    rijndaelKeySetupEnc(v21, a1, 128);
    v5 = *v3;
    *&v22[0] = 0xAAAAAAAAAAAAAAAALL;
    *(&v22[0] + 1) = 0xAAAAAAAAAAAAAAAALL;
    kdf(v22, v21, 0, 16);
    rijndaelKeySetupEnc(v5 + 356, v22, 128);
    *(v5 + 88) = 0u;
    rijndaelEncrypt(v5 + 356, 10, v5 + 352, v5 + 348);
    v6 = *v3;
    bzero(*v3, 0x570uLL);
    kdf(v6, v21, 1, 1072);
    for (i = 0; i != 1072; i += 16)
    {
      *&v6[i] = vrev32q_s8(*&v6[i]);
    }

    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v22[16] = v8;
    v22[17] = v8;
    v22[14] = v8;
    v22[15] = v8;
    v22[12] = v8;
    v22[13] = v8;
    v22[10] = v8;
    v22[11] = v8;
    v22[8] = v8;
    v22[9] = v8;
    v22[6] = v8;
    v22[7] = v8;
    v22[4] = v8;
    v22[5] = v8;
    v22[2] = v8;
    v22[3] = v8;
    v22[0] = v8;
    v22[1] = v8;
    *(v6 + 146) = 0;
    *(v6 + 72) = 0u;
    *(v6 + 71) = 0u;
    kdf(v22, v21, 2, 288);
    v9 = 0;
    v10 = v6 + 1176;
    do
    {
      v11 = bswap32(*(v22 + v9));
      *v10 = bswap32(*(v22 + v9 + 4));
      *(v10 + 1) = v11;
      *v10 &= 0x1FFFFFF01FFFFFFuLL;
      *(v10 + 4) = 1;
      v9 += 24;
      v10 += 8;
    }

    while (v9 != 96);
    kdf(v22, v21, 3, 288);
    v12 = v6 + 1240;
    v13 = 2;
    v14 = v6 + 1240;
    do
    {
      *v14 = v22[v13];
      v14[1] = v22[v13 + 1];
      v13 += 4;
      v14 += 2;
    }

    while (v13 != 18);
    for (j = 0; j != 128; j += 32)
    {
      v16 = &v12[j];
      v24 = vld2q_f32(v16);
      v25.val[0] = vrev32q_s8(v24.val[1]);
      v25.val[1] = vrev32q_s8(v24.val[0]);
      vst2q_f32(v16, v25);
    }

    for (k = 0; k != 128; k += 8)
    {
      *&v12[k] %= 0xFFFFFFFFBuLL;
    }

    v18 = (v6 + 1368);
    kdf(v18, v21, 4, 16);
    *v18 = vrev32q_s8(*v18);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v3;
}

_DWORD *pdf_gen_xor(_DWORD *result, int *a2, void *a3)
{
  v4 = result;
  v6 = *a2;
  v5 = a2[1];
  if (v5 != result[5] || v6 != result[4])
  {
    result[4] = v6;
    result[5] = v5;
    result = rijndaelEncrypt(result + 8, 10, result + 4, result);
  }

  v7 = a3[1];
  *a3 ^= *v4;
  a3[1] = v7 ^ v4[1];
  return result;
}

uint64_t umac(int64x2_t **a1, unsigned __int8 *a2, uint64_t a3, _DWORD *a4, int *a5)
{
  uhash(*a1, a2, a3, a4);
  pdf_gen_xor((*a1)[87].i32, a5, a4);
  return 1;
}

uint64_t nh_aux(int *a1, _DWORD *a2, uint64_t *a3, unsigned int a4)
{
  v5 = *a3;
  v4 = a3[1];
  v6 = a4 >> 5;
  v8 = a3[2];
  v7 = a3[3];
  v10 = *a1;
  v9 = a1[1];
  v12 = a1[2];
  v11 = a1[3];
  v14 = a1[4];
  v13 = a1[5];
  v15 = a1 + 10;
  v16 = (a1 + 10);
  v17 = a1[6];
  v18 = a1[7];
  do
  {
    v19 = a2[1];
    v21 = a2[4];
    v20 = a2[5];
    v22 = *a2 + v10;
    v23 = v19 + v9;
    v10 = *(v15 - 2);
    v9 = *(v15 - 1);
    v24 = v5 + (v21 + v14) * v22;
    v25 = *a2 + v14;
    v14 = v15[2];
    result = v15[3];
    v27 = v4 + (v10 + v21) * v25;
    v28 = v8 + (v14 + v21) * (v10 + *a2);
    v29 = v7 + (v15[6] + v21) * (v14 + *a2);
    v30 = a2[2];
    v31 = a2[3];
    v32 = v24 + (v20 + v13) * v23;
    v33 = v27 + (v9 + v20) * (v19 + v13);
    v34 = v28 + (result + v20) * (v9 + v19);
    v35 = a2[6];
    v36 = a2[7];
    v37 = *v15;
    v38 = v15[1];
    v39 = v29 + (v15[7] + v20) * (result + v19);
    v40 = v32 + (v35 + v17) * (v30 + v12);
    v41 = v30 + v17;
    v17 = v15[4];
    v42 = v15[5];
    v43 = *(v16 + 8);
    v16 += 32;
    v5 = v40 + (v36 + v18) * (v31 + v11);
    v4 = v33 + (*v15 + v35) * v41 + (v38 + v36) * (v31 + v18);
    v8 = v34 + (v17 + v35) * (*v15 + v30) + (v42 + v36) * (v38 + v31);
    v7 = v39 + (v43 + v35) * (v17 + v30) + (v15[9] + v36) * (v42 + v31);
    a2 += 8;
    v15 = v16;
    v12 = v37;
    v11 = v38;
    v13 = result;
    v18 = v42;
    --v6;
  }

  while (v6);
  *a3 = v5;
  a3[1] = v4;
  a3[2] = v8;
  a3[3] = v7;
  return result;
}

void CDX_SCDynamicStoreCallBack(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if ((a3[129] & 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315650;
        v8 = v4;
        v9 = 2080;
        v10 = "CDX_SCDynamicStoreCallBack";
        v11 = 1024;
        v12 = 1090;
        _os_log_impl(&dword_24E50C000, v5, OS_LOG_TYPE_DEFAULT, "CDXClient [%s] %s:%d network-did-change", &v7, 0x1Cu);
      }
    }

    a3[129] = 1;
    [a3 performSelector:sel_networkDidChange withObject:0 afterDelay:1.5];
  }

  v6 = *MEMORY[0x277D85DE8];
}

void OUTLINED_FUNCTION_9(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x26u);
}

BOOL OUTLINED_FUNCTION_13()
{
  v2 = *v0;

  return os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
}

BOOL OUTLINED_FUNCTION_14()
{
  v2 = *v0;

  return os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
}

void OUTLINED_FUNCTION_19(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x1Cu);
}

uint64_t OUTLINED_FUNCTION_22@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  *(v2 - 24) = a2;

  return [a1 description];
}

_DWORD *CDXVendorCreate(unsigned int *a1, int a2, unsigned int *a3)
{
  v6 = malloc_type_calloc(0x200uLL, 1uLL, 0x1020040B111F699uLL);
  v7 = v6;
  if (v6)
  {
    v6[126] = rijndaelKeySetupEnc(v6 + 4, a1, 128);
    rijndaelKeySetupEnc(v7 + 64, a3, 128);
    *v7 = umac_new(a1);
    *(v7 + 1) = umac_new(a3);
    *(v7 + 62) = a2;
  }

  return v7;
}

void CDXVendorRelease(void **a1)
{
  umac_delete(*a1);
  umac_delete(a1[1]);

  free(a1);
}

uint64_t CDXVendorCreateTicket(uint64_t a1, _BYTE *a2, size_t *a3, void *a4, const void *a5, size_t a6, unsigned int a7, unsigned int a8, uint64_t a9, char a10)
{
  v39[1] = *MEMORY[0x277D85DE8];
  v18 = time(0);
  if (a3)
  {
    v19 = *a3;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_10:
    v20 = *MEMORY[0x277D85DF8];
    v21 = 102;
    goto LABEL_22;
  }

  v19 = 0;
  if (!a1)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (!a2)
  {
    v20 = *MEMORY[0x277D85DF8];
    v21 = 103;
    goto LABEL_22;
  }

  if (!a3)
  {
    v20 = *MEMORY[0x277D85DF8];
    v21 = 104;
    goto LABEL_22;
  }

  if (!a4)
  {
    v20 = *MEMORY[0x277D85DF8];
    v21 = 105;
    goto LABEL_22;
  }

  if (!a5 && a6)
  {
    v20 = *MEMORY[0x277D85DF8];
    v21 = 106;
LABEL_22:
    fprintf(v20, "/Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/CDX/cdxticketgen.c:%d: Assert Failed (%s)\n", v21, "");
    result = 4294967294;
    goto LABEL_23;
  }

  if (a8 >= a7)
  {
    v20 = *MEMORY[0x277D85DF8];
    v21 = 107;
    goto LABEL_22;
  }

  if ((a10 & 4) != 0)
  {
    v22 = 0;
  }

  else
  {
    v22 = v18;
  }

  v23 = a6 + 15;
  v24 = ((a6 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  *a3 = v24;
  if (v24 < 0x500 || (a10 & 2) != 0)
  {
    if (v24 < v19)
    {
      v27 = v22 + a9;
      bzero(a2, v19);
      *a2 = 0;
      a2[1] = a7;
      a2[2] = a8;
      *(a2 + 3) = bswap32(v27);
      a2[3] = v23 >> 4;
      *(a2 + 4) = *a4;
      v28 = *(a1 + 496);
      v29 = v27 < v28;
      v30 = v27 >= v28;
      LODWORD(v23) = (v23 >> 4);
      if (v29)
      {
        v31 = 16;
      }

      else
      {
        v31 = 256;
      }

      v32 = *(a1 + 8 * v30);
      memcpy(a2 + 16, a5, a6);
      if (a10)
      {
        if ((a6 & 0xF) != 0)
        {
          fprintf(*MEMORY[0x277D85DF8], "/Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/CDX/cdxticketgen.c:%d: Assert Failed (%s)\n", 150, "");
          result = 4294967292;
          goto LABEL_23;
        }
      }

      else if (v23)
      {
        v33 = 0;
        v34 = (a2 + 4);
        v35 = vld1q_dup_f64(v34);
        v36 = (a2 + 16);
        do
        {
          v37 = *(a1 + 504);
          *v36 = veorq_s8(*v36, v35);
          rijndaelEncrypt((a1 + v31), v37, v36, v36);
          v38 = *v36++;
          v35 = v38;
          ++v33;
          v23 = a2[3];
        }

        while (v33 < v23);
        LOBYTE(a8) = a2[2];
      }

      v39[0] = *(a2 + 4);
      LOBYTE(v39[0]) = a8;
      umac(v32, a2, 16 * v23 + 16, &a2[16 * v23 + 16], v39);
      result = 0;
      goto LABEL_23;
    }

    fprintf(*MEMORY[0x277D85DF8], "/Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/CDX/cdxticketgen.c:%d: Assert Failed (%s)\n", 119, "");
    result = 4294967293;
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], "/Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/CDX/cdxticketgen.c:%d: Assert Failed (%s)\n", 116, "");
    result = 4294967291;
  }

LABEL_23:
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned __int8 *CDXGetPreblobLength(unsigned __int8 *result)
{
  if (result)
  {
    v1 = *result;
    if (v1 < 7 && ((0x53u >> v1) & 1) != 0)
    {
      return qword_24E590678[v1];
    }

    else if ((v1 & 0x80) != 0)
    {
      return (v1 - 127);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CDXVerifyPreblob(unsigned __int8 *a1, uint64_t a2)
{
  result = 0;
  if (a1 && (a2 - 1) <= 0x1F)
  {
    v4 = *a1;
    if (v4 < 2)
    {
      return a2 == 1;
    }

    if (v4 == 4)
    {
      return a2 == 7;
    }

    if (v4 == 6)
    {
      return a2 == 19;
    }

    result = 0;
    if (v4 < 0 && (v4 - 127) == a2)
    {
      return 1;
    }
  }

  return result;
}

uint64_t AGPSendingSetElement::buffer(AGPSendingSetElement *this, unsigned __int8 *a2, unsigned __int32 a3, unsigned int a4, unsigned int a5, char a6)
{
  v49 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((this + 32));
  can_buffer = AGPAssociationSetElement::can_buffer(this, 1);
  if (!a2 || a3 - 1 > 0x5DB || !can_buffer || a4 > a5)
  {
LABEL_5:
    if ((AGPAssociationSetElement::can_buffer(this, 1) & 1) == 0 && VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        v38 = *(this + 27);
        v39 = 136316418;
        v40 = v13;
        v41 = 2080;
        v42 = "buffer";
        v43 = 1024;
        v44 = 744;
        v45 = 1024;
        *v46 = v38;
        *&v46[4] = 1024;
        *&v46[6] = a4;
        *v47 = 1024;
        *&v47[2] = a5;
        _os_log_error_impl(&dword_24E50C000, v14, OS_LOG_TYPE_ERROR, " [%s] %s:%d buffer: CAN'T BUFFER (%08X:%02d:%02d)...", &v39, 0x2Eu);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        v37 = *(this + 27);
        v39 = 136316418;
        v40 = v15;
        v41 = 2080;
        v42 = "buffer";
        v43 = 1024;
        v44 = 746;
        v45 = 1024;
        *v46 = v37;
        *&v46[4] = 1024;
        *&v46[6] = a4;
        *v47 = 1024;
        *&v47[2] = a5;
        _os_log_error_impl(&dword_24E50C000, v16, OS_LOG_TYPE_ERROR, " [%s] %s:%d buffer: FAILED TO BUFFER A RELIABLE PACKET SERIALNUMBER (%08X:%02d:%02d)...", &v39, 0x2Eu);
      }
    }

    v17 = 0xFFFFFFFFLL;
    goto LABEL_13;
  }

  v20 = *(this + 699);
  if (v20 > 0x3F)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v34 = VRTraceErrorLogLevelToCSTR();
      v35 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v36 = *(this + 27);
        v39 = 136316418;
        v40 = v34;
        v41 = 2080;
        v42 = "buffer";
        v43 = 1024;
        v44 = 738;
        v45 = 1024;
        *v46 = v36;
        *&v46[4] = 1024;
        *&v46[6] = a4;
        *v47 = 1024;
        *&v47[2] = a5;
        _os_log_impl(&dword_24E50C000, v35, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d buffer: MAXIMUM PACKET WINDOW COUNT USED (%08X:%02d:%02d)...", &v39, 0x2Eu);
      }
    }

    goto LABEL_5;
  }

  *(this + 699) = v20 + 1;
  v17 = *(this + 697);
  *(this + 697) = (v17 + 1) & 0x3F;
  v21 = this + 8 * v17;
  *(*(v21 + 15) + 8) = *(*(v21 + 15) + 8) & 0xFFFFFFFE | AGPAssociationSetElement::can_buffer(this, 1) ^ 1;
  *(*(v21 + 15) + 8) |= 2u;
  *(*(v21 + 15) + 8) = *(*(v21 + 15) + 8) & 0xFFFFC0FF | ((v17 & 0x3F) << 8);
  *(*(v21 + 15) + 8) = *(*(v21 + 15) + 8) & 0xFFFFFF03 | (4 * (*(this + 698) & 0x3F));
  *(*(v21 + 15) + 8) = *(*(v21 + 15) + 8) & 0x3FFFFFF | (*(this + 697) << 26);
  *(*(v21 + 15) + 8) = *(*(v21 + 15) + 8) & 0xFFFFC0FF | ((v17 & 0x3F) << 8);
  *(*(v21 + 15) + 8) = *(*(v21 + 15) + 8) & 0xFFF03FFF | ((a4 & 0x3F) << 14);
  *(*(v21 + 15) + 8) = *(*(v21 + 15) + 8) & 0xFC0FFFFF | ((a5 & 0x3F) << 20);
  v22 = *(this + 27);
  *(this + 27) = v22 + 1;
  **(v21 + 15) = v22;
  v23 = CAGP::current_timestamp(*(this + 1));
  v24 = *(v21 + 15);
  *(v24 + 4) = v23;
  *(v24 + 12) = a3;
  *(this + v17 + 632) = a6;
  memcpy((*(v21 + 15) + 16), a2, a3);
  v25 = v17 - 32;
  if (v17 < 0x20)
  {
    v25 = v17;
  }

  v26 = 1 << v25;
  v27 = 100;
  if (v17 < 0x20)
  {
    v27 = 96;
  }

  *(this + v27) |= v26;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v28 = VRTraceErrorLogLevelToCSTR();
    v29 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(this + 1);
      v32 = *(this + 24);
      v31 = *(this + 25);
      v39 = 136316418;
      v40 = v28;
      v41 = 2080;
      v42 = "buffer";
      v43 = 1024;
      v44 = 734;
      v45 = 2048;
      *v46 = v30;
      *&v46[8] = 1024;
      *v47 = v31;
      *&v47[4] = 1024;
      v48 = v32;
      _os_log_impl(&dword_24E50C000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p buffer: send bitmap == %08X%08X", &v39, 0x32u);
    }
  }

  v33.i32[0] = 1;
  v33.i32[1] = a3;
  *(*(this + 1) + 368) = vadd_s32(*(*(this + 1) + 368), v33);
LABEL_13:
  pthread_mutex_unlock((this + 32));
  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t AGPAssociationSetElement::can_buffer(AGPAssociationSetElement *this, int a2)
{
  v31 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((this + 32));
  v4 = *(this + 698);
  v5 = *(this + 696);
  if (v4 == v5)
  {
    v6 = 0;
    if (!a2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = ((((v5 - v4) & ~((v5 - v4) >> 31)) + v4 - v5 + 63) & 0xFFFFFFC0) + v5 - v4;
    if (!a2)
    {
      goto LABEL_6;
    }
  }

  if (64 - v6 - *(this + 699) >= a2)
  {
    v9 = 1;
    goto LABEL_11;
  }

LABEL_6:
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      v12 = *(this + 699);
      v13 = *(this + 696);
      v14 = *(this + 698);
      v15 = 136316930;
      v16 = v7;
      v17 = 2080;
      v18 = "can_buffer";
      v19 = 1024;
      v20 = 434;
      v21 = 1024;
      v22 = a2;
      v23 = 1024;
      v24 = v12;
      v25 = 1024;
      v26 = v13;
      v27 = 1024;
      v28 = v14;
      v29 = 1024;
      v30 = v6;
      _os_log_error_impl(&dword_24E50C000, v8, OS_LOG_TYPE_ERROR, " [%s] %s:%d CAN'T BUFFER: num_packets == %d, used == %d, head == %d base == %d reserved == %d", &v15, 0x3Au);
    }
  }

  v9 = 0;
LABEL_11:
  pthread_mutex_unlock((this + 32));
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t CAGP::current_timestamp(CAGP *this)
{
  v2 = *(this + 52);
  v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v6.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  if (!gettimeofday(&v6, 0))
  {
    v3 = (v6.tv_usec / 1000 + 1000 * (SLODWORD(v6.tv_sec) % 604800)) % 0x240C8400u;
    v2 = *(this + 52);
    if (v2 == -1 || (v2 > v3 ? (v4 = (v2 - v3) >= 0x12064201) : (v4 = 1), v4))
    {
      *(this + 52) = v3;
      return v3;
    }
  }

  return v2;
}

uint64_t AGPSendingSetElement::search(AGPSendingSetElement *this, int a2)
{
  pthread_mutex_lock((this + 32));
  v4 = *(this + 699);
  if (*(this + 699))
  {
    v5 = *(this + 696);
    while (**(this + v5 + 15) != a2)
    {
      v5 = (v5 + 1) & 0x3FLL;
      if (!--v4)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v5 = 0xFFFFFFFFLL;
  }

  pthread_mutex_unlock((this + 32));
  return v5;
}

uint64_t AGPSendingSetElement::remove(AGPSendingSetElement *this, unsigned int a2)
{
  v53 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((this + 32));
  if (a2 > 0x3F || (v4 = this + 120, v5 = *(this + a2 + 15), (v6 = v5[3]) == 0))
  {
    v12 = 0;
    goto LABEL_38;
  }

  v7 = v5[379];
  v8 = *(this + 1);
  *(v8 + 94) += v7;
  *(v8 + 95) += v7 * v6;
  v5[3] = 0;
  if (v5[1] != -1)
  {
    v9 = CAGP::current_timestamp(v8) - *(*&v4[8 * a2] + 4);
    if (v9 < 0)
    {
      if (v9 >= 0xEDF9BE01)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v10 = VRTraceErrorLogLevelToCSTR();
          v11 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            AGPSendingSetElement::remove(v10, v11);
          }
        }

        goto LABEL_13;
      }

      v9 += 604800000;
    }

    if (v9 >= 1)
    {
      pthread_mutex_lock((this + 32));
      UpdateRTO(this + 175, v9);
      pthread_mutex_unlock((this + 32));
    }
  }

LABEL_13:
  *(*&v4[8 * a2] + 1516) = 0;
  *(this + a2 + 632) = 0x80;
  *(*&v4[8 * a2] + 4) = -1;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(this + 1);
      v18 = *(this + 24);
      v17 = *(this + 25);
      *buf = 136316418;
      v42 = v14;
      v43 = 2080;
      v44 = "remove";
      v45 = 1024;
      v46 = 817;
      v47 = 2048;
      v48 = v16;
      v49 = 1024;
      v50 = v17;
      v51 = 1024;
      v52 = v18;
      _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p remove: send bitmap == %08X%08X", buf, 0x32u);
    }
  }

  v19 = a2 - 32;
  if (a2 < 0x20)
  {
    v19 = a2;
  }

  v20 = 1 << v19;
  v21 = 100;
  if (a2 < 0x20)
  {
    v21 = 96;
  }

  *(this + v21) &= ~v20;
  if (*(this + 699))
  {
    v22 = *(this + 696);
    *&v13 = 136316418;
LABEL_22:
    if (*(this + 696) == v22)
    {
      v23 = *&v4[8 * v22];
      if (!*(v23 + 12))
      {
        v24 = ((*(v23 + 8) >> 20) & 0x3F) + 1;
        v25 = v22;
        v26 = v24;
        while (1)
        {
          v27 = *&v4[8 * v25];
          if (*(v27 + 12) || (*(v27 + 8) & 2) == 0)
          {
            break;
          }

          v25 = (v25 + 1) & 0x3F;
          if (!--v26)
          {
            v40 = v13;
            do
            {
              --v24;
              --*(this + 699);
              *(*&v4[8 * v22] + 8) &= ~2u;
              v22 = (*(this + 696) + 1) & 0x3F;
              *(this + 696) = v22;
            }

            while (v24);
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v28 = VRTraceErrorLogLevelToCSTR();
              v29 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                v30 = *(this + 1);
                v31 = *(this + 696);
                v32 = *(this + 26);
                *buf = v40;
                v42 = v28;
                v43 = 2080;
                v44 = "remove";
                v45 = 1024;
                v46 = 858;
                v47 = 2048;
                v48 = v30;
                v49 = 1024;
                v50 = v31;
                v51 = 1024;
                v52 = v32;
                _os_log_impl(&dword_24E50C000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p remove: SET HEAD (%02d) FOR (%08X)...", buf, 0x32u);
              }
            }

            v13 = v40;
            if (*(this + 699))
            {
              goto LABEL_22;
            }

            break;
          }
        }
      }
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v33 = VRTraceErrorLogLevelToCSTR();
    v34 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v35 = *(this + 1);
      v37 = *(this + 24);
      v36 = *(this + 25);
      *buf = 136316418;
      v42 = v33;
      v43 = 2080;
      v44 = "remove";
      v45 = 1024;
      v46 = 861;
      v47 = 2048;
      v48 = v35;
      v49 = 1024;
      v50 = v36;
      v51 = 1024;
      v52 = v37;
      _os_log_impl(&dword_24E50C000, v34, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p remove: done bitmap == %08X%08X", buf, 0x32u);
    }
  }

  v12 = 1;
LABEL_38:
  pthread_mutex_unlock((this + 32));
  v38 = *MEMORY[0x277D85DE8];
  return v12;
}

void releaseAssociationSetElement(const __CFAllocator *a1, void *a2)
{
  v2 = a2[1];
  a2[2] = *(v2 + 200);
  *(v2 + 200) = a2;
}

uint64_t checkSendingSet(char *a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(a2 + 1);
  pthread_mutex_lock((a1 + 32));
  for (i = 0; i != 64; ++i)
  {
    v5 = (i + a1[698]) & 0x3FLL;
    v6 = *&a1[8 * v5 + 120];
    if (v6 && *(v6 + 3) && (v6[8] & 2) != 0 && *(v6 + 1) != -1)
    {
      v7 = CAGP::current_timestamp(a2);
      v8 = v7 - *(v6 + 1);
      if (v8 < 0)
      {
        if (v8 < 0xEDF9BE01)
        {
          v8 += 604800000;
        }

        else if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v21 = VRTraceErrorLogLevelToCSTR();
          v9 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v37 = v21;
            LOWORD(v38[0]) = 2080;
            *(v38 + 2) = "checkSendingSet";
            HIWORD(v38[2]) = 1024;
            v38[3] = 926;
            _os_log_error_impl(&dword_24E50C000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d ERROR: CAN'T RESEND (BAD TIMESTAMP) !!!!!!!!!!!!", buf, 0x1Cu);
          }
        }
      }

      v10 = *(a1 + 178);
      if (v10 && v8 > 3 * v10)
      {
        memset(v38, 170, 0x5D0uLL);
        buf[0] = 5;
        buf[1] = a1[v5 + 632];
        *&buf[2] = 0;
        v11 = *(a1 + 26);
        LODWORD(v37) = *(a2 + 4);
        HIDWORD(v37) = v11;
        v38[0] = *v6;
        v38[1] = *(v6 + 2) & 0x3FFFF03 | (4 * (a1[698] & 0x3F)) | (a1[697] << 26);
        *(v6 + 1) = v7;
        ++*(v6 + 379);
        memcpy(&v38[2], v6 + 16, *(v6 + 3));
        *&buf[2] = agp_control::generate_checksum(buf, v6 + 16, *(v6 + 3));
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v12 = VRTraceErrorLogLevelToCSTR();
          v13 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v14 = *v6;
            v15 = *(a1 + 26);
            *v22 = 136316674;
            v23 = v12;
            v24 = 2080;
            v25 = "checkSendingSet";
            v26 = 1024;
            v27 = 957;
            v28 = 2048;
            v29 = a2;
            v30 = 1024;
            v31 = v14;
            v32 = 1024;
            v33 = v15;
            v34 = 1024;
            v35 = v5;
            _os_log_impl(&dword_24E50C000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p check: RESEND serial number %08X to destination %08X INDEX %d", v22, 0x38u);
          }
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v16 = VRTraceErrorLogLevelToCSTR();
          v17 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *v22 = 136316162;
            v23 = v16;
            v24 = 2080;
            v25 = "checkSendingSet";
            v26 = 1024;
            v27 = 959;
            v28 = 2048;
            v29 = a2;
            v30 = 1024;
            v31 = v5;
            _os_log_impl(&dword_24E50C000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p check: RESEND INDEX %d", v22, 0x2Cu);
          }
        }

        v18 = *(v6 + 3);
        GCKSessionSendTo(*(a2 + 3));
      }
    }
  }

  pthread_mutex_unlock((a1 + 32));
  result = pthread_mutex_unlock(a2 + 1);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t agp_control::generate_checksum(agp_control *this, unsigned __int8 *a2, int a3)
{
  if (*this)
  {
    v3 = 0;
    v4 = 2 * *this;
    do
    {
      v5 = *this;
      this = (this + 2);
      v3 += v5;
      --v4;
    }

    while (v4);
    if (!a2)
    {
      return ~v3;
    }
  }

  else
  {
    v3 = 0;
    if (!a2)
    {
      return ~v3;
    }
  }

  v6 = a3 >> 1;
  if (a3 >> 1 >= 1)
  {
    v7 = a2;
    do
    {
      v8 = *v7;
      v7 += 2;
      v3 += v8;
      --v6;
    }

    while (v6);
    a2 += 2 * ((a3 >> 1) - 1) + 2;
  }

  if (a3)
  {
    v3 += *a2;
  }

  return ~v3;
}

void *CAGP::sendingSetElement(pthread_mutex_t *this, int a2)
{
  pthread_mutex_lock(this + 1);
  v4 = *&this->__opaque[32];
  v5 = *&this->__opaque[40];
  v5[26] = a2;
  value = 0;
  if (!CFSetGetValueIfPresent(v4, v5, &value))
  {
    operator new();
  }

  pthread_mutex_unlock(this + 1);
  return value;
}

uint64_t AGPDataQueue::disconnect(AGPDataQueue *this, unsigned int *a2, int a3)
{
  pthread_mutex_lock((this + 8));
  if (a3 >= 1)
  {
    v6 = 0;
    v7 = *this;
    do
    {
      if (v7)
      {
        v8 = a2[v6];
        v9 = v7;
        do
        {
          v10 = *(v9 + 18);
          if (v10 >= 1)
          {
            v11 = 0;
            v12 = v9 + 3;
            while (*(v9 + v11 + 2) != v8)
            {
              ++v11;
              ++v12;
              if (v10 == v11)
              {
                goto LABEL_13;
              }
            }

            LODWORD(v10) = v10 - 1;
            if (v10 > v11)
            {
              do
              {
                ++v11;
                *(v12 - 1) = *v12;
                v10 = *(v9 + 18) - 1;
                ++v12;
              }

              while (v11 < v10);
            }

            *(v9 + 18) = v10;
          }

LABEL_13:
          v9 = *v9;
        }

        while (v9);
      }

      ++v6;
    }

    while (v6 != a3);
  }

  return pthread_mutex_unlock((this + 8));
}

uint64_t AGPSessionSendTo(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a3 >= 1 && a4 && a5 >= 1)
  {
    CheckInHandleDebug();
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

void AGPSessionRelease()
{
  v8 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v2 = 136315650;
      v3 = v0;
      v4 = 2080;
      v5 = "AGPSessionRelease";
      v6 = 1024;
      v7 = 1193;
      _os_log_impl(&dword_24E50C000, v1, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d agpsessionrelease: entering...", &v2, 0x1Cu);
    }
  }

  CheckInHandleDebug();
}

uint64_t AGPDataQueue::add_tail(uint64_t a1, void *a2)
{
  pthread_mutex_lock((a1 + 8));
  v4 = *a1;
  if (*a1)
  {
    do
    {
      v5 = v4;
      if (v4 == a2)
      {
        a2 = 0;
      }

      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    v5 = a1;
  }

  *v5 = a2;

  return pthread_mutex_unlock((a1 + 8));
}

uint64_t AGPSessionRecvFrom(uint64_t a1, int a2, uint64_t a3)
{
  v3 = 0;
  v238 = *MEMORY[0x277D85DE8];
  v229 = a2;
  if (!a1 || !a3)
  {
    goto LABEL_250;
  }

  if (!*(a3 + 8) || (*(a3 + 16) - 1) > 0x5DB)
  {
    goto LABEL_249;
  }

  pthread_mutex_lock((a1 + 128));
  v7 = CAGP::receiveSetElement(a1, a2);
  v8 = *(a3 + 8);
  v9 = 4 * *v8;
  v10 = *(a3 + 16);
  if (v10 < v9 || v7 == 0)
  {
    goto LABEL_10;
  }

  v12 = v7;
  v13 = *(v8 + 1);
  *(v8 + 1) = 0;
  checksum = agp_control::generate_checksum(v8, &v8[v9], v10 - v9);
  if (v13 != checksum)
  {
    v16 = checksum;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v235 = 136316162;
        v236 = v17;
        LOWORD(v237[0]) = 2080;
        *(v237 + 2) = "AGPSessionRecvFrom";
        HIWORD(v237[2]) = 1024;
        v237[3] = 1461;
        LOWORD(v237[4]) = 2048;
        *(&v237[4] + 2) = a1;
        HIWORD(v237[6]) = 1024;
        v237[7] = v13;
        _os_log_impl(&dword_24E50C000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p recv: packet checksum == (%04x)...", &v235, 0x2Cu);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_10;
    }

    v19 = VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v235 = 136316162;
    v236 = v19;
    LOWORD(v237[0]) = 2080;
    *(v237 + 2) = "AGPSessionRecvFrom";
    HIWORD(v237[2]) = 1024;
    v237[3] = 1462;
    LOWORD(v237[4]) = 2048;
    *(&v237[4] + 2) = a1;
    HIWORD(v237[6]) = 1024;
    v237[7] = v16;
    v21 = " [%s] %s:%d %p recv: calculated checksum == (%04x)...";
    goto LABEL_23;
  }

  v15 = v8[1];
  if (v15 >= 2 && v15 != 11)
  {
    if (v15 == 2)
    {
      *(a3 + 8) += v9;
      *(a3 + 16) -= v9;
      v3 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v3 = 0;
LABEL_11:
    pthread_mutex_unlock((a1 + 128));
    goto LABEL_250;
  }

  v24 = (v8 + 8);
  v25 = 12;
  do
  {
    if (v25 + 8 > v9)
    {
      goto LABEL_10;
    }

    v26 = v24 + 3;
    v27 = *v24;
    v25 += 12;
    v24 += 3;
  }

  while (v27 != *(a1 + 16));
  *(a3 + 8) += v9;
  *(a3 + 16) -= v9;
  if (v15 < 2)
  {
    v39 = *(v26 - 2);
    v40 = v12[27];
    if (v39 < v40 && v12[28] != -1)
    {
      v41 = CAGP::current_timestamp(a1) - v12[28];
      if (v41 <= -302400000)
      {
        v42 = v41 + 604800000;
      }

      else
      {
        v42 = v41;
      }

      if (v42 > 1000)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v43 = VRTraceErrorLogLevelToCSTR();
          v44 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v235 = 136316418;
            v236 = v43;
            LOWORD(v237[0]) = 2080;
            *(v237 + 2) = "AGPSessionRecvFrom";
            HIWORD(v237[2]) = 1024;
            v237[3] = 1500;
            LOWORD(v237[4]) = 2048;
            *(&v237[4] + 2) = a1;
            HIWORD(v237[6]) = 1024;
            v237[7] = v42;
            LOWORD(v237[8]) = 1024;
            *(&v237[8] + 2) = a2;
            v45 = " [%s] %s:%d %p recv: FORCE ACK ONLY for timeout %08X from remoteID %08X";
            v46 = v44;
LABEL_43:
            _os_log_impl(&dword_24E50C000, v46, OS_LOG_TYPE_DEFAULT, v45, &v235, 0x32u);
            goto LABEL_212;
          }
        }

        goto LABEL_212;
      }

      v39 = *(v26 - 2);
      v40 = v12[27];
    }

    if (v39 < v40)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_10;
      }

      v88 = VRTraceErrorLogLevelToCSTR();
      v89 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_10;
      }

      v90 = *(v26 - 2);
      v91 = v12[27];
      v235 = 136316162;
      v236 = v88;
      LOWORD(v237[0]) = 2080;
      *(v237 + 2) = "AGPSessionRecvFrom";
      HIWORD(v237[2]) = 1024;
      v237[3] = 1787;
      LOWORD(v237[4]) = 1024;
      *(&v237[4] + 2) = v90;
      HIWORD(v237[5]) = 1024;
      v237[6] = v91;
      v21 = " [%s] %s:%d recv: SERIAL NUMBER MISMATCH (%08X:%08X)...";
      v22 = v89;
      v23 = 40;
      goto LABEL_24;
    }

    v92 = (*(v26 - 1) >> 8) & 0x3F;
    *&v226 = v12 + 30;
    v93 = *&v12[2 * v92 + 30];
    if (v93)
    {
      if (!v93[3])
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v228 = VRTraceErrorLogLevelToCSTR();
          v104 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v105 = *(v26 - 2);
            v235 = 136316674;
            v236 = v228;
            LOWORD(v237[0]) = 2080;
            *(v237 + 2) = "AGPSessionRecvFrom";
            HIWORD(v237[2]) = 1024;
            v237[3] = 1521;
            LOWORD(v237[4]) = 2048;
            *(&v237[4] + 2) = a1;
            HIWORD(v237[6]) = 1024;
            v237[7] = v92;
            LOWORD(v237[8]) = 1024;
            *(&v237[8] + 2) = v105;
            HIWORD(v237[9]) = 1024;
            v237[10] = a2;
            _os_log_impl(&dword_24E50C000, v104, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p recv: INCOMING BUFFER %d for packet serial_number %08X from remoteID %08X", &v235, 0x38u);
          }
        }

        v106 = v8[1];
        v220 = (v12 + 158);
        *(v12 + v92 + 632) = v106;
        memcpy(v93 + 4, *(a3 + 8), *(a3 + 16));
        *v93 = *(v26 - 2);
        v93[2] = *(v26 - 1);
        v93[3] = *(a3 + 16);
        v107 = *(v26 - 1);
        v108 = v107 >> 14;
        v109 = (v107 >> 14) & 0x3F;
        LODWORD(v224) = *(v26 - 2) - v109;
        LODWORD(v225) = v107;
        *&v227 = ((v107 >> 8) & 0x3F) - v109;
        *&v110 = 136316930;
        v217 = v110;
        *&v110 = 136316418;
        v223 = v110;
        *&v110 = 136316674;
        v222 = v110;
        *&v110 = 136316162;
        v216 = v110;
        while (1)
        {
          ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
          LODWORD(v219) = (v225 >> 20) & 0x3F;
          LODWORD(v228) = v219 + 1;
          if (ErrorLogLevelForModule >= 7)
          {
            v112 = VRTraceErrorLogLevelToCSTR();
            v113 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v114 = *(v26 - 2);
              v115 = (*(v26 - 1) >> 8) & 0x3F;
              v235 = v217;
              v236 = v112;
              LOWORD(v237[0]) = 2080;
              *(v237 + 2) = "AGPSessionRecvFrom";
              HIWORD(v237[2]) = 1024;
              v237[3] = 1555;
              LOWORD(v237[4]) = 2048;
              *(&v237[4] + 2) = a1;
              HIWORD(v237[6]) = 1024;
              v237[7] = (v108 & 0x3F) + 1;
              LOWORD(v237[8]) = 1024;
              *(&v237[8] + 2) = v228;
              HIWORD(v237[9]) = 1024;
              v237[10] = v114;
              LOWORD(v237[11]) = 1024;
              *(&v237[11] + 2) = v115;
              _os_log_impl(&dword_24E50C000, v113, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p recv: got chunk segment %d of %d segments (%08X) @index %d", &v235, 0x3Eu);
            }
          }

          v116 = 0;
          v117 = 1;
          LODWORD(v221) = 1;
          do
          {
            v118 = (v227 + v116) & 0x3F;
            v119 = *(v226 + 8 * v118);
            if (v119 && v119[3] && (v120 = v119[2], ((v120 ^ v225) & 0x3F00000) == 0) && v224 + v116 == *v119)
            {
              if (v116 != ((v120 >> 14) & 0x3F) && VRTraceGetErrorLogLevelForModule() >= 3)
              {
                v121 = VRTraceErrorLogLevelToCSTR();
                v218 = *MEMORY[0x277CE5818];
                if (os_log_type_enabled(v218, OS_LOG_TYPE_ERROR))
                {
                  v125 = *v119;
                  v126 = (v119[2] >> 14) & 0x3F;
                  v235 = v222;
                  v236 = v121;
                  LOWORD(v237[0]) = 2080;
                  *(v237 + 2) = "AGPSessionRecvFrom";
                  HIWORD(v237[2]) = 1024;
                  v237[3] = 1569;
                  LOWORD(v237[4]) = 1024;
                  *(&v237[4] + 2) = v118;
                  HIWORD(v237[5]) = 1024;
                  v237[6] = v125;
                  LOWORD(v237[7]) = 1024;
                  *(&v237[7] + 2) = v126;
                  HIWORD(v237[8]) = 1024;
                  v237[9] = v116;
                  _os_log_error_impl(&dword_24E50C000, v218, OS_LOG_TYPE_ERROR, " [%s] %s:%d FAIL: message fragment @index %d ser %08X seg_idx %d should be %d", &v235, 0x34u);
                }
              }

              LODWORD(v221) = (v220[v118] != 1) & v221;
            }

            else
            {
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                v122 = VRTraceErrorLogLevelToCSTR();
                v123 = *MEMORY[0x277CE5818];
                if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
                {
                  if (v119)
                  {
                    v124 = *v119;
                  }

                  else
                  {
                    v124 = 0;
                  }

                  v235 = v223;
                  v236 = v122;
                  LOWORD(v237[0]) = 2080;
                  *(v237 + 2) = "AGPSessionRecvFrom";
                  HIWORD(v237[2]) = 1024;
                  v237[3] = 1565;
                  LOWORD(v237[4]) = 1024;
                  *(&v237[4] + 2) = v118;
                  HIWORD(v237[5]) = 1024;
                  v237[6] = v124;
                  LOWORD(v237[7]) = 1024;
                  *(&v237[7] + 2) = v224 + v116;
                  _os_log_error_impl(&dword_24E50C000, v123, OS_LOG_TYPE_ERROR, " [%s] %s:%d fail: message fragment @index %d ser %08X should be %08X", &v235, 0x2Eu);
                }
              }

              v117 = 0;
            }

            ++v116;
          }

          while (v228 != v116);
          if ((v117 & 1) == 0)
          {
            goto LABEL_212;
          }

          v127 = v227;
          if (v227 != *(v12 + 696) && VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v128 = VRTraceErrorLogLevelToCSTR();
            v129 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v130 = *(v12 + 696);
              v235 = v216;
              v236 = v128;
              LOWORD(v237[0]) = 2080;
              *(v237 + 2) = "AGPSessionRecvFrom";
              HIWORD(v237[2]) = 1024;
              v237[3] = 1580;
              LOWORD(v237[4]) = 1024;
              *(&v237[4] + 2) = v127;
              HIWORD(v237[5]) = 1024;
              v237[6] = v130;
              _os_log_impl(&dword_24E50C000, v129, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d START %d != HEAD %d", &v235, 0x28u);
            }
          }

          if (v224 != v12[27])
          {
            break;
          }

          v131 = AGPDataQueue::peek_head_for_participant((a1 + 288), v229);
          v218 = &v216;
          if (v219)
          {
            v132 = 0;
          }

          else
          {
            v132 = v131 == 0;
          }

          v133 = v132;
          *v230 = *a3;
          *&v230[16] = *(a3 + 16);
          MEMORY[0x28223BE20](v131);
          v135 = &v216 - v134;
          memset(&v216 - v134, 170, v136);
          v137 = 0;
          LODWORD(v225) = v133 & v221;
          v224 = v135;
          v219 = v135;
          do
          {
            v138 = *(v226 + 8 * ((v227 + v137) & 0x3F));
            *(v12 + 696) = (*(v12 + 696) + 1) & 0x3F;
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v139 = VRTraceErrorLogLevelToCSTR();
              v140 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                v141 = *v138;
                v142 = v138[2];
                v235 = v222;
                v236 = v139;
                LOWORD(v237[0]) = 2080;
                *(v237 + 2) = "AGPSessionRecvFrom";
                HIWORD(v237[2]) = 1024;
                v237[3] = 1615;
                LOWORD(v237[4]) = 1024;
                *(&v237[4] + 2) = v141;
                HIWORD(v237[5]) = 1024;
                v237[6] = (v142 >> 14) & 0x3F;
                LOWORD(v237[7]) = 1024;
                *(&v237[7] + 2) = (v142 >> 20) & 0x3F;
                HIWORD(v237[8]) = 1024;
                v237[9] = v229;
                _os_log_impl(&dword_24E50C000, v140, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d recv : deliver (%08X:%02d:%02d) from remoteID %08X...", &v235, 0x34u);
              }
            }

            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v143 = VRTraceErrorLogLevelToCSTR();
              v144 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                v145 = *v138;
                v146 = v138[2];
                v235 = v223;
                v236 = v143;
                LOWORD(v237[0]) = 2080;
                *(v237 + 2) = "AGPSessionRecvFrom";
                HIWORD(v237[2]) = 1024;
                v237[3] = 1617;
                LOWORD(v237[4]) = 1024;
                *(&v237[4] + 2) = v145;
                HIWORD(v237[5]) = 1024;
                v237[6] = (v146 >> 14) & 0x3F;
                LOWORD(v237[7]) = 1024;
                *(&v237[7] + 2) = (v146 >> 20) & 0x3F;
                _os_log_impl(&dword_24E50C000, v144, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d recv : deliver (%08X:%02d:%02d)...", &v235, 0x2Eu);
              }
            }

            ++v12[27];
            if (v225)
            {
              v224 = (v138 + 4);
            }

            else
            {
              memcpy(v135, v138 + 4, v138[3]);
            }

            v135 += v138[3];
            *v138 = 0;
            *(v138 + 1) = 0;
            ++v137;
          }

          while (v228 != v137);
          *&v230[8] = v224;
          *&v230[16] = v135 - v219;
          if ((v225 & 1) == 0)
          {
            operator new();
          }

          (*a1)(*(a1 + 8), v229, v230);
          if ((v225 & 1) == 0)
          {
            CFRelease(0);
          }

          *&v227 = *(v12 + 696);
          v147 = *(v226 + 8 * v227);
          if (!v147 || !v147[3] || *v147 != v12[27])
          {
            goto LABEL_212;
          }

          LODWORD(v224) = *v147;
          LODWORD(v225) = v147[2];
          v108 = v225 >> 14;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v211 = VRTraceErrorLogLevelToCSTR();
          v212 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v213 = v12[27];
            v235 = v223;
            v236 = v211;
            LOWORD(v237[0]) = 2080;
            *(v237 + 2) = "AGPSessionRecvFrom";
            HIWORD(v237[2]) = 1024;
            v237[3] = 1687;
            LOWORD(v237[4]) = 2048;
            *(&v237[4] + 2) = a1;
            HIWORD(v237[6]) = 1024;
            v237[7] = v224;
            LOWORD(v237[8]) = 1024;
            *(&v237[8] + 2) = v213;
            v45 = " [%s] %s:%d %p recv: MESSAGE SERIAL_NUMBASE %08X ARRIVED OUT-OF-SEQUENCE %08X";
            v46 = v212;
            goto LABEL_43;
          }
        }

LABEL_212:
        *&v230[20] = 0;
        v185 = *(a1 + 16);
        *v230 = 2823;
        *&v230[4] = v185;
        *&v230[8] = v229;
        *&v230[12] = *(v26 - 2);
        *&v230[16] = *(v26 - 1) & 0xFFFFFF03 | (4 * (v12[174] & 0x3F));
        v186 = *(v26 - 1);
        v187 = v186 >> 2;
        if (v186)
        {
          v189 = v187 == v186 >> 26;
          v190 = VRTraceGetErrorLogLevelForModule();
          if (v189)
          {
            if (v190 >= 7)
            {
              v191 = VRTraceErrorLogLevelToCSTR();
              v192 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                v235 = 136316162;
                v236 = v191;
                LOWORD(v237[0]) = 2080;
                *(v237 + 2) = "AGPSessionRecvFrom";
                HIWORD(v237[2]) = 1024;
                v237[3] = 1716;
                LOWORD(v237[4]) = 2048;
                *(&v237[4] + 2) = a1;
                HIWORD(v237[6]) = 1024;
                v237[7] = v187;
                _os_log_impl(&dword_24E50C000, v192, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p recv: FORCE FULL BUFFER INDEX %d", &v235, 0x2Cu);
              }
            }

            v188 = 1;
LABEL_219:
            v193 = 0;
            if (v188)
            {
              goto LABEL_221;
            }

            while (1)
            {
              if (v187 == *(v26 - 1) >> 26)
              {
                v199 = *&v230[20];
                v200 = *&v230[24];
                if (*&v230[20])
                {
                  if (VRTraceGetErrorLogLevelForModule() >= 7)
                  {
                    v201 = VRTraceErrorLogLevelToCSTR();
                    v202 = *MEMORY[0x277CE5818];
                    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                    {
                      v235 = 136316418;
                      v236 = v201;
                      LOWORD(v237[0]) = 2080;
                      *(v237 + 2) = "AGPSessionRecvFrom";
                      HIWORD(v237[2]) = 1024;
                      v237[3] = 1765;
                      LOWORD(v237[4]) = 2048;
                      *(&v237[4] + 2) = a1;
                      HIWORD(v237[6]) = 1024;
                      v237[7] = v200;
                      LOWORD(v237[8]) = 1024;
                      *(&v237[8] + 2) = v199;
                      _os_log_impl(&dword_24E50C000, v202, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p data: sack bitmap == %08X%08X", &v235, 0x32u);
                    }
                  }
                }

                v203 = 0;
                v204 = 0;
                do
                {
                  v204 += *&v230[v203];
                  v203 += 2;
                }

                while (v203 != 28);
                *&v230[2] = ~v204;
                *(a1 + 384) = vadd_s32(*(a1 + 384), 0x1C00000001);
                v12[28] = CAGP::current_timestamp(a1);
                pthread_mutex_unlock((a1 + 128));
                v215 = *a3 == 6;
                GCKSessionSendTo(*(a1 + 24));
              }

LABEL_221:
              v193 |= (v187 == *(v12 + 696)) & (v188 ^ 1);
              if (v193)
              {
                v194 = *&v12[2 * v187 + 30];
                if (v194)
                {
                  v195 = v187 - 32;
                  if (v187 < 0x20)
                  {
                    v195 = v187;
                  }

                  v196 = 1 << v195;
                  if (v187 >= 0x20)
                  {
                    v197 = 24;
                  }

                  else
                  {
                    v197 = 20;
                  }

                  if (*(v194 + 12) || (*(v194 + 8) & 2) != 0)
                  {
                    v198 = *&v230[v197] & ~v196;
                  }

                  else
                  {
                    v198 = *&v230[v197] | v196;
                  }

                  *&v230[v197] = v198;
                }
              }

              v188 = 0;
              v187 = (v187 + 1) & 0x3F;
            }
          }

          if (v190 >= 3)
          {
            v205 = VRTraceErrorLogLevelToCSTR();
            v206 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              v235 = 136316162;
              v236 = v205;
              LOWORD(v237[0]) = 2080;
              *(v237 + 2) = "AGPSessionRecvFrom";
              HIWORD(v237[2]) = 1024;
              v237[3] = 1719;
              LOWORD(v237[4]) = 2048;
              *(&v237[4] + 2) = a1;
              HIWORD(v237[6]) = 1024;
              v237[7] = v187;
              _os_log_error_impl(&dword_24E50C000, v206, OS_LOG_TYPE_ERROR, " [%s] %s:%d %p recv: ERROR FULL BUFFER INDEX MISMATCH %d", &v235, 0x2Cu);
            }
          }
        }

        v188 = 0;
        goto LABEL_219;
      }

      if (v39 == *v93)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v94 = VRTraceErrorLogLevelToCSTR();
          v95 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v96 = *(v26 - 2);
            v235 = 136316674;
            v236 = v94;
            LOWORD(v237[0]) = 2080;
            *(v237 + 2) = "AGPSessionRecvFrom";
            HIWORD(v237[2]) = 1024;
            v237[3] = 1530;
            LOWORD(v237[4]) = 2048;
            *(&v237[4] + 2) = a1;
            HIWORD(v237[6]) = 1024;
            v237[7] = v92;
            LOWORD(v237[8]) = 1024;
            *(&v237[8] + 2) = v96;
            HIWORD(v237[9]) = 1024;
            v237[10] = a2;
            _os_log_impl(&dword_24E50C000, v95, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p recv: DISCARD DUPLICATE %d for packet serial_number %08X from remoteID %08X", &v235, 0x38u);
          }
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_10;
        }

        v97 = VRTraceErrorLogLevelToCSTR();
        v98 = *MEMORY[0x277CE5818];
        if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_10;
        }

        v99 = *(v26 - 2);
        v235 = 136316418;
        v236 = v97;
        LOWORD(v237[0]) = 2080;
        *(v237 + 2) = "AGPSessionRecvFrom";
        HIWORD(v237[2]) = 1024;
        v237[3] = 1532;
        LOWORD(v237[4]) = 2048;
        *(&v237[4] + 2) = a1;
        HIWORD(v237[6]) = 1024;
        v237[7] = v92;
        LOWORD(v237[8]) = 1024;
        *(&v237[8] + 2) = v99;
        v21 = " [%s] %s:%d %p recv: ERROR DUPLICATE %d for packet serial_number %08X";
        v22 = v98;
        v23 = 50;
        goto LABEL_24;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v100 = VRTraceErrorLogLevelToCSTR();
      v101 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v102 = *(v26 - 2);
        v235 = 136316674;
        v236 = v100;
        LOWORD(v237[0]) = 2080;
        *(v237 + 2) = "AGPSessionRecvFrom";
        HIWORD(v237[2]) = 1024;
        v237[3] = 1534;
        LOWORD(v237[4]) = 2048;
        *(&v237[4] + 2) = a1;
        HIWORD(v237[6]) = 1024;
        v237[7] = v92;
        LOWORD(v237[8]) = 1024;
        *(&v237[8] + 2) = v102;
        HIWORD(v237[9]) = 1024;
        v237[10] = a2;
        _os_log_impl(&dword_24E50C000, v101, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p recv: DISCARD NO BUFFER AVAILABLE %d for packet serial_number %08X from remoteID %08X", &v235, 0x38u);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_10;
    }

    v103 = VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v235 = 136316162;
    v236 = v103;
    LOWORD(v237[0]) = 2080;
    *(v237 + 2) = "AGPSessionRecvFrom";
    HIWORD(v237[2]) = 1024;
    v237[3] = 1536;
    LOWORD(v237[4]) = 2048;
    *(&v237[4] + 2) = a1;
    HIWORD(v237[6]) = 1024;
    v237[7] = v92;
    v21 = " [%s] %s:%d %p recv: ERROR NO BUFFER %d";
LABEL_23:
    v22 = v20;
    v23 = 44;
LABEL_24:
    _os_log_impl(&dword_24E50C000, v22, OS_LOG_TYPE_DEFAULT, v21, &v235, v23);
    goto LABEL_10;
  }

  pthread_mutex_unlock((a1 + 128));
  pthread_mutex_lock((a1 + 64));
  v28 = CAGP::sendingSetElement(a1, a2);
  pthread_mutex_lock((v28 + 32));
  v29 = v28 + 120;
  v30 = v28[696];
  if (!v28[699])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v47 = VRTraceErrorLogLevelToCSTR();
      v36 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v48 = *(v26 - 2);
        v49 = **&v29[8 * ((v30 - 1) & 0x3F)] + 1;
        v235 = 136316418;
        v236 = v47;
        LOWORD(v237[0]) = 2080;
        *(v237 + 2) = "AGPSessionRecvFrom";
        HIWORD(v237[2]) = 1024;
        v237[3] = 1970;
        LOWORD(v237[4]) = 2048;
        *(&v237[4] + 2) = a1;
        HIWORD(v237[6]) = 1024;
        v237[7] = v48;
        LOWORD(v237[8]) = 1024;
        *(&v237[8] + 2) = v49;
        v38 = " [%s] %s:%d %p sack: RECEIVED SACK WITH LOWER SERIAL NUMBER [%08X] THAN NEXT [%08X], SKIPPING";
        goto LABEL_247;
      }
    }

    goto LABEL_248;
  }

  v228 = (v28 + 120);
  v31 = **&v29[8 * v30];
  v32 = *(v26 - 2);
  v33 = VRTraceGetErrorLogLevelForModule();
  if (v32 < v31)
  {
    if (v33 >= 7)
    {
      v35 = VRTraceErrorLogLevelToCSTR();
      v36 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v37 = *(v26 - 2);
        v235 = 136316418;
        v236 = v35;
        LOWORD(v237[0]) = 2080;
        *(v237 + 2) = "AGPSessionRecvFrom";
        HIWORD(v237[2]) = 1024;
        v237[3] = 1966;
        LOWORD(v237[4]) = 2048;
        *(&v237[4] + 2) = a1;
        HIWORD(v237[6]) = 1024;
        v237[7] = v37;
        LOWORD(v237[8]) = 1024;
        *(&v237[8] + 2) = v31;
        v38 = " [%s] %s:%d %p sack: RECEIVED SACK WITH LOWER SERIAL NUMBER [%08X] THAN HEAD [%08X], SKIPPING";
        goto LABEL_247;
      }
    }

    goto LABEL_248;
  }

  if (v33 >= 7)
  {
    v50 = VRTraceErrorLogLevelToCSTR();
    v51 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v235 = 136316162;
      v236 = v50;
      LOWORD(v237[0]) = 2080;
      *(v237 + 2) = "AGPSessionRecvFrom";
      HIWORD(v237[2]) = 1024;
      v237[3] = 1820;
      LOWORD(v237[4]) = 2048;
      *(&v237[4] + 2) = a1;
      HIWORD(v237[6]) = 1024;
      v237[7] = a2;
      _os_log_impl(&dword_24E50C000, v51, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p sack: PROCESS SACK PACKET FROM (%08X)...", &v235, 0x2Cu);
    }
  }

  v52 = v26[1];
  *&v227 = v26 + 1;
  if (v52 || *v26)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v53 = VRTraceErrorLogLevelToCSTR();
      v54 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v56 = *v26;
        v55 = v26[1];
        v235 = 136316418;
        v236 = v53;
        LOWORD(v237[0]) = 2080;
        *(v237 + 2) = "AGPSessionRecvFrom";
        HIWORD(v237[2]) = 1024;
        v237[3] = 1824;
        LOWORD(v237[4]) = 2048;
        *(&v237[4] + 2) = a1;
        HIWORD(v237[6]) = 1024;
        v237[7] = v55;
        LOWORD(v237[8]) = 1024;
        *(&v237[8] + 2) = v56;
        _os_log_impl(&dword_24E50C000, v54, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p sack: sack bitmap == %08X%08X", &v235, 0x32u);
      }
    }

    if (v26[1] || *v26)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v57 = VRTraceErrorLogLevelToCSTR();
        v58 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v59 = v28[698];
          v60 = v28[696];
          v61 = v28[697];
          v62 = v28[699];
          v235 = 136316930;
          v236 = v57;
          LOWORD(v237[0]) = 2080;
          *(v237 + 2) = "AGPSessionRecvFrom";
          HIWORD(v237[2]) = 1024;
          v237[3] = 1832;
          LOWORD(v237[4]) = 2048;
          *(&v237[4] + 2) = a1;
          HIWORD(v237[6]) = 1024;
          v237[7] = v59;
          LOWORD(v237[8]) = 1024;
          *(&v237[8] + 2) = v60;
          HIWORD(v237[9]) = 1024;
          v237[10] = v61;
          LOWORD(v237[11]) = 1024;
          *(&v237[11] + 2) = v62;
          _os_log_impl(&dword_24E50C000, v58, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p sack: RECEIVER CLAIMS TO BE MISSING PACKETS (sender base %02d head %02d tail %02d used %02d", &v235, 0x3Eu);
        }
      }

      v63 = 0;
      v224 = v28 + 632;
      *&v34 = 136316674;
      v226 = v34;
      *&v34 = 136316162;
      v225 = v34;
      *&v34 = 136315650;
      v223 = v34;
      do
      {
        v64 = (v63 + v28[698]) & 0x3F;
        v65 = v64 - 32;
        if (v64 < 0x20)
        {
          v65 = (v63 + v28[698]) & 0x3F;
        }

        v66 = v227;
        if (v64 < 0x20)
        {
          v66 = v26;
        }

        if (((*v66 >> v65) & 1) == 0)
        {
          goto LABEL_91;
        }

        v67 = *(v228 + 8 * v64);
        if (!v67)
        {
          goto LABEL_91;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v68 = VRTraceErrorLogLevelToCSTR();
          v69 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v70 = *(v67 + 3);
            v71 = (*(v67 + 2) >> 1) & 1;
            v235 = v226;
            v236 = v68;
            LOWORD(v237[0]) = 2080;
            *(v237 + 2) = "AGPSessionRecvFrom";
            HIWORD(v237[2]) = 1024;
            v237[3] = 1851;
            LOWORD(v237[4]) = 2048;
            *(&v237[4] + 2) = a1;
            HIWORD(v237[6]) = 1024;
            v237[7] = v64;
            LOWORD(v237[8]) = 1024;
            *(&v237[8] + 2) = v70;
            HIWORD(v237[9]) = 1024;
            v237[10] = v71;
            _os_log_impl(&dword_24E50C000, v69, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p sack: TEST INDEX %d len == %d ack_pending = %01d ", &v235, 0x38u);
          }
        }

        if (*(v67 + 3) && (v67[8] & 2) != 0 && *(v67 + 1) != -1)
        {
          v72 = CAGP::current_timestamp(a1);
          v73 = v72 - *(v67 + 1);
          if (v73 < 0)
          {
            if (v73 <= 0xEDF9BE00)
            {
              v73 += 604800000;
            }

            else if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              *&v222 = VRTraceErrorLogLevelToCSTR();
              v221 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(v221, OS_LOG_TYPE_ERROR))
              {
                v235 = v223;
                v236 = v222;
                LOWORD(v237[0]) = 2080;
                *(v237 + 2) = "AGPSessionRecvFrom";
                HIWORD(v237[2]) = 1024;
                v237[3] = 1859;
                _os_log_error_impl(&dword_24E50C000, v221, OS_LOG_TYPE_ERROR, " [%s] %s:%d ERROR: CAN'T RESEND (BAD TIMESTAMP) !!!!!!!!!!!!", &v235, 0x1Cu);
              }
            }
          }

          if (v73 > *(v28 + 178))
          {
            memset(v237, 170, 0x5D0uLL);
            LOBYTE(v235) = 5;
            BYTE1(v235) = v224[v64];
            HIWORD(v235) = 0;
            LODWORD(v236) = *(a1 + 16);
            HIDWORD(v236) = v229;
            v237[0] = *v67;
            v237[1] = *(v67 + 2) & 0x3FFFF03 | (4 * (v28[698] & 0x3F)) | (v28[697] << 26);
            *(v67 + 1) = v72;
            ++*(v67 + 379);
            memcpy(&v237[2], v67 + 16, *(v67 + 3));
            HIWORD(v235) = agp_control::generate_checksum(&v235, v67 + 16, *(v67 + 3));
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v79 = VRTraceErrorLogLevelToCSTR();
              v80 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                *v230 = v225;
                *&v230[4] = v79;
                *&v230[12] = 2080;
                *&v230[14] = "AGPSessionRecvFrom";
                *&v230[22] = 1024;
                *&v230[24] = 1891;
                v231 = 2048;
                v232 = a1;
                v233 = 1024;
                v234 = v64;
                _os_log_impl(&dword_24E50C000, v80, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p sack: RESEND INDEX %d", v230, 0x2Cu);
              }
            }

            v81 = *(v67 + 3);
            v214 = *a3 == 6;
            GCKSessionSendTo(*(a1 + 24));
          }

          v82 = v73;
          if (VRTraceGetErrorLogLevelForModule() < 7)
          {
            goto LABEL_91;
          }

          v83 = VRTraceErrorLogLevelToCSTR();
          v84 = *MEMORY[0x277CE5818];
          if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_91;
          }

          v85 = *(v28 + 178);
          v235 = v226;
          v236 = v83;
          LOWORD(v237[0]) = 2080;
          *(v237 + 2) = "AGPSessionRecvFrom";
          HIWORD(v237[2]) = 1024;
          v237[3] = 1897;
          LOWORD(v237[4]) = 2048;
          *(&v237[4] + 2) = a1;
          HIWORD(v237[6]) = 1024;
          v237[7] = v64;
          LOWORD(v237[8]) = 1024;
          *(&v237[8] + 2) = v82;
          HIWORD(v237[9]) = 1024;
          v237[10] = v85;
          v76 = v84;
          v77 = " [%s] %s:%d %p sack: RESEND ABORT %d ELAPSED_TIME (%04d) < RTO (%04d)";
          v78 = 56;
        }

        else
        {
          if (VRTraceGetErrorLogLevelForModule() < 7)
          {
            goto LABEL_91;
          }

          v74 = VRTraceErrorLogLevelToCSTR();
          v75 = *MEMORY[0x277CE5818];
          if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_91;
          }

          v235 = v225;
          v236 = v74;
          LOWORD(v237[0]) = 2080;
          *(v237 + 2) = "AGPSessionRecvFrom";
          HIWORD(v237[2]) = 1024;
          v237[3] = 1900;
          LOWORD(v237[4]) = 2048;
          *(&v237[4] + 2) = a1;
          HIWORD(v237[6]) = 1024;
          v237[7] = v64;
          v76 = v75;
          v77 = " [%s] %s:%d %p sack: CAN'T RESEND INDEX %d";
          v78 = 44;
        }

        _os_log_impl(&dword_24E50C000, v76, OS_LOG_TYPE_DEFAULT, v77, &v235, v78);
LABEL_91:
        ++v63;
      }

      while (v63 != 64);
    }
  }

  v86 = v28[698];
  if (*(v26 - 1) >> 2 == v86)
  {
    v87 = 1;
    goto LABEL_200;
  }

  LODWORD(v226) = 0;
  v148 = MEMORY[0x277CE5818];
  *&v34 = 136316418;
  v227 = v34;
  v149 = v228;
  do
  {
    v150 = *(v149 + 8 * v86);
    if (!v150)
    {
      break;
    }

    if (!*(v150 + 12) || (*(v150 + 8) & 2) == 0)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_192;
      }

      v151 = VRTraceErrorLogLevelToCSTR();
      v152 = *v148;
      if (!os_log_type_enabled(*v148, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_192;
      }

      v153 = *v150;
      v235 = v227;
      v236 = v151;
      LOWORD(v237[0]) = 2080;
      *(v237 + 2) = "AGPSessionRecvFrom";
      HIWORD(v237[2]) = 1024;
      v237[3] = 1933;
      LOWORD(v237[4]) = 2048;
      *(&v237[4] + 2) = a1;
      HIWORD(v237[6]) = 1024;
      v237[7] = v153;
      LOWORD(v237[8]) = 1024;
      *(&v237[8] + 2) = v229;
      v154 = v152;
      v155 = " [%s] %s:%d %p sack: BUFFER MISSING SERIAL NUMBER (%08X) FROM (%08X)...";
      goto LABEL_179;
    }

    v156 = AGPSendingSetElement::search(v28, *v150);
    if (v156 < 0)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_192;
      }

      v162 = VRTraceErrorLogLevelToCSTR();
      v163 = *v148;
      if (!os_log_type_enabled(*v148, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_192;
      }

      v164 = *v150;
      v235 = v227;
      v236 = v162;
      LOWORD(v237[0]) = 2080;
      *(v237 + 2) = "AGPSessionRecvFrom";
      HIWORD(v237[2]) = 1024;
      v237[3] = 1929;
      LOWORD(v237[4]) = 2048;
      *(&v237[4] + 2) = a1;
      HIWORD(v237[6]) = 1024;
      v237[7] = v164;
      LOWORD(v237[8]) = 1024;
      *(&v237[8] + 2) = v229;
      v154 = v163;
      v155 = " [%s] %s:%d %p sack: SEARCH FAILURE SERIAL NUMBER (%08X) FROM (%08X)...";
      goto LABEL_179;
    }

    v157 = AGPSendingSetElement::remove(v28, v156);
    v158 = VRTraceGetErrorLogLevelForModule();
    if (v157)
    {
      if (v158 >= 7)
      {
        v159 = VRTraceErrorLogLevelToCSTR();
        v160 = *v148;
        if (os_log_type_enabled(*v148, OS_LOG_TYPE_DEFAULT))
        {
          v161 = *v150;
          v235 = v227;
          v236 = v159;
          LOWORD(v237[0]) = 2080;
          *(v237 + 2) = "AGPSessionRecvFrom";
          HIWORD(v237[2]) = 1024;
          v237[3] = 1924;
          LOWORD(v237[4]) = 2048;
          *(&v237[4] + 2) = a1;
          HIWORD(v237[6]) = 1024;
          v237[7] = v161;
          LOWORD(v237[8]) = 1024;
          *(&v237[8] + 2) = v229;
          _os_log_impl(&dword_24E50C000, v160, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p sack: REMOVED PACKET SERIAL NUMBER (%08X) FROM (%08X)...", &v235, 0x32u);
        }
      }

      LODWORD(v226) = 1;
      goto LABEL_192;
    }

    if (v158 >= 7)
    {
      v165 = VRTraceErrorLogLevelToCSTR();
      v166 = *v148;
      if (os_log_type_enabled(*v148, OS_LOG_TYPE_DEFAULT))
      {
        v167 = *v150;
        v235 = v227;
        v236 = v165;
        LOWORD(v237[0]) = 2080;
        *(v237 + 2) = "AGPSessionRecvFrom";
        HIWORD(v237[2]) = 1024;
        v237[3] = 1926;
        LOWORD(v237[4]) = 2048;
        *(&v237[4] + 2) = a1;
        HIWORD(v237[6]) = 1024;
        v237[7] = v167;
        LOWORD(v237[8]) = 1024;
        *(&v237[8] + 2) = v229;
        v154 = v166;
        v155 = " [%s] %s:%d %p sack: REMOVE FAILURE SERIAL NUMBER (%08X) FROM (%08X)...";
LABEL_179:
        _os_log_impl(&dword_24E50C000, v154, OS_LOG_TYPE_DEFAULT, v155, &v235, 0x32u);
      }
    }

LABEL_192:
    v149 = v228;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v168 = VRTraceErrorLogLevelToCSTR();
      v169 = *v148;
      v149 = v228;
      if (os_log_type_enabled(*v148, OS_LOG_TYPE_DEFAULT))
      {
        v170 = v28[698];
        v235 = v227;
        v236 = v168;
        LOWORD(v237[0]) = 2080;
        *(v237 + 2) = "AGPSessionRecvFrom";
        HIWORD(v237[2]) = 1024;
        v237[3] = 1937;
        LOWORD(v237[4]) = 2048;
        *(&v237[4] + 2) = a1;
        HIWORD(v237[6]) = 1024;
        v237[7] = v170;
        LOWORD(v237[8]) = 1024;
        *(&v237[8] + 2) = v229;
        _os_log_impl(&dword_24E50C000, v169, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p sack: INC BASE (%02d) FOR (%08X)...", &v235, 0x32u);
      }
    }

    v86 = (v28[698] + 1) & 0x3F;
    v28[698] = v86;
  }

  while (*(v26 - 1) >> 2 != v86);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v171 = VRTraceErrorLogLevelToCSTR();
    v172 = *v148;
    if (os_log_type_enabled(*v148, OS_LOG_TYPE_DEFAULT))
    {
      v173 = v28[698];
      v235 = v227;
      v236 = v171;
      LOWORD(v237[0]) = 2080;
      *(v237 + 2) = "AGPSessionRecvFrom";
      HIWORD(v237[2]) = 1024;
      v237[3] = 1942;
      LOWORD(v237[4]) = 2048;
      *(&v237[4] + 2) = a1;
      HIWORD(v237[6]) = 1024;
      v237[7] = v173;
      LOWORD(v237[8]) = 1024;
      *(&v237[8] + 2) = v229;
      _os_log_impl(&dword_24E50C000, v172, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p sack: SET BASE (%02d) FOR (%08X)...", &v235, 0x32u);
    }
  }

  v87 = v226 == 0;
LABEL_200:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v174 = VRTraceErrorLogLevelToCSTR();
    v175 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v176 = v28[698];
      v235 = 136316418;
      v236 = v174;
      LOWORD(v237[0]) = 2080;
      *(v237 + 2) = "AGPSessionRecvFrom";
      HIWORD(v237[2]) = 1024;
      v237[3] = 1945;
      LOWORD(v237[4]) = 2048;
      *(&v237[4] + 2) = a1;
      HIWORD(v237[6]) = 1024;
      v237[7] = v176;
      LOWORD(v237[8]) = 1024;
      *(&v237[8] + 2) = v229;
      _os_log_impl(&dword_24E50C000, v175, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p sack: CUR BASE (%02d) FOR (%08X)...", &v235, 0x32u);
    }
  }

  v177 = AGPSendingSetElement::search(v28, *(v26 - 2));
  if (v177 < 0)
  {
    if (v87 && VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v182 = VRTraceErrorLogLevelToCSTR();
      v183 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        v184 = *(v26 - 2);
        v235 = 136316418;
        v236 = v182;
        LOWORD(v237[0]) = 2080;
        *(v237 + 2) = "AGPSessionRecvFrom";
        HIWORD(v237[2]) = 1024;
        v237[3] = 1960;
        LOWORD(v237[4]) = 2048;
        *(&v237[4] + 2) = a1;
        HIWORD(v237[6]) = 1024;
        v237[7] = v184;
        LOWORD(v237[8]) = 1024;
        *(&v237[8] + 2) = v229;
        _os_log_error_impl(&dword_24E50C000, v183, OS_LOG_TYPE_ERROR, " [%s] %s:%d %p sack: SEARCH FAILURE SERIAL NUMBER (%08X) FROM (%08X)...", &v235, 0x32u);
      }
    }
  }

  else
  {
    v178 = AGPSendingSetElement::remove(v28, v177);
    v179 = VRTraceGetErrorLogLevelForModule();
    if (v178)
    {
      if (v179 >= 7)
      {
        v180 = VRTraceErrorLogLevelToCSTR();
        v36 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v181 = *(v26 - 2);
          v235 = 136316418;
          v236 = v180;
          LOWORD(v237[0]) = 2080;
          *(v237 + 2) = "AGPSessionRecvFrom";
          HIWORD(v237[2]) = 1024;
          v237[3] = 1953;
          LOWORD(v237[4]) = 2048;
          *(&v237[4] + 2) = a1;
          HIWORD(v237[6]) = 1024;
          v237[7] = v181;
          LOWORD(v237[8]) = 1024;
          *(&v237[8] + 2) = v229;
          v38 = " [%s] %s:%d %p sack: REMOVED PACKET SERIAL NUMBER (%08X) FROM (%08X)...";
          goto LABEL_247;
        }
      }
    }

    else if (v179 >= 7)
    {
      v207 = VRTraceErrorLogLevelToCSTR();
      v36 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v208 = *(v26 - 2);
        v235 = 136316418;
        v236 = v207;
        LOWORD(v237[0]) = 2080;
        *(v237 + 2) = "AGPSessionRecvFrom";
        HIWORD(v237[2]) = 1024;
        v237[3] = 1955;
        LOWORD(v237[4]) = 2048;
        *(&v237[4] + 2) = a1;
        HIWORD(v237[6]) = 1024;
        v237[7] = v208;
        LOWORD(v237[8]) = 1024;
        *(&v237[8] + 2) = v229;
        v38 = " [%s] %s:%d %p sack: REMOVE FAILURE SERIAL NUMBER (%08X) FROM (%08X)...";
LABEL_247:
        _os_log_impl(&dword_24E50C000, v36, OS_LOG_TYPE_DEFAULT, v38, &v235, 0x32u);
      }
    }
  }

LABEL_248:
  pthread_mutex_unlock((v28 + 32));
  pthread_mutex_unlock((a1 + 64));
LABEL_249:
  v3 = 0;
LABEL_250:
  v209 = *MEMORY[0x277D85DE8];
  return v3;
}

void *CAGP::receiveSetElement(CAGP *this, int a2)
{
  pthread_mutex_lock(this + 2);
  v4 = *(this + 7);
  v4[26] = a2;
  value = 0;
  if (!CFSetGetValueIfPresent(*(this + 4), v4, &value))
  {
    operator new();
  }

  pthread_mutex_unlock(this + 2);
  return value;
}

uint64_t *AGPDataQueue::peek_head_for_participant(AGPDataQueue *this, int a2)
{
  pthread_mutex_lock((this + 8));
  v4 = *this;
  if (*this)
  {
    do
    {
      if (*(v4 + 18) == 1 && *(v4 + 2) == a2)
      {
        break;
      }

      v4 = *v4;
    }

    while (v4);
  }

  pthread_mutex_unlock((this + 8));
  return v4;
}

AGPDataQueue *AGPDataQueue::pop_head_for_participant(AGPDataQueue *this, int a2)
{
  pthread_mutex_lock((this + 8));
  v4 = *this;
  if (*this)
  {
    v5 = 0;
    v6 = *this;
    while (1)
    {
      v7 = v6;
      if (*(v6 + 18) == 1 && *(v6 + 2) == a2)
      {
        break;
      }

      v6 = *v6;
      v5 = v7;
      if (!*v7)
      {
        goto LABEL_6;
      }
    }

    if (v5)
    {
      v4 = v6;
    }

    else
    {
      v5 = this;
    }

    *v5 = *v4;
  }

  else
  {
LABEL_6:
    v7 = 0;
  }

  pthread_mutex_unlock((this + 8));
  return v7;
}

void monitorSendingSet(_DWORD *a1, _DWORD *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[26];
      v9 = 136316162;
      v10 = v4;
      v11 = 2080;
      v12 = "monitorSendingSet";
      v13 = 1024;
      v14 = 2112;
      v15 = 2048;
      v16 = a2;
      v17 = 1024;
      v18 = v6;
      _os_log_impl(&dword_24E50C000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %p monitor: participant (%08X)...", &v9, 0x2Cu);
    }
  }

  v7 = a1[175];
  a2[98] += v7;
  a2[99] += a1[178] * v7;
  v8 = *MEMORY[0x277D85DE8];
}

void AGPAssociationSetElement::AGPAssociationSetElement(AGPAssociationSetElement *this, CAGP *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 12) = 0;
  *this = &unk_286195108;
  *(this + 1) = a2;
  *(this + 27) = 0;
  *(this + 696) = 0u;
  *(this + 178) = 0;
  pthread_mutex_lock((this + 32));
  UpdateRTO(this + 175, 250);
  pthread_mutex_unlock((this + 32));
  *(this + 28) = -1;
  v3.__sig = 0xAAAAAAAAAAAAAAAALL;
  *v3.__opaque = 0xAAAAAAAAAAAAAAAALL;
  if (!pthread_mutexattr_init(&v3))
  {
    pthread_mutexattr_settype(&v3, 2);
    pthread_mutex_init((this + 32), &v3);
    pthread_mutexattr_destroy(&v3);
  }

  operator new();
}

void AGPAssociationSetElement::~AGPAssociationSetElement(AGPAssociationSetElement *this)
{
  v2 = 0;
  *this = &unk_286195108;
  do
  {
    *(this + v2 + 632) = 0x80;
    v3 = *(this + v2 + 15);
    if (v3)
    {
      MEMORY[0x253042880](v3, 0x1000C40D24D2377);
    }

    ++v2;
  }

  while (v2 != 64);
  pthread_mutex_destroy((this + 32));
}

{
  AGPAssociationSetElement::~AGPAssociationSetElement(this);

  JUMPOUT(0x253042880);
}

void AGPSendingSetElement::~AGPSendingSetElement(AGPSendingSetElement *this)
{
  AGPSendingSetElement::~AGPSendingSetElement(this);

  JUMPOUT(0x253042880);
}

{
  v14 = *MEMORY[0x277D85DE8];
  *this = &unk_2861950A8;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(this + 26);
      v6 = 136315906;
      v7 = v2;
      v8 = 2080;
      v9 = "~AGPSendingSetElement";
      v10 = 1024;
      v11 = 505;
      v12 = 1024;
      v13 = v4;
      _os_log_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d DELETING sending set element %08X", &v6, 0x22u);
    }
  }

  AGPAssociationSetElement::~AGPAssociationSetElement(this);
  v5 = *MEMORY[0x277D85DE8];
}

void CAGP::CAGP(CAGP *this)
{
  v2 = *MEMORY[0x277D85DE8];
  AGPDataQueue::AGPDataQueue((this + 216));
  AGPDataQueue::AGPDataQueue((this + 288));
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 4) = CFSetCreateMutable(0, 0, &associationSetCallBacks);
  *(this + 5) = CFSetCreateMutable(0, 0, &associationSetCallBacks);
  operator new();
}

void sub_24E5194E8(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x253042880](v3, 0x10A1C404616C3E8);
  AGPDataQueue::~AGPDataQueue((v1 + 288));
  AGPDataQueue::~AGPDataQueue((v1 + 216));
  _Unwind_Resume(a1);
}

void AGPDataQueue::AGPDataQueue(AGPDataQueue *this)
{
  v4 = *MEMORY[0x277D85DE8];
  *this = 0;
  v3.__sig = 0xAAAAAAAAAAAAAAAALL;
  *v3.__opaque = 0xAAAAAAAAAAAAAAAALL;
  if (!pthread_mutexattr_init(&v3))
  {
    pthread_mutexattr_settype(&v3, 2);
    pthread_mutex_init((this + 8), &v3);
    pthread_mutexattr_destroy(&v3);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void AGPReceiveSetElement::~AGPReceiveSetElement(AGPReceiveSetElement *this)
{
  AGPReceiveSetElement::~AGPReceiveSetElement(this);

  JUMPOUT(0x253042880);
}

{
  v14 = *MEMORY[0x277D85DE8];
  *this = &unk_286195128;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(this + 26);
      v6 = 136315906;
      v7 = v2;
      v8 = 2080;
      v9 = "~AGPReceiveSetElement";
      v10 = 1024;
      v11 = 520;
      v12 = 1024;
      v13 = v4;
      _os_log_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d DELETING receive set element %08X", &v6, 0x22u);
    }
  }

  AGPAssociationSetElement::~AGPAssociationSetElement(this);
  v5 = *MEMORY[0x277D85DE8];
}

void AGPDataQueue::~AGPDataQueue(AGPDataQueue *this)
{
  for (i = *this; *this; i = *this)
  {
    *this = *i;
    v3 = i[10];
    if (v3)
    {
      CFRelease(v3);
      i[10] = 0;
    }

    MEMORY[0x253042880](i, 0x1060C40E2738600);
  }

  pthread_mutex_destroy((this + 8));
}

void CAGP::~CAGP(pthread_mutex_t *this)
{
  v2 = *&this->__opaque[32];
  if (v2)
  {
    CFRelease(v2);
    *&this->__opaque[32] = 0;
  }

  v3 = *&this->__opaque[24];
  if (v3)
  {
    CFRelease(v3);
    *&this->__opaque[24] = 0;
  }

  while (1)
  {
    sig = this[3].__sig;
    if (!sig)
    {
      break;
    }

    v5 = sig[3];
    this[3].__sig = sig[2];
    CFSetRemoveValue(v5, sig);
  }

  while (1)
  {
    v6 = *this[3].__opaque;
    if (!v6)
    {
      break;
    }

    *this[3].__opaque = v6[2];
    (*(*v6 + 8))(v6);
  }

  pthread_mutex_destroy(this + 1);
  pthread_mutex_destroy(this + 2);
  v7 = *&this->__opaque[40];
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *&this->__opaque[48];
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  AGPDataQueue::~AGPDataQueue(&this[4].__opaque[24]);
  AGPDataQueue::~AGPDataQueue(&this[3].__opaque[16]);
}

uint64_t PostEventCallback(uint64_t a1, int a2, int a3, const void *a4, int a5, int a6)
{
  v6 = 2149187587;
  if (a1)
  {
    pthread_mutex_lock((a1 + 48));
    if (*(a1 + 4))
    {
      v6 = 2149187606;
LABEL_14:
      pthread_mutex_unlock((a1 + 48));
      return v6;
    }

    if (a4 && a5)
    {
      v13 = malloc_type_malloc(a5 + 48, 0x103004055E16862uLL);
      if (!v13)
      {
        goto LABEL_14;
      }

      v14 = v13;
      *v13 = a2;
      v13[2] = a3;
      v15 = v13 + 12;
      *(v14 + 2) = v15;
      v14[6] = a5;
      v14[7] = a6;
      memcpy(v15, a4, a5);
    }

    else
    {
      v16 = malloc_type_malloc(0x30uLL, 0x103004055E16862uLL);
      if (!v16)
      {
        goto LABEL_14;
      }

      v14 = v16;
      *v16 = a2;
      v16[2] = a3;
      *(v16 + 2) = 0;
      v16[6] = 0;
      v16[7] = a6;
    }

    *(v14 + 5) = 0;
    v17 = a1;
    do
    {
      v18 = v17;
      v17 = *(v17 + 40);
    }

    while (v17);
    *(v18 + 40) = v14;
    pthread_cond_signal((a1 + 112));
    v6 = 0;
    goto LABEL_14;
  }

  return 2149187585;
}

uint64_t WaitEventCallback(uint64_t a1, int a2, int a3, const void *a4, int a5, int a6, double a7)
{
  v7 = 2149187587;
  if (a1)
  {
    pthread_mutex_lock((a1 + 248));
    pthread_mutex_lock((a1 + 48));
    if (*(a1 + 4))
    {
      v7 = 2149187606;
LABEL_19:
      pthread_mutex_unlock((a1 + 48));
      pthread_mutex_unlock((a1 + 248));
      return v7;
    }

    if (a4 && a5)
    {
      v15 = malloc_type_malloc(a5 + 48, 0x103004055E16862uLL);
      if (!v15)
      {
        goto LABEL_19;
      }

      v16 = v15;
      v15[4] = a7;
      *v15 = a2;
      *(v15 + 2) = a3;
      v17 = v15 + 6;
      *(v16 + 2) = v17;
      *(v16 + 6) = a5;
      *(v16 + 7) = a6;
      memcpy(v17, a4, a5);
    }

    else
    {
      v18 = malloc_type_malloc(0x30uLL, 0x103004055E16862uLL);
      if (!v18)
      {
        goto LABEL_19;
      }

      v16 = v18;
      v18[4] = a7;
      *v18 = a2;
      *(v18 + 2) = a3;
      v18[2] = 0.0;
      *(v18 + 6) = 0;
      *(v18 + 7) = a6;
    }

    v16[5] = 0.0;
    v20 = (a1 + 240);
    v19 = *(a1 + 240);
    if (v19)
    {
      if (*(v19 + 32) > a7)
      {
LABEL_16:
        *(v16 + 5) = v19;
      }

      else
      {
        while (1)
        {
          v21 = v19;
          v19 = *(v19 + 40);
          if (!v19)
          {
            break;
          }

          if (*(v19 + 32) > a7)
          {
            v20 = (v21 + 40);
            goto LABEL_16;
          }
        }

        v20 = (v21 + 40);
      }
    }

    v7 = 0;
    *v20 = v16;
    goto LABEL_19;
  }

  return 2149187585;
}

uint64_t ServiceWaitEventCallbacks(uint64_t a1, double a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = 2149187606;
  if (a1)
  {
    pthread_mutex_lock((a1 + 248));
    pthread_mutex_lock((a1 + 48));
    if (*(a1 + 4))
    {
LABEL_3:
      pthread_mutex_unlock((a1 + 48));
      pthread_mutex_unlock((a1 + 248));
    }

    else
    {
      v6 = (a1 + 240);
      v5 = *(a1 + 240);
      if (v5)
      {
        v7 = MEMORY[0x277CE5818];
        do
        {
          v8 = (v5 + 40);
          if (*(v5 + 32) <= a2)
          {
            *v6 = *v8;
            *v8 = 0;
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v9 = VRTraceErrorLogLevelToCSTR();
              v10 = *v7;
              if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
              {
                v11 = *(v5 + 8);
                v12 = *v5;
                *buf = 136316162;
                v16 = v9;
                v17 = 2080;
                v18 = "ServiceWaitEventCallbacks";
                v19 = 1024;
                v20 = 197;
                v21 = 1024;
                v22 = v11;
                v23 = 1024;
                v24 = v12;
                _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ServiceWaitEventCallbacks: post delayed event of type %d to participant %08X", buf, 0x28u);
              }
            }

            pthread_mutex_unlock((a1 + 48));
            PostEventCallback(a1, *v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 28));
            pthread_mutex_lock((a1 + 48));
            free(v5);
            if (*(a1 + 4))
            {
              goto LABEL_3;
            }
          }

          else
          {
            v6 = (v5 + 40);
          }

          v5 = *v6;
        }

        while (*v6);
      }

      pthread_mutex_unlock((a1 + 48));
      pthread_mutex_unlock((a1 + 248));
      v2 = 0;
    }
  }

  else
  {
    v2 = 2149187585;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t StartEventCallbackThread(_DWORD *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    pthread_mutex_lock((a1 + 12));
    if (*a1)
    {
      pthread_mutex_unlock((a1 + 12));
      v2 = 0;
    }

    else
    {
      *&v3 = 0xAAAAAAAAAAAAAAAALL;
      *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v6.__opaque[24] = v3;
      *&v6.__opaque[40] = v3;
      *&v6.__sig = v3;
      *&v6.__opaque[8] = v3;
      pthread_attr_init(&v6);
      pthread_attr_setdetachstate(&v6, 2);
      v2 = pthread_create(a1 + 20, 0, EventCBProc, a1);
      pthread_attr_destroy(&v6);
      if (v2)
      {
        v2 = v2 | 0xC01A0000;
      }

      else
      {
        *a1 = 1;
      }

      pthread_mutex_unlock((a1 + 12));
    }
  }

  else
  {
    v2 = 2149187585;
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t EventCBProc(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  pthread_setname_np("com.apple.gamekitservices.eventcallback.eventcbproc");
  while (1)
  {
    pthread_mutex_lock((a1 + 48));
    while (1)
    {
      v2 = *(a1 + 40);
      if (v2)
      {
        break;
      }

      if (*(a1 + 4))
      {
        goto LABEL_8;
      }

      pthread_cond_wait((a1 + 112), (a1 + 48));
    }

    if (*(a1 + 4))
    {
      break;
    }

    *(a1 + 40) = v2[5];
    pthread_mutex_unlock((a1 + 48));
    (*(a1 + 8))(*(a1 + 16), *v2, v2 + 1);
    free(v2);
  }

LABEL_8:
  pthread_mutex_unlock((a1 + 48));
  if (VRTraceGetErrorLogLevelForModule() > 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315650;
      v8 = v3;
      v9 = 2080;
      v10 = "EventCBProc";
      v11 = 1024;
      v12 = 38;
      _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d EventCallbackThread ends.", &v7, 0x1Cu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t StopEventCallbackThread(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    pthread_mutex_lock((a1 + 48));
    *(a1 + 4) = 1;
    pthread_cond_signal((a1 + 112));
    v2 = *(a1 + 40);
    if (v2)
    {
      do
      {
        v3 = v2[5];
        free(v2);
        v2 = v3;
      }

      while (v3);
    }

    *(a1 + 40) = 0;
    pthread_mutex_unlock((a1 + 48));
    pthread_join(*(a1 + 160), 0);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315650;
        v10 = v4;
        v11 = 2080;
        v12 = "CleanupWaitEventCallbacks";
        v13 = 1024;
        v14 = 226;
        _os_log_impl(&dword_24E50C000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d CleanupWaitEventCallbacks", &v9, 0x1Cu);
      }
    }

    pthread_mutex_lock((a1 + 248));
    while (1)
    {
      v6 = *(a1 + 240);
      if (!v6)
      {
        break;
      }

      *(a1 + 240) = v6[5];
      free(v6);
    }

    pthread_mutex_unlock((a1 + 248));
    pthread_mutex_destroy((a1 + 48));
    pthread_mutex_destroy((a1 + 248));
    pthread_cond_destroy((a1 + 112));
    free(a1);
    result = 0;
  }

  else
  {
    result = 2149187585;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void *GCKSessionDecodeChannelStatisticsInternal(char *a1, unsigned int a2)
{
  v4 = malloc_type_calloc(1uLL, 0x98uLL, 0x102004012D539F1uLL);
  if (v4)
  {
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v8.x_public = v5;
    *&v8.x_base = v5;
    *&v8.x_op = v5;
    xdrmem_create(&v8, a1, a2, XDR_DECODE);
    if (!xdr_chanstat_node(&v8, v4))
    {
      free(v4);
      v4 = 0;
    }

    x_destroy = v8.x_ops->x_destroy;
    if (x_destroy)
    {
      (x_destroy)(&v8);
    }
  }

  return v4;
}

uint64_t TracePrintChanStats(uint64_t a1)
{
  v62 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x277CE5818];
    v4 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *a1;
        v6 = *(a1 + 4);
        v7 = *(a1 + 64);
        *buf = 136316418;
        v55 = v2;
        v56 = 2080;
        v57 = "TracePrintChanStats";
        v58 = 1024;
        v59 = 74;
        v60 = 1024;
        *v61 = v5;
        *&v61[4] = 1024;
        *&v61[6] = v6;
        *&v61[10] = 1024;
        *&v61[12] = v7;
        _os_log_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ====> report (hostID %08X iIFIndex %d chanID %d)", buf, 0x2Eu);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      TracePrintChanStats_cold_1(v2, a1);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x277CE5818];
    v10 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 68);
        v12 = *(a1 + 8);
        v13 = *(a1 + 10);
        *buf = 136316418;
        v55 = v8;
        v56 = 2080;
        v57 = "TracePrintChanStats";
        v58 = 1024;
        v59 = 75;
        v60 = 1024;
        *v61 = v11;
        *&v61[4] = 1024;
        *&v61[6] = v12;
        *&v61[10] = 1024;
        *&v61[12] = v13;
        _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ====>        (peerID %08X type %d rsvd %d)", buf, 0x2Eu);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      TracePrintChanStats_cold_2(v8, a1);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x277CE5818];
    v16 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 12);
        v18 = *(a1 + 16);
        v19 = *(a1 + 24);
        *buf = 136316418;
        v55 = v14;
        v56 = 2080;
        v57 = "TracePrintChanStats";
        v58 = 1024;
        v59 = 76;
        v60 = 1024;
        *v61 = v17;
        *&v61[4] = 2048;
        *&v61[6] = v18;
        *&v61[14] = 2048;
        *&v61[16] = v19;
        _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ====>        (rtt %d recv %ld send %ld)", buf, 0x36u);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      TracePrintChanStats_cold_3(v14, a1);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v20 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x277CE5818];
    v22 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 32);
        v24 = *(a1 + 36);
        *buf = 136316162;
        v55 = v20;
        v56 = 2080;
        v57 = "TracePrintChanStats";
        v58 = 1024;
        v59 = 78;
        v60 = 1024;
        *v61 = v23;
        *&v61[4] = 1024;
        *&v61[6] = v24;
        _os_log_impl(&dword_24E50C000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ====>        (rbw %d sbw %d)", buf, 0x28u);
      }
    }

    else if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      TracePrintChanStats_cold_4(v20, a1);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v25 = VRTraceErrorLogLevelToCSTR();
    v26 = *MEMORY[0x277CE5818];
    v27 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(a1 + 40);
        v29 = *(a1 + 44);
        v30 = *(a1 + 48);
        *buf = 136316418;
        v55 = v25;
        v56 = 2080;
        v57 = "TracePrintChanStats";
        v58 = 1024;
        v59 = 79;
        v60 = 2048;
        *v61 = v28;
        *&v61[8] = 2048;
        *&v61[10] = v29;
        *&v61[18] = 2048;
        *&v61[20] = v30;
        _os_log_impl(&dword_24E50C000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ====>        (up %f irate %f orate %f)", buf, 0x3Au);
      }
    }

    else if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      TracePrintChanStats_cold_5(v25, a1);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v31 = VRTraceErrorLogLevelToCSTR();
    v32 = *MEMORY[0x277CE5818];
    v33 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = *(a1 + 52);
        v35 = *(a1 + 56);
        *buf = 136316162;
        v55 = v31;
        v56 = 2080;
        v57 = "TracePrintChanStats";
        v58 = 1024;
        v59 = 80;
        v60 = 2048;
        *v61 = v34;
        *&v61[8] = 2048;
        *&v61[10] = v35;
        _os_log_impl(&dword_24E50C000, v32, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ====>        (iloss %f oloss %f)", buf, 0x30u);
      }
    }

    else if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      TracePrintChanStats_cold_6(v31, a1);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v36 = VRTraceErrorLogLevelToCSTR();
    v37 = *MEMORY[0x277CE5818];
    v38 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = *(a1 + 72);
        *buf = 136315906;
        v55 = v36;
        v56 = 2080;
        v57 = "TracePrintChanStats";
        v58 = 1024;
        v59 = 81;
        v60 = 1024;
        *v61 = v39;
        _os_log_impl(&dword_24E50C000, v37, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ====>        (ndst %d)", buf, 0x22u);
      }
    }

    else if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      TracePrintChanStats_cold_7(v36, a1);
    }
  }

  if (*(a1 + 72) >= 1)
  {
    v40 = 0;
    v41 = a1 + 76;
    do
    {
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v42 = VRTraceErrorLogLevelToCSTR();
        v43 = *MEMORY[0x277CE5818];
        v44 = *MEMORY[0x277CE5818];
        if (*MEMORY[0x277CE5808] == 1)
        {
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            v45 = *(v41 + 4 * v40);
            *buf = 136316162;
            v55 = v42;
            v56 = 2080;
            v57 = "TracePrintChanStats";
            v58 = 1024;
            v59 = 83;
            v60 = 1024;
            *v61 = v40;
            *&v61[4] = 1024;
            *&v61[6] = v45;
            _os_log_impl(&dword_24E50C000, v43, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ====>         (dstID %d %08X)", buf, 0x28u);
          }
        }

        else if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          v46 = *(v41 + 4 * v40);
          *buf = 136316162;
          v55 = v42;
          v56 = 2080;
          v57 = "TracePrintChanStats";
          v58 = 1024;
          v59 = 83;
          v60 = 1024;
          *v61 = v40;
          *&v61[4] = 1024;
          *&v61[6] = v46;
          _os_log_debug_impl(&dword_24E50C000, v43, OS_LOG_TYPE_DEBUG, " [%s] %s:%d ====>         (dstID %d %08X)", buf, 0x28u);
        }
      }

      ++v40;
    }

    while (v40 < *(a1 + 72));
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v47 = VRTraceErrorLogLevelToCSTR();
    v48 = *MEMORY[0x277CE5818];
    v49 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = *(a1 + 144);
        *buf = 136315906;
        if (v50)
        {
          v51 = "YES";
        }

        else
        {
          v51 = "NO";
        }

        v55 = v47;
        v56 = 2080;
        v57 = "TracePrintChanStats";
        v58 = 1024;
        v59 = 85;
        v60 = 2080;
        *v61 = v51;
        _os_log_impl(&dword_24E50C000, v48, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ====>        (next == %s)", buf, 0x26u);
      }
    }

    else if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      TracePrintChanStats_cold_8(v47, a1);
    }
  }

  result = *(a1 + 144);
  if (result)
  {
    result = TracePrintChanStats();
  }

  v53 = *MEMORY[0x277D85DE8];
  return result;
}

void GCKSession_TrimLocalInterfaceList(__int128 **a1, int *a2, int a3)
{
  v42 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v30 = 0;
    if (a1 && a2 && (v8 = *a1) != 0)
    {
      v29 = 0;
      if (*a2 < 1)
      {
        v11 = 0;
        v10 = 0;
      }

      else
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = v8 + 1;
        v13 = MEMORY[0x277CE5808];
        while (1)
        {
          if (*(v8 + 4) == 101 && !((*(v8 + 5) != 110) | v10 & 1))
          {
            if (VRTraceGetErrorLogLevelForModule() >= 8)
            {
              v18 = VRTraceErrorLogLevelToCSTR();
              v19 = *MEMORY[0x277CE5818];
              v20 = *MEMORY[0x277CE5818];
              if (*v13 == 1)
              {
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                {
                  v21 = *v8;
                  *buf = 136316162;
                  v33 = v18;
                  v34 = 2080;
                  v35 = "GCKSession_TrimLocalInterfaceList";
                  v36 = 1024;
                  v37 = 320;
                  v38 = 1024;
                  v39 = v21;
                  v40 = 2080;
                  v41 = v12;
                  _os_log_impl(&dword_24E50C000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d InterfaceFilter found an en IPPort. Try to use it as first enIPPort. iFlags=(%02X)\tszIfName=%s", buf, 0x2Cu);
                }
              }

              else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
              {
                v23 = *v8;
                *buf = 136316162;
                v33 = v18;
                v34 = 2080;
                v35 = "GCKSession_TrimLocalInterfaceList";
                v36 = 1024;
                v37 = 320;
                v38 = 1024;
                v39 = v23;
                v40 = 2080;
                v41 = v12;
                _os_log_debug_impl(&dword_24E50C000, v19, OS_LOG_TYPE_DEBUG, " [%s] %s:%d InterfaceFilter found an en IPPort. Try to use it as first enIPPort. iFlags=(%02X)\tszIfName=%s", buf, 0x2Cu);
              }
            }

            v10 = _GCKSession_AddOneIPPortToInterfaceList(&v30, v8, &v29);
          }

          else if (!(((*v8 & 4) == 0) | v11 & 1))
          {
            if (VRTraceGetErrorLogLevelForModule() >= 8)
            {
              v14 = VRTraceErrorLogLevelToCSTR();
              v15 = *MEMORY[0x277CE5818];
              v16 = *MEMORY[0x277CE5818];
              if (*v13 == 1)
              {
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                {
                  v17 = *v8;
                  *buf = 136316162;
                  v33 = v14;
                  v34 = 2080;
                  v35 = "GCKSession_TrimLocalInterfaceList";
                  v36 = 1024;
                  v37 = 323;
                  v38 = 1024;
                  v39 = v17;
                  v40 = 2080;
                  v41 = v12;
                  _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d InterfaceFilter found an carrier IPPort. Try to use it as first pdpIPPort. iFlags=(%02X)\tszIfName=%s", buf, 0x2Cu);
                }
              }

              else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
              {
                v22 = *v8;
                *buf = 136316162;
                v33 = v14;
                v34 = 2080;
                v35 = "GCKSession_TrimLocalInterfaceList";
                v36 = 1024;
                v37 = 323;
                v38 = 1024;
                v39 = v22;
                v40 = 2080;
                v41 = v12;
                _os_log_debug_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEBUG, " [%s] %s:%d InterfaceFilter found an carrier IPPort. Try to use it as first pdpIPPort. iFlags=(%02X)\tszIfName=%s", buf, 0x2Cu);
              }
            }

            v11 = _GCKSession_AddOneIPPortToInterfaceList(&v30, v8, &v29);
          }

          if (v29 >= 2)
          {
            break;
          }

          ++v9;
          v8 = (v8 + 40);
          v12 += 10;
          if (v9 >= *a2)
          {
            goto LABEL_40;
          }
        }

        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v24 = VRTraceErrorLogLevelToCSTR();
          v25 = *MEMORY[0x277CE5818];
          v26 = *MEMORY[0x277CE5818];
          if (*v13 == 1)
          {
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v33 = v24;
              v34 = 2080;
              v35 = "GCKSession_TrimLocalInterfaceList";
              v36 = 1024;
              v37 = 327;
              _os_log_impl(&dword_24E50C000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d InterfaceFilter got 2 or more interfaces already. skip the rest of the list.", buf, 0x1Cu);
            }
          }

          else if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            GCKSession_TrimLocalInterfaceList_cold_1();
          }
        }
      }

LABEL_40:
      if ((v29 - 3) > 0xFFFFFFFD)
      {
        if (v10)
        {
          goto LABEL_47;
        }

        goto LABEL_42;
      }

      GCKSession_TrimLocalInterfaceList_cold_2(v11 & 1, v10 & 1, &v31, buf);
    }

    else
    {
      GCKSession_TrimLocalInterfaceList_cold_3(&v31, buf);
    }

    v11 = v31;
    if (buf[0])
    {
      goto LABEL_47;
    }

LABEL_42:
    if ((v11 & 1) == 0)
    {
      FreeLocalInterfaceList();
      goto LABEL_48;
    }

LABEL_47:
    *a2 = v29;
    v27 = *a1;
    FreeLocalInterfaceList();
    *a1 = v30;
    goto LABEL_48;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    v5 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v33 = v3;
        v34 = 2080;
        v35 = "GCKSession_TrimLocalInterfaceList";
        v36 = 1024;
        v37 = 306;
        _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d InterfaceFilter not trimming interfaces for local gaming.", buf, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      GCKSession_TrimLocalInterfaceList_cold_4();
    }
  }

LABEL_48:
  v28 = *MEMORY[0x277D85DE8];
}

uint64_t _GCKSession_AddOneIPPortToInterfaceList(void **a1, __int128 *a2, int *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    _GCKSession_AddOneIPPortToInterfaceList_cold_7();
    goto LABEL_23;
  }

  if (!a3)
  {
    _GCKSession_AddOneIPPortToInterfaceList_cold_6();
    goto LABEL_23;
  }

  if (!a1)
  {
    _GCKSession_AddOneIPPortToInterfaceList_cold_5();
    goto LABEL_23;
  }

  if (*a3 >= 2)
  {
    _GCKSession_AddOneIPPortToInterfaceList_cold_4();
    goto LABEL_23;
  }

  v6 = *a3 + 1;
  v7 = *a1;
  if (!*a1)
  {
    v8 = malloc_type_calloc(1uLL, 0x28uLL, 0x100004053E81896uLL);
    v9 = v8;
    if (v8)
    {
      goto LABEL_9;
    }

    _GCKSession_AddOneIPPortToInterfaceList_cold_3();
LABEL_23:
    result = v18;
    goto LABEL_16;
  }

  v8 = malloc_type_realloc(v7, (40 * v6), 0x100004053E81896uLL);
  if (!v8)
  {
    _GCKSession_AddOneIPPortToInterfaceList_cold_1();
    goto LABEL_23;
  }

  v9 = v8 + 40;
LABEL_9:
  v10 = *a2;
  v11 = a2[1];
  *(v9 + 4) = *(a2 + 4);
  *v9 = v10;
  *(v9 + 1) = v11;
  *a3 = v6;
  *a1 = v8;
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x277CE5818];
    v14 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *a2;
        v18 = 136316162;
        v19 = v12;
        v20 = 2080;
        v21 = "_GCKSession_AddOneIPPortToInterfaceList";
        v22 = 1024;
        v23 = 297;
        v24 = 1024;
        v25 = v15;
        v26 = 2080;
        v27 = a2 + 4;
        _os_log_impl(&dword_24E50C000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Successfully added an IPPort to ipPortList. Added IPPort:\tflag(%02X)\tszIfName=%s", &v18, 0x2Cu);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      _GCKSession_AddOneIPPortToInterfaceList_cold_2(v12, a2);
    }
  }

  result = 1;
LABEL_16:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t UpdateRTO(unsigned int *a1, int a2)
{
  if (a2 >= 1)
  {
    v3 = *a1;
    v2 = a1[1];
    v4 = *a1 + 1;
    *a1 = v4;
    if (v3 <= 0x3F)
    {
      v5 = v2 + a2;
      v6 = (v2 + a2) / v4;
      v7 = a2 - v6;
      if ((a2 - v6) < 0)
      {
        v7 = v6 - a2;
      }

      v8 = a1[2] - (a1[2] >> 5) + v7;
      a1[1] = v5;
      a1[2] = v8;
      goto LABEL_11;
    }

    v9 = a2 - (v2 >> 6);
    if (v9 >= 0)
    {
      v10 = a2 - (v2 >> 6);
    }

    else
    {
      v10 = (v2 >> 6) - a2;
    }

    v11 = a1[2];
    if (v10 < (3 * v11) >> 5)
    {
      v12 = v9 + v2;
      v13 = v10 - (v11 >> 5) + v11;
      a1[1] = v12;
      a1[2] = v13;
      v6 = (v13 >> 5) + (v12 >> 6);
LABEL_11:
      a1[3] = v6;
    }
  }

  return a1[3];
}

uint64_t GCKSessionCreate(int a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if ((GCKSessionCreate_s_fInit & 1) == 0)
  {
    GCKSessionCreate_s_fInit = 1;
    if (a1 == 1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v4 = VRTraceErrorLogLevelToCSTR();
        v2 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          buf[0] = 136315650;
          *&buf[1] = v4;
          v11 = 2080;
          v12 = "GCKSessionCreate";
          v13 = 1024;
          v14 = 6416;
          v3 = " [%s] %s:%d localscopelaunch";
          goto LABEL_10;
        }
      }
    }

    else if (!a1 && VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v1 = VRTraceErrorLogLevelToCSTR();
      v2 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        buf[0] = 136315650;
        *&buf[1] = v1;
        v11 = 2080;
        v12 = "GCKSessionCreate";
        v13 = 1024;
        v14 = 6413;
        v3 = " [%s] %s:%d globalscopelaunch";
LABEL_10:
        _os_log_impl(&dword_24E50C000, v2, OS_LOG_TYPE_DEFAULT, v3, buf, 0x1Cu);
      }
    }
  }

  v5 = malloc_type_calloc(1uLL, 0x2138uLL, 0x10E004096A975A5uLL);
  if (v5)
  {
    v6 = v5;
    v7 = malloc_type_calloc(1uLL, 0x138uLL, 0x10A00406F2D52ADuLL);
    v6[12] = v7;
    if (v7)
    {
      CreateHandle();
    }

    free(v6);
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        GCKSessionCreate_cold_5();
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      GCKSessionCreate_cold_6();
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return 2149187587;
}

void GCKSessionRelease()
{
  v8 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      buf[0] = 136315650;
      *&buf[1] = v0;
      v4 = 2080;
      v5 = "GCKSessionRelease";
      v6 = 1024;
      v7 = 6571;
      _os_log_impl(&dword_24E50C000, v1, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d gcksession-released", buf, 0x1Cu);
    }
  }

  v2 = xmmword_24E5907B0;
  DWORD2(v2) = 50000;
  CheckInHandleDebug();
}

void gckSessionRecvProc()
{
  v1 = *MEMORY[0x277D85DE8];
  memset(v0, 170, sizeof(v0));
  pthread_setname_np("com.apple.gamekitservices.gcksession.recvproc");
  CheckInHandleDebug();
}

void gckSessionSendProc()
{
  v1 = *MEMORY[0x277D85DE8];
  v0.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v0.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  pthread_setname_np("com.apple.gamekitservices.gcksession.sendproc");
  CheckInHandleDebug();
}

uint64_t gckSessionDisposeAllConnections(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  pthread_rwlock_wrlock((a1 + 7904));
  pthread_mutex_lock((a1 + 7800));
  memcpy(__dst, (a1 + 116), sizeof(__dst));
  __dst[71] = 0;
  ++LOWORD(__dst[68]);
  __dst[69] = 1;
  gckSessionSendLSA(a1, 1, __dst, -1, 1);
  *(a1 + 400) = 0;
  *(a1 + 388) = __dst[68];
  gckSessionFindShortestPath(*(a1 + 112), (a1 + 116));
  gckSessionCleanupNodes(a1, -1, 0);
  pthread_mutex_unlock((a1 + 7800));
  result = pthread_rwlock_unlock((a1 + 7904));
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t BWE_CloseObject(uint64_t result)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(result + 736) != 0xFFFFFFFFLL)
  {
    v1 = result;
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v2 = VRTraceErrorLogLevelToCSTR();
      v3 = *MEMORY[0x277CE5818];
      v4 = *MEMORY[0x277CE5818];
      if (*MEMORY[0x277CE5808] == 1)
      {
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v5 = *(v1 + 736);
          v6 = *(v1 + 116);
          v7 = *(v1 + 744);
          v13 = 136316418;
          v14 = v2;
          v15 = 2080;
          v16 = "BWE_CloseObject";
          v17 = 1024;
          v18 = 8800;
          v19 = 2048;
          v20 = v5;
          v21 = 1024;
          v22 = v6;
          v23 = 1024;
          v24 = v7;
          _os_log_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d **Deleted BWE %p for node %d (wProbeSeqId %d)", &v13, 0x32u);
        }
      }

      else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v10 = *(v1 + 736);
        v11 = *(v1 + 116);
        v12 = *(v1 + 744);
        v13 = 136316418;
        v14 = v2;
        v15 = 2080;
        v16 = "BWE_CloseObject";
        v17 = 1024;
        v18 = 8800;
        v19 = 2048;
        v20 = v10;
        v21 = 1024;
        v22 = v11;
        v23 = 1024;
        v24 = v12;
        _os_log_debug_impl(&dword_24E50C000, v3, OS_LOG_TYPE_DEBUG, " [%s] %s:%d **Deleted BWE %p for node %d (wProbeSeqId %d)", &v13, 0x32u);
      }
    }

    v8 = *(v1 + 736);
    GCK_BWE_CloseHandle();
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t GCKSessionSetLocalName(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *MEMORY[0x277D85DE8];
  if (a2 && (a3 & 0x80000000) == 0)
  {
    CheckInHandleDebug();
  }

  v3 = *MEMORY[0x277D85DE8];
  return 2149187586;
}

uint64_t gckSessionAddNode(uint64_t a1, int a2, int a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 400);
  if (v3 <= 15)
  {
    if (v3 < 1)
    {
      LODWORD(v7) = 0;
    }

    else
    {
      v7 = 0;
      v8 = (a1 + 412);
      while (*(v8 - 2) != a2)
      {
        ++v7;
        v8 += 3;
        if (v3 == v7)
        {
          goto LABEL_13;
        }
      }

      *v8 |= a3;
    }

    if (v7 == v3)
    {
LABEL_13:
      v4 = 0;
      v9 = (a1 + 12 * v3);
      v9[101] = a2;
      v9[102] = -1;
      v9[103] = a3;
      *(a1 + 400) = v3 + 1;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 2149187603;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315650;
        v13 = v5;
        v14 = 2080;
        v15 = "gckSessionAddNode";
        v16 = 1024;
        v17 = 1021;
        _os_log_impl(&dword_24E50C000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Max # of nodes reached", &v12, 0x1Cu);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t gckSessionLocalClientProc(uint64_t *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  pthread_setname_np("com.apple.gamekitservices.gcksession.localclientproc");
  if (a1)
  {
    v2 = *(a1 + 2);
    v3 = a1[2];
    v4 = a1[3];
    v5 = *(a1 + 8);
    v9 = *a1;
    v8 = a1[5];
    CheckInHandleDebug();
  }

  v6 = *MEMORY[0x277D85DE8];
  return -2145779711;
}

uint64_t gckSessionDeleteNode(uint64_t a1, int a2, int a3)
{
  v28 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315906;
      v21 = v6;
      v22 = 2080;
      v23 = "gckSessionDeleteNode";
      v24 = 1024;
      v25 = 1229;
      v26 = 1024;
      v27 = a2;
      _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Deleting a node %08X", &v20, 0x22u);
    }
  }

  result = 2149187606;
  v9 = *(a1 + 400);
  if (v9 < 1)
  {
    LODWORD(v10) = 0;
  }

  else
  {
    v10 = 0;
    v11 = (a1 + 404);
    while (1)
    {
      v12 = *v11;
      v11 += 3;
      if (v12 == a2)
      {
        break;
      }

      if (v9 == ++v10)
      {
        goto LABEL_24;
      }
    }
  }

  if (v10 != v9)
  {
    v13 = (a1 + 404 + 12 * v10);
    v14 = v13[1];
    memmove(v13, v13 + 3, 12 * (v9 + ~v10));
    --*(a1 + 400);
    if (v14 != -1 || a3 != 0)
    {
      ++*(a1 + 388);
      *(a1 + 392) = 1;
      v16 = *(a1 + 112);
      if (a3 && v16 > 0)
      {
        v17 = 0;
        v18 = a1;
        while (*(v18 + 116) != a2)
        {
          ++v17;
          v18 += 480;
          if (v16 == v17)
          {
            goto LABEL_22;
          }
        }

        memmove((v18 + 116), (v18 + 596), 480 * (~v17 + v16));
        LODWORD(v16) = *(a1 + 112) - 1;
        *(a1 + 112) = v16;
      }

LABEL_22:
      gckSessionFindShortestPath(v16, (a1 + 116));
    }

    result = 0;
  }

LABEL_24:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t gckSessionDisconnectNeighbor(uint64_t a1, int a2, int a3)
{
  v31 = *MEMORY[0x277D85DE8];
  pthread_rwlock_wrlock((a1 + 7904));
  pthread_mutex_lock((a1 + 7800));
  memcpy(__dst, (a1 + 116), sizeof(__dst));
  v6 = __dst[71];
  if (__dst[71] < 1)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v7 = 0;
    v8 = &__dst[72];
    while (1)
    {
      v9 = *v8;
      v8 += 3;
      if (v9 == a2)
      {
        break;
      }

      if (__dst[71] == ++v7)
      {
        goto LABEL_8;
      }
    }
  }

  if (v7 == __dst[71])
  {
    goto LABEL_8;
  }

  v17 = a1 + 12 * v7;
  v18 = (*(v17 + 412) & ~a3) == 0;
  *(v17 + 412) &= ~a3;
  if (v18)
  {
    v20 = &__dst[3 * v7 + 72];
    v21 = v20[1];
    memmove(v20, v20 + 3, 12 * (v6 + ~v7));
    --__dst[71];
    if (v21 == -1)
    {
      memcpy((a1 + 116), __dst, 0x1E0uLL);
      *(a1 + 392) = 0;
    }

    else
    {
      ++LOWORD(__dst[68]);
      __dst[69] = 1;
      gckSessionSendLSA(a1, 1, __dst, -1, 1);
      memcpy((a1 + 116), __dst, 0x1E0uLL);
      *(a1 + 392) = 0;
      gckSessionFindShortestPath(*(a1 + 112), (a1 + 116));
    }

LABEL_8:
    pthread_mutex_unlock((a1 + 7800));
    v10 = *(a1 + 7888);
    if (v10)
    {
      v11 = MEMORY[0x277CE5818];
      do
      {
        if (*(v10 + 116) == a2)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v12 = VRTraceErrorLogLevelToCSTR();
            v13 = *v11;
            if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
            {
              v14 = *(v10 + 116);
              *buf = 136315906;
              v23 = v12;
              v24 = 2080;
              v25 = "gckSessionDisconnectNeighbor";
              v26 = 1024;
              v27 = 3131;
              v28 = 1024;
              v29 = v14;
              _os_log_impl(&dword_24E50C000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d gckSessionDisconnectNeighbor closing (%d)", buf, 0x22u);
            }
          }

          *(v10 + 84) = 1;
        }

        v10 = *(v10 + 728);
      }

      while (v10);
    }

    result = pthread_rwlock_unlock((a1 + 7904));
    v16 = *MEMORY[0x277D85DE8];
    return result;
  }

  pthread_mutex_unlock((a1 + 7800));
  v19 = *MEMORY[0x277D85DE8];

  return pthread_rwlock_unlock((a1 + 7904));
}

uint64_t gckSessionSendDD(uint64_t a1, unsigned int a2, int a3)
{
  v39 = *MEMORY[0x277D85DE8];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27 = v6;
  v28 = v6;
  v26 = 0xAAAAAAAAAAAAAAAALL;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v9 = " back";
      *buf = 136316162;
      if (a3)
      {
        v9 = "";
      }

      v30 = v7;
      v31 = 2080;
      v32 = "gckSessionSendDD";
      v33 = 1024;
      v34 = 1718;
      v35 = 2080;
      v36 = v9;
      v37 = 1024;
      v38 = a2;
      _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Sending DD%s to [%08X]", buf, 0x2Cu);
    }
  }

  v10 = 2149187606;
  pthread_mutex_lock((a1 + 7800));
  v11 = *(a1 + 112);
  HIDWORD(v27) = v11;
  *&v28 = a1 + 116;
  v12 = *(a1 + 7888);
  if (!v12)
  {
LABEL_9:
    pthread_mutex_unlock((a1 + 7800));
    goto LABEL_10;
  }

  while (*(v12 + 116) != a2)
  {
    v12 = *(v12 + 728);
    if (!v12)
    {
      goto LABEL_9;
    }
  }

  if (!*(v12 + 88))
  {
    ++*(a1 + 388);
    *(a1 + 392) = 1;
  }

  TracePrintNodes(v11, a1 + 116);
  v15 = OSPFMakeDD(&v26, &v27, 0, *(a1 + 108), a2, *(v12 + 48));
  *(v12 + 88) = 1;
  pthread_mutex_unlock((a1 + 7800));
  if ((v15 & 0x80000000) != 0)
  {
    v10 = 2149187618;
    goto LABEL_10;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v30 = v16;
      v31 = 2080;
      v32 = "gckSessionSendDD";
      v33 = 1024;
      v34 = 1753;
      v35 = 1024;
      LODWORD(v36) = v15;
      _os_log_impl(&dword_24E50C000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Made DD of %d bytes", buf, 0x22u);
    }
  }

  if (!a3)
  {
    v10 = SendUDPPacketToParticipantChannelID(a1, v26, v15, a2, 0, -1, 0);
LABEL_26:
    free(v26);
    goto LABEL_10;
  }

  v18 = *(a1 + 7888);
  if (!v18)
  {
LABEL_21:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        gckSessionSendDD_cold_1();
      }
    }

    goto LABEL_26;
  }

  while (*(v18 + 116) != a2)
  {
    v18 = *(v18 + 728);
    if (!v18)
    {
      goto LABEL_21;
    }
  }

  pthread_mutex_lock((v18 + 664));
  v19 = *(v18 + 496);
  if (v19)
  {
    while (1)
    {
      v20 = v19;
      if (*v19 == 2)
      {
        break;
      }

      v19 = *(v19 + 64);
      if (!v19)
      {
        v21 = (v20 + 64);
        goto LABEL_32;
      }
    }

    *(v19 + 8) = xmmword_24E5907C0;
    *(v19 + 32) = 0x4082BFEB851EB852;
    v24 = *(v19 + 40);
    if (v24)
    {
      free(v24);
    }

    *(v20 + 40) = v26;
    *(v20 + 48) = v15;
    *(v20 + 52) = a2;
  }

  else
  {
    v21 = (v18 + 496);
LABEL_32:
    v22 = malloc_type_calloc(1uLL, 0x48uLL, 0x10200409EACE7F9uLL);
    *v22 = 2;
    *(v22 + 8) = xmmword_24E5907C0;
    v23 = v26;
    *(v22 + 4) = 0x4082BFEB851EB852;
    *(v22 + 5) = v23;
    *(v22 + 12) = v15;
    *(v22 + 13) = a2;
    *v21 = v22;
  }

  pthread_mutex_unlock((v18 + 664));
  v25 = *(a1 + 12);
  if (v25 != -1)
  {
    *(a1 + 12) = -1;
    close(v25);
  }

  v10 = 0;
LABEL_10:
  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

void GCKSessionPrepareConnectionWithRelayInfo()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  CheckInHandleDebug();
}

uint64_t gckSessionCreateSocketAndBind(__int128 *a1, int a2, int a3, int **a4)
{
  v66 = *MEMORY[0x277D85DE8];
  *&v8.sa_len = 0xAAAAAAAAAAAAAAAALL;
  *&v8.sa_data[6] = 0xAAAAAAAAAAAAAAAALL;
  v65[3] = v8;
  v65[4] = v8;
  v65[2] = v8;
  *(v65 + 14) = 0xAAAAAAAAAAAAAAAALL;
  v64 = v8;
  v65[0] = v8;
  v63 = v8;
  v39 = -1431655766;
  memset(v40, 170, 6);
  v62 = 0xAAAAAAAAAAAAAAAALL;
  v60 = v8;
  v61 = v8;
  *&v38.ai_addrlen = v8;
  *&v38.ai_addr = v8;
  *&v38.ai_flags = v8;
  v37 = 0xAAAAAAAAAAAAAAAALL;
  v58 = v8;
  v59 = v8;
  v56 = v8;
  v57 = v8;
  v54 = v8;
  v55 = v8;
  v52 = v8;
  v53 = v8;
  v9 = malloc_type_calloc(1uLL, 0x300uLL, 0x10200408D2C4DCCuLL);
  if (!v9)
  {
    v16 = 2149187587;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        gckSessionCreateSocketAndBind_cold_7();
      }
    }

    goto LABEL_63;
  }

  v10 = v9;
  *(v9 + 29) = a2;
  *(v9 + 25) = a3;
  *(v9 + 108) = -1;
  *(v9 + 102) = 0;
  v11 = *a1;
  v12 = a1[1];
  *(v9 + 444) = *(a1 + 4);
  *(v9 + 412) = v11;
  *(v9 + 428) = v12;
  v13 = *a1;
  if (*a1)
  {
    ai_family = 30;
  }

  else
  {
    ai_family = 2;
  }

  memset(&v38.ai_socktype, 0, 40);
  v38.ai_flags = 5;
  v38.ai_family = ai_family;
  v38.ai_socktype = 2;
  if (v13)
  {
    if (*(a1 + 20) != *MEMORY[0x277D85EE8] || *(a1 + 28) != *(MEMORY[0x277D85EE8] + 8))
    {
      goto LABEL_7;
    }

LABEL_16:
    v15 = 0;
    goto LABEL_17;
  }

  if (!*(a1 + 5))
  {
    goto LABEL_16;
  }

LABEL_7:
  v15 = IPToString();
LABEL_17:
  __sprintf_chk(v40, 0, 6uLL, "%u", *(a1 + 18));
  v18 = getaddrinfo(v15, v40, &v38, &v37);
  if (v18)
  {
    v16 = v18 | 0xB01A0000;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        gckSessionCreateSocketAndBind_cold_1();
      }
    }

LABEL_62:
    free(v10);
    goto LABEL_63;
  }

  v19 = v37;
  if (v37)
  {
    v20 = v37;
    while (v20->ai_family != ai_family)
    {
      v20 = v20->ai_next;
      if (!v20)
      {
        ai_family = v37->ai_family;
        goto LABEL_30;
      }
    }

    v19 = v20;
LABEL_30:
    v10[18] = -1;
    v21 = socket(ai_family, v19->ai_socktype, v19->ai_protocol);
    *v10 = v21;
    if (v21 == -1)
    {
      v16 = *__error() | 0xC00F0000;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          gckSessionCreateSocketAndBind_cold_5();
        }
      }

      freeaddrinfo(v37);
      goto LABEL_62;
    }

    v36 = 1;
    if (v13)
    {
      setsockopt(v21, 41, 27, &v36, 4u);
      if (*(a1 + 1))
      {
        *buf = 1;
        setsockopt(*v10, 0xFFFF, 4356, buf, 4u);
      }

      v22 = *v10;
      v23 = 41;
      v24 = 61;
    }

    else
    {
      *buf = if_nametoindex(a1 + 4);
      setsockopt(*v10, 0, 25, buf, 4u);
      setsockopt(*v10, 0, 7, &v36, 4u);
      v22 = *v10;
      v23 = 0;
      v24 = 20;
    }

    setsockopt(v22, v23, v24, &v36, 4u);
    v35 = 1;
    setsockopt(*v10, 0xFFFF, 4130, &v35, 4u);
    v34 = 500;
    setsockopt(*v10, 0xFFFF, 4230, &v34, 4u);
    ai_addr = v19->ai_addr;
    v26 = 16402;
    do
    {
      *ai_addr->sa_data = bswap32(v26) >> 16;
      if (!bind(*v10, v19->ai_addr, v19->ai_addrlen))
      {
        freeaddrinfo(v37);
        goto LABEL_48;
      }

      --v26;
    }

    while (v26 >= 0x4000u);
    *ai_addr->sa_data = 0;
    v27 = bind(*v10, v19->ai_addr, v19->ai_addrlen);
    freeaddrinfo(v37);
    if (v27)
    {
      v16 = *__error() | 0xC00F0000;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          gckSessionCreateSocketAndBind_cold_2();
        }
      }

LABEL_61:
      close(*v10);
      goto LABEL_62;
    }

LABEL_48:
    v39 = 128;
    if (getsockname(*v10, &v52, &v39) == -1)
    {
      v16 = *__error() | 0xC01A0000;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          gckSessionCreateSocketAndBind_cold_4();
        }
      }

      goto LABEL_61;
    }

    SAToIPPORT();
    *(v10 + 224) = WORD2(v62);
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v28 = VRTraceErrorLogLevelToCSTR();
      v29 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v30 = IPPORTToStringWithSize();
        v31 = *v10;
        *buf = 136316674;
        *&buf[4] = v28;
        *&buf[12] = 2080;
        *&buf[14] = "gckSessionCreateSocketAndBind";
        v42 = 1024;
        v43 = 982;
        v44 = 1024;
        v45 = a2;
        v46 = 2080;
        v47 = v30;
        v48 = 2080;
        v49 = v10 + 104;
        v50 = 1024;
        v51 = v31;
        _os_log_impl(&dword_24E50C000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d For remoteID[%08X]: Start listening on %s(%s) sock %d\n", buf, 0x3Cu);
      }
    }

    *(v10 + 50) = 0;
    memset(buf, 170, 16);
    if (!pthread_mutexattr_init(buf))
    {
      pthread_mutexattr_settype(buf, 2);
      pthread_mutex_init((v10 + 166), buf);
      pthread_mutexattr_destroy(buf);
      v16 = 0;
      *(v10 + 92) = 0xFFFFFFFFLL;
      *(v10 + 372) = 0;
      *(v10 + 187) = 0;
      *a4 = v10;
      goto LABEL_63;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        gckSessionCreateSocketAndBind_cold_3();
      }
    }

    close(*v10);
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      gckSessionCreateSocketAndBind_cold_6();
    }
  }

  free(v10);
  v16 = 2149187588;
LABEL_63:
  v32 = *MEMORY[0x277D85DE8];
  return v16;
}

unsigned __int16 *GCKGetNAT64Prefix(uint64_t a1, uint64_t a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8496);
  if (v4)
  {
    v5 = *a2 & 1;
    do
    {
      if ((*v4 & 1) == v5)
      {
        if (v5)
        {
          if (*(v4 + 10) == *(a2 + 20) && *(v4 + 14) == *(a2 + 28))
          {
LABEL_12:
            if (v4[18] == *(a2 + 36))
            {
              goto LABEL_32;
            }
          }
        }

        else if (*(v4 + 5) == *(a2 + 20))
        {
          goto LABEL_12;
        }
      }

      v4 = *(v4 + 7);
      *(a1 + 8496) = v4;
    }

    while (v4);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x277CE5818];
    v9 = *MEMORY[0x277CE5818];
    if (*MEMORY[0x277CE5808] == 1)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v26 = v7;
        v27 = 2080;
        v28 = "GCKGetNAT64Prefix";
        v29 = 1024;
        v30 = 447;
        v31 = 2080;
        v32 = (a2 + 4);
        v33 = 2048;
        v34 = micro();
        _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKGetNAT64Prefix: start NAT64 prefix resolution for %s at %f", buf, 0x30u);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      GCKGetNAT64Prefix_cold_1();
    }
  }

  v4 = malloc_type_calloc(1uLL, 0x40uLL, 0x10200406CABA15FuLL);
  *(a1 + 8496) = v4;
  v10 = *(a2 + 32);
  v11 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 1) = v11;
  *(v4 + 4) = v10;
  v12 = (a2 + 4);
  if_nametoindex(v12);
  v13 = nw_nat64_copy_prefixes();
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v13 < 1)
  {
    if (ErrorLogLevelForModule >= 8)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x277CE5818];
      v21 = *MEMORY[0x277CE5818];
      if (*MEMORY[0x277CE5808] == 1)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = micro();
          *buf = 136316162;
          v26 = v19;
          v27 = 2080;
          v28 = "GCKGetNAT64Prefix";
          v29 = 1024;
          v30 = 458;
          v31 = 2080;
          v32 = v12;
          v33 = 2048;
          v34 = v22;
          _os_log_impl(&dword_24E50C000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKGetNAT64Prefix: no NAT64 prefix discovered for %s at %f", buf, 0x30u);
        }
      }

      else if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        GCKGetNAT64Prefix_cold_2();
      }
    }
  }

  else
  {
    if (ErrorLogLevelForModule >= 8)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x277CE5818];
      v17 = *MEMORY[0x277CE5818];
      if (*MEMORY[0x277CE5808] == 1)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = micro();
          *buf = 136316162;
          v26 = v15;
          v27 = 2080;
          v28 = "GCKGetNAT64Prefix";
          v29 = 1024;
          v30 = 454;
          v31 = 2080;
          v32 = v12;
          v33 = 2048;
          v34 = v18;
          _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKGetNAT64Prefix: NAT64 prefix resolved for %s at %f", buf, 0x30u);
        }
      }

      else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        GCKGetNAT64Prefix_cold_3();
      }
    }

    *(v4 + 20) = MEMORY[0];
    free(0);
  }

LABEL_32:
  v23 = *MEMORY[0x277D85DE8];
  return v4 + 20;
}

uint64_t gckSessionChangeState(uint64_t a1, int a2, int a3)
{
  pthread_rwlock_rdlock((a1 + 7904));
  for (i = *(a1 + 7888); i; i = *(i + 728))
  {
    if (*(i + 116) == a2)
    {
      pthread_mutex_lock((i + 664));
      gckSessionChangeStateCList(a1, i, a3);
      pthread_mutex_unlock((i + 664));
    }
  }

  return pthread_rwlock_unlock((a1 + 7904));
}

uint64_t xdr_chanstat_node(XDR *a1, uint64_t a2)
{
  if (xdr_u_int32_t(a1, a2) && xdr_u_int32_t(a1, (a2 + 4)) && xdr_u_int16_t(a1, (a2 + 8)) && xdr_u_int16_t(a1, (a2 + 10)) && xdr_u_int32_t(a1, (a2 + 12)) && xdr_u_int64_t(a1, (a2 + 16)) && xdr_u_int64_t(a1, (a2 + 24)) && xdr_u_int32_t(a1, (a2 + 32)) && xdr_u_int32_t(a1, (a2 + 36)) && xdr_float(a1, (a2 + 40)) && xdr_float(a1, (a2 + 44)) && xdr_float(a1, (a2 + 48)) && xdr_float(a1, (a2 + 52)) && xdr_float(a1, (a2 + 56)) && xdr_u_int32_t(a1, (a2 + 64)) && xdr_u_int32_t(a1, (a2 + 68)) && xdr_u_int32_t(a1, (a2 + 72)))
  {
    v4 = (a2 + 76);
    v5 = 16;
    while (xdr_u_int32_t(a1, v4))
    {
      ++v4;
      if (!--v5)
      {

        return xdr_pointer(a1, (a2 + 144), 0x98u, xdr_chanstat_node);
      }
    }
  }

  return 0;
}

uint64_t GCKSessionPrepareRetryICE(uint64_t a1, int a2)
{
  v77 = *MEMORY[0x277D85DE8];
  v65 = 0;
  v66 = 0xAAAAAAAAAAAAAAAALL;
  v4 = *(a1 + 104);
  LocalInterfaceListWithOptions = GetLocalInterfaceListWithOptions();
  if (!LocalInterfaceListWithOptions)
  {
    v49 = 2149187606;
    FreeLocalInterfaceList();
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        GCKSessionPrepareRetryICE_cold_1();
      }
    }

    v50 = 0;
    goto LABEL_79;
  }

  v6 = LocalInterfaceListWithOptions;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v68 = v7;
      v69 = 2080;
      v70 = "GCKSessionPrepareRetryICE";
      v71 = 1024;
      v72 = 2001;
      v73 = 1024;
      v74 = a2;
      v75 = 1024;
      v76 = v6;
      _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d For remoteID[%08X]: %d interfaces found.\n", buf, 0x28u);
    }
  }

  if (v6 < 1)
  {
    v61 = 0;
    goto LABEL_72;
  }

  v9 = 0;
  v61 = 0;
  v10 = (a1 + 7888);
  v62 = v6;
  v11 = 1;
  v63 = a2;
LABEL_7:
  v60 = v11;
  do
  {
    v12 = if_nametoindex((v66 + 40 * v9 + 4));
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v68 = v13;
        v69 = 2080;
        v70 = "GCKSessionPrepareRetryICE";
        v71 = 1024;
        v72 = 2006;
        v73 = 1024;
        v74 = v9;
        v75 = 1024;
        v76 = v12;
        _os_log_impl(&dword_24E50C000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d check %d iIFIndex %d", buf, 0x28u);
      }
    }

    v64 = 0;
    pthread_rwlock_wrlock((a1 + 7904));
    v15 = *v10;
    v65 = v15;
    if (!v15)
    {
      pthread_rwlock_unlock((a1 + 7904));
      v65 = 0;
      a2 = v63;
      goto LABEL_48;
    }

    v16 = 0;
    v17 = 0;
    a2 = v63;
    do
    {
      if (v15[26] != v12 || v15[29] != a2)
      {
        goto LABEL_23;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v20 = v15[25];
          *buf = 136316162;
          v68 = v18;
          v69 = 2080;
          v70 = "GCKSessionPrepareRetryICE";
          v71 = 1024;
          v72 = 2019;
          v73 = 1024;
          v74 = v20;
          v75 = 1024;
          v76 = v12;
          _os_log_impl(&dword_24E50C000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d found channel %d iIFIndex %d", buf, 0x28u);
        }
      }

      v21 = v15[27];
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if ((v21 & 0x80000000) == 0)
      {
        if (ErrorLogLevelForModule >= 7)
        {
          v23 = VRTraceErrorLogLevelToCSTR();
          v24 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v25 = v15[27];
            *buf = 136316162;
            v68 = v23;
            v69 = 2080;
            v70 = "GCKSessionPrepareRetryICE";
            v71 = 1024;
            v72 = 2022;
            v73 = 1024;
            v74 = v25;
            v75 = 1024;
            v76 = v12;
            _os_log_impl(&dword_24E50C000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d channel priority %d iIFIndex %d", buf, 0x28u);
          }
        }

        v17 = 1;
        a2 = v63;
LABEL_23:
        v10 = (v15 + 182);
        goto LABEL_24;
      }

      if (ErrorLogLevelForModule >= 7)
      {
        v26 = VRTraceErrorLogLevelToCSTR();
        v27 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v28 = v15[28];
          *buf = 136316162;
          v68 = v26;
          v69 = 2080;
          v70 = "GCKSessionPrepareRetryICE";
          v71 = 1024;
          v72 = 2025;
          v73 = 1024;
          v74 = v28;
          v75 = 1024;
          v76 = v12;
          _os_log_impl(&dword_24E50C000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d remove original %d iIFIndex %d", buf, 0x28u);
        }
      }

      *v10 = *(v15 + 91);
      v16 = v65;
      *(v65 + 91) = v64;
      v64 = v16;
      a2 = v63;
LABEL_24:
      v15 = *v10;
      v65 = v15;
    }

    while (v15);
    pthread_rwlock_unlock((a1 + 7904));
    if (v16)
    {
      do
      {
        v29 = v16;
        v64 = *(v16 + 91);
        if (*v16 != -1)
        {
          close(*v16);
          *v16 = -1;
        }

        v30 = v16[18];
        if (v30 != -1)
        {
          close(v30);
          v16[18] = -1;
        }

        v31 = *(a1 + 80);
        v32 = v16[29];
        ICERemoveOneInterface();
        v33 = &v64;
        do
        {
          v34 = v33;
          v35 = *v33;
          v33 = (*v33 + 182);
          if (v35)
          {
            v36 = v35 == v16;
          }

          else
          {
            v36 = 1;
          }
        }

        while (!v36);
        if (v35)
        {
          *v34 = *(v35 + 91);
          *(v35 + 91) = *(a1 + 7896);
          *(a1 + 7896) = v35;
        }

        v16 = v64;
      }

      while (v64);
    }

    else
    {
      v29 = 0;
    }

    v65 = v29;
    v10 = (a1 + 7888);
    if (!v17)
    {
LABEL_48:
      if ((gckSessionCreateSocketAndBind((v66 + 40 * v9), a2, *(a1 + 88), &v65) & 0x80000000) != 0)
      {
        goto LABEL_54;
      }

      v37 = v65;
      *(v65 + 49) = 0x404DFEB851EB851FLL;
      *(v37 + 48) = *(a1 + 24);
      v37[26] = v12;
      v38 = *(a1 + 80);
      v39 = ICEAddOneInterface();
      v40 = VRTraceGetErrorLogLevelForModule();
      if (v39 < 0)
      {
        if (v40 >= 3)
        {
          v41 = VRTraceErrorLogLevelToCSTR();
          v42 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v68 = v41;
            v69 = 2080;
            v70 = "GCKSessionPrepareRetryICE";
            v71 = 1024;
            v72 = 2059;
            v73 = 1024;
            v74 = v63;
            v75 = 1024;
            v76 = 6;
            _os_log_error_impl(&dword_24E50C000, v42, OS_LOG_TYPE_ERROR, " [%s] %s:%d GCKSessionPrepareRetryICE: FAILURE adding interface for remoteID[%08X]: proto %d", buf, 0x28u);
          }
        }

        close(*v37);
        freeOptionsList(v37 + 64);
        freeOptionsList(v37 + 65);
        pthread_mutex_destroy((v37 + 166));
        BWE_CloseObject(v37);
        free(v37);
        a2 = v63;
        goto LABEL_54;
      }

      if (v40 >= 7)
      {
        v43 = VRTraceErrorLogLevelToCSTR();
        v44 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v68 = v43;
          v69 = 2080;
          v70 = "GCKSessionPrepareRetryICE";
          v71 = 1024;
          v72 = 2069;
          v73 = 1024;
          v74 = v63;
          v75 = 1024;
          v76 = 6;
          _os_log_impl(&dword_24E50C000, v44, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionPrepareRetryICE: SUCCESS adding interface for remoteID[%08X]: proto %d", buf, 0x28u);
        }
      }

      *(v37 + 34) = 0u;
      *(v37 + 284) = 1;
      *(v37 + 309) = 0;
      *(v37 + 570) = 0u;
      *(v37 + 586) = 0u;
      *(v37 + 602) = 0u;
      pthread_rwlock_wrlock((a1 + 7904));
      v45 = v10;
      do
      {
        v46 = v45;
        v47 = *v45;
        v45 = (*v45 + 182);
      }

      while (v47);
      *v46 = v37;
      pthread_rwlock_unlock((a1 + 7904));
      v11 = 0;
      ++*(a1 + 88);
      ++v61;
      ++v9;
      a2 = v63;
      if (v9 == v62)
      {
LABEL_64:
        pthread_rwlock_rdlock((a1 + 7904));
        v48 = *(a1 + 12);
        if (v48 != -1)
        {
          *(a1 + 12) = -1;
          close(v48);
        }

        pthread_rwlock_unlock((a1 + 7904));
        goto LABEL_72;
      }

      goto LABEL_7;
    }

LABEL_54:
    ++v9;
  }

  while (v9 != v62);
  if ((v60 & 1) == 0)
  {
    goto LABEL_64;
  }

LABEL_72:
  FreeLocalInterfaceList();
  v50 = v61;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v51 = VRTraceErrorLogLevelToCSTR();
    v52 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v68 = v51;
      v69 = 2080;
      v70 = "GCKSessionPrepareRetryICE";
      v71 = 1024;
      v72 = 2112;
      v73 = 1024;
      v74 = a2;
      v75 = 1024;
      v76 = v61;
      _os_log_impl(&dword_24E50C000, v52, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d For remoteID[%08X]: %d valid interfaces found.\n", buf, 0x28u);
    }
  }

  if (!v61)
  {
    v49 = 2149187606;
LABEL_79:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v56 = VRTraceErrorLogLevelToCSTR();
      v57 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v68 = v56;
        v69 = 2080;
        v70 = "GCKSessionPrepareRetryICE";
        v71 = 1024;
        v72 = 2130;
        v73 = 1024;
        v74 = a2;
        v75 = 1024;
        v76 = v50;
        _os_log_error_impl(&dword_24E50C000, v57, OS_LOG_TYPE_ERROR, " [%s] %s:%d remoteID[%08X]: %d valid interfaces found", buf, 0x28u);
      }
    }

    goto LABEL_82;
  }

  v53 = *(a1 + 80);
  v54 = *(a1 + 104);
  v55 = ICEGetCandidates();
  v49 = 0;
  if ((v55 & 0x80000000) != 0)
  {
    v49 = v55;
    goto LABEL_79;
  }

LABEL_82:
  v58 = *MEMORY[0x277D85DE8];
  return v49;
}

void GCKSessionSendDOOB(uint64_t a1, int a2, const UInt8 *a3, int a4, unsigned int a5, double a6)
{
  *bytes = __rev16(a5);
  Mutable = CFDataCreateMutable(0, 0);
  CFDataAppendBytes(Mutable, bytes, 2);
  if (a3 && a4)
  {
    CFDataAppendBytes(Mutable, a3, a4);
  }

  v12 = *(a1 + 96);
  if (*(a1 + 108) == a2)
  {
    v13 = 8;
  }

  else
  {
    v13 = 7;
  }

  BytePtr = CFDataGetBytePtr(Mutable);
  Length = CFDataGetLength(Mutable);
  if (a6 <= 0.0)
  {
    PostEventCallback(v12, a2, v13, BytePtr, Length, 1);
  }

  else
  {
    v16 = micro();
    WaitEventCallback(v12, a2, v13, BytePtr, Length, 1, v16 + a6);
  }

  CFRelease(Mutable);
}

uint64_t gckSessionChangeStateCList(uint64_t a1, uint64_t a2, int a3)
{
  v69 = *MEMORY[0x277D85DE8];
  v6 = 2149187628;
  v7 = *(a2 + 408);
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 != 1 && a3 != 2)
      {
        goto LABEL_95;
      }

      if (v7 == 1)
      {
        v8 = 2;
      }

      else
      {
        v8 = *(a2 + 408);
      }
    }

    else if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = *(a2 + 408);
    }

    goto LABEL_31;
  }

  if (a3 > 4)
  {
    if (a3 != 5 && a3 != 11)
    {
      goto LABEL_95;
    }

    v9 = *(a1 + 104);
    if (v9 == 1)
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_30;
      }

      v13 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      v55 = 136315650;
      v56 = v13;
      v57 = 2080;
      v58 = "gckSessionChangeStateCList";
      v59 = 1024;
      v60 = 2225;
      v12 = " [%s] %s:%d localscopeDisconnectedForced";
    }

    else
    {
      if (v9)
      {
        goto LABEL_30;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_30;
      }

      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x277CE5818];
      if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      v55 = 136315650;
      v56 = v10;
      v57 = 2080;
      v58 = "gckSessionChangeStateCList";
      v59 = 1024;
      v60 = 2221;
      v12 = " [%s] %s:%d globalscopeDisconnectedForced";
    }

    _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, v12, &v55, 0x1Cu);
LABEL_30:
    v8 = 4;
    goto LABEL_31;
  }

  if (a3 == 3)
  {
    if (v7 <= 3)
    {
      v8 = 3;
    }

    else
    {
      v8 = *(a2 + 408);
    }

LABEL_31:
    if (v7 != v8)
    {
      goto LABEL_32;
    }

    goto LABEL_95;
  }

  if (v7 <= 3 && v7 != 1)
  {
    v8 = 4;
LABEL_32:
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a2 + 116);
        v55 = 136316674;
        v56 = v14;
        v57 = 2080;
        v58 = "gckSessionChangeStateCList";
        v59 = 1024;
        v60 = 2232;
        v61 = 1024;
        v62 = v16;
        v63 = 1024;
        v64 = a3;
        v65 = 1024;
        v66 = v7;
        v67 = 1024;
        v68 = v8;
        _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%08X] State Change with event %d: %d -> %d", &v55, 0x34u);
      }
    }

    if (v8 != 4)
    {
      goto LABEL_94;
    }

    pthread_mutex_lock((a1 + 7800));
    if (a3 == 4)
    {
      v17 = *(a1 + 104);
      if (v17 != 1 && v7 == 3)
      {
        if (*(a2 + 400) != 0.0)
        {
          goto LABEL_63;
        }

        v18 = *(a1 + 400);
        if (v18 < 1)
        {
          LODWORD(v19) = 0;
        }

        else
        {
          v19 = 0;
          v20 = (a1 + 404);
          while (1)
          {
            v21 = *v20;
            v20 += 3;
            if (v21 == *(a2 + 116))
            {
              break;
            }

            if (v18 == ++v19)
            {
              goto LABEL_61;
            }
          }
        }

        if (v19 != v18)
        {
          v22 = a1 + 404 + 12 * v19;
          v24 = *(v22 + 4);
          v23 = (v22 + 4);
          if (v24 != -1)
          {
            *v23 = -1;
            gckSessionFindShortestPath(*(a1 + 112), (a1 + 116));
            v25 = *(a1 + 112);
            if (v25 >= 1)
            {
              v26 = (a2 + 116);
              v27 = (a1 + 120);
              while (*(v27 - 1) != *(a2 + 116))
              {
                v27 += 120;
                if (!--v25)
                {
                  goto LABEL_61;
                }
              }

              if (*v27 != -1)
              {
                *(a2 + 400) = micro();
                if (VRTraceGetErrorLogLevelForModule() >= 7)
                {
                  v28 = VRTraceErrorLogLevelToCSTR();
                  v29 = *MEMORY[0x277CE5818];
                  if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                  {
                    v30 = *v26;
                    v55 = 136315906;
                    v56 = v28;
                    v57 = 2080;
                    v58 = "gckSessionChangeStateCList";
                    v59 = 1024;
                    v60 = 2281;
                    v61 = 1024;
                    v62 = v30;
                    _os_log_impl(&dword_24E50C000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ====== remain connected to peer (%08X) =====", &v55, 0x22u);
                  }
                }

                gckSessionSendLSA(a1, *(a1 + 112), (a1 + 116), *v26, 0);
                gckSessionCleanupNodes(a1, -1, 0);
                if (VRTraceGetErrorLogLevelForModule() >= 7)
                {
                  v31 = VRTraceErrorLogLevelToCSTR();
                  v32 = *MEMORY[0x277CE5818];
                  if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
                  {
                    v33 = *v26;
                    v55 = 136315906;
                    v56 = v31;
                    v57 = 2080;
                    v58 = "gckSessionChangeStateCList";
                    v59 = 1024;
                    v60 = 2286;
                    v61 = 1024;
                    v62 = v33;
                    _os_log_impl(&dword_24E50C000, v32, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ====== async validate viability (%08X) =====", &v55, 0x22u);
                  }
                }

                GCKSessionSendDOOB(a1, *v26, 0, 0, 6u, 10.0);
                GCKSessionSendDOOB(a1, *(a1 + 108), (a2 + 116), 4, 8u, 17.0);
                v8 = 3;
LABEL_93:
                pthread_mutex_unlock((a1 + 7800));
LABEL_94:
                v6 = 0;
                *(a2 + 408) = v8;
                goto LABEL_95;
              }
            }
          }
        }
      }
    }

LABEL_61:
    if (a3 != 4)
    {
      goto LABEL_72;
    }

    v17 = *(a1 + 104);
LABEL_63:
    if (v17 == 1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v37 = VRTraceErrorLogLevelToCSTR();
        v35 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v55 = 136315650;
          v56 = v37;
          v57 = 2080;
          v58 = "gckSessionChangeStateCList";
          v59 = 1024;
          v60 = 2301;
          v36 = " [%s] %s:%d localscopeDisconnectedTimeout";
          goto LABEL_71;
        }
      }
    }

    else if (!v17 && VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v34 = VRTraceErrorLogLevelToCSTR();
      v35 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v55 = 136315650;
        v56 = v34;
        v57 = 2080;
        v58 = "gckSessionChangeStateCList";
        v59 = 1024;
        v60 = 2297;
        v36 = " [%s] %s:%d globalscopeDisconnectedTimeout";
LABEL_71:
        _os_log_impl(&dword_24E50C000, v35, OS_LOG_TYPE_DEFAULT, v36, &v55, 0x1Cu);
      }
    }

LABEL_72:
    if (VRTraceGetErrorLogLevelForModule() > 6)
    {
      v38 = VRTraceErrorLogLevelToCSTR();
      v39 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v40 = *(a2 + 116);
        v55 = 136315906;
        v56 = v38;
        v57 = 2080;
        v58 = "gckSessionChangeStateCList";
        v59 = 1024;
        v60 = 2306;
        v61 = 1024;
        v62 = v40;
        _os_log_impl(&dword_24E50C000, v39, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ====== disconnected from a peer (%08X) =====", &v55, 0x22u);
      }
    }

    if (!*(a1 + 48) && !*(a1 + 104))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v41 = VRTraceErrorLogLevelToCSTR();
        v42 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v43 = *(a2 + 116);
          v55 = 136315906;
          v56 = v41;
          v57 = 2080;
          v58 = "gckSessionChangeStateCList";
          v59 = 1024;
          v60 = 2308;
          v61 = 1024;
          v62 = v43;
          _os_log_impl(&dword_24E50C000, v42, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d XX: STOP ICE check with peer %08X", &v55, 0x22u);
        }
      }

      v44 = *(a1 + 72);
      v45 = *(a2 + 116);
      ICEStopConnectivityCheck();
      v46 = *(a1 + 80);
      v47 = *(a2 + 116);
      ICEStopConnectivityCheck();
    }

    v48 = a3 == 11 || a3 == 4;
    v49 = gckSessionDeleteNode(a1, *(a2 + 116), a3 == 11);
    gckSessionSendLSA(a1, *(a1 + 112), (a1 + 116), *(a2 + 116), 0);
    gckSessionCleanupNodes(a1, *(a2 + 116), v48);
    v8 = 4;
    if (a3 == 4 && v49 == -2145779690)
    {
      v50 = *(a1 + 112);
      if (v50 >= 1)
      {
        v51 = v50 - 1;
        v52 = a1;
        while (*(v52 + 116) != *(a2 + 116))
        {
          v52 += 480;
          --v51;
          if (!--v50)
          {
            goto LABEL_92;
          }
        }

        memmove((v52 + 116), (v52 + 596), 480 * v51);
        --*(a1 + 112);
LABEL_92:
        v8 = 4;
      }
    }

    goto LABEL_93;
  }

LABEL_95:
  v53 = *MEMORY[0x277D85DE8];
  return v6;
}

void gckHandleRetryICEResponse()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  CheckInHandleDebug();
}

void gckHandleRetryICERequest()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  CheckInHandleDebug();
}

void gckHandleRetryICEEnforced()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  CheckInHandleDebug();
}

void gckHandleRetryICEForce()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  CheckInHandleDebug();
}

uint64_t GCKSessionReceiveDOOB(uint64_t a1, int a2, unsigned __int16 *a3, int a4)
{
  v96 = *MEMORY[0x277D85DE8];
  v4 = 2149187618;
  if (!a3)
  {
    goto LABEL_80;
  }

  if (a4 < 2)
  {
    goto LABEL_80;
  }

  v6 = bswap32(*a3) >> 16;
  if ((v6 - 1) > 9)
  {
    goto LABEL_80;
  }

  v84 = 0;
  v85 = &v84;
  v86 = 0x2000000000;
  v87 = 0;
  v80 = 0;
  v81 = &v80;
  v82 = 0x2000000000;
  v83 = a4 - 2;
  if (v6 > 0xA)
  {
    goto LABEL_115;
  }

  if (((1 << v6) & 0x614) != 0)
  {
    goto LABEL_6;
  }

  if (v6 != 1)
  {
LABEL_115:
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v28 = VRTraceErrorLogLevelToCSTR();
      v29 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v89 = v28;
        v90 = 2080;
        v91 = "GCKSessionReceiveDOOB";
        v92 = 1024;
        v93 = 8167;
        _os_log_impl(&dword_24E50C000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionReceiveDOOB: SYNCHRONOUS EVENT HANDLER...", buf, 0x1Cu);
      }
    }

    if (v6 <= 6)
    {
      if (v6 <= 4)
      {
        if (v6 == 3)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v30 = VRTraceErrorLogLevelToCSTR();
            v31 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v89 = v30;
              v90 = 2080;
              v91 = "GCKSessionReceiveDOOB";
              v92 = 1024;
              v93 = 8182;
              _os_log_impl(&dword_24E50C000, v31, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionReceiveDOOB: received oob ICE response...", buf, 0x1Cu);
            }
          }

          gckHandleRetryICEResponse();
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v52 = VRTraceErrorLogLevelToCSTR();
          v53 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v89 = v52;
            v90 = 2080;
            v91 = "GCKSessionReceiveDOOB";
            v92 = 1024;
            v93 = 8188;
            _os_log_impl(&dword_24E50C000, v53, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionReceiveDOOB: received oob ICE force...", buf, 0x1Cu);
          }
        }

        gckHandleRetryICEForce();
      }

      if (v6 == 5)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v48 = VRTraceErrorLogLevelToCSTR();
          v49 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v89 = v48;
            v90 = 2080;
            v91 = "GCKSessionReceiveDOOB";
            v92 = 1024;
            v93 = 8194;
            _os_log_impl(&dword_24E50C000, v49, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionReceiveDOOB: received oob ICE enforced...", buf, 0x1Cu);
          }
        }

        gckHandleRetryICEEnforced();
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v56 = VRTraceErrorLogLevelToCSTR();
        v57 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v89 = v56;
          v90 = 2080;
          v91 = "GCKSessionReceiveDOOB";
          v92 = 1024;
          v93 = 8200;
          _os_log_impl(&dword_24E50C000, v57, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionReceiveDOOB: received oob ICE validate...", buf, 0x1Cu);
        }
      }

      gckHandleRetryICEValidate();
    }

    if (v6 <= 8)
    {
      if (v6 == 7)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v46 = VRTraceErrorLogLevelToCSTR();
          v47 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v89 = v46;
            v90 = 2080;
            v91 = "GCKSessionReceiveDOOB";
            v92 = 1024;
            v93 = 8205;
            _os_log_impl(&dword_24E50C000, v47, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionReceiveDOOB: received oob ICE viable...", buf, 0x1Cu);
          }
        }

        gckHandleRetryICEViable();
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v54 = VRTraceErrorLogLevelToCSTR();
        v55 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v89 = v54;
          v90 = 2080;
          v91 = "GCKSessionReceiveDOOB";
          v92 = 1024;
          v93 = 8210;
          _os_log_impl(&dword_24E50C000, v55, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionReceiveDOOB: received oob ICE validation check timeout...", buf, 0x1Cu);
        }
      }

      gckHandleRetryICEValidationTimeout();
    }

    if (v6 == 9)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v50 = VRTraceErrorLogLevelToCSTR();
        v51 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v89 = v50;
          v90 = 2080;
          v91 = "GCKSessionReceiveDOOB";
          v92 = 1024;
          v93 = 8216;
          _os_log_impl(&dword_24E50C000, v51, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionReceiveDOOB: received oob ICE prepare...", buf, 0x1Cu);
        }
      }

      gckHandleRetryICEPreparation();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v58 = VRTraceErrorLogLevelToCSTR();
      v59 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v89 = v58;
        v90 = 2080;
        v91 = "GCKSessionReceiveDOOB";
        v92 = 1024;
        v93 = 8222;
        _os_log_impl(&dword_24E50C000, v59, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionReceiveDOOB: received oob ICE report...", buf, 0x1Cu);
      }
    }

    gckHandleRetryICEReport();
  }

  v83 = 0;
LABEL_6:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(v81 + 6);
      *buf = 136315906;
      v89 = v9;
      v90 = 2080;
      v91 = "GCKSessionReceiveDOOB";
      v92 = 1024;
      v93 = 8032;
      v94 = 1024;
      v95 = v11;
      _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionReceiveDOOB: dispatch -- DataSize == %d...", buf, 0x22u);
    }
  }

  v12 = *(v81 + 6);
  if (v12 && v12 <= 2000)
  {
    v13 = malloc_type_malloc(v12, 0x3A44E52FuLL);
    v85[3] = v13;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v89 = v14;
      v90 = 2080;
      v91 = "GCKSessionReceiveDOOB";
      v92 = 1024;
      v93 = 8042;
      _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionReceiveDOOB: ASYNCHRONOUS EVENT HANDLER...", buf, 0x1Cu);
    }
  }

  v16 = *(v81 + 6);
  if (v16)
  {
    v17 = v85[3];
    if (v17)
    {
      memcpy(v17, a3 + 1, v16);
    }
  }

  if (v6 > 5)
  {
    if (v6 <= 7)
    {
      if (v6 == 6)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v26 = VRTraceErrorLogLevelToCSTR();
          v27 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v89 = v26;
            v90 = 2080;
            v91 = "GCKSessionReceiveDOOB";
            v92 = 1024;
            v93 = 8105;
            _os_log_impl(&dword_24E50C000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionReceiveDOOB: received oob ICE validate...", buf, 0x1Cu);
          }
        }

        global_queue = dispatch_get_global_queue(0, 0);
        v68[0] = MEMORY[0x277D85DD0];
        v68[1] = 0x40000000;
        v68[2] = __GCKSessionReceiveDOOB_block_invoke_17;
        v68[3] = &unk_279682D08;
        v69 = a2;
        v68[4] = &v84;
        v68[5] = a1;
        v21 = v68;
      }

      else
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v42 = VRTraceErrorLogLevelToCSTR();
          v43 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v89 = v42;
            v90 = 2080;
            v91 = "GCKSessionReceiveDOOB";
            v92 = 1024;
            v93 = 8116;
            _os_log_impl(&dword_24E50C000, v43, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionReceiveDOOB: received oob ICE viable...", buf, 0x1Cu);
          }
        }

        global_queue = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = __GCKSessionReceiveDOOB_block_invoke_19;
        block[3] = &unk_279682D30;
        v67 = a2;
        block[4] = &v84;
        block[5] = a1;
        v21 = block;
      }
    }

    else if (v6 == 8)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v34 = VRTraceErrorLogLevelToCSTR();
        v35 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v89 = v34;
          v90 = 2080;
          v91 = "GCKSessionReceiveDOOB";
          v92 = 1024;
          v93 = 8127;
          _os_log_impl(&dword_24E50C000, v35, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionReceiveDOOB: received oob ICE validation check timeout...", buf, 0x1Cu);
        }
      }

      global_queue = dispatch_get_global_queue(0, 0);
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 0x40000000;
      v64[2] = __GCKSessionReceiveDOOB_block_invoke_21;
      v64[3] = &unk_279682D58;
      v65 = a2;
      v64[4] = &v84;
      v64[5] = &v80;
      v64[6] = a1;
      v21 = v64;
    }

    else if (v6 == 9)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v22 = VRTraceErrorLogLevelToCSTR();
        v23 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v89 = v22;
          v90 = 2080;
          v91 = "GCKSessionReceiveDOOB";
          v92 = 1024;
          v93 = 8138;
          _os_log_impl(&dword_24E50C000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionReceiveDOOB: received oob ICE prepare...", buf, 0x1Cu);
        }
      }

      global_queue = dispatch_get_global_queue(0, 0);
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 0x40000000;
      v62[2] = __GCKSessionReceiveDOOB_block_invoke_23;
      v62[3] = &unk_279682D80;
      v63 = a2;
      v62[4] = &v84;
      v62[5] = &v80;
      v62[6] = a1;
      v21 = v62;
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v38 = VRTraceErrorLogLevelToCSTR();
        v39 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v89 = v38;
          v90 = 2080;
          v91 = "GCKSessionReceiveDOOB";
          v92 = 1024;
          v93 = 8149;
          _os_log_impl(&dword_24E50C000, v39, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionReceiveDOOB: received oob ICE report...", buf, 0x1Cu);
        }
      }

      global_queue = dispatch_get_global_queue(0, 0);
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 0x40000000;
      v60[2] = __GCKSessionReceiveDOOB_block_invoke_25;
      v60[3] = &unk_279682DA8;
      v61 = a2;
      v60[4] = &v84;
      v60[5] = &v80;
      v60[6] = a1;
      v21 = v60;
    }
  }

  else if (v6 <= 2)
  {
    if (v6 == 1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v24 = VRTraceErrorLogLevelToCSTR();
        v25 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v89 = v24;
          v90 = 2080;
          v91 = "GCKSessionReceiveDOOB";
          v92 = 1024;
          v93 = 8050;
          _os_log_impl(&dword_24E50C000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionReceiveDOOB: received oob ICE init...", buf, 0x1Cu);
        }
      }

      global_queue = dispatch_get_global_queue(0, 0);
      v78[0] = MEMORY[0x277D85DD0];
      v78[1] = 0x40000000;
      v78[2] = __GCKSessionReceiveDOOB_block_invoke;
      v78[3] = &unk_279682C40;
      v79 = a2;
      v78[4] = &v84;
      v78[5] = a1;
      v21 = v78;
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v40 = VRTraceErrorLogLevelToCSTR();
        v41 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v89 = v40;
          v90 = 2080;
          v91 = "GCKSessionReceiveDOOB";
          v92 = 1024;
          v93 = 8061;
          _os_log_impl(&dword_24E50C000, v41, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionReceiveDOOB: received oob ICE request...", buf, 0x1Cu);
        }
      }

      global_queue = dispatch_get_global_queue(0, 0);
      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 0x40000000;
      v76[2] = __GCKSessionReceiveDOOB_block_invoke_9;
      v76[3] = &unk_279682C68;
      v76[6] = a1;
      v77 = a2;
      v76[4] = &v84;
      v76[5] = &v80;
      v21 = v76;
    }
  }

  else if (v6 == 3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v32 = VRTraceErrorLogLevelToCSTR();
      v33 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v89 = v32;
        v90 = 2080;
        v91 = "GCKSessionReceiveDOOB";
        v92 = 1024;
        v93 = 8072;
        _os_log_impl(&dword_24E50C000, v33, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionReceiveDOOB: received oob ICE response...", buf, 0x1Cu);
      }
    }

    global_queue = dispatch_get_global_queue(0, 0);
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 0x40000000;
    v74[2] = __GCKSessionReceiveDOOB_block_invoke_11;
    v74[3] = &unk_279682C90;
    v75 = a2;
    v74[4] = &v84;
    v74[5] = &v80;
    v74[6] = a1;
    v21 = v74;
  }

  else if (v6 == 4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v89 = v18;
        v90 = 2080;
        v91 = "GCKSessionReceiveDOOB";
        v92 = 1024;
        v93 = 8083;
        _os_log_impl(&dword_24E50C000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionReceiveDOOB: received oob ICE force...", buf, 0x1Cu);
      }
    }

    global_queue = dispatch_get_global_queue(0, 0);
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 0x40000000;
    v72[2] = __GCKSessionReceiveDOOB_block_invoke_13;
    v72[3] = &unk_279682CB8;
    v73 = a2;
    v72[4] = &v84;
    v72[5] = &v80;
    v72[6] = a1;
    v21 = v72;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v36 = VRTraceErrorLogLevelToCSTR();
      v37 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v89 = v36;
        v90 = 2080;
        v91 = "GCKSessionReceiveDOOB";
        v92 = 1024;
        v93 = 8094;
        _os_log_impl(&dword_24E50C000, v37, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GCKSessionReceiveDOOB: received oob ICE enforced...", buf, 0x1Cu);
      }
    }

    global_queue = dispatch_get_global_queue(0, 0);
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 0x40000000;
    v70[2] = __GCKSessionReceiveDOOB_block_invoke_15;
    v70[3] = &unk_279682CE0;
    v71 = a2;
    v70[4] = &v84;
    v70[5] = &v80;
    v70[6] = a1;
    v21 = v70;
  }

  dispatch_async(global_queue, v21);
  v4 = 0;
  _Block_object_dispose(&v80, 8);
  _Block_object_dispose(&v84, 8);
LABEL_80:
  v44 = *MEMORY[0x277D85DE8];
  return v4;
}

void __GCKSessionReceiveDOOB_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  gckHandleRetryICEInit();
}

void __GCKSessionReceiveDOOB_block_invoke_9(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(*(*(a1 + 32) + 8) + 24);
  v5 = *(*(*(a1 + 40) + 8) + 24);
  gckHandleRetryICERequest();
}

void __GCKSessionReceiveDOOB_block_invoke_11(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(*(*(a1 + 32) + 8) + 24);
  v5 = *(*(*(a1 + 40) + 8) + 24);
  gckHandleRetryICEResponse();
}

void __GCKSessionReceiveDOOB_block_invoke_13(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(*(*(a1 + 32) + 8) + 24);
  v5 = *(*(*(a1 + 40) + 8) + 24);
  gckHandleRetryICEForce();
}

void __GCKSessionReceiveDOOB_block_invoke_15(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(*(*(a1 + 32) + 8) + 24);
  v5 = *(*(*(a1 + 40) + 8) + 24);
  gckHandleRetryICEEnforced();
}

void __GCKSessionReceiveDOOB_block_invoke_17(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  gckHandleRetryICEValidate();
}

void __GCKSessionReceiveDOOB_block_invoke_19(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  gckHandleRetryICEViable();
}

void __GCKSessionReceiveDOOB_block_invoke_21(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(*(*(a1 + 32) + 8) + 24);
  v5 = *(*(*(a1 + 40) + 8) + 24);
  gckHandleRetryICEValidationTimeout();
}

void __GCKSessionReceiveDOOB_block_invoke_23(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(*(*(a1 + 32) + 8) + 24);
  v5 = *(*(*(a1 + 40) + 8) + 24);
  gckHandleRetryICEPreparation();
}

void __GCKSessionReceiveDOOB_block_invoke_25(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(*(*(a1 + 32) + 8) + 24);
  v5 = *(*(*(a1 + 40) + 8) + 24);
  gckHandleRetryICEReport();
}

void GCKSessionSendTo(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v9[18] = v2;
  v9[19] = v3;
  v10 = v4;
  v15 = *MEMORY[0x277D85DE8];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12 = v5;
  v13 = v5;
  MEMORY[0x28223BE20](v1);
  v11 = v7;
  if (v8)
  {
    memset(v9 - v6, 170, 4 * v7);
  }

  memset(v14, 170, sizeof(v14));
  CheckInHandleDebug();
}

uint64_t gckSessionFindNextHop(uint64_t a1, int a2)
{
  pthread_mutex_lock((a1 + 7800));
  v4 = *(a1 + 112);
  if (v4 < 1)
  {
LABEL_5:
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    v5 = (a1 + 120);
    while (*(v5 - 1) != a2)
    {
      v5 += 120;
      if (!--v4)
      {
        goto LABEL_5;
      }
    }

    v6 = *v5;
  }

  pthread_mutex_unlock((a1 + 7800));
  return v6;
}

void GCKSessionSendAudioTo(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v8[6] = v2;
  v12 = *MEMORY[0x277D85DE8];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9 = v3;
  v10 = v3;
  MEMORY[0x28223BE20](v1);
  v6 = v8 - v4;
  v8[9] = v5;
  if (v7)
  {
    memset(v8 - v4, 170, 4 * v5);
  }

  v8[5] = v6;
  memset(v11, 170, sizeof(v11));
  CheckInHandleDebug();
}

uint64_t gckSessionUpdateNode(uint64_t a1, int a2, int a3, int *a4)
{
  pthread_mutex_lock((a1 + 7800));
  v8 = *(a1 + 400);
  if (v8 < 1)
  {
    LODWORD(v9) = 0;
    v11 = 0;
    if (a4)
    {
LABEL_8:
      v13 = v9 == v8 && v8 > 0 || v11;
      *a4 = v13;
    }
  }

  else
  {
    v9 = 0;
    v10 = (a1 + 408);
    while (*(v10 - 1) != a2)
    {
      ++v9;
      v10 += 3;
      if (v8 == v9)
      {
        v11 = 0;
        LODWORD(v9) = *(a1 + 400);
        if (a4)
        {
          goto LABEL_8;
        }

        goto LABEL_15;
      }
    }

    *v10 = a3;
    v11 = v8 != 1;
    if (a4)
    {
      goto LABEL_8;
    }
  }

LABEL_15:

  return pthread_mutex_unlock((a1 + 7800));
}

uint64_t gckSessionSetupChannelCList(uint64_t a1, int a2, uint64_t a3)
{
  v5 = a1;
  v85 = *MEMORY[0x277D85DE8];
  v6 = (a1 + 7904);
  pthread_rwlock_wrlock((a1 + 7904));
  v7 = (v5 + 7888);
  v8 = *(v5 + 7888);
  if (v8)
  {
    v9 = 0;
    do
    {
      if (*(v8 + 116) == a2)
      {
        v10 = *(v8 + 108);
        if (v10 >= v9)
        {
          v9 = v10 + 1;
        }
      }

      v8 = *(v8 + 728);
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  pthread_rwlock_unlock(v6);
  v11 = 0;
  do
  {
    if (*(a3 + 16) != 6 || *a3 != a2)
    {
      goto LABEL_31;
    }

    pthread_rwlock_wrlock(v6);
    v12 = *v7;
    if (!*v7)
    {
LABEL_26:
      pthread_rwlock_unlock(v6);
      if (!v11)
      {
        *&v84[46] = 0xAAAAAAAAAAAAAAAALL;
        *&v14 = 0xAAAAAAAAAAAAAAAALL;
        *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&v84[16] = v14;
        *&v84[32] = v14;
        *v84 = v14;
        *(v83 + 14) = 0xAAAAAAAAAAAAAAAALL;
        v82 = v14;
        v83[0] = v14;
        v81 = v14;
        *(v80 + 14) = 0xAAAAAAAAAAAAAAAALL;
        v79 = v14;
        v80[0] = v14;
        v78 = v14;
        *(v77 + 14) = 0xAAAAAAAAAAAAAAAALL;
        v76 = v14;
        v77[0] = v14;
        v75 = v14;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v15 = VRTraceErrorLogLevelToCSTR();
          v16 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v61 = IPPORTToStringWithSize();
            v17 = v5;
            v18 = v7;
            v19 = IPPORTToStringWithSize();
            v20 = IPPORTToStringWithSize();
            v21 = IPPORTToStringWithSize();
            *buf = 136317442;
            *&buf[4] = v15;
            *&buf[12] = 2080;
            *&buf[14] = "gckSessionSetupChannelCList";
            *&buf[22] = 1024;
            *&buf[24] = 5450;
            *&buf[28] = 1024;
            *&buf[30] = -1;
            *&buf[34] = 1024;
            *&buf[36] = a2;
            *&buf[40] = 1024;
            *&buf[42] = v9;
            *&buf[46] = 2080;
            *&buf[48] = v61;
            v66 = 2080;
            v67 = v19;
            v7 = v18;
            v5 = v17;
            v68 = 2080;
            v69 = v20;
            v70 = 2080;
            v71 = v21;
            _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d failed to setup channel %d with %08X: priority %d local[%s], src[%s] <-> dst[%s], remote[%s]\n", buf, 0x56u);
          }
        }

        v11 = 0;
        *(a3 + 312) = -1;
      }

      goto LABEL_31;
    }

    while (1)
    {
      if ((*(v12 + 112) & 0x80000000) == 0 || *(v12 + 116) != a2 || (*(a3 + 28) & 1) != (*(v12 + 412) & 1))
      {
        goto LABEL_25;
      }

      if (*(a3 + 28))
      {
        if (*(a3 + 48) != *(v12 + 432) || *(a3 + 56) != *(v12 + 440))
        {
          goto LABEL_25;
        }
      }

      else if (*(a3 + 48) != *(v12 + 432))
      {
        goto LABEL_25;
      }

      if (*(a3 + 64) == *(v12 + 448))
      {
        break;
      }

LABEL_25:
      v12 = *(v12 + 728);
      if (!v12)
      {
        goto LABEL_26;
      }
    }

    *(v83 + 14) = 0xAAAAAAAAAAAAAAAALL;
    *&v22 = 0xAAAAAAAAAAAAAAAALL;
    *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v82 = v22;
    v83[0] = v22;
    v81 = v22;
    *(v80 + 14) = 0xAAAAAAAAAAAAAAAALL;
    v79 = v22;
    v80[0] = v22;
    v78 = v22;
    *(v77 + 14) = 0xAAAAAAAAAAAAAAAALL;
    v76 = v22;
    v77[0] = v22;
    v75 = v22;
    *(v74 + 14) = 0xAAAAAAAAAAAAAAAALL;
    v73 = v22;
    v74[0] = v22;
    v72 = v22;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v58 = *(v12 + 100);
        v57 = IPPORTToStringWithSize();
        v62 = v7;
        v25 = IPPORTToStringWithSize();
        v26 = IPPORTToStringWithSize();
        v27 = IPPORTToStringWithSize();
        *buf = 136317442;
        *&buf[4] = v23;
        *&buf[12] = 2080;
        *&buf[14] = "gckSessionSetupChannelCList";
        *&buf[22] = 1024;
        *&buf[24] = 5414;
        *&buf[28] = 1024;
        *&buf[30] = v58;
        *&buf[34] = 1024;
        *&buf[36] = a2;
        *&buf[40] = 1024;
        *&buf[42] = v9;
        *&buf[46] = 2080;
        *&buf[48] = v57;
        v66 = 2080;
        v67 = v25;
        v7 = v62;
        v68 = 2080;
        v69 = v26;
        v70 = 2080;
        v71 = v27;
        _os_log_impl(&dword_24E50C000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d setup channel %d with %08X: priority %d local[%s], src[%s] <-> dst[%s], remote[%s]\n", buf, 0x56u);
      }
    }

    v28 = *(a3 + 148);
    v29 = *(a3 + 164);
    *(v12 + 484) = *(a3 + 180);
    *(v12 + 452) = v28;
    *(v12 + 468) = v29;
    *(v12 + 108) = v9;
    *(v12 + 112) = v9;
    *(v12 + 4) = *(a3 + 20);
    *(v12 + 560) = *(a3 + 268);
    *(v12 + 8) = *(a3 + 26);
    v30 = *(v12 + 116);
    Handle = GCK_BWE_CreateHandle();
    *&buf[46] = 0xAAAAAAAAAAAAAAAALL;
    *&v32 = 0xAAAAAAAAAAAAAAAALL;
    *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&buf[16] = v32;
    *&buf[32] = v32;
    *buf = v32;
    if (VRTraceGetErrorLogLevelForModule() > 7)
    {
      v33 = VRTraceErrorLogLevelToCSTR();
      v34 = *MEMORY[0x277CE5818];
      v35 = *MEMORY[0x277CE5818];
      if (*MEMORY[0x277CE5808] == 1)
      {
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v63 = v5;
          v36 = v7;
          v37 = *(v12 + 736);
          v59 = *(v12 + 116);
          v38 = IPPORTToStringWithSize();
          *v84 = 136316418;
          *&v84[4] = v33;
          *&v84[12] = 2080;
          *&v84[14] = "BWE_CreateObject";
          *&v84[22] = 1024;
          *&v84[24] = 8785;
          *&v84[28] = 2048;
          *&v84[30] = v37;
          v7 = v36;
          v5 = v63;
          *&v84[38] = 1024;
          *&v84[40] = v59;
          *&v84[44] = 2080;
          *&v84[46] = v38;
          _os_log_impl(&dword_24E50C000, v34, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d **Created BWE %p for node %d %s ", v84, 0x36u);
        }
      }

      else if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        v64 = v5;
        v44 = v7;
        v45 = *(v12 + 736);
        v60 = *(v12 + 116);
        v46 = IPPORTToStringWithSize();
        *v84 = 136316418;
        *&v84[4] = v33;
        *&v84[12] = 2080;
        *&v84[14] = "BWE_CreateObject";
        *&v84[22] = 1024;
        *&v84[24] = 8785;
        *&v84[28] = 2048;
        *&v84[30] = v45;
        v7 = v44;
        v5 = v64;
        *&v84[38] = 1024;
        *&v84[40] = v60;
        *&v84[44] = 2080;
        *&v84[46] = v46;
        _os_log_debug_impl(&dword_24E50C000, v34, OS_LOG_TYPE_DEBUG, " [%s] %s:%d **Created BWE %p for node %d %s ", v84, 0x36u);
      }
    }

    *(v12 + 744) = 0;
    if (Handle)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v39 = VRTraceErrorLogLevelToCSTR();
        v40 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          *v84 = 136315906;
          *&v84[4] = v39;
          *&v84[12] = 2080;
          *&v84[14] = "BWE_CreateObject";
          *&v84[22] = 1024;
          *&v84[24] = 8791;
          *&v84[28] = 1024;
          *&v84[30] = Handle;
          _os_log_error_impl(&dword_24E50C000, v40, OS_LOG_TYPE_ERROR, " [%s] %s:%d GCK_BWE_CreateHandle failed (%08X)", v84, 0x22u);
        }
      }
    }

    *(a3 + 312) = *(v12 + 100);
    v41 = *(v12 + 96);
    if ((v41 & 1) == 0)
    {
      *(v12 + 96) = v41 | 1;
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v42 = VRTraceErrorLogLevelToCSTR();
        v43 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = v42;
          *&buf[12] = 2080;
          *&buf[14] = "gckSessionSetupChannelCList";
          *&buf[22] = 1024;
          *&buf[24] = 5428;
          _os_log_impl(&dword_24E50C000, v43, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d retryICE: setting fGotICEResultAlready", buf, 0x1Cu);
        }
      }
    }

    ++v9;
    pthread_rwlock_unlock(v6);
    v11 = 1;
LABEL_31:
    a3 = *(a3 + 304);
  }

  while (a3);
  pthread_rwlock_wrlock(v6);
  v47 = *v7;
  if (!*v7)
  {
    goto LABEL_74;
  }

  v48 = 0;
  while (2)
  {
    while (*(v47 + 116) == a2 && (*(v47 + 108) & 0x80000000) != 0)
    {
      if (*v47 != -1)
      {
        close(*v47);
        *v47 = -1;
      }

      v49 = *(v47 + 72);
      if (v49 != -1)
      {
        close(v49);
        *(v47 + 72) = -1;
      }

      v50 = v7;
      do
      {
        v51 = v50;
        v52 = *v50;
        v50 = (*v50 + 728);
        if (v52)
        {
          v53 = v52 == v47;
        }

        else
        {
          v53 = 1;
        }
      }

      while (!v53);
      if (!v52)
      {
        v48 = 1;
        break;
      }

      *v51 = *(v52 + 728);
      *(v52 + 728) = *(v5 + 7896);
      *(v5 + 7896) = v52;
      v47 = *(v5 + 7888);
      v48 = 1;
      if (!v47)
      {
        goto LABEL_72;
      }
    }

    v47 = *(v47 + 728);
    if (v47)
    {
      continue;
    }

    break;
  }

  if (!v48)
  {
    goto LABEL_74;
  }

LABEL_72:
  v54 = *(v5 + 12);
  if (v54 != -1)
  {
    *(v5 + 12) = -1;
    close(v54);
  }

LABEL_74:
  result = pthread_rwlock_unlock(v6);
  v56 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t gckSessionSendHello(uint64_t a1, unsigned int a2, int a3, int a4, __int16 a5, int a6)
{
  v46 = *MEMORY[0x277D85DE8];
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v34 = v12;
  v35 = v12;
  v33 = 0xAAAAAAAAAAAAAAAALL;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v15 = " back";
      *buf = 136316162;
      if (a3)
      {
        v15 = "";
      }

      v37 = v13;
      v38 = 2080;
      v39 = "gckSessionSendHello";
      v40 = 1024;
      v41 = 1551;
      v42 = 2080;
      v43 = v15;
      v44 = 1024;
      v45 = a2;
      _os_log_impl(&dword_24E50C000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Sending HELLO%s to [%08X]", buf, 0x2Cu);
    }
  }

  WORD6(v34) = a5;
  *&v35 = 0x8000000000000402;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v37 = v16;
      v38 = 2080;
      v39 = "gckSessionSendHello";
      v40 = 1024;
      v41 = 1554;
      v42 = 2048;
      v43 = v35;
      _os_log_impl(&dword_24E50C000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d before MakeHello: %llX", buf, 0x26u);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v18 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v37 = v18;
      v38 = 2080;
      v39 = "gckSessionSendHello";
      v40 = 1024;
      v41 = 1556;
      v42 = 1024;
      LODWORD(v43) = a6;
      _os_log_impl(&dword_24E50C000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d gckSessionSendHello: channel %d", buf, 0x22u);
    }
  }

  v20 = 2149187606;
  v21 = OSPFMakeHello(&v33, &v34, *(a1 + 108), a2);
  if ((v21 & 0x80000000) != 0)
  {
    v20 = 2149187618;
    goto LABEL_33;
  }

  v22 = v21;
  if (!a3)
  {
    v20 = SendUDPPacketToParticipantChannelID(a1, v33, v21, a2, a4, a6, 0);
    goto LABEL_31;
  }

  if (a4)
  {
    pthread_rwlock_rdlock((a1 + 7904));
  }

  v23 = *(a1 + 7888);
  if (!v23)
  {
LABEL_23:
    v24 = 1;
    if (!a4)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  while (1)
  {
    if (*(v23 + 116) != a2)
    {
      goto LABEL_22;
    }

    if (a6 < 0)
    {
      break;
    }

    if (*(v23 + 100) == a6)
    {
      goto LABEL_34;
    }

LABEL_22:
    v23 = *(v23 + 728);
    if (!v23)
    {
      goto LABEL_23;
    }
  }

  if (*(v23 + 108))
  {
    goto LABEL_22;
  }

LABEL_34:
  pthread_mutex_lock((v23 + 664));
  v27 = *(v23 + 496);
  if (v27)
  {
    while (1)
    {
      v28 = v27;
      if (*v27 == 1)
      {
        break;
      }

      v27 = *(v27 + 64);
      if (!v27)
      {
        v29 = (v28 + 64);
        goto LABEL_39;
      }
    }

    *(v27 + 8) = xmmword_24E5907D0;
    *(v27 + 32) = *(a1 + 32);
    *(v27 + 24) = 1;
    v31 = *(v27 + 40);
    if (v31)
    {
      free(v31);
    }

    *(v28 + 40) = v33;
    *(v28 + 48) = v22;
    *(v28 + 52) = a2;
  }

  else
  {
    v29 = (v23 + 496);
LABEL_39:
    v30 = malloc_type_calloc(1uLL, 0x48uLL, 0x10200409EACE7F9uLL);
    *v30 = 1;
    *(v30 + 8) = xmmword_24E5907D0;
    *(v30 + 4) = *(a1 + 32);
    *(v30 + 5) = v33;
    *(v30 + 12) = v22;
    *(v30 + 13) = a2;
    *v29 = v30;
  }

  pthread_mutex_unlock((v23 + 664));
  v32 = *(a1 + 12);
  if (v32 != -1)
  {
    *(a1 + 12) = -1;
    close(v32);
  }

  v24 = 0;
  if (a4)
  {
LABEL_24:
    pthread_rwlock_unlock((a1 + 7904));
  }

LABEL_25:
  if (v24)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        gckSessionSendHello_cold_1();
      }
    }

LABEL_31:
    free(v33);
  }

  else
  {
    v20 = 0;
  }

LABEL_33:
  v25 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t gckSessionWaitForHello(uint64_t a1, int a2, int a3)
{
  v28 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136316162;
      v19 = v6;
      v20 = 2080;
      v21 = "gckSessionWaitForHello";
      v22 = 1024;
      v23 = 1638;
      v24 = 1024;
      v25 = a2;
      v26 = 1024;
      v27 = 10;
      _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Waiting for HELLO from [%08X] for %d seconds", &v18, 0x28u);
    }
  }

  pthread_rwlock_rdlock((a1 + 7904));
  v8 = *(a1 + 7888);
  if (!v8)
  {
LABEL_11:
    v9 = 2149187606;
    pthread_rwlock_unlock((a1 + 7904));
    if (VRTraceGetErrorLogLevelForModule() > 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        gckSessionWaitForHello_cold_1();
      }
    }

    goto LABEL_22;
  }

  while (1)
  {
    if (*(v8 + 116) != a2)
    {
      goto LABEL_10;
    }

    if (a3 < 0)
    {
      break;
    }

    if (*(v8 + 100) == a3)
    {
      goto LABEL_14;
    }

LABEL_10:
    v8 = *(v8 + 728);
    if (!v8)
    {
      goto LABEL_11;
    }
  }

  if (*(v8 + 108))
  {
    goto LABEL_10;
  }

LABEL_14:
  pthread_mutex_lock((v8 + 664));
  v10 = micro();
  v11 = *(v8 + 496);
  if (v11)
  {
    while (1)
    {
      v12 = v11;
      if (*v11 == 1)
      {
        break;
      }

      v11 = *(v11 + 64);
      if (!v11)
      {
        v13 = (v12 + 64);
        goto LABEL_19;
      }
    }
  }

  else
  {
    v13 = (v8 + 496);
LABEL_19:
    v14 = malloc_type_calloc(1uLL, 0x48uLL, 0x10200409EACE7F9uLL);
    *v14 = 1;
    v14[1] = 0.065;
    v14[2] = v10 + 10.0;
    v14[4] = v10 + 10.0;
    v14[5] = 0.0;
    *(v14 + 12) = 0;
    *(v14 + 13) = a2;
    *v13 = v14;
    v15 = *(a1 + 12);
    if (v15 != -1)
    {
      *(a1 + 12) = -1;
      close(v15);
    }
  }

  pthread_mutex_unlock((v8 + 664));
  pthread_rwlock_unlock((a1 + 7904));
  v9 = 0;
LABEL_22:
  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

void gckSessionCheckPendingConnections(uint64_t a1, int a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    pthread_rwlock_rdlock((a1 + 7904));
  }

  pthread_mutex_lock((a1 + 7800));
  v4 = *(a1 + 112);
  if (v4 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = (a1 + 120);
    do
    {
      if (*v6 == -1)
      {
        ++v5;
      }

      v6 += 120;
      --v4;
    }

    while (v4);
  }

  pthread_mutex_unlock((a1 + 7800));
  v7 = *(a1 + 7888);
  if (v7)
  {
    v8 = 0;
    v9 = *(a1 + 7888);
    do
    {
      v8 += (*(v9 + 96) & 1) == 0;
      v9 = *(v9 + 728);
    }

    while (v9);
    v10 = 0;
    do
    {
      if (!*(v7 + 92))
      {
        ++v10;
      }

      v7 = *(v7 + 728);
    }

    while (v7);
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3 && (v11 = VRTraceErrorLogLevelToCSTR(), v12 = *MEMORY[0x277CE5818], os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR)))
  {
    v14 = 136316418;
    v15 = v11;
    v16 = 2080;
    v17 = "gckSessionCheckPendingConnections";
    v18 = 1024;
    v19 = 1527;
    v20 = 1024;
    v21 = v8;
    v22 = 1024;
    v23 = v5;
    v24 = 1024;
    v25 = v10;
    _os_log_error_impl(&dword_24E50C000, v12, OS_LOG_TYPE_ERROR, " [%s] %s:%d gckSessionCheckPendingConnections: iICEChecksLeft=%d, iUnconnectedNodeCount=%d, iDDsExpected=%d", &v14, 0x2Eu);
    if (v8)
    {
      goto LABEL_25;
    }
  }

  else if (v8)
  {
    goto LABEL_25;
  }

  if (!v5 && !v10)
  {
    PostEventCallback(*(a1 + 96), 0, 11, 0, 0, 0);
  }

LABEL_25:
  if (a2)
  {
    pthread_rwlock_unlock((a1 + 7904));
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t SendUDPPacketToParticipantChannelID(uint64_t a1, const void *a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  v7 = 0;
  v30 = *MEMORY[0x277D85DE8];
  if (a2 && a3)
  {
    if (a5)
    {
      pthread_rwlock_rdlock((a1 + 7904));
    }

    v7 = 2149187606;
    for (i = *(a1 + 7888); i; i = *(i + 728))
    {
      if (*(i + 116) == a4)
      {
        if (a6 < 0)
        {
          if (*(i + 108))
          {
            continue;
          }
        }

        else if (*(i + 100) != a6)
        {
          continue;
        }

        if ((*(i + 408) & 0xFFFFFFFE) == 2)
        {
          v18 = micro();
          if (a7 && (*(a1 + 8320) || v18 <= *(i + 40)))
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v20 = VRTraceErrorLogLevelToCSTR();
              v21 = *MEMORY[0x277CE5818];
              if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
              {
                v22 = 136315906;
                v23 = v20;
                v24 = 2080;
                v25 = "SendUDPPacketToParticipantChannelID";
                v26 = 1024;
                v27 = 647;
                v28 = 1024;
                v29 = a4;
                _os_log_impl(&dword_24E50C000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %08X: DROP", &v22, 0x22u);
              }
            }
          }

          else
          {
            v19 = SendUDPPacketCList(a1, i, a2, a3, 0, 1);
            if (v19 == -1072037876)
            {
              *(i + 40) = v18 + 3.0;
            }

            if (v19 == -1072037856)
            {
              v7 = 2149187626;
            }

            else
            {
              v7 = v19;
            }
          }

          break;
        }
      }
    }

    if (a5)
    {
      pthread_rwlock_unlock((a1 + 7904));
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t SendUDPPacketCList(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = a5;
  v40 = *MEMORY[0x277D85DE8];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2000000000;
  v34 = -2145779690;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2000000000;
  v30 = 0;
  v38 = 0xAAAAAAAAAAAAAAAALL;
  v39 = 0xAAAAAAAAAAAAAAAALL;
  memset(v27, 170, sizeof(v27));
  v26 = 0xAAAAAAAAAAAAAAAALL;
  if (a5)
  {
    goto LABEL_2;
  }

  v7 = a2 + 452;
  if (*(a2 + 452))
  {
    if (*(a2 + 472) != *MEMORY[0x277D85EE8] || *(a2 + 480) != *(MEMORY[0x277D85EE8] + 8))
    {
      goto LABEL_2;
    }

LABEL_34:
    v19 = 0;
    goto LABEL_28;
  }

  if (!*(a2 + 472))
  {
    goto LABEL_34;
  }

LABEL_2:
  if ((*(a2 + 412) & 1) != 0 && (*v7 & 1) == 0 && *GCKGetNAT64Prefix(a1, a2 + 412))
  {
    v37 = *(v7 + 32);
    v12 = *(v7 + 16);
    *v36 = *v7;
    *&v36[16] = v12;
    synthesizeIPPORTv6FromIPv4(v7, &v36[20]);
  }

  if (*(a2 + 412))
  {
    v28 = 28;
    v13 = IPPORTToSA6();
  }

  else
  {
    v28 = 16;
    v13 = IPPORTToSA();
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 0x40000000;
  v23[2] = __SendUDPPacketCList_block_invoke;
  v23[3] = &unk_279682DD0;
  v23[6] = v13;
  v23[7] = a2;
  v23[4] = v29;
  v23[5] = &v31;
  v24 = v28;
  v25 = a4;
  pthread_mutex_lock((a2 + 664));
  if (g_iBWEstLogLevel_gck >= 6)
  {
    SendUDPPacketCList_cold_1(a4);
  }

  memset(v36, 170, 24);
  if (*(a2 + 504) && *(a2 + 736) != 0xFFFFFFFFLL)
  {
    v35 = 0;
    v14 = *(a2 + 748);
    GCK_BWE_GetProbeSeqSize();
  }

  pthread_mutex_lock((a1 + 8400));
  if (*(a2 + 504))
  {
    v15 = (a2 + 512);
  }

  else
  {
    v15 = 0;
  }

  if (a6)
  {
    v16 = *(a2 + 4) != 0;
  }

  else
  {
    v16 = 0;
  }

  v17 = OSPFAddDynamicOptions(v15, a3, a4, v16, *(a2 + 8), (a2 + 624), 0, v23);
  pthread_mutex_unlock((a1 + 8400));
  pthread_mutex_unlock((a2 + 664));
  if (v17)
  {
    do
    {
      v18 = *(v17 + 8);
      if (*v17)
      {
        free(*v17);
      }

      free(v17);
      v17 = v18;
    }

    while (v18);
  }

  v19 = *(v32 + 6);
LABEL_28:
  _Block_object_dispose(v29, 8);
  _Block_object_dispose(&v31, 8);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t synthesizeIPPORTv6FromIPv4(uint64_t a1, unsigned int *a2)
{
  v3 = bswap32(*a2);
  result = nw_nat64_synthesize_v6();
  if (result)
  {
    return SAToIPPORT();
  }

  return result;
}

BOOL __SendUDPPacketCList_block_invoke(uint64_t a1, msghdr *a2)
{
  a2->msg_name = *(a1 + 48);
  a2->msg_namelen = *(a1 + 64);
  *(*(*(a1 + 32) + 8) + 24) = sendmsg(**(a1 + 56), a2, 0);
  *(*(a1 + 56) + 608) = *(*(a1 + 56) + 608) + 1.0;
  if (*(*(*(a1 + 32) + 8) + 24) == -1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        __SendUDPPacketCList_block_invoke_cold_1(v5, v6);
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = *__error() | 0xC01A0000;
    *(*(a1 + 56) + 616) = *(*(a1 + 56) + 616) + 1.0;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v3 = micro();
    v4 = *(a1 + 56);
    *(v4 + 64) = v3;
    *(v4 + 584) += *(a1 + 68);
  }

  return *(*(*(a1 + 40) + 8) + 24) >= 0;
}

uint64_t SendUDPPacket(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  if (!a2 || !a3 || !a4 || !a5)
  {
    return v5;
  }

  v5 = 2149187606;
  pthread_rwlock_rdlock((a1 + 7904));
  v11 = *(a1 + 7888);
  if (!v11)
  {
    goto LABEL_30;
  }

  v12 = *a4 & 1;
  while ((*(v11 + 412) & 1) != v12)
  {
LABEL_18:
    if (*(v11 + 412))
    {
      goto LABEL_21;
    }

    if (!*(v11 + 432))
    {
      goto LABEL_26;
    }

LABEL_27:
    v11 = *(v11 + 728);
    if (!v11)
    {
      goto LABEL_30;
    }
  }

  if (!v12)
  {
    v13 = *(v11 + 432);
    if (v13 != *(a4 + 20))
    {
      if (!v13)
      {
        goto LABEL_26;
      }

      goto LABEL_27;
    }

    goto LABEL_17;
  }

  if (*(v11 + 432) == *(a4 + 20) && *(v11 + 440) == *(a4 + 28))
  {
LABEL_17:
    if (*(v11 + 448) == *(a4 + 36))
    {
      goto LABEL_29;
    }

    goto LABEL_18;
  }

LABEL_21:
  if (*(v11 + 432) != *MEMORY[0x277D85EE8] || *(v11 + 440) != *(MEMORY[0x277D85EE8] + 8))
  {
    goto LABEL_27;
  }

LABEL_26:
  if (*(v11 + 448) != *(a4 + 36))
  {
    goto LABEL_27;
  }

LABEL_29:
  v5 = SendUDPPacketCList(a1, v11, a2, a3, a5, 0);
LABEL_30:
  pthread_rwlock_unlock((a1 + 7904));
  return v5;
}

uint64_t __gckSessionRecvProc_block_invoke(uint64_t a1)
{
  pthread_rwlock_rdlock((*(a1 + 32) + 7904));
  v2 = *(a1 + 32);
  v3 = *(v2 + 12);
  if (v3 != -1)
  {
    *(v2 + 12) = -1;
    close(v3);
    v2 = *(a1 + 32);
  }

  return pthread_rwlock_unlock((v2 + 7904));
}

void TracePrintNodesX(int a1, uint64_t a2)
{
  v51 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v30 = v3;
      v31 = 2080;
      v32 = "TracePrintNodesX";
      v33 = 1024;
      v34 = 2400;
      v35 = 1024;
      *v36 = a1;
      _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ------ Report %d nodes ------", buf, 0x22u);
    }
  }

  if (a1 >= 1)
  {
    v5 = 0;
    v6 = (a2 + 292);
    do
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v9 = (a2 + 480 * v5);
          v10 = *v9;
          v11 = v9[1];
          v12 = v9[67];
          v13 = *(v9 + 136);
          v14 = *(v9 + 137);
          v15 = v9[69];
          v16 = v9[70];
          v17 = v9[71];
          *buf = 136318210;
          v30 = v7;
          v31 = 2080;
          v32 = "TracePrintNodesX";
          v33 = 1024;
          v34 = 2406;
          v35 = 1024;
          *v36 = v5;
          *&v36[4] = 1024;
          *&v36[6] = v10;
          LOWORD(v37) = 1024;
          *(&v37 + 2) = v11;
          HIWORD(v37) = 1024;
          v38 = v12;
          v39 = 1024;
          v40 = v13;
          v41 = 1024;
          v42 = v14;
          v43 = 1024;
          v44 = v15;
          v45 = 1024;
          v46 = v16;
          v47 = 1024;
          v48 = v17;
          v49 = 2080;
          v50 = v9 + 9;
          _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %d: %08X Next[%08X], dist[%u], SN[%u], LSASN[%u], New[%d], From[%08X], #NEIGHBOR[%d] %s", buf, 0x5Cu);
        }
      }

      v18 = a2 + 480 * v5;
      if (*(v18 + 284) >= 1)
      {
        v19 = 0;
        v20 = v6;
        do
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v21 = VRTraceErrorLogLevelToCSTR();
            v22 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v23 = *(v20 - 1);
              v24 = *v20;
              *buf = 136316162;
              v30 = v21;
              v31 = 2080;
              v32 = "TracePrintNodesX";
              v33 = 1024;
              v34 = 2409;
              v35 = 1024;
              *v36 = v23;
              *&v36[4] = 1024;
              *&v36[6] = v24;
              _os_log_impl(&dword_24E50C000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d     %08X, R[%u]", buf, 0x28u);
            }
          }

          ++v19;
          v20 += 3;
        }

        while (v19 < *(v18 + 284));
      }

      ++v5;
      v6 += 120;
    }

    while (v5 != a1);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v25 = VRTraceErrorLogLevelToCSTR();
    v26 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v30 = v25;
      v31 = 2080;
      v32 = "TracePrintNodesX";
      v33 = 1024;
      v34 = 2412;
      v35 = 2080;
      *v36 = "Oct 11 2025";
      *&v36[8] = 2080;
      v37 = "00:26:33";
      _os_log_impl(&dword_24E50C000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [GKS: %s] ------", buf, 0x30u);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

void gckSessionSendHBs(uint64_t a1)
{
  for (i = *(a1 + 7888); i; i = *(i + 728))
  {
    if (*(i + 4))
    {
      v3 = micro();
      if (v3 - *(i + 16) > 27.0)
      {
        v4 = *(a1 + 72);
        v5 = *(i + 116);
        ICERefreshRelayBinding();
        *(i + 16) = v3;
      }
    }
  }
}

void attempt_failover(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(a2 + 108))
  {
LABEL_2:
    *(a2 + 108) = -1;
    *(a2 + 544) = 0u;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a2 + 100);
        v7 = *(a2 + 112);
        v6 = *(a2 + 116);
        v18 = 136316418;
        v19 = v3;
        v20 = 2080;
        v21 = "attempt_failover";
        v22 = 1024;
        v23 = 4489;
        v24 = 1024;
        v25 = v5;
        v26 = 1024;
        v27 = v6;
        v28 = 1024;
        v29 = v7;
        _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d demoted channel %d for %08X to inactive state: original priority %d", &v18, 0x2Eu);
      }
    }

    goto LABEL_22;
  }

  v9 = *(a1 + 7888);
  if (v9)
  {
    v10 = 0;
    do
    {
      if (v9 != a2 && *(v9 + 116) == *(a2 + 116) && *(v9 + 108) >= 0)
      {
        v10 = v9;
      }

      v9 = *(v9 + 728);
    }

    while (v9);
    if (v10)
    {
      if (v10 != a2)
      {
        v10[27] = 0;
        gckSessionUpdateNode(a1, v10[29], v10[140], 0);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v11 = VRTraceErrorLogLevelToCSTR();
          v12 = *MEMORY[0x277CE5818];
          if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
          {
            v13 = v10[25];
            v15 = v10[28];
            v14 = v10[29];
            v18 = 136316418;
            v19 = v11;
            v20 = 2080;
            v21 = "attempt_failover";
            v22 = 1024;
            v23 = 4482;
            v24 = 1024;
            v25 = v13;
            v26 = 1024;
            v27 = v14;
            v28 = 1024;
            v29 = v15;
            _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d promoted channel %d for %08X to active status: original priority %d\n", &v18, 0x2Eu);
          }
        }
      }

      goto LABEL_2;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
    {
      attempt_failover_cold_1(v16, a2);
    }
  }

  if (*(a2 + 408) != 6)
  {
    gckSessionChangeStateCList(a1, a2, 4);
  }

LABEL_22:
  v17 = *MEMORY[0x277D85DE8];
}

void gckSessionLocalServerProc(unsigned int *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  pthread_setname_np("com.apple.gamekitservices.gcksession.localserverproc");
  v2 = *a1;
  v3 = a1[2];
  free(a1);
  CheckInHandleDebug();
}

uint64_t gckSessionRecvMessage(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v152 = v1;
  v177 = *MEMORY[0x277D85DE8];
  memset(v173, 170, 0x1001uLL);
  *&v172[16] = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v171 = v8;
  *v172 = v8;
  v170 = 0xAAAAAAAAAAAAAAAALL;
  v168 = v8;
  v169 = v8;
  v167[6] = v8;
  v167[7] = v8;
  v167[4] = v8;
  v167[5] = v8;
  v167[2] = v8;
  v167[3] = v8;
  v167[0] = v8;
  v167[1] = v8;
  *&v160.msg_iovlen = 0xAAAAAAAA00000001;
  v166[0] = v8;
  v166[1] = v8;
  v165[0] = v173;
  v165[1] = 4096;
  v160.msg_name = v167;
  *&v160.msg_namelen = 0xAAAAAAAA00000080;
  v160.msg_iov = v165;
  v160.msg_control = v166;
  *&v160.msg_controllen = 32;
  v9 = recvmsg(*v7, &v160, 0);
  v10 = v9;
  if (v9 == -1)
  {
    v14 = *__error() | 0xC01A0000;
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_136;
    }

    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x277CE5818];
    if (!os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_136;
    }

    v17 = *v7;
    v161[0] = 136316418;
    *&v161[1] = v15;
    LOWORD(v161[3]) = 2080;
    *(&v161[3] + 2) = "gckSessionRecvMessage";
    HIWORD(v161[5]) = 1024;
    v161[6] = 3334;
    LOWORD(v161[7]) = 1024;
    *(&v161[7] + 2) = 3334;
    HIWORD(v161[8]) = 1024;
    v161[9] = v17;
    LOWORD(v161[10]) = 1024;
    *(&v161[10] + 2) = v14;
    v18 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/Gecko/GCKSession.c:%d: recvmsg(%d) failed(%X)";
    v19 = v16;
LABEL_9:
    _os_log_impl(&dword_24E50C000, v19, OS_LOG_TYPE_DEFAULT, v18, v161, 0x2Eu);
    goto LABEL_136;
  }

  if (!v9)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v13 = *v7;
        v161[0] = 136316162;
        *&v161[1] = v11;
        LOWORD(v161[3]) = 2080;
        *(&v161[3] + 2) = "gckSessionRecvMessage";
        HIWORD(v161[5]) = 1024;
        v161[6] = 3330;
        LOWORD(v161[7]) = 1024;
        *(&v161[7] + 2) = 3330;
        HIWORD(v161[8]) = 1024;
        v161[9] = v13;
        _os_log_impl(&dword_24E50C000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/Gecko/GCKSession.c:%d: recvmsg(%d) returned 0: empty message", v161, 0x28u);
      }
    }

    goto LABEL_135;
  }

  pthread_mutex_lock((v7 + 664));
  *(v7 + 576) += v10;
  pthread_mutex_unlock((v7 + 664));
  v20 = *(v7 + 428);
  v171 = *(v7 + 412);
  *v172 = v20;
  *&v172[16] = *(v7 + 444);
  if (v160.msg_controllen >= 0xC)
  {
    msg_control = v160.msg_control;
    if (v160.msg_control)
    {
      while (msg_control[1] != 41 || msg_control[2] != 46)
      {
        msg_control = (msg_control + ((*msg_control + 3) & 0x1FFFFFFFCLL));
        if ((msg_control + 3) > v160.msg_control + v160.msg_controllen)
        {
          goto LABEL_21;
        }
      }

      if (msg_control[3] || msg_control[4] || msg_control[5] != -65536)
      {
        LODWORD(v171) = 1;
        *&v172[4] = *(msg_control + 3);
      }

      else
      {
        v22 = bswap32(msg_control[6]);
        LODWORD(v171) = v171 & 0xFFFFFFFE;
        *&v172[4] = v22;
      }
    }
  }

LABEL_21:
  SAToIPPORT();
  v158 = 0;
  v159 = 0xAAAAAAAAAAAAAAAALL;
  v157 = 0;
  v155[0] = MEMORY[0x277D85DD0];
  v155[1] = 0x40000000;
  v155[2] = __gckSessionRecvMessage_block_invoke;
  v155[3] = &__block_descriptor_tmp_43;
  v155[4] = v7;
  v155[5] = v3;
  v155[6] = &v156;
  v156 = 0;
  if (*(v7 + 504))
  {
    v23 = v155;
  }

  else
  {
    v23 = 0;
  }

  ErrorLogLevelForModule = OSPFParse(&v159, &v158, v173, v10, 0, v23);
  if (ErrorLogLevelForModule > 0 || (v173[0] & 0xC0) == 0x40 && (v36 = bswap32(v173[1]), v10 - 4 == HIWORD(v36)) && ((v10 = HIWORD(v36), __memmove_chk(), *(v7 + 504)) ? (v37 = v155) : (v37 = 0), ErrorLogLevelForModule = OSPFParse(&v159, &v158, v173, v10, 0, v37), ErrorLogLevelForModule >= 1))
  {
    v25 = v159;
    v26 = *(v159 + 1);
    *(v7 + 32) = v5;
    *(v7 + 760) = 0;
    v27 = v152;
    v147 = v26;
    if (v26 != 6)
    {
      if (v26 == 1 && (v25[1] & 1) != 0)
      {
        *(v7 + 48) = 1;
      }

      *&v176[14] = 0xAAAAAAAAAAAAAAAALL;
      *&v28 = 0xAAAAAAAAAAAAAAAALL;
      *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v175 = v28;
      *v176 = v28;
      v174 = v28;
      *(v164 + 14) = 0xAAAAAAAAAAAAAAAALL;
      v163 = v28;
      v164[0] = v28;
      v162 = v28;
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (ErrorLogLevelForModule >= 8)
      {
        v29 = VRTraceErrorLogLevelToCSTR();
        v30 = *MEMORY[0x277CE5818];
        v31 = *MEMORY[0x277CE5818];
        if (*MEMORY[0x277CE5808] == 1)
        {
          ErrorLogLevelForModule = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
          if (ErrorLogLevelForModule)
          {
            v32 = IPPORTToStringWithSize();
            v33 = v159[3];
            v34 = IPPORTToStringWithSize();
            v35 = v159[2];
            v161[0] = 136317186;
            *&v161[1] = v29;
            LOWORD(v161[3]) = 2080;
            *(&v161[3] + 2) = "gckSessionRecvMessage";
            HIWORD(v161[5]) = 1024;
            v161[6] = 3520;
            LOWORD(v161[7]) = 2080;
            *(&v161[7] + 2) = v32;
            v27 = v152;
            HIWORD(v161[9]) = 1024;
            v161[10] = v33;
            LOWORD(v161[11]) = 2080;
            *(&v161[11] + 2) = v34;
            HIWORD(v161[13]) = 1024;
            v161[14] = v35;
            LOWORD(v161[15]) = 1024;
            *(&v161[15] + 2) = v10;
            HIWORD(v161[16]) = 1024;
            v161[17] = v147;
            _os_log_impl(&dword_24E50C000, v30, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [%s] %08X <= [%s] %08X: %d bytes(%d)", v161, 0x48u);
          }
        }

        else
        {
          ErrorLogLevelForModule = os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG);
          if (ErrorLogLevelForModule)
          {
            v124 = IPPORTToStringWithSize();
            v125 = v159[3];
            v126 = IPPORTToStringWithSize();
            v127 = v159[2];
            v161[0] = 136317186;
            *&v161[1] = v29;
            LOWORD(v161[3]) = 2080;
            *(&v161[3] + 2) = "gckSessionRecvMessage";
            HIWORD(v161[5]) = 1024;
            v161[6] = 3520;
            LOWORD(v161[7]) = 2080;
            *(&v161[7] + 2) = v124;
            v27 = v152;
            HIWORD(v161[9]) = 1024;
            v161[10] = v125;
            LOWORD(v161[11]) = 2080;
            *(&v161[11] + 2) = v126;
            HIWORD(v161[13]) = 1024;
            v161[14] = v127;
            LOWORD(v161[15]) = 1024;
            *(&v161[15] + 2) = v10;
            HIWORD(v161[16]) = 1024;
            v161[17] = v147;
            _os_log_debug_impl(&dword_24E50C000, v30, OS_LOG_TYPE_DEBUG, " [%s] %s:%d [%s] %08X <= [%s] %08X: %d bytes(%d)", v161, 0x48u);
          }
        }
      }

      v25 = v159;
      v26 = v147;
    }

    v145 = &v143;
    v48 = v25 + 3;
    v49 = *v25 & 0xF;
    MEMORY[0x28223BE20](ErrorLogLevelForModule);
    v52 = &v143 - v51;
    if (!v49)
    {
      goto LABEL_91;
    }

    v143 = v10;
    v150 = v50;
    memset(&v143 - v51, 170, v50);
    v148 = 0;
    v153 = v49;
    v53 = v25 + 3;
    v54 = v52;
    do
    {
      v56 = *v53++;
      v55 = v56;
      if (v56 == *(v27 + 108))
      {
        v148 = 1;
        NextHop = 0xFFFFFFFFLL;
      }

      else
      {
        NextHop = gckSessionFindNextHop(v27, v55);
      }

      *v54++ = NextHop;
      --v49;
    }

    while (v49);
    v144 = v7;
    v58 = 0;
    v146 = v26 == 7;
    v59 = v25 + 4;
    v60 = v52 + 4;
    v61 = v153;
    v62 = v153 - 1;
    v151 = v48;
    v149 = v52;
    while (1)
    {
      v63 = *&v52[4 * v58];
      if (v63 != -1)
      {
        break;
      }

      ++v58;
LABEL_76:
      ++v59;
      v60 += 4;
      --v62;
      if (v58 == v61)
      {
        LODWORD(v10) = v143;
        v7 = v144;
        v27 = v152;
        if (v148)
        {
          switch(v26)
          {
            case 7:
              goto LABEL_81;
            case 6:
              v72 = *(v152 + 96);
              v73 = v159[2];
              v75 = *v158;
              v76 = v158[2];
              v74 = 5;
              goto LABEL_89;
            case 5:
LABEL_81:
              v72 = *(v152 + 96);
              v73 = v159[2];
              if (v26 == 7)
              {
                v74 = 6;
              }

              else
              {
                v74 = 4;
              }

              v75 = *v158;
              v76 = v158[2];
LABEL_89:
              PostEventCallback(v72, v73, v74, v75, v76, 0);
              break;
            default:
              gckSessionProcessOSPFPacket(v152, v144, v159, v158);
              break;
          }
        }

LABEL_91:
        v79 = v27 + 0x2000;
        if ((v156 & 1) == 0)
        {
          if (*(v79 + 272))
          {
            v81 = v10;
            if (VRTraceGetErrorLogLevelForModule() >= 8)
            {
              v87 = VRTraceErrorLogLevelToCSTR();
              v88 = *MEMORY[0x277CE5818];
              v89 = *MEMORY[0x277CE5818];
              if (*MEMORY[0x277CE5808] == 1)
              {
                if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
                {
                  v90 = *(v152 + 8468);
                  v91 = *(v152 + 8472);
                  v92 = *(v79 + 284);
                  v93 = *(v7 + 116);
                  v94 = *(v7 + 100);
                  v161[0] = 136317186;
                  *&v161[1] = v87;
                  LOWORD(v161[3]) = 2080;
                  *(&v161[3] + 2) = "BWE_TrackSeqInterruption";
                  HIWORD(v161[5]) = 1024;
                  v161[6] = 9053;
                  LOWORD(v161[7]) = 1024;
                  *(&v161[7] + 2) = v90;
                  HIWORD(v161[8]) = 1024;
                  v161[9] = v91;
                  LOWORD(v161[10]) = 1024;
                  *(&v161[10] + 2) = v92;
                  HIWORD(v161[11]) = 1024;
                  v161[12] = v93;
                  LOWORD(v161[13]) = 1024;
                  *(&v161[13] + 2) = v94;
                  HIWORD(v161[14]) = 2048;
                  *&v161[15] = v5;
                  _os_log_impl(&dword_24E50C000, v88, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ******* BWE_RCV: SEQ CUT (%d/%d, %d) with a non-probe pkt from %d/%d  @%.3f ", v161, 0x44u);
                }
              }

              else if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
              {
                v133 = *(v152 + 8468);
                v134 = *(v152 + 8472);
                v135 = *(v79 + 284);
                v136 = *(v7 + 116);
                v137 = *(v7 + 100);
                v161[0] = 136317186;
                *&v161[1] = v87;
                LOWORD(v161[3]) = 2080;
                *(&v161[3] + 2) = "BWE_TrackSeqInterruption";
                HIWORD(v161[5]) = 1024;
                v161[6] = 9053;
                LOWORD(v161[7]) = 1024;
                *(&v161[7] + 2) = v133;
                HIWORD(v161[8]) = 1024;
                v161[9] = v134;
                LOWORD(v161[10]) = 1024;
                *(&v161[10] + 2) = v135;
                HIWORD(v161[11]) = 1024;
                v161[12] = v136;
                LOWORD(v161[13]) = 1024;
                *(&v161[13] + 2) = v137;
                HIWORD(v161[14]) = 2048;
                *&v161[15] = v5;
                _os_log_debug_impl(&dword_24E50C000, v88, OS_LOG_TYPE_DEBUG, " [%s] %s:%d ******* BWE_RCV: SEQ CUT (%d/%d, %d) with a non-probe pkt from %d/%d  @%.3f ", v161, 0x44u);
              }
            }

            v109 = v152;
            BWE_EndCurrentSequence(v152);
            ++*(v109 + 8488);
            goto LABEL_122;
          }

          goto LABEL_131;
        }

        v80 = WORD1(v156);
        if (*(v79 + 272) == 1)
        {
          if (*(v7 + 116) == *(v152 + 8468) && *(v7 + 100) == *(v152 + 8472) && WORD1(v156) == *(v79 + 284))
          {
            v81 = v10;
            if (WORD2(v156) < 0x1000u)
            {
              if (VRTraceGetErrorLogLevelForModule() < 8)
              {
                goto LABEL_122;
              }

              v82 = VRTraceErrorLogLevelToCSTR();
              v83 = *MEMORY[0x277CE5818];
              v84 = *MEMORY[0x277CE5818];
              if (*MEMORY[0x277CE5808] == 1)
              {
                if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
                {
                  v85 = *(v7 + 116);
                  v161[0] = 136316418;
                  *&v161[1] = v82;
                  LOWORD(v161[3]) = 2080;
                  *(&v161[3] + 2) = "BWE_TrackSeqInterruption";
                  HIWORD(v161[5]) = 1024;
                  v161[6] = 9006;
                  LOWORD(v161[7]) = 1024;
                  *(&v161[7] + 2) = v85;
                  HIWORD(v161[8]) = 1024;
                  v161[9] = v80;
                  LOWORD(v161[10]) = 2048;
                  *(&v161[10] + 2) = v5;
                  v86 = " [%s] %s:%d ******* BWE_RCV: continuing the existing seq (%d): %d   @%.3f ";
                  goto LABEL_143;
                }

                goto LABEL_122;
              }

              if (!os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_122;
              }

              v130 = *(v7 + 116);
              v161[0] = 136316418;
              *&v161[1] = v82;
              LOWORD(v161[3]) = 2080;
              *(&v161[3] + 2) = "BWE_TrackSeqInterruption";
              HIWORD(v161[5]) = 1024;
              v161[6] = 9006;
              LOWORD(v161[7]) = 1024;
              *(&v161[7] + 2) = v130;
              HIWORD(v161[8]) = 1024;
              v161[9] = v80;
              LOWORD(v161[10]) = 2048;
              *(&v161[10] + 2) = v5;
              v131 = " [%s] %s:%d ******* BWE_RCV: continuing the existing seq (%d): %d   @%.3f ";
LABEL_148:
              _os_log_debug_impl(&dword_24E50C000, v83, OS_LOG_TYPE_DEBUG, v131, v161, 0x32u);
              goto LABEL_122;
            }

            *(v79 + 272) = 0;
            if (VRTraceGetErrorLogLevelForModule() < 8)
            {
              goto LABEL_122;
            }

            v121 = VRTraceErrorLogLevelToCSTR();
            v83 = *MEMORY[0x277CE5818];
            v122 = *MEMORY[0x277CE5818];
            if (*MEMORY[0x277CE5808] != 1)
            {
              if (!os_log_type_enabled(v122, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_122;
              }

              v132 = *(v7 + 116);
              v161[0] = 136316418;
              *&v161[1] = v121;
              LOWORD(v161[3]) = 2080;
              *(&v161[3] + 2) = "BWE_TrackSeqInterruption";
              HIWORD(v161[5]) = 1024;
              v161[6] = 9001;
              LOWORD(v161[7]) = 1024;
              *(&v161[7] + 2) = v132;
              HIWORD(v161[8]) = 1024;
              v161[9] = v80;
              LOWORD(v161[10]) = 2048;
              *(&v161[10] + 2) = v5;
              v131 = " [%s] %s:%d ******* BWE_RCV: last pkt of the existing seq (%d): %d   @%.3f ";
              goto LABEL_148;
            }

            if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
            {
              v123 = *(v7 + 116);
              v161[0] = 136316418;
              *&v161[1] = v121;
              LOWORD(v161[3]) = 2080;
              *(&v161[3] + 2) = "BWE_TrackSeqInterruption";
              HIWORD(v161[5]) = 1024;
              v161[6] = 9001;
              LOWORD(v161[7]) = 1024;
              *(&v161[7] + 2) = v123;
              HIWORD(v161[8]) = 1024;
              v161[9] = v80;
              LOWORD(v161[10]) = 2048;
              *(&v161[10] + 2) = v5;
              v86 = " [%s] %s:%d ******* BWE_RCV: last pkt of the existing seq (%d): %d   @%.3f ";
LABEL_143:
              _os_log_impl(&dword_24E50C000, v83, OS_LOG_TYPE_DEFAULT, v86, v161, 0x32u);
            }

LABEL_122:
            if (v156 == 1)
            {
              v110 = HIWORD(v156);
              *(v7 + 748) = HIWORD(v156);
              *(v7 + 596) = 125 * v110;
              *&v176[14] = 0xAAAAAAAAAAAAAAAALL;
              *&v111 = 0xAAAAAAAAAAAAAAAALL;
              *(&v111 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v175 = v111;
              *v176 = v111;
              v174 = v111;
              IPPORTToStringWithSize();
              if (VRTraceGetErrorLogLevelForModule() >= 8)
              {
                v112 = VRTraceErrorLogLevelToCSTR();
                v113 = *MEMORY[0x277CE5818];
                v114 = *MEMORY[0x277CE5818];
                if (*MEMORY[0x277CE5808] == 1)
                {
                  if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
                  {
                    v115 = *(v7 + 116);
                    v116 = *(v7 + 748);
                    v161[0] = 136317442;
                    *&v161[1] = v112;
                    LOWORD(v161[3]) = 2080;
                    *(&v161[3] + 2) = "BWE_UpdateEstimate";
                    HIWORD(v161[5]) = 1024;
                    v161[6] = 8874;
                    LOWORD(v161[7]) = 1024;
                    *(&v161[7] + 2) = v115;
                    HIWORD(v161[8]) = 2080;
                    *&v161[9] = &v174;
                    LOWORD(v161[11]) = 1024;
                    *(&v161[11] + 2) = v81;
                    HIWORD(v161[12]) = 2048;
                    *&v161[13] = v5;
                    LOWORD(v161[15]) = 1024;
                    *(&v161[15] + 2) = WORD1(v156);
                    HIWORD(v161[16]) = 1024;
                    v161[17] = WORD2(v156);
                    LOWORD(v161[18]) = 1024;
                    *(&v161[18] + 2) = v116;
                    _os_log_impl(&dword_24E50C000, v113, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ****************************************************\npBwOption (from %d %s): %d   @%.3f (%d %x) upstream BW: %d kbps\n****************************************************\n", v161, 0x4Eu);
                  }
                }

                else if (os_log_type_enabled(v114, OS_LOG_TYPE_DEBUG))
                {
                  v128 = *(v7 + 116);
                  v129 = *(v7 + 748);
                  v161[0] = 136317442;
                  *&v161[1] = v112;
                  LOWORD(v161[3]) = 2080;
                  *(&v161[3] + 2) = "BWE_UpdateEstimate";
                  HIWORD(v161[5]) = 1024;
                  v161[6] = 8874;
                  LOWORD(v161[7]) = 1024;
                  *(&v161[7] + 2) = v128;
                  HIWORD(v161[8]) = 2080;
                  *&v161[9] = &v174;
                  LOWORD(v161[11]) = 1024;
                  *(&v161[11] + 2) = v81;
                  HIWORD(v161[12]) = 2048;
                  *&v161[13] = v5;
                  LOWORD(v161[15]) = 1024;
                  *(&v161[15] + 2) = WORD1(v156);
                  HIWORD(v161[16]) = 1024;
                  v161[17] = WORD2(v156);
                  LOWORD(v161[18]) = 1024;
                  *(&v161[18] + 2) = v129;
                  _os_log_debug_impl(&dword_24E50C000, v113, OS_LOG_TYPE_DEBUG, " [%s] %s:%d ****************************************************\npBwOption (from %d %s): %d   @%.3f (%d %x) upstream BW: %d kbps\n****************************************************\n", v161, 0x4Eu);
                }
              }

              if (*(v7 + 736) != 0xFFFFFFFFLL)
              {
                *(v7 + 412);
                GCK_BWE_CalcRxEstimate();
              }
            }

LABEL_131:
            if (v159)
            {
              free(v159);
            }

            v47 = v158;
            if (v158)
            {
LABEL_134:
              free(v47);
            }

LABEL_135:
            v14 = 0;
            goto LABEL_136;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v101 = VRTraceErrorLogLevelToCSTR();
            v102 = *MEMORY[0x277CE5818];
            v103 = *MEMORY[0x277CE5818];
            if (*MEMORY[0x277CE5808] == 1)
            {
              if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
              {
                v104 = *(v152 + 8468);
                v105 = *(v152 + 8472);
                v106 = *(v79 + 284);
                v107 = *(v7 + 116);
                v108 = *(v7 + 100);
                v161[0] = 136317442;
                *&v161[1] = v101;
                LOWORD(v161[3]) = 2080;
                *(&v161[3] + 2) = "BWE_TrackSeqInterruption";
                HIWORD(v161[5]) = 1024;
                v161[6] = 9012;
                LOWORD(v161[7]) = 1024;
                *(&v161[7] + 2) = v104;
                HIWORD(v161[8]) = 1024;
                v161[9] = v105;
                LOWORD(v161[10]) = 1024;
                *(&v161[10] + 2) = v106;
                HIWORD(v161[11]) = 1024;
                v161[12] = v107;
                LOWORD(v161[13]) = 1024;
                *(&v161[13] + 2) = v108;
                HIWORD(v161[14]) = 1024;
                v161[15] = v80;
                LOWORD(v161[16]) = 2048;
                *(&v161[16] + 2) = v5;
                _os_log_impl(&dword_24E50C000, v102, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ******* BWE_RCV: SEQ OVERRIDE (%d/%d, %d) --> (%d/%d, %d)   @%.3f ", v161, 0x4Au);
              }
            }

            else if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
            {
              v138 = *(v152 + 8468);
              v139 = *(v152 + 8472);
              v140 = *(v79 + 284);
              v141 = *(v7 + 116);
              v142 = *(v7 + 100);
              v161[0] = 136317442;
              *&v161[1] = v101;
              LOWORD(v161[3]) = 2080;
              *(&v161[3] + 2) = "BWE_TrackSeqInterruption";
              HIWORD(v161[5]) = 1024;
              v161[6] = 9012;
              LOWORD(v161[7]) = 1024;
              *(&v161[7] + 2) = v138;
              HIWORD(v161[8]) = 1024;
              v161[9] = v139;
              LOWORD(v161[10]) = 1024;
              *(&v161[10] + 2) = v140;
              HIWORD(v161[11]) = 1024;
              v161[12] = v141;
              LOWORD(v161[13]) = 1024;
              *(&v161[13] + 2) = v142;
              HIWORD(v161[14]) = 1024;
              v161[15] = v80;
              LOWORD(v161[16]) = 2048;
              *(&v161[16] + 2) = v5;
              _os_log_debug_impl(&dword_24E50C000, v102, OS_LOG_TYPE_DEBUG, " [%s] %s:%d ******* BWE_RCV: SEQ OVERRIDE (%d/%d, %d) --> (%d/%d, %d)   @%.3f ", v161, 0x4Au);
            }
          }

          v81 = v10;
          v95 = v152;
          BWE_EndCurrentSequence(v152);
          v95[1060] = vadd_s32(v95[1060], 0x100000001);
        }

        else
        {
          v81 = v10;
          if (WORD2(v156) > 0xFFFu)
          {
            goto LABEL_122;
          }

          v95 = v152;
          ++*(v152 + 8480);
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v96 = VRTraceErrorLogLevelToCSTR();
            v97 = *MEMORY[0x277CE5818];
            v98 = *MEMORY[0x277CE5818];
            if (*MEMORY[0x277CE5808] == 1)
            {
              v99 = os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT);
              v95 = v152;
              if (v99)
              {
                v100 = *(v7 + 116);
                v161[0] = 136316418;
                *&v161[1] = v96;
                LOWORD(v161[3]) = 2080;
                *(&v161[3] + 2) = "BWE_TrackSeqInterruption";
                HIWORD(v161[5]) = 1024;
                v161[6] = 9035;
                LOWORD(v161[7]) = 1024;
                *(&v161[7] + 2) = v100;
                HIWORD(v161[8]) = 1024;
                v161[9] = v80;
                LOWORD(v161[10]) = 2048;
                *(&v161[10] + 2) = v5;
                _os_log_impl(&dword_24E50C000, v97, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ******* BWE_RCV: NEW SEQ (%d, %d) @%.3f ", v161, 0x32u);
              }
            }

            else
            {
              v119 = os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG);
              v95 = v152;
              if (v119)
              {
                v120 = *(v7 + 116);
                v161[0] = 136316418;
                *&v161[1] = v96;
                LOWORD(v161[3]) = 2080;
                *(&v161[3] + 2) = "BWE_TrackSeqInterruption";
                HIWORD(v161[5]) = 1024;
                v161[6] = 9035;
                LOWORD(v161[7]) = 1024;
                *(&v161[7] + 2) = v120;
                HIWORD(v161[8]) = 1024;
                v161[9] = v80;
                LOWORD(v161[10]) = 2048;
                *(&v161[10] + 2) = v5;
                _os_log_debug_impl(&dword_24E50C000, v97, OS_LOG_TYPE_DEBUG, " [%s] %s:%d ******* BWE_RCV: NEW SEQ (%d, %d) @%.3f ", v161, 0x32u);
              }
            }
          }
        }

        *(v79 + 272) = 1;
        v95[1058].i32[1] = *(v7 + 116);
        v95[1059].i32[0] = *(v7 + 100);
        *(v79 + 284) = v80;
        goto LABEL_122;
      }
    }

    v154 = &v143;
    MEMORY[0x28223BE20](NextHop);
    v65 = (&v143 - v64);
    NextHop = memset(&v143 - v64, 170, v66);
    v61 = v153;
    *v65 = v48[v58++];
    v67 = 1;
    if (v58 < v61)
    {
      v68 = v62;
      v69 = v60;
      v70 = v59;
      do
      {
        if (*v69 == v63)
        {
          v65[v67] = *v70;
          v67 = (v67 + 1);
          *v69 = -1;
        }

        ++v70;
        v69 += 4;
        --v68;
      }

      while (v68);
    }

    if (v26 != 7)
    {
      if (v26 == 6)
      {
        memset(v161, 170, sizeof(v161));
        NextHop = OSPFMakeAudio(v161, 4096, v158, 0, v159[2], v65, v67);
        if (NextHop >= 1)
        {
          NextHop = SendUDPPacketToParticipantChannelID(v152, v161, NextHop, v63, 0, -1, 2);
        }

        goto LABEL_74;
      }

      if (v26 != 5)
      {
LABEL_75:
        v48 = v151;
        v52 = v149;
        goto LABEL_76;
      }
    }

    memset(v161, 170, sizeof(v161));
    v71 = v152;
    NextHop = OSPFMakeData(v161, 4096, v158, 0, v146, v159[2], v65, v67, *(*(v152 + 96) + 24), *(*(v152 + 96) + 32), 0x40u, 0, 0);
    if (NextHop >= 1)
    {
      NextHop = SendUDPPacketToParticipantChannelID(v71, v161, NextHop, v63, 0, -1, 1);
    }

    v26 = v147;
LABEL_74:
    v61 = v153;
    goto LABEL_75;
  }

  if (!ErrorLogLevelForModule)
  {
    v46 = v159;
    if (*(v159 + 1) != 1 || (gckSessionProcessHello(v152, v7, v158, 0), (v46 = v159) != 0))
    {
      free(v46);
    }

    v47 = v158;
    if (v158)
    {
      goto LABEL_134;
    }

    goto LABEL_135;
  }

  v38 = malloc_type_calloc(1uLL, 0x1070uLL, 0x10200407CC26935uLL);
  if (v38)
  {
    v39 = v38;
    v38[1026] = *(v7 + 116);
    __memcpy_chk();
    v39[1025] = v10;
    v40 = *v172;
    *(v39 + 1027) = v171;
    *(v39 + 1031) = v40;
    *(v39 + 1035) = *&v172[16];
    v41 = v169;
    *(v39 + 1037) = v168;
    *(v39 + 1041) = v41;
    *(v39 + 1045) = v170;
    *(v39 + 524) = v5;
    v42 = v152;
    pthread_mutex_lock((v152 + 8112));
    v43 = (v152 + 8104);
    do
    {
      v44 = v43;
      v45 = *v43;
      v43 = (*v43 + 4200);
    }

    while (v45);
    *v44 = v39;
    pthread_cond_broadcast((v42 + 8176));
    pthread_mutex_unlock((v42 + 8112));
    goto LABEL_135;
  }

  v14 = 2149187587;
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v77 = VRTraceErrorLogLevelToCSTR();
    v78 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v161[0] = 136316418;
      *&v161[1] = v77;
      LOWORD(v161[3]) = 2080;
      *(&v161[3] + 2) = "gckSessionRecvMessage";
      HIWORD(v161[5]) = 1024;
      v161[6] = 3633;
      LOWORD(v161[7]) = 1024;
      *(&v161[7] + 2) = 3633;
      HIWORD(v161[8]) = 1024;
      v161[9] = 4208;
      LOWORD(v161[10]) = 1024;
      *(&v161[10] + 2) = -2145779709;
      v18 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/GameKitServices.subproj/Sources/Gecko/GCKSession.c:%d: calloc(%d) failed(%X)";
      v19 = v78;
      goto LABEL_9;
    }
  }

LABEL_136:
  v117 = *MEMORY[0x277D85DE8];
  return v14;
}