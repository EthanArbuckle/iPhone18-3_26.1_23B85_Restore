uint64_t BrotliEncoderSetParameter(uint64_t a1, int a2, unsigned int a3)
{
  if (*(a1 + 6972))
  {
    return 0;
  }

  result = 0;
  if (a2 > 4)
  {
    if (a2 <= 6)
    {
      if (a2 == 5)
      {
        *(a1 + 24) = a3;
      }

      else
      {
        *(a1 + 36) = a3 != 0;
      }

      return 1;
    }

    if (a2 == 7)
    {
      *(a1 + 56) = a3;
      return 1;
    }

    if (a2 == 8)
    {
      *(a1 + 60) = a3;
      return 1;
    }

    if (a2 != 9)
    {
      return result;
    }

    if (a3 <= 0x40000000)
    {
      *(a1 + 16) = a3;
      return 1;
    }

    return 0;
  }

  if (a2 > 1)
  {
    if (a2 == 2)
    {
      *(a1 + 8) = a3;
      return 1;
    }

    if (a2 == 3)
    {
      *(a1 + 12) = a3;
      return 1;
    }

    if (a3 <= 1)
    {
      *(a1 + 32) = a3;
      return 1;
    }

    return 0;
  }

  if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    *(a1 + 4) = a3;
  }

  else
  {
    *a1 = a3;
  }

  return 1;
}

void *(**BrotliEncoderCreateInstance(void *(*a1)(int a1, size_t size), void (*a2)(int a1, void *a2), void *(*a3)(int a1, size_t size)))(int a1, size_t size)
{
  v6 = BrotliBootstrapAlloc(0x1B40uLL, a1, a2, a3);
  v7 = v6;
  if (v6)
  {
    BrotliInitMemoryManager(v6 + 175, a1, a2, a3);
    *(v7 + 9) = 0;
    *v7 = 0xB00000000;
    *(v7 + 2) = 22;
    *(v7 + 12) = 0;
    *(v7 + 28) = 0;
    *(v7 + 20) = 0;
    BrotliInitSharedEncoderDictionary((v7 + 10));
    *(v7 + 7) = xmmword_1AB4CD520;
    v7[9] = 67108860;
    v7[178] = 0;
    *(v7 + 806) = 0;
    *(v7 + 1741) = 0;
    v7[871] = 0;
    *(v7 + 181) = 0u;
    *(v7 + 183) = 0u;
    *(v7 + 185) = 0u;
    *(v7 + 187) = 0u;
    *(v7 + 189) = 0u;
    *(v7 + 101) = 0u;
    *(v7 + 102) = 0u;
    *(v7 + 103) = 0u;
    *(v7 + 416) = 0;
    *(v7 + 429) = 0u;
    *(v7 + 430) = 0u;
    *(v7 + 431) = 0u;
    *(v7 + 432) = 0u;
    *(v7 + 433) = 0u;
    *(v7 + 191) = xmmword_1AB4CD530;
    *(v7 + 199) = *(v7 + 191);
  }

  return v7;
}

uint64_t BrotliEncoderDestroyInstance(uint64_t result)
{
  if (result)
  {
    v1 = result;
    BrotliFree(result + 1400);
    v1[203] = 0;
    BrotliFree((v1 + 175));
    v1[185] = 0;
    BrotliFree((v1 + 175));
    v1[182] = 0;
    if (v1[204])
    {
      BrotliFree((v1 + 175));
      v1[204] = 0;
    }

    if (v1[205])
    {
      BrotliFree((v1 + 175));
      v1[205] = 0;
    }

    if (v1[206])
    {
      BrotliFree((v1 + 175));
      v1[206] = 0;
    }

    if (v1[207])
    {
      BrotliFree((v1 + 175));
      v1[207] = 0;
    }

    BrotliFree((v1 + 175));
    v1[858] = 0;
    BrotliFree((v1 + 175));
    v1[860] = 0;
    BrotliFree((v1 + 175));
    v1[861] = 0;
    BrotliFree((v1 + 175));
    v1[862] = 0;
    BrotliFree((v1 + 175));
    v1[863] = 0;
    BrotliCleanupSharedEncoderDictionary((v1 + 175), (v1 + 10));

    return BrotliBootstrapFree(v1, (v1 + 175));
  }

  return result;
}

uint64_t BrotliEncoderMaxCompressedSize(unint64_t a1)
{
  v1 = a1 + 4 * (a1 >> 14) + 6;
  if (v1 < a1)
  {
    v1 = 0;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 2;
  }
}

uint64_t BrotliEncoderCompress(int a1, int a2, int a3, unint64_t a4, char *a5, unint64_t *a6, _WORD *a7)
{
  v9 = *a6;
  if (a4)
  {
    v10 = a4;
    if (a4 + 4 * (a4 >> 14) + 6 >= a4)
    {
      v11 = a4 + 4 * (a4 >> 14) + 6;
    }

    else
    {
      v11 = 0;
    }

    if (v9)
    {
      result = BrotliEncoderCreateInstance(0, 0, 0);
      if (!result)
      {
        return result;
      }

      v17 = result;
      v33 = a5;
      v34 = v10;
      v18 = *a6;
      v31 = a7;
      v32 = v18;
      v30 = 0;
      if (!*(result + 6972))
      {
        *(result + 4) = a1;
        *(result + 8) = a2;
        *result = a3;
        *(result + 24) = v10;
        if (a2 >= 25)
        {
          *(result + 36) = 1;
        }
      }

      v19 = BrotliEncoderCompressStream(result, 2, &v34, &v33, &v32, &v31, &v30);
      if (*(v17 + 6964) == 2 && !*(v17 + 6928))
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      *a6 = v30;
      BrotliEncoderDestroyInstance(v17);
      if (v20 && (!v11 || *a6 <= v11))
      {
        return 1;
      }

      *a6 = 0;
      if (v11 - 1 < v9)
      {
        v21 = 0;
        *a7 = 801;
        v22 = 2;
        do
        {
          if (v10 >= 0x1000000)
          {
            v23 = 0x1000000;
          }

          else
          {
            v23 = v10;
          }

          if (v10 <= 0x100000)
          {
            v24 = 1;
          }

          else
          {
            v24 = 2;
          }

          if (v10 <= 0x10000)
          {
            v24 = 0;
          }

          v25 = 8 * v23 - 8;
          v26 = v25 | (2 * v24);
          v27 = v26 | (0x80000 << (4 * v24));
          v28 = a7 + v22;
          *v28 = v26;
          v28[1] = BYTE1(v25);
          v29 = v22 + 3;
          v28[2] = BYTE2(v27);
          if (v10 > 0x100000)
          {
            *(a7 + v29) = HIBYTE(v27);
            v29 = v22 + 4;
          }

          memcpy(a7 + v29, &a5[v21], v23);
          v22 = v29 + v23;
          v21 += v23;
          v10 -= v23;
        }

        while (v10);
        *(a7 + v22) = 3;
        *a6 = v22 + 1;
        return 1;
      }
    }
  }

  else if (v9)
  {
    result = 1;
    *a6 = 1;
    *a7 = 6;
    return result;
  }

  return 0;
}

uint64_t BrotliEncoderCompressStream(uint64_t a1, int a2, unint64_t *a3, const void **a4, size_t *a5, void **a6, size_t *a7)
{
  if (*(a1 + 6972))
  {
    goto LABEL_39;
  }

  *(a1 + 1608) = -33554432;
  *(a1 + 6960) = -1;
  v13 = *(a1 + 4);
  v14 = v13 & ~(v13 >> 31);
  if (v14 >= 11)
  {
    v14 = 11;
  }

  *(a1 + 4) = v14;
  if (v13 <= 2)
  {
    *(a1 + 36) = 0;
  }

  v15 = *(a1 + 8);
  if (v15 < 10)
  {
    v16 = 10;
LABEL_12:
    *(a1 + 8) = v16;
    v15 = v16;
    goto LABEL_13;
  }

  if (*(a1 + 36))
  {
    v16 = 30;
  }

  else
  {
    v16 = 24;
  }

  if (v15 > v16)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (v13 >= 2)
  {
    if (v13 >= 4)
    {
      v37 = *(a1 + 12);
      if (v37)
      {
        if (v37 <= 16)
        {
          v38 = 16;
        }

        else
        {
          v38 = *(a1 + 12);
        }

        if (v38 >= 24)
        {
          v39 = 24;
        }

        else
        {
          v39 = v38;
        }
      }

      else
      {
        v39 = 16;
        if (v13 >= 9)
        {
          if (v15 >= 0x12)
          {
            v61 = 18;
          }

          else
          {
            v61 = v15;
          }

          if (v61 <= 0x10)
          {
            v39 = 16;
          }

          else
          {
            v39 = v61;
          }
        }
      }

      *(a1 + 12) = v39;
      if (*a1 == 2)
      {
        v18 = 12;
        v17 = 1;
      }

      else
      {
        v17 = *(a1 + 56);
        v18 = *(a1 + 60);
      }

      if (v17 > 3 || v18 > 0x78 || ((v18 >> v17) & 0xF) << v17 != v18)
      {
        v17 = 0;
        v18 = 0;
      }

      goto LABEL_17;
    }

    v15 = 14;
  }

  v17 = 0;
  v18 = 0;
  *(a1 + 12) = v15;
LABEL_17:
  BrotliInitDistanceParams(a1 + 56, v17, v18, *(a1 + 36));
  v19 = *(a1 + 16);
  if (v19)
  {
    *(a1 + 1611) = 2;
    *&v20 = 0xF0000000FLL;
    *(&v20 + 1) = 0xF0000000FLL;
    *(a1 + 1528) = v20;
    *(a1 + 1592) = *(a1 + 1528);
  }

  v22 = *(a1 + 8);
  v21 = *(a1 + 12);
  v23 = *(a1 + 4);
  if (v22 <= v21)
  {
    v24 = *(a1 + 12);
  }

  else
  {
    v24 = *(a1 + 8);
  }

  v25 = 1 << (v24 + 1);
  *(a1 + 1436) = v25 - 1;
  *(a1 + 1432) = v25;
  v26 = 1 << v21;
  *(a1 + 1440) = v26;
  *(a1 + 1444) = v25 + v26;
  if (v22 <= 18)
  {
    v27 = 18;
  }

  else
  {
    v27 = v22;
  }

  if (v23 >= 2)
  {
    v27 = v22;
  }

  if (v19)
  {
    v28 = (1 << v27) - 16;
    if (v19 >= v28)
    {
      v19 = v28;
    }

    *(a1 + 16) = v19;
  }

  else
  {
    if (*(a1 + 36))
    {
      v29 = ((v27 & 0x3F) << 8) | 0x11;
      v30 = 14;
    }

    else if (v27 == 16)
    {
      v29 = 0;
      v30 = 1;
    }

    else if (v27 == 17)
    {
      v30 = 7;
      v29 = 1;
    }

    else if (v27 < 18)
    {
      v29 = 16 * v27 - 127;
      v30 = 7;
    }

    else
    {
      v29 = 2 * v27 - 33;
      v30 = 4;
    }

    *(a1 + 1608) = v29;
    *(a1 + 1610) = v30;
  }

  if (v23 == 1)
  {
    *(a1 + 6888) = BrotliAllocate(a1 + 1400);
  }

  else if (!v23)
  {
    v31 = BrotliAllocate(a1 + 1400);
    *(a1 + 6880) = v31;
    *(v31 + 800) = xmmword_1AB4CD5A0;
    *(v31 + 816) = unk_1AB4CD5B0;
    *(v31 + 768) = InitCommandPrefixCodes_kDefaultCommandDepths;
    *(v31 + 784) = unk_1AB4CD590;
    *(v31 + 864) = xmmword_1AB4CD5E0;
    *(v31 + 880) = unk_1AB4CD5F0;
    *(v31 + 832) = xmmword_1AB4CD5C0;
    *(v31 + 848) = unk_1AB4CD5D0;
    *(v31 + 928) = xmmword_1AB4CD620;
    *(v31 + 944) = unk_1AB4CD630;
    *(v31 + 896) = InitCommandPrefixCodes_kDefaultCommandBits;
    *(v31 + 912) = unk_1AB4CD610;
    *(v31 + 992) = xmmword_1AB4CD660;
    *(v31 + 1008) = unk_1AB4CD670;
    *(v31 + 960) = xmmword_1AB4CD640;
    *(v31 + 976) = unk_1AB4CD650;
    *(v31 + 1072) = unk_1AB4CD6B0;
    *(v31 + 1056) = xmmword_1AB4CD6A0;
    *(v31 + 1040) = unk_1AB4CD690;
    *(v31 + 1024) = xmmword_1AB4CD680;
    *(v31 + 1136) = unk_1AB4CD6F0;
    *(v31 + 1120) = xmmword_1AB4CD6E0;
    *(v31 + 1104) = unk_1AB4CD6D0;
    *(v31 + 1088) = xmmword_1AB4CD6C0;
    *(v31 + 1664) = InitCommandPrefixCodes_kDefaultCommandCode;
    *(v31 + 1680) = unk_1AB4CD710;
    *(v31 + 1696) = xmmword_1AB4CD720;
    *(v31 + 1705) = *(&xmmword_1AB4CD720 + 9);
    *(v31 + 2176) = 448;
  }

  *(a1 + 6972) = 1;
LABEL_39:
  v32 = *(a1 + 6960);
  if (v32 != -1)
  {
    result = 0;
    if (a2 != 3 || *a3 != v32)
    {
      return result;
    }

LABEL_44:
    if (!*(a1 + 24))
    {
      v34 = *(a1 + 1424) - *(a1 + 1520);
      if (v34 >= 0x40000000)
      {
        v34 = 0x40000000;
      }

      *(a1 + 24) = v34;
    }

    if (*a3 <= 0x1000000)
    {
      v35 = *(a1 + 6964);
      if (!v35)
      {
        *(a1 + 6960) = *a3;
        *(a1 + 6964) = 3;
LABEL_64:
        v40 = (a1 + 6944);
        while (1)
        {
          while (1)
          {
            while (1)
            {
                ;
              }

              if (*(a1 + 6928))
              {
                return 1;
              }

              if (*(a1 + 1424) == *(a1 + 1512))
              {
                break;
              }

              result = EncodeData(a1, 0, 1, (a1 + 6928), (a1 + 6920), v41, v42, v43, v44, v45, v46);
              if (!result)
              {
                return result;
              }
            }

            if (*(a1 + 6964) == 3)
            {
              break;
            }

            v53 = *(a1 + 6960);
            if (!v53)
            {
              *(a1 + 6960) = 0xFFFFFFFFLL;
              return 1;
            }

            if (*a5)
            {
              if (v53 >= *a5)
              {
                v54 = *a5;
              }

              else
              {
                v54 = *(a1 + 6960);
              }

              memcpy(*a6, *a4, v54);
              *a4 = *a4 + v54;
              *a3 -= v54;
              *(a1 + 6912) += v54;
              *(a1 + 6960) -= v54;
              *a6 = *a6 + v54;
              *a5 -= v54;
            }

            else
            {
              if (v53 >= 0x10)
              {
                v55 = 16;
              }

              else
              {
                v55 = v53;
              }

              *(a1 + 6920) = v40;
              memcpy((a1 + 6944), *a4, v55);
              *a4 = *a4 + v55;
              *a3 -= v55;
              *(a1 + 6912) += v55;
              *(a1 + 6960) -= v55;
              *(a1 + 6928) = v55;
            }
          }

          *(a1 + 6920) = v40;
          v47 = *(a1 + 6960);
          v48 = *(a1 + 1610);
          *v40 = *(a1 + 1608);
          *(a1 + 1608) = 0;
          *(v40 + (v48 >> 3)) = *(v40 + (v48 >> 3));
          *(v40 + ((v48 + 1) >> 3)) = (3 << ((v48 + 1) & 7)) | *(v40 + ((v48 + 1) >> 3));
          v49 = (v48 + 3) >> 3;
          v50 = *(v40 + v49);
          *(a1 + 1610) = 0;
          *(v40 + v49) = v50;
          v51 = (v48 + 4) >> 3;
          if (v47 == 1)
          {
            v56 = 1;
          }

          else
          {
            if (!v47)
            {
              *(v40 + v51) = *(v40 + v51);
              v52 = v48 + 6;
              goto LABEL_87;
            }

            v56 = ((__clz(v47 - 1) ^ 0x18) + 8) >> 3;
          }

          *(v40 + v51) = (v56 << ((v48 + 4) & 7)) | *(v40 + v51);
          v57 = v48 + 6;
          *(v40 + (v57 >> 3)) = ((v47 - 1) << (v57 & 7)) | *(v40 + (v57 >> 3));
          v52 = v57 + 8 * v56;
LABEL_87:
          *(a1 + 6928) = (v52 + 7) >> 3;
          *(a1 + 6964) = 4;
        }
      }

      if ((v35 - 3) <= 1)
      {
        goto LABEL_64;
      }
    }

    return 0;
  }

  if (a2 == 3)
  {
    goto LABEL_44;
  }

  v36 = *(a1 + 6964);
  if ((v36 - 3) < 2 || v36 && *a3)
  {
    return 0;
  }

  v58 = *(a1 + 4);
  v132 = a2;
  if (v58 < 2)
  {
    v59 = 1 << *(a1 + 8);
    if (*a3 >= v59)
    {
      v60 = 1 << *(a1 + 8);
    }

    else
    {
      v60 = *a3;
    }

    if (v58 == 1)
    {
      v128 = *(a1 + 6896);
      if (!v128 && v60 >> 17)
      {
        *(a1 + 6896) = BrotliAllocate(a1 + 1400);
        __dst = BrotliAllocate(a1 + 1400);
        *(a1 + 6904) = __dst;
        v128 = *(a1 + 6896);
        if (v128)
        {
          goto LABEL_200;
        }

        goto LABEL_198;
      }

      if (v128)
      {
        __dst = *(a1 + 6904);
LABEL_200:
        v129 = a2 - 1;
        if (a2 == 2)
        {
          v113 = 2;
        }

        else
        {
          v113 = 1;
        }

        v127 = v113;
        v130 = v59;
        while (1)
        {
            ;
          }

          if (*(a1 + 6928) || *(a1 + 6964) || (v114 = *a3, !a2) && !v114)
          {
            BrotliFree(a1 + 1400);
            BrotliFree(a1 + 1400);
            if (*(a1 + 6964) == 1 && !*(a1 + 6928))
            {
LABEL_238:
              *(a1 + 6964) = 0;
              *(a1 + 6920) = 0;
            }

            return 1;
          }

          if (v59 >= v114)
          {
            v115 = *a3;
          }

          else
          {
            v115 = v59;
          }

          v117 = a2 == 2 && v114 <= v59;
          v135 = *(a1 + 1610);
          v134 = 0;
          if (a2 == 1 && !v114)
          {
            v118 = 1;
            goto LABEL_233;
          }

          v119 = 2 * v115 + 503;
          v131 = *a5;
          v120 = v119 > *a5 ? GetBrotliStorage(a1, 2 * v115 + 503) : *a6;
          *v120 = *(a1 + 1608);
          v120[1] = *(a1 + 1609);
          HashTable = GetHashTable(a1, *(a1 + 4), v115, &v134);
          v122 = *a4;
          if (!*(a1 + 4))
          {
            break;
          }

          BrotliCompressFragmentTwoPass(*(a1 + 6888), v122, v115, v117, v128, __dst, HashTable, v134, &v135, v120);
          if (v114)
          {
            goto LABEL_226;
          }

LABEL_227:
          v123 = v135;
          v124 = v135 >> 3;
          if (v119 <= v131)
          {
            *a6 = *a6 + v124;
            *a5 -= v124;
            v125 = *(a1 + 6936) + v124;
            *(a1 + 6936) = v125;
            a2 = v132;
            if (a7)
            {
              *a7 = v125;
            }
          }

          else
          {
            *(a1 + 6920) = v120;
            *(a1 + 6928) = v124;
            a2 = v132;
          }

          *(a1 + 1608) = v120[v124];
          *(a1 + 1610) = v123 & 7;
          v59 = v130;
          if (v129 <= 1)
          {
            v118 = v127;
            if (v114 <= v130)
            {
LABEL_233:
              *(a1 + 6964) = v118;
            }
          }
        }

        BrotliCompressFragmentFast(*(a1 + 6880), v122, v115, v117, HashTable, v134, &v135, v120);
        if (!v114)
        {
          goto LABEL_227;
        }

LABEL_226:
        *a4 = *a4 + v115;
        *a3 -= v115;
        *(a1 + 6912) += v115;
        goto LABEL_227;
      }

      if (*a3)
      {
LABEL_198:
        v112 = BrotliAllocate(a1 + 1400);
        __dst = BrotliAllocate(a1 + 1400);
        v128 = v112;
        goto LABEL_200;
      }
    }

    __dst = 0;
    v128 = 0;
    goto LABEL_200;
  }

  while (1)
  {
    while (1)
    {
      while (1)
      {
        v62 = *(a1 + 1424) - *(a1 + 1520);
        v63 = 1 << *(a1 + 12);
        v64 = v63 >= v62;
        v65 = v63 - v62;
        if (!v64)
        {
          v65 = 0;
        }

        v66 = *(a1 + 1611);
        v67 = v66;
        if (v65 < v66)
        {
          v66 = v65;
        }

        v68 = v67 >= 0 ? v66 : v65;
        if (!v68 || !*a3)
        {
          break;
        }

        if (v68 >= *a3)
        {
          v69 = *a3;
        }

        else
        {
          v69 = v68;
        }

        v70 = *a4;
        v71 = *(a1 + 1452);
        if (v71 || v69 >= *(a1 + 1440))
        {
          v84 = *(a1 + 1444);
          if (*(a1 + 1448) < v84)
          {
            v85 = BrotliAllocate(a1 + 1400);
            v86 = v85;
            v87 = *(a1 + 1456);
            if (v87)
            {
              memcpy(v85, v87, (*(a1 + 1448) + 2) + 7);
              BrotliFree(a1 + 1400);
            }

            v88 = 0;
            *(a1 + 1456) = v86;
            *(a1 + 1448) = v84;
            *(a1 + 1464) = v86 + 2;
            v86[1] = 0;
            *(*(a1 + 1464) - 2) = 0;
            do
            {
              *(*(a1 + 1464) + *(a1 + 1448) + v88++) = 0;
            }

            while (v88 != 7);
            *(*(a1 + 1464) + (*(a1 + 1432) - 2)) = 0;
            *(*(a1 + 1464) + (*(a1 + 1432) - 1)) = 0;
            *(*(a1 + 1464) + *(a1 + 1432)) = -15;
            v71 = *(a1 + 1452);
          }

          v89 = *(a1 + 1436) & v71;
          v90 = *(a1 + 1440);
          v91 = *(a1 + 1432);
          if (v89 < v90)
          {
            v107 = *(a1 + 1464) + v91;
            v108 = v90 - v89;
            if (v69 >= v108)
            {
              v109 = v108;
            }

            else
            {
              v109 = v69;
            }

            memcpy((v107 + v89), v70, v109);
            v91 = *(a1 + 1432);
          }

          v92 = *(a1 + 1464);
          if (v69 + v89 > v91)
          {
            if (v69 >= *(a1 + 1444) - v89)
            {
              v110 = *(a1 + 1444) - v89;
            }

            else
            {
              v110 = v69;
            }

            memcpy((v92 + v89), v70, v110);
            v93 = *(a1 + 1464);
            v111 = *(a1 + 1432) - v89;
            v95 = v69 - v111;
            v94 = &v70[v111];
          }

          else
          {
            v93 = (v92 + v89);
            v94 = v70;
            v95 = v69;
          }

          memcpy(v93, v94, v95);
          v96 = *(a1 + 1452);
          *(*(a1 + 1464) - 2) = *(*(a1 + 1464) + (*(a1 + 1432) - 2));
          *(*(a1 + 1464) - 1) = *(*(a1 + 1464) + (*(a1 + 1432) - 1));
          v76 = ((*(a1 + 1452) & 0x7FFFFFFF) + (v69 & 0x7FFFFFFF)) | v96 & 0x80000000;
          *(a1 + 1452) = v76;
        }

        else
        {
          *(a1 + 1452) = v69;
          v72 = BrotliAllocate(a1 + 1400);
          v73 = v72;
          v74 = *(a1 + 1456);
          if (v74)
          {
            memcpy(v72, v74, (*(a1 + 1448) + 2) + 7);
            BrotliFree(a1 + 1400);
          }

          v75 = 0;
          *(a1 + 1456) = v73;
          *(a1 + 1448) = v69;
          *(a1 + 1464) = v73 + 2;
          v73[1] = 0;
          *(*(a1 + 1464) - 2) = 0;
          do
          {
            *(*(a1 + 1464) + *(a1 + 1448) + v75++) = 0;
          }

          while (v75 != 7);
          memcpy(*(a1 + 1464), v70, v69);
          v76 = *(a1 + 1452);
        }

        *(a1 + 1424) += v69;
        if (v76 <= *(a1 + 1436))
        {
          v97 = (*(a1 + 1464) + v76);
          *(v97 + 3) = 0;
          *v97 = 0;
        }

        *a4 = *a4 + v69;
        *a3 -= v69;
        *(a1 + 6912) += v69;
        v98 = *(a1 + 1611);
        if (v98 >= 1)
        {
          *(a1 + 1611) = v98 - v69;
        }
      }

      if (!InjectFlushOrPushOutput(a1, a5, a6, a7))
      {
        break;
      }

      if (*(a1 + 1611) == 255)
      {
        v83 = *(a1 + 6964);
        if (!v83)
        {
          goto LABEL_139;
        }

        if (v83 == 1 && !*(a1 + 6928))
        {
          *(a1 + 6964) = 0;
          *(a1 + 6920) = 0;
LABEL_139:
          *(a1 + 1611) = -2;
        }
      }
    }

    if (*(a1 + 6928))
    {
      return 1;
    }

    v99 = *(a1 + 6964);
    if (v99)
    {
      if (v99 == 1)
      {
        goto LABEL_238;
      }

      return 1;
    }

    if (!v132 && v68)
    {
      return 1;
    }

    v100 = *a3;
    if (*a3)
    {
      v101 = 0;
    }

    else
    {
      v101 = v132 == 2;
    }

    if (*a3)
    {
      v102 = 0;
    }

    else
    {
      v102 = v132 == 1;
    }

    if (!v101 && !*(a1 + 1611))
    {
      *(a1 + 1611) = -1;
      v102 = 1;
    }

    if (!*(a1 + 24))
    {
      v103 = *(a1 + 1424) - *(a1 + 1520);
      v104 = v103 | v100;
      v105 = v103 + v100;
      if (v105 >= 0x40000000)
      {
        v105 = 0x40000000;
      }

      if (v104 >> 30)
      {
        v105 = 0x40000000;
      }

      *(a1 + 24) = v105;
    }

    result = EncodeData(a1, v101, v102, (a1 + 6928), (a1 + 6920), v77, v78, v79, v80, v81, v82);
    if (!result)
    {
      return result;
    }

    if (v101 || v102)
    {
      if (v101)
      {
        v106 = 2;
      }

      else
      {
        v106 = 1;
      }

      *(a1 + 6964) = v106;
    }
  }
}

uint64_t InjectFlushOrPushOutput(uint64_t a1, size_t *a2, void **a3, size_t *a4)
{
  if (*(a1 + 6964) == 1 && (v8 = *(a1 + 1610), *(a1 + 1610)))
  {
    v9 = *(a1 + 1608);
    *(a1 + 1608) = 0;
    *(a1 + 1610) = 0;
    v10 = (6 << v8) | v9;
    v11 = *(a1 + 6920);
    if (v11)
    {
      v12 = (v11 + *(a1 + 6928));
    }

    else
    {
      v12 = (a1 + 6944);
      *(a1 + 6920) = a1 + 6944;
    }

    *v12 = v10;
    if (v8 >= 3)
    {
      v12[1] = HIBYTE(v10);
      if (v8 >= 0xB)
      {
        v12[2] = (6 << v8) >> 16;
      }
    }

    *(a1 + 6928) += (v8 + 13) >> 3;
  }

  else
  {
    v13 = *(a1 + 6928);
    if (!v13 || !*a2)
    {
      return 0;
    }

    if (v13 >= *a2)
    {
      v14 = *a2;
    }

    else
    {
      v14 = *(a1 + 6928);
    }

    memcpy(*a3, *(a1 + 6920), v14);
    *a3 = *a3 + v14;
    *a2 -= v14;
    *(a1 + 6920) += v14;
    *(a1 + 6928) -= v14;
    v15 = *(a1 + 6936) + v14;
    *(a1 + 6936) = v15;
    if (a4)
    {
      *a4 = v15;
    }
  }

  return 1;
}

uint64_t EncodeData(uint64_t a1, uint64_t a2, int a3, unint64_t *a4, void *a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10, int32x4_t a11)
{
  v320 = *MEMORY[0x1E69E9840];
  v16 = *(a1 + 1424);
  v17 = *(a1 + 1520);
  v18 = v16 - v17;
  if (v17 >> 30 >= 3)
  {
    v19 = (((2 * v17) >> 1) & 0xC0000000 | v17 & 0x3FFFFFFF) ^ 0x80000000;
  }

  else
  {
    v19 = v17;
  }

  v305 = v19;
  v306 = v16 - v17;
  v20 = *(a1 + 4);
  v21 = *(a1 + 1464);
  v22 = *(a1 + 1436);
  if (v16 != v17)
  {
LABEL_14:
    if (v20 > *(a1 + 1392) || *(a1 + 6968))
    {
      return 0;
    }

    if (a2)
    {
      *(a1 + 6968) = 1;
    }

    if (v18 > 1 << *(a1 + 12))
    {
      return 0;
    }

    if (!v20)
    {
      goto LABEL_26;
    }

    if (v20 == 1)
    {
      if (!*(a1 + 6896))
      {
        *(a1 + 6896) = BrotliAllocate(a1 + 1400);
        *(a1 + 6904) = BrotliAllocate(a1 + 1400);
      }

LABEL_26:
      *&__dst[0] = *(a1 + 1610);
      *v310 = 0;
      BrotliStorage = GetBrotliStorage(a1, (2 * v18 + 503));
      *BrotliStorage = *(a1 + 1608);
      BrotliStorage[1] = *(a1 + 1609);
      HashTable = GetHashTable(a1, *(a1 + 4), v18, v310);
      v30 = v22 & v19;
      if (*(a1 + 4))
      {
        BrotliCompressFragmentTwoPass(*(a1 + 6888), v21 + v30, v18, a2, *(a1 + 6896), *(a1 + 6904), HashTable, v310[0], __dst, BrotliStorage);
      }

      else
      {
        BrotliCompressFragmentFast(*(a1 + 6880), v21 + v30, v18, a2, HashTable, v310[0], __dst, BrotliStorage);
      }

      v34 = __dst[0];
      v35 = *&__dst[0] >> 3;
      *(a1 + 1608) = BrotliStorage[*&__dst[0] >> 3];
      *(a1 + 1610) = v34 & 7;
      UpdateLastProcessedPos(a1);
      *a5 = BrotliStorage;
      *a4 = v35;
      return 1;
    }

    v31 = (v18 >> 1) + *(a1 + 1488) + 1;
    if (v31 > *(a1 + 1472))
    {
      v32 = v31 + (v18 >> 2) + 16;
      *(a1 + 1472) = v32;
      if (v32)
      {
        v33 = BrotliAllocate(a1 + 1400);
      }

      else
      {
        v33 = 0;
      }

      v36 = *(a1 + 1480);
      if (v36)
      {
        memcpy(v33, v36, 16 * *(a1 + 1488));
        BrotliFree(a1 + 1400);
      }

      *(a1 + 1480) = v33;
    }

    v299 = (a1 + 1632);
    v37 = v18;
    if (a2)
    {
      v38 = v19 == 0;
    }

    else
    {
      v38 = 0;
    }

    v39 = v38;
    if (*(a1 + 1664))
    {
      v298 = (a1 + 1704);
      if (*(a1 + 1704))
      {
        goto LABEL_180;
      }

LABEL_136:
      v62 = *(a1 + 1688);
      if (v62 <= 34)
      {
        if (v62 > 4)
        {
          switch(v62)
          {
            case 5:
              PrepareH5((a1 + 1712), v39, v37, v21);
              break;
            case 6:
              PrepareH6((a1 + 1712), v39, v37, v21);
              break;
            case 10:
              v63 = 0;
              v64 = *(a1 + 1720);
              v65 = (a1 + 1728);
              a6 = vld1q_dup_f32(v65);
              do
              {
                *(v64 + v63) = a6;
                v63 += 16;
              }

              while (v63 != 0x80000);
              break;
          }

          goto LABEL_179;
        }

        if (v62 == 2)
        {
          v66 = *(a1 + 1720);
          if (v37 <= 0x800 && v39)
          {
            if (v37)
            {
              v67 = v21;
              v68 = v37;
              do
              {
                v69 = *v67;
                v67 = (v67 + 1);
                *(v66 + (((0x7BD3579BD3000000 * v69) >> 46) & 0x3FFFC)) = 0;
                --v68;
              }

              while (v68);
            }

            goto LABEL_179;
          }
        }

        else
        {
          if (v62 != 3)
          {
            if (v62 == 4)
            {
              PrepareH4(a1 + 1712, v39, v37, v21);
            }

            goto LABEL_179;
          }

          v66 = *(a1 + 1720);
          if (v37 <= 0x800 && v39)
          {
            if (v37)
            {
              v70 = v21;
              v71 = v37;
              do
              {
                v72 = *v70;
                v70 = (v70 + 1);
                v73 = (0x7BD3579BD3000000 * v72) >> 48;
                v66[v73] = 0;
                v66[(v73 + 8)] = 0;
                --v71;
              }

              while (v71);
            }

            goto LABEL_179;
          }
        }

        bzero(v66, 0x40000uLL);
      }

      else if (v62 <= 41)
      {
        if (v62 == 35)
        {
          PrepareH35(a1 + 1712, v39, v37, v21);
        }

        else if (v62 == 40 || v62 == 41)
        {
          PrepareH40(a1 + 1712, v39, v37, v21);
        }
      }

      else if (v62 > 54)
      {
        if (v62 == 55)
        {
          PrepareH55(a1 + 1712, v39, v37, v21);
        }

        else if (v62 == 65)
        {
          PrepareH65(a1 + 1712, v39, v37, v21);
        }
      }

      else if (v62 == 42)
      {
        PrepareH42((a1 + 1712), v39, v37, v21);
      }

      else if (v62 == 54)
      {
        PrepareH54(a1 + 1712, v39, v37, v21);
      }

LABEL_179:
      *v298 = 1;
LABEL_180:
      v74 = *(a1 + 1688);
      if (v74 <= 34)
      {
        if (v74 > 4)
        {
          if (v74 == 5)
          {
            if (v37 >= 3 && v19 >= 3)
            {
              v195 = (506832829 * *(v21 + ((v19 - 3) & v22))) >> *(a1 + 1728);
              v196 = *(a1 + 1752);
              v197 = *(v196 + 2 * v195);
              v198 = *(a1 + 1760);
              *(v198 + 4 * (*(a1 + 1732) & v197) + 4 * (v195 << *(a1 + 1736))) = v19 - 3;
              *(v196 + 2 * v195) = v197 + 1;
              v199 = (506832829 * *(v21 + ((v19 - 2) & v22))) >> *(a1 + 1728);
              v200 = *(v196 + 2 * v199);
              *(v198 + 4 * (*(a1 + 1732) & v200) + 4 * (v199 << *(a1 + 1736))) = v19 - 2;
              *(v196 + 2 * v199) = v200 + 1;
              v201 = (506832829 * *(v21 + ((v19 - 1) & v22))) >> *(a1 + 1728);
              v202 = *(v196 + 2 * v201);
              *(v198 + 4 * (*(a1 + 1732) & v202) + 4 * (v201 << *(a1 + 1736))) = v19 - 1;
              *(v196 + 2 * v201) = v202 + 1;
            }
          }

          else if (v74 == 6)
          {
            if (v37 >= 7 && v19 >= 3)
            {
              v203 = *(a1 + 1760);
              v204 = *(a1 + 1768);
              v205 = *(a1 + 1728);
              v206 = (*(v21 + ((v19 - 3) & v22)) * v205) >> 49;
              v207 = *(v203 + 2 * v206);
              v208 = *(a1 + 1736) & v207;
              v209 = v206 << *(a1 + 1740);
              *(v203 + 2 * v206) = v207 + 1;
              *(v204 + 4 * v209 + 4 * v208) = v19 - 3;
              v210 = (*(v21 + ((v19 - 2) & v22)) * v205) >> 49;
              v211 = *(v203 + 2 * v210);
              v212 = *(a1 + 1736) & v211;
              v213 = v210 << *(a1 + 1740);
              *(v203 + 2 * v210) = v211 + 1;
              *(v204 + 4 * v213 + 4 * v212) = v19 - 2;
              v214 = (*(v21 + ((v19 - 1) & v22)) * v205) >> 49;
              LODWORD(v205) = *(v203 + 2 * v214);
              v215 = *(a1 + 1736) & v205;
              v216 = v214 << *(a1 + 1740);
              *(v203 + 2 * v214) = v205 + 1;
              *(v204 + 4 * v216 + 4 * v215) = v19 - 1;
            }
          }

          else if (v74 == 10 && v37 >= 3 && v19 >= 0x80)
          {
            v101 = v19 - 127;
            v102 = v19 - 127 + v37;
            if (v19 < v102)
            {
              v102 = v19;
            }

            v302 = v102;
            v103 = *(a1 + 1712);
            v297 = *(a1 + 1720);
            v104 = *(a1 + 1736);
            do
            {
              v105 = v19 - v101;
              if (v19 - v101 <= 0xF)
              {
                v105 = 15;
              }

              v106 = (v21 + (v101 & v22));
              v107 = (506832829 * *v106) >> 15;
              v108 = *(v297 + 4 * v107);
              v109 = 2 * (v103 & v101);
              v110 = v109 | 1;
              *(v297 + 4 * v107) = v101;
              if (v101 != v108)
              {
                v111 = 0;
                v112 = 0;
                v113 = v103 - v105;
                v114 = 64;
                do
                {
                  if (v101 - v108 > v113 || v114 == 0)
                  {
                    break;
                  }

                  v116 = v108 & v22;
                  if (v112 >= v111)
                  {
                    v117 = v111;
                  }

                  else
                  {
                    v117 = v112;
                  }

                  v118 = v21 + v116;
                  v119 = (v21 + v116 + v117);
                  v120 = 128 - v117;
                  if (128 - v117 < 8)
                  {
                    v122 = (v106 + v117);
LABEL_234:
                    if (v120)
                    {
                      v123 = (v122 + v120);
                      while (*v122 == *v119)
                      {
                        v119 = (v119 + 1);
                        v122 = (v122 + 1);
                        if (!--v120)
                        {
                          v122 = v123;
                          break;
                        }
                      }
                    }

                    v124 = v122 - (v106 + v117);
                  }

                  else
                  {
                    v121 = 0;
                    v122 = (v106 + v117);
                    while (*v119 == *v122)
                    {
                      ++v119;
                      ++v122;
                      v121 -= 8;
                      if (v120 + v121 <= 7)
                      {
                        v120 += v121;
                        goto LABEL_234;
                      }
                    }

                    v124 = (__clz(__rbit64(*v122 ^ *v119)) >> 3) - v121;
                  }

                  v125 = v124 + v117;
                  if (v125 >= 0x80)
                  {
                    v128 = (v104 + 8 * (v108 & v103));
                    *(v104 + 4 * v109) = *v128;
                    v127 = v128[1];
                    goto LABEL_247;
                  }

                  v126 = 2 * (v108 & v103);
                  if (*(v106 + v125) <= v118[v125])
                  {
                    *(v104 + 4 * v110) = v108;
                    v110 = 2 * (v108 & v103);
                    v111 = v125;
                  }

                  else
                  {
                    *(v104 + 4 * v109) = v108;
                    v109 = v126 | 1;
                    v112 = v125;
                    v126 |= 1uLL;
                  }

                  v108 = *(v104 + 4 * v126);
                  --v114;
                }

                while (v101 != v108);
              }

              v127 = *(a1 + 1728);
              *(v104 + 4 * v109) = v127;
LABEL_247:
              *(v104 + 4 * v110) = v127;
              ++v101;
            }

            while (v101 < v302);
          }
        }

        else
        {
          if (v74 != 2)
          {
            if (v74 == 3)
            {
              if (v37 < 7 || v19 < 3)
              {
                goto LABEL_324;
              }

              v75 = *(a1 + 1720);
              *(v75 + 4 * (((0x7BD3579BD3000000 * *(v21 + ((v19 - 3) & v22))) >> 48) + ((v19 - 3) & 8))) = v19 - 3;
              *(v75 + 4 * (((0x7BD3579BD3000000 * *(v21 + ((v19 - 2) & v22))) >> 48) + ((v19 - 2) & 8))) = v19 - 2;
              v76 = v19 - 1;
              v77 = (((0x7BD3579BD3000000 * *(v21 + ((v19 - 1) & v22))) >> 48) + ((v19 - 1) & 8));
            }

            else
            {
              if (v74 != 4 || v37 < 7 || v19 < 3)
              {
                goto LABEL_324;
              }

              v75 = *(a1 + 1720);
              *(v75 + 4 * (((((0x7BD3579BD3000000 * *(v21 + ((v19 - 3) & v22))) >> 32) >> 15) + ((v19 - 3) & 0x18)) & 0x1FFFF)) = v19 - 3;
              *(v75 + 4 * (((((0x7BD3579BD3000000 * *(v21 + ((v19 - 2) & v22))) >> 32) >> 15) + ((v19 - 2) & 0x18)) & 0x1FFFF)) = v19 - 2;
              v76 = v19 - 1;
              v77 = ((((0x7BD3579BD3000000 * *(v21 + ((v19 - 1) & v22))) >> 32) >> 15) + ((v19 - 1) & 0x18)) & 0x1FFFF;
            }

LABEL_320:
            *(v75 + 4 * v77) = v76;
            goto LABEL_324;
          }

          if (v37 >= 7 && v19 >= 3)
          {
            v194 = *(a1 + 1720);
            *(v194 + (((0x7BD3579BD3000000 * *(v21 + ((v19 - 3) & v22))) >> 46) & 0x3FFFC)) = v19 - 3;
            *(v194 + (((0x7BD3579BD3000000 * *(v21 + ((v19 - 2) & v22))) >> 46) & 0x3FFFC)) = v19 - 2;
            *(v194 + (((0x7BD3579BD3000000 * *(v21 + ((v19 - 1) & v22))) >> 46) & 0x3FFFC)) = v19 - 1;
          }
        }

LABEL_324:
        v217 = (a1 + 1488);
        v218 = *(a1 + 1512);
        if (v218 <= 0xBFFFFFFF)
        {
          v219 = *(a1 + 1512);
        }

        else
        {
          LODWORD(v219) = (((2 * v218) >> 1) & 0xC0000000 | v218 & 0x3FFFFFFF) ^ 0x80000000;
        }

        if (*(a1 + 4) < 10 || BrotliIsMostlyUTF8(v21, v219, v22, *(a1 + 1424) - v218, 0.75))
        {
          v220 = 2;
        }

        else
        {
          v220 = 3;
        }

        v295 = v220;
        v221 = (v220 << 9);
        if (*v217 && !*(a1 + 1504))
        {
          v222 = (v220 << 9);
          ExtendLastCommand(a1, &v306, &v305);
          v221 = v222;
        }

        v223 = *(a1 + 4);
        v303 = (a1 + 1528);
        v224 = (a1 + 1504);
        v225 = (*(a1 + 1480) + 16 * *(a1 + 1488));
        v226 = (a1 + 1496);
        v293 = v221;
        if (v223 == 11)
        {
          BrotliCreateHqZopfliBackwardReferences(a1 + 1400, v306, v305, v21, v22, &_kBrotliContextLookupTable + v221, a1, v299, v303, (a1 + 1504), v225, (a1 + 1488), (a1 + 1496));
        }

        else if (v223 == 10)
        {
          BrotliCreateZopfliBackwardReferences(a1 + 1400, v306, v305, v21, v22, &_kBrotliContextLookupTable + v221, a1, v299, v303, (a1 + 1504), v225, (a1 + 1488), (a1 + 1496));
        }

        else
        {
          BrotliCreateBackwardReferences(v306, v305, v21, v22, &_kBrotliContextLookupTable + v221, a1, v299, v303, a6.n128_f64[0], a7, a8.n128_f64[0], a9.n128_f64[0], a10.n128_f64[0], a11, (a1 + 1504), v225, (a1 + 1488), (a1 + 1496));
        }

        v227 = *(a1 + 8);
        v228 = *(a1 + 12);
        if (v227 <= v228)
        {
          v227 = *(a1 + 12);
        }

        if (v227 >= 23)
        {
          v229 = 23;
        }

        else
        {
          v229 = v227;
        }

        v230 = *(a1 + 1424);
        v231 = *(a1 + 1512);
        v232 = *(a1 + 4) <= 3 && *v217 + *v226 > 0x2FFE;
        v233 = v230 - v231;
        if (!(a3 | a2) && !v232)
        {
          v234 = 1 << (v229 + 1);
          if (v233 + (1 << v228) <= v234 && *v226 < v234 >> 3 && *(a1 + 1488) < v234 >> 3)
          {
            if (UpdateLastProcessedPos(a1))
            {
              *v298 = 0;
            }

            goto LABEL_369;
          }
        }

        v235 = *v224;
        if (*v224)
        {
          v236 = *(a1 + 1480);
          v237 = *(a1 + 1488);
          *(a1 + 1488) = v237 + 1;
          v238 = v236 + 16 * v237;
          *v238 = v235;
          *(v238 + 4) = 0x8000000;
          *(v238 + 14) = 16;
          if (v235 > 5)
          {
            if (v235 > 0x81)
            {
              if (v235 > 0x841)
              {
                if (v235 >> 1 >= 0xC21)
                {
                  if (v235 < 0x5842)
                  {
                    LOWORD(v239) = 22;
                  }

                  else
                  {
                    LOWORD(v239) = 23;
                  }
                }

                else
                {
                  LOWORD(v239) = 21;
                }
              }

              else
              {
                v239 = (__clz(v235 - 66) ^ 0x1F) + 10;
              }
            }

            else
            {
              v240 = (__clz(v235 - 2) ^ 0x1F) - 1;
              v239 = ((v235 - 2) >> v240) + 2 * v240 + 2;
            }
          }

          else
          {
            LOWORD(v239) = v235;
          }

          *(v238 + 12) = ((((0x520D40u >> (6 * (v239 >> 3))) & 0xC0) + 192 * (v239 >> 3)) & 0xFFC7 | (8 * (v239 & 7))) + 66;
          *v226 += v235;
          *v224 = 0;
        }

        if (!a2 && v230 == v231)
        {
          goto LABEL_369;
        }

        v241 = GetBrotliStorage(a1, (2 * v233 + 503));
        v304 = *(a1 + 1610);
        v288 = *(a1 + 1608);
        *v241 = v288;
        v292 = v241;
        v287 = HIBYTE(*(a1 + 1608));
        v241[1] = v287;
        v242 = *(a1 + 1512);
        v300 = v233;
        v243 = v242;
        v244 = v242;
        if (v242 > 0xBFFFFFFF)
        {
          v244 = (((2 * v242) >> 1) & 0xC0000000 | v242 & 0x3FFFFFFF) ^ 0x80000000;
        }

        v291 = v244;
        v285 = *(a1 + 1613);
        v286 = *(a1 + 1612);
        v245 = *(a1 + 1496);
        v246 = (a1 + 1592);
        v289 = *(a1 + 1480);
        v290 = *(a1 + 1488);
        memcpy(__dst, a1, 0x578uLL);
        v247 = (a1 + 1488);
        v248 = v300;
        if (v300)
        {
          if (v300 < 3)
          {
            goto LABEL_375;
          }

          if ((v300 >> 8) + 2 <= v290 || v300 * 0.99 >= v245)
          {
            goto LABEL_415;
          }

          bzero(v310, 0x400uLL);
          v256 = ((v300 + 12) * 0x13B13B13B13B13B2uLL) >> 64;
          do
          {
            ++v310[*(v21 + (v243 & v22))];
            v243 = (v243 + 13);
            --v256;
          }

          while (v256);
          v257 = 0;
          v258 = 0;
          v259 = 0.0;
          do
          {
            v260 = v310[v257];
            if (v260 > 0xFF)
            {
              v261 = log2(v260);
            }

            else
            {
              v261 = kBrotliLog2Table[v260];
            }

            v262 = v310[v257 + 1];
            if (v262 > 0xFF)
            {
              v263 = log2(v262);
            }

            else
            {
              v263 = kBrotliLog2Table[v262];
            }

            v257 += 2;
            v258 += v260 + v262;
            v259 = v259 - v260 * v261 - v262 * v263;
          }

          while ((v257 * 4 - 8) < 0x3F8);
          v264 = v258;
          if (v258)
          {
            v247 = (a1 + 1488);
            v246 = (a1 + 1592);
            v265 = v258 > 0xFF ? log2(v258) : kBrotliLog2Table[v258];
            v248 = v300;
            v259 = v259 + v264 * v265;
          }

          else
          {
            v247 = (a1 + 1488);
            v246 = (a1 + 1592);
            v248 = v300;
          }

          v272 = v259 >= v264 ? v259 : v258;
          if (v272 > v300 * 7.92 / 13.0)
          {
LABEL_375:
            *v303 = *v246;
            v249 = v291;
            v250 = a2;
            v251 = v21;
            v252 = v22;
            v253 = v248;
            v254 = v292;
          }

          else
          {
LABEL_415:
            v273 = *(a1 + 4);
            v284 = v304;
            if (v273 > 2)
            {
              v254 = v292;
              if (v273 == 3)
              {
                v274 = v248;
                BrotliStoreMetaBlockTrivial(a1 + 1400, v21, v291, v248, v22, a2, a1, v289, v290, &v304, v292);
              }

              else
              {
                v319 = 0u;
                v318 = 0u;
                v317 = 0u;
                v316 = 0u;
                v315 = 0u;
                memset(v314, 0, sizeof(v314));
                memset(v313, 0, sizeof(v313));
                v312 = 0u;
                v311 = 0u;
                *v310 = 0u;
                BrotliInitBlockSplit(v310);
                BrotliInitBlockSplit(v313);
                BrotliInitBlockSplit(v314);
                v319 = 0u;
                v318 = 0u;
                v317 = 0u;
                v316 = 0u;
                v315 = 0u;
                if (*(a1 + 4) > 9)
                {
                  v278 = v289;
                  BrotliBuildMetaBlock(a1 + 1400, v21, v291, v22, __dst, v286, v285, v289, v290, v295, v310);
                }

                else
                {
                  v307 = 0;
                  v308 = 1;
                  if (*(a1 + 32))
                  {
                    v275 = 0;
                    v276 = v291;
                    v277 = 1;
                  }

                  else
                  {
                    v283 = BrotliAllocate(a1 + 1400);
                    DecideOverLiteralContextModeling(v21, v291, v300, v22, *(a1 + 4), *(a1 + 24), &v308, &v307, v283);
                    BrotliFree(a1 + 1400);
                    v276 = v291;
                    v275 = v307;
                    v277 = v308;
                  }

                  v278 = v289;
                  BrotliBuildMetaBlockGreedy(a1 + 1400, v21, v276, v22, v286, v285, &_kBrotliContextLookupTable + v293, v277, v275, v289, v290, v310);
                }

                if (*(a1 + 4) >= 4)
                {
                  BrotliOptimizeHistograms(DWORD1(__dst[4]), v310);
                }

                v282 = v278;
                v274 = v300;
                BrotliStoreMetaBlock(a1 + 1400, v21, v291, v300, v22, v286, v285, a2, __dst, v295, v282, v290, v310, &v304, v292);
                BrotliDestroyBlockSplit(a1 + 1400, v310);
                BrotliDestroyBlockSplit(a1 + 1400, v313);
                BrotliDestroyBlockSplit(a1 + 1400, v314);
                BrotliFree(a1 + 1400);
                *&v315 = 0;
                BrotliFree(a1 + 1400);
                *&v316 = 0;
                BrotliFree(a1 + 1400);
                *&v317 = 0;
                BrotliFree(a1 + 1400);
                *&v318 = 0;
                BrotliFree(a1 + 1400);
              }
            }

            else
            {
              v254 = v292;
              v274 = v248;
              BrotliStoreMetaBlockFast(a1 + 1400, v21, v291, v248, v22, a2, a1, v289, v290, &v304, v292);
            }

            if (v274 + 4 >= v304 >> 3)
            {
              goto LABEL_431;
            }

            *v303 = *v246;
            *v254 = v288;
            v254[1] = v287;
            v304 = v284;
            v249 = v291;
            v250 = a2;
            v251 = v21;
            v252 = v22;
            v253 = v274;
          }

          BrotliStoreUncompressedMetaBlock(v250, v251, v249, v252, v253, &v304, v254);
        }

        else
        {
          v255 = v304;
          v254 = v292;
          *(v292 + (v304 >> 3)) = (3 << (v304 & 7)) | *(v292 + (v304 >> 3));
          v304 = (v255 + 9) & 0xFFFFFFF8;
        }

LABEL_431:
        v279 = v304;
        v280 = v304 >> 3;
        *(a1 + 1608) = v254[v304 >> 3];
        *(a1 + 1610) = v279 & 7;
        *(a1 + 1512) = *(a1 + 1424);
        if (UpdateLastProcessedPos(a1))
        {
          *v298 = 0;
        }

        v281 = *(a1 + 1512);
        if (v281)
        {
          *(a1 + 1612) = *(v21 + ((v281 - 1) & v22));
          if (v281 != 1)
          {
            *(a1 + 1613) = *(v21 + ((v281 - 2) & v22));
          }
        }

        *v247 = 0;
        v247[1] = 0;
        *v246 = *v303;
        *a5 = v254;
        *a4 = v280;
        return 1;
      }

      if (v74 <= 41)
      {
        if (v74 != 35)
        {
          if ((v74 == 40 || v74 == 41) && v37 >= 3 && v19 >= 3)
          {
            v78 = *(a1 + 1728);
            v79 = (506832829 * *(v21 + ((v19 - 3) & v22))) >> 17;
            v80 = v78 + 2 * v79;
            v81 = *(a1 + 1736);
            v82 = *(a1 + 1712);
            *(a1 + 1712) = v82 + 1;
            v83 = v19 - 3 - *(v78 + 4 * v79);
            *(v78 + (v19 - 3) + 196608) = v79;
            if (v83 >= 0xFFFF)
            {
              LOWORD(v83) = -1;
            }

            v84 = (v81 + 4 * v82);
            *v84 = v83;
            v84[1] = *(v80 + 0x20000);
            *(v78 + 4 * v79) = v19 - 3;
            *(v80 + 0x20000) = v82;
            v85 = *(a1 + 1728);
            v86 = (506832829 * *(v21 + ((v19 - 2) & v22))) >> 17;
            v87 = v85 + 2 * v86;
            v88 = *(a1 + 1736);
            v89 = *(a1 + 1712);
            *(a1 + 1712) = v89 + 1;
            v90 = v19 - 2 - *(v85 + 4 * v86);
            *(v85 + (v19 - 2) + 196608) = v86;
            if (v90 >= 0xFFFF)
            {
              v91 = -1;
            }

            else
            {
              v91 = v90;
            }

            v92 = (v88 + 4 * v89);
            *v92 = v91;
            v92[1] = *(v87 + 0x20000);
            *(v85 + 4 * v86) = v19 - 2;
            *(v87 + 0x20000) = v89;
            v93 = *(a1 + 1728);
            v94 = (506832829 * *(v21 + ((v19 - 1) & v22))) >> 17;
            v95 = v93 + 2 * v94;
            v96 = *(a1 + 1736);
            v97 = *(a1 + 1712);
            *(a1 + 1712) = v97 + 1;
            v98 = v19 - 1 - *(v93 + 4 * v94);
            *(v93 + (v19 - 1) + 196608) = v94;
            if (v98 >= 0xFFFF)
            {
              v99 = -1;
            }

            else
            {
              v99 = v98;
            }

            v100 = (v96 + 4 * v97);
            *v100 = v99;
            v100[1] = *(v95 + 0x20000);
            *(v93 + 4 * v94) = v19 - 1;
            *(v95 + 0x20000) = v97;
          }

          goto LABEL_324;
        }

        if (v37 >= 7 && v19 >= 3)
        {
          v185 = *(a1 + 1720);
          *(v185 + 4 * (((0x7BD3579BD3000000 * *(v21 + ((v19 - 3) & v22))) >> 48) + ((v19 - 3) & 8))) = v19 - 3;
          *(v185 + 4 * (((0x7BD3579BD3000000 * *(v21 + ((v19 - 2) & v22))) >> 48) + ((v19 - 2) & 8))) = v19 - 2;
          *(v185 + 4 * (((0x7BD3579BD3000000 * *(v21 + ((v19 - 1) & v22))) >> 48) + ((v19 - 1) & 8))) = v19 - 1;
        }

        v186 = 4 - (v19 & 3);
        if ((v19 & 3) != 0)
        {
          v187 = 4 - (v19 & 3);
        }

        else
        {
          v187 = 0;
        }

        v23 = v37 >= v186;
        v188 = v37 - v186;
        if (!v23)
        {
          v188 = 0;
        }

        if ((v19 & 3) != 0)
        {
          v189 = v188;
        }

        else
        {
          v189 = v37;
        }

        v179 = v187 + v19;
        v190 = (v187 + v19) & v22;
        v191 = v22 - v190;
        if (v189 < v22 - v190)
        {
          v191 = v189;
        }

        if (v191 >= 0x20)
        {
          v192 = 0;
          v183 = 0;
          v193 = v21 + v190;
          do
          {
            v183 = v193[v192] + v183 * *(a1 + 1756) + 1;
            v23 = v192 >= 0x1C;
            v192 += 4;
          }

          while (!v23);
          goto LABEL_309;
        }
      }

      else
      {
        if (v74 <= 54)
        {
          if (v74 != 42)
          {
            if (v74 != 54 || v37 < 7 || v19 < 3)
            {
              goto LABEL_324;
            }

            v75 = *(a1 + 1720);
            *(v75 + 4 * (((((0xE35A7BD3579BD300 * *(v21 + ((v19 - 3) & v22))) >> 32) >> 12) + ((v19 - 3) & 0x18)) & 0xFFFFF)) = v19 - 3;
            *(v75 + 4 * (((((0xE35A7BD3579BD300 * *(v21 + ((v19 - 2) & v22))) >> 32) >> 12) + ((v19 - 2) & 0x18)) & 0xFFFFF)) = v19 - 2;
            v76 = v19 - 1;
            v77 = ((((0xE35A7BD3579BD300 * *(v21 + ((v19 - 1) & v22))) >> 32) >> 12) + ((v19 - 1) & 0x18)) & 0xFFFFF;
            goto LABEL_320;
          }

          if (v37 >= 3 && v19 >= 3)
          {
            v146 = a1 + 1712;
            v147 = *(a1 + 2744);
            v148 = (506832829 * *(v21 + ((v19 - 3) & v22))) >> 17;
            v149 = v147 + 2 * v148;
            v150 = *(a1 + 2752);
            v151 = *(a1 + 1712 + 2 * (v148 & 0x1FF));
            *(a1 + 1712 + 2 * (v148 & 0x1FF)) = v151 + 1;
            v152 = v151 & 0x1FF;
            v153 = v19 - 3 - *(v147 + 4 * v148);
            *(v147 + (v19 - 3) + 196608) = v148;
            if (v153 >= 0xFFFF)
            {
              v154 = -1;
            }

            else
            {
              v154 = v153;
            }

            v155 = (v150 + ((v148 & 0x1FF) << 11) + 4 * v152);
            *v155 = v154;
            v155[1] = *(v149 + 0x20000);
            *(v147 + 4 * v148) = v19 - 3;
            *(v149 + 0x20000) = v152;
            v156 = *(a1 + 2744);
            v157 = (506832829 * *(v21 + ((v19 - 2) & v22))) >> 17;
            v158 = v156 + 2 * v157;
            v159 = *(a1 + 2752);
            v160 = *(v146 + 2 * (v157 & 0x1FF));
            *(v146 + 2 * (v157 & 0x1FF)) = v160 + 1;
            v161 = v160 & 0x1FF;
            v162 = v19 - 2 - *(v156 + 4 * v157);
            *(v156 + (v19 - 2) + 196608) = v157;
            if (v162 >= 0xFFFF)
            {
              v163 = -1;
            }

            else
            {
              v163 = v162;
            }

            v164 = (v159 + ((v157 & 0x1FF) << 11) + 4 * v161);
            *v164 = v163;
            v164[1] = *(v158 + 0x20000);
            *(v156 + 4 * v157) = v19 - 2;
            *(v158 + 0x20000) = v161;
            v165 = *(a1 + 2744);
            v166 = (506832829 * *(v21 + ((v19 - 1) & v22))) >> 17;
            v167 = v165 + 2 * v166;
            v168 = *(a1 + 2752);
            v169 = *(v146 + 2 * (v166 & 0x1FF));
            *(v146 + 2 * (v166 & 0x1FF)) = v169 + 1;
            v170 = v169 & 0x1FF;
            v171 = v19 - 1 - *(v165 + 4 * v166);
            *(v165 + (v19 - 1) + 196608) = v166;
            if (v171 >= 0xFFFF)
            {
              v172 = -1;
            }

            else
            {
              v172 = v171;
            }

            v173 = (v168 + ((v166 & 0x1FF) << 11) + 4 * v170);
            *v173 = v172;
            v173[1] = *(v167 + 0x20000);
            *(v165 + 4 * v166) = v19 - 1;
            *(v167 + 0x20000) = v170;
          }

          goto LABEL_324;
        }

        if (v74 != 55)
        {
          if (v74 == 65)
          {
            if (v37 >= 7 && v19 >= 3)
            {
              v129 = *(a1 + 1760);
              v130 = *(a1 + 1768);
              v131 = *(a1 + 1728);
              v132 = (*(v21 + ((v19 - 3) & v22)) * v131) >> 49;
              v133 = *(v129 + 2 * v132);
              v134 = *(a1 + 1736) & v133;
              v135 = v132 << *(a1 + 1740);
              *(v129 + 2 * v132) = v133 + 1;
              *(v130 + 4 * v135 + 4 * v134) = v19 - 3;
              v136 = (*(v21 + ((v19 - 2) & v22)) * v131) >> 49;
              v137 = *(v129 + 2 * v136);
              v138 = *(a1 + 1736) & v137;
              v139 = v136 << *(a1 + 1740);
              *(v129 + 2 * v136) = v137 + 1;
              *(v130 + 4 * v139 + 4 * v138) = v19 - 2;
              v140 = (*(v21 + ((v19 - 1) & v22)) * v131) >> 49;
              LODWORD(v131) = *(v129 + 2 * v140);
              v141 = *(a1 + 1736) & v131;
              v142 = v140 << *(a1 + 1740);
              *(v129 + 2 * v140) = v131 + 1;
              *(v130 + 4 * v142 + 4 * v141) = v19 - 1;
            }

            v143 = v22 - (v22 & v19);
            if (v143 >= v37)
            {
              v143 = v37;
            }

            if (v143 >= 0x20)
            {
              v144 = 0;
              v145 = 0;
              do
              {
                v145 = *(v21 + (v22 & v19) + v144++) + v145 * *(a1 + 1804) + 1;
              }

              while (v144 != 32);
              *(a1 + 1776) = v145;
            }

            *(a1 + 1792) = v19;
          }

          goto LABEL_324;
        }

        if (v37 >= 7 && v19 >= 3)
        {
          v174 = *(a1 + 1720);
          *(v174 + 4 * (((((0xE35A7BD3579BD300 * *(v21 + ((v19 - 3) & v22))) >> 32) >> 12) + ((v19 - 3) & 0x18)) & 0xFFFFF)) = v19 - 3;
          *(v174 + 4 * (((((0xE35A7BD3579BD300 * *(v21 + ((v19 - 2) & v22))) >> 32) >> 12) + ((v19 - 2) & 0x18)) & 0xFFFFF)) = v19 - 2;
          *(v174 + 4 * (((((0xE35A7BD3579BD300 * *(v21 + ((v19 - 1) & v22))) >> 32) >> 12) + ((v19 - 1) & 0x18)) & 0xFFFFF)) = v19 - 1;
        }

        v175 = 4 - (v19 & 3);
        if ((v19 & 3) != 0)
        {
          v176 = 4 - (v19 & 3);
        }

        else
        {
          v176 = 0;
        }

        v23 = v37 >= v175;
        v177 = v37 - v175;
        if (!v23)
        {
          v177 = 0;
        }

        if ((v19 & 3) != 0)
        {
          v178 = v177;
        }

        else
        {
          v178 = v37;
        }

        v179 = v176 + v19;
        v180 = (v176 + v19) & v22;
        v181 = v22 - v180;
        if (v178 < v22 - v180)
        {
          v181 = v178;
        }

        if (v181 >= 0x20)
        {
          v182 = 0;
          v183 = 0;
          v184 = v21 + v180;
          do
          {
            v183 = v184[v182] + v183 * *(a1 + 1756) + 1;
            v23 = v182 >= 0x1C;
            v182 += 4;
          }

          while (!v23);
LABEL_309:
          *(a1 + 1728) = v183;
        }
      }

      *(a1 + 1744) = v179;
      goto LABEL_324;
    }

    memset(__dst, 0, 32);
    v40 = *(a1 + 4);
    if (v40 < 10)
    {
      if (v40 == 4)
      {
        if (*(a1 + 24) >= 0x100000uLL)
        {
          v40 = 54;
        }
      }

      else if (v40 > 4)
      {
        v44 = *(a1 + 8);
        if (v44 > 16)
        {
          v50 = v40 - 1;
          if (v44 < 0x13 || *(a1 + 24) < 0x100000uLL)
          {
            if (v40 >= 9)
            {
              v268 = 16;
            }

            else
            {
              v268 = 10;
            }

            v269 = v40 >= 7;
            if (v40 < 7)
            {
              v270 = 14;
            }

            else
            {
              v270 = 15;
            }

            *(a1 + 40) = 5;
            *(a1 + 44) = v270;
            if (v269)
            {
              v271 = v268;
            }

            else
            {
              v271 = 4;
            }

            *(a1 + 48) = v50;
            *(a1 + 52) = v271;
            v40 = 5;
          }

          else
          {
            *(a1 + 40) = 0xF00000006;
            if (v40 >= 9)
            {
              v51 = 16;
            }

            else
            {
              v51 = 10;
            }

            if (v40 >= 7)
            {
              v52 = v51;
            }

            else
            {
              v52 = 4;
            }

            *(a1 + 48) = v50;
            *(a1 + 52) = v52;
            v40 = 6;
          }

LABEL_49:
          v296 = v18;
          v41 = *(a1 + 8);
          v294 = v39;
          if (v41 >= 25)
          {
            switch(v40)
            {
              case 54:
                *(a1 + 40) = 55;
                v301 = (a1 + 1688);
                *(a1 + 1688) = *(a1 + 40);
                *(a1 + 1672) = 0u;
                a6 = xmmword_1AB4CD550;
                goto LABEL_77;
              case 6:
                *(a1 + 40) = 65;
                v301 = (a1 + 1688);
                *(a1 + 1688) = *(a1 + 40);
                v47 = *(a1 + 44);
                v48.i64[0] = v47;
                v48.i64[1] = HIDWORD(v47);
                v49.i64[0] = vdupq_n_s64(2uLL).u64[0];
                a8.n128_u64[0] = 0;
                v49.i64[1] = 4 << v47;
                *(a1 + 1672) = 0u;
                a6 = vshlq_u64(v49, v48);
                goto LABEL_77;
              case 3:
                *(a1 + 40) = 35;
                *(a1 + 1688) = *(a1 + 40);
                *(a1 + 1672) = 0u;
                v301 = (a1 + 1688);
                a6 = xmmword_1AB4CD560;
LABEL_77:
                a7 = xmmword_1AB4CD540;
                __dst[0] = a6;
                __dst[1] = xmmword_1AB4CD540;
                goto LABEL_95;
            }
          }

          *(a1 + 1688) = *(a1 + 40);
          a6.n128_u64[0] = 0;
          *(a1 + 1672) = 0u;
          v301 = (a1 + 1688);
          if (v40 <= 9)
          {
            if (v40 <= 3)
            {
              if (v40 != 2 && v40 != 3)
              {
                goto LABEL_95;
              }

              v46 = 0x40000;
            }

            else
            {
              if (v40 != 4)
              {
                v42 = *(a1 + 44);
                v43.i64[0] = v42;
                v43.i64[1] = HIDWORD(v42);
                a7.n128_u64[0] = vdupq_n_s64(2uLL).u64[0];
                a7.n128_u64[1] = 4 << v42;
                a6 = vshlq_u64(a7, v43);
LABEL_92:
                __dst[0] = a6;
                goto LABEL_95;
              }

              v46 = 0x80000;
            }
          }

          else
          {
            if (v40 <= 40)
            {
              if (v40 == 10)
              {
                v266 = 1 << v41;
                if (1 << v41 >= v18)
                {
                  v267 = v18;
                }

                else
                {
                  v267 = 1 << v41;
                }

                if (v39)
                {
                  v266 = v267;
                }

                *&__dst[0] = 0x80000;
                *(&__dst[0] + 1) = 8 * v266;
LABEL_95:
                for (i = 0; i != 32; i += 8)
                {
                  if (*(__dst + i))
                  {
                    *(a1 + i + 1632) = BrotliAllocate(a1 + 1400);
                  }
                }

                v54 = *v301;
                if (*v301 <= 34)
                {
                  v37 = v296;
                  if (v54 > 4)
                  {
                    if (v54 == 5)
                    {
                      a6.n128_u64[0] = InitializeH5(v299, a1 + 1712).n128_u64[0];
                    }

                    else
                    {
                      if (v54 != 6)
                      {
                        v39 = v294;
                        if (v54 == 10)
                        {
                          *(a1 + 1720) = *(a1 + 1632);
                          *(a1 + 1736) = *(a1 + 1640);
                          v58 = -1 << *(a1 + 8);
                          *(a1 + 1712) = ~v58;
                          *(a1 + 1728) = v58 + 1;
                        }

                        goto LABEL_135;
                      }

                      *(a1 + 1752) = v299;
                      *(a1 + 1728) = 0x7BD3579BD3000000;
                      *(a1 + 1712) = 1 << *(a1 + 1692);
                      v61 = *(a1 + 1696);
                      *(a1 + 1740) = v61;
                      *(a1 + 1720) = 1 << v61;
                      *(a1 + 1736) = (1 << v61) - 1;
                      a6 = *(a1 + 1632);
                      *(a1 + 1760) = a6;
                    }
                  }

                  else
                  {
                    if (v54 != 2)
                    {
                      v39 = v294;
                      if (v54 != 3 && v54 != 4)
                      {
                        goto LABEL_135;
                      }

LABEL_109:
                      *(a1 + 1712) = v299;
                      v55 = *(a1 + 1632);
LABEL_117:
                      *(a1 + 1720) = v55;
                      goto LABEL_135;
                    }

                    *(a1 + 1712) = v299;
                    *(a1 + 1720) = *(a1 + 1632);
                  }
                }

                else
                {
                  v37 = v296;
                  if (v54 > 41)
                  {
                    if (v54 > 54)
                    {
                      v39 = v294;
                      if (v54 == 55)
                      {
                        *(a1 + 1928) = v299;
                        a6 = *(a1 + 1664);
                        a7 = *(a1 + 1680);
                        *(a1 + 1800) = a6;
                        *(a1 + 1816) = a7;
                        a8 = *(a1 + 1696);
                        *(a1 + 1832) = a8;
                        a10 = *v299;
                        a9 = *(a1 + 1648);
                        *(a1 + 1768) = *v299;
                        *(a1 + 1784) = a9;
                        *(a1 + 1880) = a6;
                        *(a1 + 1896) = a7;
                        *(a1 + 1912) = a8;
                        *(a1 + 1848) = a10;
                        *(a1 + 1864) = a9;
                        *(a1 + 1936) = 1;
                        *(a1 + 1944) = a1;
                      }

                      else if (v54 == 65)
                      {
                        *(a1 + 1976) = v299;
                        a6 = *(a1 + 1664);
                        a7 = *(a1 + 1680);
                        *(a1 + 1848) = a6;
                        *(a1 + 1864) = a7;
                        a8 = *(a1 + 1696);
                        *(a1 + 1880) = a8;
                        a10 = *v299;
                        a9 = *(a1 + 1648);
                        *(a1 + 1816) = *v299;
                        *(a1 + 1832) = a9;
                        *(a1 + 1928) = a6;
                        *(a1 + 1944) = a7;
                        *(a1 + 1960) = a8;
                        *(a1 + 1896) = a10;
                        *(a1 + 1912) = a9;
                        *(a1 + 1984) = 1;
                        *(a1 + 1992) = a1;
                      }

                      goto LABEL_135;
                    }

                    v39 = v294;
                    if (v54 == 42)
                    {
                      *(a1 + 2760) = v299;
                      a6 = *(a1 + 1632);
                      *(a1 + 2744) = a6;
                      v59 = *(a1 + 4);
                      if (v59 >= 7)
                      {
                        v60 = 7;
                      }

                      else
                      {
                        v60 = 8;
                      }

                      *(a1 + 2736) = (v60 << (v59 - 4));
                      goto LABEL_135;
                    }

                    if (v54 != 54)
                    {
LABEL_135:
                      v298 = (a1 + 1704);
                      *(a1 + 1704) = 0;
                      *(a1 + 1664) = 1;
                      goto LABEL_136;
                    }

                    goto LABEL_109;
                  }

                  if (v54 != 35)
                  {
                    v39 = v294;
                    if (v54 != 40 && v54 != 41)
                    {
                      goto LABEL_135;
                    }

                    *(a1 + 1744) = v299;
                    a6 = *(a1 + 1632);
                    *(a1 + 1728) = a6;
                    v56 = *(a1 + 4);
                    if (v56 >= 7)
                    {
                      v57 = 7;
                    }

                    else
                    {
                      v57 = 8;
                    }

                    v55 = (v57 << (v56 - 4));
                    goto LABEL_117;
                  }

                  *(a1 + 1928) = v299;
                  a6 = *(a1 + 1664);
                  a7 = *(a1 + 1680);
                  *(a1 + 1800) = a6;
                  *(a1 + 1816) = a7;
                  a8 = *(a1 + 1696);
                  *(a1 + 1832) = a8;
                  a10 = *v299;
                  a9 = *(a1 + 1648);
                  *(a1 + 1768) = *v299;
                  *(a1 + 1784) = a9;
                  *(a1 + 1880) = a6;
                  *(a1 + 1896) = a7;
                  *(a1 + 1912) = a8;
                  *(a1 + 1848) = a10;
                  *(a1 + 1864) = a9;
                  *(a1 + 1936) = 1;
                  *(a1 + 1944) = a1;
                }

                v39 = v294;
                goto LABEL_135;
              }

              goto LABEL_81;
            }

            if (v40 == 41)
            {
LABEL_81:
              a6 = vdupq_n_s64(0x40000uLL);
              goto LABEL_92;
            }

            if (v40 == 42)
            {
              a6 = xmmword_1AB4CD570;
              goto LABEL_92;
            }

            v46 = 0x400000;
          }

          *&__dst[0] = v46;
          goto LABEL_95;
        }

        if (v40 < 9)
        {
          v45 = 41;
        }

        else
        {
          v45 = 42;
        }

        if (v40 >= 7)
        {
          v40 = v45;
        }

        else
        {
          v40 = 40;
        }
      }
    }

    else
    {
      v40 = 10;
    }

    *(a1 + 40) = v40;
    goto LABEL_49;
  }

  if (v21)
  {
    if (a3)
    {
      v23 = v20 >= 2;
    }

    else
    {
      v23 = 0;
    }

    v24 = !v23;
    if (a2 || !v24)
    {
      goto LABEL_14;
    }

LABEL_369:
    *a4 = 0;
    return 1;
  }

  if (!a2)
  {
    goto LABEL_369;
  }

  v26 = *(a1 + 1610);
  v27 = *(a1 + 1608) | (3 << v26);
  *(a1 + 1608) = v27;
  v26 += 2;
  *(a1 + 1610) = v26;
  *(a1 + 6944) = v27;
  *a5 = a1 + 6944;
  *a4 = (v26 + 7) >> 3;
  return 1;
}

uint64_t BrotliEncoderTakeOutput(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 6928);
  if (*a2 >= v2)
  {
    v3 = *(a1 + 6928);
  }

  else
  {
    v3 = *a2;
  }

  if (!*a2)
  {
    v3 = *(a1 + 6928);
  }

  if (v3)
  {
    v4 = *(a1 + 6920);
    *(a1 + 6920) = v4 + v3;
    v5 = v2 - v3;
    *(a1 + 6928) = v5;
    *(a1 + 6936) += v3;
    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = *(a1 + 6964) == 1;
    }

    if (v6)
    {
      *(a1 + 6964) = 0;
      *(a1 + 6920) = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  *a2 = v3;
  return v4;
}

uint64_t BrotliEncoderPrepareDictionary(int a1, unint64_t a2, uint64_t a3, uint64_t a4, void *(*a5)(int a1, size_t size), void (*a6)(int a1, void *a2), void *(*a7)(int a1, size_t size))
{
  if (a1)
  {
    return 0;
  }

  ManagedDictionary = BrotliCreateManagedDictionary(a5, a6, a7);
  v7 = ManagedDictionary;
  if (ManagedDictionary)
  {
    PreparedDictionary = CreatePreparedDictionary((ManagedDictionary + 1), a3, a2);
    *(v7 + 32) = PreparedDictionary;
    if (!PreparedDictionary)
    {
      BrotliDestroyManagedDictionary(v7);
      return 0;
    }
  }

  return v7;
}

uint64_t BrotliEncoderDestroyPreparedDictionary(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*result == -558043678)
    {
      v2 = *(result + 32);
      if (v2)
      {
        if (*v2 == -558043679)
        {
          BrotliCleanupSharedEncoderDictionary(result + 8, v2);
          BrotliFree(v1 + 8);
        }

        else if (*v2 == -558043677)
        {
          DestroyPreparedDictionary(result + 8, v2);
        }
      }

      *(v1 + 32) = 0;

      return BrotliDestroyManagedDictionary(v1);
    }
  }

  return result;
}

uint64_t BrotliEncoderAttachPreparedDictionary(uint64_t a1, int *a2)
{
  v2 = a2;
  v4 = *a2;
  if (*a2 == -558043678)
  {
    v2 = *(a2 + 4);
    v4 = *v2;
  }

  if (v4 != -558043677)
  {
    if (v4 == -558043679)
    {
      v7 = !*(a1 + 624) && *(a1 + 628) == 1 && (v6 = *(a1 + 696), *(v6 + 24) == &kStaticDictionaryHashWords) && *(v6 + 32) == &kStaticDictionaryHashLengths;
      v9 = !v2[136] && *(v2 + 548) == 1 && (v8 = *(v2 + 77), *(v8 + 24) == &kStaticDictionaryHashWords) && *(v8 + 32) == &kStaticDictionaryHashLengths;
      if (!*(a1 + 6972))
      {
        v10 = *(a1 + 1392);
        if (v10 >= v2[328])
        {
          v10 = v2[328];
        }

        *(a1 + 1392) = v10;
        if (*(v2 + 1))
        {
          v11 = 0;
          do
          {
            result = AttachPreparedDictionary((a1 + 88), *&v2[2 * v11 + 6]);
            if (!result)
            {
              return result;
            }
          }

          while (++v11 < *(v2 + 1));
        }

        if (v9)
        {
          return 1;
        }

        if (v7)
        {
          memcpy((a1 + 624), v2 + 136, 0x300uLL);
          *(a1 + 1208) = 0;
          return 1;
        }
      }
    }

    else if (v4 == -558043680)
    {
      goto LABEL_6;
    }

    return 0;
  }

LABEL_6:
  result = AttachPreparedDictionary((a1 + 88), v2);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t GetBrotliStorage(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 1616) >= a2)
  {
    return *(a1 + 1624);
  }

  BrotliFree(a1 + 1400);
  *(a1 + 1624) = 0;
  result = BrotliAllocate(a1 + 1400);
  *(a1 + 1624) = result;
  *(a1 + 1616) = a2;
  return result;
}

void *GetHashTable(void *a1, int a2, unint64_t a3, unint64_t *a4)
{
  v6 = 0x20000;
  if (!a2)
  {
    v6 = 0x8000;
  }

  if (v6 >= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = v6;
  }

  v8 = 256;
  do
  {
    v9 = v8;
    v8 *= 2;
  }

  while (v9 < v7);
  if ((v9 & 0xAAA00) == 0 && a2 == 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v9;
  }

  if (v11 > 0x400)
  {
    if (v11 <= a1[859])
    {
      v12 = a1[858];
    }

    else
    {
      a1[859] = v11;
      BrotliFree((a1 + 175));
      a1[858] = 0;
      v12 = BrotliAllocate((a1 + 175));
      a1[858] = v12;
    }
  }

  else
  {
    v12 = a1 + 346;
  }

  *a4 = v11;
  bzero(v12, 4 * v11);
  return v12;
}

BOOL UpdateLastProcessedPos(uint64_t a1)
{
  v1 = *(a1 + 1520);
  if (v1 >> 30 >= 3)
  {
    LODWORD(v1) = (((2 * v1) >> 1) & 0xC0000000 | v1 & 0x3FFFFFFF) ^ 0x80000000;
  }

  v2 = *(a1 + 1424);
  v3 = (((2 * v2) >> 1) & 0xC0000000 | v2 & 0x3FFFFFFF) ^ 0x80000000;
  if (v2 <= 0xBFFFFFFF)
  {
    v3 = *(a1 + 1424);
  }

  *(a1 + 1520) = v2;
  return v3 < v1;
}

uint64_t ExtendLastCommand(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v3 = *(result + 1480) + 16 * *(result + 1488);
  v4 = *(v3 - 12) & 0x1FFFFFF;
  if (*(result + 1520) - v4 >= (1 << *(result + 8)) - 16)
  {
    v5 = (1 << *(result + 8)) - 16;
  }

  else
  {
    v5 = *(result + 1520) - v4;
  }

  v6 = *(result + 1528);
  v7 = *(v3 - 2);
  v8 = v7 & 0x3FF;
  v9 = *(result + 60);
  if (v8 >= v9 + 16)
  {
    v8 = v9 + 16 + ((v8 - v9 - 16) & ~(-1 << *(result + 56))) + ((*(v3 - 8) + ((((v8 - v9 - 16) >> *(result + 56)) & 1 | 2) << (v7 >> 10)) - 4) << *(result + 56));
  }

  if (v8 < 0x10 || v8 - 15 == v6)
  {
    v11 = *(result + 1464);
    v12 = *(result + 1436);
    v13 = v6 >= v5;
    v14 = v6 - v5;
    if (v14 != 0 && v13)
    {
      v15 = *(result + 96);
      if (v14 - 1 < v15 && v14 > v4)
      {
        v17 = v15 - v14 + v4;
        v18 = (result + 368);
        v19 = -1;
        do
        {
          v21 = *v18++;
          v20 = v21;
          ++v19;
        }

        while (v17 >= v21);
        if (*a2)
        {
          v22 = *(v18 - 2);
          v23 = v20 - v22;
          v24 = *(v18 - 18);
          v25 = v17 - v22;
          v26 = *a3;
          do
          {
            if (*(v11 + (v26 & v12)) != *(v24 + v25))
            {
              break;
            }

            ++*(v3 - 12);
            --*a2;
            v26 = (*a3 + 1);
            *a3 = v26;
            if (++v25 == v23)
            {
              v27 = v19 + 1;
              if (v19 + 1 == *(result + 88))
              {
                break;
              }

              v25 = 0;
              v24 = *(result + 232 + 8 * v27);
              v23 = *(result + 360 + 8 * v19++ + 16) - *(result + 360 + 8 * v27);
            }
          }

          while (*a2);
        }
      }
    }

    else if (*a2)
    {
      v28 = *a3;
      do
      {
        if (*(v11 + (v28 & v12)) != *(v11 + ((v28 - v6) & v12)))
        {
          break;
        }

        ++*(v3 - 12);
        --*a2;
        v28 = (*a3 + 1);
        *a3 = v28;
      }

      while (*a2);
    }

    v29 = *(v3 - 16);
    v30 = (*(v3 - 12) & 0x1FFFFFFu) + (*(v3 - 12) >> 25);
    v31 = v7 & 0x3FF;
    if (v29 > 5)
    {
      if (v29 > 0x81)
      {
        if (v29 > 0x841)
        {
          v33 = v29 >> 1;
          if (v29 < 0x5842)
          {
            LOWORD(v29) = 22;
          }

          else
          {
            LOWORD(v29) = 23;
          }

          if (v33 < 0xC21)
          {
            LOWORD(v29) = 21;
          }
        }

        else
        {
          LODWORD(v29) = (__clz(v29 - 66) ^ 0x1F) + 10;
        }
      }

      else
      {
        v29 -= 2;
        v32 = (__clz(v29) ^ 0x1F) - 1;
        LODWORD(v29) = (v29 >> v32) + 2 * v32 + 2;
      }
    }

    if (v30 > 9)
    {
      v35 = (__clz(v30 - 70) ^ 0x1F) + 12;
      if (v30 <= 0x845)
      {
        v34 = v35;
      }

      else
      {
        v34 = 23;
      }

      v36 = (__clz(v30 - 6) ^ 0x1F) - 1;
      if (v30 <= 0x85)
      {
        v34 = ((v30 - 6) >> v36) + 2 * v36 + 4;
      }
    }

    else
    {
      v34 = *(v3 - 12) + (*(v3 - 12) >> 25) - 2;
    }

    v37 = v34 & 7 | (8 * (v29 & 7));
    if (v31 || v29 > 7u || v34 > 0xFu)
    {
      v39 = 3 * (v29 >> 3) + ((v34 & 0xFFF8) >> 3);
      v38 = ((((0x520D40u >> (2 * v39)) & 0xC0) + (v39 << 6)) | v37) + 64;
    }

    else
    {
      LOWORD(v38) = v37 | 0x40;
      if ((v34 & 0xFFF8) == 0)
      {
        LOWORD(v38) = v34 & 7 | (8 * (v29 & 7));
      }
    }

    *(v3 - 4) = v38;
  }

  return result;
}

__n128 InitializeH5(__n128 *a1, uint64_t a2)
{
  *(a2 + 32) = a1;
  v2 = a1[3].n128_u32[3];
  v3 = a1[4].n128_u64[0];
  *(a2 + 24) = v3;
  v4 = v3;
  result = *a1;
  v6 = 1 << v4;
  *(a2 + 40) = *a1;
  *a2 = 1 << v2;
  *(a2 + 8) = v6;
  *(a2 + 16) = 32 - v2;
  *(a2 + 20) = v6 - 1;
  return result;
}

void PrepareH4(uint64_t a1, int a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  if (a2 && a3 <= 0x1000)
  {
    if (a3)
    {
      for (i = 0; i != a3; ++i)
      {
        v6 = (0x7BD3579BD3000000 * *(a4 + i)) >> 47;
        v7 = 4;
        do
        {
          v4[v6 & 0x1FFFF] = 0;
          LODWORD(v6) = v6 + 8;
          --v7;
        }

        while (v7);
      }
    }
  }

  else
  {
    bzero(v4, 0x80000uLL);
  }
}

void PrepareH5(unint64_t *a1, int a2, unint64_t a3, int *a4)
{
  v5 = a1[5];
  v6 = *a1;
  if (a2 && v6 >> 6 >= a3)
  {
    if (a3)
    {
      v7 = *(a1 + 4);
      do
      {
        v8 = *a4;
        a4 = (a4 + 1);
        v5[(506832829 * v8) >> v7] = 0;
        --a3;
      }

      while (a3);
    }
  }

  else
  {
    bzero(v5, 2 * v6);
  }
}

void PrepareH6(unint64_t *a1, int a2, unint64_t a3, uint64_t *a4)
{
  v5 = a1[6];
  v6 = *a1;
  if (a2 && v6 >> 6 >= a3)
  {
    if (a3)
    {
      v7 = a1[2];
      do
      {
        v8 = *a4;
        a4 = (a4 + 1);
        *&v5[((v8 * v7) >> 48) & 0xFFFE] = 0;
        --a3;
      }

      while (a3);
    }
  }

  else
  {
    bzero(v5, 2 * v6);
  }
}

void PrepareH40(uint64_t a1, int a2, unint64_t a3, int *a4)
{
  v5 = *(a1 + 16);
  if (a2 && a3 <= 0x200)
  {
    for (; a3; --a3)
    {
      v6 = *a4;
      a4 = (a4 + 1);
      v7 = (506832829 * v6) >> 17;
      *(v5 + 4 * v7) = -858993460;
      *(v5 + 0x20000 + 2 * v7) = -13108;
    }
  }

  else
  {
    memset(*(a1 + 16), 204, 0x20000uLL);
    bzero((v5 + 0x20000), 0x10000uLL);
  }

  bzero((v5 + 196608), 0x10000uLL);
  *a1 = 0;
}

void PrepareH42(void **a1, int a2, unint64_t a3, int *a4)
{
  v5 = a1[129];
  if (a2 && a3 <= 0x200)
  {
    for (; a3; --a3)
    {
      v6 = *a4;
      a4 = (a4 + 1);
      v7 = (506832829 * v6) >> 17;
      v5[v7] = -858993460;
      *(v5 + v7 + 0x10000) = -13108;
    }
  }

  else
  {
    memset(a1[129], 204, 0x20000uLL);
    bzero(v5 + 0x8000, 0x10000uLL);
  }

  bzero(v5 + 49152, 0x10000uLL);

  bzero(a1, 0x400uLL);
}

void PrepareH54(uint64_t a1, int a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  if (a2 && a3 <= 0x8000)
  {
    if (a3)
    {
      for (i = 0; i != a3; ++i)
      {
        v6 = (0xE35A7BD3579BD300 * *(a4 + i)) >> 44;
        v7 = 4;
        do
        {
          v4[v6 & 0xFFFFF] = 0;
          LODWORD(v6) = v6 + 8;
          --v7;
        }

        while (v7);
      }
    }
  }

  else
  {
    bzero(v4, 0x400000uLL);
  }
}

void PrepareH35(uint64_t a1, int a2, unint64_t a3, uint64_t *a4)
{
  if (*(a1 + 224))
  {
    *(a1 + 224) = 0;
    v8 = *(a1 + 216);
    v9 = *v8;
    *(a1 + 56) = *v8;
    v10 = *(v8 + 8);
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 64) = v10;
    v11 = *(v8 + 16);
    *(a1 + 136) = v11;
    v12 = *(v8 + 24);
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 144) = v12;
    *a1 = a1 + 56;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    *(a1 + 44) = 0x16C4362100010DCDLL;
    *(a1 + 24) = v11;
    *(a1 + 32) = 0;
    memset(v11, 255, 0x4000000uLL);
    if (!a2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = *(a1 + 8);
    if (!a2)
    {
LABEL_10:
      bzero(v9, 0x40000uLL);
      goto LABEL_11;
    }
  }

  if (a3 > 0x800)
  {
    goto LABEL_10;
  }

  if (!a3)
  {
    return;
  }

  v13 = a4;
  v14 = a3;
  do
  {
    v15 = *v13;
    v13 = (v13 + 1);
    v16 = (0x7BD3579BD3000000 * v15) >> 48;
    *(v9 + v16) = 0;
    *(v9 + (v16 + 8)) = 0;
    --v14;
  }

  while (v14);
LABEL_11:
  if (a3 >= 0x20)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v18 = *(a4 + v17) + v18 * *(a1 + 44) + 1;
      v19 = v17 >= 0x1C;
      v17 += 4;
    }

    while (!v19);
    *(a1 + 16) = v18;
  }
}

void PrepareH55(uint64_t a1, int a2, unint64_t a3, uint64_t a4)
{
  if (*(a1 + 224))
  {
    *(a1 + 224) = 0;
    v8 = *(a1 + 216);
    v9 = *v8;
    *(a1 + 56) = *v8;
    v10 = v8[1];
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 64) = v10;
    v11 = v8[2];
    *(a1 + 136) = v11;
    v12 = v8[3];
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 144) = v12;
    *a1 = a1 + 56;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    *(a1 + 44) = 0x16C4362100010DCDLL;
    *(a1 + 24) = v11;
    *(a1 + 32) = 0;
    memset(v11, 255, 0x4000000uLL);
  }

  PrepareH54(a1, a2, a3, a4);
  if (a3 >= 0x20)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v14 = *(a4 + v13) + v14 * *(a1 + 44) + 1;
      v15 = v13 >= 0x1C;
      v13 += 4;
    }

    while (!v15);
    *(a1 + 16) = v14;
  }
}

void PrepareH65(uint64_t a1, int a2, unint64_t a3, uint64_t *a4)
{
  if (*(a1 + 272))
  {
    *(a1 + 272) = 0;
    v8 = *(a1 + 264);
    v9 = *v8;
    *(a1 + 104) = *v8;
    v10 = v8[1];
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 112) = v10;
    *(a1 + 16) = 0x7BD3579BD3000000;
    v11 = 1 << *(a1 + 164);
    v12 = *(a1 + 168);
    *(a1 + 28) = v12;
    v13 = v8[2];
    *(a1 + 184) = v13;
    v14 = v8[3];
    *(a1 + 200) = 0;
    *(a1 + 208) = 0;
    *(a1 + 192) = v14;
    *a1 = v11;
    *(a1 + 8) = 1 << v12;
    *(a1 + 24) = (1 << v12) - 1;
    *(a1 + 40) = a1 + 104;
    *(a1 + 48) = v9;
    *(a1 + 56) = v10;
    *(a1 + 64) = 0;
    *(a1 + 92) = 0xF1EBF08100010DCDLL;
    *(a1 + 72) = v13;
    *(a1 + 80) = 0;
    memset(v13, 255, 0x4000000uLL);
  }

  PrepareH6(a1, a2, a3, a4);
  if (a3 >= 0x20)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v16 = *(a4 + v15++) + v16 * *(a1 + 92) + 1;
    }

    while (v15 != 32);
    *(a1 + 64) = v16;
  }
}

void DecideOverLiteralContextModeling(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, unint64_t a6, uint64_t *a7, uint64_t *a8, char *a9)
{
  *&v118[4] = *MEMORY[0x1E69E9840];
  if (a3 >= 0x40 && a5 >= 5)
  {
    v10 = a2;
    v12 = a3 + a2;
    v111 = a3 + a2;
    if (a6 >> 20)
    {
      bzero(a9, 0x700uLL);
      v14 = v10 + 64;
      v15 = 0.0;
      v16 = 0.0;
      if (v10 + 64 <= v12)
      {
        v17 = 0;
        v18 = v10 + 64;
        v19 = v10;
        do
        {
          if (v19 + 2 < v18)
          {
            v20 = *(a1 + ((v19 + 1) & a4));
            v21 = *(a1 + (v19 & a4));
            for (i = 2; i != 64; ++i)
            {
              v23 = v20;
              v20 = *(a1 + ((v19 + i) & a4));
              v24 = ShouldUseComplexStaticContextMap_kStaticContextMapComplexUTF8[(*(&_kBrotliContextLookupTable + v21 + 1280) | *(&_kBrotliContextLookupTable + v23 + 1024))];
              ++*&a9[4 * (v20 >> 3)];
              v25 = (v20 >> 3) & 0xFFFFE01F | (32 * v24);
              v21 = v23;
              ++*&a9[4 * v25 + 128];
            }

            v17 += 62;
          }

          v19 += 4096;
          v18 += 4096;
        }

        while (v18 <= v12);
        v16 = v17;
      }

      v107 = v10;
      v26 = 0;
      v27 = 0;
      do
      {
        v28 = *&a9[v26];
        if (v28 > 0xFF)
        {
          v29 = log2(v28);
        }

        else
        {
          v29 = kBrotliLog2Table[v28];
        }

        v30 = *&a9[v26 + 4];
        if (v30 > 0xFF)
        {
          v31 = log2(v30);
        }

        else
        {
          v31 = kBrotliLog2Table[v30];
        }

        v26 += 8;
        v27 += v28 + v30;
        v15 = v15 - v28 * v29 - v30 * v31;
      }

      while ((v26 - 8) < 0x78);
      if (v27)
      {
        if (v27 > 0xFF)
        {
          v32 = log2(v27);
        }

        else
        {
          v32 = kBrotliLog2Table[v27];
        }

        v15 = v15 + v27 * v32;
      }

      v33 = 0;
      v34 = 0.0;
      v35 = a9;
      v112 = v14;
      do
      {
        v36 = 0;
        v37 = 0;
        v38 = 0.0;
        do
        {
          v39 = *&v35[v36 + 128];
          if (v39 > 0xFF)
          {
            v40 = log2(v39);
          }

          else
          {
            v40 = kBrotliLog2Table[v39];
          }

          v41 = *&v35[v36 + 132];
          if (v41 > 0xFF)
          {
            v42 = log2(v41);
          }

          else
          {
            v42 = kBrotliLog2Table[v41];
          }

          v36 += 8;
          v37 += v39 + v41;
          v38 = v38 - v39 * v40 - v41 * v42;
        }

        while ((v36 - 8) < 0x78);
        if (v37)
        {
          if (v37 > 0xFF)
          {
            v43 = log2(v37);
          }

          else
          {
            v43 = kBrotliLog2Table[v37];
          }

          v13 = v112;
          v38 = v38 + v37 * v43;
        }

        else
        {
          v13 = v112;
        }

        v34 = v34 + v38;
        ++v33;
        v35 += 128;
      }

      while (v33 != 13);
      v44 = 1.0 / v16 * v34;
      if (v44 <= 3.0)
      {
        v10 = v107;
        if (1.0 / v16 * v15 - v44 >= 0.2)
        {
          *a7 = 13;
          v105 = ShouldUseComplexStaticContextMap_kStaticContextMapComplexUTF8;
          goto LABEL_123;
        }
      }

      else
      {
        v10 = v107;
      }
    }

    else
    {
      v13 = a2 + 64;
    }

    v45 = &v113 + 4;
    v46 = &v116 + 4;
    *(a9 + 8) = 0;
    *a9 = 0u;
    *(a9 + 1) = 0u;
    if (v13 <= v111)
    {
      v47 = ~v10 + v13;
      do
      {
        v48 = v10 + 1;
        if (v10 + 1 < v13)
        {
          v49 = *(&DecideOverLiteralContextModeling_lut + ((*(a1 + (v10 & a4)) >> 4) & 0xC));
          v50 = v47;
          do
          {
            v51 = 3 * v49;
            v49 = *(&DecideOverLiteralContextModeling_lut + ((*(a1 + (v48 & a4)) >> 4) & 0xC));
            ++*&a9[4 * v49 + 4 * v51];
            ++v48;
            --v50;
          }

          while (v50);
        }

        v10 += 4096;
        v13 += 4096;
      }

      while (v13 <= v111);
    }

    v52 = 0;
    v117 = 0;
    v115 = 0;
    v116 = 0;
    v113 = 0;
    v114 = 0;
    do
    {
      v53 = *&a9[4 * v52];
      *(&v116 + v52 % 3u) += v53;
      v54 = v52 - 6;
      if (v52 < 6)
      {
        v54 = v52;
      }

      *(&v113 + v54) += v53;
      ++v52;
    }

    while (v52 != 9);
    v55 = 0;
    v56 = &v116;
    v57 = 1;
    v58 = 0.0;
    while (1)
    {
      v59 = *v56;
      v60 = v59 > 0xFF ? log2(v59) : kBrotliLog2Table[v59];
      v61 = v55 + v59;
      v62 = v58 - v59 * v60;
      if ((v57 & 1) == 0)
      {
        break;
      }

      v63 = *v46;
      if (v63 > 0xFF)
      {
        v64 = log2(v63);
      }

      else
      {
        v64 = kBrotliLog2Table[v63];
      }

      v57 = 0;
      v55 = v61 + v63;
      v58 = v62 - v63 * v64;
      v56 = &v117;
      v46 = v118;
    }

    if (v61)
    {
      if (v61 > 0xFF)
      {
        v65 = log2(v61);
      }

      else
      {
        v65 = kBrotliLog2Table[v61];
      }

      v62 = v62 + v61 * v65;
    }

    v66 = 0;
    v67 = 1;
    v68 = &v113;
    v69 = 0.0;
    while (1)
    {
      v70 = *v68;
      v71 = v70 > 0xFF ? log2(v70) : kBrotliLog2Table[v70];
      v72 = v66 + v70;
      v73 = v69 - v70 * v71;
      if ((v67 & 1) == 0)
      {
        break;
      }

      v74 = *v45;
      if (v74 > 0xFF)
      {
        v75 = log2(v74);
      }

      else
      {
        v75 = kBrotliLog2Table[v74];
      }

      v67 = 0;
      v66 = v72 + v74;
      v69 = v73 - v74 * v75;
      v68 = &v114;
      v45 = &v114 + 4;
    }

    if (v72)
    {
      if (v72 > 0xFF)
      {
        v76 = log2(v72);
      }

      else
      {
        v76 = kBrotliLog2Table[v72];
      }

      v73 = v73 + v72 * v76;
    }

    v77 = 0;
    v78 = 0;
    v79 = 0.0;
    while (1)
    {
      v80 = *(&v114 + v77 + 4);
      v81 = v80 > 0xFF ? log2(v80) : kBrotliLog2Table[v80];
      v82 = v78 + v80;
      v83 = v79 - v80 * v81;
      if ((v77 + 12) >= 0x14)
      {
        break;
      }

      v84 = *(&v115 + v77);
      if (v84 > 0xFF)
      {
        v85 = log2(v84);
      }

      else
      {
        v85 = kBrotliLog2Table[v84];
      }

      v78 = v82 + v84;
      v79 = v83 - v84 * v85;
      v77 += 8;
    }

    if (v82)
    {
      if (v82 > 0xFF)
      {
        v86 = log2(v82);
      }

      else
      {
        v86 = kBrotliLog2Table[v82];
      }

      v83 = v83 + v82 * v86;
    }

    v87 = 0;
    v88 = 0.0;
    do
    {
      v89 = 0;
      v90 = 0;
      v91 = &a9[12 * v87];
      v92 = 1;
      v93 = 0.0;
      while (1)
      {
        v94 = *&v91[v90];
        v95 = v94 > 0xFF ? log2(v94) : kBrotliLog2Table[v94];
        v96 = v89 + v94;
        v97 = v93 - v94 * v95;
        if ((v92 & 1) == 0)
        {
          break;
        }

        v98 = *&v91[v90 | 4];
        if (v98 > 0xFF)
        {
          v99 = log2(v98);
        }

        else
        {
          v99 = kBrotliLog2Table[v98];
        }

        v92 = 0;
        v89 = v96 + v98;
        v93 = v97 - v98 * v99;
        v90 = 8;
      }

      if (v96)
      {
        if (v96 > 0xFF)
        {
          v100 = log2(v96);
        }

        else
        {
          v100 = kBrotliLog2Table[v96];
        }

        v97 = v97 + v96 * v100;
      }

      v88 = v88 + v97;
      ++v87;
    }

    while (v87 != 3);
    v101 = 1.0 / (HIDWORD(v116) + v116 + v117);
    v102 = v62 * v101;
    v103 = (v73 + v83) * v101;
    v104 = v88 * v101;
    if (a5 < 7)
    {
      v104 = v102 * 10.0;
    }

    if (v102 - v103 < 0.2 && v102 - v104 < 0.2)
    {
      v105 = 1;
      v106 = a7;
LABEL_124:
      *v106 = v105;
      return;
    }

    if (v103 - v104 >= 0.02)
    {
      *a7 = 3;
      v105 = &ChooseContextMap_kStaticContextMapContinuation;
    }

    else
    {
      *a7 = 2;
      v105 = &ChooseContextMap_kStaticContextMapSimpleUTF8;
    }

LABEL_123:
    v106 = a8;
    goto LABEL_124;
  }
}

void BrotliPopulationCostLiteral(uint64_t a1)
{
  v35[5] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 1024);
  if (!v1)
  {
    return;
  }

  v3 = 0;
  for (i = 0; i != 256; ++i)
  {
    if (*(a1 + 4 * i))
    {
      v35[v3] = i;
      v5 = v3++ <= 3;
      if (!v5)
      {
        break;
      }
    }
  }

  if (v3 < 3)
  {
    if (v3 == 1 || v3 == 2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v3 == 3)
  {
    return;
  }

  if (v3 != 4)
  {
LABEL_23:
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    if (v1 > 0xFF)
    {
      v12 = log2(v1);
    }

    else
    {
      v12 = kBrotliLog2Table[v1];
    }

    v13 = 0;
    v14 = 0;
    v15 = 0.0;
    v16 = 1;
    while (1)
    {
      v17 = *(a1 + 4 * v14);
      if (v17)
      {
        if (v17 > 0xFF)
        {
          v19 = v17;
          v18 = log2(v17);
        }

        else
        {
          v18 = kBrotliLog2Table[v17];
          v19 = v17;
        }

        v23 = v12 - v18;
        v24 = (v23 + 0.5);
        v15 = v15 + v19 * v23;
        if (v24 >= 0xF)
        {
          v24 = 15;
        }

        if (v24 > v16)
        {
          v16 = v24;
        }

        ++*(v33 + v24);
        ++v14;
      }

      else
      {
        if (v14 == 255)
        {
          goto LABEL_47;
        }

        v20 = 255 - v14;
        v21 = 1;
        do
        {
          if (*(a1 + 4 * v14 + 4 * v21))
          {
            break;
          }

          ++v21;
          --v20;
        }

        while (v20);
        v14 += v21;
        if (v14 == 256)
        {
LABEL_47:
          v25 = 0;
          v26 = 0;
          HIDWORD(v34) = v13;
          v27 = 0.0;
          do
          {
            v28 = *(v33 + v25);
            if (v28 > 0xFF)
            {
              v30 = v28;
              v29 = log2(v28);
            }

            else
            {
              v29 = kBrotliLog2Table[v28];
              v30 = v28;
            }

            v31 = *(v33 + v25 + 4);
            if (v31 > 0xFF)
            {
              v32 = log2(v31);
            }

            else
            {
              v32 = kBrotliLog2Table[v31];
            }

            v25 += 8;
            v26 += v28 + v31;
            v27 = v27 - v30 * v29 - v31 * v32;
          }

          while ((v25 - 8) < 0x40);
          if (v26 >= 0x100)
          {
            log2(v26);
          }

          return;
        }

        v22 = v21 - 2;
        if (v21 > 2)
        {
          do
          {
            ++v13;
            v15 = v15 + 3.0;
            v5 = v22 > 7;
            v22 >>= 3;
          }

          while (v5);
        }

        else
        {
          LODWORD(v33[0]) += v21;
        }
      }

      if (v14 >= 0x100)
      {
        goto LABEL_47;
      }
    }
  }

  for (j = 0; j != 4; ++j)
  {
    *(v33 + j) = *(a1 + 4 * v35[j]);
  }

  v7 = 0;
  do
  {
    v8 = v7++;
    if (v8 <= 2)
    {
      v9 = *(v33 + v8);
      v10 = v7;
      do
      {
        v11 = *(v33 + v10);
        if (v11 > v9)
        {
          *(v33 + v10) = v9;
          *(v33 + v8) = v11;
          v9 = v11;
        }

        ++v10;
      }

      while (v10 != 4);
    }
  }

  while (v7 != 4);
}

void BrotliPopulationCostCommand(uint64_t a1)
{
  v37[5] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 2816);
  if (!v1)
  {
    return;
  }

  v3 = 0;
  for (i = 0; i != 704; ++i)
  {
    if (*(a1 + 4 * i))
    {
      v37[v3] = i;
      v5 = v3++ <= 3;
      if (!v5)
      {
        break;
      }
    }
  }

  if (v3 < 3)
  {
    if (v3 == 1 || v3 == 2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v3 == 3)
  {
    return;
  }

  if (v3 != 4)
  {
LABEL_23:
    v36 = 0;
    memset(v35, 0, sizeof(v35));
    if (v1 > 0xFF)
    {
      v12 = log2(v1);
    }

    else
    {
      v12 = kBrotliLog2Table[v1];
    }

    v13 = 0;
    v14 = 0;
    v15 = 0.0;
    v16 = 1;
    while (1)
    {
      v17 = *(a1 + 4 * v14);
      if (v17)
      {
        if (v17 > 0xFF)
        {
          v19 = v17;
          v18 = log2(v17);
        }

        else
        {
          v18 = kBrotliLog2Table[v17];
          v19 = v17;
        }

        v24 = v12 - v18;
        v25 = (v24 + 0.5);
        v15 = v15 + v19 * v24;
        if (v25 >= 0xF)
        {
          v25 = 15;
        }

        if (v25 > v16)
        {
          v16 = v25;
        }

        ++*(v35 + v25);
        ++v14;
        goto LABEL_50;
      }

      if (v14 > 0x2BE)
      {
        if (++v14 == 704)
        {
          goto LABEL_51;
        }

        v20 = 1;
      }

      else
      {
        v20 = 704 - v14;
        v21 = v14 - 703;
        v22 = 1;
        while (!*(a1 + 4 * v14 + 4 * v22))
        {
          ++v22;
          if (__CFADD__(v21++, 1))
          {
            goto LABEL_46;
          }
        }

        v20 = v22;
LABEL_46:
        v14 += v20;
        if (v14 == 704)
        {
LABEL_51:
          v27 = 0;
          v28 = 0;
          HIDWORD(v36) = v13;
          v29 = 0.0;
          do
          {
            v30 = *(v35 + v27);
            if (v30 > 0xFF)
            {
              v32 = v30;
              v31 = log2(v30);
            }

            else
            {
              v31 = kBrotliLog2Table[v30];
              v32 = v30;
            }

            v33 = *(v35 + v27 + 4);
            if (v33 > 0xFF)
            {
              v34 = log2(v33);
            }

            else
            {
              v34 = kBrotliLog2Table[v33];
            }

            v27 += 8;
            v28 += v30 + v33;
            v29 = v29 - v32 * v31 - v33 * v34;
          }

          while ((v27 - 8) < 0x40);
          if (v28 >= 0x100)
          {
            log2(v28);
          }

          return;
        }

        v26 = v20 - 2;
        if (v20 > 2)
        {
          do
          {
            ++v13;
            v15 = v15 + 3.0;
            v5 = v26 > 7;
            v26 >>= 3;
          }

          while (v5);
          goto LABEL_50;
        }
      }

      LODWORD(v35[0]) += v20;
LABEL_50:
      if (v14 >= 0x2C0)
      {
        goto LABEL_51;
      }
    }
  }

  for (j = 0; j != 4; ++j)
  {
    *(v35 + j) = *(a1 + 4 * v37[j]);
  }

  v7 = 0;
  do
  {
    v8 = v7++;
    if (v8 <= 2)
    {
      v9 = *(v35 + v8);
      v10 = v7;
      do
      {
        v11 = *(v35 + v10);
        if (v11 > v9)
        {
          *(v35 + v10) = v9;
          *(v35 + v8) = v11;
          v9 = v11;
        }

        ++v10;
      }

      while (v10 != 4);
    }
  }

  while (v7 != 4);
}

void BrotliPopulationCostDistance(uint64_t a1)
{
  v37[5] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 2176);
  if (!v1)
  {
    return;
  }

  v3 = 0;
  for (i = 0; i != 544; ++i)
  {
    if (*(a1 + 4 * i))
    {
      v37[v3] = i;
      v5 = v3++ <= 3;
      if (!v5)
      {
        break;
      }
    }
  }

  if (v3 < 3)
  {
    if (v3 == 1 || v3 == 2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v3 == 3)
  {
    return;
  }

  if (v3 != 4)
  {
LABEL_23:
    v36 = 0;
    memset(v35, 0, sizeof(v35));
    if (v1 > 0xFF)
    {
      v12 = log2(v1);
    }

    else
    {
      v12 = kBrotliLog2Table[v1];
    }

    v13 = 0;
    v14 = 0;
    v15 = 0.0;
    v16 = 1;
    while (1)
    {
      v17 = *(a1 + 4 * v14);
      if (v17)
      {
        if (v17 > 0xFF)
        {
          v19 = v17;
          v18 = log2(v17);
        }

        else
        {
          v18 = kBrotliLog2Table[v17];
          v19 = v17;
        }

        v24 = v12 - v18;
        v25 = (v24 + 0.5);
        v15 = v15 + v19 * v24;
        if (v25 >= 0xF)
        {
          v25 = 15;
        }

        if (v25 > v16)
        {
          v16 = v25;
        }

        ++*(v35 + v25);
        ++v14;
        goto LABEL_50;
      }

      if (v14 > 0x21E)
      {
        if (++v14 == 544)
        {
          goto LABEL_51;
        }

        v20 = 1;
      }

      else
      {
        v20 = 544 - v14;
        v21 = v14 - 543;
        v22 = 1;
        while (!*(a1 + 4 * v14 + 4 * v22))
        {
          ++v22;
          if (__CFADD__(v21++, 1))
          {
            goto LABEL_46;
          }
        }

        v20 = v22;
LABEL_46:
        v14 += v20;
        if (v14 == 544)
        {
LABEL_51:
          v27 = 0;
          v28 = 0;
          HIDWORD(v36) = v13;
          v29 = 0.0;
          do
          {
            v30 = *(v35 + v27);
            if (v30 > 0xFF)
            {
              v32 = v30;
              v31 = log2(v30);
            }

            else
            {
              v31 = kBrotliLog2Table[v30];
              v32 = v30;
            }

            v33 = *(v35 + v27 + 4);
            if (v33 > 0xFF)
            {
              v34 = log2(v33);
            }

            else
            {
              v34 = kBrotliLog2Table[v33];
            }

            v27 += 8;
            v28 += v30 + v33;
            v29 = v29 - v32 * v31 - v33 * v34;
          }

          while ((v27 - 8) < 0x40);
          if (v28 >= 0x100)
          {
            log2(v28);
          }

          return;
        }

        v26 = v20 - 2;
        if (v20 > 2)
        {
          do
          {
            ++v13;
            v15 = v15 + 3.0;
            v5 = v26 > 7;
            v26 >>= 3;
          }

          while (v5);
          goto LABEL_50;
        }
      }

      LODWORD(v35[0]) += v20;
LABEL_50:
      if (v14 >= 0x220)
      {
        goto LABEL_51;
      }
    }
  }

  for (j = 0; j != 4; ++j)
  {
    *(v35 + j) = *(a1 + 4 * v37[j]);
  }

  v7 = 0;
  do
  {
    v8 = v7++;
    if (v8 <= 2)
    {
      v9 = *(v35 + v8);
      v10 = v7;
      do
      {
        v11 = *(v35 + v10);
        if (v11 > v9)
        {
          *(v35 + v10) = v9;
          *(v35 + v8) = v11;
          v9 = v11;
        }

        ++v10;
      }

      while (v10 != 4);
    }
  }

  while (v7 != 4);
}

uint64_t BrotliZopfliCreateCommands(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v46 = result;
  v8 = *(a3 + 12);
  if (v8 == -1)
  {
    v9 = 0;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v11 = (1 << *(a6 + 8)) - 16;
    v12 = *(a6 + 16) + a2;
    v13 = *(a6 + 96);
    v14 = a7 + 8;
    do
    {
      v15 = (a3 + 16 * v9 + 16 * v8);
      v16 = *v15;
      v17 = v15[2];
      v8 = v15[3];
      v18 = v17 & 0x7FFFFFF;
      if (v10)
      {
        v19 = v17 & 0x7FFFFFF;
      }

      else
      {
        v19 = *a5 + v18;
        *a5 = 0;
      }

      v20 = v16 & 0x1FFFFFF;
      v21 = v9 + v18;
      v22 = v15[1];
      v23 = (v16 & 0x1FFFFFF) - (v16 >> 25) + 9;
      v24 = v12 + v21;
      if (v12 + v21 >= v11)
      {
        v24 = v11;
      }

      v25 = v17 >> 27;
      if (v25)
      {
        v26 = v25 - 1;
      }

      else
      {
        v26 = (v22 + 15);
      }

      *(v14 - 8) = v19;
      *(v14 - 4) = v20 | ((v23 - v16) << 25);
      v27 = *(a6 + 60);
      v28 = v27 + 16;
      if (v27 + 16 <= v26)
      {
        v31 = *(a6 + 56);
        v32 = v26 - v27 + (4 << v31) - 16;
        v33 = (__clz(v32) ^ 0x1F) - 1;
        result = (v32 & ~(-1 << v31)) + v28 + ((((v32 >> v33) & 1 | (2 * (v33 - v31))) + 65534) << v31);
        v30 = ((v32 & ~(-1 << v31)) + v28 + ((((v32 >> v33) & 1 | (2 * (v33 - v31))) + 65534) << v31)) | ((v33 - v31) << 10);
        v29 = (v32 - (((v32 >> v33) & 1 | 2) << v33)) >> v31;
      }

      else
      {
        LODWORD(v29) = 0;
        v30 = v26;
      }

      *(v14 + 6) = v30;
      *v14 = v29;
      if (v19 > 5)
      {
        if (v19 > 0x81)
        {
          if (v19 > 0x841)
          {
            if (v19 >> 1 >= 0xC21)
            {
              if (v19 < 0x5842)
              {
                LOWORD(v34) = 22;
              }

              else
              {
                LOWORD(v34) = 23;
              }
            }

            else
            {
              LOWORD(v34) = 21;
            }
          }

          else
          {
            v34 = (__clz(v19 - 66) ^ 0x1F) + 10;
          }
        }

        else
        {
          v35 = (__clz(v19 - 2) ^ 0x1F) - 1;
          v34 = ((v19 - 2) >> v35) + 2 * v35 + 2;
        }
      }

      else
      {
        LOWORD(v34) = v19;
      }

      if (v23 > 9)
      {
        v37 = (__clz(v23 - 70) ^ 0x1F) + 12;
        if (v23 > 0x845)
        {
          LOWORD(v37) = 23;
        }

        v38 = (__clz(v23 - 6) ^ 0x1F) - 1;
        v39 = ((v23 - 6) >> v38) + 2 * v38 + 4;
        if (v23 <= 0x85)
        {
          v36 = v39;
        }

        else
        {
          v36 = v37;
        }
      }

      else
      {
        v36 = v23 - 2;
      }

      v40 = v30 & 0x3FF;
      v41 = v36 & 7 | (8 * (v34 & 7));
      if (v40)
      {
        v42 = 1;
      }

      else
      {
        v42 = v34 > 7u;
      }

      if (v42 || v36 > 0xFu)
      {
        v44 = 3 * (v34 >> 3) + ((v36 & 0xFFF8) >> 3);
        v45 = ((((0x520D40u >> (2 * v44)) & 0xC0) + (v44 << 6)) | v41) + 64;
      }

      else if ((v36 & 0xFFF8) != 0)
      {
        LOWORD(v45) = v41 | 0x40;
      }

      else
      {
        LOWORD(v45) = v36 & 7 | (8 * (v34 & 7));
      }

      *(v14 + 4) = v45;
      if (v24 + v13 >= v22 && v26)
      {
        *(a4 + 12) = *(a4 + 8);
        *(a4 + 4) = *a4;
        *a4 = v22;
      }

      *a8 += v19;
      v9 = v21 + v20;
      --v10;
      v14 += 16;
    }

    while (v8 != 0xFFFFFFFFLL);
  }

  *a5 += v46 - v9;
  return result;
}

uint64_t BrotliZopfliComputeShortestPath(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, _DWORD *a10)
{
  v10 = a7;
  v216 = *MEMORY[0x1E69E9840];
  v205 = *(a7 + 16);
  v211 = *(a7 + 8);
  v113 = *(a7 + 4) < 11;
  v16 = 325;
  memset(&v213[14], 0, 32);
  if (v113)
  {
    v16 = 150;
  }

  v193 = v16;
  memset(v213, 0, 224);
  v197 = BrotliAllocate(a1);
  if (a2 >= 0x7F)
  {
    v17 = a2 - 127;
  }

  else
  {
    v17 = 0;
  }

  v18 = v10[11];
  v203 = v10[12];
  v19 = BrotliAllocate(a1);
  *a10 = 0;
  a10[3] = 0;
  v187 = a1;
  InitZopfliCostModel(a1, v19, (v10 + 7), a2);
  v207 = v19;
  v210 = a3;
  ZopfliCostModelSetFromLiteralCosts(v19, a3, a4, a5);
  v214 = 0;
  if (a2 < 4)
  {
    goto LABEL_244;
  }

  v20 = 0;
  v21 = a9;
  v209 = (1 << v211) - 16;
  v188 = v17 + v210;
  v189 = v10 + 629;
  v191 = v10 + 87;
  v192 = a2;
  v22 = (v197 + ((v18 != 0) << 11));
  v208 = v22 - 64;
  v198 = v22;
  v201 = v22 - 516;
  v202 = v10;
  v212 = v10 + 13;
  v204 = v10 + 45;
  do
  {
    v23 = v20 + v210;
    if (v20 + v210 >= v209)
    {
      v24 = v209;
    }

    else
    {
      v24 = v20 + v210;
    }

    v25 = v23 + v205;
    if (v23 + v205 >= v209)
    {
      v25 = v209;
    }

    v194 = v25;
    if (*(v10 + 156))
    {
      if (v23)
      {
        v26 = *(a4 + ((v23 - 1) & a5));
        v27 = v20;
        if (v23 != 1)
        {
          v28 = *(a4 + ((v23 - 2) & a5));
LABEL_20:
          v29 = v189[*(a6 + 256 + v28) | *(a6 + v26)];
          v20 = v27;
          goto LABEL_21;
        }
      }

      else
      {
        v27 = v20;
        v26 = 0;
      }

      v28 = 0;
      goto LABEL_20;
    }

    v29 = 0;
LABEL_21:
    v195 = v191[v29];
    v199 = v20;
    v30 = a2 - v20;
    v31 = v23 & a5;
    v32 = 16;
    if (*(v10 + 1) == 11)
    {
      v32 = 64;
    }

    v114 = v23 >= v32;
    v33 = v23 - v32;
    if (!v114)
    {
      v33 = 0;
    }

    v34 = v23 - 1;
    if (v23 - 1 <= v33)
    {
      v37 = 1;
      v36 = v198;
    }

    else
    {
      v35 = (a4 + v31);
      v36 = v198;
      v37 = 1;
      do
      {
        if (v23 - v34 > v24)
        {
          break;
        }

        v38 = (a4 + (v34 & a5));
        if (*v35 == *v38 && v35[1] == v38[1])
        {
          if (v30 < 8)
          {
            i = v30;
            v44 = (a4 + v31);
            v43 = (a4 + (v34 & a5));
            if (v30)
            {
LABEL_37:
              v45 = &v43[i];
              while (*v43 == *v44)
              {
                ++v44;
                ++v43;
                if (!--i)
                {
                  v43 = v45;
                  break;
                }
              }
            }
          }

          else
          {
            v39 = 0;
            for (i = v30; i > 7; i -= 8)
            {
              v41 = *&v35[v39];
              v42 = *&v38[v39];
              if (v41 != v42)
              {
                v46 = v39 + (__clz(__rbit64(v42 ^ v41)) >> 3);
                goto LABEL_43;
              }

              v39 += 8;
            }

            v43 = &v38[v39];
            v44 = &v35[v39];
            if (i)
            {
              goto LABEL_37;
            }
          }

          v46 = v43 - v38;
LABEL_43:
          if (v46 > v37)
          {
            *v36 = v23 - v34;
            *(v36++ + 1) = 32 * v46;
            v37 = v46;
          }
        }

        if (--v34 <= v33)
        {
          break;
        }
      }

      while (v37 < 3);
    }

    v200 = v23;
    if (v37 >= v30)
    {
      goto LABEL_92;
    }

    v47 = a4 + v31;
    v48 = (506832829 * *(a4 + v31)) >> 15;
    v49 = *(v21 + 104);
    v51 = *(v21 + 80);
    v50 = *(v21 + 88);
    v52 = *(v50 + 4 * v48);
    v53 = 128;
    if (v30 >= 0x80)
    {
      *(v50 + 4 * v48) = v23;
    }

    else
    {
      v53 = v30;
    }

    v54 = 2 * (v51 & v23);
    v55 = v54 | 1;
    if (v23 != v52)
    {
      v56 = 0;
      v57 = 0;
      v58 = 64;
      do
      {
        v59 = v23 - v52;
        if (v23 - v52 > v24 || v58 == 0)
        {
          break;
        }

        if (v57 >= v56)
        {
          v61 = v56;
        }

        else
        {
          v61 = v57;
        }

        v62 = v47 + v61;
        v63 = a4 + (v52 & a5);
        v64 = (v63 + v61);
        v65 = v30 - v61;
        if (v30 - v61 < 8)
        {
          v69 = (v47 + v61);
          if (v65)
          {
LABEL_69:
            v70 = &v69[v65];
            while (*v69 == *v64)
            {
              ++v64;
              ++v69;
              if (!--v65)
              {
                v69 = v70;
                break;
              }
            }
          }
        }

        else
        {
          v66 = 0;
          do
          {
            v67 = *&v64[v66];
            v68 = *(v62 + v66);
            if (v67 != v68)
            {
              v71 = (v66 + (__clz(__rbit64(v68 ^ v67)) >> 3));
              goto LABEL_75;
            }

            v65 -= 8;
            v66 += 8;
          }

          while (v65 > 7);
          v69 = (v62 + v66);
          v64 += v66;
          if (v65)
          {
            goto LABEL_69;
          }
        }

        v71 = &v69[-v62];
LABEL_75:
        v72 = &v71[v61];
        if (v36 && v72 > v37)
        {
          *v36 = v59;
          *(v36++ + 1) = 32 * v72;
          v37 = v72;
        }

        if (v72 >= v53)
        {
          if (v30 < 0x80)
          {
            goto LABEL_92;
          }

          v76 = (v49 + 8 * (v52 & v51));
          *(v49 + 4 * v54) = *v76;
          v74 = v76[1];
          goto LABEL_89;
        }

        if (*(v47 + v72) <= *(v63 + v72))
        {
          if (v30 >= 0x80)
          {
            *(v49 + 4 * v55) = v52;
          }

          v55 = 2 * (v52 & v51);
          v56 = v72;
          v73 = v55;
        }

        else
        {
          if (v30 >= 0x80)
          {
            *(v49 + 4 * v54) = v52;
          }

          v54 = (2 * (v52 & v51)) | 1;
          v57 = v72;
          v73 = v54;
        }

        v52 = *(v49 + 4 * v73);
        --v58;
        v23 = v200;
      }

      while (v200 != v52);
    }

    if (v30 < 0x80)
    {
LABEL_92:
      v75 = v195;
    }

    else
    {
      v74 = *(v21 + 96);
      *(v49 + 4 * v54) = v74;
LABEL_89:
      v75 = v195;
      *(v49 + 4 * v55) = v74;
    }

    memset_pattern16(__b, &unk_1AB467EA0, 0x98uLL);
    if (v37 + 1 > 4)
    {
      v77 = v37 + 1;
    }

    else
    {
      v77 = 4;
    }

    if (BrotliFindAllStaticDictionaryMatches(v75, (a4 + v31), v77, v30, __b))
    {
      v78 = v30 >= 0x25 ? 37 : v30;
      if (v77 <= v78)
      {
        v79 = v78 + 1;
        v80 = 32 * v77;
        do
        {
          v81 = __b[v77];
          if (v81 <= 0xFFFFFFE)
          {
            v82 = v203 + 1 + v194 + (v81 >> 5);
            if (v82 <= v202[9])
            {
              v83 = v81 & 0x1F;
              if (v77 == v83)
              {
                LODWORD(v83) = 0;
              }

              *v36 = v82;
              *(v36++ + 1) = v80 + v83;
            }
          }

          ++v77;
          v80 += 32;
        }

        while (v79 != v77);
      }
    }

    v196 = v36 - v198;
    v84 = v202;
    v85 = v202[11];
    if (!v85)
    {
      v121 = v36 - v198;
      goto LABEL_153;
    }

    v86 = 0;
    v87 = 0;
    v88 = v202[9];
    v89 = *(a4 + v31);
    v90 = v202[12] + v194;
    v91 = 3;
    while (2)
    {
      v92 = v212[v87];
      v94 = *(v92 + 16);
      v93 = *(v92 + 20);
      v95 = v92 + 24;
      v96 = v92 + 24 + 4 * (1 << v93);
      v97 = v96 + 2 * (1 << v94);
      v98 = (v97 + 4 * *(v92 + 4));
      if (*v92 != -558043680)
      {
        v98 = *v98;
      }

      v99 = (0x1FE35A7BD3579BD3 * (v89 & (0xFFFFFFFFFFFFFFFFLL >> -*(v92 + 12)))) >> -v94;
      v100 = *(v96 + 2 * v99);
      if (v100 == 0xFFFF)
      {
        v101 = 0;
        goto LABEL_145;
      }

      v101 = 0;
      v102 = v204[v87];
      v103 = &v208[v86];
      v104 = *(v92 + 8);
      v105 = (v97 + 4 * (*(v95 + 4 * ((0xFFFFFFFF >> -v93) & v99)) + v100));
      v106 = v91;
      while (1)
      {
        v108 = *v105++;
        v107 = v108;
        v109 = v108 & 0x7FFFFFFF;
        v110 = v90 - (v102 + v109);
        v111 = v104 - v109;
        if (v104 - v109 >= v30)
        {
          v111 = v30;
        }

        v112 = v106 + v31;
        v113 = v110 > v88 || v112 > a5;
        v114 = v113 || v106 >= v111;
        if (!v114 && *(a4 + v112) == *(v98 + v106 + v109))
        {
          v116 = (v98 + v109);
          if (v111 < 8)
          {
            v118 = v116;
            v119 = (a4 + v31);
LABEL_135:
            v120 = (v118 + v111);
            while (*v118 == *v119)
            {
              v119 = (v119 + 1);
              v118 = (v118 + 1);
              if (!--v111)
              {
                v118 = v120;
                break;
              }
            }
          }

          else
          {
            v117 = 0;
            v118 = v116;
            v119 = (a4 + v31);
            do
            {
              if (*v119 != *v118)
              {
                v115 = (__clz(__rbit64(*v118 ^ *v119)) >> 3) - v117;
                goto LABEL_141;
              }

              ++v119;
              ++v118;
              v117 -= 8;
            }

            while (v111 + v117 > 7);
            v111 += v117;
            if (v111)
            {
              goto LABEL_135;
            }
          }

          v115 = v118 - v116;
LABEL_141:
          if (v115 > v106)
          {
            break;
          }
        }

        v115 = v106;
LABEL_125:
        v106 = v115;
        if (v107 < 0)
        {
          goto LABEL_145;
        }
      }

      *v103 = v110;
      *(v103 + 1) = 32 * v115;
      if (++v101 != 64 - v86)
      {
        ++v103;
        goto LABEL_125;
      }

      v101 = 64 - v86;
LABEL_145:
      v86 += v101;
      if (!v86)
      {
LABEL_148:
        if (++v87 == v85)
        {
          goto LABEL_151;
        }

        continue;
      }

      break;
    }

    if (v86 != 64)
    {
      v91 = *&v201[8 * v86] >> 5;
      goto LABEL_148;
    }

LABEL_151:
    MergeMatches(v197, v208, v86, v198, v196);
    v121 = v86 + v196;
    v84 = v202;
LABEL_153:
    a2 = v192;
    if (v121)
    {
      v122 = v197;
      v123 = v197 + 8 * v121;
      if (v193 < *(v123 - 4) >> 5)
      {
        *v197 = *(v123 - 8);
        v121 = 1;
      }
    }

    else
    {
      v122 = v197;
    }

    updated = UpdateNodes(v192, v210, v199, a4, a5, v84, v209, a8, v121, v122, v207, v213, a10);
    if (updated >= 0x4000)
    {
      v125 = updated;
    }

    else
    {
      v125 = 0;
    }

    if (v121 == 1)
    {
      v126 = *(v197 + 4);
      v127 = v126 >> 5;
      if (v126 >> 5 <= v125)
      {
        v127 = v125;
      }

      if (v193 < v126 >> 5)
      {
        v125 = v127;
      }
    }

    v21 = a9;
    if (v125 < 2)
    {
      v10 = v202;
      v157 = v199;
    }

    else
    {
      v128 = v125 + v200;
      if (v125 + v200 >= v188)
      {
        v128 = v188;
      }

      if (v200 + 64 > v128)
      {
        v129 = v200 + 1;
      }

      else
      {
        v129 = v128 - 63;
      }

      if (v200 + 513 <= v129)
      {
        v130 = v200 + 1;
        if (v200 + 1 < v129)
        {
          v131 = *(a9 + 80);
          v132 = *(a9 + 88);
          v133 = *(a9 + 104);
          do
          {
            v134 = (a4 + (v130 & a5));
            v135 = (506832829 * *v134) >> 15;
            v136 = *(v132 + 4 * v135);
            v137 = 2 * (v131 & v130);
            v138 = v137 | 1;
            *(v132 + 4 * v135) = v130;
            if (v130 != v136)
            {
              v139 = 0;
              v140 = 0;
              v141 = 64;
              do
              {
                if (v130 - v136 > v131 - 15 || v141 == 0)
                {
                  break;
                }

                if (v140 >= v139)
                {
                  v143 = v139;
                }

                else
                {
                  v143 = v140;
                }

                v144 = a4 + (v136 & a5);
                v145 = (v144 + v143);
                v146 = 128 - v143;
                if (128 - v143 < 8)
                {
                  v148 = (v134 + v143);
                  if (v146)
                  {
LABEL_190:
                    v150 = (v148 + v146);
                    while (*v148 == *v145)
                    {
                      v145 = (v145 + 1);
                      v148 = (v148 + 1);
                      if (!--v146)
                      {
                        v148 = v150;
                        break;
                      }
                    }
                  }
                }

                else
                {
                  v147 = 0;
                  v148 = (v134 + v143);
                  do
                  {
                    if (*v145 != *v148)
                    {
                      v151 = (__clz(__rbit64(*v148 ^ *v145)) >> 3) - v147;
                      goto LABEL_196;
                    }

                    ++v145;
                    ++v148;
                    v147 -= 8;
                    v149 = v146 + v147;
                  }

                  while (v146 + v147 > 7);
                  v146 += v147;
                  if (v149)
                  {
                    goto LABEL_190;
                  }
                }

                v151 = v148 - (v134 + v143);
LABEL_196:
                v152 = v151 + v143;
                if (v152 >= 0x80)
                {
                  v156 = (v133 + 8 * (v136 & v131));
                  *(v133 + 4 * v137) = *v156;
                  v155 = v156[1];
                  goto LABEL_202;
                }

                v153 = *(v144 + v152);
                v154 = 2 * (v136 & v131);
                if (*(v134 + v152) <= v153)
                {
                  *(v133 + 4 * v138) = v136;
                  v138 = 2 * (v136 & v131);
                  v139 = v152;
                }

                else
                {
                  *(v133 + 4 * v137) = v136;
                  v137 = v154 | 1;
                  v140 = v152;
                  v154 |= 1uLL;
                }

                v136 = *(v133 + 4 * v154);
                --v141;
              }

              while (v130 != v136);
            }

            v155 = *(a9 + 96);
            *(v133 + 4 * v137) = v155;
LABEL_202:
            *(v133 + 4 * v138) = v155;
            v130 += 8;
          }

          while (v130 < v129);
        }
      }

      if (v129 < v128)
      {
        v158 = *(a9 + 80);
        v159 = *(a9 + 88);
        v160 = *(a9 + 104);
        do
        {
          v161 = (a4 + (v129 & a5));
          v162 = (506832829 * *v161) >> 15;
          v163 = *(v159 + 4 * v162);
          v164 = 2 * (v158 & v129);
          v165 = v164 | 1;
          *(v159 + 4 * v162) = v129;
          if (v129 != v163)
          {
            v166 = 0;
            v167 = 0;
            v168 = 64;
            do
            {
              if (v129 - v163 > v158 - 15 || v168 == 0)
              {
                break;
              }

              if (v167 >= v166)
              {
                v170 = v166;
              }

              else
              {
                v170 = v167;
              }

              v171 = a4 + (v163 & a5);
              v172 = (v171 + v170);
              v173 = 128 - v170;
              if (128 - v170 < 8)
              {
                v175 = (v161 + v170);
                if (v173)
                {
LABEL_224:
                  v177 = (v175 + v173);
                  while (*v175 == *v172)
                  {
                    v172 = (v172 + 1);
                    v175 = (v175 + 1);
                    if (!--v173)
                    {
                      v175 = v177;
                      break;
                    }
                  }
                }
              }

              else
              {
                v174 = 0;
                v175 = (v161 + v170);
                do
                {
                  if (*v172 != *v175)
                  {
                    v178 = (__clz(__rbit64(*v175 ^ *v172)) >> 3) - v174;
                    goto LABEL_230;
                  }

                  ++v172;
                  ++v175;
                  v174 -= 8;
                  v176 = v173 + v174;
                }

                while (v173 + v174 > 7);
                v173 += v174;
                if (v176)
                {
                  goto LABEL_224;
                }
              }

              v178 = v175 - (v161 + v170);
LABEL_230:
              v179 = v178 + v170;
              if (v179 >= 0x80)
              {
                v183 = (v160 + 8 * (v163 & v158));
                *(v160 + 4 * v164) = *v183;
                v182 = v183[1];
                goto LABEL_236;
              }

              v180 = *(v171 + v179);
              v181 = 2 * (v163 & v158);
              if (*(v161 + v179) <= v180)
              {
                *(v160 + 4 * v165) = v163;
                v165 = 2 * (v163 & v158);
                v166 = v179;
              }

              else
              {
                *(v160 + 4 * v164) = v163;
                v164 = v181 | 1;
                v167 = v179;
                v181 |= 1uLL;
              }

              v163 = *(v160 + 4 * v181);
              --v168;
            }

            while (v129 != v163);
          }

          v182 = *(a9 + 96);
          *(v160 + 4 * v164) = v182;
LABEL_236:
          *(v160 + 4 * v165) = v182;
          ++v129;
        }

        while (v129 < v128);
      }

      v184 = v125 - 1;
      v185 = v199 + 4;
      do
      {
        v157 = v185 - 3;
        if (v185 >= v192)
        {
          break;
        }

        EvaluateNode((v205 + v210), v157, v209, v203, a8, v207, v213, a10);
        v157 = v185 - 3;
        ++v185;
        --v184;
      }

      while (v184);
      v10 = v202;
      v21 = a9;
    }

    v20 = v157 + 1;
  }

  while (v157 + 4 < v192);
LABEL_244:
  BrotliFree(v187);
  *(v207 + 2832) = 0;
  BrotliFree(v187);
  *(v207 + 2816) = 0;
  BrotliFree(v187);
  BrotliFree(v187);
  return ComputeShortestPathFromNodes(a2, a10);
}

uint64_t InitZopfliCostModel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 2848) = a4;
  if (a4 == -2)
  {
    v7 = 0;
  }

  else
  {
    v7 = BrotliAllocate(a1);
  }

  *(a2 + 2832) = v7;
  v8 = *(a3 + 12);
  if (v8)
  {
    result = BrotliAllocate(a1);
    v8 = *(a3 + 12);
  }

  else
  {
    result = 0;
  }

  *(a2 + 2816) = result;
  *(a2 + 2824) = v8;
  return result;
}

float ZopfliCostModelSetFromLiteralCosts(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 2832);
  v6 = *(a1 + 2816);
  v7 = *(a1 + 2848);
  v8 = (v5 + 4);
  BrotliEstimateBitCostsForLiterals(a2, v7, a4, a3, (a1 + 2856), (v5 + 4));
  *v5 = 0;
  if (v7)
  {
    v9 = 0.0;
    v10 = 0.0;
    do
    {
      v11 = v10 + *v8;
      v12 = v9 + v11;
      *v8++ = v9 + v11;
      v10 = v11 - ((v9 + v11) - v9);
      v9 = v12;
      --v7;
    }

    while (v7);
  }

  for (i = 0; i != 704; ++i)
  {
    if (i > 0xF4)
    {
      v14 = log2((i + 11));
    }

    else
    {
      v14 = kBrotliLog2Table[i + 11];
    }

    v15 = v14;
    *(a1 + 4 * i) = v15;
  }

  v16 = *(a1 + 2824);
  if (v16)
  {
    v17 = 20;
    do
    {
      if (v17 > 0xFFuLL)
      {
        v18 = log2(v17);
      }

      else
      {
        v18 = kBrotliLog2Table[v17];
      }

      v19 = v18;
      *v6++ = v19;
      ++v17;
      --v16;
    }

    while (v16);
  }

  result = 3.45943165;
  *(a1 + 2840) = 3.45943165;
  return result;
}

void *MergeMatches(void *result, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  for (; a3; ++result)
  {
    if (!a5)
    {
      break;
    }

    v5 = *(a2 + 1) >> 5;
    v6 = *(a4 + 1);
    if (v5 < v6 >> 5 || v5 == v6 >> 5 && *a2 < *a4)
    {
      v7 = *a2++;
      *result = v7;
      --a3;
    }

    else
    {
      v8 = *a4++;
      *result = v8;
      --a5;
    }
  }

  for (; a3; --a3)
  {
    v9 = *a2++;
    *result++ = v9;
  }

  for (; a5; --a5)
  {
    v10 = *a4++;
    *result++ = v10;
  }

  return result;
}

unint64_t UpdateNodes(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, void *__src, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = a3;
  v17 = *(a6 + 16);
  v124 = (a3 + a2) & a5;
  if (a3 + a2 >= a7)
  {
    v18 = a7;
  }

  else
  {
    v18 = a3 + a2;
  }

  v120 = a3 + a2;
  v19 = v17 + a3 + a2;
  if (v19 >= a7)
  {
    v19 = a7;
  }

  v121 = v19;
  v122 = v18;
  v20 = a1 - a3;
  v117 = *(a6 + 4);
  if (v117 <= 10)
  {
    v21 = 150;
  }

  else
  {
    v21 = 325;
  }

  v125 = *(a6 + 96);
  EvaluateNode((v17 + a2), a3, a7, v125, __src, a11, a12, a13);
  v22 = a13 + 16 * v15;
  if (v15 + 2 <= a1)
  {
    v25 = a12;
    v26 = a12 + 32 * (-*(a12 + 256) & 7);
    v27 = (*(v26 + 28) + *(a11 + 2840)) + (*(*(a11 + 2832) + 4 * v15) - *(*(a11 + 2832) + 4 * *v26));
    v28 = (v22 + 44);
    v23 = 2;
    v29 = 4;
    v30 = 10;
    v24 = a4;
    do
    {
      if (*v28 > v27)
      {
        break;
      }

      if (++v23 == v30)
      {
        v27 = v27 + 1.0;
        v31 = v29;
      }

      else
      {
        v31 = 0;
      }

      v29 <<= v23 == v30;
      v30 += v31;
      v28 += 4;
    }

    while (v15 + v23 <= a1);
  }

  else
  {
    v23 = 2;
    v24 = a4;
    v25 = a12;
  }

  result = 0;
  v33 = 0;
  v114 = v23;
  v34 = v23 - 1;
  v35 = v121 + v125;
  v126 = (v24 + v124);
  v112 = v15 - a1;
  v113 = v22 + 28;
  v123 = v22 + 12;
  v115 = v23 - 1;
  v116 = v15;
  while (1)
  {
    v36 = *(v25 + 256);
    v37 = 8;
    if (v36 < 8)
    {
      v37 = *(v25 + 256);
    }

    if (v33 >= v37)
    {
      return result;
    }

    v38 = v25 + 32 * ((v33 - v36) & 7);
    v39 = v15 - *v38;
    v119 = v33;
    if (v39 > 5)
    {
      if (v39 > 0x81)
      {
        if (v39 < 0x5842)
        {
          v42 = 22;
        }

        else
        {
          v42 = 23;
        }

        if (v39 >> 1 >= 0xC21)
        {
          v43 = v42;
        }

        else
        {
          v43 = 21;
        }

        v44 = (__clz(v39 - 66) ^ 0x1F) + 10;
        if (v39 <= 0x841)
        {
          LOWORD(v40) = v44;
        }

        else
        {
          LOWORD(v40) = v43;
        }
      }

      else
      {
        v41 = (__clz(v39 - 2) ^ 0x1F) - 1;
        LODWORD(v40) = ((v39 - 2) >> v41) + 2 * v41 + 2;
      }
    }

    else
    {
      v40 = v15 - *v38;
    }

    v45 = (*(v38 + 24) + kBrotliInsExtra[v40]) + (*(*(a11 + 2832) + 4 * v15) - **(a11 + 2832));
    v118 = v40;
    if (v34 < v20)
    {
      v46 = 0;
      v47 = v38 + 8;
      v48 = 8 * (v40 & 7);
      v49 = v34;
      v50 = 3 * (v40 >> 3);
      while (v49 + v124 <= a5)
      {
        v51 = kDistanceCacheOffset[v46] + *(v47 + 4 * kDistanceCacheIndex[v46]);
        if (v35 >= v51)
        {
          v52 = *(v24 + v49 + v124);
          if (v122 >= v51)
          {
            v65 = (v120 - v51) & a5;
            v66 = v65 + v49;
            v67 = v120 < v51 || v66 > a5;
            if (v67 || v52 != *(v24 + v66))
            {
              goto LABEL_57;
            }

            v58 = v24 + v65;
            if (v20 < 8)
            {
              v63 = v58;
              v72 = v126;
              i = v20;
            }

            else
            {
              v68 = 0;
              for (i = v20; i > 7; i -= 8)
              {
                v70 = *&v126[v68];
                v71 = *(v58 + v68);
                if (v70 != v71)
                {
                  v75 = v68 + (__clz(__rbit64(v71 ^ v70)) >> 3);
                  goto LABEL_78;
                }

                v68 += 8;
              }

              v63 = (v58 + v68);
              if (!(v112 + v68))
              {
                goto LABEL_77;
              }

              v72 = &v126[v68];
            }

            v74 = &v63[i];
            while (*v63 == *v72)
            {
              ++v72;
              ++v63;
              if (!--i)
              {
                v63 = v74;
                break;
              }
            }
          }

          else
          {
            if (v121 >= v51)
            {
              goto LABEL_57;
            }

            v53 = *(a6 + 96) + v121;
            v54 = (a6 + 368);
            do
            {
              v56 = *v54++;
              v55 = v56;
            }

            while (v53 >= v56 + v51);
            v57 = v55 + v51 - v53;
            if (v57 >= v20)
            {
              v57 = v20;
            }

            if (v49 >= v57)
            {
              goto LABEL_57;
            }

            v58 = *(v54 - 18) + v53 - (*(v54 - 2) + v51);
            if (v52 != *(v58 + v49))
            {
              goto LABEL_57;
            }

            if (v57 < 8)
            {
              v63 = v58;
              v64 = v126;
              j = v57;
            }

            else
            {
              v59 = 0;
              for (j = v57; j > 7; j -= 8)
              {
                v61 = *&v126[v59];
                v62 = *(v58 + v59);
                if (v61 != v62)
                {
                  v75 = v59 + (__clz(__rbit64(v62 ^ v61)) >> 3);
                  goto LABEL_78;
                }

                v59 += 8;
              }

              v63 = (v58 + v59);
              if (v59 == v57)
              {
                goto LABEL_77;
              }

              v64 = &v126[v59];
            }

            v73 = &v63[j];
            while (*v63 == *v64)
            {
              ++v64;
              ++v63;
              if (!--j)
              {
                v63 = v73;
                break;
              }
            }
          }

LABEL_77:
          v75 = &v63[-v58];
LABEL_78:
          if (v49 + 1 <= v75)
          {
            v76 = v45 + *(*(a11 + 2816) + 4 * v46);
            v78 = v118 < 8u && v46 == 0;
            v79 = (v113 + 16 * v49);
            v80 = !v78;
            v81 = v49;
            do
            {
              v82 = v81 + 1;
              if (v81 + 1 > 9)
              {
                if (v82 > 0x85)
                {
                  if (v82 > 0x845)
                  {
                    LOWORD(v83) = 23;
                    v85 = v48 | 7;
                    goto LABEL_99;
                  }

                  v83 = (__clz(v81 - 69) ^ 0x1F) + 12;
                }

                else
                {
                  v84 = (__clz(v81 - 5) ^ 0x1F) - 1;
                  v83 = ((v81 - 5) >> v84) + 2 * v84 + 4;
                }
              }

              else
              {
                LOWORD(v83) = v81 - 1;
              }

              v85 = v83 & 7 | v48;
              if (v83 > 0xFu)
              {
                v86 = 1;
              }

              else
              {
                v86 = v80;
              }

              if ((v86 & 1) == 0)
              {
                if ((v83 & 0xFFF8) != 0)
                {
                  LOWORD(v85) = v85 | 0x40;
                }

                goto LABEL_100;
              }

LABEL_99:
              v85 = ((((0x520D40u >> (2 * (v50 + ((v83 & 0xFFF8) >> 3)))) & 0xC0) + ((v50 + ((v83 & 0xFFF8) >> 3)) << 6)) | v85) + 64;
LABEL_100:
              if ((v85 & 0xFF80) != 0)
              {
                v87 = v76;
              }

              else
              {
                v87 = v45;
              }

              v88 = *(a11 + 4 * v85) + (v87 + kBrotliCopyExtra[v83]);
              if (v88 < *v79)
              {
                *(v79 - 3) = (v81 + 1) | 0x12000000;
                *(v79 - 2) = v51;
                *(v79 - 1) = ((v46 << 27) + 0x8000000) | v39;
                *v79 = v88;
                if (result <= v82)
                {
                  result = v81 + 1;
                }
              }

              v49 = v81 + 1;
              v89 = v81 + 2;
              v79 += 4;
              ++v81;
            }

            while (v89 <= v75);
          }
        }

LABEL_57:
        if (v46 <= 0xE)
        {
          ++v46;
          v24 = a4;
          if (v49 < v20)
          {
            continue;
          }
        }

        break;
      }
    }

    if (v119 <= 1 && a9)
    {
      v90 = 0;
      v91 = v114;
      do
      {
        v92 = *(a10 + 8 * v90);
        v93 = v92 + 15;
        v94 = *(a6 + 60);
        v95 = v94 + 16;
        if (v94 + 16 <= v93)
        {
          v96 = *(a6 + 56);
          v97 = v92 + ~v94 + (4 << v96);
          v98 = __clz(v97);
          v93 = ((v97 & ~(-1 << v96)) + v95 + ((((v97 >> ((v98 ^ 0x1F) - 1)) & 1 | (2 * ((v98 ^ 0x1F) - 1 - v96))) - 2) << v96)) | (((v98 ^ 0x1F) - 1 - v96) << 10);
        }

        v99 = v92 >> 37;
        if ((v92 >> 37 > v21 || v35 < v92) && v91 < v99)
        {
          v91 = v92 >> 37;
        }

        if (v91 <= v92 >> 37)
        {
          v102 = *(*(a11 + 2816) + 4 * (v93 & 0x3FF)) + (v45 + (v93 >> 10));
          if ((v92 & 0x1F00000000) != 0)
          {
            v103 = HIDWORD(v92) & 0x1F;
          }

          else
          {
            v103 = v92 >> 37;
          }

          v104 = v99 + 1;
          v105 = (v123 + 16 * v91);
          v106 = (v91 << 25) + 301989888;
          do
          {
            if (v35 >= v92)
            {
              v107 = v91;
            }

            else
            {
              v107 = v103;
            }

            if (v107 > 9)
            {
              v109 = (__clz(v107 - 70) ^ 0x1F) + 12;
              if (v107 > 0x845)
              {
                LOWORD(v109) = 23;
              }

              v110 = (__clz(v107 - 6) ^ 0x1F) - 1;
              v108 = ((v107 - 6) >> v110) + 2 * v110 + 4;
              if (v107 > 0x85)
              {
                LOWORD(v108) = v109;
              }
            }

            else
            {
              LOWORD(v108) = v107 - 2;
            }

            v111 = *(a11 + 4 * (((((0x520D40u >> (2 * (3 * (v118 >> 3) + ((v108 & 0xFFF8) >> 3)))) & 0xC0) + ((3 * (v118 >> 3) + ((v108 & 0xFFF8) >> 3)) << 6)) | v108 & 7 | (8 * (v118 & 7))) + 64)) + (v102 + kBrotliCopyExtra[v108]);
            if (v111 < *v105)
            {
              *(v105 - 3) = (v106 - (v107 << 25)) | v91;
              *(v105 - 2) = v92;
              *(v105 - 1) = v39;
              *v105 = v111;
              if (result <= v91)
              {
                result = v91;
              }
            }

            ++v91;
            v105 += 4;
            v106 += 0x2000000;
          }

          while (v104 != v91);
          v91 = v104;
        }

        ++v90;
      }

      while (v90 != a9);
    }

    if (v117 >= 11)
    {
      v33 = v119 + 1;
      v24 = a4;
      v34 = v115;
      v15 = v116;
      v25 = a12;
      if (v119 < 4)
      {
        continue;
      }
    }

    return result;
  }
}

void *EvaluateNode(void *result, unint64_t a2, uint64_t a3, uint64_t a4, void *__src, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (a8 + 16 * a2);
  v10 = v9 + 3;
  v11 = *(v9 + 3);
  if (a2)
  {
    v12 = v9[1];
    v13 = *v9 & 0x1FFFFFF;
    v14 = v9[2];
    if (a4 + a3 < v12 || v12 + v13 > result + a2 + a4)
    {
      goto LABEL_10;
    }

    v16 = v12 + 15;
    if (v14 >> 27)
    {
      v16 = (v14 >> 27) - 1;
    }

    if (!v16)
    {
LABEL_10:
      v17 = *(a8 + 16 * (a2 - ((v14 & 0x7FFFFFF) + v13)) + 12);
    }

    else
    {
      v17 = a2;
    }
  }

  else
  {
    v17 = 0;
  }

  *v10 = v17;
  v18 = *(*(a6 + 2832) + 4 * a2) - **(a6 + 2832);
  if (v11 <= v18)
  {
    *&v38 = 0;
    v37 = a2;
    *(&v38 + 2) = v11 - v18;
    *(&v38 + 3) = v11;
    v19 = 0;
    if (!v17)
    {
      goto LABEL_17;
    }

    do
    {
      v20 = v19;
      v21 = (a8 + 16 * v17);
      v23 = v21[1];
      v22 = v21[2];
      v24 = *v21;
      v19 = v20 + 1;
      *(&v37 + v20 + 2) = v23;
      if (v20 > 2)
      {
        break;
      }

      v17 = *(a8 + 16 * (v17 - ((v24 & 0x1FFFFFF) + (v22 & 0x7FFFFFFu))) + 12);
    }

    while (v17);
    if (v20 <= 2)
    {
LABEL_17:
      result = memcpy(&v37 + 4 * v19 + 8, __src, 16 - 4 * v19);
    }

    v25 = *(a7 + 256);
    v26 = v25 + 1;
    *(a7 + 256) = v25 + 1;
    v27 = ~v25 & 7;
    if ((v25 + 1) < 8)
    {
      v28 = v25 + 1;
    }

    else
    {
      v28 = 8;
    }

    v29 = v38;
    v30 = (a7 + 32 * v27);
    *v30 = v37;
    v30[1] = v29;
    if (v26 >= 2)
    {
      v31 = v28 - 1;
      do
      {
        v32 = (a7 + 32 * (v27 & 7));
        v33 = (a7 + 32 * ((v27 + 1) & 7));
        if (v32[6] > v33[6])
        {
          v35 = *v32;
          v34 = *(v32 + 1);
          v36 = *(v33 + 1);
          *v32 = *v33;
          *(v32 + 1) = v36;
          *v33 = v35;
          *(v33 + 1) = v34;
        }

        LOBYTE(v27) = v27 + 1;
        --v31;
      }

      while (v31);
    }
  }

  return result;
}

uint64_t ComputeShortestPathFromNodes(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 16 * a1);
  if ((v2[2] & 0x7FFFFFF) == 0)
  {
    do
    {
      if (*v2 != 1)
      {
        break;
      }

      --a1;
      v3 = *(v2 - 2);
      v2 -= 4;
    }

    while ((v3 & 0x7FFFFFF) == 0);
  }

  v2[3] = -1;
  for (i = 0; a1; *(a2 + 16 * a1 + 12) = v5)
  {
    v5 = (*(a2 + 16 * a1 + 8) & 0x7FFFFFF) + (*(a2 + 16 * a1) & 0x1FFFFFFu);
    ++i;
    a1 -= v5;
  }

  return i;
}

uint64_t BrotliCreateZopfliBackwardReferences(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, void *a12, void *a13)
{
  v19 = a2 + 1;
  if (a2 == -1)
  {
    v20 = 0;
  }

  else
  {
    v23 = a5;
    v24 = a6;
    v20 = BrotliAllocate(a1);
    v21 = v20 + 3;
    do
    {
      *(v21 - 3) = 1;
      *(v21 - 1) = 0x7EFFC99E00000000;
      v21 += 4;
      --v19;
    }

    while (v19);
    a5 = v23;
    a6 = v24;
  }

  *a12 += BrotliZopfliComputeShortestPath(a1, a2, a3, a4, a5, a6, a7, a9, a8, v20);
  BrotliZopfliCreateCommands(a2, a3, v20, a9, a10, a7, a11, a13);

  return BrotliFree(a1);
}

uint64_t BrotliCreateHqZopfliBackwardReferences(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9, uint64_t *a10, uint64_t a11, uint64_t *a12, uint64_t *a13)
{
  v13 = a7;
  v14 = a5;
  v15 = a4;
  v289 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v257 = *(a7 + 16);
    v16 = *(a7 + 8);
    v17 = 4 * a2;
    v278 = BrotliAllocate(a1);
    if (a2 >= 0x7F)
    {
      v20 = a2 - 127;
    }

    else
    {
      v20 = 0;
    }

    v284 = BrotliAllocate(a1);
    v260 = v17;
    if (v17)
    {
      v279 = BrotliAllocate(a1);
    }

    else
    {
      v279 = 0;
    }

    v23 = *(v13 + 96);
    v22 = a2;
    v24 = a8;
    if (a2 < 4)
    {
      v267 = 0;
      goto LABEL_248;
    }

    v272 = 0;
    v25 = 0;
    v259 = *(v13 + 96);
    v248 = v20 + a3;
    v249 = v13 + 629;
    v254 = (*(v13 + 88) != 0) << 8;
    v256 = (1 << v16) - 16;
    v251 = v13 + 696;
    v252 = v254 | 0x80;
    v247 = v23 + 1;
    v275 = v13 + 360;
    v276 = v13 + 104;
    while (1)
    {
      v26 = v25 + a3;
      if (v25 + a3 >= v256)
      {
        v27 = v256;
      }

      else
      {
        v27 = v25 + a3;
      }

      v28 = v26 + v257;
      if (v26 + v257 >= v256)
      {
        v28 = v256;
      }

      v262 = v28;
      if (!*(v13 + 624))
      {
        v34 = 0;
        v29 = v279;
        v30 = v260;
        v31 = v272;
        goto LABEL_24;
      }

      v29 = v279;
      v30 = v260;
      v31 = v272;
      if (!v26)
      {
        break;
      }

      v32 = *(v15 + ((v26 - 1) & v14));
      if (v26 == 1)
      {
        goto LABEL_22;
      }

      v33 = *(v15 + ((v26 - 2) & v14));
LABEL_23:
      v34 = *(v249 + (*(a6 + 256 + v33) | *(a6 + v32)));
LABEL_24:
      v270 = v25;
      v274 = v25 + a3;
      if (v30 < v252 + v31)
      {
        if (v30)
        {
          v35 = v30;
        }

        else
        {
          v35 = v252 + v31;
        }

        do
        {
          v36 = v35;
          v35 *= 2;
        }

        while (v36 < v252 + v31);
        v37 = BrotliAllocate(a1);
        v38 = v37;
        if (v30)
        {
          memcpy(v37, v29, 8 * v30);
        }

        BrotliFree(a1);
        v29 = v38;
        v260 = v36;
        v22 = a2;
        v24 = a8;
        v25 = v270;
        v26 = v274;
      }

      v39 = v22 - v25;
      v264 = *(v251 + 8 * v34);
      v279 = v29;
      v40 = &v29[8 * v31 + 8 * v254];
      v41 = v26 & v14;
      v42 = 16;
      if (*(a7 + 4) == 11)
      {
        v42 = 64;
      }

      v126 = v26 >= v42;
      v43 = v26 - v42;
      if (!v126)
      {
        v43 = 0;
      }

      v44 = v26 - 1;
      v268 = v40;
      if (v26 - 1 <= v43)
      {
        v48 = 1;
        v47 = v40;
      }

      else
      {
        v45 = v40;
        v46 = (v15 + v41);
        v47 = v45;
        v48 = 1;
        do
        {
          if (v26 - v44 > v27)
          {
            break;
          }

          v49 = (v15 + (v44 & v14));
          if (*v46 == *v49 && v46[1] == v49[1])
          {
            if (v39 < 8)
            {
              v51 = v39;
              v55 = (v15 + v41);
              v54 = (v15 + (v44 & v14));
              if (!v39)
              {
                goto LABEL_52;
              }

LABEL_48:
              v56 = &v54[v51];
              do
              {
                if (*v54 != *v55)
                {
                  goto LABEL_52;
                }

                ++v55;
                ++v54;
                --v51;
              }

              while (v51);
              v54 = v56;
LABEL_52:
              v57 = v54 - v49;
            }

            else
            {
              v50 = 0;
              v51 = v39;
              while (1)
              {
                v52 = *&v46[v50];
                v53 = *&v49[v50];
                if (v52 != v53)
                {
                  break;
                }

                v51 -= 8;
                v50 += 8;
                if (v51 <= 7)
                {
                  v54 = &v49[v50];
                  v55 = &v46[v50];
                  if (!v51)
                  {
                    goto LABEL_52;
                  }

                  goto LABEL_48;
                }
              }

              v57 = v50 + (__clz(__rbit64(v53 ^ v52)) >> 3);
            }

            if (v57 > v48)
            {
              *v47 = v26 - v44;
              *(v47 + 1) = 32 * v57;
              v47 += 8;
              v48 = v57;
            }
          }

          if (--v44 <= v43)
          {
            break;
          }
        }

        while (v48 < 3);
      }

      if (v48 >= v39)
      {
        goto LABEL_102;
      }

      v58 = v15 + v41;
      v59 = (506832829 * *(v15 + v41)) >> 15;
      v60 = *(v24 + 104);
      v62 = *(v24 + 80);
      v61 = *(v24 + 88);
      v63 = *(v61 + 4 * v59);
      v64 = 128;
      if (v39 >= 0x80)
      {
        *(v61 + 4 * v59) = v26;
      }

      else
      {
        v64 = v39;
      }

      v65 = 2 * (v62 & v26);
      v66 = v65 | 1;
      if (v26 != v63)
      {
        v67 = 0;
        v68 = 0;
        v69 = 64;
        while (1)
        {
          v70 = v26 - v63;
          if (v26 - v63 > v27 || v69 == 0)
          {
            goto LABEL_99;
          }

          v72 = v68 >= v67 ? v67 : v68;
          v73 = v58 + v72;
          v74 = v15 + (v63 & v14);
          v75 = (v74 + v72);
          v76 = v39 - v72;
          if (v39 - v72 < 8)
          {
            v80 = (v58 + v72);
            if (!v76)
            {
              goto LABEL_85;
            }

LABEL_80:
            v81 = &v80[v76];
            do
            {
              if (*v80 != *v75)
              {
                goto LABEL_84;
              }

              ++v75;
              ++v80;
              --v76;
            }

            while (v76);
            v80 = v81;
LABEL_84:
            v26 = v274;
LABEL_85:
            v82 = &v80[-v73];
          }

          else
          {
            v77 = 0;
            while (1)
            {
              v78 = *&v75[v77];
              v79 = *(v73 + v77);
              if (v78 != v79)
              {
                break;
              }

              v76 -= 8;
              v77 += 8;
              if (v76 <= 7)
              {
                v80 = (v73 + v77);
                v75 += v77;
                v26 = v274;
                if (!v76)
                {
                  goto LABEL_85;
                }

                goto LABEL_80;
              }
            }

            v82 = (v77 + (__clz(__rbit64(v79 ^ v78)) >> 3));
            v26 = v274;
          }

          v83 = &v82[v72];
          if (v47 && v83 > v48)
          {
            *v47 = v70;
            *(v47 + 1) = 32 * v83;
            v47 += 8;
            v48 = v83;
          }

          if (v83 >= v64)
          {
            break;
          }

          if (*(v58 + v83) <= *(v74 + v83))
          {
            if (v39 >= 0x80)
            {
              *(v60 + 4 * v66) = v63;
            }

            v66 = 2 * (v63 & v62);
            v67 = v83;
            v84 = v66;
          }

          else
          {
            if (v39 >= 0x80)
            {
              *(v60 + 4 * v65) = v63;
            }

            v65 = (2 * (v63 & v62)) | 1;
            v68 = v83;
            v84 = v65;
          }

          v63 = *(v60 + 4 * v84);
          --v69;
          if (v26 == v63)
          {
            goto LABEL_99;
          }
        }

        if (v39 < 0x80)
        {
          goto LABEL_102;
        }

        v194 = (v60 + 8 * (v63 & v62));
        *(v60 + 4 * v65) = *v194;
        v85 = v194[1];
        goto LABEL_101;
      }

LABEL_99:
      if (v39 >= 0x80)
      {
        v85 = *(v24 + 96);
        *(v60 + 4 * v65) = v85;
LABEL_101:
        *(v60 + 4 * v66) = v85;
      }

LABEL_102:
      memset_pattern16(__b, &unk_1AB467EA0, 0x98uLL);
      if (v48 + 1 > 4)
      {
        v86 = v48 + 1;
      }

      else
      {
        v86 = 4;
      }

      v87 = (v15 + v41);
      if (BrotliFindAllStaticDictionaryMatches(v264, (v15 + v41), v86, v39, __b) && (v39 >= 0x25 ? (v88 = 37) : (v88 = v39), v86 <= v88))
      {
        v90 = v88 + 1;
        v91 = 32 * v86;
        v24 = a8;
        v89 = v274;
        do
        {
          v92 = *(__b + v86);
          if (v92 <= 0xFFFFFFE)
          {
            v93 = v247 + v262 + (v92 >> 5);
            if (v93 <= *(a7 + 72))
            {
              v94 = v92 & 0x1F;
              if (v86 == v94)
              {
                LODWORD(v94) = 0;
              }

              *v47 = v93;
              *(v47 + 1) = v91 + v94;
              v47 += 8;
            }
          }

          ++v86;
          v91 += 32;
        }

        while (v90 != v86);
      }

      else
      {
        v24 = a8;
        v89 = v274;
      }

      v95 = (v47 - v268) >> 3;
      v96 = *(a7 + 88);
      if (!v96)
      {
        goto LABEL_163;
      }

      v265 = (v47 - v268) >> 3;
      v97 = 0;
      v98 = 0;
      v99 = *(a7 + 72);
      v100 = v268 - 64;
      v101 = *v87;
      v102 = *(a7 + 96) + v262;
      v103 = 3;
      while (2)
      {
        v104 = *(v276 + 8 * v98);
        v106 = *(v104 + 16);
        v105 = *(v104 + 20);
        v107 = v104 + 24;
        v108 = v104 + 24 + 4 * (1 << v105);
        v109 = v108 + 2 * (1 << v106);
        v110 = (v109 + 4 * *(v104 + 4));
        if (*v104 != -558043680)
        {
          v110 = *v110;
        }

        v111 = (0x1FE35A7BD3579BD3 * (v101 & (0xFFFFFFFFFFFFFFFFLL >> -*(v104 + 12)))) >> -v106;
        v112 = *(v108 + 2 * v111);
        if (v112 == 0xFFFF)
        {
          v113 = 0;
          goto LABEL_156;
        }

        v113 = 0;
        v114 = *(v275 + 8 * v98);
        v115 = &v100[v97];
        v116 = *(v104 + 8);
        v117 = (v109 + 4 * (*(v107 + 4 * ((0xFFFFFFFF >> -v105) & v111)) + v112));
        v118 = v103;
        while (1)
        {
          v120 = *v117++;
          v119 = v120;
          v121 = v120 & 0x7FFFFFFF;
          v122 = v102 - (v114 + v121);
          v123 = v116 - v121 >= v39 ? v39 : v116 - v121;
          v124 = v118 + v41;
          v125 = v122 > v99 || v124 > v14;
          v126 = v125 || v118 >= v123;
          if (!v126 && *(v15 + v124) == *(v110 + v118 + v121))
          {
            v128 = (v110 + v121);
            if (v123 < 8)
            {
              v130 = (v110 + v121);
              v131 = v87;
LABEL_146:
              v132 = (v130 + v123);
              while (*v130 == *v131)
              {
                v131 = (v131 + 1);
                v130 = (v130 + 1);
                if (!--v123)
                {
                  v130 = v132;
                  break;
                }
              }
            }

            else
            {
              v129 = 0;
              v130 = v128;
              v131 = v87;
              do
              {
                if (*v131 != *v130)
                {
                  v127 = (__clz(__rbit64(*v130 ^ *v131)) >> 3) - v129;
                  goto LABEL_152;
                }

                ++v131;
                ++v130;
                v129 -= 8;
              }

              while (v123 + v129 > 7);
              v123 += v129;
              if (v123)
              {
                goto LABEL_146;
              }
            }

            v127 = v130 - v128;
LABEL_152:
            v15 = a4;
            v14 = a5;
            if (v127 > v118)
            {
              break;
            }
          }

          v127 = v118;
LABEL_136:
          v118 = v127;
          if (v119 < 0)
          {
            goto LABEL_156;
          }
        }

        *v115 = v122;
        *(v115 + 1) = 32 * v127;
        if (++v113 != 64 - v97)
        {
          ++v115;
          goto LABEL_136;
        }

        v113 = 64 - v97;
LABEL_156:
        v97 += v113;
        if (!v97)
        {
LABEL_159:
          if (++v98 == v96)
          {
            goto LABEL_162;
          }

          continue;
        }

        break;
      }

      if (v97 != 64)
      {
        v103 = *(&v268[v97 - 64] - 1) >> 5;
        goto LABEL_159;
      }

LABEL_162:
      MergeMatches(&v29[8 * v272], v100, v97, v268, v265);
      v95 = v97 + v265;
      v24 = a8;
      v89 = v274;
LABEL_163:
      v133 = v270;
      v134 = (v278 + 4 * v270);
      *v134 = v95;
      v13 = a7;
      if (v95)
      {
        v135 = &v29[8 * v95 + 8 * v272];
        v136 = *(v135 - 1);
        if (v136 >> 6 < 0xA3)
        {
          v272 += v95;
          v133 = v270;
        }

        else
        {
          *&v29[8 * v272] = *(v135 - 1);
          *v134 = 1;
          v137 = v89 + 1;
          v138 = v89 + (v136 >> 5);
          if (v138 >= v248)
          {
            v138 = v248;
          }

          if (v89 + 64 > v138)
          {
            v139 = v89 + 1;
          }

          else
          {
            v139 = v138 - 63;
          }

          if (v89 + 513 <= v139 && v137 < v139)
          {
            v168 = *(v24 + 80);
            v169 = *(v24 + 88);
            v170 = *(v24 + 104);
            do
            {
              v171 = (v15 + (v137 & v14));
              v172 = (506832829 * *v171) >> 15;
              v173 = *(v169 + 4 * v172);
              v174 = 2 * (v168 & v137);
              v175 = v174 | 1;
              *(v169 + 4 * v172) = v137;
              if (v137 != v173)
              {
                v176 = 0;
                v177 = 0;
                v178 = 64;
                do
                {
                  if (v137 - v173 > v168 - 15 || v178 == 0)
                  {
                    break;
                  }

                  if (v177 >= v176)
                  {
                    v180 = v176;
                  }

                  else
                  {
                    v180 = v177;
                  }

                  v181 = v15 + (v173 & v14);
                  v182 = (v181 + v180);
                  v183 = 128 - v180;
                  if (128 - v180 < 8)
                  {
                    v185 = (v171 + v180);
                    if (v183)
                    {
LABEL_229:
                      v187 = (v185 + v183);
                      while (*v185 == *v182)
                      {
                        v182 = (v182 + 1);
                        v185 = (v185 + 1);
                        if (!--v183)
                        {
                          v185 = v187;
                          break;
                        }
                      }

                      v14 = a5;
                    }
                  }

                  else
                  {
                    v184 = 0;
                    v185 = (v171 + v180);
                    do
                    {
                      if (*v182 != *v185)
                      {
                        v188 = (__clz(__rbit64(*v185 ^ *v182)) >> 3) - v184;
                        v14 = a5;
                        goto LABEL_236;
                      }

                      ++v182;
                      ++v185;
                      v184 -= 8;
                      v186 = v183 + v184;
                    }

                    while (v183 + v184 > 7);
                    v183 += v184;
                    v14 = a5;
                    if (v186)
                    {
                      goto LABEL_229;
                    }
                  }

                  v188 = v185 - (v171 + v180);
LABEL_236:
                  v189 = v188 + v180;
                  if (v189 >= 0x80)
                  {
                    v193 = (v170 + 8 * (v173 & v168));
                    *(v170 + 4 * v174) = *v193;
                    v192 = v193[1];
                    goto LABEL_242;
                  }

                  v190 = *(v181 + v189);
                  v191 = 2 * (v173 & v168);
                  if (*(v171 + v189) <= v190)
                  {
                    *(v170 + 4 * v175) = v173;
                    v175 = 2 * (v173 & v168);
                    v176 = v189;
                  }

                  else
                  {
                    *(v170 + 4 * v174) = v173;
                    v174 = v191 | 1;
                    v177 = v189;
                    v191 |= 1uLL;
                  }

                  v173 = *(v170 + 4 * v191);
                  --v178;
                }

                while (v137 != v173);
              }

              v192 = *(v24 + 96);
              *(v170 + 4 * v174) = v192;
LABEL_242:
              *(v170 + 4 * v175) = v192;
              v137 += 8;
            }

            while (v137 < v139);
          }

          if (v139 < v138)
          {
            v141 = *(v24 + 80);
            v142 = *(v24 + 88);
            v143 = *(v24 + 104);
            do
            {
              v144 = (v15 + (v139 & v14));
              v145 = (506832829 * *v144) >> 15;
              v146 = *(v142 + 4 * v145);
              v147 = 2 * (v141 & v139);
              v148 = v147 | 1;
              *(v142 + 4 * v145) = v139;
              if (v139 != v146)
              {
                v149 = 0;
                v150 = 0;
                v151 = 64;
                do
                {
                  if (v139 - v146 > v141 - 15 || v151 == 0)
                  {
                    break;
                  }

                  if (v150 >= v149)
                  {
                    v153 = v149;
                  }

                  else
                  {
                    v153 = v150;
                  }

                  v154 = v15 + (v146 & v14);
                  v155 = (v154 + v153);
                  v156 = 128 - v153;
                  if (128 - v153 < 8)
                  {
                    v158 = (v144 + v153);
                    if (v156)
                    {
LABEL_193:
                      v160 = (v158 + v156);
                      while (*v158 == *v155)
                      {
                        v155 = (v155 + 1);
                        v158 = (v158 + 1);
                        if (!--v156)
                        {
                          v158 = v160;
                          break;
                        }
                      }

                      v14 = a5;
                    }
                  }

                  else
                  {
                    v157 = 0;
                    v158 = (v144 + v153);
                    do
                    {
                      if (*v155 != *v158)
                      {
                        v161 = (__clz(__rbit64(*v158 ^ *v155)) >> 3) - v157;
                        v14 = a5;
                        goto LABEL_200;
                      }

                      ++v155;
                      ++v158;
                      v157 -= 8;
                      v159 = v156 + v157;
                    }

                    while (v156 + v157 > 7);
                    v156 += v157;
                    v14 = a5;
                    if (v159)
                    {
                      goto LABEL_193;
                    }
                  }

                  v161 = v158 - (v144 + v153);
LABEL_200:
                  v162 = v161 + v153;
                  if (v162 >= 0x80)
                  {
                    v166 = (v143 + 8 * (v146 & v141));
                    *(v143 + 4 * v147) = *v166;
                    v165 = v166[1];
                    goto LABEL_206;
                  }

                  v163 = *(v154 + v162);
                  v164 = 2 * (v146 & v141);
                  if (*(v144 + v162) <= v163)
                  {
                    *(v143 + 4 * v148) = v146;
                    v148 = 2 * (v146 & v141);
                    v149 = v162;
                  }

                  else
                  {
                    *(v143 + 4 * v147) = v146;
                    v147 = v164 | 1;
                    v150 = v162;
                    v164 |= 1uLL;
                  }

                  v146 = *(v143 + 4 * v164);
                  --v151;
                }

                while (v139 != v146);
              }

              v165 = *(v24 + 96);
              *(v143 + 4 * v147) = v165;
LABEL_206:
              *(v143 + 4 * v148) = v165;
              ++v139;
            }

            while (v139 < v138);
          }

          v167 = (v136 >> 5) - 1;
          ++v272;
          bzero(v134 + 1, 4 * v167);
          v24 = a8;
          v133 = v167 + v270;
        }
      }

      v25 = v133 + 1;
      v22 = a2;
      v23 = v259;
      if (v133 + 4 >= a2)
      {
        v267 = 1;
        goto LABEL_248;
      }
    }

    v32 = 0;
LABEL_22:
    v33 = 0;
    goto LABEL_23;
  }

  v21 = BrotliAllocate(a1);
  v22 = 0;
  v284 = v21;
  v267 = 0;
  v278 = 0;
  v279 = 0;
  v23 = *(v13 + 96);
LABEL_248:
  v195 = a11;
  v263 = *a13;
  v286 = *a9;
  v269 = *a10;
  v271 = *a12;
  v196 = v22 + 1;
  if (v22 == -1)
  {
    v197 = 0;
    v198 = a1;
  }

  else
  {
    v198 = a1;
    v199 = BrotliAllocate(a1);
    v22 = a2;
    v197 = v199;
  }

  InitZopfliCostModel(v198, v284, v13 + 56, v22);
  v200 = v284;
  v201 = (v284 + 2856);
  v202 = (v284 + 3880);
  v258 = (v284 + 8872);
  v203 = 1;
  v261 = v196;
  v255 = (v284 + 6696);
  do
  {
    v204 = v203;
    if (v196)
    {
      v205 = v197 + 3;
      v206 = v196;
      do
      {
        *(v205 - 3) = 1;
        *(v205 - 1) = 0x7EFFC99E00000000;
        v205 += 4;
        --v206;
      }

      while (v206);
    }

    v273 = v204;
    if (v204)
    {
      ZopfliCostModelSetFromLiteralCosts(v200, a3, v15, v14);
      v207 = v284;
    }

    else
    {
      v208 = *a12;
      bzero(v201, 0x400uLL);
      bzero(v202, 0xB00uLL);
      bzero(v255, 0x880uLL);
      if (v208 != v271)
      {
        v209 = 0;
        v210 = a3 - v269;
        do
        {
          v211 = (v195 + 16 * v209);
          v212 = *v211;
          v213 = v211[1];
          v214 = *(v211 + 7);
          v215 = *(v211 + 6);
          ++*(v202 + v215);
          if (v215 >= 0x80)
          {
            ++*(v255 + (v214 & 0x3FF));
          }

          if (v212)
          {
            v216 = v210;
            v217 = v212;
            do
            {
              ++*(v201 + *(v15 + (v216++ & v14)));
              --v217;
            }

            while (v217);
          }

          v210 += v212 + (v213 & 0x1FFFFFF);
          ++v209;
        }

        while (v209 != v208 - v271);
      }

      SetCost(v201, 256, 1, v258);
      SetCost(v202, 704, 0, v284);
      SetCost(v255, *(v284 + 2824), 0, *(v284 + 2816));
      v207 = v284;
      v218 = 0;
      v219 = 1.7e38;
      do
      {
        if (v219 >= *(v284 + v218))
        {
          v219 = *(v284 + v218);
        }

        v218 += 4;
      }

      while (v218 != 2816);
      *(v284 + 2840) = v219;
      v220 = *(v284 + 2832);
      v221 = *(v284 + 2848);
      *v220 = 0;
      if (v221)
      {
        v222 = (v220 + 1);
        v223 = 0.0;
        v224 = a3;
        v225 = 0.0;
        do
        {
          v226 = v225 + v258[*(v15 + (v224 & v14))];
          v227 = v223 + v226;
          *v222++ = v223 + v226;
          v225 = v226 - ((v223 + v226) - v223);
          ++v224;
          v223 = v227;
          --v221;
        }

        while (v221);
      }
    }

    *a12 = v271;
    *a13 = v263;
    *a10 = v269;
    *a9 = v286;
    v228 = *(v13 + 16);
    v229 = *(v13 + 8);
    v230 = 325;
    if (*(v13 + 4) < 11)
    {
      v230 = 150;
    }

    v277 = v230;
    *v197 = 0;
    v197[3] = 0;
    v288 = 0;
    v231 = a2;
    if (v267)
    {
      v232 = 0;
      v233 = 0;
      v234 = (1 << v229) - 16;
      memset(__b, 0, sizeof(__b));
      do
      {
        updated = UpdateNodes(v231, a3, v232, a4, v14, a7, v234, a9, *(v278 + 4 * v232), v279 + 8 * v233, v207, __b, v197);
        if (updated >= 0x4000)
        {
          v236 = updated;
        }

        else
        {
          v236 = 0;
        }

        v237 = *(v278 + 4 * v232);
        v233 += v237;
        if (v237 == 1)
        {
          v238 = *(v279 - 4 + 8 * v233);
          v239 = v238 >> 5;
          if (v238 >> 5 <= v236)
          {
            v239 = v236;
          }

          if (v277 < v238 >> 5)
          {
            v236 = v239;
          }
        }

        if (v236 >= 2)
        {
          v240 = v236 - 1;
          v241 = v232 + 4;
          v242 = (v278 + 4 + 4 * v232);
          v231 = a2;
          do
          {
            v232 = v241 - 3;
            if (v241 >= v231)
            {
              break;
            }

            EvaluateNode((v228 + a3), v241 - 3, v234, v23, a9, v284, __b, v197);
            v231 = a2;
            v243 = *v242++;
            v233 += v243;
            ++v241;
            --v240;
          }

          while (v240);
          v14 = a5;
        }

        else
        {
          v231 = a2;
        }

        v244 = v232 + 4;
        ++v232;
        v207 = v284;
      }

      while (v244 < v231);
    }

    v245 = v231;
    *a12 += ComputeShortestPathFromNodes(v231, v197);
    v13 = a7;
    v195 = a11;
    BrotliZopfliCreateCommands(v245, a3, v197, a9, a10, a7, a11, a13);
    v200 = v284;
    v203 = 0;
    v15 = a4;
    v202 = (v284 + 3880);
    v196 = v261;
  }

  while ((v273 & 1) != 0);
  BrotliFree(a1);
  *(v284 + 2832) = 0;
  BrotliFree(a1);
  *(v284 + 2816) = 0;
  BrotliFree(a1);
  BrotliFree(a1);
  BrotliFree(a1);
  return BrotliFree(a1);
}

void SetCost(unsigned int *a1, uint64_t a2, int a3, float *a4)
{
  v6 = a2;
  v7 = a1;
  v8 = 0;
  if (!a2)
  {
    goto LABEL_5;
  }

  v9 = a1;
  v10 = a2;
  do
  {
    v11 = *v9++;
    v8 += v11;
    --v10;
  }

  while (v10);
  if (v8 > 0xFF)
  {
    v12 = log2(v8);
    if (a3)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_5:
    v12 = kBrotliLog2Table[v8];
    if (a3)
    {
      goto LABEL_13;
    }
  }

  if (v6)
  {
    v13 = v7;
    v14 = v6;
    do
    {
      if (!*v13++)
      {
        ++v8;
      }

      --v14;
    }

    while (v14);
  }

LABEL_13:
  if (v8 > 0xFF)
  {
    v16 = log2(v8);
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v16 = kBrotliLog2Table[v8];
    if (!v6)
    {
      return;
    }
  }

  v17 = v12;
  v18 = v16;
  v19 = v18 + 2.0;
  do
  {
    v21 = *v7++;
    v20 = v21;
    if (v21)
    {
      if (v20 > 0xFF)
      {
        v22 = log2(v20);
      }

      else
      {
        v22 = kBrotliLog2Table[v20];
      }

      v23 = v22;
      v24 = v17 - v23;
      *a4 = v24;
      if (v24 < 1.0)
      {
        *a4 = 1.0;
      }
    }

    else
    {
      *a4 = v19;
    }

    ++a4;
    --v6;
  }

  while (v6);
}

void sub_1AB12373C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id JECountFormatterMakeStringFromNumber(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (a1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unknown count formatter %ld", a1}];
  }

  v5 = [v4 localeIdentifier];
  [v5 UTF8String];
  if (unum_open())
  {
    unum_setAttribute();
    unum_formatInt64();
    unum_close();
  }

  return 0;
}

id getMTStandardIDServiceClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMTStandardIDServiceClass_softClass;
  v7 = getMTStandardIDServiceClass_softClass;
  if (!getMTStandardIDServiceClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMTStandardIDServiceClass_block_invoke;
    v3[3] = &unk_1E794AD30;
    v3[4] = &v4;
    __getMTStandardIDServiceClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AB123DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMTStandardIDServiceClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MetricsKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MetricsKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E794AD50;
    v6 = 0;
    MetricsKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (MetricsKitLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MTStandardIDService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMTStandardIDServiceClass_block_invoke_cold_1();
  }

  getMTStandardIDServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MetricsKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MetricsKitLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t BrotliBuildCodeLengthsHuffmanTable(uint64_t result, uint64_t a2, unsigned __int16 *a3)
{
  v3 = 0;
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3[1] - 1;
  v5 = v4 + a3[2] + a3[3];
  v43[2] = v4 + a3[2];
  v43[3] = v5;
  v6 = v5 + a3[4];
  v7 = v6 + a3[5];
  v43[4] = v6;
  v43[5] = v7;
  v43[0] = 17;
  v43[1] = v4;
  v8 = a2 + 17;
  do
  {
    v9 = *(v8 + v3);
    v10 = v43[v9];
    v44[v10] = v3 + 17;
    v43[v9] = v10 - 1;
    v11 = *(v8 + v3 - 1);
    v12 = v43[v11];
    v43[v11] = v12 - 1;
    v13 = *(v8 + v3 - 2);
    v14 = v43[v13];
    v44[v12] = v3 + 16;
    v44[v14] = v3 + 15;
    v43[v13] = v14 - 1;
    v15 = *(v8 + v3 - 3);
    v16 = v43[v15];
    v43[v15] = v16 - 1;
    v17 = *(v8 + v3 - 4);
    v18 = v43[v17];
    v44[v16] = v3 + 14;
    v44[v18] = v3 + 13;
    v43[v17] = v18 - 1;
    v19 = *(v8 + v3 - 5);
    v20 = v43[v19];
    v43[v19] = v20 - 1;
    v44[v20] = v3 + 12;
    v3 -= 6;
  }

  while (v3 != -18);
  if (v43[0])
  {
    v21 = 0;
    LODWORD(v22) = 0;
    v23 = result + 128;
    v24 = 2;
    v25 = 0x8000000000000000;
    for (i = 1; i != 6; ++i)
    {
      v27 = a3[i];
      if (a3[i])
      {
        v28 = -v24;
        v22 = v22;
        v29 = 0x1FuLL / v24;
        result = (v29 + 4) & 0x3C;
        v30 = vdupq_n_s64(v29);
        do
        {
          v31 = 0;
          v32 = i | (v44[v22] << 16);
          v33 = __rbit64(v21);
          v34 = 4 * v33;
          v35 = 12 * v28 + 4 * v33;
          v36 = 8 * v28 + 4 * v33;
          v37 = v28 + v33;
          v38 = v23 - 4 * v24;
          do
          {
            v39 = vdupq_n_s64(v31);
            v40 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(v39, xmmword_1AB465FA0)));
            if (vuzp1_s16(v40, 2).u8[0])
            {
              *(v38 + v34) = v32;
            }

            if (vuzp1_s16(v40, 2).i8[2])
            {
              *(v38 + 4 * v37) = v32;
            }

            if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v30, vorrq_s8(v39, xmmword_1AB465F90)))).i32[1])
            {
              *(v38 + v36) = v32;
              *(v38 + v35) = v32;
            }

            v31 += 4;
            v38 += 16 * v28;
          }

          while (result != v31);
          ++v22;
          v21 += v25;
          --v27;
        }

        while (v27);
      }

      v24 *= 2;
      v25 >>= 1;
    }
  }

  else
  {
    v41 = 0;
    v42 = vdupq_n_s32(v44[0] << 16);
    do
    {
      *(result + v41) = v42;
      v41 += 16;
    }

    while (v41 != 128);
  }

  return result;
}

uint64_t BrotliBuildHuffmanTable(char *__src, int a2, uint64_t a3, uint64_t a4)
{
  v8 = (a3 - 2);
  v9 = 16;
  do
  {
    v10 = *v8--;
    --v9;
  }

  while (v10 == -1);
  v11 = 0;
  v12 = 1;
  v13 = (1 << a2);
  if (v9 >= a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = v9;
  }

  if (v9 >= a2)
  {
    v15 = 1 << a2;
  }

  else
  {
    v15 = 1 << v9;
  }

  v16 = v14;
  v17 = 2;
  v18 = 0x8000000000000000;
  do
  {
    v19 = *(a4 + 2 * v12);
    if (*(a4 + 2 * v12))
    {
      v20 = v12 - 16;
      do
      {
        v20 = *(a3 + 2 * v20);
        v21 = &__src[4 * __rbit64(v11)];
        v22 = v15;
        do
        {
          *&v21[4 * (v22 - v17)] = v12 | (v20 << 16);
          v22 -= v17;
        }

        while (v22 > 0);
        v11 += v18;
        --v19;
      }

      while (v19);
    }

    v17 *= 2;
    v18 >>= 1;
  }

  while (v12++ < v16);
  if (v13 != v15)
  {
    do
    {
      memcpy(&__src[4 * v15], __src, 4 * v15);
      v24 = v13 == 2 * v15;
      v15 *= 2;
    }

    while (!v24);
  }

  if (v9 > a2)
  {
    v25 = 0;
    v26 = a2;
    v27 = v9;
    v28 = a2 + 1;
    v29 = 0x8000000000000000;
    v30 = 2;
    v31 = __src;
    v32 = 1 << a2;
    do
    {
      v33 = v26 + 1;
      if (*(a4 + 2 * (v26 + 1)))
      {
        v34 = v26 - 15;
        do
        {
          if (!v25)
          {
            v35 = v26 + 1;
            if (v26 <= 13)
            {
              v36 = v26;
              v35 = v28;
              v37 = 1 << (v33 - a2);
              while (1)
              {
                v38 = v37 - *(a4 + 2 + 2 * v36);
                if (v38 < 1)
                {
                  break;
                }

                v37 = 2 * v38;
                ++v35;
                if (++v36 >= 14)
                {
                  v35 = 15;
                  break;
                }
              }
            }

            v31 += 4 * v32;
            v32 = 1 << (v35 - a2);
            v13 = (v32 + v13);
            v39 = __rbit64(v11);
            v11 += 0x8000000000000000 >> (a2 - 1);
            *&__src[4 * v39] = v35 | ((((v31 - __src) >> 2) - v39) << 16);
          }

          v34 = *(a3 + 2 * v34);
          v40 = &v31[4 * __rbit64(v25)];
          v41 = v32;
          do
          {
            *&v40[4 * (v41 - v30)] = (v33 - a2) | (v34 << 16);
            v41 -= v30;
          }

          while (v41 > 0);
          v25 += v29;
          v42 = *(a4 + 2 * v33) - 1;
          *(a4 + 2 * v33) = v42;
        }

        while (v42);
      }

      v30 *= 2;
      v29 >>= 1;
      ++v28;
      ++v26;
    }

    while (v33 < v27);
  }

  return v13;
}

uint64_t BrotliBuildSimpleHuffmanTable(int *__src, char a2, unsigned __int16 *a3, int a4)
{
  v5 = 1;
  v6 = (1 << a2);
  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        v14 = a3[1];
        v15 = *a3;
        if (v14 <= v15)
        {
          *__src = (v14 << 16) | 1;
          v16 = (*a3 << 16) | 1;
        }

        else
        {
          *__src = (v15 << 16) | 1;
          v16 = (a3[1] << 16) | 1;
        }

        __src[1] = v16;
        v5 = 2;
      }
    }

    else
    {
      *__src = *a3 << 16;
      v5 = 1;
    }
  }

  else
  {
    if (a4 == 2)
    {
      *__src = (*a3 << 16) | 1;
      __src[2] = (*a3 << 16) | 1;
      v17 = a3[2];
      v18 = a3[1];
      if (v17 > v18)
      {
        __src[1] = (v18 << 16) | 2;
        v19 = (a3[2] << 16) | 2;
LABEL_24:
        __src[3] = v19;
        v5 = 4;
        goto LABEL_28;
      }

      __src[1] = (v17 << 16) | 2;
      v13 = a3[1];
LABEL_23:
      v19 = (v13 << 16) | 2;
      goto LABEL_24;
    }

    if (a4 != 4)
    {
      if (a4 != 3)
      {
        goto LABEL_28;
      }

      v7 = 0;
      v8 = 2;
      do
      {
        v9 = v7++;
        v10 = a3[v9];
        v11 = v8;
        do
        {
          v12 = *(a3 + v11);
          if (v12 < v10)
          {
            *(a3 + v11) = v10;
            a3[v9] = v12;
            v10 = v12;
          }

          v11 += 2;
        }

        while (v11 != 8);
        v8 += 2;
      }

      while (v7 != 3);
      *__src = (*a3 << 16) | 2;
      __src[2] = (a3[1] << 16) | 2;
      __src[1] = (a3[2] << 16) | 2;
      v13 = a3[3];
      goto LABEL_23;
    }

    v20 = a3[3];
    v21 = a3[2];
    if (v20 < v21)
    {
      a3[3] = v21;
      a3[2] = v20;
    }

    *__src = (*a3 << 16) | 1;
    __src[1] = (a3[1] << 16) | 2;
    __src[2] = (*a3 << 16) | 1;
    __src[3] = (a3[2] << 16) | 3;
    __src[4] = (*a3 << 16) | 1;
    __src[5] = (a3[1] << 16) | 2;
    __src[6] = (*a3 << 16) | 1;
    __src[7] = (a3[3] << 16) | 3;
    v5 = 8;
  }

LABEL_28:
  while (v5 != v6)
  {
    memcpy(&__src[v5], __src, 4 * v5);
    v5 *= 2;
  }

  return v6;
}

unint64_t BrotliStoreHuffmanTree(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  v41 = *MEMORY[0x1E69E9840];
  v33 = 0;
  v37[0] = 0;
  v37[1] = 0;
  v38 = 0;
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  BrotliWriteHuffmanTree(a1, a2, &v33, v40, v39);
  v8 = v33;
  if (v33)
  {
    v9 = v40;
    do
    {
      v10 = *v9++;
      ++*(v34 + v10);
      --v8;
    }

    while (v8);
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  while (!*(v34 + v13))
  {
LABEL_8:
    if (++v13 == 18)
    {
      goto LABEL_11;
    }
  }

  if (!v12)
  {
    v12 = 1;
    v11 = v13;
    goto LABEL_8;
  }

  v12 = 2;
LABEL_11:
  v14 = 18;
  BrotliCreateHuffmanTree(v34, 18, 5, a3, v37);
  result = BrotliConvertBitDepthsToSymbols(v37, 18, v36);
  if (v12 >= 2)
  {
    v16 = 0x11u;
    while (!*(v37 + BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask_kStorageOrder[v16]))
    {
      if (--v16 == -1)
      {
        v14 = 0;
        goto LABEL_17;
      }
    }

    v14 = v16 + 1;
  }

LABEL_17:
  v17 = 2;
  if (!BYTE3(v37[0]))
  {
    v17 = 3;
  }

  if (BYTE1(v37[0]) | BYTE2(v37[0]))
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  v19 = *a4;
  *(a5 + (*a4 >> 3)) = (v18 << (*a4 & 7)) | *(a5 + (*a4 >> 3));
  v20 = v19 + 2;
  *a4 = v20;
  v21 = v14 - v18;
  if (v14 > v18)
  {
    v22 = &BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask_kStorageOrder[v18];
    do
    {
      v23 = *v22++;
      v24 = *(v37 + v23);
      v25 = BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask_kHuffmanBitLengthHuffmanCodeBitLengths[v24];
      result = v20 & 7;
      *(a5 + (v20 >> 3)) = (BrotliStoreHuffmanTreeOfHuffmanTreeToBitMask_kHuffmanBitLengthHuffmanCodeSymbols[v24] << (v20 & 7)) | *(a5 + (v20 >> 3));
      v20 += v25;
      *a4 = v20;
      --v21;
    }

    while (v21);
  }

  if (v12 == 1)
  {
    *(v37 + v11) = 0;
  }

  v26 = v33;
  if (v33)
  {
    v27 = v39;
    v28 = v40;
    while (1)
    {
      v30 = *v28++;
      v29 = v30;
      v31 = *(v37 + v30);
      result = *(a5 + (v20 >> 3));
      *(a5 + (v20 >> 3)) = (v36[v30] << (v20 & 7)) | result;
      v20 += v31;
      *a4 = v20;
      if (v30 == 16)
      {
        break;
      }

      if (v29 == 17)
      {
        v32 = 3;
LABEL_33:
        result = v20 & 7;
        *(a5 + (v20 >> 3)) = (*v27 << (v20 & 7)) | *(a5 + (v20 >> 3));
        v20 += v32;
        *a4 = v20;
      }

      ++v27;
      if (!--v26)
      {
        return result;
      }
    }

    v32 = 2;
    goto LABEL_33;
  }

  return result;
}

unint64_t BrotliBuildAndStoreHuffmanTreeFast(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v88 = *MEMORY[0x1E69E9840];
  v86 = 0u;
  v87 = 0u;
  if (!a3)
  {
    goto LABEL_9;
  }

  v10 = result;
  v11 = 0;
  v12 = 0;
  do
  {
    v13 = *(a2 + 4 * v12);
    if (v13)
    {
      if (v11 <= 3)
      {
        *(&v86 + v11) = v12;
      }

      ++v11;
      a3 -= v13;
    }

    ++v12;
  }

  while (a3);
  v14 = v11 - 1;
  if (v11 <= 1)
  {
LABEL_9:
    v15 = *a7;
    *(a8 + (*a7 >> 3)) = (1 << (*a7 & 7)) | *(a8 + (*a7 >> 3));
    v15 += 4;
    *a7 = v15;
    v16 = v86;
    *(a8 + (v15 >> 3)) = (v86 << (v15 & 7)) | *(a8 + (v15 >> 3));
    *a7 = v15 + a4;
    a5[v16] = 0;
    *(a6 + 2 * v16) = 0;
    return result;
  }

  bzero(a5, v12);
  v17 = 1;
  do
  {
    if (v12)
    {
      v18 = v12 - 1;
      v19 = v10;
      do
      {
        v20 = *(a2 + 4 * v18);
        if (v20)
        {
          if (v20 < v17)
          {
            v20 = v17;
          }

          *v19 = v20;
          *(v19 + 4) = -1;
          *(v19 + 6) = v18;
          v19 += 8;
        }

        --v18;
      }

      while (v18 != -1);
    }

    else
    {
      v19 = v10;
    }

    v21 = ((v19 - v10) >> 3);
    if (v21 > 0xC)
    {
      v27 = 2 * (v21 < 0x39);
      do
      {
        v28 = kBrotliShellGaps[v27];
        if (v28 < v21)
        {
          v29 = 0;
          v30 = kBrotliShellGaps[v27];
          do
          {
            v31 = *(v10 + 8 * v30);
            v32 = v30;
            if (v30 >= v28)
            {
              v33 = v29;
              v34 = v30;
              while (*(v10 + v33) > v31)
              {
                v32 = v34 - v28;
                *(v10 + 8 * v34) = *(v10 + v33);
                v33 -= 8 * v28;
                v34 = v32;
                if (v32 < v28)
                {
                  goto LABEL_38;
                }
              }

              v32 = v34;
            }

LABEL_38:
            *(v10 + 8 * v32) = v31;
            ++v30;
            v29 += 8;
          }

          while (v30 != v21);
        }

        ++v27;
      }

      while (v27 != 6);
    }

    else if (v21 >= 2)
    {
      v22 = 0;
      for (i = 1; i != v21; ++i)
      {
        v24 = *(v10 + 8 * i);
        v25 = v22;
        v26 = i;
        do
        {
          if (*(v10 + v25) <= v24)
          {
            break;
          }

          *(v10 + 8 * v26) = *(v10 + v25);
          v25 -= 8;
          --v26;
        }

        while (v26);
        *(v10 + 8 * v26) = v24;
        v22 += 8;
      }
    }

    v35 = (v19 - v10) >> 3;
    *v19 = -1;
    *(v19 + 8) = -1;
    if (v35 >= 2)
    {
      v36 = 0;
      v37 = v35 + 1;
      v38 = (v19 + 16);
      v39 = v35 + 1;
      do
      {
        v40 = *(v10 + 8 * v36);
        v41 = *(v10 + 8 * v37);
        v42 = v40 > v41;
        if (v40 > v41)
        {
          v43 = v36;
        }

        else
        {
          v43 = v36 + 1;
        }

        if (v42)
        {
          v44 = v37 + 1;
        }

        else
        {
          v44 = v37;
        }

        if (v42)
        {
          v45 = v37;
        }

        else
        {
          v45 = v36;
        }

        v46 = *(v10 + 8 * v43);
        v47 = *(v10 + 8 * v44);
        v48 = v46 > v47;
        if (v46 > v47)
        {
          v36 = v43;
        }

        else
        {
          v36 = v43 + 1;
        }

        if (v48)
        {
          v37 = v44 + 1;
        }

        else
        {
          v37 = v44;
        }

        if (v48)
        {
          v43 = v44;
        }

        *(v38 - 2) = *(v10 + 8 * v43) + *(v10 + 8 * v45);
        *(v38 - 2) = v45;
        *(v38 - 1) = v43;
        *v38++ = -1;
        --v39;
      }

      while (v39 > 2);
    }

    v17 *= 2;
  }

  while (!BrotliSetDepth(2 * v35 - 1, v10, a5, 14));
  result = BrotliConvertBitDepthsToSymbols(a5, v12, a6);
  if (v11 > 4)
  {
    v65 = *a7;
    *(a8 + (*a7 >> 3)) = (0xFF55555554 << (*a7 & 7)) | *(a8 + (*a7 >> 3));
    v66 = v65 + 40;
    *a7 = v66;
    if (!v12)
    {
      return result;
    }

    v67 = 0;
    v68 = 8;
    while (1)
    {
      v69 = a5[v67];
      if (v67 + 1 >= v12)
      {
        ++v67;
        result = 1;
        if (!v69)
        {
          goto LABEL_90;
        }
      }

      else
      {
        v70 = v67 - v12 + 1;
        result = 1;
        while (a5[v67 + result] == v69)
        {
          ++result;
          if (__CFADD__(v70++, 1))
          {
            result = v12 - v67;
            break;
          }
        }

        v67 += result;
        if (!v69)
        {
LABEL_90:
          v75 = kZeroRepsDepth[result];
          result = (kZeroRepsBits[result] << (v66 & 7)) | *(a8 + (v66 >> 3));
          *(a8 + (v66 >> 3)) = result;
          v66 += v75;
          v69 = v68;
          goto LABEL_92;
        }
      }

      if (v68 != v69)
      {
        v72 = kCodeLengthDepth[v69];
        *(a8 + (v66 >> 3)) = (kCodeLengthBits[v69] << (v66 & 7)) | *(a8 + (v66 >> 3));
        v66 += v72;
        *a7 = v66;
        --result;
      }

      if (result <= 2)
      {
        if (result)
        {
          v73 = kCodeLengthDepth[v69];
          v74 = kCodeLengthBits[v69];
          do
          {
            *(a8 + (v66 >> 3)) = (v74 << (v66 & 7)) | *(a8 + (v66 >> 3));
            v66 += v73;
            *a7 = v66;
            --result;
          }

          while (result);
        }

        goto LABEL_93;
      }

      v76 = result - 3;
      v77 = kNonZeroRepsDepth[v76];
      result = (kNonZeroRepsBits[v76] << (v66 & 7)) | *(a8 + (v66 >> 3));
      *(a8 + (v66 >> 3)) = result;
      v66 += v77;
LABEL_92:
      *a7 = v66;
LABEL_93:
      v68 = v69;
      if (v67 >= v12)
      {
        return result;
      }
    }
  }

  v49 = 0;
  v50 = *a7;
  *(a8 + (*a7 >> 3)) = (1 << (*a7 & 7)) | *(a8 + (*a7 >> 3));
  *a7 = v50 + 2;
  *(a8 + ((v50 + 2) >> 3)) = (v14 << ((v50 + 2) & 7)) | *(a8 + ((v50 + 2) >> 3));
  v51 = v50 + 4;
  *a7 = v51;
  v52 = &v86 + 8;
  do
  {
    v53 = v49 + 1;
    if (v49 + 1 < v11)
    {
      v54 = *(&v86 + v49);
      v55 = v52;
      v56 = v14;
      do
      {
        v57 = *v55;
        result = a5[v54];
        if (a5[*v55] < result)
        {
          *v55 = v54;
          *(&v86 + v49) = v57;
          v54 = v57;
        }

        ++v55;
        --v56;
      }

      while (v56);
    }

    --v14;
    v52 += 8;
    ++v49;
  }

  while (v53 != v11);
  v58 = v86;
  v59 = v51 >> 3;
  v60 = v86 << (v51 & 7);
  v61 = v51 + a4;
  v62 = (v51 + a4) >> 3;
  v63 = v61 & 7;
  v64 = v61 + a4;
  if (v11 == 3)
  {
    *(a8 + v59) = v60 | *(a8 + v59);
    *a7 = v61;
    v78 = v87;
    *(a8 + v62) = (*(&v86 + 1) << v63) | *(a8 + v62);
    *a7 = v64;
    *(a8 + (v64 >> 3)) = (v78 << (v64 & 7)) | *(a8 + (v64 >> 3));
    v64 += a4;
  }

  else
  {
    *(a8 + v59) = v60 | *(a8 + v59);
    *a7 = v61;
    if (v11 == 2)
    {
      *(a8 + v62) = (*(&v86 + 1) << v63) | *(a8 + v62);
    }

    else
    {
      v79 = v87;
      *(a8 + v62) = (*(&v86 + 1) << v63) | *(a8 + v62);
      *a7 = v64;
      *(a8 + (v64 >> 3)) = (v79 << (v64 & 7)) | *(a8 + (v64 >> 3));
      v80 = v64 + a4;
      *a7 = v80;
      *(a8 + (v80 >> 3)) = (*(&v87 + 1) << (v80 & 7)) | *(a8 + (v80 >> 3));
      v81 = v80 + a4;
      *a7 = v81;
      *(a8 + (v81 >> 3)) = ((a5[v58] == 1) << (v81 & 7)) | *(a8 + (v81 >> 3));
      v64 = v81 + 1;
    }
  }

  *a7 = v64;
  return result;
}

uint64_t BrotliStoreMetaBlock(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, unsigned int *a9, unsigned int a10, uint64_t a11, uint64_t a12, unint64_t *a13, unint64_t *a14, uint64_t a15)
{
  v15 = a8;
  v18 = a9[17];
  v105 = a9[16];
  StoreCompressedMetaBlockHeader(a8, a4, a14, a15);
  v19 = BrotliAllocate(a1);
  v20 = BrotliAllocate(a1);
  v21 = v20;
  v23 = a13[2];
  v22 = a13[3];
  v24 = *a13;
  v25 = a13[1];
  *v20 = 256;
  *(v20 + 8) = v24;
  *(v20 + 16) = v23;
  *(v20 + 24) = v22;
  *(v20 + 32) = v25;
  *(v20 + 40) = xmmword_1AB4CE300;
  *(v20 + 912) = 0;
  if (v25)
  {
    v26 = *v22;
  }

  else
  {
    v26 = 0;
  }

  *(v20 + 920) = v26;
  *(v20 + 928) = 0;
  *(v20 + 944) = 0;
  *(v20 + 936) = 0;
  v28 = a13[8];
  v27 = a13[9];
  v29 = a13[6];
  v30 = a13[7];
  *(v20 + 952) = 704;
  *(v20 + 960) = v29;
  *(v20 + 968) = v28;
  *(v20 + 976) = v27;
  *(v20 + 984) = v30;
  *(v20 + 992) = xmmword_1AB4CE300;
  *(v20 + 1864) = 0;
  if (v30)
  {
    v31 = *v27;
  }

  else
  {
    v31 = 0;
  }

  v96 = (v20 + 952);
  *(v20 + 1872) = v31;
  v95 = (v20 + 1904);
  *(v20 + 1880) = 0;
  *(v20 + 1896) = 0;
  *(v20 + 1888) = 0;
  v33 = a13[14];
  v32 = a13[15];
  v34 = a13[12];
  v35 = a13[13];
  *(v20 + 1904) = v18;
  *(v20 + 1912) = v34;
  *(v20 + 1920) = v33;
  *(v20 + 1928) = v32;
  *(v20 + 1936) = v35;
  *(v20 + 1944) = 1;
  *(v20 + 1952) = 0;
  *(v20 + 2816) = 0;
  if (v35)
  {
    v36 = *v32;
  }

  else
  {
    v36 = 0;
  }

  *(v20 + 2824) = v36;
  *(v20 + 2832) = 0;
  *(v20 + 2848) = 0;
  *(v20 + 2840) = 0;
  BuildAndStoreBlockSwitchEntropyCodes(v20, v19, a14, a15);
  BuildAndStoreBlockSwitchEntropyCodes(v96, v19, a14, a15);
  BuildAndStoreBlockSwitchEntropyCodes(v95, v19, a14, a15);
  v37 = *a14;
  *(a15 + (*a14 >> 3)) = (a9[14] << (*a14 & 7)) | *(a15 + (*a14 >> 3));
  *a14 = v37 + 2;
  *(a15 + ((v37 + 2) >> 3)) = ((a9[15] >> a9[14]) << ((v37 + 2) & 7)) | *(a15 + ((v37 + 2) >> 3));
  v38 = v37 + 6;
  *a14 = v37 + 6;
  if (*a13)
  {
    v39 = 0;
    do
    {
      *(a15 + (v38 >> 3)) = (a10 << (v38 & 7)) | *(a15 + (v38 >> 3));
      v38 += 2;
      *a14 = v38;
      ++v39;
    }

    while (v39 < *a13);
  }

  v40 = a13[19];
  if (v40)
  {
    EncodeContextMap(a1, (v21 + 2856), a13[18], v40, a13[23], v19, a14, a15);
  }

  else
  {
    StoreTrivialContextMap((v21 + 2856), a13[23], 6uLL, v19, a14, a15);
  }

  v41 = a13[21];
  if (v41)
  {
    EncodeContextMap(a1, (v21 + 2856), a13[20], v41, a13[27], v19, a14, a15);
  }

  else
  {
    StoreTrivialContextMap((v21 + 2856), a13[27], 2uLL, v19, a14, a15);
  }

  v42 = a13[22];
  v43 = a13[23];
  if (*v21 * v43)
  {
    *(v21 + 936) = BrotliAllocate(a1);
    v44 = BrotliAllocate(a1);
  }

  else
  {
    v44 = 0;
    *(v21 + 936) = 0;
  }

  *(v21 + 944) = v44;
  if (v43)
  {
    for (i = 0; i != v43; ++i)
    {
      BuildAndStoreHuffmanTree(v42, *v21, 256, v19, (*(v21 + 936) + *v21 * i), *(v21 + 944) + 2 * *v21 * i, a14, a15);
      v42 += 1040;
    }
  }

  v46 = a13[24];
  v47 = a13[25];
  if (*v96 * v47)
  {
    *(v21 + 1888) = BrotliAllocate(a1);
    v48 = BrotliAllocate(a1);
  }

  else
  {
    v48 = 0;
    *(v21 + 1888) = 0;
  }

  *(v21 + 1896) = v48;
  if (v47)
  {
    for (j = 0; j != v47; ++j)
    {
      BuildAndStoreHuffmanTree(v46, *(v21 + 952), 704, v19, (*(v21 + 1888) + *(v21 + 952) * j), *(v21 + 1896) + 2 * *(v21 + 952) * j, a14, a15);
      v46 += 2832;
    }
  }

  v50 = a13[26];
  v51 = a13[27];
  v94 = v15;
  if (*v95 * v51)
  {
    *(v21 + 2840) = BrotliAllocate(a1);
    v52 = BrotliAllocate(a1);
  }

  else
  {
    v52 = 0;
    *(v21 + 2840) = 0;
  }

  *(v21 + 2848) = v52;
  if (v51)
  {
    for (k = 0; k != v51; ++k)
    {
      BuildAndStoreHuffmanTree(v50, *(v21 + 1904), v105, v19, (*(v21 + 2840) + *(v21 + 1904) * k), *(v21 + 2848) + 2 * *(v21 + 1904) * k, a14, a15);
      v50 += 2192;
    }
  }

  v93 = a1;
  BrotliFree(a1);
  v54 = a2;
  if (a12)
  {
    v55 = 0;
    *v106 = a6;
    v56 = a7;
    v57 = &_kBrotliContextLookupTable + 512 * a10;
    v58 = v57 + 256;
    do
    {
      v104 = v55;
      v59 = (a11 + 16 * v55);
      v61 = *v59;
      v60 = v59[1];
      v62 = *(v59 + 7);
      v98 = v59[2];
      v99 = *(v59 + 6);
      StoreSymbol(v96, v99, a14, a15);
      LOWORD(v63) = v61;
      if (v61 >= 6)
      {
        if (v61 > 0x81)
        {
          if (v61 > 0x841)
          {
            v65 = 22;
            if (v61 >= 0x5842)
            {
              v65 = 23;
            }

            LOWORD(v63) = 21;
            if (v61 >> 1 >= 0xC21)
            {
              LOWORD(v63) = v65;
            }
          }

          else
          {
            LODWORD(v63) = (__clz(v61 - 66) ^ 0x1F) + 10;
          }
        }

        else
        {
          v64 = (__clz(v61 - 2) ^ 0x1F) - 1;
          v63 = ((v61 - 2) >> v64) + 2 * v64 + 2;
        }
      }

      v66 = (v60 & 0x1FFFFFF) + (HIBYTE(v60) & 0x80 | (v60 >> 25));
      v102 = v60 & 0x1FFFFFF;
      if (v66 > 9)
      {
        v68 = a5;
        if (v66 > 0x85)
        {
          LODWORD(v67) = (__clz(v66 - 70) ^ 0x1F) + 12;
          if (v66 > 0x845)
          {
            LOWORD(v67) = 23;
          }
        }

        else
        {
          v69 = (__clz(v66 - 6) ^ 0x1F) - 1;
          v67 = ((v66 - 6) >> v69) + 2 * v69 + 4;
        }
      }

      else
      {
        LOWORD(v67) = v60 + (HIBYTE(v60) & 0x80 | (v60 >> 25)) - 2;
        v68 = a5;
      }

      v70 = v63;
      v71 = kBrotliInsExtra[v70];
      v72 = v67;
      v73 = ((v66 - *(&kBrotliCopyBase + v72 * 4)) << v71) | (v61 - *(&kBrotliInsBase + v70 * 4));
      v74 = kBrotliCopyExtra[v72] + v71;
      v75 = *a14;
      *(a15 + (*a14 >> 3)) = (v73 << (*a14 & 7)) | *(a15 + (*a14 >> 3));
      *a14 = v75 + v74;
      v97 = v62;
      if (a13[19])
      {
        v76 = v68;
        v77 = v56;
        v78 = v57;
        v79 = v21;
        v80 = *v106;
        if (v61)
        {
          do
          {
            v77 = v80;
            v81 = v58[v56] | v78[v80];
            v80 = *(a2 + (a3 & v76));
            StoreSymbolWithContext(v21, v80, v81, a13[18], a14, a15, 6);
            ++a3;
            v56 = v77;
            --v61;
          }

          while (v61);
        }
      }

      else
      {
        if (v61)
        {
          v78 = v57;
          do
          {
            StoreSymbol(v21, *(v54 + (a3++ & v68)), a14, a15);
            --v61;
          }

          while (v61);
          v77 = v56;
        }

        else
        {
          v77 = v56;
          v78 = v57;
        }

        v79 = v21;
        v80 = *v106;
      }

      *v106 = v80;
      a3 += v102;
      v54 = a2;
      v21 = v79;
      v57 = v78;
      if (v102)
      {
        v77 = *(a2 + ((a3 - 2) & a5));
        *v106 = *(a2 + ((a3 - 1) & a5));
        if (v99 >= 0x80)
        {
          if (a13[21])
          {
            v82 = v99 >> 6;
            if ((v99 & 7u) >= 3)
            {
              v83 = 3;
            }

            else
            {
              v83 = v99 & 7;
            }

            if (v82 == 4 || v82 == 2 || v82 == 7)
            {
              v86 = v83;
            }

            else
            {
              v86 = 3;
            }

            v87 = v97;
            v89 = a15;
            v88 = a14;
            StoreSymbolWithContext(v95, v97 & 0x3FF, v86, a13[20], a14, a15, 2);
          }

          else
          {
            v87 = v97;
            v89 = a15;
            v88 = a14;
            StoreSymbol(v95, v97 & 0x3FF, a14, a15);
          }

          v90 = *v88;
          *(v89 + (*v88 >> 3)) = (v98 << (*v88 & 7)) | *(v89 + (*v88 >> 3));
          *v88 = v90 + (v87 >> 10);
        }
      }

      v55 = v104 + 1;
      v56 = v77;
    }

    while (v104 + 1 != a12);
  }

  BrotliFree(v93);
  *(v21 + 2840) = 0;
  BrotliFree(v93);
  *(v21 + 2848) = 0;
  BrotliFree(v93);
  *(v21 + 1888) = 0;
  BrotliFree(v93);
  *(v21 + 1896) = 0;
  BrotliFree(v93);
  *(v21 + 936) = 0;
  BrotliFree(v93);
  *(v21 + 944) = 0;
  result = BrotliFree(v93);
  if (v94)
  {
    v92 = *a14 + 7;
    *a14 = v92 & 0xFFFFFFF8;
    *(a15 + (v92 >> 3)) = 0;
  }

  return result;
}