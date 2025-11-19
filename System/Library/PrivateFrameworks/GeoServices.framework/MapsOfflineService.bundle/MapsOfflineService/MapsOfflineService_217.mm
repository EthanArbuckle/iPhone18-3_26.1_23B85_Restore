void sub_CE9DD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_CDD3FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CE9DE4(void *a1)
{
  v1 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if (v1 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v4 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  v23 = a1;
  if (v4)
  {
    if (v4 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = 24 * v1;
  __p = 0;
  v20 = v5;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *v5 = 0;
  v21 = 24 * v1 + 24;
  v22 = 0;
  sub_CDD28C(a1, &__p);
  v6 = a1[1];
  v7 = v20;
  v8 = v21;
  if (v21 != v20)
  {
    v9 = v21;
    while (1)
    {
      v12 = *(v9 - 3);
      v9 -= 3;
      v11 = v12;
      v21 = v9;
      if (!v12)
      {
        goto LABEL_14;
      }

      v13 = *(v8 - 16);
      v10 = v11;
      if (v13 != v11)
      {
        break;
      }

LABEL_13:
      *(v8 - 16) = v11;
      operator delete(v10);
      v9 = v21;
LABEL_14:
      v8 = v9;
      if (v9 == v7)
      {
        goto LABEL_27;
      }
    }

    while (1)
    {
      if (*(v13 - 1) < 0)
      {
        operator delete(*(v13 - 3));
        v14 = v13 - 6;
        v15 = *(v13 - 6);
        if (v15)
        {
LABEL_24:
          v16 = *(v13 - 5);
          v17 = v15;
          if (v16 != v15)
          {
            do
            {
              v16 = sub_4547F0(v16 - 552);
            }

            while (v16 != v15);
            v17 = *v14;
          }

          *(v13 - 5) = v15;
          operator delete(v17);
        }
      }

      else
      {
        v14 = v13 - 6;
        v15 = *(v13 - 6);
        if (v15)
        {
          goto LABEL_24;
        }
      }

      v13 = v14;
      if (v14 == v11)
      {
        v10 = *v9;
        goto LABEL_13;
      }
    }
  }

LABEL_27:
  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_CE9FB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_CDD3FC(va);
  _Unwind_Resume(a1);
}

void sub_CE9FC4(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    v4 = a1[1];
    while (1)
    {
      v7 = *(v4 - 3);
      v4 -= 3;
      v6 = v7;
      if (!v7)
      {
        goto LABEL_5;
      }

      v8 = *(v3 - 2);
      v5 = v6;
      if (v8 != v6)
      {
        break;
      }

LABEL_4:
      *(v3 - 2) = v6;
      operator delete(v5);
LABEL_5:
      v3 = v4;
      if (v4 == v2)
      {
        goto LABEL_18;
      }
    }

    while (1)
    {
      if (*(v8 - 1) < 0)
      {
        operator delete(*(v8 - 3));
        v9 = v8 - 6;
        v10 = *(v8 - 6);
        if (v10)
        {
LABEL_15:
          v11 = *(v8 - 5);
          v12 = v10;
          if (v11 != v10)
          {
            do
            {
              v11 = sub_4547F0(v11 - 552);
            }

            while (v11 != v10);
            v12 = *v9;
          }

          *(v8 - 5) = v10;
          operator delete(v12);
        }
      }

      else
      {
        v9 = v8 - 6;
        v10 = *(v8 - 6);
        if (v10)
        {
          goto LABEL_15;
        }
      }

      v8 = v9;
      if (v9 == v6)
      {
        v5 = *v4;
        goto LABEL_4;
      }
    }
  }

LABEL_18:
  a1[1] = v2;
}

uint64_t sub_CEA0B4(uint64_t a1, unint64_t a2)
{
  v27[0] = sub_F6D008(a2);
  v27[1] = &v24;
  v27[2] = &v23;
  v28 = &v25;
  sub_CEA3D0(v26, v27);
  for (i = sub_5FC64(a2); i != sub_445EF4(a2); i += 12)
  {
    v5 = i[4];
    LODWORD(v24) = v5;
    BYTE6(v24) = BYTE6(v5);
    WORD2(v24) = WORD2(v5);
    sub_CEAD3C(v26, &v24, v27);
    if (!v27[0])
    {
      goto LABEL_29;
    }

    v6 = v24;
    v7 = sub_2B51D8(a1, v24 & 0xFFFFFFFFFFFFLL);
    if (*(a1 + 7772) == 1)
    {
      v8 = sub_30C50C(a1 + 3896, v6, 0);
      v9 = &v8[-*v8];
      if (*v9 < 5u)
      {
        v10 = 0;
      }

      else
      {
        v10 = *(v9 + 2);
        if (v10)
        {
          v10 += &v8[*&v8[v10]];
        }
      }

      v11 = (v10 + ((v6 >> 30) & 0x3FFFC) + 4 + *(v10 + ((v6 >> 30) & 0x3FFFC) + 4));
    }

    else
    {
      v11 = 0;
    }

    sub_31D7E8(a1, v6 & 0xFFFFFFFFFFFFLL, 1);
    if (v11)
    {
      v12 = (v11 - *v11);
      if (*v12 >= 0x11u)
      {
        v13 = v12[8];
        if (v13)
        {
          if ((*(v11 + v13) & 4) != 0)
          {
            continue;
          }
        }
      }
    }

    v14 = (v7 - *v7);
    if (*v14 >= 0x9Bu)
    {
      v15 = v14[77];
      if (v15)
      {
        if (*(v7 + v15 + 2))
        {
          continue;
        }
      }
    }

    sub_CEAEB4(v26, &v24, v27);
    sub_F6E314(a2, *(v28 + 1), i, 1);
    i = sub_5FC64(a2);
    v16 = v26;
    v17 = 768;
    do
    {
      if (v16[2])
      {
        v18 = v16[3];
        if (v18 >= 0x80)
        {
          operator delete(*v16);
          v16[5] = 0;
          *v16 = &unk_2290750;
          v16[1] = 0;
          v16[2] = 0;
          v16[3] = 0;
        }

        else if (v18)
        {
          v16[2] = 0;
          memset(*v16, 128, v18 + 8);
          *(*v16 + v18) = -1;
          v19 = v16[3];
          if (v19 == 7)
          {
            v20 = 6;
          }

          else
          {
            v20 = v19 - (v19 >> 3);
          }

          v16[5] = (v20 - v16[2]);
        }
      }

      v16 += 6;
      v17 -= 48;
    }

    while (v17);
LABEL_29:
    v21 = i[4];
    LODWORD(v23) = v21;
    BYTE6(v23) = BYTE6(v21);
    WORD2(v23) = WORD2(v21);
    sub_CEAEB4(v26, &v23, v27);
    *(v28 + 1) = i;
    continue;
  }

  return sub_360988(v26);
}

void sub_CEA358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_360988(va);
  _Unwind_Resume(a1);
}

void sub_CEA36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_360988(va);
  _Unwind_Resume(a1);
}

void sub_CEA380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_360988(va);
  _Unwind_Resume(a1);
}

void sub_CEA394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_360988(va);
  _Unwind_Resume(a1);
}

void sub_CEA3A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_360988(va);
  _Unwind_Resume(a1);
}

void sub_CEA3BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_360988(va);
  _Unwind_Resume(a1);
}

void *sub_CEA3D0(void *result, unint64_t *a2)
{
  v2 = *a2;
  result[5] = 0;
  *result = &unk_2290750;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  if (v2)
  {
    v3 = __clz(v2);
    if (v3 == 61)
    {
      v4 = 6;
    }

    else
    {
      v4 = (0xFFFFFFFFFFFFFFFFLL >> v3) - (0x1FFFFFFFFFFFFFFFuLL >> v3);
    }

    result[5] = v4;
    operator new();
  }

  result[6] = &unk_2290750;
  v5 = *a2;
  result[11] = 0;
  result[8] = 0;
  result[9] = 0;
  result[7] = 0;
  if (v5)
  {
    v6 = __clz(v5);
    if (v6 == 61)
    {
      v7 = 6;
    }

    else
    {
      v7 = (0xFFFFFFFFFFFFFFFFLL >> v6) - (0x1FFFFFFFFFFFFFFFuLL >> v6);
    }

    result[11] = v7;
    operator new();
  }

  result[12] = &unk_2290750;
  v8 = *a2;
  result[17] = 0;
  result[14] = 0;
  result[15] = 0;
  result[13] = 0;
  if (v8)
  {
    v9 = __clz(v8);
    if (v9 == 61)
    {
      v10 = 6;
    }

    else
    {
      v10 = (0xFFFFFFFFFFFFFFFFLL >> v9) - (0x1FFFFFFFFFFFFFFFuLL >> v9);
    }

    result[17] = v10;
    operator new();
  }

  result[18] = &unk_2290750;
  v11 = *a2;
  result[23] = 0;
  result[20] = 0;
  result[21] = 0;
  result[19] = 0;
  if (v11)
  {
    v12 = __clz(v11);
    if (v12 == 61)
    {
      v13 = 6;
    }

    else
    {
      v13 = (0xFFFFFFFFFFFFFFFFLL >> v12) - (0x1FFFFFFFFFFFFFFFuLL >> v12);
    }

    result[23] = v13;
    operator new();
  }

  result[24] = &unk_2290750;
  v14 = *a2;
  result[29] = 0;
  result[26] = 0;
  result[27] = 0;
  result[25] = 0;
  if (v14)
  {
    v15 = __clz(v14);
    if (v15 == 61)
    {
      v16 = 6;
    }

    else
    {
      v16 = (0xFFFFFFFFFFFFFFFFLL >> v15) - (0x1FFFFFFFFFFFFFFFuLL >> v15);
    }

    result[29] = v16;
    operator new();
  }

  result[30] = &unk_2290750;
  v17 = *a2;
  result[35] = 0;
  result[32] = 0;
  result[33] = 0;
  result[31] = 0;
  if (v17)
  {
    v18 = __clz(v17);
    if (v18 == 61)
    {
      v19 = 6;
    }

    else
    {
      v19 = (0xFFFFFFFFFFFFFFFFLL >> v18) - (0x1FFFFFFFFFFFFFFFuLL >> v18);
    }

    result[35] = v19;
    operator new();
  }

  v20 = *a2;
  result[41] = 0;
  result[36] = &unk_2290750;
  result[37] = 0;
  result[38] = 0;
  result[39] = 0;
  if (v20)
  {
    v21 = __clz(v20);
    if (v21 == 61)
    {
      v22 = 6;
    }

    else
    {
      v22 = (0xFFFFFFFFFFFFFFFFLL >> v21) - (0x1FFFFFFFFFFFFFFFuLL >> v21);
    }

    result[41] = v22;
    operator new();
  }

  v23 = *a2;
  result[47] = 0;
  result[42] = &unk_2290750;
  result[43] = 0;
  result[44] = 0;
  result[45] = 0;
  if (v23)
  {
    v24 = __clz(v23);
    if (v24 == 61)
    {
      v25 = 6;
    }

    else
    {
      v25 = (0xFFFFFFFFFFFFFFFFLL >> v24) - (0x1FFFFFFFFFFFFFFFuLL >> v24);
    }

    result[47] = v25;
    operator new();
  }

  v26 = *a2;
  result[53] = 0;
  result[48] = &unk_2290750;
  result[49] = 0;
  result[50] = 0;
  result[51] = 0;
  if (v26)
  {
    v27 = __clz(v26);
    if (v27 == 61)
    {
      v28 = 6;
    }

    else
    {
      v28 = (0xFFFFFFFFFFFFFFFFLL >> v27) - (0x1FFFFFFFFFFFFFFFuLL >> v27);
    }

    result[53] = v28;
    operator new();
  }

  v29 = *a2;
  result[59] = 0;
  result[54] = &unk_2290750;
  result[55] = 0;
  result[56] = 0;
  result[57] = 0;
  if (v29)
  {
    v30 = __clz(v29);
    if (v30 == 61)
    {
      v31 = 6;
    }

    else
    {
      v31 = (0xFFFFFFFFFFFFFFFFLL >> v30) - (0x1FFFFFFFFFFFFFFFuLL >> v30);
    }

    result[59] = v31;
    operator new();
  }

  v32 = *a2;
  result[65] = 0;
  result[60] = &unk_2290750;
  result[61] = 0;
  result[62] = 0;
  result[63] = 0;
  if (v32)
  {
    v33 = __clz(v32);
    if (v33 == 61)
    {
      v34 = 6;
    }

    else
    {
      v34 = (0xFFFFFFFFFFFFFFFFLL >> v33) - (0x1FFFFFFFFFFFFFFFuLL >> v33);
    }

    result[65] = v34;
    operator new();
  }

  v35 = *a2;
  result[66] = &unk_2290750;
  result[71] = 0;
  result[67] = 0;
  result[69] = 0;
  result[68] = 0;
  if (v35)
  {
    v36 = __clz(v35);
    if (v36 == 61)
    {
      v37 = 6;
    }

    else
    {
      v37 = (0xFFFFFFFFFFFFFFFFLL >> v36) - (0x1FFFFFFFFFFFFFFFuLL >> v36);
    }

    result[71] = v37;
    operator new();
  }

  v38 = *a2;
  result[72] = &unk_2290750;
  result[77] = 0;
  result[73] = 0;
  result[75] = 0;
  result[74] = 0;
  if (v38)
  {
    v39 = __clz(v38);
    if (v39 == 61)
    {
      v40 = 6;
    }

    else
    {
      v40 = (0xFFFFFFFFFFFFFFFFLL >> v39) - (0x1FFFFFFFFFFFFFFFuLL >> v39);
    }

    result[77] = v40;
    operator new();
  }

  v41 = *a2;
  result[78] = &unk_2290750;
  result[83] = 0;
  result[79] = 0;
  result[81] = 0;
  result[80] = 0;
  if (v41)
  {
    v42 = __clz(v41);
    if (v42 == 61)
    {
      v43 = 6;
    }

    else
    {
      v43 = (0xFFFFFFFFFFFFFFFFLL >> v42) - (0x1FFFFFFFFFFFFFFFuLL >> v42);
    }

    result[83] = v43;
    operator new();
  }

  v44 = *a2;
  result[84] = &unk_2290750;
  result[89] = 0;
  result[85] = 0;
  result[87] = 0;
  result[86] = 0;
  if (v44)
  {
    v45 = __clz(v44);
    if (v45 == 61)
    {
      v46 = 6;
    }

    else
    {
      v46 = (0xFFFFFFFFFFFFFFFFLL >> v45) - (0x1FFFFFFFFFFFFFFFuLL >> v45);
    }

    result[89] = v46;
    operator new();
  }

  v47 = *a2;
  result[90] = &unk_2290750;
  result[95] = 0;
  result[91] = 0;
  result[93] = 0;
  result[92] = 0;
  if (v47)
  {
    v48 = __clz(v47);
    if (v48 == 61)
    {
      v49 = 6;
    }

    else
    {
      v49 = (0xFFFFFFFFFFFFFFFFLL >> v48) - (0x1FFFFFFFFFFFFFFFuLL >> v48);
    }

    result[95] = v49;
    operator new();
  }

  return result;
}

uint64_t sub_CEAD3C@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  if ((*a2 & 0xFF000000000000) != 0)
  {
    v6 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  }

  else
  {
    v6 = v5 + 1;
  }

  v7 = ((0x2127599BF4325C37 * (v6 ^ (v5 >> 23))) ^ ~((0x2127599BF4325C37 * (v6 ^ (v5 >> 23))) >> 47)) + (((0x2127599BF4325C37 * (v6 ^ (v5 >> 23))) ^ ((0x2127599BF4325C37 * (v6 ^ (v5 >> 23))) >> 47)) << 21);
  v8 = 21 * ((265 * (v7 ^ (v7 >> 24))) ^ ((265 * (v7 ^ (v7 >> 24))) >> 14));
  v9 = 2147483649u * (v8 ^ (v8 >> 28));
  v10 = (result + 48 * (((((v8 ^ (v8 >> 28)) >> 8) ^ ((-2147483647 * (v8 ^ (v8 >> 28))) >> 16)) ^ ((-2147483647 * (v8 ^ (v8 >> 28))) >> 24)) & 0xF));
  v11 = v9 >> 7;
  v12 = v10[3];
  v13 = *v10;
  v14 = 0x101010101010101 * (v9 & 0x7F);
  while (1)
  {
    v15 = v11 & v12;
    v16 = *(v13 + v15);
    v17 = ((v16 ^ v14) - 0x101010101010101) & ~(v16 ^ v14) & 0x8080808080808080;
    if (v17)
    {
      break;
    }

LABEL_11:
    v20 = v16 & (~v16 << 6);
    if ((v20 & 0x8080808080808080) != 0)
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      a3[3] = v20;
      a3[4] = 0;
      return result;
    }

    v3 += 8;
    v11 = v3 + v15;
  }

  while (1)
  {
    v18 = (v15 + (__clz(__rbit64(v17)) >> 3)) & v12;
    v19 = v10[1] + 16 * v18;
    if (__PAIR64__(*(v19 + 4), *v19) == __PAIR64__(WORD2(v4), v4) && *(v19 + 6) == BYTE6(v4))
    {
      break;
    }

    v17 &= v17 - 1;
    if (!v17)
    {
      goto LABEL_11;
    }
  }

  v21 = v12 == v18;
  v22 = v13 + v18;
  v23 = v13 + v12;
  v24 = result + 768;
  if (v12 == v18)
  {
    v22 = 0;
    v24 = 0;
    v25 = 0;
  }

  else
  {
    v25 = v10;
  }

  if (v21)
  {
    v26 = 0;
  }

  else
  {
    v26 = v23;
  }

  *a3 = v25;
  a3[1] = v24;
  a3[2] = v22;
  a3[3] = v19;
  a3[4] = v26;
  return result;
}

uint64_t sub_CEAEB4@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  if ((*a2 & 0xFF000000000000) != 0)
  {
    v6 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  }

  else
  {
    v6 = v5 + 1;
  }

  v7 = ((0x2127599BF4325C37 * (v6 ^ (v5 >> 23))) ^ ~((0x2127599BF4325C37 * (v6 ^ (v5 >> 23))) >> 47)) + (((0x2127599BF4325C37 * (v6 ^ (v5 >> 23))) ^ ((0x2127599BF4325C37 * (v6 ^ (v5 >> 23))) >> 47)) << 21);
  v8 = 21 * ((265 * (v7 ^ (v7 >> 24))) ^ ((265 * (v7 ^ (v7 >> 24))) >> 14));
  v9 = 2147483649u * (v8 ^ (v8 >> 28));
  v10 = (result + 48 * (((BYTE1(v9) ^ BYTE2(v9)) ^ BYTE3(v9)) & 0xF));
  v11 = v9 >> 7;
  v12 = v10[3];
  v13 = *v10;
  while (1)
  {
    v14 = v11 & v12;
    v15 = *(v13 + (v11 & v12));
    v16 = ((v15 ^ (0x101010101010101 * (v9 & 0x7F))) - 0x101010101010101) & ~(v15 ^ (0x101010101010101 * (v9 & 0x7F))) & 0x8080808080808080;
    if (v16)
    {
      break;
    }

LABEL_10:
    if ((v15 & (~v15 << 6) & 0x8080808080808080) != 0)
    {
      v21 = result;
      v23 = a3;
      v24 = sub_CEB060((result + 48 * (((BYTE1(v9) ^ BYTE2(v9)) ^ BYTE3(v9)) & 0xF)), v9);
      a3 = v23;
      v18 = v24;
      result = v21;
      v25 = (v10[1] + 16 * v18);
      *v25 = *a2;
      v25[1] = 0;
      v13 = *v10;
      v17 = v10[1];
      v12 = v10[3];
      v20 = 1;
      goto LABEL_14;
    }

    v3 += 8;
    v11 = v3 + v14;
  }

  v17 = v10[1];
  while (1)
  {
    v18 = (v14 + (__clz(__rbit64(v16)) >> 3)) & v12;
    v19 = v17 + 16 * v18;
    if (__PAIR64__(*(v19 + 4), *v19) == __PAIR64__(WORD2(v4), v4) && *(v19 + 6) == BYTE6(v4))
    {
      break;
    }

    v16 &= v16 - 1;
    if (!v16)
    {
      goto LABEL_10;
    }
  }

  v20 = 0;
LABEL_14:
  *a3 = v10;
  *(a3 + 8) = result + 768;
  *(a3 + 16) = v13 + v18;
  *(a3 + 24) = v17 + 16 * v18;
  *(a3 + 32) = v13 + v12;
  *(a3 + 48) = v20;
  return result;
}

unint64_t sub_CEB060(void *a1, unint64_t a2)
{
  v2 = a1[3];
  v3 = *a1;
  v4 = v2 & (a2 >> 7);
  v5 = *(*a1 + v4) & (~*(*a1 + v4) << 7) & 0x8080808080808080;
  if (!v5)
  {
    v6 = 8;
    do
    {
      v4 = (v4 + v6) & v2;
      v6 += 8;
      v5 = *(v3 + v4) & (~*(v3 + v4) << 7) & 0x8080808080808080;
    }

    while (!v5);
  }

  v7 = (v4 + (__clz(__rbit64(v5)) >> 3)) & v2;
  v8 = a1[5];
  if (!v8)
  {
    if (*(v3 + v7) == 254)
    {
      v8 = 0;
    }

    else
    {
      v10 = a2;
      v11 = a1;
      sub_CEB158(a1);
      v7 = sub_308ECC(v11, v10);
      LOBYTE(a2) = v10;
      a1 = v11;
      v3 = *v11;
      v8 = v11[5];
    }
  }

  ++a1[2];
  a1[5] = v8 - (*(v3 + v7) == 128);
  *(v3 + v7) = a2 & 0x7F;
  *(*a1 + (a1[3] & 7) + (a1[3] & (v7 - 8)) + 1) = a2 & 0x7F;
  return v7;
}

uint64_t sub_CEB158(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1 || *(a1 + 16) > (v1 - (v1 >> 3)) >> 1)
  {
    sub_CEB188();
  }

  return sub_CEB360(a1);
}

uint64_t sub_CEB360(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 24);
  v3 = *result + v2;
  if (v3 + 1 != *result)
  {
    v4 = v2 - 7;
    v5 = *result;
    if (v4 < 0x18)
    {
      goto LABEL_31;
    }

    v6 = (v4 >> 3) + 1;
    v5 = v1 + (v6 & 0x3FFFFFFFFFFFFFFCLL);
    v7 = v1 + 1;
    v8.i64[0] = 0x8080808080808080;
    v8.i64[1] = 0x8080808080808080;
    v9.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v9.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    v10 = v6 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v11 = vandq_s8(v7[-1], v8);
      v12 = vandq_s8(*v7, v8);
      v7[-1] = vandq_s8(vsraq_n_u64(vmvnq_s8(v11), v11, 7uLL), v9);
      *v7 = vandq_s8(vsraq_n_u64(vmvnq_s8(v12), v12, 7uLL), v9);
      v7 += 2;
      v10 -= 4;
    }

    while (v10);
    if (v6 != (v6 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_31:
      do
      {
        *v5 = (~(*v5 & 0x8080808080808080) + ((*v5 & 0x8080808080808080) >> 7)) & 0xFEFEFEFEFEFEFEFELL;
        ++v5;
      }

      while (v5 != (v3 + 1));
    }
  }

  *(v3 + 1) = v1->i64[0];
  *v3 = -1;
  v13 = *(result + 24);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v17 = *result;
      if (*(*result + i) == 254)
      {
        v18 = *(*(result + 8) + 16 * i);
        v19 = (v18 >> 16) & 0xFFFF0000 | (v18 << 32);
        if ((v18 & 0xFF000000000000) != 0)
        {
          v20 = (v18 >> 16) & 0xFFFF0000 | (v18 << 32);
        }

        else
        {
          v20 = v19 + 1;
        }

        v21 = ((0x2127599BF4325C37 * (v20 ^ (v19 >> 23))) ^ ~((0x2127599BF4325C37 * (v20 ^ (v19 >> 23))) >> 47)) + (((0x2127599BF4325C37 * (v20 ^ (v19 >> 23))) ^ ((0x2127599BF4325C37 * (v20 ^ (v19 >> 23))) >> 47)) << 21);
        v22 = 21 * ((265 * (v21 ^ (v21 >> 24))) ^ ((265 * (v21 ^ (v21 >> 24))) >> 14));
        v23 = 2147483649u * (v22 ^ (v22 >> 28));
        v24 = v13 & (v23 >> 7);
        v25 = *(v17->i64 + v24) & (~*(v17->i64 + v24) << 7) & 0x8080808080808080;
        if (v25)
        {
          v15 = v13 & (v23 >> 7);
        }

        else
        {
          v26 = 8;
          v15 = v13 & (v23 >> 7);
          do
          {
            v15 = (v15 + v26) & v13;
            v26 += 8;
            v25 = *(v17->i64 + v15) & (~*(v17->i64 + v15) << 7) & 0x8080808080808080;
          }

          while (!v25);
        }

        v16 = (v15 + (__clz(__rbit64(v25)) >> 3)) & v13;
        if ((((v16 - v24) ^ (i - v24)) & v13) > 7)
        {
          v27 = v17->u8[v16];
          v17->i8[v16] = v23 & 0x7F;
          *(*result + (*(result + 24) & 7) + (*(result + 24) & (v16 - 8)) + 1) = v23 & 0x7F;
          v28 = *(result + 8);
          if (v27 == 128)
          {
            *(v28 + 16 * v16) = *(v28 + 16 * i);
            *(*result + i) = 0x80;
            *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = 0x80;
          }

          else
          {
            v29 = *(v28 + 16 * i);
            *(v28 + 16 * i) = *(v28 + 16 * v16);
            *(*(result + 8) + 16 * v16) = v29;
            --i;
          }
        }

        else
        {
          v17->i8[i] = v23 & 0x7F;
          *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = v23 & 0x7F;
        }
      }

      v13 = *(result + 24);
    }

    v30 = i - (i >> 3);
    v31 = i == 7;
    v32 = 6;
    if (!v31)
    {
      v32 = v30;
    }
  }

  else
  {
    v32 = 0;
  }

  *(result + 40) = v32 - *(result + 16);
  return result;
}

uint64_t sub_CEB640(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    v4 = a1 + 8;
    if (*a2)
    {
      sub_CEB72C(v4, a2 + 8);
      goto LABEL_16;
    }

    sub_CEB8C4(v4);
LABEL_12:
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a1 + 48) = *(a2 + 48);
    goto LABEL_16;
  }

  if (!*a2)
  {
    goto LABEL_12;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 24);
    if (v6 != v5)
    {
      do
      {
        if (*(v6 - 1) < 0)
        {
          operator delete(*(v6 - 24));
        }

        v6 -= 32;
      }

      while (v6 != v5);
      v7 = *(a1 + 24);
    }

    *(a1 + 32) = v5;
    operator delete(v7);
  }

  sub_CEBA98(a1 + 8, a2 + 8);
LABEL_16:
  *a1 = *a2;
  return a1;
}

uint64_t sub_CEB72C(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    sub_CE9FC4(a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_CEBD3C(a1 + 24, (a2 + 24));
  v4 = (a1 + 64);
  v5 = *(a1 + 64);
  if (v5)
  {
    v6 = *(a1 + 72);
    v7 = *(a1 + 64);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *v4;
    }

    *(a1 + 72) = v5;
    operator delete(v7);
    *v4 = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
  }

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  v9 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v9;
  *(a2 + 111) = 0;
  *(a2 + 88) = 0;
  sub_6BA20(a1 + 112, (a2 + 112));
  *(a1 + 152) = *(a2 + 152);
  sub_6BE5B4(a1 + 160, (a2 + 160));
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  v10 = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 200) = v10;
  *(a2 + 223) = 0;
  *(a2 + 200) = 0;
  *(a1 + 224) = *(a2 + 224);
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  v11 = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = v11;
  *(a2 + 255) = 0;
  *(a2 + 232) = 0;
  memcpy((a1 + 256), (a2 + 256), 0x175uLL);
  return a1;
}

uint64_t sub_CEB8C4(uint64_t a1)
{
  if ((*(a1 + 255) & 0x80000000) == 0)
  {
    if ((*(a1 + 223) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_38:
    operator delete(*(a1 + 200));
    v2 = *(a1 + 176);
    if (!v2)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  operator delete(*(a1 + 232));
  if (*(a1 + 223) < 0)
  {
    goto LABEL_38;
  }

LABEL_3:
  v2 = *(a1 + 176);
  if (!v2)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_4:
    v3 = *v2;
    operator delete(v2);
    v2 = v3;
  }

  while (v3);
LABEL_5:
  v4 = *(a1 + 160);
  *(a1 + 160) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(a1 + 128);
  if (v5)
  {
    do
    {
      v6 = *v5;
      v7 = *(v5 + 12);
      if (v7 != -1)
      {
        (off_26732F0[v7])(&v20, v5 + 5);
      }

      *(v5 + 12) = -1;
      if (*(v5 + 39) < 0)
      {
        operator delete(v5[2]);
      }

      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v8 = *(a1 + 112);
  *(a1 + 112) = 0;
  if (v8)
  {
    operator delete(v8);
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    v10 = *(a1 + 72);
    v11 = *(a1 + 64);
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 1);
        v10 -= 3;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = *(a1 + 64);
    }

    *(a1 + 72) = v9;
    operator delete(v11);
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    do
    {
      v16 = *v13;
      v17 = v13[8];
      if (v17)
      {
        do
        {
          v18 = *v17;
          operator delete(v17);
          v17 = v18;
        }

        while (v18);
      }

      v19 = v13[6];
      v13[6] = 0;
      if (v19)
      {
        operator delete(v19);
      }

      operator delete(v13);
      v13 = v16;
    }

    while (v16);
  }

  v14 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v14)
  {
    operator delete(v14);
  }

  if (*a1)
  {
    sub_CE9FC4(a1);
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_CEBA98(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  v4 = *(a2 + 40);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a1 + 40) = v4;
  v5 = *(a2 + 32);
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a2 + 32) = 0;
  v6 = *(a2 + 48);
  *(a1 + 48) = v6;
  *(a1 + 56) = *(a2 + 56);
  if (v6)
  {
    v7 = *(v4 + 8);
    v8 = *(a1 + 32);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v7 >= v8)
      {
        v7 %= v8;
      }
    }

    else
    {
      v7 &= v8 - 1;
    }

    *(v3 + 8 * v7) = a1 + 40;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  v9 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v9;
  *(a2 + 104) = 0;
  *(a2 + 88) = 0;
  v10 = *(a2 + 128);
  *(a2 + 96) = 0;
  v11 = *(a2 + 112);
  v12 = *(a2 + 120);
  *(a2 + 112) = 0;
  *(a1 + 112) = v11;
  *(a1 + 120) = v12;
  *(a2 + 120) = 0;
  *(a1 + 128) = v10;
  v13 = *(a2 + 136);
  *(a1 + 136) = v13;
  *(a1 + 144) = *(a2 + 144);
  if (v13)
  {
    v14 = *(v10 + 8);
    v15 = *(a1 + 120);
    if ((v15 & (v15 - 1)) != 0)
    {
      if (v14 >= v15)
      {
        v14 %= v15;
      }
    }

    else
    {
      v14 &= v15 - 1;
    }

    *(v11 + 8 * v14) = a1 + 128;
    *(a2 + 128) = 0;
    *(a2 + 136) = 0;
  }

  v16 = *(a2 + 176);
  *(a1 + 176) = v16;
  *(a1 + 152) = *(a2 + 152);
  v17 = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a2 + 160) = 0;
  *(a1 + 160) = v17;
  *(a2 + 168) = 0;
  v18 = *(a2 + 184);
  *(a1 + 184) = v18;
  *(a1 + 192) = *(a2 + 192);
  if (v18)
  {
    v19 = *(v16 + 8);
    v20 = *(a1 + 168);
    if ((v20 & (v20 - 1)) != 0)
    {
      if (v19 >= v20)
      {
        v19 %= v20;
      }
    }

    else
    {
      v19 &= v20 - 1;
    }

    *(v17 + 8 * v19) = a1 + 176;
    *(a2 + 176) = 0;
    *(a2 + 184) = 0;
  }

  v21 = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 200) = v21;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  *(a2 + 200) = 0;
  *(a1 + 224) = *(a2 + 224);
  v22 = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = v22;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  *(a2 + 232) = 0;
  memcpy((a1 + 256), (a2 + 256), 0x175uLL);
  return a1;
}

uint64_t sub_CEBCA0(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_CEB8C4(a1 + 8);
    return a1;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    return a1;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 24);
  if (v4 != v3)
  {
    do
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 24));
      }

      v4 -= 32;
    }

    while (v4 != v3);
    v5 = *(a1 + 24);
  }

  *(a1 + 32) = v3;
  operator delete(v5);
  return a1;
}

void sub_CEBD3C(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      do
      {
        v15 = *v4;
        v16 = v4[8];
        if (v16)
        {
          do
          {
            v17 = *v16;
            operator delete(v16);
            v16 = v17;
          }

          while (v17);
        }

        v18 = v4[6];
        v4[6] = 0;
        if (v18)
        {
          operator delete(v18);
        }

        operator delete(v4);
        v4 = v15;
      }

      while (v15);
    }

    *(a1 + 16) = 0;
    v5 = *(a1 + 8);
    if (v5)
    {
      bzero(*a1, 8 * v5);
    }

    *(a1 + 24) = 0;
  }

  v6 = *a2;
  *a2 = 0;
  v7 = *a1;
  *a1 = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v10 = a2[2];
  v9 = a2 + 2;
  v8 = v10;
  v11 = *(v9 - 1);
  *(a1 + 16) = v10;
  *(a1 + 8) = v11;
  *(v9 - 1) = 0;
  v12 = v9[1];
  *(a1 + 24) = v12;
  *(a1 + 32) = *(v9 + 4);
  if (v12)
  {
    v13 = *(v8 + 8);
    v14 = *(a1 + 8);
    if ((v14 & (v14 - 1)) != 0)
    {
      if (v13 >= v14)
      {
        v13 %= v14;
      }
    }

    else
    {
      v13 &= v14 - 1;
    }

    *(*a1 + 8 * v13) = a1 + 16;
    *v9 = 0;
    v9[1] = 0;
  }
}

uint64_t sub_CEBE58(uint64_t a1)
{
  v2 = *(a1 + 5536);
  if (v2)
  {
    *(a1 + 5544) = v2;
    operator delete(v2);
  }

  sub_4547F0(a1 + 4984);
  sub_CDE540(a1 + 8);
  return a1;
}

uint64_t sub_CEBEA0(uint64_t a1)
{
  v2 = a1 + 61432;
  sub_1324F78(a1 + 61576);
  v3 = *(v2 + 112);
  if (v3)
  {
    v4 = *(v2 + 120);
    v5 = *(v2 + 112);
    if (v4 != v3)
    {
      do
      {
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 24));
        }

        v4 -= 32;
      }

      while (v4 != v3);
      v5 = *(v2 + 112);
    }

    *(v2 + 120) = v3;
    operator delete(v5);
  }

  v6 = *(v2 + 56);
  if (v6)
  {
    do
    {
      v7 = *v6;
      v8 = *(v6 + 12);
      if (v8 != -1)
      {
        (off_26732F0[v8])(&v17, v6 + 5);
      }

      *(v6 + 12) = -1;
      if (*(v6 + 39) < 0)
      {
        operator delete(v6[2]);
      }

      operator delete(v6);
      v6 = v7;
    }

    while (v7);
  }

  v9 = *(v2 + 40);
  *(v2 + 40) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = *(v2 + 16);
  if (v10)
  {
    do
    {
      v13 = *v10;
      v14 = v10[8];
      if (v14)
      {
        do
        {
          v15 = *v14;
          operator delete(v14);
          v14 = v15;
        }

        while (v15);
      }

      v16 = v10[6];
      v10[6] = 0;
      if (v16)
      {
        operator delete(v16);
      }

      operator delete(v10);
      v10 = v13;
    }

    while (v13);
  }

  v11 = *v2;
  *v2 = 0;
  if (v11)
  {
    operator delete(v11);
  }

  sub_CEC00C(a1 + 24);
  return a1;
}

uint64_t sub_CEC00C(uint64_t a1)
{
  v2 = a1 + 60352;
  v3 = *(a1 + 60648);
  if (v3)
  {
    v4 = *(a1 + 60656);
    v5 = v3;
    if (v4 != v3)
    {
      do
      {
        v4 = sub_1321980(v4 - 104);
      }

      while (v4 != v3);
      v5 = *(v2 + 296);
    }

    *(v2 + 304) = v3;
    operator delete(v5);
  }

  v6 = *(v2 + 272);
  if (v6)
  {
    do
    {
      v15 = *v6;
      v16 = v6[8];
      if (v16)
      {
        do
        {
          v17 = *v16;
          operator delete(v16);
          v16 = v17;
        }

        while (v17);
      }

      v18 = v6[6];
      v6[6] = 0;
      if (v18)
      {
        operator delete(v18);
      }

      operator delete(v6);
      v6 = v15;
    }

    while (v15);
  }

  v7 = *(v2 + 256);
  *(v2 + 256) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(v2 + 216);
  if (v8)
  {
    *(v2 + 224) = v8;
    operator delete(v8);
  }

  v9 = *(v2 + 184);
  if (v9)
  {
    do
    {
      v19 = *v9;
      v20 = v9[8];
      if (v20)
      {
        do
        {
          v21 = *v20;
          operator delete(v20);
          v20 = v21;
        }

        while (v21);
      }

      v22 = v9[6];
      v9[6] = 0;
      if (v22)
      {
        operator delete(v22);
      }

      operator delete(v9);
      v9 = v19;
    }

    while (v19);
  }

  v10 = *(v2 + 168);
  *(v2 + 168) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = *(v2 + 120);
  if (v11)
  {
    *(v2 + 128) = v11;
    operator delete(v11);
  }

  v12 = *(v2 + 16);
  if (v12)
  {
    do
    {
      v23 = *v12;
      v24 = v12[8];
      if (v24)
      {
        do
        {
          v25 = *v24;
          operator delete(v24);
          v24 = v25;
        }

        while (v25);
      }

      v26 = v12[6];
      v12[6] = 0;
      if (v26)
      {
        operator delete(v26);
      }

      operator delete(v12);
      v12 = v23;
    }

    while (v23);
  }

  v13 = *v2;
  *v2 = 0;
  if (v13)
  {
    operator delete(v13);
  }

  sub_360B9C((a1 + 52520));
  sub_CDE540(a1 + 47568);
  sub_CDE540(a1 + 42568);
  if (*(a1 + 42536) == 1)
  {
    sub_3E3DF0((a1 + 37224));
  }

  if (*(a1 + 37120) == 1)
  {
    sub_3E3DF0((a1 + 31808));
  }

  sub_CEC20C(a1 + 56);
  return a1;
}

uint64_t sub_CEC20C(uint64_t a1)
{
  v2 = *(a1 + 31664);
  if (v2)
  {
    free(v2);
  }

  v3 = *(a1 + 31408);
  if (v3)
  {
    free(v3);
  }

  sub_CEC30C(a1 + 20648);
  if (*(a1 + 20592) == 1)
  {
    sub_3E3DF0((a1 + 15280));
    if (*(a1 + 15120) != 1)
    {
LABEL_7:
      if (*(a1 + 9704) != 1)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  else if (*(a1 + 15120) != 1)
  {
    goto LABEL_7;
  }

  sub_3E3DF0((a1 + 9808));
  if (*(a1 + 9704) != 1)
  {
LABEL_8:
    v4 = *(a1 + 4280);
    if (!v4)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_17:
  sub_3E3DF0((a1 + 4392));
  v4 = *(a1 + 4280);
  if (v4)
  {
LABEL_9:
    *(a1 + 4288) = v4;
    operator delete(v4);
  }

LABEL_10:
  v5 = *(a1 + 4256);
  if (v5)
  {
    *(a1 + 4264) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 4232);
  if (v6)
  {
    *(a1 + 4240) = v6;
    operator delete(v6);
  }

  sub_3E3EF8((a1 + 16));
  return a1;
}

uint64_t sub_CEC30C(uint64_t a1)
{
  v2 = *(a1 + 10648);
  if (v2)
  {
    *(a1 + 10656) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 10624);
  if (v3)
  {
    *(a1 + 10632) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 10592);
  if (v4)
  {
    *(a1 + 10600) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 10568);
  if (v5)
  {
    *(a1 + 10576) = v5;
    operator delete(v5);
  }

  sub_360988(a1 + 9800);
  if (*(a1 + 9728) == 1)
  {
    sub_3E3DF0((a1 + 4416));
  }

  v6 = *(a1 + 4296);
  if (v6)
  {
    *(a1 + 4304) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 4272);
  if (v7)
  {
    *(a1 + 4280) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 4248);
  if (v8)
  {
    *(a1 + 4256) = v8;
    operator delete(v8);
  }

  sub_3E3EF8((a1 + 32));
  return a1;
}

__n128 sub_CEC3D0(uint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v190 = (a2 - 56);
  v191 = (a2 - 24);
  v189 = (a2 - 88);
  v8 = a1;
  while (1)
  {
    a1 = v8;
    v9 = (a2 - v8) >> 5;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:
          v122 = *(v8 + 32);
          v123 = *v8;
          v124 = *(a2 - 32);
          if (v122 < *v8)
          {
            if (v124 < v122)
            {
              *v8 = v124;
              *(a2 - 32) = v123;
              v245 = *(v8 + 24);
              v218 = *(v8 + 8);
              v121 = *(a2 - 24);
              *(v8 + 24) = *(a2 - 8);
              goto LABEL_120;
            }

            *v8 = v122;
            v223 = *(v8 + 8);
            v246 = *(v8 + 24);
            *(v8 + 24) = *(v8 + 56);
            *(v8 + 32) = v123;
            *(v8 + 8) = *(v8 + 40);
            result = v223;
            *(v8 + 40) = v223;
            *(v8 + 56) = v246;
            v187 = *(a2 - 32);
            if (v187 >= v123)
            {
              return result;
            }

            *(v8 + 32) = v187;
            *(a2 - 32) = v123;
            result = *(v8 + 40);
            v125 = *(v8 + 56);
            v188 = *(a2 - 8);
            *(v8 + 40) = *(a2 - 24);
            *(v8 + 56) = v188;
LABEL_121:
            *(a2 - 8) = v125;
            *(a2 - 24) = result;
            return result;
          }

          if (v124 >= v122)
          {
            return result;
          }

          *(v8 + 32) = v124;
          *(a2 - 32) = v122;
          result = *(v8 + 40);
          v176 = *(v8 + 56);
          v177 = *(a2 - 8);
          *(v8 + 40) = *(a2 - 24);
          *(v8 + 56) = v177;
          *(a2 - 8) = v176;
          *(a2 - 24) = result;
          v178 = *(v8 + 32);
          v179 = *v8;
          if (v178 >= *v8)
          {
            return result;
          }

          *v8 = v178;
          v217 = *(v8 + 8);
          v244 = *(v8 + 24);
          *(v8 + 24) = *(v8 + 56);
          *(v8 + 32) = v179;
LABEL_194:
          *(v8 + 8) = *(v8 + 40);
          result = v217;
          *(v8 + 40) = v217;
          *(v8 + 56) = v244;
          return result;
        case 4:

          result.n128_u64[0] = sub_CED6E8(v8, (v8 + 32), (v8 + 64), (a2 - 32), result).n128_u64[0];
          return result;
        case 5:
          result.n128_u64[0] = sub_CED6E8(v8, (v8 + 32), (v8 + 64), (v8 + 96), result).n128_u64[0];
          v109 = *(a2 - 32);
          v110 = *(v8 + 96);
          if (v109 >= v110)
          {
            return result;
          }

          *(v8 + 96) = v109;
          *(a2 - 32) = v110;
          result = *(v8 + 104);
          v111 = *(v8 + 120);
          v112 = *(a2 - 8);
          *(v8 + 104) = *(a2 - 24);
          *(v8 + 120) = v112;
          *(a2 - 8) = v111;
          *(a2 - 24) = result;
          v113 = *(v8 + 96);
          v114 = *(v8 + 64);
          if (v113 >= v114)
          {
            return result;
          }

          *(v8 + 64) = v113;
          v115 = *(v8 + 88);
          result = *(v8 + 72);
          *(v8 + 72) = *(v8 + 104);
          *(v8 + 88) = *(v8 + 120);
          *(v8 + 96) = v114;
          *(v8 + 104) = result;
          *(v8 + 120) = v115;
          v116 = *(v8 + 32);
          if (v113 >= v116)
          {
            return result;
          }

          *(v8 + 32) = v113;
          v117 = *(v8 + 56);
          result = *(v8 + 40);
          *(v8 + 40) = *(v8 + 72);
          *(v8 + 56) = *(v8 + 88);
          *(v8 + 64) = v116;
          *(v8 + 72) = result;
          *(v8 + 88) = v117;
          v118 = *v8;
          if (v113 >= *v8)
          {
            return result;
          }

          *v8 = v113;
          v217 = *(v8 + 8);
          v244 = *(v8 + 24);
          *(v8 + 24) = *(v8 + 56);
          *(v8 + 32) = v118;
          goto LABEL_194;
      }
    }

    else
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v119 = *(a2 - 32);
        v120 = *v8;
        if (v119 >= *v8)
        {
          return result;
        }

        *v8 = v119;
        *(a2 - 32) = v120;
        v245 = *(v8 + 24);
        v218 = *(v8 + 8);
        v121 = *(a2 - 24);
        *(v8 + 24) = *(a2 - 8);
LABEL_120:
        *(v8 + 8) = v121;
        result = v218;
        v125 = v245;
        goto LABEL_121;
      }
    }

    if (v9 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return result;
      }

      v140 = (v9 - 2) >> 1;
      v141 = v140;
      while (1)
      {
        if (v140 >= v141)
        {
          v142 = (2 * (v141 & 0x7FFFFFFFFFFFFFFLL)) | 1;
          v143 = v8 + 32 * v142;
          if (2 * (v141 & 0x7FFFFFFFFFFFFFFLL) + 2 >= v9)
          {
            v145 = *v143;
            v146 = v8 + 32 * v141;
            v147 = *v146;
            if (*v143 >= *v146)
            {
              goto LABEL_162;
            }
          }

          else
          {
            v144 = *(v143 + 32);
            if (*v143 <= v144)
            {
              v145 = *(v143 + 32);
            }

            else
            {
              v145 = *v143;
            }

            if (*v143 < v144)
            {
              v143 += 32;
              v142 = 2 * (v141 & 0x7FFFFFFFFFFFFFFLL) + 2;
            }

            v146 = v8 + 32 * v141;
            v147 = *v146;
            if (v145 >= *v146)
            {
LABEL_162:
              v148 = *(v146 + 8);
              *&v220[7] = *(v146 + 23);
              *v220 = *(v146 + 16);
              v149 = *(v146 + 31);
              *(v146 + 8) = 0;
              *(v146 + 16) = 0;
              *(v146 + 24) = 0;
              while (1)
              {
                v151 = v146;
                v146 = v143;
                *v151 = v145;
                v152 = *(v143 + 8);
                *(v151 + 24) = *(v143 + 24);
                *(v151 + 8) = v152;
                *(v143 + 31) = 0;
                *(v143 + 8) = 0;
                if (v140 < v142)
                {
                  break;
                }

                v153 = (2 * v142) | 1;
                v143 = v8 + 32 * v153;
                v142 = 2 * v142 + 2;
                if (v142 < v9)
                {
                  v145 = *v143;
                  v150 = *(v143 + 32);
                  if (*v143 <= v150)
                  {
                    v145 = *(v143 + 32);
                  }

                  if (*v143 >= v150)
                  {
                    v142 = v153;
                  }

                  else
                  {
                    v143 += 32;
                  }

                  if (v145 < v147)
                  {
                    break;
                  }
                }

                else
                {
                  v145 = *v143;
                  v142 = v153;
                  if (*v143 < v147)
                  {
                    break;
                  }
                }
              }

              *v146 = v147;
              *(v146 + 8) = v148;
              *(v146 + 16) = *v220;
              *(v146 + 23) = *&v220[7];
              *(v146 + 31) = v149;
            }
          }
        }

        v163 = v141-- <= 0;
        if (v163)
        {
          do
          {
            v154 = 0;
            v155 = *v8;
            v156 = *(v8 + 8);
            *&v196[7] = *(v8 + 23);
            *v196 = *(v8 + 16);
            v157 = *(v8 + 31);
            *(v8 + 16) = 0;
            *(v8 + 24) = 0;
            *(v8 + 8) = 0;
            v158 = v8;
            do
            {
              v165 = v158 + 32 * v154;
              v164 = v165 + 32;
              v166 = (2 * v154) | 1;
              v154 = 2 * v154 + 2;
              if (v154 < v9)
              {
                v161 = *(v165 + 64);
                v159 = v165 + 64;
                v160 = v161;
                v162 = *(v159 - 32);
                v163 = v162 < v161;
                if (v162 > v161)
                {
                  v160 = *(v159 - 32);
                }

                if (v163)
                {
                  v164 = v159;
                }

                else
                {
                  v154 = v166;
                }
              }

              else
              {
                v160 = *v164;
                v154 = v166;
              }

              *v158 = v160;
              result = *(v164 + 8);
              *(v158 + 24) = *(v164 + 24);
              *(v158 + 8) = result;
              *(v164 + 31) = 0;
              *(v164 + 8) = 0;
              v158 = v164;
            }

            while (v154 <= ((v9 - 2) >> 1));
            if (v164 == a2 - 32)
            {
              *v164 = v155;
              *(v164 + 8) = v156;
              *(v164 + 16) = *v196;
              *(v164 + 23) = *&v196[7];
              *(v164 + 31) = v157;
            }

            else
            {
              *v164 = *(a2 - 32);
              result = *(a2 - 24);
              *(v164 + 24) = *(a2 - 8);
              *(v164 + 8) = result;
              *(a2 - 32) = v155;
              *(a2 - 24) = v156;
              *(a2 - 9) = *&v196[7];
              *(a2 - 16) = *v196;
              *(a2 - 1) = v157;
              v167 = (v164 - v8 + 32) >> 5;
              v163 = v167 < 2;
              v168 = v167 - 2;
              if (!v163)
              {
                v169 = v168 >> 1;
                v170 = v8 + 32 * v169;
                v171 = *v164;
                if (*v170 < *v164)
                {
                  v172 = *(v164 + 8);
                  *&v221[7] = *(v164 + 23);
                  *v221 = *(v164 + 16);
                  v173 = *(v164 + 31);
                  *(v164 + 16) = 0;
                  *(v164 + 24) = 0;
                  *(v164 + 8) = 0;
                  v174 = *v170;
                  do
                  {
                    v175 = v164;
                    v164 = v170;
                    *v175 = v174;
                    result = *(v170 + 8);
                    *(v175 + 24) = *(v170 + 24);
                    *(v175 + 8) = result;
                    *(v170 + 31) = 0;
                    *(v170 + 8) = 0;
                    if (!v169)
                    {
                      break;
                    }

                    v169 = (v169 - 1) >> 1;
                    v170 = v8 + 32 * v169;
                    v174 = *v170;
                  }

                  while (*v170 < v171);
                  *v164 = v171;
                  *(v164 + 8) = v172;
                  *(v164 + 16) = *v221;
                  *(v164 + 23) = *&v221[7];
                  *(v164 + 31) = v173;
                }
              }
            }

            a2 -= 32;
            v163 = v9-- <= 2;
          }

          while (!v163);
          return result;
        }
      }
    }

    v10 = v8 + 32 * (v9 >> 1);
    v11 = *(a2 - 32);
    if (v9 < 0x81)
    {
      v16 = *v8;
      v17 = *v10;
      if (*v8 >= *v10)
      {
        if (v11 >= v16)
        {
          goto LABEL_37;
        }

        *v8 = v11;
        *(a2 - 32) = v16;
        v228 = *(v8 + 24);
        v201 = *(v8 + 8);
        v23 = *v191;
        *(v8 + 24) = *(a2 - 8);
        *(v8 + 8) = v23;
        result = v201;
        *(a2 - 8) = v228;
        *v191 = v201;
        v24 = *v10;
        if (*v8 >= *v10)
        {
          goto LABEL_37;
        }

        *v10 = *v8;
        *v8 = v24;
        v229 = *(v10 + 24);
        v202 = *(v10 + 8);
        v25 = *(v8 + 8);
        *(v10 + 24) = *(v8 + 24);
        *(v10 + 8) = v25;
        result = v202;
        *(v8 + 24) = v229;
        *(v8 + 8) = v202;
        --a3;
        v19 = *v8;
        if (a4)
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (v11 >= v16)
        {
          *v10 = v16;
          *v8 = v17;
          v232 = *(v10 + 24);
          v205 = *(v10 + 8);
          v42 = *(v8 + 8);
          *(v10 + 24) = *(v8 + 24);
          *(v10 + 8) = v42;
          result = v205;
          *(v8 + 24) = v232;
          *(v8 + 8) = v205;
          v43 = *(a2 - 32);
          v44 = *v8;
          if (v43 < *v8)
          {
            *v8 = v43;
            *(a2 - 32) = v44;
            v233 = *(v8 + 24);
            v206 = *(v8 + 8);
            v45 = *v191;
            *(v8 + 24) = *(a2 - 8);
            *(v8 + 8) = v45;
            result = v206;
            *(a2 - 8) = v233;
            *v191 = v206;
          }

LABEL_37:
          --a3;
          v19 = *v8;
          if (a4)
          {
            goto LABEL_60;
          }

          goto LABEL_59;
        }

        *v10 = v11;
        *(a2 - 32) = v17;
        v225 = *(v10 + 24);
        v198 = *(v10 + 8);
        v18 = *v191;
        *(v10 + 24) = *(a2 - 8);
        *(v10 + 8) = v18;
        result = v198;
        *(a2 - 8) = v225;
        *v191 = v198;
        --a3;
        v19 = *v8;
        if (a4)
        {
          goto LABEL_60;
        }
      }

LABEL_59:
      if (*(v8 - 32) < v19)
      {
        goto LABEL_60;
      }

      v96 = (v8 + 8);
      v97 = *(v8 + 8);
      *&v195[7] = *(v8 + 23);
      *v195 = *(v8 + 16);
      v98 = *(v8 + 31);
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      *(v8 + 8) = 0;
      if (v19 >= *(a2 - 32))
      {
        v100 = v8 + 32;
        do
        {
          v8 = v100;
          if (v100 >= a2)
          {
            break;
          }

          v100 += 32;
        }

        while (v19 >= *v8);
      }

      else
      {
        do
        {
          v99 = *(v8 + 32);
          v8 += 32;
        }

        while (v19 >= v99);
      }

      v101 = a2;
      if (v8 < a2)
      {
        v101 = a2;
        do
        {
          v102 = *(v101 - 32);
          v101 -= 32;
        }

        while (v19 < v102);
      }

      if (v8 < v101)
      {
        v103 = *v8;
        v104 = *v101;
        do
        {
          *v8 = v104;
          *v101 = v103;
          v243 = *(v8 + 24);
          v216 = *(v8 + 8);
          v105 = *(v101 + 8);
          *(v8 + 24) = *(v101 + 24);
          *(v8 + 8) = v105;
          result = v216;
          *(v101 + 24) = v243;
          *(v101 + 8) = v216;
          do
          {
            v106 = *(v8 + 32);
            v8 += 32;
            v103 = v106;
          }

          while (v19 >= v106);
          do
          {
            v107 = *(v101 - 32);
            v101 -= 32;
            v104 = v107;
          }

          while (v19 < v107);
        }

        while (v8 < v101);
      }

      if (v8 - 32 == a1)
      {
        v108 = *(v8 - 1);
        *(v8 - 32) = v19;
        if (v108 < 0)
        {
          operator delete(*(v8 - 24));
        }
      }

      else
      {
        *a1 = *(v8 - 32);
        if (*(a1 + 31) < 0)
        {
          operator delete(*v96);
        }

        result = *(v8 - 24);
        *(a1 + 24) = *(v8 - 8);
        *v96 = result;
        *(v8 - 1) = 0;
        *(v8 - 32) = v19;
      }

      a4 = 0;
      *(v8 - 24) = v97;
      *(v8 - 9) = *&v195[7];
      *(v8 - 16) = *v195;
      *(v8 - 1) = v98;
    }

    else
    {
      v12 = *v10;
      v13 = *v8;
      if (*v10 >= *v8)
      {
        if (v11 < v12)
        {
          *v10 = v11;
          *(a2 - 32) = v12;
          v226 = *(v10 + 24);
          v199 = *(v10 + 8);
          v20 = *v191;
          *(v10 + 24) = *(a2 - 8);
          *(v10 + 8) = v20;
          *(a2 - 8) = v226;
          *v191 = v199;
          v21 = *v8;
          if (*v10 < *v8)
          {
            *v8 = *v10;
            *v10 = v21;
            v227 = *(v8 + 24);
            v200 = *(v8 + 8);
            v22 = *(v10 + 8);
            *(v8 + 24) = *(v10 + 24);
            *(v8 + 8) = v22;
            *(v10 + 24) = v227;
            *(v10 + 8) = v200;
          }
        }
      }

      else
      {
        if (v11 >= v12)
        {
          *v8 = v12;
          *v10 = v13;
          v230 = *(v8 + 24);
          v203 = *(v8 + 8);
          v26 = *(v10 + 8);
          *(v8 + 24) = *(v10 + 24);
          *(v8 + 8) = v26;
          *(v10 + 24) = v230;
          *(v10 + 8) = v203;
          v27 = *(a2 - 32);
          v28 = *v10;
          if (v27 >= *v10)
          {
            goto LABEL_29;
          }

          *v10 = v27;
          *(a2 - 32) = v28;
          v224 = *(v10 + 24);
          v197 = *(v10 + 8);
          v14 = a2 - 24;
          v29 = *v191;
          *(v10 + 24) = *(a2 - 8);
          *(v10 + 8) = v29;
        }

        else
        {
          *v8 = v11;
          *(a2 - 32) = v13;
          v224 = *(v8 + 24);
          v197 = *(v8 + 8);
          v14 = a2 - 24;
          v15 = *v191;
          *(v8 + 24) = *(a2 - 8);
          *(v8 + 8) = v15;
        }

        *(v14 + 16) = v224;
        *v14 = v197;
      }

LABEL_29:
      v30 = (v10 - 32);
      v31 = *(v10 - 32);
      v32 = *(v8 + 32);
      v33 = *(a2 - 64);
      if (v31 >= v32)
      {
        if (v33 < v31)
        {
          *v30 = v33;
          *(a2 - 64) = v31;
          v231 = *(v10 - 8);
          v204 = *(v10 - 24);
          v37 = *v190;
          *(v10 - 8) = *(a2 - 40);
          *(v10 - 24) = v37;
          *(a2 - 40) = v231;
          *v190 = v204;
          v38 = *(v8 + 32);
          if (*v30 < v38)
          {
            *(v8 + 32) = *v30;
            *v30 = v38;
            v39 = *(v8 + 40);
            v40 = *(v8 + 56);
            v41 = *(v10 - 8);
            *(v8 + 40) = *(v10 - 24);
            *(v8 + 56) = v41;
            *(v10 - 8) = v40;
            *(v10 - 24) = v39;
          }
        }
      }

      else if (v33 >= v31)
      {
        *(v8 + 32) = v31;
        *v30 = v32;
        v46 = *(v8 + 40);
        v47 = *(v8 + 56);
        v48 = *(v10 - 8);
        *(v8 + 40) = *(v10 - 24);
        *(v8 + 56) = v48;
        *(v10 - 8) = v47;
        *(v10 - 24) = v46;
        v49 = *(a2 - 64);
        v50 = *v30;
        if (v49 < *v30)
        {
          *v30 = v49;
          *(a2 - 64) = v50;
          v234 = *(v10 - 8);
          v207 = *(v10 - 24);
          v51 = *v190;
          *(v10 - 8) = *(a2 - 40);
          *(v10 - 24) = v51;
          *(a2 - 40) = v234;
          *v190 = v207;
        }
      }

      else
      {
        *(v8 + 32) = v33;
        *(a2 - 64) = v32;
        v34 = *(v8 + 40);
        v35 = *(v8 + 56);
        v36 = *(a2 - 40);
        *(v8 + 40) = *v190;
        *(v8 + 56) = v36;
        *(a2 - 40) = v35;
        *v190 = v34;
      }

      v52 = (v10 + 32);
      v53 = *(v10 + 32);
      v54 = *(v8 + 64);
      v55 = *(a2 - 96);
      if (v53 >= v54)
      {
        if (v55 < v53)
        {
          *v52 = v55;
          *(a2 - 96) = v53;
          v235 = *(v10 + 56);
          v208 = *(v10 + 40);
          v59 = *v189;
          *(v10 + 56) = *(a2 - 72);
          *(v10 + 40) = v59;
          *(a2 - 72) = v235;
          *v189 = v208;
          v60 = *(v8 + 64);
          if (*v52 < v60)
          {
            *(v8 + 64) = *v52;
            *v52 = v60;
            v61 = *(v8 + 72);
            v62 = *(v8 + 88);
            v63 = *(v10 + 56);
            *(v8 + 72) = *(v10 + 40);
            *(v8 + 88) = v63;
            *(v10 + 56) = v62;
            *(v10 + 40) = v61;
          }
        }
      }

      else if (v55 >= v53)
      {
        *(v8 + 64) = v53;
        *v52 = v54;
        v64 = *(v8 + 72);
        v65 = *(v8 + 88);
        v66 = *(v10 + 56);
        *(v8 + 72) = *(v10 + 40);
        *(v8 + 88) = v66;
        *(v10 + 56) = v65;
        *(v10 + 40) = v64;
        v67 = *(a2 - 96);
        v68 = *v52;
        if (v67 < *v52)
        {
          *v52 = v67;
          *(a2 - 96) = v68;
          v236 = *(v10 + 56);
          v209 = *(v10 + 40);
          v69 = *v189;
          *(v10 + 56) = *(a2 - 72);
          *(v10 + 40) = v69;
          *(a2 - 72) = v236;
          *v189 = v209;
        }
      }

      else
      {
        *(v8 + 64) = v55;
        *(a2 - 96) = v54;
        v56 = *(v8 + 72);
        v57 = *(v8 + 88);
        v58 = *(a2 - 72);
        *(v8 + 72) = *v189;
        *(v8 + 88) = v58;
        *(a2 - 72) = v57;
        *v189 = v56;
      }

      v70 = *v10;
      v71 = *v30;
      v72 = *v52;
      if (*v10 >= *v30)
      {
        if (v72 < v70)
        {
          *v10 = v72;
          *v52 = v70;
          v238 = *(v10 + 24);
          v211 = *(v10 + 8);
          *(v10 + 8) = *(v10 + 40);
          *(v10 + 24) = *(v10 + 56);
          *(v10 + 56) = v238;
          *(v10 + 40) = v211;
          v73 = *v30;
          if (*v10 < *v30)
          {
            *v30 = *v10;
            *v10 = v73;
            v239 = *(v10 - 8);
            v212 = *(v10 - 24);
            *(v10 - 24) = *(v10 + 8);
            *(v10 - 8) = *(v10 + 24);
            *(v10 + 24) = v239;
            *(v10 + 8) = v212;
          }
        }
      }

      else
      {
        if (v72 >= v70)
        {
          *v30 = v70;
          *v10 = v71;
          v240 = *(v10 - 8);
          v213 = *(v10 - 24);
          *(v10 - 24) = *(v10 + 8);
          *(v10 - 8) = *(v10 + 24);
          *(v10 + 24) = v240;
          *(v10 + 8) = v213;
          v74 = *v10;
          if (*v52 >= *v10)
          {
            goto LABEL_58;
          }

          *v10 = *v52;
          *v52 = v74;
          v237 = *(v10 + 24);
          v210 = *(v10 + 8);
          *(v10 + 8) = *(v10 + 40);
          *(v10 + 24) = *(v10 + 56);
        }

        else
        {
          *v30 = v72;
          *v52 = v71;
          v237 = *(v10 - 8);
          v210 = *(v10 - 24);
          *(v10 - 24) = *(v10 + 40);
          *(v10 - 8) = *(v10 + 56);
        }

        *(v10 + 56) = v237;
        *(v10 + 40) = v210;
      }

LABEL_58:
      v75 = *v8;
      *v8 = *v10;
      *v10 = v75;
      v241 = *(v8 + 24);
      v214 = *(v8 + 8);
      v76 = *(v10 + 8);
      *(v8 + 24) = *(v10 + 24);
      *(v8 + 8) = v76;
      result = v214;
      *(v10 + 24) = v241;
      *(v10 + 8) = v214;
      --a3;
      v19 = *v8;
      if ((a4 & 1) == 0)
      {
        goto LABEL_59;
      }

LABEL_60:
      v193 = a3;
      v77 = 0;
      v78 = (v8 + 8);
      v79 = *(v8 + 8);
      *&v194[7] = *(v8 + 23);
      *v194 = *(v8 + 16);
      v80 = *(v8 + 31);
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      *(v8 + 8) = 0;
      do
      {
        v81 = *(v8 + v77 + 32);
        v77 += 32;
      }

      while (v81 < v19);
      v82 = v8 + v77;
      v83 = a2;
      if (v77 == 32)
      {
        v83 = a2;
        do
        {
          if (v82 >= v83)
          {
            break;
          }

          v85 = *(v83 - 4);
          v83 -= 4;
        }

        while (v85 >= v19);
      }

      else
      {
        do
        {
          v84 = *(v83 - 4);
          v83 -= 4;
        }

        while (v84 >= v19);
      }

      if (v82 >= v83)
      {
        v8 += v77;
        v91 = (v82 - 32);
        if (v82 - 32 != a1)
        {
          goto LABEL_75;
        }
      }

      else
      {
        v86 = *v83;
        v8 += v77;
        v87 = v83;
        do
        {
          *v8 = v86;
          *v87 = v81;
          v242 = *(v8 + 24);
          v215 = *(v8 + 8);
          v88 = *(v87 + 1);
          *(v8 + 24) = v87[3];
          *(v8 + 8) = v88;
          result = v215;
          v87[3] = v242;
          *(v87 + 1) = v215;
          do
          {
            v89 = *(v8 + 32);
            v8 += 32;
            v81 = v89;
          }

          while (v89 < v19);
          do
          {
            v90 = *(v87 - 4);
            v87 -= 4;
            v86 = v90;
          }

          while (v90 >= v19);
        }

        while (v8 < v87);
        v91 = (v8 - 32);
        if (v8 - 32 != a1)
        {
LABEL_75:
          *a1 = *v91;
          if (*(a1 + 31) < 0)
          {
            operator delete(*v78);
          }

          result = *(v8 - 24);
          *(a1 + 24) = *(v8 - 8);
          *v78 = result;
          *(v8 - 1) = 0;
          *(v8 - 32) = v19;
          goto LABEL_81;
        }
      }

      v92 = *(v8 - 1);
      *(v8 - 32) = v19;
      if (v92 < 0)
      {
        operator delete(*(v8 - 24));
      }

LABEL_81:
      *(v8 - 24) = v79;
      *(v8 - 9) = *&v194[7];
      *(v8 - 16) = *v194;
      *(v8 - 1) = v80;
      v93 = v82 >= v83;
      a3 = v193;
      if (v93)
      {
        v94 = sub_CED8B0(a1, v91, result);
        if (sub_CED8B0(v8, a2, v95))
        {
          a2 = v91;
          if (v94)
          {
            return result;
          }

          goto LABEL_1;
        }

        if (!v94)
        {
          goto LABEL_85;
        }
      }

      else
      {
LABEL_85:
        sub_CEC3D0(a1, v91, v193, a4 & 1);
        a4 = 0;
      }
    }
  }

  v126 = v8 + 32;
  v128 = v8 == a2 || v126 == a2;
  if (a4)
  {
    if (v128)
    {
      return result;
    }

    v129 = 0;
    v130 = v8;
    while (1)
    {
      v131 = v126;
      v132 = *(v130 + 32);
      if (v132 < *v130)
      {
        *&v219[7] = *(v130 + 55);
        v133 = *(v130 + 40);
        *v219 = *(v130 + 48);
        v134 = *(v130 + 63);
        *(v130 + 48) = 0;
        *(v130 + 56) = 0;
        *(v130 + 40) = 0;
        v135 = *(v131 + 31);
        *v131 = *v130;
        if (v135 < 0)
        {
          operator delete(*(v131 + 8));
        }

        v136 = (v130 + 8);
        result = *(v130 + 8);
        *(v131 + 8) = result;
        *(v131 + 24) = *(v130 + 24);
        *(v130 + 31) = 0;
        *(v130 + 8) = 0;
        if (v130 == a1)
        {
          v130 = a1;
        }

        else
        {
          v137 = *(v130 - 32);
          if (v132 < v137)
          {
            v138 = v129;
            while (1)
            {
              v139 = a1 + v138;
              *v139 = v137;
              result = *(a1 + v138 - 24);
              *(v139 + 8) = result;
              *(v139 + 24) = *(a1 + v138 - 8);
              *(v139 - 1) = 0;
              *(v139 - 24) = 0;
              v138 -= 32;
              if (!v138)
              {
                break;
              }

              v137 = *(v139 - 64);
              if (v132 >= v137)
              {
                v130 = a1 + v138;
                goto LABEL_147;
              }
            }

            v130 = a1;
LABEL_147:
            v136 = (v139 - 24);
          }
        }

        *v130 = v132;
        *v136 = v133;
        *(v130 + 16) = *v219;
        *(v130 + 23) = *&v219[7];
        *(v130 + 31) = v134;
      }

      v126 = v131 + 32;
      v129 += 32;
      v130 = v131;
      if (v131 + 32 == a2)
      {
        return result;
      }
    }
  }

  if (!v128)
  {
    do
    {
      v182 = *v126;
      if (*v126 < *a1)
      {
        *&v222[7] = *(a1 + 55);
        v183 = *(a1 + 40);
        *v222 = *(a1 + 48);
        v184 = *(a1 + 63);
        *(a1 + 48) = 0;
        *(a1 + 56) = 0;
        *(a1 + 40) = 0;
        v185 = *(v126 + 31);
        *v126 = *a1;
        if (v185 < 0)
        {
          operator delete(*(v126 + 8));
        }

        result = *(a1 + 8);
        *(v126 + 8) = result;
        *(v126 + 24) = *(a1 + 24);
        *(a1 + 31) = 0;
        *(a1 + 8) = 0;
        v186 = *(a1 - 32);
        if (v182 >= v186)
        {
          v180 = (a1 + 8);
          v181 = a1;
        }

        else
        {
          v181 = a1;
          do
          {
            *v181 = v186;
            result = *(v181 - 24);
            *(v181 + 8) = result;
            *(v181 + 24) = *(v181 - 8);
            *(v181 - 1) = 0;
            *(v181 - 24) = 0;
            v186 = *(v181 - 64);
            v181 -= 32;
          }

          while (v182 < v186);
          v180 = (v181 + 8);
        }

        *v181 = v182;
        *v180 = v183;
        *(v181 + 16) = *v222;
        *(v181 + 23) = *&v222[7];
        *(v181 + 31) = v184;
      }

      v126 += 32;
      a1 += 32;
    }

    while (v126 != a2);
  }

  return result;
}

__n128 sub_CED6E8(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, __n128 result)
{
  v5 = *a2;
  v6 = *a1;
  v7 = *a3;
  if (*a2 >= *a1)
  {
    if (v7 < v5)
    {
      *a2 = v7;
      *a3 = v5;
      v10 = a2[3];
      result = *(a2 + 1);
      v11 = a3[3];
      *(a2 + 1) = *(a3 + 1);
      a2[3] = v11;
      *(a3 + 1) = result;
      a3[3] = v10;
      v12 = *a1;
      if (*a2 < *a1)
      {
        *a1 = *a2;
        *a2 = v12;
        v13 = a1[3];
        result = *(a1 + 1);
        v14 = a2[3];
        *(a1 + 1) = *(a2 + 1);
        a1[3] = v14;
        *(a2 + 1) = result;
        a2[3] = v13;
      }
    }
  }

  else
  {
    if (v7 < v5)
    {
      *a1 = v7;
      *a3 = v6;
      v8 = a1[3];
      result = *(a1 + 1);
      v9 = a3[3];
      *(a1 + 1) = *(a3 + 1);
      a1[3] = v9;
LABEL_9:
      *(a3 + 1) = result;
      a3[3] = v8;
      goto LABEL_10;
    }

    *a1 = v5;
    *a2 = v6;
    v15 = a1[3];
    result = *(a1 + 1);
    v16 = a2[3];
    *(a1 + 1) = *(a2 + 1);
    a1[3] = v16;
    *(a2 + 1) = result;
    a2[3] = v15;
    v17 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      *a3 = v17;
      v8 = a2[3];
      result = *(a2 + 1);
      v18 = a3[3];
      *(a2 + 1) = *(a3 + 1);
      a2[3] = v18;
      goto LABEL_9;
    }
  }

LABEL_10:
  v19 = *a3;
  if (*a4 < *a3)
  {
    *a3 = *a4;
    *a4 = v19;
    v20 = a3[3];
    result = *(a3 + 1);
    v21 = a4[3];
    *(a3 + 1) = *(a4 + 1);
    a3[3] = v21;
    *(a4 + 1) = result;
    a4[3] = v20;
    v22 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      *a3 = v22;
      v23 = a2[3];
      result = *(a2 + 1);
      v24 = a3[3];
      *(a2 + 1) = *(a3 + 1);
      a2[3] = v24;
      *(a3 + 1) = result;
      a3[3] = v23;
      v25 = *a1;
      if (*a2 < *a1)
      {
        *a1 = *a2;
        *a2 = v25;
        v26 = a1[3];
        result = *(a1 + 1);
        v27 = a2[3];
        *(a1 + 1) = *(a2 + 1);
        a1[3] = v27;
        *(a2 + 1) = result;
        a2[3] = v26;
      }
    }
  }

  return result;
}

BOOL sub_CED8B0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = (a2 - a1) >> 5;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v26 = *(a1 + 32);
        v27 = *a1;
        v28 = *(a2 - 32);
        if (v26 >= *a1)
        {
          if (v28 < v26)
          {
            *(a1 + 32) = v28;
            *(a2 - 32) = v26;
            v36 = *(a1 + 56);
            v37 = *(a1 + 40);
            v38 = *(a2 - 8);
            *(a1 + 40) = *(a2 - 24);
            *(a1 + 56) = v38;
            *(a2 - 24) = v37;
            *(a2 - 8) = v36;
            v39 = *(a1 + 32);
            v40 = *a1;
            if (v39 < *a1)
            {
              *a1 = v39;
              v41 = *(a1 + 24);
              v42 = *(a1 + 8);
              *(a1 + 8) = *(a1 + 40);
              *(a1 + 24) = *(a1 + 56);
              *(a1 + 32) = v40;
              *(a1 + 40) = v42;
              *(a1 + 56) = v41;
            }
          }

          return 1;
        }

        if (v28 < v26)
        {
          *a1 = v28;
          *(a2 - 32) = v27;
          v6 = *(a1 + 24);
          v7 = *(a1 + 8);
          v29 = *(a2 - 8);
          *(a1 + 8) = *(a2 - 24);
          *(a1 + 24) = v29;
          goto LABEL_29;
        }

        *a1 = v26;
        v47 = *(a1 + 24);
        v48 = *(a1 + 8);
        *(a1 + 8) = *(a1 + 40);
        *(a1 + 24) = *(a1 + 56);
        *(a1 + 32) = v27;
        *(a1 + 40) = v48;
        *(a1 + 56) = v47;
        v49 = *(a2 - 32);
        if (v49 < v27)
        {
          *(a1 + 32) = v49;
          *(a2 - 32) = v27;
          v6 = *(a1 + 56);
          v7 = *(a1 + 40);
          v50 = *(a2 - 8);
          *(a1 + 40) = *(a2 - 24);
          *(a1 + 56) = v50;
          goto LABEL_29;
        }

        return 1;
      case 4:
        sub_CED6E8(a1, (a1 + 32), (a1 + 64), (a2 - 32), a3);
        return 1;
      case 5:
        sub_CED6E8(a1, (a1 + 32), (a1 + 64), (a1 + 96), a3);
        v11 = *(a2 - 32);
        v12 = *(a1 + 96);
        if (v11 < v12)
        {
          *(a1 + 96) = v11;
          *(a2 - 32) = v12;
          v13 = *(a1 + 120);
          v14 = *(a1 + 104);
          v15 = *(a2 - 8);
          *(a1 + 104) = *(a2 - 24);
          *(a1 + 120) = v15;
          *(a2 - 24) = v14;
          *(a2 - 8) = v13;
          v16 = *(a1 + 96);
          v17 = *(a1 + 64);
          if (v16 < v17)
          {
            *(a1 + 64) = v16;
            v18 = *(a1 + 88);
            v19 = *(a1 + 72);
            *(a1 + 72) = *(a1 + 104);
            *(a1 + 88) = *(a1 + 120);
            *(a1 + 96) = v17;
            *(a1 + 104) = v19;
            *(a1 + 120) = v18;
            v20 = *(a1 + 32);
            if (v16 < v20)
            {
              *(a1 + 32) = v16;
              v21 = *(a1 + 56);
              v22 = *(a1 + 40);
              *(a1 + 40) = *(a1 + 72);
              *(a1 + 56) = *(a1 + 88);
              *(a1 + 64) = v20;
              *(a1 + 72) = v22;
              *(a1 + 88) = v21;
              v23 = *a1;
              if (v16 < *a1)
              {
                *a1 = v16;
                v24 = *(a1 + 24);
                v25 = *(a1 + 8);
                *(a1 + 8) = *(a1 + 40);
                *(a1 + 24) = *(a1 + 56);
                *(a1 + 32) = v23;
                *(a1 + 40) = v25;
                *(a1 + 56) = v24;
              }
            }
          }
        }

        return 1;
    }
  }

  else
  {
    if (v3 < 2)
    {
      return 1;
    }

    if (v3 == 2)
    {
      v4 = *(a2 - 32);
      v5 = *a1;
      if (v4 < *a1)
      {
        *a1 = v4;
        *(a2 - 32) = v5;
        v6 = *(a1 + 24);
        v7 = *(a1 + 8);
        v8 = *(a2 - 8);
        *(a1 + 8) = *(a2 - 24);
        *(a1 + 24) = v8;
LABEL_29:
        *(a2 - 24) = v7;
        *(a2 - 8) = v6;
        return 1;
      }

      return 1;
    }
  }

  v30 = (a1 + 64);
  v31 = *(a1 + 64);
  v32 = *(a1 + 32);
  v33 = *a1;
  if (v32 >= *a1)
  {
    if (v31 < v32)
    {
      *(a1 + 32) = v31;
      v43 = *(a1 + 56);
      v44 = *(a1 + 40);
      *(a1 + 40) = *(a1 + 72);
      *(a1 + 56) = *(a1 + 88);
      *(a1 + 64) = v32;
      *(a1 + 72) = v44;
      *(a1 + 88) = v43;
      if (v31 < v33)
      {
        *a1 = v31;
        v45 = *(a1 + 24);
        v46 = *(a1 + 8);
        *(a1 + 8) = *(a1 + 40);
        *(a1 + 24) = *(a1 + 56);
        *(a1 + 32) = v33;
        *(a1 + 40) = v46;
        *(a1 + 56) = v45;
      }
    }
  }

  else if (v31 >= v32)
  {
    *a1 = v32;
    v51 = *(a1 + 24);
    v52 = *(a1 + 8);
    *(a1 + 8) = *(a1 + 40);
    *(a1 + 24) = *(a1 + 56);
    *(a1 + 32) = v33;
    *(a1 + 40) = v52;
    *(a1 + 56) = v51;
    if (v31 < v33)
    {
      *(a1 + 32) = v31;
      v53 = *(a1 + 56);
      v54 = *(a1 + 40);
      *(a1 + 40) = *(a1 + 72);
      *(a1 + 56) = *(a1 + 88);
      *(a1 + 64) = v33;
      *(a1 + 72) = v54;
      *(a1 + 88) = v53;
    }
  }

  else
  {
    *a1 = v31;
    *(a1 + 64) = v33;
    v34 = *(a1 + 24);
    v35 = *(a1 + 8);
    *(a1 + 8) = *(a1 + 72);
    *(a1 + 24) = *(a1 + 88);
    *(a1 + 72) = v35;
    *(a1 + 88) = v34;
  }

  v55 = a1 + 96;
  if (a1 + 96 == a2)
  {
    return 1;
  }

  v56 = 0;
  v57 = 0;
  while (1)
  {
    v59 = *v55;
    if (*v55 < *v30)
    {
      v60 = *(v55 + 8);
      *v66 = *(v55 + 16);
      *&v66[7] = *(v55 + 23);
      v61 = *(v55 + 31);
      *(v55 + 16) = 0;
      *(v55 + 24) = 0;
      *(v55 + 8) = 0;
      v62 = *v30;
      v63 = v56;
      do
      {
        v64 = a1 + v63;
        *(v64 + 96) = v62;
        *(v64 + 104) = *(a1 + v63 + 72);
        *(v64 + 120) = *(a1 + v63 + 88);
        *(v64 + 95) = 0;
        *(v64 + 72) = 0;
        if (v63 == -64)
        {
          v58 = a1;
          goto LABEL_35;
        }

        v62 = *(v64 + 32);
        v63 -= 32;
      }

      while (v59 < v62);
      v58 = a1 + v63 + 96;
LABEL_35:
      *v58 = v59;
      *(v64 + 72) = v60;
      *(v58 + 16) = *v66;
      *(v58 + 23) = *&v66[7];
      *(v58 + 31) = v61;
      if (++v57 == 8)
      {
        return v55 + 32 == a2;
      }
    }

    v30 = v55;
    v56 += 32;
    v55 += 32;
    if (v55 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_CEDD68(uint64_t a1, void *a2)
{
  sub_F6371C(a2, &v10);
  sub_F63818(a2, &v4);
  v24 = v10;
  v25 = v11;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  if (v13 != v12)
  {
    if (((v13 - v12) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v29 = 0;
  v30 = 0;
  v31 = 0;
  if (v15 != v14)
  {
    if (((v15 - v14) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v16 = v4;
  v17 = v5;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  if (v9 != v8)
  {
    if (((v9 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  return 0;
}

void sub_CEE214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_3DB674(va);
  _Unwind_Resume(a1);
}

void sub_CEE228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  if (v37)
  {
    a37 = v37;
    operator delete(v37);
  }

  sub_3DB674((v38 - 160));
  sub_3DB674(&a15);
  sub_3DB674(&a24);
  _Unwind_Resume(a1);
}

void sub_CEE2BC()
{
  byte_27B44CF = 3;
  LODWORD(qword_27B44B8) = 5136193;
  byte_27B44E7 = 3;
  LODWORD(qword_27B44D0) = 5136194;
  byte_27B44FF = 3;
  LODWORD(qword_27B44E8) = 5136195;
  byte_27B4517 = 15;
  strcpy(&qword_27B4500, "vehicle_mass_kg");
  byte_27B452F = 21;
  strcpy(&xmmword_27B4518, "vehicle_cargo_mass_kg");
  byte_27B4547 = 19;
  strcpy(&qword_27B4530, "vehicle_aux_power_w");
  byte_27B455F = 15;
  strcpy(&qword_27B4548, "dcdc_efficiency");
  strcpy(&qword_27B4560, "drive_train_efficiency");
  HIBYTE(word_27B4576) = 22;
  operator new();
}

void sub_CEE498(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27B4576) < 0)
  {
    sub_21E3D84();
  }

  sub_21E3D90();
  _Unwind_Resume(a1);
}

void sub_CEE4B8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v52);
  v37[0] = 1;
  v38 = 0u;
  memset(v39, 0, sizeof(v39));
  v40 = 0;
  sub_11D7FD4(v41, 2);
  v49 = 0uLL;
  BYTE8(v50) = 0;
  *&v50 = 0;
  HIDWORD(v50) = -1;
  LOWORD(v51) = 0;
  if (**(a1 + 280) != *(*(a1 + 280) + 8))
  {
    sub_FF0038(&v27, *(a1 + 264), *(a1 + 328), *(a1 + 336), 0, a1 + 384);
  }

  if (sub_7E7E4(1u))
  {
    sub_19594F8(&v27);
    sub_4A5C(&v27, "DrivingRouteSelectionModule::run has empty input", 48);
    if ((v36 & 0x10) != 0)
    {
      v4 = v35;
      if (v35 < v32)
      {
        v35 = v32;
        v4 = v32;
      }

      v5 = v31;
      v3 = v4 - v31;
      if (v4 - v31 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_48;
      }
    }

    else
    {
      if ((v36 & 8) == 0)
      {
        v3 = 0;
        BYTE7(v24) = 0;
LABEL_15:
        __dst.n128_u8[v3] = 0;
        sub_7E854(&__dst, 1u);
        if (SBYTE7(v24) < 0)
        {
          operator delete(__dst.n128_u64[0]);
        }

        if (v34 < 0)
        {
          operator delete(v33);
        }

        std::locale::~locale(&v28.n128_i8[8]);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_20;
      }

      v5 = v29;
      v3 = v30 - v29;
      if ((v30 - v29) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_48:
        sub_3244();
      }
    }

    if (v3 >= 0x17)
    {
      operator new();
    }

    BYTE7(v24) = v3;
    if (v3)
    {
      memmove(&__dst, v5, v3);
    }

    goto LABEL_15;
  }

LABEL_20:
  v22[0] = dword_8 + 3;
  v22[1] = &off_2669FE0;
  sub_434934(&__dst, v22);
  LOBYTE(v27) = 0;
  v28 = __dst;
  v29 = v24;
  v30 = v25;
  v24 = 0uLL;
  v25 = 0;
  LODWORD(v31) = v26;
  sub_CEFE10(v37, &v27);
  if (v27 == 1)
  {
    sub_CF009C(&v27, &v28);
  }

  else
  {
    v6 = v29;
    if (v29)
    {
      v7 = *(&v29 + 1);
      v8 = v29;
      if (*(&v29 + 1) != v29)
      {
        do
        {
          if (*(v7 - 1) < 0)
          {
            operator delete(*(v7 - 24));
          }

          v7 -= 32;
        }

        while (v7 != v6);
        v8 = v29;
      }

      *(&v29 + 1) = v6;
      operator delete(v8);
    }
  }

  v9 = v24;
  if (v24)
  {
    v10 = *(&v24 + 1);
    v11 = v24;
    if (*(&v24 + 1) != v24)
    {
      do
      {
        if (*(v10 - 1) < 0)
        {
          operator delete(*(v10 - 24));
        }

        v10 -= 32;
      }

      while (v10 != v9);
      v11 = v24;
    }

    *(&v24 + 1) = v9;
    operator delete(v11);
  }

  v12 = v37[0];
  *a2 = v37[0];
  if (v12 == 1)
  {
    *(a2 + 8) = v38;
    *(a2 + 24) = v39[0];
    v39[0] = 0;
    v38 = 0uLL;
    *(a2 + 32) = *&v39[1];
    *(a2 + 48) = v39[3];
    v39[1] = 0;
    v39[2] = 0;
    *(a2 + 56) = v40;
    *(a2 + 64) = v41[0];
    v13 = v42;
    v14 = v43;
    v39[3] = 0;
    v42 = 0;
    *(a2 + 72) = v13;
    *(a2 + 80) = v14;
    v43 = 0;
    v15 = v44;
    v16 = v45;
    *(a2 + 88) = v44;
    *(a2 + 96) = v16;
    *(a2 + 104) = v46;
    if (v16)
    {
      v17 = *(v15 + 8);
      if ((v14 & (v14 - 1)) != 0)
      {
        if (v17 >= v14)
        {
          v17 %= v14;
        }
      }

      else
      {
        v17 &= v14 - 1;
      }

      *(v13 + 8 * v17) = a2 + 88;
      v44 = 0;
      v45 = 0;
    }

    *(a2 + 112) = v47;
    *(a2 + 128) = v48;
    v48 = 0;
    v47 = 0uLL;
    *(a2 + 136) = v49;
    *(a2 + 152) = v50;
    *(a2 + 168) = v51;
    sub_CF009C(v37, &v38);
  }

  else
  {
    *(a2 + 8) = v38;
    *(a2 + 24) = *v39;
    *(a2 + 40) = v39[2];
    memset(v39, 0, 24);
    *(a2 + 48) = v39[3];
    v18 = v39[0];
    if (v39[0])
    {
      v19 = v39[1];
      v20 = v39[0];
      if (v39[1] != v39[0])
      {
        do
        {
          if (*(v19 - 1) < 0)
          {
            operator delete(*(v19 - 3));
          }

          v19 -= 4;
        }

        while (v19 != v18);
        v20 = v39[0];
      }

      v39[1] = v18;
      operator delete(v20);
    }
  }
}

void sub_CEF9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a30);
  sub_772CE0(&a69);
  sub_CF0540(&STACK[0x3F0]);
  sub_FF01A4(&STACK[0x468]);
  sub_CF0134(&STACK[0xBA8]);
  _Unwind_Resume(a1);
}

void ***sub_CEFBD8(void ***a1)
{
  if (*a1)
  {
    sub_CEFC14(a1);
    operator delete(*a1);
  }

  return a1;
}

void sub_CEFC14(void ***a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (v1 != *a1)
  {
    v3 = a1[1];
    v23 = *a1;
    do
    {
      v6 = *(v3 - 3);
      v3 -= 3;
      v5 = v6;
      if (v6)
      {
        v25 = v3;
        v7 = *(v1 - 2);
        v4 = v5;
        if (v7 != v5)
        {
          v24 = v1;
          while (1)
          {
            if (*(v7 - 1) < 0)
            {
              operator delete(*(v7 - 3));
              v9 = *(v7 - 13);
              if (v9)
              {
LABEL_17:
                v12 = *(v7 - 12);
                v13 = v9;
                if (v12 != v9)
                {
                  do
                  {
                    v12 = sub_3EEA68(v12 - 1096);
                  }

                  while (v12 != v9);
                  v13 = *(v7 - 13);
                }

                *(v7 - 12) = v9;
                operator delete(v13);
                v10 = v7 - 16;
                v11 = *(v7 - 16);
                if (!v11)
                {
                  goto LABEL_11;
                }

LABEL_21:
                v14 = *(v7 - 15);
                v8 = v11;
                if (v14 != v11)
                {
                  do
                  {
                    v15 = *(v14 - 3);
                    if (v15)
                    {
                      v16 = *(v14 - 2);
                      v17 = *(v14 - 3);
                      if (v16 != v15)
                      {
                        do
                        {
                          v18 = v16 - 32;
                          v19 = *(v16 - 2);
                          if (v19 != -1)
                          {
                            (off_2673338[v19])(&v26, v16 - 32);
                          }

                          *(v16 - 2) = -1;
                          v16 -= 32;
                        }

                        while (v18 != v15);
                        v17 = *(v14 - 3);
                      }

                      *(v14 - 2) = v15;
                      operator delete(v17);
                    }

                    v20 = *(v14 - 8);
                    if (v20 != -1)
                    {
                      (off_2673338[v20])(&v27, v14 - 7);
                    }

                    v21 = v14 - 10;
                    *(v14 - 8) = -1;
                    if (*(v14 - 57) < 0)
                    {
                      operator delete(*v21);
                    }

                    v14 -= 10;
                  }

                  while (v21 != v11);
                  v8 = *v10;
                }

                *(v7 - 15) = v11;
                operator delete(v8);
                goto LABEL_11;
              }
            }

            else
            {
              v9 = *(v7 - 13);
              if (v9)
              {
                goto LABEL_17;
              }
            }

            v10 = v7 - 16;
            v11 = *(v7 - 16);
            if (v11)
            {
              goto LABEL_21;
            }

LABEL_11:
            v7 = v10;
            if (v10 == v5)
            {
              v1 = v24;
              v4 = *v25;
              v2 = v23;
              break;
            }
          }
        }

        *(v1 - 2) = v5;
        operator delete(v4);
        v3 = v25;
      }

      v1 = v3;
    }

    while (v3 != v2);
  }

  a1[1] = v2;
}

uint64_t sub_CEFE10(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (*a2)
    {
      v4 = (a1 + 8);
      if (*(a1 + 8))
      {
        sub_CEFC14((a1 + 8));
        operator delete(*v4);
        *v4 = 0;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
      }

      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      v5 = *(a1 + 32);
      if (v5)
      {
        *(a1 + 40) = v5;
        operator delete(v5);
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
        *(a1 + 48) = 0;
      }

      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      *(a2 + 32) = 0;
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 64) = *(a2 + 64);
      sub_6BE5B4(a1 + 72, (a2 + 72));
      if (*(a1 + 135) < 0)
      {
        operator delete(*(a1 + 112));
      }

      v6 = *(a2 + 112);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 112) = v6;
      *(a2 + 135) = 0;
      *(a2 + 112) = 0;
      v7 = *(a2 + 136);
      v8 = *(a2 + 152);
      *(a1 + 168) = *(a2 + 168);
LABEL_28:
      *(a1 + 152) = v8;
      *(a1 + 136) = v7;
      goto LABEL_29;
    }

    sub_CF009C(a1, a1 + 8);
  }

  else if (*a2)
  {
    v9 = *(a1 + 24);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 24);
      if (v10 != v9)
      {
        do
        {
          if (*(v10 - 1) < 0)
          {
            operator delete(*(v10 - 24));
          }

          v10 -= 32;
        }

        while (v10 != v9);
        v11 = *(a1 + 24);
      }

      *(a1 + 32) = v9;
      operator delete(v11);
    }

    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    v12 = *(a2 + 88);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    v13 = *(a2 + 56);
    *(a1 + 88) = v12;
    *(a1 + 56) = v13;
    *(a1 + 64) = *(a2 + 64);
    v14 = *(a2 + 72);
    *(a1 + 80) = *(a2 + 80);
    *(a2 + 72) = 0;
    *(a1 + 72) = v14;
    *(a2 + 80) = 0;
    v15 = *(a2 + 96);
    *(a1 + 96) = v15;
    *(a1 + 104) = *(a2 + 104);
    if (v15)
    {
      v16 = *(v12 + 8);
      v17 = *(a1 + 80);
      if ((v17 & (v17 - 1)) != 0)
      {
        if (v16 >= v17)
        {
          v16 %= v17;
        }
      }

      else
      {
        v16 &= v17 - 1;
      }

      *(v14 + 8 * v16) = a1 + 88;
      *(a2 + 88) = 0;
      *(a2 + 96) = 0;
    }

    v18 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 112) = v18;
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *(a2 + 112) = 0;
    v7 = *(a2 + 136);
    v8 = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    goto LABEL_28;
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
LABEL_29:
  *a1 = *a2;
  return a1;
}

void sub_CF009C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 127) < 0)
  {
    operator delete(*(a2 + 104));
  }

  v3 = *(a2 + 80);
  if (v3)
  {
    do
    {
      v4 = *v3;
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = *(a2 + 64);
  *(a2 + 64) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(a2 + 24);
  if (v6)
  {
    *(a2 + 32) = v6;
    operator delete(v6);
  }

  if (*a2)
  {
    sub_CEFC14(a2);
    v7 = *a2;

    operator delete(v7);
  }
}

uint64_t sub_CF0134(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_CF009C(a1, a1 + 8);
    return a1;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    return a1;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 24);
  if (v4 != v3)
  {
    do
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 24));
      }

      v4 -= 32;
    }

    while (v4 != v3);
    v5 = *(a1 + 24);
  }

  *(a1 + 32) = v3;
  operator delete(v5);
  return a1;
}

double sub_CF01D4(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = 8 * ((*(a1 + 8) - *a1) >> 3);
  *v11 = *a2;
  *(v11 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v6 = *(a1 + 8);
  v7 = (24 * v2 + *a1 - v6);
  sub_CF031C(a1, *a1, v6, v7);
  v8 = *a1;
  *a1 = v7;
  v9 = 24 * v2 + 24;
  *(a1 + 8) = v9;
  if (v8)
  {
    operator delete(v8);
    *&v9 = 24 * v2 + 24;
  }

  return *&v9;
}

void sub_CF0308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_CDF7D4(va);
  _Unwind_Resume(a1);
}

void sub_CF031C(uint64_t a1, void **a2, void **a3, void *a4)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v4;
      a4[2] = v4[2];
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      v4 += 3;
      a4 += 3;
    }

    while (v4 != a3);
    if (a2 != a3)
    {
      v23 = a3;
      do
      {
        v7 = *a2;
        if (*a2)
        {
          v5 = a2;
          v8 = a2[1];
          v6 = *a2;
          if (v8 != v7)
          {
            v24 = a2;
            while (1)
            {
              if (*(v8 - 1) < 0)
              {
                operator delete(*(v8 - 3));
                v10 = *(v8 - 13);
                if (v10)
                {
LABEL_20:
                  v13 = *(v8 - 12);
                  v14 = v10;
                  if (v13 != v10)
                  {
                    do
                    {
                      v13 = sub_3EEA68(v13 - 1096);
                    }

                    while (v13 != v10);
                    v14 = *(v8 - 13);
                  }

                  *(v8 - 12) = v10;
                  operator delete(v14);
                  v11 = v8 - 16;
                  v12 = *(v8 - 16);
                  if (!v12)
                  {
                    goto LABEL_14;
                  }

LABEL_24:
                  v15 = *(v8 - 15);
                  v9 = v12;
                  if (v15 != v12)
                  {
                    do
                    {
                      v16 = *(v15 - 3);
                      if (v16)
                      {
                        v17 = *(v15 - 2);
                        v18 = *(v15 - 3);
                        if (v17 != v16)
                        {
                          do
                          {
                            v19 = v17 - 32;
                            v20 = *(v17 - 2);
                            if (v20 != -1)
                            {
                              (off_2673338[v20])(&v25, v17 - 32);
                            }

                            *(v17 - 2) = -1;
                            v17 -= 32;
                          }

                          while (v19 != v16);
                          v18 = *(v15 - 3);
                        }

                        *(v15 - 2) = v16;
                        operator delete(v18);
                      }

                      v21 = *(v15 - 8);
                      if (v21 != -1)
                      {
                        (off_2673338[v21])(&v26, v15 - 7);
                      }

                      v22 = v15 - 10;
                      *(v15 - 8) = -1;
                      if (*(v15 - 57) < 0)
                      {
                        operator delete(*v22);
                      }

                      v15 -= 10;
                    }

                    while (v22 != v12);
                    v9 = *v11;
                  }

                  *(v8 - 15) = v12;
                  operator delete(v9);
                  goto LABEL_14;
                }
              }

              else
              {
                v10 = *(v8 - 13);
                if (v10)
                {
                  goto LABEL_20;
                }
              }

              v11 = v8 - 16;
              v12 = *(v8 - 16);
              if (v12)
              {
                goto LABEL_24;
              }

LABEL_14:
              v8 = v11;
              if (v11 == v7)
              {
                v5 = v24;
                v6 = *v24;
                break;
              }
            }
          }

          v5[1] = v7;
          operator delete(v6);
          a3 = v23;
          a2 = v5;
        }

        a2 += 3;
      }

      while (a2 != a3);
    }
  }
}

void *sub_CF0540(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    v3 = a1[11];
    v4 = a1[10];
    if (v3 == v2)
    {
LABEL_17:
      a1[11] = v2;
      operator delete(v4);
      goto LABEL_18;
    }

    while (1)
    {
      if (*(v3 - 57) < 0)
      {
        operator delete(*(v3 - 10));
        if (*(v3 - 81) < 0)
        {
LABEL_14:
          operator delete(*(v3 - 13));
          v5 = *(v3 - 16);
          if (!v5)
          {
            goto LABEL_9;
          }

LABEL_8:
          *(v3 - 15) = v5;
          operator delete(v5);
          goto LABEL_9;
        }
      }

      else if (*(v3 - 81) < 0)
      {
        goto LABEL_14;
      }

      v5 = *(v3 - 16);
      if (v5)
      {
        goto LABEL_8;
      }

LABEL_9:
      v6 = *(v3 - 19);
      if (v6)
      {
        *(v3 - 18) = v6;
        operator delete(v6);
      }

      v7 = v3 - 22;
      if (*(v3 - 153) < 0)
      {
        operator delete(*v7);
      }

      v3 -= 22;
      if (v7 == v2)
      {
        v4 = a1[10];
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  v8 = a1[7];
  if (v8)
  {
    v9 = a1[8];
    v10 = a1[7];
    if (v9 != v8)
    {
      do
      {
        v9 = sub_13272E4(v9 - 144);
      }

      while (v9 != v8);
      v10 = a1[7];
    }

    a1[8] = v8;
    operator delete(v10);
  }

  v11 = a1[4];
  if (v11)
  {
    a1[5] = v11;
    operator delete(v11);
  }

  return a1;
}

void sub_CF0654()
{
  byte_27B45D7 = 3;
  LODWORD(qword_27B45C0) = 5136193;
  byte_27B45EF = 3;
  LODWORD(qword_27B45D8) = 5136194;
  byte_27B4607 = 3;
  LODWORD(qword_27B45F0) = 5136195;
  byte_27B461F = 15;
  strcpy(&qword_27B4608, "vehicle_mass_kg");
  byte_27B4637 = 21;
  strcpy(&xmmword_27B4620, "vehicle_cargo_mass_kg");
  byte_27B464F = 19;
  strcpy(&qword_27B4638, "vehicle_aux_power_w");
  byte_27B4667 = 15;
  strcpy(&qword_27B4650, "dcdc_efficiency");
  strcpy(&qword_27B4668, "drive_train_efficiency");
  HIBYTE(word_27B467E) = 22;
  operator new();
}

void sub_CF0830(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27B467E) < 0)
  {
    sub_21E3E60();
  }

  sub_21E3E6C();
  _Unwind_Resume(a1);
}

void sub_CF0850(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_7E9A4(v51);
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  v47 = 0x7FFFFFFF;
  v48 = 0;
  v49 = 1;
  v50 = 0;
  sub_438678(v43, *(a1 + 200), *(a1 + 192));
  sub_11A5004(v38, *(a1 + 200), v43);
  v4 = sub_4C49C0(*(a1 + 184), 0);
  sub_11A5030(v38, a1, v4, v35);
  if (v35[22] != v35[23])
  {
    v50 = v36;
    v5 = *(&v44 + 1);
    if (*(&v44 + 1) >= v45)
    {
      v6 = sub_CF1898(&v44, v35);
    }

    else
    {
      sub_CF19E4(&v44, *(&v44 + 1), v35);
      v6 = v5 + 240;
    }

    *(&v44 + 1) = v6;
    v47 = v37;
    if (*(a1 + 208) == 1)
    {
      v8 = v46;
      if (v46 >= *(&v46 + 1))
      {
        v9 = sub_CF1898(&v45 + 1, v35);
      }

      else
      {
        sub_CF19E4(&v45 + 8, v46, v35);
        v9 = v8 + 240;
      }

      *&v46 = v9;
    }

    sub_11ABC8C(v24, *(a1 + 200), 0, 0, 0);
  }

  if (sub_7E7E4(1u))
  {
    sub_19594F8(&v25);
    sub_4A5C(&v25, "[driving] DrivingRouteSnapping module did not find any results for origin", 73);
    if ((v34 & 0x10) != 0)
    {
      v19 = v33;
      if (v33 < v30)
      {
        v33 = v30;
        v19 = v30;
      }

      v20 = v29;
      v7 = v19 - v29;
      if (v19 - v29 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if ((v34 & 8) == 0)
      {
        v7 = 0;
        v23 = 0;
LABEL_38:
        v22.n128_u8[v7] = 0;
        sub_7E854(&v22, 1u);
        if (v23 < 0)
        {
          operator delete(v22.n128_u64[0]);
        }

        if (v32 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v26);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_43;
      }

      v20 = *(&v26 + 1);
      v7 = v28 - *(&v26 + 1);
      if ((v28 - *(&v26 + 1)) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_46:
        sub_3244();
      }
    }

    if (v7 >= 0x17)
    {
      operator new();
    }

    v23 = v7;
    if (v7)
    {
      memmove(&v22, v20, v7);
    }

    goto LABEL_38;
  }

LABEL_43:
  v22.n128_u64[0] = 25;
  v22.n128_u64[1] = &off_2669FE0;
  sub_434934(&v25, &v22);
  *a2 = 0;
  v21 = v26;
  *(a2 + 8) = v25;
  *(a2 + 24) = v21;
  *(a2 + 40) = v27;
  *(a2 + 48) = v28;
  sub_49AEC0(v35);
  if (v42 < 0)
  {
    operator delete(v41);
  }

  v10 = v40;
  if (v40)
  {
    do
    {
      v11 = *v10;
      sub_253B4((v10 + 2));
      operator delete(v10);
      v10 = v11;
    }

    while (v11);
  }

  v12 = v39;
  v39 = 0;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = *(&v45 + 1);
  if (*(&v45 + 1))
  {
    v14 = v46;
    v15 = *(&v45 + 1);
    if (v46 != *(&v45 + 1))
    {
      do
      {
        v14 = sub_49AEC0(v14 - 30);
      }

      while (v14 != v13);
      v15 = *(&v45 + 1);
    }

    *&v46 = v13;
    operator delete(v15);
  }

  v16 = v44;
  if (v44)
  {
    v17 = *(&v44 + 1);
    v18 = v44;
    if (*(&v44 + 1) != v44)
    {
      do
      {
        v17 = sub_49AEC0(v17 - 30);
      }

      while (v17 != v16);
      v18 = v44;
    }

    *(&v44 + 1) = v16;
    operator delete(v18);
  }
}

void sub_CF16B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49)
{
  *(v50 - 176) = v49;
  if (a17 == 1)
  {
    sub_49AEC0(&a18);
  }

  if (a48 == 1)
  {
    sub_49AEC0(&a49);
  }

  if (LOBYTE(STACK[0x230]) == 1)
  {
    sub_49AEC0(&STACK[0x238]);
  }

  sub_11ABCB4(&STACK[0x328]);
  sub_49AEC0(&STACK[0x4E8]);
  sub_CF1B3C(&STACK[0x5E0]);
  sub_CF1BAC((v50 - 208));
  _Unwind_Resume(a1);
}

uint64_t sub_CF1898(void *a1, uint64_t a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x111111111111111)
  {
    sub_1794();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 4);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 4) >= 0x88888888888888)
  {
    v5 = 0x111111111111111;
  }

  else
  {
    v5 = v3;
  }

  v14 = a1;
  if (v5)
  {
    if (v5 <= 0x111111111111111)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v11 = 240 * v2;
  v13 = 0;
  sub_CF19E4(a1, 240 * v2, a2);
  v12 = 240 * v2 + 240;
  sub_49C9C4(a1, &__p);
  v6 = a1[1];
  v8 = v11;
  for (i = v12; v12 != v8; i = v12)
  {
    v12 = i - 240;
    sub_49AEC0((i - 240));
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_CF19D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_49CB28(va);
  _Unwind_Resume(a1);
}

__n128 sub_CF19E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  v5 = *(a3 + 16);
  v6 = *(a3 + 32);
  v7 = *(a3 + 48);
  *(a2 + 63) = *(a3 + 63);
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  *(a2 + 72) = 0;
  *(a2 + 16) = v5;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v9 = *(a3 + 72);
  v8 = *(a3 + 80);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v10 = *(a3 + 96);
  *(a2 + 112) = *(a3 + 112);
  *(a2 + 96) = v10;
  v11 = *(a3 + 120);
  *(a2 + 136) = *(a3 + 136);
  *(a2 + 120) = v11;
  sub_81988((a2 + 152), a3 + 152);
  sub_49DC18((a2 + 176), (a3 + 176));
  sub_49DC18((a2 + 200), (a3 + 200));
  result = *(a3 + 224);
  *(a2 + 224) = result;
  return result;
}

void sub_CF1AEC(_Unwind_Exception *a1)
{
  sub_48C8F4((v1 + 176));
  sub_44D36C(v1);
  _Unwind_Resume(a1);
}

void sub_CF1B1C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 80) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_CF1B3C(uint64_t a1)
{
  if (*(a1 + 535) < 0)
  {
    operator delete(*(a1 + 512));
  }

  v2 = *(a1 + 448);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_253B4((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 432);
  *(a1 + 432) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void *sub_CF1BAC(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[4];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_49AEC0(v3 - 30);
      }

      while (v3 != v2);
      v4 = a1[3];
    }

    a1[4] = v2;
    operator delete(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    v6 = a1[1];
    v7 = *a1;
    if (v6 != v5)
    {
      do
      {
        v6 = sub_49AEC0(v6 - 30);
      }

      while (v6 != v5);
      v7 = *a1;
    }

    a1[1] = v5;
    operator delete(v7);
  }

  return a1;
}

void sub_CF1C40(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_7E9A4(v5);
  v4 = 0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 16) - *(a1 + 8)) >> 4);
  *a2 = 1;
  sub_CF3D08((a2 + 8), v4);
}

void sub_CF2FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void **a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  if (SLOBYTE(STACK[0x2C7]) < 0)
  {
    operator delete(STACK[0x2B0]);
  }

  sub_1959728(&a15);
  sub_919A4(&a48);
  sub_CF3C94(&a57);
  sub_11ABCB4(&a63);
  sub_CF4478(a14);
  _Unwind_Resume(a1);
}

uint64_t sub_CF3224(uint64_t a1, int *a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a2;
  if (*a1)
  {
    v9 = sub_3B2A90(*a3);
    if (*(a3 + 33) != 1 || (v10 = v9, v11 = sub_44A768(a4, *(*(a1 + 184) + 32), *(a3 + 35)), v9 = v10, (v11 & 1) != 0))
    {
      if (sub_4B79AC(v9, (*(a1 + 184) + 32), *(a3 + 35)))
      {
        return 0;
      }

      if (!sub_7E7E4(1u))
      {
        goto LABEL_73;
      }

      sub_19594F8(&v45);
      v22 = sub_4A5C(&v45, "[driving] coordinate to snap (", 30);
      v24 = sub_35820(v22, (a2 + 2), v23);
      sub_4A5C(v24, ") is outside supported region", 29);
      if ((v55 & 0x10) != 0)
      {
        v37 = v54;
        if (v54 < v51)
        {
          v54 = v51;
          v37 = v51;
        }

        v38 = &v50;
      }

      else
      {
        if ((v55 & 8) == 0)
        {
          v25 = 0;
          v44 = 0;
LABEL_68:
          *(&__p + v25) = 0;
          sub_7E854(&__p, 1u);
          if (v44 < 0)
          {
            operator delete(__p);
          }

          if (v53 < 0)
          {
            operator delete(v52);
          }

          std::locale::~locale(&v47);
          std::ostream::~ostream();
          std::ios::~ios();
LABEL_73:
          if (v6 == 2)
          {
            v35 = 33;
          }

          else
          {
            v35 = 17;
          }

          v34 = v6 == 1;
          v36 = 26;
          goto LABEL_93;
        }

        v38 = v48;
        v37 = v49;
      }

      v41 = *v38;
      v25 = v37 - *v38;
      if (v25 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v25 >= 0x17)
      {
        operator new();
      }

      v44 = v37 - *v38;
      if (v25)
      {
        memmove(&__p, v41, v25);
      }

      goto LABEL_68;
    }

    if (!sub_7E7E4(1u))
    {
LABEL_89:
      if (v6 == 2)
      {
        v35 = 34;
      }

      else
      {
        v35 = 20;
      }

      v34 = v6 == 1;
      v36 = 27;
      goto LABEL_93;
    }

    sub_19594F8(&v45);
    v26 = sub_4A5C(&v45, "[driving][ev] coordinate to snap (", 34);
    v28 = sub_35820(v26, (a2 + 2), v27);
    sub_4A5C(v28, ") is outside supported EV regions.", 34);
    if ((v55 & 0x10) != 0)
    {
      v39 = v54;
      if (v54 < v51)
      {
        v54 = v51;
        v39 = v51;
      }

      v40 = &v50;
    }

    else
    {
      if ((v55 & 8) == 0)
      {
        v29 = 0;
        v44 = 0;
LABEL_84:
        *(&__p + v29) = 0;
        sub_7E854(&__p, 1u);
        if (v44 < 0)
        {
          operator delete(__p);
        }

        if (v53 < 0)
        {
          operator delete(v52);
        }

        std::locale::~locale(&v47);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_89;
      }

      v40 = v48;
      v39 = v49;
    }

    v42 = *v40;
    v29 = v39 - *v40;
    if (v29 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v29 >= 0x17)
    {
      operator new();
    }

    v44 = v39 - *v40;
    if (v29)
    {
      memmove(&__p, v42, v29);
    }

    goto LABEL_84;
  }

  v13 = *(a1 + 8);
  v14 = sub_7E7E4(1u);
  if (v13 == 24)
  {
    if (!v14)
    {
      return 24;
    }

    sub_19594F8(&v45);
    v15 = sub_4A5C(&v45, "[driving] coordinate to snap (", 30);
    v17 = sub_35820(v15, (a2 + 2), v16);
    sub_4A5C(v17, ") is outside the downloaded offline regions", 43);
    if ((v55 & 0x10) != 0)
    {
      v32 = v54;
      if (v54 < v51)
      {
        v54 = v51;
        v32 = v51;
      }

      v33 = v50;
      v18 = v32 - v50;
      if (v32 - v50 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_57;
      }
    }

    else
    {
      if ((v55 & 8) == 0)
      {
        v18 = 0;
        v44 = 0;
LABEL_45:
        *(&__p + v18) = 0;
        sub_7E854(&__p, 1u);
        if (v44 < 0)
        {
          operator delete(__p);
        }

        if (v53 < 0)
        {
          operator delete(v52);
        }

        std::locale::~locale(&v47);
        std::ostream::~ostream();
        std::ios::~ios();
        return 24;
      }

      v33 = v48[0];
      v18 = v49 - v48[0];
      if (v49 - v48[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_57:
        sub_3244();
      }
    }

    if (v18 >= 0x17)
    {
      operator new();
    }

    v44 = v18;
    if (v18)
    {
      memmove(&__p, v33, v18);
    }

    goto LABEL_45;
  }

  if (v14)
  {
    sub_19594F8(&v45);
    v19 = sub_4A5C(&v45, "[driving] snapping module did not find any results in the vicinity to ", 70);
    sub_35820(v19, (a2 + 2), v20);
    if ((v55 & 0x10) != 0)
    {
      v30 = v54;
      if (v54 < v51)
      {
        v54 = v51;
        v30 = v51;
      }

      v31 = v50;
      v21 = v30 - v50;
      if (v30 - v50 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_55;
      }
    }

    else
    {
      if ((v55 & 8) == 0)
      {
        v21 = 0;
        v44 = 0;
LABEL_37:
        *(&__p + v21) = 0;
        sub_7E854(&__p, 1u);
        if (v44 < 0)
        {
          operator delete(__p);
        }

        if (v53 < 0)
        {
          operator delete(v52);
        }

        std::locale::~locale(&v47);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_42;
      }

      v31 = v48[0];
      v21 = v49 - v48[0];
      if (v49 - v48[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_55:
        sub_3244();
      }
    }

    if (v21 >= 0x17)
    {
      operator new();
    }

    v44 = v21;
    if (v21)
    {
      memmove(&__p, v31, v21);
    }

    goto LABEL_37;
  }

LABEL_42:
  v34 = v6 == 1;
  v35 = 32;
  v36 = 25;
LABEL_93:
  if (v34)
  {
    return v36;
  }

  else
  {
    return v35;
  }
}

void sub_CF3BC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_CF3C94(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 16);
    if (v3 != v2)
    {
      do
      {
        if (*(v3 - 1) < 0)
        {
          operator delete(*(v3 - 24));
        }

        v3 -= 32;
      }

      while (v3 != v2);
      v4 = *(a1 + 16);
    }

    *(a1 + 24) = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_CF3D08(uint64_t a1, unint64_t a2)
{
  v7 = 0u;
  v11 = 0u;
  v3.f64[0] = NAN;
  v3.f64[1] = NAN;
  v6[0] = -1;
  v6[1] = 0x7FFFFFFFLL;
  v6[2] = -1;
  v6[3] = -1;
  v6[4] = 0x7FFFFFFFFFFFFFFFLL;
  DWORD2(v7) = -1935635296;
  v8 = 0uLL;
  *(&v8 + 7) = 0;
  v9 = 0uLL;
  v10 = 0uLL;
  *&v11 = 0x7FFFFFFFFFFFFFFFLL;
  BYTE8(v11) = 100;
  v12 = 0;
  v13 = 0;
  v14 = vnegq_f64(v3);
  v19 = 0;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v20 = 1;
  v22 = 0;
  v21 = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v23 = a1;
  v24 = 0;
  if (a2)
  {
    if (a2 < 0x111111111111112)
    {
      operator new();
    }

    sub_1794();
  }

  sub_49AEC0(v6);
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  v5 = 14;
  strcpy(__p, "SnappingModule");
  sub_44F3E4(a1 + 64, __p);
}

void sub_CF3ECC(_Unwind_Exception *a1)
{
  sub_CE6D74((v2 + 5));
  sub_49AE64(v2);
  sub_49AE64(v1);
  _Unwind_Resume(a1);
}

void sub_CF3EF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_49AE64(v16);
  sub_49AE64(v15);
  _Unwind_Resume(a1);
}

void sub_CF3F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_49DF70((v5 - 64));
  sub_49AEC0(va);
  _Unwind_Resume(a1);
}

void sub_CF3F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  v8 = v6;
  *(v5 + 8) = v8;
  sub_49DF70((v7 - 64));
  sub_49AEC0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CF3F5C(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    v4 = a1 + 8;
    if (*a2)
    {
      sub_CF4048(v4, a2 + 8);
      goto LABEL_16;
    }

    sub_CF41AC(v4);
LABEL_12:
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a1 + 48) = *(a2 + 48);
    goto LABEL_16;
  }

  if (!*a2)
  {
    goto LABEL_12;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 24);
    if (v6 != v5)
    {
      do
      {
        if (*(v6 - 1) < 0)
        {
          operator delete(*(v6 - 24));
        }

        v6 -= 32;
      }

      while (v6 != v5);
      v7 = *(a1 + 24);
    }

    *(a1 + 32) = v5;
    operator delete(v7);
  }

  sub_CF4314(a1 + 8, a2 + 8);
LABEL_16:
  *a1 = *a2;
  return a1;
}

uint64_t sub_CF4048(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(a1 + 8);
    v6 = v4;
    if (v5 != v4)
    {
      do
      {
        v5 = sub_49AEC0(v5 - 30);
      }

      while (v5 != v4);
      v6 = *a1;
    }

    *(a1 + 8) = v4;
    operator delete(v6);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v7 = (a1 + 24);
  v8 = *(a1 + 24);
  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 24);
    if (v9 != v8)
    {
      do
      {
        v9 = sub_49AEC0(v9 - 30);
      }

      while (v9 != v8);
      v10 = *v7;
    }

    *(a1 + 32) = v8;
    operator delete(v10);
    *v7 = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  *(a1 + 48) = *(a2 + 48);
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v11 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 64) = v11;
  *(a2 + 87) = 0;
  *(a2 + 64) = 0;
  sub_6BA20(a1 + 88, (a2 + 88));
  *(a1 + 128) = *(a2 + 128);
  sub_6BE5B4(a1 + 136, (a2 + 136));
  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  v12 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 176) = v12;
  *(a2 + 199) = 0;
  *(a2 + 176) = 0;
  *(a1 + 200) = *(a2 + 200);
  return a1;
}

uint64_t sub_CF41AC(uint64_t a1)
{
  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  v2 = *(a1 + 152);
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

  v4 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(a1 + 104);
  if (v5)
  {
    do
    {
      v6 = *v5;
      v7 = *(v5 + 12);
      if (v7 != -1)
      {
        (off_2673368[v7])(&v16, v5 + 5);
      }

      *(v5 + 12) = -1;
      if (*(v5 + 39) < 0)
      {
        operator delete(v5[2]);
      }

      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v8 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v8)
  {
    operator delete(v8);
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 24);
    if (v10 != v9)
    {
      do
      {
        v10 = sub_49AEC0(v10 - 30);
      }

      while (v10 != v9);
      v11 = *(a1 + 24);
    }

    *(a1 + 32) = v9;
    operator delete(v11);
  }

  v12 = *a1;
  if (*a1)
  {
    v13 = *(a1 + 8);
    v14 = *a1;
    if (v13 != v12)
    {
      do
      {
        v13 = sub_49AEC0(v13 - 30);
      }

      while (v13 != v12);
      v14 = *a1;
    }

    *(a1 + 8) = v12;
    operator delete(v14);
  }

  return a1;
}

__n128 sub_CF4314(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
  v2 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 64) = v2;
  *(a2 + 64) = 0;
  *(a2 + 80) = 0;
  v3 = *(a2 + 104);
  *(a2 + 72) = 0;
  v4 = *(a2 + 88);
  v5 = *(a2 + 96);
  *(a2 + 88) = 0;
  *(a1 + 88) = v4;
  *(a1 + 96) = v5;
  *(a2 + 96) = 0;
  *(a1 + 104) = v3;
  v6 = *(a2 + 112);
  *(a1 + 112) = v6;
  *(a1 + 120) = *(a2 + 120);
  if (v6)
  {
    v7 = *(v3 + 8);
    v8 = *(a1 + 96);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v7 >= v8)
      {
        v7 %= v8;
      }
    }

    else
    {
      v7 &= v8 - 1;
    }

    *(v4 + 8 * v7) = a1 + 104;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
  }

  v9 = *(a2 + 152);
  *(a1 + 152) = v9;
  *(a1 + 128) = *(a2 + 128);
  v10 = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 136) = 0;
  *(a1 + 136) = v10;
  *(a2 + 144) = 0;
  v11 = *(a2 + 160);
  *(a1 + 160) = v11;
  *(a1 + 168) = *(a2 + 168);
  if (v11)
  {
    v12 = *(v9 + 8);
    v13 = *(a1 + 144);
    if ((v13 & (v13 - 1)) != 0)
    {
      if (v12 >= v13)
      {
        v12 %= v13;
      }
    }

    else
    {
      v12 &= v13 - 1;
    }

    *(v10 + 8 * v12) = a1 + 152;
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
  }

  result = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 176) = result;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 176) = 0;
  *(a1 + 200) = *(a2 + 200);
  return result;
}

uint64_t sub_CF4478(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_CF41AC(a1 + 8);
    return a1;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    return a1;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 24);
  if (v4 != v3)
  {
    do
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 24));
      }

      v4 -= 32;
    }

    while (v4 != v3);
    v5 = *(a1 + 24);
  }

  *(a1 + 32) = v3;
  operator delete(v5);
  return a1;
}

void sub_CF4514(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_5F328(a2);
  v9[23] = 8;
  strcpy(v9, "location");
  sub_D7B0(&v11);
  sub_E67EF8(&v12, a1);
  if ((v22 & 0x10) != 0)
  {
    v4 = v21;
    if (v21 < v18)
    {
      v21 = v18;
      v4 = v18;
    }

    v5 = v17;
    v3 = v4 - v17;
    if (v4 - v17 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v22 & 8) == 0)
    {
      v3 = 0;
      HIBYTE(v8) = 0;
      goto LABEL_12;
    }

    v5 = v15;
    v3 = v16 - v15;
    if ((v16 - v15) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v8) = v3;
  if (v3)
  {
    memmove(&__dst, v5, v3);
  }

LABEL_12:
  *(&__dst + v3) = 0;
  v12 = v6;
  if (v20 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v14);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  *v10 = v8;
  *&v10[7] = *(&v8 + 7);
  __dst = 0;
  v8 = 0uLL;
  operator new();
}

void sub_CF5408(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  _Unwind_Resume(a1);
}

void sub_CF5660(void **a1, uint64_t a2)
{
  v2 = *a1;
  v5 = a2;
  v3 = sub_62DE0(v2, a2);
  v4 = *(v3 + 12);
  if (v4 != -1)
  {
    (off_2673368[v4])(&v5, v3 + 5);
  }

  *(v3 + 12) = -1;
  operator new();
}

void sub_CF5814(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_5BF68(va);
  _Unwind_Resume(a1);
}

void *sub_CF582C(void *a1, void *a2)
{
  if (*a1 != a1[1])
  {
    sub_CF5944((*a1 + 32), &v4);
    if (a2[1] < a2[2])
    {
      operator new();
    }

    sub_4204C0(a2);
  }

  return a2;
}

void sub_CF591C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_CF5944@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_D7B0(v9);
  sub_2FF718(&v10, __ROR8__(*a1, 32));
  if ((v20 & 0x10) != 0)
  {
    v5 = v19;
    if (v19 < v16)
    {
      v19 = v16;
      v5 = v16;
    }

    v6 = v15;
    v4 = v5 - v15;
    if (v5 - v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v20 & 8) == 0)
    {
      v4 = 0;
      a2[23] = 0;
      goto LABEL_12;
    }

    v6 = v13;
    v4 = v14 - v13;
    if ((v14 - v13) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    memmove(a2, v6, v4);
  }

LABEL_12:
  a2[v4] = 0;
  v10 = v7;
  if (v18 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v12);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_CF5B98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CF5BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_7E9A4(&v5);
  if (*(*(a1 + 24) + 8) - **(a1 + 24) == 24)
  {
    result = sub_4211B8(*a1);
    if (result)
    {
      sub_CF5D80(*(a1 + 24), 0);
      sub_11D1AFC();
    }
  }

  *a2 = 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

void sub_CF5D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_CF5FB4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_CF5D80(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v16, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v16, &v17);
    v6 = std::string::append(&v17, ",size=", 6uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v15, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v15;
    }

    else
    {
      v8 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v18, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v20 = v10->__r_.__value_.__r.__words[2];
    v19 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (v20 >= 0)
    {
      v12 = &v19;
    }

    else
    {
      v12 = v19;
    }

    if (v20 >= 0)
    {
      v13 = HIBYTE(v20);
    }

    else
    {
      v13 = *(&v19 + 1);
    }

    v14 = sub_2D390(exception, v12, v13);
  }

  return *a1 + 24 * a2;
}

void sub_CF5ED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((a33 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a27 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a22);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

void *sub_CF5FB4(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    v3 = a1[15];
    v4 = a1[14];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = a1[14];
    }

    a1[15] = v2;
    operator delete(v4);
  }

  v6 = a1[2];
  if (v6)
  {
    v7 = a1[3];
    v8 = a1[2];
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 1);
        v7 -= 3;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = a1[2];
    }

    a1[3] = v6;
    operator delete(v8);
  }

  return a1;
}

uint64_t sub_CF6070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = sub_E85C1C(a2);
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  return a1;
}

uint64_t sub_CF60BC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  if (*(result + 8) == 1)
  {
    v3 = result;
    sub_195A048(a2, "DrivingToWalkingTransitionModule", 0x20uLL);
    v5 = 1;
    v4 = *(a2 + 32);
    if (v4 >= *(a2 + 40))
    {
      result = sub_CCEBC0((a2 + 24), "Runtime", &v5, v3);
    }

    else
    {
      sub_CCED74(*(a2 + 32), "Runtime", &v5, v3);
      result = v4 + 48;
    }

    *(a2 + 32) = result;
  }

  return result;
}

void sub_CF6180(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_9DA0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_CF61AC(uint64_t *a1, void *a2, unsigned int a3)
{
  v3 = *a1;
  v4 = a1[1] - *a1;
  if (v4)
  {
    v7 = 0;
    v8 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
    v9 = 2147483646;
    v10 = -1;
    v11 = -1;
    do
    {
      v12 = sub_F73E78((*a1 + 24 * v7));
      if (v12)
      {
        for (i = 0; i != v12; ++i)
        {
          v15 = (*(*a2 + 24 * v7) + 24 * i);
          v16 = *v15;
          v17 = v15[1];
          if (v16 == v17)
          {
            v14 = 0;
          }

          else
          {
            v14 = 0;
            do
            {
              while (a3 > 5)
              {
                v14 = 0x7FFFFFFF;
                v16 += 288;
                if (v16 == v17)
                {
                  goto LABEL_7;
                }
              }

              v18 = *(v16 + qword_22AC220[a3]);
              v19 = v18 == 0x7FFFFFFF || v14 == 0x7FFFFFFF;
              v14 += v18;
              if (v19)
              {
                v14 = 0x7FFFFFFF;
              }

              v16 += 288;
            }

            while (v16 != v17);
          }

LABEL_7:
          if (v14 < v9)
          {
            v9 = v14;
            v11 = i;
            v10 = v7;
          }
        }
      }

      ++v7;
    }

    while (v7 != v8);
    v3 = *a1;
  }

  else
  {
    v11 = -1;
    v10 = -1;
  }

  return *nullsub_1(v3 + 24 * v10) + 48 * v11;
}

uint64_t sub_CF632C(uint64_t *a1, uint64_t a2, void *a3)
{
  v3 = sub_3AF114(a3);
  v4 = v3[1];
  *&v65 = *v3;
  *(&v65 + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_36077C(&v66, &v65, 0, 0);
  v5 = *(&v65 + 1);
  if (*(&v65 + 1) && !atomic_fetch_add((*(&v65 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = *a1;
    v7 = a1[1] - *a1;
    if (v7)
    {
      goto LABEL_6;
    }

LABEL_69:
    v12 = -1;
    v11 = -1;
    goto LABEL_70;
  }

  v6 = *a1;
  v7 = a1[1] - *a1;
  if (!v7)
  {
    goto LABEL_69;
  }

LABEL_6:
  v8 = 0;
  v56 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
  v9 = &v69;
  v10 = 0.0;
  v11 = -1;
  v12 = -1;
  do
  {
    v13 = sub_F73E78((*a1 + 24 * v8));
    if (v13)
    {
      v14 = 0;
      v57 = v13;
      v58 = v8;
      while (1)
      {
        v16 = nullsub_1(*a1 + 24 * v8);
        v17 = nullsub_1(*v16 + 48 * v14);
        v60 = v14;
        v61 = v11;
        v62 = v12;
        v18 = *v17;
        v19 = v17[1];
        v20 = 0.0;
        if (*v17 != v19)
        {
          break;
        }

LABEL_10:
        v15 = v20 <= v10;
        if (v20 > v10)
        {
          v10 = v20;
        }

        v11 = v61;
        v12 = v62;
        if (!v15)
        {
          v12 = v60;
        }

        v8 = v58;
        if (!v15)
        {
          v11 = v58;
        }

        v14 = v60 + 1;
        if (v60 + 1 == v57)
        {
          goto LABEL_7;
        }
      }

      v63 = v17[1];
LABEL_20:
      while (1)
      {
        v21 = *sub_73EDC(v18);
        v22 = *(sub_73EDC(v18) + 8);
        if (v21 != v22)
        {
          break;
        }

        v20 = v20 + 0.0;
        v18 += 552;
        if (v18 == v19)
        {
          goto LABEL_10;
        }
      }

      v23 = 0;
      while (1)
      {
        v25 = *v21;
        v24 = 0.0;
        if ((*v21 & 0x8000000000000000) != 0)
        {
          goto LABEL_25;
        }

        v26 = ++v77;
        if (!v66)
        {
          goto LABEL_25;
        }

        v27 = v9;
        if (v69 == v25 || (v27 = &v71, v71 == v25) || (v27 = &v73, v73 == v25) || (v27 = &v75, v75 == v25))
        {
          ++v78;
          *(v27 + 1) = v26;
          v28 = *(v27 + 2);
          if (!v28)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v64 = v18;
          v43 = v9;
          v44 = v74;
          v45 = v72;
          v46 = v70;
          v47 = v76;
          v28 = sub_2D52A4(v66, 21, v25, 1);
          if (v46 >= v26)
          {
            v48 = v26;
          }

          else
          {
            v48 = v46;
          }

          v49 = 84;
          if (v46 >= v26)
          {
            v49 = 0;
          }

          if (v45 < v48)
          {
            v48 = v45;
            v49 = 85;
          }

          if (v44 < v48)
          {
            v49 = 86;
            v48 = v44;
          }

          v50 = v47 >= v48;
          v51 = 87;
          if (v50)
          {
            v51 = v49;
          }

          v19 = v63;
          v52 = &v68[3 * v51];
          *v52 = v25;
          v52[1] = v77;
          v52[2] = v28;
          v9 = v43;
          v18 = v64;
          if (!v28)
          {
            goto LABEL_25;
          }
        }

        v29 = (v28 + *v28);
        v30 = (v29 - *v29);
        v31 = *v30;
        if (v25 >> 62)
        {
          if (v31 < 5)
          {
            goto LABEL_25;
          }

          v32 = v30[2];
          if (!v30[2])
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v31 < 7)
          {
            goto LABEL_25;
          }

          v32 = v30[3];
          if (!v30[3])
          {
            goto LABEL_25;
          }
        }

        v33 = (v29 + v32 + *(v29 + v32));
        if (*v33 > (HIDWORD(v25) & 0x3FFFFFFFu))
        {
          break;
        }

LABEL_25:
        v23 = (v24 + v23);
        v21 += 7;
        if (v21 == v22)
        {
          v20 = v20 + v23;
          v18 += 552;
          if (v18 == v19)
          {
            goto LABEL_10;
          }

          goto LABEL_20;
        }
      }

      v34 = (&v33[(HIDWORD(v25) & 0x3FFFFFFF) + 1] + v33[(HIDWORD(v25) & 0x3FFFFFFF) + 1]);
      v35 = (v34 - *v34);
      v36 = *v35;
      if (v36 >= 0xB && v35[5])
      {
        v37 = *(v34 + v35[5]);
        v38 = v79;
        if (!v79)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v37 = 0xFFFF;
        v38 = v79;
        if (!v79)
        {
LABEL_49:
          if (v37 != 0xFFFF)
          {
            v42 = v37;
LABEL_51:
            v24 = v42 / 1000.0;
            goto LABEL_25;
          }

          v24 = 0.3;
          goto LABEL_25;
        }
      }

      if (v36 >= 0x11)
      {
        v39 = v35[8];
        if (v39)
        {
          v40 = (v34 + v39 + *(v34 + v39));
          if (*v40 >= v38)
          {
            v41 = *(v40 + v38 + 1);
            if ((v41 + 1) > 1u)
            {
              v42 = v41;
              goto LABEL_51;
            }
          }
        }
      }

      goto LABEL_49;
    }

LABEL_7:
    ++v8;
  }

  while (v8 != v56);
  v6 = *a1;
LABEL_70:
  v53 = *nullsub_1(v6 + 24 * v11);
  v54 = v67;
  if (v67 && !atomic_fetch_add(&v67->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v54->__on_zero_shared)(v54);
    std::__shared_weak_count::__release_weak(v54);
  }

  return v53 + 48 * v12;
}

void sub_CF6838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27)
{
  if (a27)
  {
    if (!atomic_fetch_add(&a27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v27 = a1;
      (a27->__on_zero_shared)(a27);
      std::__shared_weak_count::__release_weak(a27);
      a1 = v27;
    }
  }

  _Unwind_Resume(a1);
}

void ***sub_CF76C4(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = v2;
      if (v4 != v2)
      {
        do
        {
          v4 = sub_3EE9A4(v4 - 36);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

uint64_t sub_CF773C(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      *(a1 + 16) = v2;
LABEL_12:
      operator delete(v2);
    }
  }

  else
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      v4 = *(a1 + 32);
      v2 = *(a1 + 24);
      if (v4 != v3)
      {
        do
        {
          if (*(v4 - 1) < 0)
          {
            operator delete(*(v4 - 24));
          }

          v4 -= 32;
        }

        while (v4 != v3);
        v2 = *(a1 + 24);
      }

      *(a1 + 32) = v3;
      goto LABEL_12;
    }
  }

  return a1;
}

uint64_t sub_CF77CC()
{
  v0 = __chkstk_darwin();
  v189 = v1;
  sub_7E9A4(v321);
  v190 = *(sub_3B6890(*v0) + 4);
  __t[0] = std::chrono::system_clock::now();
  v2 = std::chrono::system_clock::to_time_t(__t);
  v187 = sub_E7C414(v0[1]);
  v3 = sub_74700();
  sub_12C408C(&v300, 0, 0);
  memset(v320, 0, 150);
  v319 = 0u;
  v318 = 0u;
  v317 = 0u;
  v316 = 0u;
  v192 = v0;
  if ((v0[10] & 1) == 0)
  {
    operator new();
  }

  v315 = 1;
  v302 |= 0x42u;
  v4 = v312;
  if (!v312)
  {
    v5 = (v301 & 0xFFFFFFFFFFFFFFFCLL);
    if (v301)
    {
      v5 = *v5;
    }

    v4 = sub_12E1948(v5);
    v312 = v4;
  }

  v6 = *(v4 + 4);
  *(v4 + 9) = v190;
  *(v4 + 10) = v2;
  *(v4 + 44) = *(v0 + 80);
  *(v4 + 8) = 2;
  *(v4 + 4) = v6 | 0x1F;
  v7 = v4[3];
  if (v7)
  {
    *(v7 + 4) |= 2u;
    v8 = v7[4];
    if (v8)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v9 = v4[1];
  v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
  if (v9)
  {
    v10 = *v10;
  }

  v7 = sub_12E19C8(v10);
  v4[3] = v7;
  *(v7 + 4) |= 2u;
  v8 = v7[4];
  if (!v8)
  {
LABEL_13:
    v11 = v7[1];
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if (v11)
    {
      v12 = *v12;
    }

    sub_12E1BEC(v12);
    v8 = v13;
    v7[4] = v13;
  }

LABEL_16:
  v14 = nullsub_1(v0[7]);
  v15 = sub_4C4BD8(v0[8]);
  *(v8 + 16) |= 8u;
  *(v8 + 144) = v15;
  sub_7E9A4(v299);
  if (*(v14 + 128) == 1 && !sub_4F96B8(v14))
  {
    sub_3E9400(__t, *v0, v187, v0[7]);
  }

  sub_7E974(v299);
  sub_41B388(v296, *v0);
  sub_41B5DC(v296, v0[8], __t);
  v16 = *(&v316 + 1);
  if (*(&v316 + 1) >= v317)
  {
    v17 = sub_41CC6C(&v316, __t);
  }

  else
  {
    sub_41CBD8(&v316, *(&v316 + 1), __t);
    v17 = v16 + 64;
  }

  *(&v316 + 1) = v17;
  sub_12D8D7C(__t);
  v188 = v4;
  if (v310 && v309 < *v310)
  {
    v18 = &v310[2 * v309++];
    v19 = *(v18 + 1);
  }

  else
  {
    v20 = sub_12E260C(v308);
    v19 = sub_19593CC(&v308, v20);
  }

  sub_41C108(v296, v0[8], __t);
  if (v19 != __t)
  {
    size = v19->__r_.__value_.__l.__size_;
    if ((size & 2) != 0)
    {
      size = 0;
    }

    else if (size)
    {
      size = *(size & 0xFFFFFFFFFFFFFFFCLL);
    }

    rep = __t[1].__d_.__rep_;
    if ((__t[1].__d_.__rep_ & 2) != 0)
    {
      rep = 0;
    }

    else if (__t[1].__d_.__rep_)
    {
      rep = *(__t[1].__d_.__rep_ & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (size == rep)
    {
      sub_12E03F0(v19, __t);
    }

    else
    {
      sub_12E039C(v19, __t);
    }
  }

  sub_12DFCF8(__t);
  v23 = *(&v316 + 1);
  v24 = v316;
  if (v316 == *(&v316 + 1))
  {
    v25 = 0;
  }

  else
  {
    v25 = 0;
    do
    {
      v25 += sub_12D9398(v24);
      v24 += 64;
    }

    while (v24 != v23);
  }

  *&v320[96] = v25;
  *&v320[88] = sub_7EA60(v299);
  v26 = v192;
  v27 = sub_3AF144(*v192);
  sub_4C3BEC(v192[8], __t);
  v28 = *__t[0].__d_.__rep_;
  __p = 0uLL;
  v29 = sub_2BC6DC(v27, v28, &__p);
  if (v286)
  {
    v287 = v286;
    operator delete(v286);
  }

  if (v283.__locale_)
  {
    locale = v283.__locale_;
    operator delete(v283.__locale_);
  }

  v32 = *&v29 > -1 && ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v29 - 1) < 0xFFFFFFFFFFFFFLL || (*&v29 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  v191 = v3;
  if (v32 && v29 > 0.0)
  {
    *(v8 + 16) |= 2u;
    v33 = *(v8 + 128);
    if (!v33)
    {
      v34 = *(v8 + 8);
      v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
      if (v34)
      {
        v35 = *v35;
      }

      v33 = sub_12E276C(v35);
      *(v8 + 128) = v33;
      v26 = v192;
    }

    v36 = v29;
    *(v33 + 16) |= 1u;
    *(v33 + 24) = v36;
  }

  v38 = v26[8];
  v37 = v26[9];
  *(v8 + 16) |= 4u;
  v39 = *(v8 + 136);
  if (!v39)
  {
    v40 = *(v8 + 8);
    v41 = (v40 & 0xFFFFFFFFFFFFFFFCLL);
    if (v40)
    {
      v41 = *v41;
    }

    v39 = sub_12E27E8(v41);
    *(v8 + 136) = v39;
  }

  v42 = *(sub_4C4AD0(v38) + 16);
  sub_4C35F8(v38, &__p);
  *&__t[0].__d_.__rep_ = __p;
  v283.__locale_ = v271;
  locale = 0;
  v286 = 0;
  v285 = 0;
  if (v273 != v272)
  {
    if (((v273 - v272) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v288 = 0;
  v287 = 0;
  v289 = 0;
  if (v275 != v274)
  {
    if (((v275 - v274) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v272 != v273)
  {
    if (v42 == 1000000000)
    {
      v43 = 0;
    }

    else if (v283.__locale_ == -1)
    {
      v43 = 1;
    }

    else
    {
      v44 = (v283.__locale_ + 1);
      v45 = (locale + 16 * v283.__locale_ + 16);
      v46 = (16 * v283.__locale_ + 8);
      v43 = 1;
      do
      {
        v47 = *v46;
        v46 += 2;
        v48 = v43 - (v47 - __t[1].__d_.__rep_);
        if (v43 < v47 - __t[1].__d_.__rep_)
        {
          break;
        }

        v283.__locale_ = v44;
        v49 = *v45++;
        *&__t[0].__d_.__rep_ = v49;
        v44 = (v44 + 1);
        v43 = v48;
      }

      while (v44);
    }

    __t[1].__d_.__rep_ += v43;
  }

  sub_4C36F8(v38, &v258);
  v50 = v287;
  v51 = v288;
  v52 = v262;
  v53 = v263;
  if (v287 == v288 || v262 == v263)
  {
    goto LABEL_89;
  }

  if (v283.__locale_ != v259)
  {
    while (1)
    {
LABEL_90:
      v55 = sub_4D1F50(__t[0].__d_.__rep_, __t[1].__d_.__rep_);
      v56 = (*v55 - **v55);
      if (*v56 >= 0x1Du && (v57 = v56[14]) != 0)
      {
        if (*(v55 + 38))
        {
          v58 = -*(*v55 + v57);
        }

        else
        {
          v58 = *(*v55 + v57);
        }

        v59 = *(v39 + 32);
        if (v59 != *(v39 + 36))
        {
LABEL_96:
          *(*(v39 + 40) + 8 * v59) = v58;
          v60 = v59 + 1;
          goto LABEL_99;
        }
      }

      else
      {
        v58 = 0;
        v59 = *(v39 + 32);
        if (v59 != *(v39 + 36))
        {
          goto LABEL_96;
        }
      }

      v60 = v59 + 1;
      sub_1959094((v39 + 32), v59 + 1);
      *(*(v39 + 40) + 8 * v59) = v58;
LABEL_99:
      *(v39 + 32) = v60;
      sub_3E3AF4(__t);
      v50 = v287;
      v51 = v288;
      v52 = v262;
      v53 = v263;
      if (v287 == v288 || v262 == v263)
      {
LABEL_89:
        if ((v50 == v51) == (v52 == v53))
        {
          goto LABEL_127;
        }
      }

      else if (v283.__locale_ == v259)
      {
        if (__t[0].__d_.__rep_)
        {
          v61 = __t[1].__d_.__rep_;
          v62 = sub_4D1DC0(__t[0].__d_.__rep_);
          v63 = v61 < v62;
          v64 = v258;
          if (!v258)
          {
            goto LABEL_118;
          }
        }

        else
        {
          v64 = v258;
          if (!v258)
          {
            goto LABEL_127;
          }

          v63 = 0;
        }

        v65 = *(&v258 + 1);
        v66 = sub_4D1DC0(v64);
        if (v65 < v66 && v63)
        {
LABEL_113:
          v68 = sub_4D1F50(__t[0].__d_.__rep_, __t[1].__d_.__rep_);
          if (v68 == sub_4D1F50(v258, *(&v258 + 1)))
          {
            goto LABEL_127;
          }
        }

        else if (((v63 ^ (v65 < v66)) & 1) == 0)
        {
          goto LABEL_127;
        }
      }
    }
  }

  if (__t[0].__d_.__rep_)
  {
    v61 = __t[1].__d_.__rep_;
    v62 = sub_4D1DC0(__t[0].__d_.__rep_);
    v69 = v61 < v62;
    v70 = v258;
    if (!v258)
    {
LABEL_118:
      if (v61 < v62)
      {
        goto LABEL_90;
      }

      goto LABEL_127;
    }
  }

  else
  {
    v70 = v258;
    if (!v258)
    {
      goto LABEL_127;
    }

    v69 = 0;
  }

  v71 = *(&v258 + 1);
  v72 = sub_4D1DC0(v70);
  if (v71 < v72 && v69)
  {
    goto LABEL_113;
  }

  if (v69 != v71 < v72)
  {
    goto LABEL_90;
  }

LABEL_127:
  if (v262)
  {
    v263 = v262;
    operator delete(v262);
  }

  if (v260)
  {
    v261 = v260;
    operator delete(v260);
  }

  if (v287)
  {
    v288 = v287;
    operator delete(v287);
  }

  if (locale)
  {
    v285 = locale;
    operator delete(locale);
  }

  if (v274)
  {
    v275 = v274;
    operator delete(v274);
  }

  if (v272)
  {
    v273 = v272;
    operator delete(v272);
  }

  if (sub_F63D58(v37))
  {
    goto LABEL_199;
  }

  sub_F6371C(v37, &__p);
  sub_F63818(v37, &__dst);
  sub_CFBED4(&__dst, v42 == 1000000000, &v248);
LABEL_141:
  if (v274 == v275 || v252 == v253)
  {
    if ((v274 == v275) != (v252 == v253))
    {
      goto LABEL_162;
    }
  }

  else
  {
    if (v271 != v249)
    {
      goto LABEL_162;
    }

    if (__p)
    {
      v75 = *(&__p + 1);
      v76 = sub_F6D024(__p);
      v77 = v75 < v76;
      v78 = v248.n128_u64[0];
      if (!v248.n128_u64[0])
      {
        if (v75 >= v76)
        {
          goto LABEL_187;
        }

LABEL_162:
        v83 = sub_F6D17C(__p, *(&__p + 1));
        v84 = (*v83 - **v83);
        if (*v84 >= 0x1Du && (v85 = v84[14]) != 0)
        {
          if (*(v83 + 38))
          {
            v86 = -*(*v83 + v85);
          }

          else
          {
            v86 = *(*v83 + v85);
          }

          v87 = *(v39 + 16);
          if (v87 != *(v39 + 20))
          {
            goto LABEL_168;
          }
        }

        else
        {
          v86 = 0;
          v87 = *(v39 + 16);
          if (v87 != *(v39 + 20))
          {
LABEL_168:
            *(*(v39 + 24) + 8 * v87) = v86;
            v88 = v87 + 1;
LABEL_171:
            *(v39 + 16) = v88;
            v89 = v271;
            ++*(&__p + 1);
            while (1)
            {
              if (v89 >= ((v275 - v274) >> 4) - 1)
              {
                goto LABEL_141;
              }

              v90 = v274 + 16 * v89;
              if (__p)
              {
                v91 = *(&__p + 1);
                v92 = sub_F6D024(__p);
                v93 = v91 < v92;
                v94 = *v90;
                if (!*v90)
                {
                  if (v91 < v92)
                  {
                    goto LABEL_141;
                  }

                  goto LABEL_173;
                }
              }

              else
              {
                v94 = *v90;
                if (!*v90)
                {
                  goto LABEL_173;
                }

                v93 = 0;
              }

              v95 = *(v90 + 1);
              v96 = sub_F6D024(v94);
              if (v95 < v96 && v93)
              {
                v98 = sub_F6D17C(__p, *(&__p + 1));
                if (v98 != sub_F6D17C(*v90, *(v90 + 1)))
                {
                  goto LABEL_141;
                }
              }

              else if ((v93 ^ (v95 < v96)))
              {
                goto LABEL_141;
              }

LABEL_173:
              v89 = v271 + 1;
              v271 = v89;
              __p = *(v272 + v89);
            }
          }
        }

        v88 = v87 + 1;
        sub_1959094((v39 + 16), v87 + 1);
        *(*(v39 + 24) + 8 * v87) = v86;
        goto LABEL_171;
      }
    }

    else
    {
      v78 = v248.n128_u64[0];
      if (!v248.n128_u64[0])
      {
        goto LABEL_187;
      }

      v77 = 0;
    }

    v79 = v248.n128_u64[1];
    v80 = sub_F6D024(v78);
    if (v79 < v80 && v77)
    {
      v82 = sub_F6D17C(__p, *(&__p + 1));
      if (v82 == sub_F6D17C(v248.n128_u64[0], v248.n128_u64[1]))
      {
        goto LABEL_187;
      }

      goto LABEL_162;
    }

    if (v77 != v79 < v80)
    {
      goto LABEL_162;
    }
  }

LABEL_187:
  if (v252)
  {
    v253 = v252;
    operator delete(v252);
  }

  if (v250)
  {
    v251 = v250;
    operator delete(v250);
  }

  if (v326)
  {
    v327 = v326;
    operator delete(v326);
  }

  if (v323)
  {
    v324 = v323;
    operator delete(v323);
  }

  if (v274)
  {
    v275 = v274;
    operator delete(v274);
  }

  if (v272)
  {
    v273 = v272;
    operator delete(v272);
  }

LABEL_199:
  if (sub_E7C414(v192[1]) == 2 && (sub_E89A2C(*v192) & 1) == 0)
  {
    v99 = sub_E87A94(v192[1]);
    LODWORD(v258) = v99;
    v100 = sub_5FC64(v192[8]);
    v101 = sub_445EF4(v192[8]);
    if (v100 == v101)
    {
      v248.n128_u32[0] = 0;
    }

    else
    {
      v102 = 0;
      do
      {
        v102 += sub_4D26B4(v100, 0);
        v100 += 274;
      }

      while (v100 != v101);
      v248.n128_u32[0] = v102;
    }

    operator new();
  }

  v103 = v192[4];
  v105 = *v103;
  v104 = v103[1];
  if (*v103 != v104)
  {
    do
    {
      sub_64E090(&v300, v105);
      v105 = (v105 + 24);
    }

    while (v105 != v104);
  }

  v302 |= 4u;
  v106 = v313;
  if (!v313)
  {
    v107 = (v301 & 0xFFFFFFFFFFFFFFFCLL);
    if (v301)
    {
      v107 = *v107;
    }

    v106 = sub_12D0DA4(v107);
    v313 = v106;
  }

  v108 = sub_3AF114(*v192);
  v109 = sub_73EBC(*v108);
  v110 = sub_420344(v109);
  *(v106 + 4) |= 2u;
  v106[4] = v110;
  v302 |= 4u;
  v111 = v313;
  if (!v313)
  {
    v112 = (v301 & 0xFFFFFFFFFFFFFFFCLL);
    if (v301)
    {
      v112 = *v112;
    }

    v111 = sub_12D0DA4(v112);
    v313 = v111;
  }

  v113 = sub_3AF144(*v192);
  v114 = sub_2BC534(v113);
  *(v111 + 4) |= 1u;
  v115 = v111[1];
  v116 = (v115 & 0xFFFFFFFFFFFFFFFCLL);
  if (v115)
  {
    v116 = *v116;
  }

  sub_194EA1C(v111 + 3, v114, v116);
  v117 = *sub_3B6890(*v192);
  v302 |= 0x10u;
  v314 = v117;
  v118 = sub_74700();
  v119 = sub_73EEC(v118);
  v302 |= 1u;
  v120 = (v301 & 0xFFFFFFFFFFFFFFFCLL);
  if (v301)
  {
    v120 = *v120;
  }

  sub_194EA1C(&v311, v119, v120);
  sub_7E9A4(v295);
  if (*v192[2] != v192[2][1])
  {
    sub_3DC210(__t, *v192, v187);
  }

  *&v320[72] = sub_7EA60(v295);
  v121 = v192[2];
  v123 = *v121;
  v122 = v121[1];
  if (*v121 != v122)
  {
    sub_7E9A4(__t);
    sub_4113A8(&v258, *v192);
    v124 = v192[2];
    v125 = sub_58BBC(v192[3]);
    v126 = *v192;
    *&__p = v192[11];
    sub_4113AC(&v258, v124, v125, v126, &__p, &v300);
    if (v307)
    {
      v127 = (v307 + 8);
    }

    else
    {
      v127 = 0;
    }

    if (v306)
    {
      v128 = 0;
      v129 = 8 * v306;
      do
      {
        v128 += sub_12C27E0(*v127++);
        v129 -= 8;
      }

      while (v129);
    }

    else
    {
      v128 = 0;
    }

    *&v320[112] = v128;
    *&v320[104] = sub_7EA60(__t);
    v130 = v192[2];
    v123 = *v130;
    v122 = v130[1];
  }

  v131 = v191;
  if (v123 != v122)
  {
    while (sub_4C4AC8(v123))
    {
      v123 += 128;
      if (v123 == v122)
      {
        v123 = v122;
        break;
      }
    }

    if (v123 != v192[2][1])
    {
      sub_4C37CC(v192[8], &__p);
      sub_4C37CC(v123, &v258);
      v240 = __p;
      v241 = v271;
      v242 = 0;
      v244 = 0;
      v243 = 0;
      if (v273 != v272)
      {
        if (((v273 - v272) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v246 = 0;
      v245 = 0;
      v247 = 0;
      if (v275 != v274)
      {
        if (((v275 - v274) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v232 = v276;
      v233 = v277;
      v234 = 0;
      v236 = 0;
      v235 = 0;
      if (v279 != v278)
      {
        if (((v279 - v278) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v238 = 0;
      v237 = 0;
      v239 = 0;
      if (v281 != v280)
      {
        if (((v281 - v280) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v224 = v258;
      v225 = v259;
      v226 = 0;
      v227 = 0;
      v228 = 0;
      if (v261 != v260)
      {
        if (((v261 - v260) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v229 = 0;
      v230 = 0;
      v231 = 0;
      if (v263 != v262)
      {
        if (((v263 - v262) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v216 = v264;
      v217 = v265;
      v218 = 0;
      v219 = 0;
      v220 = 0;
      if (v267 != v266)
      {
        if (((v267 - v266) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v221 = 0;
      v222 = 0;
      v223 = 0;
      if (v269 != v268)
      {
        if (((v269 - v268) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      sub_4E42F8(&v240, &v232, &v224, &v216, &v248);
      if (v221)
      {
        v222 = v221;
        operator delete(v221);
      }

      if (v218)
      {
        v219 = v218;
        operator delete(v218);
      }

      if (v229)
      {
        v230 = v229;
        operator delete(v229);
      }

      if (v226)
      {
        v227 = v226;
        operator delete(v226);
      }

      if (v237)
      {
        v238 = v237;
        operator delete(v237);
      }

      if (v234)
      {
        v235 = v234;
        operator delete(v234);
      }

      if (v245)
      {
        v246 = v245;
        operator delete(v245);
      }

      if (v242)
      {
        v243 = v242;
        operator delete(v242);
      }

      *&__t[0].__d_.__rep_ = v276;
      v283.__locale_ = v277;
      locale = 0;
      v286 = 0;
      v285 = 0;
      if (v279 != v278)
      {
        if (((v279 - v278) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v288 = 0;
      v287 = 0;
      v289 = 0;
      if (v281 != v280)
      {
        if (((v281 - v280) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      v132 = v252 != v253;
      if (v252 != v253)
      {
        v208 = __p;
        v209 = v271;
        v210 = 0;
        v211 = 0;
        v212 = 0;
        if (v273 != v272)
        {
          if (((v273 - v272) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v213 = 0;
        v214 = 0;
        v215 = 0;
        if (v275 != v274)
        {
          if (((v275 - v274) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v200 = v248;
        v201 = v249;
        v202 = 0;
        v203 = 0;
        v204 = 0;
        if (v251 != v250)
        {
          if (((v251 - v250) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v205 = 0;
        v206 = 0;
        v207 = 0;
        if (v253 != v252)
        {
          if (((v253 - v252) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        sub_3E8394(&v208, &v200, __t);
        if (v205)
        {
          v206 = v205;
          operator delete(v205);
        }

        if (v202)
        {
          v203 = v202;
          operator delete(v202);
        }

        if (v213)
        {
          v214 = v213;
          operator delete(v213);
        }

        if (v210)
        {
          v211 = v210;
          operator delete(v210);
        }

        *&__dst.__r_.__value_.__l.__data_ = *&__t[0].__d_.__rep_;
        __dst.__r_.__value_.__r.__words[2] = v283.__locale_;
        v323 = 0;
        v324 = 0;
        v325 = 0;
        if (v285 != locale)
        {
          if (((v285 - locale) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v326 = 0;
        v327 = 0;
        v328 = 0;
        if (v288 != v287)
        {
          if (((v288 - v287) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v193 = v290;
        v194 = 0;
        v195 = 0;
        v196 = 0;
        if (v292 != v291)
        {
          if (((v292 - v291) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v197 = 0;
        v198 = 0;
        v199 = 0;
        if (v294 != v293)
        {
          if (((v294 - v293) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        if (v293)
        {
          v294 = v293;
          operator delete(v293);
        }

        if (v291)
        {
          v292 = v291;
          operator delete(v291);
        }

        if (v287)
        {
          v288 = v287;
          operator delete(v287);
        }

        if (locale)
        {
          v285 = locale;
          operator delete(locale);
        }

        sub_4D1F50(v248.n128_u64[0], v248.n128_i64[1]);
        v132 = 0;
      }

      sub_4E4B18(v192[8], 0, 5);
      sub_4E4B18(v123, 0, 5);
      v133 = v192[8];
      v134 = sub_3AF6B4(*v192);
      sub_4E4E0C(v133, v134);
      v135 = v192[3];
      if (sub_5EBC70(v135))
      {
        v136 = **sub_5EBC28(v135);
        if (v136 > 0x29)
        {
          v137 = "UNKNOWN";
        }

        else
        {
          v137 = off_26733F8[v136];
        }

        v138 = strlen(v137);
        if (v138 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        v139 = v138;
        if (v138 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v138;
        if (v138)
        {
          memcpy(&__dst, v137, v138);
        }

        __dst.__r_.__value_.__s.__data_[v139] = 0;
        v140 = (*sub_5EBC28(v135) + 816);
        v141 = *(sub_5EBC28(v135) + 8);
        while (v140 != v141)
        {
          while (1)
          {
            v142 = *v140;
            v143 = "UNKNOWN";
            if (v142 <= 0x29)
            {
              v143 = off_26733F8[v142];
            }

            v144 = strlen(v143);
            if (v144 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_3244();
            }

            v145 = v144;
            if (v144 >= 0x17)
            {
              operator new();
            }

            HIBYTE(v283.__locale_) = v144;
            if (!v144)
            {
              break;
            }

            memcpy(__t, v143, v144);
            *(&__t[0].__d_.__rep_ + v145) = 0;
            locale_high = SHIBYTE(v283.__locale_);
            if ((SHIBYTE(v283.__locale_) & 0x80000000) == 0)
            {
              goto LABEL_348;
            }

LABEL_353:
            if (__t[1].__d_.__rep_ != 4 || *__t[0].__d_.__rep_ != 1162760014)
            {
              goto LABEL_355;
            }

LABEL_340:
            if ((locale_high & 0x80) == 0)
            {
              goto LABEL_341;
            }

LABEL_372:
            operator delete(__t[0].__d_.__rep_);
            v140 += 204;
            if (v140 == v141)
            {
              goto LABEL_373;
            }
          }

          LOBYTE(__t[0].__d_.__rep_) = 0;
          locale_high = SHIBYTE(v283.__locale_);
          if (SHIBYTE(v283.__locale_) < 0)
          {
            goto LABEL_353;
          }

LABEL_348:
          if (locale_high == 4 && LODWORD(__t[0].__d_.__rep_) == 1162760014)
          {
            goto LABEL_340;
          }

LABEL_355:
          v147 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
          if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            v147 = __dst.__r_.__value_.__l.__size_;
            if ((__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1 == __dst.__r_.__value_.__l.__size_)
            {
              if ((__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
              {
                sub_3244();
              }

LABEL_360:
              operator new();
            }

            p_dst = __dst.__r_.__value_.__r.__words[0];
          }

          else
          {
            p_dst = &__dst;
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) == 22)
            {
              goto LABEL_360;
            }
          }

          p_dst->__r_.__value_.__s.__data_[v147] = 44;
          v149 = v147 + 1;
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            __dst.__r_.__value_.__l.__size_ = v149;
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v149 & 0x7F;
          }

          p_dst->__r_.__value_.__s.__data_[v149] = 0;
          if (SHIBYTE(v283.__locale_) >= 0)
          {
            v150 = __t;
          }

          else
          {
            v150 = __t[0].__d_.__rep_;
          }

          if (SHIBYTE(v283.__locale_) >= 0)
          {
            v151 = HIBYTE(v283.__locale_);
          }

          else
          {
            v151 = __t[1].__d_.__rep_;
          }

          std::string::append(&__dst, v150, v151);
          if ((HIBYTE(v283.__locale_) & 0x80) != 0)
          {
            goto LABEL_372;
          }

LABEL_341:
          v140 += 204;
        }
      }

      else
      {
        *(&__dst.__r_.__value_.__s + 23) = 4;
        strcpy(&__dst, "NONE");
      }

LABEL_373:
      v131 = v191;
      sub_73EBC(v191);
      sub_73EC4(v191);
      sub_73EDC(v191);
      if (!v132 || !sub_7E7E4(1u))
      {
        goto LABEL_397;
      }

      sub_19594F8(__t);
      v152 = sub_4A5C(__t, "FasterRoute with >200 minutes to divergence: ", 45);
      v153 = sub_73F1C(v191);
      v154 = *(v153 + 23);
      if (v154 >= 0)
      {
        v155 = v153;
      }

      else
      {
        v155 = *v153;
      }

      if (v154 >= 0)
      {
        v156 = *(v153 + 23);
      }

      else
      {
        v156 = *(v153 + 8);
      }

      sub_4A5C(v152, v155, v156);
      if ((v292 & 0x10) != 0)
      {
        v158 = v291;
        if (v291 < v288)
        {
          v291 = v288;
          v158 = v288;
        }

        v159 = v287;
        v157 = v158 - v287;
        if ((v158 - v287) > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_458;
        }
      }

      else
      {
        if ((v292 & 8) == 0)
        {
          v157 = 0;
          *(&v193.__r_.__value_.__s + 23) = 0;
LABEL_392:
          v193.__r_.__value_.__s.__data_[v157] = 0;
          sub_7E854(&v193, 1u);
          if (SHIBYTE(v193.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v193.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v290.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v290.__r_.__value_.__l.__data_);
          }

          std::locale::~locale(&v283);
          std::ostream::~ostream();
          std::ios::~ios();
          v131 = v191;
LABEL_397:
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          if (v256)
          {
            v257 = v256;
            operator delete(v256);
          }

          if (v254)
          {
            v255 = v254;
            operator delete(v254);
          }

          if (v252)
          {
            v253 = v252;
            operator delete(v252);
          }

          if (v250)
          {
            v251 = v250;
            operator delete(v250);
          }

          if (v268)
          {
            v269 = v268;
            operator delete(v268);
          }

          if (v266)
          {
            v267 = v266;
            operator delete(v266);
          }

          if (v262)
          {
            v263 = v262;
            operator delete(v262);
          }

          if (v260)
          {
            v261 = v260;
            operator delete(v260);
          }

          if (v280)
          {
            v281 = v280;
            operator delete(v280);
          }

          if (v278)
          {
            v279 = v278;
            operator delete(v278);
          }

          if (v274)
          {
            v275 = v274;
            operator delete(v274);
          }

          if (v272)
          {
            v273 = v272;
            operator delete(v272);
          }

          goto LABEL_423;
        }

        v159 = locale;
        v157 = v286 - locale;
        if ((v286 - locale) > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_458:
          sub_3244();
        }
      }

      if (v157 >= 0x17)
      {
        operator new();
      }

      *(&v193.__r_.__value_.__s + 23) = v157;
      if (v157)
      {
        memmove(&v193, v159, v157);
      }

      goto LABEL_392;
    }
  }

LABEL_423:
  if ((sub_73F04(v131) & 1) == 0 && sub_4C513C(v192[8], 7))
  {
    v160 = sub_3AF6B4(*v192);
    v161 = *(sub_4C4AE4(v192[8]) + 32);
    sub_4E4E0C(v192[8], v160);
    v162 = sub_4C4AE4(v192[8]);
    sub_2B51D8(v160, *(v162 + 32) & 0xFFFFFFFFFFFFLL);
    v163 = sub_2B51D8(v160, v161 & 0xFFFFFFFFFFFFLL);
    v164 = (v163 - *v163);
    if (*v164 >= 0x41u && (v165 = v164[32]) != 0)
    {
      v166 = (v163 + v165 + *(v163 + v165));
    }

    else
    {
      v166 = 0;
    }

    sub_40C268(v166, (v161 & 0xFF000000000000) == 0, 1, __t);
    v167 = __t[0].__d_.__rep_;
    if (__t[0].__d_.__rep_)
    {
      v168 = __t[1].__d_.__rep_;
      v169 = __t[0].__d_.__rep_;
      if (__t[0].__d_.__rep_ != __t[1].__d_.__rep_)
      {
        do
        {
          v170 = *(v168 - 1);
          v168 -= 3;
          if (v170 < 0)
          {
            operator delete(*v168);
          }
        }

        while (v168 != v167);
        v169 = __t[0].__d_.__rep_;
      }

      __t[1].__d_.__rep_ = v167;
      operator delete(v169);
    }

    v171 = sub_4C4AE4(v192[8]);
    v172 = sub_31DDCC(v160, *(v171 + 32) & 0xFFFFFFFFFFFFFFLL);
    sub_40C59C(v160, v172, &v258);
    v173 = sub_2B51D8(v160, v161 & 0xFFFFFFFFFFFFLL);
    v174 = (v173 - *v173);
    if (*v174 >= 0x41u && (v175 = v174[32]) != 0)
    {
      v176 = (v173 + v175 + *(v173 + v175));
    }

    else
    {
      v176 = 0;
    }

    sub_40C268(v176, (v161 & 0xFF000000000000) == 0, 1, &v248);
    v177 = sub_4C4AE4(v192[8]);
    sub_320EC8(v160, *(v177 + 32) | (*(v177 + 36) << 32), &v193);
    sub_386C(&__p, v190);
  }

  if (sub_E6F06C(v192[11]))
  {
    sub_3F2C88(&__p, *v192);
  }

  if (sub_74234(v191))
  {
    v178 = v303;
    if (v303 == v304)
    {
      v179 = v303 + 1;
      sub_1958E5C(&v303, v303 + 1);
      *(v305 + 4 * v178) = 1;
    }

    else
    {
      *(v305 + 4 * v303) = 1;
      v179 = v178 + 1;
    }

    v303 = v179;
  }

  if (sub_7423C(v191))
  {
    v180 = v303;
    if (v303 == v304)
    {
      v181 = v303 + 1;
      sub_1958E5C(&v303, v303 + 1);
      *(v305 + 4 * v180) = 2;
    }

    else
    {
      *(v305 + 4 * v303) = 2;
      v181 = v180 + 1;
    }

    v303 = v181;
  }

  *&v320[16] = sub_12D1FD0(v188);
  *&v320[8] = round(sub_7EA60(v321));
  *v189 = 1;
  sub_CFBFF0((v189 + 8), &v300);
  v182 = *&v320[120];
  *(v189 + 432) = *&v320[104];
  *(v189 + 448) = v182;
  *(v189 + 464) = *&v320[136];
  v183 = *&v320[56];
  *(v189 + 368) = *&v320[40];
  *(v189 + 384) = v183;
  v184 = *&v320[88];
  *(v189 + 400) = *&v320[72];
  *(v189 + 416) = v184;
  v185 = *&v320[24];
  *(v189 + 336) = *&v320[8];
  *(v189 + 352) = v185;
  if (v297)
  {
    v298 = v297;
    operator delete(v297);
  }

  return sub_CD5434(&v300);
}

void sub_CFB5A0(_Unwind_Exception *a1)
{
  v2 = STACK[0x1C60];
  if (STACK[0x1C60])
  {
    STACK[0x1C68] = v2;
    operator delete(v2);
  }

  sub_CD5434(&STACK[0x1C90]);
  _Unwind_Resume(a1);
}

uint64_t sub_CFBED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_43F5CC(a3, a1);
  if (*(a1 + 24) != *(a1 + 32))
  {
    v6 = -a2;
    if (a2 < 0)
    {
      v15 = *(result + 48);
      v16 = (*(result + 56) - v15) >> 4;
      v17 = *(result + 16);
      if (v17 < v16 - 1)
      {
        v18 = v17 + 1;
        v19 = 16 * v17;
        v20 = (16 * v17 + *(result + 24) + 16);
        v21 = (v19 + v15 + 8);
        do
        {
          v22 = *v21;
          v21 += 2;
          v23 = v22 - *(result + 8);
          v24 = __OFSUB__(v6, v23);
          v25 = v6 - v23;
          if (v25 < 0 != v24)
          {
            break;
          }

          *(result + 16) = v18;
          v26 = *v20++;
          *result = v26;
          ++v18;
          v6 = v25;
        }

        while (v16 != v18);
      }
    }

    else if (a2)
    {
      v7 = *(result + 16);
      if (v7)
      {
        v8 = v7 - 1;
        v9 = 16 * v7;
        v10 = (16 * v7 + *(result + 48) - 16);
        v11 = (v9 + *(result + 24) + 8);
        do
        {
          v12 = *v11;
          v11 -= 2;
          v13 = *(result + 8) - v12;
          if (v13 >= -v6)
          {
            break;
          }

          v6 += v13;
          *(result + 16) = v8;
          v14 = *v10--;
          *result = v14;
          --v8;
        }

        while (v8 != -1);
      }
    }

    *(result + 8) += v6;
  }

  return result;
}

void *sub_CFBFF0(void *a1, uint64_t a2)
{
  sub_12C408C(a1, 0, 0);
  if (a1 != a2)
  {
    v4 = a1[1];
    if ((v4 & 2) != 0)
    {
      v4 = 0;
    }

    else if (v4)
    {
      v4 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v5 = *(a2 + 8);
    if ((v5 & 2) != 0)
    {
      v5 = 0;
    }

    else if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v4 == v5)
    {
      sub_12C58C0(a1, a2);
    }

    else
    {
      sub_12C5844(a1, a2);
    }
  }

  a1[32] = 0;
  a1[33] = 0;
  a1[34] = 0;
  *(a1 + 16) = *(a2 + 256);
  a1[34] = *(a2 + 272);
  *(a2 + 256) = 0;
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  a1[35] = 0;
  a1[36] = 0;
  a1[37] = 0;
  a1[35] = *(a2 + 280);
  *(a1 + 18) = *(a2 + 288);
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
  a1[38] = 0;
  a1[39] = 0;
  a1[40] = 0;
  *(a1 + 19) = *(a2 + 304);
  a1[40] = *(a2 + 320);
  *(a2 + 304) = 0;
  *(a2 + 312) = 0;
  *(a2 + 320) = 0;
  return a1;
}

void sub_CFC0F0()
{
  byte_27B4737 = 3;
  LODWORD(qword_27B4720) = 5136193;
  byte_27B474F = 3;
  LODWORD(qword_27B4738) = 5136194;
  byte_27B4767 = 3;
  LODWORD(qword_27B4750) = 5136195;
  byte_27B477F = 15;
  strcpy(&qword_27B4768, "vehicle_mass_kg");
  byte_27B4797 = 21;
  strcpy(&xmmword_27B4780, "vehicle_cargo_mass_kg");
  byte_27B47AF = 19;
  strcpy(&qword_27B4798, "vehicle_aux_power_w");
  byte_27B47C7 = 15;
  strcpy(&qword_27B47B0, "dcdc_efficiency");
  strcpy(&qword_27B47C8, "drive_train_efficiency");
  HIBYTE(word_27B47DE) = 22;
  operator new();
}

void sub_CFC4F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_objecta, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B46E0)
  {
    qword_27B46E8 = qword_27B46E0;
    operator delete(qword_27B46E0);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_CFC5EC()
{
  v0 = __chkstk_darwin();
  sub_7E9A4(v11);
  LOBYTE(v2) = 0;
  v3 = 0;
  v4 = 0uLL;
  v5 = 0;
  sub_60AB38(&v6);
  bzero(&v7, 0x270uLL);
  v8 = 0x8000000080000000;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  v10 = 0;
  sub_60943C(&v1, *(v0 + 1864), v0 + 24);
  sub_6096C8();
}

void sub_CFC8FC(_Unwind_Exception *a1)
{
  v2 = STACK[0x2130];
  if (STACK[0x2130])
  {
    STACK[0x2138] = v2;
    operator delete(v2);
    sub_CFD7BC(&STACK[0x2160]);
    _Unwind_Resume(a1);
  }

  sub_CFD7BC(&STACK[0x2160]);
  _Unwind_Resume(a1);
}

void sub_CFC948(_Unwind_Exception *a1)
{
  sub_5DAA94((v1 + 24));
  if (*(v1 + 23) < 0)
  {
    operator delete(STACK[0x2160]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_CFC96C(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  v5 = (a1 + 24);
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 24);
    if (v7 != v6)
    {
      do
      {
        v7 = sub_5C1158(v7 - 7808);
      }

      while (v7 != v6);
      v8 = *v5;
    }

    *(a1 + 32) = v6;
    operator delete(v8);
    *v5 = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  sub_CFCB04(a1 + 48, (a2 + 3));
  v9 = *(a1 + 7856);
  if (v9)
  {
    v10 = (a1 + 7856);
    v11 = *(a1 + 7864);
    v12 = *(a1 + 7856);
    if (v11 != v9)
    {
      do
      {
        v11 = sub_3A9518(v11 - 1120);
      }

      while (v11 != v9);
      v12 = *v10;
    }

    *(a1 + 7864) = v9;
    operator delete(v12);
    *v10 = 0;
    *(a1 + 7864) = 0;
    *(a1 + 7872) = 0;
  }

  *(a1 + 7856) = a2[491];
  *(a1 + 7872) = *(a2 + 984);
  *(a2 + 982) = 0;
  *(a2 + 983) = 0;
  *(a2 + 984) = 0;
  v13 = *(a1 + 7880);
  if (v13)
  {
    v14 = (a1 + 7880);
    v15 = *(a1 + 7888);
    v16 = *(a1 + 7880);
    if (v15 != v13)
    {
      do
      {
        v15 = sub_5C0F34(v15 - 816);
      }

      while (v15 != v13);
      v16 = *v14;
    }

    *(a1 + 7888) = v13;
    operator delete(v16);
    *v14 = 0;
    *(a1 + 7888) = 0;
    *(a1 + 7896) = 0;
  }

  *(a1 + 7880) = *(a2 + 985);
  *(a1 + 7888) = a2[493];
  *(a2 + 7880) = 0u;
  *(a2 + 987) = 0;
  return a1;
}

uint64_t sub_CFCB04(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(a1 + 8);
    v6 = v4;
    if (v5 != v4)
    {
      do
      {
        v5 = sub_5C186C(v5 - 12656);
      }

      while (v5 != v4);
      v6 = *a1;
    }

    *(a1 + 8) = v4;
    operator delete(v6);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v7 = (a1 + 24);
  v8 = *(a1 + 24);
  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 24);
    if (v9 != v8)
    {
      do
      {
        v9 -= 176;
        sub_5C17B4(v9);
      }

      while (v9 != v8);
      v10 = *v7;
    }

    *(a1 + 32) = v8;
    operator delete(v10);
    *v7 = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v11 = *(a2 + 48);
  v12 = (a1 + 136);
  v13 = *(a1 + 136);
  *(a1 + 64) = *(a2 + 64);
  v15 = *(a2 + 96);
  v14 = *(a2 + 112);
  v16 = *(a2 + 128);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 128) = v16;
  *(a1 + 112) = v14;
  *(a1 + 96) = v15;
  *(a1 + 48) = v11;
  if (v13)
  {
    v17 = *(a1 + 144);
    v18 = v13;
    if (v17 != v13)
    {
      do
      {
        if (*(v17 - 32) == 1)
        {
          sub_3A9518((v17 - 1152));
        }

        v17 -= 1168;
      }

      while (v17 != v13);
      v18 = *v12;
    }

    *(a1 + 144) = v13;
    operator delete(v18);
    *v12 = 0;
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
  }

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  v19 = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 160) = v19;
  sub_53D784(a1 + 176, a2 + 176);
  sub_53D784(a1 + 336, a2 + 336);
  sub_53D784(a1 + 496, a2 + 496);
  sub_53D784(a1 + 656, a2 + 656);
  sub_53D784(a1 + 816, a2 + 816);
  v20 = *(a1 + 976);
  if (v20)
  {
    v21 = (a1 + 976);
    v22 = *(a1 + 984);
    v23 = *(a1 + 976);
    if (v22 != v20)
    {
      do
      {
        v24 = *(v22 - 1);
        v22 -= 3;
        if (v24 < 0)
        {
          operator delete(*v22);
        }
      }

      while (v22 != v20);
      v23 = *v21;
    }

    *(a1 + 984) = v20;
    operator delete(v23);
    *v21 = 0;
    *(a1 + 984) = 0;
    *(a1 + 992) = 0;
  }

  *(a1 + 976) = *(a2 + 976);
  *(a1 + 992) = *(a2 + 992);
  *(a2 + 976) = 0;
  *(a2 + 984) = 0;
  *(a2 + 992) = 0;
  sub_53D784(a1 + 1000, a2 + 1000);
  *(a1 + 1160) = *(a2 + 1160);
  v25 = *(a1 + 1200);
  v26 = *(a2 + 1200);
  if (v25 == -1)
  {
    if (v26 == -1)
    {
      goto LABEL_32;
    }
  }

  else if (v26 == -1)
  {
    (off_2673558[v25])(&v84, a1 + 1168);
    *(a1 + 1200) = -1;
    goto LABEL_32;
  }

  v84 = a1 + 1168;
  (off_2673580[v26])(&v84);
LABEL_32:
  *(a1 + 1208) = *(a2 + 1208);
  v27 = (a1 + 1216);
  if (*(a1 + 1239) < 0)
  {
    operator delete(*v27);
  }

  v28 = *(a2 + 1216);
  *(a1 + 1232) = *(a2 + 1232);
  *v27 = v28;
  *(a2 + 1239) = 0;
  *(a2 + 1216) = 0;
  *(a1 + 1240) = *(a2 + 1240);
  v29 = (a1 + 1248);
  if (*(a1 + 1271) < 0)
  {
    operator delete(*v29);
  }

  v30 = a1 + 4096;
  v31 = *(a2 + 1248);
  *(a1 + 1264) = *(a2 + 1264);
  *v29 = v31;
  *(a2 + 1271) = 0;
  *(a2 + 1248) = 0;
  *(a1 + 1272) = *(a2 + 1272);
  *(a1 + 1280) = *(a2 + 1280);
  sub_CFD5E4((a1 + 1288), a2 + 1288);
  sub_53D784(a1 + 2376, a2 + 2376);
  sub_53D784(a1 + 2536, a2 + 2536);
  sub_53D784(a1 + 2696, a2 + 2696);
  sub_53D784(a1 + 2856, a2 + 2856);
  sub_53D784(a1 + 3016, a2 + 3016);
  sub_53D784(a1 + 3176, a2 + 3176);
  sub_53D784(a1 + 3336, a2 + 3336);
  sub_53D784(a1 + 3496, a2 + 3496);
  sub_53D784(a1 + 3656, a2 + 3656);
  sub_53D784(a1 + 3816, a2 + 3816);
  sub_53D784(a1 + 3976, a2 + 3976);
  sub_53D784(a1 + 4136, a2 + 4136);
  sub_53D784(a1 + 4296, a2 + 4296);
  sub_53D784(a1 + 4456, a2 + 4456);
  sub_53D784(a1 + 4616, a2 + 4616);
  sub_53D784(a1 + 4776, a2 + 4776);
  sub_53D784(a1 + 4936, a2 + 4936);
  sub_53D784(a1 + 5096, a2 + 5096);
  sub_53D784(a1 + 5256, a2 + 5256);
  sub_53D784(a1 + 5416, a2 + 5416);
  sub_53D784(a1 + 5576, a2 + 5576);
  sub_53D784(a1 + 5736, a2 + 5736);
  sub_53D784(a1 + 5896, a2 + 5896);
  sub_53D784(a1 + 6056, a2 + 6056);
  sub_53D784(a1 + 6216, a2 + 6216);
  sub_53D784(a1 + 6376, a2 + 6376);
  sub_53D784(a1 + 6536, a2 + 6536);
  sub_53D784(a1 + 6696, a2 + 6696);
  sub_53D784(a1 + 6856, a2 + 6856);
  sub_53D784(a1 + 7016, a2 + 7016);
  v32 = *(a1 + 7176);
  if (v32)
  {
    *(a1 + 7184) = v32;
    operator delete(v32);
    *(a1 + 7176) = 0;
    *(a1 + 7184) = 0;
    *(a1 + 7192) = 0;
  }

  *(a1 + 7176) = *(a2 + 7176);
  *(a1 + 7184) = *(a2 + 7184);
  *(a2 + 7184) = 0;
  *(a2 + 7192) = 0;
  *(a2 + 7176) = 0;
  v33 = *(a2 + 7200);
  *(a1 + 7208) = *(a2 + 7208);
  *(a1 + 7200) = v33;
  v34 = (a1 + 7216);
  if (*(a1 + 7239) < 0)
  {
    operator delete(*v34);
  }

  v35 = *(a2 + 7216);
  *(a1 + 7232) = *(a2 + 7232);
  *v34 = v35;
  *(a2 + 7239) = 0;
  *(a2 + 7216) = 0;
  v36 = (a1 + 7240);
  if (*(a1 + 7263) < 0)
  {
    operator delete(*v36);
  }

  v37 = *(a2 + 7240);
  *(a1 + 7256) = *(a2 + 7256);
  *v36 = v37;
  *(a2 + 7263) = 0;
  *(a2 + 7240) = 0;
  v38 = *(a1 + 7296);
  v39 = *(a2 + 7296);
  if (v38 == -1)
  {
    if (v39 == -1)
    {
      goto LABEL_47;
    }
  }

  else if (v39 == -1)
  {
    (off_2673558[v38])(&v84, a1 + 7264);
    *(a1 + 7296) = -1;
    goto LABEL_47;
  }

  v84 = a1 + 7264;
  (off_2673580[v39])(&v84);
LABEL_47:
  *(a1 + 7304) = *(a2 + 7304);
  v40 = (a1 + 7312);
  if (*(a1 + 7335) < 0)
  {
    operator delete(*v40);
  }

  v41 = *(a2 + 7312);
  *(a1 + 7328) = *(a2 + 7328);
  *v40 = v41;
  *(a2 + 7335) = 0;
  *(a2 + 7312) = 0;
  *(a1 + 7336) = *(a2 + 7336);
  v42 = (a1 + 7344);
  if (*(a1 + 7367) < 0)
  {
    operator delete(*v42);
  }

  v43 = *(a2 + 7344);
  *(a1 + 7360) = *(a2 + 7360);
  *v42 = v43;
  *(a2 + 7367) = 0;
  *(a2 + 7344) = 0;
  *(a1 + 7368) = *(a2 + 7368);
  v44 = *(a1 + 7376);
  if (v44)
  {
    v45 = (a1 + 7376);
    v46 = *(a1 + 7384);
    v47 = *(a1 + 7376);
    if (v46 != v44)
    {
      do
      {
        v46 = sub_5C0F34(v46 - 816);
      }

      while (v46 != v44);
      v47 = *v45;
    }

    *(a1 + 7384) = v44;
    operator delete(v47);
    *v45 = 0;
    *(a1 + 7384) = 0;
    *(a1 + 7392) = 0;
  }

  *(a1 + 7376) = *(a2 + 7376);
  *(a1 + 7392) = *(a2 + 7392);
  *(a2 + 7376) = 0;
  *(a2 + 7384) = 0;
  *(a2 + 7392) = 0;
  v48 = *(a1 + 7400);
  if (v48)
  {
    v49 = (a1 + 7400);
    v50 = *(a1 + 7408);
    v51 = *(a1 + 7400);
    if (v50 != v48)
    {
      do
      {
        if (*(v50 - 1) < 0)
        {
          operator delete(*(v50 - 24));
        }

        v50 -= 40;
      }

      while (v50 != v48);
      v51 = *v49;
    }

    *(a1 + 7408) = v48;
    operator delete(v51);
    *v49 = 0;
    *(a1 + 7408) = 0;
    *(a1 + 7416) = 0;
  }

  *(a1 + 7400) = *(a2 + 7400);
  *(a1 + 7408) = *(a2 + 7408);
  *(a2 + 7400) = 0;
  *(a2 + 7408) = 0;
  *(a2 + 7416) = 0;
  v52 = (a1 + 7424);
  if (*(a1 + 7447) < 0)
  {
    operator delete(*v52);
  }

  v53 = *(a2 + 7424);
  *(a1 + 7440) = *(a2 + 7440);
  *v52 = v53;
  *(a2 + 7447) = 0;
  *(a2 + 7424) = 0;
  v54 = (a1 + 7448);
  if (*(a1 + 7471) < 0)
  {
    operator delete(*v54);
  }

  v55 = *(a2 + 7448);
  *(a1 + 7464) = *(a2 + 7464);
  *v54 = v55;
  *(a2 + 7471) = 0;
  *(a2 + 7448) = 0;
  v56 = (a1 + 7472);
  if (*(a1 + 7495) < 0)
  {
    operator delete(*v56);
  }

  v57 = *(a2 + 7472);
  *(a1 + 7488) = *(a2 + 7488);
  *v56 = v57;
  *(a2 + 7495) = 0;
  *(a2 + 7472) = 0;
  v58 = *(a1 + 7496);
  if (v58)
  {
    *(a1 + 7504) = v58;
    operator delete(v58);
    *(a1 + 7496) = 0;
    *(a1 + 7504) = 0;
    *(a1 + 7512) = 0;
  }

  *(a1 + 7496) = *(a2 + 7496);
  *(a1 + 7504) = *(a2 + 7504);
  *(a2 + 7496) = 0;
  *(a2 + 7504) = 0;
  *(a2 + 7512) = 0;
  v59 = *(a1 + 7520);
  if (v59)
  {
    v60 = (a1 + 7520);
    v61 = *(a1 + 7528);
    v62 = *(a1 + 7520);
    if (v61 != v59)
    {
      do
      {
        v61 = sub_3A9518(v61 - 1120);
      }

      while (v61 != v59);
      v62 = *v60;
    }

    *(a1 + 7528) = v59;
    operator delete(v62);
    *v60 = 0;
    *(a1 + 7528) = 0;
    *(a1 + 7536) = 0;
  }

  *(a1 + 7520) = *(a2 + 7520);
  *(a1 + 7536) = *(a2 + 7536);
  *(a2 + 7520) = 0;
  *(a2 + 7528) = 0;
  *(a2 + 7536) = 0;
  v63 = *(a1 + 7544);
  if (v63)
  {
    v64 = (a1 + 7544);
    v65 = *(a1 + 7552);
    v66 = *(a1 + 7544);
    if (v65 != v63)
    {
      do
      {
        v65 = sub_3A9518(v65 - 1120);
      }

      while (v65 != v63);
      v66 = *v64;
    }

    *(a1 + 7552) = v63;
    operator delete(v66);
    *v64 = 0;
    *(a1 + 7552) = 0;
    *(a1 + 7560) = 0;
  }

  *(a1 + 7544) = *(a2 + 7544);
  *(a1 + 7552) = *(a2 + 7552);
  *(a2 + 7544) = 0;
  *(a2 + 7552) = 0;
  *(a2 + 7560) = 0;
  v67 = *(a1 + 7568);
  if (v67)
  {
    v68 = (a1 + 7568);
    v69 = *(a1 + 7576);
    v70 = *(a1 + 7568);
    if (v69 != v67)
    {
      do
      {
        v71 = v69 - 1128;
        v72 = *(v69 - 8);
        if (v72 != -1)
        {
          (off_2673548[v72])(&v84, v69 - 1128);
        }

        *(v69 - 8) = -1;
        v69 -= 1128;
      }

      while (v71 != v67);
      v70 = *v68;
      v30 = a1 + 4096;
    }

    *(a1 + 7576) = v67;
    operator delete(v70);
    *v68 = 0;
    *(a1 + 7576) = 0;
    *(a1 + 7584) = 0;
  }

  *(a1 + 7568) = *(a2 + 7568);
  *(a1 + 7584) = *(a2 + 7584);
  *(a2 + 7568) = 0;
  *(a2 + 7576) = 0;
  *(a2 + 7584) = 0;
  v73 = *(a1 + 7592);
  if (v73)
  {
    v74 = (a1 + 7592);
    v75 = *(a1 + 7600);
    v76 = *(a1 + 7592);
    if (v75 != v73)
    {
      do
      {
        v77 = v75 - 1128;
        v78 = *(v75 - 8);
        if (v78 != -1)
        {
          (off_2673548[v78])(&v84, v75 - 1128);
        }

        *(v75 - 8) = -1;
        v75 -= 1128;
      }

      while (v77 != v73);
      v76 = *v74;
    }

    *(a1 + 7600) = v73;
    operator delete(v76);
    *v74 = 0;
    *(a1 + 7600) = 0;
    *(a1 + 7608) = 0;
  }

  *(a1 + 7592) = *(a2 + 7592);
  *(a1 + 7600) = *(a2 + 7600);
  *(a2 + 7592) = 0;
  *(a2 + 7600) = 0;
  *(a2 + 7608) = 0;
  *(v30 + 3520) = *(a2 + 7616);
  sub_53D784(a1 + 7624, a2 + 7624);
  v79 = *(a1 + 7784);
  if (v79)
  {
    v80 = (a1 + 7784);
    v81 = *(a1 + 7792);
    v82 = *(a1 + 7784);
    if (v81 != v79)
    {
      do
      {
        v81 = sub_53A868(v81 - 160);
      }

      while (v81 != v79);
      v82 = *v80;
    }

    *(a1 + 7792) = v79;
    operator delete(v82);
    *v80 = 0;
    *(a1 + 7792) = 0;
    *(a1 + 7800) = 0;
  }

  *(a1 + 7784) = *(a2 + 7784);
  *(a1 + 7792) = *(a2 + 7792);
  *(a2 + 7784) = 0u;
  *(a2 + 7800) = 0;
  return a1;
}