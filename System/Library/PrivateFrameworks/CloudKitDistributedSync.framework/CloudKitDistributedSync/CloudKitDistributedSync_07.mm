uint64_t sub_243909A68(uint64_t a1, uint64_t a2, _DWORD *a3, int a4, int a5, int a6, int a7)
{
  v12 = a3[6];
  if ((a7 || !*(a1 + 140)) && (v12 == 1 || a4 == 1 && (v12 - 3) < 3))
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
    v17 = "\n";
    *a1 = "\n";
    v18 = *(a2 + 16);
    *(a2 + 32) = v18;
  }

  else
  {
    v17 = *a1;
    v16 = *(a1 + 8);
    v18 = *(a2 + 16);
  }

  *(a1 + 300) = 0;
  v19 = v17 - v16;
  *(a1 + 24) = v19;
  *(a1 + 28) = v19;
  *(a1 + 44) = v19;
  *(a1 + 48) = v14;
  *(a1 + 40) = 0;
  *(a1 + 196) = 0;
  *(a1 + 248) = 0;
  *(a2 + 24) = v18;
  if (*(a2 + 64))
  {
    v20 = v18;
LABEL_31:
    v26 = v20 + (4 << v15);
    if (v26 <= *(a2 + 40))
    {
      *(a2 + 24) = v26;
    }

    else
    {
      *(a2 + 56) = 1;
      v26 = v20;
      v20 = 0;
    }

    *(a1 + 112) = v20;
LABEL_35:
    v32 = v26 + v13;
    if (v32 <= *(a2 + 40))
    {
      *(a2 + 24) = v32;
    }

    else
    {
      *(a2 + 56) = 1;
      v32 = v26;
      v26 = 0;
    }

    *(a1 + 128) = v26;
    if (v14)
    {
      v28 = 4 << v14;
    }

    else
    {
      v28 = 0;
    }

LABEL_41:
    v18 = v32 + v28;
    if (v32 + v28 <= *(a2 + 40))
    {
      *(a2 + 24) = v18;
      v27 = v32;
    }

    else
    {
      v27 = 0;
      *(a2 + 56) = 1;
      v18 = v32;
    }

    goto LABEL_44;
  }

  *(a2 + 32) = v18;
  v21 = *(a2 + 8);
  *(a2 + 48) = v21 & 0xFFFFFFFFFFFFFFC0;
  v22 = -v18 & 0x3FLL;
  v20 = v18 + v22;
  if (v18 + v22 <= v21)
  {
    *(a2 + 16) = v20;
    *(a2 + 24) = v20;
    if (v22)
    {
      *(a2 + 32) = v20;
    }

    *(a2 + 64) = 1;
    goto LABEL_31;
  }

  *(a1 + 112) = 0;
  v24 = *(a2 + 8);
  v23 = *(a2 + 16);
  *(a2 + 32) = v23;
  *(a2 + 48) = v24 & 0xFFFFFFFFFFFFFFC0;
  v25 = -v23 & 0x3FLL;
  v26 = v23 + v25;
  if (v26 <= v24)
  {
    *(a2 + 16) = v26;
    *(a2 + 24) = v26;
    if (v25)
    {
      *(a2 + 32) = v26;
    }

    *(a2 + 64) = 1;
    goto LABEL_35;
  }

  v27 = 0;
  *(a1 + 128) = 0;
  if (v14)
  {
    v28 = 4 << v14;
  }

  else
  {
    v28 = 0;
  }

  v30 = *(a2 + 8);
  v29 = *(a2 + 16);
  *(a2 + 32) = v29;
  *(a2 + 48) = v30 & 0xFFFFFFFFFFFFFFC0;
  v31 = -v29 & 0x3FLL;
  v32 = v29 + v31;
  if (v32 <= v30)
  {
    *(a2 + 16) = v32;
    *(a2 + 24) = v32;
    if (v31)
    {
      *(a2 + 32) = v32;
    }

    *(a2 + 64) = 1;
    goto LABEL_41;
  }

LABEL_44:
  *(a1 + 120) = v27;
  if (*(a2 + 56))
  {
    return -64;
  }

  if (a5 != 1)
  {
    v34 = *(a2 + 32);
    if (v34 < v18)
    {
      bzero(v34, v18 - v34);
      v18 = *(a2 + 24);
      v34 = *(a2 + 32);
    }

    if (v34 < v18)
    {
      *(a2 + 32) = v18;
    }
  }

  if (a4 == 1 && (a3[6] - 6) >= 0xFFFFFFFD)
  {
    v35 = ((1 << v15) + 63) & 0xFFFFFFFFFFFFFFC0;
    v36 = *(a2 + 64);
    if (a7 == 1)
    {
      if (!v36)
      {
        v38 = *(a2 + 8);
        v37 = *(a2 + 16);
        *(a2 + 32) = v37;
        *(a2 + 48) = v38 & 0xFFFFFFFFFFFFFFC0;
        v39 = -v37 & 0x3FLL;
        v18 = v37 + v39;
        if (v18 > v38)
        {
          goto LABEL_71;
        }

        *(a2 + 16) = v18;
        *(a2 + 24) = v18;
        if (v39)
        {
          *(a2 + 32) = v18;
        }

        *(a2 + 64) = 1;
      }

      if (v35)
      {
        v40 = (*(a2 + 40) - v35);
        if (v40 >= v18)
        {
          if (v40 < *(a2 + 32))
          {
            *(a2 + 32) = v40;
          }

          *(a2 + 40) = v40;
          v42 = *(a2 + 48);
          if (v40 < v42)
          {
            v43 = v42 - v40;
            if (v43 >= v35)
            {
              v44 = ((1 << v15) + 63) & 0xFFFFFFFFFFFFFFC0;
            }

            else
            {
              v44 = v43;
            }

            bzero(v40, v44);
            *(a2 + 48) = v40;
          }
        }

        else
        {
          v40 = 0;
          *(a2 + 56) = 1;
        }

        goto LABEL_82;
      }

LABEL_71:
      v40 = 0;
LABEL_82:
      *(a1 + 56) = v40;
      v45 = __ROR8__(*(a1 + 96), 24) ^ __ROR8__(*(a1 + 96), 49) ^ *(a1 + 96);
      v46 = 0x9FB21C651E98DF25 * ((((0x9FB21C651E98DF25 * v45) >> 35) + 8) ^ (0x9FB21C651E98DF25 * v45));
      v47 = 0x9FB21C651E98DF25 * (__ROR8__(*(a1 + 104), 24) ^ (*(a1 + 104) << 15) ^ *(a1 + 104));
      *(a1 + 96) = v46 ^ (((0x9FB21C651E98DF25 * (((v47 >> 35) + 4) ^ v47)) ^ v46) >> 28) ^ (0x9FB21C651E98DF25 * (((v47 >> 35) + 4) ^ v47));
LABEL_86:
      v51 = a3[3];
      if (v51 >= 6)
      {
        v51 = 6;
      }

      if (v51 <= 4)
      {
        v51 = 4;
      }

      *(a1 + 52) = a3[2] - v51;
      goto LABEL_91;
    }

    if (v36 <= 1)
    {
      if (!v36)
      {
        v49 = *(a2 + 8);
        v48 = *(a2 + 16);
        *(a2 + 32) = v48;
        *(a2 + 48) = v49 & 0xFFFFFFFFFFFFFFC0;
        v50 = -v48 & 0x3FLL;
        v18 = v48 + v50;
        if (v18 > v49)
        {
          goto LABEL_84;
        }

        *(a2 + 16) = v18;
        *(a2 + 24) = v18;
        if (v50)
        {
          *(a2 + 32) = v18;
        }
      }

      *(a2 + 64) = 2;
    }

    if (v35)
    {
      v41 = (*(a2 + 40) - v35);
      if (v41 >= v18)
      {
        if (v41 < *(a2 + 32))
        {
          *(a2 + 32) = v41;
        }

        *(a2 + 40) = v41;
      }

      else
      {
        v41 = 0;
        *(a2 + 56) = 1;
      }

      goto LABEL_85;
    }

LABEL_84:
    v41 = 0;
LABEL_85:
    *(a1 + 56) = v41;
    bzero(v41, 1 << v15);
    *(a1 + 96) = 0;
    goto LABEL_86;
  }

LABEL_91:
  if (a7 != 1 || a3[6] < 7u)
  {
    goto LABEL_132;
  }

  v52 = *(a2 + 64);
  if (v52 > 1)
  {
    goto LABEL_96;
  }

  if (v52)
  {
LABEL_95:
    *(a2 + 64) = 2;
LABEL_96:
    v53 = *(a2 + 40) - 1024;
    if (v53 >= *(a2 + 24))
    {
      if (v53 < *(a2 + 32))
      {
        *(a2 + 32) = v53;
      }

      *(a2 + 40) = v53;
    }

    else
    {
      v53 = 0;
      *(a2 + 56) = 1;
    }

    *(a1 + 144) = v53;
LABEL_102:
    v54 = *(a2 + 40) - 192;
    if (v54 >= *(a2 + 24))
    {
      if (v54 < *(a2 + 32))
      {
        *(a2 + 32) = v54;
      }

      *(a2 + 40) = v54;
    }

    else
    {
      v54 = 0;
      *(a2 + 56) = 1;
    }

    *(a1 + 152) = v54;
LABEL_108:
    v55 = *(a2 + 40) - 256;
    if (v55 >= *(a2 + 24))
    {
      if (v55 < *(a2 + 32))
      {
        *(a2 + 32) = v55;
      }

      *(a2 + 40) = v55;
    }

    else
    {
      v55 = 0;
      *(a2 + 56) = 1;
    }

    *(a1 + 160) = v55;
LABEL_114:
    v56 = *(a2 + 40) - 128;
    if (v56 >= *(a2 + 24))
    {
      if (v56 < *(a2 + 32))
      {
        *(a2 + 32) = v56;
      }

      *(a2 + 40) = v56;
    }

    else
    {
      v56 = 0;
      *(a2 + 56) = 1;
    }

    *(a1 + 168) = v56;
LABEL_120:
    v57 = *(a2 + 40) - 32832;
    if (v57 >= *(a2 + 24))
    {
      if (v57 < *(a2 + 32))
      {
        *(a2 + 32) = v57;
      }

      *(a2 + 40) = v57;
    }

    else
    {
      v57 = 0;
      *(a2 + 56) = 1;
    }

    *(a1 + 176) = v57;
LABEL_126:
    v58 = *(a2 + 40) - 114752;
    if (v58 >= *(a2 + 24))
    {
      if (v58 < *(a2 + 32))
      {
        *(a2 + 32) = v58;
      }

      *(a2 + 40) = v58;
    }

    else
    {
      v58 = 0;
      *(a2 + 56) = 1;
    }

    goto LABEL_131;
  }

  v61 = *(a2 + 8);
  v60 = *(a2 + 16);
  *(a2 + 32) = v60;
  *(a2 + 48) = v61 & 0xFFFFFFFFFFFFFFC0;
  v62 = -v60 & 0x3FLL;
  v63 = v60 + v62;
  if (v63 <= v61)
  {
    *(a2 + 16) = v63;
    *(a2 + 24) = v63;
    if (v62)
    {
      *(a2 + 32) = v63;
    }

    goto LABEL_95;
  }

  *(a1 + 144) = 0;
  v65 = *(a2 + 8);
  v64 = *(a2 + 16);
  *(a2 + 32) = v64;
  *(a2 + 48) = v65 & 0xFFFFFFFFFFFFFFC0;
  v66 = -v64 & 0x3FLL;
  v67 = v64 + v66;
  if (v67 <= v65)
  {
    *(a2 + 16) = v67;
    *(a2 + 24) = v67;
    if (v66)
    {
      *(a2 + 32) = v67;
    }

    *(a2 + 64) = 2;
    goto LABEL_102;
  }

  *(a1 + 152) = 0;
  v69 = *(a2 + 8);
  v68 = *(a2 + 16);
  *(a2 + 32) = v68;
  *(a2 + 48) = v69 & 0xFFFFFFFFFFFFFFC0;
  v70 = -v68 & 0x3FLL;
  v71 = v68 + v70;
  if (v71 <= v69)
  {
    *(a2 + 16) = v71;
    *(a2 + 24) = v71;
    if (v70)
    {
      *(a2 + 32) = v71;
    }

    *(a2 + 64) = 2;
    goto LABEL_108;
  }

  *(a1 + 160) = 0;
  v73 = *(a2 + 8);
  v72 = *(a2 + 16);
  *(a2 + 32) = v72;
  *(a2 + 48) = v73 & 0xFFFFFFFFFFFFFFC0;
  v74 = -v72 & 0x3FLL;
  v75 = v72 + v74;
  if (v75 <= v73)
  {
    *(a2 + 16) = v75;
    *(a2 + 24) = v75;
    if (v74)
    {
      *(a2 + 32) = v75;
    }

    *(a2 + 64) = 2;
    goto LABEL_114;
  }

  *(a1 + 168) = 0;
  v77 = *(a2 + 8);
  v76 = *(a2 + 16);
  *(a2 + 32) = v76;
  *(a2 + 48) = v77 & 0xFFFFFFFFFFFFFFC0;
  v78 = -v76 & 0x3FLL;
  v79 = v76 + v78;
  if (v79 <= v77)
  {
    *(a2 + 16) = v79;
    *(a2 + 24) = v79;
    if (v78)
    {
      *(a2 + 32) = v79;
    }

    *(a2 + 64) = 2;
    goto LABEL_120;
  }

  v58 = 0;
  *(a1 + 176) = 0;
  v81 = *(a2 + 8);
  v80 = *(a2 + 16);
  *(a2 + 32) = v80;
  *(a2 + 48) = v81 & 0xFFFFFFFFFFFFFFC0;
  v82 = -v80 & 0x3FLL;
  v83 = v80 + v82;
  if (v83 <= v81)
  {
    *(a2 + 16) = v83;
    *(a2 + 24) = v83;
    if (v82)
    {
      *(a2 + 32) = v83;
    }

    *(a2 + 64) = 2;
    goto LABEL_126;
  }

LABEL_131:
  *(a1 + 184) = v58;
LABEL_132:
  v59 = *a3;
  *(a1 + 268) = *(a3 + 3);
  *(a1 + 256) = v59;
  if (*(a2 + 56))
  {
    return -64;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_24390A250@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, unsigned int a7@<W6>, unsigned int *a8@<X7>, uint64_t a9@<X8>, char *a10, unint64_t a11)
{
  v29 = a1[5];
  v30 = a1[6];
  v18 = a1[4];
  *a9 = 0u;
  *(a9 + 16) = 0u;
  *(a9 + 32) = 0;
  sub_243906F24(a1);
  *(a9 + 32) = 0;
  v36 = 35;
  v19 = sub_243903E18(a8, &v36, v18, a2, a10, a11);
  *(a4 + 3548) = *(a3 + 3548);
  v31 = a3;
  a3 += 2224;
  v32 = a7;
  v20 = sub_24390C63C((a4 + 3548), a8, v36, v19, a2, 9u, a3, word_24398E5C8, 6, 1, a7);
  *a9 = v20;
  result = sub_24390C88C(a5, a6 - a5, (a4 + 2224), 9u, v20, a8, v36, v18, a2, word_24398E5C8, 6, 35, a3, 0x524uLL, a10, a11);
  if (result > 0xFFFFFFFFFFFFFF88)
  {
    goto LABEL_11;
  }

  if (v20 == 2)
  {
    *(a9 + 24) = result;
  }

  v22 = &a5[result];
  v35 = 31;
  v23 = sub_243903E18(a8, &v35, v30, a2, a10, a11);
  v24 = v35;
  *(a4 + 3540) = *(v31 + 3540);
  v25 = sub_24390C63C((a4 + 3540), a8, v24, v23, a2, 8u, v31, word_24398E610, 5, v24 < 0x1D, v32);
  *(a9 + 4) = v25;
  result = sub_24390C88C(v22, a6 - v22, a4, 8u, v25, a8, v35, v30, a2, word_24398E610, 5, 28, v31, 0x304uLL, a10, a11);
  if (result > 0xFFFFFFFFFFFFFF88)
  {
    goto LABEL_11;
  }

  if (v25 == 2)
  {
    *(a9 + 24) = result;
  }

  v26 = &v22[result];
  v34 = 52;
  v27 = sub_243903E18(a8, &v34, v29, a2, a10, a11);
  *(a4 + 3544) = *(v31 + 3544);
  v28 = sub_24390C63C((a4 + 3544), a8, v34, v27, a2, 9u, (v31 + 772), word_24398E64A, 6, 1, v32);
  *(a9 + 8) = v28;
  result = sub_24390C88C(v26, a6 - v26, (a4 + 772), 9u, v28, a8, v34, v29, a2, word_24398E64A, 6, 52, (v31 + 772), 0x5ACuLL, a10, a11);
  if (result > 0xFFFFFFFFFFFFFF88)
  {
LABEL_11:
    *(a9 + 16) = result;
  }

  else
  {
    if (v28 == 2)
    {
      *(a9 + 24) = result;
    }

    *(a9 + 16) = &v26[result] - a5;
  }

  return result;
}

uint32x2_t *sub_24390A590(uint32x2_t *result, void *a2, _DWORD *a3, int a4, int a5)
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
      v19 = result[14];
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

    if (result[17].i32[1] || v7 != 1 && (v7 - 3 > 2 || a3[36] != 1))
    {
      v24 = 1 << a3[2];
      v25 = result[16];
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
        v46 = result[15];
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
    result[31] = 0;
  }

  return result;
}

uint64_t sub_24390A854(uint64_t a1, char *a2, size_t a3, char *a4, unint64_t a5, int a6)
{
  v12 = sub_24390A9A0(a1, a4, a5);
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

    v15 = (a1 + 3176);
    if (*(a1 + 888))
    {
      sub_24390BAD0(a1);
      v14 = 0;
      *v15 = vextq_s8(*v15, *v15, 8uLL);
      return v14;
    }

    v18 = sub_24390B7C8((a1 + 928), *(a1 + 3176), *(a1 + 3184), (a1 + 224), a2, a3, a5, *(a1 + 3496), *(a1 + 8));
    v14 = v18;
    if (a6 && !*(a1 + 920) && v18 <= 0x18 && sub_24390AD74(a4, a5))
    {
      *a2 = *a4;
      v14 = 1;
    }

    else if ((v14 - 2) <= 0xFFFFFFFFFFFFFF86)
    {
      *v15 = vextq_s8(*v15, *v15, 8uLL);
    }
  }

  v16 = *(a1 + 3176);
  if (*(v16 + 5604) == 2)
  {
    *(v16 + 5604) = 1;
  }

  return v14;
}

uint64_t sub_24390A9A0(uint64_t a1, char *a2, unint64_t a3)
{
  if (a3 <= 6)
  {
    if (*(a1 + 252) < 7u)
    {
      sub_24393C58C((a1 + 3136), a3, *(a1 + 244));
    }

    else
    {
      sub_24393C638(a1 + 3136, a3);
    }

    return 1;
  }

  *(a1 + 952) = *(a1 + 944);
  *(a1 + 936) = *(a1 + 928);
  *(a1 + 1000) = 0;
  v6 = *(a1 + 3176);
  *(a1 + 3424) = v6;
  *(a1 + 3432) = *(a1 + 296);
  v7 = a2 - *(a1 + 3200);
  v8 = *(a1 + 3236);
  if (v8 + 384 < v7)
  {
    v9 = v7 - v8 - 384;
    if (v9 >= 0xC0)
    {
      v9 = 192;
    }

    *(a1 + 3236) = v7 - v9;
  }

  if (*(a1 + 3220) >= *(a1 + 3216))
  {
    v12 = *(a1 + 3440);
    if (v12)
    {
      if (*(v12 + 140))
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 1;
  }

  v13 = 0;
  v14 = v6 + 5616;
  v15 = (*(a1 + 3184) + 5616);
  do
  {
    *(v15 + v13) = *(v14 + v13);
    v13 += 4;
  }

  while (v13 != 12);
  if (*(a1 + 3144) < *(a1 + 3160))
  {
    if (!*(a1 + 408))
    {
      v16 = *(a1 + 368);
      v17 = (a1 + 3136);
      v18 = a1 + 3192;
      v19 = a1 + 928;
LABEL_22:
      v20 = sub_24393C6B4(v17, v18, v19, v15, v16, a2, a3);
      goto LABEL_53;
    }

    return -41;
  }

  if (*(a1 + 320) == 1)
  {
    v44 = 0;
    v45 = 0;
    v46 = 0;
    if (!*(a1 + 408))
    {
      v24 = *(a1 + 3128);
      v43 = *(a1 + 3120);
      v47 = v24;
      v11 = sub_24393BB14((a1 + 1008), &v43, (a1 + 320), a2, a3);
      if (v11 >= 0xFFFFFFFFFFFFFF89)
      {
        return v11;
      }

      v16 = *(a1 + 368);
      v17 = &v43;
      v18 = a1 + 3192;
      v19 = a1 + 928;
      v15 = (*(a1 + 3184) + 5616);
      goto LABEL_22;
    }

    return -41;
  }

  if (!*(a1 + 408))
  {
    v25 = *(a1 + 252);
    v26 = v25 - 3;
    v27 = *(a1 + 368) != 1 || v26 > 2;
    v28 = &off_2856A2730[10 * v10] + v25;
    if (!v27)
    {
      v28 = &off_2856A2870[3 * v10] + v26;
    }

    v29 = *v28;
    *(a1 + 3480) = 0;
    v20 = (v29)(a1 + 3192, a1 + 928, v15, a2, a3);
    goto LABEL_53;
  }

  v21 = (*(a1 + 5216))(*(a1 + 5208), *(a1 + 5224), *(a1 + 5232), a2, a3, 0, 0, *(a1 + 268), 1 << *(a1 + 228));
  v22 = *(a1 + 5232);
  if (v21 - 1 >= v22)
  {
    goto LABEL_30;
  }

  v11 = v21;
  v23 = (*(a1 + 5224) + 16 * v21);
  if (*(v23 - 4) | *(v23 - 2))
  {
    if (v21 == v22)
    {
LABEL_30:
      v11 = -106;
LABEL_46:
      if (!*(a1 + 404))
      {
        return v11;
      }

      v36 = *(a1 + 252);
      v37 = v36 - 3;
      v38 = *(a1 + 368) != 1 || v37 > 2;
      v39 = &off_2856A2730[10 * v10] + v36;
      if (!v38)
      {
        v39 = &off_2856A2870[3 * v10] + v37;
      }

      v40 = *v39;
      *(a1 + 3480) = 0;
      v20 = (v40)(a1 + 3192, a1 + 928, *(a1 + 3184) + 5616, a2, a3);
LABEL_53:
      v41 = v20;
      memcpy(*(a1 + 952), &a2[a3 - v20], v20);
      v11 = 0;
      *(a1 + 952) += v41;
      return v11;
    }

    *v23 = 0;
    v23[1] = 0;
    v11 = v21 + 1;
  }

  if (v11 > 0xFFFFFFFFFFFFFF88)
  {
    goto LABEL_46;
  }

  v43 = 0;
  v44 = 0;
  v30 = *(a1 + 5224);
  if (!v11)
  {
    goto LABEL_55;
  }

  v31 = 0;
  v32 = 0;
  v33 = (v30 + 8);
  v34 = v11;
  do
  {
    v31 += *(v33 - 1);
    v35 = *v33;
    v33 += 4;
    v32 += v35;
    --v34;
  }

  while (v34);
  if (v32 + v31 > a3)
  {
    return -107;
  }

LABEL_55:
  v11 = sub_24390885C(a1, &v43, v30, v11, a2, a3, *(a1 + 424));
  if (v11 <= 0xFFFFFFFFFFFFFF88)
  {
    v11 = 0;
    *(a1 + 3480) = 0;
  }

  return v11;
}

uint64_t sub_24390AD74(void *a1, unint64_t a2)
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

unint64_t sub_24390AEDC(uint64_t a1, uint64_t a2, uint64_t *a3, int *a4, uint64_t a5, unint64_t a6, void *a7, size_t a8, int a9, int a10)
{
  v51 = *MEMORY[0x277D85DE8];
  v49 = *a3;
  v50 = *(a3 + 2);
  if (a10)
  {
    v16 = *a2;
    v17 = *(a2 + 8) - *a2;
    v18 = v17 >> 3;
    if (*(a2 + 72) == 1)
    {
      LODWORD(v18) = *(a2 + 76);
    }

    if ((v17 >> 3))
    {
      v19 = a3 + 1;
      v20 = a3 + 1;
      v21 = (v17 >> 3);
      v18 = v18;
      do
      {
        v23 = v18-- != 0;
        v24 = *(v16 + 4) == 0 && v23;
        v25 = *v16;
        v26 = *v16 - 1;
        if (v26 > 2)
        {
          v30 = *v16;
        }

        else
        {
          v27 = v26 + v24;
          if (v26 + v24 == 3)
          {
            v28 = *a3 - 1;
            v29 = *a4 - 1;
          }

          else
          {
            v28 = *(a3 + v27);
            v29 = a4[v27];
          }

          v30 = *v16;
          if (v28 == v29)
          {
            goto LABEL_18;
          }

          v30 = v29 + 3;
          *v16 = v29 + 3;
        }

        if (v30 >= 4)
        {
          *(a3 + 4) = *a3;
          v31 = v30 - 3;
          goto LABEL_26;
        }

LABEL_18:
        v32 = v30 - (v24 ^ 1);
        if (!v32)
        {
          goto LABEL_27;
        }

        if (v32 == 3)
        {
          v33 = *a3;
          v31 = *a3 - 1;
        }

        else
        {
          v31 = *(a3 + v32);
          v33 = *a3;
        }

        if (v32 == 1)
        {
          v34 = a3 + 1;
        }

        else
        {
          v34 = a3 + 1;
        }

        *v20 = *v34;
        *v19 = v33;
LABEL_26:
        *a3 = v31;
LABEL_27:
        if (v25 >= 4)
        {
          *(a4 + 1) = *a4;
          v35 = v25 - 3;
LABEL_37:
          *a4 = v35;
          goto LABEL_38;
        }

        v36 = v26 + v24;
        if (v26 + v24)
        {
          if (v36 == 3)
          {
            v37 = *a4;
            v35 = *a4 - 1;
          }

          else
          {
            v35 = a4[v36];
            v37 = *a4;
          }

          if (v36 == 1)
          {
            v38 = a4 + 2;
          }

          else
          {
            v38 = a4 + 1;
          }

          a4[2] = *v38;
          a4[1] = v37;
          goto LABEL_37;
        }

LABEL_38:
        v16 += 8;
        --v21;
      }

      while (v21);
    }
  }

  v39 = a6 - 3;
  if (a6 < 3)
  {
    goto LABEL_40;
  }

  v41 = sub_24390B7C8(a2, *(a1 + 3176), *(a1 + 3184), (a1 + 224), (a5 + 3), v39, a8, *(a1 + 3496), *(a1 + 8));
  v40 = v41;
  if (v41 > 0xFFFFFFFFFFFFFF88)
  {
    goto LABEL_48;
  }

  if (v41 <= 0x18 && !*(a1 + 920) && sub_24390AD74(a7, a8))
  {
    v40 = 1;
  }

  v42 = (a1 + 3176);
  if (*(a1 + 888))
  {
    sub_24390BAD0(a1);
    v40 = 0;
    *v42 = vextq_s8(*v42, *v42, 8uLL);
    goto LABEL_48;
  }

  if (v40 == 1)
  {
    if (a6 == 3)
    {
      goto LABEL_40;
    }

    v46 = *a7;
    v47 = a9 + 8 * a8 + 2;
    *a5 = v47;
    *(a5 + 2) = BYTE2(v47);
    *(a5 + 3) = v46;
    *a3 = v49;
    *(a3 + 2) = v50;
    v40 = 4;
  }

  else
  {
    if (!v40)
    {
      v40 = a8 + 3;
      if (a8 + 3 <= a6)
      {
        v45 = a9 + 8 * a8;
        *a5 = v45;
        *(a5 + 2) = BYTE2(v45);
        memcpy((a5 + 3), a7, a8);
        if (v40 > 0xFFFFFFFFFFFFFF88)
        {
          goto LABEL_48;
        }

        *a3 = v49;
        *(a3 + 2) = v50;
        goto LABEL_57;
      }

LABEL_40:
      v40 = -70;
      goto LABEL_48;
    }

    *v42 = vextq_s8(*v42, *v42, 8uLL);
    v48 = a9 + 8 * v40 + 4;
    *a5 = v48;
    *(a5 + 2) = BYTE2(v48);
    v40 += 3;
  }

LABEL_57:
  if (*(v42->i64[0] + 5604) == 2)
  {
    *(v42->i64[0] + 5604) = 1;
  }

LABEL_48:
  v43 = *MEMORY[0x277D85DE8];
  return v40;
}

uint64_t sub_24390B23C(uint64_t result, uint64_t *a2, unint64_t a3, unint64_t a4)
{
  v7 = result;
  *result = *a2;
  v8 = *(a2 + 1);
  v9 = *(a2 + 2);
  v10 = *(a2 + 4);
  *(result + 48) = *(a2 + 3);
  *(result + 64) = v10;
  *(result + 16) = v8;
  *(result + 32) = v9;
  if (a3)
  {
    *(result + 8) = *a2 + 8 * a3;
    result = sub_24390B334(result);
    *(v7 + 16) += result;
  }

  if (*(a2 + 18))
  {
    v11 = *(a2 + 19);
    if (v11 < a3 || v11 > a4)
    {
      *(v7 + 72) = 0;
    }

    else
    {
      *(v7 + 76) -= a3;
    }
  }

  *v7 = *a2 + 8 * a3;
  v12 = *a2;
  *(v7 + 8) = *a2 + 8 * a4;
  if (a4 != (a2[1] - v12) >> 3)
  {
    result = sub_24390B334(v7);
    *(v7 + 24) = *(v7 + 16) + result;
  }

  v13 = *(v7 + 40) + a3;
  *(v7 + 32) += a3;
  *(v7 + 40) = v13;
  *(v7 + 48) += a3;
  return result;
}

uint64_t sub_24390B334(uint64_t a1)
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

unint64_t sub_24390B390(unint64_t result, unint64_t a2, unint64_t a3, void *a4, uint64_t *a5)
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
      sub_24390B23C((a4 + 464), a5, v8, a3);
      sub_24390B23C((a4 + 474), a5, v8, v11);
      sub_24390B23C((a4 + 484), a5, v11, a3);
      v12 = sub_24390B4C0(a4 + 464, a4);
      v13 = sub_24390B4C0(a4 + 474, a4);
      result = sub_24390B4C0(a4 + 484, a4);
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

      result = sub_24390B390(v9, v8, (v8 + a3) >> 1, a4, a5);
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

unint64_t sub_24390B4C0(void *a1, uint64_t a2)
{
  result = sub_24390705C(a1, *(a2 + 3176), *(a2 + 3184), (a2 + 224), a2 + 4896, *(a2 + 3496), 0x22D8uLL);
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    v5 = a1[2];
    v6 = a1[3] - v5;
    v7 = a1[5];
    v8 = a1[6];
    v9 = a1[4];
    v10 = (a1[1] - *a1) >> 3;
    v11 = *(a2 + 3184);
    v12 = *(a2 + 3496);
    v13 = *(a2 + 4896);
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
      if (sub_243904100(v12, &v23, v5, v6, v12, 0x22D8uLL) <= 0xFFFFFFFFFFFFFF88)
      {
        v16 = sub_243904F94(v11, v12, v23);
        if (v13 == 2)
        {
          v16 += *(a2 + 5032);
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

    v18 = sub_24390B6C0(*(a2 + 5044), v8, v10, 0x1Fu, v11 + 1032, 0, word_24398E610, 5, v12);
    v19 = sub_24390B6C0(*(a2 + 5040), v9, v10, 0x23u, v11 + 2144, &unk_24398E6B4, word_24398E5C8, 6, v12);
    v20 = sub_24390B6C0(*(a2 + 5048), v7, v10, 0x34u, v11 + 1418, &unk_24398E6D8, word_24398E64A, 6, v12);
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

    return v22 + v21 + v6 + v18 + v19 + v20 + *(a2 + 5192);
  }

  return result;
}

unint64_t sub_24390B6C0(int a1, unsigned __int8 *a2, int64_t a3, unsigned int a4, unsigned __int16 *a5, uint64_t a6, unsigned __int16 *a7, char a8, unsigned int *a9)
{
  v14 = a2;
  v20 = a4;
  sub_243903E18(a9, &v20, a2, a3, a9, 0x22D8uLL);
  if (a1 == 1)
  {
    goto LABEL_8;
  }

  if (!a1)
  {
    v16 = sub_24390C5E0(a7, a8, a9, v20);
    goto LABEL_6;
  }

  if ((a1 & 0xFFFFFFFE) != 2)
  {
LABEL_8:
    v16 = 0;
    goto LABEL_9;
  }

  v16 = sub_24390C54C(a5, a9, v20);
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

unint64_t sub_24390B7C8(uint64_t *a1, char *__src, unsigned __int16 *__dst, _DWORD *a4, char *a5, size_t a6, size_t a7, unsigned int *a8, int a9)
{
  v14 = a4[7];
  v16 = *a1;
  v15 = a1[1];
  v17 = a1[2];
  v18 = a1[3] - v17;
  v19 = (a8 + 53);
  v20 = v15 - *a1;
  v21 = v20 >> 3;
  v22 = v15 == *a1 || v18 / v21 > 0x13;
  v23 = a4[18];
  v49 = a4;
  if (v23 == 1)
  {
    goto LABEL_9;
  }

  if (v23 == 2)
  {
    v24 = 1;
    goto LABEL_10;
  }

  if (v14 != 1)
  {
LABEL_9:
    v24 = 0;
  }

  else
  {
    v24 = a4[6] != 0;
  }

LABEL_10:
  v46 = a1[6];
  v45 = a1[4];
  v44 = a1[5];
  v25 = __dst;
  result = sub_24390C228(a5, a6, v17, v18, a8 + 212, 8708, __src, __dst, v14, v24, v22, a9);
  if (result > 0xFFFFFFFFFFFFFF88)
  {
    goto LABEL_26;
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

  v27 = &a5[result];
  v28 = v20 >> 3;
  if (v21 > 0x7F)
  {
    v30 = v25;
    if (v21 >> 8 > 0x7E)
    {
      *v27 = -1;
      *(v27 + 1) = (v20 >> 3) - 32512;
      v29 = v27 + 3;
    }

    else
    {
      *v27 = BYTE1(v21) | 0x80;
      v27[1] = v20 >> 3;
      v29 = v27 + 2;
    }
  }

  else
  {
    *v27 = v20 >> 3;
    v29 = v27 + 1;
    v30 = v25;
  }

  if (v15 != v16)
  {
    v31 = v29 + 1;
    v53 = 0;
    v51 = 0u;
    v52 = 0u;
    v43 = v19;
    v32 = v28;
    v33 = v30;
    v34 = v29;
    sub_24390A250(a1, v28, (__src + 2064), (v30 + 1032), v29 + 1, &a5[a6], v14, a8, &v51, v43, 0x2204uLL);
    result = v52;
    if (v52 < 0xFFFFFFFFFFFFFF89)
    {
      *v34 = (v51 << 6) + 16 * BYTE4(v51) + 4 * BYTE8(v51);
      v35 = v31;
      v36 = *(&v52 + 1);
      v37 = &v35[result];
      result = sub_24390CA28(&v35[result], &a5[a6] - &v35[result], v33 + 1418, v44, v33 + 1032, v46, v33 + 2144, v45, v16, v32, v53);
      if (result <= 0xFFFFFFFFFFFFFF88)
      {
        v38 = v49;
        if (v36 && result + v36 < 4)
        {
          return 0;
        }

        v39 = &v37[result];
        goto LABEL_38;
      }
    }

LABEL_26:
    v38 = v49;
    goto LABEL_27;
  }

  v42 = v29;
  memcpy(v30 + 1032, __src + 2064, 0xDE0uLL);
  v39 = v42;
  v38 = v49;
LABEL_38:
  result = v39 - a5;
  if (v39 == a5)
  {
    return result;
  }

LABEL_27:
  if (a7 <= a6 && result == -70)
  {
    return 0;
  }

  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    v40 = v38[7];
    if (v40 <= 7)
    {
      v41 = 6;
    }

    else
    {
      v41 = v40 - 1;
    }

    if (result >= a7 - (a7 >> v41) - 2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24390BAD0(uint64_t result)
{
  v1 = *(result + 928);
  v2 = *(result + 936);
  v3 = *(result + 952);
  v4 = *(result + 944);
  v5 = *(result + 904);
  v6 = *(result + 896) + 16 * v5;
  v7 = *(result + 3176);
  v30 = *(v7 + 5616);
  v31 = *(v7 + 5624);
  v9 = v2 - v1;
  v8 = v9 == 0;
  v10 = v9 >> 3;
  v11 = 0;
  if (!v8)
  {
    v12 = *(result + 1004);
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

      v26 = *(result + 1000);
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
      if (v20 > 3)
      {
        v25 = v20 - 3;
        *(v18 - 8) = v25;
      }

      else
      {
        *(v18 + 4) = v20;
        if (v23)
        {
          v24 = *(&v30 + v20 - 1);
        }

        else if (v20 == 3)
        {
          v24 = v13 - 1;
        }

        else
        {
          v24 = *(&v30 + v20);
        }

        *(v18 - 8) = v24;
        if (!v21)
        {
          ++v20;
        }

        v27 = v20 - 1;
        if (v20 == 1)
        {
          goto LABEL_28;
        }

        if (v20 == 4)
        {
          v25 = v13 - 1;
        }

        else
        {
          v25 = *(&v30 + v27);
        }

        if (v27 == 1)
        {
          v14 = v17;
        }
      }

      HIDWORD(v30) = v13;
      v31 = v14;
      v17 = v14;
      v14 = v13;
      v13 = v25;
      LODWORD(v30) = v25;
LABEL_28:
      v16 += 4;
      v11 += v23;
      --v12;
      v18 += 16;
      if (!--v19)
      {
        goto LABEL_31;
      }
    }

    *v18 = v22 + 65539;
LABEL_7:
    v23 = v21;
    goto LABEL_8;
  }

  v15 = 0;
LABEL_31:
  v28 = v3 - (v11 + v4);
  v29 = v6 + 16 * v15;
  *v29 = 0;
  *(v29 + 4) = v28;
  *(v29 + 8) = 0;
  *(result + 904) = v10 + v5 + 1;
  return result;
}

unint64_t sub_24390BC68(uint64_t a1, unint64_t a2, unint64_t a3, void *a4, _DWORD *a5, _DWORD *a6, unint64_t a7, int a8, int a9, int a10, _WORD *a11)
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
      sub_24390BDA4(a2, a3, a4, a5, a6, a7, a9, a10);
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
      v17 = 0;
    }

    else
    {
      v17 = a6[1];
    }

    result = sub_243907C14(a1, a11, a6, a7);
    if (result <= 0xFFFFFFFFFFFFFF88)
    {
      sub_24390BDA4(a2, 0, a4, a5, a6 + result, a7 - result, a9, a10);
      return v17;
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

unint64_t sub_24390BDA4(unint64_t result, unint64_t a2, void *a3, _DWORD *a4, unint64_t a5, unint64_t a6, int a7, int a8)
{
  v12 = result;
  v13 = a5 + a6;
  v16 = a4[24];
  v14 = a4 + 24;
  v15 = v16;
  if (a2)
  {
    v17 = v15 == 1;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  v19 = *(v14 - 17);
  v20 = -3758096382;
  if (a8 == 1 && v19 - 1 < 2)
  {
    v20 = -16777214;
  }

  v21 = 3758096382;
  if (a8 == 1 && v19 - 1 < 2)
  {
    v21 = 16777214;
  }

  v22 = v13 + v20;
  if (v21 >= a6)
  {
    v23 = a6;
  }

  else
  {
    v23 = v21;
  }

  if (v21 >= a6)
  {
    v24 = a5;
  }

  else
  {
    v24 = v22;
  }

  if (!a6)
  {
    if ((v18 & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_42;
  }

  v25 = *result;
  if (*result == v24)
  {
    v26 = *(result + 16);
    v27 = *(result + 24);
    v28 = *(result + 28);
  }

  else
  {
    v26 = *(result + 8);
    v27 = v25 - v26;
    v28 = *(result + 24);
    *(result + 24) = v25 - v26;
    *(result + 28) = v28;
    *(result + 8) = v24 - (v25 - v26);
    *(result + 16) = v26;
    if (v25 - v26 - v28 <= 7)
    {
      *(result + 28) = v27;
      v28 = v25 - v26;
    }
  }

  v29 = v24 + v23;
  *result = v24 + v23;
  if (v24 + v23 > v26 + v28 && v26 + v27 > v24)
  {
    v31 = v29 - v26;
    if (v31 > v27)
    {
      LODWORD(v31) = v27;
    }

    *(result + 28) = v31;
  }

  if (v18)
  {
    if (*a2 == v24)
    {
      v32 = *(a2 + 16);
      LODWORD(v33) = *(a2 + 24);
      v34 = *(a2 + 28);
    }

    else
    {
      v32 = *(a2 + 8);
      v33 = *a2 - v32;
      v34 = *(a2 + 24);
      *(a2 + 24) = v33;
      *(a2 + 28) = v34;
      *(a2 + 8) = v24 - v33;
      *(a2 + 16) = v32;
      if (v33 - v34 <= 7)
      {
        *(a2 + 28) = v33;
        v34 = v33;
      }
    }

    *a2 = v29;
    if (v29 > v32 + v34 && v32 + v33 > v24)
    {
      v35 = v29 - v32;
      if (v35 > v33)
      {
        LODWORD(v35) = v33;
      }

      *(a2 + 28) = v35;
    }

LABEL_42:
    if (a4[12])
    {
      v36 = 0;
    }

    else
    {
      v36 = v13 - *(a2 + 8);
    }

    *(a2 + 48) = v36;
    result = sub_24393B820(a2, v24, a5 + a6, v14);
    v19 = a4[7];
  }

LABEL_46:
  if (v19 <= 7)
  {
    v37 = a4[3];
    if (v37 <= a4[2])
    {
      v37 = a4[2];
    }

    if (v37 >= 0x1C)
    {
      LOBYTE(v37) = 28;
    }

    v38 = (8 << v37);
    if (v23 > v38)
    {
      LODWORD(v24) = v13 - v38;
    }

    if (v23 >= v38)
    {
      v23 = v38;
    }
  }

  v39 = v12[1].i32[0];
  v40 = v24 - v39;
  v41 = v13 - v39;
  if (a4[12])
  {
    v41 = 0;
  }

  v12[5].i32[0] = v41;
  v12[5].i32[1] = v40;
  v12[17].i32[0] = a4[37];
  if (v23 >= 9)
  {
    result = sub_24390A590(v12, a3, a4, v24, v13);
    v42 = a4[7];
    if (v42 > 5)
    {
      if ((v42 - 6) < 4)
      {
        result = sub_24393CAB0(v12, v13 - 8, v13);
      }
    }

    else if ((v42 - 3) >= 3)
    {
      if (v42 == 1)
      {
        result = sub_243914A94(v12, v13, a7, a8);
      }

      else if (v42 == 2)
      {
        result = sub_24390DAB0(v12, v13, a7, a8);
      }
    }

    else if (v12[17].i32[1])
    {
      result = sub_24391ADD8(v12, v13 - 8);
    }

    else if (a4[36] == 1)
    {
      bzero(*&v12[7], 1 << a4[3]);
      result = sub_24391B310(v12, v13 - 8);
    }

    else
    {
      result = sub_24391B15C(v12, (v13 - 8));
    }

    v12[5].i32[1] = v13 - v12[1].i32[0];
  }

  return result;
}

_OWORD *sub_24390C0CC(_OWORD *result, char *a2, unint64_t a3, char *a4)
{
  if (a2 <= a4)
  {
    v4 = (result + a4 - a2);
    *result = *a2;
    if (a4 - a2 >= 17)
    {
      v5 = result + 1;
      v6 = (a2 + 32);
      do
      {
        *v5 = *(v6 - 1);
        v7 = *v6;
        v6 += 2;
        v5[1] = v7;
        v5 += 2;
      }

      while (v5 < v4);
    }

    a2 = a4;
    result = v4;
  }

  if (a2 < a3)
  {
    v8 = a3 - a2;
    do
    {
      v9 = *a2++;
      *result = v9;
      result = (result + 1);
      --v8;
    }

    while (v8);
  }

  return result;
}

size_t sub_24390C138(_DWORD *a1, size_t a2, void *__src, size_t __n)
{
  if (__n <= 0x1F)
  {
    LODWORD(v4) = 1;
  }

  else
  {
    LODWORD(v4) = 2;
  }

  if (__n <= 0xFFF)
  {
    v4 = v4;
  }

  else
  {
    v4 = (v4 + 1);
  }

  v5 = v4 + __n;
  if (v4 + __n > a2)
  {
    return -70;
  }

  if (v4 == 3)
  {
    *a1 = (16 * __n) | 0xC;
  }

  else if (v4 == 2)
  {
    *a1 = (16 * __n) | 4;
  }

  else
  {
    *a1 = 8 * __n;
  }

  memcpy(a1 + v4, __src, __n);
  return v5;
}

uint64_t sub_24390C1C8(_DWORD *a1, uint64_t a2, _BYTE *a3, unint64_t a4)
{
  if (a4 <= 0x1F)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (a4 > 0xFFF)
  {
    ++v4;
  }

  if (v4 == 3)
  {
    *a1 = (16 * a4) | 0xD;
  }

  else if (v4 == 2)
  {
    *a1 = (16 * a4) | 5;
  }

  else
  {
    *a1 = (8 * a4) | 1;
  }

  *(a1 + v4) = *a3;
  return (v4 + 1);
}

uint64_t sub_24390C228(_DWORD *a1, size_t a2, unsigned __int8 *a3, size_t a4, int a5, int a6, void *__src, void *__dst, unsigned int a9, int a10, int a11, int a12)
{
  v18 = 3;
  if (a4 > 0x3FF)
  {
    v18 = 4;
  }

  if ((a4 & 0xFFFFFFFFFFFFC000) != 0)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = v18;
  }

  memcpy(__dst, __src, 0x810uLL);
  if (a10)
  {
    v20 = a1;
    v21 = a2;
    v22 = a3;
LABEL_14:

    return sub_24390C138(v20, v21, v22, a4);
  }

  v22 = a3;
  v20 = a1;
  v23 = *(__src + 514);
  v24 = 9 - a9;
  if ((9 - a9) >= 3)
  {
    v24 = 3;
  }

  v25 = 8 << v24;
  if (v23 == 2)
  {
    v25 = 6;
  }

  if (v25 > a4)
  {
    v21 = a2;
    goto LABEL_14;
  }

  v27 = a2 - v19;
  if (a2 <= v19)
  {
    return -70;
  }

  v28 = __dst;
  v29 = __src;
  v30 = v19;
  v31 = a2;
  if (a9 <= 7)
  {
    v32 = 6;
  }

  else
  {
    v32 = a9 - 1;
  }

  v49 = v23;
  v35 = v23 == 2 && v19 == 3 || a4 < 0x100;
  v36 = sub_2439065B0;
  v37 = v28;
  if (v35)
  {
    v36 = sub_243906168;
  }

  v38 = v20;
  v39 = v20 + v19;
  v40 = v22;
  v41 = (v36)(v39, v27);
  if (v49)
  {
    v42 = 3;
  }

  else
  {
    v42 = 2;
  }

  if (v41 - 1 > 0xFFFFFFFFFFFFFF87 || v41 >= a4 - (a4 >> v32) - 2)
  {
    memcpy(v37, v29, 0x810uLL);
    return sub_24390C138(v38, v31, v40, a4);
  }

  else
  {
    if (v41 == 1)
    {
      if (a4 > 7 || a4 < 2)
      {
LABEL_43:
        memcpy(v37, v29, 0x810uLL);
        return sub_24390C1C8(v38, v46, v40, a4);
      }

      v43 = a4 - 1;
      v44 = v40 + 1;
      while (1)
      {
        v45 = *v44++;
        if (v45 != *v40)
        {
          break;
        }

        if (!--v43)
        {
          goto LABEL_43;
        }
      }
    }

    if (!v49)
    {
      v37[514] = 1;
    }

    if (v30 == 5)
    {
      *v38 = ((v41 << 22) + 16 * a4) | v42 | 0xC;
      *(v38 + 4) = v41 >> 10;
    }

    else if (v30 == 4)
    {
      *v38 = ((v41 << 18) + 16 * a4) | v42 | 8;
    }

    else
    {
      if (v35)
      {
        v47 = 4;
      }

      else
      {
        v47 = 0;
      }

      v48 = ((v42 | v47 | (16 * a4)) ^ 4) + (v41 << 14);
      *v38 = v48;
      *(v38 + 2) = BYTE2(v48);
    }

    return v41 + v30;
  }
}

uint64_t sub_24390C54C(unsigned __int16 *a1, unsigned int *a2, unsigned int a3)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = 1 << (v3 - 1);
  }

  else
  {
    v4 = 1;
  }

  if (a1[1] < a3)
  {
    return -1;
  }

  v6 = 0;
  v7 = a3 + 1;
  v8 = &a1[2 * v4 + 4];
  do
  {
    v10 = *v8;
    v8 += 4;
    v9 = v10;
    v12 = *a2++;
    v11 = v12;
    if (v12)
    {
      v13 = ((HIWORD(v9) + 1) << 8) - ((((HIWORD(v9) + 1) << 24) - ((v9 + (1 << v3)) << 8)) >> v3);
      if (v13 >= (v3 << 8) + 256)
      {
        return -1;
      }

      v6 += v11 * v13;
    }

    --v7;
  }

  while (v7);
  return v6 >> 8;
}

unint64_t sub_24390C5E0(unsigned __int16 *a1, char a2, int *a3, int a4)
{
  v4 = 0;
  if ((a4 + 1) > 1)
  {
    v5 = (a4 + 1);
  }

  else
  {
    v5 = 1;
  }

  do
  {
    v7 = *a1++;
    v6 = v7;
    if (v7 == 0xFFFF)
    {
      v6 = 1;
    }

    v8 = *a3++;
    v4 += (dword_24398F170[v6 << (8 - a2)] * v8);
    --v5;
  }

  while (v5);
  return v4 >> 8;
}

uint64_t sub_24390C63C(_DWORD *a1, unsigned int *a2, unsigned int a3, unint64_t a4, unint64_t a5, unsigned int a6, unsigned __int16 *a7, unsigned __int16 *a8, char a9, int a10, unsigned int a11)
{
  v39 = *MEMORY[0x277D85DE8];
  if (a4 != a5)
  {
    if (a11 > 3)
    {
      v17 = a2;
      if (a10)
      {
        v18 = 0;
        if (a3 + 1 > 1)
        {
          v19 = a3 + 1;
        }

        else
        {
          v19 = 1;
        }

        v20 = a2;
        do
        {
          v22 = *a8++;
          v21 = v22;
          if (v22 == 0xFFFF)
          {
            v21 = 1;
          }

          v23 = *v20++;
          v18 += (dword_24398F170[v21 << (8 - a9)] * v23);
          --v19;
        }

        while (v19);
        v24 = v18 >> 8;
      }

      else
      {
        v24 = -1;
      }

      if (*a1)
      {
        v25 = sub_24390C54C(a7, a2, a3);
      }

      else
      {
        v25 = -1;
      }

      v26 = sub_2439035EC(a6, a5, a3);
      v27 = sub_243903654(v37, v26, v17, a5, a3, a5 > 0x7FF);
      if (v27 <= 0xFFFFFFFFFFFFFF88)
      {
        v27 = sub_24390331C(v38, 0x200uLL, v37, a3, v26);
      }

      v28 = 0;
      if (a3 + 1 > 1)
      {
        v29 = a3 + 1;
      }

      else
      {
        v29 = 1;
      }

      do
      {
        v31 = *v17++;
        v30 = v31;
        v32 = v31 << 8;
        if (v32 >= a5 || v30 == 0)
        {
          v34 = v32 / a5;
        }

        else
        {
          v34 = 1;
        }

        v28 += dword_24398F170[v34] * v30;
        --v29;
      }

      while (v29);
      v35 = (v28 >> 8) + 8 * v27;
      if (v24 <= v25 && v24 <= v35)
      {
        goto LABEL_42;
      }

      if (v25 <= v35)
      {
LABEL_45:
        result = 3;
        goto LABEL_46;
      }
    }

    else if (a10)
    {
      if (a5 > 0x3E7 || *a1 != 2)
      {
        if (a5 >= (10 - a11) << a9 >> 3 && a5 >> (a9 - 1) <= a4)
        {
          goto LABEL_44;
        }

LABEL_42:
        result = 0;
        *a1 = 0;
        goto LABEL_46;
      }

      goto LABEL_45;
    }

LABEL_44:
    *a1 = 1;
    result = 2;
    goto LABEL_46;
  }

  *a1 = 0;
  result = a4 > 2 || a10 == 0;
LABEL_46:
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24390C88C(_WORD *a1, unint64_t a2, _WORD *__dst, unsigned int a4, int a5, unsigned int *a6, unsigned int a7, _BYTE *a8, uint64_t a9, unsigned __int16 *a10, int a11, int a12, const void *a13, size_t a14, __int16 *a15, unint64_t a16)
{
  v21 = -1;
  if (a5 > 1)
  {
    if (a5 == 2)
    {
      v25 = a9;
      v26 = sub_2439035EC(a4, a9, a7);
      v27 = a8[a9 - 1];
      v28 = a6[v27];
      if (v28 >= 2)
      {
        a6[v27] = v28 - 1;
        v25 = a9 - 1;
      }

      v22 = sub_243903654(a15, v26, a6, v25, a7, v25 > 0x7FF);
      if (v22 > 0xFFFFFFFFFFFFFF88)
      {
        return v22;
      }

      v21 = sub_24390331C(a1, a2, a15, a7, v26);
      if (v21 <= 0xFFFFFFFFFFFFFF88)
      {
        v29 = sub_243903040(__dst, a15, a7, v26, a15 + 54, 0x474uLL);
        if (v29 >= 0xFFFFFFFFFFFFFF89)
        {
          return v29;
        }
      }
    }

    else if (a5 == 3)
    {
      memcpy(__dst, a13, a14);
      return 0;
    }
  }

  else
  {
    if (a5)
    {
      if (a5 != 1)
      {
        return v21;
      }

      v22 = sub_243903968(__dst, a7);
      if (v22 <= 0xFFFFFFFFFFFFFF88)
      {
        if (!a2)
        {
          return -70;
        }

        *a1 = *a8;
        return 1;
      }

      return v22;
    }

    v23 = sub_243903040(__dst, a10, a12, a11, a15, a16);
    if (v23 >= 0xFFFFFFFFFFFFFF89)
    {
      return v23;
    }

    else
    {
      return 0;
    }
  }

  return v21;
}

uint64_t sub_24390CA28(unint64_t *a1, unint64_t a2, unsigned __int16 *a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6, unsigned __int16 *a7, uint64_t a8, uint64_t a9, unint64_t a10, int a11)
{
  if (a2 < 9)
  {
    return -70;
  }

  v12 = a10 - 1;
  v13 = *(a4 + a10 - 1);
  v15 = *a3;
  v14 = a3 + 2;
  v16 = 1 << (v15 - 1);
  v105 = v15;
  if (!v15)
  {
    v16 = 1;
  }

  v106 = &v14[2 * v16];
  v17 = v14[((((*&v106[4 * v13 + 2] + 0x8000) & 0xFFFF0000) - *&v106[4 * v13 + 2]) >> ((*&v106[4 * v13 + 2] + 0x8000) >> 16)) + *&v106[4 * v13]];
  v18 = a1 + a2;
  v19 = *(a6 + v12);
  v21 = *a5;
  v20 = a5 + 2;
  v22 = 1 << (v21 - 1);
  v104 = v21;
  if (!v21)
  {
    v22 = 1;
  }

  v23 = &v20[2 * v22];
  v24 = &v23[4 * *(a6 + v12)];
  v25 = v20[((((*(v24 + 1) + 0x8000) & 0xFFFF0000) - *(v24 + 1)) >> ((*(v24 + 1) + 0x8000) >> 16)) + *v24];
  v26 = *(a8 + v12);
  v27 = (v18 - 8);
  v29 = *a7;
  v28 = a7 + 2;
  v30 = 1 << (v29 - 1);
  v103 = v29;
  if (!v29)
  {
    v30 = 1;
  }

  v31 = &v28[2 * v30];
  v32 = v28[((((*&v31[4 * v26 + 2] + 0x8000) & 0xFFFF0000) - *&v31[4 * v26 + 2]) >> ((*&v31[4 * v26 + 2] + 0x8000) >> 16)) + *&v31[4 * v26]];
  v33 = (a9 + 8 * v12);
  v34 = byte_24398F570[v26];
  v35 = byte_24398F594[v13];
  v36 = ((dword_24398F5CC[v35] & *(v33 + 3)) << v34) | dword_24398F5CC[v34] & *(v33 + 2);
  v37 = v35 + v34;
  if (a11)
  {
    if (v19 > 0x37)
    {
      v39 = *v33;
      v38 = v19 - 56;
      if (v19 != 56)
      {
        v44 = ((dword_24398F5CC[v38] & v39) << v37) | v36;
        v45 = v37 + v38;
        v46 = v45 >> 3;
        *a1 = v44;
        if ((a1 + v46) <= v27)
        {
          v43 = (a1 + v46);
        }

        else
        {
          v43 = v27;
        }

        v37 = v45 & 7;
        v36 = v44 >> (8 * v46);
        v19 = 56;
        goto LABEL_19;
      }
    }

    else
    {
      LOBYTE(v38) = 0;
      v39 = *v33;
    }

    v43 = a1;
LABEL_19:
    v41 = ((dword_24398F5CC[v19] & (v39 >> v38)) << v37) | v36;
    v42 = v37 + v19;
    goto LABEL_20;
  }

  v41 = ((dword_24398F5CC[v19] & *v33) << v37) | v36;
  v42 = v37 + v19;
  v43 = a1;
LABEL_20:
  v47 = v42 >> 3;
  *v43 = v41;
  v48 = (v43 + v47);
  if ((v43 + v47) > v27)
  {
    v48 = v27;
  }

  v49 = v41 >> (8 * v47);
  v50 = v42 & 7;
  v51 = a10 - 2;
  v102 = a1;
  if (a10 >= 2)
  {
    v52 = a9 + 8 * a10 - 16;
    do
    {
      v53 = *(a8 + v51);
      v54 = *(a6 + v51);
      v55 = *(a4 + v51);
      v56 = byte_24398F570[v53];
      v57 = byte_24398F594[v55];
      v58 = (v25 + *&v23[4 * *(a6 + v51) + 2]) >> 16;
      v59 = (v25 & dword_24398F5CC[v58]) << v50;
      v60 = v50 + v58;
      v25 = v20[(v25 >> ((v25 + *&v23[4 * *(a6 + v51) + 2]) >> 16)) + *&v23[4 * *(a6 + v51)]];
      v61 = &v106[4 * v55];
      v62 = *v61;
      v63 = (v17 + *(v61 + 1)) >> 16;
      v64 = (v17 & dword_24398F5CC[v63]) << v60;
      v65 = v60 + v63;
      v17 = v14[(v17 >> v63) + v62];
      v66 = &v31[4 * v53];
      LODWORD(v63) = *v66;
      v67 = (v32 + *(v66 + 1)) >> 16;
      v68 = v59 | v49 | v64 | ((v32 & dword_24398F5CC[v67]) << v65);
      v69 = v65 + v67;
      v32 = v28[(v32 >> v67) + v63];
      v70 = v56 + v54 + v57;
      if (v70 >= 0x1F)
      {
        v71 = v69 >> 3;
        *v48 = v68;
        if ((v48 + v71) <= v27)
        {
          v48 = (v48 + v71);
        }

        else
        {
          v48 = v27;
        }

        v69 &= 7u;
        v68 >>= 8 * v71;
      }

      v72 = v69 + v56;
      v73 = ((dword_24398F5CC[v56] & *(v52 + 4)) << v69) | ((dword_24398F5CC[v57] & *(v52 + 6)) << (v69 + v56)) | v68;
      v74 = v72 + v57;
      if (v70 >= 0x39)
      {
        v75 = v74 >> 3;
        *v48 = v73;
        if ((v48 + v75) <= v27)
        {
          v48 = (v48 + v75);
        }

        else
        {
          v48 = v27;
        }

        v74 &= 7u;
        v73 >>= 8 * v75;
      }

      if (a11)
      {
        if (v54 > 0x37)
        {
          v77 = *v52;
          v76 = v54 - 56;
          if (v54 != 56)
          {
            v79 = ((dword_24398F5CC[v76] & v77) << v74) | v73;
            v80 = (v74 + v76) >> 3;
            *v48 = v79;
            if ((v48 + v80) <= v27)
            {
              v48 = (v48 + v80);
            }

            else
            {
              v48 = v27;
            }

            v74 = (v74 + v76) & 7;
            v73 = v79 >> (8 * v80);
            v54 = 56;
          }
        }

        else
        {
          LOBYTE(v76) = 0;
          v77 = *v52;
        }

        v78 = v77 >> v76;
      }

      else
      {
        v78 = *v52;
      }

      v81 = ((dword_24398F5CC[v54] & v78) << v74) | v73;
      v82 = (v74 + v54) >> 3;
      *v48 = v81;
      if ((v48 + v82) <= v27)
      {
        v48 = (v48 + v82);
      }

      else
      {
        v48 = v27;
      }

      v49 = v81 >> (8 * v82);
      --v51;
      v50 = (v74 + v54) & 7;
      v52 -= 8;
    }

    while (v51 < a10);
  }

  v83 = ((v17 & dword_24398F5CC[v105]) << v50) | v49;
  v84 = v50 + v105;
  v85 = v84 >> 3;
  *v48 = v83;
  v86 = (v48 + v85);
  if ((v48 + v85) > v27)
  {
    v86 = v27;
  }

  v87 = v84 & 7;
  v88 = ((v25 & dword_24398F5CC[v104]) << v87) | (v83 >> (8 * v85));
  v89 = v87 + v104;
  v90 = v89 >> 3;
  *v86 = v88;
  v91 = (v86 + v90);
  if (v91 > v27)
  {
    v91 = v27;
  }

  v92 = v89 & 7;
  v93 = ((v32 & dword_24398F5CC[v103]) << v92) | (v88 >> (8 * v90));
  v94 = v92 + v103;
  v95 = v94 >> 3;
  *v91 = v93;
  v96 = (v91 + v95);
  if (v96 > v27)
  {
    v96 = v27;
  }

  v97 = v94 & 7;
  v98 = (v93 >> (8 * v95)) | (1 << v97);
  v99 = v97 + 1;
  *v96 = v98;
  v100 = v96 + (v99 >> 3);
  if (v100 > v27)
  {
    v100 = v27;
  }

  if (v100 >= v27)
  {
    return -70;
  }

  v101 = ((v99 & 7) != 0 ? v100 + 1 : v100);
  result = v101 - v102;
  if (v101 == v102)
  {
    return -70;
  }

  return result;
}

unint64_t sub_24390CF7C(uint64_t a1, char *a2, uint64_t a3, char *a4, uint64_t a5, int a6)
{
  v135 = *MEMORY[0x277D85DE8];
  v134 = 0;
  v132 = 0u;
  *v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  *v124 = 0u;
  v125 = 0u;
  *__n = 0u;
  memset(v122, 0, sizeof(v122));
  v11 = sub_24390705C((a1 + 928), *(a1 + 3176), *(a1 + 3184), (a1 + 224), v122, *(a1 + 3496), 0x22D8uLL);
  if (v11 <= 0xFFFFFFFFFFFFFF88)
  {
    v93 = &a4[a5];
    v12 = &a2[a3];
    v13 = LODWORD(v122[0]) == 2;
    v117 = *(a1 + 936);
    v96 = *(a1 + 8) != 0;
    __src = *(a1 + 3176);
    __dst = *(a1 + 3184);
    v14 = *(a1 + 3496);
    v15 = *(a1 + 928);
    v16 = *(a1 + 944);
    v17 = *(a1 + 952);
    v112 = *(a1 + 960);
    v111 = *(a1 + 968);
    v110 = *(a1 + 976);
    v115 = v15;
    v116 = *(a1 + 280);
    v113 = 1;
    v91 = v17;
    v92 = a2;
    v18 = a2;
    v19 = v15;
    v99 = v14;
    v106 = v12;
    while (1)
    {
      v95 = a4;
      v20 = 0;
      v21 = v19;
      v22 = 0;
      v23 = v18;
      v109 = v18 + 3;
      v100 = v12 - v18 - 3;
      v108 = v13;
      if (v13)
      {
        v24 = 200;
      }

      else
      {
        v24 = 0;
      }

      v102 = 0x4000 - v24;
      v103 = 1024 - v24;
      v114 = v16;
      *v107 = v17 - v16;
      v119 = v21;
      v97 = v23;
      v98 = (v21 + 6);
      while (1)
      {
        if (v15 == v117)
        {
          goto LABEL_12;
        }

        v25 = v119 + 8 * v20;
        v26 = *(v25 + 4);
        if (*(a1 + 1004) == ((v25 - *(a1 + 928)) >> 3) && *(a1 + 1000) == 1)
        {
          v26 |= 0x10000uLL;
        }

        ++v20;
        if (v25 == v117 - 8)
        {
LABEL_12:
          v27 = 1;
          v22 = *v107;
        }

        else
        {
          v27 = 0;
          v22 += v26;
        }

        LODWORD(v120) = 255;
        if ((LODWORD(v122[0]) - 2) < 2)
        {
          v28 = v22;
          if (sub_243904100(v14, &v120, v114, v22, v14, 0x22D8uLL) <= 0xFFFFFFFFFFFFFF88)
          {
            v29 = sub_243904F94(__dst, v14, v120);
            v30 = __n[1];
            if (!v108)
            {
              v30 = 0;
            }

            v28 = v29 + v30 + 3;
          }
        }

        else if (LODWORD(v122[0]))
        {
          v28 = LODWORD(v122[0]) == 1;
        }

        else
        {
          v28 = v22;
        }

        if (v20)
        {
          v31 = sub_24390D9A0(v124[1], v110, 0x1Fu, v20, __dst + 1032, 0, word_24398F64C, 5, 0x1Cu, v14);
          v32 = sub_24390D9A0(v124[0], v112, 0x23u, v20, __dst + 2144, &unk_24398F686, word_24398F6AA, 6, 0x23u, v14);
          v33 = sub_24390D9A0(v124[2], v111, 0x34u, v20, __dst + 1418, &unk_24398F6F2, word_24398F728, 6, 0x34u, v14);
          v34 = v133[1];
          if (!v113)
          {
            v34 = 0;
          }

          if (v28 + v31 + v32 + v33 + v34 + 6 > v116)
          {
            v35 = 1;
          }

          else
          {
            v35 = v27;
          }

          if ((v35 & 1) == 0)
          {
            goto LABEL_105;
          }

          v101 = v119 + 8 * v20;
          if (v20 < 1)
          {
            v36 = 0;
          }

          else
          {
            v36 = 0;
            v37 = v119 - *(a1 + 928);
            v38 = 8 * v20;
            v39 = v98;
            do
            {
              v41 = *v39;
              v39 += 4;
              v40 = v41;
              v42 = v41 + 3;
              if (*(a1 + 1004) == (v37 >> 3))
              {
                v43 = v40 + 65539;
                if (*(a1 + 1000) == 2)
                {
                  v42 = v43;
                }
              }

              v36 += v42;
              v37 += 8;
              v38 -= 8;
            }

            while (v38 > 0);
          }
        }

        else
        {
          if (v28 + 6 > v116)
          {
            v44 = 1;
          }

          else
          {
            v44 = v27;
          }

          if ((v44 & 1) == 0)
          {
            goto LABEL_105;
          }

          v36 = 0;
          v101 = v119;
        }

        if (a6)
        {
          v45 = v27;
        }

        else
        {
          v45 = 0;
        }

        if (v103 > v22)
        {
          v46 = 3;
        }

        else
        {
          v46 = 4;
        }

        if (v102 > v22)
        {
          v47 = v46;
        }

        else
        {
          v47 = v46 + 1;
        }

        if (v108)
        {
          v48 = v122[0];
        }

        else
        {
          v48 = 3;
        }

        v104 = v45;
        if (!v22)
        {
LABEL_57:
          v49 = sub_24390C138(v109, v100, v114, v22);
LABEL_59:
          v50 = v49;
          v51 = 1;
          goto LABEL_60;
        }

        if (LODWORD(v122[0]) == 1)
        {
          v49 = sub_24390C1C8(v109, v100, v114, v22);
          goto LABEL_59;
        }

        if (!LODWORD(v122[0]))
        {
          goto LABEL_57;
        }

        v57 = 0;
        v58 = &v109[v47];
        if (v108 && LODWORD(v122[0]) == 2)
        {
          v57 = __n[1];
          memcpy(&v109[v47], v122 + 4, __n[1]);
          v58 += v57;
        }

        v59 = v106 - v58;
        if (v47 == 3)
        {
          v60 = sub_24390500C(v58, v59, v114, v22, __dst, v96);
        }

        else
        {
          v60 = sub_243905E60(v58, v59, v114, v22, __dst, v96);
        }

        if ((v60 - 1) > 0xFFFFFFFFFFFFFF87)
        {
          goto LABEL_105;
        }

        v70 = v60 + v57;
        if (!v108 && v70 >= v22)
        {
          goto LABEL_57;
        }

        v71 = 3;
        if (v70 > 0x3FF)
        {
          v71 = 4;
        }

        if ((v70 & 0xFFFFFFFFFFFFC000) != 0)
        {
          ++v71;
        }

        if (v47 < v71)
        {
          goto LABEL_57;
        }

        v72 = v48 + 16 * v22;
        if (v47 == 5)
        {
          *(v97 + 3) = v72 + (v70 << 22) + 12;
          v97[7] = v70 >> 10;
        }

        else if (v47 == 4)
        {
          *v109 = v72 + (v70 << 18) + 8;
        }

        else
        {
          v73 = v72 + (v70 << 14);
          *(v97 + 3) = v73;
          v97[5] = BYTE2(v73);
        }

        v51 = 0;
        v50 = &v58[v60] - v109;
LABEL_60:
        if (v50 > 0xFFFFFFFFFFFFFF88)
        {
          goto LABEL_151;
        }

        if (!v50)
        {
          goto LABEL_105;
        }

        v52 = &v109[v50];
        v53 = v106 - &v109[v50];
        v54 = *(a1 + 228) > 0x39u;
        if (v53 < 4)
        {
          goto LABEL_126;
        }

        if (v20 >= 0x7F)
        {
          if (v20 >> 8 > 0x7E)
          {
            *v52 = -1;
            *(v52 + 1) = v20 - 32512;
            v55 = v52 + 3;
          }

          else
          {
            *v52 = BYTE1(v20) | 0x80;
            v52[1] = v20;
            v55 = v52 + 2;
          }
        }

        else
        {
          *v52 = v20;
          v55 = v52 + 1;
          if (!v20)
          {
            v56 = 1;
            v50 = 1;
            goto LABEL_86;
          }
        }

        v61 = v51;
        v62 = v55 + 1;
        if (!v113)
        {
          break;
        }

        *v55 = (LOBYTE(v124[0]) << 6) + 16 * LOBYTE(v124[1]) + 4 * LOBYTE(v124[2]);
        memcpy(v55 + 1, &v124[3], v133[1]);
        v63 = &v62[v133[1]];
        v64 = sub_24390CA28(v63, v106 - v63, __dst + 1418, v111, __dst + 1032, v110, __dst + 2144, v112, v119, v20, v54);
        v50 = v64;
        if (v64 >= 0xFFFFFFFFFFFFFF89)
        {
          goto LABEL_151;
        }

        v65 = v63 + v64;
        if (!v134)
        {
          goto LABEL_81;
        }

        v51 = v61;
        v14 = v99;
        if (v134 + v64 >= 4)
        {
          goto LABEL_82;
        }

LABEL_105:
        v15 = v115;
        if (v27)
        {
          v76 = v119;
          v67 = v97;
          a4 = v95;
          v13 = v108;
          goto LABEL_118;
        }
      }

      *v55 = -4;
      v66 = sub_24390CA28((v55 + 1), v106 - v62, __dst + 1418, v111, __dst + 1032, v110, __dst + 2144, v112, v119, v20, v54);
      v50 = v66;
      if (v66 >= 0xFFFFFFFFFFFFFF89)
      {
        goto LABEL_151;
      }

      v65 = &v62[v66];
LABEL_81:
      v51 = v61;
      v14 = v99;
LABEL_82:
      if (v65 - v55 < 4)
      {
        goto LABEL_105;
      }

      v50 = v65 - v52;
      if ((v65 - v52) > 0xFFFFFFFFFFFFFF88)
      {
        goto LABEL_151;
      }

      if (!v50)
      {
        goto LABEL_105;
      }

      v56 = 0;
LABEL_86:
      v67 = &v52[v50];
      v50 = &v52[v50] - v97;
      if (v104)
      {
        v68 = -19;
      }

      else
      {
        v68 = -20;
      }

      v69 = v68 + 8 * v50;
      *v97 = v69;
      v97[2] = BYTE2(v69);
      if (v50 > 0xFFFFFFFFFFFFFF88)
      {
        goto LABEL_151;
      }

      if (!v50 || v50 >= v36 + v22)
      {
        goto LABEL_105;
      }

      a4 = &v95[v36 + v22];
      v16 = (v114 + v22);
      v112 += v20;
      v111 += v20;
      v110 += v20;
      v13 = v108;
      if (!v51)
      {
        v13 = 0;
      }

      v74 = v56 == 0;
      v75 = v113;
      if (v74)
      {
        v75 = 0;
      }

      v113 = v75;
      v18 = v67;
      v76 = v101;
      v19 = v101;
      v15 = v115;
      v12 = v106;
      v17 = v91;
      if (v27)
      {
LABEL_118:
        if (v13)
        {
          memcpy(__dst, __src, 0x810uLL);
        }

        if (v113 && ((v124[0] - 1) < 2 || (v124[2] - 1) < 2 || (v124[1] - 3) > 0xFFFFFFFD))
        {
          v50 = 0;
          goto LABEL_151;
        }

        if (a4 < v93)
        {
          v77 = v93 - a4;
          v50 = v93 - a4 + 3;
          if (v50 > v106 - v67)
          {
LABEL_126:
            v50 = -70;
            goto LABEL_151;
          }

          v78 = a6 + 8 * v77;
          *v67 = v78;
          v67[2] = BYTE2(v78);
          memcpy(v67 + 3, a4, v77);
          if (v50 > 0xFFFFFFFFFFFFFF88)
          {
            goto LABEL_151;
          }

          v67 += v50;
          if (v76 < v117)
          {
            v120 = *(__src + 702);
            v121 = *(__src + 1406);
            if (v15 < v76)
            {
              v79 = *(a1 + 1004);
              v80 = v121;
              v81 = v120;
              v82 = HIDWORD(v120);
              v83 = v15 - *(a1 + 928);
              do
              {
                v84 = *(v15 + 4);
                if (v79 == (v83 >> 3) && *(a1 + 1000) == 1)
                {
                  v84 |= 0x10000u;
                }

                v85 = *v15;
                if (*v15 < 4u)
                {
                  if (v84)
                  {
                    v87 = *v15;
                  }

                  else
                  {
                    v87 = v85 + 1;
                  }

                  v88 = v87 - 1;
                  if (v87 == 1)
                  {
                    goto LABEL_148;
                  }

                  if (v87 == 4)
                  {
                    v86 = v81 - 1;
                  }

                  else
                  {
                    v86 = *(&v120 + v88);
                  }

                  if (v88 == 1)
                  {
                    v82 = v80;
                  }

                  v121 = v82;
                  HIDWORD(v120) = v81;
                }

                else
                {
                  v121 = v82;
                  HIDWORD(v120) = v81;
                  v86 = v85 - 3;
                }

                v80 = v82;
                LODWORD(v120) = v86;
                v82 = v81;
                v81 = v86;
LABEL_148:
                v15 += 8;
                v83 += 8;
              }

              while (v15 < v76);
            }

            *(__dst + 702) = v120;
            *(__dst + 1406) = v121;
          }
        }

        v50 = v67 - v92;
        goto LABEL_151;
      }
    }
  }

  v50 = v11;
LABEL_151:
  v89 = *MEMORY[0x277D85DE8];
  return v50;
}

unint64_t sub_24390D9A0(int a1, unsigned __int8 *a2, unsigned int a3, int64_t a4, unsigned __int16 *a5, uint64_t a6, unsigned __int16 *a7, char a8, unsigned int a9, unsigned int *a10)
{
  v15 = a2;
  v21 = a3;
  sub_243903E18(a10, &v21, a2, a4, a10, 0x22D8uLL);
  if (a1 == 1)
  {
    goto LABEL_9;
  }

  if (!a1)
  {
    if (v21 > a9)
    {
      return 10 * a4;
    }

    v17 = sub_24390C5E0(a7, a8, a10, v21);
    goto LABEL_7;
  }

  if ((a1 & 0xFFFFFFFE) != 2)
  {
LABEL_9:
    v17 = 0;
    goto LABEL_10;
  }

  v17 = sub_24390C54C(a5, a10, v21);
LABEL_7:
  if (v17 > 0xFFFFFFFFFFFFFF88)
  {
    return 10 * a4;
  }

LABEL_10:
  if (a4 >= 1)
  {
    v19 = &v15[a4];
    do
    {
      v20 = v15;
      if (a6)
      {
        v20 = (a6 + *v15);
      }

      v17 += *v20;
      ++v15;
    }

    while (v15 < v19);
  }

  return v17 >> 3;
}

uint64_t sub_24390DAB0(uint64_t result, uint64_t a2, int a3, int a4)
{
  v4 = *(result + 112);
  v5 = *(result + 272);
  v6 = *(result + 128);
  v7 = *(result + 8);
  v8 = *(result + 44);
  v9 = v7 + v8;
  v10 = a2 - 8;
  v11 = v7 + v8 + 2;
  if (a4 != 1)
  {
    if (v11 > v10)
    {
      return result;
    }

    v26 = *(result + 260);
    v27 = *(result + 264);
    result = (64 - v26);
    v28 = 32 - v26;
    v29 = 64 - v27;
    while (1)
    {
      v30 = 0;
      v31 = v8;
      do
      {
        if (v5 > 6)
        {
          if (v5 == 7)
          {
            v32 = *(v9 + v30);
            v33 = 0xCF1BBCDCBFA56300 * v32;
          }

          else
          {
            if (v5 != 8)
            {
LABEL_36:
              v34 = (-1640531535 * *(v9 + v30)) >> v28;
              v32 = *(v9 + v30);
              goto LABEL_40;
            }

            v32 = *(v9 + v30);
            v33 = 0xCF1BBCDCB7A56463 * v32;
          }
        }

        else if (v5 == 5)
        {
          v32 = *(v9 + v30);
          v33 = 0xCF1BBCDCBB000000 * v32;
        }

        else
        {
          if (v5 != 6)
          {
            goto LABEL_36;
          }

          v32 = *(v9 + v30);
          v33 = 0xCF1BBCDCBF9B0000 * v32;
        }

        v34 = v33 >> result;
LABEL_40:
        v35 = (0xCF1BBCDCB7A56463 * v32) >> v29;
        if (v30)
        {
          if (*(v4 + 4 * v35))
          {
            if (!a3)
            {
              break;
            }

            goto LABEL_46;
          }
        }

        else
        {
          *(v6 + 4 * v34) = v9 - v7;
        }

        *(v4 + 4 * v35) = v31;
        if (!a3)
        {
          break;
        }

LABEL_46:
        ++v31;
        v24 = v30++ >= 2;
      }

      while (!v24);
      v36 = v9 + 5;
      v9 += 3;
      LODWORD(v8) = v8 + 3;
      if (v36 > v10)
      {
        return result;
      }
    }
  }

  if (v11 > v10)
  {
    return result;
  }

  v12 = *(result + 260);
  v13 = *(result + 264);
  result = (56 - v12);
  v14 = 24 - v12;
  v15 = 56 - v13;
  v16 = v8 << 8;
  do
  {
    v17 = 0;
    v18 = v16;
    do
    {
      if (v5 > 6)
      {
        if (v5 == 7)
        {
          v19 = *(v9 + v17);
          v20 = 0xCF1BBCDCBFA56300 * v19;
        }

        else
        {
          if (v5 != 8)
          {
LABEL_12:
            v21 = (-1640531535 * *(v9 + v17)) >> v14;
            v19 = *(v9 + v17);
            goto LABEL_16;
          }

          v19 = *(v9 + v17);
          v20 = 0xCF1BBCDCB7A56463 * v19;
        }
      }

      else if (v5 == 5)
      {
        v19 = *(v9 + v17);
        v20 = 0xCF1BBCDCBB000000 * v19;
      }

      else
      {
        if (v5 != 6)
        {
          goto LABEL_12;
        }

        v19 = *(v9 + v17);
        v20 = 0xCF1BBCDCBF9B0000 * v19;
      }

      v21 = v20 >> result;
LABEL_16:
      v22 = (0xCF1BBCDCB7A56463 * v19) >> v15;
      v23 = v22 >> 8;
      if (v17)
      {
        if (*(v4 + 4 * v23))
        {
          if (!a3)
          {
            break;
          }

          goto LABEL_22;
        }
      }

      else
      {
        *(v6 + ((v21 >> 6) & 0x3FFFFFFFFFFFFFCLL)) = v21 | ((v9 - v7) << 8);
      }

      *(v4 + 4 * v23) = v18 + v22;
      if (!a3)
      {
        break;
      }

LABEL_22:
      v18 += 256;
      v24 = v17++ >= 2;
    }

    while (!v24);
    v25 = v9 + 5;
    v9 += 3;
    v16 += 768;
  }

  while (v25 <= v10);
  return result;
}

unint64_t sub_24390DD70(uint64_t a1, uint64_t a2, unsigned int *a3, unint64_t a4, uint64_t a5)
{
  v5 = a4;
  v6 = *(a1 + 272);
  v489 = *(a1 + 112);
  v7 = *(a1 + 128);
  v8 = *(a1 + 8);
  v9 = a4 + a5;
  v10 = a4 + a5 - v8;
  v11 = 1 << *(a1 + 256);
  v12 = *(a1 + 24);
  v13 = v10 - v12 > v11;
  v14 = v10 - v11;
  v15 = *(a1 + 40) == 0;
  if (v15 && v13)
  {
    v16 = v14;
  }

  else
  {
    v16 = v12;
  }

  v487 = v9;
  v17 = v9 - 8;
  v18 = *a3;
  v19 = a3[1];
  v468 = v8 + v16;
  if (v8 + v16 == a4)
  {
    v20 = (a4 + 1);
  }

  else
  {
    v20 = a4;
  }

  v21 = v20 - v8 - v12 > v11;
  v22 = v20 - v8 - v11;
  if (!v15 || !v21)
  {
    v22 = *(a1 + 24);
  }

  v23 = v20 - v8 - v22;
  if (v19 <= v23)
  {
    v24 = v19;
  }

  else
  {
    v24 = 0;
  }

  if (v18 <= v23)
  {
    v25 = v18;
  }

  else
  {
    v25 = 0;
  }

  _X8 = (v20 + 1);
  v481 = *(a1 + 128);
  v482 = v16;
  v27 = v17;
  v480 = v17;
  v473 = a3[1];
  v474 = *a3;
  v472 = v23;
  if (v6 == 5)
  {
    if (_X8 <= v17)
    {
      v244 = 0xCF1BBCDCBB000000;
      v245 = 0xCF1BBCDCB7A56463;
      v246 = 64 - *(a1 + 264);
      v247 = (64 - *(a1 + 260));
      v248 = v487 - 7;
      v485 = v487 - 3;
      v478 = v487 - 1;
      v249 = (v487 - 32);
      v466 = v8 - 1;
      while (1)
      {
        v250 = (v20 + 32);
        v251 = *v20;
        v252 = (*v20 * v245) >> v246;
        v253 = *(v489 + 4 * v252);
        v254 = (v8 + v253);
        v255 = 1;
        while (1)
        {
          v256 = (v251 * v244) >> v247;
          v257 = *(v7 + 4 * v256);
          v258 = v20 - v8;
          *(v7 + 4 * v256) = v20 - v8;
          *(v489 + 4 * v252) = v20 - v8;
          if (v25)
          {
            v259 = v20 + 1;
            if (*(v20 - v25 + 1) == *(v20 + 1))
            {
              v264 = v20 + 5;
              v265 = (v20 - v25 + 5);
              if (v248 <= v20 + 5)
              {
                v268 = (v20 + 5);
LABEL_381:
                if (v268 < v485 && *v265 == *v268)
                {
                  ++v265;
                  ++v268;
                }

                if (v268 < v478 && *v265 == *v268)
                {
                  v265 = (v265 + 2);
                  v268 = (v268 + 2);
                }

                if (v268 < v487 && *v265 == *v268)
                {
                  v268 = (v268 + 1);
                }

                v273 = v268 - v264;
              }

              else
              {
                v266 = *v265;
                if (v266 == *v264)
                {
                  v267 = 0;
                  v268 = (v20 + 13);
                  v265 = (v268 - v25);
                  do
                  {
                    if (v268 >= v248)
                    {
                      goto LABEL_381;
                    }

                    v270 = *v265;
                    v265 += 2;
                    v269 = v270;
                    v272 = *v268;
                    v268 += 2;
                    v271 = v272;
                    v267 += 8;
                  }

                  while (v269 == v272);
                  v273 = v267 + (__clz(__rbit64(v271 ^ v269)) >> 3);
                }

                else
                {
                  v273 = __clz(__rbit64(*v264 ^ v266)) >> 3;
                }
              }

              v301 = v259 - v5;
              v302 = *(a2 + 24);
              if (v259 > v249)
              {
                v303 = v5;
                v304 = v244;
                v462 = v247;
                v305 = v273;
                v306 = v301;
                sub_24390C0CC(v302, v303, v259, v249);
                v301 = v306;
                v273 = v305;
                v247 = v462;
                v245 = 0xCF1BBCDCB7A56463;
                v244 = v304;
                v27 = v480;
                v7 = v481;
                goto LABEL_414;
              }

              *v302 = *v5;
              v309 = *(a2 + 24);
              if (v301 <= 0x10)
              {
                *(a2 + 24) = v309 + v301;
                v307 = *(a2 + 8);
              }

              else
              {
                *(v309 + 16) = *(v5 + 16);
                if (v301 >= 33)
                {
                  v310 = v309 + v301;
                  v311 = (v309 + 32);
                  v312 = (v5 + 48);
                  do
                  {
                    *v311 = *(v312 - 1);
                    v313 = *v312;
                    v312 += 2;
                    v311[1] = v313;
                    v311 += 2;
                  }

                  while (v311 < v310);
                }

LABEL_414:
                *(a2 + 24) += v301;
                v307 = *(a2 + 8);
                if (v301 >= 0x10000)
                {
                  v308 = (v307 - *a2) >> 3;
                  *(a2 + 72) = 1;
                  *(a2 + 76) = v308;
                }

                LODWORD(v16) = v482;
                v249 = (v487 - 32);
              }

              v314 = v273 + 4;
              *(v307 + 4) = v301;
              *v307 = 1;
              v315 = v273 + 1;
              v316 = v25;
              if (!((v273 + 1) >> 16))
              {
                goto LABEL_425;
              }

LABEL_424:
              v317 = (v307 - *a2) >> 3;
              *(a2 + 72) = 2;
              *(a2 + 76) = v317;
              v25 = v316;
              goto LABEL_425;
            }
          }

          v252 = (*_X8 * v245) >> v246;
          if (v253 > v16 && *v254 == v251)
          {
            break;
          }

          v253 = *(v489 + 4 * v252);
          v254 = (v8 + v253);
          if (v257 > v16)
          {
            v260 = v8 + v257;
            if (*(v8 + v257) == *v20)
            {
              if (v253 > v16 && *v254 == *_X8)
              {
                v283 = (_X8 + 1);
                v284 = v254 + 1;
                if (v248 <= (_X8 + 1))
                {
                  v286 = _X8 + 1;
LABEL_499:
                  v340 = v468;
                  if (v286 < v485 && *v284 == *v286)
                  {
                    ++v284;
                    ++v286;
                  }

                  if (v286 < v478 && *v284 == *v286)
                  {
                    v284 = (v284 + 2);
                    v286 = (v286 + 2);
                  }

                  if (v286 < v487 && *v284 == *v286)
                  {
                    v286 = (v286 + 1);
                  }

                  v291 = v286 - v283;
                }

                else
                {
                  if (*v284 == *v283)
                  {
                    v285 = 0;
                    v284 = (v8 + 16 + v253);
                    v286 = _X8 + 2;
                    do
                    {
                      if (v286 >= v248)
                      {
                        goto LABEL_499;
                      }

                      v288 = *v284;
                      v284 += 2;
                      v287 = v288;
                      v290 = *v286;
                      v286 += 2;
                      v289 = v290;
                      v285 += 8;
                    }

                    while (v287 == v290);
                    v291 = v285 + (__clz(__rbit64(v289 ^ v287)) >> 3);
                  }

                  else
                  {
                    v291 = __clz(__rbit64(*v283 ^ *v284)) >> 3;
                  }

                  v340 = v468;
                }

                v314 = v291 + 8;
                v316 = _X8 - v254;
                if (_X8 <= v5)
                {
                  v259 = _X8;
                  goto LABEL_517;
                }

                v338 = _X8 - 1;
                v341 = (v466 + v253);
                while (*v338 == *v341)
                {
                  ++v314;
                  v336 = v338 - 1;
                  if (v338 > v5)
                  {
                    --v338;
                    v356 = v341-- > v340;
                    if (v356)
                    {
                      continue;
                    }
                  }

                  goto LABEL_516;
                }
              }

              else
              {
                v292 = v20 + 4;
                v293 = (v260 + 4);
                if (v248 <= v20 + 4)
                {
                  v295 = v20 + 1;
LABEL_470:
                  if (v295 < v485 && *v293 == *v295)
                  {
                    ++v293;
                    ++v295;
                  }

                  if (v295 < v478 && *v293 == *v295)
                  {
                    v293 = (v293 + 2);
                    v295 = (v295 + 2);
                  }

                  if (v295 < v487 && *v293 == *v295)
                  {
                    v295 = (v295 + 1);
                  }

                  v335 = v468;
                  v300 = v295 - v292;
                }

                else
                {
                  if (*v293 == *v292)
                  {
                    v294 = 0;
                    v293 = (v8 + 12 + v257);
                    v295 = v20 + 3;
                    do
                    {
                      if (v295 >= v248)
                      {
                        goto LABEL_470;
                      }

                      v297 = *v293;
                      v293 += 2;
                      v296 = v297;
                      v299 = *v295;
                      v295 += 2;
                      v298 = v299;
                      v294 += 8;
                    }

                    while (v296 == v299);
                    v300 = v294 + (__clz(__rbit64(v298 ^ v296)) >> 3);
                  }

                  else
                  {
                    v300 = __clz(__rbit64(*v292 ^ *v293)) >> 3;
                  }

                  v335 = v468;
                }

                v314 = v300 + 4;
                v316 = v20 - v260;
                if (v20 <= v5)
                {
LABEL_497:
                  v259 = v20;
                  goto LABEL_517;
                }

                v338 = v20 - 1;
                v339 = (v466 + v257);
                while (*v338 == *v339)
                {
                  ++v314;
                  v336 = v338 - 1;
                  if (v338 > v5)
                  {
                    --v338;
                    v356 = v339-- > v335;
                    if (v356)
                    {
                      continue;
                    }
                  }

                  goto LABEL_516;
                }
              }

LABEL_488:
              v259 = (v338 + 1);
              goto LABEL_517;
            }
          }

          if (_X8 >= v250)
          {
            __asm
            {
              PRFM            #0, [X8,#0x40]
              PRFM            #0, [X8,#0x80]
            }

            ++v255;
            v250 += 256;
          }

          __asm { PRFM            #0, [X8,#0x100] }

          v20 = _X8;
          v251 = *_X8;
          _X8 = (_X8 + v255);
          if (_X8 > v27)
          {
            goto LABEL_534;
          }
        }

        v274 = (v20 + 1);
        v275 = v254 + 1;
        if (v248 <= (v20 + 1))
        {
          v277 = v20 + 1;
LABEL_459:
          v334 = v468;
          if (v277 < v485 && *v275 == *v277)
          {
            ++v275;
            ++v277;
          }

          if (v277 < v478 && *v275 == *v277)
          {
            v275 = (v275 + 2);
            v277 = (v277 + 2);
          }

          if (v277 < v487 && *v275 == *v277)
          {
            v277 = (v277 + 1);
          }

          v282 = v277 - v274;
        }

        else
        {
          if (*v275 == *v274)
          {
            v276 = 0;
            v275 = v254 + 2;
            v277 = v20 + 2;
            do
            {
              if (v277 >= v248)
              {
                goto LABEL_459;
              }

              v279 = *v275;
              v275 += 2;
              v278 = v279;
              v281 = *v277;
              v277 += 2;
              v280 = v281;
              v276 += 8;
            }

            while (v278 == v281);
            v282 = v276 + (__clz(__rbit64(v280 ^ v278)) >> 3);
          }

          else
          {
            v282 = __clz(__rbit64(*v274 ^ *v275)) >> 3;
          }

          v334 = v468;
        }

        v314 = v282 + 8;
        v316 = v20 - v254;
        if (v254 <= v334 || v20 <= v5)
        {
          goto LABEL_497;
        }

        v336 = v20 - 1;
        v337 = v254 - 1;
        while (*v336 == *v337)
        {
          ++v314;
          v338 = v336 - 1;
          if (v336 > v5)
          {
            --v336;
            v356 = v337-- > v334;
            if (v356)
            {
              continue;
            }
          }

          goto LABEL_488;
        }

LABEL_516:
        v259 = (v336 + 1);
LABEL_517:
        if (v255 <= 3)
        {
          *(v489 + 4 * v252) = _X8 - v8;
        }

        v342 = v259 - v5;
        v343 = *(a2 + 24);
        if (v259 > v249)
        {
          v344 = v5;
          v345 = v249;
          v346 = v245;
          v347 = v316;
          sub_24390C0CC(v343, v344, v259, v345);
          v316 = v347;
          v245 = v346;
          v244 = 0xCF1BBCDCBB000000;
          v27 = v480;
          v7 = v481;
          LODWORD(v16) = v482;
          goto LABEL_521;
        }

        *v343 = *v5;
        v349 = *(a2 + 24);
        if (v342 <= 0x10)
        {
          *(a2 + 24) = v349 + v342;
          v307 = *(a2 + 8);
        }

        else
        {
          *(v349 + 16) = *(v5 + 16);
          if (v342 >= 33)
          {
            v350 = v349 + v342;
            v351 = (v349 + 32);
            v352 = (v5 + 48);
            do
            {
              *v351 = *(v352 - 1);
              v353 = *v352;
              v352 += 2;
              v351[1] = v353;
              v351 += 2;
            }

            while (v351 < v350);
          }

LABEL_521:
          *(a2 + 24) += v342;
          v307 = *(a2 + 8);
          if (v342 >= 0x10000)
          {
            v348 = (v307 - *a2) >> 3;
            *(a2 + 72) = 1;
            *(a2 + 76) = v348;
          }

          v249 = (v487 - 32);
        }

        *(v307 + 4) = v342;
        *v307 = v316 + 3;
        v315 = v314 - 3;
        v24 = v25;
        v25 = v316;
        if (v314 - 3 >= 0x10000)
        {
          goto LABEL_424;
        }

LABEL_425:
        *(v307 + 6) = v315;
        *(a2 + 8) = v307 + 8;
        v5 = v259 + v314;
        if (v259 + v314 <= v27)
        {
          v318 = *(v8 + (v258 + 2));
          *(v489 + 4 * ((v318 * v245) >> v246)) = v258 + 2;
          *(v489 + 4 * ((*(v5 - 2) * v245) >> v246)) = v5 - 2 - v8;
          *(v7 + 4 * ((v318 * v244) >> v247)) = v258 + 2;
          *(v7 + 4 * ((*(v5 - 1) * v244) >> v247)) = v5 - 1 - v8;
          while (1)
          {
            v104 = v24;
            v24 = v25;
            if (!v104 || *v5 != *(v5 - v104))
            {
              break;
            }

            v319 = (v5 + 4);
            v320 = (v5 + 4 - v104);
            if (v248 <= v5 + 4)
            {
              v322 = (v5 + 4);
LABEL_437:
              if (v322 < v485 && *v320 == *v322)
              {
                ++v320;
                ++v322;
              }

              if (v322 < v478 && *v320 == *v322)
              {
                v320 = (v320 + 2);
                v322 = (v322 + 2);
              }

              if (v322 < v487 && *v320 == *v322)
              {
                v322 = (v322 + 1);
              }

              v327 = v322 - v319;
            }

            else if (*v320 == *v319)
            {
              v321 = 0;
              v322 = (v5 + 12);
              v320 = (v5 + 12 - v104);
              do
              {
                if (v322 >= v248)
                {
                  goto LABEL_437;
                }

                v324 = *v320;
                v320 += 2;
                v323 = v324;
                v326 = *v322;
                v322 += 2;
                v325 = v326;
                v321 += 8;
              }

              while (v323 == v326);
              v327 = v321 + (__clz(__rbit64(v325 ^ v323)) >> 3);
            }

            else
            {
              v327 = __clz(__rbit64(*v319 ^ *v320)) >> 3;
            }

            v328 = *v5;
            *(v7 + 4 * ((*v5 * v244) >> v247)) = v5 - v8;
            *(v489 + 4 * ((v328 * v245) >> v246)) = v5 - v8;
            v329 = *(a2 + 24);
            if (v5 <= v249)
            {
              *v329 = *v5;
            }

            else
            {
              v330 = v244;
              v331 = v245;
              sub_24390C0CC(v329, v5, v5, v249);
              v249 = (v487 - 32);
              v245 = v331;
              v244 = v330;
              v27 = v480;
              v7 = v481;
              LODWORD(v16) = v482;
            }

            v332 = *(a2 + 8);
            *(v332 + 4) = 0;
            *v332 = 1;
            if (v327 + 1 >= 0x10000)
            {
              v333 = (v332 - *a2) >> 3;
              *(a2 + 72) = 2;
              *(a2 + 76) = v333;
            }

            *(v332 + 6) = v327 + 1;
            *(a2 + 8) = v332 + 8;
            v5 += v327 + 4;
            v25 = v104;
            v103 = v24;
            if (v5 > v27)
            {
              goto LABEL_456;
            }
          }

          v103 = v104;
          v104 = v25;
        }

        else
        {
          v103 = v24;
          v104 = v25;
        }

LABEL_456:
        _X8 = (v5 + 1);
        v25 = v104;
        v24 = v103;
        v20 = v5;
        if (v5 + 1 > v27)
        {
          goto LABEL_535;
        }
      }
    }

LABEL_534:
    LODWORD(v104) = v25;
    LODWORD(v103) = v24;
    goto LABEL_535;
  }

  if (v6 == 6)
  {
    if (_X8 <= v17)
    {
      v138 = 0xCF1BBCDCBF9B0000;
      v139 = 0xCF1BBCDCB7A56463;
      v140 = 64 - *(a1 + 264);
      v484 = 64 - *(a1 + 260);
      v141 = v487 - 7;
      v471 = v487 - 3;
      v469 = v487 - 1;
      v477 = (v487 - 32);
      v464 = v8 - 1;
      while (1)
      {
        v142 = (v20 + 32);
        v143 = *v20;
        v144 = (*v20 * v139) >> v140;
        v145 = *(v489 + 4 * v144);
        v146 = (v8 + v145);
        v147 = 1;
        while (1)
        {
          v148 = (v143 * v138) >> v484;
          v149 = *(v7 + 4 * v148);
          v150 = v20 - v8;
          *(v7 + 4 * v148) = v20 - v8;
          *(v489 + 4 * v144) = v20 - v8;
          if (v25)
          {
            v151 = v20 + 1;
            if (*(v20 - v25 + 1) == *(v20 + 1))
            {
              v156 = v20 + 5;
              v157 = (v20 - v25 + 5);
              if (v141 <= v20 + 5)
              {
                v160 = (v20 + 5);
LABEL_210:
                if (v160 < v471 && *v157 == *v160)
                {
                  ++v157;
                  ++v160;
                }

                if (v160 < v469 && *v157 == *v160)
                {
                  v157 = (v157 + 2);
                  v160 = (v160 + 2);
                }

                if (v160 < v487 && *v157 == *v160)
                {
                  v160 = (v160 + 1);
                }

                v165 = v160 - v156;
              }

              else
              {
                v158 = *v157;
                if (v158 == *v156)
                {
                  v159 = 0;
                  v160 = (v20 + 13);
                  v157 = (v160 - v25);
                  do
                  {
                    if (v160 >= v141)
                    {
                      goto LABEL_210;
                    }

                    v162 = *v157;
                    v157 += 2;
                    v161 = v162;
                    v164 = *v160;
                    v160 += 2;
                    v163 = v164;
                    v159 += 8;
                  }

                  while (v161 == v164);
                  v165 = v159 + (__clz(__rbit64(v163 ^ v161)) >> 3);
                }

                else
                {
                  v165 = __clz(__rbit64(*v156 ^ v158)) >> 3;
                }
              }

              v193 = v151 - v5;
              v194 = *(a2 + 24);
              if (v151 > v477)
              {
                v195 = v5;
                v196 = v138;
                v197 = v139;
                v461 = v193;
                sub_24390C0CC(v194, v195, v151, v477);
                v193 = v461;
                v139 = v197;
                v138 = v196;
                v27 = v480;
                v7 = v481;
                goto LABEL_243;
              }

              *v194 = *v5;
              v200 = *(a2 + 24);
              if (v193 <= 0x10)
              {
                *(a2 + 24) = v200 + v193;
                v198 = *(a2 + 8);
              }

              else
              {
                *(v200 + 16) = *(v5 + 16);
                if (v193 >= 33)
                {
                  v201 = v200 + v193;
                  v202 = (v200 + 32);
                  v203 = (v5 + 48);
                  do
                  {
                    *v202 = *(v203 - 1);
                    v204 = *v203;
                    v203 += 2;
                    v202[1] = v204;
                    v202 += 2;
                  }

                  while (v202 < v201);
                }

LABEL_243:
                *(a2 + 24) += v193;
                v198 = *(a2 + 8);
                if (v193 >= 0x10000)
                {
                  v199 = (v198 - *a2) >> 3;
                  *(a2 + 72) = 1;
                  *(a2 + 76) = v199;
                }

                LODWORD(v16) = v482;
              }

              v205 = v165 + 4;
              *(v198 + 4) = v193;
              *v198 = 1;
              v206 = v165 + 1;
              v207 = (v165 + 1) >> 16;
              v208 = v25;
              if (!v207)
              {
                goto LABEL_254;
              }

LABEL_253:
              v209 = (v198 - *a2) >> 3;
              *(a2 + 72) = 2;
              *(a2 + 76) = v209;
              v25 = v208;
              goto LABEL_254;
            }
          }

          v144 = (*_X8 * v139) >> v140;
          if (v145 > v16 && *v146 == v143)
          {
            break;
          }

          v145 = *(v489 + 4 * v144);
          v146 = (v8 + v145);
          if (v149 > v16)
          {
            v152 = v8 + v149;
            if (*(v8 + v149) == *v20)
            {
              if (v145 > v16 && *v146 == *_X8)
              {
                v175 = (_X8 + 1);
                v176 = v146 + 1;
                if (v141 <= (_X8 + 1))
                {
                  v178 = _X8 + 1;
LABEL_328:
                  v232 = v468;
                  if (v178 < v471 && *v176 == *v178)
                  {
                    ++v176;
                    ++v178;
                  }

                  if (v178 < v469 && *v176 == *v178)
                  {
                    v176 = (v176 + 2);
                    v178 = (v178 + 2);
                  }

                  if (v178 < v487 && *v176 == *v178)
                  {
                    v178 = (v178 + 1);
                  }

                  v183 = v178 - v175;
                }

                else
                {
                  if (*v176 == *v175)
                  {
                    v177 = 0;
                    v176 = (v8 + 16 + v145);
                    v178 = _X8 + 2;
                    do
                    {
                      if (v178 >= v141)
                      {
                        goto LABEL_328;
                      }

                      v180 = *v176;
                      v176 += 2;
                      v179 = v180;
                      v182 = *v178;
                      v178 += 2;
                      v181 = v182;
                      v177 += 8;
                    }

                    while (v179 == v182);
                    v183 = v177 + (__clz(__rbit64(v181 ^ v179)) >> 3);
                  }

                  else
                  {
                    v183 = __clz(__rbit64(*v175 ^ *v176)) >> 3;
                  }

                  v232 = v468;
                }

                v205 = v183 + 8;
                v208 = _X8 - v146;
                if (_X8 <= v5)
                {
                  v151 = _X8;
                  goto LABEL_346;
                }

                v230 = _X8 - 1;
                v233 = (v464 + v145);
                while (*v230 == *v233)
                {
                  ++v205;
                  v228 = v230 - 1;
                  if (v230 > v5)
                  {
                    --v230;
                    v356 = v233-- > v232;
                    if (v356)
                    {
                      continue;
                    }
                  }

                  goto LABEL_345;
                }
              }

              else
              {
                v184 = v20 + 4;
                v185 = (v152 + 4);
                if (v141 <= v20 + 4)
                {
                  v187 = v20 + 1;
LABEL_299:
                  if (v187 < v471 && *v185 == *v187)
                  {
                    ++v185;
                    ++v187;
                  }

                  if (v187 < v469 && *v185 == *v187)
                  {
                    v185 = (v185 + 2);
                    v187 = (v187 + 2);
                  }

                  if (v187 < v487 && *v185 == *v187)
                  {
                    v187 = (v187 + 1);
                  }

                  v227 = v468;
                  v192 = v187 - v184;
                }

                else
                {
                  if (*v185 == *v184)
                  {
                    v186 = 0;
                    v185 = (v8 + 12 + v149);
                    v187 = v20 + 3;
                    do
                    {
                      if (v187 >= v141)
                      {
                        goto LABEL_299;
                      }

                      v189 = *v185;
                      v185 += 2;
                      v188 = v189;
                      v191 = *v187;
                      v187 += 2;
                      v190 = v191;
                      v186 += 8;
                    }

                    while (v188 == v191);
                    v192 = v186 + (__clz(__rbit64(v190 ^ v188)) >> 3);
                  }

                  else
                  {
                    v192 = __clz(__rbit64(*v184 ^ *v185)) >> 3;
                  }

                  v227 = v468;
                }

                v205 = v192 + 4;
                v208 = v20 - v152;
                if (v20 <= v5)
                {
LABEL_326:
                  v151 = v20;
                  goto LABEL_346;
                }

                v230 = v20 - 1;
                v231 = (v464 + v149);
                while (*v230 == *v231)
                {
                  ++v205;
                  v228 = v230 - 1;
                  if (v230 > v5)
                  {
                    --v230;
                    v356 = v231-- > v227;
                    if (v356)
                    {
                      continue;
                    }
                  }

                  goto LABEL_345;
                }
              }

LABEL_317:
              v151 = (v230 + 1);
              goto LABEL_346;
            }
          }

          if (_X8 >= v142)
          {
            __asm
            {
              PRFM            #0, [X8,#0x40]
              PRFM            #0, [X8,#0x80]
            }

            ++v147;
            v142 += 256;
          }

          __asm { PRFM            #0, [X8,#0x100] }

          v20 = _X8;
          v143 = *_X8;
          _X8 = (_X8 + v147);
          if (_X8 > v27)
          {
            goto LABEL_534;
          }
        }

        v166 = (v20 + 1);
        v167 = v146 + 1;
        if (v141 <= (v20 + 1))
        {
          v169 = v20 + 1;
LABEL_288:
          v226 = v468;
          if (v169 < v471 && *v167 == *v169)
          {
            ++v167;
            ++v169;
          }

          if (v169 < v469 && *v167 == *v169)
          {
            v167 = (v167 + 2);
            v169 = (v169 + 2);
          }

          if (v169 < v487 && *v167 == *v169)
          {
            v169 = (v169 + 1);
          }

          v174 = v169 - v166;
        }

        else
        {
          if (*v167 == *v166)
          {
            v168 = 0;
            v167 = v146 + 2;
            v169 = v20 + 2;
            do
            {
              if (v169 >= v141)
              {
                goto LABEL_288;
              }

              v171 = *v167;
              v167 += 2;
              v170 = v171;
              v173 = *v169;
              v169 += 2;
              v172 = v173;
              v168 += 8;
            }

            while (v170 == v173);
            v174 = v168 + (__clz(__rbit64(v172 ^ v170)) >> 3);
          }

          else
          {
            v174 = __clz(__rbit64(*v166 ^ *v167)) >> 3;
          }

          v226 = v468;
        }

        v205 = v174 + 8;
        v208 = v20 - v146;
        if (v146 <= v226 || v20 <= v5)
        {
          goto LABEL_326;
        }

        v228 = v20 - 1;
        v229 = v146 - 1;
        while (*v228 == *v229)
        {
          ++v205;
          v230 = v228 - 1;
          if (v228 > v5)
          {
            --v228;
            v356 = v229-- > v226;
            if (v356)
            {
              continue;
            }
          }

          goto LABEL_317;
        }

LABEL_345:
        v151 = (v228 + 1);
LABEL_346:
        if (v147 <= 3)
        {
          *(v489 + 4 * v144) = _X8 - v8;
        }

        v234 = v151 - v5;
        v235 = *(a2 + 24);
        if (v151 > v477)
        {
          v236 = v5;
          v237 = v139;
          sub_24390C0CC(v235, v236, v151, v477);
          v139 = v237;
          v138 = 0xCF1BBCDCBF9B0000;
          v27 = v480;
          v7 = v481;
          LODWORD(v16) = v482;
          goto LABEL_350;
        }

        *v235 = *v5;
        v239 = *(a2 + 24);
        if (v234 <= 0x10)
        {
          *(a2 + 24) = v239 + v234;
          v198 = *(a2 + 8);
        }

        else
        {
          *(v239 + 16) = *(v5 + 16);
          if (v234 >= 33)
          {
            v240 = v239 + v234;
            v241 = (v239 + 32);
            v242 = (v5 + 48);
            do
            {
              *v241 = *(v242 - 1);
              v243 = *v242;
              v242 += 2;
              v241[1] = v243;
              v241 += 2;
            }

            while (v241 < v240);
          }

LABEL_350:
          *(a2 + 24) += v234;
          v198 = *(a2 + 8);
          if (v234 >= 0x10000)
          {
            v238 = (v198 - *a2) >> 3;
            *(a2 + 72) = 1;
            *(a2 + 76) = v238;
          }
        }

        *(v198 + 4) = v234;
        *v198 = v208 + 3;
        v206 = v205 - 3;
        v24 = v25;
        v25 = v208;
        if (v205 - 3 >= 0x10000)
        {
          goto LABEL_253;
        }

LABEL_254:
        *(v198 + 6) = v206;
        *(a2 + 8) = v198 + 8;
        v5 = v151 + v205;
        if (v151 + v205 <= v27)
        {
          v210 = *(v8 + (v150 + 2));
          *(v489 + 4 * ((v210 * v139) >> v140)) = v150 + 2;
          *(v489 + 4 * ((*(v5 - 2) * v139) >> v140)) = v5 - 2 - v8;
          *(v7 + 4 * ((v210 * v138) >> v484)) = v150 + 2;
          *(v7 + 4 * ((*(v5 - 1) * v138) >> v484)) = v5 - 1 - v8;
          while (1)
          {
            v104 = v24;
            v24 = v25;
            if (!v104 || *v5 != *(v5 - v104))
            {
              break;
            }

            v211 = (v5 + 4);
            v212 = (v5 + 4 - v104);
            if (v141 <= v5 + 4)
            {
              v214 = (v5 + 4);
LABEL_266:
              if (v214 < v471 && *v212 == *v214)
              {
                ++v212;
                ++v214;
              }

              if (v214 < v469 && *v212 == *v214)
              {
                v212 = (v212 + 2);
                v214 = (v214 + 2);
              }

              if (v214 < v487 && *v212 == *v214)
              {
                v214 = (v214 + 1);
              }

              v219 = v214 - v211;
            }

            else if (*v212 == *v211)
            {
              v213 = 0;
              v214 = (v5 + 12);
              v212 = (v5 + 12 - v104);
              do
              {
                if (v214 >= v141)
                {
                  goto LABEL_266;
                }

                v216 = *v212;
                v212 += 2;
                v215 = v216;
                v218 = *v214;
                v214 += 2;
                v217 = v218;
                v213 += 8;
              }

              while (v215 == v218);
              v219 = v213 + (__clz(__rbit64(v217 ^ v215)) >> 3);
            }

            else
            {
              v219 = __clz(__rbit64(*v211 ^ *v212)) >> 3;
            }

            v220 = *v5;
            *(v7 + 4 * ((*v5 * v138) >> v484)) = v5 - v8;
            *(v489 + 4 * ((v220 * v139) >> v140)) = v5 - v8;
            v221 = *(a2 + 24);
            if (v5 <= v477)
            {
              *v221 = *v5;
            }

            else
            {
              v222 = v138;
              v223 = v139;
              sub_24390C0CC(v221, v5, v5, v477);
              v139 = v223;
              v138 = v222;
              v27 = v480;
              v7 = v481;
              LODWORD(v16) = v482;
            }

            v224 = *(a2 + 8);
            *(v224 + 4) = 0;
            *v224 = 1;
            if (v219 + 1 >= 0x10000)
            {
              v225 = (v224 - *a2) >> 3;
              *(a2 + 72) = 2;
              *(a2 + 76) = v225;
            }

            *(v224 + 6) = v219 + 1;
            *(a2 + 8) = v224 + 8;
            v5 += v219 + 4;
            v25 = v104;
            v103 = v24;
            if (v5 > v27)
            {
              goto LABEL_285;
            }
          }

          v103 = v104;
          v104 = v25;
        }

        else
        {
          v103 = v24;
          v104 = v25;
        }

LABEL_285:
        _X8 = (v5 + 1);
        v25 = v104;
        v24 = v103;
        v20 = v5;
        if (v5 + 1 > v27)
        {
          goto LABEL_535;
        }
      }
    }

    goto LABEL_534;
  }

  if (v6 != 7)
  {
    if (_X8 <= v17)
    {
      v358 = 0xCF1BBCDCB7A56463;
      v359 = 64 - *(a1 + 264);
      v360 = 32 - *(a1 + 260);
      v361 = v487 - 7;
      v479 = v487 - 3;
      v486 = v487 - 1;
      v362 = (v487 - 32);
      v465 = v8 - 1;
      v467 = v359;
      while (1)
      {
        v363 = (v20 + 32);
        v364 = *v20;
        v365 = (*v20 * v358) >> v359;
        v366 = *(v489 + 4 * v365);
        v367 = (v8 + v366);
        v368 = 1;
        while (1)
        {
          v369 = (-1640531535 * v364) >> v360;
          v370 = *(v7 + 4 * v369);
          v371 = v20 - v8;
          *(v7 + 4 * v369) = v20 - v8;
          *(v489 + 4 * v365) = v20 - v8;
          if (v25)
          {
            v372 = v20 + 1;
            if (*(v20 - v25 + 1) == *(v20 + 1))
            {
              v377 = v20 + 5;
              v378 = (v20 - v25 + 5);
              if (v361 <= v20 + 5)
              {
                v381 = (v20 + 5);
LABEL_567:
                if (v381 < v479 && *v378 == *v381)
                {
                  ++v378;
                  ++v381;
                }

                if (v381 < v486 && *v378 == *v381)
                {
                  v378 = (v378 + 2);
                  v381 = (v381 + 2);
                }

                if (v381 < v487 && *v378 == *v381)
                {
                  v381 = (v381 + 1);
                }

                v386 = v381 - v377;
              }

              else
              {
                v379 = *v378;
                if (v379 == *v377)
                {
                  v380 = 0;
                  v381 = (v20 + 13);
                  v378 = (v381 - v25);
                  do
                  {
                    if (v381 >= v361)
                    {
                      goto LABEL_567;
                    }

                    v383 = *v378;
                    v378 += 2;
                    v382 = v383;
                    v385 = *v381;
                    v381 += 2;
                    v384 = v385;
                    v380 += 8;
                  }

                  while (v382 == v385);
                  v386 = v380 + (__clz(__rbit64(v384 ^ v382)) >> 3);
                }

                else
                {
                  v386 = __clz(__rbit64(*v377 ^ v379)) >> 3;
                }
              }

              v414 = v372 - v5;
              v415 = *(a2 + 24);
              if (v372 > v362)
              {
                v416 = v5;
                v417 = v358;
                v418 = v386;
                sub_24390C0CC(v415, v416, v372, v362);
                v386 = v418;
                v358 = v417;
                v27 = v480;
                v7 = v481;
                goto LABEL_600;
              }

              *v415 = *v5;
              v421 = *(a2 + 24);
              if (v414 <= 0x10)
              {
                *(a2 + 24) = v421 + v414;
                v419 = *(a2 + 8);
              }

              else
              {
                *(v421 + 16) = *(v5 + 16);
                if (v414 >= 33)
                {
                  v422 = v421 + v414;
                  v423 = (v421 + 32);
                  v424 = (v5 + 48);
                  do
                  {
                    *v423 = *(v424 - 1);
                    v425 = *v424;
                    v424 += 2;
                    v423[1] = v425;
                    v423 += 2;
                  }

                  while (v423 < v422);
                }

LABEL_600:
                *(a2 + 24) += v414;
                v419 = *(a2 + 8);
                if (v414 >= 0x10000)
                {
                  v420 = (v419 - *a2) >> 3;
                  *(a2 + 72) = 1;
                  *(a2 + 76) = v420;
                }

                LODWORD(v16) = v482;
                v362 = (v487 - 32);
              }

              v426 = v386 + 4;
              *(v419 + 4) = v414;
              *v419 = 1;
              v427 = v386 + 1;
              v428 = v25;
              if (!((v386 + 1) >> 16))
              {
                goto LABEL_611;
              }

LABEL_610:
              v429 = (v419 - *a2) >> 3;
              *(a2 + 72) = 2;
              *(a2 + 76) = v429;
              v25 = v428;
              goto LABEL_611;
            }
          }

          v364 = *_X8;
          v365 = (*_X8 * v358) >> v359;
          if (v366 > v16 && *v367 == *v20)
          {
            break;
          }

          v366 = *(v489 + 4 * v365);
          v367 = (v8 + v366);
          if (v370 > v16)
          {
            v373 = v8 + v370;
            if (*(v8 + v370) == *v20)
            {
              if (v366 > v16 && *v367 == v364)
              {
                v396 = (_X8 + 1);
                v397 = v367 + 1;
                if (v361 <= (_X8 + 1))
                {
                  v399 = _X8 + 1;
LABEL_685:
                  v449 = v468;
                  if (v399 < v479 && *v397 == *v399)
                  {
                    ++v397;
                    ++v399;
                  }

                  if (v399 < v486 && *v397 == *v399)
                  {
                    v397 = (v397 + 2);
                    v399 = (v399 + 2);
                  }

                  if (v399 < v487 && *v397 == *v399)
                  {
                    v399 = (v399 + 1);
                  }

                  v404 = v399 - v396;
                }

                else
                {
                  if (*v397 == *v396)
                  {
                    v398 = 0;
                    v397 = (v8 + 16 + v366);
                    v399 = _X8 + 2;
                    do
                    {
                      if (v399 >= v361)
                      {
                        goto LABEL_685;
                      }

                      v401 = *v397;
                      v397 += 2;
                      v400 = v401;
                      v403 = *v399;
                      v399 += 2;
                      v402 = v403;
                      v398 += 8;
                    }

                    while (v400 == v403);
                    v404 = v398 + (__clz(__rbit64(v402 ^ v400)) >> 3);
                  }

                  else
                  {
                    v404 = __clz(__rbit64(*v396 ^ *v397)) >> 3;
                  }

                  v449 = v468;
                }

                v426 = v404 + 8;
                v428 = _X8 - v367;
                if (_X8 <= v5)
                {
                  v372 = _X8;
                  goto LABEL_703;
                }

                v447 = _X8 - 1;
                v450 = (v465 + v366);
                while (*v447 == *v450)
                {
                  ++v426;
                  v445 = v447 - 1;
                  if (v447 > v5)
                  {
                    --v447;
                    v356 = v450-- > v449;
                    if (v356)
                    {
                      continue;
                    }
                  }

                  goto LABEL_702;
                }
              }

              else
              {
                v405 = v20 + 4;
                v406 = (v373 + 4);
                if (v361 <= v20 + 4)
                {
                  v408 = v20 + 1;
LABEL_656:
                  if (v408 < v479 && *v406 == *v408)
                  {
                    ++v406;
                    ++v408;
                  }

                  if (v408 < v486 && *v406 == *v408)
                  {
                    v406 = (v406 + 2);
                    v408 = (v408 + 2);
                  }

                  if (v408 < v487 && *v406 == *v408)
                  {
                    v408 = (v408 + 1);
                  }

                  v444 = v468;
                  v413 = v408 - v405;
                }

                else
                {
                  if (*v406 == *v405)
                  {
                    v407 = 0;
                    v406 = (v8 + 12 + v370);
                    v408 = v20 + 3;
                    do
                    {
                      if (v408 >= v361)
                      {
                        goto LABEL_656;
                      }

                      v410 = *v406;
                      v406 += 2;
                      v409 = v410;
                      v412 = *v408;
                      v408 += 2;
                      v411 = v412;
                      v407 += 8;
                    }

                    while (v409 == v412);
                    v413 = v407 + (__clz(__rbit64(v411 ^ v409)) >> 3);
                  }

                  else
                  {
                    v413 = __clz(__rbit64(*v405 ^ *v406)) >> 3;
                  }

                  v444 = v468;
                }

                v426 = v413 + 4;
                v428 = v20 - v373;
                if (v20 <= v5)
                {
LABEL_683:
                  v372 = v20;
                  goto LABEL_703;
                }

                v447 = v20 - 1;
                v448 = (v465 + v370);
                while (*v447 == *v448)
                {
                  ++v426;
                  v445 = v447 - 1;
                  if (v447 > v5)
                  {
                    --v447;
                    v356 = v448-- > v444;
                    if (v356)
                    {
                      continue;
                    }
                  }

                  goto LABEL_702;
                }
              }

LABEL_674:
              v372 = (v447 + 1);
              goto LABEL_703;
            }
          }

          if (_X8 >= v363)
          {
            __asm
            {
              PRFM            #0, [X8,#0x40]
              PRFM            #0, [X8,#0x80]
            }

            ++v368;
            v363 += 256;
          }

          __asm { PRFM            #0, [X8,#0x100] }

          v20 = _X8;
          _X8 = (_X8 + v368);
          if (_X8 > v27)
          {
            goto LABEL_534;
          }
        }

        v387 = (v20 + 1);
        v388 = v367 + 1;
        if (v361 <= (v20 + 1))
        {
          v390 = v20 + 1;
LABEL_645:
          v443 = v468;
          if (v390 < v479 && *v388 == *v390)
          {
            ++v388;
            ++v390;
          }

          if (v390 < v486 && *v388 == *v390)
          {
            v388 = (v388 + 2);
            v390 = (v390 + 2);
          }

          if (v390 < v487 && *v388 == *v390)
          {
            v390 = (v390 + 1);
          }

          v395 = v390 - v387;
        }

        else
        {
          if (*v388 == *v387)
          {
            v389 = 0;
            v388 = v367 + 2;
            v390 = v20 + 2;
            do
            {
              if (v390 >= v361)
              {
                goto LABEL_645;
              }

              v392 = *v388;
              v388 += 2;
              v391 = v392;
              v394 = *v390;
              v390 += 2;
              v393 = v394;
              v389 += 8;
            }

            while (v391 == v394);
            v395 = v389 + (__clz(__rbit64(v393 ^ v391)) >> 3);
          }

          else
          {
            v395 = __clz(__rbit64(*v387 ^ *v388)) >> 3;
          }

          v443 = v468;
        }

        v426 = v395 + 8;
        v428 = v20 - v367;
        if (v367 <= v443 || v20 <= v5)
        {
          goto LABEL_683;
        }

        v445 = v20 - 1;
        v446 = v367 - 1;
        while (*v445 == *v446)
        {
          ++v426;
          v447 = v445 - 1;
          if (v445 > v5)
          {
            --v445;
            v356 = v446-- > v443;
            if (v356)
            {
              continue;
            }
          }

          goto LABEL_674;
        }

LABEL_702:
        v372 = (v445 + 1);
LABEL_703:
        if (v368 <= 3)
        {
          *(v489 + 4 * v365) = _X8 - v8;
        }

        v451 = v372 - v5;
        v452 = *(a2 + 24);
        if (v372 > v362)
        {
          v453 = v5;
          v454 = v358;
          sub_24390C0CC(v452, v453, v372, v362);
          v358 = v454;
          v27 = v480;
          v7 = v481;
          LODWORD(v16) = v482;
          goto LABEL_707;
        }

        *v452 = *v5;
        v456 = *(a2 + 24);
        if (v451 <= 0x10)
        {
          *(a2 + 24) = v456 + v451;
          v419 = *(a2 + 8);
        }

        else
        {
          *(v456 + 16) = *(v5 + 16);
          if (v451 >= 33)
          {
            v457 = v456 + v451;
            v458 = (v456 + 32);
            v459 = (v5 + 48);
            do
            {
              *v458 = *(v459 - 1);
              v460 = *v459;
              v459 += 2;
              v458[1] = v460;
              v458 += 2;
            }

            while (v458 < v457);
          }

LABEL_707:
          *(a2 + 24) += v451;
          v419 = *(a2 + 8);
          if (v451 >= 0x10000)
          {
            v455 = (v419 - *a2) >> 3;
            *(a2 + 72) = 1;
            *(a2 + 76) = v455;
          }

          v362 = (v487 - 32);
        }

        *(v419 + 4) = v451;
        *v419 = v428 + 3;
        v427 = v426 - 3;
        v24 = v25;
        v25 = v428;
        if (v426 - 3 >= 0x10000)
        {
          goto LABEL_610;
        }

LABEL_611:
        *(v419 + 6) = v427;
        *(a2 + 8) = v419 + 8;
        v5 = v372 + v426;
        if (v372 + v426 <= v27)
        {
          LOBYTE(v359) = v467;
          *(v489 + 4 * ((*(v8 + (v371 + 2)) * v358) >> v467)) = v371 + 2;
          *(v489 + 4 * ((*(v5 - 2) * v358) >> v467)) = v5 - 2 - v8;
          *(v7 + 4 * ((-1640531535 * *(v8 + (v371 + 2))) >> v360)) = v371 + 2;
          *(v7 + 4 * ((-1640531535 * *(v5 - 1)) >> v360)) = v5 - 1 - v8;
          while (1)
          {
            v104 = v24;
            v24 = v25;
            if (!v104 || *v5 != *(v5 - v104))
            {
              break;
            }

            v430 = (v5 + 4);
            v431 = (v5 + 4 - v104);
            if (v361 <= v5 + 4)
            {
              v433 = (v5 + 4);
LABEL_623:
              if (v433 < v479 && *v431 == *v433)
              {
                ++v431;
                ++v433;
              }

              if (v433 < v486 && *v431 == *v433)
              {
                v431 = (v431 + 2);
                v433 = (v433 + 2);
              }

              if (v433 < v487 && *v431 == *v433)
              {
                v433 = (v433 + 1);
              }

              v438 = v433 - v430;
            }

            else if (*v431 == *v430)
            {
              v432 = 0;
              v433 = (v5 + 12);
              v431 = (v5 + 12 - v104);
              do
              {
                if (v433 >= v361)
                {
                  goto LABEL_623;
                }

                v435 = *v431;
                v431 += 2;
                v434 = v435;
                v437 = *v433;
                v433 += 2;
                v436 = v437;
                v432 += 8;
              }

              while (v434 == v437);
              v438 = v432 + (__clz(__rbit64(v436 ^ v434)) >> 3);
            }

            else
            {
              v438 = __clz(__rbit64(*v430 ^ *v431)) >> 3;
            }

            *(v7 + 4 * ((-1640531535 * *v5) >> v360)) = v5 - v8;
            *(v489 + 4 * ((*v5 * v358) >> v467)) = v5 - v8;
            v439 = *(a2 + 24);
            if (v5 <= v362)
            {
              *v439 = *v5;
            }

            else
            {
              v440 = v358;
              sub_24390C0CC(v439, v5, v5, v362);
              v362 = (v487 - 32);
              v358 = v440;
              v27 = v480;
              v7 = v481;
              LODWORD(v16) = v482;
            }

            v441 = *(a2 + 8);
            *(v441 + 4) = 0;
            *v441 = 1;
            if (v438 + 1 >= 0x10000)
            {
              v442 = (v441 - *a2) >> 3;
              *(a2 + 72) = 2;
              *(a2 + 76) = v442;
            }

            *(v441 + 6) = v438 + 1;
            *(a2 + 8) = v441 + 8;
            v5 += v438 + 4;
            v25 = v104;
            v103 = v24;
            if (v5 > v27)
            {
              goto LABEL_642;
            }
          }

          v103 = v104;
          v104 = v25;
        }

        else
        {
          v103 = v24;
          v104 = v25;
          LOBYTE(v359) = v467;
        }

LABEL_642:
        _X8 = (v5 + 1);
        v25 = v104;
        v24 = v103;
        v20 = v5;
        if (v5 + 1 > v27)
        {
          goto LABEL_535;
        }
      }
    }

    goto LABEL_534;
  }

  if (_X8 > v17)
  {
    goto LABEL_534;
  }

  v28 = 0xCF1BBCDCBFA56300;
  v29 = 64 - *(a1 + 264);
  v483 = 64 - *(a1 + 260);
  v30 = v487 - 7;
  v476 = v487 - 3;
  v31 = (v487 - 32);
  v463 = v8 - 1;
  v470 = v487 - 1;
  do
  {
    v32 = (v20 + 32);
    v33 = *v20;
    v34 = (0xCF1BBCDCB7A56463 * *v20) >> v29;
    v35 = *(v489 + 4 * v34);
    v36 = (v8 + v35);
    v37 = 1;
    while (1)
    {
      v38 = (v33 * v28) >> v483;
      v39 = *(v7 + 4 * v38);
      v40 = v20 - v8;
      *(v7 + 4 * v38) = v20 - v8;
      *(v489 + 4 * v34) = v20 - v8;
      if (v25)
      {
        v41 = v20 + 1;
        if (*(v20 - v25 + 1) == *(v20 + 1))
        {
          v50 = v20 + 5;
          v51 = (v20 - v25 + 5);
          if (v30 <= v20 + 5)
          {
            v54 = (v20 + 5);
          }

          else
          {
            v52 = *v51;
            if (v52 != *v50)
            {
              v59 = __clz(__rbit64(*v50 ^ v52)) >> 3;
              goto LABEL_69;
            }

            v53 = 0;
            v54 = (v20 + 13);
            v51 = (v54 - v25);
            while (v54 < v30)
            {
              v56 = *v51;
              v51 += 4;
              v55 = v56;
              v58 = *v54;
              v54 += 4;
              v57 = v58;
              v53 += 8;
              if (v55 != v58)
              {
                v59 = v53 + (__clz(__rbit64(v57 ^ v55)) >> 3);
                goto LABEL_69;
              }
            }
          }

          if (v54 < v476 && *v51 == *v54)
          {
            v51 += 2;
            v54 += 2;
          }

          if (v54 < v470 && *v51 == *v54)
          {
            ++v51;
            ++v54;
          }

          if (v54 < v487 && *v51 == *v54)
          {
            v54 = (v54 + 1);
          }

          v59 = v54 - v50;
LABEL_69:
          v87 = v41 - v5;
          v88 = *(a2 + 24);
          if (v41 <= v31)
          {
            *v88 = *v5;
            v94 = *(a2 + 24);
            if (v87 <= 0x10)
            {
              *(a2 + 24) = v94 + v87;
              v92 = *(a2 + 8);
              goto LABEL_80;
            }

            *(v94 + 16) = *(v5 + 16);
            if (v87 >= 33)
            {
              v95 = v94 + v87;
              v96 = (v94 + 32);
              v97 = (v5 + 48);
              do
              {
                *v96 = *(v97 - 1);
                v98 = *v97;
                v97 += 2;
                v96[1] = v98;
                v96 += 2;
              }

              while (v96 < v95);
            }
          }

          else
          {
            v89 = v5;
            v90 = v28;
            v91 = v59;
            sub_24390C0CC(v88, v89, v41, v31);
            v59 = v91;
            v28 = v90;
            v27 = v480;
            v7 = v481;
          }

          *(a2 + 24) += v87;
          v92 = *(a2 + 8);
          if (v87 >= 0x10000)
          {
            v93 = (v92 - *a2) >> 3;
            *(a2 + 72) = 1;
            *(a2 + 76) = v93;
          }

          LODWORD(v16) = v482;
          v31 = (v487 - 32);
LABEL_80:
          v99 = v59 + 4;
          *(v92 + 4) = v87;
          *v92 = 1;
          v100 = v59 + 1;
          v101 = v25;
          if (!((v59 + 1) >> 16))
          {
            goto LABEL_82;
          }

LABEL_81:
          v102 = (v92 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v102;
          v25 = v101;
          goto LABEL_82;
        }
      }

      v34 = (0xCF1BBCDCB7A56463 * *_X8) >> v29;
      if (v35 > v16 && *v36 == v33)
      {
        break;
      }

      v35 = *(v489 + 4 * v34);
      v36 = (v8 + v35);
      if (v39 > v16)
      {
        v42 = v8 + v39;
        if (*(v8 + v39) == *v20)
        {
          if (v35 > v16 && *v36 == *_X8)
          {
            v69 = (_X8 + 1);
            v70 = v36 + 1;
            if (v30 <= (_X8 + 1))
            {
              v72 = (_X8 + 1);
            }

            else
            {
              if (*v70 != *v69)
              {
                v77 = __clz(__rbit64(*v69 ^ *v70)) >> 3;
LABEL_167:
                v126 = v468;
                goto LABEL_168;
              }

              v71 = 0;
              v70 = (v8 + 16 + v35);
              v72 = (_X8 + 2);
              while (v72 < v30)
              {
                v74 = *v70++;
                v73 = v74;
                v76 = *v72;
                v72 += 4;
                v75 = v76;
                v71 += 8;
                if (v73 != v76)
                {
                  v77 = v71 + (__clz(__rbit64(v75 ^ v73)) >> 3);
                  goto LABEL_167;
                }
              }
            }

            v126 = v468;
            if (v72 < v476 && *v70 == *v72)
            {
              v70 = (v70 + 4);
              v72 += 2;
            }

            if (v72 < v470 && *v70 == *v72)
            {
              v70 = (v70 + 2);
              ++v72;
            }

            if (v72 < v487 && *v70 == *v72)
            {
              v72 = (v72 + 1);
            }

            v77 = v72 - v69;
LABEL_168:
            v99 = v77 + 8;
            v101 = _X8 - v36;
            if (_X8 <= v5)
            {
              v41 = _X8;
              goto LABEL_174;
            }

            v124 = _X8 - 1;
            v127 = (v463 + v35);
            while (*v124 == *v127)
            {
              ++v99;
              v122 = v124 - 1;
              if (v124 > v5)
              {
                --v124;
                v356 = v127-- > v126;
                if (v356)
                {
                  continue;
                }
              }

              goto LABEL_173;
            }

            goto LABEL_145;
          }

          v78 = v20 + 4;
          v79 = (v42 + 4);
          if (v30 <= v20 + 4)
          {
            v81 = v20 + 2;
          }

          else
          {
            if (*v79 != *v78)
            {
              v86 = __clz(__rbit64(*v78 ^ *v79)) >> 3;
LABEL_147:
              v121 = v468;
              goto LABEL_148;
            }

            v80 = 0;
            v79 = (v8 + 12 + v39);
            v81 = v20 + 6;
            while (v81 < v30)
            {
              v83 = *v79++;
              v82 = v83;
              v85 = *v81;
              v81 += 4;
              v84 = v85;
              v80 += 8;
              if (v82 != v85)
              {
                v86 = v80 + (__clz(__rbit64(v84 ^ v82)) >> 3);
                goto LABEL_147;
              }
            }
          }

          if (v81 < v476 && *v79 == *v81)
          {
            v79 = (v79 + 4);
            v81 += 2;
          }

          if (v81 < v470 && *v79 == *v81)
          {
            v79 = (v79 + 2);
            ++v81;
          }

          if (v81 < v487 && *v79 == *v81)
          {
            v81 = (v81 + 1);
          }

          v121 = v468;
          v86 = v81 - v78;
LABEL_148:
          v99 = v86 + 4;
          v101 = v20 - v42;
          if (v20 <= v5)
          {
LABEL_154:
            v41 = v20;
            goto LABEL_174;
          }

          v124 = v20 - 1;
          v125 = (v463 + v39);
          while (*v124 == *v125)
          {
            ++v99;
            v122 = v124 - 1;
            if (v124 > v5)
            {
              --v124;
              v356 = v125-- > v121;
              if (v356)
              {
                continue;
              }
            }

            goto LABEL_173;
          }

LABEL_145:
          v41 = (v124 + 1);
          goto LABEL_174;
        }
      }

      if (_X8 >= v32)
      {
        __asm
        {
          PRFM            #0, [X8,#0x40]
          PRFM            #0, [X8,#0x80]
        }

        ++v37;
        v32 += 256;
      }

      __asm { PRFM            #0, [X8,#0x100] }

      v20 = _X8;
      v33 = *_X8;
      _X8 = (_X8 + v37);
      if (_X8 > v27)
      {
        goto LABEL_534;
      }
    }

    v60 = (v20 + 1);
    v61 = (v36 + 1);
    if (v30 <= (v20 + 1))
    {
      v63 = (v20 + 1);
      goto LABEL_116;
    }

    if (*v61 == *v60)
    {
      v62 = 0;
      v61 = (v36 + 2);
      v63 = (v20 + 2);
      while (v63 < v30)
      {
        v65 = *v61;
        v61 += 4;
        v64 = v65;
        v67 = *v63;
        v63 += 4;
        v66 = v67;
        v62 += 8;
        if (v64 != v67)
        {
          v68 = v62 + (__clz(__rbit64(v66 ^ v64)) >> 3);
          goto LABEL_138;
        }
      }

LABEL_116:
      v120 = v468;
      if (v63 < v476 && *v61 == *v63)
      {
        v61 += 2;
        v63 += 2;
      }

      if (v63 < v470 && *v61 == *v63)
      {
        ++v61;
        ++v63;
      }

      if (v63 < v487 && *v61 == *v63)
      {
        v63 = (v63 + 1);
      }

      v68 = v63 - v60;
    }

    else
    {
      v68 = __clz(__rbit64(*v60 ^ *v61)) >> 3;
LABEL_138:
      v120 = v468;
    }

    v99 = v68 + 8;
    v101 = v20 - v36;
    if (v36 <= v120 || v20 <= v5)
    {
      goto LABEL_154;
    }

    v122 = v20 - 1;
    v123 = v36 - 1;
    while (*v122 == *v123)
    {
      ++v99;
      v124 = v122 - 1;
      if (v122 > v5)
      {
        --v122;
        v356 = v123-- > v120;
        if (v356)
        {
          continue;
        }
      }

      goto LABEL_145;
    }

LABEL_173:
    v41 = (v122 + 1);
LABEL_174:
    if (v37 <= 3)
    {
      *(v489 + 4 * v34) = _X8 - v8;
    }

    v128 = v41 - v5;
    v129 = *(a2 + 24);
    if (v41 > v31)
    {
      v130 = v5;
      v131 = v28;
      sub_24390C0CC(v129, v130, v41, v31);
      v28 = v131;
      v27 = v480;
      v7 = v481;
      LODWORD(v16) = v482;
      goto LABEL_178;
    }

    *v129 = *v5;
    v133 = *(a2 + 24);
    if (v128 <= 0x10)
    {
      *(a2 + 24) = v133 + v128;
      v92 = *(a2 + 8);
    }

    else
    {
      *(v133 + 16) = *(v5 + 16);
      if (v128 >= 33)
      {
        v134 = v133 + v128;
        v135 = (v133 + 32);
        v136 = (v5 + 48);
        do
        {
          *v135 = *(v136 - 1);
          v137 = *v136;
          v136 += 2;
          v135[1] = v137;
          v135 += 2;
        }

        while (v135 < v134);
      }

LABEL_178:
      *(a2 + 24) += v128;
      v92 = *(a2 + 8);
      if (v128 >= 0x10000)
      {
        v132 = (v92 - *a2) >> 3;
        *(a2 + 72) = 1;
        *(a2 + 76) = v132;
      }

      v31 = (v487 - 32);
    }

    *(v92 + 4) = v128;
    *v92 = v101 + 3;
    v100 = v99 - 3;
    v24 = v25;
    v25 = v101;
    if (v99 - 3 >= 0x10000)
    {
      goto LABEL_81;
    }

LABEL_82:
    *(v92 + 6) = v100;
    *(a2 + 8) = v92 + 8;
    v5 = v41 + v99;
    if (v41 + v99 > v27)
    {
      v103 = v24;
      v104 = v25;
      goto LABEL_113;
    }

    v105 = *(v8 + (v40 + 2));
    *(v489 + 4 * ((0xCF1BBCDCB7A56463 * v105) >> v29)) = v40 + 2;
    *(v489 + 4 * ((0xCF1BBCDCB7A56463 * *(v5 - 2)) >> v29)) = v5 - 2 - v8;
    *(v7 + 4 * ((v105 * v28) >> v483)) = v40 + 2;
    *(v7 + 4 * ((*(v5 - 1) * v28) >> v483)) = v5 - 1 - v8;
    while (2)
    {
      v104 = v24;
      v24 = v25;
      if (v104 && *v5 == *(v5 - v104))
      {
        v106 = (v5 + 4);
        v107 = (v5 + 4 - v104);
        if (v30 > v5 + 4)
        {
          if (*v107 == *v106)
          {
            v108 = 0;
            v109 = (v5 + 12);
            v107 = (v5 + 12 - v104);
            while (v109 < v30)
            {
              v111 = *v107;
              v107 += 4;
              v110 = v111;
              v113 = *v109;
              v109 += 4;
              v112 = v113;
              v108 += 8;
              if (v110 != v113)
              {
                v114 = v108 + (__clz(__rbit64(v112 ^ v110)) >> 3);
                goto LABEL_105;
              }
            }

LABEL_94:
            if (v109 < v476 && *v107 == *v109)
            {
              v107 += 2;
              v109 += 2;
            }

            if (v109 < v470 && *v107 == *v109)
            {
              ++v107;
              ++v109;
            }

            if (v109 < v487 && *v107 == *v109)
            {
              v109 = (v109 + 1);
            }

            v114 = v109 - v106;
          }

          else
          {
            v114 = __clz(__rbit64(*v106 ^ *v107)) >> 3;
          }

LABEL_105:
          v115 = *v5;
          *(v7 + 4 * ((*v5 * v28) >> v483)) = v5 - v8;
          *(v489 + 4 * ((0xCF1BBCDCB7A56463 * v115) >> v29)) = v5 - v8;
          v116 = *(a2 + 24);
          if (v5 <= v31)
          {
            *v116 = *v5;
          }

          else
          {
            v117 = v28;
            sub_24390C0CC(v116, v5, v5, v31);
            v31 = (v487 - 32);
            v28 = v117;
            v27 = v480;
            v7 = v481;
            LODWORD(v16) = v482;
          }

          v118 = *(a2 + 8);
          *(v118 + 4) = 0;
          *v118 = 1;
          if (v114 + 1 >= 0x10000)
          {
            v119 = (v118 - *a2) >> 3;
            *(a2 + 72) = 2;
            *(a2 + 76) = v119;
          }

          *(v118 + 6) = v114 + 1;
          *(a2 + 8) = v118 + 8;
          v5 += v114 + 4;
          v25 = v104;
          v103 = v24;
          if (v5 > v27)
          {
            goto LABEL_113;
          }

          continue;
        }

        v109 = (v5 + 4);
        goto LABEL_94;
      }

      break;
    }

    v103 = v104;
    v104 = v25;
LABEL_113:
    _X8 = (v5 + 1);
    v25 = v104;
    v24 = v103;
    v20 = v5;
  }

  while (v5 + 1 <= v27);
LABEL_535:
  v354 = v473;
  if (v474 <= v472)
  {
    v355 = 0;
  }

  else
  {
    v355 = v474;
  }

  if (v473 <= v472)
  {
    v354 = 0;
  }

  if (v104)
  {
    v355 = v104;
    v356 = v474 > v472;
  }

  else
  {
    v356 = 0;
  }

  if (v356)
  {
    v354 = v474;
  }

  if (v103)
  {
    v354 = v103;
  }

  *a3 = v355;
  a3[1] = v354;
  return v487 - v5;
}

unint64_t sub_243910AE8(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5)
{
  v5 = a4;
  v7 = *(a1 + 272);
  v8 = *(a1 + 264);
  v550 = *(a1 + 128);
  v551 = *(a1 + 112);
  v9 = *(a1 + 260);
  v10 = *(a1 + 8);
  v11 = &a4[a5];
  v12 = a4 + a5 - v10;
  v13 = 1 << *(a1 + 256);
  v14 = *(a1 + 24);
  v15 = v12 - v14;
  v16 = v12 - v13;
  if (v15 > v13 && *(a1 + 40) == 0)
  {
    v18 = v16;
  }

  else
  {
    v18 = v14;
  }

  v552 = v11 - 8;
  v20 = *a3;
  v19 = a3[1];
  v21 = *(a1 + 248);
  v22 = *(v21 + 112);
  v23 = *(v21 + 128);
  v25 = *v21;
  v24 = *(v21 + 8);
  v527 = *(v21 + 24);
  v513 = v24 + v527;
  v547 = v24;
  v541 = v18 + v24 - *v21;
  v26 = *(v21 + 264);
  v27 = *(v21 + 260);
  v553 = (v10 + v18);
  v548 = v25;
  v28 = a4 - (v24 + v527) - (v10 + v18) + v25;
  v29 = *(a1 + 296);
  v526 = v11;
  v549 = v18;
  v546 = v22;
  v532 = v23;
  if (v7 == 5)
  {
    if (v29)
    {
      if (v26 <= 0x3D)
      {
        v261 = 0;
        do
        {
          _X16 = v22 + v261;
          __asm { PRFM            #2, [X16] }

          v261 += 64;
        }

        while (v261 < 4 << v26);
      }

      if (v27 <= 0x3D)
      {
        v264 = 0;
        do
        {
          _X15 = v23 + v264;
          __asm { PRFM            #2, [X15] }

          v264 += 64;
        }

        while (v264 < 4 << v27);
      }
    }

    if (v28)
    {
      v267 = a4;
    }

    else
    {
      v267 = a4 + 1;
    }

    if (v267 >= v552)
    {
      goto LABEL_743;
    }

    v544 = 64 - v8;
    v539 = 64 - v9;
    v516 = 56 - v27;
    v520 = 56 - v26;
    v535 = v18 - 1;
    v508 = a3;
    v511 = v11 - 7;
    v502 = v11 - 1;
    v506 = v11 - 3;
    v530 = (v11 - 32);
    v490 = v547 - 1;
    v494 = v10 + 16;
    v498 = v10 - 1;
    while (1)
    {
      v268 = *v267;
      v269 = 0xCF1BBCDCB7A56463 * *v267;
      v270 = v269 >> v544;
      v271 = 0xCF1BBCDCBB000000 * *v267;
      v272 = v271 >> v539;
      v273 = v269 >> v520;
      v274 = v271 >> v516;
      v275 = *(v22 + ((v269 >> v520 >> 6) & 0x3FFFFFFFFFFFFFCLL));
      v276 = *(v23 + ((v274 >> 6) & 0x3FFFFFFFFFFFFFCLL));
      v277 = v267 - v10;
      v278 = *(v551 + 4 * (v269 >> v544));
      v279 = *(v550 + 4 * v272);
      v280 = v267 - v10 + 1;
      v281 = (v280 - v20);
      v282 = v547 + v281 - v541;
      if (v281 >= v18)
      {
        v282 = v10 + v281;
      }

      *(v550 + 4 * v272) = v277;
      v524 = v267 - v10;
      *(v551 + 4 * v270) = v277;
      if ((v535 - v281) >= 3)
      {
        v283 = (v267 + 1);
        if (*v282 == *(v267 + 1))
        {
          break;
        }
      }

      if (v278 <= v18)
      {
        v300 = v275 >> 8;
        if (v273 == v275 && v300 > v527)
        {
          v337 = (v547 + (v275 >> 8));
          if (*v337 == v268)
          {
            v332 = sub_243913D40(v267 + 4, v337 + 1, v11, v548, v553) + 8;
            v333 = v524 - v541 - v300;
            if (v267 > v5)
            {
              v334 = v267 - 1;
              v338 = (v490 + v300);
              LODWORD(v18) = v549;
              while (*v334 == *v338)
              {
                ++v332;
                v336 = v334 - 1;
                if (v334 > v5)
                {
                  --v334;
                  v73 = v338-- > v513;
                  if (v73)
                  {
                    continue;
                  }
                }

LABEL_517:
                v283 = (v336 + 1);
                goto LABEL_526;
              }

LABEL_525:
              v283 = (v334 + 1);
LABEL_526:
              v353 = v283 - v5;
              v354 = *(a2 + 24);
              if (v283 > v530)
              {
                sub_24390C0CC(v354, v5, v283, v530);
                LODWORD(v18) = v549;
                goto LABEL_528;
              }

              *v354 = *v5;
              v356 = *(a2 + 24);
              if (v353 <= 0x10)
              {
                *(a2 + 24) = v356 + v353;
                v288 = *(a2 + 8);
              }

              else
              {
                *(v356 + 16) = *(v5 + 16);
                if (v353 >= 33)
                {
                  v357 = v356 + v353;
                  v358 = (v356 + 32);
                  v359 = (v5 + 48);
                  do
                  {
                    *v358 = *(v359 - 1);
                    v360 = *v359;
                    v359 += 2;
                    v358[1] = v360;
                    v358 += 2;
                  }

                  while (v358 < v357);
                }

LABEL_528:
                *(a2 + 24) += v353;
                v288 = *(a2 + 8);
                if (v353 >= 0x10000)
                {
                  v355 = (v288 - *a2) >> 3;
                  *(a2 + 72) = 1;
                  *(a2 + 76) = v355;
                }
              }

              *(v288 + 4) = v353;
              *v288 = v333 + 3;
              v339 = v332 - 3;
              v19 = v20;
              v20 = v333;
              if (v332 - 3 >= 0x10000)
              {
LABEL_537:
                v361 = (v288 - *a2) >> 3;
                *(a2 + 72) = 2;
                *(a2 + 76) = v361;
                v20 = v333;
              }

LABEL_538:
              *(v288 + 6) = v339;
              *(a2 + 8) = v288 + 8;
              v5 = v283 + v332;
              if (v283 + v332 <= v552)
              {
                v362 = *(v10 + (v524 + 2));
                *(v551 + 4 * ((0xCF1BBCDCB7A56463 * v362) >> v544)) = v524 + 2;
                *(v551 + 4 * ((0xCF1BBCDCB7A56463 * *(v5 - 2)) >> v544)) = v5 - 2 - v10;
                *(v550 + 4 * ((0xCF1BBCDCBB000000 * v362) >> v539)) = v524 + 2;
                *(v550 + 4 * ((0xCF1BBCDCBB000000 * *(v5 - 1)) >> v539)) = v5 - 1 - v10;
                v363 = v20;
                v364 = v19;
                v11 = v526;
                while (1)
                {
                  v20 = v364;
                  v364 = v363;
                  v365 = v5 - v10;
                  v366 = (v5 - v10 - v20);
                  v367 = v547 - v541;
                  if (v366 >= v18)
                  {
                    v367 = v10;
                  }

                  if ((v535 - v366) < 3)
                  {
                    break;
                  }

                  v368 = v367 + v366;
                  if (*v368 != *v5)
                  {
                    break;
                  }

                  if (v366 >= v18)
                  {
                    v369 = v526;
                  }

                  else
                  {
                    v369 = v548;
                  }

                  v370 = sub_243913D40((v5 + 4), (v368 + 4), v526, v369, v553);
                  v371 = *(a2 + 24);
                  if (v5 <= v530)
                  {
                    *v371 = *v5;
                  }

                  else
                  {
                    sub_24390C0CC(v371, v5, v5, v530);
                  }

                  v372 = *(a2 + 8);
                  *(v372 + 4) = 0;
                  *v372 = 1;
                  LODWORD(v18) = v549;
                  if (v370 + 1 >= 0x10000)
                  {
                    v373 = (v372 - *a2) >> 3;
                    *(a2 + 72) = 2;
                    *(a2 + 76) = v373;
                  }

                  *(v372 + 6) = v370 + 1;
                  v374 = *v5;
                  *(v550 + 4 * ((0xCF1BBCDCBB000000 * *v5) >> v539)) = v365;
                  *(v551 + 4 * ((0xCF1BBCDCB7A56463 * v374) >> v544)) = v365;
                  v5 += v370 + 4;
                  *(a2 + 8) = v372 + 8;
                  v363 = v20;
                  v19 = v364;
                  v267 = v5;
                  if (v5 > v552)
                  {
                    goto LABEL_556;
                  }
                }

                v19 = v20;
                v20 = v363;
                v267 = v5;
              }

              else
              {
                v267 = (v283 + v332);
                v11 = v526;
              }

              goto LABEL_556;
            }

LABEL_479:
            v283 = v267;
LABEL_480:
            LODWORD(v18) = v549;
            goto LABEL_526;
          }
        }
      }

      else
      {
        v290 = v10 + v278;
        if (*(v10 + v278) == v268)
        {
          v291 = (v267 + 8);
          v292 = (v290 + 8);
          if (v511 > (v267 + 8))
          {
            if (*v292 == *v291)
            {
              v293 = 0;
              v292 = (v494 + v278);
              v294 = (v267 + 16);
              while (v294 < v511)
              {
                v296 = *v292;
                v292 += 4;
                v295 = v296;
                v298 = *v294;
                v294 += 4;
                v297 = v298;
                v293 += 8;
                if (v295 != v298)
                {
                  v299 = v293 + (__clz(__rbit64(v297 ^ v295)) >> 3);
                  goto LABEL_473;
                }
              }

LABEL_432:
              if (v294 < v506 && *v292 == *v294)
              {
                v292 += 2;
                v294 += 2;
              }

              if (v294 < v502 && *v292 == *v294)
              {
                ++v292;
                ++v294;
              }

              if (v294 < v11 && *v292 == *v294)
              {
                v294 = (v294 + 1);
              }

              v299 = v294 - v291;
            }

            else
            {
              v299 = __clz(__rbit64(*v291 ^ *v292)) >> 3;
            }

LABEL_473:
            v332 = v299 + 8;
            v333 = (v267 - v290);
            if (v267 > v5)
            {
              v334 = v267 - 1;
              v347 = (v498 + v278);
              while (*v334 == *v347)
              {
                ++v332;
                v336 = v334 - 1;
                if (v334 > v5)
                {
                  --v334;
                  v73 = v347-- > v553;
                  if (v73)
                  {
                    continue;
                  }
                }

                goto LABEL_517;
              }

              goto LABEL_525;
            }

            goto LABEL_518;
          }

          v294 = (v267 + 8);
          goto LABEL_432;
        }
      }

      if (v279 <= v18)
      {
        v318 = v276 >> 8;
        if (v274 == v276 && v318 > v527)
        {
          v302 = v547 + v318;
          if (*(v547 + v318) == *v267)
          {
            LODWORD(v279) = v318 + v541;
LABEL_413:
            v283 = (v267 + 1);
            v303 = *(v267 + 1);
            v304 = (0xCF1BBCDCB7A56463 * v303) >> v544;
            v305 = (0xCF1BBCDCB7A56463 * v303) >> v520;
            v306 = *(v551 + 4 * v304);
            v307 = *(v546 + ((v305 >> 6) & 0x3FFFFFFFFFFFFFCLL));
            *(v551 + 4 * v304) = v280;
            if (v306 <= v18)
            {
              v327 = v307 >> 8;
              if (v305 == v307 && v327 > v527)
              {
                v348 = v327;
                v349 = (v547 + v327);
                if (*v349 == v303)
                {
                  v332 = sub_243913D40((v267 + 9), v349 + 1, v11, v548, v553) + 8;
                  v333 = v280 - v541 - v348;
                  if (v283 <= v5)
                  {
                    goto LABEL_480;
                  }

                  v350 = (v490 + v348);
                  LODWORD(v18) = v549;
                  while (*v267 == *v350)
                  {
                    ++v332;
                    v334 = v267 - 1;
                    if (v267 > v5)
                    {
                      --v267;
                      v73 = v350-- > v513;
                      if (v73)
                      {
                        continue;
                      }
                    }

                    goto LABEL_525;
                  }

                  goto LABEL_558;
                }
              }
            }

            else
            {
              v308 = v10 + v306;
              if (*(v10 + v306) == v303)
              {
                v309 = (v267 + 9);
                v310 = (v308 + 8);
                if (v511 <= (v267 + 9))
                {
                  v312 = (v267 + 9);
                  goto LABEL_493;
                }

                if (*v310 == *v309)
                {
                  v311 = 0;
                  v310 = (v494 + v306);
                  v312 = (v267 + 17);
                  while (v312 < v511)
                  {
                    v314 = *v310;
                    v310 += 4;
                    v313 = v314;
                    v316 = *v312;
                    v312 += 4;
                    v315 = v316;
                    v311 += 8;
                    if (v313 != v316)
                    {
                      v317 = v311 + (__clz(__rbit64(v315 ^ v313)) >> 3);
                      goto LABEL_520;
                    }
                  }

LABEL_493:
                  if (v312 < v506 && *v310 == *v312)
                  {
                    v310 += 2;
                    v312 += 2;
                  }

                  if (v312 < v502 && *v310 == *v312)
                  {
                    ++v310;
                    ++v312;
                  }

                  if (v312 < v11 && *v310 == *v312)
                  {
                    v312 = (v312 + 1);
                  }

                  v317 = v312 - v309;
                }

                else
                {
                  v317 = __clz(__rbit64(*v309 ^ *v310)) >> 3;
                }

LABEL_520:
                v332 = v317 + 8;
                v333 = (v283 - v308);
                if (v283 <= v5)
                {
                  goto LABEL_526;
                }

                v352 = (v498 + v306);
                while (*v267 == *v352)
                {
                  ++v332;
                  v334 = v267 - 1;
                  if (v267 > v5)
                  {
                    --v267;
                    v73 = v352-- > v553;
                    if (v73)
                    {
                      continue;
                    }
                  }

                  goto LABEL_525;
                }

LABEL_558:
                v283 = (v267 + 1);
                goto LABEL_526;
              }
            }

            v329 = (v267 + 4);
            v330 = (v302 + 4);
            if (v279 < v18)
            {
              v331 = v302;
              v332 = sub_243913D40(v329, v330, v11, v548, v553) + 4;
              v333 = (v524 - v279);
              if (v267 > v5 && v331 > v513)
              {
                v334 = v267 - 1;
                v335 = (v331 - 1);
                LODWORD(v18) = v549;
                while (*v334 == *v335)
                {
                  ++v332;
                  v336 = v334 - 1;
                  if (v334 > v5)
                  {
                    --v334;
                    v73 = v335-- > v513;
                    if (v73)
                    {
                      continue;
                    }
                  }

                  goto LABEL_517;
                }

                goto LABEL_525;
              }

              goto LABEL_479;
            }

            if (v511 <= v329)
            {
              v341 = (v267 + 4);
              goto LABEL_482;
            }

            if (*v330 == *v329)
            {
              v340 = 0;
              v330 = (v302 + 12);
              v341 = (v267 + 12);
              while (v341 < v511)
              {
                v343 = *v330++;
                v342 = v343;
                v345 = *v341;
                v341 += 4;
                v344 = v345;
                v340 += 8;
                if (v342 != v345)
                {
                  v346 = v340 + (__clz(__rbit64(v344 ^ v342)) >> 3);
                  goto LABEL_511;
                }
              }

LABEL_482:
              if (v341 < v506 && *v330 == *v341)
              {
                v330 = (v330 + 4);
                v341 += 2;
              }

              if (v341 < v502 && *v330 == *v341)
              {
                v330 = (v330 + 2);
                ++v341;
              }

              if (v341 < v11 && *v330 == *v341)
              {
                v341 = (v341 + 1);
              }

              v346 = v341 - v329;
            }

            else
            {
              v346 = __clz(__rbit64(*v329 ^ *v330)) >> 3;
            }

LABEL_511:
            v332 = v346 + 4;
            v333 = (v267 - v302);
            if (v267 > v5 && v302 > v553)
            {
              v334 = v267 - 1;
              v351 = (v302 - 1);
              while (*v334 == *v351)
              {
                ++v332;
                v336 = v334 - 1;
                if (v334 > v5)
                {
                  --v334;
                  v73 = v351-- > v553;
                  if (v73)
                  {
                    continue;
                  }
                }

                goto LABEL_517;
              }

              goto LABEL_525;
            }

LABEL_518:
            v283 = v267;
            goto LABEL_526;
          }
        }
      }

      else
      {
        v302 = v10 + v279;
        if (*(v10 + v279) == *v267)
        {
          goto LABEL_413;
        }
      }

      _X8 = &v267[&v267[-v5] >> 8];
      v267 = _X8 + 1;
      _X8 += 257;
      __asm { PRFM            #0, [X8] }

LABEL_556:
      v22 = v546;
      v23 = v532;
      if (v267 >= v552)
      {
LABEL_742:
        a3 = v508;
        goto LABEL_743;
      }
    }

    if (v281 >= v18)
    {
      v284 = v11;
    }

    else
    {
      v284 = v548;
    }

    v285 = sub_243913D40((v267 + 5), (v282 + 4), v11, v284, v553);
    v286 = v283 - v5;
    v287 = *(a2 + 24);
    if (v283 <= v530)
    {
      *v287 = *v5;
      v322 = *(a2 + 24);
      if (v286 <= 0x10)
      {
        *(a2 + 24) = v322 + v286;
        v288 = *(a2 + 8);
        LODWORD(v18) = v549;
        goto LABEL_462;
      }

      *(v322 + 16) = *(v5 + 16);
      LODWORD(v18) = v549;
      if (v286 >= 33)
      {
        v323 = v322 + v286;
        v324 = (v322 + 32);
        v325 = (v5 + 48);
        do
        {
          *v324 = *(v325 - 1);
          v326 = *v325;
          v325 += 2;
          v324[1] = v326;
          v324 += 2;
        }

        while (v324 < v323);
      }
    }

    else
    {
      sub_24390C0CC(v287, v5, v283, v530);
      LODWORD(v18) = v549;
    }

    *(a2 + 24) += v286;
    v288 = *(a2 + 8);
    if (v286 >= 0x10000)
    {
      v289 = (v288 - *a2) >> 3;
      *(a2 + 72) = 1;
      *(a2 + 76) = v289;
    }

LABEL_462:
    v332 = v285 + 4;
    *(v288 + 4) = v286;
    *v288 = 1;
    v339 = v285 + 1;
    v333 = v20;
    if ((v285 + 1) >> 16)
    {
      goto LABEL_537;
    }

    goto LABEL_538;
  }

  if (v7 == 6)
  {
    if (v29)
    {
      if (v26 <= 0x3D)
      {
        v147 = 0;
        do
        {
          _X16 = v22 + v147;
          __asm { PRFM            #2, [X16] }

          v147 += 64;
        }

        while (v147 < 4 << v26);
      }

      if (v27 <= 0x3D)
      {
        v150 = 0;
        do
        {
          _X15 = v23 + v150;
          __asm { PRFM            #2, [X15] }

          v150 += 64;
        }

        while (v150 < 4 << v27);
      }
    }

    if (v28)
    {
      v153 = a4;
    }

    else
    {
      v153 = a4 + 1;
    }

    if (v153 >= v552)
    {
      goto LABEL_743;
    }

    v543 = 64 - v8;
    v538 = 64 - v9;
    v515 = 56 - v27;
    v519 = 56 - v26;
    v534 = v18 - 1;
    v508 = a3;
    v510 = v11 - 7;
    v501 = v11 - 1;
    v505 = v11 - 3;
    v529 = (v11 - 32);
    v489 = v547 - 1;
    v493 = v10 + 16;
    v497 = v10 - 1;
    while (1)
    {
      v154 = *v153;
      v155 = 0xCF1BBCDCB7A56463 * *v153;
      v156 = v155 >> v543;
      v157 = 0xCF1BBCDCBF9B0000 * *v153;
      v158 = v157 >> v538;
      v159 = v155 >> v519;
      v160 = v157 >> v515;
      v161 = *(v22 + ((v155 >> v519 >> 6) & 0x3FFFFFFFFFFFFFCLL));
      v162 = *(v23 + ((v160 >> 6) & 0x3FFFFFFFFFFFFFCLL));
      v163 = v153 - v10;
      v164 = *(v551 + 4 * (v155 >> v543));
      v165 = *(v550 + 4 * v158);
      v166 = v153 - v10 + 1;
      v167 = (v166 - v20);
      v168 = v547 + v167 - v541;
      if (v167 >= v18)
      {
        v168 = v10 + v167;
      }

      *(v550 + 4 * v158) = v163;
      v523 = v153 - v10;
      *(v551 + 4 * v156) = v163;
      if ((v534 - v167) >= 3)
      {
        v169 = (v153 + 1);
        if (*v168 == *(v153 + 1))
        {
          break;
        }
      }

      if (v164 <= v18)
      {
        v186 = v161 >> 8;
        if (v159 == v161 && v186 > v527)
        {
          v223 = (v547 + (v161 >> 8));
          if (*v223 == v154)
          {
            v218 = sub_243913D40(v153 + 4, v223 + 1, v11, v548, v553) + 8;
            v219 = v523 - v541 - v186;
            if (v153 > v5)
            {
              v220 = v153 - 1;
              v224 = (v489 + v186);
              LODWORD(v18) = v549;
              while (*v220 == *v224)
              {
                ++v218;
                v222 = v220 - 1;
                if (v220 > v5)
                {
                  --v220;
                  v73 = v224-- > v513;
                  if (v73)
                  {
                    continue;
                  }
                }

LABEL_334:
                v169 = (v222 + 1);
                goto LABEL_343;
              }

LABEL_342:
              v169 = (v220 + 1);
LABEL_343:
              v239 = v169 - v5;
              v240 = *(a2 + 24);
              if (v169 > v529)
              {
                sub_24390C0CC(v240, v5, v169, v529);
                LODWORD(v18) = v549;
                goto LABEL_345;
              }

              *v240 = *v5;
              v242 = *(a2 + 24);
              if (v239 <= 0x10)
              {
                *(a2 + 24) = v242 + v239;
                v174 = *(a2 + 8);
              }

              else
              {
                *(v242 + 16) = *(v5 + 16);
                if (v239 >= 33)
                {
                  v243 = v242 + v239;
                  v244 = (v242 + 32);
                  v245 = (v5 + 48);
                  do
                  {
                    *v244 = *(v245 - 1);
                    v246 = *v245;
                    v245 += 2;
                    v244[1] = v246;
                    v244 += 2;
                  }

                  while (v244 < v243);
                }

LABEL_345:
                *(a2 + 24) += v239;
                v174 = *(a2 + 8);
                if (v239 >= 0x10000)
                {
                  v241 = (v174 - *a2) >> 3;
                  *(a2 + 72) = 1;
                  *(a2 + 76) = v241;
                }
              }

              *(v174 + 4) = v239;
              *v174 = v219 + 3;
              v225 = v218 - 3;
              v19 = v20;
              v20 = v219;
              if (v218 - 3 >= 0x10000)
              {
LABEL_354:
                v247 = (v174 - *a2) >> 3;
                *(a2 + 72) = 2;
                *(a2 + 76) = v247;
                v20 = v219;
              }

LABEL_355:
              *(v174 + 6) = v225;
              *(a2 + 8) = v174 + 8;
              v5 = v169 + v218;
              if (v169 + v218 <= v552)
              {
                v248 = *(v10 + (v523 + 2));
                *(v551 + 4 * ((0xCF1BBCDCB7A56463 * v248) >> v543)) = v523 + 2;
                *(v551 + 4 * ((0xCF1BBCDCB7A56463 * *(v5 - 2)) >> v543)) = v5 - 2 - v10;
                *(v550 + 4 * ((0xCF1BBCDCBF9B0000 * v248) >> v538)) = v523 + 2;
                *(v550 + 4 * ((0xCF1BBCDCBF9B0000 * *(v5 - 1)) >> v538)) = v5 - 1 - v10;
                v249 = v20;
                v250 = v19;
                v11 = v526;
                while (1)
                {
                  v20 = v250;
                  v250 = v249;
                  v251 = v5 - v10;
                  v252 = (v5 - v10 - v20);
                  v253 = v547 - v541;
                  if (v252 >= v18)
                  {
                    v253 = v10;
                  }

                  if ((v534 - v252) < 3)
                  {
                    break;
                  }

                  v254 = v253 + v252;
                  if (*v254 != *v5)
                  {
                    break;
                  }

                  if (v252 >= v18)
                  {
                    v255 = v526;
                  }

                  else
                  {
                    v255 = v548;
                  }

                  v256 = sub_243913D40((v5 + 4), (v254 + 4), v526, v255, v553);
                  v257 = *(a2 + 24);
                  if (v5 <= v529)
                  {
                    *v257 = *v5;
                  }

                  else
                  {
                    sub_24390C0CC(v257, v5, v5, v529);
                  }

                  v258 = *(a2 + 8);
                  *(v258 + 4) = 0;
                  *v258 = 1;
                  LODWORD(v18) = v549;
                  if (v256 + 1 >= 0x10000)
                  {
                    v259 = (v258 - *a2) >> 3;
                    *(a2 + 72) = 2;
                    *(a2 + 76) = v259;
                  }

                  *(v258 + 6) = v256 + 1;
                  v260 = *v5;
                  *(v550 + 4 * ((0xCF1BBCDCBF9B0000 * *v5) >> v538)) = v251;
                  *(v551 + 4 * ((0xCF1BBCDCB7A56463 * v260) >> v543)) = v251;
                  v5 += v256 + 4;
                  *(a2 + 8) = v258 + 8;
                  v249 = v20;
                  v19 = v250;
                  v153 = v5;
                  if (v5 > v552)
                  {
                    goto LABEL_373;
                  }
                }

                v19 = v20;
                v20 = v249;
                v153 = v5;
              }

              else
              {
                v153 = (v169 + v218);
                v11 = v526;
              }

              goto LABEL_373;
            }

LABEL_296:
            v169 = v153;
LABEL_297:
            LODWORD(v18) = v549;
            goto LABEL_343;
          }
        }
      }

      else
      {
        v176 = v10 + v164;
        if (*(v10 + v164) == v154)
        {
          v177 = (v153 + 8);
          v178 = (v176 + 8);
          if (v510 > (v153 + 8))
          {
            if (*v178 == *v177)
            {
              v179 = 0;
              v178 = (v493 + v164);
              v180 = (v153 + 16);
              while (v180 < v510)
              {
                v182 = *v178;
                v178 += 4;
                v181 = v182;
                v184 = *v180;
                v180 += 4;
                v183 = v184;
                v179 += 8;
                if (v181 != v184)
                {
                  v185 = v179 + (__clz(__rbit64(v183 ^ v181)) >> 3);
                  goto LABEL_290;
                }
              }

LABEL_249:
              if (v180 < v505 && *v178 == *v180)
              {
                v178 += 2;
                v180 += 2;
              }

              if (v180 < v501 && *v178 == *v180)
              {
                ++v178;
                ++v180;
              }

              if (v180 < v11 && *v178 == *v180)
              {
                v180 = (v180 + 1);
              }

              v185 = v180 - v177;
            }

            else
            {
              v185 = __clz(__rbit64(*v177 ^ *v178)) >> 3;
            }

LABEL_290:
            v218 = v185 + 8;
            v219 = (v153 - v176);
            if (v153 > v5)
            {
              v220 = v153 - 1;
              v233 = (v497 + v164);
              while (*v220 == *v233)
              {
                ++v218;
                v222 = v220 - 1;
                if (v220 > v5)
                {
                  --v220;
                  v73 = v233-- > v553;
                  if (v73)
                  {
                    continue;
                  }
                }

                goto LABEL_334;
              }

              goto LABEL_342;
            }

            goto LABEL_335;
          }

          v180 = (v153 + 8);
          goto LABEL_249;
        }
      }

      if (v165 <= v18)
      {
        v204 = v162 >> 8;
        if (v160 == v162 && v204 > v527)
        {
          v188 = v547 + v204;
          if (*(v547 + v204) == *v153)
          {
            LODWORD(v165) = v204 + v541;
LABEL_230:
            v169 = (v153 + 1);
            v189 = *(v153 + 1);
            v190 = (0xCF1BBCDCB7A56463 * v189) >> v543;
            v191 = (0xCF1BBCDCB7A56463 * v189) >> v519;
            v192 = *(v551 + 4 * v190);
            v193 = *(v546 + ((v191 >> 6) & 0x3FFFFFFFFFFFFFCLL));
            *(v551 + 4 * v190) = v166;
            if (v192 <= v18)
            {
              v213 = v193 >> 8;
              if (v191 == v193 && v213 > v527)
              {
                v234 = v213;
                v235 = (v547 + v213);
                if (*v235 == v189)
                {
                  v218 = sub_243913D40((v153 + 9), v235 + 1, v11, v548, v553) + 8;
                  v219 = v166 - v541 - v234;
                  if (v169 <= v5)
                  {
                    goto LABEL_297;
                  }

                  v236 = (v489 + v234);
                  LODWORD(v18) = v549;
                  while (*v153 == *v236)
                  {
                    ++v218;
                    v220 = v153 - 1;
                    if (v153 > v5)
                    {
                      --v153;
                      v73 = v236-- > v513;
                      if (v73)
                      {
                        continue;
                      }
                    }

                    goto LABEL_342;
                  }

                  goto LABEL_375;
                }
              }
            }

            else
            {
              v194 = v10 + v192;
              if (*(v10 + v192) == v189)
              {
                v195 = (v153 + 9);
                v196 = (v194 + 8);
                if (v510 <= (v153 + 9))
                {
                  v198 = (v153 + 9);
                  goto LABEL_310;
                }

                if (*v196 == *v195)
                {
                  v197 = 0;
                  v196 = (v493 + v192);
                  v198 = (v153 + 17);
                  while (v198 < v510)
                  {
                    v200 = *v196;
                    v196 += 4;
                    v199 = v200;
                    v202 = *v198;
                    v198 += 4;
                    v201 = v202;
                    v197 += 8;
                    if (v199 != v202)
                    {
                      v203 = v197 + (__clz(__rbit64(v201 ^ v199)) >> 3);
                      goto LABEL_337;
                    }
                  }

LABEL_310:
                  if (v198 < v505 && *v196 == *v198)
                  {
                    v196 += 2;
                    v198 += 2;
                  }

                  if (v198 < v501 && *v196 == *v198)
                  {
                    ++v196;
                    ++v198;
                  }

                  if (v198 < v11 && *v196 == *v198)
                  {
                    v198 = (v198 + 1);
                  }

                  v203 = v198 - v195;
                }

                else
                {
                  v203 = __clz(__rbit64(*v195 ^ *v196)) >> 3;
                }

LABEL_337:
                v218 = v203 + 8;
                v219 = (v169 - v194);
                if (v169 <= v5)
                {
                  goto LABEL_343;
                }

                v238 = (v497 + v192);
                while (*v153 == *v238)
                {
                  ++v218;
                  v220 = v153 - 1;
                  if (v153 > v5)
                  {
                    --v153;
                    v73 = v238-- > v553;
                    if (v73)
                    {
                      continue;
                    }
                  }

                  goto LABEL_342;
                }

LABEL_375:
                v169 = (v153 + 1);
                goto LABEL_343;
              }
            }

            v215 = (v153 + 4);
            v216 = (v188 + 4);
            if (v165 < v18)
            {
              v217 = v188;
              v218 = sub_243913D40(v215, v216, v11, v548, v553) + 4;
              v219 = (v523 - v165);
              if (v153 > v5 && v217 > v513)
              {
                v220 = v153 - 1;
                v221 = (v217 - 1);
                LODWORD(v18) = v549;
                while (*v220 == *v221)
                {
                  ++v218;
                  v222 = v220 - 1;
                  if (v220 > v5)
                  {
                    --v220;
                    v73 = v221-- > v513;
                    if (v73)
                    {
                      continue;
                    }
                  }

                  goto LABEL_334;
                }

                goto LABEL_342;
              }

              goto LABEL_296;
            }

            if (v510 <= v215)
            {
              v227 = (v153 + 4);
              goto LABEL_299;
            }

            if (*v216 == *v215)
            {
              v226 = 0;
              v216 = (v188 + 12);
              v227 = (v153 + 12);
              while (v227 < v510)
              {
                v229 = *v216++;
                v228 = v229;
                v231 = *v227;
                v227 += 4;
                v230 = v231;
                v226 += 8;
                if (v228 != v231)
                {
                  v232 = v226 + (__clz(__rbit64(v230 ^ v228)) >> 3);
                  goto LABEL_328;
                }
              }

LABEL_299:
              if (v227 < v505 && *v216 == *v227)
              {
                v216 = (v216 + 4);
                v227 += 2;
              }

              if (v227 < v501 && *v216 == *v227)
              {
                v216 = (v216 + 2);
                ++v227;
              }

              if (v227 < v11 && *v216 == *v227)
              {
                v227 = (v227 + 1);
              }

              v232 = v227 - v215;
            }

            else
            {
              v232 = __clz(__rbit64(*v215 ^ *v216)) >> 3;
            }

LABEL_328:
            v218 = v232 + 4;
            v219 = (v153 - v188);
            if (v153 > v5 && v188 > v553)
            {
              v220 = v153 - 1;
              v237 = (v188 - 1);
              while (*v220 == *v237)
              {
                ++v218;
                v222 = v220 - 1;
                if (v220 > v5)
                {
                  --v220;
                  v73 = v237-- > v553;
                  if (v73)
                  {
                    continue;
                  }
                }

                goto LABEL_334;
              }

              goto LABEL_342;
            }

LABEL_335:
            v169 = v153;
            goto LABEL_343;
          }
        }
      }

      else
      {
        v188 = v10 + v165;
        if (*(v10 + v165) == *v153)
        {
          goto LABEL_230;
        }
      }

      _X8 = &v153[&v153[-v5] >> 8];
      v153 = _X8 + 1;
      _X8 += 257;
      __asm { PRFM            #0, [X8] }

LABEL_373:
      v22 = v546;
      v23 = v532;
      if (v153 >= v552)
      {
        goto LABEL_742;
      }
    }

    if (v167 >= v18)
    {
      v170 = v11;
    }

    else
    {
      v170 = v548;
    }

    v171 = sub_243913D40((v153 + 5), (v168 + 4), v11, v170, v553);
    v172 = v169 - v5;
    v173 = *(a2 + 24);
    if (v169 <= v529)
    {
      *v173 = *v5;
      v208 = *(a2 + 24);
      if (v172 <= 0x10)
      {
        *(a2 + 24) = v208 + v172;
        v174 = *(a2 + 8);
        LODWORD(v18) = v549;
        goto LABEL_279;
      }

      *(v208 + 16) = *(v5 + 16);
      LODWORD(v18) = v549;
      if (v172 >= 33)
      {
        v209 = v208 + v172;
        v210 = (v208 + 32);
        v211 = (v5 + 48);
        do
        {
          *v210 = *(v211 - 1);
          v212 = *v211;
          v211 += 2;
          v210[1] = v212;
          v210 += 2;
        }

        while (v210 < v209);
      }
    }

    else
    {
      sub_24390C0CC(v173, v5, v169, v529);
      LODWORD(v18) = v549;
    }

    *(a2 + 24) += v172;
    v174 = *(a2 + 8);
    if (v172 >= 0x10000)
    {
      v175 = (v174 - *a2) >> 3;
      *(a2 + 72) = 1;
      *(a2 + 76) = v175;
    }

LABEL_279:
    v218 = v171 + 4;
    *(v174 + 4) = v172;
    *v174 = 1;
    v225 = v171 + 1;
    v219 = v20;
    if ((v171 + 1) >> 16)
    {
      goto LABEL_354;
    }

    goto LABEL_355;
  }

  if (v7 != 7)
  {
    if (v29)
    {
      if (v26 <= 0x3D)
      {
        v375 = 0;
        do
        {
          _X16 = v22 + v375;
          __asm { PRFM            #2, [X16] }

          v375 += 64;
        }

        while (v375 < 4 << v26);
      }

      if (v27 <= 0x3D)
      {
        v378 = 0;
        do
        {
          _X15 = v23 + v378;
          __asm { PRFM            #2, [X15] }

          v378 += 64;
        }

        while (v378 < 4 << v27);
      }
    }

    if (v28)
    {
      v381 = a4;
    }

    else
    {
      v381 = a4 + 1;
    }

    if (v381 >= v552)
    {
      goto LABEL_743;
    }

    v545 = 64 - v8;
    v540 = 32 - v9;
    v521 = 56 - v26;
    v517 = 24 - v27;
    v536 = v18 - 1;
    v508 = a3;
    v512 = v11 - 7;
    v503 = v11 - 1;
    v507 = v11 - 3;
    v531 = (v11 - 32);
    v491 = v547 - 1;
    v495 = v10 + 16;
    v499 = v10 - 1;
    while (1)
    {
      v382 = *v381;
      v383 = 0xCF1BBCDCB7A56463 * *v381;
      v384 = v383 >> v545;
      v385 = -1640531535 * *v381;
      v386 = v385 >> v540;
      v387 = v383 >> v521;
      v388 = v385 >> v517;
      v389 = *(v22 + ((v383 >> v521 >> 6) & 0x3FFFFFFFFFFFFFCLL));
      v390 = *(v23 + 4 * (v388 >> 8));
      v391 = v381 - v10;
      v392 = *(v551 + 4 * (v383 >> v545));
      v393 = *(v550 + 4 * v386);
      v394 = v381 - v10 + 1;
      v395 = (v394 - v20);
      v396 = v547 + v395 - v541;
      if (v395 >= v18)
      {
        v396 = v10 + v395;
      }

      *(v550 + 4 * v386) = v391;
      v525 = v381 - v10;
      *(v551 + 4 * v384) = v391;
      if ((v536 - v395) >= 3)
      {
        v397 = (v381 + 1);
        if (*v396 == *(v381 + 1))
        {
          break;
        }
      }

      if (v392 <= v18)
      {
        v414 = v389 >> 8;
        if (v387 == v389 && v414 > v527)
        {
          v451 = (v547 + (v389 >> 8));
          if (*v451 == v382)
          {
            v446 = sub_243913D40(v381 + 4, v451 + 1, v11, v548, v553) + 8;
            v447 = v525 - v541 - v414;
            if (v381 > v5)
            {
              v448 = v381 - 1;
              v452 = (v491 + v414);
              LODWORD(v18) = v549;
              while (*v448 == *v452)
              {
                ++v446;
                v450 = v448 - 1;
                if (v448 > v5)
                {
                  --v448;
                  v73 = v452-- > v513;
                  if (v73)
                  {
                    continue;
                  }
                }

LABEL_700:
                v397 = (v450 + 1);
                goto LABEL_709;
              }

LABEL_708:
              v397 = (v448 + 1);
LABEL_709:
              v467 = v397 - v5;
              v468 = *(a2 + 24);
              if (v397 > v531)
              {
                sub_24390C0CC(v468, v5, v397, v531);
                LODWORD(v18) = v549;
                goto LABEL_711;
              }

              *v468 = *v5;
              v470 = *(a2 + 24);
              if (v467 <= 0x10)
              {
                *(a2 + 24) = v470 + v467;
                v402 = *(a2 + 8);
              }

              else
              {
                *(v470 + 16) = *(v5 + 16);
                if (v467 >= 33)
                {
                  v471 = v470 + v467;
                  v472 = (v470 + 32);
                  v473 = (v5 + 48);
                  do
                  {
                    *v472 = *(v473 - 1);
                    v474 = *v473;
                    v473 += 2;
                    v472[1] = v474;
                    v472 += 2;
                  }

                  while (v472 < v471);
                }

LABEL_711:
                *(a2 + 24) += v467;
                v402 = *(a2 + 8);
                if (v467 >= 0x10000)
                {
                  v469 = (v402 - *a2) >> 3;
                  *(a2 + 72) = 1;
                  *(a2 + 76) = v469;
                }
              }

              *(v402 + 4) = v467;
              *v402 = v447 + 3;
              v453 = v446 - 3;
              v19 = v20;
              v20 = v447;
              if (v446 - 3 >= 0x10000)
              {
LABEL_720:
                v475 = (v402 - *a2) >> 3;
                *(a2 + 72) = 2;
                *(a2 + 76) = v475;
                v20 = v447;
              }

LABEL_721:
              *(v402 + 6) = v453;
              *(a2 + 8) = v402 + 8;
              v5 = v397 + v446;
              if (v397 + v446 <= v552)
              {
                *(v551 + 4 * ((0xCF1BBCDCB7A56463 * *(v10 + (v525 + 2))) >> v545)) = v525 + 2;
                *(v551 + 4 * ((0xCF1BBCDCB7A56463 * *(v5 - 2)) >> v545)) = v5 - 2 - v10;
                *(v550 + 4 * ((-1640531535 * *(v10 + (v525 + 2))) >> v540)) = v525 + 2;
                *(v550 + 4 * ((-1640531535 * *(v5 - 1)) >> v540)) = v5 - 1 - v10;
                v476 = v20;
                v477 = v19;
                v11 = v526;
                while (1)
                {
                  v20 = v477;
                  v477 = v476;
                  v478 = v5 - v10;
                  v479 = (v5 - v10 - v20);
                  v480 = v547 - v541;
                  if (v479 >= v18)
                  {
                    v480 = v10;
                  }

                  if ((v536 - v479) < 3)
                  {
                    break;
                  }

                  v481 = v480 + v479;
                  if (*v481 != *v5)
                  {
                    break;
                  }

                  if (v479 >= v18)
                  {
                    v482 = v526;
                  }

                  else
                  {
                    v482 = v548;
                  }

                  v483 = sub_243913D40((v5 + 4), (v481 + 4), v526, v482, v553);
                  v484 = *(a2 + 24);
                  if (v5 <= v531)
                  {
                    *v484 = *v5;
                  }

                  else
                  {
                    sub_24390C0CC(v484, v5, v5, v531);
                  }

                  v485 = *(a2 + 8);
                  *(v485 + 4) = 0;
                  *v485 = 1;
                  LODWORD(v18) = v549;
                  if (v483 + 1 >= 0x10000)
                  {
                    v486 = (v485 - *a2) >> 3;
                    *(a2 + 72) = 2;
                    *(a2 + 76) = v486;
                  }

                  *(v550 + 4 * ((-1640531535 * *v5) >> v540)) = v478;
                  *(v551 + 4 * ((0xCF1BBCDCB7A56463 * *v5) >> v545)) = v478;
                  v5 += v483 + 4;
                  *(v485 + 6) = v483 + 1;
                  *(a2 + 8) = v485 + 8;
                  v476 = v20;
                  v19 = v477;
                  v381 = v5;
                  if (v5 > v552)
                  {
                    goto LABEL_739;
                  }
                }

                v19 = v20;
                v20 = v476;
                v381 = v5;
              }

              else
              {
                v381 = (v397 + v446);
                v11 = v526;
              }

              goto LABEL_739;
            }

LABEL_662:
            v397 = v381;
LABEL_663:
            LODWORD(v18) = v549;
            goto LABEL_709;
          }
        }
      }

      else
      {
        v404 = v10 + v392;
        if (*(v10 + v392) == v382)
        {
          v405 = (v381 + 8);
          v406 = (v404 + 8);
          if (v512 > (v381 + 8))
          {
            if (*v406 == *v405)
            {
              v407 = 0;
              v406 = (v495 + v392);
              v408 = (v381 + 16);
              while (v408 < v512)
              {
                v410 = *v406;
                v406 += 4;
                v409 = v410;
                v412 = *v408;
                v408 += 4;
                v411 = v412;
                v407 += 8;
                if (v409 != v412)
                {
                  v413 = v407 + (__clz(__rbit64(v411 ^ v409)) >> 3);
                  goto LABEL_656;
                }
              }

LABEL_615:
              if (v408 < v507 && *v406 == *v408)
              {
                v406 += 2;
                v408 += 2;
              }

              if (v408 < v503 && *v406 == *v408)
              {
                ++v406;
                ++v408;
              }

              if (v408 < v11 && *v406 == *v408)
              {
                v408 = (v408 + 1);
              }

              v413 = v408 - v405;
            }

            else
            {
              v413 = __clz(__rbit64(*v405 ^ *v406)) >> 3;
            }

LABEL_656:
            v446 = v413 + 8;
            v447 = (v381 - v404);
            if (v381 > v5)
            {
              v448 = v381 - 1;
              v461 = (v499 + v392);
              while (*v448 == *v461)
              {
                ++v446;
                v450 = v448 - 1;
                if (v448 > v5)
                {
                  --v448;
                  v73 = v461-- > v553;
                  if (v73)
                  {
                    continue;
                  }
                }

                goto LABEL_700;
              }

              goto LABEL_708;
            }

            goto LABEL_701;
          }

          v408 = (v381 + 8);
          goto LABEL_615;
        }
      }

      if (v393 <= v18)
      {
        v432 = v390 >> 8;
        if (v388 == v390 && v432 > v527)
        {
          v416 = v547 + v432;
          if (*(v547 + v432) == *v381)
          {
            LODWORD(v393) = v432 + v541;
LABEL_596:
            v397 = (v381 + 1);
            v417 = *(v381 + 1);
            v418 = (0xCF1BBCDCB7A56463 * v417) >> v545;
            v419 = (0xCF1BBCDCB7A56463 * v417) >> v521;
            v420 = *(v551 + 4 * v418);
            v421 = *(v546 + ((v419 >> 6) & 0x3FFFFFFFFFFFFFCLL));
            *(v551 + 4 * v418) = v394;
            if (v420 <= v18)
            {
              v441 = v421 >> 8;
              if (v419 == v421 && v441 > v527)
              {
                v462 = v441;
                v463 = (v547 + v441);
                if (*v463 == v417)
                {
                  v446 = sub_243913D40((v381 + 9), v463 + 1, v11, v548, v553) + 8;
                  v447 = v394 - v541 - v462;
                  if (v397 <= v5)
                  {
                    goto LABEL_663;
                  }

                  v464 = (v491 + v462);
                  LODWORD(v18) = v549;
                  while (*v381 == *v464)
                  {
                    ++v446;
                    v448 = v381 - 1;
                    if (v381 > v5)
                    {
                      --v381;
                      v73 = v464-- > v513;
                      if (v73)
                      {
                        continue;
                      }
                    }

                    goto LABEL_708;
                  }

                  goto LABEL_741;
                }
              }
            }

            else
            {
              v422 = v10 + v420;
              if (*(v10 + v420) == v417)
              {
                v423 = (v381 + 9);
                v424 = (v422 + 8);
                if (v512 <= (v381 + 9))
                {
                  v426 = (v381 + 9);
                  goto LABEL_676;
                }

                if (*v424 == *v423)
                {
                  v425 = 0;
                  v424 = (v495 + v420);
                  v426 = (v381 + 17);
                  while (v426 < v512)
                  {
                    v428 = *v424;
                    v424 += 4;
                    v427 = v428;
                    v430 = *v426;
                    v426 += 4;
                    v429 = v430;
                    v425 += 8;
                    if (v427 != v430)
                    {
                      v431 = v425 + (__clz(__rbit64(v429 ^ v427)) >> 3);
                      goto LABEL_703;
                    }
                  }

LABEL_676:
                  if (v426 < v507 && *v424 == *v426)
                  {
                    v424 += 2;
                    v426 += 2;
                  }

                  if (v426 < v503 && *v424 == *v426)
                  {
                    ++v424;
                    ++v426;
                  }

                  if (v426 < v11 && *v424 == *v426)
                  {
                    v426 = (v426 + 1);
                  }

                  v431 = v426 - v423;
                }

                else
                {
                  v431 = __clz(__rbit64(*v423 ^ *v424)) >> 3;
                }

LABEL_703:
                v446 = v431 + 8;
                v447 = (v397 - v422);
                if (v397 <= v5)
                {
                  goto LABEL_709;
                }

                v466 = (v499 + v420);
                while (*v381 == *v466)
                {
                  ++v446;
                  v448 = v381 - 1;
                  if (v381 > v5)
                  {
                    --v381;
                    v73 = v466-- > v553;
                    if (v73)
                    {
                      continue;
                    }
                  }

                  goto LABEL_708;
                }

LABEL_741:
                v397 = (v381 + 1);
                goto LABEL_709;
              }
            }

            v443 = (v381 + 4);
            v444 = (v416 + 4);
            if (v393 < v18)
            {
              v445 = v416;
              v446 = sub_243913D40(v443, v444, v11, v548, v553) + 4;
              v447 = (v525 - v393);
              if (v381 > v5 && v445 > v513)
              {
                v448 = v381 - 1;
                v449 = (v445 - 1);
                LODWORD(v18) = v549;
                while (*v448 == *v449)
                {
                  ++v446;
                  v450 = v448 - 1;
                  if (v448 > v5)
                  {
                    --v448;
                    v73 = v449-- > v513;
                    if (v73)
                    {
                      continue;
                    }
                  }

                  goto LABEL_700;
                }

                goto LABEL_708;
              }

              goto LABEL_662;
            }

            if (v512 <= v443)
            {
              v455 = (v381 + 4);
              goto LABEL_665;
            }

            if (*v444 == *v443)
            {
              v454 = 0;
              v444 = (v416 + 12);
              v455 = (v381 + 12);
              while (v455 < v512)
              {
                v457 = *v444++;
                v456 = v457;
                v459 = *v455;
                v455 += 4;
                v458 = v459;
                v454 += 8;
                if (v456 != v459)
                {
                  v460 = v454 + (__clz(__rbit64(v458 ^ v456)) >> 3);
                  goto LABEL_694;
                }
              }

LABEL_665:
              if (v455 < v507 && *v444 == *v455)
              {
                v444 = (v444 + 4);
                v455 += 2;
              }

              if (v455 < v503 && *v444 == *v455)
              {
                v444 = (v444 + 2);
                ++v455;
              }

              if (v455 < v11 && *v444 == *v455)
              {
                v455 = (v455 + 1);
              }

              v460 = v455 - v443;
            }

            else
            {
              v460 = __clz(__rbit64(*v443 ^ *v444)) >> 3;
            }

LABEL_694:
            v446 = v460 + 4;
            v447 = (v381 - v416);
            if (v381 > v5 && v416 > v553)
            {
              v448 = v381 - 1;
              v465 = (v416 - 1);
              while (*v448 == *v465)
              {
                ++v446;
                v450 = v448 - 1;
                if (v448 > v5)
                {
                  --v448;
                  v73 = v465-- > v553;
                  if (v73)
                  {
                    continue;
                  }
                }

                goto LABEL_700;
              }

              goto LABEL_708;
            }

LABEL_701:
            v397 = v381;
            goto LABEL_709;
          }
        }
      }

      else
      {
        v416 = v10 + v393;
        if (*(v10 + v393) == *v381)
        {
          goto LABEL_596;
        }
      }

      _X8 = &v381[&v381[-v5] >> 8];
      v381 = _X8 + 1;
      _X8 += 257;
      __asm { PRFM            #0, [X8] }

LABEL_739:
      v22 = v546;
      v23 = v532;
      if (v381 >= v552)
      {
        goto LABEL_742;
      }
    }

    if (v395 >= v18)
    {
      v398 = v11;
    }

    else
    {
      v398 = v548;
    }

    v399 = sub_243913D40((v381 + 5), (v396 + 4), v11, v398, v553);
    v400 = v397 - v5;
    v401 = *(a2 + 24);
    if (v397 <= v531)
    {
      *v401 = *v5;
      v436 = *(a2 + 24);
      if (v400 <= 0x10)
      {
        *(a2 + 24) = v436 + v400;
        v402 = *(a2 + 8);
        LODWORD(v18) = v549;
        goto LABEL_645;
      }

      *(v436 + 16) = *(v5 + 16);
      LODWORD(v18) = v549;
      if (v400 >= 33)
      {
        v437 = v436 + v400;
        v438 = (v436 + 32);
        v439 = (v5 + 48);
        do
        {
          *v438 = *(v439 - 1);
          v440 = *v439;
          v439 += 2;
          v438[1] = v440;
          v438 += 2;
        }

        while (v438 < v437);
      }
    }

    else
    {
      sub_24390C0CC(v401, v5, v397, v531);
      LODWORD(v18) = v549;
    }

    *(a2 + 24) += v400;
    v402 = *(a2 + 8);
    if (v400 >= 0x10000)
    {
      v403 = (v402 - *a2) >> 3;
      *(a2 + 72) = 1;
      *(a2 + 76) = v403;
    }

LABEL_645:
    v446 = v399 + 4;
    *(v402 + 4) = v400;
    *v402 = 1;
    v453 = v399 + 1;
    v447 = v20;
    if ((v399 + 1) >> 16)
    {
      goto LABEL_720;
    }

    goto LABEL_721;
  }

  if (v29)
  {
    if (v26 <= 0x3D)
    {
      v30 = 0;
      do
      {
        _X16 = v22 + v30;
        __asm { PRFM            #2, [X16] }

        v30 += 64;
      }

      while (v30 < 4 << v26);
    }

    if (v27 <= 0x3D)
    {
      v36 = 0;
      do
      {
        _X15 = v23 + v36;
        __asm { PRFM            #2, [X15] }

        v36 += 64;
      }

      while (v36 < 4 << v27);
    }
  }

  if (v28)
  {
    v39 = a4;
  }

  else
  {
    v39 = a4 + 1;
  }

  if (v39 < v552)
  {
    v542 = 64 - v8;
    v537 = 64 - v9;
    v514 = 56 - v27;
    v518 = 56 - v26;
    v533 = v18 - 1;
    v508 = a3;
    v509 = v11 - 7;
    v500 = v11 - 1;
    v504 = v11 - 3;
    v528 = (v11 - 32);
    v488 = v547 - 1;
    v492 = v10 + 16;
    v496 = v10 - 1;
    while (1)
    {
      v40 = *v39;
      v41 = 0xCF1BBCDCB7A56463 * *v39;
      v42 = v41 >> v542;
      v43 = 0xCF1BBCDCBFA56300 * *v39;
      v44 = v43 >> v537;
      v45 = v41 >> v518;
      v46 = v43 >> v514;
      v47 = *(v22 + ((v41 >> v518 >> 6) & 0x3FFFFFFFFFFFFFCLL));
      v48 = *(v23 + ((v46 >> 6) & 0x3FFFFFFFFFFFFFCLL));
      v49 = v39 - v10;
      v50 = *(v551 + 4 * (v41 >> v542));
      v51 = *(v550 + 4 * v44);
      v52 = v39 - v10 + 1;
      v53 = (v52 - v20);
      v54 = v547 + v53 - v541;
      if (v53 >= v18)
      {
        v54 = v10 + v53;
      }

      *(v550 + 4 * v44) = v49;
      v522 = v39 - v10;
      *(v551 + 4 * v42) = v49;
      if ((v533 - v53) >= 3)
      {
        v55 = (v39 + 1);
        if (*v54 == *(v39 + 1))
        {
          break;
        }
      }

      if (v50 <= v18)
      {
        v72 = v47 >> 8;
        v73 = v45 == v47 && v72 > v527;
        if (v73)
        {
          v109 = (v547 + (v47 >> 8));
          if (*v109 == v40)
          {
            v104 = sub_243913D40(v39 + 4, v109 + 1, v11, v548, v553) + 8;
            v105 = v522 - v541 - v72;
            if (v39 > v5)
            {
              v106 = v39 - 1;
              v110 = (v488 + v72);
              LODWORD(v18) = v549;
              while (*v106 == *v110)
              {
                ++v104;
                v108 = v106 - 1;
                if (v106 > v5)
                {
                  --v106;
                  v73 = v110-- > v513;
                  if (v73)
                  {
                    continue;
                  }
                }

LABEL_151:
                v55 = (v108 + 1);
                goto LABEL_160;
              }

LABEL_159:
              v55 = (v106 + 1);
LABEL_160:
              v125 = v55 - v5;
              v126 = *(a2 + 24);
              if (v55 > v528)
              {
                sub_24390C0CC(v126, v5, v55, v528);
                LODWORD(v18) = v549;
                goto LABEL_162;
              }

              *v126 = *v5;
              v128 = *(a2 + 24);
              if (v125 <= 0x10)
              {
                *(a2 + 24) = v128 + v125;
                v60 = *(a2 + 8);
              }

              else
              {
                *(v128 + 16) = *(v5 + 16);
                if (v125 >= 33)
                {
                  v129 = v128 + v125;
                  v130 = (v128 + 32);
                  v131 = (v5 + 48);
                  do
                  {
                    *v130 = *(v131 - 1);
                    v132 = *v131;
                    v131 += 2;
                    v130[1] = v132;
                    v130 += 2;
                  }

                  while (v130 < v129);
                }

LABEL_162:
                *(a2 + 24) += v125;
                v60 = *(a2 + 8);
                if (v125 >= 0x10000)
                {
                  v127 = (v60 - *a2) >> 3;
                  *(a2 + 72) = 1;
                  *(a2 + 76) = v127;
                }
              }

              *(v60 + 4) = v125;
              *v60 = v105 + 3;
              v111 = v104 - 3;
              v19 = v20;
              v20 = v105;
              if (v104 - 3 >= 0x10000)
              {
LABEL_171:
                v133 = (v60 - *a2) >> 3;
                *(a2 + 72) = 2;
                *(a2 + 76) = v133;
                v20 = v105;
              }

LABEL_172:
              *(v60 + 6) = v111;
              *(a2 + 8) = v60 + 8;
              v5 = v55 + v104;
              if (v55 + v104 <= v552)
              {
                v134 = *(v10 + (v522 + 2));
                *(v551 + 4 * ((0xCF1BBCDCB7A56463 * v134) >> v542)) = v522 + 2;
                *(v551 + 4 * ((0xCF1BBCDCB7A56463 * *(v5 - 2)) >> v542)) = v5 - 2 - v10;
                *(v550 + 4 * ((0xCF1BBCDCBFA56300 * v134) >> v537)) = v522 + 2;
                *(v550 + 4 * ((0xCF1BBCDCBFA56300 * *(v5 - 1)) >> v537)) = v5 - 1 - v10;
                v135 = v20;
                v136 = v19;
                v11 = v526;
                while (1)
                {
                  v20 = v136;
                  v136 = v135;
                  v137 = v5 - v10;
                  v138 = (v5 - v10 - v20);
                  v139 = v547 - v541;
                  if (v138 >= v18)
                  {
                    v139 = v10;
                  }

                  if ((v533 - v138) < 3)
                  {
                    break;
                  }

                  v140 = v139 + v138;
                  if (*v140 != *v5)
                  {
                    break;
                  }

                  if (v138 >= v18)
                  {
                    v141 = v526;
                  }

                  else
                  {
                    v141 = v548;
                  }

                  v142 = sub_243913D40((v5 + 4), (v140 + 4), v526, v141, v553);
                  v143 = *(a2 + 24);
                  if (v5 <= v528)
                  {
                    *v143 = *v5;
                  }

                  else
                  {
                    sub_24390C0CC(v143, v5, v5, v528);
                  }

                  v144 = *(a2 + 8);
                  *(v144 + 4) = 0;
                  *v144 = 1;
                  LODWORD(v18) = v549;
                  if (v142 + 1 >= 0x10000)
                  {
                    v145 = (v144 - *a2) >> 3;
                    *(a2 + 72) = 2;
                    *(a2 + 76) = v145;
                  }

                  *(v144 + 6) = v142 + 1;
                  v146 = *v5;
                  *(v550 + 4 * ((0xCF1BBCDCBFA56300 * *v5) >> v537)) = v137;
                  *(v551 + 4 * ((0xCF1BBCDCB7A56463 * v146) >> v542)) = v137;
                  v5 += v142 + 4;
                  *(a2 + 8) = v144 + 8;
                  v135 = v20;
                  v19 = v136;
                  v39 = v5;
                  if (v5 > v552)
                  {
                    goto LABEL_190;
                  }
                }

                v19 = v20;
                v20 = v135;
                v39 = v5;
              }

              else
              {
                v39 = (v55 + v104);
                v11 = v526;
              }

              goto LABEL_190;
            }

LABEL_113:
            v55 = v39;
LABEL_114:
            LODWORD(v18) = v549;
            goto LABEL_160;
          }
        }
      }

      else
      {
        v62 = v10 + v50;
        if (*(v10 + v50) == v40)
        {
          v63 = (v39 + 8);
          v64 = (v62 + 8);
          if (v509 > (v39 + 8))
          {
            if (*v64 == *v63)
            {
              v65 = 0;
              v64 = (v492 + v50);
              v66 = (v39 + 16);
              while (v66 < v509)
              {
                v68 = *v64;
                v64 += 4;
                v67 = v68;
                v70 = *v66;
                v66 += 4;
                v69 = v70;
                v65 += 8;
                if (v67 != v70)
                {
                  v71 = v65 + (__clz(__rbit64(v69 ^ v67)) >> 3);
                  goto LABEL_107;
                }
              }

LABEL_66:
              if (v66 < v504 && *v64 == *v66)
              {
                v64 += 2;
                v66 += 2;
              }

              if (v66 < v500 && *v64 == *v66)
              {
                ++v64;
                ++v66;
              }

              if (v66 < v11 && *v64 == *v66)
              {
                v66 = (v66 + 1);
              }

              v71 = v66 - v63;
            }

            else
            {
              v71 = __clz(__rbit64(*v63 ^ *v64)) >> 3;
            }

LABEL_107:
            v104 = v71 + 8;
            v105 = (v39 - v62);
            if (v39 > v5)
            {
              v106 = v39 - 1;
              v119 = (v496 + v50);
              while (*v106 == *v119)
              {
                ++v104;
                v108 = v106 - 1;
                if (v106 > v5)
                {
                  --v106;
                  v73 = v119-- > v553;
                  if (v73)
                  {
                    continue;
                  }
                }

                goto LABEL_151;
              }

              goto LABEL_159;
            }

            goto LABEL_152;
          }

          v66 = (v39 + 8);
          goto LABEL_66;
        }
      }

      if (v51 <= v18)
      {
        v90 = v48 >> 8;
        if (v46 == v48 && v90 > v527)
        {
          v74 = v547 + v90;
          if (*(v547 + v90) == *v39)
          {
            LODWORD(v51) = v90 + v541;
LABEL_47:
            v55 = (v39 + 1);
            v75 = *(v39 + 1);
            v76 = (0xCF1BBCDCB7A56463 * v75) >> v542;
            v77 = (0xCF1BBCDCB7A56463 * v75) >> v518;
            v78 = *(v551 + 4 * v76);
            v79 = *(v546 + ((v77 >> 6) & 0x3FFFFFFFFFFFFFCLL));
            *(v551 + 4 * v76) = v52;
            if (v78 <= v18)
            {
              v99 = v79 >> 8;
              if (v77 == v79 && v99 > v527)
              {
                v120 = v99;
                v121 = (v547 + v99);
                if (*v121 == v75)
                {
                  v104 = sub_243913D40((v39 + 9), v121 + 1, v11, v548, v553) + 8;
                  v105 = v52 - v541 - v120;
                  if (v55 <= v5)
                  {
                    goto LABEL_114;
                  }

                  v122 = (v488 + v120);
                  LODWORD(v18) = v549;
                  while (*v39 == *v122)
                  {
                    ++v104;
                    v106 = v39 - 1;
                    if (v39 > v5)
                    {
                      --v39;
                      v73 = v122-- > v513;
                      if (v73)
                      {
                        continue;
                      }
                    }

                    goto LABEL_159;
                  }

                  goto LABEL_192;
                }
              }
            }

            else
            {
              v80 = v10 + v78;
              if (*(v10 + v78) == v75)
              {
                v81 = (v39 + 9);
                v82 = (v80 + 8);
                if (v509 <= (v39 + 9))
                {
                  v84 = (v39 + 9);
                  goto LABEL_127;
                }

                if (*v82 == *v81)
                {
                  v83 = 0;
                  v82 = (v492 + v78);
                  v84 = (v39 + 17);
                  while (v84 < v509)
                  {
                    v86 = *v82;
                    v82 += 4;
                    v85 = v86;
                    v88 = *v84;
                    v84 += 4;
                    v87 = v88;
                    v83 += 8;
                    if (v85 != v88)
                    {
                      v89 = v83 + (__clz(__rbit64(v87 ^ v85)) >> 3);
                      goto LABEL_154;
                    }
                  }

LABEL_127:
                  if (v84 < v504 && *v82 == *v84)
                  {
                    v82 += 2;
                    v84 += 2;
                  }

                  if (v84 < v500 && *v82 == *v84)
                  {
                    ++v82;
                    ++v84;
                  }

                  if (v84 < v11 && *v82 == *v84)
                  {
                    v84 = (v84 + 1);
                  }

                  v89 = v84 - v81;
                }

                else
                {
                  v89 = __clz(__rbit64(*v81 ^ *v82)) >> 3;
                }

LABEL_154:
                v104 = v89 + 8;
                v105 = (v55 - v80);
                if (v55 <= v5)
                {
                  goto LABEL_160;
                }

                v124 = (v496 + v78);
                while (*v39 == *v124)
                {
                  ++v104;
                  v106 = v39 - 1;
                  if (v39 > v5)
                  {
                    --v39;
                    v73 = v124-- > v553;
                    if (v73)
                    {
                      continue;
                    }
                  }

                  goto LABEL_159;
                }

LABEL_192:
                v55 = (v39 + 1);
                goto LABEL_160;
              }
            }

            v101 = (v39 + 4);
            v102 = (v74 + 4);
            if (v51 < v18)
            {
              v103 = v74;
              v104 = sub_243913D40(v101, v102, v11, v548, v553) + 4;
              v105 = (v522 - v51);
              if (v39 > v5 && v103 > v513)
              {
                v106 = v39 - 1;
                v107 = (v103 - 1);
                LODWORD(v18) = v549;
                while (*v106 == *v107)
                {
                  ++v104;
                  v108 = v106 - 1;
                  if (v106 > v5)
                  {
                    --v106;
                    v73 = v107-- > v513;
                    if (v73)
                    {
                      continue;
                    }
                  }

                  goto LABEL_151;
                }

                goto LABEL_159;
              }

              goto LABEL_113;
            }

            if (v509 <= v101)
            {
              v113 = (v39 + 4);
              goto LABEL_116;
            }

            if (*v102 == *v101)
            {
              v112 = 0;
              v102 = (v74 + 12);
              v113 = (v39 + 12);
              while (v113 < v509)
              {
                v115 = *v102++;
                v114 = v115;
                v117 = *v113;
                v113 += 4;
                v116 = v117;
                v112 += 8;
                if (v114 != v117)
                {
                  v118 = v112 + (__clz(__rbit64(v116 ^ v114)) >> 3);
                  goto LABEL_145;
                }
              }

LABEL_116:
              if (v113 < v504 && *v102 == *v113)
              {
                v102 = (v102 + 4);
                v113 += 2;
              }

              if (v113 < v500 && *v102 == *v113)
              {
                v102 = (v102 + 2);
                ++v113;
              }

              if (v113 < v11 && *v102 == *v113)
              {
                v113 = (v113 + 1);
              }

              v118 = v113 - v101;
            }

            else
            {
              v118 = __clz(__rbit64(*v101 ^ *v102)) >> 3;
            }

LABEL_145:
            v104 = v118 + 4;
            v105 = (v39 - v74);
            if (v39 > v5 && v74 > v553)
            {
              v106 = v39 - 1;
              v123 = (v74 - 1);
              while (*v106 == *v123)
              {
                ++v104;
                v108 = v106 - 1;
                if (v106 > v5)
                {
                  --v106;
                  v73 = v123-- > v553;
                  if (v73)
                  {
                    continue;
                  }
                }

                goto LABEL_151;
              }

              goto LABEL_159;
            }

LABEL_152:
            v55 = v39;
            goto LABEL_160;
          }
        }
      }

      else
      {
        v74 = v10 + v51;
        if (*(v10 + v51) == *v39)
        {
          goto LABEL_47;
        }
      }

      _X8 = &v39[&v39[-v5] >> 8];
      v39 = _X8 + 1;
      _X8 += 257;
      __asm { PRFM            #0, [X8] }

LABEL_190:
      v22 = v546;
      v23 = v532;
      if (v39 >= v552)
      {
        goto LABEL_742;
      }
    }

    if (v53 >= v18)
    {
      v56 = v11;
    }

    else
    {
      v56 = v548;
    }

    v57 = sub_243913D40((v39 + 5), (v54 + 4), v11, v56, v553);
    v58 = v55 - v5;
    v59 = *(a2 + 24);
    if (v55 <= v528)
    {
      *v59 = *v5;
      v94 = *(a2 + 24);
      if (v58 <= 0x10)
      {
        *(a2 + 24) = v94 + v58;
        v60 = *(a2 + 8);
        LODWORD(v18) = v549;
        goto LABEL_96;
      }

      *(v94 + 16) = *(v5 + 16);
      LODWORD(v18) = v549;
      if (v58 >= 33)
      {
        v95 = v94 + v58;
        v96 = (v94 + 32);
        v97 = (v5 + 48);
        do
        {
          *v96 = *(v97 - 1);
          v98 = *v97;
          v97 += 2;
          v96[1] = v98;
          v96 += 2;
        }

        while (v96 < v95);
      }
    }

    else
    {
      sub_24390C0CC(v59, v5, v55, v528);
      LODWORD(v18) = v549;
    }

    *(a2 + 24) += v58;
    v60 = *(a2 + 8);
    if (v58 >= 0x10000)
    {
      v61 = (v60 - *a2) >> 3;
      *(a2 + 72) = 1;
      *(a2 + 76) = v61;
    }

LABEL_96:
    v104 = v57 + 4;
    *(v60 + 4) = v58;
    *v60 = 1;
    v111 = v57 + 1;
    v105 = v20;
    if ((v57 + 1) >> 16)
    {
      goto LABEL_171;
    }

    goto LABEL_172;
  }

LABEL_743:
  *a3 = v20;
  a3[1] = v19;
  return v11 - v5;
}