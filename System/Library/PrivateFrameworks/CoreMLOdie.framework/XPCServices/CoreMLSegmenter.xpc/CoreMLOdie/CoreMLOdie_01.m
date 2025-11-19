__n128 sub_10000EC9C(uint64_t a1, uint64_t *a2, __n128 *a3, _WORD *a4)
{
  v8 = *(a1 + 4904);
  v9 = v8[1];
  if ((v9 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v8 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v8)
    {
      std::terminate();
    }

    v9 = 0;
    *v8 = *(a1 + 4904);
    v8[1] = 0;
    *(a1 + 4904) = v8;
  }

  v8[1] = v9 + 48;
  v10 = v8 + v9;
  v11 = *a2;
  v12 = *a4;
  v10[24] = 56;
  v13 = *(v10 + 25) & 0xF000 | v12 & 0x3F;
  *(v10 + 2) = off_1002D2330;
  *(v10 + 4) = v11;
  result = *a3;
  *(v10 + 25) = v13 | 0x540;
  *(v10 + 40) = result;
  return result;
}

char *sub_10000ED74(uint64_t a1, uint64_t *a2, uint64_t *a3, _WORD *a4)
{
  v8 = *(a1 + 4904);
  v9 = v8[1];
  if ((v9 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v8 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v8)
    {
      std::terminate();
    }

    v9 = 0;
    *v8 = *(a1 + 4904);
    v8[1] = 0;
    *(a1 + 4904) = v8;
  }

  v8[1] = v9 + 32;
  v10 = v8 + v9;
  result = v10 + 16;
  v12 = *a2;
  v13 = *a3;
  v14 = *a4;
  v10[24] = 55;
  *(v10 + 25) = *(v10 + 25) & 0xF000 | v14 & 0x3F | 0x540;
  *(v10 + 2) = off_1002D2390;
  *(v10 + 4) = v12;
  *(v10 + 5) = v13;
  return result;
}

__n128 sub_10000EE48(uint64_t a1, uint64_t *a2, __n128 *a3, uint64_t *a4, _WORD *a5)
{
  v10 = *(a1 + 4904);
  v11 = v10[1];
  if ((v11 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v10 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v10)
    {
      std::terminate();
    }

    v11 = 0;
    *v10 = *(a1 + 4904);
    v10[1] = 0;
    *(a1 + 4904) = v10;
  }

  v10[1] = v11 + 48;
  v12 = v10 + v11;
  v13 = *a2;
  v14 = *a4;
  v15 = *a5;
  v12[24] = 58;
  v16 = *(v12 + 25) & 0xF000 | v15 & 0x3F;
  *(v12 + 2) = off_1002D23F0;
  *(v12 + 4) = v13;
  result = *a3;
  *(v12 + 25) = v16 | 0x540;
  *(v12 + 40) = result;
  *(v12 + 7) = v14;
  return result;
}

__n128 sub_10000EF34(uint64_t a1, __n128 *a2, uint64_t *a3, __int128 *a4, char *a5, char *a6, _WORD *a7)
{
  v14 = *(a1 + 4904);
  v15 = v14[1];
  if ((v15 - 4016) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v14 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v14)
    {
      std::terminate();
    }

    v15 = 0;
    *v14 = *(a1 + 4904);
    v14[1] = 0;
    *(a1 + 4904) = v14;
  }

  v14[1] = v15 + 64;
  v16 = v14 + v15;
  v17 = *a3;
  v18 = *a5;
  v19 = *a6;
  v20 = *a7;
  v16[24] = 64;
  v21 = *(v16 + 25) & 0xF000 | v20 & 0x3F;
  *(v16 + 2) = off_1002D2450;
  result = *a2;
  *(v16 + 6) = v17;
  v23 = *a4;
  *(v16 + 25) = v21 | 0x540;
  *(v16 + 2) = result;
  *(v16 + 56) = v23;
  v16[72] = v18;
  v16[73] = v19;
  return result;
}

__n128 sub_10000F040(uint64_t a1, uint64_t *a2, __n128 *a3, char *a4, _WORD *a5)
{
  v10 = *(a1 + 4904);
  v11 = v10[1];
  if ((v11 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v10 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v10)
    {
      std::terminate();
    }

    v11 = 0;
    *v10 = *(a1 + 4904);
    v10[1] = 0;
    *(a1 + 4904) = v10;
  }

  v10[1] = v11 + 48;
  v12 = v10 + v11;
  v13 = *a2;
  v14 = *a4;
  v15 = *a5;
  v12[24] = 63;
  v16 = *(v12 + 25) & 0xF000 | v15 & 0x3F;
  *(v12 + 2) = off_1002D2510;
  *(v12 + 4) = v13;
  result = *a3;
  *(v12 + 25) = v16 | 0x540;
  *(v12 + 40) = result;
  v12[56] = v14;
  return result;
}

__n128 sub_10000F12C(uint64_t a1, uint64_t *a2, __n128 *a3, _WORD *a4)
{
  v8 = *(a1 + 4904);
  v9 = v8[1];
  if ((v9 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v8 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v8)
    {
      std::terminate();
    }

    v9 = 0;
    *v8 = *(a1 + 4904);
    v8[1] = 0;
    *(a1 + 4904) = v8;
  }

  v8[1] = v9 + 48;
  v10 = v8 + v9;
  v11 = *a2;
  v12 = *a4;
  v10[24] = 68;
  v13 = *(v10 + 25) & 0xF000 | v12 & 0x3F;
  *(v10 + 2) = off_1002D2570;
  *(v10 + 4) = v11;
  result = *a3;
  *(v10 + 25) = v13 | 0x540;
  *(v10 + 40) = result;
  return result;
}

char *sub_10000F204(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, _WORD *a5)
{
  v10 = *(a1 + 4904);
  v11 = v10[1];
  if ((v11 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v10 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v10)
    {
      std::terminate();
    }

    v11 = 0;
    *v10 = *(a1 + 4904);
    v10[1] = 0;
    *(a1 + 4904) = v10;
  }

  v10[1] = v11 + 48;
  v12 = v10 + v11;
  result = v12 + 16;
  v14 = *a2;
  v15 = *a3;
  v16 = *a4;
  v17 = *a5;
  v12[24] = 57;
  *(v12 + 25) = *(v12 + 25) & 0xF000 | v17 & 0x3F | 0x540;
  *(v12 + 2) = off_1002D25D0;
  *(v12 + 4) = v14;
  *(v12 + 5) = v15;
  *(v12 + 6) = v16;
  return result;
}

__n128 sub_10000F2EC(uint64_t a1, __n128 *a2, uint64_t *a3, uint64_t *a4, _WORD *a5)
{
  v10 = *(a1 + 4904);
  v11 = v10[1];
  if ((v11 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v10 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v10)
    {
      std::terminate();
    }

    v11 = 0;
    *v10 = *(a1 + 4904);
    v10[1] = 0;
    *(a1 + 4904) = v10;
  }

  v10[1] = v11 + 48;
  v12 = v10 + v11;
  v13 = *a3;
  v14 = *a4;
  v15 = *a5;
  v12[24] = 61;
  v16 = *(v12 + 25) & 0xF000 | v15 & 0x3F;
  *(v12 + 2) = off_1002D2630;
  result = *a2;
  *(v12 + 25) = v16 | 0x540;
  *(v12 + 2) = result;
  *(v12 + 6) = v13;
  *(v12 + 7) = v14;
  return result;
}

void sub_10000F3D4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 != v2 && *v1 == 76)
  {
    v3 = v1 + 1;
    *a1 = v1 + 1;
    v4 = v2 - (v1 + 1);
    if (v2 == v1 + 1)
    {
LABEL_10:
      v7 = a1;
      v113 = sub_1000074E8();
      if (v113)
      {
        v9 = *v7;
        v8 = v7[1];
        if (*v7 != v8)
        {
          v10 = *v7;
          if (*v9 == 110)
          {
            v10 = v9 + 1;
            *v7 = v9 + 1;
          }

          if (v8 != v10)
          {
            v11 = *v10;
            if ((v11 & 0x8000000000000000) == 0 && (_DefaultRuneLocale.__runetype[v11] & 0x400) != 0)
            {
              while (1)
              {
                v12 = *v10;
                if (v12 < 0 || (_DefaultRuneLocale.__runetype[v12] & 0x400) == 0)
                {
                  break;
                }

                *v7 = ++v10;
                if (v10 == v8)
                {
                  v13 = v8;
                  goto LABEL_238;
                }
              }

              v13 = v10;
LABEL_238:
              v112.n128_u64[0] = v9;
              v112.n128_u64[1] = v13 - v9;
              if (v13 != v9 && v10 != v8 && *v10 == 69)
              {
                *v7 = v10 + 1;
                sub_100014B50(v7, &v113, &v112);
              }
            }
          }
        }
      }
    }

    else
    {
      switch(*v3)
      {
        case 'A':
          v5 = a1;
          v112.n128_u64[0] = sub_1000074E8();
          if (v112.n128_u64[0])
          {
            v6 = *v5;
            if (*v5 != v5[1] && *v6 == 69)
            {
              *v5 = v6 + 1;
              sub_100014264(v5, &v112);
            }
          }

          return;
        case 'D':
          if (v4 >= 2 && *v3 == 28228)
          {
            v34 = v1 + 3;
            *a1 = v1 + 3;
            if (v1 + 3 != v2 && *v34 == 48)
            {
              v34 = v1 + 4;
              *a1 = v1 + 4;
            }

            if (v34 != v2 && *v34 == 69)
            {
              *a1 = v34 + 1;

              sub_10000B8CC(a1, "nullptr");
            }
          }

          return;
        case 'T':
          return;
        case 'U':
          if (v4 >= 2 && v1[2] == 108)
          {
            v37 = a1;
            v112.n128_u64[0] = sub_10001431C(a1, 0);
            if (v112.n128_u64[0])
            {
              v38 = *v37;
              if (*v37 != v37[1] && *v38 == 69)
              {
                *v37 = v38 + 1;
                sub_100014A98(v37, &v112);
              }
            }
          }

          return;
        case '_':
          if (v4 >= 2 && *v3 == 23135)
          {
            *a1 = v1 + 3;
            v35 = a1;
            if (sub_10000697C())
            {
              v36 = *v35;
              if (*v35 != *(v35 + 8) && *v36 == 69)
              {
                *v35 = v36 + 1;
              }
            }
          }

          return;
        case 'a':
          *a1 = v1 + 2;
          v14 = "signed char";
          v15 = 11;

          goto LABEL_23;
        case 'b':
          if (v4 >= 3 && (*v3 == 12386 ? (v39 = v1[3] == 69) : (v39 = 0), v39))
          {
            *a1 = v1 + 4;
            v112.n128_u32[0] = 0;
          }

          else
          {
            v40 = a1;
            if (!sub_100006900(a1, "b1E", 3uLL))
            {
              return;
            }

            v112.n128_u32[0] = 1;
            a1 = v40;
          }

          sub_1000141A8(a1, &v112);
          break;
        case 'c':
          *a1 = v1 + 2;
          v14 = "char";
          v15 = 4;

          goto LABEL_23;
        case 'd':
          v83 = v1 + 2;
          *a1 = v1 + 2;
          if ((v2 - (v1 + 2)) < 0x11)
          {
            return;
          }

          v84 = v1[2];
          v85 = v84 - 48;
          v86 = v84 - 97;
          if (v85 >= 0xA && v86 > 5)
          {
            return;
          }

          v88 = v1[3];
          v89 = v88 - 48;
          v90 = v88 - 97;
          if (v89 >= 0xA && v90 > 5)
          {
            return;
          }

          v92 = v1[4];
          if ((v92 - 48) >= 0xA && (v92 - 97) > 5)
          {
            return;
          }

          v93 = v1[5];
          if ((v93 - 48) >= 0xA && (v93 - 97) > 5)
          {
            return;
          }

          v94 = v1[6];
          if ((v94 - 48) >= 0xA && (v94 - 97) > 5)
          {
            return;
          }

          v95 = v1[7];
          if ((v95 - 48) >= 0xA && (v95 - 97) > 5)
          {
            return;
          }

          v111 = a1;
          v96 = v1[8];
          if ((v96 - 48) >= 0xA && (v96 - 97) > 5)
          {
            return;
          }

          v97 = v1[9];
          if ((v97 - 48) >= 0xA && (v97 - 97) > 5)
          {
            return;
          }

          v98 = v1[10];
          if ((v98 - 48) >= 0xA && (v98 - 97) > 5)
          {
            return;
          }

          v99 = v1[11];
          if ((v99 - 48) >= 0xA && (v99 - 97) > 5)
          {
            return;
          }

          v100 = v1[12];
          if ((v100 - 48) >= 0xA && (v100 - 97) > 5)
          {
            return;
          }

          v101 = v1[13];
          if ((v101 - 48) >= 0xA && (v101 - 97) > 5)
          {
            return;
          }

          v102 = v1[14];
          if ((v102 - 48) >= 0xA && (v102 - 97) > 5)
          {
            return;
          }

          v103 = v1[15];
          if ((v103 - 48) >= 0xA && (v103 - 97) > 5)
          {
            return;
          }

          v104 = v1[16];
          if ((v104 - 48) >= 0xA && (v104 - 97) > 5)
          {
            return;
          }

          v105 = v1[17];
          if ((v105 - 48) >= 0xA && (v105 - 97) > 5)
          {
            return;
          }

          *a1 = v1 + 18;
          if (v1 + 18 == v2 || v1[18] != 69)
          {
            return;
          }

          *a1 = v1 + 19;
          v106 = *(a1 + 4904);
          v107 = v106[1];
          if ((v107 - 4048) > 0xFFFFFFFFFFFFF00FLL)
          {
            goto LABEL_227;
          }

          v106 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
          if (!v106)
          {
            goto LABEL_245;
          }

          v107 = 0;
          *v106 = *(v111 + 4904);
          v106[1] = 0;
          *(v111 + 4904) = v106;
LABEL_227:
          v106[1] = v107 + 32;
          v108 = v106 + v107;
          v108[24] = 79;
          *(v108 + 25) = *(v108 + 25) & 0xF000 | 0x540;
          *(v108 + 2) = off_1002D2810;
          *(v108 + 4) = v83;
          *(v108 + 5) = 16;
          return;
        case 'e':
          v41 = v1 + 2;
          *a1 = v1 + 2;
          if ((v2 - (v1 + 2)) < 0x21)
          {
            return;
          }

          v42 = v1[2];
          v43 = v42 - 48;
          v44 = v42 - 97;
          if (v43 >= 0xA && v44 > 5)
          {
            return;
          }

          v46 = v1[3];
          v47 = v46 - 48;
          v48 = v46 - 97;
          if (v47 >= 0xA && v48 > 5)
          {
            return;
          }

          v50 = v1[4];
          if ((v50 - 48) >= 0xA && (v50 - 97) > 5)
          {
            return;
          }

          v51 = v1[5];
          if ((v51 - 48) >= 0xA && (v51 - 97) > 5)
          {
            return;
          }

          v52 = v1[6];
          if ((v52 - 48) >= 0xA && (v52 - 97) > 5)
          {
            return;
          }

          v53 = v1[7];
          if ((v53 - 48) >= 0xA && (v53 - 97) > 5)
          {
            return;
          }

          v110 = a1;
          v54 = v1[8];
          if ((v54 - 48) >= 0xA && (v54 - 97) > 5)
          {
            return;
          }

          v55 = v1[9];
          if ((v55 - 48) >= 0xA && (v55 - 97) > 5)
          {
            return;
          }

          v56 = v1[10];
          if ((v56 - 48) >= 0xA && (v56 - 97) > 5)
          {
            return;
          }

          v57 = v1[11];
          if ((v57 - 48) >= 0xA && (v57 - 97) > 5)
          {
            return;
          }

          v58 = v1[12];
          if ((v58 - 48) >= 0xA && (v58 - 97) > 5)
          {
            return;
          }

          v59 = v1[13];
          if ((v59 - 48) >= 0xA && (v59 - 97) > 5)
          {
            return;
          }

          v60 = v1[14];
          if ((v60 - 48) >= 0xA && (v60 - 97) > 5)
          {
            return;
          }

          v61 = v1[15];
          if ((v61 - 48) >= 0xA && (v61 - 97) > 5)
          {
            return;
          }

          v62 = v1[16];
          if ((v62 - 48) >= 0xA && (v62 - 97) > 5)
          {
            return;
          }

          v63 = v1[17];
          if ((v63 - 48) >= 0xA && (v63 - 97) > 5)
          {
            return;
          }

          v64 = v1[18];
          if ((v64 - 48) >= 0xA && (v64 - 97) > 5)
          {
            return;
          }

          v65 = v1[19];
          if ((v65 - 48) >= 0xA && (v65 - 97) > 5)
          {
            return;
          }

          v66 = v1[20];
          if ((v66 - 48) >= 0xA && (v66 - 97) > 5)
          {
            return;
          }

          v67 = v1[21];
          if ((v67 - 48) >= 0xA && (v67 - 97) > 5)
          {
            return;
          }

          v68 = v1[22];
          if ((v68 - 48) >= 0xA && (v68 - 97) > 5)
          {
            return;
          }

          v69 = v1[23];
          if ((v69 - 48) >= 0xA && (v69 - 97) > 5)
          {
            return;
          }

          v70 = v1[24];
          if ((v70 - 48) >= 0xA && (v70 - 97) > 5)
          {
            return;
          }

          v71 = v1[25];
          if ((v71 - 48) >= 0xA && (v71 - 97) > 5)
          {
            return;
          }

          v72 = v1[26];
          if ((v72 - 48) >= 0xA && (v72 - 97) > 5)
          {
            return;
          }

          v73 = v1[27];
          if ((v73 - 48) >= 0xA && (v73 - 97) > 5)
          {
            return;
          }

          v74 = v1[28];
          if ((v74 - 48) >= 0xA && (v74 - 97) > 5)
          {
            return;
          }

          v75 = v1[29];
          if ((v75 - 48) >= 0xA && (v75 - 97) > 5)
          {
            return;
          }

          v76 = v1[30];
          if ((v76 - 48) >= 0xA && (v76 - 97) > 5)
          {
            return;
          }

          v77 = v1[31];
          if ((v77 - 48) >= 0xA && (v77 - 97) > 5)
          {
            return;
          }

          v78 = v1[32];
          if ((v78 - 48) >= 0xA && (v78 - 97) > 5)
          {
            return;
          }

          v79 = v1[33];
          if ((v79 - 48) >= 0xA && (v79 - 97) > 5)
          {
            return;
          }

          *a1 = v1 + 34;
          if (v1 + 34 == v2 || v1[34] != 69)
          {
            return;
          }

          *a1 = v1 + 35;
          v80 = *(a1 + 4904);
          v81 = v80[1];
          if ((v81 - 4048) > 0xFFFFFFFFFFFFF00FLL)
          {
            goto LABEL_184;
          }

          v80 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
          if (!v80)
          {
            goto LABEL_245;
          }

          v81 = 0;
          *v80 = *(v110 + 4904);
          v80[1] = 0;
          *(v110 + 4904) = v80;
LABEL_184:
          v80[1] = v81 + 32;
          v82 = v80 + v81;
          v82[24] = 80;
          *(v82 + 25) = *(v82 + 25) & 0xF000 | 0x540;
          *(v82 + 2) = off_1002D2870;
          *(v82 + 4) = v41;
          *(v82 + 5) = 32;
          return;
        case 'f':
          v16 = v1 + 2;
          *a1 = v1 + 2;
          if ((v2 - (v1 + 2)) < 9)
          {
            return;
          }

          v17 = v1[2];
          v18 = v17 - 48;
          v19 = v17 - 97;
          if (v18 >= 0xA && v19 > 5)
          {
            return;
          }

          v21 = v1[3];
          v22 = v21 - 48;
          v23 = v21 - 97;
          if (v22 >= 0xA && v23 > 5)
          {
            return;
          }

          v25 = v1[4];
          if ((v25 - 48) >= 0xA && (v25 - 97) > 5)
          {
            return;
          }

          v26 = v1[5];
          if ((v26 - 48) >= 0xA && (v26 - 97) > 5)
          {
            return;
          }

          v27 = v1[6];
          if ((v27 - 48) >= 0xA && (v27 - 97) > 5)
          {
            return;
          }

          v28 = v1[7];
          if ((v28 - 48) >= 0xA && (v28 - 97) > 5)
          {
            return;
          }

          v109 = a1;
          v29 = v1[8];
          if ((v29 - 48) >= 0xA && (v29 - 97) > 5)
          {
            return;
          }

          v30 = v1[9];
          if ((v30 - 48) >= 0xA && (v30 - 97) > 5)
          {
            return;
          }

          *a1 = v1 + 10;
          if (v1 + 10 == v2 || v1[10] != 69)
          {
            return;
          }

          *a1 = v1 + 11;
          v31 = *(a1 + 4904);
          v32 = v31[1];
          if ((v32 - 4048) > 0xFFFFFFFFFFFFF00FLL)
          {
            goto LABEL_56;
          }

          v31 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
          if (!v31)
          {
LABEL_245:
            std::terminate();
          }

          v32 = 0;
          *v31 = *(v109 + 4904);
          v31[1] = 0;
          *(v109 + 4904) = v31;
LABEL_56:
          v31[1] = v32 + 32;
          v33 = v31 + v32;
          v33[24] = 78;
          *(v33 + 25) = *(v33 + 25) & 0xF000 | 0x540;
          *(v33 + 2) = off_1002D27B0;
          *(v33 + 4) = v16;
          *(v33 + 5) = 8;
          return;
        case 'h':
          *a1 = v1 + 2;
          v14 = "unsigned char";
          v15 = 13;

          goto LABEL_23;
        case 'i':
          *a1 = v1 + 2;
          v14 = "";
          v15 = 0;

          goto LABEL_23;
        case 'j':
          *a1 = v1 + 2;
          v14 = "u";
          v15 = 1;

          goto LABEL_23;
        case 'l':
          *a1 = v1 + 2;
          v14 = "l";
          v15 = 1;

          goto LABEL_23;
        case 'm':
          *a1 = v1 + 2;
          v14 = "ul";
          v15 = 2;

          goto LABEL_23;
        case 'n':
          *a1 = v1 + 2;
          v14 = "__int128";
          v15 = 8;

          goto LABEL_23;
        case 'o':
          *a1 = v1 + 2;
          v14 = "unsigned __int128";
          v15 = 17;

          goto LABEL_23;
        case 's':
          *a1 = v1 + 2;
          v14 = "short";
          v15 = 5;

          goto LABEL_23;
        case 't':
          *a1 = v1 + 2;
          v14 = "unsigned short";
          v15 = 14;

          goto LABEL_23;
        case 'w':
          *a1 = v1 + 2;
          v14 = "wchar_t";
          v15 = 7;

          goto LABEL_23;
        case 'x':
          *a1 = v1 + 2;
          v14 = "ll";
          v15 = 2;

          goto LABEL_23;
        case 'y':
          *a1 = v1 + 2;
          v14 = "ull";
          v15 = 3;

LABEL_23:
          sub_100013FF4(a1, v14, v15);
          return;
        default:
          goto LABEL_10;
      }
    }
  }
}

void sub_1000103E0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = &v1[-*a1];
  if (v3 >= 3)
  {
    if (*v2 == 28774 && *(v2 + 2) == 84)
    {
      *a1 = v2 + 3;
      v19 = a1[613];
      v20 = v19[1];
      if ((v20 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v22 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v22)
        {
          goto LABEL_75;
        }

        v19 = v22;
        v20 = 0;
        *v22 = a1[613];
        v22[1] = 0;
        a1[613] = v22;
      }

      v19[1] = v20 + 32;
      v23 = v19 + v20;
      v23[24] = 8;
      *(v23 + 25) = *(v23 + 25) & 0xF000 | 0x540;
      *(v23 + 2) = off_1002D1D60;
      *(v23 + 4) = "this";
      *(v23 + 5) = 4;
      return;
    }
  }

  else if (v3 != 2)
  {
    return;
  }

  if (*v2 == 28774)
  {
    v10 = (v2 + 2);
    *a1 = v2 + 2;
    if ((v2 + 2) != v1 && *v10 == 114)
    {
      v10 = (v2 + 3);
      *a1 = v2 + 3;
    }

    if (v10 != v1 && *v10 == 86)
    {
      *a1 = ++v10;
    }

    if (v10 != v1 && *v10 == 75)
    {
      *a1 = ++v10;
    }

    if (v1 == v10 || (v11 = *v10, v11 < 0) || (_DefaultRuneLocale.__runetype[v11] & 0x400) == 0)
    {
      v12 = 0;
      v13 = 0;
      if (v10 == v1)
      {
        return;
      }
    }

    else
    {
      v24 = v10;
      while (1)
      {
        v25 = *v24;
        if (v25 < 0 || (_DefaultRuneLocale.__runetype[v25] & 0x400) == 0)
        {
          break;
        }

        *a1 = ++v24;
        if (v24 == v1)
        {
          v26 = v1;
          goto LABEL_46;
        }
      }

      v26 = v24;
LABEL_46:
      v12 = v10;
      v13 = v26 - v10;
      v10 = v24;
      if (v24 == v1)
      {
        return;
      }
    }

    if (*v10 != 95)
    {
      return;
    }

    *a1 = (v10 + 1);
    v14 = a1[613];
    v15 = v14[1];
    if ((v15 - 4048) > 0xFFFFFFFFFFFFF00FLL)
    {
LABEL_35:
      v14[1] = v15 + 32;
      v18 = v14 + v15;
      v18[24] = 67;
      *(v18 + 25) = *(v18 + 25) & 0xF000 | 0x540;
      *(v18 + 2) = off_1002D2CF0;
      *(v18 + 4) = v12;
      *(v18 + 5) = v13;
      return;
    }

    v17 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (v17)
    {
      v14 = v17;
      v15 = 0;
      *v17 = a1[613];
      v17[1] = 0;
      a1[613] = v17;
      goto LABEL_35;
    }

LABEL_75:
    std::terminate();
  }

  if (*v2 == 19558)
  {
    v5 = (v2 + 2);
    *a1 = v2 + 2;
    if (v1 != (v2 + 2))
    {
      v6 = *v5;
      if ((v6 & 0x8000000000000000) == 0 && (_DefaultRuneLocale.__runetype[v6] & 0x400) != 0)
      {
        v7 = (v2 + 2);
        while (1)
        {
          v8 = *v7;
          if (v8 < 0 || (_DefaultRuneLocale.__runetype[v8] & 0x400) == 0)
          {
            break;
          }

          *a1 = ++v7;
          if (v7 == v1)
          {
            v9 = v1;
            goto LABEL_49;
          }
        }

        v9 = v7;
LABEL_49:
        if (v9 != v5 && v7 != v1 && *v7 == 112)
        {
          v27 = v7 + 1;
          *a1 = (v7 + 1);
          if (v7 + 1 != v1 && *v27 == 114)
          {
            v27 = v7 + 2;
            *a1 = (v7 + 2);
          }

          if (v27 != v1 && *v27 == 86)
          {
            *a1 = ++v27;
          }

          if (v27 != v1 && *v27 == 75)
          {
            *a1 = ++v27;
          }

          if (v1 == v27 || (v28 = *v27, v28 < 0) || (_DefaultRuneLocale.__runetype[v28] & 0x400) == 0)
          {
            v34 = 0uLL;
            if (v27 == v1)
            {
              return;
            }

            goto LABEL_65;
          }

          v29 = v27;
          while (1)
          {
            v30 = *v29;
            if (v30 < 0 || (_DefaultRuneLocale.__runetype[v30] & 0x400) == 0)
            {
              break;
            }

            *a1 = ++v29;
            if (v29 == v1)
            {
              v31 = v1;
              goto LABEL_73;
            }
          }

          v31 = v29;
LABEL_73:
          v32 = v27;
          v33 = v31 - v27;
          v27 = v29;
          v34.n128_u64[0] = v32;
          v34.n128_u64[1] = v33;
          if (v29 != v1)
          {
LABEL_65:
            if (*v27 == 95)
            {
              *a1 = (v27 + 1);
              sub_100017BB4(a1, &v34);
            }
          }
        }
      }
    }
  }
}

char *sub_10001086C(uint64_t a1)
{
  v1 = *a1;
  if (*(a1 + 8) - *a1 < 2uLL || *v1 != 100)
  {
    goto LABEL_13;
  }

  v2 = v1[1];
  if (v2 != 88)
  {
    if (v2 == 120)
    {
      *a1 = v1 + 2;
      result = sub_10000D7B4(a1);
      if (result)
      {
        v11 = result;
        result = sub_10001086C(a1);
        if (result)
        {
          v12 = result;
          v13 = *(a1 + 4904);
          v14 = v13[1];
          if ((v14 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
          {
            v13 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
            if (!v13)
            {
              goto LABEL_29;
            }

            v14 = 0;
            *v13 = *(a1 + 4904);
            v13[1] = 0;
            *(a1 + 4904) = v13;
          }

          v13[1] = v14 + 48;
          v15 = v13 + v14;
          result = v15 + 16;
          v15[24] = 81;
          *(v15 + 25) = *(v15 + 25) & 0xF000 | 0x540;
          *(v15 + 2) = off_1002D2E10;
          *(v15 + 4) = v11;
          *(v15 + 5) = v12;
          v15[48] = 1;
          return result;
        }
      }

      return result;
    }

    if (v2 == 105)
    {
      *a1 = v1 + 2;
      result = sub_10000B6E8(a1);
      if (result)
      {
        v5 = result;
        result = sub_10001086C(a1);
        if (result)
        {
          v6 = result;
          v7 = *(a1 + 4904);
          v8 = v7[1];
          if ((v8 - 4032) > 0xFFFFFFFFFFFFF00FLL)
          {
LABEL_11:
            v7[1] = v8 + 48;
            v9 = v7 + v8;
            result = v9 + 16;
            v9[24] = 81;
            *(v9 + 25) = *(v9 + 25) & 0xF000 | 0x540;
            *(v9 + 2) = off_1002D2E10;
            *(v9 + 4) = v5;
            *(v9 + 5) = v6;
            v9[48] = 0;
            return result;
          }

          v7 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
          if (v7)
          {
            v8 = 0;
            *v7 = *(a1 + 4904);
            v7[1] = 0;
            *(a1 + 4904) = v7;
            goto LABEL_11;
          }

LABEL_29:
          std::terminate();
        }
      }

      return result;
    }

LABEL_13:

    return sub_10000D7B4(a1);
  }

  *a1 = v1 + 2;
  result = sub_10000D7B4(a1);
  if (result)
  {
    v17 = result;
    result = sub_10000D7B4(a1);
    if (result)
    {
      v18 = result;
      result = sub_10001086C(a1);
      if (result)
      {
        v19 = result;
        v20 = *(a1 + 4904);
        v21 = v20[1];
        if ((v21 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
        {
          v20 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
          if (!v20)
          {
            goto LABEL_29;
          }

          v21 = 0;
          *v20 = *(a1 + 4904);
          v20[1] = 0;
          *(a1 + 4904) = v20;
        }

        v20[1] = v21 + 48;
        v22 = v20 + v21;
        result = v22 + 16;
        v22[24] = 82;
        *(v22 + 25) = *(v22 + 25) & 0xF000 | 0x540;
        *(v22 + 2) = off_1002D2E70;
        *(v22 + 4) = v17;
        *(v22 + 5) = v18;
        *(v22 + 6) = v19;
      }
    }
  }

  return result;
}

__n128 sub_100010B4C(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  v6[24] = 70;
  v7 = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = off_1002D2ED0;
  *(v6 + 4) = 0;
  result = *a2;
  *(v6 + 25) = v7;
  *(v6 + 40) = result;
  return result;
}

uint64_t sub_100010C08(char **a1)
{
  result = sub_1000074E8(a1);
  if (result)
  {
    v3 = result;
    result = sub_10000D7B4(a1);
    if (result)
    {
      v5 = *a1;
      v4 = a1[1];
      if (*a1 == v4)
      {
        return 0;
      }

      v6 = *a1;
      if (*v5 == 110)
      {
        v6 = v5 + 1;
        *a1 = v5 + 1;
      }

      if (v4 == v6 || (v7 = *v6, v7 < 0) || (_DefaultRuneLocale.__runetype[v7] & 0x400) == 0)
      {
        v8 = 0;
        v9 = 0;
        v10 = v6;
        if (v6 == v4)
        {
          return 0;
        }
      }

      else
      {
        while (1)
        {
          v11 = *v6;
          if (v11 < 0 || (_DefaultRuneLocale.__runetype[v11] & 0x400) == 0)
          {
            break;
          }

          *a1 = ++v6;
          if (v6 == v4)
          {
            v12 = v4;
            goto LABEL_17;
          }
        }

        v12 = v6;
LABEL_17:
        v8 = v5;
        v9 = v12 - v5;
        v10 = v6;
        if (v6 == v4)
        {
          return 0;
        }
      }

      if (*v10 != 69)
      {
        return 0;
      }

      *a1 = v10 + 1;
      v13 = a1[613];
      v14 = *(v13 + 1);
      if ((v14 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v15 = result;
        v16 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v16)
        {
          std::terminate();
        }

        v13 = v16;
        v14 = 0;
        *v16 = a1[613];
        *(v16 + 1) = 0;
        a1[613] = v16;
        result = v15;
      }

      *(v13 + 1) = v14 + 48;
      v17 = &v13[v14];
      v17[24] = 69;
      *(v17 + 25) = *(v17 + 25) & 0xF000 | 0x542;
      *(v17 + 2) = off_1002D2F30;
      *(v17 + 4) = v3;
      *(v17 + 5) = result;
      result = (v17 + 16);
      *(v17 + 6) = v8;
      *(v17 + 7) = v9;
    }
  }

  return result;
}

char *sub_100010DD8(uint64_t a1, uint64_t *a2, _WORD *a3)
{
  v6 = *(a1 + 4904);
  v7 = v6[1];
  if ((v7 - 4016) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v6 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v6)
    {
      std::terminate();
    }

    v7 = 0;
    *v6 = *(a1 + 4904);
    v6[1] = 0;
    *(a1 + 4904) = v6;
  }

  v6[1] = v7 + 64;
  v8 = v6 + v7;
  result = v8 + 16;
  v10 = *a2;
  v11 = *a3;
  v8[24] = 60;
  *(v8 + 25) = *(v8 + 25) & 0xF000 | v11 & 0x3F | 0x540;
  *(v8 + 2) = off_1002D2690;
  *(v8 + 4) = "noexcept ";
  *(v8 + 5) = 9;
  *(v8 + 7) = 0;
  *(v8 + 8) = 0;
  *(v8 + 6) = v10;
  return result;
}

uint64_t sub_100010EB8(void *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (&v2[-*a1] < 2)
  {
    return 0;
  }

  if (*v1 == 20850)
  {
    v5 = v1 + 1;
    *a1 = v5;
    v6 = (a1[3] - a1[2]) >> 3;
    v7 = a1 + 5;
    while (v5 == v2 || *v5 != 95)
    {
      result = sub_1000074E8(a1);
      if (!result)
      {
        return result;
      }

      v9 = a1[3];
      if (v9 == a1[4])
      {
        v10 = result;
        v11 = a1[2];
        v12 = v9 - v11;
        if (v11 == v7)
        {
          v8 = malloc_type_malloc(2 * (v9 - v11), 0x2004093837F09uLL);
          if (!v8)
          {
LABEL_68:
            abort();
          }

          v13 = a1[2];
          v14 = a1[3];
          if (v14 != v13)
          {
            v15 = v8;
            memmove(v8, v13, v14 - v13);
            v8 = v15;
          }

          a1[2] = v8;
        }

        else
        {
          v8 = malloc_type_realloc(v11, 2 * (v9 - v11), 0x2004093837F09uLL);
          a1[2] = v8;
          if (!v8)
          {
            goto LABEL_68;
          }
        }

        v9 = &v8[v12];
        a1[4] = &v8[8 * (v12 >> 2)];
        result = v10;
      }

      *v9 = result;
      a1[3] = v9 + 1;
      v5 = *a1;
      v2 = a1[1];
    }

    *a1 = v5 + 1;
    v17 = sub_10000A1F8(a1, v6);
    v18 = *a1;
    if (*a1 == a1[1])
    {
      return 0;
    }
  }

  else
  {
    if (*v1 != 29042)
    {
      return 0;
    }

    v16 = 0;
    v17 = 0;
    v18 = v1 + 1;
    *a1 = v18;
    if (v18 == v2)
    {
      return 0;
    }
  }

  v51 = v17;
  v52 = v16;
  v53 = (a1[3] - a1[2]) >> 3;
  while (1)
  {
    v19 = *v18;
    if (v19 == 81)
    {
      *a1 = v18 + 1;
      result = sub_10000D7B4(a1);
      if (!result)
      {
        return result;
      }

      v31 = result;
      v32 = a1[613];
      v33 = v32[1];
      if ((v33 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v32 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v32)
        {
          goto LABEL_69;
        }

        v33 = 0;
        *v32 = a1[613];
        v32[1] = 0;
        a1[613] = v32;
      }

      v32[1] = v33 + 32;
      v34 = v32 + v33;
      v29 = v34 + 16;
      v34[24] = 86;
      *(v34 + 25) = *(v34 + 25) & 0xF000 | 0x540;
      *(v34 + 2) = off_1002D3050;
      *(v34 + 4) = v31;
      v30 = a1[3];
      if (v30 != a1[4])
      {
        goto LABEL_60;
      }

      goto LABEL_52;
    }

    if (v19 == 84)
    {
      *a1 = v18 + 1;
      result = sub_1000074E8(a1);
      if (!result)
      {
        return result;
      }

      v25 = result;
      v26 = a1[613];
      v27 = v26[1];
      if ((v27 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v26 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v26)
        {
          goto LABEL_69;
        }

        v27 = 0;
        *v26 = a1[613];
        v26[1] = 0;
        a1[613] = v26;
      }

      v26[1] = v27 + 32;
      v28 = v26 + v27;
      v29 = v28 + 16;
      v28[24] = 85;
      *(v28 + 25) = *(v28 + 25) & 0xF000 | 0x540;
      *(v28 + 2) = off_1002D2FF0;
      *(v28 + 4) = v25;
      v30 = a1[3];
      if (v30 != a1[4])
      {
        goto LABEL_60;
      }

      goto LABEL_52;
    }

    if (v19 != 88)
    {
      return 0;
    }

    *a1 = v18 + 1;
    result = sub_10000D7B4(a1);
    if (!result)
    {
      return result;
    }

    v20 = result;
    v21 = *a1;
    v22 = a1[1];
    if (*a1 == v22 || *v21 != 78)
    {
      v23 = 0;
      if (v21 == v22)
      {
LABEL_30:
        v24 = 0;
        goto LABEL_46;
      }
    }

    else
    {
      *a1 = ++v21;
      v23 = 1;
      if (v21 == v22)
      {
        goto LABEL_30;
      }
    }

    if (*v21 == 82)
    {
      *a1 = v21 + 1;
      result = sub_1000094F0(a1, 0);
      v24 = result;
      if (!result)
      {
        return result;
      }

LABEL_46:
      v35 = a1[613];
      v36 = v35[1];
      if ((v36 - 4032) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    v24 = 0;
    v35 = a1[613];
    v36 = v35[1];
    if ((v36 - 4032) > 0xFFFFFFFFFFFFF00FLL)
    {
      goto LABEL_51;
    }

LABEL_49:
    v35 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v35)
    {
      goto LABEL_69;
    }

    v36 = 0;
    *v35 = a1[613];
    v35[1] = 0;
    a1[613] = v35;
LABEL_51:
    v35[1] = v36 + 48;
    v37 = v35 + v36;
    v29 = v37 + 16;
    v37[24] = 84;
    *(v37 + 25) = *(v37 + 25) & 0xF000 | 0x540;
    *(v37 + 2) = off_1002D2F90;
    *(v37 + 4) = v20;
    v37[40] = v23;
    *(v37 + 6) = v24;
    v30 = a1[3];
    if (v30 != a1[4])
    {
      goto LABEL_60;
    }

LABEL_52:
    v38 = a1[2];
    v39 = v30 - v38;
    if (v38 == (a1 + 5))
    {
      v40 = malloc_type_malloc(2 * (v30 - v38), 0x2004093837F09uLL);
      if (!v40)
      {
        goto LABEL_68;
      }

      v41 = a1[2];
      v42 = a1[3];
      if (v42 != v41)
      {
        v43 = v40;
        memmove(v40, v41, v42 - v41);
        v40 = v43;
      }

      a1[2] = v40;
    }

    else
    {
      v40 = malloc_type_realloc(v38, 2 * (v30 - v38), 0x2004093837F09uLL);
      a1[2] = v40;
      if (!v40)
      {
        goto LABEL_68;
      }
    }

    v30 = &v40[v39];
    a1[4] = &v40[8 * (v39 >> 2)];
LABEL_60:
    *v30 = v29;
    a1[3] = v30 + 8;
    v18 = *a1;
    v44 = a1[1];
    if (*a1 == v44)
    {
      return 0;
    }

    if (*v18 == 69)
    {
      break;
    }

    result = 0;
    if (v18 == v44)
    {
      return result;
    }
  }

  *a1 = v18 + 1;
  v45 = sub_10000A1F8(a1, v53);
  v47 = v46;
  v48 = a1[613];
  v49 = v48[1];
  if ((v49 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v48 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v48)
    {
LABEL_69:
      std::terminate();
    }

    v49 = 0;
    *v48 = a1[613];
    v48[1] = 0;
    a1[613] = v48;
  }

  v48[1] = v49 + 48;
  v50 = v48 + v49;
  result = (v50 + 16);
  v50[24] = 83;
  *(v50 + 25) = *(v50 + 25) & 0xF000 | 0x540;
  *(v50 + 2) = off_1002D30B0;
  *(v50 + 4) = v51;
  *(v50 + 5) = v52;
  *(v50 + 6) = v45;
  *(v50 + 7) = v47;
  return result;
}

uint64_t sub_100011450(char **a1)
{
  result = sub_1000074E8(a1);
  if (!result)
  {
    return result;
  }

  v40 = result;
  result = sub_10000D7B4(a1);
  if (!result)
  {
    return result;
  }

  v4 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    v7 = 0;
    v8 = 0;
    v10 = a1[2];
    v9 = a1[3];
    goto LABEL_41;
  }

  v5 = *a1;
  if (*v4 == 110)
  {
    v5 = v4 + 1;
    *a1 = v4 + 1;
  }

  if (v3 != v5)
  {
    v6 = *v5;
    if ((v6 & 0x8000000000000000) == 0 && (_DefaultRuneLocale.__runetype[v6] & 0x400) != 0)
    {
      while (1)
      {
        v27 = *v5;
        if (v27 < 0 || (_DefaultRuneLocale.__runetype[v27] & 0x400) == 0)
        {
          break;
        }

        *a1 = ++v5;
        if (v5 == v3)
        {
          v28 = v3;
          goto LABEL_56;
        }
      }

      v28 = v5;
LABEL_56:
      v7 = v4;
      v8 = v28 - v4;
      v4 = v5;
      v10 = a1[2];
      v9 = a1[3];
      if (v5 != v3)
      {
        goto LABEL_10;
      }

LABEL_41:
      if (v4 != v3)
      {
        goto LABEL_44;
      }

      goto LABEL_47;
    }
  }

  v7 = 0;
  v8 = 0;
  v4 = v5;
  v10 = a1[2];
  v9 = a1[3];
  if (v5 == v3)
  {
    goto LABEL_41;
  }

LABEL_10:
  v37 = v10;
  v38 = v9;
  v39 = result;
  while (*v4 == 95)
  {
    v11 = v4 + 1;
    *a1 = v4 + 1;
    if (v3 == v4 + 1 || (v12 = *v11, v12 < 0) || (_DefaultRuneLocale.__runetype[v12] & 0x400) == 0)
    {
      v11 = 0;
      v13 = 0;
      v14 = a1[613];
      v15 = *(v14 + 1);
      if ((v15 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v22 = v11;
      while (1)
      {
        v23 = *v22;
        if (v23 < 0 || (_DefaultRuneLocale.__runetype[v23] & 0x400) == 0)
        {
          break;
        }

        *a1 = ++v22;
        if (v22 == v3)
        {
          v22 = v3;
          break;
        }
      }

      v13 = v22 - v11;
      v14 = a1[613];
      v15 = *(v14 + 1);
      if ((v15 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
      {
LABEL_17:
        v14 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v14)
        {
          goto LABEL_58;
        }

        v15 = 0;
        *v14 = a1[613];
        *(v14 + 1) = 0;
        a1[613] = v14;
      }
    }

    *(v14 + 1) = v15 + 32;
    v16 = &v14[v15];
    v17 = v16 + 16;
    v16[24] = 8;
    *(v16 + 25) = *(v16 + 25) & 0xF000 | 0x540;
    *(v16 + 2) = off_1002D1D60;
    *(v16 + 4) = v11;
    *(v16 + 5) = v13;
    v18 = a1[3];
    if (v18 == a1[4])
    {
      v19 = a1[2];
      v20 = v18 - v19;
      if (v19 == a1 + 5)
      {
        v21 = malloc_type_malloc(2 * (v18 - v19), 0x2004093837F09uLL);
        if (!v21)
        {
LABEL_59:
          abort();
        }

        v24 = a1[2];
        v25 = a1[3];
        if (v25 != v24)
        {
          v26 = v21;
          memmove(v21, v24, v25 - v24);
          v21 = v26;
        }

        a1[2] = v21;
      }

      else
      {
        v21 = malloc_type_realloc(v19, 2 * (v18 - v19), 0x2004093837F09uLL);
        a1[2] = v21;
        if (!v21)
        {
          goto LABEL_59;
        }
      }

      a1[4] = &v21[8 * (v20 >> 2)];
      *&v21[v20] = v17;
      a1[3] = &v21[v20 + 8];
      v4 = *a1;
      v3 = a1[1];
      if (*a1 == v3)
      {
        return 0;
      }
    }

    else
    {
      *v18 = v17;
      a1[3] = v18 + 8;
      v4 = *a1;
      v3 = a1[1];
      if (*a1 == v3)
      {
        return 0;
      }
    }
  }

  result = v39;
  v9 = v38;
  v10 = v37;
  if (v4 == v3)
  {
LABEL_47:
    v29 = 0;
    if (v4 == v3)
    {
      return 0;
    }

    goto LABEL_48;
  }

LABEL_44:
  if (*v4 != 112)
  {
    goto LABEL_47;
  }

  *a1 = ++v4;
  v29 = 1;
  if (v4 == v3)
  {
    return 0;
  }

LABEL_48:
  if (*v4 != 69)
  {
    return 0;
  }

  v30 = result;
  *a1 = v4 + 1;
  v31 = sub_10000A1F8(a1, (v9 - v10) >> 3);
  v33 = v32;
  v34 = a1[613];
  v35 = *(v34 + 1);
  if ((v35 - 4000) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v34 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v34)
    {
LABEL_58:
      std::terminate();
    }

    v35 = 0;
    *v34 = a1[613];
    *(v34 + 1) = 0;
    a1[613] = v34;
  }

  *(v34 + 1) = v35 + 80;
  v36 = &v34[v35];
  result = (v36 + 16);
  v36[24] = 59;
  *(v36 + 25) = *(v36 + 25) & 0xF000 | 0x540;
  *(v36 + 2) = off_1002D3110;
  *(v36 + 4) = v40;
  *(v36 + 5) = v30;
  *(v36 + 6) = v7;
  *(v36 + 7) = v8;
  *(v36 + 8) = v31;
  *(v36 + 9) = v33;
  v36[80] = v29;
  return result;
}

char *sub_100011874(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 32;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 42;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = off_1002D2DB0;
  *(v6 + 4) = v8;
  return result;
}

char *sub_10001192C(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 32;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 62;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = off_1002D3170;
  *(v6 + 4) = v8;
  return result;
}

char *sub_1000119E4(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4016) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 64;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 60;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = off_1002D2690;
  *(v6 + 4) = "sizeof... ";
  *(v6 + 5) = 10;
  *(v6 + 7) = 0;
  *(v6 + 8) = 0;
  *(v6 + 6) = v8;
  return result;
}

__n128 sub_100011AB0(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 32;
  v6 = v4 + v5;
  v6[24] = 0;
  v7 = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = off_1002D31D0;
  result = *a2;
  *(v6 + 25) = v7;
  *(v6 + 2) = result;
  return result;
}

__n128 sub_100011B64(uint64_t a1, uint64_t *a2, __n128 *a3)
{
  v6 = *(a1 + 4904);
  v7 = v6[1];
  if ((v7 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v6 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v6)
    {
      std::terminate();
    }

    v7 = 0;
    *v6 = *(a1 + 4904);
    v6[1] = 0;
    *(a1 + 4904) = v6;
  }

  v6[1] = v7 + 48;
  v8 = v6 + v7;
  v9 = *a2;
  v8[24] = 70;
  v10 = *(v8 + 25) & 0xF000 | 0x540;
  *(v8 + 2) = off_1002D2ED0;
  *(v8 + 4) = v9;
  result = *a3;
  *(v8 + 25) = v10;
  *(v8 + 40) = result;
  return result;
}

char *sub_100011C30(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 32;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 72;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = off_1002D3230;
  *(v6 + 4) = v8;
  return result;
}

void sub_100011CE8(uint64_t a1, size_t a2)
{
  v2 = a2;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = &v5[-*a1];
  if (v6 >= 3)
  {
    if (*v4 == 29299 && v4[2] == 78)
    {
      *a1 = v4 + 3;
      v20 = sub_10001A310(a1, a2);
      if (v20)
      {
        v22 = v20;
        if (*(a1 + 8) == *a1 || **a1 != 73)
        {
LABEL_34:
          while (1)
          {
            v30 = *a1;
            if (*a1 != *(a1 + 8) && *v30 == 69)
            {
              break;
            }

            sub_10001A458(a1);
            if (!v31)
            {
              return;
            }

            v32 = v31;
            v33 = *(a1 + 4904);
            v34 = v33[1];
            if ((v34 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
            {
              v33 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
              if (!v33)
              {
                goto LABEL_78;
              }

              v34 = 0;
              *v33 = *(a1 + 4904);
              v33[1] = 0;
              *(a1 + 4904) = v33;
            }

            v33[1] = v34 + 32;
            v29 = v33 + v34;
            v29[24] = 23;
            *(v29 + 25) = *(v29 + 25) & 0xF000 | 0x540;
            *(v29 + 2) = off_1002D3290;
            *(v29 + 4) = v22;
            *(v29 + 5) = v32;
            v22 = v29 + 16;
          }

          *a1 = v30 + 1;
          sub_10001A554(a1, v21);
          if (v43)
          {
            v44 = v43;
            v45 = *(a1 + 4904);
            v46 = v45[1];
            if ((v46 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
            {
              v45 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
              if (!v45)
              {
                goto LABEL_78;
              }

              v46 = 0;
              *v45 = *(a1 + 4904);
              v45[1] = 0;
              *(a1 + 4904) = v45;
            }

            v45[1] = v46 + 32;
            v47 = v45 + v46;
            v47[24] = 23;
            *(v47 + 25) = *(v47 + 25) & 0xF000 | 0x540;
            *(v47 + 2) = off_1002D3290;
            *(v47 + 4) = v22;
            *(v47 + 5) = v44;
            return;
          }
        }

        else
        {
          sub_10000BE9C(a1, 0);
          if (v23)
          {
            v24 = *(a1 + 4904);
            v25 = v24[1];
            if ((v25 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
            {
              v26 = v23;
              v27 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
              if (!v27)
              {
                goto LABEL_78;
              }

              v24 = v27;
              v25 = 0;
              *v27 = *(a1 + 4904);
              v27[1] = 0;
              *(a1 + 4904) = v27;
              v23 = v26;
            }

            v24[1] = v25 + 32;
            v28 = v24 + v25;
            v28[24] = 45;
            *(v28 + 25) = *(v28 + 25) & 0xF000 | 0x540;
            *(v28 + 2) = off_1002D3890;
            *(v28 + 4) = v22;
            *(v28 + 5) = v23;
            v22 = v28 + 16;
            goto LABEL_34;
          }
        }
      }

      return;
    }
  }

  else if (v6 != 2)
  {
    goto LABEL_9;
  }

  if (*v4 != 29299)
  {
LABEL_9:
    sub_10001A554(a1, a2);
    if (v8 && v2)
    {
      v9 = *(a1 + 4904);
      v10 = v9[1];
      if ((v10 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
LABEL_14:
        v9[1] = v10 + 32;
        v13 = v9 + v10;
        v13[24] = 46;
        *(v13 + 25) = *(v13 + 25) & 0xF000 | 0x540;
        *(v13 + 2) = off_1002D3410;
        *(v13 + 4) = v8;
        return;
      }

      v11 = v8;
      v12 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (v12)
      {
        v9 = v12;
        v10 = 0;
        *v12 = *(a1 + 4904);
        v12[1] = 0;
        *(a1 + 4904) = v12;
        v8 = v11;
        goto LABEL_14;
      }

LABEL_78:
      std::terminate();
    }

    return;
  }

  v14 = (v4 + 2);
  *a1 = v14;
  if (v5 == v14)
  {
    if ((_DefaultRuneLocale.__runetype[0] & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

  v15 = *v14;
  if ((v15 & 0x8000000000000000) == 0 && (_DefaultRuneLocale.__runetype[v15] & 0x400) != 0)
  {
LABEL_41:
    sub_10001A458(a1);
    if (!v35)
    {
      return;
    }

    v36 = v35;
    if (v2)
    {
      v18 = 0;
      while (1)
      {
        v38 = *(a1 + 4904);
        v39 = v38[1];
        if (v18)
        {
          if ((v39 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
          {
            v38 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
            if (!v38)
            {
              goto LABEL_78;
            }

            v39 = 0;
            *v38 = *(a1 + 4904);
            v38[1] = 0;
            *(a1 + 4904) = v38;
          }

          v38[1] = v39 + 32;
          v40 = v38 + v39;
          v40[24] = 23;
          *(v40 + 25) = *(v40 + 25) & 0xF000 | 0x540;
          *(v40 + 2) = off_1002D3290;
          *(v40 + 4) = v18;
          v18 = v40 + 16;
          *(v40 + 5) = v36;
          v41 = *a1;
          if (*a1 == *(a1 + 8))
          {
            goto LABEL_44;
          }
        }

        else
        {
          if ((v39 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
          {
            v38 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
            if (!v38)
            {
              goto LABEL_78;
            }

            v39 = 0;
            *v38 = *(a1 + 4904);
            v38[1] = 0;
            *(a1 + 4904) = v38;
          }

          v38[1] = v39 + 32;
          v42 = v38 + v39;
          v18 = v42 + 16;
          v42[24] = 46;
          *(v42 + 25) = *(v42 + 25) & 0xF000 | 0x540;
          *(v42 + 2) = off_1002D3410;
          *(v42 + 4) = v36;
          v41 = *a1;
          if (*a1 == *(a1 + 8))
          {
            goto LABEL_44;
          }
        }

        if (*v41 == 69)
        {
          goto LABEL_72;
        }

LABEL_44:
        sub_10001A458(a1);
        v36 = v37;
        if (!v37)
        {
          return;
        }
      }
    }

    v18 = 0;
    while (1)
    {
      if (v18)
      {
        v49 = *(a1 + 4904);
        v50 = v49[1];
        if ((v50 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
        {
          v49 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
          if (!v49)
          {
            goto LABEL_78;
          }

          v50 = 0;
          *v49 = *(a1 + 4904);
          v49[1] = 0;
          *(a1 + 4904) = v49;
        }

        v49[1] = v50 + 32;
        v51 = v49 + v50;
        v51[24] = 23;
        *(v51 + 25) = *(v51 + 25) & 0xF000 | 0x540;
        *(v51 + 2) = off_1002D3290;
        *(v51 + 4) = v18;
        *(v51 + 5) = v36;
        v18 = v51 + 16;
        v41 = *a1;
        if (*a1 == *(a1 + 8))
        {
          goto LABEL_63;
        }
      }

      else
      {
        v18 = v36;
        v41 = *a1;
        if (*a1 == *(a1 + 8))
        {
          goto LABEL_63;
        }
      }

      if (*v41 == 69)
      {
LABEL_72:
        *a1 = v41 + 1;
        goto LABEL_73;
      }

LABEL_63:
      sub_10001A458(a1);
      v36 = v48;
      if (!v48)
      {
        return;
      }
    }
  }

LABEL_19:
  v16 = sub_10001A310(a1, a2);
  v58 = v16;
  if (v16)
  {
    v18 = v16;
    if (*(a1 + 8) == *a1 || **a1 != 73)
    {
LABEL_73:
      sub_10001A554(a1, v17);
      if (v52)
      {
        v53 = v52;
        v54 = *(a1 + 4904);
        v55 = v54[1];
        if ((v55 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
        {
          v54 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
          if (!v54)
          {
            goto LABEL_78;
          }

          v55 = 0;
          *v54 = *(a1 + 4904);
          v54[1] = 0;
          *(a1 + 4904) = v54;
        }

        v54[1] = v55 + 32;
        v56 = v54 + v55;
        v56[24] = 23;
        *(v56 + 25) = *(v56 + 25) & 0xF000 | 0x540;
        *(v56 + 2) = off_1002D3290;
        *(v56 + 4) = v18;
        *(v56 + 5) = v53;
      }
    }

    else
    {
      sub_10000BE9C(a1, 0);
      v57 = v19;
      if (v19)
      {
        v18 = sub_10000C484(a1, &v58, &v57);
        goto LABEL_73;
      }
    }
  }
}

__n128 sub_1000123E8(uint64_t a1, uint64_t *a2, __n128 *a3, uint64_t *a4, _WORD *a5)
{
  v10 = *(a1 + 4904);
  v11 = v10[1];
  if ((v11 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v10 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v10)
    {
      std::terminate();
    }

    v11 = 0;
    *v10 = *(a1 + 4904);
    v10[1] = 0;
    *(a1 + 4904) = v10;
  }

  v10[1] = v11 + 48;
  v12 = v10 + v11;
  v13 = *a2;
  v14 = *a4;
  v15 = *a5;
  v12[24] = 54;
  v16 = *(v12 + 25) & 0xF000 | v15 & 0x3F;
  *(v12 + 2) = off_1002D2270;
  *(v12 + 4) = v13;
  result = *a3;
  *(v12 + 25) = v16 | 0x540;
  *(v12 + 40) = result;
  *(v12 + 7) = v14;
  return result;
}

char *sub_1000124D4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 32))
  {
    goto LABEL_2;
  }

  v35 = *(a1 + 24);
  v36 = *(a1 + 32);
  if (v36 != 2)
  {
    if (v36 == 1 && *v35 == 62)
    {
      goto LABEL_44;
    }

LABEL_2:
    v4 = 0;
    goto LABEL_3;
  }

  if (*v35 != 15934)
  {
    goto LABEL_2;
  }

LABEL_44:
  *(a2 + 32) = 1;
  v37 = *a2;
  v38 = *(a2 + 8);
  v39 = v38 + 1;
  v40 = *(a2 + 16);
  if (v38 + 1 > v40)
  {
    v41 = v38 + 993;
    if (2 * v40 <= v41)
    {
      v42 = v41;
    }

    else
    {
      v42 = 2 * v40;
    }

    *(a2 + 16) = v42;
    v37 = malloc_type_realloc(v37, v42, 0x100004077774924uLL);
    *a2 = v37;
    if (!v37)
    {
      goto LABEL_51;
    }

    v38 = *(a2 + 8);
    v39 = v38 + 1;
  }

  *(a2 + 8) = v39;
  v37[v38] = 40;
  v4 = 1;
LABEL_3:
  v5 = *(a1 + 9);
  v6 = v5 << 10;
  v7 = (v5 << 10);
  v8 = v5 << 26 >> 26;
  if (v7 == 17408)
  {
    v9 = 15;
  }

  else
  {
    v9 = v8;
  }

  sub_100006714(*(a1 + 16), a2, v9, v7 != 17408);
  if (*(a1 + 32) == 1)
  {
    v10 = *(a1 + 24);
    if (*v10 == 44)
    {
      v11 = 1;
      v12 = *a2;
      v13 = *(a2 + 8);
      v14 = v13 + 1;
      v15 = *(a2 + 16);
      if (v13 + 1 <= v15)
      {
        goto LABEL_23;
      }

      goto LABEL_18;
    }
  }

  v16 = *a2;
  v17 = *(a2 + 8);
  v18 = *(a2 + 16);
  if (v17 + 1 > v18)
  {
    v19 = v17 + 993;
    v20 = 2 * v18;
    if (v20 <= v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v20;
    }

    *(a2 + 16) = v21;
    v16 = malloc_type_realloc(v16, v21, 0x100004077774924uLL);
    *a2 = v16;
    if (!v16)
    {
      goto LABEL_51;
    }

    v17 = *(a2 + 8);
  }

  v16[v17] = 32;
  v22 = *(a2 + 8) + 1;
  *(a2 + 8) = v22;
  v11 = *(a1 + 32);
  if (v11)
  {
    v10 = *(a1 + 24);
    v12 = *a2;
    v13 = *(a2 + 8);
    v14 = v13 + v11;
    v15 = *(a2 + 16);
    if (v13 + v11 <= v15)
    {
LABEL_23:
      memcpy(&v12[v13], v10, v11);
      v22 = *(a2 + 8) + v11;
      *(a2 + 8) = v22;
      goto LABEL_24;
    }

LABEL_18:
    if (2 * v15 <= v14 + 992)
    {
      v23 = v14 + 992;
    }

    else
    {
      v23 = 2 * v15;
    }

    *(a2 + 16) = v23;
    v12 = malloc_type_realloc(v12, v23, 0x100004077774924uLL);
    *a2 = v12;
    if (!v12)
    {
      goto LABEL_51;
    }

    v13 = *(a2 + 8);
    goto LABEL_23;
  }

LABEL_24:
  v24 = *(a2 + 16);
  v25 = *a2;
  if (v22 + 1 > v24)
  {
    v26 = v22 + 993;
    v27 = 2 * v24;
    if (v27 <= v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = v27;
    }

    *(a2 + 16) = v28;
    v25 = malloc_type_realloc(v25, v28, 0x100004077774924uLL);
    *a2 = v25;
    if (!v25)
    {
      goto LABEL_51;
    }

    v22 = *(a2 + 8);
  }

  v25[v22] = 32;
  ++*(a2 + 8);
  result = sub_100006714(*(a1 + 40), a2, *(a1 + 9) << 26 >> 26, v6 == 17408);
  if (!v4)
  {
    return result;
  }

  --*(a2 + 32);
  result = *a2;
  v30 = *(a2 + 8);
  v31 = v30 + 1;
  v32 = *(a2 + 16);
  if (v30 + 1 > v32)
  {
    v33 = v30 + 993;
    if (2 * v32 <= v33)
    {
      v34 = v33;
    }

    else
    {
      v34 = 2 * v32;
    }

    *(a2 + 16) = v34;
    result = malloc_type_realloc(result, v34, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v30 = *(a2 + 8);
      v31 = v30 + 1;
      goto LABEL_37;
    }

LABEL_51:
    abort();
  }

LABEL_37:
  *(a2 + 8) = v31;
  result[v30] = 41;
  return result;
}

__n128 sub_1000127C0(uint64_t a1, __n128 *a2, uint64_t *a3, _WORD *a4)
{
  v8 = *(a1 + 4904);
  v9 = v8[1];
  if ((v9 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v8 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v8)
    {
      std::terminate();
    }

    v9 = 0;
    *v8 = *(a1 + 4904);
    v8[1] = 0;
    *(a1 + 4904) = v8;
  }

  v8[1] = v9 + 48;
  v10 = v8 + v9;
  v11 = *a3;
  v12 = *a4;
  v10[24] = 66;
  v13 = *(v10 + 25) & 0xF000 | v12 & 0x3F;
  *(v10 + 2) = off_1002D22D0;
  result = *a2;
  *(v10 + 25) = v13 | 0x540;
  *(v10 + 2) = result;
  *(v10 + 6) = v11;
  return result;
}

void *sub_100012898(uint64_t a1, char **a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = *(a1 + 16);
    v6 = *a2;
    v7 = a2[1];
    v8 = &v7[v4];
    v9 = a2[2];
    if (&v7[v4] > v9)
    {
      if (2 * v9 <= (v8 + 992))
      {
        v10 = (v8 + 992);
      }

      else
      {
        v10 = 2 * v9;
      }

      a2[2] = v10;
      v6 = malloc_type_realloc(v6, v10, 0x100004077774924uLL);
      *a2 = v6;
      if (!v6)
      {
        abort();
      }

      v7 = a2[1];
    }

    memcpy(&v7[v6], v5, v4);
    a2[1] += v4;
  }

  v11 = *(a1 + 32);
  v12 = *(a1 + 9) << 26 >> 26;

  return sub_100006714(v11, a2, v12, 0);
}

void *sub_100012974(uint64_t a1, char **a2)
{
  result = sub_100006714(*(a1 + 16), a2, *(a1 + 9) << 26 >> 26, 1);
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(a1 + 24);
    v7 = *a2;
    v8 = a2[1];
    v9 = &v8[v5];
    v10 = a2[2];
    if (&v8[v5] > v10)
    {
      if (2 * v10 <= (v9 + 992))
      {
        v11 = (v9 + 992);
      }

      else
      {
        v11 = 2 * v10;
      }

      a2[2] = v11;
      v7 = malloc_type_realloc(v7, v11, 0x100004077774924uLL);
      *a2 = v7;
      if (!v7)
      {
        abort();
      }

      v8 = a2[1];
    }

    result = memcpy(&v8[v7], v6, v5);
    a2[1] += v5;
  }

  return result;
}

void *sub_100012A40(uint64_t a1, uint64_t a2)
{
  sub_100006714(*(a1 + 16), a2, *(a1 + 9) << 26 >> 26, 0);
  ++*(a2 + 32);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = v5 + 1;
  v7 = *(a2 + 16);
  if (v5 + 1 > v7)
  {
    v8 = v5 + 993;
    if (2 * v7 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = 2 * v7;
    }

    *(a2 + 16) = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_14;
    }

    v5 = *(a2 + 8);
    v6 = v5 + 1;
  }

  *(a2 + 8) = v6;
  *(v4 + v5) = 91;
  sub_100006714(*(a1 + 24), a2, 19, 0);
  --*(a2 + 32);
  result = *a2;
  v11 = *(a2 + 8);
  v12 = v11 + 1;
  v13 = *(a2 + 16);
  if (v11 + 1 > v13)
  {
    v14 = v11 + 993;
    if (2 * v13 <= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = 2 * v13;
    }

    *(a2 + 16) = v15;
    result = malloc_type_realloc(result, v15, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v11 = *(a2 + 8);
      v12 = v11 + 1;
      goto LABEL_13;
    }

LABEL_14:
    abort();
  }

LABEL_13:
  *(a2 + 8) = v12;
  *(result + v11) = 93;
  return result;
}

void *sub_100012B70(uint64_t a1, char **a2)
{
  sub_100006714(*(a1 + 16), a2, *(a1 + 9) << 26 >> 26, 1);
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(a1 + 24);
    v6 = *a2;
    v7 = a2[1];
    v8 = &v7[v4];
    v9 = a2[2];
    if (&v7[v4] > v9)
    {
      if (2 * v9 <= (v8 + 992))
      {
        v10 = (v8 + 992);
      }

      else
      {
        v10 = 2 * v9;
      }

      a2[2] = v10;
      v6 = malloc_type_realloc(v6, v10, 0x100004077774924uLL);
      *a2 = v6;
      if (!v6)
      {
        abort();
      }

      v7 = a2[1];
    }

    memcpy(&v7[v6], v5, v4);
    a2[1] += v4;
  }

  v11 = *(a1 + 40);
  v12 = *(a1 + 9) << 26 >> 26;

  return sub_100006714(v11, a2, v12, 0);
}

char *sub_100012C60(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 56) == 1)
  {
    v5 = *(a2 + 16);
    v6 = *a2;
    if (v4 + 2 > v5)
    {
      v7 = v4 + 994;
      v8 = 2 * v5;
      if (v8 <= v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = v8;
      }

      *(a2 + 16) = v9;
      v6 = malloc_type_realloc(v6, v9, 0x100004077774924uLL);
      *a2 = v6;
      if (!v6)
      {
        goto LABEL_88;
      }

      v4 = *(a2 + 8);
    }

    *&v6[v4] = 14906;
    v4 = *(a2 + 8) + 2;
    *(a2 + 8) = v4;
  }

  v10 = *(a2 + 16);
  v11 = *a2;
  if (v4 + 3 > v10)
  {
    v12 = v4 + 995;
    v13 = 2 * v10;
    if (v13 <= v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v13;
    }

    *(a2 + 16) = v14;
    v11 = malloc_type_realloc(v11, v14, 0x100004077774924uLL);
    *a2 = v11;
    if (!v11)
    {
      goto LABEL_88;
    }

    v4 = *(a2 + 8);
  }

  v15 = &v11[v4];
  v15[2] = 119;
  *v15 = 25966;
  v16 = *(a2 + 8);
  v17 = v16 + 3;
  *(a2 + 8) = v16 + 3;
  if (*(a1 + 57) == 1)
  {
    v18 = *(a2 + 16);
    v19 = *a2;
    if (v16 + 5 > v18)
    {
      if (2 * v18 <= v16 + 997)
      {
        v20 = v16 + 997;
      }

      else
      {
        v20 = 2 * v18;
      }

      *(a2 + 16) = v20;
      v19 = malloc_type_realloc(v19, v20, 0x100004077774924uLL);
      *a2 = v19;
      if (!v19)
      {
        goto LABEL_88;
      }

      v17 = *(a2 + 8);
    }

    *&v19[v17] = 23899;
    v17 = *(a2 + 8) + 2;
    *(a2 + 8) = v17;
  }

  if (*(a1 + 24))
  {
    ++*(a2 + 32);
    v21 = v17 + 1;
    v22 = *(a2 + 16);
    v23 = *a2;
    if (v17 + 1 > v22)
    {
      v24 = v17 + 993;
      if (2 * v22 <= v24)
      {
        v25 = v24;
      }

      else
      {
        v25 = 2 * v22;
      }

      *(a2 + 16) = v25;
      v23 = malloc_type_realloc(v23, v25, 0x100004077774924uLL);
      *a2 = v23;
      if (!v23)
      {
        goto LABEL_88;
      }

      v17 = *(a2 + 8);
      v21 = v17 + 1;
    }

    *(a2 + 8) = v21;
    v23[v17] = 40;
    v26 = *(a2 + 8);
    if (*(a1 + 24))
    {
      v27 = 0;
      v28 = 1;
      while (1)
      {
        v29 = v26;
        if ((v28 & 1) == 0)
        {
          v30 = *(a2 + 16);
          v31 = *a2;
          if (v26 + 2 <= v30)
          {
            v34 = v26;
          }

          else
          {
            v32 = 2 * v30;
            if (v32 <= v26 + 994)
            {
              v33 = v26 + 994;
            }

            else
            {
              v33 = v32;
            }

            *(a2 + 16) = v33;
            v31 = malloc_type_realloc(v31, v33, 0x100004077774924uLL);
            *a2 = v31;
            if (!v31)
            {
              goto LABEL_88;
            }

            v34 = *(a2 + 8);
          }

          *&v31[v34] = 8236;
          v29 = *(a2 + 8) + 2;
          *(a2 + 8) = v29;
        }

        sub_100006714(*(*(a1 + 16) + 8 * v27), a2, 18, 0);
        if (v29 == *(a2 + 8))
        {
          *(a2 + 8) = v26;
          if (++v27 == *(a1 + 24))
          {
            break;
          }
        }

        else
        {
          v28 = 0;
          v26 = *(a2 + 8);
          if (++v27 == *(a1 + 24))
          {
            break;
          }
        }
      }
    }

    --*(a2 + 32);
    v35 = v26 + 1;
    v36 = *(a2 + 16);
    v37 = *a2;
    if (v26 + 1 > v36)
    {
      v38 = 2 * v36;
      if (v38 <= v26 + 993)
      {
        v39 = v26 + 993;
      }

      else
      {
        v39 = v38;
      }

      *(a2 + 16) = v39;
      v37 = malloc_type_realloc(v37, v39, 0x100004077774924uLL);
      *a2 = v37;
      if (!v37)
      {
        goto LABEL_88;
      }

      v26 = *(a2 + 8);
      v35 = v26 + 1;
    }

    *(a2 + 8) = v35;
    v37[v26] = 41;
    v17 = *(a2 + 8);
  }

  v40 = *(a2 + 16);
  v41 = *a2;
  if (v17 + 1 > v40)
  {
    v42 = v17 + 993;
    v43 = 2 * v40;
    if (v43 <= v42)
    {
      v44 = v42;
    }

    else
    {
      v44 = v43;
    }

    *(a2 + 16) = v44;
    v41 = malloc_type_realloc(v41, v44, 0x100004077774924uLL);
    *a2 = v41;
    if (!v41)
    {
      goto LABEL_88;
    }

    v17 = *(a2 + 8);
  }

  v41[v17] = 32;
  ++*(a2 + 8);
  v45 = *(a1 + 32);
  result = (*(*v45 + 32))(v45, a2);
  if ((*(v45 + 9) & 0xC0) != 0x40)
  {
    result = (*(*v45 + 40))(v45, a2);
  }

  if (*(a1 + 48))
  {
    ++*(a2 + 32);
    v47 = *a2;
    v48 = *(a2 + 8);
    v49 = v48 + 1;
    v50 = *(a2 + 16);
    if (v48 + 1 > v50)
    {
      v51 = v48 + 993;
      if (2 * v50 <= v51)
      {
        v52 = v51;
      }

      else
      {
        v52 = 2 * v50;
      }

      *(a2 + 16) = v52;
      v47 = malloc_type_realloc(v47, v52, 0x100004077774924uLL);
      *a2 = v47;
      if (!v47)
      {
        goto LABEL_88;
      }

      v48 = *(a2 + 8);
      v49 = v48 + 1;
    }

    *(a2 + 8) = v49;
    v47[v48] = 40;
    v53 = *(a2 + 8);
    if (*(a1 + 48))
    {
      v54 = 0;
      v55 = 1;
      while (1)
      {
        v56 = v53;
        if ((v55 & 1) == 0)
        {
          v57 = *(a2 + 16);
          v58 = *a2;
          if (v53 + 2 <= v57)
          {
            v61 = v53;
          }

          else
          {
            v59 = 2 * v57;
            if (v59 <= v53 + 994)
            {
              v60 = v53 + 994;
            }

            else
            {
              v60 = v59;
            }

            *(a2 + 16) = v60;
            v58 = malloc_type_realloc(v58, v60, 0x100004077774924uLL);
            *a2 = v58;
            if (!v58)
            {
              goto LABEL_88;
            }

            v61 = *(a2 + 8);
          }

          *&v58[v61] = 8236;
          v56 = *(a2 + 8) + 2;
          *(a2 + 8) = v56;
        }

        sub_100006714(*(*(a1 + 40) + 8 * v54), a2, 18, 0);
        if (v56 == *(a2 + 8))
        {
          *(a2 + 8) = v53;
          if (++v54 == *(a1 + 48))
          {
            break;
          }
        }

        else
        {
          v55 = 0;
          v53 = *(a2 + 8);
          if (++v54 == *(a1 + 48))
          {
            break;
          }
        }
      }
    }

    --*(a2 + 32);
    v62 = v53 + 1;
    v63 = *(a2 + 16);
    result = *a2;
    if (v53 + 1 <= v63)
    {
      goto LABEL_86;
    }

    v64 = 2 * v63;
    if (v64 <= v53 + 993)
    {
      v65 = v53 + 993;
    }

    else
    {
      v65 = v64;
    }

    *(a2 + 16) = v65;
    result = malloc_type_realloc(result, v65, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v53 = *(a2 + 8);
      v62 = v53 + 1;
LABEL_86:
      *(a2 + 8) = v62;
      result[v53] = 41;
      return result;
    }

LABEL_88:
    abort();
  }

  return result;
}

uint64_t sub_1000131A0(uint64_t a1, char **a2)
{
  v4 = a2[1];
  if (*(a1 + 24) == 1)
  {
    v5 = a2[2];
    v6 = *a2;
    if (v4 + 2 > v5)
    {
      v7 = v4 + 994;
      v8 = 2 * v5;
      if (v8 <= v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = v8;
      }

      a2[2] = v9;
      v6 = malloc_type_realloc(v6, v9, 0x100004077774924uLL);
      *a2 = v6;
      if (!v6)
      {
        goto LABEL_33;
      }

      v4 = a2[1];
    }

    *&v6[v4] = 14906;
    v4 = (a2[1] + 2);
    a2[1] = v4;
  }

  v10 = a2[2];
  v11 = *a2;
  if (v4 + 6 > v10)
  {
    v12 = v4 + 998;
    v13 = 2 * v10;
    if (v13 <= v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v13;
    }

    a2[2] = v14;
    v11 = malloc_type_realloc(v11, v14, 0x100004077774924uLL);
    *a2 = v11;
    if (!v11)
    {
      goto LABEL_33;
    }

    v4 = a2[1];
  }

  v15 = &v11[v4];
  *(v15 + 2) = 25972;
  *v15 = 1701602660;
  v16 = a2[1];
  v17 = (v16 + 6);
  a2[1] = v16 + 6;
  if (*(a1 + 25) == 1)
  {
    v18 = a2[2];
    v19 = *a2;
    if ((v16 + 8) > v18)
    {
      if (2 * v18 <= (v16 + 1000))
      {
        v20 = (v16 + 1000);
      }

      else
      {
        v20 = 2 * v18;
      }

      a2[2] = v20;
      v19 = malloc_type_realloc(v19, v20, 0x100004077774924uLL);
      *a2 = v19;
      if (!v19)
      {
        goto LABEL_33;
      }

      v17 = a2[1];
    }

    *&v19[v17] = 23899;
    v17 = (a2[1] + 2);
    a2[1] = v17;
  }

  v21 = v17 + 1;
  v22 = a2[2];
  v23 = *a2;
  if (v17 + 1 <= v22)
  {
    goto LABEL_29;
  }

  v24 = v17 + 993;
  if (2 * v22 <= v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = 2 * v22;
  }

  a2[2] = v25;
  v23 = malloc_type_realloc(v23, v25, 0x100004077774924uLL);
  *a2 = v23;
  if (!v23)
  {
LABEL_33:
    abort();
  }

  v17 = a2[1];
  v21 = v17 + 1;
LABEL_29:
  a2[1] = v21;
  v23[v17] = 32;
  v26 = *(a1 + 16);
  result = (*(*v26 + 32))(v26, a2);
  if ((*(v26 + 9) & 0xC0) != 0x40)
  {
    v28 = *(*v26 + 40);

    return v28(v26, a2);
  }

  return result;
}

char *sub_1000133E8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == 1)
  {
    ++*(a2 + 32);
    v4 = *a2;
    v5 = *(a2 + 8);
    v6 = v5 + 1;
    v7 = *(a2 + 16);
    if (v5 + 1 > v7)
    {
      v8 = v5 + 993;
      if (2 * v7 <= v8)
      {
        v9 = v8;
      }

      else
      {
        v9 = 2 * v7;
      }

      *(a2 + 16) = v9;
      v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
      *a2 = v4;
      if (!v4)
      {
        goto LABEL_46;
      }

      v5 = *(a2 + 8);
      v6 = v5 + 1;
    }

    *(a2 + 8) = v6;
    v4[v5] = 40;
  }

  v10 = *(a1 + 16);
  (*(*v10 + 32))(v10, a2);
  if ((*(v10 + 9) & 0xC0) != 0x40)
  {
    (*(*v10 + 40))(v10, a2);
  }

  if (*(a1 + 40) == 1)
  {
    --*(a2 + 32);
    v11 = *a2;
    v12 = *(a2 + 8);
    v13 = v12 + 1;
    v14 = *(a2 + 16);
    if (v12 + 1 > v14)
    {
      v15 = v12 + 993;
      if (2 * v14 <= v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = 2 * v14;
      }

      *(a2 + 16) = v16;
      v11 = malloc_type_realloc(v11, v16, 0x100004077774924uLL);
      *a2 = v11;
      if (!v11)
      {
        goto LABEL_46;
      }

      v12 = *(a2 + 8);
      v13 = v12 + 1;
    }

    *(a2 + 8) = v13;
    v11[v12] = 41;
  }

  ++*(a2 + 32);
  v17 = *a2;
  v18 = *(a2 + 8);
  v19 = v18 + 1;
  v20 = *(a2 + 16);
  if (v18 + 1 > v20)
  {
    v21 = v18 + 993;
    if (2 * v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = 2 * v20;
    }

    *(a2 + 16) = v22;
    v17 = malloc_type_realloc(v17, v22, 0x100004077774924uLL);
    *a2 = v17;
    if (!v17)
    {
      goto LABEL_46;
    }

    v18 = *(a2 + 8);
    v19 = v18 + 1;
  }

  *(a2 + 8) = v19;
  v17[v18] = 40;
  v23 = *(a2 + 8);
  if (*(a1 + 32))
  {
    v24 = 0;
    v25 = 1;
    while (1)
    {
      v26 = v23;
      if ((v25 & 1) == 0)
      {
        v27 = *(a2 + 16);
        v28 = *a2;
        if (v23 + 2 <= v27)
        {
          v31 = v23;
        }

        else
        {
          v29 = 2 * v27;
          if (v29 <= v23 + 994)
          {
            v30 = v23 + 994;
          }

          else
          {
            v30 = v29;
          }

          *(a2 + 16) = v30;
          v28 = malloc_type_realloc(v28, v30, 0x100004077774924uLL);
          *a2 = v28;
          if (!v28)
          {
            goto LABEL_46;
          }

          v31 = *(a2 + 8);
        }

        *&v28[v31] = 8236;
        v26 = *(a2 + 8) + 2;
        *(a2 + 8) = v26;
      }

      sub_100006714(*(*(a1 + 24) + 8 * v24), a2, 18, 0);
      if (v26 == *(a2 + 8))
      {
        *(a2 + 8) = v23;
        if (++v24 == *(a1 + 32))
        {
          break;
        }
      }

      else
      {
        v25 = 0;
        v23 = *(a2 + 8);
        if (++v24 == *(a1 + 32))
        {
          break;
        }
      }
    }
  }

  --*(a2 + 32);
  v32 = v23 + 1;
  v33 = *(a2 + 16);
  result = *a2;
  if (v23 + 1 > v33)
  {
    v35 = 2 * v33;
    if (v35 <= v23 + 993)
    {
      v36 = v23 + 993;
    }

    else
    {
      v36 = v35;
    }

    *(a2 + 16) = v36;
    result = malloc_type_realloc(result, v36, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v23 = *(a2 + 8);
      v32 = v23 + 1;
      goto LABEL_45;
    }

LABEL_46:
    abort();
  }

LABEL_45:
  *(a2 + 8) = v32;
  result[v23] = 41;
  return result;
}

char *sub_1000136FC(void *a1, uint64_t a2)
{
  ++*(a2 + 32);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = v5 + 1;
  v7 = *(a2 + 16);
  if (v5 + 1 > v7)
  {
    v8 = v5 + 993;
    if (2 * v7 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = 2 * v7;
    }

    *(a2 + 16) = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_42;
    }

    v5 = *(a2 + 8);
    v6 = v5 + 1;
  }

  *(a2 + 8) = v6;
  v4[v5] = 40;
  v10 = a1[2];
  (*(*v10 + 32))(v10, a2);
  if ((*(v10 + 9) & 0xC0) != 0x40)
  {
    (*(*v10 + 40))(v10, a2);
  }

  --*(a2 + 32);
  v11 = *a2;
  v12 = *(a2 + 8);
  v13 = v12 + 1;
  v14 = *(a2 + 16);
  if (v12 + 1 > v14)
  {
    v15 = v12 + 993;
    if (2 * v14 <= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = 2 * v14;
    }

    *(a2 + 16) = v16;
    v11 = malloc_type_realloc(v11, v16, 0x100004077774924uLL);
    *a2 = v11;
    if (!v11)
    {
      goto LABEL_42;
    }

    v12 = *(a2 + 8);
    v13 = v12 + 1;
  }

  *(a2 + 8) = v13;
  v11[v12] = 41;
  ++*(a2 + 32);
  v17 = *a2;
  v18 = *(a2 + 8);
  v19 = v18 + 1;
  v20 = *(a2 + 16);
  if (v18 + 1 > v20)
  {
    v21 = v18 + 993;
    if (2 * v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = 2 * v20;
    }

    *(a2 + 16) = v22;
    v17 = malloc_type_realloc(v17, v22, 0x100004077774924uLL);
    *a2 = v17;
    if (!v17)
    {
      goto LABEL_42;
    }

    v18 = *(a2 + 8);
    v19 = v18 + 1;
  }

  *(a2 + 8) = v19;
  v17[v18] = 40;
  v23 = *(a2 + 8);
  if (a1[4])
  {
    v24 = 0;
    v25 = 1;
    while (1)
    {
      v26 = v23;
      if ((v25 & 1) == 0)
      {
        v27 = *(a2 + 16);
        v28 = *a2;
        if (v23 + 2 <= v27)
        {
          v31 = v23;
        }

        else
        {
          v29 = 2 * v27;
          if (v29 <= v23 + 994)
          {
            v30 = v23 + 994;
          }

          else
          {
            v30 = v29;
          }

          *(a2 + 16) = v30;
          v28 = malloc_type_realloc(v28, v30, 0x100004077774924uLL);
          *a2 = v28;
          if (!v28)
          {
            goto LABEL_42;
          }

          v31 = *(a2 + 8);
        }

        *&v28[v31] = 8236;
        v26 = *(a2 + 8) + 2;
        *(a2 + 8) = v26;
      }

      sub_100006714(*(a1[3] + 8 * v24), a2, 18, 0);
      if (v26 == *(a2 + 8))
      {
        *(a2 + 8) = v23;
        if (++v24 == a1[4])
        {
          break;
        }
      }

      else
      {
        v25 = 0;
        v23 = *(a2 + 8);
        if (++v24 == a1[4])
        {
          break;
        }
      }
    }
  }

  --*(a2 + 32);
  v32 = v23 + 1;
  v33 = *(a2 + 16);
  result = *a2;
  if (v23 + 1 > v33)
  {
    v35 = 2 * v33;
    if (v35 <= v23 + 993)
    {
      v36 = v23 + 993;
    }

    else
    {
      v36 = v35;
    }

    *(a2 + 16) = v36;
    result = malloc_type_realloc(result, v36, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v23 = *(a2 + 8);
      v32 = v23 + 1;
      goto LABEL_41;
    }

LABEL_42:
    abort();
  }

LABEL_41:
  *(a2 + 8) = v32;
  result[v23] = 41;
  return result;
}

void *sub_1000139F8(uint64_t a1, char **a2)
{
  sub_100006714(*(a1 + 16), a2, *(a1 + 9) << 26 >> 26, 0);
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 3) > v6)
  {
    v7 = (v5 + 995);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_16;
    }

    v5 = a2[1];
  }

  v10 = &v5[v4];
  v10[2] = 32;
  *v10 = 16160;
  a2[1] += 3;
  sub_100006714(*(a1 + 24), a2, 19, 0);
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  if ((v12 + 3) <= v13)
  {
    goto LABEL_13;
  }

  v14 = (v12 + 995);
  v15 = 2 * v13;
  if (v15 <= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  a2[2] = v16;
  v11 = malloc_type_realloc(v11, v16, 0x100004077774924uLL);
  *a2 = v11;
  if (!v11)
  {
LABEL_16:
    abort();
  }

  v12 = a2[1];
LABEL_13:
  v17 = &v12[v11];
  v17[2] = 32;
  *v17 = 14880;
  a2[1] += 3;
  v18 = *(a1 + 32);

  return sub_100006714(v18, a2, 17, 1);
}

char *sub_100013B54(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  if (v4)
  {
    v6 = *(a1 + 16);
    v7 = v5 + v4;
    v8 = *(a2 + 16);
    v9 = *a2;
    if (v5 + v4 > v8)
    {
      if (2 * v8 <= v7 + 992)
      {
        v10 = v7 + 992;
      }

      else
      {
        v10 = 2 * v8;
      }

      *(a2 + 16) = v10;
      v9 = malloc_type_realloc(v9, v10, 0x100004077774924uLL);
      *a2 = v9;
      if (!v9)
      {
        goto LABEL_34;
      }

      v5 = *(a2 + 8);
    }

    memcpy(&v9[v5], v6, v4);
    v5 = *(a2 + 8) + v4;
    *(a2 + 8) = v5;
  }

  v11 = *(a2 + 32);
  *(a2 + 32) = 0;
  v12 = *(a2 + 16);
  v13 = *a2;
  if (v5 + 1 > v12)
  {
    v14 = v5 + 993;
    v15 = 2 * v12;
    if (v15 <= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    *(a2 + 16) = v16;
    v13 = malloc_type_realloc(v13, v16, 0x100004077774924uLL);
    *a2 = v13;
    if (!v13)
    {
      goto LABEL_34;
    }

    v5 = *(a2 + 8);
  }

  v13[v5] = 60;
  ++*(a2 + 8);
  (*(**(a1 + 32) + 32))(*(a1 + 32), a2);
  v17 = *a2;
  v18 = *(a2 + 8);
  v19 = *(a2 + 16);
  if (v18 + 1 > v19)
  {
    v20 = v18 + 993;
    v21 = 2 * v19;
    if (v21 <= v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = v21;
    }

    *(a2 + 16) = v22;
    v17 = malloc_type_realloc(v17, v22, 0x100004077774924uLL);
    *a2 = v17;
    if (!v17)
    {
      goto LABEL_34;
    }

    v18 = *(a2 + 8);
  }

  v17[v18] = 62;
  v23 = *a2;
  v24 = *(a2 + 8);
  v25 = v24 + 1;
  *(a2 + 8) = v24 + 1;
  *(a2 + 32) = v11 + 1;
  v26 = v24 + 2;
  v27 = *(a2 + 16);
  if (v24 + 2 > v27)
  {
    if (2 * v27 <= v24 + 994)
    {
      v28 = v24 + 994;
    }

    else
    {
      v28 = 2 * v27;
    }

    *(a2 + 16) = v28;
    v23 = malloc_type_realloc(v23, v28, 0x100004077774924uLL);
    *a2 = v23;
    if (!v23)
    {
      goto LABEL_34;
    }

    v25 = *(a2 + 8);
    v26 = v25 + 1;
  }

  *(a2 + 8) = v26;
  v23[v25] = 40;
  sub_100006714(*(a1 + 40), a2, 19, 0);
  --*(a2 + 32);
  result = *a2;
  v30 = *(a2 + 8);
  v31 = v30 + 1;
  v32 = *(a2 + 16);
  if (v30 + 1 > v32)
  {
    v33 = v30 + 993;
    if (2 * v32 <= v33)
    {
      v34 = v33;
    }

    else
    {
      v34 = 2 * v32;
    }

    *(a2 + 16) = v34;
    result = malloc_type_realloc(result, v34, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v30 = *(a2 + 8);
      v31 = v30 + 1;
      goto LABEL_33;
    }

LABEL_34:
    abort();
  }

LABEL_33:
  *(a2 + 8) = v31;
  result[v30] = 41;
  return result;
}

char *sub_100013DAC(void *a1, char **a2)
{
  v4 = a1[3];
  v5 = a2[1];
  if (v4)
  {
    v6 = a1[2];
    v7 = v5 + v4;
    v8 = a2[2];
    v9 = *a2;
    if (v5 + v4 > v8)
    {
      if (2 * v8 <= v7 + 992)
      {
        v10 = v7 + 992;
      }

      else
      {
        v10 = 2 * v8;
      }

      a2[2] = v10;
      v9 = malloc_type_realloc(v9, v10, 0x100004077774924uLL);
      *a2 = v9;
      if (!v9)
      {
        goto LABEL_32;
      }

      v5 = a2[1];
    }

    memcpy(&v9[v5], v6, v4);
    v5 = &a2[1][v4];
    a2[1] = v5;
  }

  ++*(a2 + 8);
  v11 = v5 + 1;
  v12 = a2[2];
  v13 = *a2;
  if (v5 + 1 > v12)
  {
    v14 = v5 + 993;
    if (2 * v12 <= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = 2 * v12;
    }

    a2[2] = v15;
    v13 = malloc_type_realloc(v13, v15, 0x100004077774924uLL);
    *a2 = v13;
    if (!v13)
    {
      goto LABEL_32;
    }

    v5 = a2[1];
    v11 = v5 + 1;
  }

  a2[1] = v11;
  v13[v5] = 40;
  v16 = a1[4];
  (*(*v16 + 32))(v16, a2);
  if ((*(v16 + 9) & 0xC0) != 0x40)
  {
    (*(*v16 + 40))(v16, a2);
  }

  --*(a2 + 8);
  result = *a2;
  v18 = a2[1];
  v19 = v18 + 1;
  v20 = a2[2];
  if ((v18 + 1) > v20)
  {
    v21 = (v18 + 993);
    if (2 * v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = 2 * v20;
    }

    a2[2] = v22;
    result = malloc_type_realloc(result, v22, 0x100004077774924uLL);
    *a2 = result;
    if (!result)
    {
      goto LABEL_32;
    }

    v18 = a2[1];
    v19 = v18 + 1;
  }

  a2[1] = v19;
  v18[result] = 41;
  v23 = a1[6];
  if (!v23)
  {
    return result;
  }

  v24 = a1[5];
  v25 = *a2;
  v26 = a2[1];
  v27 = &v26[v23];
  v28 = a2[2];
  if (&v26[v23] > v28)
  {
    if (2 * v28 <= (v27 + 992))
    {
      v29 = (v27 + 992);
    }

    else
    {
      v29 = 2 * v28;
    }

    a2[2] = v29;
    v25 = malloc_type_realloc(v25, v29, 0x100004077774924uLL);
    *a2 = v25;
    if (v25)
    {
      v26 = a2[1];
      goto LABEL_30;
    }

LABEL_32:
    abort();
  }

LABEL_30:
  result = memcpy(&v26[v25], v24, v23);
  a2[1] += v23;
  return result;
}

char *sub_100013FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  if (*a1 == v3)
  {
    return 0;
  }

  v5 = *a1;
  if (*v4 == 110)
  {
    v5 = v4 + 1;
    *a1 = v4 + 1;
  }

  if (v3 == v5)
  {
    return 0;
  }

  v6 = *v5;
  if (v6 < 0 || (_DefaultRuneLocale.__runetype[v6] & 0x400) == 0)
  {
    return 0;
  }

  while (1)
  {
    v8 = *v5;
    if (v8 < 0 || (_DefaultRuneLocale.__runetype[v8] & 0x400) == 0)
    {
      break;
    }

    *a1 = ++v5;
    if (v5 == v3)
    {
      v9 = v3;
      goto LABEL_13;
    }
  }

  v9 = v5;
LABEL_13:
  v10 = v9 - v4;
  if (v9 == v4 || v5 == v3 || *v5 != 69)
  {
    return 0;
  }

  *a1 = v5 + 1;
  v11 = *(a1 + 4904);
  v12 = v11[1];
  if ((v12 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v14 = a2;
    v15 = a3;
    v16 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v16)
    {
      std::terminate();
    }

    v11 = v16;
    v12 = 0;
    *v16 = *(a1 + 4904);
    v16[1] = 0;
    *(a1 + 4904) = v16;
    a3 = v15;
    a2 = v14;
  }

  v11[1] = v12 + 48;
  v17 = v11 + v12;
  v17[24] = 77;
  *(v17 + 25) = *(v17 + 25) & 0xF000 | 0x540;
  *(v17 + 2) = off_1002D26F0;
  *(v17 + 4) = a2;
  *(v17 + 5) = a3;
  *(v17 + 6) = v4;
  *(v17 + 7) = v10;
  return v17 + 16;
}

char *sub_1000141A8(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4064) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v6 = v5 + 16;
  v4[1] = v6;
  result = v4 + v6;
  LOBYTE(v6) = *a2 != 0;
  result[8] = 73;
  *(result + 9) = *(result + 9) & 0xF000 | 0x540;
  *result = off_1002D2750;
  result[11] = v6;
  return result;
}

char *sub_100014264(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 32;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 74;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = off_1002D28D0;
  *(v6 + 4) = v8;
  return result;
}

void sub_10001431C(unsigned __int8 **a1, size_t size)
{
  if (size)
  {
    a1[84] = a1[83];
  }

  v4 = *a1;
  v3 = a1[1];
  if ((v3 - *a1) < 2)
  {
    return;
  }

  if (*v4 != 29781)
  {
    if (*v4 != 27733)
    {
      if (*v4 != 25173)
      {
        return;
      }

      v5 = v4 + 2;
      *a1 = v5;
      if (v3 != v5)
      {
        v6 = *v5;
        if ((v6 & 0x8000000000000000) == 0 && (_DefaultRuneLocale.__runetype[v6] & 0x400) != 0)
        {
          do
          {
            v7 = *v5;
            if (v7 < 0)
            {
              break;
            }

            if ((_DefaultRuneLocale.__runetype[v7] & 0x400) == 0)
            {
              break;
            }

            *a1 = ++v5;
          }

          while (v5 != v3);
        }
      }

      if (v5 == v3 || *v5 != 95)
      {
        return;
      }

      *a1 = v5 + 1;
      v8 = a1[613];
      v9 = *(v8 + 1);
      if ((v9 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
LABEL_19:
        *(v8 + 1) = v9 + 32;
        v10 = &v8[v9];
        v10[24] = 8;
        *(v10 + 25) = *(v10 + 25) & 0xF000 | 0x540;
        *(v10 + 2) = off_1002D1D60;
        *(v10 + 4) = "'block-literal'";
        *(v10 + 5) = 15;
        return;
      }

      v8 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (v8)
      {
        v9 = 0;
        *v8 = a1[613];
        *(v8 + 1) = 0;
        a1[613] = v8;
        goto LABEL_19;
      }

LABEL_113:
      std::terminate();
    }

    v18 = v4 + 2;
    *a1 = v18;
    v19 = a1[84];
    v20 = a1[83];
    v21 = v19 - v20;
    v22 = a1[98];
    a1[98] = ((v19 - v20) >> 3);
    v78 = a1;
    v79 = (v19 - v20) >> 3;
    v80[0] = v81;
    v80[1] = v81;
    v72 = v22;
    v80[2] = &v82;
    memset(v81, 0, sizeof(v81));
    if (v19 == a1[85])
    {
      if (v20 == a1 + 86)
      {
        v23 = malloc_type_malloc(2 * v21, 0x2004093837F09uLL);
        if (!v23)
        {
          goto LABEL_112;
        }

        v27 = a1[83];
        v28 = a1[84];
        if (v28 != v27)
        {
          v29 = v23;
          memmove(v23, v27, v28 - v27);
          v23 = v29;
        }

        a1[83] = v23;
      }

      else
      {
        v23 = malloc_type_realloc(v20, 2 * v21, 0x2004093837F09uLL);
        a1[83] = v23;
        if (!v23)
        {
LABEL_112:
          abort();
        }
      }

      v19 = &v23[v21];
      a1[85] = &v23[8 * (v21 >> 2)];
      v18 = *a1;
      v3 = a1[1];
    }

    *v19 = v80;
    a1[84] = v19 + 8;
    v31 = a1[2];
    v30 = a1[3];
    for (i = v3 - v18; i; i = a1[1] - *a1)
    {
      if (*v18 != 84)
      {
        break;
      }

      v36 = i < 2 ? 0 : v18[1];
      v37 = memchr("yptnk", v36, 5uLL);
      if (!v37 || v37 - "yptnk" == -1)
      {
        break;
      }

      v35 = sub_100015A84(a1, v80);
      if (!v35)
      {
        goto LABEL_109;
      }

      v34 = a1[3];
      if (v34 == a1[4])
      {
        v38 = v35;
        v39 = a1[2];
        v40 = v34 - v39;
        if (v39 == a1 + 5)
        {
          v33 = malloc_type_malloc(2 * (v34 - v39), 0x2004093837F09uLL);
          if (!v33)
          {
            goto LABEL_112;
          }

          v41 = a1[2];
          v42 = a1[3];
          if (v42 != v41)
          {
            v43 = v33;
            memmove(v33, v41, v42 - v41);
            v33 = v43;
          }

          a1[2] = v33;
        }

        else
        {
          v33 = malloc_type_realloc(v39, 2 * (v34 - v39), 0x2004093837F09uLL);
          a1[2] = v33;
          if (!v33)
          {
            goto LABEL_112;
          }
        }

        v34 = &v33[v40];
        a1[4] = &v33[8 * (v40 >> 2)];
        v35 = v38;
      }

      *v34 = v35;
      a1[3] = v34 + 8;
      v18 = *a1;
    }

    v44 = (v30 - v31) >> 3;
    v77.n128_u64[0] = sub_10000A1F8(a1, v44);
    v77.n128_u64[1] = v45;
    if (!v45)
    {
      a1[84] -= 8;
    }

    v76 = 0;
    v46 = *a1;
    v47 = a1[1];
    if (*a1 == v47)
    {
      goto LABEL_73;
    }

    if (*v46 == 81)
    {
      *a1 = v46 + 1;
      v48 = *(a1 + 778);
      *(a1 + 778) = 1;
      sub_10000D7B4(a1, v45);
      *(a1 + 778) = v48;
      v76 = v49;
      if (!v49)
      {
        goto LABEL_109;
      }

      v46 = *a1;
      v47 = a1[1];
    }

    if (v47 == v46 || *v46 != 118)
    {
LABEL_73:
      v50 = sub_1000074E8(a1);
      if (!v50)
      {
        goto LABEL_109;
      }

      while (1)
      {
        v51 = a1[3];
        if (v51 == a1[4])
        {
          v52 = v50;
          v53 = a1[2];
          v54 = v51 - v53;
          if (v53 == a1 + 5)
          {
            v55 = malloc_type_malloc(2 * (v51 - v53), 0x2004093837F09uLL);
            if (!v55)
            {
              goto LABEL_112;
            }

            v56 = a1[2];
            v57 = a1[3];
            if (v57 != v56)
            {
              v58 = v55;
              memmove(v55, v56, v57 - v56);
              v55 = v58;
            }

            a1[2] = v55;
          }

          else
          {
            v55 = malloc_type_realloc(v53, 2 * (v51 - v53), 0x2004093837F09uLL);
            a1[2] = v55;
            if (!v55)
            {
              goto LABEL_112;
            }
          }

          v51 = &v55[v54];
          a1[4] = &v55[8 * (v54 >> 2)];
          v50 = v52;
        }

        *v51 = v50;
        a1[3] = v51 + 8;
        if (a1[1] != *a1)
        {
          v59 = **a1;
          if (v59 == 69 || v59 == 81)
          {
            break;
          }
        }

        v50 = sub_1000074E8(a1);
        if (!v50)
        {
          goto LABEL_109;
        }
      }
    }

    else
    {
      *a1 = v46 + 1;
    }

    *&v75 = sub_10000A1F8(a1, v44);
    *(&v75 + 1) = v60;
    v74 = 0;
    v62 = *a1;
    v61 = a1[1];
    if (*a1 == v61)
    {
      goto LABEL_109;
    }

    if (*v62 == 81)
    {
      *a1 = v62 + 1;
      v63 = *(a1 + 778);
      *(a1 + 778) = 1;
      sub_10000D7B4(a1, v60);
      *(a1 + 778) = v63;
      v74 = v64;
      if (!v64)
      {
        goto LABEL_109;
      }

      v62 = *a1;
      v61 = a1[1];
    }

    if (v62 != v61 && *v62 == 69)
    {
      v65 = v62 + 1;
      *a1 = v65;
      if (v61 != v65)
      {
        v66 = *v65;
        if ((v66 & 0x8000000000000000) == 0 && (_DefaultRuneLocale.__runetype[v66] & 0x400) != 0)
        {
          v67 = v65;
          while (1)
          {
            v68 = *v67;
            if (v68 < 0 || (_DefaultRuneLocale.__runetype[v68] & 0x400) == 0)
            {
              break;
            }

            *a1 = ++v67;
            if (v67 == v61)
            {
              v69 = v61;
              goto LABEL_108;
            }
          }

          v69 = v67;
LABEL_108:
          v70 = v65;
          v71 = v69 - v65;
          v65 = v67;
          *&v73 = v70;
          *(&v73 + 1) = v71;
          if (v67 == v61)
          {
            goto LABEL_109;
          }

          goto LABEL_98;
        }
      }

      v73 = 0uLL;
      if (v65 != v61)
      {
LABEL_98:
        if (*v65 == 95)
        {
          *a1 = v65 + 1;
          sub_100016070(a1, &v77, &v76, &v75, &v74, &v73);
        }
      }
    }

LABEL_109:
    v78[84] = &v78[83][8 * v79];
    if (v80[0] != v81)
    {
      free(v80[0]);
    }

    a1[98] = v72;
    return;
  }

  v11 = v4 + 2;
  *a1 = v11;
  if (v3 == v11 || (v12 = *v11, v12 < 0) || (_DefaultRuneLocale.__runetype[v12] & 0x400) == 0)
  {
    v13 = 0;
    v14 = 0;
    if (v11 == v3)
    {
      return;
    }

LABEL_24:
    if (*v11 != 95)
    {
      return;
    }

    *a1 = v11 + 1;
    v15 = a1[613];
    v16 = *(v15 + 1);
    if ((v16 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v15 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v15)
      {
        goto LABEL_113;
      }

      v16 = 0;
      *v15 = a1[613];
      *(v15 + 1) = 0;
      a1[613] = v15;
    }

    *(v15 + 1) = v16 + 32;
    v17 = &v15[v16];
    v17[24] = 51;
    *(v17 + 25) = *(v17 + 25) & 0xF000 | 0x540;
    *(v17 + 2) = off_1002D2930;
    *(v17 + 4) = v13;
    *(v17 + 5) = v14;
    return;
  }

  v24 = v11;
  while (1)
  {
    v25 = *v24;
    if (v25 < 0 || (_DefaultRuneLocale.__runetype[v25] & 0x400) == 0)
    {
      break;
    }

    *a1 = ++v24;
    if (v24 == v3)
    {
      v26 = v3;
      goto LABEL_39;
    }
  }

  v26 = v24;
LABEL_39:
  v13 = v11;
  v14 = v26 - v11;
  v11 = v24;
  if (v24 != v3)
  {
    goto LABEL_24;
  }
}

char *sub_100014A98(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 32;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 75;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = off_1002D2C30;
  *(v6 + 4) = v8;
  return result;
}

__n128 sub_100014B50(uint64_t a1, uint64_t *a2, __n128 *a3)
{
  v6 = *(a1 + 4904);
  v7 = v6[1];
  if ((v7 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v6 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v6)
    {
      std::terminate();
    }

    v7 = 0;
    *v6 = *(a1 + 4904);
    v6[1] = 0;
    *(a1 + 4904) = v6;
  }

  v6[1] = v7 + 48;
  v8 = v6 + v7;
  v9 = *a2;
  v8[24] = 76;
  v10 = *(v8 + 25) & 0xF000 | 0x540;
  *(v8 + 2) = off_1002D2C90;
  *(v8 + 4) = v9;
  result = *a3;
  *(v8 + 25) = v10;
  *(v8 + 40) = result;
  return result;
}

void *sub_100014C1C(void *result, char **a2)
{
  v3 = result;
  if (result[3] >= 4uLL)
  {
    ++*(a2 + 8);
    v4 = *a2;
    v5 = a2[1];
    v6 = v5 + 1;
    v7 = a2[2];
    if ((v5 + 1) > v7)
    {
      v8 = (v5 + 993);
      if (2 * v7 <= v8)
      {
        v9 = v8;
      }

      else
      {
        v9 = 2 * v7;
      }

      a2[2] = v9;
      v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
      *a2 = v4;
      if (!v4)
      {
        goto LABEL_57;
      }

      v5 = a2[1];
      v6 = v5 + 1;
    }

    a2[1] = v6;
    v5[v4] = 40;
    v10 = v3[3];
    v11 = a2[1];
    if (v10)
    {
      v12 = v3[2];
      v13 = v11 + v10;
      v14 = a2[2];
      v15 = *a2;
      if (v11 + v10 > v14)
      {
        if (2 * v14 <= v13 + 992)
        {
          v16 = v13 + 992;
        }

        else
        {
          v16 = 2 * v14;
        }

        a2[2] = v16;
        v15 = malloc_type_realloc(v15, v16, 0x100004077774924uLL);
        *a2 = v15;
        if (!v15)
        {
          goto LABEL_57;
        }

        v11 = a2[1];
      }

      memcpy(&v15[v11], v12, v10);
      v11 = &a2[1][v10];
      a2[1] = v11;
    }

    --*(a2 + 8);
    v17 = v11 + 1;
    v18 = a2[2];
    result = *a2;
    if (v11 + 1 > v18)
    {
      v19 = v11 + 993;
      if (2 * v18 <= v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = 2 * v18;
      }

      a2[2] = v20;
      result = malloc_type_realloc(result, v20, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_57;
      }

      v11 = a2[1];
      v17 = v11 + 1;
    }

    a2[1] = v17;
    *(result + v11) = 41;
  }

  v21 = v3[4];
  if (*v21 == 110)
  {
    v23 = (a2 + 1);
    v22 = a2[1];
    v24 = v22 + 1;
    v25 = a2[2];
    result = *a2;
    if (v22 + 1 > v25)
    {
      v26 = v22 + 993;
      if (2 * v25 <= v26)
      {
        v27 = v26;
      }

      else
      {
        v27 = 2 * v25;
      }

      a2[2] = v27;
      result = malloc_type_realloc(result, v27, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
        goto LABEL_57;
      }

      v22 = *v23;
      v24 = *v23 + 1;
    }

    *v23 = v24;
    *(result + v22) = 45;
    v28 = v3[5];
    v29 = v28 - 1;
    if (v28 != 1)
    {
      v30 = v3[4];
      v31 = *a2;
      v32 = a2[1];
      v33 = v32 + v29;
      v34 = a2[2];
      if (v32 + v29 > v34)
      {
        if (2 * v34 <= v33 + 992)
        {
          v35 = v33 + 992;
        }

        else
        {
          v35 = 2 * v34;
        }

        a2[2] = v35;
        v31 = malloc_type_realloc(v31, v35, 0x100004077774924uLL);
        *a2 = v31;
        if (!v31)
        {
          goto LABEL_57;
        }

        v32 = *v23;
      }

      v36 = &v31[v32];
      v37 = (v30 + 1);
LABEL_46:
      result = memcpy(v36, v37, v29);
      *v23 += v29;
    }
  }

  else
  {
    v29 = v3[5];
    if (v29)
    {
      v23 = (a2 + 1);
      v38 = a2[1];
      v39 = v38 + v29;
      v40 = a2[2];
      v41 = *a2;
      if (v38 + v29 > v40)
      {
        if (2 * v40 <= v39 + 992)
        {
          v42 = v39 + 992;
        }

        else
        {
          v42 = 2 * v40;
        }

        a2[2] = v42;
        v41 = malloc_type_realloc(v41, v42, 0x100004077774924uLL);
        *a2 = v41;
        if (!v41)
        {
          goto LABEL_57;
        }

        v38 = *v23;
      }

      v36 = &v41[v38];
      v37 = v21;
      goto LABEL_46;
    }
  }

  v43 = v3[3];
  if (v43 <= 3 && v43)
  {
    v44 = v3[2];
    v45 = *a2;
    v46 = a2[1];
    v47 = &v46[v43];
    v48 = a2[2];
    if (&v46[v43] <= v48)
    {
LABEL_55:
      result = memcpy(&v46[v45], v44, v43);
      a2[1] += v43;
      return result;
    }

    if (2 * v48 <= (v47 + 992))
    {
      v49 = (v47 + 992);
    }

    else
    {
      v49 = 2 * v48;
    }

    a2[2] = v49;
    v45 = malloc_type_realloc(v45, v49, 0x100004077774924uLL);
    *a2 = v45;
    if (v45)
    {
      v46 = a2[1];
      goto LABEL_55;
    }

LABEL_57:
    abort();
  }

  return result;
}

void *sub_100014F30(uint64_t a1, char **a2)
{
  v3 = *(a1 + 11);
  if (*(a1 + 11))
  {
    v4 = 4;
  }

  else
  {
    v4 = 5;
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = &v6[v4];
  v8 = a2[2];
  if (&v6[v4] > v8)
  {
    if (2 * v8 <= (v7 + 992))
    {
      v9 = (v7 + 992);
    }

    else
    {
      v9 = 2 * v8;
    }

    a2[2] = v9;
    v5 = malloc_type_realloc(v5, v9, 0x100004077774924uLL);
    *a2 = v5;
    if (!v5)
    {
      abort();
    }

    v6 = a2[1];
  }

  if (v3)
  {
    v10 = "true";
  }

  else
  {
    v10 = "false";
  }

  result = memcpy(&v6[v5], v10, v4);
  a2[1] += v4;
  return result;
}

void *sub_100014FFC(void *result, char **a2)
{
  if (*(result + 3) < 8uLL)
  {
    return result;
  }

  v3 = *(result + 2);
  v4 = *v3;
  if ((v4 & 0x8000000000000000) == 0 && (_DefaultRuneLocale.__runetype[v4] & 0x400) != 0)
  {
    v5 = 208;
    v6 = v3[1];
    if (v6 < 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = 169;
    v6 = v3[1];
    if (v6 < 0)
    {
LABEL_8:
      v7 = 169;
      v8 = v3[2];
      if (v8 < 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  if ((_DefaultRuneLocale.__runetype[v6] & 0x400) == 0)
  {
    goto LABEL_8;
  }

  v7 = 208;
  v8 = v3[2];
  if (v8 < 0)
  {
    goto LABEL_12;
  }

LABEL_11:
  if ((_DefaultRuneLocale.__runetype[v8] & 0x400) != 0)
  {
    v9 = -48;
    v10 = v3[3];
    if (v10 < 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_12:
  v9 = -87;
  v10 = v3[3];
  if (v10 < 0)
  {
LABEL_16:
    v11 = -87;
    v12 = v3[4];
    if (v12 < 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_15:
  if ((_DefaultRuneLocale.__runetype[v10] & 0x400) == 0)
  {
    goto LABEL_16;
  }

  v11 = -48;
  v12 = v3[4];
  if (v12 < 0)
  {
    goto LABEL_20;
  }

LABEL_19:
  if ((_DefaultRuneLocale.__runetype[v12] & 0x400) != 0)
  {
    v13 = -48;
    v14 = v3[5];
    if (v14 < 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_20:
  v13 = -87;
  v14 = v3[5];
  if (v14 < 0)
  {
    goto LABEL_24;
  }

LABEL_23:
  if ((_DefaultRuneLocale.__runetype[v14] & 0x400) != 0)
  {
    v15 = -48;
    goto LABEL_26;
  }

LABEL_24:
  v15 = -87;
LABEL_26:
  v16 = v4 + v5;
  v17 = v6 + v7;
  v18 = v8 + v9;
  v19 = v10 + v11;
  v20 = v12 + v13;
  v21 = v3[6];
  v22 = v14 + v15;
  if ((v21 & 0x8000000000000000) == 0 && (_DefaultRuneLocale.__runetype[v21] & 0x400) != 0)
  {
    v23 = v17 + 16 * v16;
    v24 = v19 + 16 * v18;
    v25 = v21 - 48;
    v26 = v3[7];
    v27 = v22 + 16 * v20;
    if (v26 < 0)
    {
LABEL_32:
      v28 = -87;
      goto LABEL_34;
    }
  }

  else
  {
    v23 = v17 + 16 * v16;
    v24 = v19 + 16 * v18;
    v25 = v21 - 87;
    v26 = v3[7];
    v27 = v22 + 16 * v20;
    if (v26 < 0)
    {
      goto LABEL_32;
    }
  }

  if ((_DefaultRuneLocale.__runetype[v26] & 0x400) == 0)
  {
    goto LABEL_32;
  }

  v28 = -48;
LABEL_34:
  *__str = 0;
  v36 = 0;
  v37 = 0;
  result = snprintf(__str, 0x18uLL, "%af", COERCE_FLOAT((v26 + v28 + 16 * v25) | (v23 << 24) | (v27 << 8) | (v24 << 16)));
  if (result)
  {
    v29 = result;
    v30 = *a2;
    v31 = a2[1];
    v32 = &v31[v29];
    v33 = a2[2];
    if (&v31[v29] > v33)
    {
      if (2 * v33 <= (v32 + 992))
      {
        v34 = (v32 + 992);
      }

      else
      {
        v34 = 2 * v33;
      }

      a2[2] = v34;
      v30 = malloc_type_realloc(v30, v34, 0x100004077774924uLL);
      *a2 = v30;
      if (!v30)
      {
        abort();
      }

      v31 = a2[1];
    }

    result = memcpy(&v31[v30], __str, v29);
    a2[1] += v29;
  }

  return result;
}

void *sub_100015298(void *result, char **a2)
{
  if (*(result + 3) < 0x10uLL)
  {
    return result;
  }

  v3 = *(result + 2);
  v4 = *v3;
  if ((v4 & 0x8000000000000000) == 0 && (_DefaultRuneLocale.__runetype[v4] & 0x400) != 0)
  {
    v5 = -48;
    v6 = v3[1];
    if (v6 < 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = -87;
    v6 = v3[1];
    if (v6 < 0)
    {
LABEL_8:
      v7 = -87;
      v8 = v3[2];
      if (v8 < 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  if ((_DefaultRuneLocale.__runetype[v6] & 0x400) == 0)
  {
    goto LABEL_8;
  }

  v7 = -48;
  v8 = v3[2];
  if (v8 < 0)
  {
    goto LABEL_12;
  }

LABEL_11:
  if ((_DefaultRuneLocale.__runetype[v8] & 0x400) != 0)
  {
    v9 = -48;
    v10 = v3[3];
    if (v10 < 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_12:
  v9 = -87;
  v10 = v3[3];
  if (v10 < 0)
  {
LABEL_16:
    v11 = -87;
    v12 = v3[4];
    if (v12 < 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_15:
  if ((_DefaultRuneLocale.__runetype[v10] & 0x400) == 0)
  {
    goto LABEL_16;
  }

  v11 = -48;
  v12 = v3[4];
  if (v12 < 0)
  {
    goto LABEL_20;
  }

LABEL_19:
  if ((_DefaultRuneLocale.__runetype[v12] & 0x400) != 0)
  {
    v13 = -48;
    v14 = v3[5];
    if (v14 < 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_20:
  v13 = -87;
  v14 = v3[5];
  if (v14 < 0)
  {
LABEL_24:
    v15 = -87;
    v16 = v3[6];
    if (v16 < 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_23:
  if ((_DefaultRuneLocale.__runetype[v14] & 0x400) == 0)
  {
    goto LABEL_24;
  }

  v15 = -48;
  v16 = v3[6];
  if (v16 < 0)
  {
    goto LABEL_28;
  }

LABEL_27:
  if ((_DefaultRuneLocale.__runetype[v16] & 0x400) != 0)
  {
    v17 = -48;
    v18 = v3[7];
    if (v18 < 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_28:
  v17 = -87;
  v18 = v3[7];
  if (v18 < 0)
  {
LABEL_32:
    v19 = -87;
    v20 = v3[8];
    if (v20 < 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_31:
  if ((_DefaultRuneLocale.__runetype[v18] & 0x400) == 0)
  {
    goto LABEL_32;
  }

  v19 = -48;
  v20 = v3[8];
  if (v20 < 0)
  {
    goto LABEL_36;
  }

LABEL_35:
  if ((_DefaultRuneLocale.__runetype[v20] & 0x400) != 0)
  {
    v21 = -48;
    v22 = v3[9];
    if (v22 < 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_36:
  v21 = -87;
  v22 = v3[9];
  if (v22 < 0)
  {
LABEL_40:
    v23 = -87;
    v24 = v3[10];
    if (v24 < 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_39:
  if ((_DefaultRuneLocale.__runetype[v22] & 0x400) == 0)
  {
    goto LABEL_40;
  }

  v23 = -48;
  v24 = v3[10];
  if (v24 < 0)
  {
    goto LABEL_44;
  }

LABEL_43:
  if ((_DefaultRuneLocale.__runetype[v24] & 0x400) != 0)
  {
    v25 = v20 + v21;
    v26 = v22 + v23;
    v27 = v24 - 48;
    v28 = v3[11];
    if (v28 < 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_44:
  v25 = v20 + v21;
  v26 = v22 + v23;
  v27 = v24 - 87;
  v28 = v3[11];
  if (v28 < 0)
  {
    goto LABEL_48;
  }

LABEL_47:
  if ((_DefaultRuneLocale.__runetype[v28] & 0x400) != 0)
  {
    v29 = -48;
    goto LABEL_50;
  }

LABEL_48:
  v29 = -87;
LABEL_50:
  v30 = v4 + v5;
  v31 = v6 + v7;
  v32 = v8 + v9;
  v33 = v10 + v11;
  v34 = v12 + v13;
  v35 = v14 + v15;
  v36 = v3[12];
  if ((v36 & 0x8000000000000000) == 0 && (_DefaultRuneLocale.__runetype[v36] & 0x400) != 0)
  {
    v37 = -48;
  }

  else
  {
    v37 = -87;
  }

  v38 = v31 + 16 * v30;
  v39 = v33 + 16 * v32;
  v40 = v35 + 16 * v34;
  v41 = v36 + v37;
  v42 = v3[13];
  if ((v42 & 0x8000000000000000) == 0 && (_DefaultRuneLocale.__runetype[v42] & 0x400) != 0)
  {
    v43 = (v42 - 48 + 16 * v41);
    v44 = v3[14];
    if (v44 < 0)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v43 = (v42 - 87 + 16 * v41);
    v44 = v3[14];
    if (v44 < 0)
    {
      goto LABEL_60;
    }
  }

  if ((_DefaultRuneLocale.__runetype[v44] & 0x400) != 0)
  {
    v45 = -48;
    goto LABEL_62;
  }

LABEL_60:
  v45 = -87;
LABEL_62:
  v46 = v43 << 48;
  v47 = v3[15];
  if ((v47 & 0x8000000000000000) == 0 && (_DefaultRuneLocale.__runetype[v47] & 0x400) != 0)
  {
    v48 = -48;
  }

  else
  {
    v48 = -87;
  }

  *(&v49 + 1) = v40;
  *&v49 = (v28 + v29 + 16 * v27) << 40;
  *__str = 0u;
  v57 = 0u;
  result = snprintf(__str, 0x20uLL, "%a", COERCE_DOUBLE((v49 >> 24) & 0xFFFFFFFFFFFF0000 | (v47 + v48 + 16 * (v44 + v45)) | (v38 << 56) | (v46 >> 40) & 0xFF00 | (v39 << 48) | ((((v26 + 16 * v25) << 32) | v49) >> 8) & 0xFF000000 | ((v18 + v19 + 16 * (v16 + v17)) << 32)));
  if (result)
  {
    v50 = result;
    v51 = *a2;
    v52 = a2[1];
    v53 = &v52[v50];
    v54 = a2[2];
    if (&v52[v50] > v54)
    {
      if (2 * v54 <= (v53 + 992))
      {
        v55 = (v53 + 992);
      }

      else
      {
        v55 = 2 * v54;
      }

      a2[2] = v55;
      v51 = malloc_type_realloc(v51, v55, 0x100004077774924uLL);
      *a2 = v51;
      if (!v51)
      {
        abort();
      }

      v52 = a2[1];
    }

    result = memcpy(&v52[v51], __str, v50);
    a2[1] += v50;
  }

  return result;
}

void *sub_1000156FC(void *result, char **a2)
{
  if (*(result + 3) < 0x20uLL)
  {
    return result;
  }

  v3 = (*(result + 2) + 1);
  v4 = &v25 + 4;
  v5 = 32;
  do
  {
    v8 = *(v3 - 1);
    if ((v8 & 0x8000000000000000) == 0 && (_DefaultRuneLocale.__runetype[v8] & 0x400) != 0)
    {
      v9 = -48;
      v10 = *v3;
      if (v10 < 0)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v9 = -87;
      v10 = *v3;
      if (v10 < 0)
      {
        goto LABEL_3;
      }
    }

    if ((_DefaultRuneLocale.__runetype[v10] & 0x400) == 0)
    {
LABEL_3:
      v6 = -87;
      goto LABEL_4;
    }

    v6 = -48;
LABEL_4:
    v7 = v10 + v6 + 16 * (v8 + v9);
    v4[4] = v7;
    v3 += 2;
    ++v4;
    v5 -= 2;
  }

  while (v5);
  if (v4 + 3 > &v26)
  {
    v11 = LOBYTE(v26);
    LOBYTE(v26) = v7;
    v4[3] = v11;
    v12 = BYTE1(v26);
    BYTE1(v26) = v4[2];
    v4[2] = v12;
    v13 = BYTE2(v26);
    BYTE2(v26) = v4[1];
    v4[1] = v13;
    v14 = BYTE3(v26);
    BYTE3(v26) = *v4;
    *v4 = v14;
    v15 = BYTE4(v26);
    BYTE4(v26) = *(v4 - 1);
    *(v4 - 1) = v15;
    v16 = BYTE5(v26);
    BYTE5(v26) = *(v4 - 2);
    *(v4 - 2) = v16;
    v17 = BYTE6(v26);
    BYTE6(v26) = *(v4 - 3);
    *(v4 - 3) = v17;
    v18 = HIBYTE(v26);
    HIBYTE(v26) = *(v4 - 4);
    *(v4 - 4) = v18;
  }

  *__str = 0u;
  memset(v28, 0, sizeof(v28));
  result = snprintf(__str, 0x2AuLL, "%LaL", v26);
  if (result)
  {
    v19 = result;
    v20 = *a2;
    v21 = a2[1];
    v22 = &v21[v19];
    v23 = a2[2];
    if (&v21[v19] > v23)
    {
      if (2 * v23 <= (v22 + 992))
      {
        v24 = (v22 + 992);
      }

      else
      {
        v24 = 2 * v23;
      }

      a2[2] = v24;
      v20 = malloc_type_realloc(v20, v24, 0x100004077774924uLL);
      *a2 = v20;
      if (!v20)
      {
        abort();
      }

      v21 = a2[1];
    }

    result = memcpy(&v21[v20], __str, v19);
    a2[1] += v19;
  }

  return result;
}

char *sub_100015920(uint64_t a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 2) > v6)
  {
    v7 = (v5 + 994);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_16;
    }

    v5 = a2[1];
  }

  *&v5[v4] = 15394;
  a2[1] += 2;
  v10 = *(a1 + 16);
  (*(*v10 + 32))(v10, a2);
  if ((*(v10 + 9) & 0xC0) != 0x40)
  {
    (*(*v10 + 40))(v10, a2);
  }

  result = *a2;
  v12 = a2[1];
  v13 = a2[2];
  if ((v12 + 2) > v13)
  {
    v14 = (v12 + 994);
    v15 = 2 * v13;
    if (v15 <= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    a2[2] = v16;
    result = malloc_type_realloc(result, v16, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v12 = a2[1];
      goto LABEL_15;
    }

LABEL_16:
    abort();
  }

LABEL_15:
  *&v12[result] = 8766;
  a2[1] += 2;
  return result;
}

char *sub_100015A84(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v54[0] = a1;
  v54[1] = &v55;
  v2 = *a1;
  if (*(a1 + 8) - *a1 < 2uLL)
  {
    return 0;
  }

  switch(*v2)
  {
    case 0x7954:
      *a1 = v2 + 1;
      v5 = sub_1000162D0(v54, 0);
      v6 = *(a1 + 4904);
      v7 = v6[1];
      if ((v7 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v6 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v6)
        {
          goto LABEL_62;
        }

        v7 = 0;
        *v6 = *(a1 + 4904);
        v6[1] = 0;
        *(a1 + 4904) = v6;
      }

      v6[1] = v7 + 32;
      v8 = v6 + v7;
      result = v8 + 16;
      v8[24] = 35;
      *(v8 + 25) = *(v8 + 25) & 0xF000 | 0x500;
      *(v8 + 2) = off_1002D29F0;
      *(v8 + 4) = v5;
      return result;
    case 0x6B54:
      *a1 = v2 + 1;
      v9 = *(a1 + 778);
      *(a1 + 778) = 1;
      result = sub_1000094F0(a1, 0);
      if (result)
      {
        v10 = result;
        v11 = sub_1000162D0(v54, 0);
        v12 = *(a1 + 4904);
        v13 = v12[1];
        if ((v13 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
        {
          v12 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
          if (!v12)
          {
            goto LABEL_62;
          }

          v13 = 0;
          *v12 = *(a1 + 4904);
          v12[1] = 0;
          *(a1 + 4904) = v12;
        }

        v12[1] = v13 + 32;
        v14 = v12 + v13;
        result = v14 + 16;
        v14[24] = 36;
        *(v14 + 25) = *(v14 + 25) & 0xF000 | 0x500;
        *(v14 + 2) = off_1002D2A50;
        *(v14 + 4) = v10;
        *(v14 + 5) = v11;
      }

      *(a1 + 778) = v9;
      return result;
    case 0x6E54:
      *a1 = v2 + 1;
      v15 = sub_1000162D0(v54, 1uLL);
      result = sub_1000074E8(a1);
      if (!result)
      {
        return result;
      }

      v16 = result;
      v17 = *(a1 + 4904);
      v18 = v17[1];
      if ((v18 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v17 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v17)
        {
          goto LABEL_62;
        }

        v18 = 0;
        *v17 = *(a1 + 4904);
        v17[1] = 0;
        *(a1 + 4904) = v17;
      }

      v17[1] = v18 + 32;
      v19 = v17 + v18;
      result = v19 + 16;
      v19[24] = 37;
      *(v19 + 25) = *(v19 + 25) & 0xF000 | 0x500;
      *(v19 + 2) = off_1002D2AB0;
      *(v19 + 4) = v15;
      *(v19 + 5) = v16;
      return result;
    case 0x7454:
      *a1 = v2 + 1;
      v20 = sub_1000162D0(v54, 2uLL);
      v22 = *(a1 + 16);
      v21 = *(a1 + 24);
      v23 = *(a1 + 672);
      v24 = *(a1 + 664);
      v25 = v23 - v24;
      v50 = a1;
      v51 = (v23 - v24) >> 3;
      v52[0] = v53;
      v52[1] = v53;
      v52[2] = v54;
      memset(v53, 0, sizeof(v53));
      if (v23 == *(a1 + 680))
      {
        if (v24 == (a1 + 688))
        {
          v26 = malloc_type_malloc(2 * v25, 0x2004093837F09uLL);
          if (!v26)
          {
            goto LABEL_61;
          }

          v27 = *(a1 + 664);
          v28 = *(a1 + 672);
          if (v28 != v27)
          {
            v29 = v26;
            memmove(v26, v27, v28 - v27);
            v26 = v29;
          }

          *(a1 + 664) = v26;
        }

        else
        {
          v26 = malloc_type_realloc(v24, 2 * v25, 0x2004093837F09uLL);
          *(a1 + 664) = v26;
          if (!v26)
          {
LABEL_61:
            abort();
          }
        }

        v23 = &v26[v25];
        *(a1 + 680) = &v26[8 * (v25 >> 2)];
      }

      v30 = (v21 - v22) >> 3;
      *v23 = v52;
      *(a1 + 672) = v23 + 8;
      v31 = *a1;
      v32 = *(a1 + 8);
      do
      {
        if (v31 != v32 && *v31 == 69)
        {
          v42 = 0;
          goto LABEL_54;
        }

        result = sub_100015A84(a1, v52);
        if (!result)
        {
          goto LABEL_58;
        }

        v33 = *(a1 + 24);
        if (v33 == *(a1 + 32))
        {
          v34 = result;
          v35 = *(a1 + 16);
          v36 = v33 - v35;
          if (v35 == (a1 + 40))
          {
            v37 = malloc_type_malloc(2 * (v33 - v35), 0x2004093837F09uLL);
            if (!v37)
            {
              goto LABEL_61;
            }

            v38 = *(a1 + 16);
            v39 = *(a1 + 24);
            if (v39 != v38)
            {
              v40 = v37;
              memmove(v37, v38, v39 - v38);
              v37 = v40;
            }

            *(a1 + 16) = v37;
          }

          else
          {
            v37 = malloc_type_realloc(v35, 2 * (v33 - v35), 0x2004093837F09uLL);
            *(a1 + 16) = v37;
            if (!v37)
            {
              goto LABEL_61;
            }
          }

          v33 = &v37[v36];
          *(a1 + 32) = &v37[8 * (v36 >> 2)];
          result = v34;
        }

        *v33 = result;
        *(a1 + 24) = v33 + 8;
        v31 = *a1;
        v32 = *(a1 + 8);
      }

      while (*a1 == v32 || *v31 != 81);
      *a1 = v31 + 1;
      v41 = *(a1 + 778);
      *(a1 + 778) = 1;
      result = sub_10000D7B4(a1);
      *(a1 + 778) = v41;
      if (!result)
      {
LABEL_58:
        *(v50 + 672) = *(v50 + 664) + 8 * v51;
        if (v52[0] != v53)
        {
          v49 = result;
          free(v52[0]);
          return v49;
        }

        return result;
      }

      v31 = *a1;
      if (*a1 == *(a1 + 8) || (v42 = result, *v31 != 69))
      {
        result = 0;
        goto LABEL_58;
      }

LABEL_54:
      *a1 = v31 + 1;
      v43 = sub_10000A1F8(a1, v30);
      v45 = v44;
      v46 = *(a1 + 4904);
      v47 = v46[1];
      if ((v47 - 4032) > 0xFFFFFFFFFFFFF00FLL)
      {
LABEL_57:
        v46[1] = v47 + 48;
        v48 = v46 + v47;
        result = v48 + 16;
        v48[24] = 38;
        *(v48 + 25) = *(v48 + 25) & 0xF000 | 0x500;
        *(v48 + 2) = off_1002D2B10;
        *(v48 + 4) = v20;
        *(v48 + 5) = v43;
        *(v48 + 6) = v45;
        *(v48 + 7) = v42;
        goto LABEL_58;
      }

      v46 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (v46)
      {
        v47 = 0;
        *v46 = *(a1 + 4904);
        v46[1] = 0;
        *(a1 + 4904) = v46;
        goto LABEL_57;
      }

LABEL_62:
      std::terminate();
      break;
  }

  if (*v2 != 28756)
  {
    return 0;
  }

  *a1 = v2 + 1;
  result = sub_100015A84(a1, a2);
  v50 = result;
  if (result)
  {
    return sub_100016440(a1, &v50);
  }

  return result;
}

__n128 sub_100016070(uint64_t a1, __n128 *a2, uint64_t *a3, __int128 *a4, uint64_t *a5, __int128 *a6)
{
  v12 = *(a1 + 4904);
  v13 = v12[1];
  if ((v13 - 4000) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v12 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v12)
    {
      std::terminate();
    }

    v13 = 0;
    *v12 = *(a1 + 4904);
    v12[1] = 0;
    *(a1 + 4904) = v12;
  }

  v12[1] = v13 + 80;
  v14 = v12 + v13;
  v15 = *a3;
  v16 = *a5;
  v14[24] = 52;
  v17 = *(v14 + 25) & 0xF000 | 0x540;
  *(v14 + 2) = off_1002D2BD0;
  result = *a2;
  *(v14 + 6) = v15;
  v19 = *a4;
  *(v14 + 9) = v16;
  v20 = *a6;
  *(v14 + 25) = v17;
  *(v14 + 2) = result;
  *(v14 + 56) = v19;
  *(v14 + 5) = v20;
  return result;
}

char *sub_100016168(uint64_t a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 8) > v6)
  {
    v7 = (v5 + 1000);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_22;
    }

    v5 = a2[1];
  }

  *&v5[v4] = 0x64656D616E6E7527;
  v10 = (a2[1] + 8);
  a2[1] = v10;
  v11 = *(a1 + 24);
  if (v11)
  {
    v12 = *(a1 + 16);
    v13 = v10 + v11;
    v14 = a2[2];
    v15 = *a2;
    if (v10 + v11 > v14)
    {
      if (2 * v14 <= v13 + 992)
      {
        v16 = v13 + 992;
      }

      else
      {
        v16 = 2 * v14;
      }

      a2[2] = v16;
      v15 = malloc_type_realloc(v15, v16, 0x100004077774924uLL);
      *a2 = v15;
      if (!v15)
      {
        goto LABEL_22;
      }

      v10 = a2[1];
    }

    memcpy(&v15[v10], v12, v11);
    v10 = &a2[1][v11];
    a2[1] = v10;
  }

  v17 = a2[2];
  result = *a2;
  if (v10 + 1 > v17)
  {
    v19 = v10 + 993;
    v20 = 2 * v17;
    if (v20 <= v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v20;
    }

    a2[2] = v21;
    result = malloc_type_realloc(result, v21, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v10 = a2[1];
      goto LABEL_21;
    }

LABEL_22:
    abort();
  }

LABEL_21:
  result[v10] = 39;
  ++a2[1];
  return result;
}

char *sub_1000162D0(uint64_t *a1, size_t size)
{
  v2 = size;
  v4 = *a1;
  v5 = *a1 + 4 * size;
  v6 = *(v5 + 792);
  *(v5 + 792) = v6 + 1;
  v7 = *(v4 + 4904);
  v8 = v7[1];
  if ((v8 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v7 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v7)
    {
      std::terminate();
    }

    v8 = 0;
    *v7 = *(v4 + 4904);
    v7[1] = 0;
    *(v4 + 4904) = v7;
  }

  v7[1] = v8 + 32;
  v9 = v7 + v8;
  result = v9 + 16;
  v9[24] = 33;
  *(v9 + 25) = *(v9 + 25) & 0xF000 | 0x540;
  *(v9 + 2) = off_1002D2990;
  *(v9 + 7) = v2;
  *(v9 + 8) = v6;
  v11 = *a1[1];
  if (v11)
  {
    v12 = *(v11 + 8);
    if (v12 == *(v11 + 16))
    {
      v13 = result;
      v14 = &v12[-*v11];
      if (*v11 == v11 + 24)
      {
        v15 = malloc_type_malloc(2 * v14, 0x2004093837F09uLL);
        if (!v15)
        {
          goto LABEL_17;
        }

        v16 = *(v11 + 8);
        if (v16 != *v11)
        {
          v17 = v15;
          memmove(v15, *v11, v16 - *v11);
          v15 = v17;
        }

        *v11 = v15;
      }

      else
      {
        v15 = malloc_type_realloc(*v11, 2 * v14, 0x2004093837F09uLL);
        *v11 = v15;
        if (!v15)
        {
LABEL_17:
          abort();
        }
      }

      v12 = &v15[v14];
      *(v11 + 16) = &v15[8 * (v14 >> 2)];
      result = v13;
    }

    *v12 = result;
    *(v11 + 8) = v12 + 8;
  }

  return result;
}

char *sub_100016440(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 32;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 39;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x500;
  *(v6 + 2) = off_1002D2B70;
  *(v6 + 4) = v8;
  return result;
}

_DWORD *sub_1000164F8(_DWORD *result, char **a2)
{
  v3 = result[3];
  switch(v3)
  {
    case 2:
      v5 = a2 + 1;
      v21 = a2[1];
      v22 = a2[2];
      v23 = *a2;
      if ((v21 + 3) > v22)
      {
        v24 = result;
        v25 = (v21 + 995);
        v26 = 2 * v22;
        if (v26 <= v25)
        {
          v27 = v25;
        }

        else
        {
          v27 = v26;
        }

        a2[2] = v27;
        v28 = malloc_type_realloc(v23, v27, 0x100004077774924uLL);
        *a2 = v28;
        if (!v28)
        {
          goto LABEL_39;
        }

        v23 = v28;
        v21 = *v5;
        result = v24;
      }

      v29 = &v21[v23];
      v29[2] = 84;
      *v29 = 21540;
      v20 = 3;
      goto LABEL_26;
    case 1:
      v5 = a2 + 1;
      v4 = a2[1];
      v14 = a2[2];
      v7 = *a2;
      if ((v4 + 2) > v14)
      {
        v15 = result;
        v16 = (v4 + 994);
        v17 = 2 * v14;
        if (v17 <= v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = v17;
        }

        a2[2] = v18;
        v19 = malloc_type_realloc(v7, v18, 0x100004077774924uLL);
        *a2 = v19;
        if (!v19)
        {
          goto LABEL_39;
        }

        v7 = v19;
        v4 = *v5;
        result = v15;
      }

      v13 = 20004;
      goto LABEL_18;
    case 0:
      v5 = a2 + 1;
      v4 = a2[1];
      v6 = a2[2];
      v7 = *a2;
      if ((v4 + 2) > v6)
      {
        v8 = result;
        v9 = (v4 + 994);
        v10 = 2 * v6;
        if (v10 <= v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = v10;
        }

        a2[2] = v11;
        v12 = malloc_type_realloc(v7, v11, 0x100004077774924uLL);
        *a2 = v12;
        if (!v12)
        {
          goto LABEL_39;
        }

        v7 = v12;
        v4 = *v5;
        result = v8;
      }

      v13 = 21540;
LABEL_18:
      *&v4[v7] = v13;
      v20 = 2;
LABEL_26:
      *v5 += v20;
      break;
  }

  v30 = result[4];
  if (v30)
  {
    v31 = 0;
    v32 = (v30 - 1);
    do
    {
      v40[v31-- + 20] = (v32 % 0xA) | 0x30;
      v33 = v32 >= 9;
      v34 = v32 == 9;
      v32 /= 0xAuLL;
    }

    while (!v34 && v33);
    if (v31)
    {
      v35 = *a2;
      v36 = a2[1];
      v37 = &v36[-v31];
      v38 = a2[2];
      if (&v36[-v31] <= v38)
      {
LABEL_37:
        result = memcpy(&v36[v35], &v40[v31 + 21], -v31);
        a2[1] -= v31;
        return result;
      }

      if (2 * v38 <= (v37 + 992))
      {
        v39 = (v37 + 992);
      }

      else
      {
        v39 = 2 * v38;
      }

      a2[2] = v39;
      v35 = malloc_type_realloc(v35, v39, 0x100004077774924uLL);
      *a2 = v35;
      if (v35)
      {
        v36 = a2[1];
        goto LABEL_37;
      }

LABEL_39:
      abort();
    }
  }

  return result;
}

char *sub_10001679C(uint64_t a1, char **a2)
{
  result = *a2;
  v4 = a2[1];
  v5 = a2[2];
  if ((v4 + 9) > v5)
  {
    v6 = (v4 + 1001);
    v7 = 2 * v5;
    if (v7 <= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    a2[2] = v8;
    result = malloc_type_realloc(result, v8, 0x100004077774924uLL);
    *a2 = result;
    if (!result)
    {
      abort();
    }

    v4 = a2[1];
  }

  v9 = &v4[result];
  *v9 = *"typename ";
  v9[8] = 32;
  a2[1] += 9;
  return result;
}

uint64_t sub_100016830(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  result = (*(*v3 + 32))(v3);
  if ((*(v3 + 9) & 0xC0) != 0x40)
  {
    v5 = *(*v3 + 40);

    return v5(v3, a2);
  }

  return result;
}

void *sub_1000168E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  (*(*v3 + 32))(v3);
  if ((*(v3 + 9) & 0xC0) != 0x40)
  {
    (*(*v3 + 40))(v3, a2);
  }

  result = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v5 + 1 > v6)
  {
    v7 = v5 + 993;
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    *(a2 + 16) = v9;
    result = malloc_type_realloc(result, v9, 0x100004077774924uLL);
    *a2 = result;
    if (!result)
    {
      abort();
    }

    v5 = *(a2 + 8);
  }

  *(result + v5) = 32;
  ++*(a2 + 8);
  return result;
}

uint64_t sub_1000169D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  result = (*(*v3 + 32))(v3);
  if ((*(v3 + 9) & 0xC0) != 0x40)
  {
    v5 = *(*v3 + 40);

    return v5(v3, a2);
  }

  return result;
}

uint64_t sub_100016A88(uint64_t a1, uint64_t *a2)
{
  (*(**(a1 + 24) + 32))(*(a1 + 24));
  result = *(a1 + 24);
  v5 = *(result + 9);
  if ((v5 & 0xC0) == 0x80)
  {
    result = (**result)(result, a2);
    if (result)
    {
      return result;
    }
  }

  else if (v5 < 0x40)
  {
    return result;
  }

  result = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if (v6 + 1 > v7)
  {
    v8 = v6 + 993;
    v9 = 2 * v7;
    if (v9 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    a2[2] = v10;
    result = malloc_type_realloc(result, v10, 0x100004077774924uLL);
    *a2 = result;
    if (!result)
    {
      abort();
    }

    v6 = a2[1];
  }

  *(result + v6) = 32;
  ++a2[1];
  return result;
}

uint64_t sub_100016B88(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  (*(*v4 + 32))(v4);
  if ((*(v4 + 9) & 0xC0) != 0x40)
  {
    (*(*v4 + 40))(v4, a2);
  }

  v5 = *(**(a1 + 24) + 40);

  return v5();
}

char *sub_100016C6C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  *(a2 + 32) = 0;
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v6 + 9 > v7)
  {
    v8 = v6 + 1001;
    v9 = 2 * v7;
    if (v9 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    *(a2 + 16) = v10;
    v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
    *a2 = v5;
    if (!v5)
    {
      goto LABEL_28;
    }

    v6 = *(a2 + 8);
  }

  v11 = &v5[v6];
  *v11 = *"template<";
  v11[8] = 60;
  v12 = *(a2 + 8) + 9;
  *(a2 + 8) = v12;
  if (*(a1 + 32))
  {
    v13 = 0;
    v14 = 1;
    while (1)
    {
      v15 = v12;
      if ((v14 & 1) == 0)
      {
        v16 = *(a2 + 16);
        v17 = *a2;
        if (v12 + 2 <= v16)
        {
          v20 = v12;
        }

        else
        {
          v18 = 2 * v16;
          if (v18 <= v12 + 994)
          {
            v19 = v12 + 994;
          }

          else
          {
            v19 = v18;
          }

          *(a2 + 16) = v19;
          v17 = malloc_type_realloc(v17, v19, 0x100004077774924uLL);
          *a2 = v17;
          if (!v17)
          {
            goto LABEL_28;
          }

          v20 = *(a2 + 8);
        }

        *&v17[v20] = 8236;
        v15 = *(a2 + 8) + 2;
        *(a2 + 8) = v15;
      }

      sub_100006714(*(*(a1 + 24) + 8 * v13), a2, 18, 0);
      if (v15 == *(a2 + 8))
      {
        *(a2 + 8) = v12;
        if (++v13 == *(a1 + 32))
        {
          break;
        }
      }

      else
      {
        v14 = 0;
        v12 = *(a2 + 8);
        if (++v13 == *(a1 + 32))
        {
          break;
        }
      }
    }
  }

  v21 = *(a2 + 16);
  result = *a2;
  if (v12 + 11 > v21)
  {
    v23 = 2 * v21;
    if (v23 <= v12 + 1003)
    {
      v24 = v12 + 1003;
    }

    else
    {
      v24 = v23;
    }

    *(a2 + 16) = v24;
    result = malloc_type_realloc(result, v24, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v12 = *(a2 + 8);
      goto LABEL_27;
    }

LABEL_28:
    abort();
  }

LABEL_27:
  v25 = &result[v12];
  *v25 = *"> typename ";
  *(v25 + 7) = 543518049;
  *(a2 + 8) += 11;
  *(a2 + 32) = v4;
  return result;
}

uint64_t sub_100016E60(uint64_t a1, char **a2)
{
  v4 = *(a1 + 16);
  result = (*(*v4 + 32))(v4);
  if ((*(v4 + 9) & 0xC0) != 0x40)
  {
    result = (*(*v4 + 40))(v4, a2);
  }

  if (*(a1 + 40))
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[2];
    if ((v7 + 10) > v8)
    {
      v9 = (v7 + 1002);
      v10 = 2 * v8;
      if (v10 <= v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = v10;
      }

      a2[2] = v11;
      v6 = malloc_type_realloc(v6, v11, 0x100004077774924uLL);
      *a2 = v6;
      if (!v6)
      {
        abort();
      }

      v7 = a2[1];
    }

    v12 = &v7[v6];
    *v12 = *" requires ";
    *(v12 + 4) = 8307;
    a2[1] += 10;
    v13 = *(a1 + 40);
    result = (*(*v13 + 32))(v13, a2);
    if ((*(v13 + 9) & 0xC0) != 0x40)
    {
      v14 = *(*v13 + 40);

      return v14(v13, a2);
    }
  }

  return result;
}

char *sub_100017010(uint64_t a1, char **a2)
{
  (*(**(a1 + 16) + 32))(*(a1 + 16));
  result = *a2;
  v4 = a2[1];
  v5 = a2[2];
  if ((v4 + 3) > v5)
  {
    v6 = (v4 + 995);
    v7 = 2 * v5;
    if (v7 <= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    a2[2] = v8;
    result = malloc_type_realloc(result, v8, 0x100004077774924uLL);
    *a2 = result;
    if (!result)
    {
      abort();
    }

    v4 = a2[1];
  }

  v9 = &v4[result];
  v9[2] = 46;
  *v9 = 11822;
  a2[1] += 3;
  return result;
}

char *sub_100017104(void *a1, void **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 7) > v6)
  {
    v7 = (v5 + 999);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_24;
    }

    v5 = a2[1];
  }

  v10 = &v5[v4];
  *(v10 + 3) = 1633968749;
  *v10 = 1835101223;
  v11 = a2[1] + 7;
  a2[1] = v11;
  v12 = a1[9];
  if (v12)
  {
    v13 = a1[8];
    v14 = v11 + v12;
    v15 = a2[2];
    v16 = *a2;
    if (v11 + v12 > v15)
    {
      if (2 * v15 <= v14 + 992)
      {
        v17 = v14 + 992;
      }

      else
      {
        v17 = 2 * v15;
      }

      a2[2] = v17;
      v16 = malloc_type_realloc(v16, v17, 0x100004077774924uLL);
      *a2 = v16;
      if (!v16)
      {
        goto LABEL_24;
      }

      v11 = a2[1];
    }

    memcpy(&v16[v11], v13, v12);
    v11 = a2[1] + v12;
    a2[1] = v11;
  }

  v18 = a2[2];
  v19 = *a2;
  if (v11 + 1 <= v18)
  {
    goto LABEL_21;
  }

  v20 = v11 + 993;
  v21 = 2 * v18;
  if (v21 <= v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  a2[2] = v22;
  v19 = malloc_type_realloc(v19, v22, 0x100004077774924uLL);
  *a2 = v19;
  if (!v19)
  {
LABEL_24:
    abort();
  }

  v11 = a2[1];
LABEL_21:
  *(v19 + v11) = 39;
  a2[1] = a2[1] + 1;

  return sub_100017294(a1, a2);
}

char *sub_100017294(void *a1, uint64_t a2)
{
  if (a1[3])
  {
    v4 = *(a2 + 32);
    *(a2 + 32) = 0;
    v5 = *a2;
    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    if (v6 + 1 > v7)
    {
      v8 = v6 + 993;
      v9 = 2 * v7;
      if (v9 <= v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = v9;
      }

      *(a2 + 16) = v10;
      v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
      *a2 = v5;
      if (!v5)
      {
        goto LABEL_83;
      }

      v6 = *(a2 + 8);
    }

    v5[v6] = 60;
    v11 = *(a2 + 8) + 1;
    *(a2 + 8) = v11;
    if (a1[3])
    {
      v12 = 0;
      v13 = 1;
      while (1)
      {
        v14 = v11;
        if ((v13 & 1) == 0)
        {
          v15 = *(a2 + 16);
          v16 = *a2;
          if (v11 + 2 <= v15)
          {
            v19 = v11;
          }

          else
          {
            v17 = 2 * v15;
            if (v17 <= v11 + 994)
            {
              v18 = v11 + 994;
            }

            else
            {
              v18 = v17;
            }

            *(a2 + 16) = v18;
            v16 = malloc_type_realloc(v16, v18, 0x100004077774924uLL);
            *a2 = v16;
            if (!v16)
            {
              goto LABEL_83;
            }

            v19 = *(a2 + 8);
          }

          *&v16[v19] = 8236;
          v14 = *(a2 + 8) + 2;
          *(a2 + 8) = v14;
        }

        sub_100006714(*(a1[2] + 8 * v12), a2, 18, 0);
        if (v14 == *(a2 + 8))
        {
          *(a2 + 8) = v11;
          if (++v12 == a1[3])
          {
            break;
          }
        }

        else
        {
          v13 = 0;
          v11 = *(a2 + 8);
          if (++v12 == a1[3])
          {
            break;
          }
        }
      }
    }

    v20 = *(a2 + 16);
    v21 = *a2;
    if (v11 + 1 > v20)
    {
      v22 = 2 * v20;
      if (v22 <= v11 + 993)
      {
        v23 = v11 + 993;
      }

      else
      {
        v23 = v22;
      }

      *(a2 + 16) = v23;
      v21 = malloc_type_realloc(v21, v23, 0x100004077774924uLL);
      *a2 = v21;
      if (!v21)
      {
        goto LABEL_83;
      }

      v11 = *(a2 + 8);
    }

    v21[v11] = 62;
    ++*(a2 + 8);
    *(a2 + 32) = v4;
  }

  v24 = *(a2 + 8);
  if (a1[4])
  {
    v25 = *(a2 + 16);
    v26 = *a2;
    if (v24 + 10 > v25)
    {
      v27 = v24 + 1002;
      v28 = 2 * v25;
      if (v28 <= v27)
      {
        v29 = v27;
      }

      else
      {
        v29 = v28;
      }

      *(a2 + 16) = v29;
      v26 = malloc_type_realloc(v26, v29, 0x100004077774924uLL);
      *a2 = v26;
      if (!v26)
      {
        goto LABEL_83;
      }

      v24 = *(a2 + 8);
    }

    v30 = &v26[v24];
    *v30 = *" requires ";
    *(v30 + 4) = 8307;
    *(a2 + 8) += 10;
    v31 = a1[4];
    (*(*v31 + 32))(v31, a2);
    if ((*(v31 + 9) & 0xC0) != 0x40)
    {
      (*(*v31 + 40))(v31, a2);
    }

    v32 = *a2;
    v33 = *(a2 + 8);
    v34 = *(a2 + 16);
    if (v33 + 1 > v34)
    {
      v35 = v33 + 993;
      v36 = 2 * v34;
      if (v36 <= v35)
      {
        v37 = v35;
      }

      else
      {
        v37 = v36;
      }

      *(a2 + 16) = v37;
      v32 = malloc_type_realloc(v32, v37, 0x100004077774924uLL);
      *a2 = v32;
      if (!v32)
      {
        goto LABEL_83;
      }

      v33 = *(a2 + 8);
    }

    v32[v33] = 32;
    v24 = *(a2 + 8) + 1;
    *(a2 + 8) = v24;
  }

  ++*(a2 + 32);
  v38 = v24 + 1;
  v39 = *(a2 + 16);
  v40 = *a2;
  if (v24 + 1 > v39)
  {
    v41 = v24 + 993;
    if (2 * v39 <= v41)
    {
      v42 = v41;
    }

    else
    {
      v42 = 2 * v39;
    }

    *(a2 + 16) = v42;
    v40 = malloc_type_realloc(v40, v42, 0x100004077774924uLL);
    *a2 = v40;
    if (!v40)
    {
      goto LABEL_83;
    }

    v24 = *(a2 + 8);
    v38 = v24 + 1;
  }

  *(a2 + 8) = v38;
  v40[v24] = 40;
  v43 = *(a2 + 8);
  if (a1[6])
  {
    v44 = 0;
    v45 = 1;
    while (1)
    {
      v46 = v43;
      if ((v45 & 1) == 0)
      {
        v47 = *(a2 + 16);
        v48 = *a2;
        if (v43 + 2 <= v47)
        {
          v51 = v43;
        }

        else
        {
          v49 = 2 * v47;
          if (v49 <= v43 + 994)
          {
            v50 = v43 + 994;
          }

          else
          {
            v50 = v49;
          }

          *(a2 + 16) = v50;
          v48 = malloc_type_realloc(v48, v50, 0x100004077774924uLL);
          *a2 = v48;
          if (!v48)
          {
            goto LABEL_83;
          }

          v51 = *(a2 + 8);
        }

        *&v48[v51] = 8236;
        v46 = *(a2 + 8) + 2;
        *(a2 + 8) = v46;
      }

      sub_100006714(*(a1[5] + 8 * v44), a2, 18, 0);
      if (v46 == *(a2 + 8))
      {
        *(a2 + 8) = v43;
        if (++v44 == a1[6])
        {
          break;
        }
      }

      else
      {
        v45 = 0;
        v43 = *(a2 + 8);
        if (++v44 == a1[6])
        {
          break;
        }
      }
    }
  }

  --*(a2 + 32);
  v52 = v43 + 1;
  v53 = *(a2 + 16);
  result = *a2;
  if (v43 + 1 > v53)
  {
    v55 = 2 * v53;
    if (v55 <= v43 + 993)
    {
      v56 = v43 + 993;
    }

    else
    {
      v56 = v55;
    }

    *(a2 + 16) = v56;
    result = malloc_type_realloc(result, v56, 0x100004077774924uLL);
    *a2 = result;
    if (!result)
    {
      goto LABEL_83;
    }

    v43 = *(a2 + 8);
    v52 = v43 + 1;
  }

  *(a2 + 8) = v52;
  result[v43] = 41;
  if (!a1[7])
  {
    return result;
  }

  v57 = *a2;
  v58 = *(a2 + 8);
  v59 = *(a2 + 16);
  if (v58 + 10 > v59)
  {
    v60 = v58 + 1002;
    v61 = 2 * v59;
    if (v61 <= v60)
    {
      v62 = v60;
    }

    else
    {
      v62 = v61;
    }

    *(a2 + 16) = v62;
    v57 = malloc_type_realloc(v57, v62, 0x100004077774924uLL);
    *a2 = v57;
    if (v57)
    {
      v58 = *(a2 + 8);
      goto LABEL_78;
    }

LABEL_83:
    abort();
  }

LABEL_78:
  v63 = &v57[v58];
  *v63 = *" requires ";
  *(v63 + 4) = 8307;
  *(a2 + 8) += 10;
  v64 = a1[7];
  result = (*(*v64 + 32))(v64, a2);
  if ((*(v64 + 9) & 0xC0) != 0x40)
  {
    v65 = *(*v64 + 40);

    return v65(v64, a2);
  }

  return result;
}

char *sub_100017800(uint64_t a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 2) > v6)
  {
    v7 = (v5 + 994);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_16;
    }

    v5 = a2[1];
  }

  *&v5[v4] = 23899;
  v10 = (a2[1] + 2);
  a2[1] = v10;
  v11 = *(a1 + 16);
  if (*(v11 + 8) == 52)
  {
    sub_100017294(v11, a2);
    v10 = a2[1];
  }

  v12 = a2[2];
  result = *a2;
  if (v10 + 5 > v12)
  {
    v14 = v10 + 997;
    v15 = 2 * v12;
    if (v15 <= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    a2[2] = v16;
    result = malloc_type_realloc(result, v16, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v10 = a2[1];
      goto LABEL_15;
    }

LABEL_16:
    abort();
  }

LABEL_15:
  v17 = &result[v10];
  v17[4] = 125;
  *v17 = 774778491;
  a2[1] += 5;
  return result;
}

char *sub_100017924(void *a1, char **a2)
{
  ++*(a2 + 8);
  v4 = *a2;
  v5 = a2[1];
  v6 = v5 + 1;
  v7 = a2[2];
  if ((v5 + 1) > v7)
  {
    v8 = (v5 + 993);
    if (2 * v7 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = 2 * v7;
    }

    a2[2] = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_40;
    }

    v5 = a2[1];
    v6 = v5 + 1;
  }

  a2[1] = v6;
  v5[v4] = 40;
  v10 = a1[2];
  (*(*v10 + 32))(v10, a2);
  if ((*(v10 + 9) & 0xC0) != 0x40)
  {
    (*(*v10 + 40))(v10, a2);
  }

  --*(a2 + 8);
  result = *a2;
  v12 = a2[1];
  v13 = v12 + 1;
  v14 = a2[2];
  if ((v12 + 1) > v14)
  {
    v15 = (v12 + 993);
    if (2 * v14 <= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = 2 * v14;
    }

    a2[2] = v16;
    result = malloc_type_realloc(result, v16, 0x100004077774924uLL);
    *a2 = result;
    if (!result)
    {
      goto LABEL_40;
    }

    v12 = a2[1];
    v13 = v12 + 1;
  }

  a2[1] = v13;
  v12[result] = 41;
  v17 = a1[3];
  if (*v17 != 110)
  {
    v24 = a1[4];
    if (!v24)
    {
      return result;
    }

    v33 = *a2;
    v34 = a2[1];
    v35 = &v34[v24];
    v36 = a2[2];
    if (&v34[v24] > v36)
    {
      if (2 * v36 <= (v35 + 992))
      {
        v37 = (v35 + 992);
      }

      else
      {
        v37 = 2 * v36;
      }

      a2[2] = v37;
      v33 = malloc_type_realloc(v33, v37, 0x100004077774924uLL);
      *a2 = v33;
      if (!v33)
      {
        goto LABEL_40;
      }

      v34 = a2[1];
    }

    v31 = &v34[v33];
    v32 = v17;
    goto LABEL_38;
  }

  result = *a2;
  v18 = a2[1];
  v19 = v18 + 1;
  v20 = a2[2];
  if ((v18 + 1) > v20)
  {
    v21 = (v18 + 993);
    if (2 * v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = 2 * v20;
    }

    a2[2] = v22;
    result = malloc_type_realloc(result, v22, 0x100004077774924uLL);
    *a2 = result;
    if (!result)
    {
      goto LABEL_40;
    }

    v18 = a2[1];
    v19 = v18 + 1;
  }

  a2[1] = v19;
  v18[result] = 45;
  v23 = a1[4];
  v24 = v23 - 1;
  if (v23 == 1)
  {
    return result;
  }

  v25 = a1[3];
  v26 = *a2;
  v27 = a2[1];
  v28 = &v27[v24];
  v29 = a2[2];
  if (&v27[v24] <= v29)
  {
    goto LABEL_29;
  }

  if (2 * v29 <= (v28 + 992))
  {
    v30 = (v28 + 992);
  }

  else
  {
    v30 = 2 * v29;
  }

  a2[2] = v30;
  v26 = malloc_type_realloc(v26, v30, 0x100004077774924uLL);
  *a2 = v26;
  if (!v26)
  {
LABEL_40:
    abort();
  }

  v27 = a2[1];
LABEL_29:
  v31 = &v27[v26];
  v32 = (v25 + 1);
LABEL_38:
  result = memcpy(v31, v32, v24);
  a2[1] += v24;
  return result;
}

__n128 sub_100017BB4(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 32;
  v6 = v4 + v5;
  v6[24] = 67;
  v7 = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = off_1002D2CF0;
  result = *a2;
  *(v6 + 25) = v7;
  *(v6 + 2) = result;
  return result;
}

char *sub_100017C6C(uint64_t a1, char **a2)
{
  result = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 2) > v6)
  {
    v7 = (v5 + 994);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    result = malloc_type_realloc(result, v9, 0x100004077774924uLL);
    *a2 = result;
    if (!result)
    {
      goto LABEL_16;
    }

    v5 = a2[1];
  }

  *&v5[result] = 28774;
  v10 = (a2[1] + 2);
  a2[1] = v10;
  v11 = *(a1 + 24);
  if (!v11)
  {
    return result;
  }

  v12 = *(a1 + 16);
  v13 = v10 + v11;
  v14 = a2[2];
  v15 = *a2;
  if (v10 + v11 > v14)
  {
    if (2 * v14 <= v13 + 992)
    {
      v16 = v13 + 992;
    }

    else
    {
      v16 = 2 * v14;
    }

    a2[2] = v16;
    v15 = malloc_type_realloc(v15, v16, 0x100004077774924uLL);
    *a2 = v15;
    if (v15)
    {
      v10 = a2[1];
      goto LABEL_14;
    }

LABEL_16:
    abort();
  }

LABEL_14:
  result = memcpy(&v15[v10], v12, v11);
  a2[1] += v11;
  return result;
}

char *sub_100017D80(uint64_t a1, uint64_t a2)
{
  v59[0] = a2;
  v59[1] = a1;
  ++*(a2 + 32);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = v5 + 1;
  v7 = *(a2 + 16);
  if (v5 + 1 > v7)
  {
    v8 = v5 + 993;
    if (2 * v7 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = 2 * v7;
    }

    *(a2 + 16) = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_71;
    }

    v5 = *(a2 + 8);
    v6 = v5 + 1;
  }

  *(a2 + 8) = v6;
  v4[v5] = 40;
  if (*(a1 + 48) != 1)
  {
    sub_100018194(v59);
    v11 = *a2;
    v12 = *(a2 + 8);
    v13 = *(a2 + 16);
    if (v12 + 1 <= v13)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  v10 = *(a1 + 24);
  if (!v10)
  {
    v30 = *(a2 + 8);
    v29 = *(a2 + 16);
    v31 = *a2;
    if (v30 + 3 <= v29)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  sub_100006714(v10, a2, 3, 1);
  v11 = *a2;
  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  if (v12 + 1 > v13)
  {
LABEL_12:
    v14 = v12 + 993;
    v15 = 2 * v13;
    if (v15 <= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    *(a2 + 16) = v16;
    v11 = malloc_type_realloc(v11, v16, 0x100004077774924uLL);
    *a2 = v11;
    if (!v11)
    {
      goto LABEL_71;
    }

    v12 = *(a2 + 8);
  }

LABEL_17:
  v11[v12] = 32;
  v17 = *(a2 + 8) + 1;
  *(a2 + 8) = v17;
  v18 = *(a1 + 40);
  if (v18)
  {
    v19 = *(a1 + 32);
    v20 = v17 + v18;
    v21 = *(a2 + 16);
    v22 = *a2;
    if (v17 + v18 > v21)
    {
      if (2 * v21 <= v20 + 992)
      {
        v23 = v20 + 992;
      }

      else
      {
        v23 = 2 * v21;
      }

      *(a2 + 16) = v23;
      v22 = malloc_type_realloc(v22, v23, 0x100004077774924uLL);
      *a2 = v22;
      if (!v22)
      {
        goto LABEL_71;
      }

      v17 = *(a2 + 8);
    }

    memcpy(&v22[v17], v19, v18);
    v17 = *(a2 + 8) + v18;
    *(a2 + 8) = v17;
  }

  v24 = *(a2 + 16);
  v25 = *a2;
  if (v17 + 1 > v24)
  {
    v26 = v17 + 993;
    v27 = 2 * v24;
    if (v27 <= v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = v27;
    }

    *(a2 + 16) = v28;
    v25 = malloc_type_realloc(v25, v28, 0x100004077774924uLL);
    *a2 = v25;
    if (!v25)
    {
      goto LABEL_71;
    }

    v17 = *(a2 + 8);
  }

  v25[v17] = 32;
  v29 = *(a2 + 16);
  v30 = *(a2 + 8) + 1;
  *(a2 + 8) = v30;
  v31 = *a2;
  if (v30 + 3 > v29)
  {
LABEL_32:
    v32 = v30 + 995;
    v33 = 2 * v29;
    if (v33 <= v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = v33;
    }

    *(a2 + 16) = v34;
    v31 = malloc_type_realloc(v31, v34, 0x100004077774924uLL);
    *a2 = v31;
    if (!v31)
    {
      goto LABEL_71;
    }

    v30 = *(a2 + 8);
  }

LABEL_37:
  v35 = &v31[v30];
  v35[2] = 46;
  *v35 = 11822;
  v36 = *(a2 + 8);
  v37 = v36 + 3;
  *(a2 + 8) = v36 + 3;
  if ((*(a1 + 48) & 1) != 0 || *(a1 + 24))
  {
    v38 = *(a2 + 16);
    v39 = *a2;
    if (v36 + 4 > v38)
    {
      if (2 * v38 <= v36 + 996)
      {
        v40 = v36 + 996;
      }

      else
      {
        v40 = 2 * v38;
      }

      *(a2 + 16) = v40;
      v39 = malloc_type_realloc(v39, v40, 0x100004077774924uLL);
      *a2 = v39;
      if (!v39)
      {
        goto LABEL_71;
      }

      v37 = *(a2 + 8);
    }

    v39[v37] = 32;
    v41 = *(a2 + 8) + 1;
    *(a2 + 8) = v41;
    v42 = *(a1 + 40);
    if (v42)
    {
      v43 = *(a1 + 32);
      v44 = v41 + v42;
      v45 = *(a2 + 16);
      v46 = *a2;
      if (v41 + v42 > v45)
      {
        if (2 * v45 <= v44 + 992)
        {
          v47 = v44 + 992;
        }

        else
        {
          v47 = 2 * v45;
        }

        *(a2 + 16) = v47;
        v46 = malloc_type_realloc(v46, v47, 0x100004077774924uLL);
        *a2 = v46;
        if (!v46)
        {
          goto LABEL_71;
        }

        v41 = *(a2 + 8);
      }

      memcpy(&v46[v41], v43, v42);
      v41 = *(a2 + 8) + v42;
      *(a2 + 8) = v41;
    }

    v48 = *(a2 + 16);
    v49 = *a2;
    if (v41 + 1 > v48)
    {
      v50 = v41 + 993;
      v51 = 2 * v48;
      if (v51 <= v50)
      {
        v52 = v50;
      }

      else
      {
        v52 = v51;
      }

      *(a2 + 16) = v52;
      v49 = malloc_type_realloc(v49, v52, 0x100004077774924uLL);
      *a2 = v49;
      if (!v49)
      {
        goto LABEL_71;
      }

      v41 = *(a2 + 8);
    }

    v49[v41] = 32;
    ++*(a2 + 8);
    if (*(a1 + 48) == 1)
    {
      sub_100018194(v59);
    }

    else
    {
      sub_100006714(*(a1 + 24), a2, 3, 1);
    }
  }

  --*(a2 + 32);
  result = *a2;
  v54 = *(a2 + 8);
  v55 = v54 + 1;
  v56 = *(a2 + 16);
  if (v54 + 1 > v56)
  {
    v57 = v54 + 993;
    if (2 * v56 <= v57)
    {
      v58 = v57;
    }

    else
    {
      v58 = 2 * v56;
    }

    *(a2 + 16) = v58;
    result = malloc_type_realloc(result, v58, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v54 = *(a2 + 8);
      v55 = v54 + 1;
      goto LABEL_68;
    }

LABEL_71:
    abort();
  }

LABEL_68:
  *(a2 + 8) = v55;
  result[v54] = 41;
  return result;
}

void *sub_100018194(char ***a1)
{
  v3 = *a1;
  v2 = a1[1];
  *(v3 + 8) = *(*a1 + 8) + 1;
  v4 = *v3;
  v5 = v3[1];
  v6 = v5 + 1;
  v7 = v3[2];
  if ((v5 + 1) > v7)
  {
    v8 = (v5 + 993);
    if (2 * v7 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = 2 * v7;
    }

    v3[2] = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *v3 = v4;
    if (!v4)
    {
      goto LABEL_16;
    }

    v5 = v3[1];
    v6 = v5 + 1;
  }

  v3[1] = v6;
  v5[v4] = 40;
  v10 = v2[2];
  v20 = 42;
  v21 = 1344;
  v19 = off_1002D2DB0;
  v22 = v10;
  v11 = *a1;
  sub_100018320(&v19, *a1);
  if ((v21 & 0xC0) != 0x40)
  {
    (v19[5])(&v19, v11);
  }

  v12 = *a1;
  --*(v12 + 8);
  result = *v12;
  v14 = v12[1];
  v15 = v14 + 1;
  v16 = v12[2];
  if ((v14 + 1) > v16)
  {
    v17 = (v14 + 993);
    if (2 * v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = 2 * v16;
    }

    v12[2] = v18;
    result = malloc_type_realloc(result, v18, 0x100004077774924uLL);
    *v12 = result;
    if (result)
    {
      v14 = v12[1];
      v15 = v14 + 1;
      goto LABEL_15;
    }

LABEL_16:
    abort();
  }

LABEL_15:
  v12[1] = v15;
  v14[result] = 41;
  return result;
}

uint64_t sub_100018320(uint64_t a1, char **a2)
{
  v4 = a2[3];
  a2[3] = -1;
  v5 = a2[1];
  v6 = *(a1 + 16);
  result = (*(*v6 + 32))(v6);
  if ((*(v6 + 9) & 0xC0) != 0x40)
  {
    result = (*(*v6 + 40))(v6, a2);
  }

  v8 = *(a2 + 7);
  if (v8 == -1)
  {
    result = *a2;
    v17 = a2[1];
    v18 = a2[2];
    if ((v17 + 3) > v18)
    {
      v19 = (v17 + 995);
      v20 = 2 * v18;
      if (v20 <= v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = v20;
      }

      a2[2] = v21;
      result = malloc_type_realloc(result, v21, 0x100004077774924uLL);
      *a2 = result;
      if (!result)
      {
LABEL_25:
        abort();
      }

      v17 = a2[1];
    }

    v22 = &v17[result];
    v22[2] = 46;
    *v22 = 11822;
    v5 = (a2[1] + 3);
    goto LABEL_23;
  }

  if (!v8)
  {
LABEL_23:
    a2[1] = v5;
    goto LABEL_24;
  }

  if (v8 >= 2)
  {
    for (i = 1; i != v8; ++i)
    {
      v10 = *a2;
      v11 = a2[1];
      v12 = a2[2];
      if ((v11 + 2) > v12)
      {
        v13 = (v11 + 994);
        v14 = 2 * v12;
        if (v14 <= v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = v14;
        }

        a2[2] = v15;
        v10 = malloc_type_realloc(v10, v15, 0x100004077774924uLL);
        *a2 = v10;
        if (!v10)
        {
          goto LABEL_25;
        }

        v11 = a2[1];
      }

      *&v11[v10] = 8236;
      a2[1] += 2;
      *(a2 + 6) = i;
      v16 = *(a1 + 16);
      result = (*(*v16 + 32))(v16, a2);
      if ((*(v16 + 9) & 0xC0) != 0x40)
      {
        result = (*(*v16 + 40))(v16, a2);
      }
    }
  }

LABEL_24:
  a2[3] = v4;
  return result;
}

uint64_t sub_100018560(uint64_t a1, char **a2)
{
  v4 = *(a1 + 32);
  v5 = *a2;
  v6 = a2[1];
  v7 = v6 + 1;
  v8 = a2[2];
  if (v4 == 1)
  {
    if (v7 > v8)
    {
      v9 = (v6 + 993);
      if (2 * v8 <= v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = 2 * v8;
      }

      a2[2] = v10;
      v5 = malloc_type_realloc(v5, v10, 0x100004077774924uLL);
      *a2 = v5;
      if (!v5)
      {
        goto LABEL_37;
      }

      v6 = a2[1];
      v7 = v6 + 1;
    }

    a2[1] = v7;
    v6[v5] = 91;
    v11 = *(a1 + 16);
    (*(*v11 + 32))(v11, a2);
    if ((*(v11 + 9) & 0xC0) != 0x40)
    {
      (*(*v11 + 40))(v11, a2);
    }

    v12 = *a2;
    v13 = a2[1];
    v14 = v13 + 1;
    v15 = a2[2];
    if ((v13 + 1) > v15)
    {
      v16 = (v13 + 993);
      if (2 * v15 <= v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = 2 * v15;
      }

      a2[2] = v17;
      v12 = malloc_type_realloc(v12, v17, 0x100004077774924uLL);
      *a2 = v12;
      if (!v12)
      {
        goto LABEL_37;
      }

      v13 = a2[1];
      v14 = v13 + 1;
    }

    a2[1] = v14;
    v13[v12] = 93;
  }

  else
  {
    if (v7 > v8)
    {
      v18 = (v6 + 993);
      if (2 * v8 <= v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = 2 * v8;
      }

      a2[2] = v19;
      v5 = malloc_type_realloc(v5, v19, 0x100004077774924uLL);
      *a2 = v5;
      if (!v5)
      {
        goto LABEL_37;
      }

      v6 = a2[1];
      v7 = v6 + 1;
    }

    a2[1] = v7;
    v6[v5] = 46;
    v20 = *(a1 + 16);
    (*(*v20 + 32))(v20, a2);
    if ((*(v20 + 9) & 0xC0) != 0x40)
    {
      (*(*v20 + 40))(v20, a2);
    }
  }

  v21 = *(a1 + 24);
  if (*(v21 + 8) - 81 < 2)
  {
    goto LABEL_33;
  }

  v22 = *a2;
  v23 = a2[1];
  v24 = a2[2];
  if ((v23 + 3) > v24)
  {
    v25 = (v23 + 995);
    v26 = 2 * v24;
    if (v26 <= v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = v26;
    }

    a2[2] = v27;
    v22 = malloc_type_realloc(v22, v27, 0x100004077774924uLL);
    *a2 = v22;
    if (v22)
    {
      v23 = a2[1];
      goto LABEL_32;
    }

LABEL_37:
    abort();
  }

LABEL_32:
  v28 = &v23[v22];
  v28[2] = 32;
  *v28 = 15648;
  a2[1] += 3;
  v21 = *(a1 + 24);
LABEL_33:
  result = (*(*v21 + 32))(v21, a2);
  if ((*(v21 + 9) & 0xC0) != 0x40)
  {
    v30 = *(*v21 + 40);

    return v30(v21, a2);
  }

  return result;
}

uint64_t sub_100018890(void *a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = v5 + 1;
  v7 = a2[2];
  if ((v5 + 1) > v7)
  {
    v8 = (v5 + 993);
    if (2 * v7 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = 2 * v7;
    }

    a2[2] = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_35;
    }

    v5 = a2[1];
    v6 = v5 + 1;
  }

  a2[1] = v6;
  v5[v4] = 91;
  v10 = a1[2];
  (*(*v10 + 32))(v10, a2);
  if ((*(v10 + 9) & 0xC0) != 0x40)
  {
    (*(*v10 + 40))(v10, a2);
  }

  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  if ((v12 + 5) > v13)
  {
    v14 = (v12 + 997);
    v15 = 2 * v13;
    if (v15 <= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    a2[2] = v16;
    v11 = malloc_type_realloc(v11, v16, 0x100004077774924uLL);
    *a2 = v11;
    if (!v11)
    {
      goto LABEL_35;
    }

    v12 = a2[1];
  }

  v17 = &v12[v11];
  v17[4] = 32;
  *v17 = 774778400;
  a2[1] += 5;
  v18 = a1[3];
  (*(*v18 + 32))(v18, a2);
  if ((*(v18 + 9) & 0xC0) != 0x40)
  {
    (*(*v18 + 40))(v18, a2);
  }

  v19 = *a2;
  v20 = a2[1];
  v21 = v20 + 1;
  v22 = a2[2];
  if ((v20 + 1) > v22)
  {
    v23 = (v20 + 993);
    if (2 * v22 <= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = 2 * v22;
    }

    a2[2] = v24;
    v19 = malloc_type_realloc(v19, v24, 0x100004077774924uLL);
    *a2 = v19;
    if (!v19)
    {
      goto LABEL_35;
    }

    v20 = a2[1];
    v21 = v20 + 1;
  }

  a2[1] = v21;
  v20[v19] = 93;
  v25 = a1[4];
  if (*(v25 + 8) - 81 < 2)
  {
    goto LABEL_31;
  }

  v26 = *a2;
  v27 = a2[1];
  v28 = a2[2];
  if ((v27 + 3) > v28)
  {
    v29 = (v27 + 995);
    v30 = 2 * v28;
    if (v30 <= v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = v30;
    }

    a2[2] = v31;
    v26 = malloc_type_realloc(v26, v31, 0x100004077774924uLL);
    *a2 = v26;
    if (v26)
    {
      v27 = a2[1];
      goto LABEL_30;
    }

LABEL_35:
    abort();
  }

LABEL_30:
  v32 = &v27[v26];
  v32[2] = 32;
  *v32 = 15648;
  a2[1] += 3;
  v25 = a1[4];
LABEL_31:
  result = (*(*v25 + 32))(v25, a2);
  if ((*(v25 + 9) & 0xC0) != 0x40)
  {
    v34 = *(*v25 + 40);

    return v34(v25, a2);
  }

  return result;
}

uint64_t sub_100018BB0(void *a1, uint64_t *a2)
{
  v4 = a1[2];
  if (v4)
  {
    result = (*(*v4 + 48))(v4, a2, a1 + 3);
    if (result)
    {
      return result;
    }

    v6 = a1[2];
    (*(*v6 + 32))(v6, a2);
    if ((*(v6 + 9) & 0xC0) != 0x40)
    {
      (*(*v6 + 40))(v6, a2);
    }
  }

  v7 = *a2;
  v8 = a2[1];
  v9 = v8 + 1;
  v10 = a2[2];
  if (v8 + 1 > v10)
  {
    v11 = v8 + 993;
    if (2 * v10 <= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = 2 * v10;
    }

    a2[2] = v12;
    v7 = malloc_type_realloc(v7, v12, 0x100004077774924uLL);
    *a2 = v7;
    if (!v7)
    {
      goto LABEL_33;
    }

    v8 = a2[1];
    v9 = v8 + 1;
  }

  a2[1] = v9;
  v7[v8] = 123;
  v13 = a2[1];
  if (a1[4])
  {
    v14 = 0;
    v15 = 1;
    while (1)
    {
      v16 = v13;
      if ((v15 & 1) == 0)
      {
        v17 = a2[2];
        v18 = *a2;
        if (v13 + 2 <= v17)
        {
          v21 = v13;
        }

        else
        {
          v19 = 2 * v17;
          if (v19 <= v13 + 994)
          {
            v20 = v13 + 994;
          }

          else
          {
            v20 = v19;
          }

          a2[2] = v20;
          v18 = malloc_type_realloc(v18, v20, 0x100004077774924uLL);
          *a2 = v18;
          if (!v18)
          {
            goto LABEL_33;
          }

          v21 = a2[1];
        }

        *&v18[v21] = 8236;
        v16 = a2[1] + 2;
        a2[1] = v16;
      }

      sub_100006714(*(a1[3] + 8 * v14), a2, 18, 0);
      if (v16 == a2[1])
      {
        a2[1] = v13;
        if (++v14 == a1[4])
        {
          break;
        }
      }

      else
      {
        v15 = 0;
        v13 = a2[1];
        if (++v14 == a1[4])
        {
          break;
        }
      }
    }
  }

  v22 = v13 + 1;
  v23 = a2[2];
  result = *a2;
  if (v13 + 1 <= v23)
  {
    goto LABEL_31;
  }

  v24 = 2 * v23;
  if (v24 <= v13 + 993)
  {
    v25 = v13 + 993;
  }

  else
  {
    v25 = v24;
  }

  a2[2] = v25;
  result = malloc_type_realloc(result, v25, 0x100004077774924uLL);
  *a2 = result;
  if (!result)
  {
LABEL_33:
    abort();
  }

  v13 = a2[1];
  v22 = v13 + 1;
LABEL_31:
  a2[1] = v22;
  *(result + v13) = 125;
  return result;
}

void *sub_100018E1C(uint64_t a1, uint64_t a2)
{
  ++*(a2 + 32);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = v5 + 1;
  v7 = *(a2 + 16);
  if (v5 + 1 > v7)
  {
    v8 = v5 + 993;
    if (2 * v7 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = 2 * v7;
    }

    *(a2 + 16) = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_30;
    }

    v5 = *(a2 + 8);
    v6 = v5 + 1;
  }

  *(a2 + 8) = v6;
  *(v4 + v5) = 40;
  v10 = *(a1 + 16);
  (*(*v10 + 32))(v10, a2);
  if ((*(v10 + 9) & 0xC0) != 0x40)
  {
    (*(*v10 + 40))(v10, a2);
  }

  --*(a2 + 32);
  v11 = *a2;
  v12 = *(a2 + 8);
  v13 = v12 + 1;
  v14 = *(a2 + 16);
  if (v12 + 1 > v14)
  {
    v15 = v12 + 993;
    if (2 * v14 <= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = 2 * v14;
    }

    *(a2 + 16) = v16;
    v11 = malloc_type_realloc(v11, v16, 0x100004077774924uLL);
    *a2 = v11;
    if (!v11)
    {
      goto LABEL_30;
    }

    v12 = *(a2 + 8);
    v13 = v12 + 1;
  }

  *(a2 + 8) = v13;
  *(v11 + v12) = 41;
  ++*(a2 + 32);
  v17 = *a2;
  v18 = *(a2 + 8);
  v19 = v18 + 1;
  v20 = *(a2 + 16);
  if (v18 + 1 > v20)
  {
    v21 = v18 + 993;
    if (2 * v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = 2 * v20;
    }

    *(a2 + 16) = v22;
    v17 = malloc_type_realloc(v17, v22, 0x100004077774924uLL);
    *a2 = v17;
    if (!v17)
    {
      goto LABEL_30;
    }

    v18 = *(a2 + 8);
    v19 = v18 + 1;
  }

  *(a2 + 8) = v19;
  *(v17 + v18) = 40;
  v23 = *(a1 + 24);
  (*(*v23 + 32))(v23, a2);
  if ((*(v23 + 9) & 0xC0) != 0x40)
  {
    (*(*v23 + 40))(v23, a2);
  }

  --*(a2 + 32);
  result = *a2;
  v25 = *(a2 + 8);
  v26 = v25 + 1;
  v27 = *(a2 + 16);
  if (v25 + 1 > v27)
  {
    v28 = v25 + 993;
    if (2 * v27 <= v28)
    {
      v29 = v28;
    }

    else
    {
      v29 = 2 * v27;
    }

    *(a2 + 16) = v29;
    result = malloc_type_realloc(result, v29, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v25 = *(a2 + 8);
      v26 = v25 + 1;
      goto LABEL_29;
    }

LABEL_30:
    abort();
  }

LABEL_29:
  *(a2 + 8) = v26;
  *(result + v25) = 41;
  return result;
}

char *sub_1000190AC(uint64_t a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 1) > v6)
  {
    v7 = (v5 + 993);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_50;
    }

    v5 = a2[1];
  }

  v5[v4] = 32;
  v10 = a2[1];
  v11 = v10 + 1;
  a2[1] = v10 + 1;
  if ((*(a1 + 24) & 1) != 0 || *(a1 + 32))
  {
    ++*(a2 + 8);
    v12 = v10 + 2;
    v13 = a2[2];
    v14 = *a2;
    if ((v10 + 2) > v13)
    {
      if (2 * v13 <= (v10 + 994))
      {
        v15 = (v10 + 994);
      }

      else
      {
        v15 = 2 * v13;
      }

      a2[2] = v15;
      v14 = malloc_type_realloc(v14, v15, 0x100004077774924uLL);
      *a2 = v14;
      if (!v14)
      {
        goto LABEL_50;
      }

      v11 = a2[1];
      v12 = v11 + 1;
    }

    a2[1] = v12;
    v11[v14] = 123;
  }

  v16 = *(a1 + 16);
  (*(*v16 + 32))(v16, a2);
  if ((*(v16 + 9) & 0xC0) != 0x40)
  {
    (*(*v16 + 40))(v16, a2);
  }

  if ((*(a1 + 24) & 1) != 0 || *(a1 + 32))
  {
    --*(a2 + 8);
    v17 = *a2;
    v18 = a2[1];
    v19 = v18 + 1;
    v20 = a2[2];
    if ((v18 + 1) > v20)
    {
      v21 = (v18 + 993);
      if (2 * v20 <= v21)
      {
        v22 = v21;
      }

      else
      {
        v22 = 2 * v20;
      }

      a2[2] = v22;
      v17 = malloc_type_realloc(v17, v22, 0x100004077774924uLL);
      *a2 = v17;
      if (!v17)
      {
        goto LABEL_50;
      }

      v18 = a2[1];
      v19 = v18 + 1;
    }

    a2[1] = v19;
    v18[v17] = 125;
    if (*(a1 + 24))
    {
      v23 = *a2;
      v24 = a2[1];
      v25 = a2[2];
      if ((v24 + 9) > v25)
      {
        v26 = (v24 + 1001);
        v27 = 2 * v25;
        if (v27 <= v26)
        {
          v28 = v26;
        }

        else
        {
          v28 = v27;
        }

        a2[2] = v28;
        v23 = malloc_type_realloc(v23, v28, 0x100004077774924uLL);
        *a2 = v23;
        if (!v23)
        {
          goto LABEL_50;
        }

        v24 = a2[1];
      }

      v29 = &v24[v23];
      *v29 = *" noexcept";
      v29[8] = 116;
      a2[1] += 9;
    }
  }

  if (*(a1 + 32))
  {
    v30 = *a2;
    v31 = a2[1];
    v32 = a2[2];
    if ((v31 + 4) > v32)
    {
      v33 = (v31 + 996);
      v34 = 2 * v32;
      if (v34 <= v33)
      {
        v35 = v33;
      }

      else
      {
        v35 = v34;
      }

      a2[2] = v35;
      v30 = malloc_type_realloc(v30, v35, 0x100004077774924uLL);
      *a2 = v30;
      if (!v30)
      {
        goto LABEL_50;
      }

      v31 = a2[1];
    }

    *&v31[v30] = 540945696;
    a2[1] += 4;
    v36 = *(a1 + 32);
    (*(*v36 + 32))(v36, a2);
    if ((*(v36 + 9) & 0xC0) != 0x40)
    {
      (*(*v36 + 40))(v36, a2);
    }
  }

  result = *a2;
  v38 = a2[1];
  v39 = v38 + 1;
  v40 = a2[2];
  if ((v38 + 1) > v40)
  {
    v41 = (v38 + 993);
    if (2 * v40 <= v41)
    {
      v42 = v41;
    }

    else
    {
      v42 = 2 * v40;
    }

    a2[2] = v42;
    result = malloc_type_realloc(result, v42, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v38 = a2[1];
      v39 = v38 + 1;
      goto LABEL_49;
    }

LABEL_50:
    abort();
  }

LABEL_49:
  a2[1] = v39;
  v38[result] = 59;
  return result;
}

char *sub_100019410(uint64_t a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 10) > v6)
  {
    v7 = (v5 + 1002);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_16;
    }

    v5 = a2[1];
  }

  v10 = &v5[v4];
  *v10 = *" typename ";
  *(v10 + 4) = 8293;
  a2[1] += 10;
  v11 = *(a1 + 16);
  (*(*v11 + 32))(v11, a2);
  if ((*(v11 + 9) & 0xC0) != 0x40)
  {
    (*(*v11 + 40))(v11, a2);
  }

  result = *a2;
  v13 = a2[1];
  v14 = v13 + 1;
  v15 = a2[2];
  if ((v13 + 1) > v15)
  {
    v16 = (v13 + 993);
    if (2 * v15 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = 2 * v15;
    }

    a2[2] = v17;
    result = malloc_type_realloc(result, v17, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v13 = a2[1];
      v14 = v13 + 1;
      goto LABEL_15;
    }

LABEL_16:
    abort();
  }

LABEL_15:
  a2[1] = v14;
  v13[result] = 59;
  return result;
}