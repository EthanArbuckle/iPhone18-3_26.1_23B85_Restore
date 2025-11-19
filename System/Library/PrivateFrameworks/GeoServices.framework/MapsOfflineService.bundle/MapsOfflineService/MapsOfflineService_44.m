void sub_308AEC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 24);
    if (v2 < 0x80)
    {
      if (v2)
      {
        v7 = 0;
        for (i = 0; i != v2; ++i)
        {
          if ((*(*a1 + i) & 0x80000000) == 0)
          {
            v9 = *(a1 + 8) + v7;
            v10 = *(v9 + 8);
            if (v10)
            {
              *(v9 + 16) = v10;
              operator delete(v10);
              v2 = *(a1 + 24);
            }
          }

          v7 += 32;
        }

        *(a1 + 16) = 0;
        memset(*a1, 128, v2 + 8);
        *(*a1 + v2) = -1;
        v11 = *(a1 + 24);
        v12 = v11 - (v11 >> 3);
        v13 = v11 == 7;
        v14 = 6;
        if (!v13)
        {
          v14 = v12;
        }

        *(a1 + 40) = v14 - *(a1 + 16);
      }
    }

    else
    {
      v3 = 0;
      for (j = 0; j != v2; ++j)
      {
        if ((*(*a1 + j) & 0x80000000) == 0)
        {
          v5 = *(a1 + 8) + v3;
          v6 = *(v5 + 8);
          if (v6)
          {
            *(v5 + 16) = v6;
            operator delete(v6);
            v2 = *(a1 + 24);
          }
        }

        v3 += 32;
      }

      operator delete(*a1);
      *(a1 + 40) = 0;
      *a1 = &unk_2290750;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
    }
  }
}

uint64_t sub_308C24@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
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
      v24 = sub_308DD4((result + 48 * (((BYTE1(v9) ^ BYTE2(v9)) ^ BYTE3(v9)) & 0xF)), v9);
      a3 = v23;
      v18 = v24;
      result = v21;
      v25 = (v10[1] + 32 * v18);
      *v25 = *a2;
      v25[1] = 0;
      v25[2] = 0;
      v25[3] = 0;
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
    v19 = v17 + 32 * v18;
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
  *(a3 + 24) = v17 + 32 * v18;
  *(a3 + 32) = v13 + v12;
  *(a3 + 48) = v20;
  return result;
}

unint64_t sub_308DD4(void *a1, unint64_t a2)
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
      sub_308F24(a1);
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

unint64_t sub_308ECC(void *a1, unint64_t a2)
{
  v2 = a1[3];
  v3 = v2 & (a2 >> 7);
  v4 = 0;
  for (i = *(*a1 + v3) & (~*(*a1 + v3) << 7) & 0x8080808080808080; !i; i = *(*a1 + v3) & (~*(*a1 + v3) << 7) & 0x8080808080808080)
  {
    v4 += 8;
    v3 = (v4 + v3) & v2;
  }

  return (v3 + (__clz(__rbit64(i)) >> 3)) & v2;
}

uint64_t sub_308F24(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1 || *(a1 + 16) > (v1 - (v1 >> 3)) >> 1)
  {
    sub_308F54();
  }

  return sub_30914C(a1);
}

uint64_t sub_30914C(uint64_t result)
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
      goto LABEL_30;
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
LABEL_30:
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
        v18 = 32 * i;
        v19 = *(*(result + 8) + 32 * i);
        v20 = (v19 >> 16) & 0xFFFF0000 | (v19 << 32);
        if ((v19 & 0xFF000000000000) != 0)
        {
          v21 = (v19 >> 16) & 0xFFFF0000 | (v19 << 32);
        }

        else
        {
          v21 = v20 + 1;
        }

        v22 = ((0x2127599BF4325C37 * (v21 ^ (v20 >> 23))) ^ ~((0x2127599BF4325C37 * (v21 ^ (v20 >> 23))) >> 47)) + (((0x2127599BF4325C37 * (v21 ^ (v20 >> 23))) ^ ((0x2127599BF4325C37 * (v21 ^ (v20 >> 23))) >> 47)) << 21);
        v23 = 21 * ((265 * (v22 ^ (v22 >> 24))) ^ ((265 * (v22 ^ (v22 >> 24))) >> 14));
        v24 = 2147483649u * (v23 ^ (v23 >> 28));
        v25 = v13 & (v24 >> 7);
        v26 = *(v17->i64 + v25) & (~*(v17->i64 + v25) << 7) & 0x8080808080808080;
        if (v26)
        {
          v15 = v13 & (v24 >> 7);
        }

        else
        {
          v27 = 8;
          v15 = v13 & (v24 >> 7);
          do
          {
            v15 = (v15 + v27) & v13;
            v27 += 8;
            v26 = *(v17->i64 + v15) & (~*(v17->i64 + v15) << 7) & 0x8080808080808080;
          }

          while (!v26);
        }

        v16 = (v15 + (__clz(__rbit64(v26)) >> 3)) & v13;
        if ((((v16 - v25) ^ (i - v25)) & v13) > 7)
        {
          v28 = v17->u8[v16];
          v17->i8[v16] = v24 & 0x7F;
          *(*result + (*(result + 24) & 7) + (*(result + 24) & (v16 - 8)) + 1) = v24 & 0x7F;
          v29 = *(result + 8);
          if (v28 == 128)
          {
            v30 = (v29 + 32 * v16);
            v31 = v29 + 32 * i;
            *v30 = *v31;
            v30[1] = 0;
            v30[2] = 0;
            v30[3] = 0;
            *(v30 + 1) = *(v31 + 8);
            v30[3] = *(v31 + 24);
            *(v31 + 16) = 0;
            *(v31 + 24) = 0;
            *(v31 + 8) = 0;
            *(*result + i) = 0x80;
            *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = 0x80;
          }

          else
          {
            v32 = (v29 + v18);
            v33 = *v32;
            v34 = v32[3];
            v35 = *(v32 + 1);
            v32[2] = 0;
            v32[3] = 0;
            v32[1] = 0;
            v36 = *(result + 8);
            v37 = (v36 + v18);
            v38 = v36 + 32 * v16;
            *v37 = *v38;
            v37[1] = 0;
            v37[2] = 0;
            v37[3] = 0;
            *(v37 + 1) = *(v38 + 8);
            v37[3] = *(v38 + 24);
            *(v38 + 16) = 0;
            *(v38 + 24) = 0;
            *(v38 + 8) = 0;
            v39 = *(result + 8) + 32 * v16;
            *v39 = v33;
            *(v39 + 8) = v35;
            *(v39 + 24) = v34;
            --i;
          }
        }

        else
        {
          v17->i8[i] = v24 & 0x7F;
          *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = v24 & 0x7F;
        }
      }

      v13 = *(result + 24);
    }

    v40 = i - (i >> 3);
    v41 = i == 7;
    v42 = 6;
    if (!v41)
    {
      v42 = v40;
    }

    *(result + 40) = v42 - *(result + 16);
  }

  else
  {
    *(result + 40) = -*(result + 16);
  }

  return result;
}

char *sub_30945C(char **a1, char *a2, _BYTE *a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v6 >> 2;
      if (v6 >> 2 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF8;
      v11 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 3)
  {
    v16 = a3 - a2;
    if (a3 != a2)
    {
      v17 = result;
      memmove(result, a2, v16 - 1);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13 - 1);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15 - 1);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

uint64_t sub_3095BC(uint64_t a1, uint64_t *a2, __int16 *a3, __int16 *a4, unsigned __int8 *a5, unsigned __int8 *a6, unsigned __int8 *a7, unsigned __int8 *a8)
{
  v8 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 2) + 1;
  if (v8 > 0x1555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 2) > v8)
  {
    v8 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 2);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 2) >= 0xAAAAAAAAAAAAAAALL)
  {
    v10 = 0x1555555555555555;
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    if (v10 <= 0x1555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = sub_30DEB8(4 * ((*(a1 + 8) - *a1) >> 2), *a2, *a3, *a4, *a5, *a6, *a7, *a8);
  v12 = v11 + 12;
  v13 = *a1;
  v14 = *(a1 + 8) - *a1;
  v15 = v11 - v14;
  memcpy((v11 - v14), *a1, v14);
  *a1 = v15;
  *(a1 + 8) = v12;
  *(a1 + 16) = 0;
  if (v13)
  {
    operator delete(v13);
  }

  return v12;
}

void sub_30971C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_309734@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
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
      v24 = sub_309908((result + 48 * (((BYTE1(v9) ^ BYTE2(v9)) ^ BYTE3(v9)) & 0xF)), v9);
      a3 = v23;
      v18 = v24;
      result = v21;
      v25 = v10[1] + 104 * v18;
      *v25 = *a2;
      *(v25 + 8) = 0u;
      *(v25 + 24) = 0u;
      *(v25 + 40) = 0u;
      *(v25 + 56) = 0u;
      *(v25 + 72) = 0u;
      *(v25 + 88) = 0u;
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
    v19 = v17 + 104 * v18;
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
  *(a3 + 24) = v17 + 104 * v18;
  *(a3 + 32) = v13 + v12;
  *(a3 + 48) = v20;
  return result;
}

unint64_t sub_309908(void *a1, unint64_t a2)
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
      sub_309A00(a1);
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

int8x16_t **sub_309A00(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1 || *(a1 + 16) > (v1 - (v1 >> 3)) >> 1)
  {
    sub_309A30();
  }

  return sub_309C24(a1);
}

int8x16_t **sub_309C24(int8x16_t **result)
{
  v1 = *result;
  v2 = result[3];
  v3 = v2->i64 + *result;
  if ((v3 + 1) != *result)
  {
    v4 = &v2[-1].u64[1] + 1;
    v5 = *result;
    if (v4 < 0x18)
    {
      goto LABEL_29;
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
LABEL_29:
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
  v13 = result[3];
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v17 = *result;
      if ((*result)->u8[i] == 254)
      {
        v18 = result[1]->u64[13 * i];
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
          (*result)->i8[(result[3] & 7) + 1 + (result[3] & (v16 - 8))] = v23 & 0x7F;
          v28 = result[1];
          if (v27 == 128)
          {
            v29 = &v28->i64[13 * v16];
            v30 = result;
            sub_309F64((result + 5), v29, &v28->i64[13 * i]);
            result = v30;
            (*v30)->i8[i] = 0x80;
            (*v30)->i8[(v30[3] & (i - 8)) + 1 + (v30[3] & 7)] = 0x80;
          }

          else
          {
            v31 = result;
            sub_309F64((result + 5), v32, &v28->i64[13 * i]);
            sub_309F64((v31 + 5), &v31[1]->i64[13 * i], &v31[1]->i64[13 * v16]);
            sub_309F64((v31 + 5), &v31[1]->i64[13 * v16], v32);
            --i;
            result = v31;
          }
        }

        else
        {
          v17->i8[i] = v23 & 0x7F;
          (*result)->i8[(result[3] & (i - 8)) + 1 + (result[3] & 7)] = v23 & 0x7F;
        }
      }

      v13 = result[3];
    }

    v13 = i - (i >> 3);
    if (i == 7)
    {
      v13 = 6;
    }
  }

  result[5] = (v13 - result[2]);
  return result;
}

void sub_309F64(uint64_t a1, void *a2, uint64_t a3)
{
  *a2 = *a3;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  v4 = (a3 + 8);
  *(a2 + 1) = *(a3 + 8);
  a2[3] = *(a3 + 24);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  a2[4] = 0;
  a2[5] = 0;
  a2[6] = 0;
  v5 = (a3 + 32);
  *(a2 + 2) = *(a3 + 32);
  a2[6] = *(a3 + 48);
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  a2[7] = 0;
  a2[8] = 0;
  a2[9] = 0;
  *(a2 + 7) = *(a3 + 56);
  a2[9] = *(a3 + 72);
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  a2[10] = 0;
  a2[11] = 0;
  a2[12] = 0;
  *(a2 + 5) = *(a3 + 80);
  a2[12] = *(a3 + 96);
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  v6 = *(a3 + 56);
  if (v6)
  {
    *(a3 + 64) = v6;
    operator delete(v6);
  }

  v7 = *v5;
  if (*v5)
  {
    *(a3 + 40) = v7;
    operator delete(v7);
  }

  v8 = *v4;
  if (*v4)
  {
    *(a3 + 16) = v8;

    operator delete(v8);
  }
}

void sub_30A064(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  v3 = sub_30A0A4(exception, a1);
}

std::logic_error *sub_30A0A4(std::logic_error *a1, const std::logic_error *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

uint64_t sub_30A0D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  sub_304578(a1 + 16);
  *(a1 + 2592) = a4;
  *(a1 + 2600) = &unk_2290750;
  *(a1 + 2640) = 0;
  *(a1 + 2608) = 0;
  *(a1 + 2616) = 0u;
  *(a1 + 2648) = &unk_2290750;
  *(a1 + 2688) = 0;
  *(a1 + 2656) = 0;
  *(a1 + 2664) = 0u;
  *(a1 + 2696) = &unk_2290750;
  *(a1 + 2736) = 0;
  *(a1 + 2704) = 0;
  *(a1 + 2712) = 0u;
  *(a1 + 2744) = &unk_2290750;
  *(a1 + 2784) = 0;
  *(a1 + 2768) = 0;
  *(a1 + 2752) = 0u;
  *(a1 + 2792) = &unk_2290750;
  *(a1 + 2832) = 0;
  *(a1 + 2816) = 0;
  *(a1 + 2800) = 0u;
  *(a1 + 2840) = &unk_2290750;
  *(a1 + 2880) = 0;
  *(a1 + 2864) = 0;
  *(a1 + 2848) = 0u;
  *(a1 + 2888) = &unk_2290750;
  *(a1 + 2928) = 0;
  *(a1 + 2912) = 0;
  *(a1 + 2896) = 0u;
  *(a1 + 2936) = &unk_2290750;
  *(a1 + 2976) = 0;
  *(a1 + 2960) = 0;
  *(a1 + 2944) = 0u;
  *(a1 + 2984) = &unk_2290750;
  *(a1 + 3024) = 0;
  *(a1 + 3008) = 0;
  *(a1 + 2992) = 0u;
  *(a1 + 3032) = &unk_2290750;
  *(a1 + 3072) = 0;
  *(a1 + 3056) = 0;
  *(a1 + 3040) = 0u;
  *(a1 + 3080) = &unk_2290750;
  *(a1 + 3120) = 0;
  *(a1 + 3104) = 0;
  *(a1 + 3088) = 0u;
  *(a1 + 3128) = &unk_2290750;
  *(a1 + 3168) = 0;
  *(a1 + 3152) = 0;
  *(a1 + 3136) = 0u;
  *(a1 + 3176) = &unk_2290750;
  *(a1 + 3216) = 0;
  *(a1 + 3200) = 0;
  *(a1 + 3184) = 0u;
  *(a1 + 3224) = &unk_2290750;
  *(a1 + 3264) = 0;
  *(a1 + 3248) = 0;
  *(a1 + 3232) = 0u;
  *(a1 + 3272) = &unk_2290750;
  *(a1 + 3312) = 0;
  *(a1 + 3296) = 0;
  *(a1 + 3280) = 0u;
  *(a1 + 3320) = &unk_2290750;
  *(a1 + 3360) = 0;
  *(a1 + 3344) = 0;
  *(a1 + 3328) = 0u;
  *(a1 + 3368) = &unk_2290750;
  *(a1 + 3408) = 0;
  *(a1 + 3392) = 0;
  *(a1 + 3376) = 0u;
  *(a1 + 3416) = &unk_2290750;
  *(a1 + 3456) = 0;
  *(a1 + 3440) = 0;
  *(a1 + 3424) = 0u;
  *(a1 + 3464) = &unk_2290750;
  *(a1 + 3504) = 0;
  *(a1 + 3488) = 0;
  *(a1 + 3472) = 0u;
  *(a1 + 3512) = &unk_2290750;
  *(a1 + 3552) = 0;
  *(a1 + 3536) = 0;
  *(a1 + 3520) = 0u;
  *(a1 + 3560) = &unk_2290750;
  *(a1 + 3600) = 0;
  *(a1 + 3584) = 0;
  *(a1 + 3568) = 0u;
  *(a1 + 3608) = &unk_2290750;
  *(a1 + 3648) = 0;
  *(a1 + 3632) = 0;
  *(a1 + 3616) = 0u;
  *(a1 + 3656) = &unk_2290750;
  *(a1 + 3696) = 0;
  *(a1 + 3680) = 0;
  *(a1 + 3664) = 0u;
  *(a1 + 3704) = &unk_2290750;
  *(a1 + 3744) = 0;
  *(a1 + 3728) = 0;
  *(a1 + 3712) = 0u;
  *(a1 + 3752) = &unk_2290750;
  *(a1 + 3792) = 0;
  *(a1 + 3776) = 0;
  *(a1 + 3760) = 0u;
  *(a1 + 3800) = &unk_2290750;
  *(a1 + 3840) = 0;
  *(a1 + 3824) = 0;
  *(a1 + 3808) = 0u;
  *(a1 + 3848) = &unk_2290750;
  *(a1 + 3888) = 0;
  *(a1 + 3872) = 0;
  *(a1 + 3856) = 0u;
  *(a1 + 3896) = &unk_2290750;
  *(a1 + 3936) = 0;
  *(a1 + 3920) = 0;
  *(a1 + 3904) = 0u;
  *(a1 + 3944) = &unk_2290750;
  *(a1 + 3984) = 0;
  *(a1 + 3968) = 0;
  *(a1 + 3952) = 0u;
  *(a1 + 3992) = &unk_2290750;
  *(a1 + 4032) = 0;
  *(a1 + 4016) = 0;
  *(a1 + 4000) = 0u;
  *(a1 + 4040) = &unk_2290750;
  *(a1 + 4080) = 0;
  *(a1 + 4064) = 0;
  *(a1 + 4048) = 0u;
  *(a1 + 4088) = &unk_2290750;
  *(a1 + 4112) = 0;
  *(a1 + 4096) = 0u;
  *(a1 + 4176) = 0u;
  *(a1 + 4160) = 0u;
  *(a1 + 4144) = 0u;
  *(a1 + 4128) = 0u;
  *(a1 + 4192) = 1065353216;
  return a1;
}

char *sub_30A33C(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  sub_30CEF8(a1 + 2600, &v7, v8);
  if (v8[0])
  {
    sub_30CEF8(a1 + 2600, &v7, v8);
    if (!v8[0])
    {
      v6 = std::logic_error::logic_error(&v10, "phmap at(): lookup non-existent key");
      sub_30A064(v6);
    }

    return ((*(v9 + 64) - *(v9 + 56)) >> 2);
  }

  else
  {
    result = sub_30C3E8(*(a1 + 8), v7, *(a1 + 2592));
    if (result)
    {
      v4 = &result[-*result];
      if (*v4 >= 9u && (v5 = *(v4 + 4)) != 0)
      {
        return *&result[v5 + *&result[v5]];
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

int *sub_30A454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, void *a5@<X8>)
{
  v19 = a2;
  if (!a4)
  {
LABEL_7:
    result = sub_30C3E8(*(a1 + 8), a2, *(a1 + 2592));
    if (result)
    {
      v11 = (result - *result);
      v12 = *v11;
      if (a3)
      {
        if (v12 < 7)
        {
          goto LABEL_15;
        }

        v13 = v11[3];
        if (!v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (v12 < 5)
        {
          goto LABEL_15;
        }

        v13 = v11[2];
        if (!v13)
        {
          goto LABEL_15;
        }
      }

      v14 = (result + v13 + *(result + v13));
      v15 = *v14;
      *a5 = 0;
      a5[1] = v14;
      a5[2] = 0;
      a5[3] = 0;
      a5[4] = v14;
      a5[5] = v15;
      return result;
    }

LABEL_15:
    *(a5 + 1) = 0u;
    *(a5 + 2) = 0u;
    *a5 = 0u;
    return result;
  }

  sub_30CEF8(a1 + 2600, &v19, v20);
  if (!v20[0])
  {
    a2 = v19;
    goto LABEL_7;
  }

  v8 = a1 + 2600;
  if (a3)
  {
    result = sub_30CEF8(v8, &v19, v20);
    if (!v20[0])
    {
      v17 = std::logic_error::logic_error(&v22, "phmap at(): lookup non-existent key");
      sub_30A064(v17);
    }

    v10 = (v21 + 32);
  }

  else
  {
    result = sub_30CEF8(v8, &v19, v20);
    if (!v20[0])
    {
      v18 = std::logic_error::logic_error(&v22, "phmap at(): lookup non-existent key");
      sub_30A064(v18);
    }

    v10 = (v21 + 8);
  }

  v16 = (v10[1] - *v10) >> 2;
  *a5 = v10;
  a5[1] = 0;
  a5[2] = 0;
  a5[3] = v10;
  a5[4] = 0;
  a5[5] = v16;
  return result;
}

uint64_t sub_30A630(uint64_t a1, uint64_t a2, unsigned int a3, int a4, int a5)
{
  v18 = a2;
  if (!a5 || (sub_30CEF8(a1 + 2600, &v18, v19), !v19[0]))
  {
    if (a3)
    {
      v12 = sub_30C3E8(*(a1 + 8), v18, *(a1 + 2592));
      if (v12)
      {
        v9 = &v12[-*v12];
        v13 = *v9;
        if (a4)
        {
          if (v13 >= 0xB)
          {
            LODWORD(v9) = *(v9 + 5);
            if (!v9)
            {
              goto LABEL_20;
            }

LABEL_18:
            v9 = &v12[v9 + *&v12[v9]];
            if (*v9 >= a3)
            {
              LODWORD(v9) = *&v9[((4 * a3 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4];
              v11 = v9 >> 16;
              v10 = v9 >> 24;
              return (v11 << 16) | (v10 << 24) | v9;
            }
          }
        }

        else if (v13 >= 9)
        {
          LODWORD(v9) = *(v9 + 4);
          if (!v9)
          {
LABEL_20:
            v10 = 0;
            LOBYTE(v11) = -1;
            return (v11 << 16) | (v10 << 24) | v9;
          }

          goto LABEL_18;
        }
      }
    }

    LOWORD(v9) = 0;
    goto LABEL_20;
  }

  v8 = a1 + 2600;
  if (!a4)
  {
    sub_30CEF8(v8, &v18, v19);
    if (!v19[0])
    {
      v17 = std::logic_error::logic_error(&v21, "phmap at(): lookup non-existent key");
      sub_30A064(v17);
    }

    v9 = *(v20 + 56);
    if (a3 > ((*(v20 + 64) - v9) >> 2))
    {
      goto LABEL_6;
    }

LABEL_15:
    v14 = &v9[4 * a3];
    LOWORD(v9) = *(v14 - 2);
    LOBYTE(v11) = *(v14 - 2);
    v10 = *(v14 - 1);
    return (v11 << 16) | (v10 << 24) | v9;
  }

  sub_30CEF8(v8, &v18, v19);
  if (!v19[0])
  {
    v16 = std::logic_error::logic_error(&v21, "phmap at(): lookup non-existent key");
    sub_30A064(v16);
  }

  v9 = *(v20 + 80);
  if (a3 <= ((*(v20 + 88) - v9) >> 2))
  {
    goto LABEL_15;
  }

LABEL_6:
  v10 = 0;
  LOBYTE(v11) = -1;
  LOWORD(v9) = -1;
  return (v11 << 16) | (v10 << 24) | v9;
}

BOOL sub_30A850(uint64_t a1, void *a2)
{
  if (*a2 == a2[1])
  {
    return 0;
  }

  sub_30AB98(a1, a2, &v28);
  __p = 0;
  v31 = 0;
  v32 = 0;
  v3 = sub_30457C(a1 + 16, &v28, &__p, *(a1 + 2592));
  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  if (v3)
  {
    v4 = sub_3068E4(a1 + 16);
    v5 = v4;
    v6 = *v4;
    v7 = v4[1];
    if (**v4 > -2)
    {
      v8 = *v4;
      v23 = v4[3];
      v10 = &v23[v6];
      if (v6 != &v23[v6])
      {
LABEL_9:
        v11 = 0;
        while (1)
        {
          do
          {
LABEL_12:
            sub_309734(a1 + 2600, v7, &__p);
            sub_30C1C8(v33 + 8, (v7 + 1));
            sub_30D080((a1 + 4160), v7);
            v12 = *++v8;
            v7 += 13;
            if (v12 <= -2)
            {
              do
              {
                v13 = (__clz(__rbit64(((*v8 >> 7) & ~*v8 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
                v8 += v13;
                v7 += 13 * v13;
              }

              while (*v8 < -1);
            }
          }

          while (v8 != v10);
          if (v11 == 90)
          {
            goto LABEL_21;
          }

          v14 = &v5[v11];
          v11 += 6;
          while (1)
          {
            v15 = &v5[v11];
            v16 = v5[v11];
            v7 = v14[7];
            v8 = v16;
            if (*v16 <= -2)
            {
              do
              {
                v17 = (__clz(__rbit64(((*v8 >> 7) & ~*v8 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
                v8 += v17;
                v7 += 13 * v17;
              }

              while (*v8 < -1);
            }

            v10 = &v14[9][v16];
            if (v8 != v10)
            {
              break;
            }

            v11 += 6;
            v14 = v15;
            if (v11 == 96)
            {
              goto LABEL_21;
            }
          }
        }
      }
    }

    else
    {
      v8 = *v4;
      do
      {
        v9 = (__clz(__rbit64(((*v8 >> 7) & ~*v8 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
        v8 += v9;
        v7 += 13 * v9;
      }

      while (*v8 < -1);
      v10 = &v4[3][v6];
      if (v8 != v10)
      {
        goto LABEL_9;
      }
    }

    v11 = 6;
    v24 = v4;
    do
    {
      v25 = &v4[v11];
      v26 = v4[v11];
      v7 = v24[7];
      v8 = v26;
      if (*v26 <= -2)
      {
        do
        {
          v27 = (__clz(__rbit64(((*v8 >> 7) & ~*v8 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
          v8 += v27;
          v7 += 13 * v27;
        }

        while (*v8 < -1);
      }

      v10 = &v24[9][v26];
      if (v8 != v10)
      {
        goto LABEL_12;
      }

      v11 += 6;
      v24 = v25;
    }

    while (v11 != 96);
  }

LABEL_21:
  v18 = v28;
  if (v28)
  {
    v19 = v29;
    v20 = v28;
    if (v29 != v28)
    {
      do
      {
        v21 = *(v19 - 3);
        if (v21)
        {
          *(v19 - 2) = v21;
          operator delete(v21);
        }

        v19 -= 40;
      }

      while (v19 != v18);
      v20 = v28;
    }

    v29 = v18;
    operator delete(v20);
  }

  return v3;
}

void sub_30AB98(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = 1 << *(a1 + 2592);
  v48 = 0;
  v49 = v4;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v46 = 0;
  v47 = 0;
  v5 = *a2;
  v42 = *(a2 + 8);
  if (*a2 != v42)
  {
    v41 = a1 + 3368;
    v6 = *(a1 + 4144);
    do
    {
      v7 = v5;
      v8 = *v5;
      if (v8 != v7[1])
      {
        v43 = -858993459 * ((v6 - *(a1 + 4136)) >> 3);
        v9 = 0;
        v10 = *v8;
        v11 = (*v8 >> 16) & 0xFFFF0000 | (*v8 << 32);
        if ((*v8 & 0xFF000000000000) != 0)
        {
          v12 = (*v8 >> 16) & 0xFFFF0000 | (*v8 << 32);
        }

        else
        {
          v12 = v11 + 1;
        }

        v13 = ((0x2127599BF4325C37 * (v12 ^ (v11 >> 23))) ^ ~((0x2127599BF4325C37 * (v12 ^ (v11 >> 23))) >> 47)) + (((0x2127599BF4325C37 * (v12 ^ (v11 >> 23))) ^ ((0x2127599BF4325C37 * (v12 ^ (v11 >> 23))) >> 47)) << 21);
        v14 = 21 * ((265 * (v13 ^ (v13 >> 24))) ^ ((265 * (v13 ^ (v13 >> 24))) >> 14));
        v15 = 2147483649u * (v14 ^ (v14 >> 28));
        v16 = (v41 + 48 * (((((v14 ^ (v14 >> 28)) >> 8) ^ ((-2147483647 * (v14 ^ (v14 >> 28))) >> 16)) ^ ((-2147483647 * (v14 ^ (v14 >> 28))) >> 24)) & 0xF));
        v17 = v15 >> 7;
        v18 = v16[3];
        while (1)
        {
          v19 = v17 & v18;
          v20 = *(*v16 + v19);
          v21 = ((v20 ^ (0x101010101010101 * (v15 & 0x7F))) - 0x101010101010101) & ~(v20 ^ (0x101010101010101 * (v15 & 0x7F))) & 0x8080808080808080;
          if (v21)
          {
            break;
          }

LABEL_14:
          if ((v20 & (~v20 << 6) & 0x8080808080808080) != 0)
          {
            v23 = sub_308DD4(v16, v15);
            v25 = (v16[1] + 32 * v23);
            *v25 = v10;
            v25[1] = 0;
            v25[2] = 0;
            v25[3] = 0;
            v22 = v16[1];
            goto LABEL_17;
          }

          v9 += 8;
          v17 = v9 + v19;
        }

        v22 = v16[1];
        while (1)
        {
          v23 = (v19 + (__clz(__rbit64(v21)) >> 3)) & v18;
          v24 = v22 + 32 * v23;
          if (__PAIR64__(*(v24 + 4), *v24) == __PAIR64__(WORD2(v10), v10) && *(v24 + 6) == BYTE6(v10))
          {
            break;
          }

          v21 &= v21 - 1;
          if (!v21)
          {
            goto LABEL_14;
          }
        }

LABEL_17:
        v26 = (v22 + 32 * v23);
        v28 = v26[2];
        v27 = v26[3];
        if (v28 >= v27)
        {
          v29 = v26[1];
          v30 = v28 - v29;
          v31 = (v28 - v29) >> 2;
          v32 = v31 + 1;
          if ((v31 + 1) >> 62)
          {
            sub_1794();
          }

          v33 = v27 - v29;
          if (v33 >> 1 > v32)
          {
            v32 = v33 >> 1;
          }

          if (v33 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v34 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v34 = v32;
          }

          if (v34)
          {
            if (!(v34 >> 62))
            {
              operator new();
            }

            sub_1808();
          }

          v35 = (v28 - v29) >> 2;
          v36 = (4 * v31);
          v37 = (4 * v31 - 4 * v35);
          *v36 = v43;
          v38 = v36 + 1;
          memcpy(v37, v29, v30);
          v26[1] = v37;
          v26[2] = v38;
          v26[3] = 0;
          if (v29)
          {
            operator delete(v29);
          }

          v26[2] = v38;
        }

        else
        {
          *v28 = v43;
          v26[2] = v28 + 4;
        }

        operator new();
      }

      LOBYTE(v45) = 0;
      v40 = v7;
      if (v6 < *(a1 + 4152))
      {
        sub_30410C(v6, 0, v49, v7);
        v6 += 40;
        v39 = a1;
        *(a1 + 4144) = v6;
      }

      else
      {
        v6 = sub_30C80C((a1 + 4136), &v45, &v49, v7);
        v39 = a1;
      }

      *(v39 + 4144) = v6;
      v5 = (v40 + 3);
    }

    while (v5 != v42);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }
}

void sub_30C004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
    if (!v25)
    {
LABEL_3:
      if (!v26)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (!v25)
  {
    goto LABEL_3;
  }

  operator delete(v25);
  if (!v26)
  {
LABEL_4:
    v30 = *(v28 - 176);
    if (!v30)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(v26);
  v30 = *(v28 - 176);
  if (!v30)
  {
LABEL_5:
    sub_30C2C4(v27);
    _Unwind_Resume(a1);
  }

LABEL_9:
  *(v28 - 168) = v30;
  operator delete(v30);
  sub_30C2C4(v27);
  _Unwind_Resume(a1);
}

uint64_t sub_30C1C8(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = *(a1 + 24);
  if (v5)
  {
    *(a1 + 32) = v5;
    operator delete(v5);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v6 = *(a1 + 48);
  if (v6)
  {
    *(a1 + 56) = v6;
    operator delete(v6);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v7 = *(a1 + 72);
  if (v7)
  {
    *(a1 + 80) = v7;
    operator delete(v7);
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  return a1;
}

void **sub_30C2C4(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 3);
        if (v5)
        {
          *(v3 - 2) = v5;
          operator delete(v5);
        }

        v3 -= 40;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_30C338(uint64_t a1)
{
  sub_304A50(a1 + 2600);
  v2 = *(a1 + 4144);
  v3 = *(a1 + 4136);
  while (v2 != v3)
  {
    v4 = *(v2 - 24);
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
    }

    v2 -= 40;
  }

  *(a1 + 4144) = v3;
  sub_3068EC(a1 + 3368);
  if (*(a1 + 4184))
  {
    v5 = *(a1 + 4176);
    if (v5)
    {
      do
      {
        v6 = *v5;
        operator delete(v5);
        v5 = v6;
      }

      while (v6);
    }

    *(a1 + 4176) = 0;
    v7 = *(a1 + 4168);
    if (v7)
    {
      bzero(*(a1 + 4160), 8 * v7);
    }

    *(a1 + 4184) = 0;
  }
}

char *sub_30C3E8(uint64_t a1, uint64_t a2, int a3)
{
  result = sub_30C50C(a1, a2, 1);
  if (result)
  {
    v6 = &result[-*result];
    if (*v6 >= 5u)
    {
      if (!*(v6 + 2))
      {
        return 0;
      }

      v7 = &result[*(v6 + 2) + *&result[*(v6 + 2)]];
      if (*v7 <= WORD2(a2))
      {
        return 0;
      }

      v8 = &v7[4 * WORD2(a2) + 4 + *&v7[4 * WORD2(a2) + 4]];
      v9 = &v8[-*v8];
      v10 = *v9;
      if (a3 == 3)
      {
        if (v10 < 0x23)
        {
          return 0;
        }

        v11 = *(v9 + 17);
        if (!v11)
        {
          return 0;
        }
      }

      else
      {
        if (v10 < 0x25)
        {
          return 0;
        }

        v11 = *(v9 + 18);
        if (!v11)
        {
          return 0;
        }
      }

      v12 = &v8[v11 + *&v8[v11]];
      v13 = &v12[-*v12];
      v14 = *v13;
      if ((a2 & 0xFF000000000000) != 0)
      {
        if (v14 < 7)
        {
          return 0;
        }

        v15 = *(v13 + 3);
        if (!v15)
        {
          return 0;
        }
      }

      else
      {
        if (v14 < 5)
        {
          return 0;
        }

        v15 = *(v13 + 2);
        if (!v15)
        {
          return 0;
        }
      }

      return &v12[v15 + *&v12[v15]];
    }

    return 0;
  }

  return result;
}

char *sub_30C50C(uint64_t a1, unsigned int a2, int a3)
{
  v21 = a3;
  v22 = a2;
  v20[0] = &v21;
  v20[1] = &v22;
  v3 = *(a1 + 3856) + 1;
  *(a1 + 3856) = v3;
  if (!*a1)
  {
    goto LABEL_30;
  }

  if (*(a1 + 784) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 792) = v3;
    v4 = *(a1 + 800);
    if (!v4)
    {
      goto LABEL_30;
    }

    return v4 + *v4;
  }

  if (*(a1 + 808) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 816) = v3;
    v4 = *(a1 + 824);
    if (!v4)
    {
      goto LABEL_30;
    }

    return v4 + *v4;
  }

  if (*(a1 + 832) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 840) = v3;
    v4 = *(a1 + 848);
    if (!v4)
    {
      goto LABEL_30;
    }

    return v4 + *v4;
  }

  if (*(a1 + 856) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 864) = v3;
    v4 = *(a1 + 872);
    if (v4)
    {
      return v4 + *v4;
    }
  }

  else
  {
    v6 = a1 + 16;
    v7 = *(a1 + 840);
    v8 = *(a1 + 816);
    v9 = *(a1 + 792);
    v10 = v9 < v3;
    if (v9 < v3)
    {
      v3 = *(a1 + 792);
    }

    v11 = v8 >= v3;
    if (v8 < v3)
    {
      v3 = *(a1 + 816);
    }

    v12 = 32 * v10;
    if (!v11)
    {
      v12 = 33;
    }

    if (v7 >= v3)
    {
      v13 = v3;
    }

    else
    {
      v13 = *(a1 + 840);
    }

    v14 = *(a1 + 864);
    if (v7 >= v3)
    {
      v15 = v12;
    }

    else
    {
      v15 = 34;
    }

    v17 = sub_2D52A4(*a1, 8, a2, 1);
    v18 = 35;
    if (v14 >= v13)
    {
      v18 = v15;
    }

    v19 = v6 + 24 * v18;
    *v19 = v22;
    *(v19 + 8) = *(a1 + 3856);
    *(v19 + 16) = v17;
    if (v17)
    {
      return v17 + *v17;
    }
  }

LABEL_30:
  sub_30C6E0(v20);
  return 0;
}

uint64_t sub_30C6E0(int **a1)
{
  v1 = **a1;
  if (v1 != 1)
  {
    if (!v1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = *a1[1];
      v11[0] = sub_7FCF0(8u);
      v11[1] = v5;
      sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", v11, v13);
      if ((v14 & 0x80u) == 0)
      {
        v6 = v13;
      }

      else
      {
        v6 = v13[0];
      }

      if ((v14 & 0x80u) == 0)
      {
        v7 = v14;
      }

      else
      {
        v7 = v13[1];
      }

      v8 = sub_2D390(exception, v6, v7);
    }

    v9 = __cxa_allocate_exception(0x40uLL);
    v10 = sub_2D390(v9, "Unknown data access error policy", 0x20uLL);
  }

  return 0;
}

void sub_30C7DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_30C80C(uint64_t *a1, char *a2, uint64_t *a3, void *a4)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0x666666666666666)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v7 = 0x666666666666666;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v16 = 8 * ((a1[1] - *a1) >> 3);
  sub_30410C(v16, *a2, *a3, a4);
  v8 = 40 * v4 + 40;
  v9 = *a1;
  v10 = a1[1];
  v11 = 40 * v4 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v16 + *a1 - v10;
    do
    {
      *v13 = *v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0;
      *(v13 + 16) = 0;
      *(v13 + 16) = *(v12 + 1);
      *(v13 + 32) = v12[4];
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = 0;
      v12 += 5;
      v13 += 40;
    }

    while (v12 != v10);
    do
    {
      v14 = v9[2];
      if (v14)
      {
        v9[3] = v14;
        operator delete(v14);
      }

      v9 += 5;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_30C9AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_30C9C0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_30C9C0(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      while (1)
      {
        v4 = v2 - 40;
        *(a1 + 16) = v2 - 40;
        v5 = *(v2 - 24);
        if (!v5)
        {
          break;
        }

        *(v2 - 16) = v5;
        operator delete(v5);
        v2 = *(a1 + 16);
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v2 -= 40;
    }

    while (v4 != v3);
  }

LABEL_6:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

unint64_t sub_30CA30(unint64_t *a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3) + 1;
  if (v2 > 0x666666666666666)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v4 = 0x666666666666666;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = 8 * ((a1[1] - *a1) >> 3);
  v6 = *a2;
  *&dword_10[v5 / 4] = 0;
  *v5 = v6;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  v8 = *(a2 + 2);
  v7 = *(a2 + 3);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v9 = v5 + 40;
  v10 = *a1;
  v11 = a1[1];
  v12 = v5 + *a1 - v11;
  if (v11 != *a1)
  {
    v13 = *a1;
    v14 = v12;
    do
    {
      *v14 = *v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0;
      *(v14 + 16) = 0;
      *(v14 + 16) = *(v13 + 1);
      *(v14 + 32) = v13[4];
      v13[2] = 0;
      v13[3] = 0;
      v13[4] = 0;
      v13 += 5;
      v14 += 40;
    }

    while (v13 != v11);
    do
    {
      v15 = v10[2];
      if (v15)
      {
        v10[3] = v15;
        operator delete(v15);
      }

      v10 += 5;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void sub_30CC0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 24) = v5;
    operator delete(v5);
  }

  sub_30C9C0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_30CC30(uint64_t a1, unint64_t a2)
{
  v3 = sub_2AF704(a1 + 3896, a2, 1);
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v15 = __ROR8__(a2, 32);
    sub_2FF494(&v15, &v13);
    sub_23E08("Sequence access could not find quad node for ", &v13, &v14);
    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v14;
    }

    else
    {
      v10 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    v12 = sub_2D390(exception, v10, size);
  }

  v4 = &v3[-*v3];
  if (*v4 >= 9u && (v5 = *(v4 + 4)) != 0)
  {
    v6 = &v3[v5 + *&v3[v5]];
    v7 = a2;
  }

  else
  {
    v6 = 0;
    v7 = a2;
  }

  return sub_30CDA0(v6, v7);
}

void sub_30CD48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_30CDA0(_DWORD *a1, unint64_t a2)
{
  v2 = HIDWORD(a2);
  if (!a1 || *a1 <= HIDWORD(a2))
  {
    v4 = a2;
    exception = __cxa_allocate_exception(0x40uLL);
    v12[0] = v2;
    v12[1] = v4;
    sub_2FF494(v12, &v9);
    sub_23E08("Flatbuffer vector requested index (object_index)", &v9, &v10);
    sub_30F54(" is out of range", &v10, &v11);
    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v11;
    }

    else
    {
      v6 = v11.__r_.__value_.__r.__words[0];
    }

    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v11.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v11.__r_.__value_.__l.__size_;
    }

    v8 = sub_2D390(exception, v6, size);
  }

  return &a1[v2 + 1] + a1[v2 + 1];
}

void sub_30CE78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_30CEF8@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
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
  v13 = 0x101010101010101 * (v9 & 0x7F);
  v14 = *v10;
  while (1)
  {
    v15 = v11 & v12;
    v16 = *(v14 + v15);
    v17 = ((v16 ^ v13) - 0x101010101010101) & ~(v16 ^ v13) & 0x8080808080808080;
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
    v19 = v10[1] + 104 * v18;
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
  v22 = v14 + v18;
  v23 = v14 + v12;
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

uint64_t *sub_30D080(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  if ((*a2 & 0xFF000000000000) != 0)
  {
    v4 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  }

  else
  {
    v4 = v3 + 1;
  }

  v5 = 0x2127599BF4325C37 * (v4 ^ (v3 >> 23));
  v6 = v5 ^ (v5 >> 47);
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_28;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v5 ^ (v5 >> 47);
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_28:
    operator new();
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (__PAIR64__(*(v11 + 10), *(v11 + 4)) == __PAIR64__(WORD2(v2), v2) && *(v11 + 22) == BYTE6(v2))
        {
          return v11;
        }
      }

      else if ((v12 & (*&v7 - 1)) != v9)
      {
        goto LABEL_28;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_28;
      }
    }
  }

  while (1)
  {
    v14 = v11[1];
    if (v14 == v6)
    {
      break;
    }

    if (v14 >= *&v7)
    {
      v14 %= *&v7;
    }

    if (v14 != v9)
    {
      goto LABEL_28;
    }

LABEL_21:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_28;
    }
  }

  if (__PAIR64__(*(v11 + 10), *(v11 + 4)) != __PAIR64__(WORD2(v2), v2) || *(v11 + 22) != BYTE6(v2))
  {
    goto LABEL_21;
  }

  return v11;
}

double sub_30D41C(uint64_t a1, uint64_t a2)
{
  sub_30DF0C(a1, a2);
  result = 0.0;
  *(v3 + 104) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 72) = 0u;
  return result;
}

void sub_30D458(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t *a5)
{
  v79 = a3;
  v9 = *a5;
  v8 = a5[1];
  if (v8 != *a5)
  {
    v10 = a5[1];
    do
    {
      v12 = *(v10 - 24);
      v10 -= 24;
      v11 = v12;
      if (v12)
      {
        *(v8 - 16) = v11;
        operator delete(v11);
      }

      v8 = v10;
    }

    while (v10 != v9);
  }

  a5[1] = v9;
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  if (v14 != v13)
  {
    v15 = *(a1 + 80);
    do
    {
      v17 = *(v15 - 24);
      v15 -= 24;
      v16 = v17;
      if (v17)
      {
        *(v14 - 16) = v16;
        operator delete(v16);
      }

      v14 = v15;
    }

    while (v15 != v13);
  }

  *(a1 + 80) = v13;
  v19 = *(a1 + 96);
  v18 = *(a1 + 104);
  if (v18 != v19)
  {
    v20 = *(a1 + 104);
    do
    {
      v22 = *(v20 - 24);
      v20 -= 24;
      v21 = v22;
      if (v22)
      {
        *(v18 - 16) = v21;
        operator delete(v21);
      }

      v18 = v20;
    }

    while (v20 != v19);
  }

  *(a1 + 104) = v19;
  *(a1 + 8) = a4;
  v23 = v79;
  if (sub_30E220(a1, v79) != 5)
  {
    *(a1 + 24) = *(a1 + 16);
    *(a1 + 40) = 0;
    LODWORD(v74) = 0;
    LODWORD(v73) = 0;
    v78 = 0;
    v24 = sub_30E780(a1, v23);
    v77 = v24;
    v25 = sub_30E7F8(a1, v23);
    v76 = v25;
    v26 = *(a1 + 24);
    v70 = a5;
    v69 = a4;
    if (v26 >= *(a1 + 32))
    {
      v27 = sub_3095BC(a1 + 16, &v79, &v74, word_2290740, &v73, &v78, &v77, &v76);
    }

    else
    {
      sub_30DEB8(v26, v23, 0, 0x1FFF, 0, 0, v24, v25);
      v27 = v26 + 12;
      *(a1 + 24) = v26 + 12;
    }

    *(a1 + 24) = v27;
    v28 = *(a1 + 16);
    for (i = v27 - v28; ; i = *(a1 + 24) - v28)
    {
      v31 = *(a1 + 40);
      if (0xAAAAAAAAAAAAAAABLL * (i >> 2) == v31)
      {
        break;
      }

      v32 = v28 + 12 * v31;
      v33 = *v32;
      v75 = *(v32 + 8);
      v74 = v33;
      *(a1 + 40) = v31 + 1;
      if ((sub_30E0F0(a1, &v74, 1) & 1) == 0)
      {
        if (v74 == v79 && WORD2(v74) == WORD2(v79) && BYTE6(v74) == BYTE6(v79) || (sub_30E56C(a1, v74) & 1) != 0)
        {
          v34 = sub_2B4EDC(*a1, v74 & 0xFFFFFFFFFFFFLL, (a2 == 0) ^ ((v74 & 0xFF000000000000) != 0));
          sub_2B365C(*a1, v34, a2, (a1 + 48));
          v71 = sub_30E220(a1, v74);
          v36 = *(a1 + 48);
          v35 = *(a1 + 56);
          while (1)
          {
            if (v36 == v35)
            {
              goto LABEL_25;
            }

            v37 = *v36;
            v38 = sub_30E220(a1, *v36);
            if (v38 != 5)
            {
              v39 = v37 == v79 && WORD2(v37) == WORD2(v79);
              if (!v39 || BYTE6(v37) != BYTE6(v79))
              {
                if (v74 == v79 && WORD2(v74) == WORD2(v79) && BYTE6(v74) == BYTE6(v79))
                {
                  break;
                }

                if (v74 != v37 || WORD2(v74) != WORD2(v37))
                {
                  break;
                }
              }
            }

LABEL_33:
            ++v36;
          }

          v42 = v38;
          v43 = v75;
          v44 = sub_2B51D8(*a1, v37 & 0xFFFFFFFFFFFFLL);
          v45 = (v44 - *v44);
          if (*v45 < 9u)
          {
            LODWORD(v46) = 0;
          }

          else
          {
            v46 = v45[4];
            if (v46)
            {
              LODWORD(v46) = *(v44 + v46);
            }
          }

          v47 = v46 % 0x64 > 0x31;
          v48 = (v43 & 0xFFF) + v46 / 0x64;
          if (v47)
          {
            v49 = v48 + 1;
          }

          else
          {
            v49 = v48;
          }

          v50 = v74;
          if (a2)
          {
            v51 = v37;
          }

          else
          {
            v51 = v74;
            v50 = v37;
          }

          v52 = sub_30E438(a1, v51, v50);
          v53 = v75;
          if (v71 == v42)
          {
            v54 = (v75 >> 25) & 3;
          }

          else
          {
            v54 = ((v75 >> 25) & 3) + 1;
          }

          if ((v75 & 0x40000000) != 0)
          {
            v55 = 1;
            if ((v75 & 0x80000000) == 0)
            {
              goto LABEL_67;
            }

LABEL_65:
            v56 = 1;
          }

          else
          {
            v55 = sub_30E780(a1, v37);
            if ((v75 & 0x80000000) != 0)
            {
              goto LABEL_65;
            }

LABEL_67:
            v56 = sub_30E7F8(a1, v37);
          }

          sub_30DEB8(&v73, v37, v49, v31, v54, ((v53 >> 27) & 7) + v52, v55, v56);
          if ((sub_30DF2C(a1, &v73, 1) & 1) == 0 && sub_30E5C0(a1, &v73, a2))
          {
            sub_3071B0(a1 + 16, &v73);
          }

          goto LABEL_33;
        }

        if (sub_30DF2C(a1, &v74, 0))
        {
          v30 = (a1 + 72);
        }

        else
        {
          v30 = v70;
        }

        sub_30DA94(a1, v79, a2, v69, v30);
      }

LABEL_25:
      v28 = *(a1 + 16);
    }

    v57 = *(a1 + 72);
    v58 = *(a1 + 80);
    if (v57 != v58)
    {
      v59 = v70[1];
      do
      {
        v60 = *v70;
        if (*v70 == v59)
        {
LABEL_82:
          if (v59 >= v70[2])
          {
            v59 = sub_52C28(v70, v57);
          }

          else
          {
            *v59 = 0;
            v59[1] = 0;
            v59[2] = 0;
            *v59 = *v57;
            v59[2] = *(v57 + 16);
            *v57 = 0;
            *(v57 + 8) = 0;
            *(v57 + 16) = 0;
            v59 += 3;
          }

          v70[1] = v59;
        }

        else
        {
          v61 = *(*(v57 + 8) - 8);
          while (1)
          {
            v62 = *(v60 + 8);
            if (__PAIR64__(*(v62 - 4), *(v62 - 8)) == __PAIR64__(WORD2(v61), v61) && *(v62 - 2) == BYTE6(v61))
            {
              break;
            }

            v60 += 24;
            if (v60 == v59)
            {
              goto LABEL_82;
            }
          }
        }

        v57 += 24;
      }

      while (v57 != v58);
    }

    v64 = *(a1 + 96);
    v63 = *(a1 + 104);
    if (v64 != v63)
    {
      v65 = v70[1];
      do
      {
        v66 = *v70;
        if (*v70 == v65)
        {
LABEL_95:
          if (v65 >= v70[2])
          {
            v65 = sub_52C28(v70, v64);
          }

          else
          {
            *v65 = 0;
            v65[1] = 0;
            v65[2] = 0;
            *v65 = *v64;
            v65[2] = *(v64 + 16);
            *v64 = 0;
            *(v64 + 8) = 0;
            *(v64 + 16) = 0;
            v65 += 3;
          }

          v70[1] = v65;
        }

        else
        {
          v67 = *(*(v64 + 8) - 8);
          while (1)
          {
            v68 = *(v66 + 8);
            if (__PAIR64__(*(v68 - 4), *(v68 - 8)) == __PAIR64__(WORD2(v67), v67) && *(v68 - 2) == BYTE6(v67))
            {
              break;
            }

            v66 += 24;
            if (v66 == v65)
            {
              goto LABEL_95;
            }
          }
        }

        v64 += 24;
      }

      while (v64 != v63);
    }
  }
}

void sub_30DA94(uint64_t *a1, uint64_t a2, int a3, int a4, uint64_t *a5)
{
  v5 = a5;
  __p[0] = 0;
  __p[1] = 0;
  v45 = 0;
  v7 = a1[2] + 12 * a1[5];
  v9 = *(v7 - 4);
  v8 = (v7 - 4);
  v10 = (v8 - 2);
  if ((~v9 & 0x1FFF000) == 0)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_19;
  }

  v12 = 0;
  do
  {
    if (v12 < v45)
    {
      *v12 = *v10;
      v12 += 8;
    }

    else
    {
      v15 = __p[0];
      v16 = v12 - __p[0];
      v17 = (v12 - __p[0]) >> 3;
      v18 = v17 + 1;
      if ((v17 + 1) >> 61)
      {
        sub_1794();
      }

      v19 = v45 - __p[0];
      if ((v45 - __p[0]) >> 2 > v18)
      {
        v18 = v19 >> 2;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        v20 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        if (!(v20 >> 61))
        {
          operator new();
        }

        sub_1808();
      }

      v21 = (8 * v17);
      *v21 = *v10;
      v12 = (v21 + 1);
      memcpy(0, v15, v16);
      __p[0] = 0;
      v45 = 0;
    }

    __p[1] = v12;
    v10 = a1[2] + 12 * ((*v8 >> 12) & 0x1FFF);
    v8 = (v10 + 8);
  }

  while ((~*(v10 + 8) & 0x1FFF000) != 0);
  v11 = __p[0];
  v5 = a5;
  v13 = v12 - __p[0];
  v14 = (v12 - __p[0]) >> 3;
  if (v14 < 2 || __PAIR64__(*(v12 - 2), *(v12 - 2)) != __PAIR64__(WORD2(a2), a2))
  {
LABEL_19:
    if (v12 >= v45)
    {
      v28 = v14 + 1;
      if ((v14 + 1) >> 61)
      {
        sub_1794();
      }

      v29 = v45 - v11;
      if ((v45 - v11) >> 2 > v28)
      {
        v28 = v29 >> 2;
      }

      if (v29 >= 0x7FFFFFFFFFFFFFF8)
      {
        v30 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v30 = v28;
      }

      if (v30)
      {
        if (!(v30 >> 61))
        {
          operator new();
        }

        sub_1808();
      }

      *(8 * v14) = *v10;
      v22 = (8 * v14 + 8);
      memcpy(0, v11, v13);
      __p[0] = 0;
      v45 = 0;
      v23 = a3;
      __p[1] = v22;
      if (a3 == 1)
      {
LABEL_21:
        v24 = sub_31FC98(__p, a4, *a1);
        v25 = __p[0];
        v26 = __p[1] - 8;
        if (__p[0] == __p[1] || v26 <= __p[0])
        {
          goto LABEL_44;
        }

        goto LABEL_41;
      }
    }

    else
    {
      *v12 = *v10;
      v22 = v12 + 8;
      v23 = a3;
      __p[1] = v22;
      if (a3 == 1)
      {
        goto LABEL_21;
      }
    }

    v24 = 0;
    v25 = __p[0];
    v26 = v22 - 8;
    if (__p[0] == v22 || v26 <= __p[0])
    {
      goto LABEL_44;
    }

LABEL_41:
    v32 = v25 + 8;
    do
    {
      v33 = *(v32 - 1);
      v34 = *v26;
      *(v32 - 5) = *(v26 + 3);
      *(v32 - 2) = v34;
      *v26 = v33;
      v26[6] = BYTE6(v33);
      *(v26 + 2) = WORD2(v33);
      v26 -= 8;
      v35 = v32 >= v26;
      v32 += 8;
    }

    while (!v35);
LABEL_44:
    if (v23)
    {
      v36 = 0;
    }

    else
    {
      v36 = sub_31FC98(__p, a4, *a1);
    }

    if ((v24 | v36) == 1)
    {
      v37 = a1[13];
      if (v37 >= a1[14])
      {
        a1[13] = sub_52C28(a1 + 12, __p);
      }

      else
      {
        *v37 = 0;
        v37[1] = 0;
        v37[2] = 0;
        *v37 = *__p;
        v37[2] = v45;
        __p[0] = 0;
        __p[1] = 0;
        v45 = 0;
        a1[13] = (v37 + 3);
      }
    }

    else
    {
      v38 = v5[1];
      if (v38 >= v5[2])
      {
        v39 = sub_52C28(v5, __p);
      }

      else
      {
        *v38 = 0;
        v38[1] = 0;
        v38[2] = 0;
        *v38 = *__p;
        v38[2] = v45;
        __p[0] = 0;
        __p[1] = 0;
        v45 = 0;
        v39 = (v38 + 3);
      }

      v5[1] = v39;
    }
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_30DE8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_30DEB8(uint64_t result, uint64_t a2, __int16 a3, __int16 a4, unsigned int a5, unsigned int a6, int a7, int a8)
{
  *result = a2;
  if (a5 >= 3)
  {
    v8 = 3;
  }

  else
  {
    v8 = a5;
  }

  v9 = a3 & 0xFFF | ((a4 & 0x1FFF) << 12) | (v8 << 25);
  if (a6 >= 7)
  {
    v10 = 7;
  }

  else
  {
    v10 = a6;
  }

  v11 = v9 | (v10 << 27);
  if (a7)
  {
    v12 = 0x40000000;
  }

  else
  {
    v12 = 0;
  }

  if (a8)
  {
    v13 = 0x80000000;
  }

  else
  {
    v13 = 0;
  }

  *(result + 8) = v11 | v12 | v13;
  return result;
}

double sub_30DF0C(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = 5;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

uint64_t sub_30DF2C(void *a1, uint64_t *a2, int a3)
{
  v8 = a3;
  v5 = a1[2];
  v6 = v5 + 12 * a1[5];
  if (sub_30DFB4(v5, v6, a2, &v8))
  {
    return 1;
  }

  else
  {
    return sub_30DFB4(v6, a1[3], a2, &v8);
  }
}

uint64_t sub_30DFB4(uint64_t a1, uint64_t a2, uint64_t *a3, _DWORD *a4)
{
  if (a1 != a2)
  {
    v4 = *a3;
    v5 = BYTE6(*a3);
    v6 = WORD2(*a3);
    if (*a4 == 1)
    {
      while (1)
      {
        if (*a1 == v4 && *(a1 + 4) == v6 && *(a1 + 6) == v5)
        {
          v8 = *(a1 + 8);
          v9 = *(a3 + 2);
          if (!((v9 ^ v8) >> 30))
          {
            v10 = (v8 >> 25) & 3;
            v11 = (v9 >> 25) & 3;
            if (v10 == v11)
            {
              if (((v8 >> 27) & 7) <= ((v9 >> 27) & 7) && (*(a1 + 8) & 0xFFFu) < (a3[1] & 0xFFFu))
              {
                return 1;
              }
            }

            else if (v10 && v10 < v11)
            {
              return 1;
            }
          }
        }

        a1 += 12;
        if (a1 == a2)
        {
          return 0;
        }
      }
    }

    do
    {
      if (*a1 == v4 && *(a1 + 4) == v6 && *(a1 + 6) == v5)
      {
        v13 = *(a1 + 8);
        v14 = *(a3 + 2);
        if (!((v14 ^ v13) >> 30))
        {
          v15 = (v13 >> 25) & 3;
          v16 = (v14 >> 25) & 3;
          if (v15 == v16)
          {
            v17 = (v13 >> 27) & 7;
            v18 = (v14 >> 27) & 7;
            if (v17 == v18)
            {
              if ((*(a1 + 8) & 0xFFFu) < (a3[1] & 0xFFFu))
              {
                return 1;
              }
            }

            else if (v17 < v18)
            {
              return 1;
            }
          }

          else if (v15 && v15 < v16)
          {
            return 1;
          }
        }
      }

      a1 += 12;
    }

    while (a1 != a2);
  }

  return 0;
}

uint64_t sub_30E0F0(void *a1, uint64_t *a2, int a3)
{
  v3 = a1[3];
  v4 = a1[2] + 12 * a1[5];
  if (v3 != v4)
  {
    v5 = *a2;
    v6 = BYTE6(*a2);
    v7 = WORD2(*a2);
    v8 = *(a2 + 2);
    v9 = (v8 >> 25) & 3;
    v10 = (v8 >> 27) & 7;
    v11 = v8 & 0xFFF;
    if (a3 == 1)
    {
      while (1)
      {
        if (*v4 == v5 && *(v4 + 4) == v7 && *(v4 + 6) == v6)
        {
          v14 = *(v4 + 8);
          if (!((v8 ^ v14) >> 30))
          {
            v15 = (v14 >> 25) & 3;
            if (v15 == v9)
            {
              if (((v14 >> 27) & 7) <= v10 && (*(v4 + 8) & 0xFFFu) < v11)
              {
                return 1;
              }
            }

            else if (v15 && v15 < v9)
            {
              return 1;
            }
          }
        }

        v4 += 12;
        if (v4 == v3)
        {
          return 0;
        }
      }
    }

    do
    {
      if (*v4 == v5 && *(v4 + 4) == v7 && *(v4 + 6) == v6)
      {
        v17 = *(v4 + 8);
        if (!((v8 ^ v17) >> 30))
        {
          v18 = (v17 >> 25) & 3;
          if (v18 == v9)
          {
            v19 = (v17 >> 27) & 7;
            if (v19 == v10)
            {
              if ((*(v4 + 8) & 0xFFFu) < v11)
              {
                return 1;
              }
            }

            else if (v19 < v10)
            {
              return 1;
            }
          }

          else if (v18 && v18 < v9)
          {
            return 1;
          }
        }
      }

      v4 += 12;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t sub_30E234(uint64_t a1, int a2, uint64_t a3)
{
  v5 = BYTE6(a1);
  if (!a2)
  {
    v10 = sub_2B51D8(a3, a1 & 0xFFFFFFFFFFFFLL);
    v11 = (v10 - *v10);
    v12 = *v11;
    if ((a1 & 0xFF000000000000) != 0)
    {
      if (v12 < 0x9B)
      {
        goto LABEL_18;
      }

      v13 = v11[77];
      if (!v13 || (*(v10 + v13) & 2) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (v12 < 0x9B || (v14 = v11[77]) == 0 || (*(v10 + v14) & 1) == 0)
    {
LABEL_18:
      v16 = sub_2B51D8(a3, a1 & 0xFFFFFFFFFFFFLL);
      v17 = (v16 - *v16);
      v18 = *v17;
      if ((a1 & 0xFF000000000000) != 0)
      {
        if (v18 >= 0x9B)
        {
          v19 = v17[77];
          if (v19)
          {
            if (*(v16 + v19))
            {
              return 5;
            }
          }
        }
      }

      else if (v18 >= 0x9B)
      {
        v21 = v17[77];
        if (v21)
        {
          if ((*(v16 + v21) & 2) != 0)
          {
            return 5;
          }
        }
      }

      goto LABEL_30;
    }

    return 0;
  }

  if (a2 == 2)
  {
    goto LABEL_30;
  }

  if (a2 != 3)
  {
    return 5;
  }

  v6 = sub_2B51D8(a3, a1 & 0xFFFFFFFFFFFFLL);
  v7 = (v6 - *v6);
  v8 = *v7;
  if (v5)
  {
    if (v8 < 0x47)
    {
      goto LABEL_30;
    }

    v9 = v7[35];
    if (!v9 || (*(v6 + v9) & 2) == 0)
    {
      goto LABEL_30;
    }

    return 3;
  }

  if (v8 >= 0x47)
  {
    v20 = v7[35];
    if (v20)
    {
      if (*(v6 + v20))
      {
        return 3;
      }
    }
  }

LABEL_30:
  v22 = sub_2B51D8(a3, a1 & 0xFFFFFFFFFFFFLL);
  v23 = (v22 - *v22);
  v24 = *v23;
  if (v5)
  {
    if (v24 < 0x39)
    {
      return 5;
    }

    v25 = v23[28];
    if (!v25)
    {
      return 5;
    }

    v26 = *(v22 + v25);
    if ((v26 & 2) != 0)
    {
      return 2;
    }

    goto LABEL_38;
  }

  if (v24 < 0x39)
  {
    return 5;
  }

  v27 = v23[28];
  if (!v27)
  {
    return 5;
  }

  v26 = *(v22 + v27);
  if ((v26 & 1) == 0)
  {
LABEL_38:
    if ((v26 & 7) == 4 || (v26 & 0x23) == 0x20)
    {
      return 2;
    }

    return 5;
  }

  return 2;
}

BOOL sub_30E438(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2B51D8(*a1, a2 & 0xFFFFFFFFFFFFLL);
  v7 = (v6 - *v6);
  v8 = *v7;
  if ((a2 & 0xFF000000000000) == 0)
  {
    if (v8 < 0x4B)
    {
      goto LABEL_8;
    }

    v9 = v7[37];
    if (!v9)
    {
      goto LABEL_8;
    }

LABEL_7:
    v10 = *(v6 + v9);
    goto LABEL_9;
  }

  if (v8 >= 0x49)
  {
    v9 = v7[36];
    if (v9)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  v10 = -1;
LABEL_9:
  v11 = sub_2B51D8(*a1, a3 & 0xFFFFFFFFFFFFLL);
  v12 = (v11 - *v11);
  v13 = *v12;
  if ((a3 & 0xFF000000000000) == 0)
  {
    if (v13 < 0x49)
    {
      goto LABEL_16;
    }

    v14 = v12[36];
    if (!v14)
    {
      goto LABEL_16;
    }

LABEL_15:
    v15 = *(v11 + v14);
    goto LABEL_17;
  }

  if (v13 >= 0x4B)
  {
    v14 = v12[37];
    if (v14)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  v15 = 0xFFFF;
LABEL_17:
  v16 = v10 + 18000;
  if (((v10 + 18000) >> 5) >= 0x465u)
  {
    v16 = v10 - 18000;
  }

  v17 = v15 - v16;
  if (v17 > 18000)
  {
    v17 -= 36000;
  }

  if (v17 < -17999)
  {
    v17 += 36000;
  }

  return fabs(v17 / 100.0) > 22.0;
}

uint64_t sub_30E56C(uint64_t *a1, uint64_t a2)
{
  v2 = sub_2B51D8(*a1, a2 & 0xFFFFFFFFFFFFLL);
  v3 = (v2 - *v2);
  if (*v3 >= 0x9Bu && (v4 = v3[77]) != 0)
  {
    return *(v2 + v4 + 2) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_30E5C0(uint64_t *a1, void *a2, int a3)
{
  v5 = sub_2B4EDC(*a1, *a2 & 0xFFFFFFFFFFFFLL, (a3 == 0) ^ ((*a2 & 0xFF000000000000) != 0));
  v6 = a1[2] + 12 * a1[5];
  v8 = *(v6 - 4);
  v7 = (v6 - 4);
  if ((~v8 & 0x1FFF000) == 0)
  {
    return 1;
  }

  v10 = v5;
  v11 = *a1;
  v12 = *(v7 - 1);
  if (a3)
  {
    if (sub_2B4EDC(v11, v12 & 0xFFFFFFFFFFFFLL, (v12 & 0xFF000000000000) == 0) == v10)
    {
      return 0;
    }

    while (1)
    {
      v13 = a1[2] + 12 * ((*v7 >> 12) & 0x1FFF);
      v14 = *(v13 + 8);
      v7 = (v13 + 8);
      result = (v14 & 0x1FFF000) == 33550336;
      if ((v14 & 0x1FFF000) == 0x1FFF000)
      {
        break;
      }

      if (sub_2B4EDC(*a1, *v13 & 0xFFFFFFFFFFFFLL, (*v13 & 0xFF000000000000) == 0) == v10)
      {
        return 0;
      }
    }
  }

  else
  {
    if (sub_2B4EDC(v11, v12 & 0xFFFFFFFFFFFFLL, (v12 & 0xFF000000000000) != 0) == v10)
    {
      return 0;
    }

    while (1)
    {
      v15 = a1[2] + 12 * ((*v7 >> 12) & 0x1FFF);
      v16 = *(v15 + 8);
      v7 = (v15 + 8);
      result = (v16 & 0x1FFF000) == 33550336;
      if ((v16 & 0x1FFF000) == 0x1FFF000)
      {
        break;
      }

      if (sub_2B4EDC(*a1, *v15 & 0xFFFFFFFFFFFFLL, (*v15 & 0xFF000000000000) != 0) == v10)
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL sub_30E7F8(uint64_t a1, uint64_t a2)
{
  if (sub_30E234(a2, *(a1 + 8), *a1) != 3)
  {
    return 0;
  }

  v4 = sub_2B51D8(*a1, a2 & 0xFFFFFFFFFFFFLL);
  v5 = (v4 - *v4);
  v6 = *v5;
  if ((a2 & 0xFF000000000000) != 0)
  {
    if (v6 >= 0x9B)
    {
      v7 = v5[77];
      if (v7)
      {
        if ((*(v4 + v7) & 2) != 0)
        {
          return 0;
        }
      }
    }
  }

  else if (v6 >= 0x9B)
  {
    v8 = v5[77];
    if (v8)
    {
      if (*(v4 + v8))
      {
        return 0;
      }
    }
  }

  v9 = sub_2B51D8(*a1, a2 & 0xFFFFFFFFFFFFLL);
  v10 = (v9 - *v9);
  v11 = *v10;
  if ((a2 & 0xFF000000000000) != 0)
  {
    if (v11 >= 0x9B)
    {
      v12 = v10[77];
      if (v12)
      {
        v13 = 1;
        return (*(v9 + v12) & v13) != 0;
      }
    }
  }

  else if (v11 >= 0x9B)
  {
    v12 = v10[77];
    if (v12)
    {
      v13 = 2;
      return (*(v9 + v12) & v13) != 0;
    }
  }

  return 0;
}

void *sub_30E900(void *a1, uint64_t a2)
{
  v4 = sub_2FF718(a1, __ROR8__(a2 & 0xFFFFFFFFFFFFLL, 32));
  v5 = sub_4A5C(v4, "(", 1);
  if ((a2 & 0xFF000000000000) != 0)
  {
    v6 = "rev";
  }

  else
  {
    v6 = "fwd";
  }

  v7 = sub_4A5C(v5, v6, 3);
  sub_4A5C(v7, ")", 1);
  return a1;
}

uint64_t *sub_30E974(uint64_t *a1, _BYTE *a2)
{
  __p = 0;
  v15 = 0;
  v16 = 0;
  v4 = sub_58218(a1, &__p);
  if ((*(v4 + *(*v4 - 24) + 32) & 5) != 0)
  {
LABEL_33:
    if ((SHIBYTE(v16) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_36;
  }

  if (SHIBYTE(v16) < 0)
  {
    if (v15 == 7 && *__p == 1415532366 && *(__p + 3) == 1431455828)
    {
      goto LABEL_30;
    }

    if (v15 == 7 && *__p == 1447645776 && *(__p + 3) == 1163149654)
    {
LABEL_32:
      *a2 = 1;
      goto LABEL_33;
    }

    if (v15 == 7)
    {
      p_p = __p;
LABEL_25:
      v10 = *p_p;
      v11 = *(p_p + 3);
      if (v10 == 1130319694 && v11 == 1397899587)
      {
        *a2 = 2;
        if ((SHIBYTE(v16) & 0x80000000) == 0)
        {
          return a1;
        }

        goto LABEL_36;
      }
    }

LABEL_29:
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
    goto LABEL_33;
  }

  if (SHIBYTE(v16) != 7)
  {
    goto LABEL_29;
  }

  if (__p != 1415532366 || *(&__p + 3) != 1431455828)
  {
    if (__p != 1447645776 || *(&__p + 3) != 1163149654)
    {
      p_p = &__p;
      goto LABEL_25;
    }

    goto LABEL_32;
  }

LABEL_30:
  *a2 = 0;
  if ((SHIBYTE(v16) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_36:
  operator delete(__p);
  return a1;
}

void sub_30EB4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_30EB68(uint64_t *a1, _BYTE *a2)
{
  __p = 0;
  v13 = 0;
  v14 = 0;
  v4 = sub_58218(a1, &__p);
  if ((*(v4 + *(*v4 - 24) + 32) & 5) == 0)
  {
    if (SHIBYTE(v14) < 0)
    {
      if (v13 == 7 && *__p == 1415532366 && *(__p + 3) == 1431455828)
      {
        goto LABEL_23;
      }

      if (v13 == 7)
      {
        p_p = __p;
LABEL_16:
        v8 = *p_p;
        v9 = *(p_p + 3);
        if (v8 == 1196310852 && v9 == 1397900615)
        {
          *a2 = 1;
          if ((SHIBYTE(v14) & 0x80000000) == 0)
          {
            return a1;
          }

          goto LABEL_26;
        }
      }
    }

    else if (SHIBYTE(v14) == 7)
    {
      if (__p != 1415532366 || *(&__p + 3) != 1431455828)
      {
        p_p = &__p;
        goto LABEL_16;
      }

LABEL_23:
      *a2 = 0;
      if ((SHIBYTE(v14) & 0x80000000) == 0)
      {
        return a1;
      }

      goto LABEL_26;
    }

    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  if ((SHIBYTE(v14) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_26:
  operator delete(__p);
  return a1;
}

void sub_30ECE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_30ECFC(uint64_t *a1, _BYTE *a2)
{
  __p = 0;
  v11 = 0;
  v12 = 0;
  v4 = sub_58218(a1, &__p);
  if ((*(v4 + *(*v4 - 24) + 32) & 5) == 0)
  {
    if (SHIBYTE(v12) < 0)
    {
      if (v11 == 7)
      {
        p_p = __p;
LABEL_7:
        v6 = *p_p;
        v7 = *(p_p + 3);
        if (v6 == 1415532366 && v7 == 1431455828)
        {
          *a2 = 0;
          if ((SHIBYTE(v12) & 0x80000000) == 0)
          {
            return a1;
          }

          goto LABEL_15;
        }
      }
    }

    else if (SHIBYTE(v12) == 7)
    {
      p_p = &__p;
      goto LABEL_7;
    }

    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  if ((SHIBYTE(v12) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_15:
  operator delete(__p);
  return a1;
}

void sub_30EE04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_30EE20(uint64_t a1, uint64_t a2)
{
  sub_D7B0(v19);
  sub_4A5C(&v20, a1, a2);
  v24 = 0;
  sub_30E974(v19, &v24);
  if ((*(&v22[0].__locale_ + *(v19[0] - 24)) & 5) != 0)
  {
    sub_D7B0(v17);
    v7 = sub_4A5C(v18, "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/routing/common/api/common/algorithms/StringAlgorithms.h", 124);
    sub_4A5C(v7, ":", 1);
    v8 = std::ostream::operator<<();
    v9 = sub_4A5C(v8, ":", 1);
    v10 = sub_4A5C(v9, "Failed parsing: ", 16);
    sub_4A5C(v10, a1, a2);
    exception = __cxa_allocate_exception(0x40uLL);
    sub_DAE4(v17, v15);
    if ((v16 & 0x80u) == 0)
    {
      v12 = v15;
    }

    else
    {
      v12 = v15[0];
    }

    if ((v16 & 0x80u) == 0)
    {
      v13 = v16;
    }

    else
    {
      v13 = v15[1];
    }

    v14 = sub_2D390(exception, v12, v13);
  }

  v4 = v24;
  v20 = v5;
  if (v23 < 0)
  {
    operator delete(v22[7].__locale_);
  }

  std::locale::~locale(v22);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return v4;
}

void sub_30F0A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_DBE4(&a15);
  sub_DBE4(&a50);
  _Unwind_Resume(a1);
}

uint64_t sub_30F114(uint64_t a1, uint64_t a2)
{
  sub_D7B0(v19);
  sub_4A5C(&v20, a1, a2);
  v24 = 0;
  sub_30EB68(v19, &v24);
  if ((*(&v22[0].__locale_ + *(v19[0] - 24)) & 5) != 0)
  {
    sub_D7B0(v17);
    v7 = sub_4A5C(v18, "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/routing/common/api/common/algorithms/StringAlgorithms.h", 124);
    sub_4A5C(v7, ":", 1);
    v8 = std::ostream::operator<<();
    v9 = sub_4A5C(v8, ":", 1);
    v10 = sub_4A5C(v9, "Failed parsing: ", 16);
    sub_4A5C(v10, a1, a2);
    exception = __cxa_allocate_exception(0x40uLL);
    sub_DAE4(v17, v15);
    if ((v16 & 0x80u) == 0)
    {
      v12 = v15;
    }

    else
    {
      v12 = v15[0];
    }

    if ((v16 & 0x80u) == 0)
    {
      v13 = v16;
    }

    else
    {
      v13 = v15[1];
    }

    v14 = sub_2D390(exception, v12, v13);
  }

  v4 = v24;
  v20 = v5;
  if (v23 < 0)
  {
    operator delete(v22[7].__locale_);
  }

  std::locale::~locale(v22);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return v4;
}

void sub_30F39C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_DBE4(&a15);
  sub_DBE4(&a50);
  _Unwind_Resume(a1);
}

uint64_t sub_30F408(uint64_t a1, uint64_t a2)
{
  sub_D7B0(v19);
  sub_4A5C(&v20, a1, a2);
  v24 = 0;
  sub_30ECFC(v19, &v24);
  if ((*(&v22[0].__locale_ + *(v19[0] - 24)) & 5) != 0)
  {
    sub_D7B0(v17);
    v7 = sub_4A5C(v18, "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/routing/common/api/common/algorithms/StringAlgorithms.h", 124);
    sub_4A5C(v7, ":", 1);
    v8 = std::ostream::operator<<();
    v9 = sub_4A5C(v8, ":", 1);
    v10 = sub_4A5C(v9, "Failed parsing: ", 16);
    sub_4A5C(v10, a1, a2);
    exception = __cxa_allocate_exception(0x40uLL);
    sub_DAE4(v17, v15);
    if ((v16 & 0x80u) == 0)
    {
      v12 = v15;
    }

    else
    {
      v12 = v15[0];
    }

    if ((v16 & 0x80u) == 0)
    {
      v13 = v16;
    }

    else
    {
      v13 = v15[1];
    }

    v14 = sub_2D390(exception, v12, v13);
  }

  v4 = v24;
  v20 = v5;
  if (v23 < 0)
  {
    operator delete(v22[7].__locale_);
  }

  std::locale::~locale(v22);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return v4;
}

void sub_30F690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_DBE4(&a15);
  sub_DBE4(&a50);
  _Unwind_Resume(a1);
}

uint64_t sub_30F6FC(uint64_t a1, int **a2)
{
  if (*(a1 + 8) != 1 || (v3 = sub_2BBF84(*a1, a2[4] & 0xFFFFFFFFFFFFFFLL, 0), (v4 & 1) == 0))
  {
    v5 = *a2;
    v6 = (*a2 - **a2);
    v7 = *v6;
    if (*(a2 + 38))
    {
      if (v7 >= 0x47)
      {
        if (!v6[35])
        {
          goto LABEL_13;
        }

        v8 = *&v5[v6[35]];
        if ((v8 & 2) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_11;
      }
    }

    else if (v7 >= 0x47)
    {
      if (!v6[35] || (v8 = *&v5[v6[35]], (v8 & 1) == 0))
      {
LABEL_13:
        v10 = v6[28];
        if (v10)
        {
          v9 = *&v5[v10] >> 8;
          goto LABEL_16;
        }

LABEL_15:
        LOBYTE(v9) = 0;
        goto LABEL_16;
      }

LABEL_11:
      v9 = v8 >> 2;
LABEL_16:
      v3 = v9;
      return v3 & 1;
    }

    if (v7 < 0x39)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  return v3 & 1;
}

uint64_t sub_30F7C8(uint64_t a1, int **a2)
{
  if (*(a1 + 8) == 1)
  {
    v3 = sub_2BC294(*a1, (((*(a2 + 9) & 0x20000000) << 19) | (*(a2 + 9) << 32) | *(a2 + 8)) ^ 0x1000000000000, 0);
    if (v4)
    {
      return v3 & 1;
    }
  }

  v5 = (*a2 - **a2);
  if (*v5 < 0x39u || (v6 = v5[28]) == 0 || (*(*a2 + v6 + 1) & 1) == 0)
  {
    v3 = 0;
    return v3 & 1;
  }

  return 1;
}

uint64_t sub_30F868(uint64_t a1, int **a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_2BC10C(*a1, a2[4] & 0xFFFFFFFFFFFFFFLL, 0);
    if (v3)
    {
      return 1;
    }
  }

  v5 = (*a2 - **a2);
  if (*v5 >= 0x9Bu && (v6 = v5[77]) != 0)
  {
    return (*(*a2 + v6 + 2) >> 2) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_30F8F8(uint64_t a1, void *a2)
{
  v2 = (*a2 - **a2);
  if (*v2 < 0x9Bu)
  {
    return 4;
  }

  v3 = v2[77];
  if (!v3)
  {
    return 4;
  }

  v4 = *(*a2 + v3);
  if ((v4 & 3) != 0)
  {
    if ((v4 & 0x40000) != 0)
    {
      return 1;
    }

    if ((v4 & 0xA0000) == 0)
    {
      return 0;
    }

    if ((v4 & 0x2000000) != 0)
    {
      return 1;
    }

    return 2;
  }

  if ((v4 & 0x40000) != 0)
  {
    return 5;
  }

  if ((v4 & 0xA0000) == 0)
  {
    return 4;
  }

  if ((v4 & 0x2000000) != 0)
  {
    return 5;
  }

  else
  {
    return 6;
  }
}

uint64_t sub_30F984(uint64_t a1, int **a2)
{
  v2 = *a2;
  v3 = (*a2 - **a2);
  v4 = *v3;
  if (*(a2 + 38))
  {
    if (v4 >= 0x47)
    {
      if (!v3[35])
      {
        goto LABEL_11;
      }

      v5 = *&v2[v3[35]];
      if ((v5 & 2) == 0)
      {
        goto LABEL_11;
      }

      return (v5 >> 2) & 1;
    }

LABEL_10:
    if (v4 < 0x39)
    {
      return 0;
    }

    goto LABEL_11;
  }

  if (v4 < 0x47)
  {
    goto LABEL_10;
  }

  if (v3[35])
  {
    v5 = *&v2[v3[35]];
    if (v5)
    {
      return (v5 >> 2) & 1;
    }
  }

LABEL_11:
  v7 = v3[28];
  if (v7)
  {
    return (*&v2[v7] >> 8) & 1;
  }

  return 0;
}

uint64_t sub_30FA10(uint64_t a1, char **a2)
{
  v2 = *a2;
  v3 = &(*a2)[-**a2];
  v4 = *v3;
  if (v4 < 0x39)
  {
    return 0;
  }

  if (!*(v3 + 28) || (v2[*(v3 + 28) + 1] & 1) == 0)
  {
    if (v4 >= 0x9B)
    {
      v5 = *(v3 + 77);
      if (v5)
      {
        return (*&v2[v5] >> 23) & 2;
      }
    }

    return 0;
  }

  return 1;
}

double sub_30FA6C@<D0>(int *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0u;
  v6 = (a3 + 8);
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  v7 = sub_12331FC();
  result = 0.0;
  *(a3 + 64) = 0u;
  v9 = (a3 + 64);
  *(a3 + 120) = 0;
  v10 = (a3 + 120);
  *(a3 + 56) = v7;
  *(a3 + 128) = 0;
  *(a3 + 136) = 0;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 111) = 0;
  if (a1)
  {
    v11 = (a1 - *a1);
    if (*v11 >= 5u && (v12 = v11[2]) != 0)
    {
      v13 = (a1 + v12);
      v14 = *v13;
      v15 = *(v13 + v14);
      if (v15 >= 0x17)
      {
        operator new();
      }

      BYTE7(v54) = *(v13 + v14);
      if (v15)
      {
        memcpy(&v53, v13 + v14 + 4, v15);
        *(&v53 + v15) = 0;
        if ((*(a3 + 31) & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      *(&v53 + v15) = 0;
      if (*(a3 + 31) < 0)
      {
LABEL_9:
        operator delete(*v6);
      }
    }

    else
    {
      BYTE7(v54) = 0;
      LOBYTE(v53) = 0;
      if (*(a3 + 31) < 0)
      {
        goto LABEL_9;
      }
    }

LABEL_10:
    *v6 = v53;
    *(a3 + 24) = v54;
    v16 = (a1 - *a1);
    if (*v16 >= 7u && (v17 = v16[3]) != 0)
    {
      v18 = (a1 + v17);
      v19 = *v18;
      v20 = *(v18 + v19);
      if (v20 >= 0x17)
      {
        operator new();
      }

      BYTE7(v54) = *(v18 + v19);
      if (v20)
      {
        memcpy(&v53, v18 + v19 + 4, v20);
        *(&v53 + v20) = 0;
        if ((*(a3 + 111) & 0x80000000) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      *(&v53 + v20) = 0;
      if (*(a3 + 111) < 0)
      {
LABEL_17:
        operator delete(*(a3 + 88));
      }
    }

    else
    {
      BYTE7(v54) = 0;
      LOBYTE(v53) = 0;
      if (*(a3 + 111) < 0)
      {
        goto LABEL_17;
      }
    }

LABEL_18:
    *(a3 + 88) = v53;
    *(a3 + 104) = v54;
    v21 = (a1 - *a1);
    if (*v21 >= 9u && (v22 = v21[4]) != 0)
    {
      v23 = (a1 + v22);
      v24 = *v23;
      v25 = *(v23 + v24);
      if (v25 >= 0x17)
      {
        operator new();
      }

      BYTE7(v54) = *(v23 + v24);
      if (v25)
      {
        memcpy(&v53, v23 + v24 + 4, v25);
        v33 = &v53 + v25;
        v27 = a3 + 32;
        *v33 = 0;
        if ((*(a3 + 55) & 0x80000000) == 0)
        {
LABEL_26:
          *v27 = v53;
          *(v27 + 16) = v54;
          v28 = *(a3 + 55);
          if ((v28 & 0x80u) == 0)
          {
            v29 = v27;
          }

          else
          {
            v29 = *(a3 + 32);
          }

          if ((v28 & 0x80u) != 0)
          {
            v28 = *(a3 + 40);
          }

          if (v28 >= 0x1F)
          {
            v30 = 31;
          }

          else
          {
            v30 = v28;
          }

          switch(v28)
          {
            case 0uLL:
              v54 = 0u;
              v55 = 0u;
              v53 = 0u;
              goto LABEL_52;
            case 1uLL:
              v31 = *v29;
              v32 = 1;
              break;
            case 2uLL:
              v31 = *v29;
              v32 = 2;
              break;
            case 3uLL:
              v31 = *v29 | (v29[2] << 16);
              v32 = 3;
              break;
            default:
              sub_852E4(v29, v30, &v53);
LABEL_52:
              *(a3 + 56) = sub_1232F28(&v53, 0);
              v34 = *a1;
              v35 = -v34;
              v36 = (a1 - v34);
              v37 = *v36;
              if (v37 < 0xB)
              {
                *a3 = 0;
                if (a2)
                {
LABEL_56:
                  if (v37 >= 0xD && v36[6])
                  {
                    v39 = (a1 + v36[6] + *(a1 + v36[6]));
                  }

                  else
                  {
                    v39 = 0;
                  }

                  sub_31010C(&v53, v39);
                  v49 = *v9;
                  if (!*v9)
                  {
LABEL_85:
                    *(a3 + 64) = v53;
                    *(a3 + 80) = v54;
                    v40 = (a1 - *a1);
                    v41 = *v40;
                    if (v41 <= 0xE)
                    {
                      goto LABEL_86;
                    }

                    goto LABEL_61;
                  }

                  v50 = *(a3 + 72);
                  v51 = *v9;
                  if (v50 == v49)
                  {
LABEL_84:
                    *(a3 + 72) = v49;
                    operator delete(v51);
                    goto LABEL_85;
                  }

                  while (1)
                  {
                    if (*(v50 - 9) < 0)
                    {
                      operator delete(*(v50 - 4));
                      v52 = v50 - 7;
                      if ((*(v50 - 33) & 0x80000000) == 0)
                      {
                        goto LABEL_79;
                      }

LABEL_82:
                      operator delete(*v52);
                      v50 = v52;
                      if (v52 == v49)
                      {
LABEL_83:
                        v51 = *v9;
                        goto LABEL_84;
                      }
                    }

                    else
                    {
                      v52 = v50 - 7;
                      if (*(v50 - 33) < 0)
                      {
                        goto LABEL_82;
                      }

LABEL_79:
                      v50 = v52;
                      if (v52 == v49)
                      {
                        goto LABEL_83;
                      }
                    }
                  }
                }
              }

              else
              {
                v38 = v36[5];
                if (v36[5])
                {
                  LOBYTE(v38) = *(a1 + v38);
                }

                *a3 = v38;
                if (a2)
                {
                  goto LABEL_56;
                }
              }

              v40 = (a1 + v35);
              v41 = *v40;
              if (v41 <= 0xE)
              {
LABEL_86:
                *(a3 + 112) = 0;
                goto LABEL_87;
              }

LABEL_61:
              v42 = v40[7];
              if (v40[7])
              {
                LOBYTE(v42) = *(a1 + v42) != 0;
              }

              *(a3 + 112) = v42;
              if (v41 >= 0x11)
              {
                v43 = v40[8];
                if (v40[8])
                {
                  LOBYTE(v43) = *(a1 + v43) != 0;
                }

                *(a3 + 113) = v43;
                if (v41 >= 0x13)
                {
                  v44 = v40[9];
                  if (v40[9])
                  {
                    LOBYTE(v44) = *(a1 + v44);
                  }

                  *(a3 + 114) = v44;
                  if (v41 >= 0x15)
                  {
                    v45 = v40[10];
                    if (v45)
                    {
                      v46 = (a1 + v45);
                      v47 = *v46;
                      v48 = *(v46 + v47);
                      if (v48 >= 0x17)
                      {
                        operator new();
                      }

                      BYTE7(v54) = *(v46 + v47);
                      if (v48)
                      {
                        memcpy(&v53, v46 + v47 + 4, v48);
                      }

                      *(&v53 + v48) = 0;
                      if ((*(a3 + 143) & 0x80000000) == 0)
                      {
                        goto LABEL_91;
                      }

                      goto LABEL_90;
                    }
                  }

LABEL_89:
                  BYTE7(v54) = 0;
                  LOBYTE(v53) = 0;
                  if ((*(a3 + 143) & 0x80000000) == 0)
                  {
LABEL_91:
                    result = *&v53;
                    *v10 = v53;
                    *(a3 + 136) = v54;
                    return result;
                  }

LABEL_90:
                  operator delete(*v10);
                  goto LABEL_91;
                }

LABEL_88:
                *(a3 + 114) = 0;
                goto LABEL_89;
              }

LABEL_87:
              *(a3 + 113) = 0;
              goto LABEL_88;
          }

          *&v53 = v31;
          *(&v53 + 1) = v32;
          v54 = 0u;
          v55 = 0u;
          goto LABEL_52;
        }
      }

      else
      {
        v26 = &v53 + v25;
        v27 = a3 + 32;
        *v26 = 0;
        if ((*(a3 + 55) & 0x80000000) == 0)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      BYTE7(v54) = 0;
      v27 = a3 + 32;
      LOBYTE(v53) = 0;
      if ((*(a3 + 55) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }
    }

    operator delete(*v27);
    goto LABEL_26;
  }

  return result;
}

void sub_31010C(uint64_t *a1, unsigned int *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_310BDC(a1, *a2);
    v4 = *a2;
    if (v4)
    {
      v5 = 0;
      v6 = 4 * v4;
      do
      {
        v7 = a2[v5 / 4 + 1];
        v8 = &a2[v5 / 4] + v7;
        HIDWORD(v31) = 0;
        *__p = 0u;
        memset(v30, 0, sizeof(v30));
        LOBYTE(v31) = 0;
        v9 = &a2[v5 / 4] + v7 - *(v8 + 1);
        if (*(v9 + 2) >= 9u && (v10 = *(v9 + 6)) != 0)
        {
          v11 = a2 + v7 + v10 + v5 + *(&a2[v5 / 4 + 1] + v7 + v10);
          v12 = *(v11 + 1);
          if (v12 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v33) = *(v11 + 1);
          if (v12)
          {
            memcpy(&__dst, v11 + 8, v12);
          }

          p_dst = (&__dst + v12);
        }

        else
        {
          HIBYTE(v33) = 0;
          p_dst = &__dst;
        }

        *p_dst = 0;
        *__p = __dst;
        v30[0] = v33;
        v14 = &a2[v5 / 4] + v7 - *(v8 + 1);
        if (*(v14 + 2) >= 0xDu && (v15 = *(v14 + 8)) != 0)
        {
          v16 = a2 + v7 + v15 + v5 + *(&a2[v5 / 4 + 1] + v7 + v15);
          v17 = *(v16 + 1);
          if (v17 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v33) = *(v16 + 1);
          if (v17)
          {
            memcpy(&__dst, v16 + 8, v17);
          }

          v18 = (&__dst + v17);
        }

        else
        {
          HIBYTE(v33) = 0;
          v18 = &__dst;
        }

        *v18 = 0;
        *&v30[1] = __dst;
        v30[3] = v33;
        v19 = v7 - *(v8 + 1);
        v20 = &a2[v5 / 4] + v19;
        v21 = *(v20 + 2);
        if (v21 < 7)
        {
          LOBYTE(v31) = 0;
          if (v21 < 5)
          {
            HIDWORD(v31) = 0;
            v24 = a1[1];
            if (v24 < a1[2])
            {
              goto LABEL_31;
            }

            goto LABEL_34;
          }
        }

        else
        {
          v22 = *(v20 + 5);
          if (*(v20 + 5))
          {
            LOBYTE(v22) = *(&a2[v5 / 4 + 1] + v7 + v22);
          }

          LOBYTE(v31) = v22;
        }

        v23 = *(&a2[v5 / 4 + 2] + v19);
        if (v23)
        {
          LODWORD(v23) = *(&a2[v5 / 4 + 1] + v7 + v23);
        }

        HIDWORD(v31) = v23;
        v24 = a1[1];
        if (v24 < a1[2])
        {
LABEL_31:
          v25 = *__p;
          *(v24 + 16) = v30[0];
          *v24 = v25;
          __p[1] = 0;
          v30[0] = 0;
          __p[0] = 0;
          v26 = v30[3];
          *(v24 + 24) = *&v30[1];
          *(v24 + 40) = v26;
          memset(&v30[1], 0, 24);
          *(v24 + 48) = v31;
          a1[1] = v24 + 56;
          if (SHIBYTE(v30[0]) < 0)
          {
            goto LABEL_36;
          }

          goto LABEL_4;
        }

LABEL_34:
        v27 = sub_310D5C(a1, __p);
        v28 = SHIBYTE(v30[3]);
        a1[1] = v27;
        if (v28 < 0)
        {
          operator delete(v30[1]);
          if ((SHIBYTE(v30[0]) & 0x80000000) == 0)
          {
            goto LABEL_4;
          }

LABEL_36:
          operator delete(__p[0]);
          goto LABEL_4;
        }

        if (SHIBYTE(v30[0]) < 0)
        {
          goto LABEL_36;
        }

LABEL_4:
        v5 += 4;
      }

      while (v6 != v5);
    }
  }
}

void sub_310470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AB28(va);
  sub_310494(v3);
  _Unwind_Resume(a1);
}

void ***sub_310494(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_11:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      if (*(v3 - 9) < 0)
      {
        operator delete(*(v3 - 4));
        v5 = v3 - 7;
        if (*(v3 - 33) < 0)
        {
LABEL_9:
          operator delete(*v5);
        }
      }

      else
      {
        v5 = v3 - 7;
        if (*(v3 - 33) < 0)
        {
          goto LABEL_9;
        }
      }

      v3 = v5;
      if (v5 == v2)
      {
        v4 = *a1;
        goto LABEL_11;
      }
    }
  }

  return a1;
}

BOOL sub_31052C(uint64_t a1)
{
  v1 = *(a1 + 31);
  if (v1 < 0)
  {
    return *(a1 + 16) != 0;
  }

  else
  {
    return v1 != 0;
  }
}

void sub_310550(int *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  v4 = a2 + 8;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v5 = (a1 - *a1);
  v6 = *v5;
  if (v6 <= 4)
  {
    *a2 = 0;
    goto LABEL_10;
  }

  v7 = v5[2];
  if (v5[2])
  {
    LODWORD(v7) = *(a1 + v7);
  }

  *a2 = v7;
  if (v6 < 7 || (v8 = v5[3]) == 0)
  {
LABEL_10:
    HIBYTE(v15) = 0;
    LOBYTE(__dst) = 0;
    if ((*(a2 + 31) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v9 = (a1 + v8);
  v10 = *v9;
  v11 = *(v9 + v10);
  if (v11 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = *(v9 + v10);
  if (v11)
  {
    memcpy(&__dst, v9 + v10 + 4, v11);
  }

  *(&__dst + v11) = 0;
  if (*(a2 + 31) < 0)
  {
LABEL_11:
    operator delete(*v4);
  }

LABEL_12:
  *v4 = __dst;
  *(v4 + 16) = v15;
  v12 = (a1 - *a1);
  if (*v12 < 9u)
  {
    LOBYTE(v13) = 0;
  }

  else
  {
    v13 = v12[4];
    if (v13)
    {
      LOBYTE(v13) = *(a1 + v13) != 0;
    }
  }

  *(a2 + 32) = v13;
}

BOOL sub_3106C0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 31);
  if (v2 >= 0)
  {
    v3 = *(a1 + 31);
  }

  else
  {
    v3 = *(a1 + 16);
  }

  v4 = *(a2 + 31);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 16);
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 >= 0)
  {
    v8 = (a1 + 8);
  }

  else
  {
    v8 = *(a1 + 8);
  }

  if (v5 >= 0)
  {
    v9 = (a2 + 8);
  }

  else
  {
    v9 = *(a2 + 8);
  }

  return !memcmp(v8, v9, v3) && *(a1 + 32) == *(a2 + 32);
}

void sub_31077C(unsigned int *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (a1)
  {
    sub_3107D4(a1, a2, sub_310550);
  }
}

void sub_3107D4(unsigned int *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, char *))
{
  sub_311270(a2, *a1 - 0x3333333333333333 * ((a2[1] - *a2) >> 3));
  v6 = *a1;
  if (v6)
  {
    v7 = 4 * v6;
    v8 = (a1 + 1);
    do
    {
      a3(&v13, &v8[*v8]);
      v10 = a2[1];
      if (v10 < a2[2])
      {
        *v10 = v13;
        v9 = __p;
        *(v10 + 24) = v15;
        *(v10 + 8) = v9;
        v15 = 0;
        __p = 0uLL;
        *(v10 + 32) = v16;
        a2[1] = v10 + 40;
      }

      else
      {
        v11 = sub_3113B8(a2, &v13);
        v12 = SHIBYTE(v15);
        a2[1] = v11;
        if (v12 < 0)
        {
          operator delete(__p);
        }
      }

      v8 += 4;
      v7 -= 4;
    }

    while (v7);
  }
}

void sub_3108CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void **sub_3108E8(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        if (*(v3 - 9) < 0)
        {
          operator delete(*(v3 - 4));
        }

        v3 -= 5;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

double sub_31095C@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 48) = 521;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0;
  v4 = (a1 - *a1);
  if (*v4 >= 0x15u && (v5 = v4[10]) != 0)
  {
    v6 = (a1 + v5 + *(a1 + v5));
  }

  else
  {
    v6 = 0;
  }

  sub_84804(v6, &v33);
  v7 = *a1;
  v8 = v34;
  *a2 = v33;
  *(a2 + 16) = v8;
  v9 = (a1 - v7);
  if (*v9 >= 0x17u && (v10 = v9[11]) != 0)
  {
    v11 = (a1 + v10 + *(a1 + v10));
  }

  else
  {
    v11 = 0;
  }

  sub_84804(v11, &v33);
  v12 = *a1;
  v13 = v34;
  *(a2 + 24) = v33;
  *(a2 + 40) = v13;
  v14 = (a1 - v12);
  v15 = *v14;
  if (v15 < 0xD)
  {
    *(a2 + 49) = 0;
    if (v15 <= 0xA)
    {
      *(a2 + 48) = 0;
LABEL_20:
      v33 = 0uLL;
      v34 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v16 = v14[6];
    if (v14[6])
    {
      LOBYTE(v16) = *(a1 + v16);
    }

    *(a2 + 49) = v16;
  }

  v17 = v14[5];
  if (v14[5])
  {
    LOBYTE(v17) = *(a1 + v17);
  }

  *(a2 + 48) = v17;
  if (v15 < 0xF)
  {
    goto LABEL_20;
  }

  v18 = v14[7];
  if (!v18)
  {
    goto LABEL_20;
  }

  v19 = (a1 + v18);
  v20 = *v19;
  v34 = 0;
  v33 = 0uLL;
  sub_3107D4((v19 + v20), &v33, sub_310550);
LABEL_21:
  v21 = *a1;
  v22 = v34;
  *(a2 + 56) = v33;
  *(a2 + 72) = v22;
  v23 = (a1 - v21);
  if (*v23 >= 0x11u && (v24 = v23[8]) != 0)
  {
    v25 = (a1 + v24 + *(a1 + v24));
  }

  else
  {
    v25 = 0;
  }

  sub_31010C(&v33, v25);
  v26 = *a1;
  v27 = v34;
  *(a2 + 80) = v33;
  *(a2 + 96) = v27;
  v28 = (a1 - v26);
  if (*v28 >= 0x19u && (v29 = v28[12]) != 0)
  {
    v30 = (a1 + v29 + *(a1 + v29));
  }

  else
  {
    v30 = 0;
  }

  sub_84804(v30, &v33);
  v31 = v34;
  result = *&v33;
  *(a2 + 104) = v33;
  *(a2 + 120) = v31;
  return result;
}

void sub_310B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  sub_3108E8(&a9);
  sub_31104C(v9);
  _Unwind_Resume(a1);
}

void *sub_310BDC(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x492492492492493)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

uint64_t sub_310D5C(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_1794();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v5 = 0x492492492492492;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x492492492492492)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  v7 = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(v6 + 24) = v7;
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v6 + 40) = v8;
  *(v6 + 48) = v9;
  v10 = 56 * v2 + 56;
  v11 = *a1;
  v12 = a1[1];
  v13 = v6 + *a1 - v12;
  if (*a1 != v12)
  {
    v14 = *a1;
    v15 = v6 + *a1 - v12;
    do
    {
      v16 = *v14;
      *(v15 + 16) = *(v14 + 2);
      *v15 = v16;
      *(v14 + 1) = 0;
      *(v14 + 2) = 0;
      *v14 = 0;
      v17 = *(v14 + 24);
      *(v15 + 40) = *(v14 + 5);
      *(v15 + 24) = v17;
      *(v14 + 4) = 0;
      *(v14 + 5) = 0;
      *(v14 + 3) = 0;
      *(v15 + 48) = *(v14 + 6);
      v14 = (v14 + 56);
      v15 += 56;
    }

    while (v14 != v12);
    while (1)
    {
      if (*(v11 + 47) < 0)
      {
        operator delete(*(v11 + 24));
        if (*(v11 + 23) < 0)
        {
LABEL_19:
          operator delete(*v11);
        }
      }

      else if (*(v11 + 23) < 0)
      {
        goto LABEL_19;
      }

      v11 += 56;
      if (v11 == v12)
      {
        v11 = *a1;
        break;
      }
    }
  }

  *a1 = v13;
  a1[1] = v10;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v10;
}

uint64_t sub_310F30(uint64_t a1)
{
  if ((*(a1 + 143) & 0x80000000) == 0)
  {
    if ((*(a1 + 111) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    operator delete(*(a1 + 88));
    v2 = *(a1 + 64);
    if (!v2)
    {
LABEL_4:
      if (*(a1 + 55) < 0)
      {
        goto LABEL_19;
      }

      goto LABEL_5;
    }

    goto LABEL_9;
  }

  operator delete(*(a1 + 120));
  if (*(a1 + 111) < 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  v2 = *(a1 + 64);
  if (!v2)
  {
    goto LABEL_4;
  }

LABEL_9:
  v4 = *(a1 + 72);
  if (v4 == v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_19:
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_20;
  }

  do
  {
    if (*(v4 - 9) < 0)
    {
      operator delete(*(v4 - 4));
      v5 = v4 - 7;
      if ((*(v4 - 33) & 0x80000000) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v5 = v4 - 7;
      if ((*(v4 - 33) & 0x80000000) == 0)
      {
        goto LABEL_12;
      }
    }

    operator delete(*v5);
LABEL_12:
    v4 = v5;
  }

  while (v5 != v2);
  v6 = *(a1 + 64);
  *(a1 + 72) = v2;
  operator delete(v6);
  if (*(a1 + 55) < 0)
  {
    goto LABEL_19;
  }

LABEL_5:
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_20:
  operator delete(*(a1 + 8));
  return a1;
}

void ***sub_31104C(void ***a1)
{
  v2 = a1[13];
  if (v2)
  {
    v3 = a1[14];
    v4 = a1[13];
    if (v3 == v2)
    {
LABEL_11:
      a1[14] = v2;
      operator delete(v4);
      goto LABEL_12;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
LABEL_9:
          operator delete(*v5);
        }
      }

      else
      {
        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
          goto LABEL_9;
        }
      }

      v3 = v5;
      if (v5 == v2)
      {
        v4 = a1[13];
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  v6 = a1[10];
  if (!v6)
  {
    goto LABEL_23;
  }

  v7 = a1[11];
  v8 = a1[10];
  if (v7 != v6)
  {
    while (1)
    {
      if (*(v7 - 9) < 0)
      {
        operator delete(*(v7 - 4));
        v9 = v7 - 7;
        if (*(v7 - 33) < 0)
        {
LABEL_20:
          operator delete(*v9);
        }
      }

      else
      {
        v9 = v7 - 7;
        if (*(v7 - 33) < 0)
        {
          goto LABEL_20;
        }
      }

      v7 = v9;
      if (v9 == v6)
      {
        v8 = a1[10];
        break;
      }
    }
  }

  a1[11] = v6;
  operator delete(v8);
LABEL_23:
  v10 = a1[7];
  if (v10)
  {
    v11 = a1[8];
    v12 = a1[7];
    if (v11 != v10)
    {
      do
      {
        if (*(v11 - 9) < 0)
        {
          operator delete(*(v11 - 4));
        }

        v11 -= 5;
      }

      while (v11 != v10);
      v12 = a1[7];
    }

    a1[8] = v10;
    operator delete(v12);
  }

  v13 = a1[3];
  if (v13)
  {
    v14 = a1[4];
    v15 = a1[3];
    if (v14 == v13)
    {
LABEL_41:
      a1[4] = v13;
      operator delete(v15);
      goto LABEL_42;
    }

    while (1)
    {
      if (*(v14 - 1) < 0)
      {
        operator delete(*(v14 - 3));
        v16 = v14 - 6;
        if (*(v14 - 25) < 0)
        {
LABEL_39:
          operator delete(*v16);
        }
      }

      else
      {
        v16 = v14 - 6;
        if (*(v14 - 25) < 0)
        {
          goto LABEL_39;
        }
      }

      v14 = v16;
      if (v16 == v13)
      {
        v15 = a1[3];
        goto LABEL_41;
      }
    }
  }

LABEL_42:
  v17 = *a1;
  if (*a1)
  {
    v18 = a1[1];
    v19 = *a1;
    if (v18 == v17)
    {
LABEL_52:
      a1[1] = v17;
      operator delete(v19);
      return a1;
    }

    while (1)
    {
      if (*(v18 - 1) < 0)
      {
        operator delete(*(v18 - 3));
        v20 = v18 - 6;
        if (*(v18 - 25) < 0)
        {
LABEL_50:
          operator delete(*v20);
        }
      }

      else
      {
        v20 = v18 - 6;
        if (*(v18 - 25) < 0)
        {
          goto LABEL_50;
        }
      }

      v18 = v20;
      if (v20 == v17)
      {
        v19 = *a1;
        goto LABEL_52;
      }
    }
  }

  return a1;
}

void *sub_311270(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

uint64_t sub_3113B8(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v5 = 0x666666666666666;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *v6 = *a2;
  *(v6 + 8) = *(a2 + 8);
  *(v6 + 24) = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(v6 + 32) = *(a2 + 32);
  v7 = 40 * v2 + 40;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v6 + *a1 - v9;
    do
    {
      *v12 = *v11;
      v13 = *(v11 + 8);
      *(v12 + 24) = *(v11 + 24);
      *(v12 + 8) = v13;
      *(v11 + 16) = 0;
      *(v11 + 24) = 0;
      *(v11 + 8) = 0;
      *(v12 + 32) = *(v11 + 32);
      v11 += 40;
      v12 += 40;
    }

    while (v11 != v9);
    do
    {
      if (*(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 40;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

unint64_t sub_311544(int **a1)
{
  v1 = *a1;
  v2 = (*a1 - **a1);
  if (!*(a1 + 38))
  {
    v5 = *v2;
    if (v5 < 5)
    {
      goto LABEL_17;
    }

    if (v2[2])
    {
      v3 = __ROR8__(*&v1[v2[2]], 32);
      v4 = HIDWORD(v3);
      return v4 | (v3 << 32);
    }

    if (v5 >= 0x77 && (v23 = v2[59]) != 0)
    {
      v3 = *&v1[v23];
    }

    else
    {
LABEL_17:
      v3 = 0;
    }

    LODWORD(v4) = *(a1 + 8);
    return v4 | (v3 << 32);
  }

  if (v2[3])
  {
    v3 = __ROR8__(*&v1[v2[3]], 32);
    v4 = HIDWORD(v3);
  }

  else
  {
    v6 = *&v1[v2[60]];
    v7 = *(a1 + 8);
    v3 = HIWORD(v6);
    v8 = sub_57A90(v7);
    v9 = v8 >> 1;
    v10 = v8 & 0xFE;
    v11 = v7 & ~(-1 << (v8 & 0xFE));
    v12 = sub_581D8(v11);
    v13 = sub_581D8(v11 >> 1);
    v14 = v12 + v6;
    v15 = v13 + (v6 >> 8);
    v16 = ((((((v14 & ~(v14 >> 31)) - v14 + (v14 >> 31)) >> v9) + (v14 >> 31)) << v9) + v14) % (1 << v9);
    v17 = ((((((v15 & ~(v15 >> 31)) - v15 + (v15 >> 31)) >> v9) + (v15 >> 31)) << v9) + v15) % (1 << v9);
    v18 = -1 << v9;
    v19 = ~(-1 << v9);
    if (v19 < v16)
    {
      v20 = ~v18;
    }

    else
    {
      v20 = v16;
    }

    if (v19 < v17)
    {
      v21 = ~v18;
    }

    else
    {
      v21 = v17;
    }

    sub_58168(v20, v21);
    LODWORD(v4) = v22 | (1 << v10);
  }

  return v4 | (v3 << 32);
}

unint64_t sub_3116D0(int **a1)
{
  v1 = *a1;
  v2 = (*a1 - **a1);
  if (*(a1 + 38))
  {
    v3 = *v2;
    if (v3 < 5)
    {
      goto LABEL_17;
    }

    if (v2[2])
    {
      v4 = __ROR8__(*&v1[v2[2]], 32);
      v5 = HIDWORD(v4);
      return v5 | (v4 << 32);
    }

    if (v3 >= 0x77 && (v23 = v2[59]) != 0)
    {
      v4 = *&v1[v23];
    }

    else
    {
LABEL_17:
      v4 = 0;
    }

    LODWORD(v5) = *(a1 + 8);
    return v5 | (v4 << 32);
  }

  if (v2[3])
  {
    v4 = __ROR8__(*&v1[v2[3]], 32);
    v5 = HIDWORD(v4);
  }

  else
  {
    v6 = *&v1[v2[60]];
    v7 = *(a1 + 8);
    v4 = HIWORD(v6);
    v8 = sub_57A90(v7);
    v9 = v8 >> 1;
    v10 = v8 & 0xFE;
    v11 = v7 & ~(-1 << (v8 & 0xFE));
    v12 = sub_581D8(v11);
    v13 = sub_581D8(v11 >> 1);
    v14 = v12 + v6;
    v15 = v13 + (v6 >> 8);
    v16 = ((((((v14 & ~(v14 >> 31)) - v14 + (v14 >> 31)) >> v9) + (v14 >> 31)) << v9) + v14) % (1 << v9);
    v17 = ((((((v15 & ~(v15 >> 31)) - v15 + (v15 >> 31)) >> v9) + (v15 >> 31)) << v9) + v15) % (1 << v9);
    v18 = -1 << v9;
    v19 = ~(-1 << v9);
    if (v19 < v16)
    {
      v20 = ~v18;
    }

    else
    {
      v20 = v16;
    }

    if (v19 < v17)
    {
      v21 = ~v18;
    }

    else
    {
      v21 = v17;
    }

    sub_58168(v20, v21);
    LODWORD(v5) = v22 | (1 << v10);
  }

  return v5 | (v4 << 32);
}

double sub_31185C(int **a1)
{
  v1 = *a1;
  v2 = (*a1 - **a1);
  v3 = *v2;
  v4 = 0;
  if (!*(a1 + 38))
  {
    if (v3 >= 0x57)
    {
      if (v2[43])
      {
        v1 = (v1 + v2[43] + *(v1 + v2[43]));
        v8 = (v1 - *v1);
        if (*v8 < 5u)
        {
          return 0.0 / 65535.0;
        }

        v6 = v8[2];
        if (!v6)
        {
          return 0.0 / 65535.0;
        }
      }

      else
      {
        if (v3 < 0x7B)
        {
          return 0.0 / 65535.0;
        }

        v6 = v2[61];
        if (!v6)
        {
          return 0.0 / 65535.0;
        }
      }

      goto LABEL_17;
    }

    return 0.0 / 65535.0;
  }

  if (v3 < 0x57)
  {
    return 0.0 / 65535.0;
  }

  if (v2[43])
  {
    v1 = (v1 + v2[43] + *(v1 + v2[43]));
    v5 = (v1 - *v1);
    if (*v5 < 7u)
    {
      return 0.0 / 65535.0;
    }

    v6 = v5[3];
    if (!v6)
    {
      return 0.0 / 65535.0;
    }
  }

  else
  {
    if (v3 < 0x7D)
    {
      return 0.0 / 65535.0;
    }

    v6 = v2[62];
    if (!v6)
    {
      return 0.0 / 65535.0;
    }
  }

LABEL_17:
  LOWORD(v4) = *(v1 + v6);
  return (v4 + v4) / 65535.0;
}

double sub_311940(int **a1)
{
  v1 = *a1;
  v2 = (*a1 - **a1);
  v3 = *v2;
  v4 = 0;
  if (!*(a1 + 38))
  {
    if (v3 >= 0x57)
    {
      if (v2[43])
      {
        v1 = (v1 + v2[43] + *(v1 + v2[43]));
        v8 = (v1 - *v1);
        if (*v8 < 7u)
        {
          return 0.0 / 65535.0;
        }

        v6 = v8[3];
        if (!v6)
        {
          return 0.0 / 65535.0;
        }
      }

      else
      {
        if (v3 < 0x7D)
        {
          return 0.0 / 65535.0;
        }

        v6 = v2[62];
        if (!v6)
        {
          return 0.0 / 65535.0;
        }
      }

      goto LABEL_17;
    }

    return 0.0 / 65535.0;
  }

  if (v3 < 0x57)
  {
    return 0.0 / 65535.0;
  }

  if (v2[43])
  {
    v1 = (v1 + v2[43] + *(v1 + v2[43]));
    v5 = (v1 - *v1);
    if (*v5 < 5u)
    {
      return 0.0 / 65535.0;
    }

    v6 = v5[2];
    if (!v6)
    {
      return 0.0 / 65535.0;
    }
  }

  else
  {
    if (v3 < 0x7B)
    {
      return 0.0 / 65535.0;
    }

    v6 = v2[61];
    if (!v6)
    {
      return 0.0 / 65535.0;
    }
  }

LABEL_17:
  LOWORD(v4) = *(v1 + v6);
  return (v4 + v4) / 65535.0;
}

uint64_t sub_311A24(int *a1, int a2)
{
  v2 = (a1 - *a1);
  v3 = *v2;
  if (!a2)
  {
    if (v3 >= 0x27)
    {
      v4 = v2[19];
      if (!v2[19])
      {
        goto LABEL_16;
      }

      goto LABEL_7;
    }

LABEL_15:
    if (v3 < 0x15)
    {
      goto LABEL_34;
    }

    goto LABEL_16;
  }

  if (v3 < 0x29)
  {
    goto LABEL_15;
  }

  v4 = v2[20];
  if (!v2[20])
  {
LABEL_16:
    if (v2[10])
    {
      v13 = *(a1 + v2[10]);
      if (*(a1 + v2[10]))
      {
        if (v3 < 0x9B)
        {
          v16 = 0;
          if (!a2)
          {
            goto LABEL_42;
          }

          goto LABEL_35;
        }

        if (!v2[77] || (~*(a1 + v2[77]) & 3) != 0)
        {
          goto LABEL_41;
        }

        goto LABEL_31;
      }
    }

    if (v3 >= 0x9B)
    {
      if (v2[77])
      {
        v14 = *(a1 + v2[77]);
        if ((v14 & 2) != 0)
        {
          v15 = 2;
        }

        else
        {
          v15 = 1;
        }

        if (v14)
        {
          v13 = v15;
        }

        else
        {
          v13 = 1;
        }

        if ((~v14 & 3) == 0)
        {
LABEL_31:
          if (v13 >> 1 <= 1)
          {
            return 1;
          }

          else
          {
            return v13 >> 1;
          }
        }
      }

      else
      {
        v13 = 1;
      }

LABEL_41:
      v16 = 1;
      if (!a2)
      {
        goto LABEL_42;
      }

      goto LABEL_35;
    }

LABEL_34:
    v16 = 0;
    v13 = 1;
    if (!a2)
    {
LABEL_42:
      if (v16)
      {
        v17 = v2[77];
        if (v17)
        {
          v18 = 1;
LABEL_45:
          if ((*(a1 + v17) & v18) != 0)
          {
            return v13;
          }

          else
          {
            return 0;
          }
        }
      }

      return 0;
    }

LABEL_35:
    if (v16)
    {
      v17 = v2[77];
      if (v17)
      {
        v18 = 2;
        goto LABEL_45;
      }
    }

    return 0;
  }

LABEL_7:
  v5 = (a1 + v4 + *(a1 + v4));
  v6 = *v5;
  if (!v6)
  {
    return 0;
  }

  v7 = 0;
  result = 0;
  v9 = 4 * v6;
  do
  {
    v10 = v5[v7 / 4 + 1];
    v11 = &v5[v7 / 4] + v10 - *(&v5[v7 / 4 + 1] + v10);
    if (*(v11 + 2) < 5u || (v12 = *(v11 + 4)) == 0 || (*(&v5[v7 / 4 + 1] + v10 + v12) & 4) == 0)
    {
      result = (result + 1);
    }

    v7 += 4;
  }

  while (v9 != v7);
  return result;
}

uint64_t sub_311BB0(char **a1)
{
  v1 = *a1;
  v2 = &(*a1)[-**a1];
  v3 = *v2;
  if (v3 < 0x15)
  {
    return 1;
  }

  v4 = *(v2 + 10);
  if (*(v2 + 10))
  {
    result = v1[v4];
    if (v1[v4])
    {
      return result;
    }
  }

  if (v3 < 0x9B)
  {
    return 1;
  }

  v6 = *(v2 + 77);
  if (!v6)
  {
    return 1;
  }

  v7 = *&v1[v6];
  result = 1;
  if (v7)
  {
    if ((v7 & 2) != 0)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void sub_311C0C(int **a1, void *a2)
{
  v3 = *a2;
  a2[1] = *a2;
  v4 = (*a1 - **a1);
  v5 = *v4;
  if (*(a1 + 38))
  {
    if (v5 < 0x29)
    {
      return;
    }

    v6 = v4[20];
    if (!v6)
    {
      return;
    }
  }

  else
  {
    if (v5 < 0x27)
    {
      return;
    }

    v6 = v4[19];
    if (!v6)
    {
      return;
    }
  }

  v7 = (*a1 + v6 + *(*a1 + v6));
  v8 = *v7;
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = 4 * v8;
    do
    {
      v12 = v7[v9 / 4 + 1];
      v13 = &v7[v9 / 4] + v12 - *(&v7[v9 / 4 + 1] + v12);
      if (*(v13 + 2) < 5u || (v14 = *(v13 + 4)) == 0 || (*(&v7[v9 / 4 + 1] + v12 + v14) & 4) == 0)
      {
        v15 = a2[2];
        if (v3 < v15)
        {
          *v3++ = v10;
        }

        else
        {
          v16 = *a2;
          v17 = &v3[-*a2];
          v18 = (v17 + 1);
          if ((v17 + 1) < 0)
          {
            sub_1794();
          }

          v19 = v15 - v16;
          if (2 * v19 > v18)
          {
            v18 = 2 * v19;
          }

          if (v19 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v20 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v18;
          }

          if (v20)
          {
            operator new();
          }

          v21 = &v3[-*a2];
          *v17 = v10;
          v3 = v17 + 1;
          memcpy(0, v16, v21);
          *a2 = 0;
          a2[1] = v17 + 1;
          a2[2] = 0;
          if (v16)
          {
            operator delete(v16);
          }
        }

        a2[1] = v3;
      }

      ++v10;
      v9 += 4;
    }

    while (v11 != v9);
  }
}

int **sub_311DB8(int **result, uint64_t *a2)
{
  v3 = *a2;
  a2[1] = *a2;
  v4 = *result;
  v5 = (*result - **result);
  v6 = *v5;
  if (*(result + 38))
  {
    if (v6 < 0x29)
    {
      return result;
    }

    v7 = v5[20];
    if (!v7)
    {
      return result;
    }
  }

  else
  {
    if (v6 < 0x27)
    {
      return result;
    }

    v7 = v5[19];
    if (!v7)
    {
      return result;
    }
  }

  v8 = &v4[v7];
  v9 = *v8;
  v10 = &v8[v9];
  v11 = *&v8[v9];
  if (v11)
  {
    v43 = &v10[4 * v11];
    v12 = &v4[v7 + 8 + v9];
    while (1)
    {
      v14 = *(v10 + 1);
      v10 += 4;
      v13 = v14;
      v15 = &v10[v14];
      v16 = &v15[-*v15];
      if (*v16 >= 0xDu)
      {
        v17 = *(v16 + 6);
        if (v17)
        {
          v18 = &v15[v17];
          v19 = *&v15[v17];
          v20 = *&v18[v19];
          if (v20)
          {
            break;
          }
        }
      }

LABEL_9:
      v12 += 4;
      if (v10 == v43)
      {
        goto LABEL_39;
      }
    }

    v21 = 0;
    v22 = 4 * v20;
    v23 = v12 + v17 + v13 + v19;
    while (1)
    {
      v24 = *(v23 + v21);
      v25 = *a2;
      v26 = *(v23 + v21 + v24);
      if (*a2 == v3)
      {
        break;
      }

      v27 = -v26;
      v28 = *(v23 + v24 + *(v23 + v21 + v24 - v26 + 4) + v21);
      if (__PAIR64__(*(v3 - 4), *(v3 - 8)) == __PAIR64__(WORD2(v28), v28) && ((v28 & 0xFF000000000000) == 0) != (*(v3 - 2) == 0))
      {
        v21 += 4;
        if (v22 == v21)
        {
          goto LABEL_9;
        }
      }

      else
      {
LABEL_20:
        if (*(v23 + v21 + v24 + v27) >= 5u && *(v23 + v21 + v27 + v24 + 4))
        {
          v29 = (v23 + v21 + v24 + *(v23 + v21 + v27 + v24 + 4));
          v30 = a2[2];
          if (v3 >= v30)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v29 = 0;
          v30 = a2[2];
          if (v3 >= v30)
          {
LABEL_23:
            v31 = v3 - v25;
            v32 = (v3 - v25) >> 3;
            v33 = v32 + 1;
            if ((v32 + 1) >> 61)
            {
              sub_1794();
            }

            v34 = v30 - v25;
            if (v34 >> 2 > v33)
            {
              v33 = v34 >> 2;
            }

            if (v34 >= 0x7FFFFFFFFFFFFFF8)
            {
              v35 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v35 = v33;
            }

            if (v35)
            {
              if (!(v35 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            v38 = v32;
            v39 = 8 * v32;
            v40 = *v29;
            v41 = HIDWORD(*v29);
            *v39 = *v29;
            *(v39 + 4) = v41;
            *(v39 + 6) = (v40 & 0xFF000000000000) == 0;
            v3 = 8 * v32 + 8;
            v42 = (v39 - 8 * v38);
            memcpy(v42, v25, v31);
            *a2 = v42;
            a2[1] = v3;
            a2[2] = 0;
            if (v25)
            {
              operator delete(v25);
            }

            goto LABEL_36;
          }
        }

        v36 = *v29;
        v37 = HIDWORD(*v29);
        *v3 = *v29;
        *(v3 + 4) = v37;
        *(v3 + 6) = (v36 & 0xFF000000000000) == 0;
        v3 += 8;
LABEL_36:
        a2[1] = v3;
        v21 += 4;
        if (v22 == v21)
        {
          goto LABEL_9;
        }
      }
    }

    v27 = -v26;
    goto LABEL_20;
  }

LABEL_39:

  return sub_3120CC(a2);
}

uint64_t sub_3120CC(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = 126 - 2 * __clz((v3 - v2) >> 3);
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  result = sub_315B60(v2, v3, &v15, v5, 1);
  v8 = *a1;
  v7 = a1[1];
  if (*a1 == v7)
  {
LABEL_21:
    if (v8 != v7)
    {
      a1[1] = v8;
    }

    return result;
  }

  if (v8 + 2 != v7)
  {
    v9 = 0;
    LODWORD(v10) = *v8;
    while (1)
    {
      v11 = v10;
      v10 = *&v8[v9 + 2];
      if (v11 == v10 && LOWORD(v8[v9 + 1]) == WORD2(v10))
      {
        v12 = &v8[v9];
        if (BYTE2(v8[v9 + 1]) == BYTE6(v10))
        {
          break;
        }
      }

      v9 += 2;
      if (&v8[v9 + 2] == v7)
      {
        return result;
      }
    }

    if (v12 != v7)
    {
      v13 = &v8[v9 + 4];
      if (v13 != v7)
      {
        do
        {
          if (__PAIR64__(*(v12 + 2), *v12) != __PAIR64__(WORD2(*v13), *v13) || *(v12 + 6) != BYTE6(*v13))
          {
            v14 = *(v13 + 3);
            v12[2] = *v13;
            v12 += 2;
            *(v12 + 3) = v14;
          }

          v13 += 2;
        }

        while (v13 != v7);
        v7 = a1[1];
      }

      v8 = v12 + 2;
      goto LABEL_21;
    }
  }

  return result;
}

uint64_t sub_31223C(int **a1, char a2)
{
  v2 = (*a1 - **a1);
  v3 = *v2;
  if (*(a1 + 38))
  {
    if (v3 < 0x29)
    {
      return 0;
    }

    v4 = v2[20];
    if (!v4)
    {
      return 0;
    }
  }

  else
  {
    if (v3 < 0x27)
    {
      return 0;
    }

    v4 = v2[19];
    if (!v4)
    {
      return 0;
    }
  }

  v5 = (*a1 + v4 + *(*a1 + v4));
  v6 = *v5;
  if (!v6)
  {
    return 0;
  }

  v7 = 4 * v6;
  v8 = 0;
  if (a2)
  {
    while (1)
    {
      v9 = v5[v8 / 4 + 1];
      v10 = &v5[v8 / 4] + v9 - *(&v5[v8 / 4 + 1] + v9);
      if (*(v10 + 2) >= 5u)
      {
        v11 = *(v10 + 4);
        if (v11)
        {
          if ((*(&v5[v8 / 4 + 1] + v9 + v11) & 5) == 1)
          {
            break;
          }
        }
      }

      v8 += 4;
      if (v7 == v8)
      {
        return 0;
      }
    }

    return 1;
  }

  else
  {
    while (1)
    {
      v13 = v5[v8 / 4 + 1];
      v14 = &v5[v8 / 4] + v13 - *(&v5[v8 / 4 + 1] + v13);
      if (*(v14 + 2) >= 5u)
      {
        v15 = *(v14 + 4);
        if (v15)
        {
          if (*(&v5[v8 / 4 + 1] + v13 + v15))
          {
            break;
          }
        }
      }

      v8 += 4;
      if (v7 == v8)
      {
        return 0;
      }
    }

    return 1;
  }
}

uint64_t sub_312358(int **a1, uint64_t a2, char a3, int a4)
{
  v4 = *a1;
  v5 = (*a1 - **a1);
  v6 = *v5;
  if (*(a1 + 38))
  {
    if (v6 < 0x29)
    {
      return 0;
    }

    v7 = v5[20];
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    if (v6 < 0x27)
    {
      return 0;
    }

    v7 = v5[19];
    if (!v7)
    {
      return 0;
    }
  }

  v8 = v7;
  v9 = &v4[v7];
  v10 = *v9;
  v11 = &v9[v10];
  v12 = *v11;
  if (!v12)
  {
    return 0;
  }

  v13 = &v11[v12];
  v14 = a2 & 0xFF000000000000;
  v15 = a2 & 0xFFFFFFFFFFFFLL;
  v16 = &v4[v8 + 8 + v10];
  if (a4)
  {
    if ((a3 & 1) == 0)
    {
      while (1)
      {
        v34 = v11[1];
        ++v11;
        v33 = v34;
        v35 = (v11 + v34);
        v36 = (v35 - *v35);
        if (*v36 >= 0xDu)
        {
          v37 = v36[6];
          if (v36[6])
          {
            v38 = (v35 + v37);
            v39 = *v38;
            v40 = *(v38 + v39);
            if (!v40)
            {
              return 1;
            }

            v41 = 0;
            v42 = 4 * v40;
            v43 = v16 + v37 + v33 + v39;
            while (1)
            {
              v44 = *(v43 + v41);
              v45 = v44 - *(v43 + v41 + v44);
              if (*(v43 + v41 + v45) < 7u)
              {
                break;
              }

              if (!*(v43 + v41 + v45 + 6))
              {
                break;
              }

              v46 = *(v43 + v44 + *(v43 + v41 + v45 + 4) + v41);
              if (v15 != (v46 & 0xFFFFFFFFFFFFLL) || (v14 == 0) == ((v46 & 0xFF000000000000) == 0))
              {
                break;
              }

              v41 += 4;
              if (v42 == v41)
              {
                return 1;
              }
            }
          }
        }

        result = 0;
        v16 += 4;
        if (v11 == v13)
        {
          return result;
        }
      }
    }

    while (1)
    {
      v19 = v11[1];
      ++v11;
      v18 = v19;
      v20 = (v11 + v19);
      v21 = (v20 - *v20);
      if (*v21 >= 0xDu)
      {
        v22 = v21[6];
        if (v21[6])
        {
          v23 = v21[2];
          if (!v23 || (*(v20 + v23) & 4) == 0)
          {
            v24 = (v20 + v22);
            v25 = *v24;
            v26 = *(v24 + v25);
            if (!v26)
            {
              return 1;
            }

            v27 = 0;
            v28 = 4 * v26;
            v29 = v16 + v22 + v18 + v25;
            while (1)
            {
              v30 = *(v29 + v27);
              v31 = v30 - *(v29 + v27 + v30);
              if (*(v29 + v27 + v31) < 7u)
              {
                break;
              }

              if (!*(v29 + v27 + v31 + 6))
              {
                break;
              }

              v32 = *(v29 + v30 + *(v29 + v27 + v31 + 4) + v27);
              if (v15 != (v32 & 0xFFFFFFFFFFFFLL) || (v14 == 0) == ((v32 & 0xFF000000000000) == 0))
              {
                break;
              }

              v27 += 4;
              result = 1;
              if (v28 == v27)
              {
                return result;
              }
            }
          }
        }
      }

      result = 0;
      v16 += 4;
      if (v11 == v13)
      {
        return result;
      }
    }
  }

  if (a3)
  {
    while (1)
    {
      v48 = v11[1];
      ++v11;
      v47 = v48;
      v49 = (v11 + v48);
      v50 = (v49 - *v49);
      if (*v50 >= 0xDu)
      {
        v51 = v50[6];
        if (v50[6])
        {
          v52 = v50[2];
          if (!v52 || (*(v49 + v52) & 4) == 0)
          {
            v53 = (v49 + v51);
            v54 = *v53;
            v55 = *(v53 + v54);
            if (v55)
            {
              break;
            }
          }
        }
      }

LABEL_38:
      result = 0;
      v16 += 4;
      if (v11 == v13)
      {
        return result;
      }
    }

    v56 = 0;
    v57 = 4 * v55;
    v58 = v16 + v51 + v47 + v54;
    while (1)
    {
      v59 = *(v58 + v56);
      v60 = v59 - *(v58 + v56 + v59);
      if (*(v58 + v56 + v60) >= 7u)
      {
        if (*(v58 + v56 + v60 + 6))
        {
          v61 = *(v58 + v59 + *(v58 + v56 + v60 + 4) + v56);
          if (v15 == (v61 & 0xFFFFFFFFFFFFLL) && (v14 == 0) != ((v61 & 0xFF000000000000) == 0))
          {
            break;
          }
        }
      }

      v56 += 4;
      if (v57 == v56)
      {
        goto LABEL_38;
      }
    }
  }

  else
  {
    while (1)
    {
      v63 = v11[1];
      ++v11;
      v62 = v63;
      v64 = (v11 + v63);
      v65 = (v64 - *v64);
      if (*v65 >= 0xDu)
      {
        v66 = v65[6];
        if (v65[6])
        {
          v67 = (v64 + v66);
          v68 = *v67;
          v69 = *(v67 + v68);
          if (v69)
          {
            break;
          }
        }
      }

LABEL_51:
      result = 0;
      v16 += 4;
      if (v11 == v13)
      {
        return result;
      }
    }

    v70 = 0;
    v71 = 4 * v69;
    v72 = v16 + v66 + v62 + v68;
    while (1)
    {
      v73 = *(v72 + v70);
      v74 = v73 - *(v72 + v70 + v73);
      if (*(v72 + v70 + v74) >= 7u)
      {
        if (*(v72 + v70 + v74 + 6))
        {
          v75 = *(v72 + v73 + *(v72 + v70 + v74 + 4) + v70);
          if (v15 == (v75 & 0xFFFFFFFFFFFFLL) && (v14 == 0) != ((v75 & 0xFF000000000000) == 0))
          {
            break;
          }
        }
      }

      v70 += 4;
      if (v71 == v70)
      {
        goto LABEL_51;
      }
    }
  }

  return 1;
}

uint64_t sub_312750(int **a1, unsigned __int8 **a2, char a3)
{
  v3 = (*a1 - **a1);
  v4 = *v3;
  if (*(a1 + 38))
  {
    if (v4 < 0x29)
    {
      return 0;
    }

    v5 = v3[20];
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    if (v4 < 0x27)
    {
      return 0;
    }

    v5 = v3[19];
    if (!v5)
    {
      return 0;
    }
  }

  v7 = (*a1 + v5 + *(*a1 + v5));
  v8 = *v7;
  if (!v8)
  {
    return 0;
  }

  v9 = a2[1];
  if (v9 == *a2)
  {
    return 0;
  }

  v10 = &v7[v8];
  if (a3)
  {
    while (1)
    {
      v11 = v7[1];
      v12 = (++v7 + v11);
      v13 = (v12 - *v12);
      if (*v13 >= 0xBu)
      {
        v14 = v13[5];
        if (v13[5])
        {
          v15 = v13[2];
          if (!v15 || (*(v12 + v15) & 4) == 0)
          {
            v16 = (v12 + v14 + *(v12 + v14));
            v17 = *v16;
            if (v17)
            {
              break;
            }
          }
        }
      }

LABEL_12:
      result = 0;
      if (v7 == v10)
      {
        return result;
      }
    }

    v18 = v16 + v17 + 4;
    v19 = (v16 + 1);
    while (1)
    {
      v20 = *a2;
      while (*v20 != *v19)
      {
        if (++v20 == v9)
        {
          v20 = a2[1];
          break;
        }
      }

      if (v20 != v9)
      {
        break;
      }

      if (++v19 == v18)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    while (1)
    {
      v21 = v7[1];
      v22 = (++v7 + v21);
      v23 = (v22 - *v22);
      if (*v23 >= 0xBu)
      {
        v24 = v23[5];
        if (v24)
        {
          v25 = (v22 + v24 + *(v22 + v24));
          v26 = *v25;
          if (v26)
          {
            break;
          }
        }
      }

LABEL_26:
      result = 0;
      if (v7 == v10)
      {
        return result;
      }
    }

    v27 = v25 + v26 + 4;
    v28 = (v25 + 1);
    while (1)
    {
      v29 = *a2;
      while (*v29 != *v28)
      {
        if (++v29 == v9)
        {
          v29 = a2[1];
          break;
        }
      }

      if (v29 != v9)
      {
        break;
      }

      if (++v28 == v27)
      {
        goto LABEL_26;
      }
    }
  }

  return 1;
}

void sub_3128F4(int **a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *a3;
  *(a3 + 8) = *a3;
  v6 = (*a1 - **a1);
  v7 = *v6;
  if (*(a1 + 38))
  {
    if (v7 < 0x29)
    {
      return;
    }

    v8 = v6[20];
    if (!v8)
    {
      return;
    }
  }

  else
  {
    if (v7 < 0x27)
    {
      return;
    }

    v8 = v6[19];
    if (!v8)
    {
      return;
    }
  }

  v9 = (*a1 + v8 + *(*a1 + v8));
  v10 = *v9;
  if (v10)
  {
    v11 = 0;
    v44 = a2 & 0xFF000000000000;
    v45 = a2 & 0xFFFFFFFFFFFFLL;
    v42 = &v9[v10];
    do
    {
      v13 = v9[1];
      v12 = v9 + 1;
      v14 = (v12 + v13);
      v15 = (v14 - *v14);
      v43 = v12;
      if (*v15 >= 0xDu)
      {
        v16 = v15[6];
        if (v15[6])
        {
          if (!a4 || (v17 = v15[2]) == 0 || (*(v14 + v17) & 4) == 0)
          {
            v18 = (v14 + v16 + *(v14 + v16));
            v19 = *v18;
            if (v19)
            {
              v20 = &v18[v19];
              do
              {
                v21 = v18[1];
                v22 = (++v18 + v21);
                v23 = (v22 - *v22);
                v24 = *(v22 + v23[2]);
                if (v45 == (v24 & 0xFFFFFFFFFFFFLL))
                {
                  v25 = (v44 == 0) ^ ((v24 & 0xFF000000000000) == 0);
                  if (*v23 >= 7u && v25 != 0)
                  {
                    v27 = v23[3];
                    if (v27)
                    {
                      v28 = (v22 + v27 + *(v22 + v27));
                      v29 = *v28;
                      if (v29)
                      {
                        v30 = (v28 + 1);
                        do
                        {
                          v31 = *v30;
                          v32 = *(a3 + 16);
                          if (v5 < v32)
                          {
                            *v5 = v11;
                            v5[1] = v31;
                            v5 += 2;
                          }

                          else
                          {
                            v33 = *a3;
                            v34 = &v5[-*a3];
                            v35 = v34 >> 1;
                            if (v34 >> 1 <= -2)
                            {
                              sub_1794();
                            }

                            v36 = v32 - v33;
                            if (v36 <= v35 + 1)
                            {
                              v37 = v35 + 1;
                            }

                            else
                            {
                              v37 = v36;
                            }

                            if (v36 >= 0x7FFFFFFFFFFFFFFELL)
                            {
                              v38 = 0x7FFFFFFFFFFFFFFFLL;
                            }

                            else
                            {
                              v38 = v37;
                            }

                            if (v38)
                            {
                              if ((v38 & 0x8000000000000000) == 0)
                              {
                                operator new();
                              }

                              sub_1808();
                            }

                            v39 = (2 * v35);
                            *v39 = v11;
                            v39[1] = v31;
                            v5 = (2 * v35 + 2);
                            v40 = &v39[-2 * (v34 >> 1)];
                            memcpy(v40, v33, v34);
                            *a3 = v40;
                            *(a3 + 8) = v5;
                            *(a3 + 16) = 0;
                            if (v33)
                            {
                              operator delete(v33);
                            }
                          }

                          *(a3 + 8) = v5;
                          ++v30;
                          --v29;
                        }

                        while (v29);
                      }
                    }
                  }
                }
              }

              while (v18 != v20);
            }
          }
        }
      }

      ++v11;
      v9 = v43;
    }

    while (v43 != v42);
  }
}

uint64_t sub_312B7C(int **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (*a1 - **a1);
  v4 = *v3;
  if (*(a1 + 38))
  {
    if (v4 < 0x29)
    {
      return 0;
    }

    v5 = v3[20];
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    if (v4 < 0x27)
    {
      return 0;
    }

    v5 = v3[19];
    if (!v5)
    {
      return 0;
    }
  }

  v6 = v5;
  v7 = &v2[v5];
  v8 = *v7;
  v9 = &v7[v8];
  v10 = *v9;
  if (!v10)
  {
    return 0;
  }

  result = 0;
  v12 = &v9[v10];
  v13 = &v2[v6 + 8 + v8];
  do
  {
    v16 = v9[1];
    ++v9;
    v15 = v16;
    v17 = (v9 + v16);
    v18 = (v17 - *v17);
    if (*v18 >= 0xDu)
    {
      v19 = v18[6];
      if (v18[6])
      {
        v20 = (v17 + v19);
        v21 = *v20;
        v22 = *(v20 + v21);
        if (v22)
        {
          v23 = 0;
          v24 = 4 * v22;
          v25 = v13 + v19 + v15 + v21;
          while (1)
          {
            v26 = *(v25 + v23 + *(v25 + v23) + *(v25 + v23 + *(v25 + v23) - *(v25 + v23 + *(v25 + v23)) + 4));
            if ((a2 & 0xFFFFFFFFFFFFLL) == (v26 & 0xFFFFFFFFFFFFLL) && ((a2 & 0xFF000000000000) == 0) != ((v26 & 0xFF000000000000) == 0))
            {
              break;
            }

            v23 += 4;
            if (v24 == v23)
            {
              goto LABEL_9;
            }
          }

          v14 = 1;
        }

        else
        {
LABEL_9:
          v14 = 0;
        }

        result = (v14 + result);
      }
    }

    v13 += 4;
  }

  while (v9 != v12);
  return result;
}

uint64_t sub_312CB4(int **a1)
{
  v1 = (*a1 - **a1);
  v2 = *v1;
  if (*(a1 + 38))
  {
    if (v2 < 0x29)
    {
      return 0;
    }

    v3 = v1[20];
    if (!v3)
    {
      return 0;
    }
  }

  else
  {
    if (v2 < 0x27)
    {
      return 0;
    }

    v3 = v1[19];
    if (!v3)
    {
      return 0;
    }
  }

  v4 = (*a1 + v3 + *(*a1 + v3));
  v5 = *v4;
  if (v5)
  {
    v6 = &v4[v5];
    v7 = (*a1 + v3 + *(*a1 + v3));
    while (1)
    {
      v9 = v7[1];
      ++v7;
      v8 = v9;
      v10 = (v7 + v9);
      v11 = (v10 - *v10);
      if (*v11 >= 0xDu)
      {
        v12 = v11[6];
        if (v11[6])
        {
          v13 = (v10 + v12);
          v14 = *v13;
          v15 = *(v13 + v14);
          if (v15)
          {
            break;
          }
        }
      }

LABEL_9:
      v4 = v7;
      if (v7 == v6)
      {
        return 0;
      }
    }

    v16 = 0;
    v17 = 4 * v15;
    v18 = v4 + v12 + v8 + v14;
    while (1)
    {
      v19 = *&v18[v16 + 8];
      v20 = v19 - *&v18[v16 + 8 + v19];
      v21 = &v18[v16 + v20];
      v22 = *(v21 + 4);
      if (v22 < 0xB)
      {
        if (v22 < 9)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v23 = *(v21 + 9);
        if (v23 && v18[v16 + 8 + v19 + v23])
        {
          return 1;
        }
      }

      v24 = *&v18[v16 + 16 + v20];
      if (v24 && v18[v16 + 8 + v19 + v24])
      {
        return 1;
      }

LABEL_14:
      v16 += 4;
      if (v17 == v16)
      {
        goto LABEL_9;
      }
    }
  }

  return 0;
}

BOOL sub_312DF0(int **a1)
{
  v1 = *a1;
  v2 = (*a1 - **a1);
  v3 = *v2;
  if (*(a1 + 38))
  {
    if (v3 >= 0x9B)
    {
      v4 = v2[77];
      if (v4)
      {
        return (*&v1[v4] & 2) != 0;
      }
    }
  }

  else if (v3 >= 0x9B)
  {
    v6 = v2[77];
    if (v6)
    {
      return (*&v1[v6] & 1) != 0;
    }
  }

  return 0;
}

BOOL sub_312E54(int **a1)
{
  v1 = *a1;
  v2 = (*a1 - **a1);
  v3 = *v2;
  if (*(a1 + 38))
  {
    if (v3 >= 0x9B)
    {
      v4 = v2[77];
      if (v4)
      {
        return (*&v1[v4] & 1) != 0;
      }
    }
  }

  else if (v3 >= 0x9B)
  {
    v6 = v2[77];
    if (v6)
    {
      return (*&v1[v6] & 2) != 0;
    }
  }

  return 0;
}

uint64_t sub_312EB8(void *a1)
{
  v1 = (*a1 - **a1);
  if (*v1 >= 0x2Fu && (v2 = v1[23]) != 0 && (v3 = *(*a1 + v2), v3 <= 0x1A))
  {
    return (0x4810001u >> v3) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_312F00(char **a1)
{
  v1 = *a1;
  v2 = &(*a1)[-**a1];
  v3 = *v2;
  if (v3 < 0x2F)
  {
    return 0;
  }

  if (*(v2 + 23) && v1[*(v2 + 23)] == 23)
  {
    return 1;
  }

  if (v3 >= 0x9B && (v5 = *(v2 + 77)) != 0)
  {
    return (v1[v5] >> 2) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_312F58(int *a1)
{
  v1 = (a1 - *a1);
  v2 = *v1;
  if (v2 < 0x2F)
  {
    return 0;
  }

  if (v1[23] && *(a1 + v1[23]) == 23)
  {
    return 1;
  }

  if (v2 >= 0x9B && (v4 = v1[77]) != 0)
  {
    return (*(a1 + v4) >> 2) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_312FAC(int **a1)
{
  v1 = *a1;
  v2 = (*a1 - **a1);
  v3 = *v2;
  if (*(a1 + 38))
  {
    if (v3 >= 0x39)
    {
      v4 = v2[28];
      if (v4)
      {
        v5 = *&v1[v4];
        if ((v5 & 3) == 0)
        {
          return (v5 >> 5) & 1;
        }
      }
    }

    return 0;
  }

  if (v3 < 0x39)
  {
    return 0;
  }

  v7 = v2[28];
  if (!v7)
  {
    return 0;
  }

  v8 = *&v1[v7];
  if ((v8 & 3) != 0)
  {
    return 0;
  }

  return (v8 >> 2) & 1;
}

uint64_t sub_313010(int **a1)
{
  v1 = *a1;
  v2 = (*a1 - **a1);
  v3 = *v2;
  if (*(a1 + 38))
  {
    if (v3 >= 0x39)
    {
      v4 = v2[28];
      if (v4)
      {
        v5 = *&v1[v4];
        if ((v5 & 3) == 0)
        {
          return (v5 >> 2) & 1;
        }
      }
    }

    return 0;
  }

  if (v3 < 0x39)
  {
    return 0;
  }

  v7 = v2[28];
  if (!v7)
  {
    return 0;
  }

  v8 = *&v1[v7];
  if ((v8 & 3) != 0)
  {
    return 0;
  }

  return (v8 >> 5) & 1;
}

uint64_t sub_313074(int **a1)
{
  v1 = *a1;
  v2 = (*a1 - **a1);
  v3 = *v2;
  if (*(a1 + 38))
  {
    if (v3 >= 0x39)
    {
      v4 = v2[28];
      if (v4)
      {
        v5 = *&v1[v4];
        if ((v5 & 2) != 0)
        {
          return 1;
        }

        goto LABEL_9;
      }
    }

    return 0;
  }

  if (v3 < 0x39)
  {
    return 0;
  }

  v6 = v2[28];
  if (!v6)
  {
    return 0;
  }

  v5 = *&v1[v6];
  if (v5)
  {
    return 1;
  }

LABEL_9:
  if ((v5 & 7) == 4)
  {
    return 1;
  }

  if ((v5 & 3) != 0)
  {
    return 0;
  }

  return (v5 >> 5) & 1;
}

uint64_t sub_3130E8(char **a1)
{
  v1 = *a1;
  v2 = &(*a1)[-**a1];
  v3 = *v2;
  if (v3 < 0x9B)
  {
    if (v3 < 0x39)
    {
      return 0;
    }
  }

  else if (*(v2 + 77) && (v1[*(v2 + 77)] & 3) != 0)
  {
    return 0;
  }

  v4 = *(v2 + 28);
  if (!v4)
  {
    return 0;
  }

  v5 = *&v1[v4];
  if ((v5 & 3) != 0 || (v5 & 7) == 4)
  {
    return 1;
  }

  else
  {
    return (v5 >> 5) & 1;
  }
}

uint64_t sub_313158(int **a1)
{
  v1 = *a1;
  v2 = (*a1 - **a1);
  v3 = *v2;
  if (!*(a1 + 38))
  {
    if (v3 < 0x9B)
    {
      if (v3 <= 0x38)
      {
        return 0;
      }
    }

    else if (v2[77])
    {
      v5 = *&v1[v2[77]];
      if (v5)
      {
        return 1;
      }

      if ((v5 & 2) != 0)
      {
        return 0;
      }
    }

    v8 = v2[28];
    if (!v8)
    {
      return 0;
    }

    v7 = *&v1[v8];
    if ((v7 & 1) == 0)
    {
      goto LABEL_19;
    }

    return 1;
  }

  if (v3 < 0x9B)
  {
    if (v3 > 0x38)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (!v2[77])
  {
    goto LABEL_13;
  }

  v4 = *&v1[v2[77]];
  if ((v4 & 2) != 0)
  {
    return 1;
  }

  if (v4)
  {
    return 0;
  }

LABEL_13:
  v6 = v2[28];
  if (!v6)
  {
    return 0;
  }

  v7 = *&v1[v6];
  if ((v7 & 2) != 0)
  {
    return 1;
  }

LABEL_19:
  if ((v7 & 7) == 4)
  {
    return 1;
  }

  if ((v7 & 3) != 0)
  {
    return 0;
  }

  return (v7 >> 5) & 1;
}

BOOL sub_31320C(int **a1)
{
  v1 = *a1;
  v2 = (*a1 - **a1);
  v3 = *v2;
  if (*(a1 + 38))
  {
    if (v3 >= 0x47)
    {
      v4 = v2[35];
      if (v4)
      {
        return (*&v1[v4] & 2) != 0;
      }
    }
  }

  else if (v3 >= 0x47)
  {
    v6 = v2[35];
    if (v6)
    {
      return (*&v1[v6] & 1) != 0;
    }
  }

  return 0;
}

BOOL sub_313270(int **a1)
{
  v1 = *a1;
  v2 = (*a1 - **a1);
  v3 = *v2;
  if (*(a1 + 38))
  {
    if (v3 >= 0x9B)
    {
      v4 = v2[77];
      if (v4)
      {
        return (*&v1[v4] & 0x40) != 0;
      }
    }
  }

  else if (v3 >= 0x9B)
  {
    v6 = v2[77];
    if (v6)
    {
      return (*&v1[v6] & 0x80) != 0;
    }
  }

  return 0;
}

void sub_3132D4(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(a1 + 8);
  v4 = (v3 - *v3);
  if (*v4 >= 0x17u)
  {
    v5 = v4[11];
    if (v5)
    {
      v6 = (v3 + v5 + *(v3 + v5));
      v7 = *v6;
      if (v7)
      {
        v8 = 0;
        v9 = 8 * v7;
        v10 = (v6 + 1);
        do
        {
          while (1)
          {
            v12 = a2[2];
            if (v8 >= v12)
            {
              break;
            }

            v11 = *v10++;
            *v8 = v11;
            v8 += 8;
            a2[1] = v8;
            v9 -= 8;
            if (!v9)
            {
              goto LABEL_17;
            }
          }

          v13 = v8;
          v14 = v8 >> 3;
          v15 = v14 + 1;
          if ((v14 + 1) >> 61)
          {
            *a2 = 0;
            sub_1794();
          }

          if (v12 >> 2 > v15)
          {
            v15 = v12 >> 2;
          }

          if (v12 >= 0x7FFFFFFFFFFFFFF8)
          {
            v16 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v15;
          }

          if (v16)
          {
            if (!(v16 >> 61))
            {
              operator new();
            }

            *a2 = 0;
            sub_1808();
          }

          v17 = (8 * v14);
          *v17 = *v10;
          v8 = (v17 + 1);
          memcpy(0, 0, v13);
          a2[1] = v8;
          a2[2] = 0;
          a2[1] = v8;
          ++v10;
          v9 -= 8;
        }

        while (v9);
      }

LABEL_17:
      *a2 = 0;
    }
  }
}

void sub_313450(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  if (v2)
  {
    v1[1] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_313478(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(a1 + 8);
  v4 = (v3 - *v3);
  if (*v4 >= 0x19u)
  {
    v5 = v4[12];
    if (v5)
    {
      v6 = (v3 + v5 + *(v3 + v5));
      v7 = *v6;
      if (v7)
      {
        v8 = 0;
        v9 = 8 * v7;
        v10 = (v6 + 1);
        do
        {
          while (1)
          {
            v12 = a2[2];
            if (v8 >= v12)
            {
              break;
            }

            v11 = *v10++;
            *v8 = v11;
            v8 += 8;
            a2[1] = v8;
            v9 -= 8;
            if (!v9)
            {
              goto LABEL_17;
            }
          }

          v13 = v8;
          v14 = v8 >> 3;
          v15 = v14 + 1;
          if ((v14 + 1) >> 61)
          {
            *a2 = 0;
            sub_1794();
          }

          if (v12 >> 2 > v15)
          {
            v15 = v12 >> 2;
          }

          if (v12 >= 0x7FFFFFFFFFFFFFF8)
          {
            v16 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v15;
          }

          if (v16)
          {
            if (!(v16 >> 61))
            {
              operator new();
            }

            *a2 = 0;
            sub_1808();
          }

          v17 = (8 * v14);
          *v17 = *v10;
          v8 = (v17 + 1);
          memcpy(0, 0, v13);
          a2[1] = v8;
          a2[2] = 0;
          a2[1] = v8;
          ++v10;
          v9 -= 8;
        }

        while (v9);
      }

LABEL_17:
      *a2 = 0;
    }
  }
}

void sub_3135F4(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  if (v2)
  {
    v1[1] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_31361C(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_3132D4(a1, a2);
  sub_313478(a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v6 != v7)
  {
    do
    {
      sub_2512DC(a2, v4++);
    }

    while (v4 != v5);
    v4 = v6;
  }

  if (v4)
  {
    v7 = v4;
    operator delete(v4);
  }
}

void sub_313698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *v11;
  if (!*v11)
  {
    _Unwind_Resume(exception_object);
  }

  *(v11 + 8) = v13;
  operator delete(v13);
  _Unwind_Resume(exception_object);
}

BOOL sub_3136E4(int **a1)
{
  v1 = *a1;
  v2 = (*a1 - **a1);
  v3 = *v2;
  if (*(a1 + 38))
  {
    if (v3 >= 0x47)
    {
      v4 = v2[35];
      if (v4)
      {
        return (*&v1[v4] & 0x400) != 0;
      }
    }
  }

  else if (v3 >= 0x47)
  {
    v6 = v2[35];
    if (v6)
    {
      return (*&v1[v6] & 0x200) != 0;
    }
  }

  return 0;
}

BOOL sub_313748(int **a1)
{
  v1 = *a1;
  v2 = (*a1 - **a1);
  v3 = *v2;
  if (*(a1 + 38))
  {
    if (v3 >= 0x47)
    {
      v4 = v2[35];
      if (v4)
      {
        return (*&v1[v4] & 0x10) != 0;
      }
    }
  }

  else if (v3 >= 0x47)
  {
    v6 = v2[35];
    if (v6)
    {
      return (*&v1[v6] & 8) != 0;
    }
  }

  return 0;
}

BOOL sub_3137AC(int **a1)
{
  v1 = *a1;
  v2 = (*a1 - **a1);
  v3 = *v2;
  if (*(a1 + 38))
  {
    if (v3 >= 0x47)
    {
      v4 = v2[35];
      if (v4)
      {
        return (*&v1[v4] & 0x100) != 0;
      }
    }
  }

  else if (v3 >= 0x47)
  {
    v6 = v2[35];
    if (v6)
    {
      return (*&v1[v6] & 0x80) != 0;
    }
  }

  return 0;
}

BOOL sub_313810(int **a1)
{
  v1 = *a1;
  v2 = (*a1 - **a1);
  v3 = *v2;
  if (*(a1 + 38))
  {
    if (v3 >= 0x47)
    {
      v4 = v2[35];
      if (v4)
      {
        return (*&v1[v4] & 0x40000) != 0;
      }
    }
  }

  else if (v3 >= 0x47)
  {
    v6 = v2[35];
    if (v6)
    {
      return (*&v1[v6] & 0x20000) != 0;
    }
  }

  return 0;
}

BOOL sub_313874(int **a1)
{
  v1 = *a1;
  v2 = (*a1 - **a1);
  v3 = *v2;
  if (*(a1 + 38))
  {
    if (v3 >= 0x47)
    {
      v4 = v2[35];
      if (v4)
      {
        return (*&v1[v4] & 0x100000) != 0;
      }
    }
  }

  else if (v3 >= 0x47)
  {
    v6 = v2[35];
    if (v6)
    {
      return (*&v1[v6] & 0x80000) != 0;
    }
  }

  return 0;
}

BOOL sub_3138D8(int **a1)
{
  v1 = *a1;
  v2 = (*a1 - **a1);
  v3 = *v2;
  if (*(a1 + 38))
  {
    if (v3 >= 0x47)
    {
      v4 = v2[35];
      if (v4)
      {
        return (*&v1[v4] & 0x1000) != 0;
      }
    }
  }

  else if (v3 >= 0x47)
  {
    v6 = v2[35];
    if (v6)
    {
      return (*&v1[v6] & 0x800) != 0;
    }
  }

  return 0;
}

BOOL sub_31393C(int **a1)
{
  v1 = *a1;
  v2 = (*a1 - **a1);
  v3 = *v2;
  if (*(a1 + 38))
  {
    if (v3 >= 0x47)
    {
      v4 = v2[35];
      if (v4)
      {
        return (*&v1[v4] & 0x40) != 0;
      }
    }
  }

  else if (v3 >= 0x47)
  {
    v6 = v2[35];
    if (v6)
    {
      return (*&v1[v6] & 0x20) != 0;
    }
  }

  return 0;
}

BOOL sub_3139A0(int **a1)
{
  v1 = *a1;
  v2 = (*a1 - **a1);
  v3 = *v2;
  if (*(a1 + 38))
  {
    if (v3 >= 0x47)
    {
      v4 = v2[35];
      if (v4)
      {
        return (*&v1[v4] & 0x141510) != 0 || (*&v1[v4] & 0x40) != 0;
      }
    }

    return 0;
  }

  if (v3 < 0x47)
  {
    return 0;
  }

  v6 = v2[35];
  if (!v6)
  {
    return 0;
  }

  return (*&v1[v6] & 0xA0A88) != 0 || (*&v1[v6] & 0x20) != 0;
}

BOOL sub_313A3C(int **a1)
{
  v1 = *a1;
  v2 = (*a1 - **a1);
  v3 = *v2;
  if (*(a1 + 38))
  {
    if (v3 >= 0x47)
    {
      v4 = v2[35];
      if (v4)
      {
        return (v1[v4 + 1] & 0x11) != 0 || (*&v1[v4] & 0x400) != 0;
      }
    }

    return 0;
  }

  if (v3 < 0x47)
  {
    return 0;
  }

  v6 = v2[35];
  if (!v6)
  {
    return 0;
  }

  return (*&v1[v6] & 0x880) != 0 || (*&v1[v6] & 0x200) != 0;
}

BOOL sub_313AD0(int **a1)
{
  v1 = *a1;
  v2 = (*a1 - **a1);
  v3 = *v2;
  if (*(a1 + 38))
  {
    if (v3 >= 0x47)
    {
      v4 = v2[35];
      if (v4)
      {
        return (*&v1[v4] & 0x10000) != 0;
      }
    }
  }

  else if (v3 >= 0x47)
  {
    v6 = v2[35];
    if (v6)
    {
      return (*&v1[v6] & 0x8000) != 0;
    }
  }

  return 0;
}

BOOL sub_313B34(int **a1)
{
  v1 = *a1;
  v2 = (*a1 - **a1);
  v3 = *v2;
  if (*(a1 + 38))
  {
    if (v3 >= 0x47)
    {
      v4 = v2[35];
      if (v4)
      {
        return (*&v1[v4] & 0x400000) != 0;
      }
    }
  }

  else if (v3 >= 0x47)
  {
    v6 = v2[35];
    if (v6)
    {
      return (*&v1[v6] & 0x200000) != 0;
    }
  }

  return 0;
}

BOOL sub_313B98(int **a1)
{
  v1 = *a1;
  v2 = (*a1 - **a1);
  v3 = *v2;
  if (*(a1 + 38))
  {
    if (v3 >= 0x47)
    {
      v4 = v2[35];
      if (v4)
      {
        return (*&v1[v4] & 0x1000000) != 0;
      }
    }
  }

  else if (v3 >= 0x47)
  {
    v6 = v2[35];
    if (v6)
    {
      return (*&v1[v6] & 0x800000) != 0;
    }
  }

  return 0;
}

BOOL sub_313BFC(int **a1)
{
  v1 = *a1;
  v2 = (*a1 - **a1);
  v3 = *v2;
  if (*(a1 + 38))
  {
    if (v3 >= 0x47)
    {
      v4 = v2[35];
      if (v4)
      {
        return (*&v1[v4] & 0x4000000) != 0;
      }
    }
  }

  else if (v3 >= 0x47)
  {
    v6 = v2[35];
    if (v6)
    {
      return (*&v1[v6] & 0x2000000) != 0;
    }
  }

  return 0;
}

BOOL sub_313C60(int **a1)
{
  v1 = *a1;
  v2 = (*a1 - **a1);
  v3 = *v2;
  if (*(a1 + 38))
  {
    if (v3 >= 0x47)
    {
      v4 = v2[35];
      if (v4)
      {
        return (*&v1[v4] & 0x10000000) != 0;
      }
    }
  }

  else if (v3 >= 0x47)
  {
    v6 = v2[35];
    if (v6)
    {
      return (*&v1[v6] & 0x8000000) != 0;
    }
  }

  return 0;
}

BOOL sub_313CC4(char **a1)
{
  v1 = *a1;
  v2 = &(*a1)[-**a1];
  v3 = *v2;
  if (v3 < 0x2F || !*(v2 + 23))
  {
    return 0;
  }

  v4 = v1[*(v2 + 23)];
  if (v4 > 0x2B || ((1 << v4) & 0x80000001040) == 0)
  {
    return v4 == 44;
  }

  return v3 < 0x9B || (v6 = *(v2 + 77)) == 0 || (v1[v6 + 2] & 0x20) == 0 || v4 == 44;
}

BOOL sub_313D40(int **a1)
{
  v1 = *a1;
  v2 = *(a1 + 38);
  v3 = (*a1 - **a1);
  v4 = *v3;
  if (*(a1 + 38))
  {
    if (v4 < 0x47)
    {
      return 0;
    }

    if (!v3[35])
    {
      return 0;
    }

    v5 = *(v1 + v3[35]);
    if ((v5 & 2) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v4 < 0x47)
    {
      return 0;
    }

    if (!v3[35])
    {
      return 0;
    }

    v5 = *(v1 + v3[35]);
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  if (!v3[23])
  {
    return 0;
  }

  result = 0;
  v7 = *(v1 + v3[23]);
  if (v7 <= 0x2A)
  {
    if (v7 != 6 && v7 != 12)
    {
      return result;
    }

LABEL_18:
    if (v4 < 0x9B)
    {
      goto LABEL_21;
    }

    v9 = v3[77];
    if (!v9 || (*(v1 + v9 + 2) & 0x20) == 0)
    {
      goto LABEL_21;
    }

    return 0;
  }

  if (v7 != 44)
  {
    if (v7 != 43)
    {
      return result;
    }

    goto LABEL_18;
  }

LABEL_21:
  if (v2)
  {
    if ((v5 & 0x141510) != 0)
    {
      return 1;
    }

    v10 = 64;
  }

  else
  {
    if ((v5 & 0xA0A88) != 0)
    {
      return 1;
    }

    v10 = 32;
  }

  return (v10 & v5) != 0;
}

BOOL sub_313E40(int *a1, int a2)
{
  v2 = (a1 - *a1);
  v3 = *v2;
  if (!a2)
  {
    if (v3 < 0x47)
    {
      return 0;
    }

    v4 = v2[35];
    if (!v2[35])
    {
      return v4;
    }

    v5 = *(a1 + v2[35]);
    if (v5)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (v3 < 0x47)
  {
    return 0;
  }

  v4 = v2[35];
  if (!v2[35])
  {
    return v4;
  }

  v5 = *(a1 + v2[35]);
  if ((v5 & 2) == 0)
  {
    return 0;
  }

LABEL_5:
  if (!v2[23])
  {
    return 0;
  }

  v4 = 0;
  v6 = *(a1 + v2[23]);
  if (v6 > 0x2A)
  {
    if (v6 == 44)
    {
      goto LABEL_21;
    }

    if (v6 != 43)
    {
      return v4;
    }
  }

  else if (v6 != 6 && v6 != 12)
  {
    return v4;
  }

  if (v3 >= 0x9B && v2[77] && (*(a1 + v2[77] + 2) & 0x20) != 0)
  {
    return 0;
  }

LABEL_21:
  v4 = v2[28];
  if (a2)
  {
    if (!v2[28])
    {
      return v4;
    }

    v9 = *(a1 + v4);
    if ((v9 & 2) != 0)
    {
      v10 = 2;
    }

    else
    {
      v10 = 2;
      if ((v9 & 5) != 4 && (v9 & 0x21) != 0x20)
      {
        return 0;
      }
    }
  }

  else
  {
    if (!v2[28])
    {
      return v4;
    }

    v11 = *(a1 + v4);
    if (v11)
    {
      v10 = 1;
    }

    else
    {
      v10 = 1;
      if ((v11 & 6) != 4 && (v11 & 0x22) != 0x20)
      {
        return 0;
      }
    }
  }

  if ((v5 & v10) == 0)
  {
    return 1;
  }

  v4 = 1;
  if (*(a1 + v2[23]) <= 0x2Au)
  {
    if (v6 != 6 && v6 != 12)
    {
      return v4;
    }

    goto LABEL_43;
  }

  if (v6 != 44)
  {
    if (v6 != 43)
    {
      return v4;
    }

LABEL_43:
    if (v3 < 0x9B || !v2[77] || (*(a1 + v2[77] + 2) & 0x20) == 0)
    {
      goto LABEL_46;
    }

    return 1;
  }

LABEL_46:
  if (a2)
  {
    if ((v5 & 0x141510) != 0)
    {
      return 0;
    }

    v13 = 64;
  }

  else
  {
    if ((v5 & 0xA0A88) != 0)
    {
      return 0;
    }

    v13 = 32;
  }

  return (v13 & v5) == 0;
}

BOOL sub_314010(int **a1)
{
  v1 = *a1;
  v2 = (*a1 - **a1);
  v3 = *v2;
  if (*(a1 + 38))
  {
    if (v3 < 0x47)
    {
      if (v3 <= 0x38)
      {
        return 0;
      }
    }

    else if (v2[35] && (v1[v2[35]] & 2) != 0)
    {
      if (v3 >= 0x59)
      {
        v4 = v2[44];
        if (v4)
        {
          return (*&v1[v4] & 0x10) != 0;
        }
      }

      return 0;
    }

    if (v2[28])
    {
      if ((*&v1[v2[28]] & 2) == 0)
      {
        result = 0;
        v7 = (*&v1[v2[28]] & 0x21) == 0x20 || (*&v1[v2[28]] & 5) == 4;
        if (!v7 || v3 <= 0x50)
        {
          return result;
        }

LABEL_35:
        v9 = v2[40];
        if (v9)
        {
          return (*&v1[v9] & 0x10) != 0;
        }

        return 0;
      }

      if (v3 >= 0x51)
      {
        goto LABEL_35;
      }
    }

    return 0;
  }

  if (v3 < 0x47)
  {
    if (v3 <= 0x38)
    {
      return 0;
    }
  }

  else if (v2[35] && (v1[v2[35]] & 1) != 0)
  {
    if (v3 < 0x59)
    {
      return 0;
    }

    v6 = v2[44];
    if (!v6)
    {
      return 0;
    }

    return (*&v1[v6] & 1) != 0;
  }

  if (!v2[28])
  {
    return 0;
  }

  if (*&v1[v2[28]])
  {
    if (v3 < 0x51)
    {
      return 0;
    }

    goto LABEL_38;
  }

  result = 0;
  v8 = (*&v1[v2[28]] & 0x22) == 0x20 || (*&v1[v2[28]] & 6) == 4;
  if (v8 && v3 > 0x50)
  {
LABEL_38:
    v6 = v2[40];
    if (!v6)
    {
      return 0;
    }

    return (*&v1[v6] & 1) != 0;
  }

  return result;
}