void sub_C681A4(_Unwind_Exception *a1)
{
  sub_11BD8(v1 + 32);
  sub_C68370(v2);
  _Unwind_Resume(a1);
}

double sub_C681E8(uint64_t a1)
{
  if (*(a1 + 1576) == 1)
  {
    v6 = v1;
    v7 = v2;
    sub_7E9A4(v5);
    sub_C6AB2C((a1 + 1624), (a1 + 1464));
    result = sub_7EA60(v5) + *(a1 + 1944);
    *(a1 + 1944) = result;
  }

  return result;
}

__n128 sub_C68270(void **a1, __n128 *a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = a1[1];
    v6 = *a1;
    if (v5 != v4)
    {
      v7 = v5 - 1920;
      do
      {
        v9 = *(v7 + 474);
        if (v9 != -1)
        {
          (off_2672C90[v9])(&v12, v7 + 272);
        }

        *(v7 + 474) = -1;
        v10 = *(v7 + 60);
        if (v10 != -1)
        {
          (off_2672CB0[v10])(&v13, v7);
        }

        *(v7 + 60) = -1;
        v8 = v7 == v4;
        v7 -= 1920;
      }

      while (!v8);
      v6 = *a1;
    }

    a1[1] = v4;
    operator delete(v6);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  result = *a2;
  *a1 = *a2;
  a1[2] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void **sub_C68370(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 1920;
      do
      {
        v7 = *(v5 + 474);
        if (v7 != -1)
        {
          (off_2672C90[v7])(&v10, v5 + 272);
        }

        *(v5 + 474) = -1;
        v8 = *(v5 + 60);
        if (v8 != -1)
        {
          (off_2672CB0[v8])(&v11, v5);
        }

        *(v5 + 60) = -1;
        v6 = v5 == v2;
        v5 -= 1920;
      }

      while (!v6);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_C68448(uint64_t *a1, uint64_t a2)
{
  v16 = *a1;
  v17 = *(a1 + 2);
  v18 = a1[2];
  v19 = *(a1 + 6);
  sub_C5A6E0(&v20, a1 + 4);
  v13 = *(a2 + 8);
  sub_C5A6E0(&__p, (a2 + 32));
  if (v17 == v13)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    do
    {
      sub_C68748(&v16);
      ++v3;
    }

    while (v17 != v13);
  }

  v4 = __p;
  if (__p)
  {
    v5 = v15;
    v6 = __p;
    if (v15 != __p)
    {
      do
      {
        v7 = *(v5 - 2);
        if (v7 != -1)
        {
          (off_2672C90[v7])(&v22, v5 - 408);
        }

        *(v5 - 2) = -1;
        v5 -= 410;
      }

      while (v5 != v4);
      v6 = __p;
    }

    v15 = v4;
    operator delete(v6);
  }

  v8 = v20;
  if (v20)
  {
    v9 = v21;
    v10 = v20;
    if (v21 != v20)
    {
      do
      {
        v11 = *(v9 - 2);
        if (v11 != -1)
        {
          (off_2672C90[v11])(&v22, v9 - 408);
        }

        *(v9 - 2) = -1;
        v9 -= 410;
      }

      while (v9 != v8);
      v10 = v20;
    }

    v21 = v8;
    operator delete(v10);
  }

  return v3;
}

void sub_C685F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_C62B4C(va);
  _Unwind_Resume(a1);
}

void sub_C68614(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_C62B4C(va);
  sub_C62B4C(va1);
  _Unwind_Resume(a1);
}

unsigned int *sub_C68630(unsigned int *a1, uint64_t a2)
{
  v3 = 0;
  *a1 = a2;
  a1[2] = 0;
  *(a1 + 2) = 0xFFFFFFFFLL;
  a1[6] = 0x7FFFFFFF;
  *(a1 + 5) = 0;
  *(a1 + 6) = 0;
  *(a1 + 4) = 0;
  while (1)
  {
    v4 = v3;
    v5 = 0xEEEEEEEEEEEEEEEFLL * ((*(*a1 + 16) - *(*a1 + 8)) >> 7);
    if (v5 <= v4)
    {
      break;
    }

    v6 = sub_C58590((*a1 + 8), v4);
    v7 = *(v6 + 1904) == -1 || *(v6 + 1908) == 0;
    v4 = a1[2];
    if (v7 && *(v6 + 248) == 2)
    {
      if (v4 == -1)
      {
        goto LABEL_16;
      }

      v5 = 0xEEEEEEEEEEEEEEEFLL * ((*(*a1 + 16) - *(*a1 + 8)) >> 7);
      break;
    }

    v3 = v4 + 1;
    a1[2] = v4 + 1;
    if (v4 == -2)
    {
      goto LABEL_16;
    }
  }

  if (v5 <= v4)
  {
    a1[2] = -1;
  }

LABEL_16:
  sub_C62BF4(a1);
  return a1;
}

void sub_C68748(unsigned int *a1)
{
  v2 = a1[2];
  if (v2 == -1)
  {
    goto LABEL_13;
  }

  v3 = v2 + 1;
  a1[2] = v3;
  if (0xEEEEEEEEEEEEEEEFLL * ((*(*a1 + 16) - *(*a1 + 8)) >> 7) <= v3)
  {
    goto LABEL_19;
  }

  if (v3 == -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v4 = v3;
    v5 = 0xEEEEEEEEEEEEEEEFLL * ((*(*a1 + 16) - *(*a1 + 8)) >> 7);
    if (v5 <= v4)
    {
      break;
    }

    v6 = sub_C58590((*a1 + 8), v4);
    v7 = *(v6 + 1904) == -1 || *(v6 + 1908) == 0;
    v4 = a1[2];
    if (v7 && *(v6 + 248) == 2)
    {
      if (v4 == -1)
      {
        goto LABEL_13;
      }

      v5 = 0xEEEEEEEEEEEEEEEFLL * ((*(*a1 + 16) - *(*a1 + 8)) >> 7);
      break;
    }

    LODWORD(v3) = v4 + 1;
    a1[2] = v4 + 1;
    if (v4 == -2)
    {
      goto LABEL_13;
    }
  }

  if (v5 > v4)
  {
LABEL_13:
    v9 = a1;
  }

  else
  {
LABEL_19:
    a1[2] = -1;
    v9 = a1;
  }

  sub_C62BF4(v9);
}

void **sub_C6886C(void **result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (0xEEEEEEEEEEEEEEEFLL * ((v8 - *result) >> 7) < a4)
  {
    if (v9)
    {
      v10 = result[1];
      v11 = *result;
      if (v10 != v9)
      {
        v12 = v10 - 1920;
        do
        {
          v14 = *(v12 + 474);
          if (v14 != -1)
          {
            (off_2672C90[v14])(&v40, v12 + 272);
          }

          *(v12 + 474) = -1;
          v15 = *(v12 + 60);
          if (v15 != -1)
          {
            (off_2672CB0[v15])(&v40, v12);
          }

          *(v12 + 60) = -1;
          v13 = v12 == v9;
          v12 -= 1920;
        }

        while (!v13);
        v11 = *v7;
      }

      v7[1] = v9;
      operator delete(v11);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (a4 <= 0x22222222222222)
    {
      v34 = 0xEEEEEEEEEEEEEEEFLL * (v8 >> 7);
      v35 = 2 * v34;
      if (2 * v34 <= a4)
      {
        v35 = a4;
      }

      if (v34 >= 0x11111111111111)
      {
        v36 = 0x22222222222222;
      }

      else
      {
        v36 = v35;
      }

      if (v36 <= 0x22222222222222)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v16 = result[1];
  v17 = v16 - v9;
  if (0xEEEEEEEEEEEEEEEFLL * ((v16 - v9) >> 7) < a4)
  {
    if (v16 == v9)
    {
      return sub_C68D08(v7, a2 + v17, a3);
    }

    v18 = 0;
    while (1)
    {
      v21 = *&v9[v18 + 240];
      v22 = *(a2 + v18 + 240);
      if (v21 == -1)
      {
        if (v22 == -1)
        {
          goto LABEL_21;
        }
      }

      else if (v22 == -1)
      {
        (off_2672CB0[v21])(&v40);
        *&v9[v18 + 240] = -1;
        goto LABEL_21;
      }

      v40 = &v9[v18];
      (off_2672CF0[v22])(&v40);
LABEL_21:
      v23 = &v9[v18];
      v23[248] = *(a2 + v18 + 248);
      *(v23 + 64) = *(a2 + v18 + 256);
      v24 = *&v9[v18 + 1896];
      v25 = *(a2 + v18 + 1896);
      if (v24 != -1)
      {
        if (v25 == -1)
        {
          (off_2672C90[v24])(&v40, &v9[v18 + 272]);
          *(v23 + 474) = -1;
          goto LABEL_15;
        }

LABEL_14:
        v40 = &v9[v18 + 272];
        (off_2672D00[v25])(&v40);
        goto LABEL_15;
      }

      if (v25 != -1)
      {
        goto LABEL_14;
      }

LABEL_15:
      v19 = &v9[v18];
      v20 = *(a2 + v18 + 1904);
      *(v19 + 956) = *(a2 + v18 + 1912);
      *(v19 + 238) = v20;
      v18 += 1920;
      if (v17 == v18)
      {
        return sub_C68D08(v7, a2 + v17, a3);
      }
    }
  }

  if (a2 == a3)
  {
    goto LABEL_49;
  }

  v26 = 0;
  do
  {
    v29 = *&v9[v26 + 240];
    v30 = *(a2 + v26 + 240);
    if (v29 == -1)
    {
      if (v30 == -1)
      {
        goto LABEL_34;
      }
    }

    else if (v30 == -1)
    {
      result = (off_2672CB0[v29])(&v40);
      *&v9[v26 + 240] = -1;
      goto LABEL_34;
    }

    v40 = &v9[v26];
    result = (off_2672CF0[v30])(&v40);
LABEL_34:
    v31 = &v9[v26];
    v31[248] = *(a2 + v26 + 248);
    *(v31 + 64) = *(a2 + v26 + 256);
    v32 = *&v9[v26 + 1896];
    v33 = *(a2 + v26 + 1896);
    if (v32 == -1)
    {
      if (v33 == -1)
      {
        goto LABEL_28;
      }

LABEL_27:
      v40 = &v9[v26 + 272];
      result = (off_2672D00[v33])(&v40);
      goto LABEL_28;
    }

    if (v33 != -1)
    {
      goto LABEL_27;
    }

    result = (off_2672C90[v32])(&v40, &v9[v26 + 272]);
    *(v31 + 474) = -1;
LABEL_28:
    v27 = &v9[v26];
    v28 = *(a2 + v26 + 1904);
    *(v27 + 956) = *(a2 + v26 + 1912);
    *(v27 + 238) = v28;
    v26 += 1920;
  }

  while (a2 + v26 != a3);
  v16 = v7[1];
  v9 += v26;
LABEL_49:
  if (v16 != v9)
  {
    v37 = v16 - 1920;
    do
    {
      v38 = *(v37 + 474);
      if (v38 != -1)
      {
        result = (off_2672C90[v38])(&v40, v37 + 272);
      }

      *(v37 + 474) = -1;
      v39 = *(v37 + 60);
      if (v39 != -1)
      {
        result = (off_2672CB0[v39])(&v40, v37);
      }

      *(v37 + 60) = -1;
      v13 = v37 == v9;
      v37 -= 1920;
    }

    while (!v13);
  }

  v7[1] = v9;
  return result;
}

uint64_t sub_C68D08(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v10 = *(result + 8);
  if (a2 == a3)
  {
    v6 = *(result + 8);
  }

  else
  {
    v5 = a2;
    v6 = *(result + 8);
    do
    {
      *v6 = 0;
      *(v6 + 240) = -1;
      v8 = *(v5 + 240);
      if (v8 != -1)
      {
        v11 = v6;
        result = (off_2672CE0[v8])(&v11, v5);
        *(v6 + 240) = v8;
      }

      *(v6 + 248) = *(v5 + 248);
      *(v6 + 256) = *(v5 + 256);
      *(v6 + 272) = 0;
      *(v6 + 1896) = -1;
      v9 = *(v5 + 1896);
      if (v9 != -1)
      {
        v11 = v6 + 272;
        result = (off_2672CC0[v9])(&v11, v5 + 272);
        *(v6 + 1896) = v9;
      }

      v7 = *(v5 + 1904);
      *(v6 + 1912) = *(v5 + 1912);
      *(v6 + 1904) = v7;
      v5 += 1920;
      v6 = v10 + 1920;
      v10 += 1920;
    }

    while (v5 != a3);
  }

  *(v3 + 8) = v6;
  return result;
}

void sub_C68E38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_A54EB0(v3);
  sub_C68E80(va);
  *(v2 + 8) = v4;
  _Unwind_Resume(a1);
}

void sub_C68E58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_C58D6C(v4);
  sub_A54CEC(v3);
  sub_C68E80(va);
  *(v2 + 8) = v5;
  _Unwind_Resume(a1);
}

uint64_t sub_C68E80(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = v2 - 1920;
      do
      {
        v6 = *(v4 + 1896);
        if (v6 != -1)
        {
          (off_2672C90[v6])(&v9, v4 + 272);
        }

        *(v4 + 1896) = -1;
        v7 = *(v4 + 240);
        if (v7 != -1)
        {
          (off_2672CB0[v7])(&v10, v4);
        }

        *(v4 + 240) = -1;
        v5 = v4 == v3;
        v4 -= 1920;
      }

      while (!v5);
    }
  }

  return a1;
}

void sub_C68F50(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    bzero(*a1, 8 * v6);
    v7 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (v7)
    {
      while (a2 != a3)
      {
        v7[4] = *(a2 + 4);
        v8 = *v7;
        sub_C69084(a1, v7);
        a2 = *a2;
        v7 = v8;
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      do
      {
        v9 = *v7;
        operator delete(v7);
        v7 = v9;
      }

      while (v9);
    }
  }

LABEL_7:
  if (a2 != a3)
  {
    operator new();
  }
}

void sub_C6903C(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

unsigned int *sub_C69084(uint64_t *a1, unsigned int *a2)
{
  v5 = a2 + 4;
  v4 = a2[4];
  *(v5 - 1) = v4;
  v6 = sub_13EC4(a1, v4, v5);
  v7 = a1[1];
  v8 = *(v5 - 1);
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    if (v8 >= *&v7)
    {
      v8 %= *&v7;
    }
  }

  else
  {
    v8 &= *&v7 - 1;
  }

  if (v6)
  {
    *a2 = *v6;
    *v6 = a2;
    if (*a2)
    {
      v10 = *(*a2 + 8);
      if (v9.u32[0] > 1uLL)
      {
        if (v10 >= *&v7)
        {
          v10 %= *&v7;
        }
      }

      else
      {
        v10 &= *&v7 - 1;
      }

      if (v10 != v8)
      {
        v13 = (*a1 + 8 * v10);
LABEL_19:
        *v13 = a2;
      }
    }
  }

  else
  {
    *a2 = a1[2];
    a1[2] = a2;
    v11 = *a1;
    *(*a1 + 8 * v8) = a1 + 2;
    if (*a2)
    {
      v12 = *(*a2 + 8);
      if (v9.u32[0] > 1uLL)
      {
        if (v12 >= *&v7)
        {
          v12 %= *&v7;
        }
      }

      else
      {
        v12 &= *&v7 - 1;
      }

      v13 = (v11 + 8 * v12);
      goto LABEL_19;
    }
  }

  ++a1[3];
  return a2;
}

uint64_t sub_C691B4(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  prime = *(a2 + 8);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_B07C(a1, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 8));
    v5 = *(a1 + 8);
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
    v7 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
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
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_C693E8(a1, i + 4);
  }

  return a1;
}

void ***sub_C692F8(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        v6 = v4 - 1920;
        do
        {
          v8 = *(v6 + 474);
          if (v8 != -1)
          {
            (off_2672C90[v8])(&v11, v6 + 272);
          }

          *(v6 + 474) = -1;
          v9 = *(v6 + 60);
          if (v9 != -1)
          {
            (off_2672CB0[v9])(&v12, v6);
          }

          *(v6 + 60) = -1;
          v7 = v6 == v3;
          v6 -= 1920;
        }

        while (!v7);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t *sub_C693E8(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (*(v7 + 4) == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

BOOL sub_C69720(void *a1, void *a2)
{
  v3 = a1[30];
  v2 = a1[31];
  v4 = a2[30];
  if (v2 - v3 == a2[31] - v4)
  {
    if (v3 == v2)
    {
LABEL_13:
      v7 = a1[33];
      v6 = a1[34];
      v8 = a2[33];
      if (v6 - v7 == a2[34] - v8)
      {
        if (v7 == v6)
        {
          return sub_C697F4(a1, a2);
        }

        while (*v7 == *v8 && *(v7 + 1) == v8[1])
        {
          v7 += 8;
          v8 += 2;
          if (v7 == v6)
          {
            return sub_C697F4(a1, a2);
          }
        }
      }
    }

    else
    {
      while (*v3 == *v4)
      {
        v5 = *(v3 + 8) == *(v4 + 8) && *(v3 + 4) == *(v4 + 4);
        if (!v5 || *(v3 + 16) != *(v4 + 16) || *(v3 + 24) != *(v4 + 24) || *(v3 + 32) != *(v4 + 32))
        {
          break;
        }

        v3 += 40;
        v4 += 40;
        if (v3 == v2)
        {
          goto LABEL_13;
        }
      }
    }
  }

  return 0;
}

BOOL sub_C697F4(uint64_t a1, uint64_t a2)
{
  result = sub_E67C54(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = *(a1 + 176);
  v6 = *(a1 + 184);
  v7 = *(a2 + 176);
  if (v6 - v5 != *(a2 + 184) - v7)
  {
    return 0;
  }

  if (v5 == v6)
  {
LABEL_6:
    v8 = *(a1 + 200);
    v9 = *(a1 + 208);
    v10 = *(a2 + 200);
    if (v9 - v8 == *(a2 + 208) - v10)
    {
      for (; v8 != v9; v10 += 104)
      {
        result = sub_C69920(v8, v10);
        if (!result)
        {
          return result;
        }

        v8 += 104;
      }

      if (*(a1 + 224) == *(a2 + 224) && *(a1 + 228) == *(a2 + 228) && *(a1 + 229) == *(a2 + 229))
      {
        return *(a1 + 230) == *(a2 + 230);
      }
    }

    return 0;
  }

  while (1)
  {
    result = sub_C69920(v5, v7);
    if (!result)
    {
      return result;
    }

    v5 += 104;
    v7 += 104;
    if (v5 == v6)
    {
      goto LABEL_6;
    }
  }
}

BOOL sub_C69920(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || *(a1 + 36) != *(a2 + 36))
  {
    return 0;
  }

  v2 = *(a1 + 41);
  v3 = *(a2 + 41);
  if (v2 == v3 && *(a1 + 41))
  {
    if (*(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  v4 = *(a1 + 43);
  v5 = *(a2 + 43);
  if (v4 == v5 && *(a1 + 43))
  {
    v4 = *(a1 + 42);
    v5 = *(a2 + 42);
  }

  if (v4 == v5 && *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64))
  {
    return *(a1 + 72) == *(a2 + 72);
  }

  return 0;
}

unint64_t sub_C69A30(void *a1, void *a2)
{
  v2 = *(a2 + 248);
  v3 = 0xFFFFFFFFLL;
  if (v2 <= 1)
  {
    if (*(a2 + 248))
    {
      LODWORD(v4) = -1;
      if (v2 != 1)
      {
        return v4 | (v3 << 32);
      }

      if (!*(a2 + 60))
      {
        v5 = sub_503184(a1[513] + 24, __ROR8__(*a2, 32), 0, "road access point");
        v6 = *(v5 - *v5 + 8);
        goto LABEL_15;
      }
    }

    else if (!*(a2 + 60))
    {
      v5 = sub_503310(a1[501] + 24, __ROR8__(*a2, 32), 0, "access point");
      v6 = *(v5 - *v5 + 14);
LABEL_15:
      v3 = v5 + v6;
      LODWORD(v4) = *v3;
      LODWORD(v3) = *(v3 + 4);
      if (v3 >= 0xFFFFFFFE)
      {
        v3 = 4294967294;
      }

      else
      {
        v3 = v3;
      }

      return v4 | (v3 << 32);
    }

LABEL_62:
    sub_5AF20();
  }

  if (v2 != 2)
  {
    LODWORD(v4) = -1;
    if (v2 != 3)
    {
      return v4 | (v3 << 32);
    }

    if (*(a2 + 60) != 1)
    {
      goto LABEL_62;
    }

    v8 = a2[22];
    v7 = a2[23];
    v9 = v7 - v8;
    v11 = a2[25];
    v10 = a2[26];
    v12 = v10 - v11;
    v13 = 0x4EC4EC4EC4EC4EC5 * ((v7 - v8) >> 3) + 0x4EC4EC4EC4EC4EC5 * ((v10 - v11) >> 3);
    if (!v13)
    {
      v3 = 0xFFFFFFFFLL;
      LODWORD(v4) = -1;
      return v4 | (v3 << 32);
    }

    if (v8 == v7)
    {
      v14 = 0;
      goto LABEL_34;
    }

    if ((v9 - 104) >= 0x68)
    {
      v20 = 0;
      v21 = 0;
      v22 = (v9 - 104) / 0x68uLL + 1;
      v15 = v8 + 104 * (v22 & 0x7FFFFFFFFFFFFFELL);
      v23 = (v8 + 112);
      v24 = v22 & 0x7FFFFFFFFFFFFFELL;
      do
      {
        v25 = *(v23 - 26);
        v26 = *v23;
        v23 += 52;
        v20 += v25;
        v21 += v26;
        v24 -= 2;
      }

      while (v24);
      v14 = v21 + v20;
      if (v22 == (v22 & 0x7FFFFFFFFFFFFFELL))
      {
LABEL_34:
        if (v11 == v10)
        {
          v27 = 0;
          goto LABEL_42;
        }

        if ((v12 - 104) >= 0x68)
        {
          v29 = 0;
          v30 = 0;
          v31 = (v12 - 104) / 0x68uLL + 1;
          v28 = v11 + 104 * (v31 & 0x7FFFFFFFFFFFFFELL);
          v32 = (v11 + 112);
          v33 = v31 & 0x7FFFFFFFFFFFFFELL;
          do
          {
            v34 = *(v32 - 26);
            v35 = *v32;
            v32 += 52;
            v29 += v34;
            v30 += v35;
            v33 -= 2;
          }

          while (v33);
          v27 = v30 + v29;
          if (v31 == (v31 & 0x7FFFFFFFFFFFFFELL))
          {
LABEL_42:
            if (v8 == v7)
            {
              v37 = 0;
              goto LABEL_50;
            }

            v36 = v9 - 104;
            if ((v9 - 104) >= 0x68)
            {
              v39 = 0;
              v40 = 0;
              v41 = v36 / 0x68 + 1;
              v38 = v8 + 104 * (v41 & 0x7FFFFFFFFFFFFFELL);
              v42 = (v8 + 116);
              v43 = v41 & 0x7FFFFFFFFFFFFFELL;
              do
              {
                v44 = *(v42 - 26);
                v45 = *v42;
                v42 += 52;
                v39 += v44;
                v40 += v45;
                v43 -= 2;
              }

              while (v43);
              v37 = v40 + v39;
              if (v41 == (v41 & 0x7FFFFFFFFFFFFFELL))
              {
LABEL_50:
                v46 = v27 + v14;
                if (v11 == v10)
                {
                  v48 = 0;
                }

                else
                {
                  v47 = v12 - 104;
                  if ((v12 - 104) >= 0x68)
                  {
                    v50 = 0;
                    v51 = 0;
                    v52 = v47 / 0x68 + 1;
                    v49 = v11 + 104 * (v52 & 0x7FFFFFFFFFFFFFELL);
                    v53 = (v11 + 116);
                    v54 = v52 & 0x7FFFFFFFFFFFFFELL;
                    do
                    {
                      v55 = *(v53 - 26);
                      v56 = *v53;
                      v53 += 52;
                      v50 += v55;
                      v51 += v56;
                      v54 -= 2;
                    }

                    while (v54);
                    v48 = v51 + v50;
                    if (v52 == (v52 & 0x7FFFFFFFFFFFFFELL))
                    {
                      goto LABEL_58;
                    }
                  }

                  else
                  {
                    v48 = 0;
                    v49 = v11;
                  }

                  do
                  {
                    v48 += *(v49 + 12);
                    v49 += 104;
                  }

                  while (v49 != v10);
                }

LABEL_58:
                v57 = v48 + v37;
                LODWORD(v4) = sub_C69E24(v46 / v13);
                v58 = sub_C69E24(v57 / v13);
                if (v58 >= 0xFFFFFFFE)
                {
                  v3 = 4294967294;
                }

                else
                {
                  v3 = v58;
                }

                return v4 | (v3 << 32);
              }
            }

            else
            {
              v37 = 0;
              v38 = v8;
            }

            do
            {
              v37 += *(v38 + 12);
              v38 += 104;
            }

            while (v38 != v7);
            goto LABEL_50;
          }
        }

        else
        {
          v27 = 0;
          v28 = a2[25];
        }

        do
        {
          v27 += *(v28 + 8);
          v28 += 104;
        }

        while (v28 != v10);
        goto LABEL_42;
      }
    }

    else
    {
      v14 = 0;
      v15 = a2[22];
    }

    do
    {
      v14 += *(v15 + 8);
      v15 += 104;
    }

    while (v15 != v7);
    goto LABEL_34;
  }

  if (*(a2 + 60))
  {
    goto LABEL_62;
  }

  if (HIDWORD(*a2) != 1 || *a2 + 3 >= 2)
  {
    v17 = sub_502FF8(a1[515] + 24, __ROR8__(*a2, 32), 0, "stop");
    v18 = v17 + *(v17 - *v17 + 6);
    v19 = *v18;
    LODWORD(v18) = *(v18 + 4);
    if (v18 >= 0xFFFFFFFE)
    {
      v18 = 4294967294;
    }

    else
    {
      v18 = v18;
    }

    v4 = v19 | (v18 << 32);
    v3 = HIDWORD(v4);
  }

  else
  {
    LODWORD(v4) = -1;
    v3 = 0xFFFFFFFFLL;
  }

  return v4 | (v3 << 32);
}

unint64_t sub_C69E24(unint64_t result)
{
  if (HIDWORD(result))
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v8, v1);
    sub_23E08("narrowing ", &v8, &v9);
    v3 = std::string::append(&v9, " failed", 7uLL);
    v4 = *&v3->__r_.__value_.__l.__data_;
    v11 = v3->__r_.__value_.__r.__words[2];
    v10 = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    if (v11 >= 0)
    {
      v5 = &v10;
    }

    else
    {
      v5 = v10;
    }

    if (v11 >= 0)
    {
      v6 = HIBYTE(v11);
    }

    else
    {
      v6 = *(&v10 + 1);
    }

    v7 = sub_2D390(exception, v5, v6);
  }

  return result;
}

void sub_C69EF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

void sub_C6A188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  if (a19 == 1)
  {
    sub_49AEC0((v50 + 8));
  }

  sub_44D36C(&a50);
  sub_11ABCB4(v51 - 216);
  _Unwind_Resume(a1);
}

uint64_t sub_C6A1E4@<X0>(void *a1@<X0>, void *a2@<X1>, unint64_t *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v6 = *(a3 + 248);
  if (v6 == 3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v19 = sub_2D390(exception, "cannot get snapped entity for snapped location", 0x2EuLL);
  }

  if (!a4)
  {
LABEL_11:
    sub_C69A30(a1, a3);
    sub_C69F78(a2);
  }

  if (!*(a3 + 248))
  {
    if (!*(a3 + 60))
    {
      v8 = *a3;
      v9 = sub_3D4D04(a1[501] + 24, HIDWORD(*a3), 1);
      if (v9)
      {
        v13 = &v9[-*v9];
        if (*v13 >= 0x11u)
        {
          v11 = *(v13 + 8);
          if (v11)
          {
            goto LABEL_21;
          }
        }
      }

LABEL_25:
      v15 = 0;
      v16 = a5;

      return sub_322264(v16, v15);
    }

LABEL_29:
    sub_5AF20();
  }

  if (v6 == 1)
  {
    if (!*(a3 + 60))
    {
      v8 = *a3;
      v9 = sub_3D4D04(a1[513] + 24, HIDWORD(*a3), 1);
      if (v9)
      {
        v12 = &v9[-*v9];
        if (*v12 >= 0x13u)
        {
          v11 = *(v12 + 9);
          if (v11)
          {
            goto LABEL_21;
          }
        }
      }

      goto LABEL_25;
    }

    goto LABEL_29;
  }

  if (v6 != 2)
  {
    goto LABEL_11;
  }

  if (*(a3 + 60))
  {
    goto LABEL_29;
  }

  v8 = *a3;
  v9 = sub_3D4D04(a1[515] + 24, HIDWORD(*a3), 1);
  if (!v9)
  {
    goto LABEL_25;
  }

  v10 = &v9[-*v9];
  if (*v10 < 0xFu)
  {
    goto LABEL_25;
  }

  v11 = *(v10 + 7);
  if (!v11)
  {
    goto LABEL_25;
  }

LABEL_21:
  v14 = &v9[v11 + *&v9[v11]];
  if (*v14 <= v8)
  {
    goto LABEL_25;
  }

  v15 = &v14[4 * v8 + 4 + *&v14[4 * v8 + 4]];
  v16 = a5;

  return sub_322264(v16, v15);
}

void sub_C6A3C8(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  sub_1016070(v10, a1);
  sub_10166A8(v10, a2, 6, a3, a4);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  v7 = v16;
  if (v16)
  {
    do
    {
      v8 = *v7;
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = v15;
  v15 = 0;
  if (v9)
  {
    operator delete(v9);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }
}

void sub_C6A490(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  sub_1016070(v10, a1);
  sub_10160EC(v10, a2, a3, a4);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  v7 = v16;
  if (v16)
  {
    do
    {
      v8 = *v7;
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = v15;
  v15 = 0;
  if (v9)
  {
    operator delete(v9);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }
}

void sub_C6A554(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  if (*(a3 + 248) == 3)
  {
    if (*(a3 + 240) != 1)
    {
      sub_5AF20();
    }

    sub_C6A490(a2, a3, a4, a6);
  }

  else
  {
    sub_C6A1E4(a1, a2, a3, a5, v13);
    sub_C6A3C8(a2, v13, a4, a6);
    v9 = __p;
    if (__p)
    {
      v10 = v15;
      v11 = __p;
      if (v15 != __p)
      {
        do
        {
          v12 = *(v10 - 9);
          v10 -= 4;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v11 = __p;
      }

      v15 = v9;
      operator delete(v11);
    }
  }
}

void sub_C6A644(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_C6A790(va);
  _Unwind_Resume(a1);
}

void sub_C6A658(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  sub_C6A804(a4, (a3[1] - *a3) >> 8);
  v8 = *a3;
  for (i = a3[1]; v8 != i; v8 += 256)
  {
    while (1)
    {
      sub_C6A554(a1, a2, v8, 0, 1, __p);
      v11 = a4[1];
      if (v11 >= a4[2])
      {
        break;
      }

      *v11 = 0;
      v11[1] = 0;
      v11[2] = 0;
      *v11 = *__p;
      __p[0] = 0;
      __p[1] = 0;
      v10 = v16;
      v11[2] = v15;
      v11[3] = v10;
      v15 = 0;
      a4[1] = (v11 + 4);
      v8 += 256;
      if (v8 == i)
      {
        return;
      }
    }

    v12 = sub_C6A920(a4, __p);
    v13 = __p[0];
    a4[1] = v12;
    if (v13)
    {
      __p[1] = v13;
      operator delete(v13);
    }
  }
}

uint64_t sub_C6A790(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 88);
    v4 = *(a1 + 80);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 9);
        v3 -= 4;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 80);
    }

    *(a1 + 88) = v2;
    operator delete(v4);
  }

  return a1;
}

void *sub_C6A804(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

uint64_t sub_C6A920(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 32 * v2;
  *v7 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  *(a2 + 16) = 0;
  *(v7 + 16) = v8;
  *(v7 + 24) = v9;
  v10 = 32 * v2 + 32;
  v11 = *a1;
  v12 = a1[1];
  v13 = v7 + *a1 - v12;
  if (*a1 != v12)
  {
    v14 = *a1;
    v15 = v13;
    do
    {
      *v15 = *v14;
      v16 = v14[3];
      *(v15 + 16) = v14[2];
      *v14 = 0;
      v14[1] = 0;
      v14[2] = 0;
      *(v15 + 24) = v16;
      v14 += 4;
      v15 += 32;
    }

    while (v14 != v12);
    do
    {
      v17 = *v11;
      if (*v11)
      {
        v11[1] = v17;
        operator delete(v17);
      }

      v11 += 4;
    }

    while (v11 != v12);
    v11 = *a1;
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

void sub_C6AA6C(uint64_t *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = a3[1];
  for (i = a3[2]; v10 != i; v10 += 296)
  {
    sub_C6AE94(a1, a2, v10, a4, a5);
  }

  v12 = a3[30];
  v13 = a3[31];
  while (v12 != v13)
  {
    v14 = *(v12 + 72);
    for (j = *(v12 + 80); v14 != j; v14 += 296)
    {
      sub_C6AE94(a1, a2, v14, a4, a5);
    }

    v12 += 96;
  }
}

void sub_C6AB2C(void *a1, _BYTE *a2)
{
  sub_C68630(&v10, a2);
  while (v11 != -1)
  {
    v4 = v12;
    if (*a2)
    {
      v5 = v12;
    }

    else
    {
      v5 = 0x1FFFFFFFELL;
    }

    if (*a2)
    {
      v4 = 0x1FFFFFFFDLL;
    }

    v15[0] = v5;
    v15[1] = v4;
    sub_C62E30(a1, v15);
    sub_C68748(&v10);
  }

  v6 = __p;
  if (__p)
  {
    v7 = v14;
    v8 = __p;
    if (v14 != __p)
    {
      do
      {
        v9 = *(v7 - 2);
        if (v9 != -1)
        {
          (off_2672D20[v9])(v15, v7 - 408);
        }

        *(v7 - 2) = -1;
        v7 -= 410;
      }

      while (v7 != v6);
      v8 = __p;
    }

    v14 = v6;
    operator delete(v8);
  }
}

void sub_C6AC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_C62B4C(&a9);
  sub_C62B4C(&a16);
  _Unwind_Resume(a1);
}

void sub_C6AC78(void *a1, _BYTE *a2)
{
  sub_C68630(&v20, a2);
  while (v21 != -1)
  {
    v4 = v22;
    if (*a2)
    {
      v5 = v22;
    }

    else
    {
      v5 = 0x1FFFFFFFELL;
    }

    if (*a2)
    {
      v4 = 0x1FFFFFFFDLL;
    }

    v27[0] = v5;
    v27[1] = v4;
    v6 = __p;
    if (__p == v24)
    {
      v7 = 0;
      v15 = 0;
    }

    else
    {
      v7 = 0;
      LODWORD(v8) = 0;
      LODWORD(v9) = 0;
      do
      {
        v10 = v6[408];
        if (v10 == 1)
        {
          v13 = v6[138];
          if (v13 == 0x7FFFFFFF)
          {
            goto LABEL_23;
          }

          LODWORD(v11) = 0;
          v14 = 0;
        }

        else
        {
          if (v10 == 3)
          {
            v11 = v6[406];
            if (v11 == 0x7FFFFFFF || (v11 & 0xFFFFFFFF00000000) == 0x7FFFFFFF00000000)
            {
LABEL_23:
              v15 = 0x7FFFFFFF7FFFFFFFLL;
              v7 = 0x7FFFFFFF;
              goto LABEL_25;
            }
          }

          else
          {
            if (v10 != 2)
            {
              goto LABEL_23;
            }

            v11 = v6[4] << 32;
            if (v11 == 0x7FFFFFFF00000000)
            {
              goto LABEL_23;
            }
          }

          v13 = 0;
          v14 = HIDWORD(v11);
        }

        v8 = (v11 + v8);
        v9 = (v9 + v14);
        v7 += v13;
        v6 += 410;
      }

      while (v6 != v24);
      v15 = v8 | (v9 << 32);
    }

LABEL_25:
    v25 = v15;
    v26 = v7;
    sub_C6E014(a1, v27);
    sub_C68748(&v20);
  }

  v16 = __p;
  if (__p)
  {
    v17 = v24;
    v18 = __p;
    if (v24 != __p)
    {
      do
      {
        v19 = *(v17 - 2);
        if (v19 != -1)
        {
          (off_2672D20[v19])(v27, v17 - 408);
        }

        *(v17 - 2) = -1;
        v17 -= 410;
      }

      while (v17 != v16);
      v18 = __p;
    }

    v24 = v16;
    operator delete(v18);
  }
}

void sub_C6AE78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_C62B4C(&a9);
  sub_C62B4C(&a16);
  _Unwind_Resume(a1);
}

void sub_C6AE94(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a3 + 200);
  v48 = *(a3 + 208);
  if (v5 != v48)
  {
    while (*(v5 + 24) != 1)
    {
LABEL_3:
      v5 += 9;
      if (v5 == v48)
      {
        return;
      }
    }

    v9 = *v5;
    v8 = v5[1];
    while (1)
    {
      if (v9 == v8)
      {
        goto LABEL_3;
      }

      if (*(v9 + 160) != 1)
      {
        sub_5AF20();
      }

      v11 = *(v9 + 12);
      v12 = *(v9 + 20);
      v53[0] = v11;
      v53[1] = v12;
      v13 = a2[1];
      v14 = HIDWORD(v11);
      v15 = HIDWORD(v12);
      if (v13)
      {
        v16 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v11 ^ (v11 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v11 ^ (v11 >> 33))) >> 33));
        v17 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v12 ^ (v12 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v12 ^ (v12 >> 33))) >> 33));
        v18 = ((v17 ^ (v17 >> 33)) + ((((v16 ^ (v16 >> 33)) + 0x388152A534) ^ 0xDEADBEEF) << 6) + ((((v16 ^ (v16 >> 33)) + 0x388152A534) ^ 0xDEADBEEF) >> 2) + 2654435769u) ^ ((v16 ^ (v16 >> 33)) + 0x388152A534) ^ 0xDEADBEEF;
        v19 = vcnt_s8(v13);
        v19.i16[0] = vaddlv_u8(v19);
        if (v19.u32[0] > 1uLL)
        {
          v20 = v18;
          if (v18 >= *&v13)
          {
            v20 = v18 % *&v13;
          }
        }

        else
        {
          v20 = v18 & (*&v13 - 1);
        }

        v21 = *(*a2 + 8 * v20);
        if (v21)
        {
          v22 = *v21;
          if (v22)
          {
            if (v19.u32[0] < 2uLL)
            {
              v23 = *&v13 - 1;
              while (1)
              {
                v26 = v22[1];
                if (v18 == v26)
                {
                  v27 = *(v22 + 5) == HIDWORD(v11) && *(v22 + 4) == v11;
                  if (v27 && v22[3] == v12)
                  {
                    goto LABEL_8;
                  }
                }

                else if ((v26 & v23) != v20)
                {
                  goto LABEL_42;
                }

                v22 = *v22;
                if (!v22)
                {
                  goto LABEL_42;
                }
              }
            }

            do
            {
              v24 = v22[1];
              if (v18 == v24)
              {
                v25 = *(v22 + 5) == HIDWORD(v11) && *(v22 + 4) == v11;
                if (v25 && v22[3] == v12)
                {
                  goto LABEL_8;
                }
              }

              else
              {
                if (v24 >= *&v13)
                {
                  v24 %= *&v13;
                }

                if (v24 != v20)
                {
                  break;
                }
              }

              v22 = *v22;
            }

            while (v22);
          }
        }
      }

LABEL_42:
      v28 = *(v9 + 12);
      if (v14 == 1 && v28 == -2)
      {
        if (v15 != 1 || v12 != -3)
        {
          sub_C6C73C(a1, a4, v12, &__p);
          sub_C6E86C(a2, v53);
          v36 = __p;
          if (__p)
          {
            v37 = v52;
            v38 = __p;
            if (v52 != __p)
            {
              do
              {
                v39 = *(v37 - 2);
                if (v39 != -1)
                {
                  (off_2672D20[v39])(&v54, v37 - 408);
                }

                *(v37 - 2) = -1;
                v37 -= 410;
              }

              while (v37 != v36);
              v38 = __p;
            }

            v52 = v36;
            operator delete(v38);
          }

          v28 = *(v9 + 12);
          LODWORD(v14) = *(v9 + 16);
          if (v28 == -2 && v14 == 1 || *(v9 + 24) != 1 || *(v9 + 20) != -3)
          {
            goto LABEL_85;
          }

LABEL_58:
          sub_C6C73C(a1, a5, *(v9 + 12), &__p);
          sub_C6E86C(a2, v53);
          v32 = __p;
          if (__p)
          {
            v33 = v52;
            v34 = __p;
            if (v52 != __p)
            {
              do
              {
                v35 = *(v33 - 2);
                if (v35 != -1)
                {
                  (off_2672D20[v35])(&v54, v33 - 408);
                }

                *(v33 - 2) = -1;
                v33 -= 410;
              }

              while (v33 != v32);
              v34 = __p;
            }

            v52 = v32;
            operator delete(v34);
          }

          v28 = *(v9 + 12);
          LODWORD(v14) = *(v9 + 16);
          goto LABEL_85;
        }

        v28 = -2;
        LODWORD(v12) = -3;
        LODWORD(v15) = 1;
        LODWORD(v14) = 1;
      }

      if ((v28 != -2 || v14 != 1) && v15 == 1 && v12 == -3)
      {
        goto LABEL_58;
      }

LABEL_85:
      v43 = *(v9 + 20);
      v44 = v14 == HIDWORD(v43) && v28 == v43;
      if (!v44 && (v14 != 1 || v28 != -2) && (HIDWORD(v43) != 1 || v43 != -3))
      {
        sub_C6C2B0(a1, *(v9 + 12), v43, &__p);
        sub_C6E86C(a2, v53);
        v45 = __p;
        if (__p)
        {
          v46 = v52;
          v10 = __p;
          if (v52 != __p)
          {
            do
            {
              v47 = *(v46 - 2);
              if (v47 != -1)
              {
                (off_2672D20[v47])(&v54, v46 - 408);
              }

              *(v46 - 2) = -1;
              v46 -= 410;
            }

            while (v46 != v45);
            v10 = __p;
          }

          v52 = v45;
          operator delete(v10);
        }
      }

LABEL_8:
      v9 += 168;
    }
  }
}

void sub_C6B304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_C578E0(va);
  _Unwind_Resume(a1);
}

void sub_C6B318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_C578E0(va);
  _Unwind_Resume(a1);
}

void sub_C6B32C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_C578E0(va);
  _Unwind_Resume(a1);
}

void sub_C6B34C(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (sub_C6B628(a1, a2, a3))
  {

    sub_C6B808(a2, a3, a4);
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    sub_C6BA18(a1, a2, a3, &__p);
    sub_C5AA90(a4, a4[1], __p, v21, 0x4FEC04FEC04FEC05 * ((v21 - __p) >> 3));
    v8 = __p;
    if (__p)
    {
      v9 = v21;
      v10 = __p;
      if (v21 != __p)
      {
        do
        {
          v11 = *(v9 - 2);
          if (v11 != -1)
          {
            (off_2672D20[v11])(&v22, v9 - 408);
          }

          *(v9 - 2) = -1;
          v9 -= 410;
        }

        while (v9 != v8);
        v10 = __p;
      }

      v21 = v8;
      operator delete(v10);
    }

    sub_C6BD1C();
    sub_C5AA90(a4, a4[1], __p, v21, 0x4FEC04FEC04FEC05 * ((v21 - __p) >> 3));
    v12 = __p;
    if (__p)
    {
      v13 = v21;
      v14 = __p;
      if (v21 != __p)
      {
        do
        {
          v15 = *(v13 - 2);
          if (v15 != -1)
          {
            (off_2672D20[v15])(&v22, v13 - 408);
          }

          *(v13 - 2) = -1;
          v13 -= 410;
        }

        while (v13 != v12);
        v14 = __p;
      }

      v21 = v12;
      operator delete(v14);
    }

    sub_C6BFA8(a1, a3, &__p);
    sub_C5AA90(a4, a4[1], __p, v21, 0x4FEC04FEC04FEC05 * ((v21 - __p) >> 3));
    v16 = __p;
    if (__p)
    {
      v17 = v21;
      v18 = __p;
      if (v21 != __p)
      {
        do
        {
          v19 = *(v17 - 2);
          if (v19 != -1)
          {
            (off_2672D20[v19])(&v22, v17 - 408);
          }

          *(v17 - 2) = -1;
          v17 -= 410;
        }

        while (v17 != v16);
        v18 = __p;
      }

      v21 = v16;
      operator delete(v18);
    }
  }
}

void sub_C6B5BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  sub_C578E0(&a9);
  sub_C578E0(v9);
  _Unwind_Resume(a1);
}

BOOL sub_C6B628(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  if (HIDWORD(a2) == 1 && (a2 + 3) < 2)
  {
    return 0;
  }

  v6 = *a1;
  v7 = sub_502FF8(*(*a1 + 4120) + 24, __ROR8__(a2, 32), 0, "stop");
  v8 = (v7 - *v7);
  if (*v8 >= 0xDu && (v9 = v8[6]) != 0 && ((v11 = *(v7 + v9), v10 = *(v7 + v9 + 4), v10 != -1) ? (v12 = v11 == 0) : (v12 = 1), !v12 && (v13 = sub_93D480(*(v6 + 4128) + 24, __ROR8__(v10 | (v11 << 32), 32), 0, "station"), v14 = (v13 - *v13), *v14 >= 0xBu) && (v15 = v14[5]) != 0 && *(v13 + v15 + *(v13 + v15)) && ((v16 = *a1, v17 = __ROR8__(**(a3 + 8), 32), HIDWORD(v17) != 1) || (v17 + 3) >= 2) && (v18 = sub_502FF8(*(v16 + 4120) + 24, __ROR8__(v17, 32), 0, "stop"), v19 = (v18 - *v18), *v19 >= 0xDu) && (v20 = v19[6]) != 0 && ((v22 = *(v18 + v20), v21 = *(v18 + v20 + 4), v21 != -1) ? (v23 = v22 == 0) : (v23 = 1), !v23 && (v24 = sub_93D480(*(v16 + 4128) + 24, __ROR8__(v21 | (v22 << 32), 32), 0, "station"), v25 = (v24 - *v24), *v25 >= 0xBu) && (v26 = v25[5]) != 0 && *(v24 + v26 + *(v24 + v26)) && (v27 = *(a3 + 40), !*(v27 + 16)))))
  {
    return *(v27 + 18) == 0;
  }

  else
  {
    return 0;
  }
}

void sub_C6B808(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6[0] = a1;
  v7 = 0;
  v8 = 2;
  v3[0] = __ROR8__(**(a2 + 8), 32);
  v4 = 0;
  v5 = 2;
  v9[0] = a1;
  v10 = 0;
  v11 = 2;
  v12[0] = v3[0];
  v13 = 0;
  v14 = 2;
  v15 = 0xFFFFFFFFLL;
  v18 = 0x7FFFFFFF;
  v21[0] = a1;
  v22 = 0;
  v23 = 2;
  v24 = v3[0];
  v25 = 0;
  v26 = 2;
  v27 = 0xFFFFFFFFLL;
  v29 = 0;
  v28 = 0u;
  __p = 0u;
  v17 = 0;
  v30 = 0x7FFFFFFF;
  v31 = 1;
  sub_C5A918(a3, v20, 1uLL);
  if (v31 != -1)
  {
    (off_2672D20[v31])(&v19, v21);
    v31 = -1;
    if (__p)
    {
      *(&__p + 1) = __p;
      operator delete(__p);
    }
  }

  (off_2672D40[v13])(&v19, v12);
  v13 = -1;
  (off_2672D40[v10])(&v19, v9);
  v10 = -1;
  (off_2672D40[v4])(&v19, v3);
  if (v7 != -1)
  {
    (off_2672D40[v7])(v3, v6);
  }
}

void sub_C6B9CC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  _Unwind_Resume(a1);
}

void sub_C6BA18(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *(a3 + 40);
  v6 = *(v5 + 8);
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  if (v6)
  {
    if (v6 == 1)
    {
      v9 = __ROR8__(*v5, 32);
    }

    else
    {
      v10 = a2;
      v11 = sub_503184(*(*a1 + 4104) + 24, *v5, 0, "road access point");
      v12 = (v11 - *v11);
      a2 = v10;
      if (*v12 >= 7u && (v13 = v12[3]) != 0)
      {
        v9 = *(v11 + v13 + 4) | (*(v11 + v13) << 32);
      }

      else
      {
        v9 = 0xFFFFFFFFLL;
      }
    }

    v28[0] = a2;
    v29 = 0;
    v30 = 2;
    v25[0] = v9;
    v26 = 0;
    v27 = 0;
    v31 = a2;
    v33 = 0;
    v34 = 2;
    v35[0] = v9;
    v36 = 0;
    v37 = 0;
    v38 = 0xFFFFFFFFLL;
    __p = 0;
    v41 = 0;
    v40 = 0;
    v42 = 0x7FFFFFFF;
    v14 = a4[1];
    if (v14 >= a4[2])
    {
      v15 = sub_C6E40C(a4, &v31);
    }

    else
    {
      sub_C59418(v14 + 8, &v31);
      *(v14 + 1632) = 1;
      v15 = v14 + 1640;
    }

    a4[1] = v15;
    if (__p)
    {
      v40 = __p;
      operator delete(__p);
    }

    if (v36 != -1)
    {
      (off_2672D40[v36])(&v43, v35);
    }

    v36 = -1;
    if (v33 != -1)
    {
      (off_2672D40[v33])(&v43, &v31);
    }

    v33 = -1;
    if (v26 != -1)
    {
      (off_2672D40[v26])(&v43, v25);
    }

    if (v29 != -1)
    {
      (off_2672D40[v29])(v25, v28);
    }

    v16 = *(a3 + 40);
    if (*(v16 + 16) == 2)
    {
      v17 = *v16;
      v18 = sub_503184(*(*a1 + 4104) + 24, *v16, 0, "road access point");
      v19 = __ROR8__(v17, 32);
      v20 = (v18 - *v18);
      if (*v20 < 0xBu)
      {
        v31 = v19;
        v32 = 0;
        v22 = a4[1];
        if (v22 < a4[2])
        {
LABEL_26:
          v23 = v32;
          *(v22 + 8) = v31;
          *(v22 + 16) = v23;
          *(v22 + 1632) = 2;
          v24 = v22 + 1640;
LABEL_29:
          a4[1] = v24;
          return;
        }
      }

      else
      {
        v21 = v20[5];
        if (v21)
        {
          LODWORD(v21) = 10 * *(v18 + v21);
        }

        v31 = v19;
        v32 = v21;
        v22 = a4[1];
        if (v22 < a4[2])
        {
          goto LABEL_26;
        }
      }

      v24 = sub_C6E63C(a4, &v31);
      goto LABEL_29;
    }
  }
}

void sub_C6BCB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  sub_C6CBE4(&STACK[0x200]);
  sub_A54CEC(&a9);
  sub_A54CEC(&a41);
  sub_C578E0(v41);
  _Unwind_Resume(a1);
}

uint64_t sub_C6BD1C()
{
  __chkstk_darwin();
  v3 = v2;
  v4 = *(v1 + 40);
  v5 = __ROR8__(*v4, 32);
  v6 = *(v4 + 16);
  if (v6 == 1)
  {
    v7 = v5;
  }

  else
  {
    v7 = v0;
  }

  if (v6 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = 2;
  }

  if (v6 == 2)
  {
    v9 = 1;
  }

  else
  {
    v5 = v7;
    v9 = v8;
  }

  v23[0] = v5;
  v24 = 0;
  v25 = v9;
  v10 = __ROR8__(**(v1 + 8), 32);
  v11 = __ROR8__(*(v4 + 8), 32);
  v12 = *(v4 + 18);
  if (v12 == 1)
  {
    v10 = v11;
    v13 = 0;
  }

  else
  {
    v13 = 2;
  }

  v14 = v12 == 2;
  if (v12 == 2)
  {
    v15 = v11;
  }

  else
  {
    v15 = v10;
  }

  v20[0] = v15;
  v21 = 0;
  if (v14)
  {
    v16 = 1;
  }

  else
  {
    v16 = v13;
  }

  v22 = v16;
  v18[0] = 0;
  v19 = 0;
  sub_C5A2DC(v26, v23, v20, v18, 0x7FFFFFFF);
  sub_C595E8(v33, v26);
  v34 = 3;
  result = sub_C5A918(v3, v32, 1uLL);
  if (v34 != -1)
  {
    result = (off_2672D20[v34])(&v31, v33);
  }

  v34 = -1;
  if (v30[1096] == 1)
  {
    result = sub_3EEA68(v30);
  }

  if (v29 != -1)
  {
    result = (off_2672D40[v29])(&v31, &v28);
  }

  v29 = -1;
  if (v27 != -1)
  {
    result = (off_2672D40[v27])(&v31, v26);
  }

  v27 = -1;
  if (v19 == 1)
  {
    result = sub_3EEA68(v18);
  }

  if (v21 != -1)
  {
    result = (off_2672D40[v21])(v18, v20);
  }

  if (v24 != -1)
  {
    return (off_2672D40[v24])(v18, v23);
  }

  return result;
}

void sub_C6BF40(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  _Unwind_Resume(a1);
}

void sub_C6BFA8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a2 + 40);
  v5 = *(v4 + 18);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (!v5)
  {
    return;
  }

  if (v5 == 2)
  {
    v8 = *(v4 + 8);
    v9 = sub_503184(*(*a1 + 4104) + 24, v8, 0, "road access point");
    v10 = __ROR8__(v8, 32);
    v11 = (v9 - *v9);
    if (*v11 < 0xBu)
    {
      v28 = v10;
      v29 = 0;
      v13 = a3[1];
      if (v13 < a3[2])
      {
LABEL_7:
        v14 = v29;
        *(v13 + 8) = v28;
        *(v13 + 16) = v14;
        *(v13 + 1632) = 2;
        v15 = v13 + 1640;
LABEL_10:
        a3[1] = v15;
        v4 = *(a2 + 40);
        v5 = *(v4 + 18);
        goto LABEL_11;
      }
    }

    else
    {
      v12 = v11[5];
      if (v12)
      {
        LODWORD(v12) = 10 * *(v9 + v12);
      }

      v28 = v10;
      v29 = v12;
      v13 = a3[1];
      if (v13 < a3[2])
      {
        goto LABEL_7;
      }
    }

    v15 = sub_C6E63C(a3, &v28);
    goto LABEL_10;
  }

LABEL_11:
  if (v5 == 1)
  {
    v16 = __ROR8__(*(v4 + 8), 32);
  }

  else
  {
    v17 = sub_503184(*(*a1 + 4104) + 24, *(v4 + 8), 0, "road access point");
    v18 = (v17 - *v17);
    if (*v18 >= 7u && (v19 = v18[3]) != 0)
    {
      v16 = *(v17 + v19 + 4) | (*(v17 + v19) << 32);
    }

    else
    {
      v16 = 0xFFFFFFFFLL;
    }
  }

  v25[0] = v16;
  v26 = 0;
  v27 = 0;
  v22[0] = __ROR8__(**(a2 + 8), 32);
  v23 = 0;
  v24 = 2;
  v28 = v16;
  v30 = 0;
  v31 = 0;
  v32[0] = v22[0];
  v33 = 0;
  v34 = 2;
  v35 = 0xFFFFFFFFLL;
  __p = 0;
  v38 = 0;
  v37 = 0;
  v39 = 0x7FFFFFFF;
  v20 = a3[1];
  if (v20 >= a3[2])
  {
    v21 = sub_C6E40C(a3, &v28);
  }

  else
  {
    sub_C59418(v20 + 8, &v28);
    *(v20 + 1632) = 1;
    v21 = v20 + 1640;
  }

  a3[1] = v21;
  if (__p)
  {
    v37 = __p;
    operator delete(__p);
  }

  if (v33 != -1)
  {
    (off_2672D40[v33])(&v40, v32);
  }

  v33 = -1;
  if (v30 != -1)
  {
    (off_2672D40[v30])(&v40, &v28);
  }

  v30 = -1;
  if (v23 != -1)
  {
    (off_2672D40[v23])(&v40, v22);
  }

  if (v26 != -1)
  {
    (off_2672D40[v26])(v22, v25);
  }
}

void sub_C6C24C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  sub_C6CBE4(&STACK[0x200]);
  sub_A54CEC(&a9);
  sub_A54CEC(&a41);
  sub_C578E0(v41);
  _Unwind_Resume(a1);
}

void sub_C6C2B0(uint64_t *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_C6EC7C(&v37, *a1, a2);
  v8 = v44;
  v9 = v41;
  v11 = v38;
  v10 = v39;
  if (v44)
  {
    v12 = v41;
  }

  else
  {
    v12 = v39;
  }

  if (v38 >= v12)
  {
LABEL_37:
    if (!sub_7E7E4(3u))
    {
LABEL_55:
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      return;
    }

    sub_19594F8(&v26);
    sub_4A5C(&v26, "Transfer unpacking failed from stop ", 36);
    sub_A4FC74((*a1 + 4120), a2);
    v19 = std::ostream::operator<<();
    sub_4A5C(v19, " to stop ", 9);
    sub_A4FC74((*a1 + 4120), a3);
    v20 = std::ostream::operator<<();
    sub_4A5C(v20, ": transfer does not exist in transit routing data", 49);
    if ((v36 & 0x10) != 0)
    {
      v22 = v35;
      if (v35 < v32)
      {
        v35 = v32;
        v22 = v32;
      }

      v23 = v31;
      v21 = v22 - v31;
      if (v22 - v31 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_57;
      }
    }

    else
    {
      if ((v36 & 8) == 0)
      {
        v21 = 0;
        v25 = 0;
LABEL_50:
        *(&__p + v21) = 0;
        sub_7E854(&__p, 3u);
        if (v25 < 0)
        {
          operator delete(__p);
        }

        if (v34 < 0)
        {
          operator delete(v33);
        }

        std::locale::~locale(&v28);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_55;
      }

      v23 = v29;
      v21 = v30 - v29;
      if ((v30 - v29) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_57:
        sub_3244();
      }
    }

    if (v21 >= 0x17)
    {
      operator new();
    }

    v25 = v21;
    if (v21)
    {
      memmove(&__p, v23, v21);
    }

    goto LABEL_50;
  }

  while (__ROR8__(*v11, 32) != a3)
  {
    v11 = (v11 + 12);
    v38 = v11;
    v42 += 20;
    if (v11 == v10)
    {
      v11 = v40;
      v38 = v40;
      v42 = v43;
      v8 = 1;
      v44 = 1;
    }

    if (v8)
    {
      v14 = v9;
    }

    else
    {
      v14 = v10;
    }

    if (*(v37 + 16) == 1 && v11 < v14)
    {
      while (1)
      {
        v16 = __ROR8__(*v11, 32);
        if (HIDWORD(v16) == 1 && (v16 + 3) < 2)
        {
          break;
        }

        if (sub_2D5204(**(v37 + 4120)))
        {
          v11 = v38;
          v10 = v39;
          v8 = v44;
          break;
        }

        v10 = v39;
        v11 = (v38 + 12);
        v38 = v11;
        v42 += 20;
        if (v11 == v39)
        {
          v11 = v40;
          v38 = v40;
          v42 = v43;
          v8 = 1;
          v44 = 1;
          if (v40 >= v41)
          {
            break;
          }
        }

        else
        {
          v8 = v44;
          if (v44)
          {
            v18 = 32;
          }

          else
          {
            v18 = 16;
          }

          if (v11 >= *(&v37 + v18))
          {
            break;
          }
        }
      }

      v9 = v41;
    }

    if (v8)
    {
      v13 = v9;
    }

    else
    {
      v13 = v10;
    }

    if (v11 >= v13)
    {
      goto LABEL_37;
    }
  }

  sub_C6B34C(a1, a2, &v37, a4);
}

void sub_C6C6F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

void sub_C6C73C(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  sub_C68630(&v36, a2);
  v29 = 0;
  v30 = -1;
  v31 = 0xFFFFFFFFLL;
  v32 = 0x7FFFFFFF;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  while (v37 != -1 && v38 != a3)
  {
    sub_C68748(&v36);
  }

  v43 = v37;
  v44 = v38;
  v45 = v39;
  v46 = v40;
  v47 = v41;
  v40 = 0uLL;
  v41 = 0;
  v42 = v36;
  if (v37 == -1)
  {
    if (!sub_7E7E4(1u))
    {
      goto LABEL_33;
    }

    sub_19594F8(&v18);
    sub_4A5C(&v18, "Unable to unpack walking to stop ", 33);
    sub_A4FC74((*a1 + 4120), a3);
    v12 = std::ostream::operator<<();
    sub_4A5C(v12, ": no path found in walking tree", 31);
    if ((v28 & 0x10) != 0)
    {
      v14 = v27;
      if (v27 < v24)
      {
        v27 = v24;
        v14 = v24;
      }

      v15 = v23;
      v13 = v14 - v23;
      if (v14 - v23 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if ((v28 & 8) == 0)
      {
        v13 = 0;
        v17 = 0;
LABEL_28:
        *(&__dst + v13) = 0;
        sub_7E854(&__dst, 1u);
        if (v17 < 0)
        {
          operator delete(__dst);
        }

        if (v26 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v20);
        std::ostream::~ostream();
        std::ios::~ios();
LABEL_33:
        *a4 = 0;
        a4[1] = 0;
        a4[2] = 0;
        v8 = v46;
        if (!v46)
        {
          return;
        }

        goto LABEL_9;
      }

      v15 = v21;
      v13 = v22 - v21;
      if ((v22 - v21) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_36:
        sub_3244();
      }
    }

    if (v13 >= 0x17)
    {
      operator new();
    }

    v17 = v13;
    if (v13)
    {
      memmove(&__dst, v15, v13);
    }

    goto LABEL_28;
  }

  sub_C5A6E0(a4, &v46);
  v8 = v46;
  if (!v46)
  {
    return;
  }

LABEL_9:
  v9 = *(&v46 + 1);
  v10 = v8;
  if (*(&v46 + 1) != v8)
  {
    do
    {
      v11 = *(v9 - 2);
      if (v11 != -1)
      {
        (off_2672D20[v11])(&v18, v9 - 408);
      }

      *(v9 - 2) = -1;
      v9 -= 410;
    }

    while (v9 != v8);
    v10 = v46;
  }

  *(&v46 + 1) = v8;
  operator delete(v10);
}

void sub_C6CAF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1959728(&a16);
    sub_C62B4C(v16 - 104);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a16);
  sub_C62B4C(v16 - 104);
  _Unwind_Resume(a1);
}

void sub_C6CB6C(_Unwind_Exception *a1)
{
  sub_C62B4C(v1 - 216);
  sub_C62B4C(v1 - 160);
  _Unwind_Resume(a1);
}

uint64_t sub_C6CB88(uint64_t a1)
{
  v2 = *(a1 + 1632);
  if (v2 != -1)
  {
    (off_2672D20[v2])(&v4, a1 + 8);
  }

  *(a1 + 1632) = -1;
  return a1;
}

uint64_t sub_C6CBE4(uint64_t a1)
{
  v2 = *(a1 + 520);
  if (v2)
  {
    *(a1 + 528) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 496);
  if (v3 != -1)
  {
    (off_2672D40[v3])(&v6, a1 + 256);
  }

  *(a1 + 496) = -1;
  v4 = *(a1 + 240);
  if (v4 != -1)
  {
    (off_2672D40[v4])(&v7, a1);
  }

  *(a1 + 240) = -1;
  return a1;
}

void sub_C6CC7C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 56) - *(a3 + 48);
  if (v3)
  {
    v4 = 0;
    v59 = v3 >> 6;
    do
    {
      while (1)
      {
        v5 = *(a3 + 48);
        if (v4 >= (*(a3 + 56) - v5) >> 6)
        {
          sub_6FAB4();
        }

        v6 = (v5 + (v4 << 6));
        v64 = v6[1];
        if (*v6 != v64)
        {
          break;
        }

        if (++v4 == v59)
        {
          return;
        }
      }

      v60 = v4;
      v63 = v4 + 1;
      v7 = *v6;
      while (2)
      {
        v68 = 0;
        v9 = *(v7 + 8);
        v66 = *(v7 + 16);
        __p = 0;
        if (v9 == v66)
        {
          goto LABEL_9;
        }

        v65 = v7;
        do
        {
          v10 = *(v9 + 1128);
          if (v10 != 3)
          {
            if (v10 == 2)
            {
              v14 = 10 * (*(v9 + 8) - *(v9 + 4));
              v15 = __p;
              v16 = 0x4FEC04FEC04FEC05 * ((v68 - __p) >> 3) + 1;
              if (v16 > 0x27F6027F6027F6)
              {
                sub_1794();
              }

              if (0x9FD809FD809FD80ALL * (-__p >> 3) > v16)
              {
                v16 = 0x9FD809FD809FD80ALL * (-__p >> 3);
              }

              if ((0x4FEC04FEC04FEC05 * (-__p >> 3)) >= 0x13FB013FB013FBLL)
              {
                v17 = 0x27F6027F6027F6;
              }

              else
              {
                v17 = v16;
              }

              if (v17)
              {
                if (v17 <= 0x27F6027F6027F6)
                {
                  operator new();
                }

                sub_1808();
              }

              v25 = 8 * ((v68 - __p) >> 3);
              *(v25 + 8) = *(v9 + 12);
              *(v25 + 16) = v14;
              *(v25 + 1632) = 2;
              v26 = v25 - (v68 - __p);
              if (__p != v68)
              {
                v27 = 0;
                do
                {
                  *(v26 + v27 + 8) = 0;
                  *(v27 + 1632) = -1;
                  v28 = *(__p + v27 + 1632);
                  if (v28 != -1)
                  {
                    v69[0] = v26 + v27 + 8;
                    (off_2672D50[v28])(v69, __p + v27 + 8);
                    *(v27 + 1632) = v28;
                  }

                  v27 += 1640;
                }

                while ((__p + v27) != v68);
                do
                {
                  v29 = v15[408];
                  if (v29 != -1)
                  {
                    (off_2672D20[v29])(v69, v15 + 2);
                  }

                  v15[408] = -1;
                  v15 += 410;
                }

                while (v15 != v68);
                v15 = __p;
              }

              v44 = v25 + 1640;
              __p = 8 * ((v68 - __p) >> 3) - (v68 - __p);
              if (v15)
              {
                operator delete(v15);
              }

              v68 = v44;
              goto LABEL_12;
            }

            if (v10 != 1)
            {
              goto LABEL_12;
            }

            v69[0] = 0xFFFFFFFFLL;
            v70 = 0;
            v72[0] = 0xFFFFFFFFLL;
            v73 = 0;
            *v75 = -1;
            memset(&v75[4], 0, 28);
            v76 = 10 * (*(v9 + 32) - *(v9 + 28));
            v11 = *(v9 + 4);
            if (v11)
            {
              if (v11 == 4)
              {
                v69[0] = *(v9 + 8);
                v71 = 1;
                v12 = *(v9 + 20);
                v13 = *(v9 + 16);
                if (!v13)
                {
                  goto LABEL_50;
                }
              }

              else
              {
                if (v11 != 3)
                {
                  exception = __cxa_allocate_exception(0x40uLL);
                  v58 = sub_2D390(exception, "Unknown transit entity type type", 0x20uLL);
                }

                v69[0] = *(v9 + 8);
                v71 = 0;
                v12 = *(v9 + 20);
                v13 = *(v9 + 16);
                if (!v13)
                {
LABEL_50:
                  v72[0] = v12;
                  v74 = 2;
                  v21 = v68;
                  goto LABEL_51;
                }
              }
            }

            else
            {
              v69[0] = *(v9 + 8);
              v71 = 2;
              v12 = *(v9 + 20);
              v13 = *(v9 + 16);
              if (!v13)
              {
                goto LABEL_50;
              }
            }

            if (v13 == 4)
            {
              v72[0] = v12;
              v74 = 1;
              v21 = v68;
            }

            else
            {
              if (v13 != 3)
              {
                v55 = __cxa_allocate_exception(0x40uLL);
                v56 = sub_2D390(v55, "Unknown transit entity type type", 0x20uLL);
              }

              v72[0] = v12;
              v74 = 0;
              v21 = v68;
            }

LABEL_51:
            v22 = v21 - __p;
            v23 = 0x4FEC04FEC04FEC05 * ((v21 - __p) >> 3) + 1;
            if (v23 > 0x27F6027F6027F6)
            {
              sub_1794();
            }

            if (0x9FD809FD809FD80ALL * (-__p >> 3) > v23)
            {
              v23 = 0x9FD809FD809FD80ALL * (-__p >> 3);
            }

            if ((0x4FEC04FEC04FEC05 * (-__p >> 3)) >= 0x13FB013FB013FBLL)
            {
              v24 = 0x27F6027F6027F6;
            }

            else
            {
              v24 = v23;
            }

            if (v24)
            {
              if (v24 <= 0x27F6027F6027F6)
              {
                operator new();
              }

              sub_1808();
            }

            *(v22 + 8) = 0;
            *(v22 + 248) = -1;
            v79[0] = v22 + 8;
            sub_C59510(v79, v69);
            *(v22 + 248) = 0;
            *(v22 + 256) = v71;
            *(v22 + 264) = 0;
            *(v22 + 504) = -1;
            v30 = v73;
            if (v73 != -1)
            {
              v79[0] = v22 + 264;
              (off_2672D70[v73])(v79, v72);
              *(v22 + 504) = v30;
            }

            *(v22 + 512) = v74;
            *(v22 + 520) = *v75;
            *(v22 + 528) = *&v75[8];
            *(v22 + 544) = *&v75[24];
            memset(&v75[8], 0, 24);
            *(v22 + 552) = v76;
            *(v22 + 1632) = 1;
            v31 = __p;
            if (__p != v68)
            {
              v32 = v22 + __p - v68;
              v33 = __p;
              do
              {
                *(v32 + 8) = 0;
                *(v32 + 1632) = -1;
                v34 = *(v33 + 1632);
                if (v34 != -1)
                {
                  v79[0] = v32 + 8;
                  (off_2672D50[v34])(v79, v33 + 8);
                  *(v32 + 1632) = v34;
                }

                v33 += 1640;
                v32 += 1640;
              }

              while (v33 != v68);
              do
              {
                v35 = v31[408];
                if (v35 != -1)
                {
                  (off_2672D20[v35])(v79, v31 + 2);
                }

                v31[408] = -1;
                v31 += 410;
              }

              while (v31 != v68);
              v31 = __p;
            }

            __p = v22 + __p - v68;
            if (v31)
            {
              operator delete(v31);
            }

            v68 = (v22 + 1640);
            if (*&v75[8])
            {
              *&v75[16] = *&v75[8];
              operator delete(*&v75[8]);
            }

            if (v73 != -1)
            {
              (off_2672D40[v73])(v79, v72);
            }

            v73 = -1;
            if (v70 != -1)
            {
              goto LABEL_35;
            }

            goto LABEL_12;
          }

          sub_C6DB20(v9, v69);
          v19 = 0x4FEC04FEC04FEC05 * ((v68 - __p) >> 3) + 1;
          if (v19 > 0x27F6027F6027F6)
          {
            sub_1794();
          }

          if (0x9FD809FD809FD80ALL * (-__p >> 3) > v19)
          {
            v19 = 0x9FD809FD809FD80ALL * (-__p >> 3);
          }

          if ((0x4FEC04FEC04FEC05 * (-__p >> 3)) >= 0x13FB013FB013FBLL)
          {
            v20 = 0x27F6027F6027F6;
          }

          else
          {
            v20 = v19;
          }

          if (v20)
          {
            if (v20 <= 0x27F6027F6027F6)
            {
              operator new();
            }

            sub_1808();
          }

          v36 = 8 * ((v68 - __p) >> 3);
          LOBYTE(dword_8[v36 / 4]) = 0;
          *(&stru_B8.flags + v36) = -1;
          v37 = v70;
          if (v70 != -1)
          {
            v79[0] = 8 * ((v68 - __p) >> 3) + 8;
            (off_2672D70[v70])(v79, v69);
            *(&stru_B8.flags + 2 * ((v68 - __p) >> 3)) = v37;
          }

          *(&stru_B8.reserved2 + 8 * ((v68 - __p) >> 3)) = v71;
          stru_108.sectname[8 * ((v68 - __p) >> 3)] = 0;
          *&stru_1F8.sectname[8 * ((v68 - __p) >> 3)] = -1;
          v38 = v73;
          if (v73 != -1)
          {
            v79[0] = v36 + 264;
            (off_2672D70[v73])(v79, v72);
            *&stru_1F8.sectname[8 * ((v68 - __p) >> 3)] = v38;
          }

          stru_1F8.segname[8 * ((v68 - __p) >> 3) - 8] = v74;
          stru_1F8.segname[8 * ((v68 - __p) >> 3)] = 0;
          stru_650.sectname[8 * ((v68 - __p) >> 3)] = 0;
          if (v77 == 1)
          {
            v18.n128_f64[0] = sub_4C6AE8(v36 + 520, v75);
            stru_650.sectname[8 * ((v68 - __p) >> 3)] = 1;
          }

          v39 = __p;
          v40 = v36 - (v68 - __p);
          *&stru_650.segname[8 * ((v68 - __p) >> 3) - 8] = v78;
          *&stru_650.segname[8 * ((v68 - __p) >> 3)] = 3;
          if (v68 != __p)
          {
            v41 = 0;
            do
            {
              *(v40 + v41 + 8) = 0;
              *(v41 + 1632) = -1;
              v42 = *(__p + v41 + 1632);
              if (v42 != -1)
              {
                v79[0] = v40 + v41 + 8;
                (off_2672D50[v42])(v79, __p + v41 + 8, v18);
                *(v41 + 1632) = v42;
              }

              v41 += 1640;
            }

            while ((__p + v41) != v68);
            do
            {
              v43 = v39[408];
              if (v43 != -1)
              {
                (off_2672D20[v43])(v79, v39 + 2);
              }

              v39[408] = -1;
              v39 += 410;
            }

            while (v39 != v68);
            v39 = __p;
          }

          __p = v36 - (v68 - __p);
          if (v39)
          {
            operator delete(v39);
          }

          v68 = (v36 + 1640);
          if (v77 == 1)
          {
            sub_3EEA68(v75);
          }

          if (v73 != -1)
          {
            (off_2672D40[v73])(v79, v72);
          }

          v73 = -1;
          if (v70 != -1)
          {
LABEL_35:
            (off_2672D40[v70])(v79, v69);
          }

LABEL_12:
          v9 += 1136;
        }

        while (v9 != v66);
        v45 = __p;
        if (__p == v68)
        {
          goto LABEL_136;
        }

        v46 = *(v65 + 8);
        v47 = *(v65 + 16);
        if (v46 == v47)
        {
LABEL_119:
          v48 = v63 == (*(a3 + 56) - *(a3 + 48)) >> 6;
          if (!v60)
          {
            goto LABEL_128;
          }

          v49 = *(__p + 1632);
          if (v49 != 3)
          {
            goto LABEL_123;
          }

LABEL_124:
          if (*(__p + 256) != 2)
          {
            goto LABEL_128;
          }

          if (*(__p + 248))
          {
            goto LABEL_152;
          }

          v50 = *(__p + 8);
          if (!v48)
          {
            goto LABEL_129;
          }

          goto LABEL_134;
        }

        while (*(v46 + 1128))
        {
          v46 += 1136;
          if (v46 == v47)
          {
            goto LABEL_119;
          }
        }

        v48 = v63 == (*(a3 + 56) - *(a3 + 48)) >> 6;
        v49 = *(__p + 1632);
        if (v49 == 3)
        {
          goto LABEL_124;
        }

LABEL_123:
        if (v49 == 1)
        {
          goto LABEL_124;
        }

LABEL_128:
        v50 = 0x1FFFFFFFELL;
        if (!v48)
        {
LABEL_129:
          v51 = *(v68 - 2);
          if ((v51 == 3 || v51 == 1) && *(v68 - 1128) == 2)
          {
            if (!*(v68 - 284))
            {
              v52 = *(v68 - 172);
              goto LABEL_135;
            }

LABEL_152:
            sub_5AF20();
          }
        }

LABEL_134:
        v52 = 0x1FFFFFFFDLL;
LABEL_135:
        v69[0] = v50;
        v69[1] = v52;
        sub_C6EFF4(a2, v69);
        v45 = __p;
LABEL_136:
        v7 = v65;
        if (v45)
        {
          v53 = v68;
          v8 = v45;
          if (v68 != v45)
          {
            do
            {
              v54 = *(v53 - 2);
              if (v54 != -1)
              {
                (off_2672D20[v54])(v69, v53 - 408);
              }

              *(v53 - 2) = -1;
              v53 -= 410;
            }

            while (v53 != v45);
            v8 = __p;
          }

          operator delete(v8);
          v7 = v65;
        }

LABEL_9:
        v7 += 144;
        if (v7 != v64)
        {
          continue;
        }

        break;
      }

      v4 = v63;
    }

    while (v63 != v59);
  }
}

void sub_C6DA3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_C578E0(va);
  _Unwind_Resume(a1);
}

void sub_C6DA50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_C578E0(va);
  _Unwind_Resume(a1);
}

void sub_C6DA6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void *);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  sub_C5833C(va1);
  sub_C578E0(va);
  _Unwind_Resume(a1);
}

void sub_C6DADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_C578E0(va);
  _Unwind_Resume(a1);
}

void sub_C6DAF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_C578E0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_C6DB20@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0xFFFFFFFFLL;
  *(a2 + 240) = 0;
  *(a2 + 256) = 0xFFFFFFFFLL;
  *(a2 + 496) = 0;
  *(a2 + 512) = 0;
  *(a2 + 1608) = 0;
  *(a2 + 1616) = 0x7FFFFFFF;
  if (*(a1 + 8) == -1 || *(a1 + 12) == 0)
  {
    *(&v43 + 1) = 0x7FFFFFFFLL;
    *&v45[8] = 0u;
    v46 = 0u;
    memset(v49, 0, sizeof(v49));
    v5.f64[0] = NAN;
    v5.f64[1] = NAN;
    *&v43 = -1;
    *&v44 = -1;
    *(&v44 + 1) = -1;
    *v45 = 0x7FFFFFFFFFFFFFFFLL;
    *&v45[16] = -1935635296;
    *&v46 = 0;
    *(&v46 + 7) = 0;
    LODWORD(v49[1]) = 0;
    v49[2] = 0x7FFFFFFFFFFFFFFFLL;
    LOBYTE(v49[3]) = 100;
    v50 = 0;
    v51 = 0;
    v52 = vnegq_f64(v5);
    v62 = 1;
    v64 = 0;
    v63 = 0;
    *&v23[15] = 0;
    v22 = *v45;
    *v23 = *&v45[16];
    v20 = v43;
    v21 = v44;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v47 = 0;
    v48 = 0;
    v49[0] = 0;
    v28 = 100;
    v27 = *&v49[1];
    v30 = v52;
    v29 = 0u;
    v31 = 0;
    v32 = 0;
    v53 = 0;
    v54 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v40 = 1u;
    v41 = 1;
    v42 = 3;
    sub_49AEC0(&v43);
    v6 = 1;
  }

  else
  {
    v7 = *(a1 + 4);
    if (v7)
    {
      if (v7 == 4)
      {
        v8 = 1;
      }

      else
      {
        if (v7 != 3)
        {
          exception = __cxa_allocate_exception(0x40uLL);
          v17 = sub_2D390(exception, "Unknown transit entity type type", 0x20uLL);
        }

        v8 = 0;
      }
    }

    else
    {
      v8 = 2;
    }

    v6 = 0;
    *&v20 = *(a1 + 8);
    v41 = 0;
    v42 = v8;
  }

  *&v43 = a2;
  (off_2672D80[v6])(&v43, a2, &v20);
  v9 = v41;
  *(a2 + 248) = v42;
  if (v9 != -1)
  {
    (off_2672D40[v9])(&v43, &v20);
  }

  if (*(a1 + 20) == -1 || !*(a1 + 24))
  {
    *(&v43 + 1) = 0x7FFFFFFFLL;
    *&v45[8] = 0u;
    v46 = 0u;
    memset(v49, 0, sizeof(v49));
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    *&v43 = -1;
    *&v44 = -1;
    *(&v44 + 1) = -1;
    *v45 = 0x7FFFFFFFFFFFFFFFLL;
    *&v45[16] = -1935635296;
    *&v46 = 0;
    *(&v46 + 7) = 0;
    LODWORD(v49[1]) = 0;
    v49[2] = 0x7FFFFFFFFFFFFFFFLL;
    LOBYTE(v49[3]) = 100;
    v50 = 0;
    v51 = 0;
    v52 = vnegq_f64(v12);
    v13 = 1;
    v62 = 1;
    v64 = 0;
    v63 = 0;
    *&v23[15] = 0;
    v22 = *v45;
    *v23 = *&v45[16];
    v20 = v43;
    v21 = v44;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v47 = 0;
    v48 = 0;
    v49[0] = 0;
    v28 = 100;
    v27 = *&v49[1];
    v30 = v52;
    v29 = 0u;
    v31 = 0;
    v32 = 0;
    v53 = 0;
    v54 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v40 = 1u;
    v41 = 1;
    v42 = 3;
    sub_49AEC0(&v43);
  }

  else
  {
    v10 = *(a1 + 16);
    if (v10)
    {
      if (v10 == 4)
      {
        v11 = 1;
      }

      else
      {
        if (v10 != 3)
        {
          v18 = __cxa_allocate_exception(0x40uLL);
          v19 = sub_2D390(v18, "Unknown transit entity type type", 0x20uLL);
        }

        v11 = 0;
      }
    }

    else
    {
      v11 = 2;
    }

    v13 = 0;
    *&v20 = *(a1 + 20);
    v41 = 0;
    v42 = v11;
  }

  *&v43 = a2 + 256;
  (off_2672D80[v13])(&v43);
  v14 = v41;
  *(a2 + 504) = v42;
  if (v14 != -1)
  {
    (off_2672D40[v14])(&v43, &v20);
  }

  if (*(a2 + 1608) == 1)
  {
    sub_4D6664(a2 + 512, a1 + 32);
  }

  else
  {
    sub_790648(a2 + 512, a1 + 32);
    *(a2 + 1608) = 1;
  }

  result = sub_3CF22C(a1 + 32);
  *(a2 + 1616) = *(result + 4);
  return result;
}

uint64_t *sub_C6E014(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a2 >> 33));
  v5 = (((0xC4CEB9FE1A85EC53 * (v4 ^ (v4 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v4 ^ (v4 >> 33))) >> 33)) + 0x388152A534) ^ 0xDEADBEEF;
  v6 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) >> 33));
  v7 = ((v6 ^ (v6 >> 33)) + (v5 << 6) + (v5 >> 2) + 2654435769u) ^ v5;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_33;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = ((v6 ^ (v6 >> 33)) + (v5 << 6) + (v5 >> 2) + 2654435769u) ^ v5;
    if (v7 >= *&v8)
    {
      v10 = v7 % *&v8;
    }
  }

  else
  {
    v10 = v7 & (*&v8 - 1);
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_33:
    operator new();
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v12[1];
      if (v13 == v7)
      {
        v14 = *(v12 + 5) == HIDWORD(v2) && *(v12 + 4) == v2;
        if (v14 && v12[3] == v3)
        {
          return v12;
        }
      }

      else if ((v13 & (*&v8 - 1)) != v10)
      {
        goto LABEL_33;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_33;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_33;
    }

LABEL_22:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_33;
    }
  }

  v16 = *(v12 + 5) == HIDWORD(v2) && *(v12 + 4) == v2;
  if (!v16 || v12[3] != v3)
  {
    goto LABEL_22;
  }

  return v12;
}

uint64_t sub_C6E40C(uint64_t *a1, uint64_t a2)
{
  v2 = 0x4FEC04FEC04FEC05 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x27F6027F6027F6)
  {
    sub_1794();
  }

  if (0x9FD809FD809FD80ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9FD809FD809FD80ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4FEC04FEC04FEC05 * ((a1[2] - *a1) >> 3)) >= 0x13FB013FB013FBLL)
  {
    v5 = 0x27F6027F6027F6;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x27F6027F6027F6)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  sub_C59418(v6 + 8, a2);
  v7 = *a1;
  v8 = a1[1];
  v9 = 1640 * v2 - (v8 - *a1);
  *&stru_650.segname[1640 * v2] = 1;
  if (v8 != v7)
  {
    v15 = 1640 * v2;
    v10 = 0;
    v11 = -8 * ((v8 - v7) >> 3) + 1640 * v2;
    do
    {
      *(v9 + v10 * 4 + 8) = 0;
      *(v11 + v10 * 4 + 1632) = -1;
      v12 = v7[v10 + 408];
      if (v12 != -1)
      {
        v16 = v9 + v10 * 4 + 8;
        (off_2672D50[v12])(&v16, &v7[v10 + 2]);
        *(v11 + v10 * 4 + 1632) = v12;
      }

      v10 += 410;
    }

    while (&v7[v10] != v8);
    v6 = v15;
    do
    {
      v13 = v7[408];
      if (v13 != -1)
      {
        (off_2672D20[v13])(&v17, v7 + 2);
      }

      v7[408] = -1;
      v7 += 410;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v9;
  a1[1] = v6 + 1640;
  a1[2] = 1640 * v5;
  if (v7)
  {
    operator delete(v7);
  }

  return v6 + 1640;
}

uint64_t sub_C6E63C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v3 - *a1;
  v5 = 0x4FEC04FEC04FEC05 * (v4 >> 3) + 1;
  if (v5 > 0x27F6027F6027F6)
  {
    sub_1794();
  }

  v6 = a1;
  if (0x9FD809FD809FD80ALL * ((*(a1 + 16) - v2) >> 3) > v5)
  {
    v5 = 0x9FD809FD809FD80ALL * ((*(a1 + 16) - v2) >> 3);
  }

  if ((0x4FEC04FEC04FEC05 * ((*(a1 + 16) - v2) >> 3)) >= 0x13FB013FB013FBLL)
  {
    v7 = 0x27F6027F6027F6;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x27F6027F6027F6)
    {
      operator new();
    }

    sub_1808();
  }

  v8 = 8 * (v4 >> 3);
  *(v8 + 8) = *a2;
  *(v8 + 16) = *(a2 + 8);
  *(v8 + 1632) = 2;
  v9 = v8 - v4;
  if (v2 != v3)
  {
    v10 = 0;
    do
    {
      *(v9 + v10 * 4 + 8) = 0;
      *(v10 * 4 + 1632) = -1;
      v11 = v2[v10 + 408];
      if (v11 != -1)
      {
        v15 = v9 + v10 * 4 + 8;
        (off_2672D50[v11])(&v15, &v2[v10 + 2]);
        *(v10 * 4 + 1632) = v11;
      }

      v10 += 410;
    }

    while (&v2[v10] != v3);
    do
    {
      v12 = v2[408];
      if (v12 != -1)
      {
        (off_2672D20[v12])(&v16, v2 + 2);
      }

      v2[408] = -1;
      v2 += 410;
    }

    while (v2 != v3);
    v6 = a1;
    v2 = *a1;
  }

  *v6 = v9;
  v6[1] = v8 + 1640;
  v6[2] = 1640 * v7;
  if (v2)
  {
    operator delete(v2);
  }

  return v8 + 1640;
}

uint64_t *sub_C6E86C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a2 >> 33));
  v5 = (((0xC4CEB9FE1A85EC53 * (v4 ^ (v4 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v4 ^ (v4 >> 33))) >> 33)) + 0x388152A534) ^ 0xDEADBEEF;
  v6 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) >> 33));
  v7 = ((v6 ^ (v6 >> 33)) + (v5 << 6) + (v5 >> 2) + 2654435769u) ^ v5;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_33;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = ((v6 ^ (v6 >> 33)) + (v5 << 6) + (v5 >> 2) + 2654435769u) ^ v5;
    if (v7 >= *&v8)
    {
      v10 = v7 % *&v8;
    }
  }

  else
  {
    v10 = v7 & (*&v8 - 1);
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_33:
    operator new();
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v12[1];
      if (v13 == v7)
      {
        v14 = *(v12 + 5) == HIDWORD(v2) && *(v12 + 4) == v2;
        if (v14 && v12[3] == v3)
        {
          return v12;
        }
      }

      else if ((v13 & (*&v8 - 1)) != v10)
      {
        goto LABEL_33;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_33;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_33;
    }

LABEL_22:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_33;
    }
  }

  v16 = *(v12 + 5) == HIDWORD(v2) && *(v12 + 4) == v2;
  if (!v16 || v12[3] != v3)
  {
    goto LABEL_22;
  }

  return v12;
}

void sub_C6EC68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_C63260(va);
  _Unwind_Resume(a1);
}

uint64_t sub_C6EC7C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  v6 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v7 = sub_C9E1D8(a2 + 3896, a3);
  v8 = *v7;
  *(a1 + 24) = *v7;
  v9 = sub_C9E1D8(a2 + 3896, a3);
  *(a1 + 32) = v8 + v9[1] - *v9;
  v10 = sub_C9E948(a2 + 3896, a3);
  v11 = *v10;
  *(a1 + 56) = *v10;
  v12 = sub_C9E948(a2 + 3896, a3);
  *(a1 + 64) = v11 + v12[1] - *v12;
  if (HIDWORD(a3) == 1 && (a3 + 3) < 2)
  {
    goto LABEL_32;
  }

  v13 = sub_A74944(a2 + 24, a3, 0, "transfers at stop");
  v14 = (v13 - *v13);
  v15 = *v14;
  if (v15 < 7)
  {
    goto LABEL_32;
  }

  if (v14[3])
  {
    v16 = (v13 + v14[3] + *(v13 + v14[3]));
    if (v15 >= 0xD)
    {
      goto LABEL_6;
    }

LABEL_11:
    v17 = 0;
    if (!v16)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v16 = 0;
  if (v15 < 0xD)
  {
    goto LABEL_11;
  }

LABEL_6:
  v17 = v14[6];
  if (v14[6])
  {
    v17 = (v17 + v13 + *(v17 + v13));
  }

  if (!v16)
  {
    goto LABEL_15;
  }

LABEL_12:
  v18 = *v16;
  if (*v16)
  {
    *v6 = (v16 + 1);
    v19 = &v16[3 * v18 + 1];
    goto LABEL_14;
  }

LABEL_15:
  if (!v17)
  {
    goto LABEL_28;
  }

  v20 = (v17 - *v17);
  if (*v20 < 5u)
  {
    goto LABEL_28;
  }

  v21 = v20[2];
  if (!v21)
  {
    goto LABEL_28;
  }

  if (v15 < 0xD)
  {
    v22 = 0;
  }

  else
  {
    v22 = v14[6];
    if (v14[6])
    {
      v22 = (v22 + v13 + *(v22 + v13));
    }
  }

  v23 = (v22 - *v22);
  if (*v23 < 7u)
  {
    goto LABEL_28;
  }

  v24 = v23[3];
  if (!v24 || !*(v22 + v24))
  {
    goto LABEL_28;
  }

  v25 = v17 + v21 + *(v17 + v21) + 4;
  *v6 = v25;
  if (v15 < 0xD)
  {
    v26 = 0;
  }

  else
  {
    v26 = v14[6];
    if (v14[6])
    {
      v26 = (v26 + v13 + *(v26 + v13));
    }
  }

  v41 = (v26 - *v26);
  if (*v41 >= 7u && (v42 = v41[3]) != 0)
  {
    v43 = *(v26 + v42);
  }

  else
  {
    v43 = 0;
  }

  v19 = v25 + 12 * v43;
LABEL_14:
  *(a1 + 16) = v19;
LABEL_28:
  if (v15 >= 9)
  {
    v27 = v14[4];
    if (v27)
    {
      v28 = (v13 + v27 + *(v13 + v27));
      v29 = *v28;
      if (*v28)
      {
        v30 = v28 + 1;
        *(a1 + 40) = v30;
        *(a1 + 48) = &v30[5 * v29];
      }
    }
  }

LABEL_32:
  v31 = *(a1 + 8);
  v32 = *(a1 + 16);
  v33 = v31;
  *(a1 + 72) = v31 == v32;
  if (v31 == v32)
  {
    v33 = *(a1 + 24);
    *(a1 + 8) = v33;
    *(a1 + 40) = *(a1 + 56);
    if (*(*a1 + 16) != 1)
    {
      return a1;
    }
  }

  else if (*(*a1 + 16) != 1)
  {
    return a1;
  }

  v34 = v31 == v32;
  v35 = 16;
  if (v34)
  {
    v35 = 32;
  }

  if (v33 < *(a1 + v35))
  {
    while (1)
    {
      v36 = __ROR8__(*v33, 32);
      v37 = HIDWORD(v36) != 1 || (v36 + 3) >= 2;
      if (!v37 || (sub_2D5204(**(*a1 + 4120)) & 1) != 0)
      {
        break;
      }

      v38 = *(a1 + 16);
      v33 = (*(a1 + 8) + 12);
      *(a1 + 8) = v33;
      *(a1 + 40) += 20;
      if (v33 == v38)
      {
        v33 = *(a1 + 24);
        *(a1 + 8) = v33;
        *(a1 + 40) = *(a1 + 56);
        *(a1 + 72) = 1;
        if (v33 >= *(a1 + 32))
        {
          return a1;
        }
      }

      else
      {
        if (*(a1 + 72))
        {
          v39 = 32;
        }

        else
        {
          v39 = 16;
        }

        if (v33 >= *(a1 + v39))
        {
          return a1;
        }
      }
    }
  }

  return a1;
}

uint64_t *sub_C6EFF4(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a2 >> 33));
  v5 = (((0xC4CEB9FE1A85EC53 * (v4 ^ (v4 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v4 ^ (v4 >> 33))) >> 33)) + 0x388152A534) ^ 0xDEADBEEF;
  v6 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) >> 33));
  v7 = ((v6 ^ (v6 >> 33)) + (v5 << 6) + (v5 >> 2) + 2654435769u) ^ v5;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_33;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = ((v6 ^ (v6 >> 33)) + (v5 << 6) + (v5 >> 2) + 2654435769u) ^ v5;
    if (v7 >= *&v8)
    {
      v10 = v7 % *&v8;
    }
  }

  else
  {
    v10 = v7 & (*&v8 - 1);
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (result = *v11) == 0)
  {
LABEL_33:
    operator new();
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = result[1];
      if (v13 == v7)
      {
        v14 = *(result + 5) == HIDWORD(v2) && *(result + 4) == v2;
        if (v14 && result[3] == v3)
        {
          return result;
        }
      }

      else if ((v13 & (*&v8 - 1)) != v10)
      {
        goto LABEL_33;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_33;
      }
    }
  }

  while (1)
  {
    v15 = result[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_33;
    }

LABEL_22:
    result = *result;
    if (!result)
    {
      goto LABEL_33;
    }
  }

  v16 = *(result + 5) == HIDWORD(v2) && *(result + 4) == v2;
  if (!v16 || result[3] != v3)
  {
    goto LABEL_22;
  }

  return result;
}

void sub_C6F424(_DWORD *a1, void *a2)
{
  HIBYTE(v6[2]) = 9;
  strcpy(v6, "algorithm");
  v3 = sub_5F8FC(a2, v6);
  v4 = sub_C567B4(v3);
  if (SHIBYTE(v6[2]) < 0)
  {
    v5 = v4;
    operator delete(v6[0]);
    v4 = v5;
  }

  *a1 = v4;
  operator new();
}

void sub_C6F7C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v26 - 41) < 0)
  {
    operator delete(*(v26 - 64));
  }

  if (*(v24 + 127) < 0)
  {
    operator delete(*(v24 + 104));
  }

  sub_C70A84(v25);
  _Unwind_Resume(a1);
}

void sub_C6F844(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0xC6F868);
}

void sub_C6F8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    JUMPOUT(0xC6F8A4);
  }

  JUMPOUT(0xC6F880);
}

void sub_C6F908()
{
  if (*(v0 - 41) < 0)
  {
    JUMPOUT(0xC6F888);
  }

  JUMPOUT(0xC6F8B4);
}

void sub_C6F91C(_Unwind_Exception *a1)
{
  if (*(v1 - 41) < 0)
  {
    operator delete(*(v1 - 64));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xC6F8BCLL);
}

void sub_C6F938(_DWORD *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = 9;
  strcpy(__p, "on_street");
  v5 = sub_5F5AC(a4, __p);
  sub_C6F424(a1, v5);
}

void sub_C6F9D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_C6F9F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return result;
  }

  while (2)
  {
    while (1)
    {
      v5 = v2[4];
      v6 = v2[5];
      if (v5 != v6)
      {
        break;
      }

      result = *(a1 + 216) + 1.0;
      *(a1 + 216) = result;
      v2 = *v2;
      if (!v2)
      {
        return result;
      }
    }

    LOBYTE(v7) = 1;
    do
    {
      if ((v7 & 1) == 0)
      {
        v7 = 0;
        goto LABEL_7;
      }

      v8 = *(v5 + 1632);
      if (v8 != 1)
      {
        if (v8 != 3)
        {
          v7 = v8 == 2;
          goto LABEL_7;
        }

        if ((*(v5 + 1616) & 1) == 0)
        {
          sub_C6FF5C(a1, v5 + 8);
        }

LABEL_15:
        v7 = 1;
        goto LABEL_7;
      }

      if (*(v5 + 528) != *(v5 + 536))
      {
        goto LABEL_15;
      }

      v7 = sub_C6FAEC(a1, (v5 + 8));
LABEL_7:
      v5 += 1640;
    }

    while (v5 != v6);
    result = v7 + *(a1 + 216);
    *(a1 + 216) = result;
    v2 = *v2;
    if (v2)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_C6FAEC(uint64_t a1, void *a2)
{
  v2 = *(a2 + 60);
  if (*(a2 + 248))
  {
    if (!v2)
    {
      sub_502FF8(*(*(a1 + 144) + 4120) + 24, __ROR8__(*a2, 32), 0, "stop");
      operator new();
    }

LABEL_10:
    sub_5AF20();
  }

  if (v2)
  {
    goto LABEL_10;
  }

  v3 = sub_503310(*(*(a1 + 144) + 4008) + 24, __ROR8__(*a2, 32), 0, "access point");
  v4 = (v3 - *v3);
  if (*v4 >= 0x11u && v4[8] && *(v3 + v4[8] + *(v3 + v4[8])))
  {
    operator new();
  }

  return 0;
}

void sub_C6FF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_C60304(&a72);
  if (v72)
  {
    operator delete(v72);
  }

  _Unwind_Resume(a1);
}

void sub_C6FF5C(uint64_t a1, uint64_t a2)
{
  sub_7E9A4(v3);
  if (*(a2 + 248) == 3)
  {
    if (*(a2 + 504) == 3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (*(a2 + 240))
    {
      sub_5AF20();
    }

    if (*(a2 + 4) != 1)
    {
      if (*(a2 + 504) == 3 || !*(a2 + 496))
      {
LABEL_10:
        operator new();
      }

LABEL_12:
      sub_5AF20();
    }

    if (*(a2 + 504) == 3)
    {
      goto LABEL_10;
    }
  }

  if (!*(a2 + 496))
  {
    goto LABEL_10;
  }

  goto LABEL_12;
}

void sub_C70928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a49);
  sub_C5A434(&a15);
  sub_C5A4AC(&a26);
  _Unwind_Resume(a1);
}

uint64_t sub_C70A84(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 47) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      operator delete(*(a1 + 24));
      if ((*(a1 + 23) & 0x80000000) == 0)
      {
        return a1;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 48));
  if (*(a1 + 47) < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_9:
  operator delete(*a1);
  return a1;
}

void *sub_C70B10(void *a1)
{
  v2 = a1[60];
  if (v2)
  {
    do
    {
      v14 = *v2;
      v15 = v2[3];
      if (v15)
      {
        v2[4] = v15;
        operator delete(v15);
      }

      operator delete(v2);
      v2 = v14;
    }

    while (v14);
  }

  v3 = a1[58];
  a1[58] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[55];
  if (v4)
  {
    do
    {
      v5 = *v4;
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = a1[53];
  a1[53] = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = a1[50];
  if (v7)
  {
    a1[51] = v7;
    operator delete(v7);
  }

  v8 = a1[46];
  if (v8)
  {
    a1[47] = v8;
    operator delete(v8);
  }

  v9 = a1[43];
  if (v9)
  {
    a1[44] = v9;
    operator delete(v9);
  }

  v10 = a1[37];
  if (v10)
  {
    a1[38] = v10;
    operator delete(v10);
  }

  v11 = a1[36];
  if (v11)
  {
    free(v11);
  }

  sub_C541D8((a1 + 4));
  v12 = a1[1];
  if (v12)
  {
    a1[2] = v12;
    operator delete(v12);
  }

  return a1;
}

void sub_C70C08(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 5)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        v12 = a1[1];
        do
        {
          v14 = *(v12 - 32);
          v12 -= 32;
          v13 = v14;
          if (v14)
          {
            *(v10 - 24) = v13;
            operator delete(v13);
          }

          v10 = v12;
        }

        while (v12 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (!(a4 >> 59))
    {
      v19 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v19 = a4;
      }

      v20 = v7 >= 0x7FFFFFFFFFFFFFE0;
      v21 = 0x7FFFFFFFFFFFFFFLL;
      if (!v20)
      {
        v21 = v19;
      }

      if (!(v21 >> 59))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = a1[1];
  v16 = v15 - v8;
  if (a4 <= (v15 - v8) >> 5)
  {
    if (a2 != a3)
    {
      do
      {
        if (v5 != v8)
        {
          sub_C70E60(v8, *v5, v5[1], 0xAAAAAAAAAAAAAAABLL * ((v5[1] - *v5) >> 5));
        }

        *(v8 + 24) = v5[3];
        v5 += 4;
        v8 += 32;
      }

      while (v5 != a3);
      v15 = a1[1];
    }

    if (v15 != v8)
    {
      v22 = v15;
      do
      {
        v24 = *(v22 - 4);
        v22 -= 4;
        v23 = v24;
        if (v24)
        {
          *(v15 - 3) = v23;
          operator delete(v23);
        }

        v15 = v22;
      }

      while (v22 != v8);
    }

    a1[1] = v8;
  }

  else
  {
    if (v15 != v8)
    {
      v17 = v15 - v8;
      v18 = a2;
      do
      {
        if (v18 != v8)
        {
          sub_C70E60(v8, *v18, v18[1], 0xAAAAAAAAAAAAAAABLL * ((v18[1] - *v18) >> 5));
        }

        *(v8 + 24) = v18[3];
        v18 += 4;
        v8 += 32;
        v17 -= 32;
      }

      while (v17);
      v15 = a1[1];
    }

    a1[1] = sub_C64818(a1, &v16[v5], a3, v15);
  }
}

char *sub_C70E60(uint64_t a1, uint64_t a2, _OWORD *a3, unint64_t a4)
{
  v4 = a2;
  v6 = *(a1 + 16);
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - result) >> 5) < a4)
  {
    if (result)
    {
      *(a1 + 8) = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (a4 <= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 5);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x155555555555555)
      {
        v11 = 0x2AAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = *(a1 + 8);
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 5) >= a4)
  {
    while (v4 != a3)
    {
      *result = *v4;
      v24 = *(v4 + 8);
      *(result + 24) = *(v4 + 24);
      *(result + 8) = v24;
      v25 = *(v4 + 40);
      v26 = *(v4 + 56);
      v27 = *(v4 + 72);
      *(result + 87) = *(v4 + 87);
      *(result + 72) = v27;
      *(result + 56) = v26;
      *(result + 40) = v25;
      v4 += 96;
      result += 96;
    }

    *(a1 + 8) = result;
  }

  else
  {
    v13 = (a2 + v12 - result);
    if (v12 != result)
    {
      do
      {
        *result = *v4;
        v14 = *(v4 + 8);
        *(result + 24) = *(v4 + 24);
        *(result + 8) = v14;
        v15 = *(v4 + 40);
        v16 = *(v4 + 56);
        v17 = *(v4 + 72);
        *(result + 87) = *(v4 + 87);
        *(result + 72) = v17;
        *(result + 56) = v16;
        *(result + 40) = v15;
        v4 += 96;
        result += 96;
      }

      while (v4 != v13);
      v12 = *(a1 + 8);
    }

    v18 = v12;
    if (v13 != a3)
    {
      v18 = v12;
      v19 = v12;
      do
      {
        v20 = v13[1];
        *v19 = *v13;
        *(v19 + 1) = v20;
        v21 = v13[2];
        v22 = v13[3];
        v23 = v13[5];
        *(v19 + 4) = v13[4];
        *(v19 + 5) = v23;
        *(v19 + 2) = v21;
        *(v19 + 3) = v22;
        v13 += 6;
        v19 += 96;
        v18 += 96;
      }

      while (v13 != a3);
    }

    *(a1 + 8) = v18;
  }

  return result;
}

double sub_C710CC(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  return result;
}

void sub_C710EC(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v94 = 0u;
  v95 = 0u;
  v96 = 1065353216;
  v91 = 0u;
  v92 = 0u;
  v93 = 1065353216;
  v88 = 0u;
  v89 = 0u;
  v90 = *(a2 + 104);
  prime = *(a2 + 80);
  if (prime == 1)
  {
    prime = 2;
LABEL_3:
    sub_B07C(&v88, prime);
    goto LABEL_4;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 80));
    v7 = *(&v88 + 8);
    v8 = prime >= *(&v88 + 1);
    if (prime > *(&v88 + 1))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = 0;
    v8 = 1;
    if (prime)
    {
      goto LABEL_3;
    }
  }

  if (!v8)
  {
    v67 = vcvtps_u32_f32(*(&v89 + 1) / v90);
    if (*&v7 < 3uLL || (v68 = vcnt_s8(v7), v68.i16[0] = vaddlv_u8(v68), v68.u32[0] > 1uLL))
    {
      v67 = std::__next_prime(v67);
    }

    else
    {
      v69 = 1 << -__clz(v67 - 1);
      if (v67 >= 2)
      {
        v67 = v69;
      }
    }

    if (prime <= v67)
    {
      prime = v67;
    }

    if (prime < *&v7)
    {
      goto LABEL_3;
    }
  }

LABEL_4:
  for (i = v2[11]; i; i = *i)
  {
    sub_C693E8(&v88, i + 4);
  }

  v6 = v89;
  if (v89)
  {
    while (1)
    {
      v10 = *(v6 + 4);
      v11 = sub_C58590(v2 + 1, v10);
      v12 = v11;
      if (v11[239])
      {
        goto LABEL_13;
      }

      if (*(v11 + 248))
      {
        if (*(v11 + 248) != 1)
        {
          goto LABEL_13;
        }

        v13 = v2[1];
        if (0xEEEEEEEEEEEEEEEFLL * ((v2[2] - v13) >> 7) > v10)
        {
          *(v13 + 1920 * v10 + 1912) = 1;
          if (*(v11 + 60))
          {
            sub_5AF20();
          }

          v14 = sub_503184(*(*a1 + 4104) + 24, __ROR8__(*v11, 32), 0, "road access point");
          v15 = (v14 - *v14);
          if (*v15 >= 0xBu && (v16 = v15[5]) != 0)
          {
            v17 = 10 * *(v14 + v16);
          }

          else
          {
            v17 = 0;
          }

          v49 = sub_503184(*(*a1 + 4104) + 24, __ROR8__(*v12, 32), 0, "road access point");
          v50 = (v49 - *v49);
          if (*v50 >= 7u && (v51 = v50[3]) != 0)
          {
            v52 = *(v49 + v51 + 4) | (*(v49 + v51) << 32);
          }

          else
          {
            v52 = 0xFFFFFFFFLL;
          }

          __p = v52;
          p_p = &__p;
          v53 = sub_C72650(&v94, &__p);
          v54 = *(sub_C58590(v2 + 1, v10) + 256) + v17;
          v85[0] = __p;
          v86 = 0;
          v87 = 0;
          v55 = *v12;
          v56 = *(v53 + 6);
          if (v56 == -1)
          {
            v101 = *v12;
            v102 = v17;
            v104 = 2;
            *(v53 + 6) = sub_C71BC8(v2, v85, v54, &p_p, v10, 0);
            if (v104 == -1)
            {
              goto LABEL_85;
            }
          }

          else if (v54 >= *(sub_C58590(v2 + 1, v56) + 256) || (v57 = *(v53 + 6), v101 = v55, v102 = v17, v104 = 2, sub_C71DB8(v2, v57, v85, v54, &p_p, v10, 0), v104 == -1))
          {
LABEL_85:
            if (v86 != -1)
            {
              (off_2672DA0[v86])(&p_p, v85);
            }

            goto LABEL_13;
          }

          (off_2672DC0[v104])(&v98, &v101);
          goto LABEL_85;
        }

LABEL_120:
        exception = __cxa_allocate_exception(0x40uLL);
        v76 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
      }

      if (*(v11 + 60))
      {
        sub_5AF20();
      }

      if (!sub_C583D8((*a1 + 4008), *v11, 1))
      {
        goto LABEL_13;
      }

      v18 = v2[1];
      if (0xEEEEEEEEEEEEEEEFLL * ((v2[2] - v18) >> 7) <= v10)
      {
        goto LABEL_120;
      }

      *(v18 + 1920 * v10 + 1912) = 1;
      if (*(v12 + 60))
      {
        sub_5AF20();
      }

      v19 = *a1;
      v20 = *v12;
      LOBYTE(v99) = 1;
      v21 = sub_503310(*(v19 + 4008) + 24, __ROR8__(v20, 32), 0, "access point");
      v22 = (v21 - *v21);
      if (*v22 < 0x15u)
      {
        goto LABEL_13;
      }

      v23 = v22[10];
      if (!v23)
      {
        goto LABEL_13;
      }

      v24 = (v21 + v23 + *(v21 + v23));
      v83 = 0;
      v84 = 0;
      __p = 0;
      p_p = (v19 + 4008);
      v101 = &v99;
      v85[0] = v24 + 1;
      v98 = &v24[2 * *v24 + 1];
      sub_C5A570(v85, &v98, &__p, &v97, &p_p);
      v9 = __p;
      v81 = v83;
      v77 = a1;
      v78 = v2;
      if (__p != v83)
      {
        break;
      }

      if (__p)
      {
LABEL_12:
        v83 = v9;
        operator delete(v9);
      }

LABEL_13:
      v6 = *v6;
      if (!v6)
      {
        v58 = v89;
        if (v89)
        {
          do
          {
            v59 = *v58;
            operator delete(v58);
            v58 = v59;
          }

          while (v59);
        }

        goto LABEL_89;
      }
    }

    while (1)
    {
      p_p = v9;
      v25 = sub_C72650(&v91, v9);
      v26 = *(*a1 + 4104);
      v27 = __ROR8__(*v9, 32);
      v98 = "road access point";
      LODWORD(v85[0]) = v27;
      v99 = 0;
      p_p = &v99;
      v101 = v85;
      v28 = *(v26 + 3880) + 1;
      *(v26 + 3880) = v28;
      v29 = *(v26 + 24);
      if (!v29)
      {
LABEL_112:
        sub_2C9894(&p_p);
LABEL_113:
        v70 = __cxa_allocate_exception(0x40uLL);
        v97 = HIDWORD(v27);
        v99 = v27;
        v85[0] = sub_7FCF0(6u);
        v85[1] = v71;
        sub_2C956C("Failed to acquire entity ", &v98, " in quad node ", " at position ", " on layer ", v85, &p_p);
        if ((v103 & 0x80u) == 0)
        {
          p_p_p = &p_p;
        }

        else
        {
          p_p_p = p_p;
        }

        if ((v103 & 0x80u) == 0)
        {
          v73 = v103;
        }

        else
        {
          v73 = v101;
        }

        v74 = sub_2D390(v70, p_p_p, v73);
      }

      if (*(v26 + 616) == v27)
      {
        ++*(v26 + 3888);
        *(v26 + 624) = v28;
        v30 = *(v26 + 632);
        if (!v30)
        {
          goto LABEL_112;
        }
      }

      else if (*(v26 + 640) == v27)
      {
        ++*(v26 + 3888);
        *(v26 + 648) = v28;
        v30 = *(v26 + 656);
        if (!v30)
        {
          goto LABEL_112;
        }
      }

      else if (*(v26 + 664) == v27)
      {
        ++*(v26 + 3888);
        *(v26 + 672) = v28;
        v30 = *(v26 + 680);
        if (!v30)
        {
          goto LABEL_112;
        }
      }

      else if (*(v26 + 688) == v27)
      {
        ++*(v26 + 3888);
        *(v26 + 696) = v28;
        v30 = *(v26 + 704);
        if (!v30)
        {
          goto LABEL_112;
        }
      }

      else
      {
        v31 = *(v26 + 648);
        v32 = *(v26 + 624);
        v79 = *(v26 + 696);
        v80 = *(v26 + 672);
        v30 = sub_2D52A4(v29, 6, v27, 1);
        if (v32 >= v28)
        {
          v33 = v28;
        }

        else
        {
          v33 = v32;
        }

        if (v32 >= v28)
        {
          v34 = 0;
        }

        else
        {
          v34 = 24;
        }

        if (v31 < v33)
        {
          v33 = v31;
          v34 = 25;
        }

        if (v80 < v33)
        {
          v34 = 26;
          v33 = v80;
        }

        v2 = v78;
        v8 = v79 >= v33;
        v35 = 27;
        if (v8)
        {
          v35 = v34;
        }

        v36 = v26 + 40 + 24 * v35;
        *v36 = v85[0];
        *(v36 + 8) = *(v26 + 3880);
        *(v36 + 16) = v30;
        a1 = v77;
        if (!v30)
        {
          goto LABEL_112;
        }
      }

      v37 = (v30 + *v30);
      v38 = (v37 - *v37);
      if (*v38 < 0x15u)
      {
        goto LABEL_113;
      }

      v39 = v38[10];
      if (!v39)
      {
        goto LABEL_113;
      }

      v40 = (v37 + v39 + *(v37 + v39));
      if (*v40 <= HIDWORD(v27))
      {
        goto LABEL_113;
      }

      v41 = (&v40[HIDWORD(v27) + 1] + v40[HIDWORD(v27) + 1]);
      v42 = (v41 - *v41);
      if (*v42 >= 0xBu && (v43 = v42[5]) != 0)
      {
        v44 = 10 * *(v41 + v43);
      }

      else
      {
        v44 = 0;
      }

      v45 = *(sub_C58590(v2 + 1, v10) + 256) + v44;
      v85[0] = *v9;
      v86 = 0;
      v87 = 1;
      v46 = *v9;
      v47 = *(v25 + 6);
      if (v47 != -1)
      {
        break;
      }

      v101 = *v9;
      v102 = v44;
      v104 = 2;
      *(v25 + 6) = sub_C71BC8(v2, v85, v45, &p_p, v10, 0);
      if (v104 != -1)
      {
        goto LABEL_71;
      }

LABEL_72:
      if (v86 != -1)
      {
        (off_2672DA0[v86])(&p_p, v85);
      }

      if (++v9 == v81)
      {
        v9 = __p;
        if (__p)
        {
          goto LABEL_12;
        }

        goto LABEL_13;
      }
    }

    if (v45 >= *(sub_C58590(v2 + 1, v47) + 256))
    {
      goto LABEL_72;
    }

    v48 = *(v25 + 6);
    v101 = v46;
    v102 = v44;
    v104 = 2;
    sub_C71DB8(v2, v48, v85, v45, &p_p, v10, 0);
    if (v104 == -1)
    {
      goto LABEL_72;
    }

LABEL_71:
    (off_2672DC0[v104])(&v98, &v101);
    goto LABEL_72;
  }

LABEL_89:
  v60 = v88;
  *&v88 = 0;
  if (v60)
  {
    operator delete(v60);
  }

  v61 = v92;
  if (v92)
  {
    do
    {
      v62 = *v61;
      operator delete(v61);
      v61 = v62;
    }

    while (v62);
  }

  v63 = v91;
  *&v91 = 0;
  if (v63)
  {
    operator delete(v63);
  }

  v64 = v95;
  if (v95)
  {
    do
    {
      v65 = *v64;
      operator delete(v64);
      v64 = v65;
    }

    while (v65);
  }

  v66 = v94;
  *&v94 = 0;
  if (v66)
  {
    operator delete(v66);
  }
}

void sub_C71AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_11BD8(&a49);
  sub_11BD8(&a55);
  sub_11BD8(&a61);
  _Unwind_Resume(a1);
}

uint64_t sub_C71BC8(void *a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5, char a6)
{
  v24 = a5;
  v25 = a3;
  v23 = a6;
  v9 = a1[1];
  v10 = a1[2];
  v8 = a1 + 1;
  v11 = 0xEEEEEEEEEEEEEEEFLL * ((v10 - v9) >> 7);
  if (v11 <= a5)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v22 = sub_2D390(exception, "parent vertex id out of range", 0x1DuLL);
  }

  v26 = v11;
  if (v10 >= a1[3])
  {
    sub_C72188(v8, a2, &v25, a4, &v24, &v23);
  }

  else
  {
    *v10 = 0;
    *(v10 + 240) = -1;
    v13 = *(a2 + 240);
    if (v13 != -1)
    {
      v14 = a3;
      v15 = a4;
      v27 = v10;
      v16 = a2;
      (off_2672DB0[v13])(&v27);
      *(v10 + 240) = v13;
      a4 = v15;
      a2 = v16;
      a3 = v14;
    }

    *(v10 + 248) = *(a2 + 248);
    *(v10 + 256) = a3;
    *(v10 + 272) = 0;
    *(v10 + 1896) = -1;
    v17 = *(a4 + 1632);
    if (v17 != -1)
    {
      v27 = v10 + 272;
      (off_2672DE0[v17])(&v27, a4 + 8);
      *(v10 + 1896) = v17;
    }

    *(v10 + 1904) = a5;
    *(v10 + 1908) = 0;
    *(v10 + 1912) = a6;
    *(v10 + 1913) = 0;
    v18 = v10 + 1920;
    a1[2] = v10 + 1920;
  }

  a1[2] = v18;
  sub_C72060(a1 + 9, &v24);
  sub_C693E8(a1 + 9, &v26);
  v19 = a1[1] + 1920 * v24;
  ++*(v19 + 1908);
  return v26;
}

void sub_C71D80(_Unwind_Exception *a1)
{
  sub_C58D6C(v3);
  sub_A54CEC(v2);
  *(v1 + 16) = v2;
  _Unwind_Resume(a1);
}

void sub_C71DA0(_Unwind_Exception *a1)
{
  sub_A54EB0(v2);
  *(v1 + 16) = v2;
  _Unwind_Resume(a1);
}

uint64_t sub_C71DB8(void *a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6, int a7)
{
  v35 = a6;
  v7 = a2;
  v8 = a1[1];
  v9 = 0xEEEEEEEEEEEEEEEFLL * ((a1[2] - v8) >> 7);
  v10 = a6;
  if (v9 <= a2 || v9 <= a6)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v29 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
  }

  if (a6 >= a2)
  {
    v30 = __cxa_allocate_exception(0x40uLL);
    v31 = sub_2D390(v30, "parent vertex id not smaller than vertex id", 0x2BuLL);
  }

  v12 = a7;
  if (a7 && *(v8 + 1920 * a2 + 1908))
  {
    v32 = __cxa_allocate_exception(0x40uLL);
    v33 = sub_2D390(v32, "inner node cannot be marked final", 0x21uLL);
  }

  v34 = *(v8 + 1920 * a2 + 1904);
  v17 = v8 + 1920 * v34;
  v18 = *(v17 + 1908) - 1;
  *(v17 + 1908) = v18;
  if (!v18)
  {
    v19 = a6;
    sub_C693E8(a1 + 9, &v34);
    a6 = v19;
    v8 = a1[1];
  }

  ++*(v8 + 1920 * v10 + 1908);
  v20 = 1920 * v7;
  *(v8 + 1920 * v7 + 1904) = a6;
  result = sub_C72060(a1 + 9, &v35);
  v22 = a1[1] + 1920 * v7;
  v23 = *(v22 + 240);
  v24 = *(a3 + 240);
  if (v23 == -1)
  {
    if (v24 == -1)
    {
      goto LABEL_16;
    }
  }

  else if (v24 == -1)
  {
    result = (off_2672DA0[v23])(&v36, a1[1] + v20);
    *(v22 + 240) = -1;
    goto LABEL_16;
  }

  v36 = a1[1] + v20;
  result = (off_2672E30[v24])(&v36, v22, a3);
LABEL_16:
  *(v22 + 248) = *(a3 + 248);
  *(a1[1] + v20 + 256) = a4;
  v25 = a1[1] + v20;
  v26 = *(v25 + 1896);
  v27 = *(a5 + 1632);
  if (v26 == -1)
  {
    if (v27 == -1)
    {
      goto LABEL_21;
    }

LABEL_20:
    v36 = v25 + 272;
    result = (off_2672E40[v27])(&v36);
    goto LABEL_21;
  }

  if (v27 != -1)
  {
    goto LABEL_20;
  }

  result = (off_2672DC0[v26])(&v36, v25 + 272);
  *(v25 + 1896) = -1;
LABEL_21:
  *(a1[1] + 1920 * v7 + 1912) = v12;
  return result;
}

uint64_t sub_C72060(uint64_t *a1, unsigned int *a2)
{
  v4 = a1[1];
  if (!*&v4)
  {
    return 0;
  }

  v5 = *a2;
  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v4 <= v5)
    {
      v7 = v5 % v4.i32[0];
    }
  }

  else
  {
    v7 = (v4.i32[0] - 1) & v5;
  }

  __p[3] = v2;
  __p[4] = v3;
  v9 = *(*a1 + 8 * v7);
  if (!v9)
  {
    return 0;
  }

  v10 = *v9;
  if (!*v9)
  {
    return 0;
  }

  if (v6.u32[0] < 2uLL)
  {
    v11 = *&v4 - 1;
    while (1)
    {
      v12 = *(v10 + 8);
      if (v12 == v5)
      {
        if (*(v10 + 16) == v5)
        {
          goto LABEL_23;
        }
      }

      else if ((v12 & v11) != v7)
      {
        return 0;
      }

      v10 = *v10;
      if (!v10)
      {
        return 0;
      }
    }
  }

  while (1)
  {
    v13 = *(v10 + 8);
    if (v13 == v5)
    {
      break;
    }

    if (v13 >= *&v4)
    {
      v13 %= *&v4;
    }

    if (v13 != v7)
    {
      return 0;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      return 0;
    }
  }

  if (*(v10 + 16) != v5)
  {
    goto LABEL_17;
  }

LABEL_23:
  sub_24C14(a1, v10, __p);
  v14 = __p[0];
  __p[0] = 0;
  if (v14)
  {
    operator delete(v14);
  }

  return 1;
}

double sub_C72188(uint64_t *a1, uint64_t a2, int *a3, uint64_t a4, int *a5, char *a6)
{
  v6 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 7) + 1;
  if (v6 > 0x22222222222222)
  {
    sub_1794();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 7) > v6)
  {
    v6 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 7);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 7) >= 0x11111111111111)
  {
    v10 = 0x22222222222222;
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    if (v10 <= 0x22222222222222)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = (a1[1] - *a1) >> 7 << 7;
  *(&v21 + 1) = 0;
  v12 = *a3;
  v13 = *a5;
  v14 = *a6;
  *v11 = 0;
  *(v11 + 240) = -1;
  v15 = *(a2 + 240);
  if (v15 != -1)
  {
    v22 = v11;
    (off_2672DB0[v15])(&v22, a2);
    *(v11 + 240) = v15;
  }

  *(v11 + 248) = *(a2 + 248);
  *(v11 + 256) = v12;
  *(v11 + 272) = 0;
  *(v11 + 1896) = -1;
  v16 = *(a4 + 1632);
  if (v16 != -1)
  {
    v22 = v11 + 272;
    (off_2672DE0[v16])(&v22, a4 + 8);
    *(v11 + 1896) = v16;
  }

  *(v11 + 1904) = v13;
  *(v11 + 1908) = 0;
  *(v11 + 1912) = v14;
  *(v11 + 1913) = 0;
  *&v21 = v11 + 1920;
  v17 = a1[1];
  v18 = v11 + *a1 - v17;
  sub_C723BC(a1, *a1, v17, v18);
  v19 = *a1;
  *a1 = v18;
  *&result = v11 + 1920;
  *(a1 + 1) = v21;
  if (v19)
  {
    operator delete(v19);
    *&result = v11 + 1920;
  }

  return result;
}

void sub_C72368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_C58D6C(v4);
  sub_A54CEC(v3);
  sub_C72554(va);
  _Unwind_Resume(a1);
}

void sub_C7238C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_A54EB0(v3);
  sub_C72554(va);
  _Unwind_Resume(a1);
}

void sub_C723A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_C72554(va);
  _Unwind_Resume(a1);
}

uint64_t sub_C723BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v10 = a4 + v7;
      v11 = v6 + v7;
      *v10 = 0;
      *(v10 + 240) = -1;
      v12 = *(v6 + v7 + 240);
      if (v12 != -1)
      {
        v17 = a4 + v7;
        result = (off_2672E00[v12])(&v17, v6 + v7);
        *(v10 + 240) = v12;
      }

      *(v10 + 248) = *(v11 + 248);
      *(v10 + 256) = *(v11 + 256);
      *(v10 + 272) = 0;
      *(v10 + 1896) = -1;
      v14 = *(v11 + 1896);
      if (v14 != -1)
      {
        v17 = v10 + 272;
        result = (off_2672E10[v14])(&v17, v6 + v7 + 272);
        *(v10 + 1896) = v14;
      }

      v8 = a4 + v7;
      v9 = *(v6 + v7 + 1904);
      *(v8 + 1912) = *(v6 + v7 + 1912);
      *(v8 + 1904) = v9;
      v7 += 1920;
    }

    while (v6 + v7 != a3);
    for (; v6 != a3; v6 += 1920)
    {
      v15 = *(v6 + 1896);
      if (v15 != -1)
      {
        result = (off_2672DC0[v15])(&v17, v6 + 272);
      }

      *(v6 + 1896) = -1;
      v16 = *(v6 + 240);
      if (v16 != -1)
      {
        result = (off_2672DA0[v16])(&v17, v6);
      }

      *(v6 + 240) = -1;
    }
  }

  return result;
}

void **sub_C72554(void **a1)
{
  sub_C72588(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_C72588(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 16);
  if (v2 != v1)
  {
    v3 = result;
    do
    {
      v4 = v2 - 1920;
      *(v3 + 16) = v2 - 1920;
      v5 = *(v2 - 24);
      if (v5 != -1)
      {
        result = (off_2672DC0[v5])(&v8, v2 - 1648);
      }

      *(v2 - 24) = -1;
      v6 = (v2 - 1680);
      v7 = *v6;
      if (v7 != -1)
      {
        result = (off_2672DA0[v7])(&v9, v4);
      }

      *v6 = -1;
      v2 = *(v3 + 16);
    }

    while (v2 != v1);
  }

  return result;
}

uint64_t *sub_C72650(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a2 >> 33));
  v4 = (0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) >> 33);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_31;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) >> 33);
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v6.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v9[1];
      if (v12 == v4)
      {
        if (*(v9 + 5) == HIDWORD(v2) && *(v9 + 4) == v2)
        {
          return v9;
        }
      }

      else if ((v12 & (*&v5 - 1)) != v7)
      {
        goto LABEL_31;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v10 >= *&v5)
    {
      v10 %= *&v5;
    }

    if (v10 != v7)
    {
      goto LABEL_31;
    }

LABEL_12:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_31;
    }
  }

  if (*(v9 + 5) != HIDWORD(v2) || *(v9 + 4) != v2)
  {
    goto LABEL_12;
  }

  return v9;
}

void sub_C729D0(double *a1, uint64_t a2, char a3, char a4)
{
  v70 = a3;
  v69 = a4;
  v68 = 0;
  v65 = 0u;
  v66 = 0u;
  v67 = 1065353216;
  *v62 = 0u;
  *v63 = 0u;
  v64 = 1065353216;
  *v59 = 0u;
  *v60 = 0u;
  v61 = 1065353216;
  for (i = *(a2 + 88); i; i = *i)
  {
    v9 = sub_C58590((a2 + 8), *(i + 4));
    if (*(v9 + 248) == 2)
    {
      if (*(v9 + 240))
      {
        sub_5AF20();
      }

      sub_BC460C(v62, v9);
    }
  }

  v58[0] = a2;
  v58[1] = v59;
  v58[2] = &v68;
  v58[3] = a1;
  v58[4] = &v69;
  v58[5] = &v65;
  v58[6] = &v70;
  v58[7] = v62;
  *v55 = 0u;
  *__p = 0u;
  v57 = *(a2 + 104);
  prime = *(a2 + 80);
  if (prime == 1)
  {
    prime = 2;
LABEL_4:
    sub_B07C(v55, prime);
    goto LABEL_5;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 80));
    v45 = v55[1];
    v46 = prime >= v55[1];
    if (prime > v55[1])
    {
      goto LABEL_4;
    }
  }

  else
  {
    v45 = 0;
    v46 = 1;
    if (prime)
    {
      goto LABEL_4;
    }
  }

  if (!v46)
  {
    v47 = vcvtps_u32_f32(__p[1] / v57);
    if (v45 < 3 || (v48 = vcnt_s8(v45), v48.i16[0] = vaddlv_u8(v48), v48.u32[0] > 1uLL))
    {
      v47 = std::__next_prime(v47);
    }

    else
    {
      v49 = 1 << -__clz(v47 - 1);
      if (v47 >= 2)
      {
        v47 = v49;
      }
    }

    if (prime <= v47)
    {
      prime = v47;
    }

    if (prime < v45)
    {
      goto LABEL_4;
    }
  }

LABEL_5:
  for (j = *(a2 + 88); j; j = *j)
  {
    sub_C693E8(v55, j + 4);
  }

  v8 = __p[0];
  if (__p[0])
  {
    do
    {
      v10 = *(v8 + 4);
      v11 = sub_C58590((a2 + 8), v10);
      if ((v11[239] & 1) == 0)
      {
        if (*(v11 + 248))
        {
          if (*(v11 + 248) == 2)
          {
            if (*(v11 + 60))
            {
              sub_5AF20();
            }

            if (HIDWORD(*v11) != 1 || *v11 + 3 >= 2)
            {
              v13 = *a1;
              v14 = v11;
              v15 = sub_502FF8(*(*a1 + 4120) + 24, __ROR8__(*v11, 32), 0, "stop");
              v16 = (v15 - *v15);
              if (*v16 >= 0xDu)
              {
                v17 = v16[6];
                if (v17)
                {
                  v19 = *(v15 + v17);
                  v18 = *(v15 + v17 + 4);
                  if (v18 != -1 && v19 != 0)
                  {
                    v21 = sub_93D480(*(v13 + 4128) + 24, __ROR8__(v18 | (v19 << 32), 32), 0, "station");
                    v22 = (v21 - *v21);
                    if (*v22 >= 0xBu)
                    {
                      v23 = v22[5];
                      if (v23)
                      {
                        if (*(v21 + v23 + *(v21 + v23)))
                        {
                          if (*(v14 + 60))
                          {
                            sub_5AF20();
                          }

                          v24 = sub_502FF8(*(*a1 + 4120) + 24, __ROR8__(*v14, 32), 0, "stop");
                          v25 = (v24 - *v24);
                          if (*v25 >= 0xDu && (v26 = v25[6]) != 0)
                          {
                            v27 = *(v24 + v26 + 4) | (*(v24 + v26) << 32);
                          }

                          else
                          {
                            v27 = 0xFFFFFFFFLL;
                          }

                          v31 = *(a2 + 8);
                          if (0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 16) - v31) >> 7) <= v10)
                          {
                            exception = __cxa_allocate_exception(0x40uLL);
                            v53 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
                          }

                          *(v31 + 1920 * v10 + 1912) = 1;
                          sub_C733A4(v58, v10, v27);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          v28 = *(a2 + 8);
          if (0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 16) - v28) >> 7) <= v10)
          {
            v50 = __cxa_allocate_exception(0x40uLL);
            v51 = sub_2D390(v50, "vertex id out of range", 0x16uLL);
          }

          *(v28 + 1920 * v10 + 1912) = 1;
          if (*(v11 + 60))
          {
            sub_5AF20();
          }

          v29 = sub_503310(*(*a1 + 4008) + 24, __ROR8__(*v11, 32), 0, "access point");
          v30 = (v29 - *v29);
          if (*v30 >= 0x11u && v30[8] && *(v29 + v30[8] + *(v29 + v30[8])))
          {
            operator new();
          }
        }
      }

      v8 = *v8;
    }

    while (v8);
    v32 = __p[0];
    a1[17] = a1[17] + v68;
    if (v32)
    {
      do
      {
        v33 = *v32;
        operator delete(v32);
        v32 = v33;
      }

      while (v33);
    }

    v34 = v55[0];
    v55[0] = 0;
    if (v34)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v34 = v55[0];
    a1[17] = a1[17] + v68;
    v55[0] = 0;
    if (v34)
    {
LABEL_49:
      operator delete(v34);
    }
  }

  v35 = v60[0];
  if (v60[0])
  {
    do
    {
      v36 = *v35;
      v37 = v35[3];
      v35[3] = 0;
      if (v37)
      {
        sub_C70B10(v37);
        operator delete();
      }

      operator delete(v35);
      v35 = v36;
    }

    while (v36);
  }

  v38 = v59[0];
  v59[0] = 0;
  if (v38)
  {
    operator delete(v38);
  }

  v39 = v63[0];
  if (v63[0])
  {
    do
    {
      v40 = *v39;
      operator delete(v39);
      v39 = v40;
    }

    while (v40);
  }

  v41 = v62[0];
  v62[0] = 0;
  if (v41)
  {
    operator delete(v41);
  }

  v42 = v66;
  if (v66)
  {
    do
    {
      v43 = *v42;
      operator delete(v42);
      v42 = v43;
    }

    while (v43);
  }

  v44 = v65;
  *&v65 = 0;
  if (v44)
  {
    operator delete(v44);
  }
}

void sub_C732EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  sub_11BD8(&a15);
  sub_C74888(&a29);
  sub_11BD8(&a35);
  sub_11BD8(v35 - 208);
  _Unwind_Resume(a1);
}

void sub_C733A4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v42 = a3;
  v4 = *(a1 + 24);
  v5 = a2;
  v6 = sub_C58590((*a1 + 8), a2);
  v7 = *(a1 + 8);
  v44 = &v42;
  v8 = sub_C73CA8(v7, &v42)[3];
  if (!v8)
  {
    ++**(a1 + 16);
    v9 = sub_3D4D04(*(*v4 + 4072) + 24, 1u, 0);
    if (v9)
    {
      v10 = &v9[-*v9];
      if (*v10 >= 5u)
      {
        if (*(v10 + 2))
        {
          operator new();
        }
      }
    }

    exception = __cxa_allocate_exception(0x40uLL);
    v34 = sub_2D390(exception, "Root quad node of transit routing layer does not contain info object", 0x44uLL);
  }

  sub_C5E1D8(v8, v6, &__p);
  v11 = __p;
  v12 = v41;
  if (__p == v41)
  {
    if (__p)
    {
      goto LABEL_33;
    }

    return;
  }

  do
  {
    if (**a1)
    {
      v13 = v11 + 8;
    }

    else
    {
      v13 = v11 + 264;
    }

    LOBYTE(v37[0]) = 0;
    v38 = -1;
    v14 = *(v13 + 60);
    if (v14 == -1)
    {
      v39 = v13[248];
LABEL_46:
      sub_5AF20();
    }

    v44 = v37;
    (off_2672E70[v14])(&v44, v13);
    v38 = v14;
    v15 = v13[248];
    v39 = v13[248];
    if (v14)
    {
      goto LABEL_46;
    }

    v35 = v37[0];
    v36 = v15;
    v16 = *(a1 + 40);
    v44 = &v35;
    v17 = sub_C740A4(v16, &v35);
    v18 = *(sub_C58590((*a1 + 8), v5) + 256);
    v19 = *(v11 + 138);
    v20 = v39;
    if (v39 == 2)
    {
      if (v38)
      {
        sub_5AF20();
      }

      if (sub_A794D0(*(a1 + 56), v37))
      {
        goto LABEL_30;
      }

      v21 = 0;
      v20 = v39;
      v22 = v19 + v18;
      v23 = *(v17 + 7);
      v24 = *a1;
      if (v23 != -1)
      {
LABEL_18:
        if (v22 < *(sub_C58590(v24 + 1, v23) + 256))
        {
          v25 = *a1;
          v26 = *(v17 + 7);
          sub_C587D8(v45, (v11 + 8));
          v46 = 1;
          sub_C71DB8(v25, v26, v37, v22, &v44, v5, v20 == 2);
          if (v46 != -1)
          {
            goto LABEL_29;
          }
        }

        goto LABEL_30;
      }
    }

    else if (v39)
    {
      v21 = 0;
      v22 = v19 + v18;
      v23 = *(v17 + 7);
      v24 = *a1;
      if (v23 != -1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v21 = **(a1 + 48);
      v22 = v19 + v18;
      v23 = *(v17 + 7);
      v24 = *a1;
      if (v23 != -1)
      {
        goto LABEL_18;
      }
    }

    if (v21)
    {
      *(v17 + 7) = sub_C73970(v24, v37);
      goto LABEL_30;
    }

    sub_C587D8(v45, (v11 + 8));
    v46 = 1;
    *(v17 + 7) = sub_C71BC8(v24, v37, v22, &v44, v5, v20 == 2);
    if (v46 != -1)
    {
LABEL_29:
      (off_2672E90[v46])(&v43, v45);
    }

LABEL_30:
    if (v38 != -1)
    {
      (off_2672E60[v38])(&v44, v37);
    }

    v11 += 560;
  }

  while (v11 != v12);
  v11 = __p;
  if (__p)
  {
LABEL_33:
    v27 = v11;
    if (v41 != v11)
    {
      v28 = v41 - 552;
      do
      {
        v30 = *(v28 + 65);
        if (v30)
        {
          *(v28 + 66) = v30;
          operator delete(v30);
        }

        v31 = *(v28 + 124);
        if (v31 != -1)
        {
          (off_2672E60[v31])(&v44, v28 + 256);
        }

        *(v28 + 124) = -1;
        v32 = *(v28 + 60);
        if (v32 != -1)
        {
          (off_2672E60[v32])(&v44, v28);
        }

        *(v28 + 60) = -1;
        v29 = v28 - 8;
        v28 -= 560;
      }

      while (v29 != v11);
      v27 = __p;
    }

    v41 = v11;
    operator delete(v27);
  }
}

void sub_C738CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  if (a2)
  {
    sub_4A48(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_C73970(void *a1, uint64_t a2)
{
  v4 = a1 + 1;
  v14 = -286331153 * ((a1[2] - a1[1]) >> 7);
  v17 = 0;
  v18[0] = 0;
  v19 = -1;
  v5 = *(a2 + 240);
  if (v5 == -1)
  {
    v7 = 0;
    v20 = *(a2 + 248);
    v21 = 0;
    v22[0] = 0;
    v23 = -1;
LABEL_10:
    v15 = v22;
    (off_2672ED0[v7])(&v15, v16);
    v23 = v7;
    v6.n128_u64[0] = 0xFFFFFFFFLL;
    v24 = 0xFFFFFFFFLL;
    v25 = 0;
    v8 = a1[2];
    if (v8 < a1[3])
    {
      goto LABEL_4;
    }

LABEL_11:
    v6.n128_f64[0] = sub_C74474(v4, v18);
    goto LABEL_12;
  }

  v15 = v18;
  (off_2672E70[v5])(&v15, a2);
  v19 = v5;
  v7 = v17;
  v20 = *(a2 + 248);
  v21 = 0;
  v22[0] = 0;
  v23 = -1;
  if (v17 != -1)
  {
    goto LABEL_10;
  }

  v6.n128_u64[0] = 0xFFFFFFFFLL;
  v24 = 0xFFFFFFFFLL;
  v25 = 0;
  v8 = a1[2];
  if (v8 >= a1[3])
  {
    goto LABEL_11;
  }

LABEL_4:
  *v8 = 0;
  *(v8 + 240) = -1;
  v9 = v19;
  if (v19 != -1)
  {
    v15 = v8;
    (off_2672E80[v19])(&v15, v18);
    *(v8 + 240) = v9;
  }

  *(v8 + 248) = v20;
  *(v8 + 256) = v21;
  *(v8 + 272) = 0;
  *(v8 + 1896) = -1;
  v10 = v23;
  if (v23 != -1)
  {
    v15 = (v8 + 272);
    (off_2672EB0[v23])(&v15, v22);
    *(v8 + 1896) = v10;
  }

  v11 = v24;
  *(v8 + 1912) = v25;
  *(v8 + 1904) = v11;
  v12 = v8 + 1920;
  a1[2] = v8 + 1920;
LABEL_12:
  a1[2] = v12;
  if (v23 != -1)
  {
    (off_2672E90[v23])(&v15, v22, v6);
  }

  v23 = -1;
  if (v19 != -1)
  {
    (off_2672E60[v19])(&v15, v18);
  }

  v19 = -1;
  if (v17 != -1)
  {
    (off_2672E90[v17])(&v15, v16);
  }

  sub_C693E8(a1 + 4, &v14);
  sub_C693E8(a1 + 9, &v14);
  return v14;
}

void sub_C73C20(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_4A48(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_C73CA8(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a2 >> 33));
  v4 = (0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) >> 33);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_31;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) >> 33);
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v6.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v9[1];
      if (v12 == v4)
      {
        if (*(v9 + 5) == HIDWORD(v2) && *(v9 + 4) == v2)
        {
          return v9;
        }
      }

      else if ((v12 & (*&v5 - 1)) != v7)
      {
        goto LABEL_31;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v10 >= *&v5)
    {
      v10 %= *&v5;
    }

    if (v10 != v7)
    {
      goto LABEL_31;
    }

LABEL_12:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_31;
    }
  }

  if (*(v9 + 5) != HIDWORD(v2) || *(v9 + 4) != v2)
  {
    goto LABEL_12;
  }

  return v9;
}

void sub_C7400C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_C74020(va);
  _Unwind_Resume(a1);
}

void **sub_C74020(void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1)
    {
      v4 = v2[3];
      v2[3] = 0;
      if (v4)
      {
        sub_C70B10(v4);
        operator delete();
      }
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

uint64_t *sub_C740A4(void *a1, uint64_t *a2)
{
  v2 = *(a2 + 8);
  v3 = *a2;
  v4 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a2 >> 33));
  v5 = ((((v2 + 2656449171) ^ 0x7A69) << 6) + (((v2 + 2656449171) ^ 0x7A69uLL) >> 2) + 2654435769u + ((0xC4CEB9FE1A85EC53 * (v4 ^ (v4 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v4 ^ (v4 >> 33))) >> 33))) ^ (v2 + 2656449171) ^ 0x7A69;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_33;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = ((((v2 + 2656449171) ^ 0x7A69) << 6) + (((v2 + 2656449171) ^ 0x7A69uLL) >> 2) + 2654435769u + ((0xC4CEB9FE1A85EC53 * (v4 ^ (v4 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v4 ^ (v4 >> 33))) >> 33))) ^ (v2 + 2656449171) ^ 0x7A69;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_33:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v11 = v10[1];
      if (v11 == v5)
      {
        v12 = *(v10 + 5) == HIDWORD(v3) && *(v10 + 4) == v3;
        if (v12 && *(v10 + 24) == v2)
        {
          return v10;
        }
      }

      else if ((v11 & (*&v6 - 1)) != v8)
      {
        goto LABEL_33;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_33;
      }
    }
  }

  while (1)
  {
    v14 = v10[1];
    if (v14 == v5)
    {
      break;
    }

    if (v14 >= *&v6)
    {
      v14 %= *&v6;
    }

    if (v14 != v8)
    {
      goto LABEL_33;
    }

LABEL_22:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_33;
    }
  }

  v15 = *(v10 + 5) == HIDWORD(v3) && *(v10 + 4) == v3;
  if (!v15 || *(v10 + 24) != v2)
  {
    goto LABEL_22;
  }

  return v10;
}

double sub_C74474(uint64_t *a1, uint64_t a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 7) + 1;
  if (v2 > 0x22222222222222)
  {
    sub_1794();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 7) > v2)
  {
    v2 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 7);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 7) >= 0x11111111111111)
  {
    v5 = 0x22222222222222;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0x22222222222222)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = (a1[1] - *a1) >> 7 << 7;
  *(&v13 + 1) = 0;
  *v6 = 0;
  *(v6 + 240) = -1;
  v7 = *(a2 + 240);
  if (v7 != -1)
  {
    v14 = v6;
    (off_2672E80[v7])(&v14, a2);
    *(v6 + 240) = v7;
  }

  *(v6 + 248) = *(a2 + 248);
  *(v6 + 256) = *(a2 + 256);
  *(v6 + 272) = 0;
  *(v6 + 1896) = -1;
  v8 = *(a2 + 1896);
  if (v8 != -1)
  {
    v14 = v6 + 272;
    (off_2672EB0[v8])(&v14, a2 + 272);
    *(v6 + 1896) = v8;
  }

  *(v6 + 1904) = *(a2 + 1904);
  *(v6 + 1912) = *(a2 + 1912);
  *&v13 = v6 + 1920;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  sub_C723BC(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  *&result = v6 + 1920;
  *(a1 + 1) = v13;
  if (v11)
  {
    operator delete(v11);
    *&result = v6 + 1920;
  }

  return result;
}

void sub_C74634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_C74648(va);
  _Unwind_Resume(a1);
}

uint64_t sub_C74648(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = i - 1920;
    *(a1 + 16) = i - 1920;
    v5 = *(i - 24);
    if (v5 != -1)
    {
      (off_2672E90[v5])(&v9, i - 1648);
    }

    *(i - 24) = -1;
    v6 = (i - 1680);
    v7 = *v6;
    if (v7 != -1)
    {
      (off_2672E60[v7])(&v10, v4);
    }

    *v6 = -1;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_C74720(uint64_t a1)
{
  v2 = *(a1 + 1896);
  if (v2 != -1)
  {
    (off_2672E90[v2])(&v5, a1 + 272);
  }

  *(a1 + 1896) = -1;
  v3 = *(a1 + 240);
  if (v3 != -1)
  {
    (off_2672E60[v3])(&v6, a1);
  }

  *(a1 + 240) = -1;
  return a1;
}

void **sub_C747A8(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 552;
      do
      {
        v7 = *(v5 + 520);
        if (v7)
        {
          *(v5 + 528) = v7;
          operator delete(v7);
        }

        v8 = *(v5 + 496);
        if (v8 != -1)
        {
          (off_2672E60[v8])(&v11, v5 + 256);
        }

        *(v5 + 496) = -1;
        v9 = *(v5 + 240);
        if (v9 != -1)
        {
          (off_2672E60[v9])(&v12, v5);
        }

        *(v5 + 240) = -1;
        v6 = (v5 - 8);
        v5 -= 560;
      }

      while (v6 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_C74888(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      v2[3] = 0;
      if (v4)
      {
        sub_C70B10(v4);
        operator delete();
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void sub_C74910(uint64_t a1, void *a2)
{
  v16 = 9;
  strcpy(__p, "algorithm");
  v4 = sub_5F8FC(a2, __p);
  v5 = sub_C567B4(v4);
  if (v16 < 0)
  {
    v6 = v5;
    operator delete(*__p);
    v5 = v6;
  }

  *a1 = v5;
  strcpy(__p, "enable_fallback_to_cbr");
  v16 = 22;
  v7 = sub_5F9D0(a2, __p);
  if (v16 < 0)
  {
    v8 = v7;
    operator delete(*__p);
    v7 = v8;
  }

  *(a1 + 4) = v7;
  v16 = 18;
  strcpy(__p, "cost_function_name");
  v9 = sub_5F8FC(a2, __p);
  if (*(v9 + 23) < 0)
  {
    sub_325C((a1 + 8), *v9, v9[1]);
  }

  else
  {
    v10 = *v9;
    *(a1 + 24) = v9[2];
    *(a1 + 8) = v10;
  }

  if (v16 < 0)
  {
    operator delete(*__p);
  }

  v16 = 18;
  strcpy(__p, "eta_evaluator_name");
  v11 = sub_5F8FC(a2, __p);
  if (*(v11 + 23) < 0)
  {
    sub_325C((a1 + 32), *v11, v11[1]);
  }

  else
  {
    v12 = *v11;
    *(a1 + 48) = v11[2];
    *(a1 + 32) = v12;
  }

  if (v16 < 0)
  {
    operator delete(*__p);
  }

  v16 = 12;
  strcpy(__p, "unpack_paths");
  v13 = sub_5F9D0(a2, __p);
  if (v16 < 0)
  {
    v14 = v13;
    operator delete(*__p);
    v13 = v14;
  }

  *(a1 + 56) = v13;
  operator new();
}

void sub_C74C68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v14 + 55) < 0)
  {
    operator delete(*(v14 + 32));
  }

  if (*(v14 + 31) < 0)
  {
    operator delete(*(v14 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_C74D50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF && (*(a4 + 24) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v5 = sub_2D390(exception, "Invalid max_duration provided in OnStreetWalkingTreeExpansion::run()", 0x44uLL);
  }

  sub_C75750(&v6);
}

void sub_C75618(_Unwind_Exception *a1)
{
  sub_C5A434(&STACK[0x680]);
  sub_C75B94(&STACK[0x6D0]);
  v2 = STACK[0x6F0];
  if (STACK[0x6F0])
  {
    STACK[0x6F8] = v2;
    operator delete(v2);
    sub_C5A4AC(&STACK[0x708]);
    _Unwind_Resume(a1);
  }

  sub_C5A4AC(&STACK[0x708]);
  _Unwind_Resume(a1);
}

void sub_C75750(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = -1;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 60) = 0x7FFFFFFFLL;
  operator new();
}

void sub_C75934(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*v3);
    sub_39393C(v2);
    v5 = *v1;
    if (!*v1)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_39393C(v2);
    v5 = *v1;
    if (!*v1)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 8) = v5;
  operator delete(v5);
  _Unwind_Resume(a1);
}

unint64_t sub_C75998(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 8)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, (a1[1] - *a1) >> 8);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + (a2 << 8);
}

void sub_C75AB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

void **sub_C75B94(void **a1)
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
        v5 = v3 - 256;
        v6 = *(v3 - 4);
        if (v6 != -1)
        {
          (off_2672EF0[v6])(&v8, v3 - 256);
        }

        *(v3 - 4) = -1;
        v3 -= 256;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_C75C3C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_7E9A4(v10);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_3AF30C(*(a1 + 64), a1 + 8);
  for (i = *(a2 + 88); i; i = *i)
  {
    v7 = sub_C58590((a2 + 8), *(i + 4));
    if ((*(v7 + 1912) & 1) == 0)
    {
      v8 = sub_C69A30(*(a1 + 72), v7);
      if (**(a1 + 72))
      {
        if (v8 != -1 || v8 <= 0xFFFFFFFEFFFFFFFFLL)
        {
          v12 = 0;
          v11 = 0u;
          v13 = 0xFFFFFFFF00000000;
          operator new();
        }
      }

      if (**(a1 + 72) && v8 != -1)
      {
        v12 = 0;
        v11 = 0u;
        v13 = 0xFFFFFFFF00000000;
        operator new();
      }

      if (**(a1 + 72) && v8 != -1)
      {
        v12 = 0;
        v11 = 0u;
        v13 = 0xFFFFFFFF00000000;
        operator new();
      }
    }
  }

  *(a1 + 120) = sub_7EA60(v10) + *(a1 + 120);
}

void sub_C79AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1959728(&STACK[0x220]);
  if (v71)
  {
    operator delete(v71);
    v73 = a38;
    v74 = __p;
    if (!__p)
    {
LABEL_3:
      v75 = a41;
      if (!a41)
      {
LABEL_8:
        sub_11BD8(&a47);
        sub_11BD8(&a53);
        sub_11BD8(&a59);
        sub_C75B94(v73);
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(v75);
      goto LABEL_8;
    }
  }

  else
  {
    v73 = a38;
    v74 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  a71 = v74;
  operator delete(v74);
  v75 = a41;
  if (!a41)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_C79F0C(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  *v52 = 0u;
  *v53 = 0u;
  v54 = 1065353216;
  *v49 = 0u;
  *v50 = 0u;
  v51 = 1065353216;
  *v46 = 0u;
  *__p = 0u;
  v48 = 1065353216;
  v45[0] = v46;
  v45[1] = a3;
  v44[0] = v49;
  v44[1] = a1;
  v44[2] = a3;
  v44[3] = v45;
  *&v43 = a1;
  *(&v43 + 1) = v44;
  v5 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    goto LABEL_40;
  }

  do
  {
    v58 = *v5;
    if (!sub_A794D0(v52, &v58))
    {
      v8 = HIDWORD(v58) != 1 || (v58 + 3) >= 2;
      if (!v8 || (v9 = *(a1 + 72), v10 = sub_502FF8(*(v9 + 4120) + 24, __ROR8__(v58, 32), 0, "stop"), v11 = (v10 - *v10), *v11 < 0xDu) || (v12 = v11[6]) == 0 || ((v14 = *(v10 + v12), v13 = *(v10 + v12 + 4), v13 != -1) ? (v15 = v14 == 0) : (v15 = 1), v15 || (v16 = sub_93D480(*(v9 + 4128) + 24, __ROR8__(v13 | (v14 << 32), 32), 0, "station"), v17 = (v16 - *v16), *v17 < 0xBu) || (v18 = v17[5]) == 0 || !*(v16 + v18 + *(v16 + v18))))
      {
        *&v55[0] = v58;
        v56 = 0;
        v57 = 2;
        v23 = a3[1];
        if (v23 < a3[2])
        {
          v7 = 0;
          *v23 = v58;
          *(v23 + 240) = 0;
          *(v23 + 248) = 2;
          a3[1] = v23 + 256;
        }

        else
        {
          v24 = sub_C7A6F4(a3, v55);
          v7 = v56;
          a3[1] = v24;
          if (v7 == -1)
          {
            goto LABEL_5;
          }
        }

        (off_2672EF0[v7])(v59, v55);
LABEL_5:
        sub_BC460C(v52, &v58);
        goto LABEL_6;
      }

      v19 = sub_502FF8(*(*(a1 + 72) + 4120) + 24, __ROR8__(v58, 32), 0, "stop");
      v20 = (v19 - *v19);
      if (*v20 >= 0xDu && (v21 = v20[6]) != 0)
      {
        v22 = *(v19 + v21 + 4) | (*(v19 + v21) << 32);
      }

      else
      {
        v22 = 0xFFFFFFFFLL;
      }

      v42 = *(a1 + 72);
      v25 = sub_93D480(*(v42 + 4112) + 24, __ROR8__(v22, 32), 0, "station");
      v26 = (v25 - *v25);
      if (*v26 >= 0x2Fu)
      {
        v27 = v26[23];
        if (v27)
        {
          v28 = (v25 + v27 + *(v25 + v27));
          v29 = *v28;
          if (v29)
          {
            v30 = 8 * v29;
            v31 = v28 + 1;
            do
            {
              v32 = *(v42 + 4112);
              if (*(v32 + 16) != 1 || sub_2D5204(*v32))
              {
                operator new();
              }

              v31 += 2;
              v30 -= 8;
            }

            while (v30);
          }
        }
      }

      sub_C7ABD8(&v43, v22);
      v55[0] = v43;
    }

LABEL_6:
    ++v5;
  }

  while (v5 != v4);
  v33 = __p[0];
  if (__p[0])
  {
    do
    {
      v34 = *v33;
      operator delete(v33);
      v33 = v34;
    }

    while (v34);
  }

LABEL_40:
  v35 = v46[0];
  v46[0] = 0;
  if (v35)
  {
    operator delete(v35);
  }

  v36 = v50[0];
  if (v50[0])
  {
    do
    {
      v37 = *v36;
      operator delete(v36);
      v36 = v37;
    }

    while (v37);
  }

  v38 = v49[0];
  v49[0] = 0;
  if (v38)
  {
    operator delete(v38);
  }

  v39 = v53[0];
  if (v53[0])
  {
    do
    {
      v40 = *v39;
      operator delete(v39);
      v39 = v40;
    }

    while (v40);
  }

  v41 = v52[0];
  v52[0] = 0;
  if (v41)
  {
    operator delete(v41);
  }
}

void sub_C7A3C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_11BD8(&a23);
  sub_11BD8(&a29);
  sub_11BD8(&a35);
  sub_C75B94(v41);
  _Unwind_Resume(a1);
}

void *sub_C7A424@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v7 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    v8 = v6 - v7 - 1152;
    if (v8 >= 0x480)
    {
      v9 = 0;
      v12 = 0;
      v13 = v8 / 0x480 + 1;
      v10 = v7 + 1152 * (v13 & 0x7FFFFFFFFFFFFELL);
      v14 = v13 & 0x7FFFFFFFFFFFFELL;
      do
      {
        if (*(v7 + 16) > v9)
        {
          v9 = *(v7 + 16);
        }

        if (*(v7 + 1168) > v12)
        {
          v12 = *(v7 + 1168);
        }

        v7 += 2304;
        v14 -= 2;
      }

      while (v14);
      if (v9 <= v12)
      {
        v9 = v12;
      }

      if (v13 == (v13 & 0x7FFFFFFFFFFFFELL))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v9 = 0;
      v10 = *a2;
    }

    do
    {
      if (*(v10 + 16) > v9)
      {
        v9 = *(v10 + 16);
      }

      v10 += 1152;
    }

    while (v10 != v6);
LABEL_17:
    v11 = v9 + 1;
    goto LABEL_18;
  }

  v11 = 1;
LABEL_18:
  v45 = 0;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = 0xFFFFFFFFLL;
  sub_C7B054(a3, v11);
  result = (off_2672EF0[DWORD2(v44)])(v46, &v29);
  v16 = *a2;
  v17 = a2[1];
  if (*a2 != v17)
  {
    while (1)
    {
      v18 = sub_3B22A4(*(a1 + 64));
      v19 = sub_3BF72C(v18 + 8, *(v16 + 32), 1);
      v20 = &v19[*&v19[-*v19 + 6]];
      v21 = &v20[4 * *(v16 + 36) + *v20];
      v22 = (v21 + 4 + *(v21 + 4));
      v23 = (v22 + *(v22 - *v22 + 6));
      v24 = (v23 + *v23);
      v25 = *v24;
      v46[0] = v24 + 1;
      v46[1] = v25;
      result = sub_C7BDAC(v46, &v29);
      v26 = *a3 + (*(v16 + 16) << 8);
      v27 = *(v26 + 240);
      if (v27 != -1)
      {
        break;
      }

      if (DWORD2(v44) != -1)
      {
        goto LABEL_28;
      }

      *(v26 + 248) = v45;
LABEL_23:
      v16 += 1152;
      if (v16 == v17)
      {
        return result;
      }
    }

    if (DWORD2(v44) == -1)
    {
      result = (off_2672EF0[v27])(&v47, *a3 + (*(v16 + 16) << 8));
      *(v26 + 240) = -1;
    }

    else
    {
LABEL_28:
      v47 = *a3 + (*(v16 + 16) << 8);
      result = (off_2672F20[DWORD2(v44)])(&v47, v26, &v29);
    }

    v28 = DWORD2(v44);
    *(v26 + 248) = v45;
    if (v28 != -1)
    {
      result = (off_2672EF0[v28])(&v47, &v29);
    }

    goto LABEL_23;
  }

  return result;
}

void sub_C7A6C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_A54CEC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_C7A6F4(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 8;
  v3 = v2 + 1;
  if ((v2 + 1) >> 56)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 7 > v3)
  {
    v3 = v6 >> 7;
  }

  if (v6 >= 0x7FFFFFFFFFFFFF00)
  {
    v7 = 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v20 = a1;
  if (v7)
  {
    if (!HIBYTE(v7))
    {
      operator new();
    }

    sub_1808();
  }

  v8 = v2 << 8;
  __p = 0;
  v17 = v8;
  v18 = v8;
  v19 = 0;
  *v8 = 0;
  *(v8 + 240) = -1;
  v9 = *(a2 + 240);
  if (v9 != -1)
  {
    v21 = v8;
    (off_2672F10[v9])(&v21, a2);
    *(v8 + 240) = v9;
  }

  *(v8 + 248) = *(a2 + 248);
  v18 = v8 + 256;
  sub_C7A88C(a1, &__p);
  v10 = a1[1];
  v11 = v17;
  v12 = v18;
  if (v18 != v17)
  {
    do
    {
      v13 = v12 - 256;
      v18 = v12 - 256;
      v14 = *(v12 - 16);
      if (v14 != -1)
      {
        (off_2672EF0[v14])(&v21);
        v13 = v18;
      }

      *(v12 - 16) = -1;
      v12 = v13;
    }

    while (v13 != v11);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

uint64_t *sub_C7A88C(uint64_t *result, void *a2)
{
  v3 = result;
  v4 = *result;
  v5 = result[1];
  v6 = a2[1] + *result - v5;
  if (v5 != *result)
  {
    v7 = a2[1] + *result - v5;
    v8 = *result;
    do
    {
      *v7 = 0;
      *(v7 + 240) = -1;
      v9 = *(v8 + 240);
      if (v9 != -1)
      {
        v14 = v7;
        result = (off_2672F10[v9])(&v14, v8);
        *(v7 + 240) = v9;
      }

      *(v7 + 248) = *(v8 + 248);
      v8 += 256;
      v7 += 256;
    }

    while (v8 != v5);
    do
    {
      v10 = *(v4 + 240);
      if (v10 != -1)
      {
        result = (off_2672EF0[v10])(&v15, v4);
      }

      *(v4 + 240) = -1;
      v4 += 256;
    }

    while (v4 != v5);
  }

  a2[1] = v6;
  v11 = *v3;
  *v3 = v6;
  v3[1] = v11;
  a2[1] = v11;
  v12 = v3[1];
  v3[1] = a2[2];
  a2[2] = v12;
  v13 = v3[2];
  v3[2] = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
  return result;
}

uint64_t sub_C7A9D0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    do
    {
      v4 = v3 - 256;
      *(a1 + 16) = v3 - 256;
      v5 = *(v3 - 16);
      if (v5 != -1)
      {
        (off_2672EF0[v5])(&v7);
        v4 = *(a1 + 16);
      }

      *(v3 - 16) = -1;
      v3 = v4;
    }

    while (v4 != v2);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_C7AA70(uint64_t *a1, void *a2, char *a3)
{
  v3 = (a1[1] - *a1) >> 8;
  v4 = v3 + 1;
  if ((v3 + 1) >> 56)
  {
    sub_1794();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 7 > v4)
  {
    v4 = v6 >> 7;
  }

  if (v6 >= 0x7FFFFFFFFFFFFF00)
  {
    v7 = 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  v20 = a1;
  if (v7)
  {
    if (!HIBYTE(v7))
    {
      operator new();
    }

    sub_1808();
  }

  v8 = v3 << 8;
  __p = 0;
  v17 = v8;
  v9 = *a3;
  *v8 = *a2;
  *(v8 + 240) = 0;
  *(v8 + 248) = v9;
  v18 = (v3 << 8) + 256;
  v19 = 0;
  sub_C7A88C(a1, &__p);
  v10 = a1[1];
  v11 = v17;
  v12 = v18;
  if (v18 != v17)
  {
    do
    {
      v13 = v12 - 256;
      v18 = v12 - 256;
      v14 = *(v12 - 16);
      if (v14 != -1)
      {
        (off_2672EF0[v14])(&v21);
        v13 = v18;
      }

      *(v12 - 16) = -1;
      v12 = v13;
    }

    while (v13 != v11);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_C7ABD8(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 72);
  v3 = sub_93D480(*(v2 + 4112) + 24, __ROR8__(a2, 32), 0, "station");
  v4 = (v3 - *v3);
  if (*v4 >= 0x33u)
  {
    v5 = v4[25];
    if (v5)
    {
      v6 = (v3 + v5 + *(v3 + v5));
      v7 = *v6;
      if (v7)
      {
        v8 = 8 * v7;
        v9 = v6 + 1;
        do
        {
          v10 = *(v2 + 4112);
          if (*(v10 + 16) != 1 || sub_2D5204(*v10))
          {
            operator new();
          }

          v9 += 2;
          v8 -= 8;
        }

        while (v8);
      }
    }
  }
}

void sub_C7AFDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  sub_A54CEC(&a17);
  if (v17)
  {
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void *sub_C7B054(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (!HIBYTE(a2))
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_C7B184(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_C7B1B8(va);
  _Unwind_Resume(a1);
}

void sub_C7B198(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_A54EB0(v3);
  *(v2 + 8) = v3;
  sub_C7B1B8(va);
  _Unwind_Resume(a1);
}

void ***sub_C7B1B8(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = v4 - 256;
          v7 = *(v4 - 4);
          if (v7 != -1)
          {
            (off_2672EF0[v7])(&v9, v4 - 256);
          }

          *(v4 - 4) = -1;
          v4 -= 256;
        }

        while (v6 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void sub_C7B278(uint64_t a1, void *a2, uint64_t a3)
{
  v17[1] = &v18;
  v18 = a2;
  v16[0] = a1;
  v16[1] = v17;
  v17[0] = a1;
  v3 = *(a3 + 240);
  v4 = *(a3 + 248);
  if (v3 != v4)
  {
    v5 = a1;
    do
    {
      v6 = *v3;
      if (*v3 > 1)
      {
        if (v6 == 2)
        {
          sub_C7BA54(v16, *(v3 + 4));
        }

        else if (v6 == 3)
        {
          v7 = sub_503310(*(v5 + 4008) + 24, __ROR8__(*(v3 + 4), 32), 0, "access point");
          v8 = (v7 - *v7);
          if (*v8 >= 0x11u)
          {
            if (v8[8])
            {
              if (*(v7 + v8[8] + *(v7 + v8[8])))
              {
                operator new();
              }

              v5 = a1;
            }
          }
        }
      }

      else if (v6)
      {
        if (v6 == 1)
        {
          sub_C7B728(v17, *(v3 + 4));
        }
      }

      else
      {
        v9 = *(v3 + 24) != 1.0;
        v10 = *(v3 + 32);
        v19 = *(v3 + 4);
        v20 = 0;
        v21 = 2;
        v11 = sub_C73970(v18, &v19);
        if (v20 != -1)
        {
          (off_2672F50[v20])(&v22, &v19);
        }

        if ((v9 | v10))
        {
          v12 = v18[1];
          if (0xEEEEEEEEEEEEEEEFLL * ((v18[2] - v12) >> 7) <= v11)
          {
            exception = __cxa_allocate_exception(0x40uLL);
            v14 = sub_2D390(exception, "vertex id out of range", 0x16uLL);
          }

          *(v12 + 1920 * v11 + 1912) = 257;
        }
      }

      v3 += 40;
    }

    while (v3 != v4);
  }
}

void sub_C7B598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_A54CEC(va);
  _Unwind_Resume(a1);
}

void sub_C7B5AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (v17)
  {
    operator delete(v17);
  }

  _Unwind_Resume(exception_object);
}

void *sub_C7B5D8(void *result, uint64_t a2)
{
  if (*(a2 + 176) != *(a2 + 184))
  {
    v2 = result;
    sub_C58960(v5, a2);
    v20[2] = v5[2];
    *v21 = *v6;
    *(&v21[1] + 7) = *&v6[15];
    v20[0] = v5[0];
    v20[1] = v5[1];
    *&v21[3] = v7;
    v21[5] = v8;
    v7 = 0uLL;
    v23 = v10;
    v22 = v9;
    v24 = v11;
    v25 = v12;
    v26 = v13;
    v8 = 0;
    v3 = v14;
    v4 = v15;
    v13 = 0;
    v14 = 0uLL;
    v15 = 0uLL;
    v27 = v3;
    v28 = v4;
    v30 = v17;
    v29 = v16;
    v31 = v18;
    v16 = 0;
    v17 = 0uLL;
    v18 = 0;
    v32 = v19;
    v33 = 1;
    v34 = 3;
    sub_C73970(v2, v20);
    if (v33 != -1)
    {
      (off_2672F50[v33])(&v35, v20);
    }

    v33 = -1;
    return sub_49AEC0(v5);
  }

  return result;
}

void sub_C7B70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  sub_A54CEC(&a39);
  sub_49AEC0(&a9);
  _Unwind_Resume(a1);
}

void sub_C7B728(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = sub_93D2F4(*(*a1 + 4040) + 24, __ROR8__(a2, 32), 0, "hall");
  v4 = (v3 - *v3);
  if (*v4 >= 0xDu)
  {
    v5 = v4[6];
    if (v5)
    {
      v6 = (v3 + v5 + *(v3 + v5));
      v7 = *v6;
      if (v7)
      {
        v8 = 8 * v7;
        v9 = v6 + 1;
        do
        {
          v10 = *(v2 + 4040);
          if (*(v10 + 16) != 1 || sub_2D5204(*v10))
          {
            operator new();
          }

          v9 += 2;
          v8 -= 8;
        }

        while (v8);
      }
    }
  }
}

void sub_C7BA14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_C7BA54(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = sub_93D480(*(*a1 + 4112) + 24, __ROR8__(a2, 32), 0, "station");
  v4 = (v3 - *v3);
  if (*v4 >= 0xDu)
  {
    v5 = v4[6];
    if (v5)
    {
      v6 = (v3 + v5 + *(v3 + v5));
      v7 = *v6;
      if (v7)
      {
        v8 = 8 * v7;
        v9 = v6 + 1;
        do
        {
          v10 = *(v2 + 4112);
          if (*(v10 + 16) != 1 || sub_2D5204(*v10))
          {
            operator new();
          }

          v9 += 2;
          v8 -= 8;
        }

        while (v8);
      }
    }
  }
}

void sub_C7BC5C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_C7BC7C(uint64_t a1, __int128 *a2, __int128 *a3, int a4, uint64_t a5)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_325C((a1 + 24), *a3, *(a3 + 1));
    goto LABEL_6;
  }

  v9 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v9;
  if (*(a3 + 23) < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = *a3;
  *(a1 + 40) = *(a3 + 2);
  *(a1 + 24) = v10;
LABEL_6:
  *(a1 + 48) = std::chrono::steady_clock::now().__d_.__rep_;
  v11 = pthread_self();
  *(a1 + 72) = 0;
  *(a1 + 56) = v11;
  *(a1 + 64) = a4;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_A32B60(a1 + 72, *(a5 + 8), *(a5 + 16), 0x14C1BACF914C1BADLL * ((*(a5 + 16) - *(a5 + 8)) >> 3));
  return a1;
}

void sub_C7BD58(_Unwind_Exception *exception_object)
{
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

void *sub_C7BDAC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = (*result + **result);
  v3 = (v2 - *v2);
  v4 = *v3;
  if (v4 < 5)
  {
    LOBYTE(v6) = 0;
    v5 = 0xFFFFFFFFLL;
    goto LABEL_6;
  }

  if (v3[2])
  {
    v5 = *(v2 + v3[2] + 4) | (*(v2 + v3[2]) << 32);
    if (v4 < 7)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v5 = 0xFFFFFFFFLL;
  if (v4 >= 7)
  {
LABEL_8:
    v7 = v3[3];
    if (!v7)
    {
      goto LABEL_12;
    }

    v6 = *(v2 + v7);
    if (v6 != 3 && v6 != 2 && v6 != 1)
    {
      goto LABEL_12;
    }

LABEL_6:
    *a2 = v5;
    *(a2 + 240) = 0;
    *(a2 + 248) = v6;
    return result;
  }

LABEL_12:
  *a2 = v5;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  return result;
}

void sub_C7BE4C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator delete[]();
  }
}

char *sub_C7BEA0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, size_t a5, size_t a6)
{
  v12 = (*(*a1 + 16))(a1, a4);
  memcpy(&v12[a4 - a5], &a2[a3 - a5], a5);
  memcpy(v12, a2, a6);
  (*(*a1 + 24))(a1, a2, a3);
  return v12;
}

uint64_t sub_C7BF74(uint64_t *a1, unint64_t a2)
{
  v3 = a1[4];
  v4 = *(a1 + 10);
  v5 = a1[6];
  v6 = a1[8] - v5;
  if (v3)
  {
    v7 = v3 >> 1;
  }

  else
  {
    v7 = a1[2];
  }

  if (v7 <= a2)
  {
    v7 = a2;
  }

  v8 = (a1[3] + v3 + v7 - 1) & -a1[3];
  a1[4] = v8;
  v9 = *a1;
  if (v5)
  {
    if (!v9)
    {
      v12 = off_2672F70;
      operator new[]();
    }

    result = (*(*v9 + 32))(v9, v5, v3);
  }

  else
  {
    if (!v9)
    {
      v12 = off_2672F70;
      operator new[]();
    }

    result = (*(*v9 + 16))(v9, v8);
  }

  v11 = result + a1[4] - v4;
  a1[6] = result;
  a1[7] = v11;
  a1[8] = result + v6;
  return result;
}

uint64_t sub_C7C16C(uint64_t a1, __int16 a2)
{
  if (*(a1 + 80) <= 3uLL)
  {
    *(a1 + 80) = 4;
  }

  v4 = *(a1 + 40);
  v5 = -v4 & 3;
  if ((-v4 & 3) != 0)
  {
    v6 = *(a1 + 56);
    if (v6 - *(a1 + 64) < v5)
    {
      sub_C7BF74(a1, v5);
      v6 = *(a1 + 56);
      v4 = *(a1 + 40);
    }

    v7 = 0;
    *(a1 + 56) = v6 - v5;
    *(a1 + 40) = v4 + v5;
    do
    {
      *(*(a1 + 56) + v7++) = 0;
    }

    while (v5 != v7);
  }

  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  if ((v8 - v9) <= 3)
  {
    sub_C7BF74(a1, 4uLL);
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
  }

  *(a1 + 40) += 4;
  *(v8 - 4) = 0;
  v10 = v8 - 4;
  *(a1 + 56) = v10;
  v11 = *(a1 + 40);
  if ((*(a1 + 76) + 2) <= 4u)
  {
    v12 = 4;
  }

  else
  {
    v12 = (*(a1 + 76) + 2);
  }

  *(a1 + 76) = v12;
  v13 = v10 - v9;
  v14 = v11;
  if (v13 < v12)
  {
    sub_C7BF74(a1, v12);
    v10 = *(a1 + 56);
    v14 = *(a1 + 40);
  }

  *(a1 + 56) = v10 - v12;
  *(a1 + 40) = v14 + v12;
  bzero((v10 - v12), v12);
  v15 = v11 - a2;
  v17 = *(a1 + 56);
  v16 = *(a1 + 64);
  *(v17 + 1) = v15;
  *v17 = *(a1 + 76);
  v18 = *(a1 + 72);
  v19 = (v16 - 8 * v18);
  if (v18)
  {
    v20 = (v16 - 8 * v18);
    do
    {
      *&v17[v20[2]] = v11 - *v20;
      v20 += 4;
    }

    while (v20 < v16);
  }

  *(a1 + 64) = v19;
  *(a1 + 72) = 0;
  *(a1 + 76) = 0;
  v21 = *(a1 + 40);
  if ((*(a1 + 89) & 1) == 0)
  {
LABEL_26:
    v26 = v21;
    if ((v17 - v19) > 3)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v22 = *(a1 + 48);
  if (v22 >= v19)
  {
    v26 = *(a1 + 40);
    goto LABEL_29;
  }

  v23 = *v17;
  v24 = v22 + *(a1 + 32);
  while (1)
  {
    v25 = *v22;
    if (v23 == *&v24[-v25] && !memcmp(&v24[-v25], v17, v23))
    {
      break;
    }

    if (++v22 >= v19)
    {
      goto LABEL_26;
    }
  }

  v17 += (v21 - v11);
  *(a1 + 56) = v17;
  *(a1 + 40) = v11;
  v21 = v25;
  v26 = v11;
  if (v25 == v11)
  {
LABEL_29:
    if ((v17 - v19) > 3)
    {
LABEL_31:
      *v19 = v26;
      *(a1 + 64) = v19 + 4;
      goto LABEL_32;
    }

LABEL_30:
    sub_C7BF74(a1, 4uLL);
    v19 = *(a1 + 64);
    goto LABEL_31;
  }

LABEL_32:
  *(*(a1 + 48) + *(a1 + 32) - v11) = v21 - v11;
  *(a1 + 78) = 0;
  return v11;
}