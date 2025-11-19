void sub_FF1770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  if (*(v37 + 23) < 0)
  {
    operator delete(*(v38 - 152));
  }

  std::ios::~ios();
  if (SLOBYTE(STACK[0x2B7]) < 0)
  {
    operator delete(STACK[0x2A0]);
  }

  sub_3DB9A4(&STACK[0x210]);
  sub_11BD8(&STACK[0x320]);
  v40 = STACK[0x350];
  if (STACK[0x350])
  {
    STACK[0x358] = v40;
    operator delete(v40);
    v41 = STACK[0x370];
    if (!STACK[0x370])
    {
LABEL_7:
      v42 = STACK[0x390];
      if (!STACK[0x390])
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v41 = STACK[0x370];
    if (!STACK[0x370])
    {
      goto LABEL_7;
    }
  }

  STACK[0x378] = v41;
  operator delete(v41);
  v42 = STACK[0x390];
  if (!STACK[0x390])
  {
LABEL_9:
    sub_3E3DF0(&STACK[0x408]);
    sub_60A84C(a20);
    _Unwind_Resume(a1);
  }

LABEL_8:
  STACK[0x398] = v42;
  operator delete(v42);
  goto LABEL_9;
}

void sub_FF1AB0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  a5[7] = 0u;
  a5[8] = 0u;
  a5[5] = 0u;
  a5[6] = 0u;
  a5[3] = 0u;
  a5[4] = 0u;
  a5[1] = 0u;
  a5[2] = 0u;
  *a5 = 0u;
  if (a3 != a2)
  {
    v7 = (a1 + 1576);
    v8 = (a3 - a2) / 56;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v9 = v8 - 1;
    if (v8 == 1)
    {
      if (*v7 == 1)
      {
        v56 = 0uLL;
        v57 = 0uLL;
        *&v57 = *(a3 - 16);
        if (v57)
        {
          sub_FF2404(a1, *(a3 - 56), 0);
          *(&v57 + 1) = (v45 * *(a3 - 16) + 0.0) / v57;
          sub_2C3744(a5, &v56);
        }
      }

      if (*(a1 + 1616) == 1)
      {
        v56 = 0u;
        v57 = 0u;
        *&v57 = *(a3 - 16);
        if (v57)
        {
          sub_FF2404(a1, *(a3 - 56), 1);
          *(&v57 + 1) = (v46 * *(a3 - 16) + 0.0) / v57;
          sub_2C3744(a5 + 24, &v56);
        }
      }

      if (*(a1 + 1656) == 1)
      {
        v56 = 0u;
        v57 = 0u;
        *&v57 = *(a3 - 16);
        if (v57)
        {
          sub_FF2404(a1, *(a3 - 56), 2);
          *(&v57 + 1) = (v47 * *(a3 - 16) + 0.0) / v57;
          sub_2C3744((a5 + 3), &v56);
        }
      }

      if (*(a1 + 1696) == 1)
      {
        v56 = 0u;
        v57 = 0u;
        *&v57 = *(a3 - 16);
        if (v57)
        {
          sub_FF2404(a1, *(a3 - 56), 3);
          *(&v57 + 1) = (v48 * *(a3 - 16) + 0.0) / v57;
          sub_2C3744(a5 + 72, &v56);
        }
      }

      if (*(a1 + 1736) == 1)
      {
        v56 = 0u;
        v57 = 0u;
        *&v57 = *(a3 - 16);
        if (v57)
        {
          sub_FF2404(a1, *(a3 - 56), 4);
          *(&v57 + 1) = (v49 * *(a3 - 16) + 0.0) / v57;
          sub_2C3744((a5 + 6), &v56);
        }
      }

      if (*(a1 + 1776) == 1)
      {
        v56 = 0u;
        v57 = 0u;
        *&v57 = *(a3 - 16);
        if (v57)
        {
          sub_FF2404(a1, *(a3 - 56), 5);
          *(&v57 + 1) = (v50 * *(a3 - 16) + 0.0) / v57;
          sub_2C3744(a5 + 120, &v56);
        }
      }
    }

    else
    {
      v11 = 0;
      v51 = (a1 + 1576);
      do
      {
        v12 = &v7[40 * v11];
        if (*v12 == 1)
        {
          v13 = 0;
          v56 = 0u;
          v57 = 0u;
          v55 = a5 + 24 * v11;
          v14 = 0.0;
          do
          {
            v15 = (a2 + 56 * v13);
            v16 = v15[5];
            *&v57 = v57 + v16;
            sub_FF2404(a1, *v15, v11);
            v14 = v14 + v17 * v16;
            if (v57 >= *(v12 + 3))
            {
              v18 = 0;
              v19 = *(a1 + 16);
              v20 = v15[7];
              v21 = (v20 >> 30) & 0xFFFFFFFC | (v20 << 32);
              v22 = (v20 >> 61) & 2 | (v20 >> 63) | v21;
              v23 = ((0x2127599BF4325C37 * (v22 ^ (v21 >> 23))) ^ ~((0x2127599BF4325C37 * (v22 ^ (v21 >> 23))) >> 47)) + (((0x2127599BF4325C37 * (v22 ^ (v21 >> 23))) ^ ((0x2127599BF4325C37 * (v22 ^ (v21 >> 23))) >> 47)) << 21);
              v24 = 21 * ((265 * (v23 ^ (v23 >> 24))) ^ ((265 * (v23 ^ (v23 >> 24))) >> 14));
              v25 = 2147483649u * (v24 ^ (v24 >> 28));
              v26 = v19 + 48 * (((((v24 ^ (v24 >> 28)) >> 8) ^ ((-2147483647 * (v24 ^ (v24 >> 28))) >> 16)) ^ ((-2147483647 * (v24 ^ (v24 >> 28))) >> 24)) & 0xF);
              v27 = v26 + 3896;
              v28 = v25 >> 7;
              v29 = *(v26 + 3920);
              v30 = *(v26 + 3896);
              v31 = 0x101010101010101 * (v25 & 0x7F);
              while (1)
              {
                v32 = v28 & v29;
                v33 = *(v30 + v32);
                v34 = ((v33 ^ v31) - 0x101010101010101) & ~(v33 ^ v31) & 0x8080808080808080;
                if (v34)
                {
                  break;
                }

LABEL_17:
                if ((v33 & (~v33 << 6) & 0x8080808080808080) != 0)
                {
                  goto LABEL_20;
                }

                v18 += 8;
                v28 = v18 + v32;
              }

              while (1)
              {
                v35 = (v32 + (__clz(__rbit64(v34)) >> 3)) & v29;
                v36 = (*(v27 + 8) + 24 * v35);
                if (((4 * v36[1]) | (*v36 << 32) | (v36[1] >> 31) | (v36[1] >> 29) & 2) == v22)
                {
                  break;
                }

                v34 &= v34 - 1;
                if (!v34)
                {
                  goto LABEL_17;
                }
              }

              if (v29 == v35)
              {
LABEL_20:
                if (sub_363C44(v19, v20) < *(v12 + 4))
                {
                  goto LABEL_11;
                }

                goto LABEL_21;
              }

              if (*(v36 + 1) < *(v12 + 4))
              {
                goto LABEL_11;
              }

LABEL_21:
              *(&v57 + 1) = v14 / v57;
              sub_FF2404(a1, v15[7], v11);
              v38 = *(&v57 + 1) / v37;
              v39 = vabdd_f64(*(&v57 + 1), v37);
              v40 = *(v12 + 1);
              if ((v38 >= 1.0 / v40 || v38 <= v40) && v39 >= *(v12 + 2))
              {
                v43 = a4 - (v57 + v56);
                if (a4 < v57 + v56)
                {
                  v43 = 0;
                }

                *(&v56 + 1) = v43;
                sub_2C3744(v55, &v56);
                v56 = (v57 + v56);
                v57 = 0uLL;
                v14 = 0.0;
              }
            }

LABEL_11:
            ++v13;
          }

          while (v13 != v9);
          *&v57 = *(a3 - 16) + v57;
          if (v57)
          {
            sub_FF2404(a1, *(a3 - 56), v11);
            *(&v57 + 1) = (v14 + v44 * *(a3 - 16)) / v57;
            sub_2C3744(v55, &v56);
          }

          v7 = v51;
        }

        ++v11;
      }

      while (v11 != 6);
    }
  }
}

void *sub_FF210C(void *a1, uint64_t a2)
{
  v2 = a1;
  v3 = 0;
  do
  {
    sub_4DB110(v3, __p);
    if ((v18 & 0x80u) == 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    if ((v18 & 0x80u) == 0)
    {
      v5 = v18;
    }

    else
    {
      v5 = __p[1];
    }

    v6 = sub_4A5C(v2, v4, v5);
    sub_4A5C(v6, ":", 1);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    v2 = a1;
    v16 = v3;
    v7 = (a2 + 24 * v3);
    v9 = *v7;
    v8 = v7[1];
    if (*v7 != v8)
    {
      do
      {
        sub_4A5C(a1, " (", 2);
        v10 = std::ostream::operator<<();
        sub_4A5C(v10, ",", 1);
        v11 = std::ostream::operator<<();
        sub_4A5C(v11, ")", 1);
        v9 += 32;
      }

      while (v9 != v8);
    }

    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v12 = std::locale::use_facet(__p, &std::ctype<char>::id);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    v3 = v16 + 1;
  }

  while (v16 != 5);
  return a1;
}

void sub_FF2304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_FF2334(void *a1, unsigned int *a2)
{
  sub_456754(a2);
  std::ostream::operator<<();
  v4 = sub_4A5C(a1, " % (", 4);
  v5 = sub_3F80(a2);
  v6 = sub_70ACC(v4, v5);
  v7 = sub_4A5C(v6, ": [", 3);
  v8 = sub_5AAC4(a2);
  v9 = sub_70ACC(v7, v8);
  v10 = sub_4A5C(v9, ", ", 2);
  v11 = sub_4566A4(a2);
  v12 = sub_70ACC(v10, v11);
  sub_4A5C(v12, "])", 2);
  return a1;
}

void sub_FF2404(uint64_t a1, unint64_t a2, int a3)
{
  if (a3 <= 2)
  {
    if (!a3)
    {
      sub_3E8EF0(*(a1 + 32), a2);
      return;
    }

    if (a3 != 1)
    {
      if (a3 == 2)
      {
        if (sub_FF2688(*(a1 + 32), a2))
        {
          sub_3E8EF0(*(a1 + 32), a2);
        }
      }

      return;
    }

    v9 = a2;
    sub_FF28C0(a1 + 784, &v9, v8);
    if (v8[0])
    {
      return;
    }

LABEL_24:
    sub_FF2A14(a1, v9);
    return;
  }

  if (a3 == 3)
  {
    if (!sub_FF2688(*(a1 + 32), a2))
    {
      return;
    }

    v9 = a2;
    sub_FF28C0(a1 + 784, &v9, v8);
    if (v8[0])
    {
      return;
    }

    goto LABEL_24;
  }

  if (a3 != 4)
  {
    if (a3 != 5)
    {
      return;
    }

    sub_3E8FE8(*(a1 + 32), a2);
    if (!sub_FF2688(*(a1 + 32), a2))
    {
      return;
    }

    v9 = a2;
    sub_FF28C0(a1 + 784, &v9, v8);
    if (v8[0])
    {
      return;
    }

    goto LABEL_24;
  }

  v7 = *(a1 + 32);

  sub_3E8FE8(v7, a2);
}

uint64_t sub_FF2688(uint64_t a1, unint64_t a2)
{
  v2 = 0.0;
  if ((a2 & 0x8000000000000000) != 0)
  {
    return (v2 * sub_3E8FE8(a1, a2) + 0.5);
  }

  v3 = a2;
  v4 = a1;
  v5 = sub_2B3284(a1, a2, 1);
  if (!v5)
  {
    a2 = v3;
    a1 = v4;
    return (v2 * sub_3E8FE8(a1, a2) + 0.5);
  }

  v7 = v5;
  v8 = &v5[-*v5];
  v9 = *v8;
  a2 = v3;
  if (!(v3 >> 62))
  {
    a1 = v4;
    if (v9 >= 0xD)
    {
      v10 = v8[6];
      if (!v8[6])
      {
        goto LABEL_13;
      }

LABEL_10:
      v11 = &v7[v10 + *&v7[v10]];
      if (*v11 > (HIDWORD(v3) & 0x3FFFFFFFu))
      {
        v12 = v11 + 2 * (HIDWORD(v3) & 0x3FFFFFFF) + 4;
LABEL_15:
        LOWORD(v6) = *v12;
        v2 = v6;
        return (v2 * sub_3E8FE8(a1, a2) + 0.5);
      }

      goto LABEL_13;
    }

LABEL_12:
    if (v9 < 9)
    {
      return (v2 * sub_3E8FE8(a1, a2) + 0.5);
    }

    goto LABEL_13;
  }

  a1 = v4;
  if (v9 < 0xB)
  {
    goto LABEL_12;
  }

  v10 = v8[5];
  if (v8[5])
  {
    goto LABEL_10;
  }

LABEL_13:
  v13 = v8[4];
  if (v13)
  {
    v12 = &v7[v13];
    goto LABEL_15;
  }

  return (v2 * sub_3E8FE8(a1, a2) + 0.5);
}

void sub_FF2780(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = *(a1 + 776);
  prime = *(a1 + 752);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_B07C(a2, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a1 + 752));
    v5 = *(a2 + 8);
    v6 = prime >= *&v5;
    if (prime > *&v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v6)
  {
    v7 = vcvtps_u32_f32(*(a2 + 24) / *(a2 + 32));
    if (*&v5 < 3uLL || (v8 = vcnt_s8(v5), v8.i16[0] = vaddlv_u8(v8), v8.u32[0] > 1uLL))
    {
      v7 = std::__next_prime(v7);
    }

    else
    {
      v9 = 1 << -__clz(v7 - 1);
      if (v7 >= 2)
      {
        v7 = v9;
      }
    }

    if (prime <= v7)
    {
      prime = v7;
    }

    if (prime < *&v5)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a1 + 760); i; i = *i)
  {
    sub_D3B9CC(a2, i + 4);
  }
}

uint64_t sub_FF28C0@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t **a3@<X8>)
{
  v3 = 0;
  v4 = (*a2 >> 30) & 0xFFFFFFFCLL | (*a2 << 32);
  v5 = (*a2 >> 61) & 2 | (*a2 >> 63) | v4;
  v6 = ((0x2127599BF4325C37 * (v5 ^ (v4 >> 23))) ^ ~((0x2127599BF4325C37 * (v5 ^ (v4 >> 23))) >> 47)) + (((0x2127599BF4325C37 * (v5 ^ (v4 >> 23))) ^ ((0x2127599BF4325C37 * (v5 ^ (v4 >> 23))) >> 47)) << 21);
  v7 = 21 * ((265 * (v6 ^ (v6 >> 24))) ^ ((265 * (v6 ^ (v6 >> 24))) >> 14));
  v8 = 2147483649u * (v7 ^ (v7 >> 28));
  v9 = (result + 48 * (((((v7 ^ (v7 >> 28)) >> 8) ^ ((-2147483647 * (v7 ^ (v7 >> 28))) >> 16)) ^ ((-2147483647 * (v7 ^ (v7 >> 28))) >> 24)) & 0xF));
  v10 = v8 >> 7;
  v11 = v9[3];
  v12 = *v9;
  v13 = 0x101010101010101 * (v8 & 0x7F);
  while (1)
  {
    v14 = v10 & v11;
    v15 = *(v12 + v14);
    v16 = ((v15 ^ v13) - 0x101010101010101) & ~(v15 ^ v13) & 0x8080808080808080;
    if (v16)
    {
      break;
    }

LABEL_5:
    if ((v15 & (~v15 << 6) & 0x8080808080808080) != 0)
    {
      goto LABEL_8;
    }

    v3 += 8;
    v10 = v3 + v14;
  }

  while (1)
  {
    v17 = (v14 + (__clz(__rbit64(v16)) >> 3)) & v11;
    v18 = (v9[1] + 16 * v17);
    if (((4 * v18[1]) | (*v18 << 32) | (v18[1] >> 31) | (v18[1] >> 29) & 2) == v5)
    {
      break;
    }

    v16 &= v16 - 1;
    if (!v16)
    {
      goto LABEL_5;
    }
  }

  if (v11 == v17)
  {
LABEL_8:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[4] = 0;
    return result;
  }

  *a3 = v9;
  a3[1] = (result + 768);
  a3[2] = (v12 + v17);
  a3[3] = v18;
  a3[4] = (v12 + v11);
  return result;
}

double sub_FF2A14(uint64_t a1, unint64_t a2)
{
  v26 = 0;
  v27 = a2;
  __p = 0;
  v25 = 0;
  sub_351010(*(a1 + 16), a2, &__p);
  v4 = __p;
  v5 = v25;
  v6 = 0.0;
  if (__p != v25)
  {
    do
    {
      v7 = *v4;
      v8 = *(a1 + 16);
      v9 = sub_31D994(v8 + 16, *v4, 1);
      if (v9 && (v10 = &v9[-*v9], *v10 >= 0xBu) && *(v10 + 5) && (v11 = &v9[*(v10 + 5) + *&v9[*(v10 + 5)]], *v11 > WORD2(v7)) && (v12 = &v11[8 * WORD2(v7)], v14 = *(v12 + 1), v13 = (v12 + 4), v14))
      {
        v15 = sub_33515C(v8, v7, v13);
      }

      else
      {
        v15 = v7 & 0xFFFFFFFFFFFFLL | (((v7 & 0xFF000000000000) == 0) << 62) | 0x8000000000000000;
      }

      v6 = v6 + sub_2BC7A8(*(a1 + 40), v15);
      ++v4;
    }

    while (v4 != v5);
  }

  v16 = 0x2127599BF4325C37 * (((a2 >> 61) & 2 | (a2 >> 63) | (a2 >> 30) & 0xFFFFFFFC | (a2 << 32)) ^ (((a2 >> 30) & 0xFFFFFFFC | (a2 << 32)) >> 23));
  v17 = (v16 ^ ~(v16 >> 47)) + ((v16 ^ (v16 >> 47)) << 21);
  v18 = 21 * ((265 * (v17 ^ (v17 >> 24))) ^ ((265 * (v17 ^ (v17 >> 24))) >> 14));
  v19 = (a1 + 48 * (((((v18 ^ (v18 >> 28)) >> 8) ^ ((-2147483647 * (v18 ^ (v18 >> 28))) >> 16)) ^ ((-2147483647 * (v18 ^ (v18 >> 28))) >> 24)) & 0xF) + 784);
  v20 = sub_FF333C(v19, &v27, 2147483649u * (v18 ^ (v18 >> 28)));
  if (v21)
  {
    v22 = (v19[1] + 16 * v20);
    *v22 = v27;
    v22[1] = 0;
  }

  *(v19[1] + 16 * v20 + 8) = v6;
  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }

  return v6;
}

void sub_FF2BE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_FF2C08(void **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = (a1[1] - *a1) >> 7;
  v5 = v4 + 1;
  if ((v4 + 1) >> 57)
  {
    sub_1794();
  }

  v7 = a1[2] - *a1;
  if (v7 >> 6 > v5)
  {
    v5 = v7 >> 6;
  }

  if (v7 >= 0x7FFFFFFFFFFFFF80)
  {
    v8 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v5;
  }

  if (v8)
  {
    if (!(v8 >> 57))
    {
      operator new();
    }

    sub_1808();
  }

  v20 = v4 << 7;
  sub_4C3348(v4 << 7, a2, *a3, a4);
  v9 = (v4 << 7) + 128;
  v10 = *a1;
  v11 = a1[1];
  v12 = v20 + *a1 - v11;
  if (v11 != *a1)
  {
    v13 = *a1;
    v14 = v20 + *a1 - v11;
    do
    {
      *v14 = 0;
      *(v14 + 8) = 0;
      *(v14 + 16) = 0;
      *v14 = *v13;
      *(v14 + 16) = *(v13 + 2);
      *v13 = 0;
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0;
      *(v14 + 40) = 0;
      *(v14 + 24) = *(v13 + 24);
      *(v14 + 40) = *(v13 + 5);
      *(v13 + 3) = 0;
      *(v13 + 4) = 0;
      *(v13 + 5) = 0;
      v15 = *(v13 + 3);
      v16 = *(v13 + 4);
      v17 = *(v13 + 5);
      *(v14 + 94) = *(v13 + 94);
      *(v14 + 64) = v16;
      *(v14 + 80) = v17;
      *(v14 + 48) = v15;
      v18 = *(v13 + 104);
      *(v14 + 120) = *(v13 + 15);
      *(v14 + 104) = v18;
      *(v13 + 14) = 0;
      *(v13 + 15) = 0;
      *(v13 + 13) = 0;
      v13 += 128;
      v14 += 128;
    }

    while (v13 != v11);
    do
    {
      sub_60B38C(v10);
      v10 += 128;
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

void sub_FF2DBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_CE38D8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_FF2DD0(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 519) < 0)
    {
      operator delete(*(v1 + 496));
    }

    v2 = *(v1 + 432);
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

    v4 = *(v1 + 416);
    *(v1 + 416) = 0;
    if (v4)
    {
      operator delete(v4);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_FF2E64(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_CDE540(v2);
    operator delete();
  }

  return a1;
}

uint64_t **sub_FF2EB8(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 == -1)
  {
    v5 = 299792458;
  }

  else
  {
    v5 = (off_2674E48[v4])(&v23, a2);
    v6 = *(a2 + 8);
    if (v6 != -1)
    {
      goto LABEL_6;
    }
  }

  v6 = -1;
LABEL_6:
  v7 = __ROR8__(v6 + 16, 16);
  v8 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v5)))) ^ ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v5)))) >> 47))) ^ v6;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_41;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v8;
    if (v8 >= *&v9)
    {
      v11 = v8 % *&v9;
    }
  }

  else
  {
    v11 = v8 & (*&v9 - 1);
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_41:
    operator new();
  }

  if (v10.u32[0] < 2uLL)
  {
    while (1)
    {
      v14 = v13[1];
      if (v14 == v8)
      {
        v15 = *(v13 + 6);
        v16 = *(a2 + 8);
        if (v15 != -1 && v16 == v15)
        {
          v25 = &v24;
          if ((off_2674E60[v15])(&v25, v13 + 2, a2))
          {
            return v13;
          }
        }

        else if (v16 == v15)
        {
          return v13;
        }
      }

      else if ((v14 & (*&v9 - 1)) != v11)
      {
        goto LABEL_41;
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_41;
      }
    }
  }

  while (1)
  {
    v18 = v13[1];
    if (v18 == v8)
    {
      break;
    }

    if (v18 >= *&v9)
    {
      v18 %= *&v9;
    }

    if (v18 != v11)
    {
      goto LABEL_41;
    }

LABEL_29:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_41;
    }
  }

  v19 = *(v13 + 6);
  v20 = *(a2 + 8);
  if (v19 == -1 || v20 != v19)
  {
    if (v20 == v19)
    {
      return v13;
    }

    goto LABEL_29;
  }

  v25 = &v24;
  if (((off_2674E60[v19])(&v25, v13 + 2, a2) & 1) == 0)
  {
    goto LABEL_29;
  }

  return v13;
}

unint64_t sub_FF32FC(uint64_t a1, void *a2)
{
  v2 = __ROR8__(*a2, 32);
  v3 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v2 ^ (v2 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v2 ^ (v2 >> 33))) >> 33));
  return v3 ^ (v3 >> 33);
}

unint64_t sub_FF333C(void *a1, void *a2, unint64_t a3)
{
  v3 = 0;
  v4 = a3 >> 7;
  v5 = a1[3];
  while (1)
  {
    v6 = v4 & v5;
    v7 = *(*a1 + (v4 & v5));
    v8 = ((v7 ^ (0x101010101010101 * (a3 & 0x7F))) - 0x101010101010101) & ~(v7 ^ (0x101010101010101 * (a3 & 0x7F))) & 0x8080808080808080;
    if (v8)
    {
      break;
    }

LABEL_5:
    if ((v7 & (~v7 << 6) & 0x8080808080808080) != 0)
    {
      return sub_FF3430(a1, a3);
    }

    v3 += 8;
    v4 = v3 + v6;
  }

  while (1)
  {
    v9 = (v6 + (__clz(__rbit64(v8)) >> 3)) & v5;
    v10 = (a1[1] + 16 * v9);
    if (((4 * v10[1]) | (*v10 << 32) | (v10[1] >> 31) | (v10[1] >> 29) & 2) == ((*a2 >> 30) & 0xFFFFFFFCLL | (*a2 << 32) | (*a2 >> 63) | (*a2 >> 61) & 2))
    {
      return v9;
    }

    v8 &= v8 - 1;
    if (!v8)
    {
      goto LABEL_5;
    }
  }
}

unint64_t sub_FF3430(void *a1, unint64_t a2)
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
      sub_FF3528(a1);
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

uint64_t sub_FF3528(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1 || *(a1 + 16) > (v1 - (v1 >> 3)) >> 1)
  {
    sub_FF3558();
  }

  return sub_FF3738(a1);
}

uint64_t sub_FF3738(uint64_t result)
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
      goto LABEL_28;
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
LABEL_28:
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
        v19 = 0x2127599BF4325C37 * (((v18 >> 61) & 2 | (v18 >> 63) | (v18 >> 30) & 0xFFFFFFFC | (v18 << 32)) ^ (((v18 >> 30) & 0xFFFFFFFC | (v18 << 32)) >> 23));
        v20 = (v19 ^ ~(v19 >> 47)) + ((v19 ^ (v19 >> 47)) << 21);
        v21 = 21 * ((265 * (v20 ^ (v20 >> 24))) ^ ((265 * (v20 ^ (v20 >> 24))) >> 14));
        v22 = 2147483649u * (v21 ^ (v21 >> 28));
        v23 = v13 & (v22 >> 7);
        v24 = *(v17->i64 + v23) & (~*(v17->i64 + v23) << 7) & 0x8080808080808080;
        if (v24)
        {
          v15 = v13 & (v22 >> 7);
        }

        else
        {
          v25 = 8;
          v15 = v13 & (v22 >> 7);
          do
          {
            v15 = (v15 + v25) & v13;
            v25 += 8;
            v24 = *(v17->i64 + v15) & (~*(v17->i64 + v15) << 7) & 0x8080808080808080;
          }

          while (!v24);
        }

        v16 = (v15 + (__clz(__rbit64(v24)) >> 3)) & v13;
        if ((((v16 - v23) ^ (i - v23)) & v13) > 7)
        {
          v26 = v17->u8[v16];
          v17->i8[v16] = v22 & 0x7F;
          *(*result + (*(result + 24) & 7) + (*(result + 24) & (v16 - 8)) + 1) = v22 & 0x7F;
          v27 = *(result + 8);
          if (v26 == 128)
          {
            *(v27 + 16 * v16) = *(v27 + 16 * i);
            *(*result + i) = 0x80;
            *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = 0x80;
          }

          else
          {
            v28 = *(v27 + 16 * i);
            *(v27 + 16 * i) = *(v27 + 16 * v16);
            *(*(result + 8) + 16 * v16) = v28;
            --i;
          }
        }

        else
        {
          v17->i8[i] = v22 & 0x7F;
          *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = v22 & 0x7F;
        }
      }

      v13 = *(result + 24);
    }

    v29 = i - (i >> 3);
    v30 = i == 7;
    v31 = 6;
    if (!v30)
    {
      v31 = v29;
    }
  }

  else
  {
    v31 = 0;
  }

  *(result + 40) = v31 - *(result + 16);
  return result;
}

void sub_FF3A20()
{
  byte_27C077F = 3;
  LODWORD(qword_27C0768) = 5136193;
  byte_27C0797 = 3;
  LODWORD(qword_27C0780) = 5136194;
  byte_27C07AF = 3;
  LODWORD(qword_27C0798) = 5136195;
  byte_27C07C7 = 15;
  strcpy(&qword_27C07B0, "vehicle_mass_kg");
  byte_27C07DF = 21;
  strcpy(&xmmword_27C07C8, "vehicle_cargo_mass_kg");
  byte_27C07F7 = 19;
  strcpy(&qword_27C07E0, "vehicle_aux_power_w");
  byte_27C080F = 15;
  strcpy(&qword_27C07F8, "dcdc_efficiency");
  strcpy(&qword_27C0810, "drive_train_efficiency");
  HIBYTE(word_27C0826) = 22;
  operator new();
}

void sub_FF3BFC(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C0826) < 0)
  {
    sub_21E6350();
  }

  sub_21E635C();
  _Unwind_Resume(a1);
}

unint64_t sub_FF3C1C(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_E7A3D0(a1);
  v7 = sub_E7A124(a1);
  v8 = a3 == 2;
  if (v6 == 2)
  {
    v9 = a3 != 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = a3 == 3;
  v11 = a3 == 3 || v8;
  v12 = v10 || v9;
  v13 = sub_44F320(a2);
  v14 = 3;
  if (!v13)
  {
    v14 = 1;
  }

  if (v6)
  {
    v14 |= 0x10uLL;
  }

  if (v11)
  {
    v14 |= 4uLL;
  }

  if (v12)
  {
    v14 |= 8uLL;
  }

  v15 = v14 & 0xFFFFFFFFFFFFFF9FLL;
  v16 = 32;
  if (((v6 == 2) & BYTE4(v7) & 1) == 0)
  {
    v16 = 0;
  }

  v17 = 64;
  if (((v6 == 2) & BYTE3(v7) & 1) == 0)
  {
    v17 = 0;
  }

  return v17 | v16 | v15;
}

unint64_t sub_FF3D04(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_E7C414(a1);
  v7 = sub_E7C160(a1);
  v8 = a3 == 2;
  if (v6 == 2)
  {
    v9 = a3 != 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = a3 == 3;
  v11 = a3 == 3 || v8;
  v12 = v10 || v9;
  v13 = sub_44F320(a2);
  v14 = 3;
  if (!v13)
  {
    v14 = 1;
  }

  if (v6)
  {
    v14 |= 0x10uLL;
  }

  if (v11)
  {
    v14 |= 4uLL;
  }

  if (v12)
  {
    v14 |= 8uLL;
  }

  v15 = v14 & 0xFFFFFFFFFFFFFF9FLL;
  v16 = 32;
  if (((v6 == 2) & BYTE4(v7) & 1) == 0)
  {
    v16 = 0;
  }

  v17 = 64;
  if (((v6 == 2) & BYTE3(v7) & 1) == 0)
  {
    v17 = 0;
  }

  return v17 | v16 | v15;
}

unint64_t sub_FF3DEC(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_E8237C(a1);
  v7 = sub_E7FE50(a1);
  v8 = a3 == 2;
  if (v6 == 2)
  {
    v9 = a3 != 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = a3 == 3;
  v11 = a3 == 3 || v8;
  v12 = v10 || v9;
  v13 = sub_44F320(a2);
  v14 = 3;
  if (!v13)
  {
    v14 = 1;
  }

  if (v6)
  {
    v14 |= 0x10uLL;
  }

  if (v11)
  {
    v14 |= 4uLL;
  }

  if (v12)
  {
    v14 |= 8uLL;
  }

  v15 = v14 & 0xFFFFFFFFFFFFFF9FLL;
  v16 = 32;
  if (((v6 == 2) & BYTE4(v7) & 1) == 0)
  {
    v16 = 0;
  }

  v17 = 64;
  if (((v6 == 2) & BYTE3(v7) & 1) == 0)
  {
    v17 = 0;
  }

  return v17 | v16 | v15;
}

float64x2_t sub_FF3ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = a7;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  result = vnegq_f64(v7);
  *(a1 + 48) = result;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  return result;
}

unint64_t sub_FF3EF8(void *a1, uint64_t *a2, unsigned __int8 **a3, uint64_t *a4, uint64_t *a5)
{
  v10 = sub_F68F18(a1) & 0xFFFFFFFFFFFFF9F1;
  v11 = a5[10];
  if ((v11 & 0x10) == 0 || (v12 = *a3, v13 = a3[1], *a3 == v13))
  {
LABEL_5:
    if ((v11 & 0x40) != 0)
    {
      goto LABEL_11;
    }

LABEL_6:
    v14 = a5[10];
    if ((v14 & 8) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_7;
  }

  while (*v12 - 2 > 2)
  {
    v12 += 40;
    if (v12 == v13)
    {
      goto LABEL_5;
    }
  }

  v10 |= 8uLL;
  if ((v11 & 0x40) == 0)
  {
    goto LABEL_6;
  }

LABEL_11:
  v17 = *a2;
  v16 = a2[1];
  if (v17 == v16)
  {
LABEL_19:
    v10 &= ~4uLL;
    v14 = a5[10];
    if ((v14 & 8) != 0)
    {
      goto LABEL_20;
    }

LABEL_7:
    if ((v14 & 4) != 0)
    {
      goto LABEL_38;
    }

LABEL_8:
    v15 = v10;
    if ((v14 & 0x20) == 0)
    {
      return v15;
    }

LABEL_106:
    v63 = a4[1];
    v64 = *a4;
    if (*a4 == v63)
    {
LABEL_110:
      v66 = v15 & 0xFFFFFFFFFFFFFDFFLL;
      if (v64 != v63)
      {
        goto LABEL_113;
      }
    }

    else
    {
      v65 = *a4;
      while (*(v65 + 8) != 1)
      {
        v65 += 32;
        if (v65 == v63)
        {
          goto LABEL_110;
        }
      }

      v66 = v15 | 0x200;
      if (v64 != v63)
      {
LABEL_113:
        v67 = v64 + 32;
        do
        {
          v68 = *(v67 - 24);
          v69 = v68 != 1 || v67 == v63;
          v67 += 32;
        }

        while (!v69);
        if ((v68 & 1) == 0)
        {
          return v66 | 0x400;
        }
      }
    }

    return v66 & 0xFFFFFFFFFFFFFBFFLL;
  }

  while (*(v17 + 48) != 1 || !*(**(v17 + 32) + 704 * *(v17 + 40) + 689) || sub_FF5658(v17))
  {
    v17 += 64;
    if (v17 == v16)
    {
      goto LABEL_19;
    }
  }

  v10 |= 4uLL;
  v14 = a5[10];
  if ((v14 & 8) == 0)
  {
    goto LABEL_7;
  }

LABEL_20:
  sub_F6D05C(a1, &v73);
  v18 = v73;
  v19 = v74;
  v20 = v75;
  v21 = v76;
  if (v73)
  {
    if (v75)
    {
      while (1)
      {
        v24 = sub_F6D024(v18);
        v25 = sub_F6D024(v20);
        if (v19 >= v24 || v21 >= v25)
        {
          if (v19 < v24 == v21 < v25)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v26 = sub_F6D17C(v18, v19);
          if (v26 == sub_F6D17C(v20, v21))
          {
            goto LABEL_37;
          }
        }

        v23 = sub_F6D17C(v18, v19++);
        if (sub_4389AC(a5[3], v23))
        {
          goto LABEL_35;
        }
      }
    }

    while (v19 < sub_F6D024(v18))
    {
      v22 = sub_F6D17C(v18, v19++);
      if (sub_4389AC(a5[3], v22))
      {
        goto LABEL_35;
      }
    }
  }

  else if (v75)
  {
    while (v21 < sub_F6D024(v20))
    {
      v27 = sub_F6D17C(0, v19++);
      if (sub_4389AC(a5[3], v27))
      {
LABEL_35:
        v10 |= 2uLL;
        v14 = a5[10];
        if ((v14 & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_38;
      }
    }
  }

LABEL_37:
  v10 &= ~2uLL;
  v14 = a5[10];
  if ((v14 & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_38:
  sub_116528C(a5[1], a1, &v73);
  v28 = v73;
  if (v73 == v74)
  {
    v15 = v10 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v15 = (v10 & 0xFFFFFFFFFFFFFFFELL) + 1;
  }

  if (v73 != v74 && (v10 & 2) == 0)
  {
    v30 = *(sub_F69654(a1) + 32);
    if (__PAIR64__(v28[2], *v28) == __PAIR64__(WORD2(v30), v30) && *(v28 + 6) == BYTE6(v30))
    {
      v31 = *v73[1] + 464 * v73[2];
      if (*(v31 + 71) < 0)
      {
        sub_325C(__s2, *(v31 + 48), *(v31 + 56));
      }

      else
      {
        v32 = *(v31 + 48);
        v72 = *(v31 + 64);
        *__s2 = v32;
      }
    }

    else
    {
      HIBYTE(v72) = 0;
      LOBYTE(__s2[0]) = 0;
    }

    v34 = v73;
    v33 = v74;
    v35 = v73;
    if (v73 != v74)
    {
      if (v72 >= 0)
      {
        v36 = HIBYTE(v72);
      }

      else
      {
        v36 = __s2[1];
      }

      if (v72 < 0)
      {
        v44 = __s2[0];
        v35 = v73;
        while (1)
        {
          v45 = *v35[1] + 464 * v35[2];
          v46 = *(v45 + 71);
          v47 = v46;
          if ((v46 & 0x80u) != 0)
          {
            v46 = *(v45 + 56);
          }

          if (v46 == v36)
          {
            v50 = *(v45 + 48);
            v48 = v45 + 48;
            v49 = v50;
            v51 = (v47 >= 0 ? v48 : v49);
            if (!memcmp(v51, v44, v36))
            {
              break;
            }
          }

          v35 += 3;
          if (v35 == v33)
          {
            goto LABEL_97;
          }
        }
      }

      else
      {
        v35 = v73;
        while (1)
        {
          v37 = *v35[1] + 464 * v35[2];
          v38 = *(v37 + 71);
          v39 = v38;
          if ((v38 & 0x80u) != 0)
          {
            v38 = *(v37 + 56);
          }

          if (v38 == v36)
          {
            v42 = *(v37 + 48);
            v40 = v37 + 48;
            v41 = v42;
            v43 = (v39 >= 0 ? v40 : v41);
            if (!memcmp(v43, __s2, v36))
            {
              break;
            }
          }

          v35 += 3;
          if (v35 == v33)
          {
            goto LABEL_97;
          }
        }
      }
    }

    if (v35 != v33)
    {
      v52 = v35 + 3;
      if (v35 + 3 != v33)
      {
        do
        {
          v54 = *v52[1] + 464 * v52[2];
          v55 = *(v54 + 71);
          if (v55 >= 0)
          {
            v56 = *(v54 + 71);
          }

          else
          {
            v56 = *(v54 + 56);
          }

          v57 = HIBYTE(v72);
          if (v72 < 0)
          {
            v57 = __s2[1];
          }

          if (v56 != v57 || ((v60 = *(v54 + 48), v58 = (v54 + 48), v59 = v60, v55 >= 0) ? (v61 = v58) : (v61 = v59), v72 >= 0 ? (v62 = __s2) : (v62 = __s2[0]), memcmp(v61, v62, v56)))
          {
            v53 = *v52;
            *(v35 + 3) = *(v52 + 3);
            *v35 = v53;
            *(v35 + 1) = *(v52 + 1);
            v35 += 3;
          }

          v52 += 3;
        }

        while (v52 != v33);
        v34 = v73;
        v33 = v74;
      }

      if (v35 != v33)
      {
        v74 = v35;
        v33 = v35;
      }
    }

LABEL_97:
    if (v34 == v33)
    {
LABEL_100:
      if ((SHIBYTE(v72) & 0x80000000) == 0)
      {
LABEL_102:
        v28 = v73;
        goto LABEL_103;
      }
    }

    else
    {
      while (!sub_1131728(a5[2], *v34[1] + 464 * v34[2]))
      {
        v34 += 3;
        if (v34 == v33)
        {
          goto LABEL_100;
        }
      }

      v15 |= 2uLL;
      if ((SHIBYTE(v72) & 0x80000000) == 0)
      {
        goto LABEL_102;
      }
    }

    operator delete(__s2[0]);
    goto LABEL_102;
  }

LABEL_103:
  if (v28)
  {
    v74 = v28;
    operator delete(v28);
  }

  if ((a5[10] & 0x20) != 0)
  {
    goto LABEL_106;
  }

  return v15;
}

void sub_FF44B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t sub_FF4504(uint64_t a1, int a2, _BYTE *a3)
{
  if ((a3[80] & 1) == 0)
  {
    return 0;
  }

  v8 = sub_73F1C(a1);
  if (*(v8 + 72) == 1)
  {
    v3 = *(v8 + 73);
  }

  else
  {
    v3 = 0;
  }

  if (a2 && (sub_F6E658(a1, 14) & 1) == 0 && (sub_F6E658(a1, 16) & 1) == 0)
  {
    v9 = *(*a3 + 8);
    v10 = **a3;
    if (v10 != v9)
    {
      while (*(v10 + 176) != 1)
      {
        v10 += 440;
        if (v10 == v9)
        {
          goto LABEL_17;
        }
      }
    }

    if (v10 != v9 && *(v10 + 432))
    {
      v3 |= 2uLL;
    }
  }

LABEL_17:
  v11 = sub_F6C814(a1);
  v12 = (*v11 - **v11);
  if (*v12 >= 0x2Fu)
  {
    v13 = v12[23];
    if (v13)
    {
      v14 = *(*v11 + v13);
      v15 = v14 > 0x2D;
      v16 = (1 << v14) & 0x208040000000;
      if (!v15 && v16 != 0)
      {
        return v3;
      }
    }
  }

  if (*(sub_F69058(a1) + 32) != 1 || *(sub_F69058(a1) + 8) < *(a3 + 7))
  {
    return v3;
  }

  return v3 | 4;
}

unint64_t sub_FF465C(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 + 80);
  if ((v9 & 2) != 0)
  {
    v43 = sub_4DAC3C(a2);
    LODWORD(v44) = v12;
    v51 = sub_4DACB0(a2);
    v52 = v13;
    if (!sub_4566B4(&v51))
    {
      if (sub_4566B4(&v43) || sub_4DADBC(a2))
      {
        v10 = 496;
        if ((*(a5 + 80) & 0x40) == 0)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v10 = 0;
        if ((*(a5 + 80) & 0x40) == 0)
        {
          goto LABEL_59;
        }
      }

      goto LABEL_41;
    }

    v14 = sub_456698((*(a5 + 40) + 320));
    v15 = sub_456698((*(a5 + 40) + 344));
    v16 = sub_456698((*(a5 + 40) + 416));
    v17 = sub_4DADB4(a2);
    v18 = *(v17 + 8);
    v49 = *v17;
    v50 = v18;
    v19 = sub_456C80(&v49, &v43);
    v20 = sub_456698(&v51);
    v21 = *(a5 + 64);
    v22 = v21 * v14;
    if (v22 >= 0.0)
    {
      if (v22 >= 4.50359963e15)
      {
        goto LABEL_15;
      }

      v23 = (v22 + v22) + 1;
    }

    else
    {
      if (v22 <= -4.50359963e15)
      {
        goto LABEL_15;
      }

      v23 = (v22 + v22) - 1 + (((v22 + v22) - 1) >> 63);
    }

    v22 = (v23 >> 1);
LABEL_15:
    v24 = 16 * (v19 < v22);
    v25 = *(a5 + 72) * v15;
    if (v25 >= 0.0)
    {
      v26 = *(a5 + 72) * v15;
      if (v25 >= 4.50359963e15)
      {
        goto LABEL_21;
      }

      v27 = (v25 + v25) + 1;
    }

    else
    {
      v26 = *(a5 + 72) * v15;
      if (v25 <= -4.50359963e15)
      {
        goto LABEL_21;
      }

      v27 = (v25 + v25) - 1 + (((v25 + v25) - 1) >> 63);
    }

    v26 = (v27 >> 1);
LABEL_21:
    if (v19 < v26)
    {
      v24 |= 0x20uLL;
    }

    v28 = v21 * v16;
    if (v28 >= 0.0)
    {
      if (v28 >= 4.50359963e15)
      {
        goto LABEL_29;
      }

      v29 = (v28 + v28) + 1;
    }

    else
    {
      if (v28 <= -4.50359963e15)
      {
        goto LABEL_29;
      }

      v29 = (v28 + v28) - 1 + (((v28 + v28) - 1) >> 63);
    }

    v28 = (v29 >> 1);
LABEL_29:
    if (v20 < v28)
    {
      v24 |= 0x40uLL;
    }

    if (v25 >= 0.0)
    {
      if (v25 >= 4.50359963e15)
      {
        goto LABEL_37;
      }

      v30 = (v25 + v25) + 1;
    }

    else
    {
      if (v25 <= -4.50359963e15)
      {
        goto LABEL_37;
      }

      v30 = (v25 + v25) - 1 + (((v25 + v25) - 1) >> 63);
    }

    v25 = (v30 >> 1);
LABEL_37:
    if (v20 >= v25)
    {
      v10 = v24;
    }

    else
    {
      v10 = v24 | 0x80;
    }

    if ((*(a5 + 80) & 0x40) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_41;
  }

  v10 = 0;
  if ((v9 & 0x40) == 0)
  {
    goto LABEL_59;
  }

LABEL_41:
  v32 = *a3;
  for (i = a3[1]; v32 != i; v32 += 64)
  {
    if (*(v32 + 48) == 1 && *(**(v32 + 32) + 704 * *(v32 + 40) + 689) && !sub_FF5658(v32))
    {
      break;
    }
  }

  while (v32 != i)
  {
    if (*(v32 + 48) != 1)
    {
      sub_5AF20();
    }

    if (*(**(v32 + 32) + 704 * *(v32 + 40) + 689) - 1 <= 2)
    {
      v10 |= qword_22AEC10[(*(**(v32 + 32) + 704 * *(v32 + 40) + 689) - 1)];
    }

    do
    {
      v32 += 64;
    }

    while (v32 != i && (*(v32 + 48) != 1 || !*(**(v32 + 32) + 704 * *(v32 + 40) + 689) || sub_FF5658(v32)));
  }

LABEL_59:
  v33 = *(a5 + 80);
  if ((v33 & 8) == 0)
  {
    goto LABEL_76;
  }

  sub_1168CF4(*(a5 + 8), a1, &v43);
  if (v43 == v44 && v45 == v46 && (v34 = __p, __p == v48))
  {
    v10 &= ~0x200uLL;
    if (__p)
    {
      goto LABEL_64;
    }
  }

  else
  {
    v10 |= 0x200uLL;
    v34 = __p;
    if (__p)
    {
LABEL_64:
      v35 = v48;
      v36 = v34;
      if (v48 != v34)
      {
        v37 = v48;
        do
        {
          v39 = *(v37 - 3);
          v37 -= 24;
          v38 = v39;
          if (v39)
          {
            *(v35 - 2) = v38;
            operator delete(v38);
          }

          v35 = v37;
        }

        while (v37 != v34);
        v36 = __p;
      }

      v48 = v34;
      operator delete(v36);
    }
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  v33 = *(a5 + 80);
LABEL_76:
  if ((v33 & 0x10) != 0)
  {
    v40 = *a4;
    v41 = *(a4 + 8);
    if (*a4 == v41)
    {
      return v10 & 0xFFFFFFFFFFFFFFF7;
    }

    else
    {
      while (*v40 != 3)
      {
        v40 += 40;
        if (v40 == v41)
        {
          return v10 & 0xFFFFFFFFFFFFFFF7;
        }
      }

      return v10 | 8;
    }
  }

  return v10;
}

uint64_t sub_FF4B0C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_4D20B0(*a1, 14);
  if (sub_4D20B0(a1[1] - 1096, 15))
  {
    v6 |= 2uLL;
  }

  if (sub_4D20B0(*a1, 16))
  {
    v6 |= 8uLL;
  }

  if (sub_4D20C0(*a1, 1))
  {
    v6 |= 0x10uLL;
  }

  v7 = v6 & 0xFFFFFFFFFFFFFF1BLL;
  if (sub_4D20C0(*a1, 0))
  {
    v8 = 32;
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_4D20C0(a1[1] - 1096, 2);
  v10 = 4;
  if (!v9)
  {
    v10 = 0;
  }

  v11 = v8 | v10;
  v12 = sub_4D20B0(*a1, 17);
  v13 = 64;
  if (!v12)
  {
    v13 = 0;
  }

  v14 = v11 | v13;
  v15 = sub_4D20C0(*a1, 3);
  v16 = 128;
  if (!v15)
  {
    v16 = 0;
  }

  v17 = v14 | v16 | v7;
  if ((*(a3 + 80) & 2) != 0)
  {
    if (sub_4D20C0(a1[1] - 1096, 6))
    {
      v18 = 4096;
    }

    else
    {
      v18 = 0;
    }

    if (sub_4D20C0(a1[1] - 1096, 7))
    {
      v19 = 0x2000;
    }

    else
    {
      v19 = 0;
    }

    v20 = *(a3 + 40);
    v21 = sub_3B1D8C(*(a3 + 32));
    v22 = sub_445D54((v20 + 20), v20, v21);
    if (v22)
    {
      v23 = 512;
    }

    else
    {
      v23 = 0;
    }

    v24 = a1[1];
    v25 = *a1 + 1096;
    if (v25 != v24)
    {
      v48 = a2;
      do
      {
        v26 = sub_4D2130(v25);
        if (*v26 != 0x7FFFFFFF && v26[9] != 0x7FFFFFFF)
        {
          v28 = v26;
          if (sub_4566B4(v26 + 2))
          {
            v29 = v28[28];
            if (v29)
            {
              if (v29 == 2)
              {
                v30 = *(v28 + 13);
                if (v30 <= 0xFFFFFFFEFFFFFFFFLL && v30)
                {
                  goto LABEL_43;
                }
              }

              else
              {
                if (v29 != 1)
                {
                  sub_5AF20();
                }

                if (*(v28 + 13) != -1)
                {
                  goto LABEL_43;
                }
              }
            }
          }
        }

        v25 += 1096;
      }

      while (v25 != v24);
      v25 = v24;
LABEL_43:
      a2 = v48;
    }

    if (*(a2 + 24) == 1)
    {
      v31 = v22;
    }

    else
    {
      v31 = 1;
    }

    if ((v31 & 1) != 0 || a1[1] == v25)
    {
      goto LABEL_52;
    }

    v32 = sub_4D2130(v25);
    v33 = *(a2 + 16);
    v34 = *(v32 + 112);
    v35 = *(v33 + 24);
    if (v34 == -1 || v35 != v34)
    {
      if (v35 != v34)
      {
LABEL_52:
        v36 = (v18 | v19 | v23) & 0xFFFFFFFFFFFFFBFFLL | v17 & 0xFFFFFFFFFFFFC9FFLL;
        v37 = *a1;
        v38 = a1[1];
        if (*a1 != v38)
        {
          goto LABEL_53;
        }

        goto LABEL_55;
      }
    }

    else
    {
      v50[0] = &__p;
      if (((off_2674E78[v34])(v50, v32 + 104, v33 + 16) & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    v36 = v18 | v19 | v23 | v17 & 0xFFFFFFFFFFFFCDFFLL | 0x400;
    v37 = *a1;
    v38 = a1[1];
    if (*a1 != v38)
    {
LABEL_53:
      while (!sub_4531E0(v37, *(a3 + 40), *(a3 + 32)))
      {
        v37 += 1096;
        if (v37 == v38)
        {
          goto LABEL_55;
        }
      }

      v39 = v36 | 0x800;
LABEL_57:
      v40 = sub_4D39C4(a1[1] - 1096);
      v51 = sub_4DACB0(v40);
      v52 = v41;
      v42 = vcvtd_n_f64_s64(sub_449640(&v51, *(a3 + 40)), 1uLL);
      if (v42 >= 0.0)
      {
        if (v42 < 4.50359963e15)
        {
          v43 = (v42 + v42) + 1;
          goto LABEL_62;
        }
      }

      else if (v42 > -4.50359963e15)
      {
        v43 = (v42 + v42) - 1 + (((v42 + v42) - 1) >> 63);
LABEL_62:
        v42 = (v43 >> 1);
      }

      v44 = v42;
      v45 = *(a3 + 40);
      v46 = sub_3B1D8C(*(a3 + 32));
      sub_445D54((v45 + 20), v45, v46);
      if (*(a3 + 48) > v44)
      {
        sub_455440(v50, *(a3 + 40), *(*(a3 + 40) + 440), *(a3 + 32));
      }

      return v39 | 0x100;
    }

LABEL_55:
    v39 = v36 & 0xFFFFFFFFFFFFF7FFLL;
    goto LABEL_57;
  }

  return v17;
}

void sub_FF4FFC(void *a1@<X0>, uint64_t *a2@<X1>, unsigned __int8 **a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, int32x4_t a7@<Q4>)
{
  *(a6 + 32) = 0;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  v12 = *(a5 + 80);
  if ((v12 & 0x10) != 0)
  {
    v15 = *a3;
    v14 = a3[1];
    if (*a3 == v14)
    {
      v17 = 0;
      goto LABEL_16;
    }

    v16 = v14 - v15 - 40;
    if (v16 >= 0x28)
    {
      v19 = 0;
      v20 = 0;
      v21 = v16 / 0x28 + 1;
      v18 = &v15[40 * (v21 & 0xFFFFFFFFFFFFFFELL)];
      v22 = v21 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        if (*v15 - 2 < 3)
        {
          ++v19;
        }

        if (v15[40] - 2 < 3)
        {
          ++v20;
        }

        v15 += 80;
        v22 -= 2;
      }

      while (v22);
      v17 = v20 + v19;
      if (v21 == (v21 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_16:
        *(a6 + 12) = sub_314EB0(v17);
        v25 = *a3;
        v24 = a3[1];
        if (*a3 == v24)
        {
          v27 = 0;
        }

        else
        {
          v26 = v24 - v25 - 40;
          if (v26 >= 0x28)
          {
            v29 = 0;
            v30 = 0;
            v31 = v26 / 0x28 + 1;
            v28 = &v25[40 * (v31 & 0xFFFFFFFFFFFFFFELL)];
            v32 = v31 & 0xFFFFFFFFFFFFFFELL;
            do
            {
              if (*v25 == 1)
              {
                ++v29;
              }

              if (v25[40] == 1)
              {
                ++v30;
              }

              v25 += 80;
              v32 -= 2;
            }

            while (v32);
            v27 = v30 + v29;
            if (v31 == (v31 & 0xFFFFFFFFFFFFFFELL))
            {
              goto LABEL_30;
            }
          }

          else
          {
            v27 = 0;
            v28 = *a3;
          }

          do
          {
            v33 = *v28;
            v28 += 40;
            if (v33 == 1)
            {
              ++v27;
            }
          }

          while (v28 != v24);
        }

LABEL_30:
        *(a6 + 16) = sub_314EB0(v27);
        v12 = *(a5 + 80);
        goto LABEL_31;
      }
    }

    else
    {
      v17 = 0;
      v18 = *a3;
    }

    do
    {
      v23 = *v18;
      v18 += 40;
      if ((v23 - 2) < 3)
      {
        ++v17;
      }
    }

    while (v18 != v14);
    goto LABEL_16;
  }

LABEL_31:
  if ((v12 & 8) != 0)
  {
    sub_11681B4(*(a5 + 8), a1, &v89);
    v34 = v89;
    v35 = v90;
    if (v89)
    {
      v90 = v89;
      operator delete(v89);
    }

    if (v34 != v35)
    {
      *(a6 + 20) = 1;
    }
  }

  v36 = *(a5 + 80);
  if ((v36 & 0x20) != 0)
  {
    v38 = *a4;
    v37 = a4[1];
    if (*a4 != v37)
    {
      v39 = v37 - v38 - 32;
      if (v39 < 0x60)
      {
        v40 = 0;
        v41 = 0;
        v42 = *a4;
        goto LABEL_51;
      }

      v43 = (v39 >> 5) + 1;
      if (v39 >= 0x3E0)
      {
        v45 = 0uLL;
        v44 = v43 & 0xFFFFFFFFFFFFFE0;
        v46.i64[0] = 0x101010101010101;
        v46.i64[1] = 0x101010101010101;
        v47 = *a4;
        v48 = 0uLL;
        v49 = v43 & 0xFFFFFFFFFFFFFE0;
        v50 = 0uLL;
        v51 = 0uLL;
        v52 = 0uLL;
        v53 = 0uLL;
        v54 = 0uLL;
        v55 = 0uLL;
        v56 = 0uLL;
        v57 = 0uLL;
        v58 = 0uLL;
        v59 = 0uLL;
        v60 = 0uLL;
        v61 = 0uLL;
        v62 = 0uLL;
        v63 = 0uLL;
        do
        {
          v64.i8[0] = v47[8];
          v65.i8[0] = v64.i8[0];
          v65.i8[1] = v47[40];
          v64.i8[1] = v65.i8[1];
          v64.i8[2] = v47[72];
          v65.i8[2] = v64.i8[2];
          v65.i8[3] = v47[104];
          v65.i8[4] = v47[136];
          v64.i8[3] = v65.i8[3];
          v64.i8[4] = v65.i8[4];
          v66.i8[0] = v47[520];
          v64.i8[5] = v47[168];
          v65.i8[5] = v64.i8[5];
          v65.i8[6] = v47[200];
          v64.i8[6] = v65.i8[6];
          v65.i8[7] = v47[232];
          v64.i8[7] = v65.i8[7];
          v65.i8[8] = v47[264];
          v67.i8[0] = v66.i8[0];
          v67.i8[1] = v47[552];
          v68.i8[0] = v65.i8[8];
          v68.i8[1] = v47[296];
          v66.i8[1] = v67.i8[1];
          v65.i8[9] = v68.i8[1];
          v68.i8[2] = v47[328];
          v65.i8[10] = v68.i8[2];
          v67.i8[2] = v47[584];
          v66.i8[2] = v67.i8[2];
          v67.i8[3] = v47[616];
          v68.i8[3] = v47[360];
          v65.i8[11] = v68.i8[3];
          v67.i8[4] = v47[648];
          v66.i8[3] = v67.i8[3];
          v68.i8[4] = v47[392];
          v66.i8[4] = v67.i8[4];
          v65.i8[12] = v68.i8[4];
          v68.i8[5] = v47[424];
          v65.i8[13] = v68.i8[5];
          v67.i8[5] = v47[680];
          v66.i8[5] = v67.i8[5];
          v67.i8[6] = v47[712];
          v68.i8[6] = v47[456];
          v65.i8[14] = v68.i8[6];
          v67.i8[7] = v47[744];
          v66.i16[3] = v67.i16[3];
          v68.i8[7] = v47[488];
          v65.i8[15] = v68.i8[7];
          v67.i8[8] = v47[776];
          v67.i8[9] = v47[808];
          v69.i16[0] = v67.i16[4];
          v67.i8[10] = v47[840];
          v69.i8[2] = v67.i8[10];
          v67.i8[11] = v47[872];
          v69.i8[3] = v67.i8[11];
          v67.i8[12] = v47[904];
          v69.i8[4] = v67.i8[12];
          v67.i8[13] = v47[936];
          v69.i8[5] = v67.i8[13];
          v67.i8[14] = v47[968];
          v69.i8[6] = v67.i8[14];
          v67.i8[15] = v47[1000];
          v69.i8[7] = v67.i8[15];
          v70 = vmovl_u8(v64);
          v71 = vmovl_u8(v68);
          v72 = vmovl_u8(v66);
          v73 = vmovl_u8(v69);
          v51 = vaddw_high_u16(v51, v71);
          v48 = vaddw_high_u16(v48, v70);
          v50 = vaddw_u16(v50, *v71.i8);
          v45 = vaddw_u16(v45, *v70.i8);
          v53 = vaddw_high_u16(v53, v72);
          v55 = vaddw_high_u16(v55, v73);
          v54 = vaddw_u16(v54, *v73.i8);
          v52 = vaddw_u16(v52, *v72.i8);
          v74 = veorq_s8(v65, v46);
          v75 = veorq_s8(v67, v46);
          v76 = vmovl_u8(*v74.i8);
          v77 = vmovl_high_u8(v74);
          v78 = vmovl_u8(*v75.i8);
          v79 = vmovl_high_u8(v75);
          v59 = vaddw_high_u16(v59, v77);
          v58 = vaddw_u16(v58, *v77.i8);
          v57 = vaddw_high_u16(v57, v76);
          v56 = vaddw_u16(v56, *v76.i8);
          v63 = vaddw_high_u16(v63, v79);
          v62 = vaddw_u16(v62, *v79.i8);
          v61 = vaddw_high_u16(v61, v78);
          v60 = vaddw_u16(v60, *v78.i8);
          v47 += 1024;
          v49 -= 32;
        }

        while (v49);
        a7 = vaddq_s32(v54, v50);
        v40 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v52, v45), a7), vaddq_s32(vaddq_s32(v53, v48), vaddq_s32(v55, v51))));
        v41 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v60, v56), vaddq_s32(v62, v58)), vaddq_s32(vaddq_s32(v61, v57), vaddq_s32(v63, v59))));
        if (v43 == v44)
        {
          goto LABEL_52;
        }

        if ((v43 & 0x1C) == 0)
        {
          v42 = &v38[32 * v44];
          do
          {
LABEL_51:
            v85 = v42[8];
            v40 += v85;
            v41 += v85 ^ 1;
            v42 += 32;
          }

          while (v42 != v37);
LABEL_52:
          *(a6 + 24) = v40;
          *(a6 + 28) = v41;
          goto LABEL_53;
        }
      }

      else
      {
        v40 = 0;
        v41 = 0;
        v44 = 0;
      }

      v80 = v40;
      v81 = v41;
      v42 = &v38[32 * (v43 & 0xFFFFFFFFFFFFFFCLL)];
      v82 = v44 - (v43 & 0xFFFFFFFFFFFFFFCLL);
      v83 = &v38[32 * v44 + 72];
      v84.i64[0] = 0xFF000000FFLL;
      v84.i64[1] = 0xFF000000FFLL;
      do
      {
        a7.i8[0] = *(v83 - 64);
        a7.i8[2] = *(v83 - 32);
        a7.i8[4] = *v83;
        a7.i8[6] = v83[32];
        v80 = vaddq_s32(v80, vandq_s8(vmovl_u16(*a7.i8), v84));
        a7 = vandq_s8(vmovl_u16(veor_s8(*a7.i8, 0x1000100010001)), v84);
        v81 = vaddq_s32(v81, a7);
        v83 += 128;
        v82 += 4;
      }

      while (v82);
      v40 = vaddvq_s32(v80);
      v41 = vaddvq_s32(v81);
      if (v43 == (v43 & 0xFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    }
  }

LABEL_53:
  if ((v36 & 0x40) != 0)
  {
    v87 = *a2;
    for (i = a2[1]; v87 != i; v87 += 64)
    {
      if (*(v87 + 48) == 1 && *(**(v87 + 32) + 704 * *(v87 + 40) + 689) && !sub_FF5658(v87))
      {
        break;
      }
    }

    if (v87 == i)
    {
      v88 = 0;
    }

    else
    {
      v88 = 0;
      do
      {
        do
        {
          v87 += 64;
        }

        while (v87 != i && (*(v87 + 48) != 1 || !*(**(v87 + 32) + 704 * *(v87 + 40) + 689) || sub_FF5658(v87)));
        ++v88;
      }

      while (v87 != i);
    }

    *(a6 + 32) = v88;
  }
}

uint64_t sub_FF5658(uint64_t a1)
{
  if (*(a1 + 48) != 1)
  {
    sub_5AF20();
  }

  if (*(**(a1 + 32) + 704 * *(a1 + 40) + 688) != 5)
  {
    return 0;
  }

  v2 = *a1;
  v1 = *(a1 + 8);
  sub_4D0560();
  v6 = v4;
  v7 = v5;
  if (!v2)
  {
    if (!v4 || v5 >= sub_F6D024(v4))
    {
      return 1;
    }

    goto LABEL_14;
  }

  v8 = sub_F6D024(v2);
  v9 = v8;
  if (!v6)
  {
    if (v1 < v8)
    {
      goto LABEL_14;
    }

    return 1;
  }

  v10 = sub_F6D024(v6);
  if (v1 >= v9 || v7 >= v10)
  {
    if (v1 < v9 != v7 < v10)
    {
      goto LABEL_14;
    }

    return 1;
  }

  v11 = sub_F6D17C(v2, v1);
  if (v11 == sub_F6D17C(v6, v7))
  {
    return 1;
  }

LABEL_14:
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  sub_F6C0C8();
  v16 = v15;
  v18 = v17;
  if (v13)
  {
    v19 = v14 < sub_F6D024(v13);
    if (v16)
    {
      goto LABEL_16;
    }

LABEL_24:
    v21 = 0;
    return v19 ^ v21 ^ 1u;
  }

  v19 = 0;
  if (!v15)
  {
    goto LABEL_24;
  }

LABEL_16:
  v20 = sub_F6D024(v16);
  v21 = v18 < v20;
  if (v18 < v20 && v19)
  {
    v23 = sub_F6D17C(v13, v14);
    return v23 == sub_F6D17C(v16, v18);
  }

  return v19 ^ v21 ^ 1u;
}

void sub_FF5830()
{
  byte_27C0887 = 3;
  LODWORD(qword_27C0870) = 5136193;
  byte_27C089F = 3;
  LODWORD(qword_27C0888) = 5136194;
  byte_27C08B7 = 3;
  LODWORD(qword_27C08A0) = 5136195;
  byte_27C08CF = 15;
  strcpy(&qword_27C08B8, "vehicle_mass_kg");
  byte_27C08E7 = 21;
  strcpy(&xmmword_27C08D0, "vehicle_cargo_mass_kg");
  byte_27C08FF = 19;
  strcpy(&qword_27C08E8, "vehicle_aux_power_w");
  byte_27C0917 = 15;
  strcpy(&qword_27C0900, "dcdc_efficiency");
  strcpy(&qword_27C0918, "drive_train_efficiency");
  HIBYTE(word_27C092E) = 22;
  operator new();
}

void sub_FF5A0C(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C092E) < 0)
  {
    sub_21E642C();
  }

  sub_21E6438();
  _Unwind_Resume(a1);
}

uint64_t sub_FF5A2C(uint64_t a1)
{
  v1 = sub_F6E3D4(a1) / 100000.0 * 0.062 * 3.168 * 1000.0;
  if (v1 >= 0.0)
  {
    if (v1 < 4.50359963e15)
    {
      v2 = (v1 + v1) + 1;
      return (v2 >> 1);
    }
  }

  else if (v1 > -4.50359963e15)
  {
    v2 = (v1 + v1) - 1 + (((v1 + v1) - 1) >> 63);
    return (v2 >> 1);
  }

  return v1;
}

void sub_FF5AD4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = a3;
  a1[1] = a6;
  a1[2] = a4;
  a1[3] = a5;
  operator new();
}

void sub_FF5BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = *(v14 + 48);
  if (v16)
  {
    *(v14 + 56) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_FF5C00(uint64_t a1)
{
  v2 = *(a1 + 144);
  v1 = *(a1 + 152);
  if (v2 == v1)
  {
    return 0;
  }

  v3 = v1 - v2 - 8;
  if (v3 >= 0x40)
  {
    v6 = (v3 >> 3) + 1;
    v7 = v6 & 7;
    if ((v6 & 7) == 0)
    {
      v7 = 8;
    }

    v8 = v6 - v7;
    v5 = (v2 + 8 * v8);
    v9 = (v2 + 32);
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    do
    {
      v14 = v9 - 8;
      v15 = vld2q_f32(v14);
      v16 = vld2q_f32(v9);
      v11 = vaddw_high_u32(v11, v15);
      v10 = vaddw_u32(v10, *&v15);
      v13 = vaddw_high_u32(v13, v16);
      v12 = vaddw_u32(v12, *&v16);
      v9 += 16;
      v8 -= 8;
    }

    while (v8);
    result = vaddvq_s64(vaddq_s64(vaddq_s64(v12, v10), vaddq_s64(v13, v11)));
  }

  else
  {
    result = 0;
    v5 = v2;
  }

  do
  {
    v17 = *v5;
    v5 += 2;
    result += v17;
  }

  while (v5 != v1);
  return result;
}

uint64_t sub_FF5CB0(uint64_t a1, void *a2, uint64_t a3, int *a4, int a5, int a6, void *a7, void *a8)
{
  v8 = a8;
  v10 = a5;
  v11 = a2;
  v12 = a1;
  if (!a5)
  {
    v20 = a6;
    v17 = 0;
    v70 = 0;
    if (*(a1 + 89) != 1)
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  v14 = *(a1 + 8);
  sub_43EDEC(&__p);
  *(v14 + 9954) = 1;
  v16 = __p;
  v15 = v80;
  if (__p == v80)
  {
    v17 = 0;
    v10 = a5;
    v20 = a6;
    if (__p)
    {
LABEL_14:
      v80 = v16;
      operator delete(v16);
    }
  }

  else
  {
    v17 = 0;
    do
    {
      *(v14 + 9954) = 1;
      sub_100A578(v14 + 9960, 1);
      v19 = sub_100A97C(v14 + 9960, v16);
      if (v19 == -1)
      {
        sub_100AA78(v14 + 9960, v16, v18, v85);
      }

      v17 |= v19 == -1;
      v16 += 8;
    }

    while (v16 != v15);
    v16 = __p;
    v11 = a2;
    v12 = a1;
    v10 = a5;
    v20 = a6;
    if (__p)
    {
      goto LABEL_14;
    }
  }

  v8 = a8;
  v70 = v10;
  if (*(v12 + 89) != 1)
  {
LABEL_16:
    if (v10)
    {
      goto LABEL_17;
    }

LABEL_32:
    v93 = 0;
    v94 = 0;
    v95 = 0;
    if (v20)
    {
      goto LABEL_20;
    }

LABEL_33:
    v90 = 0;
    v91 = 0;
    v92 = 0;
    goto LABEL_39;
  }

LABEL_8:
  v21 = *(v12 + 8);
  sub_11631A4(v11, 0, *v12, &__p);
  *(v21 + 9954) = 1;
  v23 = __p;
  v22 = v80;
  if (__p == v80)
  {
    v11 = a2;
    v20 = a6;
    if (__p)
    {
LABEL_30:
      v80 = v23;
      operator delete(v23);
    }
  }

  else
  {
    v24 = 0;
    do
    {
      *(v21 + 9954) = 1;
      sub_100A578(v21 + 9960, 1);
      v26 = sub_100A97C(v21 + 9960, v23);
      if (v26 == -1)
      {
        sub_100AA78(v21 + 9960, v23, v25, v85);
      }

      v24 |= v26 == -1;
      v23 += 8;
    }

    while (v23 != v22);
    v23 = __p;
    v11 = a2;
    v12 = a1;
    v17 |= v24;
    v20 = a6;
    if (__p)
    {
      goto LABEL_30;
    }
  }

  v10 = v70;
  if ((v70 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_17:
  sub_1162C8C(*(v12 + 16), v11, &v93);
  v28 = v93;
  for (i = v94; v28 != i; v28 += 3)
  {
    sub_1006B30(a7, v28);
  }

  if (!v20)
  {
    goto LABEL_33;
  }

LABEL_20:
  sub_1162F2C(v11, &v90);
  v30 = v90;
  v29 = v91;
  if (v90 != v91)
  {
    do
    {
      sub_1006B30(v8, v30);
      v30 += 3;
    }

    while (v30 != v29);
    v30 = v90;
    v29 = v91;
  }

  if (v30 != v29)
  {
    sub_F6BA80(v11, 0);
    v30 = v90;
    v29 = v91;
  }

  if (v30 != v29)
  {
    while (*(*v30[1] + 464 * v30[2] + 352) != 1)
    {
      v30 += 3;
      if (v30 == v29)
      {
        goto LABEL_39;
      }
    }

    sub_F6BA80(v11, 1);
  }

LABEL_39:
  if (v10)
  {
    sub_1163BD4(v85);
    v31 = (v12 + 8);
    v32 = *(v12 + 8);
    v34 = *(&v86 + 1);
    v33 = v87;
    *(v32 + 9954) = 1;
    if (v34 == v33)
    {
      v35 = 0;
    }

    else
    {
      v35 = 0;
      do
      {
        *(v32 + 9954) = 1;
        sub_1006F00(v32 + 10040, 1);
        v37 = sub_1007A48(v32 + 10040, v34);
        if (v37 == -1)
        {
          sub_1007CA8(v32 + 10040, v34, v36, &__p);
        }

        v35 |= v37 == -1;
        v34 += 88;
      }

      while (v34 != v33);
      v32 = *v31;
      v11 = a2;
    }

    v10 = v70;
  }

  else
  {
    v35 = 0;
    v89 = 0;
    v87 = 0u;
    *v88 = 0u;
    *v85 = 0u;
    v86 = 0u;
    v31 = (v12 + 8);
    v32 = *(v12 + 8);
    *(v32 + 9954) = 1;
  }

  v38 = sub_F8F510(v32 + 8, v88);
  sub_11637AC(*(a1 + 16), v11, a3, a4, &__p);
  if (__p != v80 || v81 != v82 || v83 != v84)
  {
    sub_F6BA80(v11, 3);
  }

  if (v10)
  {
    sub_43EDEC(&v76);
    if (v76 != v77)
    {
      sub_F6BA80(v11, 2);
    }

    v39 = v17 | v35 | v38;
    v40 = v93;
    v41 = v94;
    if (v93 != v94)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v39 = v17 | v35 | v38;
    v40 = v93;
    v41 = v94;
    if (v93 != v94)
    {
      goto LABEL_62;
    }
  }

  if (v85[0] == v85[1] && *(&v86 + 1) == v87 && v88[0] == v88[1])
  {
    v57 = *v31;
    *(*v31 + 9954) = 1;
    v58 = __p;
    v59 = v80;
    if (__p == v80)
    {
      v60 = 0;
    }

    else
    {
      v60 = 0;
      do
      {
        *(v57 + 9954) = 1;
        sub_100A578(v57 + 9960, 1);
        v62 = sub_100A97C(v57 + 9960, v58);
        if (v62 == -1)
        {
          sub_100AA78(v57 + 9960, v58, v61, v96);
        }

        v60 |= v62 == -1;
        ++v58;
      }

      while (v58 != v59);
      v57 = *v31;
    }

    *(v57 + 9954) = 1;
    v63 = v81;
    v64 = v82;
    if (v81 == v82)
    {
      v65 = 0;
    }

    else
    {
      v65 = 0;
      do
      {
        *(v57 + 9954) = 1;
        sub_1006F00(v57 + 10040, 1);
        v67 = sub_1007A48(v57 + 10040, v63);
        if (v67 == -1)
        {
          sub_1007CA8(v57 + 10040, v63, v66, v96);
        }

        v65 |= v67 == -1;
        v63 += 88;
      }

      while (v63 != v64);
      v57 = *v31;
    }

    v68 = sub_F8F510(v57 + 8, &v83);
    v40 = v93;
    v41 = v94;
    v42 = v39 & 1;
    if ((v60 | v65 | v68))
    {
      goto LABEL_65;
    }

    goto LABEL_66;
  }

LABEL_62:
  if (__p != v80 || v81 != v82)
  {
    v42 = v39 & 1;
LABEL_65:
    v42 |= 2uLL;
    goto LABEL_66;
  }

  v42 = v39 & 1;
  if (v83 != v84)
  {
    goto LABEL_65;
  }

LABEL_66:
  if (v40 == v41)
  {
    v43 = v42;
  }

  else
  {
    v43 = v42 | 4;
  }

  if (v85[0] != v85[1] || *(&v86 + 1) != v87 || v88[0] != v88[1])
  {
    v43 |= 8uLL;
  }

  if (v76)
  {
    v77 = v76;
    operator delete(v76);
  }

  v44 = v83;
  if (v83)
  {
    v45 = v84;
    v46 = v83;
    if (v84 != v83)
    {
      v47 = v84;
      do
      {
        v49 = *(v47 - 3);
        v47 -= 24;
        v48 = v49;
        if (v49)
        {
          *(v45 - 2) = v48;
          operator delete(v48);
        }

        v45 = v47;
      }

      while (v47 != v44);
      v46 = v83;
    }

    v84 = v44;
    operator delete(v46);
  }

  if (v81)
  {
    v82 = v81;
    operator delete(v81);
  }

  if (__p)
  {
    v80 = __p;
    operator delete(__p);
  }

  v50 = v88[0];
  if (v88[0])
  {
    v51 = v88[1];
    v52 = v88[0];
    if (v88[1] != v88[0])
    {
      v53 = v88[1];
      do
      {
        v55 = *(v53 - 3);
        v53 -= 24;
        v54 = v55;
        if (v55)
        {
          *(v51 - 2) = v54;
          operator delete(v54);
        }

        v51 = v53;
      }

      while (v53 != v50);
      v52 = v88[0];
    }

    v88[1] = v50;
    operator delete(v52);
  }

  if (*(&v86 + 1))
  {
    *&v87 = *(&v86 + 1);
    operator delete(*(&v86 + 1));
  }

  if (v85[0])
  {
    v85[1] = v85[0];
    operator delete(v85[0]);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }

  return v43;
}

void sub_FF643C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_4266B8(&a20);
  sub_4266B8(&a29);
  v31 = *(v29 - 168);
  if (v31)
  {
    *(v29 - 160) = v31;
    operator delete(v31);
  }

  v32 = *(v29 - 144);
  if (v32)
  {
    *(v29 - 136) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(a1);
}

void sub_FF66E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FF6710(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = a3;
  a1[1] = a6;
  a1[2] = a4;
  a1[3] = a5;
  operator new();
}

void sub_FF6808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = *(v14 + 48);
  if (v16)
  {
    *(v14 + 56) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

double sub_FF683C(uint64_t a1)
{
  if (*(a1 + 120))
  {
    v2 = *(a1 + 112);
    if (v2)
    {
      do
      {
        v6 = *v2;
        v7 = v2[8];
        if (v7)
        {
          do
          {
            v8 = *v7;
            operator delete(v7);
            v7 = v8;
          }

          while (v8);
        }

        v9 = v2[6];
        v2[6] = 0;
        if (v9)
        {
          operator delete(v9);
        }

        operator delete(v2);
        v2 = v6;
      }

      while (v6);
    }

    *(a1 + 112) = 0;
    v3 = *(a1 + 104);
    if (v3)
    {
      bzero(*(a1 + 96), 8 * v3);
    }

    *(a1 + 120) = 0;
  }

  v4 = *(a1 + 8);

  return sub_FF68E4(v4);
}

double sub_FF68E4(uint64_t a1)
{
  v2 = a1 + 28672;
  *(a1 + 31330) = 0;
  sub_F8F518(a1 + 8);
  result = sub_1006A70(a1 + 31336);
  LODWORD(result) = *(v2 + 2760);
  v4 = 4;
  if (!vcvts_n_u32_f32(*&result, 2uLL))
  {
    do
    {
      if ((v4 & 0x8000000000000000) != 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        sub_195A000(exception, "resize overflow");
      }

      v4 *= 2;
    }

    while (!(*&result * v4));
  }

  if (*(a1 + 31552) || v4 != *(a1 + 31560))
  {

    *&result = sub_1007E1C(a1 + 31416, v4).u64[0];
  }

  return result;
}

uint64_t sub_FF69CC(uint64_t a1, void *a2, int32x2_t *a3, int *a4, int a5, int a6, void *a7, void *a8)
{
  v10 = a6;
  v11 = a5;
  v12 = a2;
  v13 = a1;
  if (!a5 || *(a1 + 88) != 1)
  {
    v17 = 0;
    goto LABEL_9;
  }

  v14 = *(a1 + 8);
  sub_11681B4(*(a1 + 16), a2, &__p);
  *(v14 + 31330) = 1;
  v16 = __p;
  v15 = v90;
  if (__p == v90)
  {
    v17 = 0;
    v10 = a6;
    if (!__p)
    {
      goto LABEL_9;
    }

    goto LABEL_111;
  }

  v75 = a8;
  v17 = 0;
  do
  {
    *(v14 + 31330) = 1;
    sub_100A578(v14 + 31336, 1);
    v19 = sub_100A97C(v14 + 31336, v16);
    if (v19 == -1)
    {
      sub_100AA78(v14 + 31336, v16, v18, v95);
    }

    v17 |= v19 == -1;
    ++v16;
  }

  while (v16 != v15);
  v16 = __p;
  v11 = a5;
  a8 = v75;
  v10 = a6;
  if (__p)
  {
LABEL_111:
    v90 = v16;
    operator delete(v16);
  }

LABEL_9:
  if (*(v13 + 89) != 1)
  {
    goto LABEL_18;
  }

  v78 = v10;
  v20 = *(v13 + 8);
  v79 = v13;
  sub_1165504(v12, 0, *v13, &__p);
  *(v20 + 31330) = 1;
  v22 = __p;
  v21 = v90;
  if (__p == v90)
  {
    v11 = a5;
    v10 = v78;
    if (!__p)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v76 = a8;
    v23 = 0;
    do
    {
      *(v20 + 31330) = 1;
      sub_100A578(v20 + 31336, 1);
      v25 = sub_100A97C(v20 + 31336, v22);
      if (v25 == -1)
      {
        sub_100AA78(v20 + 31336, v22, v24, v95);
      }

      v23 |= v25 == -1;
      ++v22;
    }

    while (v22 != v21);
    v22 = __p;
    a8 = v76;
    v17 |= v23;
    v11 = a5;
    v10 = v78;
    if (!__p)
    {
      goto LABEL_17;
    }
  }

  v90 = v22;
  operator delete(v22);
LABEL_17:
  v13 = v79;
LABEL_18:
  if ((v11 & 1) == 0)
  {
    v103 = 0;
    v104 = 0;
    v105 = 0;
    if (v10)
    {
      goto LABEL_22;
    }

LABEL_32:
    v100 = 0;
    v101 = 0;
    v102 = 0;
    goto LABEL_36;
  }

  sub_1164FEC(*(v13 + 16), v12, &v103);
  v27 = v103;
  for (i = v104; v27 != i; v27 += 3)
  {
    sub_1007F30(a7, v27);
  }

  if (!v10)
  {
    goto LABEL_32;
  }

LABEL_22:
  sub_116528C(*(v13 + 16), v12, &v100);
  v29 = v100;
  v28 = v101;
  if (v100 != v101)
  {
    do
    {
      sub_1007F30(a8, v29);
      v29 += 3;
    }

    while (v29 != v28);
    v29 = v100;
    v28 = v101;
  }

  if (v29 != v28)
  {
    sub_F6BA80(v12, 0);
    v29 = v100;
    v28 = v101;
  }

  if (v29 != v28)
  {
    while (*(*v29[1] + 464 * v29[2] + 352) != 1)
    {
      v29 += 3;
      if (v29 == v28)
      {
        goto LABEL_36;
      }
    }

    sub_F6BA80(v12, 1);
  }

LABEL_36:
  if (v11)
  {
    v82 = v12;
    sub_1168CF4(*(v13 + 16), v12, v95);
    v30 = v13;
    v31 = (v13 + 8);
    v32 = *(v13 + 8);
    v34 = *(&v96 + 1);
    v33 = v97;
    *(v32 + 31330) = 1;
    if (v34 == v33)
    {
      v35 = 0;
      v12 = v82;
    }

    else
    {
      v80 = v31;
      v35 = 0;
      do
      {
        *(v32 + 31330) = 1;
        sub_1008300(v32 + 31416, 1);
        v37 = sub_1008EEC(v32 + 31416, v34);
        if (v37 == -1)
        {
          sub_10091E8(v32 + 31416, v34, v36, &__p);
        }

        v35 |= v37 == -1;
        v34 += 96;
      }

      while (v34 != v33);
      v31 = v80;
      v32 = *v80;
      v12 = v82;
      v11 = a5;
    }

    v13 = v30;
  }

  else
  {
    v35 = 0;
    v99 = 0;
    v97 = 0u;
    *v98 = 0u;
    *v95 = 0u;
    v96 = 0u;
    v31 = (v13 + 8);
    v32 = *(v13 + 8);
    *(v32 + 31330) = 1;
  }

  v38 = sub_F8F510(v32 + 8, v98);
  sub_1165B0C(*(v13 + 16), v12, a3, a4, &__p);
  if (__p != v90 || v91 != v92 || v93 != v94)
  {
    sub_F6BA80(v12, 3);
  }

  v83 = v38;
  if (v11)
  {
    sub_1169BAC(*(v13 + 16), &v86);
    v39 = v86;
    if (v86 != v87)
    {
      sub_F6BA80(v12, 2);
      v39 = v86;
    }
  }

  else
  {
    v39 = 0;
    v86 = 0;
    v87 = 0;
    v88 = 0;
  }

  v40 = *v31;
  *(*v31 + 31330) = 1;
  v41 = v87;
  if (v39 == v87)
  {
    v42 = 0;
  }

  else
  {
    v42 = 0;
    do
    {
      *(v40 + 31330) = 1;
      sub_100A578(v40 + 31336, 1);
      v44 = sub_100A97C(v40 + 31336, v39);
      if (v44 == -1)
      {
        sub_100AA78(v40 + 31336, v39, v43, v106);
      }

      v42 |= v44 == -1;
      ++v39;
    }

    while (v39 != v41);
  }

  v45 = v17 | v35 | v83 | v42;
  v46 = v103;
  v47 = v104;
  if (v103 == v104 && v95[0] == v95[1] && *(&v96 + 1) == v97 && v98[0] == v98[1])
  {
    v63 = *v31;
    *(*v31 + 31330) = 1;
    v64 = __p;
    v65 = v90;
    if (__p == v90)
    {
      v66 = 0;
    }

    else
    {
      v66 = 0;
      do
      {
        *(v63 + 31330) = 1;
        sub_100A578(v63 + 31336, 1);
        v68 = sub_100A97C(v63 + 31336, v64);
        if (v68 == -1)
        {
          sub_100AA78(v63 + 31336, v64, v67, v106);
        }

        v66 |= v68 == -1;
        ++v64;
      }

      while (v64 != v65);
      v63 = *v31;
    }

    *(v63 + 31330) = 1;
    v69 = v91;
    v70 = v92;
    if (v91 == v92)
    {
      v71 = 0;
    }

    else
    {
      v71 = 0;
      do
      {
        *(v63 + 31330) = 1;
        sub_1008300(v63 + 31416, 1);
        v73 = sub_1008EEC(v63 + 31416, v69);
        if (v73 == -1)
        {
          sub_10091E8(v63 + 31416, v69, v72, v106);
        }

        v71 |= v73 == -1;
        v69 += 96;
      }

      while (v69 != v70);
      v63 = *v31;
    }

    v74 = sub_F8F510(v63 + 8, &v93);
    v46 = v103;
    v47 = v104;
    v48 = v45 & 1;
    if ((v66 | v71 | v74))
    {
      goto LABEL_67;
    }
  }

  else
  {
    if (__p != v90 || v91 != v92)
    {
      v48 = v45 & 1;
LABEL_67:
      v48 |= 2uLL;
      goto LABEL_68;
    }

    v48 = v45 & 1;
    if (v93 != v94)
    {
      goto LABEL_67;
    }
  }

LABEL_68:
  if (v46 == v47)
  {
    v49 = v48;
  }

  else
  {
    v49 = v48 | 4;
  }

  if (v95[0] != v95[1] || *(&v96 + 1) != v97 || v98[0] != v98[1])
  {
    v49 |= 8uLL;
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  v50 = v93;
  if (v93)
  {
    v51 = v94;
    v52 = v93;
    if (v94 != v93)
    {
      v53 = v94;
      do
      {
        v55 = *(v53 - 3);
        v53 -= 24;
        v54 = v55;
        if (v55)
        {
          *(v51 - 2) = v54;
          operator delete(v54);
        }

        v51 = v53;
      }

      while (v53 != v50);
      v52 = v93;
    }

    v94 = v50;
    operator delete(v52);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (__p)
  {
    v90 = __p;
    operator delete(__p);
  }

  v56 = v98[0];
  if (v98[0])
  {
    v57 = v98[1];
    v58 = v98[0];
    if (v98[1] != v98[0])
    {
      v59 = v98[1];
      do
      {
        v61 = *(v59 - 3);
        v59 -= 24;
        v60 = v61;
        if (v61)
        {
          *(v57 - 2) = v60;
          operator delete(v60);
        }

        v57 = v59;
      }

      while (v59 != v56);
      v58 = v98[0];
    }

    v98[1] = v56;
    operator delete(v58);
  }

  if (*(&v96 + 1))
  {
    *&v97 = *(&v96 + 1);
    operator delete(*(&v96 + 1));
  }

  if (v95[0])
  {
    v95[1] = v95[0];
    operator delete(v95[0]);
  }

  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }

  if (v103)
  {
    v104 = v103;
    operator delete(v103);
  }

  return v49;
}

void sub_FF7204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_4266B8(&a20);
  sub_4266B8(&a29);
  v31 = *(v29 - 168);
  if (v31)
  {
    *(v29 - 160) = v31;
    operator delete(v31);
  }

  v32 = *(v29 - 144);
  if (v32)
  {
    *(v29 - 136) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(a1);
}

void sub_FF74B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FF74E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = a3;
  a1[1] = a6;
  a1[2] = a4;
  a1[3] = a5;
  operator new();
}

void sub_FF75DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = *(v14 + 48);
  if (v16)
  {
    *(v14 + 56) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_FF7610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, void *a7, void *a8)
{
  if (!a5)
  {
    v15 = 0;
    if (*(a1 + 89) != 1)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v14 = *(a1 + 8);
  sub_43EDEC(__p);
  v15 = sub_FF7C74(v14, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*(a1 + 89) == 1)
  {
LABEL_7:
    v16 = *(a1 + 8);
    sub_116792C(a2, 0, *a1, __p);
    v15 |= sub_FF7C74(v16, __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

LABEL_9:
  if ((a5 & 1) == 0)
  {
    v73 = 0;
    v74 = 0;
    v75 = 0;
    if (a6)
    {
      goto LABEL_13;
    }

LABEL_23:
    v70 = 0;
    v71 = 0;
    v72 = 0;
    goto LABEL_25;
  }

  sub_116741C(*(a1 + 16), a2, &v73);
  v18 = v73;
  for (i = v74; v18 != i; v18 += 3)
  {
    sub_100937C(a7, v18);
  }

  if (!a6)
  {
    goto LABEL_23;
  }

LABEL_13:
  sub_11676B8(a2, &v70);
  v20 = v70;
  v19 = v71;
  if (v70 != v71)
  {
    do
    {
      sub_100937C(a8, v20);
      v20 += 3;
    }

    while (v20 != v19);
    v20 = v70;
    v19 = v71;
  }

  if (v20 != v19)
  {
    sub_F6BA80(a2, 0);
    v20 = v70;
    v19 = v71;
  }

  if (v20 != v19)
  {
    while (*(*v20[1] + 464 * v20[2] + 352) != 1)
    {
      v20 += 3;
      if (v20 == v19)
      {
        goto LABEL_25;
      }
    }

    sub_F6BA80(a2, 1);
  }

LABEL_25:
  if (a5)
  {
    v55 = v15;
    sub_1163BD4(__p);
    v22 = *(&v66 + 1);
    v21 = v67;
    v24 = (a1 + 8);
    v23 = *(a1 + 8);
    *(v23 + 1474) = 1;
    if (v22 == v21)
    {
      v25 = 0;
    }

    else
    {
      v25 = 0;
      do
      {
        *(v23 + 1474) = 1;
        sub_100974C(v23 + 1560, 1);
        v27 = sub_100A224((v23 + 1560), v22);
        if (v27 == -1)
        {
          sub_100A434((v23 + 1560), v22, v26, &v59);
        }

        v25 |= v27 == -1;
        v22 += 11;
      }

      while (v22 != v21);
    }

    LOBYTE(v15) = v55;
  }

  else
  {
    v25 = 0;
    v69 = 0;
    v67 = 0u;
    *v68 = 0u;
    *__p = 0u;
    v66 = 0u;
    v24 = (a1 + 8);
    *(*(a1 + 8) + 1474) = 1;
  }

  v28 = sub_394BD0();
  sub_1167DD0(&v59);
  if (v59 != v60 || v61 != v62 || v63 != v64)
  {
    sub_F6BA80(a2, 3);
  }

  if (a5)
  {
    sub_43EDEC(&v56);
    if (v56 != v57)
    {
      sub_F6BA80(a2, 2);
    }

    v29 = v15 | v25 | v28;
    v30 = v73;
    v31 = v74;
    if (v73 != v74)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v29 = v15 | v25 | v28;
    v30 = v73;
    v31 = v74;
    if (v73 != v74)
    {
      goto LABEL_48;
    }
  }

  if (__p[0] == __p[1] && *(&v66 + 1) == v67 && v68[0] == v68[1])
  {
    v47 = sub_FF7C74(*v24, &v59);
    v48 = *v24;
    *(*v24 + 1474) = 1;
    v49 = v61;
    v50 = v62;
    if (v61 == v62)
    {
      v51 = 0;
    }

    else
    {
      v51 = 0;
      do
      {
        *(v48 + 1474) = 1;
        sub_100974C(v48 + 1560, 1);
        v53 = sub_100A224((v48 + 1560), v49);
        if (v53 == -1)
        {
          sub_100A434((v48 + 1560), v49, v52, v76);
        }

        v51 |= v53 == -1;
        v49 += 11;
      }

      while (v49 != v50);
    }

    v54 = sub_394BD0();
    v30 = v73;
    v31 = v74;
    v32 = v29 & 1;
    if ((v47 | v51 | v54))
    {
      goto LABEL_51;
    }

    goto LABEL_52;
  }

LABEL_48:
  if (v59 != v60 || v61 != v62)
  {
    v32 = v29 & 1;
LABEL_51:
    v32 |= 2uLL;
    goto LABEL_52;
  }

  v32 = v29 & 1;
  if (v63 != v64)
  {
    goto LABEL_51;
  }

LABEL_52:
  if (v30 == v31)
  {
    v33 = v32;
  }

  else
  {
    v33 = v32 | 4;
  }

  if (__p[0] != __p[1] || *(&v66 + 1) != v67 || v68[0] != v68[1])
  {
    v33 |= 8uLL;
  }

  if (v56)
  {
    v57 = v56;
    operator delete(v56);
  }

  v34 = v63;
  if (v63)
  {
    v35 = v64;
    v36 = v63;
    if (v64 != v63)
    {
      v37 = v64;
      do
      {
        v39 = *(v37 - 3);
        v37 -= 24;
        v38 = v39;
        if (v39)
        {
          *(v35 - 2) = v38;
          operator delete(v38);
        }

        v35 = v37;
      }

      while (v37 != v34);
      v36 = v63;
    }

    v64 = v34;
    operator delete(v36);
  }

  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }

  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }

  v40 = v68[0];
  if (v68[0])
  {
    v41 = v68[1];
    v42 = v68[0];
    if (v68[1] != v68[0])
    {
      v43 = v68[1];
      do
      {
        v45 = *(v43 - 3);
        v43 -= 24;
        v44 = v45;
        if (v45)
        {
          *(v41 - 2) = v44;
          operator delete(v44);
        }

        v41 = v43;
      }

      while (v43 != v40);
      v42 = v68[0];
    }

    v68[1] = v40;
    operator delete(v42);
  }

  if (*(&v66 + 1))
  {
    *&v67 = *(&v66 + 1);
    operator delete(*(&v66 + 1));
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }

  if (v73)
  {
    v74 = v73;
    operator delete(v73);
  }

  return v33;
}

void sub_FF7BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_4266B8(&a16);
  sub_4266B8(&a25);
  v28 = *(v26 - 168);
  if (v28)
  {
    *(v26 - 160) = v28;
    operator delete(v28);
  }

  v29 = *(v26 - 144);
  if (v29)
  {
    *(v26 - 136) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_FF7C74(uint64_t a1, uint64_t **a2)
{
  *(a1 + 1474) = 1;
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      *(a1 + 1474) = 1;
      sub_100AF38(a1 + 1480, 1);
      v6 = sub_100B6E4(a1 + 1480, v2);
      if (v6 == -1)
      {
        v8 = *(a1 + 1528);
        v9 = *(a1 + 1520);
        if ((v8 - v9) >= 0x1FFFFFFFFFFFFFFFLL)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          sub_195A000(exception, "insert overflow");
        }

        v10 = *(a1 + 1552);
        if (v9 && (*(a1 + 1512) == *(v10 + 8 * v7) ? (v11 = *(a1 + 1516) == *(v10 + 8 * v7 + 4)) : (v11 = 0), v11))
        {
          *(a1 + 1520) = v9 - 1;
        }

        else
        {
          *(a1 + 1528) = v8 + 1;
        }

        *(v10 + 8 * v7) = *v2;
      }

      v5 |= v6 == -1;
      ++v2;
    }

    while (v2 != v3);
  }

  return v5 & 1;
}

void sub_FF7FA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FF7FCC()
{
  v0 = __chkstk_darwin();
  sub_CDC918(v0[1]);
  v2 = v0 + 18;
  v1 = v0[18];
  v0[17] = 0;
  if (v1)
  {
    v0[19] = v1;
    operator delete(v1);
    *v2 = 0;
    v0[19] = 0;
    v0[20] = 0;
  }

  *v2 = 0;
  v0[19] = 0;
  v0[20] = 0;
  sub_1172ACC(&v3, *v0);
}

void sub_FF9224(_Unwind_Exception *a1)
{
  sub_487EC4(&STACK[0x328]);
  sub_487EC4(v1);
  v3 = STACK[0x378];
  if (STACK[0x378])
  {
    STACK[0x380] = v3;
    operator delete(v3);
  }

  sub_404134(&STACK[0x390]);
  _Unwind_Resume(a1);
}

uint64_t sub_FF9338(uint64_t a1, void *a2)
{
  v2 = a2[1];
  if (*a2 != v2)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0xF128CFC4A33F128DLL * ((v2 - *a2) >> 3);
    while (1)
    {
      v9 = (*a2 + 552 * v6);
      if (v6)
      {
        sub_1163BE8(v9, &__p);
        v10 = __p;
        if (__p != v18)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_11695C0(*(a1 + 16), v9, &__p);
        v10 = __p;
        if (__p != v18)
        {
LABEL_8:
          v11 = sub_F8F510(*(a1 + 8) + 8, &__p);
          v10 = __p;
          if (__p)
          {
            goto LABEL_12;
          }

          goto LABEL_5;
        }
      }

      v11 = 0;
      if (v10)
      {
LABEL_12:
        v12 = v18;
        v8 = v10;
        if (v18 != v10)
        {
          v13 = v18;
          do
          {
            v15 = *(v13 - 3);
            v13 -= 24;
            v14 = v15;
            if (v15)
            {
              *(v12 - 2) = v14;
              operator delete(v14);
            }

            v12 = v13;
          }

          while (v13 != v10);
          v8 = __p;
        }

        v18 = v10;
        operator delete(v8);
      }

LABEL_5:
      v5 |= v11;
      if (++v6 == v7)
      {
        return v5 & 1;
      }
    }
  }

  v5 = 0;
  return v5 & 1;
}

void sub_FF9474(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_FF9488(uint64_t a1, __int128 *a2, int a3, int a4)
{
  sub_116CFDC(a1, a2, a3, a4, &__p);
  v4 = v11;
  if (v11)
  {
    do
    {
      v6 = *v4;
      v7 = v4[8];
      if (v7)
      {
        do
        {
          v8 = *v7;
          operator delete(v7);
          v7 = v8;
        }

        while (v8);
      }

      v9 = v4[6];
      v4[6] = 0;
      if (v9)
      {
        operator delete(v9);
      }

      operator delete(v4);
      v4 = v6;
    }

    while (v6);
  }

  v5 = __p;
  __p = 0;
  if (v5)
  {
    operator delete(v5);
  }
}

void sub_FF9514()
{
  v0 = __chkstk_darwin();
  sub_CDC918(v0[1]);
  v2 = v0 + 18;
  v1 = v0[18];
  v0[17] = 0;
  if (v1)
  {
    v0[19] = v1;
    operator delete(v1);
    *v2 = 0;
    v0[19] = 0;
    v0[20] = 0;
  }

  *v2 = 0;
  v0[19] = 0;
  v0[20] = 0;
  sub_1172ACC(&v3, *v0);
}

void sub_FFA76C(_Unwind_Exception *a1)
{
  sub_487EC4(&STACK[0x328]);
  sub_487EC4(v1);
  v3 = STACK[0x378];
  if (STACK[0x378])
  {
    STACK[0x380] = v3;
    operator delete(v3);
  }

  sub_404134(&STACK[0x390]);
  _Unwind_Resume(a1);
}

void sub_FFA880()
{
  v0 = __chkstk_darwin();
  sub_CDC918(v0[1]);
  v2 = v0 + 18;
  v1 = v0[18];
  v0[17] = 0;
  if (v1)
  {
    v0[19] = v1;
    operator delete(v1);
    *v2 = 0;
    v0[19] = 0;
    v0[20] = 0;
  }

  *v2 = 0;
  v0[19] = 0;
  v0[20] = 0;
  sub_1172ACC(&v3, *v0);
}

void sub_FFBAD8(_Unwind_Exception *a1)
{
  sub_487EC4(&STACK[0x328]);
  sub_487EC4(v1);
  v3 = STACK[0x378];
  if (STACK[0x378])
  {
    STACK[0x380] = v3;
    operator delete(v3);
  }

  sub_404134(&STACK[0x390]);
  _Unwind_Resume(a1);
}

void sub_FFBBEC()
{
  v0 = __chkstk_darwin();
  sub_FF68E4(v0[1]);
  v2 = v0 + 18;
  v1 = v0[18];
  v0[17] = 0;
  if (v1)
  {
    v0[19] = v1;
    operator delete(v1);
    *v2 = 0;
    v0[19] = 0;
    v0[20] = 0;
  }

  *v2 = 0;
  v0[19] = 0;
  v0[20] = 0;
  sub_1173BD8(&v3, *v0);
}

void sub_FFD088(_Unwind_Exception *a1)
{
  sub_487EC4(&STACK[0x338]);
  sub_487EC4(v1);
  if (LOBYTE(STACK[0x1860]) == 1)
  {
    sub_3E3DF0(&STACK[0x3A0]);
  }

  sub_404134(&STACK[0x1880]);
  _Unwind_Resume(a1);
}

void sub_FFD1F8(uint64_t a1, void *a2, int a3, int a4)
{
  sub_116EB98(a1, a2, a3, a4, &__p);
  v4 = v11;
  if (v11)
  {
    do
    {
      v6 = *v4;
      v7 = v4[8];
      if (v7)
      {
        do
        {
          v8 = *v7;
          operator delete(v7);
          v7 = v8;
        }

        while (v8);
      }

      v9 = v4[6];
      v4[6] = 0;
      if (v9)
      {
        operator delete(v9);
      }

      operator delete(v4);
      v4 = v6;
    }

    while (v6);
  }

  v5 = __p;
  __p = 0;
  if (v5)
  {
    operator delete(v5);
  }
}

void sub_FFD284()
{
  v0 = __chkstk_darwin();
  sub_FF68E4(v0[1]);
  v2 = v0 + 18;
  v1 = v0[18];
  v0[17] = 0;
  if (v1)
  {
    v0[19] = v1;
    operator delete(v1);
    *v2 = 0;
    v0[19] = 0;
    v0[20] = 0;
  }

  *v2 = 0;
  v0[19] = 0;
  v0[20] = 0;
  sub_1173BD8(&v3, *v0);
}

void sub_FFE720(_Unwind_Exception *a1)
{
  sub_487EC4(&STACK[0x338]);
  sub_487EC4(v1);
  if (LOBYTE(STACK[0x1860]) == 1)
  {
    sub_3E3DF0(&STACK[0x3A0]);
  }

  sub_404134(&STACK[0x1880]);
  _Unwind_Resume(a1);
}

void sub_FFE890()
{
  v0 = __chkstk_darwin();
  sub_FF68E4(v0[1]);
  v2 = v0 + 18;
  v1 = v0[18];
  v0[17] = 0;
  if (v1)
  {
    v0[19] = v1;
    operator delete(v1);
    *v2 = 0;
    v0[19] = 0;
    v0[20] = 0;
  }

  *v2 = 0;
  v0[19] = 0;
  v0[20] = 0;
  sub_1173BD8(&v3, *v0);
}

void sub_FFFD2C(_Unwind_Exception *a1)
{
  sub_487EC4(&STACK[0x338]);
  sub_487EC4(v1);
  if (LOBYTE(STACK[0x1860]) == 1)
  {
    sub_3E3DF0(&STACK[0x3A0]);
  }

  sub_404134(&STACK[0x1880]);
  _Unwind_Resume(a1);
}

void sub_FFFE9C()
{
  v0 = __chkstk_darwin();
  sub_FF68E4(v0[1]);
  v2 = v0 + 18;
  v1 = v0[18];
  v0[17] = 0;
  if (v1)
  {
    v0[19] = v1;
    operator delete(v1);
    v2 = v0 + 18;
    v0[18] = 0;
    v0[19] = 0;
    v0[20] = 0;
  }

  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  sub_1173BD8(&v3, *v0);
}

void sub_1001190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void ***a17)
{
  sub_CDCD6C(&STACK[0x310]);
  sub_CDCD6C(a17);
  if (LOBYTE(STACK[0x1838]) == 1)
  {
    sub_3E3DF0(&STACK[0x378]);
  }

  sub_404134(&STACK[0x1858]);
  _Unwind_Resume(a1);
}

void sub_10012E8(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void **a5@<X8>)
{
  sub_D58FB0(a1[1]);
  v9 = a1 + 18;
  v8 = a1[18];
  a1[17] = 0;
  if (v8)
  {
    a1[19] = v8;
    operator delete(v8);
    *v9 = 0;
    a1[19] = 0;
    a1[20] = 0;
  }

  *v9 = 0;
  a1[19] = 0;
  a1[20] = 0;
  sub_1174DA0(v213, *a1);
  sub_1011FA4(v212, *a1);
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v210 = 0;
  v209 = 0;
  v211 = 0;
  if (*(a4 + 16) == 0x7FFFFFFFFFFFFFFFLL || *(a1 + 72) != 1)
  {
    v10 = 1;
    v158 = a5;
    if (!*a4)
    {
      goto LABEL_6;
    }

    goto LABEL_8;
  }

  v10 = 1;
  v158 = a5;
  if (*a4)
  {
LABEL_8:
    v155 = 0;
    v11 = 0;
    v12 = 1;
    v13 = 1;
    v157 = a2;
    while (1)
    {
      if (sub_FBF428(a2))
      {
        v15 = *a5;
        v14 = a5[1];
        if (v14 != *a5)
        {
          do
          {
            v14 = sub_4547F0(v14 - 552);
          }

          while (v14 != v15);
        }

        a5[1] = v15;
      }

      if (v13)
      {
        v16 = v210;
        v17 = v209;
        if (v210 != v209)
        {
          do
          {
            v16 = sub_4547F0((v16 - 552));
          }

          while (v16 != v17);
        }

        v210 = v17;
      }

      sub_100C658();
      v153 = v13;
      v18 = sub_FBF438(a2);
      sub_2512DC(v9, v18);
      v154 = v11;
      v19 = v208[1];
      v20 = v208[0];
      v21 = v155;
      if (v12)
      {
        v21 = v208[0] != v208[1];
      }

      v155 = v21;
      *v205 = 0u;
      *v206 = 0u;
      v207 = 1065353216;
      *v202 = 0u;
      *v203 = 0u;
      v204 = 1065353216;
      if (v208[0] != v208[1])
      {
        break;
      }

      v23 = 0;
      v22 = 0;
      v70 = v203[0];
      if (v203[0])
      {
        do
        {
LABEL_107:
          v97 = a1[1];
          *(v97 + 1474) = 1;
          sub_100AF38((v97 + 185), 1);
          v98 = sub_100B6E4((v97 + 185), v70 + 2);
          if (v98 == -1)
          {
            v100 = v97[191];
            v101 = v97[190];
            if ((v100 - v101) >= 0x1FFFFFFFFFFFFFFFLL)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(exception, "insert overflow");
            }

            v102 = v97[194];
            if (v101 && (*(v97 + 378) == *(v102 + 8 * v99) ? (v103 = *(v97 + 379) == *(v102 + 8 * v99 + 4)) : (v103 = 0), v103))
            {
              v97[190] = v101 - 1;
            }

            else
            {
              v97[191] = v100 + 1;
            }

            *(v102 + 8 * v99) = v70[2];
          }

          v22 |= v98 == -1;
          v70 = *v70;
        }

        while (v70);
        v104 = v203[0];
        v96 = v209 == v210;
        if (v203[0])
        {
          do
          {
            v105 = *v104;
            operator delete(v104);
            v104 = v105;
          }

          while (v105);
        }

        goto LABEL_118;
      }

LABEL_103:
      v96 = v209 == v210;
LABEL_118:
      v106 = v202[0];
      v202[0] = 0;
      if (v106)
      {
        operator delete(v106);
      }

      v107 = v206[0];
      if (v206[0])
      {
        do
        {
          v108 = *v107;
          operator delete(v107);
          v107 = v108;
        }

        while (v108);
      }

      v109 = v205[0];
      v205[0] = 0;
      if (v109)
      {
        operator delete(v109);
      }

      v110 = v208[0];
      if (v208[0])
      {
        v111 = v208[1];
        v112 = v208[0];
        if (v208[1] != v208[0])
        {
          do
          {
            v111 = sub_4547F0(v111 - 552);
          }

          while (v111 != v110);
          v112 = v208[0];
        }

        v208[1] = v110;
        operator delete(v112);
      }

      v113 = *a4;
      if (((v22 | v23) & 1) == 0)
      {
        a2 = v157;
        v11 = v154;
        v9 = a1 + 18;
        v10 = !v155;
        if (v154 < v113)
        {
          goto LABEL_136;
        }

        goto LABEL_133;
      }

      v12 = 0;
      v13 = (v22 | v96) & v153;
      v11 = v154 + 1;
      a2 = v157;
      v9 = a1 + 18;
      if (v154 + 1 >= v113)
      {
        v10 = !v155;
        goto LABEL_133;
      }
    }

    v22 = 0;
    v23 = 0;
    do
    {
      v42 = sub_3B6890(*a1);
      v43 = sub_FF7610(a1, v20, v212, v42, *(a4 + 4), *(a4 + 5), v205, v202);
      if ((v43 & 0xC) != 0)
      {
        if (sub_FBF428(v157))
        {
          sub_F6EB3C(v162);
          v44 = a5[1];
          if (v44 >= a5[2])
          {
            v63 = sub_D59894(a5, v162);
            v64 = __p;
            a5[1] = v63;
            if (v64)
            {
              *(&__p + 1) = v64;
              operator delete(v64);
            }
          }

          else
          {
            v45 = *v162;
            *(v44 + 2) = v163;
            *(v44 + 3) = 0;
            *v44 = v45;
            v162[1] = 0;
            v163 = 0;
            v162[0] = 0;
            *(v44 + 4) = 0;
            *(v44 + 5) = 0;
            *(v44 + 24) = *v164;
            *(v44 + 5) = v165;
            v164[0] = 0;
            v164[1] = 0;
            v165 = 0;
            v46 = v166;
            v47 = v168;
            v48 = v169;
            *(v44 + 4) = v167;
            *(v44 + 5) = v47;
            *(v44 + 3) = v46;
            *(v44 + 12) = v48;
            *(v44 + 13) = 0;
            *(v44 + 14) = 0;
            *(v44 + 15) = 0;
            *(v44 + 104) = v170;
            v170 = 0uLL;
            *(v44 + 15) = v171;
            *(v44 + 16) = 0;
            *(v44 + 17) = 0;
            *(v44 + 18) = 0;
            *(v44 + 8) = v172;
            *(v44 + 18) = v173;
            *(v44 + 19) = 0;
            v171 = 0;
            v172 = 0uLL;
            v173 = 0;
            *(v44 + 20) = 0;
            *(v44 + 21) = 0;
            *(v44 + 152) = v174;
            *(v44 + 21) = v175;
            v174 = 0uLL;
            v175 = 0;
            v49 = v177;
            v50 = v178;
            *(v44 + 11) = v176;
            *(v44 + 12) = v49;
            *(v44 + 26) = v50;
            *(v44 + 27) = 0;
            *(v44 + 28) = 0;
            *(v44 + 29) = 0;
            *(v44 + 216) = v179;
            v179 = 0uLL;
            *(v44 + 29) = v180;
            *(v44 + 30) = 0;
            *(v44 + 31) = 0;
            *(v44 + 32) = 0;
            *(v44 + 15) = v181;
            *(v44 + 32) = v182;
            v180 = 0;
            v181 = 0uLL;
            v182 = 0;
            v51 = v183;
            v52 = v185;
            *(v44 + 280) = v184;
            *(v44 + 296) = v52;
            *(v44 + 264) = v51;
            v53 = v186;
            v54 = v187;
            v55 = v189;
            *(v44 + 344) = v188;
            *(v44 + 360) = v55;
            *(v44 + 312) = v53;
            *(v44 + 328) = v54;
            v56 = v190;
            v57 = v191;
            v58 = v193;
            *(v44 + 408) = v192;
            *(v44 + 424) = v58;
            *(v44 + 376) = v56;
            *(v44 + 392) = v57;
            v59 = v194;
            v60 = v195;
            v61 = v197;
            *(v44 + 472) = v196;
            *(v44 + 488) = v61;
            *(v44 + 440) = v59;
            *(v44 + 456) = v60;
            *(v44 + 63) = v198;
            *(v44 + 32) = v199;
            v198 = 0;
            v199 = 0uLL;
            *(v44 + 66) = 0;
            *(v44 + 68) = 0;
            *(v44 + 67) = 0;
            *(v44 + 33) = __p;
            *(v44 + 68) = v201;
            __p = 0uLL;
            v201 = 0;
            a5[1] = v44 + 552;
          }

          if (v198)
          {
            operator delete(v198);
          }

          if (v181)
          {
            *(&v181 + 1) = v181;
            operator delete(v181);
          }

          if (v179)
          {
            *(&v179 + 1) = v179;
            operator delete(v179);
          }

          if (v174)
          {
            *(&v174 + 1) = v174;
            operator delete(v174);
          }

          if (v172)
          {
            *(&v172 + 1) = v172;
            operator delete(v172);
          }

          v65 = v170;
          if (v170)
          {
            v66 = *(&v170 + 1);
            v67 = v170;
            if (*(&v170 + 1) != v170)
            {
              do
              {
                v68 = *(v66 - 24);
                if (v68)
                {
                  *(v66 - 16) = v68;
                  operator delete(v68);
                }

                v66 -= 56;
              }

              while (v66 != v65);
              v67 = v170;
            }

            *(&v170 + 1) = v65;
            operator delete(v67);
          }

          if (v164[0])
          {
            v164[1] = v164[0];
            operator delete(v164[0]);
          }

          a5 = v158;
          if (SHIBYTE(v163) < 0)
          {
            operator delete(v162[0]);
          }
        }
      }

      else
      {
        sub_1174DA4(v213, v20, *(a3 + 32));
        v62 = a5[1];
        if (v62 < a5[2])
        {
          v24 = *v20;
          *(v62 + 2) = *(v20 + 2);
          *v62 = v24;
          *(v20 + 8) = 0u;
          *v20 = 0;
          *(v62 + 5) = 0;
          *(v62 + 24) = 0u;
          *(v62 + 24) = *(v20 + 24);
          *(v62 + 5) = *(v20 + 5);
          *(v20 + 5) = 0;
          *(v20 + 24) = 0u;
          v25 = *(v20 + 3);
          v26 = *(v20 + 5);
          v27 = *(v20 + 12);
          *(v62 + 4) = *(v20 + 4);
          *(v62 + 5) = v26;
          *(v62 + 3) = v25;
          *(v62 + 12) = v27;
          *(v62 + 13) = 0;
          *(v62 + 7) = 0u;
          *(v62 + 104) = *(v20 + 104);
          *(v62 + 15) = *(v20 + 15);
          *(v20 + 15) = 0;
          *(v20 + 104) = 0u;
          *(v62 + 18) = 0;
          *(v62 + 8) = 0u;
          *(v62 + 8) = *(v20 + 8);
          *(v62 + 18) = *(v20 + 18);
          *(v20 + 18) = 0;
          *(v20 + 8) = 0u;
          *(v62 + 21) = 0;
          *(v62 + 152) = 0u;
          *(v62 + 152) = *(v20 + 152);
          *(v62 + 21) = *(v20 + 21);
          *(v20 + 21) = 0;
          *(v20 + 152) = 0u;
          v28 = *(v20 + 12);
          v29 = *(v20 + 26);
          *(v62 + 11) = *(v20 + 11);
          *(v62 + 12) = v28;
          *(v62 + 26) = v29;
          *(v62 + 27) = 0;
          *(v62 + 14) = 0u;
          *(v62 + 216) = *(v20 + 216);
          *(v62 + 29) = *(v20 + 29);
          *(v20 + 29) = 0;
          *(v20 + 216) = 0u;
          *(v62 + 32) = 0;
          *(v62 + 15) = 0u;
          *(v62 + 15) = *(v20 + 15);
          *(v62 + 32) = *(v20 + 32);
          *(v20 + 32) = 0;
          *(v20 + 15) = 0u;
          v30 = *(v20 + 264);
          v31 = *(v20 + 296);
          *(v62 + 280) = *(v20 + 280);
          *(v62 + 296) = v31;
          *(v62 + 264) = v30;
          v32 = *(v20 + 424);
          v34 = *(v20 + 376);
          v33 = *(v20 + 392);
          *(v62 + 408) = *(v20 + 408);
          *(v62 + 424) = v32;
          *(v62 + 376) = v34;
          *(v62 + 392) = v33;
          v35 = *(v20 + 488);
          v37 = *(v20 + 440);
          v36 = *(v20 + 456);
          *(v62 + 472) = *(v20 + 472);
          *(v62 + 488) = v35;
          *(v62 + 440) = v37;
          *(v62 + 456) = v36;
          v38 = *(v20 + 312);
          v39 = *(v20 + 328);
          v40 = *(v20 + 360);
          *(v62 + 344) = *(v20 + 344);
          *(v62 + 360) = v40;
          *(v62 + 312) = v38;
          *(v62 + 328) = v39;
          *(v62 + 63) = *(v20 + 63);
          *(v62 + 32) = *(v20 + 32);
          *(v20 + 65) = 0;
          *(v20 + 504) = 0u;
          *(v62 + 68) = 0;
          *(v62 + 33) = 0u;
          *(v62 + 33) = *(v20 + 33);
          *(v62 + 68) = *(v20 + 68);
          *(v20 + 68) = 0;
          *(v20 + 33) = 0u;
          v41 = (v62 + 552);
        }

        else
        {
          v41 = sub_D59894(a5, v20);
        }

        a5[1] = v41;
      }

      v22 |= v43;
      v23 |= (v43 >> 1) & 1;
      v20 += 552;
    }

    while (v20 != v19);
    v69 = v206[0];
    if (!v206[0])
    {
LABEL_55:
      v70 = v203[0];
      if (v203[0])
      {
        goto LABEL_107;
      }

      goto LABEL_103;
    }

    while (1)
    {
      v71 = a1[1];
      *(v71 + 1474) = 1;
      sub_100AF38((v71 + 185), 1);
      v72 = sub_100B6E4((v71 + 185), v69 + 2);
      if (v72 == -1)
      {
        v74 = v71[191];
        v75 = v71[190];
        if ((v74 - v75) >= 0x1FFFFFFFFFFFFFFFLL)
        {
          v152 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v152, "insert overflow");
        }

        v76 = v71[194];
        if (v75 && (*(v71 + 378) == *(v76 + 8 * v73) ? (v77 = *(v71 + 379) == *(v76 + 8 * v73 + 4)) : (v77 = 0), v77))
        {
          v71[190] = v75 - 1;
        }

        else
        {
          v71[191] = v74 + 1;
        }

        *(v76 + 8 * v73) = *(v69 + 2);
      }

      v78 = v72 == -1;
      v160 = *(v69 + 24);
      v161 = 0;
      sub_4C2A78(&v160, v162);
      if (sub_4C2B70(v162))
      {
        break;
      }

      if (sub_4C2B80(v162))
      {
        v79 = sub_4C2BC4(v162);
        goto LABEL_72;
      }

      if (sub_4C2B90(v162))
      {
        v84 = *(sub_4C2C1C(v162) + 8);
      }

      else
      {
        v84 = 0;
      }

LABEL_73:
      v85 = a1[13];
      if (v85)
      {
        v86 = vcnt_s8(v85);
        v86.i16[0] = vaddlv_u8(v86);
        if (v86.u32[0] > 1uLL)
        {
          v87 = v84;
          if (v84 >= *&v85)
          {
            v87 = v84 % *&v85;
          }
        }

        else
        {
          v87 = (*&v85 - 1) & v84;
        }

        v88 = a1[12][v87];
        if (v88)
        {
          v89 = *v88;
          if (*v88)
          {
            if (v86.u32[0] < 2uLL)
            {
              v90 = *&v85 - 1;
              while (1)
              {
                v92 = v89[1];
                if (v92 == v84)
                {
                  if (sub_4C2D38((v89 + 2), v162))
                  {
                    goto LABEL_93;
                  }
                }

                else if ((v92 & v90) != v87)
                {
                  goto LABEL_94;
                }

                v89 = *v89;
                if (!v89)
                {
                  goto LABEL_94;
                }
              }
            }

            do
            {
              v91 = v89[1];
              if (v91 == v84)
              {
                if (sub_4C2D38((v89 + 2), v162))
                {
LABEL_93:
                  a5 = v158;
                  sub_4C2D98(v89 + 2, v162);
                  goto LABEL_95;
                }
              }

              else
              {
                if (v91 >= *&v85)
                {
                  v91 %= *&v85;
                }

                if (v91 != v87)
                {
                  break;
                }
              }

              v89 = *v89;
            }

            while (v89);
          }
        }
      }

LABEL_94:
      a5 = v158;
      sub_D3B9CC(a1 + 12, v162);
LABEL_95:
      v93 = v166;
      if (v166)
      {
        do
        {
          v94 = *v93;
          operator delete(v93);
          v93 = v94;
        }

        while (v94);
      }

      v95 = v164[1];
      v164[1] = 0;
      if (v95)
      {
        operator delete(v95);
      }

      v22 |= v78;
      v69 = *v69;
      if (!v69)
      {
        goto LABEL_55;
      }
    }

    v79 = sub_4C2BA0(v162);
LABEL_72:
    v81 = 0x9DDFEA08EB382D69 * ((8 * (v79 & 0x1FFFFFFF) + 8) ^ HIDWORD(v79));
    v82 = 0x9DDFEA08EB382D69 * (HIDWORD(v79) ^ (v81 >> 47) ^ v81);
    v83 = (0x9DDFEA08EB382D69 * (v82 ^ (v82 >> 47)) + 0x388152A534) ^ 0xDEADBEEF;
    v84 = (v80 + 2654435769 + (v83 << 6) + (v83 >> 2)) ^ v83;
    goto LABEL_73;
  }

LABEL_6:
  v11 = 0;
LABEL_133:
  if (v209 != v210 && &v209 != a5)
  {
    sub_DFA7E4(a5, v209, v210, 0xF128CFC4A33F128DLL * ((v210 - v209) >> 3));
  }

LABEL_136:
  if (((sub_FBF430(a2) | v10) & 1) != 0 || *(a1[3] + 8712) != 1)
  {
    goto LABEL_164;
  }

  v116 = *a5;
  v115 = a5[1];
  if (*a5 == v115)
  {
LABEL_144:
    if (sub_FBF428(a2))
    {
      v118 = *a5;
      v117 = a5[1];
      if (v117 != *a5)
      {
        do
        {
          v117 = sub_4547F0(v117 - 552);
        }

        while (v117 != v118);
      }

      a5[1] = v118;
    }

    sub_D58FB0(a1[1]);
    sub_100C658();
    v119 = sub_FBF438(a2);
    sub_2512DC(v9, v119);
    v121 = v162[0];
    v120 = v162[1];
    if (v162[0] == v162[1])
    {
      if (!v162[0])
      {
LABEL_163:
        a5 = v158;
        goto LABEL_164;
      }
    }

    else
    {
      do
      {
        sub_10023F4(a1[3], v121, *(a4 + 7), *(a4 + 8));
        if (!sub_F6FDC8(v121) || sub_FBF428(a2))
        {
          v140 = v158[1];
          if (v140 < v158[2])
          {
            v122 = *v121;
            *(v140 + 16) = *(v121 + 2);
            *v140 = v122;
            *(v121 + 8) = 0u;
            *v121 = 0;
            *(v140 + 40) = 0;
            *(v140 + 24) = 0u;
            *(v140 + 24) = *(v121 + 24);
            *(v140 + 40) = *(v121 + 5);
            *(v121 + 5) = 0;
            *(v121 + 24) = 0u;
            v123 = v121[3];
            v124 = v121[5];
            v125 = *(v121 + 12);
            *(v140 + 64) = v121[4];
            *(v140 + 80) = v124;
            *(v140 + 48) = v123;
            *(v140 + 96) = v125;
            *(v140 + 104) = 0;
            *(v140 + 112) = 0u;
            *(v140 + 104) = *(v121 + 104);
            *(v140 + 120) = *(v121 + 15);
            *(v121 + 15) = 0;
            *(v121 + 104) = 0u;
            *(v140 + 144) = 0;
            *(v140 + 128) = 0u;
            *(v140 + 128) = v121[8];
            *(v140 + 144) = *(v121 + 18);
            *(v121 + 18) = 0;
            v121[8] = 0u;
            *(v140 + 168) = 0;
            *(v140 + 152) = 0u;
            *(v140 + 152) = *(v121 + 152);
            *(v140 + 168) = *(v121 + 21);
            *(v121 + 21) = 0;
            *(v121 + 152) = 0u;
            v126 = v121[12];
            v127 = *(v121 + 26);
            *(v140 + 176) = v121[11];
            *(v140 + 192) = v126;
            *(v140 + 208) = v127;
            *(v140 + 216) = 0;
            *(v140 + 224) = 0u;
            *(v140 + 216) = *(v121 + 216);
            *(v140 + 232) = *(v121 + 29);
            *(v121 + 29) = 0;
            *(v121 + 216) = 0u;
            *(v140 + 256) = 0;
            *(v140 + 240) = 0u;
            *(v140 + 240) = v121[15];
            *(v140 + 256) = *(v121 + 32);
            *(v121 + 32) = 0;
            v121[15] = 0u;
            v128 = *(v121 + 264);
            v129 = *(v121 + 296);
            *(v140 + 280) = *(v121 + 280);
            *(v140 + 296) = v129;
            *(v140 + 264) = v128;
            v130 = *(v121 + 424);
            v132 = *(v121 + 376);
            v131 = *(v121 + 392);
            *(v140 + 408) = *(v121 + 408);
            *(v140 + 424) = v130;
            *(v140 + 376) = v132;
            *(v140 + 392) = v131;
            v133 = *(v121 + 488);
            v135 = *(v121 + 440);
            v134 = *(v121 + 456);
            *(v140 + 472) = *(v121 + 472);
            *(v140 + 488) = v133;
            *(v140 + 440) = v135;
            *(v140 + 456) = v134;
            v136 = *(v121 + 312);
            v137 = *(v121 + 328);
            v138 = *(v121 + 360);
            *(v140 + 344) = *(v121 + 344);
            *(v140 + 360) = v138;
            *(v140 + 312) = v136;
            *(v140 + 328) = v137;
            *(v140 + 504) = *(v121 + 63);
            *(v140 + 512) = v121[32];
            *(v121 + 65) = 0;
            *(v121 + 504) = 0u;
            *(v140 + 544) = 0;
            *(v140 + 528) = 0u;
            v114 = v121[33];
            *(v140 + 528) = v114;
            *(v140 + 544) = *(v121 + 68);
            *(v121 + 68) = 0;
            v121[33] = 0u;
            v139 = v140 + 552;
          }

          else
          {
            v139 = sub_D59894(v158, v121);
          }

          v158[1] = v139;
        }

        v121 = (v121 + 552);
      }

      while (v121 != v120);
      v121 = v162[0];
      if (!v162[0])
      {
        goto LABEL_163;
      }
    }

    v141 = v162[1];
    v142 = v121;
    if (v162[1] != v121)
    {
      do
      {
        v141 = sub_4547F0(v141 - 552);
      }

      while (v141 != v121);
      v142 = v162[0];
    }

    v162[1] = v121;
    operator delete(v142);
    goto LABEL_163;
  }

  while (1)
  {
    if (*(sub_73F1C(v116) + 40) > 0.95)
    {
      *&v114 = *(sub_F69058(v116) + 40);
      if (*&v114 > 0.95)
      {
        break;
      }
    }

    v116 += 552;
    if (v116 == v115)
    {
      goto LABEL_144;
    }
  }

LABEL_164:
  v144 = *a5;
  v143 = a5[1];
  if (*a5 != v143)
  {
    do
    {
      sub_11710F0(a1[3], v144);
      v144 += 552;
    }

    while (v144 != v143);
  }

  *(a1 + 34) = v11;
  *(a1 + 35) = sub_1084748((a1[1] + 42), *&v114);
  if ((*(a4 + 6) & 1) == 0)
  {
    sub_D58FB0(a1[1]);
  }

  sub_1161B14((a1 + 4));
  v145 = v209;
  if (v209)
  {
    v146 = v210;
    v147 = v209;
    if (v210 != v209)
    {
      do
      {
        v146 = sub_4547F0((v146 - 552));
      }

      while (v146 != v145);
      v147 = v209;
    }

    v210 = v145;
    operator delete(v147);
  }

  if (v220)
  {
    v221 = v220;
    operator delete(v220);
  }

  v148 = v219;
  if (v219)
  {
    do
    {
      v149 = *v148;
      operator delete(v148);
      v148 = v149;
    }

    while (v149);
  }

  v150 = v218;
  v218 = 0;
  if (v150)
  {
    operator delete(v150);
  }

  if (v216)
  {
    v217 = v216;
    operator delete(v216);
  }

  if (v214)
  {
    v215 = v214;
    operator delete(v214);
  }
}

void sub_1002300(_Unwind_Exception *a1)
{
  sub_487EC4(&STACK[0x320]);
  sub_487EC4(v1);
  sub_3BFA2C(&STACK[0x360]);
  _Unwind_Resume(a1);
}

void sub_10023F4(uint64_t a1, __int128 *a2, int a3, int a4)
{
  sub_1170E90(a1, a2, a3, a4, &__p);
  v4 = v11;
  if (v11)
  {
    do
    {
      v6 = *v4;
      v7 = v4[8];
      if (v7)
      {
        do
        {
          v8 = *v7;
          operator delete(v7);
          v7 = v8;
        }

        while (v8);
      }

      v9 = v4[6];
      v4[6] = 0;
      if (v9)
      {
        operator delete(v9);
      }

      operator delete(v4);
      v4 = v6;
    }

    while (v6);
  }

  v5 = __p;
  __p = 0;
  if (v5)
  {
    operator delete(v5);
  }
}

void sub_1002480(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void **a5@<X8>)
{
  sub_D58FB0(a1[1]);
  v9 = a1 + 18;
  v8 = a1[18];
  a1[17] = 0;
  if (v8)
  {
    a1[19] = v8;
    operator delete(v8);
    *v9 = 0;
    a1[19] = 0;
    a1[20] = 0;
  }

  *v9 = 0;
  a1[19] = 0;
  a1[20] = 0;
  sub_1174DA0(v213, *a1);
  sub_1011FA4(v212, *a1);
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v210 = 0;
  v209 = 0;
  v211 = 0;
  if (*(a4 + 16) == 0x7FFFFFFFFFFFFFFFLL || *(a1 + 72) != 1)
  {
    v10 = 1;
    v158 = a5;
    if (!*a4)
    {
      goto LABEL_6;
    }

    goto LABEL_8;
  }

  v10 = 1;
  v158 = a5;
  if (*a4)
  {
LABEL_8:
    v155 = 0;
    v11 = 0;
    v12 = 1;
    v13 = 1;
    v157 = a2;
    while (1)
    {
      if (sub_FBF428(a2))
      {
        v15 = *a5;
        v14 = a5[1];
        if (v14 != *a5)
        {
          do
          {
            v14 = sub_4547F0(v14 - 552);
          }

          while (v14 != v15);
        }

        a5[1] = v15;
      }

      if (v13)
      {
        v16 = v210;
        v17 = v209;
        if (v210 != v209)
        {
          do
          {
            v16 = sub_4547F0((v16 - 552));
          }

          while (v16 != v17);
        }

        v210 = v17;
      }

      sub_100D8A4(a2, a3);
      v153 = v13;
      v18 = sub_FBF438(a2);
      sub_2512DC(v9, v18);
      v154 = v11;
      v19 = v208[1];
      v20 = v208[0];
      v21 = v155;
      if (v12)
      {
        v21 = v208[0] != v208[1];
      }

      v155 = v21;
      *v205 = 0u;
      *v206 = 0u;
      v207 = 1065353216;
      *v202 = 0u;
      *v203 = 0u;
      v204 = 1065353216;
      if (v208[0] != v208[1])
      {
        break;
      }

      v23 = 0;
      v22 = 0;
      v70 = v203[0];
      if (v203[0])
      {
        do
        {
LABEL_107:
          v97 = a1[1];
          *(v97 + 1474) = 1;
          sub_100AF38((v97 + 185), 1);
          v98 = sub_100B6E4((v97 + 185), v70 + 2);
          if (v98 == -1)
          {
            v100 = v97[191];
            v101 = v97[190];
            if ((v100 - v101) >= 0x1FFFFFFFFFFFFFFFLL)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(exception, "insert overflow");
            }

            v102 = v97[194];
            if (v101 && (*(v97 + 378) == *(v102 + 8 * v99) ? (v103 = *(v97 + 379) == *(v102 + 8 * v99 + 4)) : (v103 = 0), v103))
            {
              v97[190] = v101 - 1;
            }

            else
            {
              v97[191] = v100 + 1;
            }

            *(v102 + 8 * v99) = v70[2];
          }

          v22 |= v98 == -1;
          v70 = *v70;
        }

        while (v70);
        v104 = v203[0];
        v96 = v209 == v210;
        if (v203[0])
        {
          do
          {
            v105 = *v104;
            operator delete(v104);
            v104 = v105;
          }

          while (v105);
        }

        goto LABEL_118;
      }

LABEL_103:
      v96 = v209 == v210;
LABEL_118:
      v106 = v202[0];
      v202[0] = 0;
      if (v106)
      {
        operator delete(v106);
      }

      v107 = v206[0];
      if (v206[0])
      {
        do
        {
          v108 = *v107;
          operator delete(v107);
          v107 = v108;
        }

        while (v108);
      }

      v109 = v205[0];
      v205[0] = 0;
      if (v109)
      {
        operator delete(v109);
      }

      v110 = v208[0];
      if (v208[0])
      {
        v111 = v208[1];
        v112 = v208[0];
        if (v208[1] != v208[0])
        {
          do
          {
            v111 = sub_4547F0(v111 - 552);
          }

          while (v111 != v110);
          v112 = v208[0];
        }

        v208[1] = v110;
        operator delete(v112);
      }

      v113 = *a4;
      if (((v22 | v23) & 1) == 0)
      {
        a2 = v157;
        v11 = v154;
        v9 = a1 + 18;
        v10 = !v155;
        if (v154 < v113)
        {
          goto LABEL_136;
        }

        goto LABEL_133;
      }

      v12 = 0;
      v13 = (v22 | v96) & v153;
      v11 = v154 + 1;
      a2 = v157;
      v9 = a1 + 18;
      if (v154 + 1 >= v113)
      {
        v10 = !v155;
        goto LABEL_133;
      }
    }

    v22 = 0;
    v23 = 0;
    do
    {
      v42 = sub_3B6890(*a1);
      v43 = sub_FF7610(a1, v20, v212, v42, *(a4 + 4), *(a4 + 5), v205, v202);
      if ((v43 & 0xC) != 0)
      {
        if (sub_FBF428(v157))
        {
          sub_F6EB3C(v162);
          v44 = a5[1];
          if (v44 >= a5[2])
          {
            v63 = sub_D59894(a5, v162);
            v64 = __p;
            a5[1] = v63;
            if (v64)
            {
              *(&__p + 1) = v64;
              operator delete(v64);
            }
          }

          else
          {
            v45 = *v162;
            *(v44 + 2) = v163;
            *(v44 + 3) = 0;
            *v44 = v45;
            v162[1] = 0;
            v163 = 0;
            v162[0] = 0;
            *(v44 + 4) = 0;
            *(v44 + 5) = 0;
            *(v44 + 24) = *v164;
            *(v44 + 5) = v165;
            v164[0] = 0;
            v164[1] = 0;
            v165 = 0;
            v46 = v166;
            v47 = v168;
            v48 = v169;
            *(v44 + 4) = v167;
            *(v44 + 5) = v47;
            *(v44 + 3) = v46;
            *(v44 + 12) = v48;
            *(v44 + 13) = 0;
            *(v44 + 14) = 0;
            *(v44 + 15) = 0;
            *(v44 + 104) = v170;
            v170 = 0uLL;
            *(v44 + 15) = v171;
            *(v44 + 16) = 0;
            *(v44 + 17) = 0;
            *(v44 + 18) = 0;
            *(v44 + 8) = v172;
            *(v44 + 18) = v173;
            *(v44 + 19) = 0;
            v171 = 0;
            v172 = 0uLL;
            v173 = 0;
            *(v44 + 20) = 0;
            *(v44 + 21) = 0;
            *(v44 + 152) = v174;
            *(v44 + 21) = v175;
            v174 = 0uLL;
            v175 = 0;
            v49 = v177;
            v50 = v178;
            *(v44 + 11) = v176;
            *(v44 + 12) = v49;
            *(v44 + 26) = v50;
            *(v44 + 27) = 0;
            *(v44 + 28) = 0;
            *(v44 + 29) = 0;
            *(v44 + 216) = v179;
            v179 = 0uLL;
            *(v44 + 29) = v180;
            *(v44 + 30) = 0;
            *(v44 + 31) = 0;
            *(v44 + 32) = 0;
            *(v44 + 15) = v181;
            *(v44 + 32) = v182;
            v180 = 0;
            v181 = 0uLL;
            v182 = 0;
            v51 = v183;
            v52 = v185;
            *(v44 + 280) = v184;
            *(v44 + 296) = v52;
            *(v44 + 264) = v51;
            v53 = v186;
            v54 = v187;
            v55 = v189;
            *(v44 + 344) = v188;
            *(v44 + 360) = v55;
            *(v44 + 312) = v53;
            *(v44 + 328) = v54;
            v56 = v190;
            v57 = v191;
            v58 = v193;
            *(v44 + 408) = v192;
            *(v44 + 424) = v58;
            *(v44 + 376) = v56;
            *(v44 + 392) = v57;
            v59 = v194;
            v60 = v195;
            v61 = v197;
            *(v44 + 472) = v196;
            *(v44 + 488) = v61;
            *(v44 + 440) = v59;
            *(v44 + 456) = v60;
            *(v44 + 63) = v198;
            *(v44 + 32) = v199;
            v198 = 0;
            v199 = 0uLL;
            *(v44 + 66) = 0;
            *(v44 + 68) = 0;
            *(v44 + 67) = 0;
            *(v44 + 33) = __p;
            *(v44 + 68) = v201;
            __p = 0uLL;
            v201 = 0;
            a5[1] = v44 + 552;
          }

          if (v198)
          {
            operator delete(v198);
          }

          if (v181)
          {
            *(&v181 + 1) = v181;
            operator delete(v181);
          }

          if (v179)
          {
            *(&v179 + 1) = v179;
            operator delete(v179);
          }

          if (v174)
          {
            *(&v174 + 1) = v174;
            operator delete(v174);
          }

          if (v172)
          {
            *(&v172 + 1) = v172;
            operator delete(v172);
          }

          v65 = v170;
          if (v170)
          {
            v66 = *(&v170 + 1);
            v67 = v170;
            if (*(&v170 + 1) != v170)
            {
              do
              {
                v68 = *(v66 - 24);
                if (v68)
                {
                  *(v66 - 16) = v68;
                  operator delete(v68);
                }

                v66 -= 56;
              }

              while (v66 != v65);
              v67 = v170;
            }

            *(&v170 + 1) = v65;
            operator delete(v67);
          }

          if (v164[0])
          {
            v164[1] = v164[0];
            operator delete(v164[0]);
          }

          a5 = v158;
          if (SHIBYTE(v163) < 0)
          {
            operator delete(v162[0]);
          }
        }
      }

      else
      {
        sub_1174DA4(v213, v20, *(a3 + 32));
        v62 = a5[1];
        if (v62 < a5[2])
        {
          v24 = *v20;
          *(v62 + 2) = *(v20 + 2);
          *v62 = v24;
          *(v20 + 8) = 0u;
          *v20 = 0;
          *(v62 + 5) = 0;
          *(v62 + 24) = 0u;
          *(v62 + 24) = *(v20 + 24);
          *(v62 + 5) = *(v20 + 5);
          *(v20 + 5) = 0;
          *(v20 + 24) = 0u;
          v25 = *(v20 + 3);
          v26 = *(v20 + 5);
          v27 = *(v20 + 12);
          *(v62 + 4) = *(v20 + 4);
          *(v62 + 5) = v26;
          *(v62 + 3) = v25;
          *(v62 + 12) = v27;
          *(v62 + 13) = 0;
          *(v62 + 7) = 0u;
          *(v62 + 104) = *(v20 + 104);
          *(v62 + 15) = *(v20 + 15);
          *(v20 + 15) = 0;
          *(v20 + 104) = 0u;
          *(v62 + 18) = 0;
          *(v62 + 8) = 0u;
          *(v62 + 8) = *(v20 + 8);
          *(v62 + 18) = *(v20 + 18);
          *(v20 + 18) = 0;
          *(v20 + 8) = 0u;
          *(v62 + 21) = 0;
          *(v62 + 152) = 0u;
          *(v62 + 152) = *(v20 + 152);
          *(v62 + 21) = *(v20 + 21);
          *(v20 + 21) = 0;
          *(v20 + 152) = 0u;
          v28 = *(v20 + 12);
          v29 = *(v20 + 26);
          *(v62 + 11) = *(v20 + 11);
          *(v62 + 12) = v28;
          *(v62 + 26) = v29;
          *(v62 + 27) = 0;
          *(v62 + 14) = 0u;
          *(v62 + 216) = *(v20 + 216);
          *(v62 + 29) = *(v20 + 29);
          *(v20 + 29) = 0;
          *(v20 + 216) = 0u;
          *(v62 + 32) = 0;
          *(v62 + 15) = 0u;
          *(v62 + 15) = *(v20 + 15);
          *(v62 + 32) = *(v20 + 32);
          *(v20 + 32) = 0;
          *(v20 + 15) = 0u;
          v30 = *(v20 + 264);
          v31 = *(v20 + 296);
          *(v62 + 280) = *(v20 + 280);
          *(v62 + 296) = v31;
          *(v62 + 264) = v30;
          v32 = *(v20 + 424);
          v34 = *(v20 + 376);
          v33 = *(v20 + 392);
          *(v62 + 408) = *(v20 + 408);
          *(v62 + 424) = v32;
          *(v62 + 376) = v34;
          *(v62 + 392) = v33;
          v35 = *(v20 + 488);
          v37 = *(v20 + 440);
          v36 = *(v20 + 456);
          *(v62 + 472) = *(v20 + 472);
          *(v62 + 488) = v35;
          *(v62 + 440) = v37;
          *(v62 + 456) = v36;
          v38 = *(v20 + 312);
          v39 = *(v20 + 328);
          v40 = *(v20 + 360);
          *(v62 + 344) = *(v20 + 344);
          *(v62 + 360) = v40;
          *(v62 + 312) = v38;
          *(v62 + 328) = v39;
          *(v62 + 63) = *(v20 + 63);
          *(v62 + 32) = *(v20 + 32);
          *(v20 + 65) = 0;
          *(v20 + 504) = 0u;
          *(v62 + 68) = 0;
          *(v62 + 33) = 0u;
          *(v62 + 33) = *(v20 + 33);
          *(v62 + 68) = *(v20 + 68);
          *(v20 + 68) = 0;
          *(v20 + 33) = 0u;
          v41 = (v62 + 552);
        }

        else
        {
          v41 = sub_D59894(a5, v20);
        }

        a5[1] = v41;
      }

      v22 |= v43;
      v23 |= (v43 >> 1) & 1;
      v20 += 552;
    }

    while (v20 != v19);
    v69 = v206[0];
    if (!v206[0])
    {
LABEL_55:
      v70 = v203[0];
      if (v203[0])
      {
        goto LABEL_107;
      }

      goto LABEL_103;
    }

    while (1)
    {
      v71 = a1[1];
      *(v71 + 1474) = 1;
      sub_100AF38((v71 + 185), 1);
      v72 = sub_100B6E4((v71 + 185), v69 + 2);
      if (v72 == -1)
      {
        v74 = v71[191];
        v75 = v71[190];
        if ((v74 - v75) >= 0x1FFFFFFFFFFFFFFFLL)
        {
          v152 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v152, "insert overflow");
        }

        v76 = v71[194];
        if (v75 && (*(v71 + 378) == *(v76 + 8 * v73) ? (v77 = *(v71 + 379) == *(v76 + 8 * v73 + 4)) : (v77 = 0), v77))
        {
          v71[190] = v75 - 1;
        }

        else
        {
          v71[191] = v74 + 1;
        }

        *(v76 + 8 * v73) = *(v69 + 2);
      }

      v78 = v72 == -1;
      v160 = *(v69 + 24);
      v161 = 0;
      sub_4C2A78(&v160, v162);
      if (sub_4C2B70(v162))
      {
        break;
      }

      if (sub_4C2B80(v162))
      {
        v79 = sub_4C2BC4(v162);
        goto LABEL_72;
      }

      if (sub_4C2B90(v162))
      {
        v84 = *(sub_4C2C1C(v162) + 8);
      }

      else
      {
        v84 = 0;
      }

LABEL_73:
      v85 = a1[13];
      if (v85)
      {
        v86 = vcnt_s8(v85);
        v86.i16[0] = vaddlv_u8(v86);
        if (v86.u32[0] > 1uLL)
        {
          v87 = v84;
          if (v84 >= *&v85)
          {
            v87 = v84 % *&v85;
          }
        }

        else
        {
          v87 = (*&v85 - 1) & v84;
        }

        v88 = a1[12][v87];
        if (v88)
        {
          v89 = *v88;
          if (*v88)
          {
            if (v86.u32[0] < 2uLL)
            {
              v90 = *&v85 - 1;
              while (1)
              {
                v92 = v89[1];
                if (v92 == v84)
                {
                  if (sub_4C2D38((v89 + 2), v162))
                  {
                    goto LABEL_93;
                  }
                }

                else if ((v92 & v90) != v87)
                {
                  goto LABEL_94;
                }

                v89 = *v89;
                if (!v89)
                {
                  goto LABEL_94;
                }
              }
            }

            do
            {
              v91 = v89[1];
              if (v91 == v84)
              {
                if (sub_4C2D38((v89 + 2), v162))
                {
LABEL_93:
                  a5 = v158;
                  sub_4C2D98(v89 + 2, v162);
                  goto LABEL_95;
                }
              }

              else
              {
                if (v91 >= *&v85)
                {
                  v91 %= *&v85;
                }

                if (v91 != v87)
                {
                  break;
                }
              }

              v89 = *v89;
            }

            while (v89);
          }
        }
      }

LABEL_94:
      a5 = v158;
      sub_D3B9CC(a1 + 12, v162);
LABEL_95:
      v93 = v166;
      if (v166)
      {
        do
        {
          v94 = *v93;
          operator delete(v93);
          v93 = v94;
        }

        while (v94);
      }

      v95 = v164[1];
      v164[1] = 0;
      if (v95)
      {
        operator delete(v95);
      }

      v22 |= v78;
      v69 = *v69;
      if (!v69)
      {
        goto LABEL_55;
      }
    }

    v79 = sub_4C2BA0(v162);
LABEL_72:
    v81 = 0x9DDFEA08EB382D69 * ((8 * (v79 & 0x1FFFFFFF) + 8) ^ HIDWORD(v79));
    v82 = 0x9DDFEA08EB382D69 * (HIDWORD(v79) ^ (v81 >> 47) ^ v81);
    v83 = (0x9DDFEA08EB382D69 * (v82 ^ (v82 >> 47)) + 0x388152A534) ^ 0xDEADBEEF;
    v84 = (v80 + 2654435769 + (v83 << 6) + (v83 >> 2)) ^ v83;
    goto LABEL_73;
  }

LABEL_6:
  v11 = 0;
LABEL_133:
  if (v209 != v210 && &v209 != a5)
  {
    sub_DFA7E4(a5, v209, v210, 0xF128CFC4A33F128DLL * ((v210 - v209) >> 3));
  }

LABEL_136:
  if (((sub_FBF430(a2) | v10) & 1) != 0 || *(a1[3] + 8712) != 1)
  {
    goto LABEL_164;
  }

  v116 = *a5;
  v115 = a5[1];
  if (*a5 == v115)
  {
LABEL_144:
    if (sub_FBF428(a2))
    {
      v118 = *a5;
      v117 = a5[1];
      if (v117 != *a5)
      {
        do
        {
          v117 = sub_4547F0(v117 - 552);
        }

        while (v117 != v118);
      }

      a5[1] = v118;
    }

    sub_D58FB0(a1[1]);
    sub_100D8A4(a2, a3);
    v119 = sub_FBF438(a2);
    sub_2512DC(v9, v119);
    v121 = v162[0];
    v120 = v162[1];
    if (v162[0] == v162[1])
    {
      if (!v162[0])
      {
LABEL_163:
        a5 = v158;
        goto LABEL_164;
      }
    }

    else
    {
      do
      {
        sub_10023F4(a1[3], v121, *(a4 + 7), *(a4 + 8));
        if (!sub_F6FDC8(v121) || sub_FBF428(a2))
        {
          v140 = v158[1];
          if (v140 < v158[2])
          {
            v122 = *v121;
            *(v140 + 16) = *(v121 + 2);
            *v140 = v122;
            *(v121 + 8) = 0u;
            *v121 = 0;
            *(v140 + 40) = 0;
            *(v140 + 24) = 0u;
            *(v140 + 24) = *(v121 + 24);
            *(v140 + 40) = *(v121 + 5);
            *(v121 + 5) = 0;
            *(v121 + 24) = 0u;
            v123 = v121[3];
            v124 = v121[5];
            v125 = *(v121 + 12);
            *(v140 + 64) = v121[4];
            *(v140 + 80) = v124;
            *(v140 + 48) = v123;
            *(v140 + 96) = v125;
            *(v140 + 104) = 0;
            *(v140 + 112) = 0u;
            *(v140 + 104) = *(v121 + 104);
            *(v140 + 120) = *(v121 + 15);
            *(v121 + 15) = 0;
            *(v121 + 104) = 0u;
            *(v140 + 144) = 0;
            *(v140 + 128) = 0u;
            *(v140 + 128) = v121[8];
            *(v140 + 144) = *(v121 + 18);
            *(v121 + 18) = 0;
            v121[8] = 0u;
            *(v140 + 168) = 0;
            *(v140 + 152) = 0u;
            *(v140 + 152) = *(v121 + 152);
            *(v140 + 168) = *(v121 + 21);
            *(v121 + 21) = 0;
            *(v121 + 152) = 0u;
            v126 = v121[12];
            v127 = *(v121 + 26);
            *(v140 + 176) = v121[11];
            *(v140 + 192) = v126;
            *(v140 + 208) = v127;
            *(v140 + 216) = 0;
            *(v140 + 224) = 0u;
            *(v140 + 216) = *(v121 + 216);
            *(v140 + 232) = *(v121 + 29);
            *(v121 + 29) = 0;
            *(v121 + 216) = 0u;
            *(v140 + 256) = 0;
            *(v140 + 240) = 0u;
            *(v140 + 240) = v121[15];
            *(v140 + 256) = *(v121 + 32);
            *(v121 + 32) = 0;
            v121[15] = 0u;
            v128 = *(v121 + 264);
            v129 = *(v121 + 296);
            *(v140 + 280) = *(v121 + 280);
            *(v140 + 296) = v129;
            *(v140 + 264) = v128;
            v130 = *(v121 + 424);
            v132 = *(v121 + 376);
            v131 = *(v121 + 392);
            *(v140 + 408) = *(v121 + 408);
            *(v140 + 424) = v130;
            *(v140 + 376) = v132;
            *(v140 + 392) = v131;
            v133 = *(v121 + 488);
            v135 = *(v121 + 440);
            v134 = *(v121 + 456);
            *(v140 + 472) = *(v121 + 472);
            *(v140 + 488) = v133;
            *(v140 + 440) = v135;
            *(v140 + 456) = v134;
            v136 = *(v121 + 312);
            v137 = *(v121 + 328);
            v138 = *(v121 + 360);
            *(v140 + 344) = *(v121 + 344);
            *(v140 + 360) = v138;
            *(v140 + 312) = v136;
            *(v140 + 328) = v137;
            *(v140 + 504) = *(v121 + 63);
            *(v140 + 512) = v121[32];
            *(v121 + 65) = 0;
            *(v121 + 504) = 0u;
            *(v140 + 544) = 0;
            *(v140 + 528) = 0u;
            v114 = v121[33];
            *(v140 + 528) = v114;
            *(v140 + 544) = *(v121 + 68);
            *(v121 + 68) = 0;
            v121[33] = 0u;
            v139 = v140 + 552;
          }

          else
          {
            v139 = sub_D59894(v158, v121);
          }

          v158[1] = v139;
        }

        v121 = (v121 + 552);
      }

      while (v121 != v120);
      v121 = v162[0];
      if (!v162[0])
      {
        goto LABEL_163;
      }
    }

    v141 = v162[1];
    v142 = v121;
    if (v162[1] != v121)
    {
      do
      {
        v141 = sub_4547F0(v141 - 552);
      }

      while (v141 != v121);
      v142 = v162[0];
    }

    v162[1] = v121;
    operator delete(v142);
    goto LABEL_163;
  }

  while (1)
  {
    if (*(sub_73F1C(v116) + 40) > 0.95)
    {
      *&v114 = *(sub_F69058(v116) + 40);
      if (*&v114 > 0.95)
      {
        break;
      }
    }

    v116 += 552;
    if (v116 == v115)
    {
      goto LABEL_144;
    }
  }

LABEL_164:
  v144 = *a5;
  v143 = a5[1];
  if (*a5 != v143)
  {
    do
    {
      sub_11710F0(a1[3], v144);
      v144 += 552;
    }

    while (v144 != v143);
  }

  *(a1 + 34) = v11;
  *(a1 + 35) = sub_1084748((a1[1] + 42), *&v114);
  if ((*(a4 + 6) & 1) == 0)
  {
    sub_D58FB0(a1[1]);
  }

  sub_1161B14((a1 + 4));
  v145 = v209;
  if (v209)
  {
    v146 = v210;
    v147 = v209;
    if (v210 != v209)
    {
      do
      {
        v146 = sub_4547F0((v146 - 552));
      }

      while (v146 != v145);
      v147 = v209;
    }

    v210 = v145;
    operator delete(v147);
  }

  if (v220)
  {
    v221 = v220;
    operator delete(v220);
  }

  v148 = v219;
  if (v219)
  {
    do
    {
      v149 = *v148;
      operator delete(v148);
      v148 = v149;
    }

    while (v149);
  }

  v150 = v218;
  v218 = 0;
  if (v150)
  {
    operator delete(v150);
  }

  if (v216)
  {
    v217 = v216;
    operator delete(v216);
  }

  if (v214)
  {
    v215 = v214;
    operator delete(v214);
  }
}

void sub_1003498(_Unwind_Exception *a1)
{
  sub_487EC4(&STACK[0x320]);
  sub_487EC4(v1);
  sub_3BFA2C(&STACK[0x360]);
  _Unwind_Resume(a1);
}

void sub_100358C(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void **a5@<X8>)
{
  sub_D58FB0(a1[1]);
  v9 = a1 + 18;
  v8 = a1[18];
  a1[17] = 0;
  if (v8)
  {
    a1[19] = v8;
    operator delete(v8);
    *v9 = 0;
    a1[19] = 0;
    a1[20] = 0;
  }

  *v9 = 0;
  a1[19] = 0;
  a1[20] = 0;
  sub_1174DA0(v213, *a1);
  sub_1011FA4(v212, *a1);
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v210 = 0;
  v209 = 0;
  v211 = 0;
  if (*(a4 + 16) == 0x7FFFFFFFFFFFFFFFLL || *(a1 + 72) != 1)
  {
    v10 = 1;
    v158 = a5;
    if (!*a4)
    {
      goto LABEL_6;
    }

    goto LABEL_8;
  }

  v10 = 1;
  v158 = a5;
  if (*a4)
  {
LABEL_8:
    v155 = 0;
    v11 = 0;
    v12 = 1;
    v13 = 1;
    v157 = a2;
    while (1)
    {
      if (sub_FBF428(a2))
      {
        v15 = *a5;
        v14 = a5[1];
        if (v14 != *a5)
        {
          do
          {
            v14 = sub_4547F0(v14 - 552);
          }

          while (v14 != v15);
        }

        a5[1] = v15;
      }

      if (v13)
      {
        v16 = v210;
        v17 = v209;
        if (v210 != v209)
        {
          do
          {
            v16 = sub_4547F0((v16 - 552));
          }

          while (v16 != v17);
        }

        v210 = v17;
      }

      sub_102C9E8();
      v153 = v13;
      v18 = sub_FBF438(a2);
      sub_2512DC(v9, v18);
      v154 = v11;
      v19 = v208[1];
      v20 = v208[0];
      v21 = v155;
      if (v12)
      {
        v21 = v208[0] != v208[1];
      }

      v155 = v21;
      *v205 = 0u;
      *v206 = 0u;
      v207 = 1065353216;
      *v202 = 0u;
      *v203 = 0u;
      v204 = 1065353216;
      if (v208[0] != v208[1])
      {
        break;
      }

      v23 = 0;
      v22 = 0;
      v70 = v203[0];
      if (v203[0])
      {
        do
        {
LABEL_107:
          v97 = a1[1];
          *(v97 + 1474) = 1;
          sub_100AF38((v97 + 185), 1);
          v98 = sub_100B6E4((v97 + 185), v70 + 2);
          if (v98 == -1)
          {
            v100 = v97[191];
            v101 = v97[190];
            if ((v100 - v101) >= 0x1FFFFFFFFFFFFFFFLL)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(exception, "insert overflow");
            }

            v102 = v97[194];
            if (v101 && (*(v97 + 378) == *(v102 + 8 * v99) ? (v103 = *(v97 + 379) == *(v102 + 8 * v99 + 4)) : (v103 = 0), v103))
            {
              v97[190] = v101 - 1;
            }

            else
            {
              v97[191] = v100 + 1;
            }

            *(v102 + 8 * v99) = v70[2];
          }

          v22 |= v98 == -1;
          v70 = *v70;
        }

        while (v70);
        v104 = v203[0];
        v96 = v209 == v210;
        if (v203[0])
        {
          do
          {
            v105 = *v104;
            operator delete(v104);
            v104 = v105;
          }

          while (v105);
        }

        goto LABEL_118;
      }

LABEL_103:
      v96 = v209 == v210;
LABEL_118:
      v106 = v202[0];
      v202[0] = 0;
      if (v106)
      {
        operator delete(v106);
      }

      v107 = v206[0];
      if (v206[0])
      {
        do
        {
          v108 = *v107;
          operator delete(v107);
          v107 = v108;
        }

        while (v108);
      }

      v109 = v205[0];
      v205[0] = 0;
      if (v109)
      {
        operator delete(v109);
      }

      v110 = v208[0];
      if (v208[0])
      {
        v111 = v208[1];
        v112 = v208[0];
        if (v208[1] != v208[0])
        {
          do
          {
            v111 = sub_4547F0(v111 - 552);
          }

          while (v111 != v110);
          v112 = v208[0];
        }

        v208[1] = v110;
        operator delete(v112);
      }

      v113 = *a4;
      if (((v22 | v23) & 1) == 0)
      {
        a2 = v157;
        v11 = v154;
        v9 = a1 + 18;
        v10 = !v155;
        if (v154 < v113)
        {
          goto LABEL_136;
        }

        goto LABEL_133;
      }

      v12 = 0;
      v13 = (v22 | v96) & v153;
      v11 = v154 + 1;
      a2 = v157;
      v9 = a1 + 18;
      if (v154 + 1 >= v113)
      {
        v10 = !v155;
        goto LABEL_133;
      }
    }

    v22 = 0;
    v23 = 0;
    do
    {
      v42 = sub_3B6890(*a1);
      v43 = sub_FF7610(a1, v20, v212, v42, *(a4 + 4), *(a4 + 5), v205, v202);
      if ((v43 & 0xC) != 0)
      {
        if (sub_FBF428(v157))
        {
          sub_F6EB3C(v162);
          v44 = a5[1];
          if (v44 >= a5[2])
          {
            v63 = sub_D59894(a5, v162);
            v64 = __p;
            a5[1] = v63;
            if (v64)
            {
              *(&__p + 1) = v64;
              operator delete(v64);
            }
          }

          else
          {
            v45 = *v162;
            *(v44 + 2) = v163;
            *(v44 + 3) = 0;
            *v44 = v45;
            v162[1] = 0;
            v163 = 0;
            v162[0] = 0;
            *(v44 + 4) = 0;
            *(v44 + 5) = 0;
            *(v44 + 24) = *v164;
            *(v44 + 5) = v165;
            v164[0] = 0;
            v164[1] = 0;
            v165 = 0;
            v46 = v166;
            v47 = v168;
            v48 = v169;
            *(v44 + 4) = v167;
            *(v44 + 5) = v47;
            *(v44 + 3) = v46;
            *(v44 + 12) = v48;
            *(v44 + 13) = 0;
            *(v44 + 14) = 0;
            *(v44 + 15) = 0;
            *(v44 + 104) = v170;
            v170 = 0uLL;
            *(v44 + 15) = v171;
            *(v44 + 16) = 0;
            *(v44 + 17) = 0;
            *(v44 + 18) = 0;
            *(v44 + 8) = v172;
            *(v44 + 18) = v173;
            *(v44 + 19) = 0;
            v171 = 0;
            v172 = 0uLL;
            v173 = 0;
            *(v44 + 20) = 0;
            *(v44 + 21) = 0;
            *(v44 + 152) = v174;
            *(v44 + 21) = v175;
            v174 = 0uLL;
            v175 = 0;
            v49 = v177;
            v50 = v178;
            *(v44 + 11) = v176;
            *(v44 + 12) = v49;
            *(v44 + 26) = v50;
            *(v44 + 27) = 0;
            *(v44 + 28) = 0;
            *(v44 + 29) = 0;
            *(v44 + 216) = v179;
            v179 = 0uLL;
            *(v44 + 29) = v180;
            *(v44 + 30) = 0;
            *(v44 + 31) = 0;
            *(v44 + 32) = 0;
            *(v44 + 15) = v181;
            *(v44 + 32) = v182;
            v180 = 0;
            v181 = 0uLL;
            v182 = 0;
            v51 = v183;
            v52 = v185;
            *(v44 + 280) = v184;
            *(v44 + 296) = v52;
            *(v44 + 264) = v51;
            v53 = v186;
            v54 = v187;
            v55 = v189;
            *(v44 + 344) = v188;
            *(v44 + 360) = v55;
            *(v44 + 312) = v53;
            *(v44 + 328) = v54;
            v56 = v190;
            v57 = v191;
            v58 = v193;
            *(v44 + 408) = v192;
            *(v44 + 424) = v58;
            *(v44 + 376) = v56;
            *(v44 + 392) = v57;
            v59 = v194;
            v60 = v195;
            v61 = v197;
            *(v44 + 472) = v196;
            *(v44 + 488) = v61;
            *(v44 + 440) = v59;
            *(v44 + 456) = v60;
            *(v44 + 63) = v198;
            *(v44 + 32) = v199;
            v198 = 0;
            v199 = 0uLL;
            *(v44 + 66) = 0;
            *(v44 + 68) = 0;
            *(v44 + 67) = 0;
            *(v44 + 33) = __p;
            *(v44 + 68) = v201;
            __p = 0uLL;
            v201 = 0;
            a5[1] = v44 + 552;
          }

          if (v198)
          {
            operator delete(v198);
          }

          if (v181)
          {
            *(&v181 + 1) = v181;
            operator delete(v181);
          }

          if (v179)
          {
            *(&v179 + 1) = v179;
            operator delete(v179);
          }

          if (v174)
          {
            *(&v174 + 1) = v174;
            operator delete(v174);
          }

          if (v172)
          {
            *(&v172 + 1) = v172;
            operator delete(v172);
          }

          v65 = v170;
          if (v170)
          {
            v66 = *(&v170 + 1);
            v67 = v170;
            if (*(&v170 + 1) != v170)
            {
              do
              {
                v68 = *(v66 - 24);
                if (v68)
                {
                  *(v66 - 16) = v68;
                  operator delete(v68);
                }

                v66 -= 56;
              }

              while (v66 != v65);
              v67 = v170;
            }

            *(&v170 + 1) = v65;
            operator delete(v67);
          }

          if (v164[0])
          {
            v164[1] = v164[0];
            operator delete(v164[0]);
          }

          a5 = v158;
          if (SHIBYTE(v163) < 0)
          {
            operator delete(v162[0]);
          }
        }
      }

      else
      {
        sub_1174DA4(v213, v20, *(a3 + 32));
        v62 = a5[1];
        if (v62 < a5[2])
        {
          v24 = *v20;
          *(v62 + 2) = *(v20 + 2);
          *v62 = v24;
          *(v20 + 8) = 0u;
          *v20 = 0;
          *(v62 + 5) = 0;
          *(v62 + 24) = 0u;
          *(v62 + 24) = *(v20 + 24);
          *(v62 + 5) = *(v20 + 5);
          *(v20 + 5) = 0;
          *(v20 + 24) = 0u;
          v25 = *(v20 + 3);
          v26 = *(v20 + 5);
          v27 = *(v20 + 12);
          *(v62 + 4) = *(v20 + 4);
          *(v62 + 5) = v26;
          *(v62 + 3) = v25;
          *(v62 + 12) = v27;
          *(v62 + 13) = 0;
          *(v62 + 7) = 0u;
          *(v62 + 104) = *(v20 + 104);
          *(v62 + 15) = *(v20 + 15);
          *(v20 + 15) = 0;
          *(v20 + 104) = 0u;
          *(v62 + 18) = 0;
          *(v62 + 8) = 0u;
          *(v62 + 8) = *(v20 + 8);
          *(v62 + 18) = *(v20 + 18);
          *(v20 + 18) = 0;
          *(v20 + 8) = 0u;
          *(v62 + 21) = 0;
          *(v62 + 152) = 0u;
          *(v62 + 152) = *(v20 + 152);
          *(v62 + 21) = *(v20 + 21);
          *(v20 + 21) = 0;
          *(v20 + 152) = 0u;
          v28 = *(v20 + 12);
          v29 = *(v20 + 26);
          *(v62 + 11) = *(v20 + 11);
          *(v62 + 12) = v28;
          *(v62 + 26) = v29;
          *(v62 + 27) = 0;
          *(v62 + 14) = 0u;
          *(v62 + 216) = *(v20 + 216);
          *(v62 + 29) = *(v20 + 29);
          *(v20 + 29) = 0;
          *(v20 + 216) = 0u;
          *(v62 + 32) = 0;
          *(v62 + 15) = 0u;
          *(v62 + 15) = *(v20 + 15);
          *(v62 + 32) = *(v20 + 32);
          *(v20 + 32) = 0;
          *(v20 + 15) = 0u;
          v30 = *(v20 + 264);
          v31 = *(v20 + 296);
          *(v62 + 280) = *(v20 + 280);
          *(v62 + 296) = v31;
          *(v62 + 264) = v30;
          v32 = *(v20 + 424);
          v34 = *(v20 + 376);
          v33 = *(v20 + 392);
          *(v62 + 408) = *(v20 + 408);
          *(v62 + 424) = v32;
          *(v62 + 376) = v34;
          *(v62 + 392) = v33;
          v35 = *(v20 + 488);
          v37 = *(v20 + 440);
          v36 = *(v20 + 456);
          *(v62 + 472) = *(v20 + 472);
          *(v62 + 488) = v35;
          *(v62 + 440) = v37;
          *(v62 + 456) = v36;
          v38 = *(v20 + 312);
          v39 = *(v20 + 328);
          v40 = *(v20 + 360);
          *(v62 + 344) = *(v20 + 344);
          *(v62 + 360) = v40;
          *(v62 + 312) = v38;
          *(v62 + 328) = v39;
          *(v62 + 63) = *(v20 + 63);
          *(v62 + 32) = *(v20 + 32);
          *(v20 + 65) = 0;
          *(v20 + 504) = 0u;
          *(v62 + 68) = 0;
          *(v62 + 33) = 0u;
          *(v62 + 33) = *(v20 + 33);
          *(v62 + 68) = *(v20 + 68);
          *(v20 + 68) = 0;
          *(v20 + 33) = 0u;
          v41 = (v62 + 552);
        }

        else
        {
          v41 = sub_D59894(a5, v20);
        }

        a5[1] = v41;
      }

      v22 |= v43;
      v23 |= (v43 >> 1) & 1;
      v20 += 552;
    }

    while (v20 != v19);
    v69 = v206[0];
    if (!v206[0])
    {
LABEL_55:
      v70 = v203[0];
      if (v203[0])
      {
        goto LABEL_107;
      }

      goto LABEL_103;
    }

    while (1)
    {
      v71 = a1[1];
      *(v71 + 1474) = 1;
      sub_100AF38((v71 + 185), 1);
      v72 = sub_100B6E4((v71 + 185), v69 + 2);
      if (v72 == -1)
      {
        v74 = v71[191];
        v75 = v71[190];
        if ((v74 - v75) >= 0x1FFFFFFFFFFFFFFFLL)
        {
          v152 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v152, "insert overflow");
        }

        v76 = v71[194];
        if (v75 && (*(v71 + 378) == *(v76 + 8 * v73) ? (v77 = *(v71 + 379) == *(v76 + 8 * v73 + 4)) : (v77 = 0), v77))
        {
          v71[190] = v75 - 1;
        }

        else
        {
          v71[191] = v74 + 1;
        }

        *(v76 + 8 * v73) = *(v69 + 2);
      }

      v78 = v72 == -1;
      v160 = *(v69 + 24);
      v161 = 0;
      sub_4C2A78(&v160, v162);
      if (sub_4C2B70(v162))
      {
        break;
      }

      if (sub_4C2B80(v162))
      {
        v79 = sub_4C2BC4(v162);
        goto LABEL_72;
      }

      if (sub_4C2B90(v162))
      {
        v84 = *(sub_4C2C1C(v162) + 8);
      }

      else
      {
        v84 = 0;
      }

LABEL_73:
      v85 = a1[13];
      if (v85)
      {
        v86 = vcnt_s8(v85);
        v86.i16[0] = vaddlv_u8(v86);
        if (v86.u32[0] > 1uLL)
        {
          v87 = v84;
          if (v84 >= *&v85)
          {
            v87 = v84 % *&v85;
          }
        }

        else
        {
          v87 = (*&v85 - 1) & v84;
        }

        v88 = a1[12][v87];
        if (v88)
        {
          v89 = *v88;
          if (*v88)
          {
            if (v86.u32[0] < 2uLL)
            {
              v90 = *&v85 - 1;
              while (1)
              {
                v92 = v89[1];
                if (v92 == v84)
                {
                  if (sub_4C2D38((v89 + 2), v162))
                  {
                    goto LABEL_93;
                  }
                }

                else if ((v92 & v90) != v87)
                {
                  goto LABEL_94;
                }

                v89 = *v89;
                if (!v89)
                {
                  goto LABEL_94;
                }
              }
            }

            do
            {
              v91 = v89[1];
              if (v91 == v84)
              {
                if (sub_4C2D38((v89 + 2), v162))
                {
LABEL_93:
                  a5 = v158;
                  sub_4C2D98(v89 + 2, v162);
                  goto LABEL_95;
                }
              }

              else
              {
                if (v91 >= *&v85)
                {
                  v91 %= *&v85;
                }

                if (v91 != v87)
                {
                  break;
                }
              }

              v89 = *v89;
            }

            while (v89);
          }
        }
      }

LABEL_94:
      a5 = v158;
      sub_D3B9CC(a1 + 12, v162);
LABEL_95:
      v93 = v166;
      if (v166)
      {
        do
        {
          v94 = *v93;
          operator delete(v93);
          v93 = v94;
        }

        while (v94);
      }

      v95 = v164[1];
      v164[1] = 0;
      if (v95)
      {
        operator delete(v95);
      }

      v22 |= v78;
      v69 = *v69;
      if (!v69)
      {
        goto LABEL_55;
      }
    }

    v79 = sub_4C2BA0(v162);
LABEL_72:
    v81 = 0x9DDFEA08EB382D69 * ((8 * (v79 & 0x1FFFFFFF) + 8) ^ HIDWORD(v79));
    v82 = 0x9DDFEA08EB382D69 * (HIDWORD(v79) ^ (v81 >> 47) ^ v81);
    v83 = (0x9DDFEA08EB382D69 * (v82 ^ (v82 >> 47)) + 0x388152A534) ^ 0xDEADBEEF;
    v84 = (v80 + 2654435769 + (v83 << 6) + (v83 >> 2)) ^ v83;
    goto LABEL_73;
  }

LABEL_6:
  v11 = 0;
LABEL_133:
  if (v209 != v210 && &v209 != a5)
  {
    sub_DFA7E4(a5, v209, v210, 0xF128CFC4A33F128DLL * ((v210 - v209) >> 3));
  }

LABEL_136:
  if (((sub_FBF430(a2) | v10) & 1) != 0 || *(a1[3] + 8712) != 1)
  {
    goto LABEL_164;
  }

  v116 = *a5;
  v115 = a5[1];
  if (*a5 == v115)
  {
LABEL_144:
    if (sub_FBF428(a2))
    {
      v118 = *a5;
      v117 = a5[1];
      if (v117 != *a5)
      {
        do
        {
          v117 = sub_4547F0(v117 - 552);
        }

        while (v117 != v118);
      }

      a5[1] = v118;
    }

    sub_D58FB0(a1[1]);
    sub_102C9E8();
    v119 = sub_FBF438(a2);
    sub_2512DC(v9, v119);
    v121 = v162[0];
    v120 = v162[1];
    if (v162[0] == v162[1])
    {
      if (!v162[0])
      {
LABEL_163:
        a5 = v158;
        goto LABEL_164;
      }
    }

    else
    {
      do
      {
        sub_10023F4(a1[3], v121, *(a4 + 7), *(a4 + 8));
        if (!sub_F6FDC8(v121) || sub_FBF428(a2))
        {
          v140 = v158[1];
          if (v140 < v158[2])
          {
            v122 = *v121;
            *(v140 + 16) = *(v121 + 2);
            *v140 = v122;
            *(v121 + 8) = 0u;
            *v121 = 0;
            *(v140 + 40) = 0;
            *(v140 + 24) = 0u;
            *(v140 + 24) = *(v121 + 24);
            *(v140 + 40) = *(v121 + 5);
            *(v121 + 5) = 0;
            *(v121 + 24) = 0u;
            v123 = v121[3];
            v124 = v121[5];
            v125 = *(v121 + 12);
            *(v140 + 64) = v121[4];
            *(v140 + 80) = v124;
            *(v140 + 48) = v123;
            *(v140 + 96) = v125;
            *(v140 + 104) = 0;
            *(v140 + 112) = 0u;
            *(v140 + 104) = *(v121 + 104);
            *(v140 + 120) = *(v121 + 15);
            *(v121 + 15) = 0;
            *(v121 + 104) = 0u;
            *(v140 + 144) = 0;
            *(v140 + 128) = 0u;
            *(v140 + 128) = v121[8];
            *(v140 + 144) = *(v121 + 18);
            *(v121 + 18) = 0;
            v121[8] = 0u;
            *(v140 + 168) = 0;
            *(v140 + 152) = 0u;
            *(v140 + 152) = *(v121 + 152);
            *(v140 + 168) = *(v121 + 21);
            *(v121 + 21) = 0;
            *(v121 + 152) = 0u;
            v126 = v121[12];
            v127 = *(v121 + 26);
            *(v140 + 176) = v121[11];
            *(v140 + 192) = v126;
            *(v140 + 208) = v127;
            *(v140 + 216) = 0;
            *(v140 + 224) = 0u;
            *(v140 + 216) = *(v121 + 216);
            *(v140 + 232) = *(v121 + 29);
            *(v121 + 29) = 0;
            *(v121 + 216) = 0u;
            *(v140 + 256) = 0;
            *(v140 + 240) = 0u;
            *(v140 + 240) = v121[15];
            *(v140 + 256) = *(v121 + 32);
            *(v121 + 32) = 0;
            v121[15] = 0u;
            v128 = *(v121 + 264);
            v129 = *(v121 + 296);
            *(v140 + 280) = *(v121 + 280);
            *(v140 + 296) = v129;
            *(v140 + 264) = v128;
            v130 = *(v121 + 424);
            v132 = *(v121 + 376);
            v131 = *(v121 + 392);
            *(v140 + 408) = *(v121 + 408);
            *(v140 + 424) = v130;
            *(v140 + 376) = v132;
            *(v140 + 392) = v131;
            v133 = *(v121 + 488);
            v135 = *(v121 + 440);
            v134 = *(v121 + 456);
            *(v140 + 472) = *(v121 + 472);
            *(v140 + 488) = v133;
            *(v140 + 440) = v135;
            *(v140 + 456) = v134;
            v136 = *(v121 + 312);
            v137 = *(v121 + 328);
            v138 = *(v121 + 360);
            *(v140 + 344) = *(v121 + 344);
            *(v140 + 360) = v138;
            *(v140 + 312) = v136;
            *(v140 + 328) = v137;
            *(v140 + 504) = *(v121 + 63);
            *(v140 + 512) = v121[32];
            *(v121 + 65) = 0;
            *(v121 + 504) = 0u;
            *(v140 + 544) = 0;
            *(v140 + 528) = 0u;
            v114 = v121[33];
            *(v140 + 528) = v114;
            *(v140 + 544) = *(v121 + 68);
            *(v121 + 68) = 0;
            v121[33] = 0u;
            v139 = v140 + 552;
          }

          else
          {
            v139 = sub_D59894(v158, v121);
          }

          v158[1] = v139;
        }

        v121 = (v121 + 552);
      }

      while (v121 != v120);
      v121 = v162[0];
      if (!v162[0])
      {
        goto LABEL_163;
      }
    }

    v141 = v162[1];
    v142 = v121;
    if (v162[1] != v121)
    {
      do
      {
        v141 = sub_4547F0(v141 - 552);
      }

      while (v141 != v121);
      v142 = v162[0];
    }

    v162[1] = v121;
    operator delete(v142);
    goto LABEL_163;
  }

  while (1)
  {
    if (*(sub_73F1C(v116) + 40) > 0.95)
    {
      *&v114 = *(sub_F69058(v116) + 40);
      if (*&v114 > 0.95)
      {
        break;
      }
    }

    v116 += 552;
    if (v116 == v115)
    {
      goto LABEL_144;
    }
  }

LABEL_164:
  v144 = *a5;
  v143 = a5[1];
  if (*a5 != v143)
  {
    do
    {
      sub_11710F0(a1[3], v144);
      v144 += 552;
    }

    while (v144 != v143);
  }

  *(a1 + 34) = v11;
  *(a1 + 35) = sub_1084748((a1[1] + 42), *&v114);
  if ((*(a4 + 6) & 1) == 0)
  {
    sub_D58FB0(a1[1]);
  }

  sub_1161B14((a1 + 4));
  v145 = v209;
  if (v209)
  {
    v146 = v210;
    v147 = v209;
    if (v210 != v209)
    {
      do
      {
        v146 = sub_4547F0((v146 - 552));
      }

      while (v146 != v145);
      v147 = v209;
    }

    v210 = v145;
    operator delete(v147);
  }

  if (v220)
  {
    v221 = v220;
    operator delete(v220);
  }

  v148 = v219;
  if (v219)
  {
    do
    {
      v149 = *v148;
      operator delete(v148);
      v148 = v149;
    }

    while (v149);
  }

  v150 = v218;
  v218 = 0;
  if (v150)
  {
    operator delete(v150);
  }

  if (v216)
  {
    v217 = v216;
    operator delete(v216);
  }

  if (v214)
  {
    v215 = v214;
    operator delete(v214);
  }
}

void sub_10045A4(_Unwind_Exception *a1)
{
  sub_487EC4(&STACK[0x320]);
  sub_487EC4(v1);
  sub_3BFA2C(&STACK[0x360]);
  _Unwind_Resume(a1);
}

void sub_1004698(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int *a4@<X3>, void **a5@<X8>)
{
  sub_D58FB0(a1[1]);
  v9 = a1 + 18;
  v8 = a1[18];
  a1[17] = 0;
  v141 = a1 + 18;
  if (v8)
  {
    a1[19] = v8;
    operator delete(v8);
    v9 = a1 + 18;
    *v141 = 0;
    a1[19] = 0;
    a1[20] = 0;
  }

  *v9 = 0;
  v9[1] = 0;
  v9[2] = 0;
  sub_1174DA0(v170, *a1);
  sub_1011FA4(v169, *a1);
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v167 = 0;
  v166 = 0;
  v168 = 0;
  v146 = a2;
  v147 = a5;
  v140 = 1;
  if (*a4)
  {
    v10 = 0;
    v11 = 1;
    v143 = 0;
    v144 = 1;
    while (1)
    {
      if (!sub_FBF428(v146))
      {
        goto LABEL_8;
      }

      v12 = *a5;
      v13 = a5[1];
      if (v13 != *a5)
      {
        break;
      }

LABEL_7:
      a5[1] = v12;
LABEL_8:
      if ((v144 & 1) == 0)
      {
        goto LABEL_11;
      }

      v14 = v167;
      v15 = v166;
      if (v167 != v166)
      {
        do
        {
          if (*(v14 - 1) < 0)
          {
            operator delete(*(v14 - 3));
            v24 = v14 - 6;
            v25 = *(v14 - 6);
            if (v25)
            {
LABEL_30:
              v26 = *(v14 - 5);
              v27 = v25;
              if (v26 != v25)
              {
                do
                {
                  v26 = sub_4547F0(v26 - 552);
                }

                while (v26 != v25);
                v27 = *v24;
              }

              *(v14 - 5) = v25;
              operator delete(v27);
            }
          }

          else
          {
            v24 = v14 - 6;
            v25 = *(v14 - 6);
            if (v25)
            {
              goto LABEL_30;
            }
          }

          v14 = v24;
        }

        while (v24 != v15);
      }

      v167 = v15;
LABEL_11:
      sub_102CCD0();
      v142 = v10;
      v16 = sub_FBF438(v146);
      sub_2512DC(v141, v16);
      v17 = v165[0];
      v18 = v143;
      if (v11)
      {
        v18 = v165[0] != v165[1];
      }

      v143 = v18;
      *v162 = 0u;
      *v163 = 0u;
      v164 = 1065353216;
      *v159 = 0u;
      *v160 = 0u;
      v161 = 1065353216;
      v148 = v165[1];
      if (v165[0] == v165[1])
      {
        v151 = 0;
        v19 = 0;
      }

      else
      {
        v19 = 0;
        v151 = 0;
        do
        {
          v150 = v19;
          v31 = sub_3B6890(*a1);
          v32 = *(a4 + 4);
          v33 = *(a4 + 5);
          v34 = *v31;
          v155 = v31[2];
          v154 = v34;
          v35 = nullsub_1(v17);
          v37 = *v35;
          v36 = v35[1];
          if (*v35 == v36)
          {
            v38 = 0;
          }

          else
          {
            v38 = 0;
            do
            {
              v39 = sub_FF7610(a1, v37, v169, &v154, v32, v33, v162, v159);
              v40 = sub_1167414(a1[2]);
              v41 = sub_29C98(a1[2]);
              v42 = sub_1011FD4(v169, v37, v40, v31, v41, v31[2]);
              v43 = v42[5];
              if (v42[4] != -1 && v43 != 0x7FFFFFFF && *(v42 + 3) != 0x7FFFFFFFFFFFFFFFLL)
              {
                if (v155)
                {
                  v43 = -v43;
                }

                v46 = v43 / 10;
                v47 = v43 % 10;
                if (v43 < 0)
                {
                  v48 = -5;
                }

                else
                {
                  v48 = 5;
                }

                LODWORD(v154) = v46 + v154 + (((103 * (v48 + v47)) >> 15) & 1) + ((103 * (v48 + v47)) >> 10);
              }

              v38 |= v39;
              v37 += 552;
            }

            while (v37 != v36);
          }

          if ((v38 & 0xC) != 0)
          {
            v30 = v150;
            if (sub_FBF428(v146))
            {
              sub_F6EB3C(&v154);
              if (v147[1] < v147[2])
              {
                sub_F64510(v147[1], &v154);
              }

              sub_10068CC(v147, &v154);
            }
          }

          else
          {
            sub_11751E4(v170, v17, *(a3 + 32));
            v49 = v147;
            v50 = v147[1];
            if (v50 < v147[2])
            {
              *v50 = 0;
              *(v50 + 8) = 0;
              *(v50 + 16) = 0;
              *v50 = *v17;
              *(v50 + 16) = *(v17 + 2);
              *v17 = 0;
              *(v17 + 1) = 0;
              *(v17 + 2) = 0;
              v28 = *(v17 + 24);
              *(v50 + 40) = *(v17 + 5);
              *(v50 + 24) = v28;
              *(v17 + 4) = 0;
              *(v17 + 5) = 0;
              *(v17 + 3) = 0;
              v29 = v50 + 48;
            }

            else
            {
              v29 = sub_D5B804(v147, v17);
              v49 = v147;
            }

            v30 = v150;
            v49[1] = v29;
          }

          v19 = v30 | v38;
          v151 |= (v38 >> 1) & 1;
          v17 += 48;
        }

        while (v17 != v148);
        v51 = v163[0];
        if (v163[0])
        {
          a5 = v147;
          v10 = v142;
          while (1)
          {
            v52 = a1[1];
            *(v52 + 1474) = 1;
            sub_100AF38((v52 + 185), 1);
            v53 = sub_100B6E4((v52 + 185), v51 + 2);
            if (v53 == -1)
            {
              v55 = v52[191];
              v56 = v52[190];
              if ((v55 - v56) >= 0x1FFFFFFFFFFFFFFFLL)
              {
                exception = __cxa_allocate_exception(0x10uLL);
                std::logic_error::logic_error(exception, "insert overflow");
              }

              v57 = v52[194];
              if (v56 && (*(v52 + 378) == *(v57 + 8 * v54) ? (v58 = *(v52 + 379) == *(v57 + 8 * v54 + 4)) : (v58 = 0), v58))
              {
                v52[190] = v56 - 1;
              }

              else
              {
                v52[191] = v55 + 1;
              }

              *(v57 + 8 * v54) = *(v51 + 2);
            }

            v59 = v53 == -1;
            v152 = *(v51 + 24);
            v153 = 0;
            sub_4C2A78(&v152, &v154);
            if (sub_4C2B70(&v154))
            {
              break;
            }

            if (sub_4C2B80(&v154))
            {
              v60 = sub_4C2BC4(&v154);
              goto LABEL_77;
            }

            if (sub_4C2B90(&v154))
            {
              v65 = *(sub_4C2C1C(&v154) + 8);
            }

            else
            {
              v65 = 0;
            }

LABEL_78:
            v66 = a1[13];
            if (v66)
            {
              v67 = vcnt_s8(v66);
              v67.i16[0] = vaddlv_u8(v67);
              if (v67.u32[0] > 1uLL)
              {
                v68 = v65;
                if (v65 >= *&v66)
                {
                  v68 = v65 % *&v66;
                }
              }

              else
              {
                v68 = (*&v66 - 1) & v65;
              }

              v69 = a1[12][v68];
              if (v69)
              {
                v70 = *v69;
                if (*v69)
                {
                  if (v67.u32[0] < 2uLL)
                  {
                    v71 = *&v66 - 1;
                    while (1)
                    {
                      v73 = v70[1];
                      if (v73 == v65)
                      {
                        if (sub_4C2D38((v70 + 2), &v154))
                        {
                          goto LABEL_98;
                        }
                      }

                      else if ((v73 & v71) != v68)
                      {
                        goto LABEL_99;
                      }

                      v70 = *v70;
                      if (!v70)
                      {
                        goto LABEL_99;
                      }
                    }
                  }

                  do
                  {
                    v72 = v70[1];
                    if (v72 == v65)
                    {
                      if (sub_4C2D38((v70 + 2), &v154))
                      {
LABEL_98:
                        sub_4C2D98(v70 + 2, &v154);
                        goto LABEL_100;
                      }
                    }

                    else
                    {
                      if (v72 >= *&v66)
                      {
                        v72 %= *&v66;
                      }

                      if (v72 != v68)
                      {
                        break;
                      }
                    }

                    v70 = *v70;
                  }

                  while (v70);
                }
              }
            }

LABEL_99:
            sub_D3B9CC(a1 + 12, &v154);
LABEL_100:
            v74 = v158;
            if (v158)
            {
              do
              {
                v75 = *v74;
                operator delete(v74);
                v74 = v75;
              }

              while (v75);
            }

            v76 = v157;
            v157 = 0;
            if (v76)
            {
              operator delete(v76);
            }

            v19 |= v59;
            v51 = *v51;
            if (!v51)
            {
              goto LABEL_110;
            }
          }

          v60 = sub_4C2BA0(&v154);
LABEL_77:
          v62 = 0x9DDFEA08EB382D69 * ((8 * (v60 & 0x1FFFFFFF) + 8) ^ HIDWORD(v60));
          v63 = 0x9DDFEA08EB382D69 * (HIDWORD(v60) ^ (v62 >> 47) ^ v62);
          v64 = (0x9DDFEA08EB382D69 * (v63 ^ (v63 >> 47)) + 0x388152A534) ^ 0xDEADBEEF;
          v65 = (v61 + 2654435769 + (v64 << 6) + (v64 >> 2)) ^ v64;
          goto LABEL_78;
        }

        a5 = v147;
      }

      v10 = v142;
LABEL_110:
      v77 = v160[0];
      if (v160[0])
      {
        do
        {
          v79 = a1[1];
          *(v79 + 1474) = 1;
          sub_100AF38((v79 + 185), 1);
          v80 = sub_100B6E4((v79 + 185), v77 + 2);
          if (v80 == -1)
          {
            v82 = v79[191];
            v83 = v79[190];
            if ((v82 - v83) >= 0x1FFFFFFFFFFFFFFFLL)
            {
              v138 = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(v138, "insert overflow");
            }

            v84 = v79[194];
            if (v83 && (*(v79 + 378) == *(v84 + 8 * v81) ? (v85 = *(v79 + 379) == *(v84 + 8 * v81 + 4)) : (v85 = 0), v85))
            {
              v79[190] = v83 - 1;
            }

            else
            {
              v79[191] = v82 + 1;
            }

            *(v84 + 8 * v81) = v77[2];
          }

          v19 |= v80 == -1;
          v77 = *v77;
        }

        while (v77);
        v86 = v160[0];
        v78 = v166 == v167;
        if (v160[0])
        {
          do
          {
            v87 = *v86;
            operator delete(v86);
            v86 = v87;
          }

          while (v87);
        }
      }

      else
      {
        v78 = v166 == v167;
      }

      v88 = v159[0];
      v159[0] = 0;
      if (v88)
      {
        operator delete(v88);
      }

      v89 = v163[0];
      if (v163[0])
      {
        do
        {
          v90 = *v89;
          operator delete(v89);
          v89 = v90;
        }

        while (v90);
      }

      v91 = v162[0];
      v162[0] = 0;
      if (v91)
      {
        operator delete(v91);
      }

      v92 = v165[0];
      if (!v165[0])
      {
        goto LABEL_146;
      }

      v93 = v165[1];
      v94 = v165[0];
      if (v165[1] != v165[0])
      {
        while (1)
        {
          if (*(v93 - 1) < 0)
          {
            operator delete(*(v93 - 3));
            v95 = v93 - 6;
            v96 = *(v93 - 6);
            if (v96)
            {
LABEL_141:
              v97 = *(v93 - 5);
              v98 = v96;
              if (v97 != v96)
              {
                do
                {
                  v97 = sub_4547F0(v97 - 552);
                }

                while (v97 != v96);
                v98 = *v95;
              }

              *(v93 - 5) = v96;
              operator delete(v98);
            }
          }

          else
          {
            v95 = v93 - 6;
            v96 = *(v93 - 6);
            if (v96)
            {
              goto LABEL_141;
            }
          }

          v93 = v95;
          if (v95 == v92)
          {
            v94 = v165[0];
            break;
          }
        }
      }

      v165[1] = v92;
      operator delete(v94);
LABEL_146:
      v99 = *a4;
      if ((v19 | v151))
      {
        v11 = 0;
        v144 &= v19 | v78;
        if (++v10 < v99)
        {
          continue;
        }
      }

      v140 = !v143;
      if (v10 < v99)
      {
        goto LABEL_154;
      }

      goto LABEL_151;
    }

    while (1)
    {
      if (*(v13 - 1) < 0)
      {
        operator delete(*(v13 - 3));
        v20 = v13 - 6;
        v21 = *(v13 - 6);
        if (v21)
        {
LABEL_21:
          v22 = *(v13 - 5);
          v23 = v21;
          if (v22 != v21)
          {
            do
            {
              v22 = sub_4547F0(v22 - 552);
            }

            while (v22 != v21);
            v23 = *v20;
          }

          *(v13 - 5) = v21;
          operator delete(v23);
        }
      }

      else
      {
        v20 = v13 - 6;
        v21 = *(v13 - 6);
        if (v21)
        {
          goto LABEL_21;
        }
      }

      v13 = v20;
      if (v20 == v12)
      {
        goto LABEL_7;
      }
    }
  }

  v10 = 0;
LABEL_151:
  if (v166 != v167 && &v166 != a5)
  {
    sub_100B81C(a5, v166, v167, 0xAAAAAAAAAAAAAAABLL * ((v167 - v166) >> 4));
  }

LABEL_154:
  if (((sub_FBF430(v146) | v140) & 1) != 0 || *(a1[3] + 8712) != 1)
  {
    goto LABEL_206;
  }

  v102 = *a5;
  v101 = a5[1];
  if (*a5 == v101)
  {
LABEL_162:
    if (!sub_FBF428(v146))
    {
LABEL_165:
      sub_D58FB0(a1[1]);
      sub_102CCD0();
      v105 = sub_FBF438(v146);
      sub_2512DC(v141, v105);
      v106 = v162[0];
      v107 = v162[1];
      if (v162[0] == v162[1])
      {
        if (!v162[0])
        {
          goto LABEL_206;
        }
      }

      else
      {
        do
        {
          sub_117028C(a1[3], v106, &v154);
          v109 = v156;
          if (v156)
          {
            do
            {
              v112 = *v109;
              v113 = v109[8];
              if (v113)
              {
                do
                {
                  v114 = *v113;
                  operator delete(v113);
                  v113 = v114;
                }

                while (v114);
              }

              v115 = v109[6];
              v109[6] = 0;
              if (v115)
              {
                operator delete(v115);
              }

              operator delete(v109);
              v109 = v112;
            }

            while (v112);
          }

          v110 = v154;
          v154 = 0;
          if (v110)
          {
            operator delete(v110);
          }

          if (!sub_F64B34(v106) || sub_FBF428(v146))
          {
            v111 = a5[1];
            if (v111 < a5[2])
            {
              *v111 = 0;
              *(v111 + 8) = 0;
              *(v111 + 16) = 0;
              *v111 = *v106;
              *(v111 + 16) = v106[2];
              *v106 = 0;
              v106[1] = 0;
              v106[2] = 0;
              v100 = *(v106 + 3);
              *(v111 + 40) = v106[5];
              *(v111 + 24) = v100;
              v106[4] = 0;
              v106[5] = 0;
              v106[3] = 0;
              v108 = v111 + 48;
            }

            else
            {
              v108 = sub_D5B804(a5, v106);
            }

            a5[1] = v108;
          }

          v106 += 6;
        }

        while (v106 != v107);
        v106 = v162[0];
        if (!v162[0])
        {
          goto LABEL_206;
        }
      }

      v120 = v162[1];
      v121 = v106;
      if (v162[1] == v106)
      {
LABEL_205:
        v162[1] = v106;
        operator delete(v121);
        goto LABEL_206;
      }

      while (1)
      {
        if (*(v120 - 1) < 0)
        {
          operator delete(*(v120 - 3));
          v122 = v120 - 6;
          v123 = *(v120 - 6);
          if (v123)
          {
LABEL_201:
            v124 = *(v120 - 5);
            v125 = v123;
            if (v124 != v123)
            {
              do
              {
                v124 = sub_4547F0(v124 - 552);
              }

              while (v124 != v123);
              v125 = *v122;
            }

            *(v120 - 5) = v123;
            operator delete(v125);
          }
        }

        else
        {
          v122 = v120 - 6;
          v123 = *(v120 - 6);
          if (v123)
          {
            goto LABEL_201;
          }
        }

        v120 = v122;
        if (v122 == v106)
        {
          v121 = v162[0];
          goto LABEL_205;
        }
      }
    }

    v103 = *a5;
    v104 = a5[1];
    if (v104 == *a5)
    {
LABEL_164:
      a5[1] = v103;
      goto LABEL_165;
    }

    while (1)
    {
      if (*(v104 - 1) < 0)
      {
        operator delete(*(v104 - 3));
        v116 = v104 - 6;
        v117 = *(v104 - 6);
        if (v117)
        {
LABEL_189:
          v118 = *(v104 - 5);
          v119 = v117;
          if (v118 != v117)
          {
            do
            {
              v118 = sub_4547F0(v118 - 552);
            }

            while (v118 != v117);
            v119 = *v116;
          }

          *(v104 - 5) = v117;
          operator delete(v119);
        }
      }

      else
      {
        v116 = v104 - 6;
        v117 = *(v104 - 6);
        if (v117)
        {
          goto LABEL_189;
        }
      }

      v104 = v116;
      if (v116 == v103)
      {
        goto LABEL_164;
      }
    }
  }

  while (1)
  {
    if (*(sub_F63FD8(v102) + 40) > 0.95)
    {
      *&v100 = *(sub_F63FE0(v102) + 40);
      if (*&v100 > 0.95)
      {
        break;
      }
    }

    v102 += 6;
    if (v102 == v101)
    {
      goto LABEL_162;
    }
  }

LABEL_206:
  v127 = *a5;
  v126 = a5[1];
  if (*a5 != v126)
  {
    do
    {
      sub_117107C(a1[3], v127);
      v127 += 6;
    }

    while (v127 != v126);
  }

  *(a1 + 34) = v10;
  *(a1 + 35) = sub_1084748((a1[1] + 42), *&v100);
  if ((*(a4 + 6) & 1) == 0)
  {
    sub_D58FB0(a1[1]);
  }

  sub_1161B14((a1 + 4));
  v128 = v166;
  if (v166)
  {
    v129 = v167;
    v130 = v166;
    if (v167 == v166)
    {
LABEL_223:
      v167 = v128;
      operator delete(v130);
      goto LABEL_224;
    }

    while (1)
    {
      if (*(v129 - 1) < 0)
      {
        operator delete(*(v129 - 3));
        v131 = v129 - 6;
        v132 = *(v129 - 6);
        if (v132)
        {
LABEL_219:
          v133 = *(v129 - 5);
          v134 = v132;
          if (v133 != v132)
          {
            do
            {
              v133 = sub_4547F0(v133 - 552);
            }

            while (v133 != v132);
            v134 = *v131;
          }

          *(v129 - 5) = v132;
          operator delete(v134);
        }
      }

      else
      {
        v131 = v129 - 6;
        v132 = *(v129 - 6);
        if (v132)
        {
          goto LABEL_219;
        }
      }

      v129 = v131;
      if (v131 == v128)
      {
        v130 = v166;
        goto LABEL_223;
      }
    }
  }

LABEL_224:
  if (v177)
  {
    v178 = v177;
    operator delete(v177);
  }

  v135 = v176;
  if (v176)
  {
    do
    {
      v136 = *v135;
      operator delete(v135);
      v135 = v136;
    }

    while (v136);
  }

  v137 = v175;
  v175 = 0;
  if (v137)
  {
    operator delete(v137);
  }

  if (v173)
  {
    v174 = v173;
    operator delete(v173);
  }

  if (v171)
  {
    v172 = v171;
    operator delete(v171);
  }
}

void sub_10055F4(_Unwind_Exception *a1)
{
  sub_CDCD6C(&STACK[0x318]);
  sub_CDCD6C(v1);
  sub_3BFA2C(&STACK[0x358]);
  _Unwind_Resume(a1);
}

void sub_10056E0(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  sub_D58FB0(a1[1]);
  v8 = a1 + 18;
  v7 = a1[18];
  a1[17] = 0;
  if (v7)
  {
    a1[19] = v7;
    operator delete(v7);
    v8 = a1 + 18;
    a1[18] = 0;
    a1[19] = 0;
    a1[20] = 0;
  }

  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
  sub_1174DA0(v23, *a1);
  sub_1011FA4(v22, *a1);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (*a3)
  {
    if (!sub_FBF428(a2))
    {
      goto LABEL_7;
    }

    v9 = *a4;
    v10 = a4[1];
    if (v10 == *a4)
    {
LABEL_6:
      a4[1] = v9;
LABEL_7:
      sub_101C0D4();
    }

    while (1)
    {
      if (*(v10 - 1) < 0)
      {
        operator delete(*(v10 - 3));
        v11 = v10 - 6;
        v12 = *(v10 - 6);
        if (v12)
        {
LABEL_14:
          v13 = *(v10 - 5);
          v14 = v12;
          if (v13 != v12)
          {
            do
            {
              v13 = sub_4547F0(v13 - 552);
            }

            while (v13 != v12);
            v14 = *v11;
          }

          *(v10 - 5) = v12;
          operator delete(v14);
        }
      }

      else
      {
        v11 = v10 - 6;
        v12 = *(v10 - 6);
        if (v12)
        {
          goto LABEL_14;
        }
      }

      v10 = v11;
      if (v11 == v9)
      {
        goto LABEL_6;
      }
    }
  }

  sub_FBF430(a2);
  v17 = *a4;
  v16 = a4[1];
  if (*a4 != v16)
  {
    do
    {
      sub_117107C(a1[3], v17);
      v17 += 48;
    }

    while (v17 != v16);
  }

  *(a1 + 34) = 0;
  *(a1 + 35) = sub_1084748((a1[1] + 42), v15);
  if ((*(a3 + 6) & 1) == 0)
  {
    sub_D58FB0(a1[1]);
  }

  sub_1161B14((a1 + 4));
  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  v18 = v29;
  if (v29)
  {
    do
    {
      v19 = *v18;
      operator delete(v18);
      v18 = v19;
    }

    while (v19);
  }

  v20 = v28;
  v28 = 0;
  if (v20)
  {
    operator delete(v20);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }
}

void sub_100663C(_Unwind_Exception *a1)
{
  sub_CDCD6C(&STACK[0x318]);
  sub_CDCD6C(v1);
  sub_3BFA2C(&STACK[0x358]);
  _Unwind_Resume(a1);
}

void sub_1006728(void *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 <= 0x555555555555555)
  {
    if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
    {
      v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
    {
      v4 = 0x555555555555555;
    }

    else
    {
      v4 = v3;
    }

    v7 = a1;
    if (v4)
    {
      if (v4 <= 0x555555555555555)
      {
        operator new();
      }

      sub_1808();
    }

    v5 = 48 * v2;
    v6 = 0;
    sub_F63718((48 * v2), a2);
  }

  sub_1794();
}

void sub_10068B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_CDD7B0(va);
  _Unwind_Resume(a1);
}

void sub_10068CC(void *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 <= 0x555555555555555)
  {
    if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
    {
      v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
    {
      v4 = 0x555555555555555;
    }

    else
    {
      v4 = v3;
    }

    v7 = a1;
    if (v4)
    {
      if (v4 <= 0x555555555555555)
      {
        operator new();
      }

      sub_1808();
    }

    v5 = 48 * v2;
    v6 = 0;
    sub_F64510((48 * v2), a2);
  }

  sub_1794();
}

void sub_1006A5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_CDD7B0(va);
  _Unwind_Resume(a1);
}

double sub_1006A70(uint64_t a1)
{
  LODWORD(result) = *(a1 + 16);
  v2 = 4;
  if (!vcvts_n_u32_f32(*&result, 2uLL))
  {
    do
    {
      if ((v2 & 0x8000000000000000) != 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        sub_195A000(exception, "resize overflow");
      }

      v2 *= 2;
    }

    while (!(*&result * v2));
  }

  if (*(a1 + 48) || v2 != *(a1 + 56))
  {

    *&result = sub_CDCE34(a1, v2).u64[0];
  }

  return result;
}

uint64_t *sub_1006B30(void *a1, uint64_t *a2)
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
    goto LABEL_40;
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
LABEL_40:
    operator new();
  }

  v12 = a2[1];
  v13 = a2[2];
  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v14 = v11[1];
      if (v14 == v6)
      {
        if (*(v11 + 4) == v2)
        {
          v15 = *(v11 + 10) == WORD2(v2) && *(v11 + 22) == BYTE6(v2);
          if (v15 && v11[3] == v12 && v11[4] == v13)
          {
            return v11;
          }
        }
      }

      else if ((v14 & (*&v7 - 1)) != v9)
      {
        goto LABEL_40;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_40;
      }
    }
  }

  while (1)
  {
    v17 = v11[1];
    if (v17 == v6)
    {
      break;
    }

    if (v17 >= *&v7)
    {
      v17 %= *&v7;
    }

    if (v17 != v9)
    {
      goto LABEL_40;
    }

LABEL_27:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_40;
    }
  }

  if (*(v11 + 4) != v2)
  {
    goto LABEL_27;
  }

  v18 = *(v11 + 10) == WORD2(v2) && *(v11 + 22) == BYTE6(v2);
  if (!v18 || v11[3] != v12 || v11[4] != v13)
  {
    goto LABEL_27;
  }

  return v11;
}